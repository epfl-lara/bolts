; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338254 () Bool)

(assert start!338254)

(declare-fun b!3628953 () Bool)

(declare-fun b_free!94897 () Bool)

(declare-fun b_next!95601 () Bool)

(assert (=> b!3628953 (= b_free!94897 (not b_next!95601))))

(declare-fun tp!1108095 () Bool)

(declare-fun b_and!266103 () Bool)

(assert (=> b!3628953 (= tp!1108095 b_and!266103)))

(declare-fun b_free!94899 () Bool)

(declare-fun b_next!95603 () Bool)

(assert (=> b!3628953 (= b_free!94899 (not b_next!95603))))

(declare-fun tp!1108101 () Bool)

(declare-fun b_and!266105 () Bool)

(assert (=> b!3628953 (= tp!1108101 b_and!266105)))

(declare-fun b!3628968 () Bool)

(declare-fun b_free!94901 () Bool)

(declare-fun b_next!95605 () Bool)

(assert (=> b!3628968 (= b_free!94901 (not b_next!95605))))

(declare-fun tp!1108106 () Bool)

(declare-fun b_and!266107 () Bool)

(assert (=> b!3628968 (= tp!1108106 b_and!266107)))

(declare-fun b_free!94903 () Bool)

(declare-fun b_next!95607 () Bool)

(assert (=> b!3628968 (= b_free!94903 (not b_next!95607))))

(declare-fun tp!1108092 () Bool)

(declare-fun b_and!266109 () Bool)

(assert (=> b!3628968 (= tp!1108092 b_and!266109)))

(declare-fun b!3628978 () Bool)

(declare-fun b_free!94905 () Bool)

(declare-fun b_next!95609 () Bool)

(assert (=> b!3628978 (= b_free!94905 (not b_next!95609))))

(declare-fun tp!1108099 () Bool)

(declare-fun b_and!266111 () Bool)

(assert (=> b!3628978 (= tp!1108099 b_and!266111)))

(declare-fun b_free!94907 () Bool)

(declare-fun b_next!95611 () Bool)

(assert (=> b!3628978 (= b_free!94907 (not b_next!95611))))

(declare-fun tp!1108100 () Bool)

(declare-fun b_and!266113 () Bool)

(assert (=> b!3628978 (= tp!1108100 b_and!266113)))

(declare-fun b!3628966 () Bool)

(declare-fun b_free!94909 () Bool)

(declare-fun b_next!95613 () Bool)

(assert (=> b!3628966 (= b_free!94909 (not b_next!95613))))

(declare-fun tp!1108098 () Bool)

(declare-fun b_and!266115 () Bool)

(assert (=> b!3628966 (= tp!1108098 b_and!266115)))

(declare-fun b_free!94911 () Bool)

(declare-fun b_next!95615 () Bool)

(assert (=> b!3628966 (= b_free!94911 (not b_next!95615))))

(declare-fun tp!1108102 () Bool)

(declare-fun b_and!266117 () Bool)

(assert (=> b!3628966 (= tp!1108102 b_and!266117)))

(declare-fun b!3628951 () Bool)

(declare-fun res!1469434 () Bool)

(declare-fun e!2246388 () Bool)

(assert (=> b!3628951 (=> (not res!1469434) (not e!2246388))))

(declare-datatypes ((LexerInterface!5293 0))(
  ( (LexerInterfaceExt!5290 (__x!24085 Int)) (Lexer!5291) )
))
(declare-fun thiss!23823 () LexerInterface!5293)

(declare-datatypes ((C!21112 0))(
  ( (C!21113 (val!12604 Int)) )
))
(declare-datatypes ((Regex!10463 0))(
  ( (ElementMatch!10463 (c!627780 C!21112)) (Concat!16397 (regOne!21438 Regex!10463) (regTwo!21438 Regex!10463)) (EmptyExpr!10463) (Star!10463 (reg!10792 Regex!10463)) (EmptyLang!10463) (Union!10463 (regOne!21439 Regex!10463) (regTwo!21439 Regex!10463)) )
))
(declare-datatypes ((String!43003 0))(
  ( (String!43004 (value!182998 String)) )
))
(declare-datatypes ((List!38367 0))(
  ( (Nil!38243) (Cons!38243 (h!43663 (_ BitVec 16)) (t!294962 List!38367)) )
))
(declare-datatypes ((TokenValue!5934 0))(
  ( (FloatLiteralValue!11868 (text!41983 List!38367)) (TokenValueExt!5933 (__x!24086 Int)) (Broken!29670 (value!182999 List!38367)) (Object!6057) (End!5934) (Def!5934) (Underscore!5934) (Match!5934) (Else!5934) (Error!5934) (Case!5934) (If!5934) (Extends!5934) (Abstract!5934) (Class!5934) (Val!5934) (DelimiterValue!11868 (del!5994 List!38367)) (KeywordValue!5940 (value!183000 List!38367)) (CommentValue!11868 (value!183001 List!38367)) (WhitespaceValue!11868 (value!183002 List!38367)) (IndentationValue!5934 (value!183003 List!38367)) (String!43005) (Int32!5934) (Broken!29671 (value!183004 List!38367)) (Boolean!5935) (Unit!55057) (OperatorValue!5937 (op!5994 List!38367)) (IdentifierValue!11868 (value!183005 List!38367)) (IdentifierValue!11869 (value!183006 List!38367)) (WhitespaceValue!11869 (value!183007 List!38367)) (True!11868) (False!11868) (Broken!29672 (value!183008 List!38367)) (Broken!29673 (value!183009 List!38367)) (True!11869) (RightBrace!5934) (RightBracket!5934) (Colon!5934) (Null!5934) (Comma!5934) (LeftBracket!5934) (False!11869) (LeftBrace!5934) (ImaginaryLiteralValue!5934 (text!41984 List!38367)) (StringLiteralValue!17802 (value!183010 List!38367)) (EOFValue!5934 (value!183011 List!38367)) (IdentValue!5934 (value!183012 List!38367)) (DelimiterValue!11869 (value!183013 List!38367)) (DedentValue!5934 (value!183014 List!38367)) (NewLineValue!5934 (value!183015 List!38367)) (IntegerValue!17802 (value!183016 (_ BitVec 32)) (text!41985 List!38367)) (IntegerValue!17803 (value!183017 Int) (text!41986 List!38367)) (Times!5934) (Or!5934) (Equal!5934) (Minus!5934) (Broken!29674 (value!183018 List!38367)) (And!5934) (Div!5934) (LessEqual!5934) (Mod!5934) (Concat!16398) (Not!5934) (Plus!5934) (SpaceValue!5934 (value!183019 List!38367)) (IntegerValue!17804 (value!183020 Int) (text!41987 List!38367)) (StringLiteralValue!17803 (text!41988 List!38367)) (FloatLiteralValue!11869 (text!41989 List!38367)) (BytesLiteralValue!5934 (value!183021 List!38367)) (CommentValue!11869 (value!183022 List!38367)) (StringLiteralValue!17804 (value!183023 List!38367)) (ErrorTokenValue!5934 (msg!5995 List!38367)) )
))
(declare-datatypes ((List!38368 0))(
  ( (Nil!38244) (Cons!38244 (h!43664 C!21112) (t!294963 List!38368)) )
))
(declare-datatypes ((IArray!23339 0))(
  ( (IArray!23340 (innerList!11727 List!38368)) )
))
(declare-datatypes ((Conc!11667 0))(
  ( (Node!11667 (left!29853 Conc!11667) (right!30183 Conc!11667) (csize!23564 Int) (cheight!11878 Int)) (Leaf!18130 (xs!14869 IArray!23339) (csize!23565 Int)) (Empty!11667) )
))
(declare-datatypes ((BalanceConc!22948 0))(
  ( (BalanceConc!22949 (c!627781 Conc!11667)) )
))
(declare-datatypes ((TokenValueInjection!11296 0))(
  ( (TokenValueInjection!11297 (toValue!7992 Int) (toChars!7851 Int)) )
))
(declare-datatypes ((Rule!11208 0))(
  ( (Rule!11209 (regex!5704 Regex!10463) (tag!6432 String!43003) (isSeparator!5704 Bool) (transformation!5704 TokenValueInjection!11296)) )
))
(declare-datatypes ((List!38369 0))(
  ( (Nil!38245) (Cons!38245 (h!43665 Rule!11208) (t!294964 List!38369)) )
))
(declare-fun rules!3307 () List!38369)

(declare-fun rulesInvariant!4690 (LexerInterface!5293 List!38369) Bool)

(assert (=> b!3628951 (= res!1469434 (rulesInvariant!4690 thiss!23823 rules!3307))))

(declare-fun b!3628952 () Bool)

(declare-fun res!1469435 () Bool)

(declare-fun e!2246408 () Bool)

(assert (=> b!3628952 (=> res!1469435 e!2246408)))

(declare-datatypes ((Token!10774 0))(
  ( (Token!10775 (value!183024 TokenValue!5934) (rule!8474 Rule!11208) (size!29178 Int) (originalCharacters!6418 List!38368)) )
))
(declare-datatypes ((tuple2!38112 0))(
  ( (tuple2!38113 (_1!22190 Token!10774) (_2!22190 List!38368)) )
))
(declare-fun lt!1255278 () tuple2!38112)

(declare-fun lt!1255264 () List!38368)

(declare-fun matchR!5032 (Regex!10463 List!38368) Bool)

(assert (=> b!3628952 (= res!1469435 (not (matchR!5032 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255264)))))

(declare-fun b!3628954 () Bool)

(declare-fun tp!1108096 () Bool)

(declare-fun e!2246401 () Bool)

(declare-fun token!511 () Token!10774)

(declare-fun e!2246406 () Bool)

(declare-fun inv!21 (TokenValue!5934) Bool)

(assert (=> b!3628954 (= e!2246406 (and (inv!21 (value!183024 token!511)) e!2246401 tp!1108096))))

(declare-fun b!3628955 () Bool)

(declare-fun e!2246407 () Bool)

(declare-fun lt!1255270 () Rule!11208)

(assert (=> b!3628955 (= e!2246407 (= (rule!8474 (_1!22190 lt!1255278)) lt!1255270))))

(declare-fun b!3628956 () Bool)

(declare-fun e!2246405 () Bool)

(assert (=> b!3628956 (= e!2246405 e!2246407)))

(declare-fun res!1469436 () Bool)

(assert (=> b!3628956 (=> (not res!1469436) (not e!2246407))))

(declare-fun list!14130 (BalanceConc!22948) List!38368)

(declare-fun charsOf!3718 (Token!10774) BalanceConc!22948)

(assert (=> b!3628956 (= res!1469436 (matchR!5032 (regex!5704 lt!1255270) (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-datatypes ((Option!8036 0))(
  ( (None!8035) (Some!8035 (v!37823 Rule!11208)) )
))
(declare-fun lt!1255275 () Option!8036)

(declare-fun get!12498 (Option!8036) Rule!11208)

(assert (=> b!3628956 (= lt!1255270 (get!12498 lt!1255275))))

(declare-fun b!3628957 () Bool)

(declare-fun e!2246403 () Bool)

(declare-fun tp!1108103 () Bool)

(declare-fun inv!51656 (String!43003) Bool)

(declare-fun inv!51659 (TokenValueInjection!11296) Bool)

(assert (=> b!3628957 (= e!2246401 (and tp!1108103 (inv!51656 (tag!6432 (rule!8474 token!511))) (inv!51659 (transformation!5704 (rule!8474 token!511))) e!2246403))))

(declare-fun b!3628958 () Bool)

(declare-fun res!1469423 () Bool)

(assert (=> b!3628958 (=> (not res!1469423) (not e!2246388))))

(declare-fun rule!403 () Rule!11208)

(declare-fun contains!7471 (List!38369 Rule!11208) Bool)

(assert (=> b!3628958 (= res!1469423 (contains!7471 rules!3307 rule!403))))

(declare-fun b!3628959 () Bool)

(declare-fun res!1469432 () Bool)

(declare-fun e!2246399 () Bool)

(assert (=> b!3628959 (=> res!1469432 e!2246399)))

(declare-fun sepAndNonSepRulesDisjointChars!1872 (List!38369 List!38369) Bool)

(assert (=> b!3628959 (= res!1469432 (not (sepAndNonSepRulesDisjointChars!1872 rules!3307 rules!3307)))))

(declare-fun b!3628960 () Bool)

(declare-fun e!2246387 () Bool)

(declare-fun e!2246395 () Bool)

(declare-fun tp!1108104 () Bool)

(assert (=> b!3628960 (= e!2246387 (and e!2246395 tp!1108104))))

(declare-fun b!3628961 () Bool)

(declare-fun res!1469425 () Bool)

(assert (=> b!3628961 (=> (not res!1469425) (not e!2246388))))

(declare-fun anOtherTypeRule!33 () Rule!11208)

(assert (=> b!3628961 (= res!1469425 (not (= (isSeparator!5704 anOtherTypeRule!33) (isSeparator!5704 rule!403))))))

(declare-fun b!3628962 () Bool)

(declare-fun res!1469437 () Bool)

(declare-fun e!2246385 () Bool)

(assert (=> b!3628962 (=> (not res!1469437) (not e!2246385))))

(declare-fun lt!1255276 () tuple2!38112)

(declare-fun isEmpty!22618 (List!38368) Bool)

(assert (=> b!3628962 (= res!1469437 (isEmpty!22618 (_2!22190 lt!1255276)))))

(declare-fun b!3628963 () Bool)

(declare-fun e!2246404 () Bool)

(assert (=> b!3628963 (= e!2246385 (not e!2246404))))

(declare-fun res!1469438 () Bool)

(assert (=> b!3628963 (=> res!1469438 e!2246404)))

(declare-fun lt!1255280 () List!38368)

(assert (=> b!3628963 (= res!1469438 (not (matchR!5032 (regex!5704 rule!403) lt!1255280)))))

(declare-fun ruleValid!1968 (LexerInterface!5293 Rule!11208) Bool)

(assert (=> b!3628963 (ruleValid!1968 thiss!23823 rule!403)))

(declare-datatypes ((Unit!55058 0))(
  ( (Unit!55059) )
))
(declare-fun lt!1255272 () Unit!55058)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1122 (LexerInterface!5293 Rule!11208 List!38369) Unit!55058)

(assert (=> b!3628963 (= lt!1255272 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1122 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3628964 () Bool)

(declare-fun e!2246389 () Bool)

(assert (=> b!3628964 (= e!2246388 e!2246389)))

(declare-fun res!1469433 () Bool)

(assert (=> b!3628964 (=> (not res!1469433) (not e!2246389))))

(declare-datatypes ((Option!8037 0))(
  ( (None!8036) (Some!8036 (v!37824 tuple2!38112)) )
))
(declare-fun lt!1255279 () Option!8037)

(declare-fun isDefined!6268 (Option!8037) Bool)

(assert (=> b!3628964 (= res!1469433 (isDefined!6268 lt!1255279))))

(declare-fun maxPrefix!2827 (LexerInterface!5293 List!38369 List!38368) Option!8037)

(assert (=> b!3628964 (= lt!1255279 (maxPrefix!2827 thiss!23823 rules!3307 lt!1255280))))

(assert (=> b!3628964 (= lt!1255280 (list!14130 (charsOf!3718 token!511)))))

(declare-fun res!1469430 () Bool)

(assert (=> start!338254 (=> (not res!1469430) (not e!2246388))))

(get-info :version)

(assert (=> start!338254 (= res!1469430 ((_ is Lexer!5291) thiss!23823))))

(assert (=> start!338254 e!2246388))

(assert (=> start!338254 e!2246387))

(declare-fun e!2246393 () Bool)

(assert (=> start!338254 e!2246393))

(assert (=> start!338254 true))

(declare-fun inv!51660 (Token!10774) Bool)

(assert (=> start!338254 (and (inv!51660 token!511) e!2246406)))

(declare-fun e!2246390 () Bool)

(assert (=> start!338254 e!2246390))

(declare-fun e!2246398 () Bool)

(assert (=> start!338254 e!2246398))

(declare-fun e!2246386 () Bool)

(assert (=> b!3628953 (= e!2246386 (and tp!1108095 tp!1108101))))

(declare-fun b!3628965 () Bool)

(declare-fun res!1469428 () Bool)

(assert (=> b!3628965 (=> (not res!1469428) (not e!2246388))))

(declare-fun isEmpty!22619 (List!38369) Bool)

(assert (=> b!3628965 (= res!1469428 (not (isEmpty!22619 rules!3307)))))

(declare-fun e!2246392 () Bool)

(assert (=> b!3628966 (= e!2246392 (and tp!1108098 tp!1108102))))

(declare-fun b!3628967 () Bool)

(declare-fun res!1469431 () Bool)

(assert (=> b!3628967 (=> res!1469431 e!2246404)))

(declare-fun suffix!1395 () List!38368)

(assert (=> b!3628967 (= res!1469431 (isEmpty!22618 suffix!1395))))

(declare-fun e!2246391 () Bool)

(assert (=> b!3628968 (= e!2246391 (and tp!1108106 tp!1108092))))

(declare-fun b!3628969 () Bool)

(assert (=> b!3628969 (= e!2246389 e!2246385)))

(declare-fun res!1469439 () Bool)

(assert (=> b!3628969 (=> (not res!1469439) (not e!2246385))))

(assert (=> b!3628969 (= res!1469439 (= (_1!22190 lt!1255276) token!511))))

(declare-fun get!12499 (Option!8037) tuple2!38112)

(assert (=> b!3628969 (= lt!1255276 (get!12499 lt!1255279))))

(declare-fun b!3628970 () Bool)

(declare-fun res!1469426 () Bool)

(assert (=> b!3628970 (=> res!1469426 e!2246399)))

(declare-fun lt!1255266 () C!21112)

(declare-fun contains!7472 (List!38368 C!21112) Bool)

(declare-fun usedCharacters!916 (Regex!10463) List!38368)

(assert (=> b!3628970 (= res!1469426 (not (contains!7472 (usedCharacters!916 (regex!5704 anOtherTypeRule!33)) lt!1255266)))))

(declare-fun lt!1255271 () BalanceConc!22948)

(declare-fun b!3628971 () Bool)

(declare-fun apply!9206 (TokenValueInjection!11296 BalanceConc!22948) TokenValue!5934)

(declare-fun size!29179 (BalanceConc!22948) Int)

(assert (=> b!3628971 (= e!2246408 (inv!51660 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))

(declare-fun lt!1255282 () Unit!55058)

(declare-fun lemmaCharactersSize!749 (Token!10774) Unit!55058)

(assert (=> b!3628971 (= lt!1255282 (lemmaCharactersSize!749 (_1!22190 lt!1255278)))))

(declare-fun lt!1255274 () Unit!55058)

(declare-fun lemmaEqSameImage!887 (TokenValueInjection!11296 BalanceConc!22948 BalanceConc!22948) Unit!55058)

(declare-fun seqFromList!4253 (List!38368) BalanceConc!22948)

(assert (=> b!3628971 (= lt!1255274 (lemmaEqSameImage!887 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(declare-fun lt!1255268 () Unit!55058)

(declare-fun lemmaSemiInverse!1453 (TokenValueInjection!11296 BalanceConc!22948) Unit!55058)

(assert (=> b!3628971 (= lt!1255268 (lemmaSemiInverse!1453 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271))))

(declare-fun b!3628972 () Bool)

(declare-fun tp!1108094 () Bool)

(assert (=> b!3628972 (= e!2246395 (and tp!1108094 (inv!51656 (tag!6432 (h!43665 rules!3307))) (inv!51659 (transformation!5704 (h!43665 rules!3307))) e!2246391))))

(declare-fun b!3628973 () Bool)

(assert (=> b!3628973 (= e!2246404 e!2246399)))

(declare-fun res!1469424 () Bool)

(assert (=> b!3628973 (=> res!1469424 e!2246399)))

(assert (=> b!3628973 (= res!1469424 (contains!7472 (usedCharacters!916 (regex!5704 rule!403)) lt!1255266))))

(declare-fun head!7682 (List!38368) C!21112)

(assert (=> b!3628973 (= lt!1255266 (head!7682 suffix!1395))))

(declare-fun tp!1108093 () Bool)

(declare-fun b!3628974 () Bool)

(assert (=> b!3628974 (= e!2246390 (and tp!1108093 (inv!51656 (tag!6432 rule!403)) (inv!51659 (transformation!5704 rule!403)) e!2246386))))

(declare-fun b!3628975 () Bool)

(declare-fun res!1469427 () Bool)

(assert (=> b!3628975 (=> (not res!1469427) (not e!2246388))))

(assert (=> b!3628975 (= res!1469427 (contains!7471 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3628976 () Bool)

(declare-fun tp_is_empty!18009 () Bool)

(declare-fun tp!1108105 () Bool)

(assert (=> b!3628976 (= e!2246393 (and tp_is_empty!18009 tp!1108105))))

(declare-fun b!3628977 () Bool)

(declare-fun res!1469429 () Bool)

(assert (=> b!3628977 (=> (not res!1469429) (not e!2246385))))

(assert (=> b!3628977 (= res!1469429 (= (rule!8474 token!511) rule!403))))

(assert (=> b!3628978 (= e!2246403 (and tp!1108099 tp!1108100))))

(declare-fun b!3628979 () Bool)

(declare-fun tp!1108097 () Bool)

(assert (=> b!3628979 (= e!2246398 (and tp!1108097 (inv!51656 (tag!6432 anOtherTypeRule!33)) (inv!51659 (transformation!5704 anOtherTypeRule!33)) e!2246392))))

(declare-fun b!3628980 () Bool)

(assert (=> b!3628980 (= e!2246399 e!2246408)))

(declare-fun res!1469422 () Bool)

(assert (=> b!3628980 (=> res!1469422 e!2246408)))

(declare-fun lt!1255273 () List!38368)

(declare-fun isPrefix!3067 (List!38368 List!38368) Bool)

(assert (=> b!3628980 (= res!1469422 (not (isPrefix!3067 lt!1255264 lt!1255273)))))

(declare-fun ++!9520 (List!38368 List!38368) List!38368)

(assert (=> b!3628980 (isPrefix!3067 lt!1255264 (++!9520 lt!1255264 (_2!22190 lt!1255278)))))

(declare-fun lt!1255269 () Unit!55058)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1986 (List!38368 List!38368) Unit!55058)

(assert (=> b!3628980 (= lt!1255269 (lemmaConcatTwoListThenFirstIsPrefix!1986 lt!1255264 (_2!22190 lt!1255278)))))

(assert (=> b!3628980 (= lt!1255264 (list!14130 lt!1255271))))

(assert (=> b!3628980 (= lt!1255271 (charsOf!3718 (_1!22190 lt!1255278)))))

(assert (=> b!3628980 e!2246405))

(declare-fun res!1469440 () Bool)

(assert (=> b!3628980 (=> (not res!1469440) (not e!2246405))))

(declare-fun isDefined!6269 (Option!8036) Bool)

(assert (=> b!3628980 (= res!1469440 (isDefined!6269 lt!1255275))))

(declare-fun getRuleFromTag!1308 (LexerInterface!5293 List!38369 String!43003) Option!8036)

(assert (=> b!3628980 (= lt!1255275 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun lt!1255277 () Unit!55058)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1308 (LexerInterface!5293 List!38369 List!38368 Token!10774) Unit!55058)

(assert (=> b!3628980 (= lt!1255277 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1308 thiss!23823 rules!3307 lt!1255273 (_1!22190 lt!1255278)))))

(declare-fun lt!1255267 () Option!8037)

(assert (=> b!3628980 (= lt!1255278 (get!12499 lt!1255267))))

(declare-fun lt!1255265 () Unit!55058)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!971 (LexerInterface!5293 List!38369 List!38368 List!38368) Unit!55058)

(assert (=> b!3628980 (= lt!1255265 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!971 thiss!23823 rules!3307 lt!1255280 suffix!1395))))

(assert (=> b!3628980 (= lt!1255267 (maxPrefix!2827 thiss!23823 rules!3307 lt!1255273))))

(assert (=> b!3628980 (isPrefix!3067 lt!1255280 lt!1255273)))

(declare-fun lt!1255281 () Unit!55058)

(assert (=> b!3628980 (= lt!1255281 (lemmaConcatTwoListThenFirstIsPrefix!1986 lt!1255280 suffix!1395))))

(assert (=> b!3628980 (= lt!1255273 (++!9520 lt!1255280 suffix!1395))))

(assert (= (and start!338254 res!1469430) b!3628965))

(assert (= (and b!3628965 res!1469428) b!3628951))

(assert (= (and b!3628951 res!1469434) b!3628958))

(assert (= (and b!3628958 res!1469423) b!3628975))

(assert (= (and b!3628975 res!1469427) b!3628961))

(assert (= (and b!3628961 res!1469425) b!3628964))

(assert (= (and b!3628964 res!1469433) b!3628969))

(assert (= (and b!3628969 res!1469439) b!3628962))

(assert (= (and b!3628962 res!1469437) b!3628977))

(assert (= (and b!3628977 res!1469429) b!3628963))

(assert (= (and b!3628963 (not res!1469438)) b!3628967))

(assert (= (and b!3628967 (not res!1469431)) b!3628973))

(assert (= (and b!3628973 (not res!1469424)) b!3628970))

(assert (= (and b!3628970 (not res!1469426)) b!3628959))

(assert (= (and b!3628959 (not res!1469432)) b!3628980))

(assert (= (and b!3628980 res!1469440) b!3628956))

(assert (= (and b!3628956 res!1469436) b!3628955))

(assert (= (and b!3628980 (not res!1469422)) b!3628952))

(assert (= (and b!3628952 (not res!1469435)) b!3628971))

(assert (= b!3628972 b!3628968))

(assert (= b!3628960 b!3628972))

(assert (= (and start!338254 ((_ is Cons!38245) rules!3307)) b!3628960))

(assert (= (and start!338254 ((_ is Cons!38244) suffix!1395)) b!3628976))

(assert (= b!3628957 b!3628978))

(assert (= b!3628954 b!3628957))

(assert (= start!338254 b!3628954))

(assert (= b!3628974 b!3628953))

(assert (= start!338254 b!3628974))

(assert (= b!3628979 b!3628966))

(assert (= start!338254 b!3628979))

(declare-fun m!4129953 () Bool)

(assert (=> b!3628964 m!4129953))

(declare-fun m!4129955 () Bool)

(assert (=> b!3628964 m!4129955))

(declare-fun m!4129957 () Bool)

(assert (=> b!3628964 m!4129957))

(assert (=> b!3628964 m!4129957))

(declare-fun m!4129959 () Bool)

(assert (=> b!3628964 m!4129959))

(declare-fun m!4129961 () Bool)

(assert (=> b!3628963 m!4129961))

(declare-fun m!4129963 () Bool)

(assert (=> b!3628963 m!4129963))

(declare-fun m!4129965 () Bool)

(assert (=> b!3628963 m!4129965))

(declare-fun m!4129967 () Bool)

(assert (=> b!3628956 m!4129967))

(assert (=> b!3628956 m!4129967))

(declare-fun m!4129969 () Bool)

(assert (=> b!3628956 m!4129969))

(assert (=> b!3628956 m!4129969))

(declare-fun m!4129971 () Bool)

(assert (=> b!3628956 m!4129971))

(declare-fun m!4129973 () Bool)

(assert (=> b!3628956 m!4129973))

(declare-fun m!4129975 () Bool)

(assert (=> b!3628962 m!4129975))

(declare-fun m!4129977 () Bool)

(assert (=> b!3628952 m!4129977))

(declare-fun m!4129979 () Bool)

(assert (=> b!3628967 m!4129979))

(declare-fun m!4129981 () Bool)

(assert (=> b!3628965 m!4129981))

(declare-fun m!4129983 () Bool)

(assert (=> start!338254 m!4129983))

(declare-fun m!4129985 () Bool)

(assert (=> b!3628979 m!4129985))

(declare-fun m!4129987 () Bool)

(assert (=> b!3628979 m!4129987))

(assert (=> b!3628980 m!4129967))

(declare-fun m!4129989 () Bool)

(assert (=> b!3628980 m!4129989))

(declare-fun m!4129991 () Bool)

(assert (=> b!3628980 m!4129991))

(declare-fun m!4129993 () Bool)

(assert (=> b!3628980 m!4129993))

(declare-fun m!4129995 () Bool)

(assert (=> b!3628980 m!4129995))

(declare-fun m!4129997 () Bool)

(assert (=> b!3628980 m!4129997))

(declare-fun m!4129999 () Bool)

(assert (=> b!3628980 m!4129999))

(declare-fun m!4130001 () Bool)

(assert (=> b!3628980 m!4130001))

(declare-fun m!4130003 () Bool)

(assert (=> b!3628980 m!4130003))

(declare-fun m!4130005 () Bool)

(assert (=> b!3628980 m!4130005))

(assert (=> b!3628980 m!4130005))

(declare-fun m!4130007 () Bool)

(assert (=> b!3628980 m!4130007))

(declare-fun m!4130009 () Bool)

(assert (=> b!3628980 m!4130009))

(declare-fun m!4130011 () Bool)

(assert (=> b!3628980 m!4130011))

(declare-fun m!4130013 () Bool)

(assert (=> b!3628980 m!4130013))

(declare-fun m!4130015 () Bool)

(assert (=> b!3628980 m!4130015))

(declare-fun m!4130017 () Bool)

(assert (=> b!3628971 m!4130017))

(declare-fun m!4130019 () Bool)

(assert (=> b!3628971 m!4130019))

(declare-fun m!4130021 () Bool)

(assert (=> b!3628971 m!4130021))

(assert (=> b!3628971 m!4130021))

(declare-fun m!4130023 () Bool)

(assert (=> b!3628971 m!4130023))

(declare-fun m!4130025 () Bool)

(assert (=> b!3628971 m!4130025))

(declare-fun m!4130027 () Bool)

(assert (=> b!3628971 m!4130027))

(declare-fun m!4130029 () Bool)

(assert (=> b!3628971 m!4130029))

(declare-fun m!4130031 () Bool)

(assert (=> b!3628974 m!4130031))

(declare-fun m!4130033 () Bool)

(assert (=> b!3628974 m!4130033))

(declare-fun m!4130035 () Bool)

(assert (=> b!3628959 m!4130035))

(declare-fun m!4130037 () Bool)

(assert (=> b!3628970 m!4130037))

(assert (=> b!3628970 m!4130037))

(declare-fun m!4130039 () Bool)

(assert (=> b!3628970 m!4130039))

(declare-fun m!4130041 () Bool)

(assert (=> b!3628957 m!4130041))

(declare-fun m!4130043 () Bool)

(assert (=> b!3628957 m!4130043))

(declare-fun m!4130045 () Bool)

(assert (=> b!3628951 m!4130045))

(declare-fun m!4130047 () Bool)

(assert (=> b!3628975 m!4130047))

(declare-fun m!4130049 () Bool)

(assert (=> b!3628969 m!4130049))

(declare-fun m!4130051 () Bool)

(assert (=> b!3628954 m!4130051))

(declare-fun m!4130053 () Bool)

(assert (=> b!3628973 m!4130053))

(assert (=> b!3628973 m!4130053))

(declare-fun m!4130055 () Bool)

(assert (=> b!3628973 m!4130055))

(declare-fun m!4130057 () Bool)

(assert (=> b!3628973 m!4130057))

(declare-fun m!4130059 () Bool)

(assert (=> b!3628972 m!4130059))

(declare-fun m!4130061 () Bool)

(assert (=> b!3628972 m!4130061))

(declare-fun m!4130063 () Bool)

(assert (=> b!3628958 m!4130063))

(check-sat b_and!266107 (not b!3628980) b_and!266113 (not b!3628972) b_and!266103 (not b_next!95603) (not b!3628954) (not b!3628960) (not b!3628967) (not b_next!95611) (not b!3628976) (not b_next!95609) (not b!3628963) b_and!266115 tp_is_empty!18009 (not b_next!95615) (not b!3628959) (not b!3628952) (not b!3628979) b_and!266109 (not b!3628974) (not b!3628975) (not b_next!95605) (not b_next!95601) (not b!3628964) (not b!3628973) (not b!3628956) b_and!266117 (not b_next!95607) (not b!3628962) (not b!3628965) b_and!266105 (not start!338254) (not b!3628957) (not b!3628951) (not b!3628971) (not b!3628970) (not b!3628958) (not b_next!95613) (not b!3628969) b_and!266111)
(check-sat (not b_next!95615) b_and!266107 b_and!266109 b_and!266113 b_and!266103 (not b_next!95603) (not b_next!95611) b_and!266105 (not b_next!95609) b_and!266115 (not b_next!95613) b_and!266111 (not b_next!95605) (not b_next!95601) b_and!266117 (not b_next!95607))
(get-model)

(declare-fun b!3629062 () Bool)

(declare-fun res!1469479 () Bool)

(declare-fun e!2246459 () Bool)

(assert (=> b!3629062 (=> res!1469479 e!2246459)))

(assert (=> b!3629062 (= res!1469479 (not ((_ is IntegerValue!17804) (value!183024 token!511))))))

(declare-fun e!2246457 () Bool)

(assert (=> b!3629062 (= e!2246457 e!2246459)))

(declare-fun d!1067175 () Bool)

(declare-fun c!627807 () Bool)

(assert (=> d!1067175 (= c!627807 ((_ is IntegerValue!17802) (value!183024 token!511)))))

(declare-fun e!2246458 () Bool)

(assert (=> d!1067175 (= (inv!21 (value!183024 token!511)) e!2246458)))

(declare-fun b!3629063 () Bool)

(assert (=> b!3629063 (= e!2246458 e!2246457)))

(declare-fun c!627808 () Bool)

(assert (=> b!3629063 (= c!627808 ((_ is IntegerValue!17803) (value!183024 token!511)))))

(declare-fun b!3629064 () Bool)

(declare-fun inv!17 (TokenValue!5934) Bool)

(assert (=> b!3629064 (= e!2246457 (inv!17 (value!183024 token!511)))))

(declare-fun b!3629065 () Bool)

(declare-fun inv!15 (TokenValue!5934) Bool)

(assert (=> b!3629065 (= e!2246459 (inv!15 (value!183024 token!511)))))

(declare-fun b!3629066 () Bool)

(declare-fun inv!16 (TokenValue!5934) Bool)

(assert (=> b!3629066 (= e!2246458 (inv!16 (value!183024 token!511)))))

(assert (= (and d!1067175 c!627807) b!3629066))

(assert (= (and d!1067175 (not c!627807)) b!3629063))

(assert (= (and b!3629063 c!627808) b!3629064))

(assert (= (and b!3629063 (not c!627808)) b!3629062))

(assert (= (and b!3629062 (not res!1469479)) b!3629065))

(declare-fun m!4130123 () Bool)

(assert (=> b!3629064 m!4130123))

(declare-fun m!4130125 () Bool)

(assert (=> b!3629065 m!4130125))

(declare-fun m!4130127 () Bool)

(assert (=> b!3629066 m!4130127))

(assert (=> b!3628954 d!1067175))

(declare-fun d!1067181 () Bool)

(assert (=> d!1067181 (= (isEmpty!22619 rules!3307) ((_ is Nil!38245) rules!3307))))

(assert (=> b!3628965 d!1067181))

(declare-fun d!1067185 () Bool)

(declare-fun isEmpty!22622 (Option!8037) Bool)

(assert (=> d!1067185 (= (isDefined!6268 lt!1255279) (not (isEmpty!22622 lt!1255279)))))

(declare-fun bs!571501 () Bool)

(assert (= bs!571501 d!1067185))

(declare-fun m!4130131 () Bool)

(assert (=> bs!571501 m!4130131))

(assert (=> b!3628964 d!1067185))

(declare-fun d!1067187 () Bool)

(declare-fun e!2246492 () Bool)

(assert (=> d!1067187 e!2246492))

(declare-fun res!1469542 () Bool)

(assert (=> d!1067187 (=> res!1469542 e!2246492)))

(declare-fun lt!1255339 () Option!8037)

(assert (=> d!1067187 (= res!1469542 (isEmpty!22622 lt!1255339))))

(declare-fun e!2246494 () Option!8037)

(assert (=> d!1067187 (= lt!1255339 e!2246494)))

(declare-fun c!627815 () Bool)

(assert (=> d!1067187 (= c!627815 (and ((_ is Cons!38245) rules!3307) ((_ is Nil!38245) (t!294964 rules!3307))))))

(declare-fun lt!1255342 () Unit!55058)

(declare-fun lt!1255341 () Unit!55058)

(assert (=> d!1067187 (= lt!1255342 lt!1255341)))

(assert (=> d!1067187 (isPrefix!3067 lt!1255280 lt!1255280)))

(declare-fun lemmaIsPrefixRefl!1942 (List!38368 List!38368) Unit!55058)

(assert (=> d!1067187 (= lt!1255341 (lemmaIsPrefixRefl!1942 lt!1255280 lt!1255280))))

(declare-fun rulesValidInductive!2007 (LexerInterface!5293 List!38369) Bool)

(assert (=> d!1067187 (rulesValidInductive!2007 thiss!23823 rules!3307)))

(assert (=> d!1067187 (= (maxPrefix!2827 thiss!23823 rules!3307 lt!1255280) lt!1255339)))

(declare-fun b!3629136 () Bool)

(declare-fun res!1469539 () Bool)

(declare-fun e!2246493 () Bool)

(assert (=> b!3629136 (=> (not res!1469539) (not e!2246493))))

(declare-fun size!29181 (List!38368) Int)

(assert (=> b!3629136 (= res!1469539 (< (size!29181 (_2!22190 (get!12499 lt!1255339))) (size!29181 lt!1255280)))))

(declare-fun bm!262475 () Bool)

(declare-fun call!262480 () Option!8037)

(declare-fun maxPrefixOneRule!1967 (LexerInterface!5293 Rule!11208 List!38368) Option!8037)

(assert (=> bm!262475 (= call!262480 (maxPrefixOneRule!1967 thiss!23823 (h!43665 rules!3307) lt!1255280))))

(declare-fun b!3629137 () Bool)

(declare-fun res!1469538 () Bool)

(assert (=> b!3629137 (=> (not res!1469538) (not e!2246493))))

(assert (=> b!3629137 (= res!1469538 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))) (_2!22190 (get!12499 lt!1255339))) lt!1255280))))

(declare-fun b!3629138 () Bool)

(declare-fun res!1469543 () Bool)

(assert (=> b!3629138 (=> (not res!1469543) (not e!2246493))))

(assert (=> b!3629138 (= res!1469543 (= (value!183024 (_1!22190 (get!12499 lt!1255339))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339)))))))))

(declare-fun b!3629139 () Bool)

(declare-fun res!1469541 () Bool)

(assert (=> b!3629139 (=> (not res!1469541) (not e!2246493))))

(assert (=> b!3629139 (= res!1469541 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339)))))))

(declare-fun b!3629140 () Bool)

(assert (=> b!3629140 (= e!2246493 (contains!7471 rules!3307 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))

(declare-fun b!3629141 () Bool)

(declare-fun res!1469540 () Bool)

(assert (=> b!3629141 (=> (not res!1469540) (not e!2246493))))

(assert (=> b!3629141 (= res!1469540 (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))))))

(declare-fun b!3629142 () Bool)

(assert (=> b!3629142 (= e!2246494 call!262480)))

(declare-fun b!3629143 () Bool)

(declare-fun lt!1255340 () Option!8037)

(declare-fun lt!1255338 () Option!8037)

(assert (=> b!3629143 (= e!2246494 (ite (and ((_ is None!8036) lt!1255340) ((_ is None!8036) lt!1255338)) None!8036 (ite ((_ is None!8036) lt!1255338) lt!1255340 (ite ((_ is None!8036) lt!1255340) lt!1255338 (ite (>= (size!29178 (_1!22190 (v!37824 lt!1255340))) (size!29178 (_1!22190 (v!37824 lt!1255338)))) lt!1255340 lt!1255338)))))))

(assert (=> b!3629143 (= lt!1255340 call!262480)))

(assert (=> b!3629143 (= lt!1255338 (maxPrefix!2827 thiss!23823 (t!294964 rules!3307) lt!1255280))))

(declare-fun b!3629144 () Bool)

(assert (=> b!3629144 (= e!2246492 e!2246493)))

(declare-fun res!1469537 () Bool)

(assert (=> b!3629144 (=> (not res!1469537) (not e!2246493))))

(assert (=> b!3629144 (= res!1469537 (isDefined!6268 lt!1255339))))

(assert (= (and d!1067187 c!627815) b!3629142))

(assert (= (and d!1067187 (not c!627815)) b!3629143))

(assert (= (or b!3629142 b!3629143) bm!262475))

(assert (= (and d!1067187 (not res!1469542)) b!3629144))

(assert (= (and b!3629144 res!1469537) b!3629139))

(assert (= (and b!3629139 res!1469541) b!3629136))

(assert (= (and b!3629136 res!1469539) b!3629137))

(assert (= (and b!3629137 res!1469538) b!3629138))

(assert (= (and b!3629138 res!1469543) b!3629141))

(assert (= (and b!3629141 res!1469540) b!3629140))

(declare-fun m!4130205 () Bool)

(assert (=> b!3629137 m!4130205))

(declare-fun m!4130207 () Bool)

(assert (=> b!3629137 m!4130207))

(assert (=> b!3629137 m!4130207))

(declare-fun m!4130209 () Bool)

(assert (=> b!3629137 m!4130209))

(assert (=> b!3629137 m!4130209))

(declare-fun m!4130211 () Bool)

(assert (=> b!3629137 m!4130211))

(assert (=> b!3629138 m!4130205))

(declare-fun m!4130213 () Bool)

(assert (=> b!3629138 m!4130213))

(assert (=> b!3629138 m!4130213))

(declare-fun m!4130215 () Bool)

(assert (=> b!3629138 m!4130215))

(declare-fun m!4130217 () Bool)

(assert (=> bm!262475 m!4130217))

(declare-fun m!4130219 () Bool)

(assert (=> b!3629143 m!4130219))

(declare-fun m!4130221 () Bool)

(assert (=> d!1067187 m!4130221))

(declare-fun m!4130223 () Bool)

(assert (=> d!1067187 m!4130223))

(declare-fun m!4130225 () Bool)

(assert (=> d!1067187 m!4130225))

(declare-fun m!4130227 () Bool)

(assert (=> d!1067187 m!4130227))

(assert (=> b!3629141 m!4130205))

(assert (=> b!3629141 m!4130207))

(assert (=> b!3629141 m!4130207))

(assert (=> b!3629141 m!4130209))

(assert (=> b!3629141 m!4130209))

(declare-fun m!4130229 () Bool)

(assert (=> b!3629141 m!4130229))

(assert (=> b!3629139 m!4130205))

(assert (=> b!3629139 m!4130207))

(assert (=> b!3629139 m!4130207))

(assert (=> b!3629139 m!4130209))

(assert (=> b!3629136 m!4130205))

(declare-fun m!4130231 () Bool)

(assert (=> b!3629136 m!4130231))

(declare-fun m!4130233 () Bool)

(assert (=> b!3629136 m!4130233))

(assert (=> b!3629140 m!4130205))

(declare-fun m!4130235 () Bool)

(assert (=> b!3629140 m!4130235))

(declare-fun m!4130237 () Bool)

(assert (=> b!3629144 m!4130237))

(assert (=> b!3628964 d!1067187))

(declare-fun d!1067199 () Bool)

(declare-fun list!14133 (Conc!11667) List!38368)

(assert (=> d!1067199 (= (list!14130 (charsOf!3718 token!511)) (list!14133 (c!627781 (charsOf!3718 token!511))))))

(declare-fun bs!571502 () Bool)

(assert (= bs!571502 d!1067199))

(declare-fun m!4130239 () Bool)

(assert (=> bs!571502 m!4130239))

(assert (=> b!3628964 d!1067199))

(declare-fun d!1067201 () Bool)

(declare-fun lt!1255345 () BalanceConc!22948)

(assert (=> d!1067201 (= (list!14130 lt!1255345) (originalCharacters!6418 token!511))))

(declare-fun dynLambda!16563 (Int TokenValue!5934) BalanceConc!22948)

(assert (=> d!1067201 (= lt!1255345 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))

(assert (=> d!1067201 (= (charsOf!3718 token!511) lt!1255345)))

(declare-fun b_lambda!107385 () Bool)

(assert (=> (not b_lambda!107385) (not d!1067201)))

(declare-fun tb!208365 () Bool)

(declare-fun t!294974 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) t!294974) tb!208365))

(declare-fun b!3629149 () Bool)

(declare-fun e!2246497 () Bool)

(declare-fun tp!1108112 () Bool)

(declare-fun inv!51663 (Conc!11667) Bool)

(assert (=> b!3629149 (= e!2246497 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))) tp!1108112))))

(declare-fun result!253864 () Bool)

(declare-fun inv!51664 (BalanceConc!22948) Bool)

(assert (=> tb!208365 (= result!253864 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))) e!2246497))))

(assert (= tb!208365 b!3629149))

(declare-fun m!4130241 () Bool)

(assert (=> b!3629149 m!4130241))

(declare-fun m!4130243 () Bool)

(assert (=> tb!208365 m!4130243))

(assert (=> d!1067201 t!294974))

(declare-fun b_and!266127 () Bool)

(assert (= b_and!266105 (and (=> t!294974 result!253864) b_and!266127)))

(declare-fun tb!208367 () Bool)

(declare-fun t!294976 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) t!294976) tb!208367))

(declare-fun result!253868 () Bool)

(assert (= result!253868 result!253864))

(assert (=> d!1067201 t!294976))

(declare-fun b_and!266129 () Bool)

(assert (= b_and!266109 (and (=> t!294976 result!253868) b_and!266129)))

(declare-fun t!294978 () Bool)

(declare-fun tb!208369 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) t!294978) tb!208369))

(declare-fun result!253870 () Bool)

(assert (= result!253870 result!253864))

(assert (=> d!1067201 t!294978))

(declare-fun b_and!266131 () Bool)

(assert (= b_and!266113 (and (=> t!294978 result!253870) b_and!266131)))

(declare-fun t!294980 () Bool)

(declare-fun tb!208371 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) t!294980) tb!208371))

(declare-fun result!253872 () Bool)

(assert (= result!253872 result!253864))

(assert (=> d!1067201 t!294980))

(declare-fun b_and!266133 () Bool)

(assert (= b_and!266117 (and (=> t!294980 result!253872) b_and!266133)))

(declare-fun m!4130245 () Bool)

(assert (=> d!1067201 m!4130245))

(declare-fun m!4130247 () Bool)

(assert (=> d!1067201 m!4130247))

(assert (=> b!3628964 d!1067201))

(declare-fun d!1067203 () Bool)

(declare-fun lt!1255348 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5481 (List!38369) (InoxSet Rule!11208))

(assert (=> d!1067203 (= lt!1255348 (select (content!5481 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2246502 () Bool)

(assert (=> d!1067203 (= lt!1255348 e!2246502)))

(declare-fun res!1469548 () Bool)

(assert (=> d!1067203 (=> (not res!1469548) (not e!2246502))))

(assert (=> d!1067203 (= res!1469548 ((_ is Cons!38245) rules!3307))))

(assert (=> d!1067203 (= (contains!7471 rules!3307 anOtherTypeRule!33) lt!1255348)))

(declare-fun b!3629154 () Bool)

(declare-fun e!2246503 () Bool)

(assert (=> b!3629154 (= e!2246502 e!2246503)))

(declare-fun res!1469549 () Bool)

(assert (=> b!3629154 (=> res!1469549 e!2246503)))

(assert (=> b!3629154 (= res!1469549 (= (h!43665 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3629155 () Bool)

(assert (=> b!3629155 (= e!2246503 (contains!7471 (t!294964 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1067203 res!1469548) b!3629154))

(assert (= (and b!3629154 (not res!1469549)) b!3629155))

(declare-fun m!4130249 () Bool)

(assert (=> d!1067203 m!4130249))

(declare-fun m!4130251 () Bool)

(assert (=> d!1067203 m!4130251))

(declare-fun m!4130253 () Bool)

(assert (=> b!3629155 m!4130253))

(assert (=> b!3628975 d!1067203))

(declare-fun d!1067205 () Bool)

(assert (=> d!1067205 (= (inv!51656 (tag!6432 rule!403)) (= (mod (str.len (value!182998 (tag!6432 rule!403))) 2) 0))))

(assert (=> b!3628974 d!1067205))

(declare-fun d!1067207 () Bool)

(declare-fun res!1469552 () Bool)

(declare-fun e!2246506 () Bool)

(assert (=> d!1067207 (=> (not res!1469552) (not e!2246506))))

(declare-fun semiInverseModEq!2420 (Int Int) Bool)

(assert (=> d!1067207 (= res!1469552 (semiInverseModEq!2420 (toChars!7851 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 rule!403))))))

(assert (=> d!1067207 (= (inv!51659 (transformation!5704 rule!403)) e!2246506)))

(declare-fun b!3629158 () Bool)

(declare-fun equivClasses!2319 (Int Int) Bool)

(assert (=> b!3629158 (= e!2246506 (equivClasses!2319 (toChars!7851 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 rule!403))))))

(assert (= (and d!1067207 res!1469552) b!3629158))

(declare-fun m!4130255 () Bool)

(assert (=> d!1067207 m!4130255))

(declare-fun m!4130257 () Bool)

(assert (=> b!3629158 m!4130257))

(assert (=> b!3628974 d!1067207))

(declare-fun b!3629188 () Bool)

(declare-fun e!2246522 () Bool)

(declare-fun derivativeStep!3169 (Regex!10463 C!21112) Regex!10463)

(declare-fun tail!5619 (List!38368) List!38368)

(assert (=> b!3629188 (= e!2246522 (matchR!5032 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)) (tail!5619 lt!1255264)))))

(declare-fun b!3629189 () Bool)

(declare-fun e!2246526 () Bool)

(declare-fun e!2246521 () Bool)

(assert (=> b!3629189 (= e!2246526 e!2246521)))

(declare-fun res!1469570 () Bool)

(assert (=> b!3629189 (=> (not res!1469570) (not e!2246521))))

(declare-fun lt!1255351 () Bool)

(assert (=> b!3629189 (= res!1469570 (not lt!1255351))))

(declare-fun b!3629190 () Bool)

(declare-fun e!2246523 () Bool)

(declare-fun call!262483 () Bool)

(assert (=> b!3629190 (= e!2246523 (= lt!1255351 call!262483))))

(declare-fun b!3629191 () Bool)

(declare-fun e!2246527 () Bool)

(assert (=> b!3629191 (= e!2246523 e!2246527)))

(declare-fun c!627823 () Bool)

(assert (=> b!3629191 (= c!627823 ((_ is EmptyLang!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3629192 () Bool)

(assert (=> b!3629192 (= e!2246527 (not lt!1255351))))

(declare-fun b!3629193 () Bool)

(declare-fun res!1469575 () Bool)

(assert (=> b!3629193 (=> res!1469575 e!2246526)))

(assert (=> b!3629193 (= res!1469575 (not ((_ is ElementMatch!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> b!3629193 (= e!2246527 e!2246526)))

(declare-fun b!3629194 () Bool)

(declare-fun nullable!3620 (Regex!10463) Bool)

(assert (=> b!3629194 (= e!2246522 (nullable!3620 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3629195 () Bool)

(declare-fun res!1469573 () Bool)

(declare-fun e!2246524 () Bool)

(assert (=> b!3629195 (=> res!1469573 e!2246524)))

(assert (=> b!3629195 (= res!1469573 (not (isEmpty!22618 (tail!5619 lt!1255264))))))

(declare-fun b!3629196 () Bool)

(assert (=> b!3629196 (= e!2246524 (not (= (head!7682 lt!1255264) (c!627780 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))))

(declare-fun bm!262478 () Bool)

(assert (=> bm!262478 (= call!262483 (isEmpty!22618 lt!1255264))))

(declare-fun d!1067209 () Bool)

(assert (=> d!1067209 e!2246523))

(declare-fun c!627824 () Bool)

(assert (=> d!1067209 (= c!627824 ((_ is EmptyExpr!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(assert (=> d!1067209 (= lt!1255351 e!2246522)))

(declare-fun c!627822 () Bool)

(assert (=> d!1067209 (= c!627822 (isEmpty!22618 lt!1255264))))

(declare-fun validRegex!4782 (Regex!10463) Bool)

(assert (=> d!1067209 (validRegex!4782 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))

(assert (=> d!1067209 (= (matchR!5032 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255264) lt!1255351)))

(declare-fun b!3629187 () Bool)

(declare-fun res!1469571 () Bool)

(declare-fun e!2246525 () Bool)

(assert (=> b!3629187 (=> (not res!1469571) (not e!2246525))))

(assert (=> b!3629187 (= res!1469571 (not call!262483))))

(declare-fun b!3629197 () Bool)

(declare-fun res!1469574 () Bool)

(assert (=> b!3629197 (=> (not res!1469574) (not e!2246525))))

(assert (=> b!3629197 (= res!1469574 (isEmpty!22618 (tail!5619 lt!1255264)))))

(declare-fun b!3629198 () Bool)

(assert (=> b!3629198 (= e!2246525 (= (head!7682 lt!1255264) (c!627780 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))))

(declare-fun b!3629199 () Bool)

(assert (=> b!3629199 (= e!2246521 e!2246524)))

(declare-fun res!1469576 () Bool)

(assert (=> b!3629199 (=> res!1469576 e!2246524)))

(assert (=> b!3629199 (= res!1469576 call!262483)))

(declare-fun b!3629200 () Bool)

(declare-fun res!1469569 () Bool)

(assert (=> b!3629200 (=> res!1469569 e!2246526)))

(assert (=> b!3629200 (= res!1469569 e!2246525)))

(declare-fun res!1469572 () Bool)

(assert (=> b!3629200 (=> (not res!1469572) (not e!2246525))))

(assert (=> b!3629200 (= res!1469572 lt!1255351)))

(assert (= (and d!1067209 c!627822) b!3629194))

(assert (= (and d!1067209 (not c!627822)) b!3629188))

(assert (= (and d!1067209 c!627824) b!3629190))

(assert (= (and d!1067209 (not c!627824)) b!3629191))

(assert (= (and b!3629191 c!627823) b!3629192))

(assert (= (and b!3629191 (not c!627823)) b!3629193))

(assert (= (and b!3629193 (not res!1469575)) b!3629200))

(assert (= (and b!3629200 res!1469572) b!3629187))

(assert (= (and b!3629187 res!1469571) b!3629197))

(assert (= (and b!3629197 res!1469574) b!3629198))

(assert (= (and b!3629200 (not res!1469569)) b!3629189))

(assert (= (and b!3629189 res!1469570) b!3629199))

(assert (= (and b!3629199 (not res!1469576)) b!3629195))

(assert (= (and b!3629195 (not res!1469573)) b!3629196))

(assert (= (or b!3629190 b!3629187 b!3629199) bm!262478))

(declare-fun m!4130259 () Bool)

(assert (=> b!3629197 m!4130259))

(assert (=> b!3629197 m!4130259))

(declare-fun m!4130261 () Bool)

(assert (=> b!3629197 m!4130261))

(declare-fun m!4130263 () Bool)

(assert (=> bm!262478 m!4130263))

(declare-fun m!4130265 () Bool)

(assert (=> b!3629194 m!4130265))

(assert (=> d!1067209 m!4130263))

(declare-fun m!4130267 () Bool)

(assert (=> d!1067209 m!4130267))

(declare-fun m!4130269 () Bool)

(assert (=> b!3629196 m!4130269))

(assert (=> b!3629195 m!4130259))

(assert (=> b!3629195 m!4130259))

(assert (=> b!3629195 m!4130261))

(assert (=> b!3629188 m!4130269))

(assert (=> b!3629188 m!4130269))

(declare-fun m!4130271 () Bool)

(assert (=> b!3629188 m!4130271))

(assert (=> b!3629188 m!4130259))

(assert (=> b!3629188 m!4130271))

(assert (=> b!3629188 m!4130259))

(declare-fun m!4130273 () Bool)

(assert (=> b!3629188 m!4130273))

(assert (=> b!3629198 m!4130269))

(assert (=> b!3628952 d!1067209))

(declare-fun b!3629202 () Bool)

(declare-fun e!2246529 () Bool)

(assert (=> b!3629202 (= e!2246529 (matchR!5032 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)) (tail!5619 lt!1255280)))))

(declare-fun b!3629203 () Bool)

(declare-fun e!2246533 () Bool)

(declare-fun e!2246528 () Bool)

(assert (=> b!3629203 (= e!2246533 e!2246528)))

(declare-fun res!1469578 () Bool)

(assert (=> b!3629203 (=> (not res!1469578) (not e!2246528))))

(declare-fun lt!1255352 () Bool)

(assert (=> b!3629203 (= res!1469578 (not lt!1255352))))

(declare-fun b!3629204 () Bool)

(declare-fun e!2246530 () Bool)

(declare-fun call!262484 () Bool)

(assert (=> b!3629204 (= e!2246530 (= lt!1255352 call!262484))))

(declare-fun b!3629205 () Bool)

(declare-fun e!2246534 () Bool)

(assert (=> b!3629205 (= e!2246530 e!2246534)))

(declare-fun c!627826 () Bool)

(assert (=> b!3629205 (= c!627826 ((_ is EmptyLang!10463) (regex!5704 rule!403)))))

(declare-fun b!3629206 () Bool)

(assert (=> b!3629206 (= e!2246534 (not lt!1255352))))

(declare-fun b!3629207 () Bool)

(declare-fun res!1469583 () Bool)

(assert (=> b!3629207 (=> res!1469583 e!2246533)))

(assert (=> b!3629207 (= res!1469583 (not ((_ is ElementMatch!10463) (regex!5704 rule!403))))))

(assert (=> b!3629207 (= e!2246534 e!2246533)))

(declare-fun b!3629208 () Bool)

(assert (=> b!3629208 (= e!2246529 (nullable!3620 (regex!5704 rule!403)))))

(declare-fun b!3629209 () Bool)

(declare-fun res!1469581 () Bool)

(declare-fun e!2246531 () Bool)

(assert (=> b!3629209 (=> res!1469581 e!2246531)))

(assert (=> b!3629209 (= res!1469581 (not (isEmpty!22618 (tail!5619 lt!1255280))))))

(declare-fun b!3629210 () Bool)

(assert (=> b!3629210 (= e!2246531 (not (= (head!7682 lt!1255280) (c!627780 (regex!5704 rule!403)))))))

(declare-fun bm!262479 () Bool)

(assert (=> bm!262479 (= call!262484 (isEmpty!22618 lt!1255280))))

(declare-fun d!1067211 () Bool)

(assert (=> d!1067211 e!2246530))

(declare-fun c!627827 () Bool)

(assert (=> d!1067211 (= c!627827 ((_ is EmptyExpr!10463) (regex!5704 rule!403)))))

(assert (=> d!1067211 (= lt!1255352 e!2246529)))

(declare-fun c!627825 () Bool)

(assert (=> d!1067211 (= c!627825 (isEmpty!22618 lt!1255280))))

(assert (=> d!1067211 (validRegex!4782 (regex!5704 rule!403))))

(assert (=> d!1067211 (= (matchR!5032 (regex!5704 rule!403) lt!1255280) lt!1255352)))

(declare-fun b!3629201 () Bool)

(declare-fun res!1469579 () Bool)

(declare-fun e!2246532 () Bool)

(assert (=> b!3629201 (=> (not res!1469579) (not e!2246532))))

(assert (=> b!3629201 (= res!1469579 (not call!262484))))

(declare-fun b!3629211 () Bool)

(declare-fun res!1469582 () Bool)

(assert (=> b!3629211 (=> (not res!1469582) (not e!2246532))))

(assert (=> b!3629211 (= res!1469582 (isEmpty!22618 (tail!5619 lt!1255280)))))

(declare-fun b!3629212 () Bool)

(assert (=> b!3629212 (= e!2246532 (= (head!7682 lt!1255280) (c!627780 (regex!5704 rule!403))))))

(declare-fun b!3629213 () Bool)

(assert (=> b!3629213 (= e!2246528 e!2246531)))

(declare-fun res!1469584 () Bool)

(assert (=> b!3629213 (=> res!1469584 e!2246531)))

(assert (=> b!3629213 (= res!1469584 call!262484)))

(declare-fun b!3629214 () Bool)

(declare-fun res!1469577 () Bool)

(assert (=> b!3629214 (=> res!1469577 e!2246533)))

(assert (=> b!3629214 (= res!1469577 e!2246532)))

(declare-fun res!1469580 () Bool)

(assert (=> b!3629214 (=> (not res!1469580) (not e!2246532))))

(assert (=> b!3629214 (= res!1469580 lt!1255352)))

(assert (= (and d!1067211 c!627825) b!3629208))

(assert (= (and d!1067211 (not c!627825)) b!3629202))

(assert (= (and d!1067211 c!627827) b!3629204))

(assert (= (and d!1067211 (not c!627827)) b!3629205))

(assert (= (and b!3629205 c!627826) b!3629206))

(assert (= (and b!3629205 (not c!627826)) b!3629207))

(assert (= (and b!3629207 (not res!1469583)) b!3629214))

(assert (= (and b!3629214 res!1469580) b!3629201))

(assert (= (and b!3629201 res!1469579) b!3629211))

(assert (= (and b!3629211 res!1469582) b!3629212))

(assert (= (and b!3629214 (not res!1469577)) b!3629203))

(assert (= (and b!3629203 res!1469578) b!3629213))

(assert (= (and b!3629213 (not res!1469584)) b!3629209))

(assert (= (and b!3629209 (not res!1469581)) b!3629210))

(assert (= (or b!3629204 b!3629201 b!3629213) bm!262479))

(declare-fun m!4130275 () Bool)

(assert (=> b!3629211 m!4130275))

(assert (=> b!3629211 m!4130275))

(declare-fun m!4130277 () Bool)

(assert (=> b!3629211 m!4130277))

(declare-fun m!4130279 () Bool)

(assert (=> bm!262479 m!4130279))

(declare-fun m!4130281 () Bool)

(assert (=> b!3629208 m!4130281))

(assert (=> d!1067211 m!4130279))

(declare-fun m!4130283 () Bool)

(assert (=> d!1067211 m!4130283))

(declare-fun m!4130285 () Bool)

(assert (=> b!3629210 m!4130285))

(assert (=> b!3629209 m!4130275))

(assert (=> b!3629209 m!4130275))

(assert (=> b!3629209 m!4130277))

(assert (=> b!3629202 m!4130285))

(assert (=> b!3629202 m!4130285))

(declare-fun m!4130287 () Bool)

(assert (=> b!3629202 m!4130287))

(assert (=> b!3629202 m!4130275))

(assert (=> b!3629202 m!4130287))

(assert (=> b!3629202 m!4130275))

(declare-fun m!4130289 () Bool)

(assert (=> b!3629202 m!4130289))

(assert (=> b!3629212 m!4130285))

(assert (=> b!3628963 d!1067211))

(declare-fun d!1067213 () Bool)

(declare-fun res!1469589 () Bool)

(declare-fun e!2246537 () Bool)

(assert (=> d!1067213 (=> (not res!1469589) (not e!2246537))))

(assert (=> d!1067213 (= res!1469589 (validRegex!4782 (regex!5704 rule!403)))))

(assert (=> d!1067213 (= (ruleValid!1968 thiss!23823 rule!403) e!2246537)))

(declare-fun b!3629219 () Bool)

(declare-fun res!1469590 () Bool)

(assert (=> b!3629219 (=> (not res!1469590) (not e!2246537))))

(assert (=> b!3629219 (= res!1469590 (not (nullable!3620 (regex!5704 rule!403))))))

(declare-fun b!3629220 () Bool)

(assert (=> b!3629220 (= e!2246537 (not (= (tag!6432 rule!403) (String!43004 ""))))))

(assert (= (and d!1067213 res!1469589) b!3629219))

(assert (= (and b!3629219 res!1469590) b!3629220))

(assert (=> d!1067213 m!4130283))

(assert (=> b!3629219 m!4130281))

(assert (=> b!3628963 d!1067213))

(declare-fun d!1067215 () Bool)

(assert (=> d!1067215 (ruleValid!1968 thiss!23823 rule!403)))

(declare-fun lt!1255355 () Unit!55058)

(declare-fun choose!21309 (LexerInterface!5293 Rule!11208 List!38369) Unit!55058)

(assert (=> d!1067215 (= lt!1255355 (choose!21309 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1067215 (contains!7471 rules!3307 rule!403)))

(assert (=> d!1067215 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1122 thiss!23823 rule!403 rules!3307) lt!1255355)))

(declare-fun bs!571503 () Bool)

(assert (= bs!571503 d!1067215))

(assert (=> bs!571503 m!4129963))

(declare-fun m!4130291 () Bool)

(assert (=> bs!571503 m!4130291))

(assert (=> bs!571503 m!4130063))

(assert (=> b!3628963 d!1067215))

(declare-fun d!1067217 () Bool)

(assert (=> d!1067217 (= (isEmpty!22618 (_2!22190 lt!1255276)) ((_ is Nil!38244) (_2!22190 lt!1255276)))))

(assert (=> b!3628962 d!1067217))

(declare-fun d!1067219 () Bool)

(declare-fun lt!1255358 () Bool)

(declare-fun content!5483 (List!38368) (InoxSet C!21112))

(assert (=> d!1067219 (= lt!1255358 (select (content!5483 (usedCharacters!916 (regex!5704 rule!403))) lt!1255266))))

(declare-fun e!2246543 () Bool)

(assert (=> d!1067219 (= lt!1255358 e!2246543)))

(declare-fun res!1469595 () Bool)

(assert (=> d!1067219 (=> (not res!1469595) (not e!2246543))))

(assert (=> d!1067219 (= res!1469595 ((_ is Cons!38244) (usedCharacters!916 (regex!5704 rule!403))))))

(assert (=> d!1067219 (= (contains!7472 (usedCharacters!916 (regex!5704 rule!403)) lt!1255266) lt!1255358)))

(declare-fun b!3629225 () Bool)

(declare-fun e!2246542 () Bool)

(assert (=> b!3629225 (= e!2246543 e!2246542)))

(declare-fun res!1469596 () Bool)

(assert (=> b!3629225 (=> res!1469596 e!2246542)))

(assert (=> b!3629225 (= res!1469596 (= (h!43664 (usedCharacters!916 (regex!5704 rule!403))) lt!1255266))))

(declare-fun b!3629226 () Bool)

(assert (=> b!3629226 (= e!2246542 (contains!7472 (t!294963 (usedCharacters!916 (regex!5704 rule!403))) lt!1255266))))

(assert (= (and d!1067219 res!1469595) b!3629225))

(assert (= (and b!3629225 (not res!1469596)) b!3629226))

(assert (=> d!1067219 m!4130053))

(declare-fun m!4130293 () Bool)

(assert (=> d!1067219 m!4130293))

(declare-fun m!4130295 () Bool)

(assert (=> d!1067219 m!4130295))

(declare-fun m!4130297 () Bool)

(assert (=> b!3629226 m!4130297))

(assert (=> b!3628973 d!1067219))

(declare-fun b!3629243 () Bool)

(declare-fun e!2246555 () List!38368)

(declare-fun call!262495 () List!38368)

(assert (=> b!3629243 (= e!2246555 call!262495)))

(declare-fun c!627837 () Bool)

(declare-fun bm!262488 () Bool)

(declare-fun c!627838 () Bool)

(declare-fun call!262494 () List!38368)

(assert (=> bm!262488 (= call!262494 (usedCharacters!916 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))))))

(declare-fun bm!262489 () Bool)

(declare-fun call!262496 () List!38368)

(assert (=> bm!262489 (= call!262496 (usedCharacters!916 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))))))

(declare-fun d!1067221 () Bool)

(declare-fun c!627839 () Bool)

(assert (=> d!1067221 (= c!627839 (or ((_ is EmptyExpr!10463) (regex!5704 rule!403)) ((_ is EmptyLang!10463) (regex!5704 rule!403))))))

(declare-fun e!2246552 () List!38368)

(assert (=> d!1067221 (= (usedCharacters!916 (regex!5704 rule!403)) e!2246552)))

(declare-fun b!3629244 () Bool)

(declare-fun e!2246553 () List!38368)

(assert (=> b!3629244 (= e!2246552 e!2246553)))

(declare-fun c!627836 () Bool)

(assert (=> b!3629244 (= c!627836 ((_ is ElementMatch!10463) (regex!5704 rule!403)))))

(declare-fun b!3629245 () Bool)

(declare-fun e!2246554 () List!38368)

(assert (=> b!3629245 (= e!2246554 call!262494)))

(declare-fun bm!262490 () Bool)

(declare-fun call!262493 () List!38368)

(assert (=> bm!262490 (= call!262493 call!262494)))

(declare-fun b!3629246 () Bool)

(assert (=> b!3629246 (= e!2246553 (Cons!38244 (c!627780 (regex!5704 rule!403)) Nil!38244))))

(declare-fun b!3629247 () Bool)

(assert (=> b!3629247 (= e!2246552 Nil!38244)))

(declare-fun b!3629248 () Bool)

(assert (=> b!3629248 (= c!627837 ((_ is Star!10463) (regex!5704 rule!403)))))

(assert (=> b!3629248 (= e!2246553 e!2246554)))

(declare-fun bm!262491 () Bool)

(assert (=> bm!262491 (= call!262495 (++!9520 (ite c!627838 call!262493 call!262496) (ite c!627838 call!262496 call!262493)))))

(declare-fun b!3629249 () Bool)

(assert (=> b!3629249 (= e!2246555 call!262495)))

(declare-fun b!3629250 () Bool)

(assert (=> b!3629250 (= e!2246554 e!2246555)))

(assert (=> b!3629250 (= c!627838 ((_ is Union!10463) (regex!5704 rule!403)))))

(assert (= (and d!1067221 c!627839) b!3629247))

(assert (= (and d!1067221 (not c!627839)) b!3629244))

(assert (= (and b!3629244 c!627836) b!3629246))

(assert (= (and b!3629244 (not c!627836)) b!3629248))

(assert (= (and b!3629248 c!627837) b!3629245))

(assert (= (and b!3629248 (not c!627837)) b!3629250))

(assert (= (and b!3629250 c!627838) b!3629249))

(assert (= (and b!3629250 (not c!627838)) b!3629243))

(assert (= (or b!3629249 b!3629243) bm!262490))

(assert (= (or b!3629249 b!3629243) bm!262489))

(assert (= (or b!3629249 b!3629243) bm!262491))

(assert (= (or b!3629245 bm!262490) bm!262488))

(declare-fun m!4130299 () Bool)

(assert (=> bm!262488 m!4130299))

(declare-fun m!4130301 () Bool)

(assert (=> bm!262489 m!4130301))

(declare-fun m!4130303 () Bool)

(assert (=> bm!262491 m!4130303))

(assert (=> b!3628973 d!1067221))

(declare-fun d!1067223 () Bool)

(assert (=> d!1067223 (= (head!7682 suffix!1395) (h!43664 suffix!1395))))

(assert (=> b!3628973 d!1067223))

(declare-fun d!1067225 () Bool)

(assert (=> d!1067225 (= (inv!51656 (tag!6432 (h!43665 rules!3307))) (= (mod (str.len (value!182998 (tag!6432 (h!43665 rules!3307)))) 2) 0))))

(assert (=> b!3628972 d!1067225))

(declare-fun d!1067227 () Bool)

(declare-fun res!1469597 () Bool)

(declare-fun e!2246556 () Bool)

(assert (=> d!1067227 (=> (not res!1469597) (not e!2246556))))

(assert (=> d!1067227 (= res!1469597 (semiInverseModEq!2420 (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))))))

(assert (=> d!1067227 (= (inv!51659 (transformation!5704 (h!43665 rules!3307))) e!2246556)))

(declare-fun b!3629251 () Bool)

(assert (=> b!3629251 (= e!2246556 (equivClasses!2319 (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))))))

(assert (= (and d!1067227 res!1469597) b!3629251))

(declare-fun m!4130305 () Bool)

(assert (=> d!1067227 m!4130305))

(declare-fun m!4130307 () Bool)

(assert (=> b!3629251 m!4130307))

(assert (=> b!3628972 d!1067227))

(declare-fun d!1067229 () Bool)

(declare-fun res!1469600 () Bool)

(declare-fun e!2246559 () Bool)

(assert (=> d!1067229 (=> (not res!1469600) (not e!2246559))))

(declare-fun rulesValid!2177 (LexerInterface!5293 List!38369) Bool)

(assert (=> d!1067229 (= res!1469600 (rulesValid!2177 thiss!23823 rules!3307))))

(assert (=> d!1067229 (= (rulesInvariant!4690 thiss!23823 rules!3307) e!2246559)))

(declare-fun b!3629254 () Bool)

(declare-datatypes ((List!38371 0))(
  ( (Nil!38247) (Cons!38247 (h!43667 String!43003) (t!295086 List!38371)) )
))
(declare-fun noDuplicateTag!2173 (LexerInterface!5293 List!38369 List!38371) Bool)

(assert (=> b!3629254 (= e!2246559 (noDuplicateTag!2173 thiss!23823 rules!3307 Nil!38247))))

(assert (= (and d!1067229 res!1469600) b!3629254))

(declare-fun m!4130309 () Bool)

(assert (=> d!1067229 m!4130309))

(declare-fun m!4130311 () Bool)

(assert (=> b!3629254 m!4130311))

(assert (=> b!3628951 d!1067229))

(declare-fun b!3629323 () Bool)

(declare-fun e!2246600 () Bool)

(assert (=> b!3629323 (= e!2246600 true)))

(declare-fun d!1067231 () Bool)

(assert (=> d!1067231 e!2246600))

(assert (= d!1067231 b!3629323))

(declare-fun order!20917 () Int)

(declare-fun lambda!124224 () Int)

(declare-fun order!20915 () Int)

(declare-fun dynLambda!16568 (Int Int) Int)

(declare-fun dynLambda!16569 (Int Int) Int)

(assert (=> b!3629323 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (dynLambda!16569 order!20917 lambda!124224))))

(declare-fun order!20919 () Int)

(declare-fun dynLambda!16570 (Int Int) Int)

(assert (=> b!3629323 (< (dynLambda!16570 order!20919 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (dynLambda!16569 order!20917 lambda!124224))))

(declare-fun dynLambda!16571 (Int BalanceConc!22948) TokenValue!5934)

(assert (=> d!1067231 (= (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(declare-fun lt!1255421 () Unit!55058)

(declare-fun Forall2of!336 (Int BalanceConc!22948 BalanceConc!22948) Unit!55058)

(assert (=> d!1067231 (= lt!1255421 (Forall2of!336 lambda!124224 lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(assert (=> d!1067231 (= (list!14130 lt!1255271) (list!14130 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(assert (=> d!1067231 (= (lemmaEqSameImage!887 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))) lt!1255421)))

(declare-fun b_lambda!107389 () Bool)

(assert (=> (not b_lambda!107389) (not d!1067231)))

(declare-fun t!294990 () Bool)

(declare-fun tb!208381 () Bool)

(assert (=> (and b!3628953 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!294990) tb!208381))

(declare-fun result!253884 () Bool)

(assert (=> tb!208381 (= result!253884 (inv!21 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))

(declare-fun m!4130389 () Bool)

(assert (=> tb!208381 m!4130389))

(assert (=> d!1067231 t!294990))

(declare-fun b_and!266143 () Bool)

(assert (= b_and!266103 (and (=> t!294990 result!253884) b_and!266143)))

(declare-fun tb!208383 () Bool)

(declare-fun t!294992 () Bool)

(assert (=> (and b!3628968 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!294992) tb!208383))

(declare-fun result!253888 () Bool)

(assert (= result!253888 result!253884))

(assert (=> d!1067231 t!294992))

(declare-fun b_and!266145 () Bool)

(assert (= b_and!266107 (and (=> t!294992 result!253888) b_and!266145)))

(declare-fun tb!208385 () Bool)

(declare-fun t!294994 () Bool)

(assert (=> (and b!3628978 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!294994) tb!208385))

(declare-fun result!253890 () Bool)

(assert (= result!253890 result!253884))

(assert (=> d!1067231 t!294994))

(declare-fun b_and!266147 () Bool)

(assert (= b_and!266111 (and (=> t!294994 result!253890) b_and!266147)))

(declare-fun tb!208387 () Bool)

(declare-fun t!294996 () Bool)

(assert (=> (and b!3628966 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!294996) tb!208387))

(declare-fun result!253892 () Bool)

(assert (= result!253892 result!253884))

(assert (=> d!1067231 t!294996))

(declare-fun b_and!266149 () Bool)

(assert (= b_and!266115 (and (=> t!294996 result!253892) b_and!266149)))

(declare-fun b_lambda!107391 () Bool)

(assert (=> (not b_lambda!107391) (not d!1067231)))

(declare-fun tb!208389 () Bool)

(declare-fun t!294998 () Bool)

(assert (=> (and b!3628953 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!294998) tb!208389))

(declare-fun result!253894 () Bool)

(assert (=> tb!208389 (= result!253894 (inv!21 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(declare-fun m!4130391 () Bool)

(assert (=> tb!208389 m!4130391))

(assert (=> d!1067231 t!294998))

(declare-fun b_and!266151 () Bool)

(assert (= b_and!266143 (and (=> t!294998 result!253894) b_and!266151)))

(declare-fun t!295000 () Bool)

(declare-fun tb!208391 () Bool)

(assert (=> (and b!3628968 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295000) tb!208391))

(declare-fun result!253896 () Bool)

(assert (= result!253896 result!253894))

(assert (=> d!1067231 t!295000))

(declare-fun b_and!266153 () Bool)

(assert (= b_and!266145 (and (=> t!295000 result!253896) b_and!266153)))

(declare-fun tb!208393 () Bool)

(declare-fun t!295002 () Bool)

(assert (=> (and b!3628978 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295002) tb!208393))

(declare-fun result!253898 () Bool)

(assert (= result!253898 result!253894))

(assert (=> d!1067231 t!295002))

(declare-fun b_and!266155 () Bool)

(assert (= b_and!266147 (and (=> t!295002 result!253898) b_and!266155)))

(declare-fun t!295004 () Bool)

(declare-fun tb!208395 () Bool)

(assert (=> (and b!3628966 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295004) tb!208395))

(declare-fun result!253900 () Bool)

(assert (= result!253900 result!253894))

(assert (=> d!1067231 t!295004))

(declare-fun b_and!266157 () Bool)

(assert (= b_and!266149 (and (=> t!295004 result!253900) b_and!266157)))

(assert (=> d!1067231 m!4130021))

(declare-fun m!4130393 () Bool)

(assert (=> d!1067231 m!4130393))

(assert (=> d!1067231 m!4130009))

(assert (=> d!1067231 m!4130021))

(declare-fun m!4130395 () Bool)

(assert (=> d!1067231 m!4130395))

(assert (=> d!1067231 m!4130021))

(declare-fun m!4130397 () Bool)

(assert (=> d!1067231 m!4130397))

(declare-fun m!4130399 () Bool)

(assert (=> d!1067231 m!4130399))

(assert (=> b!3628971 d!1067231))

(declare-fun d!1067247 () Bool)

(declare-fun lt!1255424 () Int)

(assert (=> d!1067247 (= lt!1255424 (size!29181 (list!14130 lt!1255271)))))

(declare-fun size!29183 (Conc!11667) Int)

(assert (=> d!1067247 (= lt!1255424 (size!29183 (c!627781 lt!1255271)))))

(assert (=> d!1067247 (= (size!29179 lt!1255271) lt!1255424)))

(declare-fun bs!571505 () Bool)

(assert (= bs!571505 d!1067247))

(assert (=> bs!571505 m!4130009))

(assert (=> bs!571505 m!4130009))

(declare-fun m!4130401 () Bool)

(assert (=> bs!571505 m!4130401))

(declare-fun m!4130403 () Bool)

(assert (=> bs!571505 m!4130403))

(assert (=> b!3628971 d!1067247))

(declare-fun b!3629330 () Bool)

(declare-fun e!2246607 () Bool)

(assert (=> b!3629330 (= e!2246607 true)))

(declare-fun d!1067249 () Bool)

(assert (=> d!1067249 e!2246607))

(assert (= d!1067249 b!3629330))

(declare-fun lambda!124227 () Int)

(declare-fun order!20921 () Int)

(declare-fun dynLambda!16572 (Int Int) Int)

(assert (=> b!3629330 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (dynLambda!16572 order!20921 lambda!124227))))

(assert (=> b!3629330 (< (dynLambda!16570 order!20919 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (dynLambda!16572 order!20921 lambda!124227))))

(assert (=> d!1067249 (= (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))) (list!14130 lt!1255271))))

(declare-fun lt!1255427 () Unit!55058)

(declare-fun ForallOf!677 (Int BalanceConc!22948) Unit!55058)

(assert (=> d!1067249 (= lt!1255427 (ForallOf!677 lambda!124227 lt!1255271))))

(assert (=> d!1067249 (= (lemmaSemiInverse!1453 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) lt!1255427)))

(declare-fun b_lambda!107393 () Bool)

(assert (=> (not b_lambda!107393) (not d!1067249)))

(declare-fun t!295006 () Bool)

(declare-fun tb!208397 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295006) tb!208397))

(declare-fun e!2246608 () Bool)

(declare-fun b!3629331 () Bool)

(declare-fun tp!1108113 () Bool)

(assert (=> b!3629331 (= e!2246608 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))) tp!1108113))))

(declare-fun result!253902 () Bool)

(assert (=> tb!208397 (= result!253902 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))) e!2246608))))

(assert (= tb!208397 b!3629331))

(declare-fun m!4130405 () Bool)

(assert (=> b!3629331 m!4130405))

(declare-fun m!4130407 () Bool)

(assert (=> tb!208397 m!4130407))

(assert (=> d!1067249 t!295006))

(declare-fun b_and!266159 () Bool)

(assert (= b_and!266127 (and (=> t!295006 result!253902) b_and!266159)))

(declare-fun tb!208399 () Bool)

(declare-fun t!295008 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295008) tb!208399))

(declare-fun result!253904 () Bool)

(assert (= result!253904 result!253902))

(assert (=> d!1067249 t!295008))

(declare-fun b_and!266161 () Bool)

(assert (= b_and!266129 (and (=> t!295008 result!253904) b_and!266161)))

(declare-fun t!295010 () Bool)

(declare-fun tb!208401 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295010) tb!208401))

(declare-fun result!253906 () Bool)

(assert (= result!253906 result!253902))

(assert (=> d!1067249 t!295010))

(declare-fun b_and!266163 () Bool)

(assert (= b_and!266131 (and (=> t!295010 result!253906) b_and!266163)))

(declare-fun t!295012 () Bool)

(declare-fun tb!208403 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295012) tb!208403))

(declare-fun result!253908 () Bool)

(assert (= result!253908 result!253902))

(assert (=> d!1067249 t!295012))

(declare-fun b_and!266165 () Bool)

(assert (= b_and!266133 (and (=> t!295012 result!253908) b_and!266165)))

(declare-fun b_lambda!107395 () Bool)

(assert (=> (not b_lambda!107395) (not d!1067249)))

(assert (=> d!1067249 t!294990))

(declare-fun b_and!266167 () Bool)

(assert (= b_and!266151 (and (=> t!294990 result!253884) b_and!266167)))

(assert (=> d!1067249 t!294992))

(declare-fun b_and!266169 () Bool)

(assert (= b_and!266153 (and (=> t!294992 result!253888) b_and!266169)))

(assert (=> d!1067249 t!294994))

(declare-fun b_and!266171 () Bool)

(assert (= b_and!266155 (and (=> t!294994 result!253890) b_and!266171)))

(assert (=> d!1067249 t!294996))

(declare-fun b_and!266173 () Bool)

(assert (= b_and!266157 (and (=> t!294996 result!253892) b_and!266173)))

(assert (=> d!1067249 m!4130399))

(declare-fun m!4130409 () Bool)

(assert (=> d!1067249 m!4130409))

(declare-fun m!4130411 () Bool)

(assert (=> d!1067249 m!4130411))

(declare-fun m!4130413 () Bool)

(assert (=> d!1067249 m!4130413))

(assert (=> d!1067249 m!4130399))

(assert (=> d!1067249 m!4130409))

(assert (=> d!1067249 m!4130009))

(assert (=> b!3628971 d!1067249))

(declare-fun d!1067251 () Bool)

(declare-fun fromListB!1957 (List!38368) BalanceConc!22948)

(assert (=> d!1067251 (= (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))) (fromListB!1957 (originalCharacters!6418 (_1!22190 lt!1255278))))))

(declare-fun bs!571506 () Bool)

(assert (= bs!571506 d!1067251))

(declare-fun m!4130415 () Bool)

(assert (=> bs!571506 m!4130415))

(assert (=> b!3628971 d!1067251))

(declare-fun d!1067253 () Bool)

(declare-fun res!1469643 () Bool)

(declare-fun e!2246611 () Bool)

(assert (=> d!1067253 (=> (not res!1469643) (not e!2246611))))

(assert (=> d!1067253 (= res!1469643 (not (isEmpty!22618 (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))))

(assert (=> d!1067253 (= (inv!51660 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)) e!2246611)))

(declare-fun b!3629336 () Bool)

(declare-fun res!1469644 () Bool)

(assert (=> b!3629336 (=> (not res!1469644) (not e!2246611))))

(assert (=> b!3629336 (= res!1469644 (= (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)) (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(declare-fun b!3629337 () Bool)

(assert (=> b!3629337 (= e!2246611 (= (size!29178 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)) (size!29181 (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))))

(assert (= (and d!1067253 res!1469643) b!3629336))

(assert (= (and b!3629336 res!1469644) b!3629337))

(declare-fun b_lambda!107397 () Bool)

(assert (=> (not b_lambda!107397) (not b!3629336)))

(declare-fun t!295014 () Bool)

(declare-fun tb!208405 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) t!295014) tb!208405))

(declare-fun tp!1108114 () Bool)

(declare-fun b!3629338 () Bool)

(declare-fun e!2246612 () Bool)

(assert (=> b!3629338 (= e!2246612 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) tp!1108114))))

(declare-fun result!253910 () Bool)

(assert (=> tb!208405 (= result!253910 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) e!2246612))))

(assert (= tb!208405 b!3629338))

(declare-fun m!4130417 () Bool)

(assert (=> b!3629338 m!4130417))

(declare-fun m!4130419 () Bool)

(assert (=> tb!208405 m!4130419))

(assert (=> b!3629336 t!295014))

(declare-fun b_and!266175 () Bool)

(assert (= b_and!266159 (and (=> t!295014 result!253910) b_and!266175)))

(declare-fun t!295016 () Bool)

(declare-fun tb!208407 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) t!295016) tb!208407))

(declare-fun result!253912 () Bool)

(assert (= result!253912 result!253910))

(assert (=> b!3629336 t!295016))

(declare-fun b_and!266177 () Bool)

(assert (= b_and!266161 (and (=> t!295016 result!253912) b_and!266177)))

(declare-fun tb!208409 () Bool)

(declare-fun t!295018 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) t!295018) tb!208409))

(declare-fun result!253914 () Bool)

(assert (= result!253914 result!253910))

(assert (=> b!3629336 t!295018))

(declare-fun b_and!266179 () Bool)

(assert (= b_and!266163 (and (=> t!295018 result!253914) b_and!266179)))

(declare-fun t!295020 () Bool)

(declare-fun tb!208411 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) t!295020) tb!208411))

(declare-fun result!253916 () Bool)

(assert (= result!253916 result!253910))

(assert (=> b!3629336 t!295020))

(declare-fun b_and!266181 () Bool)

(assert (= b_and!266165 (and (=> t!295020 result!253916) b_and!266181)))

(declare-fun m!4130421 () Bool)

(assert (=> d!1067253 m!4130421))

(declare-fun m!4130423 () Bool)

(assert (=> b!3629336 m!4130423))

(assert (=> b!3629336 m!4130423))

(declare-fun m!4130425 () Bool)

(assert (=> b!3629336 m!4130425))

(declare-fun m!4130427 () Bool)

(assert (=> b!3629337 m!4130427))

(assert (=> b!3628971 d!1067253))

(declare-fun d!1067255 () Bool)

(assert (=> d!1067255 (= (size!29178 (_1!22190 lt!1255278)) (size!29181 (originalCharacters!6418 (_1!22190 lt!1255278))))))

(declare-fun Unit!55063 () Unit!55058)

(assert (=> d!1067255 (= (lemmaCharactersSize!749 (_1!22190 lt!1255278)) Unit!55063)))

(declare-fun bs!571507 () Bool)

(assert (= bs!571507 d!1067255))

(declare-fun m!4130429 () Bool)

(assert (=> bs!571507 m!4130429))

(assert (=> b!3628971 d!1067255))

(declare-fun d!1067257 () Bool)

(assert (=> d!1067257 (= (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))

(declare-fun b_lambda!107399 () Bool)

(assert (=> (not b_lambda!107399) (not d!1067257)))

(assert (=> d!1067257 t!294990))

(declare-fun b_and!266183 () Bool)

(assert (= b_and!266167 (and (=> t!294990 result!253884) b_and!266183)))

(assert (=> d!1067257 t!294992))

(declare-fun b_and!266185 () Bool)

(assert (= b_and!266169 (and (=> t!294992 result!253888) b_and!266185)))

(assert (=> d!1067257 t!294994))

(declare-fun b_and!266187 () Bool)

(assert (= b_and!266171 (and (=> t!294994 result!253890) b_and!266187)))

(assert (=> d!1067257 t!294996))

(declare-fun b_and!266189 () Bool)

(assert (= b_and!266173 (and (=> t!294996 result!253892) b_and!266189)))

(assert (=> d!1067257 m!4130399))

(assert (=> b!3628971 d!1067257))

(declare-fun d!1067259 () Bool)

(declare-fun lt!1255428 () Bool)

(assert (=> d!1067259 (= lt!1255428 (select (content!5483 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))) lt!1255266))))

(declare-fun e!2246614 () Bool)

(assert (=> d!1067259 (= lt!1255428 e!2246614)))

(declare-fun res!1469645 () Bool)

(assert (=> d!1067259 (=> (not res!1469645) (not e!2246614))))

(assert (=> d!1067259 (= res!1469645 ((_ is Cons!38244) (usedCharacters!916 (regex!5704 anOtherTypeRule!33))))))

(assert (=> d!1067259 (= (contains!7472 (usedCharacters!916 (regex!5704 anOtherTypeRule!33)) lt!1255266) lt!1255428)))

(declare-fun b!3629339 () Bool)

(declare-fun e!2246613 () Bool)

(assert (=> b!3629339 (= e!2246614 e!2246613)))

(declare-fun res!1469646 () Bool)

(assert (=> b!3629339 (=> res!1469646 e!2246613)))

(assert (=> b!3629339 (= res!1469646 (= (h!43664 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))) lt!1255266))))

(declare-fun b!3629340 () Bool)

(assert (=> b!3629340 (= e!2246613 (contains!7472 (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))) lt!1255266))))

(assert (= (and d!1067259 res!1469645) b!3629339))

(assert (= (and b!3629339 (not res!1469646)) b!3629340))

(assert (=> d!1067259 m!4130037))

(declare-fun m!4130431 () Bool)

(assert (=> d!1067259 m!4130431))

(declare-fun m!4130433 () Bool)

(assert (=> d!1067259 m!4130433))

(declare-fun m!4130435 () Bool)

(assert (=> b!3629340 m!4130435))

(assert (=> b!3628970 d!1067259))

(declare-fun b!3629341 () Bool)

(declare-fun e!2246618 () List!38368)

(declare-fun call!262502 () List!38368)

(assert (=> b!3629341 (= e!2246618 call!262502)))

(declare-fun c!627854 () Bool)

(declare-fun c!627855 () Bool)

(declare-fun call!262501 () List!38368)

(declare-fun bm!262495 () Bool)

(assert (=> bm!262495 (= call!262501 (usedCharacters!916 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))))))

(declare-fun bm!262496 () Bool)

(declare-fun call!262503 () List!38368)

(assert (=> bm!262496 (= call!262503 (usedCharacters!916 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))))))

(declare-fun d!1067261 () Bool)

(declare-fun c!627856 () Bool)

(assert (=> d!1067261 (= c!627856 (or ((_ is EmptyExpr!10463) (regex!5704 anOtherTypeRule!33)) ((_ is EmptyLang!10463) (regex!5704 anOtherTypeRule!33))))))

(declare-fun e!2246615 () List!38368)

(assert (=> d!1067261 (= (usedCharacters!916 (regex!5704 anOtherTypeRule!33)) e!2246615)))

(declare-fun b!3629342 () Bool)

(declare-fun e!2246616 () List!38368)

(assert (=> b!3629342 (= e!2246615 e!2246616)))

(declare-fun c!627853 () Bool)

(assert (=> b!3629342 (= c!627853 ((_ is ElementMatch!10463) (regex!5704 anOtherTypeRule!33)))))

(declare-fun b!3629343 () Bool)

(declare-fun e!2246617 () List!38368)

(assert (=> b!3629343 (= e!2246617 call!262501)))

(declare-fun bm!262497 () Bool)

(declare-fun call!262500 () List!38368)

(assert (=> bm!262497 (= call!262500 call!262501)))

(declare-fun b!3629344 () Bool)

(assert (=> b!3629344 (= e!2246616 (Cons!38244 (c!627780 (regex!5704 anOtherTypeRule!33)) Nil!38244))))

(declare-fun b!3629345 () Bool)

(assert (=> b!3629345 (= e!2246615 Nil!38244)))

(declare-fun b!3629346 () Bool)

(assert (=> b!3629346 (= c!627854 ((_ is Star!10463) (regex!5704 anOtherTypeRule!33)))))

(assert (=> b!3629346 (= e!2246616 e!2246617)))

(declare-fun bm!262498 () Bool)

(assert (=> bm!262498 (= call!262502 (++!9520 (ite c!627855 call!262500 call!262503) (ite c!627855 call!262503 call!262500)))))

(declare-fun b!3629347 () Bool)

(assert (=> b!3629347 (= e!2246618 call!262502)))

(declare-fun b!3629348 () Bool)

(assert (=> b!3629348 (= e!2246617 e!2246618)))

(assert (=> b!3629348 (= c!627855 ((_ is Union!10463) (regex!5704 anOtherTypeRule!33)))))

(assert (= (and d!1067261 c!627856) b!3629345))

(assert (= (and d!1067261 (not c!627856)) b!3629342))

(assert (= (and b!3629342 c!627853) b!3629344))

(assert (= (and b!3629342 (not c!627853)) b!3629346))

(assert (= (and b!3629346 c!627854) b!3629343))

(assert (= (and b!3629346 (not c!627854)) b!3629348))

(assert (= (and b!3629348 c!627855) b!3629347))

(assert (= (and b!3629348 (not c!627855)) b!3629341))

(assert (= (or b!3629347 b!3629341) bm!262497))

(assert (= (or b!3629347 b!3629341) bm!262496))

(assert (= (or b!3629347 b!3629341) bm!262498))

(assert (= (or b!3629343 bm!262497) bm!262495))

(declare-fun m!4130437 () Bool)

(assert (=> bm!262495 m!4130437))

(declare-fun m!4130439 () Bool)

(assert (=> bm!262496 m!4130439))

(declare-fun m!4130441 () Bool)

(assert (=> bm!262498 m!4130441))

(assert (=> b!3628970 d!1067261))

(declare-fun d!1067263 () Bool)

(declare-fun e!2246637 () Bool)

(assert (=> d!1067263 e!2246637))

(declare-fun res!1469657 () Bool)

(assert (=> d!1067263 (=> res!1469657 e!2246637)))

(declare-fun lt!1255436 () Option!8036)

(declare-fun isEmpty!22623 (Option!8036) Bool)

(assert (=> d!1067263 (= res!1469657 (isEmpty!22623 lt!1255436))))

(declare-fun e!2246638 () Option!8036)

(assert (=> d!1067263 (= lt!1255436 e!2246638)))

(declare-fun c!627861 () Bool)

(assert (=> d!1067263 (= c!627861 (and ((_ is Cons!38245) rules!3307) (= (tag!6432 (h!43665 rules!3307)) (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> d!1067263 (rulesInvariant!4690 thiss!23823 rules!3307)))

(assert (=> d!1067263 (= (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))) lt!1255436)))

(declare-fun b!3629372 () Bool)

(declare-fun e!2246635 () Bool)

(assert (=> b!3629372 (= e!2246637 e!2246635)))

(declare-fun res!1469658 () Bool)

(assert (=> b!3629372 (=> (not res!1469658) (not e!2246635))))

(assert (=> b!3629372 (= res!1469658 (contains!7471 rules!3307 (get!12498 lt!1255436)))))

(declare-fun b!3629373 () Bool)

(assert (=> b!3629373 (= e!2246635 (= (tag!6432 (get!12498 lt!1255436)) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3629374 () Bool)

(declare-fun lt!1255437 () Unit!55058)

(declare-fun lt!1255438 () Unit!55058)

(assert (=> b!3629374 (= lt!1255437 lt!1255438)))

(assert (=> b!3629374 (rulesInvariant!4690 thiss!23823 (t!294964 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!551 (LexerInterface!5293 Rule!11208 List!38369) Unit!55058)

(assert (=> b!3629374 (= lt!1255438 (lemmaInvariantOnRulesThenOnTail!551 thiss!23823 (h!43665 rules!3307) (t!294964 rules!3307)))))

(declare-fun e!2246636 () Option!8036)

(assert (=> b!3629374 (= e!2246636 (getRuleFromTag!1308 thiss!23823 (t!294964 rules!3307) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3629375 () Bool)

(assert (=> b!3629375 (= e!2246636 None!8035)))

(declare-fun b!3629376 () Bool)

(assert (=> b!3629376 (= e!2246638 e!2246636)))

(declare-fun c!627862 () Bool)

(assert (=> b!3629376 (= c!627862 (and ((_ is Cons!38245) rules!3307) (not (= (tag!6432 (h!43665 rules!3307)) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))

(declare-fun b!3629377 () Bool)

(assert (=> b!3629377 (= e!2246638 (Some!8035 (h!43665 rules!3307)))))

(assert (= (and d!1067263 c!627861) b!3629377))

(assert (= (and d!1067263 (not c!627861)) b!3629376))

(assert (= (and b!3629376 c!627862) b!3629374))

(assert (= (and b!3629376 (not c!627862)) b!3629375))

(assert (= (and d!1067263 (not res!1469657)) b!3629372))

(assert (= (and b!3629372 res!1469658) b!3629373))

(declare-fun m!4130451 () Bool)

(assert (=> d!1067263 m!4130451))

(assert (=> d!1067263 m!4130045))

(declare-fun m!4130453 () Bool)

(assert (=> b!3629372 m!4130453))

(assert (=> b!3629372 m!4130453))

(declare-fun m!4130455 () Bool)

(assert (=> b!3629372 m!4130455))

(assert (=> b!3629373 m!4130453))

(declare-fun m!4130457 () Bool)

(assert (=> b!3629374 m!4130457))

(declare-fun m!4130459 () Bool)

(assert (=> b!3629374 m!4130459))

(declare-fun m!4130461 () Bool)

(assert (=> b!3629374 m!4130461))

(assert (=> b!3628980 d!1067263))

(declare-fun d!1067267 () Bool)

(assert (=> d!1067267 (= (isDefined!6269 lt!1255275) (not (isEmpty!22623 lt!1255275)))))

(declare-fun bs!571508 () Bool)

(assert (= bs!571508 d!1067267))

(declare-fun m!4130463 () Bool)

(assert (=> bs!571508 m!4130463))

(assert (=> b!3628980 d!1067267))

(declare-fun b!3629392 () Bool)

(declare-fun e!2246649 () Bool)

(assert (=> b!3629392 (= e!2246649 (>= (size!29181 lt!1255273) (size!29181 lt!1255280)))))

(declare-fun d!1067269 () Bool)

(assert (=> d!1067269 e!2246649))

(declare-fun res!1469672 () Bool)

(assert (=> d!1067269 (=> res!1469672 e!2246649)))

(declare-fun lt!1255444 () Bool)

(assert (=> d!1067269 (= res!1469672 (not lt!1255444))))

(declare-fun e!2246648 () Bool)

(assert (=> d!1067269 (= lt!1255444 e!2246648)))

(declare-fun res!1469669 () Bool)

(assert (=> d!1067269 (=> res!1469669 e!2246648)))

(assert (=> d!1067269 (= res!1469669 ((_ is Nil!38244) lt!1255280))))

(assert (=> d!1067269 (= (isPrefix!3067 lt!1255280 lt!1255273) lt!1255444)))

(declare-fun b!3629391 () Bool)

(declare-fun e!2246647 () Bool)

(assert (=> b!3629391 (= e!2246647 (isPrefix!3067 (tail!5619 lt!1255280) (tail!5619 lt!1255273)))))

(declare-fun b!3629390 () Bool)

(declare-fun res!1469671 () Bool)

(assert (=> b!3629390 (=> (not res!1469671) (not e!2246647))))

(assert (=> b!3629390 (= res!1469671 (= (head!7682 lt!1255280) (head!7682 lt!1255273)))))

(declare-fun b!3629389 () Bool)

(assert (=> b!3629389 (= e!2246648 e!2246647)))

(declare-fun res!1469670 () Bool)

(assert (=> b!3629389 (=> (not res!1469670) (not e!2246647))))

(assert (=> b!3629389 (= res!1469670 (not ((_ is Nil!38244) lt!1255273)))))

(assert (= (and d!1067269 (not res!1469669)) b!3629389))

(assert (= (and b!3629389 res!1469670) b!3629390))

(assert (= (and b!3629390 res!1469671) b!3629391))

(assert (= (and d!1067269 (not res!1469672)) b!3629392))

(declare-fun m!4130481 () Bool)

(assert (=> b!3629392 m!4130481))

(assert (=> b!3629392 m!4130233))

(assert (=> b!3629391 m!4130275))

(declare-fun m!4130483 () Bool)

(assert (=> b!3629391 m!4130483))

(assert (=> b!3629391 m!4130275))

(assert (=> b!3629391 m!4130483))

(declare-fun m!4130485 () Bool)

(assert (=> b!3629391 m!4130485))

(assert (=> b!3629390 m!4130285))

(declare-fun m!4130487 () Bool)

(assert (=> b!3629390 m!4130487))

(assert (=> b!3628980 d!1067269))

(declare-fun b!3629541 () Bool)

(declare-fun e!2246735 () Unit!55058)

(declare-fun Unit!55064 () Unit!55058)

(assert (=> b!3629541 (= e!2246735 Unit!55064)))

(declare-fun d!1067275 () Bool)

(assert (=> d!1067275 (isDefined!6268 (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395)))))

(declare-fun lt!1255503 () Unit!55058)

(assert (=> d!1067275 (= lt!1255503 e!2246735)))

(declare-fun c!627883 () Bool)

(assert (=> d!1067275 (= c!627883 (isEmpty!22622 (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395))))))

(declare-fun lt!1255505 () Unit!55058)

(declare-fun lt!1255498 () Unit!55058)

(assert (=> d!1067275 (= lt!1255505 lt!1255498)))

(declare-fun e!2246734 () Bool)

(assert (=> d!1067275 e!2246734))

(declare-fun res!1469730 () Bool)

(assert (=> d!1067275 (=> (not res!1469730) (not e!2246734))))

(declare-fun lt!1255511 () Token!10774)

(assert (=> d!1067275 (= res!1469730 (isDefined!6269 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))

(assert (=> d!1067275 (= lt!1255498 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1308 thiss!23823 rules!3307 lt!1255280 lt!1255511))))

(declare-fun lt!1255506 () Unit!55058)

(declare-fun lt!1255509 () Unit!55058)

(assert (=> d!1067275 (= lt!1255506 lt!1255509)))

(declare-fun lt!1255496 () List!38368)

(assert (=> d!1067275 (isPrefix!3067 lt!1255496 (++!9520 lt!1255280 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!472 (List!38368 List!38368 List!38368) Unit!55058)

(assert (=> d!1067275 (= lt!1255509 (lemmaPrefixStaysPrefixWhenAddingToSuffix!472 lt!1255496 lt!1255280 suffix!1395))))

(assert (=> d!1067275 (= lt!1255496 (list!14130 (charsOf!3718 lt!1255511)))))

(declare-fun lt!1255508 () Unit!55058)

(declare-fun lt!1255510 () Unit!55058)

(assert (=> d!1067275 (= lt!1255508 lt!1255510)))

(declare-fun lt!1255499 () List!38368)

(declare-fun lt!1255504 () List!38368)

(assert (=> d!1067275 (isPrefix!3067 lt!1255499 (++!9520 lt!1255499 lt!1255504))))

(assert (=> d!1067275 (= lt!1255510 (lemmaConcatTwoListThenFirstIsPrefix!1986 lt!1255499 lt!1255504))))

(assert (=> d!1067275 (= lt!1255504 (_2!22190 (get!12499 (maxPrefix!2827 thiss!23823 rules!3307 lt!1255280))))))

(assert (=> d!1067275 (= lt!1255499 (list!14130 (charsOf!3718 lt!1255511)))))

(declare-datatypes ((List!38372 0))(
  ( (Nil!38248) (Cons!38248 (h!43668 Token!10774) (t!295087 List!38372)) )
))
(declare-fun head!7684 (List!38372) Token!10774)

(declare-datatypes ((IArray!23343 0))(
  ( (IArray!23344 (innerList!11729 List!38372)) )
))
(declare-datatypes ((Conc!11669 0))(
  ( (Node!11669 (left!29859 Conc!11669) (right!30189 Conc!11669) (csize!23568 Int) (cheight!11880 Int)) (Leaf!18132 (xs!14871 IArray!23343) (csize!23569 Int)) (Empty!11669) )
))
(declare-datatypes ((BalanceConc!22952 0))(
  ( (BalanceConc!22953 (c!627893 Conc!11669)) )
))
(declare-fun list!14134 (BalanceConc!22952) List!38372)

(declare-datatypes ((tuple2!38116 0))(
  ( (tuple2!38117 (_1!22192 BalanceConc!22952) (_2!22192 BalanceConc!22948)) )
))
(declare-fun lex!2504 (LexerInterface!5293 List!38369 BalanceConc!22948) tuple2!38116)

(assert (=> d!1067275 (= lt!1255511 (head!7684 (list!14134 (_1!22192 (lex!2504 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280))))))))

(assert (=> d!1067275 (not (isEmpty!22619 rules!3307))))

(assert (=> d!1067275 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!971 thiss!23823 rules!3307 lt!1255280 suffix!1395) lt!1255503)))

(declare-fun b!3629538 () Bool)

(declare-fun res!1469731 () Bool)

(assert (=> b!3629538 (=> (not res!1469731) (not e!2246734))))

(assert (=> b!3629538 (= res!1469731 (matchR!5032 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))) (list!14130 (charsOf!3718 lt!1255511))))))

(declare-fun b!3629539 () Bool)

(assert (=> b!3629539 (= e!2246734 (= (rule!8474 lt!1255511) (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))))))

(declare-fun b!3629540 () Bool)

(declare-fun Unit!55065 () Unit!55058)

(assert (=> b!3629540 (= e!2246735 Unit!55065)))

(declare-fun lt!1255497 () List!38368)

(assert (=> b!3629540 (= lt!1255497 (++!9520 lt!1255280 suffix!1395))))

(declare-fun lt!1255500 () Unit!55058)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!508 (LexerInterface!5293 Rule!11208 List!38369 List!38368) Unit!55058)

(assert (=> b!3629540 (= lt!1255500 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!508 thiss!23823 (rule!8474 lt!1255511) rules!3307 lt!1255497))))

(assert (=> b!3629540 (isEmpty!22622 (maxPrefixOneRule!1967 thiss!23823 (rule!8474 lt!1255511) lt!1255497))))

(declare-fun lt!1255507 () Unit!55058)

(assert (=> b!3629540 (= lt!1255507 lt!1255500)))

(declare-fun lt!1255501 () List!38368)

(assert (=> b!3629540 (= lt!1255501 (list!14130 (charsOf!3718 lt!1255511)))))

(declare-fun lt!1255502 () Unit!55058)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!496 (LexerInterface!5293 Rule!11208 List!38368 List!38368) Unit!55058)

(assert (=> b!3629540 (= lt!1255502 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!496 thiss!23823 (rule!8474 lt!1255511) lt!1255501 (++!9520 lt!1255280 suffix!1395)))))

(assert (=> b!3629540 (not (matchR!5032 (regex!5704 (rule!8474 lt!1255511)) lt!1255501))))

(declare-fun lt!1255495 () Unit!55058)

(assert (=> b!3629540 (= lt!1255495 lt!1255502)))

(assert (=> b!3629540 false))

(assert (= (and d!1067275 res!1469730) b!3629538))

(assert (= (and b!3629538 res!1469731) b!3629539))

(assert (= (and d!1067275 c!627883) b!3629540))

(assert (= (and d!1067275 (not c!627883)) b!3629541))

(declare-fun m!4130633 () Bool)

(assert (=> d!1067275 m!4130633))

(declare-fun m!4130635 () Bool)

(assert (=> d!1067275 m!4130635))

(declare-fun m!4130637 () Bool)

(assert (=> d!1067275 m!4130637))

(assert (=> d!1067275 m!4129955))

(assert (=> d!1067275 m!4129995))

(declare-fun m!4130639 () Bool)

(assert (=> d!1067275 m!4130639))

(declare-fun m!4130641 () Bool)

(assert (=> d!1067275 m!4130641))

(declare-fun m!4130643 () Bool)

(assert (=> d!1067275 m!4130643))

(declare-fun m!4130645 () Bool)

(assert (=> d!1067275 m!4130645))

(assert (=> d!1067275 m!4129955))

(declare-fun m!4130647 () Bool)

(assert (=> d!1067275 m!4130647))

(declare-fun m!4130649 () Bool)

(assert (=> d!1067275 m!4130649))

(assert (=> d!1067275 m!4129981))

(declare-fun m!4130651 () Bool)

(assert (=> d!1067275 m!4130651))

(assert (=> d!1067275 m!4130649))

(declare-fun m!4130653 () Bool)

(assert (=> d!1067275 m!4130653))

(declare-fun m!4130655 () Bool)

(assert (=> d!1067275 m!4130655))

(assert (=> d!1067275 m!4130641))

(declare-fun m!4130657 () Bool)

(assert (=> d!1067275 m!4130657))

(assert (=> d!1067275 m!4130635))

(assert (=> d!1067275 m!4129995))

(declare-fun m!4130659 () Bool)

(assert (=> d!1067275 m!4130659))

(assert (=> d!1067275 m!4129995))

(assert (=> d!1067275 m!4130659))

(declare-fun m!4130661 () Bool)

(assert (=> d!1067275 m!4130661))

(assert (=> d!1067275 m!4130643))

(declare-fun m!4130663 () Bool)

(assert (=> d!1067275 m!4130663))

(assert (=> d!1067275 m!4130659))

(declare-fun m!4130665 () Bool)

(assert (=> d!1067275 m!4130665))

(assert (=> d!1067275 m!4130651))

(declare-fun m!4130667 () Bool)

(assert (=> d!1067275 m!4130667))

(assert (=> b!3629538 m!4130651))

(declare-fun m!4130669 () Bool)

(assert (=> b!3629538 m!4130669))

(assert (=> b!3629538 m!4130657))

(declare-fun m!4130671 () Bool)

(assert (=> b!3629538 m!4130671))

(assert (=> b!3629538 m!4130641))

(assert (=> b!3629538 m!4130651))

(assert (=> b!3629538 m!4130641))

(assert (=> b!3629538 m!4130657))

(assert (=> b!3629539 m!4130651))

(assert (=> b!3629539 m!4130651))

(assert (=> b!3629539 m!4130669))

(assert (=> b!3629540 m!4129995))

(declare-fun m!4130673 () Bool)

(assert (=> b!3629540 m!4130673))

(declare-fun m!4130675 () Bool)

(assert (=> b!3629540 m!4130675))

(declare-fun m!4130677 () Bool)

(assert (=> b!3629540 m!4130677))

(assert (=> b!3629540 m!4130641))

(assert (=> b!3629540 m!4129995))

(declare-fun m!4130679 () Bool)

(assert (=> b!3629540 m!4130679))

(assert (=> b!3629540 m!4130677))

(declare-fun m!4130681 () Bool)

(assert (=> b!3629540 m!4130681))

(assert (=> b!3629540 m!4130641))

(assert (=> b!3629540 m!4130657))

(assert (=> b!3628980 d!1067275))

(declare-fun d!1067335 () Bool)

(declare-fun lt!1255512 () BalanceConc!22948)

(assert (=> d!1067335 (= (list!14130 lt!1255512) (originalCharacters!6418 (_1!22190 lt!1255278)))))

(assert (=> d!1067335 (= lt!1255512 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))))

(assert (=> d!1067335 (= (charsOf!3718 (_1!22190 lt!1255278)) lt!1255512)))

(declare-fun b_lambda!107419 () Bool)

(assert (=> (not b_lambda!107419) (not d!1067335)))

(declare-fun t!295066 () Bool)

(declare-fun tb!208457 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295066) tb!208457))

(declare-fun b!3629542 () Bool)

(declare-fun e!2246736 () Bool)

(declare-fun tp!1108164 () Bool)

(assert (=> b!3629542 (= e!2246736 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))) tp!1108164))))

(declare-fun result!253968 () Bool)

(assert (=> tb!208457 (= result!253968 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))) e!2246736))))

(assert (= tb!208457 b!3629542))

(declare-fun m!4130683 () Bool)

(assert (=> b!3629542 m!4130683))

(declare-fun m!4130685 () Bool)

(assert (=> tb!208457 m!4130685))

(assert (=> d!1067335 t!295066))

(declare-fun b_and!266251 () Bool)

(assert (= b_and!266175 (and (=> t!295066 result!253968) b_and!266251)))

(declare-fun t!295068 () Bool)

(declare-fun tb!208459 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295068) tb!208459))

(declare-fun result!253970 () Bool)

(assert (= result!253970 result!253968))

(assert (=> d!1067335 t!295068))

(declare-fun b_and!266253 () Bool)

(assert (= b_and!266177 (and (=> t!295068 result!253970) b_and!266253)))

(declare-fun t!295070 () Bool)

(declare-fun tb!208461 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295070) tb!208461))

(declare-fun result!253972 () Bool)

(assert (= result!253972 result!253968))

(assert (=> d!1067335 t!295070))

(declare-fun b_and!266255 () Bool)

(assert (= b_and!266179 (and (=> t!295070 result!253972) b_and!266255)))

(declare-fun t!295072 () Bool)

(declare-fun tb!208463 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295072) tb!208463))

(declare-fun result!253974 () Bool)

(assert (= result!253974 result!253968))

(assert (=> d!1067335 t!295072))

(declare-fun b_and!266257 () Bool)

(assert (= b_and!266181 (and (=> t!295072 result!253974) b_and!266257)))

(declare-fun m!4130687 () Bool)

(assert (=> d!1067335 m!4130687))

(declare-fun m!4130689 () Bool)

(assert (=> d!1067335 m!4130689))

(assert (=> b!3628980 d!1067335))

(declare-fun d!1067337 () Bool)

(declare-fun e!2246737 () Bool)

(assert (=> d!1067337 e!2246737))

(declare-fun res!1469737 () Bool)

(assert (=> d!1067337 (=> res!1469737 e!2246737)))

(declare-fun lt!1255514 () Option!8037)

(assert (=> d!1067337 (= res!1469737 (isEmpty!22622 lt!1255514))))

(declare-fun e!2246739 () Option!8037)

(assert (=> d!1067337 (= lt!1255514 e!2246739)))

(declare-fun c!627884 () Bool)

(assert (=> d!1067337 (= c!627884 (and ((_ is Cons!38245) rules!3307) ((_ is Nil!38245) (t!294964 rules!3307))))))

(declare-fun lt!1255517 () Unit!55058)

(declare-fun lt!1255516 () Unit!55058)

(assert (=> d!1067337 (= lt!1255517 lt!1255516)))

(assert (=> d!1067337 (isPrefix!3067 lt!1255273 lt!1255273)))

(assert (=> d!1067337 (= lt!1255516 (lemmaIsPrefixRefl!1942 lt!1255273 lt!1255273))))

(assert (=> d!1067337 (rulesValidInductive!2007 thiss!23823 rules!3307)))

(assert (=> d!1067337 (= (maxPrefix!2827 thiss!23823 rules!3307 lt!1255273) lt!1255514)))

(declare-fun b!3629543 () Bool)

(declare-fun res!1469734 () Bool)

(declare-fun e!2246738 () Bool)

(assert (=> b!3629543 (=> (not res!1469734) (not e!2246738))))

(assert (=> b!3629543 (= res!1469734 (< (size!29181 (_2!22190 (get!12499 lt!1255514))) (size!29181 lt!1255273)))))

(declare-fun call!262511 () Option!8037)

(declare-fun bm!262506 () Bool)

(assert (=> bm!262506 (= call!262511 (maxPrefixOneRule!1967 thiss!23823 (h!43665 rules!3307) lt!1255273))))

(declare-fun b!3629544 () Bool)

(declare-fun res!1469733 () Bool)

(assert (=> b!3629544 (=> (not res!1469733) (not e!2246738))))

(assert (=> b!3629544 (= res!1469733 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))) (_2!22190 (get!12499 lt!1255514))) lt!1255273))))

(declare-fun b!3629545 () Bool)

(declare-fun res!1469738 () Bool)

(assert (=> b!3629545 (=> (not res!1469738) (not e!2246738))))

(assert (=> b!3629545 (= res!1469738 (= (value!183024 (_1!22190 (get!12499 lt!1255514))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514)))))))))

(declare-fun b!3629546 () Bool)

(declare-fun res!1469736 () Bool)

(assert (=> b!3629546 (=> (not res!1469736) (not e!2246738))))

(assert (=> b!3629546 (= res!1469736 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514)))))))

(declare-fun b!3629547 () Bool)

(assert (=> b!3629547 (= e!2246738 (contains!7471 rules!3307 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))

(declare-fun b!3629548 () Bool)

(declare-fun res!1469735 () Bool)

(assert (=> b!3629548 (=> (not res!1469735) (not e!2246738))))

(assert (=> b!3629548 (= res!1469735 (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))))))

(declare-fun b!3629549 () Bool)

(assert (=> b!3629549 (= e!2246739 call!262511)))

(declare-fun b!3629550 () Bool)

(declare-fun lt!1255515 () Option!8037)

(declare-fun lt!1255513 () Option!8037)

(assert (=> b!3629550 (= e!2246739 (ite (and ((_ is None!8036) lt!1255515) ((_ is None!8036) lt!1255513)) None!8036 (ite ((_ is None!8036) lt!1255513) lt!1255515 (ite ((_ is None!8036) lt!1255515) lt!1255513 (ite (>= (size!29178 (_1!22190 (v!37824 lt!1255515))) (size!29178 (_1!22190 (v!37824 lt!1255513)))) lt!1255515 lt!1255513)))))))

(assert (=> b!3629550 (= lt!1255515 call!262511)))

(assert (=> b!3629550 (= lt!1255513 (maxPrefix!2827 thiss!23823 (t!294964 rules!3307) lt!1255273))))

(declare-fun b!3629551 () Bool)

(assert (=> b!3629551 (= e!2246737 e!2246738)))

(declare-fun res!1469732 () Bool)

(assert (=> b!3629551 (=> (not res!1469732) (not e!2246738))))

(assert (=> b!3629551 (= res!1469732 (isDefined!6268 lt!1255514))))

(assert (= (and d!1067337 c!627884) b!3629549))

(assert (= (and d!1067337 (not c!627884)) b!3629550))

(assert (= (or b!3629549 b!3629550) bm!262506))

(assert (= (and d!1067337 (not res!1469737)) b!3629551))

(assert (= (and b!3629551 res!1469732) b!3629546))

(assert (= (and b!3629546 res!1469736) b!3629543))

(assert (= (and b!3629543 res!1469734) b!3629544))

(assert (= (and b!3629544 res!1469733) b!3629545))

(assert (= (and b!3629545 res!1469738) b!3629548))

(assert (= (and b!3629548 res!1469735) b!3629547))

(declare-fun m!4130691 () Bool)

(assert (=> b!3629544 m!4130691))

(declare-fun m!4130693 () Bool)

(assert (=> b!3629544 m!4130693))

(assert (=> b!3629544 m!4130693))

(declare-fun m!4130695 () Bool)

(assert (=> b!3629544 m!4130695))

(assert (=> b!3629544 m!4130695))

(declare-fun m!4130697 () Bool)

(assert (=> b!3629544 m!4130697))

(assert (=> b!3629545 m!4130691))

(declare-fun m!4130699 () Bool)

(assert (=> b!3629545 m!4130699))

(assert (=> b!3629545 m!4130699))

(declare-fun m!4130701 () Bool)

(assert (=> b!3629545 m!4130701))

(declare-fun m!4130703 () Bool)

(assert (=> bm!262506 m!4130703))

(declare-fun m!4130705 () Bool)

(assert (=> b!3629550 m!4130705))

(declare-fun m!4130707 () Bool)

(assert (=> d!1067337 m!4130707))

(declare-fun m!4130709 () Bool)

(assert (=> d!1067337 m!4130709))

(declare-fun m!4130711 () Bool)

(assert (=> d!1067337 m!4130711))

(assert (=> d!1067337 m!4130227))

(assert (=> b!3629548 m!4130691))

(assert (=> b!3629548 m!4130693))

(assert (=> b!3629548 m!4130693))

(assert (=> b!3629548 m!4130695))

(assert (=> b!3629548 m!4130695))

(declare-fun m!4130713 () Bool)

(assert (=> b!3629548 m!4130713))

(assert (=> b!3629546 m!4130691))

(assert (=> b!3629546 m!4130693))

(assert (=> b!3629546 m!4130693))

(assert (=> b!3629546 m!4130695))

(assert (=> b!3629543 m!4130691))

(declare-fun m!4130715 () Bool)

(assert (=> b!3629543 m!4130715))

(assert (=> b!3629543 m!4130481))

(assert (=> b!3629547 m!4130691))

(declare-fun m!4130717 () Bool)

(assert (=> b!3629547 m!4130717))

(declare-fun m!4130719 () Bool)

(assert (=> b!3629551 m!4130719))

(assert (=> b!3628980 d!1067337))

(declare-fun d!1067339 () Bool)

(assert (=> d!1067339 (isPrefix!3067 lt!1255280 (++!9520 lt!1255280 suffix!1395))))

(declare-fun lt!1255520 () Unit!55058)

(declare-fun choose!21311 (List!38368 List!38368) Unit!55058)

(assert (=> d!1067339 (= lt!1255520 (choose!21311 lt!1255280 suffix!1395))))

(assert (=> d!1067339 (= (lemmaConcatTwoListThenFirstIsPrefix!1986 lt!1255280 suffix!1395) lt!1255520)))

(declare-fun bs!571516 () Bool)

(assert (= bs!571516 d!1067339))

(assert (=> bs!571516 m!4129995))

(assert (=> bs!571516 m!4129995))

(declare-fun m!4130721 () Bool)

(assert (=> bs!571516 m!4130721))

(declare-fun m!4130723 () Bool)

(assert (=> bs!571516 m!4130723))

(assert (=> b!3628980 d!1067339))

(declare-fun d!1067341 () Bool)

(assert (=> d!1067341 (isPrefix!3067 lt!1255264 (++!9520 lt!1255264 (_2!22190 lt!1255278)))))

(declare-fun lt!1255521 () Unit!55058)

(assert (=> d!1067341 (= lt!1255521 (choose!21311 lt!1255264 (_2!22190 lt!1255278)))))

(assert (=> d!1067341 (= (lemmaConcatTwoListThenFirstIsPrefix!1986 lt!1255264 (_2!22190 lt!1255278)) lt!1255521)))

(declare-fun bs!571517 () Bool)

(assert (= bs!571517 d!1067341))

(assert (=> bs!571517 m!4130005))

(assert (=> bs!571517 m!4130005))

(assert (=> bs!571517 m!4130007))

(declare-fun m!4130725 () Bool)

(assert (=> bs!571517 m!4130725))

(assert (=> b!3628980 d!1067341))

(declare-fun b!3629555 () Bool)

(declare-fun e!2246742 () Bool)

(assert (=> b!3629555 (= e!2246742 (>= (size!29181 (++!9520 lt!1255264 (_2!22190 lt!1255278))) (size!29181 lt!1255264)))))

(declare-fun d!1067343 () Bool)

(assert (=> d!1067343 e!2246742))

(declare-fun res!1469742 () Bool)

(assert (=> d!1067343 (=> res!1469742 e!2246742)))

(declare-fun lt!1255522 () Bool)

(assert (=> d!1067343 (= res!1469742 (not lt!1255522))))

(declare-fun e!2246741 () Bool)

(assert (=> d!1067343 (= lt!1255522 e!2246741)))

(declare-fun res!1469739 () Bool)

(assert (=> d!1067343 (=> res!1469739 e!2246741)))

(assert (=> d!1067343 (= res!1469739 ((_ is Nil!38244) lt!1255264))))

(assert (=> d!1067343 (= (isPrefix!3067 lt!1255264 (++!9520 lt!1255264 (_2!22190 lt!1255278))) lt!1255522)))

(declare-fun b!3629554 () Bool)

(declare-fun e!2246740 () Bool)

(assert (=> b!3629554 (= e!2246740 (isPrefix!3067 (tail!5619 lt!1255264) (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278)))))))

(declare-fun b!3629553 () Bool)

(declare-fun res!1469741 () Bool)

(assert (=> b!3629553 (=> (not res!1469741) (not e!2246740))))

(assert (=> b!3629553 (= res!1469741 (= (head!7682 lt!1255264) (head!7682 (++!9520 lt!1255264 (_2!22190 lt!1255278)))))))

(declare-fun b!3629552 () Bool)

(assert (=> b!3629552 (= e!2246741 e!2246740)))

(declare-fun res!1469740 () Bool)

(assert (=> b!3629552 (=> (not res!1469740) (not e!2246740))))

(assert (=> b!3629552 (= res!1469740 (not ((_ is Nil!38244) (++!9520 lt!1255264 (_2!22190 lt!1255278)))))))

(assert (= (and d!1067343 (not res!1469739)) b!3629552))

(assert (= (and b!3629552 res!1469740) b!3629553))

(assert (= (and b!3629553 res!1469741) b!3629554))

(assert (= (and d!1067343 (not res!1469742)) b!3629555))

(assert (=> b!3629555 m!4130005))

(declare-fun m!4130727 () Bool)

(assert (=> b!3629555 m!4130727))

(declare-fun m!4130729 () Bool)

(assert (=> b!3629555 m!4130729))

(assert (=> b!3629554 m!4130259))

(assert (=> b!3629554 m!4130005))

(declare-fun m!4130731 () Bool)

(assert (=> b!3629554 m!4130731))

(assert (=> b!3629554 m!4130259))

(assert (=> b!3629554 m!4130731))

(declare-fun m!4130733 () Bool)

(assert (=> b!3629554 m!4130733))

(assert (=> b!3629553 m!4130269))

(assert (=> b!3629553 m!4130005))

(declare-fun m!4130735 () Bool)

(assert (=> b!3629553 m!4130735))

(assert (=> b!3628980 d!1067343))

(declare-fun d!1067345 () Bool)

(assert (=> d!1067345 (= (list!14130 lt!1255271) (list!14133 (c!627781 lt!1255271)))))

(declare-fun bs!571518 () Bool)

(assert (= bs!571518 d!1067345))

(declare-fun m!4130737 () Bool)

(assert (=> bs!571518 m!4130737))

(assert (=> b!3628980 d!1067345))

(declare-fun b!3629566 () Bool)

(declare-fun res!1469747 () Bool)

(declare-fun e!2246748 () Bool)

(assert (=> b!3629566 (=> (not res!1469747) (not e!2246748))))

(declare-fun lt!1255525 () List!38368)

(assert (=> b!3629566 (= res!1469747 (= (size!29181 lt!1255525) (+ (size!29181 lt!1255264) (size!29181 (_2!22190 lt!1255278)))))))

(declare-fun b!3629564 () Bool)

(declare-fun e!2246747 () List!38368)

(assert (=> b!3629564 (= e!2246747 (_2!22190 lt!1255278))))

(declare-fun d!1067347 () Bool)

(assert (=> d!1067347 e!2246748))

(declare-fun res!1469748 () Bool)

(assert (=> d!1067347 (=> (not res!1469748) (not e!2246748))))

(assert (=> d!1067347 (= res!1469748 (= (content!5483 lt!1255525) ((_ map or) (content!5483 lt!1255264) (content!5483 (_2!22190 lt!1255278)))))))

(assert (=> d!1067347 (= lt!1255525 e!2246747)))

(declare-fun c!627887 () Bool)

(assert (=> d!1067347 (= c!627887 ((_ is Nil!38244) lt!1255264))))

(assert (=> d!1067347 (= (++!9520 lt!1255264 (_2!22190 lt!1255278)) lt!1255525)))

(declare-fun b!3629567 () Bool)

(assert (=> b!3629567 (= e!2246748 (or (not (= (_2!22190 lt!1255278) Nil!38244)) (= lt!1255525 lt!1255264)))))

(declare-fun b!3629565 () Bool)

(assert (=> b!3629565 (= e!2246747 (Cons!38244 (h!43664 lt!1255264) (++!9520 (t!294963 lt!1255264) (_2!22190 lt!1255278))))))

(assert (= (and d!1067347 c!627887) b!3629564))

(assert (= (and d!1067347 (not c!627887)) b!3629565))

(assert (= (and d!1067347 res!1469748) b!3629566))

(assert (= (and b!3629566 res!1469747) b!3629567))

(declare-fun m!4130739 () Bool)

(assert (=> b!3629566 m!4130739))

(assert (=> b!3629566 m!4130729))

(declare-fun m!4130741 () Bool)

(assert (=> b!3629566 m!4130741))

(declare-fun m!4130743 () Bool)

(assert (=> d!1067347 m!4130743))

(declare-fun m!4130745 () Bool)

(assert (=> d!1067347 m!4130745))

(declare-fun m!4130747 () Bool)

(assert (=> d!1067347 m!4130747))

(declare-fun m!4130749 () Bool)

(assert (=> b!3629565 m!4130749))

(assert (=> b!3628980 d!1067347))

(declare-fun b!3629571 () Bool)

(declare-fun e!2246751 () Bool)

(assert (=> b!3629571 (= e!2246751 (>= (size!29181 lt!1255273) (size!29181 lt!1255264)))))

(declare-fun d!1067349 () Bool)

(assert (=> d!1067349 e!2246751))

(declare-fun res!1469752 () Bool)

(assert (=> d!1067349 (=> res!1469752 e!2246751)))

(declare-fun lt!1255526 () Bool)

(assert (=> d!1067349 (= res!1469752 (not lt!1255526))))

(declare-fun e!2246750 () Bool)

(assert (=> d!1067349 (= lt!1255526 e!2246750)))

(declare-fun res!1469749 () Bool)

(assert (=> d!1067349 (=> res!1469749 e!2246750)))

(assert (=> d!1067349 (= res!1469749 ((_ is Nil!38244) lt!1255264))))

(assert (=> d!1067349 (= (isPrefix!3067 lt!1255264 lt!1255273) lt!1255526)))

(declare-fun b!3629570 () Bool)

(declare-fun e!2246749 () Bool)

(assert (=> b!3629570 (= e!2246749 (isPrefix!3067 (tail!5619 lt!1255264) (tail!5619 lt!1255273)))))

(declare-fun b!3629569 () Bool)

(declare-fun res!1469751 () Bool)

(assert (=> b!3629569 (=> (not res!1469751) (not e!2246749))))

(assert (=> b!3629569 (= res!1469751 (= (head!7682 lt!1255264) (head!7682 lt!1255273)))))

(declare-fun b!3629568 () Bool)

(assert (=> b!3629568 (= e!2246750 e!2246749)))

(declare-fun res!1469750 () Bool)

(assert (=> b!3629568 (=> (not res!1469750) (not e!2246749))))

(assert (=> b!3629568 (= res!1469750 (not ((_ is Nil!38244) lt!1255273)))))

(assert (= (and d!1067349 (not res!1469749)) b!3629568))

(assert (= (and b!3629568 res!1469750) b!3629569))

(assert (= (and b!3629569 res!1469751) b!3629570))

(assert (= (and d!1067349 (not res!1469752)) b!3629571))

(assert (=> b!3629571 m!4130481))

(assert (=> b!3629571 m!4130729))

(assert (=> b!3629570 m!4130259))

(assert (=> b!3629570 m!4130483))

(assert (=> b!3629570 m!4130259))

(assert (=> b!3629570 m!4130483))

(declare-fun m!4130751 () Bool)

(assert (=> b!3629570 m!4130751))

(assert (=> b!3629569 m!4130269))

(assert (=> b!3629569 m!4130487))

(assert (=> b!3628980 d!1067349))

(declare-fun d!1067351 () Bool)

(declare-fun e!2246754 () Bool)

(assert (=> d!1067351 e!2246754))

(declare-fun res!1469757 () Bool)

(assert (=> d!1067351 (=> (not res!1469757) (not e!2246754))))

(assert (=> d!1067351 (= res!1469757 (isDefined!6269 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))

(declare-fun lt!1255529 () Unit!55058)

(declare-fun choose!21312 (LexerInterface!5293 List!38369 List!38368 Token!10774) Unit!55058)

(assert (=> d!1067351 (= lt!1255529 (choose!21312 thiss!23823 rules!3307 lt!1255273 (_1!22190 lt!1255278)))))

(assert (=> d!1067351 (rulesInvariant!4690 thiss!23823 rules!3307)))

(assert (=> d!1067351 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1308 thiss!23823 rules!3307 lt!1255273 (_1!22190 lt!1255278)) lt!1255529)))

(declare-fun b!3629576 () Bool)

(declare-fun res!1469758 () Bool)

(assert (=> b!3629576 (=> (not res!1469758) (not e!2246754))))

(assert (=> b!3629576 (= res!1469758 (matchR!5032 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))) (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-fun b!3629577 () Bool)

(assert (=> b!3629577 (= e!2246754 (= (rule!8474 (_1!22190 lt!1255278)) (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))

(assert (= (and d!1067351 res!1469757) b!3629576))

(assert (= (and b!3629576 res!1469758) b!3629577))

(assert (=> d!1067351 m!4129999))

(assert (=> d!1067351 m!4129999))

(declare-fun m!4130753 () Bool)

(assert (=> d!1067351 m!4130753))

(declare-fun m!4130755 () Bool)

(assert (=> d!1067351 m!4130755))

(assert (=> d!1067351 m!4130045))

(assert (=> b!3629576 m!4129969))

(declare-fun m!4130757 () Bool)

(assert (=> b!3629576 m!4130757))

(assert (=> b!3629576 m!4129967))

(assert (=> b!3629576 m!4129999))

(declare-fun m!4130759 () Bool)

(assert (=> b!3629576 m!4130759))

(assert (=> b!3629576 m!4129999))

(assert (=> b!3629576 m!4129967))

(assert (=> b!3629576 m!4129969))

(assert (=> b!3629577 m!4129999))

(assert (=> b!3629577 m!4129999))

(assert (=> b!3629577 m!4130759))

(assert (=> b!3628980 d!1067351))

(declare-fun b!3629580 () Bool)

(declare-fun res!1469759 () Bool)

(declare-fun e!2246756 () Bool)

(assert (=> b!3629580 (=> (not res!1469759) (not e!2246756))))

(declare-fun lt!1255530 () List!38368)

(assert (=> b!3629580 (= res!1469759 (= (size!29181 lt!1255530) (+ (size!29181 lt!1255280) (size!29181 suffix!1395))))))

(declare-fun b!3629578 () Bool)

(declare-fun e!2246755 () List!38368)

(assert (=> b!3629578 (= e!2246755 suffix!1395)))

(declare-fun d!1067353 () Bool)

(assert (=> d!1067353 e!2246756))

(declare-fun res!1469760 () Bool)

(assert (=> d!1067353 (=> (not res!1469760) (not e!2246756))))

(assert (=> d!1067353 (= res!1469760 (= (content!5483 lt!1255530) ((_ map or) (content!5483 lt!1255280) (content!5483 suffix!1395))))))

(assert (=> d!1067353 (= lt!1255530 e!2246755)))

(declare-fun c!627888 () Bool)

(assert (=> d!1067353 (= c!627888 ((_ is Nil!38244) lt!1255280))))

(assert (=> d!1067353 (= (++!9520 lt!1255280 suffix!1395) lt!1255530)))

(declare-fun b!3629581 () Bool)

(assert (=> b!3629581 (= e!2246756 (or (not (= suffix!1395 Nil!38244)) (= lt!1255530 lt!1255280)))))

(declare-fun b!3629579 () Bool)

(assert (=> b!3629579 (= e!2246755 (Cons!38244 (h!43664 lt!1255280) (++!9520 (t!294963 lt!1255280) suffix!1395)))))

(assert (= (and d!1067353 c!627888) b!3629578))

(assert (= (and d!1067353 (not c!627888)) b!3629579))

(assert (= (and d!1067353 res!1469760) b!3629580))

(assert (= (and b!3629580 res!1469759) b!3629581))

(declare-fun m!4130761 () Bool)

(assert (=> b!3629580 m!4130761))

(assert (=> b!3629580 m!4130233))

(declare-fun m!4130763 () Bool)

(assert (=> b!3629580 m!4130763))

(declare-fun m!4130765 () Bool)

(assert (=> d!1067353 m!4130765))

(declare-fun m!4130767 () Bool)

(assert (=> d!1067353 m!4130767))

(declare-fun m!4130769 () Bool)

(assert (=> d!1067353 m!4130769))

(declare-fun m!4130771 () Bool)

(assert (=> b!3629579 m!4130771))

(assert (=> b!3628980 d!1067353))

(declare-fun d!1067355 () Bool)

(assert (=> d!1067355 (= (get!12499 lt!1255267) (v!37824 lt!1255267))))

(assert (=> b!3628980 d!1067355))

(declare-fun d!1067357 () Bool)

(declare-fun res!1469765 () Bool)

(declare-fun e!2246761 () Bool)

(assert (=> d!1067357 (=> res!1469765 e!2246761)))

(assert (=> d!1067357 (= res!1469765 (not ((_ is Cons!38245) rules!3307)))))

(assert (=> d!1067357 (= (sepAndNonSepRulesDisjointChars!1872 rules!3307 rules!3307) e!2246761)))

(declare-fun b!3629586 () Bool)

(declare-fun e!2246762 () Bool)

(assert (=> b!3629586 (= e!2246761 e!2246762)))

(declare-fun res!1469766 () Bool)

(assert (=> b!3629586 (=> (not res!1469766) (not e!2246762))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!844 (Rule!11208 List!38369) Bool)

(assert (=> b!3629586 (= res!1469766 (ruleDisjointCharsFromAllFromOtherType!844 (h!43665 rules!3307) rules!3307))))

(declare-fun b!3629587 () Bool)

(assert (=> b!3629587 (= e!2246762 (sepAndNonSepRulesDisjointChars!1872 rules!3307 (t!294964 rules!3307)))))

(assert (= (and d!1067357 (not res!1469765)) b!3629586))

(assert (= (and b!3629586 res!1469766) b!3629587))

(declare-fun m!4130773 () Bool)

(assert (=> b!3629586 m!4130773))

(declare-fun m!4130775 () Bool)

(assert (=> b!3629587 m!4130775))

(assert (=> b!3628959 d!1067357))

(declare-fun d!1067359 () Bool)

(declare-fun lt!1255531 () Bool)

(assert (=> d!1067359 (= lt!1255531 (select (content!5481 rules!3307) rule!403))))

(declare-fun e!2246763 () Bool)

(assert (=> d!1067359 (= lt!1255531 e!2246763)))

(declare-fun res!1469767 () Bool)

(assert (=> d!1067359 (=> (not res!1469767) (not e!2246763))))

(assert (=> d!1067359 (= res!1469767 ((_ is Cons!38245) rules!3307))))

(assert (=> d!1067359 (= (contains!7471 rules!3307 rule!403) lt!1255531)))

(declare-fun b!3629588 () Bool)

(declare-fun e!2246764 () Bool)

(assert (=> b!3629588 (= e!2246763 e!2246764)))

(declare-fun res!1469768 () Bool)

(assert (=> b!3629588 (=> res!1469768 e!2246764)))

(assert (=> b!3629588 (= res!1469768 (= (h!43665 rules!3307) rule!403))))

(declare-fun b!3629589 () Bool)

(assert (=> b!3629589 (= e!2246764 (contains!7471 (t!294964 rules!3307) rule!403))))

(assert (= (and d!1067359 res!1469767) b!3629588))

(assert (= (and b!3629588 (not res!1469768)) b!3629589))

(assert (=> d!1067359 m!4130249))

(declare-fun m!4130777 () Bool)

(assert (=> d!1067359 m!4130777))

(declare-fun m!4130779 () Bool)

(assert (=> b!3629589 m!4130779))

(assert (=> b!3628958 d!1067359))

(declare-fun d!1067361 () Bool)

(assert (=> d!1067361 (= (get!12499 lt!1255279) (v!37824 lt!1255279))))

(assert (=> b!3628969 d!1067361))

(declare-fun d!1067363 () Bool)

(assert (=> d!1067363 (= (inv!51656 (tag!6432 anOtherTypeRule!33)) (= (mod (str.len (value!182998 (tag!6432 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3628979 d!1067363))

(declare-fun d!1067365 () Bool)

(declare-fun res!1469769 () Bool)

(declare-fun e!2246765 () Bool)

(assert (=> d!1067365 (=> (not res!1469769) (not e!2246765))))

(assert (=> d!1067365 (= res!1469769 (semiInverseModEq!2420 (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 anOtherTypeRule!33))))))

(assert (=> d!1067365 (= (inv!51659 (transformation!5704 anOtherTypeRule!33)) e!2246765)))

(declare-fun b!3629590 () Bool)

(assert (=> b!3629590 (= e!2246765 (equivClasses!2319 (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 anOtherTypeRule!33))))))

(assert (= (and d!1067365 res!1469769) b!3629590))

(declare-fun m!4130781 () Bool)

(assert (=> d!1067365 m!4130781))

(declare-fun m!4130783 () Bool)

(assert (=> b!3629590 m!4130783))

(assert (=> b!3628979 d!1067365))

(declare-fun d!1067367 () Bool)

(assert (=> d!1067367 (= (inv!51656 (tag!6432 (rule!8474 token!511))) (= (mod (str.len (value!182998 (tag!6432 (rule!8474 token!511)))) 2) 0))))

(assert (=> b!3628957 d!1067367))

(declare-fun d!1067369 () Bool)

(declare-fun res!1469770 () Bool)

(declare-fun e!2246766 () Bool)

(assert (=> d!1067369 (=> (not res!1469770) (not e!2246766))))

(assert (=> d!1067369 (= res!1469770 (semiInverseModEq!2420 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 token!511)))))))

(assert (=> d!1067369 (= (inv!51659 (transformation!5704 (rule!8474 token!511))) e!2246766)))

(declare-fun b!3629591 () Bool)

(assert (=> b!3629591 (= e!2246766 (equivClasses!2319 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 token!511)))))))

(assert (= (and d!1067369 res!1469770) b!3629591))

(declare-fun m!4130785 () Bool)

(assert (=> d!1067369 m!4130785))

(declare-fun m!4130787 () Bool)

(assert (=> b!3629591 m!4130787))

(assert (=> b!3628957 d!1067369))

(declare-fun b!3629593 () Bool)

(declare-fun e!2246768 () Bool)

(assert (=> b!3629593 (= e!2246768 (matchR!5032 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3629594 () Bool)

(declare-fun e!2246772 () Bool)

(declare-fun e!2246767 () Bool)

(assert (=> b!3629594 (= e!2246772 e!2246767)))

(declare-fun res!1469772 () Bool)

(assert (=> b!3629594 (=> (not res!1469772) (not e!2246767))))

(declare-fun lt!1255532 () Bool)

(assert (=> b!3629594 (= res!1469772 (not lt!1255532))))

(declare-fun b!3629595 () Bool)

(declare-fun e!2246769 () Bool)

(declare-fun call!262512 () Bool)

(assert (=> b!3629595 (= e!2246769 (= lt!1255532 call!262512))))

(declare-fun b!3629596 () Bool)

(declare-fun e!2246773 () Bool)

(assert (=> b!3629596 (= e!2246769 e!2246773)))

(declare-fun c!627890 () Bool)

(assert (=> b!3629596 (= c!627890 ((_ is EmptyLang!10463) (regex!5704 lt!1255270)))))

(declare-fun b!3629597 () Bool)

(assert (=> b!3629597 (= e!2246773 (not lt!1255532))))

(declare-fun b!3629598 () Bool)

(declare-fun res!1469777 () Bool)

(assert (=> b!3629598 (=> res!1469777 e!2246772)))

(assert (=> b!3629598 (= res!1469777 (not ((_ is ElementMatch!10463) (regex!5704 lt!1255270))))))

(assert (=> b!3629598 (= e!2246773 e!2246772)))

(declare-fun b!3629599 () Bool)

(assert (=> b!3629599 (= e!2246768 (nullable!3620 (regex!5704 lt!1255270)))))

(declare-fun b!3629600 () Bool)

(declare-fun res!1469775 () Bool)

(declare-fun e!2246770 () Bool)

(assert (=> b!3629600 (=> res!1469775 e!2246770)))

(assert (=> b!3629600 (= res!1469775 (not (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3629601 () Bool)

(assert (=> b!3629601 (= e!2246770 (not (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (c!627780 (regex!5704 lt!1255270)))))))

(declare-fun bm!262507 () Bool)

(assert (=> bm!262507 (= call!262512 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-fun d!1067371 () Bool)

(assert (=> d!1067371 e!2246769))

(declare-fun c!627891 () Bool)

(assert (=> d!1067371 (= c!627891 ((_ is EmptyExpr!10463) (regex!5704 lt!1255270)))))

(assert (=> d!1067371 (= lt!1255532 e!2246768)))

(declare-fun c!627889 () Bool)

(assert (=> d!1067371 (= c!627889 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(assert (=> d!1067371 (validRegex!4782 (regex!5704 lt!1255270))))

(assert (=> d!1067371 (= (matchR!5032 (regex!5704 lt!1255270) (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) lt!1255532)))

(declare-fun b!3629592 () Bool)

(declare-fun res!1469773 () Bool)

(declare-fun e!2246771 () Bool)

(assert (=> b!3629592 (=> (not res!1469773) (not e!2246771))))

(assert (=> b!3629592 (= res!1469773 (not call!262512))))

(declare-fun b!3629602 () Bool)

(declare-fun res!1469776 () Bool)

(assert (=> b!3629602 (=> (not res!1469776) (not e!2246771))))

(assert (=> b!3629602 (= res!1469776 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3629603 () Bool)

(assert (=> b!3629603 (= e!2246771 (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (c!627780 (regex!5704 lt!1255270))))))

(declare-fun b!3629604 () Bool)

(assert (=> b!3629604 (= e!2246767 e!2246770)))

(declare-fun res!1469778 () Bool)

(assert (=> b!3629604 (=> res!1469778 e!2246770)))

(assert (=> b!3629604 (= res!1469778 call!262512)))

(declare-fun b!3629605 () Bool)

(declare-fun res!1469771 () Bool)

(assert (=> b!3629605 (=> res!1469771 e!2246772)))

(assert (=> b!3629605 (= res!1469771 e!2246771)))

(declare-fun res!1469774 () Bool)

(assert (=> b!3629605 (=> (not res!1469774) (not e!2246771))))

(assert (=> b!3629605 (= res!1469774 lt!1255532)))

(assert (= (and d!1067371 c!627889) b!3629599))

(assert (= (and d!1067371 (not c!627889)) b!3629593))

(assert (= (and d!1067371 c!627891) b!3629595))

(assert (= (and d!1067371 (not c!627891)) b!3629596))

(assert (= (and b!3629596 c!627890) b!3629597))

(assert (= (and b!3629596 (not c!627890)) b!3629598))

(assert (= (and b!3629598 (not res!1469777)) b!3629605))

(assert (= (and b!3629605 res!1469774) b!3629592))

(assert (= (and b!3629592 res!1469773) b!3629602))

(assert (= (and b!3629602 res!1469776) b!3629603))

(assert (= (and b!3629605 (not res!1469771)) b!3629594))

(assert (= (and b!3629594 res!1469772) b!3629604))

(assert (= (and b!3629604 (not res!1469778)) b!3629600))

(assert (= (and b!3629600 (not res!1469775)) b!3629601))

(assert (= (or b!3629595 b!3629592 b!3629604) bm!262507))

(assert (=> b!3629602 m!4129969))

(declare-fun m!4130789 () Bool)

(assert (=> b!3629602 m!4130789))

(assert (=> b!3629602 m!4130789))

(declare-fun m!4130791 () Bool)

(assert (=> b!3629602 m!4130791))

(assert (=> bm!262507 m!4129969))

(declare-fun m!4130793 () Bool)

(assert (=> bm!262507 m!4130793))

(declare-fun m!4130795 () Bool)

(assert (=> b!3629599 m!4130795))

(assert (=> d!1067371 m!4129969))

(assert (=> d!1067371 m!4130793))

(declare-fun m!4130797 () Bool)

(assert (=> d!1067371 m!4130797))

(assert (=> b!3629601 m!4129969))

(declare-fun m!4130799 () Bool)

(assert (=> b!3629601 m!4130799))

(assert (=> b!3629600 m!4129969))

(assert (=> b!3629600 m!4130789))

(assert (=> b!3629600 m!4130789))

(assert (=> b!3629600 m!4130791))

(assert (=> b!3629593 m!4129969))

(assert (=> b!3629593 m!4130799))

(assert (=> b!3629593 m!4130799))

(declare-fun m!4130801 () Bool)

(assert (=> b!3629593 m!4130801))

(assert (=> b!3629593 m!4129969))

(assert (=> b!3629593 m!4130789))

(assert (=> b!3629593 m!4130801))

(assert (=> b!3629593 m!4130789))

(declare-fun m!4130803 () Bool)

(assert (=> b!3629593 m!4130803))

(assert (=> b!3629603 m!4129969))

(assert (=> b!3629603 m!4130799))

(assert (=> b!3628956 d!1067371))

(declare-fun d!1067373 () Bool)

(assert (=> d!1067373 (= (list!14130 (charsOf!3718 (_1!22190 lt!1255278))) (list!14133 (c!627781 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-fun bs!571519 () Bool)

(assert (= bs!571519 d!1067373))

(declare-fun m!4130805 () Bool)

(assert (=> bs!571519 m!4130805))

(assert (=> b!3628956 d!1067373))

(assert (=> b!3628956 d!1067335))

(declare-fun d!1067375 () Bool)

(assert (=> d!1067375 (= (get!12498 lt!1255275) (v!37823 lt!1255275))))

(assert (=> b!3628956 d!1067375))

(declare-fun d!1067377 () Bool)

(assert (=> d!1067377 (= (isEmpty!22618 suffix!1395) ((_ is Nil!38244) suffix!1395))))

(assert (=> b!3628967 d!1067377))

(declare-fun d!1067379 () Bool)

(declare-fun res!1469779 () Bool)

(declare-fun e!2246774 () Bool)

(assert (=> d!1067379 (=> (not res!1469779) (not e!2246774))))

(assert (=> d!1067379 (= res!1469779 (not (isEmpty!22618 (originalCharacters!6418 token!511))))))

(assert (=> d!1067379 (= (inv!51660 token!511) e!2246774)))

(declare-fun b!3629606 () Bool)

(declare-fun res!1469780 () Bool)

(assert (=> b!3629606 (=> (not res!1469780) (not e!2246774))))

(assert (=> b!3629606 (= res!1469780 (= (originalCharacters!6418 token!511) (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))))

(declare-fun b!3629607 () Bool)

(assert (=> b!3629607 (= e!2246774 (= (size!29178 token!511) (size!29181 (originalCharacters!6418 token!511))))))

(assert (= (and d!1067379 res!1469779) b!3629606))

(assert (= (and b!3629606 res!1469780) b!3629607))

(declare-fun b_lambda!107421 () Bool)

(assert (=> (not b_lambda!107421) (not b!3629606)))

(assert (=> b!3629606 t!294974))

(declare-fun b_and!266259 () Bool)

(assert (= b_and!266251 (and (=> t!294974 result!253864) b_and!266259)))

(assert (=> b!3629606 t!294976))

(declare-fun b_and!266261 () Bool)

(assert (= b_and!266253 (and (=> t!294976 result!253868) b_and!266261)))

(assert (=> b!3629606 t!294978))

(declare-fun b_and!266263 () Bool)

(assert (= b_and!266255 (and (=> t!294978 result!253870) b_and!266263)))

(assert (=> b!3629606 t!294980))

(declare-fun b_and!266265 () Bool)

(assert (= b_and!266257 (and (=> t!294980 result!253872) b_and!266265)))

(declare-fun m!4130807 () Bool)

(assert (=> d!1067379 m!4130807))

(assert (=> b!3629606 m!4130247))

(assert (=> b!3629606 m!4130247))

(declare-fun m!4130809 () Bool)

(assert (=> b!3629606 m!4130809))

(declare-fun m!4130811 () Bool)

(assert (=> b!3629607 m!4130811))

(assert (=> start!338254 d!1067379))

(declare-fun b!3629612 () Bool)

(declare-fun e!2246777 () Bool)

(declare-fun tp!1108167 () Bool)

(assert (=> b!3629612 (= e!2246777 (and tp_is_empty!18009 tp!1108167))))

(assert (=> b!3628954 (= tp!1108096 e!2246777)))

(assert (= (and b!3628954 ((_ is Cons!38244) (originalCharacters!6418 token!511))) b!3629612))

(declare-fun b!3629626 () Bool)

(declare-fun e!2246780 () Bool)

(declare-fun tp!1108179 () Bool)

(declare-fun tp!1108180 () Bool)

(assert (=> b!3629626 (= e!2246780 (and tp!1108179 tp!1108180))))

(assert (=> b!3628974 (= tp!1108093 e!2246780)))

(declare-fun b!3629623 () Bool)

(assert (=> b!3629623 (= e!2246780 tp_is_empty!18009)))

(declare-fun b!3629624 () Bool)

(declare-fun tp!1108182 () Bool)

(declare-fun tp!1108181 () Bool)

(assert (=> b!3629624 (= e!2246780 (and tp!1108182 tp!1108181))))

(declare-fun b!3629625 () Bool)

(declare-fun tp!1108178 () Bool)

(assert (=> b!3629625 (= e!2246780 tp!1108178)))

(assert (= (and b!3628974 ((_ is ElementMatch!10463) (regex!5704 rule!403))) b!3629623))

(assert (= (and b!3628974 ((_ is Concat!16397) (regex!5704 rule!403))) b!3629624))

(assert (= (and b!3628974 ((_ is Star!10463) (regex!5704 rule!403))) b!3629625))

(assert (= (and b!3628974 ((_ is Union!10463) (regex!5704 rule!403))) b!3629626))

(declare-fun b!3629630 () Bool)

(declare-fun e!2246781 () Bool)

(declare-fun tp!1108184 () Bool)

(declare-fun tp!1108185 () Bool)

(assert (=> b!3629630 (= e!2246781 (and tp!1108184 tp!1108185))))

(assert (=> b!3628979 (= tp!1108097 e!2246781)))

(declare-fun b!3629627 () Bool)

(assert (=> b!3629627 (= e!2246781 tp_is_empty!18009)))

(declare-fun b!3629628 () Bool)

(declare-fun tp!1108187 () Bool)

(declare-fun tp!1108186 () Bool)

(assert (=> b!3629628 (= e!2246781 (and tp!1108187 tp!1108186))))

(declare-fun b!3629629 () Bool)

(declare-fun tp!1108183 () Bool)

(assert (=> b!3629629 (= e!2246781 tp!1108183)))

(assert (= (and b!3628979 ((_ is ElementMatch!10463) (regex!5704 anOtherTypeRule!33))) b!3629627))

(assert (= (and b!3628979 ((_ is Concat!16397) (regex!5704 anOtherTypeRule!33))) b!3629628))

(assert (= (and b!3628979 ((_ is Star!10463) (regex!5704 anOtherTypeRule!33))) b!3629629))

(assert (= (and b!3628979 ((_ is Union!10463) (regex!5704 anOtherTypeRule!33))) b!3629630))

(declare-fun b!3629634 () Bool)

(declare-fun e!2246782 () Bool)

(declare-fun tp!1108189 () Bool)

(declare-fun tp!1108190 () Bool)

(assert (=> b!3629634 (= e!2246782 (and tp!1108189 tp!1108190))))

(assert (=> b!3628957 (= tp!1108103 e!2246782)))

(declare-fun b!3629631 () Bool)

(assert (=> b!3629631 (= e!2246782 tp_is_empty!18009)))

(declare-fun b!3629632 () Bool)

(declare-fun tp!1108192 () Bool)

(declare-fun tp!1108191 () Bool)

(assert (=> b!3629632 (= e!2246782 (and tp!1108192 tp!1108191))))

(declare-fun b!3629633 () Bool)

(declare-fun tp!1108188 () Bool)

(assert (=> b!3629633 (= e!2246782 tp!1108188)))

(assert (= (and b!3628957 ((_ is ElementMatch!10463) (regex!5704 (rule!8474 token!511)))) b!3629631))

(assert (= (and b!3628957 ((_ is Concat!16397) (regex!5704 (rule!8474 token!511)))) b!3629632))

(assert (= (and b!3628957 ((_ is Star!10463) (regex!5704 (rule!8474 token!511)))) b!3629633))

(assert (= (and b!3628957 ((_ is Union!10463) (regex!5704 (rule!8474 token!511)))) b!3629634))

(declare-fun b!3629638 () Bool)

(declare-fun e!2246783 () Bool)

(declare-fun tp!1108194 () Bool)

(declare-fun tp!1108195 () Bool)

(assert (=> b!3629638 (= e!2246783 (and tp!1108194 tp!1108195))))

(assert (=> b!3628972 (= tp!1108094 e!2246783)))

(declare-fun b!3629635 () Bool)

(assert (=> b!3629635 (= e!2246783 tp_is_empty!18009)))

(declare-fun b!3629636 () Bool)

(declare-fun tp!1108197 () Bool)

(declare-fun tp!1108196 () Bool)

(assert (=> b!3629636 (= e!2246783 (and tp!1108197 tp!1108196))))

(declare-fun b!3629637 () Bool)

(declare-fun tp!1108193 () Bool)

(assert (=> b!3629637 (= e!2246783 tp!1108193)))

(assert (= (and b!3628972 ((_ is ElementMatch!10463) (regex!5704 (h!43665 rules!3307)))) b!3629635))

(assert (= (and b!3628972 ((_ is Concat!16397) (regex!5704 (h!43665 rules!3307)))) b!3629636))

(assert (= (and b!3628972 ((_ is Star!10463) (regex!5704 (h!43665 rules!3307)))) b!3629637))

(assert (= (and b!3628972 ((_ is Union!10463) (regex!5704 (h!43665 rules!3307)))) b!3629638))

(declare-fun b!3629639 () Bool)

(declare-fun e!2246784 () Bool)

(declare-fun tp!1108198 () Bool)

(assert (=> b!3629639 (= e!2246784 (and tp_is_empty!18009 tp!1108198))))

(assert (=> b!3628976 (= tp!1108105 e!2246784)))

(assert (= (and b!3628976 ((_ is Cons!38244) (t!294963 suffix!1395))) b!3629639))

(declare-fun b!3629650 () Bool)

(declare-fun b_free!94917 () Bool)

(declare-fun b_next!95621 () Bool)

(assert (=> b!3629650 (= b_free!94917 (not b_next!95621))))

(declare-fun tb!208465 () Bool)

(declare-fun t!295074 () Bool)

(assert (=> (and b!3629650 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295074) tb!208465))

(declare-fun result!253982 () Bool)

(assert (= result!253982 result!253884))

(assert (=> d!1067231 t!295074))

(declare-fun tb!208467 () Bool)

(declare-fun t!295076 () Bool)

(assert (=> (and b!3629650 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295076) tb!208467))

(declare-fun result!253984 () Bool)

(assert (= result!253984 result!253894))

(assert (=> d!1067231 t!295076))

(assert (=> d!1067249 t!295074))

(assert (=> d!1067257 t!295074))

(declare-fun b_and!266267 () Bool)

(declare-fun tp!1108210 () Bool)

(assert (=> b!3629650 (= tp!1108210 (and (=> t!295074 result!253982) (=> t!295076 result!253984) b_and!266267))))

(declare-fun b_free!94919 () Bool)

(declare-fun b_next!95623 () Bool)

(assert (=> b!3629650 (= b_free!94919 (not b_next!95623))))

(declare-fun tb!208469 () Bool)

(declare-fun t!295078 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295078) tb!208469))

(declare-fun result!253986 () Bool)

(assert (= result!253986 result!253968))

(assert (=> d!1067335 t!295078))

(declare-fun t!295080 () Bool)

(declare-fun tb!208471 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295080) tb!208471))

(declare-fun result!253988 () Bool)

(assert (= result!253988 result!253902))

(assert (=> d!1067249 t!295080))

(declare-fun tb!208473 () Bool)

(declare-fun t!295082 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) t!295082) tb!208473))

(declare-fun result!253990 () Bool)

(assert (= result!253990 result!253910))

(assert (=> b!3629336 t!295082))

(declare-fun tb!208475 () Bool)

(declare-fun t!295084 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) t!295084) tb!208475))

(declare-fun result!253992 () Bool)

(assert (= result!253992 result!253864))

(assert (=> d!1067201 t!295084))

(assert (=> b!3629606 t!295084))

(declare-fun b_and!266269 () Bool)

(declare-fun tp!1108207 () Bool)

(assert (=> b!3629650 (= tp!1108207 (and (=> t!295078 result!253986) (=> t!295082 result!253990) (=> t!295080 result!253988) (=> t!295084 result!253992) b_and!266269))))

(declare-fun e!2246796 () Bool)

(assert (=> b!3629650 (= e!2246796 (and tp!1108210 tp!1108207))))

(declare-fun tp!1108209 () Bool)

(declare-fun b!3629649 () Bool)

(declare-fun e!2246795 () Bool)

(assert (=> b!3629649 (= e!2246795 (and tp!1108209 (inv!51656 (tag!6432 (h!43665 (t!294964 rules!3307)))) (inv!51659 (transformation!5704 (h!43665 (t!294964 rules!3307)))) e!2246796))))

(declare-fun b!3629648 () Bool)

(declare-fun e!2246793 () Bool)

(declare-fun tp!1108208 () Bool)

(assert (=> b!3629648 (= e!2246793 (and e!2246795 tp!1108208))))

(assert (=> b!3628960 (= tp!1108104 e!2246793)))

(assert (= b!3629649 b!3629650))

(assert (= b!3629648 b!3629649))

(assert (= (and b!3628960 ((_ is Cons!38245) (t!294964 rules!3307))) b!3629648))

(declare-fun m!4130813 () Bool)

(assert (=> b!3629649 m!4130813))

(declare-fun m!4130815 () Bool)

(assert (=> b!3629649 m!4130815))

(declare-fun b_lambda!107423 () Bool)

(assert (= b_lambda!107385 (or (and b!3628953 b_free!94899 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) (and b!3628978 b_free!94907) (and b!3628968 b_free!94903 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) (and b!3629650 b_free!94919 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) (and b!3628966 b_free!94911 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) b_lambda!107423)))

(declare-fun b_lambda!107425 () Bool)

(assert (= b_lambda!107421 (or (and b!3628953 b_free!94899 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) (and b!3628978 b_free!94907) (and b!3628968 b_free!94903 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) (and b!3629650 b_free!94919 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) (and b!3628966 b_free!94911 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 token!511))))) b_lambda!107425)))

(check-sat (not b!3629554) (not b!3629636) (not b!3629136) (not b!3629632) (not b!3629194) (not b!3629144) (not d!1067353) (not b!3629338) (not b_next!95615) (not b_lambda!107423) (not b!3629634) (not d!1067359) (not d!1067211) (not b!3629555) (not bm!262475) (not b!3629149) (not b!3629571) (not d!1067253) (not d!1067229) b_and!266265 (not b!3629539) (not b!3629587) (not b!3629139) (not b!3629188) b_and!266259 (not b!3629138) (not b!3629391) (not bm!262496) (not d!1067201) (not b_lambda!107425) (not b!3629547) (not b!3629202) (not d!1067199) (not bm!262479) (not b!3629612) b_and!266267 (not b!3629565) (not b!3629551) (not tb!208405) (not b!3629625) (not b_next!95605) (not b!3629602) b_and!266263 (not b!3629336) (not b!3629579) b_and!266269 (not bm!262506) (not d!1067251) (not d!1067263) (not b_next!95601) (not d!1067259) (not b_lambda!107393) (not b!3629374) (not d!1067203) (not b!3629566) (not tb!208365) (not b!3629198) (not b!3629390) (not b!3629591) (not b!3629593) (not d!1067215) (not bm!262498) (not d!1067185) (not d!1067347) (not b!3629251) (not b!3629195) (not b!3629606) (not d!1067255) (not b!3629603) (not b!3629538) (not b!3629337) (not b_next!95603) (not b!3629331) (not b!3629066) (not b_lambda!107391) (not d!1067187) (not b_lambda!107419) (not d!1067341) (not b!3629196) b_and!266183 (not b_lambda!107395) (not d!1067337) (not d!1067351) (not tb!208397) (not b!3629143) (not b_next!95607) (not d!1067369) (not b!3629589) (not d!1067213) (not d!1067275) (not b!3629590) (not bm!262489) (not b!3629649) (not b!3629340) (not b!3629624) (not b!3629155) (not b!3629137) (not b!3629140) (not tb!208381) (not b!3629546) (not b_next!95621) b_and!266261 (not b!3629599) (not b_lambda!107399) b_and!266185 (not d!1067231) (not b!3629628) (not b_lambda!107397) (not b_lambda!107389) (not b!3629543) b_and!266189 (not b!3629607) (not bm!262507) (not d!1067219) (not b!3629542) (not b!3629548) (not tb!208389) (not b!3629208) (not b_next!95611) (not b!3629569) (not b_next!95623) (not d!1067345) (not b!3629211) (not b!3629639) (not b!3629372) (not b!3629209) (not b!3629577) (not b!3629648) (not d!1067371) (not b!3629586) (not b!3629373) (not b!3629197) (not bm!262478) (not b!3629065) (not d!1067339) (not b!3629600) (not d!1067207) (not d!1067227) (not b!3629219) (not b!3629629) (not b!3629544) (not b_next!95609) (not b!3629545) (not d!1067249) (not bm!262488) (not b!3629580) b_and!266187 (not b!3629540) (not d!1067335) (not b!3629601) (not d!1067373) (not tb!208457) (not d!1067247) (not b!3629570) (not d!1067365) (not b!3629064) (not b!3629553) (not b!3629141) (not b!3629210) (not b!3629633) (not b!3629550) (not b!3629254) (not d!1067379) (not b!3629226) (not b!3629630) (not bm!262495) (not b!3629576) (not b_next!95613) (not b!3629637) (not d!1067209) (not b!3629392) (not bm!262491) (not b!3629158) tp_is_empty!18009 (not b!3629212) (not b!3629638) (not b!3629626) (not d!1067267))
(check-sat (not b_next!95615) b_and!266265 b_and!266259 b_and!266267 (not b_next!95603) (not b_next!95621) b_and!266189 (not b_next!95609) b_and!266187 (not b_next!95613) (not b_next!95605) b_and!266263 b_and!266269 (not b_next!95601) b_and!266183 (not b_next!95607) b_and!266261 b_and!266185 (not b_next!95611) (not b_next!95623))
(get-model)

(declare-fun d!1067381 () Bool)

(declare-fun nullableFct!1039 (Regex!10463) Bool)

(assert (=> d!1067381 (= (nullable!3620 (regex!5704 rule!403)) (nullableFct!1039 (regex!5704 rule!403)))))

(declare-fun bs!571520 () Bool)

(assert (= bs!571520 d!1067381))

(declare-fun m!4130817 () Bool)

(assert (=> bs!571520 m!4130817))

(assert (=> b!3629208 d!1067381))

(declare-fun d!1067383 () Bool)

(assert (=> d!1067383 (= (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) ((_ is Nil!38244) (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(assert (=> bm!262507 d!1067383))

(declare-fun b!3629652 () Bool)

(declare-fun e!2246798 () Bool)

(assert (=> b!3629652 (= e!2246798 (matchR!5032 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))) (head!7682 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))))) (tail!5619 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))))))))

(declare-fun b!3629653 () Bool)

(declare-fun e!2246802 () Bool)

(declare-fun e!2246797 () Bool)

(assert (=> b!3629653 (= e!2246802 e!2246797)))

(declare-fun res!1469782 () Bool)

(assert (=> b!3629653 (=> (not res!1469782) (not e!2246797))))

(declare-fun lt!1255533 () Bool)

(assert (=> b!3629653 (= res!1469782 (not lt!1255533))))

(declare-fun b!3629654 () Bool)

(declare-fun e!2246799 () Bool)

(declare-fun call!262513 () Bool)

(assert (=> b!3629654 (= e!2246799 (= lt!1255533 call!262513))))

(declare-fun b!3629655 () Bool)

(declare-fun e!2246803 () Bool)

(assert (=> b!3629655 (= e!2246799 e!2246803)))

(declare-fun c!627895 () Bool)

(assert (=> b!3629655 (= c!627895 ((_ is EmptyLang!10463) (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))))))

(declare-fun b!3629656 () Bool)

(assert (=> b!3629656 (= e!2246803 (not lt!1255533))))

(declare-fun b!3629657 () Bool)

(declare-fun res!1469787 () Bool)

(assert (=> b!3629657 (=> res!1469787 e!2246802)))

(assert (=> b!3629657 (= res!1469787 (not ((_ is ElementMatch!10463) (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))))

(assert (=> b!3629657 (= e!2246803 e!2246802)))

(declare-fun b!3629658 () Bool)

(assert (=> b!3629658 (= e!2246798 (nullable!3620 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))))))

(declare-fun b!3629659 () Bool)

(declare-fun res!1469785 () Bool)

(declare-fun e!2246800 () Bool)

(assert (=> b!3629659 (=> res!1469785 e!2246800)))

(assert (=> b!3629659 (= res!1469785 (not (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))))))))

(declare-fun b!3629660 () Bool)

(assert (=> b!3629660 (= e!2246800 (not (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) (c!627780 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))))))))

(declare-fun bm!262508 () Bool)

(assert (=> bm!262508 (= call!262513 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))))))

(declare-fun d!1067385 () Bool)

(assert (=> d!1067385 e!2246799))

(declare-fun c!627896 () Bool)

(assert (=> d!1067385 (= c!627896 ((_ is EmptyExpr!10463) (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))))))

(assert (=> d!1067385 (= lt!1255533 e!2246798)))

(declare-fun c!627894 () Bool)

(assert (=> d!1067385 (= c!627894 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))))))

(assert (=> d!1067385 (validRegex!4782 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))

(assert (=> d!1067385 (= (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) lt!1255533)))

(declare-fun b!3629651 () Bool)

(declare-fun res!1469783 () Bool)

(declare-fun e!2246801 () Bool)

(assert (=> b!3629651 (=> (not res!1469783) (not e!2246801))))

(assert (=> b!3629651 (= res!1469783 (not call!262513))))

(declare-fun b!3629661 () Bool)

(declare-fun res!1469786 () Bool)

(assert (=> b!3629661 (=> (not res!1469786) (not e!2246801))))

(assert (=> b!3629661 (= res!1469786 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))))))))

(declare-fun b!3629662 () Bool)

(assert (=> b!3629662 (= e!2246801 (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) (c!627780 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))))

(declare-fun b!3629663 () Bool)

(assert (=> b!3629663 (= e!2246797 e!2246800)))

(declare-fun res!1469788 () Bool)

(assert (=> b!3629663 (=> res!1469788 e!2246800)))

(assert (=> b!3629663 (= res!1469788 call!262513)))

(declare-fun b!3629664 () Bool)

(declare-fun res!1469781 () Bool)

(assert (=> b!3629664 (=> res!1469781 e!2246802)))

(assert (=> b!3629664 (= res!1469781 e!2246801)))

(declare-fun res!1469784 () Bool)

(assert (=> b!3629664 (=> (not res!1469784) (not e!2246801))))

(assert (=> b!3629664 (= res!1469784 lt!1255533)))

(assert (= (and d!1067385 c!627894) b!3629658))

(assert (= (and d!1067385 (not c!627894)) b!3629652))

(assert (= (and d!1067385 c!627896) b!3629654))

(assert (= (and d!1067385 (not c!627896)) b!3629655))

(assert (= (and b!3629655 c!627895) b!3629656))

(assert (= (and b!3629655 (not c!627895)) b!3629657))

(assert (= (and b!3629657 (not res!1469787)) b!3629664))

(assert (= (and b!3629664 res!1469784) b!3629651))

(assert (= (and b!3629651 res!1469783) b!3629661))

(assert (= (and b!3629661 res!1469786) b!3629662))

(assert (= (and b!3629664 (not res!1469781)) b!3629653))

(assert (= (and b!3629653 res!1469782) b!3629663))

(assert (= (and b!3629663 (not res!1469788)) b!3629659))

(assert (= (and b!3629659 (not res!1469785)) b!3629660))

(assert (= (or b!3629654 b!3629651 b!3629663) bm!262508))

(assert (=> b!3629661 m!4130209))

(declare-fun m!4130819 () Bool)

(assert (=> b!3629661 m!4130819))

(assert (=> b!3629661 m!4130819))

(declare-fun m!4130821 () Bool)

(assert (=> b!3629661 m!4130821))

(assert (=> bm!262508 m!4130209))

(declare-fun m!4130823 () Bool)

(assert (=> bm!262508 m!4130823))

(declare-fun m!4130825 () Bool)

(assert (=> b!3629658 m!4130825))

(assert (=> d!1067385 m!4130209))

(assert (=> d!1067385 m!4130823))

(declare-fun m!4130827 () Bool)

(assert (=> d!1067385 m!4130827))

(assert (=> b!3629660 m!4130209))

(declare-fun m!4130829 () Bool)

(assert (=> b!3629660 m!4130829))

(assert (=> b!3629659 m!4130209))

(assert (=> b!3629659 m!4130819))

(assert (=> b!3629659 m!4130819))

(assert (=> b!3629659 m!4130821))

(assert (=> b!3629652 m!4130209))

(assert (=> b!3629652 m!4130829))

(assert (=> b!3629652 m!4130829))

(declare-fun m!4130831 () Bool)

(assert (=> b!3629652 m!4130831))

(assert (=> b!3629652 m!4130209))

(assert (=> b!3629652 m!4130819))

(assert (=> b!3629652 m!4130831))

(assert (=> b!3629652 m!4130819))

(declare-fun m!4130833 () Bool)

(assert (=> b!3629652 m!4130833))

(assert (=> b!3629662 m!4130209))

(assert (=> b!3629662 m!4130829))

(assert (=> b!3629141 d!1067385))

(declare-fun d!1067387 () Bool)

(assert (=> d!1067387 (= (get!12499 lt!1255339) (v!37824 lt!1255339))))

(assert (=> b!3629141 d!1067387))

(declare-fun d!1067389 () Bool)

(assert (=> d!1067389 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))) (list!14133 (c!627781 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))))))

(declare-fun bs!571521 () Bool)

(assert (= bs!571521 d!1067389))

(declare-fun m!4130835 () Bool)

(assert (=> bs!571521 m!4130835))

(assert (=> b!3629141 d!1067389))

(declare-fun d!1067391 () Bool)

(declare-fun lt!1255534 () BalanceConc!22948)

(assert (=> d!1067391 (= (list!14130 lt!1255534) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339))))))

(assert (=> d!1067391 (= lt!1255534 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))) (value!183024 (_1!22190 (get!12499 lt!1255339)))))))

(assert (=> d!1067391 (= (charsOf!3718 (_1!22190 (get!12499 lt!1255339))) lt!1255534)))

(declare-fun b_lambda!107427 () Bool)

(assert (=> (not b_lambda!107427) (not d!1067391)))

(declare-fun tb!208477 () Bool)

(declare-fun t!295090 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295090) tb!208477))

(declare-fun b!3629665 () Bool)

(declare-fun e!2246804 () Bool)

(declare-fun tp!1108211 () Bool)

(assert (=> b!3629665 (= e!2246804 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))) (value!183024 (_1!22190 (get!12499 lt!1255339)))))) tp!1108211))))

(declare-fun result!253994 () Bool)

(assert (=> tb!208477 (= result!253994 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))) (value!183024 (_1!22190 (get!12499 lt!1255339))))) e!2246804))))

(assert (= tb!208477 b!3629665))

(declare-fun m!4130837 () Bool)

(assert (=> b!3629665 m!4130837))

(declare-fun m!4130839 () Bool)

(assert (=> tb!208477 m!4130839))

(assert (=> d!1067391 t!295090))

(declare-fun b_and!266271 () Bool)

(assert (= b_and!266265 (and (=> t!295090 result!253994) b_and!266271)))

(declare-fun tb!208479 () Bool)

(declare-fun t!295092 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295092) tb!208479))

(declare-fun result!253996 () Bool)

(assert (= result!253996 result!253994))

(assert (=> d!1067391 t!295092))

(declare-fun b_and!266273 () Bool)

(assert (= b_and!266269 (and (=> t!295092 result!253996) b_and!266273)))

(declare-fun t!295094 () Bool)

(declare-fun tb!208481 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295094) tb!208481))

(declare-fun result!253998 () Bool)

(assert (= result!253998 result!253994))

(assert (=> d!1067391 t!295094))

(declare-fun b_and!266275 () Bool)

(assert (= b_and!266261 (and (=> t!295094 result!253998) b_and!266275)))

(declare-fun t!295096 () Bool)

(declare-fun tb!208483 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295096) tb!208483))

(declare-fun result!254000 () Bool)

(assert (= result!254000 result!253994))

(assert (=> d!1067391 t!295096))

(declare-fun b_and!266277 () Bool)

(assert (= b_and!266259 (and (=> t!295096 result!254000) b_and!266277)))

(declare-fun tb!208485 () Bool)

(declare-fun t!295098 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295098) tb!208485))

(declare-fun result!254002 () Bool)

(assert (= result!254002 result!253994))

(assert (=> d!1067391 t!295098))

(declare-fun b_and!266279 () Bool)

(assert (= b_and!266263 (and (=> t!295098 result!254002) b_and!266279)))

(declare-fun m!4130841 () Bool)

(assert (=> d!1067391 m!4130841))

(declare-fun m!4130843 () Bool)

(assert (=> d!1067391 m!4130843))

(assert (=> b!3629141 d!1067391))

(declare-fun b!3629667 () Bool)

(declare-fun e!2246806 () Bool)

(assert (=> b!3629667 (= e!2246806 (matchR!5032 (derivativeStep!3169 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)) (head!7682 (tail!5619 lt!1255264))) (tail!5619 (tail!5619 lt!1255264))))))

(declare-fun b!3629668 () Bool)

(declare-fun e!2246810 () Bool)

(declare-fun e!2246805 () Bool)

(assert (=> b!3629668 (= e!2246810 e!2246805)))

(declare-fun res!1469790 () Bool)

(assert (=> b!3629668 (=> (not res!1469790) (not e!2246805))))

(declare-fun lt!1255535 () Bool)

(assert (=> b!3629668 (= res!1469790 (not lt!1255535))))

(declare-fun b!3629669 () Bool)

(declare-fun e!2246807 () Bool)

(declare-fun call!262514 () Bool)

(assert (=> b!3629669 (= e!2246807 (= lt!1255535 call!262514))))

(declare-fun b!3629670 () Bool)

(declare-fun e!2246811 () Bool)

(assert (=> b!3629670 (= e!2246807 e!2246811)))

(declare-fun c!627898 () Bool)

(assert (=> b!3629670 (= c!627898 ((_ is EmptyLang!10463) (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264))))))

(declare-fun b!3629671 () Bool)

(assert (=> b!3629671 (= e!2246811 (not lt!1255535))))

(declare-fun b!3629672 () Bool)

(declare-fun res!1469795 () Bool)

(assert (=> b!3629672 (=> res!1469795 e!2246810)))

(assert (=> b!3629672 (= res!1469795 (not ((_ is ElementMatch!10463) (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)))))))

(assert (=> b!3629672 (= e!2246811 e!2246810)))

(declare-fun b!3629673 () Bool)

(assert (=> b!3629673 (= e!2246806 (nullable!3620 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264))))))

(declare-fun b!3629674 () Bool)

(declare-fun res!1469793 () Bool)

(declare-fun e!2246808 () Bool)

(assert (=> b!3629674 (=> res!1469793 e!2246808)))

(assert (=> b!3629674 (= res!1469793 (not (isEmpty!22618 (tail!5619 (tail!5619 lt!1255264)))))))

(declare-fun b!3629675 () Bool)

(assert (=> b!3629675 (= e!2246808 (not (= (head!7682 (tail!5619 lt!1255264)) (c!627780 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264))))))))

(declare-fun bm!262509 () Bool)

(assert (=> bm!262509 (= call!262514 (isEmpty!22618 (tail!5619 lt!1255264)))))

(declare-fun d!1067393 () Bool)

(assert (=> d!1067393 e!2246807))

(declare-fun c!627899 () Bool)

(assert (=> d!1067393 (= c!627899 ((_ is EmptyExpr!10463) (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264))))))

(assert (=> d!1067393 (= lt!1255535 e!2246806)))

(declare-fun c!627897 () Bool)

(assert (=> d!1067393 (= c!627897 (isEmpty!22618 (tail!5619 lt!1255264)))))

(assert (=> d!1067393 (validRegex!4782 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)))))

(assert (=> d!1067393 (= (matchR!5032 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)) (tail!5619 lt!1255264)) lt!1255535)))

(declare-fun b!3629666 () Bool)

(declare-fun res!1469791 () Bool)

(declare-fun e!2246809 () Bool)

(assert (=> b!3629666 (=> (not res!1469791) (not e!2246809))))

(assert (=> b!3629666 (= res!1469791 (not call!262514))))

(declare-fun b!3629676 () Bool)

(declare-fun res!1469794 () Bool)

(assert (=> b!3629676 (=> (not res!1469794) (not e!2246809))))

(assert (=> b!3629676 (= res!1469794 (isEmpty!22618 (tail!5619 (tail!5619 lt!1255264))))))

(declare-fun b!3629677 () Bool)

(assert (=> b!3629677 (= e!2246809 (= (head!7682 (tail!5619 lt!1255264)) (c!627780 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)))))))

(declare-fun b!3629678 () Bool)

(assert (=> b!3629678 (= e!2246805 e!2246808)))

(declare-fun res!1469796 () Bool)

(assert (=> b!3629678 (=> res!1469796 e!2246808)))

(assert (=> b!3629678 (= res!1469796 call!262514)))

(declare-fun b!3629679 () Bool)

(declare-fun res!1469789 () Bool)

(assert (=> b!3629679 (=> res!1469789 e!2246810)))

(assert (=> b!3629679 (= res!1469789 e!2246809)))

(declare-fun res!1469792 () Bool)

(assert (=> b!3629679 (=> (not res!1469792) (not e!2246809))))

(assert (=> b!3629679 (= res!1469792 lt!1255535)))

(assert (= (and d!1067393 c!627897) b!3629673))

(assert (= (and d!1067393 (not c!627897)) b!3629667))

(assert (= (and d!1067393 c!627899) b!3629669))

(assert (= (and d!1067393 (not c!627899)) b!3629670))

(assert (= (and b!3629670 c!627898) b!3629671))

(assert (= (and b!3629670 (not c!627898)) b!3629672))

(assert (= (and b!3629672 (not res!1469795)) b!3629679))

(assert (= (and b!3629679 res!1469792) b!3629666))

(assert (= (and b!3629666 res!1469791) b!3629676))

(assert (= (and b!3629676 res!1469794) b!3629677))

(assert (= (and b!3629679 (not res!1469789)) b!3629668))

(assert (= (and b!3629668 res!1469790) b!3629678))

(assert (= (and b!3629678 (not res!1469796)) b!3629674))

(assert (= (and b!3629674 (not res!1469793)) b!3629675))

(assert (= (or b!3629669 b!3629666 b!3629678) bm!262509))

(assert (=> b!3629676 m!4130259))

(declare-fun m!4130845 () Bool)

(assert (=> b!3629676 m!4130845))

(assert (=> b!3629676 m!4130845))

(declare-fun m!4130847 () Bool)

(assert (=> b!3629676 m!4130847))

(assert (=> bm!262509 m!4130259))

(assert (=> bm!262509 m!4130261))

(assert (=> b!3629673 m!4130271))

(declare-fun m!4130849 () Bool)

(assert (=> b!3629673 m!4130849))

(assert (=> d!1067393 m!4130259))

(assert (=> d!1067393 m!4130261))

(assert (=> d!1067393 m!4130271))

(declare-fun m!4130851 () Bool)

(assert (=> d!1067393 m!4130851))

(assert (=> b!3629675 m!4130259))

(declare-fun m!4130853 () Bool)

(assert (=> b!3629675 m!4130853))

(assert (=> b!3629674 m!4130259))

(assert (=> b!3629674 m!4130845))

(assert (=> b!3629674 m!4130845))

(assert (=> b!3629674 m!4130847))

(assert (=> b!3629667 m!4130259))

(assert (=> b!3629667 m!4130853))

(assert (=> b!3629667 m!4130271))

(assert (=> b!3629667 m!4130853))

(declare-fun m!4130855 () Bool)

(assert (=> b!3629667 m!4130855))

(assert (=> b!3629667 m!4130259))

(assert (=> b!3629667 m!4130845))

(assert (=> b!3629667 m!4130855))

(assert (=> b!3629667 m!4130845))

(declare-fun m!4130857 () Bool)

(assert (=> b!3629667 m!4130857))

(assert (=> b!3629677 m!4130259))

(assert (=> b!3629677 m!4130853))

(assert (=> b!3629188 d!1067393))

(declare-fun b!3629700 () Bool)

(declare-fun e!2246822 () Regex!10463)

(declare-fun e!2246823 () Regex!10463)

(assert (=> b!3629700 (= e!2246822 e!2246823)))

(declare-fun c!627911 () Bool)

(assert (=> b!3629700 (= c!627911 ((_ is ElementMatch!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun d!1067395 () Bool)

(declare-fun lt!1255538 () Regex!10463)

(assert (=> d!1067395 (validRegex!4782 lt!1255538)))

(assert (=> d!1067395 (= lt!1255538 e!2246822)))

(declare-fun c!627914 () Bool)

(assert (=> d!1067395 (= c!627914 (or ((_ is EmptyExpr!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) ((_ is EmptyLang!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> d!1067395 (validRegex!4782 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))

(assert (=> d!1067395 (= (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 lt!1255278))) (head!7682 lt!1255264)) lt!1255538)))

(declare-fun b!3629701 () Bool)

(declare-fun e!2246825 () Regex!10463)

(declare-fun call!262524 () Regex!10463)

(declare-fun call!262525 () Regex!10463)

(assert (=> b!3629701 (= e!2246825 (Union!10463 call!262524 call!262525))))

(declare-fun call!262526 () Regex!10463)

(declare-fun e!2246826 () Regex!10463)

(declare-fun b!3629702 () Bool)

(assert (=> b!3629702 (= e!2246826 (Union!10463 (Concat!16397 call!262526 (regTwo!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))) call!262525))))

(declare-fun c!627913 () Bool)

(declare-fun bm!262518 () Bool)

(assert (=> bm!262518 (= call!262525 (derivativeStep!3169 (ite c!627913 (regTwo!21439 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (regTwo!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))) (head!7682 lt!1255264)))))

(declare-fun b!3629703 () Bool)

(assert (=> b!3629703 (= e!2246822 EmptyLang!10463)))

(declare-fun b!3629704 () Bool)

(assert (=> b!3629704 (= c!627913 ((_ is Union!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(assert (=> b!3629704 (= e!2246823 e!2246825)))

(declare-fun bm!262519 () Bool)

(declare-fun call!262523 () Regex!10463)

(assert (=> bm!262519 (= call!262523 call!262524)))

(declare-fun bm!262520 () Bool)

(assert (=> bm!262520 (= call!262526 call!262523)))

(declare-fun b!3629705 () Bool)

(declare-fun c!627910 () Bool)

(assert (=> b!3629705 (= c!627910 (nullable!3620 (regOne!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))))

(declare-fun e!2246824 () Regex!10463)

(assert (=> b!3629705 (= e!2246824 e!2246826)))

(declare-fun b!3629706 () Bool)

(assert (=> b!3629706 (= e!2246826 (Union!10463 (Concat!16397 call!262526 (regTwo!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))) EmptyLang!10463))))

(declare-fun b!3629707 () Bool)

(assert (=> b!3629707 (= e!2246823 (ite (= (head!7682 lt!1255264) (c!627780 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))) EmptyExpr!10463 EmptyLang!10463))))

(declare-fun b!3629708 () Bool)

(assert (=> b!3629708 (= e!2246824 (Concat!16397 call!262523 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun bm!262521 () Bool)

(declare-fun c!627912 () Bool)

(assert (=> bm!262521 (= call!262524 (derivativeStep!3169 (ite c!627913 (regOne!21439 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (ite c!627912 (reg!10792 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (regOne!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))) (head!7682 lt!1255264)))))

(declare-fun b!3629709 () Bool)

(assert (=> b!3629709 (= e!2246825 e!2246824)))

(assert (=> b!3629709 (= c!627912 ((_ is Star!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(assert (= (and d!1067395 c!627914) b!3629703))

(assert (= (and d!1067395 (not c!627914)) b!3629700))

(assert (= (and b!3629700 c!627911) b!3629707))

(assert (= (and b!3629700 (not c!627911)) b!3629704))

(assert (= (and b!3629704 c!627913) b!3629701))

(assert (= (and b!3629704 (not c!627913)) b!3629709))

(assert (= (and b!3629709 c!627912) b!3629708))

(assert (= (and b!3629709 (not c!627912)) b!3629705))

(assert (= (and b!3629705 c!627910) b!3629702))

(assert (= (and b!3629705 (not c!627910)) b!3629706))

(assert (= (or b!3629702 b!3629706) bm!262520))

(assert (= (or b!3629708 bm!262520) bm!262519))

(assert (= (or b!3629701 b!3629702) bm!262518))

(assert (= (or b!3629701 bm!262519) bm!262521))

(declare-fun m!4130859 () Bool)

(assert (=> d!1067395 m!4130859))

(assert (=> d!1067395 m!4130267))

(assert (=> bm!262518 m!4130269))

(declare-fun m!4130861 () Bool)

(assert (=> bm!262518 m!4130861))

(declare-fun m!4130863 () Bool)

(assert (=> b!3629705 m!4130863))

(assert (=> bm!262521 m!4130269))

(declare-fun m!4130865 () Bool)

(assert (=> bm!262521 m!4130865))

(assert (=> b!3629188 d!1067395))

(declare-fun d!1067397 () Bool)

(assert (=> d!1067397 (= (head!7682 lt!1255264) (h!43664 lt!1255264))))

(assert (=> b!3629188 d!1067397))

(declare-fun d!1067399 () Bool)

(assert (=> d!1067399 (= (tail!5619 lt!1255264) (t!294963 lt!1255264))))

(assert (=> b!3629188 d!1067399))

(declare-fun d!1067401 () Bool)

(declare-fun c!627917 () Bool)

(assert (=> d!1067401 (= c!627917 ((_ is Nil!38244) (usedCharacters!916 (regex!5704 anOtherTypeRule!33))))))

(declare-fun e!2246829 () (InoxSet C!21112))

(assert (=> d!1067401 (= (content!5483 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))) e!2246829)))

(declare-fun b!3629714 () Bool)

(assert (=> b!3629714 (= e!2246829 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3629715 () Bool)

(assert (=> b!3629715 (= e!2246829 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))) true) (content!5483 (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))))))))

(assert (= (and d!1067401 c!627917) b!3629714))

(assert (= (and d!1067401 (not c!627917)) b!3629715))

(declare-fun m!4130867 () Bool)

(assert (=> b!3629715 m!4130867))

(declare-fun m!4130869 () Bool)

(assert (=> b!3629715 m!4130869))

(assert (=> d!1067259 d!1067401))

(declare-fun b!3629718 () Bool)

(declare-fun res!1469797 () Bool)

(declare-fun e!2246831 () Bool)

(assert (=> b!3629718 (=> (not res!1469797) (not e!2246831))))

(declare-fun lt!1255539 () List!38368)

(assert (=> b!3629718 (= res!1469797 (= (size!29181 lt!1255539) (+ (size!29181 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) (size!29181 (_2!22190 (get!12499 lt!1255514))))))))

(declare-fun b!3629716 () Bool)

(declare-fun e!2246830 () List!38368)

(assert (=> b!3629716 (= e!2246830 (_2!22190 (get!12499 lt!1255514)))))

(declare-fun d!1067403 () Bool)

(assert (=> d!1067403 e!2246831))

(declare-fun res!1469798 () Bool)

(assert (=> d!1067403 (=> (not res!1469798) (not e!2246831))))

(assert (=> d!1067403 (= res!1469798 (= (content!5483 lt!1255539) ((_ map or) (content!5483 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) (content!5483 (_2!22190 (get!12499 lt!1255514))))))))

(assert (=> d!1067403 (= lt!1255539 e!2246830)))

(declare-fun c!627918 () Bool)

(assert (=> d!1067403 (= c!627918 ((_ is Nil!38244) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))))))

(assert (=> d!1067403 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))) (_2!22190 (get!12499 lt!1255514))) lt!1255539)))

(declare-fun b!3629719 () Bool)

(assert (=> b!3629719 (= e!2246831 (or (not (= (_2!22190 (get!12499 lt!1255514)) Nil!38244)) (= lt!1255539 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))))))))

(declare-fun b!3629717 () Bool)

(assert (=> b!3629717 (= e!2246830 (Cons!38244 (h!43664 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) (++!9520 (t!294963 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) (_2!22190 (get!12499 lt!1255514)))))))

(assert (= (and d!1067403 c!627918) b!3629716))

(assert (= (and d!1067403 (not c!627918)) b!3629717))

(assert (= (and d!1067403 res!1469798) b!3629718))

(assert (= (and b!3629718 res!1469797) b!3629719))

(declare-fun m!4130871 () Bool)

(assert (=> b!3629718 m!4130871))

(assert (=> b!3629718 m!4130695))

(declare-fun m!4130873 () Bool)

(assert (=> b!3629718 m!4130873))

(assert (=> b!3629718 m!4130715))

(declare-fun m!4130875 () Bool)

(assert (=> d!1067403 m!4130875))

(assert (=> d!1067403 m!4130695))

(declare-fun m!4130877 () Bool)

(assert (=> d!1067403 m!4130877))

(declare-fun m!4130879 () Bool)

(assert (=> d!1067403 m!4130879))

(declare-fun m!4130881 () Bool)

(assert (=> b!3629717 m!4130881))

(assert (=> b!3629544 d!1067403))

(declare-fun d!1067405 () Bool)

(assert (=> d!1067405 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))) (list!14133 (c!627781 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))))))

(declare-fun bs!571522 () Bool)

(assert (= bs!571522 d!1067405))

(declare-fun m!4130883 () Bool)

(assert (=> bs!571522 m!4130883))

(assert (=> b!3629544 d!1067405))

(declare-fun d!1067407 () Bool)

(declare-fun lt!1255540 () BalanceConc!22948)

(assert (=> d!1067407 (= (list!14130 lt!1255540) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514))))))

(assert (=> d!1067407 (= lt!1255540 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))) (value!183024 (_1!22190 (get!12499 lt!1255514)))))))

(assert (=> d!1067407 (= (charsOf!3718 (_1!22190 (get!12499 lt!1255514))) lt!1255540)))

(declare-fun b_lambda!107429 () Bool)

(assert (=> (not b_lambda!107429) (not d!1067407)))

(declare-fun t!295100 () Bool)

(declare-fun tb!208487 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295100) tb!208487))

(declare-fun b!3629720 () Bool)

(declare-fun e!2246832 () Bool)

(declare-fun tp!1108212 () Bool)

(assert (=> b!3629720 (= e!2246832 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))) (value!183024 (_1!22190 (get!12499 lt!1255514)))))) tp!1108212))))

(declare-fun result!254004 () Bool)

(assert (=> tb!208487 (= result!254004 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))) (value!183024 (_1!22190 (get!12499 lt!1255514))))) e!2246832))))

(assert (= tb!208487 b!3629720))

(declare-fun m!4130885 () Bool)

(assert (=> b!3629720 m!4130885))

(declare-fun m!4130887 () Bool)

(assert (=> tb!208487 m!4130887))

(assert (=> d!1067407 t!295100))

(declare-fun b_and!266281 () Bool)

(assert (= b_and!266275 (and (=> t!295100 result!254004) b_and!266281)))

(declare-fun t!295102 () Bool)

(declare-fun tb!208489 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295102) tb!208489))

(declare-fun result!254006 () Bool)

(assert (= result!254006 result!254004))

(assert (=> d!1067407 t!295102))

(declare-fun b_and!266283 () Bool)

(assert (= b_and!266279 (and (=> t!295102 result!254006) b_and!266283)))

(declare-fun t!295104 () Bool)

(declare-fun tb!208491 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295104) tb!208491))

(declare-fun result!254008 () Bool)

(assert (= result!254008 result!254004))

(assert (=> d!1067407 t!295104))

(declare-fun b_and!266285 () Bool)

(assert (= b_and!266271 (and (=> t!295104 result!254008) b_and!266285)))

(declare-fun t!295106 () Bool)

(declare-fun tb!208493 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295106) tb!208493))

(declare-fun result!254010 () Bool)

(assert (= result!254010 result!254004))

(assert (=> d!1067407 t!295106))

(declare-fun b_and!266287 () Bool)

(assert (= b_and!266277 (and (=> t!295106 result!254010) b_and!266287)))

(declare-fun tb!208495 () Bool)

(declare-fun t!295108 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295108) tb!208495))

(declare-fun result!254012 () Bool)

(assert (= result!254012 result!254004))

(assert (=> d!1067407 t!295108))

(declare-fun b_and!266289 () Bool)

(assert (= b_and!266273 (and (=> t!295108 result!254012) b_and!266289)))

(declare-fun m!4130889 () Bool)

(assert (=> d!1067407 m!4130889))

(declare-fun m!4130891 () Bool)

(assert (=> d!1067407 m!4130891))

(assert (=> b!3629544 d!1067407))

(declare-fun d!1067409 () Bool)

(assert (=> d!1067409 (= (get!12499 lt!1255514) (v!37824 lt!1255514))))

(assert (=> b!3629544 d!1067409))

(declare-fun d!1067411 () Bool)

(declare-fun lt!1255541 () Bool)

(assert (=> d!1067411 (= lt!1255541 (select (content!5481 rules!3307) (get!12498 lt!1255436)))))

(declare-fun e!2246833 () Bool)

(assert (=> d!1067411 (= lt!1255541 e!2246833)))

(declare-fun res!1469799 () Bool)

(assert (=> d!1067411 (=> (not res!1469799) (not e!2246833))))

(assert (=> d!1067411 (= res!1469799 ((_ is Cons!38245) rules!3307))))

(assert (=> d!1067411 (= (contains!7471 rules!3307 (get!12498 lt!1255436)) lt!1255541)))

(declare-fun b!3629721 () Bool)

(declare-fun e!2246834 () Bool)

(assert (=> b!3629721 (= e!2246833 e!2246834)))

(declare-fun res!1469800 () Bool)

(assert (=> b!3629721 (=> res!1469800 e!2246834)))

(assert (=> b!3629721 (= res!1469800 (= (h!43665 rules!3307) (get!12498 lt!1255436)))))

(declare-fun b!3629722 () Bool)

(assert (=> b!3629722 (= e!2246834 (contains!7471 (t!294964 rules!3307) (get!12498 lt!1255436)))))

(assert (= (and d!1067411 res!1469799) b!3629721))

(assert (= (and b!3629721 (not res!1469800)) b!3629722))

(assert (=> d!1067411 m!4130249))

(assert (=> d!1067411 m!4130453))

(declare-fun m!4130893 () Bool)

(assert (=> d!1067411 m!4130893))

(assert (=> b!3629722 m!4130453))

(declare-fun m!4130895 () Bool)

(assert (=> b!3629722 m!4130895))

(assert (=> b!3629372 d!1067411))

(declare-fun d!1067413 () Bool)

(assert (=> d!1067413 (= (get!12498 lt!1255436) (v!37823 lt!1255436))))

(assert (=> b!3629372 d!1067413))

(declare-fun d!1067415 () Bool)

(assert (=> d!1067415 (= (isEmpty!22618 (tail!5619 lt!1255280)) ((_ is Nil!38244) (tail!5619 lt!1255280)))))

(assert (=> b!3629211 d!1067415))

(declare-fun d!1067417 () Bool)

(assert (=> d!1067417 (= (tail!5619 lt!1255280) (t!294963 lt!1255280))))

(assert (=> b!3629211 d!1067417))

(declare-fun b!3629726 () Bool)

(declare-fun e!2246837 () Bool)

(assert (=> b!3629726 (= e!2246837 (>= (size!29181 (tail!5619 lt!1255273)) (size!29181 (tail!5619 lt!1255264))))))

(declare-fun d!1067419 () Bool)

(assert (=> d!1067419 e!2246837))

(declare-fun res!1469804 () Bool)

(assert (=> d!1067419 (=> res!1469804 e!2246837)))

(declare-fun lt!1255542 () Bool)

(assert (=> d!1067419 (= res!1469804 (not lt!1255542))))

(declare-fun e!2246836 () Bool)

(assert (=> d!1067419 (= lt!1255542 e!2246836)))

(declare-fun res!1469801 () Bool)

(assert (=> d!1067419 (=> res!1469801 e!2246836)))

(assert (=> d!1067419 (= res!1469801 ((_ is Nil!38244) (tail!5619 lt!1255264)))))

(assert (=> d!1067419 (= (isPrefix!3067 (tail!5619 lt!1255264) (tail!5619 lt!1255273)) lt!1255542)))

(declare-fun b!3629725 () Bool)

(declare-fun e!2246835 () Bool)

(assert (=> b!3629725 (= e!2246835 (isPrefix!3067 (tail!5619 (tail!5619 lt!1255264)) (tail!5619 (tail!5619 lt!1255273))))))

(declare-fun b!3629724 () Bool)

(declare-fun res!1469803 () Bool)

(assert (=> b!3629724 (=> (not res!1469803) (not e!2246835))))

(assert (=> b!3629724 (= res!1469803 (= (head!7682 (tail!5619 lt!1255264)) (head!7682 (tail!5619 lt!1255273))))))

(declare-fun b!3629723 () Bool)

(assert (=> b!3629723 (= e!2246836 e!2246835)))

(declare-fun res!1469802 () Bool)

(assert (=> b!3629723 (=> (not res!1469802) (not e!2246835))))

(assert (=> b!3629723 (= res!1469802 (not ((_ is Nil!38244) (tail!5619 lt!1255273))))))

(assert (= (and d!1067419 (not res!1469801)) b!3629723))

(assert (= (and b!3629723 res!1469802) b!3629724))

(assert (= (and b!3629724 res!1469803) b!3629725))

(assert (= (and d!1067419 (not res!1469804)) b!3629726))

(assert (=> b!3629726 m!4130483))

(declare-fun m!4130897 () Bool)

(assert (=> b!3629726 m!4130897))

(assert (=> b!3629726 m!4130259))

(declare-fun m!4130899 () Bool)

(assert (=> b!3629726 m!4130899))

(assert (=> b!3629725 m!4130259))

(assert (=> b!3629725 m!4130845))

(assert (=> b!3629725 m!4130483))

(declare-fun m!4130901 () Bool)

(assert (=> b!3629725 m!4130901))

(assert (=> b!3629725 m!4130845))

(assert (=> b!3629725 m!4130901))

(declare-fun m!4130903 () Bool)

(assert (=> b!3629725 m!4130903))

(assert (=> b!3629724 m!4130259))

(assert (=> b!3629724 m!4130853))

(assert (=> b!3629724 m!4130483))

(declare-fun m!4130905 () Bool)

(assert (=> b!3629724 m!4130905))

(assert (=> b!3629570 d!1067419))

(assert (=> b!3629570 d!1067399))

(declare-fun d!1067421 () Bool)

(assert (=> d!1067421 (= (tail!5619 lt!1255273) (t!294963 lt!1255273))))

(assert (=> b!3629570 d!1067421))

(declare-fun b!3629745 () Bool)

(declare-fun e!2246853 () Bool)

(declare-fun e!2246857 () Bool)

(assert (=> b!3629745 (= e!2246853 e!2246857)))

(declare-fun res!1469815 () Bool)

(assert (=> b!3629745 (=> (not res!1469815) (not e!2246857))))

(declare-fun call!262533 () Bool)

(assert (=> b!3629745 (= res!1469815 call!262533)))

(declare-fun bm!262528 () Bool)

(declare-fun c!627923 () Bool)

(assert (=> bm!262528 (= call!262533 (validRegex!4782 (ite c!627923 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))))))

(declare-fun c!627924 () Bool)

(declare-fun bm!262529 () Bool)

(declare-fun call!262535 () Bool)

(assert (=> bm!262529 (= call!262535 (validRegex!4782 (ite c!627924 (reg!10792 (regex!5704 rule!403)) (ite c!627923 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))))))

(declare-fun b!3629747 () Bool)

(declare-fun e!2246854 () Bool)

(assert (=> b!3629747 (= e!2246854 call!262535)))

(declare-fun b!3629748 () Bool)

(declare-fun e!2246852 () Bool)

(declare-fun e!2246855 () Bool)

(assert (=> b!3629748 (= e!2246852 e!2246855)))

(assert (=> b!3629748 (= c!627924 ((_ is Star!10463) (regex!5704 rule!403)))))

(declare-fun b!3629749 () Bool)

(declare-fun e!2246858 () Bool)

(assert (=> b!3629749 (= e!2246858 call!262533)))

(declare-fun b!3629750 () Bool)

(assert (=> b!3629750 (= e!2246855 e!2246854)))

(declare-fun res!1469816 () Bool)

(assert (=> b!3629750 (= res!1469816 (not (nullable!3620 (reg!10792 (regex!5704 rule!403)))))))

(assert (=> b!3629750 (=> (not res!1469816) (not e!2246854))))

(declare-fun bm!262530 () Bool)

(declare-fun call!262534 () Bool)

(assert (=> bm!262530 (= call!262534 call!262535)))

(declare-fun b!3629751 () Bool)

(declare-fun e!2246856 () Bool)

(assert (=> b!3629751 (= e!2246855 e!2246856)))

(assert (=> b!3629751 (= c!627923 ((_ is Union!10463) (regex!5704 rule!403)))))

(declare-fun b!3629752 () Bool)

(declare-fun res!1469817 () Bool)

(assert (=> b!3629752 (=> (not res!1469817) (not e!2246858))))

(assert (=> b!3629752 (= res!1469817 call!262534)))

(assert (=> b!3629752 (= e!2246856 e!2246858)))

(declare-fun b!3629753 () Bool)

(declare-fun res!1469818 () Bool)

(assert (=> b!3629753 (=> res!1469818 e!2246853)))

(assert (=> b!3629753 (= res!1469818 (not ((_ is Concat!16397) (regex!5704 rule!403))))))

(assert (=> b!3629753 (= e!2246856 e!2246853)))

(declare-fun d!1067423 () Bool)

(declare-fun res!1469819 () Bool)

(assert (=> d!1067423 (=> res!1469819 e!2246852)))

(assert (=> d!1067423 (= res!1469819 ((_ is ElementMatch!10463) (regex!5704 rule!403)))))

(assert (=> d!1067423 (= (validRegex!4782 (regex!5704 rule!403)) e!2246852)))

(declare-fun b!3629746 () Bool)

(assert (=> b!3629746 (= e!2246857 call!262534)))

(assert (= (and d!1067423 (not res!1469819)) b!3629748))

(assert (= (and b!3629748 c!627924) b!3629750))

(assert (= (and b!3629748 (not c!627924)) b!3629751))

(assert (= (and b!3629750 res!1469816) b!3629747))

(assert (= (and b!3629751 c!627923) b!3629752))

(assert (= (and b!3629751 (not c!627923)) b!3629753))

(assert (= (and b!3629752 res!1469817) b!3629749))

(assert (= (and b!3629753 (not res!1469818)) b!3629745))

(assert (= (and b!3629745 res!1469815) b!3629746))

(assert (= (or b!3629752 b!3629746) bm!262530))

(assert (= (or b!3629749 b!3629745) bm!262528))

(assert (= (or b!3629747 bm!262530) bm!262529))

(declare-fun m!4130907 () Bool)

(assert (=> bm!262528 m!4130907))

(declare-fun m!4130909 () Bool)

(assert (=> bm!262529 m!4130909))

(declare-fun m!4130911 () Bool)

(assert (=> b!3629750 m!4130911))

(assert (=> d!1067213 d!1067423))

(assert (=> d!1067215 d!1067213))

(declare-fun d!1067425 () Bool)

(assert (=> d!1067425 (ruleValid!1968 thiss!23823 rule!403)))

(assert (=> d!1067425 true))

(declare-fun _$65!1293 () Unit!55058)

(assert (=> d!1067425 (= (choose!21309 thiss!23823 rule!403 rules!3307) _$65!1293)))

(declare-fun bs!571523 () Bool)

(assert (= bs!571523 d!1067425))

(assert (=> bs!571523 m!4129963))

(assert (=> d!1067215 d!1067425))

(assert (=> d!1067215 d!1067359))

(declare-fun d!1067427 () Bool)

(declare-fun c!627929 () Bool)

(assert (=> d!1067427 (= c!627929 ((_ is Empty!11667) (c!627781 lt!1255271)))))

(declare-fun e!2246863 () List!38368)

(assert (=> d!1067427 (= (list!14133 (c!627781 lt!1255271)) e!2246863)))

(declare-fun b!3629765 () Bool)

(declare-fun e!2246864 () List!38368)

(assert (=> b!3629765 (= e!2246864 (++!9520 (list!14133 (left!29853 (c!627781 lt!1255271))) (list!14133 (right!30183 (c!627781 lt!1255271)))))))

(declare-fun b!3629762 () Bool)

(assert (=> b!3629762 (= e!2246863 Nil!38244)))

(declare-fun b!3629764 () Bool)

(declare-fun list!14135 (IArray!23339) List!38368)

(assert (=> b!3629764 (= e!2246864 (list!14135 (xs!14869 (c!627781 lt!1255271))))))

(declare-fun b!3629763 () Bool)

(assert (=> b!3629763 (= e!2246863 e!2246864)))

(declare-fun c!627930 () Bool)

(assert (=> b!3629763 (= c!627930 ((_ is Leaf!18130) (c!627781 lt!1255271)))))

(assert (= (and d!1067427 c!627929) b!3629762))

(assert (= (and d!1067427 (not c!627929)) b!3629763))

(assert (= (and b!3629763 c!627930) b!3629764))

(assert (= (and b!3629763 (not c!627930)) b!3629765))

(declare-fun m!4130913 () Bool)

(assert (=> b!3629765 m!4130913))

(declare-fun m!4130915 () Bool)

(assert (=> b!3629765 m!4130915))

(assert (=> b!3629765 m!4130913))

(assert (=> b!3629765 m!4130915))

(declare-fun m!4130917 () Bool)

(assert (=> b!3629765 m!4130917))

(declare-fun m!4130919 () Bool)

(assert (=> b!3629764 m!4130919))

(assert (=> d!1067345 d!1067427))

(declare-fun b!3629768 () Bool)

(declare-fun res!1469820 () Bool)

(declare-fun e!2246866 () Bool)

(assert (=> b!3629768 (=> (not res!1469820) (not e!2246866))))

(declare-fun lt!1255543 () List!38368)

(assert (=> b!3629768 (= res!1469820 (= (size!29181 lt!1255543) (+ (size!29181 (t!294963 lt!1255280)) (size!29181 suffix!1395))))))

(declare-fun b!3629766 () Bool)

(declare-fun e!2246865 () List!38368)

(assert (=> b!3629766 (= e!2246865 suffix!1395)))

(declare-fun d!1067429 () Bool)

(assert (=> d!1067429 e!2246866))

(declare-fun res!1469821 () Bool)

(assert (=> d!1067429 (=> (not res!1469821) (not e!2246866))))

(assert (=> d!1067429 (= res!1469821 (= (content!5483 lt!1255543) ((_ map or) (content!5483 (t!294963 lt!1255280)) (content!5483 suffix!1395))))))

(assert (=> d!1067429 (= lt!1255543 e!2246865)))

(declare-fun c!627931 () Bool)

(assert (=> d!1067429 (= c!627931 ((_ is Nil!38244) (t!294963 lt!1255280)))))

(assert (=> d!1067429 (= (++!9520 (t!294963 lt!1255280) suffix!1395) lt!1255543)))

(declare-fun b!3629769 () Bool)

(assert (=> b!3629769 (= e!2246866 (or (not (= suffix!1395 Nil!38244)) (= lt!1255543 (t!294963 lt!1255280))))))

(declare-fun b!3629767 () Bool)

(assert (=> b!3629767 (= e!2246865 (Cons!38244 (h!43664 (t!294963 lt!1255280)) (++!9520 (t!294963 (t!294963 lt!1255280)) suffix!1395)))))

(assert (= (and d!1067429 c!627931) b!3629766))

(assert (= (and d!1067429 (not c!627931)) b!3629767))

(assert (= (and d!1067429 res!1469821) b!3629768))

(assert (= (and b!3629768 res!1469820) b!3629769))

(declare-fun m!4130921 () Bool)

(assert (=> b!3629768 m!4130921))

(declare-fun m!4130923 () Bool)

(assert (=> b!3629768 m!4130923))

(assert (=> b!3629768 m!4130763))

(declare-fun m!4130925 () Bool)

(assert (=> d!1067429 m!4130925))

(declare-fun m!4130927 () Bool)

(assert (=> d!1067429 m!4130927))

(assert (=> d!1067429 m!4130769))

(declare-fun m!4130929 () Bool)

(assert (=> b!3629767 m!4130929))

(assert (=> b!3629579 d!1067429))

(declare-fun b!3629770 () Bool)

(declare-fun res!1469822 () Bool)

(declare-fun e!2246869 () Bool)

(assert (=> b!3629770 (=> res!1469822 e!2246869)))

(assert (=> b!3629770 (= res!1469822 (not ((_ is IntegerValue!17804) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))))

(declare-fun e!2246867 () Bool)

(assert (=> b!3629770 (= e!2246867 e!2246869)))

(declare-fun d!1067431 () Bool)

(declare-fun c!627932 () Bool)

(assert (=> d!1067431 (= c!627932 ((_ is IntegerValue!17802) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))

(declare-fun e!2246868 () Bool)

(assert (=> d!1067431 (= (inv!21 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)) e!2246868)))

(declare-fun b!3629771 () Bool)

(assert (=> b!3629771 (= e!2246868 e!2246867)))

(declare-fun c!627933 () Bool)

(assert (=> b!3629771 (= c!627933 ((_ is IntegerValue!17803) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))

(declare-fun b!3629772 () Bool)

(assert (=> b!3629772 (= e!2246867 (inv!17 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))

(declare-fun b!3629773 () Bool)

(assert (=> b!3629773 (= e!2246869 (inv!15 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))

(declare-fun b!3629774 () Bool)

(assert (=> b!3629774 (= e!2246868 (inv!16 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))

(assert (= (and d!1067431 c!627932) b!3629774))

(assert (= (and d!1067431 (not c!627932)) b!3629771))

(assert (= (and b!3629771 c!627933) b!3629772))

(assert (= (and b!3629771 (not c!627933)) b!3629770))

(assert (= (and b!3629770 (not res!1469822)) b!3629773))

(declare-fun m!4130931 () Bool)

(assert (=> b!3629772 m!4130931))

(declare-fun m!4130933 () Bool)

(assert (=> b!3629773 m!4130933))

(declare-fun m!4130935 () Bool)

(assert (=> b!3629774 m!4130935))

(assert (=> tb!208381 d!1067431))

(declare-fun d!1067433 () Bool)

(declare-fun c!627936 () Bool)

(assert (=> d!1067433 (= c!627936 (and ((_ is Cons!38245) rules!3307) (not (= (isSeparator!5704 (h!43665 rules!3307)) (isSeparator!5704 (h!43665 rules!3307))))))))

(declare-fun e!2246877 () Bool)

(assert (=> d!1067433 (= (ruleDisjointCharsFromAllFromOtherType!844 (h!43665 rules!3307) rules!3307) e!2246877)))

(declare-fun b!3629783 () Bool)

(declare-fun e!2246878 () Bool)

(assert (=> b!3629783 (= e!2246877 e!2246878)))

(declare-fun res!1469828 () Bool)

(assert (=> b!3629783 (= res!1469828 (not ((_ is Cons!38245) rules!3307)))))

(assert (=> b!3629783 (=> res!1469828 e!2246878)))

(declare-fun b!3629784 () Bool)

(declare-fun e!2246876 () Bool)

(assert (=> b!3629784 (= e!2246877 e!2246876)))

(declare-fun res!1469827 () Bool)

(declare-fun rulesUseDisjointChars!370 (Rule!11208 Rule!11208) Bool)

(assert (=> b!3629784 (= res!1469827 (rulesUseDisjointChars!370 (h!43665 rules!3307) (h!43665 rules!3307)))))

(assert (=> b!3629784 (=> (not res!1469827) (not e!2246876))))

(declare-fun b!3629785 () Bool)

(declare-fun call!262538 () Bool)

(assert (=> b!3629785 (= e!2246876 call!262538)))

(declare-fun b!3629786 () Bool)

(assert (=> b!3629786 (= e!2246878 call!262538)))

(declare-fun bm!262533 () Bool)

(assert (=> bm!262533 (= call!262538 (ruleDisjointCharsFromAllFromOtherType!844 (h!43665 rules!3307) (t!294964 rules!3307)))))

(assert (= (and d!1067433 c!627936) b!3629784))

(assert (= (and d!1067433 (not c!627936)) b!3629783))

(assert (= (and b!3629784 res!1469827) b!3629785))

(assert (= (and b!3629783 (not res!1469828)) b!3629786))

(assert (= (or b!3629785 b!3629786) bm!262533))

(declare-fun m!4130937 () Bool)

(assert (=> b!3629784 m!4130937))

(declare-fun m!4130939 () Bool)

(assert (=> bm!262533 m!4130939))

(assert (=> b!3629586 d!1067433))

(declare-fun d!1067435 () Bool)

(declare-fun c!627939 () Bool)

(assert (=> d!1067435 (= c!627939 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))))

(declare-fun e!2246883 () Bool)

(assert (=> d!1067435 (= (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))) e!2246883)))

(declare-fun b!3629793 () Bool)

(declare-fun inv!51665 (Conc!11667) Bool)

(assert (=> b!3629793 (= e!2246883 (inv!51665 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))))

(declare-fun b!3629794 () Bool)

(declare-fun e!2246884 () Bool)

(assert (=> b!3629794 (= e!2246883 e!2246884)))

(declare-fun res!1469831 () Bool)

(assert (=> b!3629794 (= res!1469831 (not ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))))))))

(assert (=> b!3629794 (=> res!1469831 e!2246884)))

(declare-fun b!3629795 () Bool)

(declare-fun inv!51666 (Conc!11667) Bool)

(assert (=> b!3629795 (= e!2246884 (inv!51666 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))))

(assert (= (and d!1067435 c!627939) b!3629793))

(assert (= (and d!1067435 (not c!627939)) b!3629794))

(assert (= (and b!3629794 (not res!1469831)) b!3629795))

(declare-fun m!4130941 () Bool)

(assert (=> b!3629793 m!4130941))

(declare-fun m!4130943 () Bool)

(assert (=> b!3629795 m!4130943))

(assert (=> b!3629149 d!1067435))

(declare-fun d!1067437 () Bool)

(assert (=> d!1067437 (not (matchR!5032 (regex!5704 (rule!8474 lt!1255511)) lt!1255501))))

(declare-fun lt!1255546 () Unit!55058)

(declare-fun choose!21313 (LexerInterface!5293 Rule!11208 List!38368 List!38368) Unit!55058)

(assert (=> d!1067437 (= lt!1255546 (choose!21313 thiss!23823 (rule!8474 lt!1255511) lt!1255501 (++!9520 lt!1255280 suffix!1395)))))

(assert (=> d!1067437 (isPrefix!3067 lt!1255501 (++!9520 lt!1255280 suffix!1395))))

(assert (=> d!1067437 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!496 thiss!23823 (rule!8474 lt!1255511) lt!1255501 (++!9520 lt!1255280 suffix!1395)) lt!1255546)))

(declare-fun bs!571524 () Bool)

(assert (= bs!571524 d!1067437))

(assert (=> bs!571524 m!4130675))

(assert (=> bs!571524 m!4129995))

(declare-fun m!4130945 () Bool)

(assert (=> bs!571524 m!4130945))

(assert (=> bs!571524 m!4129995))

(declare-fun m!4130947 () Bool)

(assert (=> bs!571524 m!4130947))

(assert (=> b!3629540 d!1067437))

(declare-fun d!1067439 () Bool)

(assert (=> d!1067439 (isEmpty!22622 (maxPrefixOneRule!1967 thiss!23823 (rule!8474 lt!1255511) lt!1255497))))

(declare-fun lt!1255549 () Unit!55058)

(declare-fun choose!21314 (LexerInterface!5293 Rule!11208 List!38369 List!38368) Unit!55058)

(assert (=> d!1067439 (= lt!1255549 (choose!21314 thiss!23823 (rule!8474 lt!1255511) rules!3307 lt!1255497))))

(assert (=> d!1067439 (not (isEmpty!22619 rules!3307))))

(assert (=> d!1067439 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!508 thiss!23823 (rule!8474 lt!1255511) rules!3307 lt!1255497) lt!1255549)))

(declare-fun bs!571525 () Bool)

(assert (= bs!571525 d!1067439))

(assert (=> bs!571525 m!4130677))

(assert (=> bs!571525 m!4130677))

(assert (=> bs!571525 m!4130681))

(declare-fun m!4130949 () Bool)

(assert (=> bs!571525 m!4130949))

(assert (=> bs!571525 m!4129981))

(assert (=> b!3629540 d!1067439))

(assert (=> b!3629540 d!1067353))

(declare-fun d!1067441 () Bool)

(declare-fun lt!1255550 () BalanceConc!22948)

(assert (=> d!1067441 (= (list!14130 lt!1255550) (originalCharacters!6418 lt!1255511))))

(assert (=> d!1067441 (= lt!1255550 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 lt!1255511))) (value!183024 lt!1255511)))))

(assert (=> d!1067441 (= (charsOf!3718 lt!1255511) lt!1255550)))

(declare-fun b_lambda!107431 () Bool)

(assert (=> (not b_lambda!107431) (not d!1067441)))

(declare-fun t!295111 () Bool)

(declare-fun tb!208497 () Bool)

(assert (=> (and b!3628953 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 lt!1255511)))) t!295111) tb!208497))

(declare-fun b!3629796 () Bool)

(declare-fun e!2246885 () Bool)

(declare-fun tp!1108213 () Bool)

(assert (=> b!3629796 (= e!2246885 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 lt!1255511))) (value!183024 lt!1255511)))) tp!1108213))))

(declare-fun result!254014 () Bool)

(assert (=> tb!208497 (= result!254014 (and (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 lt!1255511))) (value!183024 lt!1255511))) e!2246885))))

(assert (= tb!208497 b!3629796))

(declare-fun m!4130951 () Bool)

(assert (=> b!3629796 m!4130951))

(declare-fun m!4130953 () Bool)

(assert (=> tb!208497 m!4130953))

(assert (=> d!1067441 t!295111))

(declare-fun b_and!266291 () Bool)

(assert (= b_and!266287 (and (=> t!295111 result!254014) b_and!266291)))

(declare-fun tb!208499 () Bool)

(declare-fun t!295113 () Bool)

(assert (=> (and b!3628968 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 lt!1255511)))) t!295113) tb!208499))

(declare-fun result!254016 () Bool)

(assert (= result!254016 result!254014))

(assert (=> d!1067441 t!295113))

(declare-fun b_and!266293 () Bool)

(assert (= b_and!266281 (and (=> t!295113 result!254016) b_and!266293)))

(declare-fun tb!208501 () Bool)

(declare-fun t!295115 () Bool)

(assert (=> (and b!3629650 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 lt!1255511)))) t!295115) tb!208501))

(declare-fun result!254018 () Bool)

(assert (= result!254018 result!254014))

(assert (=> d!1067441 t!295115))

(declare-fun b_and!266295 () Bool)

(assert (= b_and!266289 (and (=> t!295115 result!254018) b_and!266295)))

(declare-fun t!295117 () Bool)

(declare-fun tb!208503 () Bool)

(assert (=> (and b!3628966 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 lt!1255511)))) t!295117) tb!208503))

(declare-fun result!254020 () Bool)

(assert (= result!254020 result!254014))

(assert (=> d!1067441 t!295117))

(declare-fun b_and!266297 () Bool)

(assert (= b_and!266285 (and (=> t!295117 result!254020) b_and!266297)))

(declare-fun tb!208505 () Bool)

(declare-fun t!295119 () Bool)

(assert (=> (and b!3628978 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 lt!1255511)))) t!295119) tb!208505))

(declare-fun result!254022 () Bool)

(assert (= result!254022 result!254014))

(assert (=> d!1067441 t!295119))

(declare-fun b_and!266299 () Bool)

(assert (= b_and!266283 (and (=> t!295119 result!254022) b_and!266299)))

(declare-fun m!4130955 () Bool)

(assert (=> d!1067441 m!4130955))

(declare-fun m!4130957 () Bool)

(assert (=> d!1067441 m!4130957))

(assert (=> b!3629540 d!1067441))

(declare-fun d!1067443 () Bool)

(assert (=> d!1067443 (= (list!14130 (charsOf!3718 lt!1255511)) (list!14133 (c!627781 (charsOf!3718 lt!1255511))))))

(declare-fun bs!571526 () Bool)

(assert (= bs!571526 d!1067443))

(declare-fun m!4130959 () Bool)

(assert (=> bs!571526 m!4130959))

(assert (=> b!3629540 d!1067443))

(declare-fun b!3629865 () Bool)

(declare-fun e!2246923 () Option!8037)

(declare-datatypes ((tuple2!38118 0))(
  ( (tuple2!38119 (_1!22193 List!38368) (_2!22193 List!38368)) )
))
(declare-fun lt!1255567 () tuple2!38118)

(assert (=> b!3629865 (= e!2246923 (Some!8036 (tuple2!38113 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 lt!1255511)) (seqFromList!4253 (_1!22193 lt!1255567))) (rule!8474 lt!1255511) (size!29179 (seqFromList!4253 (_1!22193 lt!1255567))) (_1!22193 lt!1255567)) (_2!22193 lt!1255567))))))

(declare-fun lt!1255569 () Unit!55058)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!997 (Regex!10463 List!38368) Unit!55058)

(assert (=> b!3629865 (= lt!1255569 (longestMatchIsAcceptedByMatchOrIsEmpty!997 (regex!5704 (rule!8474 lt!1255511)) lt!1255497))))

(declare-fun res!1469862 () Bool)

(declare-fun findLongestMatchInner!1024 (Regex!10463 List!38368 Int List!38368 List!38368 Int) tuple2!38118)

(assert (=> b!3629865 (= res!1469862 (isEmpty!22618 (_1!22193 (findLongestMatchInner!1024 (regex!5704 (rule!8474 lt!1255511)) Nil!38244 (size!29181 Nil!38244) lt!1255497 lt!1255497 (size!29181 lt!1255497)))))))

(declare-fun e!2246920 () Bool)

(assert (=> b!3629865 (=> res!1469862 e!2246920)))

(assert (=> b!3629865 e!2246920))

(declare-fun lt!1255571 () Unit!55058)

(assert (=> b!3629865 (= lt!1255571 lt!1255569)))

(declare-fun lt!1255570 () Unit!55058)

(assert (=> b!3629865 (= lt!1255570 (lemmaSemiInverse!1453 (transformation!5704 (rule!8474 lt!1255511)) (seqFromList!4253 (_1!22193 lt!1255567))))))

(declare-fun b!3629866 () Bool)

(declare-fun e!2246922 () Bool)

(declare-fun lt!1255568 () Option!8037)

(assert (=> b!3629866 (= e!2246922 (= (size!29178 (_1!22190 (get!12499 lt!1255568))) (size!29181 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255568))))))))

(declare-fun b!3629867 () Bool)

(declare-fun res!1469859 () Bool)

(assert (=> b!3629867 (=> (not res!1469859) (not e!2246922))))

(assert (=> b!3629867 (= res!1469859 (= (value!183024 (_1!22190 (get!12499 lt!1255568))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255568)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255568)))))))))

(declare-fun b!3629868 () Bool)

(declare-fun res!1469861 () Bool)

(assert (=> b!3629868 (=> (not res!1469861) (not e!2246922))))

(assert (=> b!3629868 (= res!1469861 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255568)))) (_2!22190 (get!12499 lt!1255568))) lt!1255497))))

(declare-fun d!1067445 () Bool)

(declare-fun e!2246921 () Bool)

(assert (=> d!1067445 e!2246921))

(declare-fun res!1469860 () Bool)

(assert (=> d!1067445 (=> res!1469860 e!2246921)))

(assert (=> d!1067445 (= res!1469860 (isEmpty!22622 lt!1255568))))

(assert (=> d!1067445 (= lt!1255568 e!2246923)))

(declare-fun c!627960 () Bool)

(assert (=> d!1067445 (= c!627960 (isEmpty!22618 (_1!22193 lt!1255567)))))

(declare-fun findLongestMatch!939 (Regex!10463 List!38368) tuple2!38118)

(assert (=> d!1067445 (= lt!1255567 (findLongestMatch!939 (regex!5704 (rule!8474 lt!1255511)) lt!1255497))))

(assert (=> d!1067445 (ruleValid!1968 thiss!23823 (rule!8474 lt!1255511))))

(assert (=> d!1067445 (= (maxPrefixOneRule!1967 thiss!23823 (rule!8474 lt!1255511) lt!1255497) lt!1255568)))

(declare-fun b!3629869 () Bool)

(assert (=> b!3629869 (= e!2246923 None!8036)))

(declare-fun b!3629870 () Bool)

(declare-fun res!1469858 () Bool)

(assert (=> b!3629870 (=> (not res!1469858) (not e!2246922))))

(assert (=> b!3629870 (= res!1469858 (< (size!29181 (_2!22190 (get!12499 lt!1255568))) (size!29181 lt!1255497)))))

(declare-fun b!3629871 () Bool)

(declare-fun res!1469864 () Bool)

(assert (=> b!3629871 (=> (not res!1469864) (not e!2246922))))

(assert (=> b!3629871 (= res!1469864 (= (rule!8474 (_1!22190 (get!12499 lt!1255568))) (rule!8474 lt!1255511)))))

(declare-fun b!3629872 () Bool)

(assert (=> b!3629872 (= e!2246921 e!2246922)))

(declare-fun res!1469863 () Bool)

(assert (=> b!3629872 (=> (not res!1469863) (not e!2246922))))

(assert (=> b!3629872 (= res!1469863 (matchR!5032 (regex!5704 (rule!8474 lt!1255511)) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255568))))))))

(declare-fun b!3629873 () Bool)

(assert (=> b!3629873 (= e!2246920 (matchR!5032 (regex!5704 (rule!8474 lt!1255511)) (_1!22193 (findLongestMatchInner!1024 (regex!5704 (rule!8474 lt!1255511)) Nil!38244 (size!29181 Nil!38244) lt!1255497 lt!1255497 (size!29181 lt!1255497)))))))

(assert (= (and d!1067445 c!627960) b!3629869))

(assert (= (and d!1067445 (not c!627960)) b!3629865))

(assert (= (and b!3629865 (not res!1469862)) b!3629873))

(assert (= (and d!1067445 (not res!1469860)) b!3629872))

(assert (= (and b!3629872 res!1469863) b!3629868))

(assert (= (and b!3629868 res!1469861) b!3629870))

(assert (= (and b!3629870 res!1469858) b!3629871))

(assert (= (and b!3629871 res!1469864) b!3629867))

(assert (= (and b!3629867 res!1469859) b!3629866))

(declare-fun m!4131001 () Bool)

(assert (=> b!3629872 m!4131001))

(declare-fun m!4131003 () Bool)

(assert (=> b!3629872 m!4131003))

(assert (=> b!3629872 m!4131003))

(declare-fun m!4131005 () Bool)

(assert (=> b!3629872 m!4131005))

(assert (=> b!3629872 m!4131005))

(declare-fun m!4131007 () Bool)

(assert (=> b!3629872 m!4131007))

(declare-fun m!4131009 () Bool)

(assert (=> b!3629865 m!4131009))

(declare-fun m!4131011 () Bool)

(assert (=> b!3629865 m!4131011))

(declare-fun m!4131013 () Bool)

(assert (=> b!3629865 m!4131013))

(declare-fun m!4131015 () Bool)

(assert (=> b!3629865 m!4131015))

(declare-fun m!4131017 () Bool)

(assert (=> b!3629865 m!4131017))

(declare-fun m!4131019 () Bool)

(assert (=> b!3629865 m!4131019))

(assert (=> b!3629865 m!4131011))

(assert (=> b!3629865 m!4131017))

(declare-fun m!4131021 () Bool)

(assert (=> b!3629865 m!4131021))

(assert (=> b!3629865 m!4131017))

(declare-fun m!4131023 () Bool)

(assert (=> b!3629865 m!4131023))

(assert (=> b!3629865 m!4131017))

(declare-fun m!4131025 () Bool)

(assert (=> b!3629865 m!4131025))

(assert (=> b!3629865 m!4131009))

(declare-fun m!4131027 () Bool)

(assert (=> d!1067445 m!4131027))

(declare-fun m!4131029 () Bool)

(assert (=> d!1067445 m!4131029))

(declare-fun m!4131031 () Bool)

(assert (=> d!1067445 m!4131031))

(declare-fun m!4131033 () Bool)

(assert (=> d!1067445 m!4131033))

(assert (=> b!3629866 m!4131001))

(declare-fun m!4131035 () Bool)

(assert (=> b!3629866 m!4131035))

(assert (=> b!3629868 m!4131001))

(assert (=> b!3629868 m!4131003))

(assert (=> b!3629868 m!4131003))

(assert (=> b!3629868 m!4131005))

(assert (=> b!3629868 m!4131005))

(declare-fun m!4131037 () Bool)

(assert (=> b!3629868 m!4131037))

(assert (=> b!3629871 m!4131001))

(assert (=> b!3629870 m!4131001))

(declare-fun m!4131039 () Bool)

(assert (=> b!3629870 m!4131039))

(assert (=> b!3629870 m!4131011))

(assert (=> b!3629873 m!4131009))

(assert (=> b!3629873 m!4131011))

(assert (=> b!3629873 m!4131009))

(assert (=> b!3629873 m!4131011))

(assert (=> b!3629873 m!4131013))

(declare-fun m!4131041 () Bool)

(assert (=> b!3629873 m!4131041))

(assert (=> b!3629867 m!4131001))

(declare-fun m!4131043 () Bool)

(assert (=> b!3629867 m!4131043))

(assert (=> b!3629867 m!4131043))

(declare-fun m!4131045 () Bool)

(assert (=> b!3629867 m!4131045))

(assert (=> b!3629540 d!1067445))

(declare-fun d!1067473 () Bool)

(assert (=> d!1067473 (= (isEmpty!22622 (maxPrefixOneRule!1967 thiss!23823 (rule!8474 lt!1255511) lt!1255497)) (not ((_ is Some!8036) (maxPrefixOneRule!1967 thiss!23823 (rule!8474 lt!1255511) lt!1255497))))))

(assert (=> b!3629540 d!1067473))

(declare-fun b!3629875 () Bool)

(declare-fun e!2246925 () Bool)

(assert (=> b!3629875 (= e!2246925 (matchR!5032 (derivativeStep!3169 (regex!5704 (rule!8474 lt!1255511)) (head!7682 lt!1255501)) (tail!5619 lt!1255501)))))

(declare-fun b!3629876 () Bool)

(declare-fun e!2246929 () Bool)

(declare-fun e!2246924 () Bool)

(assert (=> b!3629876 (= e!2246929 e!2246924)))

(declare-fun res!1469866 () Bool)

(assert (=> b!3629876 (=> (not res!1469866) (not e!2246924))))

(declare-fun lt!1255572 () Bool)

(assert (=> b!3629876 (= res!1469866 (not lt!1255572))))

(declare-fun b!3629877 () Bool)

(declare-fun e!2246926 () Bool)

(declare-fun call!262544 () Bool)

(assert (=> b!3629877 (= e!2246926 (= lt!1255572 call!262544))))

(declare-fun b!3629878 () Bool)

(declare-fun e!2246930 () Bool)

(assert (=> b!3629878 (= e!2246926 e!2246930)))

(declare-fun c!627962 () Bool)

(assert (=> b!3629878 (= c!627962 ((_ is EmptyLang!10463) (regex!5704 (rule!8474 lt!1255511))))))

(declare-fun b!3629879 () Bool)

(assert (=> b!3629879 (= e!2246930 (not lt!1255572))))

(declare-fun b!3629880 () Bool)

(declare-fun res!1469871 () Bool)

(assert (=> b!3629880 (=> res!1469871 e!2246929)))

(assert (=> b!3629880 (= res!1469871 (not ((_ is ElementMatch!10463) (regex!5704 (rule!8474 lt!1255511)))))))

(assert (=> b!3629880 (= e!2246930 e!2246929)))

(declare-fun b!3629881 () Bool)

(assert (=> b!3629881 (= e!2246925 (nullable!3620 (regex!5704 (rule!8474 lt!1255511))))))

(declare-fun b!3629882 () Bool)

(declare-fun res!1469869 () Bool)

(declare-fun e!2246927 () Bool)

(assert (=> b!3629882 (=> res!1469869 e!2246927)))

(assert (=> b!3629882 (= res!1469869 (not (isEmpty!22618 (tail!5619 lt!1255501))))))

(declare-fun b!3629883 () Bool)

(assert (=> b!3629883 (= e!2246927 (not (= (head!7682 lt!1255501) (c!627780 (regex!5704 (rule!8474 lt!1255511))))))))

(declare-fun bm!262539 () Bool)

(assert (=> bm!262539 (= call!262544 (isEmpty!22618 lt!1255501))))

(declare-fun d!1067475 () Bool)

(assert (=> d!1067475 e!2246926))

(declare-fun c!627963 () Bool)

(assert (=> d!1067475 (= c!627963 ((_ is EmptyExpr!10463) (regex!5704 (rule!8474 lt!1255511))))))

(assert (=> d!1067475 (= lt!1255572 e!2246925)))

(declare-fun c!627961 () Bool)

(assert (=> d!1067475 (= c!627961 (isEmpty!22618 lt!1255501))))

(assert (=> d!1067475 (validRegex!4782 (regex!5704 (rule!8474 lt!1255511)))))

(assert (=> d!1067475 (= (matchR!5032 (regex!5704 (rule!8474 lt!1255511)) lt!1255501) lt!1255572)))

(declare-fun b!3629874 () Bool)

(declare-fun res!1469867 () Bool)

(declare-fun e!2246928 () Bool)

(assert (=> b!3629874 (=> (not res!1469867) (not e!2246928))))

(assert (=> b!3629874 (= res!1469867 (not call!262544))))

(declare-fun b!3629884 () Bool)

(declare-fun res!1469870 () Bool)

(assert (=> b!3629884 (=> (not res!1469870) (not e!2246928))))

(assert (=> b!3629884 (= res!1469870 (isEmpty!22618 (tail!5619 lt!1255501)))))

(declare-fun b!3629885 () Bool)

(assert (=> b!3629885 (= e!2246928 (= (head!7682 lt!1255501) (c!627780 (regex!5704 (rule!8474 lt!1255511)))))))

(declare-fun b!3629886 () Bool)

(assert (=> b!3629886 (= e!2246924 e!2246927)))

(declare-fun res!1469872 () Bool)

(assert (=> b!3629886 (=> res!1469872 e!2246927)))

(assert (=> b!3629886 (= res!1469872 call!262544)))

(declare-fun b!3629887 () Bool)

(declare-fun res!1469865 () Bool)

(assert (=> b!3629887 (=> res!1469865 e!2246929)))

(assert (=> b!3629887 (= res!1469865 e!2246928)))

(declare-fun res!1469868 () Bool)

(assert (=> b!3629887 (=> (not res!1469868) (not e!2246928))))

(assert (=> b!3629887 (= res!1469868 lt!1255572)))

(assert (= (and d!1067475 c!627961) b!3629881))

(assert (= (and d!1067475 (not c!627961)) b!3629875))

(assert (= (and d!1067475 c!627963) b!3629877))

(assert (= (and d!1067475 (not c!627963)) b!3629878))

(assert (= (and b!3629878 c!627962) b!3629879))

(assert (= (and b!3629878 (not c!627962)) b!3629880))

(assert (= (and b!3629880 (not res!1469871)) b!3629887))

(assert (= (and b!3629887 res!1469868) b!3629874))

(assert (= (and b!3629874 res!1469867) b!3629884))

(assert (= (and b!3629884 res!1469870) b!3629885))

(assert (= (and b!3629887 (not res!1469865)) b!3629876))

(assert (= (and b!3629876 res!1469866) b!3629886))

(assert (= (and b!3629886 (not res!1469872)) b!3629882))

(assert (= (and b!3629882 (not res!1469869)) b!3629883))

(assert (= (or b!3629877 b!3629874 b!3629886) bm!262539))

(declare-fun m!4131047 () Bool)

(assert (=> b!3629884 m!4131047))

(assert (=> b!3629884 m!4131047))

(declare-fun m!4131049 () Bool)

(assert (=> b!3629884 m!4131049))

(declare-fun m!4131051 () Bool)

(assert (=> bm!262539 m!4131051))

(declare-fun m!4131053 () Bool)

(assert (=> b!3629881 m!4131053))

(assert (=> d!1067475 m!4131051))

(declare-fun m!4131055 () Bool)

(assert (=> d!1067475 m!4131055))

(declare-fun m!4131057 () Bool)

(assert (=> b!3629883 m!4131057))

(assert (=> b!3629882 m!4131047))

(assert (=> b!3629882 m!4131047))

(assert (=> b!3629882 m!4131049))

(assert (=> b!3629875 m!4131057))

(assert (=> b!3629875 m!4131057))

(declare-fun m!4131059 () Bool)

(assert (=> b!3629875 m!4131059))

(assert (=> b!3629875 m!4131047))

(assert (=> b!3629875 m!4131059))

(assert (=> b!3629875 m!4131047))

(declare-fun m!4131061 () Bool)

(assert (=> b!3629875 m!4131061))

(assert (=> b!3629885 m!4131057))

(assert (=> b!3629540 d!1067475))

(declare-fun d!1067477 () Bool)

(assert (=> d!1067477 (= (isEmpty!22623 lt!1255436) (not ((_ is Some!8035) lt!1255436)))))

(assert (=> d!1067263 d!1067477))

(assert (=> d!1067263 d!1067229))

(declare-fun d!1067479 () Bool)

(assert (=> d!1067479 (= (isDefined!6269 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))) (not (isEmpty!22623 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))

(declare-fun bs!571530 () Bool)

(assert (= bs!571530 d!1067479))

(assert (=> bs!571530 m!4129999))

(declare-fun m!4131063 () Bool)

(assert (=> bs!571530 m!4131063))

(assert (=> d!1067351 d!1067479))

(assert (=> d!1067351 d!1067263))

(declare-fun d!1067481 () Bool)

(declare-fun e!2246943 () Bool)

(assert (=> d!1067481 e!2246943))

(declare-fun res!1469877 () Bool)

(assert (=> d!1067481 (=> (not res!1469877) (not e!2246943))))

(assert (=> d!1067481 (= res!1469877 (isDefined!6269 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> d!1067481 true))

(declare-fun _$52!2073 () Unit!55058)

(assert (=> d!1067481 (= (choose!21312 thiss!23823 rules!3307 lt!1255273 (_1!22190 lt!1255278)) _$52!2073)))

(declare-fun b!3629912 () Bool)

(declare-fun res!1469878 () Bool)

(assert (=> b!3629912 (=> (not res!1469878) (not e!2246943))))

(assert (=> b!3629912 (= res!1469878 (matchR!5032 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))) (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-fun b!3629913 () Bool)

(assert (=> b!3629913 (= e!2246943 (= (rule!8474 (_1!22190 lt!1255278)) (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))

(assert (= (and d!1067481 res!1469877) b!3629912))

(assert (= (and b!3629912 res!1469878) b!3629913))

(assert (=> d!1067481 m!4129999))

(assert (=> d!1067481 m!4129999))

(assert (=> d!1067481 m!4130753))

(assert (=> b!3629912 m!4129999))

(assert (=> b!3629912 m!4130759))

(assert (=> b!3629912 m!4129967))

(assert (=> b!3629912 m!4129969))

(assert (=> b!3629912 m!4130757))

(assert (=> b!3629912 m!4129999))

(assert (=> b!3629912 m!4129967))

(assert (=> b!3629912 m!4129969))

(assert (=> b!3629913 m!4129999))

(assert (=> b!3629913 m!4129999))

(assert (=> b!3629913 m!4130759))

(assert (=> d!1067351 d!1067481))

(assert (=> d!1067351 d!1067229))

(declare-fun d!1067483 () Bool)

(declare-fun lt!1255577 () Int)

(assert (=> d!1067483 (>= lt!1255577 0)))

(declare-fun e!2246946 () Int)

(assert (=> d!1067483 (= lt!1255577 e!2246946)))

(declare-fun c!627976 () Bool)

(assert (=> d!1067483 (= c!627976 ((_ is Nil!38244) lt!1255273))))

(assert (=> d!1067483 (= (size!29181 lt!1255273) lt!1255577)))

(declare-fun b!3629918 () Bool)

(assert (=> b!3629918 (= e!2246946 0)))

(declare-fun b!3629919 () Bool)

(assert (=> b!3629919 (= e!2246946 (+ 1 (size!29181 (t!294963 lt!1255273))))))

(assert (= (and d!1067483 c!627976) b!3629918))

(assert (= (and d!1067483 (not c!627976)) b!3629919))

(declare-fun m!4131065 () Bool)

(assert (=> b!3629919 m!4131065))

(assert (=> b!3629571 d!1067483))

(declare-fun d!1067485 () Bool)

(declare-fun lt!1255578 () Int)

(assert (=> d!1067485 (>= lt!1255578 0)))

(declare-fun e!2246947 () Int)

(assert (=> d!1067485 (= lt!1255578 e!2246947)))

(declare-fun c!627977 () Bool)

(assert (=> d!1067485 (= c!627977 ((_ is Nil!38244) lt!1255264))))

(assert (=> d!1067485 (= (size!29181 lt!1255264) lt!1255578)))

(declare-fun b!3629920 () Bool)

(assert (=> b!3629920 (= e!2246947 0)))

(declare-fun b!3629921 () Bool)

(assert (=> b!3629921 (= e!2246947 (+ 1 (size!29181 (t!294963 lt!1255264))))))

(assert (= (and d!1067485 c!627977) b!3629920))

(assert (= (and d!1067485 (not c!627977)) b!3629921))

(declare-fun m!4131067 () Bool)

(assert (=> b!3629921 m!4131067))

(assert (=> b!3629571 d!1067485))

(assert (=> b!3629373 d!1067413))

(declare-fun d!1067487 () Bool)

(declare-fun c!627978 () Bool)

(assert (=> d!1067487 (= c!627978 ((_ is Nil!38244) lt!1255525))))

(declare-fun e!2246948 () (InoxSet C!21112))

(assert (=> d!1067487 (= (content!5483 lt!1255525) e!2246948)))

(declare-fun b!3629922 () Bool)

(assert (=> b!3629922 (= e!2246948 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3629923 () Bool)

(assert (=> b!3629923 (= e!2246948 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 lt!1255525) true) (content!5483 (t!294963 lt!1255525))))))

(assert (= (and d!1067487 c!627978) b!3629922))

(assert (= (and d!1067487 (not c!627978)) b!3629923))

(declare-fun m!4131069 () Bool)

(assert (=> b!3629923 m!4131069))

(declare-fun m!4131071 () Bool)

(assert (=> b!3629923 m!4131071))

(assert (=> d!1067347 d!1067487))

(declare-fun d!1067489 () Bool)

(declare-fun c!627979 () Bool)

(assert (=> d!1067489 (= c!627979 ((_ is Nil!38244) lt!1255264))))

(declare-fun e!2246949 () (InoxSet C!21112))

(assert (=> d!1067489 (= (content!5483 lt!1255264) e!2246949)))

(declare-fun b!3629924 () Bool)

(assert (=> b!3629924 (= e!2246949 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3629925 () Bool)

(assert (=> b!3629925 (= e!2246949 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 lt!1255264) true) (content!5483 (t!294963 lt!1255264))))))

(assert (= (and d!1067489 c!627979) b!3629924))

(assert (= (and d!1067489 (not c!627979)) b!3629925))

(declare-fun m!4131073 () Bool)

(assert (=> b!3629925 m!4131073))

(declare-fun m!4131075 () Bool)

(assert (=> b!3629925 m!4131075))

(assert (=> d!1067347 d!1067489))

(declare-fun d!1067491 () Bool)

(declare-fun c!627980 () Bool)

(assert (=> d!1067491 (= c!627980 ((_ is Nil!38244) (_2!22190 lt!1255278)))))

(declare-fun e!2246950 () (InoxSet C!21112))

(assert (=> d!1067491 (= (content!5483 (_2!22190 lt!1255278)) e!2246950)))

(declare-fun b!3629926 () Bool)

(assert (=> b!3629926 (= e!2246950 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3629927 () Bool)

(assert (=> b!3629927 (= e!2246950 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 (_2!22190 lt!1255278)) true) (content!5483 (t!294963 (_2!22190 lt!1255278)))))))

(assert (= (and d!1067491 c!627980) b!3629926))

(assert (= (and d!1067491 (not c!627980)) b!3629927))

(declare-fun m!4131077 () Bool)

(assert (=> b!3629927 m!4131077))

(declare-fun m!4131079 () Bool)

(assert (=> b!3629927 m!4131079))

(assert (=> d!1067347 d!1067491))

(declare-fun d!1067493 () Bool)

(declare-fun lt!1255579 () Int)

(assert (=> d!1067493 (>= lt!1255579 0)))

(declare-fun e!2246951 () Int)

(assert (=> d!1067493 (= lt!1255579 e!2246951)))

(declare-fun c!627981 () Bool)

(assert (=> d!1067493 (= c!627981 ((_ is Nil!38244) (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))

(assert (=> d!1067493 (= (size!29181 (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))) lt!1255579)))

(declare-fun b!3629928 () Bool)

(assert (=> b!3629928 (= e!2246951 0)))

(declare-fun b!3629929 () Bool)

(assert (=> b!3629929 (= e!2246951 (+ 1 (size!29181 (t!294963 (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(assert (= (and d!1067493 c!627981) b!3629928))

(assert (= (and d!1067493 (not c!627981)) b!3629929))

(declare-fun m!4131081 () Bool)

(assert (=> b!3629929 m!4131081))

(assert (=> b!3629337 d!1067493))

(declare-fun d!1067495 () Bool)

(assert (=> d!1067495 (= (isEmpty!22618 lt!1255264) ((_ is Nil!38244) lt!1255264))))

(assert (=> d!1067209 d!1067495))

(declare-fun b!3629930 () Bool)

(declare-fun e!2246953 () Bool)

(declare-fun e!2246957 () Bool)

(assert (=> b!3629930 (= e!2246953 e!2246957)))

(declare-fun res!1469879 () Bool)

(assert (=> b!3629930 (=> (not res!1469879) (not e!2246957))))

(declare-fun call!262553 () Bool)

(assert (=> b!3629930 (= res!1469879 call!262553)))

(declare-fun bm!262548 () Bool)

(declare-fun c!627982 () Bool)

(assert (=> bm!262548 (= call!262553 (validRegex!4782 (ite c!627982 (regTwo!21439 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (regOne!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))))

(declare-fun call!262555 () Bool)

(declare-fun bm!262549 () Bool)

(declare-fun c!627983 () Bool)

(assert (=> bm!262549 (= call!262555 (validRegex!4782 (ite c!627983 (reg!10792 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (ite c!627982 (regOne!21439 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (regTwo!21438 (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))))))

(declare-fun b!3629932 () Bool)

(declare-fun e!2246954 () Bool)

(assert (=> b!3629932 (= e!2246954 call!262555)))

(declare-fun b!3629933 () Bool)

(declare-fun e!2246952 () Bool)

(declare-fun e!2246955 () Bool)

(assert (=> b!3629933 (= e!2246952 e!2246955)))

(assert (=> b!3629933 (= c!627983 ((_ is Star!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3629934 () Bool)

(declare-fun e!2246958 () Bool)

(assert (=> b!3629934 (= e!2246958 call!262553)))

(declare-fun b!3629935 () Bool)

(assert (=> b!3629935 (= e!2246955 e!2246954)))

(declare-fun res!1469880 () Bool)

(assert (=> b!3629935 (= res!1469880 (not (nullable!3620 (reg!10792 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))))

(assert (=> b!3629935 (=> (not res!1469880) (not e!2246954))))

(declare-fun bm!262550 () Bool)

(declare-fun call!262554 () Bool)

(assert (=> bm!262550 (= call!262554 call!262555)))

(declare-fun b!3629936 () Bool)

(declare-fun e!2246956 () Bool)

(assert (=> b!3629936 (= e!2246955 e!2246956)))

(assert (=> b!3629936 (= c!627982 ((_ is Union!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3629937 () Bool)

(declare-fun res!1469881 () Bool)

(assert (=> b!3629937 (=> (not res!1469881) (not e!2246958))))

(assert (=> b!3629937 (= res!1469881 call!262554)))

(assert (=> b!3629937 (= e!2246956 e!2246958)))

(declare-fun b!3629938 () Bool)

(declare-fun res!1469882 () Bool)

(assert (=> b!3629938 (=> res!1469882 e!2246953)))

(assert (=> b!3629938 (= res!1469882 (not ((_ is Concat!16397) (regex!5704 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> b!3629938 (= e!2246956 e!2246953)))

(declare-fun d!1067497 () Bool)

(declare-fun res!1469883 () Bool)

(assert (=> d!1067497 (=> res!1469883 e!2246952)))

(assert (=> d!1067497 (= res!1469883 ((_ is ElementMatch!10463) (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(assert (=> d!1067497 (= (validRegex!4782 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) e!2246952)))

(declare-fun b!3629931 () Bool)

(assert (=> b!3629931 (= e!2246957 call!262554)))

(assert (= (and d!1067497 (not res!1469883)) b!3629933))

(assert (= (and b!3629933 c!627983) b!3629935))

(assert (= (and b!3629933 (not c!627983)) b!3629936))

(assert (= (and b!3629935 res!1469880) b!3629932))

(assert (= (and b!3629936 c!627982) b!3629937))

(assert (= (and b!3629936 (not c!627982)) b!3629938))

(assert (= (and b!3629937 res!1469881) b!3629934))

(assert (= (and b!3629938 (not res!1469882)) b!3629930))

(assert (= (and b!3629930 res!1469879) b!3629931))

(assert (= (or b!3629937 b!3629931) bm!262550))

(assert (= (or b!3629934 b!3629930) bm!262548))

(assert (= (or b!3629932 bm!262550) bm!262549))

(declare-fun m!4131083 () Bool)

(assert (=> bm!262548 m!4131083))

(declare-fun m!4131085 () Bool)

(assert (=> bm!262549 m!4131085))

(declare-fun m!4131087 () Bool)

(assert (=> b!3629935 m!4131087))

(assert (=> d!1067209 d!1067497))

(declare-fun b!3629941 () Bool)

(declare-fun res!1469884 () Bool)

(declare-fun e!2246960 () Bool)

(assert (=> b!3629941 (=> (not res!1469884) (not e!2246960))))

(declare-fun lt!1255580 () List!38368)

(assert (=> b!3629941 (= res!1469884 (= (size!29181 lt!1255580) (+ (size!29181 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) (size!29181 (_2!22190 (get!12499 lt!1255339))))))))

(declare-fun b!3629939 () Bool)

(declare-fun e!2246959 () List!38368)

(assert (=> b!3629939 (= e!2246959 (_2!22190 (get!12499 lt!1255339)))))

(declare-fun d!1067499 () Bool)

(assert (=> d!1067499 e!2246960))

(declare-fun res!1469885 () Bool)

(assert (=> d!1067499 (=> (not res!1469885) (not e!2246960))))

(assert (=> d!1067499 (= res!1469885 (= (content!5483 lt!1255580) ((_ map or) (content!5483 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) (content!5483 (_2!22190 (get!12499 lt!1255339))))))))

(assert (=> d!1067499 (= lt!1255580 e!2246959)))

(declare-fun c!627984 () Bool)

(assert (=> d!1067499 (= c!627984 ((_ is Nil!38244) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))))))

(assert (=> d!1067499 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))) (_2!22190 (get!12499 lt!1255339))) lt!1255580)))

(declare-fun b!3629942 () Bool)

(assert (=> b!3629942 (= e!2246960 (or (not (= (_2!22190 (get!12499 lt!1255339)) Nil!38244)) (= lt!1255580 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339)))))))))

(declare-fun b!3629940 () Bool)

(assert (=> b!3629940 (= e!2246959 (Cons!38244 (h!43664 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) (++!9520 (t!294963 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255339))))) (_2!22190 (get!12499 lt!1255339)))))))

(assert (= (and d!1067499 c!627984) b!3629939))

(assert (= (and d!1067499 (not c!627984)) b!3629940))

(assert (= (and d!1067499 res!1469885) b!3629941))

(assert (= (and b!3629941 res!1469884) b!3629942))

(declare-fun m!4131089 () Bool)

(assert (=> b!3629941 m!4131089))

(assert (=> b!3629941 m!4130209))

(declare-fun m!4131091 () Bool)

(assert (=> b!3629941 m!4131091))

(assert (=> b!3629941 m!4130231))

(declare-fun m!4131093 () Bool)

(assert (=> d!1067499 m!4131093))

(assert (=> d!1067499 m!4130209))

(declare-fun m!4131095 () Bool)

(assert (=> d!1067499 m!4131095))

(declare-fun m!4131097 () Bool)

(assert (=> d!1067499 m!4131097))

(declare-fun m!4131099 () Bool)

(assert (=> b!3629940 m!4131099))

(assert (=> b!3629137 d!1067499))

(assert (=> b!3629137 d!1067389))

(assert (=> b!3629137 d!1067391))

(assert (=> b!3629137 d!1067387))

(declare-fun d!1067501 () Bool)

(assert (=> d!1067501 (= (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))) (list!14133 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))))

(declare-fun bs!571531 () Bool)

(assert (= bs!571531 d!1067501))

(declare-fun m!4131101 () Bool)

(assert (=> bs!571531 m!4131101))

(assert (=> b!3629606 d!1067501))

(declare-fun d!1067503 () Bool)

(declare-fun isBalanced!3502 (Conc!11667) Bool)

(assert (=> d!1067503 (= (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))) (isBalanced!3502 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))))))

(declare-fun bs!571532 () Bool)

(assert (= bs!571532 d!1067503))

(declare-fun m!4131103 () Bool)

(assert (=> bs!571532 m!4131103))

(assert (=> tb!208365 d!1067503))

(declare-fun b!3629946 () Bool)

(declare-fun e!2246963 () Bool)

(assert (=> b!3629946 (= e!2246963 (>= (size!29181 (tail!5619 lt!1255273)) (size!29181 (tail!5619 lt!1255280))))))

(declare-fun d!1067505 () Bool)

(assert (=> d!1067505 e!2246963))

(declare-fun res!1469889 () Bool)

(assert (=> d!1067505 (=> res!1469889 e!2246963)))

(declare-fun lt!1255581 () Bool)

(assert (=> d!1067505 (= res!1469889 (not lt!1255581))))

(declare-fun e!2246962 () Bool)

(assert (=> d!1067505 (= lt!1255581 e!2246962)))

(declare-fun res!1469886 () Bool)

(assert (=> d!1067505 (=> res!1469886 e!2246962)))

(assert (=> d!1067505 (= res!1469886 ((_ is Nil!38244) (tail!5619 lt!1255280)))))

(assert (=> d!1067505 (= (isPrefix!3067 (tail!5619 lt!1255280) (tail!5619 lt!1255273)) lt!1255581)))

(declare-fun b!3629945 () Bool)

(declare-fun e!2246961 () Bool)

(assert (=> b!3629945 (= e!2246961 (isPrefix!3067 (tail!5619 (tail!5619 lt!1255280)) (tail!5619 (tail!5619 lt!1255273))))))

(declare-fun b!3629944 () Bool)

(declare-fun res!1469888 () Bool)

(assert (=> b!3629944 (=> (not res!1469888) (not e!2246961))))

(assert (=> b!3629944 (= res!1469888 (= (head!7682 (tail!5619 lt!1255280)) (head!7682 (tail!5619 lt!1255273))))))

(declare-fun b!3629943 () Bool)

(assert (=> b!3629943 (= e!2246962 e!2246961)))

(declare-fun res!1469887 () Bool)

(assert (=> b!3629943 (=> (not res!1469887) (not e!2246961))))

(assert (=> b!3629943 (= res!1469887 (not ((_ is Nil!38244) (tail!5619 lt!1255273))))))

(assert (= (and d!1067505 (not res!1469886)) b!3629943))

(assert (= (and b!3629943 res!1469887) b!3629944))

(assert (= (and b!3629944 res!1469888) b!3629945))

(assert (= (and d!1067505 (not res!1469889)) b!3629946))

(assert (=> b!3629946 m!4130483))

(assert (=> b!3629946 m!4130897))

(assert (=> b!3629946 m!4130275))

(declare-fun m!4131105 () Bool)

(assert (=> b!3629946 m!4131105))

(assert (=> b!3629945 m!4130275))

(declare-fun m!4131107 () Bool)

(assert (=> b!3629945 m!4131107))

(assert (=> b!3629945 m!4130483))

(assert (=> b!3629945 m!4130901))

(assert (=> b!3629945 m!4131107))

(assert (=> b!3629945 m!4130901))

(declare-fun m!4131109 () Bool)

(assert (=> b!3629945 m!4131109))

(assert (=> b!3629944 m!4130275))

(declare-fun m!4131111 () Bool)

(assert (=> b!3629944 m!4131111))

(assert (=> b!3629944 m!4130483))

(assert (=> b!3629944 m!4130905))

(assert (=> b!3629391 d!1067505))

(assert (=> b!3629391 d!1067417))

(assert (=> b!3629391 d!1067421))

(assert (=> bm!262478 d!1067495))

(declare-fun d!1067507 () Bool)

(declare-fun lt!1255583 () Int)

(assert (=> d!1067507 (>= lt!1255583 0)))

(declare-fun e!2246969 () Int)

(assert (=> d!1067507 (= lt!1255583 e!2246969)))

(declare-fun c!627990 () Bool)

(assert (=> d!1067507 (= c!627990 ((_ is Nil!38244) (++!9520 lt!1255264 (_2!22190 lt!1255278))))))

(assert (=> d!1067507 (= (size!29181 (++!9520 lt!1255264 (_2!22190 lt!1255278))) lt!1255583)))

(declare-fun b!3629957 () Bool)

(assert (=> b!3629957 (= e!2246969 0)))

(declare-fun b!3629958 () Bool)

(assert (=> b!3629958 (= e!2246969 (+ 1 (size!29181 (t!294963 (++!9520 lt!1255264 (_2!22190 lt!1255278))))))))

(assert (= (and d!1067507 c!627990) b!3629957))

(assert (= (and d!1067507 (not c!627990)) b!3629958))

(declare-fun m!4131113 () Bool)

(assert (=> b!3629958 m!4131113))

(assert (=> b!3629555 d!1067507))

(assert (=> b!3629555 d!1067485))

(declare-fun d!1067509 () Bool)

(assert (=> d!1067509 (= (isEmpty!22618 (originalCharacters!6418 token!511)) ((_ is Nil!38244) (originalCharacters!6418 token!511)))))

(assert (=> d!1067379 d!1067509))

(declare-fun b!3629959 () Bool)

(declare-fun e!2246973 () List!38368)

(declare-fun call!262562 () List!38368)

(assert (=> b!3629959 (= e!2246973 call!262562)))

(declare-fun c!627993 () Bool)

(declare-fun c!627992 () Bool)

(declare-fun call!262561 () List!38368)

(declare-fun bm!262555 () Bool)

(assert (=> bm!262555 (= call!262561 (usedCharacters!916 (ite c!627992 (reg!10792 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) (ite c!627993 (regOne!21439 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) (regTwo!21438 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33))))))))))

(declare-fun call!262563 () List!38368)

(declare-fun bm!262556 () Bool)

(assert (=> bm!262556 (= call!262563 (usedCharacters!916 (ite c!627993 (regTwo!21439 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) (regOne!21438 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))))))))

(declare-fun d!1067511 () Bool)

(declare-fun c!627994 () Bool)

(assert (=> d!1067511 (= c!627994 (or ((_ is EmptyExpr!10463) (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) ((_ is EmptyLang!10463) (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33))))))))

(declare-fun e!2246970 () List!38368)

(assert (=> d!1067511 (= (usedCharacters!916 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) e!2246970)))

(declare-fun b!3629960 () Bool)

(declare-fun e!2246971 () List!38368)

(assert (=> b!3629960 (= e!2246970 e!2246971)))

(declare-fun c!627991 () Bool)

(assert (=> b!3629960 (= c!627991 ((_ is ElementMatch!10463) (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))))))

(declare-fun b!3629961 () Bool)

(declare-fun e!2246972 () List!38368)

(assert (=> b!3629961 (= e!2246972 call!262561)))

(declare-fun bm!262557 () Bool)

(declare-fun call!262560 () List!38368)

(assert (=> bm!262557 (= call!262560 call!262561)))

(declare-fun b!3629962 () Bool)

(assert (=> b!3629962 (= e!2246971 (Cons!38244 (c!627780 (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) Nil!38244))))

(declare-fun b!3629963 () Bool)

(assert (=> b!3629963 (= e!2246970 Nil!38244)))

(declare-fun b!3629964 () Bool)

(assert (=> b!3629964 (= c!627992 ((_ is Star!10463) (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))))))

(assert (=> b!3629964 (= e!2246971 e!2246972)))

(declare-fun bm!262558 () Bool)

(assert (=> bm!262558 (= call!262562 (++!9520 (ite c!627993 call!262560 call!262563) (ite c!627993 call!262563 call!262560)))))

(declare-fun b!3629965 () Bool)

(assert (=> b!3629965 (= e!2246973 call!262562)))

(declare-fun b!3629966 () Bool)

(assert (=> b!3629966 (= e!2246972 e!2246973)))

(assert (=> b!3629966 (= c!627993 ((_ is Union!10463) (ite c!627855 (regTwo!21439 (regex!5704 anOtherTypeRule!33)) (regOne!21438 (regex!5704 anOtherTypeRule!33)))))))

(assert (= (and d!1067511 c!627994) b!3629963))

(assert (= (and d!1067511 (not c!627994)) b!3629960))

(assert (= (and b!3629960 c!627991) b!3629962))

(assert (= (and b!3629960 (not c!627991)) b!3629964))

(assert (= (and b!3629964 c!627992) b!3629961))

(assert (= (and b!3629964 (not c!627992)) b!3629966))

(assert (= (and b!3629966 c!627993) b!3629965))

(assert (= (and b!3629966 (not c!627993)) b!3629959))

(assert (= (or b!3629965 b!3629959) bm!262557))

(assert (= (or b!3629965 b!3629959) bm!262556))

(assert (= (or b!3629965 b!3629959) bm!262558))

(assert (= (or b!3629961 bm!262557) bm!262555))

(declare-fun m!4131115 () Bool)

(assert (=> bm!262555 m!4131115))

(declare-fun m!4131117 () Bool)

(assert (=> bm!262556 m!4131117))

(declare-fun m!4131119 () Bool)

(assert (=> bm!262558 m!4131119))

(assert (=> bm!262496 d!1067511))

(declare-fun d!1067513 () Bool)

(declare-fun c!627995 () Bool)

(assert (=> d!1067513 (= c!627995 ((_ is Nil!38244) (usedCharacters!916 (regex!5704 rule!403))))))

(declare-fun e!2246974 () (InoxSet C!21112))

(assert (=> d!1067513 (= (content!5483 (usedCharacters!916 (regex!5704 rule!403))) e!2246974)))

(declare-fun b!3629967 () Bool)

(assert (=> b!3629967 (= e!2246974 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3629968 () Bool)

(assert (=> b!3629968 (= e!2246974 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 (usedCharacters!916 (regex!5704 rule!403))) true) (content!5483 (t!294963 (usedCharacters!916 (regex!5704 rule!403))))))))

(assert (= (and d!1067513 c!627995) b!3629967))

(assert (= (and d!1067513 (not c!627995)) b!3629968))

(declare-fun m!4131121 () Bool)

(assert (=> b!3629968 m!4131121))

(declare-fun m!4131125 () Bool)

(assert (=> b!3629968 m!4131125))

(assert (=> d!1067219 d!1067513))

(declare-fun d!1067515 () Bool)

(declare-fun charsToBigInt!1 (List!38367) Int)

(assert (=> d!1067515 (= (inv!17 (value!183024 token!511)) (= (charsToBigInt!1 (text!41986 (value!183024 token!511))) (value!183017 (value!183024 token!511))))))

(declare-fun bs!571533 () Bool)

(assert (= bs!571533 d!1067515))

(declare-fun m!4131133 () Bool)

(assert (=> bs!571533 m!4131133))

(assert (=> b!3629064 d!1067515))

(assert (=> b!3629219 d!1067381))

(declare-fun d!1067521 () Bool)

(assert (=> d!1067521 (= (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))) (isBalanced!3502 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))))

(declare-fun bs!571534 () Bool)

(assert (= bs!571534 d!1067521))

(declare-fun m!4131135 () Bool)

(assert (=> bs!571534 m!4131135))

(assert (=> tb!208397 d!1067521))

(declare-fun b!3629972 () Bool)

(declare-fun e!2246977 () Bool)

(assert (=> b!3629972 (= e!2246977 (>= (size!29181 (++!9520 lt!1255280 suffix!1395)) (size!29181 lt!1255280)))))

(declare-fun d!1067523 () Bool)

(assert (=> d!1067523 e!2246977))

(declare-fun res!1469893 () Bool)

(assert (=> d!1067523 (=> res!1469893 e!2246977)))

(declare-fun lt!1255584 () Bool)

(assert (=> d!1067523 (= res!1469893 (not lt!1255584))))

(declare-fun e!2246976 () Bool)

(assert (=> d!1067523 (= lt!1255584 e!2246976)))

(declare-fun res!1469890 () Bool)

(assert (=> d!1067523 (=> res!1469890 e!2246976)))

(assert (=> d!1067523 (= res!1469890 ((_ is Nil!38244) lt!1255280))))

(assert (=> d!1067523 (= (isPrefix!3067 lt!1255280 (++!9520 lt!1255280 suffix!1395)) lt!1255584)))

(declare-fun b!3629971 () Bool)

(declare-fun e!2246975 () Bool)

(assert (=> b!3629971 (= e!2246975 (isPrefix!3067 (tail!5619 lt!1255280) (tail!5619 (++!9520 lt!1255280 suffix!1395))))))

(declare-fun b!3629970 () Bool)

(declare-fun res!1469892 () Bool)

(assert (=> b!3629970 (=> (not res!1469892) (not e!2246975))))

(assert (=> b!3629970 (= res!1469892 (= (head!7682 lt!1255280) (head!7682 (++!9520 lt!1255280 suffix!1395))))))

(declare-fun b!3629969 () Bool)

(assert (=> b!3629969 (= e!2246976 e!2246975)))

(declare-fun res!1469891 () Bool)

(assert (=> b!3629969 (=> (not res!1469891) (not e!2246975))))

(assert (=> b!3629969 (= res!1469891 (not ((_ is Nil!38244) (++!9520 lt!1255280 suffix!1395))))))

(assert (= (and d!1067523 (not res!1469890)) b!3629969))

(assert (= (and b!3629969 res!1469891) b!3629970))

(assert (= (and b!3629970 res!1469892) b!3629971))

(assert (= (and d!1067523 (not res!1469893)) b!3629972))

(assert (=> b!3629972 m!4129995))

(declare-fun m!4131137 () Bool)

(assert (=> b!3629972 m!4131137))

(assert (=> b!3629972 m!4130233))

(assert (=> b!3629971 m!4130275))

(assert (=> b!3629971 m!4129995))

(declare-fun m!4131139 () Bool)

(assert (=> b!3629971 m!4131139))

(assert (=> b!3629971 m!4130275))

(assert (=> b!3629971 m!4131139))

(declare-fun m!4131141 () Bool)

(assert (=> b!3629971 m!4131141))

(assert (=> b!3629970 m!4130285))

(assert (=> b!3629970 m!4129995))

(declare-fun m!4131143 () Bool)

(assert (=> b!3629970 m!4131143))

(assert (=> d!1067339 d!1067523))

(assert (=> d!1067339 d!1067353))

(declare-fun d!1067525 () Bool)

(assert (=> d!1067525 (isPrefix!3067 lt!1255280 (++!9520 lt!1255280 suffix!1395))))

(assert (=> d!1067525 true))

(declare-fun _$46!1462 () Unit!55058)

(assert (=> d!1067525 (= (choose!21311 lt!1255280 suffix!1395) _$46!1462)))

(declare-fun bs!571536 () Bool)

(assert (= bs!571536 d!1067525))

(assert (=> bs!571536 m!4129995))

(assert (=> bs!571536 m!4129995))

(assert (=> bs!571536 m!4130721))

(assert (=> d!1067339 d!1067525))

(declare-fun d!1067529 () Bool)

(declare-fun c!627996 () Bool)

(assert (=> d!1067529 (= c!627996 ((_ is Empty!11667) (c!627781 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-fun e!2246978 () List!38368)

(assert (=> d!1067529 (= (list!14133 (c!627781 (charsOf!3718 (_1!22190 lt!1255278)))) e!2246978)))

(declare-fun b!3629976 () Bool)

(declare-fun e!2246979 () List!38368)

(assert (=> b!3629976 (= e!2246979 (++!9520 (list!14133 (left!29853 (c!627781 (charsOf!3718 (_1!22190 lt!1255278))))) (list!14133 (right!30183 (c!627781 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3629973 () Bool)

(assert (=> b!3629973 (= e!2246978 Nil!38244)))

(declare-fun b!3629975 () Bool)

(assert (=> b!3629975 (= e!2246979 (list!14135 (xs!14869 (c!627781 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3629974 () Bool)

(assert (=> b!3629974 (= e!2246978 e!2246979)))

(declare-fun c!627997 () Bool)

(assert (=> b!3629974 (= c!627997 ((_ is Leaf!18130) (c!627781 (charsOf!3718 (_1!22190 lt!1255278)))))))

(assert (= (and d!1067529 c!627996) b!3629973))

(assert (= (and d!1067529 (not c!627996)) b!3629974))

(assert (= (and b!3629974 c!627997) b!3629975))

(assert (= (and b!3629974 (not c!627997)) b!3629976))

(declare-fun m!4131147 () Bool)

(assert (=> b!3629976 m!4131147))

(declare-fun m!4131149 () Bool)

(assert (=> b!3629976 m!4131149))

(assert (=> b!3629976 m!4131147))

(assert (=> b!3629976 m!4131149))

(declare-fun m!4131151 () Bool)

(assert (=> b!3629976 m!4131151))

(declare-fun m!4131153 () Bool)

(assert (=> b!3629975 m!4131153))

(assert (=> d!1067373 d!1067529))

(declare-fun d!1067531 () Bool)

(assert (=> d!1067531 (= (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) ((_ is Nil!38244) (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(assert (=> b!3629602 d!1067531))

(declare-fun d!1067533 () Bool)

(assert (=> d!1067533 (= (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (t!294963 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(assert (=> b!3629602 d!1067533))

(declare-fun bs!571537 () Bool)

(declare-fun d!1067535 () Bool)

(assert (= bs!571537 (and d!1067535 d!1067231)))

(declare-fun lambda!124239 () Int)

(assert (=> bs!571537 (= (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= lambda!124239 lambda!124224))))

(assert (=> d!1067535 true))

(assert (=> d!1067535 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (dynLambda!16569 order!20917 lambda!124239))))

(declare-fun Forall2!966 (Int) Bool)

(assert (=> d!1067535 (= (equivClasses!2319 (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (Forall2!966 lambda!124239))))

(declare-fun bs!571538 () Bool)

(assert (= bs!571538 d!1067535))

(declare-fun m!4131163 () Bool)

(assert (=> bs!571538 m!4131163))

(assert (=> b!3629251 d!1067535))

(declare-fun d!1067541 () Bool)

(assert (=> d!1067541 (= (nullable!3620 (regex!5704 lt!1255270)) (nullableFct!1039 (regex!5704 lt!1255270)))))

(declare-fun bs!571539 () Bool)

(assert (= bs!571539 d!1067541))

(declare-fun m!4131165 () Bool)

(assert (=> bs!571539 m!4131165))

(assert (=> b!3629599 d!1067541))

(declare-fun d!1067543 () Bool)

(assert (=> d!1067543 (= (head!7682 lt!1255280) (h!43664 lt!1255280))))

(assert (=> b!3629212 d!1067543))

(declare-fun bs!571540 () Bool)

(declare-fun d!1067545 () Bool)

(assert (= bs!571540 (and d!1067545 d!1067231)))

(declare-fun lambda!124240 () Int)

(assert (=> bs!571540 (= (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= lambda!124240 lambda!124224))))

(declare-fun bs!571541 () Bool)

(assert (= bs!571541 (and d!1067545 d!1067535)))

(assert (=> bs!571541 (= (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (= lambda!124240 lambda!124239))))

(assert (=> d!1067545 true))

(assert (=> d!1067545 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 (rule!8474 token!511)))) (dynLambda!16569 order!20917 lambda!124240))))

(assert (=> d!1067545 (= (equivClasses!2319 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 token!511)))) (Forall2!966 lambda!124240))))

(declare-fun bs!571542 () Bool)

(assert (= bs!571542 d!1067545))

(declare-fun m!4131167 () Bool)

(assert (=> bs!571542 m!4131167))

(assert (=> b!3629591 d!1067545))

(declare-fun d!1067547 () Bool)

(declare-fun lt!1255585 () Bool)

(assert (=> d!1067547 (= lt!1255585 (select (content!5483 (t!294963 (usedCharacters!916 (regex!5704 rule!403)))) lt!1255266))))

(declare-fun e!2246987 () Bool)

(assert (=> d!1067547 (= lt!1255585 e!2246987)))

(declare-fun res!1469897 () Bool)

(assert (=> d!1067547 (=> (not res!1469897) (not e!2246987))))

(assert (=> d!1067547 (= res!1469897 ((_ is Cons!38244) (t!294963 (usedCharacters!916 (regex!5704 rule!403)))))))

(assert (=> d!1067547 (= (contains!7472 (t!294963 (usedCharacters!916 (regex!5704 rule!403))) lt!1255266) lt!1255585)))

(declare-fun b!3629988 () Bool)

(declare-fun e!2246986 () Bool)

(assert (=> b!3629988 (= e!2246987 e!2246986)))

(declare-fun res!1469898 () Bool)

(assert (=> b!3629988 (=> res!1469898 e!2246986)))

(assert (=> b!3629988 (= res!1469898 (= (h!43664 (t!294963 (usedCharacters!916 (regex!5704 rule!403)))) lt!1255266))))

(declare-fun b!3629989 () Bool)

(assert (=> b!3629989 (= e!2246986 (contains!7472 (t!294963 (t!294963 (usedCharacters!916 (regex!5704 rule!403)))) lt!1255266))))

(assert (= (and d!1067547 res!1469897) b!3629988))

(assert (= (and b!3629988 (not res!1469898)) b!3629989))

(assert (=> d!1067547 m!4131125))

(declare-fun m!4131169 () Bool)

(assert (=> d!1067547 m!4131169))

(declare-fun m!4131171 () Bool)

(assert (=> b!3629989 m!4131171))

(assert (=> b!3629226 d!1067547))

(declare-fun d!1067549 () Bool)

(assert (=> d!1067549 (= (isEmpty!22622 lt!1255514) (not ((_ is Some!8036) lt!1255514)))))

(assert (=> d!1067337 d!1067549))

(declare-fun b!3629993 () Bool)

(declare-fun e!2246990 () Bool)

(assert (=> b!3629993 (= e!2246990 (>= (size!29181 lt!1255273) (size!29181 lt!1255273)))))

(declare-fun d!1067551 () Bool)

(assert (=> d!1067551 e!2246990))

(declare-fun res!1469902 () Bool)

(assert (=> d!1067551 (=> res!1469902 e!2246990)))

(declare-fun lt!1255586 () Bool)

(assert (=> d!1067551 (= res!1469902 (not lt!1255586))))

(declare-fun e!2246989 () Bool)

(assert (=> d!1067551 (= lt!1255586 e!2246989)))

(declare-fun res!1469899 () Bool)

(assert (=> d!1067551 (=> res!1469899 e!2246989)))

(assert (=> d!1067551 (= res!1469899 ((_ is Nil!38244) lt!1255273))))

(assert (=> d!1067551 (= (isPrefix!3067 lt!1255273 lt!1255273) lt!1255586)))

(declare-fun b!3629992 () Bool)

(declare-fun e!2246988 () Bool)

(assert (=> b!3629992 (= e!2246988 (isPrefix!3067 (tail!5619 lt!1255273) (tail!5619 lt!1255273)))))

(declare-fun b!3629991 () Bool)

(declare-fun res!1469901 () Bool)

(assert (=> b!3629991 (=> (not res!1469901) (not e!2246988))))

(assert (=> b!3629991 (= res!1469901 (= (head!7682 lt!1255273) (head!7682 lt!1255273)))))

(declare-fun b!3629990 () Bool)

(assert (=> b!3629990 (= e!2246989 e!2246988)))

(declare-fun res!1469900 () Bool)

(assert (=> b!3629990 (=> (not res!1469900) (not e!2246988))))

(assert (=> b!3629990 (= res!1469900 (not ((_ is Nil!38244) lt!1255273)))))

(assert (= (and d!1067551 (not res!1469899)) b!3629990))

(assert (= (and b!3629990 res!1469900) b!3629991))

(assert (= (and b!3629991 res!1469901) b!3629992))

(assert (= (and d!1067551 (not res!1469902)) b!3629993))

(assert (=> b!3629993 m!4130481))

(assert (=> b!3629993 m!4130481))

(assert (=> b!3629992 m!4130483))

(assert (=> b!3629992 m!4130483))

(assert (=> b!3629992 m!4130483))

(assert (=> b!3629992 m!4130483))

(declare-fun m!4131173 () Bool)

(assert (=> b!3629992 m!4131173))

(assert (=> b!3629991 m!4130487))

(assert (=> b!3629991 m!4130487))

(assert (=> d!1067337 d!1067551))

(declare-fun d!1067553 () Bool)

(assert (=> d!1067553 (isPrefix!3067 lt!1255273 lt!1255273)))

(declare-fun lt!1255592 () Unit!55058)

(declare-fun choose!21316 (List!38368 List!38368) Unit!55058)

(assert (=> d!1067553 (= lt!1255592 (choose!21316 lt!1255273 lt!1255273))))

(assert (=> d!1067553 (= (lemmaIsPrefixRefl!1942 lt!1255273 lt!1255273) lt!1255592)))

(declare-fun bs!571544 () Bool)

(assert (= bs!571544 d!1067553))

(assert (=> bs!571544 m!4130709))

(declare-fun m!4131179 () Bool)

(assert (=> bs!571544 m!4131179))

(assert (=> d!1067337 d!1067553))

(declare-fun d!1067557 () Bool)

(assert (=> d!1067557 true))

(declare-fun lt!1255598 () Bool)

(declare-fun lambda!124243 () Int)

(declare-fun forall!8153 (List!38369 Int) Bool)

(assert (=> d!1067557 (= lt!1255598 (forall!8153 rules!3307 lambda!124243))))

(declare-fun e!2247003 () Bool)

(assert (=> d!1067557 (= lt!1255598 e!2247003)))

(declare-fun res!1469910 () Bool)

(assert (=> d!1067557 (=> res!1469910 e!2247003)))

(assert (=> d!1067557 (= res!1469910 (not ((_ is Cons!38245) rules!3307)))))

(assert (=> d!1067557 (= (rulesValidInductive!2007 thiss!23823 rules!3307) lt!1255598)))

(declare-fun b!3630010 () Bool)

(declare-fun e!2247002 () Bool)

(assert (=> b!3630010 (= e!2247003 e!2247002)))

(declare-fun res!1469909 () Bool)

(assert (=> b!3630010 (=> (not res!1469909) (not e!2247002))))

(assert (=> b!3630010 (= res!1469909 (ruleValid!1968 thiss!23823 (h!43665 rules!3307)))))

(declare-fun b!3630011 () Bool)

(assert (=> b!3630011 (= e!2247002 (rulesValidInductive!2007 thiss!23823 (t!294964 rules!3307)))))

(assert (= (and d!1067557 (not res!1469910)) b!3630010))

(assert (= (and b!3630010 res!1469909) b!3630011))

(declare-fun m!4131205 () Bool)

(assert (=> d!1067557 m!4131205))

(declare-fun m!4131207 () Bool)

(assert (=> b!3630010 m!4131207))

(declare-fun m!4131209 () Bool)

(assert (=> b!3630011 m!4131209))

(assert (=> d!1067337 d!1067557))

(assert (=> b!3629545 d!1067409))

(declare-fun d!1067567 () Bool)

(assert (=> d!1067567 (= (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514))))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514))))))))

(declare-fun b_lambda!107433 () Bool)

(assert (=> (not b_lambda!107433) (not d!1067567)))

(declare-fun tb!208507 () Bool)

(declare-fun t!295122 () Bool)

(assert (=> (and b!3628953 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295122) tb!208507))

(declare-fun result!254024 () Bool)

(assert (=> tb!208507 (= result!254024 (inv!21 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514)))))))))

(declare-fun m!4131211 () Bool)

(assert (=> tb!208507 m!4131211))

(assert (=> d!1067567 t!295122))

(declare-fun b_and!266301 () Bool)

(assert (= b_and!266183 (and (=> t!295122 result!254024) b_and!266301)))

(declare-fun tb!208509 () Bool)

(declare-fun t!295124 () Bool)

(assert (=> (and b!3629650 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295124) tb!208509))

(declare-fun result!254026 () Bool)

(assert (= result!254026 result!254024))

(assert (=> d!1067567 t!295124))

(declare-fun b_and!266303 () Bool)

(assert (= b_and!266267 (and (=> t!295124 result!254026) b_and!266303)))

(declare-fun tb!208511 () Bool)

(declare-fun t!295126 () Bool)

(assert (=> (and b!3628978 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295126) tb!208511))

(declare-fun result!254028 () Bool)

(assert (= result!254028 result!254024))

(assert (=> d!1067567 t!295126))

(declare-fun b_and!266305 () Bool)

(assert (= b_and!266187 (and (=> t!295126 result!254028) b_and!266305)))

(declare-fun tb!208513 () Bool)

(declare-fun t!295128 () Bool)

(assert (=> (and b!3628966 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295128) tb!208513))

(declare-fun result!254030 () Bool)

(assert (= result!254030 result!254024))

(assert (=> d!1067567 t!295128))

(declare-fun b_and!266307 () Bool)

(assert (= b_and!266189 (and (=> t!295128 result!254030) b_and!266307)))

(declare-fun t!295130 () Bool)

(declare-fun tb!208515 () Bool)

(assert (=> (and b!3628968 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295130) tb!208515))

(declare-fun result!254032 () Bool)

(assert (= result!254032 result!254024))

(assert (=> d!1067567 t!295130))

(declare-fun b_and!266309 () Bool)

(assert (= b_and!266185 (and (=> t!295130 result!254032) b_and!266309)))

(assert (=> d!1067567 m!4130699))

(declare-fun m!4131217 () Bool)

(assert (=> d!1067567 m!4131217))

(assert (=> b!3629545 d!1067567))

(declare-fun d!1067571 () Bool)

(assert (=> d!1067571 (= (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514)))) (fromListB!1957 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255514)))))))

(declare-fun bs!571545 () Bool)

(assert (= bs!571545 d!1067571))

(declare-fun m!4131219 () Bool)

(assert (=> bs!571545 m!4131219))

(assert (=> b!3629545 d!1067571))

(declare-fun d!1067575 () Bool)

(assert (=> d!1067575 (= (inv!51656 (tag!6432 (h!43665 (t!294964 rules!3307)))) (= (mod (str.len (value!182998 (tag!6432 (h!43665 (t!294964 rules!3307))))) 2) 0))))

(assert (=> b!3629649 d!1067575))

(declare-fun d!1067577 () Bool)

(declare-fun res!1469911 () Bool)

(declare-fun e!2247008 () Bool)

(assert (=> d!1067577 (=> (not res!1469911) (not e!2247008))))

(assert (=> d!1067577 (= res!1469911 (semiInverseModEq!2420 (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307))))))))

(assert (=> d!1067577 (= (inv!51659 (transformation!5704 (h!43665 (t!294964 rules!3307)))) e!2247008)))

(declare-fun b!3630020 () Bool)

(assert (=> b!3630020 (= e!2247008 (equivClasses!2319 (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307))))))))

(assert (= (and d!1067577 res!1469911) b!3630020))

(declare-fun m!4131221 () Bool)

(assert (=> d!1067577 m!4131221))

(declare-fun m!4131223 () Bool)

(assert (=> b!3630020 m!4131223))

(assert (=> b!3629649 d!1067577))

(declare-fun d!1067579 () Bool)

(declare-fun lt!1255599 () Int)

(assert (=> d!1067579 (>= lt!1255599 0)))

(declare-fun e!2247009 () Int)

(assert (=> d!1067579 (= lt!1255599 e!2247009)))

(declare-fun c!628009 () Bool)

(assert (=> d!1067579 (= c!628009 ((_ is Nil!38244) (originalCharacters!6418 (_1!22190 lt!1255278))))))

(assert (=> d!1067579 (= (size!29181 (originalCharacters!6418 (_1!22190 lt!1255278))) lt!1255599)))

(declare-fun b!3630021 () Bool)

(assert (=> b!3630021 (= e!2247009 0)))

(declare-fun b!3630022 () Bool)

(assert (=> b!3630022 (= e!2247009 (+ 1 (size!29181 (t!294963 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(assert (= (and d!1067579 c!628009) b!3630021))

(assert (= (and d!1067579 (not c!628009)) b!3630022))

(declare-fun m!4131225 () Bool)

(assert (=> b!3630022 m!4131225))

(assert (=> d!1067255 d!1067579))

(declare-fun d!1067581 () Bool)

(declare-fun c!628010 () Bool)

(assert (=> d!1067581 (= c!628010 ((_ is Nil!38244) lt!1255530))))

(declare-fun e!2247010 () (InoxSet C!21112))

(assert (=> d!1067581 (= (content!5483 lt!1255530) e!2247010)))

(declare-fun b!3630023 () Bool)

(assert (=> b!3630023 (= e!2247010 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3630024 () Bool)

(assert (=> b!3630024 (= e!2247010 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 lt!1255530) true) (content!5483 (t!294963 lt!1255530))))))

(assert (= (and d!1067581 c!628010) b!3630023))

(assert (= (and d!1067581 (not c!628010)) b!3630024))

(declare-fun m!4131227 () Bool)

(assert (=> b!3630024 m!4131227))

(declare-fun m!4131229 () Bool)

(assert (=> b!3630024 m!4131229))

(assert (=> d!1067353 d!1067581))

(declare-fun d!1067583 () Bool)

(declare-fun c!628011 () Bool)

(assert (=> d!1067583 (= c!628011 ((_ is Nil!38244) lt!1255280))))

(declare-fun e!2247011 () (InoxSet C!21112))

(assert (=> d!1067583 (= (content!5483 lt!1255280) e!2247011)))

(declare-fun b!3630025 () Bool)

(assert (=> b!3630025 (= e!2247011 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3630026 () Bool)

(assert (=> b!3630026 (= e!2247011 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 lt!1255280) true) (content!5483 (t!294963 lt!1255280))))))

(assert (= (and d!1067583 c!628011) b!3630025))

(assert (= (and d!1067583 (not c!628011)) b!3630026))

(declare-fun m!4131231 () Bool)

(assert (=> b!3630026 m!4131231))

(assert (=> b!3630026 m!4130927))

(assert (=> d!1067353 d!1067583))

(declare-fun d!1067585 () Bool)

(declare-fun c!628012 () Bool)

(assert (=> d!1067585 (= c!628012 ((_ is Nil!38244) suffix!1395))))

(declare-fun e!2247012 () (InoxSet C!21112))

(assert (=> d!1067585 (= (content!5483 suffix!1395) e!2247012)))

(declare-fun b!3630027 () Bool)

(assert (=> b!3630027 (= e!2247012 ((as const (Array C!21112 Bool)) false))))

(declare-fun b!3630028 () Bool)

(assert (=> b!3630028 (= e!2247012 ((_ map or) (store ((as const (Array C!21112 Bool)) false) (h!43664 suffix!1395) true) (content!5483 (t!294963 suffix!1395))))))

(assert (= (and d!1067585 c!628012) b!3630027))

(assert (= (and d!1067585 (not c!628012)) b!3630028))

(declare-fun m!4131233 () Bool)

(assert (=> b!3630028 m!4131233))

(declare-fun m!4131235 () Bool)

(assert (=> b!3630028 m!4131235))

(assert (=> d!1067353 d!1067585))

(declare-fun d!1067587 () Bool)

(assert (=> d!1067587 (= (list!14130 lt!1255345) (list!14133 (c!627781 lt!1255345)))))

(declare-fun bs!571546 () Bool)

(assert (= bs!571546 d!1067587))

(declare-fun m!4131237 () Bool)

(assert (=> bs!571546 m!4131237))

(assert (=> d!1067201 d!1067587))

(assert (=> b!3629209 d!1067415))

(assert (=> b!3629209 d!1067417))

(declare-fun d!1067589 () Bool)

(declare-fun dynLambda!16574 (Int BalanceConc!22948 BalanceConc!22948) Bool)

(assert (=> d!1067589 (dynLambda!16574 lambda!124224 lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))

(declare-fun lt!1255602 () Unit!55058)

(declare-fun choose!21318 (Int BalanceConc!22948 BalanceConc!22948) Unit!55058)

(assert (=> d!1067589 (= lt!1255602 (choose!21318 lambda!124224 lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(assert (=> d!1067589 (Forall2!966 lambda!124224)))

(assert (=> d!1067589 (= (Forall2of!336 lambda!124224 lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))) lt!1255602)))

(declare-fun b_lambda!107435 () Bool)

(assert (=> (not b_lambda!107435) (not d!1067589)))

(declare-fun bs!571547 () Bool)

(assert (= bs!571547 d!1067589))

(assert (=> bs!571547 m!4130021))

(declare-fun m!4131239 () Bool)

(assert (=> bs!571547 m!4131239))

(assert (=> bs!571547 m!4130021))

(declare-fun m!4131241 () Bool)

(assert (=> bs!571547 m!4131241))

(declare-fun m!4131243 () Bool)

(assert (=> bs!571547 m!4131243))

(assert (=> d!1067231 d!1067589))

(assert (=> d!1067231 d!1067345))

(declare-fun d!1067591 () Bool)

(assert (=> d!1067591 (= (list!14130 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))) (list!14133 (c!627781 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(declare-fun bs!571548 () Bool)

(assert (= bs!571548 d!1067591))

(declare-fun m!4131245 () Bool)

(assert (=> bs!571548 m!4131245))

(assert (=> d!1067231 d!1067591))

(declare-fun d!1067593 () Bool)

(declare-fun e!2247021 () Bool)

(assert (=> d!1067593 e!2247021))

(declare-fun res!1469923 () Bool)

(assert (=> d!1067593 (=> res!1469923 e!2247021)))

(declare-fun lt!1255604 () Option!8037)

(assert (=> d!1067593 (= res!1469923 (isEmpty!22622 lt!1255604))))

(declare-fun e!2247025 () Option!8037)

(assert (=> d!1067593 (= lt!1255604 e!2247025)))

(declare-fun c!628017 () Bool)

(assert (=> d!1067593 (= c!628017 (and ((_ is Cons!38245) (t!294964 rules!3307)) ((_ is Nil!38245) (t!294964 (t!294964 rules!3307)))))))

(declare-fun lt!1255607 () Unit!55058)

(declare-fun lt!1255606 () Unit!55058)

(assert (=> d!1067593 (= lt!1255607 lt!1255606)))

(assert (=> d!1067593 (isPrefix!3067 lt!1255273 lt!1255273)))

(assert (=> d!1067593 (= lt!1255606 (lemmaIsPrefixRefl!1942 lt!1255273 lt!1255273))))

(assert (=> d!1067593 (rulesValidInductive!2007 thiss!23823 (t!294964 rules!3307))))

(assert (=> d!1067593 (= (maxPrefix!2827 thiss!23823 (t!294964 rules!3307) lt!1255273) lt!1255604)))

(declare-fun b!3630044 () Bool)

(declare-fun res!1469918 () Bool)

(declare-fun e!2247024 () Bool)

(assert (=> b!3630044 (=> (not res!1469918) (not e!2247024))))

(assert (=> b!3630044 (= res!1469918 (< (size!29181 (_2!22190 (get!12499 lt!1255604))) (size!29181 lt!1255273)))))

(declare-fun bm!262559 () Bool)

(declare-fun call!262564 () Option!8037)

(assert (=> bm!262559 (= call!262564 (maxPrefixOneRule!1967 thiss!23823 (h!43665 (t!294964 rules!3307)) lt!1255273))))

(declare-fun b!3630045 () Bool)

(declare-fun res!1469917 () Bool)

(assert (=> b!3630045 (=> (not res!1469917) (not e!2247024))))

(assert (=> b!3630045 (= res!1469917 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255604)))) (_2!22190 (get!12499 lt!1255604))) lt!1255273))))

(declare-fun b!3630046 () Bool)

(declare-fun res!1469924 () Bool)

(assert (=> b!3630046 (=> (not res!1469924) (not e!2247024))))

(assert (=> b!3630046 (= res!1469924 (= (value!183024 (_1!22190 (get!12499 lt!1255604))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255604)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255604)))))))))

(declare-fun b!3630047 () Bool)

(declare-fun res!1469922 () Bool)

(assert (=> b!3630047 (=> (not res!1469922) (not e!2247024))))

(assert (=> b!3630047 (= res!1469922 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255604)))) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255604)))))))

(declare-fun b!3630048 () Bool)

(assert (=> b!3630048 (= e!2247024 (contains!7471 (t!294964 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255604)))))))

(declare-fun b!3630049 () Bool)

(declare-fun res!1469921 () Bool)

(assert (=> b!3630049 (=> (not res!1469921) (not e!2247024))))

(assert (=> b!3630049 (= res!1469921 (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255604)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255604))))))))

(declare-fun b!3630050 () Bool)

(assert (=> b!3630050 (= e!2247025 call!262564)))

(declare-fun b!3630051 () Bool)

(declare-fun lt!1255605 () Option!8037)

(declare-fun lt!1255603 () Option!8037)

(assert (=> b!3630051 (= e!2247025 (ite (and ((_ is None!8036) lt!1255605) ((_ is None!8036) lt!1255603)) None!8036 (ite ((_ is None!8036) lt!1255603) lt!1255605 (ite ((_ is None!8036) lt!1255605) lt!1255603 (ite (>= (size!29178 (_1!22190 (v!37824 lt!1255605))) (size!29178 (_1!22190 (v!37824 lt!1255603)))) lt!1255605 lt!1255603)))))))

(assert (=> b!3630051 (= lt!1255605 call!262564)))

(assert (=> b!3630051 (= lt!1255603 (maxPrefix!2827 thiss!23823 (t!294964 (t!294964 rules!3307)) lt!1255273))))

(declare-fun b!3630052 () Bool)

(assert (=> b!3630052 (= e!2247021 e!2247024)))

(declare-fun res!1469916 () Bool)

(assert (=> b!3630052 (=> (not res!1469916) (not e!2247024))))

(assert (=> b!3630052 (= res!1469916 (isDefined!6268 lt!1255604))))

(assert (= (and d!1067593 c!628017) b!3630050))

(assert (= (and d!1067593 (not c!628017)) b!3630051))

(assert (= (or b!3630050 b!3630051) bm!262559))

(assert (= (and d!1067593 (not res!1469923)) b!3630052))

(assert (= (and b!3630052 res!1469916) b!3630047))

(assert (= (and b!3630047 res!1469922) b!3630044))

(assert (= (and b!3630044 res!1469918) b!3630045))

(assert (= (and b!3630045 res!1469917) b!3630046))

(assert (= (and b!3630046 res!1469924) b!3630049))

(assert (= (and b!3630049 res!1469921) b!3630048))

(declare-fun m!4131247 () Bool)

(assert (=> b!3630045 m!4131247))

(declare-fun m!4131249 () Bool)

(assert (=> b!3630045 m!4131249))

(assert (=> b!3630045 m!4131249))

(declare-fun m!4131251 () Bool)

(assert (=> b!3630045 m!4131251))

(assert (=> b!3630045 m!4131251))

(declare-fun m!4131253 () Bool)

(assert (=> b!3630045 m!4131253))

(assert (=> b!3630046 m!4131247))

(declare-fun m!4131255 () Bool)

(assert (=> b!3630046 m!4131255))

(assert (=> b!3630046 m!4131255))

(declare-fun m!4131257 () Bool)

(assert (=> b!3630046 m!4131257))

(declare-fun m!4131259 () Bool)

(assert (=> bm!262559 m!4131259))

(declare-fun m!4131261 () Bool)

(assert (=> b!3630051 m!4131261))

(declare-fun m!4131263 () Bool)

(assert (=> d!1067593 m!4131263))

(assert (=> d!1067593 m!4130709))

(assert (=> d!1067593 m!4130711))

(assert (=> d!1067593 m!4131209))

(assert (=> b!3630049 m!4131247))

(assert (=> b!3630049 m!4131249))

(assert (=> b!3630049 m!4131249))

(assert (=> b!3630049 m!4131251))

(assert (=> b!3630049 m!4131251))

(declare-fun m!4131265 () Bool)

(assert (=> b!3630049 m!4131265))

(assert (=> b!3630047 m!4131247))

(assert (=> b!3630047 m!4131249))

(assert (=> b!3630047 m!4131249))

(assert (=> b!3630047 m!4131251))

(assert (=> b!3630044 m!4131247))

(declare-fun m!4131267 () Bool)

(assert (=> b!3630044 m!4131267))

(assert (=> b!3630044 m!4130481))

(assert (=> b!3630048 m!4131247))

(declare-fun m!4131269 () Bool)

(assert (=> b!3630048 m!4131269))

(declare-fun m!4131271 () Bool)

(assert (=> b!3630052 m!4131271))

(assert (=> b!3629550 d!1067593))

(declare-fun d!1067595 () Bool)

(assert (=> d!1067595 (= (nullable!3620 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))) (nullableFct!1039 (regex!5704 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun bs!571549 () Bool)

(assert (= bs!571549 d!1067595))

(declare-fun m!4131273 () Bool)

(assert (=> bs!571549 m!4131273))

(assert (=> b!3629194 d!1067595))

(declare-fun d!1067597 () Bool)

(declare-fun lt!1255608 () Int)

(assert (=> d!1067597 (>= lt!1255608 0)))

(declare-fun e!2247030 () Int)

(assert (=> d!1067597 (= lt!1255608 e!2247030)))

(declare-fun c!628018 () Bool)

(assert (=> d!1067597 (= c!628018 ((_ is Nil!38244) lt!1255530))))

(assert (=> d!1067597 (= (size!29181 lt!1255530) lt!1255608)))

(declare-fun b!3630057 () Bool)

(assert (=> b!3630057 (= e!2247030 0)))

(declare-fun b!3630058 () Bool)

(assert (=> b!3630058 (= e!2247030 (+ 1 (size!29181 (t!294963 lt!1255530))))))

(assert (= (and d!1067597 c!628018) b!3630057))

(assert (= (and d!1067597 (not c!628018)) b!3630058))

(declare-fun m!4131275 () Bool)

(assert (=> b!3630058 m!4131275))

(assert (=> b!3629580 d!1067597))

(declare-fun d!1067599 () Bool)

(declare-fun lt!1255609 () Int)

(assert (=> d!1067599 (>= lt!1255609 0)))

(declare-fun e!2247031 () Int)

(assert (=> d!1067599 (= lt!1255609 e!2247031)))

(declare-fun c!628019 () Bool)

(assert (=> d!1067599 (= c!628019 ((_ is Nil!38244) lt!1255280))))

(assert (=> d!1067599 (= (size!29181 lt!1255280) lt!1255609)))

(declare-fun b!3630059 () Bool)

(assert (=> b!3630059 (= e!2247031 0)))

(declare-fun b!3630060 () Bool)

(assert (=> b!3630060 (= e!2247031 (+ 1 (size!29181 (t!294963 lt!1255280))))))

(assert (= (and d!1067599 c!628019) b!3630059))

(assert (= (and d!1067599 (not c!628019)) b!3630060))

(assert (=> b!3630060 m!4130923))

(assert (=> b!3629580 d!1067599))

(declare-fun d!1067601 () Bool)

(declare-fun lt!1255610 () Int)

(assert (=> d!1067601 (>= lt!1255610 0)))

(declare-fun e!2247032 () Int)

(assert (=> d!1067601 (= lt!1255610 e!2247032)))

(declare-fun c!628020 () Bool)

(assert (=> d!1067601 (= c!628020 ((_ is Nil!38244) suffix!1395))))

(assert (=> d!1067601 (= (size!29181 suffix!1395) lt!1255610)))

(declare-fun b!3630061 () Bool)

(assert (=> b!3630061 (= e!2247032 0)))

(declare-fun b!3630062 () Bool)

(assert (=> b!3630062 (= e!2247032 (+ 1 (size!29181 (t!294963 suffix!1395))))))

(assert (= (and d!1067601 c!628020) b!3630061))

(assert (= (and d!1067601 (not c!628020)) b!3630062))

(declare-fun m!4131277 () Bool)

(assert (=> b!3630062 m!4131277))

(assert (=> b!3629580 d!1067601))

(declare-fun d!1067603 () Bool)

(declare-fun res!1469929 () Bool)

(declare-fun e!2247033 () Bool)

(assert (=> d!1067603 (=> res!1469929 e!2247033)))

(assert (=> d!1067603 (= res!1469929 (not ((_ is Cons!38245) (t!294964 rules!3307))))))

(assert (=> d!1067603 (= (sepAndNonSepRulesDisjointChars!1872 rules!3307 (t!294964 rules!3307)) e!2247033)))

(declare-fun b!3630063 () Bool)

(declare-fun e!2247034 () Bool)

(assert (=> b!3630063 (= e!2247033 e!2247034)))

(declare-fun res!1469930 () Bool)

(assert (=> b!3630063 (=> (not res!1469930) (not e!2247034))))

(assert (=> b!3630063 (= res!1469930 (ruleDisjointCharsFromAllFromOtherType!844 (h!43665 (t!294964 rules!3307)) rules!3307))))

(declare-fun b!3630064 () Bool)

(assert (=> b!3630064 (= e!2247034 (sepAndNonSepRulesDisjointChars!1872 rules!3307 (t!294964 (t!294964 rules!3307))))))

(assert (= (and d!1067603 (not res!1469929)) b!3630063))

(assert (= (and b!3630063 res!1469930) b!3630064))

(declare-fun m!4131279 () Bool)

(assert (=> b!3630063 m!4131279))

(declare-fun m!4131281 () Bool)

(assert (=> b!3630064 m!4131281))

(assert (=> b!3629587 d!1067603))

(declare-fun d!1067605 () Bool)

(declare-fun res!1469931 () Bool)

(declare-fun e!2247035 () Bool)

(assert (=> d!1067605 (=> (not res!1469931) (not e!2247035))))

(assert (=> d!1067605 (= res!1469931 (rulesValid!2177 thiss!23823 (t!294964 rules!3307)))))

(assert (=> d!1067605 (= (rulesInvariant!4690 thiss!23823 (t!294964 rules!3307)) e!2247035)))

(declare-fun b!3630065 () Bool)

(assert (=> b!3630065 (= e!2247035 (noDuplicateTag!2173 thiss!23823 (t!294964 rules!3307) Nil!38247))))

(assert (= (and d!1067605 res!1469931) b!3630065))

(declare-fun m!4131283 () Bool)

(assert (=> d!1067605 m!4131283))

(declare-fun m!4131285 () Bool)

(assert (=> b!3630065 m!4131285))

(assert (=> b!3629374 d!1067605))

(declare-fun d!1067607 () Bool)

(assert (=> d!1067607 (rulesInvariant!4690 thiss!23823 (t!294964 rules!3307))))

(declare-fun lt!1255613 () Unit!55058)

(declare-fun choose!21319 (LexerInterface!5293 Rule!11208 List!38369) Unit!55058)

(assert (=> d!1067607 (= lt!1255613 (choose!21319 thiss!23823 (h!43665 rules!3307) (t!294964 rules!3307)))))

(assert (=> d!1067607 (rulesInvariant!4690 thiss!23823 (Cons!38245 (h!43665 rules!3307) (t!294964 rules!3307)))))

(assert (=> d!1067607 (= (lemmaInvariantOnRulesThenOnTail!551 thiss!23823 (h!43665 rules!3307) (t!294964 rules!3307)) lt!1255613)))

(declare-fun bs!571550 () Bool)

(assert (= bs!571550 d!1067607))

(assert (=> bs!571550 m!4130457))

(declare-fun m!4131287 () Bool)

(assert (=> bs!571550 m!4131287))

(declare-fun m!4131289 () Bool)

(assert (=> bs!571550 m!4131289))

(assert (=> b!3629374 d!1067607))

(declare-fun d!1067609 () Bool)

(declare-fun e!2247045 () Bool)

(assert (=> d!1067609 e!2247045))

(declare-fun res!1469937 () Bool)

(assert (=> d!1067609 (=> res!1469937 e!2247045)))

(declare-fun lt!1255614 () Option!8036)

(assert (=> d!1067609 (= res!1469937 (isEmpty!22623 lt!1255614))))

(declare-fun e!2247046 () Option!8036)

(assert (=> d!1067609 (= lt!1255614 e!2247046)))

(declare-fun c!628023 () Bool)

(assert (=> d!1067609 (= c!628023 (and ((_ is Cons!38245) (t!294964 rules!3307)) (= (tag!6432 (h!43665 (t!294964 rules!3307))) (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> d!1067609 (rulesInvariant!4690 thiss!23823 (t!294964 rules!3307))))

(assert (=> d!1067609 (= (getRuleFromTag!1308 thiss!23823 (t!294964 rules!3307) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))) lt!1255614)))

(declare-fun b!3630075 () Bool)

(declare-fun e!2247043 () Bool)

(assert (=> b!3630075 (= e!2247045 e!2247043)))

(declare-fun res!1469938 () Bool)

(assert (=> b!3630075 (=> (not res!1469938) (not e!2247043))))

(assert (=> b!3630075 (= res!1469938 (contains!7471 (t!294964 rules!3307) (get!12498 lt!1255614)))))

(declare-fun b!3630076 () Bool)

(assert (=> b!3630076 (= e!2247043 (= (tag!6432 (get!12498 lt!1255614)) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3630077 () Bool)

(declare-fun lt!1255615 () Unit!55058)

(declare-fun lt!1255616 () Unit!55058)

(assert (=> b!3630077 (= lt!1255615 lt!1255616)))

(assert (=> b!3630077 (rulesInvariant!4690 thiss!23823 (t!294964 (t!294964 rules!3307)))))

(assert (=> b!3630077 (= lt!1255616 (lemmaInvariantOnRulesThenOnTail!551 thiss!23823 (h!43665 (t!294964 rules!3307)) (t!294964 (t!294964 rules!3307))))))

(declare-fun e!2247044 () Option!8036)

(assert (=> b!3630077 (= e!2247044 (getRuleFromTag!1308 thiss!23823 (t!294964 (t!294964 rules!3307)) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))

(declare-fun b!3630078 () Bool)

(assert (=> b!3630078 (= e!2247044 None!8035)))

(declare-fun b!3630079 () Bool)

(assert (=> b!3630079 (= e!2247046 e!2247044)))

(declare-fun c!628024 () Bool)

(assert (=> b!3630079 (= c!628024 (and ((_ is Cons!38245) (t!294964 rules!3307)) (not (= (tag!6432 (h!43665 (t!294964 rules!3307))) (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))

(declare-fun b!3630080 () Bool)

(assert (=> b!3630080 (= e!2247046 (Some!8035 (h!43665 (t!294964 rules!3307))))))

(assert (= (and d!1067609 c!628023) b!3630080))

(assert (= (and d!1067609 (not c!628023)) b!3630079))

(assert (= (and b!3630079 c!628024) b!3630077))

(assert (= (and b!3630079 (not c!628024)) b!3630078))

(assert (= (and d!1067609 (not res!1469937)) b!3630075))

(assert (= (and b!3630075 res!1469938) b!3630076))

(declare-fun m!4131291 () Bool)

(assert (=> d!1067609 m!4131291))

(assert (=> d!1067609 m!4130457))

(declare-fun m!4131293 () Bool)

(assert (=> b!3630075 m!4131293))

(assert (=> b!3630075 m!4131293))

(declare-fun m!4131295 () Bool)

(assert (=> b!3630075 m!4131295))

(assert (=> b!3630076 m!4131293))

(declare-fun m!4131299 () Bool)

(assert (=> b!3630077 m!4131299))

(declare-fun m!4131301 () Bool)

(assert (=> b!3630077 m!4131301))

(declare-fun m!4131303 () Bool)

(assert (=> b!3630077 m!4131303))

(assert (=> b!3629374 d!1067609))

(declare-fun d!1067611 () Bool)

(assert (=> d!1067611 (= (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))) (isBalanced!3502 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))))))

(declare-fun bs!571551 () Bool)

(assert (= bs!571551 d!1067611))

(declare-fun m!4131309 () Bool)

(assert (=> bs!571551 m!4131309))

(assert (=> tb!208457 d!1067611))

(declare-fun d!1067615 () Bool)

(declare-fun c!628025 () Bool)

(assert (=> d!1067615 (= c!628025 ((_ is Empty!11667) (c!627781 (charsOf!3718 token!511))))))

(declare-fun e!2247047 () List!38368)

(assert (=> d!1067615 (= (list!14133 (c!627781 (charsOf!3718 token!511))) e!2247047)))

(declare-fun b!3630084 () Bool)

(declare-fun e!2247048 () List!38368)

(assert (=> b!3630084 (= e!2247048 (++!9520 (list!14133 (left!29853 (c!627781 (charsOf!3718 token!511)))) (list!14133 (right!30183 (c!627781 (charsOf!3718 token!511))))))))

(declare-fun b!3630081 () Bool)

(assert (=> b!3630081 (= e!2247047 Nil!38244)))

(declare-fun b!3630083 () Bool)

(assert (=> b!3630083 (= e!2247048 (list!14135 (xs!14869 (c!627781 (charsOf!3718 token!511)))))))

(declare-fun b!3630082 () Bool)

(assert (=> b!3630082 (= e!2247047 e!2247048)))

(declare-fun c!628026 () Bool)

(assert (=> b!3630082 (= c!628026 ((_ is Leaf!18130) (c!627781 (charsOf!3718 token!511))))))

(assert (= (and d!1067615 c!628025) b!3630081))

(assert (= (and d!1067615 (not c!628025)) b!3630082))

(assert (= (and b!3630082 c!628026) b!3630083))

(assert (= (and b!3630082 (not c!628026)) b!3630084))

(declare-fun m!4131311 () Bool)

(assert (=> b!3630084 m!4131311))

(declare-fun m!4131313 () Bool)

(assert (=> b!3630084 m!4131313))

(assert (=> b!3630084 m!4131311))

(assert (=> b!3630084 m!4131313))

(declare-fun m!4131315 () Bool)

(assert (=> b!3630084 m!4131315))

(declare-fun m!4131317 () Bool)

(assert (=> b!3630083 m!4131317))

(assert (=> d!1067199 d!1067615))

(declare-fun d!1067619 () Bool)

(assert (=> d!1067619 (= (isEmpty!22618 lt!1255280) ((_ is Nil!38244) lt!1255280))))

(assert (=> d!1067211 d!1067619))

(assert (=> d!1067211 d!1067423))

(declare-fun d!1067621 () Bool)

(declare-fun lt!1255618 () Int)

(assert (=> d!1067621 (>= lt!1255618 0)))

(declare-fun e!2247052 () Int)

(assert (=> d!1067621 (= lt!1255618 e!2247052)))

(declare-fun c!628027 () Bool)

(assert (=> d!1067621 (= c!628027 ((_ is Nil!38244) (originalCharacters!6418 token!511)))))

(assert (=> d!1067621 (= (size!29181 (originalCharacters!6418 token!511)) lt!1255618)))

(declare-fun b!3630089 () Bool)

(assert (=> b!3630089 (= e!2247052 0)))

(declare-fun b!3630090 () Bool)

(assert (=> b!3630090 (= e!2247052 (+ 1 (size!29181 (t!294963 (originalCharacters!6418 token!511)))))))

(assert (= (and d!1067621 c!628027) b!3630089))

(assert (= (and d!1067621 (not c!628027)) b!3630090))

(declare-fun m!4131319 () Bool)

(assert (=> b!3630090 m!4131319))

(assert (=> b!3629607 d!1067621))

(assert (=> b!3629138 d!1067387))

(declare-fun d!1067623 () Bool)

(assert (=> d!1067623 (= (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339))))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339))))))))

(declare-fun b_lambda!107437 () Bool)

(assert (=> (not b_lambda!107437) (not d!1067623)))

(declare-fun t!295132 () Bool)

(declare-fun tb!208517 () Bool)

(assert (=> (and b!3628978 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295132) tb!208517))

(declare-fun result!254034 () Bool)

(assert (=> tb!208517 (= result!254034 (inv!21 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339))))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339)))))))))

(declare-fun m!4131323 () Bool)

(assert (=> tb!208517 m!4131323))

(assert (=> d!1067623 t!295132))

(declare-fun b_and!266311 () Bool)

(assert (= b_and!266305 (and (=> t!295132 result!254034) b_and!266311)))

(declare-fun tb!208519 () Bool)

(declare-fun t!295134 () Bool)

(assert (=> (and b!3629650 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295134) tb!208519))

(declare-fun result!254036 () Bool)

(assert (= result!254036 result!254034))

(assert (=> d!1067623 t!295134))

(declare-fun b_and!266313 () Bool)

(assert (= b_and!266303 (and (=> t!295134 result!254036) b_and!266313)))

(declare-fun t!295136 () Bool)

(declare-fun tb!208521 () Bool)

(assert (=> (and b!3628966 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295136) tb!208521))

(declare-fun result!254038 () Bool)

(assert (= result!254038 result!254034))

(assert (=> d!1067623 t!295136))

(declare-fun b_and!266315 () Bool)

(assert (= b_and!266307 (and (=> t!295136 result!254038) b_and!266315)))

(declare-fun t!295138 () Bool)

(declare-fun tb!208523 () Bool)

(assert (=> (and b!3628968 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295138) tb!208523))

(declare-fun result!254040 () Bool)

(assert (= result!254040 result!254034))

(assert (=> d!1067623 t!295138))

(declare-fun b_and!266317 () Bool)

(assert (= b_and!266309 (and (=> t!295138 result!254040) b_and!266317)))

(declare-fun tb!208525 () Bool)

(declare-fun t!295140 () Bool)

(assert (=> (and b!3628953 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295140) tb!208525))

(declare-fun result!254042 () Bool)

(assert (= result!254042 result!254034))

(assert (=> d!1067623 t!295140))

(declare-fun b_and!266319 () Bool)

(assert (= b_and!266301 (and (=> t!295140 result!254042) b_and!266319)))

(assert (=> d!1067623 m!4130213))

(declare-fun m!4131325 () Bool)

(assert (=> d!1067623 m!4131325))

(assert (=> b!3629138 d!1067623))

(declare-fun d!1067627 () Bool)

(assert (=> d!1067627 (= (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339)))) (fromListB!1957 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255339)))))))

(declare-fun bs!571552 () Bool)

(assert (= bs!571552 d!1067627))

(declare-fun m!4131327 () Bool)

(assert (=> bs!571552 m!4131327))

(assert (=> b!3629138 d!1067627))

(declare-fun d!1067629 () Bool)

(assert (=> d!1067629 (= (isEmpty!22618 (tail!5619 lt!1255264)) ((_ is Nil!38244) (tail!5619 lt!1255264)))))

(assert (=> b!3629197 d!1067629))

(assert (=> b!3629197 d!1067399))

(assert (=> b!3629392 d!1067483))

(assert (=> b!3629392 d!1067599))

(declare-fun d!1067631 () Bool)

(declare-fun charsToBigInt!0 (List!38367 Int) Int)

(assert (=> d!1067631 (= (inv!15 (value!183024 token!511)) (= (charsToBigInt!0 (text!41987 (value!183024 token!511)) 0) (value!183020 (value!183024 token!511))))))

(declare-fun bs!571554 () Bool)

(assert (= bs!571554 d!1067631))

(declare-fun m!4131331 () Bool)

(assert (=> bs!571554 m!4131331))

(assert (=> b!3629065 d!1067631))

(declare-fun d!1067635 () Bool)

(assert (=> d!1067635 (= (inv!51664 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (isBalanced!3502 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(declare-fun bs!571555 () Bool)

(assert (= bs!571555 d!1067635))

(declare-fun m!4131333 () Bool)

(assert (=> bs!571555 m!4131333))

(assert (=> tb!208405 d!1067635))

(declare-fun b!3630097 () Bool)

(declare-fun res!1469947 () Bool)

(declare-fun e!2247059 () Bool)

(assert (=> b!3630097 (=> (not res!1469947) (not e!2247059))))

(declare-fun lt!1255624 () List!38368)

(assert (=> b!3630097 (= res!1469947 (= (size!29181 lt!1255624) (+ (size!29181 (ite c!627838 call!262493 call!262496)) (size!29181 (ite c!627838 call!262496 call!262493)))))))

(declare-fun b!3630095 () Bool)

(declare-fun e!2247058 () List!38368)

(assert (=> b!3630095 (= e!2247058 (ite c!627838 call!262496 call!262493))))

(declare-fun d!1067637 () Bool)

(assert (=> d!1067637 e!2247059))

(declare-fun res!1469948 () Bool)

(assert (=> d!1067637 (=> (not res!1469948) (not e!2247059))))

(assert (=> d!1067637 (= res!1469948 (= (content!5483 lt!1255624) ((_ map or) (content!5483 (ite c!627838 call!262493 call!262496)) (content!5483 (ite c!627838 call!262496 call!262493)))))))

(assert (=> d!1067637 (= lt!1255624 e!2247058)))

(declare-fun c!628028 () Bool)

(assert (=> d!1067637 (= c!628028 ((_ is Nil!38244) (ite c!627838 call!262493 call!262496)))))

(assert (=> d!1067637 (= (++!9520 (ite c!627838 call!262493 call!262496) (ite c!627838 call!262496 call!262493)) lt!1255624)))

(declare-fun b!3630098 () Bool)

(assert (=> b!3630098 (= e!2247059 (or (not (= (ite c!627838 call!262496 call!262493) Nil!38244)) (= lt!1255624 (ite c!627838 call!262493 call!262496))))))

(declare-fun b!3630096 () Bool)

(assert (=> b!3630096 (= e!2247058 (Cons!38244 (h!43664 (ite c!627838 call!262493 call!262496)) (++!9520 (t!294963 (ite c!627838 call!262493 call!262496)) (ite c!627838 call!262496 call!262493))))))

(assert (= (and d!1067637 c!628028) b!3630095))

(assert (= (and d!1067637 (not c!628028)) b!3630096))

(assert (= (and d!1067637 res!1469948) b!3630097))

(assert (= (and b!3630097 res!1469947) b!3630098))

(declare-fun m!4131335 () Bool)

(assert (=> b!3630097 m!4131335))

(declare-fun m!4131337 () Bool)

(assert (=> b!3630097 m!4131337))

(declare-fun m!4131339 () Bool)

(assert (=> b!3630097 m!4131339))

(declare-fun m!4131341 () Bool)

(assert (=> d!1067637 m!4131341))

(declare-fun m!4131343 () Bool)

(assert (=> d!1067637 m!4131343))

(declare-fun m!4131345 () Bool)

(assert (=> d!1067637 m!4131345))

(declare-fun m!4131347 () Bool)

(assert (=> b!3630096 m!4131347))

(assert (=> bm!262491 d!1067637))

(declare-fun b!3630101 () Bool)

(declare-fun res!1469949 () Bool)

(declare-fun e!2247061 () Bool)

(assert (=> b!3630101 (=> (not res!1469949) (not e!2247061))))

(declare-fun lt!1255625 () List!38368)

(assert (=> b!3630101 (= res!1469949 (= (size!29181 lt!1255625) (+ (size!29181 (t!294963 lt!1255264)) (size!29181 (_2!22190 lt!1255278)))))))

(declare-fun b!3630099 () Bool)

(declare-fun e!2247060 () List!38368)

(assert (=> b!3630099 (= e!2247060 (_2!22190 lt!1255278))))

(declare-fun d!1067639 () Bool)

(assert (=> d!1067639 e!2247061))

(declare-fun res!1469950 () Bool)

(assert (=> d!1067639 (=> (not res!1469950) (not e!2247061))))

(assert (=> d!1067639 (= res!1469950 (= (content!5483 lt!1255625) ((_ map or) (content!5483 (t!294963 lt!1255264)) (content!5483 (_2!22190 lt!1255278)))))))

(assert (=> d!1067639 (= lt!1255625 e!2247060)))

(declare-fun c!628029 () Bool)

(assert (=> d!1067639 (= c!628029 ((_ is Nil!38244) (t!294963 lt!1255264)))))

(assert (=> d!1067639 (= (++!9520 (t!294963 lt!1255264) (_2!22190 lt!1255278)) lt!1255625)))

(declare-fun b!3630102 () Bool)

(assert (=> b!3630102 (= e!2247061 (or (not (= (_2!22190 lt!1255278) Nil!38244)) (= lt!1255625 (t!294963 lt!1255264))))))

(declare-fun b!3630100 () Bool)

(assert (=> b!3630100 (= e!2247060 (Cons!38244 (h!43664 (t!294963 lt!1255264)) (++!9520 (t!294963 (t!294963 lt!1255264)) (_2!22190 lt!1255278))))))

(assert (= (and d!1067639 c!628029) b!3630099))

(assert (= (and d!1067639 (not c!628029)) b!3630100))

(assert (= (and d!1067639 res!1469950) b!3630101))

(assert (= (and b!3630101 res!1469949) b!3630102))

(declare-fun m!4131349 () Bool)

(assert (=> b!3630101 m!4131349))

(assert (=> b!3630101 m!4131067))

(assert (=> b!3630101 m!4130741))

(declare-fun m!4131351 () Bool)

(assert (=> d!1067639 m!4131351))

(assert (=> d!1067639 m!4131075))

(assert (=> d!1067639 m!4130747))

(declare-fun m!4131353 () Bool)

(assert (=> b!3630100 m!4131353))

(assert (=> b!3629565 d!1067639))

(declare-fun d!1067641 () Bool)

(declare-fun e!2247062 () Bool)

(assert (=> d!1067641 e!2247062))

(declare-fun res!1469956 () Bool)

(assert (=> d!1067641 (=> res!1469956 e!2247062)))

(declare-fun lt!1255627 () Option!8037)

(assert (=> d!1067641 (= res!1469956 (isEmpty!22622 lt!1255627))))

(declare-fun e!2247064 () Option!8037)

(assert (=> d!1067641 (= lt!1255627 e!2247064)))

(declare-fun c!628030 () Bool)

(assert (=> d!1067641 (= c!628030 (and ((_ is Cons!38245) (t!294964 rules!3307)) ((_ is Nil!38245) (t!294964 (t!294964 rules!3307)))))))

(declare-fun lt!1255630 () Unit!55058)

(declare-fun lt!1255629 () Unit!55058)

(assert (=> d!1067641 (= lt!1255630 lt!1255629)))

(assert (=> d!1067641 (isPrefix!3067 lt!1255280 lt!1255280)))

(assert (=> d!1067641 (= lt!1255629 (lemmaIsPrefixRefl!1942 lt!1255280 lt!1255280))))

(assert (=> d!1067641 (rulesValidInductive!2007 thiss!23823 (t!294964 rules!3307))))

(assert (=> d!1067641 (= (maxPrefix!2827 thiss!23823 (t!294964 rules!3307) lt!1255280) lt!1255627)))

(declare-fun b!3630103 () Bool)

(declare-fun res!1469953 () Bool)

(declare-fun e!2247063 () Bool)

(assert (=> b!3630103 (=> (not res!1469953) (not e!2247063))))

(assert (=> b!3630103 (= res!1469953 (< (size!29181 (_2!22190 (get!12499 lt!1255627))) (size!29181 lt!1255280)))))

(declare-fun bm!262569 () Bool)

(declare-fun call!262574 () Option!8037)

(assert (=> bm!262569 (= call!262574 (maxPrefixOneRule!1967 thiss!23823 (h!43665 (t!294964 rules!3307)) lt!1255280))))

(declare-fun b!3630104 () Bool)

(declare-fun res!1469952 () Bool)

(assert (=> b!3630104 (=> (not res!1469952) (not e!2247063))))

(assert (=> b!3630104 (= res!1469952 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255627)))) (_2!22190 (get!12499 lt!1255627))) lt!1255280))))

(declare-fun b!3630105 () Bool)

(declare-fun res!1469957 () Bool)

(assert (=> b!3630105 (=> (not res!1469957) (not e!2247063))))

(assert (=> b!3630105 (= res!1469957 (= (value!183024 (_1!22190 (get!12499 lt!1255627))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255627)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255627)))))))))

(declare-fun b!3630106 () Bool)

(declare-fun res!1469955 () Bool)

(assert (=> b!3630106 (=> (not res!1469955) (not e!2247063))))

(assert (=> b!3630106 (= res!1469955 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255627)))) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255627)))))))

(declare-fun b!3630107 () Bool)

(assert (=> b!3630107 (= e!2247063 (contains!7471 (t!294964 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255627)))))))

(declare-fun b!3630108 () Bool)

(declare-fun res!1469954 () Bool)

(assert (=> b!3630108 (=> (not res!1469954) (not e!2247063))))

(assert (=> b!3630108 (= res!1469954 (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255627)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255627))))))))

(declare-fun b!3630109 () Bool)

(assert (=> b!3630109 (= e!2247064 call!262574)))

(declare-fun b!3630110 () Bool)

(declare-fun lt!1255628 () Option!8037)

(declare-fun lt!1255626 () Option!8037)

(assert (=> b!3630110 (= e!2247064 (ite (and ((_ is None!8036) lt!1255628) ((_ is None!8036) lt!1255626)) None!8036 (ite ((_ is None!8036) lt!1255626) lt!1255628 (ite ((_ is None!8036) lt!1255628) lt!1255626 (ite (>= (size!29178 (_1!22190 (v!37824 lt!1255628))) (size!29178 (_1!22190 (v!37824 lt!1255626)))) lt!1255628 lt!1255626)))))))

(assert (=> b!3630110 (= lt!1255628 call!262574)))

(assert (=> b!3630110 (= lt!1255626 (maxPrefix!2827 thiss!23823 (t!294964 (t!294964 rules!3307)) lt!1255280))))

(declare-fun b!3630111 () Bool)

(assert (=> b!3630111 (= e!2247062 e!2247063)))

(declare-fun res!1469951 () Bool)

(assert (=> b!3630111 (=> (not res!1469951) (not e!2247063))))

(assert (=> b!3630111 (= res!1469951 (isDefined!6268 lt!1255627))))

(assert (= (and d!1067641 c!628030) b!3630109))

(assert (= (and d!1067641 (not c!628030)) b!3630110))

(assert (= (or b!3630109 b!3630110) bm!262569))

(assert (= (and d!1067641 (not res!1469956)) b!3630111))

(assert (= (and b!3630111 res!1469951) b!3630106))

(assert (= (and b!3630106 res!1469955) b!3630103))

(assert (= (and b!3630103 res!1469953) b!3630104))

(assert (= (and b!3630104 res!1469952) b!3630105))

(assert (= (and b!3630105 res!1469957) b!3630108))

(assert (= (and b!3630108 res!1469954) b!3630107))

(declare-fun m!4131361 () Bool)

(assert (=> b!3630104 m!4131361))

(declare-fun m!4131363 () Bool)

(assert (=> b!3630104 m!4131363))

(assert (=> b!3630104 m!4131363))

(declare-fun m!4131365 () Bool)

(assert (=> b!3630104 m!4131365))

(assert (=> b!3630104 m!4131365))

(declare-fun m!4131371 () Bool)

(assert (=> b!3630104 m!4131371))

(assert (=> b!3630105 m!4131361))

(declare-fun m!4131373 () Bool)

(assert (=> b!3630105 m!4131373))

(assert (=> b!3630105 m!4131373))

(declare-fun m!4131375 () Bool)

(assert (=> b!3630105 m!4131375))

(declare-fun m!4131377 () Bool)

(assert (=> bm!262569 m!4131377))

(declare-fun m!4131379 () Bool)

(assert (=> b!3630110 m!4131379))

(declare-fun m!4131381 () Bool)

(assert (=> d!1067641 m!4131381))

(assert (=> d!1067641 m!4130223))

(assert (=> d!1067641 m!4130225))

(assert (=> d!1067641 m!4131209))

(assert (=> b!3630108 m!4131361))

(assert (=> b!3630108 m!4131363))

(assert (=> b!3630108 m!4131363))

(assert (=> b!3630108 m!4131365))

(assert (=> b!3630108 m!4131365))

(declare-fun m!4131383 () Bool)

(assert (=> b!3630108 m!4131383))

(assert (=> b!3630106 m!4131361))

(assert (=> b!3630106 m!4131363))

(assert (=> b!3630106 m!4131363))

(assert (=> b!3630106 m!4131365))

(assert (=> b!3630103 m!4131361))

(declare-fun m!4131385 () Bool)

(assert (=> b!3630103 m!4131385))

(assert (=> b!3630103 m!4130233))

(assert (=> b!3630107 m!4131361))

(declare-fun m!4131387 () Bool)

(assert (=> b!3630107 m!4131387))

(declare-fun m!4131389 () Bool)

(assert (=> b!3630111 m!4131389))

(assert (=> b!3629143 d!1067641))

(assert (=> b!3629600 d!1067531))

(assert (=> b!3629600 d!1067533))

(declare-fun d!1067649 () Bool)

(declare-fun c!628032 () Bool)

(assert (=> d!1067649 (= c!628032 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))))

(declare-fun e!2247070 () Bool)

(assert (=> d!1067649 (= (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))) e!2247070)))

(declare-fun b!3630120 () Bool)

(assert (=> b!3630120 (= e!2247070 (inv!51665 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))))

(declare-fun b!3630121 () Bool)

(declare-fun e!2247071 () Bool)

(assert (=> b!3630121 (= e!2247070 e!2247071)))

(declare-fun res!1469962 () Bool)

(assert (=> b!3630121 (= res!1469962 (not ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))))))

(assert (=> b!3630121 (=> res!1469962 e!2247071)))

(declare-fun b!3630122 () Bool)

(assert (=> b!3630122 (= e!2247071 (inv!51666 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))))

(assert (= (and d!1067649 c!628032) b!3630120))

(assert (= (and d!1067649 (not c!628032)) b!3630121))

(assert (= (and b!3630121 (not res!1469962)) b!3630122))

(declare-fun m!4131395 () Bool)

(assert (=> b!3630120 m!4131395))

(declare-fun m!4131397 () Bool)

(assert (=> b!3630122 m!4131397))

(assert (=> b!3629331 d!1067649))

(assert (=> b!3629546 d!1067405))

(assert (=> b!3629546 d!1067407))

(assert (=> b!3629546 d!1067409))

(declare-fun d!1067657 () Bool)

(declare-fun lt!1255635 () Int)

(assert (=> d!1067657 (>= lt!1255635 0)))

(declare-fun e!2247074 () Int)

(assert (=> d!1067657 (= lt!1255635 e!2247074)))

(declare-fun c!628035 () Bool)

(assert (=> d!1067657 (= c!628035 ((_ is Nil!38244) (_2!22190 (get!12499 lt!1255514))))))

(assert (=> d!1067657 (= (size!29181 (_2!22190 (get!12499 lt!1255514))) lt!1255635)))

(declare-fun b!3630125 () Bool)

(assert (=> b!3630125 (= e!2247074 0)))

(declare-fun b!3630126 () Bool)

(assert (=> b!3630126 (= e!2247074 (+ 1 (size!29181 (t!294963 (_2!22190 (get!12499 lt!1255514))))))))

(assert (= (and d!1067657 c!628035) b!3630125))

(assert (= (and d!1067657 (not c!628035)) b!3630126))

(declare-fun m!4131401 () Bool)

(assert (=> b!3630126 m!4131401))

(assert (=> b!3629543 d!1067657))

(assert (=> b!3629543 d!1067409))

(assert (=> b!3629543 d!1067483))

(declare-fun bs!571564 () Bool)

(declare-fun d!1067659 () Bool)

(assert (= bs!571564 (and d!1067659 d!1067249)))

(declare-fun lambda!124251 () Int)

(assert (=> bs!571564 (= (and (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (= lambda!124251 lambda!124227))))

(assert (=> d!1067659 true))

(assert (=> d!1067659 (< (dynLambda!16570 order!20919 (toChars!7851 (transformation!5704 (rule!8474 token!511)))) (dynLambda!16572 order!20921 lambda!124251))))

(assert (=> d!1067659 true))

(assert (=> d!1067659 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 (rule!8474 token!511)))) (dynLambda!16572 order!20921 lambda!124251))))

(declare-fun Forall!1368 (Int) Bool)

(assert (=> d!1067659 (= (semiInverseModEq!2420 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 token!511)))) (Forall!1368 lambda!124251))))

(declare-fun bs!571565 () Bool)

(assert (= bs!571565 d!1067659))

(declare-fun m!4131413 () Bool)

(assert (=> bs!571565 m!4131413))

(assert (=> d!1067369 d!1067659))

(declare-fun d!1067667 () Bool)

(declare-fun lt!1255636 () Bool)

(assert (=> d!1067667 (= lt!1255636 (select (content!5481 (t!294964 rules!3307)) rule!403))))

(declare-fun e!2247078 () Bool)

(assert (=> d!1067667 (= lt!1255636 e!2247078)))

(declare-fun res!1469963 () Bool)

(assert (=> d!1067667 (=> (not res!1469963) (not e!2247078))))

(assert (=> d!1067667 (= res!1469963 ((_ is Cons!38245) (t!294964 rules!3307)))))

(assert (=> d!1067667 (= (contains!7471 (t!294964 rules!3307) rule!403) lt!1255636)))

(declare-fun b!3630139 () Bool)

(declare-fun e!2247079 () Bool)

(assert (=> b!3630139 (= e!2247078 e!2247079)))

(declare-fun res!1469964 () Bool)

(assert (=> b!3630139 (=> res!1469964 e!2247079)))

(assert (=> b!3630139 (= res!1469964 (= (h!43665 (t!294964 rules!3307)) rule!403))))

(declare-fun b!3630140 () Bool)

(assert (=> b!3630140 (= e!2247079 (contains!7471 (t!294964 (t!294964 rules!3307)) rule!403))))

(assert (= (and d!1067667 res!1469963) b!3630139))

(assert (= (and b!3630139 (not res!1469964)) b!3630140))

(declare-fun m!4131417 () Bool)

(assert (=> d!1067667 m!4131417))

(declare-fun m!4131419 () Bool)

(assert (=> d!1067667 m!4131419))

(declare-fun m!4131421 () Bool)

(assert (=> b!3630140 m!4131421))

(assert (=> b!3629589 d!1067667))

(declare-fun d!1067673 () Bool)

(assert (=> d!1067673 (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (h!43664 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(assert (=> b!3629603 d!1067673))

(assert (=> b!3629210 d!1067543))

(assert (=> b!3629553 d!1067397))

(declare-fun d!1067675 () Bool)

(assert (=> d!1067675 (= (head!7682 (++!9520 lt!1255264 (_2!22190 lt!1255278))) (h!43664 (++!9520 lt!1255264 (_2!22190 lt!1255278))))))

(assert (=> b!3629553 d!1067675))

(declare-fun d!1067677 () Bool)

(assert (=> d!1067677 (= (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))) (v!37823 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))

(assert (=> b!3629538 d!1067677))

(declare-fun d!1067681 () Bool)

(declare-fun e!2247085 () Bool)

(assert (=> d!1067681 e!2247085))

(declare-fun res!1469966 () Bool)

(assert (=> d!1067681 (=> res!1469966 e!2247085)))

(declare-fun lt!1255637 () Option!8036)

(assert (=> d!1067681 (= res!1469966 (isEmpty!22623 lt!1255637))))

(declare-fun e!2247086 () Option!8036)

(assert (=> d!1067681 (= lt!1255637 e!2247086)))

(declare-fun c!628039 () Bool)

(assert (=> d!1067681 (= c!628039 (and ((_ is Cons!38245) rules!3307) (= (tag!6432 (h!43665 rules!3307)) (tag!6432 (rule!8474 lt!1255511)))))))

(assert (=> d!1067681 (rulesInvariant!4690 thiss!23823 rules!3307)))

(assert (=> d!1067681 (= (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))) lt!1255637)))

(declare-fun b!3630145 () Bool)

(declare-fun e!2247081 () Bool)

(assert (=> b!3630145 (= e!2247085 e!2247081)))

(declare-fun res!1469967 () Bool)

(assert (=> b!3630145 (=> (not res!1469967) (not e!2247081))))

(assert (=> b!3630145 (= res!1469967 (contains!7471 rules!3307 (get!12498 lt!1255637)))))

(declare-fun b!3630147 () Bool)

(assert (=> b!3630147 (= e!2247081 (= (tag!6432 (get!12498 lt!1255637)) (tag!6432 (rule!8474 lt!1255511))))))

(declare-fun b!3630148 () Bool)

(declare-fun lt!1255639 () Unit!55058)

(declare-fun lt!1255640 () Unit!55058)

(assert (=> b!3630148 (= lt!1255639 lt!1255640)))

(assert (=> b!3630148 (rulesInvariant!4690 thiss!23823 (t!294964 rules!3307))))

(assert (=> b!3630148 (= lt!1255640 (lemmaInvariantOnRulesThenOnTail!551 thiss!23823 (h!43665 rules!3307) (t!294964 rules!3307)))))

(declare-fun e!2247082 () Option!8036)

(assert (=> b!3630148 (= e!2247082 (getRuleFromTag!1308 thiss!23823 (t!294964 rules!3307) (tag!6432 (rule!8474 lt!1255511))))))

(declare-fun b!3630149 () Bool)

(assert (=> b!3630149 (= e!2247082 None!8035)))

(declare-fun b!3630150 () Bool)

(assert (=> b!3630150 (= e!2247086 e!2247082)))

(declare-fun c!628041 () Bool)

(assert (=> b!3630150 (= c!628041 (and ((_ is Cons!38245) rules!3307) (not (= (tag!6432 (h!43665 rules!3307)) (tag!6432 (rule!8474 lt!1255511))))))))

(declare-fun b!3630151 () Bool)

(assert (=> b!3630151 (= e!2247086 (Some!8035 (h!43665 rules!3307)))))

(assert (= (and d!1067681 c!628039) b!3630151))

(assert (= (and d!1067681 (not c!628039)) b!3630150))

(assert (= (and b!3630150 c!628041) b!3630148))

(assert (= (and b!3630150 (not c!628041)) b!3630149))

(assert (= (and d!1067681 (not res!1469966)) b!3630145))

(assert (= (and b!3630145 res!1469967) b!3630147))

(declare-fun m!4131431 () Bool)

(assert (=> d!1067681 m!4131431))

(assert (=> d!1067681 m!4130045))

(declare-fun m!4131435 () Bool)

(assert (=> b!3630145 m!4131435))

(assert (=> b!3630145 m!4131435))

(declare-fun m!4131437 () Bool)

(assert (=> b!3630145 m!4131437))

(assert (=> b!3630147 m!4131435))

(assert (=> b!3630148 m!4130457))

(assert (=> b!3630148 m!4130459))

(declare-fun m!4131445 () Bool)

(assert (=> b!3630148 m!4131445))

(assert (=> b!3629538 d!1067681))

(declare-fun b!3630153 () Bool)

(declare-fun e!2247088 () Bool)

(assert (=> b!3630153 (= e!2247088 (matchR!5032 (derivativeStep!3169 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))) (head!7682 (list!14130 (charsOf!3718 lt!1255511)))) (tail!5619 (list!14130 (charsOf!3718 lt!1255511)))))))

(declare-fun b!3630154 () Bool)

(declare-fun e!2247092 () Bool)

(declare-fun e!2247087 () Bool)

(assert (=> b!3630154 (= e!2247092 e!2247087)))

(declare-fun res!1469971 () Bool)

(assert (=> b!3630154 (=> (not res!1469971) (not e!2247087))))

(declare-fun lt!1255641 () Bool)

(assert (=> b!3630154 (= res!1469971 (not lt!1255641))))

(declare-fun b!3630155 () Bool)

(declare-fun e!2247089 () Bool)

(declare-fun call!262579 () Bool)

(assert (=> b!3630155 (= e!2247089 (= lt!1255641 call!262579))))

(declare-fun b!3630156 () Bool)

(declare-fun e!2247093 () Bool)

(assert (=> b!3630156 (= e!2247089 e!2247093)))

(declare-fun c!628043 () Bool)

(assert (=> b!3630156 (= c!628043 ((_ is EmptyLang!10463) (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))))

(declare-fun b!3630157 () Bool)

(assert (=> b!3630157 (= e!2247093 (not lt!1255641))))

(declare-fun b!3630158 () Bool)

(declare-fun res!1469976 () Bool)

(assert (=> b!3630158 (=> res!1469976 e!2247092)))

(assert (=> b!3630158 (= res!1469976 (not ((_ is ElementMatch!10463) (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))))))))

(assert (=> b!3630158 (= e!2247093 e!2247092)))

(declare-fun b!3630159 () Bool)

(assert (=> b!3630159 (= e!2247088 (nullable!3620 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))))

(declare-fun b!3630160 () Bool)

(declare-fun res!1469974 () Bool)

(declare-fun e!2247090 () Bool)

(assert (=> b!3630160 (=> res!1469974 e!2247090)))

(assert (=> b!3630160 (= res!1469974 (not (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 lt!1255511))))))))

(declare-fun b!3630161 () Bool)

(assert (=> b!3630161 (= e!2247090 (not (= (head!7682 (list!14130 (charsOf!3718 lt!1255511))) (c!627780 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))))))

(declare-fun bm!262574 () Bool)

(assert (=> bm!262574 (= call!262579 (isEmpty!22618 (list!14130 (charsOf!3718 lt!1255511))))))

(declare-fun d!1067685 () Bool)

(assert (=> d!1067685 e!2247089))

(declare-fun c!628044 () Bool)

(assert (=> d!1067685 (= c!628044 ((_ is EmptyExpr!10463) (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))))

(assert (=> d!1067685 (= lt!1255641 e!2247088)))

(declare-fun c!628042 () Bool)

(assert (=> d!1067685 (= c!628042 (isEmpty!22618 (list!14130 (charsOf!3718 lt!1255511))))))

(assert (=> d!1067685 (validRegex!4782 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))))))

(assert (=> d!1067685 (= (matchR!5032 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))) (list!14130 (charsOf!3718 lt!1255511))) lt!1255641)))

(declare-fun b!3630152 () Bool)

(declare-fun res!1469972 () Bool)

(declare-fun e!2247091 () Bool)

(assert (=> b!3630152 (=> (not res!1469972) (not e!2247091))))

(assert (=> b!3630152 (= res!1469972 (not call!262579))))

(declare-fun b!3630162 () Bool)

(declare-fun res!1469975 () Bool)

(assert (=> b!3630162 (=> (not res!1469975) (not e!2247091))))

(assert (=> b!3630162 (= res!1469975 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 lt!1255511)))))))

(declare-fun b!3630163 () Bool)

(assert (=> b!3630163 (= e!2247091 (= (head!7682 (list!14130 (charsOf!3718 lt!1255511))) (c!627780 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))))))))

(declare-fun b!3630164 () Bool)

(assert (=> b!3630164 (= e!2247087 e!2247090)))

(declare-fun res!1469977 () Bool)

(assert (=> b!3630164 (=> res!1469977 e!2247090)))

(assert (=> b!3630164 (= res!1469977 call!262579)))

(declare-fun b!3630165 () Bool)

(declare-fun res!1469970 () Bool)

(assert (=> b!3630165 (=> res!1469970 e!2247092)))

(assert (=> b!3630165 (= res!1469970 e!2247091)))

(declare-fun res!1469973 () Bool)

(assert (=> b!3630165 (=> (not res!1469973) (not e!2247091))))

(assert (=> b!3630165 (= res!1469973 lt!1255641)))

(assert (= (and d!1067685 c!628042) b!3630159))

(assert (= (and d!1067685 (not c!628042)) b!3630153))

(assert (= (and d!1067685 c!628044) b!3630155))

(assert (= (and d!1067685 (not c!628044)) b!3630156))

(assert (= (and b!3630156 c!628043) b!3630157))

(assert (= (and b!3630156 (not c!628043)) b!3630158))

(assert (= (and b!3630158 (not res!1469976)) b!3630165))

(assert (= (and b!3630165 res!1469973) b!3630152))

(assert (= (and b!3630152 res!1469972) b!3630162))

(assert (= (and b!3630162 res!1469975) b!3630163))

(assert (= (and b!3630165 (not res!1469970)) b!3630154))

(assert (= (and b!3630154 res!1469971) b!3630164))

(assert (= (and b!3630164 (not res!1469977)) b!3630160))

(assert (= (and b!3630160 (not res!1469974)) b!3630161))

(assert (= (or b!3630155 b!3630152 b!3630164) bm!262574))

(assert (=> b!3630162 m!4130657))

(declare-fun m!4131453 () Bool)

(assert (=> b!3630162 m!4131453))

(assert (=> b!3630162 m!4131453))

(declare-fun m!4131455 () Bool)

(assert (=> b!3630162 m!4131455))

(assert (=> bm!262574 m!4130657))

(declare-fun m!4131457 () Bool)

(assert (=> bm!262574 m!4131457))

(declare-fun m!4131459 () Bool)

(assert (=> b!3630159 m!4131459))

(assert (=> d!1067685 m!4130657))

(assert (=> d!1067685 m!4131457))

(declare-fun m!4131461 () Bool)

(assert (=> d!1067685 m!4131461))

(assert (=> b!3630161 m!4130657))

(declare-fun m!4131463 () Bool)

(assert (=> b!3630161 m!4131463))

(assert (=> b!3630160 m!4130657))

(assert (=> b!3630160 m!4131453))

(assert (=> b!3630160 m!4131453))

(assert (=> b!3630160 m!4131455))

(assert (=> b!3630153 m!4130657))

(assert (=> b!3630153 m!4131463))

(assert (=> b!3630153 m!4131463))

(declare-fun m!4131467 () Bool)

(assert (=> b!3630153 m!4131467))

(assert (=> b!3630153 m!4130657))

(assert (=> b!3630153 m!4131453))

(assert (=> b!3630153 m!4131467))

(assert (=> b!3630153 m!4131453))

(declare-fun m!4131471 () Bool)

(assert (=> b!3630153 m!4131471))

(assert (=> b!3630163 m!4130657))

(assert (=> b!3630163 m!4131463))

(assert (=> b!3629538 d!1067685))

(assert (=> b!3629538 d!1067441))

(assert (=> b!3629538 d!1067443))

(declare-fun d!1067693 () Bool)

(assert (=> d!1067693 (= (isDefined!6268 lt!1255514) (not (isEmpty!22622 lt!1255514)))))

(declare-fun bs!571569 () Bool)

(assert (= bs!571569 d!1067693))

(assert (=> bs!571569 m!4130707))

(assert (=> b!3629551 d!1067693))

(declare-fun bs!571570 () Bool)

(declare-fun d!1067695 () Bool)

(assert (= bs!571570 (and d!1067695 d!1067231)))

(declare-fun lambda!124252 () Int)

(assert (=> bs!571570 (= (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= lambda!124252 lambda!124224))))

(declare-fun bs!571571 () Bool)

(assert (= bs!571571 (and d!1067695 d!1067535)))

(assert (=> bs!571571 (= (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (= lambda!124252 lambda!124239))))

(declare-fun bs!571572 () Bool)

(assert (= bs!571572 (and d!1067695 d!1067545)))

(assert (=> bs!571572 (= (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 token!511)))) (= lambda!124252 lambda!124240))))

(assert (=> d!1067695 true))

(assert (=> d!1067695 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 rule!403))) (dynLambda!16569 order!20917 lambda!124252))))

(assert (=> d!1067695 (= (equivClasses!2319 (toChars!7851 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 rule!403))) (Forall2!966 lambda!124252))))

(declare-fun bs!571573 () Bool)

(assert (= bs!571573 d!1067695))

(declare-fun m!4131483 () Bool)

(assert (=> bs!571573 m!4131483))

(assert (=> b!3629158 d!1067695))

(assert (=> d!1067371 d!1067383))

(declare-fun b!3630174 () Bool)

(declare-fun e!2247101 () Bool)

(declare-fun e!2247105 () Bool)

(assert (=> b!3630174 (= e!2247101 e!2247105)))

(declare-fun res!1469980 () Bool)

(assert (=> b!3630174 (=> (not res!1469980) (not e!2247105))))

(declare-fun call!262580 () Bool)

(assert (=> b!3630174 (= res!1469980 call!262580)))

(declare-fun bm!262575 () Bool)

(declare-fun c!628047 () Bool)

(assert (=> bm!262575 (= call!262580 (validRegex!4782 (ite c!628047 (regTwo!21439 (regex!5704 lt!1255270)) (regOne!21438 (regex!5704 lt!1255270)))))))

(declare-fun c!628048 () Bool)

(declare-fun bm!262576 () Bool)

(declare-fun call!262582 () Bool)

(assert (=> bm!262576 (= call!262582 (validRegex!4782 (ite c!628048 (reg!10792 (regex!5704 lt!1255270)) (ite c!628047 (regOne!21439 (regex!5704 lt!1255270)) (regTwo!21438 (regex!5704 lt!1255270))))))))

(declare-fun b!3630176 () Bool)

(declare-fun e!2247102 () Bool)

(assert (=> b!3630176 (= e!2247102 call!262582)))

(declare-fun b!3630177 () Bool)

(declare-fun e!2247100 () Bool)

(declare-fun e!2247103 () Bool)

(assert (=> b!3630177 (= e!2247100 e!2247103)))

(assert (=> b!3630177 (= c!628048 ((_ is Star!10463) (regex!5704 lt!1255270)))))

(declare-fun b!3630178 () Bool)

(declare-fun e!2247106 () Bool)

(assert (=> b!3630178 (= e!2247106 call!262580)))

(declare-fun b!3630179 () Bool)

(assert (=> b!3630179 (= e!2247103 e!2247102)))

(declare-fun res!1469981 () Bool)

(assert (=> b!3630179 (= res!1469981 (not (nullable!3620 (reg!10792 (regex!5704 lt!1255270)))))))

(assert (=> b!3630179 (=> (not res!1469981) (not e!2247102))))

(declare-fun bm!262577 () Bool)

(declare-fun call!262581 () Bool)

(assert (=> bm!262577 (= call!262581 call!262582)))

(declare-fun b!3630180 () Bool)

(declare-fun e!2247104 () Bool)

(assert (=> b!3630180 (= e!2247103 e!2247104)))

(assert (=> b!3630180 (= c!628047 ((_ is Union!10463) (regex!5704 lt!1255270)))))

(declare-fun b!3630181 () Bool)

(declare-fun res!1469982 () Bool)

(assert (=> b!3630181 (=> (not res!1469982) (not e!2247106))))

(assert (=> b!3630181 (= res!1469982 call!262581)))

(assert (=> b!3630181 (= e!2247104 e!2247106)))

(declare-fun b!3630182 () Bool)

(declare-fun res!1469983 () Bool)

(assert (=> b!3630182 (=> res!1469983 e!2247101)))

(assert (=> b!3630182 (= res!1469983 (not ((_ is Concat!16397) (regex!5704 lt!1255270))))))

(assert (=> b!3630182 (= e!2247104 e!2247101)))

(declare-fun d!1067699 () Bool)

(declare-fun res!1469984 () Bool)

(assert (=> d!1067699 (=> res!1469984 e!2247100)))

(assert (=> d!1067699 (= res!1469984 ((_ is ElementMatch!10463) (regex!5704 lt!1255270)))))

(assert (=> d!1067699 (= (validRegex!4782 (regex!5704 lt!1255270)) e!2247100)))

(declare-fun b!3630175 () Bool)

(assert (=> b!3630175 (= e!2247105 call!262581)))

(assert (= (and d!1067699 (not res!1469984)) b!3630177))

(assert (= (and b!3630177 c!628048) b!3630179))

(assert (= (and b!3630177 (not c!628048)) b!3630180))

(assert (= (and b!3630179 res!1469981) b!3630176))

(assert (= (and b!3630180 c!628047) b!3630181))

(assert (= (and b!3630180 (not c!628047)) b!3630182))

(assert (= (and b!3630181 res!1469982) b!3630178))

(assert (= (and b!3630182 (not res!1469983)) b!3630174))

(assert (= (and b!3630174 res!1469980) b!3630175))

(assert (= (or b!3630181 b!3630175) bm!262577))

(assert (= (or b!3630178 b!3630174) bm!262575))

(assert (= (or b!3630176 bm!262577) bm!262576))

(declare-fun m!4131493 () Bool)

(assert (=> bm!262575 m!4131493))

(declare-fun m!4131495 () Bool)

(assert (=> bm!262576 m!4131495))

(declare-fun m!4131497 () Bool)

(assert (=> b!3630179 m!4131497))

(assert (=> d!1067371 d!1067699))

(declare-fun d!1067705 () Bool)

(declare-fun lt!1255648 () Bool)

(assert (=> d!1067705 (= lt!1255648 (select (content!5481 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))

(declare-fun e!2247114 () Bool)

(assert (=> d!1067705 (= lt!1255648 e!2247114)))

(declare-fun res!1469993 () Bool)

(assert (=> d!1067705 (=> (not res!1469993) (not e!2247114))))

(assert (=> d!1067705 (= res!1469993 ((_ is Cons!38245) rules!3307))))

(assert (=> d!1067705 (= (contains!7471 rules!3307 (rule!8474 (_1!22190 (get!12499 lt!1255514)))) lt!1255648)))

(declare-fun b!3630197 () Bool)

(declare-fun e!2247115 () Bool)

(assert (=> b!3630197 (= e!2247114 e!2247115)))

(declare-fun res!1469994 () Bool)

(assert (=> b!3630197 (=> res!1469994 e!2247115)))

(assert (=> b!3630197 (= res!1469994 (= (h!43665 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))

(declare-fun b!3630198 () Bool)

(assert (=> b!3630198 (= e!2247115 (contains!7471 (t!294964 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))

(assert (= (and d!1067705 res!1469993) b!3630197))

(assert (= (and b!3630197 (not res!1469994)) b!3630198))

(assert (=> d!1067705 m!4130249))

(declare-fun m!4131499 () Bool)

(assert (=> d!1067705 m!4131499))

(declare-fun m!4131501 () Bool)

(assert (=> b!3630198 m!4131501))

(assert (=> b!3629547 d!1067705))

(assert (=> b!3629547 d!1067409))

(declare-fun d!1067707 () Bool)

(assert (=> d!1067707 (= (isEmpty!22623 lt!1255275) (not ((_ is Some!8035) lt!1255275)))))

(assert (=> d!1067267 d!1067707))

(assert (=> b!3629198 d!1067397))

(declare-fun bs!571574 () Bool)

(declare-fun d!1067709 () Bool)

(assert (= bs!571574 (and d!1067709 d!1067231)))

(declare-fun lambda!124253 () Int)

(assert (=> bs!571574 (= (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= lambda!124253 lambda!124224))))

(declare-fun bs!571575 () Bool)

(assert (= bs!571575 (and d!1067709 d!1067535)))

(assert (=> bs!571575 (= (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (= lambda!124253 lambda!124239))))

(declare-fun bs!571576 () Bool)

(assert (= bs!571576 (and d!1067709 d!1067545)))

(assert (=> bs!571576 (= (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 token!511)))) (= lambda!124253 lambda!124240))))

(declare-fun bs!571577 () Bool)

(assert (= bs!571577 (and d!1067709 d!1067695)))

(assert (=> bs!571577 (= (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 rule!403))) (= lambda!124253 lambda!124252))))

(assert (=> d!1067709 true))

(assert (=> d!1067709 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 anOtherTypeRule!33))) (dynLambda!16569 order!20917 lambda!124253))))

(assert (=> d!1067709 (= (equivClasses!2319 (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 anOtherTypeRule!33))) (Forall2!966 lambda!124253))))

(declare-fun bs!571578 () Bool)

(assert (= bs!571578 d!1067709))

(declare-fun m!4131519 () Bool)

(assert (=> bs!571578 m!4131519))

(assert (=> b!3629590 d!1067709))

(assert (=> b!3629139 d!1067389))

(assert (=> b!3629139 d!1067391))

(assert (=> b!3629139 d!1067387))

(declare-fun bs!571579 () Bool)

(declare-fun d!1067715 () Bool)

(assert (= bs!571579 (and d!1067715 d!1067249)))

(declare-fun lambda!124254 () Int)

(assert (=> bs!571579 (= (and (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (= lambda!124254 lambda!124227))))

(declare-fun bs!571580 () Bool)

(assert (= bs!571580 (and d!1067715 d!1067659)))

(assert (=> bs!571580 (= (and (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 token!511))))) (= lambda!124254 lambda!124251))))

(assert (=> d!1067715 true))

(assert (=> d!1067715 (< (dynLambda!16570 order!20919 (toChars!7851 (transformation!5704 (h!43665 rules!3307)))) (dynLambda!16572 order!20921 lambda!124254))))

(assert (=> d!1067715 true))

(assert (=> d!1067715 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (dynLambda!16572 order!20921 lambda!124254))))

(assert (=> d!1067715 (= (semiInverseModEq!2420 (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (h!43665 rules!3307)))) (Forall!1368 lambda!124254))))

(declare-fun bs!571581 () Bool)

(assert (= bs!571581 d!1067715))

(declare-fun m!4131527 () Bool)

(assert (=> bs!571581 m!4131527))

(assert (=> d!1067227 d!1067715))

(declare-fun b!3630209 () Bool)

(declare-fun e!2247124 () Bool)

(assert (=> b!3630209 (= e!2247124 (matchR!5032 (derivativeStep!3169 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)) (head!7682 (tail!5619 lt!1255280))) (tail!5619 (tail!5619 lt!1255280))))))

(declare-fun b!3630210 () Bool)

(declare-fun e!2247128 () Bool)

(declare-fun e!2247123 () Bool)

(assert (=> b!3630210 (= e!2247128 e!2247123)))

(declare-fun res!1470001 () Bool)

(assert (=> b!3630210 (=> (not res!1470001) (not e!2247123))))

(declare-fun lt!1255649 () Bool)

(assert (=> b!3630210 (= res!1470001 (not lt!1255649))))

(declare-fun b!3630211 () Bool)

(declare-fun e!2247125 () Bool)

(declare-fun call!262587 () Bool)

(assert (=> b!3630211 (= e!2247125 (= lt!1255649 call!262587))))

(declare-fun b!3630212 () Bool)

(declare-fun e!2247129 () Bool)

(assert (=> b!3630212 (= e!2247125 e!2247129)))

(declare-fun c!628055 () Bool)

(assert (=> b!3630212 (= c!628055 ((_ is EmptyLang!10463) (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280))))))

(declare-fun b!3630213 () Bool)

(assert (=> b!3630213 (= e!2247129 (not lt!1255649))))

(declare-fun b!3630214 () Bool)

(declare-fun res!1470006 () Bool)

(assert (=> b!3630214 (=> res!1470006 e!2247128)))

(assert (=> b!3630214 (= res!1470006 (not ((_ is ElementMatch!10463) (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)))))))

(assert (=> b!3630214 (= e!2247129 e!2247128)))

(declare-fun b!3630215 () Bool)

(assert (=> b!3630215 (= e!2247124 (nullable!3620 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280))))))

(declare-fun b!3630216 () Bool)

(declare-fun res!1470004 () Bool)

(declare-fun e!2247126 () Bool)

(assert (=> b!3630216 (=> res!1470004 e!2247126)))

(assert (=> b!3630216 (= res!1470004 (not (isEmpty!22618 (tail!5619 (tail!5619 lt!1255280)))))))

(declare-fun b!3630217 () Bool)

(assert (=> b!3630217 (= e!2247126 (not (= (head!7682 (tail!5619 lt!1255280)) (c!627780 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280))))))))

(declare-fun bm!262582 () Bool)

(assert (=> bm!262582 (= call!262587 (isEmpty!22618 (tail!5619 lt!1255280)))))

(declare-fun d!1067719 () Bool)

(assert (=> d!1067719 e!2247125))

(declare-fun c!628056 () Bool)

(assert (=> d!1067719 (= c!628056 ((_ is EmptyExpr!10463) (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280))))))

(assert (=> d!1067719 (= lt!1255649 e!2247124)))

(declare-fun c!628054 () Bool)

(assert (=> d!1067719 (= c!628054 (isEmpty!22618 (tail!5619 lt!1255280)))))

(assert (=> d!1067719 (validRegex!4782 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)))))

(assert (=> d!1067719 (= (matchR!5032 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)) (tail!5619 lt!1255280)) lt!1255649)))

(declare-fun b!3630208 () Bool)

(declare-fun res!1470002 () Bool)

(declare-fun e!2247127 () Bool)

(assert (=> b!3630208 (=> (not res!1470002) (not e!2247127))))

(assert (=> b!3630208 (= res!1470002 (not call!262587))))

(declare-fun b!3630218 () Bool)

(declare-fun res!1470005 () Bool)

(assert (=> b!3630218 (=> (not res!1470005) (not e!2247127))))

(assert (=> b!3630218 (= res!1470005 (isEmpty!22618 (tail!5619 (tail!5619 lt!1255280))))))

(declare-fun b!3630219 () Bool)

(assert (=> b!3630219 (= e!2247127 (= (head!7682 (tail!5619 lt!1255280)) (c!627780 (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)))))))

(declare-fun b!3630220 () Bool)

(assert (=> b!3630220 (= e!2247123 e!2247126)))

(declare-fun res!1470007 () Bool)

(assert (=> b!3630220 (=> res!1470007 e!2247126)))

(assert (=> b!3630220 (= res!1470007 call!262587)))

(declare-fun b!3630221 () Bool)

(declare-fun res!1470000 () Bool)

(assert (=> b!3630221 (=> res!1470000 e!2247128)))

(assert (=> b!3630221 (= res!1470000 e!2247127)))

(declare-fun res!1470003 () Bool)

(assert (=> b!3630221 (=> (not res!1470003) (not e!2247127))))

(assert (=> b!3630221 (= res!1470003 lt!1255649)))

(assert (= (and d!1067719 c!628054) b!3630215))

(assert (= (and d!1067719 (not c!628054)) b!3630209))

(assert (= (and d!1067719 c!628056) b!3630211))

(assert (= (and d!1067719 (not c!628056)) b!3630212))

(assert (= (and b!3630212 c!628055) b!3630213))

(assert (= (and b!3630212 (not c!628055)) b!3630214))

(assert (= (and b!3630214 (not res!1470006)) b!3630221))

(assert (= (and b!3630221 res!1470003) b!3630208))

(assert (= (and b!3630208 res!1470002) b!3630218))

(assert (= (and b!3630218 res!1470005) b!3630219))

(assert (= (and b!3630221 (not res!1470000)) b!3630210))

(assert (= (and b!3630210 res!1470001) b!3630220))

(assert (= (and b!3630220 (not res!1470007)) b!3630216))

(assert (= (and b!3630216 (not res!1470004)) b!3630217))

(assert (= (or b!3630211 b!3630208 b!3630220) bm!262582))

(assert (=> b!3630218 m!4130275))

(assert (=> b!3630218 m!4131107))

(assert (=> b!3630218 m!4131107))

(declare-fun m!4131529 () Bool)

(assert (=> b!3630218 m!4131529))

(assert (=> bm!262582 m!4130275))

(assert (=> bm!262582 m!4130277))

(assert (=> b!3630215 m!4130287))

(declare-fun m!4131531 () Bool)

(assert (=> b!3630215 m!4131531))

(assert (=> d!1067719 m!4130275))

(assert (=> d!1067719 m!4130277))

(assert (=> d!1067719 m!4130287))

(declare-fun m!4131533 () Bool)

(assert (=> d!1067719 m!4131533))

(assert (=> b!3630217 m!4130275))

(assert (=> b!3630217 m!4131111))

(assert (=> b!3630216 m!4130275))

(assert (=> b!3630216 m!4131107))

(assert (=> b!3630216 m!4131107))

(assert (=> b!3630216 m!4131529))

(assert (=> b!3630209 m!4130275))

(assert (=> b!3630209 m!4131111))

(assert (=> b!3630209 m!4130287))

(assert (=> b!3630209 m!4131111))

(declare-fun m!4131535 () Bool)

(assert (=> b!3630209 m!4131535))

(assert (=> b!3630209 m!4130275))

(assert (=> b!3630209 m!4131107))

(assert (=> b!3630209 m!4131535))

(assert (=> b!3630209 m!4131107))

(declare-fun m!4131537 () Bool)

(assert (=> b!3630209 m!4131537))

(assert (=> b!3630219 m!4130275))

(assert (=> b!3630219 m!4131111))

(assert (=> b!3629202 d!1067719))

(declare-fun b!3630222 () Bool)

(declare-fun e!2247130 () Regex!10463)

(declare-fun e!2247131 () Regex!10463)

(assert (=> b!3630222 (= e!2247130 e!2247131)))

(declare-fun c!628058 () Bool)

(assert (=> b!3630222 (= c!628058 ((_ is ElementMatch!10463) (regex!5704 rule!403)))))

(declare-fun d!1067721 () Bool)

(declare-fun lt!1255650 () Regex!10463)

(assert (=> d!1067721 (validRegex!4782 lt!1255650)))

(assert (=> d!1067721 (= lt!1255650 e!2247130)))

(declare-fun c!628061 () Bool)

(assert (=> d!1067721 (= c!628061 (or ((_ is EmptyExpr!10463) (regex!5704 rule!403)) ((_ is EmptyLang!10463) (regex!5704 rule!403))))))

(assert (=> d!1067721 (validRegex!4782 (regex!5704 rule!403))))

(assert (=> d!1067721 (= (derivativeStep!3169 (regex!5704 rule!403) (head!7682 lt!1255280)) lt!1255650)))

(declare-fun b!3630223 () Bool)

(declare-fun e!2247133 () Regex!10463)

(declare-fun call!262589 () Regex!10463)

(declare-fun call!262590 () Regex!10463)

(assert (=> b!3630223 (= e!2247133 (Union!10463 call!262589 call!262590))))

(declare-fun e!2247134 () Regex!10463)

(declare-fun b!3630224 () Bool)

(declare-fun call!262591 () Regex!10463)

(assert (=> b!3630224 (= e!2247134 (Union!10463 (Concat!16397 call!262591 (regTwo!21438 (regex!5704 rule!403))) call!262590))))

(declare-fun bm!262583 () Bool)

(declare-fun c!628060 () Bool)

(assert (=> bm!262583 (= call!262590 (derivativeStep!3169 (ite c!628060 (regTwo!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))) (head!7682 lt!1255280)))))

(declare-fun b!3630225 () Bool)

(assert (=> b!3630225 (= e!2247130 EmptyLang!10463)))

(declare-fun b!3630226 () Bool)

(assert (=> b!3630226 (= c!628060 ((_ is Union!10463) (regex!5704 rule!403)))))

(assert (=> b!3630226 (= e!2247131 e!2247133)))

(declare-fun bm!262584 () Bool)

(declare-fun call!262588 () Regex!10463)

(assert (=> bm!262584 (= call!262588 call!262589)))

(declare-fun bm!262585 () Bool)

(assert (=> bm!262585 (= call!262591 call!262588)))

(declare-fun b!3630227 () Bool)

(declare-fun c!628057 () Bool)

(assert (=> b!3630227 (= c!628057 (nullable!3620 (regOne!21438 (regex!5704 rule!403))))))

(declare-fun e!2247132 () Regex!10463)

(assert (=> b!3630227 (= e!2247132 e!2247134)))

(declare-fun b!3630228 () Bool)

(assert (=> b!3630228 (= e!2247134 (Union!10463 (Concat!16397 call!262591 (regTwo!21438 (regex!5704 rule!403))) EmptyLang!10463))))

(declare-fun b!3630229 () Bool)

(assert (=> b!3630229 (= e!2247131 (ite (= (head!7682 lt!1255280) (c!627780 (regex!5704 rule!403))) EmptyExpr!10463 EmptyLang!10463))))

(declare-fun b!3630230 () Bool)

(assert (=> b!3630230 (= e!2247132 (Concat!16397 call!262588 (regex!5704 rule!403)))))

(declare-fun c!628059 () Bool)

(declare-fun bm!262586 () Bool)

(assert (=> bm!262586 (= call!262589 (derivativeStep!3169 (ite c!628060 (regOne!21439 (regex!5704 rule!403)) (ite c!628059 (reg!10792 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) (head!7682 lt!1255280)))))

(declare-fun b!3630231 () Bool)

(assert (=> b!3630231 (= e!2247133 e!2247132)))

(assert (=> b!3630231 (= c!628059 ((_ is Star!10463) (regex!5704 rule!403)))))

(assert (= (and d!1067721 c!628061) b!3630225))

(assert (= (and d!1067721 (not c!628061)) b!3630222))

(assert (= (and b!3630222 c!628058) b!3630229))

(assert (= (and b!3630222 (not c!628058)) b!3630226))

(assert (= (and b!3630226 c!628060) b!3630223))

(assert (= (and b!3630226 (not c!628060)) b!3630231))

(assert (= (and b!3630231 c!628059) b!3630230))

(assert (= (and b!3630231 (not c!628059)) b!3630227))

(assert (= (and b!3630227 c!628057) b!3630224))

(assert (= (and b!3630227 (not c!628057)) b!3630228))

(assert (= (or b!3630224 b!3630228) bm!262585))

(assert (= (or b!3630230 bm!262585) bm!262584))

(assert (= (or b!3630223 b!3630224) bm!262583))

(assert (= (or b!3630223 bm!262584) bm!262586))

(declare-fun m!4131539 () Bool)

(assert (=> d!1067721 m!4131539))

(assert (=> d!1067721 m!4130283))

(assert (=> bm!262583 m!4130285))

(declare-fun m!4131541 () Bool)

(assert (=> bm!262583 m!4131541))

(declare-fun m!4131543 () Bool)

(assert (=> b!3630227 m!4131543))

(assert (=> bm!262586 m!4130285))

(declare-fun m!4131545 () Bool)

(assert (=> bm!262586 m!4131545))

(assert (=> b!3629202 d!1067721))

(assert (=> b!3629202 d!1067543))

(assert (=> b!3629202 d!1067417))

(declare-fun d!1067723 () Bool)

(assert (=> d!1067723 (= (isEmpty!22622 lt!1255339) (not ((_ is Some!8036) lt!1255339)))))

(assert (=> d!1067187 d!1067723))

(declare-fun b!3630241 () Bool)

(declare-fun e!2247141 () Bool)

(assert (=> b!3630241 (= e!2247141 (>= (size!29181 lt!1255280) (size!29181 lt!1255280)))))

(declare-fun d!1067725 () Bool)

(assert (=> d!1067725 e!2247141))

(declare-fun res!1470013 () Bool)

(assert (=> d!1067725 (=> res!1470013 e!2247141)))

(declare-fun lt!1255651 () Bool)

(assert (=> d!1067725 (= res!1470013 (not lt!1255651))))

(declare-fun e!2247140 () Bool)

(assert (=> d!1067725 (= lt!1255651 e!2247140)))

(declare-fun res!1470010 () Bool)

(assert (=> d!1067725 (=> res!1470010 e!2247140)))

(assert (=> d!1067725 (= res!1470010 ((_ is Nil!38244) lt!1255280))))

(assert (=> d!1067725 (= (isPrefix!3067 lt!1255280 lt!1255280) lt!1255651)))

(declare-fun b!3630240 () Bool)

(declare-fun e!2247139 () Bool)

(assert (=> b!3630240 (= e!2247139 (isPrefix!3067 (tail!5619 lt!1255280) (tail!5619 lt!1255280)))))

(declare-fun b!3630239 () Bool)

(declare-fun res!1470012 () Bool)

(assert (=> b!3630239 (=> (not res!1470012) (not e!2247139))))

(assert (=> b!3630239 (= res!1470012 (= (head!7682 lt!1255280) (head!7682 lt!1255280)))))

(declare-fun b!3630238 () Bool)

(assert (=> b!3630238 (= e!2247140 e!2247139)))

(declare-fun res!1470011 () Bool)

(assert (=> b!3630238 (=> (not res!1470011) (not e!2247139))))

(assert (=> b!3630238 (= res!1470011 (not ((_ is Nil!38244) lt!1255280)))))

(assert (= (and d!1067725 (not res!1470010)) b!3630238))

(assert (= (and b!3630238 res!1470011) b!3630239))

(assert (= (and b!3630239 res!1470012) b!3630240))

(assert (= (and d!1067725 (not res!1470013)) b!3630241))

(assert (=> b!3630241 m!4130233))

(assert (=> b!3630241 m!4130233))

(assert (=> b!3630240 m!4130275))

(assert (=> b!3630240 m!4130275))

(assert (=> b!3630240 m!4130275))

(assert (=> b!3630240 m!4130275))

(declare-fun m!4131547 () Bool)

(assert (=> b!3630240 m!4131547))

(assert (=> b!3630239 m!4130285))

(assert (=> b!3630239 m!4130285))

(assert (=> d!1067187 d!1067725))

(declare-fun d!1067727 () Bool)

(assert (=> d!1067727 (isPrefix!3067 lt!1255280 lt!1255280)))

(declare-fun lt!1255652 () Unit!55058)

(assert (=> d!1067727 (= lt!1255652 (choose!21316 lt!1255280 lt!1255280))))

(assert (=> d!1067727 (= (lemmaIsPrefixRefl!1942 lt!1255280 lt!1255280) lt!1255652)))

(declare-fun bs!571582 () Bool)

(assert (= bs!571582 d!1067727))

(assert (=> bs!571582 m!4130223))

(declare-fun m!4131549 () Bool)

(assert (=> bs!571582 m!4131549))

(assert (=> d!1067187 d!1067727))

(assert (=> d!1067187 d!1067557))

(assert (=> b!3629576 d!1067263))

(declare-fun d!1067729 () Bool)

(assert (=> d!1067729 (= (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))) (v!37823 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))

(assert (=> b!3629576 d!1067729))

(declare-fun e!2247145 () Bool)

(declare-fun b!3630246 () Bool)

(assert (=> b!3630246 (= e!2247145 (matchR!5032 (derivativeStep!3169 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3630247 () Bool)

(declare-fun e!2247149 () Bool)

(declare-fun e!2247144 () Bool)

(assert (=> b!3630247 (= e!2247149 e!2247144)))

(declare-fun res!1470016 () Bool)

(assert (=> b!3630247 (=> (not res!1470016) (not e!2247144))))

(declare-fun lt!1255653 () Bool)

(assert (=> b!3630247 (= res!1470016 (not lt!1255653))))

(declare-fun b!3630248 () Bool)

(declare-fun e!2247146 () Bool)

(declare-fun call!262592 () Bool)

(assert (=> b!3630248 (= e!2247146 (= lt!1255653 call!262592))))

(declare-fun b!3630249 () Bool)

(declare-fun e!2247150 () Bool)

(assert (=> b!3630249 (= e!2247146 e!2247150)))

(declare-fun c!628066 () Bool)

(assert (=> b!3630249 (= c!628066 ((_ is EmptyLang!10463) (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))))

(declare-fun b!3630250 () Bool)

(assert (=> b!3630250 (= e!2247150 (not lt!1255653))))

(declare-fun b!3630251 () Bool)

(declare-fun res!1470021 () Bool)

(assert (=> b!3630251 (=> res!1470021 e!2247149)))

(assert (=> b!3630251 (= res!1470021 (not ((_ is ElementMatch!10463) (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))))

(assert (=> b!3630251 (= e!2247150 e!2247149)))

(declare-fun b!3630252 () Bool)

(assert (=> b!3630252 (= e!2247145 (nullable!3620 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))))

(declare-fun b!3630253 () Bool)

(declare-fun res!1470019 () Bool)

(declare-fun e!2247147 () Bool)

(assert (=> b!3630253 (=> res!1470019 e!2247147)))

(assert (=> b!3630253 (= res!1470019 (not (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3630254 () Bool)

(assert (=> b!3630254 (= e!2247147 (not (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (c!627780 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))))))

(declare-fun bm!262587 () Bool)

(assert (=> bm!262587 (= call!262592 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(declare-fun d!1067731 () Bool)

(assert (=> d!1067731 e!2247146))

(declare-fun c!628067 () Bool)

(assert (=> d!1067731 (= c!628067 ((_ is EmptyExpr!10463) (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278))))))))))

(assert (=> d!1067731 (= lt!1255653 e!2247145)))

(declare-fun c!628065 () Bool)

(assert (=> d!1067731 (= c!628065 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))

(assert (=> d!1067731 (validRegex!4782 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))

(assert (=> d!1067731 (= (matchR!5032 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))) (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) lt!1255653)))

(declare-fun b!3630245 () Bool)

(declare-fun res!1470017 () Bool)

(declare-fun e!2247148 () Bool)

(assert (=> b!3630245 (=> (not res!1470017) (not e!2247148))))

(assert (=> b!3630245 (= res!1470017 (not call!262592))))

(declare-fun b!3630255 () Bool)

(declare-fun res!1470020 () Bool)

(assert (=> b!3630255 (=> (not res!1470020) (not e!2247148))))

(assert (=> b!3630255 (= res!1470020 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3630256 () Bool)

(assert (=> b!3630256 (= e!2247148 (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (c!627780 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 (_1!22190 lt!1255278)))))))))))

(declare-fun b!3630257 () Bool)

(assert (=> b!3630257 (= e!2247144 e!2247147)))

(declare-fun res!1470022 () Bool)

(assert (=> b!3630257 (=> res!1470022 e!2247147)))

(assert (=> b!3630257 (= res!1470022 call!262592)))

(declare-fun b!3630258 () Bool)

(declare-fun res!1470015 () Bool)

(assert (=> b!3630258 (=> res!1470015 e!2247149)))

(assert (=> b!3630258 (= res!1470015 e!2247148)))

(declare-fun res!1470018 () Bool)

(assert (=> b!3630258 (=> (not res!1470018) (not e!2247148))))

(assert (=> b!3630258 (= res!1470018 lt!1255653)))

(assert (= (and d!1067731 c!628065) b!3630252))

(assert (= (and d!1067731 (not c!628065)) b!3630246))

(assert (= (and d!1067731 c!628067) b!3630248))

(assert (= (and d!1067731 (not c!628067)) b!3630249))

(assert (= (and b!3630249 c!628066) b!3630250))

(assert (= (and b!3630249 (not c!628066)) b!3630251))

(assert (= (and b!3630251 (not res!1470021)) b!3630258))

(assert (= (and b!3630258 res!1470018) b!3630245))

(assert (= (and b!3630245 res!1470017) b!3630255))

(assert (= (and b!3630255 res!1470020) b!3630256))

(assert (= (and b!3630258 (not res!1470015)) b!3630247))

(assert (= (and b!3630247 res!1470016) b!3630257))

(assert (= (and b!3630257 (not res!1470022)) b!3630253))

(assert (= (and b!3630253 (not res!1470019)) b!3630254))

(assert (= (or b!3630248 b!3630245 b!3630257) bm!262587))

(assert (=> b!3630255 m!4129969))

(assert (=> b!3630255 m!4130789))

(assert (=> b!3630255 m!4130789))

(assert (=> b!3630255 m!4130791))

(assert (=> bm!262587 m!4129969))

(assert (=> bm!262587 m!4130793))

(declare-fun m!4131557 () Bool)

(assert (=> b!3630252 m!4131557))

(assert (=> d!1067731 m!4129969))

(assert (=> d!1067731 m!4130793))

(declare-fun m!4131559 () Bool)

(assert (=> d!1067731 m!4131559))

(assert (=> b!3630254 m!4129969))

(assert (=> b!3630254 m!4130799))

(assert (=> b!3630253 m!4129969))

(assert (=> b!3630253 m!4130789))

(assert (=> b!3630253 m!4130789))

(assert (=> b!3630253 m!4130791))

(assert (=> b!3630246 m!4129969))

(assert (=> b!3630246 m!4130799))

(assert (=> b!3630246 m!4130799))

(declare-fun m!4131561 () Bool)

(assert (=> b!3630246 m!4131561))

(assert (=> b!3630246 m!4129969))

(assert (=> b!3630246 m!4130789))

(assert (=> b!3630246 m!4131561))

(assert (=> b!3630246 m!4130789))

(declare-fun m!4131563 () Bool)

(assert (=> b!3630246 m!4131563))

(assert (=> b!3630256 m!4129969))

(assert (=> b!3630256 m!4130799))

(assert (=> b!3629576 d!1067731))

(assert (=> b!3629576 d!1067373))

(assert (=> b!3629576 d!1067335))

(declare-fun d!1067737 () Bool)

(declare-fun c!628068 () Bool)

(assert (=> d!1067737 (= c!628068 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))))))

(declare-fun e!2247152 () Bool)

(assert (=> d!1067737 (= (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))) e!2247152)))

(declare-fun b!3630259 () Bool)

(assert (=> b!3630259 (= e!2247152 (inv!51665 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))))))

(declare-fun b!3630260 () Bool)

(declare-fun e!2247153 () Bool)

(assert (=> b!3630260 (= e!2247152 e!2247153)))

(declare-fun res!1470023 () Bool)

(assert (=> b!3630260 (= res!1470023 (not ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))))))))

(assert (=> b!3630260 (=> res!1470023 e!2247153)))

(declare-fun b!3630261 () Bool)

(assert (=> b!3630261 (= e!2247153 (inv!51666 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))))))

(assert (= (and d!1067737 c!628068) b!3630259))

(assert (= (and d!1067737 (not c!628068)) b!3630260))

(assert (= (and b!3630260 (not res!1470023)) b!3630261))

(declare-fun m!4131565 () Bool)

(assert (=> b!3630259 m!4131565))

(declare-fun m!4131569 () Bool)

(assert (=> b!3630261 m!4131569))

(assert (=> b!3629542 d!1067737))

(assert (=> b!3629195 d!1067629))

(assert (=> b!3629195 d!1067399))

(declare-fun d!1067741 () Bool)

(declare-fun lt!1255654 () Int)

(assert (=> d!1067741 (>= lt!1255654 0)))

(declare-fun e!2247154 () Int)

(assert (=> d!1067741 (= lt!1255654 e!2247154)))

(declare-fun c!628069 () Bool)

(assert (=> d!1067741 (= c!628069 ((_ is Nil!38244) (list!14130 lt!1255271)))))

(assert (=> d!1067741 (= (size!29181 (list!14130 lt!1255271)) lt!1255654)))

(declare-fun b!3630262 () Bool)

(assert (=> b!3630262 (= e!2247154 0)))

(declare-fun b!3630263 () Bool)

(assert (=> b!3630263 (= e!2247154 (+ 1 (size!29181 (t!294963 (list!14130 lt!1255271)))))))

(assert (= (and d!1067741 c!628069) b!3630262))

(assert (= (and d!1067741 (not c!628069)) b!3630263))

(declare-fun m!4131573 () Bool)

(assert (=> b!3630263 m!4131573))

(assert (=> d!1067247 d!1067741))

(assert (=> d!1067247 d!1067345))

(declare-fun d!1067745 () Bool)

(declare-fun lt!1255657 () Int)

(assert (=> d!1067745 (= lt!1255657 (size!29181 (list!14133 (c!627781 lt!1255271))))))

(assert (=> d!1067745 (= lt!1255657 (ite ((_ is Empty!11667) (c!627781 lt!1255271)) 0 (ite ((_ is Leaf!18130) (c!627781 lt!1255271)) (csize!23565 (c!627781 lt!1255271)) (csize!23564 (c!627781 lt!1255271)))))))

(assert (=> d!1067745 (= (size!29183 (c!627781 lt!1255271)) lt!1255657)))

(declare-fun bs!571584 () Bool)

(assert (= bs!571584 d!1067745))

(assert (=> bs!571584 m!4130737))

(assert (=> bs!571584 m!4130737))

(declare-fun m!4131575 () Bool)

(assert (=> bs!571584 m!4131575))

(assert (=> d!1067247 d!1067745))

(declare-fun b!3630264 () Bool)

(declare-fun e!2247158 () List!38368)

(declare-fun call!262595 () List!38368)

(assert (=> b!3630264 (= e!2247158 call!262595)))

(declare-fun c!628072 () Bool)

(declare-fun bm!262588 () Bool)

(declare-fun c!628071 () Bool)

(declare-fun call!262594 () List!38368)

(assert (=> bm!262588 (= call!262594 (usedCharacters!916 (ite c!628071 (reg!10792 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))) (ite c!628072 (regOne!21439 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))) (regTwo!21438 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403)))))))))))

(declare-fun call!262596 () List!38368)

(declare-fun bm!262589 () Bool)

(assert (=> bm!262589 (= call!262596 (usedCharacters!916 (ite c!628072 (regTwo!21439 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))) (regOne!21438 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))))))))

(declare-fun d!1067747 () Bool)

(declare-fun c!628073 () Bool)

(assert (=> d!1067747 (= c!628073 (or ((_ is EmptyExpr!10463) (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))) ((_ is EmptyLang!10463) (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403)))))))))

(declare-fun e!2247155 () List!38368)

(assert (=> d!1067747 (= (usedCharacters!916 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))) e!2247155)))

(declare-fun b!3630265 () Bool)

(declare-fun e!2247156 () List!38368)

(assert (=> b!3630265 (= e!2247155 e!2247156)))

(declare-fun c!628070 () Bool)

(assert (=> b!3630265 (= c!628070 ((_ is ElementMatch!10463) (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))))))

(declare-fun b!3630266 () Bool)

(declare-fun e!2247157 () List!38368)

(assert (=> b!3630266 (= e!2247157 call!262594)))

(declare-fun bm!262590 () Bool)

(declare-fun call!262593 () List!38368)

(assert (=> bm!262590 (= call!262593 call!262594)))

(declare-fun b!3630267 () Bool)

(assert (=> b!3630267 (= e!2247156 (Cons!38244 (c!627780 (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))) Nil!38244))))

(declare-fun b!3630268 () Bool)

(assert (=> b!3630268 (= e!2247155 Nil!38244)))

(declare-fun b!3630269 () Bool)

(assert (=> b!3630269 (= c!628071 ((_ is Star!10463) (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))))))

(assert (=> b!3630269 (= e!2247156 e!2247157)))

(declare-fun bm!262591 () Bool)

(assert (=> bm!262591 (= call!262595 (++!9520 (ite c!628072 call!262593 call!262596) (ite c!628072 call!262596 call!262593)))))

(declare-fun b!3630270 () Bool)

(assert (=> b!3630270 (= e!2247158 call!262595)))

(declare-fun b!3630271 () Bool)

(assert (=> b!3630271 (= e!2247157 e!2247158)))

(assert (=> b!3630271 (= c!628072 ((_ is Union!10463) (ite c!627837 (reg!10792 (regex!5704 rule!403)) (ite c!627838 (regOne!21439 (regex!5704 rule!403)) (regTwo!21438 (regex!5704 rule!403))))))))

(assert (= (and d!1067747 c!628073) b!3630268))

(assert (= (and d!1067747 (not c!628073)) b!3630265))

(assert (= (and b!3630265 c!628070) b!3630267))

(assert (= (and b!3630265 (not c!628070)) b!3630269))

(assert (= (and b!3630269 c!628071) b!3630266))

(assert (= (and b!3630269 (not c!628071)) b!3630271))

(assert (= (and b!3630271 c!628072) b!3630270))

(assert (= (and b!3630271 (not c!628072)) b!3630264))

(assert (= (or b!3630270 b!3630264) bm!262590))

(assert (= (or b!3630270 b!3630264) bm!262589))

(assert (= (or b!3630270 b!3630264) bm!262591))

(assert (= (or b!3630266 bm!262590) bm!262588))

(declare-fun m!4131577 () Bool)

(assert (=> bm!262588 m!4131577))

(declare-fun m!4131579 () Bool)

(assert (=> bm!262589 m!4131579))

(declare-fun m!4131581 () Bool)

(assert (=> bm!262591 m!4131581))

(assert (=> bm!262488 d!1067747))

(declare-fun d!1067749 () Bool)

(declare-fun lt!1255658 () Bool)

(assert (=> d!1067749 (= lt!1255658 (select (content!5483 (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33)))) lt!1255266))))

(declare-fun e!2247160 () Bool)

(assert (=> d!1067749 (= lt!1255658 e!2247160)))

(declare-fun res!1470024 () Bool)

(assert (=> d!1067749 (=> (not res!1470024) (not e!2247160))))

(assert (=> d!1067749 (= res!1470024 ((_ is Cons!38244) (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33)))))))

(assert (=> d!1067749 (= (contains!7472 (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33))) lt!1255266) lt!1255658)))

(declare-fun b!3630276 () Bool)

(declare-fun e!2247159 () Bool)

(assert (=> b!3630276 (= e!2247160 e!2247159)))

(declare-fun res!1470025 () Bool)

(assert (=> b!3630276 (=> res!1470025 e!2247159)))

(assert (=> b!3630276 (= res!1470025 (= (h!43664 (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33)))) lt!1255266))))

(declare-fun b!3630277 () Bool)

(assert (=> b!3630277 (= e!2247159 (contains!7472 (t!294963 (t!294963 (usedCharacters!916 (regex!5704 anOtherTypeRule!33)))) lt!1255266))))

(assert (= (and d!1067749 res!1470024) b!3630276))

(assert (= (and b!3630276 (not res!1470025)) b!3630277))

(assert (=> d!1067749 m!4130869))

(declare-fun m!4131585 () Bool)

(assert (=> d!1067749 m!4131585))

(declare-fun m!4131587 () Bool)

(assert (=> b!3630277 m!4131587))

(assert (=> b!3629340 d!1067749))

(declare-fun d!1067753 () Bool)

(declare-fun lt!1255659 () Int)

(assert (=> d!1067753 (>= lt!1255659 0)))

(declare-fun e!2247161 () Int)

(assert (=> d!1067753 (= lt!1255659 e!2247161)))

(declare-fun c!628074 () Bool)

(assert (=> d!1067753 (= c!628074 ((_ is Nil!38244) (_2!22190 (get!12499 lt!1255339))))))

(assert (=> d!1067753 (= (size!29181 (_2!22190 (get!12499 lt!1255339))) lt!1255659)))

(declare-fun b!3630278 () Bool)

(assert (=> b!3630278 (= e!2247161 0)))

(declare-fun b!3630279 () Bool)

(assert (=> b!3630279 (= e!2247161 (+ 1 (size!29181 (t!294963 (_2!22190 (get!12499 lt!1255339))))))))

(assert (= (and d!1067753 c!628074) b!3630278))

(assert (= (and d!1067753 (not c!628074)) b!3630279))

(declare-fun m!4131591 () Bool)

(assert (=> b!3630279 m!4131591))

(assert (=> b!3629136 d!1067753))

(assert (=> b!3629136 d!1067387))

(assert (=> b!3629136 d!1067599))

(declare-fun d!1067759 () Bool)

(assert (=> d!1067759 (= (isDefined!6268 lt!1255339) (not (isEmpty!22622 lt!1255339)))))

(declare-fun bs!571588 () Bool)

(assert (= bs!571588 d!1067759))

(assert (=> bs!571588 m!4130221))

(assert (=> b!3629144 d!1067759))

(declare-fun b!3630282 () Bool)

(declare-fun res!1470026 () Bool)

(declare-fun e!2247163 () Bool)

(assert (=> b!3630282 (=> (not res!1470026) (not e!2247163))))

(declare-fun lt!1255660 () List!38368)

(assert (=> b!3630282 (= res!1470026 (= (size!29181 lt!1255660) (+ (size!29181 (ite c!627855 call!262500 call!262503)) (size!29181 (ite c!627855 call!262503 call!262500)))))))

(declare-fun e!2247162 () List!38368)

(declare-fun b!3630280 () Bool)

(assert (=> b!3630280 (= e!2247162 (ite c!627855 call!262503 call!262500))))

(declare-fun d!1067761 () Bool)

(assert (=> d!1067761 e!2247163))

(declare-fun res!1470027 () Bool)

(assert (=> d!1067761 (=> (not res!1470027) (not e!2247163))))

(assert (=> d!1067761 (= res!1470027 (= (content!5483 lt!1255660) ((_ map or) (content!5483 (ite c!627855 call!262500 call!262503)) (content!5483 (ite c!627855 call!262503 call!262500)))))))

(assert (=> d!1067761 (= lt!1255660 e!2247162)))

(declare-fun c!628075 () Bool)

(assert (=> d!1067761 (= c!628075 ((_ is Nil!38244) (ite c!627855 call!262500 call!262503)))))

(assert (=> d!1067761 (= (++!9520 (ite c!627855 call!262500 call!262503) (ite c!627855 call!262503 call!262500)) lt!1255660)))

(declare-fun b!3630283 () Bool)

(assert (=> b!3630283 (= e!2247163 (or (not (= (ite c!627855 call!262503 call!262500) Nil!38244)) (= lt!1255660 (ite c!627855 call!262500 call!262503))))))

(declare-fun b!3630281 () Bool)

(assert (=> b!3630281 (= e!2247162 (Cons!38244 (h!43664 (ite c!627855 call!262500 call!262503)) (++!9520 (t!294963 (ite c!627855 call!262500 call!262503)) (ite c!627855 call!262503 call!262500))))))

(assert (= (and d!1067761 c!628075) b!3630280))

(assert (= (and d!1067761 (not c!628075)) b!3630281))

(assert (= (and d!1067761 res!1470027) b!3630282))

(assert (= (and b!3630282 res!1470026) b!3630283))

(declare-fun m!4131593 () Bool)

(assert (=> b!3630282 m!4131593))

(declare-fun m!4131595 () Bool)

(assert (=> b!3630282 m!4131595))

(declare-fun m!4131597 () Bool)

(assert (=> b!3630282 m!4131597))

(declare-fun m!4131599 () Bool)

(assert (=> d!1067761 m!4131599))

(declare-fun m!4131601 () Bool)

(assert (=> d!1067761 m!4131601))

(declare-fun m!4131603 () Bool)

(assert (=> d!1067761 m!4131603))

(declare-fun m!4131605 () Bool)

(assert (=> b!3630281 m!4131605))

(assert (=> bm!262498 d!1067761))

(declare-fun d!1067765 () Bool)

(assert (=> d!1067765 (= (list!14130 lt!1255512) (list!14133 (c!627781 lt!1255512)))))

(declare-fun bs!571589 () Bool)

(assert (= bs!571589 d!1067765))

(declare-fun m!4131611 () Bool)

(assert (=> bs!571589 m!4131611))

(assert (=> d!1067335 d!1067765))

(declare-fun d!1067769 () Bool)

(assert (=> d!1067769 (= (isEmpty!22618 (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))) ((_ is Nil!38244) (originalCharacters!6418 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))

(assert (=> d!1067253 d!1067769))

(declare-fun bs!571590 () Bool)

(declare-fun d!1067775 () Bool)

(assert (= bs!571590 (and d!1067775 d!1067249)))

(declare-fun lambda!124258 () Int)

(assert (=> bs!571590 (= (and (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (= lambda!124258 lambda!124227))))

(declare-fun bs!571592 () Bool)

(assert (= bs!571592 (and d!1067775 d!1067659)))

(assert (=> bs!571592 (= (and (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 token!511))))) (= lambda!124258 lambda!124251))))

(declare-fun bs!571594 () Bool)

(assert (= bs!571594 (and d!1067775 d!1067715)))

(assert (=> bs!571594 (= (and (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (h!43665 rules!3307)))) (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (h!43665 rules!3307))))) (= lambda!124258 lambda!124254))))

(assert (=> d!1067775 true))

(assert (=> d!1067775 (< (dynLambda!16570 order!20919 (toChars!7851 (transformation!5704 rule!403))) (dynLambda!16572 order!20921 lambda!124258))))

(assert (=> d!1067775 true))

(assert (=> d!1067775 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 rule!403))) (dynLambda!16572 order!20921 lambda!124258))))

(assert (=> d!1067775 (= (semiInverseModEq!2420 (toChars!7851 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 rule!403))) (Forall!1368 lambda!124258))))

(declare-fun bs!571595 () Bool)

(assert (= bs!571595 d!1067775))

(declare-fun m!4131621 () Bool)

(assert (=> bs!571595 m!4131621))

(assert (=> d!1067207 d!1067775))

(declare-fun d!1067785 () Bool)

(declare-fun lt!1255663 () Bool)

(assert (=> d!1067785 (= lt!1255663 (select (content!5481 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))

(declare-fun e!2247167 () Bool)

(assert (=> d!1067785 (= lt!1255663 e!2247167)))

(declare-fun res!1470028 () Bool)

(assert (=> d!1067785 (=> (not res!1470028) (not e!2247167))))

(assert (=> d!1067785 (= res!1470028 ((_ is Cons!38245) rules!3307))))

(assert (=> d!1067785 (= (contains!7471 rules!3307 (rule!8474 (_1!22190 (get!12499 lt!1255339)))) lt!1255663)))

(declare-fun b!3630290 () Bool)

(declare-fun e!2247168 () Bool)

(assert (=> b!3630290 (= e!2247167 e!2247168)))

(declare-fun res!1470029 () Bool)

(assert (=> b!3630290 (=> res!1470029 e!2247168)))

(assert (=> b!3630290 (= res!1470029 (= (h!43665 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))

(declare-fun b!3630291 () Bool)

(assert (=> b!3630291 (= e!2247168 (contains!7471 (t!294964 rules!3307) (rule!8474 (_1!22190 (get!12499 lt!1255339)))))))

(assert (= (and d!1067785 res!1470028) b!3630290))

(assert (= (and b!3630290 (not res!1470029)) b!3630291))

(assert (=> d!1067785 m!4130249))

(declare-fun m!4131623 () Bool)

(assert (=> d!1067785 m!4131623))

(declare-fun m!4131625 () Bool)

(assert (=> b!3630291 m!4131625))

(assert (=> b!3629140 d!1067785))

(assert (=> b!3629140 d!1067387))

(declare-fun d!1067787 () Bool)

(declare-fun res!1470035 () Bool)

(declare-fun e!2247178 () Bool)

(assert (=> d!1067787 (=> res!1470035 e!2247178)))

(assert (=> d!1067787 (= res!1470035 ((_ is Nil!38245) rules!3307))))

(assert (=> d!1067787 (= (noDuplicateTag!2173 thiss!23823 rules!3307 Nil!38247) e!2247178)))

(declare-fun b!3630305 () Bool)

(declare-fun e!2247179 () Bool)

(assert (=> b!3630305 (= e!2247178 e!2247179)))

(declare-fun res!1470036 () Bool)

(assert (=> b!3630305 (=> (not res!1470036) (not e!2247179))))

(declare-fun contains!7473 (List!38371 String!43003) Bool)

(assert (=> b!3630305 (= res!1470036 (not (contains!7473 Nil!38247 (tag!6432 (h!43665 rules!3307)))))))

(declare-fun b!3630306 () Bool)

(assert (=> b!3630306 (= e!2247179 (noDuplicateTag!2173 thiss!23823 (t!294964 rules!3307) (Cons!38247 (tag!6432 (h!43665 rules!3307)) Nil!38247)))))

(assert (= (and d!1067787 (not res!1470035)) b!3630305))

(assert (= (and b!3630305 res!1470036) b!3630306))

(declare-fun m!4131643 () Bool)

(assert (=> b!3630305 m!4131643))

(declare-fun m!4131645 () Bool)

(assert (=> b!3630306 m!4131645))

(assert (=> b!3629254 d!1067787))

(assert (=> b!3629601 d!1067673))

(declare-fun d!1067801 () Bool)

(assert (=> d!1067801 (= (isEmpty!22622 lt!1255279) (not ((_ is Some!8036) lt!1255279)))))

(assert (=> d!1067185 d!1067801))

(declare-fun c!628083 () Bool)

(declare-fun d!1067803 () Bool)

(assert (=> d!1067803 (= c!628083 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(declare-fun e!2247180 () Bool)

(assert (=> d!1067803 (= (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) e!2247180)))

(declare-fun b!3630307 () Bool)

(assert (=> b!3630307 (= e!2247180 (inv!51665 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(declare-fun b!3630308 () Bool)

(declare-fun e!2247181 () Bool)

(assert (=> b!3630308 (= e!2247180 e!2247181)))

(declare-fun res!1470037 () Bool)

(assert (=> b!3630308 (= res!1470037 (not ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))))))

(assert (=> b!3630308 (=> res!1470037 e!2247181)))

(declare-fun b!3630309 () Bool)

(assert (=> b!3630309 (= e!2247181 (inv!51666 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(assert (= (and d!1067803 c!628083) b!3630307))

(assert (= (and d!1067803 (not c!628083)) b!3630308))

(assert (= (and b!3630308 (not res!1470037)) b!3630309))

(declare-fun m!4131647 () Bool)

(assert (=> b!3630307 m!4131647))

(declare-fun m!4131649 () Bool)

(assert (=> b!3630309 m!4131649))

(assert (=> b!3629338 d!1067803))

(assert (=> b!3629569 d!1067397))

(declare-fun d!1067805 () Bool)

(assert (=> d!1067805 (= (head!7682 lt!1255273) (h!43664 lt!1255273))))

(assert (=> b!3629569 d!1067805))

(declare-fun d!1067807 () Bool)

(declare-fun lt!1255664 () Bool)

(assert (=> d!1067807 (= lt!1255664 (select (content!5481 (t!294964 rules!3307)) anOtherTypeRule!33))))

(declare-fun e!2247182 () Bool)

(assert (=> d!1067807 (= lt!1255664 e!2247182)))

(declare-fun res!1470038 () Bool)

(assert (=> d!1067807 (=> (not res!1470038) (not e!2247182))))

(assert (=> d!1067807 (= res!1470038 ((_ is Cons!38245) (t!294964 rules!3307)))))

(assert (=> d!1067807 (= (contains!7471 (t!294964 rules!3307) anOtherTypeRule!33) lt!1255664)))

(declare-fun b!3630310 () Bool)

(declare-fun e!2247183 () Bool)

(assert (=> b!3630310 (= e!2247182 e!2247183)))

(declare-fun res!1470039 () Bool)

(assert (=> b!3630310 (=> res!1470039 e!2247183)))

(assert (=> b!3630310 (= res!1470039 (= (h!43665 (t!294964 rules!3307)) anOtherTypeRule!33))))

(declare-fun b!3630311 () Bool)

(assert (=> b!3630311 (= e!2247183 (contains!7471 (t!294964 (t!294964 rules!3307)) anOtherTypeRule!33))))

(assert (= (and d!1067807 res!1470038) b!3630310))

(assert (= (and b!3630310 (not res!1470039)) b!3630311))

(assert (=> d!1067807 m!4131417))

(declare-fun m!4131651 () Bool)

(assert (=> d!1067807 m!4131651))

(declare-fun m!4131653 () Bool)

(assert (=> b!3630311 m!4131653))

(assert (=> b!3629155 d!1067807))

(declare-fun bs!571597 () Bool)

(declare-fun d!1067809 () Bool)

(assert (= bs!571597 (and d!1067809 d!1067557)))

(declare-fun lambda!124261 () Int)

(assert (=> bs!571597 (= lambda!124261 lambda!124243)))

(assert (=> d!1067809 true))

(declare-fun lt!1255667 () Bool)

(assert (=> d!1067809 (= lt!1255667 (rulesValidInductive!2007 thiss!23823 rules!3307))))

(assert (=> d!1067809 (= lt!1255667 (forall!8153 rules!3307 lambda!124261))))

(assert (=> d!1067809 (= (rulesValid!2177 thiss!23823 rules!3307) lt!1255667)))

(declare-fun bs!571598 () Bool)

(assert (= bs!571598 d!1067809))

(assert (=> bs!571598 m!4130227))

(declare-fun m!4131655 () Bool)

(assert (=> bs!571598 m!4131655))

(assert (=> d!1067229 d!1067809))

(declare-fun d!1067811 () Bool)

(declare-fun c!628086 () Bool)

(assert (=> d!1067811 (= c!628086 ((_ is Nil!38245) rules!3307))))

(declare-fun e!2247186 () (InoxSet Rule!11208))

(assert (=> d!1067811 (= (content!5481 rules!3307) e!2247186)))

(declare-fun b!3630316 () Bool)

(assert (=> b!3630316 (= e!2247186 ((as const (Array Rule!11208 Bool)) false))))

(declare-fun b!3630317 () Bool)

(assert (=> b!3630317 (= e!2247186 ((_ map or) (store ((as const (Array Rule!11208 Bool)) false) (h!43665 rules!3307) true) (content!5481 (t!294964 rules!3307))))))

(assert (= (and d!1067811 c!628086) b!3630316))

(assert (= (and d!1067811 (not c!628086)) b!3630317))

(declare-fun m!4131657 () Bool)

(assert (=> b!3630317 m!4131657))

(assert (=> b!3630317 m!4131417))

(assert (=> d!1067203 d!1067811))

(declare-fun d!1067813 () Bool)

(assert (=> d!1067813 (= (get!12499 (maxPrefix!2827 thiss!23823 rules!3307 lt!1255280)) (v!37824 (maxPrefix!2827 thiss!23823 rules!3307 lt!1255280)))))

(assert (=> d!1067275 d!1067813))

(declare-fun e!2247189 () Bool)

(declare-fun b!3630321 () Bool)

(assert (=> b!3630321 (= e!2247189 (>= (size!29181 (++!9520 lt!1255280 suffix!1395)) (size!29181 lt!1255496)))))

(declare-fun d!1067815 () Bool)

(assert (=> d!1067815 e!2247189))

(declare-fun res!1470043 () Bool)

(assert (=> d!1067815 (=> res!1470043 e!2247189)))

(declare-fun lt!1255668 () Bool)

(assert (=> d!1067815 (= res!1470043 (not lt!1255668))))

(declare-fun e!2247188 () Bool)

(assert (=> d!1067815 (= lt!1255668 e!2247188)))

(declare-fun res!1470040 () Bool)

(assert (=> d!1067815 (=> res!1470040 e!2247188)))

(assert (=> d!1067815 (= res!1470040 ((_ is Nil!38244) lt!1255496))))

(assert (=> d!1067815 (= (isPrefix!3067 lt!1255496 (++!9520 lt!1255280 suffix!1395)) lt!1255668)))

(declare-fun b!3630320 () Bool)

(declare-fun e!2247187 () Bool)

(assert (=> b!3630320 (= e!2247187 (isPrefix!3067 (tail!5619 lt!1255496) (tail!5619 (++!9520 lt!1255280 suffix!1395))))))

(declare-fun b!3630319 () Bool)

(declare-fun res!1470042 () Bool)

(assert (=> b!3630319 (=> (not res!1470042) (not e!2247187))))

(assert (=> b!3630319 (= res!1470042 (= (head!7682 lt!1255496) (head!7682 (++!9520 lt!1255280 suffix!1395))))))

(declare-fun b!3630318 () Bool)

(assert (=> b!3630318 (= e!2247188 e!2247187)))

(declare-fun res!1470041 () Bool)

(assert (=> b!3630318 (=> (not res!1470041) (not e!2247187))))

(assert (=> b!3630318 (= res!1470041 (not ((_ is Nil!38244) (++!9520 lt!1255280 suffix!1395))))))

(assert (= (and d!1067815 (not res!1470040)) b!3630318))

(assert (= (and b!3630318 res!1470041) b!3630319))

(assert (= (and b!3630319 res!1470042) b!3630320))

(assert (= (and d!1067815 (not res!1470043)) b!3630321))

(assert (=> b!3630321 m!4129995))

(assert (=> b!3630321 m!4131137))

(declare-fun m!4131659 () Bool)

(assert (=> b!3630321 m!4131659))

(declare-fun m!4131661 () Bool)

(assert (=> b!3630320 m!4131661))

(assert (=> b!3630320 m!4129995))

(assert (=> b!3630320 m!4131139))

(assert (=> b!3630320 m!4131661))

(assert (=> b!3630320 m!4131139))

(declare-fun m!4131663 () Bool)

(assert (=> b!3630320 m!4131663))

(declare-fun m!4131665 () Bool)

(assert (=> b!3630319 m!4131665))

(assert (=> b!3630319 m!4129995))

(assert (=> b!3630319 m!4131143))

(assert (=> d!1067275 d!1067815))

(declare-fun d!1067817 () Bool)

(assert (=> d!1067817 (= (isDefined!6269 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))) (not (isEmpty!22623 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))))))

(declare-fun bs!571599 () Bool)

(assert (= bs!571599 d!1067817))

(assert (=> bs!571599 m!4130651))

(declare-fun m!4131667 () Bool)

(assert (=> bs!571599 m!4131667))

(assert (=> d!1067275 d!1067817))

(assert (=> d!1067275 d!1067187))

(declare-fun b!3630324 () Bool)

(declare-fun res!1470044 () Bool)

(declare-fun e!2247191 () Bool)

(assert (=> b!3630324 (=> (not res!1470044) (not e!2247191))))

(declare-fun lt!1255669 () List!38368)

(assert (=> b!3630324 (= res!1470044 (= (size!29181 lt!1255669) (+ (size!29181 lt!1255499) (size!29181 lt!1255504))))))

(declare-fun b!3630322 () Bool)

(declare-fun e!2247190 () List!38368)

(assert (=> b!3630322 (= e!2247190 lt!1255504)))

(declare-fun d!1067819 () Bool)

(assert (=> d!1067819 e!2247191))

(declare-fun res!1470045 () Bool)

(assert (=> d!1067819 (=> (not res!1470045) (not e!2247191))))

(assert (=> d!1067819 (= res!1470045 (= (content!5483 lt!1255669) ((_ map or) (content!5483 lt!1255499) (content!5483 lt!1255504))))))

(assert (=> d!1067819 (= lt!1255669 e!2247190)))

(declare-fun c!628087 () Bool)

(assert (=> d!1067819 (= c!628087 ((_ is Nil!38244) lt!1255499))))

(assert (=> d!1067819 (= (++!9520 lt!1255499 lt!1255504) lt!1255669)))

(declare-fun b!3630325 () Bool)

(assert (=> b!3630325 (= e!2247191 (or (not (= lt!1255504 Nil!38244)) (= lt!1255669 lt!1255499)))))

(declare-fun b!3630323 () Bool)

(assert (=> b!3630323 (= e!2247190 (Cons!38244 (h!43664 lt!1255499) (++!9520 (t!294963 lt!1255499) lt!1255504)))))

(assert (= (and d!1067819 c!628087) b!3630322))

(assert (= (and d!1067819 (not c!628087)) b!3630323))

(assert (= (and d!1067819 res!1470045) b!3630324))

(assert (= (and b!3630324 res!1470044) b!3630325))

(declare-fun m!4131669 () Bool)

(assert (=> b!3630324 m!4131669))

(declare-fun m!4131671 () Bool)

(assert (=> b!3630324 m!4131671))

(declare-fun m!4131673 () Bool)

(assert (=> b!3630324 m!4131673))

(declare-fun m!4131675 () Bool)

(assert (=> d!1067819 m!4131675))

(declare-fun m!4131677 () Bool)

(assert (=> d!1067819 m!4131677))

(declare-fun m!4131679 () Bool)

(assert (=> d!1067819 m!4131679))

(declare-fun m!4131681 () Bool)

(assert (=> b!3630323 m!4131681))

(assert (=> d!1067275 d!1067819))

(declare-fun d!1067821 () Bool)

(declare-fun e!2247192 () Bool)

(assert (=> d!1067821 e!2247192))

(declare-fun res!1470051 () Bool)

(assert (=> d!1067821 (=> res!1470051 e!2247192)))

(declare-fun lt!1255671 () Option!8037)

(assert (=> d!1067821 (= res!1470051 (isEmpty!22622 lt!1255671))))

(declare-fun e!2247194 () Option!8037)

(assert (=> d!1067821 (= lt!1255671 e!2247194)))

(declare-fun c!628088 () Bool)

(assert (=> d!1067821 (= c!628088 (and ((_ is Cons!38245) rules!3307) ((_ is Nil!38245) (t!294964 rules!3307))))))

(declare-fun lt!1255674 () Unit!55058)

(declare-fun lt!1255673 () Unit!55058)

(assert (=> d!1067821 (= lt!1255674 lt!1255673)))

(assert (=> d!1067821 (isPrefix!3067 (++!9520 lt!1255280 suffix!1395) (++!9520 lt!1255280 suffix!1395))))

(assert (=> d!1067821 (= lt!1255673 (lemmaIsPrefixRefl!1942 (++!9520 lt!1255280 suffix!1395) (++!9520 lt!1255280 suffix!1395)))))

(assert (=> d!1067821 (rulesValidInductive!2007 thiss!23823 rules!3307)))

(assert (=> d!1067821 (= (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395)) lt!1255671)))

(declare-fun b!3630326 () Bool)

(declare-fun res!1470048 () Bool)

(declare-fun e!2247193 () Bool)

(assert (=> b!3630326 (=> (not res!1470048) (not e!2247193))))

(assert (=> b!3630326 (= res!1470048 (< (size!29181 (_2!22190 (get!12499 lt!1255671))) (size!29181 (++!9520 lt!1255280 suffix!1395))))))

(declare-fun bm!262592 () Bool)

(declare-fun call!262597 () Option!8037)

(assert (=> bm!262592 (= call!262597 (maxPrefixOneRule!1967 thiss!23823 (h!43665 rules!3307) (++!9520 lt!1255280 suffix!1395)))))

(declare-fun b!3630327 () Bool)

(declare-fun res!1470047 () Bool)

(assert (=> b!3630327 (=> (not res!1470047) (not e!2247193))))

(assert (=> b!3630327 (= res!1470047 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255671)))) (_2!22190 (get!12499 lt!1255671))) (++!9520 lt!1255280 suffix!1395)))))

(declare-fun b!3630328 () Bool)

(declare-fun res!1470052 () Bool)

(assert (=> b!3630328 (=> (not res!1470052) (not e!2247193))))

(assert (=> b!3630328 (= res!1470052 (= (value!183024 (_1!22190 (get!12499 lt!1255671))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255671)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255671)))))))))

(declare-fun b!3630329 () Bool)

(declare-fun res!1470050 () Bool)

(assert (=> b!3630329 (=> (not res!1470050) (not e!2247193))))

(assert (=> b!3630329 (= res!1470050 (= (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255671)))) (originalCharacters!6418 (_1!22190 (get!12499 lt!1255671)))))))

(declare-fun b!3630330 () Bool)

(assert (=> b!3630330 (= e!2247193 (contains!7471 rules!3307 (rule!8474 (_1!22190 (get!12499 lt!1255671)))))))

(declare-fun b!3630331 () Bool)

(declare-fun res!1470049 () Bool)

(assert (=> b!3630331 (=> (not res!1470049) (not e!2247193))))

(assert (=> b!3630331 (= res!1470049 (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255671)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255671))))))))

(declare-fun b!3630332 () Bool)

(assert (=> b!3630332 (= e!2247194 call!262597)))

(declare-fun b!3630333 () Bool)

(declare-fun lt!1255672 () Option!8037)

(declare-fun lt!1255670 () Option!8037)

(assert (=> b!3630333 (= e!2247194 (ite (and ((_ is None!8036) lt!1255672) ((_ is None!8036) lt!1255670)) None!8036 (ite ((_ is None!8036) lt!1255670) lt!1255672 (ite ((_ is None!8036) lt!1255672) lt!1255670 (ite (>= (size!29178 (_1!22190 (v!37824 lt!1255672))) (size!29178 (_1!22190 (v!37824 lt!1255670)))) lt!1255672 lt!1255670)))))))

(assert (=> b!3630333 (= lt!1255672 call!262597)))

(assert (=> b!3630333 (= lt!1255670 (maxPrefix!2827 thiss!23823 (t!294964 rules!3307) (++!9520 lt!1255280 suffix!1395)))))

(declare-fun b!3630334 () Bool)

(assert (=> b!3630334 (= e!2247192 e!2247193)))

(declare-fun res!1470046 () Bool)

(assert (=> b!3630334 (=> (not res!1470046) (not e!2247193))))

(assert (=> b!3630334 (= res!1470046 (isDefined!6268 lt!1255671))))

(assert (= (and d!1067821 c!628088) b!3630332))

(assert (= (and d!1067821 (not c!628088)) b!3630333))

(assert (= (or b!3630332 b!3630333) bm!262592))

(assert (= (and d!1067821 (not res!1470051)) b!3630334))

(assert (= (and b!3630334 res!1470046) b!3630329))

(assert (= (and b!3630329 res!1470050) b!3630326))

(assert (= (and b!3630326 res!1470048) b!3630327))

(assert (= (and b!3630327 res!1470047) b!3630328))

(assert (= (and b!3630328 res!1470052) b!3630331))

(assert (= (and b!3630331 res!1470049) b!3630330))

(declare-fun m!4131683 () Bool)

(assert (=> b!3630327 m!4131683))

(declare-fun m!4131685 () Bool)

(assert (=> b!3630327 m!4131685))

(assert (=> b!3630327 m!4131685))

(declare-fun m!4131687 () Bool)

(assert (=> b!3630327 m!4131687))

(assert (=> b!3630327 m!4131687))

(declare-fun m!4131689 () Bool)

(assert (=> b!3630327 m!4131689))

(assert (=> b!3630328 m!4131683))

(declare-fun m!4131691 () Bool)

(assert (=> b!3630328 m!4131691))

(assert (=> b!3630328 m!4131691))

(declare-fun m!4131693 () Bool)

(assert (=> b!3630328 m!4131693))

(assert (=> bm!262592 m!4129995))

(declare-fun m!4131695 () Bool)

(assert (=> bm!262592 m!4131695))

(assert (=> b!3630333 m!4129995))

(declare-fun m!4131697 () Bool)

(assert (=> b!3630333 m!4131697))

(declare-fun m!4131699 () Bool)

(assert (=> d!1067821 m!4131699))

(assert (=> d!1067821 m!4129995))

(assert (=> d!1067821 m!4129995))

(declare-fun m!4131701 () Bool)

(assert (=> d!1067821 m!4131701))

(assert (=> d!1067821 m!4129995))

(assert (=> d!1067821 m!4129995))

(declare-fun m!4131703 () Bool)

(assert (=> d!1067821 m!4131703))

(assert (=> d!1067821 m!4130227))

(assert (=> b!3630331 m!4131683))

(assert (=> b!3630331 m!4131685))

(assert (=> b!3630331 m!4131685))

(assert (=> b!3630331 m!4131687))

(assert (=> b!3630331 m!4131687))

(declare-fun m!4131705 () Bool)

(assert (=> b!3630331 m!4131705))

(assert (=> b!3630329 m!4131683))

(assert (=> b!3630329 m!4131685))

(assert (=> b!3630329 m!4131685))

(assert (=> b!3630329 m!4131687))

(assert (=> b!3630326 m!4131683))

(declare-fun m!4131707 () Bool)

(assert (=> b!3630326 m!4131707))

(assert (=> b!3630326 m!4129995))

(assert (=> b!3630326 m!4131137))

(assert (=> b!3630330 m!4131683))

(declare-fun m!4131709 () Bool)

(assert (=> b!3630330 m!4131709))

(declare-fun m!4131711 () Bool)

(assert (=> b!3630334 m!4131711))

(assert (=> d!1067275 d!1067821))

(declare-fun d!1067823 () Bool)

(assert (=> d!1067823 (= (isEmpty!22622 (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395))) (not ((_ is Some!8036) (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395)))))))

(assert (=> d!1067275 d!1067823))

(assert (=> d!1067275 d!1067443))

(declare-fun d!1067825 () Bool)

(assert (=> d!1067825 (= (isDefined!6268 (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395))) (not (isEmpty!22622 (maxPrefix!2827 thiss!23823 rules!3307 (++!9520 lt!1255280 suffix!1395)))))))

(declare-fun bs!571600 () Bool)

(assert (= bs!571600 d!1067825))

(assert (=> bs!571600 m!4130659))

(assert (=> bs!571600 m!4130665))

(assert (=> d!1067275 d!1067825))

(declare-fun d!1067827 () Bool)

(declare-fun list!14138 (Conc!11669) List!38372)

(assert (=> d!1067827 (= (list!14134 (_1!22192 (lex!2504 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280)))) (list!14138 (c!627893 (_1!22192 (lex!2504 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280))))))))

(declare-fun bs!571601 () Bool)

(assert (= bs!571601 d!1067827))

(declare-fun m!4131713 () Bool)

(assert (=> bs!571601 m!4131713))

(assert (=> d!1067275 d!1067827))

(declare-fun d!1067829 () Bool)

(assert (=> d!1067829 (isPrefix!3067 lt!1255499 (++!9520 lt!1255499 lt!1255504))))

(declare-fun lt!1255675 () Unit!55058)

(assert (=> d!1067829 (= lt!1255675 (choose!21311 lt!1255499 lt!1255504))))

(assert (=> d!1067829 (= (lemmaConcatTwoListThenFirstIsPrefix!1986 lt!1255499 lt!1255504) lt!1255675)))

(declare-fun bs!571602 () Bool)

(assert (= bs!571602 d!1067829))

(assert (=> bs!571602 m!4130643))

(assert (=> bs!571602 m!4130643))

(assert (=> bs!571602 m!4130645))

(declare-fun m!4131715 () Bool)

(assert (=> bs!571602 m!4131715))

(assert (=> d!1067275 d!1067829))

(declare-fun b!3630338 () Bool)

(declare-fun e!2247197 () Bool)

(assert (=> b!3630338 (= e!2247197 (>= (size!29181 (++!9520 lt!1255499 lt!1255504)) (size!29181 lt!1255499)))))

(declare-fun d!1067831 () Bool)

(assert (=> d!1067831 e!2247197))

(declare-fun res!1470056 () Bool)

(assert (=> d!1067831 (=> res!1470056 e!2247197)))

(declare-fun lt!1255676 () Bool)

(assert (=> d!1067831 (= res!1470056 (not lt!1255676))))

(declare-fun e!2247196 () Bool)

(assert (=> d!1067831 (= lt!1255676 e!2247196)))

(declare-fun res!1470053 () Bool)

(assert (=> d!1067831 (=> res!1470053 e!2247196)))

(assert (=> d!1067831 (= res!1470053 ((_ is Nil!38244) lt!1255499))))

(assert (=> d!1067831 (= (isPrefix!3067 lt!1255499 (++!9520 lt!1255499 lt!1255504)) lt!1255676)))

(declare-fun b!3630337 () Bool)

(declare-fun e!2247195 () Bool)

(assert (=> b!3630337 (= e!2247195 (isPrefix!3067 (tail!5619 lt!1255499) (tail!5619 (++!9520 lt!1255499 lt!1255504))))))

(declare-fun b!3630336 () Bool)

(declare-fun res!1470055 () Bool)

(assert (=> b!3630336 (=> (not res!1470055) (not e!2247195))))

(assert (=> b!3630336 (= res!1470055 (= (head!7682 lt!1255499) (head!7682 (++!9520 lt!1255499 lt!1255504))))))

(declare-fun b!3630335 () Bool)

(assert (=> b!3630335 (= e!2247196 e!2247195)))

(declare-fun res!1470054 () Bool)

(assert (=> b!3630335 (=> (not res!1470054) (not e!2247195))))

(assert (=> b!3630335 (= res!1470054 (not ((_ is Nil!38244) (++!9520 lt!1255499 lt!1255504))))))

(assert (= (and d!1067831 (not res!1470053)) b!3630335))

(assert (= (and b!3630335 res!1470054) b!3630336))

(assert (= (and b!3630336 res!1470055) b!3630337))

(assert (= (and d!1067831 (not res!1470056)) b!3630338))

(assert (=> b!3630338 m!4130643))

(declare-fun m!4131717 () Bool)

(assert (=> b!3630338 m!4131717))

(assert (=> b!3630338 m!4131671))

(declare-fun m!4131719 () Bool)

(assert (=> b!3630337 m!4131719))

(assert (=> b!3630337 m!4130643))

(declare-fun m!4131721 () Bool)

(assert (=> b!3630337 m!4131721))

(assert (=> b!3630337 m!4131719))

(assert (=> b!3630337 m!4131721))

(declare-fun m!4131723 () Bool)

(assert (=> b!3630337 m!4131723))

(declare-fun m!4131725 () Bool)

(assert (=> b!3630336 m!4131725))

(assert (=> b!3630336 m!4130643))

(declare-fun m!4131727 () Bool)

(assert (=> b!3630336 m!4131727))

(assert (=> d!1067275 d!1067831))

(declare-fun d!1067833 () Bool)

(assert (=> d!1067833 (= (seqFromList!4253 lt!1255280) (fromListB!1957 lt!1255280))))

(declare-fun bs!571603 () Bool)

(assert (= bs!571603 d!1067833))

(declare-fun m!4131729 () Bool)

(assert (=> bs!571603 m!4131729))

(assert (=> d!1067275 d!1067833))

(declare-fun d!1067835 () Bool)

(assert (=> d!1067835 (= (head!7684 (list!14134 (_1!22192 (lex!2504 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280))))) (h!43668 (list!14134 (_1!22192 (lex!2504 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280))))))))

(assert (=> d!1067275 d!1067835))

(declare-fun b!3630395 () Bool)

(declare-fun e!2247226 () Bool)

(declare-fun lt!1255706 () tuple2!38116)

(assert (=> b!3630395 (= e!2247226 (= (_2!22192 lt!1255706) (seqFromList!4253 lt!1255280)))))

(declare-fun b!3630396 () Bool)

(declare-fun res!1470099 () Bool)

(declare-fun e!2247227 () Bool)

(assert (=> b!3630396 (=> (not res!1470099) (not e!2247227))))

(declare-datatypes ((tuple2!38124 0))(
  ( (tuple2!38125 (_1!22196 List!38372) (_2!22196 List!38368)) )
))
(declare-fun lexList!1514 (LexerInterface!5293 List!38369 List!38368) tuple2!38124)

(assert (=> b!3630396 (= res!1470099 (= (list!14134 (_1!22192 lt!1255706)) (_1!22196 (lexList!1514 thiss!23823 rules!3307 (list!14130 (seqFromList!4253 lt!1255280))))))))

(declare-fun b!3630397 () Bool)

(declare-fun e!2247225 () Bool)

(assert (=> b!3630397 (= e!2247226 e!2247225)))

(declare-fun res!1470100 () Bool)

(assert (=> b!3630397 (= res!1470100 (< (size!29179 (_2!22192 lt!1255706)) (size!29179 (seqFromList!4253 lt!1255280))))))

(assert (=> b!3630397 (=> (not res!1470100) (not e!2247225))))

(declare-fun b!3630398 () Bool)

(assert (=> b!3630398 (= e!2247227 (= (list!14130 (_2!22192 lt!1255706)) (_2!22196 (lexList!1514 thiss!23823 rules!3307 (list!14130 (seqFromList!4253 lt!1255280))))))))

(declare-fun b!3630399 () Bool)

(declare-fun isEmpty!22625 (BalanceConc!22952) Bool)

(assert (=> b!3630399 (= e!2247225 (not (isEmpty!22625 (_1!22192 lt!1255706))))))

(declare-fun d!1067837 () Bool)

(assert (=> d!1067837 e!2247227))

(declare-fun res!1470101 () Bool)

(assert (=> d!1067837 (=> (not res!1470101) (not e!2247227))))

(assert (=> d!1067837 (= res!1470101 e!2247226)))

(declare-fun c!628096 () Bool)

(declare-fun size!29185 (BalanceConc!22952) Int)

(assert (=> d!1067837 (= c!628096 (> (size!29185 (_1!22192 lt!1255706)) 0))))

(declare-fun lexTailRecV2!1120 (LexerInterface!5293 List!38369 BalanceConc!22948 BalanceConc!22948 BalanceConc!22948 BalanceConc!22952) tuple2!38116)

(assert (=> d!1067837 (= lt!1255706 (lexTailRecV2!1120 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280) (BalanceConc!22949 Empty!11667) (seqFromList!4253 lt!1255280) (BalanceConc!22953 Empty!11669)))))

(assert (=> d!1067837 (= (lex!2504 thiss!23823 rules!3307 (seqFromList!4253 lt!1255280)) lt!1255706)))

(assert (= (and d!1067837 c!628096) b!3630397))

(assert (= (and d!1067837 (not c!628096)) b!3630395))

(assert (= (and b!3630397 res!1470100) b!3630399))

(assert (= (and d!1067837 res!1470101) b!3630396))

(assert (= (and b!3630396 res!1470099) b!3630398))

(declare-fun m!4131845 () Bool)

(assert (=> b!3630399 m!4131845))

(declare-fun m!4131847 () Bool)

(assert (=> d!1067837 m!4131847))

(assert (=> d!1067837 m!4130649))

(assert (=> d!1067837 m!4130649))

(declare-fun m!4131849 () Bool)

(assert (=> d!1067837 m!4131849))

(declare-fun m!4131851 () Bool)

(assert (=> b!3630397 m!4131851))

(assert (=> b!3630397 m!4130649))

(declare-fun m!4131853 () Bool)

(assert (=> b!3630397 m!4131853))

(declare-fun m!4131855 () Bool)

(assert (=> b!3630396 m!4131855))

(assert (=> b!3630396 m!4130649))

(declare-fun m!4131857 () Bool)

(assert (=> b!3630396 m!4131857))

(assert (=> b!3630396 m!4131857))

(declare-fun m!4131859 () Bool)

(assert (=> b!3630396 m!4131859))

(declare-fun m!4131861 () Bool)

(assert (=> b!3630398 m!4131861))

(assert (=> b!3630398 m!4130649))

(assert (=> b!3630398 m!4131857))

(assert (=> b!3630398 m!4131857))

(assert (=> b!3630398 m!4131859))

(assert (=> d!1067275 d!1067837))

(assert (=> d!1067275 d!1067681))

(declare-fun d!1067867 () Bool)

(assert (=> d!1067867 (isPrefix!3067 lt!1255496 (++!9520 lt!1255280 suffix!1395))))

(declare-fun lt!1255709 () Unit!55058)

(declare-fun choose!21321 (List!38368 List!38368 List!38368) Unit!55058)

(assert (=> d!1067867 (= lt!1255709 (choose!21321 lt!1255496 lt!1255280 suffix!1395))))

(assert (=> d!1067867 (isPrefix!3067 lt!1255496 lt!1255280)))

(assert (=> d!1067867 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!472 lt!1255496 lt!1255280 suffix!1395) lt!1255709)))

(declare-fun bs!571613 () Bool)

(assert (= bs!571613 d!1067867))

(assert (=> bs!571613 m!4129995))

(assert (=> bs!571613 m!4129995))

(assert (=> bs!571613 m!4130639))

(declare-fun m!4131863 () Bool)

(assert (=> bs!571613 m!4131863))

(declare-fun m!4131865 () Bool)

(assert (=> bs!571613 m!4131865))

(assert (=> d!1067275 d!1067867))

(assert (=> d!1067275 d!1067353))

(declare-fun d!1067869 () Bool)

(declare-fun e!2247228 () Bool)

(assert (=> d!1067869 e!2247228))

(declare-fun res!1470102 () Bool)

(assert (=> d!1067869 (=> (not res!1470102) (not e!2247228))))

(assert (=> d!1067869 (= res!1470102 (isDefined!6269 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511)))))))

(declare-fun lt!1255710 () Unit!55058)

(assert (=> d!1067869 (= lt!1255710 (choose!21312 thiss!23823 rules!3307 lt!1255280 lt!1255511))))

(assert (=> d!1067869 (rulesInvariant!4690 thiss!23823 rules!3307)))

(assert (=> d!1067869 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1308 thiss!23823 rules!3307 lt!1255280 lt!1255511) lt!1255710)))

(declare-fun b!3630400 () Bool)

(declare-fun res!1470103 () Bool)

(assert (=> b!3630400 (=> (not res!1470103) (not e!2247228))))

(assert (=> b!3630400 (= res!1470103 (matchR!5032 (regex!5704 (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))) (list!14130 (charsOf!3718 lt!1255511))))))

(declare-fun b!3630401 () Bool)

(assert (=> b!3630401 (= e!2247228 (= (rule!8474 lt!1255511) (get!12498 (getRuleFromTag!1308 thiss!23823 rules!3307 (tag!6432 (rule!8474 lt!1255511))))))))

(assert (= (and d!1067869 res!1470102) b!3630400))

(assert (= (and b!3630400 res!1470103) b!3630401))

(assert (=> d!1067869 m!4130651))

(assert (=> d!1067869 m!4130651))

(assert (=> d!1067869 m!4130667))

(declare-fun m!4131867 () Bool)

(assert (=> d!1067869 m!4131867))

(assert (=> d!1067869 m!4130045))

(assert (=> b!3630400 m!4130657))

(assert (=> b!3630400 m!4130671))

(assert (=> b!3630400 m!4130641))

(assert (=> b!3630400 m!4130651))

(assert (=> b!3630400 m!4130669))

(assert (=> b!3630400 m!4130651))

(assert (=> b!3630400 m!4130641))

(assert (=> b!3630400 m!4130657))

(assert (=> b!3630401 m!4130651))

(assert (=> b!3630401 m!4130651))

(assert (=> b!3630401 m!4130669))

(assert (=> d!1067275 d!1067869))

(assert (=> d!1067275 d!1067181))

(assert (=> d!1067275 d!1067441))

(assert (=> bm!262479 d!1067619))

(declare-fun d!1067871 () Bool)

(assert (=> d!1067871 (= (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))) (list!14133 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))))))

(declare-fun bs!571614 () Bool)

(assert (= bs!571614 d!1067871))

(declare-fun m!4131869 () Bool)

(assert (=> bs!571614 m!4131869))

(assert (=> d!1067249 d!1067871))

(assert (=> d!1067249 d!1067345))

(declare-fun d!1067873 () Bool)

(declare-fun dynLambda!16575 (Int BalanceConc!22948) Bool)

(assert (=> d!1067873 (dynLambda!16575 lambda!124227 lt!1255271)))

(declare-fun lt!1255713 () Unit!55058)

(declare-fun choose!21322 (Int BalanceConc!22948) Unit!55058)

(assert (=> d!1067873 (= lt!1255713 (choose!21322 lambda!124227 lt!1255271))))

(assert (=> d!1067873 (Forall!1368 lambda!124227)))

(assert (=> d!1067873 (= (ForallOf!677 lambda!124227 lt!1255271) lt!1255713)))

(declare-fun b_lambda!107445 () Bool)

(assert (=> (not b_lambda!107445) (not d!1067873)))

(declare-fun bs!571615 () Bool)

(assert (= bs!571615 d!1067873))

(declare-fun m!4131871 () Bool)

(assert (=> bs!571615 m!4131871))

(declare-fun m!4131873 () Bool)

(assert (=> bs!571615 m!4131873))

(declare-fun m!4131875 () Bool)

(assert (=> bs!571615 m!4131875))

(assert (=> d!1067249 d!1067873))

(declare-fun d!1067875 () Bool)

(declare-fun lt!1255714 () Int)

(assert (=> d!1067875 (>= lt!1255714 0)))

(declare-fun e!2247229 () Int)

(assert (=> d!1067875 (= lt!1255714 e!2247229)))

(declare-fun c!628097 () Bool)

(assert (=> d!1067875 (= c!628097 ((_ is Nil!38244) lt!1255525))))

(assert (=> d!1067875 (= (size!29181 lt!1255525) lt!1255714)))

(declare-fun b!3630402 () Bool)

(assert (=> b!3630402 (= e!2247229 0)))

(declare-fun b!3630403 () Bool)

(assert (=> b!3630403 (= e!2247229 (+ 1 (size!29181 (t!294963 lt!1255525))))))

(assert (= (and d!1067875 c!628097) b!3630402))

(assert (= (and d!1067875 (not c!628097)) b!3630403))

(declare-fun m!4131877 () Bool)

(assert (=> b!3630403 m!4131877))

(assert (=> b!3629566 d!1067875))

(assert (=> b!3629566 d!1067485))

(declare-fun d!1067877 () Bool)

(declare-fun lt!1255715 () Int)

(assert (=> d!1067877 (>= lt!1255715 0)))

(declare-fun e!2247230 () Int)

(assert (=> d!1067877 (= lt!1255715 e!2247230)))

(declare-fun c!628098 () Bool)

(assert (=> d!1067877 (= c!628098 ((_ is Nil!38244) (_2!22190 lt!1255278)))))

(assert (=> d!1067877 (= (size!29181 (_2!22190 lt!1255278)) lt!1255715)))

(declare-fun b!3630404 () Bool)

(assert (=> b!3630404 (= e!2247230 0)))

(declare-fun b!3630405 () Bool)

(assert (=> b!3630405 (= e!2247230 (+ 1 (size!29181 (t!294963 (_2!22190 lt!1255278)))))))

(assert (= (and d!1067877 c!628098) b!3630404))

(assert (= (and d!1067877 (not c!628098)) b!3630405))

(declare-fun m!4131879 () Bool)

(assert (=> b!3630405 m!4131879))

(assert (=> b!3629566 d!1067877))

(declare-fun b!3630406 () Bool)

(declare-fun e!2247234 () Option!8037)

(declare-fun lt!1255716 () tuple2!38118)

(assert (=> b!3630406 (= e!2247234 (Some!8036 (tuple2!38113 (Token!10775 (apply!9206 (transformation!5704 (h!43665 rules!3307)) (seqFromList!4253 (_1!22193 lt!1255716))) (h!43665 rules!3307) (size!29179 (seqFromList!4253 (_1!22193 lt!1255716))) (_1!22193 lt!1255716)) (_2!22193 lt!1255716))))))

(declare-fun lt!1255718 () Unit!55058)

(assert (=> b!3630406 (= lt!1255718 (longestMatchIsAcceptedByMatchOrIsEmpty!997 (regex!5704 (h!43665 rules!3307)) lt!1255273))))

(declare-fun res!1470108 () Bool)

(assert (=> b!3630406 (= res!1470108 (isEmpty!22618 (_1!22193 (findLongestMatchInner!1024 (regex!5704 (h!43665 rules!3307)) Nil!38244 (size!29181 Nil!38244) lt!1255273 lt!1255273 (size!29181 lt!1255273)))))))

(declare-fun e!2247231 () Bool)

(assert (=> b!3630406 (=> res!1470108 e!2247231)))

(assert (=> b!3630406 e!2247231))

(declare-fun lt!1255720 () Unit!55058)

(assert (=> b!3630406 (= lt!1255720 lt!1255718)))

(declare-fun lt!1255719 () Unit!55058)

(assert (=> b!3630406 (= lt!1255719 (lemmaSemiInverse!1453 (transformation!5704 (h!43665 rules!3307)) (seqFromList!4253 (_1!22193 lt!1255716))))))

(declare-fun b!3630407 () Bool)

(declare-fun e!2247233 () Bool)

(declare-fun lt!1255717 () Option!8037)

(assert (=> b!3630407 (= e!2247233 (= (size!29178 (_1!22190 (get!12499 lt!1255717))) (size!29181 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255717))))))))

(declare-fun b!3630408 () Bool)

(declare-fun res!1470105 () Bool)

(assert (=> b!3630408 (=> (not res!1470105) (not e!2247233))))

(assert (=> b!3630408 (= res!1470105 (= (value!183024 (_1!22190 (get!12499 lt!1255717))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255717)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255717)))))))))

(declare-fun b!3630409 () Bool)

(declare-fun res!1470107 () Bool)

(assert (=> b!3630409 (=> (not res!1470107) (not e!2247233))))

(assert (=> b!3630409 (= res!1470107 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255717)))) (_2!22190 (get!12499 lt!1255717))) lt!1255273))))

(declare-fun d!1067879 () Bool)

(declare-fun e!2247232 () Bool)

(assert (=> d!1067879 e!2247232))

(declare-fun res!1470106 () Bool)

(assert (=> d!1067879 (=> res!1470106 e!2247232)))

(assert (=> d!1067879 (= res!1470106 (isEmpty!22622 lt!1255717))))

(assert (=> d!1067879 (= lt!1255717 e!2247234)))

(declare-fun c!628099 () Bool)

(assert (=> d!1067879 (= c!628099 (isEmpty!22618 (_1!22193 lt!1255716)))))

(assert (=> d!1067879 (= lt!1255716 (findLongestMatch!939 (regex!5704 (h!43665 rules!3307)) lt!1255273))))

(assert (=> d!1067879 (ruleValid!1968 thiss!23823 (h!43665 rules!3307))))

(assert (=> d!1067879 (= (maxPrefixOneRule!1967 thiss!23823 (h!43665 rules!3307) lt!1255273) lt!1255717)))

(declare-fun b!3630410 () Bool)

(assert (=> b!3630410 (= e!2247234 None!8036)))

(declare-fun b!3630411 () Bool)

(declare-fun res!1470104 () Bool)

(assert (=> b!3630411 (=> (not res!1470104) (not e!2247233))))

(assert (=> b!3630411 (= res!1470104 (< (size!29181 (_2!22190 (get!12499 lt!1255717))) (size!29181 lt!1255273)))))

(declare-fun b!3630412 () Bool)

(declare-fun res!1470110 () Bool)

(assert (=> b!3630412 (=> (not res!1470110) (not e!2247233))))

(assert (=> b!3630412 (= res!1470110 (= (rule!8474 (_1!22190 (get!12499 lt!1255717))) (h!43665 rules!3307)))))

(declare-fun b!3630413 () Bool)

(assert (=> b!3630413 (= e!2247232 e!2247233)))

(declare-fun res!1470109 () Bool)

(assert (=> b!3630413 (=> (not res!1470109) (not e!2247233))))

(assert (=> b!3630413 (= res!1470109 (matchR!5032 (regex!5704 (h!43665 rules!3307)) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255717))))))))

(declare-fun b!3630414 () Bool)

(assert (=> b!3630414 (= e!2247231 (matchR!5032 (regex!5704 (h!43665 rules!3307)) (_1!22193 (findLongestMatchInner!1024 (regex!5704 (h!43665 rules!3307)) Nil!38244 (size!29181 Nil!38244) lt!1255273 lt!1255273 (size!29181 lt!1255273)))))))

(assert (= (and d!1067879 c!628099) b!3630410))

(assert (= (and d!1067879 (not c!628099)) b!3630406))

(assert (= (and b!3630406 (not res!1470108)) b!3630414))

(assert (= (and d!1067879 (not res!1470106)) b!3630413))

(assert (= (and b!3630413 res!1470109) b!3630409))

(assert (= (and b!3630409 res!1470107) b!3630411))

(assert (= (and b!3630411 res!1470104) b!3630412))

(assert (= (and b!3630412 res!1470110) b!3630408))

(assert (= (and b!3630408 res!1470105) b!3630407))

(declare-fun m!4131881 () Bool)

(assert (=> b!3630413 m!4131881))

(declare-fun m!4131883 () Bool)

(assert (=> b!3630413 m!4131883))

(assert (=> b!3630413 m!4131883))

(declare-fun m!4131885 () Bool)

(assert (=> b!3630413 m!4131885))

(assert (=> b!3630413 m!4131885))

(declare-fun m!4131887 () Bool)

(assert (=> b!3630413 m!4131887))

(assert (=> b!3630406 m!4131009))

(assert (=> b!3630406 m!4130481))

(declare-fun m!4131889 () Bool)

(assert (=> b!3630406 m!4131889))

(declare-fun m!4131891 () Bool)

(assert (=> b!3630406 m!4131891))

(declare-fun m!4131893 () Bool)

(assert (=> b!3630406 m!4131893))

(declare-fun m!4131895 () Bool)

(assert (=> b!3630406 m!4131895))

(assert (=> b!3630406 m!4130481))

(assert (=> b!3630406 m!4131893))

(declare-fun m!4131897 () Bool)

(assert (=> b!3630406 m!4131897))

(assert (=> b!3630406 m!4131893))

(declare-fun m!4131899 () Bool)

(assert (=> b!3630406 m!4131899))

(assert (=> b!3630406 m!4131893))

(declare-fun m!4131901 () Bool)

(assert (=> b!3630406 m!4131901))

(assert (=> b!3630406 m!4131009))

(declare-fun m!4131903 () Bool)

(assert (=> d!1067879 m!4131903))

(declare-fun m!4131905 () Bool)

(assert (=> d!1067879 m!4131905))

(declare-fun m!4131907 () Bool)

(assert (=> d!1067879 m!4131907))

(assert (=> d!1067879 m!4131207))

(assert (=> b!3630407 m!4131881))

(declare-fun m!4131909 () Bool)

(assert (=> b!3630407 m!4131909))

(assert (=> b!3630409 m!4131881))

(assert (=> b!3630409 m!4131883))

(assert (=> b!3630409 m!4131883))

(assert (=> b!3630409 m!4131885))

(assert (=> b!3630409 m!4131885))

(declare-fun m!4131911 () Bool)

(assert (=> b!3630409 m!4131911))

(assert (=> b!3630412 m!4131881))

(assert (=> b!3630411 m!4131881))

(declare-fun m!4131913 () Bool)

(assert (=> b!3630411 m!4131913))

(assert (=> b!3630411 m!4130481))

(assert (=> b!3630414 m!4131009))

(assert (=> b!3630414 m!4130481))

(assert (=> b!3630414 m!4131009))

(assert (=> b!3630414 m!4130481))

(assert (=> b!3630414 m!4131889))

(declare-fun m!4131915 () Bool)

(assert (=> b!3630414 m!4131915))

(assert (=> b!3630408 m!4131881))

(declare-fun m!4131917 () Bool)

(assert (=> b!3630408 m!4131917))

(assert (=> b!3630408 m!4131917))

(declare-fun m!4131919 () Bool)

(assert (=> b!3630408 m!4131919))

(assert (=> bm!262506 d!1067879))

(declare-fun d!1067881 () Bool)

(declare-fun charsToInt!0 (List!38367) (_ BitVec 32))

(assert (=> d!1067881 (= (inv!16 (value!183024 token!511)) (= (charsToInt!0 (text!41985 (value!183024 token!511))) (value!183016 (value!183024 token!511))))))

(declare-fun bs!571616 () Bool)

(assert (= bs!571616 d!1067881))

(declare-fun m!4131921 () Bool)

(assert (=> bs!571616 m!4131921))

(assert (=> b!3629066 d!1067881))

(assert (=> b!3629539 d!1067677))

(assert (=> b!3629539 d!1067681))

(declare-fun d!1067883 () Bool)

(declare-fun e!2247237 () Bool)

(assert (=> d!1067883 e!2247237))

(declare-fun res!1470113 () Bool)

(assert (=> d!1067883 (=> (not res!1470113) (not e!2247237))))

(declare-fun lt!1255723 () BalanceConc!22948)

(assert (=> d!1067883 (= res!1470113 (= (list!14130 lt!1255723) (originalCharacters!6418 (_1!22190 lt!1255278))))))

(declare-fun fromList!796 (List!38368) Conc!11667)

(assert (=> d!1067883 (= lt!1255723 (BalanceConc!22949 (fromList!796 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(assert (=> d!1067883 (= (fromListB!1957 (originalCharacters!6418 (_1!22190 lt!1255278))) lt!1255723)))

(declare-fun b!3630417 () Bool)

(assert (=> b!3630417 (= e!2247237 (isBalanced!3502 (fromList!796 (originalCharacters!6418 (_1!22190 lt!1255278)))))))

(assert (= (and d!1067883 res!1470113) b!3630417))

(declare-fun m!4131923 () Bool)

(assert (=> d!1067883 m!4131923))

(declare-fun m!4131925 () Bool)

(assert (=> d!1067883 m!4131925))

(assert (=> b!3630417 m!4131925))

(assert (=> b!3630417 m!4131925))

(declare-fun m!4131927 () Bool)

(assert (=> b!3630417 m!4131927))

(assert (=> d!1067251 d!1067883))

(declare-fun b!3630421 () Bool)

(declare-fun e!2247240 () Bool)

(assert (=> b!3630421 (= e!2247240 (>= (size!29181 (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278)))) (size!29181 (tail!5619 lt!1255264))))))

(declare-fun d!1067885 () Bool)

(assert (=> d!1067885 e!2247240))

(declare-fun res!1470117 () Bool)

(assert (=> d!1067885 (=> res!1470117 e!2247240)))

(declare-fun lt!1255724 () Bool)

(assert (=> d!1067885 (= res!1470117 (not lt!1255724))))

(declare-fun e!2247239 () Bool)

(assert (=> d!1067885 (= lt!1255724 e!2247239)))

(declare-fun res!1470114 () Bool)

(assert (=> d!1067885 (=> res!1470114 e!2247239)))

(assert (=> d!1067885 (= res!1470114 ((_ is Nil!38244) (tail!5619 lt!1255264)))))

(assert (=> d!1067885 (= (isPrefix!3067 (tail!5619 lt!1255264) (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278)))) lt!1255724)))

(declare-fun b!3630420 () Bool)

(declare-fun e!2247238 () Bool)

(assert (=> b!3630420 (= e!2247238 (isPrefix!3067 (tail!5619 (tail!5619 lt!1255264)) (tail!5619 (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278))))))))

(declare-fun b!3630419 () Bool)

(declare-fun res!1470116 () Bool)

(assert (=> b!3630419 (=> (not res!1470116) (not e!2247238))))

(assert (=> b!3630419 (= res!1470116 (= (head!7682 (tail!5619 lt!1255264)) (head!7682 (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278))))))))

(declare-fun b!3630418 () Bool)

(assert (=> b!3630418 (= e!2247239 e!2247238)))

(declare-fun res!1470115 () Bool)

(assert (=> b!3630418 (=> (not res!1470115) (not e!2247238))))

(assert (=> b!3630418 (= res!1470115 (not ((_ is Nil!38244) (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278))))))))

(assert (= (and d!1067885 (not res!1470114)) b!3630418))

(assert (= (and b!3630418 res!1470115) b!3630419))

(assert (= (and b!3630419 res!1470116) b!3630420))

(assert (= (and d!1067885 (not res!1470117)) b!3630421))

(assert (=> b!3630421 m!4130731))

(declare-fun m!4131929 () Bool)

(assert (=> b!3630421 m!4131929))

(assert (=> b!3630421 m!4130259))

(assert (=> b!3630421 m!4130899))

(assert (=> b!3630420 m!4130259))

(assert (=> b!3630420 m!4130845))

(assert (=> b!3630420 m!4130731))

(declare-fun m!4131931 () Bool)

(assert (=> b!3630420 m!4131931))

(assert (=> b!3630420 m!4130845))

(assert (=> b!3630420 m!4131931))

(declare-fun m!4131933 () Bool)

(assert (=> b!3630420 m!4131933))

(assert (=> b!3630419 m!4130259))

(assert (=> b!3630419 m!4130853))

(assert (=> b!3630419 m!4130731))

(declare-fun m!4131935 () Bool)

(assert (=> b!3630419 m!4131935))

(assert (=> b!3629554 d!1067885))

(assert (=> b!3629554 d!1067399))

(declare-fun d!1067887 () Bool)

(assert (=> d!1067887 (= (tail!5619 (++!9520 lt!1255264 (_2!22190 lt!1255278))) (t!294963 (++!9520 lt!1255264 (_2!22190 lt!1255278))))))

(assert (=> b!3629554 d!1067887))

(declare-fun b!3630423 () Bool)

(declare-fun e!2247242 () Bool)

(assert (=> b!3630423 (= e!2247242 (matchR!5032 (derivativeStep!3169 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) (head!7682 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))) (tail!5619 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3630424 () Bool)

(declare-fun e!2247246 () Bool)

(declare-fun e!2247241 () Bool)

(assert (=> b!3630424 (= e!2247246 e!2247241)))

(declare-fun res!1470119 () Bool)

(assert (=> b!3630424 (=> (not res!1470119) (not e!2247241))))

(declare-fun lt!1255725 () Bool)

(assert (=> b!3630424 (= res!1470119 (not lt!1255725))))

(declare-fun b!3630425 () Bool)

(declare-fun e!2247243 () Bool)

(declare-fun call!262599 () Bool)

(assert (=> b!3630425 (= e!2247243 (= lt!1255725 call!262599))))

(declare-fun b!3630426 () Bool)

(declare-fun e!2247247 () Bool)

(assert (=> b!3630426 (= e!2247243 e!2247247)))

(declare-fun c!628102 () Bool)

(assert (=> b!3630426 (= c!628102 ((_ is EmptyLang!10463) (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3630427 () Bool)

(assert (=> b!3630427 (= e!2247247 (not lt!1255725))))

(declare-fun b!3630428 () Bool)

(declare-fun res!1470124 () Bool)

(assert (=> b!3630428 (=> res!1470124 e!2247246)))

(assert (=> b!3630428 (= res!1470124 (not ((_ is ElementMatch!10463) (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))))

(assert (=> b!3630428 (= e!2247247 e!2247246)))

(declare-fun b!3630429 () Bool)

(assert (=> b!3630429 (= e!2247242 (nullable!3620 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3630430 () Bool)

(declare-fun res!1470122 () Bool)

(declare-fun e!2247244 () Bool)

(assert (=> b!3630430 (=> res!1470122 e!2247244)))

(assert (=> b!3630430 (= res!1470122 (not (isEmpty!22618 (tail!5619 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))))

(declare-fun b!3630431 () Bool)

(assert (=> b!3630431 (= e!2247244 (not (= (head!7682 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) (c!627780 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))))

(declare-fun bm!262594 () Bool)

(assert (=> bm!262594 (= call!262599 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun d!1067889 () Bool)

(assert (=> d!1067889 e!2247243))

(declare-fun c!628103 () Bool)

(assert (=> d!1067889 (= c!628103 ((_ is EmptyExpr!10463) (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(assert (=> d!1067889 (= lt!1255725 e!2247242)))

(declare-fun c!628101 () Bool)

(assert (=> d!1067889 (= c!628101 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(assert (=> d!1067889 (validRegex!4782 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(assert (=> d!1067889 (= (matchR!5032 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) lt!1255725)))

(declare-fun b!3630422 () Bool)

(declare-fun res!1470120 () Bool)

(declare-fun e!2247245 () Bool)

(assert (=> b!3630422 (=> (not res!1470120) (not e!2247245))))

(assert (=> b!3630422 (= res!1470120 (not call!262599))))

(declare-fun b!3630432 () Bool)

(declare-fun res!1470123 () Bool)

(assert (=> b!3630432 (=> (not res!1470123) (not e!2247245))))

(assert (=> b!3630432 (= res!1470123 (isEmpty!22618 (tail!5619 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))))))))

(declare-fun b!3630433 () Bool)

(assert (=> b!3630433 (= e!2247245 (= (head!7682 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) (c!627780 (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))))

(declare-fun b!3630434 () Bool)

(assert (=> b!3630434 (= e!2247241 e!2247244)))

(declare-fun res!1470125 () Bool)

(assert (=> b!3630434 (=> res!1470125 e!2247244)))

(assert (=> b!3630434 (= res!1470125 call!262599)))

(declare-fun b!3630435 () Bool)

(declare-fun res!1470118 () Bool)

(assert (=> b!3630435 (=> res!1470118 e!2247246)))

(assert (=> b!3630435 (= res!1470118 e!2247245)))

(declare-fun res!1470121 () Bool)

(assert (=> b!3630435 (=> (not res!1470121) (not e!2247245))))

(assert (=> b!3630435 (= res!1470121 lt!1255725)))

(assert (= (and d!1067889 c!628101) b!3630429))

(assert (= (and d!1067889 (not c!628101)) b!3630423))

(assert (= (and d!1067889 c!628103) b!3630425))

(assert (= (and d!1067889 (not c!628103)) b!3630426))

(assert (= (and b!3630426 c!628102) b!3630427))

(assert (= (and b!3630426 (not c!628102)) b!3630428))

(assert (= (and b!3630428 (not res!1470124)) b!3630435))

(assert (= (and b!3630435 res!1470121) b!3630422))

(assert (= (and b!3630422 res!1470120) b!3630432))

(assert (= (and b!3630432 res!1470123) b!3630433))

(assert (= (and b!3630435 (not res!1470118)) b!3630424))

(assert (= (and b!3630424 res!1470119) b!3630434))

(assert (= (and b!3630434 (not res!1470125)) b!3630430))

(assert (= (and b!3630430 (not res!1470122)) b!3630431))

(assert (= (or b!3630425 b!3630422 b!3630434) bm!262594))

(assert (=> b!3630432 m!4130789))

(declare-fun m!4131937 () Bool)

(assert (=> b!3630432 m!4131937))

(assert (=> b!3630432 m!4131937))

(declare-fun m!4131939 () Bool)

(assert (=> b!3630432 m!4131939))

(assert (=> bm!262594 m!4130789))

(assert (=> bm!262594 m!4130791))

(assert (=> b!3630429 m!4130801))

(declare-fun m!4131941 () Bool)

(assert (=> b!3630429 m!4131941))

(assert (=> d!1067889 m!4130789))

(assert (=> d!1067889 m!4130791))

(assert (=> d!1067889 m!4130801))

(declare-fun m!4131943 () Bool)

(assert (=> d!1067889 m!4131943))

(assert (=> b!3630431 m!4130789))

(declare-fun m!4131945 () Bool)

(assert (=> b!3630431 m!4131945))

(assert (=> b!3630430 m!4130789))

(assert (=> b!3630430 m!4131937))

(assert (=> b!3630430 m!4131937))

(assert (=> b!3630430 m!4131939))

(assert (=> b!3630423 m!4130789))

(assert (=> b!3630423 m!4131945))

(assert (=> b!3630423 m!4130801))

(assert (=> b!3630423 m!4131945))

(declare-fun m!4131947 () Bool)

(assert (=> b!3630423 m!4131947))

(assert (=> b!3630423 m!4130789))

(assert (=> b!3630423 m!4131937))

(assert (=> b!3630423 m!4131947))

(assert (=> b!3630423 m!4131937))

(declare-fun m!4131949 () Bool)

(assert (=> b!3630423 m!4131949))

(assert (=> b!3630433 m!4130789))

(assert (=> b!3630433 m!4131945))

(assert (=> b!3629593 d!1067889))

(declare-fun b!3630436 () Bool)

(declare-fun e!2247248 () Regex!10463)

(declare-fun e!2247249 () Regex!10463)

(assert (=> b!3630436 (= e!2247248 e!2247249)))

(declare-fun c!628105 () Bool)

(assert (=> b!3630436 (= c!628105 ((_ is ElementMatch!10463) (regex!5704 lt!1255270)))))

(declare-fun d!1067891 () Bool)

(declare-fun lt!1255726 () Regex!10463)

(assert (=> d!1067891 (validRegex!4782 lt!1255726)))

(assert (=> d!1067891 (= lt!1255726 e!2247248)))

(declare-fun c!628108 () Bool)

(assert (=> d!1067891 (= c!628108 (or ((_ is EmptyExpr!10463) (regex!5704 lt!1255270)) ((_ is EmptyLang!10463) (regex!5704 lt!1255270))))))

(assert (=> d!1067891 (validRegex!4782 (regex!5704 lt!1255270))))

(assert (=> d!1067891 (= (derivativeStep!3169 (regex!5704 lt!1255270) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))) lt!1255726)))

(declare-fun b!3630437 () Bool)

(declare-fun e!2247251 () Regex!10463)

(declare-fun call!262601 () Regex!10463)

(declare-fun call!262602 () Regex!10463)

(assert (=> b!3630437 (= e!2247251 (Union!10463 call!262601 call!262602))))

(declare-fun e!2247252 () Regex!10463)

(declare-fun call!262603 () Regex!10463)

(declare-fun b!3630438 () Bool)

(assert (=> b!3630438 (= e!2247252 (Union!10463 (Concat!16397 call!262603 (regTwo!21438 (regex!5704 lt!1255270))) call!262602))))

(declare-fun c!628107 () Bool)

(declare-fun bm!262595 () Bool)

(assert (=> bm!262595 (= call!262602 (derivativeStep!3169 (ite c!628107 (regTwo!21439 (regex!5704 lt!1255270)) (regTwo!21438 (regex!5704 lt!1255270))) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3630439 () Bool)

(assert (=> b!3630439 (= e!2247248 EmptyLang!10463)))

(declare-fun b!3630440 () Bool)

(assert (=> b!3630440 (= c!628107 ((_ is Union!10463) (regex!5704 lt!1255270)))))

(assert (=> b!3630440 (= e!2247249 e!2247251)))

(declare-fun bm!262596 () Bool)

(declare-fun call!262600 () Regex!10463)

(assert (=> bm!262596 (= call!262600 call!262601)))

(declare-fun bm!262597 () Bool)

(assert (=> bm!262597 (= call!262603 call!262600)))

(declare-fun b!3630441 () Bool)

(declare-fun c!628104 () Bool)

(assert (=> b!3630441 (= c!628104 (nullable!3620 (regOne!21438 (regex!5704 lt!1255270))))))

(declare-fun e!2247250 () Regex!10463)

(assert (=> b!3630441 (= e!2247250 e!2247252)))

(declare-fun b!3630442 () Bool)

(assert (=> b!3630442 (= e!2247252 (Union!10463 (Concat!16397 call!262603 (regTwo!21438 (regex!5704 lt!1255270))) EmptyLang!10463))))

(declare-fun b!3630443 () Bool)

(assert (=> b!3630443 (= e!2247249 (ite (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278)))) (c!627780 (regex!5704 lt!1255270))) EmptyExpr!10463 EmptyLang!10463))))

(declare-fun b!3630444 () Bool)

(assert (=> b!3630444 (= e!2247250 (Concat!16397 call!262600 (regex!5704 lt!1255270)))))

(declare-fun c!628106 () Bool)

(declare-fun bm!262598 () Bool)

(assert (=> bm!262598 (= call!262601 (derivativeStep!3169 (ite c!628107 (regOne!21439 (regex!5704 lt!1255270)) (ite c!628106 (reg!10792 (regex!5704 lt!1255270)) (regOne!21438 (regex!5704 lt!1255270)))) (head!7682 (list!14130 (charsOf!3718 (_1!22190 lt!1255278))))))))

(declare-fun b!3630445 () Bool)

(assert (=> b!3630445 (= e!2247251 e!2247250)))

(assert (=> b!3630445 (= c!628106 ((_ is Star!10463) (regex!5704 lt!1255270)))))

(assert (= (and d!1067891 c!628108) b!3630439))

(assert (= (and d!1067891 (not c!628108)) b!3630436))

(assert (= (and b!3630436 c!628105) b!3630443))

(assert (= (and b!3630436 (not c!628105)) b!3630440))

(assert (= (and b!3630440 c!628107) b!3630437))

(assert (= (and b!3630440 (not c!628107)) b!3630445))

(assert (= (and b!3630445 c!628106) b!3630444))

(assert (= (and b!3630445 (not c!628106)) b!3630441))

(assert (= (and b!3630441 c!628104) b!3630438))

(assert (= (and b!3630441 (not c!628104)) b!3630442))

(assert (= (or b!3630438 b!3630442) bm!262597))

(assert (= (or b!3630444 bm!262597) bm!262596))

(assert (= (or b!3630437 b!3630438) bm!262595))

(assert (= (or b!3630437 bm!262596) bm!262598))

(declare-fun m!4131951 () Bool)

(assert (=> d!1067891 m!4131951))

(assert (=> d!1067891 m!4130797))

(assert (=> bm!262595 m!4130799))

(declare-fun m!4131953 () Bool)

(assert (=> bm!262595 m!4131953))

(declare-fun m!4131955 () Bool)

(assert (=> b!3630441 m!4131955))

(assert (=> bm!262598 m!4130799))

(declare-fun m!4131957 () Bool)

(assert (=> bm!262598 m!4131957))

(assert (=> b!3629593 d!1067891))

(assert (=> b!3629593 d!1067673))

(assert (=> b!3629593 d!1067533))

(declare-fun b!3630447 () Bool)

(declare-fun e!2247254 () Bool)

(assert (=> b!3630447 (= e!2247254 (matchR!5032 (derivativeStep!3169 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))) (head!7682 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))))) (tail!5619 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))))))))

(declare-fun b!3630448 () Bool)

(declare-fun e!2247258 () Bool)

(declare-fun e!2247253 () Bool)

(assert (=> b!3630448 (= e!2247258 e!2247253)))

(declare-fun res!1470127 () Bool)

(assert (=> b!3630448 (=> (not res!1470127) (not e!2247253))))

(declare-fun lt!1255727 () Bool)

(assert (=> b!3630448 (= res!1470127 (not lt!1255727))))

(declare-fun b!3630449 () Bool)

(declare-fun e!2247255 () Bool)

(declare-fun call!262604 () Bool)

(assert (=> b!3630449 (= e!2247255 (= lt!1255727 call!262604))))

(declare-fun b!3630450 () Bool)

(declare-fun e!2247259 () Bool)

(assert (=> b!3630450 (= e!2247255 e!2247259)))

(declare-fun c!628110 () Bool)

(assert (=> b!3630450 (= c!628110 ((_ is EmptyLang!10463) (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))))))

(declare-fun b!3630451 () Bool)

(assert (=> b!3630451 (= e!2247259 (not lt!1255727))))

(declare-fun b!3630452 () Bool)

(declare-fun res!1470132 () Bool)

(assert (=> b!3630452 (=> res!1470132 e!2247258)))

(assert (=> b!3630452 (= res!1470132 (not ((_ is ElementMatch!10463) (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))))

(assert (=> b!3630452 (= e!2247259 e!2247258)))

(declare-fun b!3630453 () Bool)

(assert (=> b!3630453 (= e!2247254 (nullable!3620 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))))))

(declare-fun b!3630454 () Bool)

(declare-fun res!1470130 () Bool)

(declare-fun e!2247256 () Bool)

(assert (=> b!3630454 (=> res!1470130 e!2247256)))

(assert (=> b!3630454 (= res!1470130 (not (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))))))))

(declare-fun b!3630455 () Bool)

(assert (=> b!3630455 (= e!2247256 (not (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) (c!627780 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))))))))

(declare-fun bm!262599 () Bool)

(assert (=> bm!262599 (= call!262604 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))))))

(declare-fun d!1067893 () Bool)

(assert (=> d!1067893 e!2247255))

(declare-fun c!628111 () Bool)

(assert (=> d!1067893 (= c!628111 ((_ is EmptyExpr!10463) (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514))))))))

(assert (=> d!1067893 (= lt!1255727 e!2247254)))

(declare-fun c!628109 () Bool)

(assert (=> d!1067893 (= c!628109 (isEmpty!22618 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))))))

(assert (=> d!1067893 (validRegex!4782 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))

(assert (=> d!1067893 (= (matchR!5032 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) lt!1255727)))

(declare-fun b!3630446 () Bool)

(declare-fun res!1470128 () Bool)

(declare-fun e!2247257 () Bool)

(assert (=> b!3630446 (=> (not res!1470128) (not e!2247257))))

(assert (=> b!3630446 (= res!1470128 (not call!262604))))

(declare-fun b!3630456 () Bool)

(declare-fun res!1470131 () Bool)

(assert (=> b!3630456 (=> (not res!1470131) (not e!2247257))))

(assert (=> b!3630456 (= res!1470131 (isEmpty!22618 (tail!5619 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514)))))))))

(declare-fun b!3630457 () Bool)

(assert (=> b!3630457 (= e!2247257 (= (head!7682 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255514))))) (c!627780 (regex!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))))))

(declare-fun b!3630458 () Bool)

(assert (=> b!3630458 (= e!2247253 e!2247256)))

(declare-fun res!1470133 () Bool)

(assert (=> b!3630458 (=> res!1470133 e!2247256)))

(assert (=> b!3630458 (= res!1470133 call!262604)))

(declare-fun b!3630459 () Bool)

(declare-fun res!1470126 () Bool)

(assert (=> b!3630459 (=> res!1470126 e!2247258)))

(assert (=> b!3630459 (= res!1470126 e!2247257)))

(declare-fun res!1470129 () Bool)

(assert (=> b!3630459 (=> (not res!1470129) (not e!2247257))))

(assert (=> b!3630459 (= res!1470129 lt!1255727)))

(assert (= (and d!1067893 c!628109) b!3630453))

(assert (= (and d!1067893 (not c!628109)) b!3630447))

(assert (= (and d!1067893 c!628111) b!3630449))

(assert (= (and d!1067893 (not c!628111)) b!3630450))

(assert (= (and b!3630450 c!628110) b!3630451))

(assert (= (and b!3630450 (not c!628110)) b!3630452))

(assert (= (and b!3630452 (not res!1470132)) b!3630459))

(assert (= (and b!3630459 res!1470129) b!3630446))

(assert (= (and b!3630446 res!1470128) b!3630456))

(assert (= (and b!3630456 res!1470131) b!3630457))

(assert (= (and b!3630459 (not res!1470126)) b!3630448))

(assert (= (and b!3630448 res!1470127) b!3630458))

(assert (= (and b!3630458 (not res!1470133)) b!3630454))

(assert (= (and b!3630454 (not res!1470130)) b!3630455))

(assert (= (or b!3630449 b!3630446 b!3630458) bm!262599))

(assert (=> b!3630456 m!4130695))

(declare-fun m!4131959 () Bool)

(assert (=> b!3630456 m!4131959))

(assert (=> b!3630456 m!4131959))

(declare-fun m!4131961 () Bool)

(assert (=> b!3630456 m!4131961))

(assert (=> bm!262599 m!4130695))

(declare-fun m!4131963 () Bool)

(assert (=> bm!262599 m!4131963))

(declare-fun m!4131965 () Bool)

(assert (=> b!3630453 m!4131965))

(assert (=> d!1067893 m!4130695))

(assert (=> d!1067893 m!4131963))

(declare-fun m!4131967 () Bool)

(assert (=> d!1067893 m!4131967))

(assert (=> b!3630455 m!4130695))

(declare-fun m!4131969 () Bool)

(assert (=> b!3630455 m!4131969))

(assert (=> b!3630454 m!4130695))

(assert (=> b!3630454 m!4131959))

(assert (=> b!3630454 m!4131959))

(assert (=> b!3630454 m!4131961))

(assert (=> b!3630447 m!4130695))

(assert (=> b!3630447 m!4131969))

(assert (=> b!3630447 m!4131969))

(declare-fun m!4131971 () Bool)

(assert (=> b!3630447 m!4131971))

(assert (=> b!3630447 m!4130695))

(assert (=> b!3630447 m!4131959))

(assert (=> b!3630447 m!4131971))

(assert (=> b!3630447 m!4131959))

(declare-fun m!4131973 () Bool)

(assert (=> b!3630447 m!4131973))

(assert (=> b!3630457 m!4130695))

(assert (=> b!3630457 m!4131969))

(assert (=> b!3629548 d!1067893))

(assert (=> b!3629548 d!1067409))

(assert (=> b!3629548 d!1067405))

(assert (=> b!3629548 d!1067407))

(assert (=> d!1067341 d!1067343))

(assert (=> d!1067341 d!1067347))

(declare-fun d!1067895 () Bool)

(assert (=> d!1067895 (isPrefix!3067 lt!1255264 (++!9520 lt!1255264 (_2!22190 lt!1255278)))))

(assert (=> d!1067895 true))

(declare-fun _$46!1466 () Unit!55058)

(assert (=> d!1067895 (= (choose!21311 lt!1255264 (_2!22190 lt!1255278)) _$46!1466)))

(declare-fun bs!571617 () Bool)

(assert (= bs!571617 d!1067895))

(assert (=> bs!571617 m!4130005))

(assert (=> bs!571617 m!4130005))

(assert (=> bs!571617 m!4130007))

(assert (=> d!1067341 d!1067895))

(assert (=> d!1067359 d!1067811))

(declare-fun d!1067897 () Bool)

(assert (=> d!1067897 (= (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (list!14133 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))))))

(declare-fun bs!571618 () Bool)

(assert (= bs!571618 d!1067897))

(declare-fun m!4131975 () Bool)

(assert (=> bs!571618 m!4131975))

(assert (=> b!3629336 d!1067897))

(declare-fun b!3630460 () Bool)

(declare-fun e!2247263 () Option!8037)

(declare-fun lt!1255728 () tuple2!38118)

(assert (=> b!3630460 (= e!2247263 (Some!8036 (tuple2!38113 (Token!10775 (apply!9206 (transformation!5704 (h!43665 rules!3307)) (seqFromList!4253 (_1!22193 lt!1255728))) (h!43665 rules!3307) (size!29179 (seqFromList!4253 (_1!22193 lt!1255728))) (_1!22193 lt!1255728)) (_2!22193 lt!1255728))))))

(declare-fun lt!1255730 () Unit!55058)

(assert (=> b!3630460 (= lt!1255730 (longestMatchIsAcceptedByMatchOrIsEmpty!997 (regex!5704 (h!43665 rules!3307)) lt!1255280))))

(declare-fun res!1470138 () Bool)

(assert (=> b!3630460 (= res!1470138 (isEmpty!22618 (_1!22193 (findLongestMatchInner!1024 (regex!5704 (h!43665 rules!3307)) Nil!38244 (size!29181 Nil!38244) lt!1255280 lt!1255280 (size!29181 lt!1255280)))))))

(declare-fun e!2247260 () Bool)

(assert (=> b!3630460 (=> res!1470138 e!2247260)))

(assert (=> b!3630460 e!2247260))

(declare-fun lt!1255732 () Unit!55058)

(assert (=> b!3630460 (= lt!1255732 lt!1255730)))

(declare-fun lt!1255731 () Unit!55058)

(assert (=> b!3630460 (= lt!1255731 (lemmaSemiInverse!1453 (transformation!5704 (h!43665 rules!3307)) (seqFromList!4253 (_1!22193 lt!1255728))))))

(declare-fun b!3630461 () Bool)

(declare-fun e!2247262 () Bool)

(declare-fun lt!1255729 () Option!8037)

(assert (=> b!3630461 (= e!2247262 (= (size!29178 (_1!22190 (get!12499 lt!1255729))) (size!29181 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255729))))))))

(declare-fun b!3630462 () Bool)

(declare-fun res!1470135 () Bool)

(assert (=> b!3630462 (=> (not res!1470135) (not e!2247262))))

(assert (=> b!3630462 (= res!1470135 (= (value!183024 (_1!22190 (get!12499 lt!1255729))) (apply!9206 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255729)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 (get!12499 lt!1255729)))))))))

(declare-fun b!3630463 () Bool)

(declare-fun res!1470137 () Bool)

(assert (=> b!3630463 (=> (not res!1470137) (not e!2247262))))

(assert (=> b!3630463 (= res!1470137 (= (++!9520 (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255729)))) (_2!22190 (get!12499 lt!1255729))) lt!1255280))))

(declare-fun d!1067899 () Bool)

(declare-fun e!2247261 () Bool)

(assert (=> d!1067899 e!2247261))

(declare-fun res!1470136 () Bool)

(assert (=> d!1067899 (=> res!1470136 e!2247261)))

(assert (=> d!1067899 (= res!1470136 (isEmpty!22622 lt!1255729))))

(assert (=> d!1067899 (= lt!1255729 e!2247263)))

(declare-fun c!628112 () Bool)

(assert (=> d!1067899 (= c!628112 (isEmpty!22618 (_1!22193 lt!1255728)))))

(assert (=> d!1067899 (= lt!1255728 (findLongestMatch!939 (regex!5704 (h!43665 rules!3307)) lt!1255280))))

(assert (=> d!1067899 (ruleValid!1968 thiss!23823 (h!43665 rules!3307))))

(assert (=> d!1067899 (= (maxPrefixOneRule!1967 thiss!23823 (h!43665 rules!3307) lt!1255280) lt!1255729)))

(declare-fun b!3630464 () Bool)

(assert (=> b!3630464 (= e!2247263 None!8036)))

(declare-fun b!3630465 () Bool)

(declare-fun res!1470134 () Bool)

(assert (=> b!3630465 (=> (not res!1470134) (not e!2247262))))

(assert (=> b!3630465 (= res!1470134 (< (size!29181 (_2!22190 (get!12499 lt!1255729))) (size!29181 lt!1255280)))))

(declare-fun b!3630466 () Bool)

(declare-fun res!1470140 () Bool)

(assert (=> b!3630466 (=> (not res!1470140) (not e!2247262))))

(assert (=> b!3630466 (= res!1470140 (= (rule!8474 (_1!22190 (get!12499 lt!1255729))) (h!43665 rules!3307)))))

(declare-fun b!3630467 () Bool)

(assert (=> b!3630467 (= e!2247261 e!2247262)))

(declare-fun res!1470139 () Bool)

(assert (=> b!3630467 (=> (not res!1470139) (not e!2247262))))

(assert (=> b!3630467 (= res!1470139 (matchR!5032 (regex!5704 (h!43665 rules!3307)) (list!14130 (charsOf!3718 (_1!22190 (get!12499 lt!1255729))))))))

(declare-fun b!3630468 () Bool)

(assert (=> b!3630468 (= e!2247260 (matchR!5032 (regex!5704 (h!43665 rules!3307)) (_1!22193 (findLongestMatchInner!1024 (regex!5704 (h!43665 rules!3307)) Nil!38244 (size!29181 Nil!38244) lt!1255280 lt!1255280 (size!29181 lt!1255280)))))))

(assert (= (and d!1067899 c!628112) b!3630464))

(assert (= (and d!1067899 (not c!628112)) b!3630460))

(assert (= (and b!3630460 (not res!1470138)) b!3630468))

(assert (= (and d!1067899 (not res!1470136)) b!3630467))

(assert (= (and b!3630467 res!1470139) b!3630463))

(assert (= (and b!3630463 res!1470137) b!3630465))

(assert (= (and b!3630465 res!1470134) b!3630466))

(assert (= (and b!3630466 res!1470140) b!3630462))

(assert (= (and b!3630462 res!1470135) b!3630461))

(declare-fun m!4131977 () Bool)

(assert (=> b!3630467 m!4131977))

(declare-fun m!4131979 () Bool)

(assert (=> b!3630467 m!4131979))

(assert (=> b!3630467 m!4131979))

(declare-fun m!4131981 () Bool)

(assert (=> b!3630467 m!4131981))

(assert (=> b!3630467 m!4131981))

(declare-fun m!4131983 () Bool)

(assert (=> b!3630467 m!4131983))

(assert (=> b!3630460 m!4131009))

(assert (=> b!3630460 m!4130233))

(declare-fun m!4131985 () Bool)

(assert (=> b!3630460 m!4131985))

(declare-fun m!4131987 () Bool)

(assert (=> b!3630460 m!4131987))

(declare-fun m!4131989 () Bool)

(assert (=> b!3630460 m!4131989))

(declare-fun m!4131991 () Bool)

(assert (=> b!3630460 m!4131991))

(assert (=> b!3630460 m!4130233))

(assert (=> b!3630460 m!4131989))

(declare-fun m!4131993 () Bool)

(assert (=> b!3630460 m!4131993))

(assert (=> b!3630460 m!4131989))

(declare-fun m!4131995 () Bool)

(assert (=> b!3630460 m!4131995))

(assert (=> b!3630460 m!4131989))

(declare-fun m!4131997 () Bool)

(assert (=> b!3630460 m!4131997))

(assert (=> b!3630460 m!4131009))

(declare-fun m!4131999 () Bool)

(assert (=> d!1067899 m!4131999))

(declare-fun m!4132001 () Bool)

(assert (=> d!1067899 m!4132001))

(declare-fun m!4132003 () Bool)

(assert (=> d!1067899 m!4132003))

(assert (=> d!1067899 m!4131207))

(assert (=> b!3630461 m!4131977))

(declare-fun m!4132005 () Bool)

(assert (=> b!3630461 m!4132005))

(assert (=> b!3630463 m!4131977))

(assert (=> b!3630463 m!4131979))

(assert (=> b!3630463 m!4131979))

(assert (=> b!3630463 m!4131981))

(assert (=> b!3630463 m!4131981))

(declare-fun m!4132007 () Bool)

(assert (=> b!3630463 m!4132007))

(assert (=> b!3630466 m!4131977))

(assert (=> b!3630465 m!4131977))

(declare-fun m!4132009 () Bool)

(assert (=> b!3630465 m!4132009))

(assert (=> b!3630465 m!4130233))

(assert (=> b!3630468 m!4131009))

(assert (=> b!3630468 m!4130233))

(assert (=> b!3630468 m!4131009))

(assert (=> b!3630468 m!4130233))

(assert (=> b!3630468 m!4131985))

(declare-fun m!4132011 () Bool)

(assert (=> b!3630468 m!4132011))

(assert (=> b!3630462 m!4131977))

(declare-fun m!4132013 () Bool)

(assert (=> b!3630462 m!4132013))

(assert (=> b!3630462 m!4132013))

(declare-fun m!4132015 () Bool)

(assert (=> b!3630462 m!4132015))

(assert (=> bm!262475 d!1067899))

(declare-fun b!3630469 () Bool)

(declare-fun e!2247267 () List!38368)

(declare-fun call!262607 () List!38368)

(assert (=> b!3630469 (= e!2247267 call!262607)))

(declare-fun call!262606 () List!38368)

(declare-fun c!628114 () Bool)

(declare-fun bm!262600 () Bool)

(declare-fun c!628115 () Bool)

(assert (=> bm!262600 (= call!262606 (usedCharacters!916 (ite c!628114 (reg!10792 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))) (ite c!628115 (regOne!21439 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))) (regTwo!21438 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33)))))))))))

(declare-fun call!262608 () List!38368)

(declare-fun bm!262601 () Bool)

(assert (=> bm!262601 (= call!262608 (usedCharacters!916 (ite c!628115 (regTwo!21439 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))) (regOne!21438 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))))))))

(declare-fun d!1067901 () Bool)

(declare-fun c!628116 () Bool)

(assert (=> d!1067901 (= c!628116 (or ((_ is EmptyExpr!10463) (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))) ((_ is EmptyLang!10463) (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33)))))))))

(declare-fun e!2247264 () List!38368)

(assert (=> d!1067901 (= (usedCharacters!916 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))) e!2247264)))

(declare-fun b!3630470 () Bool)

(declare-fun e!2247265 () List!38368)

(assert (=> b!3630470 (= e!2247264 e!2247265)))

(declare-fun c!628113 () Bool)

(assert (=> b!3630470 (= c!628113 ((_ is ElementMatch!10463) (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))))))

(declare-fun b!3630471 () Bool)

(declare-fun e!2247266 () List!38368)

(assert (=> b!3630471 (= e!2247266 call!262606)))

(declare-fun bm!262602 () Bool)

(declare-fun call!262605 () List!38368)

(assert (=> bm!262602 (= call!262605 call!262606)))

(declare-fun b!3630472 () Bool)

(assert (=> b!3630472 (= e!2247265 (Cons!38244 (c!627780 (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))) Nil!38244))))

(declare-fun b!3630473 () Bool)

(assert (=> b!3630473 (= e!2247264 Nil!38244)))

(declare-fun b!3630474 () Bool)

(assert (=> b!3630474 (= c!628114 ((_ is Star!10463) (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))))))

(assert (=> b!3630474 (= e!2247265 e!2247266)))

(declare-fun bm!262603 () Bool)

(assert (=> bm!262603 (= call!262607 (++!9520 (ite c!628115 call!262605 call!262608) (ite c!628115 call!262608 call!262605)))))

(declare-fun b!3630475 () Bool)

(assert (=> b!3630475 (= e!2247267 call!262607)))

(declare-fun b!3630476 () Bool)

(assert (=> b!3630476 (= e!2247266 e!2247267)))

(assert (=> b!3630476 (= c!628115 ((_ is Union!10463) (ite c!627854 (reg!10792 (regex!5704 anOtherTypeRule!33)) (ite c!627855 (regOne!21439 (regex!5704 anOtherTypeRule!33)) (regTwo!21438 (regex!5704 anOtherTypeRule!33))))))))

(assert (= (and d!1067901 c!628116) b!3630473))

(assert (= (and d!1067901 (not c!628116)) b!3630470))

(assert (= (and b!3630470 c!628113) b!3630472))

(assert (= (and b!3630470 (not c!628113)) b!3630474))

(assert (= (and b!3630474 c!628114) b!3630471))

(assert (= (and b!3630474 (not c!628114)) b!3630476))

(assert (= (and b!3630476 c!628115) b!3630475))

(assert (= (and b!3630476 (not c!628115)) b!3630469))

(assert (= (or b!3630475 b!3630469) bm!262602))

(assert (= (or b!3630475 b!3630469) bm!262601))

(assert (= (or b!3630475 b!3630469) bm!262603))

(assert (= (or b!3630471 bm!262602) bm!262600))

(declare-fun m!4132017 () Bool)

(assert (=> bm!262600 m!4132017))

(declare-fun m!4132019 () Bool)

(assert (=> bm!262601 m!4132019))

(declare-fun m!4132021 () Bool)

(assert (=> bm!262603 m!4132021))

(assert (=> bm!262495 d!1067901))

(assert (=> b!3629196 d!1067397))

(declare-fun b!3630477 () Bool)

(declare-fun res!1470141 () Bool)

(declare-fun e!2247270 () Bool)

(assert (=> b!3630477 (=> res!1470141 e!2247270)))

(assert (=> b!3630477 (= res!1470141 (not ((_ is IntegerValue!17804) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))))

(declare-fun e!2247268 () Bool)

(assert (=> b!3630477 (= e!2247268 e!2247270)))

(declare-fun d!1067903 () Bool)

(declare-fun c!628117 () Bool)

(assert (=> d!1067903 (= c!628117 ((_ is IntegerValue!17802) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(declare-fun e!2247269 () Bool)

(assert (=> d!1067903 (= (inv!21 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))) e!2247269)))

(declare-fun b!3630478 () Bool)

(assert (=> b!3630478 (= e!2247269 e!2247268)))

(declare-fun c!628118 () Bool)

(assert (=> b!3630478 (= c!628118 ((_ is IntegerValue!17803) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(declare-fun b!3630479 () Bool)

(assert (=> b!3630479 (= e!2247268 (inv!17 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(declare-fun b!3630480 () Bool)

(assert (=> b!3630480 (= e!2247270 (inv!15 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(declare-fun b!3630481 () Bool)

(assert (=> b!3630481 (= e!2247269 (inv!16 (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(assert (= (and d!1067903 c!628117) b!3630481))

(assert (= (and d!1067903 (not c!628117)) b!3630478))

(assert (= (and b!3630478 c!628118) b!3630479))

(assert (= (and b!3630478 (not c!628118)) b!3630477))

(assert (= (and b!3630477 (not res!1470141)) b!3630480))

(declare-fun m!4132023 () Bool)

(assert (=> b!3630479 m!4132023))

(declare-fun m!4132025 () Bool)

(assert (=> b!3630480 m!4132025))

(declare-fun m!4132027 () Bool)

(assert (=> b!3630481 m!4132027))

(assert (=> tb!208389 d!1067903))

(declare-fun b!3630482 () Bool)

(declare-fun e!2247274 () List!38368)

(declare-fun call!262611 () List!38368)

(assert (=> b!3630482 (= e!2247274 call!262611)))

(declare-fun c!628121 () Bool)

(declare-fun c!628120 () Bool)

(declare-fun bm!262604 () Bool)

(declare-fun call!262610 () List!38368)

(assert (=> bm!262604 (= call!262610 (usedCharacters!916 (ite c!628120 (reg!10792 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) (ite c!628121 (regOne!21439 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) (regTwo!21438 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403))))))))))

(declare-fun call!262612 () List!38368)

(declare-fun bm!262605 () Bool)

(assert (=> bm!262605 (= call!262612 (usedCharacters!916 (ite c!628121 (regTwo!21439 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) (regOne!21438 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))))))))

(declare-fun d!1067905 () Bool)

(declare-fun c!628122 () Bool)

(assert (=> d!1067905 (= c!628122 (or ((_ is EmptyExpr!10463) (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) ((_ is EmptyLang!10463) (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403))))))))

(declare-fun e!2247271 () List!38368)

(assert (=> d!1067905 (= (usedCharacters!916 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) e!2247271)))

(declare-fun b!3630483 () Bool)

(declare-fun e!2247272 () List!38368)

(assert (=> b!3630483 (= e!2247271 e!2247272)))

(declare-fun c!628119 () Bool)

(assert (=> b!3630483 (= c!628119 ((_ is ElementMatch!10463) (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))))))

(declare-fun b!3630484 () Bool)

(declare-fun e!2247273 () List!38368)

(assert (=> b!3630484 (= e!2247273 call!262610)))

(declare-fun bm!262606 () Bool)

(declare-fun call!262609 () List!38368)

(assert (=> bm!262606 (= call!262609 call!262610)))

(declare-fun b!3630485 () Bool)

(assert (=> b!3630485 (= e!2247272 (Cons!38244 (c!627780 (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))) Nil!38244))))

(declare-fun b!3630486 () Bool)

(assert (=> b!3630486 (= e!2247271 Nil!38244)))

(declare-fun b!3630487 () Bool)

(assert (=> b!3630487 (= c!628120 ((_ is Star!10463) (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))))))

(assert (=> b!3630487 (= e!2247272 e!2247273)))

(declare-fun bm!262607 () Bool)

(assert (=> bm!262607 (= call!262611 (++!9520 (ite c!628121 call!262609 call!262612) (ite c!628121 call!262612 call!262609)))))

(declare-fun b!3630488 () Bool)

(assert (=> b!3630488 (= e!2247274 call!262611)))

(declare-fun b!3630489 () Bool)

(assert (=> b!3630489 (= e!2247273 e!2247274)))

(assert (=> b!3630489 (= c!628121 ((_ is Union!10463) (ite c!627838 (regTwo!21439 (regex!5704 rule!403)) (regOne!21438 (regex!5704 rule!403)))))))

(assert (= (and d!1067905 c!628122) b!3630486))

(assert (= (and d!1067905 (not c!628122)) b!3630483))

(assert (= (and b!3630483 c!628119) b!3630485))

(assert (= (and b!3630483 (not c!628119)) b!3630487))

(assert (= (and b!3630487 c!628120) b!3630484))

(assert (= (and b!3630487 (not c!628120)) b!3630489))

(assert (= (and b!3630489 c!628121) b!3630488))

(assert (= (and b!3630489 (not c!628121)) b!3630482))

(assert (= (or b!3630488 b!3630482) bm!262606))

(assert (= (or b!3630488 b!3630482) bm!262605))

(assert (= (or b!3630488 b!3630482) bm!262607))

(assert (= (or b!3630484 bm!262606) bm!262604))

(declare-fun m!4132029 () Bool)

(assert (=> bm!262604 m!4132029))

(declare-fun m!4132031 () Bool)

(assert (=> bm!262605 m!4132031))

(declare-fun m!4132033 () Bool)

(assert (=> bm!262607 m!4132033))

(assert (=> bm!262489 d!1067905))

(declare-fun bs!571619 () Bool)

(declare-fun d!1067907 () Bool)

(assert (= bs!571619 (and d!1067907 d!1067249)))

(declare-fun lambda!124263 () Int)

(assert (=> bs!571619 (= (and (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (= lambda!124263 lambda!124227))))

(declare-fun bs!571620 () Bool)

(assert (= bs!571620 (and d!1067907 d!1067659)))

(assert (=> bs!571620 (= (and (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 token!511))))) (= lambda!124263 lambda!124251))))

(declare-fun bs!571621 () Bool)

(assert (= bs!571621 (and d!1067907 d!1067715)))

(assert (=> bs!571621 (= (and (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (h!43665 rules!3307)))) (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (h!43665 rules!3307))))) (= lambda!124263 lambda!124254))))

(declare-fun bs!571622 () Bool)

(assert (= bs!571622 (and d!1067907 d!1067775)))

(assert (=> bs!571622 (= (and (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 rule!403))) (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 rule!403)))) (= lambda!124263 lambda!124258))))

(assert (=> d!1067907 true))

(assert (=> d!1067907 (< (dynLambda!16570 order!20919 (toChars!7851 (transformation!5704 anOtherTypeRule!33))) (dynLambda!16572 order!20921 lambda!124263))))

(assert (=> d!1067907 true))

(assert (=> d!1067907 (< (dynLambda!16568 order!20915 (toValue!7992 (transformation!5704 anOtherTypeRule!33))) (dynLambda!16572 order!20921 lambda!124263))))

(assert (=> d!1067907 (= (semiInverseModEq!2420 (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 anOtherTypeRule!33))) (Forall!1368 lambda!124263))))

(declare-fun bs!571623 () Bool)

(assert (= bs!571623 d!1067907))

(declare-fun m!4132035 () Bool)

(assert (=> bs!571623 m!4132035))

(assert (=> d!1067365 d!1067907))

(assert (=> b!3629390 d!1067543))

(assert (=> b!3629390 d!1067805))

(assert (=> b!3629577 d!1067729))

(assert (=> b!3629577 d!1067263))

(declare-fun b!3630490 () Bool)

(declare-fun e!2247275 () Bool)

(declare-fun tp!1108216 () Bool)

(assert (=> b!3630490 (= e!2247275 (and tp_is_empty!18009 tp!1108216))))

(assert (=> b!3629639 (= tp!1108198 e!2247275)))

(assert (= (and b!3629639 ((_ is Cons!38244) (t!294963 (t!294963 suffix!1395)))) b!3630490))

(declare-fun b!3630494 () Bool)

(declare-fun e!2247276 () Bool)

(declare-fun tp!1108218 () Bool)

(declare-fun tp!1108219 () Bool)

(assert (=> b!3630494 (= e!2247276 (and tp!1108218 tp!1108219))))

(assert (=> b!3629626 (= tp!1108179 e!2247276)))

(declare-fun b!3630491 () Bool)

(assert (=> b!3630491 (= e!2247276 tp_is_empty!18009)))

(declare-fun b!3630492 () Bool)

(declare-fun tp!1108221 () Bool)

(declare-fun tp!1108220 () Bool)

(assert (=> b!3630492 (= e!2247276 (and tp!1108221 tp!1108220))))

(declare-fun b!3630493 () Bool)

(declare-fun tp!1108217 () Bool)

(assert (=> b!3630493 (= e!2247276 tp!1108217)))

(assert (= (and b!3629626 ((_ is ElementMatch!10463) (regOne!21439 (regex!5704 rule!403)))) b!3630491))

(assert (= (and b!3629626 ((_ is Concat!16397) (regOne!21439 (regex!5704 rule!403)))) b!3630492))

(assert (= (and b!3629626 ((_ is Star!10463) (regOne!21439 (regex!5704 rule!403)))) b!3630493))

(assert (= (and b!3629626 ((_ is Union!10463) (regOne!21439 (regex!5704 rule!403)))) b!3630494))

(declare-fun b!3630498 () Bool)

(declare-fun e!2247277 () Bool)

(declare-fun tp!1108223 () Bool)

(declare-fun tp!1108224 () Bool)

(assert (=> b!3630498 (= e!2247277 (and tp!1108223 tp!1108224))))

(assert (=> b!3629626 (= tp!1108180 e!2247277)))

(declare-fun b!3630495 () Bool)

(assert (=> b!3630495 (= e!2247277 tp_is_empty!18009)))

(declare-fun b!3630496 () Bool)

(declare-fun tp!1108226 () Bool)

(declare-fun tp!1108225 () Bool)

(assert (=> b!3630496 (= e!2247277 (and tp!1108226 tp!1108225))))

(declare-fun b!3630497 () Bool)

(declare-fun tp!1108222 () Bool)

(assert (=> b!3630497 (= e!2247277 tp!1108222)))

(assert (= (and b!3629626 ((_ is ElementMatch!10463) (regTwo!21439 (regex!5704 rule!403)))) b!3630495))

(assert (= (and b!3629626 ((_ is Concat!16397) (regTwo!21439 (regex!5704 rule!403)))) b!3630496))

(assert (= (and b!3629626 ((_ is Star!10463) (regTwo!21439 (regex!5704 rule!403)))) b!3630497))

(assert (= (and b!3629626 ((_ is Union!10463) (regTwo!21439 (regex!5704 rule!403)))) b!3630498))

(declare-fun tp!1108233 () Bool)

(declare-fun b!3630507 () Bool)

(declare-fun tp!1108235 () Bool)

(declare-fun e!2247282 () Bool)

(assert (=> b!3630507 (= e!2247282 (and (inv!51663 (left!29853 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))))) tp!1108233 (inv!51663 (right!30183 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))))) tp!1108235))))

(declare-fun b!3630509 () Bool)

(declare-fun e!2247283 () Bool)

(declare-fun tp!1108234 () Bool)

(assert (=> b!3630509 (= e!2247283 tp!1108234)))

(declare-fun b!3630508 () Bool)

(declare-fun inv!51669 (IArray!23339) Bool)

(assert (=> b!3630508 (= e!2247282 (and (inv!51669 (xs!14869 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))))) e!2247283))))

(assert (=> b!3629149 (= tp!1108112 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511)))) e!2247282))))

(assert (= (and b!3629149 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))))) b!3630507))

(assert (= b!3630508 b!3630509))

(assert (= (and b!3629149 ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 token!511))) (value!183024 token!511))))) b!3630508))

(declare-fun m!4132037 () Bool)

(assert (=> b!3630507 m!4132037))

(declare-fun m!4132039 () Bool)

(assert (=> b!3630507 m!4132039))

(declare-fun m!4132041 () Bool)

(assert (=> b!3630508 m!4132041))

(assert (=> b!3629149 m!4130241))

(declare-fun b!3630513 () Bool)

(declare-fun e!2247284 () Bool)

(declare-fun tp!1108237 () Bool)

(declare-fun tp!1108238 () Bool)

(assert (=> b!3630513 (= e!2247284 (and tp!1108237 tp!1108238))))

(assert (=> b!3629638 (= tp!1108194 e!2247284)))

(declare-fun b!3630510 () Bool)

(assert (=> b!3630510 (= e!2247284 tp_is_empty!18009)))

(declare-fun b!3630511 () Bool)

(declare-fun tp!1108240 () Bool)

(declare-fun tp!1108239 () Bool)

(assert (=> b!3630511 (= e!2247284 (and tp!1108240 tp!1108239))))

(declare-fun b!3630512 () Bool)

(declare-fun tp!1108236 () Bool)

(assert (=> b!3630512 (= e!2247284 tp!1108236)))

(assert (= (and b!3629638 ((_ is ElementMatch!10463) (regOne!21439 (regex!5704 (h!43665 rules!3307))))) b!3630510))

(assert (= (and b!3629638 ((_ is Concat!16397) (regOne!21439 (regex!5704 (h!43665 rules!3307))))) b!3630511))

(assert (= (and b!3629638 ((_ is Star!10463) (regOne!21439 (regex!5704 (h!43665 rules!3307))))) b!3630512))

(assert (= (and b!3629638 ((_ is Union!10463) (regOne!21439 (regex!5704 (h!43665 rules!3307))))) b!3630513))

(declare-fun b!3630517 () Bool)

(declare-fun e!2247285 () Bool)

(declare-fun tp!1108242 () Bool)

(declare-fun tp!1108243 () Bool)

(assert (=> b!3630517 (= e!2247285 (and tp!1108242 tp!1108243))))

(assert (=> b!3629638 (= tp!1108195 e!2247285)))

(declare-fun b!3630514 () Bool)

(assert (=> b!3630514 (= e!2247285 tp_is_empty!18009)))

(declare-fun b!3630515 () Bool)

(declare-fun tp!1108245 () Bool)

(declare-fun tp!1108244 () Bool)

(assert (=> b!3630515 (= e!2247285 (and tp!1108245 tp!1108244))))

(declare-fun b!3630516 () Bool)

(declare-fun tp!1108241 () Bool)

(assert (=> b!3630516 (= e!2247285 tp!1108241)))

(assert (= (and b!3629638 ((_ is ElementMatch!10463) (regTwo!21439 (regex!5704 (h!43665 rules!3307))))) b!3630514))

(assert (= (and b!3629638 ((_ is Concat!16397) (regTwo!21439 (regex!5704 (h!43665 rules!3307))))) b!3630515))

(assert (= (and b!3629638 ((_ is Star!10463) (regTwo!21439 (regex!5704 (h!43665 rules!3307))))) b!3630516))

(assert (= (and b!3629638 ((_ is Union!10463) (regTwo!21439 (regex!5704 (h!43665 rules!3307))))) b!3630517))

(declare-fun b!3630521 () Bool)

(declare-fun e!2247286 () Bool)

(declare-fun tp!1108247 () Bool)

(declare-fun tp!1108248 () Bool)

(assert (=> b!3630521 (= e!2247286 (and tp!1108247 tp!1108248))))

(assert (=> b!3629624 (= tp!1108182 e!2247286)))

(declare-fun b!3630518 () Bool)

(assert (=> b!3630518 (= e!2247286 tp_is_empty!18009)))

(declare-fun b!3630519 () Bool)

(declare-fun tp!1108250 () Bool)

(declare-fun tp!1108249 () Bool)

(assert (=> b!3630519 (= e!2247286 (and tp!1108250 tp!1108249))))

(declare-fun b!3630520 () Bool)

(declare-fun tp!1108246 () Bool)

(assert (=> b!3630520 (= e!2247286 tp!1108246)))

(assert (= (and b!3629624 ((_ is ElementMatch!10463) (regOne!21438 (regex!5704 rule!403)))) b!3630518))

(assert (= (and b!3629624 ((_ is Concat!16397) (regOne!21438 (regex!5704 rule!403)))) b!3630519))

(assert (= (and b!3629624 ((_ is Star!10463) (regOne!21438 (regex!5704 rule!403)))) b!3630520))

(assert (= (and b!3629624 ((_ is Union!10463) (regOne!21438 (regex!5704 rule!403)))) b!3630521))

(declare-fun b!3630525 () Bool)

(declare-fun e!2247287 () Bool)

(declare-fun tp!1108252 () Bool)

(declare-fun tp!1108253 () Bool)

(assert (=> b!3630525 (= e!2247287 (and tp!1108252 tp!1108253))))

(assert (=> b!3629624 (= tp!1108181 e!2247287)))

(declare-fun b!3630522 () Bool)

(assert (=> b!3630522 (= e!2247287 tp_is_empty!18009)))

(declare-fun b!3630523 () Bool)

(declare-fun tp!1108255 () Bool)

(declare-fun tp!1108254 () Bool)

(assert (=> b!3630523 (= e!2247287 (and tp!1108255 tp!1108254))))

(declare-fun b!3630524 () Bool)

(declare-fun tp!1108251 () Bool)

(assert (=> b!3630524 (= e!2247287 tp!1108251)))

(assert (= (and b!3629624 ((_ is ElementMatch!10463) (regTwo!21438 (regex!5704 rule!403)))) b!3630522))

(assert (= (and b!3629624 ((_ is Concat!16397) (regTwo!21438 (regex!5704 rule!403)))) b!3630523))

(assert (= (and b!3629624 ((_ is Star!10463) (regTwo!21438 (regex!5704 rule!403)))) b!3630524))

(assert (= (and b!3629624 ((_ is Union!10463) (regTwo!21438 (regex!5704 rule!403)))) b!3630525))

(declare-fun b!3630529 () Bool)

(declare-fun e!2247288 () Bool)

(declare-fun tp!1108257 () Bool)

(declare-fun tp!1108258 () Bool)

(assert (=> b!3630529 (= e!2247288 (and tp!1108257 tp!1108258))))

(assert (=> b!3629629 (= tp!1108183 e!2247288)))

(declare-fun b!3630526 () Bool)

(assert (=> b!3630526 (= e!2247288 tp_is_empty!18009)))

(declare-fun b!3630527 () Bool)

(declare-fun tp!1108260 () Bool)

(declare-fun tp!1108259 () Bool)

(assert (=> b!3630527 (= e!2247288 (and tp!1108260 tp!1108259))))

(declare-fun b!3630528 () Bool)

(declare-fun tp!1108256 () Bool)

(assert (=> b!3630528 (= e!2247288 tp!1108256)))

(assert (= (and b!3629629 ((_ is ElementMatch!10463) (reg!10792 (regex!5704 anOtherTypeRule!33)))) b!3630526))

(assert (= (and b!3629629 ((_ is Concat!16397) (reg!10792 (regex!5704 anOtherTypeRule!33)))) b!3630527))

(assert (= (and b!3629629 ((_ is Star!10463) (reg!10792 (regex!5704 anOtherTypeRule!33)))) b!3630528))

(assert (= (and b!3629629 ((_ is Union!10463) (reg!10792 (regex!5704 anOtherTypeRule!33)))) b!3630529))

(declare-fun b!3630533 () Bool)

(declare-fun e!2247289 () Bool)

(declare-fun tp!1108262 () Bool)

(declare-fun tp!1108263 () Bool)

(assert (=> b!3630533 (= e!2247289 (and tp!1108262 tp!1108263))))

(assert (=> b!3629628 (= tp!1108187 e!2247289)))

(declare-fun b!3630530 () Bool)

(assert (=> b!3630530 (= e!2247289 tp_is_empty!18009)))

(declare-fun b!3630531 () Bool)

(declare-fun tp!1108265 () Bool)

(declare-fun tp!1108264 () Bool)

(assert (=> b!3630531 (= e!2247289 (and tp!1108265 tp!1108264))))

(declare-fun b!3630532 () Bool)

(declare-fun tp!1108261 () Bool)

(assert (=> b!3630532 (= e!2247289 tp!1108261)))

(assert (= (and b!3629628 ((_ is ElementMatch!10463) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) b!3630530))

(assert (= (and b!3629628 ((_ is Concat!16397) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) b!3630531))

(assert (= (and b!3629628 ((_ is Star!10463) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) b!3630532))

(assert (= (and b!3629628 ((_ is Union!10463) (regOne!21438 (regex!5704 anOtherTypeRule!33)))) b!3630533))

(declare-fun b!3630537 () Bool)

(declare-fun e!2247290 () Bool)

(declare-fun tp!1108267 () Bool)

(declare-fun tp!1108268 () Bool)

(assert (=> b!3630537 (= e!2247290 (and tp!1108267 tp!1108268))))

(assert (=> b!3629628 (= tp!1108186 e!2247290)))

(declare-fun b!3630534 () Bool)

(assert (=> b!3630534 (= e!2247290 tp_is_empty!18009)))

(declare-fun b!3630535 () Bool)

(declare-fun tp!1108270 () Bool)

(declare-fun tp!1108269 () Bool)

(assert (=> b!3630535 (= e!2247290 (and tp!1108270 tp!1108269))))

(declare-fun b!3630536 () Bool)

(declare-fun tp!1108266 () Bool)

(assert (=> b!3630536 (= e!2247290 tp!1108266)))

(assert (= (and b!3629628 ((_ is ElementMatch!10463) (regTwo!21438 (regex!5704 anOtherTypeRule!33)))) b!3630534))

(assert (= (and b!3629628 ((_ is Concat!16397) (regTwo!21438 (regex!5704 anOtherTypeRule!33)))) b!3630535))

(assert (= (and b!3629628 ((_ is Star!10463) (regTwo!21438 (regex!5704 anOtherTypeRule!33)))) b!3630536))

(assert (= (and b!3629628 ((_ is Union!10463) (regTwo!21438 (regex!5704 anOtherTypeRule!33)))) b!3630537))

(declare-fun b!3630541 () Bool)

(declare-fun e!2247291 () Bool)

(declare-fun tp!1108272 () Bool)

(declare-fun tp!1108273 () Bool)

(assert (=> b!3630541 (= e!2247291 (and tp!1108272 tp!1108273))))

(assert (=> b!3629633 (= tp!1108188 e!2247291)))

(declare-fun b!3630538 () Bool)

(assert (=> b!3630538 (= e!2247291 tp_is_empty!18009)))

(declare-fun b!3630539 () Bool)

(declare-fun tp!1108275 () Bool)

(declare-fun tp!1108274 () Bool)

(assert (=> b!3630539 (= e!2247291 (and tp!1108275 tp!1108274))))

(declare-fun b!3630540 () Bool)

(declare-fun tp!1108271 () Bool)

(assert (=> b!3630540 (= e!2247291 tp!1108271)))

(assert (= (and b!3629633 ((_ is ElementMatch!10463) (reg!10792 (regex!5704 (rule!8474 token!511))))) b!3630538))

(assert (= (and b!3629633 ((_ is Concat!16397) (reg!10792 (regex!5704 (rule!8474 token!511))))) b!3630539))

(assert (= (and b!3629633 ((_ is Star!10463) (reg!10792 (regex!5704 (rule!8474 token!511))))) b!3630540))

(assert (= (and b!3629633 ((_ is Union!10463) (reg!10792 (regex!5704 (rule!8474 token!511))))) b!3630541))

(declare-fun b!3630545 () Bool)

(declare-fun e!2247292 () Bool)

(declare-fun tp!1108277 () Bool)

(declare-fun tp!1108278 () Bool)

(assert (=> b!3630545 (= e!2247292 (and tp!1108277 tp!1108278))))

(assert (=> b!3629630 (= tp!1108184 e!2247292)))

(declare-fun b!3630542 () Bool)

(assert (=> b!3630542 (= e!2247292 tp_is_empty!18009)))

(declare-fun b!3630543 () Bool)

(declare-fun tp!1108280 () Bool)

(declare-fun tp!1108279 () Bool)

(assert (=> b!3630543 (= e!2247292 (and tp!1108280 tp!1108279))))

(declare-fun b!3630544 () Bool)

(declare-fun tp!1108276 () Bool)

(assert (=> b!3630544 (= e!2247292 tp!1108276)))

(assert (= (and b!3629630 ((_ is ElementMatch!10463) (regOne!21439 (regex!5704 anOtherTypeRule!33)))) b!3630542))

(assert (= (and b!3629630 ((_ is Concat!16397) (regOne!21439 (regex!5704 anOtherTypeRule!33)))) b!3630543))

(assert (= (and b!3629630 ((_ is Star!10463) (regOne!21439 (regex!5704 anOtherTypeRule!33)))) b!3630544))

(assert (= (and b!3629630 ((_ is Union!10463) (regOne!21439 (regex!5704 anOtherTypeRule!33)))) b!3630545))

(declare-fun b!3630549 () Bool)

(declare-fun e!2247293 () Bool)

(declare-fun tp!1108282 () Bool)

(declare-fun tp!1108283 () Bool)

(assert (=> b!3630549 (= e!2247293 (and tp!1108282 tp!1108283))))

(assert (=> b!3629630 (= tp!1108185 e!2247293)))

(declare-fun b!3630546 () Bool)

(assert (=> b!3630546 (= e!2247293 tp_is_empty!18009)))

(declare-fun b!3630547 () Bool)

(declare-fun tp!1108285 () Bool)

(declare-fun tp!1108284 () Bool)

(assert (=> b!3630547 (= e!2247293 (and tp!1108285 tp!1108284))))

(declare-fun b!3630548 () Bool)

(declare-fun tp!1108281 () Bool)

(assert (=> b!3630548 (= e!2247293 tp!1108281)))

(assert (= (and b!3629630 ((_ is ElementMatch!10463) (regTwo!21439 (regex!5704 anOtherTypeRule!33)))) b!3630546))

(assert (= (and b!3629630 ((_ is Concat!16397) (regTwo!21439 (regex!5704 anOtherTypeRule!33)))) b!3630547))

(assert (= (and b!3629630 ((_ is Star!10463) (regTwo!21439 (regex!5704 anOtherTypeRule!33)))) b!3630548))

(assert (= (and b!3629630 ((_ is Union!10463) (regTwo!21439 (regex!5704 anOtherTypeRule!33)))) b!3630549))

(declare-fun b!3630553 () Bool)

(declare-fun e!2247294 () Bool)

(declare-fun tp!1108287 () Bool)

(declare-fun tp!1108288 () Bool)

(assert (=> b!3630553 (= e!2247294 (and tp!1108287 tp!1108288))))

(assert (=> b!3629634 (= tp!1108189 e!2247294)))

(declare-fun b!3630550 () Bool)

(assert (=> b!3630550 (= e!2247294 tp_is_empty!18009)))

(declare-fun b!3630551 () Bool)

(declare-fun tp!1108290 () Bool)

(declare-fun tp!1108289 () Bool)

(assert (=> b!3630551 (= e!2247294 (and tp!1108290 tp!1108289))))

(declare-fun b!3630552 () Bool)

(declare-fun tp!1108286 () Bool)

(assert (=> b!3630552 (= e!2247294 tp!1108286)))

(assert (= (and b!3629634 ((_ is ElementMatch!10463) (regOne!21439 (regex!5704 (rule!8474 token!511))))) b!3630550))

(assert (= (and b!3629634 ((_ is Concat!16397) (regOne!21439 (regex!5704 (rule!8474 token!511))))) b!3630551))

(assert (= (and b!3629634 ((_ is Star!10463) (regOne!21439 (regex!5704 (rule!8474 token!511))))) b!3630552))

(assert (= (and b!3629634 ((_ is Union!10463) (regOne!21439 (regex!5704 (rule!8474 token!511))))) b!3630553))

(declare-fun b!3630557 () Bool)

(declare-fun e!2247295 () Bool)

(declare-fun tp!1108292 () Bool)

(declare-fun tp!1108293 () Bool)

(assert (=> b!3630557 (= e!2247295 (and tp!1108292 tp!1108293))))

(assert (=> b!3629634 (= tp!1108190 e!2247295)))

(declare-fun b!3630554 () Bool)

(assert (=> b!3630554 (= e!2247295 tp_is_empty!18009)))

(declare-fun b!3630555 () Bool)

(declare-fun tp!1108295 () Bool)

(declare-fun tp!1108294 () Bool)

(assert (=> b!3630555 (= e!2247295 (and tp!1108295 tp!1108294))))

(declare-fun b!3630556 () Bool)

(declare-fun tp!1108291 () Bool)

(assert (=> b!3630556 (= e!2247295 tp!1108291)))

(assert (= (and b!3629634 ((_ is ElementMatch!10463) (regTwo!21439 (regex!5704 (rule!8474 token!511))))) b!3630554))

(assert (= (and b!3629634 ((_ is Concat!16397) (regTwo!21439 (regex!5704 (rule!8474 token!511))))) b!3630555))

(assert (= (and b!3629634 ((_ is Star!10463) (regTwo!21439 (regex!5704 (rule!8474 token!511))))) b!3630556))

(assert (= (and b!3629634 ((_ is Union!10463) (regTwo!21439 (regex!5704 (rule!8474 token!511))))) b!3630557))

(declare-fun b!3630561 () Bool)

(declare-fun e!2247296 () Bool)

(declare-fun tp!1108297 () Bool)

(declare-fun tp!1108298 () Bool)

(assert (=> b!3630561 (= e!2247296 (and tp!1108297 tp!1108298))))

(assert (=> b!3629625 (= tp!1108178 e!2247296)))

(declare-fun b!3630558 () Bool)

(assert (=> b!3630558 (= e!2247296 tp_is_empty!18009)))

(declare-fun b!3630559 () Bool)

(declare-fun tp!1108300 () Bool)

(declare-fun tp!1108299 () Bool)

(assert (=> b!3630559 (= e!2247296 (and tp!1108300 tp!1108299))))

(declare-fun b!3630560 () Bool)

(declare-fun tp!1108296 () Bool)

(assert (=> b!3630560 (= e!2247296 tp!1108296)))

(assert (= (and b!3629625 ((_ is ElementMatch!10463) (reg!10792 (regex!5704 rule!403)))) b!3630558))

(assert (= (and b!3629625 ((_ is Concat!16397) (reg!10792 (regex!5704 rule!403)))) b!3630559))

(assert (= (and b!3629625 ((_ is Star!10463) (reg!10792 (regex!5704 rule!403)))) b!3630560))

(assert (= (and b!3629625 ((_ is Union!10463) (reg!10792 (regex!5704 rule!403)))) b!3630561))

(declare-fun b!3630564 () Bool)

(declare-fun b_free!94921 () Bool)

(declare-fun b_next!95625 () Bool)

(assert (=> b!3630564 (= b_free!94921 (not b_next!95625))))

(declare-fun t!295173 () Bool)

(declare-fun tb!208557 () Bool)

(assert (=> (and b!3630564 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295173) tb!208557))

(declare-fun result!254076 () Bool)

(assert (= result!254076 result!254034))

(assert (=> d!1067623 t!295173))

(declare-fun t!295175 () Bool)

(declare-fun tb!208559 () Bool)

(assert (=> (and b!3630564 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295175) tb!208559))

(declare-fun result!254078 () Bool)

(assert (= result!254078 result!254024))

(assert (=> d!1067567 t!295175))

(declare-fun t!295177 () Bool)

(declare-fun tb!208561 () Bool)

(assert (=> (and b!3630564 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295177) tb!208561))

(declare-fun result!254080 () Bool)

(assert (= result!254080 result!253884))

(assert (=> d!1067231 t!295177))

(assert (=> d!1067257 t!295177))

(assert (=> d!1067249 t!295177))

(declare-fun tb!208563 () Bool)

(declare-fun t!295179 () Bool)

(assert (=> (and b!3630564 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295179) tb!208563))

(declare-fun result!254082 () Bool)

(assert (= result!254082 result!253894))

(assert (=> d!1067231 t!295179))

(declare-fun b_and!266351 () Bool)

(declare-fun tp!1108304 () Bool)

(assert (=> b!3630564 (= tp!1108304 (and (=> t!295173 result!254076) (=> t!295179 result!254082) (=> t!295177 result!254080) (=> t!295175 result!254078) b_and!266351))))

(declare-fun b_free!94923 () Bool)

(declare-fun b_next!95627 () Bool)

(assert (=> b!3630564 (= b_free!94923 (not b_next!95627))))

(declare-fun tb!208565 () Bool)

(declare-fun t!295181 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295181) tb!208565))

(declare-fun result!254084 () Bool)

(assert (= result!254084 result!253968))

(assert (=> d!1067335 t!295181))

(declare-fun tb!208567 () Bool)

(declare-fun t!295183 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))))) t!295183) tb!208567))

(declare-fun result!254086 () Bool)

(assert (= result!254086 result!253902))

(assert (=> d!1067249 t!295183))

(declare-fun t!295185 () Bool)

(declare-fun tb!208569 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255339)))))) t!295185) tb!208569))

(declare-fun result!254088 () Bool)

(assert (= result!254088 result!253994))

(assert (=> d!1067391 t!295185))

(declare-fun tb!208571 () Bool)

(declare-fun t!295187 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 (get!12499 lt!1255514)))))) t!295187) tb!208571))

(declare-fun result!254090 () Bool)

(assert (= result!254090 result!254004))

(assert (=> d!1067407 t!295187))

(declare-fun t!295189 () Bool)

(declare-fun tb!208573 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) t!295189) tb!208573))

(declare-fun result!254092 () Bool)

(assert (= result!254092 result!253910))

(assert (=> b!3629336 t!295189))

(declare-fun tb!208575 () Bool)

(declare-fun t!295191 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 token!511)))) t!295191) tb!208575))

(declare-fun result!254094 () Bool)

(assert (= result!254094 result!253864))

(assert (=> d!1067201 t!295191))

(declare-fun tb!208577 () Bool)

(declare-fun t!295193 () Bool)

(assert (=> (and b!3630564 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 lt!1255511)))) t!295193) tb!208577))

(declare-fun result!254096 () Bool)

(assert (= result!254096 result!254014))

(assert (=> d!1067441 t!295193))

(assert (=> b!3629606 t!295191))

(declare-fun b_and!266353 () Bool)

(declare-fun tp!1108301 () Bool)

(assert (=> b!3630564 (= tp!1108301 (and (=> t!295191 result!254094) (=> t!295193 result!254096) (=> t!295185 result!254088) (=> t!295187 result!254090) (=> t!295181 result!254084) (=> t!295183 result!254086) (=> t!295189 result!254092) b_and!266353))))

(declare-fun e!2247300 () Bool)

(assert (=> b!3630564 (= e!2247300 (and tp!1108304 tp!1108301))))

(declare-fun b!3630563 () Bool)

(declare-fun e!2247299 () Bool)

(declare-fun tp!1108303 () Bool)

(assert (=> b!3630563 (= e!2247299 (and tp!1108303 (inv!51656 (tag!6432 (h!43665 (t!294964 (t!294964 rules!3307))))) (inv!51659 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) e!2247300))))

(declare-fun b!3630562 () Bool)

(declare-fun e!2247297 () Bool)

(declare-fun tp!1108302 () Bool)

(assert (=> b!3630562 (= e!2247297 (and e!2247299 tp!1108302))))

(assert (=> b!3629648 (= tp!1108208 e!2247297)))

(assert (= b!3630563 b!3630564))

(assert (= b!3630562 b!3630563))

(assert (= (and b!3629648 ((_ is Cons!38245) (t!294964 (t!294964 rules!3307)))) b!3630562))

(declare-fun m!4132043 () Bool)

(assert (=> b!3630563 m!4132043))

(declare-fun m!4132045 () Bool)

(assert (=> b!3630563 m!4132045))

(declare-fun e!2247301 () Bool)

(declare-fun tp!1108307 () Bool)

(declare-fun tp!1108305 () Bool)

(declare-fun b!3630565 () Bool)

(assert (=> b!3630565 (= e!2247301 (and (inv!51663 (left!29853 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) tp!1108305 (inv!51663 (right!30183 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) tp!1108307))))

(declare-fun b!3630567 () Bool)

(declare-fun e!2247302 () Bool)

(declare-fun tp!1108306 () Bool)

(assert (=> b!3630567 (= e!2247302 tp!1108306)))

(declare-fun b!3630566 () Bool)

(assert (=> b!3630566 (= e!2247301 (and (inv!51669 (xs!14869 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) e!2247302))))

(assert (=> b!3629338 (= tp!1108114 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264))))) e!2247301))))

(assert (= (and b!3629338 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) b!3630565))

(assert (= b!3630566 b!3630567))

(assert (= (and b!3629338 ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))) (value!183024 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) b!3630566))

(declare-fun m!4132047 () Bool)

(assert (=> b!3630565 m!4132047))

(declare-fun m!4132049 () Bool)

(assert (=> b!3630565 m!4132049))

(declare-fun m!4132051 () Bool)

(assert (=> b!3630566 m!4132051))

(assert (=> b!3629338 m!4130417))

(declare-fun e!2247303 () Bool)

(declare-fun tp!1108308 () Bool)

(declare-fun tp!1108310 () Bool)

(declare-fun b!3630568 () Bool)

(assert (=> b!3630568 (= e!2247303 (and (inv!51663 (left!29853 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))) tp!1108308 (inv!51663 (right!30183 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))) tp!1108310))))

(declare-fun b!3630570 () Bool)

(declare-fun e!2247304 () Bool)

(declare-fun tp!1108309 () Bool)

(assert (=> b!3630570 (= e!2247304 tp!1108309)))

(declare-fun b!3630569 () Bool)

(assert (=> b!3630569 (= e!2247303 (and (inv!51669 (xs!14869 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))) e!2247304))))

(assert (=> b!3629331 (= tp!1108113 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271)))) e!2247303))))

(assert (= (and b!3629331 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))) b!3630568))

(assert (= b!3630569 b!3630570))

(assert (= (and b!3629331 ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))))) b!3630569))

(declare-fun m!4132053 () Bool)

(assert (=> b!3630568 m!4132053))

(declare-fun m!4132055 () Bool)

(assert (=> b!3630568 m!4132055))

(declare-fun m!4132057 () Bool)

(assert (=> b!3630569 m!4132057))

(assert (=> b!3629331 m!4130405))

(declare-fun b!3630574 () Bool)

(declare-fun e!2247305 () Bool)

(declare-fun tp!1108312 () Bool)

(declare-fun tp!1108313 () Bool)

(assert (=> b!3630574 (= e!2247305 (and tp!1108312 tp!1108313))))

(assert (=> b!3629632 (= tp!1108192 e!2247305)))

(declare-fun b!3630571 () Bool)

(assert (=> b!3630571 (= e!2247305 tp_is_empty!18009)))

(declare-fun b!3630572 () Bool)

(declare-fun tp!1108315 () Bool)

(declare-fun tp!1108314 () Bool)

(assert (=> b!3630572 (= e!2247305 (and tp!1108315 tp!1108314))))

(declare-fun b!3630573 () Bool)

(declare-fun tp!1108311 () Bool)

(assert (=> b!3630573 (= e!2247305 tp!1108311)))

(assert (= (and b!3629632 ((_ is ElementMatch!10463) (regOne!21438 (regex!5704 (rule!8474 token!511))))) b!3630571))

(assert (= (and b!3629632 ((_ is Concat!16397) (regOne!21438 (regex!5704 (rule!8474 token!511))))) b!3630572))

(assert (= (and b!3629632 ((_ is Star!10463) (regOne!21438 (regex!5704 (rule!8474 token!511))))) b!3630573))

(assert (= (and b!3629632 ((_ is Union!10463) (regOne!21438 (regex!5704 (rule!8474 token!511))))) b!3630574))

(declare-fun b!3630578 () Bool)

(declare-fun e!2247306 () Bool)

(declare-fun tp!1108317 () Bool)

(declare-fun tp!1108318 () Bool)

(assert (=> b!3630578 (= e!2247306 (and tp!1108317 tp!1108318))))

(assert (=> b!3629632 (= tp!1108191 e!2247306)))

(declare-fun b!3630575 () Bool)

(assert (=> b!3630575 (= e!2247306 tp_is_empty!18009)))

(declare-fun b!3630576 () Bool)

(declare-fun tp!1108320 () Bool)

(declare-fun tp!1108319 () Bool)

(assert (=> b!3630576 (= e!2247306 (and tp!1108320 tp!1108319))))

(declare-fun b!3630577 () Bool)

(declare-fun tp!1108316 () Bool)

(assert (=> b!3630577 (= e!2247306 tp!1108316)))

(assert (= (and b!3629632 ((_ is ElementMatch!10463) (regTwo!21438 (regex!5704 (rule!8474 token!511))))) b!3630575))

(assert (= (and b!3629632 ((_ is Concat!16397) (regTwo!21438 (regex!5704 (rule!8474 token!511))))) b!3630576))

(assert (= (and b!3629632 ((_ is Star!10463) (regTwo!21438 (regex!5704 (rule!8474 token!511))))) b!3630577))

(assert (= (and b!3629632 ((_ is Union!10463) (regTwo!21438 (regex!5704 (rule!8474 token!511))))) b!3630578))

(declare-fun b!3630582 () Bool)

(declare-fun e!2247307 () Bool)

(declare-fun tp!1108322 () Bool)

(declare-fun tp!1108323 () Bool)

(assert (=> b!3630582 (= e!2247307 (and tp!1108322 tp!1108323))))

(assert (=> b!3629637 (= tp!1108193 e!2247307)))

(declare-fun b!3630579 () Bool)

(assert (=> b!3630579 (= e!2247307 tp_is_empty!18009)))

(declare-fun b!3630580 () Bool)

(declare-fun tp!1108325 () Bool)

(declare-fun tp!1108324 () Bool)

(assert (=> b!3630580 (= e!2247307 (and tp!1108325 tp!1108324))))

(declare-fun b!3630581 () Bool)

(declare-fun tp!1108321 () Bool)

(assert (=> b!3630581 (= e!2247307 tp!1108321)))

(assert (= (and b!3629637 ((_ is ElementMatch!10463) (reg!10792 (regex!5704 (h!43665 rules!3307))))) b!3630579))

(assert (= (and b!3629637 ((_ is Concat!16397) (reg!10792 (regex!5704 (h!43665 rules!3307))))) b!3630580))

(assert (= (and b!3629637 ((_ is Star!10463) (reg!10792 (regex!5704 (h!43665 rules!3307))))) b!3630581))

(assert (= (and b!3629637 ((_ is Union!10463) (reg!10792 (regex!5704 (h!43665 rules!3307))))) b!3630582))

(declare-fun b!3630583 () Bool)

(declare-fun e!2247308 () Bool)

(declare-fun tp!1108326 () Bool)

(assert (=> b!3630583 (= e!2247308 (and tp_is_empty!18009 tp!1108326))))

(assert (=> b!3629612 (= tp!1108167 e!2247308)))

(assert (= (and b!3629612 ((_ is Cons!38244) (t!294963 (originalCharacters!6418 token!511)))) b!3630583))

(declare-fun b!3630587 () Bool)

(declare-fun e!2247309 () Bool)

(declare-fun tp!1108328 () Bool)

(declare-fun tp!1108329 () Bool)

(assert (=> b!3630587 (= e!2247309 (and tp!1108328 tp!1108329))))

(assert (=> b!3629636 (= tp!1108197 e!2247309)))

(declare-fun b!3630584 () Bool)

(assert (=> b!3630584 (= e!2247309 tp_is_empty!18009)))

(declare-fun b!3630585 () Bool)

(declare-fun tp!1108331 () Bool)

(declare-fun tp!1108330 () Bool)

(assert (=> b!3630585 (= e!2247309 (and tp!1108331 tp!1108330))))

(declare-fun b!3630586 () Bool)

(declare-fun tp!1108327 () Bool)

(assert (=> b!3630586 (= e!2247309 tp!1108327)))

(assert (= (and b!3629636 ((_ is ElementMatch!10463) (regOne!21438 (regex!5704 (h!43665 rules!3307))))) b!3630584))

(assert (= (and b!3629636 ((_ is Concat!16397) (regOne!21438 (regex!5704 (h!43665 rules!3307))))) b!3630585))

(assert (= (and b!3629636 ((_ is Star!10463) (regOne!21438 (regex!5704 (h!43665 rules!3307))))) b!3630586))

(assert (= (and b!3629636 ((_ is Union!10463) (regOne!21438 (regex!5704 (h!43665 rules!3307))))) b!3630587))

(declare-fun b!3630591 () Bool)

(declare-fun e!2247310 () Bool)

(declare-fun tp!1108333 () Bool)

(declare-fun tp!1108334 () Bool)

(assert (=> b!3630591 (= e!2247310 (and tp!1108333 tp!1108334))))

(assert (=> b!3629636 (= tp!1108196 e!2247310)))

(declare-fun b!3630588 () Bool)

(assert (=> b!3630588 (= e!2247310 tp_is_empty!18009)))

(declare-fun b!3630589 () Bool)

(declare-fun tp!1108336 () Bool)

(declare-fun tp!1108335 () Bool)

(assert (=> b!3630589 (= e!2247310 (and tp!1108336 tp!1108335))))

(declare-fun b!3630590 () Bool)

(declare-fun tp!1108332 () Bool)

(assert (=> b!3630590 (= e!2247310 tp!1108332)))

(assert (= (and b!3629636 ((_ is ElementMatch!10463) (regTwo!21438 (regex!5704 (h!43665 rules!3307))))) b!3630588))

(assert (= (and b!3629636 ((_ is Concat!16397) (regTwo!21438 (regex!5704 (h!43665 rules!3307))))) b!3630589))

(assert (= (and b!3629636 ((_ is Star!10463) (regTwo!21438 (regex!5704 (h!43665 rules!3307))))) b!3630590))

(assert (= (and b!3629636 ((_ is Union!10463) (regTwo!21438 (regex!5704 (h!43665 rules!3307))))) b!3630591))

(declare-fun b!3630595 () Bool)

(declare-fun e!2247311 () Bool)

(declare-fun tp!1108338 () Bool)

(declare-fun tp!1108339 () Bool)

(assert (=> b!3630595 (= e!2247311 (and tp!1108338 tp!1108339))))

(assert (=> b!3629649 (= tp!1108209 e!2247311)))

(declare-fun b!3630592 () Bool)

(assert (=> b!3630592 (= e!2247311 tp_is_empty!18009)))

(declare-fun b!3630593 () Bool)

(declare-fun tp!1108341 () Bool)

(declare-fun tp!1108340 () Bool)

(assert (=> b!3630593 (= e!2247311 (and tp!1108341 tp!1108340))))

(declare-fun b!3630594 () Bool)

(declare-fun tp!1108337 () Bool)

(assert (=> b!3630594 (= e!2247311 tp!1108337)))

(assert (= (and b!3629649 ((_ is ElementMatch!10463) (regex!5704 (h!43665 (t!294964 rules!3307))))) b!3630592))

(assert (= (and b!3629649 ((_ is Concat!16397) (regex!5704 (h!43665 (t!294964 rules!3307))))) b!3630593))

(assert (= (and b!3629649 ((_ is Star!10463) (regex!5704 (h!43665 (t!294964 rules!3307))))) b!3630594))

(assert (= (and b!3629649 ((_ is Union!10463) (regex!5704 (h!43665 (t!294964 rules!3307))))) b!3630595))

(declare-fun b!3630596 () Bool)

(declare-fun tp!1108344 () Bool)

(declare-fun tp!1108342 () Bool)

(declare-fun e!2247312 () Bool)

(assert (=> b!3630596 (= e!2247312 (and (inv!51663 (left!29853 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))))) tp!1108342 (inv!51663 (right!30183 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))))) tp!1108344))))

(declare-fun b!3630598 () Bool)

(declare-fun e!2247313 () Bool)

(declare-fun tp!1108343 () Bool)

(assert (=> b!3630598 (= e!2247313 tp!1108343)))

(declare-fun b!3630597 () Bool)

(assert (=> b!3630597 (= e!2247312 (and (inv!51669 (xs!14869 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))))) e!2247313))))

(assert (=> b!3629542 (= tp!1108164 (and (inv!51663 (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278))))) e!2247312))))

(assert (= (and b!3629542 ((_ is Node!11667) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))))) b!3630596))

(assert (= b!3630597 b!3630598))

(assert (= (and b!3629542 ((_ is Leaf!18130) (c!627781 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (value!183024 (_1!22190 lt!1255278)))))) b!3630597))

(declare-fun m!4132059 () Bool)

(assert (=> b!3630596 m!4132059))

(declare-fun m!4132061 () Bool)

(assert (=> b!3630596 m!4132061))

(declare-fun m!4132063 () Bool)

(assert (=> b!3630597 m!4132063))

(assert (=> b!3629542 m!4130683))

(declare-fun b_lambda!107447 () Bool)

(assert (= b_lambda!107399 (or (and b!3628968 b_free!94901 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628966 b_free!94909 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628953 b_free!94897 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3629650 b_free!94917 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3630564 b_free!94921 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628978 b_free!94905 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) b_lambda!107447)))

(declare-fun b_lambda!107449 () Bool)

(assert (= b_lambda!107389 (or (and b!3628968 b_free!94901 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628966 b_free!94909 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628953 b_free!94897 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3629650 b_free!94917 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3630564 b_free!94921 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628978 b_free!94905 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) b_lambda!107449)))

(declare-fun b_lambda!107451 () Bool)

(assert (= b_lambda!107393 (or (and b!3628978 b_free!94907 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3629650 b_free!94919 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628953 b_free!94899 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3630564 b_free!94923 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628968 b_free!94903 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628966 b_free!94911 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) b_lambda!107451)))

(declare-fun b_lambda!107453 () Bool)

(assert (= b_lambda!107445 (or d!1067249 b_lambda!107453)))

(declare-fun bs!571624 () Bool)

(declare-fun d!1067909 () Bool)

(assert (= bs!571624 (and d!1067909 d!1067249)))

(assert (=> bs!571624 (= (dynLambda!16575 lambda!124227 lt!1255271) (= (list!14130 (dynLambda!16563 (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271))) (list!14130 lt!1255271)))))

(declare-fun b_lambda!107465 () Bool)

(assert (=> (not b_lambda!107465) (not bs!571624)))

(assert (=> bs!571624 t!295006))

(declare-fun b_and!266355 () Bool)

(assert (= b_and!266291 (and (=> t!295006 result!253902) b_and!266355)))

(assert (=> bs!571624 t!295080))

(declare-fun b_and!266357 () Bool)

(assert (= b_and!266295 (and (=> t!295080 result!253988) b_and!266357)))

(assert (=> bs!571624 t!295008))

(declare-fun b_and!266359 () Bool)

(assert (= b_and!266293 (and (=> t!295008 result!253904) b_and!266359)))

(assert (=> bs!571624 t!295012))

(declare-fun b_and!266361 () Bool)

(assert (= b_and!266297 (and (=> t!295012 result!253908) b_and!266361)))

(assert (=> bs!571624 t!295010))

(declare-fun b_and!266363 () Bool)

(assert (= b_and!266299 (and (=> t!295010 result!253906) b_and!266363)))

(assert (=> bs!571624 t!295183))

(declare-fun b_and!266365 () Bool)

(assert (= b_and!266353 (and (=> t!295183 result!254086) b_and!266365)))

(declare-fun b_lambda!107467 () Bool)

(assert (=> (not b_lambda!107467) (not bs!571624)))

(assert (=> bs!571624 t!295074))

(declare-fun b_and!266367 () Bool)

(assert (= b_and!266313 (and (=> t!295074 result!253982) b_and!266367)))

(assert (=> bs!571624 t!294990))

(declare-fun b_and!266369 () Bool)

(assert (= b_and!266319 (and (=> t!294990 result!253884) b_and!266369)))

(assert (=> bs!571624 t!294992))

(declare-fun b_and!266371 () Bool)

(assert (= b_and!266317 (and (=> t!294992 result!253888) b_and!266371)))

(assert (=> bs!571624 t!294994))

(declare-fun b_and!266373 () Bool)

(assert (= b_and!266311 (and (=> t!294994 result!253890) b_and!266373)))

(assert (=> bs!571624 t!295177))

(declare-fun b_and!266375 () Bool)

(assert (= b_and!266351 (and (=> t!295177 result!254080) b_and!266375)))

(assert (=> bs!571624 t!294996))

(declare-fun b_and!266377 () Bool)

(assert (= b_and!266315 (and (=> t!294996 result!253892) b_and!266377)))

(assert (=> bs!571624 m!4130399))

(assert (=> bs!571624 m!4130399))

(assert (=> bs!571624 m!4130409))

(assert (=> bs!571624 m!4130009))

(assert (=> bs!571624 m!4130409))

(assert (=> bs!571624 m!4130411))

(assert (=> d!1067873 d!1067909))

(declare-fun b_lambda!107455 () Bool)

(assert (= b_lambda!107435 (or d!1067231 b_lambda!107455)))

(declare-fun bs!571625 () Bool)

(declare-fun d!1067911 () Bool)

(assert (= bs!571625 (and d!1067911 d!1067231)))

(declare-fun res!1470142 () Bool)

(declare-fun e!2247314 () Bool)

(assert (=> bs!571625 (=> res!1470142 e!2247314)))

(assert (=> bs!571625 (= res!1470142 (not (= (list!14130 lt!1255271) (list!14130 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))))))))

(assert (=> bs!571625 (= (dynLambda!16574 lambda!124224 lt!1255271 (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278)))) e!2247314)))

(declare-fun b!3630599 () Bool)

(assert (=> b!3630599 (= e!2247314 (= (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) lt!1255271) (dynLambda!16571 (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))) (seqFromList!4253 (originalCharacters!6418 (_1!22190 lt!1255278))))))))

(assert (= (and bs!571625 (not res!1470142)) b!3630599))

(declare-fun b_lambda!107469 () Bool)

(assert (=> (not b_lambda!107469) (not b!3630599)))

(assert (=> b!3630599 t!295177))

(declare-fun b_and!266379 () Bool)

(assert (= b_and!266375 (and (=> t!295177 result!254080) b_and!266379)))

(assert (=> b!3630599 t!295074))

(declare-fun b_and!266381 () Bool)

(assert (= b_and!266367 (and (=> t!295074 result!253982) b_and!266381)))

(assert (=> b!3630599 t!294996))

(declare-fun b_and!266383 () Bool)

(assert (= b_and!266377 (and (=> t!294996 result!253892) b_and!266383)))

(assert (=> b!3630599 t!294990))

(declare-fun b_and!266385 () Bool)

(assert (= b_and!266369 (and (=> t!294990 result!253884) b_and!266385)))

(assert (=> b!3630599 t!294994))

(declare-fun b_and!266387 () Bool)

(assert (= b_and!266373 (and (=> t!294994 result!253890) b_and!266387)))

(assert (=> b!3630599 t!294992))

(declare-fun b_and!266389 () Bool)

(assert (= b_and!266371 (and (=> t!294992 result!253888) b_and!266389)))

(declare-fun b_lambda!107471 () Bool)

(assert (=> (not b_lambda!107471) (not b!3630599)))

(assert (=> b!3630599 t!295000))

(declare-fun b_and!266391 () Bool)

(assert (= b_and!266389 (and (=> t!295000 result!253896) b_and!266391)))

(assert (=> b!3630599 t!295179))

(declare-fun b_and!266393 () Bool)

(assert (= b_and!266379 (and (=> t!295179 result!254082) b_and!266393)))

(assert (=> b!3630599 t!294998))

(declare-fun b_and!266395 () Bool)

(assert (= b_and!266385 (and (=> t!294998 result!253894) b_and!266395)))

(assert (=> b!3630599 t!295004))

(declare-fun b_and!266397 () Bool)

(assert (= b_and!266383 (and (=> t!295004 result!253900) b_and!266397)))

(assert (=> b!3630599 t!295002))

(declare-fun b_and!266399 () Bool)

(assert (= b_and!266387 (and (=> t!295002 result!253898) b_and!266399)))

(assert (=> b!3630599 t!295076))

(declare-fun b_and!266401 () Bool)

(assert (= b_and!266381 (and (=> t!295076 result!253984) b_and!266401)))

(assert (=> bs!571625 m!4130009))

(assert (=> bs!571625 m!4130021))

(assert (=> bs!571625 m!4130397))

(assert (=> b!3630599 m!4130399))

(assert (=> b!3630599 m!4130021))

(assert (=> b!3630599 m!4130395))

(assert (=> d!1067589 d!1067911))

(declare-fun b_lambda!107457 () Bool)

(assert (= b_lambda!107391 (or (and b!3628968 b_free!94901 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628966 b_free!94909 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628953 b_free!94897 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3629650 b_free!94917 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3630564 b_free!94921 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628978 b_free!94905 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) b_lambda!107457)))

(declare-fun b_lambda!107459 () Bool)

(assert (= b_lambda!107419 (or (and b!3628978 b_free!94907 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3629650 b_free!94919 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628953 b_free!94899 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3630564 b_free!94923 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628968 b_free!94903 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628966 b_free!94911 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) b_lambda!107459)))

(declare-fun b_lambda!107461 () Bool)

(assert (= b_lambda!107397 (or (and b!3628978 b_free!94907 (= (toChars!7851 (transformation!5704 (rule!8474 token!511))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) (and b!3629650 b_free!94919 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) (and b!3630564 b_free!94923 (= (toChars!7851 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) (and b!3628953 b_free!94899 (= (toChars!7851 (transformation!5704 rule!403)) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) (and b!3628966 b_free!94911 (= (toChars!7851 (transformation!5704 anOtherTypeRule!33)) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) (and b!3628968 b_free!94903 (= (toChars!7851 (transformation!5704 (h!43665 rules!3307))) (toChars!7851 (transformation!5704 (rule!8474 (Token!10775 (apply!9206 (transformation!5704 (rule!8474 (_1!22190 lt!1255278))) lt!1255271) (rule!8474 (_1!22190 lt!1255278)) (size!29179 lt!1255271) lt!1255264)))))) b_lambda!107461)))

(declare-fun b_lambda!107463 () Bool)

(assert (= b_lambda!107395 (or (and b!3628968 b_free!94901 (= (toValue!7992 (transformation!5704 (h!43665 rules!3307))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628966 b_free!94909 (= (toValue!7992 (transformation!5704 anOtherTypeRule!33)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628953 b_free!94897 (= (toValue!7992 (transformation!5704 rule!403)) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3629650 b_free!94917 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 rules!3307)))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3630564 b_free!94921 (= (toValue!7992 (transformation!5704 (h!43665 (t!294964 (t!294964 rules!3307))))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) (and b!3628978 b_free!94905 (= (toValue!7992 (transformation!5704 (rule!8474 token!511))) (toValue!7992 (transformation!5704 (rule!8474 (_1!22190 lt!1255278)))))) b_lambda!107463)))

(check-sat (not b!3629725) (not bm!262583) (not d!1067891) (not d!1067389) (not b!3630105) (not d!1067721) (not b!3630561) (not b!3630457) (not d!1067907) (not b!3629993) (not b!3630582) (not b!3629872) (not b!3629927) (not b!3630140) (not b!3630090) (not b!3629976) (not d!1067393) (not b!3630468) (not b!3630147) (not b!3630321) (not b_lambda!107423) (not d!1067685) (not bm!262601) (not d!1067609) (not b!3629338) (not bm!262582) (not b!3630329) (not b_next!95615) (not bm!262588) (not b!3630396) (not b!3630535) (not d!1067547) (not bm!262595) (not d!1067475) (not bm!262586) (not b!3630096) (not d!1067807) (not b!3630461) (not b_lambda!107469) (not b!3629149) (not b!3629912) (not tb!208497) (not b!3630064) (not bm!262591) (not b!3630209) (not d!1067501) (not d!1067693) (not b!3630020) (not bm!262548) (not b!3630101) (not b!3630447) (not bm!262518) (not d!1067881) (not d!1067731) (not b!3630159) (not b!3629882) (not bm!262587) (not b!3629975) (not b!3630307) (not b!3630556) (not b!3630046) (not b!3630593) (not b_lambda!107447) (not b!3630217) (not b!3630513) (not d!1067571) (not bm!262598) (not b!3629873) (not b!3630077) (not bm!262528) (not b!3630126) (not d!1067515) (not b!3630058) (not b!3629871) (not b!3630585) (not b!3630084) (not d!1067445) (not b!3630537) (not b!3629972) (not d!1067709) (not b!3630567) (not b_lambda!107453) (not b!3630406) (not b!3630540) b_and!266363 (not d!1067593) (not d!1067553) (not b!3630328) (not b!3630557) (not b!3630460) (not bm!262521) (not b!3630306) (not d!1067499) (not b!3630539) (not b!3630543) b_and!266355 (not b_lambda!107425) (not d!1067631) (not bm!262555) (not b!3630551) (not b!3630048) (not d!1067557) (not b!3629883) (not b!3630420) (not b!3630403) (not d!1067893) (not d!1067873) (not b!3629885) (not b!3630399) (not b!3630198) (not d!1067405) (not b!3630047) (not b!3630216) (not b!3629796) (not b!3629870) (not bm!262576) (not b!3630577) (not d!1067407) (not b!3629772) b_and!266391 (not bm!262549) (not d!1067715) (not b!3629768) (not d!1067837) (not b!3630076) (not b!3629929) (not b!3630549) (not b!3630407) (not b!3629946) (not b_next!95627) (not b!3630333) (not d!1067521) (not b!3629765) (not b!3630277) (not b!3630323) (not b_lambda!107457) (not b!3630580) (not b!3630408) (not tb!208477) (not b!3630431) (not b!3629913) (not b_next!95605) (not b!3630433) (not b!3630536) (not b!3630253) (not b!3630597) (not d!1067879) (not b_next!95601) (not b!3630252) (not d!1067577) (not b!3630161) (not b!3630525) (not b!3630239) (not b!3630568) (not b!3630419) (not b!3629935) (not b_lambda!107455) (not d!1067587) (not b!3630562) (not b!3630480) (not b!3630559) (not d!1067641) (not b!3630317) (not b!3630523) (not b!3629774) (not b!3630326) (not b!3630104) (not b!3630108) (not b!3630441) (not b!3630463) (not d!1067895) b_and!266401 (not b_lambda!107459) (not b!3630397) (not b!3630060) (not b_lambda!107427) (not b!3629989) (not b!3630560) (not b!3629715) (not b!3630519) (not b!3629784) (not d!1067381) (not b!3630569) (not b!3630065) (not b!3629793) (not b!3630281) (not b!3630533) (not d!1067639) (not b!3630515) (not b!3630044) (not b!3629923) (not b!3630493) (not d!1067441) (not b!3630331) (not b!3630401) (not b!3630311) (not b!3629331) (not b_lambda!107467) (not b!3630430) (not b!3629992) (not b!3630508) (not b!3630120) (not b!3629919) (not b!3630529) (not b!3630261) (not b!3630122) (not b_next!95603) (not b!3630336) (not b!3630553) (not b!3629921) (not b!3630263) (not bm!262529) (not bs!571624) (not b!3630586) (not b!3630024) (not b!3629724) (not b!3630062) (not b!3630100) (not d!1067719) (not b!3630398) (not b!3630063) (not b!3629665) (not b!3629867) (not b!3630432) (not b!3630414) (not b!3630241) (not d!1067425) (not bm!262574) (not b!3629705) (not b!3630576) (not b_next!95607) (not bm!262559) (not d!1067765) (not b!3630520) (not b!3629945) (not d!1067395) (not b!3630517) (not b!3630532) (not b!3630507) (not d!1067605) (not b!3630456) (not b!3629767) (not b!3630570) (not b!3629722) (not b!3630334) (not b!3630589) (not b!3629868) (not b!3630148) (not bm!262575) (not b!3630492) (not b!3629750) b_and!266361 (not b!3629795) (not b!3630010) (not b!3630528) (not b!3629764) (not b!3630521) (not b!3630111) (not d!1067637) (not d!1067809) (not b!3630411) (not d!1067705) (not b!3629673) (not b!3630254) (not b!3630596) (not b!3630595) (not b_next!95621) (not b!3630028) (not b!3630097) (not bm!262603) (not d!1067545) (not d!1067391) (not b!3630467) (not d!1067785) (not b!3630051) (not b!3630255) (not d!1067443) (not b!3630215) (not b!3630496) (not tb!208487) (not b!3630591) (not b!3630594) (not d!1067775) (not b!3630555) (not d!1067429) (not b!3630106) (not b!3630498) (not b!3630587) (not b!3629676) (not b!3630511) (not b!3630466) (not b!3629658) (not b_lambda!107461) (not b!3629542) (not d!1067439) (not b!3630337) b_and!266399 (not d!1067635) (not d!1067403) (not b!3629674) (not d!1067817) (not b!3630246) (not b!3630075) (not bm!262589) (not b!3629925) (not b!3629940) (not b!3630574) (not b!3630259) (not b!3629866) (not d!1067821) (not b!3630417) (not b!3630110) (not b!3629773) (not d!1067899) (not d!1067759) (not b!3629677) (not b!3630405) (not tb!208507) (not b!3630162) (not b_lambda!107463) (not b_next!95611) (not b!3630103) (not b!3630541) (not b_next!95623) (not d!1067611) (not b!3630256) (not b!3630494) (not b!3630516) (not b!3630565) (not d!1067867) (not b!3629720) (not b!3629660) (not b!3630547) (not d!1067503) (not b!3630545) (not b!3630527) (not b!3630083) (not b!3630572) (not d!1067889) (not b!3629991) (not d!1067749) (not b!3629881) (not b!3629718) (not d!1067829) (not b!3629970) (not b!3630219) b_and!266365 (not b!3630412) (not b!3629941) (not b!3630279) (not b!3630490) (not b!3630153) (not d!1067589) (not b!3630107) (not d!1067411) (not b!3629958) (not b!3630455) (not d!1067695) (not bm!262604) (not b!3630409) (not bm!262556) (not d!1067607) (not b!3630324) (not d!1067481) (not bm!262539) (not b_lambda!107449) (not b!3630429) (not d!1067479) (not bm!262600) (not b!3630309) (not b_next!95609) (not d!1067825) (not d!1067681) (not b!3629662) (not b!3630590) (not b!3629875) (not b!3630045) b_and!266393 (not d!1067827) (not b!3630509) (not d!1067869) (not b!3630145) (not b!3629667) (not b!3630552) (not b!3630179) (not b!3630026) (not bm!262509) (not b!3630512) (not tb!208517) (not b!3630497) (not b!3630227) (not d!1067385) (not bm!262592) (not b!3630453) (not b!3630163) (not b!3630573) (not b!3630583) (not b!3630544) (not b_next!95625) (not b!3629944) (not d!1067761) (not b!3630421) (not d!1067595) (not b!3630049) b_and!266395 (not b!3630479) (not b!3629661) (not d!1067667) (not b!3630319) (not d!1067871) (not b!3630052) (not b_lambda!107451) (not d!1067627) (not b!3630423) (not b!3630548) (not bm!262607) (not b!3629675) (not b!3630320) (not bs!571625) (not b!3630563) (not b!3630218) (not b!3629726) (not b!3630465) (not d!1067659) (not d!1067883) (not b!3630022) (not b!3629968) (not d!1067833) (not d!1067591) (not d!1067437) (not b!3629659) (not b_lambda!107437) (not b!3630327) (not b!3630338) (not b_next!95613) (not b_lambda!107471) (not b!3629865) (not b!3630531) (not b!3630566) (not b!3630598) (not bm!262508) (not b!3630462) (not b!3630305) (not b!3630400) (not b!3629717) (not bm!262533) (not bm!262594) (not d!1067819) b_and!266397 (not bm!262558) (not b!3630291) (not b!3630330) (not bm!262605) (not b_lambda!107429) (not b_lambda!107433) (not b!3629652) (not b_lambda!107431) (not b!3630160) (not b!3629971) (not bm!262569) (not d!1067897) (not d!1067525) tp_is_empty!18009 b_and!266357 (not b!3630581) b_and!266359 (not b!3630240) (not b!3630282) (not b_lambda!107465) (not b!3630413) (not b!3630481) (not d!1067541) (not d!1067745) (not b!3629884) (not b!3630524) (not bm!262599) (not d!1067727) (not b!3630011) (not b!3630578) (not d!1067535) (not b!3630454))
(check-sat (not b_next!95615) b_and!266363 b_and!266355 b_and!266391 (not b_next!95627) b_and!266401 (not b_next!95603) (not b_next!95607) b_and!266361 (not b_next!95621) b_and!266399 b_and!266365 (not b_next!95613) b_and!266397 b_and!266357 b_and!266359 (not b_next!95605) (not b_next!95601) (not b_next!95611) (not b_next!95623) b_and!266393 (not b_next!95609) (not b_next!95625) b_and!266395)
