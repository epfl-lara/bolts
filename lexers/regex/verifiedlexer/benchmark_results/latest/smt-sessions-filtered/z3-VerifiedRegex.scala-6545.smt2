; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346122 () Bool)

(assert start!346122)

(declare-fun b!3684782 () Bool)

(declare-fun b_free!97709 () Bool)

(declare-fun b_next!98413 () Bool)

(assert (=> b!3684782 (= b_free!97709 (not b_next!98413))))

(declare-fun tp!1120024 () Bool)

(declare-fun b_and!275387 () Bool)

(assert (=> b!3684782 (= tp!1120024 b_and!275387)))

(declare-fun b_free!97711 () Bool)

(declare-fun b_next!98415 () Bool)

(assert (=> b!3684782 (= b_free!97711 (not b_next!98415))))

(declare-fun tp!1120026 () Bool)

(declare-fun b_and!275389 () Bool)

(assert (=> b!3684782 (= tp!1120026 b_and!275389)))

(declare-fun res!1497153 () Bool)

(declare-fun e!2281739 () Bool)

(assert (=> start!346122 (=> (not res!1497153) (not e!2281739))))

(declare-datatypes ((LexerInterface!5459 0))(
  ( (LexerInterfaceExt!5456 (__x!24417 Int)) (Lexer!5457) )
))
(declare-fun thiss!25197 () LexerInterface!5459)

(get-info :version)

(assert (=> start!346122 (= res!1497153 ((_ is Lexer!5457) thiss!25197))))

(assert (=> start!346122 e!2281739))

(assert (=> start!346122 true))

(declare-fun e!2281737 () Bool)

(assert (=> start!346122 e!2281737))

(declare-fun e!2281738 () Bool)

(assert (=> start!346122 e!2281738))

(declare-fun e!2281740 () Bool)

(assert (=> start!346122 e!2281740))

(declare-fun b!3684780 () Bool)

(declare-fun e!2281734 () Bool)

(declare-fun tp!1120027 () Bool)

(assert (=> b!3684780 (= e!2281737 (and e!2281734 tp!1120027))))

(declare-fun b!3684781 () Bool)

(declare-fun tp_is_empty!18341 () Bool)

(declare-fun tp!1120023 () Bool)

(assert (=> b!3684781 (= e!2281738 (and tp_is_empty!18341 tp!1120023))))

(declare-fun e!2281731 () Bool)

(assert (=> b!3684782 (= e!2281731 (and tp!1120024 tp!1120026))))

(declare-fun b!3684783 () Bool)

(declare-fun tp!1120025 () Bool)

(assert (=> b!3684783 (= e!2281740 (and tp_is_empty!18341 tp!1120025))))

(declare-fun b!3684784 () Bool)

(declare-fun e!2281732 () Bool)

(assert (=> b!3684784 (= e!2281732 (not true))))

(declare-fun lt!1289294 () Bool)

