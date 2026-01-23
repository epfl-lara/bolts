; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271824 () Bool)

(assert start!271824)

(declare-fun b!2809587 () Bool)

(declare-fun b_free!80181 () Bool)

(declare-fun b_next!80885 () Bool)

(assert (=> b!2809587 (= b_free!80181 (not b_next!80885))))

(declare-fun tp!897044 () Bool)

(declare-fun b_and!205351 () Bool)

(assert (=> b!2809587 (= tp!897044 b_and!205351)))

(declare-fun b_free!80183 () Bool)

(declare-fun b_next!80887 () Bool)

(assert (=> b!2809587 (= b_free!80183 (not b_next!80887))))

(declare-fun tp!897046 () Bool)

(declare-fun b_and!205353 () Bool)

(assert (=> b!2809587 (= tp!897046 b_and!205353)))

(declare-fun b!2809583 () Bool)

(declare-fun b_free!80185 () Bool)

(declare-fun b_next!80889 () Bool)

(assert (=> b!2809583 (= b_free!80185 (not b_next!80889))))

(declare-fun tp!897049 () Bool)

(declare-fun b_and!205355 () Bool)

(assert (=> b!2809583 (= tp!897049 b_and!205355)))

(declare-fun b_free!80187 () Bool)

(declare-fun b_next!80891 () Bool)

(assert (=> b!2809583 (= b_free!80187 (not b_next!80891))))

(declare-fun tp!897047 () Bool)

(declare-fun b_and!205357 () Bool)

(assert (=> b!2809583 (= tp!897047 b_and!205357)))

(declare-fun b!2809577 () Bool)

(declare-fun e!1776755 () Bool)

(declare-datatypes ((C!16724 0))(
  ( (C!16725 (val!10296 Int)) )
))
(declare-datatypes ((List!32895 0))(
  ( (Nil!32795) (Cons!32795 (h!38215 C!16724) (t!229711 List!32895)) )
))
(declare-fun lt!1003805 () List!32895)

(assert (=> b!2809577 (= e!1776755 (= lt!1003805 Nil!32795))))

(declare-fun b!2809578 () Bool)

(declare-fun e!1776762 () Bool)

(declare-datatypes ((List!32896 0))(
  ( (Nil!32796) (Cons!32796 (h!38216 (_ BitVec 16)) (t!229712 List!32896)) )
))
(declare-datatypes ((TokenValue!5135 0))(
  ( (FloatLiteralValue!10270 (text!36390 List!32896)) (TokenValueExt!5134 (__x!21927 Int)) (Broken!25675 (value!157904 List!32896)) (Object!5234) (End!5135) (Def!5135) (Underscore!5135) (Match!5135) (Else!5135) (Error!5135) (Case!5135) (If!5135) (Extends!5135) (Abstract!5135) (Class!5135) (Val!5135) (DelimiterValue!10270 (del!5195 List!32896)) (KeywordValue!5141 (value!157905 List!32896)) (CommentValue!10270 (value!157906 List!32896)) (WhitespaceValue!10270 (value!157907 List!32896)) (IndentationValue!5135 (value!157908 List!32896)) (String!36010) (Int32!5135) (Broken!25676 (value!157909 List!32896)) (Boolean!5136) (Unit!46823) (OperatorValue!5138 (op!5195 List!32896)) (IdentifierValue!10270 (value!157910 List!32896)) (IdentifierValue!10271 (value!157911 List!32896)) (WhitespaceValue!10271 (value!157912 List!32896)) (True!10270) (False!10270) (Broken!25677 (value!157913 List!32896)) (Broken!25678 (value!157914 List!32896)) (True!10271) (RightBrace!5135) (RightBracket!5135) (Colon!5135) (Null!5135) (Comma!5135) (LeftBracket!5135) (False!10271) (LeftBrace!5135) (ImaginaryLiteralValue!5135 (text!36391 List!32896)) (StringLiteralValue!15405 (value!157915 List!32896)) (EOFValue!5135 (value!157916 List!32896)) (IdentValue!5135 (value!157917 List!32896)) (DelimiterValue!10271 (value!157918 List!32896)) (DedentValue!5135 (value!157919 List!32896)) (NewLineValue!5135 (value!157920 List!32896)) (IntegerValue!15405 (value!157921 (_ BitVec 32)) (text!36392 List!32896)) (IntegerValue!15406 (value!157922 Int) (text!36393 List!32896)) (Times!5135) (Or!5135) (Equal!5135) (Minus!5135) (Broken!25679 (value!157923 List!32896)) (And!5135) (Div!5135) (LessEqual!5135) (Mod!5135) (Concat!13418) (Not!5135) (Plus!5135) (SpaceValue!5135 (value!157924 List!32896)) (IntegerValue!15407 (value!157925 Int) (text!36394 List!32896)) (StringLiteralValue!15406 (text!36395 List!32896)) (FloatLiteralValue!10271 (text!36396 List!32896)) (BytesLiteralValue!5135 (value!157926 List!32896)) (CommentValue!10271 (value!157927 List!32896)) (StringLiteralValue!15407 (value!157928 List!32896)) (ErrorTokenValue!5135 (msg!5196 List!32896)) )
))
(declare-datatypes ((IArray!20309 0))(
  ( (IArray!20310 (innerList!10212 List!32895)) )
))
(declare-datatypes ((Conc!10152 0))(
  ( (Node!10152 (left!24743 Conc!10152) (right!25073 Conc!10152) (csize!20534 Int) (cheight!10363 Int)) (Leaf!15462 (xs!13264 IArray!20309) (csize!20535 Int)) (Empty!10152) )
))
(declare-datatypes ((BalanceConc!19918 0))(
  ( (BalanceConc!19919 (c!455134 Conc!10152)) )
))
(declare-datatypes ((TokenValueInjection!9710 0))(
  ( (TokenValueInjection!9711 (toValue!6915 Int) (toChars!6774 Int)) )
))
(declare-datatypes ((Regex!8283 0))(
  ( (ElementMatch!8283 (c!455135 C!16724)) (Concat!13419 (regOne!17078 Regex!8283) (regTwo!17078 Regex!8283)) (EmptyExpr!8283) (Star!8283 (reg!8612 Regex!8283)) (EmptyLang!8283) (Union!8283 (regOne!17079 Regex!8283) (regTwo!17079 Regex!8283)) )
))
(declare-datatypes ((String!36011 0))(
  ( (String!36012 (value!157929 String)) )
))
(declare-datatypes ((Rule!9626 0))(
  ( (Rule!9627 (regex!4913 Regex!8283) (tag!5417 String!36011) (isSeparator!4913 Bool) (transformation!4913 TokenValueInjection!9710)) )
))
(declare-datatypes ((Token!9228 0))(
  ( (Token!9229 (value!157930 TokenValue!5135) (rule!7341 Rule!9626) (size!25564 Int) (originalCharacters!5645 List!32895)) )
))
(declare-datatypes ((List!32897 0))(
  ( (Nil!32797) (Cons!32797 (h!38217 Token!9228) (t!229713 List!32897)) )
))
(declare-fun l!4240 () List!32897)

(declare-fun ListPrimitiveSize!213 (List!32897) Int)

(assert (=> b!2809578 (= e!1776762 (not (< (ListPrimitiveSize!213 (t!229713 l!4240)) (ListPrimitiveSize!213 l!4240))))))

(declare-fun lt!1003809 () List!32895)

(declare-fun lt!1003810 () List!32895)

(declare-fun lt!1003811 () List!32895)

(declare-fun ++!8053 (List!32895 List!32895) List!32895)

(assert (=> b!2809578 (= (++!8053 (++!8053 lt!1003809 lt!1003810) lt!1003811) (++!8053 lt!1003809 (++!8053 lt!1003810 lt!1003811)))))

(declare-datatypes ((Unit!46824 0))(
  ( (Unit!46825) )
))
(declare-fun lt!1003806 () Unit!46824)

(declare-fun lemmaConcatAssociativity!1664 (List!32895 List!32895 List!32895) Unit!46824)

(assert (=> b!2809578 (= lt!1003806 (lemmaConcatAssociativity!1664 lt!1003809 lt!1003810 lt!1003811))))

(declare-datatypes ((LexerInterface!4504 0))(
  ( (LexerInterfaceExt!4501 (__x!21928 Int)) (Lexer!4502) )
))
(declare-fun thiss!13843 () LexerInterface!4504)

(declare-fun lt!1003804 () List!32897)

(declare-fun printList!1212 (LexerInterface!4504 List!32897) List!32895)

(assert (=> b!2809578 (= lt!1003811 (printList!1212 thiss!13843 lt!1003804))))

(declare-fun separatorToken!99 () Token!9228)

(declare-fun list!12281 (BalanceConc!19918) List!32895)

(declare-fun charsOf!3052 (Token!9228) BalanceConc!19918)

(assert (=> b!2809578 (= lt!1003810 (list!12281 (charsOf!3052 separatorToken!99)))))

(assert (=> b!2809578 (= lt!1003809 (list!12281 (charsOf!3052 (h!38217 l!4240))))))

(assert (=> b!2809578 e!1776755))

(declare-fun c!455133 () Bool)

(declare-fun lt!1003808 () List!32897)

(get-info :version)

(assert (=> b!2809578 (= c!455133 ((_ is Cons!32797) lt!1003808))))

(assert (=> b!2809578 (= lt!1003805 (printList!1212 thiss!13843 lt!1003808))))

(declare-fun e!1776754 () Bool)

(assert (=> b!2809578 e!1776754))

(declare-fun c!455132 () Bool)

(declare-fun lt!1003807 () List!32897)

(assert (=> b!2809578 (= c!455132 ((_ is Cons!32797) lt!1003807))))

(declare-fun lt!1003812 () List!32895)

(assert (=> b!2809578 (= lt!1003812 (printList!1212 thiss!13843 lt!1003807))))

(declare-fun $colon$colon!560 (List!32897 Token!9228) List!32897)

(assert (=> b!2809578 (= lt!1003807 ($colon$colon!560 lt!1003808 (h!38217 l!4240)))))

(assert (=> b!2809578 (= lt!1003808 ($colon$colon!560 lt!1003804 separatorToken!99))))

(declare-fun withSeparatorTokenList!148 (LexerInterface!4504 List!32897 Token!9228) List!32897)

(assert (=> b!2809578 (= lt!1003804 (withSeparatorTokenList!148 thiss!13843 (t!229713 l!4240) separatorToken!99))))

(declare-fun res!1169976 () Bool)

(assert (=> start!271824 (=> (not res!1169976) (not e!1776762))))

(assert (=> start!271824 (= res!1169976 (and ((_ is Lexer!4502) thiss!13843) (isSeparator!4913 (rule!7341 separatorToken!99)) ((_ is Cons!32797) l!4240)))))

(assert (=> start!271824 e!1776762))

(assert (=> start!271824 true))

(declare-fun e!1776753 () Bool)

(declare-fun inv!44505 (Token!9228) Bool)

(assert (=> start!271824 (and (inv!44505 separatorToken!99) e!1776753)))

(declare-fun e!1776761 () Bool)

(assert (=> start!271824 e!1776761))

(declare-fun e!1776760 () Bool)

(declare-fun tp!897048 () Bool)

(declare-fun b!2809579 () Bool)

