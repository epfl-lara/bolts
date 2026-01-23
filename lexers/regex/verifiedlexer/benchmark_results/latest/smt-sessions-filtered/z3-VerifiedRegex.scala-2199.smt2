; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108098 () Bool)

(assert start!108098)

(declare-fun b!1211560 () Bool)

(declare-fun b_free!28825 () Bool)

(declare-fun b_next!29529 () Bool)

(assert (=> b!1211560 (= b_free!28825 (not b_next!29529))))

(declare-fun tp!343153 () Bool)

(declare-fun b_and!82025 () Bool)

(assert (=> b!1211560 (= tp!343153 b_and!82025)))

(declare-fun b_free!28827 () Bool)

(declare-fun b_next!29531 () Bool)

(assert (=> b!1211560 (= b_free!28827 (not b_next!29531))))

(declare-fun tp!343158 () Bool)

(declare-fun b_and!82027 () Bool)

(assert (=> b!1211560 (= tp!343158 b_and!82027)))

(declare-fun b!1211553 () Bool)

(declare-fun b_free!28829 () Bool)

(declare-fun b_next!29533 () Bool)

(assert (=> b!1211553 (= b_free!28829 (not b_next!29533))))

(declare-fun tp!343160 () Bool)

(declare-fun b_and!82029 () Bool)

(assert (=> b!1211553 (= tp!343160 b_and!82029)))

(declare-fun b_free!28831 () Bool)

(declare-fun b_next!29535 () Bool)

(assert (=> b!1211553 (= b_free!28831 (not b_next!29535))))

(declare-fun tp!343156 () Bool)

(declare-fun b_and!82031 () Bool)

(assert (=> b!1211553 (= tp!343156 b_and!82031)))

(declare-fun b!1211551 () Bool)

(declare-fun e!777331 () Bool)

(declare-fun e!777325 () Bool)

(declare-fun tp!343154 () Bool)

(assert (=> b!1211551 (= e!777331 (and e!777325 tp!343154))))

(declare-fun e!777332 () Bool)

(declare-fun tp!343152 () Bool)

(declare-datatypes ((List!12324 0))(
  ( (Nil!12266) (Cons!12266 (h!17667 (_ BitVec 16)) (t!112708 List!12324)) )
))
(declare-datatypes ((TokenValue!2171 0))(
  ( (FloatLiteralValue!4342 (text!15642 List!12324)) (TokenValueExt!2170 (__x!8057 Int)) (Broken!10855 (value!68506 List!12324)) (Object!2228) (End!2171) (Def!2171) (Underscore!2171) (Match!2171) (Else!2171) (Error!2171) (Case!2171) (If!2171) (Extends!2171) (Abstract!2171) (Class!2171) (Val!2171) (DelimiterValue!4342 (del!2231 List!12324)) (KeywordValue!2177 (value!68507 List!12324)) (CommentValue!4342 (value!68508 List!12324)) (WhitespaceValue!4342 (value!68509 List!12324)) (IndentationValue!2171 (value!68510 List!12324)) (String!14986) (Int32!2171) (Broken!10856 (value!68511 List!12324)) (Boolean!2172) (Unit!18611) (OperatorValue!2174 (op!2231 List!12324)) (IdentifierValue!4342 (value!68512 List!12324)) (IdentifierValue!4343 (value!68513 List!12324)) (WhitespaceValue!4343 (value!68514 List!12324)) (True!4342) (False!4342) (Broken!10857 (value!68515 List!12324)) (Broken!10858 (value!68516 List!12324)) (True!4343) (RightBrace!2171) (RightBracket!2171) (Colon!2171) (Null!2171) (Comma!2171) (LeftBracket!2171) (False!4343) (LeftBrace!2171) (ImaginaryLiteralValue!2171 (text!15643 List!12324)) (StringLiteralValue!6513 (value!68517 List!12324)) (EOFValue!2171 (value!68518 List!12324)) (IdentValue!2171 (value!68519 List!12324)) (DelimiterValue!4343 (value!68520 List!12324)) (DedentValue!2171 (value!68521 List!12324)) (NewLineValue!2171 (value!68522 List!12324)) (IntegerValue!6513 (value!68523 (_ BitVec 32)) (text!15644 List!12324)) (IntegerValue!6514 (value!68524 Int) (text!15645 List!12324)) (Times!2171) (Or!2171) (Equal!2171) (Minus!2171) (Broken!10859 (value!68525 List!12324)) (And!2171) (Div!2171) (LessEqual!2171) (Mod!2171) (Concat!5544) (Not!2171) (Plus!2171) (SpaceValue!2171 (value!68526 List!12324)) (IntegerValue!6515 (value!68527 Int) (text!15646 List!12324)) (StringLiteralValue!6514 (text!15647 List!12324)) (FloatLiteralValue!4343 (text!15648 List!12324)) (BytesLiteralValue!2171 (value!68528 List!12324)) (CommentValue!4343 (value!68529 List!12324)) (StringLiteralValue!6515 (value!68530 List!12324)) (ErrorTokenValue!2171 (msg!2232 List!12324)) )
))
(declare-datatypes ((C!7064 0))(
  ( (C!7065 (val!4062 Int)) )
))
(declare-datatypes ((List!12325 0))(
  ( (Nil!12267) (Cons!12267 (h!17668 C!7064) (t!112709 List!12325)) )
))
(declare-datatypes ((IArray!8061 0))(
  ( (IArray!8062 (innerList!4088 List!12325)) )
))
(declare-datatypes ((Conc!4028 0))(
  ( (Node!4028 (left!10651 Conc!4028) (right!10981 Conc!4028) (csize!8286 Int) (cheight!4239 Int)) (Leaf!6228 (xs!6739 IArray!8061) (csize!8287 Int)) (Empty!4028) )
))
(declare-datatypes ((Regex!3373 0))(
  ( (ElementMatch!3373 (c!202912 C!7064)) (Concat!5545 (regOne!7258 Regex!3373) (regTwo!7258 Regex!3373)) (EmptyExpr!3373) (Star!3373 (reg!3702 Regex!3373)) (EmptyLang!3373) (Union!3373 (regOne!7259 Regex!3373) (regTwo!7259 Regex!3373)) )
))
(declare-datatypes ((String!14987 0))(
  ( (String!14988 (value!68531 String)) )
))
(declare-datatypes ((BalanceConc!7988 0))(
  ( (BalanceConc!7989 (c!202913 Conc!4028)) )
))
(declare-datatypes ((TokenValueInjection!4038 0))(
  ( (TokenValueInjection!4039 (toValue!3220 Int) (toChars!3079 Int)) )
))
(declare-datatypes ((Rule!4006 0))(
  ( (Rule!4007 (regex!2103 Regex!3373) (tag!2365 String!14987) (isSeparator!2103 Bool) (transformation!2103 TokenValueInjection!4038)) )
))
(declare-datatypes ((List!12326 0))(
  ( (Nil!12268) (Cons!12268 (h!17669 Rule!4006) (t!112710 List!12326)) )
))
(declare-fun rules!2728 () List!12326)

(declare-fun b!1211552 () Bool)

(declare-fun inv!16447 (String!14987) Bool)

(declare-fun inv!16450 (TokenValueInjection!4038) Bool)

(assert (=> b!1211552 (= e!777325 (and tp!343152 (inv!16447 (tag!2365 (h!17669 rules!2728))) (inv!16450 (transformation!2103 (h!17669 rules!2728))) e!777332))))

(assert (=> b!1211553 (= e!777332 (and tp!343160 tp!343156))))

(declare-datatypes ((Token!3868 0))(
  ( (Token!3869 (value!68532 TokenValue!2171) (rule!3524 Rule!4006) (size!9759 Int) (originalCharacters!2657 List!12325)) )
))
(declare-datatypes ((List!12327 0))(
  ( (Nil!12269) (Cons!12269 (h!17670 Token!3868) (t!112711 List!12327)) )
))
(declare-fun tokens!556 () List!12327)

(declare-fun e!777335 () Bool)

(declare-fun b!1211554 () Bool)

(declare-fun tp!343157 () Bool)

(declare-fun e!777327 () Bool)

(declare-fun inv!16451 (Token!3868) Bool)

(assert (=> b!1211554 (= e!777335 (and (inv!16451 (h!17670 tokens!556)) e!777327 tp!343157))))

(declare-fun b!1211555 () Bool)

(declare-fun e!777329 () Bool)

(declare-fun tp_is_empty!6267 () Bool)

(declare-fun tp!343161 () Bool)

(assert (=> b!1211555 (= e!777329 (and tp_is_empty!6267 tp!343161))))

(declare-fun b!1211556 () Bool)

(declare-fun res!544930 () Bool)

(declare-fun e!777330 () Bool)

(assert (=> b!1211556 (=> (not res!544930) (not e!777330))))

(declare-datatypes ((LexerInterface!1798 0))(
  ( (LexerInterfaceExt!1795 (__x!8058 Int)) (Lexer!1796) )
))
(declare-fun thiss!20528 () LexerInterface!1798)

(declare-fun input!2346 () List!12325)

(declare-datatypes ((tuple2!12142 0))(
  ( (tuple2!12143 (_1!6918 List!12327) (_2!6918 List!12325)) )
))
(declare-fun lexList!428 (LexerInterface!1798 List!12326 List!12325) tuple2!12142)

