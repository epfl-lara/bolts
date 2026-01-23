; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!150010 () Bool)

(assert start!150010)

(declare-fun b!1591233 () Bool)

(declare-fun b_free!43047 () Bool)

(declare-fun b_next!43751 () Bool)

(assert (=> b!1591233 (= b_free!43047 (not b_next!43751))))

(declare-fun tp!467271 () Bool)

(declare-fun b_and!111597 () Bool)

(assert (=> b!1591233 (= tp!467271 b_and!111597)))

(declare-fun b_free!43049 () Bool)

(declare-fun b_next!43753 () Bool)

(assert (=> b!1591233 (= b_free!43049 (not b_next!43753))))

(declare-fun tp!467264 () Bool)

(declare-fun b_and!111599 () Bool)

(assert (=> b!1591233 (= tp!467264 b_and!111599)))

(declare-fun b!1591225 () Bool)

(declare-fun b_free!43051 () Bool)

(declare-fun b_next!43755 () Bool)

(assert (=> b!1591225 (= b_free!43051 (not b_next!43755))))

(declare-fun tp!467270 () Bool)

(declare-fun b_and!111601 () Bool)

(assert (=> b!1591225 (= tp!467270 b_and!111601)))

(declare-fun b_free!43053 () Bool)

(declare-fun b_next!43757 () Bool)

(assert (=> b!1591225 (= b_free!43053 (not b_next!43757))))

(declare-fun tp!467267 () Bool)

(declare-fun b_and!111603 () Bool)

(assert (=> b!1591225 (= tp!467267 b_and!111603)))

(declare-fun e!1021967 () Bool)

(declare-fun tp!467266 () Bool)

(declare-datatypes ((List!17565 0))(
  ( (Nil!17495) (Cons!17495 (h!22896 (_ BitVec 16)) (t!144670 List!17565)) )
))
(declare-datatypes ((TokenValue!3171 0))(
  ( (FloatLiteralValue!6342 (text!22642 List!17565)) (TokenValueExt!3170 (__x!11644 Int)) (Broken!15855 (value!97455 List!17565)) (Object!3240) (End!3171) (Def!3171) (Underscore!3171) (Match!3171) (Else!3171) (Error!3171) (Case!3171) (If!3171) (Extends!3171) (Abstract!3171) (Class!3171) (Val!3171) (DelimiterValue!6342 (del!3231 List!17565)) (KeywordValue!3177 (value!97456 List!17565)) (CommentValue!6342 (value!97457 List!17565)) (WhitespaceValue!6342 (value!97458 List!17565)) (IndentationValue!3171 (value!97459 List!17565)) (String!20186) (Int32!3171) (Broken!15856 (value!97460 List!17565)) (Boolean!3172) (Unit!27624) (OperatorValue!3174 (op!3231 List!17565)) (IdentifierValue!6342 (value!97461 List!17565)) (IdentifierValue!6343 (value!97462 List!17565)) (WhitespaceValue!6343 (value!97463 List!17565)) (True!6342) (False!6342) (Broken!15857 (value!97464 List!17565)) (Broken!15858 (value!97465 List!17565)) (True!6343) (RightBrace!3171) (RightBracket!3171) (Colon!3171) (Null!3171) (Comma!3171) (LeftBracket!3171) (False!6343) (LeftBrace!3171) (ImaginaryLiteralValue!3171 (text!22643 List!17565)) (StringLiteralValue!9513 (value!97466 List!17565)) (EOFValue!3171 (value!97467 List!17565)) (IdentValue!3171 (value!97468 List!17565)) (DelimiterValue!6343 (value!97469 List!17565)) (DedentValue!3171 (value!97470 List!17565)) (NewLineValue!3171 (value!97471 List!17565)) (IntegerValue!9513 (value!97472 (_ BitVec 32)) (text!22644 List!17565)) (IntegerValue!9514 (value!97473 Int) (text!22645 List!17565)) (Times!3171) (Or!3171) (Equal!3171) (Minus!3171) (Broken!15859 (value!97474 List!17565)) (And!3171) (Div!3171) (LessEqual!3171) (Mod!3171) (Concat!7580) (Not!3171) (Plus!3171) (SpaceValue!3171 (value!97475 List!17565)) (IntegerValue!9515 (value!97476 Int) (text!22646 List!17565)) (StringLiteralValue!9514 (text!22647 List!17565)) (FloatLiteralValue!6343 (text!22648 List!17565)) (BytesLiteralValue!3171 (value!97477 List!17565)) (CommentValue!6343 (value!97478 List!17565)) (StringLiteralValue!9515 (value!97479 List!17565)) (ErrorTokenValue!3171 (msg!3232 List!17565)) )
))
(declare-datatypes ((C!8992 0))(
  ( (C!8993 (val!5092 Int)) )
))
(declare-datatypes ((List!17566 0))(
  ( (Nil!17496) (Cons!17496 (h!22897 C!8992) (t!144671 List!17566)) )
))
(declare-datatypes ((IArray!11625 0))(
  ( (IArray!11626 (innerList!5870 List!17566)) )
))
(declare-datatypes ((Conc!5810 0))(
  ( (Node!5810 (left!14120 Conc!5810) (right!14450 Conc!5810) (csize!11850 Int) (cheight!6021 Int)) (Leaf!8571 (xs!8622 IArray!11625) (csize!11851 Int)) (Empty!5810) )
))
(declare-datatypes ((BalanceConc!11564 0))(
  ( (BalanceConc!11565 (c!257975 Conc!5810)) )
))
(declare-datatypes ((Regex!4409 0))(
  ( (ElementMatch!4409 (c!257976 C!8992)) (Concat!7581 (regOne!9330 Regex!4409) (regTwo!9330 Regex!4409)) (EmptyExpr!4409) (Star!4409 (reg!4738 Regex!4409)) (EmptyLang!4409) (Union!4409 (regOne!9331 Regex!4409) (regTwo!9331 Regex!4409)) )
))
(declare-datatypes ((String!20187 0))(
  ( (String!20188 (value!97480 String)) )
))
(declare-datatypes ((TokenValueInjection!6002 0))(
  ( (TokenValueInjection!6003 (toValue!4496 Int) (toChars!4355 Int)) )
))
(declare-datatypes ((Rule!5962 0))(
  ( (Rule!5963 (regex!3081 Regex!4409) (tag!3353 String!20187) (isSeparator!3081 Bool) (transformation!3081 TokenValueInjection!6002)) )
))
(declare-datatypes ((Token!5728 0))(
  ( (Token!5729 (value!97481 TokenValue!3171) (rule!4889 Rule!5962) (size!14075 Int) (originalCharacters!3895 List!17566)) )
))
(declare-datatypes ((List!17567 0))(
  ( (Nil!17497) (Cons!17497 (h!22898 Token!5728) (t!144672 List!17567)) )
))
(declare-fun tokens!457 () List!17567)

(declare-fun e!1021982 () Bool)

(declare-fun b!1591223 () Bool)

(declare-fun inv!22903 (String!20187) Bool)

(declare-fun inv!22906 (TokenValueInjection!6002) Bool)

(assert (=> b!1591223 (= e!1021982 (and tp!467266 (inv!22903 (tag!3353 (rule!4889 (h!22898 tokens!457)))) (inv!22906 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) e!1021967))))

(declare-fun b!1591224 () Bool)

(declare-fun res!709904 () Bool)

(declare-fun e!1021970 () Bool)

(assert (=> b!1591224 (=> (not res!709904) (not e!1021970))))

(declare-datatypes ((List!17568 0))(
  ( (Nil!17498) (Cons!17498 (h!22899 Rule!5962) (t!144673 List!17568)) )
))
(declare-fun rules!1846 () List!17568)

(declare-fun isEmpty!10522 (List!17568) Bool)

(assert (=> b!1591224 (= res!709904 (not (isEmpty!10522 rules!1846)))))

(declare-fun e!1021971 () Bool)

(assert (=> b!1591225 (= e!1021971 (and tp!467270 tp!467267))))

(declare-fun b!1591226 () Bool)

(declare-fun e!1021981 () Bool)

(declare-fun e!1021969 () Bool)

(assert (=> b!1591226 (= e!1021981 (not e!1021969))))

(declare-fun res!709898 () Bool)

(assert (=> b!1591226 (=> res!709898 e!1021969)))

(declare-fun lt!562997 () List!17567)

(assert (=> b!1591226 (= res!709898 (not (= lt!562997 (t!144672 tokens!457))))))

(declare-datatypes ((IArray!11627 0))(
  ( (IArray!11628 (innerList!5871 List!17567)) )
))
(declare-datatypes ((Conc!5811 0))(
  ( (Node!5811 (left!14121 Conc!5811) (right!14451 Conc!5811) (csize!11852 Int) (cheight!6022 Int)) (Leaf!8572 (xs!8623 IArray!11627) (csize!11853 Int)) (Empty!5811) )
))
(declare-datatypes ((BalanceConc!11566 0))(
  ( (BalanceConc!11567 (c!257977 Conc!5811)) )
))
(declare-datatypes ((tuple2!16980 0))(
  ( (tuple2!16981 (_1!9892 BalanceConc!11566) (_2!9892 BalanceConc!11564)) )
))
(declare-fun lt!563016 () tuple2!16980)

(declare-fun list!6803 (BalanceConc!11566) List!17567)

(assert (=> b!1591226 (= lt!562997 (list!6803 (_1!9892 lt!563016)))))

(declare-datatypes ((LexerInterface!2710 0))(
  ( (LexerInterfaceExt!2707 (__x!11645 Int)) (Lexer!2708) )
))
(declare-fun thiss!17113 () LexerInterface!2710)

(declare-datatypes ((Unit!27625 0))(
  ( (Unit!27626) )
))
(declare-fun lt!563010 () Unit!27625)

(declare-fun theoremInvertabilityWhenTokenListSeparable!155 (LexerInterface!2710 List!17568 List!17567) Unit!27625)

(assert (=> b!1591226 (= lt!563010 (theoremInvertabilityWhenTokenListSeparable!155 thiss!17113 rules!1846 (t!144672 tokens!457)))))

(declare-fun lt!563015 () List!17566)

(declare-fun lt!563019 () List!17566)

(declare-fun isPrefix!1341 (List!17566 List!17566) Bool)

(assert (=> b!1591226 (isPrefix!1341 lt!563015 lt!563019)))

(declare-fun lt!563008 () Unit!27625)

(declare-fun lt!563004 () List!17566)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!866 (List!17566 List!17566) Unit!27625)

(assert (=> b!1591226 (= lt!563008 (lemmaConcatTwoListThenFirstIsPrefix!866 lt!563015 lt!563004))))

(declare-fun b!1591227 () Bool)

(declare-fun e!1021966 () Bool)

(declare-fun tp!467272 () Bool)

(declare-fun e!1021973 () Bool)

(declare-fun inv!22907 (Token!5728) Bool)

(assert (=> b!1591227 (= e!1021966 (and (inv!22907 (h!22898 tokens!457)) e!1021973 tp!467272))))

(declare-fun b!1591228 () Bool)

(declare-fun res!709902 () Bool)