(declare-fun e!1776752 () Bool)

(declare-fun inv!44502 (String!36011) Bool)

(declare-fun inv!44506 (TokenValueInjection!9710) Bool)

(assert (=> b!2809579 (= e!1776752 (and tp!897048 (inv!44502 (tag!5417 (rule!7341 (h!38217 l!4240)))) (inv!44506 (transformation!4913 (rule!7341 (h!38217 l!4240)))) e!1776760))))

(declare-fun b!2809580 () Bool)

(declare-fun tp!897050 () Bool)

(declare-fun e!1776759 () Bool)

(assert (=> b!2809580 (= e!1776761 (and (inv!44505 (h!38217 l!4240)) e!1776759 tp!897050))))

(declare-fun tp!897052 () Bool)

(declare-fun b!2809581 () Bool)

(declare-fun inv!21 (TokenValue!5135) Bool)

(assert (=> b!2809581 (= e!1776759 (and (inv!21 (value!157930 (h!38217 l!4240))) e!1776752 tp!897052))))

(declare-fun b!2809582 () Bool)

(declare-fun tp!897051 () Bool)

(declare-fun e!1776757 () Bool)

(assert (=> b!2809582 (= e!1776753 (and (inv!21 (value!157930 separatorToken!99)) e!1776757 tp!897051))))

(declare-fun e!1776750 () Bool)

(assert (=> b!2809583 (= e!1776750 (and tp!897049 tp!897047))))

(declare-fun b!2809584 () Bool)

(assert (=> b!2809584 (= e!1776755 (= lt!1003805 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003808))) (printList!1212 thiss!13843 (t!229713 lt!1003808)))))))

(declare-fun b!2809585 () Bool)

(declare-fun tp!897045 () Bool)

(assert (=> b!2809585 (= e!1776757 (and tp!897045 (inv!44502 (tag!5417 (rule!7341 separatorToken!99))) (inv!44506 (transformation!4913 (rule!7341 separatorToken!99))) e!1776750))))

(declare-fun b!2809586 () Bool)

(assert (=> b!2809586 (= e!1776754 (= lt!1003812 Nil!32795))))

(assert (=> b!2809587 (= e!1776760 (and tp!897044 tp!897046))))

(declare-fun b!2809588 () Bool)

(assert (=> b!2809588 (= e!1776754 (= lt!1003812 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003807))) (printList!1212 thiss!13843 (t!229713 lt!1003807)))))))

(assert (= (and start!271824 res!1169976) b!2809578))

(assert (= (and b!2809578 c!455132) b!2809588))

(assert (= (and b!2809578 (not c!455132)) b!2809586))

(assert (= (and b!2809578 c!455133) b!2809584))

(assert (= (and b!2809578 (not c!455133)) b!2809577))

(assert (= b!2809585 b!2809583))

(assert (= b!2809582 b!2809585))

(assert (= start!271824 b!2809582))

(assert (= b!2809579 b!2809587))

(assert (= b!2809581 b!2809579))

(assert (= b!2809580 b!2809581))

(assert (= (and start!271824 ((_ is Cons!32797) l!4240)) b!2809580))

(declare-fun m!3239151 () Bool)

(assert (=> b!2809584 m!3239151))

(assert (=> b!2809584 m!3239151))

(declare-fun m!3239153 () Bool)

(assert (=> b!2809584 m!3239153))

(declare-fun m!3239155 () Bool)

(assert (=> b!2809584 m!3239155))

(assert (=> b!2809584 m!3239153))

(assert (=> b!2809584 m!3239155))

(declare-fun m!3239157 () Bool)

(assert (=> b!2809584 m!3239157))

(declare-fun m!3239159 () Bool)

(assert (=> b!2809579 m!3239159))

(declare-fun m!3239161 () Bool)

(assert (=> b!2809579 m!3239161))

(declare-fun m!3239163 () Bool)

(assert (=> b!2809588 m!3239163))

(assert (=> b!2809588 m!3239163))

(declare-fun m!3239165 () Bool)

(assert (=> b!2809588 m!3239165))

(declare-fun m!3239167 () Bool)

(assert (=> b!2809588 m!3239167))

(assert (=> b!2809588 m!3239165))

(assert (=> b!2809588 m!3239167))

(declare-fun m!3239169 () Bool)

(assert (=> b!2809588 m!3239169))

(declare-fun m!3239171 () Bool)

(assert (=> b!2809582 m!3239171))

(declare-fun m!3239173 () Bool)

(assert (=> start!271824 m!3239173))

(declare-fun m!3239175 () Bool)

(assert (=> b!2809578 m!3239175))

(declare-fun m!3239177 () Bool)

(assert (=> b!2809578 m!3239177))

(declare-fun m!3239179 () Bool)

(assert (=> b!2809578 m!3239179))

(declare-fun m!3239181 () Bool)

(assert (=> b!2809578 m!3239181))

(declare-fun m!3239183 () Bool)

(assert (=> b!2809578 m!3239183))

(declare-fun m!3239185 () Bool)

(assert (=> b!2809578 m!3239185))

(assert (=> b!2809578 m!3239177))

(declare-fun m!3239187 () Bool)

(assert (=> b!2809578 m!3239187))

(declare-fun m!3239189 () Bool)

(assert (=> b!2809578 m!3239189))

(declare-fun m!3239191 () Bool)

(assert (=> b!2809578 m!3239191))

(assert (=> b!2809578 m!3239183))

(declare-fun m!3239193 () Bool)

(assert (=> b!2809578 m!3239193))

(declare-fun m!3239195 () Bool)

(assert (=> b!2809578 m!3239195))

(declare-fun m!3239197 () Bool)

(assert (=> b!2809578 m!3239197))

(declare-fun m!3239199 () Bool)

(assert (=> b!2809578 m!3239199))

(declare-fun m!3239201 () Bool)

(assert (=> b!2809578 m!3239201))

(assert (=> b!2809578 m!3239197))

(declare-fun m!3239203 () Bool)

(assert (=> b!2809578 m!3239203))

(assert (=> b!2809578 m!3239193))

(declare-fun m!3239205 () Bool)

(assert (=> b!2809578 m!3239205))

(declare-fun m!3239207 () Bool)

(assert (=> b!2809578 m!3239207))

(declare-fun m!3239209 () Bool)

(assert (=> b!2809580 m!3239209))

(declare-fun m!3239211 () Bool)

(assert (=> b!2809581 m!3239211))

(declare-fun m!3239213 () Bool)

(assert (=> b!2809585 m!3239213))

(declare-fun m!3239215 () Bool)

(assert (=> b!2809585 m!3239215))

(check-sat (not b!2809582) (not b!2809579) (not b!2809588) (not b!2809585) (not start!271824) (not b!2809578) (not b!2809580) (not b!2809584) b_and!205351 (not b_next!80887) (not b!2809581) (not b_next!80889) b_and!205357 (not b_next!80891) (not b_next!80885) b_and!205353 b_and!205355)
(check-sat b_and!205351 (not b_next!80887) (not b_next!80889) b_and!205357 (not b_next!80891) (not b_next!80885) b_and!205353 b_and!205355)
(get-model)

(declare-fun b!2809605 () Bool)

(declare-fun e!1776774 () Bool)

(declare-fun e!1776772 () Bool)

(assert (=> b!2809605 (= e!1776774 e!1776772)))

(declare-fun c!455141 () Bool)

(assert (=> b!2809605 (= c!455141 ((_ is IntegerValue!15406) (value!157930 (h!38217 l!4240))))))

(declare-fun b!2809607 () Bool)

(declare-fun e!1776773 () Bool)

(declare-fun inv!15 (TokenValue!5135) Bool)

(assert (=> b!2809607 (= e!1776773 (inv!15 (value!157930 (h!38217 l!4240))))))

(declare-fun b!2809608 () Bool)

(declare-fun inv!16 (TokenValue!5135) Bool)

(assert (=> b!2809608 (= e!1776774 (inv!16 (value!157930 (h!38217 l!4240))))))

(declare-fun b!2809609 () Bool)

(declare-fun inv!17 (TokenValue!5135) Bool)

(assert (=> b!2809609 (= e!1776772 (inv!17 (value!157930 (h!38217 l!4240))))))

(declare-fun d!815514 () Bool)

(declare-fun c!455140 () Bool)

(assert (=> d!815514 (= c!455140 ((_ is IntegerValue!15405) (value!157930 (h!38217 l!4240))))))

(assert (=> d!815514 (= (inv!21 (value!157930 (h!38217 l!4240))) e!1776774)))

(declare-fun b!2809606 () Bool)

(declare-fun res!1169992 () Bool)

(assert (=> b!2809606 (=> res!1169992 e!1776773)))

(assert (=> b!2809606 (= res!1169992 (not ((_ is IntegerValue!15407) (value!157930 (h!38217 l!4240)))))))

(assert (=> b!2809606 (= e!1776772 e!1776773)))

(assert (= (and d!815514 c!455140) b!2809608))

(assert (= (and d!815514 (not c!455140)) b!2809605))

(assert (= (and b!2809605 c!455141) b!2809609))

(assert (= (and b!2809605 (not c!455141)) b!2809606))

(assert (= (and b!2809606 (not res!1169992)) b!2809607))

(declare-fun m!3239217 () Bool)

(assert (=> b!2809607 m!3239217))

(declare-fun m!3239219 () Bool)

(assert (=> b!2809608 m!3239219))

(declare-fun m!3239221 () Bool)

(assert (=> b!2809609 m!3239221))

(assert (=> b!2809581 d!815514))

(declare-fun b!2809614 () Bool)

(declare-fun e!1776779 () Bool)

(declare-fun e!1776777 () Bool)

(assert (=> b!2809614 (= e!1776779 e!1776777)))

(declare-fun c!455143 () Bool)

(assert (=> b!2809614 (= c!455143 ((_ is IntegerValue!15406) (value!157930 separatorToken!99)))))

(declare-fun b!2809616 () Bool)

(declare-fun e!1776778 () Bool)

(assert (=> b!2809616 (= e!1776778 (inv!15 (value!157930 separatorToken!99)))))

(declare-fun b!2809617 () Bool)

(assert (=> b!2809617 (= e!1776779 (inv!16 (value!157930 separatorToken!99)))))

(declare-fun b!2809618 () Bool)

(assert (=> b!2809618 (= e!1776777 (inv!17 (value!157930 separatorToken!99)))))

(declare-fun d!815518 () Bool)

(declare-fun c!455142 () Bool)

(assert (=> d!815518 (= c!455142 ((_ is IntegerValue!15405) (value!157930 separatorToken!99)))))

(assert (=> d!815518 (= (inv!21 (value!157930 separatorToken!99)) e!1776779)))

(declare-fun b!2809615 () Bool)

(declare-fun res!1169993 () Bool)

(assert (=> b!2809615 (=> res!1169993 e!1776778)))

(assert (=> b!2809615 (= res!1169993 (not ((_ is IntegerValue!15407) (value!157930 separatorToken!99))))))

(assert (=> b!2809615 (= e!1776777 e!1776778)))

(assert (= (and d!815518 c!455142) b!2809617))

(assert (= (and d!815518 (not c!455142)) b!2809614))

(assert (= (and b!2809614 c!455143) b!2809618))

