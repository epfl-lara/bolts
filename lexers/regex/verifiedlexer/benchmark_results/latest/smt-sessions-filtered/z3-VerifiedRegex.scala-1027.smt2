; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51148 () Bool)

(assert start!51148)

(declare-fun b!552217 () Bool)

(declare-fun b_free!15441 () Bool)

(declare-fun b_next!15457 () Bool)

(assert (=> b!552217 (= b_free!15441 (not b_next!15457))))

(declare-fun tp!174627 () Bool)

(declare-fun b_and!53923 () Bool)

(assert (=> b!552217 (= tp!174627 b_and!53923)))

(declare-fun b_free!15443 () Bool)

(declare-fun b_next!15459 () Bool)

(assert (=> b!552217 (= b_free!15443 (not b_next!15459))))

(declare-fun tp!174626 () Bool)

(declare-fun b_and!53925 () Bool)

(assert (=> b!552217 (= tp!174626 b_and!53925)))

(declare-fun b!552209 () Bool)

(declare-fun b_free!15445 () Bool)

(declare-fun b_next!15461 () Bool)

(assert (=> b!552209 (= b_free!15445 (not b_next!15461))))

(declare-fun tp!174625 () Bool)

(declare-fun b_and!53927 () Bool)

(assert (=> b!552209 (= tp!174625 b_and!53927)))

(declare-fun b_free!15447 () Bool)

(declare-fun b_next!15463 () Bool)

(assert (=> b!552209 (= b_free!15447 (not b_next!15463))))

(declare-fun tp!174630 () Bool)

(declare-fun b_and!53929 () Bool)

(assert (=> b!552209 (= tp!174630 b_and!53929)))

(declare-fun b!552203 () Bool)

(declare-fun e!334056 () Bool)

(assert (=> b!552203 (= e!334056 false)))