(assert (=> b!1591228 (=> (not res!709902) (not e!1021970))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!403 (LexerInterface!2710 List!17567 List!17568) Bool)

(assert (=> b!1591228 (= res!709902 (tokensListTwoByTwoPredicateSeparableList!403 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1591229 () Bool)

(declare-fun e!1021974 () Bool)

(declare-fun e!1021972 () Bool)

(assert (=> b!1591229 (= e!1021974 e!1021972)))

(declare-fun res!709892 () Bool)

(assert (=> b!1591229 (=> res!709892 e!1021972)))

(declare-datatypes ((tuple2!16982 0))(
  ( (tuple2!16983 (_1!9893 Token!5728) (_2!9893 List!17566)) )
))
(declare-datatypes ((Option!3158 0))(
  ( (None!3157) (Some!3157 (v!24060 tuple2!16982)) )
))
(declare-fun lt!563020 () Option!3158)

(declare-fun isDefined!2531 (Option!3158) Bool)

(assert (=> b!1591229 (= res!709892 (not (isDefined!2531 lt!563020)))))

(declare-fun lt!563017 () Unit!27625)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!284 (LexerInterface!2710 List!17568 List!17566 List!17566) Unit!27625)

(assert (=> b!1591229 (= lt!563017 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!284 thiss!17113 rules!1846 lt!563015 lt!563004))))

(declare-fun b!1591230 () Bool)

(declare-fun res!709896 () Bool)

(assert (=> b!1591230 (=> (not res!709896) (not e!1021970))))

(get-info :version)

(assert (=> b!1591230 (= res!709896 (and (not ((_ is Nil!17497) tokens!457)) (not ((_ is Nil!17497) (t!144672 tokens!457)))))))

(declare-fun b!1591231 () Bool)

(declare-fun res!709903 () Bool)

(declare-fun e!1021968 () Bool)

(assert (=> b!1591231 (=> res!709903 e!1021968)))

(declare-fun separableTokensPredicate!652 (LexerInterface!2710 Token!5728 Token!5728 List!17568) Bool)

(assert (=> b!1591231 (= res!709903 (not (separableTokensPredicate!652 thiss!17113 (h!22898 tokens!457) (h!22898 (t!144672 tokens!457)) rules!1846)))))

(declare-fun b!1591232 () Bool)

(assert (=> b!1591232 (= e!1021968 e!1021974)))

(declare-fun res!709901 () Bool)

(assert (=> b!1591232 (=> res!709901 e!1021974)))

(declare-fun lt!563003 () List!17566)

(declare-fun lt!563001 () List!17566)

(assert (=> b!1591232 (= res!709901 (or (not (= lt!563001 lt!563003)) (not (= lt!563003 lt!563015)) (not (= lt!563001 lt!563015))))))

(declare-fun printList!825 (LexerInterface!2710 List!17567) List!17566)

(assert (=> b!1591232 (= lt!563003 (printList!825 thiss!17113 (Cons!17497 (h!22898 tokens!457) Nil!17497)))))

(declare-fun lt!562996 () BalanceConc!11564)

(declare-fun list!6804 (BalanceConc!11564) List!17566)

(assert (=> b!1591232 (= lt!563001 (list!6804 lt!562996))))

(declare-fun lt!563002 () BalanceConc!11566)

(declare-fun printTailRec!763 (LexerInterface!2710 BalanceConc!11566 Int BalanceConc!11564) BalanceConc!11564)

(assert (=> b!1591232 (= lt!562996 (printTailRec!763 thiss!17113 lt!563002 0 (BalanceConc!11565 Empty!5810)))))

(declare-fun print!1241 (LexerInterface!2710 BalanceConc!11566) BalanceConc!11564)

(assert (=> b!1591232 (= lt!562996 (print!1241 thiss!17113 lt!563002))))

(declare-fun singletonSeq!1440 (Token!5728) BalanceConc!11566)

(assert (=> b!1591232 (= lt!563002 (singletonSeq!1440 (h!22898 tokens!457)))))

(declare-fun lt!563006 () List!17566)

(declare-fun maxPrefix!1274 (LexerInterface!2710 List!17568 List!17566) Option!3158)

(assert (=> b!1591232 (= lt!563020 (maxPrefix!1274 thiss!17113 rules!1846 lt!563006))))

(assert (=> b!1591233 (= e!1021967 (and tp!467271 tp!467264))))

(declare-fun b!1591234 () Bool)

(declare-fun tp!467269 () Bool)

(declare-fun inv!21 (TokenValue!3171) Bool)

(assert (=> b!1591234 (= e!1021973 (and (inv!21 (value!97481 (h!22898 tokens!457))) e!1021982 tp!467269))))

(declare-fun e!1021965 () Bool)

(declare-fun b!1591235 () Bool)

(declare-fun tp!467265 () Bool)

(assert (=> b!1591235 (= e!1021965 (and tp!467265 (inv!22903 (tag!3353 (h!22899 rules!1846))) (inv!22906 (transformation!3081 (h!22899 rules!1846))) e!1021971))))

(declare-fun b!1591236 () Bool)

(declare-fun e!1021977 () Bool)

(declare-fun e!1021976 () Bool)

(assert (=> b!1591236 (= e!1021977 e!1021976)))

(declare-fun res!709897 () Bool)

(assert (=> b!1591236 (=> res!709897 e!1021976)))

(declare-fun lt!563014 () List!17566)

(declare-fun lt!563000 () Regex!4409)

(declare-fun prefixMatch!344 (Regex!4409 List!17566) Bool)

(declare-fun ++!4577 (List!17566 List!17566) List!17566)

(assert (=> b!1591236 (= res!709897 (prefixMatch!344 lt!563000 (++!4577 lt!563015 lt!563014)))))

(declare-fun lt!563007 () BalanceConc!11564)

(assert (=> b!1591236 (= lt!563014 (list!6804 lt!563007))))

(declare-fun b!1591237 () Bool)

(declare-fun e!1021975 () Bool)

(declare-fun tp!467268 () Bool)

(assert (=> b!1591237 (= e!1021975 (and e!1021965 tp!467268))))

(declare-fun b!1591238 () Bool)

(declare-fun res!709900 () Bool)

(assert (=> b!1591238 (=> res!709900 e!1021974)))

(declare-fun isEmpty!10523 (BalanceConc!11566) Bool)

(declare-fun lex!1194 (LexerInterface!2710 List!17568 BalanceConc!11564) tuple2!16980)

(declare-fun seqFromList!1911 (List!17566) BalanceConc!11564)

(assert (=> b!1591238 (= res!709900 (isEmpty!10523 (_1!9892 (lex!1194 thiss!17113 rules!1846 (seqFromList!1911 lt!563015)))))))

(declare-fun b!1591239 () Bool)

(assert (=> b!1591239 (= e!1021970 e!1021981)))

(declare-fun res!709899 () Bool)

(assert (=> b!1591239 (=> (not res!709899) (not e!1021981))))

(assert (=> b!1591239 (= res!709899 (= lt!563006 lt!563019))))

(assert (=> b!1591239 (= lt!563019 (++!4577 lt!563015 lt!563004))))

(declare-fun lt!563013 () BalanceConc!11564)

(assert (=> b!1591239 (= lt!563006 (list!6804 lt!563013))))

(declare-fun lt!563005 () BalanceConc!11564)

(assert (=> b!1591239 (= lt!563004 (list!6804 lt!563005))))

(declare-fun lt!563009 () BalanceConc!11564)

(assert (=> b!1591239 (= lt!563015 (list!6804 lt!563009))))

(declare-fun charsOf!1730 (Token!5728) BalanceConc!11564)

(assert (=> b!1591239 (= lt!563009 (charsOf!1730 (h!22898 tokens!457)))))

(assert (=> b!1591239 (= lt!563016 (lex!1194 thiss!17113 rules!1846 lt!563005))))

(declare-fun lt!563012 () BalanceConc!11566)

(assert (=> b!1591239 (= lt!563005 (print!1241 thiss!17113 lt!563012))))

(declare-fun seqFromList!1912 (List!17567) BalanceConc!11566)

(assert (=> b!1591239 (= lt!563012 (seqFromList!1912 (t!144672 tokens!457)))))

(assert (=> b!1591239 (= lt!563013 (print!1241 thiss!17113 (seqFromList!1912 tokens!457)))))

(declare-fun b!1591240 () Bool)

(declare-fun lt!563011 () BalanceConc!11564)

(declare-fun size!14076 (BalanceConc!11564) Int)

(assert (=> b!1591240 (= e!1021976 (< 0 (size!14076 lt!563011)))))

(declare-fun e!1021964 () Bool)

(assert (=> b!1591240 e!1021964))

(declare-fun res!709894 () Bool)

(assert (=> b!1591240 (=> (not res!709894) (not e!1021964))))

(assert (=> b!1591240 (= res!709894 (= lt!563015 (originalCharacters!3895 (h!22898 tokens!457))))))

(declare-fun b!1591241 () Bool)

(declare-fun res!709893 () Bool)

(assert (=> b!1591241 (=> (not res!709893) (not e!1021970))))

(declare-fun rulesProduceEachTokenIndividuallyList!912 (LexerInterface!2710 List!17568 List!17567) Bool)

(assert (=> b!1591241 (= res!709893 (rulesProduceEachTokenIndividuallyList!912 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1591242 () Bool)

(declare-fun head!3249 (List!17566) C!8992)

(assert (=> b!1591242 (= e!1021964 (= lt!563014 (Cons!17496 (head!3249 (originalCharacters!3895 (h!22898 (t!144672 tokens!457)))) Nil!17496)))))

(declare-fun res!709891 () Bool)

(assert (=> start!150010 (=> (not res!709891) (not e!1021970))))

(assert (=> start!150010 (= res!709891 ((_ is Lexer!2708) thiss!17113))))

(assert (=> start!150010 e!1021970))

(assert (=> start!150010 true))

(assert (=> start!150010 e!1021975))

(assert (=> start!150010 e!1021966))

(declare-fun b!1591243 () Bool)

(assert (=> b!1591243 (= e!1021969 e!1021968)))

(declare-fun res!709890 () Bool)

(assert (=> b!1591243 (=> res!709890 e!1021968)))

(declare-fun lt!562998 () List!17567)

(declare-fun lt!563018 () List!17567)

(assert (=> b!1591243 (= res!709890 (or (not (= lt!562997 lt!562998)) (not (= lt!562998 lt!563018))))))

(assert (=> b!1591243 (= lt!562998 (list!6803 lt!563012))))

(assert (=> b!1591243 (= lt!562997 lt!563018)))

(declare-fun prepend!575 (BalanceConc!11566 Token!5728) BalanceConc!11566)

(assert (=> b!1591243 (= lt!563018 (list!6803 (prepend!575 (seqFromList!1912 (t!144672 (t!144672 tokens!457))) (h!22898 (t!144672 tokens!457)))))))

(declare-fun lt!562999 () Unit!27625)

(declare-fun seqFromListBHdTlConstructive!158 (Token!5728 List!17567 BalanceConc!11566) Unit!27625)

(assert (=> b!1591243 (= lt!562999 (seqFromListBHdTlConstructive!158 (h!22898 (t!144672 tokens!457)) (t!144672 (t!144672 tokens!457)) (_1!9892 lt!563016)))))

(declare-fun b!1591244 () Bool)

(assert (=> b!1591244 (= e!1021972 e!1021977)))

(declare-fun res!709888 () Bool)

(assert (=> b!1591244 (=> res!709888 e!1021977)))

(declare-fun prefixMatchZipperSequence!437 (Regex!4409 BalanceConc!11564) Bool)

(declare-fun ++!4578 (BalanceConc!11564 BalanceConc!11564) BalanceConc!11564)

(assert (=> b!1591244 (= res!709888 (prefixMatchZipperSequence!437 lt!563000 (++!4578 lt!563009 lt!563007)))))

(declare-fun singletonSeq!1441 (C!8992) BalanceConc!11564)

(declare-fun apply!4318 (BalanceConc!11564 Int) C!8992)

(assert (=> b!1591244 (= lt!563007 (singletonSeq!1441 (apply!4318 lt!563011 0)))))

(assert (=> b!1591244 (= lt!563011 (charsOf!1730 (h!22898 (t!144672 tokens!457))))))

(declare-fun rulesRegex!471 (LexerInterface!2710 List!17568) Regex!4409)

(assert (=> b!1591244 (= lt!563000 (rulesRegex!471 thiss!17113 rules!1846))))

(declare-fun b!1591245 () Bool)

(declare-fun res!709889 () Bool)

(assert (=> b!1591245 (=> (not res!709889) (not e!1021970))))

(declare-fun rulesInvariant!2379 (LexerInterface!2710 List!17568) Bool)

(assert (=> b!1591245 (= res!709889 (rulesInvariant!2379 thiss!17113 rules!1846))))

(declare-fun b!1591246 () Bool)

(declare-fun res!709895 () Bool)

(assert (=> b!1591246 (=> res!709895 e!1021974)))

(declare-fun rulesProduceIndividualToken!1362 (LexerInterface!2710 List!17568 Token!5728) Bool)

(assert (=> b!1591246 (= res!709895 (not (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 tokens!457))))))

(assert (= (and start!150010 res!709891) b!1591224))

(assert (= (and b!1591224 res!709904) b!1591245))

(assert (= (and b!1591245 res!709889) b!1591241))

(assert (= (and b!1591241 res!709893) b!1591228))

(assert (= (and b!1591228 res!709902) b!1591230))

(assert (= (and b!1591230 res!709896) b!1591239))

(assert (= (and b!1591239 res!709899) b!1591226))

(assert (= (and b!1591226 (not res!709898)) b!1591243))

(assert (= (and b!1591243 (not res!709890)) b!1591231))

(assert (= (and b!1591231 (not res!709903)) b!1591232))

(assert (= (and b!1591232 (not res!709901)) b!1591246))

(assert (= (and b!1591246 (not res!709895)) b!1591238))

(assert (= (and b!1591238 (not res!709900)) b!1591229))

(assert (= (and b!1591229 (not res!709892)) b!1591244))

(assert (= (and b!1591244 (not res!709888)) b!1591236))

(assert (= (and b!1591236 (not res!709897)) b!1591240))

(assert (= (and b!1591240 res!709894) b!1591242))

(assert (= b!1591235 b!1591225))

(assert (= b!1591237 b!1591235))

(assert (= (and start!150010 ((_ is Cons!17498) rules!1846)) b!1591237))

(assert (= b!1591223 b!1591233))

(assert (= b!1591234 b!1591223))

(assert (= b!1591227 b!1591234))

(assert (= (and start!150010 ((_ is Cons!17497) tokens!457)) b!1591227))

(declare-fun m!1885187 () Bool)

(assert (=> b!1591243 m!1885187))

(declare-fun m!1885189 () Bool)

(assert (=> b!1591243 m!1885189))

(declare-fun m!1885191 () Bool)

(assert (=> b!1591243 m!1885191))

(declare-fun m!1885193 () Bool)

(assert (=> b!1591243 m!1885193))

(declare-fun m!1885195 () Bool)

(assert (=> b!1591243 m!1885195))

(assert (=> b!1591243 m!1885191))

(assert (=> b!1591243 m!1885193))

(declare-fun m!1885197 () Bool)

(assert (=> b!1591235 m!1885197))

(declare-fun m!1885199 () Bool)

(assert (=> b!1591235 m!1885199))

(declare-fun m!1885201 () Bool)

(assert (=> b!1591227 m!1885201))

(declare-fun m!1885203 () Bool)

(assert (=> b!1591239 m!1885203))

(declare-fun m!1885205 () Bool)

(assert (=> b!1591239 m!1885205))

(declare-fun m!1885207 () Bool)

(assert (=> b!1591239 m!1885207))

(declare-fun m!1885209 () Bool)

(assert (=> b!1591239 m!1885209))

(declare-fun m!1885211 () Bool)

(assert (=> b!1591239 m!1885211))

(declare-fun m!1885213 () Bool)

(assert (=> b!1591239 m!1885213))

(declare-fun m!1885215 () Bool)

(assert (=> b!1591239 m!1885215))

(declare-fun m!1885217 () Bool)

(assert (=> b!1591239 m!1885217))

(declare-fun m!1885219 () Bool)

(assert (=> b!1591239 m!1885219))

(assert (=> b!1591239 m!1885209))

(declare-fun m!1885221 () Bool)

(assert (=> b!1591239 m!1885221))

(declare-fun m!1885223 () Bool)

(assert (=> b!1591228 m!1885223))

(declare-fun m!1885225 () Bool)

(assert (=> b!1591244 m!1885225))

(declare-fun m!1885227 () Bool)

(assert (=> b!1591244 m!1885227))

(declare-fun m!1885229 () Bool)

(assert (=> b!1591244 m!1885229))

(declare-fun m!1885231 () Bool)

(assert (=> b!1591244 m!1885231))

(declare-fun m!1885233 () Bool)

(assert (=> b!1591244 m!1885233))

(assert (=> b!1591244 m!1885229))

(declare-fun m!1885235 () Bool)

(assert (=> b!1591244 m!1885235))

(assert (=> b!1591244 m!1885231))

(declare-fun m!1885237 () Bool)

(assert (=> b!1591245 m!1885237))

(declare-fun m!1885239 () Bool)

(assert (=> b!1591246 m!1885239))

(declare-fun m!1885241 () Bool)

(assert (=> b!1591226 m!1885241))

(declare-fun m!1885243 () Bool)

(assert (=> b!1591226 m!1885243))

(declare-fun m!1885245 () Bool)

(assert (=> b!1591226 m!1885245))

(declare-fun m!1885247 () Bool)

(assert (=> b!1591226 m!1885247))

(declare-fun m!1885249 () Bool)

(assert (=> b!1591234 m!1885249))

(declare-fun m!1885251 () Bool)

(assert (=> b!1591223 m!1885251))

(declare-fun m!1885253 () Bool)

(assert (=> b!1591223 m!1885253))

(declare-fun m!1885255 () Bool)

(assert (=> b!1591224 m!1885255))

(declare-fun m!1885257 () Bool)

(assert (=> b!1591231 m!1885257))

(declare-fun m!1885259 () Bool)

(assert (=> b!1591238 m!1885259))

(assert (=> b!1591238 m!1885259))

(declare-fun m!1885261 () Bool)

(assert (=> b!1591238 m!1885261))

(declare-fun m!1885263 () Bool)

(assert (=> b!1591238 m!1885263))

(declare-fun m!1885265 () Bool)

(assert (=> b!1591241 m!1885265))

(declare-fun m!1885267 () Bool)

(assert (=> b!1591242 m!1885267))

(declare-fun m!1885269 () Bool)

(assert (=> b!1591232 m!1885269))

(declare-fun m!1885271 () Bool)

(assert (=> b!1591232 m!1885271))

(declare-fun m!1885273 () Bool)

(assert (=> b!1591232 m!1885273))

(declare-fun m!1885275 () Bool)

(assert (=> b!1591232 m!1885275))

(declare-fun m!1885277 () Bool)

(assert (=> b!1591232 m!1885277))

(declare-fun m!1885279 () Bool)

(assert (=> b!1591232 m!1885279))

(declare-fun m!1885281 () Bool)

(assert (=> b!1591229 m!1885281))

(declare-fun m!1885283 () Bool)

(assert (=> b!1591229 m!1885283))

(declare-fun m!1885285 () Bool)

(assert (=> b!1591236 m!1885285))

(assert (=> b!1591236 m!1885285))

(declare-fun m!1885287 () Bool)

(assert (=> b!1591236 m!1885287))

(declare-fun m!1885289 () Bool)

(assert (=> b!1591236 m!1885289))

(declare-fun m!1885291 () Bool)

(assert (=> b!1591240 m!1885291))

(check-sat b_and!111597 (not b!1591228) (not b!1591240) (not b!1591232) (not b!1591239) (not b!1591237) (not b!1591246) (not b!1591242) (not b!1591234) (not b_next!43757) (not b_next!43753) b_and!111601 b_and!111603 (not b!1591227) (not b!1591238) (not b!1591223) (not b!1591231) (not b!1591224) (not b!1591241) (not b!1591229) b_and!111599 (not b!1591244) (not b!1591245) (not b!1591226) (not b_next!43751) (not b!1591235) (not b!1591236) (not b_next!43755) (not b!1591243))
(check-sat b_and!111597 (not b_next!43757) b_and!111603 b_and!111599 (not b_next!43751) (not b_next!43755) (not b_next!43753) b_and!111601)
(get-model)

(declare-fun d!473883 () Bool)

(declare-fun list!6805 (Conc!5811) List!17567)

(assert (=> d!473883 (= (list!6803 (prepend!575 (seqFromList!1912 (t!144672 (t!144672 tokens!457))) (h!22898 (t!144672 tokens!457)))) (list!6805 (c!257977 (prepend!575 (seqFromList!1912 (t!144672 (t!144672 tokens!457))) (h!22898 (t!144672 tokens!457))))))))

(declare-fun bs!391820 () Bool)

(assert (= bs!391820 d!473883))

(declare-fun m!1885293 () Bool)

(assert (=> bs!391820 m!1885293))

(assert (=> b!1591243 d!473883))

(declare-fun d!473885 () Bool)

(declare-fun fromListB!828 (List!17567) BalanceConc!11566)

(assert (=> d!473885 (= (seqFromList!1912 (t!144672 (t!144672 tokens!457))) (fromListB!828 (t!144672 (t!144672 tokens!457))))))

(declare-fun bs!391821 () Bool)

(assert (= bs!391821 d!473885))

(declare-fun m!1885295 () Bool)

(assert (=> bs!391821 m!1885295))

(assert (=> b!1591243 d!473885))

(declare-fun d!473887 () Bool)

(assert (=> d!473887 (= (list!6803 lt!563012) (list!6805 (c!257977 lt!563012)))))

(declare-fun bs!391822 () Bool)

(assert (= bs!391822 d!473887))

(declare-fun m!1885297 () Bool)

(assert (=> bs!391822 m!1885297))

(assert (=> b!1591243 d!473887))

(declare-fun d!473889 () Bool)

(declare-fun e!1021985 () Bool)

(assert (=> d!473889 e!1021985))

(declare-fun res!709914 () Bool)

(assert (=> d!473889 (=> (not res!709914) (not e!1021985))))

(declare-fun isBalanced!1723 (Conc!5811) Bool)

(declare-fun prepend!576 (Conc!5811 Token!5728) Conc!5811)

(assert (=> d!473889 (= res!709914 (isBalanced!1723 (prepend!576 (c!257977 (seqFromList!1912 (t!144672 (t!144672 tokens!457)))) (h!22898 (t!144672 tokens!457)))))))

(declare-fun lt!563023 () BalanceConc!11566)

(assert (=> d!473889 (= lt!563023 (BalanceConc!11567 (prepend!576 (c!257977 (seqFromList!1912 (t!144672 (t!144672 tokens!457)))) (h!22898 (t!144672 tokens!457)))))))

(assert (=> d!473889 (= (prepend!575 (seqFromList!1912 (t!144672 (t!144672 tokens!457))) (h!22898 (t!144672 tokens!457))) lt!563023)))

(declare-fun b!1591249 () Bool)

(assert (=> b!1591249 (= e!1021985 (= (list!6803 lt!563023) (Cons!17497 (h!22898 (t!144672 tokens!457)) (list!6803 (seqFromList!1912 (t!144672 (t!144672 tokens!457)))))))))

(assert (= (and d!473889 res!709914) b!1591249))

(declare-fun m!1885299 () Bool)

(assert (=> d!473889 m!1885299))

(assert (=> d!473889 m!1885299))

(declare-fun m!1885301 () Bool)

(assert (=> d!473889 m!1885301))

(declare-fun m!1885303 () Bool)

(assert (=> b!1591249 m!1885303))

(assert (=> b!1591249 m!1885191))

(declare-fun m!1885305 () Bool)

(assert (=> b!1591249 m!1885305))

(assert (=> b!1591243 d!473889))

(declare-fun d!473891 () Bool)

(assert (=> d!473891 (= (list!6803 (_1!9892 lt!563016)) (list!6803 (prepend!575 (seqFromList!1912 (t!144672 (t!144672 tokens!457))) (h!22898 (t!144672 tokens!457)))))))

(declare-fun lt!563026 () Unit!27625)

(declare-fun choose!9543 (Token!5728 List!17567 BalanceConc!11566) Unit!27625)

(assert (=> d!473891 (= lt!563026 (choose!9543 (h!22898 (t!144672 tokens!457)) (t!144672 (t!144672 tokens!457)) (_1!9892 lt!563016)))))

(declare-fun $colon$colon!290 (List!17567 Token!5728) List!17567)

(assert (=> d!473891 (= (list!6803 (_1!9892 lt!563016)) (list!6803 (seqFromList!1912 ($colon$colon!290 (t!144672 (t!144672 tokens!457)) (h!22898 (t!144672 tokens!457))))))))

(assert (=> d!473891 (= (seqFromListBHdTlConstructive!158 (h!22898 (t!144672 tokens!457)) (t!144672 (t!144672 tokens!457)) (_1!9892 lt!563016)) lt!563026)))

(declare-fun bs!391823 () Bool)

(assert (= bs!391823 d!473891))

(declare-fun m!1885307 () Bool)

(assert (=> bs!391823 m!1885307))

(declare-fun m!1885309 () Bool)

(assert (=> bs!391823 m!1885309))

(declare-fun m!1885311 () Bool)

(assert (=> bs!391823 m!1885311))

(assert (=> bs!391823 m!1885307))

(assert (=> bs!391823 m!1885309))

(declare-fun m!1885313 () Bool)

(assert (=> bs!391823 m!1885313))

(assert (=> bs!391823 m!1885193))

(assert (=> bs!391823 m!1885195))

(assert (=> bs!391823 m!1885191))

(assert (=> bs!391823 m!1885193))

(assert (=> bs!391823 m!1885241))

(assert (=> bs!391823 m!1885191))

(assert (=> b!1591243 d!473891))

(declare-fun d!473895 () Bool)

(declare-fun lt!563032 () BalanceConc!11564)

(assert (=> d!473895 (= (list!6804 lt!563032) (printList!825 thiss!17113 (list!6803 lt!563002)))))

(assert (=> d!473895 (= lt!563032 (printTailRec!763 thiss!17113 lt!563002 0 (BalanceConc!11565 Empty!5810)))))

(assert (=> d!473895 (= (print!1241 thiss!17113 lt!563002) lt!563032)))

(declare-fun bs!391824 () Bool)

(assert (= bs!391824 d!473895))

(declare-fun m!1885321 () Bool)

(assert (=> bs!391824 m!1885321))

(declare-fun m!1885323 () Bool)

(assert (=> bs!391824 m!1885323))

(assert (=> bs!391824 m!1885323))

(declare-fun m!1885325 () Bool)

(assert (=> bs!391824 m!1885325))

(assert (=> bs!391824 m!1885277))

(assert (=> b!1591232 d!473895))

(declare-fun d!473899 () Bool)

(declare-fun lt!563079 () BalanceConc!11564)

(declare-fun printListTailRec!322 (LexerInterface!2710 List!17567 List!17566) List!17566)

(declare-fun dropList!541 (BalanceConc!11566 Int) List!17567)

(assert (=> d!473899 (= (list!6804 lt!563079) (printListTailRec!322 thiss!17113 (dropList!541 lt!563002 0) (list!6804 (BalanceConc!11565 Empty!5810))))))

(declare-fun e!1021993 () BalanceConc!11564)

(assert (=> d!473899 (= lt!563079 e!1021993)))

(declare-fun c!257981 () Bool)

(declare-fun size!14077 (BalanceConc!11566) Int)

(assert (=> d!473899 (= c!257981 (>= 0 (size!14077 lt!563002)))))

(declare-fun e!1021994 () Bool)

(assert (=> d!473899 e!1021994))

(declare-fun res!709920 () Bool)

(assert (=> d!473899 (=> (not res!709920) (not e!1021994))))

(assert (=> d!473899 (= res!709920 (>= 0 0))))

(assert (=> d!473899 (= (printTailRec!763 thiss!17113 lt!563002 0 (BalanceConc!11565 Empty!5810)) lt!563079)))

(declare-fun b!1591259 () Bool)

(assert (=> b!1591259 (= e!1021994 (<= 0 (size!14077 lt!563002)))))

(declare-fun b!1591260 () Bool)

(assert (=> b!1591260 (= e!1021993 (BalanceConc!11565 Empty!5810))))

(declare-fun b!1591261 () Bool)

(declare-fun apply!4319 (BalanceConc!11566 Int) Token!5728)

(assert (=> b!1591261 (= e!1021993 (printTailRec!763 thiss!17113 lt!563002 (+ 0 1) (++!4578 (BalanceConc!11565 Empty!5810) (charsOf!1730 (apply!4319 lt!563002 0)))))))

(declare-fun lt!563077 () List!17567)

(assert (=> b!1591261 (= lt!563077 (list!6803 lt!563002))))

(declare-fun lt!563078 () Unit!27625)

(declare-fun lemmaDropApply!529 (List!17567 Int) Unit!27625)

(assert (=> b!1591261 (= lt!563078 (lemmaDropApply!529 lt!563077 0))))

(declare-fun head!3250 (List!17567) Token!5728)

(declare-fun drop!833 (List!17567 Int) List!17567)

(declare-fun apply!4320 (List!17567 Int) Token!5728)

(assert (=> b!1591261 (= (head!3250 (drop!833 lt!563077 0)) (apply!4320 lt!563077 0))))

(declare-fun lt!563080 () Unit!27625)

(assert (=> b!1591261 (= lt!563080 lt!563078)))

(declare-fun lt!563083 () List!17567)

(assert (=> b!1591261 (= lt!563083 (list!6803 lt!563002))))

(declare-fun lt!563081 () Unit!27625)

(declare-fun lemmaDropTail!509 (List!17567 Int) Unit!27625)

(assert (=> b!1591261 (= lt!563081 (lemmaDropTail!509 lt!563083 0))))

(declare-fun tail!2291 (List!17567) List!17567)

(assert (=> b!1591261 (= (tail!2291 (drop!833 lt!563083 0)) (drop!833 lt!563083 (+ 0 1)))))

(declare-fun lt!563082 () Unit!27625)

(assert (=> b!1591261 (= lt!563082 lt!563081)))

(assert (= (and d!473899 res!709920) b!1591259))

(assert (= (and d!473899 c!257981) b!1591260))

(assert (= (and d!473899 (not c!257981)) b!1591261))

(declare-fun m!1885353 () Bool)

(assert (=> d!473899 m!1885353))

(declare-fun m!1885355 () Bool)

(assert (=> d!473899 m!1885355))

(declare-fun m!1885357 () Bool)

(assert (=> d!473899 m!1885357))

(assert (=> d!473899 m!1885355))

(declare-fun m!1885359 () Bool)

(assert (=> d!473899 m!1885359))

(declare-fun m!1885361 () Bool)

(assert (=> d!473899 m!1885361))

(assert (=> d!473899 m!1885353))

(assert (=> b!1591259 m!1885359))

(declare-fun m!1885363 () Bool)

(assert (=> b!1591261 m!1885363))

(declare-fun m!1885365 () Bool)

(assert (=> b!1591261 m!1885365))

(declare-fun m!1885367 () Bool)

(assert (=> b!1591261 m!1885367))

(declare-fun m!1885369 () Bool)

(assert (=> b!1591261 m!1885369))

(declare-fun m!1885371 () Bool)

(assert (=> b!1591261 m!1885371))

(declare-fun m!1885373 () Bool)

(assert (=> b!1591261 m!1885373))

(assert (=> b!1591261 m!1885363))

(declare-fun m!1885375 () Bool)

(assert (=> b!1591261 m!1885375))

(declare-fun m!1885377 () Bool)

(assert (=> b!1591261 m!1885377))

(declare-fun m!1885379 () Bool)

(assert (=> b!1591261 m!1885379))

(assert (=> b!1591261 m!1885323))

(declare-fun m!1885381 () Bool)

(assert (=> b!1591261 m!1885381))

(assert (=> b!1591261 m!1885371))

(declare-fun m!1885383 () Bool)

(assert (=> b!1591261 m!1885383))

(assert (=> b!1591261 m!1885381))

(declare-fun m!1885385 () Bool)

(assert (=> b!1591261 m!1885385))

(assert (=> b!1591261 m!1885383))

(assert (=> b!1591261 m!1885365))

(assert (=> b!1591232 d!473899))

(declare-fun b!1591300 () Bool)

(declare-fun res!709951 () Bool)

(declare-fun e!1022011 () Bool)

(assert (=> b!1591300 (=> (not res!709951) (not e!1022011))))

(declare-fun lt!563106 () Option!3158)

(declare-fun matchR!1927 (Regex!4409 List!17566) Bool)

(declare-fun get!5007 (Option!3158) tuple2!16982)

(assert (=> b!1591300 (= res!709951 (matchR!1927 (regex!3081 (rule!4889 (_1!9893 (get!5007 lt!563106)))) (list!6804 (charsOf!1730 (_1!9893 (get!5007 lt!563106))))))))

(declare-fun b!1591301 () Bool)

(declare-fun e!1022010 () Bool)

(assert (=> b!1591301 (= e!1022010 e!1022011)))

(declare-fun res!709956 () Bool)

(assert (=> b!1591301 (=> (not res!709956) (not e!1022011))))

(assert (=> b!1591301 (= res!709956 (isDefined!2531 lt!563106))))

(declare-fun b!1591302 () Bool)

(declare-fun res!709952 () Bool)

(assert (=> b!1591302 (=> (not res!709952) (not e!1022011))))

(assert (=> b!1591302 (= res!709952 (= (++!4577 (list!6804 (charsOf!1730 (_1!9893 (get!5007 lt!563106)))) (_2!9893 (get!5007 lt!563106))) lt!563006))))

(declare-fun b!1591303 () Bool)

(declare-fun res!709954 () Bool)

(assert (=> b!1591303 (=> (not res!709954) (not e!1022011))))

(assert (=> b!1591303 (= res!709954 (= (list!6804 (charsOf!1730 (_1!9893 (get!5007 lt!563106)))) (originalCharacters!3895 (_1!9893 (get!5007 lt!563106)))))))

(declare-fun d!473903 () Bool)

(assert (=> d!473903 e!1022010))

(declare-fun res!709953 () Bool)

(assert (=> d!473903 (=> res!709953 e!1022010)))

(declare-fun isEmpty!10524 (Option!3158) Bool)

(assert (=> d!473903 (= res!709953 (isEmpty!10524 lt!563106))))

(declare-fun e!1022012 () Option!3158)

(assert (=> d!473903 (= lt!563106 e!1022012)))

(declare-fun c!257987 () Bool)

(assert (=> d!473903 (= c!257987 (and ((_ is Cons!17498) rules!1846) ((_ is Nil!17498) (t!144673 rules!1846))))))

(declare-fun lt!563110 () Unit!27625)

(declare-fun lt!563109 () Unit!27625)

(assert (=> d!473903 (= lt!563110 lt!563109)))

(assert (=> d!473903 (isPrefix!1341 lt!563006 lt!563006)))

(declare-fun lemmaIsPrefixRefl!927 (List!17566 List!17566) Unit!27625)

(assert (=> d!473903 (= lt!563109 (lemmaIsPrefixRefl!927 lt!563006 lt!563006))))

(declare-fun rulesValidInductive!929 (LexerInterface!2710 List!17568) Bool)

(assert (=> d!473903 (rulesValidInductive!929 thiss!17113 rules!1846)))

(assert (=> d!473903 (= (maxPrefix!1274 thiss!17113 rules!1846 lt!563006) lt!563106)))

(declare-fun bm!103134 () Bool)

(declare-fun call!103139 () Option!3158)

(declare-fun maxPrefixOneRule!742 (LexerInterface!2710 Rule!5962 List!17566) Option!3158)

(assert (=> bm!103134 (= call!103139 (maxPrefixOneRule!742 thiss!17113 (h!22899 rules!1846) lt!563006))))

(declare-fun b!1591304 () Bool)

(declare-fun res!709950 () Bool)

(assert (=> b!1591304 (=> (not res!709950) (not e!1022011))))

(declare-fun apply!4323 (TokenValueInjection!6002 BalanceConc!11564) TokenValue!3171)

(assert (=> b!1591304 (= res!709950 (= (value!97481 (_1!9893 (get!5007 lt!563106))) (apply!4323 (transformation!3081 (rule!4889 (_1!9893 (get!5007 lt!563106)))) (seqFromList!1911 (originalCharacters!3895 (_1!9893 (get!5007 lt!563106)))))))))

(declare-fun b!1591305 () Bool)

(declare-fun contains!3059 (List!17568 Rule!5962) Bool)

(assert (=> b!1591305 (= e!1022011 (contains!3059 rules!1846 (rule!4889 (_1!9893 (get!5007 lt!563106)))))))

(declare-fun b!1591306 () Bool)

(assert (=> b!1591306 (= e!1022012 call!103139)))

(declare-fun b!1591307 () Bool)

(declare-fun lt!563108 () Option!3158)

(declare-fun lt!563107 () Option!3158)

(assert (=> b!1591307 (= e!1022012 (ite (and ((_ is None!3157) lt!563108) ((_ is None!3157) lt!563107)) None!3157 (ite ((_ is None!3157) lt!563107) lt!563108 (ite ((_ is None!3157) lt!563108) lt!563107 (ite (>= (size!14075 (_1!9893 (v!24060 lt!563108))) (size!14075 (_1!9893 (v!24060 lt!563107)))) lt!563108 lt!563107)))))))

(assert (=> b!1591307 (= lt!563108 call!103139)))

(assert (=> b!1591307 (= lt!563107 (maxPrefix!1274 thiss!17113 (t!144673 rules!1846) lt!563006))))

(declare-fun b!1591308 () Bool)

(declare-fun res!709955 () Bool)

(assert (=> b!1591308 (=> (not res!709955) (not e!1022011))))

(declare-fun size!14078 (List!17566) Int)

(assert (=> b!1591308 (= res!709955 (< (size!14078 (_2!9893 (get!5007 lt!563106))) (size!14078 lt!563006)))))

(assert (= (and d!473903 c!257987) b!1591306))

(assert (= (and d!473903 (not c!257987)) b!1591307))

(assert (= (or b!1591306 b!1591307) bm!103134))

(assert (= (and d!473903 (not res!709953)) b!1591301))

(assert (= (and b!1591301 res!709956) b!1591303))

(assert (= (and b!1591303 res!709954) b!1591308))

(assert (= (and b!1591308 res!709955) b!1591302))

(assert (= (and b!1591302 res!709952) b!1591304))

(assert (= (and b!1591304 res!709950) b!1591300))

(assert (= (and b!1591300 res!709951) b!1591305))

(declare-fun m!1885427 () Bool)

(assert (=> b!1591303 m!1885427))

(declare-fun m!1885429 () Bool)

(assert (=> b!1591303 m!1885429))

(assert (=> b!1591303 m!1885429))

(declare-fun m!1885431 () Bool)

(assert (=> b!1591303 m!1885431))

(declare-fun m!1885433 () Bool)

(assert (=> b!1591301 m!1885433))

(declare-fun m!1885435 () Bool)

(assert (=> d!473903 m!1885435))

(declare-fun m!1885437 () Bool)

(assert (=> d!473903 m!1885437))

(declare-fun m!1885439 () Bool)

(assert (=> d!473903 m!1885439))

(declare-fun m!1885441 () Bool)

(assert (=> d!473903 m!1885441))

(assert (=> b!1591308 m!1885427))

(declare-fun m!1885443 () Bool)

(assert (=> b!1591308 m!1885443))

(declare-fun m!1885445 () Bool)

(assert (=> b!1591308 m!1885445))

(assert (=> b!1591305 m!1885427))

(declare-fun m!1885447 () Bool)

(assert (=> b!1591305 m!1885447))

(declare-fun m!1885449 () Bool)

(assert (=> b!1591307 m!1885449))

(assert (=> b!1591300 m!1885427))

(assert (=> b!1591300 m!1885429))

(assert (=> b!1591300 m!1885429))

(assert (=> b!1591300 m!1885431))

(assert (=> b!1591300 m!1885431))

(declare-fun m!1885451 () Bool)

(assert (=> b!1591300 m!1885451))

(assert (=> b!1591302 m!1885427))

(assert (=> b!1591302 m!1885429))

(assert (=> b!1591302 m!1885429))

(assert (=> b!1591302 m!1885431))

(assert (=> b!1591302 m!1885431))

(declare-fun m!1885453 () Bool)

(assert (=> b!1591302 m!1885453))

(assert (=> b!1591304 m!1885427))

(declare-fun m!1885455 () Bool)

(assert (=> b!1591304 m!1885455))

(assert (=> b!1591304 m!1885455))

(declare-fun m!1885457 () Bool)

(assert (=> b!1591304 m!1885457))

(declare-fun m!1885459 () Bool)

(assert (=> bm!103134 m!1885459))

(assert (=> b!1591232 d!473903))

(declare-fun d!473915 () Bool)

(declare-fun e!1022015 () Bool)

(assert (=> d!473915 e!1022015))

(declare-fun res!709959 () Bool)

(assert (=> d!473915 (=> (not res!709959) (not e!1022015))))

(declare-fun lt!563113 () BalanceConc!11566)

(assert (=> d!473915 (= res!709959 (= (list!6803 lt!563113) (Cons!17497 (h!22898 tokens!457) Nil!17497)))))

(declare-fun singleton!603 (Token!5728) BalanceConc!11566)

(assert (=> d!473915 (= lt!563113 (singleton!603 (h!22898 tokens!457)))))

(assert (=> d!473915 (= (singletonSeq!1440 (h!22898 tokens!457)) lt!563113)))

(declare-fun b!1591311 () Bool)

(assert (=> b!1591311 (= e!1022015 (isBalanced!1723 (c!257977 lt!563113)))))

(assert (= (and d!473915 res!709959) b!1591311))

(declare-fun m!1885461 () Bool)

(assert (=> d!473915 m!1885461))

(declare-fun m!1885463 () Bool)

(assert (=> d!473915 m!1885463))

(declare-fun m!1885465 () Bool)

(assert (=> b!1591311 m!1885465))

(assert (=> b!1591232 d!473915))

(declare-fun d!473917 () Bool)

(declare-fun list!6806 (Conc!5810) List!17566)

(assert (=> d!473917 (= (list!6804 lt!562996) (list!6806 (c!257975 lt!562996)))))

(declare-fun bs!391828 () Bool)

(assert (= bs!391828 d!473917))

(declare-fun m!1885467 () Bool)

(assert (=> bs!391828 m!1885467))

(assert (=> b!1591232 d!473917))

(declare-fun d!473919 () Bool)

(declare-fun c!257990 () Bool)

(assert (=> d!473919 (= c!257990 ((_ is Cons!17497) (Cons!17497 (h!22898 tokens!457) Nil!17497)))))

(declare-fun e!1022018 () List!17566)

(assert (=> d!473919 (= (printList!825 thiss!17113 (Cons!17497 (h!22898 tokens!457) Nil!17497)) e!1022018)))

(declare-fun b!1591316 () Bool)

(assert (=> b!1591316 (= e!1022018 (++!4577 (list!6804 (charsOf!1730 (h!22898 (Cons!17497 (h!22898 tokens!457) Nil!17497)))) (printList!825 thiss!17113 (t!144672 (Cons!17497 (h!22898 tokens!457) Nil!17497)))))))

(declare-fun b!1591317 () Bool)

(assert (=> b!1591317 (= e!1022018 Nil!17496)))

(assert (= (and d!473919 c!257990) b!1591316))

(assert (= (and d!473919 (not c!257990)) b!1591317))

(declare-fun m!1885469 () Bool)

(assert (=> b!1591316 m!1885469))

(assert (=> b!1591316 m!1885469))

(declare-fun m!1885471 () Bool)

(assert (=> b!1591316 m!1885471))

(declare-fun m!1885473 () Bool)

(assert (=> b!1591316 m!1885473))

(assert (=> b!1591316 m!1885471))

(assert (=> b!1591316 m!1885473))

(declare-fun m!1885475 () Bool)

(assert (=> b!1591316 m!1885475))

(assert (=> b!1591232 d!473919))

(declare-fun d!473921 () Bool)

(declare-fun res!709962 () Bool)

(declare-fun e!1022021 () Bool)

(assert (=> d!473921 (=> (not res!709962) (not e!1022021))))

(declare-fun rulesValid!1095 (LexerInterface!2710 List!17568) Bool)

(assert (=> d!473921 (= res!709962 (rulesValid!1095 thiss!17113 rules!1846))))

(assert (=> d!473921 (= (rulesInvariant!2379 thiss!17113 rules!1846) e!1022021)))

(declare-fun b!1591320 () Bool)

(declare-datatypes ((List!17571 0))(
  ( (Nil!17501) (Cons!17501 (h!22902 String!20187) (t!144718 List!17571)) )
))
(declare-fun noDuplicateTag!1095 (LexerInterface!2710 List!17568 List!17571) Bool)

(assert (=> b!1591320 (= e!1022021 (noDuplicateTag!1095 thiss!17113 rules!1846 Nil!17501))))

(assert (= (and d!473921 res!709962) b!1591320))

(declare-fun m!1885477 () Bool)

(assert (=> d!473921 m!1885477))

(declare-fun m!1885479 () Bool)

(assert (=> b!1591320 m!1885479))

(assert (=> b!1591245 d!473921))

(declare-fun b!1591331 () Bool)

(declare-fun e!1022030 () Bool)

(declare-fun e!1022029 () Bool)

(assert (=> b!1591331 (= e!1022030 e!1022029)))

(declare-fun c!257995 () Bool)

(assert (=> b!1591331 (= c!257995 ((_ is IntegerValue!9514) (value!97481 (h!22898 tokens!457))))))

(declare-fun b!1591332 () Bool)

(declare-fun e!1022028 () Bool)

(declare-fun inv!15 (TokenValue!3171) Bool)

(assert (=> b!1591332 (= e!1022028 (inv!15 (value!97481 (h!22898 tokens!457))))))

(declare-fun d!473923 () Bool)

(declare-fun c!257996 () Bool)

(assert (=> d!473923 (= c!257996 ((_ is IntegerValue!9513) (value!97481 (h!22898 tokens!457))))))

(assert (=> d!473923 (= (inv!21 (value!97481 (h!22898 tokens!457))) e!1022030)))

(declare-fun b!1591333 () Bool)

(declare-fun inv!17 (TokenValue!3171) Bool)

(assert (=> b!1591333 (= e!1022029 (inv!17 (value!97481 (h!22898 tokens!457))))))

(declare-fun b!1591334 () Bool)

(declare-fun inv!16 (TokenValue!3171) Bool)

(assert (=> b!1591334 (= e!1022030 (inv!16 (value!97481 (h!22898 tokens!457))))))

(declare-fun b!1591335 () Bool)

(declare-fun res!709965 () Bool)

(assert (=> b!1591335 (=> res!709965 e!1022028)))

(assert (=> b!1591335 (= res!709965 (not ((_ is IntegerValue!9515) (value!97481 (h!22898 tokens!457)))))))

(assert (=> b!1591335 (= e!1022029 e!1022028)))

(assert (= (and d!473923 c!257996) b!1591334))

(assert (= (and d!473923 (not c!257996)) b!1591331))

(assert (= (and b!1591331 c!257995) b!1591333))

(assert (= (and b!1591331 (not c!257995)) b!1591335))

(assert (= (and b!1591335 (not res!709965)) b!1591332))

(declare-fun m!1885481 () Bool)

(assert (=> b!1591332 m!1885481))

(declare-fun m!1885483 () Bool)

(assert (=> b!1591333 m!1885483))

(declare-fun m!1885485 () Bool)

(assert (=> b!1591334 m!1885485))

(assert (=> b!1591234 d!473923))

(declare-fun d!473925 () Bool)

(assert (=> d!473925 (= (inv!22903 (tag!3353 (rule!4889 (h!22898 tokens!457)))) (= (mod (str.len (value!97480 (tag!3353 (rule!4889 (h!22898 tokens!457))))) 2) 0))))

(assert (=> b!1591223 d!473925))

(declare-fun d!473927 () Bool)

(declare-fun res!709968 () Bool)

(declare-fun e!1022033 () Bool)

(assert (=> d!473927 (=> (not res!709968) (not e!1022033))))

(declare-fun semiInverseModEq!1167 (Int Int) Bool)

(assert (=> d!473927 (= res!709968 (semiInverseModEq!1167 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (toValue!4496 (transformation!3081 (rule!4889 (h!22898 tokens!457))))))))

(assert (=> d!473927 (= (inv!22906 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) e!1022033)))

(declare-fun b!1591338 () Bool)

(declare-fun equivClasses!1108 (Int Int) Bool)

(assert (=> b!1591338 (= e!1022033 (equivClasses!1108 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (toValue!4496 (transformation!3081 (rule!4889 (h!22898 tokens!457))))))))

(assert (= (and d!473927 res!709968) b!1591338))

(declare-fun m!1885487 () Bool)

(assert (=> d!473927 m!1885487))

(declare-fun m!1885489 () Bool)

(assert (=> b!1591338 m!1885489))

(assert (=> b!1591223 d!473927))

(declare-fun d!473929 () Bool)

(declare-fun lt!563116 () C!8992)

(declare-fun apply!4324 (List!17566 Int) C!8992)

(assert (=> d!473929 (= lt!563116 (apply!4324 (list!6804 lt!563011) 0))))

(declare-fun apply!4325 (Conc!5810 Int) C!8992)

(assert (=> d!473929 (= lt!563116 (apply!4325 (c!257975 lt!563011) 0))))

(declare-fun e!1022036 () Bool)

(assert (=> d!473929 e!1022036))

(declare-fun res!709971 () Bool)

(assert (=> d!473929 (=> (not res!709971) (not e!1022036))))

(assert (=> d!473929 (= res!709971 (<= 0 0))))

(assert (=> d!473929 (= (apply!4318 lt!563011 0) lt!563116)))

(declare-fun b!1591341 () Bool)

(assert (=> b!1591341 (= e!1022036 (< 0 (size!14076 lt!563011)))))

(assert (= (and d!473929 res!709971) b!1591341))

(declare-fun m!1885491 () Bool)

(assert (=> d!473929 m!1885491))

(assert (=> d!473929 m!1885491))

(declare-fun m!1885493 () Bool)

(assert (=> d!473929 m!1885493))

(declare-fun m!1885495 () Bool)

(assert (=> d!473929 m!1885495))

(assert (=> b!1591341 m!1885291))

(assert (=> b!1591244 d!473929))

(declare-fun d!473931 () Bool)

(declare-fun e!1022039 () Bool)

(assert (=> d!473931 e!1022039))

(declare-fun res!709974 () Bool)

(assert (=> d!473931 (=> (not res!709974) (not e!1022039))))

(declare-fun lt!563119 () BalanceConc!11564)

(assert (=> d!473931 (= res!709974 (= (list!6804 lt!563119) (Cons!17496 (apply!4318 lt!563011 0) Nil!17496)))))

(declare-fun singleton!605 (C!8992) BalanceConc!11564)

(assert (=> d!473931 (= lt!563119 (singleton!605 (apply!4318 lt!563011 0)))))

(assert (=> d!473931 (= (singletonSeq!1441 (apply!4318 lt!563011 0)) lt!563119)))

(declare-fun b!1591344 () Bool)

(declare-fun isBalanced!1725 (Conc!5810) Bool)

(assert (=> b!1591344 (= e!1022039 (isBalanced!1725 (c!257975 lt!563119)))))

(assert (= (and d!473931 res!709974) b!1591344))

(declare-fun m!1885497 () Bool)

(assert (=> d!473931 m!1885497))

(assert (=> d!473931 m!1885229))

(declare-fun m!1885499 () Bool)

(assert (=> d!473931 m!1885499))

(declare-fun m!1885501 () Bool)

(assert (=> b!1591344 m!1885501))

(assert (=> b!1591244 d!473931))

(declare-fun d!473933 () Bool)

(declare-fun e!1022042 () Bool)

(assert (=> d!473933 e!1022042))

(declare-fun res!709983 () Bool)

(assert (=> d!473933 (=> (not res!709983) (not e!1022042))))

(declare-fun appendAssocInst!399 (Conc!5810 Conc!5810) Bool)

(assert (=> d!473933 (= res!709983 (appendAssocInst!399 (c!257975 lt!563009) (c!257975 lt!563007)))))

(declare-fun lt!563122 () BalanceConc!11564)

(declare-fun ++!4580 (Conc!5810 Conc!5810) Conc!5810)

(assert (=> d!473933 (= lt!563122 (BalanceConc!11565 (++!4580 (c!257975 lt!563009) (c!257975 lt!563007))))))

(assert (=> d!473933 (= (++!4578 lt!563009 lt!563007) lt!563122)))

(declare-fun b!1591353 () Bool)

(declare-fun res!709985 () Bool)

(assert (=> b!1591353 (=> (not res!709985) (not e!1022042))))

(assert (=> b!1591353 (= res!709985 (isBalanced!1725 (++!4580 (c!257975 lt!563009) (c!257975 lt!563007))))))

(declare-fun b!1591355 () Bool)

(declare-fun res!709986 () Bool)

(assert (=> b!1591355 (=> (not res!709986) (not e!1022042))))

(declare-fun height!867 (Conc!5810) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1591355 (= res!709986 (>= (height!867 (++!4580 (c!257975 lt!563009) (c!257975 lt!563007))) (max!0 (height!867 (c!257975 lt!563009)) (height!867 (c!257975 lt!563007)))))))

(declare-fun b!1591356 () Bool)

(assert (=> b!1591356 (= e!1022042 (= (list!6804 lt!563122) (++!4577 (list!6804 lt!563009) (list!6804 lt!563007))))))

(declare-fun b!1591354 () Bool)

(declare-fun res!709984 () Bool)

(assert (=> b!1591354 (=> (not res!709984) (not e!1022042))))

(assert (=> b!1591354 (= res!709984 (<= (height!867 (++!4580 (c!257975 lt!563009) (c!257975 lt!563007))) (+ (max!0 (height!867 (c!257975 lt!563009)) (height!867 (c!257975 lt!563007))) 1)))))

(assert (= (and d!473933 res!709983) b!1591353))

(assert (= (and b!1591353 res!709985) b!1591354))

(assert (= (and b!1591354 res!709984) b!1591355))

(assert (= (and b!1591355 res!709986) b!1591356))

(declare-fun m!1885503 () Bool)

(assert (=> b!1591355 m!1885503))

(declare-fun m!1885505 () Bool)

(assert (=> b!1591355 m!1885505))

(declare-fun m!1885507 () Bool)

(assert (=> b!1591355 m!1885507))

(assert (=> b!1591355 m!1885507))

(declare-fun m!1885509 () Bool)

(assert (=> b!1591355 m!1885509))

(declare-fun m!1885511 () Bool)

(assert (=> b!1591355 m!1885511))

(assert (=> b!1591355 m!1885509))

(assert (=> b!1591355 m!1885503))

(declare-fun m!1885513 () Bool)

(assert (=> b!1591356 m!1885513))

(assert (=> b!1591356 m!1885219))

(assert (=> b!1591356 m!1885289))

(assert (=> b!1591356 m!1885219))

(assert (=> b!1591356 m!1885289))

(declare-fun m!1885515 () Bool)

(assert (=> b!1591356 m!1885515))

(assert (=> b!1591354 m!1885503))

(assert (=> b!1591354 m!1885505))

(assert (=> b!1591354 m!1885507))

(assert (=> b!1591354 m!1885507))

(assert (=> b!1591354 m!1885509))

(assert (=> b!1591354 m!1885511))

(assert (=> b!1591354 m!1885509))

(assert (=> b!1591354 m!1885503))

(declare-fun m!1885517 () Bool)

(assert (=> d!473933 m!1885517))

(assert (=> d!473933 m!1885503))

(assert (=> b!1591353 m!1885503))

(assert (=> b!1591353 m!1885503))

(declare-fun m!1885519 () Bool)

(assert (=> b!1591353 m!1885519))

(assert (=> b!1591244 d!473933))

(declare-fun lt!563145 () Bool)

(declare-fun d!473935 () Bool)

(assert (=> d!473935 (= lt!563145 (prefixMatch!344 lt!563000 (list!6804 (++!4578 lt!563009 lt!563007))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!17572 0))(
  ( (Nil!17502) (Cons!17502 (h!22903 Regex!4409) (t!144719 List!17572)) )
))
(declare-datatypes ((Context!1670 0))(
  ( (Context!1671 (exprs!1335 List!17572)) )
))
(declare-fun prefixMatchZipperSequence!439 ((InoxSet Context!1670) BalanceConc!11564 Int) Bool)

(declare-fun focus!141 (Regex!4409) (InoxSet Context!1670))

(assert (=> d!473935 (= lt!563145 (prefixMatchZipperSequence!439 (focus!141 lt!563000) (++!4578 lt!563009 lt!563007) 0))))

(declare-fun lt!563143 () Unit!27625)

(declare-fun lt!563144 () Unit!27625)

(assert (=> d!473935 (= lt!563143 lt!563144)))

(declare-fun lt!563149 () List!17566)

(declare-fun lt!563152 () (InoxSet Context!1670))

(declare-fun prefixMatchZipper!120 ((InoxSet Context!1670) List!17566) Bool)

(assert (=> d!473935 (= (prefixMatch!344 lt!563000 lt!563149) (prefixMatchZipper!120 lt!563152 lt!563149))))

(declare-datatypes ((List!17573 0))(
  ( (Nil!17503) (Cons!17503 (h!22904 Context!1670) (t!144720 List!17573)) )
))
(declare-fun lt!563148 () List!17573)

(declare-fun prefixMatchZipperRegexEquiv!120 ((InoxSet Context!1670) List!17573 Regex!4409 List!17566) Unit!27625)

(assert (=> d!473935 (= lt!563144 (prefixMatchZipperRegexEquiv!120 lt!563152 lt!563148 lt!563000 lt!563149))))

(assert (=> d!473935 (= lt!563149 (list!6804 (++!4578 lt!563009 lt!563007)))))

(declare-fun toList!881 ((InoxSet Context!1670)) List!17573)

(assert (=> d!473935 (= lt!563148 (toList!881 (focus!141 lt!563000)))))

(assert (=> d!473935 (= lt!563152 (focus!141 lt!563000))))

(declare-fun lt!563151 () Unit!27625)

(declare-fun lt!563146 () Unit!27625)

(assert (=> d!473935 (= lt!563151 lt!563146)))

(declare-fun lt!563147 () (InoxSet Context!1670))

(declare-fun lt!563150 () Int)

(declare-fun dropList!543 (BalanceConc!11564 Int) List!17566)

(assert (=> d!473935 (= (prefixMatchZipper!120 lt!563147 (dropList!543 (++!4578 lt!563009 lt!563007) lt!563150)) (prefixMatchZipperSequence!439 lt!563147 (++!4578 lt!563009 lt!563007) lt!563150))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!120 ((InoxSet Context!1670) BalanceConc!11564 Int) Unit!27625)

(assert (=> d!473935 (= lt!563146 (lemmaprefixMatchZipperSequenceEquivalent!120 lt!563147 (++!4578 lt!563009 lt!563007) lt!563150))))

(assert (=> d!473935 (= lt!563150 0)))

(assert (=> d!473935 (= lt!563147 (focus!141 lt!563000))))

(declare-fun validRegex!1746 (Regex!4409) Bool)

(assert (=> d!473935 (validRegex!1746 lt!563000)))

(assert (=> d!473935 (= (prefixMatchZipperSequence!437 lt!563000 (++!4578 lt!563009 lt!563007)) lt!563145)))

(declare-fun bs!391829 () Bool)

(assert (= bs!391829 d!473935))

(declare-fun m!1885521 () Bool)

(assert (=> bs!391829 m!1885521))

(declare-fun m!1885523 () Bool)

(assert (=> bs!391829 m!1885523))

(declare-fun m!1885525 () Bool)

(assert (=> bs!391829 m!1885525))

(assert (=> bs!391829 m!1885231))

(declare-fun m!1885527 () Bool)

(assert (=> bs!391829 m!1885527))

(declare-fun m!1885529 () Bool)

(assert (=> bs!391829 m!1885529))

(declare-fun m!1885531 () Bool)

(assert (=> bs!391829 m!1885531))

(assert (=> bs!391829 m!1885231))

(declare-fun m!1885533 () Bool)

(assert (=> bs!391829 m!1885533))

(declare-fun m!1885535 () Bool)

(assert (=> bs!391829 m!1885535))

(declare-fun m!1885537 () Bool)

(assert (=> bs!391829 m!1885537))

(assert (=> bs!391829 m!1885231))

(assert (=> bs!391829 m!1885535))

(assert (=> bs!391829 m!1885529))

(declare-fun m!1885539 () Bool)

(assert (=> bs!391829 m!1885539))

(assert (=> bs!391829 m!1885231))

(declare-fun m!1885541 () Bool)

(assert (=> bs!391829 m!1885541))

(assert (=> bs!391829 m!1885529))

(assert (=> bs!391829 m!1885231))

(declare-fun m!1885543 () Bool)

(assert (=> bs!391829 m!1885543))

(assert (=> bs!391829 m!1885533))

(declare-fun m!1885545 () Bool)

(assert (=> bs!391829 m!1885545))

(assert (=> b!1591244 d!473935))

(declare-fun d!473937 () Bool)

(declare-fun lt!563155 () Unit!27625)

(declare-fun lemma!207 (List!17568 LexerInterface!2710 List!17568) Unit!27625)

(assert (=> d!473937 (= lt!563155 (lemma!207 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!66694 () Int)

(declare-fun generalisedUnion!215 (List!17572) Regex!4409)

(declare-fun map!3627 (List!17568 Int) List!17572)

(assert (=> d!473937 (= (rulesRegex!471 thiss!17113 rules!1846) (generalisedUnion!215 (map!3627 rules!1846 lambda!66694)))))

(declare-fun bs!391830 () Bool)

(assert (= bs!391830 d!473937))

(declare-fun m!1885547 () Bool)

(assert (=> bs!391830 m!1885547))

(declare-fun m!1885549 () Bool)

(assert (=> bs!391830 m!1885549))

(assert (=> bs!391830 m!1885549))

(declare-fun m!1885551 () Bool)

(assert (=> bs!391830 m!1885551))

(assert (=> b!1591244 d!473937))

(declare-fun d!473939 () Bool)

(declare-fun lt!563158 () BalanceConc!11564)

(assert (=> d!473939 (= (list!6804 lt!563158) (originalCharacters!3895 (h!22898 (t!144672 tokens!457))))))

(declare-fun dynLambda!7787 (Int TokenValue!3171) BalanceConc!11564)

(assert (=> d!473939 (= lt!563158 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (value!97481 (h!22898 (t!144672 tokens!457)))))))

(assert (=> d!473939 (= (charsOf!1730 (h!22898 (t!144672 tokens!457))) lt!563158)))

(declare-fun b_lambda!50071 () Bool)

(assert (=> (not b_lambda!50071) (not d!473939)))

(declare-fun t!144682 () Bool)

(declare-fun tb!89595 () Bool)

(assert (=> (and b!1591233 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457)))))) t!144682) tb!89595))

(declare-fun b!1591361 () Bool)

(declare-fun e!1022045 () Bool)

(declare-fun tp!467278 () Bool)

(declare-fun inv!22910 (Conc!5810) Bool)

(assert (=> b!1591361 (= e!1022045 (and (inv!22910 (c!257975 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (value!97481 (h!22898 (t!144672 tokens!457)))))) tp!467278))))

