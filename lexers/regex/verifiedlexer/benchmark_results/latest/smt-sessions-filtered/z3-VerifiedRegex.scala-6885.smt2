; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362748 () Bool)

(assert start!362748)

(declare-fun b!3866380 () Bool)

(declare-fun b_free!104197 () Bool)

(declare-fun b_next!104901 () Bool)

(assert (=> b!3866380 (= b_free!104197 (not b_next!104901))))

(declare-fun tp!1172225 () Bool)

(declare-fun b_and!289659 () Bool)

(assert (=> b!3866380 (= tp!1172225 b_and!289659)))

(declare-fun b_free!104199 () Bool)

(declare-fun b_next!104903 () Bool)

(assert (=> b!3866380 (= b_free!104199 (not b_next!104903))))

(declare-fun tp!1172212 () Bool)

(declare-fun b_and!289661 () Bool)

(assert (=> b!3866380 (= tp!1172212 b_and!289661)))

(declare-fun b!3866401 () Bool)

(declare-fun b_free!104201 () Bool)

(declare-fun b_next!104905 () Bool)

(assert (=> b!3866401 (= b_free!104201 (not b_next!104905))))

(declare-fun tp!1172217 () Bool)

(declare-fun b_and!289663 () Bool)

(assert (=> b!3866401 (= tp!1172217 b_and!289663)))

(declare-fun b_free!104203 () Bool)

(declare-fun b_next!104907 () Bool)

(assert (=> b!3866401 (= b_free!104203 (not b_next!104907))))

(declare-fun tp!1172218 () Bool)

(declare-fun b_and!289665 () Bool)

(assert (=> b!3866401 (= tp!1172218 b_and!289665)))

(declare-fun b!3866376 () Bool)

(declare-fun b_free!104205 () Bool)

(declare-fun b_next!104909 () Bool)

(assert (=> b!3866376 (= b_free!104205 (not b_next!104909))))

(declare-fun tp!1172215 () Bool)

(declare-fun b_and!289667 () Bool)

(assert (=> b!3866376 (= tp!1172215 b_and!289667)))

(declare-fun b_free!104207 () Bool)

(declare-fun b_next!104911 () Bool)

(assert (=> b!3866376 (= b_free!104207 (not b_next!104911))))

(declare-fun tp!1172213 () Bool)

(declare-fun b_and!289669 () Bool)

(assert (=> b!3866376 (= tp!1172213 b_and!289669)))

(declare-fun b!3866366 () Bool)

(declare-fun c!672943 () Bool)

(declare-datatypes ((List!41158 0))(
  ( (Nil!41034) (Cons!41034 (h!46454 (_ BitVec 16)) (t!314033 List!41158)) )
))
(declare-datatypes ((TokenValue!6588 0))(
  ( (FloatLiteralValue!13176 (text!46561 List!41158)) (TokenValueExt!6587 (__x!25393 Int)) (Broken!32940 (value!201811 List!41158)) (Object!6711) (End!6588) (Def!6588) (Underscore!6588) (Match!6588) (Else!6588) (Error!6588) (Case!6588) (If!6588) (Extends!6588) (Abstract!6588) (Class!6588) (Val!6588) (DelimiterValue!13176 (del!6648 List!41158)) (KeywordValue!6594 (value!201812 List!41158)) (CommentValue!13176 (value!201813 List!41158)) (WhitespaceValue!13176 (value!201814 List!41158)) (IndentationValue!6588 (value!201815 List!41158)) (String!46657) (Int32!6588) (Broken!32941 (value!201816 List!41158)) (Boolean!6589) (Unit!58740) (OperatorValue!6591 (op!6648 List!41158)) (IdentifierValue!13176 (value!201817 List!41158)) (IdentifierValue!13177 (value!201818 List!41158)) (WhitespaceValue!13177 (value!201819 List!41158)) (True!13176) (False!13176) (Broken!32942 (value!201820 List!41158)) (Broken!32943 (value!201821 List!41158)) (True!13177) (RightBrace!6588) (RightBracket!6588) (Colon!6588) (Null!6588) (Comma!6588) (LeftBracket!6588) (False!13177) (LeftBrace!6588) (ImaginaryLiteralValue!6588 (text!46562 List!41158)) (StringLiteralValue!19764 (value!201822 List!41158)) (EOFValue!6588 (value!201823 List!41158)) (IdentValue!6588 (value!201824 List!41158)) (DelimiterValue!13177 (value!201825 List!41158)) (DedentValue!6588 (value!201826 List!41158)) (NewLineValue!6588 (value!201827 List!41158)) (IntegerValue!19764 (value!201828 (_ BitVec 32)) (text!46563 List!41158)) (IntegerValue!19765 (value!201829 Int) (text!46564 List!41158)) (Times!6588) (Or!6588) (Equal!6588) (Minus!6588) (Broken!32944 (value!201830 List!41158)) (And!6588) (Div!6588) (LessEqual!6588) (Mod!6588) (Concat!17851) (Not!6588) (Plus!6588) (SpaceValue!6588 (value!201831 List!41158)) (IntegerValue!19766 (value!201832 Int) (text!46565 List!41158)) (StringLiteralValue!19765 (text!46566 List!41158)) (FloatLiteralValue!13177 (text!46567 List!41158)) (BytesLiteralValue!6588 (value!201833 List!41158)) (CommentValue!13177 (value!201834 List!41158)) (StringLiteralValue!19766 (value!201835 List!41158)) (ErrorTokenValue!6588 (msg!6649 List!41158)) )
))
(declare-datatypes ((C!22712 0))(
  ( (C!22713 (val!13450 Int)) )
))
(declare-datatypes ((Regex!11263 0))(
  ( (ElementMatch!11263 (c!672944 C!22712)) (Concat!17852 (regOne!23038 Regex!11263) (regTwo!23038 Regex!11263)) (EmptyExpr!11263) (Star!11263 (reg!11592 Regex!11263)) (EmptyLang!11263) (Union!11263 (regOne!23039 Regex!11263) (regTwo!23039 Regex!11263)) )
))
(declare-datatypes ((String!46658 0))(
  ( (String!46659 (value!201836 String)) )
))
(declare-datatypes ((List!41159 0))(
  ( (Nil!41035) (Cons!41035 (h!46455 C!22712) (t!314034 List!41159)) )
))
(declare-datatypes ((IArray!25143 0))(
  ( (IArray!25144 (innerList!12629 List!41159)) )
))
(declare-datatypes ((Conc!12569 0))(
  ( (Node!12569 (left!31566 Conc!12569) (right!31896 Conc!12569) (csize!25368 Int) (cheight!12780 Int)) (Leaf!19455 (xs!15875 IArray!25143) (csize!25369 Int)) (Empty!12569) )
))
(declare-datatypes ((BalanceConc!24732 0))(
  ( (BalanceConc!24733 (c!672945 Conc!12569)) )
))
(declare-datatypes ((TokenValueInjection!12604 0))(
  ( (TokenValueInjection!12605 (toValue!8786 Int) (toChars!8645 Int)) )
))
(declare-datatypes ((Rule!12516 0))(
  ( (Rule!12517 (regex!6358 Regex!11263) (tag!7218 String!46658) (isSeparator!6358 Bool) (transformation!6358 TokenValueInjection!12604)) )
))
(declare-datatypes ((Token!11854 0))(
  ( (Token!11855 (value!201837 TokenValue!6588) (rule!9238 Rule!12516) (size!30853 Int) (originalCharacters!6958 List!41159)) )
))
(declare-datatypes ((List!41160 0))(
  ( (Nil!41036) (Cons!41036 (h!46456 Token!11854) (t!314035 List!41160)) )
))
(declare-fun lt!1344322 () List!41160)

