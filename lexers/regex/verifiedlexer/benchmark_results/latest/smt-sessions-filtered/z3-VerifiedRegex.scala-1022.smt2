; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50984 () Bool)

(assert start!50984)

(declare-fun b!550739 () Bool)

(declare-fun b_free!15353 () Bool)

(declare-fun b_next!15369 () Bool)

(assert (=> b!550739 (= b_free!15353 (not b_next!15369))))

(declare-fun tp!174238 () Bool)

(declare-fun b_and!53763 () Bool)

(assert (=> b!550739 (= tp!174238 b_and!53763)))

(declare-fun b_free!15355 () Bool)

(declare-fun b_next!15371 () Bool)

(assert (=> b!550739 (= b_free!15355 (not b_next!15371))))

(declare-fun tp!174239 () Bool)

(declare-fun b_and!53765 () Bool)

(assert (=> b!550739 (= tp!174239 b_and!53765)))

(declare-fun b!550706 () Bool)

(declare-fun b_free!15357 () Bool)

(declare-fun b_next!15373 () Bool)

(assert (=> b!550706 (= b_free!15357 (not b_next!15373))))

(declare-fun tp!174245 () Bool)

(declare-fun b_and!53767 () Bool)

(assert (=> b!550706 (= tp!174245 b_and!53767)))

(declare-fun b_free!15359 () Bool)

(declare-fun b_next!15375 () Bool)

(assert (=> b!550706 (= b_free!15359 (not b_next!15375))))

(declare-fun tp!174242 () Bool)

(declare-fun b_and!53769 () Bool)

(assert (=> b!550706 (= tp!174242 b_and!53769)))

(declare-fun b!550705 () Bool)

(declare-fun res!235989 () Bool)

(declare-fun e!333019 () Bool)

(assert (=> b!550705 (=> (not res!235989) (not e!333019))))

(declare-datatypes ((C!3652 0))(
  ( (C!3653 (val!2052 Int)) )
))
(declare-datatypes ((Regex!1365 0))(
  ( (ElementMatch!1365 (c!103584 C!3652)) (Concat!2420 (regOne!3242 Regex!1365) (regTwo!3242 Regex!1365)) (EmptyExpr!1365) (Star!1365 (reg!1694 Regex!1365)) (EmptyLang!1365) (Union!1365 (regOne!3243 Regex!1365) (regTwo!3243 Regex!1365)) )
))
(declare-datatypes ((List!5449 0))(
  ( (Nil!5439) (Cons!5439 (h!10840 (_ BitVec 16)) (t!75050 List!5449)) )
))
(declare-datatypes ((TokenValue!1055 0))(
  ( (FloatLiteralValue!2110 (text!7830 List!5449)) (TokenValueExt!1054 (__x!4008 Int)) (Broken!5275 (value!34224 List!5449)) (Object!1064) (End!1055) (Def!1055) (Underscore!1055) (Match!1055) (Else!1055) (Error!1055) (Case!1055) (If!1055) (Extends!1055) (Abstract!1055) (Class!1055) (Val!1055) (DelimiterValue!2110 (del!1115 List!5449)) (KeywordValue!1061 (value!34225 List!5449)) (CommentValue!2110 (value!34226 List!5449)) (WhitespaceValue!2110 (value!34227 List!5449)) (IndentationValue!1055 (value!34228 List!5449)) (String!7018) (Int32!1055) (Broken!5276 (value!34229 List!5449)) (Boolean!1056) (Unit!9643) (OperatorValue!1058 (op!1115 List!5449)) (IdentifierValue!2110 (value!34230 List!5449)) (IdentifierValue!2111 (value!34231 List!5449)) (WhitespaceValue!2111 (value!34232 List!5449)) (True!2110) (False!2110) (Broken!5277 (value!34233 List!5449)) (Broken!5278 (value!34234 List!5449)) (True!2111) (RightBrace!1055) (RightBracket!1055) (Colon!1055) (Null!1055) (Comma!1055) (LeftBracket!1055) (False!2111) (LeftBrace!1055) (ImaginaryLiteralValue!1055 (text!7831 List!5449)) (StringLiteralValue!3165 (value!34235 List!5449)) (EOFValue!1055 (value!34236 List!5449)) (IdentValue!1055 (value!34237 List!5449)) (DelimiterValue!2111 (value!34238 List!5449)) (DedentValue!1055 (value!34239 List!5449)) (NewLineValue!1055 (value!34240 List!5449)) (IntegerValue!3165 (value!34241 (_ BitVec 32)) (text!7832 List!5449)) (IntegerValue!3166 (value!34242 Int) (text!7833 List!5449)) (Times!1055) (Or!1055) (Equal!1055) (Minus!1055) (Broken!5279 (value!34243 List!5449)) (And!1055) (Div!1055) (LessEqual!1055) (Mod!1055) (Concat!2421) (Not!1055) (Plus!1055) (SpaceValue!1055 (value!34244 List!5449)) (IntegerValue!3167 (value!34245 Int) (text!7834 List!5449)) (StringLiteralValue!3166 (text!7835 List!5449)) (FloatLiteralValue!2111 (text!7836 List!5449)) (BytesLiteralValue!1055 (value!34246 List!5449)) (CommentValue!2111 (value!34247 List!5449)) (StringLiteralValue!3167 (value!34248 List!5449)) (ErrorTokenValue!1055 (msg!1116 List!5449)) )
))
(declare-datatypes ((String!7019 0))(
  ( (String!7020 (value!34249 String)) )
))
(declare-datatypes ((List!5450 0))(
  ( (Nil!5440) (Cons!5440 (h!10841 C!3652) (t!75051 List!5450)) )
))
(declare-datatypes ((IArray!3497 0))(
  ( (IArray!3498 (innerList!1806 List!5450)) )
))
(declare-datatypes ((Conc!1748 0))(
  ( (Node!1748 (left!4496 Conc!1748) (right!4826 Conc!1748) (csize!3726 Int) (cheight!1959 Int)) (Leaf!2771 (xs!4385 IArray!3497) (csize!3727 Int)) (Empty!1748) )
))
(declare-datatypes ((BalanceConc!3504 0))(
  ( (BalanceConc!3505 (c!103585 Conc!1748)) )
))
(declare-datatypes ((TokenValueInjection!1878 0))(
  ( (TokenValueInjection!1879 (toValue!1878 Int) (toChars!1737 Int)) )
))
(declare-datatypes ((Rule!1862 0))(
  ( (Rule!1863 (regex!1031 Regex!1365) (tag!1293 String!7019) (isSeparator!1031 Bool) (transformation!1031 TokenValueInjection!1878)) )
))
(declare-datatypes ((Token!1798 0))(
  ( (Token!1799 (value!34250 TokenValue!1055) (rule!1755 Rule!1862) (size!4354 Int) (originalCharacters!1070 List!5450)) )
))
(declare-fun token!491 () Token!1798)

