; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402686 () Bool)

(assert start!402686)

(declare-fun b!4213616 () Bool)

(declare-fun b_free!123459 () Bool)

(declare-fun b_next!124163 () Bool)

(assert (=> b!4213616 (= b_free!123459 (not b_next!124163))))

(declare-fun tp!1288671 () Bool)

(declare-fun b_and!331765 () Bool)

(assert (=> b!4213616 (= tp!1288671 b_and!331765)))

(declare-fun b_free!123461 () Bool)

(declare-fun b_next!124165 () Bool)

(assert (=> b!4213616 (= b_free!123461 (not b_next!124165))))

(declare-fun tp!1288684 () Bool)

(declare-fun b_and!331767 () Bool)

(assert (=> b!4213616 (= tp!1288684 b_and!331767)))

(declare-fun b!4213603 () Bool)

(declare-fun b_free!123463 () Bool)

(declare-fun b_next!124167 () Bool)

(assert (=> b!4213603 (= b_free!123463 (not b_next!124167))))

(declare-fun tp!1288676 () Bool)

(declare-fun b_and!331769 () Bool)

(assert (=> b!4213603 (= tp!1288676 b_and!331769)))

(declare-fun b_free!123465 () Bool)

(declare-fun b_next!124169 () Bool)

(assert (=> b!4213603 (= b_free!123465 (not b_next!124169))))

(declare-fun tp!1288669 () Bool)

(declare-fun b_and!331771 () Bool)

(assert (=> b!4213603 (= tp!1288669 b_and!331771)))

(declare-fun b!4213606 () Bool)

(declare-fun b_free!123467 () Bool)

(declare-fun b_next!124171 () Bool)

(assert (=> b!4213606 (= b_free!123467 (not b_next!124171))))

(declare-fun tp!1288679 () Bool)

(declare-fun b_and!331773 () Bool)

(assert (=> b!4213606 (= tp!1288679 b_and!331773)))

(declare-fun b_free!123469 () Bool)

(declare-fun b_next!124173 () Bool)

(assert (=> b!4213606 (= b_free!123469 (not b_next!124173))))

(declare-fun tp!1288681 () Bool)

(declare-fun b_and!331775 () Bool)

(assert (=> b!4213606 (= tp!1288681 b_and!331775)))

(declare-fun b!4213614 () Bool)

(declare-fun b_free!123471 () Bool)

(declare-fun b_next!124175 () Bool)

(assert (=> b!4213614 (= b_free!123471 (not b_next!124175))))

(declare-fun tp!1288686 () Bool)

(declare-fun b_and!331777 () Bool)

(assert (=> b!4213614 (= tp!1288686 b_and!331777)))

(declare-fun b_free!123473 () Bool)

(declare-fun b_next!124177 () Bool)

(assert (=> b!4213614 (= b_free!123473 (not b_next!124177))))

(declare-fun tp!1288687 () Bool)

(declare-fun b_and!331779 () Bool)

(assert (=> b!4213614 (= tp!1288687 b_and!331779)))