(declare-fun result!108472 () Bool)

(declare-fun inv!22911 (BalanceConc!11564) Bool)

(assert (=> tb!89595 (= result!108472 (and (inv!22911 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (value!97481 (h!22898 (t!144672 tokens!457))))) e!1022045))))

(assert (= tb!89595 b!1591361))

(declare-fun m!1885553 () Bool)

(assert (=> b!1591361 m!1885553))

(declare-fun m!1885555 () Bool)

(assert (=> tb!89595 m!1885555))

(assert (=> d!473939 t!144682))

(declare-fun b_and!111609 () Bool)

(assert (= b_and!111599 (and (=> t!144682 result!108472) b_and!111609)))

(declare-fun t!144684 () Bool)

(declare-fun tb!89597 () Bool)

(assert (=> (and b!1591225 (= (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457)))))) t!144684) tb!89597))

(declare-fun result!108476 () Bool)

(assert (= result!108476 result!108472))

(assert (=> d!473939 t!144684))

(declare-fun b_and!111611 () Bool)

(assert (= b_and!111603 (and (=> t!144684 result!108476) b_and!111611)))

(declare-fun m!1885557 () Bool)

(assert (=> d!473939 m!1885557))

(declare-fun m!1885559 () Bool)

(assert (=> d!473939 m!1885559))

