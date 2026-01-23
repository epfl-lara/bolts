; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297758 () Bool)

(assert start!297758)

(declare-fun b!3178970 () Bool)

(declare-fun b_free!83681 () Bool)

(declare-fun b_next!84385 () Bool)

(assert (=> b!3178970 (= b_free!83681 (not b_next!84385))))

(declare-fun tp!1005679 () Bool)

(declare-fun b_and!210011 () Bool)

(assert (=> b!3178970 (= tp!1005679 b_and!210011)))

(declare-fun b_free!83683 () Bool)

(declare-fun b_next!84387 () Bool)

(assert (=> b!3178970 (= b_free!83683 (not b_next!84387))))

(declare-fun tp!1005676 () Bool)

(declare-fun b_and!210013 () Bool)

(assert (=> b!3178970 (= tp!1005676 b_and!210013)))

(declare-fun b!3178972 () Bool)

(declare-fun b_free!83685 () Bool)

(declare-fun b_next!84389 () Bool)

(assert (=> b!3178972 (= b_free!83685 (not b_next!84389))))

(declare-fun tp!1005677 () Bool)

(declare-fun b_and!210015 () Bool)

(assert (=> b!3178972 (= tp!1005677 b_and!210015)))

(declare-fun b_free!83687 () Bool)

(declare-fun b_next!84391 () Bool)

(assert (=> b!3178972 (= b_free!83687 (not b_next!84391))))

(declare-fun tp!1005681 () Bool)

(declare-fun b_and!210017 () Bool)

(assert (=> b!3178972 (= tp!1005681 b_and!210017)))

(declare-fun b!3178975 () Bool)

(declare-fun b_free!83689 () Bool)

(declare-fun b_next!84393 () Bool)

(assert (=> b!3178975 (= b_free!83689 (not b_next!84393))))

(declare-fun tp!1005682 () Bool)

(declare-fun b_and!210019 () Bool)

(assert (=> b!3178975 (= tp!1005682 b_and!210019)))

(declare-fun b_free!83691 () Bool)

(declare-fun b_next!84395 () Bool)

(assert (=> b!3178975 (= b_free!83691 (not b_next!84395))))

(declare-fun tp!1005675 () Bool)

(declare-fun b_and!210021 () Bool)

(assert (=> b!3178975 (= tp!1005675 b_and!210021)))

(declare-fun tp!1005672 () Bool)

(declare-fun b!3178962 () Bool)

(declare-fun e!1980271 () Bool)

