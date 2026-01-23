; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127146 () Bool)

(assert start!127146)

(declare-fun b!1396885 () Bool)

(declare-fun b_free!33995 () Bool)

(declare-fun b_next!34699 () Bool)

(assert (=> b!1396885 (= b_free!33995 (not b_next!34699))))

(declare-fun tp!398089 () Bool)

(declare-fun b_and!93531 () Bool)

(assert (=> b!1396885 (= tp!398089 b_and!93531)))

(declare-fun b_free!33997 () Bool)

(declare-fun b_next!34701 () Bool)

(assert (=> b!1396885 (= b_free!33997 (not b_next!34701))))

(declare-fun tp!398087 () Bool)

(declare-fun b_and!93533 () Bool)

(assert (=> b!1396885 (= tp!398087 b_and!93533)))

(declare-fun b!1396877 () Bool)

(declare-fun b_free!33999 () Bool)

(declare-fun b_next!34703 () Bool)

(assert (=> b!1396877 (= b_free!33999 (not b_next!34703))))

(declare-fun tp!398092 () Bool)

(declare-fun b_and!93535 () Bool)

(assert (=> b!1396877 (= tp!398092 b_and!93535)))

(declare-fun b_free!34001 () Bool)

(declare-fun b_next!34705 () Bool)

(assert (=> b!1396877 (= b_free!34001 (not b_next!34705))))

(declare-fun tp!398088 () Bool)

(declare-fun b_and!93537 () Bool)

(assert (=> b!1396877 (= tp!398088 b_and!93537)))

(declare-fun b!1396868 () Bool)

(declare-fun b_free!34003 () Bool)

(declare-fun b_next!34707 () Bool)

(assert (=> b!1396868 (= b_free!34003 (not b_next!34707))))

(declare-fun tp!398090 () Bool)

(declare-fun b_and!93539 () Bool)

(assert (=> b!1396868 (= tp!398090 b_and!93539)))

(declare-fun b_free!34005 () Bool)

(declare-fun b_next!34709 () Bool)

(assert (=> b!1396868 (= b_free!34005 (not b_next!34709))))

(declare-fun tp!398085 () Bool)

(declare-fun b_and!93541 () Bool)

(assert (=> b!1396868 (= tp!398085 b_and!93541)))

(declare-fun b!1396853 () Bool)

(assert (=> b!1396853 true))

(assert (=> b!1396853 true))

(declare-fun b!1396870 () Bool)

(assert (=> b!1396870 true))

(declare-fun b!1396858 () Bool)

(assert (=> b!1396858 true))

(declare-fun bs!337928 () Bool)

(declare-fun b!1396859 () Bool)

(assert (= bs!337928 (and b!1396859 b!1396858)))

(declare-fun lambda!60863 () Int)

(declare-fun lambda!60862 () Int)

(assert (=> bs!337928 (not (= lambda!60863 lambda!60862))))

(assert (=> b!1396859 true))

(declare-fun e!891977 () Bool)

(declare-fun e!891981 () Bool)

(assert (=> b!1396853 (= e!891977 (not e!891981))))

(declare-fun res!631209 () Bool)

(assert (=> b!1396853 (=> res!631209 e!891981)))

(declare-fun lambda!60859 () Int)

(declare-fun Exists!921 (Int) Bool)

(assert (=> b!1396853 (= res!631209 (not (Exists!921 lambda!60859)))))

(assert (=> b!1396853 (Exists!921 lambda!60859)))

(declare-datatypes ((Unit!20486 0))(
  ( (Unit!20487) )
))
(declare-fun lt!465390 () Unit!20486)

(declare-datatypes ((C!7832 0))(
  ( (C!7833 (val!4476 Int)) )
))
(declare-datatypes ((Regex!3771 0))(
  ( (ElementMatch!3771 (c!229882 C!7832)) (Concat!6318 (regOne!8054 Regex!3771) (regTwo!8054 Regex!3771)) (EmptyExpr!3771) (Star!3771 (reg!4100 Regex!3771)) (EmptyLang!3771) (Union!3771 (regOne!8055 Regex!3771) (regTwo!8055 Regex!3771)) )
))
(declare-fun lt!465392 () Regex!3771)

(declare-datatypes ((List!14250 0))(
  ( (Nil!14184) (Cons!14184 (h!19585 C!7832) (t!122703 List!14250)) )
))
(declare-fun lt!465393 () List!14250)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!239 (Regex!3771 List!14250) Unit!20486)

(assert (=> b!1396853 (= lt!465390 (lemmaPrefixMatchThenExistsStringThatMatches!239 lt!465392 lt!465393))))

(declare-fun b!1396854 () Bool)

(declare-fun e!891992 () Bool)

(declare-fun e!891976 () Bool)

(assert (=> b!1396854 (= e!891992 e!891976)))

(declare-fun res!631188 () Bool)

(assert (=> b!1396854 (=> res!631188 e!891976)))

(declare-fun lt!465397 () C!7832)

(declare-fun contains!2753 (List!14250 C!7832) Bool)

(assert (=> b!1396854 (= res!631188 (not (contains!2753 lt!465393 lt!465397)))))

(declare-datatypes ((IArray!9353 0))(
  ( (IArray!9354 (innerList!4734 List!14250)) )
))
(declare-datatypes ((Conc!4674 0))(
  ( (Node!4674 (left!12116 Conc!4674) (right!12446 Conc!4674) (csize!9578 Int) (cheight!4885 Int)) (Leaf!7099 (xs!7401 IArray!9353) (csize!9579 Int)) (Empty!4674) )
))
(declare-datatypes ((BalanceConc!9288 0))(
  ( (BalanceConc!9289 (c!229883 Conc!4674)) )
))
(declare-fun lt!465399 () BalanceConc!9288)

(declare-fun apply!3593 (BalanceConc!9288 Int) C!7832)

(assert (=> b!1396854 (= lt!465397 (apply!3593 lt!465399 0))))

(declare-fun b!1396855 () Bool)

(declare-fun e!891985 () Unit!20486)

(declare-fun Unit!20488 () Unit!20486)

(assert (=> b!1396855 (= e!891985 Unit!20488)))

(declare-fun lt!465405 () Unit!20486)

(declare-datatypes ((List!14251 0))(
  ( (Nil!14185) (Cons!14185 (h!19586 (_ BitVec 16)) (t!122704 List!14251)) )
))
(declare-datatypes ((TokenValue!2547 0))(
  ( (FloatLiteralValue!5094 (text!18274 List!14251)) (TokenValueExt!2546 (__x!8923 Int)) (Broken!12735 (value!79631 List!14251)) (Object!2612) (End!2547) (Def!2547) (Underscore!2547) (Match!2547) (Else!2547) (Error!2547) (Case!2547) (If!2547) (Extends!2547) (Abstract!2547) (Class!2547) (Val!2547) (DelimiterValue!5094 (del!2607 List!14251)) (KeywordValue!2553 (value!79632 List!14251)) (CommentValue!5094 (value!79633 List!14251)) (WhitespaceValue!5094 (value!79634 List!14251)) (IndentationValue!2547 (value!79635 List!14251)) (String!16970) (Int32!2547) (Broken!12736 (value!79636 List!14251)) (Boolean!2548) (Unit!20489) (OperatorValue!2550 (op!2607 List!14251)) (IdentifierValue!5094 (value!79637 List!14251)) (IdentifierValue!5095 (value!79638 List!14251)) (WhitespaceValue!5095 (value!79639 List!14251)) (True!5094) (False!5094) (Broken!12737 (value!79640 List!14251)) (Broken!12738 (value!79641 List!14251)) (True!5095) (RightBrace!2547) (RightBracket!2547) (Colon!2547) (Null!2547) (Comma!2547) (LeftBracket!2547) (False!5095) (LeftBrace!2547) (ImaginaryLiteralValue!2547 (text!18275 List!14251)) (StringLiteralValue!7641 (value!79642 List!14251)) (EOFValue!2547 (value!79643 List!14251)) (IdentValue!2547 (value!79644 List!14251)) (DelimiterValue!5095 (value!79645 List!14251)) (DedentValue!2547 (value!79646 List!14251)) (NewLineValue!2547 (value!79647 List!14251)) (IntegerValue!7641 (value!79648 (_ BitVec 32)) (text!18276 List!14251)) (IntegerValue!7642 (value!79649 Int) (text!18277 List!14251)) (Times!2547) (Or!2547) (Equal!2547) (Minus!2547) (Broken!12739 (value!79650 List!14251)) (And!2547) (Div!2547) (LessEqual!2547) (Mod!2547) (Concat!6319) (Not!2547) (Plus!2547) (SpaceValue!2547 (value!79651 List!14251)) (IntegerValue!7643 (value!79652 Int) (text!18278 List!14251)) (StringLiteralValue!7642 (text!18279 List!14251)) (FloatLiteralValue!5095 (text!18280 List!14251)) (BytesLiteralValue!2547 (value!79653 List!14251)) (CommentValue!5095 (value!79654 List!14251)) (StringLiteralValue!7643 (value!79655 List!14251)) (ErrorTokenValue!2547 (msg!2608 List!14251)) )
))
(declare-datatypes ((String!16971 0))(
  ( (String!16972 (value!79656 String)) )
))
(declare-datatypes ((TokenValueInjection!4754 0))(
  ( (TokenValueInjection!4755 (toValue!3748 Int) (toChars!3607 Int)) )
))
(declare-datatypes ((Rule!4714 0))(
  ( (Rule!4715 (regex!2457 Regex!3771) (tag!2719 String!16971) (isSeparator!2457 Bool) (transformation!2457 TokenValueInjection!4754)) )
))
(declare-datatypes ((Token!4576 0))(
  ( (Token!4577 (value!79657 TokenValue!2547) (rule!4220 Rule!4714) (size!11661 Int) (originalCharacters!3319 List!14250)) )
))
(declare-fun t2!34 () Token!4576)

(declare-fun lt!465415 () List!14250)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 (Regex!3771 List!14250 C!7832) Unit!20486)

(declare-fun head!2571 (List!14250) C!7832)

(assert (=> b!1396855 (= lt!465405 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 (regex!2457 (rule!4220 t2!34)) lt!465415 (head!2571 lt!465415)))))

(assert (=> b!1396855 false))

(declare-fun tp!398084 () Bool)

(declare-fun e!891995 () Bool)

(declare-fun b!1396856 () Bool)

(declare-fun e!891989 () Bool)

(declare-fun inv!18507 (String!16971) Bool)

(declare-fun inv!18510 (TokenValueInjection!4754) Bool)

(assert (=> b!1396856 (= e!891995 (and tp!398084 (inv!18507 (tag!2719 (rule!4220 t2!34))) (inv!18510 (transformation!2457 (rule!4220 t2!34))) e!891989))))

(declare-fun b!1396857 () Bool)

(declare-fun e!891987 () Bool)

(declare-fun e!891969 () Bool)

(declare-fun tp!398082 () Bool)

(assert (=> b!1396857 (= e!891987 (and e!891969 tp!398082))))

(declare-fun e!891968 () Bool)

(declare-fun e!891997 () Bool)

(assert (=> b!1396858 (= e!891968 e!891997)))

(declare-fun res!631211 () Bool)

(assert (=> b!1396858 (=> res!631211 e!891997)))

(declare-datatypes ((List!14252 0))(
  ( (Nil!14186) (Cons!14186 (h!19587 Rule!4714) (t!122705 List!14252)) )
))
(declare-fun rules!2550 () List!14252)

(declare-fun exists!558 (List!14252 Int) Bool)

(assert (=> b!1396858 (= res!631211 (not (exists!558 rules!2550 lambda!60862)))))

(assert (=> b!1396858 (exists!558 rules!2550 lambda!60862)))

(declare-fun lambda!60860 () Int)

(declare-fun lt!465402 () Unit!20486)

(declare-fun lt!465407 () Regex!3771)

(declare-fun lemmaMapContains!168 (List!14252 Int Regex!3771) Unit!20486)

(assert (=> b!1396858 (= lt!465402 (lemmaMapContains!168 rules!2550 lambda!60860 lt!465407))))

(declare-fun e!891970 () Bool)

(declare-fun e!891998 () Bool)

(assert (=> b!1396859 (= e!891970 e!891998)))

(declare-fun res!631198 () Bool)

(assert (=> b!1396859 (=> res!631198 e!891998)))

(declare-fun t1!34 () Token!4576)

(declare-fun lt!465413 () List!14250)

(declare-fun matchR!1762 (Regex!3771 List!14250) Bool)

(assert (=> b!1396859 (= res!631198 (not (matchR!1762 (regex!2457 (rule!4220 t1!34)) lt!465413)))))

(declare-fun lt!465414 () Unit!20486)

(declare-fun forallContained!652 (List!14252 Int Rule!4714) Unit!20486)

(assert (=> b!1396859 (= lt!465414 (forallContained!652 rules!2550 lambda!60863 (rule!4220 t2!34)))))

(declare-fun lt!465394 () Unit!20486)

(assert (=> b!1396859 (= lt!465394 (forallContained!652 rules!2550 lambda!60863 (rule!4220 t1!34)))))

(declare-fun lt!465401 () Unit!20486)

(declare-fun lt!465410 () Rule!4714)

(assert (=> b!1396859 (= lt!465401 (forallContained!652 rules!2550 lambda!60863 lt!465410))))

(declare-fun b!1396860 () Bool)

(declare-fun res!631204 () Bool)

(assert (=> b!1396860 (=> res!631204 e!891976)))

(declare-fun lt!465400 () List!14250)

(assert (=> b!1396860 (= res!631204 (not (matchR!1762 lt!465392 lt!465400)))))

(declare-fun b!1396861 () Bool)

(declare-fun res!631192 () Bool)

(declare-fun e!891983 () Bool)

(assert (=> b!1396861 (=> (not res!631192) (not e!891983))))

(assert (=> b!1396861 (= res!631192 (not (= (isSeparator!2457 (rule!4220 t1!34)) (isSeparator!2457 (rule!4220 t2!34)))))))

(declare-fun b!1396862 () Bool)

(declare-fun res!631185 () Bool)

(assert (=> b!1396862 (=> res!631185 e!891976)))

(assert (=> b!1396862 (= res!631185 (not (contains!2753 lt!465400 lt!465397)))))

(declare-fun b!1396863 () Bool)

(declare-fun res!631210 () Bool)

(declare-fun e!891967 () Bool)

(assert (=> b!1396863 (=> res!631210 e!891967)))

(declare-datatypes ((LexerInterface!2152 0))(
  ( (LexerInterfaceExt!2149 (__x!8924 Int)) (Lexer!2150) )
))
(declare-fun thiss!19762 () LexerInterface!2152)

(declare-datatypes ((List!14253 0))(
  ( (Nil!14187) (Cons!14187 (h!19588 Token!4576) (t!122706 List!14253)) )
))
(declare-fun lt!465406 () List!14253)

(declare-fun lt!465417 () BalanceConc!9288)

(declare-datatypes ((tuple2!13802 0))(
  ( (tuple2!13803 (_1!7787 List!14253) (_2!7787 List!14250)) )
))
(declare-fun lexList!666 (LexerInterface!2152 List!14252 List!14250) tuple2!13802)

(declare-fun list!5521 (BalanceConc!9288) List!14250)

(assert (=> b!1396863 (= res!631210 (not (= (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465417)) (tuple2!13803 lt!465406 Nil!14184))))))

(declare-fun e!891994 () Bool)

(declare-fun b!1396864 () Bool)

(declare-fun tp!398091 () Bool)

(declare-fun inv!21 (TokenValue!2547) Bool)

(assert (=> b!1396864 (= e!891994 (and (inv!21 (value!79657 t2!34)) e!891995 tp!398091))))

(declare-fun b!1396865 () Bool)

(declare-fun e!891982 () Bool)

(assert (=> b!1396865 (= e!891982 e!891977)))

(declare-fun res!631215 () Bool)

(assert (=> b!1396865 (=> (not res!631215) (not e!891977))))

(declare-fun prefixMatch!280 (Regex!3771 List!14250) Bool)

(assert (=> b!1396865 (= res!631215 (prefixMatch!280 lt!465392 lt!465393))))

(declare-fun rulesRegex!340 (LexerInterface!2152 List!14252) Regex!3771)

(assert (=> b!1396865 (= lt!465392 (rulesRegex!340 thiss!19762 rules!2550))))

(declare-fun lt!465396 () C!7832)

(declare-fun ++!3688 (List!14250 List!14250) List!14250)

(assert (=> b!1396865 (= lt!465393 (++!3688 lt!465413 (Cons!14184 lt!465396 Nil!14184)))))

(declare-fun lt!465387 () BalanceConc!9288)

(assert (=> b!1396865 (= lt!465396 (apply!3593 lt!465387 0))))

(assert (=> b!1396865 (= lt!465413 (list!5521 lt!465399))))

(declare-fun charsOf!1429 (Token!4576) BalanceConc!9288)

(assert (=> b!1396865 (= lt!465399 (charsOf!1429 t1!34))))

(declare-fun b!1396866 () Bool)

(declare-fun res!631203 () Bool)

(declare-fun e!891986 () Bool)

(assert (=> b!1396866 (=> res!631203 e!891986)))

(declare-datatypes ((IArray!9355 0))(
  ( (IArray!9356 (innerList!4735 List!14253)) )
))
(declare-datatypes ((Conc!4675 0))(
  ( (Node!4675 (left!12117 Conc!4675) (right!12447 Conc!4675) (csize!9580 Int) (cheight!4886 Int)) (Leaf!7100 (xs!7402 IArray!9355) (csize!9581 Int)) (Empty!4675) )
))
(declare-datatypes ((BalanceConc!9290 0))(
  ( (BalanceConc!9291 (c!229884 Conc!4675)) )
))
(declare-datatypes ((tuple2!13804 0))(
  ( (tuple2!13805 (_1!7788 BalanceConc!9290) (_2!7788 BalanceConc!9288)) )
))
(declare-fun lt!465389 () tuple2!13804)

(declare-fun isEmpty!8608 (BalanceConc!9288) Bool)

(assert (=> b!1396866 (= res!631203 (not (isEmpty!8608 (_2!7788 lt!465389))))))

(declare-fun b!1396867 () Bool)

(declare-fun res!631202 () Bool)

(assert (=> b!1396867 (=> res!631202 e!891967)))

(declare-fun lt!465388 () tuple2!13804)

(assert (=> b!1396867 (= res!631202 (not (isEmpty!8608 (_2!7788 lt!465388))))))

(declare-fun e!891978 () Bool)

(assert (=> b!1396868 (= e!891978 (and tp!398090 tp!398085))))

(declare-fun b!1396869 () Bool)

(assert (=> b!1396869 (= e!891986 e!891970)))

(declare-fun res!631195 () Bool)

(assert (=> b!1396869 (=> res!631195 e!891970)))

(declare-datatypes ((tuple2!13806 0))(
  ( (tuple2!13807 (_1!7789 Token!4576) (_2!7789 List!14250)) )
))
(declare-datatypes ((Option!2720 0))(
  ( (None!2719) (Some!2719 (v!21631 tuple2!13806)) )
))
(declare-fun maxPrefix!1126 (LexerInterface!2152 List!14252 List!14250) Option!2720)

(assert (=> b!1396869 (= res!631195 (not (= (maxPrefix!1126 thiss!19762 rules!2550 lt!465415) (Some!2719 (tuple2!13807 t2!34 Nil!14184)))))))

(assert (=> b!1396869 (= lt!465415 (list!5521 lt!465387))))

(declare-fun e!891971 () Bool)

(assert (=> b!1396870 (= e!891976 e!891971)))

(declare-fun res!631190 () Bool)

(assert (=> b!1396870 (=> res!631190 e!891971)))

(declare-fun lambda!60861 () Int)

(declare-datatypes ((List!14254 0))(
  ( (Nil!14188) (Cons!14188 (h!19589 Regex!3771) (t!122707 List!14254)) )
))
(declare-fun exists!559 (List!14254 Int) Bool)

(declare-fun map!3146 (List!14252 Int) List!14254)

(assert (=> b!1396870 (= res!631190 (not (exists!559 (map!3146 rules!2550 lambda!60860) lambda!60861)))))

(declare-fun lt!465404 () List!14254)

(assert (=> b!1396870 (exists!559 lt!465404 lambda!60861)))

(declare-fun lt!465416 () Unit!20486)

(declare-fun matchRGenUnionSpec!182 (Regex!3771 List!14254 List!14250) Unit!20486)

(assert (=> b!1396870 (= lt!465416 (matchRGenUnionSpec!182 lt!465392 lt!465404 lt!465400))))

(assert (=> b!1396870 (= lt!465404 (map!3146 rules!2550 lambda!60860))))

(declare-fun tp!398086 () Bool)

(declare-fun e!891972 () Bool)

(declare-fun b!1396871 () Bool)

(declare-fun e!891975 () Bool)

(assert (=> b!1396871 (= e!891975 (and tp!398086 (inv!18507 (tag!2719 (rule!4220 t1!34))) (inv!18510 (transformation!2457 (rule!4220 t1!34))) e!891972))))

(declare-fun b!1396872 () Bool)

(declare-fun res!631193 () Bool)

(assert (=> b!1396872 (=> (not res!631193) (not e!891983))))

(declare-fun rulesInvariant!2022 (LexerInterface!2152 List!14252) Bool)

(assert (=> b!1396872 (= res!631193 (rulesInvariant!2022 thiss!19762 rules!2550))))

(declare-fun b!1396873 () Bool)

(declare-fun res!631214 () Bool)

(assert (=> b!1396873 (=> res!631214 e!891967)))

(declare-fun contains!2754 (List!14252 Rule!4714) Bool)

(assert (=> b!1396873 (= res!631214 (not (contains!2754 rules!2550 (rule!4220 t1!34))))))

(declare-fun b!1396874 () Bool)

(declare-fun res!631194 () Bool)

(assert (=> b!1396874 (=> (not res!631194) (not e!891983))))

(declare-fun isEmpty!8609 (List!14252) Bool)

(assert (=> b!1396874 (= res!631194 (not (isEmpty!8609 rules!2550)))))

(declare-fun b!1396875 () Bool)

(declare-fun tp!398081 () Bool)

(assert (=> b!1396875 (= e!891969 (and tp!398081 (inv!18507 (tag!2719 (h!19587 rules!2550))) (inv!18510 (transformation!2457 (h!19587 rules!2550))) e!891978))))

(declare-fun b!1396876 () Bool)

(assert (=> b!1396876 (= e!891997 e!891967)))

(declare-fun res!631200 () Bool)

(assert (=> b!1396876 (=> res!631200 e!891967)))

(declare-fun list!5522 (BalanceConc!9290) List!14253)

(assert (=> b!1396876 (= res!631200 (not (= (list!5522 (_1!7788 lt!465388)) lt!465406)))))

(assert (=> b!1396876 (= lt!465406 (Cons!14187 t1!34 Nil!14187))))

(declare-fun lex!977 (LexerInterface!2152 List!14252 BalanceConc!9288) tuple2!13804)

(assert (=> b!1396876 (= lt!465388 (lex!977 thiss!19762 rules!2550 lt!465417))))

(declare-fun print!916 (LexerInterface!2152 BalanceConc!9290) BalanceConc!9288)

(declare-fun singletonSeq!1112 (Token!4576) BalanceConc!9290)

(assert (=> b!1396876 (= lt!465417 (print!916 thiss!19762 (singletonSeq!1112 t1!34)))))

(declare-fun getWitness!446 (List!14252 Int) Rule!4714)

(assert (=> b!1396876 (= lt!465410 (getWitness!446 rules!2550 lambda!60862))))

(assert (=> b!1396877 (= e!891989 (and tp!398092 tp!398088))))

(declare-fun b!1396878 () Bool)

(declare-fun res!631207 () Bool)

(assert (=> b!1396878 (=> res!631207 e!891970)))

(assert (=> b!1396878 (= res!631207 (not (contains!2754 rules!2550 lt!465410)))))

(declare-fun b!1396879 () Bool)

(declare-fun res!631186 () Bool)

(assert (=> b!1396879 (=> (not res!631186) (not e!891983))))

(declare-fun rulesProduceIndividualToken!1121 (LexerInterface!2152 List!14252 Token!4576) Bool)