(declare-fun isEmpty!24328 (List!41160) Bool)

(assert (=> b!3866366 (= c!672943 (isEmpty!24328 lt!1344322))))

(declare-fun prefixTokens!80 () List!41160)

(declare-fun tail!5885 (List!41160) List!41160)

(assert (=> b!3866366 (= lt!1344322 (tail!5885 prefixTokens!80))))

(declare-datatypes ((Unit!58741 0))(
  ( (Unit!58742) )
))
(declare-fun e!2390885 () Unit!58741)

(declare-fun e!2390866 () Unit!58741)

(assert (=> b!3866366 (= e!2390885 e!2390866)))

(declare-fun b!3866367 () Bool)

(declare-fun e!2390870 () Bool)

(assert (=> b!3866367 (= e!2390870 false)))

(declare-fun b!3866368 () Bool)

(declare-fun res!1565810 () Bool)

(declare-fun e!2390879 () Bool)

(assert (=> b!3866368 (=> (not res!1565810) (not e!2390879))))

(declare-datatypes ((List!41161 0))(
  ( (Nil!41037) (Cons!41037 (h!46457 Rule!12516) (t!314036 List!41161)) )
))
(declare-fun rules!2768 () List!41161)

(declare-fun isEmpty!24329 (List!41161) Bool)

(assert (=> b!3866368 (= res!1565810 (not (isEmpty!24329 rules!2768)))))

(declare-fun b!3866369 () Bool)

(declare-fun e!2390856 () Unit!58741)

(declare-fun Unit!58743 () Unit!58741)

(assert (=> b!3866369 (= e!2390856 Unit!58743)))

(declare-fun b!3866370 () Bool)

(declare-fun e!2390859 () Unit!58741)

(declare-fun Unit!58744 () Unit!58741)

(assert (=> b!3866370 (= e!2390859 Unit!58744)))

(declare-fun b!3866371 () Bool)

(declare-fun e!2390860 () Bool)

(assert (=> b!3866371 (= e!2390879 e!2390860)))

(declare-fun res!1565815 () Bool)

(assert (=> b!3866371 (=> (not res!1565815) (not e!2390860))))

(declare-fun suffixResult!91 () List!41159)

(declare-datatypes ((tuple2!40250 0))(
  ( (tuple2!40251 (_1!23259 List!41160) (_2!23259 List!41159)) )
))
(declare-fun lt!1344317 () tuple2!40250)

(declare-fun lt!1344337 () List!41160)

(assert (=> b!3866371 (= res!1565815 (= lt!1344317 (tuple2!40251 lt!1344337 suffixResult!91)))))

(declare-datatypes ((LexerInterface!5947 0))(
  ( (LexerInterfaceExt!5944 (__x!25394 Int)) (Lexer!5945) )
))
(declare-fun thiss!20629 () LexerInterface!5947)

