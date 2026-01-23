; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!346238 () Bool)

(assert start!346238)

(declare-fun b!3685649 () Bool)

(declare-fun b_free!97765 () Bool)

(declare-fun b_next!98469 () Bool)

(assert (=> b!3685649 (= b_free!97765 (not b_next!98469))))

(declare-fun tp!1120310 () Bool)

(declare-fun b_and!275447 () Bool)

(assert (=> b!3685649 (= tp!1120310 b_and!275447)))

(declare-fun b_free!97767 () Bool)

(declare-fun b_next!98471 () Bool)

(assert (=> b!3685649 (= b_free!97767 (not b_next!98471))))

(declare-fun tp!1120312 () Bool)

(declare-fun b_and!275449 () Bool)

(assert (=> b!3685649 (= tp!1120312 b_and!275449)))

(declare-fun b!3685643 () Bool)

(declare-fun e!2282364 () Bool)

(declare-fun e!2282362 () Bool)

(assert (=> b!3685643 (= e!2282364 (not e!2282362))))

(declare-fun res!1497660 () Bool)

(assert (=> b!3685643 (=> res!1497660 e!2282362)))

(declare-datatypes ((List!39098 0))(
  ( (Nil!38974) (Cons!38974 (h!44394 (_ BitVec 16)) (t!301073 List!39098)) )
))
(declare-datatypes ((TokenValue!6112 0))(
  ( (FloatLiteralValue!12224 (text!43229 List!39098)) (TokenValueExt!6111 (__x!24441 Int)) (Broken!30560 (value!188071 List!39098)) (Object!6235) (End!6112) (Def!6112) (Underscore!6112) (Match!6112) (Else!6112) (Error!6112) (Case!6112) (If!6112) (Extends!6112) (Abstract!6112) (Class!6112) (Val!6112) (DelimiterValue!12224 (del!6172 List!39098)) (KeywordValue!6118 (value!188072 List!39098)) (CommentValue!12224 (value!188073 List!39098)) (WhitespaceValue!12224 (value!188074 List!39098)) (IndentationValue!6112 (value!188075 List!39098)) (String!43893) (Int32!6112) (Broken!30561 (value!188076 List!39098)) (Boolean!6113) (Unit!57041) (OperatorValue!6115 (op!6172 List!39098)) (IdentifierValue!12224 (value!188077 List!39098)) (IdentifierValue!12225 (value!188078 List!39098)) (WhitespaceValue!12225 (value!188079 List!39098)) (True!12224) (False!12224) (Broken!30562 (value!188080 List!39098)) (Broken!30563 (value!188081 List!39098)) (True!12225) (RightBrace!6112) (RightBracket!6112) (Colon!6112) (Null!6112) (Comma!6112) (LeftBracket!6112) (False!12225) (LeftBrace!6112) (ImaginaryLiteralValue!6112 (text!43230 List!39098)) (StringLiteralValue!18336 (value!188082 List!39098)) (EOFValue!6112 (value!188083 List!39098)) (IdentValue!6112 (value!188084 List!39098)) (DelimiterValue!12225 (value!188085 List!39098)) (DedentValue!6112 (value!188086 List!39098)) (NewLineValue!6112 (value!188087 List!39098)) (IntegerValue!18336 (value!188088 (_ BitVec 32)) (text!43231 List!39098)) (IntegerValue!18337 (value!188089 Int) (text!43232 List!39098)) (Times!6112) (Or!6112) (Equal!6112) (Minus!6112) (Broken!30564 (value!188090 List!39098)) (And!6112) (Div!6112) (LessEqual!6112) (Mod!6112) (Concat!16753) (Not!6112) (Plus!6112) (SpaceValue!6112 (value!188091 List!39098)) (IntegerValue!18338 (value!188092 Int) (text!43233 List!39098)) (StringLiteralValue!18337 (text!43234 List!39098)) (FloatLiteralValue!12225 (text!43235 List!39098)) (BytesLiteralValue!6112 (value!188093 List!39098)) (CommentValue!12225 (value!188094 List!39098)) (StringLiteralValue!18338 (value!188095 List!39098)) (ErrorTokenValue!6112 (msg!6173 List!39098)) )
))
(declare-datatypes ((C!21468 0))(
  ( (C!21469 (val!12782 Int)) )
))
(declare-datatypes ((List!39099 0))(
  ( (Nil!38975) (Cons!38975 (h!44395 C!21468) (t!301074 List!39099)) )
))
(declare-datatypes ((IArray!23913 0))(
  ( (IArray!23914 (innerList!12014 List!39099)) )
))
(declare-datatypes ((Regex!10641 0))(
  ( (ElementMatch!10641 (c!637505 C!21468)) (Concat!16754 (regOne!21794 Regex!10641) (regTwo!21794 Regex!10641)) (EmptyExpr!10641) (Star!10641 (reg!10970 Regex!10641)) (EmptyLang!10641) (Union!10641 (regOne!21795 Regex!10641) (regTwo!21795 Regex!10641)) )
))
(declare-datatypes ((Conc!11954 0))(
  ( (Node!11954 (left!30401 Conc!11954) (right!30731 Conc!11954) (csize!24138 Int) (cheight!12165 Int)) (Leaf!18506 (xs!15156 IArray!23913) (csize!24139 Int)) (Empty!11954) )
))
(declare-datatypes ((BalanceConc!23522 0))(
  ( (BalanceConc!23523 (c!637506 Conc!11954)) )
))
(declare-datatypes ((String!43894 0))(
  ( (String!43895 (value!188096 String)) )
))
(declare-datatypes ((TokenValueInjection!11652 0))(
  ( (TokenValueInjection!11653 (toValue!8190 Int) (toChars!8049 Int)) )
))
(declare-datatypes ((Rule!11564 0))(
  ( (Rule!11565 (regex!5882 Regex!10641) (tag!6692 String!43894) (isSeparator!5882 Bool) (transformation!5882 TokenValueInjection!11652)) )
))
(declare-datatypes ((Token!11130 0))(
  ( (Token!11131 (value!188097 TokenValue!6112) (rule!8724 Rule!11564) (size!29778 Int) (originalCharacters!6596 List!39099)) )
))
(declare-fun lt!1289794 () Token!11130)