(declare-datatypes ((C!3672 0))(
  ( (C!3673 (val!2062 Int)) )
))
(declare-datatypes ((Regex!1375 0))(
  ( (ElementMatch!1375 (c!103774 C!3672)) (Concat!2440 (regOne!3262 Regex!1375) (regTwo!3262 Regex!1375)) (EmptyExpr!1375) (Star!1375 (reg!1704 Regex!1375)) (EmptyLang!1375) (Union!1375 (regOne!3263 Regex!1375) (regTwo!3263 Regex!1375)) )
))
(declare-datatypes ((List!5481 0))(
  ( (Nil!5471) (Cons!5471 (h!10872 (_ BitVec 16)) (t!75154 List!5481)) )
))
(declare-datatypes ((List!5482 0))(
  ( (Nil!5472) (Cons!5472 (h!10873 C!3672) (t!75155 List!5482)) )
))
(declare-datatypes ((IArray!3517 0))(
  ( (IArray!3518 (innerList!1816 List!5482)) )
))
(declare-datatypes ((Conc!1758 0))(
  ( (Node!1758 (left!4515 Conc!1758) (right!4845 Conc!1758) (csize!3746 Int) (cheight!1969 Int)) (Leaf!2786 (xs!4395 IArray!3517) (csize!3747 Int)) (Empty!1758) )
))
(declare-datatypes ((BalanceConc!3524 0))(
  ( (BalanceConc!3525 (c!103775 Conc!1758)) )
))
(declare-datatypes ((TokenValue!1065 0))(
  ( (FloatLiteralValue!2130 (text!7900 List!5481)) (TokenValueExt!1064 (__x!4028 Int)) (Broken!5325 (value!34509 List!5481)) (Object!1074) (End!1065) (Def!1065) (Underscore!1065) (Match!1065) (Else!1065) (Error!1065) (Case!1065) (If!1065) (Extends!1065) (Abstract!1065) (Class!1065) (Val!1065) (DelimiterValue!2130 (del!1125 List!5481)) (KeywordValue!1071 (value!34510 List!5481)) (CommentValue!2130 (value!34511 List!5481)) (WhitespaceValue!2130 (value!34512 List!5481)) (IndentationValue!1065 (value!34513 List!5481)) (String!7068) (Int32!1065) (Broken!5326 (value!34514 List!5481)) (Boolean!1066) (Unit!9720) (OperatorValue!1068 (op!1125 List!5481)) (IdentifierValue!2130 (value!34515 List!5481)) (IdentifierValue!2131 (value!34516 List!5481)) (WhitespaceValue!2131 (value!34517 List!5481)) (True!2130) (False!2130) (Broken!5327 (value!34518 List!5481)) (Broken!5328 (value!34519 List!5481)) (True!2131) (RightBrace!1065) (RightBracket!1065) (Colon!1065) (Null!1065) (Comma!1065) (LeftBracket!1065) (False!2131) (LeftBrace!1065) (ImaginaryLiteralValue!1065 (text!7901 List!5481)) (StringLiteralValue!3195 (value!34520 List!5481)) (EOFValue!1065 (value!34521 List!5481)) (IdentValue!1065 (value!34522 List!5481)) (DelimiterValue!2131 (value!34523 List!5481)) (DedentValue!1065 (value!34524 List!5481)) (NewLineValue!1065 (value!34525 List!5481)) (IntegerValue!3195 (value!34526 (_ BitVec 32)) (text!7902 List!5481)) (IntegerValue!3196 (value!34527 Int) (text!7903 List!5481)) (Times!1065) (Or!1065) (Equal!1065) (Minus!1065) (Broken!5329 (value!34528 List!5481)) (And!1065) (Div!1065) (LessEqual!1065) (Mod!1065) (Concat!2441) (Not!1065) (Plus!1065) (SpaceValue!1065 (value!34529 List!5481)) (IntegerValue!3197 (value!34530 Int) (text!7904 List!5481)) (StringLiteralValue!3196 (text!7905 List!5481)) (FloatLiteralValue!2131 (text!7906 List!5481)) (BytesLiteralValue!1065 (value!34531 List!5481)) (CommentValue!2131 (value!34532 List!5481)) (StringLiteralValue!3197 (value!34533 List!5481)) (ErrorTokenValue!1065 (msg!1126 List!5481)) )
))
(declare-datatypes ((String!7069 0))(
  ( (String!7070 (value!34534 String)) )
))
(declare-datatypes ((TokenValueInjection!1898 0))(
  ( (TokenValueInjection!1899 (toValue!1888 Int) (toChars!1747 Int)) )
))
(declare-datatypes ((Rule!1882 0))(
  ( (Rule!1883 (regex!1041 Regex!1375) (tag!1303 String!7069) (isSeparator!1041 Bool) (transformation!1041 TokenValueInjection!1898)) )
))
(declare-datatypes ((List!5483 0))(
  ( (Nil!5473) (Cons!5473 (h!10874 Rule!1882) (t!75156 List!5483)) )
))
(declare-fun rules!3103 () List!5483)

(declare-datatypes ((LexerInterface!927 0))(
  ( (LexerInterfaceExt!924 (__x!4029 Int)) (Lexer!925) )
))
(declare-fun thiss!22590 () LexerInterface!927)

(declare-fun input!2705 () List!5482)

(declare-datatypes ((Token!1818 0))(
  ( (Token!1819 (value!34535 TokenValue!1065) (rule!1767 Rule!1882) (size!4371 Int) (originalCharacters!1080 List!5482)) )
))
(declare-datatypes ((tuple2!6488 0))(
  ( (tuple2!6489 (_1!3508 Token!1818) (_2!3508 List!5482)) )
))
(declare-datatypes ((Option!1391 0))(
  ( (None!1390) (Some!1390 (v!16217 tuple2!6488)) )
))
(declare-fun lt!232999 () Option!1391)

(declare-fun maxPrefix!625 (LexerInterface!927 List!5483 List!5482) Option!1391)

(assert (=> b!552203 (= lt!232999 (maxPrefix!625 thiss!22590 rules!3103 input!2705))))

(declare-fun b!552204 () Bool)

(declare-fun e!334057 () Bool)

(assert (=> b!552204 (= e!334057 e!334056)))

(declare-fun res!236810 () Bool)

(assert (=> b!552204 (=> (not res!236810) (not e!334056))))

(declare-fun lt!232997 () tuple2!6488)