(assert (=> b!1211556 (= res!544930 (= (_1!6918 (lexList!428 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1211557 () Bool)

(declare-fun res!544932 () Bool)

(assert (=> b!1211557 (=> (not res!544932) (not e!777330))))

(declare-fun rulesInvariant!1672 (LexerInterface!1798 List!12326) Bool)

(assert (=> b!1211557 (= res!544932 (rulesInvariant!1672 thiss!20528 rules!2728))))

(declare-fun b!1211558 () Bool)

(declare-fun res!544929 () Bool)

(assert (=> b!1211558 (=> (not res!544929) (not e!777330))))

(get-info :version)

(assert (=> b!1211558 (= res!544929 (not ((_ is Nil!12269) tokens!556)))))

(declare-fun b!1211559 () Bool)

(declare-fun e!777334 () Bool)

(declare-fun tp!343155 () Bool)

(declare-fun e!777328 () Bool)

(assert (=> b!1211559 (= e!777328 (and tp!343155 (inv!16447 (tag!2365 (rule!3524 (h!17670 tokens!556)))) (inv!16450 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) e!777334))))

(assert (=> b!1211560 (= e!777334 (and tp!343153 tp!343158))))

(declare-fun res!544933 () Bool)

(assert (=> start!108098 (=> (not res!544933) (not e!777330))))

(assert (=> start!108098 (= res!544933 ((_ is Lexer!1796) thiss!20528))))

(assert (=> start!108098 e!777330))

(assert (=> start!108098 true))

(assert (=> start!108098 e!777331))

(assert (=> start!108098 e!777329))

(assert (=> start!108098 e!777335))

(declare-fun b!1211561 () Bool)

(declare-fun rulesValidInductive!653 (LexerInterface!1798 List!12326) Bool)

(assert (=> b!1211561 (= e!777330 (not (rulesValidInductive!653 thiss!20528 rules!2728)))))

(declare-fun tp!343159 () Bool)

(declare-fun b!1211562 () Bool)

(declare-fun inv!21 (TokenValue!2171) Bool)

(assert (=> b!1211562 (= e!777327 (and (inv!21 (value!68532 (h!17670 tokens!556))) e!777328 tp!343159))))

(declare-fun b!1211563 () Bool)

(declare-fun res!544931 () Bool)

(assert (=> b!1211563 (=> (not res!544931) (not e!777330))))

(declare-fun isEmpty!7311 (List!12326) Bool)

(assert (=> b!1211563 (= res!544931 (not (isEmpty!7311 rules!2728)))))

(assert (= (and start!108098 res!544933) b!1211563))

(assert (= (and b!1211563 res!544931) b!1211557))

(assert (= (and b!1211557 res!544932) b!1211556))

(assert (= (and b!1211556 res!544930) b!1211558))

(assert (= (and b!1211558 res!544929) b!1211561))

(assert (= b!1211552 b!1211553))

(assert (= b!1211551 b!1211552))

(assert (= (and start!108098 ((_ is Cons!12268) rules!2728)) b!1211551))

(assert (= (and start!108098 ((_ is Cons!12267) input!2346)) b!1211555))

(assert (= b!1211559 b!1211560))

(assert (= b!1211562 b!1211559))

(assert (= b!1211554 b!1211562))

(assert (= (and start!108098 ((_ is Cons!12269) tokens!556)) b!1211554))

(declare-fun m!1387123 () Bool)

(assert (=> b!1211556 m!1387123))

(declare-fun m!1387125 () Bool)

(assert (=> b!1211552 m!1387125))

(declare-fun m!1387127 () Bool)

(assert (=> b!1211552 m!1387127))

(declare-fun m!1387129 () Bool)

(assert (=> b!1211554 m!1387129))

(declare-fun m!1387131 () Bool)

(assert (=> b!1211563 m!1387131))

(declare-fun m!1387133 () Bool)

(assert (=> b!1211561 m!1387133))

(declare-fun m!1387135 () Bool)

(assert (=> b!1211562 m!1387135))

(declare-fun m!1387137 () Bool)

(assert (=> b!1211559 m!1387137))

(declare-fun m!1387139 () Bool)

(assert (=> b!1211559 m!1387139))

(declare-fun m!1387141 () Bool)

(assert (=> b!1211557 m!1387141))

(check-sat b_and!82031 (not b!1211557) (not b!1211551) (not b!1211559) (not b_next!29529) (not b_next!29531) tp_is_empty!6267 b_and!82027 (not b!1211554) (not b_next!29535) (not b_next!29533) (not b!1211563) (not b!1211561) b_and!82029 (not b!1211552) (not b!1211555) b_and!82025 (not b!1211556) (not b!1211562))
(check-sat b_and!82031 (not b_next!29529) (not b_next!29531) b_and!82027 (not b_next!29535) (not b_next!29533) b_and!82029 b_and!82025)
(get-model)

(declare-fun d!346542 () Bool)

(assert (=> d!346542 true))

(declare-fun lt!414624 () Bool)

(declare-fun lambda!49050 () Int)

(declare-fun forall!3169 (List!12326 Int) Bool)

(assert (=> d!346542 (= lt!414624 (forall!3169 rules!2728 lambda!49050))))

(declare-fun e!777417 () Bool)

(assert (=> d!346542 (= lt!414624 e!777417)))

(declare-fun res!544967 () Bool)

(assert (=> d!346542 (=> res!544967 e!777417)))

(assert (=> d!346542 (= res!544967 (not ((_ is Cons!12268) rules!2728)))))

(assert (=> d!346542 (= (rulesValidInductive!653 thiss!20528 rules!2728) lt!414624)))

(declare-fun b!1211673 () Bool)

(declare-fun e!777416 () Bool)

(assert (=> b!1211673 (= e!777417 e!777416)))

(declare-fun res!544968 () Bool)

(assert (=> b!1211673 (=> (not res!544968) (not e!777416))))

(declare-fun ruleValid!523 (LexerInterface!1798 Rule!4006) Bool)

(assert (=> b!1211673 (= res!544968 (ruleValid!523 thiss!20528 (h!17669 rules!2728)))))

(declare-fun b!1211674 () Bool)

(assert (=> b!1211674 (= e!777416 (rulesValidInductive!653 thiss!20528 (t!112710 rules!2728)))))

(assert (= (and d!346542 (not res!544967)) b!1211673))

(assert (= (and b!1211673 res!544968) b!1211674))

(declare-fun m!1387203 () Bool)

(assert (=> d!346542 m!1387203))

(declare-fun m!1387205 () Bool)

(assert (=> b!1211673 m!1387205))

(declare-fun m!1387207 () Bool)

(assert (=> b!1211674 m!1387207))

(assert (=> b!1211561 d!346542))

(declare-fun b!1211687 () Bool)

(declare-fun e!777426 () Bool)

(declare-fun e!777425 () Bool)

(assert (=> b!1211687 (= e!777426 e!777425)))

(declare-fun res!544971 () Bool)

(declare-fun lt!414632 () tuple2!12142)

(declare-fun size!9762 (List!12325) Int)

(assert (=> b!1211687 (= res!544971 (< (size!9762 (_2!6918 lt!414632)) (size!9762 input!2346)))))

(assert (=> b!1211687 (=> (not res!544971) (not e!777425))))

(declare-fun b!1211688 () Bool)

(declare-fun e!777424 () tuple2!12142)

(assert (=> b!1211688 (= e!777424 (tuple2!12143 Nil!12269 input!2346))))

(declare-fun d!346564 () Bool)

(assert (=> d!346564 e!777426))

(declare-fun c!202930 () Bool)

(declare-fun size!9763 (List!12327) Int)

(assert (=> d!346564 (= c!202930 (> (size!9763 (_1!6918 lt!414632)) 0))))

(assert (=> d!346564 (= lt!414632 e!777424)))

(declare-fun c!202931 () Bool)

(declare-datatypes ((tuple2!12146 0))(
  ( (tuple2!12147 (_1!6920 Token!3868) (_2!6920 List!12325)) )
))
(declare-datatypes ((Option!2467 0))(
  ( (None!2466) (Some!2466 (v!20593 tuple2!12146)) )
))
(declare-fun lt!414633 () Option!2467)

(assert (=> d!346564 (= c!202931 ((_ is Some!2466) lt!414633))))

(declare-fun maxPrefix!922 (LexerInterface!1798 List!12326 List!12325) Option!2467)

(assert (=> d!346564 (= lt!414633 (maxPrefix!922 thiss!20528 rules!2728 input!2346))))

(assert (=> d!346564 (= (lexList!428 thiss!20528 rules!2728 input!2346) lt!414632)))

(declare-fun b!1211689 () Bool)

(assert (=> b!1211689 (= e!777426 (= (_2!6918 lt!414632) input!2346))))

(declare-fun b!1211690 () Bool)

(declare-fun isEmpty!7314 (List!12327) Bool)

(assert (=> b!1211690 (= e!777425 (not (isEmpty!7314 (_1!6918 lt!414632))))))

(declare-fun b!1211691 () Bool)

(declare-fun lt!414631 () tuple2!12142)

(assert (=> b!1211691 (= e!777424 (tuple2!12143 (Cons!12269 (_1!6920 (v!20593 lt!414633)) (_1!6918 lt!414631)) (_2!6918 lt!414631)))))

(assert (=> b!1211691 (= lt!414631 (lexList!428 thiss!20528 rules!2728 (_2!6920 (v!20593 lt!414633))))))

(assert (= (and d!346564 c!202931) b!1211691))

(assert (= (and d!346564 (not c!202931)) b!1211688))

(assert (= (and d!346564 c!202930) b!1211687))

(assert (= (and d!346564 (not c!202930)) b!1211689))

(assert (= (and b!1211687 res!544971) b!1211690))

(declare-fun m!1387209 () Bool)

(assert (=> b!1211687 m!1387209))

(declare-fun m!1387211 () Bool)

(assert (=> b!1211687 m!1387211))

(declare-fun m!1387213 () Bool)

(assert (=> d!346564 m!1387213))

(declare-fun m!1387215 () Bool)

(assert (=> d!346564 m!1387215))

(declare-fun m!1387217 () Bool)

(assert (=> b!1211690 m!1387217))

(declare-fun m!1387219 () Bool)

(assert (=> b!1211691 m!1387219))

(assert (=> b!1211556 d!346564))

(declare-fun d!346566 () Bool)

(declare-fun res!544974 () Bool)

(declare-fun e!777429 () Bool)

(assert (=> d!346566 (=> (not res!544974) (not e!777429))))

(declare-fun rulesValid!754 (LexerInterface!1798 List!12326) Bool)

(assert (=> d!346566 (= res!544974 (rulesValid!754 thiss!20528 rules!2728))))

(assert (=> d!346566 (= (rulesInvariant!1672 thiss!20528 rules!2728) e!777429)))

(declare-fun b!1211694 () Bool)

(declare-datatypes ((List!12329 0))(
  ( (Nil!12271) (Cons!12271 (h!17672 String!14987) (t!112729 List!12329)) )
))
(declare-fun noDuplicateTag!754 (LexerInterface!1798 List!12326 List!12329) Bool)

(assert (=> b!1211694 (= e!777429 (noDuplicateTag!754 thiss!20528 rules!2728 Nil!12271))))

(assert (= (and d!346566 res!544974) b!1211694))

(declare-fun m!1387221 () Bool)

(assert (=> d!346566 m!1387221))

(declare-fun m!1387223 () Bool)

(assert (=> b!1211694 m!1387223))

(assert (=> b!1211557 d!346566))

(declare-fun b!1211705 () Bool)

(declare-fun e!777437 () Bool)

(declare-fun inv!15 (TokenValue!2171) Bool)

(assert (=> b!1211705 (= e!777437 (inv!15 (value!68532 (h!17670 tokens!556))))))

(declare-fun b!1211706 () Bool)

(declare-fun e!777436 () Bool)

(declare-fun inv!17 (TokenValue!2171) Bool)

(assert (=> b!1211706 (= e!777436 (inv!17 (value!68532 (h!17670 tokens!556))))))

(declare-fun d!346568 () Bool)

(declare-fun c!202937 () Bool)

(assert (=> d!346568 (= c!202937 ((_ is IntegerValue!6513) (value!68532 (h!17670 tokens!556))))))

(declare-fun e!777438 () Bool)

(assert (=> d!346568 (= (inv!21 (value!68532 (h!17670 tokens!556))) e!777438)))

(declare-fun b!1211707 () Bool)

(assert (=> b!1211707 (= e!777438 e!777436)))

(declare-fun c!202936 () Bool)

(assert (=> b!1211707 (= c!202936 ((_ is IntegerValue!6514) (value!68532 (h!17670 tokens!556))))))

(declare-fun b!1211708 () Bool)

(declare-fun res!544977 () Bool)

(assert (=> b!1211708 (=> res!544977 e!777437)))

(assert (=> b!1211708 (= res!544977 (not ((_ is IntegerValue!6515) (value!68532 (h!17670 tokens!556)))))))

(assert (=> b!1211708 (= e!777436 e!777437)))

(declare-fun b!1211709 () Bool)

(declare-fun inv!16 (TokenValue!2171) Bool)

(assert (=> b!1211709 (= e!777438 (inv!16 (value!68532 (h!17670 tokens!556))))))

(assert (= (and d!346568 c!202937) b!1211709))

(assert (= (and d!346568 (not c!202937)) b!1211707))

(assert (= (and b!1211707 c!202936) b!1211706))

(assert (= (and b!1211707 (not c!202936)) b!1211708))

(assert (= (and b!1211708 (not res!544977)) b!1211705))

(declare-fun m!1387225 () Bool)

(assert (=> b!1211705 m!1387225))

(declare-fun m!1387227 () Bool)

(assert (=> b!1211706 m!1387227))

(declare-fun m!1387229 () Bool)

(assert (=> b!1211709 m!1387229))

(assert (=> b!1211562 d!346568))

(declare-fun d!346570 () Bool)

(assert (=> d!346570 (= (isEmpty!7311 rules!2728) ((_ is Nil!12268) rules!2728))))

(assert (=> b!1211563 d!346570))

(declare-fun d!346572 () Bool)

(assert (=> d!346572 (= (inv!16447 (tag!2365 (h!17669 rules!2728))) (= (mod (str.len (value!68531 (tag!2365 (h!17669 rules!2728)))) 2) 0))))

(assert (=> b!1211552 d!346572))

(declare-fun d!346574 () Bool)

(declare-fun res!544980 () Bool)

(declare-fun e!777441 () Bool)

(assert (=> d!346574 (=> (not res!544980) (not e!777441))))

(declare-fun semiInverseModEq!766 (Int Int) Bool)

(assert (=> d!346574 (= res!544980 (semiInverseModEq!766 (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toValue!3220 (transformation!2103 (h!17669 rules!2728)))))))

(assert (=> d!346574 (= (inv!16450 (transformation!2103 (h!17669 rules!2728))) e!777441)))

(declare-fun b!1211712 () Bool)

(declare-fun equivClasses!733 (Int Int) Bool)

(assert (=> b!1211712 (= e!777441 (equivClasses!733 (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toValue!3220 (transformation!2103 (h!17669 rules!2728)))))))

(assert (= (and d!346574 res!544980) b!1211712))

(declare-fun m!1387231 () Bool)

(assert (=> d!346574 m!1387231))

(declare-fun m!1387233 () Bool)

(assert (=> b!1211712 m!1387233))

(assert (=> b!1211552 d!346574))

(declare-fun d!346576 () Bool)

(assert (=> d!346576 (= (inv!16447 (tag!2365 (rule!3524 (h!17670 tokens!556)))) (= (mod (str.len (value!68531 (tag!2365 (rule!3524 (h!17670 tokens!556))))) 2) 0))))

(assert (=> b!1211559 d!346576))

(declare-fun d!346578 () Bool)

(declare-fun res!544981 () Bool)

(declare-fun e!777442 () Bool)

(assert (=> d!346578 (=> (not res!544981) (not e!777442))))

(assert (=> d!346578 (= res!544981 (semiInverseModEq!766 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))))))

(assert (=> d!346578 (= (inv!16450 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) e!777442)))

(declare-fun b!1211713 () Bool)

(assert (=> b!1211713 (= e!777442 (equivClasses!733 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))))))

(assert (= (and d!346578 res!544981) b!1211713))

(declare-fun m!1387235 () Bool)

(assert (=> d!346578 m!1387235))

(declare-fun m!1387237 () Bool)

(assert (=> b!1211713 m!1387237))

(assert (=> b!1211559 d!346578))

(declare-fun d!346580 () Bool)

(declare-fun res!544986 () Bool)

(declare-fun e!777445 () Bool)

(assert (=> d!346580 (=> (not res!544986) (not e!777445))))

(declare-fun isEmpty!7315 (List!12325) Bool)

(assert (=> d!346580 (= res!544986 (not (isEmpty!7315 (originalCharacters!2657 (h!17670 tokens!556)))))))

(assert (=> d!346580 (= (inv!16451 (h!17670 tokens!556)) e!777445)))

(declare-fun b!1211718 () Bool)

(declare-fun res!544987 () Bool)

(assert (=> b!1211718 (=> (not res!544987) (not e!777445))))

(declare-fun list!4541 (BalanceConc!7988) List!12325)

(declare-fun dynLambda!5382 (Int TokenValue!2171) BalanceConc!7988)

(assert (=> b!1211718 (= res!544987 (= (originalCharacters!2657 (h!17670 tokens!556)) (list!4541 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))))))

(declare-fun b!1211719 () Bool)

(assert (=> b!1211719 (= e!777445 (= (size!9759 (h!17670 tokens!556)) (size!9762 (originalCharacters!2657 (h!17670 tokens!556)))))))

(assert (= (and d!346580 res!544986) b!1211718))

(assert (= (and b!1211718 res!544987) b!1211719))

(declare-fun b_lambda!35747 () Bool)

(assert (=> (not b_lambda!35747) (not b!1211718)))

(declare-fun t!112722 () Bool)

(declare-fun tb!66481 () Bool)

(assert (=> (and b!1211560 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) t!112722) tb!66481))