(assert (=> b!1396879 (= res!631186 (rulesProduceIndividualToken!1121 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1396880 () Bool)

(declare-fun res!631220 () Bool)

(assert (=> b!1396880 (=> (not res!631220) (not e!891982))))

(declare-fun sepAndNonSepRulesDisjointChars!830 (List!14252 List!14252) Bool)

(assert (=> b!1396880 (= res!631220 (sepAndNonSepRulesDisjointChars!830 rules!2550 rules!2550))))

(declare-fun b!1396881 () Bool)

(assert (=> b!1396881 (= e!891967 e!891986)))

(declare-fun res!631189 () Bool)

(assert (=> b!1396881 (=> res!631189 e!891986)))

(declare-fun lt!465395 () List!14253)

(assert (=> b!1396881 (= res!631189 (not (= (list!5522 (_1!7788 lt!465389)) lt!465395)))))

(assert (=> b!1396881 (= lt!465395 (Cons!14187 t2!34 Nil!14187))))

(declare-fun lt!465409 () BalanceConc!9288)

(assert (=> b!1396881 (= lt!465389 (lex!977 thiss!19762 rules!2550 lt!465409))))

(assert (=> b!1396881 (= lt!465409 (print!916 thiss!19762 (singletonSeq!1112 t2!34)))))

(declare-fun res!631201 () Bool)

(assert (=> start!127146 (=> (not res!631201) (not e!891983))))

(get-info :version)

(assert (=> start!127146 (= res!631201 ((_ is Lexer!2150) thiss!19762))))

(assert (=> start!127146 e!891983))

(assert (=> start!127146 true))

(assert (=> start!127146 e!891987))

(declare-fun e!891991 () Bool)

(declare-fun inv!18511 (Token!4576) Bool)

(assert (=> start!127146 (and (inv!18511 t1!34) e!891991)))

(assert (=> start!127146 (and (inv!18511 t2!34) e!891994)))

(declare-fun b!1396882 () Bool)

(declare-fun e!891993 () Bool)

(declare-fun e!891980 () Bool)

(assert (=> b!1396882 (= e!891993 e!891980)))

(declare-fun res!631217 () Bool)

(assert (=> b!1396882 (=> res!631217 e!891980)))

(assert (=> b!1396882 (= res!631217 (or (not (isSeparator!2457 lt!465410)) (not (isSeparator!2457 (rule!4220 t1!34)))))))

(assert (=> b!1396882 (= (regex!2457 lt!465410) lt!465407)))

(declare-fun b!1396883 () Bool)

(declare-fun res!631191 () Bool)

(assert (=> b!1396883 (=> res!631191 e!891998)))

(assert (=> b!1396883 (= res!631191 (not (matchR!1762 (regex!2457 (rule!4220 t2!34)) lt!465415)))))

(declare-fun b!1396884 () Bool)

(declare-fun e!891990 () Unit!20486)

(declare-fun Unit!20490 () Unit!20486)

(assert (=> b!1396884 (= e!891990 Unit!20490)))

(declare-fun lt!465398 () Unit!20486)

(assert (=> b!1396884 (= lt!465398 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 (regex!2457 (rule!4220 t1!34)) lt!465413 (head!2571 lt!465413)))))

(assert (=> b!1396884 false))

(assert (=> b!1396885 (= e!891972 (and tp!398089 tp!398087))))

(declare-fun b!1396886 () Bool)

(declare-fun Unit!20491 () Unit!20486)

(assert (=> b!1396886 (= e!891985 Unit!20491)))

(declare-fun b!1396887 () Bool)

(assert (=> b!1396887 (= e!891981 e!891992)))

(declare-fun res!631205 () Bool)

(assert (=> b!1396887 (=> res!631205 e!891992)))

(declare-fun getSuffix!617 (List!14250 List!14250) List!14250)

(assert (=> b!1396887 (= res!631205 (not (= lt!465400 (++!3688 lt!465393 (getSuffix!617 lt!465400 lt!465393)))))))

(declare-fun pickWitness!224 (Int) List!14250)

(assert (=> b!1396887 (= lt!465400 (pickWitness!224 lambda!60859))))

(declare-fun b!1396888 () Bool)

(declare-fun res!631216 () Bool)

(assert (=> b!1396888 (=> res!631216 e!891970)))

(assert (=> b!1396888 (= res!631216 (not (contains!2754 rules!2550 (rule!4220 t2!34))))))

(declare-fun b!1396889 () Bool)

(declare-fun tp!398083 () Bool)

(assert (=> b!1396889 (= e!891991 (and (inv!21 (value!79657 t1!34)) e!891975 tp!398083))))

(declare-fun b!1396890 () Bool)

(declare-fun res!631218 () Bool)

(assert (=> b!1396890 (=> res!631218 e!891986)))

(assert (=> b!1396890 (= res!631218 (not (= (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465409)) (tuple2!13803 lt!465395 Nil!14184))))))

(declare-fun b!1396891 () Bool)

(declare-fun res!631196 () Bool)

(assert (=> b!1396891 (=> res!631196 e!891967)))

(assert (=> b!1396891 (= res!631196 (not (= (maxPrefix!1126 thiss!19762 rules!2550 lt!465413) (Some!2719 (tuple2!13807 t1!34 Nil!14184)))))))

(declare-fun b!1396892 () Bool)

(declare-fun e!891988 () Bool)

(assert (=> b!1396892 (= e!891998 e!891988)))

(declare-fun res!631206 () Bool)

(assert (=> b!1396892 (=> res!631206 e!891988)))

(declare-fun lt!465412 () Bool)

(assert (=> b!1396892 (= res!631206 lt!465412)))

(declare-fun lt!465418 () Unit!20486)

(assert (=> b!1396892 (= lt!465418 e!891990)))

(declare-fun c!229881 () Bool)

(assert (=> b!1396892 (= c!229881 lt!465412)))

(declare-fun usedCharacters!268 (Regex!3771) List!14250)

(assert (=> b!1396892 (= lt!465412 (not (contains!2753 (usedCharacters!268 (regex!2457 (rule!4220 t1!34))) lt!465397)))))

(declare-fun b!1396893 () Bool)

(declare-fun res!631212 () Bool)

(assert (=> b!1396893 (=> res!631212 e!891976)))

(assert (=> b!1396893 (= res!631212 (not (contains!2753 lt!465393 lt!465396)))))

(declare-fun b!1396894 () Bool)

(declare-fun Unit!20492 () Unit!20486)

(assert (=> b!1396894 (= e!891990 Unit!20492)))

(declare-fun b!1396895 () Bool)

(declare-fun res!631199 () Bool)

(assert (=> b!1396895 (=> (not res!631199) (not e!891983))))

(assert (=> b!1396895 (= res!631199 (rulesProduceIndividualToken!1121 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1396896 () Bool)

(declare-fun res!631213 () Bool)

(assert (=> b!1396896 (=> (not res!631213) (not e!891982))))

(declare-fun separableTokensPredicate!435 (LexerInterface!2152 Token!4576 Token!4576 List!14252) Bool)

(assert (=> b!1396896 (= res!631213 (not (separableTokensPredicate!435 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1396897 () Bool)

(assert (=> b!1396897 (= e!891988 e!891993)))

(declare-fun res!631197 () Bool)

(assert (=> b!1396897 (=> res!631197 e!891993)))

(declare-fun lt!465408 () Bool)

(assert (=> b!1396897 (= res!631197 lt!465408)))

(declare-fun lt!465411 () Unit!20486)

(assert (=> b!1396897 (= lt!465411 e!891985)))

(declare-fun c!229880 () Bool)

(assert (=> b!1396897 (= c!229880 lt!465408)))

(assert (=> b!1396897 (= lt!465408 (not (contains!2753 (usedCharacters!268 (regex!2457 (rule!4220 t2!34))) lt!465396)))))

(declare-fun b!1396898 () Bool)

(declare-fun res!631208 () Bool)

(assert (=> b!1396898 (=> res!631208 e!891976)))

(assert (=> b!1396898 (= res!631208 (not (contains!2753 lt!465400 lt!465396)))))

(declare-fun b!1396899 () Bool)

(assert (=> b!1396899 (= e!891971 e!891968)))

(declare-fun res!631187 () Bool)

(assert (=> b!1396899 (=> res!631187 e!891968)))

(declare-fun contains!2755 (List!14254 Regex!3771) Bool)

(assert (=> b!1396899 (= res!631187 (not (contains!2755 (map!3146 rules!2550 lambda!60860) lt!465407)))))

(declare-fun getWitness!447 (List!14254 Int) Regex!3771)

(assert (=> b!1396899 (= lt!465407 (getWitness!447 (map!3146 rules!2550 lambda!60860) lambda!60861))))

(declare-fun b!1396900 () Bool)

(assert (=> b!1396900 (= e!891983 e!891982)))

(declare-fun res!631219 () Bool)

(assert (=> b!1396900 (=> (not res!631219) (not e!891982))))

(declare-fun size!11662 (BalanceConc!9288) Int)

(assert (=> b!1396900 (= res!631219 (> (size!11662 lt!465387) 0))))

(assert (=> b!1396900 (= lt!465387 (charsOf!1429 t2!34))))

(declare-fun b!1396901 () Bool)

(assert (=> b!1396901 (= e!891980 false)))

(assert (=> b!1396901 (not (matchR!1762 lt!465407 lt!465400))))

(declare-fun lt!465403 () Unit!20486)

(assert (=> b!1396901 (= lt!465403 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 lt!465407 lt!465400 lt!465396))))

(assert (=> b!1396901 (not (contains!2753 (usedCharacters!268 (regex!2457 lt!465410)) lt!465396))))

(declare-fun lt!465391 () Unit!20486)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!130 (LexerInterface!2152 List!14252 List!14252 Rule!4714 Rule!4714 C!7832) Unit!20486)

(assert (=> b!1396901 (= lt!465391 (lemmaSepRuleNotContainsCharContainedInANonSepRule!130 thiss!19762 rules!2550 rules!2550 (rule!4220 t2!34) lt!465410 lt!465396))))

(assert (= (and start!127146 res!631201) b!1396874))

(assert (= (and b!1396874 res!631194) b!1396872))

(assert (= (and b!1396872 res!631193) b!1396895))

(assert (= (and b!1396895 res!631199) b!1396879))

(assert (= (and b!1396879 res!631186) b!1396861))

(assert (= (and b!1396861 res!631192) b!1396900))

(assert (= (and b!1396900 res!631219) b!1396880))

(assert (= (and b!1396880 res!631220) b!1396896))

(assert (= (and b!1396896 res!631213) b!1396865))

(assert (= (and b!1396865 res!631215) b!1396853))

(assert (= (and b!1396853 (not res!631209)) b!1396887))

(assert (= (and b!1396887 (not res!631205)) b!1396854))

(assert (= (and b!1396854 (not res!631188)) b!1396862))

(assert (= (and b!1396862 (not res!631185)) b!1396893))

(assert (= (and b!1396893 (not res!631212)) b!1396898))

(assert (= (and b!1396898 (not res!631208)) b!1396860))

(assert (= (and b!1396860 (not res!631204)) b!1396870))

(assert (= (and b!1396870 (not res!631190)) b!1396899))

(assert (= (and b!1396899 (not res!631187)) b!1396858))

(assert (= (and b!1396858 (not res!631211)) b!1396876))

(assert (= (and b!1396876 (not res!631200)) b!1396867))

(assert (= (and b!1396867 (not res!631202)) b!1396863))

(assert (= (and b!1396863 (not res!631210)) b!1396891))

(assert (= (and b!1396891 (not res!631196)) b!1396873))

(assert (= (and b!1396873 (not res!631214)) b!1396881))

(assert (= (and b!1396881 (not res!631189)) b!1396866))

(assert (= (and b!1396866 (not res!631203)) b!1396890))

(assert (= (and b!1396890 (not res!631218)) b!1396869))

(assert (= (and b!1396869 (not res!631195)) b!1396888))

(assert (= (and b!1396888 (not res!631216)) b!1396878))

(assert (= (and b!1396878 (not res!631207)) b!1396859))

(assert (= (and b!1396859 (not res!631198)) b!1396883))

(assert (= (and b!1396883 (not res!631191)) b!1396892))

(assert (= (and b!1396892 c!229881) b!1396884))

(assert (= (and b!1396892 (not c!229881)) b!1396894))

(assert (= (and b!1396892 (not res!631206)) b!1396897))

(assert (= (and b!1396897 c!229880) b!1396855))

(assert (= (and b!1396897 (not c!229880)) b!1396886))

(assert (= (and b!1396897 (not res!631197)) b!1396882))

(assert (= (and b!1396882 (not res!631217)) b!1396901))

(assert (= b!1396875 b!1396868))

(assert (= b!1396857 b!1396875))

(assert (= (and start!127146 ((_ is Cons!14186) rules!2550)) b!1396857))

(assert (= b!1396871 b!1396885))

(assert (= b!1396889 b!1396871))

(assert (= start!127146 b!1396889))

(assert (= b!1396856 b!1396877))

(assert (= b!1396864 b!1396856))

(assert (= start!127146 b!1396864))

(declare-fun m!1573263 () Bool)

(assert (=> b!1396863 m!1573263))

(assert (=> b!1396863 m!1573263))

(declare-fun m!1573265 () Bool)

(assert (=> b!1396863 m!1573265))

(declare-fun m!1573267 () Bool)

(assert (=> b!1396855 m!1573267))

(assert (=> b!1396855 m!1573267))

(declare-fun m!1573269 () Bool)

(assert (=> b!1396855 m!1573269))

(declare-fun m!1573271 () Bool)

(assert (=> b!1396897 m!1573271))

(assert (=> b!1396897 m!1573271))

(declare-fun m!1573273 () Bool)

(assert (=> b!1396897 m!1573273))

(declare-fun m!1573275 () Bool)

(assert (=> b!1396870 m!1573275))

(assert (=> b!1396870 m!1573275))

(declare-fun m!1573277 () Bool)

(assert (=> b!1396870 m!1573277))

(declare-fun m!1573279 () Bool)

(assert (=> b!1396870 m!1573279))

(declare-fun m!1573281 () Bool)

(assert (=> b!1396870 m!1573281))

(assert (=> b!1396870 m!1573275))

(declare-fun m!1573283 () Bool)

(assert (=> b!1396864 m!1573283))

(declare-fun m!1573285 () Bool)

(assert (=> b!1396856 m!1573285))

(declare-fun m!1573287 () Bool)

(assert (=> b!1396856 m!1573287))

(declare-fun m!1573289 () Bool)

(assert (=> b!1396854 m!1573289))

(declare-fun m!1573291 () Bool)

(assert (=> b!1396854 m!1573291))

(declare-fun m!1573293 () Bool)

(assert (=> b!1396873 m!1573293))

(declare-fun m!1573295 () Bool)

(assert (=> b!1396892 m!1573295))

(assert (=> b!1396892 m!1573295))

(declare-fun m!1573297 () Bool)

(assert (=> b!1396892 m!1573297))

(declare-fun m!1573299 () Bool)

(assert (=> b!1396853 m!1573299))

(assert (=> b!1396853 m!1573299))

(declare-fun m!1573301 () Bool)

(assert (=> b!1396853 m!1573301))

(declare-fun m!1573303 () Bool)

(assert (=> b!1396900 m!1573303))

(declare-fun m!1573305 () Bool)

(assert (=> b!1396900 m!1573305))

(declare-fun m!1573307 () Bool)

(assert (=> b!1396895 m!1573307))

(declare-fun m!1573309 () Bool)

(assert (=> b!1396874 m!1573309))

(declare-fun m!1573311 () Bool)

(assert (=> b!1396860 m!1573311))

(declare-fun m!1573313 () Bool)

(assert (=> b!1396878 m!1573313))

(declare-fun m!1573315 () Bool)

(assert (=> b!1396871 m!1573315))

(declare-fun m!1573317 () Bool)

(assert (=> b!1396871 m!1573317))

(declare-fun m!1573319 () Bool)

(assert (=> b!1396901 m!1573319))

(declare-fun m!1573321 () Bool)

(assert (=> b!1396901 m!1573321))

(declare-fun m!1573323 () Bool)

(assert (=> b!1396901 m!1573323))

(declare-fun m!1573325 () Bool)

(assert (=> b!1396901 m!1573325))

(assert (=> b!1396901 m!1573321))

(declare-fun m!1573327 () Bool)

(assert (=> b!1396901 m!1573327))

(declare-fun m!1573329 () Bool)

(assert (=> b!1396876 m!1573329))

(declare-fun m!1573331 () Bool)

(assert (=> b!1396876 m!1573331))

(declare-fun m!1573333 () Bool)

(assert (=> b!1396876 m!1573333))

(assert (=> b!1396876 m!1573329))

(declare-fun m!1573335 () Bool)

(assert (=> b!1396876 m!1573335))

(declare-fun m!1573337 () Bool)

(assert (=> b!1396876 m!1573337))

(declare-fun m!1573339 () Bool)

(assert (=> b!1396862 m!1573339))

(declare-fun m!1573341 () Bool)

(assert (=> b!1396898 m!1573341))

(declare-fun m!1573343 () Bool)

(assert (=> b!1396888 m!1573343))

(declare-fun m!1573345 () Bool)

(assert (=> b!1396896 m!1573345))

(declare-fun m!1573347 () Bool)

(assert (=> b!1396887 m!1573347))

(assert (=> b!1396887 m!1573347))

(declare-fun m!1573349 () Bool)

(assert (=> b!1396887 m!1573349))

(declare-fun m!1573351 () Bool)

(assert (=> b!1396887 m!1573351))

(declare-fun m!1573353 () Bool)

(assert (=> b!1396891 m!1573353))

(declare-fun m!1573355 () Bool)

(assert (=> b!1396893 m!1573355))

(declare-fun m!1573357 () Bool)

(assert (=> b!1396858 m!1573357))

(assert (=> b!1396858 m!1573357))

(declare-fun m!1573359 () Bool)

(assert (=> b!1396858 m!1573359))

(declare-fun m!1573361 () Bool)

(assert (=> b!1396889 m!1573361))

(declare-fun m!1573363 () Bool)

(assert (=> start!127146 m!1573363))

(declare-fun m!1573365 () Bool)

(assert (=> start!127146 m!1573365))

(declare-fun m!1573367 () Bool)

(assert (=> b!1396869 m!1573367))

(declare-fun m!1573369 () Bool)

(assert (=> b!1396869 m!1573369))

(declare-fun m!1573371 () Bool)

(assert (=> b!1396883 m!1573371))

(declare-fun m!1573373 () Bool)

(assert (=> b!1396890 m!1573373))

(assert (=> b!1396890 m!1573373))

(declare-fun m!1573375 () Bool)

(assert (=> b!1396890 m!1573375))

(declare-fun m!1573377 () Bool)

(assert (=> b!1396884 m!1573377))

(assert (=> b!1396884 m!1573377))

(declare-fun m!1573379 () Bool)

(assert (=> b!1396884 m!1573379))

(declare-fun m!1573381 () Bool)

(assert (=> b!1396866 m!1573381))

(declare-fun m!1573383 () Bool)

(assert (=> b!1396875 m!1573383))

(declare-fun m!1573385 () Bool)

(assert (=> b!1396875 m!1573385))

(declare-fun m!1573387 () Bool)

(assert (=> b!1396865 m!1573387))

(declare-fun m!1573389 () Bool)

(assert (=> b!1396865 m!1573389))

(declare-fun m!1573391 () Bool)

(assert (=> b!1396865 m!1573391))

(declare-fun m!1573393 () Bool)

(assert (=> b!1396865 m!1573393))

(declare-fun m!1573395 () Bool)

(assert (=> b!1396865 m!1573395))

(declare-fun m!1573397 () Bool)

(assert (=> b!1396865 m!1573397))

(declare-fun m!1573399 () Bool)

(assert (=> b!1396859 m!1573399))

(declare-fun m!1573401 () Bool)

(assert (=> b!1396859 m!1573401))

(declare-fun m!1573403 () Bool)

(assert (=> b!1396859 m!1573403))

(declare-fun m!1573405 () Bool)

(assert (=> b!1396859 m!1573405))

(declare-fun m!1573407 () Bool)

(assert (=> b!1396881 m!1573407))

(declare-fun m!1573409 () Bool)

(assert (=> b!1396881 m!1573409))

(declare-fun m!1573411 () Bool)

(assert (=> b!1396881 m!1573411))

(assert (=> b!1396881 m!1573411))

(declare-fun m!1573413 () Bool)

(assert (=> b!1396881 m!1573413))

(declare-fun m!1573415 () Bool)

(assert (=> b!1396872 m!1573415))

(declare-fun m!1573417 () Bool)

(assert (=> b!1396867 m!1573417))

(assert (=> b!1396899 m!1573275))

(assert (=> b!1396899 m!1573275))

(declare-fun m!1573419 () Bool)

(assert (=> b!1396899 m!1573419))

(assert (=> b!1396899 m!1573275))

(assert (=> b!1396899 m!1573275))

(declare-fun m!1573421 () Bool)

(assert (=> b!1396899 m!1573421))

(declare-fun m!1573423 () Bool)

(assert (=> b!1396880 m!1573423))

(declare-fun m!1573425 () Bool)

(assert (=> b!1396879 m!1573425))

(check-sat (not b!1396871) (not b!1396854) b_and!93539 (not b_next!34699) (not b!1396855) (not b!1396899) (not b!1396887) (not b!1396879) (not b!1396856) (not b!1396889) (not b!1396870) (not b!1396866) (not b!1396862) (not b!1396876) (not b!1396881) (not b!1396857) (not b!1396880) (not b!1396869) (not b!1396897) b_and!93541 (not start!127146) (not b!1396878) (not b!1396875) (not b!1396888) (not b!1396872) b_and!93535 (not b!1396873) (not b_next!34707) (not b!1396859) (not b!1396895) (not b!1396892) b_and!93533 (not b!1396896) (not b_next!34709) (not b!1396858) (not b_next!34705) (not b!1396863) (not b!1396874) (not b!1396898) (not b!1396864) (not b!1396860) (not b!1396865) (not b!1396883) (not b!1396900) b_and!93537 (not b!1396901) b_and!93531 (not b!1396890) (not b!1396884) (not b!1396891) (not b_next!34703) (not b!1396853) (not b!1396867) (not b_next!34701) (not b!1396893))
(check-sat b_and!93539 (not b_next!34699) b_and!93541 b_and!93535 (not b_next!34707) (not b_next!34705) b_and!93537 b_and!93531 (not b_next!34703) (not b_next!34701) (not b_next!34709) b_and!93533)
(get-model)

(declare-fun b!1396989 () Bool)

(declare-fun e!892048 () tuple2!13802)

(assert (=> b!1396989 (= e!892048 (tuple2!13803 Nil!14187 (list!5521 lt!465409)))))

(declare-fun b!1396990 () Bool)

(declare-fun e!892049 () Bool)

(declare-fun e!892050 () Bool)

(assert (=> b!1396990 (= e!892049 e!892050)))

(declare-fun res!631259 () Bool)

(declare-fun lt!465434 () tuple2!13802)

(declare-fun size!11664 (List!14250) Int)

(assert (=> b!1396990 (= res!631259 (< (size!11664 (_2!7787 lt!465434)) (size!11664 (list!5521 lt!465409))))))

(assert (=> b!1396990 (=> (not res!631259) (not e!892050))))

(declare-fun b!1396991 () Bool)

(assert (=> b!1396991 (= e!892049 (= (_2!7787 lt!465434) (list!5521 lt!465409)))))

(declare-fun d!399453 () Bool)

(assert (=> d!399453 e!892049))

(declare-fun c!229907 () Bool)

(declare-fun size!11667 (List!14253) Int)

(assert (=> d!399453 (= c!229907 (> (size!11667 (_1!7787 lt!465434)) 0))))

(assert (=> d!399453 (= lt!465434 e!892048)))

(declare-fun c!229908 () Bool)

(declare-fun lt!465433 () Option!2720)

(assert (=> d!399453 (= c!229908 ((_ is Some!2719) lt!465433))))

(assert (=> d!399453 (= lt!465433 (maxPrefix!1126 thiss!19762 rules!2550 (list!5521 lt!465409)))))

(assert (=> d!399453 (= (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465409)) lt!465434)))

(declare-fun b!1396992 () Bool)

(declare-fun lt!465432 () tuple2!13802)

(assert (=> b!1396992 (= e!892048 (tuple2!13803 (Cons!14187 (_1!7789 (v!21631 lt!465433)) (_1!7787 lt!465432)) (_2!7787 lt!465432)))))

(assert (=> b!1396992 (= lt!465432 (lexList!666 thiss!19762 rules!2550 (_2!7789 (v!21631 lt!465433))))))

(declare-fun b!1396993 () Bool)

(declare-fun isEmpty!8613 (List!14253) Bool)

(assert (=> b!1396993 (= e!892050 (not (isEmpty!8613 (_1!7787 lt!465434))))))

(assert (= (and d!399453 c!229908) b!1396992))

(assert (= (and d!399453 (not c!229908)) b!1396989))

(assert (= (and d!399453 c!229907) b!1396990))

(assert (= (and d!399453 (not c!229907)) b!1396991))

(assert (= (and b!1396990 res!631259) b!1396993))

(declare-fun m!1573489 () Bool)

(assert (=> b!1396990 m!1573489))

(assert (=> b!1396990 m!1573373))

(declare-fun m!1573491 () Bool)

(assert (=> b!1396990 m!1573491))

(declare-fun m!1573493 () Bool)

(assert (=> d!399453 m!1573493))

(assert (=> d!399453 m!1573373))

(declare-fun m!1573495 () Bool)

(assert (=> d!399453 m!1573495))

(declare-fun m!1573497 () Bool)

(assert (=> b!1396992 m!1573497))

(declare-fun m!1573499 () Bool)

(assert (=> b!1396993 m!1573499))

(assert (=> b!1396890 d!399453))

(declare-fun d!399473 () Bool)

(declare-fun list!5523 (Conc!4674) List!14250)

(assert (=> d!399473 (= (list!5521 lt!465409) (list!5523 (c!229883 lt!465409)))))

(declare-fun bs!337930 () Bool)

(assert (= bs!337930 d!399473))

(declare-fun m!1573501 () Bool)

(assert (=> bs!337930 m!1573501))

(assert (=> b!1396890 d!399473))

(declare-fun b!1397116 () Bool)

(declare-fun e!892112 () Option!2720)

(declare-fun call!93326 () Option!2720)

(assert (=> b!1397116 (= e!892112 call!93326)))

(declare-fun b!1397117 () Bool)

(declare-fun res!631338 () Bool)

(declare-fun e!892113 () Bool)

(assert (=> b!1397117 (=> (not res!631338) (not e!892113))))

(declare-fun lt!465481 () Option!2720)

(declare-fun get!4393 (Option!2720) tuple2!13806)

(assert (=> b!1397117 (= res!631338 (< (size!11664 (_2!7789 (get!4393 lt!465481))) (size!11664 lt!465415)))))

(declare-fun b!1397118 () Bool)

(declare-fun lt!465480 () Option!2720)

(declare-fun lt!465478 () Option!2720)

(assert (=> b!1397118 (= e!892112 (ite (and ((_ is None!2719) lt!465480) ((_ is None!2719) lt!465478)) None!2719 (ite ((_ is None!2719) lt!465478) lt!465480 (ite ((_ is None!2719) lt!465480) lt!465478 (ite (>= (size!11661 (_1!7789 (v!21631 lt!465480))) (size!11661 (_1!7789 (v!21631 lt!465478)))) lt!465480 lt!465478)))))))

(assert (=> b!1397118 (= lt!465480 call!93326)))

(assert (=> b!1397118 (= lt!465478 (maxPrefix!1126 thiss!19762 (t!122705 rules!2550) lt!465415))))

(declare-fun b!1397119 () Bool)

(declare-fun res!631336 () Bool)

(assert (=> b!1397119 (=> (not res!631336) (not e!892113))))

(declare-fun apply!3595 (TokenValueInjection!4754 BalanceConc!9288) TokenValue!2547)

(declare-fun seqFromList!1655 (List!14250) BalanceConc!9288)

(assert (=> b!1397119 (= res!631336 (= (value!79657 (_1!7789 (get!4393 lt!465481))) (apply!3595 (transformation!2457 (rule!4220 (_1!7789 (get!4393 lt!465481)))) (seqFromList!1655 (originalCharacters!3319 (_1!7789 (get!4393 lt!465481)))))))))

(declare-fun b!1397120 () Bool)

(declare-fun res!631334 () Bool)

(assert (=> b!1397120 (=> (not res!631334) (not e!892113))))

(assert (=> b!1397120 (= res!631334 (= (list!5521 (charsOf!1429 (_1!7789 (get!4393 lt!465481)))) (originalCharacters!3319 (_1!7789 (get!4393 lt!465481)))))))

(declare-fun b!1397121 () Bool)

(assert (=> b!1397121 (= e!892113 (contains!2754 rules!2550 (rule!4220 (_1!7789 (get!4393 lt!465481)))))))

(declare-fun b!1397122 () Bool)

(declare-fun res!631332 () Bool)

(assert (=> b!1397122 (=> (not res!631332) (not e!892113))))

(assert (=> b!1397122 (= res!631332 (matchR!1762 (regex!2457 (rule!4220 (_1!7789 (get!4393 lt!465481)))) (list!5521 (charsOf!1429 (_1!7789 (get!4393 lt!465481))))))))

(declare-fun bm!93321 () Bool)

(declare-fun maxPrefixOneRule!637 (LexerInterface!2152 Rule!4714 List!14250) Option!2720)

(assert (=> bm!93321 (= call!93326 (maxPrefixOneRule!637 thiss!19762 (h!19587 rules!2550) lt!465415))))

(declare-fun b!1397123 () Bool)

(declare-fun e!892111 () Bool)

(assert (=> b!1397123 (= e!892111 e!892113)))

(declare-fun res!631335 () Bool)

(assert (=> b!1397123 (=> (not res!631335) (not e!892113))))

(declare-fun isDefined!2239 (Option!2720) Bool)

(assert (=> b!1397123 (= res!631335 (isDefined!2239 lt!465481))))

(declare-fun b!1397124 () Bool)

(declare-fun res!631337 () Bool)

(assert (=> b!1397124 (=> (not res!631337) (not e!892113))))

(assert (=> b!1397124 (= res!631337 (= (++!3688 (list!5521 (charsOf!1429 (_1!7789 (get!4393 lt!465481)))) (_2!7789 (get!4393 lt!465481))) lt!465415))))

(declare-fun d!399475 () Bool)

(assert (=> d!399475 e!892111))

(declare-fun res!631333 () Bool)

(assert (=> d!399475 (=> res!631333 e!892111)))

(declare-fun isEmpty!8614 (Option!2720) Bool)

(assert (=> d!399475 (= res!631333 (isEmpty!8614 lt!465481))))

(assert (=> d!399475 (= lt!465481 e!892112)))

(declare-fun c!229935 () Bool)

(assert (=> d!399475 (= c!229935 (and ((_ is Cons!14186) rules!2550) ((_ is Nil!14186) (t!122705 rules!2550))))))

(declare-fun lt!465479 () Unit!20486)

(declare-fun lt!465482 () Unit!20486)

(assert (=> d!399475 (= lt!465479 lt!465482)))

(declare-fun isPrefix!1152 (List!14250 List!14250) Bool)

(assert (=> d!399475 (isPrefix!1152 lt!465415 lt!465415)))

(declare-fun lemmaIsPrefixRefl!811 (List!14250 List!14250) Unit!20486)

(assert (=> d!399475 (= lt!465482 (lemmaIsPrefixRefl!811 lt!465415 lt!465415))))

(declare-fun rulesValidInductive!794 (LexerInterface!2152 List!14252) Bool)

(assert (=> d!399475 (rulesValidInductive!794 thiss!19762 rules!2550)))

(assert (=> d!399475 (= (maxPrefix!1126 thiss!19762 rules!2550 lt!465415) lt!465481)))

(assert (= (and d!399475 c!229935) b!1397116))

(assert (= (and d!399475 (not c!229935)) b!1397118))

(assert (= (or b!1397116 b!1397118) bm!93321))

(assert (= (and d!399475 (not res!631333)) b!1397123))

(assert (= (and b!1397123 res!631335) b!1397120))

(assert (= (and b!1397120 res!631334) b!1397117))

(assert (= (and b!1397117 res!631338) b!1397124))

(assert (= (and b!1397124 res!631337) b!1397119))

(assert (= (and b!1397119 res!631336) b!1397122))

(assert (= (and b!1397122 res!631332) b!1397121))

(declare-fun m!1573589 () Bool)

(assert (=> b!1397121 m!1573589))

(declare-fun m!1573591 () Bool)

(assert (=> b!1397121 m!1573591))

(assert (=> b!1397124 m!1573589))

(declare-fun m!1573593 () Bool)

(assert (=> b!1397124 m!1573593))

(assert (=> b!1397124 m!1573593))

(declare-fun m!1573595 () Bool)

(assert (=> b!1397124 m!1573595))

(assert (=> b!1397124 m!1573595))

(declare-fun m!1573597 () Bool)

(assert (=> b!1397124 m!1573597))

(declare-fun m!1573599 () Bool)

(assert (=> d!399475 m!1573599))

(declare-fun m!1573601 () Bool)

(assert (=> d!399475 m!1573601))

(declare-fun m!1573603 () Bool)

(assert (=> d!399475 m!1573603))

(declare-fun m!1573605 () Bool)

(assert (=> d!399475 m!1573605))

(assert (=> b!1397120 m!1573589))

(assert (=> b!1397120 m!1573593))

(assert (=> b!1397120 m!1573593))

(assert (=> b!1397120 m!1573595))

(assert (=> b!1397119 m!1573589))

(declare-fun m!1573607 () Bool)

(assert (=> b!1397119 m!1573607))

(assert (=> b!1397119 m!1573607))

(declare-fun m!1573609 () Bool)

(assert (=> b!1397119 m!1573609))

(assert (=> b!1397122 m!1573589))

(assert (=> b!1397122 m!1573593))

(assert (=> b!1397122 m!1573593))

(assert (=> b!1397122 m!1573595))

(assert (=> b!1397122 m!1573595))

(declare-fun m!1573611 () Bool)

(assert (=> b!1397122 m!1573611))

(declare-fun m!1573613 () Bool)

(assert (=> b!1397118 m!1573613))

(declare-fun m!1573615 () Bool)

(assert (=> bm!93321 m!1573615))

(assert (=> b!1397117 m!1573589))

(declare-fun m!1573617 () Bool)

(assert (=> b!1397117 m!1573617))

(declare-fun m!1573619 () Bool)

(assert (=> b!1397117 m!1573619))

(declare-fun m!1573621 () Bool)

(assert (=> b!1397123 m!1573621))

(assert (=> b!1396869 d!399475))

(declare-fun d!399493 () Bool)

(assert (=> d!399493 (= (list!5521 lt!465387) (list!5523 (c!229883 lt!465387)))))

(declare-fun bs!337932 () Bool)

(assert (= bs!337932 d!399493))

(declare-fun m!1573623 () Bool)

(assert (=> bs!337932 m!1573623))

(assert (=> b!1396869 d!399493))

(declare-fun b!1397125 () Bool)

(declare-fun e!892115 () Option!2720)

(declare-fun call!93327 () Option!2720)

(assert (=> b!1397125 (= e!892115 call!93327)))

(declare-fun b!1397126 () Bool)

(declare-fun res!631345 () Bool)

(declare-fun e!892116 () Bool)

(assert (=> b!1397126 (=> (not res!631345) (not e!892116))))

(declare-fun lt!465486 () Option!2720)

(assert (=> b!1397126 (= res!631345 (< (size!11664 (_2!7789 (get!4393 lt!465486))) (size!11664 lt!465413)))))

(declare-fun b!1397127 () Bool)

(declare-fun lt!465485 () Option!2720)

(declare-fun lt!465483 () Option!2720)

(assert (=> b!1397127 (= e!892115 (ite (and ((_ is None!2719) lt!465485) ((_ is None!2719) lt!465483)) None!2719 (ite ((_ is None!2719) lt!465483) lt!465485 (ite ((_ is None!2719) lt!465485) lt!465483 (ite (>= (size!11661 (_1!7789 (v!21631 lt!465485))) (size!11661 (_1!7789 (v!21631 lt!465483)))) lt!465485 lt!465483)))))))

(assert (=> b!1397127 (= lt!465485 call!93327)))

(assert (=> b!1397127 (= lt!465483 (maxPrefix!1126 thiss!19762 (t!122705 rules!2550) lt!465413))))

(declare-fun b!1397128 () Bool)

(declare-fun res!631343 () Bool)

(assert (=> b!1397128 (=> (not res!631343) (not e!892116))))

(assert (=> b!1397128 (= res!631343 (= (value!79657 (_1!7789 (get!4393 lt!465486))) (apply!3595 (transformation!2457 (rule!4220 (_1!7789 (get!4393 lt!465486)))) (seqFromList!1655 (originalCharacters!3319 (_1!7789 (get!4393 lt!465486)))))))))

(declare-fun b!1397129 () Bool)

(declare-fun res!631341 () Bool)

(assert (=> b!1397129 (=> (not res!631341) (not e!892116))))

(assert (=> b!1397129 (= res!631341 (= (list!5521 (charsOf!1429 (_1!7789 (get!4393 lt!465486)))) (originalCharacters!3319 (_1!7789 (get!4393 lt!465486)))))))

(declare-fun b!1397130 () Bool)

(assert (=> b!1397130 (= e!892116 (contains!2754 rules!2550 (rule!4220 (_1!7789 (get!4393 lt!465486)))))))

(declare-fun b!1397131 () Bool)

(declare-fun res!631339 () Bool)

(assert (=> b!1397131 (=> (not res!631339) (not e!892116))))

(assert (=> b!1397131 (= res!631339 (matchR!1762 (regex!2457 (rule!4220 (_1!7789 (get!4393 lt!465486)))) (list!5521 (charsOf!1429 (_1!7789 (get!4393 lt!465486))))))))

(declare-fun bm!93322 () Bool)

(assert (=> bm!93322 (= call!93327 (maxPrefixOneRule!637 thiss!19762 (h!19587 rules!2550) lt!465413))))

(declare-fun b!1397132 () Bool)

(declare-fun e!892114 () Bool)

(assert (=> b!1397132 (= e!892114 e!892116)))

(declare-fun res!631342 () Bool)

(assert (=> b!1397132 (=> (not res!631342) (not e!892116))))

(assert (=> b!1397132 (= res!631342 (isDefined!2239 lt!465486))))

(declare-fun b!1397133 () Bool)

(declare-fun res!631344 () Bool)

(assert (=> b!1397133 (=> (not res!631344) (not e!892116))))

(assert (=> b!1397133 (= res!631344 (= (++!3688 (list!5521 (charsOf!1429 (_1!7789 (get!4393 lt!465486)))) (_2!7789 (get!4393 lt!465486))) lt!465413))))

(declare-fun d!399495 () Bool)

(assert (=> d!399495 e!892114))

(declare-fun res!631340 () Bool)

(assert (=> d!399495 (=> res!631340 e!892114)))

(assert (=> d!399495 (= res!631340 (isEmpty!8614 lt!465486))))

(assert (=> d!399495 (= lt!465486 e!892115)))

(declare-fun c!229936 () Bool)

(assert (=> d!399495 (= c!229936 (and ((_ is Cons!14186) rules!2550) ((_ is Nil!14186) (t!122705 rules!2550))))))

(declare-fun lt!465484 () Unit!20486)

(declare-fun lt!465487 () Unit!20486)

(assert (=> d!399495 (= lt!465484 lt!465487)))

(assert (=> d!399495 (isPrefix!1152 lt!465413 lt!465413)))

(assert (=> d!399495 (= lt!465487 (lemmaIsPrefixRefl!811 lt!465413 lt!465413))))

(assert (=> d!399495 (rulesValidInductive!794 thiss!19762 rules!2550)))

(assert (=> d!399495 (= (maxPrefix!1126 thiss!19762 rules!2550 lt!465413) lt!465486)))

(assert (= (and d!399495 c!229936) b!1397125))

(assert (= (and d!399495 (not c!229936)) b!1397127))

(assert (= (or b!1397125 b!1397127) bm!93322))

(assert (= (and d!399495 (not res!631340)) b!1397132))

(assert (= (and b!1397132 res!631342) b!1397129))

(assert (= (and b!1397129 res!631341) b!1397126))

(assert (= (and b!1397126 res!631345) b!1397133))

(assert (= (and b!1397133 res!631344) b!1397128))

(assert (= (and b!1397128 res!631343) b!1397131))

(assert (= (and b!1397131 res!631339) b!1397130))

(declare-fun m!1573625 () Bool)

(assert (=> b!1397130 m!1573625))

(declare-fun m!1573627 () Bool)

(assert (=> b!1397130 m!1573627))

(assert (=> b!1397133 m!1573625))

(declare-fun m!1573629 () Bool)

(assert (=> b!1397133 m!1573629))

(assert (=> b!1397133 m!1573629))

(declare-fun m!1573631 () Bool)

(assert (=> b!1397133 m!1573631))

(assert (=> b!1397133 m!1573631))

(declare-fun m!1573633 () Bool)

(assert (=> b!1397133 m!1573633))

(declare-fun m!1573635 () Bool)

(assert (=> d!399495 m!1573635))

(declare-fun m!1573637 () Bool)

(assert (=> d!399495 m!1573637))

(declare-fun m!1573639 () Bool)

(assert (=> d!399495 m!1573639))

(assert (=> d!399495 m!1573605))

(assert (=> b!1397129 m!1573625))

(assert (=> b!1397129 m!1573629))

(assert (=> b!1397129 m!1573629))

(assert (=> b!1397129 m!1573631))

(assert (=> b!1397128 m!1573625))

(declare-fun m!1573641 () Bool)

(assert (=> b!1397128 m!1573641))

(assert (=> b!1397128 m!1573641))

(declare-fun m!1573643 () Bool)

(assert (=> b!1397128 m!1573643))

(assert (=> b!1397131 m!1573625))

(assert (=> b!1397131 m!1573629))

(assert (=> b!1397131 m!1573629))

(assert (=> b!1397131 m!1573631))

(assert (=> b!1397131 m!1573631))

(declare-fun m!1573645 () Bool)

(assert (=> b!1397131 m!1573645))

(declare-fun m!1573647 () Bool)

(assert (=> b!1397127 m!1573647))

(declare-fun m!1573649 () Bool)

(assert (=> bm!93322 m!1573649))

(assert (=> b!1397126 m!1573625))

(declare-fun m!1573651 () Bool)

(assert (=> b!1397126 m!1573651))

(declare-fun m!1573653 () Bool)

(assert (=> b!1397126 m!1573653))

(declare-fun m!1573655 () Bool)

(assert (=> b!1397132 m!1573655))

(assert (=> b!1396891 d!399495))

(declare-fun bs!337933 () Bool)

(declare-fun d!399497 () Bool)

(assert (= bs!337933 (and d!399497 b!1396870)))

(declare-fun lambda!60866 () Int)

(assert (=> bs!337933 (not (= lambda!60866 lambda!60861))))

(assert (=> d!399497 true))

(declare-fun order!8679 () Int)

(declare-fun dynLambda!6540 (Int Int) Int)

(assert (=> d!399497 (< (dynLambda!6540 order!8679 lambda!60861) (dynLambda!6540 order!8679 lambda!60866))))

(declare-fun forall!3444 (List!14254 Int) Bool)

(assert (=> d!399497 (= (exists!559 lt!465404 lambda!60861) (not (forall!3444 lt!465404 lambda!60866)))))

(declare-fun bs!337934 () Bool)

(assert (= bs!337934 d!399497))

(declare-fun m!1573657 () Bool)

(assert (=> bs!337934 m!1573657))

(assert (=> b!1396870 d!399497))

(declare-fun bs!337935 () Bool)

(declare-fun d!399499 () Bool)

(assert (= bs!337935 (and d!399499 b!1396870)))

(declare-fun lambda!60871 () Int)

(assert (=> bs!337935 (not (= lambda!60871 lambda!60861))))

(declare-fun bs!337936 () Bool)

(assert (= bs!337936 (and d!399499 d!399497)))

(assert (=> bs!337936 (not (= lambda!60871 lambda!60866))))

(declare-fun lambda!60872 () Int)

(assert (=> bs!337935 (= lambda!60872 lambda!60861)))

(assert (=> bs!337936 (not (= lambda!60872 lambda!60866))))

(declare-fun bs!337937 () Bool)

(assert (= bs!337937 d!399499))

(assert (=> bs!337937 (not (= lambda!60872 lambda!60871))))

(assert (=> d!399499 true))

(assert (=> d!399499 (= (matchR!1762 lt!465392 lt!465400) (exists!559 lt!465404 lambda!60872))))

(declare-fun lt!465490 () Unit!20486)

(declare-fun choose!8593 (Regex!3771 List!14254 List!14250) Unit!20486)

(assert (=> d!399499 (= lt!465490 (choose!8593 lt!465392 lt!465404 lt!465400))))

(assert (=> d!399499 (forall!3444 lt!465404 lambda!60871)))

(assert (=> d!399499 (= (matchRGenUnionSpec!182 lt!465392 lt!465404 lt!465400) lt!465490)))

(assert (=> bs!337937 m!1573311))

(declare-fun m!1573659 () Bool)

(assert (=> bs!337937 m!1573659))

(declare-fun m!1573661 () Bool)

(assert (=> bs!337937 m!1573661))

(declare-fun m!1573663 () Bool)

(assert (=> bs!337937 m!1573663))

(assert (=> b!1396870 d!399499))

(declare-fun d!399501 () Bool)

(declare-fun lt!465493 () List!14254)

(declare-fun size!11670 (List!14254) Int)

(declare-fun size!11671 (List!14252) Int)

(assert (=> d!399501 (= (size!11670 lt!465493) (size!11671 rules!2550))))

(declare-fun e!892121 () List!14254)

(assert (=> d!399501 (= lt!465493 e!892121)))

(declare-fun c!229939 () Bool)

(assert (=> d!399501 (= c!229939 ((_ is Nil!14186) rules!2550))))

(assert (=> d!399501 (= (map!3146 rules!2550 lambda!60860) lt!465493)))

(declare-fun b!1397142 () Bool)

(assert (=> b!1397142 (= e!892121 Nil!14188)))

(declare-fun b!1397143 () Bool)

(declare-fun $colon$colon!227 (List!14254 Regex!3771) List!14254)

(declare-fun dynLambda!6541 (Int Rule!4714) Regex!3771)

(assert (=> b!1397143 (= e!892121 ($colon$colon!227 (map!3146 (t!122705 rules!2550) lambda!60860) (dynLambda!6541 lambda!60860 (h!19587 rules!2550))))))

(assert (= (and d!399501 c!229939) b!1397142))

(assert (= (and d!399501 (not c!229939)) b!1397143))

(declare-fun b_lambda!43717 () Bool)

(assert (=> (not b_lambda!43717) (not b!1397143)))

(declare-fun m!1573665 () Bool)

(assert (=> d!399501 m!1573665))

(declare-fun m!1573667 () Bool)

(assert (=> d!399501 m!1573667))

(declare-fun m!1573669 () Bool)

(assert (=> b!1397143 m!1573669))

(declare-fun m!1573671 () Bool)

(assert (=> b!1397143 m!1573671))

(assert (=> b!1397143 m!1573669))

(assert (=> b!1397143 m!1573671))

(declare-fun m!1573673 () Bool)

(assert (=> b!1397143 m!1573673))

(assert (=> b!1396870 d!399501))

(declare-fun bs!337938 () Bool)

(declare-fun d!399503 () Bool)

(assert (= bs!337938 (and d!399503 b!1396870)))

(declare-fun lambda!60873 () Int)

(assert (=> bs!337938 (not (= lambda!60873 lambda!60861))))

(declare-fun bs!337939 () Bool)

(assert (= bs!337939 (and d!399503 d!399497)))

(assert (=> bs!337939 (= lambda!60873 lambda!60866)))

(declare-fun bs!337940 () Bool)

(assert (= bs!337940 (and d!399503 d!399499)))

(assert (=> bs!337940 (not (= lambda!60873 lambda!60871))))

(assert (=> bs!337940 (not (= lambda!60873 lambda!60872))))

(assert (=> d!399503 true))

(assert (=> d!399503 (< (dynLambda!6540 order!8679 lambda!60861) (dynLambda!6540 order!8679 lambda!60873))))

(assert (=> d!399503 (= (exists!559 (map!3146 rules!2550 lambda!60860) lambda!60861) (not (forall!3444 (map!3146 rules!2550 lambda!60860) lambda!60873)))))

(declare-fun bs!337941 () Bool)

(assert (= bs!337941 d!399503))

(assert (=> bs!337941 m!1573275))

(declare-fun m!1573675 () Bool)

(assert (=> bs!337941 m!1573675))

(assert (=> b!1396870 d!399503))

(declare-fun d!399505 () Bool)

(declare-fun e!892126 () Bool)

(assert (=> d!399505 e!892126))

(declare-fun res!631352 () Bool)

(assert (=> d!399505 (=> (not res!631352) (not e!892126))))

(declare-fun lt!465496 () List!14250)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2096 (List!14250) (InoxSet C!7832))

(assert (=> d!399505 (= res!631352 (= (content!2096 lt!465496) ((_ map or) (content!2096 lt!465393) (content!2096 (getSuffix!617 lt!465400 lt!465393)))))))

(declare-fun e!892127 () List!14250)

(assert (=> d!399505 (= lt!465496 e!892127)))

(declare-fun c!229942 () Bool)

(assert (=> d!399505 (= c!229942 ((_ is Nil!14184) lt!465393))))

(assert (=> d!399505 (= (++!3688 lt!465393 (getSuffix!617 lt!465400 lt!465393)) lt!465496)))

(declare-fun b!1397154 () Bool)

(declare-fun res!631353 () Bool)

(assert (=> b!1397154 (=> (not res!631353) (not e!892126))))

(assert (=> b!1397154 (= res!631353 (= (size!11664 lt!465496) (+ (size!11664 lt!465393) (size!11664 (getSuffix!617 lt!465400 lt!465393)))))))

(declare-fun b!1397152 () Bool)

(assert (=> b!1397152 (= e!892127 (getSuffix!617 lt!465400 lt!465393))))

(declare-fun b!1397153 () Bool)

(assert (=> b!1397153 (= e!892127 (Cons!14184 (h!19585 lt!465393) (++!3688 (t!122703 lt!465393) (getSuffix!617 lt!465400 lt!465393))))))

(declare-fun b!1397155 () Bool)

(assert (=> b!1397155 (= e!892126 (or (not (= (getSuffix!617 lt!465400 lt!465393) Nil!14184)) (= lt!465496 lt!465393)))))

(assert (= (and d!399505 c!229942) b!1397152))

(assert (= (and d!399505 (not c!229942)) b!1397153))

(assert (= (and d!399505 res!631352) b!1397154))

(assert (= (and b!1397154 res!631353) b!1397155))

(declare-fun m!1573677 () Bool)

(assert (=> d!399505 m!1573677))

(declare-fun m!1573679 () Bool)

(assert (=> d!399505 m!1573679))

(assert (=> d!399505 m!1573347))

(declare-fun m!1573681 () Bool)

(assert (=> d!399505 m!1573681))

(declare-fun m!1573683 () Bool)

(assert (=> b!1397154 m!1573683))

(declare-fun m!1573685 () Bool)

(assert (=> b!1397154 m!1573685))

(assert (=> b!1397154 m!1573347))

(declare-fun m!1573687 () Bool)

(assert (=> b!1397154 m!1573687))

(assert (=> b!1397153 m!1573347))

(declare-fun m!1573689 () Bool)

(assert (=> b!1397153 m!1573689))

(assert (=> b!1396887 d!399505))

(declare-fun d!399507 () Bool)

(declare-fun lt!465499 () List!14250)

(assert (=> d!399507 (= (++!3688 lt!465393 lt!465499) lt!465400)))

(declare-fun e!892130 () List!14250)

(assert (=> d!399507 (= lt!465499 e!892130)))

(declare-fun c!229945 () Bool)

(assert (=> d!399507 (= c!229945 ((_ is Cons!14184) lt!465393))))

(assert (=> d!399507 (>= (size!11664 lt!465400) (size!11664 lt!465393))))

(assert (=> d!399507 (= (getSuffix!617 lt!465400 lt!465393) lt!465499)))

(declare-fun b!1397160 () Bool)

(declare-fun tail!2030 (List!14250) List!14250)

(assert (=> b!1397160 (= e!892130 (getSuffix!617 (tail!2030 lt!465400) (t!122703 lt!465393)))))

(declare-fun b!1397161 () Bool)

(assert (=> b!1397161 (= e!892130 lt!465400)))

(assert (= (and d!399507 c!229945) b!1397160))

(assert (= (and d!399507 (not c!229945)) b!1397161))

(declare-fun m!1573691 () Bool)

(assert (=> d!399507 m!1573691))

(declare-fun m!1573693 () Bool)

(assert (=> d!399507 m!1573693))

(assert (=> d!399507 m!1573685))

(declare-fun m!1573695 () Bool)

(assert (=> b!1397160 m!1573695))

(assert (=> b!1397160 m!1573695))

(declare-fun m!1573697 () Bool)

(assert (=> b!1397160 m!1573697))

(assert (=> b!1396887 d!399507))

(declare-fun d!399509 () Bool)

(declare-fun lt!465502 () List!14250)

(declare-fun dynLambda!6542 (Int List!14250) Bool)

(assert (=> d!399509 (dynLambda!6542 lambda!60859 lt!465502)))

(declare-fun choose!8594 (Int) List!14250)

(assert (=> d!399509 (= lt!465502 (choose!8594 lambda!60859))))

(assert (=> d!399509 (Exists!921 lambda!60859)))

(assert (=> d!399509 (= (pickWitness!224 lambda!60859) lt!465502)))

(declare-fun b_lambda!43719 () Bool)

(assert (=> (not b_lambda!43719) (not d!399509)))

(declare-fun bs!337942 () Bool)

(assert (= bs!337942 d!399509))

(declare-fun m!1573699 () Bool)

(assert (=> bs!337942 m!1573699))

(declare-fun m!1573701 () Bool)

(assert (=> bs!337942 m!1573701))

(assert (=> bs!337942 m!1573299))

(assert (=> b!1396887 d!399509))

(declare-fun d!399511 () Bool)

(declare-fun lt!465505 () Bool)

(declare-fun isEmpty!8615 (List!14250) Bool)

(assert (=> d!399511 (= lt!465505 (isEmpty!8615 (list!5521 (_2!7788 lt!465389))))))

(declare-fun isEmpty!8616 (Conc!4674) Bool)

(assert (=> d!399511 (= lt!465505 (isEmpty!8616 (c!229883 (_2!7788 lt!465389))))))

(assert (=> d!399511 (= (isEmpty!8608 (_2!7788 lt!465389)) lt!465505)))

(declare-fun bs!337943 () Bool)

(assert (= bs!337943 d!399511))

(declare-fun m!1573703 () Bool)

(assert (=> bs!337943 m!1573703))

(assert (=> bs!337943 m!1573703))

(declare-fun m!1573705 () Bool)

(assert (=> bs!337943 m!1573705))

(declare-fun m!1573707 () Bool)

(assert (=> bs!337943 m!1573707))

(assert (=> b!1396866 d!399511))

(declare-fun d!399513 () Bool)

(declare-fun lt!465508 () Bool)

(declare-fun content!2098 (List!14252) (InoxSet Rule!4714))

(assert (=> d!399513 (= lt!465508 (select (content!2098 rules!2550) (rule!4220 t2!34)))))

(declare-fun e!892135 () Bool)

(assert (=> d!399513 (= lt!465508 e!892135)))

(declare-fun res!631358 () Bool)

(assert (=> d!399513 (=> (not res!631358) (not e!892135))))

(assert (=> d!399513 (= res!631358 ((_ is Cons!14186) rules!2550))))

(assert (=> d!399513 (= (contains!2754 rules!2550 (rule!4220 t2!34)) lt!465508)))

(declare-fun b!1397166 () Bool)

(declare-fun e!892136 () Bool)

(assert (=> b!1397166 (= e!892135 e!892136)))

(declare-fun res!631359 () Bool)

(assert (=> b!1397166 (=> res!631359 e!892136)))

(assert (=> b!1397166 (= res!631359 (= (h!19587 rules!2550) (rule!4220 t2!34)))))

(declare-fun b!1397167 () Bool)

(assert (=> b!1397167 (= e!892136 (contains!2754 (t!122705 rules!2550) (rule!4220 t2!34)))))

(assert (= (and d!399513 res!631358) b!1397166))

(assert (= (and b!1397166 (not res!631359)) b!1397167))

(declare-fun m!1573709 () Bool)

(assert (=> d!399513 m!1573709))

(declare-fun m!1573711 () Bool)

(assert (=> d!399513 m!1573711))

(declare-fun m!1573713 () Bool)

(assert (=> b!1397167 m!1573713))

(assert (=> b!1396888 d!399513))

(declare-fun d!399515 () Bool)

(declare-fun lt!465509 () Bool)

(assert (=> d!399515 (= lt!465509 (isEmpty!8615 (list!5521 (_2!7788 lt!465388))))))

(assert (=> d!399515 (= lt!465509 (isEmpty!8616 (c!229883 (_2!7788 lt!465388))))))

(assert (=> d!399515 (= (isEmpty!8608 (_2!7788 lt!465388)) lt!465509)))

(declare-fun bs!337944 () Bool)

(assert (= bs!337944 d!399515))

(declare-fun m!1573715 () Bool)

(assert (=> bs!337944 m!1573715))

(assert (=> bs!337944 m!1573715))

(declare-fun m!1573717 () Bool)

(assert (=> bs!337944 m!1573717))

(declare-fun m!1573719 () Bool)

(assert (=> bs!337944 m!1573719))

(assert (=> b!1396867 d!399515))

(declare-fun b!1397178 () Bool)

(declare-fun res!631362 () Bool)

(declare-fun e!892144 () Bool)

(assert (=> b!1397178 (=> res!631362 e!892144)))

(assert (=> b!1397178 (= res!631362 (not ((_ is IntegerValue!7643) (value!79657 t1!34))))))

(declare-fun e!892143 () Bool)

(assert (=> b!1397178 (= e!892143 e!892144)))

(declare-fun b!1397180 () Bool)

(declare-fun inv!17 (TokenValue!2547) Bool)

(assert (=> b!1397180 (= e!892143 (inv!17 (value!79657 t1!34)))))

(declare-fun b!1397181 () Bool)

(declare-fun inv!15 (TokenValue!2547) Bool)

(assert (=> b!1397181 (= e!892144 (inv!15 (value!79657 t1!34)))))

(declare-fun b!1397182 () Bool)

(declare-fun e!892145 () Bool)

(assert (=> b!1397182 (= e!892145 e!892143)))

(declare-fun c!229950 () Bool)

(assert (=> b!1397182 (= c!229950 ((_ is IntegerValue!7642) (value!79657 t1!34)))))

(declare-fun b!1397179 () Bool)

(declare-fun inv!16 (TokenValue!2547) Bool)

(assert (=> b!1397179 (= e!892145 (inv!16 (value!79657 t1!34)))))

(declare-fun d!399517 () Bool)

(declare-fun c!229951 () Bool)

(assert (=> d!399517 (= c!229951 ((_ is IntegerValue!7641) (value!79657 t1!34)))))

(assert (=> d!399517 (= (inv!21 (value!79657 t1!34)) e!892145)))

(assert (= (and d!399517 c!229951) b!1397179))

(assert (= (and d!399517 (not c!229951)) b!1397182))

(assert (= (and b!1397182 c!229950) b!1397180))

(assert (= (and b!1397182 (not c!229950)) b!1397178))

(assert (= (and b!1397178 (not res!631362)) b!1397181))

(declare-fun m!1573721 () Bool)

(assert (=> b!1397180 m!1573721))

(declare-fun m!1573723 () Bool)

(assert (=> b!1397181 m!1573723))

(declare-fun m!1573725 () Bool)

(assert (=> b!1397179 m!1573725))

(assert (=> b!1396889 d!399517))

(declare-fun d!399519 () Bool)

(assert (=> d!399519 (not (matchR!1762 (regex!2457 (rule!4220 t1!34)) lt!465413))))

(declare-fun lt!465516 () Unit!20486)

(declare-fun choose!8595 (Regex!3771 List!14250 C!7832) Unit!20486)

(assert (=> d!399519 (= lt!465516 (choose!8595 (regex!2457 (rule!4220 t1!34)) lt!465413 (head!2571 lt!465413)))))

(declare-fun validRegex!1647 (Regex!3771) Bool)

(assert (=> d!399519 (validRegex!1647 (regex!2457 (rule!4220 t1!34)))))

(assert (=> d!399519 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 (regex!2457 (rule!4220 t1!34)) lt!465413 (head!2571 lt!465413)) lt!465516)))

(declare-fun bs!337945 () Bool)

(assert (= bs!337945 d!399519))

(assert (=> bs!337945 m!1573399))

(assert (=> bs!337945 m!1573377))

(declare-fun m!1573727 () Bool)

(assert (=> bs!337945 m!1573727))

(declare-fun m!1573729 () Bool)

(assert (=> bs!337945 m!1573729))

(assert (=> b!1396884 d!399519))

(declare-fun d!399521 () Bool)

(assert (=> d!399521 (= (head!2571 lt!465413) (h!19585 lt!465413))))

(assert (=> b!1396884 d!399521))

(declare-fun b!1397189 () Bool)

(declare-fun e!892150 () tuple2!13802)

(assert (=> b!1397189 (= e!892150 (tuple2!13803 Nil!14187 (list!5521 lt!465417)))))

(declare-fun b!1397190 () Bool)

(declare-fun e!892151 () Bool)

(declare-fun e!892152 () Bool)

(assert (=> b!1397190 (= e!892151 e!892152)))

(declare-fun res!631369 () Bool)

(declare-fun lt!465519 () tuple2!13802)

(assert (=> b!1397190 (= res!631369 (< (size!11664 (_2!7787 lt!465519)) (size!11664 (list!5521 lt!465417))))))

(assert (=> b!1397190 (=> (not res!631369) (not e!892152))))

(declare-fun b!1397191 () Bool)

(assert (=> b!1397191 (= e!892151 (= (_2!7787 lt!465519) (list!5521 lt!465417)))))

(declare-fun d!399523 () Bool)

(assert (=> d!399523 e!892151))

(declare-fun c!229953 () Bool)

(assert (=> d!399523 (= c!229953 (> (size!11667 (_1!7787 lt!465519)) 0))))

(assert (=> d!399523 (= lt!465519 e!892150)))

(declare-fun c!229954 () Bool)

(declare-fun lt!465518 () Option!2720)

(assert (=> d!399523 (= c!229954 ((_ is Some!2719) lt!465518))))

(assert (=> d!399523 (= lt!465518 (maxPrefix!1126 thiss!19762 rules!2550 (list!5521 lt!465417)))))

(assert (=> d!399523 (= (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465417)) lt!465519)))

(declare-fun b!1397192 () Bool)

(declare-fun lt!465517 () tuple2!13802)

(assert (=> b!1397192 (= e!892150 (tuple2!13803 (Cons!14187 (_1!7789 (v!21631 lt!465518)) (_1!7787 lt!465517)) (_2!7787 lt!465517)))))

(assert (=> b!1397192 (= lt!465517 (lexList!666 thiss!19762 rules!2550 (_2!7789 (v!21631 lt!465518))))))

(declare-fun b!1397193 () Bool)

(assert (=> b!1397193 (= e!892152 (not (isEmpty!8613 (_1!7787 lt!465519))))))

(assert (= (and d!399523 c!229954) b!1397192))

(assert (= (and d!399523 (not c!229954)) b!1397189))

(assert (= (and d!399523 c!229953) b!1397190))

(assert (= (and d!399523 (not c!229953)) b!1397191))

(assert (= (and b!1397190 res!631369) b!1397193))

(declare-fun m!1573731 () Bool)

(assert (=> b!1397190 m!1573731))

(assert (=> b!1397190 m!1573263))

(declare-fun m!1573733 () Bool)

(assert (=> b!1397190 m!1573733))

(declare-fun m!1573735 () Bool)

(assert (=> d!399523 m!1573735))

(assert (=> d!399523 m!1573263))

(declare-fun m!1573737 () Bool)

(assert (=> d!399523 m!1573737))

(declare-fun m!1573739 () Bool)

(assert (=> b!1397192 m!1573739))

(declare-fun m!1573741 () Bool)

(assert (=> b!1397193 m!1573741))

(assert (=> b!1396863 d!399523))

(declare-fun d!399525 () Bool)

(assert (=> d!399525 (= (list!5521 lt!465417) (list!5523 (c!229883 lt!465417)))))

(declare-fun bs!337946 () Bool)

(assert (= bs!337946 d!399525))

(declare-fun m!1573743 () Bool)

(assert (=> bs!337946 m!1573743))

(assert (=> b!1396863 d!399525))

(declare-fun b!1397194 () Bool)

(declare-fun res!631370 () Bool)

(declare-fun e!892154 () Bool)

(assert (=> b!1397194 (=> res!631370 e!892154)))

(assert (=> b!1397194 (= res!631370 (not ((_ is IntegerValue!7643) (value!79657 t2!34))))))

(declare-fun e!892153 () Bool)

(assert (=> b!1397194 (= e!892153 e!892154)))

(declare-fun b!1397196 () Bool)

(assert (=> b!1397196 (= e!892153 (inv!17 (value!79657 t2!34)))))

(declare-fun b!1397197 () Bool)

(assert (=> b!1397197 (= e!892154 (inv!15 (value!79657 t2!34)))))

(declare-fun b!1397198 () Bool)

(declare-fun e!892155 () Bool)

(assert (=> b!1397198 (= e!892155 e!892153)))

(declare-fun c!229955 () Bool)

(assert (=> b!1397198 (= c!229955 ((_ is IntegerValue!7642) (value!79657 t2!34)))))

(declare-fun b!1397195 () Bool)

(assert (=> b!1397195 (= e!892155 (inv!16 (value!79657 t2!34)))))

(declare-fun d!399527 () Bool)

(declare-fun c!229956 () Bool)

(assert (=> d!399527 (= c!229956 ((_ is IntegerValue!7641) (value!79657 t2!34)))))

(assert (=> d!399527 (= (inv!21 (value!79657 t2!34)) e!892155)))

(assert (= (and d!399527 c!229956) b!1397195))

(assert (= (and d!399527 (not c!229956)) b!1397198))

(assert (= (and b!1397198 c!229955) b!1397196))

(assert (= (and b!1397198 (not c!229955)) b!1397194))

(assert (= (and b!1397194 (not res!631370)) b!1397197))

(declare-fun m!1573745 () Bool)

(assert (=> b!1397196 m!1573745))

(declare-fun m!1573747 () Bool)

(assert (=> b!1397197 m!1573747))

(declare-fun m!1573749 () Bool)

(assert (=> b!1397195 m!1573749))

(assert (=> b!1396864 d!399527))

(declare-fun d!399529 () Bool)

(declare-fun lt!465529 () C!7832)

(declare-fun apply!3599 (List!14250 Int) C!7832)

(assert (=> d!399529 (= lt!465529 (apply!3599 (list!5521 lt!465387) 0))))

(declare-fun apply!3600 (Conc!4674 Int) C!7832)

(assert (=> d!399529 (= lt!465529 (apply!3600 (c!229883 lt!465387) 0))))

(declare-fun e!892160 () Bool)

(assert (=> d!399529 e!892160))

(declare-fun res!631376 () Bool)

(assert (=> d!399529 (=> (not res!631376) (not e!892160))))

(assert (=> d!399529 (= res!631376 (<= 0 0))))

(assert (=> d!399529 (= (apply!3593 lt!465387 0) lt!465529)))

(declare-fun b!1397204 () Bool)

(assert (=> b!1397204 (= e!892160 (< 0 (size!11662 lt!465387)))))

(assert (= (and d!399529 res!631376) b!1397204))

(assert (=> d!399529 m!1573369))

(assert (=> d!399529 m!1573369))

(declare-fun m!1573769 () Bool)

(assert (=> d!399529 m!1573769))

(declare-fun m!1573771 () Bool)

(assert (=> d!399529 m!1573771))

(assert (=> b!1397204 m!1573303))

(assert (=> b!1396865 d!399529))

(declare-fun d!399535 () Bool)

(declare-fun c!229959 () Bool)

(assert (=> d!399535 (= c!229959 (isEmpty!8615 lt!465393))))

(declare-fun e!892163 () Bool)

(assert (=> d!399535 (= (prefixMatch!280 lt!465392 lt!465393) e!892163)))

(declare-fun b!1397209 () Bool)

(declare-fun lostCause!359 (Regex!3771) Bool)

(assert (=> b!1397209 (= e!892163 (not (lostCause!359 lt!465392)))))

(declare-fun b!1397210 () Bool)

(declare-fun derivativeStep!983 (Regex!3771 C!7832) Regex!3771)

(assert (=> b!1397210 (= e!892163 (prefixMatch!280 (derivativeStep!983 lt!465392 (head!2571 lt!465393)) (tail!2030 lt!465393)))))

(assert (= (and d!399535 c!229959) b!1397209))

(assert (= (and d!399535 (not c!229959)) b!1397210))

(declare-fun m!1573777 () Bool)

(assert (=> d!399535 m!1573777))

(declare-fun m!1573779 () Bool)

(assert (=> b!1397209 m!1573779))

(declare-fun m!1573781 () Bool)

(assert (=> b!1397210 m!1573781))

(assert (=> b!1397210 m!1573781))

(declare-fun m!1573783 () Bool)

(assert (=> b!1397210 m!1573783))

(declare-fun m!1573785 () Bool)

(assert (=> b!1397210 m!1573785))

(assert (=> b!1397210 m!1573783))

(assert (=> b!1397210 m!1573785))

(declare-fun m!1573787 () Bool)

(assert (=> b!1397210 m!1573787))

(assert (=> b!1396865 d!399535))

(declare-fun d!399543 () Bool)

(assert (=> d!399543 (= (list!5521 lt!465399) (list!5523 (c!229883 lt!465399)))))

(declare-fun bs!337949 () Bool)

(assert (= bs!337949 d!399543))

(declare-fun m!1573789 () Bool)

(assert (=> bs!337949 m!1573789))

(assert (=> b!1396865 d!399543))

(declare-fun d!399545 () Bool)

(declare-fun lt!465535 () BalanceConc!9288)

(assert (=> d!399545 (= (list!5521 lt!465535) (originalCharacters!3319 t1!34))))

(declare-fun dynLambda!6543 (Int TokenValue!2547) BalanceConc!9288)

(assert (=> d!399545 (= lt!465535 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (value!79657 t1!34)))))