(declare-fun size!4355 (List!5450) Int)

(assert (=> b!550705 (= res!235989 (= (size!4354 token!491) (size!4355 (originalCharacters!1070 token!491))))))

(declare-fun e!333033 () Bool)

(assert (=> b!550706 (= e!333033 (and tp!174245 tp!174242))))

(declare-fun b!550707 () Bool)

(declare-fun e!333032 () Bool)

(declare-fun e!333031 () Bool)

(assert (=> b!550707 (= e!333032 e!333031)))

(declare-fun res!235997 () Bool)

(assert (=> b!550707 (=> (not res!235997) (not e!333031))))

(declare-fun suffix!1342 () List!5450)

(declare-datatypes ((tuple2!6464 0))(
  ( (tuple2!6465 (_1!3496 Token!1798) (_2!3496 List!5450)) )
))
(declare-fun lt!232144 () tuple2!6464)

(assert (=> b!550707 (= res!235997 (and (= (_1!3496 lt!232144) token!491) (= (_2!3496 lt!232144) suffix!1342)))))

(declare-datatypes ((Option!1381 0))(
  ( (None!1380) (Some!1380 (v!16205 tuple2!6464)) )
))
(declare-fun lt!232136 () Option!1381)

(declare-fun get!2061 (Option!1381) tuple2!6464)

(assert (=> b!550707 (= lt!232144 (get!2061 lt!232136))))

(declare-fun b!550708 () Bool)

(declare-fun res!236002 () Bool)

(declare-fun e!333023 () Bool)

(assert (=> b!550708 (=> res!236002 e!333023)))

(declare-datatypes ((List!5451 0))(
  ( (Nil!5441) (Cons!5441 (h!10842 Rule!1862) (t!75052 List!5451)) )
))
(declare-fun rules!3103 () List!5451)

(declare-fun lt!232124 () Option!1381)

(declare-fun contains!1273 (List!5451 Rule!1862) Bool)

(assert (=> b!550708 (= res!236002 (not (contains!1273 rules!3103 (rule!1755 (_1!3496 (v!16205 lt!232124))))))))

(declare-fun b!550709 () Bool)

(declare-fun res!236003 () Bool)

(declare-fun e!333034 () Bool)

(assert (=> b!550709 (=> (not res!236003) (not e!333034))))

(declare-fun isEmpty!3926 (List!5451) Bool)

(assert (=> b!550709 (= res!236003 (not (isEmpty!3926 rules!3103)))))

(declare-fun b!550710 () Bool)

(declare-fun e!333027 () Bool)

(assert (=> b!550710 (= e!333027 false)))

(declare-fun b!550711 () Bool)

(declare-fun e!333018 () Bool)

(assert (=> b!550711 (= e!333031 e!333018)))

(declare-fun res!235987 () Bool)

(assert (=> b!550711 (=> (not res!235987) (not e!333018))))

(get-info :version)

(assert (=> b!550711 (= res!235987 ((_ is Some!1380) lt!232124))))

(declare-datatypes ((LexerInterface!917 0))(
  ( (LexerInterfaceExt!914 (__x!4009 Int)) (Lexer!915) )
))
(declare-fun thiss!22590 () LexerInterface!917)

(declare-fun input!2705 () List!5450)

(declare-fun maxPrefix!615 (LexerInterface!917 List!5451 List!5450) Option!1381)

(assert (=> b!550711 (= lt!232124 (maxPrefix!615 thiss!22590 rules!3103 input!2705))))

(declare-fun e!333040 () Bool)

(declare-fun b!550712 () Bool)

(declare-fun tp!174244 () Bool)

(declare-fun e!333043 () Bool)

(declare-fun inv!6821 (String!7019) Bool)

(declare-fun inv!6824 (TokenValueInjection!1878) Bool)

(assert (=> b!550712 (= e!333040 (and tp!174244 (inv!6821 (tag!1293 (h!10842 rules!3103))) (inv!6824 (transformation!1031 (h!10842 rules!3103))) e!333043))))

(declare-fun b!550713 () Bool)

(declare-fun e!333041 () Bool)

(assert (=> b!550713 (= e!333018 e!333041)))

(declare-fun res!235993 () Bool)

(assert (=> b!550713 (=> (not res!235993) (not e!333041))))

(declare-fun lt!232120 () List!5450)

(declare-fun lt!232151 () List!5450)

(assert (=> b!550713 (= res!235993 (= lt!232120 lt!232151))))

(declare-fun lt!232135 () List!5450)

(declare-fun ++!1519 (List!5450 List!5450) List!5450)

(assert (=> b!550713 (= lt!232120 (++!1519 lt!232135 suffix!1342))))

