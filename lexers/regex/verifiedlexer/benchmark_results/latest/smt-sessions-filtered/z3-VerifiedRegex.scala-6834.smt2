; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!359416 () Bool)

(assert start!359416)

(declare-fun b!3838815 () Bool)

(declare-fun b_free!102213 () Bool)

(declare-fun b_next!102917 () Bool)

(assert (=> b!3838815 (= b_free!102213 (not b_next!102917))))

(declare-fun tp!1162472 () Bool)

(declare-fun b_and!285763 () Bool)

(assert (=> b!3838815 (= tp!1162472 b_and!285763)))

(declare-fun b_free!102215 () Bool)

(declare-fun b_next!102919 () Bool)

(assert (=> b!3838815 (= b_free!102215 (not b_next!102919))))

(declare-fun tp!1162474 () Bool)

(declare-fun b_and!285765 () Bool)

(assert (=> b!3838815 (= tp!1162474 b_and!285765)))

(declare-fun b!3838822 () Bool)

(declare-fun b_free!102217 () Bool)

(declare-fun b_next!102921 () Bool)

(assert (=> b!3838822 (= b_free!102217 (not b_next!102921))))

(declare-fun tp!1162468 () Bool)

(declare-fun b_and!285767 () Bool)

(assert (=> b!3838822 (= tp!1162468 b_and!285767)))

(declare-fun b_free!102219 () Bool)

(declare-fun b_next!102923 () Bool)

(assert (=> b!3838822 (= b_free!102219 (not b_next!102923))))

(declare-fun tp!1162469 () Bool)

(declare-fun b_and!285769 () Bool)

(assert (=> b!3838822 (= tp!1162469 b_and!285769)))

(declare-fun b!3838830 () Bool)

(declare-fun b_free!102221 () Bool)

(declare-fun b_next!102925 () Bool)

(assert (=> b!3838830 (= b_free!102221 (not b_next!102925))))

(declare-fun tp!1162459 () Bool)

(declare-fun b_and!285771 () Bool)

(assert (=> b!3838830 (= tp!1162459 b_and!285771)))

(declare-fun b_free!102223 () Bool)

(declare-fun b_next!102927 () Bool)

(assert (=> b!3838830 (= b_free!102223 (not b_next!102927))))

(declare-fun tp!1162471 () Bool)

(declare-fun b_and!285773 () Bool)

(assert (=> b!3838830 (= tp!1162471 b_and!285773)))

(declare-fun tp!1162463 () Bool)

(declare-fun b!3838807 () Bool)

(declare-fun e!2371192 () Bool)

(declare-datatypes ((String!46147 0))(
  ( (String!46148 (value!198904 String)) )
))
(declare-datatypes ((List!40704 0))(
  ( (Nil!40580) (Cons!40580 (h!46000 (_ BitVec 16)) (t!310137 List!40704)) )
))
(declare-datatypes ((TokenValue!6486 0))(
  ( (FloatLiteralValue!12972 (text!45847 List!40704)) (TokenValueExt!6485 (__x!25189 Int)) (Broken!32430 (value!198905 List!40704)) (Object!6609) (End!6486) (Def!6486) (Underscore!6486) (Match!6486) (Else!6486) (Error!6486) (Case!6486) (If!6486) (Extends!6486) (Abstract!6486) (Class!6486) (Val!6486) (DelimiterValue!12972 (del!6546 List!40704)) (KeywordValue!6492 (value!198906 List!40704)) (CommentValue!12972 (value!198907 List!40704)) (WhitespaceValue!12972 (value!198908 List!40704)) (IndentationValue!6486 (value!198909 List!40704)) (String!46149) (Int32!6486) (Broken!32431 (value!198910 List!40704)) (Boolean!6487) (Unit!58299) (OperatorValue!6489 (op!6546 List!40704)) (IdentifierValue!12972 (value!198911 List!40704)) (IdentifierValue!12973 (value!198912 List!40704)) (WhitespaceValue!12973 (value!198913 List!40704)) (True!12972) (False!12972) (Broken!32432 (value!198914 List!40704)) (Broken!32433 (value!198915 List!40704)) (True!12973) (RightBrace!6486) (RightBracket!6486) (Colon!6486) (Null!6486) (Comma!6486) (LeftBracket!6486) (False!12973) (LeftBrace!6486) (ImaginaryLiteralValue!6486 (text!45848 List!40704)) (StringLiteralValue!19458 (value!198916 List!40704)) (EOFValue!6486 (value!198917 List!40704)) (IdentValue!6486 (value!198918 List!40704)) (DelimiterValue!12973 (value!198919 List!40704)) (DedentValue!6486 (value!198920 List!40704)) (NewLineValue!6486 (value!198921 List!40704)) (IntegerValue!19458 (value!198922 (_ BitVec 32)) (text!45849 List!40704)) (IntegerValue!19459 (value!198923 Int) (text!45850 List!40704)) (Times!6486) (Or!6486) (Equal!6486) (Minus!6486) (Broken!32434 (value!198924 List!40704)) (And!6486) (Div!6486) (LessEqual!6486) (Mod!6486) (Concat!17647) (Not!6486) (Plus!6486) (SpaceValue!6486 (value!198925 List!40704)) (IntegerValue!19460 (value!198926 Int) (text!45851 List!40704)) (StringLiteralValue!19459 (text!45852 List!40704)) (FloatLiteralValue!12973 (text!45853 List!40704)) (BytesLiteralValue!6486 (value!198927 List!40704)) (CommentValue!12973 (value!198928 List!40704)) (StringLiteralValue!19460 (value!198929 List!40704)) (ErrorTokenValue!6486 (msg!6547 List!40704)) )
))
(declare-datatypes ((C!22508 0))(
  ( (C!22509 (val!13348 Int)) )
))
(declare-datatypes ((Regex!11161 0))(
  ( (ElementMatch!11161 (c!669182 C!22508)) (Concat!17648 (regOne!22834 Regex!11161) (regTwo!22834 Regex!11161)) (EmptyExpr!11161) (Star!11161 (reg!11490 Regex!11161)) (EmptyLang!11161) (Union!11161 (regOne!22835 Regex!11161) (regTwo!22835 Regex!11161)) )
))
(declare-datatypes ((List!40705 0))(
  ( (Nil!40581) (Cons!40581 (h!46001 C!22508) (t!310138 List!40705)) )
))
(declare-datatypes ((IArray!24939 0))(
  ( (IArray!24940 (innerList!12527 List!40705)) )
))
(declare-datatypes ((Conc!12467 0))(
  ( (Node!12467 (left!31361 Conc!12467) (right!31691 Conc!12467) (csize!25164 Int) (cheight!12678 Int)) (Leaf!19302 (xs!15773 IArray!24939) (csize!25165 Int)) (Empty!12467) )
))
(declare-datatypes ((BalanceConc!24528 0))(
  ( (BalanceConc!24529 (c!669183 Conc!12467)) )
))
(declare-datatypes ((TokenValueInjection!12400 0))(
  ( (TokenValueInjection!12401 (toValue!8672 Int) (toChars!8531 Int)) )
))
(declare-datatypes ((Rule!12312 0))(
  ( (Rule!12313 (regex!6256 Regex!11161) (tag!7116 String!46147) (isSeparator!6256 Bool) (transformation!6256 TokenValueInjection!12400)) )
))
(declare-datatypes ((Token!11650 0))(
  ( (Token!11651 (value!198930 TokenValue!6486) (rule!9092 Rule!12312) (size!30553 Int) (originalCharacters!6856 List!40705)) )
))
(declare-datatypes ((List!40706 0))(
  ( (Nil!40582) (Cons!40582 (h!46002 Token!11650) (t!310139 List!40706)) )
))
(declare-fun suffixTokens!72 () List!40706)

(declare-fun e!2371185 () Bool)

(declare-fun inv!54731 (Token!11650) Bool)

(assert (=> b!3838807 (= e!2371185 (and (inv!54731 (h!46002 suffixTokens!72)) e!2371192 tp!1162463))))

(declare-fun b!3838808 () Bool)

(declare-fun e!2371186 () Bool)

(declare-fun e!2371183 () Bool)

(assert (=> b!3838808 (= e!2371186 (not e!2371183))))

(declare-fun res!1553714 () Bool)

(assert (=> b!3838808 (=> res!1553714 e!2371183)))

(declare-fun lt!1332197 () List!40705)

(declare-fun lt!1332201 () List!40705)

(assert (=> b!3838808 (= res!1553714 (not (= lt!1332197 lt!1332201)))))

(declare-datatypes ((LexerInterface!5845 0))(
  ( (LexerInterfaceExt!5842 (__x!25190 Int)) (Lexer!5843) )
))
(declare-fun thiss!20629 () LexerInterface!5845)

(declare-datatypes ((tuple2!39754 0))(
  ( (tuple2!39755 (_1!23011 List!40706) (_2!23011 List!40705)) )
))
(declare-fun lt!1332194 () tuple2!39754)

(declare-datatypes ((List!40707 0))(
  ( (Nil!40583) (Cons!40583 (h!46003 Rule!12312) (t!310140 List!40707)) )
))
(declare-fun rules!2768 () List!40707)

(declare-datatypes ((tuple2!39756 0))(
  ( (tuple2!39757 (_1!23012 Token!11650) (_2!23012 List!40705)) )
))
(declare-datatypes ((Option!8674 0))(
  ( (None!8673) (Some!8673 (v!38965 tuple2!39756)) )
))
(declare-fun lt!1332195 () Option!8674)

(declare-fun lexList!1613 (LexerInterface!5845 List!40707 List!40705) tuple2!39754)

(assert (=> b!3838808 (= lt!1332194 (lexList!1613 thiss!20629 rules!2768 (_2!23012 (v!38965 lt!1332195))))))

(declare-fun lt!1332203 () Int)

(declare-fun lt!1332198 () List!40705)

(declare-fun lt!1332196 () List!40705)

(declare-fun lt!1332190 () TokenValue!6486)

(assert (=> b!3838808 (and (= (size!30553 (_1!23012 (v!38965 lt!1332195))) lt!1332203) (= (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195))) lt!1332198) (= (v!38965 lt!1332195) (tuple2!39757 (Token!11651 lt!1332190 (rule!9092 (_1!23012 (v!38965 lt!1332195))) lt!1332203 lt!1332198) lt!1332196)))))

(declare-fun size!30554 (List!40705) Int)

(assert (=> b!3838808 (= lt!1332203 (size!30554 lt!1332198))))

(declare-fun e!2371189 () Bool)

(assert (=> b!3838808 e!2371189))

(declare-fun res!1553712 () Bool)

(assert (=> b!3838808 (=> (not res!1553712) (not e!2371189))))

(assert (=> b!3838808 (= res!1553712 (= (value!198930 (_1!23012 (v!38965 lt!1332195))) lt!1332190))))

(declare-fun apply!9499 (TokenValueInjection!12400 BalanceConc!24528) TokenValue!6486)

(declare-fun seqFromList!4527 (List!40705) BalanceConc!24528)

(assert (=> b!3838808 (= lt!1332190 (apply!9499 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))) (seqFromList!4527 lt!1332198)))))

(assert (=> b!3838808 (= (_2!23012 (v!38965 lt!1332195)) lt!1332196)))

(declare-datatypes ((Unit!58300 0))(
  ( (Unit!58301) )
))
(declare-fun lt!1332191 () Unit!58300)

(declare-fun lemmaSamePrefixThenSameSuffix!1576 (List!40705 List!40705 List!40705 List!40705 List!40705) Unit!58300)

(assert (=> b!3838808 (= lt!1332191 (lemmaSamePrefixThenSameSuffix!1576 lt!1332198 (_2!23012 (v!38965 lt!1332195)) lt!1332198 lt!1332196 lt!1332201))))

(declare-fun getSuffix!1810 (List!40705 List!40705) List!40705)

(assert (=> b!3838808 (= lt!1332196 (getSuffix!1810 lt!1332201 lt!1332198))))

(declare-fun isPrefix!3355 (List!40705 List!40705) Bool)

(assert (=> b!3838808 (isPrefix!3355 lt!1332198 lt!1332197)))

(declare-fun ++!10269 (List!40705 List!40705) List!40705)

(assert (=> b!3838808 (= lt!1332197 (++!10269 lt!1332198 (_2!23012 (v!38965 lt!1332195))))))

(declare-fun lt!1332193 () Unit!58300)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2218 (List!40705 List!40705) Unit!58300)

(assert (=> b!3838808 (= lt!1332193 (lemmaConcatTwoListThenFirstIsPrefix!2218 lt!1332198 (_2!23012 (v!38965 lt!1332195))))))

(declare-fun list!15116 (BalanceConc!24528) List!40705)

(declare-fun charsOf!4084 (Token!11650) BalanceConc!24528)

(assert (=> b!3838808 (= lt!1332198 (list!15116 (charsOf!4084 (_1!23012 (v!38965 lt!1332195)))))))

(declare-fun ruleValid!2208 (LexerInterface!5845 Rule!12312) Bool)

(assert (=> b!3838808 (ruleValid!2208 thiss!20629 (rule!9092 (_1!23012 (v!38965 lt!1332195))))))

(declare-fun lt!1332199 () Unit!58300)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1288 (LexerInterface!5845 Rule!12312 List!40707) Unit!58300)

(assert (=> b!3838808 (= lt!1332199 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1288 thiss!20629 (rule!9092 (_1!23012 (v!38965 lt!1332195))) rules!2768))))

(declare-fun lt!1332200 () Unit!58300)

(declare-fun lemmaCharactersSize!917 (Token!11650) Unit!58300)

(assert (=> b!3838808 (= lt!1332200 (lemmaCharactersSize!917 (_1!23012 (v!38965 lt!1332195))))))

(declare-fun b!3838809 () Bool)

(declare-fun e!2371194 () Bool)

(declare-fun tp_is_empty!19293 () Bool)

(declare-fun tp!1162461 () Bool)

(assert (=> b!3838809 (= e!2371194 (and tp_is_empty!19293 tp!1162461))))

(declare-fun b!3838810 () Bool)

(assert (=> b!3838810 (= e!2371189 (= (size!30553 (_1!23012 (v!38965 lt!1332195))) (size!30554 (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195))))))))

(declare-fun b!3838811 () Bool)

(declare-fun rulesValidInductive!2208 (LexerInterface!5845 List!40707) Bool)

(assert (=> b!3838811 (= e!2371183 (rulesValidInductive!2208 thiss!20629 rules!2768))))

(declare-fun lt!1332202 () tuple2!39754)

(assert (=> b!3838811 (= lt!1332202 (tuple2!39755 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) (_1!23011 lt!1332194)) (_2!23011 lt!1332194)))))

(declare-fun b!3838812 () Bool)

(declare-fun res!1553708 () Bool)