(declare-datatypes ((List!46461 0))(
  ( (Nil!46337) (Cons!46337 (h!51757 (_ BitVec 16)) (t!348180 List!46461)) )
))
(declare-datatypes ((TokenValue!7990 0))(
  ( (FloatLiteralValue!15980 (text!56375 List!46461)) (TokenValueExt!7989 (__x!28203 Int)) (Broken!39950 (value!241663 List!46461)) (Object!8113) (End!7990) (Def!7990) (Underscore!7990) (Match!7990) (Else!7990) (Error!7990) (Case!7990) (If!7990) (Extends!7990) (Abstract!7990) (Class!7990) (Val!7990) (DelimiterValue!15980 (del!8050 List!46461)) (KeywordValue!7996 (value!241664 List!46461)) (CommentValue!15980 (value!241665 List!46461)) (WhitespaceValue!15980 (value!241666 List!46461)) (IndentationValue!7990 (value!241667 List!46461)) (String!53819) (Int32!7990) (Broken!39951 (value!241668 List!46461)) (Boolean!7991) (Unit!65462) (OperatorValue!7993 (op!8050 List!46461)) (IdentifierValue!15980 (value!241669 List!46461)) (IdentifierValue!15981 (value!241670 List!46461)) (WhitespaceValue!15981 (value!241671 List!46461)) (True!15980) (False!15980) (Broken!39952 (value!241672 List!46461)) (Broken!39953 (value!241673 List!46461)) (True!15981) (RightBrace!7990) (RightBracket!7990) (Colon!7990) (Null!7990) (Comma!7990) (LeftBracket!7990) (False!15981) (LeftBrace!7990) (ImaginaryLiteralValue!7990 (text!56376 List!46461)) (StringLiteralValue!23970 (value!241674 List!46461)) (EOFValue!7990 (value!241675 List!46461)) (IdentValue!7990 (value!241676 List!46461)) (DelimiterValue!15981 (value!241677 List!46461)) (DedentValue!7990 (value!241678 List!46461)) (NewLineValue!7990 (value!241679 List!46461)) (IntegerValue!23970 (value!241680 (_ BitVec 32)) (text!56377 List!46461)) (IntegerValue!23971 (value!241681 Int) (text!56378 List!46461)) (Times!7990) (Or!7990) (Equal!7990) (Minus!7990) (Broken!39954 (value!241682 List!46461)) (And!7990) (Div!7990) (LessEqual!7990) (Mod!7990) (Concat!20655) (Not!7990) (Plus!7990) (SpaceValue!7990 (value!241683 List!46461)) (IntegerValue!23972 (value!241684 Int) (text!56379 List!46461)) (StringLiteralValue!23971 (text!56380 List!46461)) (FloatLiteralValue!15981 (text!56381 List!46461)) (BytesLiteralValue!7990 (value!241685 List!46461)) (CommentValue!15981 (value!241686 List!46461)) (StringLiteralValue!23972 (value!241687 List!46461)) (ErrorTokenValue!7990 (msg!8051 List!46461)) )
))
(declare-datatypes ((C!25524 0))(
  ( (C!25525 (val!14924 Int)) )
))
(declare-datatypes ((List!46462 0))(
  ( (Nil!46338) (Cons!46338 (h!51758 C!25524) (t!348181 List!46462)) )
))
(declare-datatypes ((IArray!27947 0))(
  ( (IArray!27948 (innerList!14031 List!46462)) )
))
(declare-datatypes ((Regex!12665 0))(
  ( (ElementMatch!12665 (c!717574 C!25524)) (Concat!20656 (regOne!25842 Regex!12665) (regTwo!25842 Regex!12665)) (EmptyExpr!12665) (Star!12665 (reg!12994 Regex!12665)) (EmptyLang!12665) (Union!12665 (regOne!25843 Regex!12665) (regTwo!25843 Regex!12665)) )
))
(declare-datatypes ((Conc!13971 0))(
  ( (Node!13971 (left!34490 Conc!13971) (right!34820 Conc!13971) (csize!28172 Int) (cheight!14182 Int)) (Leaf!21595 (xs!17277 IArray!27947) (csize!28173 Int)) (Empty!13971) )
))
(declare-datatypes ((BalanceConc!27536 0))(
  ( (BalanceConc!27537 (c!717575 Conc!13971)) )
))
(declare-datatypes ((String!53820 0))(
  ( (String!53821 (value!241688 String)) )
))
(declare-datatypes ((TokenValueInjection!15408 0))(
  ( (TokenValueInjection!15409 (toValue!10480 Int) (toChars!10339 Int)) )
))
(declare-datatypes ((Rule!15320 0))(
  ( (Rule!15321 (regex!7760 Regex!12665) (tag!8624 String!53820) (isSeparator!7760 Bool) (transformation!7760 TokenValueInjection!15408)) )
))
(declare-datatypes ((Token!14222 0))(
  ( (Token!14223 (value!241689 TokenValue!7990) (rule!10880 Rule!15320) (size!34033 Int) (originalCharacters!8142 List!46462)) )
))
(declare-fun tBis!41 () Token!14222)

(declare-fun e!2615801 () Bool)

(declare-fun tp!1288688 () Bool)

(declare-fun e!2615785 () Bool)

(declare-fun b!4213596 () Bool)

(declare-fun inv!60963 (String!53820) Bool)

(declare-fun inv!60966 (TokenValueInjection!15408) Bool)

(assert (=> b!4213596 (= e!2615785 (and tp!1288688 (inv!60963 (tag!8624 (rule!10880 tBis!41))) (inv!60966 (transformation!7760 (rule!10880 tBis!41))) e!2615801))))