(declare-fun suffix!1342 () List!5482)

(declare-fun token!491 () Token!1818)

(assert (=> b!552204 (= res!236810 (and (= (_1!3508 lt!232997) token!491) (= (_2!3508 lt!232997) suffix!1342)))))

(declare-fun lt!232998 () Option!1391)

(declare-fun get!2076 (Option!1391) tuple2!6488)

(assert (=> b!552204 (= lt!232997 (get!2076 lt!232998))))

(declare-fun b!552205 () Bool)

(declare-fun e!334049 () Bool)

(declare-fun tp_is_empty!3105 () Bool)

(declare-fun tp!174624 () Bool)

(assert (=> b!552205 (= e!334049 (and tp_is_empty!3105 tp!174624))))

(declare-fun e!334047 () Bool)

(declare-fun b!552206 () Bool)

(declare-fun tp!174631 () Bool)

(declare-fun e!334053 () Bool)

(declare-fun inv!21 (TokenValue!1065) Bool)

(assert (=> b!552206 (= e!334053 (and (inv!21 (value!34535 token!491)) e!334047 tp!174631))))

(declare-fun e!334052 () Bool)

(declare-fun tp!174628 () Bool)

(declare-fun e!334054 () Bool)

(declare-fun b!552207 () Bool)

(declare-fun inv!6860 (String!7069) Bool)

(declare-fun inv!6863 (TokenValueInjection!1898) Bool)

(assert (=> b!552207 (= e!334052 (and tp!174628 (inv!6860 (tag!1303 (h!10874 rules!3103))) (inv!6863 (transformation!1041 (h!10874 rules!3103))) e!334054))))

(declare-fun b!552208 () Bool)

(declare-fun res!236816 () Bool)

(declare-fun e!334051 () Bool)

(assert (=> b!552208 (=> (not res!236816) (not e!334051))))

(declare-fun list!2267 (BalanceConc!3524) List!5482)

(declare-fun charsOf!670 (Token!1818) BalanceConc!3524)

(assert (=> b!552208 (= res!236816 (= (list!2267 (charsOf!670 token!491)) input!2705))))

(declare-fun e!334045 () Bool)

(assert (=> b!552209 (= e!334045 (and tp!174625 tp!174630))))

(declare-fun b!552210 () Bool)

(assert (=> b!552210 (= e!334051 e!334057)))

(declare-fun res!236811 () Bool)

(assert (=> b!552210 (=> (not res!236811) (not e!334057))))

(declare-fun isDefined!1203 (Option!1391) Bool)

(assert (=> b!552210 (= res!236811 (isDefined!1203 lt!232998))))

(declare-fun ++!1529 (List!5482 List!5482) List!5482)

(assert (=> b!552210 (= lt!232998 (maxPrefix!625 thiss!22590 rules!3103 (++!1529 input!2705 suffix!1342)))))

(declare-fun res!236814 () Bool)

(assert (=> start!51148 (=> (not res!236814) (not e!334051))))

(get-info :version)

(assert (=> start!51148 (= res!236814 ((_ is Lexer!925) thiss!22590))))

(assert (=> start!51148 e!334051))

(assert (=> start!51148 e!334049))

(declare-fun e!334050 () Bool)

(assert (=> start!51148 e!334050))

(declare-fun inv!6864 (Token!1818) Bool)

(assert (=> start!51148 (and (inv!6864 token!491) e!334053)))

(assert (=> start!51148 true))

(declare-fun e!334055 () Bool)

(assert (=> start!51148 e!334055))

(declare-fun b!552211 () Bool)

(declare-fun tp!174623 () Bool)

(assert (=> b!552211 (= e!334050 (and e!334052 tp!174623))))

(declare-fun b!552212 () Bool)

(declare-fun tp!174632 () Bool)

(assert (=> b!552212 (= e!334055 (and tp_is_empty!3105 tp!174632))))

(declare-fun b!552213 () Bool)

(declare-fun res!236813 () Bool)

(assert (=> b!552213 (=> (not res!236813) (not e!334051))))

(declare-fun isEmpty!3948 (List!5483) Bool)

