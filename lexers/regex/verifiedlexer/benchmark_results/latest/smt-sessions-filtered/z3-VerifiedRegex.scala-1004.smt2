; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50088 () Bool)

(assert start!50088)

(declare-fun b!542617 () Bool)

(declare-fun b_free!15017 () Bool)

(declare-fun b_next!15033 () Bool)

(assert (=> b!542617 (= b_free!15017 (not b_next!15033))))

(declare-fun tp!172650 () Bool)

(declare-fun b_and!52987 () Bool)

(assert (=> b!542617 (= tp!172650 b_and!52987)))

(declare-fun b_free!15019 () Bool)

(declare-fun b_next!15035 () Bool)

(assert (=> b!542617 (= b_free!15019 (not b_next!15035))))

(declare-fun tp!172646 () Bool)

(declare-fun b_and!52989 () Bool)

(assert (=> b!542617 (= tp!172646 b_and!52989)))

(declare-fun b!542612 () Bool)

(declare-fun b_free!15021 () Bool)

(declare-fun b_next!15037 () Bool)

(assert (=> b!542612 (= b_free!15021 (not b_next!15037))))

(declare-fun tp!172643 () Bool)

(declare-fun b_and!52991 () Bool)

(assert (=> b!542612 (= tp!172643 b_and!52991)))

(declare-fun b_free!15023 () Bool)

(declare-fun b_next!15039 () Bool)

(assert (=> b!542612 (= b_free!15023 (not b_next!15039))))

(declare-fun tp!172641 () Bool)

(declare-fun b_and!52993 () Bool)

(assert (=> b!542612 (= tp!172641 b_and!52993)))

(declare-fun b!542606 () Bool)

(declare-fun e!327751 () Bool)

(declare-fun e!327759 () Bool)

(declare-fun tp!172648 () Bool)

(assert (=> b!542606 (= e!327751 (and e!327759 tp!172648))))

(declare-fun b!542607 () Bool)

(declare-fun e!327749 () Bool)

(declare-fun e!327763 () Bool)

(assert (=> b!542607 (= e!327749 e!327763)))

(declare-fun res!231143 () Bool)

(assert (=> b!542607 (=> res!231143 e!327763)))

(declare-fun lt!226404 () Int)

(declare-fun lt!226373 () Int)

(assert (=> b!542607 (= res!231143 (>= lt!226404 lt!226373))))

(declare-fun b!542608 () Bool)

(declare-fun e!327740 () Bool)

(declare-fun lt!226399 () Int)

(assert (=> b!542608 (= e!327740 (or (<= lt!226399 lt!226404) (>= lt!226399 lt!226404)))))

(declare-datatypes ((C!3580 0))(
  ( (C!3581 (val!2016 Int)) )
))
(declare-datatypes ((List!5329 0))(
  ( (Nil!5319) (Cons!5319 (h!10720 C!3580) (t!74486 List!5329)) )
))
(declare-fun input!2705 () List!5329)

(declare-fun size!4270 (List!5329) Int)

(assert (=> b!542608 (= lt!226399 (size!4270 input!2705))))

(declare-fun b!542609 () Bool)

(declare-fun e!327739 () Bool)

(declare-fun tp_is_empty!3013 () Bool)

(declare-fun tp!172649 () Bool)

(assert (=> b!542609 (= e!327739 (and tp_is_empty!3013 tp!172649))))

(declare-fun b!542610 () Bool)

(declare-fun res!231137 () Bool)

(declare-fun e!327750 () Bool)

(assert (=> b!542610 (=> (not res!231137) (not e!327750))))

(declare-fun isEmpty!3842 (List!5329) Bool)

(assert (=> b!542610 (= res!231137 (not (isEmpty!3842 input!2705)))))

(declare-fun b!542611 () Bool)

(declare-fun res!231141 () Bool)

(declare-fun e!327752 () Bool)

(assert (=> b!542611 (=> res!231141 e!327752)))

