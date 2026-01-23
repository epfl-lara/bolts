; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351842 () Bool)

(assert start!351842)

(declare-fun b!3747651 () Bool)

(declare-fun b_free!99961 () Bool)

(declare-fun b_next!100665 () Bool)

(assert (=> b!3747651 (= b_free!99961 (not b_next!100665))))

(declare-fun tp!1143517 () Bool)

(declare-fun b_and!278195 () Bool)

(assert (=> b!3747651 (= tp!1143517 b_and!278195)))

(declare-fun b_free!99963 () Bool)

(declare-fun b_next!100667 () Bool)

(assert (=> b!3747651 (= b_free!99963 (not b_next!100667))))

(declare-fun tp!1143518 () Bool)

(declare-fun b_and!278197 () Bool)

(assert (=> b!3747651 (= tp!1143518 b_and!278197)))

(declare-fun b!3747648 () Bool)

(declare-fun b_free!99965 () Bool)

(declare-fun b_next!100669 () Bool)

(assert (=> b!3747648 (= b_free!99965 (not b_next!100669))))

(declare-fun tp!1143521 () Bool)

(declare-fun b_and!278199 () Bool)

(assert (=> b!3747648 (= tp!1143521 b_and!278199)))

(declare-fun b_free!99967 () Bool)

(declare-fun b_next!100671 () Bool)

(assert (=> b!3747648 (= b_free!99967 (not b_next!100671))))

(declare-fun tp!1143516 () Bool)

(declare-fun b_and!278201 () Bool)

(assert (=> b!3747648 (= tp!1143516 b_and!278201)))

(declare-fun b!3747657 () Bool)

(declare-fun b_free!99969 () Bool)

(declare-fun b_next!100673 () Bool)

(assert (=> b!3747657 (= b_free!99969 (not b_next!100673))))

(declare-fun tp!1143519 () Bool)

(declare-fun b_and!278203 () Bool)

(assert (=> b!3747657 (= tp!1143519 b_and!278203)))

(declare-fun b_free!99971 () Bool)

(declare-fun b_next!100675 () Bool)

(assert (=> b!3747657 (= b_free!99971 (not b_next!100675))))

(declare-fun tp!1143520 () Bool)

(declare-fun b_and!278205 () Bool)

(assert (=> b!3747657 (= tp!1143520 b_and!278205)))

(declare-fun b!3747645 () Bool)

(declare-fun res!1519094 () Bool)

(declare-fun e!2317521 () Bool)

(assert (=> b!3747645 (=> (not res!1519094) (not e!2317521))))

(declare-datatypes ((List!39990 0))(
  ( (Nil!39866) (Cons!39866 (h!45286 (_ BitVec 16)) (t!302673 List!39990)) )
))
(declare-datatypes ((TokenValue!6318 0))(
  ( (FloatLiteralValue!12636 (text!44671 List!39990)) (TokenValueExt!6317 (__x!24853 Int)) (Broken!31590 (value!194052 List!39990)) (Object!6441) (End!6318) (Def!6318) (Underscore!6318) (Match!6318) (Else!6318) (Error!6318) (Case!6318) (If!6318) (Extends!6318) (Abstract!6318) (Class!6318) (Val!6318) (DelimiterValue!12636 (del!6378 List!39990)) (KeywordValue!6324 (value!194053 List!39990)) (CommentValue!12636 (value!194054 List!39990)) (WhitespaceValue!12636 (value!194055 List!39990)) (IndentationValue!6318 (value!194056 List!39990)) (String!45215) (Int32!6318) (Broken!31591 (value!194057 List!39990)) (Boolean!6319) (Unit!57687) (OperatorValue!6321 (op!6378 List!39990)) (IdentifierValue!12636 (value!194058 List!39990)) (IdentifierValue!12637 (value!194059 List!39990)) (WhitespaceValue!12637 (value!194060 List!39990)) (True!12636) (False!12636) (Broken!31592 (value!194061 List!39990)) (Broken!31593 (value!194062 List!39990)) (True!12637) (RightBrace!6318) (RightBracket!6318) (Colon!6318) (Null!6318) (Comma!6318) (LeftBracket!6318) (False!12637) (LeftBrace!6318) (ImaginaryLiteralValue!6318 (text!44672 List!39990)) (StringLiteralValue!18954 (value!194063 List!39990)) (EOFValue!6318 (value!194064 List!39990)) (IdentValue!6318 (value!194065 List!39990)) (DelimiterValue!12637 (value!194066 List!39990)) (DedentValue!6318 (value!194067 List!39990)) (NewLineValue!6318 (value!194068 List!39990)) (IntegerValue!18954 (value!194069 (_ BitVec 32)) (text!44673 List!39990)) (IntegerValue!18955 (value!194070 Int) (text!44674 List!39990)) (Times!6318) (Or!6318) (Equal!6318) (Minus!6318) (Broken!31594 (value!194071 List!39990)) (And!6318) (Div!6318) (LessEqual!6318) (Mod!6318) (Concat!17311) (Not!6318) (Plus!6318) (SpaceValue!6318 (value!194072 List!39990)) (IntegerValue!18956 (value!194073 Int) (text!44675 List!39990)) (StringLiteralValue!18955 (text!44676 List!39990)) (FloatLiteralValue!12637 (text!44677 List!39990)) (BytesLiteralValue!6318 (value!194074 List!39990)) (CommentValue!12637 (value!194075 List!39990)) (StringLiteralValue!18956 (value!194076 List!39990)) (ErrorTokenValue!6318 (msg!6379 List!39990)) )
))
(declare-datatypes ((C!22172 0))(
  ( (C!22173 (val!13134 Int)) )
))
(declare-datatypes ((List!39991 0))(
  ( (Nil!39867) (Cons!39867 (h!45287 C!22172) (t!302674 List!39991)) )
))
(declare-datatypes ((IArray!24375 0))(
  ( (IArray!24376 (innerList!12245 List!39991)) )
))
(declare-datatypes ((Conc!12185 0))(
  ( (Node!12185 (left!30868 Conc!12185) (right!31198 Conc!12185) (csize!24600 Int) (cheight!12396 Int)) (Leaf!18913 (xs!15387 IArray!24375) (csize!24601 Int)) (Empty!12185) )
))
(declare-datatypes ((BalanceConc!23984 0))(
  ( (BalanceConc!23985 (c!648956 Conc!12185)) )
))
(declare-datatypes ((TokenValueInjection!12064 0))(
  ( (TokenValueInjection!12065 (toValue!8436 Int) (toChars!8295 Int)) )
))
(declare-datatypes ((String!45216 0))(
  ( (String!45217 (value!194077 String)) )
))
(declare-datatypes ((Regex!10993 0))(
  ( (ElementMatch!10993 (c!648957 C!22172)) (Concat!17312 (regOne!22498 Regex!10993) (regTwo!22498 Regex!10993)) (EmptyExpr!10993) (Star!10993 (reg!11322 Regex!10993)) (EmptyLang!10993) (Union!10993 (regOne!22499 Regex!10993) (regTwo!22499 Regex!10993)) )
))
(declare-datatypes ((Rule!11976 0))(
  ( (Rule!11977 (regex!6088 Regex!10993) (tag!6948 String!45216) (isSeparator!6088 Bool) (transformation!6088 TokenValueInjection!12064)) )
))
(declare-fun rNSep!170 () Rule!11976)