(assert (=> b!1591244 d!473939))

(declare-fun d!473941 () Bool)

(declare-fun lt!563217 () Bool)

(declare-fun e!1022056 () Bool)

(assert (=> d!473941 (= lt!563217 e!1022056)))

(declare-fun res!710000 () Bool)

(assert (=> d!473941 (=> (not res!710000) (not e!1022056))))

(assert (=> d!473941 (= res!710000 (= (list!6803 (_1!9892 (lex!1194 thiss!17113 rules!1846 (print!1241 thiss!17113 (singletonSeq!1440 (h!22898 tokens!457)))))) (list!6803 (singletonSeq!1440 (h!22898 tokens!457)))))))

(declare-fun e!1022057 () Bool)

(assert (=> d!473941 (= lt!563217 e!1022057)))

(declare-fun res!710001 () Bool)

(assert (=> d!473941 (=> (not res!710001) (not e!1022057))))

(declare-fun lt!563218 () tuple2!16980)

(assert (=> d!473941 (= res!710001 (= (size!14077 (_1!9892 lt!563218)) 1))))

(assert (=> d!473941 (= lt!563218 (lex!1194 thiss!17113 rules!1846 (print!1241 thiss!17113 (singletonSeq!1440 (h!22898 tokens!457)))))))

(assert (=> d!473941 (not (isEmpty!10522 rules!1846))))

(assert (=> d!473941 (= (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 tokens!457)) lt!563217)))

(declare-fun b!1591380 () Bool)

(declare-fun res!709999 () Bool)

(assert (=> b!1591380 (=> (not res!709999) (not e!1022057))))

(assert (=> b!1591380 (= res!709999 (= (apply!4319 (_1!9892 lt!563218) 0) (h!22898 tokens!457)))))

(declare-fun b!1591381 () Bool)

(declare-fun isEmpty!10528 (BalanceConc!11564) Bool)

(assert (=> b!1591381 (= e!1022057 (isEmpty!10528 (_2!9892 lt!563218)))))

(declare-fun b!1591382 () Bool)

(assert (=> b!1591382 (= e!1022056 (isEmpty!10528 (_2!9892 (lex!1194 thiss!17113 rules!1846 (print!1241 thiss!17113 (singletonSeq!1440 (h!22898 tokens!457)))))))))

(assert (= (and d!473941 res!710001) b!1591380))

(assert (= (and b!1591380 res!709999) b!1591381))

(assert (= (and d!473941 res!710000) b!1591382))

(declare-fun m!1885613 () Bool)

(assert (=> d!473941 m!1885613))

(declare-fun m!1885615 () Bool)

(assert (=> d!473941 m!1885615))

(assert (=> d!473941 m!1885275))

(declare-fun m!1885617 () Bool)

(assert (=> d!473941 m!1885617))

(assert (=> d!473941 m!1885255))

(assert (=> d!473941 m!1885275))

(assert (=> d!473941 m!1885613))

(declare-fun m!1885619 () Bool)

(assert (=> d!473941 m!1885619))

(assert (=> d!473941 m!1885275))

(declare-fun m!1885621 () Bool)

(assert (=> d!473941 m!1885621))

(declare-fun m!1885623 () Bool)