(declare-fun lt!1344320 () List!41159)

(declare-fun lexList!1715 (LexerInterface!5947 List!41161 List!41159) tuple2!40250)

(assert (=> b!3866371 (= lt!1344317 (lexList!1715 thiss!20629 rules!2768 lt!1344320))))

(declare-fun suffixTokens!72 () List!41160)

(declare-fun ++!10473 (List!41160 List!41160) List!41160)

(assert (=> b!3866371 (= lt!1344337 (++!10473 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!41159)

(declare-fun suffix!1176 () List!41159)

(declare-fun ++!10474 (List!41159 List!41159) List!41159)

(assert (=> b!3866371 (= lt!1344320 (++!10474 prefix!426 suffix!1176))))

(declare-fun b!3866373 () Bool)

(declare-fun e!2390875 () Bool)

(declare-datatypes ((tuple2!40252 0))(
  ( (tuple2!40253 (_1!23260 Token!11854) (_2!23260 List!41159)) )
))
(declare-datatypes ((Option!8776 0))(
  ( (None!8775) (Some!8775 (v!39073 tuple2!40252)) )
))
(declare-fun lt!1344318 () Option!8776)

(declare-fun size!30854 (List!41159) Int)

(assert (=> b!3866373 (= e!2390875 (= (size!30853 (_1!23260 (v!39073 lt!1344318))) (size!30854 (originalCharacters!6958 (_1!23260 (v!39073 lt!1344318))))))))

(declare-fun b!3866374 () Bool)

(declare-fun e!2390872 () Bool)

(declare-fun tp_is_empty!19497 () Bool)

(declare-fun tp!1172219 () Bool)

(assert (=> b!3866374 (= e!2390872 (and tp_is_empty!19497 tp!1172219))))

(declare-fun b!3866375 () Bool)

(declare-fun e!2390876 () Bool)

(declare-fun tp!1172222 () Bool)

(assert (=> b!3866375 (= e!2390876 (and tp_is_empty!19497 tp!1172222))))

(declare-fun e!2390855 () Bool)

(assert (=> b!3866376 (= e!2390855 (and tp!1172215 tp!1172213))))

(declare-fun b!3866377 () Bool)

(declare-fun res!1565813 () Bool)

(declare-fun e!2390857 () Bool)

(assert (=> b!3866377 (=> res!1565813 e!2390857)))

(declare-fun head!8168 (List!41160) Token!11854)

(assert (=> b!3866377 (= res!1565813 (not (= (head!8168 prefixTokens!80) (_1!23260 (v!39073 lt!1344318)))))))

(declare-fun tp!1172211 () Bool)

(declare-fun b!3866378 () Bool)

(declare-fun e!2390861 () Bool)

(declare-fun e!2390881 () Bool)

(declare-fun inv!55194 (String!46658) Bool)

(declare-fun inv!55197 (TokenValueInjection!12604) Bool)

(assert (=> b!3866378 (= e!2390861 (and tp!1172211 (inv!55194 (tag!7218 (rule!9238 (h!46456 suffixTokens!72)))) (inv!55197 (transformation!6358 (rule!9238 (h!46456 suffixTokens!72)))) e!2390881))))

(declare-fun b!3866379 () Bool)

(declare-fun res!1565823 () Bool)

(declare-fun e!2390863 () Bool)

(assert (=> b!3866379 (=> res!1565823 e!2390863)))

(declare-fun lt!1344331 () tuple2!40250)

(assert (=> b!3866379 (= res!1565823 (or (not (= lt!1344331 (tuple2!40251 (_1!23259 lt!1344331) (_2!23259 lt!1344331)))) (= (_2!23260 (v!39073 lt!1344318)) suffix!1176)))))

(declare-fun e!2390868 () Bool)

(assert (=> b!3866380 (= e!2390868 (and tp!1172225 tp!1172212))))

(declare-fun b!3866381 () Bool)

(declare-fun e!2390864 () Bool)

(assert (=> b!3866381 (= e!2390860 e!2390864)))

(declare-fun res!1565808 () Bool)

(assert (=> b!3866381 (=> (not res!1565808) (not e!2390864))))

(declare-fun lt!1344335 () tuple2!40250)

(assert (=> b!3866381 (= res!1565808 (= (lexList!1715 thiss!20629 rules!2768 suffix!1176) lt!1344335))))

(assert (=> b!3866381 (= lt!1344335 (tuple2!40251 suffixTokens!72 suffixResult!91))))

(declare-fun b!3866382 () Bool)

(declare-fun e!2390883 () Bool)

(declare-fun e!2390882 () Bool)

(declare-fun tp!1172220 () Bool)

(assert (=> b!3866382 (= e!2390883 (and e!2390882 tp!1172220))))

(declare-fun b!3866383 () Bool)

(declare-fun Unit!58745 () Unit!58741)

(assert (=> b!3866383 (= e!2390856 Unit!58745)))

(declare-fun lt!1344332 () Unit!58741)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2320 (List!41159 List!41159) Unit!58741)

(assert (=> b!3866383 (= lt!1344332 (lemmaConcatTwoListThenFirstIsPrefix!2320 prefix!426 suffix!1176))))

(declare-fun isPrefix!3457 (List!41159 List!41159) Bool)

(assert (=> b!3866383 (isPrefix!3457 prefix!426 lt!1344320)))

(declare-fun lt!1344336 () Unit!58741)

(declare-fun lt!1344312 () List!41159)

(declare-fun lemmaIsPrefixSameLengthThenSameList!709 (List!41159 List!41159 List!41159) Unit!58741)

(assert (=> b!3866383 (= lt!1344336 (lemmaIsPrefixSameLengthThenSameList!709 lt!1344312 prefix!426 lt!1344320))))

(assert (=> b!3866383 (= lt!1344312 prefix!426)))

(declare-fun lt!1344311 () Unit!58741)

(declare-fun lemmaSamePrefixThenSameSuffix!1678 (List!41159 List!41159 List!41159 List!41159 List!41159) Unit!58741)

(assert (=> b!3866383 (= lt!1344311 (lemmaSamePrefixThenSameSuffix!1678 lt!1344312 (_2!23260 (v!39073 lt!1344318)) prefix!426 suffix!1176 lt!1344320))))

(assert (=> b!3866383 false))

(declare-fun b!3866384 () Bool)

(declare-fun tp!1172226 () Bool)

(assert (=> b!3866384 (= e!2390882 (and tp!1172226 (inv!55194 (tag!7218 (h!46457 rules!2768))) (inv!55197 (transformation!6358 (h!46457 rules!2768))) e!2390868))))

(declare-fun b!3866385 () Bool)

(declare-fun res!1565820 () Bool)

(assert (=> b!3866385 (=> (not res!1565820) (not e!2390879))))

(assert (=> b!3866385 (= res!1565820 (not (isEmpty!24328 prefixTokens!80)))))

(declare-fun b!3866386 () Bool)

(declare-fun Unit!58746 () Unit!58741)

(assert (=> b!3866386 (= e!2390859 Unit!58746)))

(declare-fun lt!1344316 () Int)

(assert (=> b!3866386 (= lt!1344316 (size!30854 lt!1344320))))

(declare-fun lt!1344325 () Unit!58741)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1231 (LexerInterface!5947 List!41161 List!41159 List!41159 List!41159 Rule!12516) Unit!58741)

(assert (=> b!3866386 (= lt!1344325 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1231 thiss!20629 rules!2768 lt!1344312 lt!1344320 (_2!23260 (v!39073 lt!1344318)) (rule!9238 (_1!23260 (v!39073 lt!1344318)))))))