(declare-datatypes ((Regex!1329 0))(
  ( (ElementMatch!1329 (c!102562 C!3580)) (Concat!2348 (regOne!3170 Regex!1329) (regTwo!3170 Regex!1329)) (EmptyExpr!1329) (Star!1329 (reg!1658 Regex!1329)) (EmptyLang!1329) (Union!1329 (regOne!3171 Regex!1329) (regTwo!3171 Regex!1329)) )
))
(declare-datatypes ((List!5330 0))(
  ( (Nil!5320) (Cons!5320 (h!10721 (_ BitVec 16)) (t!74487 List!5330)) )
))
(declare-datatypes ((TokenValue!1019 0))(
  ( (FloatLiteralValue!2038 (text!7578 List!5330)) (TokenValueExt!1018 (__x!3936 Int)) (Broken!5095 (value!33198 List!5330)) (Object!1028) (End!1019) (Def!1019) (Underscore!1019) (Match!1019) (Else!1019) (Error!1019) (Case!1019) (If!1019) (Extends!1019) (Abstract!1019) (Class!1019) (Val!1019) (DelimiterValue!2038 (del!1079 List!5330)) (KeywordValue!1025 (value!33199 List!5330)) (CommentValue!2038 (value!33200 List!5330)) (WhitespaceValue!2038 (value!33201 List!5330)) (IndentationValue!1019 (value!33202 List!5330)) (String!6838) (Int32!1019) (Broken!5096 (value!33203 List!5330)) (Boolean!1020) (Unit!9298) (OperatorValue!1022 (op!1079 List!5330)) (IdentifierValue!2038 (value!33204 List!5330)) (IdentifierValue!2039 (value!33205 List!5330)) (WhitespaceValue!2039 (value!33206 List!5330)) (True!2038) (False!2038) (Broken!5097 (value!33207 List!5330)) (Broken!5098 (value!33208 List!5330)) (True!2039) (RightBrace!1019) (RightBracket!1019) (Colon!1019) (Null!1019) (Comma!1019) (LeftBracket!1019) (False!2039) (LeftBrace!1019) (ImaginaryLiteralValue!1019 (text!7579 List!5330)) (StringLiteralValue!3057 (value!33209 List!5330)) (EOFValue!1019 (value!33210 List!5330)) (IdentValue!1019 (value!33211 List!5330)) (DelimiterValue!2039 (value!33212 List!5330)) (DedentValue!1019 (value!33213 List!5330)) (NewLineValue!1019 (value!33214 List!5330)) (IntegerValue!3057 (value!33215 (_ BitVec 32)) (text!7580 List!5330)) (IntegerValue!3058 (value!33216 Int) (text!7581 List!5330)) (Times!1019) (Or!1019) (Equal!1019) (Minus!1019) (Broken!5099 (value!33217 List!5330)) (And!1019) (Div!1019) (LessEqual!1019) (Mod!1019) (Concat!2349) (Not!1019) (Plus!1019) (SpaceValue!1019 (value!33218 List!5330)) (IntegerValue!3059 (value!33219 Int) (text!7582 List!5330)) (StringLiteralValue!3058 (text!7583 List!5330)) (FloatLiteralValue!2039 (text!7584 List!5330)) (BytesLiteralValue!1019 (value!33220 List!5330)) (CommentValue!2039 (value!33221 List!5330)) (StringLiteralValue!3059 (value!33222 List!5330)) (ErrorTokenValue!1019 (msg!1080 List!5330)) )
))
(declare-datatypes ((String!6839 0))(
  ( (String!6840 (value!33223 String)) )
))
(declare-datatypes ((IArray!3425 0))(
  ( (IArray!3426 (innerList!1770 List!5329)) )
))
(declare-datatypes ((Conc!1712 0))(
  ( (Node!1712 (left!4418 Conc!1712) (right!4748 Conc!1712) (csize!3654 Int) (cheight!1923 Int)) (Leaf!2717 (xs!4349 IArray!3425) (csize!3655 Int)) (Empty!1712) )
))
(declare-datatypes ((BalanceConc!3432 0))(
  ( (BalanceConc!3433 (c!102563 Conc!1712)) )
))
(declare-datatypes ((TokenValueInjection!1806 0))(
  ( (TokenValueInjection!1807 (toValue!1842 Int) (toChars!1701 Int)) )
))
(declare-datatypes ((Rule!1790 0))(
  ( (Rule!1791 (regex!995 Regex!1329) (tag!1257 String!6839) (isSeparator!995 Bool) (transformation!995 TokenValueInjection!1806)) )
))
(declare-datatypes ((Token!1726 0))(
  ( (Token!1727 (value!33224 TokenValue!1019) (rule!1707 Rule!1790) (size!4271 Int) (originalCharacters!1034 List!5329)) )
))
(declare-fun token!491 () Token!1726)

(declare-fun matchR!488 (Regex!1329 List!5329) Bool)

(assert (=> b!542611 (= res!231141 (not (matchR!488 (regex!995 (rule!1707 token!491)) input!2705)))))

(declare-fun e!327743 () Bool)

(assert (=> b!542612 (= e!327743 (and tp!172643 tp!172641))))

(declare-fun b!542613 () Bool)

(declare-fun e!327753 () Bool)

(declare-datatypes ((tuple2!6368 0))(
  ( (tuple2!6369 (_1!3448 Token!1726) (_2!3448 List!5329)) )
))
(declare-datatypes ((Option!1345 0))(
  ( (None!1344) (Some!1344 (v!16157 tuple2!6368)) )
))
(declare-fun lt!226385 () Option!1345)

(declare-fun get!2007 (Option!1345) tuple2!6368)

(assert (=> b!542613 (= e!327753 (= (_1!3448 (get!2007 lt!226385)) (_1!3448 (v!16157 lt!226385))))))

(declare-fun b!542614 () Bool)

(declare-fun lt!226401 () List!5329)

(declare-fun suffix!1342 () List!5329)

(declare-fun lt!226389 () List!5329)

(declare-fun lt!226403 () TokenValue!1019)

(declare-fun e!327741 () Bool)