(assert (=> b!1591380 m!1885623))

(declare-fun m!1885625 () Bool)

(assert (=> b!1591381 m!1885625))

(assert (=> b!1591382 m!1885275))

(assert (=> b!1591382 m!1885275))

(assert (=> b!1591382 m!1885613))

(assert (=> b!1591382 m!1885613))

(assert (=> b!1591382 m!1885615))

(declare-fun m!1885627 () Bool)

(assert (=> b!1591382 m!1885627))

(assert (=> b!1591246 d!473941))

(declare-fun d!473947 () Bool)

(assert (=> d!473947 (= (inv!22903 (tag!3353 (h!22899 rules!1846))) (= (mod (str.len (value!97480 (tag!3353 (h!22899 rules!1846)))) 2) 0))))

(assert (=> b!1591235 d!473947))

(declare-fun d!473949 () Bool)

(declare-fun res!710002 () Bool)

(declare-fun e!1022058 () Bool)

(assert (=> d!473949 (=> (not res!710002) (not e!1022058))))

(assert (=> d!473949 (= res!710002 (semiInverseModEq!1167 (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toValue!4496 (transformation!3081 (h!22899 rules!1846)))))))

(assert (=> d!473949 (= (inv!22906 (transformation!3081 (h!22899 rules!1846))) e!1022058)))

(declare-fun b!1591383 () Bool)

(assert (=> b!1591383 (= e!1022058 (equivClasses!1108 (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toValue!4496 (transformation!3081 (h!22899 rules!1846)))))))

(assert (= (and d!473949 res!710002) b!1591383))

(declare-fun m!1885629 () Bool)

(assert (=> d!473949 m!1885629))

(declare-fun m!1885631 () Bool)

(assert (=> b!1591383 m!1885631))

(assert (=> b!1591235 d!473949))

(declare-fun d!473951 () Bool)

(assert (=> d!473951 (= (isEmpty!10522 rules!1846) ((_ is Nil!17498) rules!1846))))

(assert (=> b!1591224 d!473951))

(declare-fun d!473953 () Bool)

(assert (=> d!473953 (= (list!6803 (_1!9892 lt!563016)) (list!6805 (c!257977 (_1!9892 lt!563016))))))

(declare-fun bs!391832 () Bool)

(assert (= bs!391832 d!473953))

(declare-fun m!1885633 () Bool)

(assert (=> bs!391832 m!1885633))

(assert (=> b!1591226 d!473953))

(declare-fun d!473955 () Bool)

(declare-fun e!1022115 () Bool)

(assert (=> d!473955 e!1022115))

(declare-fun res!710062 () Bool)

(assert (=> d!473955 (=> (not res!710062) (not e!1022115))))

(assert (=> d!473955 (= res!710062 (= (list!6803 (_1!9892 (lex!1194 thiss!17113 rules!1846 (print!1241 thiss!17113 (seqFromList!1912 (t!144672 tokens!457)))))) (t!144672 tokens!457)))))

(declare-fun lt!563332 () Unit!27625)

(declare-fun e!1022116 () Unit!27625)

(assert (=> d!473955 (= lt!563332 e!1022116)))

(declare-fun c!258024 () Bool)

(assert (=> d!473955 (= c!258024 (or ((_ is Nil!17497) (t!144672 tokens!457)) ((_ is Nil!17497) (t!144672 (t!144672 tokens!457)))))))

(assert (=> d!473955 (not (isEmpty!10522 rules!1846))))

(assert (=> d!473955 (= (theoremInvertabilityWhenTokenListSeparable!155 thiss!17113 rules!1846 (t!144672 tokens!457)) lt!563332)))

(declare-fun b!1591484 () Bool)

(declare-fun Unit!27629 () Unit!27625)

(assert (=> b!1591484 (= e!1022116 Unit!27629)))

(declare-fun b!1591485 () Bool)

(declare-fun Unit!27630 () Unit!27625)

(assert (=> b!1591485 (= e!1022116 Unit!27630)))

(declare-fun lt!563338 () BalanceConc!11564)

(assert (=> b!1591485 (= lt!563338 (print!1241 thiss!17113 (seqFromList!1912 (t!144672 tokens!457))))))

(declare-fun lt!563346 () BalanceConc!11564)

(assert (=> b!1591485 (= lt!563346 (print!1241 thiss!17113 (seqFromList!1912 (t!144672 (t!144672 tokens!457)))))))

(declare-fun lt!563342 () tuple2!16980)

(assert (=> b!1591485 (= lt!563342 (lex!1194 thiss!17113 rules!1846 lt!563346))))

(declare-fun lt!563337 () List!17566)

(assert (=> b!1591485 (= lt!563337 (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457)))))))

(declare-fun lt!563348 () List!17566)

(assert (=> b!1591485 (= lt!563348 (list!6804 lt!563346))))

(declare-fun lt!563351 () Unit!27625)

(assert (=> b!1591485 (= lt!563351 (lemmaConcatTwoListThenFirstIsPrefix!866 lt!563337 lt!563348))))

(assert (=> b!1591485 (isPrefix!1341 lt!563337 (++!4577 lt!563337 lt!563348))))

(declare-fun lt!563340 () Unit!27625)

(assert (=> b!1591485 (= lt!563340 lt!563351)))

(declare-fun lt!563339 () Unit!27625)

(assert (=> b!1591485 (= lt!563339 (theoremInvertabilityWhenTokenListSeparable!155 thiss!17113 rules!1846 (t!144672 (t!144672 tokens!457))))))

(declare-fun lt!563350 () Unit!27625)

(assert (=> b!1591485 (= lt!563350 (seqFromListBHdTlConstructive!158 (h!22898 (t!144672 (t!144672 tokens!457))) (t!144672 (t!144672 (t!144672 tokens!457))) (_1!9892 lt!563342)))))

(assert (=> b!1591485 (= (list!6803 (_1!9892 lt!563342)) (list!6803 (prepend!575 (seqFromList!1912 (t!144672 (t!144672 (t!144672 tokens!457)))) (h!22898 (t!144672 (t!144672 tokens!457))))))))

(declare-fun lt!563334 () Unit!27625)

(assert (=> b!1591485 (= lt!563334 lt!563350)))

(declare-fun lt!563329 () Option!3158)

(assert (=> b!1591485 (= lt!563329 (maxPrefix!1274 thiss!17113 rules!1846 (list!6804 lt!563338)))))

(assert (=> b!1591485 (= (print!1241 thiss!17113 (singletonSeq!1440 (h!22898 (t!144672 tokens!457)))) (printTailRec!763 thiss!17113 (singletonSeq!1440 (h!22898 (t!144672 tokens!457))) 0 (BalanceConc!11565 Empty!5810)))))

(declare-fun lt!563331 () Unit!27625)

(declare-fun Unit!27631 () Unit!27625)

(assert (=> b!1591485 (= lt!563331 Unit!27631)))

(declare-fun lt!563352 () Unit!27625)

(assert (=> b!1591485 (= lt!563352 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!284 thiss!17113 rules!1846 (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457)))) (list!6804 lt!563346)))))

(assert (=> b!1591485 (= (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457)))) (originalCharacters!3895 (h!22898 (t!144672 tokens!457))))))

(declare-fun lt!563353 () Unit!27625)

(declare-fun Unit!27632 () Unit!27625)

(assert (=> b!1591485 (= lt!563353 Unit!27632)))

(assert (=> b!1591485 (= (list!6804 (singletonSeq!1441 (apply!4318 (charsOf!1730 (h!22898 (t!144672 (t!144672 tokens!457)))) 0))) (Cons!17496 (head!3249 (originalCharacters!3895 (h!22898 (t!144672 (t!144672 tokens!457))))) Nil!17496))))

(declare-fun lt!563333 () Unit!27625)

(declare-fun Unit!27633 () Unit!27625)

(assert (=> b!1591485 (= lt!563333 Unit!27633)))

(assert (=> b!1591485 (= (list!6804 (singletonSeq!1441 (apply!4318 (charsOf!1730 (h!22898 (t!144672 (t!144672 tokens!457)))) 0))) (Cons!17496 (head!3249 (list!6804 lt!563346)) Nil!17496))))

(declare-fun lt!563336 () Unit!27625)

(declare-fun Unit!27634 () Unit!27625)

(assert (=> b!1591485 (= lt!563336 Unit!27634)))

(declare-fun head!3252 (BalanceConc!11564) C!8992)

(assert (=> b!1591485 (= (list!6804 (singletonSeq!1441 (apply!4318 (charsOf!1730 (h!22898 (t!144672 (t!144672 tokens!457)))) 0))) (Cons!17496 (head!3252 lt!563346) Nil!17496))))

(declare-fun lt!563345 () Unit!27625)

(declare-fun Unit!27635 () Unit!27625)

(assert (=> b!1591485 (= lt!563345 Unit!27635)))

(assert (=> b!1591485 (isDefined!2531 (maxPrefix!1274 thiss!17113 rules!1846 (originalCharacters!3895 (h!22898 (t!144672 tokens!457)))))))

(declare-fun lt!563347 () Unit!27625)

(declare-fun Unit!27636 () Unit!27625)

(assert (=> b!1591485 (= lt!563347 Unit!27636)))

(assert (=> b!1591485 (isDefined!2531 (maxPrefix!1274 thiss!17113 rules!1846 (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457))))))))

(declare-fun lt!563335 () Unit!27625)

(declare-fun Unit!27637 () Unit!27625)

(assert (=> b!1591485 (= lt!563335 Unit!27637)))

(declare-fun lt!563341 () Unit!27625)

(declare-fun Unit!27638 () Unit!27625)

(assert (=> b!1591485 (= lt!563341 Unit!27638)))

(assert (=> b!1591485 (= (_1!9893 (get!5007 (maxPrefix!1274 thiss!17113 rules!1846 (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457))))))) (h!22898 (t!144672 tokens!457)))))

(declare-fun lt!563349 () Unit!27625)

(declare-fun Unit!27639 () Unit!27625)

(assert (=> b!1591485 (= lt!563349 Unit!27639)))

(declare-fun isEmpty!10530 (List!17566) Bool)

(assert (=> b!1591485 (isEmpty!10530 (_2!9893 (get!5007 (maxPrefix!1274 thiss!17113 rules!1846 (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457))))))))))

(declare-fun lt!563343 () Unit!27625)

(declare-fun Unit!27640 () Unit!27625)

(assert (=> b!1591485 (= lt!563343 Unit!27640)))

(assert (=> b!1591485 (matchR!1927 (regex!3081 (rule!4889 (h!22898 (t!144672 tokens!457)))) (list!6804 (charsOf!1730 (h!22898 (t!144672 tokens!457)))))))

(declare-fun lt!563344 () Unit!27625)

(declare-fun Unit!27641 () Unit!27625)

(assert (=> b!1591485 (= lt!563344 Unit!27641)))

(assert (=> b!1591485 (= (rule!4889 (h!22898 (t!144672 tokens!457))) (rule!4889 (h!22898 (t!144672 tokens!457))))))

(declare-fun lt!563328 () Unit!27625)

(declare-fun Unit!27642 () Unit!27625)

(assert (=> b!1591485 (= lt!563328 Unit!27642)))

(declare-fun lt!563330 () Unit!27625)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!77 (LexerInterface!2710 List!17568 Token!5728 Rule!5962 List!17566) Unit!27625)

(assert (=> b!1591485 (= lt!563330 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!77 thiss!17113 rules!1846 (h!22898 (t!144672 tokens!457)) (rule!4889 (h!22898 (t!144672 tokens!457))) (list!6804 lt!563346)))))

(declare-fun b!1591486 () Bool)

(assert (=> b!1591486 (= e!1022115 (isEmpty!10528 (_2!9892 (lex!1194 thiss!17113 rules!1846 (print!1241 thiss!17113 (seqFromList!1912 (t!144672 tokens!457)))))))))

(assert (= (and d!473955 c!258024) b!1591484))

(assert (= (and d!473955 (not c!258024)) b!1591485))

(assert (= (and d!473955 res!710062) b!1591486))

(declare-fun m!1885827 () Bool)

(assert (=> d!473955 m!1885827))

(assert (=> d!473955 m!1885207))

(assert (=> d!473955 m!1885255))

(declare-fun m!1885829 () Bool)

(assert (=> d!473955 m!1885829))

(declare-fun m!1885831 () Bool)

(assert (=> d!473955 m!1885831))

(assert (=> d!473955 m!1885207))

(assert (=> d!473955 m!1885829))

(declare-fun m!1885833 () Bool)

(assert (=> b!1591485 m!1885833))

(declare-fun m!1885835 () Bool)

(assert (=> b!1591485 m!1885835))

(declare-fun m!1885837 () Bool)

(assert (=> b!1591485 m!1885837))

(declare-fun m!1885839 () Bool)

(assert (=> b!1591485 m!1885839))

(declare-fun m!1885841 () Bool)

(assert (=> b!1591485 m!1885841))

(assert (=> b!1591485 m!1885207))

(declare-fun m!1885843 () Bool)

(assert (=> b!1591485 m!1885843))

(declare-fun m!1885845 () Bool)

(assert (=> b!1591485 m!1885845))

(declare-fun m!1885847 () Bool)

(assert (=> b!1591485 m!1885847))

(assert (=> b!1591485 m!1885841))

(declare-fun m!1885849 () Bool)

(assert (=> b!1591485 m!1885849))

(declare-fun m!1885851 () Bool)

(assert (=> b!1591485 m!1885851))

(assert (=> b!1591485 m!1885227))

(declare-fun m!1885853 () Bool)

(assert (=> b!1591485 m!1885853))

(declare-fun m!1885855 () Bool)

(assert (=> b!1591485 m!1885855))

(declare-fun m!1885857 () Bool)

(assert (=> b!1591485 m!1885857))

(assert (=> b!1591485 m!1885845))

(declare-fun m!1885859 () Bool)

(assert (=> b!1591485 m!1885859))

(assert (=> b!1591485 m!1885837))

(assert (=> b!1591485 m!1885191))

(declare-fun m!1885861 () Bool)

(assert (=> b!1591485 m!1885861))

(assert (=> b!1591485 m!1885849))

(declare-fun m!1885863 () Bool)

(assert (=> b!1591485 m!1885863))

(declare-fun m!1885865 () Bool)

(assert (=> b!1591485 m!1885865))

(declare-fun m!1885867 () Bool)

(assert (=> b!1591485 m!1885867))

(declare-fun m!1885869 () Bool)

(assert (=> b!1591485 m!1885869))

(declare-fun m!1885871 () Bool)

(assert (=> b!1591485 m!1885871))

(assert (=> b!1591485 m!1885865))

(declare-fun m!1885873 () Bool)

(assert (=> b!1591485 m!1885873))

(declare-fun m!1885875 () Bool)

(assert (=> b!1591485 m!1885875))

(declare-fun m!1885877 () Bool)

(assert (=> b!1591485 m!1885877))

(assert (=> b!1591485 m!1885867))

(declare-fun m!1885879 () Bool)

(assert (=> b!1591485 m!1885879))

(declare-fun m!1885881 () Bool)

(assert (=> b!1591485 m!1885881))

(declare-fun m!1885883 () Bool)

(assert (=> b!1591485 m!1885883))

(declare-fun m!1885885 () Bool)

(assert (=> b!1591485 m!1885885))

(declare-fun m!1885887 () Bool)

(assert (=> b!1591485 m!1885887))

(assert (=> b!1591485 m!1885867))

(assert (=> b!1591485 m!1885845))

(assert (=> b!1591485 m!1885207))

(assert (=> b!1591485 m!1885829))

(assert (=> b!1591485 m!1885227))

(assert (=> b!1591485 m!1885867))

(assert (=> b!1591485 m!1885871))

(declare-fun m!1885889 () Bool)

(assert (=> b!1591485 m!1885889))

(assert (=> b!1591485 m!1885889))

(assert (=> b!1591485 m!1885855))

(declare-fun m!1885891 () Bool)

(assert (=> b!1591485 m!1885891))

(declare-fun m!1885893 () Bool)

(assert (=> b!1591485 m!1885893))

(assert (=> b!1591485 m!1885879))

(declare-fun m!1885895 () Bool)

(assert (=> b!1591485 m!1885895))

(assert (=> b!1591485 m!1885891))

(assert (=> b!1591485 m!1885879))

(declare-fun m!1885897 () Bool)

(assert (=> b!1591485 m!1885897))

(assert (=> b!1591485 m!1885885))

(assert (=> b!1591485 m!1885191))

(assert (=> b!1591485 m!1885879))

(assert (=> b!1591485 m!1885865))

(declare-fun m!1885899 () Bool)

(assert (=> b!1591485 m!1885899))

(assert (=> b!1591486 m!1885207))

(assert (=> b!1591486 m!1885207))

(assert (=> b!1591486 m!1885829))

(assert (=> b!1591486 m!1885829))

(assert (=> b!1591486 m!1885831))

(declare-fun m!1885901 () Bool)

(assert (=> b!1591486 m!1885901))

(assert (=> b!1591226 d!473955))

(declare-fun d!474003 () Bool)

(declare-fun e!1022124 () Bool)

(assert (=> d!474003 e!1022124))

(declare-fun res!710074 () Bool)

(assert (=> d!474003 (=> res!710074 e!1022124)))

(declare-fun lt!563356 () Bool)

(assert (=> d!474003 (= res!710074 (not lt!563356))))

(declare-fun e!1022125 () Bool)

(assert (=> d!474003 (= lt!563356 e!1022125)))

(declare-fun res!710071 () Bool)

(assert (=> d!474003 (=> res!710071 e!1022125)))

(assert (=> d!474003 (= res!710071 ((_ is Nil!17496) lt!563015))))

(assert (=> d!474003 (= (isPrefix!1341 lt!563015 lt!563019) lt!563356)))

(declare-fun b!1591496 () Bool)

(declare-fun res!710072 () Bool)

(declare-fun e!1022123 () Bool)

(assert (=> b!1591496 (=> (not res!710072) (not e!1022123))))

(assert (=> b!1591496 (= res!710072 (= (head!3249 lt!563015) (head!3249 lt!563019)))))

(declare-fun b!1591498 () Bool)

(assert (=> b!1591498 (= e!1022124 (>= (size!14078 lt!563019) (size!14078 lt!563015)))))

(declare-fun b!1591497 () Bool)

(declare-fun tail!2292 (List!17566) List!17566)

(assert (=> b!1591497 (= e!1022123 (isPrefix!1341 (tail!2292 lt!563015) (tail!2292 lt!563019)))))

(declare-fun b!1591495 () Bool)

(assert (=> b!1591495 (= e!1022125 e!1022123)))

(declare-fun res!710073 () Bool)

(assert (=> b!1591495 (=> (not res!710073) (not e!1022123))))

(assert (=> b!1591495 (= res!710073 (not ((_ is Nil!17496) lt!563019)))))

(assert (= (and d!474003 (not res!710071)) b!1591495))

(assert (= (and b!1591495 res!710073) b!1591496))

(assert (= (and b!1591496 res!710072) b!1591497))

(assert (= (and d!474003 (not res!710074)) b!1591498))

(declare-fun m!1885903 () Bool)

(assert (=> b!1591496 m!1885903))

(declare-fun m!1885905 () Bool)

(assert (=> b!1591496 m!1885905))

(declare-fun m!1885907 () Bool)

(assert (=> b!1591498 m!1885907))

(declare-fun m!1885909 () Bool)

(assert (=> b!1591498 m!1885909))

(declare-fun m!1885911 () Bool)

(assert (=> b!1591497 m!1885911))

(declare-fun m!1885913 () Bool)

(assert (=> b!1591497 m!1885913))

(assert (=> b!1591497 m!1885911))

(assert (=> b!1591497 m!1885913))

(declare-fun m!1885915 () Bool)

(assert (=> b!1591497 m!1885915))

(assert (=> b!1591226 d!474003))