(declare-fun b!550714 () Bool)

(declare-fun e!333014 () Bool)

(declare-fun tp!174237 () Bool)

(assert (=> b!550714 (= e!333014 (and e!333040 tp!174237))))

(declare-fun b!550715 () Bool)

(declare-fun e!333039 () Bool)

(assert (=> b!550715 (= e!333039 e!333032)))

(declare-fun res!235982 () Bool)

(assert (=> b!550715 (=> (not res!235982) (not e!333032))))

(declare-fun isDefined!1193 (Option!1381) Bool)

(assert (=> b!550715 (= res!235982 (isDefined!1193 lt!232136))))

(assert (=> b!550715 (= lt!232136 (maxPrefix!615 thiss!22590 rules!3103 lt!232151))))

(assert (=> b!550715 (= lt!232151 (++!1519 input!2705 suffix!1342))))

(declare-fun b!550716 () Bool)

(declare-datatypes ((Unit!9644 0))(
  ( (Unit!9645) )
))
(declare-fun e!333037 () Unit!9644)

(declare-fun e!333036 () Unit!9644)

(assert (=> b!550716 (= e!333037 e!333036)))

(declare-fun lt!232142 () Int)

(declare-fun getIndex!32 (List!5451 Rule!1862) Int)

(assert (=> b!550716 (= lt!232142 (getIndex!32 rules!3103 (rule!1755 (_1!3496 (v!16205 lt!232124)))))))

(declare-fun lt!232158 () Int)

(assert (=> b!550716 (= lt!232158 (getIndex!32 rules!3103 (rule!1755 token!491)))))

(declare-fun c!103579 () Bool)

(assert (=> b!550716 (= c!103579 (< lt!232142 lt!232158))))

(declare-fun lt!232146 () Unit!9644)

(declare-fun e!333022 () Unit!9644)

(assert (=> b!550716 (= lt!232146 e!333022)))

(declare-fun c!103582 () Bool)

(assert (=> b!550716 (= c!103582 (> lt!232142 lt!232158))))

(declare-fun b!550717 () Bool)

(declare-fun e!333025 () Bool)

(assert (=> b!550717 (= e!333025 true)))

(declare-fun lt!232138 () Bool)

(declare-fun rulesValidInductive!364 (LexerInterface!917 List!5451) Bool)

(assert (=> b!550717 (= lt!232138 (rulesValidInductive!364 thiss!22590 rules!3103))))

(declare-fun b!550718 () Bool)

(declare-fun e!333038 () Bool)

(declare-fun lt!232140 () List!5450)

(assert (=> b!550718 (= e!333038 (= lt!232140 (_2!3496 (v!16205 lt!232124))))))

(declare-fun b!550719 () Bool)

(declare-fun e!333026 () Bool)

(declare-fun tp_is_empty!3085 () Bool)

(declare-fun tp!174241 () Bool)

(assert (=> b!550719 (= e!333026 (and tp_is_empty!3085 tp!174241))))

(declare-fun b!550720 () Bool)

(assert (=> b!550720 e!333027))

(declare-fun res!235999 () Bool)

(assert (=> b!550720 (=> (not res!235999) (not e!333027))))

(declare-fun matchR!524 (Regex!1365 List!5450) Bool)

(assert (=> b!550720 (= res!235999 (not (matchR!524 (regex!1031 (rule!1755 (_1!3496 (v!16205 lt!232124)))) input!2705)))))

(declare-fun lt!232119 () Unit!9644)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!14 (LexerInterface!917 List!5451 Rule!1862 List!5450 List!5450 Rule!1862) Unit!9644)

(assert (=> b!550720 (= lt!232119 (lemmaMaxPrefNoSmallerRuleMatches!14 thiss!22590 rules!3103 (rule!1755 token!491) input!2705 lt!232151 (rule!1755 (_1!3496 (v!16205 lt!232124)))))))

(declare-fun Unit!9646 () Unit!9644)

(assert (=> b!550720 (= e!333022 Unit!9646)))

(declare-fun b!550721 () Bool)

(declare-fun e!333045 () Bool)

(assert (=> b!550721 (= e!333045 e!333038)))

(declare-fun res!235990 () Bool)

(assert (=> b!550721 (=> (not res!235990) (not e!333038))))

(assert (=> b!550721 (= res!235990 (isDefined!1193 lt!232124))))

(declare-fun b!550722 () Bool)

(declare-fun Unit!9647 () Unit!9644)

(assert (=> b!550722 (= e!333037 Unit!9647)))

(declare-fun b!550723 () Bool)

(declare-fun Unit!9648 () Unit!9644)

(assert (=> b!550723 (= e!333036 Unit!9648)))

(declare-fun b!550724 () Bool)

(declare-fun res!235996 () Bool)

(assert (=> b!550724 (=> res!235996 e!333023)))

(declare-fun lt!232128 () List!5450)

(assert (=> b!550724 (= res!235996 (or (not (= lt!232128 lt!232135)) (not (= (originalCharacters!1070 (_1!3496 (v!16205 lt!232124))) (originalCharacters!1070 token!491)))))))

(declare-fun b!550725 () Bool)

(declare-fun Unit!9649 () Unit!9644)

(assert (=> b!550725 (= e!333022 Unit!9649)))

(declare-fun b!550726 () Bool)

(declare-fun e!333020 () Bool)

(assert (=> b!550726 e!333020))

(declare-fun res!235986 () Bool)

(assert (=> b!550726 (=> (not res!235986) (not e!333020))))

(assert (=> b!550726 (= res!235986 (not (matchR!524 (regex!1031 (rule!1755 token!491)) input!2705)))))

(declare-fun lt!232159 () Unit!9644)