(declare-fun e!2371179 () Bool)

(assert (=> b!3838812 (=> (not res!1553708) (not e!2371179))))

(declare-fun suffixResult!91 () List!40705)

(declare-fun suffix!1176 () List!40705)

(assert (=> b!3838812 (= res!1553708 (= (lexList!1613 thiss!20629 rules!2768 suffix!1176) (tuple2!39755 suffixTokens!72 suffixResult!91)))))

(declare-fun res!1553710 () Bool)

(declare-fun e!2371199 () Bool)

(assert (=> start!359416 (=> (not res!1553710) (not e!2371199))))

(get-info :version)

(assert (=> start!359416 (= res!1553710 ((_ is Lexer!5843) thiss!20629))))

(assert (=> start!359416 e!2371199))

(assert (=> start!359416 e!2371194))

(assert (=> start!359416 true))

(declare-fun e!2371180 () Bool)

(assert (=> start!359416 e!2371180))

(declare-fun e!2371196 () Bool)

(assert (=> start!359416 e!2371196))

(declare-fun e!2371193 () Bool)

(assert (=> start!359416 e!2371193))

(assert (=> start!359416 e!2371185))

(declare-fun e!2371191 () Bool)

(assert (=> start!359416 e!2371191))

(declare-fun b!3838813 () Bool)

(declare-fun res!1553711 () Bool)

(assert (=> b!3838813 (=> res!1553711 e!2371183)))

(assert (=> b!3838813 (= res!1553711 (or (not (= lt!1332194 (tuple2!39755 (_1!23011 lt!1332194) (_2!23011 lt!1332194)))) (not (= (_2!23012 (v!38965 lt!1332195)) suffix!1176))))))

(declare-fun b!3838814 () Bool)

(declare-fun res!1553709 () Bool)

(assert (=> b!3838814 (=> (not res!1553709) (not e!2371199))))

(declare-fun isEmpty!23976 (List!40707) Bool)

(assert (=> b!3838814 (= res!1553709 (not (isEmpty!23976 rules!2768)))))

(declare-fun e!2371188 () Bool)

(assert (=> b!3838815 (= e!2371188 (and tp!1162472 tp!1162474))))

(declare-fun prefixTokens!80 () List!40706)

(declare-fun e!2371190 () Bool)

(declare-fun tp!1162470 () Bool)

(declare-fun b!3838816 () Bool)

(assert (=> b!3838816 (= e!2371193 (and (inv!54731 (h!46002 prefixTokens!80)) e!2371190 tp!1162470))))

(declare-fun b!3838817 () Bool)

(declare-fun tp!1162464 () Bool)

(assert (=> b!3838817 (= e!2371180 (and tp_is_empty!19293 tp!1162464))))

(declare-fun b!3838818 () Bool)

(declare-fun tp!1162458 () Bool)

(declare-fun e!2371181 () Bool)

(declare-fun inv!21 (TokenValue!6486) Bool)

(assert (=> b!3838818 (= e!2371192 (and (inv!21 (value!198930 (h!46002 suffixTokens!72))) e!2371181 tp!1162458))))

(declare-fun e!2371178 () Bool)

(declare-fun b!3838819 () Bool)

(declare-fun tp!1162467 () Bool)

(declare-fun e!2371184 () Bool)

(declare-fun inv!54728 (String!46147) Bool)

(declare-fun inv!54732 (TokenValueInjection!12400) Bool)

(assert (=> b!3838819 (= e!2371184 (and tp!1162467 (inv!54728 (tag!7116 (rule!9092 (h!46002 prefixTokens!80)))) (inv!54732 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) e!2371178))))

(declare-fun b!3838820 () Bool)

(declare-fun res!1553706 () Bool)

(assert (=> b!3838820 (=> (not res!1553706) (not e!2371199))))

(declare-fun prefix!426 () List!40705)

(declare-fun isEmpty!23977 (List!40705) Bool)

(assert (=> b!3838820 (= res!1553706 (not (isEmpty!23977 prefix!426)))))

(declare-fun b!3838821 () Bool)

(declare-fun res!1553713 () Bool)

(assert (=> b!3838821 (=> (not res!1553713) (not e!2371199))))

(declare-fun isEmpty!23978 (List!40706) Bool)

(assert (=> b!3838821 (= res!1553713 (not (isEmpty!23978 prefixTokens!80)))))

(assert (=> b!3838822 (= e!2371178 (and tp!1162468 tp!1162469))))

(declare-fun b!3838823 () Bool)

(declare-fun tp!1162466 () Bool)

(assert (=> b!3838823 (= e!2371191 (and tp_is_empty!19293 tp!1162466))))

(declare-fun b!3838824 () Bool)

(declare-fun res!1553703 () Bool)

(assert (=> b!3838824 (=> res!1553703 e!2371183)))

(declare-fun ++!10270 (List!40706 List!40706) List!40706)

(assert (=> b!3838824 (= res!1553703 (not (= lt!1332202 (tuple2!39755 (++!10270 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582) (_1!23011 lt!1332194)) (_2!23011 lt!1332194)))))))

(declare-fun b!3838825 () Bool)

(declare-fun e!2371198 () Bool)

(declare-fun tp!1162460 () Bool)

(assert (=> b!3838825 (= e!2371196 (and e!2371198 tp!1162460))))

(declare-fun b!3838826 () Bool)

(declare-fun res!1553705 () Bool)

(assert (=> b!3838826 (=> (not res!1553705) (not e!2371199))))

(declare-fun rulesInvariant!5188 (LexerInterface!5845 List!40707) Bool)

(assert (=> b!3838826 (= res!1553705 (rulesInvariant!5188 thiss!20629 rules!2768))))

(declare-fun tp!1162465 () Bool)

(declare-fun b!3838827 () Bool)

(assert (=> b!3838827 (= e!2371190 (and (inv!21 (value!198930 (h!46002 prefixTokens!80))) e!2371184 tp!1162465))))

(declare-fun b!3838828 () Bool)

(assert (=> b!3838828 (= e!2371179 e!2371186)))

(declare-fun res!1553704 () Bool)

(assert (=> b!3838828 (=> (not res!1553704) (not e!2371186))))

(assert (=> b!3838828 (= res!1553704 ((_ is Some!8673) lt!1332195))))

(declare-fun maxPrefix!3149 (LexerInterface!5845 List!40707 List!40705) Option!8674)

(assert (=> b!3838828 (= lt!1332195 (maxPrefix!3149 thiss!20629 rules!2768 lt!1332201))))

(declare-fun b!3838829 () Bool)

(declare-fun tp!1162473 () Bool)

(declare-fun e!2371200 () Bool)

(assert (=> b!3838829 (= e!2371181 (and tp!1162473 (inv!54728 (tag!7116 (rule!9092 (h!46002 suffixTokens!72)))) (inv!54732 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) e!2371200))))

(assert (=> b!3838830 (= e!2371200 (and tp!1162459 tp!1162471))))

(declare-fun b!3838831 () Bool)

(assert (=> b!3838831 (= e!2371199 e!2371179)))

(declare-fun res!1553707 () Bool)

(assert (=> b!3838831 (=> (not res!1553707) (not e!2371179))))

(declare-fun lt!1332192 () List!40706)

(assert (=> b!3838831 (= res!1553707 (= lt!1332202 (tuple2!39755 lt!1332192 suffixResult!91)))))

(assert (=> b!3838831 (= lt!1332202 (lexList!1613 thiss!20629 rules!2768 lt!1332201))))

(assert (=> b!3838831 (= lt!1332192 (++!10270 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3838831 (= lt!1332201 (++!10269 prefix!426 suffix!1176))))

(declare-fun tp!1162462 () Bool)

(declare-fun b!3838832 () Bool)

(assert (=> b!3838832 (= e!2371198 (and tp!1162462 (inv!54728 (tag!7116 (h!46003 rules!2768))) (inv!54732 (transformation!6256 (h!46003 rules!2768))) e!2371188))))

(assert (= (and start!359416 res!1553710) b!3838814))

(assert (= (and b!3838814 res!1553709) b!3838826))

(assert (= (and b!3838826 res!1553705) b!3838821))

(assert (= (and b!3838821 res!1553713) b!3838820))

(assert (= (and b!3838820 res!1553706) b!3838831))

(assert (= (and b!3838831 res!1553707) b!3838812))

(assert (= (and b!3838812 res!1553708) b!3838828))

(assert (= (and b!3838828 res!1553704) b!3838808))

(assert (= (and b!3838808 res!1553712) b!3838810))

(assert (= (and b!3838808 (not res!1553714)) b!3838824))

(assert (= (and b!3838824 (not res!1553703)) b!3838813))

(assert (= (and b!3838813 (not res!1553711)) b!3838811))

(assert (= (and start!359416 ((_ is Cons!40581) suffixResult!91)) b!3838809))

(assert (= (and start!359416 ((_ is Cons!40581) suffix!1176)) b!3838817))

(assert (= b!3838832 b!3838815))

(assert (= b!3838825 b!3838832))

(assert (= (and start!359416 ((_ is Cons!40583) rules!2768)) b!3838825))

(assert (= b!3838819 b!3838822))

(assert (= b!3838827 b!3838819))

(assert (= b!3838816 b!3838827))

(assert (= (and start!359416 ((_ is Cons!40582) prefixTokens!80)) b!3838816))

(assert (= b!3838829 b!3838830))

(assert (= b!3838818 b!3838829))

(assert (= b!3838807 b!3838818))

(assert (= (and start!359416 ((_ is Cons!40582) suffixTokens!72)) b!3838807))

(assert (= (and start!359416 ((_ is Cons!40581) prefix!426)) b!3838823))

(declare-fun m!4393117 () Bool)

(assert (=> b!3838819 m!4393117))

(declare-fun m!4393119 () Bool)

(assert (=> b!3838819 m!4393119))

(declare-fun m!4393121 () Bool)

(assert (=> b!3838820 m!4393121))

(declare-fun m!4393123 () Bool)

(assert (=> b!3838811 m!4393123))

(declare-fun m!4393125 () Bool)

(assert (=> b!3838807 m!4393125))

(declare-fun m!4393127 () Bool)

(assert (=> b!3838821 m!4393127))

(declare-fun m!4393129 () Bool)

(assert (=> b!3838828 m!4393129))

(declare-fun m!4393131 () Bool)

(assert (=> b!3838808 m!4393131))

(declare-fun m!4393133 () Bool)

(assert (=> b!3838808 m!4393133))

(declare-fun m!4393135 () Bool)

(assert (=> b!3838808 m!4393135))

(declare-fun m!4393137 () Bool)

(assert (=> b!3838808 m!4393137))

(declare-fun m!4393139 () Bool)

(assert (=> b!3838808 m!4393139))

(declare-fun m!4393141 () Bool)

(assert (=> b!3838808 m!4393141))

(declare-fun m!4393143 () Bool)

(assert (=> b!3838808 m!4393143))

(declare-fun m!4393145 () Bool)

(assert (=> b!3838808 m!4393145))

(assert (=> b!3838808 m!4393145))

(declare-fun m!4393147 () Bool)

(assert (=> b!3838808 m!4393147))

(declare-fun m!4393149 () Bool)

(assert (=> b!3838808 m!4393149))

(declare-fun m!4393151 () Bool)

(assert (=> b!3838808 m!4393151))

(assert (=> b!3838808 m!4393149))

(declare-fun m!4393153 () Bool)

(assert (=> b!3838808 m!4393153))

(declare-fun m!4393155 () Bool)

(assert (=> b!3838808 m!4393155))

(declare-fun m!4393157 () Bool)

(assert (=> b!3838808 m!4393157))

(declare-fun m!4393159 () Bool)

(assert (=> b!3838812 m!4393159))

(declare-fun m!4393161 () Bool)

(assert (=> b!3838814 m!4393161))

(declare-fun m!4393163 () Bool)

(assert (=> b!3838827 m!4393163))

(declare-fun m!4393165 () Bool)

(assert (=> b!3838810 m!4393165))

(declare-fun m!4393167 () Bool)

(assert (=> b!3838831 m!4393167))

(declare-fun m!4393169 () Bool)

(assert (=> b!3838831 m!4393169))

(declare-fun m!4393171 () Bool)

(assert (=> b!3838831 m!4393171))

(declare-fun m!4393173 () Bool)

(assert (=> b!3838829 m!4393173))

(declare-fun m!4393175 () Bool)

(assert (=> b!3838829 m!4393175))

(declare-fun m!4393177 () Bool)

(assert (=> b!3838824 m!4393177))

(declare-fun m!4393179 () Bool)

(assert (=> b!3838826 m!4393179))

(declare-fun m!4393181 () Bool)

(assert (=> b!3838832 m!4393181))

(declare-fun m!4393183 () Bool)

(assert (=> b!3838832 m!4393183))

(declare-fun m!4393185 () Bool)

(assert (=> b!3838818 m!4393185))

(declare-fun m!4393187 () Bool)

(assert (=> b!3838816 m!4393187))

(check-sat (not b!3838823) (not b!3838832) b_and!285771 (not b!3838811) (not b_next!102925) b_and!285763 b_and!285769 (not b!3838828) b_and!285773 (not b!3838825) (not b!3838831) tp_is_empty!19293 (not b!3838819) (not b_next!102927) (not b!3838824) (not b!3838816) (not b!3838820) (not b!3838807) b_and!285765 (not b!3838812) (not b!3838808) (not b!3838821) (not b!3838826) (not b!3838827) (not b_next!102917) (not b_next!102919) b_and!285767 (not b!3838829) (not b_next!102921) (not b!3838810) (not b!3838818) (not b!3838809) (not b!3838817) (not b_next!102923) (not b!3838814))
(check-sat b_and!285771 b_and!285765 (not b_next!102925) b_and!285763 b_and!285767 b_and!285769 b_and!285773 (not b_next!102921) (not b_next!102923) (not b_next!102927) (not b_next!102917) (not b_next!102919))
(get-model)

(declare-fun d!1139355 () Bool)

(declare-fun res!1553719 () Bool)

(declare-fun e!2371203 () Bool)

(assert (=> d!1139355 (=> (not res!1553719) (not e!2371203))))

(declare-fun rulesValid!2418 (LexerInterface!5845 List!40707) Bool)

(assert (=> d!1139355 (= res!1553719 (rulesValid!2418 thiss!20629 rules!2768))))

(assert (=> d!1139355 (= (rulesInvariant!5188 thiss!20629 rules!2768) e!2371203)))

(declare-fun b!3838835 () Bool)

(declare-datatypes ((List!40709 0))(
  ( (Nil!40585) (Cons!40585 (h!46005 String!46147) (t!310238 List!40709)) )
))
(declare-fun noDuplicateTag!2419 (LexerInterface!5845 List!40707 List!40709) Bool)

(assert (=> b!3838835 (= e!2371203 (noDuplicateTag!2419 thiss!20629 rules!2768 Nil!40585))))

(assert (= (and d!1139355 res!1553719) b!3838835))

(declare-fun m!4393189 () Bool)

(assert (=> d!1139355 m!4393189))

(declare-fun m!4393191 () Bool)

(assert (=> b!3838835 m!4393191))

(assert (=> b!3838826 d!1139355))

(declare-fun d!1139357 () Bool)

(declare-fun res!1553724 () Bool)

(declare-fun e!2371206 () Bool)

(assert (=> d!1139357 (=> (not res!1553724) (not e!2371206))))

(assert (=> d!1139357 (= res!1553724 (not (isEmpty!23977 (originalCharacters!6856 (h!46002 prefixTokens!80)))))))

(assert (=> d!1139357 (= (inv!54731 (h!46002 prefixTokens!80)) e!2371206)))

(declare-fun b!3838840 () Bool)

(declare-fun res!1553725 () Bool)

(assert (=> b!3838840 (=> (not res!1553725) (not e!2371206))))

(declare-fun dynLambda!17564 (Int TokenValue!6486) BalanceConc!24528)

(assert (=> b!3838840 (= res!1553725 (= (originalCharacters!6856 (h!46002 prefixTokens!80)) (list!15116 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (value!198930 (h!46002 prefixTokens!80))))))))

(declare-fun b!3838841 () Bool)

(assert (=> b!3838841 (= e!2371206 (= (size!30553 (h!46002 prefixTokens!80)) (size!30554 (originalCharacters!6856 (h!46002 prefixTokens!80)))))))

(assert (= (and d!1139357 res!1553724) b!3838840))

(assert (= (and b!3838840 res!1553725) b!3838841))

(declare-fun b_lambda!112235 () Bool)

(assert (=> (not b_lambda!112235) (not b!3838840)))

(declare-fun t!310142 () Bool)

(declare-fun tb!220741 () Bool)

(assert (=> (and b!3838815 (= (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))) t!310142) tb!220741))