(assert (= (and b!2809614 (not c!455143)) b!2809615))

(assert (= (and b!2809615 (not res!1169993)) b!2809616))

(declare-fun m!3239223 () Bool)

(assert (=> b!2809616 m!3239223))

(declare-fun m!3239225 () Bool)

(assert (=> b!2809617 m!3239225))

(declare-fun m!3239227 () Bool)

(assert (=> b!2809618 m!3239227))

(assert (=> b!2809582 d!815518))

(declare-fun b!2809645 () Bool)

(declare-fun res!1170002 () Bool)

(declare-fun e!1776794 () Bool)

(assert (=> b!2809645 (=> (not res!1170002) (not e!1776794))))

(declare-fun lt!1003815 () List!32895)

(declare-fun size!25566 (List!32895) Int)

(assert (=> b!2809645 (= res!1170002 (= (size!25566 lt!1003815) (+ (size!25566 (list!12281 (charsOf!3052 (h!38217 lt!1003807)))) (size!25566 (printList!1212 thiss!13843 (t!229713 lt!1003807))))))))

(declare-fun b!2809643 () Bool)

(declare-fun e!1776795 () List!32895)

(assert (=> b!2809643 (= e!1776795 (printList!1212 thiss!13843 (t!229713 lt!1003807)))))

(declare-fun d!815520 () Bool)

(assert (=> d!815520 e!1776794))

(declare-fun res!1170001 () Bool)

(assert (=> d!815520 (=> (not res!1170001) (not e!1776794))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4565 (List!32895) (InoxSet C!16724))

(assert (=> d!815520 (= res!1170001 (= (content!4565 lt!1003815) ((_ map or) (content!4565 (list!12281 (charsOf!3052 (h!38217 lt!1003807)))) (content!4565 (printList!1212 thiss!13843 (t!229713 lt!1003807))))))))

(assert (=> d!815520 (= lt!1003815 e!1776795)))

(declare-fun c!455152 () Bool)

(assert (=> d!815520 (= c!455152 ((_ is Nil!32795) (list!12281 (charsOf!3052 (h!38217 lt!1003807)))))))

(assert (=> d!815520 (= (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003807))) (printList!1212 thiss!13843 (t!229713 lt!1003807))) lt!1003815)))

(declare-fun b!2809646 () Bool)

(assert (=> b!2809646 (= e!1776794 (or (not (= (printList!1212 thiss!13843 (t!229713 lt!1003807)) Nil!32795)) (= lt!1003815 (list!12281 (charsOf!3052 (h!38217 lt!1003807))))))))

(declare-fun b!2809644 () Bool)

(assert (=> b!2809644 (= e!1776795 (Cons!32795 (h!38215 (list!12281 (charsOf!3052 (h!38217 lt!1003807)))) (++!8053 (t!229711 (list!12281 (charsOf!3052 (h!38217 lt!1003807)))) (printList!1212 thiss!13843 (t!229713 lt!1003807)))))))

(assert (= (and d!815520 c!455152) b!2809643))

(assert (= (and d!815520 (not c!455152)) b!2809644))

(assert (= (and d!815520 res!1170001) b!2809645))

(assert (= (and b!2809645 res!1170002) b!2809646))

(declare-fun m!3239247 () Bool)

(assert (=> b!2809645 m!3239247))

(assert (=> b!2809645 m!3239165))

(declare-fun m!3239249 () Bool)

(assert (=> b!2809645 m!3239249))

(assert (=> b!2809645 m!3239167))

(declare-fun m!3239251 () Bool)

(assert (=> b!2809645 m!3239251))

(declare-fun m!3239253 () Bool)

(assert (=> d!815520 m!3239253))

(assert (=> d!815520 m!3239165))

(declare-fun m!3239255 () Bool)

(assert (=> d!815520 m!3239255))

(assert (=> d!815520 m!3239167))

(declare-fun m!3239257 () Bool)

(assert (=> d!815520 m!3239257))

(assert (=> b!2809644 m!3239167))

(declare-fun m!3239259 () Bool)

(assert (=> b!2809644 m!3239259))

(assert (=> b!2809588 d!815520))

(declare-fun d!815528 () Bool)

(declare-fun list!12283 (Conc!10152) List!32895)

(assert (=> d!815528 (= (list!12281 (charsOf!3052 (h!38217 lt!1003807))) (list!12283 (c!455134 (charsOf!3052 (h!38217 lt!1003807)))))))

(declare-fun bs!516323 () Bool)

(assert (= bs!516323 d!815528))

(declare-fun m!3239261 () Bool)

(assert (=> bs!516323 m!3239261))

(assert (=> b!2809588 d!815528))

(declare-fun d!815530 () Bool)

(declare-fun lt!1003818 () BalanceConc!19918)

(assert (=> d!815530 (= (list!12281 lt!1003818) (originalCharacters!5645 (h!38217 lt!1003807)))))

(declare-fun dynLambda!13729 (Int TokenValue!5135) BalanceConc!19918)

(assert (=> d!815530 (= lt!1003818 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003807)))) (value!157930 (h!38217 lt!1003807))))))

(assert (=> d!815530 (= (charsOf!3052 (h!38217 lt!1003807)) lt!1003818)))

(declare-fun b_lambda!84091 () Bool)

(assert (=> (not b_lambda!84091) (not d!815530)))

(declare-fun t!229721 () Bool)

(declare-fun tb!153547 () Bool)

(assert (=> (and b!2809587 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003807))))) t!229721) tb!153547))

(declare-fun b!2809657 () Bool)

(declare-fun e!1776803 () Bool)

(declare-fun tp!897059 () Bool)

(declare-fun inv!44509 (Conc!10152) Bool)

(assert (=> b!2809657 (= e!1776803 (and (inv!44509 (c!455134 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003807)))) (value!157930 (h!38217 lt!1003807))))) tp!897059))))

(declare-fun result!190852 () Bool)

(declare-fun inv!44510 (BalanceConc!19918) Bool)

(assert (=> tb!153547 (= result!190852 (and (inv!44510 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003807)))) (value!157930 (h!38217 lt!1003807)))) e!1776803))))

(assert (= tb!153547 b!2809657))

(declare-fun m!3239279 () Bool)

(assert (=> b!2809657 m!3239279))

(declare-fun m!3239281 () Bool)

(assert (=> tb!153547 m!3239281))

(assert (=> d!815530 t!229721))

(declare-fun b_and!205367 () Bool)

(assert (= b_and!205353 (and (=> t!229721 result!190852) b_and!205367)))

(declare-fun tb!153551 () Bool)

(declare-fun t!229725 () Bool)

(assert (=> (and b!2809583 (= (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003807))))) t!229725) tb!153551))

(declare-fun result!190858 () Bool)

(assert (= result!190858 result!190852))

(assert (=> d!815530 t!229725))

(declare-fun b_and!205369 () Bool)

(assert (= b_and!205357 (and (=> t!229725 result!190858) b_and!205369)))

(declare-fun m!3239283 () Bool)

(assert (=> d!815530 m!3239283))

(declare-fun m!3239285 () Bool)

(assert (=> d!815530 m!3239285))

(assert (=> b!2809588 d!815530))

(declare-fun d!815536 () Bool)

(declare-fun c!455157 () Bool)

(assert (=> d!815536 (= c!455157 ((_ is Cons!32797) (t!229713 lt!1003807)))))

(declare-fun e!1776810 () List!32895)

(assert (=> d!815536 (= (printList!1212 thiss!13843 (t!229713 lt!1003807)) e!1776810)))

(declare-fun b!2809670 () Bool)

(assert (=> b!2809670 (= e!1776810 (++!8053 (list!12281 (charsOf!3052 (h!38217 (t!229713 lt!1003807)))) (printList!1212 thiss!13843 (t!229713 (t!229713 lt!1003807)))))))

(declare-fun b!2809671 () Bool)

(assert (=> b!2809671 (= e!1776810 Nil!32795)))

(assert (= (and d!815536 c!455157) b!2809670))

(assert (= (and d!815536 (not c!455157)) b!2809671))

(declare-fun m!3239287 () Bool)

(assert (=> b!2809670 m!3239287))

(assert (=> b!2809670 m!3239287))

(declare-fun m!3239289 () Bool)

(assert (=> b!2809670 m!3239289))

(declare-fun m!3239291 () Bool)

(assert (=> b!2809670 m!3239291))

(assert (=> b!2809670 m!3239289))

(assert (=> b!2809670 m!3239291))

(declare-fun m!3239293 () Bool)

(assert (=> b!2809670 m!3239293))

(assert (=> b!2809588 d!815536))

(declare-fun b!2809674 () Bool)

(declare-fun res!1170013 () Bool)

(declare-fun e!1776811 () Bool)

(assert (=> b!2809674 (=> (not res!1170013) (not e!1776811))))

(declare-fun lt!1003821 () List!32895)

(assert (=> b!2809674 (= res!1170013 (= (size!25566 lt!1003821) (+ (size!25566 (++!8053 lt!1003809 lt!1003810)) (size!25566 lt!1003811))))))

(declare-fun b!2809672 () Bool)

(declare-fun e!1776812 () List!32895)

(assert (=> b!2809672 (= e!1776812 lt!1003811)))

(declare-fun d!815538 () Bool)

(assert (=> d!815538 e!1776811))

(declare-fun res!1170012 () Bool)

(assert (=> d!815538 (=> (not res!1170012) (not e!1776811))))

(assert (=> d!815538 (= res!1170012 (= (content!4565 lt!1003821) ((_ map or) (content!4565 (++!8053 lt!1003809 lt!1003810)) (content!4565 lt!1003811))))))

(assert (=> d!815538 (= lt!1003821 e!1776812)))

(declare-fun c!455158 () Bool)

(assert (=> d!815538 (= c!455158 ((_ is Nil!32795) (++!8053 lt!1003809 lt!1003810)))))

(assert (=> d!815538 (= (++!8053 (++!8053 lt!1003809 lt!1003810) lt!1003811) lt!1003821)))

(declare-fun b!2809675 () Bool)

(assert (=> b!2809675 (= e!1776811 (or (not (= lt!1003811 Nil!32795)) (= lt!1003821 (++!8053 lt!1003809 lt!1003810))))))

(declare-fun b!2809673 () Bool)

(assert (=> b!2809673 (= e!1776812 (Cons!32795 (h!38215 (++!8053 lt!1003809 lt!1003810)) (++!8053 (t!229711 (++!8053 lt!1003809 lt!1003810)) lt!1003811)))))

(assert (= (and d!815538 c!455158) b!2809672))

(assert (= (and d!815538 (not c!455158)) b!2809673))

(assert (= (and d!815538 res!1170012) b!2809674))

(assert (= (and b!2809674 res!1170013) b!2809675))

(declare-fun m!3239295 () Bool)

(assert (=> b!2809674 m!3239295))

(assert (=> b!2809674 m!3239197))

(declare-fun m!3239297 () Bool)

(assert (=> b!2809674 m!3239297))

(declare-fun m!3239299 () Bool)

(assert (=> b!2809674 m!3239299))

(declare-fun m!3239301 () Bool)

(assert (=> d!815538 m!3239301))

(assert (=> d!815538 m!3239197))

(declare-fun m!3239303 () Bool)

(assert (=> d!815538 m!3239303))

(declare-fun m!3239305 () Bool)