(assert (=> b!542614 (= e!327741 (and (= (size!4271 token!491) lt!226373) (= (originalCharacters!1034 token!491) lt!226401) (= (tuple2!6369 token!491 suffix!1342) (tuple2!6369 (Token!1727 lt!226403 (rule!1707 token!491) lt!226373 lt!226401) lt!226389))))))

(declare-fun b!542615 () Bool)

(declare-fun res!231147 () Bool)

(declare-fun e!327744 () Bool)

(assert (=> b!542615 (=> (not res!231147) (not e!327744))))

(assert (=> b!542615 (= res!231147 (= (size!4271 (_1!3448 (v!16157 lt!226385))) (size!4270 (originalCharacters!1034 (_1!3448 (v!16157 lt!226385))))))))

(declare-fun b!542616 () Bool)

(declare-fun res!231152 () Bool)

(assert (=> b!542616 (=> res!231152 e!327752)))

(declare-fun getSuffix!160 (List!5329 List!5329) List!5329)

(assert (=> b!542616 (= res!231152 (not (= (getSuffix!160 input!2705 input!2705) Nil!5319)))))

(declare-fun e!327754 () Bool)

(assert (=> b!542617 (= e!327754 (and tp!172650 tp!172646))))

(declare-fun lt!226395 () List!5329)

(declare-fun lt!226378 () List!5329)

(declare-fun lt!226393 () TokenValue!1019)

(declare-fun b!542618 () Bool)

(declare-fun lt!226397 () tuple2!6368)

(assert (=> b!542618 (= e!327744 (and (= (size!4271 (_1!3448 (v!16157 lt!226385))) lt!226404) (= (originalCharacters!1034 (_1!3448 (v!16157 lt!226385))) lt!226395) (= lt!226397 (tuple2!6369 (Token!1727 lt!226393 (rule!1707 (_1!3448 (v!16157 lt!226385))) lt!226404 lt!226395) lt!226378))))))

(declare-fun b!542619 () Bool)

(declare-fun res!231140 () Bool)

(assert (=> b!542619 (=> (not res!231140) (not e!327750))))

(declare-datatypes ((List!5331 0))(
  ( (Nil!5321) (Cons!5321 (h!10722 Rule!1790) (t!74488 List!5331)) )
))
(declare-fun rules!3103 () List!5331)

(declare-fun isEmpty!3843 (List!5331) Bool)

(assert (=> b!542619 (= res!231140 (not (isEmpty!3843 rules!3103)))))

(declare-fun b!542620 () Bool)

(declare-fun res!231149 () Bool)

(assert (=> b!542620 (=> res!231149 e!327752)))

(declare-fun isPrefix!637 (List!5329 List!5329) Bool)

(assert (=> b!542620 (= res!231149 (not (isPrefix!637 lt!226395 input!2705)))))

(declare-fun b!542621 () Bool)

(declare-fun res!231148 () Bool)

(assert (=> b!542621 (=> res!231148 e!327752)))

(declare-fun lt!226374 () List!5329)

(assert (=> b!542621 (= res!231148 (not (= lt!226374 input!2705)))))

(declare-fun b!542622 () Bool)

(declare-datatypes ((Unit!9299 0))(
  ( (Unit!9300) )
))
(declare-fun e!327764 () Unit!9299)

(declare-fun Unit!9301 () Unit!9299)

(assert (=> b!542622 (= e!327764 Unit!9301)))

(assert (=> b!542622 false))

(declare-fun b!542623 () Bool)

(assert (=> b!542623 (= e!327763 e!327753)))

(declare-fun res!231156 () Bool)

(assert (=> b!542623 (=> (not res!231156) (not e!327753))))

(declare-fun isDefined!1157 (Option!1345) Bool)

(assert (=> b!542623 (= res!231156 (isDefined!1157 lt!226385))))

(declare-fun b!542624 () Bool)

(declare-fun e!327756 () Bool)

(declare-fun e!327757 () Bool)

(assert (=> b!542624 (= e!327756 e!327757)))

(declare-fun res!231151 () Bool)

(assert (=> b!542624 (=> (not res!231151) (not e!327757))))

(declare-fun lt!226406 () List!5329)

(declare-fun lt!226390 () List!5329)

(assert (=> b!542624 (= res!231151 (= lt!226406 lt!226390))))

(declare-fun ++!1483 (List!5329 List!5329) List!5329)

(assert (=> b!542624 (= lt!226406 (++!1483 lt!226401 suffix!1342))))

(declare-fun b!542625 () Bool)

(declare-fun res!231146 () Bool)

(assert (=> b!542625 (=> (not res!231146) (not e!327750))))

(declare-datatypes ((LexerInterface!881 0))(
  ( (LexerInterfaceExt!878 (__x!3937 Int)) (Lexer!879) )
))
(declare-fun thiss!22590 () LexerInterface!881)

(declare-fun rulesInvariant!844 (LexerInterface!881 List!5331) Bool)

(assert (=> b!542625 (= res!231146 (rulesInvariant!844 thiss!22590 rules!3103))))