(declare-fun d!474005 () Bool)

(assert (=> d!474005 (isPrefix!1341 lt!563015 (++!4577 lt!563015 lt!563004))))

(declare-fun lt!563359 () Unit!27625)

(declare-fun choose!9544 (List!17566 List!17566) Unit!27625)

(assert (=> d!474005 (= lt!563359 (choose!9544 lt!563015 lt!563004))))

(assert (=> d!474005 (= (lemmaConcatTwoListThenFirstIsPrefix!866 lt!563015 lt!563004) lt!563359)))

(declare-fun bs!391843 () Bool)

(assert (= bs!391843 d!474005))

(assert (=> bs!391843 m!1885213))

(assert (=> bs!391843 m!1885213))

(declare-fun m!1885917 () Bool)

(assert (=> bs!391843 m!1885917))

(declare-fun m!1885919 () Bool)

(assert (=> bs!391843 m!1885919))

(assert (=> b!1591226 d!474005))

(declare-fun d!474007 () Bool)

(declare-fun c!258027 () Bool)

(assert (=> d!474007 (= c!258027 (isEmpty!10530 (++!4577 lt!563015 lt!563014)))))

(declare-fun e!1022132 () Bool)

(assert (=> d!474007 (= (prefixMatch!344 lt!563000 (++!4577 lt!563015 lt!563014)) e!1022132)))

(declare-fun b!1591507 () Bool)

(declare-fun lostCause!405 (Regex!4409) Bool)

(assert (=> b!1591507 (= e!1022132 (not (lostCause!405 lt!563000)))))

(declare-fun b!1591508 () Bool)

(declare-fun derivativeStep!1049 (Regex!4409 C!8992) Regex!4409)

(assert (=> b!1591508 (= e!1022132 (prefixMatch!344 (derivativeStep!1049 lt!563000 (head!3249 (++!4577 lt!563015 lt!563014))) (tail!2292 (++!4577 lt!563015 lt!563014))))))

(assert (= (and d!474007 c!258027) b!1591507))

(assert (= (and d!474007 (not c!258027)) b!1591508))

(assert (=> d!474007 m!1885285))

(declare-fun m!1885921 () Bool)

(assert (=> d!474007 m!1885921))

(declare-fun m!1885923 () Bool)

(assert (=> b!1591507 m!1885923))

(assert (=> b!1591508 m!1885285))

(declare-fun m!1885925 () Bool)

(assert (=> b!1591508 m!1885925))

(assert (=> b!1591508 m!1885925))

(declare-fun m!1885927 () Bool)

(assert (=> b!1591508 m!1885927))

(assert (=> b!1591508 m!1885285))

(declare-fun m!1885929 () Bool)

(assert (=> b!1591508 m!1885929))

(assert (=> b!1591508 m!1885927))

(assert (=> b!1591508 m!1885929))

(declare-fun m!1885931 () Bool)

(assert (=> b!1591508 m!1885931))

(assert (=> b!1591236 d!474007))

(declare-fun d!474009 () Bool)

(declare-fun e!1022138 () Bool)

(assert (=> d!474009 e!1022138))

(declare-fun res!710084 () Bool)

(assert (=> d!474009 (=> (not res!710084) (not e!1022138))))

(declare-fun lt!563364 () List!17566)

(declare-fun content!2416 (List!17566) (InoxSet C!8992))

(assert (=> d!474009 (= res!710084 (= (content!2416 lt!563364) ((_ map or) (content!2416 lt!563015) (content!2416 lt!563014))))))

(declare-fun e!1022137 () List!17566)

(assert (=> d!474009 (= lt!563364 e!1022137)))

(declare-fun c!258030 () Bool)

(assert (=> d!474009 (= c!258030 ((_ is Nil!17496) lt!563015))))

(assert (=> d!474009 (= (++!4577 lt!563015 lt!563014) lt!563364)))

(declare-fun b!1591518 () Bool)

(assert (=> b!1591518 (= e!1022137 (Cons!17496 (h!22897 lt!563015) (++!4577 (t!144671 lt!563015) lt!563014)))))

(declare-fun b!1591519 () Bool)

(declare-fun res!710083 () Bool)

(assert (=> b!1591519 (=> (not res!710083) (not e!1022138))))

(assert (=> b!1591519 (= res!710083 (= (size!14078 lt!563364) (+ (size!14078 lt!563015) (size!14078 lt!563014))))))

(declare-fun b!1591520 () Bool)

(assert (=> b!1591520 (= e!1022138 (or (not (= lt!563014 Nil!17496)) (= lt!563364 lt!563015)))))

(declare-fun b!1591517 () Bool)

(assert (=> b!1591517 (= e!1022137 lt!563014)))

(assert (= (and d!474009 c!258030) b!1591517))

(assert (= (and d!474009 (not c!258030)) b!1591518))

(assert (= (and d!474009 res!710084) b!1591519))

(assert (= (and b!1591519 res!710083) b!1591520))

(declare-fun m!1885933 () Bool)

(assert (=> d!474009 m!1885933))

(declare-fun m!1885935 () Bool)

(assert (=> d!474009 m!1885935))

(declare-fun m!1885937 () Bool)

(assert (=> d!474009 m!1885937))

(declare-fun m!1885939 () Bool)

(assert (=> b!1591518 m!1885939))

(declare-fun m!1885941 () Bool)

(assert (=> b!1591519 m!1885941))

(assert (=> b!1591519 m!1885909))

(declare-fun m!1885943 () Bool)

(assert (=> b!1591519 m!1885943))

(assert (=> b!1591236 d!474009))

(declare-fun d!474011 () Bool)

(assert (=> d!474011 (= (list!6804 lt!563007) (list!6806 (c!257975 lt!563007)))))

(declare-fun bs!391844 () Bool)

(assert (= bs!391844 d!474011))

(declare-fun m!1885945 () Bool)

(assert (=> bs!391844 m!1885945))

(assert (=> b!1591236 d!474011))

(declare-fun d!474013 () Bool)

(declare-fun lt!563367 () Bool)

(declare-fun isEmpty!10531 (List!17567) Bool)

(assert (=> d!474013 (= lt!563367 (isEmpty!10531 (list!6803 (_1!9892 (lex!1194 thiss!17113 rules!1846 (seqFromList!1911 lt!563015))))))))

(declare-fun isEmpty!10532 (Conc!5811) Bool)

(assert (=> d!474013 (= lt!563367 (isEmpty!10532 (c!257977 (_1!9892 (lex!1194 thiss!17113 rules!1846 (seqFromList!1911 lt!563015))))))))

(assert (=> d!474013 (= (isEmpty!10523 (_1!9892 (lex!1194 thiss!17113 rules!1846 (seqFromList!1911 lt!563015)))) lt!563367)))

(declare-fun bs!391845 () Bool)

(assert (= bs!391845 d!474013))

(declare-fun m!1885947 () Bool)

(assert (=> bs!391845 m!1885947))

(assert (=> bs!391845 m!1885947))

(declare-fun m!1885949 () Bool)

(assert (=> bs!391845 m!1885949))

(declare-fun m!1885951 () Bool)

(assert (=> bs!391845 m!1885951))

(assert (=> b!1591238 d!474013))

(declare-fun lt!563370 () tuple2!16980)

(declare-fun e!1022146 () Bool)

(declare-fun b!1591531 () Bool)

(declare-datatypes ((tuple2!16986 0))(
  ( (tuple2!16987 (_1!9895 List!17567) (_2!9895 List!17566)) )
))
(declare-fun lexList!797 (LexerInterface!2710 List!17568 List!17566) tuple2!16986)

(assert (=> b!1591531 (= e!1022146 (= (list!6804 (_2!9892 lt!563370)) (_2!9895 (lexList!797 thiss!17113 rules!1846 (list!6804 (seqFromList!1911 lt!563015))))))))

(declare-fun b!1591532 () Bool)

(declare-fun e!1022147 () Bool)

(assert (=> b!1591532 (= e!1022147 (not (isEmpty!10523 (_1!9892 lt!563370))))))

(declare-fun d!474015 () Bool)

(assert (=> d!474015 e!1022146))

(declare-fun res!710091 () Bool)

(assert (=> d!474015 (=> (not res!710091) (not e!1022146))))

(declare-fun e!1022145 () Bool)

(assert (=> d!474015 (= res!710091 e!1022145)))

(declare-fun c!258033 () Bool)

(assert (=> d!474015 (= c!258033 (> (size!14077 (_1!9892 lt!563370)) 0))))

(declare-fun lexTailRecV2!520 (LexerInterface!2710 List!17568 BalanceConc!11564 BalanceConc!11564 BalanceConc!11564 BalanceConc!11566) tuple2!16980)

(assert (=> d!474015 (= lt!563370 (lexTailRecV2!520 thiss!17113 rules!1846 (seqFromList!1911 lt!563015) (BalanceConc!11565 Empty!5810) (seqFromList!1911 lt!563015) (BalanceConc!11567 Empty!5811)))))

(assert (=> d!474015 (= (lex!1194 thiss!17113 rules!1846 (seqFromList!1911 lt!563015)) lt!563370)))

(declare-fun b!1591533 () Bool)

(assert (=> b!1591533 (= e!1022145 (= (_2!9892 lt!563370) (seqFromList!1911 lt!563015)))))

(declare-fun b!1591534 () Bool)

(declare-fun res!710093 () Bool)

(assert (=> b!1591534 (=> (not res!710093) (not e!1022146))))

(assert (=> b!1591534 (= res!710093 (= (list!6803 (_1!9892 lt!563370)) (_1!9895 (lexList!797 thiss!17113 rules!1846 (list!6804 (seqFromList!1911 lt!563015))))))))

(declare-fun b!1591535 () Bool)

(assert (=> b!1591535 (= e!1022145 e!1022147)))

(declare-fun res!710092 () Bool)

(assert (=> b!1591535 (= res!710092 (< (size!14076 (_2!9892 lt!563370)) (size!14076 (seqFromList!1911 lt!563015))))))

(assert (=> b!1591535 (=> (not res!710092) (not e!1022147))))

(assert (= (and d!474015 c!258033) b!1591535))

(assert (= (and d!474015 (not c!258033)) b!1591533))

(assert (= (and b!1591535 res!710092) b!1591532))

(assert (= (and d!474015 res!710091) b!1591534))

(assert (= (and b!1591534 res!710093) b!1591531))

(declare-fun m!1885953 () Bool)

(assert (=> b!1591535 m!1885953))

(assert (=> b!1591535 m!1885259))

(declare-fun m!1885955 () Bool)

(assert (=> b!1591535 m!1885955))

(declare-fun m!1885957 () Bool)

(assert (=> b!1591532 m!1885957))

(declare-fun m!1885959 () Bool)

(assert (=> d!474015 m!1885959))

(assert (=> d!474015 m!1885259))

(assert (=> d!474015 m!1885259))

(declare-fun m!1885961 () Bool)

(assert (=> d!474015 m!1885961))

(declare-fun m!1885963 () Bool)

(assert (=> b!1591531 m!1885963))

(assert (=> b!1591531 m!1885259))

(declare-fun m!1885965 () Bool)

(assert (=> b!1591531 m!1885965))

(assert (=> b!1591531 m!1885965))

(declare-fun m!1885967 () Bool)

(assert (=> b!1591531 m!1885967))

(declare-fun m!1885969 () Bool)

(assert (=> b!1591534 m!1885969))

(assert (=> b!1591534 m!1885259))

(assert (=> b!1591534 m!1885965))

(assert (=> b!1591534 m!1885965))

(assert (=> b!1591534 m!1885967))

(assert (=> b!1591238 d!474015))

(declare-fun d!474017 () Bool)

(declare-fun fromListB!830 (List!17566) BalanceConc!11564)

(assert (=> d!474017 (= (seqFromList!1911 lt!563015) (fromListB!830 lt!563015))))

(declare-fun bs!391846 () Bool)

(assert (= bs!391846 d!474017))

(declare-fun m!1885971 () Bool)

(assert (=> bs!391846 m!1885971))

(assert (=> b!1591238 d!474017))

(declare-fun d!474019 () Bool)

(declare-fun res!710098 () Bool)

(declare-fun e!1022150 () Bool)

(assert (=> d!474019 (=> (not res!710098) (not e!1022150))))

(assert (=> d!474019 (= res!710098 (not (isEmpty!10530 (originalCharacters!3895 (h!22898 tokens!457)))))))

(assert (=> d!474019 (= (inv!22907 (h!22898 tokens!457)) e!1022150)))

(declare-fun b!1591540 () Bool)

(declare-fun res!710099 () Bool)

(assert (=> b!1591540 (=> (not res!710099) (not e!1022150))))

(assert (=> b!1591540 (= res!710099 (= (originalCharacters!3895 (h!22898 tokens!457)) (list!6804 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (value!97481 (h!22898 tokens!457))))))))

(declare-fun b!1591541 () Bool)

(assert (=> b!1591541 (= e!1022150 (= (size!14075 (h!22898 tokens!457)) (size!14078 (originalCharacters!3895 (h!22898 tokens!457)))))))

(assert (= (and d!474019 res!710098) b!1591540))

(assert (= (and b!1591540 res!710099) b!1591541))

(declare-fun b_lambda!50075 () Bool)

(assert (=> (not b_lambda!50075) (not b!1591540)))

(declare-fun t!144694 () Bool)

(declare-fun tb!89603 () Bool)

(assert (=> (and b!1591233 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457))))) t!144694) tb!89603))

(declare-fun b!1591542 () Bool)

(declare-fun e!1022151 () Bool)

(declare-fun tp!467280 () Bool)

(assert (=> b!1591542 (= e!1022151 (and (inv!22910 (c!257975 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (value!97481 (h!22898 tokens!457))))) tp!467280))))

(declare-fun result!108482 () Bool)

(assert (=> tb!89603 (= result!108482 (and (inv!22911 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (value!97481 (h!22898 tokens!457)))) e!1022151))))

(assert (= tb!89603 b!1591542))

(declare-fun m!1885973 () Bool)

(assert (=> b!1591542 m!1885973))

(declare-fun m!1885975 () Bool)

(assert (=> tb!89603 m!1885975))

(assert (=> b!1591540 t!144694))

(declare-fun b_and!111617 () Bool)

(assert (= b_and!111609 (and (=> t!144694 result!108482) b_and!111617)))

(declare-fun t!144696 () Bool)

(declare-fun tb!89605 () Bool)

(assert (=> (and b!1591225 (= (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457))))) t!144696) tb!89605))

(declare-fun result!108484 () Bool)

(assert (= result!108484 result!108482))

(assert (=> b!1591540 t!144696))

(declare-fun b_and!111619 () Bool)

(assert (= b_and!111611 (and (=> t!144696 result!108484) b_and!111619)))

(declare-fun m!1885977 () Bool)

(assert (=> d!474019 m!1885977))

(declare-fun m!1885979 () Bool)

(assert (=> b!1591540 m!1885979))

(assert (=> b!1591540 m!1885979))

(declare-fun m!1885981 () Bool)

(assert (=> b!1591540 m!1885981))

(declare-fun m!1885983 () Bool)

(assert (=> b!1591541 m!1885983))

(assert (=> b!1591227 d!474019))

(declare-fun d!474021 () Bool)

(assert (=> d!474021 (= (isDefined!2531 lt!563020) (not (isEmpty!10524 lt!563020)))))

(declare-fun bs!391847 () Bool)

(assert (= bs!391847 d!474021))

(declare-fun m!1885985 () Bool)

(assert (=> bs!391847 m!1885985))

(assert (=> b!1591229 d!474021))

(declare-fun b!1591551 () Bool)

(declare-fun res!710105 () Bool)

(declare-fun e!1022156 () Bool)

(assert (=> b!1591551 (=> (not res!710105) (not e!1022156))))

(declare-fun lt!563417 () Token!5728)

(declare-datatypes ((Option!3160 0))(
  ( (None!3159) (Some!3159 (v!24068 Rule!5962)) )
))
(declare-fun get!5010 (Option!3160) Rule!5962)

(declare-fun getRuleFromTag!252 (LexerInterface!2710 List!17568 String!20187) Option!3160)

(assert (=> b!1591551 (= res!710105 (matchR!1927 (regex!3081 (get!5010 (getRuleFromTag!252 thiss!17113 rules!1846 (tag!3353 (rule!4889 lt!563417))))) (list!6804 (charsOf!1730 lt!563417))))))

(declare-fun b!1591554 () Bool)

(declare-fun e!1022157 () Unit!27625)

(declare-fun Unit!27643 () Unit!27625)

(assert (=> b!1591554 (= e!1022157 Unit!27643)))

(declare-fun b!1591552 () Bool)

(assert (=> b!1591552 (= e!1022156 (= (rule!4889 lt!563417) (get!5010 (getRuleFromTag!252 thiss!17113 rules!1846 (tag!3353 (rule!4889 lt!563417))))))))

(declare-fun b!1591553 () Bool)

(declare-fun Unit!27644 () Unit!27625)

(assert (=> b!1591553 (= e!1022157 Unit!27644)))

(declare-fun lt!563419 () List!17566)

(assert (=> b!1591553 (= lt!563419 (++!4577 lt!563015 lt!563004))))

(declare-fun lt!563409 () Unit!27625)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!146 (LexerInterface!2710 Rule!5962 List!17568 List!17566) Unit!27625)

(assert (=> b!1591553 (= lt!563409 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!146 thiss!17113 (rule!4889 lt!563417) rules!1846 lt!563419))))

(assert (=> b!1591553 (isEmpty!10524 (maxPrefixOneRule!742 thiss!17113 (rule!4889 lt!563417) lt!563419))))

(declare-fun lt!563412 () Unit!27625)

(assert (=> b!1591553 (= lt!563412 lt!563409)))

(declare-fun lt!563411 () List!17566)

(assert (=> b!1591553 (= lt!563411 (list!6804 (charsOf!1730 lt!563417)))))

(declare-fun lt!563413 () Unit!27625)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!142 (LexerInterface!2710 Rule!5962 List!17566 List!17566) Unit!27625)

(assert (=> b!1591553 (= lt!563413 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!142 thiss!17113 (rule!4889 lt!563417) lt!563411 (++!4577 lt!563015 lt!563004)))))

(assert (=> b!1591553 (not (matchR!1927 (regex!3081 (rule!4889 lt!563417)) lt!563411))))

(declare-fun lt!563407 () Unit!27625)

(assert (=> b!1591553 (= lt!563407 lt!563413)))

(assert (=> b!1591553 false))

(declare-fun d!474023 () Bool)

(assert (=> d!474023 (isDefined!2531 (maxPrefix!1274 thiss!17113 rules!1846 (++!4577 lt!563015 lt!563004)))))

(declare-fun lt!563410 () Unit!27625)

(assert (=> d!474023 (= lt!563410 e!1022157)))

(declare-fun c!258036 () Bool)

(assert (=> d!474023 (= c!258036 (isEmpty!10524 (maxPrefix!1274 thiss!17113 rules!1846 (++!4577 lt!563015 lt!563004))))))

(declare-fun lt!563405 () Unit!27625)

(declare-fun lt!563421 () Unit!27625)

(assert (=> d!474023 (= lt!563405 lt!563421)))

(assert (=> d!474023 e!1022156))

(declare-fun res!710104 () Bool)

(assert (=> d!474023 (=> (not res!710104) (not e!1022156))))

(declare-fun isDefined!2533 (Option!3160) Bool)