(declare-datatypes ((List!39992 0))(
  ( (Nil!39868) (Cons!39868 (h!45288 Rule!11976) (t!302675 List!39992)) )
))
(declare-fun rules!4213 () List!39992)

(declare-fun ruleDisjointCharsFromAllFromOtherType!961 (Rule!11976 List!39992) Bool)

(assert (=> b!3747645 (= res!1519094 (ruleDisjointCharsFromAllFromOtherType!961 rNSep!170 rules!4213))))

(declare-fun b!3747646 () Bool)

(declare-fun res!1519092 () Bool)

(assert (=> b!3747646 (=> (not res!1519092) (not e!2317521))))

(declare-datatypes ((LexerInterface!5677 0))(
  ( (LexerInterfaceExt!5674 (__x!24854 Int)) (Lexer!5675) )
))
(declare-fun thiss!27193 () LexerInterface!5677)

(declare-fun rulesInvariant!5074 (LexerInterface!5677 List!39992) Bool)

(assert (=> b!3747646 (= res!1519092 (rulesInvariant!5074 thiss!27193 rules!4213))))

(declare-fun res!1519090 () Bool)

(assert (=> start!351842 (=> (not res!1519090) (not e!2317521))))

(get-info :version)

(assert (=> start!351842 (= res!1519090 ((_ is Lexer!5675) thiss!27193))))

(assert (=> start!351842 e!2317521))

(declare-fun e!2317523 () Bool)

(assert (=> start!351842 e!2317523))

(declare-fun e!2317513 () Bool)

(assert (=> start!351842 e!2317513))

(assert (=> start!351842 true))

(declare-fun tp_is_empty!19001 () Bool)

(assert (=> start!351842 tp_is_empty!19001))

(declare-fun e!2317516 () Bool)

(assert (=> start!351842 e!2317516))

(declare-fun e!2317518 () Bool)

(declare-fun tp!1143515 () Bool)

(declare-fun b!3747647 () Bool)

(declare-fun rSep!170 () Rule!11976)

(declare-fun inv!53377 (String!45216) Bool)

(declare-fun inv!53379 (TokenValueInjection!12064) Bool)

(assert (=> b!3747647 (= e!2317516 (and tp!1143515 (inv!53377 (tag!6948 rSep!170)) (inv!53379 (transformation!6088 rSep!170)) e!2317518))))

(declare-fun e!2317522 () Bool)

(assert (=> b!3747648 (= e!2317522 (and tp!1143521 tp!1143516))))

(declare-fun b!3747649 () Bool)

(declare-fun res!1519093 () Bool)

(assert (=> b!3747649 (=> (not res!1519093) (not e!2317521))))

(assert (=> b!3747649 (= res!1519093 (and (or (not ((_ is Cons!39868) rules!4213)) (not (= (h!45288 rules!4213) rSep!170))) ((_ is Cons!39868) rules!4213)))))

(declare-fun b!3747650 () Bool)

(declare-fun res!1519091 () Bool)

(assert (=> b!3747650 (=> (not res!1519091) (not e!2317521))))

(assert (=> b!3747650 (= res!1519091 (and (not (isSeparator!6088 rNSep!170)) (isSeparator!6088 rSep!170)))))

(assert (=> b!3747651 (= e!2317518 (and tp!1143517 tp!1143518))))

(declare-fun tp!1143514 () Bool)

(declare-fun e!2317520 () Bool)

(declare-fun b!3747652 () Bool)

(assert (=> b!3747652 (= e!2317520 (and tp!1143514 (inv!53377 (tag!6948 (h!45288 rules!4213))) (inv!53379 (transformation!6088 (h!45288 rules!4213))) e!2317522))))

(declare-fun b!3747653 () Bool)

(declare-fun e!2317515 () Bool)

(declare-fun ListPrimitiveSize!261 (List!39992) Int)

(assert (=> b!3747653 (= e!2317515 (< (ListPrimitiveSize!261 (t!302675 rules!4213)) (ListPrimitiveSize!261 rules!4213)))))

(declare-fun b!3747654 () Bool)

(declare-fun tp!1143522 () Bool)

(assert (=> b!3747654 (= e!2317513 (and e!2317520 tp!1143522))))

(declare-fun b!3747655 () Bool)

(declare-fun res!1519097 () Bool)

(assert (=> b!3747655 (=> (not res!1519097) (not e!2317521))))

(declare-fun contains!8135 (List!39992 Rule!11976) Bool)

(assert (=> b!3747655 (= res!1519097 (contains!8135 rules!4213 rSep!170))))

(declare-fun tp!1143513 () Bool)

(declare-fun e!2317517 () Bool)

(declare-fun b!3747656 () Bool)

(assert (=> b!3747656 (= e!2317523 (and tp!1143513 (inv!53377 (tag!6948 rNSep!170)) (inv!53379 (transformation!6088 rNSep!170)) e!2317517))))

(assert (=> b!3747657 (= e!2317517 (and tp!1143519 tp!1143520))))