(declare-fun b!4213597 () Bool)

(declare-fun res!1731185 () Bool)

(declare-fun e!2615790 () Bool)

(assert (=> b!4213597 (=> (not res!1731185) (not e!2615790))))

(declare-datatypes ((LexerInterface!7355 0))(
  ( (LexerInterfaceExt!7352 (__x!28204 Int)) (Lexer!7353) )
))
(declare-fun thiss!26544 () LexerInterface!7355)

(declare-fun rBis!178 () Rule!15320)

(declare-fun ruleValid!3472 (LexerInterface!7355 Rule!15320) Bool)

(assert (=> b!4213597 (= res!1731185 (ruleValid!3472 thiss!26544 rBis!178))))

(declare-fun b!4213598 () Bool)

(declare-datatypes ((Unit!65463 0))(
  ( (Unit!65464) )
))
(declare-fun e!2615783 () Unit!65463)

(declare-fun Unit!65465 () Unit!65463)

(assert (=> b!4213598 (= e!2615783 Unit!65465)))

(declare-fun b!4213599 () Bool)

(declare-fun res!1731198 () Bool)

(declare-fun e!2615803 () Bool)

(assert (=> b!4213599 (=> (not res!1731198) (not e!2615803))))

(declare-fun p!3001 () List!46462)

(declare-fun input!3517 () List!46462)

(declare-fun isPrefix!4619 (List!46462 List!46462) Bool)

(assert (=> b!4213599 (= res!1731198 (isPrefix!4619 p!3001 input!3517))))

(declare-fun b!4213600 () Bool)

(declare-fun res!1731188 () Bool)

(assert (=> b!4213600 (=> (not res!1731188) (not e!2615803))))

(declare-fun suffix!1557 () List!46462)

(declare-fun ++!11834 (List!46462 List!46462) List!46462)

(assert (=> b!4213600 (= res!1731188 (= (++!11834 p!3001 suffix!1557) input!3517))))

(declare-fun b!4213601 () Bool)

(declare-fun res!1731191 () Bool)

(declare-fun e!2615806 () Bool)

(assert (=> b!4213601 (=> res!1731191 e!2615806)))

(declare-datatypes ((List!46463 0))(
  ( (Nil!46339) (Cons!46339 (h!51759 Rule!15320) (t!348182 List!46463)) )
))
(declare-fun rules!3967 () List!46463)

(get-info :version)

(assert (=> b!4213601 (= res!1731191 (or (and ((_ is Cons!46339) rules!3967) ((_ is Nil!46339) (t!348182 rules!3967))) (not ((_ is Cons!46339) rules!3967)) (= (h!51759 rules!3967) rBis!178)))))

(declare-fun b!4213602 () Bool)

(declare-fun e!2615805 () Bool)

(declare-fun tp_is_empty!22297 () Bool)

(declare-fun tp!1288682 () Bool)

(assert (=> b!4213602 (= e!2615805 (and tp_is_empty!22297 tp!1288682))))

(declare-fun e!2615788 () Bool)

(assert (=> b!4213603 (= e!2615788 (and tp!1288676 tp!1288669))))

(declare-fun b!4213604 () Bool)

(assert (=> b!4213604 (= e!2615803 e!2615790)))

(declare-fun res!1731193 () Bool)

(assert (=> b!4213604 (=> (not res!1731193) (not e!2615790))))

(declare-datatypes ((tuple2!44074 0))(
  ( (tuple2!44075 (_1!25171 Token!14222) (_2!25171 List!46462)) )
))
(declare-datatypes ((Option!9948 0))(
  ( (None!9947) (Some!9947 (v!40823 tuple2!44074)) )
))
(declare-fun lt!1499684 () Option!9948)

(declare-fun maxPrefix!4395 (LexerInterface!7355 List!46463 List!46462) Option!9948)

(assert (=> b!4213604 (= res!1731193 (= (maxPrefix!4395 thiss!26544 rules!3967 input!3517) lt!1499684))))

(declare-fun t!8364 () Token!14222)

(assert (=> b!4213604 (= lt!1499684 (Some!9947 (tuple2!44075 t!8364 suffix!1557)))))

(declare-fun b!4213605 () Bool)

(declare-fun Unit!65466 () Unit!65463)

(assert (=> b!4213605 (= e!2615783 Unit!65466)))

