; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!148510 () Bool)

(assert start!148510)

(declare-fun b!1583303 () Bool)

(declare-fun b_free!42807 () Bool)

(declare-fun b_next!43511 () Bool)

(assert (=> b!1583303 (= b_free!42807 (not b_next!43511))))

(declare-fun tp!465893 () Bool)

(declare-fun b_and!110989 () Bool)

(assert (=> b!1583303 (= tp!465893 b_and!110989)))

(declare-fun b_free!42809 () Bool)

(declare-fun b_next!43513 () Bool)

(assert (=> b!1583303 (= b_free!42809 (not b_next!43513))))

(declare-fun tp!465890 () Bool)

(declare-fun b_and!110991 () Bool)

(assert (=> b!1583303 (= tp!465890 b_and!110991)))

(declare-fun b!1583288 () Bool)

(declare-fun b_free!42811 () Bool)

(declare-fun b_next!43515 () Bool)

(assert (=> b!1583288 (= b_free!42811 (not b_next!43515))))

(declare-fun tp!465891 () Bool)

(declare-fun b_and!110993 () Bool)

(assert (=> b!1583288 (= tp!465891 b_and!110993)))

(declare-fun b_free!42813 () Bool)

(declare-fun b_next!43517 () Bool)

(assert (=> b!1583288 (= b_free!42813 (not b_next!43517))))

(declare-fun tp!465888 () Bool)

(declare-fun b_and!110995 () Bool)

(assert (=> b!1583288 (= tp!465888 b_and!110995)))

(declare-fun b!1583284 () Bool)

(declare-fun res!705999 () Bool)

(declare-fun e!1017060 () Bool)

(assert (=> b!1583284 (=> (not res!705999) (not e!1017060))))

(declare-datatypes ((List!17473 0))(
  ( (Nil!17403) (Cons!17403 (h!22804 (_ BitVec 16)) (t!143958 List!17473)) )
))
(declare-datatypes ((TokenValue!3157 0))(
  ( (FloatLiteralValue!6314 (text!22544 List!17473)) (TokenValueExt!3156 (__x!11616 Int)) (Broken!15785 (value!97056 List!17473)) (Object!3226) (End!3157) (Def!3157) (Underscore!3157) (Match!3157) (Else!3157) (Error!3157) (Case!3157) (If!3157) (Extends!3157) (Abstract!3157) (Class!3157) (Val!3157) (DelimiterValue!6314 (del!3217 List!17473)) (KeywordValue!3163 (value!97057 List!17473)) (CommentValue!6314 (value!97058 List!17473)) (WhitespaceValue!6314 (value!97059 List!17473)) (IndentationValue!3157 (value!97060 List!17473)) (String!20116) (Int32!3157) (Broken!15786 (value!97061 List!17473)) (Boolean!3158) (Unit!27202) (OperatorValue!3160 (op!3217 List!17473)) (IdentifierValue!6314 (value!97062 List!17473)) (IdentifierValue!6315 (value!97063 List!17473)) (WhitespaceValue!6315 (value!97064 List!17473)) (True!6314) (False!6314) (Broken!15787 (value!97065 List!17473)) (Broken!15788 (value!97066 List!17473)) (True!6315) (RightBrace!3157) (RightBracket!3157) (Colon!3157) (Null!3157) (Comma!3157) (LeftBracket!3157) (False!6315) (LeftBrace!3157) (ImaginaryLiteralValue!3157 (text!22545 List!17473)) (StringLiteralValue!9471 (value!97067 List!17473)) (EOFValue!3157 (value!97068 List!17473)) (IdentValue!3157 (value!97069 List!17473)) (DelimiterValue!6315 (value!97070 List!17473)) (DedentValue!3157 (value!97071 List!17473)) (NewLineValue!3157 (value!97072 List!17473)) (IntegerValue!9471 (value!97073 (_ BitVec 32)) (text!22546 List!17473)) (IntegerValue!9472 (value!97074 Int) (text!22547 List!17473)) (Times!3157) (Or!3157) (Equal!3157) (Minus!3157) (Broken!15789 (value!97075 List!17473)) (And!3157) (Div!3157) (LessEqual!3157) (Mod!3157) (Concat!7552) (Not!3157) (Plus!3157) (SpaceValue!3157 (value!97076 List!17473)) (IntegerValue!9473 (value!97077 Int) (text!22548 List!17473)) (StringLiteralValue!9472 (text!22549 List!17473)) (FloatLiteralValue!6315 (text!22550 List!17473)) (BytesLiteralValue!3157 (value!97078 List!17473)) (CommentValue!6315 (value!97079 List!17473)) (StringLiteralValue!9473 (value!97080 List!17473)) (ErrorTokenValue!3157 (msg!3218 List!17473)) )
))
(declare-datatypes ((C!8964 0))(
  ( (C!8965 (val!5078 Int)) )
))
(declare-datatypes ((List!17474 0))(
  ( (Nil!17404) (Cons!17404 (h!22805 C!8964) (t!143959 List!17474)) )
))
(declare-datatypes ((IArray!11569 0))(
  ( (IArray!11570 (innerList!5842 List!17474)) )
))
(declare-datatypes ((Conc!5782 0))(
  ( (Node!5782 (left!14061 Conc!5782) (right!14391 Conc!5782) (csize!11794 Int) (cheight!5993 Int)) (Leaf!8536 (xs!8586 IArray!11569) (csize!11795 Int)) (Empty!5782) )
))
(declare-datatypes ((BalanceConc!11508 0))(
  ( (BalanceConc!11509 (c!256547 Conc!5782)) )
))
(declare-datatypes ((Regex!4395 0))(
  ( (ElementMatch!4395 (c!256548 C!8964)) (Concat!7553 (regOne!9302 Regex!4395) (regTwo!9302 Regex!4395)) (EmptyExpr!4395) (Star!4395 (reg!4724 Regex!4395)) (EmptyLang!4395) (Union!4395 (regOne!9303 Regex!4395) (regTwo!9303 Regex!4395)) )
))
(declare-datatypes ((String!20117 0))(
  ( (String!20118 (value!97081 String)) )
))
(declare-datatypes ((TokenValueInjection!5974 0))(
  ( (TokenValueInjection!5975 (toValue!4474 Int) (toChars!4333 Int)) )
))
(declare-datatypes ((Rule!5934 0))(
  ( (Rule!5935 (regex!3067 Regex!4395) (tag!3335 String!20117) (isSeparator!3067 Bool) (transformation!3067 TokenValueInjection!5974)) )
))
(declare-datatypes ((Token!5700 0))(
  ( (Token!5701 (value!97082 TokenValue!3157) (rule!4867 Rule!5934) (size!14000 Int) (originalCharacters!3881 List!17474)) )
))
(declare-datatypes ((List!17475 0))(
  ( (Nil!17405) (Cons!17405 (h!22806 Token!5700) (t!143960 List!17475)) )
))
(declare-fun tokens!457 () List!17475)

(get-info :version)

(assert (=> b!1583284 (= res!705999 (and (not ((_ is Nil!17405) tokens!457)) (not ((_ is Nil!17405) (t!143960 tokens!457)))))))

(declare-fun e!1017050 () Bool)

(declare-fun b!1583285 () Bool)

(declare-fun tp!465894 () Bool)

(declare-fun e!1017062 () Bool)

(declare-fun inv!22818 (String!20117) Bool)

(declare-fun inv!22821 (TokenValueInjection!5974) Bool)

(assert (=> b!1583285 (= e!1017062 (and tp!465894 (inv!22818 (tag!3335 (rule!4867 (h!22806 tokens!457)))) (inv!22821 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) e!1017050))))

(declare-fun b!1583286 () Bool)

(declare-fun res!705995 () Bool)

(assert (=> b!1583286 (=> (not res!705995) (not e!1017060))))

(declare-datatypes ((List!17476 0))(
  ( (Nil!17406) (Cons!17406 (h!22807 Rule!5934) (t!143961 List!17476)) )
))
(declare-fun rules!1846 () List!17476)

(declare-datatypes ((LexerInterface!2696 0))(
  ( (LexerInterfaceExt!2693 (__x!11617 Int)) (Lexer!2694) )
))
(declare-fun thiss!17113 () LexerInterface!2696)

(declare-fun tokensListTwoByTwoPredicateSeparableList!389 (LexerInterface!2696 List!17475 List!17476) Bool)

(assert (=> b!1583286 (= res!705995 (tokensListTwoByTwoPredicateSeparableList!389 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1583287 () Bool)

(declare-fun e!1017058 () Bool)

(assert (=> b!1583287 (= e!1017060 e!1017058)))

(declare-fun res!706001 () Bool)

(assert (=> b!1583287 (=> (not res!706001) (not e!1017058))))

(declare-fun lt!555972 () List!17474)

(declare-fun lt!555976 () List!17474)

(assert (=> b!1583287 (= res!706001 (= lt!555972 lt!555976))))

(declare-fun lt!555973 () List!17474)

(declare-fun lt!555959 () List!17474)

(declare-fun ++!4529 (List!17474 List!17474) List!17474)

(assert (=> b!1583287 (= lt!555976 (++!4529 lt!555973 lt!555959))))

(declare-fun lt!555964 () BalanceConc!11508)

(declare-fun list!6743 (BalanceConc!11508) List!17474)

(assert (=> b!1583287 (= lt!555972 (list!6743 lt!555964))))

(declare-fun lt!555961 () BalanceConc!11508)

(assert (=> b!1583287 (= lt!555959 (list!6743 lt!555961))))

(declare-fun lt!555977 () BalanceConc!11508)

(assert (=> b!1583287 (= lt!555973 (list!6743 lt!555977))))

(declare-fun charsOf!1716 (Token!5700) BalanceConc!11508)

(assert (=> b!1583287 (= lt!555977 (charsOf!1716 (h!22806 tokens!457)))))

(declare-datatypes ((IArray!11571 0))(
  ( (IArray!11572 (innerList!5843 List!17475)) )
))
(declare-datatypes ((Conc!5783 0))(
  ( (Node!5783 (left!14062 Conc!5783) (right!14392 Conc!5783) (csize!11796 Int) (cheight!5994 Int)) (Leaf!8537 (xs!8587 IArray!11571) (csize!11797 Int)) (Empty!5783) )
))
(declare-datatypes ((BalanceConc!11510 0))(
  ( (BalanceConc!11511 (c!256549 Conc!5783)) )
))
(declare-datatypes ((tuple2!16884 0))(
  ( (tuple2!16885 (_1!9844 BalanceConc!11510) (_2!9844 BalanceConc!11508)) )
))
(declare-fun lt!555967 () tuple2!16884)

(declare-fun lex!1180 (LexerInterface!2696 List!17476 BalanceConc!11508) tuple2!16884)

(assert (=> b!1583287 (= lt!555967 (lex!1180 thiss!17113 rules!1846 lt!555961))))

(declare-fun lt!555956 () BalanceConc!11510)

(declare-fun print!1227 (LexerInterface!2696 BalanceConc!11510) BalanceConc!11508)

(assert (=> b!1583287 (= lt!555961 (print!1227 thiss!17113 lt!555956))))

(declare-fun seqFromList!1883 (List!17475) BalanceConc!11510)

(assert (=> b!1583287 (= lt!555956 (seqFromList!1883 (t!143960 tokens!457)))))

(assert (=> b!1583287 (= lt!555964 (print!1227 thiss!17113 (seqFromList!1883 tokens!457)))))

(assert (=> b!1583288 (= e!1017050 (and tp!465891 tp!465888))))

(declare-fun b!1583289 () Bool)

(declare-fun res!705993 () Bool)

(assert (=> b!1583289 (=> (not res!705993) (not e!1017060))))

(declare-fun rulesInvariant!2365 (LexerInterface!2696 List!17476) Bool)

(assert (=> b!1583289 (= res!705993 (rulesInvariant!2365 thiss!17113 rules!1846))))

(declare-fun b!1583290 () Bool)

(declare-fun res!705998 () Bool)

(declare-fun e!1017064 () Bool)

(assert (=> b!1583290 (=> res!705998 e!1017064)))

(declare-fun isEmpty!10422 (BalanceConc!11510) Bool)

(declare-fun seqFromList!1884 (List!17474) BalanceConc!11508)

(assert (=> b!1583290 (= res!705998 (isEmpty!10422 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)))))))

(declare-fun tp!465887 () Bool)

(declare-fun e!1017054 () Bool)

(declare-fun b!1583291 () Bool)

(declare-fun inv!21 (TokenValue!3157) Bool)

(assert (=> b!1583291 (= e!1017054 (and (inv!21 (value!97082 (h!22806 tokens!457))) e!1017062 tp!465887))))

(declare-fun b!1583292 () Bool)

(declare-fun e!1017057 () Bool)

(assert (=> b!1583292 (= e!1017057 e!1017064)))

(declare-fun res!705990 () Bool)

(assert (=> b!1583292 (=> res!705990 e!1017064)))

(declare-fun lt!555958 () List!17474)

(declare-fun lt!555966 () List!17474)

(assert (=> b!1583292 (= res!705990 (or (not (= lt!555958 lt!555966)) (not (= lt!555966 lt!555973)) (not (= lt!555958 lt!555973))))))

(declare-fun printList!811 (LexerInterface!2696 List!17475) List!17474)

(assert (=> b!1583292 (= lt!555966 (printList!811 thiss!17113 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))

(declare-fun lt!555971 () BalanceConc!11508)

(assert (=> b!1583292 (= lt!555958 (list!6743 lt!555971))))

(declare-fun lt!555974 () BalanceConc!11510)

(declare-fun printTailRec!749 (LexerInterface!2696 BalanceConc!11510 Int BalanceConc!11508) BalanceConc!11508)

(assert (=> b!1583292 (= lt!555971 (printTailRec!749 thiss!17113 lt!555974 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> b!1583292 (= lt!555971 (print!1227 thiss!17113 lt!555974))))

(declare-fun singletonSeq!1412 (Token!5700) BalanceConc!11510)

(assert (=> b!1583292 (= lt!555974 (singletonSeq!1412 (h!22806 tokens!457)))))

(declare-datatypes ((tuple2!16886 0))(
  ( (tuple2!16887 (_1!9845 Token!5700) (_2!9845 List!17474)) )
))
(declare-datatypes ((Option!3128 0))(
  ( (None!3127) (Some!3127 (v!23986 tuple2!16886)) )
))
(declare-fun lt!555962 () Option!3128)

(declare-fun maxPrefix!1260 (LexerInterface!2696 List!17476 List!17474) Option!3128)

(assert (=> b!1583292 (= lt!555962 (maxPrefix!1260 thiss!17113 rules!1846 lt!555972))))

(declare-fun b!1583294 () Bool)

(declare-fun res!705989 () Bool)

(assert (=> b!1583294 (=> res!705989 e!1017064)))

(declare-fun rulesProduceIndividualToken!1348 (LexerInterface!2696 List!17476 Token!5700) Bool)

(assert (=> b!1583294 (= res!705989 (not (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457))))))

(declare-fun e!1017052 () Bool)

(declare-fun tp!465889 () Bool)

(declare-fun b!1583295 () Bool)

(declare-fun inv!22822 (Token!5700) Bool)

(assert (=> b!1583295 (= e!1017052 (and (inv!22822 (h!22806 tokens!457)) e!1017054 tp!465889))))

(declare-fun b!1583296 () Bool)

(declare-fun e!1017056 () Bool)

(assert (=> b!1583296 (= e!1017064 e!1017056)))

(declare-fun res!706000 () Bool)

(assert (=> b!1583296 (=> res!706000 e!1017056)))

(declare-fun isDefined!2505 (Option!3128) Bool)

(assert (=> b!1583296 (= res!706000 (not (isDefined!2505 lt!555962)))))

(declare-datatypes ((Unit!27203 0))(
  ( (Unit!27204) )
))
(declare-fun lt!555963 () Unit!27203)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 (LexerInterface!2696 List!17476 List!17474 List!17474) Unit!27203)

(assert (=> b!1583296 (= lt!555963 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 thiss!17113 rules!1846 lt!555973 lt!555959))))

(declare-fun b!1583297 () Bool)

(declare-fun e!1017049 () Bool)

(assert (=> b!1583297 (= e!1017049 e!1017057)))

(declare-fun res!705994 () Bool)

(assert (=> b!1583297 (=> res!705994 e!1017057)))

(declare-fun lt!555968 () List!17475)

(declare-fun lt!555970 () List!17475)

(declare-fun lt!555978 () List!17475)

(assert (=> b!1583297 (= res!705994 (or (not (= lt!555978 lt!555968)) (not (= lt!555968 lt!555970))))))

(declare-fun list!6744 (BalanceConc!11510) List!17475)

(assert (=> b!1583297 (= lt!555968 (list!6744 lt!555956))))

(assert (=> b!1583297 (= lt!555978 lt!555970)))

(declare-fun prepend!549 (BalanceConc!11510 Token!5700) BalanceConc!11510)

(assert (=> b!1583297 (= lt!555970 (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!555957 () Unit!27203)

(declare-fun seqFromListBHdTlConstructive!144 (Token!5700 List!17475 BalanceConc!11510) Unit!27203)

(assert (=> b!1583297 (= lt!555957 (seqFromListBHdTlConstructive!144 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)) (_1!9844 lt!555967)))))

(declare-fun b!1583298 () Bool)

(assert (=> b!1583298 (= e!1017058 (not e!1017049))))

(declare-fun res!705988 () Bool)

(assert (=> b!1583298 (=> res!705988 e!1017049)))

(assert (=> b!1583298 (= res!705988 (not (= lt!555978 (t!143960 tokens!457))))))

(assert (=> b!1583298 (= lt!555978 (list!6744 (_1!9844 lt!555967)))))

(declare-fun lt!555965 () Unit!27203)

(declare-fun theoremInvertabilityWhenTokenListSeparable!141 (LexerInterface!2696 List!17476 List!17475) Unit!27203)

(assert (=> b!1583298 (= lt!555965 (theoremInvertabilityWhenTokenListSeparable!141 thiss!17113 rules!1846 (t!143960 tokens!457)))))

(declare-fun isPrefix!1327 (List!17474 List!17474) Bool)

(assert (=> b!1583298 (isPrefix!1327 lt!555973 lt!555976)))

(declare-fun lt!555975 () Unit!27203)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!852 (List!17474 List!17474) Unit!27203)

(assert (=> b!1583298 (= lt!555975 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!555973 lt!555959))))

(declare-fun b!1583299 () Bool)

(declare-fun e!1017055 () Bool)

(declare-fun e!1017061 () Bool)

(declare-fun tp!465892 () Bool)

(assert (=> b!1583299 (= e!1017055 (and e!1017061 tp!465892))))

(declare-fun b!1583300 () Bool)

(declare-fun res!705991 () Bool)

(assert (=> b!1583300 (=> (not res!705991) (not e!1017060))))

(declare-fun rulesProduceEachTokenIndividuallyList!898 (LexerInterface!2696 List!17476 List!17475) Bool)

(assert (=> b!1583300 (= res!705991 (rulesProduceEachTokenIndividuallyList!898 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1017051 () Bool)

(declare-fun tp!465886 () Bool)

(declare-fun b!1583301 () Bool)

(assert (=> b!1583301 (= e!1017061 (and tp!465886 (inv!22818 (tag!3335 (h!22807 rules!1846))) (inv!22821 (transformation!3067 (h!22807 rules!1846))) e!1017051))))

(declare-fun b!1583302 () Bool)

(declare-fun res!705997 () Bool)

(assert (=> b!1583302 (=> res!705997 e!1017057)))

(declare-fun separableTokensPredicate!638 (LexerInterface!2696 Token!5700 Token!5700 List!17476) Bool)

(assert (=> b!1583302 (= res!705997 (not (separableTokensPredicate!638 thiss!17113 (h!22806 tokens!457) (h!22806 (t!143960 tokens!457)) rules!1846)))))

(declare-fun res!705992 () Bool)

(assert (=> start!148510 (=> (not res!705992) (not e!1017060))))

(assert (=> start!148510 (= res!705992 ((_ is Lexer!2694) thiss!17113))))

(assert (=> start!148510 e!1017060))

(assert (=> start!148510 true))

(assert (=> start!148510 e!1017055))

(assert (=> start!148510 e!1017052))

(declare-fun b!1583293 () Bool)

(declare-fun lt!555960 () Regex!4395)

(declare-fun validRegex!1734 (Regex!4395) Bool)

(assert (=> b!1583293 (= e!1017056 (validRegex!1734 lt!555960))))

(declare-fun lt!555969 () BalanceConc!11508)

(declare-fun ++!4530 (BalanceConc!11508 BalanceConc!11508) BalanceConc!11508)

(declare-fun singletonSeq!1413 (C!8964) BalanceConc!11508)

(declare-fun apply!4236 (BalanceConc!11508 Int) C!8964)

(assert (=> b!1583293 (= lt!555969 (++!4530 lt!555977 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))

(declare-fun rulesRegex!457 (LexerInterface!2696 List!17476) Regex!4395)

(assert (=> b!1583293 (= lt!555960 (rulesRegex!457 thiss!17113 rules!1846))))

(assert (=> b!1583303 (= e!1017051 (and tp!465893 tp!465890))))

(declare-fun b!1583304 () Bool)

(declare-fun res!705996 () Bool)

(assert (=> b!1583304 (=> (not res!705996) (not e!1017060))))

(declare-fun isEmpty!10423 (List!17476) Bool)

(assert (=> b!1583304 (= res!705996 (not (isEmpty!10423 rules!1846)))))

(assert (= (and start!148510 res!705992) b!1583304))

(assert (= (and b!1583304 res!705996) b!1583289))

(assert (= (and b!1583289 res!705993) b!1583300))

(assert (= (and b!1583300 res!705991) b!1583286))

(assert (= (and b!1583286 res!705995) b!1583284))

(assert (= (and b!1583284 res!705999) b!1583287))

(assert (= (and b!1583287 res!706001) b!1583298))

(assert (= (and b!1583298 (not res!705988)) b!1583297))

(assert (= (and b!1583297 (not res!705994)) b!1583302))

(assert (= (and b!1583302 (not res!705997)) b!1583292))

(assert (= (and b!1583292 (not res!705990)) b!1583294))

(assert (= (and b!1583294 (not res!705989)) b!1583290))

(assert (= (and b!1583290 (not res!705998)) b!1583296))

(assert (= (and b!1583296 (not res!706000)) b!1583293))

(assert (= b!1583301 b!1583303))

(assert (= b!1583299 b!1583301))

(assert (= (and start!148510 ((_ is Cons!17406) rules!1846)) b!1583299))

(assert (= b!1583285 b!1583288))

(assert (= b!1583291 b!1583285))

(assert (= b!1583295 b!1583291))

(assert (= (and start!148510 ((_ is Cons!17405) tokens!457)) b!1583295))

(declare-fun m!1869853 () Bool)

(assert (=> b!1583304 m!1869853))

(declare-fun m!1869855 () Bool)

(assert (=> b!1583298 m!1869855))

(declare-fun m!1869857 () Bool)

(assert (=> b!1583298 m!1869857))

(declare-fun m!1869859 () Bool)

(assert (=> b!1583298 m!1869859))

(declare-fun m!1869861 () Bool)

(assert (=> b!1583298 m!1869861))

(declare-fun m!1869863 () Bool)

(assert (=> b!1583291 m!1869863))

(declare-fun m!1869865 () Bool)

(assert (=> b!1583289 m!1869865))

(declare-fun m!1869867 () Bool)

(assert (=> b!1583287 m!1869867))

(declare-fun m!1869869 () Bool)

(assert (=> b!1583287 m!1869869))

(declare-fun m!1869871 () Bool)

(assert (=> b!1583287 m!1869871))

(declare-fun m!1869873 () Bool)

(assert (=> b!1583287 m!1869873))

(declare-fun m!1869875 () Bool)

(assert (=> b!1583287 m!1869875))

(declare-fun m!1869877 () Bool)

(assert (=> b!1583287 m!1869877))

(declare-fun m!1869879 () Bool)

(assert (=> b!1583287 m!1869879))

(declare-fun m!1869881 () Bool)

(assert (=> b!1583287 m!1869881))

(assert (=> b!1583287 m!1869875))

(declare-fun m!1869883 () Bool)

(assert (=> b!1583287 m!1869883))

(declare-fun m!1869885 () Bool)

(assert (=> b!1583287 m!1869885))

(declare-fun m!1869887 () Bool)

(assert (=> b!1583285 m!1869887))

(declare-fun m!1869889 () Bool)

(assert (=> b!1583285 m!1869889))

(declare-fun m!1869891 () Bool)

(assert (=> b!1583300 m!1869891))

(declare-fun m!1869893 () Bool)

(assert (=> b!1583302 m!1869893))

(declare-fun m!1869895 () Bool)

(assert (=> b!1583301 m!1869895))

(declare-fun m!1869897 () Bool)

(assert (=> b!1583301 m!1869897))

(declare-fun m!1869899 () Bool)

(assert (=> b!1583290 m!1869899))

(assert (=> b!1583290 m!1869899))

(declare-fun m!1869901 () Bool)

(assert (=> b!1583290 m!1869901))

(declare-fun m!1869903 () Bool)

(assert (=> b!1583290 m!1869903))

(declare-fun m!1869905 () Bool)

(assert (=> b!1583296 m!1869905))

(declare-fun m!1869907 () Bool)

(assert (=> b!1583296 m!1869907))

(declare-fun m!1869909 () Bool)

(assert (=> b!1583292 m!1869909))

(declare-fun m!1869911 () Bool)

(assert (=> b!1583292 m!1869911))

(declare-fun m!1869913 () Bool)

(assert (=> b!1583292 m!1869913))

(declare-fun m!1869915 () Bool)

(assert (=> b!1583292 m!1869915))

(declare-fun m!1869917 () Bool)

(assert (=> b!1583292 m!1869917))

(declare-fun m!1869919 () Bool)

(assert (=> b!1583292 m!1869919))

(declare-fun m!1869921 () Bool)

(assert (=> b!1583293 m!1869921))

(declare-fun m!1869923 () Bool)

(assert (=> b!1583293 m!1869923))

(declare-fun m!1869925 () Bool)

(assert (=> b!1583293 m!1869925))

(declare-fun m!1869927 () Bool)

(assert (=> b!1583293 m!1869927))

(assert (=> b!1583293 m!1869925))

(declare-fun m!1869929 () Bool)

(assert (=> b!1583293 m!1869929))

(declare-fun m!1869931 () Bool)

(assert (=> b!1583293 m!1869931))

(assert (=> b!1583293 m!1869923))

(assert (=> b!1583293 m!1869931))

(declare-fun m!1869933 () Bool)

(assert (=> b!1583295 m!1869933))

(declare-fun m!1869935 () Bool)

(assert (=> b!1583286 m!1869935))

(declare-fun m!1869937 () Bool)

(assert (=> b!1583294 m!1869937))

(declare-fun m!1869939 () Bool)

(assert (=> b!1583297 m!1869939))

(declare-fun m!1869941 () Bool)

(assert (=> b!1583297 m!1869941))

(declare-fun m!1869943 () Bool)

(assert (=> b!1583297 m!1869943))

(declare-fun m!1869945 () Bool)

(assert (=> b!1583297 m!1869945))

(declare-fun m!1869947 () Bool)

(assert (=> b!1583297 m!1869947))

(assert (=> b!1583297 m!1869943))

(assert (=> b!1583297 m!1869945))

(check-sat (not b!1583297) (not b!1583287) (not b!1583286) (not b!1583302) (not b!1583290) b_and!110989 (not b!1583296) (not b!1583291) b_and!110993 (not b!1583299) (not b!1583289) (not b!1583301) (not b!1583304) (not b!1583292) b_and!110995 (not b!1583300) b_and!110991 (not b_next!43517) (not b!1583293) (not b!1583285) (not b_next!43513) (not b!1583294) (not b!1583298) (not b_next!43511) (not b_next!43515) (not b!1583295))
(check-sat b_and!110995 (not b_next!43513) b_and!110989 (not b_next!43511) b_and!110993 (not b_next!43515) b_and!110991 (not b_next!43517))
(get-model)

(declare-fun b!1583315 () Bool)

(declare-fun e!1017072 () Bool)

(declare-fun inv!16 (TokenValue!3157) Bool)

(assert (=> b!1583315 (= e!1017072 (inv!16 (value!97082 (h!22806 tokens!457))))))

(declare-fun b!1583316 () Bool)

(declare-fun e!1017073 () Bool)

(assert (=> b!1583316 (= e!1017072 e!1017073)))

(declare-fun c!256554 () Bool)

(assert (=> b!1583316 (= c!256554 ((_ is IntegerValue!9472) (value!97082 (h!22806 tokens!457))))))

(declare-fun b!1583317 () Bool)

(declare-fun e!1017071 () Bool)

(declare-fun inv!15 (TokenValue!3157) Bool)

(assert (=> b!1583317 (= e!1017071 (inv!15 (value!97082 (h!22806 tokens!457))))))

(declare-fun d!470746 () Bool)

(declare-fun c!256555 () Bool)

(assert (=> d!470746 (= c!256555 ((_ is IntegerValue!9471) (value!97082 (h!22806 tokens!457))))))

(assert (=> d!470746 (= (inv!21 (value!97082 (h!22806 tokens!457))) e!1017072)))

(declare-fun b!1583318 () Bool)

(declare-fun inv!17 (TokenValue!3157) Bool)

(assert (=> b!1583318 (= e!1017073 (inv!17 (value!97082 (h!22806 tokens!457))))))

(declare-fun b!1583319 () Bool)

(declare-fun res!706011 () Bool)

(assert (=> b!1583319 (=> res!706011 e!1017071)))

(assert (=> b!1583319 (= res!706011 (not ((_ is IntegerValue!9473) (value!97082 (h!22806 tokens!457)))))))

(assert (=> b!1583319 (= e!1017073 e!1017071)))

(assert (= (and d!470746 c!256555) b!1583315))

(assert (= (and d!470746 (not c!256555)) b!1583316))

(assert (= (and b!1583316 c!256554) b!1583318))

(assert (= (and b!1583316 (not c!256554)) b!1583319))

(assert (= (and b!1583319 (not res!706011)) b!1583317))

(declare-fun m!1869949 () Bool)

(assert (=> b!1583315 m!1869949))

(declare-fun m!1869951 () Bool)

(assert (=> b!1583317 m!1869951))

(declare-fun m!1869953 () Bool)

(assert (=> b!1583318 m!1869953))

(assert (=> b!1583291 d!470746))

(declare-fun d!470748 () Bool)

(declare-fun prefixMatchZipperSequence!411 (Regex!4395 BalanceConc!11508) Bool)

(assert (=> d!470748 (= (separableTokensPredicate!638 thiss!17113 (h!22806 tokens!457) (h!22806 (t!143960 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!411 (rulesRegex!457 thiss!17113 rules!1846) (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun bs!391162 () Bool)

(assert (= bs!391162 d!470748))

(assert (=> bs!391162 m!1869869))

(assert (=> bs!391162 m!1869925))

(declare-fun m!1869955 () Bool)

(assert (=> bs!391162 m!1869955))

(assert (=> bs!391162 m!1869923))

(assert (=> bs!391162 m!1869925))

(assert (=> bs!391162 m!1869931))

(assert (=> bs!391162 m!1869931))

(assert (=> bs!391162 m!1869923))

(assert (=> bs!391162 m!1869921))

(assert (=> bs!391162 m!1869921))

(assert (=> bs!391162 m!1869955))

(declare-fun m!1869957 () Bool)

(assert (=> bs!391162 m!1869957))

(assert (=> bs!391162 m!1869869))

(assert (=> b!1583302 d!470748))

(declare-fun d!470750 () Bool)

(declare-fun list!6747 (Conc!5782) List!17474)

(assert (=> d!470750 (= (list!6743 lt!555971) (list!6747 (c!256547 lt!555971)))))

(declare-fun bs!391163 () Bool)

(assert (= bs!391163 d!470750))

(declare-fun m!1869959 () Bool)

(assert (=> bs!391163 m!1869959))

(assert (=> b!1583292 d!470750))

(declare-fun d!470752 () Bool)

(declare-fun lt!556037 () BalanceConc!11508)

(declare-fun printListTailRec!311 (LexerInterface!2696 List!17475 List!17474) List!17474)

(declare-fun dropList!518 (BalanceConc!11510 Int) List!17475)

(assert (=> d!470752 (= (list!6743 lt!556037) (printListTailRec!311 thiss!17113 (dropList!518 lt!555974 0) (list!6743 (BalanceConc!11509 Empty!5782))))))

(declare-fun e!1017093 () BalanceConc!11508)

(assert (=> d!470752 (= lt!556037 e!1017093)))

(declare-fun c!256563 () Bool)

(declare-fun size!14004 (BalanceConc!11510) Int)

(assert (=> d!470752 (= c!256563 (>= 0 (size!14004 lt!555974)))))

(declare-fun e!1017092 () Bool)

(assert (=> d!470752 e!1017092))

(declare-fun res!706023 () Bool)

(assert (=> d!470752 (=> (not res!706023) (not e!1017092))))

(assert (=> d!470752 (= res!706023 (>= 0 0))))

(assert (=> d!470752 (= (printTailRec!749 thiss!17113 lt!555974 0 (BalanceConc!11509 Empty!5782)) lt!556037)))

(declare-fun b!1583345 () Bool)

(assert (=> b!1583345 (= e!1017092 (<= 0 (size!14004 lt!555974)))))

(declare-fun b!1583346 () Bool)

(assert (=> b!1583346 (= e!1017093 (BalanceConc!11509 Empty!5782))))

(declare-fun b!1583347 () Bool)

(declare-fun apply!4240 (BalanceConc!11510 Int) Token!5700)

(assert (=> b!1583347 (= e!1017093 (printTailRec!749 thiss!17113 lt!555974 (+ 0 1) (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555974 0)))))))

(declare-fun lt!556039 () List!17475)

(assert (=> b!1583347 (= lt!556039 (list!6744 lt!555974))))

(declare-fun lt!556036 () Unit!27203)

(declare-fun lemmaDropApply!518 (List!17475 Int) Unit!27203)

(assert (=> b!1583347 (= lt!556036 (lemmaDropApply!518 lt!556039 0))))

(declare-fun head!3205 (List!17475) Token!5700)

(declare-fun drop!820 (List!17475 Int) List!17475)

(declare-fun apply!4241 (List!17475 Int) Token!5700)

(assert (=> b!1583347 (= (head!3205 (drop!820 lt!556039 0)) (apply!4241 lt!556039 0))))

(declare-fun lt!556040 () Unit!27203)

(assert (=> b!1583347 (= lt!556040 lt!556036)))

(declare-fun lt!556035 () List!17475)

(assert (=> b!1583347 (= lt!556035 (list!6744 lt!555974))))

(declare-fun lt!556041 () Unit!27203)

(declare-fun lemmaDropTail!498 (List!17475 Int) Unit!27203)

(assert (=> b!1583347 (= lt!556041 (lemmaDropTail!498 lt!556035 0))))

(declare-fun tail!2264 (List!17475) List!17475)

(assert (=> b!1583347 (= (tail!2264 (drop!820 lt!556035 0)) (drop!820 lt!556035 (+ 0 1)))))

(declare-fun lt!556038 () Unit!27203)

(assert (=> b!1583347 (= lt!556038 lt!556041)))

(assert (= (and d!470752 res!706023) b!1583345))

(assert (= (and d!470752 c!256563) b!1583346))

(assert (= (and d!470752 (not c!256563)) b!1583347))

(declare-fun m!1870015 () Bool)

(assert (=> d!470752 m!1870015))

(declare-fun m!1870017 () Bool)

(assert (=> d!470752 m!1870017))

(declare-fun m!1870019 () Bool)

(assert (=> d!470752 m!1870019))

(assert (=> d!470752 m!1870017))

(declare-fun m!1870021 () Bool)

(assert (=> d!470752 m!1870021))

(declare-fun m!1870023 () Bool)

(assert (=> d!470752 m!1870023))

(assert (=> d!470752 m!1870015))

(assert (=> b!1583345 m!1870023))

(declare-fun m!1870027 () Bool)

(assert (=> b!1583347 m!1870027))

(declare-fun m!1870029 () Bool)

(assert (=> b!1583347 m!1870029))

(declare-fun m!1870031 () Bool)

(assert (=> b!1583347 m!1870031))

(declare-fun m!1870033 () Bool)

(assert (=> b!1583347 m!1870033))

(declare-fun m!1870035 () Bool)

(assert (=> b!1583347 m!1870035))

(declare-fun m!1870037 () Bool)

(assert (=> b!1583347 m!1870037))

(assert (=> b!1583347 m!1870027))

(declare-fun m!1870039 () Bool)

(assert (=> b!1583347 m!1870039))

(assert (=> b!1583347 m!1870033))

(declare-fun m!1870041 () Bool)

(assert (=> b!1583347 m!1870041))

(declare-fun m!1870043 () Bool)

(assert (=> b!1583347 m!1870043))

(declare-fun m!1870045 () Bool)

(assert (=> b!1583347 m!1870045))

(declare-fun m!1870047 () Bool)

(assert (=> b!1583347 m!1870047))

(declare-fun m!1870049 () Bool)

(assert (=> b!1583347 m!1870049))

(assert (=> b!1583347 m!1870043))

(assert (=> b!1583347 m!1870031))

(declare-fun m!1870051 () Bool)

(assert (=> b!1583347 m!1870051))

(assert (=> b!1583347 m!1870045))

(assert (=> b!1583292 d!470752))

(declare-fun b!1583398 () Bool)

(declare-fun e!1017114 () Option!3128)

(declare-fun lt!556074 () Option!3128)

(declare-fun lt!556075 () Option!3128)

(assert (=> b!1583398 (= e!1017114 (ite (and ((_ is None!3127) lt!556074) ((_ is None!3127) lt!556075)) None!3127 (ite ((_ is None!3127) lt!556075) lt!556074 (ite ((_ is None!3127) lt!556074) lt!556075 (ite (>= (size!14000 (_1!9845 (v!23986 lt!556074))) (size!14000 (_1!9845 (v!23986 lt!556075)))) lt!556074 lt!556075)))))))

(declare-fun call!102744 () Option!3128)

(assert (=> b!1583398 (= lt!556074 call!102744)))

(assert (=> b!1583398 (= lt!556075 (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) lt!555972))))

(declare-fun b!1583399 () Bool)

(declare-fun e!1017113 () Bool)

(declare-fun lt!556077 () Option!3128)

(declare-fun contains!3036 (List!17476 Rule!5934) Bool)

(declare-fun get!4978 (Option!3128) tuple2!16886)

(assert (=> b!1583399 (= e!1017113 (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!556077)))))))

(declare-fun b!1583400 () Bool)

(declare-fun res!706064 () Bool)

(assert (=> b!1583400 (=> (not res!706064) (not e!1017113))))

(declare-fun apply!4242 (TokenValueInjection!5974 BalanceConc!11508) TokenValue!3157)

(assert (=> b!1583400 (= res!706064 (= (value!97082 (_1!9845 (get!4978 lt!556077))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556077)))))))))

(declare-fun d!470762 () Bool)

(declare-fun e!1017115 () Bool)

(assert (=> d!470762 e!1017115))

(declare-fun res!706065 () Bool)

(assert (=> d!470762 (=> res!706065 e!1017115)))

(declare-fun isEmpty!10427 (Option!3128) Bool)

(assert (=> d!470762 (= res!706065 (isEmpty!10427 lt!556077))))

(assert (=> d!470762 (= lt!556077 e!1017114)))

(declare-fun c!256570 () Bool)

(assert (=> d!470762 (= c!256570 (and ((_ is Cons!17406) rules!1846) ((_ is Nil!17406) (t!143961 rules!1846))))))

(declare-fun lt!556076 () Unit!27203)

(declare-fun lt!556073 () Unit!27203)

(assert (=> d!470762 (= lt!556076 lt!556073)))

(assert (=> d!470762 (isPrefix!1327 lt!555972 lt!555972)))

(declare-fun lemmaIsPrefixRefl!916 (List!17474 List!17474) Unit!27203)

(assert (=> d!470762 (= lt!556073 (lemmaIsPrefixRefl!916 lt!555972 lt!555972))))

(declare-fun rulesValidInductive!918 (LexerInterface!2696 List!17476) Bool)

(assert (=> d!470762 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!470762 (= (maxPrefix!1260 thiss!17113 rules!1846 lt!555972) lt!556077)))

(declare-fun b!1583401 () Bool)

(assert (=> b!1583401 (= e!1017114 call!102744)))

(declare-fun b!1583402 () Bool)

(declare-fun res!706063 () Bool)

(assert (=> b!1583402 (=> (not res!706063) (not e!1017113))))

(assert (=> b!1583402 (= res!706063 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))) (_2!9845 (get!4978 lt!556077))) lt!555972))))

(declare-fun bm!102739 () Bool)

(declare-fun maxPrefixOneRule!731 (LexerInterface!2696 Rule!5934 List!17474) Option!3128)

(assert (=> bm!102739 (= call!102744 (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) lt!555972))))

(declare-fun b!1583403 () Bool)

(declare-fun res!706062 () Bool)

(assert (=> b!1583403 (=> (not res!706062) (not e!1017113))))

(declare-fun size!14005 (List!17474) Int)

(assert (=> b!1583403 (= res!706062 (< (size!14005 (_2!9845 (get!4978 lt!556077))) (size!14005 lt!555972)))))

(declare-fun b!1583404 () Bool)

(declare-fun res!706067 () Bool)

(assert (=> b!1583404 (=> (not res!706067) (not e!1017113))))

(assert (=> b!1583404 (= res!706067 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!556077)))))))

(declare-fun b!1583405 () Bool)

(assert (=> b!1583405 (= e!1017115 e!1017113)))

(declare-fun res!706066 () Bool)

(assert (=> b!1583405 (=> (not res!706066) (not e!1017113))))

(assert (=> b!1583405 (= res!706066 (isDefined!2505 lt!556077))))

(declare-fun b!1583406 () Bool)

(declare-fun res!706068 () Bool)

(assert (=> b!1583406 (=> (not res!706068) (not e!1017113))))

(declare-fun matchR!1916 (Regex!4395 List!17474) Bool)

(assert (=> b!1583406 (= res!706068 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))))))

(assert (= (and d!470762 c!256570) b!1583401))

(assert (= (and d!470762 (not c!256570)) b!1583398))

(assert (= (or b!1583401 b!1583398) bm!102739))

(assert (= (and d!470762 (not res!706065)) b!1583405))

(assert (= (and b!1583405 res!706066) b!1583404))

(assert (= (and b!1583404 res!706067) b!1583403))

(assert (= (and b!1583403 res!706062) b!1583402))

(assert (= (and b!1583402 res!706063) b!1583400))

(assert (= (and b!1583400 res!706064) b!1583406))

(assert (= (and b!1583406 res!706068) b!1583399))

(declare-fun m!1870097 () Bool)

(assert (=> bm!102739 m!1870097))

(declare-fun m!1870099 () Bool)

(assert (=> b!1583400 m!1870099))

(declare-fun m!1870101 () Bool)

(assert (=> b!1583400 m!1870101))

(assert (=> b!1583400 m!1870101))

(declare-fun m!1870103 () Bool)

(assert (=> b!1583400 m!1870103))

(declare-fun m!1870105 () Bool)

(assert (=> d!470762 m!1870105))

(declare-fun m!1870107 () Bool)

(assert (=> d!470762 m!1870107))

(declare-fun m!1870109 () Bool)

(assert (=> d!470762 m!1870109))

(declare-fun m!1870111 () Bool)

(assert (=> d!470762 m!1870111))

(assert (=> b!1583403 m!1870099))

(declare-fun m!1870113 () Bool)

(assert (=> b!1583403 m!1870113))

(declare-fun m!1870115 () Bool)

(assert (=> b!1583403 m!1870115))

(assert (=> b!1583399 m!1870099))

(declare-fun m!1870117 () Bool)

(assert (=> b!1583399 m!1870117))

(assert (=> b!1583406 m!1870099))

(declare-fun m!1870119 () Bool)

(assert (=> b!1583406 m!1870119))

(assert (=> b!1583406 m!1870119))

(declare-fun m!1870121 () Bool)

(assert (=> b!1583406 m!1870121))

(assert (=> b!1583406 m!1870121))

(declare-fun m!1870123 () Bool)

(assert (=> b!1583406 m!1870123))

(declare-fun m!1870125 () Bool)

(assert (=> b!1583398 m!1870125))

(assert (=> b!1583404 m!1870099))

(assert (=> b!1583404 m!1870119))

(assert (=> b!1583404 m!1870119))

(assert (=> b!1583404 m!1870121))

(assert (=> b!1583402 m!1870099))

(assert (=> b!1583402 m!1870119))

(assert (=> b!1583402 m!1870119))

(assert (=> b!1583402 m!1870121))

(assert (=> b!1583402 m!1870121))

(declare-fun m!1870127 () Bool)

(assert (=> b!1583402 m!1870127))

(declare-fun m!1870129 () Bool)

(assert (=> b!1583405 m!1870129))

(assert (=> b!1583292 d!470762))

(declare-fun d!470770 () Bool)

(declare-fun c!256573 () Bool)

(assert (=> d!470770 (= c!256573 ((_ is Cons!17405) (Cons!17405 (h!22806 tokens!457) Nil!17405)))))

(declare-fun e!1017118 () List!17474)

(assert (=> d!470770 (= (printList!811 thiss!17113 (Cons!17405 (h!22806 tokens!457) Nil!17405)) e!1017118)))

(declare-fun b!1583411 () Bool)

(assert (=> b!1583411 (= e!1017118 (++!4529 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))) (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))))

(declare-fun b!1583412 () Bool)

(assert (=> b!1583412 (= e!1017118 Nil!17404)))

(assert (= (and d!470770 c!256573) b!1583411))

(assert (= (and d!470770 (not c!256573)) b!1583412))

(declare-fun m!1870131 () Bool)

(assert (=> b!1583411 m!1870131))

(assert (=> b!1583411 m!1870131))

(declare-fun m!1870133 () Bool)

(assert (=> b!1583411 m!1870133))

(declare-fun m!1870135 () Bool)

(assert (=> b!1583411 m!1870135))

(assert (=> b!1583411 m!1870133))

(assert (=> b!1583411 m!1870135))

(declare-fun m!1870137 () Bool)

(assert (=> b!1583411 m!1870137))

(assert (=> b!1583292 d!470770))

(declare-fun d!470772 () Bool)

(declare-fun e!1017121 () Bool)

(assert (=> d!470772 e!1017121))

(declare-fun res!706071 () Bool)

(assert (=> d!470772 (=> (not res!706071) (not e!1017121))))

(declare-fun lt!556080 () BalanceConc!11510)

(assert (=> d!470772 (= res!706071 (= (list!6744 lt!556080) (Cons!17405 (h!22806 tokens!457) Nil!17405)))))

(declare-fun singleton!580 (Token!5700) BalanceConc!11510)

(assert (=> d!470772 (= lt!556080 (singleton!580 (h!22806 tokens!457)))))

(assert (=> d!470772 (= (singletonSeq!1412 (h!22806 tokens!457)) lt!556080)))

(declare-fun b!1583415 () Bool)

(declare-fun isBalanced!1700 (Conc!5783) Bool)

(assert (=> b!1583415 (= e!1017121 (isBalanced!1700 (c!256549 lt!556080)))))

(assert (= (and d!470772 res!706071) b!1583415))

(declare-fun m!1870139 () Bool)

(assert (=> d!470772 m!1870139))

(declare-fun m!1870141 () Bool)

(assert (=> d!470772 m!1870141))

(declare-fun m!1870143 () Bool)

(assert (=> b!1583415 m!1870143))

(assert (=> b!1583292 d!470772))

(declare-fun d!470774 () Bool)

(declare-fun lt!556083 () BalanceConc!11508)

(assert (=> d!470774 (= (list!6743 lt!556083) (printList!811 thiss!17113 (list!6744 lt!555974)))))

(assert (=> d!470774 (= lt!556083 (printTailRec!749 thiss!17113 lt!555974 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!470774 (= (print!1227 thiss!17113 lt!555974) lt!556083)))

(declare-fun bs!391168 () Bool)

(assert (= bs!391168 d!470774))

(declare-fun m!1870151 () Bool)

(assert (=> bs!391168 m!1870151))

(assert (=> bs!391168 m!1870037))

(assert (=> bs!391168 m!1870037))

(declare-fun m!1870153 () Bool)

(assert (=> bs!391168 m!1870153))

(assert (=> bs!391168 m!1869915))

(assert (=> b!1583292 d!470774))

(declare-fun d!470780 () Bool)

(declare-fun lt!556086 () Bool)

(declare-fun isEmpty!10428 (List!17475) Bool)

(assert (=> d!470780 (= lt!556086 (isEmpty!10428 (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(declare-fun isEmpty!10429 (Conc!5783) Bool)

(assert (=> d!470780 (= lt!556086 (isEmpty!10429 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(assert (=> d!470780 (= (isEmpty!10422 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)))) lt!556086)))

(declare-fun bs!391169 () Bool)

(assert (= bs!391169 d!470780))

(declare-fun m!1870155 () Bool)

(assert (=> bs!391169 m!1870155))

(assert (=> bs!391169 m!1870155))

(declare-fun m!1870157 () Bool)

(assert (=> bs!391169 m!1870157))

(declare-fun m!1870159 () Bool)

(assert (=> bs!391169 m!1870159))

(assert (=> b!1583290 d!470780))

(declare-fun d!470782 () Bool)

(declare-fun e!1017130 () Bool)

(assert (=> d!470782 e!1017130))

(declare-fun res!706078 () Bool)

(assert (=> d!470782 (=> (not res!706078) (not e!1017130))))

(declare-fun e!1017128 () Bool)

(assert (=> d!470782 (= res!706078 e!1017128)))

(declare-fun c!256576 () Bool)

(declare-fun lt!556089 () tuple2!16884)

(assert (=> d!470782 (= c!256576 (> (size!14004 (_1!9844 lt!556089)) 0))))

(declare-fun lexTailRecV2!507 (LexerInterface!2696 List!17476 BalanceConc!11508 BalanceConc!11508 BalanceConc!11508 BalanceConc!11510) tuple2!16884)

(assert (=> d!470782 (= lt!556089 (lexTailRecV2!507 thiss!17113 rules!1846 (seqFromList!1884 lt!555973) (BalanceConc!11509 Empty!5782) (seqFromList!1884 lt!555973) (BalanceConc!11511 Empty!5783)))))

(assert (=> d!470782 (= (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)) lt!556089)))

(declare-fun b!1583426 () Bool)

(assert (=> b!1583426 (= e!1017128 (= (_2!9844 lt!556089) (seqFromList!1884 lt!555973)))))

(declare-fun b!1583427 () Bool)

(declare-datatypes ((tuple2!16888 0))(
  ( (tuple2!16889 (_1!9846 List!17475) (_2!9846 List!17474)) )
))
(declare-fun lexList!784 (LexerInterface!2696 List!17476 List!17474) tuple2!16888)

(assert (=> b!1583427 (= e!1017130 (= (list!6743 (_2!9844 lt!556089)) (_2!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 (seqFromList!1884 lt!555973))))))))

(declare-fun b!1583428 () Bool)

(declare-fun e!1017129 () Bool)

(assert (=> b!1583428 (= e!1017128 e!1017129)))

(declare-fun res!706080 () Bool)

(declare-fun size!14006 (BalanceConc!11508) Int)

(assert (=> b!1583428 (= res!706080 (< (size!14006 (_2!9844 lt!556089)) (size!14006 (seqFromList!1884 lt!555973))))))

(assert (=> b!1583428 (=> (not res!706080) (not e!1017129))))

(declare-fun b!1583429 () Bool)

(assert (=> b!1583429 (= e!1017129 (not (isEmpty!10422 (_1!9844 lt!556089))))))

(declare-fun b!1583430 () Bool)

(declare-fun res!706079 () Bool)

(assert (=> b!1583430 (=> (not res!706079) (not e!1017130))))

(assert (=> b!1583430 (= res!706079 (= (list!6744 (_1!9844 lt!556089)) (_1!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 (seqFromList!1884 lt!555973))))))))

(assert (= (and d!470782 c!256576) b!1583428))

(assert (= (and d!470782 (not c!256576)) b!1583426))

(assert (= (and b!1583428 res!706080) b!1583429))

(assert (= (and d!470782 res!706078) b!1583430))

(assert (= (and b!1583430 res!706079) b!1583427))

(declare-fun m!1870161 () Bool)

(assert (=> b!1583430 m!1870161))

(assert (=> b!1583430 m!1869899))

(declare-fun m!1870163 () Bool)

(assert (=> b!1583430 m!1870163))

(assert (=> b!1583430 m!1870163))

(declare-fun m!1870165 () Bool)

(assert (=> b!1583430 m!1870165))

(declare-fun m!1870167 () Bool)

(assert (=> b!1583429 m!1870167))

(declare-fun m!1870169 () Bool)

(assert (=> b!1583428 m!1870169))

(assert (=> b!1583428 m!1869899))

(declare-fun m!1870171 () Bool)

(assert (=> b!1583428 m!1870171))

(declare-fun m!1870173 () Bool)

(assert (=> d!470782 m!1870173))

(assert (=> d!470782 m!1869899))

(assert (=> d!470782 m!1869899))

(declare-fun m!1870175 () Bool)

(assert (=> d!470782 m!1870175))

(declare-fun m!1870177 () Bool)

(assert (=> b!1583427 m!1870177))

(assert (=> b!1583427 m!1869899))

(assert (=> b!1583427 m!1870163))

(assert (=> b!1583427 m!1870163))

(assert (=> b!1583427 m!1870165))

(assert (=> b!1583290 d!470782))

(declare-fun d!470784 () Bool)

(declare-fun fromListB!805 (List!17474) BalanceConc!11508)

(assert (=> d!470784 (= (seqFromList!1884 lt!555973) (fromListB!805 lt!555973))))

(declare-fun bs!391170 () Bool)

(assert (= bs!391170 d!470784))

(declare-fun m!1870179 () Bool)

(assert (=> bs!391170 m!1870179))

(assert (=> b!1583290 d!470784))

(declare-fun d!470786 () Bool)

(assert (=> d!470786 (= (inv!22818 (tag!3335 (h!22807 rules!1846))) (= (mod (str.len (value!97081 (tag!3335 (h!22807 rules!1846)))) 2) 0))))

(assert (=> b!1583301 d!470786))

(declare-fun d!470788 () Bool)

(declare-fun res!706083 () Bool)

(declare-fun e!1017133 () Bool)

(assert (=> d!470788 (=> (not res!706083) (not e!1017133))))

(declare-fun semiInverseModEq!1156 (Int Int) Bool)

(assert (=> d!470788 (= res!706083 (semiInverseModEq!1156 (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toValue!4474 (transformation!3067 (h!22807 rules!1846)))))))

(assert (=> d!470788 (= (inv!22821 (transformation!3067 (h!22807 rules!1846))) e!1017133)))

(declare-fun b!1583433 () Bool)

(declare-fun equivClasses!1097 (Int Int) Bool)

(assert (=> b!1583433 (= e!1017133 (equivClasses!1097 (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toValue!4474 (transformation!3067 (h!22807 rules!1846)))))))

(assert (= (and d!470788 res!706083) b!1583433))

(declare-fun m!1870181 () Bool)

(assert (=> d!470788 m!1870181))

(declare-fun m!1870183 () Bool)

(assert (=> b!1583433 m!1870183))

(assert (=> b!1583301 d!470788))

(declare-fun d!470790 () Bool)

(declare-fun res!706086 () Bool)

(declare-fun e!1017136 () Bool)

(assert (=> d!470790 (=> (not res!706086) (not e!1017136))))

(declare-fun rulesValid!1083 (LexerInterface!2696 List!17476) Bool)

(assert (=> d!470790 (= res!706086 (rulesValid!1083 thiss!17113 rules!1846))))

(assert (=> d!470790 (= (rulesInvariant!2365 thiss!17113 rules!1846) e!1017136)))

(declare-fun b!1583436 () Bool)

(declare-datatypes ((List!17477 0))(
  ( (Nil!17407) (Cons!17407 (h!22808 String!20117) (t!144004 List!17477)) )
))
(declare-fun noDuplicateTag!1083 (LexerInterface!2696 List!17476 List!17477) Bool)

(assert (=> b!1583436 (= e!1017136 (noDuplicateTag!1083 thiss!17113 rules!1846 Nil!17407))))

(assert (= (and d!470790 res!706086) b!1583436))

(declare-fun m!1870185 () Bool)

(assert (=> d!470790 m!1870185))

(declare-fun m!1870187 () Bool)

(assert (=> b!1583436 m!1870187))

(assert (=> b!1583289 d!470790))

(declare-fun b!1583484 () Bool)

(declare-fun e!1017173 () Bool)

(assert (=> b!1583484 (= e!1017173 true)))

(declare-fun b!1583483 () Bool)

(declare-fun e!1017172 () Bool)

(assert (=> b!1583483 (= e!1017172 e!1017173)))

(declare-fun b!1583482 () Bool)

(declare-fun e!1017171 () Bool)

(assert (=> b!1583482 (= e!1017171 e!1017172)))

(declare-fun d!470792 () Bool)

(assert (=> d!470792 e!1017171))

(assert (= b!1583483 b!1583484))

(assert (= b!1583482 b!1583483))

(assert (= (and d!470792 ((_ is Cons!17406) rules!1846)) b!1583482))

(declare-fun order!10271 () Int)

(declare-fun lambda!66517 () Int)

(declare-fun order!10269 () Int)

(declare-fun dynLambda!7721 (Int Int) Int)

(declare-fun dynLambda!7722 (Int Int) Int)

(assert (=> b!1583484 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7722 order!10271 lambda!66517))))

(declare-fun order!10273 () Int)

(declare-fun dynLambda!7723 (Int Int) Int)

(assert (=> b!1583484 (< (dynLambda!7723 order!10273 (toChars!4333 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7722 order!10271 lambda!66517))))

(assert (=> d!470792 true))

(declare-fun lt!556157 () Bool)

(declare-fun forall!4000 (List!17475 Int) Bool)

(assert (=> d!470792 (= lt!556157 (forall!4000 tokens!457 lambda!66517))))

(declare-fun e!1017164 () Bool)

(assert (=> d!470792 (= lt!556157 e!1017164)))

(declare-fun res!706117 () Bool)

(assert (=> d!470792 (=> res!706117 e!1017164)))

(assert (=> d!470792 (= res!706117 (not ((_ is Cons!17405) tokens!457)))))

(assert (=> d!470792 (not (isEmpty!10423 rules!1846))))

(assert (=> d!470792 (= (rulesProduceEachTokenIndividuallyList!898 thiss!17113 rules!1846 tokens!457) lt!556157)))

(declare-fun b!1583472 () Bool)

(declare-fun e!1017163 () Bool)

(assert (=> b!1583472 (= e!1017164 e!1017163)))

(declare-fun res!706116 () Bool)

(assert (=> b!1583472 (=> (not res!706116) (not e!1017163))))

(assert (=> b!1583472 (= res!706116 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457)))))

(declare-fun b!1583473 () Bool)

(assert (=> b!1583473 (= e!1017163 (rulesProduceEachTokenIndividuallyList!898 thiss!17113 rules!1846 (t!143960 tokens!457)))))

(assert (= (and d!470792 (not res!706117)) b!1583472))

(assert (= (and b!1583472 res!706116) b!1583473))

(declare-fun m!1870279 () Bool)

(assert (=> d!470792 m!1870279))

(assert (=> d!470792 m!1869853))

(assert (=> b!1583472 m!1869937))

(declare-fun m!1870281 () Bool)

(assert (=> b!1583473 m!1870281))

(assert (=> b!1583300 d!470792))

(declare-fun d!470812 () Bool)

(assert (=> d!470812 (= (list!6743 lt!555977) (list!6747 (c!256547 lt!555977)))))

(declare-fun bs!391175 () Bool)

(assert (= bs!391175 d!470812))

(declare-fun m!1870283 () Bool)

(assert (=> bs!391175 m!1870283))

(assert (=> b!1583287 d!470812))

(declare-fun d!470814 () Bool)

(assert (=> d!470814 (= (list!6743 lt!555961) (list!6747 (c!256547 lt!555961)))))

(declare-fun bs!391176 () Bool)

(assert (= bs!391176 d!470814))

(declare-fun m!1870285 () Bool)

(assert (=> bs!391176 m!1870285))

(assert (=> b!1583287 d!470814))

(declare-fun d!470816 () Bool)

(declare-fun e!1017176 () Bool)

(assert (=> d!470816 e!1017176))

(declare-fun res!706118 () Bool)

(assert (=> d!470816 (=> (not res!706118) (not e!1017176))))

(declare-fun e!1017174 () Bool)

(assert (=> d!470816 (= res!706118 e!1017174)))

(declare-fun c!256581 () Bool)

(declare-fun lt!556158 () tuple2!16884)

(assert (=> d!470816 (= c!256581 (> (size!14004 (_1!9844 lt!556158)) 0))))

(assert (=> d!470816 (= lt!556158 (lexTailRecV2!507 thiss!17113 rules!1846 lt!555961 (BalanceConc!11509 Empty!5782) lt!555961 (BalanceConc!11511 Empty!5783)))))

(assert (=> d!470816 (= (lex!1180 thiss!17113 rules!1846 lt!555961) lt!556158)))

(declare-fun b!1583487 () Bool)

(assert (=> b!1583487 (= e!1017174 (= (_2!9844 lt!556158) lt!555961))))

(declare-fun b!1583488 () Bool)

(assert (=> b!1583488 (= e!1017176 (= (list!6743 (_2!9844 lt!556158)) (_2!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 lt!555961)))))))

(declare-fun b!1583489 () Bool)

(declare-fun e!1017175 () Bool)

(assert (=> b!1583489 (= e!1017174 e!1017175)))

(declare-fun res!706120 () Bool)

(assert (=> b!1583489 (= res!706120 (< (size!14006 (_2!9844 lt!556158)) (size!14006 lt!555961)))))

(assert (=> b!1583489 (=> (not res!706120) (not e!1017175))))

(declare-fun b!1583490 () Bool)

(assert (=> b!1583490 (= e!1017175 (not (isEmpty!10422 (_1!9844 lt!556158))))))

(declare-fun b!1583491 () Bool)

(declare-fun res!706119 () Bool)

(assert (=> b!1583491 (=> (not res!706119) (not e!1017176))))

(assert (=> b!1583491 (= res!706119 (= (list!6744 (_1!9844 lt!556158)) (_1!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 lt!555961)))))))

(assert (= (and d!470816 c!256581) b!1583489))

(assert (= (and d!470816 (not c!256581)) b!1583487))

(assert (= (and b!1583489 res!706120) b!1583490))

(assert (= (and d!470816 res!706118) b!1583491))

(assert (= (and b!1583491 res!706119) b!1583488))

(declare-fun m!1870287 () Bool)

(assert (=> b!1583491 m!1870287))

(assert (=> b!1583491 m!1869873))

(assert (=> b!1583491 m!1869873))

(declare-fun m!1870289 () Bool)

(assert (=> b!1583491 m!1870289))

(declare-fun m!1870291 () Bool)

(assert (=> b!1583490 m!1870291))

(declare-fun m!1870293 () Bool)

(assert (=> b!1583489 m!1870293))

(declare-fun m!1870295 () Bool)

(assert (=> b!1583489 m!1870295))

(declare-fun m!1870297 () Bool)

(assert (=> d!470816 m!1870297))

(declare-fun m!1870299 () Bool)

(assert (=> d!470816 m!1870299))

(declare-fun m!1870301 () Bool)

(assert (=> b!1583488 m!1870301))

(assert (=> b!1583488 m!1869873))

(assert (=> b!1583488 m!1869873))

(assert (=> b!1583488 m!1870289))

(assert (=> b!1583287 d!470816))

(declare-fun d!470818 () Bool)

(declare-fun fromListB!806 (List!17475) BalanceConc!11510)

(assert (=> d!470818 (= (seqFromList!1883 tokens!457) (fromListB!806 tokens!457))))

(declare-fun bs!391177 () Bool)

(assert (= bs!391177 d!470818))

(declare-fun m!1870303 () Bool)

(assert (=> bs!391177 m!1870303))

(assert (=> b!1583287 d!470818))

(declare-fun d!470820 () Bool)

(assert (=> d!470820 (= (list!6743 lt!555964) (list!6747 (c!256547 lt!555964)))))

(declare-fun bs!391178 () Bool)

(assert (= bs!391178 d!470820))

(declare-fun m!1870305 () Bool)

(assert (=> bs!391178 m!1870305))

(assert (=> b!1583287 d!470820))

(declare-fun d!470822 () Bool)

(declare-fun lt!556161 () BalanceConc!11508)

(assert (=> d!470822 (= (list!6743 lt!556161) (originalCharacters!3881 (h!22806 tokens!457)))))

(declare-fun dynLambda!7725 (Int TokenValue!3157) BalanceConc!11508)

(assert (=> d!470822 (= lt!556161 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))

(assert (=> d!470822 (= (charsOf!1716 (h!22806 tokens!457)) lt!556161)))

(declare-fun b_lambda!49821 () Bool)

(assert (=> (not b_lambda!49821) (not d!470822)))

(declare-fun t!143970 () Bool)

(declare-fun tb!89079 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) t!143970) tb!89079))

(declare-fun b!1583496 () Bool)

(declare-fun e!1017179 () Bool)

(declare-fun tp!465897 () Bool)

(declare-fun inv!22825 (Conc!5782) Bool)

(assert (=> b!1583496 (= e!1017179 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))) tp!465897))))

(declare-fun result!107818 () Bool)

(declare-fun inv!22826 (BalanceConc!11508) Bool)

(assert (=> tb!89079 (= result!107818 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))) e!1017179))))

(assert (= tb!89079 b!1583496))

(declare-fun m!1870307 () Bool)

(assert (=> b!1583496 m!1870307))

(declare-fun m!1870309 () Bool)

(assert (=> tb!89079 m!1870309))

(assert (=> d!470822 t!143970))

(declare-fun b_and!110997 () Bool)

(assert (= b_and!110991 (and (=> t!143970 result!107818) b_and!110997)))

(declare-fun t!143972 () Bool)

(declare-fun tb!89081 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) t!143972) tb!89081))

(declare-fun result!107822 () Bool)

(assert (= result!107822 result!107818))

(assert (=> d!470822 t!143972))

(declare-fun b_and!110999 () Bool)

(assert (= b_and!110995 (and (=> t!143972 result!107822) b_and!110999)))

(declare-fun m!1870311 () Bool)

(assert (=> d!470822 m!1870311))

(declare-fun m!1870313 () Bool)

(assert (=> d!470822 m!1870313))

(assert (=> b!1583287 d!470822))

(declare-fun d!470824 () Bool)

(assert (=> d!470824 (= (seqFromList!1883 (t!143960 tokens!457)) (fromListB!806 (t!143960 tokens!457)))))

(declare-fun bs!391179 () Bool)

(assert (= bs!391179 d!470824))

(declare-fun m!1870315 () Bool)

(assert (=> bs!391179 m!1870315))

(assert (=> b!1583287 d!470824))

(declare-fun d!470826 () Bool)

(declare-fun lt!556162 () BalanceConc!11508)

(assert (=> d!470826 (= (list!6743 lt!556162) (printList!811 thiss!17113 (list!6744 lt!555956)))))

(assert (=> d!470826 (= lt!556162 (printTailRec!749 thiss!17113 lt!555956 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!470826 (= (print!1227 thiss!17113 lt!555956) lt!556162)))

(declare-fun bs!391180 () Bool)

(assert (= bs!391180 d!470826))

(declare-fun m!1870317 () Bool)

(assert (=> bs!391180 m!1870317))

(assert (=> bs!391180 m!1869939))

(assert (=> bs!391180 m!1869939))

(declare-fun m!1870319 () Bool)

(assert (=> bs!391180 m!1870319))

(declare-fun m!1870321 () Bool)

(assert (=> bs!391180 m!1870321))

(assert (=> b!1583287 d!470826))

(declare-fun d!470828 () Bool)

(declare-fun lt!556163 () BalanceConc!11508)

(assert (=> d!470828 (= (list!6743 lt!556163) (printList!811 thiss!17113 (list!6744 (seqFromList!1883 tokens!457))))))

(assert (=> d!470828 (= lt!556163 (printTailRec!749 thiss!17113 (seqFromList!1883 tokens!457) 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!470828 (= (print!1227 thiss!17113 (seqFromList!1883 tokens!457)) lt!556163)))

(declare-fun bs!391181 () Bool)

(assert (= bs!391181 d!470828))

(declare-fun m!1870323 () Bool)

(assert (=> bs!391181 m!1870323))

(assert (=> bs!391181 m!1869875))

(declare-fun m!1870325 () Bool)

(assert (=> bs!391181 m!1870325))

(assert (=> bs!391181 m!1870325))

(declare-fun m!1870327 () Bool)

(assert (=> bs!391181 m!1870327))

(assert (=> bs!391181 m!1869875))

(declare-fun m!1870329 () Bool)

(assert (=> bs!391181 m!1870329))

(assert (=> b!1583287 d!470828))

(declare-fun b!1583505 () Bool)

(declare-fun e!1017185 () List!17474)

(assert (=> b!1583505 (= e!1017185 lt!555959)))

(declare-fun b!1583507 () Bool)

(declare-fun res!706125 () Bool)

(declare-fun e!1017184 () Bool)

(assert (=> b!1583507 (=> (not res!706125) (not e!1017184))))

(declare-fun lt!556166 () List!17474)

(assert (=> b!1583507 (= res!706125 (= (size!14005 lt!556166) (+ (size!14005 lt!555973) (size!14005 lt!555959))))))

(declare-fun b!1583508 () Bool)

(assert (=> b!1583508 (= e!1017184 (or (not (= lt!555959 Nil!17404)) (= lt!556166 lt!555973)))))

(declare-fun b!1583506 () Bool)

(assert (=> b!1583506 (= e!1017185 (Cons!17404 (h!22805 lt!555973) (++!4529 (t!143959 lt!555973) lt!555959)))))

(declare-fun d!470830 () Bool)

(assert (=> d!470830 e!1017184))

(declare-fun res!706126 () Bool)

(assert (=> d!470830 (=> (not res!706126) (not e!1017184))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2394 (List!17474) (InoxSet C!8964))

(assert (=> d!470830 (= res!706126 (= (content!2394 lt!556166) ((_ map or) (content!2394 lt!555973) (content!2394 lt!555959))))))

(assert (=> d!470830 (= lt!556166 e!1017185)))

(declare-fun c!256584 () Bool)

(assert (=> d!470830 (= c!256584 ((_ is Nil!17404) lt!555973))))

(assert (=> d!470830 (= (++!4529 lt!555973 lt!555959) lt!556166)))

(assert (= (and d!470830 c!256584) b!1583505))

(assert (= (and d!470830 (not c!256584)) b!1583506))

(assert (= (and d!470830 res!706126) b!1583507))

(assert (= (and b!1583507 res!706125) b!1583508))

(declare-fun m!1870331 () Bool)

(assert (=> b!1583507 m!1870331))

(declare-fun m!1870333 () Bool)

(assert (=> b!1583507 m!1870333))

(declare-fun m!1870335 () Bool)

(assert (=> b!1583507 m!1870335))

(declare-fun m!1870337 () Bool)

(assert (=> b!1583506 m!1870337))

(declare-fun m!1870339 () Bool)

(assert (=> d!470830 m!1870339))

(declare-fun m!1870341 () Bool)

(assert (=> d!470830 m!1870341))

(declare-fun m!1870343 () Bool)

(assert (=> d!470830 m!1870343))

(assert (=> b!1583287 d!470830))

(declare-fun d!470832 () Bool)

(declare-fun list!6748 (Conc!5783) List!17475)

(assert (=> d!470832 (= (list!6744 (_1!9844 lt!555967)) (list!6748 (c!256549 (_1!9844 lt!555967))))))

(declare-fun bs!391182 () Bool)

(assert (= bs!391182 d!470832))

(declare-fun m!1870345 () Bool)

(assert (=> bs!391182 m!1870345))

(assert (=> b!1583298 d!470832))

(declare-fun d!470834 () Bool)

(declare-fun e!1017202 () Bool)

(assert (=> d!470834 e!1017202))

(declare-fun res!706131 () Bool)

(assert (=> d!470834 (=> (not res!706131) (not e!1017202))))

(assert (=> d!470834 (= res!706131 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)))))) (t!143960 tokens!457)))))

(declare-fun lt!556233 () Unit!27203)

(declare-fun e!1017201 () Unit!27203)

(assert (=> d!470834 (= lt!556233 e!1017201)))

(declare-fun c!256587 () Bool)

(assert (=> d!470834 (= c!256587 (or ((_ is Nil!17405) (t!143960 tokens!457)) ((_ is Nil!17405) (t!143960 (t!143960 tokens!457)))))))

(assert (=> d!470834 (not (isEmpty!10423 rules!1846))))

(assert (=> d!470834 (= (theoremInvertabilityWhenTokenListSeparable!141 thiss!17113 rules!1846 (t!143960 tokens!457)) lt!556233)))

(declare-fun b!1583530 () Bool)

(declare-fun Unit!27224 () Unit!27203)

(assert (=> b!1583530 (= e!1017201 Unit!27224)))

(declare-fun b!1583531 () Bool)

(declare-fun Unit!27225 () Unit!27203)

(assert (=> b!1583531 (= e!1017201 Unit!27225)))

(declare-fun lt!556239 () BalanceConc!11508)

(assert (=> b!1583531 (= lt!556239 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))

(declare-fun lt!556243 () BalanceConc!11508)

(assert (=> b!1583531 (= lt!556243 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))))))

(declare-fun lt!556226 () tuple2!16884)

(assert (=> b!1583531 (= lt!556226 (lex!1180 thiss!17113 rules!1846 lt!556243))))

(declare-fun lt!556232 () List!17474)

(assert (=> b!1583531 (= lt!556232 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!556235 () List!17474)

(assert (=> b!1583531 (= lt!556235 (list!6743 lt!556243))))

(declare-fun lt!556237 () Unit!27203)

(assert (=> b!1583531 (= lt!556237 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!556232 lt!556235))))

(assert (=> b!1583531 (isPrefix!1327 lt!556232 (++!4529 lt!556232 lt!556235))))

(declare-fun lt!556244 () Unit!27203)

(assert (=> b!1583531 (= lt!556244 lt!556237)))

(declare-fun lt!556229 () Unit!27203)

(assert (=> b!1583531 (= lt!556229 (theoremInvertabilityWhenTokenListSeparable!141 thiss!17113 rules!1846 (t!143960 (t!143960 tokens!457))))))

(declare-fun lt!556234 () Unit!27203)

(assert (=> b!1583531 (= lt!556234 (seqFromListBHdTlConstructive!144 (h!22806 (t!143960 (t!143960 tokens!457))) (t!143960 (t!143960 (t!143960 tokens!457))) (_1!9844 lt!556226)))))

(assert (=> b!1583531 (= (list!6744 (_1!9844 lt!556226)) (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!556227 () Unit!27203)

(assert (=> b!1583531 (= lt!556227 lt!556234)))

(declare-fun lt!556231 () Option!3128)

(assert (=> b!1583531 (= lt!556231 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 lt!556239)))))

(assert (=> b!1583531 (= (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457)))) (printTailRec!749 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) 0 (BalanceConc!11509 Empty!5782)))))

(declare-fun lt!556220 () Unit!27203)

(declare-fun Unit!27226 () Unit!27203)

(assert (=> b!1583531 (= lt!556220 Unit!27226)))

(declare-fun lt!556224 () Unit!27203)

(assert (=> b!1583531 (= lt!556224 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))

(assert (=> b!1583531 (= (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))))

(declare-fun lt!556236 () Unit!27203)

(declare-fun Unit!27227 () Unit!27203)

(assert (=> b!1583531 (= lt!556236 Unit!27227)))

(declare-fun head!3208 (List!17474) C!8964)

(assert (=> b!1583531 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0))) (Cons!17404 (head!3208 (originalCharacters!3881 (h!22806 (t!143960 (t!143960 tokens!457))))) Nil!17404))))

(declare-fun lt!556238 () Unit!27203)

(declare-fun Unit!27228 () Unit!27203)

(assert (=> b!1583531 (= lt!556238 Unit!27228)))

(assert (=> b!1583531 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0))) (Cons!17404 (head!3208 (list!6743 lt!556243)) Nil!17404))))

(declare-fun lt!556245 () Unit!27203)

(declare-fun Unit!27229 () Unit!27203)

(assert (=> b!1583531 (= lt!556245 Unit!27229)))

(declare-fun head!3209 (BalanceConc!11508) C!8964)

(assert (=> b!1583531 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0))) (Cons!17404 (head!3209 lt!556243) Nil!17404))))

(declare-fun lt!556222 () Unit!27203)

(declare-fun Unit!27230 () Unit!27203)

(assert (=> b!1583531 (= lt!556222 Unit!27230)))

(assert (=> b!1583531 (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!556242 () Unit!27203)

(declare-fun Unit!27231 () Unit!27203)

(assert (=> b!1583531 (= lt!556242 Unit!27231)))

(assert (=> b!1583531 (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!556230 () Unit!27203)

(declare-fun Unit!27232 () Unit!27203)

(assert (=> b!1583531 (= lt!556230 Unit!27232)))

(declare-fun lt!556241 () Unit!27203)

(declare-fun Unit!27233 () Unit!27203)

(assert (=> b!1583531 (= lt!556241 Unit!27233)))

(assert (=> b!1583531 (= (_1!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))) (h!22806 (t!143960 tokens!457)))))

(declare-fun lt!556221 () Unit!27203)

(declare-fun Unit!27234 () Unit!27203)

(assert (=> b!1583531 (= lt!556221 Unit!27234)))

(declare-fun isEmpty!10432 (List!17474) Bool)

(assert (=> b!1583531 (isEmpty!10432 (_2!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))

(declare-fun lt!556228 () Unit!27203)

(declare-fun Unit!27235 () Unit!27203)

(assert (=> b!1583531 (= lt!556228 Unit!27235)))

(assert (=> b!1583531 (matchR!1916 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!556225 () Unit!27203)

(declare-fun Unit!27236 () Unit!27203)

(assert (=> b!1583531 (= lt!556225 Unit!27236)))

(assert (=> b!1583531 (= (rule!4867 (h!22806 (t!143960 tokens!457))) (rule!4867 (h!22806 (t!143960 tokens!457))))))

(declare-fun lt!556240 () Unit!27203)

(declare-fun Unit!27237 () Unit!27203)

(assert (=> b!1583531 (= lt!556240 Unit!27237)))

(declare-fun lt!556223 () Unit!27203)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!66 (LexerInterface!2696 List!17476 Token!5700 Rule!5934 List!17474) Unit!27203)

(assert (=> b!1583531 (= lt!556223 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!66 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457)) (rule!4867 (h!22806 (t!143960 tokens!457))) (list!6743 lt!556243)))))

(declare-fun b!1583532 () Bool)

(declare-fun isEmpty!10433 (BalanceConc!11508) Bool)

(assert (=> b!1583532 (= e!1017202 (isEmpty!10433 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)))))))))

(assert (= (and d!470834 c!256587) b!1583530))

(assert (= (and d!470834 (not c!256587)) b!1583531))

(assert (= (and d!470834 res!706131) b!1583532))

(declare-fun m!1870353 () Bool)

(assert (=> d!470834 m!1870353))

(declare-fun m!1870355 () Bool)

(assert (=> d!470834 m!1870355))

(declare-fun m!1870357 () Bool)

(assert (=> d!470834 m!1870357))

(assert (=> d!470834 m!1869853))

(assert (=> d!470834 m!1869883))

(assert (=> d!470834 m!1869883))

(assert (=> d!470834 m!1870355))

(declare-fun m!1870359 () Bool)

(assert (=> b!1583531 m!1870359))

(declare-fun m!1870361 () Bool)

(assert (=> b!1583531 m!1870361))

(declare-fun m!1870363 () Bool)

(assert (=> b!1583531 m!1870363))

(declare-fun m!1870365 () Bool)

(assert (=> b!1583531 m!1870365))

(assert (=> b!1583531 m!1869931))

(declare-fun m!1870367 () Bool)

(assert (=> b!1583531 m!1870367))

(declare-fun m!1870369 () Bool)

(assert (=> b!1583531 m!1870369))

(declare-fun m!1870371 () Bool)

(assert (=> b!1583531 m!1870371))

(assert (=> b!1583531 m!1870367))

(assert (=> b!1583531 m!1870361))

(declare-fun m!1870373 () Bool)

(assert (=> b!1583531 m!1870373))

(assert (=> b!1583531 m!1870367))

(declare-fun m!1870375 () Bool)

(assert (=> b!1583531 m!1870375))

(declare-fun m!1870377 () Bool)

(assert (=> b!1583531 m!1870377))

(declare-fun m!1870379 () Bool)

(assert (=> b!1583531 m!1870379))

(assert (=> b!1583531 m!1870367))

(declare-fun m!1870381 () Bool)

(assert (=> b!1583531 m!1870381))

(declare-fun m!1870383 () Bool)

(assert (=> b!1583531 m!1870383))

(declare-fun m!1870385 () Bool)

(assert (=> b!1583531 m!1870385))

(assert (=> b!1583531 m!1870377))

(declare-fun m!1870387 () Bool)

(assert (=> b!1583531 m!1870387))

(assert (=> b!1583531 m!1870369))

(declare-fun m!1870389 () Bool)

(assert (=> b!1583531 m!1870389))

(declare-fun m!1870391 () Bool)

(assert (=> b!1583531 m!1870391))

(assert (=> b!1583531 m!1870361))

(declare-fun m!1870393 () Bool)

(assert (=> b!1583531 m!1870393))

(declare-fun m!1870395 () Bool)

(assert (=> b!1583531 m!1870395))

(declare-fun m!1870397 () Bool)

(assert (=> b!1583531 m!1870397))

(declare-fun m!1870399 () Bool)

(assert (=> b!1583531 m!1870399))

(declare-fun m!1870401 () Bool)

(assert (=> b!1583531 m!1870401))

(assert (=> b!1583531 m!1870381))

(declare-fun m!1870403 () Bool)

(assert (=> b!1583531 m!1870403))

(declare-fun m!1870405 () Bool)

(assert (=> b!1583531 m!1870405))

(assert (=> b!1583531 m!1870399))

(declare-fun m!1870407 () Bool)

(assert (=> b!1583531 m!1870407))

(declare-fun m!1870409 () Bool)

(assert (=> b!1583531 m!1870409))

(assert (=> b!1583531 m!1870397))

(declare-fun m!1870411 () Bool)

(assert (=> b!1583531 m!1870411))

(assert (=> b!1583531 m!1870361))

(assert (=> b!1583531 m!1869931))

(assert (=> b!1583531 m!1870411))

(assert (=> b!1583531 m!1870383))

(assert (=> b!1583531 m!1870381))

(declare-fun m!1870413 () Bool)

(assert (=> b!1583531 m!1870413))

(assert (=> b!1583531 m!1870409))

(declare-fun m!1870415 () Bool)

(assert (=> b!1583531 m!1870415))

(assert (=> b!1583531 m!1869943))

(declare-fun m!1870417 () Bool)

(assert (=> b!1583531 m!1870417))

(assert (=> b!1583531 m!1869943))

(declare-fun m!1870419 () Bool)

(assert (=> b!1583531 m!1870419))

(declare-fun m!1870421 () Bool)

(assert (=> b!1583531 m!1870421))

(assert (=> b!1583531 m!1869883))

(assert (=> b!1583531 m!1870359))

(declare-fun m!1870423 () Bool)

(assert (=> b!1583531 m!1870423))

(assert (=> b!1583531 m!1869883))

(assert (=> b!1583531 m!1870355))

(assert (=> b!1583531 m!1870389))

(assert (=> b!1583531 m!1870377))

(declare-fun m!1870425 () Bool)

(assert (=> b!1583531 m!1870425))

(assert (=> b!1583532 m!1869883))

(assert (=> b!1583532 m!1869883))

(assert (=> b!1583532 m!1870355))

(assert (=> b!1583532 m!1870355))

(assert (=> b!1583532 m!1870357))

(declare-fun m!1870427 () Bool)

(assert (=> b!1583532 m!1870427))

(assert (=> b!1583298 d!470834))

(declare-fun b!1583543 () Bool)

(declare-fun e!1017209 () Bool)

(declare-fun tail!2266 (List!17474) List!17474)

(assert (=> b!1583543 (= e!1017209 (isPrefix!1327 (tail!2266 lt!555973) (tail!2266 lt!555976)))))

(declare-fun b!1583541 () Bool)

(declare-fun e!1017211 () Bool)

(assert (=> b!1583541 (= e!1017211 e!1017209)))

(declare-fun res!706141 () Bool)

(assert (=> b!1583541 (=> (not res!706141) (not e!1017209))))

(assert (=> b!1583541 (= res!706141 (not ((_ is Nil!17404) lt!555976)))))

(declare-fun d!470842 () Bool)

(declare-fun e!1017210 () Bool)

(assert (=> d!470842 e!1017210))

(declare-fun res!706142 () Bool)

(assert (=> d!470842 (=> res!706142 e!1017210)))

(declare-fun lt!556248 () Bool)

(assert (=> d!470842 (= res!706142 (not lt!556248))))

(assert (=> d!470842 (= lt!556248 e!1017211)))

(declare-fun res!706140 () Bool)

(assert (=> d!470842 (=> res!706140 e!1017211)))

(assert (=> d!470842 (= res!706140 ((_ is Nil!17404) lt!555973))))

(assert (=> d!470842 (= (isPrefix!1327 lt!555973 lt!555976) lt!556248)))

(declare-fun b!1583542 () Bool)

(declare-fun res!706143 () Bool)

(assert (=> b!1583542 (=> (not res!706143) (not e!1017209))))

(assert (=> b!1583542 (= res!706143 (= (head!3208 lt!555973) (head!3208 lt!555976)))))

(declare-fun b!1583544 () Bool)

(assert (=> b!1583544 (= e!1017210 (>= (size!14005 lt!555976) (size!14005 lt!555973)))))

(assert (= (and d!470842 (not res!706140)) b!1583541))

(assert (= (and b!1583541 res!706141) b!1583542))

(assert (= (and b!1583542 res!706143) b!1583543))

(assert (= (and d!470842 (not res!706142)) b!1583544))

(declare-fun m!1870429 () Bool)

(assert (=> b!1583543 m!1870429))

(declare-fun m!1870431 () Bool)

(assert (=> b!1583543 m!1870431))

(assert (=> b!1583543 m!1870429))

(assert (=> b!1583543 m!1870431))

(declare-fun m!1870433 () Bool)

(assert (=> b!1583543 m!1870433))

(declare-fun m!1870435 () Bool)

(assert (=> b!1583542 m!1870435))

(declare-fun m!1870437 () Bool)

(assert (=> b!1583542 m!1870437))

(declare-fun m!1870439 () Bool)

(assert (=> b!1583544 m!1870439))

(assert (=> b!1583544 m!1870333))

(assert (=> b!1583298 d!470842))

(declare-fun d!470844 () Bool)

(assert (=> d!470844 (isPrefix!1327 lt!555973 (++!4529 lt!555973 lt!555959))))

(declare-fun lt!556251 () Unit!27203)

(declare-fun choose!9475 (List!17474 List!17474) Unit!27203)

(assert (=> d!470844 (= lt!556251 (choose!9475 lt!555973 lt!555959))))

(assert (=> d!470844 (= (lemmaConcatTwoListThenFirstIsPrefix!852 lt!555973 lt!555959) lt!556251)))

(declare-fun bs!391184 () Bool)

(assert (= bs!391184 d!470844))

(assert (=> bs!391184 m!1869871))

(assert (=> bs!391184 m!1869871))

(declare-fun m!1870441 () Bool)

(assert (=> bs!391184 m!1870441))

(declare-fun m!1870443 () Bool)

(assert (=> bs!391184 m!1870443))

(assert (=> b!1583298 d!470844))

(declare-fun d!470846 () Bool)

(declare-fun res!706148 () Bool)

(declare-fun e!1017217 () Bool)

(assert (=> d!470846 (=> res!706148 e!1017217)))

(assert (=> d!470846 (= res!706148 (or (not ((_ is Cons!17405) tokens!457)) (not ((_ is Cons!17405) (t!143960 tokens!457)))))))

(assert (=> d!470846 (= (tokensListTwoByTwoPredicateSeparableList!389 thiss!17113 tokens!457 rules!1846) e!1017217)))

(declare-fun b!1583549 () Bool)

(declare-fun e!1017216 () Bool)

(assert (=> b!1583549 (= e!1017217 e!1017216)))

(declare-fun res!706149 () Bool)

(assert (=> b!1583549 (=> (not res!706149) (not e!1017216))))

(assert (=> b!1583549 (= res!706149 (separableTokensPredicate!638 thiss!17113 (h!22806 tokens!457) (h!22806 (t!143960 tokens!457)) rules!1846))))

(declare-fun lt!556272 () Unit!27203)

(declare-fun Unit!27238 () Unit!27203)

(assert (=> b!1583549 (= lt!556272 Unit!27238)))

(assert (=> b!1583549 (> (size!14006 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) 0)))

(declare-fun lt!556267 () Unit!27203)

(declare-fun Unit!27239 () Unit!27203)

(assert (=> b!1583549 (= lt!556267 Unit!27239)))

(assert (=> b!1583549 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457)))))

(declare-fun lt!556271 () Unit!27203)

(declare-fun Unit!27240 () Unit!27203)

(assert (=> b!1583549 (= lt!556271 Unit!27240)))

(assert (=> b!1583549 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457))))

(declare-fun lt!556270 () Unit!27203)

(declare-fun lt!556266 () Unit!27203)

(assert (=> b!1583549 (= lt!556270 lt!556266)))

(assert (=> b!1583549 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 (LexerInterface!2696 List!17476 List!17475 Token!5700) Unit!27203)

(assert (=> b!1583549 (= lt!556266 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 thiss!17113 rules!1846 tokens!457 (h!22806 (t!143960 tokens!457))))))

(declare-fun lt!556268 () Unit!27203)

(declare-fun lt!556269 () Unit!27203)

(assert (=> b!1583549 (= lt!556268 lt!556269)))

(assert (=> b!1583549 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457))))

(assert (=> b!1583549 (= lt!556269 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 thiss!17113 rules!1846 tokens!457 (h!22806 tokens!457)))))

(declare-fun b!1583550 () Bool)

(assert (=> b!1583550 (= e!1017216 (tokensListTwoByTwoPredicateSeparableList!389 thiss!17113 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))) rules!1846))))

(assert (= (and d!470846 (not res!706148)) b!1583549))

(assert (= (and b!1583549 res!706149) b!1583550))

(declare-fun m!1870445 () Bool)

(assert (=> b!1583549 m!1870445))

(declare-fun m!1870447 () Bool)

(assert (=> b!1583549 m!1870447))

(assert (=> b!1583549 m!1869931))

(declare-fun m!1870449 () Bool)

(assert (=> b!1583549 m!1870449))

(assert (=> b!1583549 m!1869937))

(assert (=> b!1583549 m!1869893))

(assert (=> b!1583549 m!1869931))

(declare-fun m!1870451 () Bool)

(assert (=> b!1583549 m!1870451))

(declare-fun m!1870453 () Bool)

(assert (=> b!1583550 m!1870453))

(assert (=> b!1583286 d!470846))

(declare-fun d!470848 () Bool)

(declare-fun e!1017222 () Bool)

(assert (=> d!470848 e!1017222))

(declare-fun res!706152 () Bool)

(assert (=> d!470848 (=> (not res!706152) (not e!1017222))))

(declare-fun prepend!551 (Conc!5783 Token!5700) Conc!5783)

(assert (=> d!470848 (= res!706152 (isBalanced!1700 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!556305 () BalanceConc!11510)

(assert (=> d!470848 (= lt!556305 (BalanceConc!11511 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!470848 (= (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457))) lt!556305)))

(declare-fun b!1583557 () Bool)

(assert (=> b!1583557 (= e!1017222 (= (list!6744 lt!556305) (Cons!17405 (h!22806 (t!143960 tokens!457)) (list!6744 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))))))))

(assert (= (and d!470848 res!706152) b!1583557))

(declare-fun m!1870455 () Bool)

(assert (=> d!470848 m!1870455))

(assert (=> d!470848 m!1870455))

(declare-fun m!1870457 () Bool)

(assert (=> d!470848 m!1870457))

(declare-fun m!1870459 () Bool)

(assert (=> b!1583557 m!1870459))

(assert (=> b!1583557 m!1869943))

(declare-fun m!1870461 () Bool)

(assert (=> b!1583557 m!1870461))

(assert (=> b!1583297 d!470848))

(declare-fun d!470850 () Bool)

(assert (=> d!470850 (= (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457)))) (list!6748 (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457))))))))

(declare-fun bs!391185 () Bool)

(assert (= bs!391185 d!470850))

(declare-fun m!1870463 () Bool)

(assert (=> bs!391185 m!1870463))

(assert (=> b!1583297 d!470850))

(declare-fun d!470852 () Bool)

(assert (=> d!470852 (= (list!6744 lt!555956) (list!6748 (c!256549 lt!555956)))))

(declare-fun bs!391186 () Bool)

(assert (= bs!391186 d!470852))

(declare-fun m!1870465 () Bool)

(assert (=> bs!391186 m!1870465))

(assert (=> b!1583297 d!470852))

(declare-fun d!470854 () Bool)

(assert (=> d!470854 (= (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (fromListB!806 (t!143960 (t!143960 tokens!457))))))

(declare-fun bs!391187 () Bool)

(assert (= bs!391187 d!470854))

(declare-fun m!1870467 () Bool)

(assert (=> bs!391187 m!1870467))

(assert (=> b!1583297 d!470854))

(declare-fun d!470856 () Bool)

(assert (=> d!470856 (= (list!6744 (_1!9844 lt!555967)) (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!556330 () Unit!27203)

(declare-fun choose!9476 (Token!5700 List!17475 BalanceConc!11510) Unit!27203)

(assert (=> d!470856 (= lt!556330 (choose!9476 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)) (_1!9844 lt!555967)))))

(declare-fun $colon$colon!275 (List!17475 Token!5700) List!17475)

(assert (=> d!470856 (= (list!6744 (_1!9844 lt!555967)) (list!6744 (seqFromList!1883 ($colon$colon!275 (t!143960 (t!143960 tokens!457)) (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!470856 (= (seqFromListBHdTlConstructive!144 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)) (_1!9844 lt!555967)) lt!556330)))

(declare-fun bs!391188 () Bool)

(assert (= bs!391188 d!470856))

(assert (=> bs!391188 m!1869855))

(assert (=> bs!391188 m!1869943))

(declare-fun m!1870469 () Bool)

(assert (=> bs!391188 m!1870469))

(declare-fun m!1870471 () Bool)

(assert (=> bs!391188 m!1870471))

(declare-fun m!1870473 () Bool)

(assert (=> bs!391188 m!1870473))

(assert (=> bs!391188 m!1869945))

(assert (=> bs!391188 m!1869947))

(declare-fun m!1870475 () Bool)

(assert (=> bs!391188 m!1870475))

(assert (=> bs!391188 m!1870471))

(assert (=> bs!391188 m!1869943))

(assert (=> bs!391188 m!1869945))

(assert (=> bs!391188 m!1870475))

(assert (=> b!1583297 d!470856))

(declare-fun d!470858 () Bool)

(declare-fun res!706159 () Bool)

(declare-fun e!1017227 () Bool)

(assert (=> d!470858 (=> (not res!706159) (not e!1017227))))

(assert (=> d!470858 (= res!706159 (not (isEmpty!10432 (originalCharacters!3881 (h!22806 tokens!457)))))))

(assert (=> d!470858 (= (inv!22822 (h!22806 tokens!457)) e!1017227)))

(declare-fun b!1583564 () Bool)

(declare-fun res!706160 () Bool)

(assert (=> b!1583564 (=> (not res!706160) (not e!1017227))))

(assert (=> b!1583564 (= res!706160 (= (originalCharacters!3881 (h!22806 tokens!457)) (list!6743 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))))

(declare-fun b!1583565 () Bool)

(assert (=> b!1583565 (= e!1017227 (= (size!14000 (h!22806 tokens!457)) (size!14005 (originalCharacters!3881 (h!22806 tokens!457)))))))

(assert (= (and d!470858 res!706159) b!1583564))

(assert (= (and b!1583564 res!706160) b!1583565))

(declare-fun b_lambda!49823 () Bool)

(assert (=> (not b_lambda!49823) (not b!1583564)))

(assert (=> b!1583564 t!143970))

(declare-fun b_and!111001 () Bool)

(assert (= b_and!110997 (and (=> t!143970 result!107818) b_and!111001)))

(assert (=> b!1583564 t!143972))

(declare-fun b_and!111003 () Bool)

(assert (= b_and!110999 (and (=> t!143972 result!107822) b_and!111003)))

(declare-fun m!1870477 () Bool)

(assert (=> d!470858 m!1870477))

(assert (=> b!1583564 m!1870313))

(assert (=> b!1583564 m!1870313))

(declare-fun m!1870479 () Bool)

(assert (=> b!1583564 m!1870479))

(declare-fun m!1870481 () Bool)

(assert (=> b!1583565 m!1870481))

(assert (=> b!1583295 d!470858))

(declare-fun d!470860 () Bool)

(assert (=> d!470860 (= (inv!22818 (tag!3335 (rule!4867 (h!22806 tokens!457)))) (= (mod (str.len (value!97081 (tag!3335 (rule!4867 (h!22806 tokens!457))))) 2) 0))))

(assert (=> b!1583285 d!470860))

(declare-fun d!470862 () Bool)

(declare-fun res!706161 () Bool)

(declare-fun e!1017228 () Bool)

(assert (=> d!470862 (=> (not res!706161) (not e!1017228))))

(assert (=> d!470862 (= res!706161 (semiInverseModEq!1156 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457))))))))

(assert (=> d!470862 (= (inv!22821 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) e!1017228)))

(declare-fun b!1583566 () Bool)

(assert (=> b!1583566 (= e!1017228 (equivClasses!1097 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457))))))))

(assert (= (and d!470862 res!706161) b!1583566))

(declare-fun m!1870483 () Bool)

(assert (=> d!470862 m!1870483))

(declare-fun m!1870485 () Bool)

(assert (=> b!1583566 m!1870485))

(assert (=> b!1583285 d!470862))

(declare-fun d!470864 () Bool)

(assert (=> d!470864 (= (isDefined!2505 lt!555962) (not (isEmpty!10427 lt!555962)))))

(declare-fun bs!391189 () Bool)

(assert (= bs!391189 d!470864))

(declare-fun m!1870487 () Bool)

(assert (=> bs!391189 m!1870487))

(assert (=> b!1583296 d!470864))

(declare-fun b!1583666 () Bool)

(declare-fun e!1017291 () Unit!27203)

(declare-fun Unit!27241 () Unit!27203)

(assert (=> b!1583666 (= e!1017291 Unit!27241)))

(declare-fun b!1583663 () Bool)

(declare-fun res!706223 () Bool)

(declare-fun e!1017292 () Bool)

(assert (=> b!1583663 (=> (not res!706223) (not e!1017292))))

(declare-fun lt!556425 () Token!5700)

(declare-datatypes ((Option!3130 0))(
  ( (None!3129) (Some!3129 (v!23994 Rule!5934)) )
))
(declare-fun get!4979 (Option!3130) Rule!5934)

(declare-fun getRuleFromTag!240 (LexerInterface!2696 List!17476 String!20117) Option!3130)

(assert (=> b!1583663 (= res!706223 (matchR!1916 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))) (list!6743 (charsOf!1716 lt!556425))))))

(declare-fun d!470866 () Bool)

(assert (=> d!470866 (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959)))))

(declare-fun lt!556417 () Unit!27203)

(assert (=> d!470866 (= lt!556417 e!1017291)))

(declare-fun c!256609 () Bool)

(assert (=> d!470866 (= c!256609 (isEmpty!10427 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959))))))

(declare-fun lt!556420 () Unit!27203)

(declare-fun lt!556415 () Unit!27203)

(assert (=> d!470866 (= lt!556420 lt!556415)))

(assert (=> d!470866 e!1017292))

(declare-fun res!706222 () Bool)

(assert (=> d!470866 (=> (not res!706222) (not e!1017292))))

(declare-fun isDefined!2507 (Option!3130) Bool)

(assert (=> d!470866 (= res!706222 (isDefined!2507 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!240 (LexerInterface!2696 List!17476 List!17474 Token!5700) Unit!27203)

(assert (=> d!470866 (= lt!556415 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!240 thiss!17113 rules!1846 lt!555973 lt!556425))))

(declare-fun lt!556430 () Unit!27203)

(declare-fun lt!556421 () Unit!27203)

(assert (=> d!470866 (= lt!556430 lt!556421)))

(declare-fun lt!556416 () List!17474)

(assert (=> d!470866 (isPrefix!1327 lt!556416 (++!4529 lt!555973 lt!555959))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!126 (List!17474 List!17474 List!17474) Unit!27203)

(assert (=> d!470866 (= lt!556421 (lemmaPrefixStaysPrefixWhenAddingToSuffix!126 lt!556416 lt!555973 lt!555959))))

(assert (=> d!470866 (= lt!556416 (list!6743 (charsOf!1716 lt!556425)))))

(declare-fun lt!556429 () Unit!27203)

(declare-fun lt!556423 () Unit!27203)

(assert (=> d!470866 (= lt!556429 lt!556423)))

(declare-fun lt!556428 () List!17474)

(declare-fun lt!556426 () List!17474)

(assert (=> d!470866 (isPrefix!1327 lt!556428 (++!4529 lt!556428 lt!556426))))

(assert (=> d!470866 (= lt!556423 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!556428 lt!556426))))

(assert (=> d!470866 (= lt!556426 (_2!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 lt!555973))))))

(assert (=> d!470866 (= lt!556428 (list!6743 (charsOf!1716 lt!556425)))))

(assert (=> d!470866 (= lt!556425 (head!3205 (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(assert (=> d!470866 (not (isEmpty!10423 rules!1846))))

(assert (=> d!470866 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 thiss!17113 rules!1846 lt!555973 lt!555959) lt!556417)))

(declare-fun b!1583664 () Bool)

(assert (=> b!1583664 (= e!1017292 (= (rule!4867 lt!556425) (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))))))

(declare-fun b!1583665 () Bool)

(declare-fun Unit!27242 () Unit!27203)

(assert (=> b!1583665 (= e!1017291 Unit!27242)))

(declare-fun lt!556427 () List!17474)

(assert (=> b!1583665 (= lt!556427 (++!4529 lt!555973 lt!555959))))

(declare-fun lt!556419 () Unit!27203)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!134 (LexerInterface!2696 Rule!5934 List!17476 List!17474) Unit!27203)

(assert (=> b!1583665 (= lt!556419 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!134 thiss!17113 (rule!4867 lt!556425) rules!1846 lt!556427))))

(assert (=> b!1583665 (isEmpty!10427 (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!556425) lt!556427))))

(declare-fun lt!556418 () Unit!27203)

(assert (=> b!1583665 (= lt!556418 lt!556419)))

(declare-fun lt!556422 () List!17474)

(assert (=> b!1583665 (= lt!556422 (list!6743 (charsOf!1716 lt!556425)))))

(declare-fun lt!556431 () Unit!27203)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!130 (LexerInterface!2696 Rule!5934 List!17474 List!17474) Unit!27203)

(assert (=> b!1583665 (= lt!556431 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!130 thiss!17113 (rule!4867 lt!556425) lt!556422 (++!4529 lt!555973 lt!555959)))))

(assert (=> b!1583665 (not (matchR!1916 (regex!3067 (rule!4867 lt!556425)) lt!556422))))

(declare-fun lt!556424 () Unit!27203)

(assert (=> b!1583665 (= lt!556424 lt!556431)))

(assert (=> b!1583665 false))

(assert (= (and d!470866 res!706222) b!1583663))

(assert (= (and b!1583663 res!706223) b!1583664))

(assert (= (and d!470866 c!256609) b!1583665))

(assert (= (and d!470866 (not c!256609)) b!1583666))

(declare-fun m!1870659 () Bool)

(assert (=> b!1583663 m!1870659))

(declare-fun m!1870661 () Bool)

(assert (=> b!1583663 m!1870661))

(declare-fun m!1870663 () Bool)

(assert (=> b!1583663 m!1870663))

(declare-fun m!1870665 () Bool)

(assert (=> b!1583663 m!1870665))

(assert (=> b!1583663 m!1870665))

(declare-fun m!1870667 () Bool)

(assert (=> b!1583663 m!1870667))

(assert (=> b!1583663 m!1870663))

(assert (=> b!1583663 m!1870659))

(assert (=> d!470866 m!1870663))

(assert (=> d!470866 m!1870665))

(declare-fun m!1870669 () Bool)

(assert (=> d!470866 m!1870669))

(declare-fun m!1870671 () Bool)

(assert (=> d!470866 m!1870671))

(assert (=> d!470866 m!1869871))

(declare-fun m!1870673 () Bool)

(assert (=> d!470866 m!1870673))

(declare-fun m!1870675 () Bool)

(assert (=> d!470866 m!1870675))

(assert (=> d!470866 m!1870669))

(declare-fun m!1870677 () Bool)

(assert (=> d!470866 m!1870677))

(assert (=> d!470866 m!1870155))

(declare-fun m!1870679 () Bool)

(assert (=> d!470866 m!1870679))

(declare-fun m!1870681 () Bool)

(assert (=> d!470866 m!1870681))

(assert (=> d!470866 m!1870155))

(assert (=> d!470866 m!1869871))

(assert (=> d!470866 m!1870669))

(assert (=> d!470866 m!1869853))

(assert (=> d!470866 m!1870659))

(declare-fun m!1870683 () Bool)

(assert (=> d!470866 m!1870683))

(assert (=> d!470866 m!1869899))

(assert (=> d!470866 m!1869901))

(declare-fun m!1870685 () Bool)

(assert (=> d!470866 m!1870685))

(declare-fun m!1870687 () Bool)

(assert (=> d!470866 m!1870687))

(assert (=> d!470866 m!1870663))

(declare-fun m!1870689 () Bool)

(assert (=> d!470866 m!1870689))

(declare-fun m!1870691 () Bool)

(assert (=> d!470866 m!1870691))

(declare-fun m!1870693 () Bool)

(assert (=> d!470866 m!1870693))

(assert (=> d!470866 m!1870685))

(assert (=> d!470866 m!1870659))

(assert (=> d!470866 m!1869871))

(assert (=> d!470866 m!1870691))

(assert (=> d!470866 m!1869899))

(assert (=> b!1583664 m!1870659))

(assert (=> b!1583664 m!1870659))

(assert (=> b!1583664 m!1870661))

(declare-fun m!1870695 () Bool)

(assert (=> b!1583665 m!1870695))

(assert (=> b!1583665 m!1870663))

(assert (=> b!1583665 m!1870665))

(assert (=> b!1583665 m!1869871))

(declare-fun m!1870697 () Bool)

(assert (=> b!1583665 m!1870697))

(declare-fun m!1870699 () Bool)

(assert (=> b!1583665 m!1870699))

(declare-fun m!1870701 () Bool)

(assert (=> b!1583665 m!1870701))

(assert (=> b!1583665 m!1870663))

(assert (=> b!1583665 m!1869871))

(assert (=> b!1583665 m!1870701))

(declare-fun m!1870703 () Bool)

(assert (=> b!1583665 m!1870703))

(assert (=> b!1583296 d!470866))

(declare-fun d!470896 () Bool)

(declare-fun lt!556447 () Bool)

(declare-fun e!1017356 () Bool)

(assert (=> d!470896 (= lt!556447 e!1017356)))

(declare-fun res!706252 () Bool)

(assert (=> d!470896 (=> (not res!706252) (not e!1017356))))

(assert (=> d!470896 (= res!706252 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))))) (list!6744 (singletonSeq!1412 (h!22806 tokens!457)))))))

(declare-fun e!1017355 () Bool)

(assert (=> d!470896 (= lt!556447 e!1017355)))

(declare-fun res!706253 () Bool)

(assert (=> d!470896 (=> (not res!706253) (not e!1017355))))

(declare-fun lt!556446 () tuple2!16884)

(assert (=> d!470896 (= res!706253 (= (size!14004 (_1!9844 lt!556446)) 1))))

(assert (=> d!470896 (= lt!556446 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))))))

(assert (=> d!470896 (not (isEmpty!10423 rules!1846))))

(assert (=> d!470896 (= (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457)) lt!556447)))

(declare-fun b!1583756 () Bool)

(declare-fun res!706251 () Bool)

(assert (=> b!1583756 (=> (not res!706251) (not e!1017355))))

(assert (=> b!1583756 (= res!706251 (= (apply!4240 (_1!9844 lt!556446) 0) (h!22806 tokens!457)))))

(declare-fun b!1583757 () Bool)

(assert (=> b!1583757 (= e!1017355 (isEmpty!10433 (_2!9844 lt!556446)))))

(declare-fun b!1583758 () Bool)

(assert (=> b!1583758 (= e!1017356 (isEmpty!10433 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))))))))

(assert (= (and d!470896 res!706253) b!1583756))

(assert (= (and b!1583756 res!706251) b!1583757))

(assert (= (and d!470896 res!706252) b!1583758))

(assert (=> d!470896 m!1869853))

(assert (=> d!470896 m!1869917))

(declare-fun m!1870795 () Bool)

(assert (=> d!470896 m!1870795))

(declare-fun m!1870797 () Bool)

(assert (=> d!470896 m!1870797))

(assert (=> d!470896 m!1869917))

(declare-fun m!1870799 () Bool)

(assert (=> d!470896 m!1870799))

(declare-fun m!1870801 () Bool)

(assert (=> d!470896 m!1870801))

(assert (=> d!470896 m!1869917))

(assert (=> d!470896 m!1870795))

(declare-fun m!1870803 () Bool)

(assert (=> d!470896 m!1870803))

(declare-fun m!1870805 () Bool)

(assert (=> b!1583756 m!1870805))

(declare-fun m!1870807 () Bool)

(assert (=> b!1583757 m!1870807))

(assert (=> b!1583758 m!1869917))

(assert (=> b!1583758 m!1869917))

(assert (=> b!1583758 m!1870795))

(assert (=> b!1583758 m!1870795))

(assert (=> b!1583758 m!1870803))

(declare-fun m!1870809 () Bool)

(assert (=> b!1583758 m!1870809))

(assert (=> b!1583294 d!470896))

(declare-fun d!470922 () Bool)

(declare-fun e!1017359 () Bool)

(assert (=> d!470922 e!1017359))

(declare-fun res!706256 () Bool)

(assert (=> d!470922 (=> (not res!706256) (not e!1017359))))

(declare-fun lt!556450 () BalanceConc!11508)

(assert (=> d!470922 (= res!706256 (= (list!6743 lt!556450) (Cons!17404 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0) Nil!17404)))))

(declare-fun singleton!582 (C!8964) BalanceConc!11508)

(assert (=> d!470922 (= lt!556450 (singleton!582 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))

(assert (=> d!470922 (= (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)) lt!556450)))

(declare-fun b!1583761 () Bool)

(declare-fun isBalanced!1702 (Conc!5782) Bool)

(assert (=> b!1583761 (= e!1017359 (isBalanced!1702 (c!256547 lt!556450)))))

(assert (= (and d!470922 res!706256) b!1583761))

(declare-fun m!1870811 () Bool)

(assert (=> d!470922 m!1870811))

(assert (=> d!470922 m!1869923))

(declare-fun m!1870813 () Bool)

(assert (=> d!470922 m!1870813))

(declare-fun m!1870815 () Bool)

(assert (=> b!1583761 m!1870815))

(assert (=> b!1583293 d!470922))

(declare-fun b!1583780 () Bool)

(declare-fun res!706267 () Bool)

(declare-fun e!1017375 () Bool)

(assert (=> b!1583780 (=> (not res!706267) (not e!1017375))))

(declare-fun call!102762 () Bool)

(assert (=> b!1583780 (= res!706267 call!102762)))

(declare-fun e!1017374 () Bool)

(assert (=> b!1583780 (= e!1017374 e!1017375)))

(declare-fun bm!102755 () Bool)

(declare-fun call!102761 () Bool)

(assert (=> bm!102755 (= call!102762 call!102761)))

(declare-fun bm!102756 () Bool)

(declare-fun call!102760 () Bool)

(declare-fun c!256622 () Bool)

(assert (=> bm!102756 (= call!102760 (validRegex!1734 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))))))

(declare-fun b!1583781 () Bool)

(declare-fun e!1017378 () Bool)

(assert (=> b!1583781 (= e!1017378 call!102762)))

(declare-fun d!470924 () Bool)

(declare-fun res!706268 () Bool)

(declare-fun e!1017380 () Bool)

(assert (=> d!470924 (=> res!706268 e!1017380)))

(assert (=> d!470924 (= res!706268 ((_ is ElementMatch!4395) lt!555960))))

(assert (=> d!470924 (= (validRegex!1734 lt!555960) e!1017380)))

(declare-fun b!1583782 () Bool)

(declare-fun res!706271 () Bool)

(declare-fun e!1017379 () Bool)

(assert (=> b!1583782 (=> res!706271 e!1017379)))

(assert (=> b!1583782 (= res!706271 (not ((_ is Concat!7553) lt!555960)))))

(assert (=> b!1583782 (= e!1017374 e!1017379)))

(declare-fun c!256621 () Bool)

(declare-fun bm!102757 () Bool)

(assert (=> bm!102757 (= call!102761 (validRegex!1734 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))))))

(declare-fun b!1583783 () Bool)

(assert (=> b!1583783 (= e!1017379 e!1017378)))

(declare-fun res!706269 () Bool)

(assert (=> b!1583783 (=> (not res!706269) (not e!1017378))))

(assert (=> b!1583783 (= res!706269 call!102760)))

(declare-fun b!1583784 () Bool)

(declare-fun e!1017377 () Bool)

(assert (=> b!1583784 (= e!1017377 e!1017374)))

(assert (=> b!1583784 (= c!256622 ((_ is Union!4395) lt!555960))))

(declare-fun b!1583785 () Bool)

(declare-fun e!1017376 () Bool)

(assert (=> b!1583785 (= e!1017376 call!102761)))

(declare-fun b!1583786 () Bool)

(assert (=> b!1583786 (= e!1017380 e!1017377)))

(assert (=> b!1583786 (= c!256621 ((_ is Star!4395) lt!555960))))

(declare-fun b!1583787 () Bool)

(assert (=> b!1583787 (= e!1017377 e!1017376)))

(declare-fun res!706270 () Bool)

(declare-fun nullable!1293 (Regex!4395) Bool)

(assert (=> b!1583787 (= res!706270 (not (nullable!1293 (reg!4724 lt!555960))))))

(assert (=> b!1583787 (=> (not res!706270) (not e!1017376))))

(declare-fun b!1583788 () Bool)

(assert (=> b!1583788 (= e!1017375 call!102760)))

(assert (= (and d!470924 (not res!706268)) b!1583786))

(assert (= (and b!1583786 c!256621) b!1583787))

(assert (= (and b!1583786 (not c!256621)) b!1583784))

(assert (= (and b!1583787 res!706270) b!1583785))

(assert (= (and b!1583784 c!256622) b!1583780))

(assert (= (and b!1583784 (not c!256622)) b!1583782))

(assert (= (and b!1583780 res!706267) b!1583788))

(assert (= (and b!1583782 (not res!706271)) b!1583783))

(assert (= (and b!1583783 res!706269) b!1583781))

(assert (= (or b!1583788 b!1583783) bm!102756))

(assert (= (or b!1583780 b!1583781) bm!102755))

(assert (= (or b!1583785 bm!102755) bm!102757))

(declare-fun m!1870817 () Bool)

(assert (=> bm!102756 m!1870817))

(declare-fun m!1870819 () Bool)

(assert (=> bm!102757 m!1870819))

(declare-fun m!1870821 () Bool)

(assert (=> b!1583787 m!1870821))

(assert (=> b!1583293 d!470924))

(declare-fun d!470926 () Bool)

(declare-fun lt!556453 () C!8964)

(declare-fun apply!4245 (List!17474 Int) C!8964)

(assert (=> d!470926 (= lt!556453 (apply!4245 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) 0))))

(declare-fun apply!4246 (Conc!5782 Int) C!8964)

(assert (=> d!470926 (= lt!556453 (apply!4246 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) 0))))

(declare-fun e!1017383 () Bool)

(assert (=> d!470926 e!1017383))

(declare-fun res!706274 () Bool)

(assert (=> d!470926 (=> (not res!706274) (not e!1017383))))

(assert (=> d!470926 (= res!706274 (<= 0 0))))

(assert (=> d!470926 (= (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0) lt!556453)))

(declare-fun b!1583791 () Bool)

(assert (=> b!1583791 (= e!1017383 (< 0 (size!14006 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(assert (= (and d!470926 res!706274) b!1583791))

(assert (=> d!470926 m!1869931))

(assert (=> d!470926 m!1870367))

(assert (=> d!470926 m!1870367))

(declare-fun m!1870823 () Bool)

(assert (=> d!470926 m!1870823))

(declare-fun m!1870825 () Bool)

(assert (=> d!470926 m!1870825))

(assert (=> b!1583791 m!1869931))

(assert (=> b!1583791 m!1870451))

(assert (=> b!1583293 d!470926))

(declare-fun d!470928 () Bool)

(declare-fun e!1017386 () Bool)

(assert (=> d!470928 e!1017386))

(declare-fun res!706284 () Bool)

(assert (=> d!470928 (=> (not res!706284) (not e!1017386))))

(declare-fun appendAssocInst!387 (Conc!5782 Conc!5782) Bool)

(assert (=> d!470928 (= res!706284 (appendAssocInst!387 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun lt!556456 () BalanceConc!11508)

(declare-fun ++!4532 (Conc!5782 Conc!5782) Conc!5782)

(assert (=> d!470928 (= lt!556456 (BalanceConc!11509 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(assert (=> d!470928 (= (++!4530 lt!555977 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) lt!556456)))

(declare-fun b!1583803 () Bool)

(assert (=> b!1583803 (= e!1017386 (= (list!6743 lt!556456) (++!4529 (list!6743 lt!555977) (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1583802 () Bool)

(declare-fun res!706283 () Bool)

(assert (=> b!1583802 (=> (not res!706283) (not e!1017386))))

(declare-fun height!851 (Conc!5782) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1583802 (= res!706283 (>= (height!851 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (max!0 (height!851 (c!256547 lt!555977)) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1583800 () Bool)

(declare-fun res!706285 () Bool)

(assert (=> b!1583800 (=> (not res!706285) (not e!1017386))))

(assert (=> b!1583800 (= res!706285 (isBalanced!1702 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1583801 () Bool)

(declare-fun res!706286 () Bool)

(assert (=> b!1583801 (=> (not res!706286) (not e!1017386))))

(assert (=> b!1583801 (= res!706286 (<= (height!851 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (+ (max!0 (height!851 (c!256547 lt!555977)) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) 1)))))

(assert (= (and d!470928 res!706284) b!1583800))

(assert (= (and b!1583800 res!706285) b!1583801))

(assert (= (and b!1583801 res!706286) b!1583802))

(assert (= (and b!1583802 res!706283) b!1583803))

(declare-fun m!1870827 () Bool)

(assert (=> b!1583800 m!1870827))

(assert (=> b!1583800 m!1870827))

(declare-fun m!1870829 () Bool)

(assert (=> b!1583800 m!1870829))

(declare-fun m!1870831 () Bool)

(assert (=> d!470928 m!1870831))

(assert (=> d!470928 m!1870827))

(declare-fun m!1870833 () Bool)

(assert (=> b!1583801 m!1870833))

(declare-fun m!1870835 () Bool)

(assert (=> b!1583801 m!1870835))

(assert (=> b!1583801 m!1870827))

(declare-fun m!1870837 () Bool)

(assert (=> b!1583801 m!1870837))

(assert (=> b!1583801 m!1870827))

(assert (=> b!1583801 m!1870833))

(assert (=> b!1583801 m!1870835))

(declare-fun m!1870839 () Bool)

(assert (=> b!1583801 m!1870839))

(assert (=> b!1583802 m!1870833))

(assert (=> b!1583802 m!1870835))

(assert (=> b!1583802 m!1870827))

(assert (=> b!1583802 m!1870837))

(assert (=> b!1583802 m!1870827))

(assert (=> b!1583802 m!1870833))

(assert (=> b!1583802 m!1870835))

(assert (=> b!1583802 m!1870839))

(declare-fun m!1870841 () Bool)

(assert (=> b!1583803 m!1870841))

(assert (=> b!1583803 m!1869885))

(assert (=> b!1583803 m!1869925))

(declare-fun m!1870843 () Bool)

(assert (=> b!1583803 m!1870843))

(assert (=> b!1583803 m!1869885))

(assert (=> b!1583803 m!1870843))

(declare-fun m!1870845 () Bool)

(assert (=> b!1583803 m!1870845))

(assert (=> b!1583293 d!470928))

(declare-fun d!470930 () Bool)

(declare-fun lt!556459 () Unit!27203)

(declare-fun lemma!195 (List!17476 LexerInterface!2696 List!17476) Unit!27203)

(assert (=> d!470930 (= lt!556459 (lemma!195 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66526 () Int)

(declare-datatypes ((List!17480 0))(
  ( (Nil!17410) (Cons!17410 (h!22811 Regex!4395) (t!144007 List!17480)) )
))
(declare-fun generalisedUnion!203 (List!17480) Regex!4395)

(declare-fun map!3608 (List!17476 Int) List!17480)

(assert (=> d!470930 (= (rulesRegex!457 thiss!17113 rules!1846) (generalisedUnion!203 (map!3608 rules!1846 lambda!66526)))))

(declare-fun bs!391201 () Bool)

(assert (= bs!391201 d!470930))

(declare-fun m!1870847 () Bool)

(assert (=> bs!391201 m!1870847))

(declare-fun m!1870849 () Bool)

(assert (=> bs!391201 m!1870849))

(assert (=> bs!391201 m!1870849))

(declare-fun m!1870851 () Bool)

(assert (=> bs!391201 m!1870851))

(assert (=> b!1583293 d!470930))

(declare-fun d!470932 () Bool)

(declare-fun lt!556460 () BalanceConc!11508)

(assert (=> d!470932 (= (list!6743 lt!556460) (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))))

(assert (=> d!470932 (= lt!556460 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!470932 (= (charsOf!1716 (h!22806 (t!143960 tokens!457))) lt!556460)))

(declare-fun b_lambda!49837 () Bool)

(assert (=> (not b_lambda!49837) (not d!470932)))

(declare-fun t!143993 () Bool)

(declare-fun tb!89099 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) t!143993) tb!89099))

(declare-fun b!1583804 () Bool)

(declare-fun e!1017387 () Bool)

(declare-fun tp!465952 () Bool)

(assert (=> b!1583804 (= e!1017387 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))) tp!465952))))

(declare-fun result!107850 () Bool)

(assert (=> tb!89099 (= result!107850 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))) e!1017387))))

(assert (= tb!89099 b!1583804))

(declare-fun m!1870853 () Bool)

(assert (=> b!1583804 m!1870853))

(declare-fun m!1870855 () Bool)

(assert (=> tb!89099 m!1870855))

(assert (=> d!470932 t!143993))

(declare-fun b_and!111025 () Bool)

(assert (= b_and!111001 (and (=> t!143993 result!107850) b_and!111025)))

(declare-fun t!143995 () Bool)

(declare-fun tb!89101 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) t!143995) tb!89101))

(declare-fun result!107852 () Bool)

(assert (= result!107852 result!107850))

(assert (=> d!470932 t!143995))

(declare-fun b_and!111027 () Bool)

(assert (= b_and!111003 (and (=> t!143995 result!107852) b_and!111027)))

(declare-fun m!1870857 () Bool)

(assert (=> d!470932 m!1870857))

(declare-fun m!1870859 () Bool)

(assert (=> d!470932 m!1870859))

(assert (=> b!1583293 d!470932))

(declare-fun d!470934 () Bool)

(assert (=> d!470934 (= (isEmpty!10423 rules!1846) ((_ is Nil!17406) rules!1846))))

(assert (=> b!1583304 d!470934))

(declare-fun b!1583809 () Bool)

(declare-fun e!1017390 () Bool)

(declare-fun tp_is_empty!7193 () Bool)

(declare-fun tp!465955 () Bool)

(assert (=> b!1583809 (= e!1017390 (and tp_is_empty!7193 tp!465955))))

(assert (=> b!1583291 (= tp!465887 e!1017390)))

(assert (= (and b!1583291 ((_ is Cons!17404) (originalCharacters!3881 (h!22806 tokens!457)))) b!1583809))

(declare-fun b!1583823 () Bool)

(declare-fun b_free!42823 () Bool)

(declare-fun b_next!43527 () Bool)

(assert (=> b!1583823 (= b_free!42823 (not b_next!43527))))

(declare-fun tp!465969 () Bool)

(declare-fun b_and!111029 () Bool)

(assert (=> b!1583823 (= tp!465969 b_and!111029)))

(declare-fun b_free!42825 () Bool)

(declare-fun b_next!43529 () Bool)

(assert (=> b!1583823 (= b_free!42825 (not b_next!43529))))

(declare-fun t!143997 () Bool)

(declare-fun tb!89103 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) t!143997) tb!89103))

(declare-fun result!107858 () Bool)

(assert (= result!107858 result!107818))

(assert (=> d!470822 t!143997))

(assert (=> b!1583564 t!143997))

(declare-fun t!143999 () Bool)

(declare-fun tb!89105 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) t!143999) tb!89105))

(declare-fun result!107860 () Bool)

(assert (= result!107860 result!107850))

(assert (=> d!470932 t!143999))

(declare-fun tp!465970 () Bool)

(declare-fun b_and!111031 () Bool)

(assert (=> b!1583823 (= tp!465970 (and (=> t!143997 result!107858) (=> t!143999 result!107860) b_and!111031))))

(declare-fun e!1017404 () Bool)

(assert (=> b!1583295 (= tp!465889 e!1017404)))

(declare-fun b!1583820 () Bool)

(declare-fun e!1017406 () Bool)

(declare-fun tp!465966 () Bool)

(assert (=> b!1583820 (= e!1017404 (and (inv!22822 (h!22806 (t!143960 tokens!457))) e!1017406 tp!465966))))

(declare-fun e!1017408 () Bool)

(declare-fun e!1017403 () Bool)

(declare-fun b!1583822 () Bool)

(declare-fun tp!465967 () Bool)

(assert (=> b!1583822 (= e!1017403 (and tp!465967 (inv!22818 (tag!3335 (rule!4867 (h!22806 (t!143960 tokens!457))))) (inv!22821 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) e!1017408))))

(declare-fun b!1583821 () Bool)

(declare-fun tp!465968 () Bool)

(assert (=> b!1583821 (= e!1017406 (and (inv!21 (value!97082 (h!22806 (t!143960 tokens!457)))) e!1017403 tp!465968))))

(assert (=> b!1583823 (= e!1017408 (and tp!465969 tp!465970))))

(assert (= b!1583822 b!1583823))

(assert (= b!1583821 b!1583822))

(assert (= b!1583820 b!1583821))

(assert (= (and b!1583295 ((_ is Cons!17405) (t!143960 tokens!457))) b!1583820))

(declare-fun m!1870861 () Bool)

(assert (=> b!1583820 m!1870861))

(declare-fun m!1870863 () Bool)

(assert (=> b!1583822 m!1870863))

(declare-fun m!1870865 () Bool)

(assert (=> b!1583822 m!1870865))

(declare-fun m!1870867 () Bool)

(assert (=> b!1583821 m!1870867))

(declare-fun b!1583835 () Bool)

(declare-fun e!1017411 () Bool)

(declare-fun tp!465981 () Bool)

(declare-fun tp!465985 () Bool)

(assert (=> b!1583835 (= e!1017411 (and tp!465981 tp!465985))))

(declare-fun b!1583837 () Bool)

(declare-fun tp!465982 () Bool)

(declare-fun tp!465984 () Bool)

(assert (=> b!1583837 (= e!1017411 (and tp!465982 tp!465984))))

(declare-fun b!1583834 () Bool)

(assert (=> b!1583834 (= e!1017411 tp_is_empty!7193)))

(declare-fun b!1583836 () Bool)

(declare-fun tp!465983 () Bool)

(assert (=> b!1583836 (= e!1017411 tp!465983)))

(assert (=> b!1583285 (= tp!465894 e!1017411)))

(assert (= (and b!1583285 ((_ is ElementMatch!4395) (regex!3067 (rule!4867 (h!22806 tokens!457))))) b!1583834))

(assert (= (and b!1583285 ((_ is Concat!7553) (regex!3067 (rule!4867 (h!22806 tokens!457))))) b!1583835))

(assert (= (and b!1583285 ((_ is Star!4395) (regex!3067 (rule!4867 (h!22806 tokens!457))))) b!1583836))

(assert (= (and b!1583285 ((_ is Union!4395) (regex!3067 (rule!4867 (h!22806 tokens!457))))) b!1583837))

(declare-fun b!1583839 () Bool)

(declare-fun e!1017412 () Bool)

(declare-fun tp!465986 () Bool)

(declare-fun tp!465990 () Bool)

(assert (=> b!1583839 (= e!1017412 (and tp!465986 tp!465990))))

(declare-fun b!1583841 () Bool)

(declare-fun tp!465987 () Bool)

(declare-fun tp!465989 () Bool)

(assert (=> b!1583841 (= e!1017412 (and tp!465987 tp!465989))))

(declare-fun b!1583838 () Bool)

(assert (=> b!1583838 (= e!1017412 tp_is_empty!7193)))

(declare-fun b!1583840 () Bool)

(declare-fun tp!465988 () Bool)

(assert (=> b!1583840 (= e!1017412 tp!465988)))

(assert (=> b!1583301 (= tp!465886 e!1017412)))

(assert (= (and b!1583301 ((_ is ElementMatch!4395) (regex!3067 (h!22807 rules!1846)))) b!1583838))

(assert (= (and b!1583301 ((_ is Concat!7553) (regex!3067 (h!22807 rules!1846)))) b!1583839))

(assert (= (and b!1583301 ((_ is Star!4395) (regex!3067 (h!22807 rules!1846)))) b!1583840))

(assert (= (and b!1583301 ((_ is Union!4395) (regex!3067 (h!22807 rules!1846)))) b!1583841))

(declare-fun b!1583852 () Bool)

(declare-fun b_free!42827 () Bool)

(declare-fun b_next!43531 () Bool)

(assert (=> b!1583852 (= b_free!42827 (not b_next!43531))))

(declare-fun tp!465999 () Bool)

(declare-fun b_and!111033 () Bool)

(assert (=> b!1583852 (= tp!465999 b_and!111033)))

(declare-fun b_free!42829 () Bool)

(declare-fun b_next!43533 () Bool)

(assert (=> b!1583852 (= b_free!42829 (not b_next!43533))))

(declare-fun t!144001 () Bool)

(declare-fun tb!89107 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) t!144001) tb!89107))

(declare-fun result!107866 () Bool)

(assert (= result!107866 result!107818))

(assert (=> d!470822 t!144001))

(assert (=> b!1583564 t!144001))

(declare-fun t!144003 () Bool)

(declare-fun tb!89109 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) t!144003) tb!89109))

(declare-fun result!107868 () Bool)

(assert (= result!107868 result!107850))

(assert (=> d!470932 t!144003))

(declare-fun tp!466002 () Bool)

(declare-fun b_and!111035 () Bool)

(assert (=> b!1583852 (= tp!466002 (and (=> t!144001 result!107866) (=> t!144003 result!107868) b_and!111035))))

(declare-fun e!1017422 () Bool)

(assert (=> b!1583852 (= e!1017422 (and tp!465999 tp!466002))))

(declare-fun e!1017424 () Bool)

(declare-fun b!1583851 () Bool)

(declare-fun tp!466000 () Bool)

(assert (=> b!1583851 (= e!1017424 (and tp!466000 (inv!22818 (tag!3335 (h!22807 (t!143961 rules!1846)))) (inv!22821 (transformation!3067 (h!22807 (t!143961 rules!1846)))) e!1017422))))

(declare-fun b!1583850 () Bool)

(declare-fun e!1017423 () Bool)

(declare-fun tp!466001 () Bool)

(assert (=> b!1583850 (= e!1017423 (and e!1017424 tp!466001))))

(assert (=> b!1583299 (= tp!465892 e!1017423)))

(assert (= b!1583851 b!1583852))

(assert (= b!1583850 b!1583851))

(assert (= (and b!1583299 ((_ is Cons!17406) (t!143961 rules!1846))) b!1583850))

(declare-fun m!1870869 () Bool)

(assert (=> b!1583851 m!1870869))

(declare-fun m!1870871 () Bool)

(assert (=> b!1583851 m!1870871))

(declare-fun b_lambda!49839 () Bool)

(assert (= b_lambda!49821 (or (and b!1583303 b_free!42809 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) (and b!1583288 b_free!42813) (and b!1583823 b_free!42825 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) (and b!1583852 b_free!42829 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) b_lambda!49839)))

(declare-fun b_lambda!49841 () Bool)

(assert (= b_lambda!49837 (or (and b!1583303 b_free!42809 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1583288 b_free!42813 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1583823 b_free!42825) (and b!1583852 b_free!42829 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) b_lambda!49841)))

(declare-fun b_lambda!49843 () Bool)

(assert (= b_lambda!49823 (or (and b!1583303 b_free!42809 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) (and b!1583288 b_free!42813) (and b!1583823 b_free!42825 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) (and b!1583852 b_free!42829 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) b_lambda!49843)))

(check-sat (not b!1583839) (not d!470780) (not d!470850) (not b!1583802) (not b!1583489) b_and!111031 b_and!111029 (not d!470856) b_and!111027 (not b!1583809) (not d!470932) (not d!470812) (not b!1583837) (not b!1583317) (not b!1583490) (not b!1583403) (not d!470834) (not b!1583506) (not d!470848) (not d!470852) (not b!1583398) (not b!1583835) (not tb!89079) b_and!111025 (not d!470828) (not b!1583531) (not b!1583820) (not bm!102757) (not d!470928) (not b!1583565) (not b!1583406) (not b!1583430) (not b!1583549) (not d!470750) (not d!470930) (not b!1583564) (not b!1583801) (not d!470830) (not b_next!43533) (not b!1583803) (not b!1583402) (not d!470784) (not b!1583841) (not b!1583542) (not d!470748) (not b!1583836) (not d!470922) (not b!1583315) (not d!470826) (not b!1583488) b_and!111033 (not d!470844) (not d!470818) (not d!470864) (not b_next!43517) (not b!1583318) (not tb!89099) (not bm!102756) (not d!470824) (not d!470816) (not b!1583800) (not b!1583758) (not d!470866) (not b!1583665) (not b_next!43513) (not d!470792) (not b!1583557) (not b_next!43531) (not b!1583756) b_and!110989 (not b!1583496) (not b!1583399) (not b!1583411) (not d!470774) (not d!470858) (not b!1583428) (not b!1583761) (not b!1583663) (not d!470790) (not d!470814) (not b!1583347) (not b_next!43511) (not b_next!43529) (not b!1583472) (not d!470782) (not b!1583664) (not b!1583822) (not b!1583436) (not d!470926) (not b!1583851) (not b!1583345) (not d!470752) (not d!470832) (not b!1583532) b_and!110993 (not d!470822) (not d!470772) (not b!1583787) (not b!1583473) (not b!1583405) (not d!470762) (not b!1583543) (not b_next!43515) (not b!1583544) (not b_lambda!49841) (not b!1583840) (not b!1583507) (not d!470854) (not d!470896) (not d!470820) tp_is_empty!7193 (not d!470862) (not b!1583550) (not b!1583404) (not b!1583400) (not b_lambda!49839) (not b!1583791) (not d!470788) (not b!1583427) b_and!111035 (not bm!102739) (not b_lambda!49843) (not b!1583821) (not b!1583415) (not b!1583433) (not b!1583491) (not b!1583804) (not b!1583429) (not b!1583757) (not b_next!43527) (not b!1583850) (not b!1583566) (not b!1583482))
(check-sat b_and!111027 b_and!111025 (not b_next!43533) b_and!111033 (not b_next!43517) (not b_next!43513) b_and!110993 (not b_next!43515) b_and!111035 (not b_next!43527) b_and!111031 b_and!111029 (not b_next!43531) b_and!110989 (not b_next!43511) (not b_next!43529))
(get-model)

(declare-fun d!470966 () Bool)

(assert (=> d!470966 (= (list!6743 (_2!9844 lt!556158)) (list!6747 (c!256547 (_2!9844 lt!556158))))))

(declare-fun bs!391204 () Bool)

(assert (= bs!391204 d!470966))

(declare-fun m!1870973 () Bool)

(assert (=> bs!391204 m!1870973))

(assert (=> b!1583488 d!470966))

(declare-fun b!1583984 () Bool)

(declare-fun e!1017510 () Bool)

(declare-fun lt!556493 () tuple2!16888)

(assert (=> b!1583984 (= e!1017510 (not (isEmpty!10428 (_1!9846 lt!556493))))))

(declare-fun b!1583985 () Bool)

(declare-fun e!1017512 () Bool)

(assert (=> b!1583985 (= e!1017512 e!1017510)))

(declare-fun res!706368 () Bool)

(assert (=> b!1583985 (= res!706368 (< (size!14005 (_2!9846 lt!556493)) (size!14005 (list!6743 lt!555961))))))

(assert (=> b!1583985 (=> (not res!706368) (not e!1017510))))

(declare-fun b!1583986 () Bool)

(declare-fun e!1017511 () tuple2!16888)

(declare-fun lt!556494 () Option!3128)

(declare-fun lt!556492 () tuple2!16888)

(assert (=> b!1583986 (= e!1017511 (tuple2!16889 (Cons!17405 (_1!9845 (v!23986 lt!556494)) (_1!9846 lt!556492)) (_2!9846 lt!556492)))))

(assert (=> b!1583986 (= lt!556492 (lexList!784 thiss!17113 rules!1846 (_2!9845 (v!23986 lt!556494))))))

(declare-fun d!470968 () Bool)

(assert (=> d!470968 e!1017512))

(declare-fun c!256656 () Bool)

(declare-fun size!14007 (List!17475) Int)

(assert (=> d!470968 (= c!256656 (> (size!14007 (_1!9846 lt!556493)) 0))))

(assert (=> d!470968 (= lt!556493 e!1017511)))

(declare-fun c!256655 () Bool)

(assert (=> d!470968 (= c!256655 ((_ is Some!3127) lt!556494))))

(assert (=> d!470968 (= lt!556494 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 lt!555961)))))

(assert (=> d!470968 (= (lexList!784 thiss!17113 rules!1846 (list!6743 lt!555961)) lt!556493)))

(declare-fun b!1583987 () Bool)

(assert (=> b!1583987 (= e!1017511 (tuple2!16889 Nil!17405 (list!6743 lt!555961)))))

(declare-fun b!1583988 () Bool)

(assert (=> b!1583988 (= e!1017512 (= (_2!9846 lt!556493) (list!6743 lt!555961)))))

(assert (= (and d!470968 c!256655) b!1583986))

(assert (= (and d!470968 (not c!256655)) b!1583987))

(assert (= (and d!470968 c!256656) b!1583985))

(assert (= (and d!470968 (not c!256656)) b!1583988))

(assert (= (and b!1583985 res!706368) b!1583984))

(declare-fun m!1870975 () Bool)

(assert (=> b!1583984 m!1870975))

(declare-fun m!1870977 () Bool)

(assert (=> b!1583985 m!1870977))

(assert (=> b!1583985 m!1869873))

(declare-fun m!1870979 () Bool)

(assert (=> b!1583985 m!1870979))

(declare-fun m!1870981 () Bool)

(assert (=> b!1583986 m!1870981))

(declare-fun m!1870983 () Bool)

(assert (=> d!470968 m!1870983))

(assert (=> d!470968 m!1869873))

(declare-fun m!1870985 () Bool)

(assert (=> d!470968 m!1870985))

(assert (=> b!1583488 d!470968))

(assert (=> b!1583488 d!470814))

(declare-fun d!470970 () Bool)

(declare-fun res!706369 () Bool)

(declare-fun e!1017513 () Bool)

(assert (=> d!470970 (=> (not res!706369) (not e!1017513))))

(assert (=> d!470970 (= res!706369 (not (isEmpty!10432 (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!470970 (= (inv!22822 (h!22806 (t!143960 tokens!457))) e!1017513)))

(declare-fun b!1583989 () Bool)

(declare-fun res!706370 () Bool)

(assert (=> b!1583989 (=> (not res!706370) (not e!1017513))))

(assert (=> b!1583989 (= res!706370 (= (originalCharacters!3881 (h!22806 (t!143960 tokens!457))) (list!6743 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1583990 () Bool)

(assert (=> b!1583990 (= e!1017513 (= (size!14000 (h!22806 (t!143960 tokens!457))) (size!14005 (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))))))

(assert (= (and d!470970 res!706369) b!1583989))

(assert (= (and b!1583989 res!706370) b!1583990))

(declare-fun b_lambda!49849 () Bool)

(assert (=> (not b_lambda!49849) (not b!1583989)))

(assert (=> b!1583989 t!143993))

(declare-fun b_and!111045 () Bool)

(assert (= b_and!111025 (and (=> t!143993 result!107850) b_and!111045)))

(assert (=> b!1583989 t!143995))

(declare-fun b_and!111047 () Bool)

(assert (= b_and!111027 (and (=> t!143995 result!107852) b_and!111047)))

(assert (=> b!1583989 t!143999))

(declare-fun b_and!111049 () Bool)

(assert (= b_and!111031 (and (=> t!143999 result!107860) b_and!111049)))

(assert (=> b!1583989 t!144003))

(declare-fun b_and!111051 () Bool)

(assert (= b_and!111035 (and (=> t!144003 result!107868) b_and!111051)))

(declare-fun m!1870987 () Bool)

(assert (=> d!470970 m!1870987))

(assert (=> b!1583989 m!1870859))

(assert (=> b!1583989 m!1870859))

(declare-fun m!1870989 () Bool)

(assert (=> b!1583989 m!1870989))

(declare-fun m!1870991 () Bool)

(assert (=> b!1583990 m!1870991))

(assert (=> b!1583820 d!470970))

(declare-fun d!470972 () Bool)

(declare-fun e!1017516 () Bool)

(assert (=> d!470972 e!1017516))

(declare-fun res!706373 () Bool)

(assert (=> d!470972 (=> (not res!706373) (not e!1017516))))

(declare-fun lt!556497 () BalanceConc!11510)

(assert (=> d!470972 (= res!706373 (= (list!6744 lt!556497) tokens!457))))

(declare-fun fromList!363 (List!17475) Conc!5783)

(assert (=> d!470972 (= lt!556497 (BalanceConc!11511 (fromList!363 tokens!457)))))

(assert (=> d!470972 (= (fromListB!806 tokens!457) lt!556497)))

(declare-fun b!1583993 () Bool)

(assert (=> b!1583993 (= e!1017516 (isBalanced!1700 (fromList!363 tokens!457)))))

(assert (= (and d!470972 res!706373) b!1583993))

(declare-fun m!1870993 () Bool)

(assert (=> d!470972 m!1870993))

(declare-fun m!1870995 () Bool)

(assert (=> d!470972 m!1870995))

(assert (=> b!1583993 m!1870995))

(assert (=> b!1583993 m!1870995))

(declare-fun m!1870997 () Bool)

(assert (=> b!1583993 m!1870997))

(assert (=> d!470818 d!470972))

(declare-fun d!470974 () Bool)

(assert (=> d!470974 (= (list!6743 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))) (list!6747 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))))

(declare-fun bs!391205 () Bool)

(assert (= bs!391205 d!470974))

(declare-fun m!1870999 () Bool)

(assert (=> bs!391205 m!1870999))

(assert (=> b!1583564 d!470974))

(declare-fun d!470976 () Bool)

(declare-fun lt!556504 () Int)

(assert (=> d!470976 (>= lt!556504 0)))

(declare-fun e!1017529 () Int)

(assert (=> d!470976 (= lt!556504 e!1017529)))

(declare-fun c!256668 () Bool)

(assert (=> d!470976 (= c!256668 ((_ is Nil!17404) lt!555976))))

(assert (=> d!470976 (= (size!14005 lt!555976) lt!556504)))

(declare-fun b!1584019 () Bool)

(assert (=> b!1584019 (= e!1017529 0)))

(declare-fun b!1584020 () Bool)

(assert (=> b!1584020 (= e!1017529 (+ 1 (size!14005 (t!143959 lt!555976))))))

(assert (= (and d!470976 c!256668) b!1584019))

(assert (= (and d!470976 (not c!256668)) b!1584020))

(declare-fun m!1871001 () Bool)

(assert (=> b!1584020 m!1871001))

(assert (=> b!1583544 d!470976))

(declare-fun d!470978 () Bool)

(declare-fun lt!556505 () Int)

(assert (=> d!470978 (>= lt!556505 0)))

(declare-fun e!1017530 () Int)

(assert (=> d!470978 (= lt!556505 e!1017530)))

(declare-fun c!256669 () Bool)

(assert (=> d!470978 (= c!256669 ((_ is Nil!17404) lt!555973))))

(assert (=> d!470978 (= (size!14005 lt!555973) lt!556505)))

(declare-fun b!1584021 () Bool)

(assert (=> b!1584021 (= e!1017530 0)))

(declare-fun b!1584022 () Bool)

(assert (=> b!1584022 (= e!1017530 (+ 1 (size!14005 (t!143959 lt!555973))))))

(assert (= (and d!470978 c!256669) b!1584021))

(assert (= (and d!470978 (not c!256669)) b!1584022))

(declare-fun m!1871003 () Bool)

(assert (=> b!1584022 m!1871003))

(assert (=> b!1583544 d!470978))

(assert (=> d!470834 d!470934))

(declare-fun d!470980 () Bool)

(declare-fun e!1017533 () Bool)

(assert (=> d!470980 e!1017533))

(declare-fun res!706379 () Bool)

(assert (=> d!470980 (=> (not res!706379) (not e!1017533))))

(declare-fun e!1017531 () Bool)

(assert (=> d!470980 (= res!706379 e!1017531)))

(declare-fun c!256670 () Bool)

(declare-fun lt!556506 () tuple2!16884)

(assert (=> d!470980 (= c!256670 (> (size!14004 (_1!9844 lt!556506)) 0))))

(assert (=> d!470980 (= lt!556506 (lexTailRecV2!507 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))) (BalanceConc!11509 Empty!5782) (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))) (BalanceConc!11511 Empty!5783)))))

(assert (=> d!470980 (= (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)))) lt!556506)))

(declare-fun b!1584023 () Bool)

(assert (=> b!1584023 (= e!1017531 (= (_2!9844 lt!556506) (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)))))))

(declare-fun b!1584024 () Bool)

(assert (=> b!1584024 (= e!1017533 (= (list!6743 (_2!9844 lt!556506)) (_2!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))))))

(declare-fun b!1584025 () Bool)

(declare-fun e!1017532 () Bool)

(assert (=> b!1584025 (= e!1017531 e!1017532)))

(declare-fun res!706381 () Bool)

(assert (=> b!1584025 (= res!706381 (< (size!14006 (_2!9844 lt!556506)) (size!14006 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))))

(assert (=> b!1584025 (=> (not res!706381) (not e!1017532))))

(declare-fun b!1584026 () Bool)

(assert (=> b!1584026 (= e!1017532 (not (isEmpty!10422 (_1!9844 lt!556506))))))

(declare-fun b!1584027 () Bool)

(declare-fun res!706380 () Bool)

(assert (=> b!1584027 (=> (not res!706380) (not e!1017533))))

(assert (=> b!1584027 (= res!706380 (= (list!6744 (_1!9844 lt!556506)) (_1!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))))))

(assert (= (and d!470980 c!256670) b!1584025))

(assert (= (and d!470980 (not c!256670)) b!1584023))

(assert (= (and b!1584025 res!706381) b!1584026))

(assert (= (and d!470980 res!706379) b!1584027))

(assert (= (and b!1584027 res!706380) b!1584024))

(declare-fun m!1871005 () Bool)

(assert (=> b!1584027 m!1871005))

(assert (=> b!1584027 m!1870355))

(declare-fun m!1871007 () Bool)

(assert (=> b!1584027 m!1871007))

(assert (=> b!1584027 m!1871007))

(declare-fun m!1871009 () Bool)

(assert (=> b!1584027 m!1871009))

(declare-fun m!1871011 () Bool)

(assert (=> b!1584026 m!1871011))

(declare-fun m!1871013 () Bool)

(assert (=> b!1584025 m!1871013))

(assert (=> b!1584025 m!1870355))

(declare-fun m!1871015 () Bool)

(assert (=> b!1584025 m!1871015))

(declare-fun m!1871017 () Bool)

(assert (=> d!470980 m!1871017))

(assert (=> d!470980 m!1870355))

(assert (=> d!470980 m!1870355))

(declare-fun m!1871019 () Bool)

(assert (=> d!470980 m!1871019))

(declare-fun m!1871023 () Bool)

(assert (=> b!1584024 m!1871023))

(assert (=> b!1584024 m!1870355))

(assert (=> b!1584024 m!1871007))

(assert (=> b!1584024 m!1871007))

(assert (=> b!1584024 m!1871009))

(assert (=> d!470834 d!470980))

(declare-fun d!470982 () Bool)

(declare-fun lt!556507 () BalanceConc!11508)

(assert (=> d!470982 (= (list!6743 lt!556507) (printList!811 thiss!17113 (list!6744 (seqFromList!1883 (t!143960 tokens!457)))))))

(assert (=> d!470982 (= lt!556507 (printTailRec!749 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)) 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!470982 (= (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))) lt!556507)))

(declare-fun bs!391206 () Bool)

(assert (= bs!391206 d!470982))

(declare-fun m!1871029 () Bool)

(assert (=> bs!391206 m!1871029))

(assert (=> bs!391206 m!1869883))

(declare-fun m!1871031 () Bool)

(assert (=> bs!391206 m!1871031))

(assert (=> bs!391206 m!1871031))

(declare-fun m!1871033 () Bool)

(assert (=> bs!391206 m!1871033))

(assert (=> bs!391206 m!1869883))

(declare-fun m!1871039 () Bool)

(assert (=> bs!391206 m!1871039))

(assert (=> d!470834 d!470982))

(assert (=> d!470834 d!470824))

(declare-fun d!470984 () Bool)

(assert (=> d!470984 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)))))) (list!6748 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))))))

(declare-fun bs!391207 () Bool)

(assert (= bs!391207 d!470984))

(declare-fun m!1871043 () Bool)

(assert (=> bs!391207 m!1871043))

(assert (=> d!470834 d!470984))

(declare-fun d!470986 () Bool)

(assert (=> d!470986 (= (list!6744 lt!556080) (list!6748 (c!256549 lt!556080)))))

(declare-fun bs!391208 () Bool)

(assert (= bs!391208 d!470986))

(declare-fun m!1871047 () Bool)

(assert (=> bs!391208 m!1871047))

(assert (=> d!470772 d!470986))

(declare-fun d!470988 () Bool)

(declare-fun e!1017539 () Bool)

(assert (=> d!470988 e!1017539))

(declare-fun res!706386 () Bool)

(assert (=> d!470988 (=> (not res!706386) (not e!1017539))))

(declare-fun lt!556512 () BalanceConc!11510)

(assert (=> d!470988 (= res!706386 (= (list!6744 lt!556512) (Cons!17405 (h!22806 tokens!457) Nil!17405)))))

(declare-fun choose!9477 (Token!5700) BalanceConc!11510)

(assert (=> d!470988 (= lt!556512 (choose!9477 (h!22806 tokens!457)))))

(assert (=> d!470988 (= (singleton!580 (h!22806 tokens!457)) lt!556512)))

(declare-fun b!1584035 () Bool)

(assert (=> b!1584035 (= e!1017539 (isBalanced!1700 (c!256549 lt!556512)))))

(assert (= (and d!470988 res!706386) b!1584035))

(declare-fun m!1871083 () Bool)

(assert (=> d!470988 m!1871083))

(declare-fun m!1871085 () Bool)

(assert (=> d!470988 m!1871085))

(declare-fun m!1871087 () Bool)

(assert (=> b!1584035 m!1871087))

(assert (=> d!470772 d!470988))

(declare-fun d!470998 () Bool)

(assert (=> d!470998 true))

(declare-fun lambda!66529 () Int)

(declare-fun order!10281 () Int)

(declare-fun dynLambda!7728 (Int Int) Int)

(assert (=> d!470998 (< (dynLambda!7723 order!10273 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) (dynLambda!7728 order!10281 lambda!66529))))

(assert (=> d!470998 true))

(assert (=> d!470998 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) (dynLambda!7728 order!10281 lambda!66529))))

(declare-fun Forall!633 (Int) Bool)

(assert (=> d!470998 (= (semiInverseModEq!1156 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) (Forall!633 lambda!66529))))

(declare-fun bs!391211 () Bool)

(assert (= bs!391211 d!470998))

(declare-fun m!1871103 () Bool)

(assert (=> bs!391211 m!1871103))

(assert (=> d!470862 d!470998))

(declare-fun bs!391217 () Bool)

(declare-fun d!471006 () Bool)

(assert (= bs!391217 (and d!471006 d!470930)))

(declare-fun lambda!66534 () Int)

(assert (=> bs!391217 (= lambda!66534 lambda!66526)))

(declare-fun lambda!66535 () Int)

(declare-fun forall!4001 (List!17480 Int) Bool)

(assert (=> d!471006 (forall!4001 (map!3608 rules!1846 lambda!66534) lambda!66535)))

(declare-fun lt!556525 () Unit!27203)

(declare-fun e!1017548 () Unit!27203)

(assert (=> d!471006 (= lt!556525 e!1017548)))

(declare-fun c!256675 () Bool)

(assert (=> d!471006 (= c!256675 ((_ is Nil!17406) rules!1846))))

(assert (=> d!471006 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!471006 (= (lemma!195 rules!1846 thiss!17113 rules!1846) lt!556525)))

(declare-fun b!1584052 () Bool)

(declare-fun Unit!27246 () Unit!27203)

(assert (=> b!1584052 (= e!1017548 Unit!27246)))

(declare-fun b!1584053 () Bool)

(declare-fun Unit!27247 () Unit!27203)

(assert (=> b!1584053 (= e!1017548 Unit!27247)))

(declare-fun lt!556526 () Unit!27203)

(assert (=> b!1584053 (= lt!556526 (lemma!195 rules!1846 thiss!17113 (t!143961 rules!1846)))))

(assert (= (and d!471006 c!256675) b!1584052))

(assert (= (and d!471006 (not c!256675)) b!1584053))

(declare-fun m!1871125 () Bool)

(assert (=> d!471006 m!1871125))

(assert (=> d!471006 m!1871125))

(declare-fun m!1871127 () Bool)

(assert (=> d!471006 m!1871127))

(assert (=> d!471006 m!1870111))

(declare-fun m!1871129 () Bool)

(assert (=> b!1584053 m!1871129))

(assert (=> d!470930 d!471006))

(declare-fun bs!391218 () Bool)

(declare-fun d!471020 () Bool)

(assert (= bs!391218 (and d!471020 d!471006)))

(declare-fun lambda!66538 () Int)

(assert (=> bs!391218 (= lambda!66538 lambda!66535)))

(declare-fun b!1584086 () Bool)

(declare-fun e!1017574 () Bool)

(declare-fun e!1017571 () Bool)

(assert (=> b!1584086 (= e!1017574 e!1017571)))

(declare-fun c!256690 () Bool)

(declare-fun isEmpty!10434 (List!17480) Bool)

(declare-fun tail!2267 (List!17480) List!17480)

(assert (=> b!1584086 (= c!256690 (isEmpty!10434 (tail!2267 (map!3608 rules!1846 lambda!66526))))))

(declare-fun b!1584087 () Bool)

(declare-fun lt!556537 () Regex!4395)

(declare-fun isUnion!62 (Regex!4395) Bool)

(assert (=> b!1584087 (= e!1017571 (isUnion!62 lt!556537))))

(declare-fun b!1584088 () Bool)

(declare-fun e!1017575 () Regex!4395)

(declare-fun e!1017573 () Regex!4395)

(assert (=> b!1584088 (= e!1017575 e!1017573)))

(declare-fun c!256688 () Bool)

(assert (=> b!1584088 (= c!256688 ((_ is Cons!17410) (map!3608 rules!1846 lambda!66526)))))

(declare-fun b!1584089 () Bool)

(declare-fun e!1017570 () Bool)

(assert (=> b!1584089 (= e!1017570 e!1017574)))

(declare-fun c!256687 () Bool)

(assert (=> b!1584089 (= c!256687 (isEmpty!10434 (map!3608 rules!1846 lambda!66526)))))

(declare-fun b!1584090 () Bool)

(declare-fun isEmptyLang!62 (Regex!4395) Bool)

(assert (=> b!1584090 (= e!1017574 (isEmptyLang!62 lt!556537))))

(assert (=> d!471020 e!1017570))

(declare-fun res!706404 () Bool)

(assert (=> d!471020 (=> (not res!706404) (not e!1017570))))

(assert (=> d!471020 (= res!706404 (validRegex!1734 lt!556537))))

(assert (=> d!471020 (= lt!556537 e!1017575)))

(declare-fun c!256689 () Bool)

(declare-fun e!1017572 () Bool)

(assert (=> d!471020 (= c!256689 e!1017572)))

(declare-fun res!706403 () Bool)

(assert (=> d!471020 (=> (not res!706403) (not e!1017572))))

(assert (=> d!471020 (= res!706403 ((_ is Cons!17410) (map!3608 rules!1846 lambda!66526)))))

(assert (=> d!471020 (forall!4001 (map!3608 rules!1846 lambda!66526) lambda!66538)))

(assert (=> d!471020 (= (generalisedUnion!203 (map!3608 rules!1846 lambda!66526)) lt!556537)))

(declare-fun b!1584091 () Bool)

(assert (=> b!1584091 (= e!1017573 (Union!4395 (h!22811 (map!3608 rules!1846 lambda!66526)) (generalisedUnion!203 (t!144007 (map!3608 rules!1846 lambda!66526)))))))

(declare-fun b!1584092 () Bool)

(assert (=> b!1584092 (= e!1017572 (isEmpty!10434 (t!144007 (map!3608 rules!1846 lambda!66526))))))

(declare-fun b!1584093 () Bool)

(assert (=> b!1584093 (= e!1017573 EmptyLang!4395)))

(declare-fun b!1584094 () Bool)

(declare-fun head!3210 (List!17480) Regex!4395)

(assert (=> b!1584094 (= e!1017571 (= lt!556537 (head!3210 (map!3608 rules!1846 lambda!66526))))))

(declare-fun b!1584095 () Bool)

(assert (=> b!1584095 (= e!1017575 (h!22811 (map!3608 rules!1846 lambda!66526)))))

(assert (= (and d!471020 res!706403) b!1584092))

(assert (= (and d!471020 c!256689) b!1584095))

(assert (= (and d!471020 (not c!256689)) b!1584088))

(assert (= (and b!1584088 c!256688) b!1584091))

(assert (= (and b!1584088 (not c!256688)) b!1584093))

(assert (= (and d!471020 res!706404) b!1584089))

(assert (= (and b!1584089 c!256687) b!1584090))

(assert (= (and b!1584089 (not c!256687)) b!1584086))

(assert (= (and b!1584086 c!256690) b!1584094))

(assert (= (and b!1584086 (not c!256690)) b!1584087))

(assert (=> b!1584086 m!1870849))

(declare-fun m!1871143 () Bool)

(assert (=> b!1584086 m!1871143))

(assert (=> b!1584086 m!1871143))

(declare-fun m!1871145 () Bool)

(assert (=> b!1584086 m!1871145))

(declare-fun m!1871147 () Bool)

(assert (=> b!1584091 m!1871147))

(declare-fun m!1871149 () Bool)

(assert (=> b!1584087 m!1871149))

(assert (=> b!1584094 m!1870849))

(declare-fun m!1871151 () Bool)

(assert (=> b!1584094 m!1871151))

(declare-fun m!1871153 () Bool)

(assert (=> d!471020 m!1871153))

(assert (=> d!471020 m!1870849))

(declare-fun m!1871155 () Bool)

(assert (=> d!471020 m!1871155))

(declare-fun m!1871157 () Bool)

(assert (=> b!1584090 m!1871157))

(declare-fun m!1871159 () Bool)

(assert (=> b!1584092 m!1871159))

(assert (=> b!1584089 m!1870849))

(declare-fun m!1871161 () Bool)

(assert (=> b!1584089 m!1871161))

(assert (=> d!470930 d!471020))

(declare-fun d!471028 () Bool)

(declare-fun lt!556542 () List!17480)

(declare-fun size!14008 (List!17480) Int)

(declare-fun size!14009 (List!17476) Int)

(assert (=> d!471028 (= (size!14008 lt!556542) (size!14009 rules!1846))))

(declare-fun e!1017580 () List!17480)

(assert (=> d!471028 (= lt!556542 e!1017580)))

(declare-fun c!256693 () Bool)

(assert (=> d!471028 (= c!256693 ((_ is Nil!17406) rules!1846))))

(assert (=> d!471028 (= (map!3608 rules!1846 lambda!66526) lt!556542)))

(declare-fun b!1584105 () Bool)

(assert (=> b!1584105 (= e!1017580 Nil!17410)))

(declare-fun b!1584106 () Bool)

(declare-fun $colon$colon!276 (List!17480 Regex!4395) List!17480)

(declare-fun dynLambda!7729 (Int Rule!5934) Regex!4395)

(assert (=> b!1584106 (= e!1017580 ($colon$colon!276 (map!3608 (t!143961 rules!1846) lambda!66526) (dynLambda!7729 lambda!66526 (h!22807 rules!1846))))))

(assert (= (and d!471028 c!256693) b!1584105))

(assert (= (and d!471028 (not c!256693)) b!1584106))

(declare-fun b_lambda!49853 () Bool)

(assert (=> (not b_lambda!49853) (not b!1584106)))

(declare-fun m!1871187 () Bool)

(assert (=> d!471028 m!1871187))

(declare-fun m!1871189 () Bool)

(assert (=> d!471028 m!1871189))

(declare-fun m!1871191 () Bool)

(assert (=> b!1584106 m!1871191))

(declare-fun m!1871193 () Bool)

(assert (=> b!1584106 m!1871193))

(assert (=> b!1584106 m!1871191))

(assert (=> b!1584106 m!1871193))

(declare-fun m!1871195 () Bool)

(assert (=> b!1584106 m!1871195))

(assert (=> d!470930 d!471028))

(assert (=> d!470748 d!470922))

(declare-fun lt!556588 () Bool)

(declare-fun d!471034 () Bool)

(declare-fun prefixMatch!331 (Regex!4395 List!17474) Bool)

(assert (=> d!471034 (= lt!556588 (prefixMatch!331 (rulesRegex!457 thiss!17113 rules!1846) (list!6743 (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-datatypes ((Context!1644 0))(
  ( (Context!1645 (exprs!1322 List!17480)) )
))
(declare-fun prefixMatchZipperSequence!412 ((InoxSet Context!1644) BalanceConc!11508 Int) Bool)

(declare-fun focus!128 (Regex!4395) (InoxSet Context!1644))

(assert (=> d!471034 (= lt!556588 (prefixMatchZipperSequence!412 (focus!128 (rulesRegex!457 thiss!17113 rules!1846)) (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) 0))))

(declare-fun lt!556595 () Unit!27203)

(declare-fun lt!556594 () Unit!27203)

(assert (=> d!471034 (= lt!556595 lt!556594)))

(declare-fun lt!556597 () List!17474)

(declare-fun lt!556591 () (InoxSet Context!1644))

(declare-fun prefixMatchZipper!107 ((InoxSet Context!1644) List!17474) Bool)

(assert (=> d!471034 (= (prefixMatch!331 (rulesRegex!457 thiss!17113 rules!1846) lt!556597) (prefixMatchZipper!107 lt!556591 lt!556597))))

(declare-datatypes ((List!17481 0))(
  ( (Nil!17411) (Cons!17411 (h!22812 Context!1644) (t!144192 List!17481)) )
))
(declare-fun lt!556589 () List!17481)

(declare-fun prefixMatchZipperRegexEquiv!107 ((InoxSet Context!1644) List!17481 Regex!4395 List!17474) Unit!27203)

(assert (=> d!471034 (= lt!556594 (prefixMatchZipperRegexEquiv!107 lt!556591 lt!556589 (rulesRegex!457 thiss!17113 rules!1846) lt!556597))))

(assert (=> d!471034 (= lt!556597 (list!6743 (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun toList!868 ((InoxSet Context!1644)) List!17481)

(assert (=> d!471034 (= lt!556589 (toList!868 (focus!128 (rulesRegex!457 thiss!17113 rules!1846))))))

(assert (=> d!471034 (= lt!556591 (focus!128 (rulesRegex!457 thiss!17113 rules!1846)))))

(declare-fun lt!556596 () Unit!27203)

(declare-fun lt!556592 () Unit!27203)

(assert (=> d!471034 (= lt!556596 lt!556592)))

(declare-fun lt!556593 () (InoxSet Context!1644))

(declare-fun lt!556590 () Int)

(declare-fun dropList!519 (BalanceConc!11508 Int) List!17474)

(assert (=> d!471034 (= (prefixMatchZipper!107 lt!556593 (dropList!519 (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) lt!556590)) (prefixMatchZipperSequence!412 lt!556593 (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) lt!556590))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!107 ((InoxSet Context!1644) BalanceConc!11508 Int) Unit!27203)

(assert (=> d!471034 (= lt!556592 (lemmaprefixMatchZipperSequenceEquivalent!107 lt!556593 (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) lt!556590))))

(assert (=> d!471034 (= lt!556590 0)))

(assert (=> d!471034 (= lt!556593 (focus!128 (rulesRegex!457 thiss!17113 rules!1846)))))

(assert (=> d!471034 (validRegex!1734 (rulesRegex!457 thiss!17113 rules!1846))))

(assert (=> d!471034 (= (prefixMatchZipperSequence!411 (rulesRegex!457 thiss!17113 rules!1846) (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) lt!556588)))

(declare-fun bs!391226 () Bool)

(assert (= bs!391226 d!471034))

(declare-fun m!1871331 () Bool)

(assert (=> bs!391226 m!1871331))

(declare-fun m!1871333 () Bool)

(assert (=> bs!391226 m!1871333))

(assert (=> bs!391226 m!1869955))

(declare-fun m!1871335 () Bool)

(assert (=> bs!391226 m!1871335))

(declare-fun m!1871337 () Bool)

(assert (=> bs!391226 m!1871337))

(assert (=> bs!391226 m!1869921))

(assert (=> bs!391226 m!1871331))

(assert (=> bs!391226 m!1869921))

(declare-fun m!1871339 () Bool)

(assert (=> bs!391226 m!1871339))

(assert (=> bs!391226 m!1869921))

(declare-fun m!1871341 () Bool)

(assert (=> bs!391226 m!1871341))

(assert (=> bs!391226 m!1869921))

(declare-fun m!1871343 () Bool)

(assert (=> bs!391226 m!1871343))

(declare-fun m!1871345 () Bool)

(assert (=> bs!391226 m!1871345))

(assert (=> bs!391226 m!1869955))

(declare-fun m!1871347 () Bool)

(assert (=> bs!391226 m!1871347))

(assert (=> bs!391226 m!1869921))

(declare-fun m!1871349 () Bool)

(assert (=> bs!391226 m!1871349))

(assert (=> bs!391226 m!1869955))

(assert (=> bs!391226 m!1871343))

(assert (=> bs!391226 m!1871347))

(declare-fun m!1871351 () Bool)

(assert (=> bs!391226 m!1871351))

(assert (=> bs!391226 m!1869955))

(declare-fun m!1871353 () Bool)

(assert (=> bs!391226 m!1871353))

(assert (=> bs!391226 m!1871331))

(assert (=> bs!391226 m!1869955))

(declare-fun m!1871355 () Bool)

(assert (=> bs!391226 m!1871355))

(assert (=> d!470748 d!471034))

(declare-fun d!471070 () Bool)

(declare-fun e!1017617 () Bool)

(assert (=> d!471070 e!1017617))

(declare-fun res!706423 () Bool)

(assert (=> d!471070 (=> (not res!706423) (not e!1017617))))

(assert (=> d!471070 (= res!706423 (appendAssocInst!387 (c!256547 (charsOf!1716 (h!22806 tokens!457))) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun lt!556598 () BalanceConc!11508)

(assert (=> d!471070 (= lt!556598 (BalanceConc!11509 (++!4532 (c!256547 (charsOf!1716 (h!22806 tokens!457))) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(assert (=> d!471070 (= (++!4530 (charsOf!1716 (h!22806 tokens!457)) (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) lt!556598)))

(declare-fun b!1584175 () Bool)

(assert (=> b!1584175 (= e!1017617 (= (list!6743 lt!556598) (++!4529 (list!6743 (charsOf!1716 (h!22806 tokens!457))) (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1584174 () Bool)

(declare-fun res!706422 () Bool)

(assert (=> b!1584174 (=> (not res!706422) (not e!1017617))))

(assert (=> b!1584174 (= res!706422 (>= (height!851 (++!4532 (c!256547 (charsOf!1716 (h!22806 tokens!457))) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (max!0 (height!851 (c!256547 (charsOf!1716 (h!22806 tokens!457)))) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584172 () Bool)

(declare-fun res!706424 () Bool)

(assert (=> b!1584172 (=> (not res!706424) (not e!1017617))))

(assert (=> b!1584172 (= res!706424 (isBalanced!1702 (++!4532 (c!256547 (charsOf!1716 (h!22806 tokens!457))) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1584173 () Bool)

(declare-fun res!706425 () Bool)

(assert (=> b!1584173 (=> (not res!706425) (not e!1017617))))

(assert (=> b!1584173 (= res!706425 (<= (height!851 (++!4532 (c!256547 (charsOf!1716 (h!22806 tokens!457))) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (+ (max!0 (height!851 (c!256547 (charsOf!1716 (h!22806 tokens!457)))) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) 1)))))

(assert (= (and d!471070 res!706423) b!1584172))

(assert (= (and b!1584172 res!706424) b!1584173))

(assert (= (and b!1584173 res!706425) b!1584174))

(assert (= (and b!1584174 res!706422) b!1584175))

(declare-fun m!1871357 () Bool)

(assert (=> b!1584172 m!1871357))

(assert (=> b!1584172 m!1871357))

(declare-fun m!1871359 () Bool)

(assert (=> b!1584172 m!1871359))

(declare-fun m!1871361 () Bool)

(assert (=> d!471070 m!1871361))

(assert (=> d!471070 m!1871357))

(declare-fun m!1871363 () Bool)

(assert (=> b!1584173 m!1871363))

(assert (=> b!1584173 m!1870835))

(assert (=> b!1584173 m!1871357))

(declare-fun m!1871365 () Bool)

(assert (=> b!1584173 m!1871365))

(assert (=> b!1584173 m!1871357))

(assert (=> b!1584173 m!1871363))

(assert (=> b!1584173 m!1870835))

(declare-fun m!1871367 () Bool)

(assert (=> b!1584173 m!1871367))

(assert (=> b!1584174 m!1871363))

(assert (=> b!1584174 m!1870835))

(assert (=> b!1584174 m!1871357))

(assert (=> b!1584174 m!1871365))

(assert (=> b!1584174 m!1871357))

(assert (=> b!1584174 m!1871363))

(assert (=> b!1584174 m!1870835))

(assert (=> b!1584174 m!1871367))

(declare-fun m!1871369 () Bool)

(assert (=> b!1584175 m!1871369))

(assert (=> b!1584175 m!1869869))

(declare-fun m!1871371 () Bool)

(assert (=> b!1584175 m!1871371))

(assert (=> b!1584175 m!1869925))

(assert (=> b!1584175 m!1870843))

(assert (=> b!1584175 m!1871371))

(assert (=> b!1584175 m!1870843))

(declare-fun m!1871373 () Bool)

(assert (=> b!1584175 m!1871373))

(assert (=> d!470748 d!471070))

(assert (=> d!470748 d!470822))

(assert (=> d!470748 d!470926))

(assert (=> d!470748 d!470930))

(assert (=> d!470748 d!470932))

(declare-fun d!471072 () Bool)

(declare-fun c!256724 () Bool)

(assert (=> d!471072 (= c!256724 ((_ is Node!5782) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))))

(declare-fun e!1017628 () Bool)

(assert (=> d!471072 (= (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))) e!1017628)))

(declare-fun b!1584192 () Bool)

(declare-fun inv!22829 (Conc!5782) Bool)

(assert (=> b!1584192 (= e!1017628 (inv!22829 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))))

(declare-fun b!1584193 () Bool)

(declare-fun e!1017629 () Bool)

(assert (=> b!1584193 (= e!1017628 e!1017629)))

(declare-fun res!706430 () Bool)

(assert (=> b!1584193 (= res!706430 (not ((_ is Leaf!8536) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))))))))

(assert (=> b!1584193 (=> res!706430 e!1017629)))

(declare-fun b!1584194 () Bool)

(declare-fun inv!22830 (Conc!5782) Bool)

(assert (=> b!1584194 (= e!1017629 (inv!22830 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))))

(assert (= (and d!471072 c!256724) b!1584192))

(assert (= (and d!471072 (not c!256724)) b!1584193))

(assert (= (and b!1584193 (not res!706430)) b!1584194))

(declare-fun m!1871375 () Bool)

(assert (=> b!1584192 m!1871375))

(declare-fun m!1871377 () Bool)

(assert (=> b!1584194 m!1871377))

(assert (=> b!1583496 d!471072))

(declare-fun d!471074 () Bool)

(assert (=> d!471074 (= (dropList!518 lt!555974 0) (drop!820 (list!6748 (c!256549 lt!555974)) 0))))

(declare-fun bs!391227 () Bool)

(assert (= bs!391227 d!471074))

(declare-fun m!1871393 () Bool)

(assert (=> bs!391227 m!1871393))

(assert (=> bs!391227 m!1871393))

(declare-fun m!1871401 () Bool)

(assert (=> bs!391227 m!1871401))

(assert (=> d!470752 d!471074))

(declare-fun d!471082 () Bool)

(declare-fun lt!556623 () List!17474)

(assert (=> d!471082 (= lt!556623 (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) (printList!811 thiss!17113 (dropList!518 lt!555974 0))))))

(declare-fun e!1017647 () List!17474)

(assert (=> d!471082 (= lt!556623 e!1017647)))

(declare-fun c!256736 () Bool)

(assert (=> d!471082 (= c!256736 ((_ is Cons!17405) (dropList!518 lt!555974 0)))))

(assert (=> d!471082 (= (printListTailRec!311 thiss!17113 (dropList!518 lt!555974 0) (list!6743 (BalanceConc!11509 Empty!5782))) lt!556623)))

(declare-fun b!1584228 () Bool)

(assert (=> b!1584228 (= e!1017647 (printListTailRec!311 thiss!17113 (t!143960 (dropList!518 lt!555974 0)) (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) (list!6743 (charsOf!1716 (h!22806 (dropList!518 lt!555974 0)))))))))

(declare-fun lt!556624 () List!17474)

(assert (=> b!1584228 (= lt!556624 (list!6743 (charsOf!1716 (h!22806 (dropList!518 lt!555974 0)))))))

(declare-fun lt!556625 () List!17474)

(assert (=> b!1584228 (= lt!556625 (printList!811 thiss!17113 (t!143960 (dropList!518 lt!555974 0))))))

(declare-fun lt!556627 () Unit!27203)

(declare-fun lemmaConcatAssociativity!984 (List!17474 List!17474 List!17474) Unit!27203)

(assert (=> b!1584228 (= lt!556627 (lemmaConcatAssociativity!984 (list!6743 (BalanceConc!11509 Empty!5782)) lt!556624 lt!556625))))

(assert (=> b!1584228 (= (++!4529 (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) lt!556624) lt!556625) (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) (++!4529 lt!556624 lt!556625)))))

(declare-fun lt!556626 () Unit!27203)

(assert (=> b!1584228 (= lt!556626 lt!556627)))

(declare-fun b!1584229 () Bool)

(assert (=> b!1584229 (= e!1017647 (list!6743 (BalanceConc!11509 Empty!5782)))))

(assert (= (and d!471082 c!256736) b!1584228))

(assert (= (and d!471082 (not c!256736)) b!1584229))

(assert (=> d!471082 m!1870015))

(declare-fun m!1871453 () Bool)

(assert (=> d!471082 m!1871453))

(assert (=> d!471082 m!1870017))

(assert (=> d!471082 m!1871453))

(declare-fun m!1871455 () Bool)

(assert (=> d!471082 m!1871455))

(declare-fun m!1871457 () Bool)

(assert (=> b!1584228 m!1871457))

(declare-fun m!1871459 () Bool)

(assert (=> b!1584228 m!1871459))

(assert (=> b!1584228 m!1870017))

(declare-fun m!1871461 () Bool)

(assert (=> b!1584228 m!1871461))

(declare-fun m!1871463 () Bool)

(assert (=> b!1584228 m!1871463))

(declare-fun m!1871465 () Bool)

(assert (=> b!1584228 m!1871465))

(assert (=> b!1584228 m!1870017))

(assert (=> b!1584228 m!1871457))

(declare-fun m!1871467 () Bool)

(assert (=> b!1584228 m!1871467))

(assert (=> b!1584228 m!1871463))

(assert (=> b!1584228 m!1870017))

(assert (=> b!1584228 m!1871467))

(declare-fun m!1871469 () Bool)

(assert (=> b!1584228 m!1871469))

(declare-fun m!1871471 () Bool)

(assert (=> b!1584228 m!1871471))

(declare-fun m!1871473 () Bool)

(assert (=> b!1584228 m!1871473))

(declare-fun m!1871475 () Bool)

(assert (=> b!1584228 m!1871475))

(assert (=> b!1584228 m!1870017))

(assert (=> b!1584228 m!1871465))

(assert (=> b!1584228 m!1871471))

(assert (=> d!470752 d!471082))

(declare-fun d!471100 () Bool)

(assert (=> d!471100 (= (list!6743 lt!556037) (list!6747 (c!256547 lt!556037)))))

(declare-fun bs!391233 () Bool)

(assert (= bs!391233 d!471100))

(declare-fun m!1871477 () Bool)

(assert (=> bs!391233 m!1871477))

(assert (=> d!470752 d!471100))

(declare-fun d!471102 () Bool)

(assert (=> d!471102 (= (list!6743 (BalanceConc!11509 Empty!5782)) (list!6747 (c!256547 (BalanceConc!11509 Empty!5782))))))

(declare-fun bs!391234 () Bool)

(assert (= bs!391234 d!471102))

(declare-fun m!1871495 () Bool)

(assert (=> bs!391234 m!1871495))

(assert (=> d!470752 d!471102))

(declare-fun d!471104 () Bool)

(declare-fun lt!556636 () Int)

(assert (=> d!471104 (= lt!556636 (size!14007 (list!6744 lt!555974)))))

(declare-fun size!14010 (Conc!5783) Int)

(assert (=> d!471104 (= lt!556636 (size!14010 (c!256549 lt!555974)))))

(assert (=> d!471104 (= (size!14004 lt!555974) lt!556636)))

(declare-fun bs!391239 () Bool)

(assert (= bs!391239 d!471104))

(assert (=> bs!391239 m!1870037))

(assert (=> bs!391239 m!1870037))

(declare-fun m!1871525 () Bool)

(assert (=> bs!391239 m!1871525))

(declare-fun m!1871527 () Bool)

(assert (=> bs!391239 m!1871527))

(assert (=> d!470752 d!471104))

(declare-fun d!471118 () Bool)

(assert (=> d!471118 (= (isDefined!2505 lt!556077) (not (isEmpty!10427 lt!556077)))))

(declare-fun bs!391240 () Bool)

(assert (= bs!391240 d!471118))

(assert (=> bs!391240 m!1870105))

(assert (=> b!1583405 d!471118))

(declare-fun d!471120 () Bool)

(declare-fun res!706450 () Bool)

(declare-fun e!1017658 () Bool)

(assert (=> d!471120 (=> res!706450 e!1017658)))

(assert (=> d!471120 (= res!706450 ((_ is Nil!17405) tokens!457))))

(assert (=> d!471120 (= (forall!4000 tokens!457 lambda!66517) e!1017658)))

(declare-fun b!1584244 () Bool)

(declare-fun e!1017659 () Bool)

(assert (=> b!1584244 (= e!1017658 e!1017659)))

(declare-fun res!706451 () Bool)

(assert (=> b!1584244 (=> (not res!706451) (not e!1017659))))

(declare-fun dynLambda!7730 (Int Token!5700) Bool)

(assert (=> b!1584244 (= res!706451 (dynLambda!7730 lambda!66517 (h!22806 tokens!457)))))

(declare-fun b!1584245 () Bool)

(assert (=> b!1584245 (= e!1017659 (forall!4000 (t!143960 tokens!457) lambda!66517))))

(assert (= (and d!471120 (not res!706450)) b!1584244))

(assert (= (and b!1584244 res!706451) b!1584245))

(declare-fun b_lambda!49857 () Bool)

(assert (=> (not b_lambda!49857) (not b!1584244)))

(declare-fun m!1871529 () Bool)

(assert (=> b!1584244 m!1871529))

(declare-fun m!1871531 () Bool)

(assert (=> b!1584245 m!1871531))

(assert (=> d!470792 d!471120))

(assert (=> d!470792 d!470934))

(declare-fun d!471122 () Bool)

(assert (=> d!471122 true))

(declare-fun order!10285 () Int)

(declare-fun lambda!66544 () Int)

(declare-fun dynLambda!7731 (Int Int) Int)

(assert (=> d!471122 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7731 order!10285 lambda!66544))))

(declare-fun Forall2!504 (Int) Bool)

(assert (=> d!471122 (= (equivClasses!1097 (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (Forall2!504 lambda!66544))))

(declare-fun bs!391241 () Bool)

(assert (= bs!391241 d!471122))

(declare-fun m!1871533 () Bool)

(assert (=> bs!391241 m!1871533))

(assert (=> b!1583433 d!471122))

(declare-fun b!1584262 () Bool)

(declare-fun res!706470 () Bool)

(declare-fun e!1017667 () Bool)

(assert (=> b!1584262 (=> (not res!706470) (not e!1017667))))

(declare-fun isEmpty!10436 (Conc!5782) Bool)

(assert (=> b!1584262 (= res!706470 (not (isEmpty!10436 (left!14061 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))))

(declare-fun d!471124 () Bool)

(declare-fun res!706471 () Bool)

(declare-fun e!1017666 () Bool)

(assert (=> d!471124 (=> res!706471 e!1017666)))

(assert (=> d!471124 (= res!706471 (not ((_ is Node!5782) (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(assert (=> d!471124 (= (isBalanced!1702 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) e!1017666)))

(declare-fun b!1584263 () Bool)

(declare-fun res!706466 () Bool)

(assert (=> b!1584263 (=> (not res!706466) (not e!1017667))))

(assert (=> b!1584263 (= res!706466 (isBalanced!1702 (left!14061 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584264 () Bool)

(declare-fun res!706467 () Bool)

(assert (=> b!1584264 (=> (not res!706467) (not e!1017667))))

(assert (=> b!1584264 (= res!706467 (<= (- (height!851 (left!14061 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))) (height!851 (right!14391 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))) 1))))

(declare-fun b!1584265 () Bool)

(declare-fun res!706468 () Bool)

(assert (=> b!1584265 (=> (not res!706468) (not e!1017667))))

(assert (=> b!1584265 (= res!706468 (isBalanced!1702 (right!14391 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584266 () Bool)

(assert (=> b!1584266 (= e!1017667 (not (isEmpty!10436 (right!14391 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))))

(declare-fun b!1584267 () Bool)

(assert (=> b!1584267 (= e!1017666 e!1017667)))

(declare-fun res!706469 () Bool)

(assert (=> b!1584267 (=> (not res!706469) (not e!1017667))))

(assert (=> b!1584267 (= res!706469 (<= (- 1) (- (height!851 (left!14061 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))) (height!851 (right!14391 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))))

(assert (= (and d!471124 (not res!706471)) b!1584267))

(assert (= (and b!1584267 res!706469) b!1584264))

(assert (= (and b!1584264 res!706467) b!1584263))

(assert (= (and b!1584263 res!706466) b!1584265))

(assert (= (and b!1584265 res!706468) b!1584262))

(assert (= (and b!1584262 res!706470) b!1584266))

(declare-fun m!1871535 () Bool)

(assert (=> b!1584263 m!1871535))

(declare-fun m!1871537 () Bool)

(assert (=> b!1584265 m!1871537))

(declare-fun m!1871539 () Bool)

(assert (=> b!1584262 m!1871539))

(declare-fun m!1871541 () Bool)

(assert (=> b!1584264 m!1871541))

(declare-fun m!1871543 () Bool)

(assert (=> b!1584264 m!1871543))

(declare-fun m!1871545 () Bool)

(assert (=> b!1584266 m!1871545))

(assert (=> b!1584267 m!1871541))

(assert (=> b!1584267 m!1871543))

(assert (=> b!1583800 d!471124))

(declare-fun b!1584310 () Bool)

(declare-fun e!1017693 () Conc!5782)

(declare-fun call!102850 () Conc!5782)

(assert (=> b!1584310 (= e!1017693 call!102850)))

(declare-fun b!1584311 () Bool)

(declare-fun e!1017689 () Conc!5782)

(declare-fun call!102853 () Conc!5782)

(assert (=> b!1584311 (= e!1017689 call!102853)))

(declare-fun b!1584312 () Bool)

(declare-fun e!1017695 () Conc!5782)

(declare-fun call!102855 () Conc!5782)

(assert (=> b!1584312 (= e!1017695 call!102855)))

(declare-fun b!1584313 () Bool)

(declare-fun e!1017692 () Conc!5782)

(declare-fun call!102860 () Conc!5782)

(assert (=> b!1584313 (= e!1017692 call!102860)))

(declare-fun bm!102843 () Bool)

(declare-fun call!102849 () Conc!5782)

(assert (=> bm!102843 (= call!102849 call!102860)))

(declare-fun b!1584314 () Bool)

(declare-fun e!1017697 () Conc!5782)

(declare-fun call!102858 () Conc!5782)

(assert (=> b!1584314 (= e!1017697 call!102858)))

(declare-fun d!471126 () Bool)

(declare-fun e!1017696 () Bool)

(assert (=> d!471126 e!1017696))

(declare-fun res!706486 () Bool)

(assert (=> d!471126 (=> (not res!706486) (not e!1017696))))

(assert (=> d!471126 (= res!706486 (appendAssocInst!387 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun lt!556647 () Conc!5782)

(declare-fun e!1017688 () Conc!5782)

(assert (=> d!471126 (= lt!556647 e!1017688)))

(declare-fun c!256761 () Bool)

(assert (=> d!471126 (= c!256761 (= (c!256547 lt!555977) Empty!5782))))

(declare-fun e!1017690 () Bool)

(assert (=> d!471126 e!1017690))

(declare-fun res!706484 () Bool)

(assert (=> d!471126 (=> (not res!706484) (not e!1017690))))

(assert (=> d!471126 (= res!706484 (isBalanced!1702 (c!256547 lt!555977)))))

(assert (=> d!471126 (= (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) lt!556647)))

(declare-fun lt!556646 () Conc!5782)

(declare-fun call!102862 () Int)

(declare-fun c!256756 () Bool)

(declare-fun bm!102844 () Bool)

(assert (=> bm!102844 (= call!102862 (height!851 (ite c!256756 lt!556646 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584315 () Bool)

(assert (=> b!1584315 (= e!1017693 call!102850)))

(declare-fun b!1584316 () Bool)

(declare-fun c!256763 () Bool)

(declare-fun call!102851 () Int)

(assert (=> b!1584316 (= c!256763 (>= call!102851 call!102862))))

(declare-fun e!1017694 () Conc!5782)

(assert (=> b!1584316 (= e!1017694 e!1017697)))

(declare-fun bm!102845 () Bool)

(declare-fun call!102859 () Conc!5782)

(declare-fun call!102863 () Conc!5782)

(assert (=> bm!102845 (= call!102859 call!102863)))

(declare-fun lt!556645 () Conc!5782)

(declare-fun call!102854 () Int)

(declare-fun bm!102846 () Bool)

(assert (=> bm!102846 (= call!102854 (height!851 (ite c!256756 (right!14391 (c!256547 lt!555977)) lt!556645)))))

(declare-fun b!1584317 () Bool)

(declare-fun c!256762 () Bool)

(assert (=> b!1584317 (= c!256762 (>= call!102851 call!102854))))

(assert (=> b!1584317 (= e!1017694 e!1017692)))

(declare-fun b!1584318 () Bool)

(assert (=> b!1584318 (= e!1017690 (isBalanced!1702 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun bm!102847 () Bool)

(declare-fun call!102848 () Conc!5782)

(assert (=> bm!102847 (= call!102848 call!102855)))

(declare-fun b!1584319 () Bool)

(declare-fun res!706482 () Bool)

(assert (=> b!1584319 (=> (not res!706482) (not e!1017696))))

(assert (=> b!1584319 (= res!706482 (isBalanced!1702 lt!556647))))

(declare-fun b!1584320 () Bool)

(declare-fun e!1017691 () Conc!5782)

(assert (=> b!1584320 (= e!1017688 e!1017691)))

(declare-fun c!256759 () Bool)

(assert (=> b!1584320 (= c!256759 (= (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) Empty!5782))))

(declare-fun c!256757 () Bool)

(declare-fun c!256760 () Bool)

(declare-fun call!102852 () Conc!5782)

(declare-fun call!102857 () Conc!5782)

(declare-fun call!102861 () Conc!5782)

(declare-fun bm!102848 () Bool)

(declare-fun <>!126 (Conc!5782 Conc!5782) Conc!5782)

(assert (=> bm!102848 (= call!102861 (<>!126 (ite c!256756 (ite c!256760 (left!14061 (c!256547 lt!555977)) call!102849) (ite c!256763 call!102857 (ite c!256757 call!102852 lt!556645))) (ite c!256756 (ite c!256760 call!102849 lt!556646) (ite (or c!256763 c!256757) (right!14391 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) call!102852))))))

(declare-fun bm!102849 () Bool)

(assert (=> bm!102849 (= call!102860 call!102848)))

(declare-fun b!1584321 () Bool)

(assert (=> b!1584321 (= e!1017696 (= (list!6747 lt!556647) (++!4529 (list!6747 (c!256547 lt!555977)) (list!6747 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584322 () Bool)

(assert (=> b!1584322 (= e!1017688 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))

(declare-fun b!1584323 () Bool)

(assert (=> b!1584323 (= e!1017691 (c!256547 lt!555977))))

(declare-fun bm!102850 () Bool)

(declare-fun call!102856 () Int)

(assert (=> bm!102850 (= call!102856 (height!851 (ite c!256756 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1584324 () Bool)

(declare-fun res!706485 () Bool)

(assert (=> b!1584324 (=> (not res!706485) (not e!1017696))))

(assert (=> b!1584324 (= res!706485 (>= (height!851 lt!556647) (max!0 (height!851 (c!256547 lt!555977)) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584325 () Bool)

(assert (=> b!1584325 (= e!1017692 e!1017693)))

(assert (=> b!1584325 (= lt!556646 call!102859)))

(assert (=> b!1584325 (= c!256760 (= call!102862 (- call!102856 3)))))

(declare-fun bm!102851 () Bool)

(assert (=> bm!102851 (= call!102858 call!102861)))

(declare-fun b!1584326 () Bool)

(declare-fun res!706483 () Bool)

(assert (=> b!1584326 (=> (not res!706483) (not e!1017696))))

(assert (=> b!1584326 (= res!706483 (<= (height!851 lt!556647) (+ (max!0 (height!851 (c!256547 lt!555977)) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) 1)))))

(declare-fun b!1584327 () Bool)

(assert (=> b!1584327 (= e!1017695 e!1017694)))

(declare-fun lt!556648 () Int)

(assert (=> b!1584327 (= c!256756 (< lt!556648 (- 1)))))

(declare-fun bm!102852 () Bool)

(assert (=> bm!102852 (= call!102852 call!102848)))

(declare-fun b!1584328 () Bool)

(assert (=> b!1584328 (= e!1017689 call!102853)))

(declare-fun bm!102853 () Bool)

(assert (=> bm!102853 (= call!102863 (++!4532 (ite c!256756 (ite c!256762 (right!14391 (c!256547 lt!555977)) (right!14391 (right!14391 (c!256547 lt!555977)))) (c!256547 lt!555977)) (ite c!256756 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) (ite c!256763 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) (left!14061 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))))

(declare-fun c!256758 () Bool)

(declare-fun bm!102854 () Bool)

(assert (=> bm!102854 (= call!102855 (<>!126 (ite c!256758 (c!256547 lt!555977) (ite c!256756 (ite c!256762 (left!14061 (c!256547 lt!555977)) (ite c!256760 (left!14061 (right!14391 (c!256547 lt!555977))) (left!14061 (c!256547 lt!555977)))) (ite c!256757 lt!556645 (right!14391 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))) (ite c!256758 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) (ite c!256756 (ite c!256762 call!102859 (ite c!256760 lt!556646 (left!14061 (right!14391 (c!256547 lt!555977))))) (ite c!256757 (right!14391 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (right!14391 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))))

(declare-fun bm!102855 () Bool)

(assert (=> bm!102855 (= call!102850 call!102861)))

(declare-fun b!1584329 () Bool)

(assert (=> b!1584329 (= c!256758 (and (<= (- 1) lt!556648) (<= lt!556648 1)))))

(assert (=> b!1584329 (= lt!556648 (- (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) (height!851 (c!256547 lt!555977))))))

(assert (=> b!1584329 (= e!1017691 e!1017695)))

(declare-fun bm!102856 () Bool)

(assert (=> bm!102856 (= call!102857 call!102863)))

(declare-fun bm!102857 () Bool)

(assert (=> bm!102857 (= call!102851 (height!851 (ite c!256756 (left!14061 (c!256547 lt!555977)) (right!14391 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun bm!102858 () Bool)

(assert (=> bm!102858 (= call!102853 call!102858)))

(declare-fun b!1584330 () Bool)

(assert (=> b!1584330 (= e!1017697 e!1017689)))

(assert (=> b!1584330 (= lt!556645 call!102857)))

(assert (=> b!1584330 (= c!256757 (= call!102854 (- call!102856 3)))))

(assert (= (and d!471126 res!706484) b!1584318))

(assert (= (and d!471126 c!256761) b!1584322))

(assert (= (and d!471126 (not c!256761)) b!1584320))

(assert (= (and b!1584320 c!256759) b!1584323))

(assert (= (and b!1584320 (not c!256759)) b!1584329))

(assert (= (and b!1584329 c!256758) b!1584312))

(assert (= (and b!1584329 (not c!256758)) b!1584327))

(assert (= (and b!1584327 c!256756) b!1584317))

(assert (= (and b!1584327 (not c!256756)) b!1584316))

(assert (= (and b!1584317 c!256762) b!1584313))

(assert (= (and b!1584317 (not c!256762)) b!1584325))

(assert (= (and b!1584325 c!256760) b!1584315))

(assert (= (and b!1584325 (not c!256760)) b!1584310))

(assert (= (or b!1584315 b!1584310) bm!102843))

(assert (= (or b!1584315 b!1584310) bm!102855))

(assert (= (or b!1584313 b!1584325) bm!102845))

(assert (= (or b!1584313 bm!102843) bm!102849))

(assert (= (and b!1584316 c!256763) b!1584314))

(assert (= (and b!1584316 (not c!256763)) b!1584330))

(assert (= (and b!1584330 c!256757) b!1584328))

(assert (= (and b!1584330 (not c!256757)) b!1584311))

(assert (= (or b!1584328 b!1584311) bm!102852))

(assert (= (or b!1584328 b!1584311) bm!102858))

(assert (= (or b!1584314 b!1584330) bm!102856))

(assert (= (or b!1584314 bm!102858) bm!102851))

(assert (= (or bm!102845 bm!102856) bm!102853))

(assert (= (or b!1584317 b!1584316) bm!102857))

(assert (= (or bm!102855 bm!102851) bm!102848))

(assert (= (or b!1584317 b!1584330) bm!102846))

(assert (= (or b!1584325 b!1584330) bm!102850))

(assert (= (or b!1584325 b!1584316) bm!102844))

(assert (= (or bm!102849 bm!102852) bm!102847))

(assert (= (or b!1584312 bm!102847) bm!102854))

(assert (= (and d!471126 res!706486) b!1584319))

(assert (= (and b!1584319 res!706482) b!1584326))

(assert (= (and b!1584326 res!706483) b!1584324))

(assert (= (and b!1584324 res!706485) b!1584321))

(declare-fun m!1871547 () Bool)

(assert (=> bm!102850 m!1871547))

(declare-fun m!1871549 () Bool)

(assert (=> bm!102857 m!1871549))

(declare-fun m!1871551 () Bool)

(assert (=> b!1584321 m!1871551))

(assert (=> b!1584321 m!1870283))

(declare-fun m!1871553 () Bool)

(assert (=> b!1584321 m!1871553))

(assert (=> b!1584321 m!1870283))

(assert (=> b!1584321 m!1871553))

(declare-fun m!1871555 () Bool)

(assert (=> b!1584321 m!1871555))

(assert (=> b!1584329 m!1870835))

(assert (=> b!1584329 m!1870833))

(declare-fun m!1871557 () Bool)

(assert (=> bm!102844 m!1871557))

(declare-fun m!1871559 () Bool)

(assert (=> b!1584319 m!1871559))

(declare-fun m!1871561 () Bool)

(assert (=> bm!102854 m!1871561))

(declare-fun m!1871563 () Bool)

(assert (=> b!1584324 m!1871563))

(assert (=> b!1584324 m!1870833))

(assert (=> b!1584324 m!1870835))

(assert (=> b!1584324 m!1870833))

(assert (=> b!1584324 m!1870835))

(assert (=> b!1584324 m!1870839))

(assert (=> d!471126 m!1870831))

(declare-fun m!1871565 () Bool)

(assert (=> d!471126 m!1871565))

(declare-fun m!1871567 () Bool)

(assert (=> bm!102853 m!1871567))

(declare-fun m!1871569 () Bool)

(assert (=> bm!102846 m!1871569))

(declare-fun m!1871571 () Bool)

(assert (=> b!1584318 m!1871571))

(assert (=> b!1584326 m!1871563))

(assert (=> b!1584326 m!1870833))

(assert (=> b!1584326 m!1870835))

(assert (=> b!1584326 m!1870833))

(assert (=> b!1584326 m!1870835))

(assert (=> b!1584326 m!1870839))

(declare-fun m!1871573 () Bool)

(assert (=> bm!102848 m!1871573))

(assert (=> b!1583800 d!471126))

(declare-fun b!1584331 () Bool)

(declare-fun e!1017699 () List!17474)

(assert (=> b!1584331 (= e!1017699 (_2!9845 (get!4978 lt!556077)))))

(declare-fun b!1584333 () Bool)

(declare-fun res!706487 () Bool)

(declare-fun e!1017698 () Bool)

(assert (=> b!1584333 (=> (not res!706487) (not e!1017698))))

(declare-fun lt!556649 () List!17474)

(assert (=> b!1584333 (= res!706487 (= (size!14005 lt!556649) (+ (size!14005 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) (size!14005 (_2!9845 (get!4978 lt!556077))))))))

(declare-fun b!1584334 () Bool)

(assert (=> b!1584334 (= e!1017698 (or (not (= (_2!9845 (get!4978 lt!556077)) Nil!17404)) (= lt!556649 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))))))))

(declare-fun b!1584332 () Bool)

(assert (=> b!1584332 (= e!1017699 (Cons!17404 (h!22805 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) (++!4529 (t!143959 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) (_2!9845 (get!4978 lt!556077)))))))

(declare-fun d!471128 () Bool)

(assert (=> d!471128 e!1017698))

(declare-fun res!706488 () Bool)

(assert (=> d!471128 (=> (not res!706488) (not e!1017698))))

(assert (=> d!471128 (= res!706488 (= (content!2394 lt!556649) ((_ map or) (content!2394 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) (content!2394 (_2!9845 (get!4978 lt!556077))))))))

(assert (=> d!471128 (= lt!556649 e!1017699)))

(declare-fun c!256764 () Bool)

(assert (=> d!471128 (= c!256764 ((_ is Nil!17404) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))))))

(assert (=> d!471128 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))) (_2!9845 (get!4978 lt!556077))) lt!556649)))

(assert (= (and d!471128 c!256764) b!1584331))

(assert (= (and d!471128 (not c!256764)) b!1584332))

(assert (= (and d!471128 res!706488) b!1584333))

(assert (= (and b!1584333 res!706487) b!1584334))

(declare-fun m!1871575 () Bool)

(assert (=> b!1584333 m!1871575))

(assert (=> b!1584333 m!1870121))

(declare-fun m!1871577 () Bool)

(assert (=> b!1584333 m!1871577))

(assert (=> b!1584333 m!1870113))

(declare-fun m!1871579 () Bool)

(assert (=> b!1584332 m!1871579))

(declare-fun m!1871581 () Bool)

(assert (=> d!471128 m!1871581))

(assert (=> d!471128 m!1870121))

(declare-fun m!1871583 () Bool)

(assert (=> d!471128 m!1871583))

(declare-fun m!1871585 () Bool)

(assert (=> d!471128 m!1871585))

(assert (=> b!1583402 d!471128))

(declare-fun d!471130 () Bool)

(assert (=> d!471130 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))) (list!6747 (c!256547 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))))))

(declare-fun bs!391242 () Bool)

(assert (= bs!391242 d!471130))

(declare-fun m!1871587 () Bool)

(assert (=> bs!391242 m!1871587))

(assert (=> b!1583402 d!471130))

(declare-fun d!471132 () Bool)

(declare-fun lt!556650 () BalanceConc!11508)

(assert (=> d!471132 (= (list!6743 lt!556650) (originalCharacters!3881 (_1!9845 (get!4978 lt!556077))))))

(assert (=> d!471132 (= lt!556650 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))) (value!97082 (_1!9845 (get!4978 lt!556077)))))))

(assert (=> d!471132 (= (charsOf!1716 (_1!9845 (get!4978 lt!556077))) lt!556650)))

(declare-fun b_lambda!49859 () Bool)

(assert (=> (not b_lambda!49859) (not d!471132)))

(declare-fun t!144038 () Bool)

(declare-fun tb!89135 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144038) tb!89135))

(declare-fun b!1584335 () Bool)

(declare-fun e!1017700 () Bool)

(declare-fun tp!466005 () Bool)

(assert (=> b!1584335 (= e!1017700 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))) (value!97082 (_1!9845 (get!4978 lt!556077)))))) tp!466005))))

(declare-fun result!107896 () Bool)

(assert (=> tb!89135 (= result!107896 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))) (value!97082 (_1!9845 (get!4978 lt!556077))))) e!1017700))))

(assert (= tb!89135 b!1584335))

(declare-fun m!1871589 () Bool)

(assert (=> b!1584335 m!1871589))

(declare-fun m!1871591 () Bool)

(assert (=> tb!89135 m!1871591))

(assert (=> d!471132 t!144038))

(declare-fun b_and!111069 () Bool)

(assert (= b_and!111045 (and (=> t!144038 result!107896) b_and!111069)))

(declare-fun tb!89137 () Bool)

(declare-fun t!144040 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144040) tb!89137))

(declare-fun result!107898 () Bool)

(assert (= result!107898 result!107896))

(assert (=> d!471132 t!144040))

(declare-fun b_and!111071 () Bool)

(assert (= b_and!111047 (and (=> t!144040 result!107898) b_and!111071)))

(declare-fun t!144042 () Bool)

(declare-fun tb!89139 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144042) tb!89139))

(declare-fun result!107900 () Bool)

(assert (= result!107900 result!107896))

(assert (=> d!471132 t!144042))

(declare-fun b_and!111073 () Bool)

(assert (= b_and!111049 (and (=> t!144042 result!107900) b_and!111073)))

(declare-fun tb!89141 () Bool)

(declare-fun t!144044 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144044) tb!89141))

(declare-fun result!107902 () Bool)

(assert (= result!107902 result!107896))

(assert (=> d!471132 t!144044))

(declare-fun b_and!111075 () Bool)

(assert (= b_and!111051 (and (=> t!144044 result!107902) b_and!111075)))

(declare-fun m!1871593 () Bool)

(assert (=> d!471132 m!1871593))

(declare-fun m!1871595 () Bool)

(assert (=> d!471132 m!1871595))

(assert (=> b!1583402 d!471132))

(declare-fun d!471134 () Bool)

(assert (=> d!471134 (= (get!4978 lt!556077) (v!23986 lt!556077))))

(assert (=> b!1583402 d!471134))

(declare-fun d!471136 () Bool)

(declare-fun lt!556653 () Int)

(assert (=> d!471136 (= lt!556653 (size!14005 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun size!14013 (Conc!5782) Int)

(assert (=> d!471136 (= lt!556653 (size!14013 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471136 (= (size!14006 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) lt!556653)))

(declare-fun bs!391243 () Bool)

(assert (= bs!391243 d!471136))

(assert (=> bs!391243 m!1869931))

(assert (=> bs!391243 m!1870367))

(assert (=> bs!391243 m!1870367))

(declare-fun m!1871597 () Bool)

(assert (=> bs!391243 m!1871597))

(declare-fun m!1871599 () Bool)

(assert (=> bs!391243 m!1871599))

(assert (=> b!1583791 d!471136))

(declare-fun d!471138 () Bool)

(declare-fun lt!556656 () C!8964)

(declare-fun contains!3038 (List!17474 C!8964) Bool)

(assert (=> d!471138 (contains!3038 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) lt!556656)))

(declare-fun e!1017705 () C!8964)

(assert (=> d!471138 (= lt!556656 e!1017705)))

(declare-fun c!256767 () Bool)

(assert (=> d!471138 (= c!256767 (= 0 0))))

(declare-fun e!1017706 () Bool)

(assert (=> d!471138 e!1017706))

(declare-fun res!706491 () Bool)

(assert (=> d!471138 (=> (not res!706491) (not e!1017706))))

(assert (=> d!471138 (= res!706491 (<= 0 0))))

(assert (=> d!471138 (= (apply!4245 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) 0) lt!556656)))

(declare-fun b!1584342 () Bool)

(assert (=> b!1584342 (= e!1017706 (< 0 (size!14005 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1584343 () Bool)

(assert (=> b!1584343 (= e!1017705 (head!3208 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584344 () Bool)

(assert (=> b!1584344 (= e!1017705 (apply!4245 (tail!2266 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) (- 0 1)))))

(assert (= (and d!471138 res!706491) b!1584342))

(assert (= (and d!471138 c!256767) b!1584343))

(assert (= (and d!471138 (not c!256767)) b!1584344))

(assert (=> d!471138 m!1870367))

(declare-fun m!1871601 () Bool)

(assert (=> d!471138 m!1871601))

(assert (=> b!1584342 m!1870367))

(assert (=> b!1584342 m!1871597))

(assert (=> b!1584343 m!1870367))

(declare-fun m!1871603 () Bool)

(assert (=> b!1584343 m!1871603))

(assert (=> b!1584344 m!1870367))

(declare-fun m!1871605 () Bool)

(assert (=> b!1584344 m!1871605))

(assert (=> b!1584344 m!1871605))

(declare-fun m!1871607 () Bool)

(assert (=> b!1584344 m!1871607))

(assert (=> d!470926 d!471138))

(declare-fun d!471140 () Bool)

(assert (=> d!471140 (= (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6747 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun bs!391244 () Bool)

(assert (= bs!391244 d!471140))

(declare-fun m!1871609 () Bool)

(assert (=> bs!391244 m!1871609))

(assert (=> d!470926 d!471140))

(declare-fun b!1584359 () Bool)

(declare-fun e!1017717 () Bool)

(assert (=> b!1584359 (= e!1017717 (< 0 (size!14013 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun bm!102861 () Bool)

(declare-fun c!256775 () Bool)

(declare-fun c!256774 () Bool)

(assert (=> bm!102861 (= c!256775 c!256774)))

(declare-fun call!102866 () C!8964)

(declare-fun e!1017716 () Int)

(assert (=> bm!102861 (= call!102866 (apply!4246 (ite c!256774 (left!14061 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) (right!14391 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))) e!1017716))))

(declare-fun d!471142 () Bool)

(declare-fun lt!556661 () C!8964)

(assert (=> d!471142 (= lt!556661 (apply!4245 (list!6747 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) 0))))

(declare-fun e!1017715 () C!8964)

(assert (=> d!471142 (= lt!556661 e!1017715)))

(declare-fun c!256776 () Bool)

(assert (=> d!471142 (= c!256776 ((_ is Leaf!8536) (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471142 e!1017717))

(declare-fun res!706494 () Bool)

(assert (=> d!471142 (=> (not res!706494) (not e!1017717))))

(assert (=> d!471142 (= res!706494 (<= 0 0))))

(assert (=> d!471142 (= (apply!4246 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) 0) lt!556661)))

(declare-fun b!1584360 () Bool)

(declare-fun e!1017718 () C!8964)

(assert (=> b!1584360 (= e!1017715 e!1017718)))

(declare-fun lt!556662 () Bool)

(declare-fun appendIndex!196 (List!17474 List!17474 Int) Bool)

(assert (=> b!1584360 (= lt!556662 (appendIndex!196 (list!6747 (left!14061 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))) (list!6747 (right!14391 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))) 0))))

(assert (=> b!1584360 (= c!256774 (< 0 (size!14013 (left!14061 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))

(declare-fun b!1584361 () Bool)

(assert (=> b!1584361 (= e!1017716 0)))

(declare-fun b!1584362 () Bool)

(assert (=> b!1584362 (= e!1017718 call!102866)))

(declare-fun b!1584363 () Bool)

(assert (=> b!1584363 (= e!1017718 call!102866)))

(declare-fun b!1584364 () Bool)

(assert (=> b!1584364 (= e!1017716 (- 0 (size!14013 (left!14061 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))

(declare-fun b!1584365 () Bool)

(declare-fun apply!4248 (IArray!11569 Int) C!8964)

(assert (=> b!1584365 (= e!1017715 (apply!4248 (xs!8586 (c!256547 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) 0))))

(assert (= (and d!471142 res!706494) b!1584359))

(assert (= (and d!471142 c!256776) b!1584365))

(assert (= (and d!471142 (not c!256776)) b!1584360))

(assert (= (and b!1584360 c!256774) b!1584362))

(assert (= (and b!1584360 (not c!256774)) b!1584363))

(assert (= (or b!1584362 b!1584363) bm!102861))

(assert (= (and bm!102861 c!256775) b!1584361))

(assert (= (and bm!102861 (not c!256775)) b!1584364))

(declare-fun m!1871611 () Bool)

(assert (=> b!1584364 m!1871611))

(declare-fun m!1871613 () Bool)

(assert (=> b!1584360 m!1871613))

(declare-fun m!1871615 () Bool)

(assert (=> b!1584360 m!1871615))

(assert (=> b!1584360 m!1871613))

(assert (=> b!1584360 m!1871615))

(declare-fun m!1871617 () Bool)

(assert (=> b!1584360 m!1871617))

(assert (=> b!1584360 m!1871611))

(declare-fun m!1871619 () Bool)

(assert (=> bm!102861 m!1871619))

(assert (=> d!471142 m!1871609))

(assert (=> d!471142 m!1871609))

(declare-fun m!1871621 () Bool)

(assert (=> d!471142 m!1871621))

(assert (=> b!1584359 m!1871599))

(declare-fun m!1871623 () Bool)

(assert (=> b!1584365 m!1871623))

(assert (=> d!470926 d!471142))

(declare-fun d!471144 () Bool)

(assert (=> d!471144 (= (list!6743 lt!556161) (list!6747 (c!256547 lt!556161)))))

(declare-fun bs!391245 () Bool)

(assert (= bs!391245 d!471144))

(declare-fun m!1871625 () Bool)

(assert (=> bs!391245 m!1871625))

(assert (=> d!470822 d!471144))

(assert (=> d!470866 d!470830))

(declare-fun d!471146 () Bool)

(assert (=> d!471146 (isPrefix!1327 lt!556428 (++!4529 lt!556428 lt!556426))))

(declare-fun lt!556663 () Unit!27203)

(assert (=> d!471146 (= lt!556663 (choose!9475 lt!556428 lt!556426))))

(assert (=> d!471146 (= (lemmaConcatTwoListThenFirstIsPrefix!852 lt!556428 lt!556426) lt!556663)))

(declare-fun bs!391246 () Bool)

(assert (= bs!391246 d!471146))

(assert (=> bs!391246 m!1870691))

(assert (=> bs!391246 m!1870691))

(assert (=> bs!391246 m!1870693))

(declare-fun m!1871627 () Bool)

(assert (=> bs!391246 m!1871627))

(assert (=> d!470866 d!471146))

(declare-fun b!1584366 () Bool)

(declare-fun e!1017720 () Option!3128)

(declare-fun lt!556665 () Option!3128)

(declare-fun lt!556666 () Option!3128)

(assert (=> b!1584366 (= e!1017720 (ite (and ((_ is None!3127) lt!556665) ((_ is None!3127) lt!556666)) None!3127 (ite ((_ is None!3127) lt!556666) lt!556665 (ite ((_ is None!3127) lt!556665) lt!556666 (ite (>= (size!14000 (_1!9845 (v!23986 lt!556665))) (size!14000 (_1!9845 (v!23986 lt!556666)))) lt!556665 lt!556666)))))))

(declare-fun call!102867 () Option!3128)

(assert (=> b!1584366 (= lt!556665 call!102867)))

(assert (=> b!1584366 (= lt!556666 (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) lt!555973))))

(declare-fun b!1584367 () Bool)

(declare-fun e!1017719 () Bool)

(declare-fun lt!556668 () Option!3128)

(assert (=> b!1584367 (= e!1017719 (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!556668)))))))

(declare-fun b!1584368 () Bool)

(declare-fun res!706497 () Bool)

(assert (=> b!1584368 (=> (not res!706497) (not e!1017719))))

(assert (=> b!1584368 (= res!706497 (= (value!97082 (_1!9845 (get!4978 lt!556668))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556668)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556668)))))))))

(declare-fun d!471148 () Bool)

(declare-fun e!1017721 () Bool)

(assert (=> d!471148 e!1017721))

(declare-fun res!706498 () Bool)

(assert (=> d!471148 (=> res!706498 e!1017721)))

(assert (=> d!471148 (= res!706498 (isEmpty!10427 lt!556668))))

(assert (=> d!471148 (= lt!556668 e!1017720)))

(declare-fun c!256777 () Bool)

(assert (=> d!471148 (= c!256777 (and ((_ is Cons!17406) rules!1846) ((_ is Nil!17406) (t!143961 rules!1846))))))

(declare-fun lt!556667 () Unit!27203)

(declare-fun lt!556664 () Unit!27203)

(assert (=> d!471148 (= lt!556667 lt!556664)))

(assert (=> d!471148 (isPrefix!1327 lt!555973 lt!555973)))

(assert (=> d!471148 (= lt!556664 (lemmaIsPrefixRefl!916 lt!555973 lt!555973))))

(assert (=> d!471148 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!471148 (= (maxPrefix!1260 thiss!17113 rules!1846 lt!555973) lt!556668)))

(declare-fun b!1584369 () Bool)

(assert (=> b!1584369 (= e!1017720 call!102867)))

(declare-fun b!1584370 () Bool)

(declare-fun res!706496 () Bool)

(assert (=> b!1584370 (=> (not res!706496) (not e!1017719))))

(assert (=> b!1584370 (= res!706496 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556668)))) (_2!9845 (get!4978 lt!556668))) lt!555973))))

(declare-fun bm!102862 () Bool)

(assert (=> bm!102862 (= call!102867 (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) lt!555973))))

(declare-fun b!1584371 () Bool)

(declare-fun res!706495 () Bool)

(assert (=> b!1584371 (=> (not res!706495) (not e!1017719))))

(assert (=> b!1584371 (= res!706495 (< (size!14005 (_2!9845 (get!4978 lt!556668))) (size!14005 lt!555973)))))

(declare-fun b!1584372 () Bool)

(declare-fun res!706500 () Bool)

(assert (=> b!1584372 (=> (not res!706500) (not e!1017719))))

(assert (=> b!1584372 (= res!706500 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556668)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!556668)))))))

(declare-fun b!1584373 () Bool)

(assert (=> b!1584373 (= e!1017721 e!1017719)))

(declare-fun res!706499 () Bool)

(assert (=> b!1584373 (=> (not res!706499) (not e!1017719))))

(assert (=> b!1584373 (= res!706499 (isDefined!2505 lt!556668))))

(declare-fun b!1584374 () Bool)

(declare-fun res!706501 () Bool)

(assert (=> b!1584374 (=> (not res!706501) (not e!1017719))))

(assert (=> b!1584374 (= res!706501 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556668)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556668))))))))

(assert (= (and d!471148 c!256777) b!1584369))

(assert (= (and d!471148 (not c!256777)) b!1584366))

(assert (= (or b!1584369 b!1584366) bm!102862))

(assert (= (and d!471148 (not res!706498)) b!1584373))

(assert (= (and b!1584373 res!706499) b!1584372))

(assert (= (and b!1584372 res!706500) b!1584371))

(assert (= (and b!1584371 res!706495) b!1584370))

(assert (= (and b!1584370 res!706496) b!1584368))

(assert (= (and b!1584368 res!706497) b!1584374))

(assert (= (and b!1584374 res!706501) b!1584367))

(declare-fun m!1871629 () Bool)

(assert (=> bm!102862 m!1871629))

(declare-fun m!1871631 () Bool)

(assert (=> b!1584368 m!1871631))

(declare-fun m!1871633 () Bool)

(assert (=> b!1584368 m!1871633))

(assert (=> b!1584368 m!1871633))

(declare-fun m!1871635 () Bool)

(assert (=> b!1584368 m!1871635))

(declare-fun m!1871637 () Bool)

(assert (=> d!471148 m!1871637))

(declare-fun m!1871639 () Bool)

(assert (=> d!471148 m!1871639))

(declare-fun m!1871641 () Bool)

(assert (=> d!471148 m!1871641))

(assert (=> d!471148 m!1870111))

(assert (=> b!1584371 m!1871631))

(declare-fun m!1871643 () Bool)

(assert (=> b!1584371 m!1871643))

(assert (=> b!1584371 m!1870333))

(assert (=> b!1584367 m!1871631))

(declare-fun m!1871645 () Bool)

(assert (=> b!1584367 m!1871645))

(assert (=> b!1584374 m!1871631))

(declare-fun m!1871647 () Bool)

(assert (=> b!1584374 m!1871647))

(assert (=> b!1584374 m!1871647))

(declare-fun m!1871649 () Bool)

(assert (=> b!1584374 m!1871649))

(assert (=> b!1584374 m!1871649))

(declare-fun m!1871653 () Bool)

(assert (=> b!1584374 m!1871653))

(declare-fun m!1871655 () Bool)

(assert (=> b!1584366 m!1871655))

(assert (=> b!1584372 m!1871631))

(assert (=> b!1584372 m!1871647))

(assert (=> b!1584372 m!1871647))

(assert (=> b!1584372 m!1871649))

(assert (=> b!1584370 m!1871631))

(assert (=> b!1584370 m!1871647))

(assert (=> b!1584370 m!1871647))

(assert (=> b!1584370 m!1871649))

(assert (=> b!1584370 m!1871649))

(declare-fun m!1871657 () Bool)

(assert (=> b!1584370 m!1871657))

(declare-fun m!1871659 () Bool)

(assert (=> b!1584373 m!1871659))

(assert (=> d!470866 d!471148))

(declare-fun b!1584378 () Bool)

(declare-fun e!1017725 () Option!3128)

(declare-fun lt!556675 () Option!3128)

(declare-fun lt!556676 () Option!3128)

(assert (=> b!1584378 (= e!1017725 (ite (and ((_ is None!3127) lt!556675) ((_ is None!3127) lt!556676)) None!3127 (ite ((_ is None!3127) lt!556676) lt!556675 (ite ((_ is None!3127) lt!556675) lt!556676 (ite (>= (size!14000 (_1!9845 (v!23986 lt!556675))) (size!14000 (_1!9845 (v!23986 lt!556676)))) lt!556675 lt!556676)))))))

(declare-fun call!102868 () Option!3128)

(assert (=> b!1584378 (= lt!556675 call!102868)))

(assert (=> b!1584378 (= lt!556676 (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) (++!4529 lt!555973 lt!555959)))))

(declare-fun b!1584379 () Bool)

(declare-fun e!1017724 () Bool)

(declare-fun lt!556678 () Option!3128)

(assert (=> b!1584379 (= e!1017724 (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!556678)))))))

(declare-fun b!1584380 () Bool)

(declare-fun res!706507 () Bool)

(assert (=> b!1584380 (=> (not res!706507) (not e!1017724))))

(assert (=> b!1584380 (= res!706507 (= (value!97082 (_1!9845 (get!4978 lt!556678))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556678)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556678)))))))))

(declare-fun d!471152 () Bool)

(declare-fun e!1017726 () Bool)

(assert (=> d!471152 e!1017726))

(declare-fun res!706508 () Bool)

(assert (=> d!471152 (=> res!706508 e!1017726)))

(assert (=> d!471152 (= res!706508 (isEmpty!10427 lt!556678))))

(assert (=> d!471152 (= lt!556678 e!1017725)))

(declare-fun c!256778 () Bool)

(assert (=> d!471152 (= c!256778 (and ((_ is Cons!17406) rules!1846) ((_ is Nil!17406) (t!143961 rules!1846))))))

(declare-fun lt!556677 () Unit!27203)

(declare-fun lt!556674 () Unit!27203)

(assert (=> d!471152 (= lt!556677 lt!556674)))

(assert (=> d!471152 (isPrefix!1327 (++!4529 lt!555973 lt!555959) (++!4529 lt!555973 lt!555959))))

(assert (=> d!471152 (= lt!556674 (lemmaIsPrefixRefl!916 (++!4529 lt!555973 lt!555959) (++!4529 lt!555973 lt!555959)))))

(assert (=> d!471152 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!471152 (= (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959)) lt!556678)))

(declare-fun b!1584381 () Bool)

(assert (=> b!1584381 (= e!1017725 call!102868)))

(declare-fun b!1584382 () Bool)

(declare-fun res!706506 () Bool)

(assert (=> b!1584382 (=> (not res!706506) (not e!1017724))))

(assert (=> b!1584382 (= res!706506 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556678)))) (_2!9845 (get!4978 lt!556678))) (++!4529 lt!555973 lt!555959)))))

(declare-fun bm!102863 () Bool)

(assert (=> bm!102863 (= call!102868 (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) (++!4529 lt!555973 lt!555959)))))

(declare-fun b!1584383 () Bool)

(declare-fun res!706505 () Bool)

(assert (=> b!1584383 (=> (not res!706505) (not e!1017724))))

(assert (=> b!1584383 (= res!706505 (< (size!14005 (_2!9845 (get!4978 lt!556678))) (size!14005 (++!4529 lt!555973 lt!555959))))))

(declare-fun b!1584384 () Bool)

(declare-fun res!706510 () Bool)

(assert (=> b!1584384 (=> (not res!706510) (not e!1017724))))

(assert (=> b!1584384 (= res!706510 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556678)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!556678)))))))

(declare-fun b!1584385 () Bool)

(assert (=> b!1584385 (= e!1017726 e!1017724)))

(declare-fun res!706509 () Bool)

(assert (=> b!1584385 (=> (not res!706509) (not e!1017724))))

(assert (=> b!1584385 (= res!706509 (isDefined!2505 lt!556678))))

(declare-fun b!1584386 () Bool)

(declare-fun res!706511 () Bool)

(assert (=> b!1584386 (=> (not res!706511) (not e!1017724))))

(assert (=> b!1584386 (= res!706511 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556678)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556678))))))))

(assert (= (and d!471152 c!256778) b!1584381))

(assert (= (and d!471152 (not c!256778)) b!1584378))

(assert (= (or b!1584381 b!1584378) bm!102863))

(assert (= (and d!471152 (not res!706508)) b!1584385))

(assert (= (and b!1584385 res!706509) b!1584384))

(assert (= (and b!1584384 res!706510) b!1584383))

(assert (= (and b!1584383 res!706505) b!1584382))

(assert (= (and b!1584382 res!706506) b!1584380))

(assert (= (and b!1584380 res!706507) b!1584386))

(assert (= (and b!1584386 res!706511) b!1584379))

(assert (=> bm!102863 m!1869871))

(declare-fun m!1871677 () Bool)

(assert (=> bm!102863 m!1871677))

(declare-fun m!1871679 () Bool)

(assert (=> b!1584380 m!1871679))

(declare-fun m!1871681 () Bool)

(assert (=> b!1584380 m!1871681))

(assert (=> b!1584380 m!1871681))

(declare-fun m!1871683 () Bool)

(assert (=> b!1584380 m!1871683))

(declare-fun m!1871685 () Bool)

(assert (=> d!471152 m!1871685))

(assert (=> d!471152 m!1869871))

(assert (=> d!471152 m!1869871))

(declare-fun m!1871687 () Bool)

(assert (=> d!471152 m!1871687))

(assert (=> d!471152 m!1869871))

(assert (=> d!471152 m!1869871))

(declare-fun m!1871690 () Bool)

(assert (=> d!471152 m!1871690))

(assert (=> d!471152 m!1870111))

(assert (=> b!1584383 m!1871679))

(declare-fun m!1871695 () Bool)

(assert (=> b!1584383 m!1871695))

(assert (=> b!1584383 m!1869871))

(declare-fun m!1871697 () Bool)

(assert (=> b!1584383 m!1871697))

(assert (=> b!1584379 m!1871679))

(declare-fun m!1871699 () Bool)

(assert (=> b!1584379 m!1871699))

(assert (=> b!1584386 m!1871679))

(declare-fun m!1871701 () Bool)

(assert (=> b!1584386 m!1871701))

(assert (=> b!1584386 m!1871701))

(declare-fun m!1871703 () Bool)

(assert (=> b!1584386 m!1871703))

(assert (=> b!1584386 m!1871703))

(declare-fun m!1871705 () Bool)

(assert (=> b!1584386 m!1871705))

(assert (=> b!1584378 m!1869871))

(declare-fun m!1871707 () Bool)

(assert (=> b!1584378 m!1871707))

(assert (=> b!1584384 m!1871679))

(assert (=> b!1584384 m!1871701))

(assert (=> b!1584384 m!1871701))

(assert (=> b!1584384 m!1871703))

(assert (=> b!1584382 m!1871679))

(assert (=> b!1584382 m!1871701))

(assert (=> b!1584382 m!1871701))

(assert (=> b!1584382 m!1871703))

(assert (=> b!1584382 m!1871703))

(declare-fun m!1871709 () Bool)

(assert (=> b!1584382 m!1871709))

(declare-fun m!1871711 () Bool)

(assert (=> b!1584385 m!1871711))

(assert (=> d!470866 d!471152))

(declare-fun d!471160 () Bool)

(assert (=> d!471160 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)))) (list!6748 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(declare-fun bs!391250 () Bool)

(assert (= bs!391250 d!471160))

(declare-fun m!1871713 () Bool)

(assert (=> bs!391250 m!1871713))

(assert (=> d!470866 d!471160))

(declare-fun d!471162 () Bool)

(assert (=> d!471162 (= (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959))) (not (isEmpty!10427 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959)))))))

(declare-fun bs!391251 () Bool)

(assert (= bs!391251 d!471162))

(assert (=> bs!391251 m!1870669))

(assert (=> bs!391251 m!1870671))

(assert (=> d!470866 d!471162))

(assert (=> d!470866 d!470934))

(declare-fun d!471164 () Bool)

(assert (=> d!471164 (= (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 lt!555973)) (v!23986 (maxPrefix!1260 thiss!17113 rules!1846 lt!555973)))))

(assert (=> d!470866 d!471164))

(assert (=> d!470866 d!470784))

(declare-fun e!1017727 () Bool)

(declare-fun b!1584389 () Bool)

(assert (=> b!1584389 (= e!1017727 (isPrefix!1327 (tail!2266 lt!556416) (tail!2266 (++!4529 lt!555973 lt!555959))))))

(declare-fun b!1584387 () Bool)

(declare-fun e!1017729 () Bool)

(assert (=> b!1584387 (= e!1017729 e!1017727)))

(declare-fun res!706513 () Bool)

(assert (=> b!1584387 (=> (not res!706513) (not e!1017727))))

(assert (=> b!1584387 (= res!706513 (not ((_ is Nil!17404) (++!4529 lt!555973 lt!555959))))))

(declare-fun d!471166 () Bool)

(declare-fun e!1017728 () Bool)

(assert (=> d!471166 e!1017728))

(declare-fun res!706514 () Bool)

(assert (=> d!471166 (=> res!706514 e!1017728)))

(declare-fun lt!556681 () Bool)

(assert (=> d!471166 (= res!706514 (not lt!556681))))

(assert (=> d!471166 (= lt!556681 e!1017729)))

(declare-fun res!706512 () Bool)

(assert (=> d!471166 (=> res!706512 e!1017729)))

(assert (=> d!471166 (= res!706512 ((_ is Nil!17404) lt!556416))))

(assert (=> d!471166 (= (isPrefix!1327 lt!556416 (++!4529 lt!555973 lt!555959)) lt!556681)))

(declare-fun b!1584388 () Bool)

(declare-fun res!706515 () Bool)

(assert (=> b!1584388 (=> (not res!706515) (not e!1017727))))

(assert (=> b!1584388 (= res!706515 (= (head!3208 lt!556416) (head!3208 (++!4529 lt!555973 lt!555959))))))

(declare-fun b!1584390 () Bool)

(assert (=> b!1584390 (= e!1017728 (>= (size!14005 (++!4529 lt!555973 lt!555959)) (size!14005 lt!556416)))))

(assert (= (and d!471166 (not res!706512)) b!1584387))

(assert (= (and b!1584387 res!706513) b!1584388))

(assert (= (and b!1584388 res!706515) b!1584389))

(assert (= (and d!471166 (not res!706514)) b!1584390))

(declare-fun m!1871715 () Bool)

(assert (=> b!1584389 m!1871715))

(assert (=> b!1584389 m!1869871))

(declare-fun m!1871717 () Bool)

(assert (=> b!1584389 m!1871717))

(assert (=> b!1584389 m!1871715))

(assert (=> b!1584389 m!1871717))

(declare-fun m!1871719 () Bool)

(assert (=> b!1584389 m!1871719))

(declare-fun m!1871721 () Bool)

(assert (=> b!1584388 m!1871721))

(assert (=> b!1584388 m!1869871))

(declare-fun m!1871723 () Bool)

(assert (=> b!1584388 m!1871723))

(assert (=> b!1584390 m!1869871))

(assert (=> b!1584390 m!1871697))

(declare-fun m!1871725 () Bool)

(assert (=> b!1584390 m!1871725))

(assert (=> d!470866 d!471166))

(declare-fun d!471168 () Bool)

(assert (=> d!471168 (= (isEmpty!10427 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959))) (not ((_ is Some!3127) (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 lt!555973 lt!555959)))))))

(assert (=> d!470866 d!471168))

(declare-fun b!1584393 () Bool)

(declare-fun e!1017730 () Bool)

(assert (=> b!1584393 (= e!1017730 (isPrefix!1327 (tail!2266 lt!556428) (tail!2266 (++!4529 lt!556428 lt!556426))))))

(declare-fun b!1584391 () Bool)

(declare-fun e!1017732 () Bool)

(assert (=> b!1584391 (= e!1017732 e!1017730)))

(declare-fun res!706517 () Bool)

(assert (=> b!1584391 (=> (not res!706517) (not e!1017730))))

(assert (=> b!1584391 (= res!706517 (not ((_ is Nil!17404) (++!4529 lt!556428 lt!556426))))))

(declare-fun d!471170 () Bool)

(declare-fun e!1017731 () Bool)

(assert (=> d!471170 e!1017731))

(declare-fun res!706518 () Bool)

(assert (=> d!471170 (=> res!706518 e!1017731)))

(declare-fun lt!556682 () Bool)

(assert (=> d!471170 (= res!706518 (not lt!556682))))

(assert (=> d!471170 (= lt!556682 e!1017732)))

(declare-fun res!706516 () Bool)

(assert (=> d!471170 (=> res!706516 e!1017732)))

(assert (=> d!471170 (= res!706516 ((_ is Nil!17404) lt!556428))))

(assert (=> d!471170 (= (isPrefix!1327 lt!556428 (++!4529 lt!556428 lt!556426)) lt!556682)))

(declare-fun b!1584392 () Bool)

(declare-fun res!706519 () Bool)

(assert (=> b!1584392 (=> (not res!706519) (not e!1017730))))

(assert (=> b!1584392 (= res!706519 (= (head!3208 lt!556428) (head!3208 (++!4529 lt!556428 lt!556426))))))

(declare-fun b!1584394 () Bool)

(assert (=> b!1584394 (= e!1017731 (>= (size!14005 (++!4529 lt!556428 lt!556426)) (size!14005 lt!556428)))))

(assert (= (and d!471170 (not res!706516)) b!1584391))

(assert (= (and b!1584391 res!706517) b!1584392))

(assert (= (and b!1584392 res!706519) b!1584393))

(assert (= (and d!471170 (not res!706518)) b!1584394))

(declare-fun m!1871727 () Bool)

(assert (=> b!1584393 m!1871727))

(assert (=> b!1584393 m!1870691))

(declare-fun m!1871729 () Bool)

(assert (=> b!1584393 m!1871729))

(assert (=> b!1584393 m!1871727))

(assert (=> b!1584393 m!1871729))

(declare-fun m!1871731 () Bool)

(assert (=> b!1584393 m!1871731))

(declare-fun m!1871733 () Bool)

(assert (=> b!1584392 m!1871733))

(assert (=> b!1584392 m!1870691))

(declare-fun m!1871735 () Bool)

(assert (=> b!1584392 m!1871735))

(assert (=> b!1584394 m!1870691))

(declare-fun m!1871737 () Bool)

(assert (=> b!1584394 m!1871737))

(declare-fun m!1871739 () Bool)

(assert (=> b!1584394 m!1871739))

(assert (=> d!470866 d!471170))

(declare-fun d!471172 () Bool)

(declare-fun e!1017735 () Bool)

(assert (=> d!471172 e!1017735))

(declare-fun res!706524 () Bool)

(assert (=> d!471172 (=> (not res!706524) (not e!1017735))))

(assert (=> d!471172 (= res!706524 (isDefined!2507 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))

(declare-fun lt!556685 () Unit!27203)

(declare-fun choose!9480 (LexerInterface!2696 List!17476 List!17474 Token!5700) Unit!27203)

(assert (=> d!471172 (= lt!556685 (choose!9480 thiss!17113 rules!1846 lt!555973 lt!556425))))

(assert (=> d!471172 (rulesInvariant!2365 thiss!17113 rules!1846)))

(assert (=> d!471172 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!240 thiss!17113 rules!1846 lt!555973 lt!556425) lt!556685)))

(declare-fun b!1584399 () Bool)

(declare-fun res!706525 () Bool)

(assert (=> b!1584399 (=> (not res!706525) (not e!1017735))))

(assert (=> b!1584399 (= res!706525 (matchR!1916 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))) (list!6743 (charsOf!1716 lt!556425))))))

(declare-fun b!1584400 () Bool)

(assert (=> b!1584400 (= e!1017735 (= (rule!4867 lt!556425) (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))))))

(assert (= (and d!471172 res!706524) b!1584399))

(assert (= (and b!1584399 res!706525) b!1584400))

(assert (=> d!471172 m!1870659))

(assert (=> d!471172 m!1870659))

(assert (=> d!471172 m!1870683))

(declare-fun m!1871741 () Bool)

(assert (=> d!471172 m!1871741))

(assert (=> d!471172 m!1869865))

(assert (=> b!1584399 m!1870659))

(assert (=> b!1584399 m!1870661))

(assert (=> b!1584399 m!1870663))

(assert (=> b!1584399 m!1870665))

(assert (=> b!1584399 m!1870663))

(assert (=> b!1584399 m!1870665))

(assert (=> b!1584399 m!1870667))

(assert (=> b!1584399 m!1870659))

(assert (=> b!1584400 m!1870659))

(assert (=> b!1584400 m!1870659))

(assert (=> b!1584400 m!1870661))

(assert (=> d!470866 d!471172))

(declare-fun d!471174 () Bool)

(declare-fun e!1017746 () Bool)

(assert (=> d!471174 e!1017746))

(declare-fun res!706530 () Bool)

(assert (=> d!471174 (=> res!706530 e!1017746)))

(declare-fun lt!556694 () Option!3130)

(declare-fun isEmpty!10437 (Option!3130) Bool)

(assert (=> d!471174 (= res!706530 (isEmpty!10437 lt!556694))))

(declare-fun e!1017744 () Option!3130)

(assert (=> d!471174 (= lt!556694 e!1017744)))

(declare-fun c!256784 () Bool)

(assert (=> d!471174 (= c!256784 (and ((_ is Cons!17406) rules!1846) (= (tag!3335 (h!22807 rules!1846)) (tag!3335 (rule!4867 lt!556425)))))))

(assert (=> d!471174 (rulesInvariant!2365 thiss!17113 rules!1846)))

(assert (=> d!471174 (= (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))) lt!556694)))

(declare-fun b!1584413 () Bool)

(declare-fun e!1017747 () Bool)

(assert (=> b!1584413 (= e!1017746 e!1017747)))

(declare-fun res!706531 () Bool)

(assert (=> b!1584413 (=> (not res!706531) (not e!1017747))))

(assert (=> b!1584413 (= res!706531 (contains!3036 rules!1846 (get!4979 lt!556694)))))

(declare-fun b!1584414 () Bool)

(declare-fun e!1017745 () Option!3130)

(assert (=> b!1584414 (= e!1017744 e!1017745)))

(declare-fun c!256783 () Bool)

(assert (=> b!1584414 (= c!256783 (and ((_ is Cons!17406) rules!1846) (not (= (tag!3335 (h!22807 rules!1846)) (tag!3335 (rule!4867 lt!556425))))))))

(declare-fun b!1584415 () Bool)

(declare-fun lt!556692 () Unit!27203)

(declare-fun lt!556693 () Unit!27203)

(assert (=> b!1584415 (= lt!556692 lt!556693)))

(assert (=> b!1584415 (rulesInvariant!2365 thiss!17113 (t!143961 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!91 (LexerInterface!2696 Rule!5934 List!17476) Unit!27203)

(assert (=> b!1584415 (= lt!556693 (lemmaInvariantOnRulesThenOnTail!91 thiss!17113 (h!22807 rules!1846) (t!143961 rules!1846)))))

(assert (=> b!1584415 (= e!1017745 (getRuleFromTag!240 thiss!17113 (t!143961 rules!1846) (tag!3335 (rule!4867 lt!556425))))))

(declare-fun b!1584416 () Bool)

(assert (=> b!1584416 (= e!1017745 None!3129)))

(declare-fun b!1584417 () Bool)

(assert (=> b!1584417 (= e!1017747 (= (tag!3335 (get!4979 lt!556694)) (tag!3335 (rule!4867 lt!556425))))))

(declare-fun b!1584418 () Bool)

(assert (=> b!1584418 (= e!1017744 (Some!3129 (h!22807 rules!1846)))))

(assert (= (and d!471174 c!256784) b!1584418))

(assert (= (and d!471174 (not c!256784)) b!1584414))

(assert (= (and b!1584414 c!256783) b!1584415))

(assert (= (and b!1584414 (not c!256783)) b!1584416))

(assert (= (and d!471174 (not res!706530)) b!1584413))

(assert (= (and b!1584413 res!706531) b!1584417))

(declare-fun m!1871743 () Bool)

(assert (=> d!471174 m!1871743))

(assert (=> d!471174 m!1869865))

(declare-fun m!1871745 () Bool)

(assert (=> b!1584413 m!1871745))

(assert (=> b!1584413 m!1871745))

(declare-fun m!1871747 () Bool)

(assert (=> b!1584413 m!1871747))

(declare-fun m!1871749 () Bool)

(assert (=> b!1584415 m!1871749))

(declare-fun m!1871751 () Bool)

(assert (=> b!1584415 m!1871751))

(declare-fun m!1871753 () Bool)

(assert (=> b!1584415 m!1871753))

(assert (=> b!1584417 m!1871745))

(assert (=> d!470866 d!471174))

(declare-fun d!471176 () Bool)

(assert (=> d!471176 (= (isDefined!2507 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))) (not (isEmpty!10437 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))))))

(declare-fun bs!391252 () Bool)

(assert (= bs!391252 d!471176))

(assert (=> bs!391252 m!1870659))

(declare-fun m!1871755 () Bool)

(assert (=> bs!391252 m!1871755))

(assert (=> d!470866 d!471176))

(assert (=> d!470866 d!470782))

(declare-fun d!471178 () Bool)

(assert (=> d!471178 (= (list!6743 (charsOf!1716 lt!556425)) (list!6747 (c!256547 (charsOf!1716 lt!556425))))))

(declare-fun bs!391253 () Bool)

(assert (= bs!391253 d!471178))

(declare-fun m!1871757 () Bool)

(assert (=> bs!391253 m!1871757))

(assert (=> d!470866 d!471178))

(declare-fun b!1584419 () Bool)

(declare-fun e!1017749 () List!17474)

(assert (=> b!1584419 (= e!1017749 lt!556426)))

(declare-fun b!1584421 () Bool)

(declare-fun res!706532 () Bool)

(declare-fun e!1017748 () Bool)

(assert (=> b!1584421 (=> (not res!706532) (not e!1017748))))

(declare-fun lt!556695 () List!17474)

(assert (=> b!1584421 (= res!706532 (= (size!14005 lt!556695) (+ (size!14005 lt!556428) (size!14005 lt!556426))))))

(declare-fun b!1584422 () Bool)

(assert (=> b!1584422 (= e!1017748 (or (not (= lt!556426 Nil!17404)) (= lt!556695 lt!556428)))))

(declare-fun b!1584420 () Bool)

(assert (=> b!1584420 (= e!1017749 (Cons!17404 (h!22805 lt!556428) (++!4529 (t!143959 lt!556428) lt!556426)))))

(declare-fun d!471180 () Bool)

(assert (=> d!471180 e!1017748))

(declare-fun res!706533 () Bool)

(assert (=> d!471180 (=> (not res!706533) (not e!1017748))))

(assert (=> d!471180 (= res!706533 (= (content!2394 lt!556695) ((_ map or) (content!2394 lt!556428) (content!2394 lt!556426))))))

(assert (=> d!471180 (= lt!556695 e!1017749)))

(declare-fun c!256785 () Bool)

(assert (=> d!471180 (= c!256785 ((_ is Nil!17404) lt!556428))))

(assert (=> d!471180 (= (++!4529 lt!556428 lt!556426) lt!556695)))

(assert (= (and d!471180 c!256785) b!1584419))

(assert (= (and d!471180 (not c!256785)) b!1584420))

(assert (= (and d!471180 res!706533) b!1584421))

(assert (= (and b!1584421 res!706532) b!1584422))

(declare-fun m!1871759 () Bool)

(assert (=> b!1584421 m!1871759))

(assert (=> b!1584421 m!1871739))

(declare-fun m!1871761 () Bool)

(assert (=> b!1584421 m!1871761))

(declare-fun m!1871763 () Bool)

(assert (=> b!1584420 m!1871763))

(declare-fun m!1871765 () Bool)

(assert (=> d!471180 m!1871765))

(declare-fun m!1871767 () Bool)

(assert (=> d!471180 m!1871767))

(declare-fun m!1871769 () Bool)

(assert (=> d!471180 m!1871769))

(assert (=> d!470866 d!471180))

(declare-fun d!471182 () Bool)

(assert (=> d!471182 (isPrefix!1327 lt!556416 (++!4529 lt!555973 lt!555959))))

(declare-fun lt!556698 () Unit!27203)

(declare-fun choose!9481 (List!17474 List!17474 List!17474) Unit!27203)

(assert (=> d!471182 (= lt!556698 (choose!9481 lt!556416 lt!555973 lt!555959))))

(assert (=> d!471182 (isPrefix!1327 lt!556416 lt!555973)))

(assert (=> d!471182 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!126 lt!556416 lt!555973 lt!555959) lt!556698)))

(declare-fun bs!391254 () Bool)

(assert (= bs!391254 d!471182))

(assert (=> bs!391254 m!1869871))

(assert (=> bs!391254 m!1869871))

(assert (=> bs!391254 m!1870673))

(declare-fun m!1871771 () Bool)

(assert (=> bs!391254 m!1871771))

(declare-fun m!1871773 () Bool)

(assert (=> bs!391254 m!1871773))

(assert (=> d!470866 d!471182))

(declare-fun d!471184 () Bool)

(assert (=> d!471184 (= (head!3205 (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))) (h!22806 (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(assert (=> d!470866 d!471184))

(declare-fun d!471186 () Bool)

(declare-fun lt!556699 () BalanceConc!11508)

(assert (=> d!471186 (= (list!6743 lt!556699) (originalCharacters!3881 lt!556425))))

(assert (=> d!471186 (= lt!556699 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 lt!556425))) (value!97082 lt!556425)))))

(assert (=> d!471186 (= (charsOf!1716 lt!556425) lt!556699)))

(declare-fun b_lambda!49861 () Bool)

(assert (=> (not b_lambda!49861) (not d!471186)))

(declare-fun t!144048 () Bool)

(declare-fun tb!89143 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 lt!556425)))) t!144048) tb!89143))

(declare-fun b!1584423 () Bool)

(declare-fun e!1017750 () Bool)

(declare-fun tp!466006 () Bool)

(assert (=> b!1584423 (= e!1017750 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 lt!556425))) (value!97082 lt!556425)))) tp!466006))))

(declare-fun result!107904 () Bool)

(assert (=> tb!89143 (= result!107904 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 lt!556425))) (value!97082 lt!556425))) e!1017750))))

(assert (= tb!89143 b!1584423))

(declare-fun m!1871775 () Bool)

(assert (=> b!1584423 m!1871775))

(declare-fun m!1871777 () Bool)

(assert (=> tb!89143 m!1871777))

(assert (=> d!471186 t!144048))

(declare-fun b_and!111077 () Bool)

(assert (= b_and!111069 (and (=> t!144048 result!107904) b_and!111077)))

(declare-fun tb!89145 () Bool)

(declare-fun t!144050 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 lt!556425)))) t!144050) tb!89145))

(declare-fun result!107906 () Bool)

(assert (= result!107906 result!107904))

(assert (=> d!471186 t!144050))

(declare-fun b_and!111079 () Bool)

(assert (= b_and!111071 (and (=> t!144050 result!107906) b_and!111079)))

(declare-fun t!144052 () Bool)

(declare-fun tb!89147 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 lt!556425)))) t!144052) tb!89147))

(declare-fun result!107908 () Bool)

(assert (= result!107908 result!107904))

(assert (=> d!471186 t!144052))

(declare-fun b_and!111081 () Bool)

(assert (= b_and!111073 (and (=> t!144052 result!107908) b_and!111081)))

(declare-fun t!144054 () Bool)

(declare-fun tb!89149 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 lt!556425)))) t!144054) tb!89149))

(declare-fun result!107910 () Bool)

(assert (= result!107910 result!107904))

(assert (=> d!471186 t!144054))

(declare-fun b_and!111083 () Bool)

(assert (= b_and!111075 (and (=> t!144054 result!107910) b_and!111083)))

(declare-fun m!1871779 () Bool)

(assert (=> d!471186 m!1871779))

(declare-fun m!1871781 () Bool)

(assert (=> d!471186 m!1871781))

(assert (=> d!470866 d!471186))

(declare-fun d!471188 () Bool)

(declare-fun lt!556700 () Bool)

(assert (=> d!471188 (= lt!556700 (isEmpty!10428 (list!6744 (_1!9844 lt!556089))))))

(assert (=> d!471188 (= lt!556700 (isEmpty!10429 (c!256549 (_1!9844 lt!556089))))))

(assert (=> d!471188 (= (isEmpty!10422 (_1!9844 lt!556089)) lt!556700)))

(declare-fun bs!391255 () Bool)

(assert (= bs!391255 d!471188))

(assert (=> bs!391255 m!1870161))

(assert (=> bs!391255 m!1870161))

(declare-fun m!1871783 () Bool)

(assert (=> bs!391255 m!1871783))

(declare-fun m!1871785 () Bool)

(assert (=> bs!391255 m!1871785))

(assert (=> b!1583429 d!471188))

(declare-fun d!471190 () Bool)

(declare-fun lt!556701 () Int)

(assert (=> d!471190 (>= lt!556701 0)))

(declare-fun e!1017751 () Int)

(assert (=> d!471190 (= lt!556701 e!1017751)))

(declare-fun c!256786 () Bool)

(assert (=> d!471190 (= c!256786 ((_ is Nil!17404) lt!556166))))

(assert (=> d!471190 (= (size!14005 lt!556166) lt!556701)))

(declare-fun b!1584424 () Bool)

(assert (=> b!1584424 (= e!1017751 0)))

(declare-fun b!1584425 () Bool)

(assert (=> b!1584425 (= e!1017751 (+ 1 (size!14005 (t!143959 lt!556166))))))

(assert (= (and d!471190 c!256786) b!1584424))

(assert (= (and d!471190 (not c!256786)) b!1584425))

(declare-fun m!1871787 () Bool)

(assert (=> b!1584425 m!1871787))

(assert (=> b!1583507 d!471190))

(assert (=> b!1583507 d!470978))

(declare-fun d!471192 () Bool)

(declare-fun lt!556702 () Int)

(assert (=> d!471192 (>= lt!556702 0)))

(declare-fun e!1017752 () Int)

(assert (=> d!471192 (= lt!556702 e!1017752)))

(declare-fun c!256787 () Bool)

(assert (=> d!471192 (= c!256787 ((_ is Nil!17404) lt!555959))))

(assert (=> d!471192 (= (size!14005 lt!555959) lt!556702)))

(declare-fun b!1584426 () Bool)

(assert (=> b!1584426 (= e!1017752 0)))

(declare-fun b!1584427 () Bool)

(assert (=> b!1584427 (= e!1017752 (+ 1 (size!14005 (t!143959 lt!555959))))))

(assert (= (and d!471192 c!256787) b!1584426))

(assert (= (and d!471192 (not c!256787)) b!1584427))

(declare-fun m!1871789 () Bool)

(assert (=> b!1584427 m!1871789))

(assert (=> b!1583507 d!471192))

(declare-fun d!471194 () Bool)

(declare-fun lt!556705 () Bool)

(assert (=> d!471194 (= lt!556705 (isEmpty!10432 (list!6743 (_2!9844 lt!556446))))))

(assert (=> d!471194 (= lt!556705 (isEmpty!10436 (c!256547 (_2!9844 lt!556446))))))

(assert (=> d!471194 (= (isEmpty!10433 (_2!9844 lt!556446)) lt!556705)))

(declare-fun bs!391256 () Bool)

(assert (= bs!391256 d!471194))

(declare-fun m!1871791 () Bool)

(assert (=> bs!391256 m!1871791))

(assert (=> bs!391256 m!1871791))

(declare-fun m!1871793 () Bool)

(assert (=> bs!391256 m!1871793))

(declare-fun m!1871795 () Bool)

(assert (=> bs!391256 m!1871795))

(assert (=> b!1583757 d!471194))

(declare-fun d!471196 () Bool)

(declare-fun charsToBigInt!1 (List!17473) Int)

(assert (=> d!471196 (= (inv!17 (value!97082 (h!22806 tokens!457))) (= (charsToBigInt!1 (text!22547 (value!97082 (h!22806 tokens!457)))) (value!97074 (value!97082 (h!22806 tokens!457)))))))

(declare-fun bs!391257 () Bool)

(assert (= bs!391257 d!471196))

(declare-fun m!1871797 () Bool)

(assert (=> bs!391257 m!1871797))

(assert (=> b!1583318 d!471196))

(declare-fun lt!556706 () Bool)

(declare-fun d!471198 () Bool)

(assert (=> d!471198 (= lt!556706 (isEmpty!10432 (list!6743 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))))))

(assert (=> d!471198 (= lt!556706 (isEmpty!10436 (c!256547 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457))))))))))

(assert (=> d!471198 (= (isEmpty!10433 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 tokens!457)))))) lt!556706)))

(declare-fun bs!391258 () Bool)

(assert (= bs!391258 d!471198))

(declare-fun m!1871799 () Bool)

(assert (=> bs!391258 m!1871799))

(assert (=> bs!391258 m!1871799))

(declare-fun m!1871801 () Bool)

(assert (=> bs!391258 m!1871801))

(declare-fun m!1871803 () Bool)

(assert (=> bs!391258 m!1871803))

(assert (=> b!1583532 d!471198))

(assert (=> b!1583532 d!470980))

(assert (=> b!1583532 d!470982))

(assert (=> b!1583532 d!470824))

(declare-fun d!471200 () Bool)

(declare-fun lt!556707 () Int)

(assert (=> d!471200 (= lt!556707 (size!14005 (list!6743 (_2!9844 lt!556089))))))

(assert (=> d!471200 (= lt!556707 (size!14013 (c!256547 (_2!9844 lt!556089))))))

(assert (=> d!471200 (= (size!14006 (_2!9844 lt!556089)) lt!556707)))

(declare-fun bs!391259 () Bool)

(assert (= bs!391259 d!471200))

(assert (=> bs!391259 m!1870177))

(assert (=> bs!391259 m!1870177))

(declare-fun m!1871805 () Bool)

(assert (=> bs!391259 m!1871805))

(declare-fun m!1871807 () Bool)

(assert (=> bs!391259 m!1871807))

(assert (=> b!1583428 d!471200))

(declare-fun d!471202 () Bool)

(declare-fun lt!556708 () Int)

(assert (=> d!471202 (= lt!556708 (size!14005 (list!6743 (seqFromList!1884 lt!555973))))))

(assert (=> d!471202 (= lt!556708 (size!14013 (c!256547 (seqFromList!1884 lt!555973))))))

(assert (=> d!471202 (= (size!14006 (seqFromList!1884 lt!555973)) lt!556708)))

(declare-fun bs!391260 () Bool)

(assert (= bs!391260 d!471202))

(assert (=> bs!391260 m!1869899))

(assert (=> bs!391260 m!1870163))

(assert (=> bs!391260 m!1870163))

(declare-fun m!1871809 () Bool)

(assert (=> bs!391260 m!1871809))

(declare-fun m!1871811 () Bool)

(assert (=> bs!391260 m!1871811))

(assert (=> b!1583428 d!471202))

(declare-fun d!471204 () Bool)

(declare-fun lt!556709 () Int)

(assert (=> d!471204 (= lt!556709 (size!14007 (list!6744 (_1!9844 lt!556089))))))

(assert (=> d!471204 (= lt!556709 (size!14010 (c!256549 (_1!9844 lt!556089))))))

(assert (=> d!471204 (= (size!14004 (_1!9844 lt!556089)) lt!556709)))

(declare-fun bs!391261 () Bool)

(assert (= bs!391261 d!471204))

(assert (=> bs!391261 m!1870161))

(assert (=> bs!391261 m!1870161))

(declare-fun m!1871813 () Bool)

(assert (=> bs!391261 m!1871813))

(declare-fun m!1871815 () Bool)

(assert (=> bs!391261 m!1871815))

(assert (=> d!470782 d!471204))

(declare-fun e!1017817 () Bool)

(declare-fun b!1584546 () Bool)

(declare-fun lt!556930 () tuple2!16884)

(declare-fun lexRec!354 (LexerInterface!2696 List!17476 BalanceConc!11508) tuple2!16884)

(assert (=> b!1584546 (= e!1017817 (= (list!6743 (_2!9844 lt!556930)) (list!6743 (_2!9844 (lexRec!354 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(declare-fun b!1584547 () Bool)

(declare-datatypes ((tuple2!16892 0))(
  ( (tuple2!16893 (_1!9848 Token!5700) (_2!9848 BalanceConc!11508)) )
))
(declare-datatypes ((Option!3131 0))(
  ( (None!3130) (Some!3130 (v!23999 tuple2!16892)) )
))
(declare-fun lt!556941 () Option!3131)

(declare-fun lt!556938 () tuple2!16884)

(assert (=> b!1584547 (= lt!556938 (lexRec!354 thiss!17113 rules!1846 (_2!9848 (v!23999 lt!556941))))))

(declare-fun e!1017818 () tuple2!16884)

(assert (=> b!1584547 (= e!1017818 (tuple2!16885 (prepend!549 (_1!9844 lt!556938) (_1!9848 (v!23999 lt!556941))) (_2!9844 lt!556938)))))

(declare-fun d!471206 () Bool)

(assert (=> d!471206 e!1017817))

(declare-fun res!706581 () Bool)

(assert (=> d!471206 (=> (not res!706581) (not e!1017817))))

(assert (=> d!471206 (= res!706581 (= (list!6744 (_1!9844 lt!556930)) (list!6744 (_1!9844 (lexRec!354 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(declare-fun e!1017820 () tuple2!16884)

(assert (=> d!471206 (= lt!556930 e!1017820)))

(declare-fun c!256825 () Bool)

(declare-fun lt!556935 () Option!3131)

(assert (=> d!471206 (= c!256825 ((_ is Some!3130) lt!556935))))

(declare-fun maxPrefixZipperSequenceV2!249 (LexerInterface!2696 List!17476 BalanceConc!11508 BalanceConc!11508) Option!3131)

(assert (=> d!471206 (= lt!556935 (maxPrefixZipperSequenceV2!249 thiss!17113 rules!1846 (seqFromList!1884 lt!555973) (seqFromList!1884 lt!555973)))))

(declare-fun lt!556954 () Unit!27203)

(declare-fun lt!556953 () Unit!27203)

(assert (=> d!471206 (= lt!556954 lt!556953)))

(declare-fun lt!556950 () List!17474)

(declare-fun lt!556944 () List!17474)

(declare-fun isSuffix!400 (List!17474 List!17474) Bool)

(assert (=> d!471206 (isSuffix!400 lt!556950 (++!4529 lt!556944 lt!556950))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!301 (List!17474 List!17474) Unit!27203)

(assert (=> d!471206 (= lt!556953 (lemmaConcatTwoListThenFSndIsSuffix!301 lt!556944 lt!556950))))

(assert (=> d!471206 (= lt!556950 (list!6743 (seqFromList!1884 lt!555973)))))

(assert (=> d!471206 (= lt!556944 (list!6743 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!471206 (= (lexTailRecV2!507 thiss!17113 rules!1846 (seqFromList!1884 lt!555973) (BalanceConc!11509 Empty!5782) (seqFromList!1884 lt!555973) (BalanceConc!11511 Empty!5783)) lt!556930)))

(declare-fun b!1584548 () Bool)

(assert (=> b!1584548 (= e!1017820 (tuple2!16885 (BalanceConc!11511 Empty!5783) (seqFromList!1884 lt!555973)))))

(declare-fun b!1584549 () Bool)

(assert (=> b!1584549 (= e!1017818 (tuple2!16885 (BalanceConc!11511 Empty!5783) (seqFromList!1884 lt!555973)))))

(declare-fun lt!556943 () BalanceConc!11508)

(declare-fun b!1584550 () Bool)

(declare-fun append!533 (BalanceConc!11510 Token!5700) BalanceConc!11510)

(assert (=> b!1584550 (= e!1017820 (lexTailRecV2!507 thiss!17113 rules!1846 (seqFromList!1884 lt!555973) lt!556943 (_2!9848 (v!23999 lt!556935)) (append!533 (BalanceConc!11511 Empty!5783) (_1!9848 (v!23999 lt!556935)))))))

(declare-fun lt!556936 () tuple2!16884)

(assert (=> b!1584550 (= lt!556936 (lexRec!354 thiss!17113 rules!1846 (_2!9848 (v!23999 lt!556935))))))

(declare-fun lt!556958 () List!17474)

(assert (=> b!1584550 (= lt!556958 (list!6743 (BalanceConc!11509 Empty!5782)))))

(declare-fun lt!556927 () List!17474)

(assert (=> b!1584550 (= lt!556927 (list!6743 (charsOf!1716 (_1!9848 (v!23999 lt!556935)))))))

(declare-fun lt!556934 () List!17474)

(assert (=> b!1584550 (= lt!556934 (list!6743 (_2!9848 (v!23999 lt!556935))))))

(declare-fun lt!556940 () Unit!27203)

(assert (=> b!1584550 (= lt!556940 (lemmaConcatAssociativity!984 lt!556958 lt!556927 lt!556934))))

(assert (=> b!1584550 (= (++!4529 (++!4529 lt!556958 lt!556927) lt!556934) (++!4529 lt!556958 (++!4529 lt!556927 lt!556934)))))

(declare-fun lt!556945 () Unit!27203)

(assert (=> b!1584550 (= lt!556945 lt!556940)))

(declare-fun maxPrefixZipperSequence!610 (LexerInterface!2696 List!17476 BalanceConc!11508) Option!3131)

(assert (=> b!1584550 (= lt!556941 (maxPrefixZipperSequence!610 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)))))

(declare-fun c!256823 () Bool)

(assert (=> b!1584550 (= c!256823 ((_ is Some!3130) lt!556941))))

(assert (=> b!1584550 (= (lexRec!354 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)) e!1017818)))

(declare-fun lt!556959 () Unit!27203)

(declare-fun Unit!27248 () Unit!27203)

(assert (=> b!1584550 (= lt!556959 Unit!27248)))

(declare-fun lt!556933 () List!17475)

(assert (=> b!1584550 (= lt!556933 (list!6744 (BalanceConc!11511 Empty!5783)))))

(declare-fun lt!556949 () List!17475)

(assert (=> b!1584550 (= lt!556949 (Cons!17405 (_1!9848 (v!23999 lt!556935)) Nil!17405))))

(declare-fun lt!556928 () List!17475)

(assert (=> b!1584550 (= lt!556928 (list!6744 (_1!9844 lt!556936)))))

(declare-fun lt!556951 () Unit!27203)

(declare-fun lemmaConcatAssociativity!985 (List!17475 List!17475 List!17475) Unit!27203)

(assert (=> b!1584550 (= lt!556951 (lemmaConcatAssociativity!985 lt!556933 lt!556949 lt!556928))))

(declare-fun ++!4534 (List!17475 List!17475) List!17475)

(assert (=> b!1584550 (= (++!4534 (++!4534 lt!556933 lt!556949) lt!556928) (++!4534 lt!556933 (++!4534 lt!556949 lt!556928)))))

(declare-fun lt!556957 () Unit!27203)

(assert (=> b!1584550 (= lt!556957 lt!556951)))

(declare-fun lt!556946 () List!17474)

(assert (=> b!1584550 (= lt!556946 (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) (list!6743 (charsOf!1716 (_1!9848 (v!23999 lt!556935))))))))

(declare-fun lt!556952 () List!17474)

(assert (=> b!1584550 (= lt!556952 (list!6743 (_2!9848 (v!23999 lt!556935))))))

(declare-fun lt!556929 () List!17475)

(assert (=> b!1584550 (= lt!556929 (list!6744 (append!533 (BalanceConc!11511 Empty!5783) (_1!9848 (v!23999 lt!556935)))))))

(declare-fun lt!556956 () Unit!27203)

(declare-fun lemmaLexThenLexPrefix!242 (LexerInterface!2696 List!17476 List!17474 List!17474 List!17475 List!17475 List!17474) Unit!27203)

(assert (=> b!1584550 (= lt!556956 (lemmaLexThenLexPrefix!242 thiss!17113 rules!1846 lt!556946 lt!556952 lt!556929 (list!6744 (_1!9844 lt!556936)) (list!6743 (_2!9844 lt!556936))))))

(assert (=> b!1584550 (= (lexList!784 thiss!17113 rules!1846 lt!556946) (tuple2!16889 lt!556929 Nil!17404))))

(declare-fun lt!556948 () Unit!27203)

(assert (=> b!1584550 (= lt!556948 lt!556956)))

(declare-fun lt!556942 () BalanceConc!11508)

(assert (=> b!1584550 (= lt!556942 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (_1!9848 (v!23999 lt!556935)))))))

(declare-fun lt!556931 () Option!3131)

(assert (=> b!1584550 (= lt!556931 (maxPrefixZipperSequence!610 thiss!17113 rules!1846 lt!556942))))

(declare-fun c!256824 () Bool)

(assert (=> b!1584550 (= c!256824 ((_ is Some!3130) lt!556931))))

(declare-fun e!1017819 () tuple2!16884)

(assert (=> b!1584550 (= (lexRec!354 thiss!17113 rules!1846 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (_1!9848 (v!23999 lt!556935))))) e!1017819)))

(declare-fun lt!556947 () Unit!27203)

(declare-fun Unit!27249 () Unit!27203)

(assert (=> b!1584550 (= lt!556947 Unit!27249)))

(assert (=> b!1584550 (= lt!556943 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (_1!9848 (v!23999 lt!556935)))))))

(declare-fun lt!556955 () List!17474)

(assert (=> b!1584550 (= lt!556955 (list!6743 lt!556943))))

(declare-fun lt!556960 () List!17474)

(assert (=> b!1584550 (= lt!556960 (list!6743 (_2!9848 (v!23999 lt!556935))))))

(declare-fun lt!556932 () Unit!27203)

(assert (=> b!1584550 (= lt!556932 (lemmaConcatTwoListThenFSndIsSuffix!301 lt!556955 lt!556960))))

(assert (=> b!1584550 (isSuffix!400 lt!556960 (++!4529 lt!556955 lt!556960))))

(declare-fun lt!556939 () Unit!27203)

(assert (=> b!1584550 (= lt!556939 lt!556932)))

(declare-fun b!1584551 () Bool)

(assert (=> b!1584551 (= e!1017819 (tuple2!16885 (BalanceConc!11511 Empty!5783) lt!556942))))

(declare-fun lt!556937 () tuple2!16884)

(declare-fun b!1584552 () Bool)

(assert (=> b!1584552 (= lt!556937 (lexRec!354 thiss!17113 rules!1846 (_2!9848 (v!23999 lt!556931))))))

(assert (=> b!1584552 (= e!1017819 (tuple2!16885 (prepend!549 (_1!9844 lt!556937) (_1!9848 (v!23999 lt!556931))) (_2!9844 lt!556937)))))

(assert (= (and d!471206 c!256825) b!1584550))

(assert (= (and d!471206 (not c!256825)) b!1584548))

(assert (= (and b!1584550 c!256823) b!1584547))

(assert (= (and b!1584550 (not c!256823)) b!1584549))

(assert (= (and b!1584550 c!256824) b!1584552))

(assert (= (and b!1584550 (not c!256824)) b!1584551))

(assert (= (and d!471206 res!706581) b!1584546))

(assert (=> d!471206 m!1869899))

(assert (=> d!471206 m!1869899))

(declare-fun m!1872101 () Bool)

(assert (=> d!471206 m!1872101))

(declare-fun m!1872103 () Bool)

(assert (=> d!471206 m!1872103))

(declare-fun m!1872105 () Bool)

(assert (=> d!471206 m!1872105))

(assert (=> d!471206 m!1870017))

(assert (=> d!471206 m!1872103))

(declare-fun m!1872107 () Bool)

(assert (=> d!471206 m!1872107))

(declare-fun m!1872109 () Bool)

(assert (=> d!471206 m!1872109))

(assert (=> d!471206 m!1869899))

(assert (=> d!471206 m!1870163))

(declare-fun m!1872111 () Bool)

(assert (=> d!471206 m!1872111))

(assert (=> d!471206 m!1869899))

(declare-fun m!1872113 () Bool)

(assert (=> d!471206 m!1872113))

(declare-fun m!1872115 () Bool)

(assert (=> b!1584546 m!1872115))

(assert (=> b!1584546 m!1869899))

(assert (=> b!1584546 m!1872113))

(declare-fun m!1872117 () Bool)

(assert (=> b!1584546 m!1872117))

(declare-fun m!1872119 () Bool)

(assert (=> b!1584550 m!1872119))

(declare-fun m!1872121 () Bool)

(assert (=> b!1584550 m!1872121))

(assert (=> b!1584550 m!1869899))

(assert (=> b!1584550 m!1872113))

(assert (=> b!1584550 m!1872119))

(declare-fun m!1872123 () Bool)

(assert (=> b!1584550 m!1872123))

(declare-fun m!1872125 () Bool)

(assert (=> b!1584550 m!1872125))

(declare-fun m!1872127 () Bool)

(assert (=> b!1584550 m!1872127))

(assert (=> b!1584550 m!1870017))

(declare-fun m!1872129 () Bool)

(assert (=> b!1584550 m!1872129))

(declare-fun m!1872131 () Bool)

(assert (=> b!1584550 m!1872131))

(declare-fun m!1872133 () Bool)

(assert (=> b!1584550 m!1872133))

(declare-fun m!1872135 () Bool)

(assert (=> b!1584550 m!1872135))

(declare-fun m!1872137 () Bool)

(assert (=> b!1584550 m!1872137))

(assert (=> b!1584550 m!1872135))

(assert (=> b!1584550 m!1869899))

(declare-fun m!1872139 () Bool)

(assert (=> b!1584550 m!1872139))

(declare-fun m!1872141 () Bool)

(assert (=> b!1584550 m!1872141))

(declare-fun m!1872143 () Bool)

(assert (=> b!1584550 m!1872143))

(declare-fun m!1872145 () Bool)

(assert (=> b!1584550 m!1872145))

(assert (=> b!1584550 m!1872129))

(declare-fun m!1872147 () Bool)

(assert (=> b!1584550 m!1872147))

(declare-fun m!1872149 () Bool)

(assert (=> b!1584550 m!1872149))

(declare-fun m!1872151 () Bool)

(assert (=> b!1584550 m!1872151))

(assert (=> b!1584550 m!1870017))

(assert (=> b!1584550 m!1872123))

(declare-fun m!1872153 () Bool)

(assert (=> b!1584550 m!1872153))

(declare-fun m!1872155 () Bool)

(assert (=> b!1584550 m!1872155))

(assert (=> b!1584550 m!1872121))

(declare-fun m!1872157 () Bool)

(assert (=> b!1584550 m!1872157))

(assert (=> b!1584550 m!1872143))

(declare-fun m!1872159 () Bool)

(assert (=> b!1584550 m!1872159))

(assert (=> b!1584550 m!1872141))

(declare-fun m!1872161 () Bool)

(assert (=> b!1584550 m!1872161))

(declare-fun m!1872163 () Bool)

(assert (=> b!1584550 m!1872163))

(declare-fun m!1872165 () Bool)

(assert (=> b!1584550 m!1872165))

(declare-fun m!1872167 () Bool)

(assert (=> b!1584550 m!1872167))

(assert (=> b!1584550 m!1872147))

(declare-fun m!1872169 () Bool)

(assert (=> b!1584550 m!1872169))

(assert (=> b!1584550 m!1869899))

(assert (=> b!1584550 m!1872147))

(declare-fun m!1872171 () Bool)

(assert (=> b!1584550 m!1872171))

(declare-fun m!1872173 () Bool)

(assert (=> b!1584550 m!1872173))

(declare-fun m!1872175 () Bool)

(assert (=> b!1584550 m!1872175))

(assert (=> b!1584550 m!1872149))

(assert (=> b!1584550 m!1872173))

(assert (=> b!1584550 m!1872167))

(declare-fun m!1872177 () Bool)

(assert (=> b!1584550 m!1872177))

(declare-fun m!1872179 () Bool)

(assert (=> b!1584550 m!1872179))

(assert (=> b!1584550 m!1872119))

(declare-fun m!1872181 () Bool)

(assert (=> b!1584552 m!1872181))

(declare-fun m!1872183 () Bool)

(assert (=> b!1584552 m!1872183))

(declare-fun m!1872185 () Bool)

(assert (=> b!1584547 m!1872185))

(declare-fun m!1872187 () Bool)

(assert (=> b!1584547 m!1872187))

(assert (=> d!470782 d!471206))

(declare-fun d!471238 () Bool)

(declare-fun c!256830 () Bool)

(assert (=> d!471238 (= c!256830 ((_ is Empty!5782) (c!256547 lt!555964)))))

(declare-fun e!1017825 () List!17474)

(assert (=> d!471238 (= (list!6747 (c!256547 lt!555964)) e!1017825)))

(declare-fun b!1584562 () Bool)

(declare-fun e!1017826 () List!17474)

(assert (=> b!1584562 (= e!1017825 e!1017826)))

(declare-fun c!256831 () Bool)

(assert (=> b!1584562 (= c!256831 ((_ is Leaf!8536) (c!256547 lt!555964)))))

(declare-fun b!1584564 () Bool)

(assert (=> b!1584564 (= e!1017826 (++!4529 (list!6747 (left!14061 (c!256547 lt!555964))) (list!6747 (right!14391 (c!256547 lt!555964)))))))

(declare-fun b!1584561 () Bool)

(assert (=> b!1584561 (= e!1017825 Nil!17404)))

(declare-fun b!1584563 () Bool)

(declare-fun list!6750 (IArray!11569) List!17474)

(assert (=> b!1584563 (= e!1017826 (list!6750 (xs!8586 (c!256547 lt!555964))))))

(assert (= (and d!471238 c!256830) b!1584561))

(assert (= (and d!471238 (not c!256830)) b!1584562))

(assert (= (and b!1584562 c!256831) b!1584563))

(assert (= (and b!1584562 (not c!256831)) b!1584564))

(declare-fun m!1872189 () Bool)

(assert (=> b!1584564 m!1872189))

(declare-fun m!1872191 () Bool)

(assert (=> b!1584564 m!1872191))

(assert (=> b!1584564 m!1872189))

(assert (=> b!1584564 m!1872191))

(declare-fun m!1872193 () Bool)

(assert (=> b!1584564 m!1872193))

(declare-fun m!1872195 () Bool)

(assert (=> b!1584563 m!1872195))

(assert (=> d!470820 d!471238))

(assert (=> b!1583549 d!470896))

(assert (=> b!1583549 d!470748))

(assert (=> b!1583549 d!471136))

(declare-fun d!471240 () Bool)

(assert (=> d!471240 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457))))

(declare-fun lt!556985 () Unit!27203)

(declare-fun choose!9483 (LexerInterface!2696 List!17476 List!17475 Token!5700) Unit!27203)

(assert (=> d!471240 (= lt!556985 (choose!9483 thiss!17113 rules!1846 tokens!457 (h!22806 tokens!457)))))

(assert (=> d!471240 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471240 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 thiss!17113 rules!1846 tokens!457 (h!22806 tokens!457)) lt!556985)))

(declare-fun bs!391270 () Bool)

(assert (= bs!391270 d!471240))

(assert (=> bs!391270 m!1869937))

(declare-fun m!1872259 () Bool)

(assert (=> bs!391270 m!1872259))

(assert (=> bs!391270 m!1869853))

(assert (=> b!1583549 d!471240))

(assert (=> b!1583549 d!470932))

(declare-fun d!471254 () Bool)

(declare-fun lt!556987 () Bool)

(declare-fun e!1017845 () Bool)

(assert (=> d!471254 (= lt!556987 e!1017845)))

(declare-fun res!706616 () Bool)

(assert (=> d!471254 (=> (not res!706616) (not e!1017845))))

(assert (=> d!471254 (= res!706616 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))) (list!6744 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))))

(declare-fun e!1017844 () Bool)

(assert (=> d!471254 (= lt!556987 e!1017844)))

(declare-fun res!706617 () Bool)

(assert (=> d!471254 (=> (not res!706617) (not e!1017844))))

(declare-fun lt!556986 () tuple2!16884)

(assert (=> d!471254 (= res!706617 (= (size!14004 (_1!9844 lt!556986)) 1))))

(assert (=> d!471254 (= lt!556986 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471254 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471254 (= (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457))) lt!556987)))

(declare-fun b!1584605 () Bool)

(declare-fun res!706615 () Bool)

(assert (=> b!1584605 (=> (not res!706615) (not e!1017844))))

(assert (=> b!1584605 (= res!706615 (= (apply!4240 (_1!9844 lt!556986) 0) (h!22806 (t!143960 tokens!457))))))

(declare-fun b!1584606 () Bool)

(assert (=> b!1584606 (= e!1017844 (isEmpty!10433 (_2!9844 lt!556986)))))

(declare-fun b!1584607 () Bool)

(assert (=> b!1584607 (= e!1017845 (isEmpty!10433 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))))))

(assert (= (and d!471254 res!706617) b!1584605))

(assert (= (and b!1584605 res!706615) b!1584606))

(assert (= (and d!471254 res!706616) b!1584607))

(assert (=> d!471254 m!1869853))

(assert (=> d!471254 m!1870377))

(assert (=> d!471254 m!1870425))

(declare-fun m!1872261 () Bool)

(assert (=> d!471254 m!1872261))

(assert (=> d!471254 m!1870377))

(declare-fun m!1872263 () Bool)

(assert (=> d!471254 m!1872263))

(declare-fun m!1872265 () Bool)

(assert (=> d!471254 m!1872265))

(assert (=> d!471254 m!1870377))

(assert (=> d!471254 m!1870425))

(declare-fun m!1872267 () Bool)

(assert (=> d!471254 m!1872267))

(declare-fun m!1872269 () Bool)

(assert (=> b!1584605 m!1872269))

(declare-fun m!1872271 () Bool)

(assert (=> b!1584606 m!1872271))

(assert (=> b!1584607 m!1870377))

(assert (=> b!1584607 m!1870377))

(assert (=> b!1584607 m!1870425))

(assert (=> b!1584607 m!1870425))

(assert (=> b!1584607 m!1872267))

(declare-fun m!1872273 () Bool)

(assert (=> b!1584607 m!1872273))

(assert (=> b!1583549 d!471254))

(declare-fun d!471256 () Bool)

(assert (=> d!471256 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457)))))

(declare-fun lt!556988 () Unit!27203)

(assert (=> d!471256 (= lt!556988 (choose!9483 thiss!17113 rules!1846 tokens!457 (h!22806 (t!143960 tokens!457))))))

(assert (=> d!471256 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471256 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 thiss!17113 rules!1846 tokens!457 (h!22806 (t!143960 tokens!457))) lt!556988)))

(declare-fun bs!391271 () Bool)

(assert (= bs!391271 d!471256))

(assert (=> bs!391271 m!1870447))

(declare-fun m!1872275 () Bool)

(assert (=> bs!391271 m!1872275))

(assert (=> bs!391271 m!1869853))

(assert (=> b!1583549 d!471256))

(declare-fun b!1584608 () Bool)

(declare-fun res!706622 () Bool)

(declare-fun e!1017847 () Bool)

(assert (=> b!1584608 (=> (not res!706622) (not e!1017847))))

(assert (=> b!1584608 (= res!706622 (not (isEmpty!10436 (left!14061 (c!256547 lt!556450)))))))

(declare-fun d!471258 () Bool)

(declare-fun res!706623 () Bool)

(declare-fun e!1017846 () Bool)

(assert (=> d!471258 (=> res!706623 e!1017846)))

(assert (=> d!471258 (= res!706623 (not ((_ is Node!5782) (c!256547 lt!556450))))))

(assert (=> d!471258 (= (isBalanced!1702 (c!256547 lt!556450)) e!1017846)))

(declare-fun b!1584609 () Bool)

(declare-fun res!706618 () Bool)

(assert (=> b!1584609 (=> (not res!706618) (not e!1017847))))

(assert (=> b!1584609 (= res!706618 (isBalanced!1702 (left!14061 (c!256547 lt!556450))))))

(declare-fun b!1584610 () Bool)

(declare-fun res!706619 () Bool)

(assert (=> b!1584610 (=> (not res!706619) (not e!1017847))))

(assert (=> b!1584610 (= res!706619 (<= (- (height!851 (left!14061 (c!256547 lt!556450))) (height!851 (right!14391 (c!256547 lt!556450)))) 1))))

(declare-fun b!1584611 () Bool)

(declare-fun res!706620 () Bool)

(assert (=> b!1584611 (=> (not res!706620) (not e!1017847))))

(assert (=> b!1584611 (= res!706620 (isBalanced!1702 (right!14391 (c!256547 lt!556450))))))

(declare-fun b!1584612 () Bool)

(assert (=> b!1584612 (= e!1017847 (not (isEmpty!10436 (right!14391 (c!256547 lt!556450)))))))

(declare-fun b!1584613 () Bool)

(assert (=> b!1584613 (= e!1017846 e!1017847)))

(declare-fun res!706621 () Bool)

(assert (=> b!1584613 (=> (not res!706621) (not e!1017847))))

(assert (=> b!1584613 (= res!706621 (<= (- 1) (- (height!851 (left!14061 (c!256547 lt!556450))) (height!851 (right!14391 (c!256547 lt!556450))))))))

(assert (= (and d!471258 (not res!706623)) b!1584613))

(assert (= (and b!1584613 res!706621) b!1584610))

(assert (= (and b!1584610 res!706619) b!1584609))

(assert (= (and b!1584609 res!706618) b!1584611))

(assert (= (and b!1584611 res!706620) b!1584608))

(assert (= (and b!1584608 res!706622) b!1584612))

(declare-fun m!1872277 () Bool)

(assert (=> b!1584609 m!1872277))

(declare-fun m!1872279 () Bool)

(assert (=> b!1584611 m!1872279))

(declare-fun m!1872281 () Bool)

(assert (=> b!1584608 m!1872281))

(declare-fun m!1872283 () Bool)

(assert (=> b!1584610 m!1872283))

(declare-fun m!1872285 () Bool)

(assert (=> b!1584610 m!1872285))

(declare-fun m!1872287 () Bool)

(assert (=> b!1584612 m!1872287))

(assert (=> b!1584613 m!1872283))

(assert (=> b!1584613 m!1872285))

(assert (=> b!1583761 d!471258))

(declare-fun d!471260 () Bool)

(assert (=> d!471260 (= (isEmpty!10432 (originalCharacters!3881 (h!22806 tokens!457))) ((_ is Nil!17404) (originalCharacters!3881 (h!22806 tokens!457))))))

(assert (=> d!470858 d!471260))

(declare-fun d!471262 () Bool)

(assert (=> d!471262 (= (list!6743 lt!556162) (list!6747 (c!256547 lt!556162)))))

(declare-fun bs!391272 () Bool)

(assert (= bs!391272 d!471262))

(declare-fun m!1872289 () Bool)

(assert (=> bs!391272 m!1872289))

(assert (=> d!470826 d!471262))

(declare-fun d!471264 () Bool)

(declare-fun c!256835 () Bool)

(assert (=> d!471264 (= c!256835 ((_ is Cons!17405) (list!6744 lt!555956)))))

(declare-fun e!1017850 () List!17474)

(assert (=> d!471264 (= (printList!811 thiss!17113 (list!6744 lt!555956)) e!1017850)))

(declare-fun b!1584620 () Bool)

(assert (=> b!1584620 (= e!1017850 (++!4529 (list!6743 (charsOf!1716 (h!22806 (list!6744 lt!555956)))) (printList!811 thiss!17113 (t!143960 (list!6744 lt!555956)))))))

(declare-fun b!1584621 () Bool)

(assert (=> b!1584621 (= e!1017850 Nil!17404)))

(assert (= (and d!471264 c!256835) b!1584620))

(assert (= (and d!471264 (not c!256835)) b!1584621))

(declare-fun m!1872291 () Bool)

(assert (=> b!1584620 m!1872291))

(assert (=> b!1584620 m!1872291))

(declare-fun m!1872293 () Bool)

(assert (=> b!1584620 m!1872293))

(declare-fun m!1872295 () Bool)

(assert (=> b!1584620 m!1872295))

(assert (=> b!1584620 m!1872293))

(assert (=> b!1584620 m!1872295))

(declare-fun m!1872299 () Bool)

(assert (=> b!1584620 m!1872299))

(assert (=> d!470826 d!471264))

(assert (=> d!470826 d!470852))

(declare-fun d!471266 () Bool)

(declare-fun lt!556992 () BalanceConc!11508)

(assert (=> d!471266 (= (list!6743 lt!556992) (printListTailRec!311 thiss!17113 (dropList!518 lt!555956 0) (list!6743 (BalanceConc!11509 Empty!5782))))))

(declare-fun e!1017852 () BalanceConc!11508)

(assert (=> d!471266 (= lt!556992 e!1017852)))

(declare-fun c!256836 () Bool)

(assert (=> d!471266 (= c!256836 (>= 0 (size!14004 lt!555956)))))

(declare-fun e!1017851 () Bool)

(assert (=> d!471266 e!1017851))

(declare-fun res!706630 () Bool)

(assert (=> d!471266 (=> (not res!706630) (not e!1017851))))

(assert (=> d!471266 (= res!706630 (>= 0 0))))

(assert (=> d!471266 (= (printTailRec!749 thiss!17113 lt!555956 0 (BalanceConc!11509 Empty!5782)) lt!556992)))

(declare-fun b!1584622 () Bool)

(assert (=> b!1584622 (= e!1017851 (<= 0 (size!14004 lt!555956)))))

(declare-fun b!1584623 () Bool)

(assert (=> b!1584623 (= e!1017852 (BalanceConc!11509 Empty!5782))))

(declare-fun b!1584624 () Bool)

(assert (=> b!1584624 (= e!1017852 (printTailRec!749 thiss!17113 lt!555956 (+ 0 1) (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555956 0)))))))

(declare-fun lt!556994 () List!17475)

(assert (=> b!1584624 (= lt!556994 (list!6744 lt!555956))))

(declare-fun lt!556991 () Unit!27203)

(assert (=> b!1584624 (= lt!556991 (lemmaDropApply!518 lt!556994 0))))

(assert (=> b!1584624 (= (head!3205 (drop!820 lt!556994 0)) (apply!4241 lt!556994 0))))

(declare-fun lt!556995 () Unit!27203)

(assert (=> b!1584624 (= lt!556995 lt!556991)))

(declare-fun lt!556990 () List!17475)

(assert (=> b!1584624 (= lt!556990 (list!6744 lt!555956))))

(declare-fun lt!556996 () Unit!27203)

(assert (=> b!1584624 (= lt!556996 (lemmaDropTail!498 lt!556990 0))))

(assert (=> b!1584624 (= (tail!2264 (drop!820 lt!556990 0)) (drop!820 lt!556990 (+ 0 1)))))

(declare-fun lt!556993 () Unit!27203)

(assert (=> b!1584624 (= lt!556993 lt!556996)))

(assert (= (and d!471266 res!706630) b!1584622))

(assert (= (and d!471266 c!256836) b!1584623))

(assert (= (and d!471266 (not c!256836)) b!1584624))

(declare-fun m!1872315 () Bool)

(assert (=> d!471266 m!1872315))

(assert (=> d!471266 m!1870017))

(declare-fun m!1872317 () Bool)

(assert (=> d!471266 m!1872317))

(assert (=> d!471266 m!1870017))

(declare-fun m!1872319 () Bool)

(assert (=> d!471266 m!1872319))

(declare-fun m!1872321 () Bool)

(assert (=> d!471266 m!1872321))

(assert (=> d!471266 m!1872315))

(assert (=> b!1584622 m!1872321))

(declare-fun m!1872323 () Bool)

(assert (=> b!1584624 m!1872323))

(declare-fun m!1872325 () Bool)

(assert (=> b!1584624 m!1872325))

(declare-fun m!1872327 () Bool)

(assert (=> b!1584624 m!1872327))

(declare-fun m!1872329 () Bool)

(assert (=> b!1584624 m!1872329))

(declare-fun m!1872331 () Bool)

(assert (=> b!1584624 m!1872331))

(assert (=> b!1584624 m!1869939))

(assert (=> b!1584624 m!1872323))

(declare-fun m!1872333 () Bool)

(assert (=> b!1584624 m!1872333))

(assert (=> b!1584624 m!1872329))

(declare-fun m!1872335 () Bool)

(assert (=> b!1584624 m!1872335))

(declare-fun m!1872337 () Bool)

(assert (=> b!1584624 m!1872337))

(declare-fun m!1872339 () Bool)

(assert (=> b!1584624 m!1872339))

(declare-fun m!1872341 () Bool)

(assert (=> b!1584624 m!1872341))

(declare-fun m!1872343 () Bool)

(assert (=> b!1584624 m!1872343))

(assert (=> b!1584624 m!1872337))

(assert (=> b!1584624 m!1872327))

(declare-fun m!1872345 () Bool)

(assert (=> b!1584624 m!1872345))

(assert (=> b!1584624 m!1872339))

(assert (=> d!470826 d!471266))

(declare-fun d!471272 () Bool)

(assert (=> d!471272 (= (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))) (isBalanced!1702 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))))))

(declare-fun bs!391275 () Bool)

(assert (= bs!391275 d!471272))

(declare-fun m!1872349 () Bool)

(assert (=> bs!391275 m!1872349))

(assert (=> tb!89079 d!471272))

(declare-fun bs!391276 () Bool)

(declare-fun d!471276 () Bool)

(assert (= bs!391276 (and d!471276 d!471122)))

(declare-fun lambda!66546 () Int)

(assert (=> bs!391276 (= (= (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (= lambda!66546 lambda!66544))))

(assert (=> d!471276 true))

(assert (=> d!471276 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) (dynLambda!7731 order!10285 lambda!66546))))

(assert (=> d!471276 (= (equivClasses!1097 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) (Forall2!504 lambda!66546))))

(declare-fun bs!391277 () Bool)

(assert (= bs!391277 d!471276))

(declare-fun m!1872351 () Bool)

(assert (=> bs!391277 m!1872351))

(assert (=> b!1583566 d!471276))

(declare-fun b!1584627 () Bool)

(declare-fun e!1017853 () Bool)

(assert (=> b!1584627 (= e!1017853 (isPrefix!1327 (tail!2266 (tail!2266 lt!555973)) (tail!2266 (tail!2266 lt!555976))))))

(declare-fun b!1584625 () Bool)

(declare-fun e!1017855 () Bool)

(assert (=> b!1584625 (= e!1017855 e!1017853)))

(declare-fun res!706632 () Bool)

(assert (=> b!1584625 (=> (not res!706632) (not e!1017853))))

(assert (=> b!1584625 (= res!706632 (not ((_ is Nil!17404) (tail!2266 lt!555976))))))

(declare-fun d!471278 () Bool)

(declare-fun e!1017854 () Bool)

(assert (=> d!471278 e!1017854))

(declare-fun res!706633 () Bool)

(assert (=> d!471278 (=> res!706633 e!1017854)))

(declare-fun lt!556997 () Bool)

(assert (=> d!471278 (= res!706633 (not lt!556997))))

(assert (=> d!471278 (= lt!556997 e!1017855)))

(declare-fun res!706631 () Bool)

(assert (=> d!471278 (=> res!706631 e!1017855)))

(assert (=> d!471278 (= res!706631 ((_ is Nil!17404) (tail!2266 lt!555973)))))

(assert (=> d!471278 (= (isPrefix!1327 (tail!2266 lt!555973) (tail!2266 lt!555976)) lt!556997)))

(declare-fun b!1584626 () Bool)

(declare-fun res!706634 () Bool)

(assert (=> b!1584626 (=> (not res!706634) (not e!1017853))))

(assert (=> b!1584626 (= res!706634 (= (head!3208 (tail!2266 lt!555973)) (head!3208 (tail!2266 lt!555976))))))

(declare-fun b!1584628 () Bool)

(assert (=> b!1584628 (= e!1017854 (>= (size!14005 (tail!2266 lt!555976)) (size!14005 (tail!2266 lt!555973))))))

(assert (= (and d!471278 (not res!706631)) b!1584625))

(assert (= (and b!1584625 res!706632) b!1584626))

(assert (= (and b!1584626 res!706634) b!1584627))

(assert (= (and d!471278 (not res!706633)) b!1584628))

(assert (=> b!1584627 m!1870429))

(declare-fun m!1872353 () Bool)

(assert (=> b!1584627 m!1872353))

(assert (=> b!1584627 m!1870431))

(declare-fun m!1872355 () Bool)

(assert (=> b!1584627 m!1872355))

(assert (=> b!1584627 m!1872353))

(assert (=> b!1584627 m!1872355))

(declare-fun m!1872357 () Bool)

(assert (=> b!1584627 m!1872357))

(assert (=> b!1584626 m!1870429))

(declare-fun m!1872359 () Bool)

(assert (=> b!1584626 m!1872359))

(assert (=> b!1584626 m!1870431))

(declare-fun m!1872361 () Bool)

(assert (=> b!1584626 m!1872361))

(assert (=> b!1584628 m!1870431))

(declare-fun m!1872363 () Bool)

(assert (=> b!1584628 m!1872363))

(assert (=> b!1584628 m!1870429))

(declare-fun m!1872365 () Bool)

(assert (=> b!1584628 m!1872365))

(assert (=> b!1583543 d!471278))

(declare-fun d!471280 () Bool)

(assert (=> d!471280 (= (tail!2266 lt!555973) (t!143959 lt!555973))))

(assert (=> b!1583543 d!471280))

(declare-fun d!471282 () Bool)

(assert (=> d!471282 (= (tail!2266 lt!555976) (t!143959 lt!555976))))

(assert (=> b!1583543 d!471282))

(declare-fun b!1584641 () Bool)

(declare-fun e!1017862 () List!17475)

(assert (=> b!1584641 (= e!1017862 Nil!17405)))

(declare-fun b!1584644 () Bool)

(declare-fun e!1017863 () List!17475)

(assert (=> b!1584644 (= e!1017863 (++!4534 (list!6748 (left!14062 (c!256549 lt!555956))) (list!6748 (right!14392 (c!256549 lt!555956)))))))

(declare-fun d!471284 () Bool)

(declare-fun c!256843 () Bool)

(assert (=> d!471284 (= c!256843 ((_ is Empty!5783) (c!256549 lt!555956)))))

(assert (=> d!471284 (= (list!6748 (c!256549 lt!555956)) e!1017862)))

(declare-fun b!1584643 () Bool)

(declare-fun list!6751 (IArray!11571) List!17475)

(assert (=> b!1584643 (= e!1017863 (list!6751 (xs!8587 (c!256549 lt!555956))))))

(declare-fun b!1584642 () Bool)

(assert (=> b!1584642 (= e!1017862 e!1017863)))

(declare-fun c!256844 () Bool)

(assert (=> b!1584642 (= c!256844 ((_ is Leaf!8537) (c!256549 lt!555956)))))

(assert (= (and d!471284 c!256843) b!1584641))

(assert (= (and d!471284 (not c!256843)) b!1584642))

(assert (= (and b!1584642 c!256844) b!1584643))

(assert (= (and b!1584642 (not c!256844)) b!1584644))

(declare-fun m!1872367 () Bool)

(assert (=> b!1584644 m!1872367))

(declare-fun m!1872369 () Bool)

(assert (=> b!1584644 m!1872369))

(assert (=> b!1584644 m!1872367))

(assert (=> b!1584644 m!1872369))

(declare-fun m!1872371 () Bool)

(assert (=> b!1584644 m!1872371))

(declare-fun m!1872373 () Bool)

(assert (=> b!1584643 m!1872373))

(assert (=> d!470852 d!471284))

(declare-fun d!471286 () Bool)

(assert (=> d!471286 (= (list!6744 lt!556305) (list!6748 (c!256549 lt!556305)))))

(declare-fun bs!391278 () Bool)

(assert (= bs!391278 d!471286))

(declare-fun m!1872375 () Bool)

(assert (=> bs!391278 m!1872375))

(assert (=> b!1583557 d!471286))

(declare-fun d!471288 () Bool)

(assert (=> d!471288 (= (list!6744 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (list!6748 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))))))))

(declare-fun bs!391279 () Bool)

(assert (= bs!391279 d!471288))

(declare-fun m!1872377 () Bool)

(assert (=> bs!391279 m!1872377))

(assert (=> b!1583557 d!471288))

(assert (=> b!1583404 d!471130))

(assert (=> b!1583404 d!471132))

(assert (=> b!1583404 d!471134))

(declare-fun d!471290 () Bool)

(declare-fun e!1017864 () Bool)

(assert (=> d!471290 e!1017864))

(declare-fun res!706635 () Bool)

(assert (=> d!471290 (=> (not res!706635) (not e!1017864))))

(declare-fun lt!557008 () BalanceConc!11510)

(assert (=> d!471290 (= res!706635 (= (list!6744 lt!557008) (t!143960 tokens!457)))))

(assert (=> d!471290 (= lt!557008 (BalanceConc!11511 (fromList!363 (t!143960 tokens!457))))))

(assert (=> d!471290 (= (fromListB!806 (t!143960 tokens!457)) lt!557008)))

(declare-fun b!1584645 () Bool)

(assert (=> b!1584645 (= e!1017864 (isBalanced!1700 (fromList!363 (t!143960 tokens!457))))))

(assert (= (and d!471290 res!706635) b!1584645))

(declare-fun m!1872379 () Bool)

(assert (=> d!471290 m!1872379))

(declare-fun m!1872381 () Bool)

(assert (=> d!471290 m!1872381))

(assert (=> b!1584645 m!1872381))

(assert (=> b!1584645 m!1872381))

(declare-fun m!1872383 () Bool)

(assert (=> b!1584645 m!1872383))

(assert (=> d!470824 d!471290))

(declare-fun d!471292 () Bool)

(assert (=> d!471292 (= (list!6743 lt!556456) (list!6747 (c!256547 lt!556456)))))

(declare-fun bs!391280 () Bool)

(assert (= bs!391280 d!471292))

(declare-fun m!1872385 () Bool)

(assert (=> bs!391280 m!1872385))

(assert (=> b!1583803 d!471292))

(declare-fun b!1584646 () Bool)

(declare-fun e!1017866 () List!17474)

(assert (=> b!1584646 (= e!1017866 (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))

(declare-fun b!1584648 () Bool)

(declare-fun res!706636 () Bool)

(declare-fun e!1017865 () Bool)

(assert (=> b!1584648 (=> (not res!706636) (not e!1017865))))

(declare-fun lt!557009 () List!17474)

(assert (=> b!1584648 (= res!706636 (= (size!14005 lt!557009) (+ (size!14005 (list!6743 lt!555977)) (size!14005 (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1584649 () Bool)

(assert (=> b!1584649 (= e!1017865 (or (not (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) Nil!17404)) (= lt!557009 (list!6743 lt!555977))))))

(declare-fun b!1584647 () Bool)

(assert (=> b!1584647 (= e!1017866 (Cons!17404 (h!22805 (list!6743 lt!555977)) (++!4529 (t!143959 (list!6743 lt!555977)) (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun d!471294 () Bool)

(assert (=> d!471294 e!1017865))

(declare-fun res!706637 () Bool)

(assert (=> d!471294 (=> (not res!706637) (not e!1017865))))

(assert (=> d!471294 (= res!706637 (= (content!2394 lt!557009) ((_ map or) (content!2394 (list!6743 lt!555977)) (content!2394 (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(assert (=> d!471294 (= lt!557009 e!1017866)))

(declare-fun c!256845 () Bool)

(assert (=> d!471294 (= c!256845 ((_ is Nil!17404) (list!6743 lt!555977)))))

(assert (=> d!471294 (= (++!4529 (list!6743 lt!555977) (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) lt!557009)))

(assert (= (and d!471294 c!256845) b!1584646))

(assert (= (and d!471294 (not c!256845)) b!1584647))

(assert (= (and d!471294 res!706637) b!1584648))

(assert (= (and b!1584648 res!706636) b!1584649))

(declare-fun m!1872387 () Bool)

(assert (=> b!1584648 m!1872387))

(assert (=> b!1584648 m!1869885))

(declare-fun m!1872389 () Bool)

(assert (=> b!1584648 m!1872389))

(assert (=> b!1584648 m!1870843))

(declare-fun m!1872391 () Bool)

(assert (=> b!1584648 m!1872391))

(assert (=> b!1584647 m!1870843))

(declare-fun m!1872393 () Bool)

(assert (=> b!1584647 m!1872393))

(declare-fun m!1872395 () Bool)

(assert (=> d!471294 m!1872395))

(assert (=> d!471294 m!1869885))

(declare-fun m!1872397 () Bool)

(assert (=> d!471294 m!1872397))

(assert (=> d!471294 m!1870843))

(declare-fun m!1872399 () Bool)

(assert (=> d!471294 m!1872399))

(assert (=> b!1583803 d!471294))

(assert (=> b!1583803 d!470812))

(declare-fun d!471296 () Bool)

(assert (=> d!471296 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))) (list!6747 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun bs!391281 () Bool)

(assert (= bs!391281 d!471296))

(assert (=> bs!391281 m!1871553))

(assert (=> b!1583803 d!471296))

(declare-fun b!1584650 () Bool)

(declare-fun res!706638 () Bool)

(declare-fun e!1017868 () Bool)

(assert (=> b!1584650 (=> (not res!706638) (not e!1017868))))

(declare-fun call!102878 () Bool)

(assert (=> b!1584650 (= res!706638 call!102878)))

(declare-fun e!1017867 () Bool)

(assert (=> b!1584650 (= e!1017867 e!1017868)))

(declare-fun bm!102871 () Bool)

(declare-fun call!102877 () Bool)

(assert (=> bm!102871 (= call!102878 call!102877)))

(declare-fun bm!102872 () Bool)

(declare-fun call!102876 () Bool)

(declare-fun c!256847 () Bool)

(assert (=> bm!102872 (= call!102876 (validRegex!1734 (ite c!256847 (regTwo!9303 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))) (regOne!9302 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))))))))

(declare-fun b!1584651 () Bool)

(declare-fun e!1017871 () Bool)

(assert (=> b!1584651 (= e!1017871 call!102878)))

(declare-fun d!471298 () Bool)

(declare-fun res!706639 () Bool)

(declare-fun e!1017873 () Bool)

(assert (=> d!471298 (=> res!706639 e!1017873)))

(assert (=> d!471298 (= res!706639 ((_ is ElementMatch!4395) (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))))))

(assert (=> d!471298 (= (validRegex!1734 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))) e!1017873)))

(declare-fun b!1584652 () Bool)

(declare-fun res!706642 () Bool)

(declare-fun e!1017872 () Bool)

(assert (=> b!1584652 (=> res!706642 e!1017872)))

(assert (=> b!1584652 (= res!706642 (not ((_ is Concat!7553) (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960)))))))

(assert (=> b!1584652 (= e!1017867 e!1017872)))

(declare-fun c!256846 () Bool)

(declare-fun bm!102873 () Bool)

(assert (=> bm!102873 (= call!102877 (validRegex!1734 (ite c!256846 (reg!4724 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))) (ite c!256847 (regOne!9303 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))) (regTwo!9302 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960)))))))))

(declare-fun b!1584653 () Bool)

(assert (=> b!1584653 (= e!1017872 e!1017871)))

(declare-fun res!706640 () Bool)

(assert (=> b!1584653 (=> (not res!706640) (not e!1017871))))

(assert (=> b!1584653 (= res!706640 call!102876)))

(declare-fun b!1584654 () Bool)

(declare-fun e!1017870 () Bool)

(assert (=> b!1584654 (= e!1017870 e!1017867)))

(assert (=> b!1584654 (= c!256847 ((_ is Union!4395) (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))))))

(declare-fun b!1584655 () Bool)

(declare-fun e!1017869 () Bool)

(assert (=> b!1584655 (= e!1017869 call!102877)))

(declare-fun b!1584656 () Bool)

(assert (=> b!1584656 (= e!1017873 e!1017870)))

(assert (=> b!1584656 (= c!256846 ((_ is Star!4395) (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))))))

(declare-fun b!1584657 () Bool)

(assert (=> b!1584657 (= e!1017870 e!1017869)))

(declare-fun res!706641 () Bool)

(assert (=> b!1584657 (= res!706641 (not (nullable!1293 (reg!4724 (ite c!256622 (regTwo!9303 lt!555960) (regOne!9302 lt!555960))))))))

(assert (=> b!1584657 (=> (not res!706641) (not e!1017869))))

(declare-fun b!1584658 () Bool)

(assert (=> b!1584658 (= e!1017868 call!102876)))

(assert (= (and d!471298 (not res!706639)) b!1584656))

(assert (= (and b!1584656 c!256846) b!1584657))

(assert (= (and b!1584656 (not c!256846)) b!1584654))

(assert (= (and b!1584657 res!706641) b!1584655))

(assert (= (and b!1584654 c!256847) b!1584650))

(assert (= (and b!1584654 (not c!256847)) b!1584652))

(assert (= (and b!1584650 res!706638) b!1584658))

(assert (= (and b!1584652 (not res!706642)) b!1584653))

(assert (= (and b!1584653 res!706640) b!1584651))

(assert (= (or b!1584658 b!1584653) bm!102872))

(assert (= (or b!1584650 b!1584651) bm!102871))

(assert (= (or b!1584655 bm!102871) bm!102873))

(declare-fun m!1872401 () Bool)

(assert (=> bm!102872 m!1872401))

(declare-fun m!1872403 () Bool)

(assert (=> bm!102873 m!1872403))

(declare-fun m!1872405 () Bool)

(assert (=> b!1584657 m!1872405))

(assert (=> bm!102756 d!471298))

(declare-fun d!471300 () Bool)

(declare-fun lt!557017 () Token!5700)

(assert (=> d!471300 (= lt!557017 (apply!4241 (list!6744 (_1!9844 lt!556446)) 0))))

(declare-fun apply!4249 (Conc!5783 Int) Token!5700)

(assert (=> d!471300 (= lt!557017 (apply!4249 (c!256549 (_1!9844 lt!556446)) 0))))

(declare-fun e!1017877 () Bool)

(assert (=> d!471300 e!1017877))

(declare-fun res!706645 () Bool)

(assert (=> d!471300 (=> (not res!706645) (not e!1017877))))

(assert (=> d!471300 (= res!706645 (<= 0 0))))

(assert (=> d!471300 (= (apply!4240 (_1!9844 lt!556446) 0) lt!557017)))

(declare-fun b!1584663 () Bool)

(assert (=> b!1584663 (= e!1017877 (< 0 (size!14004 (_1!9844 lt!556446))))))

(assert (= (and d!471300 res!706645) b!1584663))

(declare-fun m!1872437 () Bool)

(assert (=> d!471300 m!1872437))

(assert (=> d!471300 m!1872437))

(declare-fun m!1872439 () Bool)

(assert (=> d!471300 m!1872439))

(declare-fun m!1872441 () Bool)

(assert (=> d!471300 m!1872441))

(assert (=> b!1584663 m!1870797))

(assert (=> b!1583756 d!471300))

(declare-fun b!1584664 () Bool)

(declare-fun e!1017879 () List!17474)

(assert (=> b!1584664 (= e!1017879 lt!555959)))

(declare-fun b!1584666 () Bool)

(declare-fun res!706646 () Bool)

(declare-fun e!1017878 () Bool)

(assert (=> b!1584666 (=> (not res!706646) (not e!1017878))))

(declare-fun lt!557018 () List!17474)

(assert (=> b!1584666 (= res!706646 (= (size!14005 lt!557018) (+ (size!14005 (t!143959 lt!555973)) (size!14005 lt!555959))))))

(declare-fun b!1584667 () Bool)

(assert (=> b!1584667 (= e!1017878 (or (not (= lt!555959 Nil!17404)) (= lt!557018 (t!143959 lt!555973))))))

(declare-fun b!1584665 () Bool)

(assert (=> b!1584665 (= e!1017879 (Cons!17404 (h!22805 (t!143959 lt!555973)) (++!4529 (t!143959 (t!143959 lt!555973)) lt!555959)))))

(declare-fun d!471310 () Bool)

(assert (=> d!471310 e!1017878))

(declare-fun res!706647 () Bool)

(assert (=> d!471310 (=> (not res!706647) (not e!1017878))))

(assert (=> d!471310 (= res!706647 (= (content!2394 lt!557018) ((_ map or) (content!2394 (t!143959 lt!555973)) (content!2394 lt!555959))))))

(assert (=> d!471310 (= lt!557018 e!1017879)))

(declare-fun c!256849 () Bool)

(assert (=> d!471310 (= c!256849 ((_ is Nil!17404) (t!143959 lt!555973)))))

(assert (=> d!471310 (= (++!4529 (t!143959 lt!555973) lt!555959) lt!557018)))

(assert (= (and d!471310 c!256849) b!1584664))

(assert (= (and d!471310 (not c!256849)) b!1584665))

(assert (= (and d!471310 res!706647) b!1584666))

(assert (= (and b!1584666 res!706646) b!1584667))

(declare-fun m!1872443 () Bool)

(assert (=> b!1584666 m!1872443))

(assert (=> b!1584666 m!1871003))

(assert (=> b!1584666 m!1870335))

(declare-fun m!1872445 () Bool)

(assert (=> b!1584665 m!1872445))

(declare-fun m!1872447 () Bool)

(assert (=> d!471310 m!1872447))

(declare-fun m!1872449 () Bool)

(assert (=> d!471310 m!1872449))

(assert (=> d!471310 m!1870343))

(assert (=> b!1583506 d!471310))

(declare-fun d!471312 () Bool)

(assert (=> d!471312 (= (list!6743 (_2!9844 lt!556089)) (list!6747 (c!256547 (_2!9844 lt!556089))))))

(declare-fun bs!391285 () Bool)

(assert (= bs!391285 d!471312))

(declare-fun m!1872451 () Bool)

(assert (=> bs!391285 m!1872451))

(assert (=> b!1583427 d!471312))

(declare-fun b!1584668 () Bool)

(declare-fun e!1017880 () Bool)

(declare-fun lt!557020 () tuple2!16888)

(assert (=> b!1584668 (= e!1017880 (not (isEmpty!10428 (_1!9846 lt!557020))))))

(declare-fun b!1584669 () Bool)

(declare-fun e!1017882 () Bool)

(assert (=> b!1584669 (= e!1017882 e!1017880)))

(declare-fun res!706648 () Bool)

(assert (=> b!1584669 (= res!706648 (< (size!14005 (_2!9846 lt!557020)) (size!14005 (list!6743 (seqFromList!1884 lt!555973)))))))

(assert (=> b!1584669 (=> (not res!706648) (not e!1017880))))

(declare-fun b!1584670 () Bool)

(declare-fun e!1017881 () tuple2!16888)

(declare-fun lt!557021 () Option!3128)

(declare-fun lt!557019 () tuple2!16888)

(assert (=> b!1584670 (= e!1017881 (tuple2!16889 (Cons!17405 (_1!9845 (v!23986 lt!557021)) (_1!9846 lt!557019)) (_2!9846 lt!557019)))))

(assert (=> b!1584670 (= lt!557019 (lexList!784 thiss!17113 rules!1846 (_2!9845 (v!23986 lt!557021))))))

(declare-fun d!471314 () Bool)

(assert (=> d!471314 e!1017882))

(declare-fun c!256851 () Bool)

(assert (=> d!471314 (= c!256851 (> (size!14007 (_1!9846 lt!557020)) 0))))

(assert (=> d!471314 (= lt!557020 e!1017881)))

(declare-fun c!256850 () Bool)

(assert (=> d!471314 (= c!256850 ((_ is Some!3127) lt!557021))))

(assert (=> d!471314 (= lt!557021 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (seqFromList!1884 lt!555973))))))

(assert (=> d!471314 (= (lexList!784 thiss!17113 rules!1846 (list!6743 (seqFromList!1884 lt!555973))) lt!557020)))

(declare-fun b!1584671 () Bool)

(assert (=> b!1584671 (= e!1017881 (tuple2!16889 Nil!17405 (list!6743 (seqFromList!1884 lt!555973))))))

(declare-fun b!1584672 () Bool)

(assert (=> b!1584672 (= e!1017882 (= (_2!9846 lt!557020) (list!6743 (seqFromList!1884 lt!555973))))))

(assert (= (and d!471314 c!256850) b!1584670))

(assert (= (and d!471314 (not c!256850)) b!1584671))

(assert (= (and d!471314 c!256851) b!1584669))

(assert (= (and d!471314 (not c!256851)) b!1584672))

(assert (= (and b!1584669 res!706648) b!1584668))

(declare-fun m!1872453 () Bool)

(assert (=> b!1584668 m!1872453))

(declare-fun m!1872455 () Bool)

(assert (=> b!1584669 m!1872455))

(assert (=> b!1584669 m!1870163))

(assert (=> b!1584669 m!1871809))

(declare-fun m!1872457 () Bool)

(assert (=> b!1584670 m!1872457))

(declare-fun m!1872459 () Bool)

(assert (=> d!471314 m!1872459))

(assert (=> d!471314 m!1870163))

(declare-fun m!1872461 () Bool)

(assert (=> d!471314 m!1872461))

(assert (=> b!1583427 d!471314))

(declare-fun d!471316 () Bool)

(assert (=> d!471316 (= (list!6743 (seqFromList!1884 lt!555973)) (list!6747 (c!256547 (seqFromList!1884 lt!555973))))))

(declare-fun bs!391286 () Bool)

(assert (= bs!391286 d!471316))

(declare-fun m!1872463 () Bool)

(assert (=> bs!391286 m!1872463))

(assert (=> b!1583427 d!471316))

(assert (=> b!1583345 d!471104))

(declare-fun d!471318 () Bool)

(declare-fun charsToBigInt!0 (List!17473 Int) Int)

(assert (=> d!471318 (= (inv!15 (value!97082 (h!22806 tokens!457))) (= (charsToBigInt!0 (text!22548 (value!97082 (h!22806 tokens!457))) 0) (value!97077 (value!97082 (h!22806 tokens!457)))))))

(declare-fun bs!391287 () Bool)

(assert (= bs!391287 d!471318))

(declare-fun m!1872465 () Bool)

(assert (=> bs!391287 m!1872465))

(assert (=> b!1583317 d!471318))

(declare-fun b!1584685 () Bool)

(declare-fun res!706663 () Bool)

(declare-fun e!1017887 () Bool)

(assert (=> b!1584685 (=> (not res!706663) (not e!1017887))))

(assert (=> b!1584685 (= res!706663 (not (isEmpty!10429 (left!14062 (c!256549 lt!556080)))))))

(declare-fun d!471320 () Bool)

(declare-fun res!706661 () Bool)

(declare-fun e!1017888 () Bool)

(assert (=> d!471320 (=> res!706661 e!1017888)))

(assert (=> d!471320 (= res!706661 (not ((_ is Node!5783) (c!256549 lt!556080))))))

(assert (=> d!471320 (= (isBalanced!1700 (c!256549 lt!556080)) e!1017888)))

(declare-fun b!1584686 () Bool)

(assert (=> b!1584686 (= e!1017888 e!1017887)))

(declare-fun res!706666 () Bool)

(assert (=> b!1584686 (=> (not res!706666) (not e!1017887))))

(declare-fun height!853 (Conc!5783) Int)

(assert (=> b!1584686 (= res!706666 (<= (- 1) (- (height!853 (left!14062 (c!256549 lt!556080))) (height!853 (right!14392 (c!256549 lt!556080))))))))

(declare-fun b!1584687 () Bool)

(declare-fun res!706662 () Bool)

(assert (=> b!1584687 (=> (not res!706662) (not e!1017887))))

(assert (=> b!1584687 (= res!706662 (isBalanced!1700 (left!14062 (c!256549 lt!556080))))))

(declare-fun b!1584688 () Bool)

(assert (=> b!1584688 (= e!1017887 (not (isEmpty!10429 (right!14392 (c!256549 lt!556080)))))))

(declare-fun b!1584689 () Bool)

(declare-fun res!706665 () Bool)

(assert (=> b!1584689 (=> (not res!706665) (not e!1017887))))

(assert (=> b!1584689 (= res!706665 (<= (- (height!853 (left!14062 (c!256549 lt!556080))) (height!853 (right!14392 (c!256549 lt!556080)))) 1))))

(declare-fun b!1584690 () Bool)

(declare-fun res!706664 () Bool)

(assert (=> b!1584690 (=> (not res!706664) (not e!1017887))))

(assert (=> b!1584690 (= res!706664 (isBalanced!1700 (right!14392 (c!256549 lt!556080))))))

(assert (= (and d!471320 (not res!706661)) b!1584686))

(assert (= (and b!1584686 res!706666) b!1584689))

(assert (= (and b!1584689 res!706665) b!1584687))

(assert (= (and b!1584687 res!706662) b!1584690))

(assert (= (and b!1584690 res!706664) b!1584685))

(assert (= (and b!1584685 res!706663) b!1584688))

(declare-fun m!1872467 () Bool)

(assert (=> b!1584689 m!1872467))

(declare-fun m!1872469 () Bool)

(assert (=> b!1584689 m!1872469))

(assert (=> b!1584686 m!1872467))

(assert (=> b!1584686 m!1872469))

(declare-fun m!1872471 () Bool)

(assert (=> b!1584687 m!1872471))

(declare-fun m!1872473 () Bool)

(assert (=> b!1584688 m!1872473))

(declare-fun m!1872475 () Bool)

(assert (=> b!1584690 m!1872475))

(declare-fun m!1872477 () Bool)

(assert (=> b!1584685 m!1872477))

(assert (=> b!1583415 d!471320))

(declare-fun bs!391288 () Bool)

(declare-fun d!471322 () Bool)

(assert (= bs!391288 (and d!471322 d!470792)))

(declare-fun lambda!66547 () Int)

(assert (=> bs!391288 (= lambda!66547 lambda!66517)))

(declare-fun b!1584695 () Bool)

(declare-fun e!1017893 () Bool)

(assert (=> b!1584695 (= e!1017893 true)))

(declare-fun b!1584694 () Bool)

(declare-fun e!1017892 () Bool)

(assert (=> b!1584694 (= e!1017892 e!1017893)))

(declare-fun b!1584693 () Bool)

(declare-fun e!1017891 () Bool)

(assert (=> b!1584693 (= e!1017891 e!1017892)))

(assert (=> d!471322 e!1017891))

(assert (= b!1584694 b!1584695))

(assert (= b!1584693 b!1584694))

(assert (= (and d!471322 ((_ is Cons!17406) rules!1846)) b!1584693))

(assert (=> b!1584695 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7722 order!10271 lambda!66547))))

(assert (=> b!1584695 (< (dynLambda!7723 order!10273 (toChars!4333 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7722 order!10271 lambda!66547))))

(assert (=> d!471322 true))

(declare-fun lt!557022 () Bool)

(assert (=> d!471322 (= lt!557022 (forall!4000 (t!143960 tokens!457) lambda!66547))))

(declare-fun e!1017890 () Bool)

(assert (=> d!471322 (= lt!557022 e!1017890)))

(declare-fun res!706668 () Bool)

(assert (=> d!471322 (=> res!706668 e!1017890)))

(assert (=> d!471322 (= res!706668 (not ((_ is Cons!17405) (t!143960 tokens!457))))))

(assert (=> d!471322 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471322 (= (rulesProduceEachTokenIndividuallyList!898 thiss!17113 rules!1846 (t!143960 tokens!457)) lt!557022)))

(declare-fun b!1584691 () Bool)

(declare-fun e!1017889 () Bool)

(assert (=> b!1584691 (= e!1017890 e!1017889)))

(declare-fun res!706667 () Bool)

(assert (=> b!1584691 (=> (not res!706667) (not e!1017889))))

(assert (=> b!1584691 (= res!706667 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457))))))

(declare-fun b!1584692 () Bool)

(assert (=> b!1584692 (= e!1017889 (rulesProduceEachTokenIndividuallyList!898 thiss!17113 rules!1846 (t!143960 (t!143960 tokens!457))))))

(assert (= (and d!471322 (not res!706668)) b!1584691))

(assert (= (and b!1584691 res!706667) b!1584692))

(declare-fun m!1872479 () Bool)

(assert (=> d!471322 m!1872479))

(assert (=> d!471322 m!1869853))

(assert (=> b!1584691 m!1870447))

(declare-fun m!1872481 () Bool)

(assert (=> b!1584692 m!1872481))

(assert (=> b!1583473 d!471322))

(declare-fun d!471324 () Bool)

(declare-fun lt!557023 () Int)

(assert (=> d!471324 (= lt!557023 (size!14007 (list!6744 (_1!9844 lt!556158))))))

(assert (=> d!471324 (= lt!557023 (size!14010 (c!256549 (_1!9844 lt!556158))))))

(assert (=> d!471324 (= (size!14004 (_1!9844 lt!556158)) lt!557023)))

(declare-fun bs!391289 () Bool)

(assert (= bs!391289 d!471324))

(assert (=> bs!391289 m!1870287))

(assert (=> bs!391289 m!1870287))

(declare-fun m!1872483 () Bool)

(assert (=> bs!391289 m!1872483))

(declare-fun m!1872485 () Bool)

(assert (=> bs!391289 m!1872485))

(assert (=> d!470816 d!471324))

(declare-fun lt!557027 () tuple2!16884)

(declare-fun e!1017894 () Bool)

(declare-fun b!1584696 () Bool)

(assert (=> b!1584696 (= e!1017894 (= (list!6743 (_2!9844 lt!557027)) (list!6743 (_2!9844 (lexRec!354 thiss!17113 rules!1846 lt!555961)))))))

(declare-fun b!1584697 () Bool)

(declare-fun lt!557035 () tuple2!16884)

(declare-fun lt!557038 () Option!3131)

(assert (=> b!1584697 (= lt!557035 (lexRec!354 thiss!17113 rules!1846 (_2!9848 (v!23999 lt!557038))))))

(declare-fun e!1017895 () tuple2!16884)

(assert (=> b!1584697 (= e!1017895 (tuple2!16885 (prepend!549 (_1!9844 lt!557035) (_1!9848 (v!23999 lt!557038))) (_2!9844 lt!557035)))))

(declare-fun d!471326 () Bool)

(assert (=> d!471326 e!1017894))

(declare-fun res!706669 () Bool)

(assert (=> d!471326 (=> (not res!706669) (not e!1017894))))

(assert (=> d!471326 (= res!706669 (= (list!6744 (_1!9844 lt!557027)) (list!6744 (_1!9844 (lexRec!354 thiss!17113 rules!1846 lt!555961)))))))

(declare-fun e!1017897 () tuple2!16884)

(assert (=> d!471326 (= lt!557027 e!1017897)))

(declare-fun c!256854 () Bool)

(declare-fun lt!557032 () Option!3131)

(assert (=> d!471326 (= c!256854 ((_ is Some!3130) lt!557032))))

(assert (=> d!471326 (= lt!557032 (maxPrefixZipperSequenceV2!249 thiss!17113 rules!1846 lt!555961 lt!555961))))

(declare-fun lt!557051 () Unit!27203)

(declare-fun lt!557050 () Unit!27203)

(assert (=> d!471326 (= lt!557051 lt!557050)))

(declare-fun lt!557047 () List!17474)

(declare-fun lt!557041 () List!17474)

(assert (=> d!471326 (isSuffix!400 lt!557047 (++!4529 lt!557041 lt!557047))))

(assert (=> d!471326 (= lt!557050 (lemmaConcatTwoListThenFSndIsSuffix!301 lt!557041 lt!557047))))

(assert (=> d!471326 (= lt!557047 (list!6743 lt!555961))))

(assert (=> d!471326 (= lt!557041 (list!6743 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!471326 (= (lexTailRecV2!507 thiss!17113 rules!1846 lt!555961 (BalanceConc!11509 Empty!5782) lt!555961 (BalanceConc!11511 Empty!5783)) lt!557027)))

(declare-fun b!1584698 () Bool)

(assert (=> b!1584698 (= e!1017897 (tuple2!16885 (BalanceConc!11511 Empty!5783) lt!555961))))

(declare-fun b!1584699 () Bool)

(assert (=> b!1584699 (= e!1017895 (tuple2!16885 (BalanceConc!11511 Empty!5783) lt!555961))))

(declare-fun b!1584700 () Bool)

(declare-fun lt!557040 () BalanceConc!11508)

(assert (=> b!1584700 (= e!1017897 (lexTailRecV2!507 thiss!17113 rules!1846 lt!555961 lt!557040 (_2!9848 (v!23999 lt!557032)) (append!533 (BalanceConc!11511 Empty!5783) (_1!9848 (v!23999 lt!557032)))))))

(declare-fun lt!557033 () tuple2!16884)

(assert (=> b!1584700 (= lt!557033 (lexRec!354 thiss!17113 rules!1846 (_2!9848 (v!23999 lt!557032))))))

(declare-fun lt!557055 () List!17474)

(assert (=> b!1584700 (= lt!557055 (list!6743 (BalanceConc!11509 Empty!5782)))))

(declare-fun lt!557024 () List!17474)

(assert (=> b!1584700 (= lt!557024 (list!6743 (charsOf!1716 (_1!9848 (v!23999 lt!557032)))))))

(declare-fun lt!557031 () List!17474)

(assert (=> b!1584700 (= lt!557031 (list!6743 (_2!9848 (v!23999 lt!557032))))))

(declare-fun lt!557037 () Unit!27203)

(assert (=> b!1584700 (= lt!557037 (lemmaConcatAssociativity!984 lt!557055 lt!557024 lt!557031))))

(assert (=> b!1584700 (= (++!4529 (++!4529 lt!557055 lt!557024) lt!557031) (++!4529 lt!557055 (++!4529 lt!557024 lt!557031)))))

(declare-fun lt!557042 () Unit!27203)

(assert (=> b!1584700 (= lt!557042 lt!557037)))

(assert (=> b!1584700 (= lt!557038 (maxPrefixZipperSequence!610 thiss!17113 rules!1846 lt!555961))))

(declare-fun c!256852 () Bool)

(assert (=> b!1584700 (= c!256852 ((_ is Some!3130) lt!557038))))

(assert (=> b!1584700 (= (lexRec!354 thiss!17113 rules!1846 lt!555961) e!1017895)))

(declare-fun lt!557056 () Unit!27203)

(declare-fun Unit!27254 () Unit!27203)

(assert (=> b!1584700 (= lt!557056 Unit!27254)))

(declare-fun lt!557030 () List!17475)

(assert (=> b!1584700 (= lt!557030 (list!6744 (BalanceConc!11511 Empty!5783)))))

(declare-fun lt!557046 () List!17475)

(assert (=> b!1584700 (= lt!557046 (Cons!17405 (_1!9848 (v!23999 lt!557032)) Nil!17405))))

(declare-fun lt!557025 () List!17475)

(assert (=> b!1584700 (= lt!557025 (list!6744 (_1!9844 lt!557033)))))

(declare-fun lt!557048 () Unit!27203)

(assert (=> b!1584700 (= lt!557048 (lemmaConcatAssociativity!985 lt!557030 lt!557046 lt!557025))))

(assert (=> b!1584700 (= (++!4534 (++!4534 lt!557030 lt!557046) lt!557025) (++!4534 lt!557030 (++!4534 lt!557046 lt!557025)))))

(declare-fun lt!557054 () Unit!27203)

(assert (=> b!1584700 (= lt!557054 lt!557048)))

(declare-fun lt!557043 () List!17474)

(assert (=> b!1584700 (= lt!557043 (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) (list!6743 (charsOf!1716 (_1!9848 (v!23999 lt!557032))))))))

(declare-fun lt!557049 () List!17474)

(assert (=> b!1584700 (= lt!557049 (list!6743 (_2!9848 (v!23999 lt!557032))))))

(declare-fun lt!557026 () List!17475)

(assert (=> b!1584700 (= lt!557026 (list!6744 (append!533 (BalanceConc!11511 Empty!5783) (_1!9848 (v!23999 lt!557032)))))))

(declare-fun lt!557053 () Unit!27203)

(assert (=> b!1584700 (= lt!557053 (lemmaLexThenLexPrefix!242 thiss!17113 rules!1846 lt!557043 lt!557049 lt!557026 (list!6744 (_1!9844 lt!557033)) (list!6743 (_2!9844 lt!557033))))))

(assert (=> b!1584700 (= (lexList!784 thiss!17113 rules!1846 lt!557043) (tuple2!16889 lt!557026 Nil!17404))))

(declare-fun lt!557045 () Unit!27203)

(assert (=> b!1584700 (= lt!557045 lt!557053)))

(declare-fun lt!557039 () BalanceConc!11508)

(assert (=> b!1584700 (= lt!557039 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (_1!9848 (v!23999 lt!557032)))))))

(declare-fun lt!557028 () Option!3131)

(assert (=> b!1584700 (= lt!557028 (maxPrefixZipperSequence!610 thiss!17113 rules!1846 lt!557039))))

(declare-fun c!256853 () Bool)

(assert (=> b!1584700 (= c!256853 ((_ is Some!3130) lt!557028))))

(declare-fun e!1017896 () tuple2!16884)

(assert (=> b!1584700 (= (lexRec!354 thiss!17113 rules!1846 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (_1!9848 (v!23999 lt!557032))))) e!1017896)))

(declare-fun lt!557044 () Unit!27203)

(declare-fun Unit!27255 () Unit!27203)

(assert (=> b!1584700 (= lt!557044 Unit!27255)))

(assert (=> b!1584700 (= lt!557040 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (_1!9848 (v!23999 lt!557032)))))))

(declare-fun lt!557052 () List!17474)

(assert (=> b!1584700 (= lt!557052 (list!6743 lt!557040))))

(declare-fun lt!557057 () List!17474)

(assert (=> b!1584700 (= lt!557057 (list!6743 (_2!9848 (v!23999 lt!557032))))))

(declare-fun lt!557029 () Unit!27203)

(assert (=> b!1584700 (= lt!557029 (lemmaConcatTwoListThenFSndIsSuffix!301 lt!557052 lt!557057))))

(assert (=> b!1584700 (isSuffix!400 lt!557057 (++!4529 lt!557052 lt!557057))))

(declare-fun lt!557036 () Unit!27203)

(assert (=> b!1584700 (= lt!557036 lt!557029)))

(declare-fun b!1584701 () Bool)

(assert (=> b!1584701 (= e!1017896 (tuple2!16885 (BalanceConc!11511 Empty!5783) lt!557039))))

(declare-fun b!1584702 () Bool)

(declare-fun lt!557034 () tuple2!16884)

(assert (=> b!1584702 (= lt!557034 (lexRec!354 thiss!17113 rules!1846 (_2!9848 (v!23999 lt!557028))))))

(assert (=> b!1584702 (= e!1017896 (tuple2!16885 (prepend!549 (_1!9844 lt!557034) (_1!9848 (v!23999 lt!557028))) (_2!9844 lt!557034)))))

(assert (= (and d!471326 c!256854) b!1584700))

(assert (= (and d!471326 (not c!256854)) b!1584698))

(assert (= (and b!1584700 c!256852) b!1584697))

(assert (= (and b!1584700 (not c!256852)) b!1584699))

(assert (= (and b!1584700 c!256853) b!1584702))

(assert (= (and b!1584700 (not c!256853)) b!1584701))

(assert (= (and d!471326 res!706669) b!1584696))

(declare-fun m!1872487 () Bool)

(assert (=> d!471326 m!1872487))

(declare-fun m!1872489 () Bool)

(assert (=> d!471326 m!1872489))

(declare-fun m!1872491 () Bool)

(assert (=> d!471326 m!1872491))

(assert (=> d!471326 m!1870017))

(assert (=> d!471326 m!1872489))

(declare-fun m!1872493 () Bool)

(assert (=> d!471326 m!1872493))

(declare-fun m!1872495 () Bool)

(assert (=> d!471326 m!1872495))

(assert (=> d!471326 m!1869873))

(declare-fun m!1872497 () Bool)

(assert (=> d!471326 m!1872497))

(declare-fun m!1872499 () Bool)

(assert (=> d!471326 m!1872499))

(declare-fun m!1872501 () Bool)

(assert (=> b!1584696 m!1872501))

(assert (=> b!1584696 m!1872499))

(declare-fun m!1872503 () Bool)

(assert (=> b!1584696 m!1872503))

(declare-fun m!1872505 () Bool)

(assert (=> b!1584700 m!1872505))

(declare-fun m!1872507 () Bool)

(assert (=> b!1584700 m!1872507))

(assert (=> b!1584700 m!1872499))

(assert (=> b!1584700 m!1872505))

(declare-fun m!1872509 () Bool)

(assert (=> b!1584700 m!1872509))

(declare-fun m!1872511 () Bool)

(assert (=> b!1584700 m!1872511))

(declare-fun m!1872513 () Bool)

(assert (=> b!1584700 m!1872513))

(assert (=> b!1584700 m!1870017))

(declare-fun m!1872515 () Bool)

(assert (=> b!1584700 m!1872515))

(declare-fun m!1872517 () Bool)

(assert (=> b!1584700 m!1872517))

(declare-fun m!1872519 () Bool)

(assert (=> b!1584700 m!1872519))

(declare-fun m!1872521 () Bool)

(assert (=> b!1584700 m!1872521))

(declare-fun m!1872523 () Bool)

(assert (=> b!1584700 m!1872523))

(assert (=> b!1584700 m!1872521))

(declare-fun m!1872525 () Bool)

(assert (=> b!1584700 m!1872525))

(declare-fun m!1872527 () Bool)

(assert (=> b!1584700 m!1872527))

(declare-fun m!1872529 () Bool)

(assert (=> b!1584700 m!1872529))

(declare-fun m!1872531 () Bool)

(assert (=> b!1584700 m!1872531))

(assert (=> b!1584700 m!1872515))

(declare-fun m!1872533 () Bool)

(assert (=> b!1584700 m!1872533))

(declare-fun m!1872535 () Bool)

(assert (=> b!1584700 m!1872535))

(declare-fun m!1872537 () Bool)

(assert (=> b!1584700 m!1872537))

(assert (=> b!1584700 m!1870017))

(assert (=> b!1584700 m!1872509))

(declare-fun m!1872539 () Bool)

(assert (=> b!1584700 m!1872539))

(declare-fun m!1872541 () Bool)

(assert (=> b!1584700 m!1872541))

(assert (=> b!1584700 m!1872507))

(declare-fun m!1872543 () Bool)

(assert (=> b!1584700 m!1872543))

(assert (=> b!1584700 m!1872529))

(declare-fun m!1872545 () Bool)

(assert (=> b!1584700 m!1872545))

(assert (=> b!1584700 m!1872527))

(declare-fun m!1872547 () Bool)

(assert (=> b!1584700 m!1872547))

(declare-fun m!1872549 () Bool)

(assert (=> b!1584700 m!1872549))

(declare-fun m!1872551 () Bool)

(assert (=> b!1584700 m!1872551))

(declare-fun m!1872553 () Bool)

(assert (=> b!1584700 m!1872553))

(assert (=> b!1584700 m!1872533))

(declare-fun m!1872555 () Bool)

(assert (=> b!1584700 m!1872555))

(assert (=> b!1584700 m!1872533))

(declare-fun m!1872557 () Bool)

(assert (=> b!1584700 m!1872557))

(declare-fun m!1872559 () Bool)

(assert (=> b!1584700 m!1872559))

(assert (=> b!1584700 m!1872175))

(assert (=> b!1584700 m!1872535))

(assert (=> b!1584700 m!1872559))

(assert (=> b!1584700 m!1872553))

(declare-fun m!1872561 () Bool)

(assert (=> b!1584700 m!1872561))

(declare-fun m!1872563 () Bool)

(assert (=> b!1584700 m!1872563))

(assert (=> b!1584700 m!1872505))

(declare-fun m!1872565 () Bool)

(assert (=> b!1584702 m!1872565))

(declare-fun m!1872567 () Bool)

(assert (=> b!1584702 m!1872567))

(declare-fun m!1872569 () Bool)

(assert (=> b!1584697 m!1872569))

(declare-fun m!1872571 () Bool)

(assert (=> b!1584697 m!1872571))

(assert (=> d!470816 d!471326))

(declare-fun d!471328 () Bool)

(assert (=> d!471328 (= (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))) (not (isEmpty!10427 (maxPrefix!1260 thiss!17113 rules!1846 (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun bs!391290 () Bool)

(assert (= bs!391290 d!471328))

(assert (=> bs!391290 m!1870369))

(declare-fun m!1872573 () Bool)

(assert (=> bs!391290 m!1872573))

(assert (=> b!1583531 d!471328))

(declare-fun b!1584706 () Bool)

(declare-fun e!1017898 () Unit!27203)

(declare-fun Unit!27256 () Unit!27203)

(assert (=> b!1584706 (= e!1017898 Unit!27256)))

(declare-fun b!1584703 () Bool)

(declare-fun res!706671 () Bool)

(declare-fun e!1017899 () Bool)

(assert (=> b!1584703 (=> (not res!706671) (not e!1017899))))

(declare-fun lt!557068 () Token!5700)

(assert (=> b!1584703 (= res!706671 (matchR!1916 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!557068))))) (list!6743 (charsOf!1716 lt!557068))))))

(declare-fun d!471330 () Bool)

(assert (=> d!471330 (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243))))))

(declare-fun lt!557060 () Unit!27203)

(assert (=> d!471330 (= lt!557060 e!1017898)))

(declare-fun c!256855 () Bool)

(assert (=> d!471330 (= c!256855 (isEmpty!10427 (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))))

(declare-fun lt!557063 () Unit!27203)

(declare-fun lt!557058 () Unit!27203)

(assert (=> d!471330 (= lt!557063 lt!557058)))

(assert (=> d!471330 e!1017899))

(declare-fun res!706670 () Bool)

(assert (=> d!471330 (=> (not res!706670) (not e!1017899))))

(assert (=> d!471330 (= res!706670 (isDefined!2507 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!557068)))))))

(assert (=> d!471330 (= lt!557058 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!240 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) lt!557068))))

(declare-fun lt!557073 () Unit!27203)

(declare-fun lt!557064 () Unit!27203)

(assert (=> d!471330 (= lt!557073 lt!557064)))

(declare-fun lt!557059 () List!17474)

(assert (=> d!471330 (isPrefix!1327 lt!557059 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))

(assert (=> d!471330 (= lt!557064 (lemmaPrefixStaysPrefixWhenAddingToSuffix!126 lt!557059 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))

(assert (=> d!471330 (= lt!557059 (list!6743 (charsOf!1716 lt!557068)))))

(declare-fun lt!557072 () Unit!27203)

(declare-fun lt!557066 () Unit!27203)

(assert (=> d!471330 (= lt!557072 lt!557066)))

(declare-fun lt!557071 () List!17474)

(declare-fun lt!557069 () List!17474)

(assert (=> d!471330 (isPrefix!1327 lt!557071 (++!4529 lt!557071 lt!557069))))

(assert (=> d!471330 (= lt!557066 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!557071 lt!557069))))

(assert (=> d!471330 (= lt!557069 (_2!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))

(assert (=> d!471330 (= lt!557071 (list!6743 (charsOf!1716 lt!557068)))))

(assert (=> d!471330 (= lt!557068 (head!3205 (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))))

(assert (=> d!471330 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471330 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)) lt!557060)))

(declare-fun b!1584704 () Bool)

(assert (=> b!1584704 (= e!1017899 (= (rule!4867 lt!557068) (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!557068))))))))

(declare-fun b!1584705 () Bool)

(declare-fun Unit!27257 () Unit!27203)

(assert (=> b!1584705 (= e!1017898 Unit!27257)))

(declare-fun lt!557070 () List!17474)

(assert (=> b!1584705 (= lt!557070 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))

(declare-fun lt!557062 () Unit!27203)

(assert (=> b!1584705 (= lt!557062 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!134 thiss!17113 (rule!4867 lt!557068) rules!1846 lt!557070))))

(assert (=> b!1584705 (isEmpty!10427 (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!557068) lt!557070))))

(declare-fun lt!557061 () Unit!27203)

(assert (=> b!1584705 (= lt!557061 lt!557062)))

(declare-fun lt!557065 () List!17474)

(assert (=> b!1584705 (= lt!557065 (list!6743 (charsOf!1716 lt!557068)))))

(declare-fun lt!557074 () Unit!27203)

(assert (=> b!1584705 (= lt!557074 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!130 thiss!17113 (rule!4867 lt!557068) lt!557065 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243))))))

(assert (=> b!1584705 (not (matchR!1916 (regex!3067 (rule!4867 lt!557068)) lt!557065))))

(declare-fun lt!557067 () Unit!27203)

(assert (=> b!1584705 (= lt!557067 lt!557074)))

(assert (=> b!1584705 false))

(assert (= (and d!471330 res!706670) b!1584703))

(assert (= (and b!1584703 res!706671) b!1584704))

(assert (= (and d!471330 c!256855) b!1584705))

(assert (= (and d!471330 (not c!256855)) b!1584706))

(declare-fun m!1872575 () Bool)

(assert (=> b!1584703 m!1872575))

(declare-fun m!1872577 () Bool)

(assert (=> b!1584703 m!1872577))

(declare-fun m!1872579 () Bool)

(assert (=> b!1584703 m!1872579))

(declare-fun m!1872581 () Bool)

(assert (=> b!1584703 m!1872581))

(assert (=> b!1584703 m!1872581))

(declare-fun m!1872583 () Bool)

(assert (=> b!1584703 m!1872583))

(assert (=> b!1584703 m!1872579))

(assert (=> b!1584703 m!1872575))

(assert (=> d!471330 m!1872579))

(assert (=> d!471330 m!1872581))

(declare-fun m!1872585 () Bool)

(assert (=> d!471330 m!1872585))

(declare-fun m!1872587 () Bool)

(assert (=> d!471330 m!1872587))

(declare-fun m!1872589 () Bool)

(assert (=> d!471330 m!1872589))

(declare-fun m!1872591 () Bool)

(assert (=> d!471330 m!1872591))

(assert (=> d!471330 m!1870367))

(assert (=> d!471330 m!1870361))

(declare-fun m!1872593 () Bool)

(assert (=> d!471330 m!1872593))

(assert (=> d!471330 m!1872585))

(declare-fun m!1872595 () Bool)

(assert (=> d!471330 m!1872595))

(declare-fun m!1872597 () Bool)

(assert (=> d!471330 m!1872597))

(declare-fun m!1872599 () Bool)

(assert (=> d!471330 m!1872599))

(declare-fun m!1872601 () Bool)

(assert (=> d!471330 m!1872601))

(assert (=> d!471330 m!1872597))

(assert (=> d!471330 m!1872589))

(assert (=> d!471330 m!1872585))

(assert (=> d!471330 m!1869853))

(assert (=> d!471330 m!1872575))

(declare-fun m!1872603 () Bool)

(assert (=> d!471330 m!1872603))

(declare-fun m!1872605 () Bool)

(assert (=> d!471330 m!1872605))

(declare-fun m!1872607 () Bool)

(assert (=> d!471330 m!1872607))

(assert (=> d!471330 m!1870381))

(assert (=> d!471330 m!1870403))

(assert (=> d!471330 m!1872579))

(assert (=> d!471330 m!1870367))

(declare-fun m!1872609 () Bool)

(assert (=> d!471330 m!1872609))

(declare-fun m!1872611 () Bool)

(assert (=> d!471330 m!1872611))

(declare-fun m!1872613 () Bool)

(assert (=> d!471330 m!1872613))

(assert (=> d!471330 m!1870367))

(assert (=> d!471330 m!1870381))

(assert (=> d!471330 m!1872575))

(assert (=> d!471330 m!1870367))

(assert (=> d!471330 m!1870361))

(assert (=> d!471330 m!1872589))

(assert (=> d!471330 m!1872611))

(assert (=> d!471330 m!1870367))

(assert (=> d!471330 m!1872605))

(assert (=> b!1584704 m!1872575))

(assert (=> b!1584704 m!1872575))

(assert (=> b!1584704 m!1872577))

(declare-fun m!1872615 () Bool)

(assert (=> b!1584705 m!1872615))

(assert (=> b!1584705 m!1872579))

(assert (=> b!1584705 m!1872581))

(assert (=> b!1584705 m!1872589))

(declare-fun m!1872617 () Bool)

(assert (=> b!1584705 m!1872617))

(declare-fun m!1872619 () Bool)

(assert (=> b!1584705 m!1872619))

(declare-fun m!1872621 () Bool)

(assert (=> b!1584705 m!1872621))

(assert (=> b!1584705 m!1872579))

(assert (=> b!1584705 m!1870367))

(assert (=> b!1584705 m!1870361))

(assert (=> b!1584705 m!1872589))

(assert (=> b!1584705 m!1872621))

(declare-fun m!1872623 () Bool)

(assert (=> b!1584705 m!1872623))

(assert (=> b!1583531 d!471330))

(declare-fun d!471332 () Bool)

(declare-fun e!1017900 () Bool)

(assert (=> d!471332 e!1017900))

(declare-fun res!706672 () Bool)

(assert (=> d!471332 (=> (not res!706672) (not e!1017900))))

(assert (=> d!471332 (= res!706672 (isBalanced!1700 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457))))) (h!22806 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557075 () BalanceConc!11510)

(assert (=> d!471332 (= lt!557075 (BalanceConc!11511 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457))))) (h!22806 (t!143960 (t!143960 tokens!457))))))))

(assert (=> d!471332 (= (prepend!549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 (t!143960 tokens!457)))) lt!557075)))

(declare-fun b!1584707 () Bool)

(assert (=> b!1584707 (= e!1017900 (= (list!6744 lt!557075) (Cons!17405 (h!22806 (t!143960 (t!143960 tokens!457))) (list!6744 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457))))))))))

(assert (= (and d!471332 res!706672) b!1584707))

(declare-fun m!1872625 () Bool)

(assert (=> d!471332 m!1872625))

(assert (=> d!471332 m!1872625))

(declare-fun m!1872627 () Bool)

(assert (=> d!471332 m!1872627))

(declare-fun m!1872629 () Bool)

(assert (=> b!1584707 m!1872629))

(assert (=> b!1584707 m!1870411))

(declare-fun m!1872631 () Bool)

(assert (=> b!1584707 m!1872631))

(assert (=> b!1583531 d!471332))

(assert (=> b!1583531 d!470854))

(assert (=> b!1583531 d!471140))

(declare-fun d!471334 () Bool)

(assert (=> d!471334 (= (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457)))) (fromListB!806 (t!143960 (t!143960 (t!143960 tokens!457)))))))

(declare-fun bs!391291 () Bool)

(assert (= bs!391291 d!471334))

(declare-fun m!1872633 () Bool)

(assert (=> bs!391291 m!1872633))

(assert (=> b!1583531 d!471334))

(declare-fun d!471336 () Bool)

(declare-fun lt!557078 () C!8964)

(assert (=> d!471336 (= lt!557078 (head!3208 (list!6743 lt!556243)))))

(declare-fun head!3211 (Conc!5782) C!8964)

(assert (=> d!471336 (= lt!557078 (head!3211 (c!256547 lt!556243)))))

(assert (=> d!471336 (not (isEmpty!10433 lt!556243))))

(assert (=> d!471336 (= (head!3209 lt!556243) lt!557078)))

(declare-fun bs!391292 () Bool)

(assert (= bs!391292 d!471336))

(assert (=> bs!391292 m!1870361))

(assert (=> bs!391292 m!1870361))

(assert (=> bs!391292 m!1870363))

(declare-fun m!1872635 () Bool)

(assert (=> bs!391292 m!1872635))

(declare-fun m!1872637 () Bool)

(assert (=> bs!391292 m!1872637))

(assert (=> b!1583531 d!471336))

(declare-fun d!471338 () Bool)

(declare-fun lt!557079 () C!8964)

(assert (=> d!471338 (= lt!557079 (apply!4245 (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457))))) 0))))

(assert (=> d!471338 (= lt!557079 (apply!4246 (c!256547 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457))))) 0))))

(declare-fun e!1017901 () Bool)

(assert (=> d!471338 e!1017901))

(declare-fun res!706673 () Bool)

(assert (=> d!471338 (=> (not res!706673) (not e!1017901))))

(assert (=> d!471338 (= res!706673 (<= 0 0))))

(assert (=> d!471338 (= (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0) lt!557079)))

(declare-fun b!1584708 () Bool)

(assert (=> b!1584708 (= e!1017901 (< 0 (size!14006 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))))))))

(assert (= (and d!471338 res!706673) b!1584708))

(assert (=> d!471338 m!1870409))

(declare-fun m!1872639 () Bool)

(assert (=> d!471338 m!1872639))

(assert (=> d!471338 m!1872639))

(declare-fun m!1872641 () Bool)

(assert (=> d!471338 m!1872641))

(declare-fun m!1872643 () Bool)

(assert (=> d!471338 m!1872643))

(assert (=> b!1584708 m!1870409))

(declare-fun m!1872645 () Bool)

(assert (=> b!1584708 m!1872645))

(assert (=> b!1583531 d!471338))

(declare-fun d!471340 () Bool)

(assert (=> d!471340 (= (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))) (v!23986 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))

(assert (=> b!1583531 d!471340))

(declare-fun b!1584711 () Bool)

(declare-fun e!1017902 () Bool)

(assert (=> b!1584711 (= e!1017902 (isPrefix!1327 (tail!2266 lt!556232) (tail!2266 (++!4529 lt!556232 lt!556235))))))

(declare-fun b!1584709 () Bool)

(declare-fun e!1017904 () Bool)

(assert (=> b!1584709 (= e!1017904 e!1017902)))

(declare-fun res!706675 () Bool)

(assert (=> b!1584709 (=> (not res!706675) (not e!1017902))))

(assert (=> b!1584709 (= res!706675 (not ((_ is Nil!17404) (++!4529 lt!556232 lt!556235))))))

(declare-fun d!471342 () Bool)

(declare-fun e!1017903 () Bool)

(assert (=> d!471342 e!1017903))

(declare-fun res!706676 () Bool)

(assert (=> d!471342 (=> res!706676 e!1017903)))

(declare-fun lt!557080 () Bool)

(assert (=> d!471342 (= res!706676 (not lt!557080))))

(assert (=> d!471342 (= lt!557080 e!1017904)))

(declare-fun res!706674 () Bool)

(assert (=> d!471342 (=> res!706674 e!1017904)))

(assert (=> d!471342 (= res!706674 ((_ is Nil!17404) lt!556232))))

(assert (=> d!471342 (= (isPrefix!1327 lt!556232 (++!4529 lt!556232 lt!556235)) lt!557080)))

(declare-fun b!1584710 () Bool)

(declare-fun res!706677 () Bool)

(assert (=> b!1584710 (=> (not res!706677) (not e!1017902))))

(assert (=> b!1584710 (= res!706677 (= (head!3208 lt!556232) (head!3208 (++!4529 lt!556232 lt!556235))))))

(declare-fun b!1584712 () Bool)

(assert (=> b!1584712 (= e!1017903 (>= (size!14005 (++!4529 lt!556232 lt!556235)) (size!14005 lt!556232)))))

(assert (= (and d!471342 (not res!706674)) b!1584709))

(assert (= (and b!1584709 res!706675) b!1584710))

(assert (= (and b!1584710 res!706677) b!1584711))

(assert (= (and d!471342 (not res!706676)) b!1584712))

(declare-fun m!1872647 () Bool)

(assert (=> b!1584711 m!1872647))

(assert (=> b!1584711 m!1870359))

(declare-fun m!1872649 () Bool)

(assert (=> b!1584711 m!1872649))

(assert (=> b!1584711 m!1872647))

(assert (=> b!1584711 m!1872649))

(declare-fun m!1872651 () Bool)

(assert (=> b!1584711 m!1872651))

(declare-fun m!1872653 () Bool)

(assert (=> b!1584710 m!1872653))

(assert (=> b!1584710 m!1870359))

(declare-fun m!1872655 () Bool)

(assert (=> b!1584710 m!1872655))

(assert (=> b!1584712 m!1870359))

(declare-fun m!1872657 () Bool)

(assert (=> b!1584712 m!1872657))

(declare-fun m!1872659 () Bool)

(assert (=> b!1584712 m!1872659))

(assert (=> b!1583531 d!471342))

(declare-fun b!1584713 () Bool)

(declare-fun e!1017906 () List!17474)

(assert (=> b!1584713 (= e!1017906 lt!556235)))

(declare-fun b!1584715 () Bool)

(declare-fun res!706678 () Bool)

(declare-fun e!1017905 () Bool)

(assert (=> b!1584715 (=> (not res!706678) (not e!1017905))))

(declare-fun lt!557081 () List!17474)

(assert (=> b!1584715 (= res!706678 (= (size!14005 lt!557081) (+ (size!14005 lt!556232) (size!14005 lt!556235))))))

(declare-fun b!1584716 () Bool)

(assert (=> b!1584716 (= e!1017905 (or (not (= lt!556235 Nil!17404)) (= lt!557081 lt!556232)))))

(declare-fun b!1584714 () Bool)

(assert (=> b!1584714 (= e!1017906 (Cons!17404 (h!22805 lt!556232) (++!4529 (t!143959 lt!556232) lt!556235)))))

(declare-fun d!471344 () Bool)

(assert (=> d!471344 e!1017905))

(declare-fun res!706679 () Bool)

(assert (=> d!471344 (=> (not res!706679) (not e!1017905))))

(assert (=> d!471344 (= res!706679 (= (content!2394 lt!557081) ((_ map or) (content!2394 lt!556232) (content!2394 lt!556235))))))

(assert (=> d!471344 (= lt!557081 e!1017906)))

(declare-fun c!256856 () Bool)

(assert (=> d!471344 (= c!256856 ((_ is Nil!17404) lt!556232))))

(assert (=> d!471344 (= (++!4529 lt!556232 lt!556235) lt!557081)))

(assert (= (and d!471344 c!256856) b!1584713))

(assert (= (and d!471344 (not c!256856)) b!1584714))

(assert (= (and d!471344 res!706679) b!1584715))

(assert (= (and b!1584715 res!706678) b!1584716))

(declare-fun m!1872661 () Bool)

(assert (=> b!1584715 m!1872661))

(assert (=> b!1584715 m!1872659))

(declare-fun m!1872663 () Bool)

(assert (=> b!1584715 m!1872663))

(declare-fun m!1872665 () Bool)

(assert (=> b!1584714 m!1872665))

(declare-fun m!1872667 () Bool)

(assert (=> d!471344 m!1872667))

(declare-fun m!1872669 () Bool)

(assert (=> d!471344 m!1872669))

(declare-fun m!1872671 () Bool)

(assert (=> d!471344 m!1872671))

(assert (=> b!1583531 d!471344))

(declare-fun b!1584755 () Bool)

(declare-fun e!1017927 () Bool)

(assert (=> b!1584755 (= e!1017927 (not (= (head!3208 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) (c!256548 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))))))

(declare-fun b!1584756 () Bool)

(declare-fun e!1017930 () Bool)

(declare-fun e!1017933 () Bool)

(assert (=> b!1584756 (= e!1017930 e!1017933)))

(declare-fun res!706711 () Bool)

(assert (=> b!1584756 (=> (not res!706711) (not e!1017933))))

(declare-fun lt!557116 () Bool)

(assert (=> b!1584756 (= res!706711 (not lt!557116))))

(declare-fun b!1584757 () Bool)

(declare-fun e!1017931 () Bool)

(declare-fun derivativeStep!1044 (Regex!4395 C!8964) Regex!4395)

(assert (=> b!1584757 (= e!1017931 (matchR!1916 (derivativeStep!1044 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))) (head!3208 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))) (tail!2266 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1584758 () Bool)

(declare-fun e!1017929 () Bool)

(assert (=> b!1584758 (= e!1017929 (= (head!3208 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) (c!256548 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun d!471346 () Bool)

(declare-fun e!1017928 () Bool)

(assert (=> d!471346 e!1017928))

(declare-fun c!256865 () Bool)

(assert (=> d!471346 (= c!256865 ((_ is EmptyExpr!4395) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471346 (= lt!557116 e!1017931)))

(declare-fun c!256863 () Bool)

(assert (=> d!471346 (= c!256863 (isEmpty!10432 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471346 (validRegex!1734 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471346 (= (matchR!1916 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) lt!557116)))

(declare-fun b!1584759 () Bool)

(declare-fun res!706712 () Bool)

(assert (=> b!1584759 (=> res!706712 e!1017930)))

(assert (=> b!1584759 (= res!706712 e!1017929)))

(declare-fun res!706707 () Bool)

(assert (=> b!1584759 (=> (not res!706707) (not e!1017929))))

(assert (=> b!1584759 (= res!706707 lt!557116)))

(declare-fun b!1584760 () Bool)

(declare-fun res!706706 () Bool)

(assert (=> b!1584760 (=> res!706706 e!1017927)))

(assert (=> b!1584760 (= res!706706 (not (isEmpty!10432 (tail!2266 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))

(declare-fun b!1584761 () Bool)

(declare-fun e!1017932 () Bool)

(assert (=> b!1584761 (= e!1017928 e!1017932)))

(declare-fun c!256864 () Bool)

(assert (=> b!1584761 (= c!256864 ((_ is EmptyLang!4395) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584762 () Bool)

(declare-fun res!706710 () Bool)

(assert (=> b!1584762 (=> (not res!706710) (not e!1017929))))

(declare-fun call!102881 () Bool)

(assert (=> b!1584762 (= res!706710 (not call!102881))))

(declare-fun b!1584763 () Bool)

(declare-fun res!706709 () Bool)

(assert (=> b!1584763 (=> (not res!706709) (not e!1017929))))

(assert (=> b!1584763 (= res!706709 (isEmpty!10432 (tail!2266 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1584764 () Bool)

(assert (=> b!1584764 (= e!1017928 (= lt!557116 call!102881))))

(declare-fun b!1584765 () Bool)

(assert (=> b!1584765 (= e!1017932 (not lt!557116))))

(declare-fun b!1584766 () Bool)

(declare-fun res!706708 () Bool)

(assert (=> b!1584766 (=> res!706708 e!1017930)))

(assert (=> b!1584766 (= res!706708 (not ((_ is ElementMatch!4395) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))))))

(assert (=> b!1584766 (= e!1017932 e!1017930)))

(declare-fun b!1584767 () Bool)

(assert (=> b!1584767 (= e!1017933 e!1017927)))

(declare-fun res!706713 () Bool)

(assert (=> b!1584767 (=> res!706713 e!1017927)))

(assert (=> b!1584767 (= res!706713 call!102881)))

(declare-fun bm!102876 () Bool)

(assert (=> bm!102876 (= call!102881 (isEmpty!10432 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584768 () Bool)

(assert (=> b!1584768 (= e!1017931 (nullable!1293 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))))

(assert (= (and d!471346 c!256863) b!1584768))

(assert (= (and d!471346 (not c!256863)) b!1584757))

(assert (= (and d!471346 c!256865) b!1584764))

(assert (= (and d!471346 (not c!256865)) b!1584761))

(assert (= (and b!1584761 c!256864) b!1584765))

(assert (= (and b!1584761 (not c!256864)) b!1584766))

(assert (= (and b!1584766 (not res!706708)) b!1584759))

(assert (= (and b!1584759 res!706707) b!1584762))

(assert (= (and b!1584762 res!706710) b!1584763))

(assert (= (and b!1584763 res!706709) b!1584758))

(assert (= (and b!1584759 (not res!706712)) b!1584756))

(assert (= (and b!1584756 res!706711) b!1584767))

(assert (= (and b!1584767 (not res!706713)) b!1584760))

(assert (= (and b!1584760 (not res!706706)) b!1584755))

(assert (= (or b!1584764 b!1584762 b!1584767) bm!102876))

(assert (=> bm!102876 m!1870367))

(declare-fun m!1872731 () Bool)

(assert (=> bm!102876 m!1872731))

(assert (=> b!1584760 m!1870367))

(assert (=> b!1584760 m!1871605))

(assert (=> b!1584760 m!1871605))

(declare-fun m!1872733 () Bool)

(assert (=> b!1584760 m!1872733))

(assert (=> b!1584763 m!1870367))

(assert (=> b!1584763 m!1871605))

(assert (=> b!1584763 m!1871605))

(assert (=> b!1584763 m!1872733))

(declare-fun m!1872735 () Bool)

(assert (=> b!1584768 m!1872735))

(assert (=> b!1584758 m!1870367))

(assert (=> b!1584758 m!1871603))

(assert (=> b!1584757 m!1870367))

(assert (=> b!1584757 m!1871603))

(assert (=> b!1584757 m!1871603))

(declare-fun m!1872739 () Bool)

(assert (=> b!1584757 m!1872739))

(assert (=> b!1584757 m!1870367))

(assert (=> b!1584757 m!1871605))

(assert (=> b!1584757 m!1872739))

(assert (=> b!1584757 m!1871605))

(declare-fun m!1872741 () Bool)

(assert (=> b!1584757 m!1872741))

(assert (=> b!1584755 m!1870367))

(assert (=> b!1584755 m!1871603))

(assert (=> d!471346 m!1870367))

(assert (=> d!471346 m!1872731))

(declare-fun m!1872743 () Bool)

(assert (=> d!471346 m!1872743))

(assert (=> b!1583531 d!471346))

(declare-fun d!471370 () Bool)

(assert (=> d!471370 (= (isEmpty!10432 (_2!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))) ((_ is Nil!17404) (_2!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))))

(assert (=> b!1583531 d!471370))

(declare-fun d!471372 () Bool)

(assert (=> d!471372 (= (list!6744 (_1!9844 lt!556226)) (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557117 () Unit!27203)

(assert (=> d!471372 (= lt!557117 (choose!9476 (h!22806 (t!143960 (t!143960 tokens!457))) (t!143960 (t!143960 (t!143960 tokens!457))) (_1!9844 lt!556226)))))

(assert (=> d!471372 (= (list!6744 (_1!9844 lt!556226)) (list!6744 (seqFromList!1883 ($colon$colon!275 (t!143960 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 (t!143960 tokens!457)))))))))

(assert (=> d!471372 (= (seqFromListBHdTlConstructive!144 (h!22806 (t!143960 (t!143960 tokens!457))) (t!143960 (t!143960 (t!143960 tokens!457))) (_1!9844 lt!556226)) lt!557117)))

(declare-fun bs!391295 () Bool)

(assert (= bs!391295 d!471372))

(assert (=> bs!391295 m!1870395))

(assert (=> bs!391295 m!1870411))

(declare-fun m!1872749 () Bool)

(assert (=> bs!391295 m!1872749))

(declare-fun m!1872751 () Bool)

(assert (=> bs!391295 m!1872751))

(declare-fun m!1872753 () Bool)

(assert (=> bs!391295 m!1872753))

(assert (=> bs!391295 m!1870383))

(assert (=> bs!391295 m!1870385))

(declare-fun m!1872755 () Bool)

(assert (=> bs!391295 m!1872755))

(assert (=> bs!391295 m!1872751))

(assert (=> bs!391295 m!1870411))

(assert (=> bs!391295 m!1870383))

(assert (=> bs!391295 m!1872755))

(assert (=> b!1583531 d!471372))

(declare-fun d!471378 () Bool)

(assert (=> d!471378 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0))) (list!6747 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0)))))))

(declare-fun bs!391297 () Bool)

(assert (= bs!391297 d!471378))

(declare-fun m!1872757 () Bool)

(assert (=> bs!391297 m!1872757))

(assert (=> b!1583531 d!471378))

(declare-fun d!471380 () Bool)

(declare-fun lt!557119 () BalanceConc!11508)

(assert (=> d!471380 (= (list!6743 lt!557119) (printList!811 thiss!17113 (list!6744 (seqFromList!1883 (t!143960 (t!143960 tokens!457))))))))

(assert (=> d!471380 (= lt!557119 (printTailRec!749 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!471380 (= (print!1227 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) lt!557119)))

(declare-fun bs!391298 () Bool)

(assert (= bs!391298 d!471380))

(declare-fun m!1872759 () Bool)

(assert (=> bs!391298 m!1872759))

(assert (=> bs!391298 m!1869943))

(assert (=> bs!391298 m!1870461))

(assert (=> bs!391298 m!1870461))

(declare-fun m!1872763 () Bool)

(assert (=> bs!391298 m!1872763))

(assert (=> bs!391298 m!1869943))

(declare-fun m!1872765 () Bool)

(assert (=> bs!391298 m!1872765))

(assert (=> b!1583531 d!471380))

(declare-fun d!471382 () Bool)

(assert (=> d!471382 (= (list!6744 (_1!9844 lt!556226)) (list!6748 (c!256549 (_1!9844 lt!556226))))))

(declare-fun bs!391299 () Bool)

(assert (= bs!391299 d!471382))

(declare-fun m!1872769 () Bool)

(assert (=> bs!391299 m!1872769))

(assert (=> b!1583531 d!471382))

(declare-fun d!471386 () Bool)

(declare-fun e!1017940 () Bool)

(assert (=> d!471386 e!1017940))

(declare-fun res!706717 () Bool)

(assert (=> d!471386 (=> (not res!706717) (not e!1017940))))

(declare-fun lt!557120 () BalanceConc!11510)

(assert (=> d!471386 (= res!706717 (= (list!6744 lt!557120) (Cons!17405 (h!22806 (t!143960 tokens!457)) Nil!17405)))))

(assert (=> d!471386 (= lt!557120 (singleton!580 (h!22806 (t!143960 tokens!457))))))

(assert (=> d!471386 (= (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) lt!557120)))

(declare-fun b!1584777 () Bool)

(assert (=> b!1584777 (= e!1017940 (isBalanced!1700 (c!256549 lt!557120)))))

(assert (= (and d!471386 res!706717) b!1584777))

(declare-fun m!1872773 () Bool)

(assert (=> d!471386 m!1872773))

(declare-fun m!1872775 () Bool)

(assert (=> d!471386 m!1872775))

(declare-fun m!1872777 () Bool)

(assert (=> b!1584777 m!1872777))

(assert (=> b!1583531 d!471386))

(declare-fun d!471390 () Bool)

(declare-fun lt!557121 () BalanceConc!11508)

(assert (=> d!471390 (= (list!6743 lt!557121) (printList!811 thiss!17113 (list!6744 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471390 (= lt!557121 (printTailRec!749 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!471390 (= (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457)))) lt!557121)))

(declare-fun bs!391301 () Bool)

(assert (= bs!391301 d!471390))

(declare-fun m!1872779 () Bool)

(assert (=> bs!391301 m!1872779))

(assert (=> bs!391301 m!1870377))

(assert (=> bs!391301 m!1872263))

(assert (=> bs!391301 m!1872263))

(declare-fun m!1872781 () Bool)

(assert (=> bs!391301 m!1872781))

(assert (=> bs!391301 m!1870377))

(assert (=> bs!391301 m!1870379))

(assert (=> b!1583531 d!471390))

(declare-fun d!471392 () Bool)

(declare-fun lt!557122 () BalanceConc!11508)

(assert (=> d!471392 (= (list!6743 lt!557122) (originalCharacters!3881 (h!22806 (t!143960 (t!143960 tokens!457)))))))

(assert (=> d!471392 (= lt!557122 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (value!97082 (h!22806 (t!143960 (t!143960 tokens!457))))))))

(assert (=> d!471392 (= (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) lt!557122)))

(declare-fun b_lambda!49867 () Bool)

(assert (=> (not b_lambda!49867) (not d!471392)))

(declare-fun t!144078 () Bool)

(declare-fun tb!89167 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))))) t!144078) tb!89167))

(declare-fun b!1584778 () Bool)

(declare-fun e!1017941 () Bool)

(declare-fun tp!466009 () Bool)

(assert (=> b!1584778 (= e!1017941 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (value!97082 (h!22806 (t!143960 (t!143960 tokens!457))))))) tp!466009))))

(declare-fun result!107928 () Bool)

(assert (=> tb!89167 (= result!107928 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (value!97082 (h!22806 (t!143960 (t!143960 tokens!457)))))) e!1017941))))

(assert (= tb!89167 b!1584778))

(declare-fun m!1872783 () Bool)

(assert (=> b!1584778 m!1872783))

(declare-fun m!1872785 () Bool)

(assert (=> tb!89167 m!1872785))

(assert (=> d!471392 t!144078))

(declare-fun b_and!111101 () Bool)

(assert (= b_and!111077 (and (=> t!144078 result!107928) b_and!111101)))

(declare-fun t!144080 () Bool)

(declare-fun tb!89169 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))))) t!144080) tb!89169))

(declare-fun result!107930 () Bool)

(assert (= result!107930 result!107928))

(assert (=> d!471392 t!144080))

(declare-fun b_and!111103 () Bool)

(assert (= b_and!111079 (and (=> t!144080 result!107930) b_and!111103)))

(declare-fun t!144082 () Bool)

(declare-fun tb!89171 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))))) t!144082) tb!89171))

(declare-fun result!107932 () Bool)

(assert (= result!107932 result!107928))

(assert (=> d!471392 t!144082))

(declare-fun b_and!111105 () Bool)

(assert (= b_and!111081 (and (=> t!144082 result!107932) b_and!111105)))

(declare-fun tb!89173 () Bool)

(declare-fun t!144084 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))))) t!144084) tb!89173))

(declare-fun result!107934 () Bool)

(assert (= result!107934 result!107928))

(assert (=> d!471392 t!144084))

(declare-fun b_and!111107 () Bool)

(assert (= b_and!111083 (and (=> t!144084 result!107934) b_and!111107)))

(declare-fun m!1872789 () Bool)

(assert (=> d!471392 m!1872789))

(declare-fun m!1872791 () Bool)

(assert (=> d!471392 m!1872791))

(assert (=> b!1583531 d!471392))

(declare-fun d!471396 () Bool)

(declare-fun e!1017944 () Bool)

(assert (=> d!471396 e!1017944))

(declare-fun res!706718 () Bool)

(assert (=> d!471396 (=> (not res!706718) (not e!1017944))))

(declare-fun e!1017942 () Bool)

(assert (=> d!471396 (= res!706718 e!1017942)))

(declare-fun c!256866 () Bool)

(declare-fun lt!557123 () tuple2!16884)

(assert (=> d!471396 (= c!256866 (> (size!14004 (_1!9844 lt!557123)) 0))))

(assert (=> d!471396 (= lt!557123 (lexTailRecV2!507 thiss!17113 rules!1846 lt!556243 (BalanceConc!11509 Empty!5782) lt!556243 (BalanceConc!11511 Empty!5783)))))

(assert (=> d!471396 (= (lex!1180 thiss!17113 rules!1846 lt!556243) lt!557123)))

(declare-fun b!1584779 () Bool)

(assert (=> b!1584779 (= e!1017942 (= (_2!9844 lt!557123) lt!556243))))

(declare-fun b!1584780 () Bool)

(assert (=> b!1584780 (= e!1017944 (= (list!6743 (_2!9844 lt!557123)) (_2!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 lt!556243)))))))

(declare-fun b!1584781 () Bool)

(declare-fun e!1017943 () Bool)

(assert (=> b!1584781 (= e!1017942 e!1017943)))

(declare-fun res!706720 () Bool)

(assert (=> b!1584781 (= res!706720 (< (size!14006 (_2!9844 lt!557123)) (size!14006 lt!556243)))))

(assert (=> b!1584781 (=> (not res!706720) (not e!1017943))))

(declare-fun b!1584782 () Bool)

(assert (=> b!1584782 (= e!1017943 (not (isEmpty!10422 (_1!9844 lt!557123))))))

(declare-fun b!1584783 () Bool)

(declare-fun res!706719 () Bool)

(assert (=> b!1584783 (=> (not res!706719) (not e!1017944))))

(assert (=> b!1584783 (= res!706719 (= (list!6744 (_1!9844 lt!557123)) (_1!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 lt!556243)))))))

(assert (= (and d!471396 c!256866) b!1584781))

(assert (= (and d!471396 (not c!256866)) b!1584779))

(assert (= (and b!1584781 res!706720) b!1584782))

(assert (= (and d!471396 res!706718) b!1584783))

(assert (= (and b!1584783 res!706719) b!1584780))

(declare-fun m!1872793 () Bool)

(assert (=> b!1584783 m!1872793))

(assert (=> b!1584783 m!1870361))

(assert (=> b!1584783 m!1870361))

(declare-fun m!1872797 () Bool)

(assert (=> b!1584783 m!1872797))

(declare-fun m!1872799 () Bool)

(assert (=> b!1584782 m!1872799))

(declare-fun m!1872801 () Bool)

(assert (=> b!1584781 m!1872801))

(declare-fun m!1872803 () Bool)

(assert (=> b!1584781 m!1872803))

(declare-fun m!1872805 () Bool)

(assert (=> d!471396 m!1872805))

(declare-fun m!1872809 () Bool)

(assert (=> d!471396 m!1872809))

(declare-fun m!1872811 () Bool)

(assert (=> b!1584780 m!1872811))

(assert (=> b!1584780 m!1870361))

(assert (=> b!1584780 m!1870361))

(assert (=> b!1584780 m!1872797))

(assert (=> b!1583531 d!471396))

(declare-fun b!1584788 () Bool)

(declare-fun e!1017949 () Option!3128)

(declare-fun lt!557126 () Option!3128)

(declare-fun lt!557127 () Option!3128)

(assert (=> b!1584788 (= e!1017949 (ite (and ((_ is None!3127) lt!557126) ((_ is None!3127) lt!557127)) None!3127 (ite ((_ is None!3127) lt!557127) lt!557126 (ite ((_ is None!3127) lt!557126) lt!557127 (ite (>= (size!14000 (_1!9845 (v!23986 lt!557126))) (size!14000 (_1!9845 (v!23986 lt!557127)))) lt!557126 lt!557127)))))))

(declare-fun call!102882 () Option!3128)

(assert (=> b!1584788 (= lt!557126 call!102882)))

(assert (=> b!1584788 (= lt!557127 (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) (list!6743 lt!556239)))))

(declare-fun b!1584789 () Bool)

(declare-fun e!1017948 () Bool)

(declare-fun lt!557129 () Option!3128)

(assert (=> b!1584789 (= e!1017948 (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!557129)))))))

(declare-fun b!1584790 () Bool)

(declare-fun res!706727 () Bool)

(assert (=> b!1584790 (=> (not res!706727) (not e!1017948))))

(assert (=> b!1584790 (= res!706727 (= (value!97082 (_1!9845 (get!4978 lt!557129))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!557129)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!557129)))))))))

(declare-fun d!471404 () Bool)

(declare-fun e!1017950 () Bool)

(assert (=> d!471404 e!1017950))

(declare-fun res!706728 () Bool)

(assert (=> d!471404 (=> res!706728 e!1017950)))

(assert (=> d!471404 (= res!706728 (isEmpty!10427 lt!557129))))

(assert (=> d!471404 (= lt!557129 e!1017949)))

(declare-fun c!256867 () Bool)

(assert (=> d!471404 (= c!256867 (and ((_ is Cons!17406) rules!1846) ((_ is Nil!17406) (t!143961 rules!1846))))))

(declare-fun lt!557128 () Unit!27203)

(declare-fun lt!557125 () Unit!27203)

(assert (=> d!471404 (= lt!557128 lt!557125)))

(assert (=> d!471404 (isPrefix!1327 (list!6743 lt!556239) (list!6743 lt!556239))))

(assert (=> d!471404 (= lt!557125 (lemmaIsPrefixRefl!916 (list!6743 lt!556239) (list!6743 lt!556239)))))

(assert (=> d!471404 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!471404 (= (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 lt!556239)) lt!557129)))

(declare-fun b!1584791 () Bool)

(assert (=> b!1584791 (= e!1017949 call!102882)))

(declare-fun b!1584792 () Bool)

(declare-fun res!706726 () Bool)

(assert (=> b!1584792 (=> (not res!706726) (not e!1017948))))

(assert (=> b!1584792 (= res!706726 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557129)))) (_2!9845 (get!4978 lt!557129))) (list!6743 lt!556239)))))

(declare-fun bm!102877 () Bool)

(assert (=> bm!102877 (= call!102882 (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) (list!6743 lt!556239)))))

(declare-fun b!1584793 () Bool)

(declare-fun res!706725 () Bool)

(assert (=> b!1584793 (=> (not res!706725) (not e!1017948))))

(assert (=> b!1584793 (= res!706725 (< (size!14005 (_2!9845 (get!4978 lt!557129))) (size!14005 (list!6743 lt!556239))))))

(declare-fun b!1584794 () Bool)

(declare-fun res!706730 () Bool)

(assert (=> b!1584794 (=> (not res!706730) (not e!1017948))))

(assert (=> b!1584794 (= res!706730 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557129)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!557129)))))))

(declare-fun b!1584795 () Bool)

(assert (=> b!1584795 (= e!1017950 e!1017948)))

(declare-fun res!706729 () Bool)

(assert (=> b!1584795 (=> (not res!706729) (not e!1017948))))

(assert (=> b!1584795 (= res!706729 (isDefined!2505 lt!557129))))

(declare-fun b!1584796 () Bool)

(declare-fun res!706731 () Bool)

(assert (=> b!1584796 (=> (not res!706731) (not e!1017948))))

(assert (=> b!1584796 (= res!706731 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!557129)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557129))))))))

(assert (= (and d!471404 c!256867) b!1584791))

(assert (= (and d!471404 (not c!256867)) b!1584788))

(assert (= (or b!1584791 b!1584788) bm!102877))

(assert (= (and d!471404 (not res!706728)) b!1584795))

(assert (= (and b!1584795 res!706729) b!1584794))

(assert (= (and b!1584794 res!706730) b!1584793))

(assert (= (and b!1584793 res!706725) b!1584792))

(assert (= (and b!1584792 res!706726) b!1584790))

(assert (= (and b!1584790 res!706727) b!1584796))

(assert (= (and b!1584796 res!706731) b!1584789))

(assert (=> bm!102877 m!1870389))

(declare-fun m!1872819 () Bool)

(assert (=> bm!102877 m!1872819))

(declare-fun m!1872821 () Bool)

(assert (=> b!1584790 m!1872821))

(declare-fun m!1872823 () Bool)

(assert (=> b!1584790 m!1872823))

(assert (=> b!1584790 m!1872823))

(declare-fun m!1872825 () Bool)

(assert (=> b!1584790 m!1872825))

(declare-fun m!1872827 () Bool)

(assert (=> d!471404 m!1872827))

(assert (=> d!471404 m!1870389))

(assert (=> d!471404 m!1870389))

(declare-fun m!1872829 () Bool)

(assert (=> d!471404 m!1872829))

(assert (=> d!471404 m!1870389))

(assert (=> d!471404 m!1870389))

(declare-fun m!1872831 () Bool)

(assert (=> d!471404 m!1872831))

(assert (=> d!471404 m!1870111))

(assert (=> b!1584793 m!1872821))

(declare-fun m!1872833 () Bool)

(assert (=> b!1584793 m!1872833))

(assert (=> b!1584793 m!1870389))

(declare-fun m!1872835 () Bool)

(assert (=> b!1584793 m!1872835))

(assert (=> b!1584789 m!1872821))

(declare-fun m!1872837 () Bool)

(assert (=> b!1584789 m!1872837))

(assert (=> b!1584796 m!1872821))

(declare-fun m!1872839 () Bool)

(assert (=> b!1584796 m!1872839))

(assert (=> b!1584796 m!1872839))

(declare-fun m!1872841 () Bool)

(assert (=> b!1584796 m!1872841))

(assert (=> b!1584796 m!1872841))

(declare-fun m!1872843 () Bool)

(assert (=> b!1584796 m!1872843))

(assert (=> b!1584788 m!1870389))

(declare-fun m!1872845 () Bool)

(assert (=> b!1584788 m!1872845))

(assert (=> b!1584794 m!1872821))

(assert (=> b!1584794 m!1872839))

(assert (=> b!1584794 m!1872839))

(assert (=> b!1584794 m!1872841))

(assert (=> b!1584792 m!1872821))

(assert (=> b!1584792 m!1872839))

(assert (=> b!1584792 m!1872839))

(assert (=> b!1584792 m!1872841))

(assert (=> b!1584792 m!1872841))

(declare-fun m!1872847 () Bool)

(assert (=> b!1584792 m!1872847))

(declare-fun m!1872849 () Bool)

(assert (=> b!1584795 m!1872849))

(assert (=> b!1583531 d!471404))

(declare-fun d!471408 () Bool)

(assert (=> d!471408 (= (head!3208 (originalCharacters!3881 (h!22806 (t!143960 (t!143960 tokens!457))))) (h!22805 (originalCharacters!3881 (h!22806 (t!143960 (t!143960 tokens!457))))))))

(assert (=> b!1583531 d!471408))

(declare-fun d!471412 () Bool)

(assert (=> d!471412 (= (list!6743 lt!556243) (list!6747 (c!256547 lt!556243)))))

(declare-fun bs!391307 () Bool)

(assert (= bs!391307 d!471412))

(declare-fun m!1872853 () Bool)

(assert (=> bs!391307 m!1872853))

(assert (=> b!1583531 d!471412))

(declare-fun b!1584797 () Bool)

(declare-fun e!1017952 () Option!3128)

(declare-fun lt!557134 () Option!3128)

(declare-fun lt!557135 () Option!3128)

(assert (=> b!1584797 (= e!1017952 (ite (and ((_ is None!3127) lt!557134) ((_ is None!3127) lt!557135)) None!3127 (ite ((_ is None!3127) lt!557135) lt!557134 (ite ((_ is None!3127) lt!557134) lt!557135 (ite (>= (size!14000 (_1!9845 (v!23986 lt!557134))) (size!14000 (_1!9845 (v!23986 lt!557135)))) lt!557134 lt!557135)))))))

(declare-fun call!102883 () Option!3128)

(assert (=> b!1584797 (= lt!557134 call!102883)))

(assert (=> b!1584797 (= lt!557135 (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584798 () Bool)

(declare-fun e!1017951 () Bool)

(declare-fun lt!557137 () Option!3128)

(assert (=> b!1584798 (= e!1017951 (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!557137)))))))

(declare-fun b!1584799 () Bool)

(declare-fun res!706734 () Bool)

(assert (=> b!1584799 (=> (not res!706734) (not e!1017951))))

(assert (=> b!1584799 (= res!706734 (= (value!97082 (_1!9845 (get!4978 lt!557137))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!557137)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!557137)))))))))

(declare-fun d!471414 () Bool)

(declare-fun e!1017953 () Bool)

(assert (=> d!471414 e!1017953))

(declare-fun res!706735 () Bool)

(assert (=> d!471414 (=> res!706735 e!1017953)))

(assert (=> d!471414 (= res!706735 (isEmpty!10427 lt!557137))))

(assert (=> d!471414 (= lt!557137 e!1017952)))

(declare-fun c!256868 () Bool)

(assert (=> d!471414 (= c!256868 (and ((_ is Cons!17406) rules!1846) ((_ is Nil!17406) (t!143961 rules!1846))))))

(declare-fun lt!557136 () Unit!27203)

(declare-fun lt!557133 () Unit!27203)

(assert (=> d!471414 (= lt!557136 lt!557133)))

(assert (=> d!471414 (isPrefix!1327 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471414 (= lt!557133 (lemmaIsPrefixRefl!916 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471414 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!471414 (= (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))) lt!557137)))

(declare-fun b!1584800 () Bool)

(assert (=> b!1584800 (= e!1017952 call!102883)))

(declare-fun b!1584801 () Bool)

(declare-fun res!706733 () Bool)

(assert (=> b!1584801 (=> (not res!706733) (not e!1017951))))

(assert (=> b!1584801 (= res!706733 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557137)))) (_2!9845 (get!4978 lt!557137))) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun bm!102878 () Bool)

(assert (=> bm!102878 (= call!102883 (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584802 () Bool)

(declare-fun res!706732 () Bool)

(assert (=> b!1584802 (=> (not res!706732) (not e!1017951))))

(assert (=> b!1584802 (= res!706732 (< (size!14005 (_2!9845 (get!4978 lt!557137))) (size!14005 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1584803 () Bool)

(declare-fun res!706737 () Bool)

(assert (=> b!1584803 (=> (not res!706737) (not e!1017951))))

(assert (=> b!1584803 (= res!706737 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557137)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!557137)))))))

(declare-fun b!1584804 () Bool)

(assert (=> b!1584804 (= e!1017953 e!1017951)))

(declare-fun res!706736 () Bool)

(assert (=> b!1584804 (=> (not res!706736) (not e!1017951))))

(assert (=> b!1584804 (= res!706736 (isDefined!2505 lt!557137))))

(declare-fun b!1584805 () Bool)

(declare-fun res!706738 () Bool)

(assert (=> b!1584805 (=> (not res!706738) (not e!1017951))))

(assert (=> b!1584805 (= res!706738 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!557137)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557137))))))))

(assert (= (and d!471414 c!256868) b!1584800))

(assert (= (and d!471414 (not c!256868)) b!1584797))

(assert (= (or b!1584800 b!1584797) bm!102878))

(assert (= (and d!471414 (not res!706735)) b!1584804))

(assert (= (and b!1584804 res!706736) b!1584803))

(assert (= (and b!1584803 res!706737) b!1584802))

(assert (= (and b!1584802 res!706732) b!1584801))

(assert (= (and b!1584801 res!706733) b!1584799))

(assert (= (and b!1584799 res!706734) b!1584805))

(assert (= (and b!1584805 res!706738) b!1584798))

(assert (=> bm!102878 m!1870367))

(declare-fun m!1872855 () Bool)

(assert (=> bm!102878 m!1872855))

(declare-fun m!1872857 () Bool)

(assert (=> b!1584799 m!1872857))

(declare-fun m!1872859 () Bool)

(assert (=> b!1584799 m!1872859))

(assert (=> b!1584799 m!1872859))

(declare-fun m!1872861 () Bool)

(assert (=> b!1584799 m!1872861))

(declare-fun m!1872863 () Bool)

(assert (=> d!471414 m!1872863))

(assert (=> d!471414 m!1870367))

(assert (=> d!471414 m!1870367))

(declare-fun m!1872865 () Bool)

(assert (=> d!471414 m!1872865))

(assert (=> d!471414 m!1870367))

(assert (=> d!471414 m!1870367))

(declare-fun m!1872867 () Bool)

(assert (=> d!471414 m!1872867))

(assert (=> d!471414 m!1870111))

(assert (=> b!1584802 m!1872857))

(declare-fun m!1872869 () Bool)

(assert (=> b!1584802 m!1872869))

(assert (=> b!1584802 m!1870367))

(assert (=> b!1584802 m!1871597))

(assert (=> b!1584798 m!1872857))

(declare-fun m!1872871 () Bool)

(assert (=> b!1584798 m!1872871))

(assert (=> b!1584805 m!1872857))

(declare-fun m!1872873 () Bool)

(assert (=> b!1584805 m!1872873))

(assert (=> b!1584805 m!1872873))

(declare-fun m!1872875 () Bool)

(assert (=> b!1584805 m!1872875))

(assert (=> b!1584805 m!1872875))

(declare-fun m!1872877 () Bool)

(assert (=> b!1584805 m!1872877))

(assert (=> b!1584797 m!1870367))

(declare-fun m!1872879 () Bool)

(assert (=> b!1584797 m!1872879))

(assert (=> b!1584803 m!1872857))

(assert (=> b!1584803 m!1872873))

(assert (=> b!1584803 m!1872873))

(assert (=> b!1584803 m!1872875))

(assert (=> b!1584801 m!1872857))

(assert (=> b!1584801 m!1872873))

(assert (=> b!1584801 m!1872873))

(assert (=> b!1584801 m!1872875))

(assert (=> b!1584801 m!1872875))

(declare-fun m!1872881 () Bool)

(assert (=> b!1584801 m!1872881))

(declare-fun m!1872883 () Bool)

(assert (=> b!1584804 m!1872883))

(assert (=> b!1583531 d!471414))

(declare-fun d!471416 () Bool)

(assert (=> d!471416 (= (list!6743 lt!556239) (list!6747 (c!256547 lt!556239)))))

(declare-fun bs!391308 () Bool)

(assert (= bs!391308 d!471416))

(declare-fun m!1872885 () Bool)

(assert (=> bs!391308 m!1872885))

(assert (=> b!1583531 d!471416))

(declare-fun d!471418 () Bool)

(assert (=> d!471418 (= (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))) (not (isEmpty!10427 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))))

(declare-fun bs!391309 () Bool)

(assert (= bs!391309 d!471418))

(assert (=> bs!391309 m!1870381))

(declare-fun m!1872887 () Bool)

(assert (=> bs!391309 m!1872887))

(assert (=> b!1583531 d!471418))

(declare-fun d!471420 () Bool)

(declare-fun e!1017959 () Bool)

(assert (=> d!471420 e!1017959))

(declare-fun res!706743 () Bool)

(assert (=> d!471420 (=> (not res!706743) (not e!1017959))))

(assert (=> d!471420 (= res!706743 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 tokens!457))))))) (t!143960 (t!143960 tokens!457))))))

(declare-fun lt!557153 () Unit!27203)

(declare-fun e!1017958 () Unit!27203)

(assert (=> d!471420 (= lt!557153 e!1017958)))

(declare-fun c!256869 () Bool)

(assert (=> d!471420 (= c!256869 (or ((_ is Nil!17405) (t!143960 (t!143960 tokens!457))) ((_ is Nil!17405) (t!143960 (t!143960 (t!143960 tokens!457))))))))

(assert (=> d!471420 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471420 (= (theoremInvertabilityWhenTokenListSeparable!141 thiss!17113 rules!1846 (t!143960 (t!143960 tokens!457))) lt!557153)))

(declare-fun b!1584810 () Bool)

(declare-fun Unit!27258 () Unit!27203)

(assert (=> b!1584810 (= e!1017958 Unit!27258)))

(declare-fun b!1584811 () Bool)

(declare-fun Unit!27259 () Unit!27203)

(assert (=> b!1584811 (= e!1017958 Unit!27259)))

(declare-fun lt!557159 () BalanceConc!11508)

(assert (=> b!1584811 (= lt!557159 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))))))

(declare-fun lt!557163 () BalanceConc!11508)

(assert (=> b!1584811 (= lt!557163 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557146 () tuple2!16884)

(assert (=> b!1584811 (= lt!557146 (lex!1180 thiss!17113 rules!1846 lt!557163))))

(declare-fun lt!557152 () List!17474)

(assert (=> b!1584811 (= lt!557152 (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557155 () List!17474)

(assert (=> b!1584811 (= lt!557155 (list!6743 lt!557163))))

(declare-fun lt!557157 () Unit!27203)

(assert (=> b!1584811 (= lt!557157 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!557152 lt!557155))))

(assert (=> b!1584811 (isPrefix!1327 lt!557152 (++!4529 lt!557152 lt!557155))))

(declare-fun lt!557164 () Unit!27203)

(assert (=> b!1584811 (= lt!557164 lt!557157)))

(declare-fun lt!557149 () Unit!27203)

(assert (=> b!1584811 (= lt!557149 (theoremInvertabilityWhenTokenListSeparable!141 thiss!17113 rules!1846 (t!143960 (t!143960 (t!143960 tokens!457)))))))

(declare-fun lt!557154 () Unit!27203)

(assert (=> b!1584811 (= lt!557154 (seqFromListBHdTlConstructive!144 (h!22806 (t!143960 (t!143960 (t!143960 tokens!457)))) (t!143960 (t!143960 (t!143960 (t!143960 tokens!457)))) (_1!9844 lt!557146)))))

(assert (=> b!1584811 (= (list!6744 (_1!9844 lt!557146)) (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 (t!143960 tokens!457))))) (h!22806 (t!143960 (t!143960 (t!143960 tokens!457)))))))))

(declare-fun lt!557147 () Unit!27203)

(assert (=> b!1584811 (= lt!557147 lt!557154)))

(declare-fun lt!557151 () Option!3128)

(assert (=> b!1584811 (= lt!557151 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 lt!557159)))))

(assert (=> b!1584811 (= (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 (t!143960 tokens!457))))) (printTailRec!749 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 (t!143960 tokens!457)))) 0 (BalanceConc!11509 Empty!5782)))))

(declare-fun lt!557140 () Unit!27203)

(declare-fun Unit!27260 () Unit!27203)

(assert (=> b!1584811 (= lt!557140 Unit!27260)))

(declare-fun lt!557144 () Unit!27203)

(assert (=> b!1584811 (= lt!557144 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457))))) (list!6743 lt!557163)))))

(assert (=> b!1584811 (= (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457))))) (originalCharacters!3881 (h!22806 (t!143960 (t!143960 tokens!457)))))))

(declare-fun lt!557156 () Unit!27203)

(declare-fun Unit!27261 () Unit!27203)

(assert (=> b!1584811 (= lt!557156 Unit!27261)))

(assert (=> b!1584811 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 (t!143960 tokens!457))))) 0))) (Cons!17404 (head!3208 (originalCharacters!3881 (h!22806 (t!143960 (t!143960 (t!143960 tokens!457)))))) Nil!17404))))

(declare-fun lt!557158 () Unit!27203)

(declare-fun Unit!27262 () Unit!27203)

(assert (=> b!1584811 (= lt!557158 Unit!27262)))

(assert (=> b!1584811 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 (t!143960 tokens!457))))) 0))) (Cons!17404 (head!3208 (list!6743 lt!557163)) Nil!17404))))

(declare-fun lt!557165 () Unit!27203)

(declare-fun Unit!27263 () Unit!27203)

(assert (=> b!1584811 (= lt!557165 Unit!27263)))

(assert (=> b!1584811 (= (list!6743 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 (t!143960 tokens!457))))) 0))) (Cons!17404 (head!3209 lt!557163) Nil!17404))))

(declare-fun lt!557142 () Unit!27203)

(declare-fun Unit!27264 () Unit!27203)

(assert (=> b!1584811 (= lt!557142 Unit!27264)))

(assert (=> b!1584811 (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (originalCharacters!3881 (h!22806 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557162 () Unit!27203)

(declare-fun Unit!27265 () Unit!27203)

(assert (=> b!1584811 (= lt!557162 Unit!27265)))

(assert (=> b!1584811 (isDefined!2505 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))))))))

(declare-fun lt!557150 () Unit!27203)

(declare-fun Unit!27266 () Unit!27203)

(assert (=> b!1584811 (= lt!557150 Unit!27266)))

(declare-fun lt!557161 () Unit!27203)

(declare-fun Unit!27267 () Unit!27203)

(assert (=> b!1584811 (= lt!557161 Unit!27267)))

(assert (=> b!1584811 (= (_1!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))))))) (h!22806 (t!143960 (t!143960 tokens!457))))))

(declare-fun lt!557141 () Unit!27203)

(declare-fun Unit!27268 () Unit!27203)

(assert (=> b!1584811 (= lt!557141 Unit!27268)))

(assert (=> b!1584811 (isEmpty!10432 (_2!9845 (get!4978 (maxPrefix!1260 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))))))))))

(declare-fun lt!557148 () Unit!27203)

(declare-fun Unit!27269 () Unit!27203)

(assert (=> b!1584811 (= lt!557148 Unit!27269)))

(assert (=> b!1584811 (matchR!1916 (regex!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))) (list!6743 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557145 () Unit!27203)

(declare-fun Unit!27270 () Unit!27203)

(assert (=> b!1584811 (= lt!557145 Unit!27270)))

(assert (=> b!1584811 (= (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))) (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))))

(declare-fun lt!557160 () Unit!27203)

(declare-fun Unit!27271 () Unit!27203)

(assert (=> b!1584811 (= lt!557160 Unit!27271)))

(declare-fun lt!557143 () Unit!27203)

(assert (=> b!1584811 (= lt!557143 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!66 thiss!17113 rules!1846 (h!22806 (t!143960 (t!143960 tokens!457))) (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))) (list!6743 lt!557163)))))

(declare-fun b!1584812 () Bool)

(assert (=> b!1584812 (= e!1017959 (isEmpty!10433 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (seqFromList!1883 (t!143960 (t!143960 tokens!457))))))))))

(assert (= (and d!471420 c!256869) b!1584810))

(assert (= (and d!471420 (not c!256869)) b!1584811))

(assert (= (and d!471420 res!706743) b!1584812))

(declare-fun m!1872893 () Bool)

(assert (=> d!471420 m!1872893))

(assert (=> d!471420 m!1870417))

(declare-fun m!1872895 () Bool)

(assert (=> d!471420 m!1872895))

(assert (=> d!471420 m!1869853))

(assert (=> d!471420 m!1869943))

(assert (=> d!471420 m!1869943))

(assert (=> d!471420 m!1870417))

(declare-fun m!1872897 () Bool)

(assert (=> b!1584811 m!1872897))

(declare-fun m!1872899 () Bool)

(assert (=> b!1584811 m!1872899))

(declare-fun m!1872901 () Bool)

(assert (=> b!1584811 m!1872901))

(declare-fun m!1872903 () Bool)

(assert (=> b!1584811 m!1872903))

(assert (=> b!1584811 m!1870409))

(assert (=> b!1584811 m!1872639))

(declare-fun m!1872907 () Bool)

(assert (=> b!1584811 m!1872907))

(declare-fun m!1872909 () Bool)

(assert (=> b!1584811 m!1872909))

(assert (=> b!1584811 m!1872639))

(assert (=> b!1584811 m!1872899))

(declare-fun m!1872911 () Bool)

(assert (=> b!1584811 m!1872911))

(assert (=> b!1584811 m!1872639))

(declare-fun m!1872913 () Bool)

(assert (=> b!1584811 m!1872913))

(declare-fun m!1872915 () Bool)

(assert (=> b!1584811 m!1872915))

(declare-fun m!1872917 () Bool)

(assert (=> b!1584811 m!1872917))

(assert (=> b!1584811 m!1872639))

(declare-fun m!1872919 () Bool)

(assert (=> b!1584811 m!1872919))

(declare-fun m!1872921 () Bool)

(assert (=> b!1584811 m!1872921))

(declare-fun m!1872923 () Bool)

(assert (=> b!1584811 m!1872923))

(assert (=> b!1584811 m!1872915))

(declare-fun m!1872925 () Bool)

(assert (=> b!1584811 m!1872925))

(assert (=> b!1584811 m!1872907))

(declare-fun m!1872927 () Bool)

(assert (=> b!1584811 m!1872927))

(declare-fun m!1872929 () Bool)

(assert (=> b!1584811 m!1872929))

(assert (=> b!1584811 m!1872899))

(declare-fun m!1872931 () Bool)

(assert (=> b!1584811 m!1872931))

(declare-fun m!1872933 () Bool)

(assert (=> b!1584811 m!1872933))

(declare-fun m!1872935 () Bool)

(assert (=> b!1584811 m!1872935))

(declare-fun m!1872937 () Bool)

(assert (=> b!1584811 m!1872937))

(declare-fun m!1872939 () Bool)

(assert (=> b!1584811 m!1872939))

(assert (=> b!1584811 m!1872919))

(declare-fun m!1872941 () Bool)

(assert (=> b!1584811 m!1872941))

(declare-fun m!1872943 () Bool)

(assert (=> b!1584811 m!1872943))

(assert (=> b!1584811 m!1872937))

(declare-fun m!1872945 () Bool)

(assert (=> b!1584811 m!1872945))

(declare-fun m!1872947 () Bool)

(assert (=> b!1584811 m!1872947))

(assert (=> b!1584811 m!1872935))

(declare-fun m!1872949 () Bool)

(assert (=> b!1584811 m!1872949))

(assert (=> b!1584811 m!1872899))

(assert (=> b!1584811 m!1870409))

(assert (=> b!1584811 m!1872949))

(assert (=> b!1584811 m!1872921))

(assert (=> b!1584811 m!1872919))

(declare-fun m!1872951 () Bool)

(assert (=> b!1584811 m!1872951))

(assert (=> b!1584811 m!1872947))

(declare-fun m!1872953 () Bool)

(assert (=> b!1584811 m!1872953))

(assert (=> b!1584811 m!1870411))

(declare-fun m!1872955 () Bool)

(assert (=> b!1584811 m!1872955))

(assert (=> b!1584811 m!1870411))

(declare-fun m!1872957 () Bool)

(assert (=> b!1584811 m!1872957))

(declare-fun m!1872959 () Bool)

(assert (=> b!1584811 m!1872959))

(assert (=> b!1584811 m!1869943))

(assert (=> b!1584811 m!1872897))

(declare-fun m!1872961 () Bool)

(assert (=> b!1584811 m!1872961))

(assert (=> b!1584811 m!1869943))

(assert (=> b!1584811 m!1870417))

(assert (=> b!1584811 m!1872927))

(assert (=> b!1584811 m!1872915))

(declare-fun m!1872963 () Bool)

(assert (=> b!1584811 m!1872963))

(assert (=> b!1584812 m!1869943))

(assert (=> b!1584812 m!1869943))

(assert (=> b!1584812 m!1870417))

(assert (=> b!1584812 m!1870417))

(assert (=> b!1584812 m!1872895))

(declare-fun m!1872971 () Bool)

(assert (=> b!1584812 m!1872971))

(assert (=> b!1583531 d!471420))

(declare-fun d!471426 () Bool)

(declare-fun lt!557174 () BalanceConc!11508)

(assert (=> d!471426 (= (list!6743 lt!557174) (printListTailRec!311 thiss!17113 (dropList!518 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) 0) (list!6743 (BalanceConc!11509 Empty!5782))))))

(declare-fun e!1017967 () BalanceConc!11508)

(assert (=> d!471426 (= lt!557174 e!1017967)))

(declare-fun c!256871 () Bool)

(assert (=> d!471426 (= c!256871 (>= 0 (size!14004 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))))

(declare-fun e!1017966 () Bool)

(assert (=> d!471426 e!1017966))

(declare-fun res!706753 () Bool)

(assert (=> d!471426 (=> (not res!706753) (not e!1017966))))

(assert (=> d!471426 (= res!706753 (>= 0 0))))

(assert (=> d!471426 (= (printTailRec!749 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) 0 (BalanceConc!11509 Empty!5782)) lt!557174)))

(declare-fun b!1584826 () Bool)

(assert (=> b!1584826 (= e!1017966 (<= 0 (size!14004 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584827 () Bool)

(assert (=> b!1584827 (= e!1017967 (BalanceConc!11509 Empty!5782))))

(declare-fun b!1584828 () Bool)

(assert (=> b!1584828 (= e!1017967 (printTailRec!749 thiss!17113 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) (+ 0 1) (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 (singletonSeq!1412 (h!22806 (t!143960 tokens!457))) 0)))))))

(declare-fun lt!557176 () List!17475)

(assert (=> b!1584828 (= lt!557176 (list!6744 (singletonSeq!1412 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!557173 () Unit!27203)

(assert (=> b!1584828 (= lt!557173 (lemmaDropApply!518 lt!557176 0))))

(assert (=> b!1584828 (= (head!3205 (drop!820 lt!557176 0)) (apply!4241 lt!557176 0))))

(declare-fun lt!557177 () Unit!27203)

(assert (=> b!1584828 (= lt!557177 lt!557173)))

(declare-fun lt!557172 () List!17475)

(assert (=> b!1584828 (= lt!557172 (list!6744 (singletonSeq!1412 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!557178 () Unit!27203)

(assert (=> b!1584828 (= lt!557178 (lemmaDropTail!498 lt!557172 0))))

(assert (=> b!1584828 (= (tail!2264 (drop!820 lt!557172 0)) (drop!820 lt!557172 (+ 0 1)))))

(declare-fun lt!557175 () Unit!27203)

(assert (=> b!1584828 (= lt!557175 lt!557178)))

(assert (= (and d!471426 res!706753) b!1584826))

(assert (= (and d!471426 c!256871) b!1584827))

(assert (= (and d!471426 (not c!256871)) b!1584828))

(declare-fun m!1873003 () Bool)

(assert (=> d!471426 m!1873003))

(assert (=> d!471426 m!1870017))

(declare-fun m!1873005 () Bool)

(assert (=> d!471426 m!1873005))

(assert (=> d!471426 m!1870017))

(declare-fun m!1873007 () Bool)

(assert (=> d!471426 m!1873007))

(assert (=> d!471426 m!1870377))

(declare-fun m!1873009 () Bool)

(assert (=> d!471426 m!1873009))

(assert (=> d!471426 m!1870377))

(assert (=> d!471426 m!1873003))

(assert (=> b!1584826 m!1870377))

(assert (=> b!1584826 m!1873009))

(declare-fun m!1873015 () Bool)

(assert (=> b!1584828 m!1873015))

(declare-fun m!1873017 () Bool)

(assert (=> b!1584828 m!1873017))

(declare-fun m!1873019 () Bool)

(assert (=> b!1584828 m!1873019))

(declare-fun m!1873021 () Bool)

(assert (=> b!1584828 m!1873021))

(declare-fun m!1873023 () Bool)

(assert (=> b!1584828 m!1873023))

(assert (=> b!1584828 m!1870377))

(assert (=> b!1584828 m!1872263))

(assert (=> b!1584828 m!1873015))

(declare-fun m!1873025 () Bool)

(assert (=> b!1584828 m!1873025))

(assert (=> b!1584828 m!1870377))

(assert (=> b!1584828 m!1873021))

(declare-fun m!1873027 () Bool)

(assert (=> b!1584828 m!1873027))

(assert (=> b!1584828 m!1870377))

(declare-fun m!1873029 () Bool)

(assert (=> b!1584828 m!1873029))

(declare-fun m!1873031 () Bool)

(assert (=> b!1584828 m!1873031))

(declare-fun m!1873033 () Bool)

(assert (=> b!1584828 m!1873033))

(declare-fun m!1873035 () Bool)

(assert (=> b!1584828 m!1873035))

(assert (=> b!1584828 m!1873029))

(assert (=> b!1584828 m!1873019))

(declare-fun m!1873037 () Bool)

(assert (=> b!1584828 m!1873037))

(assert (=> b!1584828 m!1873031))

(assert (=> b!1583531 d!471426))

(assert (=> b!1583531 d!470982))

(declare-fun d!471430 () Bool)

(assert (=> d!471430 (isPrefix!1327 lt!556232 (++!4529 lt!556232 lt!556235))))

(declare-fun lt!557179 () Unit!27203)

(assert (=> d!471430 (= lt!557179 (choose!9475 lt!556232 lt!556235))))

(assert (=> d!471430 (= (lemmaConcatTwoListThenFirstIsPrefix!852 lt!556232 lt!556235) lt!557179)))

(declare-fun bs!391311 () Bool)

(assert (= bs!391311 d!471430))

(assert (=> bs!391311 m!1870359))

(assert (=> bs!391311 m!1870359))

(assert (=> bs!391311 m!1870423))

(declare-fun m!1873039 () Bool)

(assert (=> bs!391311 m!1873039))

(assert (=> b!1583531 d!471430))

(declare-fun b!1584830 () Bool)

(declare-fun e!1017970 () Option!3128)

(declare-fun lt!557182 () Option!3128)

(declare-fun lt!557183 () Option!3128)

(assert (=> b!1584830 (= e!1017970 (ite (and ((_ is None!3127) lt!557182) ((_ is None!3127) lt!557183)) None!3127 (ite ((_ is None!3127) lt!557183) lt!557182 (ite ((_ is None!3127) lt!557182) lt!557183 (ite (>= (size!14000 (_1!9845 (v!23986 lt!557182))) (size!14000 (_1!9845 (v!23986 lt!557183)))) lt!557182 lt!557183)))))))

(declare-fun call!102884 () Option!3128)

(assert (=> b!1584830 (= lt!557182 call!102884)))

(assert (=> b!1584830 (= lt!557183 (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))))))

(declare-fun b!1584831 () Bool)

(declare-fun e!1017969 () Bool)

(declare-fun lt!557185 () Option!3128)

(assert (=> b!1584831 (= e!1017969 (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!557185)))))))

(declare-fun b!1584832 () Bool)

(declare-fun res!706757 () Bool)

(assert (=> b!1584832 (=> (not res!706757) (not e!1017969))))

(assert (=> b!1584832 (= res!706757 (= (value!97082 (_1!9845 (get!4978 lt!557185))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!557185)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!557185)))))))))

(declare-fun d!471434 () Bool)

(declare-fun e!1017971 () Bool)

(assert (=> d!471434 e!1017971))

(declare-fun res!706758 () Bool)

(assert (=> d!471434 (=> res!706758 e!1017971)))

(assert (=> d!471434 (= res!706758 (isEmpty!10427 lt!557185))))

(assert (=> d!471434 (= lt!557185 e!1017970)))

(declare-fun c!256872 () Bool)

(assert (=> d!471434 (= c!256872 (and ((_ is Cons!17406) rules!1846) ((_ is Nil!17406) (t!143961 rules!1846))))))

(declare-fun lt!557184 () Unit!27203)

(declare-fun lt!557181 () Unit!27203)

(assert (=> d!471434 (= lt!557184 lt!557181)))

(assert (=> d!471434 (isPrefix!1327 (originalCharacters!3881 (h!22806 (t!143960 tokens!457))) (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))))

(assert (=> d!471434 (= lt!557181 (lemmaIsPrefixRefl!916 (originalCharacters!3881 (h!22806 (t!143960 tokens!457))) (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471434 (rulesValidInductive!918 thiss!17113 rules!1846)))

(assert (=> d!471434 (= (maxPrefix!1260 thiss!17113 rules!1846 (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))) lt!557185)))

(declare-fun b!1584833 () Bool)

(assert (=> b!1584833 (= e!1017970 call!102884)))

(declare-fun b!1584834 () Bool)

(declare-fun res!706756 () Bool)

(assert (=> b!1584834 (=> (not res!706756) (not e!1017969))))

(assert (=> b!1584834 (= res!706756 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557185)))) (_2!9845 (get!4978 lt!557185))) (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))))))

(declare-fun bm!102879 () Bool)

(assert (=> bm!102879 (= call!102884 (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) (originalCharacters!3881 (h!22806 (t!143960 tokens!457)))))))

(declare-fun b!1584835 () Bool)

(declare-fun res!706755 () Bool)

(assert (=> b!1584835 (=> (not res!706755) (not e!1017969))))

(assert (=> b!1584835 (= res!706755 (< (size!14005 (_2!9845 (get!4978 lt!557185))) (size!14005 (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584836 () Bool)

(declare-fun res!706760 () Bool)

(assert (=> b!1584836 (=> (not res!706760) (not e!1017969))))

(assert (=> b!1584836 (= res!706760 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557185)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!557185)))))))

(declare-fun b!1584837 () Bool)

(assert (=> b!1584837 (= e!1017971 e!1017969)))

(declare-fun res!706759 () Bool)

(assert (=> b!1584837 (=> (not res!706759) (not e!1017969))))

(assert (=> b!1584837 (= res!706759 (isDefined!2505 lt!557185))))

(declare-fun b!1584838 () Bool)

(declare-fun res!706761 () Bool)

(assert (=> b!1584838 (=> (not res!706761) (not e!1017969))))

(assert (=> b!1584838 (= res!706761 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!557185)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557185))))))))

(assert (= (and d!471434 c!256872) b!1584833))

(assert (= (and d!471434 (not c!256872)) b!1584830))

(assert (= (or b!1584833 b!1584830) bm!102879))

(assert (= (and d!471434 (not res!706758)) b!1584837))

(assert (= (and b!1584837 res!706759) b!1584836))

(assert (= (and b!1584836 res!706760) b!1584835))

(assert (= (and b!1584835 res!706755) b!1584834))

(assert (= (and b!1584834 res!706756) b!1584832))

(assert (= (and b!1584832 res!706757) b!1584838))

(assert (= (and b!1584838 res!706761) b!1584831))

(declare-fun m!1873053 () Bool)

(assert (=> bm!102879 m!1873053))

(declare-fun m!1873055 () Bool)

(assert (=> b!1584832 m!1873055))

(declare-fun m!1873057 () Bool)

(assert (=> b!1584832 m!1873057))

(assert (=> b!1584832 m!1873057))

(declare-fun m!1873059 () Bool)

(assert (=> b!1584832 m!1873059))

(declare-fun m!1873061 () Bool)

(assert (=> d!471434 m!1873061))

(declare-fun m!1873063 () Bool)

(assert (=> d!471434 m!1873063))

(declare-fun m!1873065 () Bool)

(assert (=> d!471434 m!1873065))

(assert (=> d!471434 m!1870111))

(assert (=> b!1584835 m!1873055))

(declare-fun m!1873067 () Bool)

(assert (=> b!1584835 m!1873067))

(assert (=> b!1584835 m!1870991))

(assert (=> b!1584831 m!1873055))

(declare-fun m!1873069 () Bool)

(assert (=> b!1584831 m!1873069))

(assert (=> b!1584838 m!1873055))

(declare-fun m!1873071 () Bool)

(assert (=> b!1584838 m!1873071))

(assert (=> b!1584838 m!1873071))

(declare-fun m!1873073 () Bool)

(assert (=> b!1584838 m!1873073))

(assert (=> b!1584838 m!1873073))

(declare-fun m!1873075 () Bool)

(assert (=> b!1584838 m!1873075))

(declare-fun m!1873077 () Bool)

(assert (=> b!1584830 m!1873077))

(assert (=> b!1584836 m!1873055))

(assert (=> b!1584836 m!1873071))

(assert (=> b!1584836 m!1873071))

(assert (=> b!1584836 m!1873073))

(assert (=> b!1584834 m!1873055))

(assert (=> b!1584834 m!1873071))

(assert (=> b!1584834 m!1873071))

(assert (=> b!1584834 m!1873073))

(assert (=> b!1584834 m!1873073))

(declare-fun m!1873081 () Bool)

(assert (=> b!1584834 m!1873081))

(declare-fun m!1873083 () Bool)

(assert (=> b!1584837 m!1873083))

(assert (=> b!1583531 d!471434))

(declare-fun d!471442 () Bool)

(assert (=> d!471442 (= (head!3208 (list!6743 lt!556243)) (h!22805 (list!6743 lt!556243)))))

(assert (=> b!1583531 d!471442))

(assert (=> b!1583531 d!470932))

(declare-fun b!1584934 () Bool)

(assert (=> b!1584934 false))

(declare-fun lt!557455 () Unit!27203)

(declare-fun lt!557407 () Unit!27203)

(assert (=> b!1584934 (= lt!557455 lt!557407)))

(declare-fun lt!557465 () Token!5700)

(assert (=> b!1584934 (= (rule!4867 lt!557465) (rule!4867 (h!22806 (t!143960 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!35 (List!17476 Rule!5934 Rule!5934) Unit!27203)

(assert (=> b!1584934 (= lt!557407 (lemmaSameIndexThenSameElement!35 rules!1846 (rule!4867 lt!557465) (rule!4867 (h!22806 (t!143960 tokens!457)))))))

(declare-fun e!1018020 () Unit!27203)

(declare-fun Unit!27274 () Unit!27203)

(assert (=> b!1584934 (= e!1018020 Unit!27274)))

(declare-fun b!1584935 () Bool)

(declare-fun e!1018022 () Unit!27203)

(declare-fun Unit!27275 () Unit!27203)

(assert (=> b!1584935 (= e!1018022 Unit!27275)))

(declare-fun lt!557422 () List!17474)

(assert (=> b!1584935 (= lt!557422 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557434 () List!17474)

(assert (=> b!1584935 (= lt!557434 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!557446 () Unit!27203)

(declare-fun lt!557417 () List!17474)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!109 (LexerInterface!2696 List!17476 Rule!5934 List!17474 List!17474 List!17474 Rule!5934) Unit!27203)

(assert (=> b!1584935 (= lt!557446 (lemmaMaxPrefixOutputsMaxPrefix!109 thiss!17113 rules!1846 (rule!4867 lt!557465) lt!557422 lt!557417 lt!557434 (rule!4867 (h!22806 (t!143960 tokens!457)))))))

(assert (=> b!1584935 (not (matchR!1916 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))) lt!557434))))

(declare-fun lt!557408 () Unit!27203)

(assert (=> b!1584935 (= lt!557408 lt!557446)))

(assert (=> b!1584935 false))

(declare-fun b!1584936 () Bool)

(declare-fun e!1018021 () Unit!27203)

(declare-fun Unit!27276 () Unit!27203)

(assert (=> b!1584936 (= e!1018021 Unit!27276)))

(declare-fun c!256898 () Bool)

(declare-fun getIndex!87 (List!17476 Rule!5934) Int)

(assert (=> b!1584936 (= c!256898 (< (getIndex!87 rules!1846 (rule!4867 (h!22806 (t!143960 tokens!457)))) (getIndex!87 rules!1846 (rule!4867 lt!557465))))))

(declare-fun lt!557472 () Unit!27203)

(declare-fun e!1018024 () Unit!27203)

(assert (=> b!1584936 (= lt!557472 e!1018024)))

(declare-fun c!256901 () Bool)

(assert (=> b!1584936 (= c!256901 (< (getIndex!87 rules!1846 (rule!4867 lt!557465)) (getIndex!87 rules!1846 (rule!4867 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!557440 () Unit!27203)

(declare-fun e!1018025 () Unit!27203)

(assert (=> b!1584936 (= lt!557440 e!1018025)))

(declare-fun c!256896 () Bool)

(assert (=> b!1584936 (= c!256896 (= (getIndex!87 rules!1846 (rule!4867 lt!557465)) (getIndex!87 rules!1846 (rule!4867 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!557444 () Unit!27203)

(assert (=> b!1584936 (= lt!557444 e!1018020)))

(assert (=> b!1584936 false))

(declare-fun b!1584937 () Bool)

(declare-fun e!1018023 () Unit!27203)

(declare-fun Unit!27277 () Unit!27203)

(assert (=> b!1584937 (= e!1018023 Unit!27277)))

(declare-fun b!1584938 () Bool)

(declare-fun Unit!27278 () Unit!27203)

(assert (=> b!1584938 (= e!1018024 Unit!27278)))

(declare-fun b!1584939 () Bool)

(declare-fun Unit!27279 () Unit!27203)

(assert (=> b!1584939 (= e!1018023 Unit!27279)))

(declare-fun lt!557462 () Unit!27203)

(declare-fun lt!557431 () List!17474)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!19 (LexerInterface!2696 List!17476 List!17474 Token!5700 Rule!5934 List!17474) Unit!27203)

(assert (=> b!1584939 (= lt!557462 (lemmaMaxPrefixThenMatchesRulesRegex!19 thiss!17113 rules!1846 lt!557417 lt!557465 (rule!4867 lt!557465) lt!557431))))

(assert (=> b!1584939 (matchR!1916 (rulesRegex!457 thiss!17113 rules!1846) (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557429 () Unit!27203)

(assert (=> b!1584939 (= lt!557429 lt!557462)))

(declare-fun lt!557419 () List!17474)

(assert (=> b!1584939 (= lt!557419 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!557477 () List!17474)

(assert (=> b!1584939 (= lt!557477 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!557427 () List!17474)

(declare-fun getSuffix!689 (List!17474 List!17474) List!17474)

(assert (=> b!1584939 (= lt!557427 (getSuffix!689 lt!557417 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!557426 () Unit!27203)

(declare-fun lemmaSamePrefixThenSameSuffix!641 (List!17474 List!17474 List!17474 List!17474 List!17474) Unit!27203)

(assert (=> b!1584939 (= lt!557426 (lemmaSamePrefixThenSameSuffix!641 lt!557419 (list!6743 lt!556243) lt!557477 lt!557427 lt!557417))))

(assert (=> b!1584939 (= (list!6743 lt!556243) lt!557427)))

(declare-fun lt!557432 () Unit!27203)

(assert (=> b!1584939 (= lt!557432 lt!557426)))

(declare-fun lt!557460 () List!17474)

(assert (=> b!1584939 (= lt!557460 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun lt!557471 () Unit!27203)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!132 (List!17474 List!17474) Unit!27203)

(assert (=> b!1584939 (= lt!557471 (lemmaAddHeadSuffixToPrefixStillPrefix!132 lt!557460 lt!557417))))

(assert (=> b!1584939 (isPrefix!1327 (++!4529 lt!557460 (Cons!17404 (head!3208 (getSuffix!689 lt!557417 lt!557460)) Nil!17404)) lt!557417)))

(declare-fun lt!557473 () Unit!27203)

(assert (=> b!1584939 (= lt!557473 lt!557471)))

(declare-fun lt!557464 () List!17474)

(assert (=> b!1584939 (= lt!557464 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557413 () List!17474)

(assert (=> b!1584939 (= lt!557413 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (Cons!17404 (head!3208 (list!6743 lt!556243)) Nil!17404)))))

(declare-fun lt!557467 () Unit!27203)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!19 (List!17474 List!17474 List!17474) Unit!27203)

(assert (=> b!1584939 (= lt!557467 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!19 lt!557464 lt!557413 lt!557417))))

(assert (=> b!1584939 (isPrefix!1327 lt!557413 lt!557464)))

(declare-fun lt!557456 () Unit!27203)

(assert (=> b!1584939 (= lt!557456 lt!557467)))

(declare-fun lt!557433 () Regex!4395)

(assert (=> b!1584939 (= lt!557433 (rulesRegex!457 thiss!17113 rules!1846))))

(declare-fun lt!557425 () List!17474)

(assert (=> b!1584939 (= lt!557425 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (Cons!17404 (head!3208 (list!6743 lt!556243)) Nil!17404)))))

(declare-fun lt!557463 () List!17474)

(assert (=> b!1584939 (= lt!557463 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557466 () Unit!27203)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!20 (Regex!4395 List!17474 List!17474) Unit!27203)

(assert (=> b!1584939 (= lt!557466 (lemmaNotPrefixMatchThenCannotMatchLonger!20 lt!557433 lt!557425 lt!557463))))

(assert (=> b!1584939 (not (matchR!1916 lt!557433 lt!557463))))

(declare-fun lt!557409 () Unit!27203)

(assert (=> b!1584939 (= lt!557409 lt!557466)))

(assert (=> b!1584939 false))

(declare-fun b!1584940 () Bool)

(declare-fun Unit!27280 () Unit!27203)

(assert (=> b!1584940 (= e!1018020 Unit!27280)))

(declare-fun d!471444 () Bool)

(assert (=> d!471444 (= (maxPrefix!1260 thiss!17113 rules!1846 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243))) (Some!3127 (tuple2!16887 (h!22806 (t!143960 tokens!457)) (list!6743 lt!556243))))))

(declare-fun lt!557442 () Unit!27203)

(declare-fun Unit!27281 () Unit!27203)

(assert (=> d!471444 (= lt!557442 Unit!27281)))

(declare-fun lt!557454 () Unit!27203)

(assert (=> d!471444 (= lt!557454 e!1018021)))

(declare-fun c!256899 () Bool)

(assert (=> d!471444 (= c!256899 (not (= (rule!4867 lt!557465) (rule!4867 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!557461 () Unit!27203)

(declare-fun lt!557451 () Unit!27203)

(assert (=> d!471444 (= lt!557461 lt!557451)))

(assert (=> d!471444 (= (list!6743 lt!556243) lt!557431)))

(assert (=> d!471444 (= lt!557451 (lemmaSamePrefixThenSameSuffix!641 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) lt!557431 lt!557417))))

(declare-fun lt!557437 () Unit!27203)

(declare-fun lt!557448 () Unit!27203)

(assert (=> d!471444 (= lt!557437 lt!557448)))

(declare-fun lt!557457 () List!17474)

(declare-fun lt!557474 () List!17474)

(assert (=> d!471444 (= lt!557457 lt!557474)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!143 (List!17474 List!17474 List!17474) Unit!27203)

(assert (=> d!471444 (= lt!557448 (lemmaIsPrefixSameLengthThenSameList!143 lt!557457 lt!557474 lt!557417))))

(assert (=> d!471444 (= lt!557474 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471444 (= lt!557457 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557430 () Unit!27203)

(assert (=> d!471444 (= lt!557430 e!1018022)))

(declare-fun c!256900 () Bool)

(assert (=> d!471444 (= c!256900 (< (size!14006 (charsOf!1716 lt!557465)) (size!14006 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!557418 () Unit!27203)

(assert (=> d!471444 (= lt!557418 e!1018023)))

(declare-fun c!256897 () Bool)

(assert (=> d!471444 (= c!256897 (> (size!14006 (charsOf!1716 lt!557465)) (size!14006 (charsOf!1716 (h!22806 (t!143960 tokens!457))))))))

(declare-fun lt!557416 () Unit!27203)

(declare-fun lt!557438 () Unit!27203)

(assert (=> d!471444 (= lt!557416 lt!557438)))

(assert (=> d!471444 (matchR!1916 (rulesRegex!457 thiss!17113 rules!1846) (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471444 (= lt!557438 (lemmaMaxPrefixThenMatchesRulesRegex!19 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)) (rule!4867 (h!22806 (t!143960 tokens!457))) Nil!17404))))

(declare-fun lt!557450 () Unit!27203)

(declare-fun lt!557443 () Unit!27203)

(assert (=> d!471444 (= lt!557450 lt!557443)))

(declare-fun lt!557445 () List!17474)

(assert (=> d!471444 (= lt!557431 lt!557445)))

(declare-fun lt!557411 () List!17474)

(declare-fun lt!557458 () List!17474)

(assert (=> d!471444 (= lt!557443 (lemmaSamePrefixThenSameSuffix!641 lt!557411 lt!557431 lt!557458 lt!557445 lt!557417))))

(assert (=> d!471444 (= lt!557445 (getSuffix!689 lt!557417 (list!6743 (charsOf!1716 lt!557465))))))

(assert (=> d!471444 (= lt!557458 (list!6743 (charsOf!1716 lt!557465)))))

(assert (=> d!471444 (= lt!557411 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557469 () Unit!27203)

(declare-fun lt!557436 () Unit!27203)

(assert (=> d!471444 (= lt!557469 lt!557436)))

(declare-fun lt!557420 () List!17474)

(assert (=> d!471444 (= (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!557465) lt!557417) (Some!3127 (tuple2!16887 (Token!5701 (apply!4242 (transformation!3067 (rule!4867 lt!557465)) (seqFromList!1884 lt!557420)) (rule!4867 lt!557465) (size!14005 lt!557420) lt!557420) lt!557431)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!209 (LexerInterface!2696 List!17476 List!17474 List!17474 List!17474 Rule!5934) Unit!27203)

(assert (=> d!471444 (= lt!557436 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!209 thiss!17113 rules!1846 lt!557420 lt!557417 lt!557431 (rule!4867 lt!557465)))))

(assert (=> d!471444 (= lt!557420 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557421 () Unit!27203)

(declare-fun lemmaCharactersSize!315 (Token!5700) Unit!27203)

(assert (=> d!471444 (= lt!557421 (lemmaCharactersSize!315 lt!557465))))

(declare-fun lt!557415 () Unit!27203)

(declare-fun lemmaEqSameImage!168 (TokenValueInjection!5974 BalanceConc!11508 BalanceConc!11508) Unit!27203)

(assert (=> d!471444 (= lt!557415 (lemmaEqSameImage!168 (transformation!3067 (rule!4867 lt!557465)) (charsOf!1716 lt!557465) (seqFromList!1884 (originalCharacters!3881 lt!557465))))))

(declare-fun lt!557410 () Unit!27203)

(declare-fun lemmaSemiInverse!384 (TokenValueInjection!5974 BalanceConc!11508) Unit!27203)

(assert (=> d!471444 (= lt!557410 (lemmaSemiInverse!384 (transformation!3067 (rule!4867 lt!557465)) (charsOf!1716 lt!557465)))))

(declare-fun lt!557414 () Unit!27203)

(declare-fun lemmaInv!448 (TokenValueInjection!5974) Unit!27203)

(assert (=> d!471444 (= lt!557414 (lemmaInv!448 (transformation!3067 (rule!4867 lt!557465))))))

(declare-fun lt!557449 () Unit!27203)

(declare-fun lt!557435 () Unit!27203)

(assert (=> d!471444 (= lt!557449 lt!557435)))

(declare-fun lt!557468 () List!17474)

(assert (=> d!471444 (isPrefix!1327 lt!557468 (++!4529 lt!557468 lt!557431))))

(assert (=> d!471444 (= lt!557435 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!557468 lt!557431))))

(assert (=> d!471444 (= lt!557468 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun lt!557439 () Unit!27203)

(declare-fun lt!557475 () Unit!27203)

(assert (=> d!471444 (= lt!557439 lt!557475)))

(declare-fun e!1018019 () Bool)

(assert (=> d!471444 e!1018019))

(declare-fun res!706810 () Bool)

(assert (=> d!471444 (=> (not res!706810) (not e!1018019))))

(assert (=> d!471444 (= res!706810 (isDefined!2507 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!557465)))))))

(assert (=> d!471444 (= lt!557475 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!240 thiss!17113 rules!1846 lt!557417 lt!557465))))

(declare-fun lt!557412 () Option!3128)

(assert (=> d!471444 (= lt!557431 (_2!9845 (get!4978 lt!557412)))))

(assert (=> d!471444 (= lt!557465 (_1!9845 (get!4978 lt!557412)))))

(declare-fun lt!557423 () Unit!27203)

(assert (=> d!471444 (= lt!557423 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!270 thiss!17113 rules!1846 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))

(assert (=> d!471444 (= lt!557412 (maxPrefix!1260 thiss!17113 rules!1846 lt!557417))))

(declare-fun lt!557453 () Unit!27203)

(declare-fun lt!557452 () Unit!27203)

(assert (=> d!471444 (= lt!557453 lt!557452)))

(declare-fun lt!557476 () List!17474)

(assert (=> d!471444 (isPrefix!1327 lt!557476 (++!4529 lt!557476 (list!6743 lt!556243)))))

(assert (=> d!471444 (= lt!557452 (lemmaConcatTwoListThenFirstIsPrefix!852 lt!557476 (list!6743 lt!556243)))))

(assert (=> d!471444 (= lt!557476 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471444 (= lt!557417 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (list!6743 lt!556243)))))

(assert (=> d!471444 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471444 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!66 thiss!17113 rules!1846 (h!22806 (t!143960 tokens!457)) (rule!4867 (h!22806 (t!143960 tokens!457))) (list!6743 lt!556243)) lt!557442)))

(declare-fun b!1584941 () Bool)

(declare-fun Unit!27282 () Unit!27203)

(assert (=> b!1584941 (= e!1018022 Unit!27282)))

(declare-fun b!1584942 () Bool)

(declare-fun Unit!27283 () Unit!27203)

(assert (=> b!1584942 (= e!1018021 Unit!27283)))

(declare-fun b!1584943 () Bool)

(assert (=> b!1584943 false))

(declare-fun lt!557428 () Unit!27203)

(declare-fun lt!557470 () Unit!27203)

(assert (=> b!1584943 (= lt!557428 lt!557470)))

(declare-fun lt!557459 () List!17474)

(assert (=> b!1584943 (not (matchR!1916 (regex!3067 (rule!4867 lt!557465)) lt!557459))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!59 (LexerInterface!2696 List!17476 Rule!5934 List!17474 List!17474 Rule!5934) Unit!27203)

(assert (=> b!1584943 (= lt!557470 (lemmaMaxPrefNoSmallerRuleMatches!59 thiss!17113 rules!1846 (rule!4867 (h!22806 (t!143960 tokens!457))) lt!557459 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))) (rule!4867 lt!557465)))))

(assert (=> b!1584943 (= lt!557459 (list!6743 (charsOf!1716 (h!22806 (t!143960 tokens!457)))))))

(declare-fun Unit!27284 () Unit!27203)

(assert (=> b!1584943 (= e!1018025 Unit!27284)))

(declare-fun b!1584944 () Bool)

(declare-fun res!706811 () Bool)

(assert (=> b!1584944 (=> (not res!706811) (not e!1018019))))

(assert (=> b!1584944 (= res!706811 (matchR!1916 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!557465))))) (list!6743 (charsOf!1716 lt!557465))))))

(declare-fun b!1584945 () Bool)

(declare-fun Unit!27285 () Unit!27203)

(assert (=> b!1584945 (= e!1018025 Unit!27285)))

(declare-fun b!1584946 () Bool)

(assert (=> b!1584946 false))

(declare-fun lt!557441 () Unit!27203)

(declare-fun lt!557424 () Unit!27203)

(assert (=> b!1584946 (= lt!557441 lt!557424)))

(declare-fun lt!557447 () List!17474)

(assert (=> b!1584946 (not (matchR!1916 (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))) lt!557447))))

(assert (=> b!1584946 (= lt!557424 (lemmaMaxPrefNoSmallerRuleMatches!59 thiss!17113 rules!1846 (rule!4867 lt!557465) lt!557447 lt!557417 (rule!4867 (h!22806 (t!143960 tokens!457)))))))

(assert (=> b!1584946 (= lt!557447 (list!6743 (charsOf!1716 lt!557465)))))

(declare-fun Unit!27286 () Unit!27203)

(assert (=> b!1584946 (= e!1018024 Unit!27286)))

(declare-fun b!1584947 () Bool)

(assert (=> b!1584947 (= e!1018019 (= (rule!4867 lt!557465) (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!557465))))))))

(assert (= (and d!471444 res!706810) b!1584944))

(assert (= (and b!1584944 res!706811) b!1584947))

(assert (= (and d!471444 c!256897) b!1584939))

(assert (= (and d!471444 (not c!256897)) b!1584937))

(assert (= (and d!471444 c!256900) b!1584935))

(assert (= (and d!471444 (not c!256900)) b!1584941))

(assert (= (and d!471444 c!256899) b!1584936))

(assert (= (and d!471444 (not c!256899)) b!1584942))

(assert (= (and b!1584936 c!256898) b!1584946))

(assert (= (and b!1584936 (not c!256898)) b!1584938))

(assert (= (and b!1584936 c!256901) b!1584943))

(assert (= (and b!1584936 (not c!256901)) b!1584945))

(assert (= (and b!1584936 c!256896) b!1584934))

(assert (= (and b!1584936 (not c!256896)) b!1584940))

(declare-fun m!1873447 () Bool)

(assert (=> b!1584946 m!1873447))

(declare-fun m!1873449 () Bool)

(assert (=> b!1584946 m!1873449))

(declare-fun m!1873451 () Bool)

(assert (=> b!1584946 m!1873451))

(assert (=> b!1584946 m!1873451))

(declare-fun m!1873453 () Bool)

(assert (=> b!1584946 m!1873453))

(declare-fun m!1873455 () Bool)

(assert (=> b!1584939 m!1873455))

(declare-fun m!1873457 () Bool)

(assert (=> b!1584939 m!1873457))

(assert (=> b!1584939 m!1870367))

(declare-fun m!1873459 () Bool)

(assert (=> b!1584939 m!1873459))

(assert (=> b!1584939 m!1873451))

(assert (=> b!1584939 m!1873453))

(assert (=> b!1584939 m!1869921))

(declare-fun m!1873461 () Bool)

(assert (=> b!1584939 m!1873461))

(assert (=> b!1584939 m!1870367))

(declare-fun m!1873463 () Bool)

(assert (=> b!1584939 m!1873463))

(assert (=> b!1584939 m!1870361))

(assert (=> b!1584939 m!1870363))

(assert (=> b!1584939 m!1873451))

(declare-fun m!1873465 () Bool)

(assert (=> b!1584939 m!1873465))

(assert (=> b!1584939 m!1869931))

(declare-fun m!1873467 () Bool)

(assert (=> b!1584939 m!1873467))

(declare-fun m!1873469 () Bool)

(assert (=> b!1584939 m!1873469))

(declare-fun m!1873471 () Bool)

(assert (=> b!1584939 m!1873471))

(assert (=> b!1584939 m!1869921))

(assert (=> b!1584939 m!1873453))

(declare-fun m!1873473 () Bool)

(assert (=> b!1584939 m!1873473))

(declare-fun m!1873475 () Bool)

(assert (=> b!1584939 m!1873475))

(assert (=> b!1584939 m!1873455))

(declare-fun m!1873477 () Bool)

(assert (=> b!1584939 m!1873477))

(assert (=> b!1584939 m!1870361))

(declare-fun m!1873479 () Bool)

(assert (=> b!1584939 m!1873479))

(assert (=> b!1584939 m!1873467))

(assert (=> b!1584939 m!1869931))

(assert (=> b!1584939 m!1870367))

(declare-fun m!1873481 () Bool)

(assert (=> b!1584939 m!1873481))

(declare-fun m!1873483 () Bool)

(assert (=> d!471444 m!1873483))

(assert (=> d!471444 m!1873451))

(declare-fun m!1873485 () Bool)

(assert (=> d!471444 m!1873485))

(declare-fun m!1873487 () Bool)

(assert (=> d!471444 m!1873487))

(declare-fun m!1873489 () Bool)

(assert (=> d!471444 m!1873489))

(assert (=> d!471444 m!1870361))

(declare-fun m!1873491 () Bool)

(assert (=> d!471444 m!1873491))

(assert (=> d!471444 m!1873451))

(declare-fun m!1873493 () Bool)

(assert (=> d!471444 m!1873493))

(assert (=> d!471444 m!1869853))

(assert (=> d!471444 m!1869921))

(assert (=> d!471444 m!1873451))

(declare-fun m!1873495 () Bool)

(assert (=> d!471444 m!1873495))

(declare-fun m!1873497 () Bool)

(assert (=> d!471444 m!1873497))

(declare-fun m!1873499 () Bool)

(assert (=> d!471444 m!1873499))

(assert (=> d!471444 m!1873497))

(assert (=> d!471444 m!1870367))

(assert (=> d!471444 m!1870361))

(assert (=> d!471444 m!1872589))

(declare-fun m!1873501 () Bool)

(assert (=> d!471444 m!1873501))

(declare-fun m!1873503 () Bool)

(assert (=> d!471444 m!1873503))

(assert (=> d!471444 m!1869931))

(declare-fun m!1873505 () Bool)

(assert (=> d!471444 m!1873505))

(assert (=> d!471444 m!1870367))

(assert (=> d!471444 m!1870361))

(assert (=> d!471444 m!1870373))

(declare-fun m!1873507 () Bool)

(assert (=> d!471444 m!1873507))

(assert (=> d!471444 m!1873453))

(declare-fun m!1873509 () Bool)

(assert (=> d!471444 m!1873509))

(assert (=> d!471444 m!1870367))

(declare-fun m!1873511 () Bool)

(assert (=> d!471444 m!1873511))

(assert (=> d!471444 m!1873451))

(assert (=> d!471444 m!1873453))

(assert (=> d!471444 m!1869921))

(assert (=> d!471444 m!1870367))

(declare-fun m!1873513 () Bool)

(assert (=> d!471444 m!1873513))

(assert (=> d!471444 m!1873491))

(declare-fun m!1873515 () Bool)

(assert (=> d!471444 m!1873515))

(assert (=> d!471444 m!1873485))

(declare-fun m!1873517 () Bool)

(assert (=> d!471444 m!1873517))

(declare-fun m!1873519 () Bool)

(assert (=> d!471444 m!1873519))

(declare-fun m!1873521 () Bool)

(assert (=> d!471444 m!1873521))

(assert (=> d!471444 m!1870367))

(assert (=> d!471444 m!1870361))

(assert (=> d!471444 m!1870367))

(declare-fun m!1873523 () Bool)

(assert (=> d!471444 m!1873523))

(assert (=> d!471444 m!1872589))

(assert (=> d!471444 m!1872585))

(declare-fun m!1873525 () Bool)

(assert (=> d!471444 m!1873525))

(declare-fun m!1873527 () Bool)

(assert (=> d!471444 m!1873527))

(declare-fun m!1873529 () Bool)

(assert (=> d!471444 m!1873529))

(assert (=> d!471444 m!1869931))

(assert (=> d!471444 m!1870451))

(assert (=> d!471444 m!1869931))

(assert (=> d!471444 m!1870367))

(declare-fun m!1873531 () Bool)

(assert (=> d!471444 m!1873531))

(assert (=> d!471444 m!1873451))

(assert (=> d!471444 m!1870361))

(declare-fun m!1873533 () Bool)

(assert (=> d!471444 m!1873533))

(declare-fun m!1873535 () Bool)

(assert (=> d!471444 m!1873535))

(declare-fun m!1873537 () Bool)

(assert (=> d!471444 m!1873537))

(assert (=> d!471444 m!1873527))

(assert (=> d!471444 m!1873517))

(assert (=> b!1584935 m!1869931))

(assert (=> b!1584935 m!1873451))

(assert (=> b!1584935 m!1873453))

(declare-fun m!1873539 () Bool)

(assert (=> b!1584935 m!1873539))

(declare-fun m!1873541 () Bool)

(assert (=> b!1584935 m!1873541))

(assert (=> b!1584935 m!1869931))

(assert (=> b!1584935 m!1870367))

(assert (=> b!1584935 m!1873451))

(assert (=> b!1584944 m!1873517))

(declare-fun m!1873543 () Bool)

(assert (=> b!1584944 m!1873543))

(assert (=> b!1584944 m!1873451))

(assert (=> b!1584944 m!1873517))

(assert (=> b!1584944 m!1873451))

(assert (=> b!1584944 m!1873453))

(assert (=> b!1584944 m!1873453))

(declare-fun m!1873545 () Bool)

(assert (=> b!1584944 m!1873545))

(declare-fun m!1873547 () Bool)

(assert (=> b!1584934 m!1873547))

(declare-fun m!1873549 () Bool)

(assert (=> b!1584943 m!1873549))

(assert (=> b!1584943 m!1869931))

(assert (=> b!1584943 m!1869931))

(assert (=> b!1584943 m!1870367))

(assert (=> b!1584943 m!1870367))

(declare-fun m!1873551 () Bool)

(assert (=> b!1584943 m!1873551))

(assert (=> b!1584947 m!1873517))

(assert (=> b!1584947 m!1873517))

(assert (=> b!1584947 m!1873543))

(declare-fun m!1873553 () Bool)

(assert (=> b!1584936 m!1873553))

(declare-fun m!1873555 () Bool)

(assert (=> b!1584936 m!1873555))

(assert (=> b!1583531 d!471444))

(assert (=> b!1583531 d!470824))

(declare-fun d!471496 () Bool)

(assert (=> d!471496 (= (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 (t!143960 tokens!457))))) (list!6748 (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 (t!143960 tokens!457)))))))))

(declare-fun bs!391325 () Bool)

(assert (= bs!391325 d!471496))

(declare-fun m!1873557 () Bool)

(assert (=> bs!391325 m!1873557))

(assert (=> b!1583531 d!471496))

(declare-fun d!471498 () Bool)

(declare-fun e!1018026 () Bool)

(assert (=> d!471498 e!1018026))

(declare-fun res!706812 () Bool)

(assert (=> d!471498 (=> (not res!706812) (not e!1018026))))

(declare-fun lt!557478 () BalanceConc!11508)

(assert (=> d!471498 (= res!706812 (= (list!6743 lt!557478) (Cons!17404 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0) Nil!17404)))))

(assert (=> d!471498 (= lt!557478 (singleton!582 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0)))))

(assert (=> d!471498 (= (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 (t!143960 tokens!457)))) 0)) lt!557478)))

(declare-fun b!1584948 () Bool)

(assert (=> b!1584948 (= e!1018026 (isBalanced!1702 (c!256547 lt!557478)))))

(assert (= (and d!471498 res!706812) b!1584948))

(declare-fun m!1873559 () Bool)

(assert (=> d!471498 m!1873559))

(assert (=> d!471498 m!1870397))

(declare-fun m!1873561 () Bool)

(assert (=> d!471498 m!1873561))

(declare-fun m!1873563 () Bool)

(assert (=> b!1584948 m!1873563))

(assert (=> b!1583531 d!471498))

(declare-fun d!471500 () Bool)

(declare-fun nullableFct!303 (Regex!4395) Bool)

(assert (=> d!471500 (= (nullable!1293 (reg!4724 lt!555960)) (nullableFct!303 (reg!4724 lt!555960)))))

(declare-fun bs!391326 () Bool)

(assert (= bs!391326 d!471500))

(declare-fun m!1873565 () Bool)

(assert (=> bs!391326 m!1873565))

(assert (=> b!1583787 d!471500))

(declare-fun d!471502 () Bool)

(assert (=> d!471502 (= (list!6744 (_1!9844 lt!556158)) (list!6748 (c!256549 (_1!9844 lt!556158))))))

(declare-fun bs!391327 () Bool)

(assert (= bs!391327 d!471502))

(declare-fun m!1873567 () Bool)

(assert (=> bs!391327 m!1873567))

(assert (=> b!1583491 d!471502))

(assert (=> b!1583491 d!470968))

(assert (=> b!1583491 d!470814))

(declare-fun b!1584949 () Bool)

(declare-fun res!706815 () Bool)

(declare-fun e!1018027 () Bool)

(assert (=> b!1584949 (=> (not res!706815) (not e!1018027))))

(assert (=> b!1584949 (= res!706815 (not (isEmpty!10429 (left!14062 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)))))))))

(declare-fun d!471504 () Bool)

(declare-fun res!706813 () Bool)

(declare-fun e!1018028 () Bool)

(assert (=> d!471504 (=> res!706813 e!1018028)))

(assert (=> d!471504 (= res!706813 (not ((_ is Node!5783) (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471504 (= (isBalanced!1700 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)))) e!1018028)))

(declare-fun b!1584950 () Bool)

(assert (=> b!1584950 (= e!1018028 e!1018027)))

(declare-fun res!706818 () Bool)

(assert (=> b!1584950 (=> (not res!706818) (not e!1018027))))

(assert (=> b!1584950 (= res!706818 (<= (- 1) (- (height!853 (left!14062 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))))) (height!853 (right!14392 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))))))))))

(declare-fun b!1584951 () Bool)

(declare-fun res!706814 () Bool)

(assert (=> b!1584951 (=> (not res!706814) (not e!1018027))))

(assert (=> b!1584951 (= res!706814 (isBalanced!1700 (left!14062 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))))))))

(declare-fun b!1584952 () Bool)

(assert (=> b!1584952 (= e!1018027 (not (isEmpty!10429 (right!14392 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1584953 () Bool)

(declare-fun res!706817 () Bool)

(assert (=> b!1584953 (=> (not res!706817) (not e!1018027))))

(assert (=> b!1584953 (= res!706817 (<= (- (height!853 (left!14062 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))))) (height!853 (right!14392 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457)))))) 1))))

(declare-fun b!1584954 () Bool)

(declare-fun res!706816 () Bool)

(assert (=> b!1584954 (=> (not res!706816) (not e!1018027))))

(assert (=> b!1584954 (= res!706816 (isBalanced!1700 (right!14392 (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))))))))

(assert (= (and d!471504 (not res!706813)) b!1584950))

(assert (= (and b!1584950 res!706818) b!1584953))

(assert (= (and b!1584953 res!706817) b!1584951))

(assert (= (and b!1584951 res!706814) b!1584954))

(assert (= (and b!1584954 res!706816) b!1584949))

(assert (= (and b!1584949 res!706815) b!1584952))

(declare-fun m!1873569 () Bool)

(assert (=> b!1584953 m!1873569))

(declare-fun m!1873571 () Bool)

(assert (=> b!1584953 m!1873571))

(assert (=> b!1584950 m!1873569))

(assert (=> b!1584950 m!1873571))

(declare-fun m!1873573 () Bool)

(assert (=> b!1584951 m!1873573))

(declare-fun m!1873575 () Bool)

(assert (=> b!1584952 m!1873575))

(declare-fun m!1873577 () Bool)

(assert (=> b!1584954 m!1873577))

(declare-fun m!1873579 () Bool)

(assert (=> b!1584949 m!1873579))

(assert (=> d!470848 d!471504))

(declare-fun d!471506 () Bool)

(declare-fun e!1018033 () Bool)

(assert (=> d!471506 e!1018033))

(declare-fun res!706825 () Bool)

(assert (=> d!471506 (=> (not res!706825) (not e!1018033))))

(declare-fun lt!557515 () Conc!5783)

(assert (=> d!471506 (= res!706825 (isBalanced!1700 lt!557515))))

(declare-fun ++!4536 (Conc!5783 Conc!5783) Conc!5783)

(declare-fun fill!84 (Int Token!5700) IArray!11571)

(assert (=> d!471506 (= lt!557515 (++!4536 (Leaf!8537 (fill!84 1 (h!22806 (t!143960 tokens!457))) 1) (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))))))))

(assert (=> d!471506 (isBalanced!1700 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))))))

(assert (=> d!471506 (= (prepend!551 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 tokens!457))) lt!557515)))

(declare-fun b!1584961 () Bool)

(assert (=> b!1584961 (= e!1018033 (= (list!6748 lt!557515) (Cons!17405 (h!22806 (t!143960 tokens!457)) (list!6748 (c!256549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))))))))))

(assert (= (and d!471506 res!706825) b!1584961))

(declare-fun m!1873581 () Bool)

(assert (=> d!471506 m!1873581))

(declare-fun m!1873583 () Bool)

(assert (=> d!471506 m!1873583))

(declare-fun m!1873585 () Bool)

(assert (=> d!471506 m!1873585))

(declare-fun m!1873587 () Bool)

(assert (=> d!471506 m!1873587))

(declare-fun m!1873589 () Bool)

(assert (=> b!1584961 m!1873589))

(assert (=> b!1584961 m!1872377))

(assert (=> d!470848 d!471506))

(declare-fun b!1585004 () Bool)

(declare-fun e!1018068 () Bool)

(declare-fun appendAssoc!98 (List!17474 List!17474 List!17474) Bool)

(assert (=> b!1585004 (= e!1018068 (appendAssoc!98 (++!4529 (list!6747 (c!256547 lt!555977)) (list!6747 (left!14061 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))) (list!6747 (right!14391 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))) (list!6747 (right!14391 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun d!471508 () Bool)

(declare-fun e!1018069 () Bool)

(assert (=> d!471508 e!1018069))

(declare-fun res!706845 () Bool)

(assert (=> d!471508 (=> (not res!706845) (not e!1018069))))

(declare-fun e!1018070 () Bool)

(assert (=> d!471508 (= res!706845 e!1018070)))

(declare-fun res!706847 () Bool)

(assert (=> d!471508 (=> res!706847 e!1018070)))

(assert (=> d!471508 (= res!706847 (not ((_ is Node!5782) (c!256547 lt!555977))))))

(assert (=> d!471508 (= (appendAssocInst!387 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) true)))

(declare-fun b!1585005 () Bool)

(declare-fun e!1018071 () Bool)

(assert (=> b!1585005 (= e!1018071 e!1018068)))

(declare-fun res!706848 () Bool)

(assert (=> b!1585005 (=> (not res!706848) (not e!1018068))))

(assert (=> b!1585005 (= res!706848 (appendAssoc!98 (list!6747 (c!256547 lt!555977)) (list!6747 (left!14061 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))) (list!6747 (right!14391 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))))

(declare-fun b!1585006 () Bool)

(declare-fun e!1018064 () Bool)

(assert (=> b!1585006 (= e!1018070 e!1018064)))

(declare-fun res!706846 () Bool)

(assert (=> b!1585006 (=> (not res!706846) (not e!1018064))))

(assert (=> b!1585006 (= res!706846 (appendAssoc!98 (list!6747 (left!14061 (c!256547 lt!555977))) (list!6747 (right!14391 (c!256547 lt!555977))) (list!6747 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1585007 () Bool)

(declare-fun e!1018065 () Bool)

(assert (=> b!1585007 (= e!1018065 (appendAssoc!98 (list!6747 (left!14061 (c!256547 lt!555977))) (list!6747 (left!14061 (right!14391 (c!256547 lt!555977)))) (++!4529 (list!6747 (right!14391 (right!14391 (c!256547 lt!555977)))) (list!6747 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1585008 () Bool)

(declare-fun e!1018067 () Bool)

(assert (=> b!1585008 (= e!1018067 e!1018065)))

(declare-fun res!706851 () Bool)

(assert (=> b!1585008 (=> (not res!706851) (not e!1018065))))

(assert (=> b!1585008 (= res!706851 (appendAssoc!98 (list!6747 (left!14061 (right!14391 (c!256547 lt!555977)))) (list!6747 (right!14391 (right!14391 (c!256547 lt!555977)))) (list!6747 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(declare-fun b!1585009 () Bool)

(declare-fun e!1018066 () Bool)

(declare-fun e!1018072 () Bool)

(assert (=> b!1585009 (= e!1018066 e!1018072)))

(declare-fun res!706850 () Bool)

(assert (=> b!1585009 (=> (not res!706850) (not e!1018072))))

(assert (=> b!1585009 (= res!706850 (appendAssoc!98 (list!6747 (c!256547 lt!555977)) (list!6747 (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (list!6747 (right!14391 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1585010 () Bool)

(assert (=> b!1585010 (= e!1018072 e!1018071)))

(declare-fun res!706852 () Bool)

(assert (=> b!1585010 (=> res!706852 e!1018071)))

(assert (=> b!1585010 (= res!706852 (not ((_ is Node!5782) (left!14061 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(declare-fun b!1585011 () Bool)

(assert (=> b!1585011 (= e!1018064 e!1018067)))

(declare-fun res!706849 () Bool)

(assert (=> b!1585011 (=> res!706849 e!1018067)))

(assert (=> b!1585011 (= res!706849 (not ((_ is Node!5782) (right!14391 (c!256547 lt!555977)))))))

(declare-fun b!1585012 () Bool)

(assert (=> b!1585012 (= e!1018069 e!1018066)))

(declare-fun res!706844 () Bool)

(assert (=> b!1585012 (=> res!706844 e!1018066)))

(assert (=> b!1585012 (= res!706844 (not ((_ is Node!5782) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))

(assert (= (and d!471508 (not res!706847)) b!1585006))

(assert (= (and b!1585006 res!706846) b!1585011))

(assert (= (and b!1585011 (not res!706849)) b!1585008))

(assert (= (and b!1585008 res!706851) b!1585007))

(assert (= (and d!471508 res!706845) b!1585012))

(assert (= (and b!1585012 (not res!706844)) b!1585009))

(assert (= (and b!1585009 res!706850) b!1585010))

(assert (= (and b!1585010 (not res!706852)) b!1585005))

(assert (= (and b!1585005 res!706848) b!1585004))

(declare-fun m!1873591 () Bool)

(assert (=> b!1585006 m!1873591))

(declare-fun m!1873593 () Bool)

(assert (=> b!1585006 m!1873593))

(assert (=> b!1585006 m!1871553))

(assert (=> b!1585006 m!1873591))

(assert (=> b!1585006 m!1873593))

(assert (=> b!1585006 m!1871553))

(declare-fun m!1873595 () Bool)

(assert (=> b!1585006 m!1873595))

(assert (=> b!1585005 m!1870283))

(declare-fun m!1873597 () Bool)

(assert (=> b!1585005 m!1873597))

(declare-fun m!1873599 () Bool)

(assert (=> b!1585005 m!1873599))

(assert (=> b!1585005 m!1870283))

(assert (=> b!1585005 m!1873597))

(assert (=> b!1585005 m!1873599))

(declare-fun m!1873601 () Bool)

(assert (=> b!1585005 m!1873601))

(declare-fun m!1873603 () Bool)

(assert (=> b!1585007 m!1873603))

(declare-fun m!1873605 () Bool)

(assert (=> b!1585007 m!1873605))

(assert (=> b!1585007 m!1873591))

(assert (=> b!1585007 m!1871553))

(assert (=> b!1585007 m!1873603))

(assert (=> b!1585007 m!1871553))

(declare-fun m!1873607 () Bool)

(assert (=> b!1585007 m!1873607))

(assert (=> b!1585007 m!1873591))

(assert (=> b!1585007 m!1873605))

(assert (=> b!1585007 m!1873607))

(declare-fun m!1873609 () Bool)

(assert (=> b!1585007 m!1873609))

(assert (=> b!1585004 m!1873597))

(assert (=> b!1585004 m!1873599))

(assert (=> b!1585004 m!1870283))

(assert (=> b!1585004 m!1873597))

(declare-fun m!1873611 () Bool)

(assert (=> b!1585004 m!1873611))

(assert (=> b!1585004 m!1870283))

(declare-fun m!1873613 () Bool)

(assert (=> b!1585004 m!1873613))

(assert (=> b!1585004 m!1873611))

(assert (=> b!1585004 m!1873599))

(assert (=> b!1585004 m!1873613))

(declare-fun m!1873615 () Bool)

(assert (=> b!1585004 m!1873615))

(assert (=> b!1585009 m!1870283))

(declare-fun m!1873617 () Bool)

(assert (=> b!1585009 m!1873617))

(assert (=> b!1585009 m!1873613))

(assert (=> b!1585009 m!1870283))

(assert (=> b!1585009 m!1873617))

(assert (=> b!1585009 m!1873613))

(declare-fun m!1873619 () Bool)

(assert (=> b!1585009 m!1873619))

(assert (=> b!1585008 m!1873605))

(assert (=> b!1585008 m!1873603))

(assert (=> b!1585008 m!1871553))

(assert (=> b!1585008 m!1873605))

(assert (=> b!1585008 m!1873603))

(assert (=> b!1585008 m!1871553))

(declare-fun m!1873621 () Bool)

(assert (=> b!1585008 m!1873621))

(assert (=> d!470928 d!471508))

(assert (=> d!470928 d!471126))

(declare-fun d!471510 () Bool)

(assert (=> d!471510 true))

(declare-fun lt!557626 () Bool)

(assert (=> d!471510 (= lt!557626 (rulesValidInductive!918 thiss!17113 rules!1846))))

(declare-fun lambda!66558 () Int)

(declare-fun forall!4003 (List!17476 Int) Bool)

(assert (=> d!471510 (= lt!557626 (forall!4003 rules!1846 lambda!66558))))

(assert (=> d!471510 (= (rulesValid!1083 thiss!17113 rules!1846) lt!557626)))

(declare-fun bs!391328 () Bool)

(assert (= bs!391328 d!471510))

(assert (=> bs!391328 m!1870111))

(declare-fun m!1873623 () Bool)

(assert (=> bs!391328 m!1873623))

(assert (=> d!470790 d!471510))

(declare-fun b!1585015 () Bool)

(declare-fun res!706853 () Bool)

(declare-fun e!1018074 () Bool)

(assert (=> b!1585015 (=> (not res!706853) (not e!1018074))))

(declare-fun call!102891 () Bool)

(assert (=> b!1585015 (= res!706853 call!102891)))

(declare-fun e!1018073 () Bool)

(assert (=> b!1585015 (= e!1018073 e!1018074)))

(declare-fun bm!102884 () Bool)

(declare-fun call!102890 () Bool)

(assert (=> bm!102884 (= call!102891 call!102890)))

(declare-fun c!256915 () Bool)

(declare-fun bm!102885 () Bool)

(declare-fun call!102889 () Bool)

(assert (=> bm!102885 (= call!102889 (validRegex!1734 (ite c!256915 (regTwo!9303 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))) (regOne!9302 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))))))))

(declare-fun b!1585016 () Bool)

(declare-fun e!1018077 () Bool)

(assert (=> b!1585016 (= e!1018077 call!102891)))

(declare-fun d!471512 () Bool)

(declare-fun res!706854 () Bool)

(declare-fun e!1018079 () Bool)

(assert (=> d!471512 (=> res!706854 e!1018079)))

(assert (=> d!471512 (= res!706854 ((_ is ElementMatch!4395) (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))))))

(assert (=> d!471512 (= (validRegex!1734 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))) e!1018079)))

(declare-fun b!1585017 () Bool)

(declare-fun res!706857 () Bool)

(declare-fun e!1018078 () Bool)

(assert (=> b!1585017 (=> res!706857 e!1018078)))

(assert (=> b!1585017 (= res!706857 (not ((_ is Concat!7553) (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960))))))))

(assert (=> b!1585017 (= e!1018073 e!1018078)))

(declare-fun c!256914 () Bool)

(declare-fun bm!102886 () Bool)

(assert (=> bm!102886 (= call!102890 (validRegex!1734 (ite c!256914 (reg!4724 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))) (ite c!256915 (regOne!9303 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))) (regTwo!9302 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960))))))))))

(declare-fun b!1585018 () Bool)

(assert (=> b!1585018 (= e!1018078 e!1018077)))

(declare-fun res!706855 () Bool)

(assert (=> b!1585018 (=> (not res!706855) (not e!1018077))))

(assert (=> b!1585018 (= res!706855 call!102889)))

(declare-fun b!1585019 () Bool)

(declare-fun e!1018076 () Bool)

(assert (=> b!1585019 (= e!1018076 e!1018073)))

(assert (=> b!1585019 (= c!256915 ((_ is Union!4395) (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))))))

(declare-fun b!1585020 () Bool)

(declare-fun e!1018075 () Bool)

(assert (=> b!1585020 (= e!1018075 call!102890)))

(declare-fun b!1585021 () Bool)

(assert (=> b!1585021 (= e!1018079 e!1018076)))

(assert (=> b!1585021 (= c!256914 ((_ is Star!4395) (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))))))

(declare-fun b!1585022 () Bool)

(assert (=> b!1585022 (= e!1018076 e!1018075)))

(declare-fun res!706856 () Bool)

(assert (=> b!1585022 (= res!706856 (not (nullable!1293 (reg!4724 (ite c!256621 (reg!4724 lt!555960) (ite c!256622 (regOne!9303 lt!555960) (regTwo!9302 lt!555960)))))))))

(assert (=> b!1585022 (=> (not res!706856) (not e!1018075))))

(declare-fun b!1585023 () Bool)

(assert (=> b!1585023 (= e!1018074 call!102889)))

(assert (= (and d!471512 (not res!706854)) b!1585021))

(assert (= (and b!1585021 c!256914) b!1585022))

(assert (= (and b!1585021 (not c!256914)) b!1585019))

(assert (= (and b!1585022 res!706856) b!1585020))

(assert (= (and b!1585019 c!256915) b!1585015))

(assert (= (and b!1585019 (not c!256915)) b!1585017))

(assert (= (and b!1585015 res!706853) b!1585023))

(assert (= (and b!1585017 (not res!706857)) b!1585018))

(assert (= (and b!1585018 res!706855) b!1585016))

(assert (= (or b!1585023 b!1585018) bm!102885))

(assert (= (or b!1585015 b!1585016) bm!102884))

(assert (= (or b!1585020 bm!102884) bm!102886))

(declare-fun m!1873625 () Bool)

(assert (=> bm!102885 m!1873625))

(declare-fun m!1873627 () Bool)

(assert (=> bm!102886 m!1873627))

(declare-fun m!1873629 () Bool)

(assert (=> b!1585022 m!1873629))

(assert (=> bm!102757 d!471512))

(declare-fun d!471514 () Bool)

(assert (=> d!471514 (= (inv!22818 (tag!3335 (rule!4867 (h!22806 (t!143960 tokens!457))))) (= (mod (str.len (value!97081 (tag!3335 (rule!4867 (h!22806 (t!143960 tokens!457)))))) 2) 0))))

(assert (=> b!1583822 d!471514))

(declare-fun d!471516 () Bool)

(declare-fun res!706858 () Bool)

(declare-fun e!1018080 () Bool)

(assert (=> d!471516 (=> (not res!706858) (not e!1018080))))

(assert (=> d!471516 (= res!706858 (semiInverseModEq!1156 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))))))

(assert (=> d!471516 (= (inv!22821 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) e!1018080)))

(declare-fun b!1585024 () Bool)

(assert (=> b!1585024 (= e!1018080 (equivClasses!1097 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))))))

(assert (= (and d!471516 res!706858) b!1585024))

(declare-fun m!1873631 () Bool)

(assert (=> d!471516 m!1873631))

(declare-fun m!1873633 () Bool)

(assert (=> b!1585024 m!1873633))

(assert (=> b!1583822 d!471516))

(declare-fun d!471518 () Bool)

(assert (=> d!471518 (= (list!6743 lt!556083) (list!6747 (c!256547 lt!556083)))))

(declare-fun bs!391329 () Bool)

(assert (= bs!391329 d!471518))

(declare-fun m!1873635 () Bool)

(assert (=> bs!391329 m!1873635))

(assert (=> d!470774 d!471518))

(declare-fun d!471520 () Bool)

(declare-fun c!256916 () Bool)

(assert (=> d!471520 (= c!256916 ((_ is Cons!17405) (list!6744 lt!555974)))))

(declare-fun e!1018081 () List!17474)

(assert (=> d!471520 (= (printList!811 thiss!17113 (list!6744 lt!555974)) e!1018081)))

(declare-fun b!1585025 () Bool)

(assert (=> b!1585025 (= e!1018081 (++!4529 (list!6743 (charsOf!1716 (h!22806 (list!6744 lt!555974)))) (printList!811 thiss!17113 (t!143960 (list!6744 lt!555974)))))))

(declare-fun b!1585026 () Bool)

(assert (=> b!1585026 (= e!1018081 Nil!17404)))

(assert (= (and d!471520 c!256916) b!1585025))

(assert (= (and d!471520 (not c!256916)) b!1585026))

(declare-fun m!1873637 () Bool)

(assert (=> b!1585025 m!1873637))

(assert (=> b!1585025 m!1873637))

(declare-fun m!1873639 () Bool)

(assert (=> b!1585025 m!1873639))

(declare-fun m!1873641 () Bool)

(assert (=> b!1585025 m!1873641))

(assert (=> b!1585025 m!1873639))

(assert (=> b!1585025 m!1873641))

(declare-fun m!1873643 () Bool)

(assert (=> b!1585025 m!1873643))

(assert (=> d!470774 d!471520))

(declare-fun d!471522 () Bool)

(assert (=> d!471522 (= (list!6744 lt!555974) (list!6748 (c!256549 lt!555974)))))

(declare-fun bs!391330 () Bool)

(assert (= bs!391330 d!471522))

(assert (=> bs!391330 m!1871393))

(assert (=> d!470774 d!471522))

(assert (=> d!470774 d!470752))

(declare-fun d!471524 () Bool)

(assert (=> d!471524 (= (head!3208 lt!555973) (h!22805 lt!555973))))

(assert (=> b!1583542 d!471524))

(declare-fun d!471526 () Bool)

(assert (=> d!471526 (= (head!3208 lt!555976) (h!22805 lt!555976))))

(assert (=> b!1583542 d!471526))

(declare-fun d!471528 () Bool)

(declare-fun c!256917 () Bool)

(assert (=> d!471528 (= c!256917 ((_ is Node!5782) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun e!1018082 () Bool)

(assert (=> d!471528 (= (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))) e!1018082)))

(declare-fun b!1585027 () Bool)

(assert (=> b!1585027 (= e!1018082 (inv!22829 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1585028 () Bool)

(declare-fun e!1018083 () Bool)

(assert (=> b!1585028 (= e!1018082 e!1018083)))

(declare-fun res!706859 () Bool)

(assert (=> b!1585028 (= res!706859 (not ((_ is Leaf!8536) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))))))))

(assert (=> b!1585028 (=> res!706859 e!1018083)))

(declare-fun b!1585029 () Bool)

(assert (=> b!1585029 (= e!1018083 (inv!22830 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))))))

(assert (= (and d!471528 c!256917) b!1585027))

(assert (= (and d!471528 (not c!256917)) b!1585028))

(assert (= (and b!1585028 (not res!706859)) b!1585029))

(declare-fun m!1873645 () Bool)

(assert (=> b!1585027 m!1873645))

(declare-fun m!1873647 () Bool)

(assert (=> b!1585029 m!1873647))

(assert (=> b!1583804 d!471528))

(declare-fun d!471530 () Bool)

(declare-fun lt!557627 () Int)

(assert (=> d!471530 (>= lt!557627 0)))

(declare-fun e!1018084 () Int)

(assert (=> d!471530 (= lt!557627 e!1018084)))

(declare-fun c!256918 () Bool)

(assert (=> d!471530 (= c!256918 ((_ is Nil!17404) (_2!9845 (get!4978 lt!556077))))))

(assert (=> d!471530 (= (size!14005 (_2!9845 (get!4978 lt!556077))) lt!557627)))

(declare-fun b!1585030 () Bool)

(assert (=> b!1585030 (= e!1018084 0)))

(declare-fun b!1585031 () Bool)

(assert (=> b!1585031 (= e!1018084 (+ 1 (size!14005 (t!143959 (_2!9845 (get!4978 lt!556077))))))))

(assert (= (and d!471530 c!256918) b!1585030))

(assert (= (and d!471530 (not c!256918)) b!1585031))

(declare-fun m!1873649 () Bool)

(assert (=> b!1585031 m!1873649))

(assert (=> b!1583403 d!471530))

(assert (=> b!1583403 d!471134))

(declare-fun d!471532 () Bool)

(declare-fun lt!557628 () Int)

(assert (=> d!471532 (>= lt!557628 0)))

(declare-fun e!1018085 () Int)

(assert (=> d!471532 (= lt!557628 e!1018085)))

(declare-fun c!256919 () Bool)

(assert (=> d!471532 (= c!256919 ((_ is Nil!17404) lt!555972))))

(assert (=> d!471532 (= (size!14005 lt!555972) lt!557628)))

(declare-fun b!1585032 () Bool)

(assert (=> b!1585032 (= e!1018085 0)))

(declare-fun b!1585033 () Bool)

(assert (=> b!1585033 (= e!1018085 (+ 1 (size!14005 (t!143959 lt!555972))))))

(assert (= (and d!471532 c!256919) b!1585032))

(assert (= (and d!471532 (not c!256919)) b!1585033))

(declare-fun m!1873651 () Bool)

(assert (=> b!1585033 m!1873651))

(assert (=> b!1583403 d!471532))

(declare-fun d!471534 () Bool)

(assert (=> d!471534 (= (list!6744 (_1!9844 lt!555967)) (list!6744 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471534 true))

(declare-fun _$1!9991 () Unit!27203)

(assert (=> d!471534 (= (choose!9476 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)) (_1!9844 lt!555967)) _$1!9991)))

(declare-fun bs!391331 () Bool)

(assert (= bs!391331 d!471534))

(assert (=> bs!391331 m!1869855))

(assert (=> bs!391331 m!1869943))

(assert (=> bs!391331 m!1869943))

(assert (=> bs!391331 m!1869945))

(assert (=> bs!391331 m!1869945))

(assert (=> bs!391331 m!1869947))

(assert (=> d!470856 d!471534))

(assert (=> d!470856 d!470848))

(assert (=> d!470856 d!470850))

(declare-fun d!471536 () Bool)

(assert (=> d!471536 (= (list!6744 (seqFromList!1883 ($colon$colon!275 (t!143960 (t!143960 tokens!457)) (h!22806 (t!143960 tokens!457))))) (list!6748 (c!256549 (seqFromList!1883 ($colon$colon!275 (t!143960 (t!143960 tokens!457)) (h!22806 (t!143960 tokens!457)))))))))

(declare-fun bs!391332 () Bool)

(assert (= bs!391332 d!471536))

(declare-fun m!1873653 () Bool)

(assert (=> bs!391332 m!1873653))

(assert (=> d!470856 d!471536))

(assert (=> d!470856 d!470854))

(declare-fun d!471538 () Bool)

(assert (=> d!471538 (= ($colon$colon!275 (t!143960 (t!143960 tokens!457)) (h!22806 (t!143960 tokens!457))) (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))))

(assert (=> d!470856 d!471538))

(assert (=> d!470856 d!470832))

(declare-fun d!471540 () Bool)

(assert (=> d!471540 (= (seqFromList!1883 ($colon$colon!275 (t!143960 (t!143960 tokens!457)) (h!22806 (t!143960 tokens!457)))) (fromListB!806 ($colon$colon!275 (t!143960 (t!143960 tokens!457)) (h!22806 (t!143960 tokens!457)))))))

(declare-fun bs!391333 () Bool)

(assert (= bs!391333 d!471540))

(assert (=> bs!391333 m!1870475))

(declare-fun m!1873669 () Bool)

(assert (=> bs!391333 m!1873669))

(assert (=> d!470856 d!471540))

(declare-fun d!471542 () Bool)

(assert (=> d!471542 (= (height!851 (c!256547 lt!555977)) (ite ((_ is Empty!5782) (c!256547 lt!555977)) 0 (ite ((_ is Leaf!8536) (c!256547 lt!555977)) 1 (cheight!5993 (c!256547 lt!555977)))))))

(assert (=> b!1583802 d!471542))

(declare-fun d!471544 () Bool)

(assert (=> d!471544 (= (max!0 (height!851 (c!256547 lt!555977)) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (ite (< (height!851 (c!256547 lt!555977)) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) (height!851 (c!256547 lt!555977))))))

(assert (=> b!1583802 d!471544))

(assert (=> b!1583802 d!471126))

(declare-fun d!471546 () Bool)

(assert (=> d!471546 (= (height!851 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) (ite ((_ is Empty!5782) (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) 0 (ite ((_ is Leaf!8536) (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))) 1 (cheight!5993 (++!4532 (c!256547 lt!555977) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0))))))))))

(assert (=> b!1583802 d!471546))

(declare-fun d!471548 () Bool)

(assert (=> d!471548 (= (height!851 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) (ite ((_ is Empty!5782) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) 0 (ite ((_ is Leaf!8536) (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))) 1 (cheight!5993 (c!256547 (singletonSeq!1413 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))))))

(assert (=> b!1583802 d!471548))

(assert (=> b!1583400 d!471134))

(declare-fun d!471550 () Bool)

(declare-fun dynLambda!7734 (Int BalanceConc!11508) TokenValue!3157)

(assert (=> d!471550 (= (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556077))))) (dynLambda!7734 (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556077))))))))

(declare-fun b_lambda!49871 () Bool)

(assert (=> (not b_lambda!49871) (not d!471550)))

(declare-fun tb!89183 () Bool)

(declare-fun t!144097 () Bool)

(assert (=> (and b!1583303 (= (toValue!4474 (transformation!3067 (h!22807 rules!1846))) (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144097) tb!89183))

(declare-fun result!107944 () Bool)

(assert (=> tb!89183 (= result!107944 (inv!21 (dynLambda!7734 (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556077)))))))))

(declare-fun m!1873775 () Bool)

(assert (=> tb!89183 m!1873775))

(assert (=> d!471550 t!144097))

(declare-fun b_and!111117 () Bool)

(assert (= b_and!110989 (and (=> t!144097 result!107944) b_and!111117)))

(declare-fun t!144099 () Bool)

(declare-fun tb!89185 () Bool)

(assert (=> (and b!1583288 (= (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144099) tb!89185))

(declare-fun result!107948 () Bool)

(assert (= result!107948 result!107944))

(assert (=> d!471550 t!144099))

(declare-fun b_and!111119 () Bool)

(assert (= b_and!110993 (and (=> t!144099 result!107948) b_and!111119)))

(declare-fun tb!89187 () Bool)

(declare-fun t!144101 () Bool)

(assert (=> (and b!1583823 (= (toValue!4474 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144101) tb!89187))

(declare-fun result!107950 () Bool)

(assert (= result!107950 result!107944))

(assert (=> d!471550 t!144101))

(declare-fun b_and!111121 () Bool)

(assert (= b_and!111029 (and (=> t!144101 result!107950) b_and!111121)))

(declare-fun t!144103 () Bool)

(declare-fun tb!89189 () Bool)

(assert (=> (and b!1583852 (= (toValue!4474 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144103) tb!89189))

(declare-fun result!107952 () Bool)

(assert (= result!107952 result!107944))

(assert (=> d!471550 t!144103))

(declare-fun b_and!111123 () Bool)

(assert (= b_and!111033 (and (=> t!144103 result!107952) b_and!111123)))

(assert (=> d!471550 m!1870101))

(declare-fun m!1873783 () Bool)

(assert (=> d!471550 m!1873783))

(assert (=> b!1583400 d!471550))

(declare-fun d!471564 () Bool)

(assert (=> d!471564 (= (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!556077)))) (fromListB!805 (originalCharacters!3881 (_1!9845 (get!4978 lt!556077)))))))

(declare-fun bs!391335 () Bool)

(assert (= bs!391335 d!471564))

(declare-fun m!1873785 () Bool)

(assert (=> bs!391335 m!1873785))

(assert (=> b!1583400 d!471564))

(declare-fun d!471566 () Bool)

(declare-fun res!706872 () Bool)

(declare-fun e!1018108 () Bool)

(assert (=> d!471566 (=> res!706872 e!1018108)))

(assert (=> d!471566 (= res!706872 ((_ is Nil!17406) rules!1846))))

(assert (=> d!471566 (= (noDuplicateTag!1083 thiss!17113 rules!1846 Nil!17407) e!1018108)))

(declare-fun b!1585064 () Bool)

(declare-fun e!1018109 () Bool)

(assert (=> b!1585064 (= e!1018108 e!1018109)))

(declare-fun res!706873 () Bool)

(assert (=> b!1585064 (=> (not res!706873) (not e!1018109))))

(declare-fun contains!3039 (List!17477 String!20117) Bool)

(assert (=> b!1585064 (= res!706873 (not (contains!3039 Nil!17407 (tag!3335 (h!22807 rules!1846)))))))

(declare-fun b!1585065 () Bool)

(assert (=> b!1585065 (= e!1018109 (noDuplicateTag!1083 thiss!17113 (t!143961 rules!1846) (Cons!17407 (tag!3335 (h!22807 rules!1846)) Nil!17407)))))

(assert (= (and d!471566 (not res!706872)) b!1585064))

(assert (= (and b!1585064 res!706873) b!1585065))

(declare-fun m!1873801 () Bool)

(assert (=> b!1585064 m!1873801))

(declare-fun m!1873803 () Bool)

(assert (=> b!1585065 m!1873803))

(assert (=> b!1583436 d!471566))

(declare-fun b!1585066 () Bool)

(declare-fun e!1018110 () List!17475)

(assert (=> b!1585066 (= e!1018110 Nil!17405)))

(declare-fun b!1585069 () Bool)

(declare-fun e!1018111 () List!17475)

(assert (=> b!1585069 (= e!1018111 (++!4534 (list!6748 (left!14062 (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457)))))) (list!6748 (right!14392 (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457))))))))))

(declare-fun d!471582 () Bool)

(declare-fun c!256928 () Bool)

(assert (=> d!471582 (= c!256928 ((_ is Empty!5783) (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457))))))))

(assert (=> d!471582 (= (list!6748 (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457))))) e!1018110)))

(declare-fun b!1585068 () Bool)

(assert (=> b!1585068 (= e!1018111 (list!6751 (xs!8587 (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457)))))))))

(declare-fun b!1585067 () Bool)

(assert (=> b!1585067 (= e!1018110 e!1018111)))

(declare-fun c!256929 () Bool)

(assert (=> b!1585067 (= c!256929 ((_ is Leaf!8537) (c!256549 (prepend!549 (seqFromList!1883 (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 tokens!457))))))))

(assert (= (and d!471582 c!256928) b!1585066))

(assert (= (and d!471582 (not c!256928)) b!1585067))

(assert (= (and b!1585067 c!256929) b!1585068))

(assert (= (and b!1585067 (not c!256929)) b!1585069))

(declare-fun m!1873805 () Bool)

(assert (=> b!1585069 m!1873805))

(declare-fun m!1873807 () Bool)

(assert (=> b!1585069 m!1873807))

(assert (=> b!1585069 m!1873805))

(assert (=> b!1585069 m!1873807))

(declare-fun m!1873809 () Bool)

(assert (=> b!1585069 m!1873809))

(declare-fun m!1873811 () Bool)

(assert (=> b!1585068 m!1873811))

(assert (=> d!470850 d!471582))

(assert (=> b!1583665 d!470830))

(declare-fun d!471584 () Bool)

(assert (=> d!471584 (not (matchR!1916 (regex!3067 (rule!4867 lt!556425)) lt!556422))))

(declare-fun lt!557708 () Unit!27203)

(declare-fun choose!9487 (LexerInterface!2696 Rule!5934 List!17474 List!17474) Unit!27203)

(assert (=> d!471584 (= lt!557708 (choose!9487 thiss!17113 (rule!4867 lt!556425) lt!556422 (++!4529 lt!555973 lt!555959)))))

(assert (=> d!471584 (isPrefix!1327 lt!556422 (++!4529 lt!555973 lt!555959))))

(assert (=> d!471584 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!130 thiss!17113 (rule!4867 lt!556425) lt!556422 (++!4529 lt!555973 lt!555959)) lt!557708)))

(declare-fun bs!391343 () Bool)

(assert (= bs!391343 d!471584))

(assert (=> bs!391343 m!1870699))

(assert (=> bs!391343 m!1869871))

(declare-fun m!1873815 () Bool)

(assert (=> bs!391343 m!1873815))

(assert (=> bs!391343 m!1869871))

(declare-fun m!1873817 () Bool)

(assert (=> bs!391343 m!1873817))

(assert (=> b!1583665 d!471584))

(declare-fun d!471590 () Bool)

(assert (=> d!471590 (isEmpty!10427 (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!556425) lt!556427))))

(declare-fun lt!557717 () Unit!27203)

(declare-fun choose!9488 (LexerInterface!2696 Rule!5934 List!17476 List!17474) Unit!27203)

(assert (=> d!471590 (= lt!557717 (choose!9488 thiss!17113 (rule!4867 lt!556425) rules!1846 lt!556427))))

(assert (=> d!471590 (not (isEmpty!10423 rules!1846))))

(assert (=> d!471590 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!134 thiss!17113 (rule!4867 lt!556425) rules!1846 lt!556427) lt!557717)))

(declare-fun bs!391346 () Bool)

(assert (= bs!391346 d!471590))

(assert (=> bs!391346 m!1870701))

(assert (=> bs!391346 m!1870701))

(assert (=> bs!391346 m!1870703))

(declare-fun m!1873845 () Bool)

(assert (=> bs!391346 m!1873845))

(assert (=> bs!391346 m!1869853))

(assert (=> b!1583665 d!471590))

(assert (=> b!1583665 d!471178))

(declare-fun b!1585090 () Bool)

(declare-fun e!1018122 () Bool)

(assert (=> b!1585090 (= e!1018122 (not (= (head!3208 lt!556422) (c!256548 (regex!3067 (rule!4867 lt!556425))))))))

(declare-fun b!1585091 () Bool)

(declare-fun e!1018125 () Bool)

(declare-fun e!1018128 () Bool)

(assert (=> b!1585091 (= e!1018125 e!1018128)))

(declare-fun res!706885 () Bool)

(assert (=> b!1585091 (=> (not res!706885) (not e!1018128))))

(declare-fun lt!557718 () Bool)

(assert (=> b!1585091 (= res!706885 (not lt!557718))))

(declare-fun b!1585092 () Bool)

(declare-fun e!1018126 () Bool)

(assert (=> b!1585092 (= e!1018126 (matchR!1916 (derivativeStep!1044 (regex!3067 (rule!4867 lt!556425)) (head!3208 lt!556422)) (tail!2266 lt!556422)))))

(declare-fun b!1585093 () Bool)

(declare-fun e!1018124 () Bool)

(assert (=> b!1585093 (= e!1018124 (= (head!3208 lt!556422) (c!256548 (regex!3067 (rule!4867 lt!556425)))))))

(declare-fun d!471600 () Bool)

(declare-fun e!1018123 () Bool)

(assert (=> d!471600 e!1018123))

(declare-fun c!256939 () Bool)

(assert (=> d!471600 (= c!256939 ((_ is EmptyExpr!4395) (regex!3067 (rule!4867 lt!556425))))))

(assert (=> d!471600 (= lt!557718 e!1018126)))

(declare-fun c!256937 () Bool)

(assert (=> d!471600 (= c!256937 (isEmpty!10432 lt!556422))))

(assert (=> d!471600 (validRegex!1734 (regex!3067 (rule!4867 lt!556425)))))

(assert (=> d!471600 (= (matchR!1916 (regex!3067 (rule!4867 lt!556425)) lt!556422) lt!557718)))

(declare-fun b!1585094 () Bool)

(declare-fun res!706886 () Bool)

(assert (=> b!1585094 (=> res!706886 e!1018125)))

(assert (=> b!1585094 (= res!706886 e!1018124)))

(declare-fun res!706881 () Bool)

(assert (=> b!1585094 (=> (not res!706881) (not e!1018124))))

(assert (=> b!1585094 (= res!706881 lt!557718)))

(declare-fun b!1585095 () Bool)

(declare-fun res!706880 () Bool)

(assert (=> b!1585095 (=> res!706880 e!1018122)))

(assert (=> b!1585095 (= res!706880 (not (isEmpty!10432 (tail!2266 lt!556422))))))

(declare-fun b!1585096 () Bool)

(declare-fun e!1018127 () Bool)

(assert (=> b!1585096 (= e!1018123 e!1018127)))

(declare-fun c!256938 () Bool)

(assert (=> b!1585096 (= c!256938 ((_ is EmptyLang!4395) (regex!3067 (rule!4867 lt!556425))))))

(declare-fun b!1585097 () Bool)

(declare-fun res!706884 () Bool)

(assert (=> b!1585097 (=> (not res!706884) (not e!1018124))))

(declare-fun call!102895 () Bool)

(assert (=> b!1585097 (= res!706884 (not call!102895))))

(declare-fun b!1585098 () Bool)

(declare-fun res!706883 () Bool)

(assert (=> b!1585098 (=> (not res!706883) (not e!1018124))))

(assert (=> b!1585098 (= res!706883 (isEmpty!10432 (tail!2266 lt!556422)))))

(declare-fun b!1585099 () Bool)

(assert (=> b!1585099 (= e!1018123 (= lt!557718 call!102895))))

(declare-fun b!1585100 () Bool)

(assert (=> b!1585100 (= e!1018127 (not lt!557718))))

(declare-fun b!1585101 () Bool)

(declare-fun res!706882 () Bool)

(assert (=> b!1585101 (=> res!706882 e!1018125)))

(assert (=> b!1585101 (= res!706882 (not ((_ is ElementMatch!4395) (regex!3067 (rule!4867 lt!556425)))))))

(assert (=> b!1585101 (= e!1018127 e!1018125)))

(declare-fun b!1585102 () Bool)

(assert (=> b!1585102 (= e!1018128 e!1018122)))

(declare-fun res!706887 () Bool)

(assert (=> b!1585102 (=> res!706887 e!1018122)))

(assert (=> b!1585102 (= res!706887 call!102895)))

(declare-fun bm!102890 () Bool)

(assert (=> bm!102890 (= call!102895 (isEmpty!10432 lt!556422))))

(declare-fun b!1585103 () Bool)

(assert (=> b!1585103 (= e!1018126 (nullable!1293 (regex!3067 (rule!4867 lt!556425))))))

(assert (= (and d!471600 c!256937) b!1585103))

(assert (= (and d!471600 (not c!256937)) b!1585092))

(assert (= (and d!471600 c!256939) b!1585099))

(assert (= (and d!471600 (not c!256939)) b!1585096))

(assert (= (and b!1585096 c!256938) b!1585100))

(assert (= (and b!1585096 (not c!256938)) b!1585101))

(assert (= (and b!1585101 (not res!706882)) b!1585094))

(assert (= (and b!1585094 res!706881) b!1585097))

(assert (= (and b!1585097 res!706884) b!1585098))

(assert (= (and b!1585098 res!706883) b!1585093))

(assert (= (and b!1585094 (not res!706886)) b!1585091))

(assert (= (and b!1585091 res!706885) b!1585102))

(assert (= (and b!1585102 (not res!706887)) b!1585095))

(assert (= (and b!1585095 (not res!706880)) b!1585090))

(assert (= (or b!1585099 b!1585097 b!1585102) bm!102890))

(declare-fun m!1873847 () Bool)

(assert (=> bm!102890 m!1873847))

(declare-fun m!1873849 () Bool)

(assert (=> b!1585095 m!1873849))

(assert (=> b!1585095 m!1873849))

(declare-fun m!1873851 () Bool)

(assert (=> b!1585095 m!1873851))

(assert (=> b!1585098 m!1873849))

(assert (=> b!1585098 m!1873849))

(assert (=> b!1585098 m!1873851))

(declare-fun m!1873853 () Bool)

(assert (=> b!1585103 m!1873853))

(declare-fun m!1873855 () Bool)

(assert (=> b!1585093 m!1873855))

(assert (=> b!1585092 m!1873855))

(assert (=> b!1585092 m!1873855))

(declare-fun m!1873857 () Bool)

(assert (=> b!1585092 m!1873857))

(assert (=> b!1585092 m!1873849))

(assert (=> b!1585092 m!1873857))

(assert (=> b!1585092 m!1873849))

(declare-fun m!1873859 () Bool)

(assert (=> b!1585092 m!1873859))

(assert (=> b!1585090 m!1873855))

(assert (=> d!471600 m!1873847))

(declare-fun m!1873863 () Bool)

(assert (=> d!471600 m!1873863))

(assert (=> b!1583665 d!471600))

(declare-fun d!471602 () Bool)

(assert (=> d!471602 (= (isEmpty!10427 (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!556425) lt!556427)) (not ((_ is Some!3127) (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!556425) lt!556427))))))

(assert (=> b!1583665 d!471602))

(declare-fun b!1585233 () Bool)

(declare-fun res!706967 () Bool)

(declare-fun e!1018207 () Bool)

(assert (=> b!1585233 (=> (not res!706967) (not e!1018207))))

(declare-fun lt!557777 () Option!3128)

(assert (=> b!1585233 (= res!706967 (< (size!14005 (_2!9845 (get!4978 lt!557777))) (size!14005 lt!556427)))))

(declare-fun b!1585234 () Bool)

(declare-fun e!1018205 () Option!3128)

(assert (=> b!1585234 (= e!1018205 None!3127)))

(declare-fun b!1585235 () Bool)

(declare-datatypes ((tuple2!16898 0))(
  ( (tuple2!16899 (_1!9851 List!17474) (_2!9851 List!17474)) )
))
(declare-fun lt!557780 () tuple2!16898)

(assert (=> b!1585235 (= e!1018205 (Some!3127 (tuple2!16887 (Token!5701 (apply!4242 (transformation!3067 (rule!4867 lt!556425)) (seqFromList!1884 (_1!9851 lt!557780))) (rule!4867 lt!556425) (size!14006 (seqFromList!1884 (_1!9851 lt!557780))) (_1!9851 lt!557780)) (_2!9851 lt!557780))))))

(declare-fun lt!557778 () Unit!27203)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!335 (Regex!4395 List!17474) Unit!27203)

(assert (=> b!1585235 (= lt!557778 (longestMatchIsAcceptedByMatchOrIsEmpty!335 (regex!3067 (rule!4867 lt!556425)) lt!556427))))

(declare-fun res!706965 () Bool)

(declare-fun findLongestMatchInner!351 (Regex!4395 List!17474 Int List!17474 List!17474 Int) tuple2!16898)

(assert (=> b!1585235 (= res!706965 (isEmpty!10432 (_1!9851 (findLongestMatchInner!351 (regex!3067 (rule!4867 lt!556425)) Nil!17404 (size!14005 Nil!17404) lt!556427 lt!556427 (size!14005 lt!556427)))))))

(declare-fun e!1018206 () Bool)

(assert (=> b!1585235 (=> res!706965 e!1018206)))

(assert (=> b!1585235 e!1018206))

(declare-fun lt!557779 () Unit!27203)

(assert (=> b!1585235 (= lt!557779 lt!557778)))

(declare-fun lt!557776 () Unit!27203)

(assert (=> b!1585235 (= lt!557776 (lemmaSemiInverse!384 (transformation!3067 (rule!4867 lt!556425)) (seqFromList!1884 (_1!9851 lt!557780))))))

(declare-fun b!1585236 () Bool)

(declare-fun e!1018208 () Bool)

(assert (=> b!1585236 (= e!1018208 e!1018207)))

(declare-fun res!706961 () Bool)

(assert (=> b!1585236 (=> (not res!706961) (not e!1018207))))

(assert (=> b!1585236 (= res!706961 (matchR!1916 (regex!3067 (rule!4867 lt!556425)) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557777))))))))

(declare-fun b!1585237 () Bool)

(assert (=> b!1585237 (= e!1018206 (matchR!1916 (regex!3067 (rule!4867 lt!556425)) (_1!9851 (findLongestMatchInner!351 (regex!3067 (rule!4867 lt!556425)) Nil!17404 (size!14005 Nil!17404) lt!556427 lt!556427 (size!14005 lt!556427)))))))

(declare-fun d!471604 () Bool)

(assert (=> d!471604 e!1018208))

(declare-fun res!706964 () Bool)

(assert (=> d!471604 (=> res!706964 e!1018208)))

(assert (=> d!471604 (= res!706964 (isEmpty!10427 lt!557777))))

(assert (=> d!471604 (= lt!557777 e!1018205)))

(declare-fun c!256970 () Bool)

(assert (=> d!471604 (= c!256970 (isEmpty!10432 (_1!9851 lt!557780)))))

(declare-fun findLongestMatch!278 (Regex!4395 List!17474) tuple2!16898)

(assert (=> d!471604 (= lt!557780 (findLongestMatch!278 (regex!3067 (rule!4867 lt!556425)) lt!556427))))

(declare-fun ruleValid!711 (LexerInterface!2696 Rule!5934) Bool)

(assert (=> d!471604 (ruleValid!711 thiss!17113 (rule!4867 lt!556425))))

(assert (=> d!471604 (= (maxPrefixOneRule!731 thiss!17113 (rule!4867 lt!556425) lt!556427) lt!557777)))

(declare-fun b!1585238 () Bool)

(assert (=> b!1585238 (= e!1018207 (= (size!14000 (_1!9845 (get!4978 lt!557777))) (size!14005 (originalCharacters!3881 (_1!9845 (get!4978 lt!557777))))))))

(declare-fun b!1585239 () Bool)

(declare-fun res!706963 () Bool)

(assert (=> b!1585239 (=> (not res!706963) (not e!1018207))))

(assert (=> b!1585239 (= res!706963 (= (rule!4867 (_1!9845 (get!4978 lt!557777))) (rule!4867 lt!556425)))))

(declare-fun b!1585240 () Bool)

(declare-fun res!706966 () Bool)

(assert (=> b!1585240 (=> (not res!706966) (not e!1018207))))

(assert (=> b!1585240 (= res!706966 (= (value!97082 (_1!9845 (get!4978 lt!557777))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!557777)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!557777)))))))))

(declare-fun b!1585241 () Bool)

(declare-fun res!706962 () Bool)

(assert (=> b!1585241 (=> (not res!706962) (not e!1018207))))

(assert (=> b!1585241 (= res!706962 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557777)))) (_2!9845 (get!4978 lt!557777))) lt!556427))))

(assert (= (and d!471604 c!256970) b!1585234))

(assert (= (and d!471604 (not c!256970)) b!1585235))

(assert (= (and b!1585235 (not res!706965)) b!1585237))

(assert (= (and d!471604 (not res!706964)) b!1585236))

(assert (= (and b!1585236 res!706961) b!1585241))

(assert (= (and b!1585241 res!706962) b!1585233))

(assert (= (and b!1585233 res!706967) b!1585239))

(assert (= (and b!1585239 res!706963) b!1585240))

(assert (= (and b!1585240 res!706966) b!1585238))

(declare-fun m!1874111 () Bool)

(assert (=> b!1585235 m!1874111))

(declare-fun m!1874115 () Bool)

(assert (=> b!1585235 m!1874115))

(declare-fun m!1874117 () Bool)

(assert (=> b!1585235 m!1874117))

(assert (=> b!1585235 m!1874115))

(declare-fun m!1874119 () Bool)

(assert (=> b!1585235 m!1874119))

(assert (=> b!1585235 m!1874115))

(declare-fun m!1874121 () Bool)

(assert (=> b!1585235 m!1874121))

(declare-fun m!1874123 () Bool)

(assert (=> b!1585235 m!1874123))

(declare-fun m!1874125 () Bool)

(assert (=> b!1585235 m!1874125))

(assert (=> b!1585235 m!1874115))

(declare-fun m!1874129 () Bool)

(assert (=> b!1585235 m!1874129))

(assert (=> b!1585235 m!1874119))

(assert (=> b!1585235 m!1874111))

(declare-fun m!1874133 () Bool)

(assert (=> b!1585235 m!1874133))

(declare-fun m!1874137 () Bool)

(assert (=> b!1585238 m!1874137))

(declare-fun m!1874139 () Bool)

(assert (=> b!1585238 m!1874139))

(assert (=> b!1585233 m!1874137))

(declare-fun m!1874141 () Bool)

(assert (=> b!1585233 m!1874141))

(assert (=> b!1585233 m!1874111))

(assert (=> b!1585237 m!1874119))

(assert (=> b!1585237 m!1874111))

(assert (=> b!1585237 m!1874119))

(assert (=> b!1585237 m!1874111))

(assert (=> b!1585237 m!1874133))

(declare-fun m!1874143 () Bool)

(assert (=> b!1585237 m!1874143))

(assert (=> b!1585236 m!1874137))

(declare-fun m!1874145 () Bool)

(assert (=> b!1585236 m!1874145))

(assert (=> b!1585236 m!1874145))

(declare-fun m!1874147 () Bool)

(assert (=> b!1585236 m!1874147))

(assert (=> b!1585236 m!1874147))

(declare-fun m!1874149 () Bool)

(assert (=> b!1585236 m!1874149))

(assert (=> b!1585240 m!1874137))

(declare-fun m!1874151 () Bool)

(assert (=> b!1585240 m!1874151))

(assert (=> b!1585240 m!1874151))

(declare-fun m!1874153 () Bool)

(assert (=> b!1585240 m!1874153))

(assert (=> b!1585241 m!1874137))

(assert (=> b!1585241 m!1874145))

(assert (=> b!1585241 m!1874145))

(assert (=> b!1585241 m!1874147))

(assert (=> b!1585241 m!1874147))

(declare-fun m!1874155 () Bool)

(assert (=> b!1585241 m!1874155))

(declare-fun m!1874157 () Bool)

(assert (=> d!471604 m!1874157))

(declare-fun m!1874159 () Bool)

(assert (=> d!471604 m!1874159))

(declare-fun m!1874161 () Bool)

(assert (=> d!471604 m!1874161))

(declare-fun m!1874163 () Bool)

(assert (=> d!471604 m!1874163))

(assert (=> b!1585239 m!1874137))

(assert (=> b!1583665 d!471604))

(assert (=> b!1583665 d!471186))

(declare-fun d!471680 () Bool)

(assert (=> d!471680 (= (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))) (isBalanced!1702 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))))))

(declare-fun bs!391356 () Bool)

(assert (= bs!391356 d!471680))

(declare-fun m!1874165 () Bool)

(assert (=> bs!391356 m!1874165))

(assert (=> tb!89099 d!471680))

(assert (=> b!1583472 d!470896))

(declare-fun d!471682 () Bool)

(assert (=> d!471682 (= (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))) (v!23994 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))

(assert (=> b!1583664 d!471682))

(assert (=> b!1583664 d!471174))

(declare-fun d!471684 () Bool)

(assert (=> d!471684 (= (isEmpty!10427 lt!556077) (not ((_ is Some!3127) lt!556077)))))

(assert (=> d!470762 d!471684))

(declare-fun b!1585258 () Bool)

(declare-fun e!1018216 () Bool)

(assert (=> b!1585258 (= e!1018216 (isPrefix!1327 (tail!2266 lt!555972) (tail!2266 lt!555972)))))

(declare-fun b!1585256 () Bool)

(declare-fun e!1018218 () Bool)

(assert (=> b!1585256 (= e!1018218 e!1018216)))

(declare-fun res!706977 () Bool)

(assert (=> b!1585256 (=> (not res!706977) (not e!1018216))))

(assert (=> b!1585256 (= res!706977 (not ((_ is Nil!17404) lt!555972)))))

(declare-fun d!471686 () Bool)

(declare-fun e!1018217 () Bool)

(assert (=> d!471686 e!1018217))

(declare-fun res!706978 () Bool)

(assert (=> d!471686 (=> res!706978 e!1018217)))

(declare-fun lt!557783 () Bool)

(assert (=> d!471686 (= res!706978 (not lt!557783))))

(assert (=> d!471686 (= lt!557783 e!1018218)))

(declare-fun res!706976 () Bool)

(assert (=> d!471686 (=> res!706976 e!1018218)))

(assert (=> d!471686 (= res!706976 ((_ is Nil!17404) lt!555972))))

(assert (=> d!471686 (= (isPrefix!1327 lt!555972 lt!555972) lt!557783)))

(declare-fun b!1585257 () Bool)

(declare-fun res!706979 () Bool)

(assert (=> b!1585257 (=> (not res!706979) (not e!1018216))))

(assert (=> b!1585257 (= res!706979 (= (head!3208 lt!555972) (head!3208 lt!555972)))))

(declare-fun b!1585259 () Bool)

(assert (=> b!1585259 (= e!1018217 (>= (size!14005 lt!555972) (size!14005 lt!555972)))))

(assert (= (and d!471686 (not res!706976)) b!1585256))

(assert (= (and b!1585256 res!706977) b!1585257))

(assert (= (and b!1585257 res!706979) b!1585258))

(assert (= (and d!471686 (not res!706978)) b!1585259))

(declare-fun m!1874167 () Bool)

(assert (=> b!1585258 m!1874167))

(assert (=> b!1585258 m!1874167))

(assert (=> b!1585258 m!1874167))

(assert (=> b!1585258 m!1874167))

(declare-fun m!1874169 () Bool)

(assert (=> b!1585258 m!1874169))

(declare-fun m!1874171 () Bool)

(assert (=> b!1585257 m!1874171))

(assert (=> b!1585257 m!1874171))

(assert (=> b!1585259 m!1870115))

(assert (=> b!1585259 m!1870115))

(assert (=> d!470762 d!471686))

(declare-fun d!471688 () Bool)

(assert (=> d!471688 (isPrefix!1327 lt!555972 lt!555972)))

(declare-fun lt!557790 () Unit!27203)

(declare-fun choose!9489 (List!17474 List!17474) Unit!27203)

(assert (=> d!471688 (= lt!557790 (choose!9489 lt!555972 lt!555972))))

(assert (=> d!471688 (= (lemmaIsPrefixRefl!916 lt!555972 lt!555972) lt!557790)))

(declare-fun bs!391357 () Bool)

(assert (= bs!391357 d!471688))

(assert (=> bs!391357 m!1870107))

(declare-fun m!1874173 () Bool)

(assert (=> bs!391357 m!1874173))

(assert (=> d!470762 d!471688))

(declare-fun bs!391359 () Bool)

(declare-fun d!471690 () Bool)

(assert (= bs!391359 (and d!471690 d!471510)))

(declare-fun lambda!66570 () Int)

(assert (=> bs!391359 (= lambda!66570 lambda!66558)))

(assert (=> d!471690 true))

(declare-fun lt!557795 () Bool)

(assert (=> d!471690 (= lt!557795 (forall!4003 rules!1846 lambda!66570))))

(declare-fun e!1018226 () Bool)

(assert (=> d!471690 (= lt!557795 e!1018226)))

(declare-fun res!706985 () Bool)

(assert (=> d!471690 (=> res!706985 e!1018226)))

(assert (=> d!471690 (= res!706985 (not ((_ is Cons!17406) rules!1846)))))

(assert (=> d!471690 (= (rulesValidInductive!918 thiss!17113 rules!1846) lt!557795)))

(declare-fun b!1585270 () Bool)

(declare-fun e!1018227 () Bool)

(assert (=> b!1585270 (= e!1018226 e!1018227)))

(declare-fun res!706984 () Bool)

(assert (=> b!1585270 (=> (not res!706984) (not e!1018227))))

(assert (=> b!1585270 (= res!706984 (ruleValid!711 thiss!17113 (h!22807 rules!1846)))))

(declare-fun b!1585271 () Bool)

(assert (=> b!1585271 (= e!1018227 (rulesValidInductive!918 thiss!17113 (t!143961 rules!1846)))))

(assert (= (and d!471690 (not res!706985)) b!1585270))

(assert (= (and b!1585270 res!706984) b!1585271))

(declare-fun m!1874181 () Bool)

(assert (=> d!471690 m!1874181))

(declare-fun m!1874183 () Bool)

(assert (=> b!1585270 m!1874183))

(declare-fun m!1874185 () Bool)

(assert (=> b!1585271 m!1874185))

(assert (=> d!470762 d!471690))

(declare-fun b!1585272 () Bool)

(declare-fun e!1018229 () List!17474)

(assert (=> b!1585272 (= e!1018229 (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))

(declare-fun b!1585274 () Bool)

(declare-fun res!706986 () Bool)

(declare-fun e!1018228 () Bool)

(assert (=> b!1585274 (=> (not res!706986) (not e!1018228))))

(declare-fun lt!557796 () List!17474)

(assert (=> b!1585274 (= res!706986 (= (size!14005 lt!557796) (+ (size!14005 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (size!14005 (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))))))

(declare-fun b!1585275 () Bool)

(assert (=> b!1585275 (= e!1018228 (or (not (= (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))) Nil!17404)) (= lt!557796 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))))))

(declare-fun b!1585273 () Bool)

(assert (=> b!1585273 (= e!1018229 (Cons!17404 (h!22805 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (++!4529 (t!143959 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))))

(declare-fun d!471694 () Bool)

(assert (=> d!471694 e!1018228))

(declare-fun res!706987 () Bool)

(assert (=> d!471694 (=> (not res!706987) (not e!1018228))))

(assert (=> d!471694 (= res!706987 (= (content!2394 lt!557796) ((_ map or) (content!2394 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (content!2394 (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))))))

(assert (=> d!471694 (= lt!557796 e!1018229)))

(declare-fun c!256977 () Bool)

(assert (=> d!471694 (= c!256977 ((_ is Nil!17404) (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))))

(assert (=> d!471694 (= (++!4529 (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))) (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405)))) lt!557796)))

(assert (= (and d!471694 c!256977) b!1585272))

(assert (= (and d!471694 (not c!256977)) b!1585273))

(assert (= (and d!471694 res!706987) b!1585274))

(assert (= (and b!1585274 res!706986) b!1585275))

(declare-fun m!1874187 () Bool)

(assert (=> b!1585274 m!1874187))

(assert (=> b!1585274 m!1870133))

(declare-fun m!1874189 () Bool)

(assert (=> b!1585274 m!1874189))

(assert (=> b!1585274 m!1870135))

(declare-fun m!1874191 () Bool)

(assert (=> b!1585274 m!1874191))

(assert (=> b!1585273 m!1870135))

(declare-fun m!1874193 () Bool)

(assert (=> b!1585273 m!1874193))

(declare-fun m!1874195 () Bool)

(assert (=> d!471694 m!1874195))

(assert (=> d!471694 m!1870133))

(declare-fun m!1874197 () Bool)

(assert (=> d!471694 m!1874197))

(assert (=> d!471694 m!1870135))

(declare-fun m!1874199 () Bool)

(assert (=> d!471694 m!1874199))

(assert (=> b!1583411 d!471694))

(declare-fun d!471696 () Bool)

(assert (=> d!471696 (= (list!6743 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))) (list!6747 (c!256547 (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))))

(declare-fun bs!391360 () Bool)

(assert (= bs!391360 d!471696))

(declare-fun m!1874201 () Bool)

(assert (=> bs!391360 m!1874201))

(assert (=> b!1583411 d!471696))

(declare-fun d!471698 () Bool)

(declare-fun lt!557797 () BalanceConc!11508)

(assert (=> d!471698 (= (list!6743 lt!557797) (originalCharacters!3881 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))

(assert (=> d!471698 (= lt!557797 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (value!97082 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))))

(assert (=> d!471698 (= (charsOf!1716 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))) lt!557797)))

(declare-fun b_lambda!49873 () Bool)

(assert (=> (not b_lambda!49873) (not d!471698)))

(declare-fun tb!89191 () Bool)

(declare-fun t!144108 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) t!144108) tb!89191))

(declare-fun b!1585276 () Bool)

(declare-fun e!1018230 () Bool)

(declare-fun tp!466011 () Bool)

(assert (=> b!1585276 (= e!1018230 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (value!97082 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) tp!466011))))

(declare-fun result!107954 () Bool)

(assert (=> tb!89191 (= result!107954 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (value!97082 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) e!1018230))))

(assert (= tb!89191 b!1585276))

(declare-fun m!1874203 () Bool)

(assert (=> b!1585276 m!1874203))

(declare-fun m!1874205 () Bool)

(assert (=> tb!89191 m!1874205))

(assert (=> d!471698 t!144108))

(declare-fun b_and!111125 () Bool)

(assert (= b_and!111101 (and (=> t!144108 result!107954) b_and!111125)))

(declare-fun t!144110 () Bool)

(declare-fun tb!89193 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) t!144110) tb!89193))

(declare-fun result!107956 () Bool)

(assert (= result!107956 result!107954))

(assert (=> d!471698 t!144110))

(declare-fun b_and!111127 () Bool)

(assert (= b_and!111103 (and (=> t!144110 result!107956) b_and!111127)))

(declare-fun t!144112 () Bool)

(declare-fun tb!89195 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) t!144112) tb!89195))

(declare-fun result!107958 () Bool)

(assert (= result!107958 result!107954))

(assert (=> d!471698 t!144112))

(declare-fun b_and!111129 () Bool)

(assert (= b_and!111105 (and (=> t!144112 result!107958) b_and!111129)))

(declare-fun tb!89197 () Bool)

(declare-fun t!144114 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) t!144114) tb!89197))

(declare-fun result!107960 () Bool)

(assert (= result!107960 result!107954))

(assert (=> d!471698 t!144114))

(declare-fun b_and!111131 () Bool)

(assert (= b_and!111107 (and (=> t!144114 result!107960) b_and!111131)))

(declare-fun m!1874207 () Bool)

(assert (=> d!471698 m!1874207))

(declare-fun m!1874209 () Bool)

(assert (=> d!471698 m!1874209))

(assert (=> b!1583411 d!471698))

(declare-fun d!471700 () Bool)

(declare-fun c!256982 () Bool)

(assert (=> d!471700 (= c!256982 ((_ is Cons!17405) (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))

(declare-fun e!1018236 () List!17474)

(assert (=> d!471700 (= (printList!811 thiss!17113 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))) e!1018236)))

(declare-fun b!1585287 () Bool)

(assert (=> b!1585287 (= e!1018236 (++!4529 (list!6743 (charsOf!1716 (h!22806 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))))) (printList!811 thiss!17113 (t!143960 (t!143960 (Cons!17405 (h!22806 tokens!457) Nil!17405))))))))

(declare-fun b!1585288 () Bool)

(assert (=> b!1585288 (= e!1018236 Nil!17404)))

(assert (= (and d!471700 c!256982) b!1585287))

(assert (= (and d!471700 (not c!256982)) b!1585288))

(declare-fun m!1874211 () Bool)

(assert (=> b!1585287 m!1874211))

(assert (=> b!1585287 m!1874211))

(declare-fun m!1874213 () Bool)

(assert (=> b!1585287 m!1874213))

(declare-fun m!1874215 () Bool)

(assert (=> b!1585287 m!1874215))

(assert (=> b!1585287 m!1874213))

(assert (=> b!1585287 m!1874215))

(declare-fun m!1874217 () Bool)

(assert (=> b!1585287 m!1874217))

(assert (=> b!1583411 d!471700))

(declare-fun d!471702 () Bool)

(declare-fun e!1018243 () Bool)

(assert (=> d!471702 e!1018243))

(declare-fun res!706992 () Bool)

(assert (=> d!471702 (=> (not res!706992) (not e!1018243))))

(declare-fun lt!557800 () BalanceConc!11510)

(assert (=> d!471702 (= res!706992 (= (list!6744 lt!557800) (t!143960 (t!143960 tokens!457))))))

(assert (=> d!471702 (= lt!557800 (BalanceConc!11511 (fromList!363 (t!143960 (t!143960 tokens!457)))))))

(assert (=> d!471702 (= (fromListB!806 (t!143960 (t!143960 tokens!457))) lt!557800)))

(declare-fun b!1585299 () Bool)

(assert (=> b!1585299 (= e!1018243 (isBalanced!1700 (fromList!363 (t!143960 (t!143960 tokens!457)))))))

(assert (= (and d!471702 res!706992) b!1585299))

(declare-fun m!1874219 () Bool)

(assert (=> d!471702 m!1874219))

(declare-fun m!1874221 () Bool)

(assert (=> d!471702 m!1874221))

(assert (=> b!1585299 m!1874221))

(assert (=> b!1585299 m!1874221))

(declare-fun m!1874223 () Bool)

(assert (=> b!1585299 m!1874223))

(assert (=> d!470854 d!471702))

(declare-fun d!471704 () Bool)

(declare-fun c!256987 () Bool)

(assert (=> d!471704 (= c!256987 ((_ is Empty!5782) (c!256547 lt!555961)))))

(declare-fun e!1018245 () List!17474)

(assert (=> d!471704 (= (list!6747 (c!256547 lt!555961)) e!1018245)))

(declare-fun b!1585301 () Bool)

(declare-fun e!1018246 () List!17474)

(assert (=> b!1585301 (= e!1018245 e!1018246)))

(declare-fun c!256988 () Bool)

(assert (=> b!1585301 (= c!256988 ((_ is Leaf!8536) (c!256547 lt!555961)))))

(declare-fun b!1585303 () Bool)

(assert (=> b!1585303 (= e!1018246 (++!4529 (list!6747 (left!14061 (c!256547 lt!555961))) (list!6747 (right!14391 (c!256547 lt!555961)))))))

(declare-fun b!1585300 () Bool)

(assert (=> b!1585300 (= e!1018245 Nil!17404)))

(declare-fun b!1585302 () Bool)

(assert (=> b!1585302 (= e!1018246 (list!6750 (xs!8586 (c!256547 lt!555961))))))

(assert (= (and d!471704 c!256987) b!1585300))

(assert (= (and d!471704 (not c!256987)) b!1585301))

(assert (= (and b!1585301 c!256988) b!1585302))

(assert (= (and b!1585301 (not c!256988)) b!1585303))

(declare-fun m!1874225 () Bool)

(assert (=> b!1585303 m!1874225))

(declare-fun m!1874227 () Bool)

(assert (=> b!1585303 m!1874227))

(assert (=> b!1585303 m!1874225))

(assert (=> b!1585303 m!1874227))

(declare-fun m!1874229 () Bool)

(assert (=> b!1585303 m!1874229))

(declare-fun m!1874231 () Bool)

(assert (=> b!1585302 m!1874231))

(assert (=> d!470814 d!471704))

(declare-fun d!471706 () Bool)

(declare-fun lt!557801 () Bool)

(assert (=> d!471706 (= lt!557801 (isEmpty!10428 (list!6744 (_1!9844 lt!556158))))))

(assert (=> d!471706 (= lt!557801 (isEmpty!10429 (c!256549 (_1!9844 lt!556158))))))

(assert (=> d!471706 (= (isEmpty!10422 (_1!9844 lt!556158)) lt!557801)))

(declare-fun bs!391361 () Bool)

(assert (= bs!391361 d!471706))

(assert (=> bs!391361 m!1870287))

(assert (=> bs!391361 m!1870287))

(declare-fun m!1874233 () Bool)

(assert (=> bs!391361 m!1874233))

(declare-fun m!1874235 () Bool)

(assert (=> bs!391361 m!1874235))

(assert (=> b!1583490 d!471706))

(declare-fun d!471708 () Bool)

(assert (=> d!471708 (= (list!6743 lt!556460) (list!6747 (c!256547 lt!556460)))))

(declare-fun bs!391362 () Bool)

(assert (= bs!391362 d!471708))

(declare-fun m!1874237 () Bool)

(assert (=> bs!391362 m!1874237))

(assert (=> d!470932 d!471708))

(declare-fun b!1585304 () Bool)

(declare-fun e!1018247 () Bool)

(assert (=> b!1585304 (= e!1018247 (not (= (head!3208 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) (c!256548 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))))))))

(declare-fun b!1585305 () Bool)

(declare-fun e!1018250 () Bool)

(declare-fun e!1018253 () Bool)

(assert (=> b!1585305 (= e!1018250 e!1018253)))

(declare-fun res!706998 () Bool)

(assert (=> b!1585305 (=> (not res!706998) (not e!1018253))))

(declare-fun lt!557802 () Bool)

(assert (=> b!1585305 (= res!706998 (not lt!557802))))

(declare-fun b!1585306 () Bool)

(declare-fun e!1018251 () Bool)

(assert (=> b!1585306 (= e!1018251 (matchR!1916 (derivativeStep!1044 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))) (head!3208 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))))) (tail!2266 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))))))))

(declare-fun b!1585307 () Bool)

(declare-fun e!1018249 () Bool)

(assert (=> b!1585307 (= e!1018249 (= (head!3208 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) (c!256548 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))))))

(declare-fun d!471710 () Bool)

(declare-fun e!1018248 () Bool)

(assert (=> d!471710 e!1018248))

(declare-fun c!256991 () Bool)

(assert (=> d!471710 (= c!256991 ((_ is EmptyExpr!4395) (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))))))

(assert (=> d!471710 (= lt!557802 e!1018251)))

(declare-fun c!256989 () Bool)

(assert (=> d!471710 (= c!256989 (isEmpty!10432 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))))))

(assert (=> d!471710 (validRegex!1734 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))))

(assert (=> d!471710 (= (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))) lt!557802)))

(declare-fun b!1585308 () Bool)

(declare-fun res!706999 () Bool)

(assert (=> b!1585308 (=> res!706999 e!1018250)))

(assert (=> b!1585308 (= res!706999 e!1018249)))

(declare-fun res!706994 () Bool)

(assert (=> b!1585308 (=> (not res!706994) (not e!1018249))))

(assert (=> b!1585308 (= res!706994 lt!557802)))

(declare-fun b!1585309 () Bool)

(declare-fun res!706993 () Bool)

(assert (=> b!1585309 (=> res!706993 e!1018247)))

(assert (=> b!1585309 (= res!706993 (not (isEmpty!10432 (tail!2266 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))))))))

(declare-fun b!1585310 () Bool)

(declare-fun e!1018252 () Bool)

(assert (=> b!1585310 (= e!1018248 e!1018252)))

(declare-fun c!256990 () Bool)

(assert (=> b!1585310 (= c!256990 ((_ is EmptyLang!4395) (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))))))

(declare-fun b!1585311 () Bool)

(declare-fun res!706997 () Bool)

(assert (=> b!1585311 (=> (not res!706997) (not e!1018249))))

(declare-fun call!102900 () Bool)

(assert (=> b!1585311 (= res!706997 (not call!102900))))

(declare-fun b!1585312 () Bool)

(declare-fun res!706996 () Bool)

(assert (=> b!1585312 (=> (not res!706996) (not e!1018249))))

(assert (=> b!1585312 (= res!706996 (isEmpty!10432 (tail!2266 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077)))))))))

(declare-fun b!1585313 () Bool)

(assert (=> b!1585313 (= e!1018248 (= lt!557802 call!102900))))

(declare-fun b!1585314 () Bool)

(assert (=> b!1585314 (= e!1018252 (not lt!557802))))

(declare-fun b!1585315 () Bool)

(declare-fun res!706995 () Bool)

(assert (=> b!1585315 (=> res!706995 e!1018250)))

(assert (=> b!1585315 (= res!706995 (not ((_ is ElementMatch!4395) (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))))))

(assert (=> b!1585315 (= e!1018252 e!1018250)))

(declare-fun b!1585316 () Bool)

(assert (=> b!1585316 (= e!1018253 e!1018247)))

(declare-fun res!707000 () Bool)

(assert (=> b!1585316 (=> res!707000 e!1018247)))

(assert (=> b!1585316 (= res!707000 call!102900)))

(declare-fun bm!102895 () Bool)

(assert (=> bm!102895 (= call!102900 (isEmpty!10432 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!556077))))))))

(declare-fun b!1585317 () Bool)

(assert (=> b!1585317 (= e!1018251 (nullable!1293 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!556077))))))))

(assert (= (and d!471710 c!256989) b!1585317))

(assert (= (and d!471710 (not c!256989)) b!1585306))

(assert (= (and d!471710 c!256991) b!1585313))

(assert (= (and d!471710 (not c!256991)) b!1585310))

(assert (= (and b!1585310 c!256990) b!1585314))

(assert (= (and b!1585310 (not c!256990)) b!1585315))

(assert (= (and b!1585315 (not res!706995)) b!1585308))

(assert (= (and b!1585308 res!706994) b!1585311))

(assert (= (and b!1585311 res!706997) b!1585312))

(assert (= (and b!1585312 res!706996) b!1585307))

(assert (= (and b!1585308 (not res!706999)) b!1585305))

(assert (= (and b!1585305 res!706998) b!1585316))

(assert (= (and b!1585316 (not res!707000)) b!1585309))

(assert (= (and b!1585309 (not res!706993)) b!1585304))

(assert (= (or b!1585313 b!1585311 b!1585316) bm!102895))

(assert (=> bm!102895 m!1870121))

(declare-fun m!1874239 () Bool)

(assert (=> bm!102895 m!1874239))

(assert (=> b!1585309 m!1870121))

(declare-fun m!1874241 () Bool)

(assert (=> b!1585309 m!1874241))

(assert (=> b!1585309 m!1874241))

(declare-fun m!1874243 () Bool)

(assert (=> b!1585309 m!1874243))

(assert (=> b!1585312 m!1870121))

(assert (=> b!1585312 m!1874241))

(assert (=> b!1585312 m!1874241))

(assert (=> b!1585312 m!1874243))

(declare-fun m!1874245 () Bool)

(assert (=> b!1585317 m!1874245))

(assert (=> b!1585307 m!1870121))

(declare-fun m!1874247 () Bool)

(assert (=> b!1585307 m!1874247))

(assert (=> b!1585306 m!1870121))

(assert (=> b!1585306 m!1874247))

(assert (=> b!1585306 m!1874247))

(declare-fun m!1874249 () Bool)

(assert (=> b!1585306 m!1874249))

(assert (=> b!1585306 m!1870121))

(assert (=> b!1585306 m!1874241))

(assert (=> b!1585306 m!1874249))

(assert (=> b!1585306 m!1874241))

(declare-fun m!1874251 () Bool)

(assert (=> b!1585306 m!1874251))

(assert (=> b!1585304 m!1870121))

(assert (=> b!1585304 m!1874247))

(assert (=> d!471710 m!1870121))

(assert (=> d!471710 m!1874239))

(declare-fun m!1874253 () Bool)

(assert (=> d!471710 m!1874253))

(assert (=> b!1583406 d!471710))

(assert (=> b!1583406 d!471134))

(assert (=> b!1583406 d!471130))

(assert (=> b!1583406 d!471132))

(declare-fun d!471712 () Bool)

(declare-fun c!256996 () Bool)

(assert (=> d!471712 (= c!256996 ((_ is Empty!5782) (c!256547 lt!555977)))))

(declare-fun e!1018260 () List!17474)

(assert (=> d!471712 (= (list!6747 (c!256547 lt!555977)) e!1018260)))

(declare-fun b!1585329 () Bool)

(declare-fun e!1018261 () List!17474)

(assert (=> b!1585329 (= e!1018260 e!1018261)))

(declare-fun c!256997 () Bool)

(assert (=> b!1585329 (= c!256997 ((_ is Leaf!8536) (c!256547 lt!555977)))))

(declare-fun b!1585331 () Bool)

(assert (=> b!1585331 (= e!1018261 (++!4529 (list!6747 (left!14061 (c!256547 lt!555977))) (list!6747 (right!14391 (c!256547 lt!555977)))))))

(declare-fun b!1585328 () Bool)

(assert (=> b!1585328 (= e!1018260 Nil!17404)))

(declare-fun b!1585330 () Bool)

(assert (=> b!1585330 (= e!1018261 (list!6750 (xs!8586 (c!256547 lt!555977))))))

(assert (= (and d!471712 c!256996) b!1585328))

(assert (= (and d!471712 (not c!256996)) b!1585329))

(assert (= (and b!1585329 c!256997) b!1585330))

(assert (= (and b!1585329 (not c!256997)) b!1585331))

(assert (=> b!1585331 m!1873591))

(assert (=> b!1585331 m!1873593))

(assert (=> b!1585331 m!1873591))

(assert (=> b!1585331 m!1873593))

(declare-fun m!1874255 () Bool)

(assert (=> b!1585331 m!1874255))

(declare-fun m!1874257 () Bool)

(assert (=> b!1585330 m!1874257))

(assert (=> d!470812 d!471712))

(declare-fun b!1585332 () Bool)

(declare-fun e!1018263 () Bool)

(assert (=> b!1585332 (= e!1018263 (inv!16 (value!97082 (h!22806 (t!143960 tokens!457)))))))

(declare-fun b!1585333 () Bool)

(declare-fun e!1018264 () Bool)

(assert (=> b!1585333 (= e!1018263 e!1018264)))

(declare-fun c!256998 () Bool)

(assert (=> b!1585333 (= c!256998 ((_ is IntegerValue!9472) (value!97082 (h!22806 (t!143960 tokens!457)))))))

(declare-fun b!1585334 () Bool)

(declare-fun e!1018262 () Bool)

(assert (=> b!1585334 (= e!1018262 (inv!15 (value!97082 (h!22806 (t!143960 tokens!457)))))))

(declare-fun d!471714 () Bool)

(declare-fun c!256999 () Bool)

(assert (=> d!471714 (= c!256999 ((_ is IntegerValue!9471) (value!97082 (h!22806 (t!143960 tokens!457)))))))

(assert (=> d!471714 (= (inv!21 (value!97082 (h!22806 (t!143960 tokens!457)))) e!1018263)))

(declare-fun b!1585335 () Bool)

(assert (=> b!1585335 (= e!1018264 (inv!17 (value!97082 (h!22806 (t!143960 tokens!457)))))))

(declare-fun b!1585336 () Bool)

(declare-fun res!707003 () Bool)

(assert (=> b!1585336 (=> res!707003 e!1018262)))

(assert (=> b!1585336 (= res!707003 (not ((_ is IntegerValue!9473) (value!97082 (h!22806 (t!143960 tokens!457))))))))

(assert (=> b!1585336 (= e!1018264 e!1018262)))

(assert (= (and d!471714 c!256999) b!1585332))

(assert (= (and d!471714 (not c!256999)) b!1585333))

(assert (= (and b!1585333 c!256998) b!1585335))

(assert (= (and b!1585333 (not c!256998)) b!1585336))

(assert (= (and b!1585336 (not res!707003)) b!1585334))

(declare-fun m!1874269 () Bool)

(assert (=> b!1585332 m!1874269))

(declare-fun m!1874273 () Bool)

(assert (=> b!1585334 m!1874273))

(declare-fun m!1874277 () Bool)

(assert (=> b!1585335 m!1874277))

(assert (=> b!1583821 d!471714))

(declare-fun d!471716 () Bool)

(declare-fun lt!557804 () Int)

(assert (=> d!471716 (= lt!557804 (size!14005 (list!6743 (_2!9844 lt!556158))))))

(assert (=> d!471716 (= lt!557804 (size!14013 (c!256547 (_2!9844 lt!556158))))))

(assert (=> d!471716 (= (size!14006 (_2!9844 lt!556158)) lt!557804)))

(declare-fun bs!391364 () Bool)

(assert (= bs!391364 d!471716))

(assert (=> bs!391364 m!1870301))

(assert (=> bs!391364 m!1870301))

(declare-fun m!1874285 () Bool)

(assert (=> bs!391364 m!1874285))

(declare-fun m!1874287 () Bool)

(assert (=> bs!391364 m!1874287))

(assert (=> b!1583489 d!471716))

(declare-fun d!471720 () Bool)

(declare-fun lt!557805 () Int)

(assert (=> d!471720 (= lt!557805 (size!14005 (list!6743 lt!555961)))))

(assert (=> d!471720 (= lt!557805 (size!14013 (c!256547 lt!555961)))))

(assert (=> d!471720 (= (size!14006 lt!555961) lt!557805)))

(declare-fun bs!391365 () Bool)

(assert (= bs!391365 d!471720))

(assert (=> bs!391365 m!1869873))

(assert (=> bs!391365 m!1869873))

(assert (=> bs!391365 m!1870979))

(declare-fun m!1874289 () Bool)

(assert (=> bs!391365 m!1874289))

(assert (=> b!1583489 d!471720))

(declare-fun d!471722 () Bool)

(declare-fun lt!557806 () BalanceConc!11508)

(assert (=> d!471722 (= (list!6743 lt!557806) (printList!811 thiss!17113 (list!6744 (singletonSeq!1412 (h!22806 tokens!457)))))))

(assert (=> d!471722 (= lt!557806 (printTailRec!749 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)) 0 (BalanceConc!11509 Empty!5782)))))

(assert (=> d!471722 (= (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))) lt!557806)))

(declare-fun bs!391366 () Bool)

(assert (= bs!391366 d!471722))

(declare-fun m!1874291 () Bool)

(assert (=> bs!391366 m!1874291))

(assert (=> bs!391366 m!1869917))

(assert (=> bs!391366 m!1870799))

(assert (=> bs!391366 m!1870799))

(declare-fun m!1874293 () Bool)

(assert (=> bs!391366 m!1874293))

(assert (=> bs!391366 m!1869917))

(declare-fun m!1874295 () Bool)

(assert (=> bs!391366 m!1874295))

(assert (=> d!470896 d!471722))

(assert (=> d!470896 d!470934))

(declare-fun d!471724 () Bool)

(declare-fun e!1018267 () Bool)

(assert (=> d!471724 e!1018267))

(declare-fun res!707004 () Bool)

(assert (=> d!471724 (=> (not res!707004) (not e!1018267))))

(declare-fun e!1018265 () Bool)

(assert (=> d!471724 (= res!707004 e!1018265)))

(declare-fun c!257000 () Bool)

(declare-fun lt!557807 () tuple2!16884)

(assert (=> d!471724 (= c!257000 (> (size!14004 (_1!9844 lt!557807)) 0))))

(assert (=> d!471724 (= lt!557807 (lexTailRecV2!507 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))) (BalanceConc!11509 Empty!5782) (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))) (BalanceConc!11511 Empty!5783)))))

(assert (=> d!471724 (= (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))) lt!557807)))

(declare-fun b!1585337 () Bool)

(assert (=> b!1585337 (= e!1018265 (= (_2!9844 lt!557807) (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))))))

(declare-fun b!1585338 () Bool)

(assert (=> b!1585338 (= e!1018267 (= (list!6743 (_2!9844 lt!557807)) (_2!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))))))))))

(declare-fun b!1585339 () Bool)

(declare-fun e!1018266 () Bool)

(assert (=> b!1585339 (= e!1018265 e!1018266)))

(declare-fun res!707006 () Bool)

(assert (=> b!1585339 (= res!707006 (< (size!14006 (_2!9844 lt!557807)) (size!14006 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))))))))

(assert (=> b!1585339 (=> (not res!707006) (not e!1018266))))

(declare-fun b!1585340 () Bool)

(assert (=> b!1585340 (= e!1018266 (not (isEmpty!10422 (_1!9844 lt!557807))))))

(declare-fun b!1585341 () Bool)

(declare-fun res!707005 () Bool)

(assert (=> b!1585341 (=> (not res!707005) (not e!1018267))))

(assert (=> b!1585341 (= res!707005 (= (list!6744 (_1!9844 lt!557807)) (_1!9846 (lexList!784 thiss!17113 rules!1846 (list!6743 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))))))))))

(assert (= (and d!471724 c!257000) b!1585339))

(assert (= (and d!471724 (not c!257000)) b!1585337))

(assert (= (and b!1585339 res!707006) b!1585340))

(assert (= (and d!471724 res!707004) b!1585341))

(assert (= (and b!1585341 res!707005) b!1585338))

(declare-fun m!1874297 () Bool)

(assert (=> b!1585341 m!1874297))

(assert (=> b!1585341 m!1870795))

(declare-fun m!1874299 () Bool)

(assert (=> b!1585341 m!1874299))

(assert (=> b!1585341 m!1874299))

(declare-fun m!1874301 () Bool)

(assert (=> b!1585341 m!1874301))

(declare-fun m!1874303 () Bool)

(assert (=> b!1585340 m!1874303))

(declare-fun m!1874305 () Bool)

(assert (=> b!1585339 m!1874305))

(assert (=> b!1585339 m!1870795))

(declare-fun m!1874307 () Bool)

(assert (=> b!1585339 m!1874307))

(declare-fun m!1874309 () Bool)

(assert (=> d!471724 m!1874309))

(assert (=> d!471724 m!1870795))

(assert (=> d!471724 m!1870795))

(declare-fun m!1874311 () Bool)

(assert (=> d!471724 m!1874311))

(declare-fun m!1874313 () Bool)

(assert (=> b!1585338 m!1874313))

(assert (=> b!1585338 m!1870795))

(assert (=> b!1585338 m!1874299))

(assert (=> b!1585338 m!1874299))

(assert (=> b!1585338 m!1874301))

(assert (=> d!470896 d!471724))

(declare-fun d!471726 () Bool)

(assert (=> d!471726 (= (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))))) (list!6748 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))))))))))

(declare-fun bs!391367 () Bool)

(assert (= bs!391367 d!471726))

(declare-fun m!1874315 () Bool)

(assert (=> bs!391367 m!1874315))

(assert (=> d!470896 d!471726))

(declare-fun d!471728 () Bool)

(assert (=> d!471728 (= (list!6744 (singletonSeq!1412 (h!22806 tokens!457))) (list!6748 (c!256549 (singletonSeq!1412 (h!22806 tokens!457)))))))

(declare-fun bs!391368 () Bool)

(assert (= bs!391368 d!471728))

(declare-fun m!1874317 () Bool)

(assert (=> bs!391368 m!1874317))

(assert (=> d!470896 d!471728))

(declare-fun d!471730 () Bool)

(declare-fun lt!557810 () Int)

(assert (=> d!471730 (= lt!557810 (size!14007 (list!6744 (_1!9844 lt!556446))))))

(assert (=> d!471730 (= lt!557810 (size!14010 (c!256549 (_1!9844 lt!556446))))))

(assert (=> d!471730 (= (size!14004 (_1!9844 lt!556446)) lt!557810)))

(declare-fun bs!391369 () Bool)

(assert (= bs!391369 d!471730))

(assert (=> bs!391369 m!1872437))

(assert (=> bs!391369 m!1872437))

(declare-fun m!1874319 () Bool)

(assert (=> bs!391369 m!1874319))

(declare-fun m!1874321 () Bool)

(assert (=> bs!391369 m!1874321))

(assert (=> d!470896 d!471730))

(assert (=> d!470896 d!470772))

(declare-fun d!471732 () Bool)

(assert (=> d!471732 (= (list!6743 lt!556450) (list!6747 (c!256547 lt!556450)))))

(declare-fun bs!391370 () Bool)

(assert (= bs!391370 d!471732))

(declare-fun m!1874323 () Bool)

(assert (=> bs!391370 m!1874323))

(assert (=> d!470922 d!471732))

(declare-fun d!471734 () Bool)

(declare-fun e!1018273 () Bool)

(assert (=> d!471734 e!1018273))

(declare-fun res!707009 () Bool)

(assert (=> d!471734 (=> (not res!707009) (not e!1018273))))

(declare-fun lt!557814 () BalanceConc!11508)

(assert (=> d!471734 (= res!707009 (= (list!6743 lt!557814) (Cons!17404 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0) Nil!17404)))))

(declare-fun choose!9490 (C!8964) BalanceConc!11508)

(assert (=> d!471734 (= lt!557814 (choose!9490 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)))))

(assert (=> d!471734 (= (singleton!582 (apply!4236 (charsOf!1716 (h!22806 (t!143960 tokens!457))) 0)) lt!557814)))

(declare-fun b!1585350 () Bool)

(assert (=> b!1585350 (= e!1018273 (isBalanced!1702 (c!256547 lt!557814)))))

(assert (= (and d!471734 res!707009) b!1585350))

(declare-fun m!1874337 () Bool)

(assert (=> d!471734 m!1874337))

(assert (=> d!471734 m!1869923))

(declare-fun m!1874341 () Bool)

(assert (=> d!471734 m!1874341))

(declare-fun m!1874343 () Bool)

(assert (=> b!1585350 m!1874343))

(assert (=> d!470922 d!471734))

(declare-fun d!471742 () Bool)

(declare-fun lt!557815 () Bool)

(assert (=> d!471742 (= lt!557815 (isEmpty!10432 (list!6743 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))))))))))

(assert (=> d!471742 (= lt!557815 (isEmpty!10436 (c!256547 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457))))))))))

(assert (=> d!471742 (= (isEmpty!10433 (_2!9844 (lex!1180 thiss!17113 rules!1846 (print!1227 thiss!17113 (singletonSeq!1412 (h!22806 tokens!457)))))) lt!557815)))

(declare-fun bs!391374 () Bool)

(assert (= bs!391374 d!471742))

(declare-fun m!1874345 () Bool)

(assert (=> bs!391374 m!1874345))

(assert (=> bs!391374 m!1874345))

(declare-fun m!1874347 () Bool)

(assert (=> bs!391374 m!1874347))

(declare-fun m!1874349 () Bool)

(assert (=> bs!391374 m!1874349))

(assert (=> b!1583758 d!471742))

(assert (=> b!1583758 d!471724))

(assert (=> b!1583758 d!471722))

(assert (=> b!1583758 d!470772))

(declare-fun d!471746 () Bool)

(assert (=> d!471746 (= (inv!22818 (tag!3335 (h!22807 (t!143961 rules!1846)))) (= (mod (str.len (value!97081 (tag!3335 (h!22807 (t!143961 rules!1846))))) 2) 0))))

(assert (=> b!1583851 d!471746))

(declare-fun d!471748 () Bool)

(declare-fun res!707010 () Bool)

(declare-fun e!1018274 () Bool)

(assert (=> d!471748 (=> (not res!707010) (not e!1018274))))

(assert (=> d!471748 (= res!707010 (semiInverseModEq!1156 (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toValue!4474 (transformation!3067 (h!22807 (t!143961 rules!1846))))))))

(assert (=> d!471748 (= (inv!22821 (transformation!3067 (h!22807 (t!143961 rules!1846)))) e!1018274)))

(declare-fun b!1585351 () Bool)

(assert (=> b!1585351 (= e!1018274 (equivClasses!1097 (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toValue!4474 (transformation!3067 (h!22807 (t!143961 rules!1846))))))))

(assert (= (and d!471748 res!707010) b!1585351))

(declare-fun m!1874351 () Bool)

(assert (=> d!471748 m!1874351))

(declare-fun m!1874353 () Bool)

(assert (=> b!1585351 m!1874353))

(assert (=> b!1583851 d!471748))

(assert (=> b!1583801 d!471542))

(assert (=> b!1583801 d!471544))

(assert (=> b!1583801 d!471126))

(assert (=> b!1583801 d!471546))

(assert (=> b!1583801 d!471548))

(declare-fun b!1585352 () Bool)

(declare-fun res!707017 () Bool)

(declare-fun e!1018277 () Bool)

(assert (=> b!1585352 (=> (not res!707017) (not e!1018277))))

(declare-fun lt!557817 () Option!3128)

(assert (=> b!1585352 (= res!707017 (< (size!14005 (_2!9845 (get!4978 lt!557817))) (size!14005 lt!555972)))))

(declare-fun b!1585353 () Bool)

(declare-fun e!1018275 () Option!3128)

(assert (=> b!1585353 (= e!1018275 None!3127)))

(declare-fun b!1585354 () Bool)

(declare-fun lt!557820 () tuple2!16898)

(assert (=> b!1585354 (= e!1018275 (Some!3127 (tuple2!16887 (Token!5701 (apply!4242 (transformation!3067 (h!22807 rules!1846)) (seqFromList!1884 (_1!9851 lt!557820))) (h!22807 rules!1846) (size!14006 (seqFromList!1884 (_1!9851 lt!557820))) (_1!9851 lt!557820)) (_2!9851 lt!557820))))))

(declare-fun lt!557818 () Unit!27203)

(assert (=> b!1585354 (= lt!557818 (longestMatchIsAcceptedByMatchOrIsEmpty!335 (regex!3067 (h!22807 rules!1846)) lt!555972))))

(declare-fun res!707015 () Bool)

(assert (=> b!1585354 (= res!707015 (isEmpty!10432 (_1!9851 (findLongestMatchInner!351 (regex!3067 (h!22807 rules!1846)) Nil!17404 (size!14005 Nil!17404) lt!555972 lt!555972 (size!14005 lt!555972)))))))

(declare-fun e!1018276 () Bool)

(assert (=> b!1585354 (=> res!707015 e!1018276)))

(assert (=> b!1585354 e!1018276))

(declare-fun lt!557819 () Unit!27203)

(assert (=> b!1585354 (= lt!557819 lt!557818)))

(declare-fun lt!557816 () Unit!27203)

(assert (=> b!1585354 (= lt!557816 (lemmaSemiInverse!384 (transformation!3067 (h!22807 rules!1846)) (seqFromList!1884 (_1!9851 lt!557820))))))

(declare-fun b!1585355 () Bool)

(declare-fun e!1018278 () Bool)

(assert (=> b!1585355 (= e!1018278 e!1018277)))

(declare-fun res!707011 () Bool)

(assert (=> b!1585355 (=> (not res!707011) (not e!1018277))))

(assert (=> b!1585355 (= res!707011 (matchR!1916 (regex!3067 (h!22807 rules!1846)) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557817))))))))

(declare-fun b!1585356 () Bool)

(assert (=> b!1585356 (= e!1018276 (matchR!1916 (regex!3067 (h!22807 rules!1846)) (_1!9851 (findLongestMatchInner!351 (regex!3067 (h!22807 rules!1846)) Nil!17404 (size!14005 Nil!17404) lt!555972 lt!555972 (size!14005 lt!555972)))))))

(declare-fun d!471750 () Bool)

(assert (=> d!471750 e!1018278))

(declare-fun res!707014 () Bool)

(assert (=> d!471750 (=> res!707014 e!1018278)))

(assert (=> d!471750 (= res!707014 (isEmpty!10427 lt!557817))))

(assert (=> d!471750 (= lt!557817 e!1018275)))

(declare-fun c!257004 () Bool)

(assert (=> d!471750 (= c!257004 (isEmpty!10432 (_1!9851 lt!557820)))))

(assert (=> d!471750 (= lt!557820 (findLongestMatch!278 (regex!3067 (h!22807 rules!1846)) lt!555972))))

(assert (=> d!471750 (ruleValid!711 thiss!17113 (h!22807 rules!1846))))

(assert (=> d!471750 (= (maxPrefixOneRule!731 thiss!17113 (h!22807 rules!1846) lt!555972) lt!557817)))

(declare-fun b!1585357 () Bool)

(assert (=> b!1585357 (= e!1018277 (= (size!14000 (_1!9845 (get!4978 lt!557817))) (size!14005 (originalCharacters!3881 (_1!9845 (get!4978 lt!557817))))))))

(declare-fun b!1585358 () Bool)

(declare-fun res!707013 () Bool)

(assert (=> b!1585358 (=> (not res!707013) (not e!1018277))))

(assert (=> b!1585358 (= res!707013 (= (rule!4867 (_1!9845 (get!4978 lt!557817))) (h!22807 rules!1846)))))

(declare-fun b!1585359 () Bool)

(declare-fun res!707016 () Bool)

(assert (=> b!1585359 (=> (not res!707016) (not e!1018277))))

(assert (=> b!1585359 (= res!707016 (= (value!97082 (_1!9845 (get!4978 lt!557817))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!557817)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!557817)))))))))

(declare-fun b!1585360 () Bool)

(declare-fun res!707012 () Bool)

(assert (=> b!1585360 (=> (not res!707012) (not e!1018277))))

(assert (=> b!1585360 (= res!707012 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557817)))) (_2!9845 (get!4978 lt!557817))) lt!555972))))

(assert (= (and d!471750 c!257004) b!1585353))

(assert (= (and d!471750 (not c!257004)) b!1585354))

(assert (= (and b!1585354 (not res!707015)) b!1585356))

(assert (= (and d!471750 (not res!707014)) b!1585355))

(assert (= (and b!1585355 res!707011) b!1585360))

(assert (= (and b!1585360 res!707012) b!1585352))

(assert (= (and b!1585352 res!707017) b!1585358))

(assert (= (and b!1585358 res!707013) b!1585359))

(assert (= (and b!1585359 res!707016) b!1585357))

(assert (=> b!1585354 m!1870115))

(declare-fun m!1874355 () Bool)

(assert (=> b!1585354 m!1874355))

(declare-fun m!1874357 () Bool)

(assert (=> b!1585354 m!1874357))

(assert (=> b!1585354 m!1874355))

(assert (=> b!1585354 m!1874119))

(assert (=> b!1585354 m!1874355))

(declare-fun m!1874359 () Bool)

(assert (=> b!1585354 m!1874359))

(declare-fun m!1874361 () Bool)

(assert (=> b!1585354 m!1874361))

(declare-fun m!1874363 () Bool)

(assert (=> b!1585354 m!1874363))

(assert (=> b!1585354 m!1874355))

(declare-fun m!1874365 () Bool)

(assert (=> b!1585354 m!1874365))

(assert (=> b!1585354 m!1874119))

(assert (=> b!1585354 m!1870115))

(declare-fun m!1874367 () Bool)

(assert (=> b!1585354 m!1874367))

(declare-fun m!1874369 () Bool)

(assert (=> b!1585357 m!1874369))

(declare-fun m!1874371 () Bool)

(assert (=> b!1585357 m!1874371))

(assert (=> b!1585352 m!1874369))

(declare-fun m!1874373 () Bool)

(assert (=> b!1585352 m!1874373))

(assert (=> b!1585352 m!1870115))

(assert (=> b!1585356 m!1874119))

(assert (=> b!1585356 m!1870115))

(assert (=> b!1585356 m!1874119))

(assert (=> b!1585356 m!1870115))

(assert (=> b!1585356 m!1874367))

(declare-fun m!1874375 () Bool)

(assert (=> b!1585356 m!1874375))

(assert (=> b!1585355 m!1874369))

(declare-fun m!1874377 () Bool)

(assert (=> b!1585355 m!1874377))

(assert (=> b!1585355 m!1874377))

(declare-fun m!1874379 () Bool)

(assert (=> b!1585355 m!1874379))

(assert (=> b!1585355 m!1874379))

(declare-fun m!1874381 () Bool)

(assert (=> b!1585355 m!1874381))

(assert (=> b!1585359 m!1874369))

(declare-fun m!1874383 () Bool)

(assert (=> b!1585359 m!1874383))

(assert (=> b!1585359 m!1874383))

(declare-fun m!1874385 () Bool)

(assert (=> b!1585359 m!1874385))

(assert (=> b!1585360 m!1874369))

(assert (=> b!1585360 m!1874377))

(assert (=> b!1585360 m!1874377))

(assert (=> b!1585360 m!1874379))

(assert (=> b!1585360 m!1874379))

(declare-fun m!1874387 () Bool)

(assert (=> b!1585360 m!1874387))

(declare-fun m!1874389 () Bool)

(assert (=> d!471750 m!1874389))

(declare-fun m!1874391 () Bool)

(assert (=> d!471750 m!1874391))

(declare-fun m!1874393 () Bool)

(assert (=> d!471750 m!1874393))

(assert (=> d!471750 m!1874183))

(assert (=> b!1585358 m!1874369))

(assert (=> bm!102739 d!471750))

(declare-fun d!471752 () Bool)

(assert (=> d!471752 (= (list!6744 (_1!9844 lt!556089)) (list!6748 (c!256549 (_1!9844 lt!556089))))))

(declare-fun bs!391375 () Bool)

(assert (= bs!391375 d!471752))

(declare-fun m!1874397 () Bool)

(assert (=> bs!391375 m!1874397))

(assert (=> b!1583430 d!471752))

(assert (=> b!1583430 d!471314))

(assert (=> b!1583430 d!471316))

(declare-fun d!471756 () Bool)

(assert (=> d!471756 (= (list!6743 lt!556163) (list!6747 (c!256547 lt!556163)))))

(declare-fun bs!391376 () Bool)

(assert (= bs!391376 d!471756))

(declare-fun m!1874401 () Bool)

(assert (=> bs!391376 m!1874401))

(assert (=> d!470828 d!471756))

(declare-fun d!471758 () Bool)

(declare-fun c!257008 () Bool)

(assert (=> d!471758 (= c!257008 ((_ is Cons!17405) (list!6744 (seqFromList!1883 tokens!457))))))

(declare-fun e!1018285 () List!17474)

(assert (=> d!471758 (= (printList!811 thiss!17113 (list!6744 (seqFromList!1883 tokens!457))) e!1018285)))

(declare-fun b!1585370 () Bool)

(assert (=> b!1585370 (= e!1018285 (++!4529 (list!6743 (charsOf!1716 (h!22806 (list!6744 (seqFromList!1883 tokens!457))))) (printList!811 thiss!17113 (t!143960 (list!6744 (seqFromList!1883 tokens!457))))))))

(declare-fun b!1585371 () Bool)

(assert (=> b!1585371 (= e!1018285 Nil!17404)))

(assert (= (and d!471758 c!257008) b!1585370))

(assert (= (and d!471758 (not c!257008)) b!1585371))

(declare-fun m!1874403 () Bool)

(assert (=> b!1585370 m!1874403))

(assert (=> b!1585370 m!1874403))

(declare-fun m!1874405 () Bool)

(assert (=> b!1585370 m!1874405))

(declare-fun m!1874407 () Bool)

(assert (=> b!1585370 m!1874407))

(assert (=> b!1585370 m!1874405))

(assert (=> b!1585370 m!1874407))

(declare-fun m!1874409 () Bool)

(assert (=> b!1585370 m!1874409))

(assert (=> d!470828 d!471758))

(declare-fun d!471760 () Bool)

(assert (=> d!471760 (= (list!6744 (seqFromList!1883 tokens!457)) (list!6748 (c!256549 (seqFromList!1883 tokens!457))))))

(declare-fun bs!391377 () Bool)

(assert (= bs!391377 d!471760))

(declare-fun m!1874411 () Bool)

(assert (=> bs!391377 m!1874411))

(assert (=> d!470828 d!471760))

(declare-fun d!471762 () Bool)

(declare-fun lt!557826 () BalanceConc!11508)

(assert (=> d!471762 (= (list!6743 lt!557826) (printListTailRec!311 thiss!17113 (dropList!518 (seqFromList!1883 tokens!457) 0) (list!6743 (BalanceConc!11509 Empty!5782))))))

(declare-fun e!1018287 () BalanceConc!11508)

(assert (=> d!471762 (= lt!557826 e!1018287)))

(declare-fun c!257009 () Bool)

(assert (=> d!471762 (= c!257009 (>= 0 (size!14004 (seqFromList!1883 tokens!457))))))

(declare-fun e!1018286 () Bool)

(assert (=> d!471762 e!1018286))

(declare-fun res!707021 () Bool)

(assert (=> d!471762 (=> (not res!707021) (not e!1018286))))

(assert (=> d!471762 (= res!707021 (>= 0 0))))

(assert (=> d!471762 (= (printTailRec!749 thiss!17113 (seqFromList!1883 tokens!457) 0 (BalanceConc!11509 Empty!5782)) lt!557826)))

(declare-fun b!1585372 () Bool)

(assert (=> b!1585372 (= e!1018286 (<= 0 (size!14004 (seqFromList!1883 tokens!457))))))

(declare-fun b!1585373 () Bool)

(assert (=> b!1585373 (= e!1018287 (BalanceConc!11509 Empty!5782))))

(declare-fun b!1585374 () Bool)

(assert (=> b!1585374 (= e!1018287 (printTailRec!749 thiss!17113 (seqFromList!1883 tokens!457) (+ 0 1) (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 (seqFromList!1883 tokens!457) 0)))))))

(declare-fun lt!557828 () List!17475)

(assert (=> b!1585374 (= lt!557828 (list!6744 (seqFromList!1883 tokens!457)))))

(declare-fun lt!557825 () Unit!27203)

(assert (=> b!1585374 (= lt!557825 (lemmaDropApply!518 lt!557828 0))))

(assert (=> b!1585374 (= (head!3205 (drop!820 lt!557828 0)) (apply!4241 lt!557828 0))))

(declare-fun lt!557829 () Unit!27203)

(assert (=> b!1585374 (= lt!557829 lt!557825)))

(declare-fun lt!557824 () List!17475)

(assert (=> b!1585374 (= lt!557824 (list!6744 (seqFromList!1883 tokens!457)))))

(declare-fun lt!557830 () Unit!27203)

(assert (=> b!1585374 (= lt!557830 (lemmaDropTail!498 lt!557824 0))))

(assert (=> b!1585374 (= (tail!2264 (drop!820 lt!557824 0)) (drop!820 lt!557824 (+ 0 1)))))

(declare-fun lt!557827 () Unit!27203)

(assert (=> b!1585374 (= lt!557827 lt!557830)))

(assert (= (and d!471762 res!707021) b!1585372))

(assert (= (and d!471762 c!257009) b!1585373))

(assert (= (and d!471762 (not c!257009)) b!1585374))

(declare-fun m!1874413 () Bool)

(assert (=> d!471762 m!1874413))

(assert (=> d!471762 m!1870017))

(declare-fun m!1874415 () Bool)

(assert (=> d!471762 m!1874415))

(assert (=> d!471762 m!1870017))

(declare-fun m!1874417 () Bool)

(assert (=> d!471762 m!1874417))

(assert (=> d!471762 m!1869875))

(declare-fun m!1874419 () Bool)

(assert (=> d!471762 m!1874419))

(assert (=> d!471762 m!1869875))

(assert (=> d!471762 m!1874413))

(assert (=> b!1585372 m!1869875))

(assert (=> b!1585372 m!1874419))

(declare-fun m!1874421 () Bool)

(assert (=> b!1585374 m!1874421))

(declare-fun m!1874423 () Bool)

(assert (=> b!1585374 m!1874423))

(declare-fun m!1874425 () Bool)

(assert (=> b!1585374 m!1874425))

(declare-fun m!1874427 () Bool)

(assert (=> b!1585374 m!1874427))

(declare-fun m!1874429 () Bool)

(assert (=> b!1585374 m!1874429))

(assert (=> b!1585374 m!1869875))

(assert (=> b!1585374 m!1870325))

(assert (=> b!1585374 m!1874421))

(declare-fun m!1874431 () Bool)

(assert (=> b!1585374 m!1874431))

(assert (=> b!1585374 m!1869875))

(assert (=> b!1585374 m!1874427))

(declare-fun m!1874433 () Bool)

(assert (=> b!1585374 m!1874433))

(assert (=> b!1585374 m!1869875))

(declare-fun m!1874435 () Bool)

(assert (=> b!1585374 m!1874435))

(declare-fun m!1874437 () Bool)

(assert (=> b!1585374 m!1874437))

(declare-fun m!1874439 () Bool)

(assert (=> b!1585374 m!1874439))

(declare-fun m!1874441 () Bool)

(assert (=> b!1585374 m!1874441))

(assert (=> b!1585374 m!1874435))

(assert (=> b!1585374 m!1874425))

(declare-fun m!1874443 () Bool)

(assert (=> b!1585374 m!1874443))

(assert (=> b!1585374 m!1874437))

(assert (=> d!470828 d!471762))

(declare-fun d!471764 () Bool)

(declare-fun lt!557833 () Bool)

(declare-fun content!2397 (List!17476) (InoxSet Rule!5934))

(assert (=> d!471764 (= lt!557833 (select (content!2397 rules!1846) (rule!4867 (_1!9845 (get!4978 lt!556077)))))))

(declare-fun e!1018292 () Bool)

(assert (=> d!471764 (= lt!557833 e!1018292)))

(declare-fun res!707027 () Bool)

(assert (=> d!471764 (=> (not res!707027) (not e!1018292))))

(assert (=> d!471764 (= res!707027 ((_ is Cons!17406) rules!1846))))

(assert (=> d!471764 (= (contains!3036 rules!1846 (rule!4867 (_1!9845 (get!4978 lt!556077)))) lt!557833)))

(declare-fun b!1585379 () Bool)

(declare-fun e!1018293 () Bool)

(assert (=> b!1585379 (= e!1018292 e!1018293)))

(declare-fun res!707026 () Bool)

(assert (=> b!1585379 (=> res!707026 e!1018293)))

(assert (=> b!1585379 (= res!707026 (= (h!22807 rules!1846) (rule!4867 (_1!9845 (get!4978 lt!556077)))))))

(declare-fun b!1585380 () Bool)

(assert (=> b!1585380 (= e!1018293 (contains!3036 (t!143961 rules!1846) (rule!4867 (_1!9845 (get!4978 lt!556077)))))))

(assert (= (and d!471764 res!707027) b!1585379))

(assert (= (and b!1585379 (not res!707026)) b!1585380))

(declare-fun m!1874445 () Bool)

(assert (=> d!471764 m!1874445))

(declare-fun m!1874447 () Bool)

(assert (=> d!471764 m!1874447))

(declare-fun m!1874449 () Bool)

(assert (=> b!1585380 m!1874449))

(assert (=> b!1583399 d!471764))

(assert (=> b!1583399 d!471134))

(declare-fun b!1585383 () Bool)

(declare-fun e!1018294 () Bool)

(assert (=> b!1585383 (= e!1018294 (isPrefix!1327 (tail!2266 lt!555973) (tail!2266 (++!4529 lt!555973 lt!555959))))))

(declare-fun b!1585381 () Bool)

(declare-fun e!1018296 () Bool)

(assert (=> b!1585381 (= e!1018296 e!1018294)))

(declare-fun res!707029 () Bool)

(assert (=> b!1585381 (=> (not res!707029) (not e!1018294))))

(assert (=> b!1585381 (= res!707029 (not ((_ is Nil!17404) (++!4529 lt!555973 lt!555959))))))

(declare-fun d!471766 () Bool)

(declare-fun e!1018295 () Bool)

(assert (=> d!471766 e!1018295))

(declare-fun res!707030 () Bool)

(assert (=> d!471766 (=> res!707030 e!1018295)))

(declare-fun lt!557834 () Bool)

(assert (=> d!471766 (= res!707030 (not lt!557834))))

(assert (=> d!471766 (= lt!557834 e!1018296)))

(declare-fun res!707028 () Bool)

(assert (=> d!471766 (=> res!707028 e!1018296)))

(assert (=> d!471766 (= res!707028 ((_ is Nil!17404) lt!555973))))

(assert (=> d!471766 (= (isPrefix!1327 lt!555973 (++!4529 lt!555973 lt!555959)) lt!557834)))

(declare-fun b!1585382 () Bool)

(declare-fun res!707031 () Bool)

(assert (=> b!1585382 (=> (not res!707031) (not e!1018294))))

(assert (=> b!1585382 (= res!707031 (= (head!3208 lt!555973) (head!3208 (++!4529 lt!555973 lt!555959))))))

(declare-fun b!1585384 () Bool)

(assert (=> b!1585384 (= e!1018295 (>= (size!14005 (++!4529 lt!555973 lt!555959)) (size!14005 lt!555973)))))

(assert (= (and d!471766 (not res!707028)) b!1585381))

(assert (= (and b!1585381 res!707029) b!1585382))

(assert (= (and b!1585382 res!707031) b!1585383))

(assert (= (and d!471766 (not res!707030)) b!1585384))

(assert (=> b!1585383 m!1870429))

(assert (=> b!1585383 m!1869871))

(assert (=> b!1585383 m!1871717))

(assert (=> b!1585383 m!1870429))

(assert (=> b!1585383 m!1871717))

(declare-fun m!1874451 () Bool)

(assert (=> b!1585383 m!1874451))

(assert (=> b!1585382 m!1870435))

(assert (=> b!1585382 m!1869871))

(assert (=> b!1585382 m!1871723))

(assert (=> b!1585384 m!1869871))

(assert (=> b!1585384 m!1871697))

(assert (=> b!1585384 m!1870333))

(assert (=> d!470844 d!471766))

(assert (=> d!470844 d!470830))

(declare-fun d!471768 () Bool)

(assert (=> d!471768 (isPrefix!1327 lt!555973 (++!4529 lt!555973 lt!555959))))

(assert (=> d!471768 true))

(declare-fun _$46!1053 () Unit!27203)

(assert (=> d!471768 (= (choose!9475 lt!555973 lt!555959) _$46!1053)))

(declare-fun bs!391378 () Bool)

(assert (= bs!391378 d!471768))

(assert (=> bs!391378 m!1869871))

(assert (=> bs!391378 m!1869871))

(assert (=> bs!391378 m!1870441))

(assert (=> d!470844 d!471768))

(declare-fun d!471770 () Bool)

(assert (=> d!471770 (= (isEmpty!10428 (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))) ((_ is Nil!17405) (list!6744 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))))))

(assert (=> d!470780 d!471770))

(assert (=> d!470780 d!471160))

(declare-fun lt!557843 () Bool)

(declare-fun d!471772 () Bool)

(assert (=> d!471772 (= lt!557843 (isEmpty!10428 (list!6748 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973)))))))))

(assert (=> d!471772 (= lt!557843 (= (size!14010 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))) 0))))

(assert (=> d!471772 (= (isEmpty!10429 (c!256549 (_1!9844 (lex!1180 thiss!17113 rules!1846 (seqFromList!1884 lt!555973))))) lt!557843)))

(declare-fun bs!391379 () Bool)

(assert (= bs!391379 d!471772))

(assert (=> bs!391379 m!1871713))

(assert (=> bs!391379 m!1871713))

(declare-fun m!1874453 () Bool)

(assert (=> bs!391379 m!1874453))

(declare-fun m!1874455 () Bool)

(assert (=> bs!391379 m!1874455))

(assert (=> d!470780 d!471772))

(declare-fun b!1585406 () Bool)

(declare-fun e!1018309 () List!17475)

(assert (=> b!1585406 (= e!1018309 Nil!17405)))

(declare-fun b!1585409 () Bool)

(declare-fun e!1018310 () List!17475)

(assert (=> b!1585409 (= e!1018310 (++!4534 (list!6748 (left!14062 (c!256549 (_1!9844 lt!555967)))) (list!6748 (right!14392 (c!256549 (_1!9844 lt!555967))))))))

(declare-fun d!471774 () Bool)

(declare-fun c!257019 () Bool)

(assert (=> d!471774 (= c!257019 ((_ is Empty!5783) (c!256549 (_1!9844 lt!555967))))))

(assert (=> d!471774 (= (list!6748 (c!256549 (_1!9844 lt!555967))) e!1018309)))

(declare-fun b!1585408 () Bool)

(assert (=> b!1585408 (= e!1018310 (list!6751 (xs!8587 (c!256549 (_1!9844 lt!555967)))))))

(declare-fun b!1585407 () Bool)

(assert (=> b!1585407 (= e!1018309 e!1018310)))

(declare-fun c!257020 () Bool)

(assert (=> b!1585407 (= c!257020 ((_ is Leaf!8537) (c!256549 (_1!9844 lt!555967))))))

(assert (= (and d!471774 c!257019) b!1585406))

(assert (= (and d!471774 (not c!257019)) b!1585407))

(assert (= (and b!1585407 c!257020) b!1585408))

(assert (= (and b!1585407 (not c!257020)) b!1585409))

(declare-fun m!1874459 () Bool)

(assert (=> b!1585409 m!1874459))

(declare-fun m!1874461 () Bool)

(assert (=> b!1585409 m!1874461))

(assert (=> b!1585409 m!1874459))

(assert (=> b!1585409 m!1874461))

(declare-fun m!1874469 () Bool)

(assert (=> b!1585409 m!1874469))

(declare-fun m!1874473 () Bool)

(assert (=> b!1585408 m!1874473))

(assert (=> d!470832 d!471774))

(declare-fun d!471776 () Bool)

(declare-fun lt!557846 () BalanceConc!11508)

(assert (=> d!471776 (= (list!6743 lt!557846) (printListTailRec!311 thiss!17113 (dropList!518 lt!555974 (+ 0 1)) (list!6743 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555974 0))))))))

(declare-fun e!1018312 () BalanceConc!11508)

(assert (=> d!471776 (= lt!557846 e!1018312)))

(declare-fun c!257021 () Bool)

(assert (=> d!471776 (= c!257021 (>= (+ 0 1) (size!14004 lt!555974)))))

(declare-fun e!1018311 () Bool)

(assert (=> d!471776 e!1018311))

(declare-fun res!707035 () Bool)

(assert (=> d!471776 (=> (not res!707035) (not e!1018311))))

(assert (=> d!471776 (= res!707035 (>= (+ 0 1) 0))))

(assert (=> d!471776 (= (printTailRec!749 thiss!17113 lt!555974 (+ 0 1) (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555974 0)))) lt!557846)))

(declare-fun b!1585410 () Bool)

(assert (=> b!1585410 (= e!1018311 (<= (+ 0 1) (size!14004 lt!555974)))))

(declare-fun b!1585411 () Bool)

(assert (=> b!1585411 (= e!1018312 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555974 0))))))

(declare-fun b!1585412 () Bool)

(assert (=> b!1585412 (= e!1018312 (printTailRec!749 thiss!17113 lt!555974 (+ 0 1 1) (++!4530 (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555974 0))) (charsOf!1716 (apply!4240 lt!555974 (+ 0 1))))))))

(declare-fun lt!557848 () List!17475)

(assert (=> b!1585412 (= lt!557848 (list!6744 lt!555974))))

(declare-fun lt!557845 () Unit!27203)

(assert (=> b!1585412 (= lt!557845 (lemmaDropApply!518 lt!557848 (+ 0 1)))))

(assert (=> b!1585412 (= (head!3205 (drop!820 lt!557848 (+ 0 1))) (apply!4241 lt!557848 (+ 0 1)))))

(declare-fun lt!557849 () Unit!27203)

(assert (=> b!1585412 (= lt!557849 lt!557845)))

(declare-fun lt!557844 () List!17475)

(assert (=> b!1585412 (= lt!557844 (list!6744 lt!555974))))

(declare-fun lt!557850 () Unit!27203)

(assert (=> b!1585412 (= lt!557850 (lemmaDropTail!498 lt!557844 (+ 0 1)))))

(assert (=> b!1585412 (= (tail!2264 (drop!820 lt!557844 (+ 0 1))) (drop!820 lt!557844 (+ 0 1 1)))))

(declare-fun lt!557847 () Unit!27203)

(assert (=> b!1585412 (= lt!557847 lt!557850)))

(assert (= (and d!471776 res!707035) b!1585410))

(assert (= (and d!471776 c!257021) b!1585411))

(assert (= (and d!471776 (not c!257021)) b!1585412))

(declare-fun m!1874483 () Bool)

(assert (=> d!471776 m!1874483))

(declare-fun m!1874485 () Bool)

(assert (=> d!471776 m!1874485))

(declare-fun m!1874487 () Bool)

(assert (=> d!471776 m!1874487))

(assert (=> d!471776 m!1870033))

(assert (=> d!471776 m!1874485))

(declare-fun m!1874489 () Bool)

(assert (=> d!471776 m!1874489))

(assert (=> d!471776 m!1870023))

(assert (=> d!471776 m!1874483))

(assert (=> b!1585410 m!1870023))

(declare-fun m!1874497 () Bool)

(assert (=> b!1585412 m!1874497))

(declare-fun m!1874499 () Bool)

(assert (=> b!1585412 m!1874499))

(assert (=> b!1585412 m!1870033))

(declare-fun m!1874501 () Bool)

(assert (=> b!1585412 m!1874501))

(declare-fun m!1874503 () Bool)

(assert (=> b!1585412 m!1874503))

(declare-fun m!1874505 () Bool)

(assert (=> b!1585412 m!1874505))

(assert (=> b!1585412 m!1870037))

(assert (=> b!1585412 m!1874497))

(declare-fun m!1874507 () Bool)

(assert (=> b!1585412 m!1874507))

(assert (=> b!1585412 m!1874503))

(declare-fun m!1874509 () Bool)

(assert (=> b!1585412 m!1874509))

(declare-fun m!1874511 () Bool)

(assert (=> b!1585412 m!1874511))

(declare-fun m!1874513 () Bool)

(assert (=> b!1585412 m!1874513))

(declare-fun m!1874515 () Bool)

(assert (=> b!1585412 m!1874515))

(declare-fun m!1874517 () Bool)

(assert (=> b!1585412 m!1874517))

(assert (=> b!1585412 m!1874511))

(assert (=> b!1585412 m!1874501))

(declare-fun m!1874519 () Bool)

(assert (=> b!1585412 m!1874519))

(assert (=> b!1585412 m!1874513))

(assert (=> b!1583347 d!471776))

(declare-fun d!471784 () Bool)

(declare-fun lt!557853 () Token!5700)

(assert (=> d!471784 (= lt!557853 (apply!4241 (list!6744 lt!555974) 0))))

(assert (=> d!471784 (= lt!557853 (apply!4249 (c!256549 lt!555974) 0))))

(declare-fun e!1018316 () Bool)

(assert (=> d!471784 e!1018316))

(declare-fun res!707043 () Bool)

(assert (=> d!471784 (=> (not res!707043) (not e!1018316))))

(assert (=> d!471784 (= res!707043 (<= 0 0))))

(assert (=> d!471784 (= (apply!4240 lt!555974 0) lt!557853)))

(declare-fun b!1585420 () Bool)

(assert (=> b!1585420 (= e!1018316 (< 0 (size!14004 lt!555974)))))

(assert (= (and d!471784 res!707043) b!1585420))

(assert (=> d!471784 m!1870037))

(assert (=> d!471784 m!1870037))

(declare-fun m!1874523 () Bool)

(assert (=> d!471784 m!1874523))

(declare-fun m!1874527 () Bool)

(assert (=> d!471784 m!1874527))

(assert (=> b!1585420 m!1870023))

(assert (=> b!1583347 d!471784))

(declare-fun b!1585453 () Bool)

(declare-fun e!1018339 () List!17475)

(declare-fun e!1018335 () List!17475)

(assert (=> b!1585453 (= e!1018339 e!1018335)))

(declare-fun c!257035 () Bool)

(assert (=> b!1585453 (= c!257035 (<= 0 0))))

(declare-fun b!1585454 () Bool)

(assert (=> b!1585454 (= e!1018335 (drop!820 (t!143960 lt!556035) (- 0 1)))))

(declare-fun bm!102901 () Bool)

(declare-fun call!102906 () Int)

(assert (=> bm!102901 (= call!102906 (size!14007 lt!556035))))

(declare-fun d!471786 () Bool)

(declare-fun e!1018338 () Bool)

(assert (=> d!471786 e!1018338))

(declare-fun res!707050 () Bool)

(assert (=> d!471786 (=> (not res!707050) (not e!1018338))))

(declare-fun lt!557858 () List!17475)

(declare-fun content!2398 (List!17475) (InoxSet Token!5700))

(assert (=> d!471786 (= res!707050 (= ((_ map implies) (content!2398 lt!557858) (content!2398 lt!556035)) ((as const (InoxSet Token!5700)) true)))))

(assert (=> d!471786 (= lt!557858 e!1018339)))

(declare-fun c!257038 () Bool)

(assert (=> d!471786 (= c!257038 ((_ is Nil!17405) lt!556035))))

(assert (=> d!471786 (= (drop!820 lt!556035 0) lt!557858)))

(declare-fun b!1585455 () Bool)

(assert (=> b!1585455 (= e!1018339 Nil!17405)))

(declare-fun b!1585456 () Bool)

(assert (=> b!1585456 (= e!1018335 lt!556035)))

(declare-fun b!1585457 () Bool)

(declare-fun e!1018337 () Int)

(assert (=> b!1585457 (= e!1018337 call!102906)))

(declare-fun b!1585458 () Bool)

(assert (=> b!1585458 (= e!1018338 (= (size!14007 lt!557858) e!1018337))))

(declare-fun c!257036 () Bool)

(assert (=> b!1585458 (= c!257036 (<= 0 0))))

(declare-fun b!1585459 () Bool)

(declare-fun e!1018336 () Int)

(assert (=> b!1585459 (= e!1018337 e!1018336)))

(declare-fun c!257037 () Bool)

(assert (=> b!1585459 (= c!257037 (>= 0 call!102906))))

(declare-fun b!1585460 () Bool)

(assert (=> b!1585460 (= e!1018336 (- call!102906 0))))

(declare-fun b!1585461 () Bool)

(assert (=> b!1585461 (= e!1018336 0)))

(assert (= (and d!471786 c!257038) b!1585455))

(assert (= (and d!471786 (not c!257038)) b!1585453))

(assert (= (and b!1585453 c!257035) b!1585456))

(assert (= (and b!1585453 (not c!257035)) b!1585454))

(assert (= (and d!471786 res!707050) b!1585458))

(assert (= (and b!1585458 c!257036) b!1585457))

(assert (= (and b!1585458 (not c!257036)) b!1585459))

(assert (= (and b!1585459 c!257037) b!1585461))

(assert (= (and b!1585459 (not c!257037)) b!1585460))

(assert (= (or b!1585457 b!1585459 b!1585460) bm!102901))

(declare-fun m!1874559 () Bool)

(assert (=> b!1585454 m!1874559))

(declare-fun m!1874563 () Bool)

(assert (=> bm!102901 m!1874563))

(declare-fun m!1874567 () Bool)

(assert (=> d!471786 m!1874567))

(declare-fun m!1874569 () Bool)

(assert (=> d!471786 m!1874569))

(declare-fun m!1874571 () Bool)

(assert (=> b!1585458 m!1874571))

(assert (=> b!1583347 d!471786))

(declare-fun d!471806 () Bool)

(assert (=> d!471806 (= (head!3205 (drop!820 lt!556039 0)) (apply!4241 lt!556039 0))))

(declare-fun lt!557864 () Unit!27203)

(declare-fun choose!9493 (List!17475 Int) Unit!27203)

(assert (=> d!471806 (= lt!557864 (choose!9493 lt!556039 0))))

(declare-fun e!1018347 () Bool)

(assert (=> d!471806 e!1018347))

(declare-fun res!707057 () Bool)

(assert (=> d!471806 (=> (not res!707057) (not e!1018347))))

(assert (=> d!471806 (= res!707057 (>= 0 0))))

(assert (=> d!471806 (= (lemmaDropApply!518 lt!556039 0) lt!557864)))

(declare-fun b!1585470 () Bool)

(assert (=> b!1585470 (= e!1018347 (< 0 (size!14007 lt!556039)))))

(assert (= (and d!471806 res!707057) b!1585470))

(assert (=> d!471806 m!1870027))

(assert (=> d!471806 m!1870027))

(assert (=> d!471806 m!1870029))

(assert (=> d!471806 m!1870039))

(declare-fun m!1874579 () Bool)

(assert (=> d!471806 m!1874579))

(declare-fun m!1874581 () Bool)

(assert (=> b!1585470 m!1874581))

(assert (=> b!1583347 d!471806))

(declare-fun d!471812 () Bool)

(assert (=> d!471812 (= (head!3205 (drop!820 lt!556039 0)) (h!22806 (drop!820 lt!556039 0)))))

(assert (=> b!1583347 d!471812))

(declare-fun d!471814 () Bool)

(assert (=> d!471814 (= (tail!2264 (drop!820 lt!556035 0)) (t!143960 (drop!820 lt!556035 0)))))

(assert (=> b!1583347 d!471814))

(declare-fun d!471816 () Bool)

(declare-fun e!1018350 () Bool)

(assert (=> d!471816 e!1018350))

(declare-fun res!707060 () Bool)

(assert (=> d!471816 (=> (not res!707060) (not e!1018350))))

(assert (=> d!471816 (= res!707060 (appendAssocInst!387 (c!256547 (BalanceConc!11509 Empty!5782)) (c!256547 (charsOf!1716 (apply!4240 lt!555974 0)))))))

(declare-fun lt!557866 () BalanceConc!11508)

(assert (=> d!471816 (= lt!557866 (BalanceConc!11509 (++!4532 (c!256547 (BalanceConc!11509 Empty!5782)) (c!256547 (charsOf!1716 (apply!4240 lt!555974 0))))))))

(assert (=> d!471816 (= (++!4530 (BalanceConc!11509 Empty!5782) (charsOf!1716 (apply!4240 lt!555974 0))) lt!557866)))

(declare-fun b!1585476 () Bool)

(assert (=> b!1585476 (= e!1018350 (= (list!6743 lt!557866) (++!4529 (list!6743 (BalanceConc!11509 Empty!5782)) (list!6743 (charsOf!1716 (apply!4240 lt!555974 0))))))))

(declare-fun b!1585475 () Bool)

(declare-fun res!707059 () Bool)

(assert (=> b!1585475 (=> (not res!707059) (not e!1018350))))

(assert (=> b!1585475 (= res!707059 (>= (height!851 (++!4532 (c!256547 (BalanceConc!11509 Empty!5782)) (c!256547 (charsOf!1716 (apply!4240 lt!555974 0))))) (max!0 (height!851 (c!256547 (BalanceConc!11509 Empty!5782))) (height!851 (c!256547 (charsOf!1716 (apply!4240 lt!555974 0)))))))))

(declare-fun b!1585473 () Bool)

(declare-fun res!707061 () Bool)

(assert (=> b!1585473 (=> (not res!707061) (not e!1018350))))

(assert (=> b!1585473 (= res!707061 (isBalanced!1702 (++!4532 (c!256547 (BalanceConc!11509 Empty!5782)) (c!256547 (charsOf!1716 (apply!4240 lt!555974 0))))))))

(declare-fun b!1585474 () Bool)

(declare-fun res!707062 () Bool)

(assert (=> b!1585474 (=> (not res!707062) (not e!1018350))))

(assert (=> b!1585474 (= res!707062 (<= (height!851 (++!4532 (c!256547 (BalanceConc!11509 Empty!5782)) (c!256547 (charsOf!1716 (apply!4240 lt!555974 0))))) (+ (max!0 (height!851 (c!256547 (BalanceConc!11509 Empty!5782))) (height!851 (c!256547 (charsOf!1716 (apply!4240 lt!555974 0))))) 1)))))

(assert (= (and d!471816 res!707060) b!1585473))

(assert (= (and b!1585473 res!707061) b!1585474))

(assert (= (and b!1585474 res!707062) b!1585475))

(assert (= (and b!1585475 res!707059) b!1585476))

(declare-fun m!1874589 () Bool)

(assert (=> b!1585473 m!1874589))

(assert (=> b!1585473 m!1874589))

(declare-fun m!1874591 () Bool)

(assert (=> b!1585473 m!1874591))

(declare-fun m!1874593 () Bool)

(assert (=> d!471816 m!1874593))

(assert (=> d!471816 m!1874589))

(declare-fun m!1874595 () Bool)

(assert (=> b!1585474 m!1874595))

(declare-fun m!1874597 () Bool)

(assert (=> b!1585474 m!1874597))

(assert (=> b!1585474 m!1874589))

(declare-fun m!1874599 () Bool)

(assert (=> b!1585474 m!1874599))

(assert (=> b!1585474 m!1874589))

(assert (=> b!1585474 m!1874595))

(assert (=> b!1585474 m!1874597))

(declare-fun m!1874601 () Bool)

(assert (=> b!1585474 m!1874601))

(assert (=> b!1585475 m!1874595))

(assert (=> b!1585475 m!1874597))

(assert (=> b!1585475 m!1874589))

(assert (=> b!1585475 m!1874599))

(assert (=> b!1585475 m!1874589))

(assert (=> b!1585475 m!1874595))

(assert (=> b!1585475 m!1874597))

(assert (=> b!1585475 m!1874601))

(declare-fun m!1874603 () Bool)

(assert (=> b!1585476 m!1874603))

(assert (=> b!1585476 m!1870017))

(assert (=> b!1585476 m!1870031))

(declare-fun m!1874605 () Bool)

(assert (=> b!1585476 m!1874605))

(assert (=> b!1585476 m!1870017))

(assert (=> b!1585476 m!1874605))

(declare-fun m!1874607 () Bool)

(assert (=> b!1585476 m!1874607))

(assert (=> b!1583347 d!471816))

(declare-fun b!1585490 () Bool)

(declare-fun e!1018361 () List!17475)

(declare-fun e!1018357 () List!17475)

(assert (=> b!1585490 (= e!1018361 e!1018357)))

(declare-fun c!257040 () Bool)

(assert (=> b!1585490 (= c!257040 (<= 0 0))))

(declare-fun b!1585491 () Bool)

(assert (=> b!1585491 (= e!1018357 (drop!820 (t!143960 lt!556039) (- 0 1)))))

(declare-fun bm!102902 () Bool)

(declare-fun call!102907 () Int)

(assert (=> bm!102902 (= call!102907 (size!14007 lt!556039))))

(declare-fun d!471818 () Bool)

(declare-fun e!1018360 () Bool)

(assert (=> d!471818 e!1018360))

(declare-fun res!707063 () Bool)

(assert (=> d!471818 (=> (not res!707063) (not e!1018360))))

(declare-fun lt!557867 () List!17475)

(assert (=> d!471818 (= res!707063 (= ((_ map implies) (content!2398 lt!557867) (content!2398 lt!556039)) ((as const (InoxSet Token!5700)) true)))))

(assert (=> d!471818 (= lt!557867 e!1018361)))

(declare-fun c!257043 () Bool)

(assert (=> d!471818 (= c!257043 ((_ is Nil!17405) lt!556039))))

(assert (=> d!471818 (= (drop!820 lt!556039 0) lt!557867)))

(declare-fun b!1585492 () Bool)

(assert (=> b!1585492 (= e!1018361 Nil!17405)))

(declare-fun b!1585493 () Bool)

(assert (=> b!1585493 (= e!1018357 lt!556039)))

(declare-fun b!1585494 () Bool)

(declare-fun e!1018359 () Int)

(assert (=> b!1585494 (= e!1018359 call!102907)))

(declare-fun b!1585495 () Bool)

(assert (=> b!1585495 (= e!1018360 (= (size!14007 lt!557867) e!1018359))))

(declare-fun c!257041 () Bool)

(assert (=> b!1585495 (= c!257041 (<= 0 0))))

(declare-fun b!1585496 () Bool)

(declare-fun e!1018358 () Int)

(assert (=> b!1585496 (= e!1018359 e!1018358)))

(declare-fun c!257042 () Bool)

(assert (=> b!1585496 (= c!257042 (>= 0 call!102907))))

(declare-fun b!1585497 () Bool)

(assert (=> b!1585497 (= e!1018358 (- call!102907 0))))

(declare-fun b!1585498 () Bool)

(assert (=> b!1585498 (= e!1018358 0)))

(assert (= (and d!471818 c!257043) b!1585492))

(assert (= (and d!471818 (not c!257043)) b!1585490))

(assert (= (and b!1585490 c!257040) b!1585493))

(assert (= (and b!1585490 (not c!257040)) b!1585491))

(assert (= (and d!471818 res!707063) b!1585495))

(assert (= (and b!1585495 c!257041) b!1585494))

(assert (= (and b!1585495 (not c!257041)) b!1585496))

(assert (= (and b!1585496 c!257042) b!1585498))

(assert (= (and b!1585496 (not c!257042)) b!1585497))

(assert (= (or b!1585494 b!1585496 b!1585497) bm!102902))

(declare-fun m!1874615 () Bool)

(assert (=> b!1585491 m!1874615))

(assert (=> bm!102902 m!1874581))

(declare-fun m!1874617 () Bool)

(assert (=> d!471818 m!1874617))

(declare-fun m!1874619 () Bool)

(assert (=> d!471818 m!1874619))

(declare-fun m!1874621 () Bool)

(assert (=> b!1585495 m!1874621))

(assert (=> b!1583347 d!471818))

(assert (=> b!1583347 d!471522))

(declare-fun b!1585510 () Bool)

(declare-fun e!1018370 () List!17475)

(declare-fun e!1018366 () List!17475)

(assert (=> b!1585510 (= e!1018370 e!1018366)))

(declare-fun c!257044 () Bool)

(assert (=> b!1585510 (= c!257044 (<= (+ 0 1) 0))))

(declare-fun b!1585511 () Bool)

(assert (=> b!1585511 (= e!1018366 (drop!820 (t!143960 lt!556035) (- (+ 0 1) 1)))))

(declare-fun bm!102903 () Bool)

(declare-fun call!102908 () Int)

(assert (=> bm!102903 (= call!102908 (size!14007 lt!556035))))

(declare-fun d!471820 () Bool)

(declare-fun e!1018369 () Bool)

(assert (=> d!471820 e!1018369))

(declare-fun res!707064 () Bool)

(assert (=> d!471820 (=> (not res!707064) (not e!1018369))))

(declare-fun lt!557868 () List!17475)

(assert (=> d!471820 (= res!707064 (= ((_ map implies) (content!2398 lt!557868) (content!2398 lt!556035)) ((as const (InoxSet Token!5700)) true)))))

(assert (=> d!471820 (= lt!557868 e!1018370)))

(declare-fun c!257047 () Bool)

(assert (=> d!471820 (= c!257047 ((_ is Nil!17405) lt!556035))))

(assert (=> d!471820 (= (drop!820 lt!556035 (+ 0 1)) lt!557868)))

(declare-fun b!1585512 () Bool)

(assert (=> b!1585512 (= e!1018370 Nil!17405)))

(declare-fun b!1585513 () Bool)

(assert (=> b!1585513 (= e!1018366 lt!556035)))

(declare-fun b!1585514 () Bool)

(declare-fun e!1018368 () Int)

(assert (=> b!1585514 (= e!1018368 call!102908)))

(declare-fun b!1585515 () Bool)

(assert (=> b!1585515 (= e!1018369 (= (size!14007 lt!557868) e!1018368))))

(declare-fun c!257045 () Bool)

(assert (=> b!1585515 (= c!257045 (<= (+ 0 1) 0))))

(declare-fun b!1585516 () Bool)

(declare-fun e!1018367 () Int)

(assert (=> b!1585516 (= e!1018368 e!1018367)))

(declare-fun c!257046 () Bool)

(assert (=> b!1585516 (= c!257046 (>= (+ 0 1) call!102908))))

(declare-fun b!1585517 () Bool)

(assert (=> b!1585517 (= e!1018367 (- call!102908 (+ 0 1)))))

(declare-fun b!1585518 () Bool)

(assert (=> b!1585518 (= e!1018367 0)))

(assert (= (and d!471820 c!257047) b!1585512))

(assert (= (and d!471820 (not c!257047)) b!1585510))

(assert (= (and b!1585510 c!257044) b!1585513))

(assert (= (and b!1585510 (not c!257044)) b!1585511))

(assert (= (and d!471820 res!707064) b!1585515))

(assert (= (and b!1585515 c!257045) b!1585514))

(assert (= (and b!1585515 (not c!257045)) b!1585516))

(assert (= (and b!1585516 c!257046) b!1585518))

(assert (= (and b!1585516 (not c!257046)) b!1585517))

(assert (= (or b!1585514 b!1585516 b!1585517) bm!102903))

(declare-fun m!1874623 () Bool)

(assert (=> b!1585511 m!1874623))

(assert (=> bm!102903 m!1874563))

(declare-fun m!1874625 () Bool)

(assert (=> d!471820 m!1874625))

(assert (=> d!471820 m!1874569))

(declare-fun m!1874627 () Bool)

(assert (=> b!1585515 m!1874627))

(assert (=> b!1583347 d!471820))

(declare-fun d!471822 () Bool)

(declare-fun lt!557869 () BalanceConc!11508)

(assert (=> d!471822 (= (list!6743 lt!557869) (originalCharacters!3881 (apply!4240 lt!555974 0)))))

(assert (=> d!471822 (= lt!557869 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0)))) (value!97082 (apply!4240 lt!555974 0))))))

(assert (=> d!471822 (= (charsOf!1716 (apply!4240 lt!555974 0)) lt!557869)))

(declare-fun b_lambda!49879 () Bool)

(assert (=> (not b_lambda!49879) (not d!471822)))

(declare-fun tb!89201 () Bool)

(declare-fun t!144123 () Bool)

(assert (=> (and b!1583303 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0))))) t!144123) tb!89201))

(declare-fun b!1585530 () Bool)

(declare-fun e!1018381 () Bool)

(declare-fun tp!466048 () Bool)

(assert (=> b!1585530 (= e!1018381 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0)))) (value!97082 (apply!4240 lt!555974 0))))) tp!466048))))

(declare-fun result!107966 () Bool)

(assert (=> tb!89201 (= result!107966 (and (inv!22826 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0)))) (value!97082 (apply!4240 lt!555974 0)))) e!1018381))))

(assert (= tb!89201 b!1585530))

(declare-fun m!1874629 () Bool)

(assert (=> b!1585530 m!1874629))

(declare-fun m!1874631 () Bool)

(assert (=> tb!89201 m!1874631))

(assert (=> d!471822 t!144123))

(declare-fun b_and!111145 () Bool)

(assert (= b_and!111125 (and (=> t!144123 result!107966) b_and!111145)))

(declare-fun t!144127 () Bool)

(declare-fun tb!89205 () Bool)

(assert (=> (and b!1583288 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0))))) t!144127) tb!89205))

(declare-fun result!107970 () Bool)

(assert (= result!107970 result!107966))

(assert (=> d!471822 t!144127))

(declare-fun b_and!111147 () Bool)

(assert (= b_and!111127 (and (=> t!144127 result!107970) b_and!111147)))

(declare-fun tb!89209 () Bool)

(declare-fun t!144131 () Bool)

(assert (=> (and b!1583823 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0))))) t!144131) tb!89209))

(declare-fun result!107974 () Bool)

(assert (= result!107974 result!107966))

(assert (=> d!471822 t!144131))

(declare-fun b_and!111149 () Bool)

(assert (= b_and!111129 (and (=> t!144131 result!107974) b_and!111149)))

(declare-fun tb!89213 () Bool)

(declare-fun t!144135 () Bool)

(assert (=> (and b!1583852 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0))))) t!144135) tb!89213))

(declare-fun result!107978 () Bool)

(assert (= result!107978 result!107966))

(assert (=> d!471822 t!144135))

(declare-fun b_and!111151 () Bool)

(assert (= b_and!111131 (and (=> t!144135 result!107978) b_and!111151)))

(declare-fun m!1874633 () Bool)

(assert (=> d!471822 m!1874633))

(declare-fun m!1874635 () Bool)

(assert (=> d!471822 m!1874635))

(assert (=> b!1583347 d!471822))

(declare-fun d!471824 () Bool)

(declare-fun lt!557872 () Token!5700)

(declare-fun contains!3040 (List!17475 Token!5700) Bool)

(assert (=> d!471824 (contains!3040 lt!556039 lt!557872)))

(declare-fun e!1018399 () Token!5700)

(assert (=> d!471824 (= lt!557872 e!1018399)))

(declare-fun c!257050 () Bool)

(assert (=> d!471824 (= c!257050 (= 0 0))))

(declare-fun e!1018398 () Bool)

(assert (=> d!471824 e!1018398))

(declare-fun res!707067 () Bool)

(assert (=> d!471824 (=> (not res!707067) (not e!1018398))))

(assert (=> d!471824 (= res!707067 (<= 0 0))))

(assert (=> d!471824 (= (apply!4241 lt!556039 0) lt!557872)))

(declare-fun b!1585567 () Bool)

(assert (=> b!1585567 (= e!1018398 (< 0 (size!14007 lt!556039)))))

(declare-fun b!1585568 () Bool)

(assert (=> b!1585568 (= e!1018399 (head!3205 lt!556039))))

(declare-fun b!1585569 () Bool)

(assert (=> b!1585569 (= e!1018399 (apply!4241 (tail!2264 lt!556039) (- 0 1)))))

(assert (= (and d!471824 res!707067) b!1585567))

(assert (= (and d!471824 c!257050) b!1585568))

(assert (= (and d!471824 (not c!257050)) b!1585569))

(declare-fun m!1874655 () Bool)

(assert (=> d!471824 m!1874655))

(assert (=> b!1585567 m!1874581))

(declare-fun m!1874657 () Bool)

(assert (=> b!1585568 m!1874657))

(declare-fun m!1874659 () Bool)

(assert (=> b!1585569 m!1874659))

(assert (=> b!1585569 m!1874659))

(declare-fun m!1874661 () Bool)

(assert (=> b!1585569 m!1874661))

(assert (=> b!1583347 d!471824))

(declare-fun d!471826 () Bool)

(assert (=> d!471826 (= (tail!2264 (drop!820 lt!556035 0)) (drop!820 lt!556035 (+ 0 1)))))

(declare-fun lt!557875 () Unit!27203)

(declare-fun choose!9494 (List!17475 Int) Unit!27203)

(assert (=> d!471826 (= lt!557875 (choose!9494 lt!556035 0))))

(declare-fun e!1018404 () Bool)

(assert (=> d!471826 e!1018404))

(declare-fun res!707070 () Bool)

(assert (=> d!471826 (=> (not res!707070) (not e!1018404))))

(assert (=> d!471826 (= res!707070 (>= 0 0))))

(assert (=> d!471826 (= (lemmaDropTail!498 lt!556035 0) lt!557875)))

(declare-fun b!1585580 () Bool)

(assert (=> b!1585580 (= e!1018404 (< 0 (size!14007 lt!556035)))))

(assert (= (and d!471826 res!707070) b!1585580))

(assert (=> d!471826 m!1870045))

(assert (=> d!471826 m!1870045))

(assert (=> d!471826 m!1870047))

(assert (=> d!471826 m!1870035))

(declare-fun m!1874663 () Bool)

(assert (=> d!471826 m!1874663))

(assert (=> b!1585580 m!1874563))

(assert (=> b!1583347 d!471826))

(declare-fun d!471832 () Bool)

(declare-fun e!1018407 () Bool)

(assert (=> d!471832 e!1018407))

(declare-fun res!707073 () Bool)

(assert (=> d!471832 (=> (not res!707073) (not e!1018407))))

(declare-fun lt!557878 () BalanceConc!11508)

(assert (=> d!471832 (= res!707073 (= (list!6743 lt!557878) lt!555973))))

(declare-fun fromList!365 (List!17474) Conc!5782)

(assert (=> d!471832 (= lt!557878 (BalanceConc!11509 (fromList!365 lt!555973)))))

(assert (=> d!471832 (= (fromListB!805 lt!555973) lt!557878)))

(declare-fun b!1585583 () Bool)

(assert (=> b!1585583 (= e!1018407 (isBalanced!1702 (fromList!365 lt!555973)))))

(assert (= (and d!471832 res!707073) b!1585583))

(declare-fun m!1874665 () Bool)

(assert (=> d!471832 m!1874665))

(declare-fun m!1874667 () Bool)

(assert (=> d!471832 m!1874667))

(assert (=> b!1585583 m!1874667))

(assert (=> b!1585583 m!1874667))

(declare-fun m!1874669 () Bool)

(assert (=> b!1585583 m!1874669))

(assert (=> d!470784 d!471832))

(assert (=> b!1583663 d!471682))

(assert (=> b!1583663 d!471174))

(assert (=> b!1583663 d!471186))

(declare-fun e!1018408 () Bool)

(declare-fun b!1585584 () Bool)

(assert (=> b!1585584 (= e!1018408 (not (= (head!3208 (list!6743 (charsOf!1716 lt!556425))) (c!256548 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))))))

(declare-fun b!1585585 () Bool)

(declare-fun e!1018411 () Bool)

(declare-fun e!1018414 () Bool)

(assert (=> b!1585585 (= e!1018411 e!1018414)))

(declare-fun res!707079 () Bool)

(assert (=> b!1585585 (=> (not res!707079) (not e!1018414))))

(declare-fun lt!557879 () Bool)

(assert (=> b!1585585 (= res!707079 (not lt!557879))))

(declare-fun e!1018412 () Bool)

(declare-fun b!1585586 () Bool)

(assert (=> b!1585586 (= e!1018412 (matchR!1916 (derivativeStep!1044 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))) (head!3208 (list!6743 (charsOf!1716 lt!556425)))) (tail!2266 (list!6743 (charsOf!1716 lt!556425)))))))

(declare-fun e!1018410 () Bool)

(declare-fun b!1585587 () Bool)

(assert (=> b!1585587 (= e!1018410 (= (head!3208 (list!6743 (charsOf!1716 lt!556425))) (c!256548 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))))))))

(declare-fun d!471834 () Bool)

(declare-fun e!1018409 () Bool)

(assert (=> d!471834 e!1018409))

(declare-fun c!257054 () Bool)

(assert (=> d!471834 (= c!257054 ((_ is EmptyExpr!4395) (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))))

(assert (=> d!471834 (= lt!557879 e!1018412)))

(declare-fun c!257052 () Bool)

(assert (=> d!471834 (= c!257052 (isEmpty!10432 (list!6743 (charsOf!1716 lt!556425))))))

(assert (=> d!471834 (validRegex!1734 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))))))

(assert (=> d!471834 (= (matchR!1916 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))) (list!6743 (charsOf!1716 lt!556425))) lt!557879)))

(declare-fun b!1585588 () Bool)

(declare-fun res!707080 () Bool)

(assert (=> b!1585588 (=> res!707080 e!1018411)))

(assert (=> b!1585588 (= res!707080 e!1018410)))

(declare-fun res!707075 () Bool)

(assert (=> b!1585588 (=> (not res!707075) (not e!1018410))))

(assert (=> b!1585588 (= res!707075 lt!557879)))

(declare-fun b!1585589 () Bool)

(declare-fun res!707074 () Bool)

(assert (=> b!1585589 (=> res!707074 e!1018408)))

(assert (=> b!1585589 (= res!707074 (not (isEmpty!10432 (tail!2266 (list!6743 (charsOf!1716 lt!556425))))))))

(declare-fun b!1585590 () Bool)

(declare-fun e!1018413 () Bool)

(assert (=> b!1585590 (= e!1018409 e!1018413)))

(declare-fun c!257053 () Bool)

(assert (=> b!1585590 (= c!257053 ((_ is EmptyLang!4395) (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))))

(declare-fun b!1585591 () Bool)

(declare-fun res!707078 () Bool)

(assert (=> b!1585591 (=> (not res!707078) (not e!1018410))))

(declare-fun call!102909 () Bool)

(assert (=> b!1585591 (= res!707078 (not call!102909))))

(declare-fun b!1585592 () Bool)

(declare-fun res!707077 () Bool)

(assert (=> b!1585592 (=> (not res!707077) (not e!1018410))))

(assert (=> b!1585592 (= res!707077 (isEmpty!10432 (tail!2266 (list!6743 (charsOf!1716 lt!556425)))))))

(declare-fun b!1585593 () Bool)

(assert (=> b!1585593 (= e!1018409 (= lt!557879 call!102909))))

(declare-fun b!1585594 () Bool)

(assert (=> b!1585594 (= e!1018413 (not lt!557879))))

(declare-fun b!1585595 () Bool)

(declare-fun res!707076 () Bool)

(assert (=> b!1585595 (=> res!707076 e!1018411)))

(assert (=> b!1585595 (= res!707076 (not ((_ is ElementMatch!4395) (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425))))))))))

(assert (=> b!1585595 (= e!1018413 e!1018411)))

(declare-fun b!1585596 () Bool)

(assert (=> b!1585596 (= e!1018414 e!1018408)))

(declare-fun res!707081 () Bool)

(assert (=> b!1585596 (=> res!707081 e!1018408)))

(assert (=> b!1585596 (= res!707081 call!102909)))

(declare-fun bm!102904 () Bool)

(assert (=> bm!102904 (= call!102909 (isEmpty!10432 (list!6743 (charsOf!1716 lt!556425))))))

(declare-fun b!1585597 () Bool)

(assert (=> b!1585597 (= e!1018412 (nullable!1293 (regex!3067 (get!4979 (getRuleFromTag!240 thiss!17113 rules!1846 (tag!3335 (rule!4867 lt!556425)))))))))

(assert (= (and d!471834 c!257052) b!1585597))

(assert (= (and d!471834 (not c!257052)) b!1585586))

(assert (= (and d!471834 c!257054) b!1585593))

(assert (= (and d!471834 (not c!257054)) b!1585590))

(assert (= (and b!1585590 c!257053) b!1585594))

(assert (= (and b!1585590 (not c!257053)) b!1585595))

(assert (= (and b!1585595 (not res!707076)) b!1585588))

(assert (= (and b!1585588 res!707075) b!1585591))

(assert (= (and b!1585591 res!707078) b!1585592))

(assert (= (and b!1585592 res!707077) b!1585587))

(assert (= (and b!1585588 (not res!707080)) b!1585585))

(assert (= (and b!1585585 res!707079) b!1585596))

(assert (= (and b!1585596 (not res!707081)) b!1585589))

(assert (= (and b!1585589 (not res!707074)) b!1585584))

(assert (= (or b!1585593 b!1585591 b!1585596) bm!102904))

(assert (=> bm!102904 m!1870665))

(declare-fun m!1874671 () Bool)

(assert (=> bm!102904 m!1874671))

(assert (=> b!1585589 m!1870665))

(declare-fun m!1874673 () Bool)

(assert (=> b!1585589 m!1874673))

(assert (=> b!1585589 m!1874673))

(declare-fun m!1874675 () Bool)

(assert (=> b!1585589 m!1874675))

(assert (=> b!1585592 m!1870665))

(assert (=> b!1585592 m!1874673))

(assert (=> b!1585592 m!1874673))

(assert (=> b!1585592 m!1874675))

(declare-fun m!1874677 () Bool)

(assert (=> b!1585597 m!1874677))

(assert (=> b!1585587 m!1870665))

(declare-fun m!1874679 () Bool)

(assert (=> b!1585587 m!1874679))

(assert (=> b!1585586 m!1870665))

(assert (=> b!1585586 m!1874679))

(assert (=> b!1585586 m!1874679))

(declare-fun m!1874681 () Bool)

(assert (=> b!1585586 m!1874681))

(assert (=> b!1585586 m!1870665))

(assert (=> b!1585586 m!1874673))

(assert (=> b!1585586 m!1874681))

(assert (=> b!1585586 m!1874673))

(declare-fun m!1874683 () Bool)

(assert (=> b!1585586 m!1874683))

(assert (=> b!1585584 m!1870665))

(assert (=> b!1585584 m!1874679))

(assert (=> d!471834 m!1870665))

(assert (=> d!471834 m!1874671))

(declare-fun m!1874685 () Bool)

(assert (=> d!471834 m!1874685))

(assert (=> b!1583663 d!471834))

(assert (=> b!1583663 d!471178))

(declare-fun d!471836 () Bool)

(declare-fun c!257055 () Bool)

(assert (=> d!471836 (= c!257055 ((_ is Empty!5782) (c!256547 lt!555971)))))

(declare-fun e!1018415 () List!17474)

(assert (=> d!471836 (= (list!6747 (c!256547 lt!555971)) e!1018415)))

(declare-fun b!1585599 () Bool)

(declare-fun e!1018416 () List!17474)

(assert (=> b!1585599 (= e!1018415 e!1018416)))

(declare-fun c!257056 () Bool)

(assert (=> b!1585599 (= c!257056 ((_ is Leaf!8536) (c!256547 lt!555971)))))

(declare-fun b!1585601 () Bool)

(assert (=> b!1585601 (= e!1018416 (++!4529 (list!6747 (left!14061 (c!256547 lt!555971))) (list!6747 (right!14391 (c!256547 lt!555971)))))))

(declare-fun b!1585598 () Bool)

(assert (=> b!1585598 (= e!1018415 Nil!17404)))

(declare-fun b!1585600 () Bool)

(assert (=> b!1585600 (= e!1018416 (list!6750 (xs!8586 (c!256547 lt!555971))))))

(assert (= (and d!471836 c!257055) b!1585598))

(assert (= (and d!471836 (not c!257055)) b!1585599))

(assert (= (and b!1585599 c!257056) b!1585600))

(assert (= (and b!1585599 (not c!257056)) b!1585601))

(declare-fun m!1874687 () Bool)

(assert (=> b!1585601 m!1874687))

(declare-fun m!1874689 () Bool)

(assert (=> b!1585601 m!1874689))

(assert (=> b!1585601 m!1874687))

(assert (=> b!1585601 m!1874689))

(declare-fun m!1874691 () Bool)

(assert (=> b!1585601 m!1874691))

(declare-fun m!1874693 () Bool)

(assert (=> b!1585600 m!1874693))

(assert (=> d!470750 d!471836))

(declare-fun b!1585602 () Bool)

(declare-fun e!1018418 () Option!3128)

(declare-fun lt!557881 () Option!3128)

(declare-fun lt!557882 () Option!3128)

(assert (=> b!1585602 (= e!1018418 (ite (and ((_ is None!3127) lt!557881) ((_ is None!3127) lt!557882)) None!3127 (ite ((_ is None!3127) lt!557882) lt!557881 (ite ((_ is None!3127) lt!557881) lt!557882 (ite (>= (size!14000 (_1!9845 (v!23986 lt!557881))) (size!14000 (_1!9845 (v!23986 lt!557882)))) lt!557881 lt!557882)))))))

(declare-fun call!102910 () Option!3128)

(assert (=> b!1585602 (= lt!557881 call!102910)))

(assert (=> b!1585602 (= lt!557882 (maxPrefix!1260 thiss!17113 (t!143961 (t!143961 rules!1846)) lt!555972))))

(declare-fun b!1585603 () Bool)

(declare-fun e!1018417 () Bool)

(declare-fun lt!557884 () Option!3128)

(assert (=> b!1585603 (= e!1018417 (contains!3036 (t!143961 rules!1846) (rule!4867 (_1!9845 (get!4978 lt!557884)))))))

(declare-fun b!1585604 () Bool)

(declare-fun res!707084 () Bool)

(assert (=> b!1585604 (=> (not res!707084) (not e!1018417))))

(assert (=> b!1585604 (= res!707084 (= (value!97082 (_1!9845 (get!4978 lt!557884))) (apply!4242 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!557884)))) (seqFromList!1884 (originalCharacters!3881 (_1!9845 (get!4978 lt!557884)))))))))

(declare-fun d!471838 () Bool)

(declare-fun e!1018419 () Bool)

(assert (=> d!471838 e!1018419))

(declare-fun res!707085 () Bool)

(assert (=> d!471838 (=> res!707085 e!1018419)))

(assert (=> d!471838 (= res!707085 (isEmpty!10427 lt!557884))))

(assert (=> d!471838 (= lt!557884 e!1018418)))

(declare-fun c!257057 () Bool)

(assert (=> d!471838 (= c!257057 (and ((_ is Cons!17406) (t!143961 rules!1846)) ((_ is Nil!17406) (t!143961 (t!143961 rules!1846)))))))

(declare-fun lt!557883 () Unit!27203)

(declare-fun lt!557880 () Unit!27203)

(assert (=> d!471838 (= lt!557883 lt!557880)))

(assert (=> d!471838 (isPrefix!1327 lt!555972 lt!555972)))

(assert (=> d!471838 (= lt!557880 (lemmaIsPrefixRefl!916 lt!555972 lt!555972))))

(assert (=> d!471838 (rulesValidInductive!918 thiss!17113 (t!143961 rules!1846))))

(assert (=> d!471838 (= (maxPrefix!1260 thiss!17113 (t!143961 rules!1846) lt!555972) lt!557884)))

(declare-fun b!1585605 () Bool)

(assert (=> b!1585605 (= e!1018418 call!102910)))

(declare-fun b!1585606 () Bool)

(declare-fun res!707083 () Bool)

(assert (=> b!1585606 (=> (not res!707083) (not e!1018417))))

(assert (=> b!1585606 (= res!707083 (= (++!4529 (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557884)))) (_2!9845 (get!4978 lt!557884))) lt!555972))))

(declare-fun bm!102905 () Bool)

(assert (=> bm!102905 (= call!102910 (maxPrefixOneRule!731 thiss!17113 (h!22807 (t!143961 rules!1846)) lt!555972))))

(declare-fun b!1585607 () Bool)

(declare-fun res!707082 () Bool)

(assert (=> b!1585607 (=> (not res!707082) (not e!1018417))))

(assert (=> b!1585607 (= res!707082 (< (size!14005 (_2!9845 (get!4978 lt!557884))) (size!14005 lt!555972)))))

(declare-fun b!1585608 () Bool)

(declare-fun res!707087 () Bool)

(assert (=> b!1585608 (=> (not res!707087) (not e!1018417))))

(assert (=> b!1585608 (= res!707087 (= (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557884)))) (originalCharacters!3881 (_1!9845 (get!4978 lt!557884)))))))

(declare-fun b!1585609 () Bool)

(assert (=> b!1585609 (= e!1018419 e!1018417)))

(declare-fun res!707086 () Bool)

(assert (=> b!1585609 (=> (not res!707086) (not e!1018417))))

(assert (=> b!1585609 (= res!707086 (isDefined!2505 lt!557884))))

(declare-fun b!1585610 () Bool)

(declare-fun res!707088 () Bool)

(assert (=> b!1585610 (=> (not res!707088) (not e!1018417))))

(assert (=> b!1585610 (= res!707088 (matchR!1916 (regex!3067 (rule!4867 (_1!9845 (get!4978 lt!557884)))) (list!6743 (charsOf!1716 (_1!9845 (get!4978 lt!557884))))))))

(assert (= (and d!471838 c!257057) b!1585605))

(assert (= (and d!471838 (not c!257057)) b!1585602))

(assert (= (or b!1585605 b!1585602) bm!102905))

(assert (= (and d!471838 (not res!707085)) b!1585609))

(assert (= (and b!1585609 res!707086) b!1585608))

(assert (= (and b!1585608 res!707087) b!1585607))

(assert (= (and b!1585607 res!707082) b!1585606))

(assert (= (and b!1585606 res!707083) b!1585604))

(assert (= (and b!1585604 res!707084) b!1585610))

(assert (= (and b!1585610 res!707088) b!1585603))

(declare-fun m!1874695 () Bool)

(assert (=> bm!102905 m!1874695))

(declare-fun m!1874697 () Bool)

(assert (=> b!1585604 m!1874697))

(declare-fun m!1874699 () Bool)

(assert (=> b!1585604 m!1874699))

(assert (=> b!1585604 m!1874699))

(declare-fun m!1874701 () Bool)

(assert (=> b!1585604 m!1874701))

(declare-fun m!1874703 () Bool)

(assert (=> d!471838 m!1874703))

(assert (=> d!471838 m!1870107))

(assert (=> d!471838 m!1870109))

(assert (=> d!471838 m!1874185))

(assert (=> b!1585607 m!1874697))

(declare-fun m!1874705 () Bool)

(assert (=> b!1585607 m!1874705))

(assert (=> b!1585607 m!1870115))

(assert (=> b!1585603 m!1874697))

(declare-fun m!1874707 () Bool)

(assert (=> b!1585603 m!1874707))

(assert (=> b!1585610 m!1874697))

(declare-fun m!1874709 () Bool)

(assert (=> b!1585610 m!1874709))

(assert (=> b!1585610 m!1874709))

(declare-fun m!1874711 () Bool)

(assert (=> b!1585610 m!1874711))

(assert (=> b!1585610 m!1874711))

(declare-fun m!1874713 () Bool)

(assert (=> b!1585610 m!1874713))

(declare-fun m!1874715 () Bool)

(assert (=> b!1585602 m!1874715))

(assert (=> b!1585608 m!1874697))

(assert (=> b!1585608 m!1874709))

(assert (=> b!1585608 m!1874709))

(assert (=> b!1585608 m!1874711))

(assert (=> b!1585606 m!1874697))

(assert (=> b!1585606 m!1874709))

(assert (=> b!1585606 m!1874709))

(assert (=> b!1585606 m!1874711))

(assert (=> b!1585606 m!1874711))

(declare-fun m!1874717 () Bool)

(assert (=> b!1585606 m!1874717))

(declare-fun m!1874719 () Bool)

(assert (=> b!1585609 m!1874719))

(assert (=> b!1583398 d!471838))

(declare-fun d!471840 () Bool)

(declare-fun charsToInt!0 (List!17473) (_ BitVec 32))

(assert (=> d!471840 (= (inv!16 (value!97082 (h!22806 tokens!457))) (= (charsToInt!0 (text!22546 (value!97082 (h!22806 tokens!457)))) (value!97073 (value!97082 (h!22806 tokens!457)))))))

(declare-fun bs!391387 () Bool)

(assert (= bs!391387 d!471840))

(declare-fun m!1874721 () Bool)

(assert (=> bs!391387 m!1874721))

(assert (=> b!1583315 d!471840))

(declare-fun d!471842 () Bool)

(declare-fun res!707089 () Bool)

(declare-fun e!1018421 () Bool)

(assert (=> d!471842 (=> res!707089 e!1018421)))

(assert (=> d!471842 (= res!707089 (or (not ((_ is Cons!17405) (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))) (not ((_ is Cons!17405) (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))))))))

(assert (=> d!471842 (= (tokensListTwoByTwoPredicateSeparableList!389 thiss!17113 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))) rules!1846) e!1018421)))

(declare-fun b!1585611 () Bool)

(declare-fun e!1018420 () Bool)

(assert (=> b!1585611 (= e!1018421 e!1018420)))

(declare-fun res!707090 () Bool)

(assert (=> b!1585611 (=> (not res!707090) (not e!1018420))))

(assert (=> b!1585611 (= res!707090 (separableTokensPredicate!638 thiss!17113 (h!22806 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)))) (h!22806 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))) rules!1846))))

(declare-fun lt!557891 () Unit!27203)

(declare-fun Unit!27314 () Unit!27203)

(assert (=> b!1585611 (= lt!557891 Unit!27314)))

(assert (=> b!1585611 (> (size!14006 (charsOf!1716 (h!22806 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))))) 0)))

(declare-fun lt!557886 () Unit!27203)

(declare-fun Unit!27315 () Unit!27203)

(assert (=> b!1585611 (= lt!557886 Unit!27315)))

(assert (=> b!1585611 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))))))

(declare-fun lt!557890 () Unit!27203)

(declare-fun Unit!27316 () Unit!27203)

(assert (=> b!1585611 (= lt!557890 Unit!27316)))

(assert (=> b!1585611 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)))))))

(declare-fun lt!557889 () Unit!27203)

(declare-fun lt!557885 () Unit!27203)

(assert (=> b!1585611 (= lt!557889 lt!557885)))

(assert (=> b!1585611 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))))))

(assert (=> b!1585611 (= lt!557885 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 thiss!17113 rules!1846 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))) (h!22806 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)))))))))

(declare-fun lt!557887 () Unit!27203)

(declare-fun lt!557888 () Unit!27203)

(assert (=> b!1585611 (= lt!557887 lt!557888)))

(assert (=> b!1585611 (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)))))))

(assert (=> b!1585611 (= lt!557888 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!521 thiss!17113 rules!1846 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))) (h!22806 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))))))

(declare-fun b!1585612 () Bool)

(assert (=> b!1585612 (= e!1018420 (tokensListTwoByTwoPredicateSeparableList!389 thiss!17113 (Cons!17405 (h!22806 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457))))) (t!143960 (t!143960 (Cons!17405 (h!22806 (t!143960 tokens!457)) (t!143960 (t!143960 tokens!457)))))) rules!1846))))

(assert (= (and d!471842 (not res!707089)) b!1585611))

(assert (= (and b!1585611 res!707090) b!1585612))

(declare-fun m!1874723 () Bool)

(assert (=> b!1585611 m!1874723))

(declare-fun m!1874725 () Bool)

(assert (=> b!1585611 m!1874725))

(declare-fun m!1874727 () Bool)

(assert (=> b!1585611 m!1874727))

(declare-fun m!1874729 () Bool)

(assert (=> b!1585611 m!1874729))

(declare-fun m!1874731 () Bool)

(assert (=> b!1585611 m!1874731))

(declare-fun m!1874733 () Bool)

(assert (=> b!1585611 m!1874733))

(assert (=> b!1585611 m!1874727))

(declare-fun m!1874735 () Bool)

(assert (=> b!1585611 m!1874735))

(declare-fun m!1874737 () Bool)

(assert (=> b!1585612 m!1874737))

(assert (=> b!1583550 d!471842))

(declare-fun d!471844 () Bool)

(assert (=> d!471844 (= (isEmpty!10427 lt!555962) (not ((_ is Some!3127) lt!555962)))))

(assert (=> d!470864 d!471844))

(declare-fun d!471846 () Bool)

(declare-fun lt!557892 () Int)

(assert (=> d!471846 (>= lt!557892 0)))

(declare-fun e!1018422 () Int)

(assert (=> d!471846 (= lt!557892 e!1018422)))

(declare-fun c!257058 () Bool)

(assert (=> d!471846 (= c!257058 ((_ is Nil!17404) (originalCharacters!3881 (h!22806 tokens!457))))))

(assert (=> d!471846 (= (size!14005 (originalCharacters!3881 (h!22806 tokens!457))) lt!557892)))

(declare-fun b!1585613 () Bool)

(assert (=> b!1585613 (= e!1018422 0)))

(declare-fun b!1585614 () Bool)

(assert (=> b!1585614 (= e!1018422 (+ 1 (size!14005 (t!143959 (originalCharacters!3881 (h!22806 tokens!457))))))))

(assert (= (and d!471846 c!257058) b!1585613))

(assert (= (and d!471846 (not c!257058)) b!1585614))

(declare-fun m!1874739 () Bool)

(assert (=> b!1585614 m!1874739))

(assert (=> b!1583565 d!471846))

(declare-fun bs!391388 () Bool)

(declare-fun d!471848 () Bool)

(assert (= bs!391388 (and d!471848 d!470998)))

(declare-fun lambda!66574 () Int)

(assert (=> bs!391388 (= (and (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) (= (toValue!4474 (transformation!3067 (h!22807 rules!1846))) (toValue!4474 (transformation!3067 (rule!4867 (h!22806 tokens!457)))))) (= lambda!66574 lambda!66529))))

(assert (=> d!471848 true))

(assert (=> d!471848 (< (dynLambda!7723 order!10273 (toChars!4333 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7728 order!10281 lambda!66574))))

(assert (=> d!471848 true))

(assert (=> d!471848 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (dynLambda!7728 order!10281 lambda!66574))))

(assert (=> d!471848 (= (semiInverseModEq!1156 (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toValue!4474 (transformation!3067 (h!22807 rules!1846)))) (Forall!633 lambda!66574))))

(declare-fun bs!391389 () Bool)

(assert (= bs!391389 d!471848))

(declare-fun m!1874741 () Bool)

(assert (=> bs!391389 m!1874741))

(assert (=> d!470788 d!471848))

(declare-fun d!471850 () Bool)

(declare-fun c!257061 () Bool)

(assert (=> d!471850 (= c!257061 ((_ is Nil!17404) lt!556166))))

(declare-fun e!1018425 () (InoxSet C!8964))

(assert (=> d!471850 (= (content!2394 lt!556166) e!1018425)))

(declare-fun b!1585619 () Bool)

(assert (=> b!1585619 (= e!1018425 ((as const (Array C!8964 Bool)) false))))

(declare-fun b!1585620 () Bool)

(assert (=> b!1585620 (= e!1018425 ((_ map or) (store ((as const (Array C!8964 Bool)) false) (h!22805 lt!556166) true) (content!2394 (t!143959 lt!556166))))))

(assert (= (and d!471850 c!257061) b!1585619))

(assert (= (and d!471850 (not c!257061)) b!1585620))

(declare-fun m!1874743 () Bool)

(assert (=> b!1585620 m!1874743))

(declare-fun m!1874745 () Bool)

(assert (=> b!1585620 m!1874745))

(assert (=> d!470830 d!471850))

(declare-fun d!471852 () Bool)

(declare-fun c!257062 () Bool)

(assert (=> d!471852 (= c!257062 ((_ is Nil!17404) lt!555973))))

(declare-fun e!1018426 () (InoxSet C!8964))

(assert (=> d!471852 (= (content!2394 lt!555973) e!1018426)))

(declare-fun b!1585621 () Bool)

(assert (=> b!1585621 (= e!1018426 ((as const (Array C!8964 Bool)) false))))

(declare-fun b!1585622 () Bool)

(assert (=> b!1585622 (= e!1018426 ((_ map or) (store ((as const (Array C!8964 Bool)) false) (h!22805 lt!555973) true) (content!2394 (t!143959 lt!555973))))))

(assert (= (and d!471852 c!257062) b!1585621))

(assert (= (and d!471852 (not c!257062)) b!1585622))

(declare-fun m!1874747 () Bool)

(assert (=> b!1585622 m!1874747))

(assert (=> b!1585622 m!1872449))

(assert (=> d!470830 d!471852))

(declare-fun d!471854 () Bool)

(declare-fun c!257063 () Bool)

(assert (=> d!471854 (= c!257063 ((_ is Nil!17404) lt!555959))))

(declare-fun e!1018427 () (InoxSet C!8964))

(assert (=> d!471854 (= (content!2394 lt!555959) e!1018427)))

(declare-fun b!1585623 () Bool)

(assert (=> b!1585623 (= e!1018427 ((as const (Array C!8964 Bool)) false))))

(declare-fun b!1585624 () Bool)

(assert (=> b!1585624 (= e!1018427 ((_ map or) (store ((as const (Array C!8964 Bool)) false) (h!22805 lt!555959) true) (content!2394 (t!143959 lt!555959))))))

(assert (= (and d!471854 c!257063) b!1585623))

(assert (= (and d!471854 (not c!257063)) b!1585624))

(declare-fun m!1874749 () Bool)

(assert (=> b!1585624 m!1874749))

(declare-fun m!1874751 () Bool)

(assert (=> b!1585624 m!1874751))

(assert (=> d!470830 d!471854))

(declare-fun b!1585628 () Bool)

(declare-fun b_free!42839 () Bool)

(declare-fun b_next!43543 () Bool)

(assert (=> b!1585628 (= b_free!42839 (not b_next!43543))))

(declare-fun tb!89239 () Bool)

(declare-fun t!144161 () Bool)

(assert (=> (and b!1585628 (= (toValue!4474 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144161) tb!89239))

(declare-fun result!108004 () Bool)

(assert (= result!108004 result!107944))

(assert (=> d!471550 t!144161))

(declare-fun b_and!111157 () Bool)

(declare-fun tp!466099 () Bool)

(assert (=> b!1585628 (= tp!466099 (and (=> t!144161 result!108004) b_and!111157))))

(declare-fun b_free!42841 () Bool)

(declare-fun b_next!43545 () Bool)

(assert (=> b!1585628 (= b_free!42841 (not b_next!43545))))

(declare-fun t!144163 () Bool)

(declare-fun tb!89241 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) t!144163) tb!89241))

(declare-fun result!108006 () Bool)

(assert (= result!108006 result!107850))

(assert (=> b!1583989 t!144163))

(declare-fun t!144165 () Bool)

(declare-fun tb!89243 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) t!144165) tb!89243))

(declare-fun result!108008 () Bool)

(assert (= result!108008 result!107818))

(assert (=> b!1583564 t!144165))

(assert (=> d!470932 t!144163))

(assert (=> d!470822 t!144165))

(declare-fun tb!89245 () Bool)

(declare-fun t!144167 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 lt!556425)))) t!144167) tb!89245))

(declare-fun result!108010 () Bool)

(assert (= result!108010 result!107904))

(assert (=> d!471186 t!144167))

(declare-fun t!144169 () Bool)

(declare-fun tb!89247 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) t!144169) tb!89247))

(declare-fun result!108012 () Bool)

(assert (= result!108012 result!107954))

(assert (=> d!471698 t!144169))

(declare-fun t!144171 () Bool)

(declare-fun tb!89249 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144171) tb!89249))

(declare-fun result!108014 () Bool)

(assert (= result!108014 result!107896))

(assert (=> d!471132 t!144171))

(declare-fun t!144173 () Bool)

(declare-fun tb!89251 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))))) t!144173) tb!89251))

(declare-fun result!108016 () Bool)

(assert (= result!108016 result!107928))

(assert (=> d!471392 t!144173))

(declare-fun t!144175 () Bool)

(declare-fun tb!89253 () Bool)

(assert (=> (and b!1585628 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0))))) t!144175) tb!89253))

(declare-fun result!108018 () Bool)

(assert (= result!108018 result!107966))

(assert (=> d!471822 t!144175))

(declare-fun tp!466100 () Bool)

(declare-fun b_and!111159 () Bool)

(assert (=> b!1585628 (= tp!466100 (and (=> t!144167 result!108010) (=> t!144165 result!108008) (=> t!144169 result!108012) (=> t!144173 result!108016) (=> t!144163 result!108006) (=> t!144175 result!108018) (=> t!144171 result!108014) b_and!111159))))

(declare-fun e!1018429 () Bool)

(assert (=> b!1583820 (= tp!465966 e!1018429)))

(declare-fun tp!466096 () Bool)

(declare-fun b!1585625 () Bool)

(declare-fun e!1018431 () Bool)

(assert (=> b!1585625 (= e!1018429 (and (inv!22822 (h!22806 (t!143960 (t!143960 tokens!457)))) e!1018431 tp!466096))))

(declare-fun e!1018428 () Bool)

(declare-fun b!1585627 () Bool)

(declare-fun e!1018433 () Bool)

(declare-fun tp!466097 () Bool)

(assert (=> b!1585627 (= e!1018428 (and tp!466097 (inv!22818 (tag!3335 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (inv!22821 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) e!1018433))))

(declare-fun b!1585626 () Bool)

(declare-fun tp!466098 () Bool)

(assert (=> b!1585626 (= e!1018431 (and (inv!21 (value!97082 (h!22806 (t!143960 (t!143960 tokens!457))))) e!1018428 tp!466098))))

(assert (=> b!1585628 (= e!1018433 (and tp!466099 tp!466100))))

(assert (= b!1585627 b!1585628))

(assert (= b!1585626 b!1585627))

(assert (= b!1585625 b!1585626))

(assert (= (and b!1583820 ((_ is Cons!17405) (t!143960 (t!143960 tokens!457)))) b!1585625))

(declare-fun m!1874753 () Bool)

(assert (=> b!1585625 m!1874753))

(declare-fun m!1874755 () Bool)

(assert (=> b!1585627 m!1874755))

(declare-fun m!1874757 () Bool)

(assert (=> b!1585627 m!1874757))

(declare-fun m!1874759 () Bool)

(assert (=> b!1585626 m!1874759))

(declare-fun b!1585629 () Bool)

(declare-fun e!1018434 () Bool)

(declare-fun tp!466101 () Bool)

(assert (=> b!1585629 (= e!1018434 (and tp_is_empty!7193 tp!466101))))

(assert (=> b!1583821 (= tp!465968 e!1018434)))

(assert (= (and b!1583821 ((_ is Cons!17404) (originalCharacters!3881 (h!22806 (t!143960 tokens!457))))) b!1585629))

(declare-fun b!1585631 () Bool)

(declare-fun e!1018435 () Bool)

(declare-fun tp!466102 () Bool)

(declare-fun tp!466106 () Bool)

(assert (=> b!1585631 (= e!1018435 (and tp!466102 tp!466106))))

(declare-fun b!1585633 () Bool)

(declare-fun tp!466103 () Bool)

(declare-fun tp!466105 () Bool)

(assert (=> b!1585633 (= e!1018435 (and tp!466103 tp!466105))))

(declare-fun b!1585630 () Bool)

(assert (=> b!1585630 (= e!1018435 tp_is_empty!7193)))

(declare-fun b!1585632 () Bool)

(declare-fun tp!466104 () Bool)

(assert (=> b!1585632 (= e!1018435 tp!466104)))

(assert (=> b!1583822 (= tp!465967 e!1018435)))

(assert (= (and b!1583822 ((_ is ElementMatch!4395) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) b!1585630))

(assert (= (and b!1583822 ((_ is Concat!7553) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) b!1585631))

(assert (= (and b!1583822 ((_ is Star!4395) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) b!1585632))

(assert (= (and b!1583822 ((_ is Union!4395) (regex!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) b!1585633))

(declare-fun b!1585635 () Bool)

(declare-fun e!1018436 () Bool)

(declare-fun tp!466107 () Bool)

(declare-fun tp!466111 () Bool)

(assert (=> b!1585635 (= e!1018436 (and tp!466107 tp!466111))))

(declare-fun b!1585637 () Bool)

(declare-fun tp!466108 () Bool)

(declare-fun tp!466110 () Bool)

(assert (=> b!1585637 (= e!1018436 (and tp!466108 tp!466110))))

(declare-fun b!1585634 () Bool)

(assert (=> b!1585634 (= e!1018436 tp_is_empty!7193)))

(declare-fun b!1585636 () Bool)

(declare-fun tp!466109 () Bool)

(assert (=> b!1585636 (= e!1018436 tp!466109)))

(assert (=> b!1583836 (= tp!465983 e!1018436)))

(assert (= (and b!1583836 ((_ is ElementMatch!4395) (reg!4724 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585634))

(assert (= (and b!1583836 ((_ is Concat!7553) (reg!4724 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585635))

(assert (= (and b!1583836 ((_ is Star!4395) (reg!4724 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585636))

(assert (= (and b!1583836 ((_ is Union!4395) (reg!4724 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585637))

(declare-fun b!1585639 () Bool)

(declare-fun e!1018437 () Bool)

(declare-fun tp!466112 () Bool)

(declare-fun tp!466116 () Bool)

(assert (=> b!1585639 (= e!1018437 (and tp!466112 tp!466116))))

(declare-fun b!1585641 () Bool)

(declare-fun tp!466113 () Bool)

(declare-fun tp!466115 () Bool)

(assert (=> b!1585641 (= e!1018437 (and tp!466113 tp!466115))))

(declare-fun b!1585638 () Bool)

(assert (=> b!1585638 (= e!1018437 tp_is_empty!7193)))

(declare-fun b!1585640 () Bool)

(declare-fun tp!466114 () Bool)

(assert (=> b!1585640 (= e!1018437 tp!466114)))

(assert (=> b!1583841 (= tp!465987 e!1018437)))

(assert (= (and b!1583841 ((_ is ElementMatch!4395) (regOne!9303 (regex!3067 (h!22807 rules!1846))))) b!1585638))

(assert (= (and b!1583841 ((_ is Concat!7553) (regOne!9303 (regex!3067 (h!22807 rules!1846))))) b!1585639))

(assert (= (and b!1583841 ((_ is Star!4395) (regOne!9303 (regex!3067 (h!22807 rules!1846))))) b!1585640))

(assert (= (and b!1583841 ((_ is Union!4395) (regOne!9303 (regex!3067 (h!22807 rules!1846))))) b!1585641))

(declare-fun b!1585643 () Bool)

(declare-fun e!1018438 () Bool)

(declare-fun tp!466117 () Bool)

(declare-fun tp!466121 () Bool)

(assert (=> b!1585643 (= e!1018438 (and tp!466117 tp!466121))))

(declare-fun b!1585645 () Bool)

(declare-fun tp!466118 () Bool)

(declare-fun tp!466120 () Bool)

(assert (=> b!1585645 (= e!1018438 (and tp!466118 tp!466120))))

(declare-fun b!1585642 () Bool)

(assert (=> b!1585642 (= e!1018438 tp_is_empty!7193)))

(declare-fun b!1585644 () Bool)

(declare-fun tp!466119 () Bool)

(assert (=> b!1585644 (= e!1018438 tp!466119)))

(assert (=> b!1583841 (= tp!465989 e!1018438)))

(assert (= (and b!1583841 ((_ is ElementMatch!4395) (regTwo!9303 (regex!3067 (h!22807 rules!1846))))) b!1585642))

(assert (= (and b!1583841 ((_ is Concat!7553) (regTwo!9303 (regex!3067 (h!22807 rules!1846))))) b!1585643))

(assert (= (and b!1583841 ((_ is Star!4395) (regTwo!9303 (regex!3067 (h!22807 rules!1846))))) b!1585644))

(assert (= (and b!1583841 ((_ is Union!4395) (regTwo!9303 (regex!3067 (h!22807 rules!1846))))) b!1585645))

(declare-fun b!1585647 () Bool)

(declare-fun e!1018439 () Bool)

(declare-fun tp!466122 () Bool)

(declare-fun tp!466126 () Bool)

(assert (=> b!1585647 (= e!1018439 (and tp!466122 tp!466126))))

(declare-fun b!1585649 () Bool)

(declare-fun tp!466123 () Bool)

(declare-fun tp!466125 () Bool)

(assert (=> b!1585649 (= e!1018439 (and tp!466123 tp!466125))))

(declare-fun b!1585646 () Bool)

(assert (=> b!1585646 (= e!1018439 tp_is_empty!7193)))

(declare-fun b!1585648 () Bool)

(declare-fun tp!466124 () Bool)

(assert (=> b!1585648 (= e!1018439 tp!466124)))

(assert (=> b!1583837 (= tp!465982 e!1018439)))

(assert (= (and b!1583837 ((_ is ElementMatch!4395) (regOne!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585646))

(assert (= (and b!1583837 ((_ is Concat!7553) (regOne!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585647))

(assert (= (and b!1583837 ((_ is Star!4395) (regOne!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585648))

(assert (= (and b!1583837 ((_ is Union!4395) (regOne!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585649))

(declare-fun b!1585651 () Bool)

(declare-fun e!1018440 () Bool)

(declare-fun tp!466127 () Bool)

(declare-fun tp!466131 () Bool)

(assert (=> b!1585651 (= e!1018440 (and tp!466127 tp!466131))))

(declare-fun b!1585653 () Bool)

(declare-fun tp!466128 () Bool)

(declare-fun tp!466130 () Bool)

(assert (=> b!1585653 (= e!1018440 (and tp!466128 tp!466130))))

(declare-fun b!1585650 () Bool)

(assert (=> b!1585650 (= e!1018440 tp_is_empty!7193)))

(declare-fun b!1585652 () Bool)

(declare-fun tp!466129 () Bool)

(assert (=> b!1585652 (= e!1018440 tp!466129)))

(assert (=> b!1583837 (= tp!465984 e!1018440)))

(assert (= (and b!1583837 ((_ is ElementMatch!4395) (regTwo!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585650))

(assert (= (and b!1583837 ((_ is Concat!7553) (regTwo!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585651))

(assert (= (and b!1583837 ((_ is Star!4395) (regTwo!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585652))

(assert (= (and b!1583837 ((_ is Union!4395) (regTwo!9303 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585653))

(declare-fun b!1585662 () Bool)

(declare-fun e!1018446 () Bool)

(declare-fun tp!466139 () Bool)

(declare-fun tp!466140 () Bool)

(assert (=> b!1585662 (= e!1018446 (and (inv!22825 (left!14061 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))))) tp!466140 (inv!22825 (right!14391 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))))) tp!466139))))

(declare-fun b!1585664 () Bool)

(declare-fun e!1018445 () Bool)

(declare-fun tp!466138 () Bool)

(assert (=> b!1585664 (= e!1018445 tp!466138)))

(declare-fun b!1585663 () Bool)

(declare-fun inv!22831 (IArray!11569) Bool)

(assert (=> b!1585663 (= e!1018446 (and (inv!22831 (xs!8586 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))))) e!1018445))))

(assert (=> b!1583496 (= tp!465897 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457))))) e!1018446))))

(assert (= (and b!1583496 ((_ is Node!5782) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))))) b!1585662))

(assert (= b!1585663 b!1585664))

(assert (= (and b!1583496 ((_ is Leaf!8536) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (value!97082 (h!22806 tokens!457)))))) b!1585663))

(declare-fun m!1874761 () Bool)

(assert (=> b!1585662 m!1874761))

(declare-fun m!1874763 () Bool)

(assert (=> b!1585662 m!1874763))

(declare-fun m!1874765 () Bool)

(assert (=> b!1585663 m!1874765))

(assert (=> b!1583496 m!1870307))

(declare-fun b!1585667 () Bool)

(declare-fun e!1018449 () Bool)

(assert (=> b!1585667 (= e!1018449 true)))

(declare-fun b!1585666 () Bool)

(declare-fun e!1018448 () Bool)

(assert (=> b!1585666 (= e!1018448 e!1018449)))

(declare-fun b!1585665 () Bool)

(declare-fun e!1018447 () Bool)

(assert (=> b!1585665 (= e!1018447 e!1018448)))

(assert (=> b!1583482 e!1018447))

(assert (= b!1585666 b!1585667))

(assert (= b!1585665 b!1585666))

(assert (= (and b!1583482 ((_ is Cons!17406) (t!143961 rules!1846))) b!1585665))

(assert (=> b!1585667 (< (dynLambda!7721 order!10269 (toValue!4474 (transformation!3067 (h!22807 (t!143961 rules!1846))))) (dynLambda!7722 order!10271 lambda!66517))))

(assert (=> b!1585667 (< (dynLambda!7723 order!10273 (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846))))) (dynLambda!7722 order!10271 lambda!66517))))

(declare-fun b!1585669 () Bool)

(declare-fun e!1018450 () Bool)

(declare-fun tp!466141 () Bool)

(declare-fun tp!466145 () Bool)

(assert (=> b!1585669 (= e!1018450 (and tp!466141 tp!466145))))

(declare-fun b!1585671 () Bool)

(declare-fun tp!466142 () Bool)

(declare-fun tp!466144 () Bool)

(assert (=> b!1585671 (= e!1018450 (and tp!466142 tp!466144))))

(declare-fun b!1585668 () Bool)

(assert (=> b!1585668 (= e!1018450 tp_is_empty!7193)))

(declare-fun b!1585670 () Bool)

(declare-fun tp!466143 () Bool)

(assert (=> b!1585670 (= e!1018450 tp!466143)))

(assert (=> b!1583851 (= tp!466000 e!1018450)))

(assert (= (and b!1583851 ((_ is ElementMatch!4395) (regex!3067 (h!22807 (t!143961 rules!1846))))) b!1585668))

(assert (= (and b!1583851 ((_ is Concat!7553) (regex!3067 (h!22807 (t!143961 rules!1846))))) b!1585669))

(assert (= (and b!1583851 ((_ is Star!4395) (regex!3067 (h!22807 (t!143961 rules!1846))))) b!1585670))

(assert (= (and b!1583851 ((_ is Union!4395) (regex!3067 (h!22807 (t!143961 rules!1846))))) b!1585671))

(declare-fun e!1018452 () Bool)

(declare-fun tp!466147 () Bool)

(declare-fun b!1585672 () Bool)

(declare-fun tp!466148 () Bool)

(assert (=> b!1585672 (= e!1018452 (and (inv!22825 (left!14061 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))))) tp!466148 (inv!22825 (right!14391 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))))) tp!466147))))

(declare-fun b!1585674 () Bool)

(declare-fun e!1018451 () Bool)

(declare-fun tp!466146 () Bool)

(assert (=> b!1585674 (= e!1018451 tp!466146)))

(declare-fun b!1585673 () Bool)

(assert (=> b!1585673 (= e!1018452 (and (inv!22831 (xs!8586 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))))) e!1018451))))

(assert (=> b!1583804 (= tp!465952 (and (inv!22825 (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457)))))) e!1018452))))

(assert (= (and b!1583804 ((_ is Node!5782) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))))) b!1585672))

(assert (= b!1585673 b!1585674))

(assert (= (and b!1583804 ((_ is Leaf!8536) (c!256547 (dynLambda!7725 (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (value!97082 (h!22806 (t!143960 tokens!457))))))) b!1585673))

(declare-fun m!1874767 () Bool)

(assert (=> b!1585672 m!1874767))

(declare-fun m!1874769 () Bool)

(assert (=> b!1585672 m!1874769))

(declare-fun m!1874771 () Bool)

(assert (=> b!1585673 m!1874771))

(assert (=> b!1583804 m!1870853))

(declare-fun b!1585676 () Bool)

(declare-fun e!1018453 () Bool)

(declare-fun tp!466149 () Bool)

(declare-fun tp!466153 () Bool)

(assert (=> b!1585676 (= e!1018453 (and tp!466149 tp!466153))))

(declare-fun b!1585678 () Bool)

(declare-fun tp!466150 () Bool)

(declare-fun tp!466152 () Bool)

(assert (=> b!1585678 (= e!1018453 (and tp!466150 tp!466152))))

(declare-fun b!1585675 () Bool)

(assert (=> b!1585675 (= e!1018453 tp_is_empty!7193)))

(declare-fun b!1585677 () Bool)

(declare-fun tp!466151 () Bool)

(assert (=> b!1585677 (= e!1018453 tp!466151)))

(assert (=> b!1583839 (= tp!465986 e!1018453)))

(assert (= (and b!1583839 ((_ is ElementMatch!4395) (regOne!9302 (regex!3067 (h!22807 rules!1846))))) b!1585675))

(assert (= (and b!1583839 ((_ is Concat!7553) (regOne!9302 (regex!3067 (h!22807 rules!1846))))) b!1585676))

(assert (= (and b!1583839 ((_ is Star!4395) (regOne!9302 (regex!3067 (h!22807 rules!1846))))) b!1585677))

(assert (= (and b!1583839 ((_ is Union!4395) (regOne!9302 (regex!3067 (h!22807 rules!1846))))) b!1585678))

(declare-fun b!1585680 () Bool)

(declare-fun e!1018454 () Bool)

(declare-fun tp!466154 () Bool)

(declare-fun tp!466158 () Bool)

(assert (=> b!1585680 (= e!1018454 (and tp!466154 tp!466158))))

(declare-fun b!1585682 () Bool)

(declare-fun tp!466155 () Bool)

(declare-fun tp!466157 () Bool)

(assert (=> b!1585682 (= e!1018454 (and tp!466155 tp!466157))))

(declare-fun b!1585679 () Bool)

(assert (=> b!1585679 (= e!1018454 tp_is_empty!7193)))

(declare-fun b!1585681 () Bool)

(declare-fun tp!466156 () Bool)

(assert (=> b!1585681 (= e!1018454 tp!466156)))

(assert (=> b!1583839 (= tp!465990 e!1018454)))

(assert (= (and b!1583839 ((_ is ElementMatch!4395) (regTwo!9302 (regex!3067 (h!22807 rules!1846))))) b!1585679))

(assert (= (and b!1583839 ((_ is Concat!7553) (regTwo!9302 (regex!3067 (h!22807 rules!1846))))) b!1585680))

(assert (= (and b!1583839 ((_ is Star!4395) (regTwo!9302 (regex!3067 (h!22807 rules!1846))))) b!1585681))

(assert (= (and b!1583839 ((_ is Union!4395) (regTwo!9302 (regex!3067 (h!22807 rules!1846))))) b!1585682))

(declare-fun b!1585684 () Bool)

(declare-fun e!1018455 () Bool)

(declare-fun tp!466159 () Bool)

(declare-fun tp!466163 () Bool)

(assert (=> b!1585684 (= e!1018455 (and tp!466159 tp!466163))))

(declare-fun b!1585686 () Bool)

(declare-fun tp!466160 () Bool)

(declare-fun tp!466162 () Bool)

(assert (=> b!1585686 (= e!1018455 (and tp!466160 tp!466162))))

(declare-fun b!1585683 () Bool)

(assert (=> b!1585683 (= e!1018455 tp_is_empty!7193)))

(declare-fun b!1585685 () Bool)

(declare-fun tp!466161 () Bool)

(assert (=> b!1585685 (= e!1018455 tp!466161)))

(assert (=> b!1583835 (= tp!465981 e!1018455)))

(assert (= (and b!1583835 ((_ is ElementMatch!4395) (regOne!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585683))

(assert (= (and b!1583835 ((_ is Concat!7553) (regOne!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585684))

(assert (= (and b!1583835 ((_ is Star!4395) (regOne!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585685))

(assert (= (and b!1583835 ((_ is Union!4395) (regOne!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585686))

(declare-fun b!1585688 () Bool)

(declare-fun e!1018456 () Bool)

(declare-fun tp!466164 () Bool)

(declare-fun tp!466168 () Bool)

(assert (=> b!1585688 (= e!1018456 (and tp!466164 tp!466168))))

(declare-fun b!1585690 () Bool)

(declare-fun tp!466165 () Bool)

(declare-fun tp!466167 () Bool)

(assert (=> b!1585690 (= e!1018456 (and tp!466165 tp!466167))))

(declare-fun b!1585687 () Bool)

(assert (=> b!1585687 (= e!1018456 tp_is_empty!7193)))

(declare-fun b!1585689 () Bool)

(declare-fun tp!466166 () Bool)

(assert (=> b!1585689 (= e!1018456 tp!466166)))

(assert (=> b!1583835 (= tp!465985 e!1018456)))

(assert (= (and b!1583835 ((_ is ElementMatch!4395) (regTwo!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585687))

(assert (= (and b!1583835 ((_ is Concat!7553) (regTwo!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585688))

(assert (= (and b!1583835 ((_ is Star!4395) (regTwo!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585689))

(assert (= (and b!1583835 ((_ is Union!4395) (regTwo!9302 (regex!3067 (rule!4867 (h!22806 tokens!457)))))) b!1585690))

(declare-fun b!1585692 () Bool)

(declare-fun e!1018457 () Bool)

(declare-fun tp!466169 () Bool)

(declare-fun tp!466173 () Bool)

(assert (=> b!1585692 (= e!1018457 (and tp!466169 tp!466173))))

(declare-fun b!1585694 () Bool)

(declare-fun tp!466170 () Bool)

(declare-fun tp!466172 () Bool)

(assert (=> b!1585694 (= e!1018457 (and tp!466170 tp!466172))))

(declare-fun b!1585691 () Bool)

(assert (=> b!1585691 (= e!1018457 tp_is_empty!7193)))

(declare-fun b!1585693 () Bool)

(declare-fun tp!466171 () Bool)

(assert (=> b!1585693 (= e!1018457 tp!466171)))

(assert (=> b!1583840 (= tp!465988 e!1018457)))

(assert (= (and b!1583840 ((_ is ElementMatch!4395) (reg!4724 (regex!3067 (h!22807 rules!1846))))) b!1585691))

(assert (= (and b!1583840 ((_ is Concat!7553) (reg!4724 (regex!3067 (h!22807 rules!1846))))) b!1585692))

(assert (= (and b!1583840 ((_ is Star!4395) (reg!4724 (regex!3067 (h!22807 rules!1846))))) b!1585693))

(assert (= (and b!1583840 ((_ is Union!4395) (reg!4724 (regex!3067 (h!22807 rules!1846))))) b!1585694))

(declare-fun b!1585695 () Bool)

(declare-fun e!1018458 () Bool)

(declare-fun tp!466174 () Bool)

(assert (=> b!1585695 (= e!1018458 (and tp_is_empty!7193 tp!466174))))

(assert (=> b!1583809 (= tp!465955 e!1018458)))

(assert (= (and b!1583809 ((_ is Cons!17404) (t!143959 (originalCharacters!3881 (h!22806 tokens!457))))) b!1585695))

(declare-fun b!1585698 () Bool)

(declare-fun b_free!42843 () Bool)

(declare-fun b_next!43547 () Bool)

(assert (=> b!1585698 (= b_free!42843 (not b_next!43547))))

(declare-fun t!144177 () Bool)

(declare-fun tb!89255 () Bool)

(assert (=> (and b!1585698 (= (toValue!4474 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toValue!4474 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144177) tb!89255))

(declare-fun result!108022 () Bool)

(assert (= result!108022 result!107944))

(assert (=> d!471550 t!144177))

(declare-fun tp!466175 () Bool)

(declare-fun b_and!111161 () Bool)

(assert (=> b!1585698 (= tp!466175 (and (=> t!144177 result!108022) b_and!111161))))

(declare-fun b_free!42845 () Bool)

(declare-fun b_next!43549 () Bool)

(assert (=> b!1585698 (= b_free!42845 (not b_next!43549))))

(declare-fun t!144179 () Bool)

(declare-fun tb!89257 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457)))))) t!144179) tb!89257))

(declare-fun result!108024 () Bool)

(assert (= result!108024 result!107850))

(assert (=> b!1583989 t!144179))

(declare-fun tb!89259 () Bool)

(declare-fun t!144181 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457))))) t!144181) tb!89259))

(declare-fun result!108026 () Bool)

(assert (= result!108026 result!107818))

(assert (=> b!1583564 t!144181))

(assert (=> d!470932 t!144179))

(assert (=> d!470822 t!144181))

(declare-fun tb!89261 () Bool)

(declare-fun t!144183 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 lt!556425)))) t!144183) tb!89261))

(declare-fun result!108028 () Bool)

(assert (= result!108028 result!107904))

(assert (=> d!471186 t!144183))

(declare-fun t!144185 () Bool)

(declare-fun tb!89263 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (Cons!17405 (h!22806 tokens!457) Nil!17405)))))) t!144185) tb!89263))

(declare-fun result!108030 () Bool)

(assert (= result!108030 result!107954))

(assert (=> d!471698 t!144185))

(declare-fun tb!89265 () Bool)

(declare-fun t!144187 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (_1!9845 (get!4978 lt!556077)))))) t!144187) tb!89265))

(declare-fun result!108032 () Bool)

(assert (= result!108032 result!107896))

(assert (=> d!471132 t!144187))

(declare-fun tb!89267 () Bool)

(declare-fun t!144189 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457))))))) t!144189) tb!89267))

(declare-fun result!108034 () Bool)

(assert (= result!108034 result!107928))

(assert (=> d!471392 t!144189))

(declare-fun tb!89269 () Bool)

(declare-fun t!144191 () Bool)

(assert (=> (and b!1585698 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (apply!4240 lt!555974 0))))) t!144191) tb!89269))

(declare-fun result!108036 () Bool)

(assert (= result!108036 result!107966))

(assert (=> d!471822 t!144191))

(declare-fun b_and!111163 () Bool)

(declare-fun tp!466178 () Bool)

(assert (=> b!1585698 (= tp!466178 (and (=> t!144187 result!108032) (=> t!144183 result!108028) (=> t!144181 result!108026) (=> t!144179 result!108024) (=> t!144185 result!108030) (=> t!144191 result!108036) (=> t!144189 result!108034) b_and!111163))))

(declare-fun e!1018460 () Bool)

(assert (=> b!1585698 (= e!1018460 (and tp!466175 tp!466178))))

(declare-fun e!1018462 () Bool)

(declare-fun tp!466176 () Bool)

(declare-fun b!1585697 () Bool)

(assert (=> b!1585697 (= e!1018462 (and tp!466176 (inv!22818 (tag!3335 (h!22807 (t!143961 (t!143961 rules!1846))))) (inv!22821 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) e!1018460))))

(declare-fun b!1585696 () Bool)

(declare-fun e!1018461 () Bool)

(declare-fun tp!466177 () Bool)

(assert (=> b!1585696 (= e!1018461 (and e!1018462 tp!466177))))

(assert (=> b!1583850 (= tp!466001 e!1018461)))

(assert (= b!1585697 b!1585698))

(assert (= b!1585696 b!1585697))

(assert (= (and b!1583850 ((_ is Cons!17406) (t!143961 (t!143961 rules!1846)))) b!1585696))

(declare-fun m!1874773 () Bool)

(assert (=> b!1585697 m!1874773))

(declare-fun m!1874775 () Bool)

(assert (=> b!1585697 m!1874775))

(declare-fun b_lambda!49889 () Bool)

(assert (= b_lambda!49857 (or d!470792 b_lambda!49889)))

(declare-fun bs!391390 () Bool)

(declare-fun d!471856 () Bool)

(assert (= bs!391390 (and d!471856 d!470792)))

(assert (=> bs!391390 (= (dynLambda!7730 lambda!66517 (h!22806 tokens!457)) (rulesProduceIndividualToken!1348 thiss!17113 rules!1846 (h!22806 tokens!457)))))

(assert (=> bs!391390 m!1869937))

(assert (=> b!1584244 d!471856))

(declare-fun b_lambda!49891 () Bool)

(assert (= b_lambda!49849 (or (and b!1583303 b_free!42809 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1583288 b_free!42813 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1585698 b_free!42845 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1583852 b_free!42829 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1585628 b_free!42841 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))))) (and b!1583823 b_free!42825) b_lambda!49891)))

(declare-fun b_lambda!49893 () Bool)

(assert (= b_lambda!49867 (or (and b!1585698 b_free!42845 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 (t!143961 rules!1846))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))))) (and b!1583288 b_free!42813 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 tokens!457)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))))) (and b!1583303 b_free!42809 (= (toChars!4333 (transformation!3067 (h!22807 rules!1846))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))))) (and b!1585628 b_free!42841) (and b!1583823 b_free!42825 (= (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 tokens!457))))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))))) (and b!1583852 b_free!42829 (= (toChars!4333 (transformation!3067 (h!22807 (t!143961 rules!1846)))) (toChars!4333 (transformation!3067 (rule!4867 (h!22806 (t!143960 (t!143960 tokens!457)))))))) b_lambda!49893)))

(declare-fun b_lambda!49895 () Bool)

(assert (= b_lambda!49853 (or d!470930 b_lambda!49895)))

(declare-fun bs!391391 () Bool)

(declare-fun d!471858 () Bool)

(assert (= bs!391391 (and d!471858 d!470930)))

(assert (=> bs!391391 (= (dynLambda!7729 lambda!66526 (h!22807 rules!1846)) (regex!3067 (h!22807 rules!1846)))))

(assert (=> b!1584106 d!471858))

(check-sat (not bm!102895) (not b!1584329) (not b!1585587) (not b!1584691) (not b!1585692) (not b!1584384) (not d!471816) (not b!1584689) (not b!1583990) (not b!1585680) (not d!471590) (not b!1585412) (not d!471732) (not b!1585629) (not b!1584657) (not b!1585600) (not b!1585331) (not b!1584415) (not d!471824) (not b!1584688) (not b!1585696) (not b!1585681) (not d!471174) (not d!471074) (not b!1584383) (not b!1584953) (not b_lambda!49895) (not b!1585589) (not b!1584194) (not b!1585095) (not b!1584366) (not d!471146) (not d!471028) (not d!471820) (not b!1585682) (not b!1585637) (not d!471180) (not b!1585614) (not b!1584714) (not b!1584961) (not d!471292) (not d!471324) (not b!1585458) (not b!1584333) (not b!1585382) (not d!471148) (not d!471334) (not b!1585586) (not b!1584613) (not b!1584783) (not b!1584392) (not b!1585470) (not b!1585022) (not tb!89183) (not d!471200) (not b!1585685) (not b!1585475) (not b!1584781) (not b!1585093) (not b!1584620) (not b!1585103) (not b!1585663) (not b!1585338) (not b!1585695) (not b!1585609) (not b!1584417) (not d!471130) (not b!1585640) (not bm!102848) (not d!471540) (not b!1585511) (not b!1585335) (not b!1585664) (not d!471720) (not b!1584413) (not b!1584796) (not d!471382) (not d!471404) (not b!1585491) (not bm!102844) (not d!471690) (not b!1584379) (not b!1585601) (not b!1584612) (not b!1584803) (not bm!102877) (not b!1584793) b_and!111119 (not d!470982) (not d!471722) (not b!1585624) (not b_lambda!49861) (not b!1585008) (not d!470980) (not b!1585689) (not d!471316) (not b!1585611) (not b!1585420) (not b_next!43543) (not b!1585027) (not b!1584648) (not b!1584547) (not b!1585515) (not b!1585604) (not b!1584427) (not d!471102) (not b!1584951) (not d!471152) (not b!1585602) (not bm!102863) (not b!1584370) (not d!471100) (not d!471186) (not b!1585669) (not b!1585678) (not b!1584053) (not bm!102857) (not tb!89167) (not b!1585006) (not b!1584790) b_and!111117 (not b!1585568) (not b!1584359) (not b!1584386) (not bm!102901) (not b!1584692) (not b_next!43547) (not d!471752) (not d!471848) (not d!471696) (not b!1584801) (not b!1583984) (not d!471272) (not b!1584026) (not b!1584836) (not b!1585330) (not d!471706) (not bm!102861) (not d!471070) (not b!1585273) (not b!1585259) (not bm!102905) (not b!1585606) (not d!470966) (not d!471430) (not d!470972) (not b!1585670) (not d!471126) (not b!1585069) (not b!1584715) (not b!1584564) (not b!1584690) (not b!1584794) (not b!1585270) (not d!471372) (not d!471506) (not b!1585031) (not b!1585674) (not bm!102885) (not b!1585334) (not b!1585258) (not b!1585307) (not d!470986) (not d!471198) (not b!1585271) (not b!1584611) (not b!1585236) (not b!1585005) (not b!1583993) (not b!1585009) (not b!1584954) (not b!1585622) (not b!1585677) (not tb!89191) (not b!1584319) (not b!1585676) (not b!1584643) (not b!1584265) (not d!471346) (not d!471172) (not b!1584628) (not b!1584760) (not d!471750) (not b!1584663) (not b_next!43533) (not d!471312) (not b!1584943) b_and!111151 (not d!471716) (not b!1584944) (not b!1583985) b_and!111161 (not d!471694) (not b!1584608) (not d!471310) (not d!471730) (not b_lambda!49889) (not bm!102846) (not b!1585653) (not b!1585603) (not b_lambda!49893) (not b!1584380) (not b!1584693) (not b!1584332) (not b!1584757) (not b_lambda!49871) (not d!471378) (not b!1584768) b_and!111157 (not d!471434) (not d!471826) (not b!1584645) (not b!1584778) (not b!1585025) (not bm!102879) (not b!1584106) (not b!1584708) (not b!1584421) b_and!111123 (not b!1585409) (not b!1585607) (not b!1584264) (not b!1585358) (not b!1584939) (not d!471444) (not d!471202) (not b!1584385) (not b!1584704) b_and!111163 (not d!471194) (not b!1585684) (not b!1585354) (not d!471288) (not b!1584606) (not b!1585635) (not b!1584609) (not d!471142) (not d!471020) (not d!471176) (not b!1585627) (not b!1584607) (not bm!102850) (not d!471262) (not b!1584399) (not b!1584687) (not b!1584374) (not b!1584192) (not b!1584795) (not d!470968) (not b!1584378) (not b!1585408) (not b!1585580) (not b_next!43517) (not b!1584665) (not b!1585633) (not d!471256) (not b!1585304) (not b!1584364) (not b!1584373) (not bm!102862) (not d!471162) (not b!1585237) (not bm!102902) (not b!1584777) (not b!1584326) (not b!1585567) (not b!1585454) (not d!471806) (not b!1585649) (not b!1584805) (not d!471726) (not b!1584024) (not b!1584946) (not b!1584025) (not bs!391390) (not b!1585631) (not b!1584371) (not b!1584090) (not d!471536) (not d!471140) (not d!470998) (not b!1585007) (not d!471104) (not b!1584710) (not b!1584360) (not b!1584830) (not b!1584789) (not b!1584712) (not d!471178) (not b!1584696) (not d!471034) (not b_next!43513) (not b!1585584) (not b!1585233) (not b!1585065) (not b!1585583) (not b!1584382) (not b!1584763) (not b!1585303) (not b!1585495) (not b!1584668) (not b!1584948) (not d!471392) (not b!1584838) (not b!1585351) (not d!471500) (not d!471412) (not b!1585383) (not b!1585665) (not b!1583496) (not bm!102904) (not d!471128) (not b!1584563) (not b!1585274) (not b_next!43531) (not d!471772) (not d!471748) (not d!471708) (not tb!89143) (not b!1584622) (not b!1585372) (not b!1584644) (not b!1585287) (not b!1585612) (not b!1584262) (not b!1585370) (not b!1585694) (not b!1585339) (not b!1585341) (not b!1585690) (not d!471294) (not b!1584027) (not b!1585359) (not b!1584388) (not d!471600) (not b!1584020) (not b!1585356) (not d!471734) (not b!1584367) (not b!1584804) (not d!471724) (not b!1583986) (not d!471776) (not d!471296) (not d!471318) (not b!1585098) (not b!1584711) (not b!1585384) (not b!1584335) (not d!471834) (not d!471390) (not d!471584) (not bm!102872) (not b!1585647) (not d!471332) (not bm!102903) (not b!1585530) (not b!1584669) (not b!1584318) (not b!1584831) (not b!1585673) (not b!1585235) (not b!1584425) (not d!471764) (not b!1584091) (not bm!102886) (not b!1584627) (not d!471266) (not b!1584342) (not b!1585643) (not b!1584792) (not b!1585636) (not d!471838) (not b!1585312) (not b_next!43511) (not d!470984) (not b!1585380) (not d!471240) (not b!1584952) (not b!1585024) (not d!471518) b_and!111159 (not d!471688) (not b!1585652) (not b!1584390) (not b_next!43529) (not bm!102873) (not b!1584703) (not d!471300) (not d!471314) (not b!1584686) (not d!471286) (not d!471822) (not b!1585309) (not b!1584799) (not d!471254) (not bm!102878) (not b!1584626) (not b!1585374) (not b!1584947) (not b!1585239) (not d!471138) (not d!471786) (not b!1585608) b_and!111145 (not b!1584666) (not bm!102854) (not b!1584174) (not b!1585068) (not b!1585355) (not b!1585639) (not d!471818) (not b!1584936) (not b!1585474) (not d!471144) (not b!1584950) (not b!1585688) (not d!471206) (not bm!102876) (not d!471188) (not d!471702) (not d!471414) (not b!1584022) (not d!471756) (not b!1585241) (not d!471330) (not b!1584552) (not b!1584780) (not tb!89201) (not d!471160) (not b_lambda!49879) (not b!1585597) (not b!1584802) (not b!1585340) (not d!470988) (not b!1584949) (not b!1585672) (not b_next!43545) (not b!1584935) (not b!1585651) (not b!1585238) (not b!1584321) (not b!1584423) (not b_lambda!49891) (not b!1585569) (not b!1585644) (not b!1584755) (not b!1584624) (not tb!89135) (not b!1585350) (not d!471132) (not b!1584094) (not b!1585317) b_and!111121 (not d!471416) (not d!471196) b_and!111147 (not b!1584228) (not b!1585299) (not b!1585693) (not d!471698) (not b!1584550) (not b_next!43515) (not b_next!43549) (not b!1585686) (not b_lambda!49841) (not b!1584702) (not b!1585004) (not d!471426) (not d!470970) (not bm!102890) (not b!1585029) (not b!1585592) (not d!471290) (not b!1584647) (not b!1585092) (not b!1585632) (not b!1584400) (not b!1585625) (not d!471136) (not b!1585626) (not d!471510) (not b_lambda!49873) (not b!1584697) (not b!1585697) (not b!1585410) (not b!1584758) (not d!471006) (not b!1585332) (not b!1584420) (not b!1585662) (not b!1585645) (not d!471122) (not b!1584788) (not b!1584344) (not b!1585064) tp_is_empty!7193 (not b!1585276) (not b!1584826) (not d!471276) (not b!1584324) (not b!1584173) (not b!1585357) (not b!1585352) (not b!1585306) (not b!1584266) (not b!1584685) (not b!1584797) (not b!1584834) (not b!1584837) (not b!1584092) (not d!471710) (not b!1584087) b_and!111149 (not b_lambda!49839) (not b!1585240) (not b!1584365) (not d!471502) (not b!1584707) (not b!1584798) (not d!471328) (not b!1584832) (not d!471338) (not b!1584089) (not d!471326) (not b!1584035) (not d!471760) (not d!471322) (not b!1585476) (not b!1584394) (not b!1584812) (not b!1584605) (not b_lambda!49843) (not d!471768) (not b!1584368) (not d!471182) (not d!471680) (not b!1584343) (not b!1583989) (not d!471534) (not b!1585610) (not b!1584086) (not d!471728) (not b!1584670) (not b!1585620) (not d!471498) (not b!1584782) (not d!471496) (not b!1584389) (not b!1584546) (not d!471118) (not b!1584372) (not b!1585473) (not d!471082) (not b!1585648) (not d!471336) (not d!471762) (not b!1584934) (not d!471386) (not d!471522) (not d!471204) (not b!1585033) (not b!1584700) (not b!1584610) (not d!471564) (not d!471344) (not b!1584175) (not d!471832) (not b!1584705) (not d!471516) (not b!1585671) (not b!1584172) (not b!1585641) (not b!1583804) (not d!471742) (not b!1584828) (not b!1584393) (not d!471418) (not d!471420) (not b_lambda!49859) (not d!471784) (not d!471380) (not b!1585090) (not b!1584263) (not d!470974) (not bm!102853) (not b!1585257) (not b!1584835) (not b!1585302) (not d!471840) (not b!1585360) (not b_next!43527) (not d!471396) (not d!471604) (not b!1584245) (not b!1584267) (not b!1584811))
(check-sat b_and!111119 (not b_next!43543) b_and!111157 (not b_next!43517) (not b_next!43513) (not b_next!43531) b_and!111145 (not b_next!43545) b_and!111149 (not b_next!43527) b_and!111117 (not b_next!43547) (not b_next!43533) b_and!111151 b_and!111161 b_and!111163 b_and!111123 (not b_next!43511) b_and!111159 (not b_next!43529) b_and!111121 b_and!111147 (not b_next!43515) (not b_next!43549))