(declare-fun b!3747658 () Bool)

(assert (=> b!3747658 (= e!2317521 (not e!2317515))))

(declare-fun res!1519096 () Bool)

(assert (=> b!3747658 (=> res!1519096 e!2317515)))

(assert (=> b!3747658 (= res!1519096 (not (contains!8135 (t!302675 rules!4213) rSep!170)))))

(assert (=> b!3747658 (rulesInvariant!5074 thiss!27193 (t!302675 rules!4213))))

(declare-datatypes ((Unit!57688 0))(
  ( (Unit!57689) )
))
(declare-fun lt!1299610 () Unit!57688)

(declare-fun lemmaInvariantOnRulesThenOnTail!718 (LexerInterface!5677 Rule!11976 List!39992) Unit!57688)

(assert (=> b!3747658 (= lt!1299610 (lemmaInvariantOnRulesThenOnTail!718 thiss!27193 (h!45288 rules!4213) (t!302675 rules!4213)))))

(declare-fun b!3747659 () Bool)

(declare-fun res!1519089 () Bool)

(assert (=> b!3747659 (=> res!1519089 e!2317515)))

(assert (=> b!3747659 (= res!1519089 (not (ruleDisjointCharsFromAllFromOtherType!961 rNSep!170 (t!302675 rules!4213))))))

(declare-fun b!3747660 () Bool)

(declare-fun res!1519095 () Bool)

(assert (=> b!3747660 (=> (not res!1519095) (not e!2317521))))

(declare-fun c!6920 () C!22172)

(declare-fun contains!8136 (List!39991 C!22172) Bool)

(declare-fun usedCharacters!1256 (Regex!10993) List!39991)

(assert (=> b!3747660 (= res!1519095 (contains!8136 (usedCharacters!1256 (regex!6088 rNSep!170)) c!6920))))

(assert (= (and start!351842 res!1519090) b!3747646))

(assert (= (and b!3747646 res!1519092) b!3747655))

(assert (= (and b!3747655 res!1519097) b!3747660))

(assert (= (and b!3747660 res!1519095) b!3747650))

(assert (= (and b!3747650 res!1519091) b!3747645))

(assert (= (and b!3747645 res!1519094) b!3747649))

(assert (= (and b!3747649 res!1519093) b!3747658))

(assert (= (and b!3747658 (not res!1519096)) b!3747659))

(assert (= (and b!3747659 (not res!1519089)) b!3747653))

(assert (= b!3747656 b!3747657))

(assert (= start!351842 b!3747656))

(assert (= b!3747652 b!3747648))

(assert (= b!3747654 b!3747652))

(assert (= (and start!351842 ((_ is Cons!39868) rules!4213)) b!3747654))

(assert (= b!3747647 b!3747651))

(assert (= start!351842 b!3747647))

(declare-fun m!4239715 () Bool)

(assert (=> b!3747656 m!4239715))

(declare-fun m!4239717 () Bool)

(assert (=> b!3747656 m!4239717))

(declare-fun m!4239719 () Bool)

(assert (=> b!3747660 m!4239719))

(assert (=> b!3747660 m!4239719))

(declare-fun m!4239721 () Bool)

(assert (=> b!3747660 m!4239721))

(declare-fun m!4239723 () Bool)

(assert (=> b!3747653 m!4239723))

(declare-fun m!4239725 () Bool)

(assert (=> b!3747653 m!4239725))

(declare-fun m!4239727 () Bool)

(assert (=> b!3747647 m!4239727))

(declare-fun m!4239729 () Bool)

(assert (=> b!3747647 m!4239729))

(declare-fun m!4239731 () Bool)

(assert (=> b!3747652 m!4239731))

(declare-fun m!4239733 () Bool)

(assert (=> b!3747652 m!4239733))

(declare-fun m!4239735 () Bool)

(assert (=> b!3747655 m!4239735))

(declare-fun m!4239737 () Bool)

(assert (=> b!3747646 m!4239737))

(declare-fun m!4239739 () Bool)

(assert (=> b!3747659 m!4239739))

(declare-fun m!4239741 () Bool)

(assert (=> b!3747645 m!4239741))

(declare-fun m!4239743 () Bool)

(assert (=> b!3747658 m!4239743))

(declare-fun m!4239745 () Bool)

(assert (=> b!3747658 m!4239745))

(declare-fun m!4239747 () Bool)

(assert (=> b!3747658 m!4239747))

(check-sat (not b_next!100667) (not b!3747652) (not b_next!100675) (not b!3747659) b_and!278199 (not b!3747647) (not b!3747658) (not b!3747654) (not b!3747645) (not b_next!100673) b_and!278205 b_and!278195 b_and!278201 b_and!278203 (not b!3747655) (not b_next!100669) tp_is_empty!19001 (not b!3747653) (not b_next!100671) (not b_next!100665) b_and!278197 (not b!3747660) (not b!3747656) (not b!3747646))
(check-sat (not b_next!100667) (not b_next!100675) (not b_next!100669) b_and!278199 (not b_next!100673) b_and!278205 b_and!278195 b_and!278201 b_and!278203 (not b_next!100671) (not b_next!100665) b_and!278197)
(get-model)

(declare-fun bm!275185 () Bool)

(declare-fun call!275190 () Bool)

(assert (=> bm!275185 (= call!275190 (ruleDisjointCharsFromAllFromOtherType!961 rNSep!170 (t!302675 (t!302675 rules!4213))))))

(declare-fun d!1093600 () Bool)

(declare-fun c!648963 () Bool)

(assert (=> d!1093600 (= c!648963 (and ((_ is Cons!39868) (t!302675 rules!4213)) (not (= (isSeparator!6088 (h!45288 (t!302675 rules!4213))) (isSeparator!6088 rNSep!170)))))))

(declare-fun e!2317542 () Bool)

(assert (=> d!1093600 (= (ruleDisjointCharsFromAllFromOtherType!961 rNSep!170 (t!302675 rules!4213)) e!2317542)))

(declare-fun b!3747681 () Bool)

(declare-fun e!2317541 () Bool)

(assert (=> b!3747681 (= e!2317541 call!275190)))

(declare-fun b!3747682 () Bool)

(assert (=> b!3747682 (= e!2317542 e!2317541)))

