; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!160818 () Bool)

(assert start!160818)

(declare-fun b!1662935 () Bool)

(declare-fun b_free!45175 () Bool)

(declare-fun b_next!45879 () Bool)

(assert (=> b!1662935 (= b_free!45175 (not b_next!45879))))

(declare-fun tp!479512 () Bool)

(declare-fun b_and!118061 () Bool)

(assert (=> b!1662935 (= tp!479512 b_and!118061)))

(declare-fun b_free!45177 () Bool)

(declare-fun b_next!45881 () Bool)

(assert (=> b!1662935 (= b_free!45177 (not b_next!45881))))

(declare-fun tp!479508 () Bool)

(declare-fun b_and!118063 () Bool)

(assert (=> b!1662935 (= tp!479508 b_and!118063)))

(declare-fun b!1662923 () Bool)

(declare-fun b_free!45179 () Bool)

(declare-fun b_next!45883 () Bool)

(assert (=> b!1662923 (= b_free!45179 (not b_next!45883))))

(declare-fun tp!479509 () Bool)

(declare-fun b_and!118065 () Bool)

(assert (=> b!1662923 (= tp!479509 b_and!118065)))

(declare-fun b_free!45181 () Bool)

(declare-fun b_next!45885 () Bool)

(assert (=> b!1662923 (= b_free!45181 (not b_next!45885))))

(declare-fun tp!479506 () Bool)

(declare-fun b_and!118067 () Bool)

(assert (=> b!1662923 (= tp!479506 b_and!118067)))

(declare-fun b!1662903 () Bool)

(declare-fun res!746205 () Bool)

(declare-fun e!1066055 () Bool)

(assert (=> b!1662903 (=> (not res!746205) (not e!1066055))))

(declare-datatypes ((List!18415 0))(
  ( (Nil!18345) (Cons!18345 (h!23746 (_ BitVec 16)) (t!151864 List!18415)) )
))
(declare-datatypes ((TokenValue!3323 0))(
  ( (FloatLiteralValue!6646 (text!23706 List!18415)) (TokenValueExt!3322 (__x!11948 Int)) (Broken!16615 (value!101787 List!18415)) (Object!3392) (End!3323) (Def!3323) (Underscore!3323) (Match!3323) (Else!3323) (Error!3323) (Case!3323) (If!3323) (Extends!3323) (Abstract!3323) (Class!3323) (Val!3323) (DelimiterValue!6646 (del!3383 List!18415)) (KeywordValue!3329 (value!101788 List!18415)) (CommentValue!6646 (value!101789 List!18415)) (WhitespaceValue!6646 (value!101790 List!18415)) (IndentationValue!3323 (value!101791 List!18415)) (String!20946) (Int32!3323) (Broken!16616 (value!101792 List!18415)) (Boolean!3324) (Unit!31030) (OperatorValue!3326 (op!3383 List!18415)) (IdentifierValue!6646 (value!101793 List!18415)) (IdentifierValue!6647 (value!101794 List!18415)) (WhitespaceValue!6647 (value!101795 List!18415)) (True!6646) (False!6646) (Broken!16617 (value!101796 List!18415)) (Broken!16618 (value!101797 List!18415)) (True!6647) (RightBrace!3323) (RightBracket!3323) (Colon!3323) (Null!3323) (Comma!3323) (LeftBracket!3323) (False!6647) (LeftBrace!3323) (ImaginaryLiteralValue!3323 (text!23707 List!18415)) (StringLiteralValue!9969 (value!101798 List!18415)) (EOFValue!3323 (value!101799 List!18415)) (IdentValue!3323 (value!101800 List!18415)) (DelimiterValue!6647 (value!101801 List!18415)) (DedentValue!3323 (value!101802 List!18415)) (NewLineValue!3323 (value!101803 List!18415)) (IntegerValue!9969 (value!101804 (_ BitVec 32)) (text!23708 List!18415)) (IntegerValue!9970 (value!101805 Int) (text!23709 List!18415)) (Times!3323) (Or!3323) (Equal!3323) (Minus!3323) (Broken!16619 (value!101806 List!18415)) (And!3323) (Div!3323) (LessEqual!3323) (Mod!3323) (Concat!7884) (Not!3323) (Plus!3323) (SpaceValue!3323 (value!101807 List!18415)) (IntegerValue!9971 (value!101808 Int) (text!23710 List!18415)) (StringLiteralValue!9970 (text!23711 List!18415)) (FloatLiteralValue!6647 (text!23712 List!18415)) (BytesLiteralValue!3323 (value!101809 List!18415)) (CommentValue!6647 (value!101810 List!18415)) (StringLiteralValue!9971 (value!101811 List!18415)) (ErrorTokenValue!3323 (msg!3384 List!18415)) )
))
(declare-datatypes ((C!9296 0))(
  ( (C!9297 (val!5244 Int)) )
))
(declare-datatypes ((List!18416 0))(
  ( (Nil!18346) (Cons!18346 (h!23747 C!9296) (t!151865 List!18416)) )
))
(declare-datatypes ((IArray!12233 0))(
  ( (IArray!12234 (innerList!6174 List!18416)) )
))
(declare-datatypes ((Conc!6114 0))(
  ( (Node!6114 (left!14680 Conc!6114) (right!15010 Conc!6114) (csize!12458 Int) (cheight!6325 Int)) (Leaf!8951 (xs!8958 IArray!12233) (csize!12459 Int)) (Empty!6114) )
))
(declare-datatypes ((BalanceConc!12172 0))(
  ( (BalanceConc!12173 (c!270665 Conc!6114)) )
))
(declare-datatypes ((Regex!4561 0))(
  ( (ElementMatch!4561 (c!270666 C!9296)) (Concat!7885 (regOne!9634 Regex!4561) (regTwo!9634 Regex!4561)) (EmptyExpr!4561) (Star!4561 (reg!4890 Regex!4561)) (EmptyLang!4561) (Union!4561 (regOne!9635 Regex!4561) (regTwo!9635 Regex!4561)) )
))
(declare-datatypes ((String!20947 0))(
  ( (String!20948 (value!101812 String)) )
))
(declare-datatypes ((TokenValueInjection!6306 0))(
  ( (TokenValueInjection!6307 (toValue!4688 Int) (toChars!4547 Int)) )
))
(declare-datatypes ((Rule!6266 0))(
  ( (Rule!6267 (regex!3233 Regex!4561) (tag!3517 String!20947) (isSeparator!3233 Bool) (transformation!3233 TokenValueInjection!6306)) )
))
(declare-datatypes ((Token!6032 0))(
  ( (Token!6033 (value!101813 TokenValue!3323) (rule!5119 Rule!6266) (size!14588 Int) (originalCharacters!4047 List!18416)) )
))
(declare-datatypes ((tuple2!18062 0))(
  ( (tuple2!18063 (_1!10433 Token!6032) (_2!10433 List!18416)) )
))
(declare-fun lt!624962 () tuple2!18062)

(declare-fun isEmpty!11397 (List!18416) Bool)

(assert (=> b!1662903 (= res!746205 (isEmpty!11397 (_2!10433 lt!624962)))))

(declare-fun res!746211 () Bool)

(declare-fun e!1066067 () Bool)

(assert (=> start!160818 (=> (not res!746211) (not e!1066067))))

(declare-datatypes ((LexerInterface!2862 0))(
  ( (LexerInterfaceExt!2859 (__x!11949 Int)) (Lexer!2860) )
))
(declare-fun thiss!17113 () LexerInterface!2862)

(get-info :version)

(assert (=> start!160818 (= res!746211 ((_ is Lexer!2860) thiss!17113))))

(assert (=> start!160818 e!1066067))

(assert (=> start!160818 true))

(declare-fun e!1066065 () Bool)

(assert (=> start!160818 e!1066065))

(declare-fun e!1066068 () Bool)

(assert (=> start!160818 e!1066068))

(declare-fun b!1662904 () Bool)

(declare-fun e!1066071 () Bool)

(declare-fun e!1066057 () Bool)

(assert (=> b!1662904 (= e!1066071 e!1066057)))

(declare-fun res!746204 () Bool)

(assert (=> b!1662904 (=> res!746204 e!1066057)))

(declare-fun lt!624994 () List!18416)

(declare-fun lt!624975 () List!18416)

(declare-fun lt!624988 () List!18416)

(assert (=> b!1662904 (= res!746204 (or (not (= lt!624975 lt!624994)) (not (= lt!624994 lt!624988)) (not (= lt!624975 lt!624988))))))

(declare-datatypes ((List!18417 0))(
  ( (Nil!18347) (Cons!18347 (h!23748 Token!6032) (t!151866 List!18417)) )
))
(declare-fun tokens!457 () List!18417)

(declare-fun printList!975 (LexerInterface!2862 List!18417) List!18416)

(assert (=> b!1662904 (= lt!624994 (printList!975 thiss!17113 (Cons!18347 (h!23748 tokens!457) Nil!18347)))))

(declare-fun lt!624974 () BalanceConc!12172)

(declare-fun list!7325 (BalanceConc!12172) List!18416)

(assert (=> b!1662904 (= lt!624975 (list!7325 lt!624974))))

(declare-datatypes ((IArray!12235 0))(
  ( (IArray!12236 (innerList!6175 List!18417)) )
))
(declare-datatypes ((Conc!6115 0))(
  ( (Node!6115 (left!14681 Conc!6115) (right!15011 Conc!6115) (csize!12460 Int) (cheight!6326 Int)) (Leaf!8952 (xs!8959 IArray!12235) (csize!12461 Int)) (Empty!6115) )
))
(declare-datatypes ((BalanceConc!12174 0))(
  ( (BalanceConc!12175 (c!270667 Conc!6115)) )
))
(declare-fun lt!624986 () BalanceConc!12174)

(declare-fun printTailRec!913 (LexerInterface!2862 BalanceConc!12174 Int BalanceConc!12172) BalanceConc!12172)

(assert (=> b!1662904 (= lt!624974 (printTailRec!913 thiss!17113 lt!624986 0 (BalanceConc!12173 Empty!6114)))))

(declare-fun print!1393 (LexerInterface!2862 BalanceConc!12174) BalanceConc!12172)

(assert (=> b!1662904 (= lt!624974 (print!1393 thiss!17113 lt!624986))))

(declare-fun singletonSeq!1738 (Token!6032) BalanceConc!12174)

(assert (=> b!1662904 (= lt!624986 (singletonSeq!1738 (h!23748 tokens!457)))))

(declare-fun lt!624982 () List!18416)

(declare-datatypes ((Option!3517 0))(
  ( (None!3516) (Some!3516 (v!24741 tuple2!18062)) )
))
(declare-fun lt!624967 () Option!3517)

(declare-datatypes ((List!18418 0))(
  ( (Nil!18348) (Cons!18348 (h!23749 Rule!6266) (t!151867 List!18418)) )
))
(declare-fun rules!1846 () List!18418)

(declare-fun maxPrefix!1424 (LexerInterface!2862 List!18418 List!18416) Option!3517)

(assert (=> b!1662904 (= lt!624967 (maxPrefix!1424 thiss!17113 rules!1846 lt!624982))))

(declare-fun b!1662905 () Bool)

(declare-fun e!1066066 () Bool)

(declare-fun e!1066070 () Bool)

(assert (=> b!1662905 (= e!1066066 (not e!1066070))))

(declare-fun res!746210 () Bool)

(assert (=> b!1662905 (=> res!746210 e!1066070)))

(declare-fun lt!624971 () List!18417)

(assert (=> b!1662905 (= res!746210 (not (= lt!624971 (t!151866 tokens!457))))))

(declare-datatypes ((tuple2!18064 0))(
  ( (tuple2!18065 (_1!10434 BalanceConc!12174) (_2!10434 BalanceConc!12172)) )
))
(declare-fun lt!624960 () tuple2!18064)

(declare-fun list!7326 (BalanceConc!12174) List!18417)

(assert (=> b!1662905 (= lt!624971 (list!7326 (_1!10434 lt!624960)))))

(declare-datatypes ((Unit!31031 0))(
  ( (Unit!31032) )
))
(declare-fun lt!624970 () Unit!31031)

(declare-fun theoremInvertabilityWhenTokenListSeparable!305 (LexerInterface!2862 List!18418 List!18417) Unit!31031)

(assert (=> b!1662905 (= lt!624970 (theoremInvertabilityWhenTokenListSeparable!305 thiss!17113 rules!1846 (t!151866 tokens!457)))))

(declare-fun lt!624980 () List!18416)

(declare-fun isPrefix!1491 (List!18416 List!18416) Bool)

(assert (=> b!1662905 (isPrefix!1491 lt!624988 lt!624980)))

(declare-fun lt!624979 () Unit!31031)

(declare-fun lt!624973 () List!18416)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1016 (List!18416 List!18416) Unit!31031)

(assert (=> b!1662905 (= lt!624979 (lemmaConcatTwoListThenFirstIsPrefix!1016 lt!624988 lt!624973))))

(declare-fun b!1662906 () Bool)

(declare-fun res!746196 () Bool)

(declare-fun e!1066072 () Bool)

(assert (=> b!1662906 (=> (not res!746196) (not e!1066072))))

(declare-fun lt!624977 () List!18416)

(declare-fun head!3710 (List!18416) C!9296)

(assert (=> b!1662906 (= res!746196 (= lt!624977 (Cons!18346 (head!3710 (originalCharacters!4047 (h!23748 (t!151866 tokens!457)))) Nil!18346)))))

(declare-fun b!1662907 () Bool)

(declare-fun res!746187 () Bool)

(assert (=> b!1662907 (=> (not res!746187) (not e!1066067))))

(declare-fun rulesInvariant!2531 (LexerInterface!2862 List!18418) Bool)

(assert (=> b!1662907 (= res!746187 (rulesInvariant!2531 thiss!17113 rules!1846))))

(declare-fun b!1662908 () Bool)

(declare-fun res!746183 () Bool)

(declare-fun e!1066047 () Bool)

(assert (=> b!1662908 (=> res!746183 e!1066047)))

(declare-fun get!5369 (Option!3517) tuple2!18062)

(declare-fun maxPrefixZipper!360 (LexerInterface!2862 List!18418 List!18416) Option!3517)

(assert (=> b!1662908 (= res!746183 (not (= (h!23748 tokens!457) (_1!10433 (get!5369 (maxPrefixZipper!360 thiss!17113 rules!1846 lt!624982))))))))

(declare-fun b!1662909 () Bool)

(declare-fun res!746198 () Bool)

(assert (=> b!1662909 (=> (not res!746198) (not e!1066067))))

(declare-fun rulesProduceEachTokenIndividuallyList!1064 (LexerInterface!2862 List!18418 List!18417) Bool)