(declare-datatypes ((List!39048 0))(
  ( (Nil!38924) (Cons!38924 (h!44344 (_ BitVec 16)) (t!301015 List!39048)) )
))
(declare-datatypes ((TokenValue!6100 0))(
  ( (FloatLiteralValue!12200 (text!43145 List!39048)) (TokenValueExt!6099 (__x!24418 Int)) (Broken!30500 (value!187729 List!39048)) (Object!6223) (End!6100) (Def!6100) (Underscore!6100) (Match!6100) (Else!6100) (Error!6100) (Case!6100) (If!6100) (Extends!6100) (Abstract!6100) (Class!6100) (Val!6100) (DelimiterValue!12200 (del!6160 List!39048)) (KeywordValue!6106 (value!187730 List!39048)) (CommentValue!12200 (value!187731 List!39048)) (WhitespaceValue!12200 (value!187732 List!39048)) (IndentationValue!6100 (value!187733 List!39048)) (String!43833) (Int32!6100) (Broken!30501 (value!187734 List!39048)) (Boolean!6101) (Unit!57005) (OperatorValue!6103 (op!6160 List!39048)) (IdentifierValue!12200 (value!187735 List!39048)) (IdentifierValue!12201 (value!187736 List!39048)) (WhitespaceValue!12201 (value!187737 List!39048)) (True!12200) (False!12200) (Broken!30502 (value!187738 List!39048)) (Broken!30503 (value!187739 List!39048)) (True!12201) (RightBrace!6100) (RightBracket!6100) (Colon!6100) (Null!6100) (Comma!6100) (LeftBracket!6100) (False!12201) (LeftBrace!6100) (ImaginaryLiteralValue!6100 (text!43146 List!39048)) (StringLiteralValue!18300 (value!187740 List!39048)) (EOFValue!6100 (value!187741 List!39048)) (IdentValue!6100 (value!187742 List!39048)) (DelimiterValue!12201 (value!187743 List!39048)) (DedentValue!6100 (value!187744 List!39048)) (NewLineValue!6100 (value!187745 List!39048)) (IntegerValue!18300 (value!187746 (_ BitVec 32)) (text!43147 List!39048)) (IntegerValue!18301 (value!187747 Int) (text!43148 List!39048)) (Times!6100) (Or!6100) (Equal!6100) (Minus!6100) (Broken!30504 (value!187748 List!39048)) (And!6100) (Div!6100) (LessEqual!6100) (Mod!6100) (Concat!16729) (Not!6100) (Plus!6100) (SpaceValue!6100 (value!187749 List!39048)) (IntegerValue!18302 (value!187750 Int) (text!43149 List!39048)) (StringLiteralValue!18301 (text!43150 List!39048)) (FloatLiteralValue!12201 (text!43151 List!39048)) (BytesLiteralValue!6100 (value!187751 List!39048)) (CommentValue!12201 (value!187752 List!39048)) (StringLiteralValue!18302 (value!187753 List!39048)) (ErrorTokenValue!6100 (msg!6161 List!39048)) )
))
(declare-datatypes ((String!43834 0))(
  ( (String!43835 (value!187754 String)) )
))
(declare-datatypes ((C!21444 0))(
  ( (C!21445 (val!12770 Int)) )
))
(declare-datatypes ((List!39049 0))(
  ( (Nil!38925) (Cons!38925 (h!44345 C!21444) (t!301016 List!39049)) )
))
(declare-datatypes ((IArray!23865 0))(
  ( (IArray!23866 (innerList!11990 List!39049)) )
))
(declare-datatypes ((Regex!10629 0))(
  ( (ElementMatch!10629 (c!637401 C!21444)) (Concat!16730 (regOne!21770 Regex!10629) (regTwo!21770 Regex!10629)) (EmptyExpr!10629) (Star!10629 (reg!10958 Regex!10629)) (EmptyLang!10629) (Union!10629 (regOne!21771 Regex!10629) (regTwo!21771 Regex!10629)) )
))
(declare-datatypes ((Conc!11930 0))(
  ( (Node!11930 (left!30367 Conc!11930) (right!30697 Conc!11930) (csize!24090 Int) (cheight!12141 Int)) (Leaf!18476 (xs!15132 IArray!23865) (csize!24091 Int)) (Empty!11930) )
))
(declare-datatypes ((BalanceConc!23474 0))(
  ( (BalanceConc!23475 (c!637402 Conc!11930)) )
))
(declare-datatypes ((TokenValueInjection!11628 0))(
  ( (TokenValueInjection!11629 (toValue!8178 Int) (toChars!8037 Int)) )
))
(declare-datatypes ((Rule!11540 0))(
  ( (Rule!11541 (regex!5870 Regex!10629) (tag!6678 String!43834) (isSeparator!5870 Bool) (transformation!5870 TokenValueInjection!11628)) )
))
(declare-datatypes ((Token!11106 0))(
  ( (Token!11107 (value!187755 TokenValue!6100) (rule!8712 Rule!11540) (size!29760 Int) (originalCharacters!6584 List!39049)) )
))
(declare-fun lt!1289288 () Token!11106)