(assert (=> b!550726 (= lt!232159 (lemmaMaxPrefNoSmallerRuleMatches!14 thiss!22590 rules!3103 (rule!1755 (_1!3496 (v!16205 lt!232124))) input!2705 input!2705 (rule!1755 token!491)))))

(declare-fun Unit!9650 () Unit!9644)

(assert (=> b!550726 (= e!333036 Unit!9650)))

(declare-fun b!550727 () Bool)

(assert (=> b!550727 (= e!333020 false)))

(declare-fun b!550728 () Bool)

(declare-fun e!333017 () Bool)

(assert (=> b!550728 (= e!333017 e!333045)))

(declare-fun res!235998 () Bool)

(assert (=> b!550728 (=> res!235998 e!333045)))

(declare-fun lt!232126 () Int)

(declare-fun lt!232162 () Int)

(assert (=> b!550728 (= res!235998 (>= lt!232126 lt!232162))))

(declare-fun b!550729 () Bool)

(declare-fun res!235991 () Bool)

(assert (=> b!550729 (=> (not res!235991) (not e!333038))))

(assert (=> b!550729 (= res!235991 (= (_1!3496 (get!2061 lt!232124)) (_1!3496 (v!16205 lt!232124))))))

(declare-fun b!550730 () Bool)

(declare-fun res!236008 () Bool)

(assert (=> b!550730 (=> (not res!236008) (not e!333034))))

(declare-fun rulesInvariant!880 (LexerInterface!917 List!5451) Bool)

(assert (=> b!550730 (= res!236008 (rulesInvariant!880 thiss!22590 rules!3103))))

(declare-fun b!550731 () Bool)

(declare-fun e!333021 () Unit!9644)

(declare-fun Unit!9651 () Unit!9644)

(assert (=> b!550731 (= e!333021 Unit!9651)))

(declare-fun lt!232157 () Unit!9644)

(declare-fun lt!232163 () BalanceConc!3504)

(declare-fun lemmaSemiInverse!160 (TokenValueInjection!1878 BalanceConc!3504) Unit!9644)

(assert (=> b!550731 (= lt!232157 (lemmaSemiInverse!160 (transformation!1031 (rule!1755 (_1!3496 (v!16205 lt!232124)))) lt!232163))))

(declare-fun lt!232131 () Unit!9644)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!36 (LexerInterface!917 List!5451 Rule!1862 List!5450 List!5450 List!5450 Rule!1862) Unit!9644)

(assert (=> b!550731 (= lt!232131 (lemmaMaxPrefixOutputsMaxPrefix!36 thiss!22590 rules!3103 (rule!1755 (_1!3496 (v!16205 lt!232124))) lt!232128 input!2705 input!2705 (rule!1755 token!491)))))

(declare-fun res!236000 () Bool)

(assert (=> b!550731 (= res!236000 (not (matchR!524 (regex!1031 (rule!1755 token!491)) input!2705)))))

(declare-fun e!333030 () Bool)

(assert (=> b!550731 (=> (not res!236000) (not e!333030))))

(assert (=> b!550731 e!333030))

(declare-fun b!550732 () Bool)

(assert (=> b!550732 (= e!333023 e!333025)))

(declare-fun res!235994 () Bool)

(assert (=> b!550732 (=> res!235994 e!333025)))

(assert (=> b!550732 (= res!235994 (or (not (= (size!4354 (_1!3496 (v!16205 lt!232124))) (size!4354 token!491))) (not (= (_1!3496 (v!16205 lt!232124)) token!491))))))

(assert (=> b!550732 (= (rule!1755 (_1!3496 (v!16205 lt!232124))) (rule!1755 token!491))))

(declare-fun lt!232123 () Unit!9644)

(declare-fun lemmaSameIndexThenSameElement!6 (List!5451 Rule!1862 Rule!1862) Unit!9644)

(assert (=> b!550732 (= lt!232123 (lemmaSameIndexThenSameElement!6 rules!3103 (rule!1755 (_1!3496 (v!16205 lt!232124))) (rule!1755 token!491)))))

(declare-fun lt!232153 () Unit!9644)

(assert (=> b!550732 (= lt!232153 e!333037)))

(declare-fun c!103583 () Bool)

(assert (=> b!550732 (= c!103583 (not (= (rule!1755 (_1!3496 (v!16205 lt!232124))) (rule!1755 token!491))))))

(declare-fun b!550733 () Bool)

(assert (=> b!550733 (= e!333034 e!333039)))

(declare-fun res!235985 () Bool)

(assert (=> b!550733 (=> (not res!235985) (not e!333039))))

(assert (=> b!550733 (= res!235985 (= lt!232135 input!2705))))

(declare-fun list!2255 (BalanceConc!3504) List!5450)

(declare-fun charsOf!660 (Token!1798) BalanceConc!3504)

(assert (=> b!550733 (= lt!232135 (list!2255 (charsOf!660 token!491)))))

(declare-fun b!550734 () Bool)

(declare-fun e!333046 () Bool)

(declare-fun tp!174240 () Bool)

(declare-fun e!333024 () Bool)

(declare-fun inv!21 (TokenValue!1055) Bool)

(assert (=> b!550734 (= e!333046 (and (inv!21 (value!34250 token!491)) e!333024 tp!174240))))

(declare-fun b!550735 () Bool)

(declare-fun res!236005 () Bool)

(assert (=> b!550735 (=> res!236005 e!333023)))

(declare-fun isEmpty!3927 (List!5450) Bool)

(assert (=> b!550735 (= res!236005 (not (isEmpty!3927 (_2!3496 (v!16205 lt!232124)))))))

(declare-fun b!550736 () Bool)

(declare-fun Unit!9652 () Unit!9644)

(assert (=> b!550736 (= e!333021 Unit!9652)))

(declare-fun b!550737 () Bool)

(declare-fun res!236006 () Bool)

(assert (=> b!550737 (=> res!236006 e!333023)))