(declare-fun b!1211724 () Bool)

(declare-fun e!777448 () Bool)

(declare-fun tp!343218 () Bool)

(declare-fun inv!16454 (Conc!4028) Bool)

(assert (=> b!1211724 (= e!777448 (and (inv!16454 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))) tp!343218))))

(declare-fun result!80390 () Bool)

(declare-fun inv!16455 (BalanceConc!7988) Bool)

(assert (=> tb!66481 (= result!80390 (and (inv!16455 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))) e!777448))))

(assert (= tb!66481 b!1211724))

(declare-fun m!1387239 () Bool)

(assert (=> b!1211724 m!1387239))

(declare-fun m!1387241 () Bool)

(assert (=> tb!66481 m!1387241))

(assert (=> b!1211718 t!112722))

(declare-fun b_and!82045 () Bool)

(assert (= b_and!82027 (and (=> t!112722 result!80390) b_and!82045)))

(declare-fun t!112724 () Bool)

(declare-fun tb!66483 () Bool)

(assert (=> (and b!1211553 (= (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) t!112724) tb!66483))

(declare-fun result!80394 () Bool)

(assert (= result!80394 result!80390))

(assert (=> b!1211718 t!112724))

(declare-fun b_and!82047 () Bool)

(assert (= b_and!82031 (and (=> t!112724 result!80394) b_and!82047)))

(declare-fun m!1387243 () Bool)

(assert (=> d!346580 m!1387243))

(declare-fun m!1387245 () Bool)

(assert (=> b!1211718 m!1387245))

(assert (=> b!1211718 m!1387245))

(declare-fun m!1387247 () Bool)

(assert (=> b!1211718 m!1387247))

(declare-fun m!1387249 () Bool)

(assert (=> b!1211719 m!1387249))

(assert (=> b!1211554 d!346580))

(declare-fun b!1211735 () Bool)

(declare-fun b_free!28841 () Bool)

(declare-fun b_next!29545 () Bool)

(assert (=> b!1211735 (= b_free!28841 (not b_next!29545))))

(declare-fun tp!343230 () Bool)

(declare-fun b_and!82049 () Bool)

(assert (=> b!1211735 (= tp!343230 b_and!82049)))

(declare-fun b_free!28843 () Bool)

(declare-fun b_next!29547 () Bool)

(assert (=> b!1211735 (= b_free!28843 (not b_next!29547))))

(declare-fun t!112726 () Bool)

(declare-fun tb!66485 () Bool)

(assert (=> (and b!1211735 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 rules!2728)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) t!112726) tb!66485))

(declare-fun result!80398 () Bool)

(assert (= result!80398 result!80390))

(assert (=> b!1211718 t!112726))

(declare-fun b_and!82051 () Bool)

(declare-fun tp!343227 () Bool)

(assert (=> b!1211735 (= tp!343227 (and (=> t!112726 result!80398) b_and!82051))))

(declare-fun e!777460 () Bool)

(assert (=> b!1211735 (= e!777460 (and tp!343230 tp!343227))))

(declare-fun tp!343228 () Bool)

(declare-fun e!777459 () Bool)

(declare-fun b!1211734 () Bool)

(assert (=> b!1211734 (= e!777459 (and tp!343228 (inv!16447 (tag!2365 (h!17669 (t!112710 rules!2728)))) (inv!16450 (transformation!2103 (h!17669 (t!112710 rules!2728)))) e!777460))))

(declare-fun b!1211733 () Bool)

(declare-fun e!777458 () Bool)

(declare-fun tp!343229 () Bool)

(assert (=> b!1211733 (= e!777458 (and e!777459 tp!343229))))

(assert (=> b!1211551 (= tp!343154 e!777458)))

(assert (= b!1211734 b!1211735))

(assert (= b!1211733 b!1211734))

(assert (= (and b!1211551 ((_ is Cons!12268) (t!112710 rules!2728))) b!1211733))

(declare-fun m!1387251 () Bool)

(assert (=> b!1211734 m!1387251))

(declare-fun m!1387253 () Bool)

(assert (=> b!1211734 m!1387253))

(declare-fun b!1211740 () Bool)

(declare-fun e!777463 () Bool)

(declare-fun tp!343233 () Bool)

(assert (=> b!1211740 (= e!777463 (and tp_is_empty!6267 tp!343233))))

(assert (=> b!1211562 (= tp!343159 e!777463)))

(assert (= (and b!1211562 ((_ is Cons!12267) (originalCharacters!2657 (h!17670 tokens!556)))) b!1211740))

(declare-fun b!1211752 () Bool)

(declare-fun e!777466 () Bool)

(declare-fun tp!343245 () Bool)

(declare-fun tp!343246 () Bool)

(assert (=> b!1211752 (= e!777466 (and tp!343245 tp!343246))))

(declare-fun b!1211754 () Bool)

(declare-fun tp!343244 () Bool)

(declare-fun tp!343248 () Bool)

(assert (=> b!1211754 (= e!777466 (and tp!343244 tp!343248))))

(declare-fun b!1211751 () Bool)

(assert (=> b!1211751 (= e!777466 tp_is_empty!6267)))

(declare-fun b!1211753 () Bool)

(declare-fun tp!343247 () Bool)

(assert (=> b!1211753 (= e!777466 tp!343247)))

(assert (=> b!1211552 (= tp!343152 e!777466)))

(assert (= (and b!1211552 ((_ is ElementMatch!3373) (regex!2103 (h!17669 rules!2728)))) b!1211751))

(assert (= (and b!1211552 ((_ is Concat!5545) (regex!2103 (h!17669 rules!2728)))) b!1211752))

(assert (= (and b!1211552 ((_ is Star!3373) (regex!2103 (h!17669 rules!2728)))) b!1211753))

(assert (= (and b!1211552 ((_ is Union!3373) (regex!2103 (h!17669 rules!2728)))) b!1211754))

(declare-fun b!1211756 () Bool)

(declare-fun e!777467 () Bool)

(declare-fun tp!343250 () Bool)

(declare-fun tp!343251 () Bool)

(assert (=> b!1211756 (= e!777467 (and tp!343250 tp!343251))))

(declare-fun b!1211758 () Bool)

(declare-fun tp!343249 () Bool)

(declare-fun tp!343253 () Bool)

(assert (=> b!1211758 (= e!777467 (and tp!343249 tp!343253))))

(declare-fun b!1211755 () Bool)

(assert (=> b!1211755 (= e!777467 tp_is_empty!6267)))

(declare-fun b!1211757 () Bool)

(declare-fun tp!343252 () Bool)

(assert (=> b!1211757 (= e!777467 tp!343252)))

(assert (=> b!1211559 (= tp!343155 e!777467)))

(assert (= (and b!1211559 ((_ is ElementMatch!3373) (regex!2103 (rule!3524 (h!17670 tokens!556))))) b!1211755))

(assert (= (and b!1211559 ((_ is Concat!5545) (regex!2103 (rule!3524 (h!17670 tokens!556))))) b!1211756))

(assert (= (and b!1211559 ((_ is Star!3373) (regex!2103 (rule!3524 (h!17670 tokens!556))))) b!1211757))

(assert (= (and b!1211559 ((_ is Union!3373) (regex!2103 (rule!3524 (h!17670 tokens!556))))) b!1211758))

(declare-fun b!1211772 () Bool)

(declare-fun b_free!28845 () Bool)

(declare-fun b_next!29549 () Bool)

(assert (=> b!1211772 (= b_free!28845 (not b_next!29549))))

(declare-fun tp!343268 () Bool)

(declare-fun b_and!82053 () Bool)

(assert (=> b!1211772 (= tp!343268 b_and!82053)))

(declare-fun b_free!28847 () Bool)

(declare-fun b_next!29551 () Bool)

(assert (=> b!1211772 (= b_free!28847 (not b_next!29551))))

(declare-fun t!112728 () Bool)

(declare-fun tb!66487 () Bool)

(assert (=> (and b!1211772 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) t!112728) tb!66487))

(declare-fun result!80406 () Bool)

(assert (= result!80406 result!80390))

(assert (=> b!1211718 t!112728))

(declare-fun tp!343265 () Bool)

(declare-fun b_and!82055 () Bool)

(assert (=> b!1211772 (= tp!343265 (and (=> t!112728 result!80406) b_and!82055))))

(declare-fun e!777485 () Bool)

(declare-fun b!1211771 () Bool)

(declare-fun e!777480 () Bool)

(declare-fun tp!343266 () Bool)

(assert (=> b!1211771 (= e!777485 (and tp!343266 (inv!16447 (tag!2365 (rule!3524 (h!17670 (t!112711 tokens!556))))) (inv!16450 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) e!777480))))

(declare-fun e!777481 () Bool)

(declare-fun b!1211770 () Bool)

(declare-fun tp!343267 () Bool)

(assert (=> b!1211770 (= e!777481 (and (inv!21 (value!68532 (h!17670 (t!112711 tokens!556)))) e!777485 tp!343267))))

(declare-fun e!777483 () Bool)

(assert (=> b!1211554 (= tp!343157 e!777483)))

(assert (=> b!1211772 (= e!777480 (and tp!343268 tp!343265))))

(declare-fun b!1211769 () Bool)

(declare-fun tp!343264 () Bool)

(assert (=> b!1211769 (= e!777483 (and (inv!16451 (h!17670 (t!112711 tokens!556))) e!777481 tp!343264))))

(assert (= b!1211771 b!1211772))

(assert (= b!1211770 b!1211771))

(assert (= b!1211769 b!1211770))

(assert (= (and b!1211554 ((_ is Cons!12269) (t!112711 tokens!556))) b!1211769))

(declare-fun m!1387255 () Bool)

(assert (=> b!1211771 m!1387255))

(declare-fun m!1387257 () Bool)

(assert (=> b!1211771 m!1387257))

(declare-fun m!1387259 () Bool)

(assert (=> b!1211770 m!1387259))

(declare-fun m!1387261 () Bool)

(assert (=> b!1211769 m!1387261))

(declare-fun b!1211773 () Bool)

(declare-fun e!777486 () Bool)

(declare-fun tp!343269 () Bool)

(assert (=> b!1211773 (= e!777486 (and tp_is_empty!6267 tp!343269))))

(assert (=> b!1211555 (= tp!343161 e!777486)))

(assert (= (and b!1211555 ((_ is Cons!12267) (t!112709 input!2346))) b!1211773))

(declare-fun b_lambda!35749 () Bool)

(assert (= b_lambda!35747 (or (and b!1211560 b_free!28827) (and b!1211553 b_free!28831 (= (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))))) (and b!1211735 b_free!28843 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 rules!2728)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))))) (and b!1211772 b_free!28847 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))))) b_lambda!35749)))

(check-sat (not b_next!29529) (not b_next!29531) (not b!1211753) b_and!82045 (not b!1211674) (not b!1211756) b_and!82029 b_and!82055 b_and!82049 b_and!82025 (not b!1211706) (not b_next!29549) b_and!82053 (not b!1211752) (not b_next!29547) (not b!1211719) (not b!1211758) (not b!1211690) (not b!1211687) (not b!1211757) (not b!1211769) (not b!1211718) (not b!1211733) tp_is_empty!6267 (not b!1211734) (not b!1211713) (not b!1211773) (not b_lambda!35749) (not b!1211771) (not b!1211691) (not b!1211694) (not b_next!29535) (not d!346580) (not d!346542) (not tb!66481) b_and!82051 (not d!346574) b_and!82047 (not b!1211712) (not b!1211673) (not d!346564) (not b!1211770) (not b_next!29533) (not d!346578) (not b_next!29551) (not b!1211740) (not b!1211724) (not d!346566) (not b_next!29545) (not b!1211705) (not b!1211754) (not b!1211709))
(check-sat (not b_next!29549) b_and!82053 (not b_next!29547) (not b_next!29529) (not b_next!29531) (not b_next!29535) b_and!82051 b_and!82045 (not b_next!29551) (not b_next!29545) b_and!82029 b_and!82055 b_and!82049 b_and!82025 b_and!82047 (not b_next!29533))
(get-model)

(declare-fun d!346608 () Bool)

(declare-fun res!545015 () Bool)

(declare-fun e!777509 () Bool)

(assert (=> d!346608 (=> (not res!545015) (not e!777509))))

(declare-fun validRegex!1445 (Regex!3373) Bool)

(assert (=> d!346608 (= res!545015 (validRegex!1445 (regex!2103 (h!17669 rules!2728))))))

(assert (=> d!346608 (= (ruleValid!523 thiss!20528 (h!17669 rules!2728)) e!777509)))

(declare-fun b!1211807 () Bool)

(declare-fun res!545016 () Bool)

(assert (=> b!1211807 (=> (not res!545016) (not e!777509))))

(declare-fun nullable!1048 (Regex!3373) Bool)

(assert (=> b!1211807 (= res!545016 (not (nullable!1048 (regex!2103 (h!17669 rules!2728)))))))

(declare-fun b!1211808 () Bool)

(assert (=> b!1211808 (= e!777509 (not (= (tag!2365 (h!17669 rules!2728)) (String!14988 ""))))))

(assert (= (and d!346608 res!545015) b!1211807))

(assert (= (and b!1211807 res!545016) b!1211808))

(declare-fun m!1387309 () Bool)

(assert (=> d!346608 m!1387309))

(declare-fun m!1387311 () Bool)

(assert (=> b!1211807 m!1387311))

(assert (=> b!1211673 d!346608))

(declare-fun d!346614 () Bool)

(assert (=> d!346614 true))

(declare-fun order!7507 () Int)

(declare-fun order!7509 () Int)

(declare-fun lambda!49060 () Int)

(declare-fun dynLambda!5387 (Int Int) Int)