(assert (=> d!399545 (= (charsOf!1429 t1!34) lt!465535)))

(declare-fun b_lambda!43723 () Bool)

(assert (=> (not b_lambda!43723) (not d!399545)))

(declare-fun t!122722 () Bool)

(declare-fun tb!72997 () Bool)

(assert (=> (and b!1396885 (= (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (toChars!3607 (transformation!2457 (rule!4220 t1!34)))) t!122722) tb!72997))

(declare-fun b!1397218 () Bool)

(declare-fun e!892169 () Bool)

(declare-fun tp!398099 () Bool)

(declare-fun inv!18514 (Conc!4674) Bool)

(assert (=> b!1397218 (= e!892169 (and (inv!18514 (c!229883 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (value!79657 t1!34)))) tp!398099))))

(declare-fun result!88716 () Bool)

(declare-fun inv!18515 (BalanceConc!9288) Bool)

(assert (=> tb!72997 (= result!88716 (and (inv!18515 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (value!79657 t1!34))) e!892169))))

(assert (= tb!72997 b!1397218))

(declare-fun m!1573795 () Bool)

(assert (=> b!1397218 m!1573795))

(declare-fun m!1573797 () Bool)

(assert (=> tb!72997 m!1573797))

(assert (=> d!399545 t!122722))