(assert (=> d!815538 m!3239305))

(declare-fun m!3239307 () Bool)

(assert (=> b!2809673 m!3239307))

(assert (=> b!2809578 d!815538))

(declare-fun b!2809682 () Bool)

(declare-fun res!1170017 () Bool)

(declare-fun e!1776815 () Bool)

(assert (=> b!2809682 (=> (not res!1170017) (not e!1776815))))

(declare-fun lt!1003823 () List!32895)

(assert (=> b!2809682 (= res!1170017 (= (size!25566 lt!1003823) (+ (size!25566 lt!1003810) (size!25566 lt!1003811))))))

(declare-fun b!2809680 () Bool)

(declare-fun e!1776816 () List!32895)

(assert (=> b!2809680 (= e!1776816 lt!1003811)))

(declare-fun d!815540 () Bool)

(assert (=> d!815540 e!1776815))

(declare-fun res!1170016 () Bool)

(assert (=> d!815540 (=> (not res!1170016) (not e!1776815))))

(assert (=> d!815540 (= res!1170016 (= (content!4565 lt!1003823) ((_ map or) (content!4565 lt!1003810) (content!4565 lt!1003811))))))

(assert (=> d!815540 (= lt!1003823 e!1776816)))

(declare-fun c!455160 () Bool)

(assert (=> d!815540 (= c!455160 ((_ is Nil!32795) lt!1003810))))

(assert (=> d!815540 (= (++!8053 lt!1003810 lt!1003811) lt!1003823)))

(declare-fun b!2809683 () Bool)

(assert (=> b!2809683 (= e!1776815 (or (not (= lt!1003811 Nil!32795)) (= lt!1003823 lt!1003810)))))

(declare-fun b!2809681 () Bool)

(assert (=> b!2809681 (= e!1776816 (Cons!32795 (h!38215 lt!1003810) (++!8053 (t!229711 lt!1003810) lt!1003811)))))

(assert (= (and d!815540 c!455160) b!2809680))

(assert (= (and d!815540 (not c!455160)) b!2809681))

(assert (= (and d!815540 res!1170016) b!2809682))

(assert (= (and b!2809682 res!1170017) b!2809683))

(declare-fun m!3239313 () Bool)

(assert (=> b!2809682 m!3239313))

(declare-fun m!3239317 () Bool)

(assert (=> b!2809682 m!3239317))

(assert (=> b!2809682 m!3239299))

(declare-fun m!3239319 () Bool)

(assert (=> d!815540 m!3239319))

(declare-fun m!3239323 () Bool)

(assert (=> d!815540 m!3239323))

(assert (=> d!815540 m!3239305))

(declare-fun m!3239327 () Bool)

(assert (=> b!2809681 m!3239327))

(assert (=> b!2809578 d!815540))

(declare-fun d!815542 () Bool)

(assert (=> d!815542 (= (list!12281 (charsOf!3052 (h!38217 l!4240))) (list!12283 (c!455134 (charsOf!3052 (h!38217 l!4240)))))))

(declare-fun bs!516324 () Bool)

(assert (= bs!516324 d!815542))

(declare-fun m!3239333 () Bool)

(assert (=> bs!516324 m!3239333))

(assert (=> b!2809578 d!815542))

(declare-fun d!815546 () Bool)

(declare-fun lt!1003826 () Int)

(assert (=> d!815546 (>= lt!1003826 0)))

(declare-fun e!1776819 () Int)

(assert (=> d!815546 (= lt!1003826 e!1776819)))

(declare-fun c!455163 () Bool)

(assert (=> d!815546 (= c!455163 ((_ is Nil!32797) l!4240))))

(assert (=> d!815546 (= (ListPrimitiveSize!213 l!4240) lt!1003826)))

(declare-fun b!2809688 () Bool)

(assert (=> b!2809688 (= e!1776819 0)))

(declare-fun b!2809689 () Bool)

(assert (=> b!2809689 (= e!1776819 (+ 1 (ListPrimitiveSize!213 (t!229713 l!4240))))))

(assert (= (and d!815546 c!455163) b!2809688))

(assert (= (and d!815546 (not c!455163)) b!2809689))

(assert (=> b!2809689 m!3239203))

(assert (=> b!2809578 d!815546))

(declare-fun d!815550 () Bool)

(declare-fun lt!1003829 () Int)

(assert (=> d!815550 (>= lt!1003829 0)))

(declare-fun e!1776820 () Int)

(assert (=> d!815550 (= lt!1003829 e!1776820)))

(declare-fun c!455164 () Bool)

(assert (=> d!815550 (= c!455164 ((_ is Nil!32797) (t!229713 l!4240)))))

(assert (=> d!815550 (= (ListPrimitiveSize!213 (t!229713 l!4240)) lt!1003829)))

(declare-fun b!2809690 () Bool)

(assert (=> b!2809690 (= e!1776820 0)))

(declare-fun b!2809691 () Bool)

(assert (=> b!2809691 (= e!1776820 (+ 1 (ListPrimitiveSize!213 (t!229713 (t!229713 l!4240)))))))

(assert (= (and d!815550 c!455164) b!2809690))

(assert (= (and d!815550 (not c!455164)) b!2809691))

(declare-fun m!3239337 () Bool)

(assert (=> b!2809691 m!3239337))

(assert (=> b!2809578 d!815550))

(declare-fun d!815552 () Bool)

(assert (=> d!815552 (= (++!8053 (++!8053 lt!1003809 lt!1003810) lt!1003811) (++!8053 lt!1003809 (++!8053 lt!1003810 lt!1003811)))))

(declare-fun lt!1003833 () Unit!46824)

(declare-fun choose!16555 (List!32895 List!32895 List!32895) Unit!46824)

(assert (=> d!815552 (= lt!1003833 (choose!16555 lt!1003809 lt!1003810 lt!1003811))))

(assert (=> d!815552 (= (lemmaConcatAssociativity!1664 lt!1003809 lt!1003810 lt!1003811) lt!1003833)))

(declare-fun bs!516326 () Bool)

(assert (= bs!516326 d!815552))

(assert (=> bs!516326 m!3239193))

(assert (=> bs!516326 m!3239193))

(assert (=> bs!516326 m!3239205))

(declare-fun m!3239347 () Bool)

(assert (=> bs!516326 m!3239347))

(assert (=> bs!516326 m!3239197))

(assert (=> bs!516326 m!3239199))

(assert (=> bs!516326 m!3239197))

(assert (=> b!2809578 d!815552))

(declare-fun b!2809701 () Bool)

(declare-fun res!1170019 () Bool)

(declare-fun e!1776825 () Bool)

(assert (=> b!2809701 (=> (not res!1170019) (not e!1776825))))

(declare-fun lt!1003834 () List!32895)

(assert (=> b!2809701 (= res!1170019 (= (size!25566 lt!1003834) (+ (size!25566 lt!1003809) (size!25566 (++!8053 lt!1003810 lt!1003811)))))))

(declare-fun b!2809699 () Bool)

(declare-fun e!1776826 () List!32895)

(assert (=> b!2809699 (= e!1776826 (++!8053 lt!1003810 lt!1003811))))

(declare-fun d!815556 () Bool)

(assert (=> d!815556 e!1776825))

(declare-fun res!1170018 () Bool)

(assert (=> d!815556 (=> (not res!1170018) (not e!1776825))))

(assert (=> d!815556 (= res!1170018 (= (content!4565 lt!1003834) ((_ map or) (content!4565 lt!1003809) (content!4565 (++!8053 lt!1003810 lt!1003811)))))))

(assert (=> d!815556 (= lt!1003834 e!1776826)))

(declare-fun c!455168 () Bool)

(assert (=> d!815556 (= c!455168 ((_ is Nil!32795) lt!1003809))))

(assert (=> d!815556 (= (++!8053 lt!1003809 (++!8053 lt!1003810 lt!1003811)) lt!1003834)))

(declare-fun b!2809702 () Bool)

(assert (=> b!2809702 (= e!1776825 (or (not (= (++!8053 lt!1003810 lt!1003811) Nil!32795)) (= lt!1003834 lt!1003809)))))

(declare-fun b!2809700 () Bool)

(assert (=> b!2809700 (= e!1776826 (Cons!32795 (h!38215 lt!1003809) (++!8053 (t!229711 lt!1003809) (++!8053 lt!1003810 lt!1003811))))))

(assert (= (and d!815556 c!455168) b!2809699))

(assert (= (and d!815556 (not c!455168)) b!2809700))

(assert (= (and d!815556 res!1170018) b!2809701))

(assert (= (and b!2809701 res!1170019) b!2809702))

(declare-fun m!3239357 () Bool)

(assert (=> b!2809701 m!3239357))

(declare-fun m!3239359 () Bool)

(assert (=> b!2809701 m!3239359))

(assert (=> b!2809701 m!3239193))

(declare-fun m!3239361 () Bool)

(assert (=> b!2809701 m!3239361))

(declare-fun m!3239363 () Bool)

(assert (=> d!815556 m!3239363))

(declare-fun m!3239365 () Bool)

(assert (=> d!815556 m!3239365))

(assert (=> d!815556 m!3239193))

(declare-fun m!3239367 () Bool)

(assert (=> d!815556 m!3239367))

(assert (=> b!2809700 m!3239193))

(declare-fun m!3239373 () Bool)

(assert (=> b!2809700 m!3239373))

(assert (=> b!2809578 d!815556))

(declare-fun b!2809788 () Bool)

(declare-fun e!1776879 () Bool)

(declare-fun e!1776877 () List!32895)

(assert (=> b!2809788 (= e!1776879 (= (printList!1212 thiss!13843 ($colon$colon!560 (withSeparatorTokenList!148 thiss!13843 (t!229713 (t!229713 l!4240)) separatorToken!99) separatorToken!99)) e!1776877))))

(declare-fun c!455197 () Bool)

(declare-fun lt!1003889 () List!32897)

(assert (=> b!2809788 (= c!455197 ((_ is Cons!32797) lt!1003889))))

(assert (=> b!2809788 (= lt!1003889 ($colon$colon!560 (withSeparatorTokenList!148 thiss!13843 (t!229713 (t!229713 l!4240)) separatorToken!99) separatorToken!99))))

(declare-fun b!2809789 () Bool)

(assert (=> b!2809789 (= e!1776877 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003889))) (printList!1212 thiss!13843 (t!229713 lt!1003889))))))

(declare-fun d!815562 () Bool)

(declare-fun lt!1003893 () List!32897)

(declare-fun printWithSeparatorTokenList!82 (LexerInterface!4504 List!32897 Token!9228) List!32895)

(assert (=> d!815562 (= (printList!1212 thiss!13843 lt!1003893) (printWithSeparatorTokenList!82 thiss!13843 (t!229713 l!4240) separatorToken!99))))

(declare-fun e!1776878 () List!32897)

(assert (=> d!815562 (= lt!1003893 e!1776878)))

(declare-fun c!455199 () Bool)

(assert (=> d!815562 (= c!455199 ((_ is Cons!32797) (t!229713 l!4240)))))

(declare-fun e!1776875 () Bool)

(assert (=> d!815562 e!1776875))

(declare-fun res!1170050 () Bool)

(assert (=> d!815562 (=> (not res!1170050) (not e!1776875))))