(declare-datatypes ((C!19916 0))(
  ( (C!19917 (val!12006 Int)) )
))
(declare-datatypes ((Regex!9865 0))(
  ( (ElementMatch!9865 (c!534082 C!19916)) (Concat!15201 (regOne!20242 Regex!9865) (regTwo!20242 Regex!9865)) (EmptyExpr!9865) (Star!9865 (reg!10194 Regex!9865)) (EmptyLang!9865) (Union!9865 (regOne!20243 Regex!9865) (regTwo!20243 Regex!9865)) )
))
(declare-datatypes ((List!35802 0))(
  ( (Nil!35678) (Cons!35678 (h!41098 (_ BitVec 16)) (t!234965 List!35802)) )
))
(declare-datatypes ((TokenValue!5336 0))(
  ( (FloatLiteralValue!10672 (text!37797 List!35802)) (TokenValueExt!5335 (__x!22889 Int)) (Broken!26680 (value!165955 List!35802)) (Object!5459) (End!5336) (Def!5336) (Underscore!5336) (Match!5336) (Else!5336) (Error!5336) (Case!5336) (If!5336) (Extends!5336) (Abstract!5336) (Class!5336) (Val!5336) (DelimiterValue!10672 (del!5396 List!35802)) (KeywordValue!5342 (value!165956 List!35802)) (CommentValue!10672 (value!165957 List!35802)) (WhitespaceValue!10672 (value!165958 List!35802)) (IndentationValue!5336 (value!165959 List!35802)) (String!40013) (Int32!5336) (Broken!26681 (value!165960 List!35802)) (Boolean!5337) (Unit!50099) (OperatorValue!5339 (op!5396 List!35802)) (IdentifierValue!10672 (value!165961 List!35802)) (IdentifierValue!10673 (value!165962 List!35802)) (WhitespaceValue!10673 (value!165963 List!35802)) (True!10672) (False!10672) (Broken!26682 (value!165964 List!35802)) (Broken!26683 (value!165965 List!35802)) (True!10673) (RightBrace!5336) (RightBracket!5336) (Colon!5336) (Null!5336) (Comma!5336) (LeftBracket!5336) (False!10673) (LeftBrace!5336) (ImaginaryLiteralValue!5336 (text!37798 List!35802)) (StringLiteralValue!16008 (value!165966 List!35802)) (EOFValue!5336 (value!165967 List!35802)) (IdentValue!5336 (value!165968 List!35802)) (DelimiterValue!10673 (value!165969 List!35802)) (DedentValue!5336 (value!165970 List!35802)) (NewLineValue!5336 (value!165971 List!35802)) (IntegerValue!16008 (value!165972 (_ BitVec 32)) (text!37799 List!35802)) (IntegerValue!16009 (value!165973 Int) (text!37800 List!35802)) (Times!5336) (Or!5336) (Equal!5336) (Minus!5336) (Broken!26684 (value!165974 List!35802)) (And!5336) (Div!5336) (LessEqual!5336) (Mod!5336) (Concat!15202) (Not!5336) (Plus!5336) (SpaceValue!5336 (value!165975 List!35802)) (IntegerValue!16010 (value!165976 Int) (text!37801 List!35802)) (StringLiteralValue!16009 (text!37802 List!35802)) (FloatLiteralValue!10673 (text!37803 List!35802)) (BytesLiteralValue!5336 (value!165977 List!35802)) (CommentValue!10673 (value!165978 List!35802)) (StringLiteralValue!16010 (value!165979 List!35802)) (ErrorTokenValue!5336 (msg!5397 List!35802)) )
))
(declare-datatypes ((List!35803 0))(
  ( (Nil!35679) (Cons!35679 (h!41099 C!19916) (t!234966 List!35803)) )
))
(declare-datatypes ((IArray!21179 0))(
  ( (IArray!21180 (innerList!10647 List!35803)) )
))
(declare-datatypes ((Conc!10587 0))(
  ( (Node!10587 (left!27754 Conc!10587) (right!28084 Conc!10587) (csize!21404 Int) (cheight!10798 Int)) (Leaf!16751 (xs!13705 IArray!21179) (csize!21405 Int)) (Empty!10587) )
))
(declare-datatypes ((BalanceConc!20788 0))(
  ( (BalanceConc!20789 (c!534083 Conc!10587)) )
))
(declare-datatypes ((String!40014 0))(
  ( (String!40015 (value!165980 String)) )
))
(declare-datatypes ((TokenValueInjection!10100 0))(
  ( (TokenValueInjection!10101 (toValue!7166 Int) (toChars!7025 Int)) )
))
(declare-datatypes ((Rule!10012 0))(
  ( (Rule!10013 (regex!5106 Regex!9865) (tag!5610 String!40014) (isSeparator!5106 Bool) (transformation!5106 TokenValueInjection!10100)) )
))
(declare-datatypes ((List!35804 0))(
  ( (Nil!35680) (Cons!35680 (h!41100 Rule!10012) (t!234967 List!35804)) )
))
(declare-fun rules!2135 () List!35804)

(declare-fun e!1980276 () Bool)

(declare-fun inv!48531 (String!40014) Bool)

(declare-fun inv!48534 (TokenValueInjection!10100) Bool)

(assert (=> b!3178962 (= e!1980276 (and tp!1005672 (inv!48531 (tag!5610 (h!41100 rules!2135))) (inv!48534 (transformation!5106 (h!41100 rules!2135))) e!1980271))))

(declare-fun b!3178963 () Bool)

(declare-fun res!1291644 () Bool)

(declare-fun e!1980281 () Bool)

(assert (=> b!3178963 (=> (not res!1291644) (not e!1980281))))

