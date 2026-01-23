; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138464 () Bool)

(assert start!138464)

(declare-fun b!1476140 () Bool)

(declare-fun b_free!37683 () Bool)

(declare-fun b_next!38387 () Bool)

(assert (=> b!1476140 (= b_free!37683 (not b_next!38387))))

(declare-fun tp!417649 () Bool)

(declare-fun b_and!101945 () Bool)

(assert (=> b!1476140 (= tp!417649 b_and!101945)))

(declare-fun b_free!37685 () Bool)

(declare-fun b_next!38389 () Bool)

(assert (=> b!1476140 (= b_free!37685 (not b_next!38389))))

(declare-fun tp!417646 () Bool)

(declare-fun b_and!101947 () Bool)

(assert (=> b!1476140 (= tp!417646 b_and!101947)))

(declare-fun b!1476142 () Bool)

(declare-fun b_free!37687 () Bool)

(declare-fun b_next!38391 () Bool)

(assert (=> b!1476142 (= b_free!37687 (not b_next!38391))))

(declare-fun tp!417648 () Bool)

(declare-fun b_and!101949 () Bool)

(assert (=> b!1476142 (= tp!417648 b_and!101949)))

(declare-fun b_free!37689 () Bool)

(declare-fun b_next!38393 () Bool)

(assert (=> b!1476142 (= b_free!37689 (not b_next!38393))))

(declare-fun tp!417647 () Bool)

(declare-fun b_and!101951 () Bool)

(assert (=> b!1476142 (= tp!417647 b_and!101951)))

(declare-fun b!1476133 () Bool)

(declare-fun b_free!37691 () Bool)

(declare-fun b_next!38395 () Bool)

(assert (=> b!1476133 (= b_free!37691 (not b_next!38395))))

(declare-fun tp!417642 () Bool)

(declare-fun b_and!101953 () Bool)

(assert (=> b!1476133 (= tp!417642 b_and!101953)))

(declare-fun b_free!37693 () Bool)

(declare-fun b_next!38397 () Bool)

(assert (=> b!1476133 (= b_free!37693 (not b_next!38397))))

(declare-fun tp!417653 () Bool)

(declare-fun b_and!101955 () Bool)

(assert (=> b!1476133 (= tp!417653 b_and!101955)))

(declare-fun b!1476130 () Bool)

(declare-fun res!667166 () Bool)

(declare-fun e!943099 () Bool)

(assert (=> b!1476130 (=> (not res!667166) (not e!943099))))

