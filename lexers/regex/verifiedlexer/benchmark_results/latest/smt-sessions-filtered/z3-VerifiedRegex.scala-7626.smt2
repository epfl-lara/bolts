; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402778 () Bool)

(assert start!402778)

(declare-fun b!4214666 () Bool)

(declare-fun b_free!123563 () Bool)

(declare-fun b_next!124267 () Bool)

(assert (=> b!4214666 (= b_free!123563 (not b_next!124267))))

(declare-fun tp!1289149 () Bool)

(declare-fun b_and!331933 () Bool)

(assert (=> b!4214666 (= tp!1289149 b_and!331933)))

(declare-fun b_free!123565 () Bool)

(declare-fun b_next!124269 () Bool)

(assert (=> b!4214666 (= b_free!123565 (not b_next!124269))))

(declare-fun tp!1289142 () Bool)

(declare-fun b_and!331935 () Bool)

(assert (=> b!4214666 (= tp!1289142 b_and!331935)))

(declare-fun b!4214675 () Bool)

(declare-fun b_free!123567 () Bool)

(declare-fun b_next!124271 () Bool)

(assert (=> b!4214675 (= b_free!123567 (not b_next!124271))))

(declare-fun tp!1289159 () Bool)

(declare-fun b_and!331937 () Bool)

(assert (=> b!4214675 (= tp!1289159 b_and!331937)))

(declare-fun b_free!123569 () Bool)

(declare-fun b_next!124273 () Bool)

(assert (=> b!4214675 (= b_free!123569 (not b_next!124273))))

(declare-fun tp!1289145 () Bool)

(declare-fun b_and!331939 () Bool)

(assert (=> b!4214675 (= tp!1289145 b_and!331939)))

(declare-fun b!4214664 () Bool)

(declare-fun b_free!123571 () Bool)

(declare-fun b_next!124275 () Bool)

(assert (=> b!4214664 (= b_free!123571 (not b_next!124275))))

(declare-fun tp!1289150 () Bool)

(declare-fun b_and!331941 () Bool)

(assert (=> b!4214664 (= tp!1289150 b_and!331941)))

(declare-fun b_free!123573 () Bool)

(declare-fun b_next!124277 () Bool)

(assert (=> b!4214664 (= b_free!123573 (not b_next!124277))))

(declare-fun tp!1289156 () Bool)

(declare-fun b_and!331943 () Bool)

(assert (=> b!4214664 (= tp!1289156 b_and!331943)))

(declare-fun b!4214652 () Bool)

(declare-fun b_free!123575 () Bool)

(declare-fun b_next!124279 () Bool)

(assert (=> b!4214652 (= b_free!123575 (not b_next!124279))))

(declare-fun tp!1289151 () Bool)

(declare-fun b_and!331945 () Bool)

(assert (=> b!4214652 (= tp!1289151 b_and!331945)))

(declare-fun b_free!123577 () Bool)

(declare-fun b_next!124281 () Bool)

(assert (=> b!4214652 (= b_free!123577 (not b_next!124281))))

(declare-fun tp!1289155 () Bool)

(declare-fun b_and!331947 () Bool)

(assert (=> b!4214652 (= tp!1289155 b_and!331947)))

(declare-fun b!4214643 () Bool)

(declare-fun res!1731742 () Bool)

(declare-fun e!2616514 () Bool)

(assert (=> b!4214643 (=> (not res!1731742) (not e!2616514))))

(declare-datatypes ((LexerInterface!7361 0))(
  ( (LexerInterfaceExt!7358 (__x!28215 Int)) (Lexer!7359) )
))
(declare-fun thiss!26544 () LexerInterface!7361)