(declare-fun b!542626 () Bool)

(declare-fun e!327742 () Bool)

(assert (=> b!542626 (= e!327742 e!327752)))

(declare-fun res!231136 () Bool)

(assert (=> b!542626 (=> res!231136 e!327752)))

(assert (=> b!542626 (= res!231136 (>= lt!226404 lt!226373))))

(assert (=> b!542626 e!327749))

(declare-fun res!231145 () Bool)

(assert (=> b!542626 (=> (not res!231145) (not e!327749))))

(declare-fun maxPrefixOneRule!294 (LexerInterface!881 Rule!1790 List!5329) Option!1345)

(assert (=> b!542626 (= res!231145 (= (maxPrefixOneRule!294 thiss!22590 (rule!1707 token!491) lt!226390) (Some!1344 (tuple2!6369 (Token!1727 lt!226403 (rule!1707 token!491) lt!226373 lt!226401) suffix!1342))))))

(declare-fun lt!226381 () Unit!9299)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!46 (LexerInterface!881 List!5331 List!5329 List!5329 List!5329 Rule!1790) Unit!9299)

(assert (=> b!542626 (= lt!226381 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!46 thiss!22590 rules!3103 lt!226401 lt!226390 suffix!1342 (rule!1707 token!491)))))

(declare-fun lt!226386 () Option!1345)

(declare-fun lt!226377 () Token!1726)

(assert (=> b!542626 (= lt!226386 (Some!1344 (tuple2!6369 lt!226377 (_2!3448 (v!16157 lt!226385)))))))

(assert (=> b!542626 (= lt!226386 (maxPrefixOneRule!294 thiss!22590 (rule!1707 (_1!3448 (v!16157 lt!226385))) input!2705))))

(declare-fun lt!226380 () Unit!9299)

(assert (=> b!542626 (= lt!226380 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!46 thiss!22590 rules!3103 lt!226395 input!2705 (_2!3448 (v!16157 lt!226385)) (rule!1707 (_1!3448 (v!16157 lt!226385)))))))

(assert (=> b!542626 e!327741))

(declare-fun res!231155 () Bool)

(assert (=> b!542626 (=> (not res!231155) (not e!327741))))

(assert (=> b!542626 (= res!231155 (= (value!33224 token!491) lt!226403))))

(declare-fun apply!1270 (TokenValueInjection!1806 BalanceConc!3432) TokenValue!1019)

(declare-fun seqFromList!1193 (List!5329) BalanceConc!3432)

(assert (=> b!542626 (= lt!226403 (apply!1270 (transformation!995 (rule!1707 token!491)) (seqFromList!1193 lt!226401)))))

(assert (=> b!542626 (= suffix!1342 lt!226389)))

(declare-fun lt!226400 () Unit!9299)

(declare-fun lemmaSamePrefixThenSameSuffix!364 (List!5329 List!5329 List!5329 List!5329 List!5329) Unit!9299)

(assert (=> b!542626 (= lt!226400 (lemmaSamePrefixThenSameSuffix!364 lt!226401 suffix!1342 lt!226401 lt!226389 lt!226390))))

(assert (=> b!542626 (= lt!226389 (getSuffix!160 lt!226390 lt!226401))))

(declare-fun b!542627 () Bool)

(declare-fun e!327738 () Bool)

(assert (=> b!542627 (= e!327752 e!327738)))

(declare-fun res!231158 () Bool)

(assert (=> b!542627 (=> res!231158 e!327738)))

(declare-fun contains!1239 (List!5331 Rule!1790) Bool)

(assert (=> b!542627 (= res!231158 (not (contains!1239 rules!3103 (rule!1707 (_1!3448 (v!16157 lt!226385))))))))

(assert (=> b!542627 (= lt!226378 (_2!3448 (v!16157 lt!226385)))))

(declare-fun b!542628 () Bool)

(declare-fun Unit!9302 () Unit!9299)

(assert (=> b!542628 (= e!327764 Unit!9302)))

(declare-fun tp!172644 () Bool)

(declare-fun b!542629 () Bool)

(declare-fun inv!6671 (String!6839) Bool)

(declare-fun inv!6674 (TokenValueInjection!1806) Bool)

(assert (=> b!542629 (= e!327759 (and tp!172644 (inv!6671 (tag!1257 (h!10722 rules!3103))) (inv!6674 (transformation!995 (h!10722 rules!3103))) e!327743))))

(declare-fun b!542630 () Bool)

(declare-fun e!327746 () Bool)

(declare-fun tp!172647 () Bool)

(assert (=> b!542630 (= e!327746 (and tp!172647 (inv!6671 (tag!1257 (rule!1707 token!491))) (inv!6674 (transformation!995 (rule!1707 token!491))) e!327754))))

(declare-fun b!542631 () Bool)

(declare-fun e!327761 () Bool)

(declare-fun e!327747 () Bool)

(assert (=> b!542631 (= e!327761 e!327747)))

(declare-fun res!231154 () Bool)

(assert (=> b!542631 (=> (not res!231154) (not e!327747))))

