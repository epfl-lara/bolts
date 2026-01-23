; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22522 () Bool)

(assert start!22522)

(declare-fun b!209734 () Bool)

(declare-fun b_free!8121 () Bool)

(declare-fun b_next!8121 () Bool)

(assert (=> b!209734 (= b_free!8121 (not b_next!8121))))

(declare-fun tp!91343 () Bool)

(declare-fun b_and!15153 () Bool)

(assert (=> b!209734 (= tp!91343 b_and!15153)))

(declare-fun b_free!8123 () Bool)

(declare-fun b_next!8123 () Bool)

(assert (=> b!209734 (= b_free!8123 (not b_next!8123))))

(declare-fun tp!91342 () Bool)

(declare-fun b_and!15155 () Bool)

(assert (=> b!209734 (= tp!91342 b_and!15155)))

(declare-fun b!209740 () Bool)

(declare-fun b_free!8125 () Bool)

(declare-fun b_next!8125 () Bool)

(assert (=> b!209740 (= b_free!8125 (not b_next!8125))))

(declare-fun tp!91350 () Bool)

(declare-fun b_and!15157 () Bool)

(assert (=> b!209740 (= tp!91350 b_and!15157)))

(declare-fun b_free!8127 () Bool)

(declare-fun b_next!8127 () Bool)

(assert (=> b!209740 (= b_free!8127 (not b_next!8127))))

(declare-fun tp!91352 () Bool)

(declare-fun b_and!15159 () Bool)

(assert (=> b!209740 (= tp!91352 b_and!15159)))

(declare-fun b!209771 () Bool)

(declare-fun b_free!8129 () Bool)

(declare-fun b_next!8129 () Bool)

(assert (=> b!209771 (= b_free!8129 (not b_next!8129))))

(declare-fun tp!91345 () Bool)

(declare-fun b_and!15161 () Bool)

(assert (=> b!209771 (= tp!91345 b_and!15161)))

(declare-fun b_free!8131 () Bool)

(declare-fun b_next!8131 () Bool)

(assert (=> b!209771 (= b_free!8131 (not b_next!8131))))

(declare-fun tp!91341 () Bool)

(declare-fun b_and!15163 () Bool)

(assert (=> b!209771 (= tp!91341 b_and!15163)))

(declare-fun bs!21208 () Bool)

(declare-fun b!209762 () Bool)

(declare-fun b!209748 () Bool)

(assert (= bs!21208 (and b!209762 b!209748)))

(declare-fun lambda!6480 () Int)

(declare-fun lambda!6479 () Int)

(assert (=> bs!21208 (not (= lambda!6480 lambda!6479))))

(declare-fun b!209784 () Bool)

(declare-fun e!129405 () Bool)

(assert (=> b!209784 (= e!129405 true)))

(declare-fun b!209783 () Bool)

(declare-fun e!129404 () Bool)

(assert (=> b!209783 (= e!129404 e!129405)))

(declare-fun b!209782 () Bool)

(declare-fun e!129403 () Bool)

(assert (=> b!209782 (= e!129403 e!129404)))

(assert (=> b!209762 e!129403))

(assert (= b!209783 b!209784))

(assert (= b!209782 b!209783))

(declare-datatypes ((C!2612 0))(
  ( (C!2613 (val!1192 Int)) )
))
(declare-datatypes ((List!3351 0))(
  ( (Nil!3341) (Cons!3341 (h!8738 (_ BitVec 16)) (t!31213 List!3351)) )
))
(declare-datatypes ((TokenValue!643 0))(
  ( (FloatLiteralValue!1286 (text!4946 List!3351)) (TokenValueExt!642 (__x!2773 Int)) (Broken!3215 (value!21988 List!3351)) (Object!652) (End!643) (Def!643) (Underscore!643) (Match!643) (Else!643) (Error!643) (Case!643) (If!643) (Extends!643) (Abstract!643) (Class!643) (Val!643) (DelimiterValue!1286 (del!703 List!3351)) (KeywordValue!649 (value!21989 List!3351)) (CommentValue!1286 (value!21990 List!3351)) (WhitespaceValue!1286 (value!21991 List!3351)) (IndentationValue!643 (value!21992 List!3351)) (String!4294) (Int32!643) (Broken!3216 (value!21993 List!3351)) (Boolean!644) (Unit!3479) (OperatorValue!646 (op!703 List!3351)) (IdentifierValue!1286 (value!21994 List!3351)) (IdentifierValue!1287 (value!21995 List!3351)) (WhitespaceValue!1287 (value!21996 List!3351)) (True!1286) (False!1286) (Broken!3217 (value!21997 List!3351)) (Broken!3218 (value!21998 List!3351)) (True!1287) (RightBrace!643) (RightBracket!643) (Colon!643) (Null!643) (Comma!643) (LeftBracket!643) (False!1287) (LeftBrace!643) (ImaginaryLiteralValue!643 (text!4947 List!3351)) (StringLiteralValue!1929 (value!21999 List!3351)) (EOFValue!643 (value!22000 List!3351)) (IdentValue!643 (value!22001 List!3351)) (DelimiterValue!1287 (value!22002 List!3351)) (DedentValue!643 (value!22003 List!3351)) (NewLineValue!643 (value!22004 List!3351)) (IntegerValue!1929 (value!22005 (_ BitVec 32)) (text!4948 List!3351)) (IntegerValue!1930 (value!22006 Int) (text!4949 List!3351)) (Times!643) (Or!643) (Equal!643) (Minus!643) (Broken!3219 (value!22007 List!3351)) (And!643) (Div!643) (LessEqual!643) (Mod!643) (Concat!1488) (Not!643) (Plus!643) (SpaceValue!643 (value!22008 List!3351)) (IntegerValue!1931 (value!22009 Int) (text!4950 List!3351)) (StringLiteralValue!1930 (text!4951 List!3351)) (FloatLiteralValue!1287 (text!4952 List!3351)) (BytesLiteralValue!643 (value!22010 List!3351)) (CommentValue!1287 (value!22011 List!3351)) (StringLiteralValue!1931 (value!22012 List!3351)) (ErrorTokenValue!643 (msg!704 List!3351)) )
))
(declare-datatypes ((List!3352 0))(
  ( (Nil!3342) (Cons!3342 (h!8739 C!2612) (t!31214 List!3352)) )
))
(declare-datatypes ((IArray!2129 0))(
  ( (IArray!2130 (innerList!1122 List!3352)) )
))
(declare-datatypes ((Conc!1064 0))(
  ( (Node!1064 (left!2673 Conc!1064) (right!3003 Conc!1064) (csize!2358 Int) (cheight!1275 Int)) (Leaf!1714 (xs!3659 IArray!2129) (csize!2359 Int)) (Empty!1064) )
))
(declare-datatypes ((BalanceConc!2136 0))(
  ( (BalanceConc!2137 (c!39981 Conc!1064)) )
))
(declare-datatypes ((TokenValueInjection!1058 0))(
  ( (TokenValueInjection!1059 (toValue!1304 Int) (toChars!1163 Int)) )
))
(declare-datatypes ((Regex!845 0))(
  ( (ElementMatch!845 (c!39982 C!2612)) (Concat!1489 (regOne!2202 Regex!845) (regTwo!2202 Regex!845)) (EmptyExpr!845) (Star!845 (reg!1174 Regex!845)) (EmptyLang!845) (Union!845 (regOne!2203 Regex!845) (regTwo!2203 Regex!845)) )
))
(declare-datatypes ((String!4295 0))(
  ( (String!4296 (value!22013 String)) )
))
(declare-datatypes ((Rule!1042 0))(
  ( (Rule!1043 (regex!621 Regex!845) (tag!811 String!4295) (isSeparator!621 Bool) (transformation!621 TokenValueInjection!1058)) )
))
(declare-datatypes ((List!3353 0))(
  ( (Nil!3343) (Cons!3343 (h!8740 Rule!1042) (t!31215 List!3353)) )
))
(declare-fun rules!1920 () List!3353)