(declare-fun lt!1344324 () TokenValue!6588)

(declare-fun lt!1344328 () Int)

(declare-fun maxPrefixOneRule!2333 (LexerInterface!5947 Rule!12516 List!41159) Option!8776)

(assert (=> b!3866386 (= (maxPrefixOneRule!2333 thiss!20629 (rule!9238 (_1!23260 (v!39073 lt!1344318))) lt!1344320) (Some!8775 (tuple2!40253 (Token!11855 lt!1344324 (rule!9238 (_1!23260 (v!39073 lt!1344318))) lt!1344328 lt!1344312) (_2!23260 (v!39073 lt!1344318)))))))

(declare-fun lt!1344315 () tuple2!40252)

(declare-fun get!13577 (Option!8776) tuple2!40252)

(assert (=> b!3866386 (= lt!1344315 (get!13577 lt!1344318))))

(declare-fun c!672941 () Bool)

(declare-fun lt!1344333 () Int)

(assert (=> b!3866386 (= c!672941 (< (size!30854 (_2!23260 lt!1344315)) lt!1344333))))

(declare-fun lt!1344308 () Unit!58741)

(assert (=> b!3866386 (= lt!1344308 e!2390885)))

(assert (=> b!3866386 false))

(declare-fun b!3866387 () Bool)

(declare-fun Unit!58747 () Unit!58741)

(assert (=> b!3866387 (= e!2390885 Unit!58747)))

(declare-fun b!3866388 () Bool)

(declare-fun res!1565814 () Bool)

(assert (=> b!3866388 (=> (not res!1565814) (not e!2390879))))

(declare-fun isEmpty!24330 (List!41159) Bool)

(assert (=> b!3866388 (= res!1565814 (not (isEmpty!24330 prefix!426)))))

(declare-fun e!2390878 () Bool)

(declare-fun tp!1172210 () Bool)

(declare-fun b!3866389 () Bool)

(declare-fun e!2390871 () Bool)

(declare-fun inv!55198 (Token!11854) Bool)

(assert (=> b!3866389 (= e!2390871 (and (inv!55198 (h!46456 prefixTokens!80)) e!2390878 tp!1172210))))

(declare-fun e!2390865 () Bool)

(declare-fun tp!1172221 () Bool)

(declare-fun b!3866372 () Bool)

(declare-fun inv!21 (TokenValue!6588) Bool)

(assert (=> b!3866372 (= e!2390878 (and (inv!21 (value!201837 (h!46456 prefixTokens!80))) e!2390865 tp!1172221))))

(declare-fun res!1565816 () Bool)

(assert (=> start!362748 (=> (not res!1565816) (not e!2390879))))

(get-info :version)

(assert (=> start!362748 (= res!1565816 ((_ is Lexer!5945) thiss!20629))))

(assert (=> start!362748 e!2390879))

(assert (=> start!362748 e!2390872))