(declare-fun b!3838846 () Bool)

(declare-fun e!2371209 () Bool)

(declare-fun tp!1162477 () Bool)

(declare-fun inv!54735 (Conc!12467) Bool)

(assert (=> b!3838846 (= e!2371209 (and (inv!54735 (c!669183 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (value!198930 (h!46002 prefixTokens!80))))) tp!1162477))))

(declare-fun result!269034 () Bool)

(declare-fun inv!54736 (BalanceConc!24528) Bool)

(assert (=> tb!220741 (= result!269034 (and (inv!54736 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (value!198930 (h!46002 prefixTokens!80)))) e!2371209))))

(assert (= tb!220741 b!3838846))

(declare-fun m!4393193 () Bool)

(assert (=> b!3838846 m!4393193))

(declare-fun m!4393195 () Bool)

(assert (=> tb!220741 m!4393195))

(assert (=> b!3838840 t!310142))

(declare-fun b_and!285775 () Bool)

(assert (= b_and!285765 (and (=> t!310142 result!269034) b_and!285775)))

(declare-fun t!310144 () Bool)

(declare-fun tb!220743 () Bool)

(assert (=> (and b!3838822 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))) t!310144) tb!220743))

(declare-fun result!269038 () Bool)

(assert (= result!269038 result!269034))

(assert (=> b!3838840 t!310144))

(declare-fun b_and!285777 () Bool)

(assert (= b_and!285769 (and (=> t!310144 result!269038) b_and!285777)))

(declare-fun t!310146 () Bool)

(declare-fun tb!220745 () Bool)

(assert (=> (and b!3838830 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))) t!310146) tb!220745))

(declare-fun result!269040 () Bool)

(assert (= result!269040 result!269034))

(assert (=> b!3838840 t!310146))

(declare-fun b_and!285779 () Bool)

(assert (= b_and!285773 (and (=> t!310146 result!269040) b_and!285779)))

(declare-fun m!4393197 () Bool)

(assert (=> d!1139357 m!4393197))

(declare-fun m!4393199 () Bool)

(assert (=> b!3838840 m!4393199))

(assert (=> b!3838840 m!4393199))

(declare-fun m!4393201 () Bool)

(assert (=> b!3838840 m!4393201))

(declare-fun m!4393203 () Bool)

(assert (=> b!3838841 m!4393203))

(assert (=> b!3838816 d!1139357))

(declare-fun b!3838857 () Bool)

(declare-fun res!1553730 () Bool)

(declare-fun e!2371217 () Bool)

(assert (=> b!3838857 (=> res!1553730 e!2371217)))

(assert (=> b!3838857 (= res!1553730 (not ((_ is IntegerValue!19460) (value!198930 (h!46002 prefixTokens!80)))))))

(declare-fun e!2371216 () Bool)

(assert (=> b!3838857 (= e!2371216 e!2371217)))

(declare-fun d!1139359 () Bool)

(declare-fun c!669188 () Bool)

(assert (=> d!1139359 (= c!669188 ((_ is IntegerValue!19458) (value!198930 (h!46002 prefixTokens!80))))))

(declare-fun e!2371218 () Bool)

(assert (=> d!1139359 (= (inv!21 (value!198930 (h!46002 prefixTokens!80))) e!2371218)))

(declare-fun b!3838858 () Bool)

(assert (=> b!3838858 (= e!2371218 e!2371216)))

(declare-fun c!669189 () Bool)

(assert (=> b!3838858 (= c!669189 ((_ is IntegerValue!19459) (value!198930 (h!46002 prefixTokens!80))))))

(declare-fun b!3838859 () Bool)

(declare-fun inv!15 (TokenValue!6486) Bool)

(assert (=> b!3838859 (= e!2371217 (inv!15 (value!198930 (h!46002 prefixTokens!80))))))

(declare-fun b!3838860 () Bool)

(declare-fun inv!17 (TokenValue!6486) Bool)

(assert (=> b!3838860 (= e!2371216 (inv!17 (value!198930 (h!46002 prefixTokens!80))))))

(declare-fun b!3838861 () Bool)

(declare-fun inv!16 (TokenValue!6486) Bool)

(assert (=> b!3838861 (= e!2371218 (inv!16 (value!198930 (h!46002 prefixTokens!80))))))

(assert (= (and d!1139359 c!669188) b!3838861))

(assert (= (and d!1139359 (not c!669188)) b!3838858))

(assert (= (and b!3838858 c!669189) b!3838860))

(assert (= (and b!3838858 (not c!669189)) b!3838857))

(assert (= (and b!3838857 (not res!1553730)) b!3838859))

(declare-fun m!4393205 () Bool)

(assert (=> b!3838859 m!4393205))

(declare-fun m!4393207 () Bool)

(assert (=> b!3838860 m!4393207))

(declare-fun m!4393209 () Bool)

(assert (=> b!3838861 m!4393209))

(assert (=> b!3838827 d!1139359))

(declare-fun d!1139361 () Bool)

(assert (=> d!1139361 (= (isEmpty!23976 rules!2768) ((_ is Nil!40583) rules!2768))))

(assert (=> b!3838814 d!1139361))

(declare-fun b!3838862 () Bool)

(declare-fun res!1553731 () Bool)

(declare-fun e!2371220 () Bool)

(assert (=> b!3838862 (=> res!1553731 e!2371220)))

(assert (=> b!3838862 (= res!1553731 (not ((_ is IntegerValue!19460) (value!198930 (h!46002 suffixTokens!72)))))))

(declare-fun e!2371219 () Bool)

(assert (=> b!3838862 (= e!2371219 e!2371220)))

(declare-fun d!1139365 () Bool)

(declare-fun c!669190 () Bool)

(assert (=> d!1139365 (= c!669190 ((_ is IntegerValue!19458) (value!198930 (h!46002 suffixTokens!72))))))

(declare-fun e!2371221 () Bool)

(assert (=> d!1139365 (= (inv!21 (value!198930 (h!46002 suffixTokens!72))) e!2371221)))

(declare-fun b!3838863 () Bool)

(assert (=> b!3838863 (= e!2371221 e!2371219)))

(declare-fun c!669191 () Bool)

(assert (=> b!3838863 (= c!669191 ((_ is IntegerValue!19459) (value!198930 (h!46002 suffixTokens!72))))))

(declare-fun b!3838864 () Bool)

(assert (=> b!3838864 (= e!2371220 (inv!15 (value!198930 (h!46002 suffixTokens!72))))))

(declare-fun b!3838865 () Bool)

(assert (=> b!3838865 (= e!2371219 (inv!17 (value!198930 (h!46002 suffixTokens!72))))))

(declare-fun b!3838866 () Bool)

(assert (=> b!3838866 (= e!2371221 (inv!16 (value!198930 (h!46002 suffixTokens!72))))))

(assert (= (and d!1139365 c!669190) b!3838866))

(assert (= (and d!1139365 (not c!669190)) b!3838863))

(assert (= (and b!3838863 c!669191) b!3838865))

(assert (= (and b!3838863 (not c!669191)) b!3838862))

(assert (= (and b!3838862 (not res!1553731)) b!3838864))

(declare-fun m!4393211 () Bool)

(assert (=> b!3838864 m!4393211))

(declare-fun m!4393213 () Bool)

(assert (=> b!3838865 m!4393213))

(declare-fun m!4393215 () Bool)

(assert (=> b!3838866 m!4393215))

(assert (=> b!3838818 d!1139365))

(declare-fun d!1139367 () Bool)

(assert (=> d!1139367 (= (inv!54728 (tag!7116 (rule!9092 (h!46002 suffixTokens!72)))) (= (mod (str.len (value!198904 (tag!7116 (rule!9092 (h!46002 suffixTokens!72))))) 2) 0))))

(assert (=> b!3838829 d!1139367))

(declare-fun d!1139369 () Bool)

(declare-fun res!1553737 () Bool)

(declare-fun e!2371227 () Bool)

(assert (=> d!1139369 (=> (not res!1553737) (not e!2371227))))

(declare-fun semiInverseModEq!2682 (Int Int) Bool)

(assert (=> d!1139369 (= res!1553737 (semiInverseModEq!2682 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toValue!8672 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))))))

(assert (=> d!1139369 (= (inv!54732 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) e!2371227)))

(declare-fun b!3838872 () Bool)

(declare-fun equivClasses!2581 (Int Int) Bool)

(assert (=> b!3838872 (= e!2371227 (equivClasses!2581 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toValue!8672 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))))))

(assert (= (and d!1139369 res!1553737) b!3838872))

(declare-fun m!4393221 () Bool)

(assert (=> d!1139369 m!4393221))

(declare-fun m!4393223 () Bool)

(assert (=> b!3838872 m!4393223))

(assert (=> b!3838829 d!1139369))

(declare-fun d!1139375 () Bool)

(declare-fun lt!1332206 () BalanceConc!24528)

(assert (=> d!1139375 (= (list!15116 lt!1332206) (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195))))))

(assert (=> d!1139375 (= lt!1332206 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195))))) (value!198930 (_1!23012 (v!38965 lt!1332195)))))))

(assert (=> d!1139375 (= (charsOf!4084 (_1!23012 (v!38965 lt!1332195))) lt!1332206)))

(declare-fun b_lambda!112237 () Bool)

(assert (=> (not b_lambda!112237) (not d!1139375)))

(declare-fun tb!220747 () Bool)

(declare-fun t!310148 () Bool)

(assert (=> (and b!3838815 (= (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310148) tb!220747))

(declare-fun b!3838873 () Bool)

(declare-fun e!2371228 () Bool)

(declare-fun tp!1162478 () Bool)

(assert (=> b!3838873 (= e!2371228 (and (inv!54735 (c!669183 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195))))) (value!198930 (_1!23012 (v!38965 lt!1332195)))))) tp!1162478))))

(declare-fun result!269042 () Bool)

(assert (=> tb!220747 (= result!269042 (and (inv!54736 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195))))) (value!198930 (_1!23012 (v!38965 lt!1332195))))) e!2371228))))

(assert (= tb!220747 b!3838873))

(declare-fun m!4393225 () Bool)

(assert (=> b!3838873 m!4393225))

(declare-fun m!4393227 () Bool)

(assert (=> tb!220747 m!4393227))

(assert (=> d!1139375 t!310148))

(declare-fun b_and!285781 () Bool)

(assert (= b_and!285775 (and (=> t!310148 result!269042) b_and!285781)))

(declare-fun tb!220749 () Bool)

(declare-fun t!310150 () Bool)

(assert (=> (and b!3838822 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310150) tb!220749))

(declare-fun result!269044 () Bool)

(assert (= result!269044 result!269042))

(assert (=> d!1139375 t!310150))

(declare-fun b_and!285783 () Bool)

(assert (= b_and!285777 (and (=> t!310150 result!269044) b_and!285783)))

(declare-fun tb!220751 () Bool)

(declare-fun t!310152 () Bool)

(assert (=> (and b!3838830 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310152) tb!220751))

(declare-fun result!269046 () Bool)

(assert (= result!269046 result!269042))

(assert (=> d!1139375 t!310152))

(declare-fun b_and!285785 () Bool)

(assert (= b_and!285779 (and (=> t!310152 result!269046) b_and!285785)))

(declare-fun m!4393229 () Bool)

(assert (=> d!1139375 m!4393229))

(declare-fun m!4393231 () Bool)

(assert (=> d!1139375 m!4393231))

(assert (=> b!3838808 d!1139375))

(declare-fun d!1139377 () Bool)

(assert (=> d!1139377 (= (_2!23012 (v!38965 lt!1332195)) lt!1332196)))

(declare-fun lt!1332209 () Unit!58300)

(declare-fun choose!22569 (List!40705 List!40705 List!40705 List!40705 List!40705) Unit!58300)

(assert (=> d!1139377 (= lt!1332209 (choose!22569 lt!1332198 (_2!23012 (v!38965 lt!1332195)) lt!1332198 lt!1332196 lt!1332201))))

(assert (=> d!1139377 (isPrefix!3355 lt!1332198 lt!1332201)))

(assert (=> d!1139377 (= (lemmaSamePrefixThenSameSuffix!1576 lt!1332198 (_2!23012 (v!38965 lt!1332195)) lt!1332198 lt!1332196 lt!1332201) lt!1332209)))

(declare-fun bs!582575 () Bool)

(assert (= bs!582575 d!1139377))

(declare-fun m!4393233 () Bool)

(assert (=> bs!582575 m!4393233))

(declare-fun m!4393235 () Bool)

(assert (=> bs!582575 m!4393235))

(assert (=> b!3838808 d!1139377))

(declare-fun d!1139379 () Bool)

(declare-fun dynLambda!17566 (Int BalanceConc!24528) TokenValue!6486)