(declare-fun dynLambda!5388 (Int Int) Int)

(assert (=> d!346614 (< (dynLambda!5387 order!7507 (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) (dynLambda!5388 order!7509 lambda!49060))))

(declare-fun Forall2!360 (Int) Bool)

(assert (=> d!346614 (= (equivClasses!733 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) (Forall2!360 lambda!49060))))

(declare-fun bs!288656 () Bool)

(assert (= bs!288656 d!346614))

(declare-fun m!1387315 () Bool)

(assert (=> bs!288656 m!1387315))

(assert (=> b!1211713 d!346614))

(declare-fun d!346618 () Bool)

(assert (=> d!346618 (= (inv!16447 (tag!2365 (h!17669 (t!112710 rules!2728)))) (= (mod (str.len (value!68531 (tag!2365 (h!17669 (t!112710 rules!2728))))) 2) 0))))

(assert (=> b!1211734 d!346618))

(declare-fun d!346620 () Bool)

(declare-fun res!545019 () Bool)

(declare-fun e!777515 () Bool)

(assert (=> d!346620 (=> (not res!545019) (not e!777515))))

(assert (=> d!346620 (= res!545019 (semiInverseModEq!766 (toChars!3079 (transformation!2103 (h!17669 (t!112710 rules!2728)))) (toValue!3220 (transformation!2103 (h!17669 (t!112710 rules!2728))))))))

(assert (=> d!346620 (= (inv!16450 (transformation!2103 (h!17669 (t!112710 rules!2728)))) e!777515)))

(declare-fun b!1211819 () Bool)

(assert (=> b!1211819 (= e!777515 (equivClasses!733 (toChars!3079 (transformation!2103 (h!17669 (t!112710 rules!2728)))) (toValue!3220 (transformation!2103 (h!17669 (t!112710 rules!2728))))))))

(assert (= (and d!346620 res!545019) b!1211819))

(declare-fun m!1387317 () Bool)

(assert (=> d!346620 m!1387317))

(declare-fun m!1387319 () Bool)

(assert (=> b!1211819 m!1387319))

(assert (=> b!1211734 d!346620))

(declare-fun bs!288657 () Bool)

(declare-fun d!346622 () Bool)

(assert (= bs!288657 (and d!346622 d!346542)))

(declare-fun lambda!49061 () Int)

(assert (=> bs!288657 (= lambda!49061 lambda!49050)))

(assert (=> d!346622 true))

(declare-fun lt!414637 () Bool)

(assert (=> d!346622 (= lt!414637 (forall!3169 (t!112710 rules!2728) lambda!49061))))

(declare-fun e!777517 () Bool)

(assert (=> d!346622 (= lt!414637 e!777517)))

(declare-fun res!545020 () Bool)

(assert (=> d!346622 (=> res!545020 e!777517)))

(assert (=> d!346622 (= res!545020 (not ((_ is Cons!12268) (t!112710 rules!2728))))))

(assert (=> d!346622 (= (rulesValidInductive!653 thiss!20528 (t!112710 rules!2728)) lt!414637)))

(declare-fun b!1211820 () Bool)

(declare-fun e!777516 () Bool)

(assert (=> b!1211820 (= e!777517 e!777516)))

(declare-fun res!545021 () Bool)

(assert (=> b!1211820 (=> (not res!545021) (not e!777516))))

(assert (=> b!1211820 (= res!545021 (ruleValid!523 thiss!20528 (h!17669 (t!112710 rules!2728))))))

(declare-fun b!1211821 () Bool)

(assert (=> b!1211821 (= e!777516 (rulesValidInductive!653 thiss!20528 (t!112710 (t!112710 rules!2728))))))

(assert (= (and d!346622 (not res!545020)) b!1211820))

(assert (= (and b!1211820 res!545021) b!1211821))

(declare-fun m!1387321 () Bool)

(assert (=> d!346622 m!1387321))

(declare-fun m!1387323 () Bool)

(assert (=> b!1211820 m!1387323))

(declare-fun m!1387325 () Bool)

(assert (=> b!1211821 m!1387325))

(assert (=> b!1211674 d!346622))

(declare-fun d!346624 () Bool)

(declare-fun charsToInt!0 (List!12324) (_ BitVec 32))

(assert (=> d!346624 (= (inv!16 (value!68532 (h!17670 tokens!556))) (= (charsToInt!0 (text!15644 (value!68532 (h!17670 tokens!556)))) (value!68523 (value!68532 (h!17670 tokens!556)))))))

(declare-fun bs!288658 () Bool)

(assert (= bs!288658 d!346624))

(declare-fun m!1387327 () Bool)

(assert (=> bs!288658 m!1387327))

(assert (=> b!1211709 d!346624))

(declare-fun d!346626 () Bool)

(declare-fun list!4542 (Conc!4028) List!12325)

(assert (=> d!346626 (= (list!4541 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))) (list!4542 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))))))

(declare-fun bs!288659 () Bool)

(assert (= bs!288659 d!346626))

(declare-fun m!1387329 () Bool)

(assert (=> bs!288659 m!1387329))

(assert (=> b!1211718 d!346626))

(declare-fun d!346628 () Bool)

(declare-fun res!545026 () Bool)

(declare-fun e!777522 () Bool)

(assert (=> d!346628 (=> res!545026 e!777522)))

(assert (=> d!346628 (= res!545026 ((_ is Nil!12268) rules!2728))))

(assert (=> d!346628 (= (noDuplicateTag!754 thiss!20528 rules!2728 Nil!12271) e!777522)))

(declare-fun b!1211826 () Bool)

(declare-fun e!777523 () Bool)

(assert (=> b!1211826 (= e!777522 e!777523)))

(declare-fun res!545027 () Bool)

(assert (=> b!1211826 (=> (not res!545027) (not e!777523))))

(declare-fun contains!2064 (List!12329 String!14987) Bool)

(assert (=> b!1211826 (= res!545027 (not (contains!2064 Nil!12271 (tag!2365 (h!17669 rules!2728)))))))

(declare-fun b!1211827 () Bool)

(assert (=> b!1211827 (= e!777523 (noDuplicateTag!754 thiss!20528 (t!112710 rules!2728) (Cons!12271 (tag!2365 (h!17669 rules!2728)) Nil!12271)))))

(assert (= (and d!346628 (not res!545026)) b!1211826))

(assert (= (and b!1211826 res!545027) b!1211827))

(declare-fun m!1387331 () Bool)

(assert (=> b!1211826 m!1387331))

(declare-fun m!1387333 () Bool)

(assert (=> b!1211827 m!1387333))

(assert (=> b!1211694 d!346628))

(declare-fun d!346630 () Bool)

(declare-fun charsToBigInt!0 (List!12324 Int) Int)

(assert (=> d!346630 (= (inv!15 (value!68532 (h!17670 tokens!556))) (= (charsToBigInt!0 (text!15646 (value!68532 (h!17670 tokens!556))) 0) (value!68527 (value!68532 (h!17670 tokens!556)))))))

(declare-fun bs!288660 () Bool)

(assert (= bs!288660 d!346630))

(declare-fun m!1387335 () Bool)

(assert (=> bs!288660 m!1387335))

(assert (=> b!1211705 d!346630))

(declare-fun d!346632 () Bool)

(assert (=> d!346632 true))

(declare-fun order!7511 () Int)

(declare-fun lambda!49064 () Int)

(declare-fun order!7513 () Int)

(declare-fun dynLambda!5390 (Int Int) Int)

(declare-fun dynLambda!5391 (Int Int) Int)

(assert (=> d!346632 (< (dynLambda!5390 order!7511 (toChars!3079 (transformation!2103 (h!17669 rules!2728)))) (dynLambda!5391 order!7513 lambda!49064))))

(assert (=> d!346632 true))

(assert (=> d!346632 (< (dynLambda!5387 order!7507 (toValue!3220 (transformation!2103 (h!17669 rules!2728)))) (dynLambda!5391 order!7513 lambda!49064))))

(declare-fun Forall!450 (Int) Bool)

(assert (=> d!346632 (= (semiInverseModEq!766 (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toValue!3220 (transformation!2103 (h!17669 rules!2728)))) (Forall!450 lambda!49064))))

(declare-fun bs!288661 () Bool)

(assert (= bs!288661 d!346632))

(declare-fun m!1387337 () Bool)

(assert (=> bs!288661 m!1387337))

(assert (=> d!346574 d!346632))

(declare-fun d!346634 () Bool)

(declare-fun lt!414640 () Int)

(assert (=> d!346634 (>= lt!414640 0)))

(declare-fun e!777526 () Int)

(assert (=> d!346634 (= lt!414640 e!777526)))

(declare-fun c!202945 () Bool)

(assert (=> d!346634 (= c!202945 ((_ is Nil!12269) (_1!6918 lt!414632)))))

(assert (=> d!346634 (= (size!9763 (_1!6918 lt!414632)) lt!414640)))

(declare-fun b!1211836 () Bool)

(assert (=> b!1211836 (= e!777526 0)))

(declare-fun b!1211837 () Bool)

(assert (=> b!1211837 (= e!777526 (+ 1 (size!9763 (t!112711 (_1!6918 lt!414632)))))))

(assert (= (and d!346634 c!202945) b!1211836))

(assert (= (and d!346634 (not c!202945)) b!1211837))

(declare-fun m!1387339 () Bool)

(assert (=> b!1211837 m!1387339))

(assert (=> d!346564 d!346634))

(declare-fun b!1211928 () Bool)

(declare-fun res!545078 () Bool)

(declare-fun e!777572 () Bool)

(assert (=> b!1211928 (=> (not res!545078) (not e!777572))))

(declare-fun lt!414679 () Option!2467)

(declare-fun get!4040 (Option!2467) tuple2!12146)

(assert (=> b!1211928 (= res!545078 (< (size!9762 (_2!6920 (get!4040 lt!414679))) (size!9762 input!2346)))))

(declare-fun b!1211929 () Bool)

(declare-fun res!545080 () Bool)

(assert (=> b!1211929 (=> (not res!545080) (not e!777572))))

(declare-fun charsOf!1115 (Token!3868) BalanceConc!7988)

(assert (=> b!1211929 (= res!545080 (= (list!4541 (charsOf!1115 (_1!6920 (get!4040 lt!414679)))) (originalCharacters!2657 (_1!6920 (get!4040 lt!414679)))))))

(declare-fun b!1211930 () Bool)

(declare-fun res!545076 () Bool)

(assert (=> b!1211930 (=> (not res!545076) (not e!777572))))

(declare-fun matchR!1501 (Regex!3373 List!12325) Bool)

(assert (=> b!1211930 (= res!545076 (matchR!1501 (regex!2103 (rule!3524 (_1!6920 (get!4040 lt!414679)))) (list!4541 (charsOf!1115 (_1!6920 (get!4040 lt!414679))))))))

(declare-fun d!346636 () Bool)

(declare-fun e!777570 () Bool)

(assert (=> d!346636 e!777570))

(declare-fun res!545077 () Bool)

(assert (=> d!346636 (=> res!545077 e!777570)))

(declare-fun isEmpty!7317 (Option!2467) Bool)

(assert (=> d!346636 (= res!545077 (isEmpty!7317 lt!414679))))

(declare-fun e!777571 () Option!2467)

(assert (=> d!346636 (= lt!414679 e!777571)))

(declare-fun c!202961 () Bool)

(assert (=> d!346636 (= c!202961 (and ((_ is Cons!12268) rules!2728) ((_ is Nil!12268) (t!112710 rules!2728))))))

(declare-datatypes ((Unit!18614 0))(
  ( (Unit!18615) )
))
(declare-fun lt!414681 () Unit!18614)

(declare-fun lt!414682 () Unit!18614)

(assert (=> d!346636 (= lt!414681 lt!414682)))

(declare-fun isPrefix!1021 (List!12325 List!12325) Bool)