(assert (=> start!362748 true))

(declare-fun e!2390874 () Bool)

(assert (=> start!362748 e!2390874))

(assert (=> start!362748 e!2390883))

(assert (=> start!362748 e!2390871))

(declare-fun e!2390854 () Bool)

(assert (=> start!362748 e!2390854))

(assert (=> start!362748 e!2390876))

(declare-fun b!3866390 () Bool)

(declare-fun e!2390867 () Bool)

(assert (=> b!3866390 (= e!2390867 (not e!2390863))))

(declare-fun res!1565807 () Bool)

(assert (=> b!3866390 (=> res!1565807 e!2390863)))

(declare-fun lt!1344326 () List!41159)

(assert (=> b!3866390 (= res!1565807 (not (= lt!1344326 lt!1344320)))))

(assert (=> b!3866390 (= lt!1344331 (lexList!1715 thiss!20629 rules!2768 (_2!23260 (v!39073 lt!1344318))))))

(declare-fun lt!1344334 () List!41159)

(assert (=> b!3866390 (and (= (size!30853 (_1!23260 (v!39073 lt!1344318))) lt!1344328) (= (originalCharacters!6958 (_1!23260 (v!39073 lt!1344318))) lt!1344312) (= (v!39073 lt!1344318) (tuple2!40253 (Token!11855 lt!1344324 (rule!9238 (_1!23260 (v!39073 lt!1344318))) lt!1344328 lt!1344312) lt!1344334)))))

(assert (=> b!3866390 (= lt!1344328 (size!30854 lt!1344312))))

(assert (=> b!3866390 e!2390875))

(declare-fun res!1565812 () Bool)

(assert (=> b!3866390 (=> (not res!1565812) (not e!2390875))))

(assert (=> b!3866390 (= res!1565812 (= (value!201837 (_1!23260 (v!39073 lt!1344318))) lt!1344324))))

(declare-fun apply!9601 (TokenValueInjection!12604 BalanceConc!24732) TokenValue!6588)

(declare-fun seqFromList!4629 (List!41159) BalanceConc!24732)

(assert (=> b!3866390 (= lt!1344324 (apply!9601 (transformation!6358 (rule!9238 (_1!23260 (v!39073 lt!1344318)))) (seqFromList!4629 lt!1344312)))))

(assert (=> b!3866390 (= (_2!23260 (v!39073 lt!1344318)) lt!1344334)))

(declare-fun lt!1344313 () Unit!58741)

(assert (=> b!3866390 (= lt!1344313 (lemmaSamePrefixThenSameSuffix!1678 lt!1344312 (_2!23260 (v!39073 lt!1344318)) lt!1344312 lt!1344334 lt!1344320))))

(declare-fun getSuffix!1912 (List!41159 List!41159) List!41159)

(assert (=> b!3866390 (= lt!1344334 (getSuffix!1912 lt!1344320 lt!1344312))))

(assert (=> b!3866390 (isPrefix!3457 lt!1344312 lt!1344326)))

(assert (=> b!3866390 (= lt!1344326 (++!10474 lt!1344312 (_2!23260 (v!39073 lt!1344318))))))

(declare-fun lt!1344327 () Unit!58741)

(assert (=> b!3866390 (= lt!1344327 (lemmaConcatTwoListThenFirstIsPrefix!2320 lt!1344312 (_2!23260 (v!39073 lt!1344318))))))

(declare-fun list!15270 (BalanceConc!24732) List!41159)

(declare-fun charsOf!4186 (Token!11854) BalanceConc!24732)

(assert (=> b!3866390 (= lt!1344312 (list!15270 (charsOf!4186 (_1!23260 (v!39073 lt!1344318)))))))

(declare-fun ruleValid!2310 (LexerInterface!5947 Rule!12516) Bool)

(assert (=> b!3866390 (ruleValid!2310 thiss!20629 (rule!9238 (_1!23260 (v!39073 lt!1344318))))))

(declare-fun lt!1344323 () Unit!58741)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1390 (LexerInterface!5947 Rule!12516 List!41161) Unit!58741)

(assert (=> b!3866390 (= lt!1344323 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1390 thiss!20629 (rule!9238 (_1!23260 (v!39073 lt!1344318))) rules!2768))))

(declare-fun lt!1344319 () Unit!58741)

(declare-fun lemmaCharactersSize!1019 (Token!11854) Unit!58741)

(assert (=> b!3866390 (= lt!1344319 (lemmaCharactersSize!1019 (_1!23260 (v!39073 lt!1344318))))))

(declare-fun b!3866391 () Bool)

(declare-fun Unit!58748 () Unit!58741)

(assert (=> b!3866391 (= e!2390866 Unit!58748)))

(declare-fun lt!1344321 () Unit!58741)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!18 (LexerInterface!5947 List!41161 List!41159 List!41159 List!41160 List!41159 List!41160) Unit!58741)

(assert (=> b!3866391 (= lt!1344321 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!18 thiss!20629 rules!2768 suffix!1176 (_2!23260 lt!1344315) suffixTokens!72 suffixResult!91 lt!1344322))))

(declare-fun call!282648 () tuple2!40250)

(declare-fun res!1565818 () Bool)