(declare-fun lt!1499683 () Unit!65463)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!618 (LexerInterface!7355 Rule!15320 List!46463 List!46462) Unit!65463)

(assert (=> b!4213605 (= lt!1499683 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!618 thiss!26544 rBis!178 (t!348182 rules!3967) input!3517))))

(assert (=> b!4213605 false))

(declare-fun e!2615804 () Bool)

(assert (=> b!4213606 (= e!2615804 (and tp!1288679 tp!1288681))))

(declare-fun b!4213607 () Bool)

(declare-fun res!1731199 () Bool)

(assert (=> b!4213607 (=> res!1731199 e!2615806)))

(declare-fun pBis!121 () List!46462)

(declare-fun suffixBis!41 () List!46462)

(assert (=> b!4213607 (= res!1731199 (not (= (++!11834 pBis!121 suffixBis!41) input!3517)))))

(declare-fun e!2615798 () Bool)

(declare-fun b!4213608 () Bool)

(declare-fun tp!1288685 () Bool)

(assert (=> b!4213608 (= e!2615798 (and tp!1288685 (inv!60963 (tag!8624 (rule!10880 t!8364))) (inv!60966 (transformation!7760 (rule!10880 t!8364))) e!2615788))))

(declare-fun b!4213609 () Bool)

(declare-fun res!1731195 () Bool)

(assert (=> b!4213609 (=> (not res!1731195) (not e!2615803))))

(declare-fun contains!9581 (List!46463 Rule!15320) Bool)

(assert (=> b!4213609 (= res!1731195 (contains!9581 rules!3967 rBis!178))))

(declare-fun b!4213610 () Bool)

(declare-fun tp!1288680 () Bool)

(declare-fun e!2615797 () Bool)

(declare-fun inv!21 (TokenValue!7990) Bool)

(assert (=> b!4213610 (= e!2615797 (and (inv!21 (value!241689 t!8364)) e!2615798 tp!1288680))))

(declare-fun b!4213611 () Bool)

(declare-fun e!2615796 () Bool)

(declare-fun e!2615799 () Bool)

(declare-fun tp!1288678 () Bool)

(assert (=> b!4213611 (= e!2615796 (and e!2615799 tp!1288678))))

(declare-fun b!4213612 () Bool)

(declare-fun res!1731187 () Bool)

(assert (=> b!4213612 (=> res!1731187 e!2615806)))

(assert (=> b!4213612 (= res!1731187 (not (= (rule!10880 tBis!41) rBis!178)))))

(declare-fun tp!1288673 () Bool)

(declare-fun e!2615794 () Bool)

(declare-fun b!4213613 () Bool)

(assert (=> b!4213613 (= e!2615794 (and (inv!21 (value!241689 tBis!41)) e!2615785 tp!1288673))))

(declare-fun e!2615795 () Bool)

(assert (=> b!4213614 (= e!2615795 (and tp!1288686 tp!1288687))))

(declare-fun b!4213615 () Bool)

(assert (=> b!4213615 (= e!2615806 true)))

(declare-fun rulesInvariant!6566 (LexerInterface!7355 List!46463) Bool)

(assert (=> b!4213615 (rulesInvariant!6566 thiss!26544 (t!348182 rules!3967))))

(declare-fun lt!1499677 () Unit!65463)

(declare-fun lemmaInvariantOnRulesThenOnTail!850 (LexerInterface!7355 Rule!15320 List!46463) Unit!65463)

(assert (=> b!4213615 (= lt!1499677 (lemmaInvariantOnRulesThenOnTail!850 thiss!26544 (h!51759 rules!3967) (t!348182 rules!3967)))))

(declare-fun lt!1499676 () List!46462)

(declare-fun lt!1499680 () tuple2!44074)

(assert (=> b!4213615 (isPrefix!4619 lt!1499676 (++!11834 lt!1499676 (_2!25171 lt!1499680)))))

(declare-fun lt!1499682 () Unit!65463)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3074 (List!46462 List!46462) Unit!65463)

(assert (=> b!4213615 (= lt!1499682 (lemmaConcatTwoListThenFirstIsPrefix!3074 lt!1499676 (_2!25171 lt!1499680)))))

(declare-fun list!16759 (BalanceConc!27536) List!46462)

(declare-fun charsOf!5183 (Token!14222) BalanceConc!27536)