(get-info :version)

(assert (= (and b!209762 ((_ is Cons!3343) rules!1920)) b!209782))

(declare-fun order!2225 () Int)

(declare-fun order!2227 () Int)

(declare-fun dynLambda!1495 (Int Int) Int)

(declare-fun dynLambda!1496 (Int Int) Int)

(assert (=> b!209784 (< (dynLambda!1495 order!2225 (toValue!1304 (transformation!621 (h!8740 rules!1920)))) (dynLambda!1496 order!2227 lambda!6480))))

(declare-fun order!2229 () Int)

(declare-fun dynLambda!1497 (Int Int) Int)

(assert (=> b!209784 (< (dynLambda!1497 order!2229 (toChars!1163 (transformation!621 (h!8740 rules!1920)))) (dynLambda!1496 order!2227 lambda!6480))))

(assert (=> b!209762 true))

(declare-fun b!209726 () Bool)

(declare-fun e!129360 () Bool)

(declare-fun e!129374 () Bool)

(assert (=> b!209726 (= e!129360 e!129374)))

(declare-fun res!96549 () Bool)

(assert (=> b!209726 (=> (not res!96549) (not e!129374))))

(declare-fun lt!77199 () Rule!1042)

(declare-fun lt!77190 () List!3352)

(declare-fun matchR!183 (Regex!845 List!3352) Bool)

(assert (=> b!209726 (= res!96549 (matchR!183 (regex!621 lt!77199) lt!77190))))

(declare-datatypes ((Option!555 0))(
  ( (None!554) (Some!554 (v!14121 Rule!1042)) )
))
(declare-fun lt!77209 () Option!555)

(declare-fun get!1019 (Option!555) Rule!1042)

(assert (=> b!209726 (= lt!77199 (get!1019 lt!77209))))

(declare-fun b!209727 () Bool)

(declare-fun e!129385 () Bool)

(declare-datatypes ((Token!986 0))(
  ( (Token!987 (value!22014 TokenValue!643) (rule!1150 Rule!1042) (size!2672 Int) (originalCharacters!664 List!3352)) )
))
(declare-datatypes ((tuple2!3518 0))(
  ( (tuple2!3519 (_1!1975 Token!986) (_2!1975 List!3352)) )
))
(declare-datatypes ((Option!556 0))(
  ( (None!555) (Some!555 (v!14122 tuple2!3518)) )
))
(declare-fun lt!77181 () Option!556)

(declare-datatypes ((List!3354 0))(
  ( (Nil!3344) (Cons!3344 (h!8741 Token!986) (t!31216 List!3354)) )
))
(declare-fun tokens!465 () List!3354)

(declare-fun get!1020 (Option!556) tuple2!3518)

(declare-fun head!737 (List!3354) Token!986)

(assert (=> b!209727 (= e!129385 (= (_1!1975 (get!1020 lt!77181)) (head!737 tokens!465)))))

(declare-fun b!209728 () Bool)

(declare-fun e!129383 () Bool)

(declare-fun separatorToken!170 () Token!986)

(declare-fun lt!77215 () Rule!1042)

(assert (=> b!209728 (= e!129383 (= (rule!1150 separatorToken!170) lt!77215))))

(declare-fun b!209729 () Bool)

(declare-fun e!129384 () Bool)

(declare-fun e!129396 () Bool)

(assert (=> b!209729 (= e!129384 (not e!129396))))

(declare-fun res!96560 () Bool)

(assert (=> b!209729 (=> res!96560 e!129396)))

(declare-fun lt!77203 () List!3352)

(declare-fun lt!77185 () BalanceConc!2136)

(declare-fun list!1248 (BalanceConc!2136) List!3352)

(assert (=> b!209729 (= res!96560 (not (= lt!77203 (list!1248 lt!77185))))))

(declare-datatypes ((IArray!2131 0))(
  ( (IArray!2132 (innerList!1123 List!3354)) )
))
(declare-datatypes ((Conc!1065 0))(
  ( (Node!1065 (left!2674 Conc!1065) (right!3004 Conc!1065) (csize!2360 Int) (cheight!1276 Int)) (Leaf!1715 (xs!3660 IArray!2131) (csize!2361 Int)) (Empty!1065) )
))
(declare-datatypes ((BalanceConc!2138 0))(
  ( (BalanceConc!2139 (c!39983 Conc!1065)) )
))
(declare-fun lt!77217 () BalanceConc!2138)

(declare-datatypes ((LexerInterface!507 0))(
  ( (LexerInterfaceExt!504 (__x!2774 Int)) (Lexer!505) )
))
(declare-fun thiss!17480 () LexerInterface!507)

(declare-fun printWithSeparatorTokenWhenNeededRec!190 (LexerInterface!507 List!3353 BalanceConc!2138 Token!986 Int) BalanceConc!2136)

(assert (=> b!209729 (= lt!77185 (printWithSeparatorTokenWhenNeededRec!190 thiss!17480 rules!1920 lt!77217 separatorToken!170 0))))

(declare-fun seqFromList!619 (List!3354) BalanceConc!2138)

(assert (=> b!209729 (= lt!77217 (seqFromList!619 (t!31216 tokens!465)))))

(declare-fun lt!77198 () List!3352)

(declare-fun lt!77183 () List!3352)

(assert (=> b!209729 (= lt!77198 lt!77183)))

(declare-fun lt!77226 () List!3352)

(declare-fun lt!77188 () List!3352)

(declare-fun ++!820 (List!3352 List!3352) List!3352)

(assert (=> b!209729 (= lt!77183 (++!820 lt!77226 lt!77188))))

(declare-fun lt!77216 () List!3352)

(assert (=> b!209729 (= lt!77198 (++!820 (++!820 lt!77226 lt!77216) lt!77203))))

(declare-datatypes ((Unit!3480 0))(
  ( (Unit!3481) )
))
(declare-fun lt!77229 () Unit!3480)