(declare-fun res!1519119 () Bool)

(assert (=> b!3747682 (= res!1519119 (not ((_ is Cons!39868) (t!302675 rules!4213))))))

(assert (=> b!3747682 (=> res!1519119 e!2317541)))

(declare-fun b!3747683 () Bool)

(declare-fun e!2317540 () Bool)

(assert (=> b!3747683 (= e!2317542 e!2317540)))

(declare-fun res!1519118 () Bool)

(declare-fun rulesUseDisjointChars!385 (Rule!11976 Rule!11976) Bool)

(assert (=> b!3747683 (= res!1519118 (rulesUseDisjointChars!385 rNSep!170 (h!45288 (t!302675 rules!4213))))))

(assert (=> b!3747683 (=> (not res!1519118) (not e!2317540))))

(declare-fun b!3747684 () Bool)

(assert (=> b!3747684 (= e!2317540 call!275190)))

(assert (= (and d!1093600 c!648963) b!3747683))

(assert (= (and d!1093600 (not c!648963)) b!3747682))

(assert (= (and b!3747683 res!1519118) b!3747684))

(assert (= (and b!3747682 (not res!1519119)) b!3747681))

(assert (= (or b!3747684 b!3747681) bm!275185))

(declare-fun m!4239751 () Bool)

(assert (=> bm!275185 m!4239751))

(declare-fun m!4239753 () Bool)

(assert (=> b!3747683 m!4239753))

(assert (=> b!3747659 d!1093600))

(declare-fun d!1093604 () Bool)

(declare-fun lt!1299616 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5847 (List!39991) (InoxSet C!22172))

(assert (=> d!1093604 (= lt!1299616 (select (content!5847 (usedCharacters!1256 (regex!6088 rNSep!170))) c!6920))))

(declare-fun e!2317554 () Bool)

(assert (=> d!1093604 (= lt!1299616 e!2317554)))

(declare-fun res!1519131 () Bool)

(assert (=> d!1093604 (=> (not res!1519131) (not e!2317554))))

(assert (=> d!1093604 (= res!1519131 ((_ is Cons!39867) (usedCharacters!1256 (regex!6088 rNSep!170))))))

(assert (=> d!1093604 (= (contains!8136 (usedCharacters!1256 (regex!6088 rNSep!170)) c!6920) lt!1299616)))

(declare-fun b!3747695 () Bool)

(declare-fun e!2317553 () Bool)

(assert (=> b!3747695 (= e!2317554 e!2317553)))

(declare-fun res!1519130 () Bool)

(assert (=> b!3747695 (=> res!1519130 e!2317553)))

(assert (=> b!3747695 (= res!1519130 (= (h!45287 (usedCharacters!1256 (regex!6088 rNSep!170))) c!6920))))

(declare-fun b!3747696 () Bool)

(assert (=> b!3747696 (= e!2317553 (contains!8136 (t!302674 (usedCharacters!1256 (regex!6088 rNSep!170))) c!6920))))

(assert (= (and d!1093604 res!1519131) b!3747695))

(assert (= (and b!3747695 (not res!1519130)) b!3747696))

(assert (=> d!1093604 m!4239719))

(declare-fun m!4239761 () Bool)

(assert (=> d!1093604 m!4239761))

(declare-fun m!4239763 () Bool)

(assert (=> d!1093604 m!4239763))

(declare-fun m!4239765 () Bool)

(assert (=> b!3747696 m!4239765))

(assert (=> b!3747660 d!1093604))

(declare-fun b!3747719 () Bool)

(declare-fun e!2317571 () List!39991)

(declare-fun call!275199 () List!39991)

(assert (=> b!3747719 (= e!2317571 call!275199)))

(declare-fun b!3747720 () Bool)

(declare-fun e!2317572 () List!39991)

(declare-fun call!275200 () List!39991)

(assert (=> b!3747720 (= e!2317572 call!275200)))

(declare-fun b!3747721 () Bool)

(declare-fun e!2317569 () List!39991)

(assert (=> b!3747721 (= e!2317569 (Cons!39867 (c!648957 (regex!6088 rNSep!170)) Nil!39867))))

(declare-fun bm!275194 () Bool)

(declare-fun call!275202 () List!39991)

(declare-fun call!275201 () List!39991)

(declare-fun ++!9892 (List!39991 List!39991) List!39991)

(assert (=> bm!275194 (= call!275199 (++!9892 call!275202 call!275201))))

(declare-fun b!3747722 () Bool)

(assert (=> b!3747722 (= e!2317572 e!2317571)))

(declare-fun c!648974 () Bool)

(assert (=> b!3747722 (= c!648974 ((_ is Union!10993) (regex!6088 rNSep!170)))))

(declare-fun bm!275195 () Bool)

(assert (=> bm!275195 (= call!275202 (usedCharacters!1256 (ite c!648974 (regOne!22499 (regex!6088 rNSep!170)) (regOne!22498 (regex!6088 rNSep!170)))))))

(declare-fun b!3747724 () Bool)

(declare-fun c!648973 () Bool)

(assert (=> b!3747724 (= c!648973 ((_ is Star!10993) (regex!6088 rNSep!170)))))

(assert (=> b!3747724 (= e!2317569 e!2317572)))

(declare-fun b!3747725 () Bool)

(declare-fun e!2317570 () List!39991)

(assert (=> b!3747725 (= e!2317570 e!2317569)))

(declare-fun c!648972 () Bool)

(assert (=> b!3747725 (= c!648972 ((_ is ElementMatch!10993) (regex!6088 rNSep!170)))))

(declare-fun bm!275196 () Bool)

(assert (=> bm!275196 (= call!275201 call!275200)))

(declare-fun b!3747723 () Bool)

(assert (=> b!3747723 (= e!2317571 call!275199)))

(declare-fun d!1093608 () Bool)

(declare-fun c!648975 () Bool)

(assert (=> d!1093608 (= c!648975 (or ((_ is EmptyExpr!10993) (regex!6088 rNSep!170)) ((_ is EmptyLang!10993) (regex!6088 rNSep!170))))))

(assert (=> d!1093608 (= (usedCharacters!1256 (regex!6088 rNSep!170)) e!2317570)))