(assert (=> b!1662909 (= res!746198 (rulesProduceEachTokenIndividuallyList!1064 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1662910 () Bool)

(declare-fun res!746195 () Bool)

(assert (=> b!1662910 (=> (not res!746195) (not e!1066067))))

(assert (=> b!1662910 (= res!746195 (and (not ((_ is Nil!18347) tokens!457)) (not ((_ is Nil!18347) (t!151866 tokens!457)))))))

(declare-fun b!1662911 () Bool)

(declare-fun res!746208 () Bool)

(assert (=> b!1662911 (=> res!746208 e!1066071)))

(declare-fun separableTokensPredicate!802 (LexerInterface!2862 Token!6032 Token!6032 List!18418) Bool)

(assert (=> b!1662911 (= res!746208 (not (separableTokensPredicate!802 thiss!17113 (h!23748 tokens!457) (h!23748 (t!151866 tokens!457)) rules!1846)))))

(declare-fun b!1662912 () Bool)

(assert (=> b!1662912 (= e!1066067 e!1066066)))

(declare-fun res!746193 () Bool)

(assert (=> b!1662912 (=> (not res!746193) (not e!1066066))))

(assert (=> b!1662912 (= res!746193 (= lt!624982 lt!624980))))

(declare-fun ++!4989 (List!18416 List!18416) List!18416)

(assert (=> b!1662912 (= lt!624980 (++!4989 lt!624988 lt!624973))))

(declare-fun lt!624968 () BalanceConc!12172)

(assert (=> b!1662912 (= lt!624982 (list!7325 lt!624968))))

(declare-fun lt!624969 () BalanceConc!12172)

(assert (=> b!1662912 (= lt!624973 (list!7325 lt!624969))))

(declare-fun lt!624993 () BalanceConc!12172)

(assert (=> b!1662912 (= lt!624988 (list!7325 lt!624993))))

(declare-fun charsOf!1882 (Token!6032) BalanceConc!12172)

(assert (=> b!1662912 (= lt!624993 (charsOf!1882 (h!23748 tokens!457)))))

(declare-fun lex!1346 (LexerInterface!2862 List!18418 BalanceConc!12172) tuple2!18064)

(assert (=> b!1662912 (= lt!624960 (lex!1346 thiss!17113 rules!1846 lt!624969))))

(declare-fun lt!624990 () BalanceConc!12174)

(assert (=> b!1662912 (= lt!624969 (print!1393 thiss!17113 lt!624990))))

(declare-fun seqFromList!2205 (List!18417) BalanceConc!12174)

(assert (=> b!1662912 (= lt!624990 (seqFromList!2205 (t!151866 tokens!457)))))

(assert (=> b!1662912 (= lt!624968 (print!1393 thiss!17113 (seqFromList!2205 tokens!457)))))

(declare-fun b!1662913 () Bool)

(declare-fun e!1066063 () Bool)

(declare-fun e!1066049 () Bool)

(assert (=> b!1662913 (= e!1066063 e!1066049)))

(declare-fun res!746207 () Bool)

(assert (=> b!1662913 (=> res!746207 e!1066049)))

(declare-fun lt!624978 () BalanceConc!12172)

(declare-fun lt!624984 () Regex!4561)

(declare-fun prefixMatchZipperSequence!659 (Regex!4561 BalanceConc!12172) Bool)

(declare-fun ++!4990 (BalanceConc!12172 BalanceConc!12172) BalanceConc!12172)

(assert (=> b!1662913 (= res!746207 (prefixMatchZipperSequence!659 lt!624984 (++!4990 lt!624993 lt!624978)))))

(declare-fun singletonSeq!1739 (C!9296) BalanceConc!12172)

(declare-fun apply!4908 (BalanceConc!12172 Int) C!9296)

(assert (=> b!1662913 (= lt!624978 (singletonSeq!1739 (apply!4908 (charsOf!1882 (h!23748 (t!151866 tokens!457))) 0)))))

(declare-fun rulesRegex!617 (LexerInterface!2862 List!18418) Regex!4561)

(assert (=> b!1662913 (= lt!624984 (rulesRegex!617 thiss!17113 rules!1846))))

(declare-fun b!1662914 () Bool)

(declare-fun e!1066062 () Bool)

(assert (=> b!1662914 (= e!1066062 e!1066047)))

(declare-fun res!746209 () Bool)

(assert (=> b!1662914 (=> res!746209 e!1066047)))

(declare-fun lt!624972 () tuple2!18062)

(assert (=> b!1662914 (= res!746209 (or (not (= (_1!10433 lt!624972) (h!23748 tokens!457))) (not (= (_2!10433 lt!624972) lt!624973))))))

(assert (=> b!1662914 (= lt!624972 (get!5369 lt!624967))))

(declare-fun lt!624992 () Unit!31031)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!188 (LexerInterface!2862 List!18418 Token!6032 Rule!6266 List!18416) Unit!31031)

(assert (=> b!1662914 (= lt!624992 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!188 thiss!17113 rules!1846 (h!23748 tokens!457) (rule!5119 (h!23748 tokens!457)) lt!624973))))

(declare-fun b!1662915 () Bool)

(declare-fun e!1066059 () Bool)

(assert (=> b!1662915 (= e!1066047 e!1066059)))

(declare-fun res!746186 () Bool)

(assert (=> b!1662915 (=> res!746186 e!1066059)))

(declare-datatypes ((tuple2!18066 0))(
  ( (tuple2!18067 (_1!10435 Token!6032) (_2!10435 BalanceConc!12172)) )
))
(declare-fun lt!624983 () tuple2!18066)

(assert (=> b!1662915 (= res!746186 (not (= (h!23748 tokens!457) (_1!10435 lt!624983))))))

(declare-datatypes ((Option!3518 0))(
  ( (None!3517) (Some!3517 (v!24742 tuple2!18066)) )
))
(declare-fun get!5370 (Option!3518) tuple2!18066)

(declare-fun maxPrefixZipperSequence!739 (LexerInterface!2862 List!18418 BalanceConc!12172) Option!3518)

(assert (=> b!1662915 (= lt!624983 (get!5370 (maxPrefixZipperSequence!739 thiss!17113 rules!1846 lt!624968)))))

(declare-fun b!1662916 () Bool)

(declare-fun res!746184 () Bool)

(declare-fun e!1066064 () Bool)

(assert (=> b!1662916 (=> res!746184 e!1066064)))

(declare-fun lt!624991 () List!18417)

(declare-fun lt!624961 () BalanceConc!12174)

(declare-fun prepend!813 (BalanceConc!12174 Token!6032) BalanceConc!12174)

(assert (=> b!1662916 (= res!746184 (not (= lt!624991 (list!7326 (prepend!813 lt!624961 (h!23748 tokens!457))))))))

(declare-fun b!1662917 () Bool)

(declare-fun res!746201 () Bool)

(assert (=> b!1662917 (=> (not res!746201) (not e!1066067))))

(declare-fun isEmpty!11398 (List!18418) Bool)

(assert (=> b!1662917 (= res!746201 (not (isEmpty!11398 rules!1846)))))

(declare-fun b!1662918 () Bool)

(declare-fun e!1066050 () Bool)

(declare-fun e!1066051 () Bool)

(assert (=> b!1662918 (= e!1066050 e!1066051)))

(declare-fun res!746192 () Bool)

(assert (=> b!1662918 (=> res!746192 e!1066051)))

(declare-fun isDefined!2872 (Option!3518) Bool)

(declare-fun seqFromList!2206 (List!18416) BalanceConc!12172)

(assert (=> b!1662918 (= res!746192 (not (isDefined!2872 (maxPrefixZipperSequence!739 thiss!17113 rules!1846 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))))

(declare-fun lt!624987 () List!18416)

(assert (=> b!1662918 (= lt!624977 lt!624987)))

(declare-fun head!3711 (BalanceConc!12172) C!9296)

(assert (=> b!1662918 (= lt!624987 (Cons!18346 (head!3711 lt!624969) Nil!18346))))

(assert (=> b!1662918 e!1066072))

(declare-fun res!746194 () Bool)

(assert (=> b!1662918 (=> (not res!746194) (not e!1066072))))

(assert (=> b!1662918 (= res!746194 (= lt!624988 (originalCharacters!4047 (h!23748 tokens!457))))))

(declare-fun b!1662919 () Bool)

(assert (=> b!1662919 (= e!1066049 e!1066050)))

(declare-fun res!746190 () Bool)

(assert (=> b!1662919 (=> res!746190 e!1066050)))

(declare-fun prefixMatch!478 (Regex!4561 List!18416) Bool)

(assert (=> b!1662919 (= res!746190 (prefixMatch!478 lt!624984 (++!4989 lt!624988 lt!624977)))))

(assert (=> b!1662919 (= lt!624977 (list!7325 lt!624978))))

(declare-fun tp!479510 () Bool)

(declare-fun e!1066069 () Bool)

(declare-fun b!1662920 () Bool)

(declare-fun inv!23690 (Token!6032) Bool)

(assert (=> b!1662920 (= e!1066068 (and (inv!23690 (h!23748 tokens!457)) e!1066069 tp!479510))))

(declare-fun b!1662921 () Bool)

(declare-fun res!746199 () Bool)

(assert (=> b!1662921 (=> res!746199 e!1066062)))

(assert (=> b!1662921 (= res!746199 (prefixMatch!478 lt!624984 (++!4989 lt!624988 lt!624987)))))

(declare-fun b!1662922 () Bool)

(declare-fun e!1066061 () Bool)

(declare-fun tp!479507 () Bool)

(assert (=> b!1662922 (= e!1066065 (and e!1066061 tp!479507))))

(declare-fun e!1066058 () Bool)

(assert (=> b!1662923 (= e!1066058 (and tp!479509 tp!479506))))

(declare-fun b!1662924 () Bool)

(declare-fun matchR!2054 (Regex!4561 List!18416) Bool)

(assert (=> b!1662924 (= e!1066055 (matchR!2054 (regex!3233 (rule!5119 (h!23748 tokens!457))) lt!624988))))

(declare-fun b!1662925 () Bool)

(declare-fun res!746191 () Bool)

(assert (=> b!1662925 (=> res!746191 e!1066057)))

(declare-fun rulesProduceIndividualToken!1510 (LexerInterface!2862 List!18418 Token!6032) Bool)

(assert (=> b!1662925 (= res!746191 (not (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 tokens!457))))))

(declare-fun b!1662926 () Bool)

(declare-fun tp!479511 () Bool)

(declare-fun e!1066052 () Bool)

(declare-fun inv!21 (TokenValue!3323) Bool)

(assert (=> b!1662926 (= e!1066069 (and (inv!21 (value!101813 (h!23748 tokens!457))) e!1066052 tp!479511))))

(declare-fun b!1662927 () Bool)

(declare-fun e!1066048 () Bool)

(assert (=> b!1662927 (= e!1066059 e!1066048)))

(declare-fun res!746200 () Bool)

(assert (=> b!1662927 (=> res!746200 e!1066048)))

(declare-fun lt!624976 () List!18416)

(assert (=> b!1662927 (= res!746200 (or (not (= (_2!10433 lt!624972) lt!624976)) (not (= lt!624973 lt!624976))))))

(assert (=> b!1662927 (= lt!624976 (list!7325 (_2!10435 lt!624983)))))

(declare-fun b!1662928 () Bool)

(assert (=> b!1662928 (= e!1066070 e!1066071)))

(declare-fun res!746197 () Bool)

(assert (=> b!1662928 (=> res!746197 e!1066071)))

(declare-fun lt!624981 () List!18417)

(declare-fun lt!624985 () List!18417)

(assert (=> b!1662928 (= res!746197 (or (not (= lt!624971 lt!624981)) (not (= lt!624981 lt!624985))))))

(assert (=> b!1662928 (= lt!624981 (list!7326 lt!624990))))

(assert (=> b!1662928 (= lt!624971 lt!624985)))

(assert (=> b!1662928 (= lt!624985 (list!7326 lt!624961))))

(assert (=> b!1662928 (= lt!624961 (prepend!813 (seqFromList!2205 (t!151866 (t!151866 tokens!457))) (h!23748 (t!151866 tokens!457))))))

(declare-fun lt!624964 () Unit!31031)

(declare-fun seqFromListBHdTlConstructive!308 (Token!6032 List!18417 BalanceConc!12174) Unit!31031)

(assert (=> b!1662928 (= lt!624964 (seqFromListBHdTlConstructive!308 (h!23748 (t!151866 tokens!457)) (t!151866 (t!151866 tokens!457)) (_1!10434 lt!624960)))))

(declare-fun b!1662929 () Bool)

(assert (=> b!1662929 (= e!1066072 (= lt!624977 (Cons!18346 (head!3710 lt!624973) Nil!18346)))))

(declare-fun b!1662930 () Bool)

(declare-fun res!746188 () Bool)

(assert (=> b!1662930 (=> (not res!746188) (not e!1066067))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!555 (LexerInterface!2862 List!18417 List!18418) Bool)

(assert (=> b!1662930 (= res!746188 (tokensListTwoByTwoPredicateSeparableList!555 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1662931 () Bool)

(assert (=> b!1662931 (= e!1066057 e!1066063)))

(declare-fun res!746206 () Bool)

(assert (=> b!1662931 (=> res!746206 e!1066063)))

(declare-fun isDefined!2873 (Option!3517) Bool)

(assert (=> b!1662931 (= res!746206 (not (isDefined!2873 lt!624967)))))

(declare-fun lt!624963 () Unit!31031)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!430 (LexerInterface!2862 List!18418 List!18416 List!18416) Unit!31031)

(assert (=> b!1662931 (= lt!624963 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!430 thiss!17113 rules!1846 lt!624988 lt!624973))))

(declare-fun e!1066053 () Bool)

(declare-fun b!1662932 () Bool)

(declare-fun tp!479505 () Bool)

(declare-fun inv!23687 (String!20947) Bool)

(declare-fun inv!23691 (TokenValueInjection!6306) Bool)

(assert (=> b!1662932 (= e!1066061 (and tp!479505 (inv!23687 (tag!3517 (h!23749 rules!1846))) (inv!23691 (transformation!3233 (h!23749 rules!1846))) e!1066053))))

(declare-fun b!1662933 () Bool)

(assert (=> b!1662933 (= e!1066064 (= lt!624991 (Cons!18347 (h!23748 tokens!457) (t!151866 tokens!457))))))

(declare-fun b!1662934 () Bool)

(assert (=> b!1662934 (= e!1066048 e!1066064)))

(declare-fun res!746202 () Bool)

(assert (=> b!1662934 (=> res!746202 e!1066064)))

(declare-fun lt!624966 () BalanceConc!12174)

(assert (=> b!1662934 (= res!746202 (not (= lt!624991 (list!7326 lt!624966))))))

(declare-fun lt!624965 () tuple2!18064)

(assert (=> b!1662934 (= lt!624991 (list!7326 (_1!10434 lt!624965)))))

(assert (=> b!1662934 (= lt!624966 (prepend!813 (_1!10434 lt!624960) (h!23748 tokens!457)))))

(assert (=> b!1662934 (= lt!624965 (lex!1346 thiss!17113 rules!1846 lt!624968))))

(assert (=> b!1662935 (= e!1066053 (and tp!479512 tp!479508))))

(declare-fun b!1662936 () Bool)

(declare-fun res!746203 () Bool)

(assert (=> b!1662936 (=> res!746203 e!1066057)))

(declare-fun isEmpty!11399 (BalanceConc!12174) Bool)

(assert (=> b!1662936 (= res!746203 (isEmpty!11399 (_1!10434 (lex!1346 thiss!17113 rules!1846 (seqFromList!2206 lt!624988)))))))

(declare-fun b!1662937 () Bool)

(declare-fun tp!479504 () Bool)

(assert (=> b!1662937 (= e!1066052 (and tp!479504 (inv!23687 (tag!3517 (rule!5119 (h!23748 tokens!457)))) (inv!23691 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) e!1066058))))

(declare-fun b!1662938 () Bool)

(assert (=> b!1662938 (= e!1066051 e!1066062)))

(declare-fun res!746185 () Bool)

(assert (=> b!1662938 (=> res!746185 e!1066062)))

(assert (=> b!1662938 (= res!746185 (prefixMatch!478 lt!624984 (++!4989 (originalCharacters!4047 (h!23748 tokens!457)) lt!624987)))))

(assert (=> b!1662938 e!1066055))

(declare-fun res!746189 () Bool)

(assert (=> b!1662938 (=> (not res!746189) (not e!1066055))))

(assert (=> b!1662938 (= res!746189 (= (_1!10433 lt!624962) (h!23748 tokens!457)))))

(declare-fun lt!624989 () Option!3517)

(assert (=> b!1662938 (= lt!624962 (get!5369 lt!624989))))

(assert (=> b!1662938 (isDefined!2873 lt!624989)))

(assert (=> b!1662938 (= lt!624989 (maxPrefix!1424 thiss!17113 rules!1846 lt!624988))))

(assert (=> b!1662938 (isDefined!2873 (maxPrefix!1424 thiss!17113 rules!1846 (originalCharacters!4047 (h!23748 tokens!457))))))

(assert (= (and start!160818 res!746211) b!1662917))

(assert (= (and b!1662917 res!746201) b!1662907))

(assert (= (and b!1662907 res!746187) b!1662909))

(assert (= (and b!1662909 res!746198) b!1662930))

(assert (= (and b!1662930 res!746188) b!1662910))

(assert (= (and b!1662910 res!746195) b!1662912))

(assert (= (and b!1662912 res!746193) b!1662905))

(assert (= (and b!1662905 (not res!746210)) b!1662928))

(assert (= (and b!1662928 (not res!746197)) b!1662911))

(assert (= (and b!1662911 (not res!746208)) b!1662904))

(assert (= (and b!1662904 (not res!746204)) b!1662925))

(assert (= (and b!1662925 (not res!746191)) b!1662936))

(assert (= (and b!1662936 (not res!746203)) b!1662931))

(assert (= (and b!1662931 (not res!746206)) b!1662913))

(assert (= (and b!1662913 (not res!746207)) b!1662919))

(assert (= (and b!1662919 (not res!746190)) b!1662918))

(assert (= (and b!1662918 res!746194) b!1662906))

(assert (= (and b!1662906 res!746196) b!1662929))

(assert (= (and b!1662918 (not res!746192)) b!1662938))

(assert (= (and b!1662938 res!746189) b!1662903))

(assert (= (and b!1662903 res!746205) b!1662924))

(assert (= (and b!1662938 (not res!746185)) b!1662921))

(assert (= (and b!1662921 (not res!746199)) b!1662914))

(assert (= (and b!1662914 (not res!746209)) b!1662908))

(assert (= (and b!1662908 (not res!746183)) b!1662915))

(assert (= (and b!1662915 (not res!746186)) b!1662927))

(assert (= (and b!1662927 (not res!746200)) b!1662934))

(assert (= (and b!1662934 (not res!746202)) b!1662916))

(assert (= (and b!1662916 (not res!746184)) b!1662933))

(assert (= b!1662932 b!1662935))

(assert (= b!1662922 b!1662932))

(assert (= (and start!160818 ((_ is Cons!18348) rules!1846)) b!1662922))

(assert (= b!1662937 b!1662923))

(assert (= b!1662926 b!1662937))

(assert (= b!1662920 b!1662926))

(assert (= (and start!160818 ((_ is Cons!18347) tokens!457)) b!1662920))

(declare-fun m!2024239 () Bool)

(assert (=> b!1662913 m!2024239))

(declare-fun m!2024241 () Bool)

(assert (=> b!1662913 m!2024241))

(declare-fun m!2024243 () Bool)

(assert (=> b!1662913 m!2024243))

(assert (=> b!1662913 m!2024241))

(declare-fun m!2024245 () Bool)

(assert (=> b!1662913 m!2024245))

(declare-fun m!2024247 () Bool)

(assert (=> b!1662913 m!2024247))

(declare-fun m!2024249 () Bool)

(assert (=> b!1662913 m!2024249))

(assert (=> b!1662913 m!2024245))

(assert (=> b!1662913 m!2024249))

(declare-fun m!2024251 () Bool)

(assert (=> b!1662928 m!2024251))

(declare-fun m!2024253 () Bool)

(assert (=> b!1662928 m!2024253))

(declare-fun m!2024255 () Bool)

(assert (=> b!1662928 m!2024255))

(declare-fun m!2024257 () Bool)

(assert (=> b!1662928 m!2024257))

(declare-fun m!2024259 () Bool)

(assert (=> b!1662928 m!2024259))

(assert (=> b!1662928 m!2024253))

(declare-fun m!2024261 () Bool)

(assert (=> b!1662909 m!2024261))

(declare-fun m!2024263 () Bool)

(assert (=> b!1662924 m!2024263))

(declare-fun m!2024265 () Bool)

(assert (=> b!1662925 m!2024265))

(declare-fun m!2024267 () Bool)

(assert (=> b!1662931 m!2024267))

(declare-fun m!2024269 () Bool)

(assert (=> b!1662931 m!2024269))

(declare-fun m!2024271 () Bool)

(assert (=> b!1662921 m!2024271))

(assert (=> b!1662921 m!2024271))

(declare-fun m!2024273 () Bool)

(assert (=> b!1662921 m!2024273))

(declare-fun m!2024275 () Bool)

(assert (=> b!1662917 m!2024275))

(declare-fun m!2024277 () Bool)

(assert (=> b!1662932 m!2024277))

(declare-fun m!2024279 () Bool)

(assert (=> b!1662932 m!2024279))

(declare-fun m!2024281 () Bool)

(assert (=> b!1662906 m!2024281))

(declare-fun m!2024283 () Bool)

(assert (=> b!1662926 m!2024283))

(declare-fun m!2024285 () Bool)

(assert (=> b!1662919 m!2024285))

(assert (=> b!1662919 m!2024285))

(declare-fun m!2024287 () Bool)

(assert (=> b!1662919 m!2024287))

(declare-fun m!2024289 () Bool)

(assert (=> b!1662919 m!2024289))

(declare-fun m!2024291 () Bool)

(assert (=> b!1662915 m!2024291))

(assert (=> b!1662915 m!2024291))

(declare-fun m!2024293 () Bool)

(assert (=> b!1662915 m!2024293))

(declare-fun m!2024295 () Bool)

(assert (=> b!1662927 m!2024295))

(declare-fun m!2024297 () Bool)

(assert (=> b!1662911 m!2024297))

(declare-fun m!2024299 () Bool)

(assert (=> b!1662938 m!2024299))

(declare-fun m!2024301 () Bool)

(assert (=> b!1662938 m!2024301))

(declare-fun m!2024303 () Bool)

(assert (=> b!1662938 m!2024303))

(declare-fun m!2024305 () Bool)

(assert (=> b!1662938 m!2024305))

(declare-fun m!2024307 () Bool)

(assert (=> b!1662938 m!2024307))

(declare-fun m!2024309 () Bool)

(assert (=> b!1662938 m!2024309))

(assert (=> b!1662938 m!2024305))

(declare-fun m!2024311 () Bool)

(assert (=> b!1662938 m!2024311))

(assert (=> b!1662938 m!2024299))

(declare-fun m!2024313 () Bool)

(assert (=> b!1662916 m!2024313))

(assert (=> b!1662916 m!2024313))

(declare-fun m!2024315 () Bool)

(assert (=> b!1662916 m!2024315))

(declare-fun m!2024317 () Bool)

(assert (=> b!1662929 m!2024317))

(declare-fun m!2024319 () Bool)

(assert (=> b!1662903 m!2024319))

(declare-fun m!2024321 () Bool)

(assert (=> b!1662934 m!2024321))

(declare-fun m!2024323 () Bool)

(assert (=> b!1662934 m!2024323))

(declare-fun m!2024325 () Bool)

(assert (=> b!1662934 m!2024325))

(declare-fun m!2024327 () Bool)

(assert (=> b!1662934 m!2024327))

(declare-fun m!2024329 () Bool)

(assert (=> b!1662918 m!2024329))

(assert (=> b!1662918 m!2024329))

(declare-fun m!2024331 () Bool)

(assert (=> b!1662918 m!2024331))

(assert (=> b!1662918 m!2024331))

(declare-fun m!2024333 () Bool)

(assert (=> b!1662918 m!2024333))

(declare-fun m!2024335 () Bool)

(assert (=> b!1662918 m!2024335))

(declare-fun m!2024337 () Bool)

(assert (=> b!1662905 m!2024337))

(declare-fun m!2024339 () Bool)

(assert (=> b!1662905 m!2024339))

(declare-fun m!2024341 () Bool)

(assert (=> b!1662905 m!2024341))

(declare-fun m!2024343 () Bool)

(assert (=> b!1662905 m!2024343))

(declare-fun m!2024345 () Bool)

(assert (=> b!1662908 m!2024345))

(assert (=> b!1662908 m!2024345))

(declare-fun m!2024347 () Bool)

(assert (=> b!1662908 m!2024347))

(declare-fun m!2024349 () Bool)

(assert (=> b!1662936 m!2024349))

(assert (=> b!1662936 m!2024349))

(declare-fun m!2024351 () Bool)

(assert (=> b!1662936 m!2024351))

(declare-fun m!2024353 () Bool)

(assert (=> b!1662936 m!2024353))

(declare-fun m!2024355 () Bool)

(assert (=> b!1662907 m!2024355))

(declare-fun m!2024357 () Bool)

(assert (=> b!1662912 m!2024357))

(declare-fun m!2024359 () Bool)

(assert (=> b!1662912 m!2024359))

(declare-fun m!2024361 () Bool)

(assert (=> b!1662912 m!2024361))

(declare-fun m!2024363 () Bool)

(assert (=> b!1662912 m!2024363))

(declare-fun m!2024365 () Bool)

(assert (=> b!1662912 m!2024365))

(declare-fun m!2024367 () Bool)

(assert (=> b!1662912 m!2024367))

(declare-fun m!2024369 () Bool)

(assert (=> b!1662912 m!2024369))

(declare-fun m!2024371 () Bool)

(assert (=> b!1662912 m!2024371))

(assert (=> b!1662912 m!2024365))

(declare-fun m!2024373 () Bool)

(assert (=> b!1662912 m!2024373))

(declare-fun m!2024375 () Bool)

(assert (=> b!1662912 m!2024375))

(declare-fun m!2024377 () Bool)

(assert (=> b!1662920 m!2024377))

(declare-fun m!2024379 () Bool)

(assert (=> b!1662930 m!2024379))

(declare-fun m!2024381 () Bool)

(assert (=> b!1662904 m!2024381))

(declare-fun m!2024383 () Bool)

(assert (=> b!1662904 m!2024383))

(declare-fun m!2024385 () Bool)

(assert (=> b!1662904 m!2024385))

(declare-fun m!2024387 () Bool)

(assert (=> b!1662904 m!2024387))

(declare-fun m!2024389 () Bool)

(assert (=> b!1662904 m!2024389))

(declare-fun m!2024391 () Bool)

(assert (=> b!1662904 m!2024391))

(declare-fun m!2024393 () Bool)

(assert (=> b!1662914 m!2024393))

(declare-fun m!2024395 () Bool)

(assert (=> b!1662914 m!2024395))

(declare-fun m!2024397 () Bool)

(assert (=> b!1662937 m!2024397))

(declare-fun m!2024399 () Bool)

(assert (=> b!1662937 m!2024399))

(check-sat (not b!1662931) (not b!1662916) (not b!1662927) (not b!1662908) (not b_next!45881) (not b!1662936) (not b!1662911) (not b!1662917) (not b_next!45885) (not b!1662922) (not b!1662906) b_and!118065 b_and!118067 b_and!118063 (not b!1662912) (not b!1662934) (not b!1662904) (not b_next!45879) (not b!1662905) (not b!1662914) (not b!1662938) (not b!1662907) (not b!1662919) (not b!1662925) (not b!1662928) (not b!1662926) (not b_next!45883) (not b!1662921) (not b!1662913) (not b!1662930) b_and!118061 (not b!1662909) (not b!1662932) (not b!1662920) (not b!1662929) (not b!1662903) (not b!1662937) (not b!1662918) (not b!1662915) (not b!1662924))
(check-sat (not b_next!45879) (not b_next!45881) (not b_next!45883) (not b_next!45885) b_and!118065 b_and!118061 b_and!118067 b_and!118063)
(get-model)

(declare-fun d!502283 () Bool)

(assert (=> d!502283 (= (head!3710 lt!624973) (h!23747 lt!624973))))

(assert (=> b!1662929 d!502283))

(declare-fun d!502285 () Bool)

(declare-fun e!1066075 () Bool)

(assert (=> d!502285 e!1066075))

(declare-fun res!746222 () Bool)

(assert (=> d!502285 (=> (not res!746222) (not e!1066075))))

(declare-fun isBalanced!1892 (Conc!6115) Bool)

(declare-fun prepend!815 (Conc!6115 Token!6032) Conc!6115)

(assert (=> d!502285 (= res!746222 (isBalanced!1892 (prepend!815 (c!270667 (seqFromList!2205 (t!151866 (t!151866 tokens!457)))) (h!23748 (t!151866 tokens!457)))))))

(declare-fun lt!624997 () BalanceConc!12174)

(assert (=> d!502285 (= lt!624997 (BalanceConc!12175 (prepend!815 (c!270667 (seqFromList!2205 (t!151866 (t!151866 tokens!457)))) (h!23748 (t!151866 tokens!457)))))))

(assert (=> d!502285 (= (prepend!813 (seqFromList!2205 (t!151866 (t!151866 tokens!457))) (h!23748 (t!151866 tokens!457))) lt!624997)))

(declare-fun b!1662941 () Bool)

(assert (=> b!1662941 (= e!1066075 (= (list!7326 lt!624997) (Cons!18347 (h!23748 (t!151866 tokens!457)) (list!7326 (seqFromList!2205 (t!151866 (t!151866 tokens!457)))))))))

(assert (= (and d!502285 res!746222) b!1662941))

(declare-fun m!2024401 () Bool)

(assert (=> d!502285 m!2024401))

(assert (=> d!502285 m!2024401))

(declare-fun m!2024403 () Bool)

(assert (=> d!502285 m!2024403))

(declare-fun m!2024405 () Bool)

(assert (=> b!1662941 m!2024405))

(assert (=> b!1662941 m!2024253))

(declare-fun m!2024407 () Bool)

(assert (=> b!1662941 m!2024407))

(assert (=> b!1662928 d!502285))

(declare-fun d!502287 () Bool)

(assert (=> d!502287 (= (list!7326 (_1!10434 lt!624960)) (list!7326 (prepend!813 (seqFromList!2205 (t!151866 (t!151866 tokens!457))) (h!23748 (t!151866 tokens!457)))))))

(declare-fun lt!625003 () Unit!31031)

(declare-fun choose!10006 (Token!6032 List!18417 BalanceConc!12174) Unit!31031)

(assert (=> d!502287 (= lt!625003 (choose!10006 (h!23748 (t!151866 tokens!457)) (t!151866 (t!151866 tokens!457)) (_1!10434 lt!624960)))))

(declare-fun $colon$colon!387 (List!18417 Token!6032) List!18417)

(assert (=> d!502287 (= (list!7326 (_1!10434 lt!624960)) (list!7326 (seqFromList!2205 ($colon$colon!387 (t!151866 (t!151866 tokens!457)) (h!23748 (t!151866 tokens!457))))))))

(assert (=> d!502287 (= (seqFromListBHdTlConstructive!308 (h!23748 (t!151866 tokens!457)) (t!151866 (t!151866 tokens!457)) (_1!10434 lt!624960)) lt!625003)))

(declare-fun bs!397384 () Bool)

(assert (= bs!397384 d!502287))

(declare-fun m!2024419 () Bool)

(assert (=> bs!397384 m!2024419))

(declare-fun m!2024421 () Bool)

(assert (=> bs!397384 m!2024421))

(assert (=> bs!397384 m!2024337))

(declare-fun m!2024423 () Bool)

(assert (=> bs!397384 m!2024423))

(assert (=> bs!397384 m!2024419))

(assert (=> bs!397384 m!2024423))

(assert (=> bs!397384 m!2024253))

(assert (=> bs!397384 m!2024255))

(assert (=> bs!397384 m!2024253))

(declare-fun m!2024425 () Bool)

(assert (=> bs!397384 m!2024425))

(assert (=> bs!397384 m!2024255))

(declare-fun m!2024427 () Bool)

(assert (=> bs!397384 m!2024427))

(assert (=> b!1662928 d!502287))

(declare-fun d!502297 () Bool)

(declare-fun list!7329 (Conc!6115) List!18417)

(assert (=> d!502297 (= (list!7326 lt!624990) (list!7329 (c!270667 lt!624990)))))

(declare-fun bs!397385 () Bool)

(assert (= bs!397385 d!502297))

(declare-fun m!2024429 () Bool)

(assert (=> bs!397385 m!2024429))

(assert (=> b!1662928 d!502297))

(declare-fun d!502299 () Bool)

(declare-fun fromListB!997 (List!18417) BalanceConc!12174)

(assert (=> d!502299 (= (seqFromList!2205 (t!151866 (t!151866 tokens!457))) (fromListB!997 (t!151866 (t!151866 tokens!457))))))

(declare-fun bs!397386 () Bool)

(assert (= bs!397386 d!502299))

(declare-fun m!2024431 () Bool)

(assert (=> bs!397386 m!2024431))

(assert (=> b!1662928 d!502299))

(declare-fun d!502301 () Bool)

(assert (=> d!502301 (= (list!7326 lt!624961) (list!7329 (c!270667 lt!624961)))))

(declare-fun bs!397387 () Bool)

(assert (= bs!397387 d!502301))

(declare-fun m!2024433 () Bool)

(assert (=> bs!397387 m!2024433))

(assert (=> b!1662928 d!502301))

(declare-fun d!502303 () Bool)

(declare-fun res!746228 () Bool)

(declare-fun e!1066081 () Bool)

(assert (=> d!502303 (=> (not res!746228) (not e!1066081))))

(declare-fun rulesValid!1185 (LexerInterface!2862 List!18418) Bool)

(assert (=> d!502303 (= res!746228 (rulesValid!1185 thiss!17113 rules!1846))))

(assert (=> d!502303 (= (rulesInvariant!2531 thiss!17113 rules!1846) e!1066081)))

(declare-fun b!1662947 () Bool)

(declare-datatypes ((List!18419 0))(
  ( (Nil!18349) (Cons!18349 (h!23750 String!20947) (t!151910 List!18419)) )
))
(declare-fun noDuplicateTag!1185 (LexerInterface!2862 List!18418 List!18419) Bool)

(assert (=> b!1662947 (= e!1066081 (noDuplicateTag!1185 thiss!17113 rules!1846 Nil!18349))))

(assert (= (and d!502303 res!746228) b!1662947))

(declare-fun m!2024435 () Bool)

(assert (=> d!502303 m!2024435))

(declare-fun m!2024437 () Bool)

(assert (=> b!1662947 m!2024437))

(assert (=> b!1662907 d!502303))

(declare-fun d!502305 () Bool)

(declare-fun res!746264 () Bool)

(declare-fun e!1066117 () Bool)

(assert (=> d!502305 (=> res!746264 e!1066117)))

(assert (=> d!502305 (= res!746264 (or (not ((_ is Cons!18347) tokens!457)) (not ((_ is Cons!18347) (t!151866 tokens!457)))))))

(assert (=> d!502305 (= (tokensListTwoByTwoPredicateSeparableList!555 thiss!17113 tokens!457 rules!1846) e!1066117)))

(declare-fun b!1662996 () Bool)

(declare-fun e!1066116 () Bool)

(assert (=> b!1662996 (= e!1066117 e!1066116)))

(declare-fun res!746263 () Bool)

(assert (=> b!1662996 (=> (not res!746263) (not e!1066116))))

(assert (=> b!1662996 (= res!746263 (separableTokensPredicate!802 thiss!17113 (h!23748 tokens!457) (h!23748 (t!151866 tokens!457)) rules!1846))))

(declare-fun lt!625051 () Unit!31031)

(declare-fun Unit!31036 () Unit!31031)

(assert (=> b!1662996 (= lt!625051 Unit!31036)))

(declare-fun size!14592 (BalanceConc!12172) Int)

(assert (=> b!1662996 (> (size!14592 (charsOf!1882 (h!23748 (t!151866 tokens!457)))) 0)))

(declare-fun lt!625052 () Unit!31031)

(declare-fun Unit!31037 () Unit!31031)

(assert (=> b!1662996 (= lt!625052 Unit!31037)))

(assert (=> b!1662996 (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 (t!151866 tokens!457)))))

(declare-fun lt!625047 () Unit!31031)

(declare-fun Unit!31038 () Unit!31031)

(assert (=> b!1662996 (= lt!625047 Unit!31038)))

(assert (=> b!1662996 (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 tokens!457))))

(declare-fun lt!625048 () Unit!31031)

(declare-fun lt!625046 () Unit!31031)

(assert (=> b!1662996 (= lt!625048 lt!625046)))

(assert (=> b!1662996 (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 (t!151866 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!622 (LexerInterface!2862 List!18418 List!18417 Token!6032) Unit!31031)

(assert (=> b!1662996 (= lt!625046 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!622 thiss!17113 rules!1846 tokens!457 (h!23748 (t!151866 tokens!457))))))

(declare-fun lt!625050 () Unit!31031)

(declare-fun lt!625049 () Unit!31031)

(assert (=> b!1662996 (= lt!625050 lt!625049)))

(assert (=> b!1662996 (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 tokens!457))))

(assert (=> b!1662996 (= lt!625049 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!622 thiss!17113 rules!1846 tokens!457 (h!23748 tokens!457)))))

(declare-fun b!1662997 () Bool)

(assert (=> b!1662997 (= e!1066116 (tokensListTwoByTwoPredicateSeparableList!555 thiss!17113 (Cons!18347 (h!23748 (t!151866 tokens!457)) (t!151866 (t!151866 tokens!457))) rules!1846))))

(assert (= (and d!502305 (not res!746264)) b!1662996))

(assert (= (and b!1662996 res!746263) b!1662997))

(declare-fun m!2024513 () Bool)

(assert (=> b!1662996 m!2024513))

(declare-fun m!2024515 () Bool)

(assert (=> b!1662996 m!2024515))

(assert (=> b!1662996 m!2024249))

(assert (=> b!1662996 m!2024297))

(assert (=> b!1662996 m!2024249))

(declare-fun m!2024517 () Bool)

(assert (=> b!1662996 m!2024517))

(declare-fun m!2024519 () Bool)

(assert (=> b!1662996 m!2024519))

(assert (=> b!1662996 m!2024265))

(declare-fun m!2024521 () Bool)

(assert (=> b!1662997 m!2024521))

(assert (=> b!1662930 d!502305))

(declare-fun b!1663065 () Bool)

(declare-fun e!1066159 () Bool)

(assert (=> b!1663065 (= e!1066159 true)))

(declare-fun b!1663064 () Bool)

(declare-fun e!1066158 () Bool)

(assert (=> b!1663064 (= e!1066158 e!1066159)))

(declare-fun b!1663063 () Bool)

(declare-fun e!1066157 () Bool)

(assert (=> b!1663063 (= e!1066157 e!1066158)))

(declare-fun d!502325 () Bool)

(assert (=> d!502325 e!1066157))

(assert (= b!1663064 b!1663065))

(assert (= b!1663063 b!1663064))

(assert (= (and d!502325 ((_ is Cons!18348) rules!1846)) b!1663063))

(declare-fun lambda!67881 () Int)

(declare-fun order!10979 () Int)

(declare-fun order!10977 () Int)

(declare-fun dynLambda!8242 (Int Int) Int)

(declare-fun dynLambda!8243 (Int Int) Int)

(assert (=> b!1663065 (< (dynLambda!8242 order!10977 (toValue!4688 (transformation!3233 (h!23749 rules!1846)))) (dynLambda!8243 order!10979 lambda!67881))))

(declare-fun order!10981 () Int)

(declare-fun dynLambda!8244 (Int Int) Int)

(assert (=> b!1663065 (< (dynLambda!8244 order!10981 (toChars!4547 (transformation!3233 (h!23749 rules!1846)))) (dynLambda!8243 order!10979 lambda!67881))))

(assert (=> d!502325 true))

(declare-fun lt!625118 () Bool)

(declare-fun forall!4169 (List!18417 Int) Bool)

(assert (=> d!502325 (= lt!625118 (forall!4169 tokens!457 lambda!67881))))

(declare-fun e!1066150 () Bool)

(assert (=> d!502325 (= lt!625118 e!1066150)))

(declare-fun res!746302 () Bool)

(assert (=> d!502325 (=> res!746302 e!1066150)))

(assert (=> d!502325 (= res!746302 (not ((_ is Cons!18347) tokens!457)))))

(assert (=> d!502325 (not (isEmpty!11398 rules!1846))))

(assert (=> d!502325 (= (rulesProduceEachTokenIndividuallyList!1064 thiss!17113 rules!1846 tokens!457) lt!625118)))

(declare-fun b!1663053 () Bool)

(declare-fun e!1066149 () Bool)

(assert (=> b!1663053 (= e!1066150 e!1066149)))

(declare-fun res!746303 () Bool)

(assert (=> b!1663053 (=> (not res!746303) (not e!1066149))))

(assert (=> b!1663053 (= res!746303 (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 tokens!457)))))

(declare-fun b!1663054 () Bool)

(assert (=> b!1663054 (= e!1066149 (rulesProduceEachTokenIndividuallyList!1064 thiss!17113 rules!1846 (t!151866 tokens!457)))))

(assert (= (and d!502325 (not res!746302)) b!1663053))

(assert (= (and b!1663053 res!746303) b!1663054))

(declare-fun m!2024623 () Bool)

(assert (=> d!502325 m!2024623))

(assert (=> d!502325 m!2024275))

(assert (=> b!1663053 m!2024265))

(declare-fun m!2024625 () Bool)

(assert (=> b!1663054 m!2024625))

(assert (=> b!1662909 d!502325))

(declare-fun d!502343 () Bool)

(assert (=> d!502343 (= (get!5369 (maxPrefixZipper!360 thiss!17113 rules!1846 lt!624982)) (v!24741 (maxPrefixZipper!360 thiss!17113 rules!1846 lt!624982)))))

(assert (=> b!1662908 d!502343))

(declare-fun lt!625131 () Option!3517)

(declare-fun d!502345 () Bool)

(assert (=> d!502345 (= lt!625131 (maxPrefix!1424 thiss!17113 rules!1846 lt!624982))))

(declare-fun e!1066162 () Option!3517)

(assert (=> d!502345 (= lt!625131 e!1066162)))

(declare-fun c!270688 () Bool)

(assert (=> d!502345 (= c!270688 (and ((_ is Cons!18348) rules!1846) ((_ is Nil!18348) (t!151867 rules!1846))))))

(declare-fun lt!625133 () Unit!31031)

(declare-fun lt!625130 () Unit!31031)

(assert (=> d!502345 (= lt!625133 lt!625130)))

(assert (=> d!502345 (isPrefix!1491 lt!624982 lt!624982)))

(declare-fun lemmaIsPrefixRefl!1012 (List!18416 List!18416) Unit!31031)

(assert (=> d!502345 (= lt!625130 (lemmaIsPrefixRefl!1012 lt!624982 lt!624982))))

(declare-fun rulesValidInductive!1034 (LexerInterface!2862 List!18418) Bool)

(assert (=> d!502345 (rulesValidInductive!1034 thiss!17113 rules!1846)))

(assert (=> d!502345 (= (maxPrefixZipper!360 thiss!17113 rules!1846 lt!624982) lt!625131)))

(declare-fun bm!106476 () Bool)

(declare-fun call!106481 () Option!3517)

(declare-fun maxPrefixOneRuleZipper!134 (LexerInterface!2862 Rule!6266 List!18416) Option!3517)

(assert (=> bm!106476 (= call!106481 (maxPrefixOneRuleZipper!134 thiss!17113 (h!23749 rules!1846) lt!624982))))

(declare-fun b!1663072 () Bool)

(assert (=> b!1663072 (= e!1066162 call!106481)))

(declare-fun b!1663073 () Bool)

(declare-fun lt!625129 () Option!3517)

(declare-fun lt!625132 () Option!3517)

(assert (=> b!1663073 (= e!1066162 (ite (and ((_ is None!3516) lt!625129) ((_ is None!3516) lt!625132)) None!3516 (ite ((_ is None!3516) lt!625132) lt!625129 (ite ((_ is None!3516) lt!625129) lt!625132 (ite (>= (size!14588 (_1!10433 (v!24741 lt!625129))) (size!14588 (_1!10433 (v!24741 lt!625132)))) lt!625129 lt!625132)))))))

(assert (=> b!1663073 (= lt!625129 call!106481)))

(assert (=> b!1663073 (= lt!625132 (maxPrefixZipper!360 thiss!17113 (t!151867 rules!1846) lt!624982))))

(assert (= (and d!502345 c!270688) b!1663072))

(assert (= (and d!502345 (not c!270688)) b!1663073))

(assert (= (or b!1663072 b!1663073) bm!106476))

(assert (=> d!502345 m!2024383))

(declare-fun m!2024627 () Bool)

(assert (=> d!502345 m!2024627))

(declare-fun m!2024629 () Bool)

(assert (=> d!502345 m!2024629))

(declare-fun m!2024631 () Bool)

(assert (=> d!502345 m!2024631))

(declare-fun m!2024633 () Bool)

(assert (=> bm!106476 m!2024633))

(declare-fun m!2024635 () Bool)

(assert (=> b!1663073 m!2024635))

(assert (=> b!1662908 d!502345))

(declare-fun d!502347 () Bool)

(declare-fun isEmpty!11403 (Option!3517) Bool)

(assert (=> d!502347 (= (isDefined!2873 lt!624967) (not (isEmpty!11403 lt!624967)))))

(declare-fun bs!397395 () Bool)

(assert (= bs!397395 d!502347))

(declare-fun m!2024637 () Bool)

(assert (=> bs!397395 m!2024637))

(assert (=> b!1662931 d!502347))

(declare-fun b!1663106 () Bool)

(declare-fun e!1066182 () Unit!31031)

(declare-fun Unit!31039 () Unit!31031)

(assert (=> b!1663106 (= e!1066182 Unit!31039)))

(declare-fun d!502349 () Bool)

(assert (=> d!502349 (isDefined!2873 (maxPrefix!1424 thiss!17113 rules!1846 (++!4989 lt!624988 lt!624973)))))

(declare-fun lt!625260 () Unit!31031)

(assert (=> d!502349 (= lt!625260 e!1066182)))

(declare-fun c!270694 () Bool)

(assert (=> d!502349 (= c!270694 (isEmpty!11403 (maxPrefix!1424 thiss!17113 rules!1846 (++!4989 lt!624988 lt!624973))))))

(declare-fun lt!625254 () Unit!31031)

(declare-fun lt!625258 () Unit!31031)

(assert (=> d!502349 (= lt!625254 lt!625258)))

(declare-fun e!1066183 () Bool)

(assert (=> d!502349 e!1066183))

(declare-fun res!746323 () Bool)

(assert (=> d!502349 (=> (not res!746323) (not e!1066183))))

(declare-fun lt!625266 () Token!6032)

(declare-datatypes ((Option!3519 0))(
  ( (None!3518) (Some!3518 (v!24749 Rule!6266)) )
))
(declare-fun isDefined!2874 (Option!3519) Bool)

(declare-fun getRuleFromTag!331 (LexerInterface!2862 List!18418 String!20947) Option!3519)

(assert (=> d!502349 (= res!746323 (isDefined!2874 (getRuleFromTag!331 thiss!17113 rules!1846 (tag!3517 (rule!5119 lt!625266)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!331 (LexerInterface!2862 List!18418 List!18416 Token!6032) Unit!31031)

(assert (=> d!502349 (= lt!625258 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!331 thiss!17113 rules!1846 lt!624988 lt!625266))))

(declare-fun lt!625265 () Unit!31031)

(declare-fun lt!625257 () Unit!31031)

(assert (=> d!502349 (= lt!625265 lt!625257)))

(declare-fun lt!625268 () List!18416)

(assert (=> d!502349 (isPrefix!1491 lt!625268 (++!4989 lt!624988 lt!624973))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!217 (List!18416 List!18416 List!18416) Unit!31031)

(assert (=> d!502349 (= lt!625257 (lemmaPrefixStaysPrefixWhenAddingToSuffix!217 lt!625268 lt!624988 lt!624973))))

(assert (=> d!502349 (= lt!625268 (list!7325 (charsOf!1882 lt!625266)))))

(declare-fun lt!625255 () Unit!31031)

(declare-fun lt!625259 () Unit!31031)

(assert (=> d!502349 (= lt!625255 lt!625259)))

(declare-fun lt!625261 () List!18416)

(declare-fun lt!625253 () List!18416)

(assert (=> d!502349 (isPrefix!1491 lt!625261 (++!4989 lt!625261 lt!625253))))

(assert (=> d!502349 (= lt!625259 (lemmaConcatTwoListThenFirstIsPrefix!1016 lt!625261 lt!625253))))

(assert (=> d!502349 (= lt!625253 (_2!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 lt!624988))))))

(assert (=> d!502349 (= lt!625261 (list!7325 (charsOf!1882 lt!625266)))))

(declare-fun head!3713 (List!18417) Token!6032)

(assert (=> d!502349 (= lt!625266 (head!3713 (list!7326 (_1!10434 (lex!1346 thiss!17113 rules!1846 (seqFromList!2206 lt!624988))))))))

(assert (=> d!502349 (not (isEmpty!11398 rules!1846))))

(assert (=> d!502349 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!430 thiss!17113 rules!1846 lt!624988 lt!624973) lt!625260)))

(declare-fun b!1663103 () Bool)

(declare-fun res!746324 () Bool)

(assert (=> b!1663103 (=> (not res!746324) (not e!1066183))))

(declare-fun get!5371 (Option!3519) Rule!6266)

(assert (=> b!1663103 (= res!746324 (matchR!2054 (regex!3233 (get!5371 (getRuleFromTag!331 thiss!17113 rules!1846 (tag!3517 (rule!5119 lt!625266))))) (list!7325 (charsOf!1882 lt!625266))))))

(declare-fun b!1663104 () Bool)

(assert (=> b!1663104 (= e!1066183 (= (rule!5119 lt!625266) (get!5371 (getRuleFromTag!331 thiss!17113 rules!1846 (tag!3517 (rule!5119 lt!625266))))))))

(declare-fun b!1663105 () Bool)

(declare-fun Unit!31042 () Unit!31031)

(assert (=> b!1663105 (= e!1066182 Unit!31042)))

(declare-fun lt!625256 () List!18416)

(assert (=> b!1663105 (= lt!625256 (++!4989 lt!624988 lt!624973))))

(declare-fun lt!625252 () Unit!31031)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!225 (LexerInterface!2862 Rule!6266 List!18418 List!18416) Unit!31031)

(assert (=> b!1663105 (= lt!625252 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!225 thiss!17113 (rule!5119 lt!625266) rules!1846 lt!625256))))

