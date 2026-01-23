; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101498 () Bool)

(assert start!101498)

(declare-fun b!1159666 () Bool)

(declare-fun e!742205 () Bool)

(assert (=> b!1159666 (= e!742205 true)))

(declare-fun b!1159665 () Bool)

(declare-fun e!742204 () Bool)

(assert (=> b!1159665 (= e!742204 e!742205)))

(declare-fun b!1159647 () Bool)

(assert (=> b!1159647 e!742204))

(assert (= b!1159665 b!1159666))

(assert (= b!1159647 b!1159665))

(declare-fun b!1159645 () Bool)

(declare-fun e!742193 () Bool)

(declare-fun e!742190 () Bool)

(assert (=> b!1159645 (= e!742193 e!742190)))

(declare-fun res!522388 () Bool)

(assert (=> b!1159645 (=> (not res!522388) (not e!742190))))

(declare-datatypes ((List!11383 0))(
  ( (Nil!11359) (Cons!11359 (h!16760 (_ BitVec 16)) (t!109509 List!11383)) )
))
(declare-datatypes ((TokenValue!2037 0))(
  ( (FloatLiteralValue!4074 (text!14704 List!11383)) (TokenValueExt!2036 (__x!7785 Int)) (Broken!10185 (value!64144 List!11383)) (Object!2060) (End!2037) (Def!2037) (Underscore!2037) (Match!2037) (Else!2037) (Error!2037) (Case!2037) (If!2037) (Extends!2037) (Abstract!2037) (Class!2037) (Val!2037) (DelimiterValue!4074 (del!2097 List!11383)) (KeywordValue!2043 (value!64145 List!11383)) (CommentValue!4074 (value!64146 List!11383)) (WhitespaceValue!4074 (value!64147 List!11383)) (IndentationValue!2037 (value!64148 List!11383)) (String!13772) (Int32!2037) (Broken!10186 (value!64149 List!11383)) (Boolean!2038) (Unit!17362) (OperatorValue!2040 (op!2097 List!11383)) (IdentifierValue!4074 (value!64150 List!11383)) (IdentifierValue!4075 (value!64151 List!11383)) (WhitespaceValue!4075 (value!64152 List!11383)) (True!4074) (False!4074) (Broken!10187 (value!64153 List!11383)) (Broken!10188 (value!64154 List!11383)) (True!4075) (RightBrace!2037) (RightBracket!2037) (Colon!2037) (Null!2037) (Comma!2037) (LeftBracket!2037) (False!4075) (LeftBrace!2037) (ImaginaryLiteralValue!2037 (text!14705 List!11383)) (StringLiteralValue!6111 (value!64155 List!11383)) (EOFValue!2037 (value!64156 List!11383)) (IdentValue!2037 (value!64157 List!11383)) (DelimiterValue!4075 (value!64158 List!11383)) (DedentValue!2037 (value!64159 List!11383)) (NewLineValue!2037 (value!64160 List!11383)) (IntegerValue!6111 (value!64161 (_ BitVec 32)) (text!14706 List!11383)) (IntegerValue!6112 (value!64162 Int) (text!14707 List!11383)) (Times!2037) (Or!2037) (Equal!2037) (Minus!2037) (Broken!10189 (value!64163 List!11383)) (And!2037) (Div!2037) (LessEqual!2037) (Mod!2037) (Concat!5278) (Not!2037) (Plus!2037) (SpaceValue!2037 (value!64164 List!11383)) (IntegerValue!6113 (value!64165 Int) (text!14708 List!11383)) (StringLiteralValue!6112 (text!14709 List!11383)) (FloatLiteralValue!4075 (text!14710 List!11383)) (BytesLiteralValue!2037 (value!64166 List!11383)) (CommentValue!4075 (value!64167 List!11383)) (StringLiteralValue!6113 (value!64168 List!11383)) (ErrorTokenValue!2037 (msg!2098 List!11383)) )
))
(declare-datatypes ((C!6800 0))(
  ( (C!6801 (val!3656 Int)) )
))
(declare-datatypes ((Regex!3241 0))(
  ( (ElementMatch!3241 (c!194184 C!6800)) (Concat!5279 (regOne!6994 Regex!3241) (regTwo!6994 Regex!3241)) (EmptyExpr!3241) (Star!3241 (reg!3570 Regex!3241)) (EmptyLang!3241) (Union!3241 (regOne!6995 Regex!3241) (regTwo!6995 Regex!3241)) )
))
(declare-datatypes ((String!13773 0))(
  ( (String!13774 (value!64169 String)) )
))
(declare-datatypes ((List!11384 0))(
  ( (Nil!11360) (Cons!11360 (h!16761 C!6800) (t!109510 List!11384)) )
))
(declare-datatypes ((IArray!7413 0))(
  ( (IArray!7414 (innerList!3764 List!11384)) )
))
(declare-datatypes ((Conc!3704 0))(
  ( (Node!3704 (left!9915 Conc!3704) (right!10245 Conc!3704) (csize!7638 Int) (cheight!3915 Int)) (Leaf!5700 (xs!6409 IArray!7413) (csize!7639 Int)) (Empty!3704) )
))
(declare-datatypes ((BalanceConc!7430 0))(
  ( (BalanceConc!7431 (c!194185 Conc!3704)) )
))
(declare-datatypes ((TokenValueInjection!3774 0))(
  ( (TokenValueInjection!3775 (toValue!3072 Int) (toChars!2931 Int)) )
))
(declare-datatypes ((Rule!3742 0))(
  ( (Rule!3743 (regex!1971 Regex!3241) (tag!2233 String!13773) (isSeparator!1971 Bool) (transformation!1971 TokenValueInjection!3774)) )
))
(declare-datatypes ((Token!3604 0))(
  ( (Token!3605 (value!64170 TokenValue!2037) (rule!3392 Rule!3742) (size!8928 Int) (originalCharacters!2525 List!11384)) )
))
(declare-datatypes ((List!11385 0))(
  ( (Nil!11361) (Cons!11361 (h!16762 Token!3604) (t!109511 List!11385)) )
))
(declare-datatypes ((IArray!7415 0))(
  ( (IArray!7416 (innerList!3765 List!11385)) )
))
(declare-datatypes ((Conc!3705 0))(
  ( (Node!3705 (left!9916 Conc!3705) (right!10246 Conc!3705) (csize!7640 Int) (cheight!3916 Int)) (Leaf!5701 (xs!6410 IArray!7415) (csize!7641 Int)) (Empty!3705) )
))
(declare-datatypes ((BalanceConc!7432 0))(
  ( (BalanceConc!7433 (c!194186 Conc!3705)) )
))
(declare-datatypes ((List!11386 0))(
  ( (Nil!11362) (Cons!11362 (h!16763 Rule!3742) (t!109512 List!11386)) )
))
(declare-datatypes ((PrintableTokens!628 0))(
  ( (PrintableTokens!629 (rules!9462 List!11386) (tokens!1570 BalanceConc!7432)) )
))
(declare-fun thiss!10527 () PrintableTokens!628)