(assert (=> d!815562 (= res!1170050 (isSeparator!4913 (rule!7341 separatorToken!99)))))

(assert (=> d!815562 (= (withSeparatorTokenList!148 thiss!13843 (t!229713 l!4240) separatorToken!99) lt!1003893)))

(declare-fun b!2809790 () Bool)

(declare-fun res!1170049 () Bool)

(assert (=> b!2809790 (=> (not res!1170049) (not e!1776875))))

(declare-fun e!1776876 () Bool)

(assert (=> b!2809790 (= res!1170049 e!1776876)))

(declare-fun res!1170051 () Bool)

(assert (=> b!2809790 (=> res!1170051 e!1776876)))

(assert (=> b!2809790 (= res!1170051 (not ((_ is Cons!32797) (t!229713 l!4240))))))

(declare-fun b!2809791 () Bool)

(declare-fun e!1776880 () List!32895)

(assert (=> b!2809791 (= e!1776880 Nil!32795)))

(declare-fun b!2809792 () Bool)

(declare-fun lt!1003890 () List!32897)

(assert (=> b!2809792 (= e!1776880 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003890))) (printList!1212 thiss!13843 (t!229713 lt!1003890))))))

(declare-fun b!2809793 () Bool)

(assert (=> b!2809793 (= e!1776877 Nil!32795)))

(declare-fun b!2809794 () Bool)

(assert (=> b!2809794 (= e!1776876 (= (printList!1212 thiss!13843 ($colon$colon!560 ($colon$colon!560 (withSeparatorTokenList!148 thiss!13843 (t!229713 (t!229713 l!4240)) separatorToken!99) separatorToken!99) (h!38217 (t!229713 l!4240)))) e!1776880))))

(declare-fun c!455198 () Bool)

(assert (=> b!2809794 (= c!455198 ((_ is Cons!32797) lt!1003890))))

(assert (=> b!2809794 (= lt!1003890 ($colon$colon!560 ($colon$colon!560 (withSeparatorTokenList!148 thiss!13843 (t!229713 (t!229713 l!4240)) separatorToken!99) separatorToken!99) (h!38217 (t!229713 l!4240))))))

(declare-fun b!2809795 () Bool)

(assert (=> b!2809795 (= e!1776875 e!1776879)))

(declare-fun res!1170052 () Bool)

(assert (=> b!2809795 (=> res!1170052 e!1776879)))

(assert (=> b!2809795 (= res!1170052 (not ((_ is Cons!32797) (t!229713 l!4240))))))

(declare-fun b!2809796 () Bool)

(assert (=> b!2809796 (= e!1776878 ($colon$colon!560 ($colon$colon!560 (withSeparatorTokenList!148 thiss!13843 (t!229713 (t!229713 l!4240)) separatorToken!99) separatorToken!99) (h!38217 (t!229713 l!4240))))))

(declare-fun lt!1003887 () List!32895)

(assert (=> b!2809796 (= lt!1003887 (list!12281 (charsOf!3052 (h!38217 (t!229713 l!4240)))))))

(declare-fun lt!1003892 () List!32895)

(assert (=> b!2809796 (= lt!1003892 (list!12281 (charsOf!3052 separatorToken!99)))))

(declare-fun lt!1003888 () List!32895)

(assert (=> b!2809796 (= lt!1003888 (printList!1212 thiss!13843 (withSeparatorTokenList!148 thiss!13843 (t!229713 (t!229713 l!4240)) separatorToken!99)))))

(declare-fun lt!1003891 () Unit!46824)

(assert (=> b!2809796 (= lt!1003891 (lemmaConcatAssociativity!1664 lt!1003887 lt!1003892 lt!1003888))))

(assert (=> b!2809796 (= (++!8053 (++!8053 lt!1003887 lt!1003892) lt!1003888) (++!8053 lt!1003887 (++!8053 lt!1003892 lt!1003888)))))

(declare-fun lt!1003894 () Unit!46824)

(assert (=> b!2809796 (= lt!1003894 lt!1003891)))

(declare-fun b!2809797 () Bool)

(assert (=> b!2809797 (= e!1776878 Nil!32797)))

(assert (= (and d!815562 res!1170050) b!2809790))

(assert (= (and b!2809790 (not res!1170051)) b!2809794))

(assert (= (and b!2809794 c!455198) b!2809792))

(assert (= (and b!2809794 (not c!455198)) b!2809791))

(assert (= (and b!2809790 res!1170049) b!2809795))

(assert (= (and b!2809795 (not res!1170052)) b!2809788))

(assert (= (and b!2809788 c!455197) b!2809789))

(assert (= (and b!2809788 (not c!455197)) b!2809793))

(assert (= (and d!815562 c!455199) b!2809796))

(assert (= (and d!815562 (not c!455199)) b!2809797))

(declare-fun m!3239485 () Bool)

(assert (=> b!2809794 m!3239485))

(assert (=> b!2809794 m!3239485))

(declare-fun m!3239487 () Bool)

(assert (=> b!2809794 m!3239487))

(assert (=> b!2809794 m!3239487))

(declare-fun m!3239491 () Bool)

(assert (=> b!2809794 m!3239491))

(assert (=> b!2809794 m!3239491))

(declare-fun m!3239493 () Bool)

(assert (=> b!2809794 m!3239493))

(declare-fun m!3239495 () Bool)

(assert (=> b!2809789 m!3239495))

(assert (=> b!2809789 m!3239495))

(declare-fun m!3239497 () Bool)

(assert (=> b!2809789 m!3239497))

(declare-fun m!3239499 () Bool)

(assert (=> b!2809789 m!3239499))

(assert (=> b!2809789 m!3239497))

(assert (=> b!2809789 m!3239499))

(declare-fun m!3239501 () Bool)

(assert (=> b!2809789 m!3239501))

(declare-fun m!3239505 () Bool)

(assert (=> d!815562 m!3239505))

(declare-fun m!3239509 () Bool)

(assert (=> d!815562 m!3239509))

(assert (=> b!2809788 m!3239485))

(assert (=> b!2809788 m!3239485))

(assert (=> b!2809788 m!3239487))

(assert (=> b!2809788 m!3239487))

(declare-fun m!3239521 () Bool)

(assert (=> b!2809788 m!3239521))

(declare-fun m!3239523 () Bool)

(assert (=> b!2809792 m!3239523))

(assert (=> b!2809792 m!3239523))

(declare-fun m!3239527 () Bool)

(assert (=> b!2809792 m!3239527))

(declare-fun m!3239529 () Bool)

(assert (=> b!2809792 m!3239529))

(assert (=> b!2809792 m!3239527))

(assert (=> b!2809792 m!3239529))

(declare-fun m!3239531 () Bool)

(assert (=> b!2809792 m!3239531))

(assert (=> b!2809796 m!3239487))

(assert (=> b!2809796 m!3239491))

(assert (=> b!2809796 m!3239177))

(assert (=> b!2809796 m!3239179))

(assert (=> b!2809796 m!3239177))

(assert (=> b!2809796 m!3239485))

(assert (=> b!2809796 m!3239485))

(assert (=> b!2809796 m!3239487))

(declare-fun m!3239541 () Bool)

(assert (=> b!2809796 m!3239541))

(declare-fun m!3239543 () Bool)

(assert (=> b!2809796 m!3239543))

(declare-fun m!3239545 () Bool)

(assert (=> b!2809796 m!3239545))

(declare-fun m!3239547 () Bool)

(assert (=> b!2809796 m!3239547))

(declare-fun m!3239551 () Bool)

(assert (=> b!2809796 m!3239551))

(assert (=> b!2809796 m!3239485))

(declare-fun m!3239559 () Bool)

(assert (=> b!2809796 m!3239559))

(declare-fun m!3239561 () Bool)

(assert (=> b!2809796 m!3239561))

(assert (=> b!2809796 m!3239547))

(assert (=> b!2809796 m!3239543))

(assert (=> b!2809796 m!3239541))

(declare-fun m!3239563 () Bool)

(assert (=> b!2809796 m!3239563))

(assert (=> b!2809578 d!815562))

(declare-fun d!815608 () Bool)

(declare-fun c!455202 () Bool)

(assert (=> d!815608 (= c!455202 ((_ is Cons!32797) lt!1003804))))

(declare-fun e!1776886 () List!32895)

(assert (=> d!815608 (= (printList!1212 thiss!13843 lt!1003804) e!1776886)))

(declare-fun b!2809806 () Bool)

(assert (=> b!2809806 (= e!1776886 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003804))) (printList!1212 thiss!13843 (t!229713 lt!1003804))))))

(declare-fun b!2809807 () Bool)

(assert (=> b!2809807 (= e!1776886 Nil!32795)))

(assert (= (and d!815608 c!455202) b!2809806))

(assert (= (and d!815608 (not c!455202)) b!2809807))

(declare-fun m!3239569 () Bool)

(assert (=> b!2809806 m!3239569))

(assert (=> b!2809806 m!3239569))

(declare-fun m!3239571 () Bool)

(assert (=> b!2809806 m!3239571))

(declare-fun m!3239573 () Bool)

(assert (=> b!2809806 m!3239573))

(assert (=> b!2809806 m!3239571))

(assert (=> b!2809806 m!3239573))

(declare-fun m!3239575 () Bool)

(assert (=> b!2809806 m!3239575))

(assert (=> b!2809578 d!815608))

(declare-fun d!815610 () Bool)

(declare-fun lt!1003898 () BalanceConc!19918)

(assert (=> d!815610 (= (list!12281 lt!1003898) (originalCharacters!5645 (h!38217 l!4240)))))

(assert (=> d!815610 (= lt!1003898 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (value!157930 (h!38217 l!4240))))))

(assert (=> d!815610 (= (charsOf!3052 (h!38217 l!4240)) lt!1003898)))

(declare-fun b_lambda!84101 () Bool)

(assert (=> (not b_lambda!84101) (not d!815610)))

(declare-fun t!229736 () Bool)

(declare-fun tb!153561 () Bool)

(assert (=> (and b!2809587 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240))))) t!229736) tb!153561))

(declare-fun b!2809818 () Bool)

(declare-fun e!1776899 () Bool)

(declare-fun tp!897072 () Bool)

(assert (=> b!2809818 (= e!1776899 (and (inv!44509 (c!455134 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (value!157930 (h!38217 l!4240))))) tp!897072))))

(declare-fun result!190870 () Bool)

(assert (=> tb!153561 (= result!190870 (and (inv!44510 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (value!157930 (h!38217 l!4240)))) e!1776899))))

(assert (= tb!153561 b!2809818))

(declare-fun m!3239577 () Bool)

(assert (=> b!2809818 m!3239577))

(declare-fun m!3239579 () Bool)

(assert (=> tb!153561 m!3239579))

(assert (=> d!815610 t!229736))

(declare-fun b_and!205387 () Bool)

(assert (= b_and!205367 (and (=> t!229736 result!190870) b_and!205387)))

(declare-fun tb!153563 () Bool)

(declare-fun t!229738 () Bool)

(assert (=> (and b!2809583 (= (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240))))) t!229738) tb!153563))

(declare-fun result!190872 () Bool)

(assert (= result!190872 result!190870))

(assert (=> d!815610 t!229738))

(declare-fun b_and!205389 () Bool)