(declare-fun maxPrefixOneRule!827 (LexerInterface!2862 Rule!6266 List!18416) Option!3517)

(assert (=> b!1663105 (isEmpty!11403 (maxPrefixOneRule!827 thiss!17113 (rule!5119 lt!625266) lt!625256))))

(declare-fun lt!625262 () Unit!31031)

(assert (=> b!1663105 (= lt!625262 lt!625252)))

(declare-fun lt!625267 () List!18416)

(assert (=> b!1663105 (= lt!625267 (list!7325 (charsOf!1882 lt!625266)))))

(declare-fun lt!625263 () Unit!31031)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!221 (LexerInterface!2862 Rule!6266 List!18416 List!18416) Unit!31031)

(assert (=> b!1663105 (= lt!625263 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!221 thiss!17113 (rule!5119 lt!625266) lt!625267 (++!4989 lt!624988 lt!624973)))))

(assert (=> b!1663105 (not (matchR!2054 (regex!3233 (rule!5119 lt!625266)) lt!625267))))

(declare-fun lt!625264 () Unit!31031)

(assert (=> b!1663105 (= lt!625264 lt!625263)))

(assert (=> b!1663105 false))

(assert (= (and d!502349 res!746323) b!1663103))

(assert (= (and b!1663103 res!746324) b!1663104))

(assert (= (and d!502349 c!270694) b!1663105))

(assert (= (and d!502349 (not c!270694)) b!1663106))

(declare-fun m!2024733 () Bool)

(assert (=> d!502349 m!2024733))

(declare-fun m!2024735 () Bool)

(assert (=> d!502349 m!2024735))

(assert (=> d!502349 m!2024735))

(declare-fun m!2024737 () Bool)

(assert (=> d!502349 m!2024737))

(assert (=> d!502349 m!2024349))

(assert (=> d!502349 m!2024351))

(declare-fun m!2024739 () Bool)

(assert (=> d!502349 m!2024739))

(declare-fun m!2024741 () Bool)

(assert (=> d!502349 m!2024741))

(declare-fun m!2024743 () Bool)

(assert (=> d!502349 m!2024743))

(assert (=> d!502349 m!2024743))

(declare-fun m!2024745 () Bool)

(assert (=> d!502349 m!2024745))

(declare-fun m!2024747 () Bool)

(assert (=> d!502349 m!2024747))

(declare-fun m!2024749 () Bool)

(assert (=> d!502349 m!2024749))

(assert (=> d!502349 m!2024309))

(declare-fun m!2024751 () Bool)

(assert (=> d!502349 m!2024751))

(assert (=> d!502349 m!2024349))

(assert (=> d!502349 m!2024371))

(assert (=> d!502349 m!2024747))

(declare-fun m!2024753 () Bool)

(assert (=> d!502349 m!2024753))

(assert (=> d!502349 m!2024371))

(assert (=> d!502349 m!2024747))

(declare-fun m!2024755 () Bool)

(assert (=> d!502349 m!2024755))

(assert (=> d!502349 m!2024733))

(declare-fun m!2024757 () Bool)

(assert (=> d!502349 m!2024757))

(assert (=> d!502349 m!2024371))

(declare-fun m!2024759 () Bool)

(assert (=> d!502349 m!2024759))

(assert (=> d!502349 m!2024309))

(declare-fun m!2024761 () Bool)

(assert (=> d!502349 m!2024761))

(assert (=> d!502349 m!2024275))

(assert (=> d!502349 m!2024739))

(declare-fun m!2024763 () Bool)

(assert (=> d!502349 m!2024763))

(assert (=> b!1663103 m!2024733))

(assert (=> b!1663103 m!2024735))

(assert (=> b!1663103 m!2024735))

(assert (=> b!1663103 m!2024737))

(assert (=> b!1663103 m!2024733))

(declare-fun m!2024765 () Bool)

(assert (=> b!1663103 m!2024765))

(assert (=> b!1663103 m!2024737))

(declare-fun m!2024767 () Bool)

(assert (=> b!1663103 m!2024767))

(assert (=> b!1663104 m!2024733))

(assert (=> b!1663104 m!2024733))

(assert (=> b!1663104 m!2024765))

(declare-fun m!2024769 () Bool)

(assert (=> b!1663105 m!2024769))

(assert (=> b!1663105 m!2024735))

(declare-fun m!2024771 () Bool)

(assert (=> b!1663105 m!2024771))

(assert (=> b!1663105 m!2024371))

(declare-fun m!2024773 () Bool)

(assert (=> b!1663105 m!2024773))

(declare-fun m!2024775 () Bool)

(assert (=> b!1663105 m!2024775))

(assert (=> b!1663105 m!2024371))

(assert (=> b!1663105 m!2024735))

(assert (=> b!1663105 m!2024737))

(assert (=> b!1663105 m!2024769))

(declare-fun m!2024777 () Bool)

(assert (=> b!1663105 m!2024777))

(assert (=> b!1662931 d!502349))

(declare-fun d!502363 () Bool)

(assert (=> d!502363 (= (inv!23687 (tag!3517 (h!23749 rules!1846))) (= (mod (str.len (value!101812 (tag!3517 (h!23749 rules!1846)))) 2) 0))))

(assert (=> b!1662932 d!502363))

(declare-fun d!502365 () Bool)

(declare-fun res!746327 () Bool)

(declare-fun e!1066186 () Bool)

(assert (=> d!502365 (=> (not res!746327) (not e!1066186))))

(declare-fun semiInverseModEq!1257 (Int Int) Bool)

(assert (=> d!502365 (= res!746327 (semiInverseModEq!1257 (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toValue!4688 (transformation!3233 (h!23749 rules!1846)))))))

(assert (=> d!502365 (= (inv!23691 (transformation!3233 (h!23749 rules!1846))) e!1066186)))

(declare-fun b!1663109 () Bool)

(declare-fun equivClasses!1198 (Int Int) Bool)

(assert (=> b!1663109 (= e!1066186 (equivClasses!1198 (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toValue!4688 (transformation!3233 (h!23749 rules!1846)))))))

(assert (= (and d!502365 res!746327) b!1663109))

(declare-fun m!2024779 () Bool)

(assert (=> d!502365 m!2024779))

(declare-fun m!2024781 () Bool)

(assert (=> b!1663109 m!2024781))

(assert (=> b!1662932 d!502365))

(declare-fun d!502367 () Bool)

(assert (=> d!502367 (= (separableTokensPredicate!802 thiss!17113 (h!23748 tokens!457) (h!23748 (t!151866 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!659 (rulesRegex!617 thiss!17113 rules!1846) (++!4990 (charsOf!1882 (h!23748 tokens!457)) (singletonSeq!1739 (apply!4908 (charsOf!1882 (h!23748 (t!151866 tokens!457))) 0))))))))

(declare-fun bs!397397 () Bool)

(assert (= bs!397397 d!502367))

(assert (=> bs!397397 m!2024249))

(assert (=> bs!397397 m!2024239))

(assert (=> bs!397397 m!2024249))

(assert (=> bs!397397 m!2024245))

(assert (=> bs!397397 m!2024361))

(assert (=> bs!397397 m!2024245))

(assert (=> bs!397397 m!2024247))

(assert (=> bs!397397 m!2024239))

(declare-fun m!2024783 () Bool)

(assert (=> bs!397397 m!2024783))

(declare-fun m!2024785 () Bool)

(assert (=> bs!397397 m!2024785))

(assert (=> bs!397397 m!2024361))

(assert (=> bs!397397 m!2024247))

(assert (=> bs!397397 m!2024783))

(assert (=> b!1662911 d!502367))

(declare-fun d!502369 () Bool)

(assert (=> d!502369 (= (list!7326 lt!624966) (list!7329 (c!270667 lt!624966)))))

(declare-fun bs!397398 () Bool)

(assert (= bs!397398 d!502369))

(declare-fun m!2024787 () Bool)

(assert (=> bs!397398 m!2024787))

(assert (=> b!1662934 d!502369))

(declare-fun d!502371 () Bool)

(assert (=> d!502371 (= (list!7326 (_1!10434 lt!624965)) (list!7329 (c!270667 (_1!10434 lt!624965))))))

(declare-fun bs!397399 () Bool)

(assert (= bs!397399 d!502371))

(declare-fun m!2024789 () Bool)

(assert (=> bs!397399 m!2024789))

(assert (=> b!1662934 d!502371))

(declare-fun d!502373 () Bool)

(declare-fun e!1066187 () Bool)

(assert (=> d!502373 e!1066187))

(declare-fun res!746328 () Bool)

(assert (=> d!502373 (=> (not res!746328) (not e!1066187))))

(assert (=> d!502373 (= res!746328 (isBalanced!1892 (prepend!815 (c!270667 (_1!10434 lt!624960)) (h!23748 tokens!457))))))

(declare-fun lt!625269 () BalanceConc!12174)

(assert (=> d!502373 (= lt!625269 (BalanceConc!12175 (prepend!815 (c!270667 (_1!10434 lt!624960)) (h!23748 tokens!457))))))

(assert (=> d!502373 (= (prepend!813 (_1!10434 lt!624960) (h!23748 tokens!457)) lt!625269)))

(declare-fun b!1663110 () Bool)

(assert (=> b!1663110 (= e!1066187 (= (list!7326 lt!625269) (Cons!18347 (h!23748 tokens!457) (list!7326 (_1!10434 lt!624960)))))))

(assert (= (and d!502373 res!746328) b!1663110))

(declare-fun m!2024791 () Bool)

(assert (=> d!502373 m!2024791))

(assert (=> d!502373 m!2024791))

(declare-fun m!2024793 () Bool)

(assert (=> d!502373 m!2024793))

(declare-fun m!2024795 () Bool)

(assert (=> b!1663110 m!2024795))

(assert (=> b!1663110 m!2024337))

(assert (=> b!1662934 d!502373))

(declare-fun b!1663121 () Bool)

(declare-fun e!1066194 () Bool)

(declare-fun lt!625272 () tuple2!18064)

(assert (=> b!1663121 (= e!1066194 (not (isEmpty!11399 (_1!10434 lt!625272))))))

(declare-fun e!1066196 () Bool)

(declare-fun b!1663122 () Bool)

(declare-datatypes ((tuple2!18070 0))(
  ( (tuple2!18071 (_1!10437 List!18417) (_2!10437 List!18416)) )
))
(declare-fun lexList!887 (LexerInterface!2862 List!18418 List!18416) tuple2!18070)

(assert (=> b!1663122 (= e!1066196 (= (list!7325 (_2!10434 lt!625272)) (_2!10437 (lexList!887 thiss!17113 rules!1846 (list!7325 lt!624968)))))))

(declare-fun d!502375 () Bool)

(assert (=> d!502375 e!1066196))

(declare-fun res!746337 () Bool)

(assert (=> d!502375 (=> (not res!746337) (not e!1066196))))

(declare-fun e!1066195 () Bool)

(assert (=> d!502375 (= res!746337 e!1066195)))

(declare-fun c!270697 () Bool)

(declare-fun size!14593 (BalanceConc!12174) Int)

(assert (=> d!502375 (= c!270697 (> (size!14593 (_1!10434 lt!625272)) 0))))

(declare-fun lexTailRecV2!610 (LexerInterface!2862 List!18418 BalanceConc!12172 BalanceConc!12172 BalanceConc!12172 BalanceConc!12174) tuple2!18064)

(assert (=> d!502375 (= lt!625272 (lexTailRecV2!610 thiss!17113 rules!1846 lt!624968 (BalanceConc!12173 Empty!6114) lt!624968 (BalanceConc!12175 Empty!6115)))))

(assert (=> d!502375 (= (lex!1346 thiss!17113 rules!1846 lt!624968) lt!625272)))

(declare-fun b!1663123 () Bool)

(declare-fun res!746336 () Bool)

(assert (=> b!1663123 (=> (not res!746336) (not e!1066196))))

(assert (=> b!1663123 (= res!746336 (= (list!7326 (_1!10434 lt!625272)) (_1!10437 (lexList!887 thiss!17113 rules!1846 (list!7325 lt!624968)))))))

(declare-fun b!1663124 () Bool)

(assert (=> b!1663124 (= e!1066195 (= (_2!10434 lt!625272) lt!624968))))

(declare-fun b!1663125 () Bool)

(assert (=> b!1663125 (= e!1066195 e!1066194)))

(declare-fun res!746335 () Bool)

(assert (=> b!1663125 (= res!746335 (< (size!14592 (_2!10434 lt!625272)) (size!14592 lt!624968)))))

(assert (=> b!1663125 (=> (not res!746335) (not e!1066194))))

(assert (= (and d!502375 c!270697) b!1663125))

(assert (= (and d!502375 (not c!270697)) b!1663124))

(assert (= (and b!1663125 res!746335) b!1663121))

(assert (= (and d!502375 res!746337) b!1663123))

(assert (= (and b!1663123 res!746336) b!1663122))

(declare-fun m!2024797 () Bool)

(assert (=> d!502375 m!2024797))

(declare-fun m!2024799 () Bool)

(assert (=> d!502375 m!2024799))

(declare-fun m!2024801 () Bool)

(assert (=> b!1663121 m!2024801))

(declare-fun m!2024803 () Bool)

(assert (=> b!1663122 m!2024803))

(assert (=> b!1663122 m!2024369))

(assert (=> b!1663122 m!2024369))

(declare-fun m!2024805 () Bool)

(assert (=> b!1663122 m!2024805))

(declare-fun m!2024807 () Bool)

(assert (=> b!1663125 m!2024807))

(declare-fun m!2024809 () Bool)

(assert (=> b!1663125 m!2024809))

(declare-fun m!2024811 () Bool)

(assert (=> b!1663123 m!2024811))

(assert (=> b!1663123 m!2024369))

(assert (=> b!1663123 m!2024369))

(assert (=> b!1663123 m!2024805))

(assert (=> b!1662934 d!502375))

(declare-fun d!502377 () Bool)

(declare-fun e!1066199 () Bool)

(assert (=> d!502377 e!1066199))

(declare-fun res!746340 () Bool)

(assert (=> d!502377 (=> (not res!746340) (not e!1066199))))

(declare-fun lt!625275 () BalanceConc!12172)

(assert (=> d!502377 (= res!746340 (= (list!7325 lt!625275) (Cons!18346 (apply!4908 (charsOf!1882 (h!23748 (t!151866 tokens!457))) 0) Nil!18346)))))

(declare-fun singleton!766 (C!9296) BalanceConc!12172)

(assert (=> d!502377 (= lt!625275 (singleton!766 (apply!4908 (charsOf!1882 (h!23748 (t!151866 tokens!457))) 0)))))

(assert (=> d!502377 (= (singletonSeq!1739 (apply!4908 (charsOf!1882 (h!23748 (t!151866 tokens!457))) 0)) lt!625275)))

(declare-fun b!1663128 () Bool)

(declare-fun isBalanced!1893 (Conc!6114) Bool)

(assert (=> b!1663128 (= e!1066199 (isBalanced!1893 (c!270665 lt!625275)))))

(assert (= (and d!502377 res!746340) b!1663128))

(declare-fun m!2024813 () Bool)

(assert (=> d!502377 m!2024813))

(assert (=> d!502377 m!2024245))

(declare-fun m!2024815 () Bool)

(assert (=> d!502377 m!2024815))

(declare-fun m!2024817 () Bool)

(assert (=> b!1663128 m!2024817))

(assert (=> b!1662913 d!502377))

(declare-fun d!502379 () Bool)

(declare-fun lt!625296 () Bool)

(assert (=> d!502379 (= lt!625296 (prefixMatch!478 lt!624984 (list!7325 (++!4990 lt!624993 lt!624978))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!18420 0))(
  ( (Nil!18350) (Cons!18350 (h!23751 Regex!4561) (t!151911 List!18420)) )
))
(declare-datatypes ((Context!1820 0))(
  ( (Context!1821 (exprs!1410 List!18420)) )
))
(declare-fun prefixMatchZipperSequence!660 ((InoxSet Context!1820) BalanceConc!12172 Int) Bool)

(declare-fun focus!216 (Regex!4561) (InoxSet Context!1820))

(assert (=> d!502379 (= lt!625296 (prefixMatchZipperSequence!660 (focus!216 lt!624984) (++!4990 lt!624993 lt!624978) 0))))

(declare-fun lt!625301 () Unit!31031)

(declare-fun lt!625299 () Unit!31031)

(assert (=> d!502379 (= lt!625301 lt!625299)))

(declare-fun lt!625304 () List!18416)

(declare-fun lt!625302 () (InoxSet Context!1820))

(declare-fun prefixMatchZipper!195 ((InoxSet Context!1820) List!18416) Bool)

(assert (=> d!502379 (= (prefixMatch!478 lt!624984 lt!625304) (prefixMatchZipper!195 lt!625302 lt!625304))))

(declare-datatypes ((List!18421 0))(
  ( (Nil!18351) (Cons!18351 (h!23752 Context!1820) (t!151912 List!18421)) )
))
(declare-fun lt!625305 () List!18421)

(declare-fun prefixMatchZipperRegexEquiv!195 ((InoxSet Context!1820) List!18421 Regex!4561 List!18416) Unit!31031)

(assert (=> d!502379 (= lt!625299 (prefixMatchZipperRegexEquiv!195 lt!625302 lt!625305 lt!624984 lt!625304))))

(assert (=> d!502379 (= lt!625304 (list!7325 (++!4990 lt!624993 lt!624978)))))

(declare-fun toList!956 ((InoxSet Context!1820)) List!18421)

(assert (=> d!502379 (= lt!625305 (toList!956 (focus!216 lt!624984)))))

(assert (=> d!502379 (= lt!625302 (focus!216 lt!624984))))

(declare-fun lt!625300 () Unit!31031)

(declare-fun lt!625297 () Unit!31031)

(assert (=> d!502379 (= lt!625300 lt!625297)))

(declare-fun lt!625298 () (InoxSet Context!1820))

(declare-fun lt!625303 () Int)

(declare-fun dropList!704 (BalanceConc!12172 Int) List!18416)

(assert (=> d!502379 (= (prefixMatchZipper!195 lt!625298 (dropList!704 (++!4990 lt!624993 lt!624978) lt!625303)) (prefixMatchZipperSequence!660 lt!625298 (++!4990 lt!624993 lt!624978) lt!625303))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!195 ((InoxSet Context!1820) BalanceConc!12172 Int) Unit!31031)

(assert (=> d!502379 (= lt!625297 (lemmaprefixMatchZipperSequenceEquivalent!195 lt!625298 (++!4990 lt!624993 lt!624978) lt!625303))))

(assert (=> d!502379 (= lt!625303 0)))

(assert (=> d!502379 (= lt!625298 (focus!216 lt!624984))))

(declare-fun validRegex!1823 (Regex!4561) Bool)

(assert (=> d!502379 (validRegex!1823 lt!624984)))

(assert (=> d!502379 (= (prefixMatchZipperSequence!659 lt!624984 (++!4990 lt!624993 lt!624978)) lt!625296)))

(declare-fun bs!397400 () Bool)

(assert (= bs!397400 d!502379))

(assert (=> bs!397400 m!2024241))

(declare-fun m!2024819 () Bool)

(assert (=> bs!397400 m!2024819))

(declare-fun m!2024821 () Bool)

(assert (=> bs!397400 m!2024821))

(declare-fun m!2024823 () Bool)

(assert (=> bs!397400 m!2024823))

(assert (=> bs!397400 m!2024819))

(declare-fun m!2024825 () Bool)

(assert (=> bs!397400 m!2024825))

(assert (=> bs!397400 m!2024241))

(declare-fun m!2024827 () Bool)

(assert (=> bs!397400 m!2024827))

(assert (=> bs!397400 m!2024241))

(declare-fun m!2024829 () Bool)

(assert (=> bs!397400 m!2024829))

(declare-fun m!2024831 () Bool)

(assert (=> bs!397400 m!2024831))

(assert (=> bs!397400 m!2024821))

(declare-fun m!2024833 () Bool)

(assert (=> bs!397400 m!2024833))

(declare-fun m!2024835 () Bool)

(assert (=> bs!397400 m!2024835))

(declare-fun m!2024837 () Bool)

(assert (=> bs!397400 m!2024837))

(declare-fun m!2024839 () Bool)

(assert (=> bs!397400 m!2024839))

(assert (=> bs!397400 m!2024821))

(assert (=> bs!397400 m!2024241))

(declare-fun m!2024841 () Bool)

(assert (=> bs!397400 m!2024841))

(declare-fun m!2024843 () Bool)

(assert (=> bs!397400 m!2024843))

(assert (=> bs!397400 m!2024241))

(assert (=> bs!397400 m!2024835))

(assert (=> b!1662913 d!502379))

(declare-fun d!502381 () Bool)

(declare-fun lt!625308 () Unit!31031)

(declare-fun lemma!281 (List!18418 LexerInterface!2862 List!18418) Unit!31031)

(assert (=> d!502381 (= lt!625308 (lemma!281 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67884 () Int)

(declare-fun generalisedUnion!289 (List!18420) Regex!4561)

(declare-fun map!3777 (List!18418 Int) List!18420)

(assert (=> d!502381 (= (rulesRegex!617 thiss!17113 rules!1846) (generalisedUnion!289 (map!3777 rules!1846 lambda!67884)))))

(declare-fun bs!397401 () Bool)

(assert (= bs!397401 d!502381))

(declare-fun m!2024845 () Bool)

(assert (=> bs!397401 m!2024845))

(declare-fun m!2024847 () Bool)

(assert (=> bs!397401 m!2024847))

(assert (=> bs!397401 m!2024847))

(declare-fun m!2024849 () Bool)

(assert (=> bs!397401 m!2024849))

(assert (=> b!1662913 d!502381))

(declare-fun d!502383 () Bool)

(declare-fun lt!625311 () BalanceConc!12172)

(assert (=> d!502383 (= (list!7325 lt!625311) (originalCharacters!4047 (h!23748 (t!151866 tokens!457))))))

(declare-fun dynLambda!8245 (Int TokenValue!3323) BalanceConc!12172)

(assert (=> d!502383 (= lt!625311 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (value!101813 (h!23748 (t!151866 tokens!457)))))))

(assert (=> d!502383 (= (charsOf!1882 (h!23748 (t!151866 tokens!457))) lt!625311)))

(declare-fun b_lambda!52189 () Bool)

(assert (=> (not b_lambda!52189) (not d!502383)))

(declare-fun t!151873 () Bool)

(declare-fun tb!95271 () Bool)

(assert (=> (and b!1662935 (= (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457)))))) t!151873) tb!95271))

(declare-fun b!1663133 () Bool)

(declare-fun e!1066202 () Bool)

(declare-fun tp!479515 () Bool)

(declare-fun inv!23692 (Conc!6114) Bool)

(assert (=> b!1663133 (= e!1066202 (and (inv!23692 (c!270665 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (value!101813 (h!23748 (t!151866 tokens!457)))))) tp!479515))))

(declare-fun result!115118 () Bool)

(declare-fun inv!23693 (BalanceConc!12172) Bool)

(assert (=> tb!95271 (= result!115118 (and (inv!23693 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (value!101813 (h!23748 (t!151866 tokens!457))))) e!1066202))))

(assert (= tb!95271 b!1663133))

(declare-fun m!2024851 () Bool)

(assert (=> b!1663133 m!2024851))

(declare-fun m!2024853 () Bool)

(assert (=> tb!95271 m!2024853))

(assert (=> d!502383 t!151873))

(declare-fun b_and!118069 () Bool)

(assert (= b_and!118063 (and (=> t!151873 result!115118) b_and!118069)))

(declare-fun t!151875 () Bool)

(declare-fun tb!95273 () Bool)

(assert (=> (and b!1662923 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457)))))) t!151875) tb!95273))

(declare-fun result!115122 () Bool)

(assert (= result!115122 result!115118))

(assert (=> d!502383 t!151875))

(declare-fun b_and!118071 () Bool)

(assert (= b_and!118067 (and (=> t!151875 result!115122) b_and!118071)))

(declare-fun m!2024855 () Bool)

(assert (=> d!502383 m!2024855))

(declare-fun m!2024857 () Bool)

(assert (=> d!502383 m!2024857))

(assert (=> b!1662913 d!502383))

(declare-fun d!502385 () Bool)

(declare-fun lt!625314 () C!9296)

(declare-fun apply!4912 (List!18416 Int) C!9296)

(assert (=> d!502385 (= lt!625314 (apply!4912 (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457)))) 0))))

(declare-fun apply!4913 (Conc!6114 Int) C!9296)

(assert (=> d!502385 (= lt!625314 (apply!4913 (c!270665 (charsOf!1882 (h!23748 (t!151866 tokens!457)))) 0))))

(declare-fun e!1066205 () Bool)

(assert (=> d!502385 e!1066205))

(declare-fun res!746343 () Bool)

(assert (=> d!502385 (=> (not res!746343) (not e!1066205))))

(assert (=> d!502385 (= res!746343 (<= 0 0))))

(assert (=> d!502385 (= (apply!4908 (charsOf!1882 (h!23748 (t!151866 tokens!457))) 0) lt!625314)))

(declare-fun b!1663136 () Bool)

(assert (=> b!1663136 (= e!1066205 (< 0 (size!14592 (charsOf!1882 (h!23748 (t!151866 tokens!457))))))))

(assert (= (and d!502385 res!746343) b!1663136))

(assert (=> d!502385 m!2024249))

(declare-fun m!2024859 () Bool)

(assert (=> d!502385 m!2024859))

(assert (=> d!502385 m!2024859))

(declare-fun m!2024861 () Bool)

(assert (=> d!502385 m!2024861))

(declare-fun m!2024863 () Bool)

(assert (=> d!502385 m!2024863))

(assert (=> b!1663136 m!2024249))

(assert (=> b!1663136 m!2024517))

(assert (=> b!1662913 d!502385))

(declare-fun b!1663146 () Bool)

(declare-fun res!746352 () Bool)

(declare-fun e!1066208 () Bool)

(assert (=> b!1663146 (=> (not res!746352) (not e!1066208))))

(declare-fun height!960 (Conc!6114) Int)

(declare-fun ++!4991 (Conc!6114 Conc!6114) Conc!6114)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1663146 (= res!746352 (<= (height!960 (++!4991 (c!270665 lt!624993) (c!270665 lt!624978))) (+ (max!0 (height!960 (c!270665 lt!624993)) (height!960 (c!270665 lt!624978))) 1)))))

(declare-fun d!502387 () Bool)

(assert (=> d!502387 e!1066208))

(declare-fun res!746354 () Bool)

(assert (=> d!502387 (=> (not res!746354) (not e!1066208))))

(declare-fun appendAssocInst!478 (Conc!6114 Conc!6114) Bool)

(assert (=> d!502387 (= res!746354 (appendAssocInst!478 (c!270665 lt!624993) (c!270665 lt!624978)))))

(declare-fun lt!625317 () BalanceConc!12172)

(assert (=> d!502387 (= lt!625317 (BalanceConc!12173 (++!4991 (c!270665 lt!624993) (c!270665 lt!624978))))))

(assert (=> d!502387 (= (++!4990 lt!624993 lt!624978) lt!625317)))

(declare-fun b!1663148 () Bool)

(assert (=> b!1663148 (= e!1066208 (= (list!7325 lt!625317) (++!4989 (list!7325 lt!624993) (list!7325 lt!624978))))))

(declare-fun b!1663147 () Bool)

(declare-fun res!746355 () Bool)

(assert (=> b!1663147 (=> (not res!746355) (not e!1066208))))

(assert (=> b!1663147 (= res!746355 (>= (height!960 (++!4991 (c!270665 lt!624993) (c!270665 lt!624978))) (max!0 (height!960 (c!270665 lt!624993)) (height!960 (c!270665 lt!624978)))))))

(declare-fun b!1663145 () Bool)

(declare-fun res!746353 () Bool)

(assert (=> b!1663145 (=> (not res!746353) (not e!1066208))))

(assert (=> b!1663145 (= res!746353 (isBalanced!1893 (++!4991 (c!270665 lt!624993) (c!270665 lt!624978))))))

(assert (= (and d!502387 res!746354) b!1663145))

(assert (= (and b!1663145 res!746353) b!1663146))

(assert (= (and b!1663146 res!746352) b!1663147))

(assert (= (and b!1663147 res!746355) b!1663148))

(declare-fun m!2024865 () Bool)

(assert (=> b!1663147 m!2024865))

(declare-fun m!2024867 () Bool)

(assert (=> b!1663147 m!2024867))

(declare-fun m!2024869 () Bool)

(assert (=> b!1663147 m!2024869))

(assert (=> b!1663147 m!2024865))

(declare-fun m!2024871 () Bool)

(assert (=> b!1663147 m!2024871))

(declare-fun m!2024873 () Bool)

(assert (=> b!1663147 m!2024873))

(assert (=> b!1663147 m!2024867))

(assert (=> b!1663147 m!2024871))

(declare-fun m!2024875 () Bool)

(assert (=> b!1663148 m!2024875))

(assert (=> b!1663148 m!2024373))

(assert (=> b!1663148 m!2024289))

(assert (=> b!1663148 m!2024373))

(assert (=> b!1663148 m!2024289))

(declare-fun m!2024877 () Bool)

(assert (=> b!1663148 m!2024877))

(declare-fun m!2024879 () Bool)

(assert (=> d!502387 m!2024879))

(assert (=> d!502387 m!2024867))

(assert (=> b!1663145 m!2024867))

(assert (=> b!1663145 m!2024867))

(declare-fun m!2024881 () Bool)

(assert (=> b!1663145 m!2024881))

(assert (=> b!1663146 m!2024865))

(assert (=> b!1663146 m!2024867))

(assert (=> b!1663146 m!2024869))

(assert (=> b!1663146 m!2024865))

(assert (=> b!1663146 m!2024871))

(assert (=> b!1663146 m!2024873))

(assert (=> b!1663146 m!2024867))

(assert (=> b!1663146 m!2024871))

(assert (=> b!1662913 d!502387))

(declare-fun b!1663149 () Bool)

(declare-fun e!1066209 () Bool)

(declare-fun lt!625318 () tuple2!18064)

(assert (=> b!1663149 (= e!1066209 (not (isEmpty!11399 (_1!10434 lt!625318))))))

(declare-fun b!1663150 () Bool)

(declare-fun e!1066211 () Bool)

(assert (=> b!1663150 (= e!1066211 (= (list!7325 (_2!10434 lt!625318)) (_2!10437 (lexList!887 thiss!17113 rules!1846 (list!7325 lt!624969)))))))

(declare-fun d!502389 () Bool)

(assert (=> d!502389 e!1066211))

(declare-fun res!746358 () Bool)

(assert (=> d!502389 (=> (not res!746358) (not e!1066211))))

(declare-fun e!1066210 () Bool)

(assert (=> d!502389 (= res!746358 e!1066210)))

(declare-fun c!270701 () Bool)

(assert (=> d!502389 (= c!270701 (> (size!14593 (_1!10434 lt!625318)) 0))))

(assert (=> d!502389 (= lt!625318 (lexTailRecV2!610 thiss!17113 rules!1846 lt!624969 (BalanceConc!12173 Empty!6114) lt!624969 (BalanceConc!12175 Empty!6115)))))

(assert (=> d!502389 (= (lex!1346 thiss!17113 rules!1846 lt!624969) lt!625318)))

(declare-fun b!1663151 () Bool)

(declare-fun res!746357 () Bool)

(assert (=> b!1663151 (=> (not res!746357) (not e!1066211))))

(assert (=> b!1663151 (= res!746357 (= (list!7326 (_1!10434 lt!625318)) (_1!10437 (lexList!887 thiss!17113 rules!1846 (list!7325 lt!624969)))))))

(declare-fun b!1663152 () Bool)

(assert (=> b!1663152 (= e!1066210 (= (_2!10434 lt!625318) lt!624969))))

(declare-fun b!1663153 () Bool)

(assert (=> b!1663153 (= e!1066210 e!1066209)))

(declare-fun res!746356 () Bool)

(assert (=> b!1663153 (= res!746356 (< (size!14592 (_2!10434 lt!625318)) (size!14592 lt!624969)))))

(assert (=> b!1663153 (=> (not res!746356) (not e!1066209))))

(assert (= (and d!502389 c!270701) b!1663153))

(assert (= (and d!502389 (not c!270701)) b!1663152))

(assert (= (and b!1663153 res!746356) b!1663149))

(assert (= (and d!502389 res!746358) b!1663151))

(assert (= (and b!1663151 res!746357) b!1663150))

(declare-fun m!2024883 () Bool)

(assert (=> d!502389 m!2024883))

(declare-fun m!2024885 () Bool)