(assert (=> b!3866391 (= res!1565818 (not (= call!282648 (tuple2!40251 (++!10473 lt!1344322 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3866391 (=> (not res!1565818) (not e!2390870))))

(assert (=> b!3866391 e!2390870))

(declare-fun b!3866392 () Bool)

(assert (=> b!3866392 (= e!2390864 e!2390867)))

(declare-fun res!1565819 () Bool)

(assert (=> b!3866392 (=> (not res!1565819) (not e!2390867))))

(assert (=> b!3866392 (= res!1565819 ((_ is Some!8775) lt!1344318))))

(declare-fun maxPrefix!3251 (LexerInterface!5947 List!41161 List!41159) Option!8776)

(assert (=> b!3866392 (= lt!1344318 (maxPrefix!3251 thiss!20629 rules!2768 lt!1344320))))

(declare-fun b!3866393 () Bool)

(assert (=> b!3866393 (= e!2390863 e!2390857)))

(declare-fun res!1565822 () Bool)

(assert (=> b!3866393 (=> res!1565822 e!2390857)))

(declare-fun lt!1344314 () Int)

(assert (=> b!3866393 (= res!1565822 (<= lt!1344314 lt!1344333))))

(declare-fun lt!1344309 () Unit!58741)

(assert (=> b!3866393 (= lt!1344309 e!2390856)))

(declare-fun c!672942 () Bool)

(assert (=> b!3866393 (= c!672942 (= lt!1344314 lt!1344333))))

(declare-fun lt!1344310 () Unit!58741)

(assert (=> b!3866393 (= lt!1344310 e!2390859)))

(declare-fun c!672940 () Bool)

(assert (=> b!3866393 (= c!672940 (< lt!1344314 lt!1344333))))

(assert (=> b!3866393 (= lt!1344333 (size!30854 suffix!1176))))

(assert (=> b!3866393 (= lt!1344314 (size!30854 (_2!23260 (v!39073 lt!1344318))))))

(declare-fun b!3866394 () Bool)

(declare-fun e!2390886 () Bool)

(assert (=> b!3866394 (= e!2390886 true)))

(declare-fun lt!1344306 () Int)

(assert (=> b!3866394 (= lt!1344306 (size!30854 prefix!426))))

(declare-fun b!3866395 () Bool)

(declare-fun tp!1172224 () Bool)

(assert (=> b!3866395 (= e!2390874 (and tp_is_empty!19497 tp!1172224))))

(declare-fun e!2390877 () Bool)

(declare-fun tp!1172223 () Bool)

(declare-fun b!3866396 () Bool)

(assert (=> b!3866396 (= e!2390854 (and (inv!55198 (h!46456 suffixTokens!72)) e!2390877 tp!1172223))))

(declare-fun bm!282643 () Bool)

(assert (=> bm!282643 (= call!282648 (lexList!1715 thiss!20629 rules!2768 (_2!23260 lt!1344315)))))

(declare-fun b!3866397 () Bool)

(declare-fun res!1565821 () Bool)

(assert (=> b!3866397 (=> res!1565821 e!2390863)))

(assert (=> b!3866397 (= res!1565821 (not (= lt!1344317 (tuple2!40251 (++!10473 (Cons!41036 (_1!23260 (v!39073 lt!1344318)) Nil!41036) (_1!23259 lt!1344331)) (_2!23259 lt!1344331)))))))

(declare-fun b!3866398 () Bool)

(declare-fun res!1565811 () Bool)

(assert (=> b!3866398 (=> (not res!1565811) (not e!2390879))))

(declare-fun rulesInvariant!5290 (LexerInterface!5947 List!41161) Bool)

(assert (=> b!3866398 (= res!1565811 (rulesInvariant!5290 thiss!20629 rules!2768))))

(declare-fun b!3866399 () Bool)

(declare-fun e!2390858 () Bool)

(assert (=> b!3866399 (= e!2390858 false)))

(declare-fun b!3866400 () Bool)

(declare-fun Unit!58749 () Unit!58741)

(assert (=> b!3866400 (= e!2390866 Unit!58749)))

(declare-fun lt!1344307 () Unit!58741)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!442 (List!41159 List!41159 List!41159 List!41159) Unit!58741)

(assert (=> b!3866400 (= lt!1344307 (lemmaConcatSameAndSameSizesThenSameLists!442 lt!1344312 (_2!23260 (v!39073 lt!1344318)) lt!1344312 (_2!23260 lt!1344315)))))

(assert (=> b!3866400 (= (_2!23260 (v!39073 lt!1344318)) (_2!23260 lt!1344315))))

(declare-fun lt!1344330 () Unit!58741)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!18 (LexerInterface!5947 List!41161 List!41159 List!41159 List!41160 List!41159) Unit!58741)

(assert (=> b!3866400 (= lt!1344330 (lemmaLexWithSmallerInputCannotProduceSameResults!18 thiss!20629 rules!2768 suffix!1176 (_2!23260 lt!1344315) suffixTokens!72 suffixResult!91))))

(declare-fun res!1565809 () Bool)

(assert (=> b!3866400 (= res!1565809 (not (= call!282648 lt!1344335)))))

(assert (=> b!3866400 (=> (not res!1565809) (not e!2390858))))

(assert (=> b!3866400 e!2390858))

(assert (=> b!3866401 (= e!2390881 (and tp!1172217 tp!1172218))))

(declare-fun b!3866402 () Bool)

(assert (=> b!3866402 (= e!2390857 e!2390886)))

(declare-fun res!1565817 () Bool)

(assert (=> b!3866402 (=> res!1565817 e!2390886)))

(assert (=> b!3866402 (= res!1565817 (not (isPrefix!3457 lt!1344312 lt!1344320)))))

(assert (=> b!3866402 (isPrefix!3457 prefix!426 lt!1344320)))

(declare-fun lt!1344329 () Unit!58741)

(assert (=> b!3866402 (= lt!1344329 (lemmaConcatTwoListThenFirstIsPrefix!2320 prefix!426 suffix!1176))))

(declare-fun tp!1172216 () Bool)

(declare-fun b!3866403 () Bool)

(assert (=> b!3866403 (= e!2390865 (and tp!1172216 (inv!55194 (tag!7218 (rule!9238 (h!46456 prefixTokens!80)))) (inv!55197 (transformation!6358 (rule!9238 (h!46456 prefixTokens!80)))) e!2390855))))

(declare-fun tp!1172214 () Bool)

(declare-fun b!3866404 () Bool)

(assert (=> b!3866404 (= e!2390877 (and (inv!21 (value!201837 (h!46456 suffixTokens!72))) e!2390861 tp!1172214))))

(assert (= (and start!362748 res!1565816) b!3866368))

(assert (= (and b!3866368 res!1565810) b!3866398))

(assert (= (and b!3866398 res!1565811) b!3866385))

(assert (= (and b!3866385 res!1565820) b!3866388))

(assert (= (and b!3866388 res!1565814) b!3866371))

(assert (= (and b!3866371 res!1565815) b!3866381))

(assert (= (and b!3866381 res!1565808) b!3866392))

(assert (= (and b!3866392 res!1565819) b!3866390))

(assert (= (and b!3866390 res!1565812) b!3866373))

(assert (= (and b!3866390 (not res!1565807)) b!3866397))

(assert (= (and b!3866397 (not res!1565821)) b!3866379))

(assert (= (and b!3866379 (not res!1565823)) b!3866393))

(assert (= (and b!3866393 c!672940) b!3866386))

(assert (= (and b!3866393 (not c!672940)) b!3866370))

(assert (= (and b!3866386 c!672941) b!3866366))

(assert (= (and b!3866386 (not c!672941)) b!3866387))

(assert (= (and b!3866366 c!672943) b!3866400))

(assert (= (and b!3866366 (not c!672943)) b!3866391))

(assert (= (and b!3866400 res!1565809) b!3866399))

(assert (= (and b!3866391 res!1565818) b!3866367))

(assert (= (or b!3866400 b!3866391) bm!282643))

(assert (= (and b!3866393 c!672942) b!3866383))

(assert (= (and b!3866393 (not c!672942)) b!3866369))

(assert (= (and b!3866393 (not res!1565822)) b!3866377))

(assert (= (and b!3866377 (not res!1565813)) b!3866402))

(assert (= (and b!3866402 (not res!1565817)) b!3866394))

(assert (= (and start!362748 ((_ is Cons!41035) suffixResult!91)) b!3866374))

(assert (= (and start!362748 ((_ is Cons!41035) suffix!1176)) b!3866395))

(assert (= b!3866384 b!3866380))

(assert (= b!3866382 b!3866384))

(assert (= (and start!362748 ((_ is Cons!41037) rules!2768)) b!3866382))

(assert (= b!3866403 b!3866376))

(assert (= b!3866372 b!3866403))

(assert (= b!3866389 b!3866372))

(assert (= (and start!362748 ((_ is Cons!41036) prefixTokens!80)) b!3866389))

(assert (= b!3866378 b!3866401))

(assert (= b!3866404 b!3866378))

(assert (= b!3866396 b!3866404))

(assert (= (and start!362748 ((_ is Cons!41036) suffixTokens!72)) b!3866396))

(assert (= (and start!362748 ((_ is Cons!41035) prefix!426)) b!3866375))

(declare-fun m!4421941 () Bool)

(assert (=> b!3866371 m!4421941))

(declare-fun m!4421943 () Bool)

(assert (=> b!3866371 m!4421943))

(declare-fun m!4421945 () Bool)

(assert (=> b!3866371 m!4421945))

(declare-fun m!4421947 () Bool)

(assert (=> b!3866391 m!4421947))

(declare-fun m!4421949 () Bool)

(assert (=> b!3866391 m!4421949))

(declare-fun m!4421951 () Bool)

(assert (=> b!3866385 m!4421951))

(declare-fun m!4421953 () Bool)

(assert (=> b!3866383 m!4421953))

(declare-fun m!4421955 () Bool)

(assert (=> b!3866383 m!4421955))

(declare-fun m!4421957 () Bool)

(assert (=> b!3866383 m!4421957))

(declare-fun m!4421959 () Bool)

(assert (=> b!3866383 m!4421959))

(declare-fun m!4421961 () Bool)

(assert (=> b!3866389 m!4421961))

(declare-fun m!4421963 () Bool)

(assert (=> b!3866388 m!4421963))

(declare-fun m!4421965 () Bool)

(assert (=> b!3866398 m!4421965))

(declare-fun m!4421967 () Bool)

(assert (=> b!3866372 m!4421967))

(declare-fun m!4421969 () Bool)

(assert (=> b!3866396 m!4421969))

(declare-fun m!4421971 () Bool)

(assert (=> b!3866377 m!4421971))

(declare-fun m!4421973 () Bool)

(assert (=> b!3866368 m!4421973))

(declare-fun m!4421975 () Bool)

(assert (=> b!3866393 m!4421975))

(declare-fun m!4421977 () Bool)

(assert (=> b!3866393 m!4421977))

(declare-fun m!4421979 () Bool)

(assert (=> b!3866386 m!4421979))

(declare-fun m!4421981 () Bool)

(assert (=> b!3866386 m!4421981))

(declare-fun m!4421983 () Bool)

(assert (=> b!3866386 m!4421983))

(declare-fun m!4421985 () Bool)

(assert (=> b!3866386 m!4421985))

(declare-fun m!4421987 () Bool)

(assert (=> b!3866386 m!4421987))

(declare-fun m!4421989 () Bool)

(assert (=> b!3866378 m!4421989))

(declare-fun m!4421991 () Bool)

(assert (=> b!3866378 m!4421991))

(declare-fun m!4421993 () Bool)

(assert (=> b!3866390 m!4421993))

(declare-fun m!4421995 () Bool)

(assert (=> b!3866390 m!4421995))

(declare-fun m!4421997 () Bool)

(assert (=> b!3866390 m!4421997))

(declare-fun m!4421999 () Bool)

(assert (=> b!3866390 m!4421999))

(declare-fun m!4422001 () Bool)

(assert (=> b!3866390 m!4422001))

(declare-fun m!4422003 () Bool)

(assert (=> b!3866390 m!4422003))

(declare-fun m!4422005 () Bool)

(assert (=> b!3866390 m!4422005))

(declare-fun m!4422007 () Bool)

(assert (=> b!3866390 m!4422007))

(declare-fun m!4422009 () Bool)

(assert (=> b!3866390 m!4422009))

(assert (=> b!3866390 m!4422001))

(declare-fun m!4422011 () Bool)

(assert (=> b!3866390 m!4422011))

(declare-fun m!4422013 () Bool)

(assert (=> b!3866390 m!4422013))

(declare-fun m!4422015 () Bool)

(assert (=> b!3866390 m!4422015))

(assert (=> b!3866390 m!4421995))

(declare-fun m!4422017 () Bool)

(assert (=> b!3866390 m!4422017))

(declare-fun m!4422019 () Bool)

(assert (=> b!3866390 m!4422019))

(declare-fun m!4422021 () Bool)

(assert (=> b!3866397 m!4422021))

(declare-fun m!4422023 () Bool)

(assert (=> b!3866394 m!4422023))

(declare-fun m!4422025 () Bool)

(assert (=> b!3866400 m!4422025))

(declare-fun m!4422027 () Bool)

(assert (=> b!3866400 m!4422027))

(declare-fun m!4422029 () Bool)

(assert (=> b!3866381 m!4422029))

(declare-fun m!4422031 () Bool)

(assert (=> b!3866392 m!4422031))

(declare-fun m!4422033 () Bool)

(assert (=> b!3866373 m!4422033))

(declare-fun m!4422035 () Bool)

(assert (=> bm!282643 m!4422035))

(declare-fun m!4422037 () Bool)

(assert (=> b!3866402 m!4422037))

(assert (=> b!3866402 m!4421955))

(assert (=> b!3866402 m!4421953))

(declare-fun m!4422039 () Bool)

(assert (=> b!3866404 m!4422039))

(declare-fun m!4422041 () Bool)

(assert (=> b!3866403 m!4422041))

(declare-fun m!4422043 () Bool)

(assert (=> b!3866403 m!4422043))

(declare-fun m!4422045 () Bool)

(assert (=> b!3866384 m!4422045))

(declare-fun m!4422047 () Bool)

(assert (=> b!3866384 m!4422047))

(declare-fun m!4422049 () Bool)

(assert (=> b!3866366 m!4422049))

(declare-fun m!4422051 () Bool)

(assert (=> b!3866366 m!4422051))

(check-sat (not b!3866386) (not b!3866372) (not b!3866392) (not b!3866375) (not b!3866384) (not b!3866373) (not b!3866393) (not b!3866396) (not b!3866389) (not b!3866382) (not b_next!104911) b_and!289665 (not b!3866404) tp_is_empty!19497 (not b_next!104901) (not b!3866390) (not b!3866366) (not b!3866394) b_and!289669 (not b!3866403) (not b!3866391) (not b!3866374) (not b_next!104903) b_and!289667 (not b!3866385) (not b!3866397) (not b!3866381) (not b!3866398) b_and!289663 b_and!289661 (not b_next!104905) (not b!3866383) (not b!3866378) b_and!289659 (not bm!282643) (not b!3866400) (not b_next!104907) (not b!3866402) (not b!3866377) (not b!3866388) (not b!3866395) (not b!3866371) (not b_next!104909) (not b!3866368))
(check-sat (not b_next!104901) b_and!289669 b_and!289659 (not b_next!104907) (not b_next!104909) (not b_next!104911) b_and!289665 (not b_next!104903) b_and!289667 b_and!289663 b_and!289661 (not b_next!104905))