(assert (= b_and!205369 (and (=> t!229738 result!190872) b_and!205389)))

(declare-fun m!3239581 () Bool)

(assert (=> d!815610 m!3239581))

(declare-fun m!3239583 () Bool)

(assert (=> d!815610 m!3239583))

(assert (=> b!2809578 d!815610))

(declare-fun d!815612 () Bool)

(assert (=> d!815612 (= ($colon$colon!560 lt!1003804 separatorToken!99) (Cons!32797 separatorToken!99 lt!1003804))))

(assert (=> b!2809578 d!815612))

(declare-fun d!815614 () Bool)

(declare-fun c!455203 () Bool)

(assert (=> d!815614 (= c!455203 ((_ is Cons!32797) lt!1003807))))

(declare-fun e!1776911 () List!32895)

(assert (=> d!815614 (= (printList!1212 thiss!13843 lt!1003807) e!1776911)))

(declare-fun b!2809832 () Bool)

(assert (=> b!2809832 (= e!1776911 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003807))) (printList!1212 thiss!13843 (t!229713 lt!1003807))))))

(declare-fun b!2809835 () Bool)

(assert (=> b!2809835 (= e!1776911 Nil!32795)))

(assert (= (and d!815614 c!455203) b!2809832))

(assert (= (and d!815614 (not c!455203)) b!2809835))

(assert (=> b!2809832 m!3239163))

(assert (=> b!2809832 m!3239163))

(assert (=> b!2809832 m!3239165))

(assert (=> b!2809832 m!3239167))

(assert (=> b!2809832 m!3239165))

(assert (=> b!2809832 m!3239167))

(assert (=> b!2809832 m!3239169))

(assert (=> b!2809578 d!815614))

(declare-fun d!815616 () Bool)

(assert (=> d!815616 (= ($colon$colon!560 lt!1003808 (h!38217 l!4240)) (Cons!32797 (h!38217 l!4240) lt!1003808))))

(assert (=> b!2809578 d!815616))

(declare-fun d!815618 () Bool)

(declare-fun c!455204 () Bool)

(assert (=> d!815618 (= c!455204 ((_ is Cons!32797) lt!1003808))))

(declare-fun e!1776913 () List!32895)

(assert (=> d!815618 (= (printList!1212 thiss!13843 lt!1003808) e!1776913)))

(declare-fun b!2809844 () Bool)

(assert (=> b!2809844 (= e!1776913 (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003808))) (printList!1212 thiss!13843 (t!229713 lt!1003808))))))

(declare-fun b!2809845 () Bool)

(assert (=> b!2809845 (= e!1776913 Nil!32795)))

(assert (= (and d!815618 c!455204) b!2809844))

(assert (= (and d!815618 (not c!455204)) b!2809845))

(assert (=> b!2809844 m!3239151))

(assert (=> b!2809844 m!3239151))

(assert (=> b!2809844 m!3239153))

(assert (=> b!2809844 m!3239155))

(assert (=> b!2809844 m!3239153))

(assert (=> b!2809844 m!3239155))

(assert (=> b!2809844 m!3239157))

(assert (=> b!2809578 d!815618))

(declare-fun b!2809853 () Bool)

(declare-fun res!1170057 () Bool)

(declare-fun e!1776916 () Bool)

(assert (=> b!2809853 (=> (not res!1170057) (not e!1776916))))

(declare-fun lt!1003899 () List!32895)

(assert (=> b!2809853 (= res!1170057 (= (size!25566 lt!1003899) (+ (size!25566 lt!1003809) (size!25566 lt!1003810))))))

(declare-fun b!2809851 () Bool)

(declare-fun e!1776917 () List!32895)

(assert (=> b!2809851 (= e!1776917 lt!1003810)))

(declare-fun d!815620 () Bool)

(assert (=> d!815620 e!1776916))

(declare-fun res!1170056 () Bool)

(assert (=> d!815620 (=> (not res!1170056) (not e!1776916))))

(assert (=> d!815620 (= res!1170056 (= (content!4565 lt!1003899) ((_ map or) (content!4565 lt!1003809) (content!4565 lt!1003810))))))

(assert (=> d!815620 (= lt!1003899 e!1776917)))

(declare-fun c!455205 () Bool)

(assert (=> d!815620 (= c!455205 ((_ is Nil!32795) lt!1003809))))

(assert (=> d!815620 (= (++!8053 lt!1003809 lt!1003810) lt!1003899)))

(declare-fun b!2809854 () Bool)

(assert (=> b!2809854 (= e!1776916 (or (not (= lt!1003810 Nil!32795)) (= lt!1003899 lt!1003809)))))

(declare-fun b!2809852 () Bool)

(assert (=> b!2809852 (= e!1776917 (Cons!32795 (h!38215 lt!1003809) (++!8053 (t!229711 lt!1003809) lt!1003810)))))

(assert (= (and d!815620 c!455205) b!2809851))

(assert (= (and d!815620 (not c!455205)) b!2809852))

(assert (= (and d!815620 res!1170056) b!2809853))

(assert (= (and b!2809853 res!1170057) b!2809854))

(declare-fun m!3239593 () Bool)

(assert (=> b!2809853 m!3239593))

(assert (=> b!2809853 m!3239359))

(assert (=> b!2809853 m!3239317))

(declare-fun m!3239595 () Bool)

(assert (=> d!815620 m!3239595))

(assert (=> d!815620 m!3239365))

(assert (=> d!815620 m!3239323))

(declare-fun m!3239597 () Bool)

(assert (=> b!2809852 m!3239597))

(assert (=> b!2809578 d!815620))

(declare-fun d!815622 () Bool)

(assert (=> d!815622 (= (list!12281 (charsOf!3052 separatorToken!99)) (list!12283 (c!455134 (charsOf!3052 separatorToken!99))))))

(declare-fun bs!516331 () Bool)

(assert (= bs!516331 d!815622))

(declare-fun m!3239599 () Bool)

(assert (=> bs!516331 m!3239599))

(assert (=> b!2809578 d!815622))

(declare-fun d!815624 () Bool)

(declare-fun lt!1003900 () BalanceConc!19918)

(assert (=> d!815624 (= (list!12281 lt!1003900) (originalCharacters!5645 separatorToken!99))))

(assert (=> d!815624 (= lt!1003900 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (value!157930 separatorToken!99)))))

(assert (=> d!815624 (= (charsOf!3052 separatorToken!99) lt!1003900)))

(declare-fun b_lambda!84111 () Bool)

(assert (=> (not b_lambda!84111) (not d!815624)))

(declare-fun t!229749 () Bool)

(declare-fun tb!153573 () Bool)

(assert (=> (and b!2809587 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99)))) t!229749) tb!153573))

(declare-fun b!2809855 () Bool)

(declare-fun e!1776918 () Bool)

(declare-fun tp!897102 () Bool)

(assert (=> b!2809855 (= e!1776918 (and (inv!44509 (c!455134 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (value!157930 separatorToken!99)))) tp!897102))))

(declare-fun result!190886 () Bool)

(assert (=> tb!153573 (= result!190886 (and (inv!44510 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (value!157930 separatorToken!99))) e!1776918))))

(assert (= tb!153573 b!2809855))

(declare-fun m!3239601 () Bool)

(assert (=> b!2809855 m!3239601))

(declare-fun m!3239603 () Bool)

(assert (=> tb!153573 m!3239603))

(assert (=> d!815624 t!229749))

(declare-fun b_and!205395 () Bool)

(assert (= b_and!205387 (and (=> t!229749 result!190886) b_and!205395)))

(declare-fun t!229751 () Bool)

(declare-fun tb!153575 () Bool)

(assert (=> (and b!2809583 (= (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99)))) t!229751) tb!153575))

(declare-fun result!190888 () Bool)

(assert (= result!190888 result!190886))

(assert (=> d!815624 t!229751))

(declare-fun b_and!205397 () Bool)

(assert (= b_and!205389 (and (=> t!229751 result!190888) b_and!205397)))

(declare-fun m!3239605 () Bool)

(assert (=> d!815624 m!3239605))

(declare-fun m!3239607 () Bool)

(assert (=> d!815624 m!3239607))

(assert (=> b!2809578 d!815624))

(declare-fun d!815626 () Bool)

(assert (=> d!815626 (= (inv!44502 (tag!5417 (rule!7341 (h!38217 l!4240)))) (= (mod (str.len (value!157929 (tag!5417 (rule!7341 (h!38217 l!4240))))) 2) 0))))

(assert (=> b!2809579 d!815626))

(declare-fun d!815628 () Bool)

(declare-fun res!1170060 () Bool)

(declare-fun e!1776921 () Bool)

(assert (=> d!815628 (=> (not res!1170060) (not e!1776921))))

(declare-fun semiInverseModEq!2032 (Int Int) Bool)

(assert (=> d!815628 (= res!1170060 (semiInverseModEq!2032 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toValue!6915 (transformation!4913 (rule!7341 (h!38217 l!4240))))))))

(assert (=> d!815628 (= (inv!44506 (transformation!4913 (rule!7341 (h!38217 l!4240)))) e!1776921)))

(declare-fun b!2809858 () Bool)

(declare-fun equivClasses!1933 (Int Int) Bool)

(assert (=> b!2809858 (= e!1776921 (equivClasses!1933 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toValue!6915 (transformation!4913 (rule!7341 (h!38217 l!4240))))))))

(assert (= (and d!815628 res!1170060) b!2809858))

(declare-fun m!3239609 () Bool)

(assert (=> d!815628 m!3239609))

(declare-fun m!3239611 () Bool)

(assert (=> b!2809858 m!3239611))

(assert (=> b!2809579 d!815628))

(declare-fun b!2809861 () Bool)

(declare-fun res!1170062 () Bool)

(declare-fun e!1776922 () Bool)

(assert (=> b!2809861 (=> (not res!1170062) (not e!1776922))))

(declare-fun lt!1003901 () List!32895)

(assert (=> b!2809861 (= res!1170062 (= (size!25566 lt!1003901) (+ (size!25566 (list!12281 (charsOf!3052 (h!38217 lt!1003808)))) (size!25566 (printList!1212 thiss!13843 (t!229713 lt!1003808))))))))

(declare-fun b!2809859 () Bool)

(declare-fun e!1776923 () List!32895)

(assert (=> b!2809859 (= e!1776923 (printList!1212 thiss!13843 (t!229713 lt!1003808)))))

(declare-fun d!815630 () Bool)

(assert (=> d!815630 e!1776922))

(declare-fun res!1170061 () Bool)

(assert (=> d!815630 (=> (not res!1170061) (not e!1776922))))

(assert (=> d!815630 (= res!1170061 (= (content!4565 lt!1003901) ((_ map or) (content!4565 (list!12281 (charsOf!3052 (h!38217 lt!1003808)))) (content!4565 (printList!1212 thiss!13843 (t!229713 lt!1003808))))))))

(assert (=> d!815630 (= lt!1003901 e!1776923)))

(declare-fun c!455206 () Bool)

(assert (=> d!815630 (= c!455206 ((_ is Nil!32795) (list!12281 (charsOf!3052 (h!38217 lt!1003808)))))))

(assert (=> d!815630 (= (++!8053 (list!12281 (charsOf!3052 (h!38217 lt!1003808))) (printList!1212 thiss!13843 (t!229713 lt!1003808))) lt!1003901)))