(declare-fun bm!275197 () Bool)

(assert (=> bm!275197 (= call!275200 (usedCharacters!1256 (ite c!648973 (reg!11322 (regex!6088 rNSep!170)) (ite c!648974 (regTwo!22499 (regex!6088 rNSep!170)) (regTwo!22498 (regex!6088 rNSep!170))))))))

(declare-fun b!3747726 () Bool)

(assert (=> b!3747726 (= e!2317570 Nil!39867)))

(assert (= (and d!1093608 c!648975) b!3747726))

(assert (= (and d!1093608 (not c!648975)) b!3747725))

(assert (= (and b!3747725 c!648972) b!3747721))

(assert (= (and b!3747725 (not c!648972)) b!3747724))

(assert (= (and b!3747724 c!648973) b!3747720))

(assert (= (and b!3747724 (not c!648973)) b!3747722))

(assert (= (and b!3747722 c!648974) b!3747723))

(assert (= (and b!3747722 (not c!648974)) b!3747719))

(assert (= (or b!3747723 b!3747719) bm!275195))

(assert (= (or b!3747723 b!3747719) bm!275196))

(assert (= (or b!3747723 b!3747719) bm!275194))

(assert (= (or b!3747720 bm!275196) bm!275197))

(declare-fun m!4239779 () Bool)

(assert (=> bm!275194 m!4239779))

(declare-fun m!4239781 () Bool)

(assert (=> bm!275195 m!4239781))

(declare-fun m!4239785 () Bool)

(assert (=> bm!275197 m!4239785))

(assert (=> b!3747660 d!1093608))

(declare-fun d!1093618 () Bool)

(declare-fun lt!1299624 () Bool)

(declare-fun content!5849 (List!39992) (InoxSet Rule!11976))

(assert (=> d!1093618 (= lt!1299624 (select (content!5849 rules!4213) rSep!170))))

(declare-fun e!2317586 () Bool)

(assert (=> d!1093618 (= lt!1299624 e!2317586)))

(declare-fun res!1519149 () Bool)

(assert (=> d!1093618 (=> (not res!1519149) (not e!2317586))))

(assert (=> d!1093618 (= res!1519149 ((_ is Cons!39868) rules!4213))))

(assert (=> d!1093618 (= (contains!8135 rules!4213 rSep!170) lt!1299624)))

(declare-fun b!3747740 () Bool)

(declare-fun e!2317585 () Bool)

(assert (=> b!3747740 (= e!2317586 e!2317585)))

(declare-fun res!1519150 () Bool)

(assert (=> b!3747740 (=> res!1519150 e!2317585)))

(assert (=> b!3747740 (= res!1519150 (= (h!45288 rules!4213) rSep!170))))

(declare-fun b!3747741 () Bool)

(assert (=> b!3747741 (= e!2317585 (contains!8135 (t!302675 rules!4213) rSep!170))))

(assert (= (and d!1093618 res!1519149) b!3747740))

(assert (= (and b!3747740 (not res!1519150)) b!3747741))

(declare-fun m!4239793 () Bool)

(assert (=> d!1093618 m!4239793))

(declare-fun m!4239797 () Bool)

(assert (=> d!1093618 m!4239797))

(assert (=> b!3747741 m!4239743))

(assert (=> b!3747655 d!1093618))

(declare-fun d!1093624 () Bool)

(assert (=> d!1093624 (= (inv!53377 (tag!6948 rNSep!170)) (= (mod (str.len (value!194077 (tag!6948 rNSep!170))) 2) 0))))

(assert (=> b!3747656 d!1093624))

(declare-fun d!1093628 () Bool)

(declare-fun res!1519155 () Bool)

(declare-fun e!2317599 () Bool)

(assert (=> d!1093628 (=> (not res!1519155) (not e!2317599))))

(declare-fun semiInverseModEq!2606 (Int Int) Bool)

(assert (=> d!1093628 (= res!1519155 (semiInverseModEq!2606 (toChars!8295 (transformation!6088 rNSep!170)) (toValue!8436 (transformation!6088 rNSep!170))))))

(assert (=> d!1093628 (= (inv!53379 (transformation!6088 rNSep!170)) e!2317599)))

(declare-fun b!3747762 () Bool)

(declare-fun equivClasses!2505 (Int Int) Bool)

(assert (=> b!3747762 (= e!2317599 (equivClasses!2505 (toChars!8295 (transformation!6088 rNSep!170)) (toValue!8436 (transformation!6088 rNSep!170))))))

(assert (= (and d!1093628 res!1519155) b!3747762))

(declare-fun m!4239803 () Bool)

(assert (=> d!1093628 m!4239803))

(declare-fun m!4239805 () Bool)

(assert (=> b!3747762 m!4239805))

(assert (=> b!3747656 d!1093628))

(declare-fun bm!275207 () Bool)

(declare-fun call!275212 () Bool)

(assert (=> bm!275207 (= call!275212 (ruleDisjointCharsFromAllFromOtherType!961 rNSep!170 (t!302675 rules!4213)))))

(declare-fun d!1093630 () Bool)

(declare-fun c!648985 () Bool)

(assert (=> d!1093630 (= c!648985 (and ((_ is Cons!39868) rules!4213) (not (= (isSeparator!6088 (h!45288 rules!4213)) (isSeparator!6088 rNSep!170)))))))

(declare-fun e!2317602 () Bool)

(assert (=> d!1093630 (= (ruleDisjointCharsFromAllFromOtherType!961 rNSep!170 rules!4213) e!2317602)))

(declare-fun b!3747763 () Bool)

(declare-fun e!2317601 () Bool)

(assert (=> b!3747763 (= e!2317601 call!275212)))

(declare-fun b!3747764 () Bool)

(assert (=> b!3747764 (= e!2317602 e!2317601)))

(declare-fun res!1519157 () Bool)

(assert (=> b!3747764 (= res!1519157 (not ((_ is Cons!39868) rules!4213)))))

(assert (=> b!3747764 (=> res!1519157 e!2317601)))

(declare-fun b!3747765 () Bool)

(declare-fun e!2317600 () Bool)

(assert (=> b!3747765 (= e!2317602 e!2317600)))