(declare-fun lt!1289790 () List!39099)

(declare-fun matchR!5196 (Regex!10641 List!39099) Bool)

(assert (=> b!3685643 (= res!1497660 (not (matchR!5196 (regex!5882 (rule!8724 lt!1289794)) lt!1289790)))))

(declare-fun e!2282356 () Bool)

(assert (=> b!3685643 e!2282356))

(declare-fun res!1497657 () Bool)

(assert (=> b!3685643 (=> (not res!1497657) (not e!2282356))))

(declare-datatypes ((Option!8375 0))(
  ( (None!8374) (Some!8374 (v!38320 Rule!11564)) )
))
(declare-fun lt!1289799 () Option!8375)

(declare-fun isDefined!6583 (Option!8375) Bool)

(assert (=> b!3685643 (= res!1497657 (isDefined!6583 lt!1289799))))

(declare-datatypes ((LexerInterface!5471 0))(
  ( (LexerInterfaceExt!5468 (__x!24442 Int)) (Lexer!5469) )
))
(declare-fun thiss!25197 () LexerInterface!5471)

(declare-datatypes ((List!39100 0))(
  ( (Nil!38976) (Cons!38976 (h!44396 Rule!11564) (t!301075 List!39100)) )
))
(declare-fun rules!3568 () List!39100)

(declare-fun getRuleFromTag!1470 (LexerInterface!5471 List!39100 String!43894) Option!8375)

(assert (=> b!3685643 (= lt!1289799 (getRuleFromTag!1470 thiss!25197 rules!3568 (tag!6692 (rule!8724 lt!1289794))))))

(declare-datatypes ((Unit!57042 0))(
  ( (Unit!57043) )
))
(declare-fun lt!1289791 () Unit!57042)