(assert (=> d!1139379 (= (apply!9499 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))) (seqFromList!4527 lt!1332198)) (dynLambda!17566 (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195))))) (seqFromList!4527 lt!1332198)))))

(declare-fun b_lambda!112239 () Bool)

(assert (=> (not b_lambda!112239) (not d!1139379)))

(declare-fun tb!220753 () Bool)

(declare-fun t!310154 () Bool)

(assert (=> (and b!3838815 (= (toValue!8672 (transformation!6256 (h!46003 rules!2768))) (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310154) tb!220753))

(declare-fun result!269048 () Bool)

(assert (=> tb!220753 (= result!269048 (inv!21 (dynLambda!17566 (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195))))) (seqFromList!4527 lt!1332198))))))

(declare-fun m!4393237 () Bool)

(assert (=> tb!220753 m!4393237))

(assert (=> d!1139379 t!310154))

(declare-fun b_and!285787 () Bool)

(assert (= b_and!285763 (and (=> t!310154 result!269048) b_and!285787)))

(declare-fun tb!220755 () Bool)

(declare-fun t!310156 () Bool)

(assert (=> (and b!3838822 (= (toValue!8672 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310156) tb!220755))

(declare-fun result!269052 () Bool)

(assert (= result!269052 result!269048))

(assert (=> d!1139379 t!310156))

(declare-fun b_and!285789 () Bool)

(assert (= b_and!285767 (and (=> t!310156 result!269052) b_and!285789)))

(declare-fun t!310158 () Bool)

(declare-fun tb!220757 () Bool)

(assert (=> (and b!3838830 (= (toValue!8672 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310158) tb!220757))

(declare-fun result!269054 () Bool)

(assert (= result!269054 result!269048))

(assert (=> d!1139379 t!310158))

(declare-fun b_and!285791 () Bool)

(assert (= b_and!285771 (and (=> t!310158 result!269054) b_and!285791)))

(assert (=> d!1139379 m!4393149))

(declare-fun m!4393239 () Bool)

(assert (=> d!1139379 m!4393239))

(assert (=> b!3838808 d!1139379))

(declare-fun d!1139381 () Bool)

(declare-fun lt!1332212 () List!40705)

(assert (=> d!1139381 (= (++!10269 lt!1332198 lt!1332212) lt!1332201)))

(declare-fun e!2371234 () List!40705)

(assert (=> d!1139381 (= lt!1332212 e!2371234)))

(declare-fun c!669194 () Bool)

(assert (=> d!1139381 (= c!669194 ((_ is Cons!40581) lt!1332198))))

(assert (=> d!1139381 (>= (size!30554 lt!1332201) (size!30554 lt!1332198))))

(assert (=> d!1139381 (= (getSuffix!1810 lt!1332201 lt!1332198) lt!1332212)))

(declare-fun b!3838880 () Bool)

(declare-fun tail!5805 (List!40705) List!40705)

(assert (=> b!3838880 (= e!2371234 (getSuffix!1810 (tail!5805 lt!1332201) (t!310138 lt!1332198)))))

(declare-fun b!3838881 () Bool)

(assert (=> b!3838881 (= e!2371234 lt!1332201)))

(assert (= (and d!1139381 c!669194) b!3838880))

(assert (= (and d!1139381 (not c!669194)) b!3838881))

(declare-fun m!4393241 () Bool)

(assert (=> d!1139381 m!4393241))

(declare-fun m!4393243 () Bool)

(assert (=> d!1139381 m!4393243))

(assert (=> d!1139381 m!4393157))

(declare-fun m!4393245 () Bool)

(assert (=> b!3838880 m!4393245))

(assert (=> b!3838880 m!4393245))

(declare-fun m!4393247 () Bool)

(assert (=> b!3838880 m!4393247))

(assert (=> b!3838808 d!1139381))

(declare-fun d!1139383 () Bool)

(assert (=> d!1139383 (ruleValid!2208 thiss!20629 (rule!9092 (_1!23012 (v!38965 lt!1332195))))))

(declare-fun lt!1332215 () Unit!58300)

(declare-fun choose!22571 (LexerInterface!5845 Rule!12312 List!40707) Unit!58300)

(assert (=> d!1139383 (= lt!1332215 (choose!22571 thiss!20629 (rule!9092 (_1!23012 (v!38965 lt!1332195))) rules!2768))))

(declare-fun contains!8228 (List!40707 Rule!12312) Bool)

(assert (=> d!1139383 (contains!8228 rules!2768 (rule!9092 (_1!23012 (v!38965 lt!1332195))))))

(assert (=> d!1139383 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1288 thiss!20629 (rule!9092 (_1!23012 (v!38965 lt!1332195))) rules!2768) lt!1332215)))

(declare-fun bs!582576 () Bool)

(assert (= bs!582576 d!1139383))

(assert (=> bs!582576 m!4393141))

(declare-fun m!4393249 () Bool)

(assert (=> bs!582576 m!4393249))

(declare-fun m!4393251 () Bool)

(assert (=> bs!582576 m!4393251))

(assert (=> b!3838808 d!1139383))

(declare-fun d!1139385 () Bool)

(declare-fun fromListB!2093 (List!40705) BalanceConc!24528)

(assert (=> d!1139385 (= (seqFromList!4527 lt!1332198) (fromListB!2093 lt!1332198))))

(declare-fun bs!582577 () Bool)

(assert (= bs!582577 d!1139385))

(declare-fun m!4393253 () Bool)

(assert (=> bs!582577 m!4393253))

(assert (=> b!3838808 d!1139385))

(declare-fun d!1139387 () Bool)

(declare-fun res!1553756 () Bool)

(declare-fun e!2371243 () Bool)

(assert (=> d!1139387 (=> (not res!1553756) (not e!2371243))))

(declare-fun validRegex!5082 (Regex!11161) Bool)

(assert (=> d!1139387 (= res!1553756 (validRegex!5082 (regex!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195))))))))

(assert (=> d!1139387 (= (ruleValid!2208 thiss!20629 (rule!9092 (_1!23012 (v!38965 lt!1332195)))) e!2371243)))

(declare-fun b!3838904 () Bool)

(declare-fun res!1553757 () Bool)

(assert (=> b!3838904 (=> (not res!1553757) (not e!2371243))))

(declare-fun nullable!3883 (Regex!11161) Bool)

(assert (=> b!3838904 (= res!1553757 (not (nullable!3883 (regex!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))))))

(declare-fun b!3838905 () Bool)

(assert (=> b!3838905 (= e!2371243 (not (= (tag!7116 (rule!9092 (_1!23012 (v!38965 lt!1332195)))) (String!46148 ""))))))

(assert (= (and d!1139387 res!1553756) b!3838904))

(assert (= (and b!3838904 res!1553757) b!3838905))

(declare-fun m!4393255 () Bool)

(assert (=> d!1139387 m!4393255))

(declare-fun m!4393257 () Bool)

(assert (=> b!3838904 m!4393257))

(assert (=> b!3838808 d!1139387))

(declare-fun d!1139389 () Bool)

(assert (=> d!1139389 (= (size!30553 (_1!23012 (v!38965 lt!1332195))) (size!30554 (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195)))))))

(declare-fun Unit!58303 () Unit!58300)

(assert (=> d!1139389 (= (lemmaCharactersSize!917 (_1!23012 (v!38965 lt!1332195))) Unit!58303)))

(declare-fun bs!582578 () Bool)

(assert (= bs!582578 d!1139389))

(assert (=> bs!582578 m!4393165))

(assert (=> b!3838808 d!1139389))

(declare-fun b!3838924 () Bool)

(declare-fun e!2371252 () List!40705)

(assert (=> b!3838924 (= e!2371252 (Cons!40581 (h!46001 lt!1332198) (++!10269 (t!310138 lt!1332198) (_2!23012 (v!38965 lt!1332195)))))))

(declare-fun b!3838926 () Bool)

(declare-fun e!2371251 () Bool)

(declare-fun lt!1332233 () List!40705)

(assert (=> b!3838926 (= e!2371251 (or (not (= (_2!23012 (v!38965 lt!1332195)) Nil!40581)) (= lt!1332233 lt!1332198)))))

(declare-fun b!3838925 () Bool)

(declare-fun res!1553769 () Bool)

(assert (=> b!3838925 (=> (not res!1553769) (not e!2371251))))

(assert (=> b!3838925 (= res!1553769 (= (size!30554 lt!1332233) (+ (size!30554 lt!1332198) (size!30554 (_2!23012 (v!38965 lt!1332195))))))))

(declare-fun d!1139391 () Bool)

(assert (=> d!1139391 e!2371251))

(declare-fun res!1553770 () Bool)

(assert (=> d!1139391 (=> (not res!1553770) (not e!2371251))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6031 (List!40705) (InoxSet C!22508))

(assert (=> d!1139391 (= res!1553770 (= (content!6031 lt!1332233) ((_ map or) (content!6031 lt!1332198) (content!6031 (_2!23012 (v!38965 lt!1332195))))))))

(assert (=> d!1139391 (= lt!1332233 e!2371252)))

(declare-fun c!669200 () Bool)

(assert (=> d!1139391 (= c!669200 ((_ is Nil!40581) lt!1332198))))

(assert (=> d!1139391 (= (++!10269 lt!1332198 (_2!23012 (v!38965 lt!1332195))) lt!1332233)))

(declare-fun b!3838923 () Bool)

(assert (=> b!3838923 (= e!2371252 (_2!23012 (v!38965 lt!1332195)))))

(assert (= (and d!1139391 c!669200) b!3838923))

(assert (= (and d!1139391 (not c!669200)) b!3838924))

(assert (= (and d!1139391 res!1553770) b!3838925))

(assert (= (and b!3838925 res!1553769) b!3838926))

(declare-fun m!4393291 () Bool)

(assert (=> b!3838924 m!4393291))

(declare-fun m!4393293 () Bool)

(assert (=> b!3838925 m!4393293))

(assert (=> b!3838925 m!4393157))

(declare-fun m!4393295 () Bool)

(assert (=> b!3838925 m!4393295))

(declare-fun m!4393297 () Bool)

(assert (=> d!1139391 m!4393297))

(declare-fun m!4393299 () Bool)

(assert (=> d!1139391 m!4393299))

(declare-fun m!4393301 () Bool)

(assert (=> d!1139391 m!4393301))

(assert (=> b!3838808 d!1139391))

(declare-fun d!1139395 () Bool)

(declare-fun e!2371268 () Bool)

(assert (=> d!1139395 e!2371268))

(declare-fun res!1553782 () Bool)

(assert (=> d!1139395 (=> res!1553782 e!2371268)))

(declare-fun lt!1332247 () Bool)

(assert (=> d!1139395 (= res!1553782 (not lt!1332247))))

(declare-fun e!2371270 () Bool)

(assert (=> d!1139395 (= lt!1332247 e!2371270)))

(declare-fun res!1553783 () Bool)

(assert (=> d!1139395 (=> res!1553783 e!2371270)))

(assert (=> d!1139395 (= res!1553783 ((_ is Nil!40581) lt!1332198))))

(assert (=> d!1139395 (= (isPrefix!3355 lt!1332198 lt!1332197) lt!1332247)))

(declare-fun b!3838954 () Bool)

(declare-fun e!2371269 () Bool)

(assert (=> b!3838954 (= e!2371269 (isPrefix!3355 (tail!5805 lt!1332198) (tail!5805 lt!1332197)))))

(declare-fun b!3838952 () Bool)

(assert (=> b!3838952 (= e!2371270 e!2371269)))

(declare-fun res!1553784 () Bool)

(assert (=> b!3838952 (=> (not res!1553784) (not e!2371269))))

(assert (=> b!3838952 (= res!1553784 (not ((_ is Nil!40581) lt!1332197)))))

(declare-fun b!3838953 () Bool)

(declare-fun res!1553785 () Bool)

(assert (=> b!3838953 (=> (not res!1553785) (not e!2371269))))

(declare-fun head!8078 (List!40705) C!22508)

(assert (=> b!3838953 (= res!1553785 (= (head!8078 lt!1332198) (head!8078 lt!1332197)))))

(declare-fun b!3838955 () Bool)

(assert (=> b!3838955 (= e!2371268 (>= (size!30554 lt!1332197) (size!30554 lt!1332198)))))

(assert (= (and d!1139395 (not res!1553783)) b!3838952))

(assert (= (and b!3838952 res!1553784) b!3838953))

(assert (= (and b!3838953 res!1553785) b!3838954))

(assert (= (and d!1139395 (not res!1553782)) b!3838955))

(declare-fun m!4393311 () Bool)

(assert (=> b!3838954 m!4393311))

(declare-fun m!4393313 () Bool)

(assert (=> b!3838954 m!4393313))

(assert (=> b!3838954 m!4393311))

(assert (=> b!3838954 m!4393313))

(declare-fun m!4393315 () Bool)

(assert (=> b!3838954 m!4393315))

(declare-fun m!4393317 () Bool)

(assert (=> b!3838953 m!4393317))

(declare-fun m!4393319 () Bool)

(assert (=> b!3838953 m!4393319))

(declare-fun m!4393321 () Bool)

(assert (=> b!3838955 m!4393321))

(assert (=> b!3838955 m!4393157))

(assert (=> b!3838808 d!1139395))

(declare-fun d!1139399 () Bool)

(declare-fun lt!1332253 () Int)

(assert (=> d!1139399 (>= lt!1332253 0)))

(declare-fun e!2371283 () Int)

(assert (=> d!1139399 (= lt!1332253 e!2371283)))

(declare-fun c!669214 () Bool)

(assert (=> d!1139399 (= c!669214 ((_ is Nil!40581) lt!1332198))))

(assert (=> d!1139399 (= (size!30554 lt!1332198) lt!1332253)))

(declare-fun b!3838978 () Bool)

(assert (=> b!3838978 (= e!2371283 0)))

(declare-fun b!3838979 () Bool)

(assert (=> b!3838979 (= e!2371283 (+ 1 (size!30554 (t!310138 lt!1332198))))))

(assert (= (and d!1139399 c!669214) b!3838978))

(assert (= (and d!1139399 (not c!669214)) b!3838979))

(declare-fun m!4393337 () Bool)

(assert (=> b!3838979 m!4393337))

(assert (=> b!3838808 d!1139399))

(declare-fun b!3839053 () Bool)

(declare-fun e!2371333 () Bool)

(declare-fun lt!1332292 () tuple2!39754)

(assert (=> b!3839053 (= e!2371333 (not (isEmpty!23978 (_1!23011 lt!1332292))))))

(declare-fun b!3839054 () Bool)

(declare-fun e!2371331 () tuple2!39754)

(assert (=> b!3839054 (= e!2371331 (tuple2!39755 Nil!40582 (_2!23012 (v!38965 lt!1332195))))))

(declare-fun b!3839056 () Bool)

(declare-fun lt!1332290 () Option!8674)

(declare-fun lt!1332291 () tuple2!39754)

(assert (=> b!3839056 (= e!2371331 (tuple2!39755 (Cons!40582 (_1!23012 (v!38965 lt!1332290)) (_1!23011 lt!1332291)) (_2!23011 lt!1332291)))))

(assert (=> b!3839056 (= lt!1332291 (lexList!1613 thiss!20629 rules!2768 (_2!23012 (v!38965 lt!1332290))))))

(declare-fun b!3839057 () Bool)

(declare-fun e!2371332 () Bool)

(assert (=> b!3839057 (= e!2371332 e!2371333)))

(declare-fun res!1553830 () Bool)

(assert (=> b!3839057 (= res!1553830 (< (size!30554 (_2!23011 lt!1332292)) (size!30554 (_2!23012 (v!38965 lt!1332195)))))))

(assert (=> b!3839057 (=> (not res!1553830) (not e!2371333))))

(declare-fun d!1139403 () Bool)

(assert (=> d!1139403 e!2371332))

(declare-fun c!669231 () Bool)

(declare-fun size!30556 (List!40706) Int)

(assert (=> d!1139403 (= c!669231 (> (size!30556 (_1!23011 lt!1332292)) 0))))

(assert (=> d!1139403 (= lt!1332292 e!2371331)))

(declare-fun c!669232 () Bool)

(assert (=> d!1139403 (= c!669232 ((_ is Some!8673) lt!1332290))))

(assert (=> d!1139403 (= lt!1332290 (maxPrefix!3149 thiss!20629 rules!2768 (_2!23012 (v!38965 lt!1332195))))))

(assert (=> d!1139403 (= (lexList!1613 thiss!20629 rules!2768 (_2!23012 (v!38965 lt!1332195))) lt!1332292)))

(declare-fun b!3839055 () Bool)

(assert (=> b!3839055 (= e!2371332 (= (_2!23011 lt!1332292) (_2!23012 (v!38965 lt!1332195))))))

(assert (= (and d!1139403 c!669232) b!3839056))

(assert (= (and d!1139403 (not c!669232)) b!3839054))

(assert (= (and d!1139403 c!669231) b!3839057))

(assert (= (and d!1139403 (not c!669231)) b!3839055))

(assert (= (and b!3839057 res!1553830) b!3839053))

(declare-fun m!4393447 () Bool)

(assert (=> b!3839053 m!4393447))

(declare-fun m!4393449 () Bool)

(assert (=> b!3839056 m!4393449))

(declare-fun m!4393451 () Bool)

(assert (=> b!3839057 m!4393451))

(assert (=> b!3839057 m!4393295))

(declare-fun m!4393453 () Bool)

(assert (=> d!1139403 m!4393453))

(declare-fun m!4393455 () Bool)

(assert (=> d!1139403 m!4393455))

(assert (=> b!3838808 d!1139403))

(declare-fun d!1139443 () Bool)

(assert (=> d!1139443 (isPrefix!3355 lt!1332198 (++!10269 lt!1332198 (_2!23012 (v!38965 lt!1332195))))))

(declare-fun lt!1332295 () Unit!58300)

(declare-fun choose!22572 (List!40705 List!40705) Unit!58300)

(assert (=> d!1139443 (= lt!1332295 (choose!22572 lt!1332198 (_2!23012 (v!38965 lt!1332195))))))

(assert (=> d!1139443 (= (lemmaConcatTwoListThenFirstIsPrefix!2218 lt!1332198 (_2!23012 (v!38965 lt!1332195))) lt!1332295)))

(declare-fun bs!582585 () Bool)

(assert (= bs!582585 d!1139443))

(assert (=> bs!582585 m!4393139))

(assert (=> bs!582585 m!4393139))

(declare-fun m!4393457 () Bool)

(assert (=> bs!582585 m!4393457))

(declare-fun m!4393459 () Bool)

(assert (=> bs!582585 m!4393459))

(assert (=> b!3838808 d!1139443))

(declare-fun d!1139445 () Bool)

(declare-fun list!15118 (Conc!12467) List!40705)

(assert (=> d!1139445 (= (list!15116 (charsOf!4084 (_1!23012 (v!38965 lt!1332195)))) (list!15118 (c!669183 (charsOf!4084 (_1!23012 (v!38965 lt!1332195))))))))

(declare-fun bs!582586 () Bool)

(assert (= bs!582586 d!1139445))

(declare-fun m!4393461 () Bool)

(assert (=> bs!582586 m!4393461))

(assert (=> b!3838808 d!1139445))

(declare-fun d!1139447 () Bool)

(assert (=> d!1139447 (= (inv!54728 (tag!7116 (rule!9092 (h!46002 prefixTokens!80)))) (= (mod (str.len (value!198904 (tag!7116 (rule!9092 (h!46002 prefixTokens!80))))) 2) 0))))

(assert (=> b!3838819 d!1139447))

(declare-fun d!1139449 () Bool)

(declare-fun res!1553831 () Bool)

(declare-fun e!2371334 () Bool)

(assert (=> d!1139449 (=> (not res!1553831) (not e!2371334))))

(assert (=> d!1139449 (= res!1553831 (semiInverseModEq!2682 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toValue!8672 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))))))