(assert (=> d!474023 (= res!710104 (isDefined!2533 (getRuleFromTag!252 thiss!17113 rules!1846 (tag!3353 (rule!4889 lt!563417)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!252 (LexerInterface!2710 List!17568 List!17566 Token!5728) Unit!27625)

(assert (=> d!474023 (= lt!563421 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!252 thiss!17113 rules!1846 lt!563015 lt!563417))))

(declare-fun lt!563415 () Unit!27625)

(declare-fun lt!563418 () Unit!27625)

(assert (=> d!474023 (= lt!563415 lt!563418)))

(declare-fun lt!563416 () List!17566)

(assert (=> d!474023 (isPrefix!1341 lt!563416 (++!4577 lt!563015 lt!563004))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!138 (List!17566 List!17566 List!17566) Unit!27625)

(assert (=> d!474023 (= lt!563418 (lemmaPrefixStaysPrefixWhenAddingToSuffix!138 lt!563416 lt!563015 lt!563004))))

(assert (=> d!474023 (= lt!563416 (list!6804 (charsOf!1730 lt!563417)))))

(declare-fun lt!563420 () Unit!27625)

(declare-fun lt!563414 () Unit!27625)

(assert (=> d!474023 (= lt!563420 lt!563414)))

(declare-fun lt!563406 () List!17566)

(declare-fun lt!563408 () List!17566)

(assert (=> d!474023 (isPrefix!1341 lt!563406 (++!4577 lt!563406 lt!563408))))

(assert (=> d!474023 (= lt!563414 (lemmaConcatTwoListThenFirstIsPrefix!866 lt!563406 lt!563408))))

(assert (=> d!474023 (= lt!563408 (_2!9893 (get!5007 (maxPrefix!1274 thiss!17113 rules!1846 lt!563015))))))

(assert (=> d!474023 (= lt!563406 (list!6804 (charsOf!1730 lt!563417)))))

(assert (=> d!474023 (= lt!563417 (head!3250 (list!6803 (_1!9892 (lex!1194 thiss!17113 rules!1846 (seqFromList!1911 lt!563015))))))))

(assert (=> d!474023 (not (isEmpty!10522 rules!1846))))

(assert (=> d!474023 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!284 thiss!17113 rules!1846 lt!563015 lt!563004) lt!563410)))

(assert (= (and d!474023 res!710104) b!1591551))

(assert (= (and b!1591551 res!710105) b!1591552))

(assert (= (and d!474023 c!258036) b!1591553))

(assert (= (and d!474023 (not c!258036)) b!1591554))

(declare-fun m!1885987 () Bool)

(assert (=> b!1591551 m!1885987))

(declare-fun m!1885989 () Bool)

(assert (=> b!1591551 m!1885989))

(declare-fun m!1885991 () Bool)

(assert (=> b!1591551 m!1885991))

(declare-fun m!1885993 () Bool)

(assert (=> b!1591551 m!1885993))

(assert (=> b!1591551 m!1885991))

(assert (=> b!1591551 m!1885987))

(assert (=> b!1591551 m!1885993))

(declare-fun m!1885995 () Bool)

(assert (=> b!1591551 m!1885995))

(assert (=> b!1591552 m!1885993))

(assert (=> b!1591552 m!1885993))

(assert (=> b!1591552 m!1885995))

(declare-fun m!1885997 () Bool)

(assert (=> b!1591553 m!1885997))

(declare-fun m!1885999 () Bool)

(assert (=> b!1591553 m!1885999))

(assert (=> b!1591553 m!1885991))

(assert (=> b!1591553 m!1885987))

(assert (=> b!1591553 m!1885997))

(declare-fun m!1886001 () Bool)

(assert (=> b!1591553 m!1886001))

(declare-fun m!1886003 () Bool)

(assert (=> b!1591553 m!1886003))

(assert (=> b!1591553 m!1885213))

(declare-fun m!1886005 () Bool)

(assert (=> b!1591553 m!1886005))

(assert (=> b!1591553 m!1885991))

(assert (=> b!1591553 m!1885213))

(assert (=> d!474023 m!1885213))

(declare-fun m!1886007 () Bool)

(assert (=> d!474023 m!1886007))

(assert (=> d!474023 m!1885947))

(declare-fun m!1886009 () Bool)

(assert (=> d!474023 m!1886009))

(assert (=> d!474023 m!1885259))

(assert (=> d!474023 m!1885261))

(assert (=> d!474023 m!1885259))

(assert (=> d!474023 m!1885991))

(assert (=> d!474023 m!1885987))

(declare-fun m!1886011 () Bool)

(assert (=> d!474023 m!1886011))

(declare-fun m!1886013 () Bool)

(assert (=> d!474023 m!1886013))

(assert (=> d!474023 m!1885213))

(declare-fun m!1886015 () Bool)

(assert (=> d!474023 m!1886015))

(declare-fun m!1886017 () Bool)

(assert (=> d!474023 m!1886017))

(declare-fun m!1886019 () Bool)

(assert (=> d!474023 m!1886019))

(declare-fun m!1886021 () Bool)

(assert (=> d!474023 m!1886021))

(declare-fun m!1886023 () Bool)

(assert (=> d!474023 m!1886023))

(declare-fun m!1886025 () Bool)

(assert (=> d!474023 m!1886025))

(assert (=> d!474023 m!1885993))

(declare-fun m!1886027 () Bool)

(assert (=> d!474023 m!1886027))

(assert (=> d!474023 m!1886007))

(declare-fun m!1886029 () Bool)

(assert (=> d!474023 m!1886029))

(assert (=> d!474023 m!1886011))

(assert (=> d!474023 m!1885255))

(assert (=> d!474023 m!1885947))

(assert (=> d!474023 m!1885991))

(assert (=> d!474023 m!1885213))

(assert (=> d!474023 m!1886007))

(declare-fun m!1886031 () Bool)

(assert (=> d!474023 m!1886031))

(assert (=> d!474023 m!1885993))

(assert (=> d!474023 m!1886017))

(assert (=> b!1591229 d!474023))

(declare-fun d!474025 () Bool)

(declare-fun lt!563422 () BalanceConc!11564)

(assert (=> d!474025 (= (list!6804 lt!563422) (printList!825 thiss!17113 (list!6803 (seqFromList!1912 tokens!457))))))

(assert (=> d!474025 (= lt!563422 (printTailRec!763 thiss!17113 (seqFromList!1912 tokens!457) 0 (BalanceConc!11565 Empty!5810)))))

(assert (=> d!474025 (= (print!1241 thiss!17113 (seqFromList!1912 tokens!457)) lt!563422)))

(declare-fun bs!391848 () Bool)

(assert (= bs!391848 d!474025))

(declare-fun m!1886033 () Bool)

(assert (=> bs!391848 m!1886033))

(assert (=> bs!391848 m!1885209))

(declare-fun m!1886035 () Bool)

(assert (=> bs!391848 m!1886035))

(assert (=> bs!391848 m!1886035))

(declare-fun m!1886037 () Bool)

(assert (=> bs!391848 m!1886037))

(assert (=> bs!391848 m!1885209))

(declare-fun m!1886039 () Bool)

(assert (=> bs!391848 m!1886039))

(assert (=> b!1591239 d!474025))

(declare-fun d!474027 () Bool)

(declare-fun e!1022159 () Bool)

(assert (=> d!474027 e!1022159))

(declare-fun res!710107 () Bool)

(assert (=> d!474027 (=> (not res!710107) (not e!1022159))))

(declare-fun lt!563423 () List!17566)

(assert (=> d!474027 (= res!710107 (= (content!2416 lt!563423) ((_ map or) (content!2416 lt!563015) (content!2416 lt!563004))))))

(declare-fun e!1022158 () List!17566)

(assert (=> d!474027 (= lt!563423 e!1022158)))

(declare-fun c!258037 () Bool)

(assert (=> d!474027 (= c!258037 ((_ is Nil!17496) lt!563015))))

(assert (=> d!474027 (= (++!4577 lt!563015 lt!563004) lt!563423)))

(declare-fun b!1591556 () Bool)

(assert (=> b!1591556 (= e!1022158 (Cons!17496 (h!22897 lt!563015) (++!4577 (t!144671 lt!563015) lt!563004)))))

(declare-fun b!1591557 () Bool)

(declare-fun res!710106 () Bool)

(assert (=> b!1591557 (=> (not res!710106) (not e!1022159))))

(assert (=> b!1591557 (= res!710106 (= (size!14078 lt!563423) (+ (size!14078 lt!563015) (size!14078 lt!563004))))))

(declare-fun b!1591558 () Bool)

(assert (=> b!1591558 (= e!1022159 (or (not (= lt!563004 Nil!17496)) (= lt!563423 lt!563015)))))

(declare-fun b!1591555 () Bool)

(assert (=> b!1591555 (= e!1022158 lt!563004)))

(assert (= (and d!474027 c!258037) b!1591555))

(assert (= (and d!474027 (not c!258037)) b!1591556))

(assert (= (and d!474027 res!710107) b!1591557))

(assert (= (and b!1591557 res!710106) b!1591558))

(declare-fun m!1886041 () Bool)

(assert (=> d!474027 m!1886041))

(assert (=> d!474027 m!1885935))

(declare-fun m!1886043 () Bool)

(assert (=> d!474027 m!1886043))

(declare-fun m!1886045 () Bool)

(assert (=> b!1591556 m!1886045))

(declare-fun m!1886047 () Bool)

(assert (=> b!1591557 m!1886047))

(assert (=> b!1591557 m!1885909))

(declare-fun m!1886049 () Bool)

(assert (=> b!1591557 m!1886049))

(assert (=> b!1591239 d!474027))

(declare-fun lt!563424 () tuple2!16980)

(declare-fun b!1591559 () Bool)

(declare-fun e!1022161 () Bool)

(assert (=> b!1591559 (= e!1022161 (= (list!6804 (_2!9892 lt!563424)) (_2!9895 (lexList!797 thiss!17113 rules!1846 (list!6804 lt!563005)))))))

(declare-fun b!1591560 () Bool)

(declare-fun e!1022162 () Bool)

(assert (=> b!1591560 (= e!1022162 (not (isEmpty!10523 (_1!9892 lt!563424))))))

(declare-fun d!474029 () Bool)

(assert (=> d!474029 e!1022161))

(declare-fun res!710108 () Bool)

(assert (=> d!474029 (=> (not res!710108) (not e!1022161))))

(declare-fun e!1022160 () Bool)

(assert (=> d!474029 (= res!710108 e!1022160)))

(declare-fun c!258038 () Bool)

(assert (=> d!474029 (= c!258038 (> (size!14077 (_1!9892 lt!563424)) 0))))

(assert (=> d!474029 (= lt!563424 (lexTailRecV2!520 thiss!17113 rules!1846 lt!563005 (BalanceConc!11565 Empty!5810) lt!563005 (BalanceConc!11567 Empty!5811)))))

(assert (=> d!474029 (= (lex!1194 thiss!17113 rules!1846 lt!563005) lt!563424)))

(declare-fun b!1591561 () Bool)

(assert (=> b!1591561 (= e!1022160 (= (_2!9892 lt!563424) lt!563005))))

(declare-fun b!1591562 () Bool)

(declare-fun res!710110 () Bool)

(assert (=> b!1591562 (=> (not res!710110) (not e!1022161))))

(assert (=> b!1591562 (= res!710110 (= (list!6803 (_1!9892 lt!563424)) (_1!9895 (lexList!797 thiss!17113 rules!1846 (list!6804 lt!563005)))))))

(declare-fun b!1591563 () Bool)

(assert (=> b!1591563 (= e!1022160 e!1022162)))

(declare-fun res!710109 () Bool)

(assert (=> b!1591563 (= res!710109 (< (size!14076 (_2!9892 lt!563424)) (size!14076 lt!563005)))))

(assert (=> b!1591563 (=> (not res!710109) (not e!1022162))))

(assert (= (and d!474029 c!258038) b!1591563))

(assert (= (and d!474029 (not c!258038)) b!1591561))

(assert (= (and b!1591563 res!710109) b!1591560))

(assert (= (and d!474029 res!710108) b!1591562))

(assert (= (and b!1591562 res!710110) b!1591559))

(declare-fun m!1886051 () Bool)

(assert (=> b!1591563 m!1886051))

(declare-fun m!1886053 () Bool)

(assert (=> b!1591563 m!1886053))

(declare-fun m!1886055 () Bool)

(assert (=> b!1591560 m!1886055))

(declare-fun m!1886057 () Bool)

(assert (=> d!474029 m!1886057))

(declare-fun m!1886059 () Bool)

(assert (=> d!474029 m!1886059))

(declare-fun m!1886061 () Bool)

(assert (=> b!1591559 m!1886061))

(assert (=> b!1591559 m!1885215))

(assert (=> b!1591559 m!1885215))

(declare-fun m!1886063 () Bool)

(assert (=> b!1591559 m!1886063))

(declare-fun m!1886065 () Bool)

(assert (=> b!1591562 m!1886065))

(assert (=> b!1591562 m!1885215))

(assert (=> b!1591562 m!1885215))

(assert (=> b!1591562 m!1886063))

(assert (=> b!1591239 d!474029))

(declare-fun d!474031 () Bool)

(declare-fun lt!563425 () BalanceConc!11564)

(assert (=> d!474031 (= (list!6804 lt!563425) (printList!825 thiss!17113 (list!6803 lt!563012)))))

(assert (=> d!474031 (= lt!563425 (printTailRec!763 thiss!17113 lt!563012 0 (BalanceConc!11565 Empty!5810)))))

(assert (=> d!474031 (= (print!1241 thiss!17113 lt!563012) lt!563425)))

(declare-fun bs!391849 () Bool)

(assert (= bs!391849 d!474031))

(declare-fun m!1886067 () Bool)

(assert (=> bs!391849 m!1886067))

(assert (=> bs!391849 m!1885187))

(assert (=> bs!391849 m!1885187))

(declare-fun m!1886069 () Bool)

(assert (=> bs!391849 m!1886069))

(declare-fun m!1886071 () Bool)

(assert (=> bs!391849 m!1886071))

(assert (=> b!1591239 d!474031))

(declare-fun d!474033 () Bool)

(assert (=> d!474033 (= (list!6804 lt!563009) (list!6806 (c!257975 lt!563009)))))

(declare-fun bs!391850 () Bool)

(assert (= bs!391850 d!474033))

(declare-fun m!1886073 () Bool)

(assert (=> bs!391850 m!1886073))

(assert (=> b!1591239 d!474033))

(declare-fun d!474035 () Bool)

(assert (=> d!474035 (= (list!6804 lt!563005) (list!6806 (c!257975 lt!563005)))))

(declare-fun bs!391851 () Bool)

(assert (= bs!391851 d!474035))

(declare-fun m!1886075 () Bool)

(assert (=> bs!391851 m!1886075))

(assert (=> b!1591239 d!474035))

(declare-fun d!474037 () Bool)

(declare-fun lt!563426 () BalanceConc!11564)

(assert (=> d!474037 (= (list!6804 lt!563426) (originalCharacters!3895 (h!22898 tokens!457)))))

(assert (=> d!474037 (= lt!563426 (dynLambda!7787 (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (value!97481 (h!22898 tokens!457))))))

(assert (=> d!474037 (= (charsOf!1730 (h!22898 tokens!457)) lt!563426)))

(declare-fun b_lambda!50077 () Bool)

(assert (=> (not b_lambda!50077) (not d!474037)))

(assert (=> d!474037 t!144694))

(declare-fun b_and!111621 () Bool)

(assert (= b_and!111617 (and (=> t!144694 result!108482) b_and!111621)))

(assert (=> d!474037 t!144696))

(declare-fun b_and!111623 () Bool)

(assert (= b_and!111619 (and (=> t!144696 result!108484) b_and!111623)))

(declare-fun m!1886077 () Bool)

(assert (=> d!474037 m!1886077))

(assert (=> d!474037 m!1885979))

(assert (=> b!1591239 d!474037))

(declare-fun d!474039 () Bool)

(assert (=> d!474039 (= (seqFromList!1912 (t!144672 tokens!457)) (fromListB!828 (t!144672 tokens!457)))))

(declare-fun bs!391852 () Bool)

(assert (= bs!391852 d!474039))

(declare-fun m!1886079 () Bool)

(assert (=> bs!391852 m!1886079))

(assert (=> b!1591239 d!474039))

(declare-fun d!474041 () Bool)

(assert (=> d!474041 (= (list!6804 lt!563013) (list!6806 (c!257975 lt!563013)))))

(declare-fun bs!391853 () Bool)

(assert (= bs!391853 d!474041))

(declare-fun m!1886081 () Bool)

(assert (=> bs!391853 m!1886081))

(assert (=> b!1591239 d!474041))

(declare-fun d!474043 () Bool)

(assert (=> d!474043 (= (seqFromList!1912 tokens!457) (fromListB!828 tokens!457))))

(declare-fun bs!391854 () Bool)

(assert (= bs!391854 d!474043))

(declare-fun m!1886083 () Bool)

(assert (=> bs!391854 m!1886083))

(assert (=> b!1591239 d!474043))

(declare-fun d!474045 () Bool)

(declare-fun res!710119 () Bool)

(declare-fun e!1022179 () Bool)

(assert (=> d!474045 (=> res!710119 e!1022179)))

(assert (=> d!474045 (= res!710119 (or (not ((_ is Cons!17497) tokens!457)) (not ((_ is Cons!17497) (t!144672 tokens!457)))))))

(assert (=> d!474045 (= (tokensListTwoByTwoPredicateSeparableList!403 thiss!17113 tokens!457 rules!1846) e!1022179)))

(declare-fun b!1591584 () Bool)

(declare-fun e!1022180 () Bool)

(assert (=> b!1591584 (= e!1022179 e!1022180)))

(declare-fun res!710118 () Bool)

(assert (=> b!1591584 (=> (not res!710118) (not e!1022180))))

(assert (=> b!1591584 (= res!710118 (separableTokensPredicate!652 thiss!17113 (h!22898 tokens!457) (h!22898 (t!144672 tokens!457)) rules!1846))))

(declare-fun lt!563448 () Unit!27625)

(declare-fun Unit!27650 () Unit!27625)

(assert (=> b!1591584 (= lt!563448 Unit!27650)))

(assert (=> b!1591584 (> (size!14076 (charsOf!1730 (h!22898 (t!144672 tokens!457)))) 0)))

(declare-fun lt!563443 () Unit!27625)

(declare-fun Unit!27651 () Unit!27625)

(assert (=> b!1591584 (= lt!563443 Unit!27651)))

(assert (=> b!1591584 (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 (t!144672 tokens!457)))))

(declare-fun lt!563447 () Unit!27625)

(declare-fun Unit!27652 () Unit!27625)

(assert (=> b!1591584 (= lt!563447 Unit!27652)))

(assert (=> b!1591584 (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 tokens!457))))

(declare-fun lt!563444 () Unit!27625)

(declare-fun lt!563445 () Unit!27625)

(assert (=> b!1591584 (= lt!563444 lt!563445)))

(assert (=> b!1591584 (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 (t!144672 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!533 (LexerInterface!2710 List!17568 List!17567 Token!5728) Unit!27625)

(assert (=> b!1591584 (= lt!563445 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!533 thiss!17113 rules!1846 tokens!457 (h!22898 (t!144672 tokens!457))))))

(declare-fun lt!563446 () Unit!27625)

(declare-fun lt!563442 () Unit!27625)

(assert (=> b!1591584 (= lt!563446 lt!563442)))

(assert (=> b!1591584 (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 tokens!457))))

(assert (=> b!1591584 (= lt!563442 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!533 thiss!17113 rules!1846 tokens!457 (h!22898 tokens!457)))))

(declare-fun b!1591585 () Bool)

(assert (=> b!1591585 (= e!1022180 (tokensListTwoByTwoPredicateSeparableList!403 thiss!17113 (Cons!17497 (h!22898 (t!144672 tokens!457)) (t!144672 (t!144672 tokens!457))) rules!1846))))

(assert (= (and d!474045 (not res!710119)) b!1591584))

(assert (= (and b!1591584 res!710118) b!1591585))

(assert (=> b!1591584 m!1885227))

(declare-fun m!1886093 () Bool)

(assert (=> b!1591584 m!1886093))

(assert (=> b!1591584 m!1885227))

(declare-fun m!1886095 () Bool)

(assert (=> b!1591584 m!1886095))

(assert (=> b!1591584 m!1885239))

(assert (=> b!1591584 m!1885257))

(declare-fun m!1886097 () Bool)

(assert (=> b!1591584 m!1886097))

(declare-fun m!1886099 () Bool)

(assert (=> b!1591584 m!1886099))

(declare-fun m!1886101 () Bool)

(assert (=> b!1591585 m!1886101))

(assert (=> b!1591228 d!474045))

(declare-fun b!1591632 () Bool)

(declare-fun e!1022216 () Bool)

(assert (=> b!1591632 (= e!1022216 true)))

(declare-fun b!1591631 () Bool)

(declare-fun e!1022215 () Bool)

(assert (=> b!1591631 (= e!1022215 e!1022216)))

(declare-fun b!1591630 () Bool)

(declare-fun e!1022214 () Bool)

(assert (=> b!1591630 (= e!1022214 e!1022215)))

(declare-fun d!474053 () Bool)

(assert (=> d!474053 e!1022214))

(assert (= b!1591631 b!1591632))

(assert (= b!1591630 b!1591631))

(assert (= (and d!474053 ((_ is Cons!17498) rules!1846)) b!1591630))

(declare-fun order!10365 () Int)

(declare-fun lambda!66700 () Int)

(declare-fun order!10363 () Int)

(declare-fun dynLambda!7791 (Int Int) Int)

(declare-fun dynLambda!7792 (Int Int) Int)

(assert (=> b!1591632 (< (dynLambda!7791 order!10363 (toValue!4496 (transformation!3081 (h!22899 rules!1846)))) (dynLambda!7792 order!10365 lambda!66700))))

(declare-fun order!10367 () Int)

(declare-fun dynLambda!7793 (Int Int) Int)

(assert (=> b!1591632 (< (dynLambda!7793 order!10367 (toChars!4355 (transformation!3081 (h!22899 rules!1846)))) (dynLambda!7792 order!10365 lambda!66700))))

(assert (=> d!474053 true))

(declare-fun lt!563478 () Bool)

(declare-fun forall!4022 (List!17567 Int) Bool)

(assert (=> d!474053 (= lt!563478 (forall!4022 tokens!457 lambda!66700))))

(declare-fun e!1022206 () Bool)

(assert (=> d!474053 (= lt!563478 e!1022206)))

(declare-fun res!710142 () Bool)

(assert (=> d!474053 (=> res!710142 e!1022206)))

(assert (=> d!474053 (= res!710142 (not ((_ is Cons!17497) tokens!457)))))

(assert (=> d!474053 (not (isEmpty!10522 rules!1846))))

(assert (=> d!474053 (= (rulesProduceEachTokenIndividuallyList!912 thiss!17113 rules!1846 tokens!457) lt!563478)))

(declare-fun b!1591620 () Bool)

(declare-fun e!1022207 () Bool)

(assert (=> b!1591620 (= e!1022206 e!1022207)))

(declare-fun res!710143 () Bool)

(assert (=> b!1591620 (=> (not res!710143) (not e!1022207))))

(assert (=> b!1591620 (= res!710143 (rulesProduceIndividualToken!1362 thiss!17113 rules!1846 (h!22898 tokens!457)))))

(declare-fun b!1591621 () Bool)

(assert (=> b!1591621 (= e!1022207 (rulesProduceEachTokenIndividuallyList!912 thiss!17113 rules!1846 (t!144672 tokens!457)))))

(assert (= (and d!474053 (not res!710142)) b!1591620))

(assert (= (and b!1591620 res!710143) b!1591621))

(declare-fun m!1886137 () Bool)

(assert (=> d!474053 m!1886137))

(assert (=> d!474053 m!1885255))

(assert (=> b!1591620 m!1885239))

(declare-fun m!1886139 () Bool)

(assert (=> b!1591621 m!1886139))

(assert (=> b!1591241 d!474053))

(declare-fun d!474065 () Bool)

(declare-fun lt!563481 () Int)

(assert (=> d!474065 (= lt!563481 (size!14078 (list!6804 lt!563011)))))

(declare-fun size!14082 (Conc!5810) Int)

(assert (=> d!474065 (= lt!563481 (size!14082 (c!257975 lt!563011)))))

(assert (=> d!474065 (= (size!14076 lt!563011) lt!563481)))

(declare-fun bs!391856 () Bool)

(assert (= bs!391856 d!474065))

(assert (=> bs!391856 m!1885491))

(assert (=> bs!391856 m!1885491))

(declare-fun m!1886141 () Bool)

(assert (=> bs!391856 m!1886141))

(declare-fun m!1886143 () Bool)

(assert (=> bs!391856 m!1886143))

(assert (=> b!1591240 d!474065))

(declare-fun d!474067 () Bool)

(assert (=> d!474067 (= (head!3249 (originalCharacters!3895 (h!22898 (t!144672 tokens!457)))) (h!22897 (originalCharacters!3895 (h!22898 (t!144672 tokens!457)))))))

(assert (=> b!1591242 d!474067))

(declare-fun d!474069 () Bool)

(assert (=> d!474069 (= (separableTokensPredicate!652 thiss!17113 (h!22898 tokens!457) (h!22898 (t!144672 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!437 (rulesRegex!471 thiss!17113 rules!1846) (++!4578 (charsOf!1730 (h!22898 tokens!457)) (singletonSeq!1441 (apply!4318 (charsOf!1730 (h!22898 (t!144672 tokens!457))) 0))))))))

(declare-fun bs!391857 () Bool)

(assert (= bs!391857 d!474069))

(assert (=> bs!391857 m!1885205))

(declare-fun m!1886145 () Bool)

(assert (=> bs!391857 m!1886145))

(declare-fun m!1886147 () Bool)

(assert (=> bs!391857 m!1886147))

(assert (=> bs!391857 m!1885225))

(assert (=> bs!391857 m!1885205))

(assert (=> bs!391857 m!1885227))

(assert (=> bs!391857 m!1885225))

(assert (=> bs!391857 m!1886147))

(declare-fun m!1886149 () Bool)

(assert (=> bs!391857 m!1886149))

(assert (=> bs!391857 m!1885227))

(declare-fun m!1886151 () Bool)

(assert (=> bs!391857 m!1886151))

(assert (=> bs!391857 m!1886151))

(assert (=> bs!391857 m!1886145))

(assert (=> b!1591231 d!474069))

(declare-fun b!1591654 () Bool)

(declare-fun b_free!43055 () Bool)

(declare-fun b_next!43759 () Bool)

(assert (=> b!1591654 (= b_free!43055 (not b_next!43759))))

(declare-fun tp!467292 () Bool)

(declare-fun b_and!111625 () Bool)

(assert (=> b!1591654 (= tp!467292 b_and!111625)))

(declare-fun b_free!43057 () Bool)

(declare-fun b_next!43761 () Bool)

(assert (=> b!1591654 (= b_free!43057 (not b_next!43761))))

(declare-fun t!144701 () Bool)

(declare-fun tb!89607 () Bool)

(assert (=> (and b!1591654 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457)))))) t!144701) tb!89607))