(assert (=> b!552213 (= res!236813 (not (isEmpty!3948 rules!3103)))))

(declare-fun b!552214 () Bool)

(declare-fun res!236812 () Bool)

(assert (=> b!552214 (=> (not res!236812) (not e!334051))))

(declare-fun isEmpty!3949 (List!5482) Bool)

(assert (=> b!552214 (= res!236812 (not (isEmpty!3949 input!2705)))))

(declare-fun tp!174629 () Bool)

(declare-fun b!552215 () Bool)

(assert (=> b!552215 (= e!334047 (and tp!174629 (inv!6860 (tag!1303 (rule!1767 token!491))) (inv!6863 (transformation!1041 (rule!1767 token!491))) e!334045))))

(declare-fun b!552216 () Bool)

(declare-fun res!236815 () Bool)

(assert (=> b!552216 (=> (not res!236815) (not e!334051))))

(declare-fun rulesInvariant!890 (LexerInterface!927 List!5483) Bool)

(assert (=> b!552216 (= res!236815 (rulesInvariant!890 thiss!22590 rules!3103))))

(assert (=> b!552217 (= e!334054 (and tp!174627 tp!174626))))

(assert (= (and start!51148 res!236814) b!552213))

(assert (= (and b!552213 res!236813) b!552216))

(assert (= (and b!552216 res!236815) b!552214))

(assert (= (and b!552214 res!236812) b!552208))

(assert (= (and b!552208 res!236816) b!552210))

(assert (= (and b!552210 res!236811) b!552204))

(assert (= (and b!552204 res!236810) b!552203))

(assert (= (and start!51148 ((_ is Cons!5472) suffix!1342)) b!552205))

(assert (= b!552207 b!552217))

(assert (= b!552211 b!552207))

(assert (= (and start!51148 ((_ is Cons!5473) rules!3103)) b!552211))

(assert (= b!552215 b!552209))

(assert (= b!552206 b!552215))

(assert (= start!51148 b!552206))

(assert (= (and start!51148 ((_ is Cons!5472) input!2705)) b!552212))

(declare-fun m!801767 () Bool)

(assert (=> b!552204 m!801767))

(declare-fun m!801769 () Bool)

(assert (=> b!552213 m!801769))

(declare-fun m!801771 () Bool)

(assert (=> b!552214 m!801771))

(declare-fun m!801773 () Bool)

(assert (=> b!552210 m!801773))

(declare-fun m!801775 () Bool)

(assert (=> b!552210 m!801775))

(assert (=> b!552210 m!801775))

(declare-fun m!801777 () Bool)

(assert (=> b!552210 m!801777))

(declare-fun m!801779 () Bool)

(assert (=> b!552206 m!801779))

(declare-fun m!801781 () Bool)

(assert (=> b!552207 m!801781))

(declare-fun m!801783 () Bool)

(assert (=> b!552207 m!801783))

(declare-fun m!801785 () Bool)

(assert (=> b!552208 m!801785))

(assert (=> b!552208 m!801785))

(declare-fun m!801787 () Bool)

(assert (=> b!552208 m!801787))

(declare-fun m!801789 () Bool)

(assert (=> start!51148 m!801789))

(declare-fun m!801791 () Bool)

(assert (=> b!552216 m!801791))

(declare-fun m!801793 () Bool)

(assert (=> b!552203 m!801793))

(declare-fun m!801795 () Bool)

(assert (=> b!552215 m!801795))

(declare-fun m!801797 () Bool)

(assert (=> b!552215 m!801797))

(check-sat (not b!552205) (not b_next!15457) (not b!552203) (not b!552210) (not b!552216) (not b!552204) (not b_next!15461) (not b!552211) (not b!552213) (not b!552206) (not b!552215) (not b_next!15459) (not b!552212) tp_is_empty!3105 (not b!552207) b_and!53929 b_and!53927 b_and!53925 (not b!552214) b_and!53923 (not start!51148) (not b_next!15463) (not b!552208))
(check-sat (not b_next!15459) b_and!53929 b_and!53923 (not b_next!15457) (not b_next!15463) (not b_next!15461) b_and!53927 b_and!53925)