(declare-datatypes ((List!46481 0))(
  ( (Nil!46357) (Cons!46357 (h!51777 (_ BitVec 16)) (t!348260 List!46481)) )
))
(declare-datatypes ((TokenValue!7996 0))(
  ( (FloatLiteralValue!15992 (text!56417 List!46481)) (TokenValueExt!7995 (__x!28216 Int)) (Broken!39980 (value!241834 List!46481)) (Object!8119) (End!7996) (Def!7996) (Underscore!7996) (Match!7996) (Else!7996) (Error!7996) (Case!7996) (If!7996) (Extends!7996) (Abstract!7996) (Class!7996) (Val!7996) (DelimiterValue!15992 (del!8056 List!46481)) (KeywordValue!8002 (value!241835 List!46481)) (CommentValue!15992 (value!241836 List!46481)) (WhitespaceValue!15992 (value!241837 List!46481)) (IndentationValue!7996 (value!241838 List!46481)) (String!53849) (Int32!7996) (Broken!39981 (value!241839 List!46481)) (Boolean!7997) (Unit!65492) (OperatorValue!7999 (op!8056 List!46481)) (IdentifierValue!15992 (value!241840 List!46481)) (IdentifierValue!15993 (value!241841 List!46481)) (WhitespaceValue!15993 (value!241842 List!46481)) (True!15992) (False!15992) (Broken!39982 (value!241843 List!46481)) (Broken!39983 (value!241844 List!46481)) (True!15993) (RightBrace!7996) (RightBracket!7996) (Colon!7996) (Null!7996) (Comma!7996) (LeftBracket!7996) (False!15993) (LeftBrace!7996) (ImaginaryLiteralValue!7996 (text!56418 List!46481)) (StringLiteralValue!23988 (value!241845 List!46481)) (EOFValue!7996 (value!241846 List!46481)) (IdentValue!7996 (value!241847 List!46481)) (DelimiterValue!15993 (value!241848 List!46481)) (DedentValue!7996 (value!241849 List!46481)) (NewLineValue!7996 (value!241850 List!46481)) (IntegerValue!23988 (value!241851 (_ BitVec 32)) (text!56419 List!46481)) (IntegerValue!23989 (value!241852 Int) (text!56420 List!46481)) (Times!7996) (Or!7996) (Equal!7996) (Minus!7996) (Broken!39984 (value!241853 List!46481)) (And!7996) (Div!7996) (LessEqual!7996) (Mod!7996) (Concat!20667) (Not!7996) (Plus!7996) (SpaceValue!7996 (value!241854 List!46481)) (IntegerValue!23990 (value!241855 Int) (text!56421 List!46481)) (StringLiteralValue!23989 (text!56422 List!46481)) (FloatLiteralValue!15993 (text!56423 List!46481)) (BytesLiteralValue!7996 (value!241856 List!46481)) (CommentValue!15993 (value!241857 List!46481)) (StringLiteralValue!23990 (value!241858 List!46481)) (ErrorTokenValue!7996 (msg!8057 List!46481)) )
))
(declare-datatypes ((C!25536 0))(
  ( (C!25537 (val!14930 Int)) )
))
(declare-datatypes ((List!46482 0))(
  ( (Nil!46358) (Cons!46358 (h!51778 C!25536) (t!348261 List!46482)) )
))
(declare-datatypes ((IArray!27959 0))(
  ( (IArray!27960 (innerList!14037 List!46482)) )
))
(declare-datatypes ((Regex!12671 0))(
  ( (ElementMatch!12671 (c!717652 C!25536)) (Concat!20668 (regOne!25854 Regex!12671) (regTwo!25854 Regex!12671)) (EmptyExpr!12671) (Star!12671 (reg!13000 Regex!12671)) (EmptyLang!12671) (Union!12671 (regOne!25855 Regex!12671) (regTwo!25855 Regex!12671)) )
))
(declare-datatypes ((Conc!13977 0))(
  ( (Node!13977 (left!34499 Conc!13977) (right!34829 Conc!13977) (csize!28184 Int) (cheight!14188 Int)) (Leaf!21604 (xs!17283 IArray!27959) (csize!28185 Int)) (Empty!13977) )
))
(declare-datatypes ((BalanceConc!27548 0))(
  ( (BalanceConc!27549 (c!717653 Conc!13977)) )
))
(declare-datatypes ((TokenValueInjection!15420 0))(
  ( (TokenValueInjection!15421 (toValue!10486 Int) (toChars!10345 Int)) )
))
(declare-datatypes ((String!53850 0))(
  ( (String!53851 (value!241859 String)) )
))
(declare-datatypes ((Rule!15332 0))(
  ( (Rule!15333 (regex!7766 Regex!12671) (tag!8630 String!53850) (isSeparator!7766 Bool) (transformation!7766 TokenValueInjection!15420)) )
))
(declare-fun rBis!178 () Rule!15332)