(assert (=> d!1139449 (= (inv!54732 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) e!2371334)))

(declare-fun b!3839058 () Bool)

(assert (=> b!3839058 (= e!2371334 (equivClasses!2581 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toValue!8672 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))))))

(assert (= (and d!1139449 res!1553831) b!3839058))

(declare-fun m!4393463 () Bool)

(assert (=> d!1139449 m!4393463))

(declare-fun m!4393465 () Bool)

(assert (=> b!3839058 m!4393465))

(assert (=> b!3838819 d!1139449))

(declare-fun d!1139451 () Bool)

(declare-fun e!2371342 () Bool)

(assert (=> d!1139451 e!2371342))

(declare-fun res!1553846 () Bool)

(assert (=> d!1139451 (=> res!1553846 e!2371342)))

(declare-fun lt!1332308 () Option!8674)

(declare-fun isEmpty!23980 (Option!8674) Bool)

(assert (=> d!1139451 (= res!1553846 (isEmpty!23980 lt!1332308))))

(declare-fun e!2371343 () Option!8674)

(assert (=> d!1139451 (= lt!1332308 e!2371343)))

(declare-fun c!669235 () Bool)

(assert (=> d!1139451 (= c!669235 (and ((_ is Cons!40583) rules!2768) ((_ is Nil!40583) (t!310140 rules!2768))))))

(declare-fun lt!1332310 () Unit!58300)

(declare-fun lt!1332306 () Unit!58300)

(assert (=> d!1139451 (= lt!1332310 lt!1332306)))

(assert (=> d!1139451 (isPrefix!3355 lt!1332201 lt!1332201)))

(declare-fun lemmaIsPrefixRefl!2130 (List!40705 List!40705) Unit!58300)

(assert (=> d!1139451 (= lt!1332306 (lemmaIsPrefixRefl!2130 lt!1332201 lt!1332201))))

(assert (=> d!1139451 (rulesValidInductive!2208 thiss!20629 rules!2768)))

(assert (=> d!1139451 (= (maxPrefix!3149 thiss!20629 rules!2768 lt!1332201) lt!1332308)))

(declare-fun call!281916 () Option!8674)

(declare-fun bm!281911 () Bool)

(declare-fun maxPrefixOneRule!2235 (LexerInterface!5845 Rule!12312 List!40705) Option!8674)

(assert (=> bm!281911 (= call!281916 (maxPrefixOneRule!2235 thiss!20629 (h!46003 rules!2768) lt!1332201))))

(declare-fun b!3839077 () Bool)

(declare-fun res!1553852 () Bool)

(declare-fun e!2371341 () Bool)

(assert (=> b!3839077 (=> (not res!1553852) (not e!2371341))))

(declare-fun get!13450 (Option!8674) tuple2!39756)

(assert (=> b!3839077 (= res!1553852 (< (size!30554 (_2!23012 (get!13450 lt!1332308))) (size!30554 lt!1332201)))))

(declare-fun b!3839078 () Bool)

(declare-fun res!1553850 () Bool)

(assert (=> b!3839078 (=> (not res!1553850) (not e!2371341))))

(declare-fun matchR!5334 (Regex!11161 List!40705) Bool)

(assert (=> b!3839078 (= res!1553850 (matchR!5334 (regex!6256 (rule!9092 (_1!23012 (get!13450 lt!1332308)))) (list!15116 (charsOf!4084 (_1!23012 (get!13450 lt!1332308))))))))

(declare-fun b!3839079 () Bool)

(declare-fun res!1553848 () Bool)

(assert (=> b!3839079 (=> (not res!1553848) (not e!2371341))))

(assert (=> b!3839079 (= res!1553848 (= (value!198930 (_1!23012 (get!13450 lt!1332308))) (apply!9499 (transformation!6256 (rule!9092 (_1!23012 (get!13450 lt!1332308)))) (seqFromList!4527 (originalCharacters!6856 (_1!23012 (get!13450 lt!1332308)))))))))

(declare-fun b!3839080 () Bool)

(declare-fun lt!1332309 () Option!8674)

(declare-fun lt!1332307 () Option!8674)

(assert (=> b!3839080 (= e!2371343 (ite (and ((_ is None!8673) lt!1332309) ((_ is None!8673) lt!1332307)) None!8673 (ite ((_ is None!8673) lt!1332307) lt!1332309 (ite ((_ is None!8673) lt!1332309) lt!1332307 (ite (>= (size!30553 (_1!23012 (v!38965 lt!1332309))) (size!30553 (_1!23012 (v!38965 lt!1332307)))) lt!1332309 lt!1332307)))))))

(assert (=> b!3839080 (= lt!1332309 call!281916)))

(assert (=> b!3839080 (= lt!1332307 (maxPrefix!3149 thiss!20629 (t!310140 rules!2768) lt!1332201))))

(declare-fun b!3839081 () Bool)

(assert (=> b!3839081 (= e!2371343 call!281916)))

(declare-fun b!3839082 () Bool)

(assert (=> b!3839082 (= e!2371341 (contains!8228 rules!2768 (rule!9092 (_1!23012 (get!13450 lt!1332308)))))))

(declare-fun b!3839083 () Bool)

(assert (=> b!3839083 (= e!2371342 e!2371341)))

(declare-fun res!1553847 () Bool)

(assert (=> b!3839083 (=> (not res!1553847) (not e!2371341))))

(declare-fun isDefined!6823 (Option!8674) Bool)

(assert (=> b!3839083 (= res!1553847 (isDefined!6823 lt!1332308))))

(declare-fun b!3839084 () Bool)

(declare-fun res!1553851 () Bool)

(assert (=> b!3839084 (=> (not res!1553851) (not e!2371341))))

(assert (=> b!3839084 (= res!1553851 (= (list!15116 (charsOf!4084 (_1!23012 (get!13450 lt!1332308)))) (originalCharacters!6856 (_1!23012 (get!13450 lt!1332308)))))))

(declare-fun b!3839085 () Bool)

(declare-fun res!1553849 () Bool)

(assert (=> b!3839085 (=> (not res!1553849) (not e!2371341))))

(assert (=> b!3839085 (= res!1553849 (= (++!10269 (list!15116 (charsOf!4084 (_1!23012 (get!13450 lt!1332308)))) (_2!23012 (get!13450 lt!1332308))) lt!1332201))))

(assert (= (and d!1139451 c!669235) b!3839081))

(assert (= (and d!1139451 (not c!669235)) b!3839080))

(assert (= (or b!3839081 b!3839080) bm!281911))

(assert (= (and d!1139451 (not res!1553846)) b!3839083))

(assert (= (and b!3839083 res!1553847) b!3839084))

(assert (= (and b!3839084 res!1553851) b!3839077))

(assert (= (and b!3839077 res!1553852) b!3839085))

(assert (= (and b!3839085 res!1553849) b!3839079))

(assert (= (and b!3839079 res!1553848) b!3839078))

(assert (= (and b!3839078 res!1553850) b!3839082))

(declare-fun m!4393467 () Bool)

(assert (=> b!3839083 m!4393467))

(declare-fun m!4393469 () Bool)

(assert (=> d!1139451 m!4393469))

(declare-fun m!4393471 () Bool)

(assert (=> d!1139451 m!4393471))

(declare-fun m!4393473 () Bool)

(assert (=> d!1139451 m!4393473))

(assert (=> d!1139451 m!4393123))

(declare-fun m!4393475 () Bool)

(assert (=> b!3839084 m!4393475))

(declare-fun m!4393477 () Bool)

(assert (=> b!3839084 m!4393477))

(assert (=> b!3839084 m!4393477))

(declare-fun m!4393479 () Bool)

(assert (=> b!3839084 m!4393479))

(assert (=> b!3839077 m!4393475))

(declare-fun m!4393481 () Bool)

(assert (=> b!3839077 m!4393481))

(assert (=> b!3839077 m!4393243))

(assert (=> b!3839078 m!4393475))

(assert (=> b!3839078 m!4393477))

(assert (=> b!3839078 m!4393477))

(assert (=> b!3839078 m!4393479))

(assert (=> b!3839078 m!4393479))

(declare-fun m!4393483 () Bool)

(assert (=> b!3839078 m!4393483))

(assert (=> b!3839082 m!4393475))

(declare-fun m!4393485 () Bool)

(assert (=> b!3839082 m!4393485))

(declare-fun m!4393487 () Bool)

(assert (=> b!3839080 m!4393487))

(assert (=> b!3839079 m!4393475))

(declare-fun m!4393489 () Bool)

(assert (=> b!3839079 m!4393489))

(assert (=> b!3839079 m!4393489))

(declare-fun m!4393491 () Bool)

(assert (=> b!3839079 m!4393491))

(assert (=> b!3839085 m!4393475))

(assert (=> b!3839085 m!4393477))

(assert (=> b!3839085 m!4393477))

(assert (=> b!3839085 m!4393479))

(assert (=> b!3839085 m!4393479))

(declare-fun m!4393493 () Bool)

(assert (=> b!3839085 m!4393493))

(declare-fun m!4393495 () Bool)

(assert (=> bm!281911 m!4393495))

(assert (=> b!3838828 d!1139451))

(declare-fun d!1139453 () Bool)

(declare-fun res!1553853 () Bool)

(declare-fun e!2371344 () Bool)

(assert (=> d!1139453 (=> (not res!1553853) (not e!2371344))))

(assert (=> d!1139453 (= res!1553853 (not (isEmpty!23977 (originalCharacters!6856 (h!46002 suffixTokens!72)))))))

(assert (=> d!1139453 (= (inv!54731 (h!46002 suffixTokens!72)) e!2371344)))

(declare-fun b!3839086 () Bool)