(assert (=> d!502389 m!2024885))

(declare-fun m!2024887 () Bool)

(assert (=> b!1663149 m!2024887))

(declare-fun m!2024889 () Bool)

(assert (=> b!1663150 m!2024889))

(assert (=> b!1663150 m!2024375))

(assert (=> b!1663150 m!2024375))

(declare-fun m!2024891 () Bool)

(assert (=> b!1663150 m!2024891))

(declare-fun m!2024893 () Bool)

(assert (=> b!1663153 m!2024893))

(declare-fun m!2024895 () Bool)

(assert (=> b!1663153 m!2024895))

(declare-fun m!2024897 () Bool)

(assert (=> b!1663151 m!2024897))

(assert (=> b!1663151 m!2024375))

(assert (=> b!1663151 m!2024375))

(assert (=> b!1663151 m!2024891))

(assert (=> b!1662912 d!502389))

(declare-fun d!502391 () Bool)

(assert (=> d!502391 (= (seqFromList!2205 tokens!457) (fromListB!997 tokens!457))))

(declare-fun bs!397402 () Bool)

(assert (= bs!397402 d!502391))

(declare-fun m!2024899 () Bool)

(assert (=> bs!397402 m!2024899))

(assert (=> b!1662912 d!502391))

(declare-fun d!502393 () Bool)

(assert (=> d!502393 (= (seqFromList!2205 (t!151866 tokens!457)) (fromListB!997 (t!151866 tokens!457)))))

(declare-fun bs!397403 () Bool)

(assert (= bs!397403 d!502393))

(declare-fun m!2024901 () Bool)

(assert (=> bs!397403 m!2024901))

(assert (=> b!1662912 d!502393))

(declare-fun d!502395 () Bool)

(declare-fun list!7330 (Conc!6114) List!18416)

(assert (=> d!502395 (= (list!7325 lt!624968) (list!7330 (c!270665 lt!624968)))))

(declare-fun bs!397404 () Bool)

(assert (= bs!397404 d!502395))

(declare-fun m!2024903 () Bool)

(assert (=> bs!397404 m!2024903))

(assert (=> b!1662912 d!502395))

(declare-fun d!502397 () Bool)

(declare-fun lt!625321 () BalanceConc!12172)

(assert (=> d!502397 (= (list!7325 lt!625321) (printList!975 thiss!17113 (list!7326 (seqFromList!2205 tokens!457))))))

(assert (=> d!502397 (= lt!625321 (printTailRec!913 thiss!17113 (seqFromList!2205 tokens!457) 0 (BalanceConc!12173 Empty!6114)))))

(assert (=> d!502397 (= (print!1393 thiss!17113 (seqFromList!2205 tokens!457)) lt!625321)))

(declare-fun bs!397405 () Bool)

(assert (= bs!397405 d!502397))

(declare-fun m!2024905 () Bool)

(assert (=> bs!397405 m!2024905))

(assert (=> bs!397405 m!2024365))

(declare-fun m!2024907 () Bool)

(assert (=> bs!397405 m!2024907))

(assert (=> bs!397405 m!2024907))

(declare-fun m!2024909 () Bool)

(assert (=> bs!397405 m!2024909))

(assert (=> bs!397405 m!2024365))

(declare-fun m!2024911 () Bool)

(assert (=> bs!397405 m!2024911))

(assert (=> b!1662912 d!502397))

(declare-fun d!502399 () Bool)

(declare-fun lt!625322 () BalanceConc!12172)

(assert (=> d!502399 (= (list!7325 lt!625322) (printList!975 thiss!17113 (list!7326 lt!624990)))))

(assert (=> d!502399 (= lt!625322 (printTailRec!913 thiss!17113 lt!624990 0 (BalanceConc!12173 Empty!6114)))))

(assert (=> d!502399 (= (print!1393 thiss!17113 lt!624990) lt!625322)))

(declare-fun bs!397406 () Bool)

(assert (= bs!397406 d!502399))

(declare-fun m!2024913 () Bool)

(assert (=> bs!397406 m!2024913))

(assert (=> bs!397406 m!2024257))

(assert (=> bs!397406 m!2024257))

(declare-fun m!2024915 () Bool)

(assert (=> bs!397406 m!2024915))

(declare-fun m!2024917 () Bool)

(assert (=> bs!397406 m!2024917))

(assert (=> b!1662912 d!502399))

(declare-fun d!502401 () Bool)

(assert (=> d!502401 (= (list!7325 lt!624969) (list!7330 (c!270665 lt!624969)))))

(declare-fun bs!397407 () Bool)

(assert (= bs!397407 d!502401))

(declare-fun m!2024919 () Bool)

(assert (=> bs!397407 m!2024919))

(assert (=> b!1662912 d!502401))

(declare-fun b!1663163 () Bool)

(declare-fun e!1066217 () List!18416)

(assert (=> b!1663163 (= e!1066217 (Cons!18346 (h!23747 lt!624988) (++!4989 (t!151865 lt!624988) lt!624973)))))

(declare-fun b!1663162 () Bool)

(assert (=> b!1663162 (= e!1066217 lt!624973)))

(declare-fun lt!625325 () List!18416)

(declare-fun b!1663165 () Bool)

(declare-fun e!1066216 () Bool)

(assert (=> b!1663165 (= e!1066216 (or (not (= lt!624973 Nil!18346)) (= lt!625325 lt!624988)))))

(declare-fun b!1663164 () Bool)

(declare-fun res!746364 () Bool)

(assert (=> b!1663164 (=> (not res!746364) (not e!1066216))))

(declare-fun size!14594 (List!18416) Int)

(assert (=> b!1663164 (= res!746364 (= (size!14594 lt!625325) (+ (size!14594 lt!624988) (size!14594 lt!624973))))))

(declare-fun d!502403 () Bool)

(assert (=> d!502403 e!1066216))

(declare-fun res!746363 () Bool)

(assert (=> d!502403 (=> (not res!746363) (not e!1066216))))

(declare-fun content!2556 (List!18416) (InoxSet C!9296))

(assert (=> d!502403 (= res!746363 (= (content!2556 lt!625325) ((_ map or) (content!2556 lt!624988) (content!2556 lt!624973))))))

(assert (=> d!502403 (= lt!625325 e!1066217)))

(declare-fun c!270704 () Bool)

(assert (=> d!502403 (= c!270704 ((_ is Nil!18346) lt!624988))))

(assert (=> d!502403 (= (++!4989 lt!624988 lt!624973) lt!625325)))

(assert (= (and d!502403 c!270704) b!1663162))

(assert (= (and d!502403 (not c!270704)) b!1663163))

(assert (= (and d!502403 res!746363) b!1663164))

(assert (= (and b!1663164 res!746364) b!1663165))

(declare-fun m!2024921 () Bool)

(assert (=> b!1663163 m!2024921))

(declare-fun m!2024923 () Bool)

(assert (=> b!1663164 m!2024923))

(declare-fun m!2024925 () Bool)

(assert (=> b!1663164 m!2024925))

(declare-fun m!2024927 () Bool)

(assert (=> b!1663164 m!2024927))

(declare-fun m!2024929 () Bool)

(assert (=> d!502403 m!2024929))

(declare-fun m!2024931 () Bool)

(assert (=> d!502403 m!2024931))

(declare-fun m!2024933 () Bool)

(assert (=> d!502403 m!2024933))

(assert (=> b!1662912 d!502403))

(declare-fun d!502405 () Bool)

(declare-fun lt!625326 () BalanceConc!12172)

(assert (=> d!502405 (= (list!7325 lt!625326) (originalCharacters!4047 (h!23748 tokens!457)))))

(assert (=> d!502405 (= lt!625326 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (value!101813 (h!23748 tokens!457))))))

(assert (=> d!502405 (= (charsOf!1882 (h!23748 tokens!457)) lt!625326)))

(declare-fun b_lambda!52191 () Bool)

(assert (=> (not b_lambda!52191) (not d!502405)))

(declare-fun tb!95275 () Bool)

(declare-fun t!151877 () Bool)

(assert (=> (and b!1662935 (= (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457))))) t!151877) tb!95275))

(declare-fun b!1663166 () Bool)

(declare-fun e!1066218 () Bool)

(declare-fun tp!479516 () Bool)

(assert (=> b!1663166 (= e!1066218 (and (inv!23692 (c!270665 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (value!101813 (h!23748 tokens!457))))) tp!479516))))

(declare-fun result!115124 () Bool)

(assert (=> tb!95275 (= result!115124 (and (inv!23693 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (value!101813 (h!23748 tokens!457)))) e!1066218))))

(assert (= tb!95275 b!1663166))

(declare-fun m!2024935 () Bool)

(assert (=> b!1663166 m!2024935))

(declare-fun m!2024937 () Bool)

(assert (=> tb!95275 m!2024937))

(assert (=> d!502405 t!151877))

(declare-fun b_and!118073 () Bool)

(assert (= b_and!118069 (and (=> t!151877 result!115124) b_and!118073)))

(declare-fun t!151879 () Bool)

(declare-fun tb!95277 () Bool)

(assert (=> (and b!1662923 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457))))) t!151879) tb!95277))

(declare-fun result!115126 () Bool)

(assert (= result!115126 result!115124))

(assert (=> d!502405 t!151879))

(declare-fun b_and!118075 () Bool)

(assert (= b_and!118071 (and (=> t!151879 result!115126) b_and!118075)))

(declare-fun m!2024939 () Bool)

(assert (=> d!502405 m!2024939))

(declare-fun m!2024941 () Bool)

(assert (=> d!502405 m!2024941))

(assert (=> b!1662912 d!502405))

(declare-fun d!502407 () Bool)

(assert (=> d!502407 (= (list!7325 lt!624993) (list!7330 (c!270665 lt!624993)))))

(declare-fun bs!397408 () Bool)

(assert (= bs!397408 d!502407))

(declare-fun m!2024943 () Bool)

(assert (=> bs!397408 m!2024943))

(assert (=> b!1662912 d!502407))

(declare-fun d!502409 () Bool)

(assert (=> d!502409 (= (get!5369 lt!624967) (v!24741 lt!624967))))

(assert (=> b!1662914 d!502409))

(declare-fun b!1663288 () Bool)

(assert (=> b!1663288 false))

(declare-fun lt!625757 () Unit!31031)

(declare-fun lt!625803 () Unit!31031)

(assert (=> b!1663288 (= lt!625757 lt!625803)))

(declare-fun lt!625809 () Token!6032)

(declare-fun lt!625789 () List!18416)