(declare-fun lemmaConcatAssociativity!316 (List!3352 List!3352 List!3352) Unit!3480)

(assert (=> b!209729 (= lt!77229 (lemmaConcatAssociativity!316 lt!77226 lt!77216 lt!77203))))

(declare-fun charsOf!276 (Token!986) BalanceConc!2136)

(assert (=> b!209729 (= lt!77226 (list!1248 (charsOf!276 (h!8741 tokens!465))))))

(assert (=> b!209729 (= lt!77188 (++!820 lt!77216 lt!77203))))

(declare-fun printWithSeparatorTokenWhenNeededList!200 (LexerInterface!507 List!3353 List!3354 Token!986) List!3352)

(assert (=> b!209729 (= lt!77203 (printWithSeparatorTokenWhenNeededList!200 thiss!17480 rules!1920 (t!31216 tokens!465) separatorToken!170))))

(assert (=> b!209729 (= lt!77216 (list!1248 (charsOf!276 separatorToken!170)))))

(declare-fun b!209730 () Bool)

(declare-fun e!129391 () Bool)

(assert (=> b!209730 (= e!129391 true)))

(declare-fun lt!77228 () Int)

(declare-fun size!2673 (BalanceConc!2138) Int)

(assert (=> b!209730 (= lt!77228 (size!2673 lt!77217))))

(declare-fun filter!15 (List!3354 Int) List!3354)

(declare-fun list!1249 (BalanceConc!2138) List!3354)

(declare-datatypes ((tuple2!3520 0))(
  ( (tuple2!3521 (_1!1976 BalanceConc!2138) (_2!1976 BalanceConc!2136)) )
))
(declare-fun lex!307 (LexerInterface!507 List!3353 BalanceConc!2136) tuple2!3520)

(assert (=> b!209730 (= (filter!15 (list!1249 (_1!1976 (lex!307 thiss!17480 rules!1920 lt!77185))) lambda!6479) (t!31216 tokens!465))))

(declare-fun lt!77206 () Unit!3480)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!6 (LexerInterface!507 List!3353 List!3354 Token!986) Unit!3480)

(assert (=> b!209730 (= lt!77206 (theoremInvertabilityFromTokensSepTokenWhenNeeded!6 thiss!17480 rules!1920 (t!31216 tokens!465) separatorToken!170))))

(declare-fun lt!77208 () Option!556)

(assert (=> b!209730 (= lt!77208 (Some!555 (tuple2!3519 separatorToken!170 lt!77203)))))

(declare-fun lt!77186 () Token!986)

(declare-fun lt!77224 () Unit!3480)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!12 (LexerInterface!507 List!3353 Token!986 Rule!1042 List!3352 Rule!1042) Unit!3480)

(assert (=> b!209730 (= lt!77224 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!12 thiss!17480 rules!1920 separatorToken!170 (rule!1150 separatorToken!170) lt!77203 (rule!1150 lt!77186)))))

(declare-fun lt!77211 () Unit!3480)

(declare-fun e!129372 () Unit!3480)

(assert (=> b!209730 (= lt!77211 e!129372)))

(declare-fun c!39978 () Bool)

(declare-fun lt!77219 () C!2612)

(declare-fun contains!570 (List!3352 C!2612) Bool)

(declare-fun usedCharacters!26 (Regex!845) List!3352)

(assert (=> b!209730 (= c!39978 (contains!570 (usedCharacters!26 (regex!621 (rule!1150 separatorToken!170))) lt!77219))))

(declare-fun head!738 (List!3352) C!2612)

(assert (=> b!209730 (= lt!77219 (head!738 lt!77203))))

(declare-fun lt!77195 () Unit!3480)

(declare-fun e!129388 () Unit!3480)

(assert (=> b!209730 (= lt!77195 e!129388)))

(declare-fun c!39980 () Bool)

(declare-fun lt!77225 () C!2612)

(assert (=> b!209730 (= c!39980 (not (contains!570 (usedCharacters!26 (regex!621 (rule!1150 lt!77186))) lt!77225)))))

(assert (=> b!209730 (= lt!77225 (head!738 lt!77190))))

(assert (=> b!209730 e!129360))

(declare-fun res!96554 () Bool)

(assert (=> b!209730 (=> (not res!96554) (not e!129360))))

(declare-fun isDefined!406 (Option!555) Bool)

(assert (=> b!209730 (= res!96554 (isDefined!406 lt!77209))))

(declare-fun getRuleFromTag!62 (LexerInterface!507 List!3353 String!4295) Option!555)

(assert (=> b!209730 (= lt!77209 (getRuleFromTag!62 thiss!17480 rules!1920 (tag!811 (rule!1150 lt!77186))))))

(declare-fun lt!77192 () Unit!3480)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!62 (LexerInterface!507 List!3353 List!3352 Token!986) Unit!3480)

(assert (=> b!209730 (= lt!77192 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!62 thiss!17480 rules!1920 lt!77190 lt!77186))))

(assert (=> b!209730 (= lt!77190 (list!1248 (charsOf!276 lt!77186)))))

(declare-fun lt!77202 () Unit!3480)

(declare-fun forallContained!188 (List!3354 Int Token!986) Unit!3480)

(assert (=> b!209730 (= lt!77202 (forallContained!188 tokens!465 lambda!6480 lt!77186))))

(declare-fun e!129361 () Bool)

(assert (=> b!209730 e!129361))

(declare-fun res!96546 () Bool)

(assert (=> b!209730 (=> (not res!96546) (not e!129361))))

(declare-fun lt!77187 () tuple2!3520)

(assert (=> b!209730 (= res!96546 (= (size!2673 (_1!1976 lt!77187)) 1))))

(declare-fun lt!77212 () BalanceConc!2136)

(assert (=> b!209730 (= lt!77187 (lex!307 thiss!17480 rules!1920 lt!77212))))

(declare-fun lt!77184 () BalanceConc!2138)

(declare-fun printTailRec!201 (LexerInterface!507 BalanceConc!2138 Int BalanceConc!2136) BalanceConc!2136)

(assert (=> b!209730 (= lt!77212 (printTailRec!201 thiss!17480 lt!77184 0 (BalanceConc!2137 Empty!1064)))))

(declare-fun print!238 (LexerInterface!507 BalanceConc!2138) BalanceConc!2136)

(assert (=> b!209730 (= lt!77212 (print!238 thiss!17480 lt!77184))))

(declare-fun singletonSeq!173 (Token!986) BalanceConc!2138)

(assert (=> b!209730 (= lt!77184 (singletonSeq!173 lt!77186))))

(declare-fun e!129368 () Bool)

(assert (=> b!209730 e!129368))

(declare-fun res!96551 () Bool)

(assert (=> b!209730 (=> (not res!96551) (not e!129368))))

(declare-fun lt!77189 () Option!555)

(assert (=> b!209730 (= res!96551 (isDefined!406 lt!77189))))

(assert (=> b!209730 (= lt!77189 (getRuleFromTag!62 thiss!17480 rules!1920 (tag!811 (rule!1150 separatorToken!170))))))