(declare-fun b_and!93561 () Bool)

(assert (= b_and!93533 (and (=> t!122722 result!88716) b_and!93561)))

(declare-fun t!122724 () Bool)

(declare-fun tb!72999 () Bool)

(assert (=> (and b!1396877 (= (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (toChars!3607 (transformation!2457 (rule!4220 t1!34)))) t!122724) tb!72999))

(declare-fun result!88720 () Bool)

(assert (= result!88720 result!88716))

(assert (=> d!399545 t!122724))

(declare-fun b_and!93563 () Bool)

(assert (= b_and!93537 (and (=> t!122724 result!88720) b_and!93563)))

(declare-fun t!122726 () Bool)

(declare-fun tb!73001 () Bool)

(assert (=> (and b!1396868 (= (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toChars!3607 (transformation!2457 (rule!4220 t1!34)))) t!122726) tb!73001))

(declare-fun result!88722 () Bool)

(assert (= result!88722 result!88716))

(assert (=> d!399545 t!122726))

(declare-fun b_and!93565 () Bool)

(assert (= b_and!93541 (and (=> t!122726 result!88722) b_and!93565)))

(declare-fun m!1573799 () Bool)

(assert (=> d!399545 m!1573799))

(declare-fun m!1573801 () Bool)

(assert (=> d!399545 m!1573801))

(assert (=> b!1396865 d!399545))

(declare-fun bs!337950 () Bool)

(declare-fun d!399549 () Bool)

(assert (= bs!337950 (and d!399549 b!1396870)))

(declare-fun lambda!60876 () Int)

(assert (=> bs!337950 (= lambda!60876 lambda!60860)))

(declare-fun lt!465541 () Unit!20486)

(declare-fun lemma!153 (List!14252 LexerInterface!2152 List!14252) Unit!20486)

(assert (=> d!399549 (= lt!465541 (lemma!153 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!161 (List!14254) Regex!3771)

(assert (=> d!399549 (= (rulesRegex!340 thiss!19762 rules!2550) (generalisedUnion!161 (map!3146 rules!2550 lambda!60876)))))

(declare-fun bs!337951 () Bool)

(assert (= bs!337951 d!399549))

(declare-fun m!1573803 () Bool)

(assert (=> bs!337951 m!1573803))

(declare-fun m!1573805 () Bool)

(assert (=> bs!337951 m!1573805))

(assert (=> bs!337951 m!1573805))

(declare-fun m!1573807 () Bool)

(assert (=> bs!337951 m!1573807))

(assert (=> b!1396865 d!399549))

(declare-fun d!399551 () Bool)

(declare-fun e!892174 () Bool)

(assert (=> d!399551 e!892174))

(declare-fun res!631385 () Bool)

(assert (=> d!399551 (=> (not res!631385) (not e!892174))))

(declare-fun lt!465542 () List!14250)

(assert (=> d!399551 (= res!631385 (= (content!2096 lt!465542) ((_ map or) (content!2096 lt!465413) (content!2096 (Cons!14184 lt!465396 Nil!14184)))))))

(declare-fun e!892176 () List!14250)

(assert (=> d!399551 (= lt!465542 e!892176)))

(declare-fun c!229962 () Bool)

(assert (=> d!399551 (= c!229962 ((_ is Nil!14184) lt!465413))))

(assert (=> d!399551 (= (++!3688 lt!465413 (Cons!14184 lt!465396 Nil!14184)) lt!465542)))

(declare-fun b!1397230 () Bool)

(declare-fun res!631387 () Bool)

(assert (=> b!1397230 (=> (not res!631387) (not e!892174))))

(assert (=> b!1397230 (= res!631387 (= (size!11664 lt!465542) (+ (size!11664 lt!465413) (size!11664 (Cons!14184 lt!465396 Nil!14184)))))))

(declare-fun b!1397227 () Bool)

(assert (=> b!1397227 (= e!892176 (Cons!14184 lt!465396 Nil!14184))))

(declare-fun b!1397228 () Bool)

(assert (=> b!1397228 (= e!892176 (Cons!14184 (h!19585 lt!465413) (++!3688 (t!122703 lt!465413) (Cons!14184 lt!465396 Nil!14184))))))

(declare-fun b!1397232 () Bool)

(assert (=> b!1397232 (= e!892174 (or (not (= (Cons!14184 lt!465396 Nil!14184) Nil!14184)) (= lt!465542 lt!465413)))))

(assert (= (and d!399551 c!229962) b!1397227))

(assert (= (and d!399551 (not c!229962)) b!1397228))

(assert (= (and d!399551 res!631385) b!1397230))

(assert (= (and b!1397230 res!631387) b!1397232))

(declare-fun m!1573809 () Bool)

(assert (=> d!399551 m!1573809))

(declare-fun m!1573811 () Bool)

(assert (=> d!399551 m!1573811))

(declare-fun m!1573813 () Bool)

(assert (=> d!399551 m!1573813))

(declare-fun m!1573817 () Bool)

(assert (=> b!1397230 m!1573817))

(assert (=> b!1397230 m!1573653))

(declare-fun m!1573823 () Bool)

(assert (=> b!1397230 m!1573823))

(declare-fun m!1573827 () Bool)

(assert (=> b!1397228 m!1573827))

(assert (=> b!1396865 d!399551))

(declare-fun b!1397275 () Bool)

(declare-fun e!892205 () Bool)

(declare-fun lt!465553 () Bool)

(declare-fun call!93330 () Bool)

(assert (=> b!1397275 (= e!892205 (= lt!465553 call!93330))))

(declare-fun b!1397276 () Bool)

(declare-fun res!631414 () Bool)

(declare-fun e!892206 () Bool)

(assert (=> b!1397276 (=> res!631414 e!892206)))

(assert (=> b!1397276 (= res!631414 (not ((_ is ElementMatch!3771) lt!465392)))))

(declare-fun e!892207 () Bool)

(assert (=> b!1397276 (= e!892207 e!892206)))

(declare-fun b!1397277 () Bool)

(declare-fun e!892203 () Bool)

(assert (=> b!1397277 (= e!892203 (= (head!2571 lt!465400) (c!229882 lt!465392)))))

(declare-fun b!1397278 () Bool)

(declare-fun e!892201 () Bool)

(assert (=> b!1397278 (= e!892201 (matchR!1762 (derivativeStep!983 lt!465392 (head!2571 lt!465400)) (tail!2030 lt!465400)))))

(declare-fun b!1397279 () Bool)

(declare-fun res!631411 () Bool)

(assert (=> b!1397279 (=> (not res!631411) (not e!892203))))

(assert (=> b!1397279 (= res!631411 (not call!93330))))

(declare-fun b!1397280 () Bool)

(assert (=> b!1397280 (= e!892205 e!892207)))

(declare-fun c!229975 () Bool)

(assert (=> b!1397280 (= c!229975 ((_ is EmptyLang!3771) lt!465392))))

(declare-fun d!399555 () Bool)

(assert (=> d!399555 e!892205))

(declare-fun c!229973 () Bool)

(assert (=> d!399555 (= c!229973 ((_ is EmptyExpr!3771) lt!465392))))

(assert (=> d!399555 (= lt!465553 e!892201)))

(declare-fun c!229974 () Bool)

(assert (=> d!399555 (= c!229974 (isEmpty!8615 lt!465400))))

(assert (=> d!399555 (validRegex!1647 lt!465392)))

(assert (=> d!399555 (= (matchR!1762 lt!465392 lt!465400) lt!465553)))

(declare-fun b!1397281 () Bool)

(declare-fun e!892202 () Bool)

(assert (=> b!1397281 (= e!892206 e!892202)))

(declare-fun res!631413 () Bool)

(assert (=> b!1397281 (=> (not res!631413) (not e!892202))))

(assert (=> b!1397281 (= res!631413 (not lt!465553))))

(declare-fun b!1397282 () Bool)

(declare-fun res!631415 () Bool)

(assert (=> b!1397282 (=> (not res!631415) (not e!892203))))

(assert (=> b!1397282 (= res!631415 (isEmpty!8615 (tail!2030 lt!465400)))))

(declare-fun b!1397283 () Bool)

(declare-fun e!892204 () Bool)

(assert (=> b!1397283 (= e!892202 e!892204)))

(declare-fun res!631410 () Bool)

(assert (=> b!1397283 (=> res!631410 e!892204)))

(assert (=> b!1397283 (= res!631410 call!93330)))

(declare-fun b!1397284 () Bool)

(assert (=> b!1397284 (= e!892204 (not (= (head!2571 lt!465400) (c!229882 lt!465392))))))

(declare-fun b!1397285 () Bool)

(declare-fun nullable!1225 (Regex!3771) Bool)

(assert (=> b!1397285 (= e!892201 (nullable!1225 lt!465392))))

(declare-fun b!1397286 () Bool)

(assert (=> b!1397286 (= e!892207 (not lt!465553))))

(declare-fun bm!93325 () Bool)

(assert (=> bm!93325 (= call!93330 (isEmpty!8615 lt!465400))))

(declare-fun b!1397287 () Bool)

(declare-fun res!631416 () Bool)

(assert (=> b!1397287 (=> res!631416 e!892206)))

(assert (=> b!1397287 (= res!631416 e!892203)))

(declare-fun res!631412 () Bool)

(assert (=> b!1397287 (=> (not res!631412) (not e!892203))))

(assert (=> b!1397287 (= res!631412 lt!465553)))

(declare-fun b!1397288 () Bool)

(declare-fun res!631417 () Bool)

(assert (=> b!1397288 (=> res!631417 e!892204)))

(assert (=> b!1397288 (= res!631417 (not (isEmpty!8615 (tail!2030 lt!465400))))))

(assert (= (and d!399555 c!229974) b!1397285))

(assert (= (and d!399555 (not c!229974)) b!1397278))

(assert (= (and d!399555 c!229973) b!1397275))

(assert (= (and d!399555 (not c!229973)) b!1397280))

(assert (= (and b!1397280 c!229975) b!1397286))

(assert (= (and b!1397280 (not c!229975)) b!1397276))

(assert (= (and b!1397276 (not res!631414)) b!1397287))

(assert (= (and b!1397287 res!631412) b!1397279))

(assert (= (and b!1397279 res!631411) b!1397282))

(assert (= (and b!1397282 res!631415) b!1397277))

(assert (= (and b!1397287 (not res!631416)) b!1397281))

(assert (= (and b!1397281 res!631413) b!1397283))

(assert (= (and b!1397283 (not res!631410)) b!1397288))

(assert (= (and b!1397288 (not res!631417)) b!1397284))

(assert (= (or b!1397275 b!1397279 b!1397283) bm!93325))

(declare-fun m!1573861 () Bool)

(assert (=> b!1397284 m!1573861))

(assert (=> b!1397278 m!1573861))

(assert (=> b!1397278 m!1573861))

(declare-fun m!1573867 () Bool)

(assert (=> b!1397278 m!1573867))

(assert (=> b!1397278 m!1573695))

(assert (=> b!1397278 m!1573867))

(assert (=> b!1397278 m!1573695))

(declare-fun m!1573871 () Bool)

(assert (=> b!1397278 m!1573871))

(declare-fun m!1573873 () Bool)

(assert (=> bm!93325 m!1573873))

(declare-fun m!1573875 () Bool)

(assert (=> b!1397285 m!1573875))

(assert (=> b!1397288 m!1573695))

(assert (=> b!1397288 m!1573695))

(declare-fun m!1573877 () Bool)

(assert (=> b!1397288 m!1573877))

(assert (=> b!1397282 m!1573695))

(assert (=> b!1397282 m!1573695))

(assert (=> b!1397282 m!1573877))

(assert (=> b!1397277 m!1573861))

(assert (=> d!399555 m!1573873))

(declare-fun m!1573883 () Bool)

(assert (=> d!399555 m!1573883))

(assert (=> b!1396860 d!399555))

(declare-fun b!1397305 () Bool)

(declare-fun e!892221 () Bool)

(declare-fun lt!465556 () Bool)

(declare-fun call!93332 () Bool)

(assert (=> b!1397305 (= e!892221 (= lt!465556 call!93332))))

(declare-fun b!1397306 () Bool)

(declare-fun res!631432 () Bool)

(declare-fun e!892222 () Bool)

(assert (=> b!1397306 (=> res!631432 e!892222)))

(assert (=> b!1397306 (= res!631432 (not ((_ is ElementMatch!3771) (regex!2457 (rule!4220 t2!34)))))))

(declare-fun e!892223 () Bool)

(assert (=> b!1397306 (= e!892223 e!892222)))

(declare-fun b!1397307 () Bool)

(declare-fun e!892219 () Bool)

(assert (=> b!1397307 (= e!892219 (= (head!2571 lt!465415) (c!229882 (regex!2457 (rule!4220 t2!34)))))))

(declare-fun b!1397308 () Bool)

(declare-fun e!892217 () Bool)

(assert (=> b!1397308 (= e!892217 (matchR!1762 (derivativeStep!983 (regex!2457 (rule!4220 t2!34)) (head!2571 lt!465415)) (tail!2030 lt!465415)))))

(declare-fun b!1397309 () Bool)

(declare-fun res!631429 () Bool)

(assert (=> b!1397309 (=> (not res!631429) (not e!892219))))

(assert (=> b!1397309 (= res!631429 (not call!93332))))

(declare-fun b!1397310 () Bool)

(assert (=> b!1397310 (= e!892221 e!892223)))

(declare-fun c!229981 () Bool)

(assert (=> b!1397310 (= c!229981 ((_ is EmptyLang!3771) (regex!2457 (rule!4220 t2!34))))))

(declare-fun d!399567 () Bool)

(assert (=> d!399567 e!892221))

(declare-fun c!229979 () Bool)

(assert (=> d!399567 (= c!229979 ((_ is EmptyExpr!3771) (regex!2457 (rule!4220 t2!34))))))

(assert (=> d!399567 (= lt!465556 e!892217)))

(declare-fun c!229980 () Bool)

(assert (=> d!399567 (= c!229980 (isEmpty!8615 lt!465415))))

(assert (=> d!399567 (validRegex!1647 (regex!2457 (rule!4220 t2!34)))))

(assert (=> d!399567 (= (matchR!1762 (regex!2457 (rule!4220 t2!34)) lt!465415) lt!465556)))

(declare-fun b!1397311 () Bool)

(declare-fun e!892218 () Bool)

(assert (=> b!1397311 (= e!892222 e!892218)))

(declare-fun res!631431 () Bool)

(assert (=> b!1397311 (=> (not res!631431) (not e!892218))))

(assert (=> b!1397311 (= res!631431 (not lt!465556))))

(declare-fun b!1397312 () Bool)

(declare-fun res!631433 () Bool)

(assert (=> b!1397312 (=> (not res!631433) (not e!892219))))

(assert (=> b!1397312 (= res!631433 (isEmpty!8615 (tail!2030 lt!465415)))))

(declare-fun b!1397313 () Bool)

(declare-fun e!892220 () Bool)

(assert (=> b!1397313 (= e!892218 e!892220)))

(declare-fun res!631428 () Bool)

(assert (=> b!1397313 (=> res!631428 e!892220)))

(assert (=> b!1397313 (= res!631428 call!93332)))

(declare-fun b!1397314 () Bool)

(assert (=> b!1397314 (= e!892220 (not (= (head!2571 lt!465415) (c!229882 (regex!2457 (rule!4220 t2!34))))))))

(declare-fun b!1397315 () Bool)

(assert (=> b!1397315 (= e!892217 (nullable!1225 (regex!2457 (rule!4220 t2!34))))))

(declare-fun b!1397316 () Bool)

(assert (=> b!1397316 (= e!892223 (not lt!465556))))

(declare-fun bm!93327 () Bool)

(assert (=> bm!93327 (= call!93332 (isEmpty!8615 lt!465415))))

(declare-fun b!1397317 () Bool)

(declare-fun res!631434 () Bool)

(assert (=> b!1397317 (=> res!631434 e!892222)))

(assert (=> b!1397317 (= res!631434 e!892219)))

(declare-fun res!631430 () Bool)

(assert (=> b!1397317 (=> (not res!631430) (not e!892219))))

(assert (=> b!1397317 (= res!631430 lt!465556)))

(declare-fun b!1397318 () Bool)

(declare-fun res!631435 () Bool)

(assert (=> b!1397318 (=> res!631435 e!892220)))

(assert (=> b!1397318 (= res!631435 (not (isEmpty!8615 (tail!2030 lt!465415))))))

(assert (= (and d!399567 c!229980) b!1397315))

(assert (= (and d!399567 (not c!229980)) b!1397308))

(assert (= (and d!399567 c!229979) b!1397305))

(assert (= (and d!399567 (not c!229979)) b!1397310))

(assert (= (and b!1397310 c!229981) b!1397316))

(assert (= (and b!1397310 (not c!229981)) b!1397306))

(assert (= (and b!1397306 (not res!631432)) b!1397317))

(assert (= (and b!1397317 res!631430) b!1397309))

(assert (= (and b!1397309 res!631429) b!1397312))

(assert (= (and b!1397312 res!631433) b!1397307))

(assert (= (and b!1397317 (not res!631434)) b!1397311))

(assert (= (and b!1397311 res!631431) b!1397313))

(assert (= (and b!1397313 (not res!631428)) b!1397318))

(assert (= (and b!1397318 (not res!631435)) b!1397314))

(assert (= (or b!1397305 b!1397309 b!1397313) bm!93327))

(assert (=> b!1397314 m!1573267))

(assert (=> b!1397308 m!1573267))

(assert (=> b!1397308 m!1573267))

(declare-fun m!1573891 () Bool)

(assert (=> b!1397308 m!1573891))

(declare-fun m!1573893 () Bool)

(assert (=> b!1397308 m!1573893))

(assert (=> b!1397308 m!1573891))

(assert (=> b!1397308 m!1573893))

(declare-fun m!1573895 () Bool)

(assert (=> b!1397308 m!1573895))

(declare-fun m!1573897 () Bool)

(assert (=> bm!93327 m!1573897))

(declare-fun m!1573899 () Bool)

(assert (=> b!1397315 m!1573899))

(assert (=> b!1397318 m!1573893))

(assert (=> b!1397318 m!1573893))

(declare-fun m!1573901 () Bool)

(assert (=> b!1397318 m!1573901))

(assert (=> b!1397312 m!1573893))

(assert (=> b!1397312 m!1573893))

(assert (=> b!1397312 m!1573901))

(assert (=> b!1397307 m!1573267))

(assert (=> d!399567 m!1573897))

(declare-fun m!1573903 () Bool)

(assert (=> d!399567 m!1573903))

(assert (=> b!1396883 d!399567))

(declare-fun d!399571 () Bool)

(declare-fun lt!465559 () Bool)

(assert (=> d!399571 (= lt!465559 (select (content!2096 lt!465400) lt!465397))))

(declare-fun e!892228 () Bool)

(assert (=> d!399571 (= lt!465559 e!892228)))

(declare-fun res!631440 () Bool)

(assert (=> d!399571 (=> (not res!631440) (not e!892228))))

(assert (=> d!399571 (= res!631440 ((_ is Cons!14184) lt!465400))))

(assert (=> d!399571 (= (contains!2753 lt!465400 lt!465397) lt!465559)))

(declare-fun b!1397323 () Bool)

(declare-fun e!892229 () Bool)

(assert (=> b!1397323 (= e!892228 e!892229)))

(declare-fun res!631441 () Bool)

(assert (=> b!1397323 (=> res!631441 e!892229)))

(assert (=> b!1397323 (= res!631441 (= (h!19585 lt!465400) lt!465397))))

(declare-fun b!1397324 () Bool)

(assert (=> b!1397324 (= e!892229 (contains!2753 (t!122703 lt!465400) lt!465397))))

(assert (= (and d!399571 res!631440) b!1397323))

(assert (= (and b!1397323 (not res!631441)) b!1397324))

(declare-fun m!1573905 () Bool)

(assert (=> d!399571 m!1573905))

(declare-fun m!1573907 () Bool)

(assert (=> d!399571 m!1573907))

(declare-fun m!1573909 () Bool)

(assert (=> b!1397324 m!1573909))

(assert (=> b!1396862 d!399571))

(declare-fun d!399573 () Bool)

(declare-fun lt!465562 () Int)

(assert (=> d!399573 (= lt!465562 (size!11664 (list!5521 lt!465387)))))

(declare-fun size!11673 (Conc!4674) Int)

(assert (=> d!399573 (= lt!465562 (size!11673 (c!229883 lt!465387)))))

(assert (=> d!399573 (= (size!11662 lt!465387) lt!465562)))

(declare-fun bs!337954 () Bool)

(assert (= bs!337954 d!399573))

(assert (=> bs!337954 m!1573369))

(assert (=> bs!337954 m!1573369))

(declare-fun m!1573911 () Bool)

(assert (=> bs!337954 m!1573911))

(declare-fun m!1573913 () Bool)

(assert (=> bs!337954 m!1573913))

(assert (=> b!1396900 d!399573))

(declare-fun d!399575 () Bool)

(declare-fun lt!465563 () BalanceConc!9288)

(assert (=> d!399575 (= (list!5521 lt!465563) (originalCharacters!3319 t2!34))))

(assert (=> d!399575 (= lt!465563 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (value!79657 t2!34)))))

(assert (=> d!399575 (= (charsOf!1429 t2!34) lt!465563)))

(declare-fun b_lambda!43727 () Bool)

(assert (=> (not b_lambda!43727) (not d!399575)))

(declare-fun tb!73003 () Bool)

(declare-fun t!122728 () Bool)

(assert (=> (and b!1396885 (= (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (toChars!3607 (transformation!2457 (rule!4220 t2!34)))) t!122728) tb!73003))

(declare-fun b!1397325 () Bool)

(declare-fun e!892230 () Bool)

(declare-fun tp!398100 () Bool)

(assert (=> b!1397325 (= e!892230 (and (inv!18514 (c!229883 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (value!79657 t2!34)))) tp!398100))))

(declare-fun result!88724 () Bool)

(assert (=> tb!73003 (= result!88724 (and (inv!18515 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (value!79657 t2!34))) e!892230))))

(assert (= tb!73003 b!1397325))

(declare-fun m!1573915 () Bool)

(assert (=> b!1397325 m!1573915))

(declare-fun m!1573917 () Bool)

(assert (=> tb!73003 m!1573917))

(assert (=> d!399575 t!122728))

(declare-fun b_and!93573 () Bool)

(assert (= b_and!93561 (and (=> t!122728 result!88724) b_and!93573)))

(declare-fun t!122730 () Bool)

(declare-fun tb!73005 () Bool)

(assert (=> (and b!1396877 (= (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (toChars!3607 (transformation!2457 (rule!4220 t2!34)))) t!122730) tb!73005))

(declare-fun result!88726 () Bool)

(assert (= result!88726 result!88724))

(assert (=> d!399575 t!122730))

(declare-fun b_and!93575 () Bool)

(assert (= b_and!93563 (and (=> t!122730 result!88726) b_and!93575)))

(declare-fun t!122732 () Bool)

(declare-fun tb!73007 () Bool)

(assert (=> (and b!1396868 (= (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toChars!3607 (transformation!2457 (rule!4220 t2!34)))) t!122732) tb!73007))

(declare-fun result!88728 () Bool)

(assert (= result!88728 result!88724))

(assert (=> d!399575 t!122732))

(declare-fun b_and!93577 () Bool)

(assert (= b_and!93565 (and (=> t!122732 result!88728) b_and!93577)))

(declare-fun m!1573919 () Bool)

(assert (=> d!399575 m!1573919))

(declare-fun m!1573921 () Bool)

(assert (=> d!399575 m!1573921))

(assert (=> b!1396900 d!399575))

(declare-fun d!399577 () Bool)

(declare-fun lt!465580 () Bool)

(declare-fun e!892253 () Bool)

(assert (=> d!399577 (= lt!465580 e!892253)))

(declare-fun res!631460 () Bool)

(assert (=> d!399577 (=> (not res!631460) (not e!892253))))

(assert (=> d!399577 (= res!631460 (= (list!5522 (_1!7788 (lex!977 thiss!19762 rules!2550 (print!916 thiss!19762 (singletonSeq!1112 t2!34))))) (list!5522 (singletonSeq!1112 t2!34))))))

(declare-fun e!892252 () Bool)

(assert (=> d!399577 (= lt!465580 e!892252)))

(declare-fun res!631461 () Bool)

(assert (=> d!399577 (=> (not res!631461) (not e!892252))))

(declare-fun lt!465581 () tuple2!13804)

(declare-fun size!11674 (BalanceConc!9290) Int)

(assert (=> d!399577 (= res!631461 (= (size!11674 (_1!7788 lt!465581)) 1))))

(assert (=> d!399577 (= lt!465581 (lex!977 thiss!19762 rules!2550 (print!916 thiss!19762 (singletonSeq!1112 t2!34))))))

(assert (=> d!399577 (not (isEmpty!8609 rules!2550))))

(assert (=> d!399577 (= (rulesProduceIndividualToken!1121 thiss!19762 rules!2550 t2!34) lt!465580)))

(declare-fun b!1397359 () Bool)

(declare-fun res!631459 () Bool)

(assert (=> b!1397359 (=> (not res!631459) (not e!892252))))

(declare-fun apply!3601 (BalanceConc!9290 Int) Token!4576)

(assert (=> b!1397359 (= res!631459 (= (apply!3601 (_1!7788 lt!465581) 0) t2!34))))

(declare-fun b!1397360 () Bool)

(assert (=> b!1397360 (= e!892252 (isEmpty!8608 (_2!7788 lt!465581)))))

(declare-fun b!1397361 () Bool)

(assert (=> b!1397361 (= e!892253 (isEmpty!8608 (_2!7788 (lex!977 thiss!19762 rules!2550 (print!916 thiss!19762 (singletonSeq!1112 t2!34))))))))

(assert (= (and d!399577 res!631461) b!1397359))

(assert (= (and b!1397359 res!631459) b!1397360))

(assert (= (and d!399577 res!631460) b!1397361))

(assert (=> d!399577 m!1573411))

(declare-fun m!1573943 () Bool)

(assert (=> d!399577 m!1573943))

(assert (=> d!399577 m!1573413))

(declare-fun m!1573945 () Bool)

(assert (=> d!399577 m!1573945))

(assert (=> d!399577 m!1573411))

(assert (=> d!399577 m!1573413))

(declare-fun m!1573947 () Bool)

(assert (=> d!399577 m!1573947))

(assert (=> d!399577 m!1573309))

(assert (=> d!399577 m!1573411))

(declare-fun m!1573949 () Bool)

(assert (=> d!399577 m!1573949))

(declare-fun m!1573951 () Bool)

(assert (=> b!1397359 m!1573951))

(declare-fun m!1573953 () Bool)

(assert (=> b!1397360 m!1573953))

(assert (=> b!1397361 m!1573411))

(assert (=> b!1397361 m!1573411))

(assert (=> b!1397361 m!1573413))

(assert (=> b!1397361 m!1573413))

(assert (=> b!1397361 m!1573945))

(declare-fun m!1573955 () Bool)

(assert (=> b!1397361 m!1573955))

(assert (=> b!1396879 d!399577))

(declare-fun bs!337957 () Bool)

(declare-fun d!399587 () Bool)

(assert (= bs!337957 (and d!399587 b!1396858)))

(declare-fun lambda!60882 () Int)

(assert (=> bs!337957 (not (= lambda!60882 lambda!60862))))

(declare-fun bs!337958 () Bool)

(assert (= bs!337958 (and d!399587 b!1396859)))

(assert (=> bs!337958 (not (= lambda!60882 lambda!60863))))

(assert (=> d!399587 true))

(declare-fun order!8681 () Int)

(declare-fun dynLambda!6544 (Int Int) Int)

(assert (=> d!399587 (< (dynLambda!6544 order!8681 lambda!60862) (dynLambda!6544 order!8681 lambda!60882))))

(declare-fun forall!3445 (List!14252 Int) Bool)

(assert (=> d!399587 (= (exists!558 rules!2550 lambda!60862) (not (forall!3445 rules!2550 lambda!60882)))))

(declare-fun bs!337959 () Bool)

(assert (= bs!337959 d!399587))

(declare-fun m!1573971 () Bool)

(assert (=> bs!337959 m!1573971))

(assert (=> b!1396858 d!399587))

(declare-fun bs!337960 () Bool)

(declare-fun d!399591 () Bool)

(assert (= bs!337960 (and d!399591 b!1396858)))

(declare-fun lambda!60885 () Int)

(assert (=> bs!337960 (not (= lambda!60885 lambda!60862))))

(declare-fun bs!337961 () Bool)

(assert (= bs!337961 (and d!399591 b!1396859)))

(assert (=> bs!337961 (not (= lambda!60885 lambda!60863))))

(declare-fun bs!337962 () Bool)

(assert (= bs!337962 (and d!399591 d!399587)))

(assert (=> bs!337962 (not (= lambda!60885 lambda!60882))))

(assert (=> d!399591 true))

(assert (=> d!399591 true))

(declare-fun order!8683 () Int)

(declare-fun dynLambda!6545 (Int Int) Int)

(assert (=> d!399591 (< (dynLambda!6545 order!8683 lambda!60860) (dynLambda!6544 order!8681 lambda!60885))))

(assert (=> d!399591 (exists!558 rules!2550 lambda!60885)))

(declare-fun lt!465585 () Unit!20486)

(declare-fun choose!8596 (List!14252 Int Regex!3771) Unit!20486)

(assert (=> d!399591 (= lt!465585 (choose!8596 rules!2550 lambda!60860 lt!465407))))

(assert (=> d!399591 (contains!2755 (map!3146 rules!2550 lambda!60860) lt!465407)))

(assert (=> d!399591 (= (lemmaMapContains!168 rules!2550 lambda!60860 lt!465407) lt!465585)))

(declare-fun bs!337963 () Bool)

(assert (= bs!337963 d!399591))

(declare-fun m!1573973 () Bool)

(assert (=> bs!337963 m!1573973))

(declare-fun m!1573975 () Bool)

(assert (=> bs!337963 m!1573975))

(assert (=> bs!337963 m!1573275))

(assert (=> bs!337963 m!1573275))

(assert (=> bs!337963 m!1573419))

(assert (=> b!1396858 d!399591))

(declare-fun d!399593 () Bool)

(declare-fun lt!465586 () Bool)

(assert (=> d!399593 (= lt!465586 (select (content!2096 (usedCharacters!268 (regex!2457 lt!465410))) lt!465396))))

(declare-fun e!892257 () Bool)

(assert (=> d!399593 (= lt!465586 e!892257)))

(declare-fun res!631465 () Bool)

(assert (=> d!399593 (=> (not res!631465) (not e!892257))))

(assert (=> d!399593 (= res!631465 ((_ is Cons!14184) (usedCharacters!268 (regex!2457 lt!465410))))))

(assert (=> d!399593 (= (contains!2753 (usedCharacters!268 (regex!2457 lt!465410)) lt!465396) lt!465586)))

(declare-fun b!1397373 () Bool)

(declare-fun e!892258 () Bool)

(assert (=> b!1397373 (= e!892257 e!892258)))

(declare-fun res!631466 () Bool)

(assert (=> b!1397373 (=> res!631466 e!892258)))

(assert (=> b!1397373 (= res!631466 (= (h!19585 (usedCharacters!268 (regex!2457 lt!465410))) lt!465396))))

(declare-fun b!1397374 () Bool)

(assert (=> b!1397374 (= e!892258 (contains!2753 (t!122703 (usedCharacters!268 (regex!2457 lt!465410))) lt!465396))))

(assert (= (and d!399593 res!631465) b!1397373))

(assert (= (and b!1397373 (not res!631466)) b!1397374))

(assert (=> d!399593 m!1573321))

(declare-fun m!1573977 () Bool)

(assert (=> d!399593 m!1573977))

(declare-fun m!1573979 () Bool)

(assert (=> d!399593 m!1573979))

(declare-fun m!1573981 () Bool)

(assert (=> b!1397374 m!1573981))

(assert (=> b!1396901 d!399593))

(declare-fun b!1397393 () Bool)

(declare-fun e!892272 () List!14250)

(declare-fun e!892270 () List!14250)

(assert (=> b!1397393 (= e!892272 e!892270)))

(declare-fun c!230000 () Bool)

(assert (=> b!1397393 (= c!230000 ((_ is Union!3771) (regex!2457 lt!465410)))))

(declare-fun b!1397394 () Bool)

(declare-fun call!93342 () List!14250)

(assert (=> b!1397394 (= e!892270 call!93342)))

(declare-fun b!1397395 () Bool)

(declare-fun call!93344 () List!14250)

(assert (=> b!1397395 (= e!892272 call!93344)))

(declare-fun b!1397396 () Bool)

(declare-fun e!892269 () List!14250)

(declare-fun e!892271 () List!14250)

(assert (=> b!1397396 (= e!892269 e!892271)))

(declare-fun c!229999 () Bool)

(assert (=> b!1397396 (= c!229999 ((_ is ElementMatch!3771) (regex!2457 lt!465410)))))

(declare-fun bm!93336 () Bool)

(declare-fun call!93341 () List!14250)

(assert (=> bm!93336 (= call!93341 (usedCharacters!268 (ite c!230000 (regTwo!8055 (regex!2457 lt!465410)) (regOne!8054 (regex!2457 lt!465410)))))))

(declare-fun bm!93337 () Bool)

(declare-fun call!93343 () List!14250)

(assert (=> bm!93337 (= call!93343 call!93344)))

(declare-fun b!1397397 () Bool)

(assert (=> b!1397397 (= e!892270 call!93342)))

(declare-fun b!1397399 () Bool)

(declare-fun c!230002 () Bool)

(assert (=> b!1397399 (= c!230002 ((_ is Star!3771) (regex!2457 lt!465410)))))

(assert (=> b!1397399 (= e!892271 e!892272)))

(declare-fun b!1397400 () Bool)

(assert (=> b!1397400 (= e!892271 (Cons!14184 (c!229882 (regex!2457 lt!465410)) Nil!14184))))

(declare-fun bm!93338 () Bool)

(assert (=> bm!93338 (= call!93342 (++!3688 (ite c!230000 call!93343 call!93341) (ite c!230000 call!93341 call!93343)))))

(declare-fun bm!93339 () Bool)

(assert (=> bm!93339 (= call!93344 (usedCharacters!268 (ite c!230002 (reg!4100 (regex!2457 lt!465410)) (ite c!230000 (regOne!8055 (regex!2457 lt!465410)) (regTwo!8054 (regex!2457 lt!465410))))))))

(declare-fun d!399595 () Bool)

(declare-fun c!230001 () Bool)

(assert (=> d!399595 (= c!230001 (or ((_ is EmptyExpr!3771) (regex!2457 lt!465410)) ((_ is EmptyLang!3771) (regex!2457 lt!465410))))))

(assert (=> d!399595 (= (usedCharacters!268 (regex!2457 lt!465410)) e!892269)))

(declare-fun b!1397398 () Bool)

(assert (=> b!1397398 (= e!892269 Nil!14184)))

(assert (= (and d!399595 c!230001) b!1397398))

(assert (= (and d!399595 (not c!230001)) b!1397396))

(assert (= (and b!1397396 c!229999) b!1397400))

(assert (= (and b!1397396 (not c!229999)) b!1397399))

(assert (= (and b!1397399 c!230002) b!1397395))

(assert (= (and b!1397399 (not c!230002)) b!1397393))

(assert (= (and b!1397393 c!230000) b!1397394))

(assert (= (and b!1397393 (not c!230000)) b!1397397))

(assert (= (or b!1397394 b!1397397) bm!93337))

(assert (= (or b!1397394 b!1397397) bm!93336))

(assert (= (or b!1397394 b!1397397) bm!93338))

(assert (= (or b!1397395 bm!93337) bm!93339))

(declare-fun m!1573991 () Bool)

(assert (=> bm!93336 m!1573991))

(declare-fun m!1573997 () Bool)

(assert (=> bm!93338 m!1573997))

(declare-fun m!1574001 () Bool)

(assert (=> bm!93339 m!1574001))

(assert (=> b!1396901 d!399595))

(declare-fun d!399601 () Bool)

(assert (=> d!399601 (not (matchR!1762 lt!465407 lt!465400))))

(declare-fun lt!465596 () Unit!20486)

(assert (=> d!399601 (= lt!465596 (choose!8595 lt!465407 lt!465400 lt!465396))))

(assert (=> d!399601 (validRegex!1647 lt!465407)))

(assert (=> d!399601 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 lt!465407 lt!465400 lt!465396) lt!465596)))

(declare-fun bs!337965 () Bool)

(assert (= bs!337965 d!399601))

(assert (=> bs!337965 m!1573327))

(declare-fun m!1574003 () Bool)

(assert (=> bs!337965 m!1574003))

(declare-fun m!1574005 () Bool)

(assert (=> bs!337965 m!1574005))

(assert (=> b!1396901 d!399601))

(declare-fun d!399603 () Bool)

(assert (=> d!399603 (not (contains!2753 (usedCharacters!268 (regex!2457 lt!465410)) lt!465396))))

(declare-fun lt!465604 () Unit!20486)

(declare-fun choose!8599 (LexerInterface!2152 List!14252 List!14252 Rule!4714 Rule!4714 C!7832) Unit!20486)

(assert (=> d!399603 (= lt!465604 (choose!8599 thiss!19762 rules!2550 rules!2550 (rule!4220 t2!34) lt!465410 lt!465396))))

(assert (=> d!399603 (rulesInvariant!2022 thiss!19762 rules!2550)))

(assert (=> d!399603 (= (lemmaSepRuleNotContainsCharContainedInANonSepRule!130 thiss!19762 rules!2550 rules!2550 (rule!4220 t2!34) lt!465410 lt!465396) lt!465604)))

(declare-fun bs!337968 () Bool)

(assert (= bs!337968 d!399603))

(assert (=> bs!337968 m!1573321))

(assert (=> bs!337968 m!1573321))

(assert (=> bs!337968 m!1573323))

(declare-fun m!1574061 () Bool)

(assert (=> bs!337968 m!1574061))

(assert (=> bs!337968 m!1573415))

(assert (=> b!1396901 d!399603))

(declare-fun b!1397424 () Bool)

(declare-fun e!892288 () Bool)

(declare-fun lt!465606 () Bool)

(declare-fun call!93350 () Bool)

(assert (=> b!1397424 (= e!892288 (= lt!465606 call!93350))))

(declare-fun b!1397425 () Bool)

(declare-fun res!631482 () Bool)

(declare-fun e!892289 () Bool)

(assert (=> b!1397425 (=> res!631482 e!892289)))

(assert (=> b!1397425 (= res!631482 (not ((_ is ElementMatch!3771) lt!465407)))))

(declare-fun e!892290 () Bool)

(assert (=> b!1397425 (= e!892290 e!892289)))

(declare-fun b!1397426 () Bool)

(declare-fun e!892286 () Bool)

(assert (=> b!1397426 (= e!892286 (= (head!2571 lt!465400) (c!229882 lt!465407)))))

(declare-fun b!1397427 () Bool)

(declare-fun e!892284 () Bool)

(assert (=> b!1397427 (= e!892284 (matchR!1762 (derivativeStep!983 lt!465407 (head!2571 lt!465400)) (tail!2030 lt!465400)))))

(declare-fun b!1397428 () Bool)

(declare-fun res!631479 () Bool)

(assert (=> b!1397428 (=> (not res!631479) (not e!892286))))

(assert (=> b!1397428 (= res!631479 (not call!93350))))

(declare-fun b!1397429 () Bool)

(assert (=> b!1397429 (= e!892288 e!892290)))

(declare-fun c!230013 () Bool)

(assert (=> b!1397429 (= c!230013 ((_ is EmptyLang!3771) lt!465407))))

(declare-fun d!399615 () Bool)

(assert (=> d!399615 e!892288))

(declare-fun c!230011 () Bool)

(assert (=> d!399615 (= c!230011 ((_ is EmptyExpr!3771) lt!465407))))

(assert (=> d!399615 (= lt!465606 e!892284)))

(declare-fun c!230012 () Bool)

(assert (=> d!399615 (= c!230012 (isEmpty!8615 lt!465400))))

(assert (=> d!399615 (validRegex!1647 lt!465407)))

(assert (=> d!399615 (= (matchR!1762 lt!465407 lt!465400) lt!465606)))

(declare-fun b!1397430 () Bool)

(declare-fun e!892285 () Bool)

(assert (=> b!1397430 (= e!892289 e!892285)))

(declare-fun res!631481 () Bool)

(assert (=> b!1397430 (=> (not res!631481) (not e!892285))))

(assert (=> b!1397430 (= res!631481 (not lt!465606))))

(declare-fun b!1397431 () Bool)

(declare-fun res!631483 () Bool)

(assert (=> b!1397431 (=> (not res!631483) (not e!892286))))

(assert (=> b!1397431 (= res!631483 (isEmpty!8615 (tail!2030 lt!465400)))))

(declare-fun b!1397432 () Bool)

(declare-fun e!892287 () Bool)

(assert (=> b!1397432 (= e!892285 e!892287)))

(declare-fun res!631478 () Bool)

(assert (=> b!1397432 (=> res!631478 e!892287)))

(assert (=> b!1397432 (= res!631478 call!93350)))

(declare-fun b!1397433 () Bool)

(assert (=> b!1397433 (= e!892287 (not (= (head!2571 lt!465400) (c!229882 lt!465407))))))

(declare-fun b!1397434 () Bool)

(assert (=> b!1397434 (= e!892284 (nullable!1225 lt!465407))))

(declare-fun b!1397435 () Bool)

(assert (=> b!1397435 (= e!892290 (not lt!465606))))

(declare-fun bm!93345 () Bool)

(assert (=> bm!93345 (= call!93350 (isEmpty!8615 lt!465400))))

(declare-fun b!1397436 () Bool)

(declare-fun res!631484 () Bool)

(assert (=> b!1397436 (=> res!631484 e!892289)))

(assert (=> b!1397436 (= res!631484 e!892286)))

(declare-fun res!631480 () Bool)

(assert (=> b!1397436 (=> (not res!631480) (not e!892286))))

(assert (=> b!1397436 (= res!631480 lt!465606)))

(declare-fun b!1397437 () Bool)

(declare-fun res!631485 () Bool)

(assert (=> b!1397437 (=> res!631485 e!892287)))

(assert (=> b!1397437 (= res!631485 (not (isEmpty!8615 (tail!2030 lt!465400))))))

(assert (= (and d!399615 c!230012) b!1397434))

(assert (= (and d!399615 (not c!230012)) b!1397427))

(assert (= (and d!399615 c!230011) b!1397424))

(assert (= (and d!399615 (not c!230011)) b!1397429))

(assert (= (and b!1397429 c!230013) b!1397435))

(assert (= (and b!1397429 (not c!230013)) b!1397425))

(assert (= (and b!1397425 (not res!631482)) b!1397436))

(assert (= (and b!1397436 res!631480) b!1397428))

(assert (= (and b!1397428 res!631479) b!1397431))

(assert (= (and b!1397431 res!631483) b!1397426))

(assert (= (and b!1397436 (not res!631484)) b!1397430))

(assert (= (and b!1397430 res!631481) b!1397432))

(assert (= (and b!1397432 (not res!631478)) b!1397437))

(assert (= (and b!1397437 (not res!631485)) b!1397433))

(assert (= (or b!1397424 b!1397428 b!1397432) bm!93345))

(assert (=> b!1397433 m!1573861))

(assert (=> b!1397427 m!1573861))

(assert (=> b!1397427 m!1573861))

(declare-fun m!1574067 () Bool)

(assert (=> b!1397427 m!1574067))

(assert (=> b!1397427 m!1573695))

(assert (=> b!1397427 m!1574067))

(assert (=> b!1397427 m!1573695))

(declare-fun m!1574069 () Bool)

(assert (=> b!1397427 m!1574069))

(assert (=> bm!93345 m!1573873))

(declare-fun m!1574071 () Bool)

(assert (=> b!1397434 m!1574071))

(assert (=> b!1397437 m!1573695))

(assert (=> b!1397437 m!1573695))

(assert (=> b!1397437 m!1573877))

(assert (=> b!1397431 m!1573695))

(assert (=> b!1397431 m!1573695))

(assert (=> b!1397431 m!1573877))

(assert (=> b!1397426 m!1573861))

(assert (=> d!399615 m!1573873))

(assert (=> d!399615 m!1574005))

(assert (=> b!1396901 d!399615))

(declare-fun d!399619 () Bool)

(declare-fun res!631498 () Bool)

(declare-fun e!892302 () Bool)

(assert (=> d!399619 (=> res!631498 e!892302)))

(assert (=> d!399619 (= res!631498 (not ((_ is Cons!14186) rules!2550)))))

(assert (=> d!399619 (= (sepAndNonSepRulesDisjointChars!830 rules!2550 rules!2550) e!892302)))

(declare-fun b!1397456 () Bool)

(declare-fun e!892303 () Bool)

(assert (=> b!1397456 (= e!892302 e!892303)))

(declare-fun res!631499 () Bool)

(assert (=> b!1397456 (=> (not res!631499) (not e!892303))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!395 (Rule!4714 List!14252) Bool)

(assert (=> b!1397456 (= res!631499 (ruleDisjointCharsFromAllFromOtherType!395 (h!19587 rules!2550) rules!2550))))

(declare-fun b!1397457 () Bool)

(assert (=> b!1397457 (= e!892303 (sepAndNonSepRulesDisjointChars!830 rules!2550 (t!122705 rules!2550)))))

(assert (= (and d!399619 (not res!631498)) b!1397456))

(assert (= (and b!1397456 res!631499) b!1397457))

(declare-fun m!1574079 () Bool)

(assert (=> b!1397456 m!1574079))

(declare-fun m!1574081 () Bool)

(assert (=> b!1397457 m!1574081))

(assert (=> b!1396880 d!399619))

(declare-fun b!1397458 () Bool)

(declare-fun e!892308 () Bool)

(declare-fun lt!465610 () Bool)

(declare-fun call!93352 () Bool)

(assert (=> b!1397458 (= e!892308 (= lt!465610 call!93352))))

(declare-fun b!1397459 () Bool)

(declare-fun res!631504 () Bool)

(declare-fun e!892309 () Bool)

(assert (=> b!1397459 (=> res!631504 e!892309)))

(assert (=> b!1397459 (= res!631504 (not ((_ is ElementMatch!3771) (regex!2457 (rule!4220 t1!34)))))))

(declare-fun e!892310 () Bool)

(assert (=> b!1397459 (= e!892310 e!892309)))

(declare-fun b!1397460 () Bool)

(declare-fun e!892306 () Bool)

(assert (=> b!1397460 (= e!892306 (= (head!2571 lt!465413) (c!229882 (regex!2457 (rule!4220 t1!34)))))))

(declare-fun b!1397461 () Bool)

(declare-fun e!892304 () Bool)

(assert (=> b!1397461 (= e!892304 (matchR!1762 (derivativeStep!983 (regex!2457 (rule!4220 t1!34)) (head!2571 lt!465413)) (tail!2030 lt!465413)))))

(declare-fun b!1397462 () Bool)

(declare-fun res!631501 () Bool)

(assert (=> b!1397462 (=> (not res!631501) (not e!892306))))

(assert (=> b!1397462 (= res!631501 (not call!93352))))

(declare-fun b!1397463 () Bool)

(assert (=> b!1397463 (= e!892308 e!892310)))

(declare-fun c!230020 () Bool)

(assert (=> b!1397463 (= c!230020 ((_ is EmptyLang!3771) (regex!2457 (rule!4220 t1!34))))))

(declare-fun d!399623 () Bool)

(assert (=> d!399623 e!892308))

(declare-fun c!230018 () Bool)

(assert (=> d!399623 (= c!230018 ((_ is EmptyExpr!3771) (regex!2457 (rule!4220 t1!34))))))

(assert (=> d!399623 (= lt!465610 e!892304)))

(declare-fun c!230019 () Bool)

(assert (=> d!399623 (= c!230019 (isEmpty!8615 lt!465413))))

(assert (=> d!399623 (validRegex!1647 (regex!2457 (rule!4220 t1!34)))))

(assert (=> d!399623 (= (matchR!1762 (regex!2457 (rule!4220 t1!34)) lt!465413) lt!465610)))

(declare-fun b!1397464 () Bool)

(declare-fun e!892305 () Bool)

(assert (=> b!1397464 (= e!892309 e!892305)))

(declare-fun res!631503 () Bool)

(assert (=> b!1397464 (=> (not res!631503) (not e!892305))))

(assert (=> b!1397464 (= res!631503 (not lt!465610))))

(declare-fun b!1397465 () Bool)

(declare-fun res!631505 () Bool)

(assert (=> b!1397465 (=> (not res!631505) (not e!892306))))

(assert (=> b!1397465 (= res!631505 (isEmpty!8615 (tail!2030 lt!465413)))))

(declare-fun b!1397466 () Bool)

(declare-fun e!892307 () Bool)

(assert (=> b!1397466 (= e!892305 e!892307)))

(declare-fun res!631500 () Bool)

(assert (=> b!1397466 (=> res!631500 e!892307)))

(assert (=> b!1397466 (= res!631500 call!93352)))

(declare-fun b!1397467 () Bool)

(assert (=> b!1397467 (= e!892307 (not (= (head!2571 lt!465413) (c!229882 (regex!2457 (rule!4220 t1!34))))))))

(declare-fun b!1397468 () Bool)

(assert (=> b!1397468 (= e!892304 (nullable!1225 (regex!2457 (rule!4220 t1!34))))))

(declare-fun b!1397469 () Bool)

(assert (=> b!1397469 (= e!892310 (not lt!465610))))

(declare-fun bm!93347 () Bool)

(assert (=> bm!93347 (= call!93352 (isEmpty!8615 lt!465413))))

(declare-fun b!1397470 () Bool)

(declare-fun res!631506 () Bool)

(assert (=> b!1397470 (=> res!631506 e!892309)))

(assert (=> b!1397470 (= res!631506 e!892306)))

(declare-fun res!631502 () Bool)

(assert (=> b!1397470 (=> (not res!631502) (not e!892306))))

(assert (=> b!1397470 (= res!631502 lt!465610)))

(declare-fun b!1397471 () Bool)

(declare-fun res!631507 () Bool)

(assert (=> b!1397471 (=> res!631507 e!892307)))

(assert (=> b!1397471 (= res!631507 (not (isEmpty!8615 (tail!2030 lt!465413))))))

(assert (= (and d!399623 c!230019) b!1397468))

(assert (= (and d!399623 (not c!230019)) b!1397461))

(assert (= (and d!399623 c!230018) b!1397458))

(assert (= (and d!399623 (not c!230018)) b!1397463))

(assert (= (and b!1397463 c!230020) b!1397469))

(assert (= (and b!1397463 (not c!230020)) b!1397459))

(assert (= (and b!1397459 (not res!631504)) b!1397470))

(assert (= (and b!1397470 res!631502) b!1397462))

(assert (= (and b!1397462 res!631501) b!1397465))

(assert (= (and b!1397465 res!631505) b!1397460))

(assert (= (and b!1397470 (not res!631506)) b!1397464))

(assert (= (and b!1397464 res!631503) b!1397466))

(assert (= (and b!1397466 (not res!631500)) b!1397471))

(assert (= (and b!1397471 (not res!631507)) b!1397467))

(assert (= (or b!1397458 b!1397462 b!1397466) bm!93347))

(assert (=> b!1397467 m!1573377))

(assert (=> b!1397461 m!1573377))

(assert (=> b!1397461 m!1573377))

(declare-fun m!1574085 () Bool)

(assert (=> b!1397461 m!1574085))

(declare-fun m!1574087 () Bool)

(assert (=> b!1397461 m!1574087))

(assert (=> b!1397461 m!1574085))

(assert (=> b!1397461 m!1574087))

(declare-fun m!1574089 () Bool)

(assert (=> b!1397461 m!1574089))

(declare-fun m!1574091 () Bool)

(assert (=> bm!93347 m!1574091))

(declare-fun m!1574093 () Bool)

(assert (=> b!1397468 m!1574093))

(assert (=> b!1397471 m!1574087))

(assert (=> b!1397471 m!1574087))

(declare-fun m!1574095 () Bool)

(assert (=> b!1397471 m!1574095))

(assert (=> b!1397465 m!1574087))

(assert (=> b!1397465 m!1574087))

(assert (=> b!1397465 m!1574095))

(assert (=> b!1397460 m!1573377))

(assert (=> d!399623 m!1574091))

(assert (=> d!399623 m!1573729))

(assert (=> b!1396859 d!399623))

(declare-fun d!399627 () Bool)

(declare-fun dynLambda!6549 (Int Rule!4714) Bool)

(assert (=> d!399627 (dynLambda!6549 lambda!60863 (rule!4220 t2!34))))

(declare-fun lt!465616 () Unit!20486)

(declare-fun choose!8600 (List!14252 Int Rule!4714) Unit!20486)

(assert (=> d!399627 (= lt!465616 (choose!8600 rules!2550 lambda!60863 (rule!4220 t2!34)))))

(declare-fun e!892317 () Bool)

(assert (=> d!399627 e!892317))

(declare-fun res!631514 () Bool)

(assert (=> d!399627 (=> (not res!631514) (not e!892317))))

(assert (=> d!399627 (= res!631514 (forall!3445 rules!2550 lambda!60863))))

(assert (=> d!399627 (= (forallContained!652 rules!2550 lambda!60863 (rule!4220 t2!34)) lt!465616)))

(declare-fun b!1397480 () Bool)

(assert (=> b!1397480 (= e!892317 (contains!2754 rules!2550 (rule!4220 t2!34)))))

(assert (= (and d!399627 res!631514) b!1397480))

(declare-fun b_lambda!43729 () Bool)

(assert (=> (not b_lambda!43729) (not d!399627)))

(declare-fun m!1574109 () Bool)

(assert (=> d!399627 m!1574109))

(declare-fun m!1574111 () Bool)

(assert (=> d!399627 m!1574111))

(declare-fun m!1574113 () Bool)

(assert (=> d!399627 m!1574113))

(assert (=> b!1397480 m!1573343))

(assert (=> b!1396859 d!399627))

(declare-fun d!399635 () Bool)

(assert (=> d!399635 (dynLambda!6549 lambda!60863 (rule!4220 t1!34))))

(declare-fun lt!465617 () Unit!20486)

(assert (=> d!399635 (= lt!465617 (choose!8600 rules!2550 lambda!60863 (rule!4220 t1!34)))))

(declare-fun e!892318 () Bool)

(assert (=> d!399635 e!892318))

(declare-fun res!631515 () Bool)

(assert (=> d!399635 (=> (not res!631515) (not e!892318))))

(assert (=> d!399635 (= res!631515 (forall!3445 rules!2550 lambda!60863))))

(assert (=> d!399635 (= (forallContained!652 rules!2550 lambda!60863 (rule!4220 t1!34)) lt!465617)))

(declare-fun b!1397481 () Bool)

(assert (=> b!1397481 (= e!892318 (contains!2754 rules!2550 (rule!4220 t1!34)))))

(assert (= (and d!399635 res!631515) b!1397481))

(declare-fun b_lambda!43731 () Bool)

(assert (=> (not b_lambda!43731) (not d!399635)))

(declare-fun m!1574115 () Bool)

(assert (=> d!399635 m!1574115))

(declare-fun m!1574117 () Bool)

(assert (=> d!399635 m!1574117))

(assert (=> d!399635 m!1574113))

(assert (=> b!1397481 m!1573293))

(assert (=> b!1396859 d!399635))

(declare-fun d!399637 () Bool)

(assert (=> d!399637 (dynLambda!6549 lambda!60863 lt!465410)))

(declare-fun lt!465618 () Unit!20486)

(assert (=> d!399637 (= lt!465618 (choose!8600 rules!2550 lambda!60863 lt!465410))))

(declare-fun e!892319 () Bool)

(assert (=> d!399637 e!892319))

(declare-fun res!631516 () Bool)

(assert (=> d!399637 (=> (not res!631516) (not e!892319))))

(assert (=> d!399637 (= res!631516 (forall!3445 rules!2550 lambda!60863))))

(assert (=> d!399637 (= (forallContained!652 rules!2550 lambda!60863 lt!465410) lt!465618)))

(declare-fun b!1397482 () Bool)

(assert (=> b!1397482 (= e!892319 (contains!2754 rules!2550 lt!465410))))

(assert (= (and d!399637 res!631516) b!1397482))

(declare-fun b_lambda!43733 () Bool)

(assert (=> (not b_lambda!43733) (not d!399637)))

(declare-fun m!1574119 () Bool)

(assert (=> d!399637 m!1574119))

(declare-fun m!1574121 () Bool)

(assert (=> d!399637 m!1574121))

(assert (=> d!399637 m!1574113))

(assert (=> b!1397482 m!1573313))

(assert (=> b!1396859 d!399637))

(declare-fun d!399639 () Bool)

(declare-fun list!5526 (Conc!4675) List!14253)

(assert (=> d!399639 (= (list!5522 (_1!7788 lt!465389)) (list!5526 (c!229884 (_1!7788 lt!465389))))))

(declare-fun bs!337974 () Bool)

(assert (= bs!337974 d!399639))

(declare-fun m!1574123 () Bool)

(assert (=> bs!337974 m!1574123))

(assert (=> b!1396881 d!399639))

(declare-fun b!1397610 () Bool)

(declare-fun e!892401 () Bool)

(declare-fun lt!465660 () tuple2!13804)

(assert (=> b!1397610 (= e!892401 (= (_2!7788 lt!465660) lt!465409))))

(declare-fun e!892400 () Bool)

(declare-fun b!1397611 () Bool)

(assert (=> b!1397611 (= e!892400 (= (list!5521 (_2!7788 lt!465660)) (_2!7787 (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465409)))))))

(declare-fun d!399641 () Bool)

(assert (=> d!399641 e!892400))

(declare-fun res!631572 () Bool)

(assert (=> d!399641 (=> (not res!631572) (not e!892400))))

(assert (=> d!399641 (= res!631572 e!892401)))

(declare-fun c!230041 () Bool)

(assert (=> d!399641 (= c!230041 (> (size!11674 (_1!7788 lt!465660)) 0))))

(declare-fun lexTailRecV2!437 (LexerInterface!2152 List!14252 BalanceConc!9288 BalanceConc!9288 BalanceConc!9288 BalanceConc!9290) tuple2!13804)

(assert (=> d!399641 (= lt!465660 (lexTailRecV2!437 thiss!19762 rules!2550 lt!465409 (BalanceConc!9289 Empty!4674) lt!465409 (BalanceConc!9291 Empty!4675)))))

(assert (=> d!399641 (= (lex!977 thiss!19762 rules!2550 lt!465409) lt!465660)))

(declare-fun b!1397612 () Bool)

(declare-fun e!892399 () Bool)

(declare-fun isEmpty!8619 (BalanceConc!9290) Bool)

(assert (=> b!1397612 (= e!892399 (not (isEmpty!8619 (_1!7788 lt!465660))))))

(declare-fun b!1397613 () Bool)

(declare-fun res!631571 () Bool)

(assert (=> b!1397613 (=> (not res!631571) (not e!892400))))

(assert (=> b!1397613 (= res!631571 (= (list!5522 (_1!7788 lt!465660)) (_1!7787 (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465409)))))))