(assert (=> b!1663288 (not (matchR!2054 (regex!3233 (rule!5119 lt!625809)) lt!625789))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!110 (LexerInterface!2862 List!18418 Rule!6266 List!18416 List!18416 Rule!6266) Unit!31031)

(assert (=> b!1663288 (= lt!625803 (lemmaMaxPrefNoSmallerRuleMatches!110 thiss!17113 rules!1846 (rule!5119 (h!23748 tokens!457)) lt!625789 (list!7325 (charsOf!1882 (h!23748 tokens!457))) (rule!5119 lt!625809)))))

(assert (=> b!1663288 (= lt!625789 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(declare-fun e!1066283 () Unit!31031)

(declare-fun Unit!31068 () Unit!31031)

(assert (=> b!1663288 (= e!1066283 Unit!31068)))

(declare-fun b!1663289 () Bool)

(declare-fun e!1066285 () Unit!31031)

(declare-fun Unit!31069 () Unit!31031)

(assert (=> b!1663289 (= e!1066285 Unit!31069)))

(declare-fun b!1663290 () Bool)

(declare-fun Unit!31070 () Unit!31031)

(assert (=> b!1663290 (= e!1066283 Unit!31070)))

(declare-fun b!1663291 () Bool)

(declare-fun e!1066284 () Unit!31031)

(declare-fun Unit!31071 () Unit!31031)

(assert (=> b!1663291 (= e!1066284 Unit!31071)))

(declare-fun b!1663292 () Bool)

(declare-fun Unit!31072 () Unit!31031)

(assert (=> b!1663292 (= e!1066285 Unit!31072)))

(declare-fun lt!625792 () Unit!31031)

(declare-fun lt!625773 () List!18416)

(declare-fun lt!625795 () List!18416)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!70 (LexerInterface!2862 List!18418 List!18416 Token!6032 Rule!6266 List!18416) Unit!31031)

(assert (=> b!1663292 (= lt!625792 (lemmaMaxPrefixThenMatchesRulesRegex!70 thiss!17113 rules!1846 lt!625773 lt!625809 (rule!5119 lt!625809) lt!625795))))

(assert (=> b!1663292 (matchR!2054 (rulesRegex!617 thiss!17113 rules!1846) (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625812 () Unit!31031)

(assert (=> b!1663292 (= lt!625812 lt!625792)))

(declare-fun lt!625805 () List!18416)

(assert (=> b!1663292 (= lt!625805 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(declare-fun lt!625818 () List!18416)

(assert (=> b!1663292 (= lt!625818 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(declare-fun lt!625793 () List!18416)

(declare-fun getSuffix!740 (List!18416 List!18416) List!18416)

(assert (=> b!1663292 (= lt!625793 (getSuffix!740 lt!625773 (list!7325 (charsOf!1882 (h!23748 tokens!457)))))))

(declare-fun lt!625819 () Unit!31031)

(declare-fun lemmaSamePrefixThenSameSuffix!692 (List!18416 List!18416 List!18416 List!18416 List!18416) Unit!31031)

(assert (=> b!1663292 (= lt!625819 (lemmaSamePrefixThenSameSuffix!692 lt!625805 lt!624973 lt!625818 lt!625793 lt!625773))))

(assert (=> b!1663292 (= lt!624973 lt!625793)))

(declare-fun lt!625784 () Unit!31031)

(assert (=> b!1663292 (= lt!625784 lt!625819)))

(declare-fun lt!625790 () List!18416)

(assert (=> b!1663292 (= lt!625790 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(declare-fun lt!625811 () Unit!31031)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!183 (List!18416 List!18416) Unit!31031)

(assert (=> b!1663292 (= lt!625811 (lemmaAddHeadSuffixToPrefixStillPrefix!183 lt!625790 lt!625773))))

(assert (=> b!1663292 (isPrefix!1491 (++!4989 lt!625790 (Cons!18346 (head!3710 (getSuffix!740 lt!625773 lt!625790)) Nil!18346)) lt!625773)))

(declare-fun lt!625807 () Unit!31031)

(assert (=> b!1663292 (= lt!625807 lt!625811)))

(declare-fun lt!625780 () List!18416)

(assert (=> b!1663292 (= lt!625780 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625794 () List!18416)

(assert (=> b!1663292 (= lt!625794 (++!4989 (list!7325 (charsOf!1882 (h!23748 tokens!457))) (Cons!18346 (head!3710 lt!624973) Nil!18346)))))

(declare-fun lt!625779 () Unit!31031)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!69 (List!18416 List!18416 List!18416) Unit!31031)

(assert (=> b!1663292 (= lt!625779 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!69 lt!625780 lt!625794 lt!625773))))

(assert (=> b!1663292 (isPrefix!1491 lt!625794 lt!625780)))

(declare-fun lt!625777 () Unit!31031)

(assert (=> b!1663292 (= lt!625777 lt!625779)))

(declare-fun lt!625763 () Regex!4561)

(assert (=> b!1663292 (= lt!625763 (rulesRegex!617 thiss!17113 rules!1846))))

(declare-fun lt!625775 () List!18416)

(assert (=> b!1663292 (= lt!625775 (++!4989 (list!7325 (charsOf!1882 (h!23748 tokens!457))) (Cons!18346 (head!3710 lt!624973) Nil!18346)))))

(declare-fun lt!625762 () List!18416)

(assert (=> b!1663292 (= lt!625762 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625770 () Unit!31031)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!70 (Regex!4561 List!18416 List!18416) Unit!31031)

(assert (=> b!1663292 (= lt!625770 (lemmaNotPrefixMatchThenCannotMatchLonger!70 lt!625763 lt!625775 lt!625762))))

(assert (=> b!1663292 (not (matchR!2054 lt!625763 lt!625762))))

(declare-fun lt!625764 () Unit!31031)

(assert (=> b!1663292 (= lt!625764 lt!625770)))

(assert (=> b!1663292 false))

(declare-fun b!1663293 () Bool)

(declare-fun e!1066282 () Unit!31031)

(declare-fun Unit!31073 () Unit!31031)

(assert (=> b!1663293 (= e!1066282 Unit!31073)))

(declare-fun b!1663294 () Bool)

(declare-fun e!1066287 () Unit!31031)

(declare-fun Unit!31074 () Unit!31031)

(assert (=> b!1663294 (= e!1066287 Unit!31074)))

(declare-fun b!1663295 () Bool)

(assert (=> b!1663295 false))

(declare-fun lt!625820 () Unit!31031)

(declare-fun lt!625808 () Unit!31031)

(assert (=> b!1663295 (= lt!625820 lt!625808)))

(declare-fun lt!625802 () List!18416)

(assert (=> b!1663295 (not (matchR!2054 (regex!3233 (rule!5119 (h!23748 tokens!457))) lt!625802))))

(assert (=> b!1663295 (= lt!625808 (lemmaMaxPrefNoSmallerRuleMatches!110 thiss!17113 rules!1846 (rule!5119 lt!625809) lt!625802 lt!625773 (rule!5119 (h!23748 tokens!457))))))

(assert (=> b!1663295 (= lt!625802 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun Unit!31075 () Unit!31031)

(assert (=> b!1663295 (= e!1066284 Unit!31075)))

(declare-fun b!1663296 () Bool)

(declare-fun Unit!31076 () Unit!31031)

(assert (=> b!1663296 (= e!1066287 Unit!31076)))

(declare-fun lt!625761 () List!18416)

(assert (=> b!1663296 (= lt!625761 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625766 () List!18416)

(assert (=> b!1663296 (= lt!625766 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(declare-fun lt!625765 () Unit!31031)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!160 (LexerInterface!2862 List!18418 Rule!6266 List!18416 List!18416 List!18416 Rule!6266) Unit!31031)

(assert (=> b!1663296 (= lt!625765 (lemmaMaxPrefixOutputsMaxPrefix!160 thiss!17113 rules!1846 (rule!5119 lt!625809) lt!625761 lt!625773 lt!625766 (rule!5119 (h!23748 tokens!457))))))

(assert (=> b!1663296 (not (matchR!2054 (regex!3233 (rule!5119 (h!23748 tokens!457))) lt!625766))))

(declare-fun lt!625771 () Unit!31031)

(assert (=> b!1663296 (= lt!625771 lt!625765)))

(assert (=> b!1663296 false))

(declare-fun b!1663297 () Bool)

(assert (=> b!1663297 false))

(declare-fun lt!625813 () Unit!31031)

(declare-fun lt!625798 () Unit!31031)

(assert (=> b!1663297 (= lt!625813 lt!625798)))

(assert (=> b!1663297 (= (rule!5119 lt!625809) (rule!5119 (h!23748 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!86 (List!18418 Rule!6266 Rule!6266) Unit!31031)

(assert (=> b!1663297 (= lt!625798 (lemmaSameIndexThenSameElement!86 rules!1846 (rule!5119 lt!625809) (rule!5119 (h!23748 tokens!457))))))

(declare-fun e!1066281 () Unit!31031)

(declare-fun Unit!31077 () Unit!31031)

(assert (=> b!1663297 (= e!1066281 Unit!31077)))

(declare-fun b!1663298 () Bool)

(declare-fun res!746391 () Bool)

(declare-fun e!1066286 () Bool)

(assert (=> b!1663298 (=> (not res!746391) (not e!1066286))))

(assert (=> b!1663298 (= res!746391 (matchR!2054 (regex!3233 (get!5371 (getRuleFromTag!331 thiss!17113 rules!1846 (tag!3517 (rule!5119 lt!625809))))) (list!7325 (charsOf!1882 lt!625809))))))

(declare-fun b!1663299 () Bool)

(declare-fun Unit!31078 () Unit!31031)

(assert (=> b!1663299 (= e!1066281 Unit!31078)))

(declare-fun d!502411 () Bool)

(assert (=> d!502411 (= (maxPrefix!1424 thiss!17113 rules!1846 (++!4989 (list!7325 (charsOf!1882 (h!23748 tokens!457))) lt!624973)) (Some!3516 (tuple2!18063 (h!23748 tokens!457) lt!624973)))))

(declare-fun lt!625817 () Unit!31031)

(declare-fun Unit!31079 () Unit!31031)

(assert (=> d!502411 (= lt!625817 Unit!31079)))

(declare-fun lt!625753 () Unit!31031)

(assert (=> d!502411 (= lt!625753 e!1066282)))

(declare-fun c!270753 () Bool)

(assert (=> d!502411 (= c!270753 (not (= (rule!5119 lt!625809) (rule!5119 (h!23748 tokens!457)))))))

(declare-fun lt!625785 () Unit!31031)

(declare-fun lt!625815 () Unit!31031)

(assert (=> d!502411 (= lt!625785 lt!625815)))

(assert (=> d!502411 (= lt!624973 lt!625795)))

(assert (=> d!502411 (= lt!625815 (lemmaSamePrefixThenSameSuffix!692 (list!7325 (charsOf!1882 (h!23748 tokens!457))) lt!624973 (list!7325 (charsOf!1882 (h!23748 tokens!457))) lt!625795 lt!625773))))

(declare-fun lt!625759 () Unit!31031)

(declare-fun lt!625769 () Unit!31031)

(assert (=> d!502411 (= lt!625759 lt!625769)))

(declare-fun lt!625772 () List!18416)

(declare-fun lt!625814 () List!18416)

(assert (=> d!502411 (= lt!625772 lt!625814)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!193 (List!18416 List!18416 List!18416) Unit!31031)

(assert (=> d!502411 (= lt!625769 (lemmaIsPrefixSameLengthThenSameList!193 lt!625772 lt!625814 lt!625773))))

(assert (=> d!502411 (= lt!625814 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(assert (=> d!502411 (= lt!625772 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625781 () Unit!31031)

(assert (=> d!502411 (= lt!625781 e!1066287)))

(declare-fun c!270755 () Bool)

(assert (=> d!502411 (= c!270755 (< (size!14592 (charsOf!1882 lt!625809)) (size!14592 (charsOf!1882 (h!23748 tokens!457)))))))

(declare-fun lt!625810 () Unit!31031)

(assert (=> d!502411 (= lt!625810 e!1066285)))

(declare-fun c!270754 () Bool)

(assert (=> d!502411 (= c!270754 (> (size!14592 (charsOf!1882 lt!625809)) (size!14592 (charsOf!1882 (h!23748 tokens!457)))))))

(declare-fun lt!625806 () Unit!31031)

(declare-fun lt!625801 () Unit!31031)

(assert (=> d!502411 (= lt!625806 lt!625801)))

(assert (=> d!502411 (matchR!2054 (rulesRegex!617 thiss!17113 rules!1846) (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(assert (=> d!502411 (= lt!625801 (lemmaMaxPrefixThenMatchesRulesRegex!70 thiss!17113 rules!1846 (list!7325 (charsOf!1882 (h!23748 tokens!457))) (h!23748 tokens!457) (rule!5119 (h!23748 tokens!457)) Nil!18346))))

(declare-fun lt!625751 () Unit!31031)

(declare-fun lt!625797 () Unit!31031)

(assert (=> d!502411 (= lt!625751 lt!625797)))

(declare-fun lt!625755 () List!18416)

(assert (=> d!502411 (= lt!625795 lt!625755)))

(declare-fun lt!625821 () List!18416)

(declare-fun lt!625774 () List!18416)

(assert (=> d!502411 (= lt!625797 (lemmaSamePrefixThenSameSuffix!692 lt!625774 lt!625795 lt!625821 lt!625755 lt!625773))))

(assert (=> d!502411 (= lt!625755 (getSuffix!740 lt!625773 (list!7325 (charsOf!1882 lt!625809))))))

(assert (=> d!502411 (= lt!625821 (list!7325 (charsOf!1882 lt!625809)))))

(assert (=> d!502411 (= lt!625774 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625778 () Unit!31031)

(declare-fun lt!625787 () Unit!31031)

(assert (=> d!502411 (= lt!625778 lt!625787)))

(declare-fun lt!625760 () List!18416)

(declare-fun apply!4914 (TokenValueInjection!6306 BalanceConc!12172) TokenValue!3323)

(assert (=> d!502411 (= (maxPrefixOneRule!827 thiss!17113 (rule!5119 lt!625809) lt!625773) (Some!3516 (tuple2!18063 (Token!6033 (apply!4914 (transformation!3233 (rule!5119 lt!625809)) (seqFromList!2206 lt!625760)) (rule!5119 lt!625809) (size!14594 lt!625760) lt!625760) lt!625795)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!259 (LexerInterface!2862 List!18418 List!18416 List!18416 List!18416 Rule!6266) Unit!31031)

(assert (=> d!502411 (= lt!625787 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!259 thiss!17113 rules!1846 lt!625760 lt!625773 lt!625795 (rule!5119 lt!625809)))))

(assert (=> d!502411 (= lt!625760 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625800 () Unit!31031)

(declare-fun lemmaCharactersSize!365 (Token!6032) Unit!31031)

(assert (=> d!502411 (= lt!625800 (lemmaCharactersSize!365 lt!625809))))

(declare-fun lt!625796 () Unit!31031)

(declare-fun lemmaEqSameImage!218 (TokenValueInjection!6306 BalanceConc!12172 BalanceConc!12172) Unit!31031)

(assert (=> d!502411 (= lt!625796 (lemmaEqSameImage!218 (transformation!3233 (rule!5119 lt!625809)) (charsOf!1882 lt!625809) (seqFromList!2206 (originalCharacters!4047 lt!625809))))))

(declare-fun lt!625768 () Unit!31031)

(declare-fun lemmaSemiInverse!433 (TokenValueInjection!6306 BalanceConc!12172) Unit!31031)

(assert (=> d!502411 (= lt!625768 (lemmaSemiInverse!433 (transformation!3233 (rule!5119 lt!625809)) (charsOf!1882 lt!625809)))))

(declare-fun lt!625754 () Unit!31031)

(declare-fun lemmaInv!498 (TokenValueInjection!6306) Unit!31031)

(assert (=> d!502411 (= lt!625754 (lemmaInv!498 (transformation!3233 (rule!5119 lt!625809))))))

(declare-fun lt!625804 () Unit!31031)

(declare-fun lt!625776 () Unit!31031)

(assert (=> d!502411 (= lt!625804 lt!625776)))

(declare-fun lt!625788 () List!18416)

(assert (=> d!502411 (isPrefix!1491 lt!625788 (++!4989 lt!625788 lt!625795))))

(assert (=> d!502411 (= lt!625776 (lemmaConcatTwoListThenFirstIsPrefix!1016 lt!625788 lt!625795))))

(assert (=> d!502411 (= lt!625788 (list!7325 (charsOf!1882 lt!625809)))))

(declare-fun lt!625783 () Unit!31031)

(declare-fun lt!625756 () Unit!31031)

(assert (=> d!502411 (= lt!625783 lt!625756)))

(assert (=> d!502411 e!1066286))

(declare-fun res!746390 () Bool)

(assert (=> d!502411 (=> (not res!746390) (not e!1066286))))

(assert (=> d!502411 (= res!746390 (isDefined!2874 (getRuleFromTag!331 thiss!17113 rules!1846 (tag!3517 (rule!5119 lt!625809)))))))

(assert (=> d!502411 (= lt!625756 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!331 thiss!17113 rules!1846 lt!625773 lt!625809))))

(declare-fun lt!625799 () Option!3517)

(assert (=> d!502411 (= lt!625795 (_2!10433 (get!5369 lt!625799)))))

(assert (=> d!502411 (= lt!625809 (_1!10433 (get!5369 lt!625799)))))

(declare-fun lt!625791 () Unit!31031)

(assert (=> d!502411 (= lt!625791 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!430 thiss!17113 rules!1846 (list!7325 (charsOf!1882 (h!23748 tokens!457))) lt!624973))))

(assert (=> d!502411 (= lt!625799 (maxPrefix!1424 thiss!17113 rules!1846 lt!625773))))

(declare-fun lt!625786 () Unit!31031)

(declare-fun lt!625752 () Unit!31031)

(assert (=> d!502411 (= lt!625786 lt!625752)))

(declare-fun lt!625782 () List!18416)

(assert (=> d!502411 (isPrefix!1491 lt!625782 (++!4989 lt!625782 lt!624973))))

(assert (=> d!502411 (= lt!625752 (lemmaConcatTwoListThenFirstIsPrefix!1016 lt!625782 lt!624973))))

(assert (=> d!502411 (= lt!625782 (list!7325 (charsOf!1882 (h!23748 tokens!457))))))

(assert (=> d!502411 (= lt!625773 (++!4989 (list!7325 (charsOf!1882 (h!23748 tokens!457))) lt!624973))))

(assert (=> d!502411 (not (isEmpty!11398 rules!1846))))

(assert (=> d!502411 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!188 thiss!17113 rules!1846 (h!23748 tokens!457) (rule!5119 (h!23748 tokens!457)) lt!624973) lt!625817)))

(declare-fun b!1663300 () Bool)

(declare-fun Unit!31080 () Unit!31031)

(assert (=> b!1663300 (= e!1066282 Unit!31080)))

(declare-fun c!270757 () Bool)

(declare-fun getIndex!138 (List!18418 Rule!6266) Int)

(assert (=> b!1663300 (= c!270757 (< (getIndex!138 rules!1846 (rule!5119 (h!23748 tokens!457))) (getIndex!138 rules!1846 (rule!5119 lt!625809))))))

(declare-fun lt!625758 () Unit!31031)

(assert (=> b!1663300 (= lt!625758 e!1066284)))

(declare-fun c!270758 () Bool)

(assert (=> b!1663300 (= c!270758 (< (getIndex!138 rules!1846 (rule!5119 lt!625809)) (getIndex!138 rules!1846 (rule!5119 (h!23748 tokens!457)))))))

(declare-fun lt!625767 () Unit!31031)

(assert (=> b!1663300 (= lt!625767 e!1066283)))

(declare-fun c!270756 () Bool)

(assert (=> b!1663300 (= c!270756 (= (getIndex!138 rules!1846 (rule!5119 lt!625809)) (getIndex!138 rules!1846 (rule!5119 (h!23748 tokens!457)))))))

(declare-fun lt!625816 () Unit!31031)

(assert (=> b!1663300 (= lt!625816 e!1066281)))

(assert (=> b!1663300 false))

(declare-fun b!1663301 () Bool)

(assert (=> b!1663301 (= e!1066286 (= (rule!5119 lt!625809) (get!5371 (getRuleFromTag!331 thiss!17113 rules!1846 (tag!3517 (rule!5119 lt!625809))))))))

(assert (= (and d!502411 res!746390) b!1663298))

(assert (= (and b!1663298 res!746391) b!1663301))

(assert (= (and d!502411 c!270754) b!1663292))

(assert (= (and d!502411 (not c!270754)) b!1663289))

(assert (= (and d!502411 c!270755) b!1663296))

(assert (= (and d!502411 (not c!270755)) b!1663294))

(assert (= (and d!502411 c!270753) b!1663300))

(assert (= (and d!502411 (not c!270753)) b!1663293))

(assert (= (and b!1663300 c!270757) b!1663295))

(assert (= (and b!1663300 (not c!270757)) b!1663291))

(assert (= (and b!1663300 c!270758) b!1663288))

(assert (= (and b!1663300 (not c!270758)) b!1663290))

(assert (= (and b!1663300 c!270756) b!1663297))

(assert (= (and b!1663300 (not c!270756)) b!1663299))

(declare-fun m!2025147 () Bool)

(assert (=> d!502411 m!2025147))

(declare-fun m!2025149 () Bool)

(assert (=> d!502411 m!2025149))

(declare-fun m!2025151 () Bool)

(assert (=> d!502411 m!2025151))

(declare-fun m!2025153 () Bool)

(assert (=> d!502411 m!2025153))

(declare-fun m!2025155 () Bool)

(assert (=> d!502411 m!2025155))

(declare-fun m!2025157 () Bool)

(assert (=> d!502411 m!2025157))

(assert (=> d!502411 m!2025149))

(declare-fun m!2025159 () Bool)

(assert (=> d!502411 m!2025159))

(assert (=> d!502411 m!2025153))

(declare-fun m!2025161 () Bool)

(assert (=> d!502411 m!2025161))

(declare-fun m!2025163 () Bool)

(assert (=> d!502411 m!2025163))

(assert (=> d!502411 m!2024239))

(assert (=> d!502411 m!2025151))

(declare-fun m!2025165 () Bool)

(assert (=> d!502411 m!2025165))

(assert (=> d!502411 m!2025149))

(declare-fun m!2025167 () Bool)

(assert (=> d!502411 m!2025167))

(assert (=> d!502411 m!2024361))

(declare-fun m!2025169 () Bool)

(assert (=> d!502411 m!2025169))

(assert (=> d!502411 m!2025153))

(assert (=> d!502411 m!2025153))

(declare-fun m!2025171 () Bool)

(assert (=> d!502411 m!2025171))

(assert (=> d!502411 m!2025163))

(declare-fun m!2025173 () Bool)

(assert (=> d!502411 m!2025173))

(assert (=> d!502411 m!2024361))

(assert (=> d!502411 m!2025153))

(declare-fun m!2025175 () Bool)

(assert (=> d!502411 m!2025175))

(declare-fun m!2025177 () Bool)

(assert (=> d!502411 m!2025177))

(assert (=> d!502411 m!2024239))

(assert (=> d!502411 m!2025153))

(declare-fun m!2025179 () Bool)

(assert (=> d!502411 m!2025179))

(assert (=> d!502411 m!2025167))

(declare-fun m!2025181 () Bool)

(assert (=> d!502411 m!2025181))

(declare-fun m!2025183 () Bool)

(assert (=> d!502411 m!2025183))

(declare-fun m!2025185 () Bool)

(assert (=> d!502411 m!2025185))

(declare-fun m!2025187 () Bool)

(assert (=> d!502411 m!2025187))

(assert (=> d!502411 m!2025161))

(declare-fun m!2025189 () Bool)

(assert (=> d!502411 m!2025189))

(assert (=> d!502411 m!2025183))

(declare-fun m!2025191 () Bool)

(assert (=> d!502411 m!2025191))

(declare-fun m!2025193 () Bool)

(assert (=> d!502411 m!2025193))

(declare-fun m!2025195 () Bool)

(assert (=> d!502411 m!2025195))

(declare-fun m!2025197 () Bool)

(assert (=> d!502411 m!2025197))

(declare-fun m!2025199 () Bool)

(assert (=> d!502411 m!2025199))

(assert (=> d!502411 m!2025149))

(declare-fun m!2025201 () Bool)

(assert (=> d!502411 m!2025201))

(declare-fun m!2025203 () Bool)

(assert (=> d!502411 m!2025203))

(assert (=> d!502411 m!2025149))

(assert (=> d!502411 m!2025147))

(declare-fun m!2025205 () Bool)

(assert (=> d!502411 m!2025205))

(assert (=> d!502411 m!2024275))

(declare-fun m!2025207 () Bool)

(assert (=> d!502411 m!2025207))

(declare-fun m!2025209 () Bool)

(assert (=> d!502411 m!2025209))

(assert (=> d!502411 m!2025207))

(declare-fun m!2025211 () Bool)

(assert (=> d!502411 m!2025211))

(assert (=> d!502411 m!2024361))

(declare-fun m!2025213 () Bool)

(assert (=> d!502411 m!2025213))

(assert (=> d!502411 m!2025153))

(declare-fun m!2025215 () Bool)

(assert (=> d!502411 m!2025215))

(assert (=> b!1663298 m!2025149))

(assert (=> b!1663298 m!2025151))

(assert (=> b!1663298 m!2025167))

(declare-fun m!2025217 () Bool)

(assert (=> b!1663298 m!2025217))

(assert (=> b!1663298 m!2025149))

(assert (=> b!1663298 m!2025151))

(declare-fun m!2025219 () Bool)

(assert (=> b!1663298 m!2025219))

(assert (=> b!1663298 m!2025167))

(declare-fun m!2025221 () Bool)

(assert (=> b!1663288 m!2025221))

(assert (=> b!1663288 m!2024361))

(assert (=> b!1663288 m!2024361))

(assert (=> b!1663288 m!2025153))

(assert (=> b!1663288 m!2025153))

(declare-fun m!2025223 () Bool)

(assert (=> b!1663288 m!2025223))

(assert (=> b!1663292 m!2024361))

(assert (=> b!1663292 m!2025149))

(assert (=> b!1663292 m!2025151))

(assert (=> b!1663292 m!2024361))

(assert (=> b!1663292 m!2025153))

(declare-fun m!2025225 () Bool)

(assert (=> b!1663292 m!2025225))

(assert (=> b!1663292 m!2024239))

(assert (=> b!1663292 m!2025151))

(declare-fun m!2025227 () Bool)

(assert (=> b!1663292 m!2025227))

(declare-fun m!2025229 () Bool)

(assert (=> b!1663292 m!2025229))

(assert (=> b!1663292 m!2025153))

(declare-fun m!2025231 () Bool)

(assert (=> b!1663292 m!2025231))

(assert (=> b!1663292 m!2024317))

(assert (=> b!1663292 m!2024239))

(declare-fun m!2025233 () Bool)

(assert (=> b!1663292 m!2025233))

(declare-fun m!2025235 () Bool)

(assert (=> b!1663292 m!2025235))

(declare-fun m!2025237 () Bool)

(assert (=> b!1663292 m!2025237))

(assert (=> b!1663292 m!2025235))

(declare-fun m!2025239 () Bool)

(assert (=> b!1663292 m!2025239))

(declare-fun m!2025241 () Bool)

(assert (=> b!1663292 m!2025241))

(assert (=> b!1663292 m!2025149))

(declare-fun m!2025243 () Bool)

(assert (=> b!1663292 m!2025243))

(declare-fun m!2025245 () Bool)

(assert (=> b!1663292 m!2025245))

(assert (=> b!1663292 m!2025153))

(declare-fun m!2025247 () Bool)

(assert (=> b!1663292 m!2025247))

(assert (=> b!1663292 m!2025245))

(declare-fun m!2025249 () Bool)

(assert (=> b!1663292 m!2025249))

(declare-fun m!2025251 () Bool)

(assert (=> b!1663292 m!2025251))

(declare-fun m!2025253 () Bool)

(assert (=> b!1663297 m!2025253))

(declare-fun m!2025255 () Bool)

(assert (=> b!1663300 m!2025255))

(declare-fun m!2025257 () Bool)

(assert (=> b!1663300 m!2025257))

(declare-fun m!2025259 () Bool)

(assert (=> b!1663295 m!2025259))

(declare-fun m!2025261 () Bool)

(assert (=> b!1663295 m!2025261))

(assert (=> b!1663295 m!2025149))

(assert (=> b!1663295 m!2025149))

(assert (=> b!1663295 m!2025151))

(assert (=> b!1663301 m!2025167))

(assert (=> b!1663301 m!2025167))

(assert (=> b!1663301 m!2025217))

(assert (=> b!1663296 m!2024361))

(assert (=> b!1663296 m!2025149))

(assert (=> b!1663296 m!2025151))

(declare-fun m!2025263 () Bool)

(assert (=> b!1663296 m!2025263))

(assert (=> b!1663296 m!2025149))

(declare-fun m!2025265 () Bool)

(assert (=> b!1663296 m!2025265))

(assert (=> b!1663296 m!2024361))

(assert (=> b!1663296 m!2025153))

(assert (=> b!1662914 d!502411))

(declare-fun d!502433 () Bool)

(assert (=> d!502433 (= (inv!23687 (tag!3517 (rule!5119 (h!23748 tokens!457)))) (= (mod (str.len (value!101812 (tag!3517 (rule!5119 (h!23748 tokens!457))))) 2) 0))))

(assert (=> b!1662937 d!502433))

(declare-fun d!502435 () Bool)

(declare-fun res!746392 () Bool)

(declare-fun e!1066288 () Bool)

(assert (=> d!502435 (=> (not res!746392) (not e!1066288))))

(assert (=> d!502435 (= res!746392 (semiInverseModEq!1257 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (toValue!4688 (transformation!3233 (rule!5119 (h!23748 tokens!457))))))))

(assert (=> d!502435 (= (inv!23691 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) e!1066288)))

(declare-fun b!1663302 () Bool)

(assert (=> b!1663302 (= e!1066288 (equivClasses!1198 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (toValue!4688 (transformation!3233 (rule!5119 (h!23748 tokens!457))))))))

(assert (= (and d!502435 res!746392) b!1663302))

(declare-fun m!2025267 () Bool)

(assert (=> d!502435 m!2025267))

(declare-fun m!2025269 () Bool)

(assert (=> b!1663302 m!2025269))

(assert (=> b!1662937 d!502435))

(declare-fun d!502437 () Bool)

(declare-fun lt!625824 () Bool)

(declare-fun isEmpty!11405 (List!18417) Bool)

(assert (=> d!502437 (= lt!625824 (isEmpty!11405 (list!7326 (_1!10434 (lex!1346 thiss!17113 rules!1846 (seqFromList!2206 lt!624988))))))))

(declare-fun isEmpty!11406 (Conc!6115) Bool)

(assert (=> d!502437 (= lt!625824 (isEmpty!11406 (c!270667 (_1!10434 (lex!1346 thiss!17113 rules!1846 (seqFromList!2206 lt!624988))))))))

(assert (=> d!502437 (= (isEmpty!11399 (_1!10434 (lex!1346 thiss!17113 rules!1846 (seqFromList!2206 lt!624988)))) lt!625824)))

(declare-fun bs!397411 () Bool)

(assert (= bs!397411 d!502437))

(assert (=> bs!397411 m!2024743))

(assert (=> bs!397411 m!2024743))

(declare-fun m!2025271 () Bool)

(assert (=> bs!397411 m!2025271))

(declare-fun m!2025273 () Bool)

(assert (=> bs!397411 m!2025273))

(assert (=> b!1662936 d!502437))

(declare-fun b!1663303 () Bool)

(declare-fun e!1066289 () Bool)

(declare-fun lt!625825 () tuple2!18064)

(assert (=> b!1663303 (= e!1066289 (not (isEmpty!11399 (_1!10434 lt!625825))))))

(declare-fun b!1663304 () Bool)

(declare-fun e!1066291 () Bool)

(assert (=> b!1663304 (= e!1066291 (= (list!7325 (_2!10434 lt!625825)) (_2!10437 (lexList!887 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 lt!624988))))))))

(declare-fun d!502439 () Bool)

(assert (=> d!502439 e!1066291))

(declare-fun res!746395 () Bool)

(assert (=> d!502439 (=> (not res!746395) (not e!1066291))))

(declare-fun e!1066290 () Bool)

(assert (=> d!502439 (= res!746395 e!1066290)))

(declare-fun c!270759 () Bool)

(assert (=> d!502439 (= c!270759 (> (size!14593 (_1!10434 lt!625825)) 0))))

(assert (=> d!502439 (= lt!625825 (lexTailRecV2!610 thiss!17113 rules!1846 (seqFromList!2206 lt!624988) (BalanceConc!12173 Empty!6114) (seqFromList!2206 lt!624988) (BalanceConc!12175 Empty!6115)))))

(assert (=> d!502439 (= (lex!1346 thiss!17113 rules!1846 (seqFromList!2206 lt!624988)) lt!625825)))

(declare-fun b!1663305 () Bool)

(declare-fun res!746394 () Bool)

(assert (=> b!1663305 (=> (not res!746394) (not e!1066291))))

(assert (=> b!1663305 (= res!746394 (= (list!7326 (_1!10434 lt!625825)) (_1!10437 (lexList!887 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 lt!624988))))))))

(declare-fun b!1663306 () Bool)

(assert (=> b!1663306 (= e!1066290 (= (_2!10434 lt!625825) (seqFromList!2206 lt!624988)))))

(declare-fun b!1663307 () Bool)

(assert (=> b!1663307 (= e!1066290 e!1066289)))

(declare-fun res!746393 () Bool)

(assert (=> b!1663307 (= res!746393 (< (size!14592 (_2!10434 lt!625825)) (size!14592 (seqFromList!2206 lt!624988))))))

(assert (=> b!1663307 (=> (not res!746393) (not e!1066289))))

(assert (= (and d!502439 c!270759) b!1663307))

(assert (= (and d!502439 (not c!270759)) b!1663306))

(assert (= (and b!1663307 res!746393) b!1663303))

(assert (= (and d!502439 res!746395) b!1663305))

(assert (= (and b!1663305 res!746394) b!1663304))

(declare-fun m!2025275 () Bool)

(assert (=> d!502439 m!2025275))

(assert (=> d!502439 m!2024349))

(assert (=> d!502439 m!2024349))

(declare-fun m!2025277 () Bool)

(assert (=> d!502439 m!2025277))

(declare-fun m!2025279 () Bool)

(assert (=> b!1663303 m!2025279))

(declare-fun m!2025281 () Bool)

(assert (=> b!1663304 m!2025281))

(assert (=> b!1663304 m!2024349))

(declare-fun m!2025283 () Bool)

(assert (=> b!1663304 m!2025283))

(assert (=> b!1663304 m!2025283))

(declare-fun m!2025285 () Bool)

(assert (=> b!1663304 m!2025285))

(declare-fun m!2025287 () Bool)

(assert (=> b!1663307 m!2025287))

(assert (=> b!1663307 m!2024349))

(declare-fun m!2025289 () Bool)

(assert (=> b!1663307 m!2025289))

(declare-fun m!2025291 () Bool)

(assert (=> b!1663305 m!2025291))

(assert (=> b!1663305 m!2024349))

(assert (=> b!1663305 m!2025283))

(assert (=> b!1663305 m!2025283))

(assert (=> b!1663305 m!2025285))

(assert (=> b!1662936 d!502439))

(declare-fun d!502441 () Bool)

(declare-fun fromListB!998 (List!18416) BalanceConc!12172)

(assert (=> d!502441 (= (seqFromList!2206 lt!624988) (fromListB!998 lt!624988))))

(declare-fun bs!397412 () Bool)

(assert (= bs!397412 d!502441))

(declare-fun m!2025293 () Bool)

(assert (=> bs!397412 m!2025293))

(assert (=> b!1662936 d!502441))

(declare-fun d!502443 () Bool)

(assert (=> d!502443 (= (get!5370 (maxPrefixZipperSequence!739 thiss!17113 rules!1846 lt!624968)) (v!24742 (maxPrefixZipperSequence!739 thiss!17113 rules!1846 lt!624968)))))

(assert (=> b!1662915 d!502443))

(declare-fun b!1663371 () Bool)

(declare-fun e!1066330 () Option!3518)

(declare-fun lt!625861 () Option!3518)

(declare-fun lt!625859 () Option!3518)

(assert (=> b!1663371 (= e!1066330 (ite (and ((_ is None!3517) lt!625861) ((_ is None!3517) lt!625859)) None!3517 (ite ((_ is None!3517) lt!625859) lt!625861 (ite ((_ is None!3517) lt!625861) lt!625859 (ite (>= (size!14588 (_1!10435 (v!24742 lt!625861))) (size!14588 (_1!10435 (v!24742 lt!625859)))) lt!625861 lt!625859)))))))

(declare-fun call!106489 () Option!3518)

(assert (=> b!1663371 (= lt!625861 call!106489)))

(assert (=> b!1663371 (= lt!625859 (maxPrefixZipperSequence!739 thiss!17113 (t!151867 rules!1846) lt!624968))))

(declare-fun b!1663372 () Bool)

(declare-fun res!746446 () Bool)

(declare-fun e!1066328 () Bool)

(assert (=> b!1663372 (=> (not res!746446) (not e!1066328))))

(declare-fun e!1066329 () Bool)

(assert (=> b!1663372 (= res!746446 e!1066329)))

(declare-fun res!746444 () Bool)

(assert (=> b!1663372 (=> res!746444 e!1066329)))

(declare-fun lt!625862 () Option!3518)

(assert (=> b!1663372 (= res!746444 (not (isDefined!2872 lt!625862)))))

(declare-fun b!1663373 () Bool)

(declare-fun e!1066333 () Bool)

(assert (=> b!1663373 (= e!1066329 e!1066333)))

(declare-fun res!746443 () Bool)

(assert (=> b!1663373 (=> (not res!746443) (not e!1066333))))

(assert (=> b!1663373 (= res!746443 (= (_1!10435 (get!5370 lt!625862)) (_1!10433 (get!5369 (maxPrefixZipper!360 thiss!17113 rules!1846 (list!7325 lt!624968))))))))

(declare-fun b!1663374 () Bool)

(declare-fun e!1066331 () Bool)

(declare-fun e!1066332 () Bool)

(assert (=> b!1663374 (= e!1066331 e!1066332)))

(declare-fun res!746447 () Bool)

(assert (=> b!1663374 (=> (not res!746447) (not e!1066332))))

(assert (=> b!1663374 (= res!746447 (= (_1!10435 (get!5370 lt!625862)) (_1!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 lt!624968))))))))

(declare-fun b!1663375 () Bool)

(assert (=> b!1663375 (= e!1066333 (= (list!7325 (_2!10435 (get!5370 lt!625862))) (_2!10433 (get!5369 (maxPrefixZipper!360 thiss!17113 rules!1846 (list!7325 lt!624968))))))))

(declare-fun bm!106484 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!352 (LexerInterface!2862 Rule!6266 BalanceConc!12172) Option!3518)

(assert (=> bm!106484 (= call!106489 (maxPrefixOneRuleZipperSequence!352 thiss!17113 (h!23749 rules!1846) lt!624968))))

(declare-fun b!1663376 () Bool)

(assert (=> b!1663376 (= e!1066330 call!106489)))

(declare-fun b!1663377 () Bool)

(assert (=> b!1663377 (= e!1066328 e!1066331)))

(declare-fun res!746445 () Bool)

(assert (=> b!1663377 (=> res!746445 e!1066331)))

(assert (=> b!1663377 (= res!746445 (not (isDefined!2872 lt!625862)))))

(declare-fun d!502445 () Bool)

(assert (=> d!502445 e!1066328))

(declare-fun res!746442 () Bool)

(assert (=> d!502445 (=> (not res!746442) (not e!1066328))))

(assert (=> d!502445 (= res!746442 (= (isDefined!2872 lt!625862) (isDefined!2873 (maxPrefixZipper!360 thiss!17113 rules!1846 (list!7325 lt!624968)))))))

(assert (=> d!502445 (= lt!625862 e!1066330)))

(declare-fun c!270766 () Bool)

(assert (=> d!502445 (= c!270766 (and ((_ is Cons!18348) rules!1846) ((_ is Nil!18348) (t!151867 rules!1846))))))

(declare-fun lt!625858 () Unit!31031)

(declare-fun lt!625860 () Unit!31031)

(assert (=> d!502445 (= lt!625858 lt!625860)))

(declare-fun lt!625857 () List!18416)

(declare-fun lt!625863 () List!18416)

(assert (=> d!502445 (isPrefix!1491 lt!625857 lt!625863)))

(assert (=> d!502445 (= lt!625860 (lemmaIsPrefixRefl!1012 lt!625857 lt!625863))))

(assert (=> d!502445 (= lt!625863 (list!7325 lt!624968))))

(assert (=> d!502445 (= lt!625857 (list!7325 lt!624968))))

(assert (=> d!502445 (rulesValidInductive!1034 thiss!17113 rules!1846)))

(assert (=> d!502445 (= (maxPrefixZipperSequence!739 thiss!17113 rules!1846 lt!624968) lt!625862)))

(declare-fun b!1663378 () Bool)

(assert (=> b!1663378 (= e!1066332 (= (list!7325 (_2!10435 (get!5370 lt!625862))) (_2!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 lt!624968))))))))

(assert (= (and d!502445 c!270766) b!1663376))

(assert (= (and d!502445 (not c!270766)) b!1663371))

(assert (= (or b!1663376 b!1663371) bm!106484))

(assert (= (and d!502445 res!746442) b!1663372))

(assert (= (and b!1663372 (not res!746444)) b!1663373))

(assert (= (and b!1663373 res!746443) b!1663375))

(assert (= (and b!1663372 res!746446) b!1663377))

(assert (= (and b!1663377 (not res!746445)) b!1663374))

(assert (= (and b!1663374 res!746447) b!1663378))

(assert (=> d!502445 m!2024369))

(declare-fun m!2025413 () Bool)

(assert (=> d!502445 m!2025413))

(assert (=> d!502445 m!2024631))

(declare-fun m!2025415 () Bool)

(assert (=> d!502445 m!2025415))

(declare-fun m!2025417 () Bool)

(assert (=> d!502445 m!2025417))

(assert (=> d!502445 m!2024369))

(declare-fun m!2025419 () Bool)

(assert (=> d!502445 m!2025419))

(assert (=> d!502445 m!2025419))

(declare-fun m!2025421 () Bool)

(assert (=> d!502445 m!2025421))

(assert (=> b!1663377 m!2025415))

(declare-fun m!2025423 () Bool)

(assert (=> b!1663378 m!2025423))

(declare-fun m!2025425 () Bool)

(assert (=> b!1663378 m!2025425))

(assert (=> b!1663378 m!2024369))

(declare-fun m!2025427 () Bool)

(assert (=> b!1663378 m!2025427))

(assert (=> b!1663378 m!2025427))

(declare-fun m!2025429 () Bool)

(assert (=> b!1663378 m!2025429))

(assert (=> b!1663378 m!2024369))

(assert (=> b!1663374 m!2025423))

(assert (=> b!1663374 m!2024369))

(assert (=> b!1663374 m!2024369))

(assert (=> b!1663374 m!2025427))

(assert (=> b!1663374 m!2025427))

(assert (=> b!1663374 m!2025429))

(assert (=> b!1663372 m!2025415))

(assert (=> b!1663375 m!2024369))

(assert (=> b!1663375 m!2025423))

(assert (=> b!1663375 m!2025419))

(declare-fun m!2025431 () Bool)

(assert (=> b!1663375 m!2025431))

(assert (=> b!1663375 m!2024369))

(assert (=> b!1663375 m!2025419))

(assert (=> b!1663375 m!2025425))

(declare-fun m!2025433 () Bool)

(assert (=> bm!106484 m!2025433))

(assert (=> b!1663373 m!2025423))

(assert (=> b!1663373 m!2024369))

(assert (=> b!1663373 m!2024369))

(assert (=> b!1663373 m!2025419))

(assert (=> b!1663373 m!2025419))

(assert (=> b!1663373 m!2025431))

(declare-fun m!2025435 () Bool)

(assert (=> b!1663371 m!2025435))

(assert (=> b!1662915 d!502445))

(declare-fun b!1663380 () Bool)

(declare-fun e!1066335 () List!18416)

(assert (=> b!1663380 (= e!1066335 (Cons!18346 (h!23747 (originalCharacters!4047 (h!23748 tokens!457))) (++!4989 (t!151865 (originalCharacters!4047 (h!23748 tokens!457))) lt!624987)))))

(declare-fun b!1663379 () Bool)

(assert (=> b!1663379 (= e!1066335 lt!624987)))

(declare-fun b!1663382 () Bool)

(declare-fun e!1066334 () Bool)

(declare-fun lt!625864 () List!18416)

(assert (=> b!1663382 (= e!1066334 (or (not (= lt!624987 Nil!18346)) (= lt!625864 (originalCharacters!4047 (h!23748 tokens!457)))))))

(declare-fun b!1663381 () Bool)

(declare-fun res!746449 () Bool)

(assert (=> b!1663381 (=> (not res!746449) (not e!1066334))))

(assert (=> b!1663381 (= res!746449 (= (size!14594 lt!625864) (+ (size!14594 (originalCharacters!4047 (h!23748 tokens!457))) (size!14594 lt!624987))))))

(declare-fun d!502469 () Bool)

(assert (=> d!502469 e!1066334))

(declare-fun res!746448 () Bool)

(assert (=> d!502469 (=> (not res!746448) (not e!1066334))))

(assert (=> d!502469 (= res!746448 (= (content!2556 lt!625864) ((_ map or) (content!2556 (originalCharacters!4047 (h!23748 tokens!457))) (content!2556 lt!624987))))))

(assert (=> d!502469 (= lt!625864 e!1066335)))

(declare-fun c!270767 () Bool)

(assert (=> d!502469 (= c!270767 ((_ is Nil!18346) (originalCharacters!4047 (h!23748 tokens!457))))))

(assert (=> d!502469 (= (++!4989 (originalCharacters!4047 (h!23748 tokens!457)) lt!624987) lt!625864)))

(assert (= (and d!502469 c!270767) b!1663379))

(assert (= (and d!502469 (not c!270767)) b!1663380))

(assert (= (and d!502469 res!746448) b!1663381))

(assert (= (and b!1663381 res!746449) b!1663382))

(declare-fun m!2025437 () Bool)

(assert (=> b!1663380 m!2025437))

(declare-fun m!2025439 () Bool)

(assert (=> b!1663381 m!2025439))

(declare-fun m!2025441 () Bool)

(assert (=> b!1663381 m!2025441))

(declare-fun m!2025443 () Bool)

(assert (=> b!1663381 m!2025443))

(declare-fun m!2025445 () Bool)

(assert (=> d!502469 m!2025445))

(declare-fun m!2025447 () Bool)

(assert (=> d!502469 m!2025447))

(declare-fun m!2025449 () Bool)

(assert (=> d!502469 m!2025449))

(assert (=> b!1662938 d!502469))

(declare-fun b!1663401 () Bool)

(declare-fun res!746467 () Bool)

(declare-fun e!1066342 () Bool)

(assert (=> b!1663401 (=> (not res!746467) (not e!1066342))))

(declare-fun lt!625875 () Option!3517)

(assert (=> b!1663401 (= res!746467 (< (size!14594 (_2!10433 (get!5369 lt!625875))) (size!14594 (originalCharacters!4047 (h!23748 tokens!457)))))))

(declare-fun bm!106487 () Bool)

(declare-fun call!106492 () Option!3517)

(assert (=> bm!106487 (= call!106492 (maxPrefixOneRule!827 thiss!17113 (h!23749 rules!1846) (originalCharacters!4047 (h!23748 tokens!457))))))

(declare-fun b!1663402 () Bool)

(declare-fun contains!3202 (List!18418 Rule!6266) Bool)

(assert (=> b!1663402 (= e!1066342 (contains!3202 rules!1846 (rule!5119 (_1!10433 (get!5369 lt!625875)))))))

(declare-fun b!1663403 () Bool)

(declare-fun res!746468 () Bool)

(assert (=> b!1663403 (=> (not res!746468) (not e!1066342))))

(assert (=> b!1663403 (= res!746468 (= (++!4989 (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!625875)))) (_2!10433 (get!5369 lt!625875))) (originalCharacters!4047 (h!23748 tokens!457))))))

(declare-fun b!1663405 () Bool)

(declare-fun e!1066344 () Bool)

(assert (=> b!1663405 (= e!1066344 e!1066342)))

(declare-fun res!746464 () Bool)

(assert (=> b!1663405 (=> (not res!746464) (not e!1066342))))

(assert (=> b!1663405 (= res!746464 (isDefined!2873 lt!625875))))

(declare-fun b!1663406 () Bool)

(declare-fun e!1066343 () Option!3517)

(assert (=> b!1663406 (= e!1066343 call!106492)))

(declare-fun b!1663407 () Bool)

(declare-fun res!746470 () Bool)

(assert (=> b!1663407 (=> (not res!746470) (not e!1066342))))

(assert (=> b!1663407 (= res!746470 (= (value!101813 (_1!10433 (get!5369 lt!625875))) (apply!4914 (transformation!3233 (rule!5119 (_1!10433 (get!5369 lt!625875)))) (seqFromList!2206 (originalCharacters!4047 (_1!10433 (get!5369 lt!625875)))))))))

(declare-fun b!1663408 () Bool)

(declare-fun res!746469 () Bool)

(assert (=> b!1663408 (=> (not res!746469) (not e!1066342))))

(assert (=> b!1663408 (= res!746469 (matchR!2054 (regex!3233 (rule!5119 (_1!10433 (get!5369 lt!625875)))) (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!625875))))))))

(declare-fun b!1663409 () Bool)

(declare-fun lt!625877 () Option!3517)

(declare-fun lt!625878 () Option!3517)

(assert (=> b!1663409 (= e!1066343 (ite (and ((_ is None!3516) lt!625877) ((_ is None!3516) lt!625878)) None!3516 (ite ((_ is None!3516) lt!625878) lt!625877 (ite ((_ is None!3516) lt!625877) lt!625878 (ite (>= (size!14588 (_1!10433 (v!24741 lt!625877))) (size!14588 (_1!10433 (v!24741 lt!625878)))) lt!625877 lt!625878)))))))

(assert (=> b!1663409 (= lt!625877 call!106492)))

(assert (=> b!1663409 (= lt!625878 (maxPrefix!1424 thiss!17113 (t!151867 rules!1846) (originalCharacters!4047 (h!23748 tokens!457))))))

(declare-fun b!1663404 () Bool)

(declare-fun res!746466 () Bool)

(assert (=> b!1663404 (=> (not res!746466) (not e!1066342))))

(assert (=> b!1663404 (= res!746466 (= (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!625875)))) (originalCharacters!4047 (_1!10433 (get!5369 lt!625875)))))))

(declare-fun d!502471 () Bool)

(assert (=> d!502471 e!1066344))

(declare-fun res!746465 () Bool)

(assert (=> d!502471 (=> res!746465 e!1066344)))

(assert (=> d!502471 (= res!746465 (isEmpty!11403 lt!625875))))

(assert (=> d!502471 (= lt!625875 e!1066343)))

(declare-fun c!270770 () Bool)

(assert (=> d!502471 (= c!270770 (and ((_ is Cons!18348) rules!1846) ((_ is Nil!18348) (t!151867 rules!1846))))))

(declare-fun lt!625876 () Unit!31031)

(declare-fun lt!625879 () Unit!31031)

(assert (=> d!502471 (= lt!625876 lt!625879)))

(assert (=> d!502471 (isPrefix!1491 (originalCharacters!4047 (h!23748 tokens!457)) (originalCharacters!4047 (h!23748 tokens!457)))))

(assert (=> d!502471 (= lt!625879 (lemmaIsPrefixRefl!1012 (originalCharacters!4047 (h!23748 tokens!457)) (originalCharacters!4047 (h!23748 tokens!457))))))

(assert (=> d!502471 (rulesValidInductive!1034 thiss!17113 rules!1846)))

(assert (=> d!502471 (= (maxPrefix!1424 thiss!17113 rules!1846 (originalCharacters!4047 (h!23748 tokens!457))) lt!625875)))

(assert (= (and d!502471 c!270770) b!1663406))

(assert (= (and d!502471 (not c!270770)) b!1663409))

(assert (= (or b!1663406 b!1663409) bm!106487))

(assert (= (and d!502471 (not res!746465)) b!1663405))

(assert (= (and b!1663405 res!746464) b!1663404))

(assert (= (and b!1663404 res!746466) b!1663401))

(assert (= (and b!1663401 res!746467) b!1663403))

(assert (= (and b!1663403 res!746468) b!1663407))

(assert (= (and b!1663407 res!746470) b!1663408))

(assert (= (and b!1663408 res!746469) b!1663402))

(declare-fun m!2025451 () Bool)

(assert (=> b!1663404 m!2025451))

(declare-fun m!2025453 () Bool)

(assert (=> b!1663404 m!2025453))

(assert (=> b!1663404 m!2025453))

(declare-fun m!2025455 () Bool)

(assert (=> b!1663404 m!2025455))

(declare-fun m!2025457 () Bool)

(assert (=> d!502471 m!2025457))

(declare-fun m!2025459 () Bool)

(assert (=> d!502471 m!2025459))

(declare-fun m!2025461 () Bool)

(assert (=> d!502471 m!2025461))

(assert (=> d!502471 m!2024631))

(assert (=> b!1663401 m!2025451))

(declare-fun m!2025463 () Bool)

(assert (=> b!1663401 m!2025463))

(assert (=> b!1663401 m!2025441))

(assert (=> b!1663408 m!2025451))

(assert (=> b!1663408 m!2025453))

(assert (=> b!1663408 m!2025453))

(assert (=> b!1663408 m!2025455))

(assert (=> b!1663408 m!2025455))

(declare-fun m!2025465 () Bool)

(assert (=> b!1663408 m!2025465))

(assert (=> b!1663402 m!2025451))

(declare-fun m!2025467 () Bool)

(assert (=> b!1663402 m!2025467))

(declare-fun m!2025469 () Bool)

(assert (=> b!1663405 m!2025469))

(assert (=> b!1663403 m!2025451))

(assert (=> b!1663403 m!2025453))

(assert (=> b!1663403 m!2025453))

(assert (=> b!1663403 m!2025455))

(assert (=> b!1663403 m!2025455))

(declare-fun m!2025471 () Bool)

(assert (=> b!1663403 m!2025471))

(assert (=> b!1663407 m!2025451))

(declare-fun m!2025473 () Bool)

(assert (=> b!1663407 m!2025473))

(assert (=> b!1663407 m!2025473))

(declare-fun m!2025475 () Bool)

(assert (=> b!1663407 m!2025475))

(declare-fun m!2025477 () Bool)

(assert (=> bm!106487 m!2025477))

(declare-fun m!2025479 () Bool)

(assert (=> b!1663409 m!2025479))

(assert (=> b!1662938 d!502471))

(declare-fun d!502473 () Bool)

(assert (=> d!502473 (= (get!5369 lt!624989) (v!24741 lt!624989))))

(assert (=> b!1662938 d!502473))

(declare-fun d!502475 () Bool)

(assert (=> d!502475 (= (isDefined!2873 lt!624989) (not (isEmpty!11403 lt!624989)))))

(declare-fun bs!397415 () Bool)

(assert (= bs!397415 d!502475))

(declare-fun m!2025481 () Bool)

(assert (=> bs!397415 m!2025481))

(assert (=> b!1662938 d!502475))

(declare-fun d!502477 () Bool)

(assert (=> d!502477 (= (isDefined!2873 (maxPrefix!1424 thiss!17113 rules!1846 (originalCharacters!4047 (h!23748 tokens!457)))) (not (isEmpty!11403 (maxPrefix!1424 thiss!17113 rules!1846 (originalCharacters!4047 (h!23748 tokens!457))))))))

(declare-fun bs!397416 () Bool)

(assert (= bs!397416 d!502477))

(assert (=> bs!397416 m!2024299))

(declare-fun m!2025483 () Bool)

(assert (=> bs!397416 m!2025483))

(assert (=> b!1662938 d!502477))

(declare-fun d!502479 () Bool)

(declare-fun c!270773 () Bool)

(assert (=> d!502479 (= c!270773 (isEmpty!11397 (++!4989 (originalCharacters!4047 (h!23748 tokens!457)) lt!624987)))))

(declare-fun e!1066347 () Bool)

(assert (=> d!502479 (= (prefixMatch!478 lt!624984 (++!4989 (originalCharacters!4047 (h!23748 tokens!457)) lt!624987)) e!1066347)))

(declare-fun b!1663414 () Bool)

(declare-fun lostCause!476 (Regex!4561) Bool)

(assert (=> b!1663414 (= e!1066347 (not (lostCause!476 lt!624984)))))

(declare-fun b!1663415 () Bool)

(declare-fun derivativeStep!1126 (Regex!4561 C!9296) Regex!4561)

(declare-fun tail!2479 (List!18416) List!18416)

(assert (=> b!1663415 (= e!1066347 (prefixMatch!478 (derivativeStep!1126 lt!624984 (head!3710 (++!4989 (originalCharacters!4047 (h!23748 tokens!457)) lt!624987))) (tail!2479 (++!4989 (originalCharacters!4047 (h!23748 tokens!457)) lt!624987))))))

(assert (= (and d!502479 c!270773) b!1663414))

(assert (= (and d!502479 (not c!270773)) b!1663415))

(assert (=> d!502479 m!2024305))

(declare-fun m!2025485 () Bool)

(assert (=> d!502479 m!2025485))

(declare-fun m!2025487 () Bool)

(assert (=> b!1663414 m!2025487))

(assert (=> b!1663415 m!2024305))

(declare-fun m!2025489 () Bool)

(assert (=> b!1663415 m!2025489))

(assert (=> b!1663415 m!2025489))

(declare-fun m!2025491 () Bool)

(assert (=> b!1663415 m!2025491))

(assert (=> b!1663415 m!2024305))

(declare-fun m!2025493 () Bool)

(assert (=> b!1663415 m!2025493))

(assert (=> b!1663415 m!2025491))

(assert (=> b!1663415 m!2025493))

(declare-fun m!2025495 () Bool)

(assert (=> b!1663415 m!2025495))

(assert (=> b!1662938 d!502479))

(declare-fun b!1663416 () Bool)

(declare-fun res!746474 () Bool)

(declare-fun e!1066348 () Bool)

(assert (=> b!1663416 (=> (not res!746474) (not e!1066348))))

(declare-fun lt!625880 () Option!3517)

(assert (=> b!1663416 (= res!746474 (< (size!14594 (_2!10433 (get!5369 lt!625880))) (size!14594 lt!624988)))))

(declare-fun bm!106488 () Bool)

(declare-fun call!106493 () Option!3517)

(assert (=> bm!106488 (= call!106493 (maxPrefixOneRule!827 thiss!17113 (h!23749 rules!1846) lt!624988))))

(declare-fun b!1663417 () Bool)

(assert (=> b!1663417 (= e!1066348 (contains!3202 rules!1846 (rule!5119 (_1!10433 (get!5369 lt!625880)))))))

(declare-fun b!1663418 () Bool)

(declare-fun res!746475 () Bool)

(assert (=> b!1663418 (=> (not res!746475) (not e!1066348))))

(assert (=> b!1663418 (= res!746475 (= (++!4989 (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!625880)))) (_2!10433 (get!5369 lt!625880))) lt!624988))))

(declare-fun b!1663420 () Bool)

(declare-fun e!1066350 () Bool)

(assert (=> b!1663420 (= e!1066350 e!1066348)))

(declare-fun res!746471 () Bool)

(assert (=> b!1663420 (=> (not res!746471) (not e!1066348))))

(assert (=> b!1663420 (= res!746471 (isDefined!2873 lt!625880))))

(declare-fun b!1663421 () Bool)

(declare-fun e!1066349 () Option!3517)

(assert (=> b!1663421 (= e!1066349 call!106493)))

(declare-fun b!1663422 () Bool)

(declare-fun res!746477 () Bool)

(assert (=> b!1663422 (=> (not res!746477) (not e!1066348))))

(assert (=> b!1663422 (= res!746477 (= (value!101813 (_1!10433 (get!5369 lt!625880))) (apply!4914 (transformation!3233 (rule!5119 (_1!10433 (get!5369 lt!625880)))) (seqFromList!2206 (originalCharacters!4047 (_1!10433 (get!5369 lt!625880)))))))))

(declare-fun b!1663423 () Bool)

(declare-fun res!746476 () Bool)

(assert (=> b!1663423 (=> (not res!746476) (not e!1066348))))

(assert (=> b!1663423 (= res!746476 (matchR!2054 (regex!3233 (rule!5119 (_1!10433 (get!5369 lt!625880)))) (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!625880))))))))

(declare-fun b!1663424 () Bool)

(declare-fun lt!625882 () Option!3517)

(declare-fun lt!625883 () Option!3517)

(assert (=> b!1663424 (= e!1066349 (ite (and ((_ is None!3516) lt!625882) ((_ is None!3516) lt!625883)) None!3516 (ite ((_ is None!3516) lt!625883) lt!625882 (ite ((_ is None!3516) lt!625882) lt!625883 (ite (>= (size!14588 (_1!10433 (v!24741 lt!625882))) (size!14588 (_1!10433 (v!24741 lt!625883)))) lt!625882 lt!625883)))))))

(assert (=> b!1663424 (= lt!625882 call!106493)))

(assert (=> b!1663424 (= lt!625883 (maxPrefix!1424 thiss!17113 (t!151867 rules!1846) lt!624988))))

(declare-fun b!1663419 () Bool)

(declare-fun res!746473 () Bool)

(assert (=> b!1663419 (=> (not res!746473) (not e!1066348))))

(assert (=> b!1663419 (= res!746473 (= (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!625880)))) (originalCharacters!4047 (_1!10433 (get!5369 lt!625880)))))))

(declare-fun d!502481 () Bool)

(assert (=> d!502481 e!1066350))

(declare-fun res!746472 () Bool)

(assert (=> d!502481 (=> res!746472 e!1066350)))

(assert (=> d!502481 (= res!746472 (isEmpty!11403 lt!625880))))

(assert (=> d!502481 (= lt!625880 e!1066349)))

(declare-fun c!270774 () Bool)

(assert (=> d!502481 (= c!270774 (and ((_ is Cons!18348) rules!1846) ((_ is Nil!18348) (t!151867 rules!1846))))))

(declare-fun lt!625881 () Unit!31031)

(declare-fun lt!625884 () Unit!31031)

(assert (=> d!502481 (= lt!625881 lt!625884)))

(assert (=> d!502481 (isPrefix!1491 lt!624988 lt!624988)))

(assert (=> d!502481 (= lt!625884 (lemmaIsPrefixRefl!1012 lt!624988 lt!624988))))

(assert (=> d!502481 (rulesValidInductive!1034 thiss!17113 rules!1846)))

(assert (=> d!502481 (= (maxPrefix!1424 thiss!17113 rules!1846 lt!624988) lt!625880)))

(assert (= (and d!502481 c!270774) b!1663421))

(assert (= (and d!502481 (not c!270774)) b!1663424))

(assert (= (or b!1663421 b!1663424) bm!106488))

(assert (= (and d!502481 (not res!746472)) b!1663420))

(assert (= (and b!1663420 res!746471) b!1663419))

(assert (= (and b!1663419 res!746473) b!1663416))

(assert (= (and b!1663416 res!746474) b!1663418))

(assert (= (and b!1663418 res!746475) b!1663422))

(assert (= (and b!1663422 res!746477) b!1663423))

(assert (= (and b!1663423 res!746476) b!1663417))

(declare-fun m!2025497 () Bool)

(assert (=> b!1663419 m!2025497))

(declare-fun m!2025499 () Bool)

(assert (=> b!1663419 m!2025499))

(assert (=> b!1663419 m!2025499))

(declare-fun m!2025501 () Bool)

(assert (=> b!1663419 m!2025501))

(declare-fun m!2025503 () Bool)

(assert (=> d!502481 m!2025503))

(declare-fun m!2025505 () Bool)

(assert (=> d!502481 m!2025505))

(declare-fun m!2025507 () Bool)

(assert (=> d!502481 m!2025507))

(assert (=> d!502481 m!2024631))

(assert (=> b!1663416 m!2025497))

(declare-fun m!2025509 () Bool)

(assert (=> b!1663416 m!2025509))

(assert (=> b!1663416 m!2024925))

(assert (=> b!1663423 m!2025497))

(assert (=> b!1663423 m!2025499))

(assert (=> b!1663423 m!2025499))

(assert (=> b!1663423 m!2025501))

(assert (=> b!1663423 m!2025501))

(declare-fun m!2025511 () Bool)

(assert (=> b!1663423 m!2025511))

(assert (=> b!1663417 m!2025497))

(declare-fun m!2025513 () Bool)

(assert (=> b!1663417 m!2025513))

(declare-fun m!2025515 () Bool)

(assert (=> b!1663420 m!2025515))

(assert (=> b!1663418 m!2025497))

(assert (=> b!1663418 m!2025499))

(assert (=> b!1663418 m!2025499))

(assert (=> b!1663418 m!2025501))

(assert (=> b!1663418 m!2025501))

(declare-fun m!2025517 () Bool)

(assert (=> b!1663418 m!2025517))

(assert (=> b!1663422 m!2025497))

(declare-fun m!2025519 () Bool)

(assert (=> b!1663422 m!2025519))

(assert (=> b!1663422 m!2025519))

(declare-fun m!2025521 () Bool)

(assert (=> b!1663422 m!2025521))

(declare-fun m!2025523 () Bool)

(assert (=> bm!106488 m!2025523))

(declare-fun m!2025525 () Bool)

(assert (=> b!1663424 m!2025525))

(assert (=> b!1662938 d!502481))

(declare-fun d!502483 () Bool)

(assert (=> d!502483 (= (isEmpty!11398 rules!1846) ((_ is Nil!18348) rules!1846))))

(assert (=> b!1662917 d!502483))

(declare-fun d!502485 () Bool)

(assert (=> d!502485 (= (list!7326 (prepend!813 lt!624961 (h!23748 tokens!457))) (list!7329 (c!270667 (prepend!813 lt!624961 (h!23748 tokens!457)))))))

(declare-fun bs!397417 () Bool)

(assert (= bs!397417 d!502485))

(declare-fun m!2025527 () Bool)

(assert (=> bs!397417 m!2025527))

(assert (=> b!1662916 d!502485))

(declare-fun d!502487 () Bool)

(declare-fun e!1066351 () Bool)

(assert (=> d!502487 e!1066351))

(declare-fun res!746478 () Bool)

(assert (=> d!502487 (=> (not res!746478) (not e!1066351))))

(assert (=> d!502487 (= res!746478 (isBalanced!1892 (prepend!815 (c!270667 lt!624961) (h!23748 tokens!457))))))

(declare-fun lt!625885 () BalanceConc!12174)

(assert (=> d!502487 (= lt!625885 (BalanceConc!12175 (prepend!815 (c!270667 lt!624961) (h!23748 tokens!457))))))

(assert (=> d!502487 (= (prepend!813 lt!624961 (h!23748 tokens!457)) lt!625885)))

(declare-fun b!1663425 () Bool)

(assert (=> b!1663425 (= e!1066351 (= (list!7326 lt!625885) (Cons!18347 (h!23748 tokens!457) (list!7326 lt!624961))))))

(assert (= (and d!502487 res!746478) b!1663425))

(declare-fun m!2025529 () Bool)

(assert (=> d!502487 m!2025529))

(assert (=> d!502487 m!2025529))

(declare-fun m!2025531 () Bool)

(assert (=> d!502487 m!2025531))

(declare-fun m!2025533 () Bool)

(assert (=> b!1663425 m!2025533))

(assert (=> b!1663425 m!2024259))

(assert (=> b!1662916 d!502487))

(declare-fun d!502489 () Bool)

(declare-fun isEmpty!11407 (Option!3518) Bool)

(assert (=> d!502489 (= (isDefined!2872 (maxPrefixZipperSequence!739 thiss!17113 rules!1846 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457))))) (not (isEmpty!11407 (maxPrefixZipperSequence!739 thiss!17113 rules!1846 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))))

(declare-fun bs!397418 () Bool)

(assert (= bs!397418 d!502489))

(assert (=> bs!397418 m!2024331))

(declare-fun m!2025535 () Bool)

(assert (=> bs!397418 m!2025535))

(assert (=> b!1662918 d!502489))

(declare-fun b!1663426 () Bool)

(declare-fun e!1066354 () Option!3518)

(declare-fun lt!625890 () Option!3518)

(declare-fun lt!625888 () Option!3518)

(assert (=> b!1663426 (= e!1066354 (ite (and ((_ is None!3517) lt!625890) ((_ is None!3517) lt!625888)) None!3517 (ite ((_ is None!3517) lt!625888) lt!625890 (ite ((_ is None!3517) lt!625890) lt!625888 (ite (>= (size!14588 (_1!10435 (v!24742 lt!625890))) (size!14588 (_1!10435 (v!24742 lt!625888)))) lt!625890 lt!625888)))))))

(declare-fun call!106494 () Option!3518)

(assert (=> b!1663426 (= lt!625890 call!106494)))

(assert (=> b!1663426 (= lt!625888 (maxPrefixZipperSequence!739 thiss!17113 (t!151867 rules!1846) (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))

(declare-fun b!1663427 () Bool)

(declare-fun res!746483 () Bool)

(declare-fun e!1066352 () Bool)

(assert (=> b!1663427 (=> (not res!746483) (not e!1066352))))

(declare-fun e!1066353 () Bool)

(assert (=> b!1663427 (= res!746483 e!1066353)))

(declare-fun res!746481 () Bool)

(assert (=> b!1663427 (=> res!746481 e!1066353)))

(declare-fun lt!625891 () Option!3518)

(assert (=> b!1663427 (= res!746481 (not (isDefined!2872 lt!625891)))))

(declare-fun b!1663428 () Bool)

(declare-fun e!1066357 () Bool)

(assert (=> b!1663428 (= e!1066353 e!1066357)))

(declare-fun res!746480 () Bool)

(assert (=> b!1663428 (=> (not res!746480) (not e!1066357))))

(assert (=> b!1663428 (= res!746480 (= (_1!10435 (get!5370 lt!625891)) (_1!10433 (get!5369 (maxPrefixZipper!360 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))))))

(declare-fun b!1663429 () Bool)

(declare-fun e!1066355 () Bool)

(declare-fun e!1066356 () Bool)

(assert (=> b!1663429 (= e!1066355 e!1066356)))

(declare-fun res!746484 () Bool)

(assert (=> b!1663429 (=> (not res!746484) (not e!1066356))))

(assert (=> b!1663429 (= res!746484 (= (_1!10435 (get!5370 lt!625891)) (_1!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))))))

(declare-fun b!1663430 () Bool)

(assert (=> b!1663430 (= e!1066357 (= (list!7325 (_2!10435 (get!5370 lt!625891))) (_2!10433 (get!5369 (maxPrefixZipper!360 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))))))

(declare-fun bm!106489 () Bool)

(assert (=> bm!106489 (= call!106494 (maxPrefixOneRuleZipperSequence!352 thiss!17113 (h!23749 rules!1846) (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))

(declare-fun b!1663431 () Bool)

(assert (=> b!1663431 (= e!1066354 call!106494)))

(declare-fun b!1663432 () Bool)

(assert (=> b!1663432 (= e!1066352 e!1066355)))

(declare-fun res!746482 () Bool)

(assert (=> b!1663432 (=> res!746482 e!1066355)))

(assert (=> b!1663432 (= res!746482 (not (isDefined!2872 lt!625891)))))

(declare-fun d!502491 () Bool)

(assert (=> d!502491 e!1066352))

(declare-fun res!746479 () Bool)

(assert (=> d!502491 (=> (not res!746479) (not e!1066352))))

(assert (=> d!502491 (= res!746479 (= (isDefined!2872 lt!625891) (isDefined!2873 (maxPrefixZipper!360 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457))))))))))

(assert (=> d!502491 (= lt!625891 e!1066354)))

(declare-fun c!270775 () Bool)

(assert (=> d!502491 (= c!270775 (and ((_ is Cons!18348) rules!1846) ((_ is Nil!18348) (t!151867 rules!1846))))))

(declare-fun lt!625887 () Unit!31031)

(declare-fun lt!625889 () Unit!31031)

(assert (=> d!502491 (= lt!625887 lt!625889)))

(declare-fun lt!625886 () List!18416)

(declare-fun lt!625892 () List!18416)

(assert (=> d!502491 (isPrefix!1491 lt!625886 lt!625892)))

(assert (=> d!502491 (= lt!625889 (lemmaIsPrefixRefl!1012 lt!625886 lt!625892))))

(assert (=> d!502491 (= lt!625892 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))

(assert (=> d!502491 (= lt!625886 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))

(assert (=> d!502491 (rulesValidInductive!1034 thiss!17113 rules!1846)))

(assert (=> d!502491 (= (maxPrefixZipperSequence!739 thiss!17113 rules!1846 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))) lt!625891)))

(declare-fun b!1663433 () Bool)

(assert (=> b!1663433 (= e!1066356 (= (list!7325 (_2!10435 (get!5370 lt!625891))) (_2!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457)))))))))))

(assert (= (and d!502491 c!270775) b!1663431))

(assert (= (and d!502491 (not c!270775)) b!1663426))

(assert (= (or b!1663431 b!1663426) bm!106489))

(assert (= (and d!502491 res!746479) b!1663427))

(assert (= (and b!1663427 (not res!746481)) b!1663428))

(assert (= (and b!1663428 res!746480) b!1663430))

(assert (= (and b!1663427 res!746483) b!1663432))

(assert (= (and b!1663432 (not res!746482)) b!1663429))

(assert (= (and b!1663429 res!746484) b!1663433))

(assert (=> d!502491 m!2024329))

(declare-fun m!2025537 () Bool)

(assert (=> d!502491 m!2025537))

(declare-fun m!2025539 () Bool)

(assert (=> d!502491 m!2025539))

(assert (=> d!502491 m!2024631))

(declare-fun m!2025541 () Bool)

(assert (=> d!502491 m!2025541))

(declare-fun m!2025543 () Bool)

(assert (=> d!502491 m!2025543))

(assert (=> d!502491 m!2025537))

(declare-fun m!2025545 () Bool)

(assert (=> d!502491 m!2025545))

(assert (=> d!502491 m!2025545))

(declare-fun m!2025547 () Bool)

(assert (=> d!502491 m!2025547))

(assert (=> b!1663432 m!2025541))

(declare-fun m!2025549 () Bool)

(assert (=> b!1663433 m!2025549))

(declare-fun m!2025551 () Bool)

(assert (=> b!1663433 m!2025551))

(assert (=> b!1663433 m!2025537))

(declare-fun m!2025553 () Bool)

(assert (=> b!1663433 m!2025553))

(assert (=> b!1663433 m!2025553))

(declare-fun m!2025555 () Bool)

(assert (=> b!1663433 m!2025555))

(assert (=> b!1663433 m!2024329))

(assert (=> b!1663433 m!2025537))

(assert (=> b!1663429 m!2025549))

(assert (=> b!1663429 m!2024329))

(assert (=> b!1663429 m!2025537))

(assert (=> b!1663429 m!2025537))

(assert (=> b!1663429 m!2025553))

(assert (=> b!1663429 m!2025553))

(assert (=> b!1663429 m!2025555))

(assert (=> b!1663427 m!2025541))

(assert (=> b!1663430 m!2024329))

(assert (=> b!1663430 m!2025537))

(assert (=> b!1663430 m!2025549))

(assert (=> b!1663430 m!2025545))

(declare-fun m!2025557 () Bool)

(assert (=> b!1663430 m!2025557))

(assert (=> b!1663430 m!2025537))

(assert (=> b!1663430 m!2025545))

(assert (=> b!1663430 m!2025551))

(assert (=> bm!106489 m!2024329))

(declare-fun m!2025559 () Bool)

(assert (=> bm!106489 m!2025559))

(assert (=> b!1663428 m!2025549))

(assert (=> b!1663428 m!2024329))

(assert (=> b!1663428 m!2025537))

(assert (=> b!1663428 m!2025537))

(assert (=> b!1663428 m!2025545))

(assert (=> b!1663428 m!2025545))

(assert (=> b!1663428 m!2025557))

(assert (=> b!1663426 m!2024329))

(declare-fun m!2025561 () Bool)

(assert (=> b!1663426 m!2025561))

(assert (=> b!1662918 d!502491))

(declare-fun d!502493 () Bool)

(assert (=> d!502493 (= (seqFromList!2206 (originalCharacters!4047 (h!23748 tokens!457))) (fromListB!998 (originalCharacters!4047 (h!23748 tokens!457))))))

(declare-fun bs!397419 () Bool)

(assert (= bs!397419 d!502493))

(declare-fun m!2025563 () Bool)

(assert (=> bs!397419 m!2025563))

(assert (=> b!1662918 d!502493))

(declare-fun d!502495 () Bool)

(declare-fun lt!625897 () C!9296)

(assert (=> d!502495 (= lt!625897 (head!3710 (list!7325 lt!624969)))))

(declare-fun head!3714 (Conc!6114) C!9296)

(assert (=> d!502495 (= lt!625897 (head!3714 (c!270665 lt!624969)))))

(declare-fun isEmpty!11409 (BalanceConc!12172) Bool)

(assert (=> d!502495 (not (isEmpty!11409 lt!624969))))

(assert (=> d!502495 (= (head!3711 lt!624969) lt!625897)))

(declare-fun bs!397420 () Bool)

(assert (= bs!397420 d!502495))

(assert (=> bs!397420 m!2024375))

(assert (=> bs!397420 m!2024375))

(declare-fun m!2025565 () Bool)

(assert (=> bs!397420 m!2025565))

(declare-fun m!2025567 () Bool)

(assert (=> bs!397420 m!2025567))

(declare-fun m!2025569 () Bool)

(assert (=> bs!397420 m!2025569))

(assert (=> b!1662918 d!502495))

(declare-fun d!502497 () Bool)

(declare-fun c!270776 () Bool)

(assert (=> d!502497 (= c!270776 (isEmpty!11397 (++!4989 lt!624988 lt!624977)))))

(declare-fun e!1066362 () Bool)

(assert (=> d!502497 (= (prefixMatch!478 lt!624984 (++!4989 lt!624988 lt!624977)) e!1066362)))

(declare-fun b!1663438 () Bool)

(assert (=> b!1663438 (= e!1066362 (not (lostCause!476 lt!624984)))))

(declare-fun b!1663439 () Bool)

(assert (=> b!1663439 (= e!1066362 (prefixMatch!478 (derivativeStep!1126 lt!624984 (head!3710 (++!4989 lt!624988 lt!624977))) (tail!2479 (++!4989 lt!624988 lt!624977))))))

(assert (= (and d!502497 c!270776) b!1663438))

(assert (= (and d!502497 (not c!270776)) b!1663439))

(assert (=> d!502497 m!2024285))

(declare-fun m!2025571 () Bool)

(assert (=> d!502497 m!2025571))

(assert (=> b!1663438 m!2025487))

(assert (=> b!1663439 m!2024285))

(declare-fun m!2025573 () Bool)

(assert (=> b!1663439 m!2025573))

(assert (=> b!1663439 m!2025573))

(declare-fun m!2025575 () Bool)

(assert (=> b!1663439 m!2025575))

(assert (=> b!1663439 m!2024285))

(declare-fun m!2025577 () Bool)

(assert (=> b!1663439 m!2025577))

(assert (=> b!1663439 m!2025575))

(assert (=> b!1663439 m!2025577))

(declare-fun m!2025579 () Bool)

(assert (=> b!1663439 m!2025579))

(assert (=> b!1662919 d!502497))

(declare-fun b!1663441 () Bool)

(declare-fun e!1066364 () List!18416)

(assert (=> b!1663441 (= e!1066364 (Cons!18346 (h!23747 lt!624988) (++!4989 (t!151865 lt!624988) lt!624977)))))

(declare-fun b!1663440 () Bool)

(assert (=> b!1663440 (= e!1066364 lt!624977)))

(declare-fun b!1663443 () Bool)

(declare-fun e!1066363 () Bool)

(declare-fun lt!625898 () List!18416)

(assert (=> b!1663443 (= e!1066363 (or (not (= lt!624977 Nil!18346)) (= lt!625898 lt!624988)))))

(declare-fun b!1663442 () Bool)

(declare-fun res!746490 () Bool)

(assert (=> b!1663442 (=> (not res!746490) (not e!1066363))))

(assert (=> b!1663442 (= res!746490 (= (size!14594 lt!625898) (+ (size!14594 lt!624988) (size!14594 lt!624977))))))

(declare-fun d!502499 () Bool)

(assert (=> d!502499 e!1066363))

(declare-fun res!746489 () Bool)

(assert (=> d!502499 (=> (not res!746489) (not e!1066363))))

(assert (=> d!502499 (= res!746489 (= (content!2556 lt!625898) ((_ map or) (content!2556 lt!624988) (content!2556 lt!624977))))))

(assert (=> d!502499 (= lt!625898 e!1066364)))

(declare-fun c!270777 () Bool)

(assert (=> d!502499 (= c!270777 ((_ is Nil!18346) lt!624988))))

(assert (=> d!502499 (= (++!4989 lt!624988 lt!624977) lt!625898)))

(assert (= (and d!502499 c!270777) b!1663440))

(assert (= (and d!502499 (not c!270777)) b!1663441))

(assert (= (and d!502499 res!746489) b!1663442))

(assert (= (and b!1663442 res!746490) b!1663443))

(declare-fun m!2025581 () Bool)

(assert (=> b!1663441 m!2025581))

(declare-fun m!2025583 () Bool)

(assert (=> b!1663442 m!2025583))

(assert (=> b!1663442 m!2024925))

(declare-fun m!2025585 () Bool)

(assert (=> b!1663442 m!2025585))

(declare-fun m!2025587 () Bool)

(assert (=> d!502499 m!2025587))

(assert (=> d!502499 m!2024931))

(declare-fun m!2025589 () Bool)

(assert (=> d!502499 m!2025589))

(assert (=> b!1662919 d!502499))

(declare-fun d!502501 () Bool)

(assert (=> d!502501 (= (list!7325 lt!624978) (list!7330 (c!270665 lt!624978)))))

(declare-fun bs!397421 () Bool)

(assert (= bs!397421 d!502501))

(declare-fun m!2025591 () Bool)

(assert (=> bs!397421 m!2025591))

(assert (=> b!1662919 d!502501))

(declare-fun d!502503 () Bool)

(declare-fun c!270778 () Bool)

(assert (=> d!502503 (= c!270778 (isEmpty!11397 (++!4989 lt!624988 lt!624987)))))

(declare-fun e!1066365 () Bool)

(assert (=> d!502503 (= (prefixMatch!478 lt!624984 (++!4989 lt!624988 lt!624987)) e!1066365)))

(declare-fun b!1663444 () Bool)

(assert (=> b!1663444 (= e!1066365 (not (lostCause!476 lt!624984)))))

(declare-fun b!1663445 () Bool)

(assert (=> b!1663445 (= e!1066365 (prefixMatch!478 (derivativeStep!1126 lt!624984 (head!3710 (++!4989 lt!624988 lt!624987))) (tail!2479 (++!4989 lt!624988 lt!624987))))))

(assert (= (and d!502503 c!270778) b!1663444))

(assert (= (and d!502503 (not c!270778)) b!1663445))

(assert (=> d!502503 m!2024271))

(declare-fun m!2025593 () Bool)

(assert (=> d!502503 m!2025593))

(assert (=> b!1663444 m!2025487))

(assert (=> b!1663445 m!2024271))

(declare-fun m!2025595 () Bool)

(assert (=> b!1663445 m!2025595))

(assert (=> b!1663445 m!2025595))

(declare-fun m!2025597 () Bool)

(assert (=> b!1663445 m!2025597))

(assert (=> b!1663445 m!2024271))

(declare-fun m!2025599 () Bool)

(assert (=> b!1663445 m!2025599))

(assert (=> b!1663445 m!2025597))

(assert (=> b!1663445 m!2025599))

(declare-fun m!2025601 () Bool)

(assert (=> b!1663445 m!2025601))

(assert (=> b!1662921 d!502503))

(declare-fun b!1663447 () Bool)

(declare-fun e!1066367 () List!18416)

(assert (=> b!1663447 (= e!1066367 (Cons!18346 (h!23747 lt!624988) (++!4989 (t!151865 lt!624988) lt!624987)))))

(declare-fun b!1663446 () Bool)

(assert (=> b!1663446 (= e!1066367 lt!624987)))

(declare-fun e!1066366 () Bool)

(declare-fun b!1663449 () Bool)

(declare-fun lt!625899 () List!18416)

(assert (=> b!1663449 (= e!1066366 (or (not (= lt!624987 Nil!18346)) (= lt!625899 lt!624988)))))

(declare-fun b!1663448 () Bool)

(declare-fun res!746492 () Bool)

(assert (=> b!1663448 (=> (not res!746492) (not e!1066366))))

(assert (=> b!1663448 (= res!746492 (= (size!14594 lt!625899) (+ (size!14594 lt!624988) (size!14594 lt!624987))))))

(declare-fun d!502505 () Bool)

(assert (=> d!502505 e!1066366))

(declare-fun res!746491 () Bool)

(assert (=> d!502505 (=> (not res!746491) (not e!1066366))))

(assert (=> d!502505 (= res!746491 (= (content!2556 lt!625899) ((_ map or) (content!2556 lt!624988) (content!2556 lt!624987))))))

(assert (=> d!502505 (= lt!625899 e!1066367)))

(declare-fun c!270779 () Bool)

(assert (=> d!502505 (= c!270779 ((_ is Nil!18346) lt!624988))))

(assert (=> d!502505 (= (++!4989 lt!624988 lt!624987) lt!625899)))

(assert (= (and d!502505 c!270779) b!1663446))

(assert (= (and d!502505 (not c!270779)) b!1663447))

(assert (= (and d!502505 res!746491) b!1663448))

(assert (= (and b!1663448 res!746492) b!1663449))

(declare-fun m!2025603 () Bool)

(assert (=> b!1663447 m!2025603))

(declare-fun m!2025605 () Bool)

(assert (=> b!1663448 m!2025605))

(assert (=> b!1663448 m!2024925))

(assert (=> b!1663448 m!2025443))

(declare-fun m!2025607 () Bool)

(assert (=> d!502505 m!2025607))

(assert (=> d!502505 m!2024931))

(assert (=> d!502505 m!2025449))

(assert (=> b!1662921 d!502505))

(declare-fun d!502507 () Bool)

(declare-fun res!746497 () Bool)

(declare-fun e!1066370 () Bool)

(assert (=> d!502507 (=> (not res!746497) (not e!1066370))))

(assert (=> d!502507 (= res!746497 (not (isEmpty!11397 (originalCharacters!4047 (h!23748 tokens!457)))))))

(assert (=> d!502507 (= (inv!23690 (h!23748 tokens!457)) e!1066370)))

(declare-fun b!1663454 () Bool)

(declare-fun res!746498 () Bool)

(assert (=> b!1663454 (=> (not res!746498) (not e!1066370))))

(assert (=> b!1663454 (= res!746498 (= (originalCharacters!4047 (h!23748 tokens!457)) (list!7325 (dynLambda!8245 (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (value!101813 (h!23748 tokens!457))))))))

(declare-fun b!1663455 () Bool)

(assert (=> b!1663455 (= e!1066370 (= (size!14588 (h!23748 tokens!457)) (size!14594 (originalCharacters!4047 (h!23748 tokens!457)))))))

(assert (= (and d!502507 res!746497) b!1663454))

(assert (= (and b!1663454 res!746498) b!1663455))

(declare-fun b_lambda!52195 () Bool)

(assert (=> (not b_lambda!52195) (not b!1663454)))

(assert (=> b!1663454 t!151877))

(declare-fun b_and!118081 () Bool)

(assert (= b_and!118073 (and (=> t!151877 result!115124) b_and!118081)))

(assert (=> b!1663454 t!151879))

(declare-fun b_and!118083 () Bool)

(assert (= b_and!118075 (and (=> t!151879 result!115126) b_and!118083)))

(declare-fun m!2025609 () Bool)

(assert (=> d!502507 m!2025609))

(assert (=> b!1663454 m!2024941))

(assert (=> b!1663454 m!2024941))

(declare-fun m!2025611 () Bool)

(assert (=> b!1663454 m!2025611))

(assert (=> b!1663455 m!2025441))

(assert (=> b!1662920 d!502507))

(declare-fun d!502509 () Bool)

(declare-fun lt!625904 () Bool)

(declare-fun e!1066375 () Bool)

(assert (=> d!502509 (= lt!625904 e!1066375)))

(declare-fun res!746505 () Bool)

(assert (=> d!502509 (=> (not res!746505) (not e!1066375))))

(assert (=> d!502509 (= res!746505 (= (list!7326 (_1!10434 (lex!1346 thiss!17113 rules!1846 (print!1393 thiss!17113 (singletonSeq!1738 (h!23748 tokens!457)))))) (list!7326 (singletonSeq!1738 (h!23748 tokens!457)))))))

(declare-fun e!1066376 () Bool)

(assert (=> d!502509 (= lt!625904 e!1066376)))

(declare-fun res!746506 () Bool)

(assert (=> d!502509 (=> (not res!746506) (not e!1066376))))

(declare-fun lt!625905 () tuple2!18064)

(assert (=> d!502509 (= res!746506 (= (size!14593 (_1!10434 lt!625905)) 1))))

(assert (=> d!502509 (= lt!625905 (lex!1346 thiss!17113 rules!1846 (print!1393 thiss!17113 (singletonSeq!1738 (h!23748 tokens!457)))))))

(assert (=> d!502509 (not (isEmpty!11398 rules!1846))))

(assert (=> d!502509 (= (rulesProduceIndividualToken!1510 thiss!17113 rules!1846 (h!23748 tokens!457)) lt!625904)))

(declare-fun b!1663462 () Bool)

(declare-fun res!746507 () Bool)

(assert (=> b!1663462 (=> (not res!746507) (not e!1066376))))

(declare-fun apply!4915 (BalanceConc!12174 Int) Token!6032)

(assert (=> b!1663462 (= res!746507 (= (apply!4915 (_1!10434 lt!625905) 0) (h!23748 tokens!457)))))

(declare-fun b!1663463 () Bool)

(assert (=> b!1663463 (= e!1066376 (isEmpty!11409 (_2!10434 lt!625905)))))

(declare-fun b!1663464 () Bool)

(assert (=> b!1663464 (= e!1066375 (isEmpty!11409 (_2!10434 (lex!1346 thiss!17113 rules!1846 (print!1393 thiss!17113 (singletonSeq!1738 (h!23748 tokens!457)))))))))

(assert (= (and d!502509 res!746506) b!1663462))

(assert (= (and b!1663462 res!746507) b!1663463))

(assert (= (and d!502509 res!746505) b!1663464))

(assert (=> d!502509 m!2024389))

(declare-fun m!2025613 () Bool)

(assert (=> d!502509 m!2025613))

(assert (=> d!502509 m!2024389))

(declare-fun m!2025615 () Bool)

(assert (=> d!502509 m!2025615))

(assert (=> d!502509 m!2024389))

(declare-fun m!2025617 () Bool)

(assert (=> d!502509 m!2025617))

(assert (=> d!502509 m!2025615))

(declare-fun m!2025619 () Bool)

(assert (=> d!502509 m!2025619))

(declare-fun m!2025621 () Bool)

(assert (=> d!502509 m!2025621))

(assert (=> d!502509 m!2024275))

(declare-fun m!2025623 () Bool)

(assert (=> b!1663462 m!2025623))

(declare-fun m!2025625 () Bool)

(assert (=> b!1663463 m!2025625))

(assert (=> b!1663464 m!2024389))

(assert (=> b!1663464 m!2024389))

(assert (=> b!1663464 m!2025615))

(assert (=> b!1663464 m!2025615))

(assert (=> b!1663464 m!2025619))

(declare-fun m!2025627 () Bool)

(assert (=> b!1663464 m!2025627))

(assert (=> b!1662925 d!502509))

(declare-fun b!1663493 () Bool)

(declare-fun e!1066392 () Bool)

(declare-fun lt!625908 () Bool)

(assert (=> b!1663493 (= e!1066392 (not lt!625908))))

(declare-fun b!1663494 () Bool)

(declare-fun e!1066394 () Bool)

(declare-fun nullable!1359 (Regex!4561) Bool)

(assert (=> b!1663494 (= e!1066394 (nullable!1359 (regex!3233 (rule!5119 (h!23748 tokens!457)))))))

(declare-fun b!1663495 () Bool)

(declare-fun e!1066396 () Bool)

(declare-fun e!1066391 () Bool)

(assert (=> b!1663495 (= e!1066396 e!1066391)))

(declare-fun res!746524 () Bool)

(assert (=> b!1663495 (=> res!746524 e!1066391)))

(declare-fun call!106497 () Bool)

(assert (=> b!1663495 (= res!746524 call!106497)))

(declare-fun b!1663496 () Bool)

(declare-fun res!746527 () Bool)

(declare-fun e!1066397 () Bool)

(assert (=> b!1663496 (=> res!746527 e!1066397)))

(assert (=> b!1663496 (= res!746527 (not ((_ is ElementMatch!4561) (regex!3233 (rule!5119 (h!23748 tokens!457))))))))

(assert (=> b!1663496 (= e!1066392 e!1066397)))

(declare-fun b!1663497 () Bool)

(declare-fun res!746528 () Bool)

(assert (=> b!1663497 (=> res!746528 e!1066397)))

(declare-fun e!1066395 () Bool)

(assert (=> b!1663497 (= res!746528 e!1066395)))

(declare-fun res!746525 () Bool)

(assert (=> b!1663497 (=> (not res!746525) (not e!1066395))))

(assert (=> b!1663497 (= res!746525 lt!625908)))

(declare-fun b!1663498 () Bool)

(declare-fun res!746529 () Bool)

(assert (=> b!1663498 (=> (not res!746529) (not e!1066395))))

(assert (=> b!1663498 (= res!746529 (not call!106497))))

(declare-fun d!502511 () Bool)

(declare-fun e!1066393 () Bool)

(assert (=> d!502511 e!1066393))

(declare-fun c!270788 () Bool)

(assert (=> d!502511 (= c!270788 ((_ is EmptyExpr!4561) (regex!3233 (rule!5119 (h!23748 tokens!457)))))))

(assert (=> d!502511 (= lt!625908 e!1066394)))

(declare-fun c!270786 () Bool)

(assert (=> d!502511 (= c!270786 (isEmpty!11397 lt!624988))))

(assert (=> d!502511 (validRegex!1823 (regex!3233 (rule!5119 (h!23748 tokens!457))))))

(assert (=> d!502511 (= (matchR!2054 (regex!3233 (rule!5119 (h!23748 tokens!457))) lt!624988) lt!625908)))

(declare-fun bm!106492 () Bool)

(assert (=> bm!106492 (= call!106497 (isEmpty!11397 lt!624988))))

(declare-fun b!1663499 () Bool)

(assert (=> b!1663499 (= e!1066391 (not (= (head!3710 lt!624988) (c!270666 (regex!3233 (rule!5119 (h!23748 tokens!457)))))))))

(declare-fun b!1663500 () Bool)

(assert (=> b!1663500 (= e!1066397 e!1066396)))

(declare-fun res!746531 () Bool)

(assert (=> b!1663500 (=> (not res!746531) (not e!1066396))))

(assert (=> b!1663500 (= res!746531 (not lt!625908))))

(declare-fun b!1663501 () Bool)

(declare-fun res!746526 () Bool)

(assert (=> b!1663501 (=> (not res!746526) (not e!1066395))))

(assert (=> b!1663501 (= res!746526 (isEmpty!11397 (tail!2479 lt!624988)))))

(declare-fun b!1663502 () Bool)

(assert (=> b!1663502 (= e!1066394 (matchR!2054 (derivativeStep!1126 (regex!3233 (rule!5119 (h!23748 tokens!457))) (head!3710 lt!624988)) (tail!2479 lt!624988)))))

(declare-fun b!1663503 () Bool)

(assert (=> b!1663503 (= e!1066393 (= lt!625908 call!106497))))

(declare-fun b!1663504 () Bool)

(declare-fun res!746530 () Bool)

(assert (=> b!1663504 (=> res!746530 e!1066391)))

(assert (=> b!1663504 (= res!746530 (not (isEmpty!11397 (tail!2479 lt!624988))))))

(declare-fun b!1663505 () Bool)

(assert (=> b!1663505 (= e!1066393 e!1066392)))

(declare-fun c!270787 () Bool)

(assert (=> b!1663505 (= c!270787 ((_ is EmptyLang!4561) (regex!3233 (rule!5119 (h!23748 tokens!457)))))))

(declare-fun b!1663506 () Bool)

(assert (=> b!1663506 (= e!1066395 (= (head!3710 lt!624988) (c!270666 (regex!3233 (rule!5119 (h!23748 tokens!457))))))))

(assert (= (and d!502511 c!270786) b!1663494))

(assert (= (and d!502511 (not c!270786)) b!1663502))

(assert (= (and d!502511 c!270788) b!1663503))

(assert (= (and d!502511 (not c!270788)) b!1663505))

(assert (= (and b!1663505 c!270787) b!1663493))

(assert (= (and b!1663505 (not c!270787)) b!1663496))

(assert (= (and b!1663496 (not res!746527)) b!1663497))

(assert (= (and b!1663497 res!746525) b!1663498))

(assert (= (and b!1663498 res!746529) b!1663501))

(assert (= (and b!1663501 res!746526) b!1663506))

(assert (= (and b!1663497 (not res!746528)) b!1663500))

(assert (= (and b!1663500 res!746531) b!1663495))

(assert (= (and b!1663495 (not res!746524)) b!1663504))

(assert (= (and b!1663504 (not res!746530)) b!1663499))

(assert (= (or b!1663503 b!1663495 b!1663498) bm!106492))

(declare-fun m!2025629 () Bool)

(assert (=> b!1663494 m!2025629))

(declare-fun m!2025631 () Bool)

(assert (=> bm!106492 m!2025631))

(declare-fun m!2025633 () Bool)

(assert (=> b!1663504 m!2025633))

(assert (=> b!1663504 m!2025633))

(declare-fun m!2025635 () Bool)

(assert (=> b!1663504 m!2025635))

(declare-fun m!2025637 () Bool)

(assert (=> b!1663499 m!2025637))

(assert (=> d!502511 m!2025631))

(declare-fun m!2025639 () Bool)

(assert (=> d!502511 m!2025639))

(assert (=> b!1663501 m!2025633))

(assert (=> b!1663501 m!2025633))

(assert (=> b!1663501 m!2025635))

(assert (=> b!1663506 m!2025637))

(assert (=> b!1663502 m!2025637))

(assert (=> b!1663502 m!2025637))

(declare-fun m!2025641 () Bool)

(assert (=> b!1663502 m!2025641))

(assert (=> b!1663502 m!2025633))

(assert (=> b!1663502 m!2025641))

(assert (=> b!1663502 m!2025633))

(declare-fun m!2025643 () Bool)

(assert (=> b!1663502 m!2025643))

(assert (=> b!1662924 d!502511))

(declare-fun d!502513 () Bool)

(assert (=> d!502513 (= (isEmpty!11397 (_2!10433 lt!624962)) ((_ is Nil!18346) (_2!10433 lt!624962)))))

(assert (=> b!1662903 d!502513))

(declare-fun d!502515 () Bool)

(declare-fun c!270793 () Bool)

(assert (=> d!502515 (= c!270793 ((_ is IntegerValue!9969) (value!101813 (h!23748 tokens!457))))))

(declare-fun e!1066404 () Bool)

(assert (=> d!502515 (= (inv!21 (value!101813 (h!23748 tokens!457))) e!1066404)))

(declare-fun b!1663517 () Bool)

(declare-fun res!746534 () Bool)

(declare-fun e!1066405 () Bool)

(assert (=> b!1663517 (=> res!746534 e!1066405)))

(assert (=> b!1663517 (= res!746534 (not ((_ is IntegerValue!9971) (value!101813 (h!23748 tokens!457)))))))

(declare-fun e!1066406 () Bool)

(assert (=> b!1663517 (= e!1066406 e!1066405)))

(declare-fun b!1663518 () Bool)

(declare-fun inv!17 (TokenValue!3323) Bool)

(assert (=> b!1663518 (= e!1066406 (inv!17 (value!101813 (h!23748 tokens!457))))))

(declare-fun b!1663519 () Bool)

(declare-fun inv!16 (TokenValue!3323) Bool)

(assert (=> b!1663519 (= e!1066404 (inv!16 (value!101813 (h!23748 tokens!457))))))

(declare-fun b!1663520 () Bool)

(declare-fun inv!15 (TokenValue!3323) Bool)

(assert (=> b!1663520 (= e!1066405 (inv!15 (value!101813 (h!23748 tokens!457))))))

(declare-fun b!1663521 () Bool)

(assert (=> b!1663521 (= e!1066404 e!1066406)))

(declare-fun c!270794 () Bool)

(assert (=> b!1663521 (= c!270794 ((_ is IntegerValue!9970) (value!101813 (h!23748 tokens!457))))))

(assert (= (and d!502515 c!270793) b!1663519))

(assert (= (and d!502515 (not c!270793)) b!1663521))

(assert (= (and b!1663521 c!270794) b!1663518))

(assert (= (and b!1663521 (not c!270794)) b!1663517))

(assert (= (and b!1663517 (not res!746534)) b!1663520))

(declare-fun m!2025645 () Bool)

(assert (=> b!1663518 m!2025645))

(declare-fun m!2025647 () Bool)

(assert (=> b!1663519 m!2025647))

(declare-fun m!2025649 () Bool)

(assert (=> b!1663520 m!2025649))

(assert (=> b!1662926 d!502515))

(declare-fun d!502517 () Bool)

(assert (=> d!502517 (= (list!7326 (_1!10434 lt!624960)) (list!7329 (c!270667 (_1!10434 lt!624960))))))

(declare-fun bs!397422 () Bool)

(assert (= bs!397422 d!502517))

(declare-fun m!2025651 () Bool)

(assert (=> bs!397422 m!2025651))

(assert (=> b!1662905 d!502517))

(declare-fun d!502519 () Bool)

(declare-fun e!1066510 () Bool)

(assert (=> d!502519 e!1066510))

(declare-fun res!746600 () Bool)

(assert (=> d!502519 (=> (not res!746600) (not e!1066510))))

(assert (=> d!502519 (= res!746600 (= (list!7326 (_1!10434 (lex!1346 thiss!17113 rules!1846 (print!1393 thiss!17113 (seqFromList!2205 (t!151866 tokens!457)))))) (t!151866 tokens!457)))))

(declare-fun lt!626037 () Unit!31031)

(declare-fun e!1066511 () Unit!31031)

(assert (=> d!502519 (= lt!626037 e!1066511)))

(declare-fun c!270814 () Bool)

(assert (=> d!502519 (= c!270814 (or ((_ is Nil!18347) (t!151866 tokens!457)) ((_ is Nil!18347) (t!151866 (t!151866 tokens!457)))))))

(assert (=> d!502519 (not (isEmpty!11398 rules!1846))))

(assert (=> d!502519 (= (theoremInvertabilityWhenTokenListSeparable!305 thiss!17113 rules!1846 (t!151866 tokens!457)) lt!626037)))

(declare-fun b!1663681 () Bool)

(declare-fun Unit!31083 () Unit!31031)

(assert (=> b!1663681 (= e!1066511 Unit!31083)))

(declare-fun b!1663682 () Bool)

(declare-fun Unit!31084 () Unit!31031)

(assert (=> b!1663682 (= e!1066511 Unit!31084)))

(declare-fun lt!626034 () BalanceConc!12172)

(assert (=> b!1663682 (= lt!626034 (print!1393 thiss!17113 (seqFromList!2205 (t!151866 tokens!457))))))

(declare-fun lt!626048 () BalanceConc!12172)

(assert (=> b!1663682 (= lt!626048 (print!1393 thiss!17113 (seqFromList!2205 (t!151866 (t!151866 tokens!457)))))))

(declare-fun lt!626043 () tuple2!18064)

(assert (=> b!1663682 (= lt!626043 (lex!1346 thiss!17113 rules!1846 lt!626048))))

(declare-fun lt!626040 () List!18416)

(assert (=> b!1663682 (= lt!626040 (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457)))))))

(declare-fun lt!626052 () List!18416)

(assert (=> b!1663682 (= lt!626052 (list!7325 lt!626048))))

(declare-fun lt!626045 () Unit!31031)

(assert (=> b!1663682 (= lt!626045 (lemmaConcatTwoListThenFirstIsPrefix!1016 lt!626040 lt!626052))))

(assert (=> b!1663682 (isPrefix!1491 lt!626040 (++!4989 lt!626040 lt!626052))))

(declare-fun lt!626036 () Unit!31031)

(assert (=> b!1663682 (= lt!626036 lt!626045)))

(declare-fun lt!626033 () Unit!31031)

(assert (=> b!1663682 (= lt!626033 (theoremInvertabilityWhenTokenListSeparable!305 thiss!17113 rules!1846 (t!151866 (t!151866 tokens!457))))))

(declare-fun lt!626054 () Unit!31031)

(assert (=> b!1663682 (= lt!626054 (seqFromListBHdTlConstructive!308 (h!23748 (t!151866 (t!151866 tokens!457))) (t!151866 (t!151866 (t!151866 tokens!457))) (_1!10434 lt!626043)))))

(assert (=> b!1663682 (= (list!7326 (_1!10434 lt!626043)) (list!7326 (prepend!813 (seqFromList!2205 (t!151866 (t!151866 (t!151866 tokens!457)))) (h!23748 (t!151866 (t!151866 tokens!457))))))))

(declare-fun lt!626044 () Unit!31031)

(assert (=> b!1663682 (= lt!626044 lt!626054)))

(declare-fun lt!626041 () Option!3517)

(assert (=> b!1663682 (= lt!626041 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 lt!626034)))))

(assert (=> b!1663682 (= (print!1393 thiss!17113 (singletonSeq!1738 (h!23748 (t!151866 tokens!457)))) (printTailRec!913 thiss!17113 (singletonSeq!1738 (h!23748 (t!151866 tokens!457))) 0 (BalanceConc!12173 Empty!6114)))))

(declare-fun lt!626042 () Unit!31031)

(declare-fun Unit!31085 () Unit!31031)

(assert (=> b!1663682 (= lt!626042 Unit!31085)))

(declare-fun lt!626049 () Unit!31031)

(assert (=> b!1663682 (= lt!626049 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!430 thiss!17113 rules!1846 (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457)))) (list!7325 lt!626048)))))