(assert (=> d!346636 (isPrefix!1021 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!714 (List!12325 List!12325) Unit!18614)

(assert (=> d!346636 (= lt!414682 (lemmaIsPrefixRefl!714 input!2346 input!2346))))

(assert (=> d!346636 (rulesValidInductive!653 thiss!20528 rules!2728)))

(assert (=> d!346636 (= (maxPrefix!922 thiss!20528 rules!2728 input!2346) lt!414679)))

(declare-fun b!1211931 () Bool)

(declare-fun res!545082 () Bool)

(assert (=> b!1211931 (=> (not res!545082) (not e!777572))))

(declare-fun apply!2639 (TokenValueInjection!4038 BalanceConc!7988) TokenValue!2171)

(declare-fun seqFromList!1540 (List!12325) BalanceConc!7988)

(assert (=> b!1211931 (= res!545082 (= (value!68532 (_1!6920 (get!4040 lt!414679))) (apply!2639 (transformation!2103 (rule!3524 (_1!6920 (get!4040 lt!414679)))) (seqFromList!1540 (originalCharacters!2657 (_1!6920 (get!4040 lt!414679)))))))))

(declare-fun bm!84480 () Bool)

(declare-fun call!84485 () Option!2467)

(declare-fun maxPrefixOneRule!540 (LexerInterface!1798 Rule!4006 List!12325) Option!2467)

(assert (=> bm!84480 (= call!84485 (maxPrefixOneRule!540 thiss!20528 (h!17669 rules!2728) input!2346))))

(declare-fun b!1211932 () Bool)

(assert (=> b!1211932 (= e!777571 call!84485)))

(declare-fun b!1211933 () Bool)

(declare-fun res!545079 () Bool)

(assert (=> b!1211933 (=> (not res!545079) (not e!777572))))

(declare-fun ++!3147 (List!12325 List!12325) List!12325)

(assert (=> b!1211933 (= res!545079 (= (++!3147 (list!4541 (charsOf!1115 (_1!6920 (get!4040 lt!414679)))) (_2!6920 (get!4040 lt!414679))) input!2346))))

(declare-fun b!1211934 () Bool)

(assert (=> b!1211934 (= e!777570 e!777572)))

(declare-fun res!545081 () Bool)

(assert (=> b!1211934 (=> (not res!545081) (not e!777572))))

(declare-fun isDefined!2107 (Option!2467) Bool)

(assert (=> b!1211934 (= res!545081 (isDefined!2107 lt!414679))))

(declare-fun b!1211935 () Bool)

(declare-fun lt!414680 () Option!2467)

(declare-fun lt!414678 () Option!2467)

(assert (=> b!1211935 (= e!777571 (ite (and ((_ is None!2466) lt!414680) ((_ is None!2466) lt!414678)) None!2466 (ite ((_ is None!2466) lt!414678) lt!414680 (ite ((_ is None!2466) lt!414680) lt!414678 (ite (>= (size!9759 (_1!6920 (v!20593 lt!414680))) (size!9759 (_1!6920 (v!20593 lt!414678)))) lt!414680 lt!414678)))))))

(assert (=> b!1211935 (= lt!414680 call!84485)))

(assert (=> b!1211935 (= lt!414678 (maxPrefix!922 thiss!20528 (t!112710 rules!2728) input!2346))))

(declare-fun b!1211936 () Bool)

(declare-fun contains!2066 (List!12326 Rule!4006) Bool)

(assert (=> b!1211936 (= e!777572 (contains!2066 rules!2728 (rule!3524 (_1!6920 (get!4040 lt!414679)))))))

(assert (= (and d!346636 c!202961) b!1211932))

(assert (= (and d!346636 (not c!202961)) b!1211935))

(assert (= (or b!1211932 b!1211935) bm!84480))

(assert (= (and d!346636 (not res!545077)) b!1211934))

(assert (= (and b!1211934 res!545081) b!1211929))

(assert (= (and b!1211929 res!545080) b!1211928))

(assert (= (and b!1211928 res!545078) b!1211933))

(assert (= (and b!1211933 res!545079) b!1211931))

(assert (= (and b!1211931 res!545082) b!1211930))

(assert (= (and b!1211930 res!545076) b!1211936))

(declare-fun m!1387423 () Bool)

(assert (=> b!1211936 m!1387423))

(declare-fun m!1387425 () Bool)

(assert (=> b!1211936 m!1387425))

(assert (=> b!1211930 m!1387423))

(declare-fun m!1387427 () Bool)

(assert (=> b!1211930 m!1387427))

(assert (=> b!1211930 m!1387427))

(declare-fun m!1387429 () Bool)

(assert (=> b!1211930 m!1387429))

(assert (=> b!1211930 m!1387429))

(declare-fun m!1387431 () Bool)

(assert (=> b!1211930 m!1387431))

(declare-fun m!1387433 () Bool)

(assert (=> bm!84480 m!1387433))

(declare-fun m!1387435 () Bool)

(assert (=> b!1211934 m!1387435))

(assert (=> b!1211928 m!1387423))

(declare-fun m!1387437 () Bool)

(assert (=> b!1211928 m!1387437))

(assert (=> b!1211928 m!1387211))

(assert (=> b!1211931 m!1387423))

(declare-fun m!1387439 () Bool)

(assert (=> b!1211931 m!1387439))

(assert (=> b!1211931 m!1387439))

(declare-fun m!1387441 () Bool)

(assert (=> b!1211931 m!1387441))

(assert (=> b!1211933 m!1387423))

(assert (=> b!1211933 m!1387427))

(assert (=> b!1211933 m!1387427))

(assert (=> b!1211933 m!1387429))

(assert (=> b!1211933 m!1387429))

(declare-fun m!1387443 () Bool)

(assert (=> b!1211933 m!1387443))

(declare-fun m!1387445 () Bool)

(assert (=> d!346636 m!1387445))

(declare-fun m!1387447 () Bool)

(assert (=> d!346636 m!1387447))

(declare-fun m!1387449 () Bool)

(assert (=> d!346636 m!1387449))

(assert (=> d!346636 m!1387133))

(assert (=> b!1211929 m!1387423))

(assert (=> b!1211929 m!1387427))

(assert (=> b!1211929 m!1387427))

(assert (=> b!1211929 m!1387429))

(declare-fun m!1387451 () Bool)

(assert (=> b!1211935 m!1387451))

(assert (=> d!346564 d!346636))

(declare-fun d!346664 () Bool)

(declare-fun charsToBigInt!1 (List!12324) Int)

(assert (=> d!346664 (= (inv!17 (value!68532 (h!17670 tokens!556))) (= (charsToBigInt!1 (text!15645 (value!68532 (h!17670 tokens!556)))) (value!68524 (value!68532 (h!17670 tokens!556)))))))

(declare-fun bs!288668 () Bool)

(assert (= bs!288668 d!346664))

(declare-fun m!1387453 () Bool)

(assert (=> bs!288668 m!1387453))

(assert (=> b!1211706 d!346664))

(declare-fun b!1211983 () Bool)

(declare-fun e!777593 () Bool)

(assert (=> b!1211983 (= e!777593 (inv!15 (value!68532 (h!17670 (t!112711 tokens!556)))))))

(declare-fun b!1211984 () Bool)

(declare-fun e!777592 () Bool)

(assert (=> b!1211984 (= e!777592 (inv!17 (value!68532 (h!17670 (t!112711 tokens!556)))))))

(declare-fun d!346666 () Bool)

(declare-fun c!202963 () Bool)

(assert (=> d!346666 (= c!202963 ((_ is IntegerValue!6513) (value!68532 (h!17670 (t!112711 tokens!556)))))))

(declare-fun e!777594 () Bool)

(assert (=> d!346666 (= (inv!21 (value!68532 (h!17670 (t!112711 tokens!556)))) e!777594)))

(declare-fun b!1211985 () Bool)

(assert (=> b!1211985 (= e!777594 e!777592)))

(declare-fun c!202962 () Bool)

(assert (=> b!1211985 (= c!202962 ((_ is IntegerValue!6514) (value!68532 (h!17670 (t!112711 tokens!556)))))))

(declare-fun b!1211986 () Bool)

(declare-fun res!545083 () Bool)

(assert (=> b!1211986 (=> res!545083 e!777593)))

(assert (=> b!1211986 (= res!545083 (not ((_ is IntegerValue!6515) (value!68532 (h!17670 (t!112711 tokens!556))))))))

(assert (=> b!1211986 (= e!777592 e!777593)))

(declare-fun b!1211987 () Bool)

(assert (=> b!1211987 (= e!777594 (inv!16 (value!68532 (h!17670 (t!112711 tokens!556)))))))

(assert (= (and d!346666 c!202963) b!1211987))

(assert (= (and d!346666 (not c!202963)) b!1211985))

(assert (= (and b!1211985 c!202962) b!1211984))

(assert (= (and b!1211985 (not c!202962)) b!1211986))

(assert (= (and b!1211986 (not res!545083)) b!1211983))

(declare-fun m!1387455 () Bool)

(assert (=> b!1211983 m!1387455))

(declare-fun m!1387457 () Bool)

(assert (=> b!1211984 m!1387457))

(declare-fun m!1387459 () Bool)

(assert (=> b!1211987 m!1387459))

(assert (=> b!1211770 d!346666))

(declare-fun d!346668 () Bool)

(assert (=> d!346668 (= (isEmpty!7315 (originalCharacters!2657 (h!17670 tokens!556))) ((_ is Nil!12267) (originalCharacters!2657 (h!17670 tokens!556))))))

(assert (=> d!346580 d!346668))

(declare-fun d!346670 () Bool)

(assert (=> d!346670 (= (inv!16447 (tag!2365 (rule!3524 (h!17670 (t!112711 tokens!556))))) (= (mod (str.len (value!68531 (tag!2365 (rule!3524 (h!17670 (t!112711 tokens!556)))))) 2) 0))))

(assert (=> b!1211771 d!346670))

(declare-fun d!346672 () Bool)

(declare-fun res!545084 () Bool)

(declare-fun e!777599 () Bool)

(assert (=> d!346672 (=> (not res!545084) (not e!777599))))

(assert (=> d!346672 (= res!545084 (semiInverseModEq!766 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))))))

(assert (=> d!346672 (= (inv!16450 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) e!777599)))

(declare-fun b!1211999 () Bool)

(assert (=> b!1211999 (= e!777599 (equivClasses!733 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))))))

(assert (= (and d!346672 res!545084) b!1211999))

(declare-fun m!1387467 () Bool)

(assert (=> d!346672 m!1387467))

(declare-fun m!1387469 () Bool)

(assert (=> b!1211999 m!1387469))

(assert (=> b!1211771 d!346672))

(declare-fun d!346676 () Bool)

(declare-fun lt!414685 () Int)

(assert (=> d!346676 (>= lt!414685 0)))

(declare-fun e!777602 () Int)

(assert (=> d!346676 (= lt!414685 e!777602)))

(declare-fun c!202966 () Bool)

(assert (=> d!346676 (= c!202966 ((_ is Nil!12267) (originalCharacters!2657 (h!17670 tokens!556))))))

(assert (=> d!346676 (= (size!9762 (originalCharacters!2657 (h!17670 tokens!556))) lt!414685)))

(declare-fun b!1212004 () Bool)

(assert (=> b!1212004 (= e!777602 0)))

(declare-fun b!1212005 () Bool)

(assert (=> b!1212005 (= e!777602 (+ 1 (size!9762 (t!112709 (originalCharacters!2657 (h!17670 tokens!556))))))))

(assert (= (and d!346676 c!202966) b!1212004))

(assert (= (and d!346676 (not c!202966)) b!1212005))

(declare-fun m!1387471 () Bool)

(assert (=> b!1212005 m!1387471))

(assert (=> b!1211719 d!346676))

(declare-fun d!346678 () Bool)

(declare-fun c!202969 () Bool)

(assert (=> d!346678 (= c!202969 ((_ is Node!4028) (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))))))

(declare-fun e!777607 () Bool)

(assert (=> d!346678 (= (inv!16454 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))) e!777607)))

(declare-fun b!1212012 () Bool)

(declare-fun inv!16456 (Conc!4028) Bool)

(assert (=> b!1212012 (= e!777607 (inv!16456 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))))))

(declare-fun b!1212013 () Bool)

(declare-fun e!777608 () Bool)

(assert (=> b!1212013 (= e!777607 e!777608)))

(declare-fun res!545087 () Bool)

(assert (=> b!1212013 (= res!545087 (not ((_ is Leaf!6228) (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))))))))

(assert (=> b!1212013 (=> res!545087 e!777608)))

(declare-fun b!1212014 () Bool)

(declare-fun inv!16457 (Conc!4028) Bool)

(assert (=> b!1212014 (= e!777608 (inv!16457 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))))))

(assert (= (and d!346678 c!202969) b!1212012))

(assert (= (and d!346678 (not c!202969)) b!1212013))

(assert (= (and b!1212013 (not res!545087)) b!1212014))

(declare-fun m!1387473 () Bool)

(assert (=> b!1212012 m!1387473))

(declare-fun m!1387475 () Bool)

(assert (=> b!1212014 m!1387475))

(assert (=> b!1211724 d!346678))

(declare-fun d!346680 () Bool)

(declare-fun res!545088 () Bool)

(declare-fun e!777609 () Bool)

(assert (=> d!346680 (=> (not res!545088) (not e!777609))))

(assert (=> d!346680 (= res!545088 (not (isEmpty!7315 (originalCharacters!2657 (h!17670 (t!112711 tokens!556))))))))

(assert (=> d!346680 (= (inv!16451 (h!17670 (t!112711 tokens!556))) e!777609)))

(declare-fun b!1212015 () Bool)

(declare-fun res!545089 () Bool)

(assert (=> b!1212015 (=> (not res!545089) (not e!777609))))

(assert (=> b!1212015 (= res!545089 (= (originalCharacters!2657 (h!17670 (t!112711 tokens!556))) (list!4541 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (value!68532 (h!17670 (t!112711 tokens!556)))))))))

(declare-fun b!1212016 () Bool)

(assert (=> b!1212016 (= e!777609 (= (size!9759 (h!17670 (t!112711 tokens!556))) (size!9762 (originalCharacters!2657 (h!17670 (t!112711 tokens!556))))))))

(assert (= (and d!346680 res!545088) b!1212015))

(assert (= (and b!1212015 res!545089) b!1212016))

(declare-fun b_lambda!35759 () Bool)

(assert (=> (not b_lambda!35759) (not b!1212015)))

(declare-fun t!112747 () Bool)

(declare-fun tb!66505 () Bool)

(assert (=> (and b!1211560 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) t!112747) tb!66505))

(declare-fun b!1212017 () Bool)

(declare-fun e!777610 () Bool)

(declare-fun tp!343352 () Bool)

(assert (=> b!1212017 (= e!777610 (and (inv!16454 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (value!68532 (h!17670 (t!112711 tokens!556)))))) tp!343352))))

(declare-fun result!80426 () Bool)

(assert (=> tb!66505 (= result!80426 (and (inv!16455 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (value!68532 (h!17670 (t!112711 tokens!556))))) e!777610))))

(assert (= tb!66505 b!1212017))

(declare-fun m!1387477 () Bool)

(assert (=> b!1212017 m!1387477))

(declare-fun m!1387479 () Bool)

(assert (=> tb!66505 m!1387479))

(assert (=> b!1212015 t!112747))

(declare-fun b_and!82073 () Bool)

(assert (= b_and!82045 (and (=> t!112747 result!80426) b_and!82073)))

(declare-fun t!112749 () Bool)