(declare-fun b!2809862 () Bool)

(assert (=> b!2809862 (= e!1776922 (or (not (= (printList!1212 thiss!13843 (t!229713 lt!1003808)) Nil!32795)) (= lt!1003901 (list!12281 (charsOf!3052 (h!38217 lt!1003808))))))))

(declare-fun b!2809860 () Bool)

(assert (=> b!2809860 (= e!1776923 (Cons!32795 (h!38215 (list!12281 (charsOf!3052 (h!38217 lt!1003808)))) (++!8053 (t!229711 (list!12281 (charsOf!3052 (h!38217 lt!1003808)))) (printList!1212 thiss!13843 (t!229713 lt!1003808)))))))

(assert (= (and d!815630 c!455206) b!2809859))

(assert (= (and d!815630 (not c!455206)) b!2809860))

(assert (= (and d!815630 res!1170061) b!2809861))

(assert (= (and b!2809861 res!1170062) b!2809862))

(declare-fun m!3239613 () Bool)

(assert (=> b!2809861 m!3239613))

(assert (=> b!2809861 m!3239153))

(declare-fun m!3239615 () Bool)

(assert (=> b!2809861 m!3239615))

(assert (=> b!2809861 m!3239155))

(declare-fun m!3239617 () Bool)

(assert (=> b!2809861 m!3239617))

(declare-fun m!3239619 () Bool)

(assert (=> d!815630 m!3239619))

(assert (=> d!815630 m!3239153))

(declare-fun m!3239621 () Bool)

(assert (=> d!815630 m!3239621))

(assert (=> d!815630 m!3239155))

(declare-fun m!3239623 () Bool)

(assert (=> d!815630 m!3239623))

(assert (=> b!2809860 m!3239155))

(declare-fun m!3239625 () Bool)

(assert (=> b!2809860 m!3239625))

(assert (=> b!2809584 d!815630))

(declare-fun d!815632 () Bool)

(assert (=> d!815632 (= (list!12281 (charsOf!3052 (h!38217 lt!1003808))) (list!12283 (c!455134 (charsOf!3052 (h!38217 lt!1003808)))))))

(declare-fun bs!516332 () Bool)

(assert (= bs!516332 d!815632))

(declare-fun m!3239627 () Bool)

(assert (=> bs!516332 m!3239627))

(assert (=> b!2809584 d!815632))

(declare-fun d!815634 () Bool)

(declare-fun lt!1003902 () BalanceConc!19918)

(assert (=> d!815634 (= (list!12281 lt!1003902) (originalCharacters!5645 (h!38217 lt!1003808)))))

(assert (=> d!815634 (= lt!1003902 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003808)))) (value!157930 (h!38217 lt!1003808))))))

(assert (=> d!815634 (= (charsOf!3052 (h!38217 lt!1003808)) lt!1003902)))

(declare-fun b_lambda!84113 () Bool)

(assert (=> (not b_lambda!84113) (not d!815634)))

(declare-fun tb!153577 () Bool)

(declare-fun t!229753 () Bool)

(assert (=> (and b!2809587 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003808))))) t!229753) tb!153577))

(declare-fun b!2809863 () Bool)

(declare-fun e!1776924 () Bool)

(declare-fun tp!897103 () Bool)

(assert (=> b!2809863 (= e!1776924 (and (inv!44509 (c!455134 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003808)))) (value!157930 (h!38217 lt!1003808))))) tp!897103))))

(declare-fun result!190890 () Bool)

(assert (=> tb!153577 (= result!190890 (and (inv!44510 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003808)))) (value!157930 (h!38217 lt!1003808)))) e!1776924))))

(assert (= tb!153577 b!2809863))

(declare-fun m!3239629 () Bool)

(assert (=> b!2809863 m!3239629))

(declare-fun m!3239631 () Bool)

(assert (=> tb!153577 m!3239631))

(assert (=> d!815634 t!229753))

(declare-fun b_and!205399 () Bool)

(assert (= b_and!205395 (and (=> t!229753 result!190890) b_and!205399)))

(declare-fun tb!153579 () Bool)

(declare-fun t!229755 () Bool)

(assert (=> (and b!2809583 (= (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003808))))) t!229755) tb!153579))

(declare-fun result!190892 () Bool)

(assert (= result!190892 result!190890))

(assert (=> d!815634 t!229755))

(declare-fun b_and!205401 () Bool)

(assert (= b_and!205397 (and (=> t!229755 result!190892) b_and!205401)))

(declare-fun m!3239633 () Bool)

(assert (=> d!815634 m!3239633))

(declare-fun m!3239635 () Bool)

(assert (=> d!815634 m!3239635))

(assert (=> b!2809584 d!815634))

(declare-fun d!815636 () Bool)

(declare-fun c!455207 () Bool)

(assert (=> d!815636 (= c!455207 ((_ is Cons!32797) (t!229713 lt!1003808)))))

(declare-fun e!1776925 () List!32895)

(assert (=> d!815636 (= (printList!1212 thiss!13843 (t!229713 lt!1003808)) e!1776925)))

(declare-fun b!2809864 () Bool)

(assert (=> b!2809864 (= e!1776925 (++!8053 (list!12281 (charsOf!3052 (h!38217 (t!229713 lt!1003808)))) (printList!1212 thiss!13843 (t!229713 (t!229713 lt!1003808)))))))

(declare-fun b!2809865 () Bool)

(assert (=> b!2809865 (= e!1776925 Nil!32795)))

(assert (= (and d!815636 c!455207) b!2809864))

(assert (= (and d!815636 (not c!455207)) b!2809865))

(declare-fun m!3239637 () Bool)

(assert (=> b!2809864 m!3239637))

(assert (=> b!2809864 m!3239637))

(declare-fun m!3239639 () Bool)

(assert (=> b!2809864 m!3239639))

(declare-fun m!3239641 () Bool)

(assert (=> b!2809864 m!3239641))

(assert (=> b!2809864 m!3239639))

(assert (=> b!2809864 m!3239641))

(declare-fun m!3239643 () Bool)

(assert (=> b!2809864 m!3239643))

(assert (=> b!2809584 d!815636))

(declare-fun d!815638 () Bool)

(assert (=> d!815638 (= (inv!44502 (tag!5417 (rule!7341 separatorToken!99))) (= (mod (str.len (value!157929 (tag!5417 (rule!7341 separatorToken!99)))) 2) 0))))

(assert (=> b!2809585 d!815638))

(declare-fun d!815640 () Bool)

(declare-fun res!1170063 () Bool)

(declare-fun e!1776926 () Bool)

(assert (=> d!815640 (=> (not res!1170063) (not e!1776926))))

(assert (=> d!815640 (= res!1170063 (semiInverseModEq!2032 (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toValue!6915 (transformation!4913 (rule!7341 separatorToken!99)))))))

(assert (=> d!815640 (= (inv!44506 (transformation!4913 (rule!7341 separatorToken!99))) e!1776926)))

(declare-fun b!2809866 () Bool)

(assert (=> b!2809866 (= e!1776926 (equivClasses!1933 (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toValue!6915 (transformation!4913 (rule!7341 separatorToken!99)))))))

(assert (= (and d!815640 res!1170063) b!2809866))

(declare-fun m!3239645 () Bool)

(assert (=> d!815640 m!3239645))

(declare-fun m!3239647 () Bool)

(assert (=> b!2809866 m!3239647))

(assert (=> b!2809585 d!815640))

(declare-fun d!815642 () Bool)

(declare-fun res!1170068 () Bool)

(declare-fun e!1776929 () Bool)

(assert (=> d!815642 (=> (not res!1170068) (not e!1776929))))

(declare-fun isEmpty!18212 (List!32895) Bool)

(assert (=> d!815642 (= res!1170068 (not (isEmpty!18212 (originalCharacters!5645 separatorToken!99))))))

(assert (=> d!815642 (= (inv!44505 separatorToken!99) e!1776929)))

(declare-fun b!2809871 () Bool)

(declare-fun res!1170069 () Bool)

(assert (=> b!2809871 (=> (not res!1170069) (not e!1776929))))

(assert (=> b!2809871 (= res!1170069 (= (originalCharacters!5645 separatorToken!99) (list!12281 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (value!157930 separatorToken!99)))))))

(declare-fun b!2809872 () Bool)

(assert (=> b!2809872 (= e!1776929 (= (size!25564 separatorToken!99) (size!25566 (originalCharacters!5645 separatorToken!99))))))

(assert (= (and d!815642 res!1170068) b!2809871))

(assert (= (and b!2809871 res!1170069) b!2809872))

(declare-fun b_lambda!84115 () Bool)

(assert (=> (not b_lambda!84115) (not b!2809871)))

(assert (=> b!2809871 t!229749))

(declare-fun b_and!205403 () Bool)

(assert (= b_and!205399 (and (=> t!229749 result!190886) b_and!205403)))

(assert (=> b!2809871 t!229751))

(declare-fun b_and!205405 () Bool)

(assert (= b_and!205401 (and (=> t!229751 result!190888) b_and!205405)))

(declare-fun m!3239649 () Bool)

(assert (=> d!815642 m!3239649))

(assert (=> b!2809871 m!3239607))

(assert (=> b!2809871 m!3239607))

(declare-fun m!3239651 () Bool)

(assert (=> b!2809871 m!3239651))

(declare-fun m!3239653 () Bool)

(assert (=> b!2809872 m!3239653))

(assert (=> start!271824 d!815642))

(declare-fun d!815644 () Bool)

(declare-fun res!1170070 () Bool)

(declare-fun e!1776930 () Bool)

(assert (=> d!815644 (=> (not res!1170070) (not e!1776930))))

(assert (=> d!815644 (= res!1170070 (not (isEmpty!18212 (originalCharacters!5645 (h!38217 l!4240)))))))

(assert (=> d!815644 (= (inv!44505 (h!38217 l!4240)) e!1776930)))

(declare-fun b!2809873 () Bool)

(declare-fun res!1170071 () Bool)

(assert (=> b!2809873 (=> (not res!1170071) (not e!1776930))))