(assert (=> b!1663682 (= (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457)))) (originalCharacters!4047 (h!23748 (t!151866 tokens!457))))))

(declare-fun lt!626053 () Unit!31031)

(declare-fun Unit!31086 () Unit!31031)

(assert (=> b!1663682 (= lt!626053 Unit!31086)))

(assert (=> b!1663682 (= (list!7325 (singletonSeq!1739 (apply!4908 (charsOf!1882 (h!23748 (t!151866 (t!151866 tokens!457)))) 0))) (Cons!18346 (head!3710 (originalCharacters!4047 (h!23748 (t!151866 (t!151866 tokens!457))))) Nil!18346))))

(declare-fun lt!626046 () Unit!31031)

(declare-fun Unit!31087 () Unit!31031)

(assert (=> b!1663682 (= lt!626046 Unit!31087)))

(assert (=> b!1663682 (= (list!7325 (singletonSeq!1739 (apply!4908 (charsOf!1882 (h!23748 (t!151866 (t!151866 tokens!457)))) 0))) (Cons!18346 (head!3710 (list!7325 lt!626048)) Nil!18346))))

(declare-fun lt!626050 () Unit!31031)

(declare-fun Unit!31088 () Unit!31031)

(assert (=> b!1663682 (= lt!626050 Unit!31088)))