(declare-fun tb!66507 () Bool)

(assert (=> (and b!1211553 (= (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) t!112749) tb!66507))

(declare-fun result!80428 () Bool)

(assert (= result!80428 result!80426))

(assert (=> b!1212015 t!112749))

(declare-fun b_and!82075 () Bool)

(assert (= b_and!82047 (and (=> t!112749 result!80428) b_and!82075)))

(declare-fun t!112751 () Bool)

(declare-fun tb!66509 () Bool)

(assert (=> (and b!1211735 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 rules!2728)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) t!112751) tb!66509))

(declare-fun result!80430 () Bool)

(assert (= result!80430 result!80426))

(assert (=> b!1212015 t!112751))

(declare-fun b_and!82077 () Bool)

(assert (= b_and!82051 (and (=> t!112751 result!80430) b_and!82077)))

(declare-fun t!112753 () Bool)

(declare-fun tb!66511 () Bool)

(assert (=> (and b!1211772 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) t!112753) tb!66511))

(declare-fun result!80432 () Bool)

(assert (= result!80432 result!80426))

(assert (=> b!1212015 t!112753))

(declare-fun b_and!82079 () Bool)

(assert (= b_and!82055 (and (=> t!112753 result!80432) b_and!82079)))

(declare-fun m!1387481 () Bool)

(assert (=> d!346680 m!1387481))

(declare-fun m!1387483 () Bool)

(assert (=> b!1212015 m!1387483))

(assert (=> b!1212015 m!1387483))

(declare-fun m!1387485 () Bool)

(assert (=> b!1212015 m!1387485))

(declare-fun m!1387487 () Bool)

(assert (=> b!1212016 m!1387487))

(assert (=> b!1211769 d!346680))

(declare-fun bs!288670 () Bool)

(declare-fun d!346682 () Bool)

(assert (= bs!288670 (and d!346682 d!346542)))

(declare-fun lambda!49072 () Int)

(assert (=> bs!288670 (= lambda!49072 lambda!49050)))

(declare-fun bs!288671 () Bool)

(assert (= bs!288671 (and d!346682 d!346622)))

(assert (=> bs!288671 (= lambda!49072 lambda!49061)))

(assert (=> d!346682 true))

(declare-fun lt!414688 () Bool)

(assert (=> d!346682 (= lt!414688 (rulesValidInductive!653 thiss!20528 rules!2728))))

(assert (=> d!346682 (= lt!414688 (forall!3169 rules!2728 lambda!49072))))

(assert (=> d!346682 (= (rulesValid!754 thiss!20528 rules!2728) lt!414688)))

(declare-fun bs!288672 () Bool)

(assert (= bs!288672 d!346682))

(assert (=> bs!288672 m!1387133))

(declare-fun m!1387489 () Bool)

(assert (=> bs!288672 m!1387489))

(assert (=> d!346566 d!346682))

(declare-fun d!346684 () Bool)

(declare-fun res!545094 () Bool)

(declare-fun e!777615 () Bool)

(assert (=> d!346684 (=> res!545094 e!777615)))

(assert (=> d!346684 (= res!545094 ((_ is Nil!12268) rules!2728))))

(assert (=> d!346684 (= (forall!3169 rules!2728 lambda!49050) e!777615)))

(declare-fun b!1212022 () Bool)

(declare-fun e!777616 () Bool)

(assert (=> b!1212022 (= e!777615 e!777616)))

(declare-fun res!545095 () Bool)

(assert (=> b!1212022 (=> (not res!545095) (not e!777616))))

(declare-fun dynLambda!5392 (Int Rule!4006) Bool)

(assert (=> b!1212022 (= res!545095 (dynLambda!5392 lambda!49050 (h!17669 rules!2728)))))

(declare-fun b!1212023 () Bool)

(assert (=> b!1212023 (= e!777616 (forall!3169 (t!112710 rules!2728) lambda!49050))))

(assert (= (and d!346684 (not res!545094)) b!1212022))

(assert (= (and b!1212022 res!545095) b!1212023))

(declare-fun b_lambda!35761 () Bool)

(assert (=> (not b_lambda!35761) (not b!1212022)))

(declare-fun m!1387491 () Bool)

(assert (=> b!1212022 m!1387491))

(declare-fun m!1387493 () Bool)

(assert (=> b!1212023 m!1387493))

(assert (=> d!346542 d!346684))

(declare-fun d!346686 () Bool)

(declare-fun isBalanced!1177 (Conc!4028) Bool)

(assert (=> d!346686 (= (inv!16455 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))) (isBalanced!1177 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))))))

(declare-fun bs!288673 () Bool)

(assert (= bs!288673 d!346686))

(declare-fun m!1387495 () Bool)

(assert (=> bs!288673 m!1387495))

(assert (=> tb!66481 d!346686))

(declare-fun bs!288674 () Bool)

(declare-fun d!346688 () Bool)

(assert (= bs!288674 (and d!346688 d!346614)))

(declare-fun lambda!49073 () Int)

(assert (=> bs!288674 (= (= (toValue!3220 (transformation!2103 (h!17669 rules!2728))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) (= lambda!49073 lambda!49060))))

(assert (=> d!346688 true))

(assert (=> d!346688 (< (dynLambda!5387 order!7507 (toValue!3220 (transformation!2103 (h!17669 rules!2728)))) (dynLambda!5388 order!7509 lambda!49073))))

(assert (=> d!346688 (= (equivClasses!733 (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toValue!3220 (transformation!2103 (h!17669 rules!2728)))) (Forall2!360 lambda!49073))))

(declare-fun bs!288675 () Bool)

(assert (= bs!288675 d!346688))

(declare-fun m!1387497 () Bool)

(assert (=> bs!288675 m!1387497))

(assert (=> b!1211712 d!346688))

(declare-fun d!346690 () Bool)

(assert (=> d!346690 (= (isEmpty!7314 (_1!6918 lt!414632)) ((_ is Nil!12269) (_1!6918 lt!414632)))))

(assert (=> b!1211690 d!346690))

(declare-fun b!1212024 () Bool)

(declare-fun e!777619 () Bool)

(declare-fun e!777618 () Bool)

(assert (=> b!1212024 (= e!777619 e!777618)))

(declare-fun res!545096 () Bool)

(declare-fun lt!414690 () tuple2!12142)

(assert (=> b!1212024 (= res!545096 (< (size!9762 (_2!6918 lt!414690)) (size!9762 (_2!6920 (v!20593 lt!414633)))))))

(assert (=> b!1212024 (=> (not res!545096) (not e!777618))))

(declare-fun b!1212025 () Bool)

(declare-fun e!777617 () tuple2!12142)

(assert (=> b!1212025 (= e!777617 (tuple2!12143 Nil!12269 (_2!6920 (v!20593 lt!414633))))))

(declare-fun d!346692 () Bool)

(assert (=> d!346692 e!777619))

(declare-fun c!202970 () Bool)

(assert (=> d!346692 (= c!202970 (> (size!9763 (_1!6918 lt!414690)) 0))))

(assert (=> d!346692 (= lt!414690 e!777617)))

(declare-fun c!202971 () Bool)

(declare-fun lt!414691 () Option!2467)

(assert (=> d!346692 (= c!202971 ((_ is Some!2466) lt!414691))))

(assert (=> d!346692 (= lt!414691 (maxPrefix!922 thiss!20528 rules!2728 (_2!6920 (v!20593 lt!414633))))))

(assert (=> d!346692 (= (lexList!428 thiss!20528 rules!2728 (_2!6920 (v!20593 lt!414633))) lt!414690)))

(declare-fun b!1212026 () Bool)

(assert (=> b!1212026 (= e!777619 (= (_2!6918 lt!414690) (_2!6920 (v!20593 lt!414633))))))

(declare-fun b!1212027 () Bool)

(assert (=> b!1212027 (= e!777618 (not (isEmpty!7314 (_1!6918 lt!414690))))))

(declare-fun b!1212028 () Bool)

(declare-fun lt!414689 () tuple2!12142)

(assert (=> b!1212028 (= e!777617 (tuple2!12143 (Cons!12269 (_1!6920 (v!20593 lt!414691)) (_1!6918 lt!414689)) (_2!6918 lt!414689)))))

(assert (=> b!1212028 (= lt!414689 (lexList!428 thiss!20528 rules!2728 (_2!6920 (v!20593 lt!414691))))))

(assert (= (and d!346692 c!202971) b!1212028))

(assert (= (and d!346692 (not c!202971)) b!1212025))

(assert (= (and d!346692 c!202970) b!1212024))

(assert (= (and d!346692 (not c!202970)) b!1212026))

(assert (= (and b!1212024 res!545096) b!1212027))

(declare-fun m!1387499 () Bool)

(assert (=> b!1212024 m!1387499))

(declare-fun m!1387501 () Bool)

(assert (=> b!1212024 m!1387501))

(declare-fun m!1387503 () Bool)

(assert (=> d!346692 m!1387503))

(declare-fun m!1387505 () Bool)

(assert (=> d!346692 m!1387505))

(declare-fun m!1387507 () Bool)

(assert (=> b!1212027 m!1387507))

(declare-fun m!1387509 () Bool)

(assert (=> b!1212028 m!1387509))

(assert (=> b!1211691 d!346692))

(declare-fun bs!288676 () Bool)

(declare-fun d!346694 () Bool)

(assert (= bs!288676 (and d!346694 d!346632)))

(declare-fun lambda!49074 () Int)

(assert (=> bs!288676 (= (and (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toChars!3079 (transformation!2103 (h!17669 rules!2728)))) (= (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toValue!3220 (transformation!2103 (h!17669 rules!2728))))) (= lambda!49074 lambda!49064))))

(assert (=> d!346694 true))

(assert (=> d!346694 (< (dynLambda!5390 order!7511 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) (dynLambda!5391 order!7513 lambda!49074))))

(assert (=> d!346694 true))