(assert (=> b!2809873 (= res!1170071 (= (originalCharacters!5645 (h!38217 l!4240)) (list!12281 (dynLambda!13729 (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (value!157930 (h!38217 l!4240))))))))

(declare-fun b!2809874 () Bool)

(assert (=> b!2809874 (= e!1776930 (= (size!25564 (h!38217 l!4240)) (size!25566 (originalCharacters!5645 (h!38217 l!4240)))))))

(assert (= (and d!815644 res!1170070) b!2809873))

(assert (= (and b!2809873 res!1170071) b!2809874))

(declare-fun b_lambda!84117 () Bool)

(assert (=> (not b_lambda!84117) (not b!2809873)))

(assert (=> b!2809873 t!229736))

(declare-fun b_and!205407 () Bool)

(assert (= b_and!205403 (and (=> t!229736 result!190870) b_and!205407)))

(assert (=> b!2809873 t!229738))

(declare-fun b_and!205409 () Bool)

(assert (= b_and!205405 (and (=> t!229738 result!190872) b_and!205409)))

(declare-fun m!3239655 () Bool)

(assert (=> d!815644 m!3239655))

(assert (=> b!2809873 m!3239583))

(assert (=> b!2809873 m!3239583))

(declare-fun m!3239657 () Bool)

(assert (=> b!2809873 m!3239657))

(declare-fun m!3239659 () Bool)

(assert (=> b!2809874 m!3239659))

(assert (=> b!2809580 d!815644))

(declare-fun b!2809879 () Bool)

(declare-fun e!1776933 () Bool)

(declare-fun tp_is_empty!14331 () Bool)

(declare-fun tp!897106 () Bool)

(assert (=> b!2809879 (= e!1776933 (and tp_is_empty!14331 tp!897106))))

(assert (=> b!2809581 (= tp!897052 e!1776933)))

(assert (= (and b!2809581 ((_ is Cons!32795) (originalCharacters!5645 (h!38217 l!4240)))) b!2809879))

(declare-fun b!2809880 () Bool)

(declare-fun e!1776934 () Bool)

(declare-fun tp!897107 () Bool)

(assert (=> b!2809880 (= e!1776934 (and tp_is_empty!14331 tp!897107))))

(assert (=> b!2809582 (= tp!897051 e!1776934)))

(assert (= (and b!2809582 ((_ is Cons!32795) (originalCharacters!5645 separatorToken!99))) b!2809880))

(declare-fun b!2809892 () Bool)

(declare-fun e!1776937 () Bool)

(declare-fun tp!897119 () Bool)

(declare-fun tp!897121 () Bool)

(assert (=> b!2809892 (= e!1776937 (and tp!897119 tp!897121))))

(declare-fun b!2809894 () Bool)

(declare-fun tp!897122 () Bool)

(declare-fun tp!897118 () Bool)

(assert (=> b!2809894 (= e!1776937 (and tp!897122 tp!897118))))

(declare-fun b!2809893 () Bool)

(declare-fun tp!897120 () Bool)

(assert (=> b!2809893 (= e!1776937 tp!897120)))

(assert (=> b!2809579 (= tp!897048 e!1776937)))

(declare-fun b!2809891 () Bool)

(assert (=> b!2809891 (= e!1776937 tp_is_empty!14331)))

(assert (= (and b!2809579 ((_ is ElementMatch!8283) (regex!4913 (rule!7341 (h!38217 l!4240))))) b!2809891))

(assert (= (and b!2809579 ((_ is Concat!13419) (regex!4913 (rule!7341 (h!38217 l!4240))))) b!2809892))

(assert (= (and b!2809579 ((_ is Star!8283) (regex!4913 (rule!7341 (h!38217 l!4240))))) b!2809893))

(assert (= (and b!2809579 ((_ is Union!8283) (regex!4913 (rule!7341 (h!38217 l!4240))))) b!2809894))

(declare-fun b!2809896 () Bool)

(declare-fun e!1776938 () Bool)

(declare-fun tp!897124 () Bool)

(declare-fun tp!897126 () Bool)

(assert (=> b!2809896 (= e!1776938 (and tp!897124 tp!897126))))

(declare-fun b!2809898 () Bool)

(declare-fun tp!897127 () Bool)

(declare-fun tp!897123 () Bool)

(assert (=> b!2809898 (= e!1776938 (and tp!897127 tp!897123))))

(declare-fun b!2809897 () Bool)

(declare-fun tp!897125 () Bool)

(assert (=> b!2809897 (= e!1776938 tp!897125)))

(assert (=> b!2809585 (= tp!897045 e!1776938)))

(declare-fun b!2809895 () Bool)

(assert (=> b!2809895 (= e!1776938 tp_is_empty!14331)))

(assert (= (and b!2809585 ((_ is ElementMatch!8283) (regex!4913 (rule!7341 separatorToken!99)))) b!2809895))

(assert (= (and b!2809585 ((_ is Concat!13419) (regex!4913 (rule!7341 separatorToken!99)))) b!2809896))

(assert (= (and b!2809585 ((_ is Star!8283) (regex!4913 (rule!7341 separatorToken!99)))) b!2809897))

(assert (= (and b!2809585 ((_ is Union!8283) (regex!4913 (rule!7341 separatorToken!99)))) b!2809898))

(declare-fun b!2809912 () Bool)

(declare-fun b_free!80193 () Bool)

(declare-fun b_next!80897 () Bool)

(assert (=> b!2809912 (= b_free!80193 (not b_next!80897))))

(declare-fun tp!897140 () Bool)

(declare-fun b_and!205411 () Bool)

(assert (=> b!2809912 (= tp!897140 b_and!205411)))

(declare-fun b_free!80195 () Bool)

(declare-fun b_next!80899 () Bool)

(assert (=> b!2809912 (= b_free!80195 (not b_next!80899))))

(declare-fun t!229757 () Bool)

(declare-fun tb!153581 () Bool)

(assert (=> (and b!2809912 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240))))) t!229757) tb!153581))

(declare-fun result!190900 () Bool)

(assert (= result!190900 result!190870))

(assert (=> d!815610 t!229757))

(declare-fun tb!153583 () Bool)

(declare-fun t!229759 () Bool)

(assert (=> (and b!2809912 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003808))))) t!229759) tb!153583))

(declare-fun result!190902 () Bool)

(assert (= result!190902 result!190890))

(assert (=> d!815634 t!229759))

(assert (=> b!2809873 t!229757))

(declare-fun t!229761 () Bool)

(declare-fun tb!153585 () Bool)

(assert (=> (and b!2809912 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99)))) t!229761) tb!153585))

(declare-fun result!190904 () Bool)

(assert (= result!190904 result!190886))

(assert (=> b!2809871 t!229761))

(assert (=> d!815624 t!229761))

(declare-fun tb!153587 () Bool)

(declare-fun t!229763 () Bool)

(assert (=> (and b!2809912 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 lt!1003807))))) t!229763) tb!153587))

(declare-fun result!190906 () Bool)

(assert (= result!190906 result!190852))

(assert (=> d!815530 t!229763))

(declare-fun b_and!205413 () Bool)

(declare-fun tp!897138 () Bool)

(assert (=> b!2809912 (= tp!897138 (and (=> t!229759 result!190902) (=> t!229757 result!190900) (=> t!229761 result!190904) (=> t!229763 result!190906) b_and!205413))))

(declare-fun e!1776953 () Bool)

(assert (=> b!2809580 (= tp!897050 e!1776953)))

(declare-fun tp!897141 () Bool)

(declare-fun e!1776954 () Bool)

(declare-fun e!1776951 () Bool)

(declare-fun b!2809910 () Bool)

(assert (=> b!2809910 (= e!1776951 (and (inv!21 (value!157930 (h!38217 (t!229713 l!4240)))) e!1776954 tp!897141))))

(declare-fun e!1776955 () Bool)

(assert (=> b!2809912 (= e!1776955 (and tp!897140 tp!897138))))

(declare-fun b!2809911 () Bool)

(declare-fun tp!897142 () Bool)

(assert (=> b!2809911 (= e!1776954 (and tp!897142 (inv!44502 (tag!5417 (rule!7341 (h!38217 (t!229713 l!4240))))) (inv!44506 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) e!1776955))))

(declare-fun tp!897139 () Bool)

(declare-fun b!2809909 () Bool)

(assert (=> b!2809909 (= e!1776953 (and (inv!44505 (h!38217 (t!229713 l!4240))) e!1776951 tp!897139))))

(assert (= b!2809911 b!2809912))

(assert (= b!2809910 b!2809911))

(assert (= b!2809909 b!2809910))

(assert (= (and b!2809580 ((_ is Cons!32797) (t!229713 l!4240))) b!2809909))

(declare-fun m!3239661 () Bool)

(assert (=> b!2809910 m!3239661))

(declare-fun m!3239663 () Bool)

(assert (=> b!2809911 m!3239663))

(declare-fun m!3239665 () Bool)

(assert (=> b!2809911 m!3239665))

(declare-fun m!3239667 () Bool)

(assert (=> b!2809909 m!3239667))

(declare-fun b_lambda!84119 () Bool)

(assert (= b_lambda!84117 (or (and b!2809587 b_free!80183) (and b!2809583 b_free!80187 (= (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))))) (and b!2809912 b_free!80195 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))))) b_lambda!84119)))

(declare-fun b_lambda!84121 () Bool)

(assert (= b_lambda!84115 (or (and b!2809587 b_free!80183 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))))) (and b!2809583 b_free!80187) (and b!2809912 b_free!80195 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))))) b_lambda!84121)))

(declare-fun b_lambda!84123 () Bool)

(assert (= b_lambda!84111 (or (and b!2809587 b_free!80183 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))))) (and b!2809583 b_free!80187) (and b!2809912 b_free!80195 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))))) b_lambda!84123)))

(declare-fun b_lambda!84125 () Bool)

(assert (= b_lambda!84101 (or (and b!2809587 b_free!80183) (and b!2809583 b_free!80187 (= (toChars!6774 (transformation!4913 (rule!7341 separatorToken!99))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))))) (and b!2809912 b_free!80195 (= (toChars!6774 (transformation!4913 (rule!7341 (h!38217 (t!229713 l!4240))))) (toChars!6774 (transformation!4913 (rule!7341 (h!38217 l!4240)))))) b_lambda!84125)))

(check-sat (not b!2809853) tp_is_empty!14331 (not b_next!80891) (not b_lambda!84113) (not b!2809855) (not b!2809608) (not d!815528) (not b_lambda!84121) (not d!815610) b_and!205409 (not b!2809863) (not d!815622) (not b!2809806) (not tb!153573) (not d!815642) (not tb!153561) (not d!815562) (not b!2809818) (not d!815640) (not b!2809897) (not b!2809896) (not b!2809616) (not d!815530) (not b!2809682) (not d!815540) (not b_lambda!84119) (not b!2809794) (not b!2809874) (not b!2809864) (not b!2809861) (not b!2809792) (not d!815624) (not d!815630) (not b!2809700) (not b!2809645) (not b!2809911) (not b!2809844) (not d!815632) (not d!815538) (not b!2809892) (not b!2809789) (not b!2809852) (not d!815634) (not b!2809617) b_and!205407 (not b!2809670) (not d!815520) (not b!2809796) (not b_lambda!84125) (not b!2809860) (not b!2809872) (not b!2809607) (not b!2809788) (not b!2809673) (not b!2809893) (not b!2809832) (not b!2809880) (not d!815628) (not b!2809618) (not d!815644) (not b!2809894) (not b!2809657) b_and!205413 (not b!2809909) b_and!205351 (not b!2809701) (not tb!153547) (not b!2809681) (not b_next!80885) (not b!2809691) b_and!205355 (not b!2809879) (not b!2809609) (not b_next!80887) (not b_next!80899) (not d!815542) (not d!815556) (not b_next!80897) (not d!815620) (not tb!153577) (not b!2809898) b_and!205411 (not b!2809674) (not b!2809871) (not b!2809858) (not b_next!80889) (not b!2809644) (not b!2809873) (not b_lambda!84091) (not d!815552) (not b!2809866) (not b!2809689) (not b!2809910) (not b_lambda!84123))
(check-sat (not b_next!80891) b_and!205409 b_and!205407 (not b_next!80887) (not b_next!80899) (not b_next!80897) b_and!205411 (not b_next!80889) b_and!205413 b_and!205351 (not b_next!80885) b_and!205355)