(assert (=> b!1663682 (= (list!7325 (singletonSeq!1739 (apply!4908 (charsOf!1882 (h!23748 (t!151866 (t!151866 tokens!457)))) 0))) (Cons!18346 (head!3711 lt!626048) Nil!18346))))

(declare-fun lt!626051 () Unit!31031)

(declare-fun Unit!31089 () Unit!31031)

(assert (=> b!1663682 (= lt!626051 Unit!31089)))

(assert (=> b!1663682 (isDefined!2873 (maxPrefix!1424 thiss!17113 rules!1846 (originalCharacters!4047 (h!23748 (t!151866 tokens!457)))))))

(declare-fun lt!626047 () Unit!31031)

(declare-fun Unit!31090 () Unit!31031)

(assert (=> b!1663682 (= lt!626047 Unit!31090)))

(assert (=> b!1663682 (isDefined!2873 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457))))))))

(declare-fun lt!626039 () Unit!31031)

(declare-fun Unit!31091 () Unit!31031)

(assert (=> b!1663682 (= lt!626039 Unit!31091)))

(declare-fun lt!626055 () Unit!31031)

(declare-fun Unit!31092 () Unit!31031)

(assert (=> b!1663682 (= lt!626055 Unit!31092)))

(assert (=> b!1663682 (= (_1!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457))))))) (h!23748 (t!151866 tokens!457)))))

(declare-fun lt!626056 () Unit!31031)

(declare-fun Unit!31093 () Unit!31031)

(assert (=> b!1663682 (= lt!626056 Unit!31093)))

(assert (=> b!1663682 (isEmpty!11397 (_2!10433 (get!5369 (maxPrefix!1424 thiss!17113 rules!1846 (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457))))))))))

(declare-fun lt!626031 () Unit!31031)

(declare-fun Unit!31094 () Unit!31031)

(assert (=> b!1663682 (= lt!626031 Unit!31094)))

(assert (=> b!1663682 (matchR!2054 (regex!3233 (rule!5119 (h!23748 (t!151866 tokens!457)))) (list!7325 (charsOf!1882 (h!23748 (t!151866 tokens!457)))))))

(declare-fun lt!626038 () Unit!31031)

(declare-fun Unit!31095 () Unit!31031)

(assert (=> b!1663682 (= lt!626038 Unit!31095)))

(assert (=> b!1663682 (= (rule!5119 (h!23748 (t!151866 tokens!457))) (rule!5119 (h!23748 (t!151866 tokens!457))))))

(declare-fun lt!626032 () Unit!31031)

(declare-fun Unit!31096 () Unit!31031)

(assert (=> b!1663682 (= lt!626032 Unit!31096)))

(declare-fun lt!626035 () Unit!31031)

(assert (=> b!1663682 (= lt!626035 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!188 thiss!17113 rules!1846 (h!23748 (t!151866 tokens!457)) (rule!5119 (h!23748 (t!151866 tokens!457))) (list!7325 lt!626048)))))

(declare-fun b!1663683 () Bool)

(assert (=> b!1663683 (= e!1066510 (isEmpty!11409 (_2!10434 (lex!1346 thiss!17113 rules!1846 (print!1393 thiss!17113 (seqFromList!2205 (t!151866 tokens!457)))))))))

(assert (= (and d!502519 c!270814) b!1663681))

(assert (= (and d!502519 (not c!270814)) b!1663682))

(assert (= (and d!502519 res!746600) b!1663683))

(declare-fun m!2025893 () Bool)

(assert (=> d!502519 m!2025893))

(assert (=> d!502519 m!2024363))

(assert (=> d!502519 m!2024275))

(declare-fun m!2025895 () Bool)

(assert (=> d!502519 m!2025895))

(declare-fun m!2025897 () Bool)

(assert (=> d!502519 m!2025897))

(assert (=> d!502519 m!2024363))

(assert (=> d!502519 m!2025895))

(declare-fun m!2025899 () Bool)

(assert (=> b!1663682 m!2025899))

(declare-fun m!2025901 () Bool)

(assert (=> b!1663682 m!2025901))

(assert (=> b!1663682 m!2025899))

(assert (=> b!1663682 m!2024249))

(assert (=> b!1663682 m!2024859))

(declare-fun m!2025903 () Bool)

(assert (=> b!1663682 m!2025903))

(declare-fun m!2025905 () Bool)

(assert (=> b!1663682 m!2025905))

(declare-fun m!2025907 () Bool)

(assert (=> b!1663682 m!2025907))

(declare-fun m!2025909 () Bool)

(assert (=> b!1663682 m!2025909))

(declare-fun m!2025911 () Bool)

(assert (=> b!1663682 m!2025911))

(declare-fun m!2025913 () Bool)

(assert (=> b!1663682 m!2025913))

(declare-fun m!2025915 () Bool)

(assert (=> b!1663682 m!2025915))

(assert (=> b!1663682 m!2024363))

(assert (=> b!1663682 m!2025895))

(declare-fun m!2025917 () Bool)

(assert (=> b!1663682 m!2025917))

(assert (=> b!1663682 m!2025907))

(declare-fun m!2025919 () Bool)

(assert (=> b!1663682 m!2025919))

(declare-fun m!2025921 () Bool)

(assert (=> b!1663682 m!2025921))

(declare-fun m!2025923 () Bool)

(assert (=> b!1663682 m!2025923))

(assert (=> b!1663682 m!2024859))

(declare-fun m!2025925 () Bool)

(assert (=> b!1663682 m!2025925))

(assert (=> b!1663682 m!2025907))

(declare-fun m!2025927 () Bool)

(assert (=> b!1663682 m!2025927))

(assert (=> b!1663682 m!2025903))

(declare-fun m!2025929 () Bool)

(assert (=> b!1663682 m!2025929))

(declare-fun m!2025931 () Bool)

(assert (=> b!1663682 m!2025931))

(declare-fun m!2025933 () Bool)

(assert (=> b!1663682 m!2025933))

(assert (=> b!1663682 m!2025931))

(declare-fun m!2025935 () Bool)

(assert (=> b!1663682 m!2025935))

(assert (=> b!1663682 m!2025903))

(declare-fun m!2025937 () Bool)

(assert (=> b!1663682 m!2025937))

(assert (=> b!1663682 m!2025909))

(assert (=> b!1663682 m!2024253))

(assert (=> b!1663682 m!2024363))

(assert (=> b!1663682 m!2025917))

(assert (=> b!1663682 m!2025921))

(declare-fun m!2025939 () Bool)

(assert (=> b!1663682 m!2025939))

(declare-fun m!2025941 () Bool)

(assert (=> b!1663682 m!2025941))

(declare-fun m!2025943 () Bool)

(assert (=> b!1663682 m!2025943))

(assert (=> b!1663682 m!2025941))

(declare-fun m!2025945 () Bool)

(assert (=> b!1663682 m!2025945))

(declare-fun m!2025947 () Bool)

(assert (=> b!1663682 m!2025947))

(declare-fun m!2025949 () Bool)

(assert (=> b!1663682 m!2025949))

(assert (=> b!1663682 m!2024859))

(assert (=> b!1663682 m!2025931))

(assert (=> b!1663682 m!2024859))

(assert (=> b!1663682 m!2025903))

(declare-fun m!2025951 () Bool)

(assert (=> b!1663682 m!2025951))

(assert (=> b!1663682 m!2024253))

(declare-fun m!2025953 () Bool)

(assert (=> b!1663682 m!2025953))

(declare-fun m!2025955 () Bool)

(assert (=> b!1663682 m!2025955))

(declare-fun m!2025957 () Bool)

(assert (=> b!1663682 m!2025957))

(assert (=> b!1663682 m!2024249))

(assert (=> b!1663682 m!2025945))

(declare-fun m!2025959 () Bool)

(assert (=> b!1663682 m!2025959))

(assert (=> b!1663682 m!2025947))

(declare-fun m!2025961 () Bool)

(assert (=> b!1663682 m!2025961))

(assert (=> b!1663682 m!2025923))

(declare-fun m!2025963 () Bool)

(assert (=> b!1663682 m!2025963))

(assert (=> b!1663683 m!2024363))

(assert (=> b!1663683 m!2024363))

(assert (=> b!1663683 m!2025895))

(assert (=> b!1663683 m!2025895))

(assert (=> b!1663683 m!2025897))

(declare-fun m!2025965 () Bool)

(assert (=> b!1663683 m!2025965))

(assert (=> b!1662905 d!502519))

(declare-fun b!1663695 () Bool)

(declare-fun e!1066519 () Bool)

(assert (=> b!1663695 (= e!1066519 (>= (size!14594 lt!624980) (size!14594 lt!624988)))))

(declare-fun b!1663694 () Bool)

(declare-fun e!1066520 () Bool)

(assert (=> b!1663694 (= e!1066520 (isPrefix!1491 (tail!2479 lt!624988) (tail!2479 lt!624980)))))

(declare-fun d!502587 () Bool)

(assert (=> d!502587 e!1066519))

(declare-fun res!746609 () Bool)

(assert (=> d!502587 (=> res!746609 e!1066519)))

(declare-fun lt!626059 () Bool)

(assert (=> d!502587 (= res!746609 (not lt!626059))))

(declare-fun e!1066518 () Bool)

(assert (=> d!502587 (= lt!626059 e!1066518)))

(declare-fun res!746611 () Bool)

(assert (=> d!502587 (=> res!746611 e!1066518)))

(assert (=> d!502587 (= res!746611 ((_ is Nil!18346) lt!624988))))

(assert (=> d!502587 (= (isPrefix!1491 lt!624988 lt!624980) lt!626059)))

(declare-fun b!1663692 () Bool)

(assert (=> b!1663692 (= e!1066518 e!1066520)))

(declare-fun res!746612 () Bool)

(assert (=> b!1663692 (=> (not res!746612) (not e!1066520))))

(assert (=> b!1663692 (= res!746612 (not ((_ is Nil!18346) lt!624980)))))

(declare-fun b!1663693 () Bool)

(declare-fun res!746610 () Bool)

(assert (=> b!1663693 (=> (not res!746610) (not e!1066520))))

(assert (=> b!1663693 (= res!746610 (= (head!3710 lt!624988) (head!3710 lt!624980)))))

(assert (= (and d!502587 (not res!746611)) b!1663692))

(assert (= (and b!1663692 res!746612) b!1663693))

(assert (= (and b!1663693 res!746610) b!1663694))

(assert (= (and d!502587 (not res!746609)) b!1663695))

(declare-fun m!2025967 () Bool)

(assert (=> b!1663695 m!2025967))

(assert (=> b!1663695 m!2024925))

(assert (=> b!1663694 m!2025633))

(declare-fun m!2025969 () Bool)

(assert (=> b!1663694 m!2025969))

(assert (=> b!1663694 m!2025633))

(assert (=> b!1663694 m!2025969))

(declare-fun m!2025971 () Bool)

(assert (=> b!1663694 m!2025971))

(assert (=> b!1663693 m!2025637))

(declare-fun m!2025973 () Bool)

(assert (=> b!1663693 m!2025973))

(assert (=> b!1662905 d!502587))

(declare-fun d!502589 () Bool)

(assert (=> d!502589 (isPrefix!1491 lt!624988 (++!4989 lt!624988 lt!624973))))

(declare-fun lt!626062 () Unit!31031)

(declare-fun choose!10009 (List!18416 List!18416) Unit!31031)

(assert (=> d!502589 (= lt!626062 (choose!10009 lt!624988 lt!624973))))

(assert (=> d!502589 (= (lemmaConcatTwoListThenFirstIsPrefix!1016 lt!624988 lt!624973) lt!626062)))

(declare-fun bs!397440 () Bool)

(assert (= bs!397440 d!502589))

(assert (=> bs!397440 m!2024371))

(assert (=> bs!397440 m!2024371))

(declare-fun m!2025975 () Bool)

(assert (=> bs!397440 m!2025975))

(declare-fun m!2025977 () Bool)

(assert (=> bs!397440 m!2025977))

(assert (=> b!1662905 d!502589))

(declare-fun d!502591 () Bool)

(declare-fun lt!626077 () BalanceConc!12172)