(declare-fun ruleValid!3478 (LexerInterface!7361 Rule!15332) Bool)

(assert (=> b!4214643 (= res!1731742 (ruleValid!3478 thiss!26544 rBis!178))))

(declare-fun b!4214644 () Bool)

(declare-fun e!2616525 () Bool)

(declare-fun tp_is_empty!22309 () Bool)

(declare-fun tp!1289154 () Bool)

(assert (=> b!4214644 (= e!2616525 (and tp_is_empty!22309 tp!1289154))))

(declare-fun b!4214645 () Bool)

(declare-fun res!1731730 () Bool)

(declare-fun e!2616523 () Bool)

(assert (=> b!4214645 (=> res!1731730 e!2616523)))

(declare-datatypes ((List!46483 0))(
  ( (Nil!46359) (Cons!46359 (h!51779 Rule!15332) (t!348262 List!46483)) )
))
(declare-fun rules!3967 () List!46483)

(get-info :version)

(assert (=> b!4214645 (= res!1731730 (or (and ((_ is Cons!46359) rules!3967) ((_ is Nil!46359) (t!348262 rules!3967))) (not ((_ is Cons!46359) rules!3967)) (= (h!51779 rules!3967) rBis!178)))))

(declare-datatypes ((Token!14234 0))(
  ( (Token!14235 (value!241860 TokenValue!7996) (rule!10888 Rule!15332) (size!34043 Int) (originalCharacters!8148 List!46482)) )
))
(declare-fun tBis!41 () Token!14234)

(declare-fun e!2616516 () Bool)

(declare-fun tp!1289160 () Bool)

(declare-fun b!4214646 () Bool)

(declare-fun e!2616519 () Bool)

(declare-fun inv!21 (TokenValue!7996) Bool)

(assert (=> b!4214646 (= e!2616516 (and (inv!21 (value!241860 tBis!41)) e!2616519 tp!1289160))))

(declare-fun b!4214647 () Bool)

(declare-fun e!2616508 () Bool)

(assert (=> b!4214647 (= e!2616523 e!2616508)))

(declare-fun res!1731732 () Bool)

(assert (=> b!4214647 (=> res!1731732 e!2616508)))

(declare-fun lt!1500005 () List!46482)

(declare-fun input!3517 () List!46482)

(assert (=> b!4214647 (= res!1731732 (not (= lt!1500005 input!3517)))))

(declare-fun rulesInvariant!6572 (LexerInterface!7361 List!46483) Bool)

(assert (=> b!4214647 (rulesInvariant!6572 thiss!26544 (t!348262 rules!3967))))

(declare-datatypes ((Unit!65493 0))(
  ( (Unit!65494) )
))
(declare-fun lt!1500007 () Unit!65493)

(declare-fun lemmaInvariantOnRulesThenOnTail!856 (LexerInterface!7361 Rule!15332 List!46483) Unit!65493)

(assert (=> b!4214647 (= lt!1500007 (lemmaInvariantOnRulesThenOnTail!856 thiss!26544 (h!51779 rules!3967) (t!348262 rules!3967)))))

(declare-fun lt!1500006 () List!46482)

(declare-fun isPrefix!4625 (List!46482 List!46482) Bool)