(assert (=> b!550737 (= res!236006 (not (contains!1273 rules!3103 (rule!1755 token!491))))))

(declare-fun b!550738 () Bool)

(declare-fun e!333028 () Bool)

(assert (=> b!550738 (= e!333028 e!333023)))

(declare-fun res!235983 () Bool)

(assert (=> b!550738 (=> res!235983 e!333023)))

(declare-fun lt!232125 () List!5450)

(assert (=> b!550738 (= res!235983 (or (not (= lt!232126 lt!232162)) (not (= lt!232125 input!2705)) (not (= lt!232125 lt!232135))))))

(declare-fun lt!232160 () Unit!9644)

(declare-fun lt!232149 () BalanceConc!3504)

(assert (=> b!550738 (= lt!232160 (lemmaSemiInverse!160 (transformation!1031 (rule!1755 token!491)) lt!232149))))

(declare-fun lt!232127 () Unit!9644)

(assert (=> b!550738 (= lt!232127 (lemmaSemiInverse!160 (transformation!1031 (rule!1755 (_1!3496 (v!16205 lt!232124)))) lt!232163))))

(declare-fun lt!232143 () Unit!9644)

(assert (=> b!550738 (= lt!232143 e!333021)))

(declare-fun c!103581 () Bool)

(assert (=> b!550738 (= c!103581 (< lt!232126 lt!232162))))

(assert (=> b!550738 e!333017))

(declare-fun res!235995 () Bool)

(assert (=> b!550738 (=> (not res!235995) (not e!333017))))

(declare-fun lt!232145 () TokenValue!1055)

(declare-fun maxPrefixOneRule!330 (LexerInterface!917 Rule!1862 List!5450) Option!1381)

(assert (=> b!550738 (= res!235995 (= (maxPrefixOneRule!330 thiss!22590 (rule!1755 token!491) lt!232151) (Some!1380 (tuple2!6465 (Token!1799 lt!232145 (rule!1755 token!491) lt!232162 lt!232135) suffix!1342))))))

(declare-fun lt!232121 () Unit!9644)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!82 (LexerInterface!917 List!5451 List!5450 List!5450 List!5450 Rule!1862) Unit!9644)

(assert (=> b!550738 (= lt!232121 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!82 thiss!22590 rules!3103 lt!232135 lt!232151 suffix!1342 (rule!1755 token!491)))))

(declare-fun lt!232155 () TokenValue!1055)

(assert (=> b!550738 (= (maxPrefixOneRule!330 thiss!22590 (rule!1755 (_1!3496 (v!16205 lt!232124))) input!2705) (Some!1380 (tuple2!6465 (Token!1799 lt!232155 (rule!1755 (_1!3496 (v!16205 lt!232124))) lt!232126 lt!232128) (_2!3496 (v!16205 lt!232124)))))))

(declare-fun lt!232156 () Unit!9644)

(assert (=> b!550738 (= lt!232156 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!82 thiss!22590 rules!3103 lt!232128 input!2705 (_2!3496 (v!16205 lt!232124)) (rule!1755 (_1!3496 (v!16205 lt!232124)))))))

(assert (=> b!550738 e!333019))

(declare-fun res!236001 () Bool)

(assert (=> b!550738 (=> (not res!236001) (not e!333019))))

(assert (=> b!550738 (= res!236001 (= (value!34250 token!491) lt!232145))))

(declare-fun apply!1306 (TokenValueInjection!1878 BalanceConc!3504) TokenValue!1055)

(assert (=> b!550738 (= lt!232145 (apply!1306 (transformation!1031 (rule!1755 token!491)) lt!232149))))

(declare-fun seqFromList!1229 (List!5450) BalanceConc!3504)

(assert (=> b!550738 (= lt!232149 (seqFromList!1229 lt!232135))))

(declare-fun lt!232161 () List!5450)

(assert (=> b!550738 (= suffix!1342 lt!232161)))

(declare-fun lt!232139 () Unit!9644)

(declare-fun lemmaSamePrefixThenSameSuffix!400 (List!5450 List!5450 List!5450 List!5450 List!5450) Unit!9644)

(assert (=> b!550738 (= lt!232139 (lemmaSamePrefixThenSameSuffix!400 lt!232135 suffix!1342 lt!232135 lt!232161 lt!232151))))

(declare-fun getSuffix!196 (List!5450 List!5450) List!5450)

(assert (=> b!550738 (= lt!232161 (getSuffix!196 lt!232151 lt!232135))))

(assert (=> b!550739 (= e!333043 (and tp!174238 tp!174239))))

(declare-fun b!550740 () Bool)

(declare-fun e!333016 () Unit!9644)

(declare-fun Unit!9653 () Unit!9644)

(assert (=> b!550740 (= e!333016 Unit!9653)))

(assert (=> b!550740 false))

(declare-fun lt!232148 () tuple2!6464)

(declare-fun b!550741 () Bool)

(declare-fun e!333015 () Bool)

(assert (=> b!550741 (= e!333015 (and (= (size!4354 (_1!3496 (v!16205 lt!232124))) lt!232126) (= (originalCharacters!1070 (_1!3496 (v!16205 lt!232124))) lt!232128) (= lt!232148 (tuple2!6465 (Token!1799 lt!232155 (rule!1755 (_1!3496 (v!16205 lt!232124))) lt!232126 lt!232128) lt!232140))))))

(declare-fun res!236007 () Bool)

(assert (=> start!50984 (=> (not res!236007) (not e!333034))))

(assert (=> start!50984 (= res!236007 ((_ is Lexer!915) thiss!22590))))

(assert (=> start!50984 e!333034))

(assert (=> start!50984 e!333026))

(assert (=> start!50984 e!333014))

(declare-fun inv!6825 (Token!1798) Bool)