(declare-fun res!1553854 () Bool)

(assert (=> b!3839086 (=> (not res!1553854) (not e!2371344))))

(assert (=> b!3839086 (= res!1553854 (= (originalCharacters!6856 (h!46002 suffixTokens!72)) (list!15116 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (value!198930 (h!46002 suffixTokens!72))))))))

(declare-fun b!3839087 () Bool)

(assert (=> b!3839087 (= e!2371344 (= (size!30553 (h!46002 suffixTokens!72)) (size!30554 (originalCharacters!6856 (h!46002 suffixTokens!72)))))))

(assert (= (and d!1139453 res!1553853) b!3839086))

(assert (= (and b!3839086 res!1553854) b!3839087))

(declare-fun b_lambda!112245 () Bool)

(assert (=> (not b_lambda!112245) (not b!3839086)))

(declare-fun tb!220771 () Bool)

(declare-fun t!310172 () Bool)

(assert (=> (and b!3838815 (= (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))) t!310172) tb!220771))

(declare-fun b!3839088 () Bool)

(declare-fun e!2371345 () Bool)

(declare-fun tp!1162482 () Bool)

(assert (=> b!3839088 (= e!2371345 (and (inv!54735 (c!669183 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (value!198930 (h!46002 suffixTokens!72))))) tp!1162482))))

(declare-fun result!269072 () Bool)

(assert (=> tb!220771 (= result!269072 (and (inv!54736 (dynLambda!17564 (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (value!198930 (h!46002 suffixTokens!72)))) e!2371345))))

(assert (= tb!220771 b!3839088))

(declare-fun m!4393497 () Bool)

(assert (=> b!3839088 m!4393497))

(declare-fun m!4393499 () Bool)

(assert (=> tb!220771 m!4393499))

(assert (=> b!3839086 t!310172))

(declare-fun b_and!285805 () Bool)

(assert (= b_and!285781 (and (=> t!310172 result!269072) b_and!285805)))

(declare-fun tb!220773 () Bool)

(declare-fun t!310174 () Bool)

(assert (=> (and b!3838822 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))) t!310174) tb!220773))

(declare-fun result!269074 () Bool)

(assert (= result!269074 result!269072))

(assert (=> b!3839086 t!310174))

(declare-fun b_and!285807 () Bool)

(assert (= b_and!285783 (and (=> t!310174 result!269074) b_and!285807)))

(declare-fun t!310176 () Bool)

(declare-fun tb!220775 () Bool)

(assert (=> (and b!3838830 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))) t!310176) tb!220775))

(declare-fun result!269076 () Bool)

(assert (= result!269076 result!269072))

(assert (=> b!3839086 t!310176))

(declare-fun b_and!285809 () Bool)

(assert (= b_and!285785 (and (=> t!310176 result!269076) b_and!285809)))

(declare-fun m!4393501 () Bool)

(assert (=> d!1139453 m!4393501))

(declare-fun m!4393503 () Bool)

(assert (=> b!3839086 m!4393503))

(assert (=> b!3839086 m!4393503))

(declare-fun m!4393505 () Bool)

(assert (=> b!3839086 m!4393505))

(declare-fun m!4393507 () Bool)

(assert (=> b!3839087 m!4393507))

(assert (=> b!3838807 d!1139453))

(declare-fun d!1139455 () Bool)

(declare-fun lt!1332311 () Int)

(assert (=> d!1139455 (>= lt!1332311 0)))

(declare-fun e!2371346 () Int)

(assert (=> d!1139455 (= lt!1332311 e!2371346)))

(declare-fun c!669236 () Bool)

(assert (=> d!1139455 (= c!669236 ((_ is Nil!40581) (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195)))))))

(assert (=> d!1139455 (= (size!30554 (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195)))) lt!1332311)))

(declare-fun b!3839089 () Bool)

(assert (=> b!3839089 (= e!2371346 0)))

(declare-fun b!3839090 () Bool)

(assert (=> b!3839090 (= e!2371346 (+ 1 (size!30554 (t!310138 (originalCharacters!6856 (_1!23012 (v!38965 lt!1332195)))))))))

(assert (= (and d!1139455 c!669236) b!3839089))

(assert (= (and d!1139455 (not c!669236)) b!3839090))

(declare-fun m!4393509 () Bool)

(assert (=> b!3839090 m!4393509))

(assert (=> b!3838810 d!1139455))

(declare-fun d!1139457 () Bool)

(assert (=> d!1139457 (= (isEmpty!23978 prefixTokens!80) ((_ is Nil!40582) prefixTokens!80))))

(assert (=> b!3838821 d!1139457))

(declare-fun d!1139459 () Bool)

(assert (=> d!1139459 (= (inv!54728 (tag!7116 (h!46003 rules!2768))) (= (mod (str.len (value!198904 (tag!7116 (h!46003 rules!2768)))) 2) 0))))

(assert (=> b!3838832 d!1139459))

(declare-fun d!1139461 () Bool)

(declare-fun res!1553855 () Bool)

(declare-fun e!2371347 () Bool)

(assert (=> d!1139461 (=> (not res!1553855) (not e!2371347))))

(assert (=> d!1139461 (= res!1553855 (semiInverseModEq!2682 (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toValue!8672 (transformation!6256 (h!46003 rules!2768)))))))

(assert (=> d!1139461 (= (inv!54732 (transformation!6256 (h!46003 rules!2768))) e!2371347)))

(declare-fun b!3839091 () Bool)

(assert (=> b!3839091 (= e!2371347 (equivClasses!2581 (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toValue!8672 (transformation!6256 (h!46003 rules!2768)))))))

(assert (= (and d!1139461 res!1553855) b!3839091))

(declare-fun m!4393511 () Bool)

(assert (=> d!1139461 m!4393511))

(declare-fun m!4393513 () Bool)

(assert (=> b!3839091 m!4393513))

(assert (=> b!3838832 d!1139461))

(declare-fun d!1139463 () Bool)

(assert (=> d!1139463 true))

(declare-fun lt!1332318 () Bool)

(declare-fun lambda!126077 () Int)

(declare-fun forall!8273 (List!40707 Int) Bool)

(assert (=> d!1139463 (= lt!1332318 (forall!8273 rules!2768 lambda!126077))))

(declare-fun e!2371425 () Bool)

(assert (=> d!1139463 (= lt!1332318 e!2371425)))

(declare-fun res!1553878 () Bool)

(assert (=> d!1139463 (=> res!1553878 e!2371425)))

(assert (=> d!1139463 (= res!1553878 (not ((_ is Cons!40583) rules!2768)))))

(assert (=> d!1139463 (= (rulesValidInductive!2208 thiss!20629 rules!2768) lt!1332318)))

(declare-fun b!3839197 () Bool)

(declare-fun e!2371426 () Bool)

(assert (=> b!3839197 (= e!2371425 e!2371426)))

(declare-fun res!1553877 () Bool)

(assert (=> b!3839197 (=> (not res!1553877) (not e!2371426))))

(assert (=> b!3839197 (= res!1553877 (ruleValid!2208 thiss!20629 (h!46003 rules!2768)))))

(declare-fun b!3839198 () Bool)

(assert (=> b!3839198 (= e!2371426 (rulesValidInductive!2208 thiss!20629 (t!310140 rules!2768)))))

(assert (= (and d!1139463 (not res!1553878)) b!3839197))

(assert (= (and b!3839197 res!1553877) b!3839198))

(declare-fun m!4393595 () Bool)

(assert (=> d!1139463 m!4393595))

(declare-fun m!4393597 () Bool)

(assert (=> b!3839197 m!4393597))

(declare-fun m!4393599 () Bool)

(assert (=> b!3839198 m!4393599))

(assert (=> b!3838811 d!1139463))

(declare-fun d!1139487 () Bool)

(assert (=> d!1139487 (= (isEmpty!23977 prefix!426) ((_ is Nil!40581) prefix!426))))

(assert (=> b!3838820 d!1139487))

(declare-fun b!3839201 () Bool)

(declare-fun e!2371429 () Bool)

(declare-fun lt!1332321 () tuple2!39754)

(assert (=> b!3839201 (= e!2371429 (not (isEmpty!23978 (_1!23011 lt!1332321))))))

(declare-fun b!3839202 () Bool)

(declare-fun e!2371427 () tuple2!39754)

(assert (=> b!3839202 (= e!2371427 (tuple2!39755 Nil!40582 lt!1332201))))

(declare-fun b!3839204 () Bool)

(declare-fun lt!1332319 () Option!8674)

(declare-fun lt!1332320 () tuple2!39754)

(assert (=> b!3839204 (= e!2371427 (tuple2!39755 (Cons!40582 (_1!23012 (v!38965 lt!1332319)) (_1!23011 lt!1332320)) (_2!23011 lt!1332320)))))

(assert (=> b!3839204 (= lt!1332320 (lexList!1613 thiss!20629 rules!2768 (_2!23012 (v!38965 lt!1332319))))))

(declare-fun b!3839205 () Bool)

(declare-fun e!2371428 () Bool)

(assert (=> b!3839205 (= e!2371428 e!2371429)))

(declare-fun res!1553879 () Bool)

(assert (=> b!3839205 (= res!1553879 (< (size!30554 (_2!23011 lt!1332321)) (size!30554 lt!1332201)))))

(assert (=> b!3839205 (=> (not res!1553879) (not e!2371429))))

(declare-fun d!1139489 () Bool)

(assert (=> d!1139489 e!2371428))

(declare-fun c!669247 () Bool)

(assert (=> d!1139489 (= c!669247 (> (size!30556 (_1!23011 lt!1332321)) 0))))

(assert (=> d!1139489 (= lt!1332321 e!2371427)))

(declare-fun c!669248 () Bool)

(assert (=> d!1139489 (= c!669248 ((_ is Some!8673) lt!1332319))))

(assert (=> d!1139489 (= lt!1332319 (maxPrefix!3149 thiss!20629 rules!2768 lt!1332201))))

(assert (=> d!1139489 (= (lexList!1613 thiss!20629 rules!2768 lt!1332201) lt!1332321)))

(declare-fun b!3839203 () Bool)

(assert (=> b!3839203 (= e!2371428 (= (_2!23011 lt!1332321) lt!1332201))))

(assert (= (and d!1139489 c!669248) b!3839204))

(assert (= (and d!1139489 (not c!669248)) b!3839202))

(assert (= (and d!1139489 c!669247) b!3839205))

(assert (= (and d!1139489 (not c!669247)) b!3839203))

(assert (= (and b!3839205 res!1553879) b!3839201))

(declare-fun m!4393601 () Bool)

(assert (=> b!3839201 m!4393601))

(declare-fun m!4393603 () Bool)

(assert (=> b!3839204 m!4393603))

(declare-fun m!4393605 () Bool)

(assert (=> b!3839205 m!4393605))

(assert (=> b!3839205 m!4393243))

(declare-fun m!4393607 () Bool)

(assert (=> d!1139489 m!4393607))

(assert (=> d!1139489 m!4393129))

(assert (=> b!3838831 d!1139489))

(declare-fun d!1139491 () Bool)

(declare-fun e!2371435 () Bool)

(assert (=> d!1139491 e!2371435))

(declare-fun res!1553884 () Bool)

(assert (=> d!1139491 (=> (not res!1553884) (not e!2371435))))

(declare-fun lt!1332324 () List!40706)

(declare-fun content!6032 (List!40706) (InoxSet Token!11650))

(assert (=> d!1139491 (= res!1553884 (= (content!6032 lt!1332324) ((_ map or) (content!6032 prefixTokens!80) (content!6032 suffixTokens!72))))))

(declare-fun e!2371434 () List!40706)

(assert (=> d!1139491 (= lt!1332324 e!2371434)))

(declare-fun c!669251 () Bool)

(assert (=> d!1139491 (= c!669251 ((_ is Nil!40582) prefixTokens!80))))

(assert (=> d!1139491 (= (++!10270 prefixTokens!80 suffixTokens!72) lt!1332324)))

(declare-fun b!3839215 () Bool)