(declare-fun b!1397614 () Bool)

(assert (=> b!1397614 (= e!892401 e!892399)))

(declare-fun res!631570 () Bool)

(assert (=> b!1397614 (= res!631570 (< (size!11662 (_2!7788 lt!465660)) (size!11662 lt!465409)))))

(assert (=> b!1397614 (=> (not res!631570) (not e!892399))))

(assert (= (and d!399641 c!230041) b!1397614))

(assert (= (and d!399641 (not c!230041)) b!1397610))

(assert (= (and b!1397614 res!631570) b!1397612))

(assert (= (and d!399641 res!631572) b!1397613))

(assert (= (and b!1397613 res!631571) b!1397611))

(declare-fun m!1574299 () Bool)

(assert (=> b!1397611 m!1574299))

(assert (=> b!1397611 m!1573373))

(assert (=> b!1397611 m!1573373))

(assert (=> b!1397611 m!1573375))

(declare-fun m!1574301 () Bool)

(assert (=> b!1397613 m!1574301))

(assert (=> b!1397613 m!1573373))

(assert (=> b!1397613 m!1573373))

(assert (=> b!1397613 m!1573375))

(declare-fun m!1574303 () Bool)

(assert (=> b!1397614 m!1574303))

(declare-fun m!1574305 () Bool)