(assert (=> b!4213615 (= lt!1499676 (list!16759 (charsOf!5183 (_1!25171 lt!1499680))))))

(declare-fun lt!1499679 () Option!9948)

(declare-fun get!15074 (Option!9948) tuple2!44074)

(assert (=> b!4213615 (= lt!1499680 (get!15074 lt!1499679))))

(declare-fun lt!1499678 () Unit!65463)

(assert (=> b!4213615 (= lt!1499678 e!2615783)))

(declare-fun c!717573 () Bool)

(declare-fun isEmpty!27444 (Option!9948) Bool)

(assert (=> b!4213615 (= c!717573 (isEmpty!27444 lt!1499679))))

(assert (=> b!4213615 (= lt!1499679 (maxPrefix!4395 thiss!26544 (t!348182 rules!3967) input!3517))))

(assert (=> b!4213616 (= e!2615801 (and tp!1288671 tp!1288684))))

(declare-fun b!4213617 () Bool)

(declare-fun res!1731186 () Bool)

(assert (=> b!4213617 (=> (not res!1731186) (not e!2615803))))

(assert (=> b!4213617 (= res!1731186 (rulesInvariant!6566 thiss!26544 rules!3967))))

(declare-fun b!4213618 () Bool)

(declare-fun res!1731189 () Bool)

(assert (=> b!4213618 (=> (not res!1731189) (not e!2615803))))

(declare-fun isEmpty!27445 (List!46463) Bool)

(assert (=> b!4213618 (= res!1731189 (not (isEmpty!27445 rules!3967)))))

(declare-fun b!4213619 () Bool)

(declare-fun e!2615789 () Bool)

(declare-fun tp!1288674 () Bool)

(assert (=> b!4213619 (= e!2615789 (and tp_is_empty!22297 tp!1288674))))

(declare-fun b!4213620 () Bool)

(assert (=> b!4213620 (= e!2615790 (not e!2615806))))

(declare-fun res!1731192 () Bool)

(assert (=> b!4213620 (=> res!1731192 e!2615806)))

(declare-fun maxPrefixOneRule!3350 (LexerInterface!7355 Rule!15320 List!46462) Option!9948)

(assert (=> b!4213620 (= res!1731192 (not (= (maxPrefixOneRule!3350 thiss!26544 rBis!178 input!3517) (Some!9947 (tuple2!44075 tBis!41 suffixBis!41)))))))

(assert (=> b!4213620 (isPrefix!4619 input!3517 input!3517)))

(declare-fun lt!1499681 () Unit!65463)

(declare-fun lemmaIsPrefixRefl!3036 (List!46462 List!46462) Unit!65463)

(assert (=> b!4213620 (= lt!1499681 (lemmaIsPrefixRefl!3036 input!3517 input!3517))))

(declare-fun b!4213621 () Bool)

(declare-fun res!1731194 () Bool)

(assert (=> b!4213621 (=> res!1731194 e!2615806)))

(assert (=> b!4213621 (= res!1731194 (not (= (maxPrefixOneRule!3350 thiss!26544 (h!51759 rules!3967) input!3517) lt!1499684)))))

(declare-fun b!4213622 () Bool)

(declare-fun res!1731197 () Bool)

(assert (=> b!4213622 (=> res!1731197 e!2615806)))

(assert (=> b!4213622 (= res!1731197 (not (= (list!16759 (charsOf!5183 tBis!41)) pBis!121)))))

(declare-fun tp!1288683 () Bool)

(declare-fun e!2615786 () Bool)

(declare-fun b!4213623 () Bool)

(assert (=> b!4213623 (= e!2615786 (and tp!1288683 (inv!60963 (tag!8624 rBis!178)) (inv!60966 (transformation!7760 rBis!178)) e!2615804))))

(declare-fun b!4213624 () Bool)

(declare-fun e!2615800 () Bool)

(declare-fun tp!1288675 () Bool)

(assert (=> b!4213624 (= e!2615800 (and tp_is_empty!22297 tp!1288675))))

(declare-fun res!1731196 () Bool)

(assert (=> start!402686 (=> (not res!1731196) (not e!2615803))))

(assert (=> start!402686 (= res!1731196 ((_ is Lexer!7353) thiss!26544))))

(assert (=> start!402686 e!2615803))

(declare-fun inv!60967 (Token!14222) Bool)