(declare-fun lt!1289292 () List!39049)

(declare-fun matchR!5184 (Regex!10629 List!39049) Bool)

(assert (=> b!3684784 (= lt!1289294 (matchR!5184 (regex!5870 (rule!8712 lt!1289288)) lt!1289292))))

(declare-fun e!2281736 () Bool)

(assert (=> b!3684784 e!2281736))

(declare-fun res!1497157 () Bool)

(assert (=> b!3684784 (=> (not res!1497157) (not e!2281736))))

(declare-datatypes ((Option!8351 0))(
  ( (None!8350) (Some!8350 (v!38296 Rule!11540)) )
))
(declare-fun lt!1289290 () Option!8351)

(declare-fun isDefined!6569 (Option!8351) Bool)

(assert (=> b!3684784 (= res!1497157 (isDefined!6569 lt!1289290))))

(declare-datatypes ((List!39050 0))(
  ( (Nil!38926) (Cons!38926 (h!44346 Rule!11540) (t!301017 List!39050)) )
))
(declare-fun rules!3568 () List!39050)

(declare-fun getRuleFromTag!1458 (LexerInterface!5459 List!39050 String!43834) Option!8351)

(assert (=> b!3684784 (= lt!1289290 (getRuleFromTag!1458 thiss!25197 rules!3568 (tag!6678 (rule!8712 lt!1289288))))))

(declare-datatypes ((Unit!57006 0))(
  ( (Unit!57007) )
))
(declare-fun lt!1289295 () Unit!57006)

(declare-fun input!3129 () List!39049)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1458 (LexerInterface!5459 List!39050 List!39049 Token!11106) Unit!57006)

(assert (=> b!3684784 (= lt!1289295 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1458 thiss!25197 rules!3568 input!3129 lt!1289288))))

(declare-fun suffix!1448 () List!39049)

(declare-fun isPrefix!3223 (List!39049 List!39049) Bool)

(declare-fun ++!9689 (List!39049 List!39049) List!39049)

(assert (=> b!3684784 (isPrefix!3223 lt!1289292 (++!9689 input!3129 suffix!1448))))

(declare-fun lt!1289291 () Unit!57006)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!554 (List!39049 List!39049 List!39049) Unit!57006)

(assert (=> b!3684784 (= lt!1289291 (lemmaPrefixStaysPrefixWhenAddingToSuffix!554 lt!1289292 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38804 0))(
  ( (tuple2!38805 (_1!22536 Token!11106) (_2!22536 List!39049)) )
))
(declare-fun lt!1289289 () tuple2!38804)

(assert (=> b!3684784 (isPrefix!3223 lt!1289292 (++!9689 lt!1289292 (_2!22536 lt!1289289)))))

(declare-fun lt!1289293 () Unit!57006)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2140 (List!39049 List!39049) Unit!57006)

(assert (=> b!3684784 (= lt!1289293 (lemmaConcatTwoListThenFirstIsPrefix!2140 lt!1289292 (_2!22536 lt!1289289)))))

(declare-datatypes ((Option!8352 0))(
  ( (None!8351) (Some!8351 (v!38297 tuple2!38804)) )
))
(declare-fun get!12887 (Option!8352) tuple2!38804)

(declare-fun maxPrefix!2987 (LexerInterface!5459 List!39050 List!39049) Option!8352)