(assert (=> start!50984 (and (inv!6825 token!491) e!333046)))

(assert (=> start!50984 true))

(declare-fun e!333035 () Bool)

(assert (=> start!50984 e!333035))

(declare-fun b!550742 () Bool)

(declare-fun res!235992 () Bool)

(assert (=> b!550742 (=> (not res!235992) (not e!333015))))

(assert (=> b!550742 (= res!235992 (= (size!4354 (_1!3496 (v!16205 lt!232124))) (size!4355 (originalCharacters!1070 (_1!3496 (v!16205 lt!232124))))))))

(declare-fun b!550743 () Bool)

(declare-fun Unit!9654 () Unit!9644)

(assert (=> b!550743 (= e!333016 Unit!9654)))

(declare-fun b!550744 () Bool)

(assert (=> b!550744 (= e!333041 (not e!333028))))

(declare-fun res!235984 () Bool)

(assert (=> b!550744 (=> res!235984 e!333028)))

(declare-fun isPrefix!673 (List!5450 List!5450) Bool)

(assert (=> b!550744 (= res!235984 (not (isPrefix!673 input!2705 lt!232120)))))

(assert (=> b!550744 (isPrefix!673 lt!232135 lt!232120)))

(declare-fun lt!232129 () Unit!9644)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!524 (List!5450 List!5450) Unit!9644)

(assert (=> b!550744 (= lt!232129 (lemmaConcatTwoListThenFirstIsPrefix!524 lt!232135 suffix!1342))))

(assert (=> b!550744 (isPrefix!673 input!2705 lt!232151)))

(declare-fun lt!232132 () Unit!9644)

(assert (=> b!550744 (= lt!232132 (lemmaConcatTwoListThenFirstIsPrefix!524 input!2705 suffix!1342))))

(assert (=> b!550744 e!333015))

(declare-fun res!236004 () Bool)

(assert (=> b!550744 (=> (not res!236004) (not e!333015))))

(assert (=> b!550744 (= res!236004 (= (value!34250 (_1!3496 (v!16205 lt!232124))) lt!232155))))

(assert (=> b!550744 (= lt!232155 (apply!1306 (transformation!1031 (rule!1755 (_1!3496 (v!16205 lt!232124)))) lt!232163))))

(assert (=> b!550744 (= lt!232163 (seqFromList!1229 lt!232128))))

(declare-fun lt!232147 () Unit!9644)

(declare-fun lemmaInv!179 (TokenValueInjection!1878) Unit!9644)

(assert (=> b!550744 (= lt!232147 (lemmaInv!179 (transformation!1031 (rule!1755 token!491))))))

(declare-fun lt!232152 () Unit!9644)

(assert (=> b!550744 (= lt!232152 (lemmaInv!179 (transformation!1031 (rule!1755 (_1!3496 (v!16205 lt!232124))))))))

(declare-fun ruleValid!251 (LexerInterface!917 Rule!1862) Bool)

(assert (=> b!550744 (ruleValid!251 thiss!22590 (rule!1755 token!491))))

(declare-fun lt!232133 () Unit!9644)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!110 (LexerInterface!917 Rule!1862 List!5451) Unit!9644)

(assert (=> b!550744 (= lt!232133 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!110 thiss!22590 (rule!1755 token!491) rules!3103))))

(assert (=> b!550744 (ruleValid!251 thiss!22590 (rule!1755 (_1!3496 (v!16205 lt!232124))))))

(declare-fun lt!232122 () Unit!9644)

(assert (=> b!550744 (= lt!232122 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!110 thiss!22590 (rule!1755 (_1!3496 (v!16205 lt!232124))) rules!3103))))

(assert (=> b!550744 (isPrefix!673 input!2705 input!2705)))

(declare-fun lt!232154 () Unit!9644)

(declare-fun lemmaIsPrefixRefl!413 (List!5450 List!5450) Unit!9644)

(assert (=> b!550744 (= lt!232154 (lemmaIsPrefixRefl!413 input!2705 input!2705))))

(assert (=> b!550744 (= (_2!3496 (v!16205 lt!232124)) lt!232140)))

(declare-fun lt!232137 () Unit!9644)

(assert (=> b!550744 (= lt!232137 (lemmaSamePrefixThenSameSuffix!400 lt!232128 (_2!3496 (v!16205 lt!232124)) lt!232128 lt!232140 input!2705))))

(assert (=> b!550744 (= lt!232140 (getSuffix!196 input!2705 lt!232128))))

(assert (=> b!550744 (isPrefix!673 lt!232128 lt!232125)))

(assert (=> b!550744 (= lt!232125 (++!1519 lt!232128 (_2!3496 (v!16205 lt!232124))))))

(declare-fun lt!232134 () Unit!9644)

(assert (=> b!550744 (= lt!232134 (lemmaConcatTwoListThenFirstIsPrefix!524 lt!232128 (_2!3496 (v!16205 lt!232124))))))

(declare-fun lt!232141 () Unit!9644)

(declare-fun lemmaCharactersSize!110 (Token!1798) Unit!9644)

(assert (=> b!550744 (= lt!232141 (lemmaCharactersSize!110 token!491))))

(declare-fun lt!232118 () Unit!9644)

(assert (=> b!550744 (= lt!232118 (lemmaCharactersSize!110 (_1!3496 (v!16205 lt!232124))))))

(declare-fun lt!232130 () Unit!9644)

(assert (=> b!550744 (= lt!232130 e!333016)))

(declare-fun c!103580 () Bool)

(assert (=> b!550744 (= c!103580 (> lt!232126 lt!232162))))

(assert (=> b!550744 (= lt!232162 (size!4355 lt!232135))))

(assert (=> b!550744 (= lt!232126 (size!4355 lt!232128))))