(declare-fun lt!77230 () Unit!3480)

(assert (=> b!209730 (= lt!77230 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!62 thiss!17480 rules!1920 lt!77216 separatorToken!170))))

(declare-fun e!129393 () Bool)

(assert (=> b!209730 e!129393))

(declare-fun res!96541 () Bool)

(assert (=> b!209730 (=> (not res!96541) (not e!129393))))

(declare-fun lt!77180 () tuple2!3520)

(assert (=> b!209730 (= res!96541 (= (size!2673 (_1!1976 lt!77180)) 1))))

(declare-fun lt!77204 () BalanceConc!2136)

(assert (=> b!209730 (= lt!77180 (lex!307 thiss!17480 rules!1920 lt!77204))))

(declare-fun lt!77193 () BalanceConc!2138)

(assert (=> b!209730 (= lt!77204 (printTailRec!201 thiss!17480 lt!77193 0 (BalanceConc!2137 Empty!1064)))))

(assert (=> b!209730 (= lt!77204 (print!238 thiss!17480 lt!77193))))

(assert (=> b!209730 (= lt!77193 (singletonSeq!173 separatorToken!170))))

(declare-fun rulesProduceIndividualToken!256 (LexerInterface!507 List!3353 Token!986) Bool)

(assert (=> b!209730 (rulesProduceIndividualToken!256 thiss!17480 rules!1920 lt!77186)))

(declare-fun lt!77223 () Unit!3480)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!74 (LexerInterface!507 List!3353 List!3354 Token!986) Unit!3480)

(assert (=> b!209730 (= lt!77223 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!74 thiss!17480 rules!1920 tokens!465 lt!77186))))

(assert (=> b!209730 (= lt!77186 (head!737 (t!31216 tokens!465)))))

(declare-fun lt!77214 () Unit!3480)

(declare-fun e!129380 () Unit!3480)

(assert (=> b!209730 (= lt!77214 e!129380)))

(declare-fun c!39979 () Bool)

(declare-fun isEmpty!1808 (List!3354) Bool)

(assert (=> b!209730 (= c!39979 (isEmpty!1808 (t!31216 tokens!465)))))

(declare-fun maxPrefix!237 (LexerInterface!507 List!3353 List!3352) Option!556)

(assert (=> b!209730 (= lt!77208 (maxPrefix!237 thiss!17480 rules!1920 lt!77188))))

(declare-fun lt!77227 () tuple2!3518)

(assert (=> b!209730 (= lt!77188 (_2!1975 lt!77227))))

(declare-fun lt!77191 () List!3352)

(declare-fun lt!77222 () Unit!3480)

(declare-fun lemmaSamePrefixThenSameSuffix!142 (List!3352 List!3352 List!3352 List!3352 List!3352) Unit!3480)

(assert (=> b!209730 (= lt!77222 (lemmaSamePrefixThenSameSuffix!142 lt!77226 lt!77188 lt!77226 (_2!1975 lt!77227) lt!77191))))

(assert (=> b!209730 (= lt!77227 (get!1020 (maxPrefix!237 thiss!17480 rules!1920 lt!77191)))))

(declare-fun isPrefix!317 (List!3352 List!3352) Bool)

(assert (=> b!209730 (isPrefix!317 lt!77226 lt!77183)))

(declare-fun lt!77179 () Unit!3480)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!212 (List!3352 List!3352) Unit!3480)

(assert (=> b!209730 (= lt!77179 (lemmaConcatTwoListThenFirstIsPrefix!212 lt!77226 lt!77188))))

(declare-fun e!129381 () Bool)

(assert (=> b!209730 e!129381))

(declare-fun res!96547 () Bool)

(assert (=> b!209730 (=> res!96547 e!129381)))

(assert (=> b!209730 (= res!96547 (isEmpty!1808 tokens!465))))

(declare-fun lt!77197 () Unit!3480)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!82 (LexerInterface!507 List!3353 List!3354 Token!986) Unit!3480)

(assert (=> b!209730 (= lt!77197 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!82 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!209731 () Bool)

(declare-fun Unit!3482 () Unit!3480)

(assert (=> b!209731 (= e!129372 Unit!3482)))

(declare-fun b!209732 () Bool)

(declare-fun res!96544 () Bool)

(declare-fun e!129376 () Bool)

(assert (=> b!209732 (=> (not res!96544) (not e!129376))))

(declare-fun rulesInvariant!473 (LexerInterface!507 List!3353) Bool)

(assert (=> b!209732 (= res!96544 (rulesInvariant!473 thiss!17480 rules!1920))))

(declare-fun b!209733 () Bool)

(declare-fun res!96559 () Bool)

(declare-fun e!129394 () Bool)

(assert (=> b!209733 (=> (not res!96559) (not e!129394))))

(assert (=> b!209733 (= res!96559 (isSeparator!621 (rule!1150 separatorToken!170)))))

(declare-fun e!129382 () Bool)

(assert (=> b!209734 (= e!129382 (and tp!91343 tp!91342))))

(declare-fun b!209735 () Bool)

(declare-fun res!96534 () Bool)

(assert (=> b!209735 (=> (not res!96534) (not e!129376))))

(declare-fun isEmpty!1809 (List!3353) Bool)

(assert (=> b!209735 (= res!96534 (not (isEmpty!1809 rules!1920)))))

(declare-fun b!209736 () Bool)

(declare-fun Unit!3483 () Unit!3480)

(assert (=> b!209736 (= e!129388 Unit!3483)))

(declare-fun lt!77218 () Unit!3480)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!20 (Regex!845 List!3352 C!2612) Unit!3480)

(assert (=> b!209736 (= lt!77218 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!20 (regex!621 (rule!1150 lt!77186)) lt!77190 lt!77225))))

(declare-fun res!96561 () Bool)

(assert (=> b!209736 (= res!96561 (not (matchR!183 (regex!621 (rule!1150 lt!77186)) lt!77190)))))

(declare-fun e!129395 () Bool)

(assert (=> b!209736 (=> (not res!96561) (not e!129395))))

(assert (=> b!209736 e!129395))

(declare-fun b!209737 () Bool)

(declare-fun e!129377 () Bool)

(assert (=> b!209737 (= e!129377 (not (= lt!77191 (++!820 lt!77226 lt!77203))))))

(declare-fun b!209738 () Bool)

(assert (=> b!209738 (= e!129394 e!129384)))

(declare-fun res!96556 () Bool)

(assert (=> b!209738 (=> (not res!96556) (not e!129384))))

(declare-fun lt!77220 () List!3352)

(assert (=> b!209738 (= res!96556 (= lt!77191 lt!77220))))

(declare-fun lt!77210 () BalanceConc!2138)

(assert (=> b!209738 (= lt!77220 (list!1248 (printWithSeparatorTokenWhenNeededRec!190 thiss!17480 rules!1920 lt!77210 separatorToken!170 0)))))