(declare-fun lt!226405 () tuple2!6368)

(assert (=> b!542631 (= res!231154 (and (= (_1!3448 lt!226405) token!491) (= (_2!3448 lt!226405) suffix!1342)))))

(declare-fun lt!226392 () Option!1345)

(assert (=> b!542631 (= lt!226405 (get!2007 lt!226392))))

(declare-fun res!231153 () Bool)

(assert (=> start!50088 (=> (not res!231153) (not e!327750))))

(get-info :version)

(assert (=> start!50088 (= res!231153 ((_ is Lexer!879) thiss!22590))))

(assert (=> start!50088 e!327750))

(declare-fun e!327755 () Bool)

(assert (=> start!50088 e!327755))

(assert (=> start!50088 e!327751))

(declare-fun e!327745 () Bool)

(declare-fun inv!6675 (Token!1726) Bool)

(assert (=> start!50088 (and (inv!6675 token!491) e!327745)))

(assert (=> start!50088 true))

(assert (=> start!50088 e!327739))

(declare-fun b!542632 () Bool)

(declare-fun tp!172642 () Bool)

(assert (=> b!542632 (= e!327755 (and tp_is_empty!3013 tp!172642))))

(declare-fun b!542633 () Bool)

(declare-fun e!327760 () Bool)

(assert (=> b!542633 (= e!327750 e!327760)))

(declare-fun res!231150 () Bool)

(assert (=> b!542633 (=> (not res!231150) (not e!327760))))

(assert (=> b!542633 (= res!231150 (= lt!226401 input!2705))))

(declare-fun list!2207 (BalanceConc!3432) List!5329)

(declare-fun charsOf!624 (Token!1726) BalanceConc!3432)

(assert (=> b!542633 (= lt!226401 (list!2207 (charsOf!624 token!491)))))

(declare-fun b!542634 () Bool)

(declare-fun res!231162 () Bool)

(assert (=> b!542634 (=> res!231162 e!327752)))

(assert (=> b!542634 (= res!231162 (not (contains!1239 rules!3103 (rule!1707 token!491))))))

(declare-fun b!542635 () Bool)

(declare-fun res!231135 () Bool)

(assert (=> b!542635 (=> res!231135 e!327752)))

(assert (=> b!542635 (= res!231135 (not (= (++!1483 lt!226395 lt!226378) input!2705)))))

(declare-fun b!542636 () Bool)

(declare-fun res!231161 () Bool)

(assert (=> b!542636 (=> res!231161 e!327738)))

(assert (=> b!542636 (= res!231161 (not (matchR!488 (regex!995 (rule!1707 (_1!3448 (v!16157 lt!226385)))) lt!226395)))))

(declare-fun b!542637 () Bool)

(declare-fun res!231160 () Bool)

(assert (=> b!542637 (=> (not res!231160) (not e!327741))))

(assert (=> b!542637 (= res!231160 (= (size!4271 token!491) (size!4270 (originalCharacters!1034 token!491))))))

(declare-fun b!542638 () Bool)

(assert (=> b!542638 (= e!327760 e!327761)))

(declare-fun res!231142 () Bool)

(assert (=> b!542638 (=> (not res!231142) (not e!327761))))

(assert (=> b!542638 (= res!231142 (isDefined!1157 lt!226392))))

(declare-fun maxPrefix!579 (LexerInterface!881 List!5331 List!5329) Option!1345)

(assert (=> b!542638 (= lt!226392 (maxPrefix!579 thiss!22590 rules!3103 lt!226390))))

(assert (=> b!542638 (= lt!226390 (++!1483 input!2705 suffix!1342))))

(declare-fun b!542639 () Bool)

(declare-fun res!231138 () Bool)

(assert (=> b!542639 (=> res!231138 e!327752)))

(assert (=> b!542639 (= res!231138 (not (isPrefix!637 lt!226401 input!2705)))))

(declare-fun b!542640 () Bool)

(assert (=> b!542640 (= e!327747 e!327756)))

(declare-fun res!231144 () Bool)

(assert (=> b!542640 (=> (not res!231144) (not e!327756))))

(assert (=> b!542640 (= res!231144 ((_ is Some!1344) lt!226385))))

(assert (=> b!542640 (= lt!226385 (maxPrefix!579 thiss!22590 rules!3103 input!2705))))

(declare-fun b!542641 () Bool)

(assert (=> b!542641 (= e!327757 (not e!327742))))

(declare-fun res!231157 () Bool)

(assert (=> b!542641 (=> res!231157 e!327742)))

(assert (=> b!542641 (= res!231157 (not (isPrefix!637 input!2705 lt!226406)))))

(assert (=> b!542641 (isPrefix!637 lt!226401 lt!226406)))

(declare-fun lt!226402 () Unit!9299)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!488 (List!5329 List!5329) Unit!9299)

(assert (=> b!542641 (= lt!226402 (lemmaConcatTwoListThenFirstIsPrefix!488 lt!226401 suffix!1342))))

(assert (=> b!542641 (isPrefix!637 input!2705 lt!226390)))