(assert (=> b!550744 (= lt!232128 (list!2255 (charsOf!660 (_1!3496 (v!16205 lt!232124)))))))

(assert (=> b!550744 (= lt!232124 (Some!1380 lt!232148))))

(assert (=> b!550744 (= lt!232148 (tuple2!6465 (_1!3496 (v!16205 lt!232124)) (_2!3496 (v!16205 lt!232124))))))

(declare-fun lt!232150 () Unit!9644)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!116 (List!5450 List!5450 List!5450 List!5450) Unit!9644)

(assert (=> b!550744 (= lt!232150 (lemmaConcatSameAndSameSizesThenSameLists!116 lt!232135 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!550745 () Bool)

(assert (=> b!550745 (= e!333019 (and (= (size!4354 token!491) lt!232162) (= (originalCharacters!1070 token!491) lt!232135) (= (tuple2!6465 token!491 suffix!1342) (tuple2!6465 (Token!1799 lt!232145 (rule!1755 token!491) lt!232162 lt!232135) lt!232161))))))

(declare-fun b!550746 () Bool)

(declare-fun tp!174243 () Bool)

(assert (=> b!550746 (= e!333035 (and tp_is_empty!3085 tp!174243))))

(declare-fun b!550747 () Bool)

(assert (=> b!550747 (= e!333030 false)))

(declare-fun b!550748 () Bool)

(declare-fun tp!174246 () Bool)

(assert (=> b!550748 (= e!333024 (and tp!174246 (inv!6821 (tag!1293 (rule!1755 token!491))) (inv!6824 (transformation!1031 (rule!1755 token!491))) e!333033))))

(declare-fun b!550749 () Bool)

(declare-fun res!235988 () Bool)

(assert (=> b!550749 (=> (not res!235988) (not e!333034))))

(assert (=> b!550749 (= res!235988 (not (isEmpty!3927 input!2705)))))

(assert (= (and start!50984 res!236007) b!550709))

(assert (= (and b!550709 res!236003) b!550730))

(assert (= (and b!550730 res!236008) b!550749))

(assert (= (and b!550749 res!235988) b!550733))

(assert (= (and b!550733 res!235985) b!550715))

(assert (= (and b!550715 res!235982) b!550707))

(assert (= (and b!550707 res!235997) b!550711))

(assert (= (and b!550711 res!235987) b!550713))

(assert (= (and b!550713 res!235993) b!550744))

(assert (= (and b!550744 c!103580) b!550740))

(assert (= (and b!550744 (not c!103580)) b!550743))

(assert (= (and b!550744 res!236004) b!550742))

(assert (= (and b!550742 res!235992) b!550741))

(assert (= (and b!550744 (not res!235984)) b!550738))

(assert (= (and b!550738 res!236001) b!550705))

(assert (= (and b!550705 res!235989) b!550745))

(assert (= (and b!550738 res!235995) b!550728))

(assert (= (and b!550728 (not res!235998)) b!550721))

(assert (= (and b!550721 res!235990) b!550729))

(assert (= (and b!550729 res!235991) b!550718))

(assert (= (and b!550738 c!103581) b!550731))

(assert (= (and b!550738 (not c!103581)) b!550736))

(assert (= (and b!550731 res!236000) b!550747))

(assert (= (and b!550738 (not res!235983)) b!550735))

(assert (= (and b!550735 (not res!236005)) b!550724))

(assert (= (and b!550724 (not res!235996)) b!550708))

(assert (= (and b!550708 (not res!236002)) b!550737))

(assert (= (and b!550737 (not res!236006)) b!550732))

(assert (= (and b!550732 c!103583) b!550716))

(assert (= (and b!550732 (not c!103583)) b!550722))

(assert (= (and b!550716 c!103579) b!550720))

(assert (= (and b!550716 (not c!103579)) b!550725))

(assert (= (and b!550720 res!235999) b!550710))

(assert (= (and b!550716 c!103582) b!550726))

(assert (= (and b!550716 (not c!103582)) b!550723))

(assert (= (and b!550726 res!235986) b!550727))

(assert (= (and b!550732 (not res!235994)) b!550717))

(assert (= (and start!50984 ((_ is Cons!5440) suffix!1342)) b!550719))

(assert (= b!550712 b!550739))

(assert (= b!550714 b!550712))

(assert (= (and start!50984 ((_ is Cons!5441) rules!3103)) b!550714))

(assert (= b!550748 b!550706))

(assert (= b!550734 b!550748))

(assert (= start!50984 b!550734))

(assert (= (and start!50984 ((_ is Cons!5440) input!2705)) b!550746))

(declare-fun m!800091 () Bool)

(assert (=> b!550738 m!800091))

(declare-fun m!800093 () Bool)

(assert (=> b!550738 m!800093))

(declare-fun m!800095 () Bool)

(assert (=> b!550738 m!800095))

(declare-fun m!800097 () Bool)

(assert (=> b!550738 m!800097))

(declare-fun m!800099 () Bool)

(assert (=> b!550738 m!800099))

(declare-fun m!800101 () Bool)

(assert (=> b!550738 m!800101))

(declare-fun m!800103 () Bool)

(assert (=> b!550738 m!800103))

(declare-fun m!800105 () Bool)

(assert (=> b!550738 m!800105))

(declare-fun m!800107 () Bool)

(assert (=> b!550738 m!800107))

(declare-fun m!800109 () Bool)

(assert (=> b!550738 m!800109))

(declare-fun m!800111 () Bool)

(assert (=> b!550733 m!800111))

(assert (=> b!550733 m!800111))

(declare-fun m!800113 () Bool)

(assert (=> b!550733 m!800113))

(declare-fun m!800115 () Bool)

(assert (=> b!550712 m!800115))

(declare-fun m!800117 () Bool)

(assert (=> b!550712 m!800117))

(declare-fun m!800119 () Bool)

(assert (=> b!550720 m!800119))

(declare-fun m!800121 () Bool)

(assert (=> b!550720 m!800121))

(declare-fun m!800123 () Bool)

(assert (=> b!550749 m!800123))

(declare-fun m!800125 () Bool)

(assert (=> b!550717 m!800125))

(declare-fun m!800127 () Bool)

(assert (=> b!550707 m!800127))

(declare-fun m!800129 () Bool)

(assert (=> b!550730 m!800129))

(declare-fun m!800131 () Bool)

(assert (=> b!550726 m!800131))

(declare-fun m!800133 () Bool)

(assert (=> b!550726 m!800133))

(declare-fun m!800135 () Bool)

(assert (=> start!50984 m!800135))

(declare-fun m!800137 () Bool)

(assert (=> b!550713 m!800137))

(declare-fun m!800139 () Bool)

(assert (=> b!550715 m!800139))

(declare-fun m!800141 () Bool)

(assert (=> b!550715 m!800141))

(declare-fun m!800143 () Bool)

(assert (=> b!550715 m!800143))

(declare-fun m!800145 () Bool)

(assert (=> b!550716 m!800145))

(declare-fun m!800147 () Bool)

(assert (=> b!550716 m!800147))

(declare-fun m!800149 () Bool)

(assert (=> b!550705 m!800149))

(declare-fun m!800151 () Bool)

(assert (=> b!550734 m!800151))

(declare-fun m!800153 () Bool)

(assert (=> b!550711 m!800153))

(assert (=> b!550731 m!800109))

(declare-fun m!800155 () Bool)

(assert (=> b!550731 m!800155))

(assert (=> b!550731 m!800131))

(declare-fun m!800157 () Bool)

(assert (=> b!550708 m!800157))

(declare-fun m!800159 () Bool)

(assert (=> b!550744 m!800159))

(declare-fun m!800161 () Bool)

(assert (=> b!550744 m!800161))

(declare-fun m!800163 () Bool)

(assert (=> b!550744 m!800163))

(declare-fun m!800165 () Bool)

(assert (=> b!550744 m!800165))

(declare-fun m!800167 () Bool)

(assert (=> b!550744 m!800167))

(declare-fun m!800169 () Bool)

(assert (=> b!550744 m!800169))

(declare-fun m!800171 () Bool)

(assert (=> b!550744 m!800171))

(declare-fun m!800173 () Bool)

(assert (=> b!550744 m!800173))

(declare-fun m!800175 () Bool)

(assert (=> b!550744 m!800175))

(declare-fun m!800177 () Bool)

(assert (=> b!550744 m!800177))

(declare-fun m!800179 () Bool)

(assert (=> b!550744 m!800179))

(assert (=> b!550744 m!800171))

(declare-fun m!800181 () Bool)

(assert (=> b!550744 m!800181))

(declare-fun m!800183 () Bool)

(assert (=> b!550744 m!800183))

(declare-fun m!800185 () Bool)

(assert (=> b!550744 m!800185))

(declare-fun m!800187 () Bool)

(assert (=> b!550744 m!800187))

(declare-fun m!800189 () Bool)

(assert (=> b!550744 m!800189))

(declare-fun m!800191 () Bool)

(assert (=> b!550744 m!800191))

(declare-fun m!800193 () Bool)

(assert (=> b!550744 m!800193))

(declare-fun m!800195 () Bool)

(assert (=> b!550744 m!800195))

(declare-fun m!800197 () Bool)

(assert (=> b!550744 m!800197))

(declare-fun m!800199 () Bool)

(assert (=> b!550744 m!800199))

(declare-fun m!800201 () Bool)

(assert (=> b!550744 m!800201))

(declare-fun m!800203 () Bool)

(assert (=> b!550744 m!800203))

(declare-fun m!800205 () Bool)

(assert (=> b!550744 m!800205))

(declare-fun m!800207 () Bool)

(assert (=> b!550744 m!800207))

(declare-fun m!800209 () Bool)

(assert (=> b!550744 m!800209))

(declare-fun m!800211 () Bool)

(assert (=> b!550744 m!800211))

(declare-fun m!800213 () Bool)

(assert (=> b!550748 m!800213))

(declare-fun m!800215 () Bool)

(assert (=> b!550748 m!800215))

(declare-fun m!800217 () Bool)

(assert (=> b!550732 m!800217))

(declare-fun m!800219 () Bool)

(assert (=> b!550721 m!800219))

(declare-fun m!800221 () Bool)

(assert (=> b!550735 m!800221))

(declare-fun m!800223 () Bool)

(assert (=> b!550709 m!800223))

(declare-fun m!800225 () Bool)

(assert (=> b!550729 m!800225))

(declare-fun m!800227 () Bool)

(assert (=> b!550742 m!800227))

(declare-fun m!800229 () Bool)

(assert (=> b!550737 m!800229))

(check-sat (not b!550713) (not b!550733) b_and!53767 (not b!550705) b_and!53769 (not b!550734) (not b!550708) (not b!550737) (not b!550712) (not b!550729) (not b!550716) (not b!550717) tp_is_empty!3085 (not b!550726) (not start!50984) b_and!53763 (not b_next!15371) (not b_next!15369) (not b!550748) (not b_next!15373) (not b!550732) (not b!550746) (not b_next!15375) b_and!53765 (not b!550711) (not b!550720) (not b!550744) (not b!550707) (not b!550735) (not b!550749) (not b!550719) (not b!550715) (not b!550742) (not b!550714) (not b!550709) (not b!550731) (not b!550738) (not b!550721) (not b!550730))
(check-sat b_and!53767 (not b_next!15373) b_and!53769 b_and!53763 (not b_next!15371) (not b_next!15369) (not b_next!15375) b_and!53765)