(assert (=> b!1397614 m!1574305))

(declare-fun m!1574307 () Bool)

(assert (=> d!399641 m!1574307))

(declare-fun m!1574309 () Bool)

(assert (=> d!399641 m!1574309))

(declare-fun m!1574311 () Bool)

(assert (=> b!1397612 m!1574311))

(assert (=> b!1396881 d!399641))

(declare-fun d!399707 () Bool)

(declare-fun lt!465663 () BalanceConc!9288)

(declare-fun printList!632 (LexerInterface!2152 List!14253) List!14250)

(assert (=> d!399707 (= (list!5521 lt!465663) (printList!632 thiss!19762 (list!5522 (singletonSeq!1112 t2!34))))))

(declare-fun printTailRec!614 (LexerInterface!2152 BalanceConc!9290 Int BalanceConc!9288) BalanceConc!9288)

(assert (=> d!399707 (= lt!465663 (printTailRec!614 thiss!19762 (singletonSeq!1112 t2!34) 0 (BalanceConc!9289 Empty!4674)))))

(assert (=> d!399707 (= (print!916 thiss!19762 (singletonSeq!1112 t2!34)) lt!465663)))

(declare-fun bs!338006 () Bool)

(assert (= bs!338006 d!399707))

(declare-fun m!1574335 () Bool)

(assert (=> bs!338006 m!1574335))

(assert (=> bs!338006 m!1573411))

(assert (=> bs!338006 m!1573943))

(assert (=> bs!338006 m!1573943))

(declare-fun m!1574337 () Bool)

(assert (=> bs!338006 m!1574337))

(assert (=> bs!338006 m!1573411))

(declare-fun m!1574339 () Bool)

(assert (=> bs!338006 m!1574339))

(assert (=> b!1396881 d!399707))

(declare-fun d!399727 () Bool)

(declare-fun e!892413 () Bool)

(assert (=> d!399727 e!892413))

(declare-fun res!631578 () Bool)

(assert (=> d!399727 (=> (not res!631578) (not e!892413))))

(declare-fun lt!465666 () BalanceConc!9290)

(assert (=> d!399727 (= res!631578 (= (list!5522 lt!465666) (Cons!14187 t2!34 Nil!14187)))))

(declare-fun singleton!488 (Token!4576) BalanceConc!9290)

(assert (=> d!399727 (= lt!465666 (singleton!488 t2!34))))

(assert (=> d!399727 (= (singletonSeq!1112 t2!34) lt!465666)))

(declare-fun b!1397631 () Bool)

(declare-fun isBalanced!1382 (Conc!4675) Bool)

(assert (=> b!1397631 (= e!892413 (isBalanced!1382 (c!229884 lt!465666)))))

(assert (= (and d!399727 res!631578) b!1397631))

(declare-fun m!1574341 () Bool)

(assert (=> d!399727 m!1574341))

(declare-fun m!1574343 () Bool)

(assert (=> d!399727 m!1574343))

(declare-fun m!1574345 () Bool)

(assert (=> b!1397631 m!1574345))

(assert (=> b!1396881 d!399727))

(declare-fun d!399729 () Bool)

(declare-fun lt!465667 () BalanceConc!9288)

(assert (=> d!399729 (= (list!5521 lt!465667) (printList!632 thiss!19762 (list!5522 (singletonSeq!1112 t1!34))))))

(assert (=> d!399729 (= lt!465667 (printTailRec!614 thiss!19762 (singletonSeq!1112 t1!34) 0 (BalanceConc!9289 Empty!4674)))))

(assert (=> d!399729 (= (print!916 thiss!19762 (singletonSeq!1112 t1!34)) lt!465667)))

(declare-fun bs!338007 () Bool)

(assert (= bs!338007 d!399729))

(declare-fun m!1574347 () Bool)

(assert (=> bs!338007 m!1574347))

(assert (=> bs!338007 m!1573329))

(declare-fun m!1574349 () Bool)

(assert (=> bs!338007 m!1574349))

(assert (=> bs!338007 m!1574349))

(declare-fun m!1574351 () Bool)

(assert (=> bs!338007 m!1574351))

(assert (=> bs!338007 m!1573329))

(declare-fun m!1574353 () Bool)

(assert (=> bs!338007 m!1574353))

(assert (=> b!1396876 d!399729))

(declare-fun d!399731 () Bool)

(assert (=> d!399731 (= (list!5522 (_1!7788 lt!465388)) (list!5526 (c!229884 (_1!7788 lt!465388))))))

(declare-fun bs!338008 () Bool)

(assert (= bs!338008 d!399731))

(declare-fun m!1574355 () Bool)

(assert (=> bs!338008 m!1574355))

(assert (=> b!1396876 d!399731))

(declare-fun b!1397632 () Bool)

(declare-fun e!892416 () Bool)

(declare-fun lt!465668 () tuple2!13804)

(assert (=> b!1397632 (= e!892416 (= (_2!7788 lt!465668) lt!465417))))

(declare-fun b!1397633 () Bool)

(declare-fun e!892415 () Bool)

(assert (=> b!1397633 (= e!892415 (= (list!5521 (_2!7788 lt!465668)) (_2!7787 (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465417)))))))

(declare-fun d!399733 () Bool)

(assert (=> d!399733 e!892415))

(declare-fun res!631581 () Bool)

(assert (=> d!399733 (=> (not res!631581) (not e!892415))))

(assert (=> d!399733 (= res!631581 e!892416)))

(declare-fun c!230042 () Bool)

(assert (=> d!399733 (= c!230042 (> (size!11674 (_1!7788 lt!465668)) 0))))

(assert (=> d!399733 (= lt!465668 (lexTailRecV2!437 thiss!19762 rules!2550 lt!465417 (BalanceConc!9289 Empty!4674) lt!465417 (BalanceConc!9291 Empty!4675)))))

(assert (=> d!399733 (= (lex!977 thiss!19762 rules!2550 lt!465417) lt!465668)))

(declare-fun b!1397634 () Bool)

(declare-fun e!892414 () Bool)

(assert (=> b!1397634 (= e!892414 (not (isEmpty!8619 (_1!7788 lt!465668))))))

(declare-fun b!1397635 () Bool)

(declare-fun res!631580 () Bool)

(assert (=> b!1397635 (=> (not res!631580) (not e!892415))))

(assert (=> b!1397635 (= res!631580 (= (list!5522 (_1!7788 lt!465668)) (_1!7787 (lexList!666 thiss!19762 rules!2550 (list!5521 lt!465417)))))))

(declare-fun b!1397636 () Bool)

(assert (=> b!1397636 (= e!892416 e!892414)))

(declare-fun res!631579 () Bool)

(assert (=> b!1397636 (= res!631579 (< (size!11662 (_2!7788 lt!465668)) (size!11662 lt!465417)))))

(assert (=> b!1397636 (=> (not res!631579) (not e!892414))))

(assert (= (and d!399733 c!230042) b!1397636))

(assert (= (and d!399733 (not c!230042)) b!1397632))

(assert (= (and b!1397636 res!631579) b!1397634))

(assert (= (and d!399733 res!631581) b!1397635))

(assert (= (and b!1397635 res!631580) b!1397633))

(declare-fun m!1574357 () Bool)

(assert (=> b!1397633 m!1574357))

(assert (=> b!1397633 m!1573263))

(assert (=> b!1397633 m!1573263))

(assert (=> b!1397633 m!1573265))

(declare-fun m!1574359 () Bool)

(assert (=> b!1397635 m!1574359))

(assert (=> b!1397635 m!1573263))

(assert (=> b!1397635 m!1573263))

(assert (=> b!1397635 m!1573265))

(declare-fun m!1574361 () Bool)

(assert (=> b!1397636 m!1574361))

(declare-fun m!1574363 () Bool)

(assert (=> b!1397636 m!1574363))

(declare-fun m!1574365 () Bool)

(assert (=> d!399733 m!1574365))

(declare-fun m!1574367 () Bool)

(assert (=> d!399733 m!1574367))

(declare-fun m!1574369 () Bool)

(assert (=> b!1397634 m!1574369))

(assert (=> b!1396876 d!399733))

(declare-fun b!1397649 () Bool)

(declare-fun e!892426 () Bool)

(declare-fun lt!465673 () Rule!4714)

(assert (=> b!1397649 (= e!892426 (contains!2754 rules!2550 lt!465673))))

(declare-fun b!1397650 () Bool)

(declare-fun e!892425 () Rule!4714)

(assert (=> b!1397650 (= e!892425 (getWitness!446 (t!122705 rules!2550) lambda!60862))))

(declare-fun b!1397651 () Bool)

(declare-fun e!892428 () Rule!4714)

(assert (=> b!1397651 (= e!892428 e!892425)))

(declare-fun c!230047 () Bool)

(assert (=> b!1397651 (= c!230047 ((_ is Cons!14186) rules!2550))))

(declare-fun b!1397652 () Bool)

(assert (=> b!1397652 (= e!892428 (h!19587 rules!2550))))

(declare-fun d!399735 () Bool)

(assert (=> d!399735 e!892426))

(declare-fun res!631586 () Bool)

(assert (=> d!399735 (=> (not res!631586) (not e!892426))))

(assert (=> d!399735 (= res!631586 (dynLambda!6549 lambda!60862 lt!465673))))

(assert (=> d!399735 (= lt!465673 e!892428)))

(declare-fun c!230048 () Bool)

(declare-fun e!892427 () Bool)

(assert (=> d!399735 (= c!230048 e!892427)))

(declare-fun res!631587 () Bool)

(assert (=> d!399735 (=> (not res!631587) (not e!892427))))

(assert (=> d!399735 (= res!631587 ((_ is Cons!14186) rules!2550))))

(assert (=> d!399735 (exists!558 rules!2550 lambda!60862)))

(assert (=> d!399735 (= (getWitness!446 rules!2550 lambda!60862) lt!465673)))

(declare-fun b!1397653 () Bool)

(declare-fun lt!465674 () Unit!20486)

(declare-fun Unit!20495 () Unit!20486)

(assert (=> b!1397653 (= lt!465674 Unit!20495)))

(assert (=> b!1397653 false))

(declare-fun head!2574 (List!14252) Rule!4714)

(assert (=> b!1397653 (= e!892425 (head!2574 rules!2550))))

(declare-fun b!1397654 () Bool)

(assert (=> b!1397654 (= e!892427 (dynLambda!6549 lambda!60862 (h!19587 rules!2550)))))

(assert (= (and d!399735 res!631587) b!1397654))

(assert (= (and d!399735 c!230048) b!1397652))

(assert (= (and d!399735 (not c!230048)) b!1397651))

(assert (= (and b!1397651 c!230047) b!1397650))

(assert (= (and b!1397651 (not c!230047)) b!1397653))

(assert (= (and d!399735 res!631586) b!1397649))

(declare-fun b_lambda!43773 () Bool)

(assert (=> (not b_lambda!43773) (not d!399735)))

(declare-fun b_lambda!43775 () Bool)

(assert (=> (not b_lambda!43775) (not b!1397654)))

(declare-fun m!1574371 () Bool)

(assert (=> b!1397653 m!1574371))

(declare-fun m!1574373 () Bool)

(assert (=> d!399735 m!1574373))

(assert (=> d!399735 m!1573357))

(declare-fun m!1574375 () Bool)

(assert (=> b!1397654 m!1574375))

(declare-fun m!1574377 () Bool)

(assert (=> b!1397650 m!1574377))

(declare-fun m!1574379 () Bool)

(assert (=> b!1397649 m!1574379))

(assert (=> b!1396876 d!399735))

(declare-fun d!399737 () Bool)

(declare-fun e!892429 () Bool)

(assert (=> d!399737 e!892429))

(declare-fun res!631588 () Bool)

(assert (=> d!399737 (=> (not res!631588) (not e!892429))))

(declare-fun lt!465675 () BalanceConc!9290)

(assert (=> d!399737 (= res!631588 (= (list!5522 lt!465675) (Cons!14187 t1!34 Nil!14187)))))

(assert (=> d!399737 (= lt!465675 (singleton!488 t1!34))))

(assert (=> d!399737 (= (singletonSeq!1112 t1!34) lt!465675)))

(declare-fun b!1397655 () Bool)

(assert (=> b!1397655 (= e!892429 (isBalanced!1382 (c!229884 lt!465675)))))

(assert (= (and d!399737 res!631588) b!1397655))

(declare-fun m!1574381 () Bool)

(assert (=> d!399737 m!1574381))

(declare-fun m!1574383 () Bool)

(assert (=> d!399737 m!1574383))

(declare-fun m!1574385 () Bool)

(assert (=> b!1397655 m!1574385))

(assert (=> b!1396876 d!399737))

(declare-fun d!399739 () Bool)

(assert (=> d!399739 (not (matchR!1762 (regex!2457 (rule!4220 t2!34)) lt!465415))))

(declare-fun lt!465676 () Unit!20486)

(assert (=> d!399739 (= lt!465676 (choose!8595 (regex!2457 (rule!4220 t2!34)) lt!465415 (head!2571 lt!465415)))))

(assert (=> d!399739 (validRegex!1647 (regex!2457 (rule!4220 t2!34)))))

(assert (=> d!399739 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!202 (regex!2457 (rule!4220 t2!34)) lt!465415 (head!2571 lt!465415)) lt!465676)))

(declare-fun bs!338009 () Bool)

(assert (= bs!338009 d!399739))

(assert (=> bs!338009 m!1573371))

(assert (=> bs!338009 m!1573267))

(declare-fun m!1574387 () Bool)

(assert (=> bs!338009 m!1574387))

(assert (=> bs!338009 m!1573903))

(assert (=> b!1396855 d!399739))

(declare-fun d!399741 () Bool)

(assert (=> d!399741 (= (head!2571 lt!465415) (h!19585 lt!465415))))

(assert (=> b!1396855 d!399741))

(declare-fun d!399743 () Bool)

(declare-fun lt!465677 () Bool)

(assert (=> d!399743 (= lt!465677 (select (content!2096 lt!465400) lt!465396))))

(declare-fun e!892430 () Bool)

(assert (=> d!399743 (= lt!465677 e!892430)))

(declare-fun res!631589 () Bool)

(assert (=> d!399743 (=> (not res!631589) (not e!892430))))

(assert (=> d!399743 (= res!631589 ((_ is Cons!14184) lt!465400))))

(assert (=> d!399743 (= (contains!2753 lt!465400 lt!465396) lt!465677)))

(declare-fun b!1397656 () Bool)

(declare-fun e!892431 () Bool)

(assert (=> b!1397656 (= e!892430 e!892431)))

(declare-fun res!631590 () Bool)

(assert (=> b!1397656 (=> res!631590 e!892431)))

(assert (=> b!1397656 (= res!631590 (= (h!19585 lt!465400) lt!465396))))

(declare-fun b!1397657 () Bool)

(assert (=> b!1397657 (= e!892431 (contains!2753 (t!122703 lt!465400) lt!465396))))

(assert (= (and d!399743 res!631589) b!1397656))

(assert (= (and b!1397656 (not res!631590)) b!1397657))

(assert (=> d!399743 m!1573905))

(declare-fun m!1574389 () Bool)

(assert (=> d!399743 m!1574389))

(declare-fun m!1574391 () Bool)

(assert (=> b!1397657 m!1574391))

(assert (=> b!1396898 d!399743))

(declare-fun d!399745 () Bool)

(assert (=> d!399745 (= (inv!18507 (tag!2719 (rule!4220 t2!34))) (= (mod (str.len (value!79656 (tag!2719 (rule!4220 t2!34)))) 2) 0))))

(assert (=> b!1396856 d!399745))

(declare-fun d!399747 () Bool)

(declare-fun res!631593 () Bool)

(declare-fun e!892434 () Bool)

(assert (=> d!399747 (=> (not res!631593) (not e!892434))))

(declare-fun semiInverseModEq!954 (Int Int) Bool)