(assert (=> b!4214647 (isPrefix!4625 lt!1500006 lt!1500005)))

(declare-datatypes ((tuple2!44090 0))(
  ( (tuple2!44091 (_1!25179 Token!14234) (_2!25179 List!46482)) )
))
(declare-fun lt!1500010 () tuple2!44090)

(declare-fun ++!11840 (List!46482 List!46482) List!46482)

(assert (=> b!4214647 (= lt!1500005 (++!11840 lt!1500006 (_2!25179 lt!1500010)))))

(declare-fun lt!1500008 () Unit!65493)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3080 (List!46482 List!46482) Unit!65493)

(assert (=> b!4214647 (= lt!1500008 (lemmaConcatTwoListThenFirstIsPrefix!3080 lt!1500006 (_2!25179 lt!1500010)))))

(declare-fun list!16767 (BalanceConc!27548) List!46482)

(declare-fun charsOf!5189 (Token!14234) BalanceConc!27548)

(assert (=> b!4214647 (= lt!1500006 (list!16767 (charsOf!5189 (_1!25179 lt!1500010))))))

(declare-datatypes ((Option!9954 0))(
  ( (None!9953) (Some!9953 (v!40831 tuple2!44090)) )
))
(declare-fun lt!1500009 () Option!9954)

(declare-fun get!15083 (Option!9954) tuple2!44090)

(assert (=> b!4214647 (= lt!1500010 (get!15083 lt!1500009))))

(declare-fun lt!1500003 () Unit!65493)

(declare-fun e!2616520 () Unit!65493)

(assert (=> b!4214647 (= lt!1500003 e!2616520)))

(declare-fun c!717651 () Bool)

(declare-fun isEmpty!27458 (Option!9954) Bool)

(assert (=> b!4214647 (= c!717651 (isEmpty!27458 lt!1500009))))

(declare-fun maxPrefix!4401 (LexerInterface!7361 List!46483 List!46482) Option!9954)

(assert (=> b!4214647 (= lt!1500009 (maxPrefix!4401 thiss!26544 (t!348262 rules!3967) input!3517))))

(declare-fun b!4214648 () Bool)

(declare-fun res!1731734 () Bool)

(declare-fun e!2616521 () Bool)

(assert (=> b!4214648 (=> (not res!1731734) (not e!2616521))))

(assert (=> b!4214648 (= res!1731734 (rulesInvariant!6572 thiss!26544 rules!3967))))

(declare-fun b!4214649 () Bool)

(declare-fun res!1731738 () Bool)

(assert (=> b!4214649 (=> res!1731738 e!2616523)))

(declare-fun lt!1500001 () Option!9954)

(declare-fun maxPrefixOneRule!3356 (LexerInterface!7361 Rule!15332 List!46482) Option!9954)

(assert (=> b!4214649 (= res!1731738 (not (= (maxPrefixOneRule!3356 thiss!26544 (h!51779 rules!3967) input!3517) lt!1500001)))))

(declare-fun b!4214651 () Bool)

(declare-fun Unit!65495 () Unit!65493)

(assert (=> b!4214651 (= e!2616520 Unit!65495)))

(declare-fun e!2616531 () Bool)

(assert (=> b!4214652 (= e!2616531 (and tp!1289151 tp!1289155))))

(declare-fun tp!1289157 () Bool)

(declare-fun e!2616532 () Bool)

(declare-fun b!4214653 () Bool)

(declare-fun inv!60988 (String!53850) Bool)

(declare-fun inv!60991 (TokenValueInjection!15420) Bool)

(assert (=> b!4214653 (= e!2616519 (and tp!1289157 (inv!60988 (tag!8630 (rule!10888 tBis!41))) (inv!60991 (transformation!7766 (rule!10888 tBis!41))) e!2616532))))

(declare-fun tp!1289153 () Bool)

(declare-fun b!4214654 () Bool)

(declare-fun e!2616509 () Bool)