(declare-fun result!108488 () Bool)

(assert (= result!108488 result!108472))

(assert (=> d!473939 t!144701))

(declare-fun t!144703 () Bool)

(declare-fun tb!89609 () Bool)

(assert (=> (and b!1591654 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457))))) t!144703) tb!89609))

(declare-fun result!108490 () Bool)

(assert (= result!108490 result!108482))

(assert (=> b!1591540 t!144703))

(assert (=> d!474037 t!144703))

(declare-fun b_and!111627 () Bool)

(declare-fun tp!467294 () Bool)

(assert (=> b!1591654 (= tp!467294 (and (=> t!144701 result!108488) (=> t!144703 result!108490) b_and!111627))))

(declare-fun e!1022237 () Bool)

(assert (=> b!1591654 (= e!1022237 (and tp!467292 tp!467294))))

(declare-fun b!1591653 () Bool)

(declare-fun tp!467291 () Bool)

(declare-fun e!1022236 () Bool)

(assert (=> b!1591653 (= e!1022236 (and tp!467291 (inv!22903 (tag!3353 (rule!4889 (h!22898 (t!144672 tokens!457))))) (inv!22906 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) e!1022237))))

(declare-fun tp!467295 () Bool)

(declare-fun b!1591652 () Bool)

(declare-fun e!1022238 () Bool)

(assert (=> b!1591652 (= e!1022238 (and (inv!21 (value!97481 (h!22898 (t!144672 tokens!457)))) e!1022236 tp!467295))))

(declare-fun tp!467293 () Bool)

(declare-fun e!1022234 () Bool)

(declare-fun b!1591651 () Bool)

(assert (=> b!1591651 (= e!1022234 (and (inv!22907 (h!22898 (t!144672 tokens!457))) e!1022238 tp!467293))))

(assert (=> b!1591227 (= tp!467272 e!1022234)))

(assert (= b!1591653 b!1591654))

(assert (= b!1591652 b!1591653))

(assert (= b!1591651 b!1591652))

(assert (= (and b!1591227 ((_ is Cons!17497) (t!144672 tokens!457))) b!1591651))

(declare-fun m!1886153 () Bool)

(assert (=> b!1591653 m!1886153))

(declare-fun m!1886155 () Bool)

(assert (=> b!1591653 m!1886155))

(declare-fun m!1886157 () Bool)

(assert (=> b!1591652 m!1886157))

(declare-fun m!1886159 () Bool)

(assert (=> b!1591651 m!1886159))

(declare-fun b!1591659 () Bool)

(declare-fun e!1022241 () Bool)

(declare-fun tp_is_empty!7215 () Bool)

(declare-fun tp!467298 () Bool)

(assert (=> b!1591659 (= e!1022241 (and tp_is_empty!7215 tp!467298))))

(assert (=> b!1591234 (= tp!467269 e!1022241)))

(assert (= (and b!1591234 ((_ is Cons!17496) (originalCharacters!3895 (h!22898 tokens!457)))) b!1591659))

(declare-fun e!1022244 () Bool)

(assert (=> b!1591223 (= tp!467266 e!1022244)))

(declare-fun b!1591673 () Bool)

(declare-fun tp!467311 () Bool)

(declare-fun tp!467313 () Bool)

(assert (=> b!1591673 (= e!1022244 (and tp!467311 tp!467313))))

(declare-fun b!1591672 () Bool)

(declare-fun tp!467309 () Bool)

(assert (=> b!1591672 (= e!1022244 tp!467309)))

(declare-fun b!1591670 () Bool)

(assert (=> b!1591670 (= e!1022244 tp_is_empty!7215)))

(declare-fun b!1591671 () Bool)

(declare-fun tp!467310 () Bool)

(declare-fun tp!467312 () Bool)

(assert (=> b!1591671 (= e!1022244 (and tp!467310 tp!467312))))

(assert (= (and b!1591223 ((_ is ElementMatch!4409) (regex!3081 (rule!4889 (h!22898 tokens!457))))) b!1591670))

(assert (= (and b!1591223 ((_ is Concat!7581) (regex!3081 (rule!4889 (h!22898 tokens!457))))) b!1591671))

(assert (= (and b!1591223 ((_ is Star!4409) (regex!3081 (rule!4889 (h!22898 tokens!457))))) b!1591672))

(assert (= (and b!1591223 ((_ is Union!4409) (regex!3081 (rule!4889 (h!22898 tokens!457))))) b!1591673))

(declare-fun e!1022245 () Bool)

(assert (=> b!1591235 (= tp!467265 e!1022245)))

(declare-fun b!1591677 () Bool)

(declare-fun tp!467316 () Bool)

(declare-fun tp!467318 () Bool)

(assert (=> b!1591677 (= e!1022245 (and tp!467316 tp!467318))))

(declare-fun b!1591676 () Bool)

(declare-fun tp!467314 () Bool)

(assert (=> b!1591676 (= e!1022245 tp!467314)))

(declare-fun b!1591674 () Bool)

(assert (=> b!1591674 (= e!1022245 tp_is_empty!7215)))

(declare-fun b!1591675 () Bool)

(declare-fun tp!467315 () Bool)

(declare-fun tp!467317 () Bool)

(assert (=> b!1591675 (= e!1022245 (and tp!467315 tp!467317))))

(assert (= (and b!1591235 ((_ is ElementMatch!4409) (regex!3081 (h!22899 rules!1846)))) b!1591674))

(assert (= (and b!1591235 ((_ is Concat!7581) (regex!3081 (h!22899 rules!1846)))) b!1591675))

(assert (= (and b!1591235 ((_ is Star!4409) (regex!3081 (h!22899 rules!1846)))) b!1591676))

(assert (= (and b!1591235 ((_ is Union!4409) (regex!3081 (h!22899 rules!1846)))) b!1591677))

(declare-fun b!1591688 () Bool)

(declare-fun b_free!43059 () Bool)

(declare-fun b_next!43763 () Bool)

(assert (=> b!1591688 (= b_free!43059 (not b_next!43763))))

(declare-fun tp!467328 () Bool)

(declare-fun b_and!111629 () Bool)

(assert (=> b!1591688 (= tp!467328 b_and!111629)))

(declare-fun b_free!43061 () Bool)

(declare-fun b_next!43765 () Bool)

(assert (=> b!1591688 (= b_free!43061 (not b_next!43765))))

(declare-fun tb!89611 () Bool)

(declare-fun t!144705 () Bool)

(assert (=> (and b!1591688 (= (toChars!4355 (transformation!3081 (h!22899 (t!144673 rules!1846)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457)))))) t!144705) tb!89611))

(declare-fun result!108498 () Bool)

(assert (= result!108498 result!108472))

(assert (=> d!473939 t!144705))

(declare-fun tb!89613 () Bool)

(declare-fun t!144707 () Bool)

(assert (=> (and b!1591688 (= (toChars!4355 (transformation!3081 (h!22899 (t!144673 rules!1846)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457))))) t!144707) tb!89613))

(declare-fun result!108500 () Bool)

(assert (= result!108500 result!108482))

(assert (=> b!1591540 t!144707))

(assert (=> d!474037 t!144707))

(declare-fun tp!467329 () Bool)

(declare-fun b_and!111631 () Bool)

(assert (=> b!1591688 (= tp!467329 (and (=> t!144705 result!108498) (=> t!144707 result!108500) b_and!111631))))

(declare-fun e!1022256 () Bool)

(assert (=> b!1591688 (= e!1022256 (and tp!467328 tp!467329))))

(declare-fun e!1022255 () Bool)

(declare-fun b!1591687 () Bool)

(declare-fun tp!467327 () Bool)

(assert (=> b!1591687 (= e!1022255 (and tp!467327 (inv!22903 (tag!3353 (h!22899 (t!144673 rules!1846)))) (inv!22906 (transformation!3081 (h!22899 (t!144673 rules!1846)))) e!1022256))))

(declare-fun b!1591686 () Bool)

(declare-fun e!1022257 () Bool)

(declare-fun tp!467330 () Bool)

(assert (=> b!1591686 (= e!1022257 (and e!1022255 tp!467330))))

(assert (=> b!1591237 (= tp!467268 e!1022257)))

(assert (= b!1591687 b!1591688))

(assert (= b!1591686 b!1591687))

(assert (= (and b!1591237 ((_ is Cons!17498) (t!144673 rules!1846))) b!1591686))

(declare-fun m!1886161 () Bool)

(assert (=> b!1591687 m!1886161))

(declare-fun m!1886163 () Bool)

(assert (=> b!1591687 m!1886163))

(declare-fun b_lambda!50079 () Bool)

(assert (= b_lambda!50077 (or (and b!1591233 b_free!43049) (and b!1591225 b_free!43053 (= (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))))) (and b!1591654 b_free!43057 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))))) (and b!1591688 b_free!43061 (= (toChars!4355 (transformation!3081 (h!22899 (t!144673 rules!1846)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))))) b_lambda!50079)))

(declare-fun b_lambda!50081 () Bool)

(assert (= b_lambda!50075 (or (and b!1591233 b_free!43049) (and b!1591225 b_free!43053 (= (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))))) (and b!1591654 b_free!43057 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))))) (and b!1591688 b_free!43061 (= (toChars!4355 (transformation!3081 (h!22899 (t!144673 rules!1846)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))))) b_lambda!50081)))

(declare-fun b_lambda!50083 () Bool)

(assert (= b_lambda!50071 (or (and b!1591233 b_free!43049 (= (toChars!4355 (transformation!3081 (rule!4889 (h!22898 tokens!457)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))))) (and b!1591225 b_free!43053 (= (toChars!4355 (transformation!3081 (h!22899 rules!1846))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))))) (and b!1591654 b_free!43057) (and b!1591688 b_free!43061 (= (toChars!4355 (transformation!3081 (h!22899 (t!144673 rules!1846)))) (toChars!4355 (transformation!3081 (rule!4889 (h!22898 (t!144672 tokens!457))))))) b_lambda!50083)))

(check-sat (not b!1591557) (not b!1591304) (not b!1591687) (not b!1591651) (not bm!103134) (not b!1591338) (not d!473885) (not b!1591383) b_and!111597 (not d!474069) (not d!474007) b_and!111621 (not b_next!43757) (not b!1591551) (not d!473949) (not b!1591673) (not b!1591541) (not b!1591303) (not d!474031) (not b_next!43753) b_and!111601 (not tb!89595) (not b!1591497) (not b!1591261) (not b_lambda!50079) (not d!474065) (not d!474043) (not d!474013) (not b!1591320) (not b_next!43759) b_and!111627 (not b!1591334) (not b!1591552) (not b!1591496) (not b!1591341) (not b!1591519) (not d!473895) (not d!473927) (not d!474009) (not d!473933) (not d!473955) (not d!473887) (not d!474005) (not d!473921) (not d!474023) (not d!473939) (not b!1591381) (not d!474017) (not b_next!43761) (not d!474037) (not b!1591653) (not b!1591300) (not d!473917) (not b!1591553) (not d!474025) (not b!1591333) (not b!1591559) (not d!473935) (not b!1591562) (not d!474011) (not d!474039) (not b!1591677) (not b!1591532) (not b!1591518) (not b!1591584) (not b_next!43763) (not b_lambda!50081) (not d!473931) (not b!1591305) (not b!1591354) (not d!474053) (not b!1591311) (not b!1591556) b_and!111623 (not d!474015) (not b!1591671) (not b!1591540) (not b!1591249) (not tb!89603) b_and!111629 (not b!1591535) (not d!473941) (not b!1591630) (not b!1591344) (not d!473953) (not b!1591302) (not b!1591316) (not b!1591308) (not b!1591652) (not b!1591507) (not b!1591301) (not d!474029) (not b_lambda!50083) (not d!473889) (not b!1591621) (not b!1591498) (not d!474027) (not b!1591563) (not d!473883) (not d!474041) (not b!1591259) (not b!1591675) (not b!1591560) (not d!474019) (not b!1591332) (not b!1591676) (not b!1591534) (not b!1591356) (not b!1591620) (not b_next!43751) (not b!1591686) (not d!473929) (not b!1591531) (not b_next!43765) (not b!1591672) (not b!1591542) (not d!473891) (not d!474033) b_and!111631 (not b!1591353) (not b!1591355) (not d!474035) (not b!1591307) (not b!1591485) (not b!1591659) (not d!473903) (not b!1591508) (not b_next!43755) (not b!1591486) (not d!473899) (not b!1591361) (not d!473915) (not d!474021) tp_is_empty!7215 (not b!1591380) (not b!1591585) b_and!111625 (not b!1591382) (not d!473937))
(check-sat (not b_next!43757) (not b_next!43761) (not b_next!43763) b_and!111623 b_and!111629 (not b_next!43751) (not b_next!43765) b_and!111631 (not b_next!43755) b_and!111625 b_and!111597 b_and!111621 (not b_next!43753) b_and!111601 (not b_next!43759) b_and!111627)