(declare-fun res!1519156 () Bool)

(assert (=> b!3747765 (= res!1519156 (rulesUseDisjointChars!385 rNSep!170 (h!45288 rules!4213)))))

(assert (=> b!3747765 (=> (not res!1519156) (not e!2317600))))

(declare-fun b!3747766 () Bool)

(assert (=> b!3747766 (= e!2317600 call!275212)))

(assert (= (and d!1093630 c!648985) b!3747765))

(assert (= (and d!1093630 (not c!648985)) b!3747764))

(assert (= (and b!3747765 res!1519156) b!3747766))

(assert (= (and b!3747764 (not res!1519157)) b!3747763))

(assert (= (or b!3747766 b!3747763) bm!275207))

(assert (=> bm!275207 m!4239739))

(declare-fun m!4239807 () Bool)

(assert (=> b!3747765 m!4239807))

(assert (=> b!3747645 d!1093630))

(declare-fun d!1093632 () Bool)

(declare-fun res!1519160 () Bool)

(declare-fun e!2317611 () Bool)

(assert (=> d!1093632 (=> (not res!1519160) (not e!2317611))))

(declare-fun rulesValid!2363 (LexerInterface!5677 List!39992) Bool)

(assert (=> d!1093632 (= res!1519160 (rulesValid!2363 thiss!27193 rules!4213))))

(assert (=> d!1093632 (= (rulesInvariant!5074 thiss!27193 rules!4213) e!2317611)))

(declare-fun b!3747781 () Bool)

(declare-datatypes ((List!39994 0))(
  ( (Nil!39870) (Cons!39870 (h!45290 String!45216) (t!302677 List!39994)) )
))
(declare-fun noDuplicateTag!2364 (LexerInterface!5677 List!39992 List!39994) Bool)

(assert (=> b!3747781 (= e!2317611 (noDuplicateTag!2364 thiss!27193 rules!4213 Nil!39870))))

(assert (= (and d!1093632 res!1519160) b!3747781))

(declare-fun m!4239815 () Bool)

(assert (=> d!1093632 m!4239815))

(declare-fun m!4239817 () Bool)

(assert (=> b!3747781 m!4239817))

(assert (=> b!3747646 d!1093632))

(declare-fun d!1093636 () Bool)

(assert (=> d!1093636 (= (inv!53377 (tag!6948 (h!45288 rules!4213))) (= (mod (str.len (value!194077 (tag!6948 (h!45288 rules!4213)))) 2) 0))))

(assert (=> b!3747652 d!1093636))

(declare-fun d!1093638 () Bool)

(declare-fun res!1519161 () Bool)

(declare-fun e!2317612 () Bool)

(assert (=> d!1093638 (=> (not res!1519161) (not e!2317612))))

(assert (=> d!1093638 (= res!1519161 (semiInverseModEq!2606 (toChars!8295 (transformation!6088 (h!45288 rules!4213))) (toValue!8436 (transformation!6088 (h!45288 rules!4213)))))))

(assert (=> d!1093638 (= (inv!53379 (transformation!6088 (h!45288 rules!4213))) e!2317612)))

(declare-fun b!3747782 () Bool)

(assert (=> b!3747782 (= e!2317612 (equivClasses!2505 (toChars!8295 (transformation!6088 (h!45288 rules!4213))) (toValue!8436 (transformation!6088 (h!45288 rules!4213)))))))

(assert (= (and d!1093638 res!1519161) b!3747782))

(declare-fun m!4239819 () Bool)

(assert (=> d!1093638 m!4239819))

(declare-fun m!4239821 () Bool)

(assert (=> b!3747782 m!4239821))

(assert (=> b!3747652 d!1093638))

(declare-fun d!1093640 () Bool)

(declare-fun lt!1299629 () Bool)

(assert (=> d!1093640 (= lt!1299629 (select (content!5849 (t!302675 rules!4213)) rSep!170))))

(declare-fun e!2317615 () Bool)

(assert (=> d!1093640 (= lt!1299629 e!2317615)))

(declare-fun res!1519162 () Bool)

(assert (=> d!1093640 (=> (not res!1519162) (not e!2317615))))

(assert (=> d!1093640 (= res!1519162 ((_ is Cons!39868) (t!302675 rules!4213)))))

(assert (=> d!1093640 (= (contains!8135 (t!302675 rules!4213) rSep!170) lt!1299629)))

(declare-fun b!3747785 () Bool)

(declare-fun e!2317614 () Bool)

(assert (=> b!3747785 (= e!2317615 e!2317614)))

(declare-fun res!1519163 () Bool)

(assert (=> b!3747785 (=> res!1519163 e!2317614)))

(assert (=> b!3747785 (= res!1519163 (= (h!45288 (t!302675 rules!4213)) rSep!170))))

(declare-fun b!3747786 () Bool)

(assert (=> b!3747786 (= e!2317614 (contains!8135 (t!302675 (t!302675 rules!4213)) rSep!170))))

(assert (= (and d!1093640 res!1519162) b!3747785))

(assert (= (and b!3747785 (not res!1519163)) b!3747786))

(declare-fun m!4239825 () Bool)

(assert (=> d!1093640 m!4239825))

(declare-fun m!4239827 () Bool)

(assert (=> d!1093640 m!4239827))

(declare-fun m!4239829 () Bool)

(assert (=> b!3747786 m!4239829))

(assert (=> b!3747658 d!1093640))

(declare-fun d!1093647 () Bool)

(declare-fun res!1519165 () Bool)

(declare-fun e!2317618 () Bool)

(assert (=> d!1093647 (=> (not res!1519165) (not e!2317618))))

(assert (=> d!1093647 (= res!1519165 (rulesValid!2363 thiss!27193 (t!302675 rules!4213)))))

(assert (=> d!1093647 (= (rulesInvariant!5074 thiss!27193 (t!302675 rules!4213)) e!2317618)))

(declare-fun b!3747790 () Bool)

(assert (=> b!3747790 (= e!2317618 (noDuplicateTag!2364 thiss!27193 (t!302675 rules!4213) Nil!39870))))

(assert (= (and d!1093647 res!1519165) b!3747790))

(declare-fun m!4239835 () Bool)