(declare-datatypes ((Token!9578 0))(
  ( (Token!9579 (value!165981 TokenValue!5336) (rule!7516 Rule!10012) (size!26941 Int) (originalCharacters!5820 List!35803)) )
))
(declare-datatypes ((List!35805 0))(
  ( (Nil!35681) (Cons!35681 (h!41101 Token!9578) (t!234968 List!35805)) )
))
(declare-fun tokens!494 () List!35805)

(declare-datatypes ((LexerInterface!4695 0))(
  ( (LexerInterfaceExt!4692 (__x!22890 Int)) (Lexer!4693) )
))
(declare-fun thiss!18206 () LexerInterface!4695)

(declare-datatypes ((IArray!21181 0))(
  ( (IArray!21182 (innerList!10648 List!35805)) )
))
(declare-datatypes ((Conc!10588 0))(
  ( (Node!10588 (left!27755 Conc!10588) (right!28085 Conc!10588) (csize!21406 Int) (cheight!10799 Int)) (Leaf!16752 (xs!13706 IArray!21181) (csize!21407 Int)) (Empty!10588) )
))
(declare-datatypes ((BalanceConc!20790 0))(
  ( (BalanceConc!20791 (c!534084 Conc!10588)) )
))
(declare-fun rulesProduceEachTokenIndividually!1146 (LexerInterface!4695 List!35804 BalanceConc!20790) Bool)

(declare-fun seqFromList!3291 (List!35805) BalanceConc!20790)

(assert (=> b!3178963 (= res!1291644 (rulesProduceEachTokenIndividually!1146 thiss!18206 rules!2135 (seqFromList!3291 tokens!494)))))

(declare-fun b!3178964 () Bool)

(declare-fun res!1291647 () Bool)

(assert (=> b!3178964 (=> (not res!1291647) (not e!1980281))))

(declare-fun separatorToken!241 () Token!9578)

(declare-fun rulesProduceIndividualToken!2187 (LexerInterface!4695 List!35804 Token!9578) Bool)