(assert (=> start!402686 (and (inv!60967 tBis!41) e!2615794)))

(assert (=> start!402686 true))

(assert (=> start!402686 e!2615786))

(assert (=> start!402686 e!2615800))

(assert (=> start!402686 e!2615796))

(declare-fun e!2615802 () Bool)

(assert (=> start!402686 e!2615802))

(assert (=> start!402686 (and (inv!60967 t!8364) e!2615797)))

(declare-fun e!2615784 () Bool)

(assert (=> start!402686 e!2615784))

(assert (=> start!402686 e!2615789))

(assert (=> start!402686 e!2615805))

(declare-fun b!4213625 () Bool)

(declare-fun tp!1288672 () Bool)

(assert (=> b!4213625 (= e!2615802 (and tp_is_empty!22297 tp!1288672))))

(declare-fun b!4213626 () Bool)

(declare-fun tp!1288670 () Bool)

(assert (=> b!4213626 (= e!2615799 (and tp!1288670 (inv!60963 (tag!8624 (h!51759 rules!3967))) (inv!60966 (transformation!7760 (h!51759 rules!3967))) e!2615795))))

(declare-fun b!4213627 () Bool)

(declare-fun res!1731190 () Bool)

(assert (=> b!4213627 (=> (not res!1731190) (not e!2615803))))

(assert (=> b!4213627 (= res!1731190 (isPrefix!4619 pBis!121 input!3517))))

(declare-fun b!4213628 () Bool)

(declare-fun tp!1288677 () Bool)

(assert (=> b!4213628 (= e!2615784 (and tp_is_empty!22297 tp!1288677))))

(assert (= (and start!402686 res!1731196) b!4213600))

(assert (= (and b!4213600 res!1731188) b!4213599))

(assert (= (and b!4213599 res!1731198) b!4213627))

(assert (= (and b!4213627 res!1731190) b!4213618))

(assert (= (and b!4213618 res!1731189) b!4213617))

(assert (= (and b!4213617 res!1731186) b!4213609))

(assert (= (and b!4213609 res!1731195) b!4213604))

(assert (= (and b!4213604 res!1731193) b!4213597))

(assert (= (and b!4213597 res!1731185) b!4213620))

(assert (= (and b!4213620 (not res!1731192)) b!4213612))

(assert (= (and b!4213612 (not res!1731187)) b!4213622))

(assert (= (and b!4213622 (not res!1731197)) b!4213607))

(assert (= (and b!4213607 (not res!1731199)) b!4213601))

(assert (= (and b!4213601 (not res!1731191)) b!4213621))

(assert (= (and b!4213621 (not res!1731194)) b!4213615))

(assert (= (and b!4213615 c!717573) b!4213605))

(assert (= (and b!4213615 (not c!717573)) b!4213598))

(assert (= b!4213596 b!4213616))

(assert (= b!4213613 b!4213596))

(assert (= start!402686 b!4213613))

(assert (= b!4213623 b!4213606))

(assert (= start!402686 b!4213623))

(assert (= (and start!402686 ((_ is Cons!46338) p!3001)) b!4213624))

(assert (= b!4213626 b!4213614))

(assert (= b!4213611 b!4213626))

(assert (= (and start!402686 ((_ is Cons!46339) rules!3967)) b!4213611))

(assert (= (and start!402686 ((_ is Cons!46338) input!3517)) b!4213625))

(assert (= b!4213608 b!4213603))

(assert (= b!4213610 b!4213608))

(assert (= start!402686 b!4213610))

(assert (= (and start!402686 ((_ is Cons!46338) pBis!121)) b!4213628))

(assert (= (and start!402686 ((_ is Cons!46338) suffix!1557)) b!4213619))

(assert (= (and start!402686 ((_ is Cons!46338) suffixBis!41)) b!4213602))

(declare-fun m!4801399 () Bool)

(assert (=> b!4213599 m!4801399))

(declare-fun m!4801401 () Bool)

(assert (=> b!4213605 m!4801401))

(declare-fun m!4801403 () Bool)

(assert (=> b!4213618 m!4801403))

(declare-fun m!4801405 () Bool)

(assert (=> b!4213608 m!4801405))

(declare-fun m!4801407 () Bool)

(assert (=> b!4213608 m!4801407))

(declare-fun m!4801409 () Bool)

(assert (=> b!4213621 m!4801409))