(assert (=> b!209738 (= lt!77191 (printWithSeparatorTokenWhenNeededList!200 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!129375 () Bool)

(declare-fun e!129370 () Bool)

(declare-fun tp!91346 () Bool)

(declare-fun b!209739 () Bool)

(declare-fun inv!21 (TokenValue!643) Bool)

(assert (=> b!209739 (= e!129375 (and (inv!21 (value!22014 separatorToken!170)) e!129370 tp!91346))))

(declare-fun e!129371 () Bool)

(assert (=> b!209740 (= e!129371 (and tp!91350 tp!91352))))

(declare-fun b!209741 () Bool)

(declare-fun e!129365 () Bool)

(declare-fun e!129378 () Bool)

(assert (=> b!209741 (= e!129365 e!129378)))

(declare-fun res!96537 () Bool)

(assert (=> b!209741 (=> res!96537 e!129378)))

(declare-fun lt!77194 () List!3352)

(declare-fun lt!77182 () List!3352)

(assert (=> b!209741 (= res!96537 (or (not (= lt!77182 lt!77194)) (not (= lt!77194 lt!77226)) (not (= lt!77182 lt!77226))))))

(declare-fun printList!191 (LexerInterface!507 List!3354) List!3352)

(assert (=> b!209741 (= lt!77194 (printList!191 thiss!17480 (Cons!3344 (h!8741 tokens!465) Nil!3344)))))

(declare-fun lt!77221 () BalanceConc!2136)

(assert (=> b!209741 (= lt!77182 (list!1248 lt!77221))))

(declare-fun lt!77205 () BalanceConc!2138)

(assert (=> b!209741 (= lt!77221 (printTailRec!201 thiss!17480 lt!77205 0 (BalanceConc!2137 Empty!1064)))))

(assert (=> b!209741 (= lt!77221 (print!238 thiss!17480 lt!77205))))

(assert (=> b!209741 (= lt!77205 (singletonSeq!173 (h!8741 tokens!465)))))

(declare-fun b!209742 () Bool)

(assert (=> b!209742 (= e!129374 (= (rule!1150 lt!77186) lt!77199))))

(declare-fun b!209743 () Bool)

(declare-fun res!96550 () Bool)

(assert (=> b!209743 (=> (not res!96550) (not e!129361))))

(declare-fun apply!562 (BalanceConc!2138 Int) Token!986)

(assert (=> b!209743 (= res!96550 (= (apply!562 (_1!1976 lt!77187) 0) lt!77186))))

(declare-fun b!209744 () Bool)

(declare-fun tp!91353 () Bool)

(declare-fun inv!4177 (String!4295) Bool)

(declare-fun inv!4180 (TokenValueInjection!1058) Bool)

(assert (=> b!209744 (= e!129370 (and tp!91353 (inv!4177 (tag!811 (rule!1150 separatorToken!170))) (inv!4180 (transformation!621 (rule!1150 separatorToken!170))) e!129371))))

(declare-fun b!209745 () Bool)

(declare-fun isEmpty!1810 (BalanceConc!2136) Bool)

(assert (=> b!209745 (= e!129361 (isEmpty!1810 (_2!1976 lt!77187)))))

(declare-fun b!209746 () Bool)

(declare-fun res!96533 () Bool)

(assert (=> b!209746 (=> (not res!96533) (not e!129393))))

(assert (=> b!209746 (= res!96533 (= (apply!562 (_1!1976 lt!77180) 0) separatorToken!170))))

(declare-fun tp!91351 () Bool)

(declare-fun e!129367 () Bool)

(declare-fun b!209747 () Bool)

(declare-fun e!129389 () Bool)

(declare-fun inv!4181 (Token!986) Bool)

(assert (=> b!209747 (= e!129389 (and (inv!4181 (h!8741 tokens!465)) e!129367 tp!91351))))

(declare-fun res!96540 () Bool)

(assert (=> b!209748 (=> (not res!96540) (not e!129394))))

(declare-fun forall!727 (List!3354 Int) Bool)

(assert (=> b!209748 (= res!96540 (forall!727 tokens!465 lambda!6479))))

(declare-fun b!209749 () Bool)

(declare-fun res!96564 () Bool)

(assert (=> b!209749 (=> res!96564 e!129378)))

(assert (=> b!209749 (= res!96564 (not (rulesProduceIndividualToken!256 thiss!17480 rules!1920 (h!8741 tokens!465))))))

(declare-fun b!209750 () Bool)

(declare-fun res!96562 () Bool)

(declare-fun e!129386 () Bool)

(assert (=> b!209750 (=> (not res!96562) (not e!129386))))

(declare-fun lt!77200 () tuple2!3518)

(declare-fun isEmpty!1811 (List!3352) Bool)

(assert (=> b!209750 (= res!96562 (isEmpty!1811 (_2!1975 lt!77200)))))

(declare-fun b!209751 () Bool)

(declare-fun res!96552 () Bool)

(assert (=> b!209751 (=> (not res!96552) (not e!129394))))

(assert (=> b!209751 (= res!96552 ((_ is Cons!3344) tokens!465))))

(declare-fun b!209752 () Bool)

(assert (=> b!209752 (= e!129368 e!129383)))

(declare-fun res!96557 () Bool)

(assert (=> b!209752 (=> (not res!96557) (not e!129383))))

(assert (=> b!209752 (= res!96557 (matchR!183 (regex!621 lt!77215) lt!77216))))

(assert (=> b!209752 (= lt!77215 (get!1019 lt!77189))))

(declare-fun b!209753 () Bool)

(declare-fun res!96539 () Bool)

(assert (=> b!209753 (=> (not res!96539) (not e!129394))))

(declare-fun sepAndNonSepRulesDisjointChars!210 (List!3353 List!3353) Bool)

(assert (=> b!209753 (= res!96539 (sepAndNonSepRulesDisjointChars!210 rules!1920 rules!1920))))

(declare-fun b!209754 () Bool)

(assert (=> b!209754 (= e!129395 false)))

(declare-fun b!209755 () Bool)

(assert (=> b!209755 (= e!129381 e!129385)))

(declare-fun res!96563 () Bool)

(assert (=> b!209755 (=> (not res!96563) (not e!129385))))

(declare-fun isDefined!407 (Option!556) Bool)

(assert (=> b!209755 (= res!96563 (isDefined!407 lt!77181))))

(assert (=> b!209755 (= lt!77181 (maxPrefix!237 thiss!17480 rules!1920 lt!77191))))

(declare-fun b!209756 () Bool)

(declare-fun res!96545 () Bool)

(assert (=> b!209756 (=> res!96545 e!129378)))

(declare-fun isEmpty!1812 (BalanceConc!2138) Bool)

(declare-fun seqFromList!620 (List!3352) BalanceConc!2136)

(assert (=> b!209756 (= res!96545 (isEmpty!1812 (_1!1976 (lex!307 thiss!17480 rules!1920 (seqFromList!620 lt!77226)))))))

(declare-fun b!209757 () Bool)

(assert (=> b!209757 (= e!129393 (isEmpty!1810 (_2!1976 lt!77180)))))

(declare-fun b!209758 () Bool)

(declare-fun Unit!3484 () Unit!3480)

(assert (=> b!209758 (= e!129372 Unit!3484)))

(declare-fun lt!77196 () Unit!3480)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!14 (LexerInterface!507 List!3353 List!3353 Rule!1042 Rule!1042 C!2612) Unit!3480)

(assert (=> b!209758 (= lt!77196 (lemmaSepRuleNotContainsCharContainedInANonSepRule!14 thiss!17480 rules!1920 rules!1920 (rule!1150 lt!77186) (rule!1150 separatorToken!170) lt!77219))))

(assert (=> b!209758 false))

(declare-fun e!129379 () Bool)

(declare-fun tp!91347 () Bool)

(declare-fun e!129373 () Bool)

(declare-fun b!209759 () Bool)

(assert (=> b!209759 (= e!129373 (and tp!91347 (inv!4177 (tag!811 (h!8740 rules!1920))) (inv!4180 (transformation!621 (h!8740 rules!1920))) e!129379))))

(declare-fun b!209760 () Bool)

(declare-fun e!129390 () Bool)

(assert (=> b!209760 (= e!129390 e!129391)))

(declare-fun res!96555 () Bool)

(assert (=> b!209760 (=> res!96555 e!129391)))

(declare-fun lt!77201 () Bool)

(assert (=> b!209760 (= res!96555 (not lt!77201))))

(assert (=> b!209760 e!129386))

(declare-fun res!96535 () Bool)

(assert (=> b!209760 (=> (not res!96535) (not e!129386))))

(assert (=> b!209760 (= res!96535 (= (_1!1975 lt!77200) (h!8741 tokens!465)))))

(declare-fun lt!77213 () Option!556)

(assert (=> b!209760 (= lt!77200 (get!1020 lt!77213))))

(assert (=> b!209760 (isDefined!407 lt!77213)))

(assert (=> b!209760 (= lt!77213 (maxPrefix!237 thiss!17480 rules!1920 lt!77226))))

(declare-fun b!209761 () Bool)

(assert (=> b!209761 (= e!129396 e!129365)))

(declare-fun res!96542 () Bool)

(assert (=> b!209761 (=> res!96542 e!129365)))

(assert (=> b!209761 (= res!96542 e!129377)))

(declare-fun res!96558 () Bool)

(assert (=> b!209761 (=> (not res!96558) (not e!129377))))

(assert (=> b!209761 (= res!96558 (not lt!77201))))

(assert (=> b!209761 (= lt!77201 (= lt!77191 lt!77183))))

(declare-fun res!96538 () Bool)

(assert (=> start!22522 (=> (not res!96538) (not e!129376))))

(assert (=> start!22522 (= res!96538 ((_ is Lexer!505) thiss!17480))))

(assert (=> start!22522 e!129376))

(assert (=> start!22522 true))

(declare-fun e!129392 () Bool)

(assert (=> start!22522 e!129392))

(assert (=> start!22522 (and (inv!4181 separatorToken!170) e!129375)))

(assert (=> start!22522 e!129389))

(assert (=> b!209762 (= e!129378 e!129390)))

(declare-fun res!96553 () Bool)

(assert (=> b!209762 (=> res!96553 e!129390)))

(declare-datatypes ((tuple2!3522 0))(
  ( (tuple2!3523 (_1!1977 Token!986) (_2!1977 BalanceConc!2136)) )
))
(declare-datatypes ((Option!557 0))(
  ( (None!556) (Some!556 (v!14123 tuple2!3522)) )
))
(declare-fun isDefined!408 (Option!557) Bool)

(declare-fun maxPrefixZipperSequence!200 (LexerInterface!507 List!3353 BalanceConc!2136) Option!557)

(assert (=> b!209762 (= res!96553 (not (isDefined!408 (maxPrefixZipperSequence!200 thiss!17480 rules!1920 (seqFromList!620 (originalCharacters!664 (h!8741 tokens!465)))))))))

(declare-fun lt!77207 () Unit!3480)

(assert (=> b!209762 (= lt!77207 (forallContained!188 tokens!465 lambda!6480 (h!8741 tokens!465)))))

(assert (=> b!209762 (= lt!77226 (originalCharacters!664 (h!8741 tokens!465)))))

(declare-fun b!209763 () Bool)

(declare-fun tp!91349 () Bool)

(declare-fun e!129363 () Bool)

(assert (=> b!209763 (= e!129363 (and tp!91349 (inv!4177 (tag!811 (rule!1150 (h!8741 tokens!465)))) (inv!4180 (transformation!621 (rule!1150 (h!8741 tokens!465)))) e!129382))))

(declare-fun b!209764 () Bool)

(declare-fun Unit!3485 () Unit!3480)

(assert (=> b!209764 (= e!129388 Unit!3485)))

(declare-fun b!209765 () Bool)

(declare-fun tp!91348 () Bool)

(assert (=> b!209765 (= e!129367 (and (inv!21 (value!22014 (h!8741 tokens!465))) e!129363 tp!91348))))

(declare-fun b!209766 () Bool)

(assert (=> b!209766 (= e!129386 (matchR!183 (regex!621 (rule!1150 (h!8741 tokens!465))) lt!77226))))

(declare-fun b!209767 () Bool)

(declare-fun res!96548 () Bool)

(assert (=> b!209767 (=> (not res!96548) (not e!129394))))

(assert (=> b!209767 (= res!96548 (rulesProduceIndividualToken!256 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!209768 () Bool)

(declare-fun Unit!3486 () Unit!3480)

(assert (=> b!209768 (= e!129380 Unit!3486)))

(declare-fun b!209769 () Bool)

(declare-fun res!96536 () Bool)

(assert (=> b!209769 (=> (not res!96536) (not e!129384))))

(assert (=> b!209769 (= res!96536 (= (list!1248 (seqFromList!620 lt!77191)) lt!77220))))

(declare-fun b!209770 () Bool)

(declare-fun Unit!3487 () Unit!3480)

(assert (=> b!209770 (= e!129380 Unit!3487)))

(assert (=> b!209770 false))

(assert (=> b!209771 (= e!129379 (and tp!91345 tp!91341))))

(declare-fun b!209772 () Bool)

(assert (=> b!209772 (= e!129376 e!129394)))

(declare-fun res!96543 () Bool)

(assert (=> b!209772 (=> (not res!96543) (not e!129394))))

(declare-fun rulesProduceEachTokenIndividually!299 (LexerInterface!507 List!3353 BalanceConc!2138) Bool)

(assert (=> b!209772 (= res!96543 (rulesProduceEachTokenIndividually!299 thiss!17480 rules!1920 lt!77210))))

(assert (=> b!209772 (= lt!77210 (seqFromList!619 tokens!465))))

(declare-fun b!209773 () Bool)

(declare-fun tp!91344 () Bool)

(assert (=> b!209773 (= e!129392 (and e!129373 tp!91344))))

(assert (= (and start!22522 res!96538) b!209735))

(assert (= (and b!209735 res!96534) b!209732))

(assert (= (and b!209732 res!96544) b!209772))

(assert (= (and b!209772 res!96543) b!209767))

(assert (= (and b!209767 res!96548) b!209733))

(assert (= (and b!209733 res!96559) b!209748))

(assert (= (and b!209748 res!96540) b!209753))

(assert (= (and b!209753 res!96539) b!209751))

(assert (= (and b!209751 res!96552) b!209738))

(assert (= (and b!209738 res!96556) b!209769))

(assert (= (and b!209769 res!96536) b!209729))

(assert (= (and b!209729 (not res!96560)) b!209761))

(assert (= (and b!209761 res!96558) b!209737))

(assert (= (and b!209761 (not res!96542)) b!209741))

(assert (= (and b!209741 (not res!96537)) b!209749))

(assert (= (and b!209749 (not res!96564)) b!209756))

(assert (= (and b!209756 (not res!96545)) b!209762))

(assert (= (and b!209762 (not res!96553)) b!209760))

(assert (= (and b!209760 res!96535) b!209750))

(assert (= (and b!209750 res!96562) b!209766))

(assert (= (and b!209760 (not res!96555)) b!209730))

(assert (= (and b!209730 (not res!96547)) b!209755))

(assert (= (and b!209755 res!96563) b!209727))

(assert (= (and b!209730 c!39979) b!209770))

(assert (= (and b!209730 (not c!39979)) b!209768))

(assert (= (and b!209730 res!96541) b!209746))

(assert (= (and b!209746 res!96533) b!209757))

(assert (= (and b!209730 res!96551) b!209752))

(assert (= (and b!209752 res!96557) b!209728))

(assert (= (and b!209730 res!96546) b!209743))

(assert (= (and b!209743 res!96550) b!209745))

(assert (= (and b!209730 res!96554) b!209726))

(assert (= (and b!209726 res!96549) b!209742))

(assert (= (and b!209730 c!39980) b!209736))

(assert (= (and b!209730 (not c!39980)) b!209764))

(assert (= (and b!209736 res!96561) b!209754))

(assert (= (and b!209730 c!39978) b!209758))

(assert (= (and b!209730 (not c!39978)) b!209731))

(assert (= b!209759 b!209771))

(assert (= b!209773 b!209759))

(assert (= (and start!22522 ((_ is Cons!3343) rules!1920)) b!209773))

(assert (= b!209744 b!209740))

(assert (= b!209739 b!209744))

(assert (= start!22522 b!209739))

(assert (= b!209763 b!209734))

(assert (= b!209765 b!209763))

(assert (= b!209747 b!209765))

(assert (= (and start!22522 ((_ is Cons!3344) tokens!465)) b!209747))

(declare-fun m!232513 () Bool)

(assert (=> b!209732 m!232513))

(declare-fun m!232515 () Bool)

(assert (=> b!209745 m!232515))

(declare-fun m!232517 () Bool)

(assert (=> b!209747 m!232517))

(declare-fun m!232519 () Bool)

(assert (=> b!209746 m!232519))

(declare-fun m!232521 () Bool)

(assert (=> b!209766 m!232521))

(declare-fun m!232523 () Bool)

(assert (=> b!209757 m!232523))

(declare-fun m!232525 () Bool)

(assert (=> b!209729 m!232525))

(declare-fun m!232527 () Bool)

(assert (=> b!209729 m!232527))

(declare-fun m!232529 () Bool)

(assert (=> b!209729 m!232529))

(declare-fun m!232531 () Bool)

(assert (=> b!209729 m!232531))

(declare-fun m!232533 () Bool)

(assert (=> b!209729 m!232533))

(declare-fun m!232535 () Bool)

(assert (=> b!209729 m!232535))

(assert (=> b!209729 m!232533))

(declare-fun m!232537 () Bool)

(assert (=> b!209729 m!232537))

(assert (=> b!209729 m!232537))

(declare-fun m!232539 () Bool)

(assert (=> b!209729 m!232539))

(declare-fun m!232541 () Bool)

(assert (=> b!209729 m!232541))

(declare-fun m!232543 () Bool)

(assert (=> b!209729 m!232543))

(declare-fun m!232545 () Bool)

(assert (=> b!209729 m!232545))

(assert (=> b!209729 m!232545))

(declare-fun m!232547 () Bool)

(assert (=> b!209729 m!232547))

(declare-fun m!232549 () Bool)

(assert (=> b!209729 m!232549))

(declare-fun m!232551 () Bool)

(assert (=> b!209758 m!232551))

(declare-fun m!232553 () Bool)

(assert (=> start!22522 m!232553))

(declare-fun m!232555 () Bool)

(assert (=> b!209727 m!232555))

(declare-fun m!232557 () Bool)

(assert (=> b!209727 m!232557))

(declare-fun m!232559 () Bool)

(assert (=> b!209730 m!232559))

(declare-fun m!232561 () Bool)

(assert (=> b!209730 m!232561))

(declare-fun m!232563 () Bool)

(assert (=> b!209730 m!232563))

(declare-fun m!232565 () Bool)

(assert (=> b!209730 m!232565))

(declare-fun m!232567 () Bool)

(assert (=> b!209730 m!232567))

(declare-fun m!232569 () Bool)

(assert (=> b!209730 m!232569))

(declare-fun m!232571 () Bool)

(assert (=> b!209730 m!232571))

(declare-fun m!232573 () Bool)

(assert (=> b!209730 m!232573))

(declare-fun m!232575 () Bool)

(assert (=> b!209730 m!232575))

(assert (=> b!209730 m!232565))

(declare-fun m!232577 () Bool)

(assert (=> b!209730 m!232577))

(declare-fun m!232579 () Bool)

(assert (=> b!209730 m!232579))

(declare-fun m!232581 () Bool)

(assert (=> b!209730 m!232581))

(declare-fun m!232583 () Bool)

(assert (=> b!209730 m!232583))

(declare-fun m!232585 () Bool)

(assert (=> b!209730 m!232585))

(declare-fun m!232587 () Bool)

(assert (=> b!209730 m!232587))

(declare-fun m!232589 () Bool)

(assert (=> b!209730 m!232589))

(assert (=> b!209730 m!232579))

(declare-fun m!232591 () Bool)

(assert (=> b!209730 m!232591))

(declare-fun m!232593 () Bool)

(assert (=> b!209730 m!232593))

(declare-fun m!232595 () Bool)

(assert (=> b!209730 m!232595))

(declare-fun m!232597 () Bool)

(assert (=> b!209730 m!232597))

(declare-fun m!232599 () Bool)

(assert (=> b!209730 m!232599))

(declare-fun m!232601 () Bool)

(assert (=> b!209730 m!232601))

(declare-fun m!232603 () Bool)

(assert (=> b!209730 m!232603))

(declare-fun m!232605 () Bool)

(assert (=> b!209730 m!232605))

(declare-fun m!232607 () Bool)

(assert (=> b!209730 m!232607))

(declare-fun m!232609 () Bool)

(assert (=> b!209730 m!232609))

(declare-fun m!232611 () Bool)

(assert (=> b!209730 m!232611))

(declare-fun m!232613 () Bool)

(assert (=> b!209730 m!232613))

(declare-fun m!232615 () Bool)

(assert (=> b!209730 m!232615))

(declare-fun m!232617 () Bool)

(assert (=> b!209730 m!232617))

(declare-fun m!232619 () Bool)

(assert (=> b!209730 m!232619))

(declare-fun m!232621 () Bool)

(assert (=> b!209730 m!232621))

(declare-fun m!232623 () Bool)

(assert (=> b!209730 m!232623))

(declare-fun m!232625 () Bool)

(assert (=> b!209730 m!232625))

(declare-fun m!232627 () Bool)

(assert (=> b!209730 m!232627))

(assert (=> b!209730 m!232569))

(declare-fun m!232629 () Bool)

(assert (=> b!209730 m!232629))

(declare-fun m!232631 () Bool)

(assert (=> b!209730 m!232631))

(assert (=> b!209730 m!232583))

(declare-fun m!232633 () Bool)

(assert (=> b!209730 m!232633))

(declare-fun m!232635 () Bool)

(assert (=> b!209730 m!232635))

(assert (=> b!209730 m!232575))

(declare-fun m!232637 () Bool)

(assert (=> b!209730 m!232637))

(declare-fun m!232639 () Bool)

(assert (=> b!209730 m!232639))

(declare-fun m!232641 () Bool)

(assert (=> b!209730 m!232641))

(declare-fun m!232643 () Bool)

(assert (=> b!209730 m!232643))

(declare-fun m!232645 () Bool)

(assert (=> b!209772 m!232645))

(declare-fun m!232647 () Bool)

(assert (=> b!209772 m!232647))

(declare-fun m!232649 () Bool)

(assert (=> b!209755 m!232649))

(assert (=> b!209755 m!232575))

(declare-fun m!232651 () Bool)

(assert (=> b!209744 m!232651))

(declare-fun m!232653 () Bool)

(assert (=> b!209744 m!232653))

(declare-fun m!232655 () Bool)

(assert (=> b!209763 m!232655))

(declare-fun m!232657 () Bool)

(assert (=> b!209763 m!232657))

(declare-fun m!232659 () Bool)

(assert (=> b!209760 m!232659))

(declare-fun m!232661 () Bool)

(assert (=> b!209760 m!232661))

(declare-fun m!232663 () Bool)

(assert (=> b!209760 m!232663))

(declare-fun m!232665 () Bool)

(assert (=> b!209759 m!232665))

(declare-fun m!232667 () Bool)

(assert (=> b!209759 m!232667))

(declare-fun m!232669 () Bool)

(assert (=> b!209743 m!232669))

(declare-fun m!232671 () Bool)

(assert (=> b!209741 m!232671))

(declare-fun m!232673 () Bool)

(assert (=> b!209741 m!232673))

(declare-fun m!232675 () Bool)

(assert (=> b!209741 m!232675))

(declare-fun m!232677 () Bool)

(assert (=> b!209741 m!232677))

(declare-fun m!232679 () Bool)

(assert (=> b!209741 m!232679))

(declare-fun m!232681 () Bool)

(assert (=> b!209769 m!232681))

(assert (=> b!209769 m!232681))

(declare-fun m!232683 () Bool)

(assert (=> b!209769 m!232683))

(declare-fun m!232685 () Bool)

(assert (=> b!209739 m!232685))

(declare-fun m!232687 () Bool)

(assert (=> b!209752 m!232687))

(declare-fun m!232689 () Bool)

(assert (=> b!209752 m!232689))

(declare-fun m!232691 () Bool)

(assert (=> b!209737 m!232691))

(declare-fun m!232693 () Bool)

(assert (=> b!209738 m!232693))

(assert (=> b!209738 m!232693))

(declare-fun m!232695 () Bool)

(assert (=> b!209738 m!232695))

(declare-fun m!232697 () Bool)

(assert (=> b!209738 m!232697))

(declare-fun m!232699 () Bool)

(assert (=> b!209753 m!232699))

(declare-fun m!232701 () Bool)

(assert (=> b!209736 m!232701))

(declare-fun m!232703 () Bool)

(assert (=> b!209736 m!232703))

(declare-fun m!232705 () Bool)

(assert (=> b!209767 m!232705))

(declare-fun m!232707 () Bool)

(assert (=> b!209756 m!232707))

(assert (=> b!209756 m!232707))

(declare-fun m!232709 () Bool)

(assert (=> b!209756 m!232709))

(declare-fun m!232711 () Bool)

(assert (=> b!209756 m!232711))

(declare-fun m!232713 () Bool)

(assert (=> b!209749 m!232713))

(declare-fun m!232715 () Bool)

(assert (=> b!209765 m!232715))

(declare-fun m!232717 () Bool)

(assert (=> b!209762 m!232717))

(assert (=> b!209762 m!232717))

(declare-fun m!232719 () Bool)

(assert (=> b!209762 m!232719))

(assert (=> b!209762 m!232719))

(declare-fun m!232721 () Bool)

(assert (=> b!209762 m!232721))

(declare-fun m!232723 () Bool)

(assert (=> b!209762 m!232723))

(declare-fun m!232725 () Bool)

(assert (=> b!209735 m!232725))

(declare-fun m!232727 () Bool)

(assert (=> b!209726 m!232727))

(declare-fun m!232729 () Bool)

(assert (=> b!209726 m!232729))

(declare-fun m!232731 () Bool)

(assert (=> b!209750 m!232731))

(declare-fun m!232733 () Bool)

(assert (=> b!209748 m!232733))

(check-sat (not b_next!8125) (not b!209767) b_and!15155 (not b_next!8121) (not start!22522) (not b!209735) (not b!209730) (not b!209759) (not b!209739) (not b!209738) (not b!209769) (not b!209744) b_and!15161 (not b!209758) (not b!209765) (not b!209727) (not b!209737) (not b!209763) (not b!209773) (not b!209726) (not b!209745) (not b!209749) (not b_next!8129) (not b_next!8123) (not b!209757) b_and!15159 (not b!209732) (not b!209753) (not b!209755) (not b_next!8131) (not b!209743) (not b!209748) (not b!209729) (not b!209746) (not b!209766) (not b!209762) (not b!209772) (not b!209747) (not b!209756) (not b!209741) (not b!209736) (not b!209760) (not b_next!8127) (not b!209752) b_and!15163 (not b!209782) b_and!15153 (not b!209750) b_and!15157)
(check-sat b_and!15161 (not b_next!8125) b_and!15155 (not b_next!8121) (not b_next!8129) (not b_next!8123) b_and!15159 (not b_next!8131) (not b_next!8127) b_and!15157 b_and!15163 b_and!15153)