(declare-fun lt!226375 () Unit!9299)

(assert (=> b!542641 (= lt!226375 (lemmaConcatTwoListThenFirstIsPrefix!488 input!2705 suffix!1342))))

(assert (=> b!542641 (= lt!226377 (Token!1727 lt!226393 (rule!1707 (_1!3448 (v!16157 lt!226385))) lt!226404 lt!226395))))

(assert (=> b!542641 e!327744))

(declare-fun res!231159 () Bool)

(assert (=> b!542641 (=> (not res!231159) (not e!327744))))

(assert (=> b!542641 (= res!231159 (= (value!33224 (_1!3448 (v!16157 lt!226385))) lt!226393))))

(declare-fun lt!226394 () BalanceConc!3432)

(assert (=> b!542641 (= lt!226393 (apply!1270 (transformation!995 (rule!1707 (_1!3448 (v!16157 lt!226385)))) lt!226394))))

(assert (=> b!542641 (= lt!226394 (seqFromList!1193 lt!226395))))

(declare-fun lt!226379 () Unit!9299)

(declare-fun lemmaInv!143 (TokenValueInjection!1806) Unit!9299)

(assert (=> b!542641 (= lt!226379 (lemmaInv!143 (transformation!995 (rule!1707 token!491))))))

(declare-fun lt!226383 () Unit!9299)

(assert (=> b!542641 (= lt!226383 (lemmaInv!143 (transformation!995 (rule!1707 (_1!3448 (v!16157 lt!226385))))))))

(declare-fun ruleValid!215 (LexerInterface!881 Rule!1790) Bool)

(assert (=> b!542641 (ruleValid!215 thiss!22590 (rule!1707 token!491))))

(declare-fun lt!226387 () Unit!9299)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!74 (LexerInterface!881 Rule!1790 List!5331) Unit!9299)

(assert (=> b!542641 (= lt!226387 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!74 thiss!22590 (rule!1707 token!491) rules!3103))))

(assert (=> b!542641 (ruleValid!215 thiss!22590 (rule!1707 (_1!3448 (v!16157 lt!226385))))))

(declare-fun lt!226384 () Unit!9299)

(assert (=> b!542641 (= lt!226384 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!74 thiss!22590 (rule!1707 (_1!3448 (v!16157 lt!226385))) rules!3103))))

(assert (=> b!542641 (isPrefix!637 input!2705 input!2705)))

(declare-fun lt!226388 () Unit!9299)

(declare-fun lemmaIsPrefixRefl!377 (List!5329 List!5329) Unit!9299)

(assert (=> b!542641 (= lt!226388 (lemmaIsPrefixRefl!377 input!2705 input!2705))))

(assert (=> b!542641 (= (_2!3448 (v!16157 lt!226385)) lt!226378)))

(declare-fun lt!226396 () Unit!9299)

(assert (=> b!542641 (= lt!226396 (lemmaSamePrefixThenSameSuffix!364 lt!226395 (_2!3448 (v!16157 lt!226385)) lt!226395 lt!226378 input!2705))))

(assert (=> b!542641 (= lt!226378 (getSuffix!160 input!2705 lt!226395))))

(assert (=> b!542641 (isPrefix!637 lt!226395 lt!226374)))

(assert (=> b!542641 (= lt!226374 (++!1483 lt!226395 (_2!3448 (v!16157 lt!226385))))))

(declare-fun lt!226382 () Unit!9299)

(assert (=> b!542641 (= lt!226382 (lemmaConcatTwoListThenFirstIsPrefix!488 lt!226395 (_2!3448 (v!16157 lt!226385))))))

(declare-fun lt!226372 () Unit!9299)

(declare-fun lemmaCharactersSize!74 (Token!1726) Unit!9299)

(assert (=> b!542641 (= lt!226372 (lemmaCharactersSize!74 token!491))))

(declare-fun lt!226391 () Unit!9299)

(assert (=> b!542641 (= lt!226391 (lemmaCharactersSize!74 (_1!3448 (v!16157 lt!226385))))))

(declare-fun lt!226398 () Unit!9299)

(assert (=> b!542641 (= lt!226398 e!327764)))

(declare-fun c!102561 () Bool)

(assert (=> b!542641 (= c!102561 (> lt!226404 lt!226373))))

(assert (=> b!542641 (= lt!226373 (size!4270 lt!226401))))

(assert (=> b!542641 (= lt!226404 (size!4270 lt!226395))))

(assert (=> b!542641 (= lt!226395 (list!2207 (charsOf!624 (_1!3448 (v!16157 lt!226385)))))))

(assert (=> b!542641 (= lt!226385 (Some!1344 lt!226397))))

(assert (=> b!542641 (= lt!226397 (tuple2!6369 (_1!3448 (v!16157 lt!226385)) (_2!3448 (v!16157 lt!226385))))))

(declare-fun lt!226376 () Unit!9299)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!80 (List!5329 List!5329 List!5329 List!5329) Unit!9299)