(assert (=> d!1093647 m!4239835))

(declare-fun m!4239837 () Bool)

(assert (=> b!3747790 m!4239837))

(assert (=> b!3747658 d!1093647))

(declare-fun d!1093652 () Bool)

(assert (=> d!1093652 (rulesInvariant!5074 thiss!27193 (t!302675 rules!4213))))

(declare-fun lt!1299634 () Unit!57688)

(declare-fun choose!22250 (LexerInterface!5677 Rule!11976 List!39992) Unit!57688)

(assert (=> d!1093652 (= lt!1299634 (choose!22250 thiss!27193 (h!45288 rules!4213) (t!302675 rules!4213)))))

(assert (=> d!1093652 (rulesInvariant!5074 thiss!27193 (Cons!39868 (h!45288 rules!4213) (t!302675 rules!4213)))))

(assert (=> d!1093652 (= (lemmaInvariantOnRulesThenOnTail!718 thiss!27193 (h!45288 rules!4213) (t!302675 rules!4213)) lt!1299634)))

(declare-fun bs!575339 () Bool)

(assert (= bs!575339 d!1093652))

(assert (=> bs!575339 m!4239745))

(declare-fun m!4239851 () Bool)

(assert (=> bs!575339 m!4239851))

(declare-fun m!4239853 () Bool)

(assert (=> bs!575339 m!4239853))

(assert (=> b!3747658 d!1093652))

(declare-fun d!1093658 () Bool)

(assert (=> d!1093658 (= (inv!53377 (tag!6948 rSep!170)) (= (mod (str.len (value!194077 (tag!6948 rSep!170))) 2) 0))))

(assert (=> b!3747647 d!1093658))

(declare-fun d!1093660 () Bool)

(declare-fun res!1519169 () Bool)

(declare-fun e!2317639 () Bool)

(assert (=> d!1093660 (=> (not res!1519169) (not e!2317639))))

(assert (=> d!1093660 (= res!1519169 (semiInverseModEq!2606 (toChars!8295 (transformation!6088 rSep!170)) (toValue!8436 (transformation!6088 rSep!170))))))

(assert (=> d!1093660 (= (inv!53379 (transformation!6088 rSep!170)) e!2317639)))

(declare-fun b!3747827 () Bool)

(assert (=> b!3747827 (= e!2317639 (equivClasses!2505 (toChars!8295 (transformation!6088 rSep!170)) (toValue!8436 (transformation!6088 rSep!170))))))

(assert (= (and d!1093660 res!1519169) b!3747827))

(declare-fun m!4239855 () Bool)

(assert (=> d!1093660 m!4239855))

(declare-fun m!4239857 () Bool)

(assert (=> b!3747827 m!4239857))

(assert (=> b!3747647 d!1093660))

(declare-fun d!1093662 () Bool)

(declare-fun lt!1299637 () Int)

(assert (=> d!1093662 (>= lt!1299637 0)))

(declare-fun e!2317642 () Int)

(assert (=> d!1093662 (= lt!1299637 e!2317642)))

(declare-fun c!648996 () Bool)

(assert (=> d!1093662 (= c!648996 ((_ is Nil!39868) (t!302675 rules!4213)))))

(assert (=> d!1093662 (= (ListPrimitiveSize!261 (t!302675 rules!4213)) lt!1299637)))

(declare-fun b!3747832 () Bool)

(assert (=> b!3747832 (= e!2317642 0)))

(declare-fun b!3747833 () Bool)

(assert (=> b!3747833 (= e!2317642 (+ 1 (ListPrimitiveSize!261 (t!302675 (t!302675 rules!4213)))))))

(assert (= (and d!1093662 c!648996) b!3747832))

(assert (= (and d!1093662 (not c!648996)) b!3747833))

(declare-fun m!4239859 () Bool)

(assert (=> b!3747833 m!4239859))

(assert (=> b!3747653 d!1093662))

(declare-fun d!1093664 () Bool)

(declare-fun lt!1299638 () Int)

(assert (=> d!1093664 (>= lt!1299638 0)))

(declare-fun e!2317643 () Int)

(assert (=> d!1093664 (= lt!1299638 e!2317643)))

(declare-fun c!648997 () Bool)

(assert (=> d!1093664 (= c!648997 ((_ is Nil!39868) rules!4213))))

(assert (=> d!1093664 (= (ListPrimitiveSize!261 rules!4213) lt!1299638)))

(declare-fun b!3747834 () Bool)

(assert (=> b!3747834 (= e!2317643 0)))

(declare-fun b!3747835 () Bool)

(assert (=> b!3747835 (= e!2317643 (+ 1 (ListPrimitiveSize!261 (t!302675 rules!4213))))))

(assert (= (and d!1093664 c!648997) b!3747834))

(assert (= (and d!1093664 (not c!648997)) b!3747835))

(assert (=> b!3747835 m!4239723))

(assert (=> b!3747653 d!1093664))

(declare-fun b!3747846 () Bool)

(declare-fun b_free!99977 () Bool)

(declare-fun b_next!100681 () Bool)

(assert (=> b!3747846 (= b_free!99977 (not b_next!100681))))

(declare-fun tp!1143571 () Bool)

(declare-fun b_and!278211 () Bool)

(assert (=> b!3747846 (= tp!1143571 b_and!278211)))

(declare-fun b_free!99979 () Bool)

(declare-fun b_next!100683 () Bool)

(assert (=> b!3747846 (= b_free!99979 (not b_next!100683))))

(declare-fun tp!1143570 () Bool)

(declare-fun b_and!278213 () Bool)

(assert (=> b!3747846 (= tp!1143570 b_and!278213)))

(declare-fun e!2317652 () Bool)

(assert (=> b!3747846 (= e!2317652 (and tp!1143571 tp!1143570))))

(declare-fun tp!1143569 () Bool)

(declare-fun b!3747845 () Bool)

(declare-fun e!2317654 () Bool)

(assert (=> b!3747845 (= e!2317654 (and tp!1143569 (inv!53377 (tag!6948 (h!45288 (t!302675 rules!4213)))) (inv!53379 (transformation!6088 (h!45288 (t!302675 rules!4213)))) e!2317652))))

(declare-fun b!3747844 () Bool)