(declare-fun e!2616515 () Bool)

(assert (=> b!4214654 (= e!2616515 (and tp!1289153 (inv!60988 (tag!8630 (h!51779 rules!3967))) (inv!60991 (transformation!7766 (h!51779 rules!3967))) e!2616509))))

(declare-fun b!4214655 () Bool)

(assert (=> b!4214655 (= e!2616521 e!2616514)))

(declare-fun res!1731736 () Bool)

(assert (=> b!4214655 (=> (not res!1731736) (not e!2616514))))

(assert (=> b!4214655 (= res!1731736 (= (maxPrefix!4401 thiss!26544 rules!3967 input!3517) lt!1500001))))

(declare-fun t!8364 () Token!14234)

(declare-fun suffix!1557 () List!46482)

(assert (=> b!4214655 (= lt!1500001 (Some!9953 (tuple2!44091 t!8364 suffix!1557)))))

(declare-fun b!4214656 () Bool)

(declare-fun e!2616526 () Bool)

(declare-fun tp!1289148 () Bool)

(assert (=> b!4214656 (= e!2616526 (and tp_is_empty!22309 tp!1289148))))

(declare-fun b!4214657 () Bool)

(declare-fun res!1731737 () Bool)

(assert (=> b!4214657 (=> (not res!1731737) (not e!2616521))))

(declare-fun p!3001 () List!46482)

(assert (=> b!4214657 (= res!1731737 (= (++!11840 p!3001 suffix!1557) input!3517))))

(declare-fun b!4214658 () Bool)

(declare-fun res!1731743 () Bool)

(assert (=> b!4214658 (=> (not res!1731743) (not e!2616521))))

(declare-fun isEmpty!27459 (List!46483) Bool)

(assert (=> b!4214658 (= res!1731743 (not (isEmpty!27459 rules!3967)))))

(declare-fun b!4214659 () Bool)

(declare-fun Unit!65496 () Unit!65493)

(assert (=> b!4214659 (= e!2616520 Unit!65496)))

(declare-fun lt!1500002 () Unit!65493)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!624 (LexerInterface!7361 Rule!15332 List!46483 List!46482) Unit!65493)

(assert (=> b!4214659 (= lt!1500002 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!624 thiss!26544 rBis!178 (t!348262 rules!3967) input!3517))))

(assert (=> b!4214659 false))

(declare-fun b!4214660 () Bool)

(declare-fun res!1731739 () Bool)

(assert (=> b!4214660 (=> res!1731739 e!2616523)))

(declare-fun pBis!121 () List!46482)

(declare-fun suffixBis!41 () List!46482)