(assert (=> b!542641 (= lt!226376 (lemmaConcatSameAndSameSizesThenSameLists!80 lt!226401 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!542642 () Bool)

(declare-fun tp!172645 () Bool)

(declare-fun inv!21 (TokenValue!1019) Bool)

(assert (=> b!542642 (= e!327745 (and (inv!21 (value!33224 token!491)) e!327746 tp!172645))))

(declare-fun b!542643 () Bool)

(assert (=> b!542643 (= e!327738 e!327740)))

(declare-fun res!231139 () Bool)

(assert (=> b!542643 (=> res!231139 e!327740)))

(assert (=> b!542643 (= res!231139 (not (= lt!226386 (Some!1344 (tuple2!6369 lt!226377 lt!226378)))))))

(declare-fun lt!226407 () Unit!9299)

(declare-fun lemmaSemiInverse!124 (TokenValueInjection!1806 BalanceConc!3432) Unit!9299)

(assert (=> b!542643 (= lt!226407 (lemmaSemiInverse!124 (transformation!995 (rule!1707 (_1!3448 (v!16157 lt!226385)))) lt!226394))))

(assert (= (and start!50088 res!231153) b!542619))

(assert (= (and b!542619 res!231140) b!542625))

(assert (= (and b!542625 res!231146) b!542610))

(assert (= (and b!542610 res!231137) b!542633))

(assert (= (and b!542633 res!231150) b!542638))

(assert (= (and b!542638 res!231142) b!542631))

(assert (= (and b!542631 res!231154) b!542640))

(assert (= (and b!542640 res!231144) b!542624))

(assert (= (and b!542624 res!231151) b!542641))

(assert (= (and b!542641 c!102561) b!542622))

(assert (= (and b!542641 (not c!102561)) b!542628))

(assert (= (and b!542641 res!231159) b!542615))

(assert (= (and b!542615 res!231147) b!542618))

(assert (= (and b!542641 (not res!231157)) b!542626))

(assert (= (and b!542626 res!231155) b!542637))

(assert (= (and b!542637 res!231160) b!542614))

(assert (= (and b!542626 res!231145) b!542607))

(assert (= (and b!542607 (not res!231143)) b!542623))

(assert (= (and b!542623 res!231156) b!542613))

(assert (= (and b!542626 (not res!231136)) b!542634))

(assert (= (and b!542634 (not res!231162)) b!542611))

(assert (= (and b!542611 (not res!231141)) b!542639))

(assert (= (and b!542639 (not res!231138)) b!542616))

(assert (= (and b!542616 (not res!231152)) b!542621))

(assert (= (and b!542621 (not res!231148)) b!542620))

(assert (= (and b!542620 (not res!231149)) b!542635))

(assert (= (and b!542635 (not res!231135)) b!542627))

(assert (= (and b!542627 (not res!231158)) b!542636))

(assert (= (and b!542636 (not res!231161)) b!542643))

(assert (= (and b!542643 (not res!231139)) b!542608))

(assert (= (and start!50088 ((_ is Cons!5319) suffix!1342)) b!542632))

(assert (= b!542629 b!542612))

(assert (= b!542606 b!542629))

(assert (= (and start!50088 ((_ is Cons!5321) rules!3103)) b!542606))

(assert (= b!542630 b!542617))

(assert (= b!542642 b!542630))

(assert (= start!50088 b!542642))

(assert (= (and start!50088 ((_ is Cons!5319) input!2705)) b!542609))

(declare-fun m!790535 () Bool)

(assert (=> start!50088 m!790535))

(declare-fun m!790537 () Bool)

(assert (=> b!542631 m!790537))

(declare-fun m!790539 () Bool)

(assert (=> b!542642 m!790539))

(declare-fun m!790541 () Bool)

(assert (=> b!542634 m!790541))

(declare-fun m!790543 () Bool)

(assert (=> b!542640 m!790543))

(declare-fun m!790545 () Bool)

(assert (=> b!542633 m!790545))

(assert (=> b!542633 m!790545))

(declare-fun m!790547 () Bool)

(assert (=> b!542633 m!790547))

(declare-fun m!790549 () Bool)

(assert (=> b!542636 m!790549))

(declare-fun m!790551 () Bool)

(assert (=> b!542643 m!790551))

(declare-fun m!790553 () Bool)

(assert (=> b!542638 m!790553))

(declare-fun m!790555 () Bool)

(assert (=> b!542638 m!790555))

(declare-fun m!790557 () Bool)

(assert (=> b!542638 m!790557))

(declare-fun m!790559 () Bool)

(assert (=> b!542620 m!790559))

(declare-fun m!790561 () Bool)

(assert (=> b!542616 m!790561))

(declare-fun m!790563 () Bool)

(assert (=> b!542637 m!790563))

(declare-fun m!790565 () Bool)

(assert (=> b!542626 m!790565))

(declare-fun m!790567 () Bool)

(assert (=> b!542626 m!790567))

(assert (=> b!542626 m!790565))

(declare-fun m!790569 () Bool)

(assert (=> b!542626 m!790569))

(declare-fun m!790571 () Bool)

(assert (=> b!542626 m!790571))

(declare-fun m!790573 () Bool)

(assert (=> b!542626 m!790573))

(declare-fun m!790575 () Bool)

(assert (=> b!542626 m!790575))

(declare-fun m!790577 () Bool)

(assert (=> b!542626 m!790577))

(declare-fun m!790579 () Bool)

(assert (=> b!542626 m!790579))

(declare-fun m!790581 () Bool)

(assert (=> b!542615 m!790581))

(declare-fun m!790583 () Bool)

(assert (=> b!542619 m!790583))

(declare-fun m!790585 () Bool)

(assert (=> b!542623 m!790585))

(declare-fun m!790587 () Bool)

(assert (=> b!542608 m!790587))

(declare-fun m!790589 () Bool)

(assert (=> b!542641 m!790589))

(declare-fun m!790591 () Bool)

(assert (=> b!542641 m!790591))

(declare-fun m!790593 () Bool)

(assert (=> b!542641 m!790593))

(declare-fun m!790595 () Bool)

(assert (=> b!542641 m!790595))

(declare-fun m!790597 () Bool)

(assert (=> b!542641 m!790597))

(declare-fun m!790599 () Bool)

(assert (=> b!542641 m!790599))

(declare-fun m!790601 () Bool)

(assert (=> b!542641 m!790601))

(declare-fun m!790603 () Bool)

(assert (=> b!542641 m!790603))

(declare-fun m!790605 () Bool)

(assert (=> b!542641 m!790605))

(declare-fun m!790607 () Bool)

(assert (=> b!542641 m!790607))

(declare-fun m!790609 () Bool)

(assert (=> b!542641 m!790609))

(declare-fun m!790611 () Bool)

(assert (=> b!542641 m!790611))

(declare-fun m!790613 () Bool)

(assert (=> b!542641 m!790613))

(declare-fun m!790615 () Bool)

(assert (=> b!542641 m!790615))

(declare-fun m!790617 () Bool)

(assert (=> b!542641 m!790617))

(declare-fun m!790619 () Bool)

(assert (=> b!542641 m!790619))

(declare-fun m!790621 () Bool)

(assert (=> b!542641 m!790621))

(declare-fun m!790623 () Bool)

(assert (=> b!542641 m!790623))

(declare-fun m!790625 () Bool)

(assert (=> b!542641 m!790625))

(declare-fun m!790627 () Bool)

(assert (=> b!542641 m!790627))

(declare-fun m!790629 () Bool)

(assert (=> b!542641 m!790629))

(declare-fun m!790631 () Bool)

(assert (=> b!542641 m!790631))

(declare-fun m!790633 () Bool)

(assert (=> b!542641 m!790633))

(declare-fun m!790635 () Bool)

(assert (=> b!542641 m!790635))

(declare-fun m!790637 () Bool)

(assert (=> b!542641 m!790637))

(declare-fun m!790639 () Bool)

(assert (=> b!542641 m!790639))

(declare-fun m!790641 () Bool)

(assert (=> b!542641 m!790641))

(assert (=> b!542641 m!790629))

(declare-fun m!790643 () Bool)

(assert (=> b!542630 m!790643))

(declare-fun m!790645 () Bool)

(assert (=> b!542630 m!790645))

(declare-fun m!790647 () Bool)

(assert (=> b!542611 m!790647))

(declare-fun m!790649 () Bool)

(assert (=> b!542635 m!790649))

(declare-fun m!790651 () Bool)

(assert (=> b!542610 m!790651))

(declare-fun m!790653 () Bool)

(assert (=> b!542613 m!790653))

(declare-fun m!790655 () Bool)

(assert (=> b!542624 m!790655))

(declare-fun m!790657 () Bool)

(assert (=> b!542639 m!790657))

(declare-fun m!790659 () Bool)

(assert (=> b!542627 m!790659))

(declare-fun m!790661 () Bool)

(assert (=> b!542625 m!790661))

(declare-fun m!790663 () Bool)

(assert (=> b!542629 m!790663))

(declare-fun m!790665 () Bool)

(assert (=> b!542629 m!790665))

(check-sat (not b!542630) (not b!542635) (not b!542623) (not b!542632) b_and!52987 (not b!542636) (not b_next!15037) (not b!542633) (not b!542613) (not b!542631) (not b_next!15035) (not b!542626) (not b_next!15039) (not b!542627) (not b!542642) (not b!542643) (not b!542616) (not b!542608) b_and!52991 (not b!542615) (not b!542638) (not b!542625) (not b!542611) b_and!52989 b_and!52993 (not b!542640) (not b!542624) (not b!542639) (not b!542634) (not b!542606) tp_is_empty!3013 (not b!542619) (not b_next!15033) (not b!542609) (not start!50088) (not b!542620) (not b!542641) (not b!542637) (not b!542610) (not b!542629))
(check-sat b_and!52991 b_and!52987 (not b_next!15037) b_and!52989 (not b_next!15035) (not b_next!15039) b_and!52993 (not b_next!15033))