(declare-fun input!3129 () List!39099)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1470 (LexerInterface!5471 List!39100 List!39099 Token!11130) Unit!57042)

(assert (=> b!3685643 (= lt!1289791 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1470 thiss!25197 rules!3568 input!3129 lt!1289794))))

(declare-fun lt!1289792 () List!39099)

(declare-fun isPrefix!3235 (List!39099 List!39099) Bool)

(assert (=> b!3685643 (isPrefix!3235 lt!1289790 lt!1289792)))

(declare-fun suffix!1448 () List!39099)

(declare-fun ++!9701 (List!39099 List!39099) List!39099)

(assert (=> b!3685643 (= lt!1289792 (++!9701 input!3129 suffix!1448))))

(declare-fun lt!1289798 () Unit!57042)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!566 (List!39099 List!39099 List!39099) Unit!57042)

(assert (=> b!3685643 (= lt!1289798 (lemmaPrefixStaysPrefixWhenAddingToSuffix!566 lt!1289790 input!3129 suffix!1448))))

(declare-datatypes ((tuple2!38856 0))(
  ( (tuple2!38857 (_1!22562 Token!11130) (_2!22562 List!39099)) )
))
(declare-fun lt!1289795 () tuple2!38856)

(assert (=> b!3685643 (isPrefix!3235 lt!1289790 (++!9701 lt!1289790 (_2!22562 lt!1289795)))))

(declare-fun lt!1289797 () Unit!57042)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2152 (List!39099 List!39099) Unit!57042)

(assert (=> b!3685643 (= lt!1289797 (lemmaConcatTwoListThenFirstIsPrefix!2152 lt!1289790 (_2!22562 lt!1289795)))))

(declare-datatypes ((Option!8376 0))(
  ( (None!8375) (Some!8375 (v!38321 tuple2!38856)) )
))
(declare-fun get!12917 (Option!8376) tuple2!38856)

(declare-fun maxPrefix!2999 (LexerInterface!5471 List!39100 List!39099) Option!8376)