(assert (=> b!4214660 (= res!1731739 (not (= (++!11840 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4214661 () Bool)

(declare-fun res!1731735 () Bool)

(assert (=> b!4214661 (=> (not res!1731735) (not e!2616521))))

(declare-fun contains!9587 (List!46483 Rule!15332) Bool)

(assert (=> b!4214661 (= res!1731735 (contains!9587 rules!3967 rBis!178))))

(declare-fun e!2616518 () Bool)

(declare-fun tp!1289143 () Bool)

(declare-fun e!2616522 () Bool)

(declare-fun b!4214662 () Bool)

(assert (=> b!4214662 (= e!2616518 (and tp!1289143 (inv!60988 (tag!8630 rBis!178)) (inv!60991 (transformation!7766 rBis!178)) e!2616522))))

(declare-fun b!4214663 () Bool)

(declare-fun res!1731728 () Bool)

(assert (=> b!4214663 (=> (not res!1731728) (not e!2616521))))

(assert (=> b!4214663 (= res!1731728 (isPrefix!4625 pBis!121 input!3517))))

(assert (=> b!4214664 (= e!2616509 (and tp!1289150 tp!1289156))))

(declare-fun res!1731731 () Bool)

(assert (=> start!402778 (=> (not res!1731731) (not e!2616521))))

(assert (=> start!402778 (= res!1731731 ((_ is Lexer!7359) thiss!26544))))

(assert (=> start!402778 e!2616521))

(declare-fun inv!60992 (Token!14234) Bool)

(assert (=> start!402778 (and (inv!60992 tBis!41) e!2616516)))

(assert (=> start!402778 true))

(assert (=> start!402778 e!2616518))

(declare-fun e!2616513 () Bool)

(assert (=> start!402778 e!2616513))

(declare-fun e!2616524 () Bool)

(assert (=> start!402778 e!2616524))

(assert (=> start!402778 e!2616526))

(declare-fun e!2616527 () Bool)

(assert (=> start!402778 (and (inv!60992 t!8364) e!2616527)))

(assert (=> start!402778 e!2616525))

(declare-fun e!2616511 () Bool)

(assert (=> start!402778 e!2616511))

(declare-fun e!2616529 () Bool)

(assert (=> start!402778 e!2616529))

(declare-fun b!4214650 () Bool)

(declare-fun tp!1289146 () Bool)

(declare-fun e!2616512 () Bool)

(assert (=> b!4214650 (= e!2616527 (and (inv!21 (value!241860 t!8364)) e!2616512 tp!1289146))))

(declare-fun b!4214665 () Bool)

(assert (=> b!4214665 (= e!2616514 (not e!2616523))))

(declare-fun res!1731733 () Bool)

(assert (=> b!4214665 (=> res!1731733 e!2616523)))

(assert (=> b!4214665 (= res!1731733 (not (= (maxPrefixOneRule!3356 thiss!26544 rBis!178 input!3517) (Some!9953 (tuple2!44091 tBis!41 suffixBis!41)))))))

(assert (=> b!4214665 (isPrefix!4625 input!3517 input!3517)))

(declare-fun lt!1500000 () Unit!65493)

(declare-fun lemmaIsPrefixRefl!3042 (List!46482 List!46482) Unit!65493)

(assert (=> b!4214665 (= lt!1500000 (lemmaIsPrefixRefl!3042 input!3517 input!3517))))

(assert (=> b!4214666 (= e!2616532 (and tp!1289149 tp!1289142))))

(declare-fun b!4214667 () Bool)

(declare-fun tp!1289147 () Bool)

(assert (=> b!4214667 (= e!2616524 (and e!2616515 tp!1289147))))

(declare-fun b!4214668 () Bool)

(declare-fun res!1731729 () Bool)

(assert (=> b!4214668 (=> res!1731729 e!2616523)))

(assert (=> b!4214668 (= res!1731729 (not (= (list!16767 (charsOf!5189 tBis!41)) pBis!121)))))

(declare-fun b!4214669 () Bool)

(declare-fun res!1731741 () Bool)

(assert (=> b!4214669 (=> (not res!1731741) (not e!2616521))))

(assert (=> b!4214669 (= res!1731741 (isPrefix!4625 p!3001 input!3517))))

(declare-fun b!4214670 () Bool)

(declare-fun res!1731740 () Bool)

(assert (=> b!4214670 (=> res!1731740 e!2616523)))

(assert (=> b!4214670 (= res!1731740 (not (= (rule!10888 tBis!41) rBis!178)))))

(declare-fun b!4214671 () Bool)

(declare-fun tp!1289141 () Bool)

(assert (=> b!4214671 (= e!2616512 (and tp!1289141 (inv!60988 (tag!8630 (rule!10888 t!8364))) (inv!60991 (transformation!7766 (rule!10888 t!8364))) e!2616531))))

(declare-fun b!4214672 () Bool)

(declare-fun tp!1289144 () Bool)

(assert (=> b!4214672 (= e!2616513 (and tp_is_empty!22309 tp!1289144))))

(declare-fun b!4214673 () Bool)

(assert (=> b!4214673 (= e!2616508 true)))

(declare-fun lt!1500004 () Bool)

(assert (=> b!4214673 (= lt!1500004 (isPrefix!4625 lt!1500006 input!3517))))

(declare-fun b!4214674 () Bool)

(declare-fun tp!1289158 () Bool)

(assert (=> b!4214674 (= e!2616529 (and tp_is_empty!22309 tp!1289158))))

(assert (=> b!4214675 (= e!2616522 (and tp!1289159 tp!1289145))))

(declare-fun b!4214676 () Bool)

(declare-fun tp!1289152 () Bool)

(assert (=> b!4214676 (= e!2616511 (and tp_is_empty!22309 tp!1289152))))

(assert (= (and start!402778 res!1731731) b!4214657))

(assert (= (and b!4214657 res!1731737) b!4214669))

(assert (= (and b!4214669 res!1731741) b!4214663))

(assert (= (and b!4214663 res!1731728) b!4214658))

(assert (= (and b!4214658 res!1731743) b!4214648))

(assert (= (and b!4214648 res!1731734) b!4214661))

(assert (= (and b!4214661 res!1731735) b!4214655))

(assert (= (and b!4214655 res!1731736) b!4214643))

(assert (= (and b!4214643 res!1731742) b!4214665))

(assert (= (and b!4214665 (not res!1731733)) b!4214670))

(assert (= (and b!4214670 (not res!1731740)) b!4214668))

(assert (= (and b!4214668 (not res!1731729)) b!4214660))

(assert (= (and b!4214660 (not res!1731739)) b!4214645))

(assert (= (and b!4214645 (not res!1731730)) b!4214649))

(assert (= (and b!4214649 (not res!1731738)) b!4214647))

(assert (= (and b!4214647 c!717651) b!4214659))

(assert (= (and b!4214647 (not c!717651)) b!4214651))

(assert (= (and b!4214647 (not res!1731732)) b!4214673))

(assert (= b!4214653 b!4214666))

(assert (= b!4214646 b!4214653))

(assert (= start!402778 b!4214646))

(assert (= b!4214662 b!4214675))

(assert (= start!402778 b!4214662))

(assert (= (and start!402778 ((_ is Cons!46358) p!3001)) b!4214672))

(assert (= b!4214654 b!4214664))

(assert (= b!4214667 b!4214654))

(assert (= (and start!402778 ((_ is Cons!46359) rules!3967)) b!4214667))

(assert (= (and start!402778 ((_ is Cons!46358) input!3517)) b!4214656))

(assert (= b!4214671 b!4214652))

(assert (= b!4214650 b!4214671))

(assert (= start!402778 b!4214650))

(assert (= (and start!402778 ((_ is Cons!46358) pBis!121)) b!4214644))

(assert (= (and start!402778 ((_ is Cons!46358) suffix!1557)) b!4214676))

(assert (= (and start!402778 ((_ is Cons!46358) suffixBis!41)) b!4214674))

(declare-fun m!4802489 () Bool)

(assert (=> b!4214659 m!4802489))

(declare-fun m!4802491 () Bool)

(assert (=> start!402778 m!4802491))

(declare-fun m!4802493 () Bool)

(assert (=> start!402778 m!4802493))

(declare-fun m!4802495 () Bool)

(assert (=> b!4214673 m!4802495))

(declare-fun m!4802497 () Bool)

(assert (=> b!4214654 m!4802497))

(declare-fun m!4802499 () Bool)

(assert (=> b!4214654 m!4802499))

(declare-fun m!4802501 () Bool)

(assert (=> b!4214653 m!4802501))

(declare-fun m!4802503 () Bool)

(assert (=> b!4214653 m!4802503))

(declare-fun m!4802505 () Bool)

(assert (=> b!4214648 m!4802505))

(declare-fun m!4802507 () Bool)

(assert (=> b!4214668 m!4802507))

(assert (=> b!4214668 m!4802507))

(declare-fun m!4802509 () Bool)

(assert (=> b!4214668 m!4802509))

(declare-fun m!4802511 () Bool)

(assert (=> b!4214665 m!4802511))

(declare-fun m!4802513 () Bool)

(assert (=> b!4214665 m!4802513))

(declare-fun m!4802515 () Bool)

(assert (=> b!4214665 m!4802515))

(declare-fun m!4802517 () Bool)

(assert (=> b!4214669 m!4802517))

(declare-fun m!4802519 () Bool)

(assert (=> b!4214655 m!4802519))

(declare-fun m!4802521 () Bool)

(assert (=> b!4214643 m!4802521))

(declare-fun m!4802523 () Bool)

(assert (=> b!4214657 m!4802523))

(declare-fun m!4802525 () Bool)

(assert (=> b!4214663 m!4802525))

(declare-fun m!4802527 () Bool)

(assert (=> b!4214658 m!4802527))

(declare-fun m!4802529 () Bool)

(assert (=> b!4214650 m!4802529))

(declare-fun m!4802531 () Bool)

(assert (=> b!4214646 m!4802531))

(declare-fun m!4802533 () Bool)

(assert (=> b!4214647 m!4802533))

(declare-fun m!4802535 () Bool)

(assert (=> b!4214647 m!4802535))

(declare-fun m!4802537 () Bool)

(assert (=> b!4214647 m!4802537))

(declare-fun m!4802539 () Bool)

(assert (=> b!4214647 m!4802539))

(declare-fun m!4802541 () Bool)

(assert (=> b!4214647 m!4802541))

(declare-fun m!4802543 () Bool)

(assert (=> b!4214647 m!4802543))

(declare-fun m!4802545 () Bool)

(assert (=> b!4214647 m!4802545))

(declare-fun m!4802547 () Bool)

(assert (=> b!4214647 m!4802547))

(assert (=> b!4214647 m!4802543))

(declare-fun m!4802549 () Bool)

(assert (=> b!4214647 m!4802549))

(declare-fun m!4802551 () Bool)

(assert (=> b!4214647 m!4802551))

(declare-fun m!4802553 () Bool)

(assert (=> b!4214649 m!4802553))

(declare-fun m!4802555 () Bool)

(assert (=> b!4214671 m!4802555))

(declare-fun m!4802557 () Bool)

(assert (=> b!4214671 m!4802557))

(declare-fun m!4802559 () Bool)

(assert (=> b!4214660 m!4802559))

(declare-fun m!4802561 () Bool)

(assert (=> b!4214662 m!4802561))

(declare-fun m!4802563 () Bool)

(assert (=> b!4214662 m!4802563))

(declare-fun m!4802565 () Bool)

(assert (=> b!4214661 m!4802565))

(check-sat b_and!331937 (not b!4214662) b_and!331943 b_and!331935 (not b!4214646) (not b!4214673) (not b!4214661) (not b_next!124271) (not b!4214658) (not b!4214674) (not b!4214665) (not b!4214653) (not b!4214659) (not b!4214676) (not b!4214669) (not b!4214656) (not start!402778) (not b!4214663) (not b!4214667) b_and!331939 (not b!4214671) (not b!4214672) (not b_next!124277) b_and!331945 (not b_next!124273) (not b_next!124269) b_and!331941 (not b!4214655) (not b!4214648) b_and!331933 (not b_next!124281) (not b!4214654) (not b_next!124275) (not b!4214657) (not b!4214660) (not b!4214643) (not b!4214647) (not b!4214649) (not b!4214644) (not b_next!124279) tp_is_empty!22309 (not b_next!124267) (not b!4214650) (not b!4214668) b_and!331947)
(check-sat b_and!331937 b_and!331943 b_and!331935 b_and!331939 (not b_next!124271) (not b_next!124277) b_and!331933 (not b_next!124279) b_and!331945 (not b_next!124273) (not b_next!124269) b_and!331941 (not b_next!124281) (not b_next!124275) (not b_next!124267) b_and!331947)