(declare-fun lt!394026 () List!11385)

(declare-datatypes ((LexerInterface!1666 0))(
  ( (LexerInterfaceExt!1663 (__x!7786 Int)) (Lexer!1664) )
))
(declare-fun rulesProduceIndividualToken!703 (LexerInterface!1666 List!11386 Token!3604) Bool)

(assert (=> b!1159645 (= res!522388 (rulesProduceIndividualToken!703 Lexer!1664 (rules!9462 thiss!10527) (h!16762 lt!394026)))))

(declare-fun b!1159646 () Bool)

(declare-fun e!742191 () Bool)

(declare-fun tp!333647 () Bool)

(declare-fun inv!14933 (Conc!3705) Bool)

(assert (=> b!1159646 (= e!742191 (and (inv!14933 (c!194186 (tokens!1570 thiss!10527))) tp!333647))))

(declare-fun e!742189 () Bool)

(declare-fun e!742196 () Bool)

(assert (=> b!1159647 (= e!742189 (not e!742196))))

(declare-fun res!522387 () Bool)

(assert (=> b!1159647 (=> res!522387 e!742196)))

(declare-fun lambda!47113 () Int)

(declare-fun forall!2944 (BalanceConc!7432 Int) Bool)

(assert (=> b!1159647 (= res!522387 (not (forall!2944 (tokens!1570 thiss!10527) lambda!47113)))))