(assert (=> b!3839215 (= e!2371434 (Cons!40582 (h!46002 prefixTokens!80) (++!10270 (t!310139 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3839217 () Bool)

(assert (=> b!3839217 (= e!2371435 (or (not (= suffixTokens!72 Nil!40582)) (= lt!1332324 prefixTokens!80)))))

(declare-fun b!3839214 () Bool)

(assert (=> b!3839214 (= e!2371434 suffixTokens!72)))

(declare-fun b!3839216 () Bool)

(declare-fun res!1553885 () Bool)

(assert (=> b!3839216 (=> (not res!1553885) (not e!2371435))))

(assert (=> b!3839216 (= res!1553885 (= (size!30556 lt!1332324) (+ (size!30556 prefixTokens!80) (size!30556 suffixTokens!72))))))

(assert (= (and d!1139491 c!669251) b!3839214))

(assert (= (and d!1139491 (not c!669251)) b!3839215))

(assert (= (and d!1139491 res!1553884) b!3839216))

(assert (= (and b!3839216 res!1553885) b!3839217))

(declare-fun m!4393609 () Bool)

(assert (=> d!1139491 m!4393609))

(declare-fun m!4393611 () Bool)

(assert (=> d!1139491 m!4393611))

(declare-fun m!4393613 () Bool)

(assert (=> d!1139491 m!4393613))

(declare-fun m!4393615 () Bool)

(assert (=> b!3839215 m!4393615))

(declare-fun m!4393617 () Bool)

(assert (=> b!3839216 m!4393617))

(declare-fun m!4393619 () Bool)

(assert (=> b!3839216 m!4393619))

(declare-fun m!4393621 () Bool)

(assert (=> b!3839216 m!4393621))

(assert (=> b!3838831 d!1139491))

(declare-fun b!3839219 () Bool)

(declare-fun e!2371437 () List!40705)

(assert (=> b!3839219 (= e!2371437 (Cons!40581 (h!46001 prefix!426) (++!10269 (t!310138 prefix!426) suffix!1176)))))

(declare-fun e!2371436 () Bool)

(declare-fun lt!1332325 () List!40705)

(declare-fun b!3839221 () Bool)

(assert (=> b!3839221 (= e!2371436 (or (not (= suffix!1176 Nil!40581)) (= lt!1332325 prefix!426)))))

(declare-fun b!3839220 () Bool)

(declare-fun res!1553886 () Bool)

(assert (=> b!3839220 (=> (not res!1553886) (not e!2371436))))

(assert (=> b!3839220 (= res!1553886 (= (size!30554 lt!1332325) (+ (size!30554 prefix!426) (size!30554 suffix!1176))))))

(declare-fun d!1139493 () Bool)

(assert (=> d!1139493 e!2371436))

(declare-fun res!1553887 () Bool)

(assert (=> d!1139493 (=> (not res!1553887) (not e!2371436))))

(assert (=> d!1139493 (= res!1553887 (= (content!6031 lt!1332325) ((_ map or) (content!6031 prefix!426) (content!6031 suffix!1176))))))

(assert (=> d!1139493 (= lt!1332325 e!2371437)))

(declare-fun c!669252 () Bool)

(assert (=> d!1139493 (= c!669252 ((_ is Nil!40581) prefix!426))))

(assert (=> d!1139493 (= (++!10269 prefix!426 suffix!1176) lt!1332325)))

(declare-fun b!3839218 () Bool)

(assert (=> b!3839218 (= e!2371437 suffix!1176)))

(assert (= (and d!1139493 c!669252) b!3839218))

(assert (= (and d!1139493 (not c!669252)) b!3839219))

(assert (= (and d!1139493 res!1553887) b!3839220))

(assert (= (and b!3839220 res!1553886) b!3839221))

(declare-fun m!4393623 () Bool)

(assert (=> b!3839219 m!4393623))

(declare-fun m!4393625 () Bool)

(assert (=> b!3839220 m!4393625))

(declare-fun m!4393627 () Bool)

(assert (=> b!3839220 m!4393627))

(declare-fun m!4393629 () Bool)

(assert (=> b!3839220 m!4393629))

(declare-fun m!4393631 () Bool)

(assert (=> d!1139493 m!4393631))

(declare-fun m!4393633 () Bool)

(assert (=> d!1139493 m!4393633))

(declare-fun m!4393635 () Bool)

(assert (=> d!1139493 m!4393635))

(assert (=> b!3838831 d!1139493))

(declare-fun d!1139495 () Bool)

(declare-fun e!2371439 () Bool)

(assert (=> d!1139495 e!2371439))

(declare-fun res!1553888 () Bool)

(assert (=> d!1139495 (=> (not res!1553888) (not e!2371439))))

(declare-fun lt!1332326 () List!40706)

(assert (=> d!1139495 (= res!1553888 (= (content!6032 lt!1332326) ((_ map or) (content!6032 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582)) (content!6032 (_1!23011 lt!1332194)))))))

(declare-fun e!2371438 () List!40706)

(assert (=> d!1139495 (= lt!1332326 e!2371438)))

(declare-fun c!669253 () Bool)

(assert (=> d!1139495 (= c!669253 ((_ is Nil!40582) (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582)))))

(assert (=> d!1139495 (= (++!10270 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582) (_1!23011 lt!1332194)) lt!1332326)))

(declare-fun b!3839223 () Bool)

(assert (=> b!3839223 (= e!2371438 (Cons!40582 (h!46002 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582)) (++!10270 (t!310139 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582)) (_1!23011 lt!1332194))))))

(declare-fun b!3839225 () Bool)

(assert (=> b!3839225 (= e!2371439 (or (not (= (_1!23011 lt!1332194) Nil!40582)) (= lt!1332326 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582))))))

(declare-fun b!3839222 () Bool)

(assert (=> b!3839222 (= e!2371438 (_1!23011 lt!1332194))))

(declare-fun b!3839224 () Bool)

(declare-fun res!1553889 () Bool)

(assert (=> b!3839224 (=> (not res!1553889) (not e!2371439))))

(assert (=> b!3839224 (= res!1553889 (= (size!30556 lt!1332326) (+ (size!30556 (Cons!40582 (_1!23012 (v!38965 lt!1332195)) Nil!40582)) (size!30556 (_1!23011 lt!1332194)))))))

(assert (= (and d!1139495 c!669253) b!3839222))

(assert (= (and d!1139495 (not c!669253)) b!3839223))

(assert (= (and d!1139495 res!1553888) b!3839224))

(assert (= (and b!3839224 res!1553889) b!3839225))

(declare-fun m!4393637 () Bool)

(assert (=> d!1139495 m!4393637))

(declare-fun m!4393639 () Bool)

(assert (=> d!1139495 m!4393639))

(declare-fun m!4393641 () Bool)

(assert (=> d!1139495 m!4393641))

(declare-fun m!4393643 () Bool)

(assert (=> b!3839223 m!4393643))

(declare-fun m!4393645 () Bool)

(assert (=> b!3839224 m!4393645))

(declare-fun m!4393647 () Bool)

(assert (=> b!3839224 m!4393647))

(declare-fun m!4393649 () Bool)

(assert (=> b!3839224 m!4393649))

(assert (=> b!3838824 d!1139495))

(declare-fun b!3839226 () Bool)

(declare-fun e!2371442 () Bool)

(declare-fun lt!1332329 () tuple2!39754)

(assert (=> b!3839226 (= e!2371442 (not (isEmpty!23978 (_1!23011 lt!1332329))))))

(declare-fun b!3839227 () Bool)

(declare-fun e!2371440 () tuple2!39754)

(assert (=> b!3839227 (= e!2371440 (tuple2!39755 Nil!40582 suffix!1176))))

(declare-fun b!3839229 () Bool)

(declare-fun lt!1332327 () Option!8674)

(declare-fun lt!1332328 () tuple2!39754)

(assert (=> b!3839229 (= e!2371440 (tuple2!39755 (Cons!40582 (_1!23012 (v!38965 lt!1332327)) (_1!23011 lt!1332328)) (_2!23011 lt!1332328)))))

(assert (=> b!3839229 (= lt!1332328 (lexList!1613 thiss!20629 rules!2768 (_2!23012 (v!38965 lt!1332327))))))

(declare-fun b!3839230 () Bool)

(declare-fun e!2371441 () Bool)

(assert (=> b!3839230 (= e!2371441 e!2371442)))

(declare-fun res!1553890 () Bool)

(assert (=> b!3839230 (= res!1553890 (< (size!30554 (_2!23011 lt!1332329)) (size!30554 suffix!1176)))))

(assert (=> b!3839230 (=> (not res!1553890) (not e!2371442))))

(declare-fun d!1139497 () Bool)

(assert (=> d!1139497 e!2371441))

(declare-fun c!669254 () Bool)

(assert (=> d!1139497 (= c!669254 (> (size!30556 (_1!23011 lt!1332329)) 0))))

(assert (=> d!1139497 (= lt!1332329 e!2371440)))

(declare-fun c!669255 () Bool)

(assert (=> d!1139497 (= c!669255 ((_ is Some!8673) lt!1332327))))

(assert (=> d!1139497 (= lt!1332327 (maxPrefix!3149 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1139497 (= (lexList!1613 thiss!20629 rules!2768 suffix!1176) lt!1332329)))

(declare-fun b!3839228 () Bool)

(assert (=> b!3839228 (= e!2371441 (= (_2!23011 lt!1332329) suffix!1176))))

(assert (= (and d!1139497 c!669255) b!3839229))

(assert (= (and d!1139497 (not c!669255)) b!3839227))

(assert (= (and d!1139497 c!669254) b!3839230))

(assert (= (and d!1139497 (not c!669254)) b!3839228))

(assert (= (and b!3839230 res!1553890) b!3839226))

(declare-fun m!4393651 () Bool)

(assert (=> b!3839226 m!4393651))

(declare-fun m!4393653 () Bool)

(assert (=> b!3839229 m!4393653))

(declare-fun m!4393655 () Bool)

(assert (=> b!3839230 m!4393655))

(assert (=> b!3839230 m!4393629))

(declare-fun m!4393657 () Bool)

(assert (=> d!1139497 m!4393657))

(declare-fun m!4393659 () Bool)

(assert (=> d!1139497 m!4393659))

(assert (=> b!3838812 d!1139497))

(declare-fun b!3839244 () Bool)

(declare-fun b_free!102237 () Bool)

(declare-fun b_next!102941 () Bool)

(assert (=> b!3839244 (= b_free!102237 (not b_next!102941))))

(declare-fun tb!220813 () Bool)

(declare-fun t!310215 () Bool)

(assert (=> (and b!3839244 (= (toValue!8672 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310215) tb!220813))

(declare-fun result!269124 () Bool)

(assert (= result!269124 result!269048))

(assert (=> d!1139379 t!310215))

(declare-fun b_and!285835 () Bool)

(declare-fun tp!1162559 () Bool)

(assert (=> b!3839244 (= tp!1162559 (and (=> t!310215 result!269124) b_and!285835))))

(declare-fun b_free!102239 () Bool)

(declare-fun b_next!102943 () Bool)

(assert (=> b!3839244 (= b_free!102239 (not b_next!102943))))

(declare-fun t!310217 () Bool)

(declare-fun tb!220815 () Bool)

(assert (=> (and b!3839244 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))) t!310217) tb!220815))

(declare-fun result!269126 () Bool)

(assert (= result!269126 result!269034))

(assert (=> b!3838840 t!310217))

(declare-fun tb!220817 () Bool)

(declare-fun t!310219 () Bool)

(assert (=> (and b!3839244 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310219) tb!220817))

(declare-fun result!269128 () Bool)

(assert (= result!269128 result!269042))

(assert (=> d!1139375 t!310219))

(declare-fun t!310221 () Bool)

(declare-fun tb!220819 () Bool)

(assert (=> (and b!3839244 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))) t!310221) tb!220819))

(declare-fun result!269130 () Bool)

(assert (= result!269130 result!269072))

(assert (=> b!3839086 t!310221))

(declare-fun tp!1162562 () Bool)

(declare-fun b_and!285837 () Bool)

(assert (=> b!3839244 (= tp!1162562 (and (=> t!310217 result!269126) (=> t!310219 result!269128) (=> t!310221 result!269130) b_and!285837))))

(declare-fun tp!1162563 () Bool)

(declare-fun b!3839242 () Bool)

(declare-fun e!2371458 () Bool)

(declare-fun e!2371456 () Bool)

(assert (=> b!3839242 (= e!2371458 (and (inv!21 (value!198930 (h!46002 (t!310139 prefixTokens!80)))) e!2371456 tp!1162563))))

(declare-fun e!2371457 () Bool)

(assert (=> b!3839244 (= e!2371457 (and tp!1162559 tp!1162562))))

(declare-fun e!2371455 () Bool)

(assert (=> b!3838816 (= tp!1162470 e!2371455)))

(declare-fun tp!1162560 () Bool)

(declare-fun b!3839243 () Bool)