(declare-datatypes ((String!18547 0))(
  ( (String!18548 (value!88511 String)) )
))
(declare-datatypes ((List!15612 0))(
  ( (Nil!15546) (Cons!15546 (h!20947 (_ BitVec 16)) (t!136641 List!15612)) )
))
(declare-datatypes ((C!8342 0))(
  ( (C!8343 (val!4741 Int)) )
))
(declare-datatypes ((List!15613 0))(
  ( (Nil!15547) (Cons!15547 (h!20948 C!8342) (t!136642 List!15613)) )
))
(declare-datatypes ((Regex!4082 0))(
  ( (ElementMatch!4082 (c!242611 C!8342)) (Concat!6940 (regOne!8676 Regex!4082) (regTwo!8676 Regex!4082)) (EmptyExpr!4082) (Star!4082 (reg!4411 Regex!4082)) (EmptyLang!4082) (Union!4082 (regOne!8677 Regex!4082) (regTwo!8677 Regex!4082)) )
))
(declare-datatypes ((TokenValue!2858 0))(
  ( (FloatLiteralValue!5716 (text!20451 List!15612)) (TokenValueExt!2857 (__x!9506 Int)) (Broken!14290 (value!88512 List!15612)) (Object!2923) (End!2858) (Def!2858) (Underscore!2858) (Match!2858) (Else!2858) (Error!2858) (Case!2858) (If!2858) (Extends!2858) (Abstract!2858) (Class!2858) (Val!2858) (DelimiterValue!5716 (del!2918 List!15612)) (KeywordValue!2864 (value!88513 List!15612)) (CommentValue!5716 (value!88514 List!15612)) (WhitespaceValue!5716 (value!88515 List!15612)) (IndentationValue!2858 (value!88516 List!15612)) (String!18549) (Int32!2858) (Broken!14291 (value!88517 List!15612)) (Boolean!2859) (Unit!25307) (OperatorValue!2861 (op!2918 List!15612)) (IdentifierValue!5716 (value!88518 List!15612)) (IdentifierValue!5717 (value!88519 List!15612)) (WhitespaceValue!5717 (value!88520 List!15612)) (True!5716) (False!5716) (Broken!14292 (value!88521 List!15612)) (Broken!14293 (value!88522 List!15612)) (True!5717) (RightBrace!2858) (RightBracket!2858) (Colon!2858) (Null!2858) (Comma!2858) (LeftBracket!2858) (False!5717) (LeftBrace!2858) (ImaginaryLiteralValue!2858 (text!20452 List!15612)) (StringLiteralValue!8574 (value!88523 List!15612)) (EOFValue!2858 (value!88524 List!15612)) (IdentValue!2858 (value!88525 List!15612)) (DelimiterValue!5717 (value!88526 List!15612)) (DedentValue!2858 (value!88527 List!15612)) (NewLineValue!2858 (value!88528 List!15612)) (IntegerValue!8574 (value!88529 (_ BitVec 32)) (text!20453 List!15612)) (IntegerValue!8575 (value!88530 Int) (text!20454 List!15612)) (Times!2858) (Or!2858) (Equal!2858) (Minus!2858) (Broken!14294 (value!88531 List!15612)) (And!2858) (Div!2858) (LessEqual!2858) (Mod!2858) (Concat!6941) (Not!2858) (Plus!2858) (SpaceValue!2858 (value!88532 List!15612)) (IntegerValue!8576 (value!88533 Int) (text!20455 List!15612)) (StringLiteralValue!8575 (text!20456 List!15612)) (FloatLiteralValue!5717 (text!20457 List!15612)) (BytesLiteralValue!2858 (value!88534 List!15612)) (CommentValue!5717 (value!88535 List!15612)) (StringLiteralValue!8576 (value!88536 List!15612)) (ErrorTokenValue!2858 (msg!2919 List!15612)) )
))
(declare-datatypes ((IArray!10599 0))(
  ( (IArray!10600 (innerList!5357 List!15613)) )
))
(declare-datatypes ((Conc!5297 0))(
  ( (Node!5297 (left!13124 Conc!5297) (right!13454 Conc!5297) (csize!10824 Int) (cheight!5508 Int)) (Leaf!7883 (xs!8052 IArray!10599) (csize!10825 Int)) (Empty!5297) )
))
(declare-datatypes ((BalanceConc!10534 0))(
  ( (BalanceConc!10535 (c!242612 Conc!5297)) )
))
(declare-datatypes ((TokenValueInjection!5376 0))(
  ( (TokenValueInjection!5377 (toValue!4103 Int) (toChars!3962 Int)) )
))
(declare-datatypes ((Rule!5336 0))(
  ( (Rule!5337 (regex!2768 Regex!4082) (tag!3032 String!18547) (isSeparator!2768 Bool) (transformation!2768 TokenValueInjection!5376)) )
))
(declare-datatypes ((List!15614 0))(
  ( (Nil!15548) (Cons!15548 (h!20949 Rule!5336) (t!136643 List!15614)) )
))
(declare-fun rules!4290 () List!15614)

(declare-datatypes ((LexerInterface!2424 0))(
  ( (LexerInterfaceExt!2421 (__x!9507 Int)) (Lexer!2422) )
))
(declare-fun thiss!27374 () LexerInterface!2424)