(declare-fun m!4801411 () Bool)

(assert (=> b!4213623 m!4801411))

(declare-fun m!4801413 () Bool)

(assert (=> b!4213623 m!4801413))

(declare-fun m!4801415 () Bool)

(assert (=> b!4213604 m!4801415))

(declare-fun m!4801417 () Bool)

(assert (=> b!4213622 m!4801417))

(assert (=> b!4213622 m!4801417))

(declare-fun m!4801419 () Bool)

(assert (=> b!4213622 m!4801419))

(declare-fun m!4801421 () Bool)

(assert (=> start!402686 m!4801421))

(declare-fun m!4801423 () Bool)

(assert (=> start!402686 m!4801423))

(declare-fun m!4801425 () Bool)

(assert (=> b!4213617 m!4801425))

(declare-fun m!4801427 () Bool)

(assert (=> b!4213615 m!4801427))

(declare-fun m!4801429 () Bool)

(assert (=> b!4213615 m!4801429))

(declare-fun m!4801431 () Bool)

(assert (=> b!4213615 m!4801431))

(assert (=> b!4213615 m!4801431))

(declare-fun m!4801433 () Bool)

(assert (=> b!4213615 m!4801433))

(declare-fun m!4801435 () Bool)

(assert (=> b!4213615 m!4801435))

(declare-fun m!4801437 () Bool)

(assert (=> b!4213615 m!4801437))

(declare-fun m!4801439 () Bool)

(assert (=> b!4213615 m!4801439))

(declare-fun m!4801441 () Bool)

(assert (=> b!4213615 m!4801441))

(declare-fun m!4801443 () Bool)

(assert (=> b!4213615 m!4801443))

(declare-fun m!4801445 () Bool)

(assert (=> b!4213615 m!4801445))

(assert (=> b!4213615 m!4801435))

(declare-fun m!4801447 () Bool)

(assert (=> b!4213596 m!4801447))

(declare-fun m!4801449 () Bool)

(assert (=> b!4213596 m!4801449))

(declare-fun m!4801451 () Bool)

(assert (=> b!4213600 m!4801451))

(declare-fun m!4801453 () Bool)

(assert (=> b!4213620 m!4801453))

(declare-fun m!4801455 () Bool)

(assert (=> b!4213620 m!4801455))

(declare-fun m!4801457 () Bool)

(assert (=> b!4213620 m!4801457))

(declare-fun m!4801459 () Bool)

(assert (=> b!4213627 m!4801459))

(declare-fun m!4801461 () Bool)

(assert (=> b!4213613 m!4801461))

(declare-fun m!4801463 () Bool)

(assert (=> b!4213607 m!4801463))

(declare-fun m!4801465 () Bool)

(assert (=> b!4213597 m!4801465))

(declare-fun m!4801467 () Bool)

(assert (=> b!4213626 m!4801467))

(declare-fun m!4801469 () Bool)

(assert (=> b!4213626 m!4801469))

(declare-fun m!4801471 () Bool)

(assert (=> b!4213610 m!4801471))

(declare-fun m!4801473 () Bool)

(assert (=> b!4213609 m!4801473))

(check-sat (not b!4213609) (not b!4213597) (not b!4213608) (not b!4213607) b_and!331777 b_and!331767 (not b_next!124171) (not b_next!124177) (not b!4213623) (not b!4213622) b_and!331765 (not b!4213599) b_and!331771 (not b!4213600) (not b!4213619) (not b!4213615) (not b_next!124173) (not b!4213617) (not b!4213611) (not b!4213618) (not b!4213602) (not b_next!124169) (not b!4213596) (not b!4213627) b_and!331775 (not start!402686) (not b!4213621) (not b!4213628) (not b_next!124175) b_and!331779 b_and!331773 (not b!4213610) (not b!4213626) b_and!331769 (not b_next!124167) (not b!4213624) (not b!4213605) (not b!4213625) tp_is_empty!22297 (not b!4213620) (not b_next!124165) (not b!4213604) (not b!4213613) (not b_next!124163))
(check-sat (not b_next!124177) b_and!331765 b_and!331771 (not b_next!124173) (not b_next!124169) b_and!331775 b_and!331777 b_and!331767 (not b_next!124171) b_and!331773 (not b_next!124175) b_and!331779 b_and!331769 (not b_next!124167) (not b_next!124165) (not b_next!124163))