(assert (=> b!3685643 (= lt!1289795 (get!12917 (maxPrefix!2999 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14528 (BalanceConc!23522) List!39099)

(declare-fun charsOf!3893 (Token!11130) BalanceConc!23522)

(assert (=> b!3685643 (= lt!1289790 (list!14528 (charsOf!3893 lt!1289794)))))

(declare-datatypes ((List!39101 0))(
  ( (Nil!38977) (Cons!38977 (h!44397 Token!11130) (t!301076 List!39101)) )
))
(declare-datatypes ((IArray!23915 0))(
  ( (IArray!23916 (innerList!12015 List!39101)) )
))
(declare-datatypes ((Conc!11955 0))(
  ( (Node!11955 (left!30402 Conc!11955) (right!30732 Conc!11955) (csize!24140 Int) (cheight!12166 Int)) (Leaf!18507 (xs!15157 IArray!23915) (csize!24141 Int)) (Empty!11955) )
))
(declare-datatypes ((BalanceConc!23524 0))(
  ( (BalanceConc!23525 (c!637507 Conc!11955)) )
))
(declare-datatypes ((tuple2!38858 0))(
  ( (tuple2!38859 (_1!22563 BalanceConc!23524) (_2!22563 BalanceConc!23522)) )
))
(declare-fun lt!1289800 () tuple2!38858)

(declare-fun head!7940 (List!39101) Token!11130)

(declare-fun list!14529 (BalanceConc!23524) List!39101)

(assert (=> b!3685643 (= lt!1289794 (head!7940 (list!14529 (_1!22563 lt!1289800))))))

(declare-fun b!3685644 () Bool)

(declare-fun e!2282366 () Bool)

(declare-fun tp_is_empty!18365 () Bool)

(declare-fun tp!1120307 () Bool)

(assert (=> b!3685644 (= e!2282366 (and tp_is_empty!18365 tp!1120307))))

(declare-fun b!3685645 () Bool)

(declare-fun res!1497658 () Bool)

(declare-fun e!2282361 () Bool)

(assert (=> b!3685645 (=> (not res!1497658) (not e!2282361))))

(declare-fun isEmpty!23175 (List!39100) Bool)

(assert (=> b!3685645 (= res!1497658 (not (isEmpty!23175 rules!3568)))))

(declare-fun b!3685646 () Bool)

(declare-fun e!2282359 () Bool)

(declare-fun tp!1120309 () Bool)

(assert (=> b!3685646 (= e!2282359 (and tp_is_empty!18365 tp!1120309))))

(declare-fun b!3685647 () Bool)

(declare-fun e!2282360 () Bool)

(declare-fun lt!1289796 () Rule!11564)

(assert (=> b!3685647 (= e!2282360 (= (rule!8724 lt!1289794) lt!1289796))))

(declare-fun b!3685648 () Bool)

(assert (=> b!3685648 (= e!2282362 true)))

(declare-fun lt!1289793 () Option!8376)

(assert (=> b!3685648 (= lt!1289793 (maxPrefix!2999 thiss!25197 rules!3568 lt!1289792))))

(declare-fun res!1497654 () Bool)

(assert (=> start!346238 (=> (not res!1497654) (not e!2282361))))

(get-info :version)

(assert (=> start!346238 (= res!1497654 ((_ is Lexer!5469) thiss!25197))))

(assert (=> start!346238 e!2282361))

(assert (=> start!346238 true))

(declare-fun e!2282358 () Bool)

(assert (=> start!346238 e!2282358))

(assert (=> start!346238 e!2282366))

(assert (=> start!346238 e!2282359))

(declare-fun e!2282365 () Bool)

(assert (=> b!3685649 (= e!2282365 (and tp!1120310 tp!1120312))))

(declare-fun e!2282357 () Bool)

(declare-fun b!3685650 () Bool)

(declare-fun tp!1120308 () Bool)

(declare-fun inv!52443 (String!43894) Bool)

(declare-fun inv!52445 (TokenValueInjection!11652) Bool)

(assert (=> b!3685650 (= e!2282357 (and tp!1120308 (inv!52443 (tag!6692 (h!44396 rules!3568))) (inv!52445 (transformation!5882 (h!44396 rules!3568))) e!2282365))))

(declare-fun b!3685651 () Bool)

(assert (=> b!3685651 (= e!2282361 e!2282364)))

(declare-fun res!1497656 () Bool)

(assert (=> b!3685651 (=> (not res!1497656) (not e!2282364))))

(declare-fun isEmpty!23176 (BalanceConc!23524) Bool)

(assert (=> b!3685651 (= res!1497656 (not (isEmpty!23176 (_1!22563 lt!1289800))))))

(declare-fun lex!2612 (LexerInterface!5471 List!39100 BalanceConc!23522) tuple2!38858)

(declare-fun seqFromList!4431 (List!39099) BalanceConc!23522)

(assert (=> b!3685651 (= lt!1289800 (lex!2612 thiss!25197 rules!3568 (seqFromList!4431 input!3129)))))

(declare-fun b!3685652 () Bool)

(assert (=> b!3685652 (= e!2282356 e!2282360)))

(declare-fun res!1497655 () Bool)

(assert (=> b!3685652 (=> (not res!1497655) (not e!2282360))))

(assert (=> b!3685652 (= res!1497655 (matchR!5196 (regex!5882 lt!1289796) lt!1289790))))

(declare-fun get!12918 (Option!8375) Rule!11564)

(assert (=> b!3685652 (= lt!1289796 (get!12918 lt!1289799))))

(declare-fun b!3685653 () Bool)

(declare-fun tp!1120311 () Bool)

(assert (=> b!3685653 (= e!2282358 (and e!2282357 tp!1120311))))

(declare-fun b!3685654 () Bool)

(declare-fun res!1497659 () Bool)

(assert (=> b!3685654 (=> (not res!1497659) (not e!2282361))))

(declare-fun rulesInvariant!4868 (LexerInterface!5471 List!39100) Bool)

(assert (=> b!3685654 (= res!1497659 (rulesInvariant!4868 thiss!25197 rules!3568))))

(assert (= (and start!346238 res!1497654) b!3685645))

(assert (= (and b!3685645 res!1497658) b!3685654))

(assert (= (and b!3685654 res!1497659) b!3685651))

(assert (= (and b!3685651 res!1497656) b!3685643))

(assert (= (and b!3685643 res!1497657) b!3685652))

(assert (= (and b!3685652 res!1497655) b!3685647))

(assert (= (and b!3685643 (not res!1497660)) b!3685648))

(assert (= b!3685650 b!3685649))

(assert (= b!3685653 b!3685650))

(assert (= (and start!346238 ((_ is Cons!38976) rules!3568)) b!3685653))

(assert (= (and start!346238 ((_ is Cons!38975) suffix!1448)) b!3685644))

(assert (= (and start!346238 ((_ is Cons!38975) input!3129)) b!3685646))

(declare-fun m!4197153 () Bool)

(assert (=> b!3685643 m!4197153))

(declare-fun m!4197155 () Bool)

(assert (=> b!3685643 m!4197155))

(declare-fun m!4197157 () Bool)

(assert (=> b!3685643 m!4197157))

(declare-fun m!4197159 () Bool)

(assert (=> b!3685643 m!4197159))

(declare-fun m!4197161 () Bool)

(assert (=> b!3685643 m!4197161))

(declare-fun m!4197163 () Bool)

(assert (=> b!3685643 m!4197163))

(declare-fun m!4197165 () Bool)

(assert (=> b!3685643 m!4197165))

(declare-fun m!4197167 () Bool)

(assert (=> b!3685643 m!4197167))

(declare-fun m!4197169 () Bool)

(assert (=> b!3685643 m!4197169))

(declare-fun m!4197171 () Bool)

(assert (=> b!3685643 m!4197171))

(assert (=> b!3685643 m!4197167))

(declare-fun m!4197173 () Bool)

(assert (=> b!3685643 m!4197173))

(declare-fun m!4197175 () Bool)

(assert (=> b!3685643 m!4197175))

(assert (=> b!3685643 m!4197171))

(declare-fun m!4197177 () Bool)

(assert (=> b!3685643 m!4197177))

(assert (=> b!3685643 m!4197159))

(declare-fun m!4197179 () Bool)

(assert (=> b!3685643 m!4197179))

(assert (=> b!3685643 m!4197163))

(declare-fun m!4197181 () Bool)

(assert (=> b!3685643 m!4197181))

(declare-fun m!4197183 () Bool)

(assert (=> b!3685643 m!4197183))

(declare-fun m!4197185 () Bool)

(assert (=> b!3685645 m!4197185))

(declare-fun m!4197187 () Bool)

(assert (=> b!3685650 m!4197187))

(declare-fun m!4197189 () Bool)

(assert (=> b!3685650 m!4197189))

(declare-fun m!4197191 () Bool)

(assert (=> b!3685654 m!4197191))

(declare-fun m!4197193 () Bool)

(assert (=> b!3685651 m!4197193))

(declare-fun m!4197195 () Bool)

(assert (=> b!3685651 m!4197195))

(assert (=> b!3685651 m!4197195))

(declare-fun m!4197197 () Bool)

(assert (=> b!3685651 m!4197197))

(declare-fun m!4197199 () Bool)

(assert (=> b!3685648 m!4197199))

(declare-fun m!4197201 () Bool)

(assert (=> b!3685652 m!4197201))

(declare-fun m!4197203 () Bool)

(assert (=> b!3685652 m!4197203))

(check-sat (not b!3685648) tp_is_empty!18365 b_and!275447 (not b!3685654) (not b!3685645) (not b_next!98471) (not b!3685643) (not b!3685651) (not b!3685650) (not b!3685646) (not b!3685652) (not b_next!98469) (not b!3685653) b_and!275449 (not b!3685644))
(check-sat b_and!275447 b_and!275449 (not b_next!98471) (not b_next!98469))