(declare-fun rulesProduceEachTokenIndividuallyList!534 (LexerInterface!1666 List!11386 List!11385) Bool)

(assert (=> b!1159647 (= (rulesProduceEachTokenIndividuallyList!534 Lexer!1664 (rules!9462 thiss!10527) lt!394026) e!742193)))

(declare-fun res!522379 () Bool)

(assert (=> b!1159647 (=> res!522379 e!742193)))

(get-info :version)

(assert (=> b!1159647 (= res!522379 (not ((_ is Cons!11361) lt!394026)))))

(declare-fun list!4184 (BalanceConc!7432) List!11385)

(assert (=> b!1159647 (= lt!394026 (list!4184 (tokens!1570 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!705 (LexerInterface!1666 List!11386 BalanceConc!7432) Bool)

(assert (=> b!1159647 (= (rulesProduceEachTokenIndividually!705 Lexer!1664 (rules!9462 thiss!10527) (tokens!1570 thiss!10527)) (forall!2944 (tokens!1570 thiss!10527) lambda!47113))))

(declare-fun b!1159648 () Bool)

(declare-fun res!522389 () Bool)

(declare-fun e!742198 () Bool)

(assert (=> b!1159648 (=> res!522389 e!742198)))

(declare-fun lt!394023 () BalanceConc!7432)

(assert (=> b!1159648 (= res!522389 (not (forall!2944 lt!394023 lambda!47113)))))

(declare-fun b!1159649 () Bool)

(assert (=> b!1159649 (= e!742190 (rulesProduceEachTokenIndividuallyList!534 Lexer!1664 (rules!9462 thiss!10527) (t!109511 lt!394026)))))

(declare-fun b!1159650 () Bool)

(assert (=> b!1159650 (= e!742198 true)))

(declare-fun separableTokens!108 (LexerInterface!1666 BalanceConc!7432 List!11386) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!41 (LexerInterface!1666 BalanceConc!7432 Int List!11386) Bool)

(assert (=> b!1159650 (= (separableTokens!108 Lexer!1664 lt!394023 (rules!9462 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!41 Lexer!1664 lt!394023 0 (rules!9462 thiss!10527)))))

(declare-fun res!522384 () Bool)

(declare-fun e!742192 () Bool)

(assert (=> start!101498 (=> (not res!522384) (not e!742192))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!101498 (= res!522384 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101498 e!742192))

(assert (=> start!101498 true))

(declare-fun e!742194 () Bool)

(declare-fun inv!14934 (PrintableTokens!628) Bool)

(assert (=> start!101498 (and (inv!14934 thiss!10527) e!742194)))

(declare-fun tp!333648 () Bool)

(declare-fun b!1159651 () Bool)

(declare-fun inv!14935 (BalanceConc!7432) Bool)

(assert (=> b!1159651 (= e!742194 (and tp!333648 (inv!14935 (tokens!1570 thiss!10527)) e!742191))))

(declare-fun b!1159652 () Bool)

(declare-fun res!522383 () Bool)

(declare-fun e!742197 () Bool)

(assert (=> b!1159652 (=> (not res!522383) (not e!742197))))

(assert (=> b!1159652 (= res!522383 (= (rulesProduceEachTokenIndividually!705 Lexer!1664 (rules!9462 thiss!10527) lt!394023) (forall!2944 lt!394023 lambda!47113)))))

(declare-fun lt!394021 () List!11385)

(declare-fun b!1159653 () Bool)

(declare-fun e!742199 () Bool)

(assert (=> b!1159653 (= e!742197 (= (rulesProduceEachTokenIndividuallyList!534 Lexer!1664 (rules!9462 thiss!10527) lt!394021) e!742199))))

(declare-fun res!522380 () Bool)

(assert (=> b!1159653 (=> res!522380 e!742199)))

(assert (=> b!1159653 (= res!522380 (not ((_ is Cons!11361) lt!394021)))))

(declare-fun b!1159654 () Bool)

(declare-fun res!522382 () Bool)

(assert (=> b!1159654 (=> (not res!522382) (not e!742192))))

(declare-fun size!8929 (BalanceConc!7432) Int)

(assert (=> b!1159654 (= res!522382 (<= to!267 (size!8929 (tokens!1570 thiss!10527))))))

(declare-fun b!1159655 () Bool)

(declare-fun e!742195 () Bool)

(assert (=> b!1159655 (= e!742195 (rulesProduceEachTokenIndividuallyList!534 Lexer!1664 (rules!9462 thiss!10527) (t!109511 lt!394021)))))

(declare-fun b!1159656 () Bool)

(assert (=> b!1159656 (= e!742199 e!742195)))

(declare-fun res!522381 () Bool)

(assert (=> b!1159656 (=> (not res!522381) (not e!742195))))

(assert (=> b!1159656 (= res!522381 (rulesProduceIndividualToken!703 Lexer!1664 (rules!9462 thiss!10527) (h!16762 lt!394021)))))

(declare-fun b!1159657 () Bool)

(assert (=> b!1159657 (= e!742192 e!742189)))

(declare-fun res!522378 () Bool)

(assert (=> b!1159657 (=> (not res!522378) (not e!742189))))

(declare-fun rulesInvariant!1540 (LexerInterface!1666 List!11386) Bool)

(assert (=> b!1159657 (= res!522378 (rulesInvariant!1540 Lexer!1664 (rules!9462 thiss!10527)))))

(declare-datatypes ((Unit!17363 0))(
  ( (Unit!17364) )
))
(declare-fun lt!394022 () Unit!17363)

(declare-fun lemmaInvariant!158 (PrintableTokens!628) Unit!17363)

(assert (=> b!1159657 (= lt!394022 (lemmaInvariant!158 thiss!10527))))

(declare-fun b!1159658 () Bool)

(assert (=> b!1159658 (= e!742196 e!742198)))

(declare-fun res!522385 () Bool)

(assert (=> b!1159658 (=> res!522385 e!742198)))

(declare-fun forall!2945 (List!11385 Int) Bool)

(assert (=> b!1159658 (= res!522385 (not (forall!2945 lt!394021 lambda!47113)))))

(assert (=> b!1159658 e!742197))

(declare-fun res!522386 () Bool)

(assert (=> b!1159658 (=> (not res!522386) (not e!742197))))

(assert (=> b!1159658 (= res!522386 (forall!2945 lt!394021 lambda!47113))))

(declare-fun lt!394024 () Unit!17363)

(declare-fun lemmaForallSubseq!119 (List!11385 List!11385 Int) Unit!17363)

(assert (=> b!1159658 (= lt!394024 (lemmaForallSubseq!119 lt!394021 lt!394026 lambda!47113))))

(assert (=> b!1159658 (= lt!394021 (list!4184 lt!394023))))

(declare-fun slice!237 (BalanceConc!7432 Int Int) BalanceConc!7432)

(assert (=> b!1159658 (= lt!394023 (slice!237 (tokens!1570 thiss!10527) from!787 to!267))))

(declare-fun subseq!227 (List!11385 List!11385) Bool)

(declare-fun slice!238 (List!11385 Int Int) List!11385)

(assert (=> b!1159658 (subseq!227 (slice!238 lt!394026 from!787 to!267) lt!394026)))

(declare-fun lt!394025 () Unit!17363)

(declare-fun lemmaSliceSubseq!68 (List!11385 Int Int) Unit!17363)

(assert (=> b!1159658 (= lt!394025 (lemmaSliceSubseq!68 lt!394026 from!787 to!267))))

(assert (= (and start!101498 res!522384) b!1159654))

(assert (= (and b!1159654 res!522382) b!1159657))

(assert (= (and b!1159657 res!522378) b!1159647))

(assert (= (and b!1159647 (not res!522379)) b!1159645))

(assert (= (and b!1159645 res!522388) b!1159649))

(assert (= (and b!1159647 (not res!522387)) b!1159658))

(assert (= (and b!1159658 res!522386) b!1159652))

(assert (= (and b!1159652 res!522383) b!1159653))

(assert (= (and b!1159653 (not res!522380)) b!1159656))

(assert (= (and b!1159656 res!522381) b!1159655))

(assert (= (and b!1159658 (not res!522385)) b!1159648))

(assert (= (and b!1159648 (not res!522389)) b!1159650))

(assert (= b!1159651 b!1159646))

(assert (= start!101498 b!1159651))

(declare-fun m!1326191 () Bool)

(assert (=> b!1159648 m!1326191))

(declare-fun m!1326193 () Bool)

(assert (=> b!1159652 m!1326193))

(assert (=> b!1159652 m!1326191))

(declare-fun m!1326195 () Bool)

(assert (=> b!1159654 m!1326195))

(declare-fun m!1326197 () Bool)

(assert (=> b!1159658 m!1326197))

(declare-fun m!1326199 () Bool)

(assert (=> b!1159658 m!1326199))

(declare-fun m!1326201 () Bool)

(assert (=> b!1159658 m!1326201))

(declare-fun m!1326203 () Bool)

(assert (=> b!1159658 m!1326203))

(assert (=> b!1159658 m!1326201))

(declare-fun m!1326205 () Bool)

(assert (=> b!1159658 m!1326205))

(declare-fun m!1326207 () Bool)

(assert (=> b!1159658 m!1326207))

(declare-fun m!1326209 () Bool)

(assert (=> b!1159658 m!1326209))

(assert (=> b!1159658 m!1326199))

(declare-fun m!1326211 () Bool)

(assert (=> b!1159645 m!1326211))

(declare-fun m!1326213 () Bool)

(assert (=> b!1159646 m!1326213))

(declare-fun m!1326215 () Bool)

(assert (=> b!1159650 m!1326215))

(declare-fun m!1326217 () Bool)

(assert (=> b!1159650 m!1326217))

(declare-fun m!1326219 () Bool)

(assert (=> b!1159657 m!1326219))

(declare-fun m!1326221 () Bool)

(assert (=> b!1159657 m!1326221))

(declare-fun m!1326223 () Bool)

(assert (=> b!1159656 m!1326223))

(declare-fun m!1326225 () Bool)

(assert (=> b!1159651 m!1326225))

(declare-fun m!1326227 () Bool)

(assert (=> b!1159653 m!1326227))

(declare-fun m!1326229 () Bool)

(assert (=> b!1159647 m!1326229))

(declare-fun m!1326231 () Bool)

(assert (=> b!1159647 m!1326231))

(declare-fun m!1326233 () Bool)

(assert (=> b!1159647 m!1326233))

(declare-fun m!1326235 () Bool)

(assert (=> b!1159647 m!1326235))

(assert (=> b!1159647 m!1326229))

(declare-fun m!1326237 () Bool)

(assert (=> b!1159649 m!1326237))

(declare-fun m!1326239 () Bool)

(assert (=> start!101498 m!1326239))

(declare-fun m!1326241 () Bool)

(assert (=> b!1159655 m!1326241))

(check-sat (not b!1159656) (not b!1159665) (not b!1159666) (not b!1159658) (not start!101498) (not b!1159653) (not b!1159647) (not b!1159649) (not b!1159645) (not b!1159646) (not b!1159648) (not b!1159654) (not b!1159657) (not b!1159650) (not b!1159652) (not b!1159651) (not b!1159655))
(check-sat)