(assert (=> b!3178964 (= res!1291647 (rulesProduceIndividualToken!2187 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1980284 () Bool)

(declare-fun b!3178965 () Bool)

(declare-fun tp!1005680 () Bool)

(declare-fun e!1980277 () Bool)

(declare-fun inv!21 (TokenValue!5336) Bool)

(assert (=> b!3178965 (= e!1980277 (and (inv!21 (value!165981 separatorToken!241)) e!1980284 tp!1005680))))

(declare-fun b!3178966 () Bool)

(declare-fun res!1291653 () Bool)

(assert (=> b!3178966 (=> (not res!1291653) (not e!1980281))))

(declare-fun sepAndNonSepRulesDisjointChars!1300 (List!35804 List!35804) Bool)

(assert (=> b!3178966 (= res!1291653 (sepAndNonSepRulesDisjointChars!1300 rules!2135 rules!2135))))

(declare-fun b!3178967 () Bool)

(declare-fun e!1980282 () Bool)

(declare-fun tp!1005678 () Bool)

(assert (=> b!3178967 (= e!1980282 (and e!1980276 tp!1005678))))

(declare-fun b!3178968 () Bool)

(declare-fun e!1980283 () Bool)

(declare-fun e!1980275 () Bool)

(assert (=> b!3178968 (= e!1980283 e!1980275)))

(declare-fun res!1291651 () Bool)

(assert (=> b!3178968 (=> res!1291651 e!1980275)))

(declare-fun lt!1068400 () List!35803)

(declare-fun lt!1068397 () List!35803)

(declare-fun lt!1068399 () List!35803)

(assert (=> b!3178968 (= res!1291651 (or (not (= lt!1068399 lt!1068400)) (not (= lt!1068397 lt!1068400))))))

(declare-fun list!12663 (BalanceConc!20788) List!35803)

(declare-fun charsOf!3128 (Token!9578) BalanceConc!20788)

(assert (=> b!3178968 (= lt!1068400 (list!12663 (charsOf!3128 (h!41101 tokens!494))))))

(declare-fun e!1980274 () Bool)

(declare-fun e!1980278 () Bool)

(declare-fun tp!1005671 () Bool)

(declare-fun b!3178969 () Bool)

(assert (=> b!3178969 (= e!1980278 (and tp!1005671 (inv!48531 (tag!5610 (rule!7516 (h!41101 tokens!494)))) (inv!48534 (transformation!5106 (rule!7516 (h!41101 tokens!494)))) e!1980274))))

(assert (=> b!3178970 (= e!1980271 (and tp!1005679 tp!1005676))))

(declare-fun b!3178971 () Bool)

(assert (=> b!3178971 (= e!1980275 true)))

(declare-datatypes ((Unit!50100 0))(
  ( (Unit!50101) )
))
(declare-fun lt!1068401 () Unit!50100)

(declare-fun lambda!116323 () Int)

(declare-fun forallContained!1089 (List!35805 Int Token!9578) Unit!50100)

(assert (=> b!3178971 (= lt!1068401 (forallContained!1089 tokens!494 lambda!116323 (h!41101 tokens!494)))))

(assert (=> b!3178972 (= e!1980274 (and tp!1005677 tp!1005681))))

(declare-fun e!1980267 () Bool)

(declare-fun e!1980272 () Bool)

(declare-fun b!3178973 () Bool)

(declare-fun tp!1005674 () Bool)

(declare-fun inv!48535 (Token!9578) Bool)

(assert (=> b!3178973 (= e!1980272 (and (inv!48535 (h!41101 tokens!494)) e!1980267 tp!1005674))))

(declare-fun b!3178974 () Bool)

(declare-fun res!1291649 () Bool)

(assert (=> b!3178974 (=> (not res!1291649) (not e!1980281))))

(assert (=> b!3178974 (= res!1291649 (isSeparator!5106 (rule!7516 separatorToken!241)))))

(declare-fun e!1980270 () Bool)

(assert (=> b!3178975 (= e!1980270 (and tp!1005682 tp!1005675))))

(declare-fun tp!1005670 () Bool)

(declare-fun b!3178976 () Bool)

(assert (=> b!3178976 (= e!1980284 (and tp!1005670 (inv!48531 (tag!5610 (rule!7516 separatorToken!241))) (inv!48534 (transformation!5106 (rule!7516 separatorToken!241))) e!1980270))))

(declare-fun b!3178977 () Bool)

(declare-fun res!1291650 () Bool)

(assert (=> b!3178977 (=> (not res!1291650) (not e!1980281))))

(get-info :version)

(assert (=> b!3178977 (= res!1291650 (and (not ((_ is Nil!35681) tokens!494)) ((_ is Nil!35681) (t!234968 tokens!494))))))

(declare-fun res!1291648 () Bool)

(assert (=> start!297758 (=> (not res!1291648) (not e!1980281))))

(assert (=> start!297758 (= res!1291648 ((_ is Lexer!4693) thiss!18206))))

(assert (=> start!297758 e!1980281))

(assert (=> start!297758 true))

(assert (=> start!297758 e!1980282))

(assert (=> start!297758 e!1980272))

(assert (=> start!297758 (and (inv!48535 separatorToken!241) e!1980277)))

(declare-fun b!3178978 () Bool)

(declare-fun res!1291655 () Bool)

(assert (=> b!3178978 (=> (not res!1291655) (not e!1980281))))

(declare-fun isEmpty!19798 (List!35804) Bool)

(assert (=> b!3178978 (= res!1291655 (not (isEmpty!19798 rules!2135)))))

(declare-fun tp!1005673 () Bool)

(declare-fun b!3178979 () Bool)

(assert (=> b!3178979 (= e!1980267 (and (inv!21 (value!165981 (h!41101 tokens!494))) e!1980278 tp!1005673))))

(declare-fun b!3178980 () Bool)

(declare-fun res!1291643 () Bool)

(assert (=> b!3178980 (=> (not res!1291643) (not e!1980281))))

(declare-fun forall!7216 (List!35805 Int) Bool)

(assert (=> b!3178980 (= res!1291643 (forall!7216 tokens!494 lambda!116323))))

(declare-fun b!3178981 () Bool)

(declare-fun res!1291654 () Bool)

(assert (=> b!3178981 (=> res!1291654 e!1980275)))

(declare-fun isEmpty!19799 (BalanceConc!20790) Bool)

(declare-datatypes ((tuple2!35012 0))(
  ( (tuple2!35013 (_1!20640 BalanceConc!20790) (_2!20640 BalanceConc!20788)) )
))
(declare-fun lex!2035 (LexerInterface!4695 List!35804 BalanceConc!20788) tuple2!35012)

(declare-fun seqFromList!3292 (List!35803) BalanceConc!20788)

(assert (=> b!3178981 (= res!1291654 (isEmpty!19799 (_1!20640 (lex!2035 thiss!18206 rules!2135 (seqFromList!3292 lt!1068400)))))))

(declare-fun b!3178982 () Bool)

(declare-fun res!1291645 () Bool)

(assert (=> b!3178982 (=> (not res!1291645) (not e!1980281))))

(declare-fun rulesInvariant!4092 (LexerInterface!4695 List!35804) Bool)

(assert (=> b!3178982 (= res!1291645 (rulesInvariant!4092 thiss!18206 rules!2135))))

(declare-fun b!3178983 () Bool)

(declare-fun res!1291652 () Bool)

(assert (=> b!3178983 (=> res!1291652 e!1980275)))

(assert (=> b!3178983 (= res!1291652 (not (rulesProduceIndividualToken!2187 thiss!18206 rules!2135 (h!41101 tokens!494))))))

(declare-fun b!3178984 () Bool)

(assert (=> b!3178984 (= e!1980281 (not e!1980283))))

(declare-fun res!1291646 () Bool)

(assert (=> b!3178984 (=> res!1291646 e!1980283)))

(assert (=> b!3178984 (= res!1291646 (not (= lt!1068397 lt!1068399)))))

(declare-fun printList!1249 (LexerInterface!4695 List!35805) List!35803)

(assert (=> b!3178984 (= lt!1068399 (printList!1249 thiss!18206 (Cons!35681 (h!41101 tokens!494) Nil!35681)))))

(declare-fun lt!1068398 () BalanceConc!20788)

(assert (=> b!3178984 (= lt!1068397 (list!12663 lt!1068398))))

(declare-fun lt!1068402 () BalanceConc!20790)

(declare-fun printTailRec!1194 (LexerInterface!4695 BalanceConc!20790 Int BalanceConc!20788) BalanceConc!20788)

(assert (=> b!3178984 (= lt!1068398 (printTailRec!1194 thiss!18206 lt!1068402 0 (BalanceConc!20789 Empty!10587)))))

(declare-fun print!1762 (LexerInterface!4695 BalanceConc!20790) BalanceConc!20788)

(assert (=> b!3178984 (= lt!1068398 (print!1762 thiss!18206 lt!1068402))))

(declare-fun singletonSeq!2202 (Token!9578) BalanceConc!20790)

(assert (=> b!3178984 (= lt!1068402 (singletonSeq!2202 (h!41101 tokens!494)))))

(assert (= (and start!297758 res!1291648) b!3178978))

(assert (= (and b!3178978 res!1291655) b!3178982))

(assert (= (and b!3178982 res!1291645) b!3178963))

(assert (= (and b!3178963 res!1291644) b!3178964))

(assert (= (and b!3178964 res!1291647) b!3178974))

(assert (= (and b!3178974 res!1291649) b!3178980))

(assert (= (and b!3178980 res!1291643) b!3178966))

(assert (= (and b!3178966 res!1291653) b!3178977))

(assert (= (and b!3178977 res!1291650) b!3178984))

(assert (= (and b!3178984 (not res!1291646)) b!3178968))

(assert (= (and b!3178968 (not res!1291651)) b!3178983))

(assert (= (and b!3178983 (not res!1291652)) b!3178981))

(assert (= (and b!3178981 (not res!1291654)) b!3178971))

(assert (= b!3178962 b!3178970))

(assert (= b!3178967 b!3178962))

(assert (= (and start!297758 ((_ is Cons!35680) rules!2135)) b!3178967))

(assert (= b!3178969 b!3178972))

(assert (= b!3178979 b!3178969))

(assert (= b!3178973 b!3178979))

(assert (= (and start!297758 ((_ is Cons!35681) tokens!494)) b!3178973))

(assert (= b!3178976 b!3178975))

(assert (= b!3178965 b!3178976))

(assert (= start!297758 b!3178965))

(declare-fun m!3435437 () Bool)

(assert (=> b!3178963 m!3435437))

(assert (=> b!3178963 m!3435437))

(declare-fun m!3435439 () Bool)

(assert (=> b!3178963 m!3435439))

(declare-fun m!3435441 () Bool)

(assert (=> b!3178981 m!3435441))

(assert (=> b!3178981 m!3435441))

(declare-fun m!3435443 () Bool)

(assert (=> b!3178981 m!3435443))

(declare-fun m!3435445 () Bool)

(assert (=> b!3178981 m!3435445))

(declare-fun m!3435447 () Bool)

(assert (=> b!3178983 m!3435447))

(declare-fun m!3435449 () Bool)

(assert (=> b!3178962 m!3435449))

(declare-fun m!3435451 () Bool)

(assert (=> b!3178962 m!3435451))

(declare-fun m!3435453 () Bool)

(assert (=> b!3178980 m!3435453))

(declare-fun m!3435455 () Bool)

(assert (=> b!3178973 m!3435455))

(declare-fun m!3435457 () Bool)

(assert (=> b!3178966 m!3435457))

(declare-fun m!3435459 () Bool)

(assert (=> start!297758 m!3435459))

(declare-fun m!3435461 () Bool)

(assert (=> b!3178978 m!3435461))

(declare-fun m!3435463 () Bool)

(assert (=> b!3178968 m!3435463))

(assert (=> b!3178968 m!3435463))

(declare-fun m!3435465 () Bool)

(assert (=> b!3178968 m!3435465))

(declare-fun m!3435467 () Bool)

(assert (=> b!3178979 m!3435467))

(declare-fun m!3435469 () Bool)

(assert (=> b!3178969 m!3435469))

(declare-fun m!3435471 () Bool)

(assert (=> b!3178969 m!3435471))

(declare-fun m!3435473 () Bool)

(assert (=> b!3178976 m!3435473))

(declare-fun m!3435475 () Bool)

(assert (=> b!3178976 m!3435475))

(declare-fun m!3435477 () Bool)

(assert (=> b!3178965 m!3435477))

(declare-fun m!3435479 () Bool)

(assert (=> b!3178964 m!3435479))

(declare-fun m!3435481 () Bool)

(assert (=> b!3178984 m!3435481))

(declare-fun m!3435483 () Bool)

(assert (=> b!3178984 m!3435483))

(declare-fun m!3435485 () Bool)

(assert (=> b!3178984 m!3435485))

(declare-fun m!3435487 () Bool)

(assert (=> b!3178984 m!3435487))

(declare-fun m!3435489 () Bool)

(assert (=> b!3178984 m!3435489))

(declare-fun m!3435491 () Bool)

(assert (=> b!3178982 m!3435491))

(declare-fun m!3435493 () Bool)

(assert (=> b!3178971 m!3435493))

(check-sat (not b!3178962) (not b!3178981) (not b_next!84389) (not b_next!84395) (not start!297758) (not b!3178971) b_and!210017 (not b!3178964) (not b!3178969) (not b!3178980) (not b!3178965) (not b!3178968) (not b_next!84385) (not b_next!84391) b_and!210015 (not b_next!84393) (not b!3178967) (not b!3178963) (not b!3178983) b_and!210013 (not b!3178973) (not b_next!84387) b_and!210021 b_and!210011 (not b!3178982) (not b!3178978) (not b!3178976) (not b!3178984) b_and!210019 (not b!3178966) (not b!3178979))
(check-sat (not b_next!84385) (not b_next!84389) (not b_next!84395) (not b_next!84393) b_and!210017 b_and!210013 b_and!210011 b_and!210019 (not b_next!84391) b_and!210015 (not b_next!84387) b_and!210021)