(declare-datatypes ((Token!5198 0))(
  ( (Token!5199 (value!88537 TokenValue!2858) (rule!4545 Rule!5336) (size!12604 Int) (originalCharacters!3630 List!15613)) )
))
(declare-datatypes ((List!15615 0))(
  ( (Nil!15549) (Cons!15549 (h!20950 Token!5198) (t!136644 List!15615)) )
))
(declare-fun l1!3136 () List!15615)

(declare-fun rulesProduceEachTokenIndividuallyList!791 (LexerInterface!2424 List!15614 List!15615) Bool)

(assert (=> b!1476130 (= res!667166 (rulesProduceEachTokenIndividuallyList!791 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1476131 () Bool)

(declare-fun res!667154 () Bool)

(declare-fun e!943112 () Bool)

(assert (=> b!1476131 (=> res!667154 e!943112)))

(declare-fun e!943102 () Bool)

(assert (=> b!1476131 (= res!667154 e!943102)))

(declare-fun res!667164 () Bool)

(assert (=> b!1476131 (=> (not res!667164) (not e!943102))))

(assert (=> b!1476131 (= res!667164 (is-Cons!15549 l1!3136))))

(declare-fun b!1476132 () Bool)

(declare-fun res!667162 () Bool)

(assert (=> b!1476132 (=> (not res!667162) (not e!943099))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!284 (LexerInterface!2424 List!15615 List!15614) Bool)

(assert (=> b!1476132 (= res!667162 (tokensListTwoByTwoPredicateSeparableList!284 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!943110 () Bool)

(assert (=> b!1476133 (= e!943110 (and tp!417642 tp!417653))))

(declare-fun b!1476134 () Bool)

(declare-fun e!943105 () Bool)

(declare-fun isEmpty!9715 (List!15615) Bool)

(assert (=> b!1476134 (= e!943105 (not (isEmpty!9715 (t!136644 l1!3136))))))

(declare-fun e!943104 () Bool)

(declare-fun tp!417644 () Bool)

(declare-fun e!943113 () Bool)

(declare-fun b!1476135 () Bool)

(declare-fun inv!20757 (String!18547) Bool)

(declare-fun inv!20760 (TokenValueInjection!5376) Bool)

(assert (=> b!1476135 (= e!943104 (and tp!417644 (inv!20757 (tag!3032 (h!20949 rules!4290))) (inv!20760 (transformation!2768 (h!20949 rules!4290))) e!943113))))

(declare-fun b!1476136 () Bool)

(declare-fun e!943100 () Bool)

(declare-fun tp!417654 () Bool)

(assert (=> b!1476136 (= e!943100 (and e!943104 tp!417654))))

(declare-fun b!1476137 () Bool)

(declare-fun res!667165 () Bool)

(assert (=> b!1476137 (=> (not res!667165) (not e!943099))))

(assert (=> b!1476137 (= res!667165 (not (isEmpty!9715 l1!3136)))))

(declare-fun b!1476138 () Bool)

(declare-fun res!667161 () Bool)

(assert (=> b!1476138 (=> (not res!667161) (not e!943099))))

(declare-fun rulesInvariant!2213 (LexerInterface!2424 List!15614) Bool)

(assert (=> b!1476138 (= res!667161 (rulesInvariant!2213 thiss!27374 rules!4290))))

(declare-fun tp!417643 () Bool)

(declare-fun e!943098 () Bool)

(declare-fun e!943103 () Bool)

(declare-fun b!1476139 () Bool)

(declare-fun l2!3105 () List!15615)

(declare-fun inv!21 (TokenValue!2858) Bool)

(assert (=> b!1476139 (= e!943098 (and (inv!21 (value!88537 (h!20950 l2!3105))) e!943103 tp!417643))))

(declare-fun res!667158 () Bool)

(assert (=> start!138464 (=> (not res!667158) (not e!943099))))

(assert (=> start!138464 (= res!667158 (is-Lexer!2422 thiss!27374))))

(assert (=> start!138464 e!943099))

(assert (=> start!138464 true))

(assert (=> start!138464 e!943100))

(declare-fun e!943108 () Bool)

(assert (=> start!138464 e!943108))

(declare-fun e!943111 () Bool)

(assert (=> start!138464 e!943111))

(declare-fun e!943115 () Bool)

(assert (=> b!1476140 (= e!943115 (and tp!417649 tp!417646))))

(declare-fun tp!417651 () Bool)

(declare-fun e!943097 () Bool)

(declare-fun e!943116 () Bool)

(declare-fun b!1476141 () Bool)

(assert (=> b!1476141 (= e!943116 (and (inv!21 (value!88537 (h!20950 l1!3136))) e!943097 tp!417651))))

(assert (=> b!1476142 (= e!943113 (and tp!417648 tp!417647))))

(declare-fun tp!417641 () Bool)

(declare-fun b!1476143 () Bool)

(assert (=> b!1476143 (= e!943097 (and tp!417641 (inv!20757 (tag!3032 (rule!4545 (h!20950 l1!3136)))) (inv!20760 (transformation!2768 (rule!4545 (h!20950 l1!3136)))) e!943115))))

(declare-fun b!1476144 () Bool)

(declare-fun res!667155 () Bool)

(assert (=> b!1476144 (=> (not res!667155) (not e!943099))))

(declare-fun isEmpty!9716 (List!15614) Bool)

(assert (=> b!1476144 (= res!667155 (not (isEmpty!9716 rules!4290)))))

(declare-fun b!1476145 () Bool)

(assert (=> b!1476145 (= e!943099 (not e!943112))))

(declare-fun res!667160 () Bool)

(assert (=> b!1476145 (=> res!667160 e!943112)))

(declare-fun lt!513142 () Token!5198)

(declare-fun lt!513146 () Token!5198)

(declare-fun separableTokensPredicate!567 (LexerInterface!2424 Token!5198 Token!5198 List!15614) Bool)

(assert (=> b!1476145 (= res!667160 (not (separableTokensPredicate!567 thiss!27374 lt!513142 lt!513146 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1283 (LexerInterface!2424 List!15614 Token!5198) Bool)

(assert (=> b!1476145 (rulesProduceIndividualToken!1283 thiss!27374 rules!4290 lt!513146)))

(declare-datatypes ((Unit!25308 0))(
  ( (Unit!25309) )
))
(declare-fun lt!513144 () Unit!25308)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!464 (LexerInterface!2424 List!15614 List!15615 Token!5198) Unit!25308)

(assert (=> b!1476145 (= lt!513144 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!464 thiss!27374 rules!4290 l2!3105 lt!513146))))

(declare-fun head!3062 (List!15615) Token!5198)

(assert (=> b!1476145 (= lt!513146 (head!3062 l2!3105))))

(assert (=> b!1476145 (rulesProduceIndividualToken!1283 thiss!27374 rules!4290 lt!513142)))

(declare-fun lt!513143 () Unit!25308)

(assert (=> b!1476145 (= lt!513143 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!464 thiss!27374 rules!4290 l1!3136 lt!513142))))

(declare-fun last!326 (List!15615) Token!5198)

(assert (=> b!1476145 (= lt!513142 (last!326 l1!3136))))

(declare-fun b!1476146 () Bool)

(assert (=> b!1476146 (= e!943112 true)))

(declare-fun ++!4204 (List!15615 List!15615) List!15615)

(assert (=> b!1476146 (rulesProduceEachTokenIndividuallyList!791 thiss!27374 rules!4290 (++!4204 l1!3136 l2!3105))))

(declare-fun lt!513145 () Unit!25308)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!69 (LexerInterface!2424 List!15614 List!15615 List!15615) Unit!25308)

(assert (=> b!1476146 (= lt!513145 (lemmaRulesProduceEachTokenIndividuallyConcat!69 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun b!1476147 () Bool)

(declare-fun tp!417650 () Bool)

(declare-fun inv!20761 (Token!5198) Bool)

(assert (=> b!1476147 (= e!943111 (and (inv!20761 (h!20950 l2!3105)) e!943098 tp!417650))))

(declare-fun tp!417645 () Bool)

(declare-fun b!1476148 () Bool)

(assert (=> b!1476148 (= e!943103 (and tp!417645 (inv!20757 (tag!3032 (rule!4545 (h!20950 l2!3105)))) (inv!20760 (transformation!2768 (rule!4545 (h!20950 l2!3105)))) e!943110))))

(declare-fun b!1476149 () Bool)

(declare-fun res!667163 () Bool)

(assert (=> b!1476149 (=> res!667163 e!943112)))

(assert (=> b!1476149 (= res!667163 e!943105)))

(declare-fun res!667156 () Bool)

(assert (=> b!1476149 (=> (not res!667156) (not e!943105))))

(assert (=> b!1476149 (= res!667156 (is-Cons!15549 l1!3136))))

(declare-fun b!1476150 () Bool)

(declare-fun tp!417652 () Bool)

(assert (=> b!1476150 (= e!943108 (and (inv!20761 (h!20950 l1!3136)) e!943116 tp!417652))))

(declare-fun b!1476151 () Bool)

(declare-fun res!667159 () Bool)

(assert (=> b!1476151 (=> (not res!667159) (not e!943099))))

(assert (=> b!1476151 (= res!667159 (not (isEmpty!9715 l2!3105)))))

(declare-fun b!1476152 () Bool)

(declare-fun res!667153 () Bool)

(assert (=> b!1476152 (=> (not res!667153) (not e!943099))))

(assert (=> b!1476152 (= res!667153 (tokensListTwoByTwoPredicateSeparableList!284 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1476153 () Bool)

(declare-fun res!667157 () Bool)

(assert (=> b!1476153 (=> (not res!667157) (not e!943099))))

(assert (=> b!1476153 (= res!667157 (rulesProduceEachTokenIndividuallyList!791 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1476154 () Bool)

(assert (=> b!1476154 (= e!943102 (isEmpty!9715 (t!136644 l1!3136)))))

(assert (= (and start!138464 res!667158) b!1476144))

(assert (= (and b!1476144 res!667155) b!1476138))

(assert (= (and b!1476138 res!667161) b!1476130))

(assert (= (and b!1476130 res!667166) b!1476153))

(assert (= (and b!1476153 res!667157) b!1476132))

(assert (= (and b!1476132 res!667162) b!1476152))

(assert (= (and b!1476152 res!667153) b!1476137))

(assert (= (and b!1476137 res!667165) b!1476151))

(assert (= (and b!1476151 res!667159) b!1476145))

(assert (= (and b!1476145 (not res!667160)) b!1476149))

(assert (= (and b!1476149 res!667156) b!1476134))

(assert (= (and b!1476149 (not res!667163)) b!1476131))

(assert (= (and b!1476131 res!667164) b!1476154))

(assert (= (and b!1476131 (not res!667154)) b!1476146))

(assert (= b!1476135 b!1476142))

(assert (= b!1476136 b!1476135))

(assert (= (and start!138464 (is-Cons!15548 rules!4290)) b!1476136))

(assert (= b!1476143 b!1476140))

(assert (= b!1476141 b!1476143))

(assert (= b!1476150 b!1476141))

(assert (= (and start!138464 (is-Cons!15549 l1!3136)) b!1476150))

(assert (= b!1476148 b!1476133))

(assert (= b!1476139 b!1476148))

(assert (= b!1476147 b!1476139))

(assert (= (and start!138464 (is-Cons!15549 l2!3105)) b!1476147))

(declare-fun m!1721805 () Bool)

(assert (=> b!1476144 m!1721805))

(declare-fun m!1721807 () Bool)

(assert (=> b!1476139 m!1721807))

(declare-fun m!1721809 () Bool)

(assert (=> b!1476134 m!1721809))

(declare-fun m!1721811 () Bool)

(assert (=> b!1476135 m!1721811))

(declare-fun m!1721813 () Bool)

(assert (=> b!1476135 m!1721813))

(declare-fun m!1721815 () Bool)

(assert (=> b!1476146 m!1721815))

(assert (=> b!1476146 m!1721815))

(declare-fun m!1721817 () Bool)

(assert (=> b!1476146 m!1721817))

(declare-fun m!1721819 () Bool)

(assert (=> b!1476146 m!1721819))

(declare-fun m!1721821 () Bool)

(assert (=> b!1476138 m!1721821))

(declare-fun m!1721823 () Bool)

(assert (=> b!1476147 m!1721823))

(declare-fun m!1721825 () Bool)

(assert (=> b!1476152 m!1721825))

(declare-fun m!1721827 () Bool)

(assert (=> b!1476150 m!1721827))

(declare-fun m!1721829 () Bool)

(assert (=> b!1476143 m!1721829))

(declare-fun m!1721831 () Bool)

(assert (=> b!1476143 m!1721831))

(declare-fun m!1721833 () Bool)

(assert (=> b!1476132 m!1721833))

(declare-fun m!1721835 () Bool)

(assert (=> b!1476145 m!1721835))

(declare-fun m!1721837 () Bool)

(assert (=> b!1476145 m!1721837))

(declare-fun m!1721839 () Bool)

(assert (=> b!1476145 m!1721839))

(declare-fun m!1721841 () Bool)

(assert (=> b!1476145 m!1721841))

(declare-fun m!1721843 () Bool)

(assert (=> b!1476145 m!1721843))

(declare-fun m!1721845 () Bool)

(assert (=> b!1476145 m!1721845))

(declare-fun m!1721847 () Bool)

(assert (=> b!1476145 m!1721847))

(declare-fun m!1721849 () Bool)

(assert (=> b!1476148 m!1721849))

(declare-fun m!1721851 () Bool)

(assert (=> b!1476148 m!1721851))

(declare-fun m!1721853 () Bool)

(assert (=> b!1476151 m!1721853))

(declare-fun m!1721855 () Bool)

(assert (=> b!1476130 m!1721855))

(declare-fun m!1721857 () Bool)

(assert (=> b!1476141 m!1721857))

(declare-fun m!1721859 () Bool)

(assert (=> b!1476153 m!1721859))

(declare-fun m!1721861 () Bool)

(assert (=> b!1476137 m!1721861))

(assert (=> b!1476154 m!1721809))

(push 1)

(assert b_and!101955)

(assert b_and!101949)

(assert (not b!1476136))

(assert (not b!1476150))

(assert (not b_next!38397))

(assert b_and!101951)

(assert (not b!1476152))

(assert b_and!101953)

(assert (not b_next!38389))

(assert (not b_next!38391))

(assert (not b!1476151))

(assert b_and!101945)

(assert (not b!1476137))

(assert (not b!1476132))

(assert (not b!1476141))

(assert (not b!1476130))

(assert (not b!1476134))

(assert (not b!1476145))

(assert b_and!101947)

(assert (not b!1476138))

(assert (not b!1476146))

(assert (not b!1476139))

(assert (not b!1476135))

(assert (not b!1476147))

(assert (not b_next!38393))

(assert (not b!1476153))

(assert (not b_next!38395))

(assert (not b!1476154))

(assert (not b!1476144))

(assert (not b!1476143))

(assert (not b_next!38387))

(assert (not b!1476148))

(check-sat)

(pop 1)

(push 1)

(assert b_and!101955)

(assert (not b_next!38391))

(assert b_and!101945)

(assert b_and!101947)

(assert b_and!101949)

(assert (not b_next!38397))

(assert b_and!101951)

(assert (not b_next!38393))

(assert (not b_next!38395))

(assert (not b_next!38387))

(assert b_and!101953)

(assert (not b_next!38389))

(check-sat)

(pop 1)