(assert (=> d!399747 (= res!631593 (semiInverseModEq!954 (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (toValue!3748 (transformation!2457 (rule!4220 t2!34)))))))

(assert (=> d!399747 (= (inv!18510 (transformation!2457 (rule!4220 t2!34))) e!892434)))

(declare-fun b!1397660 () Bool)

(declare-fun equivClasses!913 (Int Int) Bool)

(assert (=> b!1397660 (= e!892434 (equivClasses!913 (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (toValue!3748 (transformation!2457 (rule!4220 t2!34)))))))

(assert (= (and d!399747 res!631593) b!1397660))

(declare-fun m!1574393 () Bool)

(assert (=> d!399747 m!1574393))

(declare-fun m!1574395 () Bool)

(assert (=> b!1397660 m!1574395))

(assert (=> b!1396856 d!399747))

(declare-fun d!399749 () Bool)

(declare-fun lt!465680 () Bool)

(declare-fun content!2099 (List!14254) (InoxSet Regex!3771))

(assert (=> d!399749 (= lt!465680 (select (content!2099 (map!3146 rules!2550 lambda!60860)) lt!465407))))

(declare-fun e!892440 () Bool)

(assert (=> d!399749 (= lt!465680 e!892440)))

(declare-fun res!631598 () Bool)

(assert (=> d!399749 (=> (not res!631598) (not e!892440))))

(assert (=> d!399749 (= res!631598 ((_ is Cons!14188) (map!3146 rules!2550 lambda!60860)))))

(assert (=> d!399749 (= (contains!2755 (map!3146 rules!2550 lambda!60860) lt!465407) lt!465680)))

(declare-fun b!1397665 () Bool)

(declare-fun e!892439 () Bool)

(assert (=> b!1397665 (= e!892440 e!892439)))

(declare-fun res!631599 () Bool)

(assert (=> b!1397665 (=> res!631599 e!892439)))

(assert (=> b!1397665 (= res!631599 (= (h!19589 (map!3146 rules!2550 lambda!60860)) lt!465407))))

(declare-fun b!1397666 () Bool)

(assert (=> b!1397666 (= e!892439 (contains!2755 (t!122707 (map!3146 rules!2550 lambda!60860)) lt!465407))))

(assert (= (and d!399749 res!631598) b!1397665))

(assert (= (and b!1397665 (not res!631599)) b!1397666))

(assert (=> d!399749 m!1573275))

(declare-fun m!1574397 () Bool)

(assert (=> d!399749 m!1574397))

(declare-fun m!1574399 () Bool)

(assert (=> d!399749 m!1574399))

(declare-fun m!1574401 () Bool)

(assert (=> b!1397666 m!1574401))

(assert (=> b!1396899 d!399749))

(assert (=> b!1396899 d!399501))

(declare-fun e!892452 () Regex!3771)

(declare-fun b!1397679 () Bool)

(assert (=> b!1397679 (= e!892452 (getWitness!447 (t!122707 (map!3146 rules!2550 lambda!60860)) lambda!60861))))

(declare-fun b!1397680 () Bool)

(declare-fun e!892449 () Regex!3771)

(assert (=> b!1397680 (= e!892449 (h!19589 (map!3146 rules!2550 lambda!60860)))))

(declare-fun e!892450 () Bool)

(declare-fun lt!465686 () Regex!3771)

(declare-fun b!1397681 () Bool)

(assert (=> b!1397681 (= e!892450 (contains!2755 (map!3146 rules!2550 lambda!60860) lt!465686))))

(declare-fun b!1397682 () Bool)

(declare-fun e!892451 () Bool)

(declare-fun dynLambda!6552 (Int Regex!3771) Bool)

(assert (=> b!1397682 (= e!892451 (dynLambda!6552 lambda!60861 (h!19589 (map!3146 rules!2550 lambda!60860))))))

(declare-fun d!399751 () Bool)

(assert (=> d!399751 e!892450))

(declare-fun res!631604 () Bool)

(assert (=> d!399751 (=> (not res!631604) (not e!892450))))

(assert (=> d!399751 (= res!631604 (dynLambda!6552 lambda!60861 lt!465686))))

(assert (=> d!399751 (= lt!465686 e!892449)))

(declare-fun c!230054 () Bool)

(assert (=> d!399751 (= c!230054 e!892451)))

(declare-fun res!631605 () Bool)

(assert (=> d!399751 (=> (not res!631605) (not e!892451))))

(assert (=> d!399751 (= res!631605 ((_ is Cons!14188) (map!3146 rules!2550 lambda!60860)))))

(assert (=> d!399751 (exists!559 (map!3146 rules!2550 lambda!60860) lambda!60861)))

(assert (=> d!399751 (= (getWitness!447 (map!3146 rules!2550 lambda!60860) lambda!60861) lt!465686)))

(declare-fun b!1397683 () Bool)

(assert (=> b!1397683 (= e!892449 e!892452)))

(declare-fun c!230053 () Bool)

(assert (=> b!1397683 (= c!230053 ((_ is Cons!14188) (map!3146 rules!2550 lambda!60860)))))

(declare-fun b!1397684 () Bool)

(declare-fun lt!465685 () Unit!20486)

(declare-fun Unit!20496 () Unit!20486)

(assert (=> b!1397684 (= lt!465685 Unit!20496)))

(assert (=> b!1397684 false))

(declare-fun head!2575 (List!14254) Regex!3771)

(assert (=> b!1397684 (= e!892452 (head!2575 (map!3146 rules!2550 lambda!60860)))))

(assert (= (and d!399751 res!631605) b!1397682))

(assert (= (and d!399751 c!230054) b!1397680))

(assert (= (and d!399751 (not c!230054)) b!1397683))

(assert (= (and b!1397683 c!230053) b!1397679))

(assert (= (and b!1397683 (not c!230053)) b!1397684))

(assert (= (and d!399751 res!631604) b!1397681))

(declare-fun b_lambda!43777 () Bool)

(assert (=> (not b_lambda!43777) (not b!1397682)))

(declare-fun b_lambda!43779 () Bool)

(assert (=> (not b_lambda!43779) (not d!399751)))

(declare-fun m!1574403 () Bool)

(assert (=> d!399751 m!1574403))

(assert (=> d!399751 m!1573275))

(assert (=> d!399751 m!1573277))

(declare-fun m!1574405 () Bool)

(assert (=> b!1397679 m!1574405))

(assert (=> b!1397684 m!1573275))

(declare-fun m!1574407 () Bool)

(assert (=> b!1397684 m!1574407))

(declare-fun m!1574409 () Bool)

(assert (=> b!1397682 m!1574409))

(assert (=> b!1397681 m!1573275))

(declare-fun m!1574411 () Bool)

(assert (=> b!1397681 m!1574411))

(assert (=> b!1396899 d!399751))

(declare-fun d!399753 () Bool)

(declare-fun lt!465687 () Bool)

(assert (=> d!399753 (= lt!465687 (select (content!2098 rules!2550) lt!465410))))

(declare-fun e!892453 () Bool)

(assert (=> d!399753 (= lt!465687 e!892453)))

(declare-fun res!631606 () Bool)

(assert (=> d!399753 (=> (not res!631606) (not e!892453))))

(assert (=> d!399753 (= res!631606 ((_ is Cons!14186) rules!2550))))

(assert (=> d!399753 (= (contains!2754 rules!2550 lt!465410) lt!465687)))

(declare-fun b!1397685 () Bool)

(declare-fun e!892454 () Bool)

(assert (=> b!1397685 (= e!892453 e!892454)))

(declare-fun res!631607 () Bool)

(assert (=> b!1397685 (=> res!631607 e!892454)))

(assert (=> b!1397685 (= res!631607 (= (h!19587 rules!2550) lt!465410))))

(declare-fun b!1397686 () Bool)

(assert (=> b!1397686 (= e!892454 (contains!2754 (t!122705 rules!2550) lt!465410))))

(assert (= (and d!399753 res!631606) b!1397685))

(assert (= (and b!1397685 (not res!631607)) b!1397686))

(assert (=> d!399753 m!1573709))

(declare-fun m!1574413 () Bool)

(assert (=> d!399753 m!1574413))

(declare-fun m!1574415 () Bool)

(assert (=> b!1397686 m!1574415))

(assert (=> b!1396878 d!399753))

(declare-fun d!399755 () Bool)

(declare-fun res!631612 () Bool)

(declare-fun e!892457 () Bool)

(assert (=> d!399755 (=> (not res!631612) (not e!892457))))

(assert (=> d!399755 (= res!631612 (not (isEmpty!8615 (originalCharacters!3319 t1!34))))))

(assert (=> d!399755 (= (inv!18511 t1!34) e!892457)))

(declare-fun b!1397691 () Bool)

(declare-fun res!631613 () Bool)

(assert (=> b!1397691 (=> (not res!631613) (not e!892457))))

(assert (=> b!1397691 (= res!631613 (= (originalCharacters!3319 t1!34) (list!5521 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (value!79657 t1!34)))))))

(declare-fun b!1397692 () Bool)

(assert (=> b!1397692 (= e!892457 (= (size!11661 t1!34) (size!11664 (originalCharacters!3319 t1!34))))))

(assert (= (and d!399755 res!631612) b!1397691))

(assert (= (and b!1397691 res!631613) b!1397692))

(declare-fun b_lambda!43781 () Bool)

(assert (=> (not b_lambda!43781) (not b!1397691)))

(assert (=> b!1397691 t!122722))

(declare-fun b_and!93583 () Bool)

(assert (= b_and!93573 (and (=> t!122722 result!88716) b_and!93583)))

(assert (=> b!1397691 t!122724))

(declare-fun b_and!93585 () Bool)

(assert (= b_and!93575 (and (=> t!122724 result!88720) b_and!93585)))

(assert (=> b!1397691 t!122726))

(declare-fun b_and!93587 () Bool)

(assert (= b_and!93577 (and (=> t!122726 result!88722) b_and!93587)))

(declare-fun m!1574417 () Bool)

(assert (=> d!399755 m!1574417))

(assert (=> b!1397691 m!1573801))

(assert (=> b!1397691 m!1573801))

(declare-fun m!1574419 () Bool)

(assert (=> b!1397691 m!1574419))

(declare-fun m!1574421 () Bool)

(assert (=> b!1397692 m!1574421))

(assert (=> start!127146 d!399755))

(declare-fun d!399757 () Bool)

(declare-fun res!631614 () Bool)

(declare-fun e!892458 () Bool)

(assert (=> d!399757 (=> (not res!631614) (not e!892458))))

(assert (=> d!399757 (= res!631614 (not (isEmpty!8615 (originalCharacters!3319 t2!34))))))

(assert (=> d!399757 (= (inv!18511 t2!34) e!892458)))

(declare-fun b!1397693 () Bool)

(declare-fun res!631615 () Bool)

(assert (=> b!1397693 (=> (not res!631615) (not e!892458))))

(assert (=> b!1397693 (= res!631615 (= (originalCharacters!3319 t2!34) (list!5521 (dynLambda!6543 (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (value!79657 t2!34)))))))

(declare-fun b!1397694 () Bool)

(assert (=> b!1397694 (= e!892458 (= (size!11661 t2!34) (size!11664 (originalCharacters!3319 t2!34))))))

(assert (= (and d!399757 res!631614) b!1397693))

(assert (= (and b!1397693 res!631615) b!1397694))

(declare-fun b_lambda!43783 () Bool)

(assert (=> (not b_lambda!43783) (not b!1397693)))

(assert (=> b!1397693 t!122728))

(declare-fun b_and!93589 () Bool)

(assert (= b_and!93583 (and (=> t!122728 result!88724) b_and!93589)))

(assert (=> b!1397693 t!122730))

(declare-fun b_and!93591 () Bool)

(assert (= b_and!93585 (and (=> t!122730 result!88726) b_and!93591)))

(assert (=> b!1397693 t!122732))

(declare-fun b_and!93593 () Bool)

(assert (= b_and!93587 (and (=> t!122732 result!88728) b_and!93593)))

(declare-fun m!1574423 () Bool)

(assert (=> d!399757 m!1574423))

(assert (=> b!1397693 m!1573921))

(assert (=> b!1397693 m!1573921))

(declare-fun m!1574425 () Bool)

(assert (=> b!1397693 m!1574425))

(declare-fun m!1574427 () Bool)

(assert (=> b!1397694 m!1574427))

(assert (=> start!127146 d!399757))

(declare-fun d!399759 () Bool)

(declare-fun lt!465688 () Bool)

(declare-fun e!892460 () Bool)

(assert (=> d!399759 (= lt!465688 e!892460)))

(declare-fun res!631617 () Bool)

(assert (=> d!399759 (=> (not res!631617) (not e!892460))))

(assert (=> d!399759 (= res!631617 (= (list!5522 (_1!7788 (lex!977 thiss!19762 rules!2550 (print!916 thiss!19762 (singletonSeq!1112 t1!34))))) (list!5522 (singletonSeq!1112 t1!34))))))

(declare-fun e!892459 () Bool)

(assert (=> d!399759 (= lt!465688 e!892459)))

(declare-fun res!631618 () Bool)

(assert (=> d!399759 (=> (not res!631618) (not e!892459))))

(declare-fun lt!465689 () tuple2!13804)

(assert (=> d!399759 (= res!631618 (= (size!11674 (_1!7788 lt!465689)) 1))))

(assert (=> d!399759 (= lt!465689 (lex!977 thiss!19762 rules!2550 (print!916 thiss!19762 (singletonSeq!1112 t1!34))))))

(assert (=> d!399759 (not (isEmpty!8609 rules!2550))))

(assert (=> d!399759 (= (rulesProduceIndividualToken!1121 thiss!19762 rules!2550 t1!34) lt!465688)))

(declare-fun b!1397695 () Bool)

(declare-fun res!631616 () Bool)

(assert (=> b!1397695 (=> (not res!631616) (not e!892459))))

(assert (=> b!1397695 (= res!631616 (= (apply!3601 (_1!7788 lt!465689) 0) t1!34))))

(declare-fun b!1397696 () Bool)

(assert (=> b!1397696 (= e!892459 (isEmpty!8608 (_2!7788 lt!465689)))))

(declare-fun b!1397697 () Bool)

(assert (=> b!1397697 (= e!892460 (isEmpty!8608 (_2!7788 (lex!977 thiss!19762 rules!2550 (print!916 thiss!19762 (singletonSeq!1112 t1!34))))))))

(assert (= (and d!399759 res!631618) b!1397695))

(assert (= (and b!1397695 res!631616) b!1397696))

(assert (= (and d!399759 res!631617) b!1397697))

(assert (=> d!399759 m!1573329))

(assert (=> d!399759 m!1574349))

(assert (=> d!399759 m!1573331))

(declare-fun m!1574429 () Bool)

(assert (=> d!399759 m!1574429))

(assert (=> d!399759 m!1573329))

(assert (=> d!399759 m!1573331))

(declare-fun m!1574431 () Bool)

(assert (=> d!399759 m!1574431))

(assert (=> d!399759 m!1573309))

(assert (=> d!399759 m!1573329))

(declare-fun m!1574433 () Bool)

(assert (=> d!399759 m!1574433))

(declare-fun m!1574435 () Bool)

(assert (=> b!1397695 m!1574435))

(declare-fun m!1574437 () Bool)

(assert (=> b!1397696 m!1574437))

(assert (=> b!1397697 m!1573329))

(assert (=> b!1397697 m!1573329))

(assert (=> b!1397697 m!1573331))

(assert (=> b!1397697 m!1573331))

(assert (=> b!1397697 m!1574429))

(declare-fun m!1574439 () Bool)

(assert (=> b!1397697 m!1574439))

(assert (=> b!1396895 d!399759))

(declare-fun d!399761 () Bool)

(assert (=> d!399761 (= (isEmpty!8609 rules!2550) ((_ is Nil!14186) rules!2550))))

(assert (=> b!1396874 d!399761))

(declare-fun d!399763 () Bool)

(declare-fun choose!8606 (Int) Bool)

(assert (=> d!399763 (= (Exists!921 lambda!60859) (choose!8606 lambda!60859))))

(declare-fun bs!338010 () Bool)

(assert (= bs!338010 d!399763))

(declare-fun m!1574441 () Bool)

(assert (=> bs!338010 m!1574441))

(assert (=> b!1396853 d!399763))

(declare-fun bs!338011 () Bool)

(declare-fun d!399765 () Bool)

(assert (= bs!338011 (and d!399765 b!1396853)))

(declare-fun lambda!60907 () Int)

(assert (=> bs!338011 (= lambda!60907 lambda!60859)))

(assert (=> d!399765 true))

(assert (=> d!399765 true))

(assert (=> d!399765 (Exists!921 lambda!60907)))

(declare-fun lt!465692 () Unit!20486)

(declare-fun choose!8607 (Regex!3771 List!14250) Unit!20486)

(assert (=> d!399765 (= lt!465692 (choose!8607 lt!465392 lt!465393))))

(assert (=> d!399765 (validRegex!1647 lt!465392)))

(assert (=> d!399765 (= (lemmaPrefixMatchThenExistsStringThatMatches!239 lt!465392 lt!465393) lt!465692)))

(declare-fun bs!338012 () Bool)

(assert (= bs!338012 d!399765))

(declare-fun m!1574443 () Bool)

(assert (=> bs!338012 m!1574443))

(declare-fun m!1574445 () Bool)

(assert (=> bs!338012 m!1574445))

(assert (=> bs!338012 m!1573883))

(assert (=> b!1396853 d!399765))

(declare-fun d!399767 () Bool)

(declare-fun prefixMatchZipperSequence!296 (Regex!3771 BalanceConc!9288) Bool)

(declare-fun ++!3690 (BalanceConc!9288 BalanceConc!9288) BalanceConc!9288)

(declare-fun singletonSeq!1114 (C!7832) BalanceConc!9288)

(assert (=> d!399767 (= (separableTokensPredicate!435 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!296 (rulesRegex!340 thiss!19762 rules!2550) (++!3690 (charsOf!1429 t1!34) (singletonSeq!1114 (apply!3593 (charsOf!1429 t2!34) 0))))))))

(declare-fun bs!338013 () Bool)

(assert (= bs!338013 d!399767))

(assert (=> bs!338013 m!1573397))

(declare-fun m!1574447 () Bool)

(assert (=> bs!338013 m!1574447))

(declare-fun m!1574449 () Bool)

(assert (=> bs!338013 m!1574449))

(assert (=> bs!338013 m!1573389))

(assert (=> bs!338013 m!1573305))

(assert (=> bs!338013 m!1573305))

(declare-fun m!1574451 () Bool)

(assert (=> bs!338013 m!1574451))

(assert (=> bs!338013 m!1573397))

(assert (=> bs!338013 m!1573389))

(declare-fun m!1574453 () Bool)

(assert (=> bs!338013 m!1574453))

(assert (=> bs!338013 m!1574447))

(assert (=> bs!338013 m!1574451))

(assert (=> bs!338013 m!1574453))

(assert (=> b!1396896 d!399767))

(declare-fun d!399769 () Bool)

(assert (=> d!399769 (= (inv!18507 (tag!2719 (h!19587 rules!2550))) (= (mod (str.len (value!79656 (tag!2719 (h!19587 rules!2550)))) 2) 0))))

(assert (=> b!1396875 d!399769))

(declare-fun d!399771 () Bool)

(declare-fun res!631621 () Bool)

(declare-fun e!892463 () Bool)

(assert (=> d!399771 (=> (not res!631621) (not e!892463))))

(assert (=> d!399771 (= res!631621 (semiInverseModEq!954 (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toValue!3748 (transformation!2457 (h!19587 rules!2550)))))))

(assert (=> d!399771 (= (inv!18510 (transformation!2457 (h!19587 rules!2550))) e!892463)))

(declare-fun b!1397700 () Bool)

(assert (=> b!1397700 (= e!892463 (equivClasses!913 (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toValue!3748 (transformation!2457 (h!19587 rules!2550)))))))

(assert (= (and d!399771 res!631621) b!1397700))

(declare-fun m!1574455 () Bool)

(assert (=> d!399771 m!1574455))

(declare-fun m!1574457 () Bool)

(assert (=> b!1397700 m!1574457))

(assert (=> b!1396875 d!399771))

(declare-fun d!399773 () Bool)

(declare-fun lt!465693 () Bool)

(assert (=> d!399773 (= lt!465693 (select (content!2096 lt!465393) lt!465397))))

(declare-fun e!892464 () Bool)

(assert (=> d!399773 (= lt!465693 e!892464)))

(declare-fun res!631622 () Bool)

(assert (=> d!399773 (=> (not res!631622) (not e!892464))))

(assert (=> d!399773 (= res!631622 ((_ is Cons!14184) lt!465393))))

(assert (=> d!399773 (= (contains!2753 lt!465393 lt!465397) lt!465693)))

(declare-fun b!1397701 () Bool)

(declare-fun e!892465 () Bool)

(assert (=> b!1397701 (= e!892464 e!892465)))

(declare-fun res!631623 () Bool)

(assert (=> b!1397701 (=> res!631623 e!892465)))

(assert (=> b!1397701 (= res!631623 (= (h!19585 lt!465393) lt!465397))))

(declare-fun b!1397702 () Bool)

(assert (=> b!1397702 (= e!892465 (contains!2753 (t!122703 lt!465393) lt!465397))))

(assert (= (and d!399773 res!631622) b!1397701))

(assert (= (and b!1397701 (not res!631623)) b!1397702))

(assert (=> d!399773 m!1573679))

(declare-fun m!1574459 () Bool)

(assert (=> d!399773 m!1574459))

(declare-fun m!1574461 () Bool)

(assert (=> b!1397702 m!1574461))

(assert (=> b!1396854 d!399773))

(declare-fun d!399775 () Bool)

(declare-fun lt!465694 () C!7832)

(assert (=> d!399775 (= lt!465694 (apply!3599 (list!5521 lt!465399) 0))))

(assert (=> d!399775 (= lt!465694 (apply!3600 (c!229883 lt!465399) 0))))

(declare-fun e!892466 () Bool)

(assert (=> d!399775 e!892466))

(declare-fun res!631624 () Bool)

(assert (=> d!399775 (=> (not res!631624) (not e!892466))))

(assert (=> d!399775 (= res!631624 (<= 0 0))))

(assert (=> d!399775 (= (apply!3593 lt!465399 0) lt!465694)))

(declare-fun b!1397703 () Bool)

(assert (=> b!1397703 (= e!892466 (< 0 (size!11662 lt!465399)))))

(assert (= (and d!399775 res!631624) b!1397703))

(assert (=> d!399775 m!1573395))

(assert (=> d!399775 m!1573395))

(declare-fun m!1574463 () Bool)

(assert (=> d!399775 m!1574463))

(declare-fun m!1574465 () Bool)

(assert (=> d!399775 m!1574465))

(declare-fun m!1574467 () Bool)

(assert (=> b!1397703 m!1574467))

(assert (=> b!1396854 d!399775))

(declare-fun d!399777 () Bool)

(declare-fun lt!465695 () Bool)

(assert (=> d!399777 (= lt!465695 (select (content!2096 (usedCharacters!268 (regex!2457 (rule!4220 t2!34)))) lt!465396))))

(declare-fun e!892467 () Bool)

(assert (=> d!399777 (= lt!465695 e!892467)))

(declare-fun res!631625 () Bool)

(assert (=> d!399777 (=> (not res!631625) (not e!892467))))

(assert (=> d!399777 (= res!631625 ((_ is Cons!14184) (usedCharacters!268 (regex!2457 (rule!4220 t2!34)))))))

(assert (=> d!399777 (= (contains!2753 (usedCharacters!268 (regex!2457 (rule!4220 t2!34))) lt!465396) lt!465695)))

(declare-fun b!1397704 () Bool)

(declare-fun e!892468 () Bool)

(assert (=> b!1397704 (= e!892467 e!892468)))

(declare-fun res!631626 () Bool)

(assert (=> b!1397704 (=> res!631626 e!892468)))

(assert (=> b!1397704 (= res!631626 (= (h!19585 (usedCharacters!268 (regex!2457 (rule!4220 t2!34)))) lt!465396))))

(declare-fun b!1397705 () Bool)

(assert (=> b!1397705 (= e!892468 (contains!2753 (t!122703 (usedCharacters!268 (regex!2457 (rule!4220 t2!34)))) lt!465396))))

(assert (= (and d!399777 res!631625) b!1397704))

(assert (= (and b!1397704 (not res!631626)) b!1397705))

(assert (=> d!399777 m!1573271))

(declare-fun m!1574469 () Bool)

(assert (=> d!399777 m!1574469))

(declare-fun m!1574471 () Bool)

(assert (=> d!399777 m!1574471))

(declare-fun m!1574473 () Bool)

(assert (=> b!1397705 m!1574473))

(assert (=> b!1396897 d!399777))

(declare-fun b!1397706 () Bool)

(declare-fun e!892472 () List!14250)

(declare-fun e!892470 () List!14250)

(assert (=> b!1397706 (= e!892472 e!892470)))

(declare-fun c!230056 () Bool)

(assert (=> b!1397706 (= c!230056 ((_ is Union!3771) (regex!2457 (rule!4220 t2!34))))))

(declare-fun b!1397707 () Bool)

(declare-fun call!93359 () List!14250)

(assert (=> b!1397707 (= e!892470 call!93359)))

(declare-fun b!1397708 () Bool)

(declare-fun call!93361 () List!14250)

(assert (=> b!1397708 (= e!892472 call!93361)))

(declare-fun b!1397709 () Bool)

(declare-fun e!892469 () List!14250)

(declare-fun e!892471 () List!14250)

(assert (=> b!1397709 (= e!892469 e!892471)))

(declare-fun c!230055 () Bool)

(assert (=> b!1397709 (= c!230055 ((_ is ElementMatch!3771) (regex!2457 (rule!4220 t2!34))))))

(declare-fun bm!93353 () Bool)

(declare-fun call!93358 () List!14250)

(assert (=> bm!93353 (= call!93358 (usedCharacters!268 (ite c!230056 (regTwo!8055 (regex!2457 (rule!4220 t2!34))) (regOne!8054 (regex!2457 (rule!4220 t2!34))))))))

(declare-fun bm!93354 () Bool)

(declare-fun call!93360 () List!14250)

(assert (=> bm!93354 (= call!93360 call!93361)))

(declare-fun b!1397710 () Bool)

(assert (=> b!1397710 (= e!892470 call!93359)))

(declare-fun b!1397712 () Bool)

(declare-fun c!230058 () Bool)

(assert (=> b!1397712 (= c!230058 ((_ is Star!3771) (regex!2457 (rule!4220 t2!34))))))

(assert (=> b!1397712 (= e!892471 e!892472)))

(declare-fun b!1397713 () Bool)

(assert (=> b!1397713 (= e!892471 (Cons!14184 (c!229882 (regex!2457 (rule!4220 t2!34))) Nil!14184))))

(declare-fun bm!93355 () Bool)

(assert (=> bm!93355 (= call!93359 (++!3688 (ite c!230056 call!93360 call!93358) (ite c!230056 call!93358 call!93360)))))

(declare-fun bm!93356 () Bool)

(assert (=> bm!93356 (= call!93361 (usedCharacters!268 (ite c!230058 (reg!4100 (regex!2457 (rule!4220 t2!34))) (ite c!230056 (regOne!8055 (regex!2457 (rule!4220 t2!34))) (regTwo!8054 (regex!2457 (rule!4220 t2!34)))))))))

(declare-fun d!399779 () Bool)

(declare-fun c!230057 () Bool)

(assert (=> d!399779 (= c!230057 (or ((_ is EmptyExpr!3771) (regex!2457 (rule!4220 t2!34))) ((_ is EmptyLang!3771) (regex!2457 (rule!4220 t2!34)))))))

(assert (=> d!399779 (= (usedCharacters!268 (regex!2457 (rule!4220 t2!34))) e!892469)))

(declare-fun b!1397711 () Bool)

(assert (=> b!1397711 (= e!892469 Nil!14184)))

(assert (= (and d!399779 c!230057) b!1397711))

(assert (= (and d!399779 (not c!230057)) b!1397709))

(assert (= (and b!1397709 c!230055) b!1397713))

(assert (= (and b!1397709 (not c!230055)) b!1397712))

(assert (= (and b!1397712 c!230058) b!1397708))

(assert (= (and b!1397712 (not c!230058)) b!1397706))

(assert (= (and b!1397706 c!230056) b!1397707))

(assert (= (and b!1397706 (not c!230056)) b!1397710))

(assert (= (or b!1397707 b!1397710) bm!93354))

(assert (= (or b!1397707 b!1397710) bm!93353))

(assert (= (or b!1397707 b!1397710) bm!93355))

(assert (= (or b!1397708 bm!93354) bm!93356))

(declare-fun m!1574475 () Bool)

(assert (=> bm!93353 m!1574475))

(declare-fun m!1574477 () Bool)

(assert (=> bm!93355 m!1574477))

(declare-fun m!1574479 () Bool)

(assert (=> bm!93356 m!1574479))

(assert (=> b!1396897 d!399779))

(declare-fun d!399781 () Bool)

(declare-fun lt!465696 () Bool)

(assert (=> d!399781 (= lt!465696 (select (content!2096 (usedCharacters!268 (regex!2457 (rule!4220 t1!34)))) lt!465397))))

(declare-fun e!892473 () Bool)

(assert (=> d!399781 (= lt!465696 e!892473)))

(declare-fun res!631627 () Bool)

(assert (=> d!399781 (=> (not res!631627) (not e!892473))))

(assert (=> d!399781 (= res!631627 ((_ is Cons!14184) (usedCharacters!268 (regex!2457 (rule!4220 t1!34)))))))

(assert (=> d!399781 (= (contains!2753 (usedCharacters!268 (regex!2457 (rule!4220 t1!34))) lt!465397) lt!465696)))

(declare-fun b!1397714 () Bool)

(declare-fun e!892474 () Bool)

(assert (=> b!1397714 (= e!892473 e!892474)))

(declare-fun res!631628 () Bool)

(assert (=> b!1397714 (=> res!631628 e!892474)))

(assert (=> b!1397714 (= res!631628 (= (h!19585 (usedCharacters!268 (regex!2457 (rule!4220 t1!34)))) lt!465397))))

(declare-fun b!1397715 () Bool)

(assert (=> b!1397715 (= e!892474 (contains!2753 (t!122703 (usedCharacters!268 (regex!2457 (rule!4220 t1!34)))) lt!465397))))

(assert (= (and d!399781 res!631627) b!1397714))

(assert (= (and b!1397714 (not res!631628)) b!1397715))

(assert (=> d!399781 m!1573295))

(declare-fun m!1574481 () Bool)

(assert (=> d!399781 m!1574481))

(declare-fun m!1574483 () Bool)

(assert (=> d!399781 m!1574483))

(declare-fun m!1574485 () Bool)

(assert (=> b!1397715 m!1574485))

(assert (=> b!1396892 d!399781))

(declare-fun b!1397716 () Bool)

(declare-fun e!892478 () List!14250)

(declare-fun e!892476 () List!14250)

(assert (=> b!1397716 (= e!892478 e!892476)))

(declare-fun c!230060 () Bool)

(assert (=> b!1397716 (= c!230060 ((_ is Union!3771) (regex!2457 (rule!4220 t1!34))))))

(declare-fun b!1397717 () Bool)

(declare-fun call!93363 () List!14250)

(assert (=> b!1397717 (= e!892476 call!93363)))

(declare-fun b!1397718 () Bool)

(declare-fun call!93365 () List!14250)

(assert (=> b!1397718 (= e!892478 call!93365)))

(declare-fun b!1397719 () Bool)

(declare-fun e!892475 () List!14250)

(declare-fun e!892477 () List!14250)

(assert (=> b!1397719 (= e!892475 e!892477)))

(declare-fun c!230059 () Bool)

(assert (=> b!1397719 (= c!230059 ((_ is ElementMatch!3771) (regex!2457 (rule!4220 t1!34))))))

(declare-fun bm!93357 () Bool)

(declare-fun call!93362 () List!14250)

(assert (=> bm!93357 (= call!93362 (usedCharacters!268 (ite c!230060 (regTwo!8055 (regex!2457 (rule!4220 t1!34))) (regOne!8054 (regex!2457 (rule!4220 t1!34))))))))

(declare-fun bm!93358 () Bool)

(declare-fun call!93364 () List!14250)

(assert (=> bm!93358 (= call!93364 call!93365)))

(declare-fun b!1397720 () Bool)

(assert (=> b!1397720 (= e!892476 call!93363)))

(declare-fun b!1397722 () Bool)

(declare-fun c!230062 () Bool)

(assert (=> b!1397722 (= c!230062 ((_ is Star!3771) (regex!2457 (rule!4220 t1!34))))))

(assert (=> b!1397722 (= e!892477 e!892478)))

(declare-fun b!1397723 () Bool)

(assert (=> b!1397723 (= e!892477 (Cons!14184 (c!229882 (regex!2457 (rule!4220 t1!34))) Nil!14184))))

(declare-fun bm!93359 () Bool)

(assert (=> bm!93359 (= call!93363 (++!3688 (ite c!230060 call!93364 call!93362) (ite c!230060 call!93362 call!93364)))))

(declare-fun bm!93360 () Bool)

(assert (=> bm!93360 (= call!93365 (usedCharacters!268 (ite c!230062 (reg!4100 (regex!2457 (rule!4220 t1!34))) (ite c!230060 (regOne!8055 (regex!2457 (rule!4220 t1!34))) (regTwo!8054 (regex!2457 (rule!4220 t1!34)))))))))

(declare-fun d!399783 () Bool)

(declare-fun c!230061 () Bool)

(assert (=> d!399783 (= c!230061 (or ((_ is EmptyExpr!3771) (regex!2457 (rule!4220 t1!34))) ((_ is EmptyLang!3771) (regex!2457 (rule!4220 t1!34)))))))

(assert (=> d!399783 (= (usedCharacters!268 (regex!2457 (rule!4220 t1!34))) e!892475)))

(declare-fun b!1397721 () Bool)

(assert (=> b!1397721 (= e!892475 Nil!14184)))

(assert (= (and d!399783 c!230061) b!1397721))

(assert (= (and d!399783 (not c!230061)) b!1397719))

(assert (= (and b!1397719 c!230059) b!1397723))

(assert (= (and b!1397719 (not c!230059)) b!1397722))

(assert (= (and b!1397722 c!230062) b!1397718))

(assert (= (and b!1397722 (not c!230062)) b!1397716))

(assert (= (and b!1397716 c!230060) b!1397717))

(assert (= (and b!1397716 (not c!230060)) b!1397720))

(assert (= (or b!1397717 b!1397720) bm!93358))

(assert (= (or b!1397717 b!1397720) bm!93357))

(assert (= (or b!1397717 b!1397720) bm!93359))

(assert (= (or b!1397718 bm!93358) bm!93360))

(declare-fun m!1574487 () Bool)

(assert (=> bm!93357 m!1574487))

(declare-fun m!1574489 () Bool)

(assert (=> bm!93359 m!1574489))

(declare-fun m!1574491 () Bool)

(assert (=> bm!93360 m!1574491))

(assert (=> b!1396892 d!399783))

(declare-fun d!399785 () Bool)

(assert (=> d!399785 (= (inv!18507 (tag!2719 (rule!4220 t1!34))) (= (mod (str.len (value!79656 (tag!2719 (rule!4220 t1!34)))) 2) 0))))

(assert (=> b!1396871 d!399785))

(declare-fun d!399787 () Bool)

(declare-fun res!631629 () Bool)

(declare-fun e!892479 () Bool)

(assert (=> d!399787 (=> (not res!631629) (not e!892479))))

(assert (=> d!399787 (= res!631629 (semiInverseModEq!954 (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (toValue!3748 (transformation!2457 (rule!4220 t1!34)))))))

(assert (=> d!399787 (= (inv!18510 (transformation!2457 (rule!4220 t1!34))) e!892479)))

(declare-fun b!1397724 () Bool)

(assert (=> b!1397724 (= e!892479 (equivClasses!913 (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (toValue!3748 (transformation!2457 (rule!4220 t1!34)))))))

(assert (= (and d!399787 res!631629) b!1397724))

(declare-fun m!1574493 () Bool)

(assert (=> d!399787 m!1574493))

(declare-fun m!1574495 () Bool)

(assert (=> b!1397724 m!1574495))

(assert (=> b!1396871 d!399787))

(declare-fun d!399789 () Bool)

(declare-fun lt!465697 () Bool)

(assert (=> d!399789 (= lt!465697 (select (content!2096 lt!465393) lt!465396))))

(declare-fun e!892480 () Bool)

(assert (=> d!399789 (= lt!465697 e!892480)))

(declare-fun res!631630 () Bool)

(assert (=> d!399789 (=> (not res!631630) (not e!892480))))

(assert (=> d!399789 (= res!631630 ((_ is Cons!14184) lt!465393))))

(assert (=> d!399789 (= (contains!2753 lt!465393 lt!465396) lt!465697)))

(declare-fun b!1397725 () Bool)

(declare-fun e!892481 () Bool)

(assert (=> b!1397725 (= e!892480 e!892481)))

(declare-fun res!631631 () Bool)

(assert (=> b!1397725 (=> res!631631 e!892481)))

(assert (=> b!1397725 (= res!631631 (= (h!19585 lt!465393) lt!465396))))

(declare-fun b!1397726 () Bool)

(assert (=> b!1397726 (= e!892481 (contains!2753 (t!122703 lt!465393) lt!465396))))

(assert (= (and d!399789 res!631630) b!1397725))

(assert (= (and b!1397725 (not res!631631)) b!1397726))

(assert (=> d!399789 m!1573679))

(declare-fun m!1574497 () Bool)

(assert (=> d!399789 m!1574497))

(declare-fun m!1574499 () Bool)

(assert (=> b!1397726 m!1574499))

(assert (=> b!1396893 d!399789))

(declare-fun d!399791 () Bool)

(declare-fun res!631634 () Bool)

(declare-fun e!892484 () Bool)

(assert (=> d!399791 (=> (not res!631634) (not e!892484))))

(declare-fun rulesValid!923 (LexerInterface!2152 List!14252) Bool)

(assert (=> d!399791 (= res!631634 (rulesValid!923 thiss!19762 rules!2550))))

(assert (=> d!399791 (= (rulesInvariant!2022 thiss!19762 rules!2550) e!892484)))

(declare-fun b!1397729 () Bool)

(declare-datatypes ((List!14256 0))(
  ( (Nil!14190) (Cons!14190 (h!19591 String!16971) (t!122745 List!14256)) )
))
(declare-fun noDuplicateTag!923 (LexerInterface!2152 List!14252 List!14256) Bool)

(assert (=> b!1397729 (= e!892484 (noDuplicateTag!923 thiss!19762 rules!2550 Nil!14190))))

(assert (= (and d!399791 res!631634) b!1397729))

(declare-fun m!1574501 () Bool)

(assert (=> d!399791 m!1574501))

(declare-fun m!1574503 () Bool)

(assert (=> b!1397729 m!1574503))

(assert (=> b!1396872 d!399791))

(declare-fun d!399793 () Bool)

(declare-fun lt!465698 () Bool)

(assert (=> d!399793 (= lt!465698 (select (content!2098 rules!2550) (rule!4220 t1!34)))))

(declare-fun e!892485 () Bool)

(assert (=> d!399793 (= lt!465698 e!892485)))

(declare-fun res!631635 () Bool)

(assert (=> d!399793 (=> (not res!631635) (not e!892485))))

(assert (=> d!399793 (= res!631635 ((_ is Cons!14186) rules!2550))))

(assert (=> d!399793 (= (contains!2754 rules!2550 (rule!4220 t1!34)) lt!465698)))

(declare-fun b!1397730 () Bool)

(declare-fun e!892486 () Bool)

(assert (=> b!1397730 (= e!892485 e!892486)))

(declare-fun res!631636 () Bool)

(assert (=> b!1397730 (=> res!631636 e!892486)))

(assert (=> b!1397730 (= res!631636 (= (h!19587 rules!2550) (rule!4220 t1!34)))))

(declare-fun b!1397731 () Bool)

(assert (=> b!1397731 (= e!892486 (contains!2754 (t!122705 rules!2550) (rule!4220 t1!34)))))

(assert (= (and d!399793 res!631635) b!1397730))

(assert (= (and b!1397730 (not res!631636)) b!1397731))

(assert (=> d!399793 m!1573709))

(declare-fun m!1574505 () Bool)

(assert (=> d!399793 m!1574505))

(declare-fun m!1574507 () Bool)

(assert (=> b!1397731 m!1574507))

(assert (=> b!1396873 d!399793))

(declare-fun b!1397736 () Bool)

(declare-fun e!892489 () Bool)

(declare-fun tp_is_empty!6799 () Bool)

(declare-fun tp!398144 () Bool)

(assert (=> b!1397736 (= e!892489 (and tp_is_empty!6799 tp!398144))))

(assert (=> b!1396864 (= tp!398091 e!892489)))

(assert (= (and b!1396864 ((_ is Cons!14184) (originalCharacters!3319 t2!34))) b!1397736))

(declare-fun b!1397750 () Bool)

(declare-fun e!892492 () Bool)

(declare-fun tp!398158 () Bool)

(declare-fun tp!398159 () Bool)

(assert (=> b!1397750 (= e!892492 (and tp!398158 tp!398159))))

(declare-fun b!1397749 () Bool)

(declare-fun tp!398157 () Bool)

(assert (=> b!1397749 (= e!892492 tp!398157)))

(declare-fun b!1397748 () Bool)

(declare-fun tp!398156 () Bool)

(declare-fun tp!398155 () Bool)

(assert (=> b!1397748 (= e!892492 (and tp!398156 tp!398155))))

(assert (=> b!1396875 (= tp!398081 e!892492)))

(declare-fun b!1397747 () Bool)

(assert (=> b!1397747 (= e!892492 tp_is_empty!6799)))

(assert (= (and b!1396875 ((_ is ElementMatch!3771) (regex!2457 (h!19587 rules!2550)))) b!1397747))

(assert (= (and b!1396875 ((_ is Concat!6318) (regex!2457 (h!19587 rules!2550)))) b!1397748))

(assert (= (and b!1396875 ((_ is Star!3771) (regex!2457 (h!19587 rules!2550)))) b!1397749))

(assert (= (and b!1396875 ((_ is Union!3771) (regex!2457 (h!19587 rules!2550)))) b!1397750))

(declare-fun b!1397754 () Bool)

(declare-fun e!892493 () Bool)

(declare-fun tp!398163 () Bool)

(declare-fun tp!398164 () Bool)

(assert (=> b!1397754 (= e!892493 (and tp!398163 tp!398164))))

(declare-fun b!1397753 () Bool)

(declare-fun tp!398162 () Bool)

(assert (=> b!1397753 (= e!892493 tp!398162)))

(declare-fun b!1397752 () Bool)

(declare-fun tp!398161 () Bool)

(declare-fun tp!398160 () Bool)

(assert (=> b!1397752 (= e!892493 (and tp!398161 tp!398160))))

(assert (=> b!1396871 (= tp!398086 e!892493)))

(declare-fun b!1397751 () Bool)

(assert (=> b!1397751 (= e!892493 tp_is_empty!6799)))

(assert (= (and b!1396871 ((_ is ElementMatch!3771) (regex!2457 (rule!4220 t1!34)))) b!1397751))

(assert (= (and b!1396871 ((_ is Concat!6318) (regex!2457 (rule!4220 t1!34)))) b!1397752))

(assert (= (and b!1396871 ((_ is Star!3771) (regex!2457 (rule!4220 t1!34)))) b!1397753))

(assert (= (and b!1396871 ((_ is Union!3771) (regex!2457 (rule!4220 t1!34)))) b!1397754))

(declare-fun b!1397758 () Bool)

(declare-fun e!892494 () Bool)

(declare-fun tp!398168 () Bool)

(declare-fun tp!398169 () Bool)

(assert (=> b!1397758 (= e!892494 (and tp!398168 tp!398169))))

(declare-fun b!1397757 () Bool)

(declare-fun tp!398167 () Bool)

(assert (=> b!1397757 (= e!892494 tp!398167)))

(declare-fun b!1397756 () Bool)

(declare-fun tp!398166 () Bool)

(declare-fun tp!398165 () Bool)

(assert (=> b!1397756 (= e!892494 (and tp!398166 tp!398165))))

(assert (=> b!1396856 (= tp!398084 e!892494)))

(declare-fun b!1397755 () Bool)

(assert (=> b!1397755 (= e!892494 tp_is_empty!6799)))

(assert (= (and b!1396856 ((_ is ElementMatch!3771) (regex!2457 (rule!4220 t2!34)))) b!1397755))

(assert (= (and b!1396856 ((_ is Concat!6318) (regex!2457 (rule!4220 t2!34)))) b!1397756))

(assert (= (and b!1396856 ((_ is Star!3771) (regex!2457 (rule!4220 t2!34)))) b!1397757))

(assert (= (and b!1396856 ((_ is Union!3771) (regex!2457 (rule!4220 t2!34)))) b!1397758))

(declare-fun b!1397759 () Bool)

(declare-fun e!892495 () Bool)

(declare-fun tp!398170 () Bool)

(assert (=> b!1397759 (= e!892495 (and tp_is_empty!6799 tp!398170))))

(assert (=> b!1396889 (= tp!398083 e!892495)))

(assert (= (and b!1396889 ((_ is Cons!14184) (originalCharacters!3319 t1!34))) b!1397759))

(declare-fun b!1397770 () Bool)

(declare-fun b_free!34011 () Bool)

(declare-fun b_next!34715 () Bool)

(assert (=> b!1397770 (= b_free!34011 (not b_next!34715))))

(declare-fun tp!398181 () Bool)

(declare-fun b_and!93595 () Bool)

(assert (=> b!1397770 (= tp!398181 b_and!93595)))

(declare-fun b_free!34013 () Bool)

(declare-fun b_next!34717 () Bool)

(assert (=> b!1397770 (= b_free!34013 (not b_next!34717))))

(declare-fun tb!73013 () Bool)

(declare-fun t!122742 () Bool)

(assert (=> (and b!1397770 (= (toChars!3607 (transformation!2457 (h!19587 (t!122705 rules!2550)))) (toChars!3607 (transformation!2457 (rule!4220 t1!34)))) t!122742) tb!73013))

(declare-fun result!88746 () Bool)

(assert (= result!88746 result!88716))

(assert (=> d!399545 t!122742))

(declare-fun tb!73015 () Bool)

(declare-fun t!122744 () Bool)

(assert (=> (and b!1397770 (= (toChars!3607 (transformation!2457 (h!19587 (t!122705 rules!2550)))) (toChars!3607 (transformation!2457 (rule!4220 t2!34)))) t!122744) tb!73015))

(declare-fun result!88748 () Bool)

(assert (= result!88748 result!88724))

(assert (=> d!399575 t!122744))

(assert (=> b!1397691 t!122742))

(assert (=> b!1397693 t!122744))

(declare-fun tp!398179 () Bool)

(declare-fun b_and!93597 () Bool)

(assert (=> b!1397770 (= tp!398179 (and (=> t!122742 result!88746) (=> t!122744 result!88748) b_and!93597))))

(declare-fun e!892507 () Bool)

(assert (=> b!1397770 (= e!892507 (and tp!398181 tp!398179))))

(declare-fun e!892504 () Bool)

(declare-fun b!1397769 () Bool)

(declare-fun tp!398180 () Bool)

(assert (=> b!1397769 (= e!892504 (and tp!398180 (inv!18507 (tag!2719 (h!19587 (t!122705 rules!2550)))) (inv!18510 (transformation!2457 (h!19587 (t!122705 rules!2550)))) e!892507))))

(declare-fun b!1397768 () Bool)

(declare-fun e!892506 () Bool)

(declare-fun tp!398182 () Bool)

(assert (=> b!1397768 (= e!892506 (and e!892504 tp!398182))))

(assert (=> b!1396857 (= tp!398082 e!892506)))

(assert (= b!1397769 b!1397770))

(assert (= b!1397768 b!1397769))

(assert (= (and b!1396857 ((_ is Cons!14186) (t!122705 rules!2550))) b!1397768))

(declare-fun m!1574509 () Bool)

(assert (=> b!1397769 m!1574509))

(declare-fun m!1574511 () Bool)

(assert (=> b!1397769 m!1574511))

(declare-fun b_lambda!43785 () Bool)

(assert (= b_lambda!43779 (or b!1396870 b_lambda!43785)))

(declare-fun bs!338014 () Bool)

(declare-fun d!399795 () Bool)

(assert (= bs!338014 (and d!399795 b!1396870)))

(declare-fun res!631637 () Bool)

(declare-fun e!892508 () Bool)

(assert (=> bs!338014 (=> (not res!631637) (not e!892508))))

(assert (=> bs!338014 (= res!631637 (validRegex!1647 lt!465686))))

(assert (=> bs!338014 (= (dynLambda!6552 lambda!60861 lt!465686) e!892508)))

(declare-fun b!1397771 () Bool)

(assert (=> b!1397771 (= e!892508 (matchR!1762 lt!465686 lt!465400))))

(assert (= (and bs!338014 res!631637) b!1397771))

(declare-fun m!1574513 () Bool)

(assert (=> bs!338014 m!1574513))

(declare-fun m!1574515 () Bool)

(assert (=> b!1397771 m!1574515))

(assert (=> d!399751 d!399795))

(declare-fun b_lambda!43787 () Bool)

(assert (= b_lambda!43717 (or b!1396870 b_lambda!43787)))

(declare-fun bs!338015 () Bool)

(declare-fun d!399797 () Bool)

(assert (= bs!338015 (and d!399797 b!1396870)))

(assert (=> bs!338015 (= (dynLambda!6541 lambda!60860 (h!19587 rules!2550)) (regex!2457 (h!19587 rules!2550)))))

(assert (=> b!1397143 d!399797))

(declare-fun b_lambda!43789 () Bool)

(assert (= b_lambda!43719 (or b!1396853 b_lambda!43789)))

(declare-fun bs!338016 () Bool)

(declare-fun d!399799 () Bool)

(assert (= bs!338016 (and d!399799 b!1396853)))

(declare-fun res!631638 () Bool)

(declare-fun e!892509 () Bool)

(assert (=> bs!338016 (=> (not res!631638) (not e!892509))))

(assert (=> bs!338016 (= res!631638 (matchR!1762 lt!465392 lt!465502))))

(assert (=> bs!338016 (= (dynLambda!6542 lambda!60859 lt!465502) e!892509)))

(declare-fun b!1397772 () Bool)

(assert (=> b!1397772 (= e!892509 (isPrefix!1152 lt!465393 lt!465502))))

(assert (= (and bs!338016 res!631638) b!1397772))

(declare-fun m!1574517 () Bool)

(assert (=> bs!338016 m!1574517))

(declare-fun m!1574519 () Bool)

(assert (=> b!1397772 m!1574519))

(assert (=> d!399509 d!399799))

(declare-fun b_lambda!43791 () Bool)

(assert (= b_lambda!43733 (or b!1396859 b_lambda!43791)))

(declare-fun bs!338017 () Bool)

(declare-fun d!399801 () Bool)

(assert (= bs!338017 (and d!399801 b!1396859)))

(declare-fun ruleValid!612 (LexerInterface!2152 Rule!4714) Bool)

(assert (=> bs!338017 (= (dynLambda!6549 lambda!60863 lt!465410) (ruleValid!612 thiss!19762 lt!465410))))

(declare-fun m!1574521 () Bool)

(assert (=> bs!338017 m!1574521))

(assert (=> d!399637 d!399801))

(declare-fun b_lambda!43793 () Bool)

(assert (= b_lambda!43723 (or (and b!1396885 b_free!33997) (and b!1396877 b_free!34001 (= (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (toChars!3607 (transformation!2457 (rule!4220 t1!34))))) (and b!1396868 b_free!34005 (= (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toChars!3607 (transformation!2457 (rule!4220 t1!34))))) (and b!1397770 b_free!34013 (= (toChars!3607 (transformation!2457 (h!19587 (t!122705 rules!2550)))) (toChars!3607 (transformation!2457 (rule!4220 t1!34))))) b_lambda!43793)))

(declare-fun b_lambda!43795 () Bool)

(assert (= b_lambda!43781 (or (and b!1396885 b_free!33997) (and b!1396877 b_free!34001 (= (toChars!3607 (transformation!2457 (rule!4220 t2!34))) (toChars!3607 (transformation!2457 (rule!4220 t1!34))))) (and b!1396868 b_free!34005 (= (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toChars!3607 (transformation!2457 (rule!4220 t1!34))))) (and b!1397770 b_free!34013 (= (toChars!3607 (transformation!2457 (h!19587 (t!122705 rules!2550)))) (toChars!3607 (transformation!2457 (rule!4220 t1!34))))) b_lambda!43795)))

(declare-fun b_lambda!43797 () Bool)

(assert (= b_lambda!43775 (or b!1396858 b_lambda!43797)))

(declare-fun bs!338018 () Bool)

(declare-fun d!399803 () Bool)

(assert (= bs!338018 (and d!399803 b!1396858)))

(assert (=> bs!338018 (= (dynLambda!6549 lambda!60862 (h!19587 rules!2550)) (= (regex!2457 (h!19587 rules!2550)) lt!465407))))

(assert (=> b!1397654 d!399803))

(declare-fun b_lambda!43799 () Bool)

(assert (= b_lambda!43727 (or (and b!1396885 b_free!33997 (= (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (toChars!3607 (transformation!2457 (rule!4220 t2!34))))) (and b!1396877 b_free!34001) (and b!1396868 b_free!34005 (= (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toChars!3607 (transformation!2457 (rule!4220 t2!34))))) (and b!1397770 b_free!34013 (= (toChars!3607 (transformation!2457 (h!19587 (t!122705 rules!2550)))) (toChars!3607 (transformation!2457 (rule!4220 t2!34))))) b_lambda!43799)))

(declare-fun b_lambda!43801 () Bool)

(assert (= b_lambda!43777 (or b!1396870 b_lambda!43801)))

(declare-fun bs!338019 () Bool)

(declare-fun d!399805 () Bool)

(assert (= bs!338019 (and d!399805 b!1396870)))

(declare-fun res!631639 () Bool)

(declare-fun e!892510 () Bool)

(assert (=> bs!338019 (=> (not res!631639) (not e!892510))))

(assert (=> bs!338019 (= res!631639 (validRegex!1647 (h!19589 (map!3146 rules!2550 lambda!60860))))))

(assert (=> bs!338019 (= (dynLambda!6552 lambda!60861 (h!19589 (map!3146 rules!2550 lambda!60860))) e!892510)))

(declare-fun b!1397773 () Bool)

(assert (=> b!1397773 (= e!892510 (matchR!1762 (h!19589 (map!3146 rules!2550 lambda!60860)) lt!465400))))

(assert (= (and bs!338019 res!631639) b!1397773))

(declare-fun m!1574523 () Bool)

(assert (=> bs!338019 m!1574523))

(declare-fun m!1574525 () Bool)

(assert (=> b!1397773 m!1574525))

(assert (=> b!1397682 d!399805))

(declare-fun b_lambda!43803 () Bool)

(assert (= b_lambda!43783 (or (and b!1396885 b_free!33997 (= (toChars!3607 (transformation!2457 (rule!4220 t1!34))) (toChars!3607 (transformation!2457 (rule!4220 t2!34))))) (and b!1396877 b_free!34001) (and b!1396868 b_free!34005 (= (toChars!3607 (transformation!2457 (h!19587 rules!2550))) (toChars!3607 (transformation!2457 (rule!4220 t2!34))))) (and b!1397770 b_free!34013 (= (toChars!3607 (transformation!2457 (h!19587 (t!122705 rules!2550)))) (toChars!3607 (transformation!2457 (rule!4220 t2!34))))) b_lambda!43803)))

(declare-fun b_lambda!43805 () Bool)

(assert (= b_lambda!43731 (or b!1396859 b_lambda!43805)))

(declare-fun bs!338020 () Bool)

(declare-fun d!399807 () Bool)

(assert (= bs!338020 (and d!399807 b!1396859)))

(assert (=> bs!338020 (= (dynLambda!6549 lambda!60863 (rule!4220 t1!34)) (ruleValid!612 thiss!19762 (rule!4220 t1!34)))))

(declare-fun m!1574527 () Bool)

(assert (=> bs!338020 m!1574527))

(assert (=> d!399635 d!399807))

(declare-fun b_lambda!43807 () Bool)

(assert (= b_lambda!43729 (or b!1396859 b_lambda!43807)))

(declare-fun bs!338021 () Bool)

(declare-fun d!399809 () Bool)

(assert (= bs!338021 (and d!399809 b!1396859)))

(assert (=> bs!338021 (= (dynLambda!6549 lambda!60863 (rule!4220 t2!34)) (ruleValid!612 thiss!19762 (rule!4220 t2!34)))))

(declare-fun m!1574529 () Bool)

(assert (=> bs!338021 m!1574529))

(assert (=> d!399627 d!399809))

(declare-fun b_lambda!43809 () Bool)

(assert (= b_lambda!43773 (or b!1396858 b_lambda!43809)))

(declare-fun bs!338022 () Bool)

(declare-fun d!399811 () Bool)

(assert (= bs!338022 (and d!399811 b!1396858)))

(assert (=> bs!338022 (= (dynLambda!6549 lambda!60862 lt!465673) (= (regex!2457 lt!465673) lt!465407))))

(assert (=> d!399735 d!399811))

(check-sat (not d!399733) (not d!399509) (not b!1397190) (not b!1397691) (not b!1397657) (not b!1397697) (not d!399755) (not b!1397456) (not b!1397461) (not d!399771) (not b!1397308) (not bm!93338) (not b!1397117) (not d!399575) (not b!1397614) (not b!1397465) (not b!1397193) (not bm!93347) (not b!1397143) (not b!1397360) (not b!1397715) (not b!1397314) (not b_lambda!43793) (not b!1397218) (not b!1397753) (not b!1397768) (not b!1397129) (not b!1397694) (not d!399603) (not b!1397693) (not b!1397756) (not d!399535) (not b!1397724) (not bm!93357) (not d!399473) (not d!399627) (not b_next!34717) (not b!1397684) (not b!1397133) (not d!399615) (not d!399499) (not bm!93355) (not d!399749) (not b!1397278) (not b!1397611) (not b_lambda!43801) (not b!1397700) (not b!1397772) (not b!1397131) b_and!93539 (not d!399503) (not b!1397758) (not d!399593) (not d!399525) (not b!1397736) (not bm!93359) (not d!399501) (not b!1397612) (not d!399507) (not b!1397132) (not d!399519) (not b!1397123) (not b!1397126) (not b_next!34699) (not d!399751) (not d!399551) (not b!1397426) (not d!399789) (not b!1397167) (not d!399623) (not d!399567) (not d!399511) (not bs!338016) (not b!1397277) (not b!1397467) (not b!1397695) (not b!1397284) (not b!1397119) (not d!399759) (not d!399573) (not b!1397631) (not b!1397653) (not d!399493) (not b!1397705) (not b!1397696) (not d!399523) (not bm!93325) (not bm!93356) (not b!1397731) (not b_lambda!43789) (not b!1397312) (not b_lambda!43795) b_and!93535 (not b!1397197) (not b!1397195) (not b!1397468) (not d!399639) (not d!399549) (not b_lambda!43797) (not d!399767) (not b_lambda!43785) (not bs!338020) (not d!399739) (not b!1397127) (not d!399555) (not d!399577) (not b!1397750) (not b!1397128) (not b!1397702) (not b!1397757) (not b!1397771) (not b!1397230) (not b!1397210) (not b!1397481) (not b_next!34707) (not b!1397634) (not b!1397361) (not d!399757) (not d!399453) (not b!1397179) (not d!399591) (not b!1397655) (not b_next!34715) (not b!1397427) (not d!399601) (not bs!338014) (not b!1397153) (not b!1397307) (not b!1397196) (not d!399543) (not b!1397181) (not d!399743) (not d!399791) (not d!399587) (not bs!338017) (not b!1397679) (not b_next!34709) (not d!399777) (not b!1397681) (not b!1397192) (not b!1397120) (not b!1397726) (not d!399735) (not b!1397359) (not b!1397118) (not b!1397180) (not d!399773) (not d!399637) (not b_lambda!43791) (not b!1397613) (not b_next!34705) (not b!1397324) b_and!93593 (not tb!73003) (not b!1397130) (not bm!93345) (not bm!93353) (not d!399731) (not b!1396992) (not b_lambda!43807) (not bm!93322) (not d!399793) (not b!1397437) (not bm!93336) (not tb!72997) (not bm!93360) (not d!399747) (not d!399763) (not b_lambda!43787) (not b_lambda!43809) b_and!93589 (not d!399707) (not b!1397636) (not b!1397228) (not b!1397374) (not b!1396990) (not bm!93321) (not b!1397752) (not b!1397154) (not b!1397433) (not b!1397315) (not b!1397482) (not d!399529) (not b!1397633) (not b!1397431) (not d!399727) (not d!399781) (not d!399775) (not bs!338019) (not b!1397160) b_and!93591 (not b!1397457) (not b!1397769) (not bm!93339) (not b!1397754) (not b_lambda!43803) b_and!93595 b_and!93597 (not b!1397285) (not b!1397434) (not b!1397480) (not d!399641) (not b!1397692) (not d!399505) (not b!1397748) (not d!399497) (not d!399545) b_and!93531 (not b!1397209) (not d!399495) (not b!1397686) (not bs!338021) (not b!1397650) (not b!1397703) (not b_lambda!43805) (not b!1397318) (not d!399571) (not d!399513) (not b_next!34703) (not b!1397660) (not b!1397121) (not b!1397635) (not b!1397282) (not b!1397666) (not b!1397124) (not d!399729) (not b!1397204) (not b_lambda!43799) (not d!399635) (not b!1397729) (not d!399475) (not b_next!34701) (not b!1396993) (not b!1397649) (not b!1397773) (not bm!93327) (not b!1397471) (not b!1397288) (not b!1397325) (not b!1397759) (not b!1397122) tp_is_empty!6799 (not d!399765) (not d!399753) (not b!1397749) (not d!399787) (not d!399737) (not d!399515) (not b!1397460))
(check-sat (not b_next!34717) b_and!93539 (not b_next!34699) b_and!93535 (not b_next!34707) (not b_next!34715) (not b_next!34709) (not b_next!34705) b_and!93593 b_and!93589 b_and!93591 b_and!93531 (not b_next!34703) (not b_next!34701) b_and!93595 b_and!93597)