(assert (=> b!3839243 (= e!2371456 (and tp!1162560 (inv!54728 (tag!7116 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (inv!54732 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) e!2371457))))

(declare-fun b!3839241 () Bool)

(declare-fun tp!1162561 () Bool)

(assert (=> b!3839241 (= e!2371455 (and (inv!54731 (h!46002 (t!310139 prefixTokens!80))) e!2371458 tp!1162561))))

(assert (= b!3839243 b!3839244))

(assert (= b!3839242 b!3839243))

(assert (= b!3839241 b!3839242))

(assert (= (and b!3838816 ((_ is Cons!40582) (t!310139 prefixTokens!80))) b!3839241))

(declare-fun m!4393661 () Bool)

(assert (=> b!3839242 m!4393661))

(declare-fun m!4393663 () Bool)

(assert (=> b!3839243 m!4393663))

(declare-fun m!4393665 () Bool)

(assert (=> b!3839243 m!4393665))

(declare-fun m!4393667 () Bool)

(assert (=> b!3839241 m!4393667))

(declare-fun b!3839249 () Bool)

(declare-fun e!2371463 () Bool)

(declare-fun tp!1162566 () Bool)

(assert (=> b!3839249 (= e!2371463 (and tp_is_empty!19293 tp!1162566))))

(assert (=> b!3838827 (= tp!1162465 e!2371463)))

(assert (= (and b!3838827 ((_ is Cons!40581) (originalCharacters!6856 (h!46002 prefixTokens!80)))) b!3839249))

(declare-fun b!3839260 () Bool)

(declare-fun b_free!102241 () Bool)

(declare-fun b_next!102945 () Bool)

(assert (=> b!3839260 (= b_free!102241 (not b_next!102945))))

(declare-fun tb!220821 () Bool)

(declare-fun t!310223 () Bool)

(assert (=> (and b!3839260 (= (toValue!8672 (transformation!6256 (h!46003 (t!310140 rules!2768)))) (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310223) tb!220821))

(declare-fun result!269136 () Bool)

(assert (= result!269136 result!269048))

(assert (=> d!1139379 t!310223))

(declare-fun tp!1162575 () Bool)

(declare-fun b_and!285839 () Bool)

(assert (=> b!3839260 (= tp!1162575 (and (=> t!310223 result!269136) b_and!285839))))

(declare-fun b_free!102243 () Bool)

(declare-fun b_next!102947 () Bool)

(assert (=> b!3839260 (= b_free!102243 (not b_next!102947))))

(declare-fun t!310225 () Bool)

(declare-fun tb!220823 () Bool)

(assert (=> (and b!3839260 (= (toChars!8531 (transformation!6256 (h!46003 (t!310140 rules!2768)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))) t!310225) tb!220823))

(declare-fun result!269138 () Bool)

(assert (= result!269138 result!269034))

(assert (=> b!3838840 t!310225))

(declare-fun t!310227 () Bool)

(declare-fun tb!220825 () Bool)

(assert (=> (and b!3839260 (= (toChars!8531 (transformation!6256 (h!46003 (t!310140 rules!2768)))) (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310227) tb!220825))

(declare-fun result!269140 () Bool)

(assert (= result!269140 result!269042))

(assert (=> d!1139375 t!310227))

(declare-fun t!310229 () Bool)

(declare-fun tb!220827 () Bool)

(assert (=> (and b!3839260 (= (toChars!8531 (transformation!6256 (h!46003 (t!310140 rules!2768)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))) t!310229) tb!220827))

(declare-fun result!269142 () Bool)

(assert (= result!269142 result!269072))

(assert (=> b!3839086 t!310229))

(declare-fun b_and!285841 () Bool)

(declare-fun tp!1162578 () Bool)

(assert (=> b!3839260 (= tp!1162578 (and (=> t!310225 result!269138) (=> t!310227 result!269140) (=> t!310229 result!269142) b_and!285841))))

(declare-fun e!2371473 () Bool)

(assert (=> b!3839260 (= e!2371473 (and tp!1162575 tp!1162578))))

(declare-fun tp!1162576 () Bool)

(declare-fun e!2371474 () Bool)

(declare-fun b!3839259 () Bool)

(assert (=> b!3839259 (= e!2371474 (and tp!1162576 (inv!54728 (tag!7116 (h!46003 (t!310140 rules!2768)))) (inv!54732 (transformation!6256 (h!46003 (t!310140 rules!2768)))) e!2371473))))

(declare-fun b!3839258 () Bool)

(declare-fun e!2371472 () Bool)

(declare-fun tp!1162577 () Bool)

(assert (=> b!3839258 (= e!2371472 (and e!2371474 tp!1162577))))

(assert (=> b!3838825 (= tp!1162460 e!2371472)))

(assert (= b!3839259 b!3839260))

(assert (= b!3839258 b!3839259))

(assert (= (and b!3838825 ((_ is Cons!40583) (t!310140 rules!2768))) b!3839258))

(declare-fun m!4393669 () Bool)

(assert (=> b!3839259 m!4393669))

(declare-fun m!4393671 () Bool)

(assert (=> b!3839259 m!4393671))

(declare-fun b!3839261 () Bool)

(declare-fun e!2371476 () Bool)

(declare-fun tp!1162579 () Bool)

(assert (=> b!3839261 (= e!2371476 (and tp_is_empty!19293 tp!1162579))))

(assert (=> b!3838818 (= tp!1162458 e!2371476)))

(assert (= (and b!3838818 ((_ is Cons!40581) (originalCharacters!6856 (h!46002 suffixTokens!72)))) b!3839261))

(declare-fun b!3839275 () Bool)

(declare-fun e!2371479 () Bool)

(declare-fun tp!1162594 () Bool)

(declare-fun tp!1162593 () Bool)

(assert (=> b!3839275 (= e!2371479 (and tp!1162594 tp!1162593))))

(assert (=> b!3838829 (= tp!1162473 e!2371479)))

(declare-fun b!3839272 () Bool)

(assert (=> b!3839272 (= e!2371479 tp_is_empty!19293)))

(declare-fun b!3839273 () Bool)

(declare-fun tp!1162591 () Bool)

(declare-fun tp!1162590 () Bool)

(assert (=> b!3839273 (= e!2371479 (and tp!1162591 tp!1162590))))

(declare-fun b!3839274 () Bool)

(declare-fun tp!1162592 () Bool)

(assert (=> b!3839274 (= e!2371479 tp!1162592)))

(assert (= (and b!3838829 ((_ is ElementMatch!11161) (regex!6256 (rule!9092 (h!46002 suffixTokens!72))))) b!3839272))

(assert (= (and b!3838829 ((_ is Concat!17648) (regex!6256 (rule!9092 (h!46002 suffixTokens!72))))) b!3839273))

(assert (= (and b!3838829 ((_ is Star!11161) (regex!6256 (rule!9092 (h!46002 suffixTokens!72))))) b!3839274))

(assert (= (and b!3838829 ((_ is Union!11161) (regex!6256 (rule!9092 (h!46002 suffixTokens!72))))) b!3839275))

(declare-fun b!3839279 () Bool)

(declare-fun e!2371480 () Bool)

(declare-fun tp!1162599 () Bool)

(declare-fun tp!1162598 () Bool)

(assert (=> b!3839279 (= e!2371480 (and tp!1162599 tp!1162598))))

(assert (=> b!3838819 (= tp!1162467 e!2371480)))

(declare-fun b!3839276 () Bool)

(assert (=> b!3839276 (= e!2371480 tp_is_empty!19293)))

(declare-fun b!3839277 () Bool)

(declare-fun tp!1162596 () Bool)

(declare-fun tp!1162595 () Bool)

(assert (=> b!3839277 (= e!2371480 (and tp!1162596 tp!1162595))))

(declare-fun b!3839278 () Bool)

(declare-fun tp!1162597 () Bool)

(assert (=> b!3839278 (= e!2371480 tp!1162597)))

(assert (= (and b!3838819 ((_ is ElementMatch!11161) (regex!6256 (rule!9092 (h!46002 prefixTokens!80))))) b!3839276))

(assert (= (and b!3838819 ((_ is Concat!17648) (regex!6256 (rule!9092 (h!46002 prefixTokens!80))))) b!3839277))

(assert (= (and b!3838819 ((_ is Star!11161) (regex!6256 (rule!9092 (h!46002 prefixTokens!80))))) b!3839278))

(assert (= (and b!3838819 ((_ is Union!11161) (regex!6256 (rule!9092 (h!46002 prefixTokens!80))))) b!3839279))

(declare-fun b!3839280 () Bool)

(declare-fun e!2371481 () Bool)

(declare-fun tp!1162600 () Bool)

(assert (=> b!3839280 (= e!2371481 (and tp_is_empty!19293 tp!1162600))))

(assert (=> b!3838817 (= tp!1162464 e!2371481)))

(assert (= (and b!3838817 ((_ is Cons!40581) (t!310138 suffix!1176))) b!3839280))

(declare-fun b!3839284 () Bool)

(declare-fun b_free!102245 () Bool)

(declare-fun b_next!102949 () Bool)

(assert (=> b!3839284 (= b_free!102245 (not b_next!102949))))

(declare-fun t!310231 () Bool)

(declare-fun tb!220829 () Bool)

(assert (=> (and b!3839284 (= (toValue!8672 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (toValue!8672 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310231) tb!220829))

(declare-fun result!269146 () Bool)

(assert (= result!269146 result!269048))

(assert (=> d!1139379 t!310231))

(declare-fun b_and!285843 () Bool)

(declare-fun tp!1162601 () Bool)

(assert (=> b!3839284 (= tp!1162601 (and (=> t!310231 result!269146) b_and!285843))))

(declare-fun b_free!102247 () Bool)

(declare-fun b_next!102951 () Bool)

(assert (=> b!3839284 (= b_free!102247 (not b_next!102951))))

(declare-fun t!310233 () Bool)

(declare-fun tb!220831 () Bool)

(assert (=> (and b!3839284 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80))))) t!310233) tb!220831))

(declare-fun result!269148 () Bool)

(assert (= result!269148 result!269034))

(assert (=> b!3838840 t!310233))

(declare-fun t!310235 () Bool)

(declare-fun tb!220833 () Bool)

(assert (=> (and b!3839284 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (toChars!8531 (transformation!6256 (rule!9092 (_1!23012 (v!38965 lt!1332195)))))) t!310235) tb!220833))

(declare-fun result!269150 () Bool)

(assert (= result!269150 result!269042))

(assert (=> d!1139375 t!310235))

(declare-fun t!310237 () Bool)

(declare-fun tb!220835 () Bool)

(assert (=> (and b!3839284 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72))))) t!310237) tb!220835))

(declare-fun result!269152 () Bool)

(assert (= result!269152 result!269072))

(assert (=> b!3839086 t!310237))

(declare-fun b_and!285845 () Bool)

(declare-fun tp!1162604 () Bool)

(assert (=> b!3839284 (= tp!1162604 (and (=> t!310233 result!269148) (=> t!310235 result!269150) (=> t!310237 result!269152) b_and!285845))))

(declare-fun e!2371483 () Bool)

(declare-fun e!2371485 () Bool)

(declare-fun tp!1162605 () Bool)

(declare-fun b!3839282 () Bool)

(assert (=> b!3839282 (= e!2371485 (and (inv!21 (value!198930 (h!46002 (t!310139 suffixTokens!72)))) e!2371483 tp!1162605))))

(declare-fun e!2371484 () Bool)

(assert (=> b!3839284 (= e!2371484 (and tp!1162601 tp!1162604))))

(declare-fun e!2371482 () Bool)

(assert (=> b!3838807 (= tp!1162463 e!2371482)))

(declare-fun b!3839283 () Bool)

(declare-fun tp!1162602 () Bool)

(assert (=> b!3839283 (= e!2371483 (and tp!1162602 (inv!54728 (tag!7116 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (inv!54732 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) e!2371484))))

(declare-fun tp!1162603 () Bool)

(declare-fun b!3839281 () Bool)

(assert (=> b!3839281 (= e!2371482 (and (inv!54731 (h!46002 (t!310139 suffixTokens!72))) e!2371485 tp!1162603))))

(assert (= b!3839283 b!3839284))

(assert (= b!3839282 b!3839283))

(assert (= b!3839281 b!3839282))

(assert (= (and b!3838807 ((_ is Cons!40582) (t!310139 suffixTokens!72))) b!3839281))

(declare-fun m!4393673 () Bool)

(assert (=> b!3839282 m!4393673))

(declare-fun m!4393675 () Bool)

(assert (=> b!3839283 m!4393675))

(declare-fun m!4393677 () Bool)

(assert (=> b!3839283 m!4393677))

(declare-fun m!4393679 () Bool)

(assert (=> b!3839281 m!4393679))

(declare-fun b!3839288 () Bool)

(declare-fun e!2371488 () Bool)

(declare-fun tp!1162610 () Bool)

(declare-fun tp!1162609 () Bool)

(assert (=> b!3839288 (= e!2371488 (and tp!1162610 tp!1162609))))

(assert (=> b!3838832 (= tp!1162462 e!2371488)))

(declare-fun b!3839285 () Bool)

(assert (=> b!3839285 (= e!2371488 tp_is_empty!19293)))

(declare-fun b!3839286 () Bool)

(declare-fun tp!1162607 () Bool)

(declare-fun tp!1162606 () Bool)

(assert (=> b!3839286 (= e!2371488 (and tp!1162607 tp!1162606))))

(declare-fun b!3839287 () Bool)

(declare-fun tp!1162608 () Bool)

(assert (=> b!3839287 (= e!2371488 tp!1162608)))

(assert (= (and b!3838832 ((_ is ElementMatch!11161) (regex!6256 (h!46003 rules!2768)))) b!3839285))

(assert (= (and b!3838832 ((_ is Concat!17648) (regex!6256 (h!46003 rules!2768)))) b!3839286))

(assert (= (and b!3838832 ((_ is Star!11161) (regex!6256 (h!46003 rules!2768)))) b!3839287))

(assert (= (and b!3838832 ((_ is Union!11161) (regex!6256 (h!46003 rules!2768)))) b!3839288))

(declare-fun b!3839289 () Bool)

(declare-fun e!2371489 () Bool)

(declare-fun tp!1162611 () Bool)

(assert (=> b!3839289 (= e!2371489 (and tp_is_empty!19293 tp!1162611))))

(assert (=> b!3838809 (= tp!1162461 e!2371489)))

(assert (= (and b!3838809 ((_ is Cons!40581) (t!310138 suffixResult!91))) b!3839289))

(declare-fun b!3839290 () Bool)

(declare-fun e!2371490 () Bool)

(declare-fun tp!1162612 () Bool)

(assert (=> b!3839290 (= e!2371490 (and tp_is_empty!19293 tp!1162612))))

(assert (=> b!3838823 (= tp!1162466 e!2371490)))

(assert (= (and b!3838823 ((_ is Cons!40581) (t!310138 prefix!426))) b!3839290))

(declare-fun b_lambda!112255 () Bool)

(assert (= b_lambda!112245 (or (and b!3838822 b_free!102219 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))))) (and b!3839260 b_free!102243 (= (toChars!8531 (transformation!6256 (h!46003 (t!310140 rules!2768)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))))) (and b!3839244 b_free!102239 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))))) (and b!3838830 b_free!102223) (and b!3839284 b_free!102247 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))))) (and b!3838815 b_free!102215 (= (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))))) b_lambda!112255)))

(declare-fun b_lambda!112257 () Bool)

(assert (= b_lambda!112235 (or (and b!3839260 b_free!102243 (= (toChars!8531 (transformation!6256 (h!46003 (t!310140 rules!2768)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))))) (and b!3839284 b_free!102247 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 suffixTokens!72))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))))) (and b!3838815 b_free!102215 (= (toChars!8531 (transformation!6256 (h!46003 rules!2768))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))))) (and b!3838822 b_free!102219) (and b!3838830 b_free!102223 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 suffixTokens!72)))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))))) (and b!3839244 b_free!102239 (= (toChars!8531 (transformation!6256 (rule!9092 (h!46002 (t!310139 prefixTokens!80))))) (toChars!8531 (transformation!6256 (rule!9092 (h!46002 prefixTokens!80)))))) b_lambda!112257)))

(check-sat (not b!3838865) b_and!285809 (not d!1139391) (not b!3838872) (not b!3839056) (not b!3839241) (not b!3838873) (not b!3838924) (not b!3839273) (not b!3839223) (not b_next!102947) (not b_lambda!112239) (not d!1139451) (not b!3839091) (not d!1139449) (not d!1139403) (not d!1139387) (not b_lambda!112257) (not b!3838835) (not b_next!102951) (not b!3839289) (not b!3839080) (not b!3838846) (not b_lambda!112237) (not tb!220747) (not d!1139383) (not b!3839083) b_and!285843 (not b!3838866) (not b!3839085) (not b!3839077) (not b!3839258) (not b!3839079) (not b_next!102945) b_and!285787 b_and!285841 (not b!3839224) b_and!285845 (not b!3839057) (not b!3839078) b_and!285835 (not b!3838841) (not b_next!102919) (not b_next!102917) (not b!3838880) (not b!3838953) (not tb!220771) (not b!3839201) (not b!3838904) (not b!3839282) (not b_next!102925) (not b!3839249) (not b!3839198) (not b!3839275) (not b!3838954) (not b!3839088) (not b!3839259) (not b!3839280) (not d!1139385) (not tb!220753) (not b!3839082) (not d!1139389) (not b!3839058) (not b!3839288) (not d!1139443) (not b_next!102941) (not d!1139463) b_and!285805 (not b!3839219) (not b!3839086) (not d!1139491) (not b!3838840) (not b!3839279) (not d!1139497) b_and!285839 (not b!3839226) (not b!3839053) (not b!3839220) (not d!1139453) b_and!285791 (not b!3838861) (not b!3839229) (not d!1139375) (not b!3838860) (not b!3839197) (not b!3838864) (not b!3839290) (not b!3839230) (not b!3839090) (not b_next!102949) (not d!1139489) (not b_next!102921) (not b!3839215) (not d!1139377) (not b!3839084) (not b!3839277) (not b!3839261) (not b!3839286) (not b!3839274) (not b!3838925) (not b!3839242) (not b!3838955) (not d!1139495) (not b_next!102943) tp_is_empty!19293 (not d!1139461) (not b!3839287) (not b!3839281) b_and!285837 (not b!3839283) (not d!1139445) (not bm!281911) (not b!3838979) (not b_lambda!112255) (not d!1139357) (not d!1139381) (not b!3839204) (not d!1139355) (not d!1139493) (not d!1139369) (not b_next!102923) (not tb!220741) (not b!3839278) (not b!3838859) (not b!3839205) (not b!3839243) b_and!285807 (not b!3839216) (not b!3839087) b_and!285789 (not b_next!102927))
(check-sat (not b_next!102947) (not b_next!102951) b_and!285809 b_and!285843 b_and!285845 (not b_next!102925) (not b_next!102941) b_and!285805 b_and!285839 b_and!285791 (not b_next!102949) (not b_next!102921) (not b_next!102943) b_and!285837 (not b_next!102923) b_and!285841 (not b_next!102945) b_and!285787 (not b_next!102917) b_and!285835 (not b_next!102919) b_and!285807 b_and!285789 (not b_next!102927))