(declare-fun printListTailRec!409 (LexerInterface!2862 List!18417 List!18416) List!18416)

(declare-fun dropList!706 (BalanceConc!12174 Int) List!18417)

(assert (=> d!502591 (= (list!7325 lt!626077) (printListTailRec!409 thiss!17113 (dropList!706 lt!624986 0) (list!7325 (BalanceConc!12173 Empty!6114))))))

(declare-fun e!1066526 () BalanceConc!12172)

(assert (=> d!502591 (= lt!626077 e!1066526)))

(declare-fun c!270817 () Bool)

(assert (=> d!502591 (= c!270817 (>= 0 (size!14593 lt!624986)))))

(declare-fun e!1066525 () Bool)

(assert (=> d!502591 e!1066525))

(declare-fun res!746615 () Bool)

(assert (=> d!502591 (=> (not res!746615) (not e!1066525))))

(assert (=> d!502591 (= res!746615 (>= 0 0))))

(assert (=> d!502591 (= (printTailRec!913 thiss!17113 lt!624986 0 (BalanceConc!12173 Empty!6114)) lt!626077)))

(declare-fun b!1663702 () Bool)

(assert (=> b!1663702 (= e!1066525 (<= 0 (size!14593 lt!624986)))))

(declare-fun b!1663703 () Bool)

(assert (=> b!1663703 (= e!1066526 (BalanceConc!12173 Empty!6114))))

(declare-fun b!1663704 () Bool)

(assert (=> b!1663704 (= e!1066526 (printTailRec!913 thiss!17113 lt!624986 (+ 0 1) (++!4990 (BalanceConc!12173 Empty!6114) (charsOf!1882 (apply!4915 lt!624986 0)))))))

(declare-fun lt!626080 () List!18417)

(assert (=> b!1663704 (= lt!626080 (list!7326 lt!624986))))

(declare-fun lt!626079 () Unit!31031)

(declare-fun lemmaDropApply!616 (List!18417 Int) Unit!31031)

(assert (=> b!1663704 (= lt!626079 (lemmaDropApply!616 lt!626080 0))))

(declare-fun drop!932 (List!18417 Int) List!18417)

(declare-fun apply!4918 (List!18417 Int) Token!6032)

(assert (=> b!1663704 (= (head!3713 (drop!932 lt!626080 0)) (apply!4918 lt!626080 0))))

(declare-fun lt!626081 () Unit!31031)

(assert (=> b!1663704 (= lt!626081 lt!626079)))

(declare-fun lt!626078 () List!18417)

(assert (=> b!1663704 (= lt!626078 (list!7326 lt!624986))))

(declare-fun lt!626083 () Unit!31031)

(declare-fun lemmaDropTail!596 (List!18417 Int) Unit!31031)

(assert (=> b!1663704 (= lt!626083 (lemmaDropTail!596 lt!626078 0))))

(declare-fun tail!2480 (List!18417) List!18417)

(assert (=> b!1663704 (= (tail!2480 (drop!932 lt!626078 0)) (drop!932 lt!626078 (+ 0 1)))))

(declare-fun lt!626082 () Unit!31031)

(assert (=> b!1663704 (= lt!626082 lt!626083)))

(assert (= (and d!502591 res!746615) b!1663702))

(assert (= (and d!502591 c!270817) b!1663703))

(assert (= (and d!502591 (not c!270817)) b!1663704))

(declare-fun m!2025979 () Bool)

(assert (=> d!502591 m!2025979))

(declare-fun m!2025981 () Bool)

(assert (=> d!502591 m!2025981))

(declare-fun m!2025983 () Bool)

(assert (=> d!502591 m!2025983))

(assert (=> d!502591 m!2025979))

(declare-fun m!2025985 () Bool)

(assert (=> d!502591 m!2025985))

(assert (=> d!502591 m!2025983))

(declare-fun m!2025987 () Bool)

(assert (=> d!502591 m!2025987))

(assert (=> b!1663702 m!2025987))

(declare-fun m!2025989 () Bool)

(assert (=> b!1663704 m!2025989))

(declare-fun m!2025991 () Bool)

(assert (=> b!1663704 m!2025991))

(declare-fun m!2025993 () Bool)

(assert (=> b!1663704 m!2025993))

(assert (=> b!1663704 m!2025991))

(declare-fun m!2025995 () Bool)

(assert (=> b!1663704 m!2025995))

(declare-fun m!2025997 () Bool)

(assert (=> b!1663704 m!2025997))

(declare-fun m!2025999 () Bool)

(assert (=> b!1663704 m!2025999))

(assert (=> b!1663704 m!2025989))

(declare-fun m!2026001 () Bool)

(assert (=> b!1663704 m!2026001))

(declare-fun m!2026003 () Bool)

(assert (=> b!1663704 m!2026003))

(assert (=> b!1663704 m!2025993))

(assert (=> b!1663704 m!2025997))

(declare-fun m!2026005 () Bool)

(assert (=> b!1663704 m!2026005))

(assert (=> b!1663704 m!2025995))

(declare-fun m!2026007 () Bool)

(assert (=> b!1663704 m!2026007))

(declare-fun m!2026009 () Bool)

(assert (=> b!1663704 m!2026009))

(declare-fun m!2026011 () Bool)

(assert (=> b!1663704 m!2026011))

(declare-fun m!2026013 () Bool)

(assert (=> b!1663704 m!2026013))

(assert (=> b!1662904 d!502591))

(declare-fun d!502593 () Bool)

(declare-fun lt!626084 () BalanceConc!12172)

(assert (=> d!502593 (= (list!7325 lt!626084) (printList!975 thiss!17113 (list!7326 lt!624986)))))

(assert (=> d!502593 (= lt!626084 (printTailRec!913 thiss!17113 lt!624986 0 (BalanceConc!12173 Empty!6114)))))

(assert (=> d!502593 (= (print!1393 thiss!17113 lt!624986) lt!626084)))

(declare-fun bs!397441 () Bool)

(assert (= bs!397441 d!502593))

(declare-fun m!2026015 () Bool)

(assert (=> bs!397441 m!2026015))

(assert (=> bs!397441 m!2026011))

(assert (=> bs!397441 m!2026011))

(declare-fun m!2026017 () Bool)

(assert (=> bs!397441 m!2026017))

(assert (=> bs!397441 m!2024381))

(assert (=> b!1662904 d!502593))

(declare-fun d!502595 () Bool)

(assert (=> d!502595 (= (list!7325 lt!624974) (list!7330 (c!270665 lt!624974)))))

(declare-fun bs!397442 () Bool)

(assert (= bs!397442 d!502595))

(declare-fun m!2026019 () Bool)

(assert (=> bs!397442 m!2026019))

(assert (=> b!1662904 d!502595))

(declare-fun d!502597 () Bool)

(declare-fun c!270820 () Bool)

(assert (=> d!502597 (= c!270820 ((_ is Cons!18347) (Cons!18347 (h!23748 tokens!457) Nil!18347)))))

(declare-fun e!1066529 () List!18416)

(assert (=> d!502597 (= (printList!975 thiss!17113 (Cons!18347 (h!23748 tokens!457) Nil!18347)) e!1066529)))

(declare-fun b!1663709 () Bool)

(assert (=> b!1663709 (= e!1066529 (++!4989 (list!7325 (charsOf!1882 (h!23748 (Cons!18347 (h!23748 tokens!457) Nil!18347)))) (printList!975 thiss!17113 (t!151866 (Cons!18347 (h!23748 tokens!457) Nil!18347)))))))

(declare-fun b!1663710 () Bool)

(assert (=> b!1663710 (= e!1066529 Nil!18346)))

(assert (= (and d!502597 c!270820) b!1663709))

(assert (= (and d!502597 (not c!270820)) b!1663710))

(declare-fun m!2026021 () Bool)

(assert (=> b!1663709 m!2026021))

(assert (=> b!1663709 m!2026021))

(declare-fun m!2026023 () Bool)

(assert (=> b!1663709 m!2026023))

(declare-fun m!2026025 () Bool)

(assert (=> b!1663709 m!2026025))

(assert (=> b!1663709 m!2026023))

(assert (=> b!1663709 m!2026025))

(declare-fun m!2026027 () Bool)

(assert (=> b!1663709 m!2026027))

(assert (=> b!1662904 d!502597))

(declare-fun b!1663711 () Bool)

(declare-fun res!746619 () Bool)

(declare-fun e!1066530 () Bool)

(assert (=> b!1663711 (=> (not res!746619) (not e!1066530))))

(declare-fun lt!626085 () Option!3517)

(assert (=> b!1663711 (= res!746619 (< (size!14594 (_2!10433 (get!5369 lt!626085))) (size!14594 lt!624982)))))

(declare-fun bm!106497 () Bool)

(declare-fun call!106502 () Option!3517)

(assert (=> bm!106497 (= call!106502 (maxPrefixOneRule!827 thiss!17113 (h!23749 rules!1846) lt!624982))))

(declare-fun b!1663712 () Bool)

(assert (=> b!1663712 (= e!1066530 (contains!3202 rules!1846 (rule!5119 (_1!10433 (get!5369 lt!626085)))))))

(declare-fun b!1663713 () Bool)

(declare-fun res!746620 () Bool)

(assert (=> b!1663713 (=> (not res!746620) (not e!1066530))))

(assert (=> b!1663713 (= res!746620 (= (++!4989 (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!626085)))) (_2!10433 (get!5369 lt!626085))) lt!624982))))

(declare-fun b!1663715 () Bool)

(declare-fun e!1066532 () Bool)

(assert (=> b!1663715 (= e!1066532 e!1066530)))

(declare-fun res!746616 () Bool)

(assert (=> b!1663715 (=> (not res!746616) (not e!1066530))))

(assert (=> b!1663715 (= res!746616 (isDefined!2873 lt!626085))))

(declare-fun b!1663716 () Bool)

(declare-fun e!1066531 () Option!3517)

(assert (=> b!1663716 (= e!1066531 call!106502)))

(declare-fun b!1663717 () Bool)

(declare-fun res!746622 () Bool)

(assert (=> b!1663717 (=> (not res!746622) (not e!1066530))))

(assert (=> b!1663717 (= res!746622 (= (value!101813 (_1!10433 (get!5369 lt!626085))) (apply!4914 (transformation!3233 (rule!5119 (_1!10433 (get!5369 lt!626085)))) (seqFromList!2206 (originalCharacters!4047 (_1!10433 (get!5369 lt!626085)))))))))

(declare-fun b!1663718 () Bool)

(declare-fun res!746621 () Bool)

(assert (=> b!1663718 (=> (not res!746621) (not e!1066530))))

(assert (=> b!1663718 (= res!746621 (matchR!2054 (regex!3233 (rule!5119 (_1!10433 (get!5369 lt!626085)))) (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!626085))))))))

(declare-fun b!1663719 () Bool)

(declare-fun lt!626087 () Option!3517)

(declare-fun lt!626088 () Option!3517)

(assert (=> b!1663719 (= e!1066531 (ite (and ((_ is None!3516) lt!626087) ((_ is None!3516) lt!626088)) None!3516 (ite ((_ is None!3516) lt!626088) lt!626087 (ite ((_ is None!3516) lt!626087) lt!626088 (ite (>= (size!14588 (_1!10433 (v!24741 lt!626087))) (size!14588 (_1!10433 (v!24741 lt!626088)))) lt!626087 lt!626088)))))))

(assert (=> b!1663719 (= lt!626087 call!106502)))

(assert (=> b!1663719 (= lt!626088 (maxPrefix!1424 thiss!17113 (t!151867 rules!1846) lt!624982))))

(declare-fun b!1663714 () Bool)

(declare-fun res!746618 () Bool)

(assert (=> b!1663714 (=> (not res!746618) (not e!1066530))))

(assert (=> b!1663714 (= res!746618 (= (list!7325 (charsOf!1882 (_1!10433 (get!5369 lt!626085)))) (originalCharacters!4047 (_1!10433 (get!5369 lt!626085)))))))

(declare-fun d!502599 () Bool)

(assert (=> d!502599 e!1066532))

(declare-fun res!746617 () Bool)

(assert (=> d!502599 (=> res!746617 e!1066532)))

(assert (=> d!502599 (= res!746617 (isEmpty!11403 lt!626085))))

(assert (=> d!502599 (= lt!626085 e!1066531)))

(declare-fun c!270821 () Bool)

(assert (=> d!502599 (= c!270821 (and ((_ is Cons!18348) rules!1846) ((_ is Nil!18348) (t!151867 rules!1846))))))

(declare-fun lt!626086 () Unit!31031)

(declare-fun lt!626089 () Unit!31031)

(assert (=> d!502599 (= lt!626086 lt!626089)))

(assert (=> d!502599 (isPrefix!1491 lt!624982 lt!624982)))

(assert (=> d!502599 (= lt!626089 (lemmaIsPrefixRefl!1012 lt!624982 lt!624982))))

(assert (=> d!502599 (rulesValidInductive!1034 thiss!17113 rules!1846)))

(assert (=> d!502599 (= (maxPrefix!1424 thiss!17113 rules!1846 lt!624982) lt!626085)))

(assert (= (and d!502599 c!270821) b!1663716))

(assert (= (and d!502599 (not c!270821)) b!1663719))

(assert (= (or b!1663716 b!1663719) bm!106497))

(assert (= (and d!502599 (not res!746617)) b!1663715))

(assert (= (and b!1663715 res!746616) b!1663714))

(assert (= (and b!1663714 res!746618) b!1663711))

(assert (= (and b!1663711 res!746619) b!1663713))

(assert (= (and b!1663713 res!746620) b!1663717))

(assert (= (and b!1663717 res!746622) b!1663718))

(assert (= (and b!1663718 res!746621) b!1663712))

(declare-fun m!2026029 () Bool)

(assert (=> b!1663714 m!2026029))

(declare-fun m!2026031 () Bool)

(assert (=> b!1663714 m!2026031))

(assert (=> b!1663714 m!2026031))

(declare-fun m!2026033 () Bool)

(assert (=> b!1663714 m!2026033))

(declare-fun m!2026035 () Bool)

(assert (=> d!502599 m!2026035))

(assert (=> d!502599 m!2024627))

(assert (=> d!502599 m!2024629))

(assert (=> d!502599 m!2024631))

(assert (=> b!1663711 m!2026029))

(declare-fun m!2026037 () Bool)

(assert (=> b!1663711 m!2026037))

(declare-fun m!2026039 () Bool)

(assert (=> b!1663711 m!2026039))

(assert (=> b!1663718 m!2026029))

(assert (=> b!1663718 m!2026031))

(assert (=> b!1663718 m!2026031))

(assert (=> b!1663718 m!2026033))

(assert (=> b!1663718 m!2026033))

(declare-fun m!2026041 () Bool)

(assert (=> b!1663718 m!2026041))

(assert (=> b!1663712 m!2026029))

(declare-fun m!2026043 () Bool)

(assert (=> b!1663712 m!2026043))

(declare-fun m!2026045 () Bool)

(assert (=> b!1663715 m!2026045))

(assert (=> b!1663713 m!2026029))

(assert (=> b!1663713 m!2026031))

(assert (=> b!1663713 m!2026031))

(assert (=> b!1663713 m!2026033))

(assert (=> b!1663713 m!2026033))

(declare-fun m!2026047 () Bool)

(assert (=> b!1663713 m!2026047))

(assert (=> b!1663717 m!2026029))

(declare-fun m!2026049 () Bool)

(assert (=> b!1663717 m!2026049))

(assert (=> b!1663717 m!2026049))

(declare-fun m!2026051 () Bool)

(assert (=> b!1663717 m!2026051))

(declare-fun m!2026053 () Bool)

(assert (=> bm!106497 m!2026053))

(declare-fun m!2026055 () Bool)

(assert (=> b!1663719 m!2026055))

(assert (=> b!1662904 d!502599))

(declare-fun d!502601 () Bool)

(declare-fun e!1066535 () Bool)

(assert (=> d!502601 e!1066535))

(declare-fun res!746625 () Bool)

(assert (=> d!502601 (=> (not res!746625) (not e!1066535))))

(declare-fun lt!626092 () BalanceConc!12174)

(assert (=> d!502601 (= res!746625 (= (list!7326 lt!626092) (Cons!18347 (h!23748 tokens!457) Nil!18347)))))

(declare-fun singleton!768 (Token!6032) BalanceConc!12174)

(assert (=> d!502601 (= lt!626092 (singleton!768 (h!23748 tokens!457)))))

(assert (=> d!502601 (= (singletonSeq!1738 (h!23748 tokens!457)) lt!626092)))

(declare-fun b!1663722 () Bool)

(assert (=> b!1663722 (= e!1066535 (isBalanced!1892 (c!270667 lt!626092)))))

(assert (= (and d!502601 res!746625) b!1663722))

(declare-fun m!2026057 () Bool)

(assert (=> d!502601 m!2026057))

(declare-fun m!2026059 () Bool)

(assert (=> d!502601 m!2026059))

(declare-fun m!2026061 () Bool)

(assert (=> b!1663722 m!2026061))

(assert (=> b!1662904 d!502601))

(declare-fun d!502603 () Bool)

(assert (=> d!502603 (= (head!3710 (originalCharacters!4047 (h!23748 (t!151866 tokens!457)))) (h!23747 (originalCharacters!4047 (h!23748 (t!151866 tokens!457)))))))

(assert (=> b!1662906 d!502603))

(declare-fun d!502605 () Bool)

(assert (=> d!502605 (= (list!7325 (_2!10435 lt!624983)) (list!7330 (c!270665 (_2!10435 lt!624983))))))

(declare-fun bs!397443 () Bool)

(assert (= bs!397443 d!502605))

(declare-fun m!2026063 () Bool)

(assert (=> bs!397443 m!2026063))

(assert (=> b!1662927 d!502605))

(declare-fun b!1663727 () Bool)

(declare-fun e!1066538 () Bool)

(declare-fun tp_is_empty!7397 () Bool)

(declare-fun tp!479573 () Bool)

(assert (=> b!1663727 (= e!1066538 (and tp_is_empty!7397 tp!479573))))

(assert (=> b!1662926 (= tp!479511 e!1066538)))

(assert (= (and b!1662926 ((_ is Cons!18346) (originalCharacters!4047 (h!23748 tokens!457)))) b!1663727))

(declare-fun b!1663739 () Bool)

(declare-fun e!1066541 () Bool)

(declare-fun tp!479586 () Bool)

(declare-fun tp!479584 () Bool)

(assert (=> b!1663739 (= e!1066541 (and tp!479586 tp!479584))))

(assert (=> b!1662937 (= tp!479504 e!1066541)))

(declare-fun b!1663741 () Bool)

(declare-fun tp!479588 () Bool)

(declare-fun tp!479585 () Bool)

(assert (=> b!1663741 (= e!1066541 (and tp!479588 tp!479585))))

(declare-fun b!1663740 () Bool)

(declare-fun tp!479587 () Bool)

(assert (=> b!1663740 (= e!1066541 tp!479587)))

(declare-fun b!1663738 () Bool)

(assert (=> b!1663738 (= e!1066541 tp_is_empty!7397)))

(assert (= (and b!1662937 ((_ is ElementMatch!4561) (regex!3233 (rule!5119 (h!23748 tokens!457))))) b!1663738))

(assert (= (and b!1662937 ((_ is Concat!7885) (regex!3233 (rule!5119 (h!23748 tokens!457))))) b!1663739))

(assert (= (and b!1662937 ((_ is Star!4561) (regex!3233 (rule!5119 (h!23748 tokens!457))))) b!1663740))

(assert (= (and b!1662937 ((_ is Union!4561) (regex!3233 (rule!5119 (h!23748 tokens!457))))) b!1663741))

(declare-fun b!1663755 () Bool)

(declare-fun b_free!45191 () Bool)

(declare-fun b_next!45895 () Bool)

(assert (=> b!1663755 (= b_free!45191 (not b_next!45895))))

(declare-fun tp!479602 () Bool)

(declare-fun b_and!118101 () Bool)

(assert (=> b!1663755 (= tp!479602 b_and!118101)))

(declare-fun b_free!45193 () Bool)

(declare-fun b_next!45897 () Bool)

(assert (=> b!1663755 (= b_free!45193 (not b_next!45897))))

(declare-fun t!151903 () Bool)

(declare-fun tb!95295 () Bool)

(assert (=> (and b!1663755 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457)))))) t!151903) tb!95295))

(declare-fun result!115160 () Bool)

(assert (= result!115160 result!115118))

(assert (=> d!502383 t!151903))

(declare-fun t!151905 () Bool)

(declare-fun tb!95297 () Bool)

(assert (=> (and b!1663755 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457))))) t!151905) tb!95297))

(declare-fun result!115162 () Bool)

(assert (= result!115162 result!115124))

(assert (=> d!502405 t!151905))

(assert (=> b!1663454 t!151905))

(declare-fun b_and!118103 () Bool)

(declare-fun tp!479603 () Bool)

(assert (=> b!1663755 (= tp!479603 (and (=> t!151903 result!115160) (=> t!151905 result!115162) b_and!118103))))

(declare-fun e!1066557 () Bool)

(assert (=> b!1663755 (= e!1066557 (and tp!479602 tp!479603))))

(declare-fun e!1066559 () Bool)

(assert (=> b!1662920 (= tp!479510 e!1066559)))

(declare-fun b!1663754 () Bool)

(declare-fun e!1066555 () Bool)

(declare-fun tp!479600 () Bool)

(assert (=> b!1663754 (= e!1066555 (and tp!479600 (inv!23687 (tag!3517 (rule!5119 (h!23748 (t!151866 tokens!457))))) (inv!23691 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) e!1066557))))

(declare-fun tp!479599 () Bool)

(declare-fun b!1663753 () Bool)

(declare-fun e!1066556 () Bool)

(assert (=> b!1663753 (= e!1066556 (and (inv!21 (value!101813 (h!23748 (t!151866 tokens!457)))) e!1066555 tp!479599))))

(declare-fun tp!479601 () Bool)

(declare-fun b!1663752 () Bool)

(assert (=> b!1663752 (= e!1066559 (and (inv!23690 (h!23748 (t!151866 tokens!457))) e!1066556 tp!479601))))

(assert (= b!1663754 b!1663755))

(assert (= b!1663753 b!1663754))

(assert (= b!1663752 b!1663753))

(assert (= (and b!1662920 ((_ is Cons!18347) (t!151866 tokens!457))) b!1663752))

(declare-fun m!2026065 () Bool)

(assert (=> b!1663754 m!2026065))

(declare-fun m!2026067 () Bool)

(assert (=> b!1663754 m!2026067))

(declare-fun m!2026069 () Bool)

(assert (=> b!1663753 m!2026069))

(declare-fun m!2026071 () Bool)

(assert (=> b!1663752 m!2026071))

(declare-fun b!1663766 () Bool)

(declare-fun b_free!45195 () Bool)

(declare-fun b_next!45899 () Bool)

(assert (=> b!1663766 (= b_free!45195 (not b_next!45899))))

(declare-fun tp!479614 () Bool)

(declare-fun b_and!118105 () Bool)

(assert (=> b!1663766 (= tp!479614 b_and!118105)))

(declare-fun b_free!45197 () Bool)

(declare-fun b_next!45901 () Bool)

(assert (=> b!1663766 (= b_free!45197 (not b_next!45901))))

(declare-fun tb!95299 () Bool)

(declare-fun t!151907 () Bool)

(assert (=> (and b!1663766 (= (toChars!4547 (transformation!3233 (h!23749 (t!151867 rules!1846)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457)))))) t!151907) tb!95299))

(declare-fun result!115166 () Bool)

(assert (= result!115166 result!115118))

(assert (=> d!502383 t!151907))

(declare-fun tb!95301 () Bool)

(declare-fun t!151909 () Bool)

(assert (=> (and b!1663766 (= (toChars!4547 (transformation!3233 (h!23749 (t!151867 rules!1846)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457))))) t!151909) tb!95301))

(declare-fun result!115168 () Bool)

(assert (= result!115168 result!115124))

(assert (=> d!502405 t!151909))

(assert (=> b!1663454 t!151909))

(declare-fun tp!479612 () Bool)

(declare-fun b_and!118107 () Bool)

(assert (=> b!1663766 (= tp!479612 (and (=> t!151907 result!115166) (=> t!151909 result!115168) b_and!118107))))

(declare-fun e!1066571 () Bool)

(assert (=> b!1663766 (= e!1066571 (and tp!479614 tp!479612))))

(declare-fun tp!479615 () Bool)

(declare-fun b!1663765 () Bool)

(declare-fun e!1066568 () Bool)

(assert (=> b!1663765 (= e!1066568 (and tp!479615 (inv!23687 (tag!3517 (h!23749 (t!151867 rules!1846)))) (inv!23691 (transformation!3233 (h!23749 (t!151867 rules!1846)))) e!1066571))))

(declare-fun b!1663764 () Bool)

(declare-fun e!1066570 () Bool)

(declare-fun tp!479613 () Bool)

(assert (=> b!1663764 (= e!1066570 (and e!1066568 tp!479613))))

(assert (=> b!1662922 (= tp!479507 e!1066570)))

(assert (= b!1663765 b!1663766))

(assert (= b!1663764 b!1663765))

(assert (= (and b!1662922 ((_ is Cons!18348) (t!151867 rules!1846))) b!1663764))

(declare-fun m!2026073 () Bool)

(assert (=> b!1663765 m!2026073))

(declare-fun m!2026075 () Bool)

(assert (=> b!1663765 m!2026075))

(declare-fun b!1663768 () Bool)

(declare-fun e!1066572 () Bool)

(declare-fun tp!479618 () Bool)

(declare-fun tp!479616 () Bool)

(assert (=> b!1663768 (= e!1066572 (and tp!479618 tp!479616))))

(assert (=> b!1662932 (= tp!479505 e!1066572)))

(declare-fun b!1663770 () Bool)

(declare-fun tp!479620 () Bool)

(declare-fun tp!479617 () Bool)

(assert (=> b!1663770 (= e!1066572 (and tp!479620 tp!479617))))

(declare-fun b!1663769 () Bool)

(declare-fun tp!479619 () Bool)

(assert (=> b!1663769 (= e!1066572 tp!479619)))

(declare-fun b!1663767 () Bool)

(assert (=> b!1663767 (= e!1066572 tp_is_empty!7397)))

(assert (= (and b!1662932 ((_ is ElementMatch!4561) (regex!3233 (h!23749 rules!1846)))) b!1663767))

(assert (= (and b!1662932 ((_ is Concat!7885) (regex!3233 (h!23749 rules!1846)))) b!1663768))

(assert (= (and b!1662932 ((_ is Star!4561) (regex!3233 (h!23749 rules!1846)))) b!1663769))

(assert (= (and b!1662932 ((_ is Union!4561) (regex!3233 (h!23749 rules!1846)))) b!1663770))

(declare-fun b_lambda!52207 () Bool)

(assert (= b_lambda!52189 (or (and b!1662935 b_free!45177 (= (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))))) (and b!1662923 b_free!45181 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))))) (and b!1663755 b_free!45193) (and b!1663766 b_free!45197 (= (toChars!4547 (transformation!3233 (h!23749 (t!151867 rules!1846)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))))) b_lambda!52207)))

(declare-fun b_lambda!52209 () Bool)

(assert (= b_lambda!52195 (or (and b!1662935 b_free!45177 (= (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))))) (and b!1662923 b_free!45181) (and b!1663755 b_free!45193 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))))) (and b!1663766 b_free!45197 (= (toChars!4547 (transformation!3233 (h!23749 (t!151867 rules!1846)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))))) b_lambda!52209)))

(declare-fun b_lambda!52211 () Bool)

(assert (= b_lambda!52191 (or (and b!1662935 b_free!45177 (= (toChars!4547 (transformation!3233 (h!23749 rules!1846))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))))) (and b!1662923 b_free!45181) (and b!1663755 b_free!45193 (= (toChars!4547 (transformation!3233 (rule!5119 (h!23748 (t!151866 tokens!457))))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))))) (and b!1663766 b_free!45197 (= (toChars!4547 (transformation!3233 (h!23749 (t!151867 rules!1846)))) (toChars!4547 (transformation!3233 (rule!5119 (h!23748 tokens!457)))))) b_lambda!52211)))

(check-sat (not b!1663432) (not b!1663712) (not d!502373) (not b!1663713) (not d!502485) (not b!1663415) (not b!1663739) (not b!1663704) (not b!1663409) (not b_lambda!52211) (not b!1663292) (not b_next!45901) (not d!502477) (not b!1663429) (not d!502517) (not b!1663405) (not b!1663768) (not d!502475) (not b!1663307) (not bm!106488) (not d!502375) (not b!1663722) (not d!502445) b_and!118105 (not b!1663519) (not d!502285) (not b!1663754) (not d!502593) (not d!502367) (not b!1663727) (not b!1663298) b_and!118083 (not b!1663164) (not b!1663694) (not d!502397) (not b!1663407) (not b!1663414) (not b!1663717) (not d!502395) (not b!1663444) (not b!1663427) (not b!1663109) (not d!502401) (not b!1663702) (not b!1663166) (not b!1663504) (not b!1662941) (not b_lambda!52207) (not b!1663401) (not d!502505) (not d!502441) (not b!1663714) (not b!1663455) (not b!1662997) (not b_next!45879) (not d!502605) b_and!118103 (not d!502499) (not d!502501) (not b!1663303) (not b!1663441) (not b!1663445) (not bm!106492) (not d!502595) (not d!502519) (not b!1663682) (not b!1663301) (not d!502345) (not b!1662947) (not d!502511) (not b!1663151) (not b!1663302) (not b!1663439) (not b!1663695) (not b!1663764) (not b!1663463) b_and!118101 (not d!502297) (not b!1663054) (not b!1663741) (not b_next!45881) (not b!1663297) (not b!1663464) (not b!1663765) (not b!1663304) (not d!502407) (not b!1663709) (not b!1663373) (not b!1663423) (not b!1663715) (not bm!106487) (not bm!106489) (not b_lambda!52209) (not b!1663375) (not tb!95271) (not b!1663693) (not d!502391) (not d!502469) (not b!1663770) (not b!1663430) (not b!1663753) (not b!1663417) (not tb!95275) (not d!502495) (not b!1663374) (not b!1663426) (not b!1663403) (not b!1663420) (not b!1663121) (not b!1663103) (not b!1663502) (not d!502377) (not d!502381) (not b!1663454) (not b!1662996) (not b!1663146) (not b!1663128) (not d!502599) (not b!1663133) (not d!502399) (not b!1663145) (not b!1663125) (not b!1663053) (not d!502437) (not d!502383) (not b_next!45883) (not b!1663424) (not b!1663073) (not d!502509) (not b!1663380) (not b!1663447) (not d!502365) (not d!502303) (not b!1663136) (not b!1663501) tp_is_empty!7397 (not d!502403) (not b_next!45885) (not d!502371) (not b!1663419) (not b!1663442) (not d!502471) (not d!502507) (not b!1663428) (not d!502347) (not b!1663433) (not b!1663104) b_and!118107 (not b!1663418) (not b!1663147) (not b!1663462) (not d!502435) (not b!1663150) (not bm!106484) (not b!1663305) (not b!1663378) (not b!1663438) (not d!502479) (not b!1663719) (not b!1663163) (not d!502481) (not b_next!45897) (not b!1663425) (not b!1663149) (not b!1663105) (not d!502301) (not b!1663448) (not b!1663295) (not b!1663711) (not b!1663518) (not b!1663752) (not b_next!45899) (not b!1663110) b_and!118065 (not d!502439) (not d!502385) (not d!502591) (not d!502497) (not d!502489) (not b!1663404) (not b!1663683) (not d!502379) (not b!1663296) (not b!1663408) (not d!502491) b_and!118061 (not b!1663371) (not b!1663740) (not d!502369) (not b!1663520) (not d!502349) (not d!502589) (not b!1663288) (not bm!106476) (not d!502389) (not d!502387) (not b!1663494) (not d!502393) (not b!1663122) (not b!1663402) (not b!1663769) (not b!1663148) (not d!502299) (not b!1663372) (not b!1663718) (not b!1663381) (not d!502405) (not d!502411) b_and!118081 (not b!1663377) (not b!1663506) (not b!1663123) (not d!502287) (not d!502503) (not d!502493) (not b!1663499) (not b!1663153) (not b!1663063) (not d!502601) (not b!1663416) (not d!502325) (not b_next!45895) (not b!1663300) (not d!502487) (not b!1663422) (not bm!106497))
(check-sat (not b_next!45901) b_and!118105 b_and!118083 (not b_next!45879) b_and!118103 b_and!118101 (not b_next!45881) (not b_next!45883) (not b_next!45885) b_and!118107 (not b_next!45897) b_and!118061 b_and!118081 (not b_next!45895) (not b_next!45899) b_and!118065)