(assert (=> b!3684784 (= lt!1289289 (get!12887 (maxPrefix!2987 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14500 (BalanceConc!23474) List!39049)

(declare-fun charsOf!3881 (Token!11106) BalanceConc!23474)

(assert (=> b!3684784 (= lt!1289292 (list!14500 (charsOf!3881 lt!1289288)))))

(declare-datatypes ((List!39051 0))(
  ( (Nil!38927) (Cons!38927 (h!44347 Token!11106) (t!301018 List!39051)) )
))
(declare-datatypes ((IArray!23867 0))(
  ( (IArray!23868 (innerList!11991 List!39051)) )
))
(declare-datatypes ((Conc!11931 0))(
  ( (Node!11931 (left!30368 Conc!11931) (right!30698 Conc!11931) (csize!24092 Int) (cheight!12142 Int)) (Leaf!18477 (xs!15133 IArray!23867) (csize!24093 Int)) (Empty!11931) )
))
(declare-datatypes ((BalanceConc!23476 0))(
  ( (BalanceConc!23477 (c!637403 Conc!11931)) )
))
(declare-datatypes ((tuple2!38806 0))(
  ( (tuple2!38807 (_1!22537 BalanceConc!23476) (_2!22537 BalanceConc!23474)) )
))
(declare-fun lt!1289296 () tuple2!38806)

(declare-fun head!7926 (List!39051) Token!11106)

(declare-fun list!14501 (BalanceConc!23476) List!39051)

(assert (=> b!3684784 (= lt!1289288 (head!7926 (list!14501 (_1!22537 lt!1289296))))))

(declare-fun b!3684785 () Bool)

(assert (=> b!3684785 (= e!2281739 e!2281732)))

(declare-fun res!1497155 () Bool)

(assert (=> b!3684785 (=> (not res!1497155) (not e!2281732))))

(declare-fun isEmpty!23135 (BalanceConc!23476) Bool)

(assert (=> b!3684785 (= res!1497155 (not (isEmpty!23135 (_1!22537 lt!1289296))))))

(declare-fun lex!2600 (LexerInterface!5459 List!39050 BalanceConc!23474) tuple2!38806)

(declare-fun seqFromList!4419 (List!39049) BalanceConc!23474)

(assert (=> b!3684785 (= lt!1289296 (lex!2600 thiss!25197 rules!3568 (seqFromList!4419 input!3129)))))

(declare-fun tp!1120028 () Bool)

(declare-fun b!3684786 () Bool)

(declare-fun inv!52409 (String!43834) Bool)

(declare-fun inv!52411 (TokenValueInjection!11628) Bool)

(assert (=> b!3684786 (= e!2281734 (and tp!1120028 (inv!52409 (tag!6678 (h!44346 rules!3568))) (inv!52411 (transformation!5870 (h!44346 rules!3568))) e!2281731))))

(declare-fun b!3684787 () Bool)

(declare-fun e!2281735 () Bool)

(assert (=> b!3684787 (= e!2281736 e!2281735)))

(declare-fun res!1497154 () Bool)

(assert (=> b!3684787 (=> (not res!1497154) (not e!2281735))))

(declare-fun lt!1289287 () Rule!11540)

(assert (=> b!3684787 (= res!1497154 (matchR!5184 (regex!5870 lt!1289287) lt!1289292))))

(declare-fun get!12888 (Option!8351) Rule!11540)

(assert (=> b!3684787 (= lt!1289287 (get!12888 lt!1289290))))

(declare-fun b!3684788 () Bool)

(assert (=> b!3684788 (= e!2281735 (= (rule!8712 lt!1289288) lt!1289287))))

(declare-fun b!3684789 () Bool)

(declare-fun res!1497156 () Bool)

(assert (=> b!3684789 (=> (not res!1497156) (not e!2281739))))

(declare-fun rulesInvariant!4856 (LexerInterface!5459 List!39050) Bool)

(assert (=> b!3684789 (= res!1497156 (rulesInvariant!4856 thiss!25197 rules!3568))))

(declare-fun b!3684790 () Bool)

(declare-fun res!1497152 () Bool)

(assert (=> b!3684790 (=> (not res!1497152) (not e!2281739))))

(declare-fun isEmpty!23136 (List!39050) Bool)

(assert (=> b!3684790 (= res!1497152 (not (isEmpty!23136 rules!3568)))))

(assert (= (and start!346122 res!1497153) b!3684790))

(assert (= (and b!3684790 res!1497152) b!3684789))

(assert (= (and b!3684789 res!1497156) b!3684785))

(assert (= (and b!3684785 res!1497155) b!3684784))

(assert (= (and b!3684784 res!1497157) b!3684787))

(assert (= (and b!3684787 res!1497154) b!3684788))

(assert (= b!3684786 b!3684782))

(assert (= b!3684780 b!3684786))

(assert (= (and start!346122 ((_ is Cons!38926) rules!3568)) b!3684780))

(assert (= (and start!346122 ((_ is Cons!38925) suffix!1448)) b!3684781))

(assert (= (and start!346122 ((_ is Cons!38925) input!3129)) b!3684783))

(declare-fun m!4196119 () Bool)

(assert (=> b!3684786 m!4196119))

(declare-fun m!4196121 () Bool)

(assert (=> b!3684786 m!4196121))

(declare-fun m!4196123 () Bool)

(assert (=> b!3684787 m!4196123))

(declare-fun m!4196125 () Bool)

(assert (=> b!3684787 m!4196125))

(declare-fun m!4196127 () Bool)

(assert (=> b!3684790 m!4196127))

(declare-fun m!4196129 () Bool)

(assert (=> b!3684789 m!4196129))

(declare-fun m!4196131 () Bool)

(assert (=> b!3684784 m!4196131))

(declare-fun m!4196133 () Bool)

(assert (=> b!3684784 m!4196133))

(assert (=> b!3684784 m!4196131))

(declare-fun m!4196135 () Bool)

(assert (=> b!3684784 m!4196135))

(declare-fun m!4196137 () Bool)

(assert (=> b!3684784 m!4196137))

(declare-fun m!4196139 () Bool)

(assert (=> b!3684784 m!4196139))

(declare-fun m!4196141 () Bool)

(assert (=> b!3684784 m!4196141))

(declare-fun m!4196143 () Bool)

(assert (=> b!3684784 m!4196143))

(declare-fun m!4196145 () Bool)

(assert (=> b!3684784 m!4196145))

(assert (=> b!3684784 m!4196135))

(declare-fun m!4196147 () Bool)

(assert (=> b!3684784 m!4196147))

(declare-fun m!4196149 () Bool)

(assert (=> b!3684784 m!4196149))

(assert (=> b!3684784 m!4196141))

(declare-fun m!4196151 () Bool)

(assert (=> b!3684784 m!4196151))

(assert (=> b!3684784 m!4196145))

(declare-fun m!4196153 () Bool)

(assert (=> b!3684784 m!4196153))

(declare-fun m!4196155 () Bool)

(assert (=> b!3684784 m!4196155))

(declare-fun m!4196157 () Bool)

(assert (=> b!3684784 m!4196157))

(declare-fun m!4196159 () Bool)

(assert (=> b!3684784 m!4196159))

(assert (=> b!3684784 m!4196157))

(declare-fun m!4196161 () Bool)

(assert (=> b!3684784 m!4196161))

(declare-fun m!4196163 () Bool)

(assert (=> b!3684785 m!4196163))

(declare-fun m!4196165 () Bool)

(assert (=> b!3684785 m!4196165))

(assert (=> b!3684785 m!4196165))

(declare-fun m!4196167 () Bool)

(assert (=> b!3684785 m!4196167))

(check-sat (not b!3684786) (not b!3684780) b_and!275387 (not b_next!98415) tp_is_empty!18341 (not b!3684784) (not b!3684787) (not b!3684783) (not b!3684789) (not b!3684790) b_and!275389 (not b!3684781) (not b!3684785) (not b_next!98413))
(check-sat b_and!275387 b_and!275389 (not b_next!98415) (not b_next!98413))