(assert (=> d!346694 (< (dynLambda!5387 order!7507 (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) (dynLambda!5391 order!7513 lambda!49074))))

(assert (=> d!346694 (= (semiInverseModEq!766 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toValue!3220 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) (Forall!450 lambda!49074))))

(declare-fun bs!288677 () Bool)

(assert (= bs!288677 d!346694))

(declare-fun m!1387511 () Bool)

(assert (=> bs!288677 m!1387511))

(assert (=> d!346578 d!346694))

(declare-fun d!346696 () Bool)

(declare-fun lt!414692 () Int)

(assert (=> d!346696 (>= lt!414692 0)))

(declare-fun e!777620 () Int)

(assert (=> d!346696 (= lt!414692 e!777620)))

(declare-fun c!202972 () Bool)

(assert (=> d!346696 (= c!202972 ((_ is Nil!12267) (_2!6918 lt!414632)))))

(assert (=> d!346696 (= (size!9762 (_2!6918 lt!414632)) lt!414692)))

(declare-fun b!1212029 () Bool)

(assert (=> b!1212029 (= e!777620 0)))

(declare-fun b!1212030 () Bool)

(assert (=> b!1212030 (= e!777620 (+ 1 (size!9762 (t!112709 (_2!6918 lt!414632)))))))

(assert (= (and d!346696 c!202972) b!1212029))

(assert (= (and d!346696 (not c!202972)) b!1212030))

(declare-fun m!1387513 () Bool)

(assert (=> b!1212030 m!1387513))

(assert (=> b!1211687 d!346696))

(declare-fun d!346698 () Bool)

(declare-fun lt!414693 () Int)

(assert (=> d!346698 (>= lt!414693 0)))

(declare-fun e!777621 () Int)

(assert (=> d!346698 (= lt!414693 e!777621)))

(declare-fun c!202973 () Bool)

(assert (=> d!346698 (= c!202973 ((_ is Nil!12267) input!2346))))

(assert (=> d!346698 (= (size!9762 input!2346) lt!414693)))

(declare-fun b!1212031 () Bool)

(assert (=> b!1212031 (= e!777621 0)))

(declare-fun b!1212032 () Bool)

(assert (=> b!1212032 (= e!777621 (+ 1 (size!9762 (t!112709 input!2346))))))

(assert (= (and d!346698 c!202973) b!1212031))

(assert (= (and d!346698 (not c!202973)) b!1212032))

(declare-fun m!1387515 () Bool)

(assert (=> b!1212032 m!1387515))

(assert (=> b!1211687 d!346698))

(declare-fun b!1212034 () Bool)

(declare-fun e!777622 () Bool)

(declare-fun tp!343354 () Bool)

(declare-fun tp!343355 () Bool)

(assert (=> b!1212034 (= e!777622 (and tp!343354 tp!343355))))

(declare-fun b!1212036 () Bool)

(declare-fun tp!343353 () Bool)

(declare-fun tp!343357 () Bool)

(assert (=> b!1212036 (= e!777622 (and tp!343353 tp!343357))))

(declare-fun b!1212033 () Bool)

(assert (=> b!1212033 (= e!777622 tp_is_empty!6267)))

(declare-fun b!1212035 () Bool)

(declare-fun tp!343356 () Bool)

(assert (=> b!1212035 (= e!777622 tp!343356)))

(assert (=> b!1211734 (= tp!343228 e!777622)))

(assert (= (and b!1211734 ((_ is ElementMatch!3373) (regex!2103 (h!17669 (t!112710 rules!2728))))) b!1212033))

(assert (= (and b!1211734 ((_ is Concat!5545) (regex!2103 (h!17669 (t!112710 rules!2728))))) b!1212034))

(assert (= (and b!1211734 ((_ is Star!3373) (regex!2103 (h!17669 (t!112710 rules!2728))))) b!1212035))

(assert (= (and b!1211734 ((_ is Union!3373) (regex!2103 (h!17669 (t!112710 rules!2728))))) b!1212036))

(declare-fun b!1212038 () Bool)

(declare-fun e!777623 () Bool)

(declare-fun tp!343359 () Bool)

(declare-fun tp!343360 () Bool)

(assert (=> b!1212038 (= e!777623 (and tp!343359 tp!343360))))

(declare-fun b!1212040 () Bool)

(declare-fun tp!343358 () Bool)

(declare-fun tp!343362 () Bool)

(assert (=> b!1212040 (= e!777623 (and tp!343358 tp!343362))))

(declare-fun b!1212037 () Bool)

(assert (=> b!1212037 (= e!777623 tp_is_empty!6267)))

(declare-fun b!1212039 () Bool)

(declare-fun tp!343361 () Bool)

(assert (=> b!1212039 (= e!777623 tp!343361)))

(assert (=> b!1211752 (= tp!343245 e!777623)))

(assert (= (and b!1211752 ((_ is ElementMatch!3373) (regOne!7258 (regex!2103 (h!17669 rules!2728))))) b!1212037))

(assert (= (and b!1211752 ((_ is Concat!5545) (regOne!7258 (regex!2103 (h!17669 rules!2728))))) b!1212038))

(assert (= (and b!1211752 ((_ is Star!3373) (regOne!7258 (regex!2103 (h!17669 rules!2728))))) b!1212039))

(assert (= (and b!1211752 ((_ is Union!3373) (regOne!7258 (regex!2103 (h!17669 rules!2728))))) b!1212040))

(declare-fun b!1212042 () Bool)

(declare-fun e!777624 () Bool)

(declare-fun tp!343364 () Bool)

(declare-fun tp!343365 () Bool)

(assert (=> b!1212042 (= e!777624 (and tp!343364 tp!343365))))

(declare-fun b!1212044 () Bool)

(declare-fun tp!343363 () Bool)

(declare-fun tp!343367 () Bool)

(assert (=> b!1212044 (= e!777624 (and tp!343363 tp!343367))))

(declare-fun b!1212041 () Bool)

(assert (=> b!1212041 (= e!777624 tp_is_empty!6267)))

(declare-fun b!1212043 () Bool)

(declare-fun tp!343366 () Bool)

(assert (=> b!1212043 (= e!777624 tp!343366)))

(assert (=> b!1211752 (= tp!343246 e!777624)))

(assert (= (and b!1211752 ((_ is ElementMatch!3373) (regTwo!7258 (regex!2103 (h!17669 rules!2728))))) b!1212041))

(assert (= (and b!1211752 ((_ is Concat!5545) (regTwo!7258 (regex!2103 (h!17669 rules!2728))))) b!1212042))

(assert (= (and b!1211752 ((_ is Star!3373) (regTwo!7258 (regex!2103 (h!17669 rules!2728))))) b!1212043))

(assert (= (and b!1211752 ((_ is Union!3373) (regTwo!7258 (regex!2103 (h!17669 rules!2728))))) b!1212044))

(declare-fun b!1212046 () Bool)

(declare-fun e!777625 () Bool)

(declare-fun tp!343369 () Bool)

(declare-fun tp!343370 () Bool)

(assert (=> b!1212046 (= e!777625 (and tp!343369 tp!343370))))

(declare-fun b!1212048 () Bool)

(declare-fun tp!343368 () Bool)

(declare-fun tp!343372 () Bool)

(assert (=> b!1212048 (= e!777625 (and tp!343368 tp!343372))))

(declare-fun b!1212045 () Bool)

(assert (=> b!1212045 (= e!777625 tp_is_empty!6267)))

(declare-fun b!1212047 () Bool)

(declare-fun tp!343371 () Bool)

(assert (=> b!1212047 (= e!777625 tp!343371)))

(assert (=> b!1211757 (= tp!343252 e!777625)))

(assert (= (and b!1211757 ((_ is ElementMatch!3373) (reg!3702 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212045))

(assert (= (and b!1211757 ((_ is Concat!5545) (reg!3702 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212046))

(assert (= (and b!1211757 ((_ is Star!3373) (reg!3702 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212047))

(assert (= (and b!1211757 ((_ is Union!3373) (reg!3702 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212048))

(declare-fun b!1212050 () Bool)

(declare-fun e!777626 () Bool)

(declare-fun tp!343374 () Bool)

(declare-fun tp!343375 () Bool)

(assert (=> b!1212050 (= e!777626 (and tp!343374 tp!343375))))

(declare-fun b!1212052 () Bool)

(declare-fun tp!343373 () Bool)

(declare-fun tp!343377 () Bool)

(assert (=> b!1212052 (= e!777626 (and tp!343373 tp!343377))))

(declare-fun b!1212049 () Bool)

(assert (=> b!1212049 (= e!777626 tp_is_empty!6267)))

(declare-fun b!1212051 () Bool)

(declare-fun tp!343376 () Bool)

(assert (=> b!1212051 (= e!777626 tp!343376)))

(assert (=> b!1211753 (= tp!343247 e!777626)))

(assert (= (and b!1211753 ((_ is ElementMatch!3373) (reg!3702 (regex!2103 (h!17669 rules!2728))))) b!1212049))

(assert (= (and b!1211753 ((_ is Concat!5545) (reg!3702 (regex!2103 (h!17669 rules!2728))))) b!1212050))

(assert (= (and b!1211753 ((_ is Star!3373) (reg!3702 (regex!2103 (h!17669 rules!2728))))) b!1212051))

(assert (= (and b!1211753 ((_ is Union!3373) (reg!3702 (regex!2103 (h!17669 rules!2728))))) b!1212052))

(declare-fun b!1212054 () Bool)

(declare-fun e!777627 () Bool)

(declare-fun tp!343379 () Bool)

(declare-fun tp!343380 () Bool)

(assert (=> b!1212054 (= e!777627 (and tp!343379 tp!343380))))

(declare-fun b!1212056 () Bool)

(declare-fun tp!343378 () Bool)

(declare-fun tp!343382 () Bool)

(assert (=> b!1212056 (= e!777627 (and tp!343378 tp!343382))))

(declare-fun b!1212053 () Bool)

(assert (=> b!1212053 (= e!777627 tp_is_empty!6267)))

(declare-fun b!1212055 () Bool)

(declare-fun tp!343381 () Bool)

(assert (=> b!1212055 (= e!777627 tp!343381)))

(assert (=> b!1211758 (= tp!343249 e!777627)))

(assert (= (and b!1211758 ((_ is ElementMatch!3373) (regOne!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212053))

(assert (= (and b!1211758 ((_ is Concat!5545) (regOne!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212054))

(assert (= (and b!1211758 ((_ is Star!3373) (regOne!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212055))

(assert (= (and b!1211758 ((_ is Union!3373) (regOne!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212056))

(declare-fun b!1212058 () Bool)

(declare-fun e!777628 () Bool)

(declare-fun tp!343384 () Bool)

(declare-fun tp!343385 () Bool)

(assert (=> b!1212058 (= e!777628 (and tp!343384 tp!343385))))

(declare-fun b!1212060 () Bool)

(declare-fun tp!343383 () Bool)

(declare-fun tp!343387 () Bool)

(assert (=> b!1212060 (= e!777628 (and tp!343383 tp!343387))))

(declare-fun b!1212057 () Bool)

(assert (=> b!1212057 (= e!777628 tp_is_empty!6267)))

(declare-fun b!1212059 () Bool)

(declare-fun tp!343386 () Bool)

(assert (=> b!1212059 (= e!777628 tp!343386)))

(assert (=> b!1211758 (= tp!343253 e!777628)))

(assert (= (and b!1211758 ((_ is ElementMatch!3373) (regTwo!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212057))

(assert (= (and b!1211758 ((_ is Concat!5545) (regTwo!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212058))

(assert (= (and b!1211758 ((_ is Star!3373) (regTwo!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212059))

(assert (= (and b!1211758 ((_ is Union!3373) (regTwo!7259 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212060))

(declare-fun b!1212063 () Bool)

(declare-fun b_free!28857 () Bool)

(declare-fun b_next!29561 () Bool)

(assert (=> b!1212063 (= b_free!28857 (not b_next!29561))))

(declare-fun tp!343391 () Bool)

(declare-fun b_and!82081 () Bool)

(assert (=> b!1212063 (= tp!343391 b_and!82081)))

(declare-fun b_free!28859 () Bool)

(declare-fun b_next!29563 () Bool)

(assert (=> b!1212063 (= b_free!28859 (not b_next!29563))))

(declare-fun t!112755 () Bool)

(declare-fun tb!66513 () Bool)

(assert (=> (and b!1212063 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 (t!112710 rules!2728))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) t!112755) tb!66513))

(declare-fun result!80434 () Bool)

(assert (= result!80434 result!80390))

(assert (=> b!1211718 t!112755))

(declare-fun tb!66515 () Bool)

(declare-fun t!112757 () Bool)

(assert (=> (and b!1212063 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 (t!112710 rules!2728))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) t!112757) tb!66515))

(declare-fun result!80436 () Bool)

(assert (= result!80436 result!80426))

(assert (=> b!1212015 t!112757))

(declare-fun tp!343388 () Bool)

(declare-fun b_and!82083 () Bool)

(assert (=> b!1212063 (= tp!343388 (and (=> t!112755 result!80434) (=> t!112757 result!80436) b_and!82083))))

(declare-fun e!777632 () Bool)

(assert (=> b!1212063 (= e!777632 (and tp!343391 tp!343388))))

(declare-fun e!777631 () Bool)

(declare-fun tp!343389 () Bool)

(declare-fun b!1212062 () Bool)

(assert (=> b!1212062 (= e!777631 (and tp!343389 (inv!16447 (tag!2365 (h!17669 (t!112710 (t!112710 rules!2728))))) (inv!16450 (transformation!2103 (h!17669 (t!112710 (t!112710 rules!2728))))) e!777632))))

(declare-fun b!1212061 () Bool)

(declare-fun e!777630 () Bool)

(declare-fun tp!343390 () Bool)

(assert (=> b!1212061 (= e!777630 (and e!777631 tp!343390))))

(assert (=> b!1211733 (= tp!343229 e!777630)))

(assert (= b!1212062 b!1212063))

(assert (= b!1212061 b!1212062))

(assert (= (and b!1211733 ((_ is Cons!12268) (t!112710 (t!112710 rules!2728)))) b!1212061))

(declare-fun m!1387517 () Bool)

(assert (=> b!1212062 m!1387517))

(declare-fun m!1387519 () Bool)

(assert (=> b!1212062 m!1387519))

(declare-fun b!1212065 () Bool)

(declare-fun e!777633 () Bool)

(declare-fun tp!343393 () Bool)

(declare-fun tp!343394 () Bool)

(assert (=> b!1212065 (= e!777633 (and tp!343393 tp!343394))))

(declare-fun b!1212067 () Bool)

(declare-fun tp!343392 () Bool)

(declare-fun tp!343396 () Bool)

(assert (=> b!1212067 (= e!777633 (and tp!343392 tp!343396))))

(declare-fun b!1212064 () Bool)

(assert (=> b!1212064 (= e!777633 tp_is_empty!6267)))

(declare-fun b!1212066 () Bool)

(declare-fun tp!343395 () Bool)

(assert (=> b!1212066 (= e!777633 tp!343395)))

(assert (=> b!1211754 (= tp!343244 e!777633)))

(assert (= (and b!1211754 ((_ is ElementMatch!3373) (regOne!7259 (regex!2103 (h!17669 rules!2728))))) b!1212064))

(assert (= (and b!1211754 ((_ is Concat!5545) (regOne!7259 (regex!2103 (h!17669 rules!2728))))) b!1212065))

(assert (= (and b!1211754 ((_ is Star!3373) (regOne!7259 (regex!2103 (h!17669 rules!2728))))) b!1212066))

(assert (= (and b!1211754 ((_ is Union!3373) (regOne!7259 (regex!2103 (h!17669 rules!2728))))) b!1212067))

(declare-fun b!1212069 () Bool)

(declare-fun e!777634 () Bool)

(declare-fun tp!343398 () Bool)

(declare-fun tp!343399 () Bool)

(assert (=> b!1212069 (= e!777634 (and tp!343398 tp!343399))))

(declare-fun b!1212071 () Bool)

(declare-fun tp!343397 () Bool)

(declare-fun tp!343401 () Bool)

(assert (=> b!1212071 (= e!777634 (and tp!343397 tp!343401))))

(declare-fun b!1212068 () Bool)

(assert (=> b!1212068 (= e!777634 tp_is_empty!6267)))

(declare-fun b!1212070 () Bool)

(declare-fun tp!343400 () Bool)

(assert (=> b!1212070 (= e!777634 tp!343400)))

(assert (=> b!1211754 (= tp!343248 e!777634)))

(assert (= (and b!1211754 ((_ is ElementMatch!3373) (regTwo!7259 (regex!2103 (h!17669 rules!2728))))) b!1212068))

(assert (= (and b!1211754 ((_ is Concat!5545) (regTwo!7259 (regex!2103 (h!17669 rules!2728))))) b!1212069))

(assert (= (and b!1211754 ((_ is Star!3373) (regTwo!7259 (regex!2103 (h!17669 rules!2728))))) b!1212070))

(assert (= (and b!1211754 ((_ is Union!3373) (regTwo!7259 (regex!2103 (h!17669 rules!2728))))) b!1212071))

(declare-fun b!1212072 () Bool)

(declare-fun e!777635 () Bool)

(declare-fun tp!343402 () Bool)

(assert (=> b!1212072 (= e!777635 (and tp_is_empty!6267 tp!343402))))

(assert (=> b!1211770 (= tp!343267 e!777635)))

(assert (= (and b!1211770 ((_ is Cons!12267) (originalCharacters!2657 (h!17670 (t!112711 tokens!556))))) b!1212072))

(declare-fun b!1212073 () Bool)

(declare-fun e!777636 () Bool)

(declare-fun tp!343403 () Bool)

(assert (=> b!1212073 (= e!777636 (and tp_is_empty!6267 tp!343403))))

(assert (=> b!1211740 (= tp!343233 e!777636)))

(assert (= (and b!1211740 ((_ is Cons!12267) (t!112709 (originalCharacters!2657 (h!17670 tokens!556))))) b!1212073))

(declare-fun b!1212075 () Bool)

(declare-fun e!777637 () Bool)

(declare-fun tp!343405 () Bool)

(declare-fun tp!343406 () Bool)

(assert (=> b!1212075 (= e!777637 (and tp!343405 tp!343406))))

(declare-fun b!1212077 () Bool)

(declare-fun tp!343404 () Bool)

(declare-fun tp!343408 () Bool)

(assert (=> b!1212077 (= e!777637 (and tp!343404 tp!343408))))

(declare-fun b!1212074 () Bool)

(assert (=> b!1212074 (= e!777637 tp_is_empty!6267)))

(declare-fun b!1212076 () Bool)

(declare-fun tp!343407 () Bool)

(assert (=> b!1212076 (= e!777637 tp!343407)))

(assert (=> b!1211771 (= tp!343266 e!777637)))

(assert (= (and b!1211771 ((_ is ElementMatch!3373) (regex!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) b!1212074))

(assert (= (and b!1211771 ((_ is Concat!5545) (regex!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) b!1212075))

(assert (= (and b!1211771 ((_ is Star!3373) (regex!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) b!1212076))

(assert (= (and b!1211771 ((_ is Union!3373) (regex!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) b!1212077))

(declare-fun b!1212079 () Bool)

(declare-fun e!777638 () Bool)

(declare-fun tp!343410 () Bool)

(declare-fun tp!343411 () Bool)

(assert (=> b!1212079 (= e!777638 (and tp!343410 tp!343411))))

(declare-fun b!1212081 () Bool)

(declare-fun tp!343409 () Bool)

(declare-fun tp!343413 () Bool)

(assert (=> b!1212081 (= e!777638 (and tp!343409 tp!343413))))

(declare-fun b!1212078 () Bool)

(assert (=> b!1212078 (= e!777638 tp_is_empty!6267)))

(declare-fun b!1212080 () Bool)

(declare-fun tp!343412 () Bool)

(assert (=> b!1212080 (= e!777638 tp!343412)))

(assert (=> b!1211756 (= tp!343250 e!777638)))

(assert (= (and b!1211756 ((_ is ElementMatch!3373) (regOne!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212078))

(assert (= (and b!1211756 ((_ is Concat!5545) (regOne!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212079))

(assert (= (and b!1211756 ((_ is Star!3373) (regOne!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212080))

(assert (= (and b!1211756 ((_ is Union!3373) (regOne!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212081))

(declare-fun b!1212083 () Bool)

(declare-fun e!777639 () Bool)

(declare-fun tp!343415 () Bool)

(declare-fun tp!343416 () Bool)

(assert (=> b!1212083 (= e!777639 (and tp!343415 tp!343416))))

(declare-fun b!1212085 () Bool)

(declare-fun tp!343414 () Bool)

(declare-fun tp!343418 () Bool)

(assert (=> b!1212085 (= e!777639 (and tp!343414 tp!343418))))

(declare-fun b!1212082 () Bool)

(assert (=> b!1212082 (= e!777639 tp_is_empty!6267)))

(declare-fun b!1212084 () Bool)

(declare-fun tp!343417 () Bool)

(assert (=> b!1212084 (= e!777639 tp!343417)))

(assert (=> b!1211756 (= tp!343251 e!777639)))

(assert (= (and b!1211756 ((_ is ElementMatch!3373) (regTwo!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212082))

(assert (= (and b!1211756 ((_ is Concat!5545) (regTwo!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212083))

(assert (= (and b!1211756 ((_ is Star!3373) (regTwo!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212084))

(assert (= (and b!1211756 ((_ is Union!3373) (regTwo!7258 (regex!2103 (rule!3524 (h!17670 tokens!556)))))) b!1212085))

(declare-fun e!777645 () Bool)

(declare-fun tp!343426 () Bool)

(declare-fun tp!343427 () Bool)

(declare-fun b!1212094 () Bool)

(assert (=> b!1212094 (= e!777645 (and (inv!16454 (left!10651 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))))) tp!343427 (inv!16454 (right!10981 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))))) tp!343426))))

(declare-fun b!1212096 () Bool)

(declare-fun e!777644 () Bool)

(declare-fun tp!343425 () Bool)

(assert (=> b!1212096 (= e!777644 tp!343425)))

(declare-fun b!1212095 () Bool)

(declare-fun inv!16461 (IArray!8061) Bool)

(assert (=> b!1212095 (= e!777645 (and (inv!16461 (xs!6739 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))))) e!777644))))

(assert (=> b!1211724 (= tp!343218 (and (inv!16454 (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556))))) e!777645))))

(assert (= (and b!1211724 ((_ is Node!4028) (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))))) b!1212094))

(assert (= b!1212095 b!1212096))

(assert (= (and b!1211724 ((_ is Leaf!6228) (c!202913 (dynLambda!5382 (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (value!68532 (h!17670 tokens!556)))))) b!1212095))

(declare-fun m!1387521 () Bool)

(assert (=> b!1212094 m!1387521))

(declare-fun m!1387523 () Bool)

(assert (=> b!1212094 m!1387523))

(declare-fun m!1387525 () Bool)

(assert (=> b!1212095 m!1387525))

(assert (=> b!1211724 m!1387239))

(declare-fun b!1212100 () Bool)

(declare-fun b_free!28861 () Bool)

(declare-fun b_next!29565 () Bool)

(assert (=> b!1212100 (= b_free!28861 (not b_next!29565))))

(declare-fun tp!343432 () Bool)

(declare-fun b_and!82085 () Bool)

(assert (=> b!1212100 (= tp!343432 b_and!82085)))

(declare-fun b_free!28863 () Bool)

(declare-fun b_next!29567 () Bool)

(assert (=> b!1212100 (= b_free!28863 (not b_next!29567))))

(declare-fun t!112759 () Bool)

(declare-fun tb!66517 () Bool)

(assert (=> (and b!1212100 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 (t!112711 tokens!556)))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556))))) t!112759) tb!66517))

(declare-fun result!80440 () Bool)

(assert (= result!80440 result!80390))

(assert (=> b!1211718 t!112759))

(declare-fun t!112761 () Bool)

(declare-fun tb!66519 () Bool)

(assert (=> (and b!1212100 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 (t!112711 tokens!556)))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556)))))) t!112761) tb!66519))

(declare-fun result!80442 () Bool)

(assert (= result!80442 result!80426))

(assert (=> b!1212015 t!112761))

(declare-fun tp!343429 () Bool)

(declare-fun b_and!82087 () Bool)

(assert (=> b!1212100 (= tp!343429 (and (=> t!112759 result!80440) (=> t!112761 result!80442) b_and!82087))))

(declare-fun e!777651 () Bool)

(declare-fun tp!343430 () Bool)

(declare-fun b!1212099 () Bool)

(declare-fun e!777646 () Bool)

(assert (=> b!1212099 (= e!777651 (and tp!343430 (inv!16447 (tag!2365 (rule!3524 (h!17670 (t!112711 (t!112711 tokens!556)))))) (inv!16450 (transformation!2103 (rule!3524 (h!17670 (t!112711 (t!112711 tokens!556)))))) e!777646))))

(declare-fun tp!343431 () Bool)

(declare-fun e!777647 () Bool)

(declare-fun b!1212098 () Bool)

(assert (=> b!1212098 (= e!777647 (and (inv!21 (value!68532 (h!17670 (t!112711 (t!112711 tokens!556))))) e!777651 tp!343431))))

(declare-fun e!777649 () Bool)

(assert (=> b!1211769 (= tp!343264 e!777649)))

(assert (=> b!1212100 (= e!777646 (and tp!343432 tp!343429))))

(declare-fun tp!343428 () Bool)

(declare-fun b!1212097 () Bool)

(assert (=> b!1212097 (= e!777649 (and (inv!16451 (h!17670 (t!112711 (t!112711 tokens!556)))) e!777647 tp!343428))))

(assert (= b!1212099 b!1212100))

(assert (= b!1212098 b!1212099))

(assert (= b!1212097 b!1212098))

(assert (= (and b!1211769 ((_ is Cons!12269) (t!112711 (t!112711 tokens!556)))) b!1212097))

(declare-fun m!1387527 () Bool)

(assert (=> b!1212099 m!1387527))

(declare-fun m!1387529 () Bool)

(assert (=> b!1212099 m!1387529))

(declare-fun m!1387531 () Bool)

(assert (=> b!1212098 m!1387531))

(declare-fun m!1387533 () Bool)

(assert (=> b!1212097 m!1387533))

(declare-fun b!1212101 () Bool)

(declare-fun e!777652 () Bool)

(declare-fun tp!343433 () Bool)

(assert (=> b!1212101 (= e!777652 (and tp_is_empty!6267 tp!343433))))

(assert (=> b!1211773 (= tp!343269 e!777652)))

(assert (= (and b!1211773 ((_ is Cons!12267) (t!112709 (t!112709 input!2346)))) b!1212101))

(declare-fun b_lambda!35763 () Bool)

(assert (= b_lambda!35759 (or (and b!1211560 b_free!28827 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 tokens!556)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))))) (and b!1212063 b_free!28859 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 (t!112710 rules!2728))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))))) (and b!1211772 b_free!28847) (and b!1212100 b_free!28863 (= (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 (t!112711 tokens!556)))))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))))) (and b!1211553 b_free!28831 (= (toChars!3079 (transformation!2103 (h!17669 rules!2728))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))))) (and b!1211735 b_free!28843 (= (toChars!3079 (transformation!2103 (h!17669 (t!112710 rules!2728)))) (toChars!3079 (transformation!2103 (rule!3524 (h!17670 (t!112711 tokens!556))))))) b_lambda!35763)))

(declare-fun b_lambda!35765 () Bool)

(assert (= b_lambda!35761 (or d!346542 b_lambda!35765)))

(declare-fun bs!288678 () Bool)

(declare-fun d!346700 () Bool)

(assert (= bs!288678 (and d!346700 d!346542)))

(assert (=> bs!288678 (= (dynLambda!5392 lambda!49050 (h!17669 rules!2728)) (ruleValid!523 thiss!20528 (h!17669 rules!2728)))))

(assert (=> bs!288678 m!1387205))

(assert (=> b!1212022 d!346700))

(check-sat (not b_next!29551) (not b!1212038) (not b!1212075) (not b_next!29549) (not b!1212083) b_and!82053 (not b!1212046) (not b!1212056) b_and!82079 b_and!82085 (not b!1212052) (not b_next!29563) (not b_next!29547) (not b!1212081) (not b!1212076) (not d!346624) (not b!1212030) (not b!1212059) (not d!346622) (not b!1212066) (not b_next!29529) (not b_next!29565) (not b!1212073) (not b!1212071) (not b!1212095) (not b!1212042) (not d!346614) (not d!346632) (not b!1212094) b_and!82073 (not b!1211807) (not b!1212055) (not b!1212023) (not b!1211826) (not b_next!29531) (not b!1212054) (not b!1212062) (not b!1212028) (not b!1212065) (not b!1211837) (not b!1211819) b_and!82081 (not b!1211936) (not b!1211999) tp_is_empty!6267 (not b!1212039) (not b!1212079) (not b!1212012) (not d!346664) (not b!1212061) (not bm!84480) (not b_lambda!35749) (not d!346688) (not d!346630) (not b!1212060) (not b!1212080) (not b!1212096) (not b!1212015) (not b!1212036) (not b!1212085) (not b!1211933) (not d!346636) (not b!1212035) (not b!1212005) (not b!1212072) (not b_next!29535) (not b!1212070) (not b!1211984) (not b!1212084) (not b!1211820) b_and!82077 (not b!1212024) (not b!1212016) (not b!1212048) (not b!1212067) (not b!1212044) (not b!1212043) (not b_next!29533) (not b_lambda!35765) (not b!1211987) (not b_next!29561) (not d!346620) (not b!1211929) (not b!1212017) (not b_lambda!35763) (not b!1212098) (not d!346672) (not d!346680) (not d!346682) (not d!346626) (not b!1212058) (not b!1212047) (not b!1211724) (not d!346608) (not b!1212099) (not b!1212069) (not b!1211935) (not b_next!29545) (not bs!288678) (not b!1212027) (not b!1211983) (not b!1211827) b_and!82087 (not b!1212050) (not b!1211821) b_and!82075 (not b!1211934) (not b!1211928) b_and!82029 (not b_next!29567) (not b!1212040) (not tb!66505) (not b!1212032) (not b!1211931) (not d!346692) (not b!1212077) (not b!1212097) b_and!82049 (not b!1212034) (not b!1212014) (not d!346686) (not b!1212051) (not b!1211930) b_and!82025 (not d!346694) b_and!82083 (not b!1212101))
(check-sat (not b_next!29549) (not b_next!29547) (not b_next!29529) (not b_next!29565) b_and!82073 (not b_next!29531) b_and!82081 (not b_next!29533) (not b_next!29561) (not b_next!29551) (not b_next!29545) b_and!82087 b_and!82075 b_and!82029 (not b_next!29567) b_and!82049 b_and!82053 b_and!82079 b_and!82085 (not b_next!29563) (not b_next!29535) b_and!82077 b_and!82025 b_and!82083)