(declare-fun e!2317653 () Bool)

(declare-fun tp!1143568 () Bool)

(assert (=> b!3747844 (= e!2317653 (and e!2317654 tp!1143568))))

(assert (=> b!3747654 (= tp!1143522 e!2317653)))

(assert (= b!3747845 b!3747846))

(assert (= b!3747844 b!3747845))

(assert (= (and b!3747654 ((_ is Cons!39868) (t!302675 rules!4213))) b!3747844))

(declare-fun m!4239861 () Bool)

(assert (=> b!3747845 m!4239861))

(declare-fun m!4239863 () Bool)

(assert (=> b!3747845 m!4239863))

(declare-fun e!2317658 () Bool)

(assert (=> b!3747656 (= tp!1143513 e!2317658)))

(declare-fun b!3747858 () Bool)

(declare-fun tp!1143584 () Bool)

(declare-fun tp!1143582 () Bool)

(assert (=> b!3747858 (= e!2317658 (and tp!1143584 tp!1143582))))

(declare-fun b!3747857 () Bool)

(assert (=> b!3747857 (= e!2317658 tp_is_empty!19001)))

(declare-fun b!3747860 () Bool)

(declare-fun tp!1143583 () Bool)

(declare-fun tp!1143586 () Bool)

(assert (=> b!3747860 (= e!2317658 (and tp!1143583 tp!1143586))))

(declare-fun b!3747859 () Bool)

(declare-fun tp!1143585 () Bool)

(assert (=> b!3747859 (= e!2317658 tp!1143585)))

(assert (= (and b!3747656 ((_ is ElementMatch!10993) (regex!6088 rNSep!170))) b!3747857))

(assert (= (and b!3747656 ((_ is Concat!17312) (regex!6088 rNSep!170))) b!3747858))

(assert (= (and b!3747656 ((_ is Star!10993) (regex!6088 rNSep!170))) b!3747859))

(assert (= (and b!3747656 ((_ is Union!10993) (regex!6088 rNSep!170))) b!3747860))

(declare-fun e!2317659 () Bool)

(assert (=> b!3747652 (= tp!1143514 e!2317659)))

(declare-fun b!3747862 () Bool)

(declare-fun tp!1143589 () Bool)

(declare-fun tp!1143587 () Bool)

(assert (=> b!3747862 (= e!2317659 (and tp!1143589 tp!1143587))))

(declare-fun b!3747861 () Bool)

(assert (=> b!3747861 (= e!2317659 tp_is_empty!19001)))

(declare-fun b!3747864 () Bool)

(declare-fun tp!1143588 () Bool)

(declare-fun tp!1143591 () Bool)

(assert (=> b!3747864 (= e!2317659 (and tp!1143588 tp!1143591))))

(declare-fun b!3747863 () Bool)

(declare-fun tp!1143590 () Bool)

(assert (=> b!3747863 (= e!2317659 tp!1143590)))

(assert (= (and b!3747652 ((_ is ElementMatch!10993) (regex!6088 (h!45288 rules!4213)))) b!3747861))

(assert (= (and b!3747652 ((_ is Concat!17312) (regex!6088 (h!45288 rules!4213)))) b!3747862))

(assert (= (and b!3747652 ((_ is Star!10993) (regex!6088 (h!45288 rules!4213)))) b!3747863))

(assert (= (and b!3747652 ((_ is Union!10993) (regex!6088 (h!45288 rules!4213)))) b!3747864))

(declare-fun e!2317660 () Bool)

(assert (=> b!3747647 (= tp!1143515 e!2317660)))

(declare-fun b!3747866 () Bool)

(declare-fun tp!1143594 () Bool)

(declare-fun tp!1143592 () Bool)

(assert (=> b!3747866 (= e!2317660 (and tp!1143594 tp!1143592))))

(declare-fun b!3747865 () Bool)

(assert (=> b!3747865 (= e!2317660 tp_is_empty!19001)))

(declare-fun b!3747868 () Bool)

(declare-fun tp!1143593 () Bool)

(declare-fun tp!1143596 () Bool)

(assert (=> b!3747868 (= e!2317660 (and tp!1143593 tp!1143596))))

(declare-fun b!3747867 () Bool)

(declare-fun tp!1143595 () Bool)

(assert (=> b!3747867 (= e!2317660 tp!1143595)))

(assert (= (and b!3747647 ((_ is ElementMatch!10993) (regex!6088 rSep!170))) b!3747865))

(assert (= (and b!3747647 ((_ is Concat!17312) (regex!6088 rSep!170))) b!3747866))

(assert (= (and b!3747647 ((_ is Star!10993) (regex!6088 rSep!170))) b!3747867))

(assert (= (and b!3747647 ((_ is Union!10993) (regex!6088 rSep!170))) b!3747868))

(check-sat (not bm!275195) (not b!3747696) (not b_next!100667) (not b!3747844) (not b_next!100669) (not b!3747835) (not b!3747786) (not d!1093628) (not b_next!100673) b_and!278195 b_and!278211 (not d!1093660) (not bm!275194) b_and!278201 (not d!1093640) b_and!278203 (not bm!275185) (not b!3747866) (not b_next!100675) (not b!3747859) (not d!1093618) (not b!3747683) b_and!278213 (not b_next!100683) (not b!3747858) (not b!3747741) (not b!3747762) (not b!3747863) (not d!1093632) (not b!3747867) (not b!3747827) (not b!3747765) b_and!278199 (not b!3747790) tp_is_empty!19001 (not d!1093638) (not b_next!100671) (not b_next!100665) b_and!278197 (not d!1093652) (not b!3747860) (not b!3747833) (not bm!275207) (not b!3747781) (not d!1093604) (not b!3747782) (not bm!275197) (not b!3747864) (not b_next!100681) (not b!3747862) (not b!3747845) b_and!278205 (not d!1093647) (not b!3747868))
(check-sat (not b_next!100667) (not b_next!100675) (not b_next!100669) b_and!278199 (not b_next!100681) (not b_next!100673) b_and!278205 b_and!278195 b_and!278211 b_and!278201 b_and!278203 b_and!278213 (not b_next!100683) (not b_next!100671) (not b_next!100665) b_and!278197)
