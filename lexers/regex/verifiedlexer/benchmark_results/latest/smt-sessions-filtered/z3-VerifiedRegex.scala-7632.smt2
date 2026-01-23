; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403126 () Bool)

(assert start!403126)

(declare-fun b!4217757 () Bool)

(declare-fun b_free!123787 () Bool)

(declare-fun b_next!124491 () Bool)

(assert (=> b!4217757 (= b_free!123787 (not b_next!124491))))

(declare-fun tp!1290313 () Bool)

(declare-fun b_and!332413 () Bool)

(assert (=> b!4217757 (= tp!1290313 b_and!332413)))

(declare-fun b_free!123789 () Bool)

(declare-fun b_next!124493 () Bool)

(assert (=> b!4217757 (= b_free!123789 (not b_next!124493))))

(declare-fun tp!1290319 () Bool)

(declare-fun b_and!332415 () Bool)

(assert (=> b!4217757 (= tp!1290319 b_and!332415)))

(declare-fun b!4217775 () Bool)

(declare-fun b_free!123791 () Bool)

(declare-fun b_next!124495 () Bool)

(assert (=> b!4217775 (= b_free!123791 (not b_next!124495))))

(declare-fun tp!1290328 () Bool)

(declare-fun b_and!332417 () Bool)

(assert (=> b!4217775 (= tp!1290328 b_and!332417)))

(declare-fun b_free!123793 () Bool)

(declare-fun b_next!124497 () Bool)

(assert (=> b!4217775 (= b_free!123793 (not b_next!124497))))

(declare-fun tp!1290320 () Bool)

(declare-fun b_and!332419 () Bool)

(assert (=> b!4217775 (= tp!1290320 b_and!332419)))

(declare-fun b!4217746 () Bool)

(declare-fun b_free!123795 () Bool)

(declare-fun b_next!124499 () Bool)

(assert (=> b!4217746 (= b_free!123795 (not b_next!124499))))

(declare-fun tp!1290326 () Bool)

(declare-fun b_and!332421 () Bool)

(assert (=> b!4217746 (= tp!1290326 b_and!332421)))

(declare-fun b_free!123797 () Bool)

(declare-fun b_next!124501 () Bool)

(assert (=> b!4217746 (= b_free!123797 (not b_next!124501))))

(declare-fun tp!1290324 () Bool)

(declare-fun b_and!332423 () Bool)

(assert (=> b!4217746 (= tp!1290324 b_and!332423)))

(declare-fun b!4217752 () Bool)

(declare-fun b_free!123799 () Bool)

(declare-fun b_next!124503 () Bool)

(assert (=> b!4217752 (= b_free!123799 (not b_next!124503))))

(declare-fun tp!1290322 () Bool)

(declare-fun b_and!332425 () Bool)

(assert (=> b!4217752 (= tp!1290322 b_and!332425)))

(declare-fun b_free!123801 () Bool)

(declare-fun b_next!124505 () Bool)

(assert (=> b!4217752 (= b_free!123801 (not b_next!124505))))

(declare-fun tp!1290312 () Bool)

(declare-fun b_and!332427 () Bool)

(assert (=> b!4217752 (= tp!1290312 b_and!332427)))

(declare-fun b!4217744 () Bool)

(declare-fun res!1733452 () Bool)

(declare-fun e!2618511 () Bool)

(assert (=> b!4217744 (=> (not res!1733452) (not e!2618511))))

(declare-datatypes ((List!46525 0))(
  ( (Nil!46401) (Cons!46401 (h!51821 (_ BitVec 16)) (t!348544 List!46525)) )
))
(declare-datatypes ((TokenValue!8008 0))(
  ( (FloatLiteralValue!16016 (text!56501 List!46525)) (TokenValueExt!8007 (__x!28239 Int)) (Broken!40040 (value!242176 List!46525)) (Object!8131) (End!8008) (Def!8008) (Underscore!8008) (Match!8008) (Else!8008) (Error!8008) (Case!8008) (If!8008) (Extends!8008) (Abstract!8008) (Class!8008) (Val!8008) (DelimiterValue!16016 (del!8068 List!46525)) (KeywordValue!8014 (value!242177 List!46525)) (CommentValue!16016 (value!242178 List!46525)) (WhitespaceValue!16016 (value!242179 List!46525)) (IndentationValue!8008 (value!242180 List!46525)) (String!53909) (Int32!8008) (Broken!40041 (value!242181 List!46525)) (Boolean!8009) (Unit!65552) (OperatorValue!8011 (op!8068 List!46525)) (IdentifierValue!16016 (value!242182 List!46525)) (IdentifierValue!16017 (value!242183 List!46525)) (WhitespaceValue!16017 (value!242184 List!46525)) (True!16016) (False!16016) (Broken!40042 (value!242185 List!46525)) (Broken!40043 (value!242186 List!46525)) (True!16017) (RightBrace!8008) (RightBracket!8008) (Colon!8008) (Null!8008) (Comma!8008) (LeftBracket!8008) (False!16017) (LeftBrace!8008) (ImaginaryLiteralValue!8008 (text!56502 List!46525)) (StringLiteralValue!24024 (value!242187 List!46525)) (EOFValue!8008 (value!242188 List!46525)) (IdentValue!8008 (value!242189 List!46525)) (DelimiterValue!16017 (value!242190 List!46525)) (DedentValue!8008 (value!242191 List!46525)) (NewLineValue!8008 (value!242192 List!46525)) (IntegerValue!24024 (value!242193 (_ BitVec 32)) (text!56503 List!46525)) (IntegerValue!24025 (value!242194 Int) (text!56504 List!46525)) (Times!8008) (Or!8008) (Equal!8008) (Minus!8008) (Broken!40044 (value!242195 List!46525)) (And!8008) (Div!8008) (LessEqual!8008) (Mod!8008) (Concat!20691) (Not!8008) (Plus!8008) (SpaceValue!8008 (value!242196 List!46525)) (IntegerValue!24026 (value!242197 Int) (text!56505 List!46525)) (StringLiteralValue!24025 (text!56506 List!46525)) (FloatLiteralValue!16017 (text!56507 List!46525)) (BytesLiteralValue!8008 (value!242198 List!46525)) (CommentValue!16017 (value!242199 List!46525)) (StringLiteralValue!24026 (value!242200 List!46525)) (ErrorTokenValue!8008 (msg!8069 List!46525)) )
))
(declare-datatypes ((C!25560 0))(
  ( (C!25561 (val!14942 Int)) )
))
(declare-datatypes ((List!46526 0))(
  ( (Nil!46402) (Cons!46402 (h!51822 C!25560) (t!348545 List!46526)) )
))
(declare-datatypes ((IArray!27983 0))(
  ( (IArray!27984 (innerList!14049 List!46526)) )
))
(declare-datatypes ((Regex!12683 0))(
  ( (ElementMatch!12683 (c!717900 C!25560)) (Concat!20692 (regOne!25878 Regex!12683) (regTwo!25878 Regex!12683)) (EmptyExpr!12683) (Star!12683 (reg!13012 Regex!12683)) (EmptyLang!12683) (Union!12683 (regOne!25879 Regex!12683) (regTwo!25879 Regex!12683)) )
))
(declare-datatypes ((String!53910 0))(
  ( (String!53911 (value!242201 String)) )
))
(declare-datatypes ((Conc!13989 0))(
  ( (Node!13989 (left!34517 Conc!13989) (right!34847 Conc!13989) (csize!28208 Int) (cheight!14200 Int)) (Leaf!21622 (xs!17295 IArray!27983) (csize!28209 Int)) (Empty!13989) )
))
(declare-datatypes ((BalanceConc!27572 0))(
  ( (BalanceConc!27573 (c!717901 Conc!13989)) )
))
(declare-datatypes ((TokenValueInjection!15444 0))(
  ( (TokenValueInjection!15445 (toValue!10498 Int) (toChars!10357 Int)) )
))
(declare-datatypes ((Rule!15356 0))(
  ( (Rule!15357 (regex!7778 Regex!12683) (tag!8642 String!53910) (isSeparator!7778 Bool) (transformation!7778 TokenValueInjection!15444)) )
))
(declare-datatypes ((List!46527 0))(
  ( (Nil!46403) (Cons!46403 (h!51823 Rule!15356) (t!348546 List!46527)) )
))
(declare-fun rules!3967 () List!46527)

(declare-fun isEmpty!27490 (List!46527) Bool)

(assert (=> b!4217744 (= res!1733452 (not (isEmpty!27490 rules!3967)))))

(declare-fun b!4217745 () Bool)

(declare-fun res!1733448 () Bool)

(assert (=> b!4217745 (=> (not res!1733448) (not e!2618511))))

(declare-datatypes ((LexerInterface!7373 0))(
  ( (LexerInterfaceExt!7370 (__x!28240 Int)) (Lexer!7371) )
))
(declare-fun thiss!26544 () LexerInterface!7373)

(declare-fun rulesInvariant!6584 (LexerInterface!7373 List!46527) Bool)

(assert (=> b!4217745 (= res!1733448 (rulesInvariant!6584 thiss!26544 rules!3967))))

(declare-fun e!2618519 () Bool)

(assert (=> b!4217746 (= e!2618519 (and tp!1290326 tp!1290324))))

(declare-fun b!4217747 () Bool)

(declare-fun e!2618501 () Bool)

(assert (=> b!4217747 (= e!2618511 e!2618501)))

(declare-fun res!1733455 () Bool)

(assert (=> b!4217747 (=> (not res!1733455) (not e!2618501))))

(declare-fun input!3517 () List!46526)

(declare-datatypes ((Token!14258 0))(
  ( (Token!14259 (value!242202 TokenValue!8008) (rule!10908 Rule!15356) (size!34074 Int) (originalCharacters!8160 List!46526)) )
))
(declare-datatypes ((tuple2!44130 0))(
  ( (tuple2!44131 (_1!25199 Token!14258) (_2!25199 List!46526)) )
))
(declare-datatypes ((Option!9966 0))(
  ( (None!9965) (Some!9965 (v!40851 tuple2!44130)) )
))
(declare-fun lt!1500989 () Option!9966)

(declare-fun maxPrefix!4413 (LexerInterface!7373 List!46527 List!46526) Option!9966)

(assert (=> b!4217747 (= res!1733455 (= (maxPrefix!4413 thiss!26544 rules!3967 input!3517) lt!1500989))))

(declare-fun t!8364 () Token!14258)

(declare-fun suffix!1557 () List!46526)

(assert (=> b!4217747 (= lt!1500989 (Some!9965 (tuple2!44131 t!8364 suffix!1557)))))

(declare-fun b!4217748 () Bool)

(declare-fun e!2618499 () Bool)

(declare-fun tp_is_empty!22333 () Bool)

(declare-fun tp!1290314 () Bool)

(assert (=> b!4217748 (= e!2618499 (and tp_is_empty!22333 tp!1290314))))

(declare-fun b!4217749 () Bool)

(declare-fun res!1733447 () Bool)

(declare-fun e!2618509 () Bool)

(assert (=> b!4217749 (=> res!1733447 e!2618509)))

(declare-fun tBis!41 () Token!14258)

(declare-fun rBis!178 () Rule!15356)

(assert (=> b!4217749 (= res!1733447 (not (= (rule!10908 tBis!41) rBis!178)))))

(declare-fun e!2618516 () Bool)

(declare-fun tp!1290317 () Bool)

(declare-fun b!4217750 () Bool)

(declare-fun inv!61046 (String!53910) Bool)

(declare-fun inv!61049 (TokenValueInjection!15444) Bool)

(assert (=> b!4217750 (= e!2618516 (and tp!1290317 (inv!61046 (tag!8642 rBis!178)) (inv!61049 (transformation!7778 rBis!178)) e!2618519))))

(declare-fun b!4217751 () Bool)

(declare-fun res!1733456 () Bool)

(assert (=> b!4217751 (=> (not res!1733456) (not e!2618501))))

(declare-fun ruleValid!3490 (LexerInterface!7373 Rule!15356) Bool)

(assert (=> b!4217751 (= res!1733456 (ruleValid!3490 thiss!26544 rBis!178))))

(declare-fun e!2618504 () Bool)

(assert (=> b!4217752 (= e!2618504 (and tp!1290322 tp!1290312))))

(declare-fun e!2618513 () Bool)

(declare-fun e!2618497 () Bool)

(declare-fun b!4217754 () Bool)

(declare-fun tp!1290311 () Bool)

(declare-fun inv!21 (TokenValue!8008) Bool)

(assert (=> b!4217754 (= e!2618513 (and (inv!21 (value!242202 tBis!41)) e!2618497 tp!1290311))))

(declare-fun b!4217755 () Bool)

(declare-fun res!1733457 () Bool)

(assert (=> b!4217755 (=> res!1733457 e!2618509)))

(get-info :version)

(assert (=> b!4217755 (= res!1733457 (or (and ((_ is Cons!46403) rules!3967) ((_ is Nil!46403) (t!348546 rules!3967))) (not ((_ is Cons!46403) rules!3967)) (= (h!51823 rules!3967) rBis!178)))))

(declare-fun b!4217756 () Bool)

(declare-fun res!1733454 () Bool)

(assert (=> b!4217756 (=> (not res!1733454) (not e!2618511))))

(declare-fun p!3001 () List!46526)

(declare-fun ++!11852 (List!46526 List!46526) List!46526)

(assert (=> b!4217756 (= res!1733454 (= (++!11852 p!3001 suffix!1557) input!3517))))

(declare-fun e!2618507 () Bool)

(assert (=> b!4217757 (= e!2618507 (and tp!1290313 tp!1290319))))

(declare-fun b!4217758 () Bool)

(declare-fun res!1733453 () Bool)

(assert (=> b!4217758 (=> res!1733453 e!2618509)))

(declare-fun pBis!121 () List!46526)

(declare-fun list!16787 (BalanceConc!27572) List!46526)

(declare-fun charsOf!5201 (Token!14258) BalanceConc!27572)

(assert (=> b!4217758 (= res!1733453 (not (= (list!16787 (charsOf!5201 tBis!41)) pBis!121)))))

(declare-fun e!2618518 () Bool)

(declare-fun tp!1290316 () Bool)

(declare-fun b!4217759 () Bool)

(assert (=> b!4217759 (= e!2618518 (and tp!1290316 (inv!61046 (tag!8642 (rule!10908 t!8364))) (inv!61049 (transformation!7778 (rule!10908 t!8364))) e!2618507))))

(declare-fun b!4217760 () Bool)

(declare-fun res!1733458 () Bool)

(assert (=> b!4217760 (=> res!1733458 e!2618509)))

(declare-fun maxPrefixOneRule!3368 (LexerInterface!7373 Rule!15356 List!46526) Option!9966)

(assert (=> b!4217760 (= res!1733458 (not (= (maxPrefixOneRule!3368 thiss!26544 (h!51823 rules!3967) input!3517) lt!1500989)))))

(declare-fun b!4217761 () Bool)

(declare-fun res!1733459 () Bool)

(assert (=> b!4217761 (=> (not res!1733459) (not e!2618511))))

(declare-fun isPrefix!4637 (List!46526 List!46526) Bool)

(assert (=> b!4217761 (= res!1733459 (isPrefix!4637 p!3001 input!3517))))

(declare-fun b!4217762 () Bool)

(assert (=> b!4217762 (= e!2618501 (not e!2618509))))

(declare-fun res!1733445 () Bool)

(assert (=> b!4217762 (=> res!1733445 e!2618509)))

(declare-fun suffixBis!41 () List!46526)

(assert (=> b!4217762 (= res!1733445 (not (= (maxPrefixOneRule!3368 thiss!26544 rBis!178 input!3517) (Some!9965 (tuple2!44131 tBis!41 suffixBis!41)))))))

(assert (=> b!4217762 (isPrefix!4637 input!3517 input!3517)))

(declare-datatypes ((Unit!65553 0))(
  ( (Unit!65554) )
))
(declare-fun lt!1500995 () Unit!65553)

(declare-fun lemmaIsPrefixRefl!3054 (List!46526 List!46526) Unit!65553)

(assert (=> b!4217762 (= lt!1500995 (lemmaIsPrefixRefl!3054 input!3517 input!3517))))

(declare-fun b!4217763 () Bool)

(declare-fun e!2618520 () Bool)

(declare-fun tp!1290310 () Bool)

(assert (=> b!4217763 (= e!2618520 (and tp_is_empty!22333 tp!1290310))))

(declare-fun e!2618514 () Bool)

(declare-fun e!2618510 () Bool)

(declare-fun tp!1290315 () Bool)

(declare-fun b!4217764 () Bool)

(assert (=> b!4217764 (= e!2618510 (and tp!1290315 (inv!61046 (tag!8642 (h!51823 rules!3967))) (inv!61049 (transformation!7778 (h!51823 rules!3967))) e!2618514))))

(declare-fun b!4217765 () Bool)

(declare-fun res!1733451 () Bool)

(assert (=> b!4217765 (=> res!1733451 e!2618509)))

(assert (=> b!4217765 (= res!1733451 (not (= (++!11852 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4217766 () Bool)

(declare-fun res!1733450 () Bool)

(assert (=> b!4217766 (=> (not res!1733450) (not e!2618511))))

(declare-fun contains!9599 (List!46527 Rule!15356) Bool)

(assert (=> b!4217766 (= res!1733450 (contains!9599 rules!3967 rBis!178))))

(declare-fun b!4217767 () Bool)

(declare-fun e!2618508 () Unit!65553)

(declare-fun Unit!65555 () Unit!65553)

(assert (=> b!4217767 (= e!2618508 Unit!65555)))

(declare-fun b!4217768 () Bool)

(declare-fun e!2618521 () Bool)

(declare-fun tp!1290321 () Bool)

(assert (=> b!4217768 (= e!2618521 (and tp_is_empty!22333 tp!1290321))))

(declare-fun b!4217769 () Bool)

(declare-fun e!2618515 () Bool)

(declare-fun tp!1290309 () Bool)

(assert (=> b!4217769 (= e!2618515 (and e!2618510 tp!1290309))))

(declare-fun b!4217770 () Bool)

(declare-fun e!2618512 () Bool)

(declare-fun tp!1290325 () Bool)

(assert (=> b!4217770 (= e!2618512 (and tp_is_empty!22333 tp!1290325))))

(declare-fun b!4217771 () Bool)

(declare-fun e!2618505 () Bool)

(declare-fun tp!1290327 () Bool)

(assert (=> b!4217771 (= e!2618505 (and tp_is_empty!22333 tp!1290327))))

(declare-fun res!1733449 () Bool)

(assert (=> start!403126 (=> (not res!1733449) (not e!2618511))))

(assert (=> start!403126 (= res!1733449 ((_ is Lexer!7371) thiss!26544))))

(assert (=> start!403126 e!2618511))

(declare-fun inv!61050 (Token!14258) Bool)

(assert (=> start!403126 (and (inv!61050 tBis!41) e!2618513)))

(assert (=> start!403126 true))

(assert (=> start!403126 e!2618516))

(assert (=> start!403126 e!2618499))

(assert (=> start!403126 e!2618515))

(assert (=> start!403126 e!2618521))

(declare-fun e!2618506 () Bool)

(assert (=> start!403126 (and (inv!61050 t!8364) e!2618506)))

(assert (=> start!403126 e!2618505))

(assert (=> start!403126 e!2618512))

(assert (=> start!403126 e!2618520))

(declare-fun tp!1290323 () Bool)

(declare-fun b!4217753 () Bool)

(assert (=> b!4217753 (= e!2618497 (and tp!1290323 (inv!61046 (tag!8642 (rule!10908 tBis!41))) (inv!61049 (transformation!7778 (rule!10908 tBis!41))) e!2618504))))

(declare-fun b!4217772 () Bool)

(declare-fun Unit!65556 () Unit!65553)

(assert (=> b!4217772 (= e!2618508 Unit!65556)))

(declare-fun lt!1500998 () Unit!65553)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!636 (LexerInterface!7373 Rule!15356 List!46527 List!46526) Unit!65553)

(assert (=> b!4217772 (= lt!1500998 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!636 thiss!26544 rBis!178 (t!348546 rules!3967) input!3517))))

(assert (=> b!4217772 false))

(declare-fun b!4217773 () Bool)

(declare-fun tp!1290318 () Bool)

(assert (=> b!4217773 (= e!2618506 (and (inv!21 (value!242202 t!8364)) e!2618518 tp!1290318))))

(declare-fun b!4217774 () Bool)

(declare-fun lt!1500986 () Int)

(declare-fun size!34075 (List!46526) Int)

(assert (=> b!4217774 (= e!2618509 (<= lt!1500986 (size!34075 p!3001)))))

(declare-fun lt!1500991 () Unit!65553)

(declare-fun lt!1500990 () tuple2!44130)

(declare-fun lemmaCharactersSize!1505 (Token!14258) Unit!65553)

(assert (=> b!4217774 (= lt!1500991 (lemmaCharactersSize!1505 (_1!25199 lt!1500990)))))

(declare-fun lt!1500996 () Unit!65553)

(assert (=> b!4217774 (= lt!1500996 (lemmaCharactersSize!1505 tBis!41))))

(declare-fun lt!1500994 () Unit!65553)

(assert (=> b!4217774 (= lt!1500994 (lemmaCharactersSize!1505 t!8364))))

(declare-fun lt!1500999 () Int)

(assert (=> b!4217774 (<= lt!1500999 lt!1500986)))

(declare-fun lt!1500997 () List!46526)

(assert (=> b!4217774 (= lt!1500986 (size!34075 lt!1500997))))

(assert (=> b!4217774 (= lt!1500999 (size!34075 pBis!121))))

(declare-fun lt!1501000 () Unit!65553)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!36 (LexerInterface!7373 List!46527 List!46526 Token!14258 List!46526 List!46526 List!46526 List!46526 Rule!15356 Token!14258) Unit!65553)

(assert (=> b!4217774 (= lt!1501000 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!36 thiss!26544 (t!348546 rules!3967) lt!1500997 (_1!25199 lt!1500990) input!3517 (_2!25199 lt!1500990) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(assert (=> b!4217774 (rulesInvariant!6584 thiss!26544 (t!348546 rules!3967))))

(declare-fun lt!1500992 () Unit!65553)

(declare-fun lemmaInvariantOnRulesThenOnTail!868 (LexerInterface!7373 Rule!15356 List!46527) Unit!65553)

(assert (=> b!4217774 (= lt!1500992 (lemmaInvariantOnRulesThenOnTail!868 thiss!26544 (h!51823 rules!3967) (t!348546 rules!3967)))))

(assert (=> b!4217774 (isPrefix!4637 lt!1500997 (++!11852 lt!1500997 (_2!25199 lt!1500990)))))

(declare-fun lt!1500993 () Unit!65553)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3092 (List!46526 List!46526) Unit!65553)

(assert (=> b!4217774 (= lt!1500993 (lemmaConcatTwoListThenFirstIsPrefix!3092 lt!1500997 (_2!25199 lt!1500990)))))

(assert (=> b!4217774 (= lt!1500997 (list!16787 (charsOf!5201 (_1!25199 lt!1500990))))))

(declare-fun lt!1500987 () Option!9966)

(declare-fun get!15101 (Option!9966) tuple2!44130)

(assert (=> b!4217774 (= lt!1500990 (get!15101 lt!1500987))))

(declare-fun lt!1500988 () Unit!65553)

(assert (=> b!4217774 (= lt!1500988 e!2618508)))

(declare-fun c!717899 () Bool)

(declare-fun isEmpty!27491 (Option!9966) Bool)

(assert (=> b!4217774 (= c!717899 (isEmpty!27491 lt!1500987))))

(assert (=> b!4217774 (= lt!1500987 (maxPrefix!4413 thiss!26544 (t!348546 rules!3967) input!3517))))

(assert (=> b!4217775 (= e!2618514 (and tp!1290328 tp!1290320))))

(declare-fun b!4217776 () Bool)

(declare-fun res!1733446 () Bool)

(assert (=> b!4217776 (=> (not res!1733446) (not e!2618511))))

(assert (=> b!4217776 (= res!1733446 (isPrefix!4637 pBis!121 input!3517))))

(assert (= (and start!403126 res!1733449) b!4217756))

(assert (= (and b!4217756 res!1733454) b!4217761))

(assert (= (and b!4217761 res!1733459) b!4217776))

(assert (= (and b!4217776 res!1733446) b!4217744))

(assert (= (and b!4217744 res!1733452) b!4217745))

(assert (= (and b!4217745 res!1733448) b!4217766))

(assert (= (and b!4217766 res!1733450) b!4217747))

(assert (= (and b!4217747 res!1733455) b!4217751))

(assert (= (and b!4217751 res!1733456) b!4217762))

(assert (= (and b!4217762 (not res!1733445)) b!4217749))

(assert (= (and b!4217749 (not res!1733447)) b!4217758))

(assert (= (and b!4217758 (not res!1733453)) b!4217765))

(assert (= (and b!4217765 (not res!1733451)) b!4217755))

(assert (= (and b!4217755 (not res!1733457)) b!4217760))

(assert (= (and b!4217760 (not res!1733458)) b!4217774))

(assert (= (and b!4217774 c!717899) b!4217772))

(assert (= (and b!4217774 (not c!717899)) b!4217767))

(assert (= b!4217753 b!4217752))

(assert (= b!4217754 b!4217753))

(assert (= start!403126 b!4217754))

(assert (= b!4217750 b!4217746))

(assert (= start!403126 b!4217750))

(assert (= (and start!403126 ((_ is Cons!46402) p!3001)) b!4217748))

(assert (= b!4217764 b!4217775))

(assert (= b!4217769 b!4217764))

(assert (= (and start!403126 ((_ is Cons!46403) rules!3967)) b!4217769))

(assert (= (and start!403126 ((_ is Cons!46402) input!3517)) b!4217768))

(assert (= b!4217759 b!4217757))

(assert (= b!4217773 b!4217759))

(assert (= start!403126 b!4217773))

(assert (= (and start!403126 ((_ is Cons!46402) pBis!121)) b!4217771))

(assert (= (and start!403126 ((_ is Cons!46402) suffix!1557)) b!4217770))

(assert (= (and start!403126 ((_ is Cons!46402) suffixBis!41)) b!4217763))

(declare-fun m!4806033 () Bool)

(assert (=> b!4217761 m!4806033))

(declare-fun m!4806035 () Bool)

(assert (=> b!4217766 m!4806035))

(declare-fun m!4806037 () Bool)

(assert (=> b!4217751 m!4806037))

(declare-fun m!4806039 () Bool)

(assert (=> b!4217772 m!4806039))

(declare-fun m!4806041 () Bool)

(assert (=> start!403126 m!4806041))

(declare-fun m!4806043 () Bool)

(assert (=> start!403126 m!4806043))

(declare-fun m!4806045 () Bool)

(assert (=> b!4217750 m!4806045))

(declare-fun m!4806047 () Bool)

(assert (=> b!4217750 m!4806047))

(declare-fun m!4806049 () Bool)

(assert (=> b!4217744 m!4806049))

(declare-fun m!4806051 () Bool)

(assert (=> b!4217745 m!4806051))

(declare-fun m!4806053 () Bool)

(assert (=> b!4217765 m!4806053))

(declare-fun m!4806055 () Bool)

(assert (=> b!4217764 m!4806055))

(declare-fun m!4806057 () Bool)

(assert (=> b!4217764 m!4806057))

(declare-fun m!4806059 () Bool)

(assert (=> b!4217758 m!4806059))

(assert (=> b!4217758 m!4806059))

(declare-fun m!4806061 () Bool)

(assert (=> b!4217758 m!4806061))

(declare-fun m!4806063 () Bool)

(assert (=> b!4217754 m!4806063))

(declare-fun m!4806065 () Bool)

(assert (=> b!4217773 m!4806065))

(declare-fun m!4806067 () Bool)

(assert (=> b!4217762 m!4806067))

(declare-fun m!4806069 () Bool)

(assert (=> b!4217762 m!4806069))

(declare-fun m!4806071 () Bool)

(assert (=> b!4217762 m!4806071))

(declare-fun m!4806073 () Bool)

(assert (=> b!4217774 m!4806073))

(declare-fun m!4806075 () Bool)

(assert (=> b!4217774 m!4806075))

(declare-fun m!4806077 () Bool)

(assert (=> b!4217774 m!4806077))

(declare-fun m!4806079 () Bool)

(assert (=> b!4217774 m!4806079))

(declare-fun m!4806081 () Bool)

(assert (=> b!4217774 m!4806081))

(declare-fun m!4806083 () Bool)

(assert (=> b!4217774 m!4806083))

(declare-fun m!4806085 () Bool)

(assert (=> b!4217774 m!4806085))

(declare-fun m!4806087 () Bool)

(assert (=> b!4217774 m!4806087))

(declare-fun m!4806089 () Bool)

(assert (=> b!4217774 m!4806089))

(declare-fun m!4806091 () Bool)

(assert (=> b!4217774 m!4806091))

(declare-fun m!4806093 () Bool)

(assert (=> b!4217774 m!4806093))

(declare-fun m!4806095 () Bool)

(assert (=> b!4217774 m!4806095))

(declare-fun m!4806097 () Bool)

(assert (=> b!4217774 m!4806097))

(declare-fun m!4806099 () Bool)

(assert (=> b!4217774 m!4806099))

(assert (=> b!4217774 m!4806093))

(declare-fun m!4806101 () Bool)

(assert (=> b!4217774 m!4806101))

(declare-fun m!4806103 () Bool)

(assert (=> b!4217774 m!4806103))

(assert (=> b!4217774 m!4806073))

(declare-fun m!4806105 () Bool)

(assert (=> b!4217774 m!4806105))

(declare-fun m!4806107 () Bool)

(assert (=> b!4217753 m!4806107))

(declare-fun m!4806109 () Bool)

(assert (=> b!4217753 m!4806109))

(declare-fun m!4806111 () Bool)

(assert (=> b!4217747 m!4806111))

(declare-fun m!4806113 () Bool)

(assert (=> b!4217776 m!4806113))

(declare-fun m!4806115 () Bool)

(assert (=> b!4217756 m!4806115))

(declare-fun m!4806117 () Bool)

(assert (=> b!4217760 m!4806117))

(declare-fun m!4806119 () Bool)

(assert (=> b!4217759 m!4806119))

(declare-fun m!4806121 () Bool)

(assert (=> b!4217759 m!4806121))

(check-sat (not b_next!124495) (not b_next!124493) (not b!4217766) b_and!332413 tp_is_empty!22333 (not b!4217768) (not start!403126) b_and!332417 (not b!4217744) (not b!4217747) (not b!4217773) (not b!4217776) (not b!4217750) (not b!4217748) (not b!4217745) b_and!332423 (not b_next!124491) (not b_next!124505) (not b!4217771) (not b!4217759) b_and!332419 (not b!4217762) (not b!4217753) b_and!332425 (not b!4217772) (not b_next!124497) (not b!4217761) b_and!332421 (not b!4217774) (not b!4217754) (not b_next!124501) (not b_next!124503) (not b!4217765) (not b!4217756) (not b!4217770) b_and!332427 (not b!4217758) (not b!4217764) (not b!4217769) (not b!4217760) (not b!4217751) (not b!4217763) b_and!332415 (not b_next!124499))
(check-sat (not b_next!124495) (not b_next!124493) b_and!332423 b_and!332413 b_and!332419 b_and!332425 (not b_next!124497) b_and!332417 b_and!332421 (not b_next!124501) (not b_next!124491) (not b_next!124505) (not b_next!124503) b_and!332427 b_and!332415 (not b_next!124499))
(get-model)

(declare-fun b!4217787 () Bool)

(declare-fun e!2618529 () Bool)

(declare-fun e!2618530 () Bool)

(assert (=> b!4217787 (= e!2618529 e!2618530)))

(declare-fun c!717907 () Bool)

(assert (=> b!4217787 (= c!717907 ((_ is IntegerValue!24025) (value!242202 t!8364)))))

(declare-fun b!4217788 () Bool)

(declare-fun res!1733476 () Bool)

(declare-fun e!2618531 () Bool)

(assert (=> b!4217788 (=> res!1733476 e!2618531)))

(assert (=> b!4217788 (= res!1733476 (not ((_ is IntegerValue!24026) (value!242202 t!8364))))))

(assert (=> b!4217788 (= e!2618530 e!2618531)))

(declare-fun b!4217789 () Bool)

(declare-fun inv!15 (TokenValue!8008) Bool)

(assert (=> b!4217789 (= e!2618531 (inv!15 (value!242202 t!8364)))))

(declare-fun b!4217790 () Bool)

(declare-fun inv!17 (TokenValue!8008) Bool)

(assert (=> b!4217790 (= e!2618530 (inv!17 (value!242202 t!8364)))))

(declare-fun b!4217791 () Bool)

(declare-fun inv!16 (TokenValue!8008) Bool)

(assert (=> b!4217791 (= e!2618529 (inv!16 (value!242202 t!8364)))))

(declare-fun d!1242353 () Bool)

(declare-fun c!717906 () Bool)

(assert (=> d!1242353 (= c!717906 ((_ is IntegerValue!24024) (value!242202 t!8364)))))

(assert (=> d!1242353 (= (inv!21 (value!242202 t!8364)) e!2618529)))

(assert (= (and d!1242353 c!717906) b!4217791))

(assert (= (and d!1242353 (not c!717906)) b!4217787))

(assert (= (and b!4217787 c!717907) b!4217790))

(assert (= (and b!4217787 (not c!717907)) b!4217788))

(assert (= (and b!4217788 (not res!1733476)) b!4217789))

(declare-fun m!4806123 () Bool)

(assert (=> b!4217789 m!4806123))

(declare-fun m!4806125 () Bool)

(assert (=> b!4217790 m!4806125))

(declare-fun m!4806127 () Bool)

(assert (=> b!4217791 m!4806127))

(assert (=> b!4217773 d!1242353))

(declare-fun d!1242357 () Bool)

(declare-fun res!1733484 () Bool)

(declare-fun e!2618539 () Bool)

(assert (=> d!1242357 (=> (not res!1733484) (not e!2618539))))

(declare-fun isEmpty!27493 (List!46526) Bool)

(assert (=> d!1242357 (= res!1733484 (not (isEmpty!27493 (originalCharacters!8160 tBis!41))))))

(assert (=> d!1242357 (= (inv!61050 tBis!41) e!2618539)))

(declare-fun b!4217803 () Bool)

(declare-fun res!1733485 () Bool)

(assert (=> b!4217803 (=> (not res!1733485) (not e!2618539))))

(declare-fun dynLambda!19986 (Int TokenValue!8008) BalanceConc!27572)

(assert (=> b!4217803 (= res!1733485 (= (originalCharacters!8160 tBis!41) (list!16787 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))))

(declare-fun b!4217804 () Bool)

(assert (=> b!4217804 (= e!2618539 (= (size!34074 tBis!41) (size!34075 (originalCharacters!8160 tBis!41))))))

(assert (= (and d!1242357 res!1733484) b!4217803))

(assert (= (and b!4217803 res!1733485) b!4217804))

(declare-fun b_lambda!124259 () Bool)

(assert (=> (not b_lambda!124259) (not b!4217803)))

(declare-fun t!348548 () Bool)

(declare-fun tb!253219 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) t!348548) tb!253219))

(declare-fun b!4217817 () Bool)

(declare-fun e!2618546 () Bool)

(declare-fun tp!1290331 () Bool)

(declare-fun inv!61053 (Conc!13989) Bool)

(assert (=> b!4217817 (= e!2618546 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))) tp!1290331))))

(declare-fun result!308644 () Bool)

(declare-fun inv!61054 (BalanceConc!27572) Bool)

(assert (=> tb!253219 (= result!308644 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))) e!2618546))))

(assert (= tb!253219 b!4217817))

(declare-fun m!4806145 () Bool)

(assert (=> b!4217817 m!4806145))

(declare-fun m!4806147 () Bool)

(assert (=> tb!253219 m!4806147))

(assert (=> b!4217803 t!348548))

(declare-fun b_and!332429 () Bool)

(assert (= b_and!332415 (and (=> t!348548 result!308644) b_and!332429)))

(declare-fun t!348550 () Bool)

(declare-fun tb!253221 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) t!348550) tb!253221))

(declare-fun result!308648 () Bool)

(assert (= result!308648 result!308644))

(assert (=> b!4217803 t!348550))

(declare-fun b_and!332431 () Bool)

(assert (= b_and!332419 (and (=> t!348550 result!308648) b_and!332431)))

(declare-fun t!348552 () Bool)

(declare-fun tb!253223 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) t!348552) tb!253223))

(declare-fun result!308650 () Bool)

(assert (= result!308650 result!308644))

(assert (=> b!4217803 t!348552))

(declare-fun b_and!332433 () Bool)

(assert (= b_and!332423 (and (=> t!348552 result!308650) b_and!332433)))

(declare-fun t!348554 () Bool)

(declare-fun tb!253225 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) t!348554) tb!253225))

(declare-fun result!308652 () Bool)

(assert (= result!308652 result!308644))

(assert (=> b!4217803 t!348554))

(declare-fun b_and!332435 () Bool)

(assert (= b_and!332427 (and (=> t!348554 result!308652) b_and!332435)))

(declare-fun m!4806149 () Bool)

(assert (=> d!1242357 m!4806149))

(declare-fun m!4806151 () Bool)

(assert (=> b!4217803 m!4806151))

(assert (=> b!4217803 m!4806151))

(declare-fun m!4806153 () Bool)

(assert (=> b!4217803 m!4806153))

(declare-fun m!4806155 () Bool)

(assert (=> b!4217804 m!4806155))

(assert (=> start!403126 d!1242357))

(declare-fun d!1242365 () Bool)

(declare-fun res!1733492 () Bool)

(declare-fun e!2618547 () Bool)

(assert (=> d!1242365 (=> (not res!1733492) (not e!2618547))))

(assert (=> d!1242365 (= res!1733492 (not (isEmpty!27493 (originalCharacters!8160 t!8364))))))

(assert (=> d!1242365 (= (inv!61050 t!8364) e!2618547)))

(declare-fun b!4217818 () Bool)

(declare-fun res!1733493 () Bool)

(assert (=> b!4217818 (=> (not res!1733493) (not e!2618547))))

(assert (=> b!4217818 (= res!1733493 (= (originalCharacters!8160 t!8364) (list!16787 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))))))

(declare-fun b!4217819 () Bool)

(assert (=> b!4217819 (= e!2618547 (= (size!34074 t!8364) (size!34075 (originalCharacters!8160 t!8364))))))

(assert (= (and d!1242365 res!1733492) b!4217818))

(assert (= (and b!4217818 res!1733493) b!4217819))

(declare-fun b_lambda!124261 () Bool)

(assert (=> (not b_lambda!124261) (not b!4217818)))

(declare-fun t!348556 () Bool)

(declare-fun tb!253227 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) t!348556) tb!253227))

(declare-fun b!4217820 () Bool)

(declare-fun e!2618548 () Bool)

(declare-fun tp!1290332 () Bool)

(assert (=> b!4217820 (= e!2618548 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))) tp!1290332))))

(declare-fun result!308654 () Bool)

(assert (=> tb!253227 (= result!308654 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))) e!2618548))))

(assert (= tb!253227 b!4217820))

(declare-fun m!4806157 () Bool)

(assert (=> b!4217820 m!4806157))

(declare-fun m!4806159 () Bool)

(assert (=> tb!253227 m!4806159))

(assert (=> b!4217818 t!348556))

(declare-fun b_and!332437 () Bool)

(assert (= b_and!332429 (and (=> t!348556 result!308654) b_and!332437)))

(declare-fun tb!253229 () Bool)

(declare-fun t!348558 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) t!348558) tb!253229))

(declare-fun result!308656 () Bool)

(assert (= result!308656 result!308654))

(assert (=> b!4217818 t!348558))

(declare-fun b_and!332439 () Bool)

(assert (= b_and!332431 (and (=> t!348558 result!308656) b_and!332439)))

(declare-fun t!348560 () Bool)

(declare-fun tb!253231 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) t!348560) tb!253231))

(declare-fun result!308658 () Bool)

(assert (= result!308658 result!308654))

(assert (=> b!4217818 t!348560))

(declare-fun b_and!332441 () Bool)

(assert (= b_and!332433 (and (=> t!348560 result!308658) b_and!332441)))

(declare-fun tb!253233 () Bool)

(declare-fun t!348562 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) t!348562) tb!253233))

(declare-fun result!308660 () Bool)

(assert (= result!308660 result!308654))

(assert (=> b!4217818 t!348562))

(declare-fun b_and!332443 () Bool)

(assert (= b_and!332435 (and (=> t!348562 result!308660) b_and!332443)))

(declare-fun m!4806161 () Bool)

(assert (=> d!1242365 m!4806161))

(declare-fun m!4806163 () Bool)

(assert (=> b!4217818 m!4806163))

(assert (=> b!4217818 m!4806163))

(declare-fun m!4806165 () Bool)

(assert (=> b!4217818 m!4806165))

(declare-fun m!4806167 () Bool)

(assert (=> b!4217819 m!4806167))

(assert (=> start!403126 d!1242365))

(declare-fun b!4217950 () Bool)

(declare-fun res!1733583 () Bool)

(declare-fun e!2618618 () Bool)

(assert (=> b!4217950 (=> (not res!1733583) (not e!2618618))))

(declare-fun lt!1501060 () Option!9966)

(declare-fun apply!10701 (TokenValueInjection!15444 BalanceConc!27572) TokenValue!8008)

(declare-fun seqFromList!5761 (List!46526) BalanceConc!27572)

(assert (=> b!4217950 (= res!1733583 (= (value!242202 (_1!25199 (get!15101 lt!1501060))) (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))))))))

(declare-fun b!4217951 () Bool)

(declare-fun e!2618619 () Bool)

(declare-fun matchR!6380 (Regex!12683 List!46526) Bool)

(declare-datatypes ((tuple2!44134 0))(
  ( (tuple2!44135 (_1!25201 List!46526) (_2!25201 List!46526)) )
))
(declare-fun findLongestMatchInner!1661 (Regex!12683 List!46526 Int List!46526 List!46526 Int) tuple2!44134)

(assert (=> b!4217951 (= e!2618619 (matchR!6380 (regex!7778 rBis!178) (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun b!4217952 () Bool)

(declare-fun res!1733584 () Bool)

(assert (=> b!4217952 (=> (not res!1733584) (not e!2618618))))

(assert (=> b!4217952 (= res!1733584 (< (size!34075 (_2!25199 (get!15101 lt!1501060))) (size!34075 input!3517)))))

(declare-fun d!1242367 () Bool)

(declare-fun e!2618620 () Bool)

(assert (=> d!1242367 e!2618620))

(declare-fun res!1733586 () Bool)

(assert (=> d!1242367 (=> res!1733586 e!2618620)))

(assert (=> d!1242367 (= res!1733586 (isEmpty!27491 lt!1501060))))

(declare-fun e!2618617 () Option!9966)

(assert (=> d!1242367 (= lt!1501060 e!2618617)))

(declare-fun c!717928 () Bool)

(declare-fun lt!1501063 () tuple2!44134)

(assert (=> d!1242367 (= c!717928 (isEmpty!27493 (_1!25201 lt!1501063)))))

(declare-fun findLongestMatch!1574 (Regex!12683 List!46526) tuple2!44134)

(assert (=> d!1242367 (= lt!1501063 (findLongestMatch!1574 (regex!7778 rBis!178) input!3517))))

(assert (=> d!1242367 (ruleValid!3490 thiss!26544 rBis!178)))

(assert (=> d!1242367 (= (maxPrefixOneRule!3368 thiss!26544 rBis!178 input!3517) lt!1501060)))

(declare-fun b!4217953 () Bool)

(assert (=> b!4217953 (= e!2618618 (= (size!34074 (_1!25199 (get!15101 lt!1501060))) (size!34075 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060))))))))

(declare-fun b!4217954 () Bool)

(declare-fun res!1733589 () Bool)

(assert (=> b!4217954 (=> (not res!1733589) (not e!2618618))))

(assert (=> b!4217954 (= res!1733589 (= (rule!10908 (_1!25199 (get!15101 lt!1501060))) rBis!178))))

(declare-fun b!4217955 () Bool)

(assert (=> b!4217955 (= e!2618620 e!2618618)))

(declare-fun res!1733585 () Bool)

(assert (=> b!4217955 (=> (not res!1733585) (not e!2618618))))

(assert (=> b!4217955 (= res!1733585 (matchR!6380 (regex!7778 rBis!178) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))))))

(declare-fun b!4217956 () Bool)

(assert (=> b!4217956 (= e!2618617 None!9965)))

(declare-fun b!4217957 () Bool)

(declare-fun res!1733588 () Bool)

(assert (=> b!4217957 (=> (not res!1733588) (not e!2618618))))

(assert (=> b!4217957 (= res!1733588 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))) (_2!25199 (get!15101 lt!1501060))) input!3517))))

(declare-fun b!4217958 () Bool)

(declare-fun size!34077 (BalanceConc!27572) Int)

(assert (=> b!4217958 (= e!2618617 (Some!9965 (tuple2!44131 (Token!14259 (apply!10701 (transformation!7778 rBis!178) (seqFromList!5761 (_1!25201 lt!1501063))) rBis!178 (size!34077 (seqFromList!5761 (_1!25201 lt!1501063))) (_1!25201 lt!1501063)) (_2!25201 lt!1501063))))))

(declare-fun lt!1501061 () Unit!65553)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1634 (Regex!12683 List!46526) Unit!65553)

(assert (=> b!4217958 (= lt!1501061 (longestMatchIsAcceptedByMatchOrIsEmpty!1634 (regex!7778 rBis!178) input!3517))))

(declare-fun res!1733587 () Bool)

(assert (=> b!4217958 (= res!1733587 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> b!4217958 (=> res!1733587 e!2618619)))

(assert (=> b!4217958 e!2618619))

(declare-fun lt!1501064 () Unit!65553)

(assert (=> b!4217958 (= lt!1501064 lt!1501061)))

(declare-fun lt!1501062 () Unit!65553)

(declare-fun lemmaSemiInverse!2502 (TokenValueInjection!15444 BalanceConc!27572) Unit!65553)

(assert (=> b!4217958 (= lt!1501062 (lemmaSemiInverse!2502 (transformation!7778 rBis!178) (seqFromList!5761 (_1!25201 lt!1501063))))))

(assert (= (and d!1242367 c!717928) b!4217956))

(assert (= (and d!1242367 (not c!717928)) b!4217958))

(assert (= (and b!4217958 (not res!1733587)) b!4217951))

(assert (= (and d!1242367 (not res!1733586)) b!4217955))

(assert (= (and b!4217955 res!1733585) b!4217957))

(assert (= (and b!4217957 res!1733588) b!4217952))

(assert (= (and b!4217952 res!1733584) b!4217954))

(assert (= (and b!4217954 res!1733589) b!4217950))

(assert (= (and b!4217950 res!1733583) b!4217953))

(declare-fun m!4806327 () Bool)

(assert (=> b!4217954 m!4806327))

(declare-fun m!4806329 () Bool)

(assert (=> b!4217951 m!4806329))

(declare-fun m!4806331 () Bool)

(assert (=> b!4217951 m!4806331))

(assert (=> b!4217951 m!4806329))

(assert (=> b!4217951 m!4806331))

(declare-fun m!4806333 () Bool)

(assert (=> b!4217951 m!4806333))

(declare-fun m!4806335 () Bool)

(assert (=> b!4217951 m!4806335))

(assert (=> b!4217952 m!4806327))

(declare-fun m!4806337 () Bool)

(assert (=> b!4217952 m!4806337))

(assert (=> b!4217952 m!4806331))

(assert (=> b!4217957 m!4806327))

(declare-fun m!4806339 () Bool)

(assert (=> b!4217957 m!4806339))

(assert (=> b!4217957 m!4806339))

(declare-fun m!4806343 () Bool)

(assert (=> b!4217957 m!4806343))

(assert (=> b!4217957 m!4806343))

(declare-fun m!4806353 () Bool)

(assert (=> b!4217957 m!4806353))

(declare-fun m!4806359 () Bool)

(assert (=> b!4217958 m!4806359))

(declare-fun m!4806361 () Bool)

(assert (=> b!4217958 m!4806361))

(declare-fun m!4806365 () Bool)

(assert (=> b!4217958 m!4806365))

(declare-fun m!4806367 () Bool)

(assert (=> b!4217958 m!4806367))

(assert (=> b!4217958 m!4806331))

(assert (=> b!4217958 m!4806365))

(declare-fun m!4806373 () Bool)

(assert (=> b!4217958 m!4806373))

(assert (=> b!4217958 m!4806365))

(assert (=> b!4217958 m!4806329))

(assert (=> b!4217958 m!4806365))

(declare-fun m!4806375 () Bool)

(assert (=> b!4217958 m!4806375))

(assert (=> b!4217958 m!4806329))

(assert (=> b!4217958 m!4806331))

(assert (=> b!4217958 m!4806333))

(assert (=> b!4217950 m!4806327))

(declare-fun m!4806383 () Bool)

(assert (=> b!4217950 m!4806383))

(assert (=> b!4217950 m!4806383))

(declare-fun m!4806387 () Bool)

(assert (=> b!4217950 m!4806387))

(assert (=> b!4217955 m!4806327))

(assert (=> b!4217955 m!4806339))

(assert (=> b!4217955 m!4806339))

(assert (=> b!4217955 m!4806343))

(assert (=> b!4217955 m!4806343))

(declare-fun m!4806389 () Bool)

(assert (=> b!4217955 m!4806389))

(declare-fun m!4806391 () Bool)

(assert (=> d!1242367 m!4806391))

(declare-fun m!4806393 () Bool)

(assert (=> d!1242367 m!4806393))

(declare-fun m!4806395 () Bool)

(assert (=> d!1242367 m!4806395))

(assert (=> d!1242367 m!4806037))

(assert (=> b!4217953 m!4806327))

(declare-fun m!4806397 () Bool)

(assert (=> b!4217953 m!4806397))

(assert (=> b!4217762 d!1242367))

(declare-fun b!4217983 () Bool)

(declare-fun e!2618634 () Bool)

(assert (=> b!4217983 (= e!2618634 (>= (size!34075 input!3517) (size!34075 input!3517)))))

(declare-fun b!4217981 () Bool)

(declare-fun res!1733609 () Bool)

(declare-fun e!2618635 () Bool)

(assert (=> b!4217981 (=> (not res!1733609) (not e!2618635))))

(declare-fun head!8950 (List!46526) C!25560)

(assert (=> b!4217981 (= res!1733609 (= (head!8950 input!3517) (head!8950 input!3517)))))

(declare-fun b!4217982 () Bool)

(declare-fun tail!6797 (List!46526) List!46526)

(assert (=> b!4217982 (= e!2618635 (isPrefix!4637 (tail!6797 input!3517) (tail!6797 input!3517)))))

(declare-fun b!4217980 () Bool)

(declare-fun e!2618636 () Bool)

(assert (=> b!4217980 (= e!2618636 e!2618635)))

(declare-fun res!1733611 () Bool)

(assert (=> b!4217980 (=> (not res!1733611) (not e!2618635))))

(assert (=> b!4217980 (= res!1733611 (not ((_ is Nil!46402) input!3517)))))

(declare-fun d!1242403 () Bool)

(assert (=> d!1242403 e!2618634))

(declare-fun res!1733610 () Bool)

(assert (=> d!1242403 (=> res!1733610 e!2618634)))

(declare-fun lt!1501076 () Bool)

(assert (=> d!1242403 (= res!1733610 (not lt!1501076))))

(assert (=> d!1242403 (= lt!1501076 e!2618636)))

(declare-fun res!1733608 () Bool)

(assert (=> d!1242403 (=> res!1733608 e!2618636)))

(assert (=> d!1242403 (= res!1733608 ((_ is Nil!46402) input!3517))))

(assert (=> d!1242403 (= (isPrefix!4637 input!3517 input!3517) lt!1501076)))

(assert (= (and d!1242403 (not res!1733608)) b!4217980))

(assert (= (and b!4217980 res!1733611) b!4217981))

(assert (= (and b!4217981 res!1733609) b!4217982))

(assert (= (and d!1242403 (not res!1733610)) b!4217983))

(assert (=> b!4217983 m!4806331))

(assert (=> b!4217983 m!4806331))

(declare-fun m!4806417 () Bool)

(assert (=> b!4217981 m!4806417))

(assert (=> b!4217981 m!4806417))

(declare-fun m!4806419 () Bool)

(assert (=> b!4217982 m!4806419))

(assert (=> b!4217982 m!4806419))

(assert (=> b!4217982 m!4806419))

(assert (=> b!4217982 m!4806419))

(declare-fun m!4806421 () Bool)

(assert (=> b!4217982 m!4806421))

(assert (=> b!4217762 d!1242403))

(declare-fun d!1242419 () Bool)

(assert (=> d!1242419 (isPrefix!4637 input!3517 input!3517)))

(declare-fun lt!1501083 () Unit!65553)

(declare-fun choose!25847 (List!46526 List!46526) Unit!65553)

(assert (=> d!1242419 (= lt!1501083 (choose!25847 input!3517 input!3517))))

(assert (=> d!1242419 (= (lemmaIsPrefixRefl!3054 input!3517 input!3517) lt!1501083)))

(declare-fun bs!597560 () Bool)

(assert (= bs!597560 d!1242419))

(assert (=> bs!597560 m!4806069))

(declare-fun m!4806439 () Bool)

(assert (=> bs!597560 m!4806439))

(assert (=> b!4217762 d!1242419))

(declare-fun d!1242429 () Bool)

(declare-fun res!1733627 () Bool)

(declare-fun e!2618652 () Bool)

(assert (=> d!1242429 (=> (not res!1733627) (not e!2618652))))

(declare-fun validRegex!5757 (Regex!12683) Bool)

(assert (=> d!1242429 (= res!1733627 (validRegex!5757 (regex!7778 rBis!178)))))

(assert (=> d!1242429 (= (ruleValid!3490 thiss!26544 rBis!178) e!2618652)))

(declare-fun b!4218011 () Bool)

(declare-fun res!1733628 () Bool)

(assert (=> b!4218011 (=> (not res!1733628) (not e!2618652))))

(declare-fun nullable!4470 (Regex!12683) Bool)

(assert (=> b!4218011 (= res!1733628 (not (nullable!4470 (regex!7778 rBis!178))))))

(declare-fun b!4218012 () Bool)

(assert (=> b!4218012 (= e!2618652 (not (= (tag!8642 rBis!178) (String!53911 ""))))))

(assert (= (and d!1242429 res!1733627) b!4218011))

(assert (= (and b!4218011 res!1733628) b!4218012))

(declare-fun m!4806463 () Bool)

(assert (=> d!1242429 m!4806463))

(declare-fun m!4806465 () Bool)

(assert (=> b!4218011 m!4806465))

(assert (=> b!4217751 d!1242429))

(declare-fun d!1242441 () Bool)

(assert (=> d!1242441 (isEmpty!27491 (maxPrefixOneRule!3368 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1501094 () Unit!65553)

(declare-fun choose!25849 (LexerInterface!7373 Rule!15356 List!46527 List!46526) Unit!65553)

(assert (=> d!1242441 (= lt!1501094 (choose!25849 thiss!26544 rBis!178 (t!348546 rules!3967) input!3517))))

(assert (=> d!1242441 (not (isEmpty!27490 (t!348546 rules!3967)))))

(assert (=> d!1242441 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!636 thiss!26544 rBis!178 (t!348546 rules!3967) input!3517) lt!1501094)))

(declare-fun bs!597562 () Bool)

(assert (= bs!597562 d!1242441))

(assert (=> bs!597562 m!4806067))

(assert (=> bs!597562 m!4806067))

(declare-fun m!4806471 () Bool)

(assert (=> bs!597562 m!4806471))

(declare-fun m!4806473 () Bool)

(assert (=> bs!597562 m!4806473))

(declare-fun m!4806475 () Bool)

(assert (=> bs!597562 m!4806475))

(assert (=> b!4217772 d!1242441))

(declare-fun d!1242445 () Bool)

(assert (=> d!1242445 (= (inv!61046 (tag!8642 (rule!10908 tBis!41))) (= (mod (str.len (value!242201 (tag!8642 (rule!10908 tBis!41)))) 2) 0))))

(assert (=> b!4217753 d!1242445))

(declare-fun d!1242451 () Bool)

(declare-fun res!1733650 () Bool)

(declare-fun e!2618667 () Bool)

(assert (=> d!1242451 (=> (not res!1733650) (not e!2618667))))

(declare-fun semiInverseModEq!3381 (Int Int) Bool)

(assert (=> d!1242451 (= res!1733650 (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))))))

(assert (=> d!1242451 (= (inv!61049 (transformation!7778 (rule!10908 tBis!41))) e!2618667)))

(declare-fun b!4218036 () Bool)

(declare-fun equivClasses!3280 (Int Int) Bool)

(assert (=> b!4218036 (= e!2618667 (equivClasses!3280 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))))))

(assert (= (and d!1242451 res!1733650) b!4218036))

(declare-fun m!4806513 () Bool)

(assert (=> d!1242451 m!4806513))

(declare-fun m!4806515 () Bool)

(assert (=> b!4218036 m!4806515))

(assert (=> b!4217753 d!1242451))

(declare-fun d!1242463 () Bool)

(assert (=> d!1242463 (= (isEmpty!27491 lt!1500987) (not ((_ is Some!9965) lt!1500987)))))

(assert (=> b!4217774 d!1242463))

(declare-fun b!4218103 () Bool)

(declare-fun res!1733670 () Bool)

(declare-fun e!2618703 () Bool)

(assert (=> b!4218103 (=> (not res!1733670) (not e!2618703))))

(declare-fun lt!1501113 () Option!9966)

(assert (=> b!4218103 (= res!1733670 (matchR!6380 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))))))

(declare-fun b!4218104 () Bool)

(declare-fun res!1733669 () Bool)

(assert (=> b!4218104 (=> (not res!1733669) (not e!2618703))))

(assert (=> b!4218104 (= res!1733669 (< (size!34075 (_2!25199 (get!15101 lt!1501113))) (size!34075 input!3517)))))

(declare-fun b!4218105 () Bool)

(declare-fun e!2618701 () Bool)

(assert (=> b!4218105 (= e!2618701 e!2618703)))

(declare-fun res!1733667 () Bool)

(assert (=> b!4218105 (=> (not res!1733667) (not e!2618703))))

(declare-fun isDefined!7401 (Option!9966) Bool)

(assert (=> b!4218105 (= res!1733667 (isDefined!7401 lt!1501113))))

(declare-fun b!4218106 () Bool)

(declare-fun e!2618702 () Option!9966)

(declare-fun lt!1501116 () Option!9966)

(declare-fun lt!1501114 () Option!9966)

(assert (=> b!4218106 (= e!2618702 (ite (and ((_ is None!9965) lt!1501116) ((_ is None!9965) lt!1501114)) None!9965 (ite ((_ is None!9965) lt!1501114) lt!1501116 (ite ((_ is None!9965) lt!1501116) lt!1501114 (ite (>= (size!34074 (_1!25199 (v!40851 lt!1501116))) (size!34074 (_1!25199 (v!40851 lt!1501114)))) lt!1501116 lt!1501114)))))))

(declare-fun call!293037 () Option!9966)

(assert (=> b!4218106 (= lt!1501116 call!293037)))

(assert (=> b!4218106 (= lt!1501114 (maxPrefix!4413 thiss!26544 (t!348546 (t!348546 rules!3967)) input!3517))))

(declare-fun b!4218107 () Bool)

(declare-fun res!1733665 () Bool)

(assert (=> b!4218107 (=> (not res!1733665) (not e!2618703))))

(assert (=> b!4218107 (= res!1733665 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113)))))))

(declare-fun b!4218108 () Bool)

(declare-fun res!1733666 () Bool)

(assert (=> b!4218108 (=> (not res!1733666) (not e!2618703))))

(assert (=> b!4218108 (= res!1733666 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))) (_2!25199 (get!15101 lt!1501113))) input!3517))))

(declare-fun b!4218109 () Bool)

(assert (=> b!4218109 (= e!2618703 (contains!9599 (t!348546 rules!3967) (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))

(declare-fun b!4218110 () Bool)

(assert (=> b!4218110 (= e!2618702 call!293037)))

(declare-fun b!4218111 () Bool)

(declare-fun res!1733668 () Bool)

(assert (=> b!4218111 (=> (not res!1733668) (not e!2618703))))

(assert (=> b!4218111 (= res!1733668 (= (value!242202 (_1!25199 (get!15101 lt!1501113))) (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113)))))))))

(declare-fun d!1242465 () Bool)

(assert (=> d!1242465 e!2618701))

(declare-fun res!1733671 () Bool)

(assert (=> d!1242465 (=> res!1733671 e!2618701)))

(assert (=> d!1242465 (= res!1733671 (isEmpty!27491 lt!1501113))))

(assert (=> d!1242465 (= lt!1501113 e!2618702)))

(declare-fun c!717939 () Bool)

(assert (=> d!1242465 (= c!717939 (and ((_ is Cons!46403) (t!348546 rules!3967)) ((_ is Nil!46403) (t!348546 (t!348546 rules!3967)))))))

(declare-fun lt!1501115 () Unit!65553)

(declare-fun lt!1501117 () Unit!65553)

(assert (=> d!1242465 (= lt!1501115 lt!1501117)))

(assert (=> d!1242465 (isPrefix!4637 input!3517 input!3517)))

(assert (=> d!1242465 (= lt!1501117 (lemmaIsPrefixRefl!3054 input!3517 input!3517))))

(declare-fun rulesValidInductive!2892 (LexerInterface!7373 List!46527) Bool)

(assert (=> d!1242465 (rulesValidInductive!2892 thiss!26544 (t!348546 rules!3967))))

(assert (=> d!1242465 (= (maxPrefix!4413 thiss!26544 (t!348546 rules!3967) input!3517) lt!1501113)))

(declare-fun bm!293032 () Bool)

(assert (=> bm!293032 (= call!293037 (maxPrefixOneRule!3368 thiss!26544 (h!51823 (t!348546 rules!3967)) input!3517))))

(assert (= (and d!1242465 c!717939) b!4218110))

(assert (= (and d!1242465 (not c!717939)) b!4218106))

(assert (= (or b!4218110 b!4218106) bm!293032))

(assert (= (and d!1242465 (not res!1733671)) b!4218105))

(assert (= (and b!4218105 res!1733667) b!4218107))

(assert (= (and b!4218107 res!1733665) b!4218104))

(assert (= (and b!4218104 res!1733669) b!4218108))

(assert (= (and b!4218108 res!1733666) b!4218111))

(assert (= (and b!4218111 res!1733668) b!4218103))

(assert (= (and b!4218103 res!1733670) b!4218109))

(declare-fun m!4806535 () Bool)

(assert (=> b!4218111 m!4806535))

(declare-fun m!4806537 () Bool)

(assert (=> b!4218111 m!4806537))

(assert (=> b!4218111 m!4806537))

(declare-fun m!4806539 () Bool)

(assert (=> b!4218111 m!4806539))

(declare-fun m!4806541 () Bool)

(assert (=> b!4218106 m!4806541))

(declare-fun m!4806543 () Bool)

(assert (=> d!1242465 m!4806543))

(assert (=> d!1242465 m!4806069))

(assert (=> d!1242465 m!4806071))

(declare-fun m!4806545 () Bool)

(assert (=> d!1242465 m!4806545))

(declare-fun m!4806547 () Bool)

(assert (=> b!4218105 m!4806547))

(declare-fun m!4806549 () Bool)

(assert (=> bm!293032 m!4806549))

(assert (=> b!4218107 m!4806535))

(declare-fun m!4806551 () Bool)

(assert (=> b!4218107 m!4806551))

(assert (=> b!4218107 m!4806551))

(declare-fun m!4806553 () Bool)

(assert (=> b!4218107 m!4806553))

(assert (=> b!4218104 m!4806535))

(declare-fun m!4806555 () Bool)

(assert (=> b!4218104 m!4806555))

(assert (=> b!4218104 m!4806331))

(assert (=> b!4218108 m!4806535))

(assert (=> b!4218108 m!4806551))

(assert (=> b!4218108 m!4806551))

(assert (=> b!4218108 m!4806553))

(assert (=> b!4218108 m!4806553))

(declare-fun m!4806557 () Bool)

(assert (=> b!4218108 m!4806557))

(assert (=> b!4218103 m!4806535))

(assert (=> b!4218103 m!4806551))

(assert (=> b!4218103 m!4806551))

(assert (=> b!4218103 m!4806553))

(assert (=> b!4218103 m!4806553))

(declare-fun m!4806559 () Bool)

(assert (=> b!4218103 m!4806559))

(assert (=> b!4218109 m!4806535))

(declare-fun m!4806561 () Bool)

(assert (=> b!4218109 m!4806561))

(assert (=> b!4217774 d!1242465))

(declare-fun d!1242467 () Bool)

(declare-fun lt!1501120 () Int)

(assert (=> d!1242467 (>= lt!1501120 0)))

(declare-fun e!2618706 () Int)

(assert (=> d!1242467 (= lt!1501120 e!2618706)))

(declare-fun c!717942 () Bool)

(assert (=> d!1242467 (= c!717942 ((_ is Nil!46402) lt!1500997))))

(assert (=> d!1242467 (= (size!34075 lt!1500997) lt!1501120)))

(declare-fun b!4218116 () Bool)

(assert (=> b!4218116 (= e!2618706 0)))

(declare-fun b!4218117 () Bool)

(assert (=> b!4218117 (= e!2618706 (+ 1 (size!34075 (t!348545 lt!1500997))))))

(assert (= (and d!1242467 c!717942) b!4218116))

(assert (= (and d!1242467 (not c!717942)) b!4218117))

(declare-fun m!4806563 () Bool)

(assert (=> b!4218117 m!4806563))

(assert (=> b!4217774 d!1242467))

(declare-fun d!1242469 () Bool)

(assert (=> d!1242469 (= (size!34074 tBis!41) (size!34075 (originalCharacters!8160 tBis!41)))))

(declare-fun Unit!65557 () Unit!65553)

(assert (=> d!1242469 (= (lemmaCharactersSize!1505 tBis!41) Unit!65557)))

(declare-fun bs!597564 () Bool)

(assert (= bs!597564 d!1242469))

(assert (=> bs!597564 m!4806155))

(assert (=> b!4217774 d!1242469))

(declare-fun d!1242471 () Bool)

(assert (=> d!1242471 (= (size!34074 t!8364) (size!34075 (originalCharacters!8160 t!8364)))))

(declare-fun Unit!65558 () Unit!65553)

(assert (=> d!1242471 (= (lemmaCharactersSize!1505 t!8364) Unit!65558)))

(declare-fun bs!597565 () Bool)

(assert (= bs!597565 d!1242471))

(assert (=> bs!597565 m!4806167))

(assert (=> b!4217774 d!1242471))

(declare-fun d!1242473 () Bool)

(assert (=> d!1242473 (= (get!15101 lt!1500987) (v!40851 lt!1500987))))

(assert (=> b!4217774 d!1242473))

(declare-fun b!4218121 () Bool)

(declare-fun e!2618707 () Bool)

(assert (=> b!4218121 (= e!2618707 (>= (size!34075 (++!11852 lt!1500997 (_2!25199 lt!1500990))) (size!34075 lt!1500997)))))

(declare-fun b!4218119 () Bool)

(declare-fun res!1733673 () Bool)

(declare-fun e!2618708 () Bool)

(assert (=> b!4218119 (=> (not res!1733673) (not e!2618708))))

(assert (=> b!4218119 (= res!1733673 (= (head!8950 lt!1500997) (head!8950 (++!11852 lt!1500997 (_2!25199 lt!1500990)))))))

(declare-fun b!4218120 () Bool)

(assert (=> b!4218120 (= e!2618708 (isPrefix!4637 (tail!6797 lt!1500997) (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990)))))))

(declare-fun b!4218118 () Bool)

(declare-fun e!2618709 () Bool)

(assert (=> b!4218118 (= e!2618709 e!2618708)))

(declare-fun res!1733675 () Bool)

(assert (=> b!4218118 (=> (not res!1733675) (not e!2618708))))

(assert (=> b!4218118 (= res!1733675 (not ((_ is Nil!46402) (++!11852 lt!1500997 (_2!25199 lt!1500990)))))))

(declare-fun d!1242475 () Bool)

(assert (=> d!1242475 e!2618707))

(declare-fun res!1733674 () Bool)

(assert (=> d!1242475 (=> res!1733674 e!2618707)))

(declare-fun lt!1501121 () Bool)

(assert (=> d!1242475 (= res!1733674 (not lt!1501121))))

(assert (=> d!1242475 (= lt!1501121 e!2618709)))

(declare-fun res!1733672 () Bool)

(assert (=> d!1242475 (=> res!1733672 e!2618709)))

(assert (=> d!1242475 (= res!1733672 ((_ is Nil!46402) lt!1500997))))

(assert (=> d!1242475 (= (isPrefix!4637 lt!1500997 (++!11852 lt!1500997 (_2!25199 lt!1500990))) lt!1501121)))

(assert (= (and d!1242475 (not res!1733672)) b!4218118))

(assert (= (and b!4218118 res!1733675) b!4218119))

(assert (= (and b!4218119 res!1733673) b!4218120))

(assert (= (and d!1242475 (not res!1733674)) b!4218121))

(assert (=> b!4218121 m!4806073))

(declare-fun m!4806565 () Bool)

(assert (=> b!4218121 m!4806565))

(assert (=> b!4218121 m!4806083))

(declare-fun m!4806567 () Bool)

(assert (=> b!4218119 m!4806567))

(assert (=> b!4218119 m!4806073))

(declare-fun m!4806569 () Bool)

(assert (=> b!4218119 m!4806569))

(declare-fun m!4806571 () Bool)

(assert (=> b!4218120 m!4806571))

(assert (=> b!4218120 m!4806073))

(declare-fun m!4806573 () Bool)

(assert (=> b!4218120 m!4806573))

(assert (=> b!4218120 m!4806571))

(assert (=> b!4218120 m!4806573))

(declare-fun m!4806575 () Bool)

(assert (=> b!4218120 m!4806575))

(assert (=> b!4217774 d!1242475))

(declare-fun d!1242477 () Bool)

(assert (=> d!1242477 (= (size!34074 (_1!25199 lt!1500990)) (size!34075 (originalCharacters!8160 (_1!25199 lt!1500990))))))

(declare-fun Unit!65560 () Unit!65553)

(assert (=> d!1242477 (= (lemmaCharactersSize!1505 (_1!25199 lt!1500990)) Unit!65560)))

(declare-fun bs!597566 () Bool)

(assert (= bs!597566 d!1242477))

(declare-fun m!4806577 () Bool)

(assert (=> bs!597566 m!4806577))

(assert (=> b!4217774 d!1242477))

(declare-fun d!1242479 () Bool)

(declare-fun res!1733678 () Bool)

(declare-fun e!2618712 () Bool)

(assert (=> d!1242479 (=> (not res!1733678) (not e!2618712))))

(declare-fun rulesValid!3049 (LexerInterface!7373 List!46527) Bool)

(assert (=> d!1242479 (= res!1733678 (rulesValid!3049 thiss!26544 (t!348546 rules!3967)))))

(assert (=> d!1242479 (= (rulesInvariant!6584 thiss!26544 (t!348546 rules!3967)) e!2618712)))

(declare-fun b!4218124 () Bool)

(declare-datatypes ((List!46528 0))(
  ( (Nil!46404) (Cons!46404 (h!51824 String!53910) (t!348609 List!46528)) )
))
(declare-fun noDuplicateTag!3210 (LexerInterface!7373 List!46527 List!46528) Bool)

(assert (=> b!4218124 (= e!2618712 (noDuplicateTag!3210 thiss!26544 (t!348546 rules!3967) Nil!46404))))

(assert (= (and d!1242479 res!1733678) b!4218124))

(declare-fun m!4806579 () Bool)

(assert (=> d!1242479 m!4806579))

(declare-fun m!4806581 () Bool)

(assert (=> b!4218124 m!4806581))

(assert (=> b!4217774 d!1242479))

(declare-fun b!4218134 () Bool)

(declare-fun e!2618718 () List!46526)

(assert (=> b!4218134 (= e!2618718 (Cons!46402 (h!51822 lt!1500997) (++!11852 (t!348545 lt!1500997) (_2!25199 lt!1500990))))))

(declare-fun e!2618717 () Bool)

(declare-fun lt!1501124 () List!46526)

(declare-fun b!4218136 () Bool)

(assert (=> b!4218136 (= e!2618717 (or (not (= (_2!25199 lt!1500990) Nil!46402)) (= lt!1501124 lt!1500997)))))

(declare-fun b!4218133 () Bool)

(assert (=> b!4218133 (= e!2618718 (_2!25199 lt!1500990))))

(declare-fun d!1242481 () Bool)

(assert (=> d!1242481 e!2618717))

(declare-fun res!1733683 () Bool)

(assert (=> d!1242481 (=> (not res!1733683) (not e!2618717))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7280 (List!46526) (InoxSet C!25560))

(assert (=> d!1242481 (= res!1733683 (= (content!7280 lt!1501124) ((_ map or) (content!7280 lt!1500997) (content!7280 (_2!25199 lt!1500990)))))))

(assert (=> d!1242481 (= lt!1501124 e!2618718)))

(declare-fun c!717945 () Bool)

(assert (=> d!1242481 (= c!717945 ((_ is Nil!46402) lt!1500997))))

(assert (=> d!1242481 (= (++!11852 lt!1500997 (_2!25199 lt!1500990)) lt!1501124)))

(declare-fun b!4218135 () Bool)

(declare-fun res!1733684 () Bool)

(assert (=> b!4218135 (=> (not res!1733684) (not e!2618717))))

(assert (=> b!4218135 (= res!1733684 (= (size!34075 lt!1501124) (+ (size!34075 lt!1500997) (size!34075 (_2!25199 lt!1500990)))))))

(assert (= (and d!1242481 c!717945) b!4218133))

(assert (= (and d!1242481 (not c!717945)) b!4218134))

(assert (= (and d!1242481 res!1733683) b!4218135))

(assert (= (and b!4218135 res!1733684) b!4218136))

(declare-fun m!4806583 () Bool)

(assert (=> b!4218134 m!4806583))

(declare-fun m!4806585 () Bool)

(assert (=> d!1242481 m!4806585))

(declare-fun m!4806587 () Bool)

(assert (=> d!1242481 m!4806587))

(declare-fun m!4806589 () Bool)

(assert (=> d!1242481 m!4806589))

(declare-fun m!4806591 () Bool)

(assert (=> b!4218135 m!4806591))

(assert (=> b!4218135 m!4806083))

(declare-fun m!4806593 () Bool)

(assert (=> b!4218135 m!4806593))

(assert (=> b!4217774 d!1242481))

(declare-fun d!1242483 () Bool)

(declare-fun lt!1501125 () Int)

(assert (=> d!1242483 (>= lt!1501125 0)))

(declare-fun e!2618719 () Int)

(assert (=> d!1242483 (= lt!1501125 e!2618719)))

(declare-fun c!717946 () Bool)

(assert (=> d!1242483 (= c!717946 ((_ is Nil!46402) pBis!121))))

(assert (=> d!1242483 (= (size!34075 pBis!121) lt!1501125)))

(declare-fun b!4218137 () Bool)

(assert (=> b!4218137 (= e!2618719 0)))

(declare-fun b!4218138 () Bool)

(assert (=> b!4218138 (= e!2618719 (+ 1 (size!34075 (t!348545 pBis!121))))))

(assert (= (and d!1242483 c!717946) b!4218137))

(assert (= (and d!1242483 (not c!717946)) b!4218138))

(declare-fun m!4806595 () Bool)

(assert (=> b!4218138 m!4806595))

(assert (=> b!4217774 d!1242483))

(declare-fun d!1242485 () Bool)

(declare-fun lt!1501126 () Int)

(assert (=> d!1242485 (>= lt!1501126 0)))

(declare-fun e!2618720 () Int)

(assert (=> d!1242485 (= lt!1501126 e!2618720)))

(declare-fun c!717947 () Bool)

(assert (=> d!1242485 (= c!717947 ((_ is Nil!46402) p!3001))))

(assert (=> d!1242485 (= (size!34075 p!3001) lt!1501126)))

(declare-fun b!4218139 () Bool)

(assert (=> b!4218139 (= e!2618720 0)))

(declare-fun b!4218140 () Bool)

(assert (=> b!4218140 (= e!2618720 (+ 1 (size!34075 (t!348545 p!3001))))))

(assert (= (and d!1242485 c!717947) b!4218139))

(assert (= (and d!1242485 (not c!717947)) b!4218140))

(declare-fun m!4806597 () Bool)

(assert (=> b!4218140 m!4806597))

(assert (=> b!4217774 d!1242485))

(declare-fun d!1242487 () Bool)

(assert (=> d!1242487 (<= (size!34075 pBis!121) (size!34075 lt!1500997))))

(declare-fun lt!1501129 () Unit!65553)

(declare-fun choose!25851 (LexerInterface!7373 List!46527 List!46526 Token!14258 List!46526 List!46526 List!46526 List!46526 Rule!15356 Token!14258) Unit!65553)

(assert (=> d!1242487 (= lt!1501129 (choose!25851 thiss!26544 (t!348546 rules!3967) lt!1500997 (_1!25199 lt!1500990) input!3517 (_2!25199 lt!1500990) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(assert (=> d!1242487 (= (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!36 thiss!26544 (t!348546 rules!3967) lt!1500997 (_1!25199 lt!1500990) input!3517 (_2!25199 lt!1500990) pBis!121 suffixBis!41 rBis!178 tBis!41) lt!1501129)))

(declare-fun bs!597567 () Bool)

(assert (= bs!597567 d!1242487))

(assert (=> bs!597567 m!4806085))

(assert (=> bs!597567 m!4806083))

(declare-fun m!4806599 () Bool)

(assert (=> bs!597567 m!4806599))

(assert (=> b!4217774 d!1242487))

(declare-fun d!1242489 () Bool)

(assert (=> d!1242489 (rulesInvariant!6584 thiss!26544 (t!348546 rules!3967))))

(declare-fun lt!1501132 () Unit!65553)

(declare-fun choose!25852 (LexerInterface!7373 Rule!15356 List!46527) Unit!65553)

(assert (=> d!1242489 (= lt!1501132 (choose!25852 thiss!26544 (h!51823 rules!3967) (t!348546 rules!3967)))))

(assert (=> d!1242489 (rulesInvariant!6584 thiss!26544 (Cons!46403 (h!51823 rules!3967) (t!348546 rules!3967)))))

(assert (=> d!1242489 (= (lemmaInvariantOnRulesThenOnTail!868 thiss!26544 (h!51823 rules!3967) (t!348546 rules!3967)) lt!1501132)))

(declare-fun bs!597568 () Bool)

(assert (= bs!597568 d!1242489))

(assert (=> bs!597568 m!4806099))

(declare-fun m!4806601 () Bool)

(assert (=> bs!597568 m!4806601))

(declare-fun m!4806603 () Bool)

(assert (=> bs!597568 m!4806603))

(assert (=> b!4217774 d!1242489))

(declare-fun d!1242491 () Bool)

(declare-fun list!16789 (Conc!13989) List!46526)

(assert (=> d!1242491 (= (list!16787 (charsOf!5201 (_1!25199 lt!1500990))) (list!16789 (c!717901 (charsOf!5201 (_1!25199 lt!1500990)))))))

(declare-fun bs!597569 () Bool)

(assert (= bs!597569 d!1242491))

(declare-fun m!4806605 () Bool)

(assert (=> bs!597569 m!4806605))

(assert (=> b!4217774 d!1242491))

(declare-fun d!1242493 () Bool)

(assert (=> d!1242493 (isPrefix!4637 lt!1500997 (++!11852 lt!1500997 (_2!25199 lt!1500990)))))

(declare-fun lt!1501135 () Unit!65553)

(declare-fun choose!25853 (List!46526 List!46526) Unit!65553)

(assert (=> d!1242493 (= lt!1501135 (choose!25853 lt!1500997 (_2!25199 lt!1500990)))))

(assert (=> d!1242493 (= (lemmaConcatTwoListThenFirstIsPrefix!3092 lt!1500997 (_2!25199 lt!1500990)) lt!1501135)))

(declare-fun bs!597570 () Bool)

(assert (= bs!597570 d!1242493))

(assert (=> bs!597570 m!4806073))

(assert (=> bs!597570 m!4806073))

(assert (=> bs!597570 m!4806105))

(declare-fun m!4806607 () Bool)

(assert (=> bs!597570 m!4806607))

(assert (=> b!4217774 d!1242493))

(declare-fun d!1242495 () Bool)

(declare-fun lt!1501138 () BalanceConc!27572)

(assert (=> d!1242495 (= (list!16787 lt!1501138) (originalCharacters!8160 (_1!25199 lt!1500990)))))

(assert (=> d!1242495 (= lt!1501138 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))))

(assert (=> d!1242495 (= (charsOf!5201 (_1!25199 lt!1500990)) lt!1501138)))

(declare-fun b_lambda!124277 () Bool)

(assert (=> (not b_lambda!124277) (not d!1242495)))

(declare-fun tb!253265 () Bool)

(declare-fun t!348596 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990))))) t!348596) tb!253265))

(declare-fun b!4218141 () Bool)

(declare-fun e!2618721 () Bool)

(declare-fun tp!1290389 () Bool)

(assert (=> b!4218141 (= e!2618721 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))) tp!1290389))))

(declare-fun result!308700 () Bool)

(assert (=> tb!253265 (= result!308700 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))) e!2618721))))

(assert (= tb!253265 b!4218141))

(declare-fun m!4806609 () Bool)

(assert (=> b!4218141 m!4806609))

(declare-fun m!4806611 () Bool)

(assert (=> tb!253265 m!4806611))

(assert (=> d!1242495 t!348596))

(declare-fun b_and!332481 () Bool)

(assert (= b_and!332437 (and (=> t!348596 result!308700) b_and!332481)))

(declare-fun t!348598 () Bool)

(declare-fun tb!253267 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990))))) t!348598) tb!253267))

(declare-fun result!308702 () Bool)

(assert (= result!308702 result!308700))

(assert (=> d!1242495 t!348598))

(declare-fun b_and!332483 () Bool)

(assert (= b_and!332439 (and (=> t!348598 result!308702) b_and!332483)))

(declare-fun t!348600 () Bool)

(declare-fun tb!253269 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990))))) t!348600) tb!253269))

(declare-fun result!308704 () Bool)

(assert (= result!308704 result!308700))

(assert (=> d!1242495 t!348600))

(declare-fun b_and!332485 () Bool)

(assert (= b_and!332441 (and (=> t!348600 result!308704) b_and!332485)))

(declare-fun t!348602 () Bool)

(declare-fun tb!253271 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990))))) t!348602) tb!253271))

(declare-fun result!308706 () Bool)

(assert (= result!308706 result!308700))

(assert (=> d!1242495 t!348602))

(declare-fun b_and!332487 () Bool)

(assert (= b_and!332443 (and (=> t!348602 result!308706) b_and!332487)))

(declare-fun m!4806613 () Bool)

(assert (=> d!1242495 m!4806613))

(declare-fun m!4806615 () Bool)

(assert (=> d!1242495 m!4806615))

(assert (=> b!4217774 d!1242495))

(declare-fun d!1242497 () Bool)

(assert (=> d!1242497 (= (inv!61046 (tag!8642 (rule!10908 t!8364))) (= (mod (str.len (value!242201 (tag!8642 (rule!10908 t!8364)))) 2) 0))))

(assert (=> b!4217759 d!1242497))

(declare-fun d!1242499 () Bool)

(declare-fun res!1733685 () Bool)

(declare-fun e!2618722 () Bool)

(assert (=> d!1242499 (=> (not res!1733685) (not e!2618722))))

(assert (=> d!1242499 (= res!1733685 (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 t!8364)))))))

(assert (=> d!1242499 (= (inv!61049 (transformation!7778 (rule!10908 t!8364))) e!2618722)))

(declare-fun b!4218142 () Bool)

(assert (=> b!4218142 (= e!2618722 (equivClasses!3280 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 t!8364)))))))

(assert (= (and d!1242499 res!1733685) b!4218142))

(declare-fun m!4806617 () Bool)

(assert (=> d!1242499 m!4806617))

(declare-fun m!4806619 () Bool)

(assert (=> b!4218142 m!4806619))

(assert (=> b!4217759 d!1242499))

(declare-fun b!4218146 () Bool)

(declare-fun e!2618723 () Bool)

(assert (=> b!4218146 (= e!2618723 (>= (size!34075 input!3517) (size!34075 p!3001)))))

(declare-fun b!4218144 () Bool)

(declare-fun res!1733687 () Bool)

(declare-fun e!2618724 () Bool)

(assert (=> b!4218144 (=> (not res!1733687) (not e!2618724))))

(assert (=> b!4218144 (= res!1733687 (= (head!8950 p!3001) (head!8950 input!3517)))))

(declare-fun b!4218145 () Bool)

(assert (=> b!4218145 (= e!2618724 (isPrefix!4637 (tail!6797 p!3001) (tail!6797 input!3517)))))

(declare-fun b!4218143 () Bool)

(declare-fun e!2618725 () Bool)

(assert (=> b!4218143 (= e!2618725 e!2618724)))

(declare-fun res!1733689 () Bool)

(assert (=> b!4218143 (=> (not res!1733689) (not e!2618724))))

(assert (=> b!4218143 (= res!1733689 (not ((_ is Nil!46402) input!3517)))))

(declare-fun d!1242501 () Bool)

(assert (=> d!1242501 e!2618723))

(declare-fun res!1733688 () Bool)

(assert (=> d!1242501 (=> res!1733688 e!2618723)))

(declare-fun lt!1501139 () Bool)

(assert (=> d!1242501 (= res!1733688 (not lt!1501139))))

(assert (=> d!1242501 (= lt!1501139 e!2618725)))

(declare-fun res!1733686 () Bool)

(assert (=> d!1242501 (=> res!1733686 e!2618725)))

(assert (=> d!1242501 (= res!1733686 ((_ is Nil!46402) p!3001))))

(assert (=> d!1242501 (= (isPrefix!4637 p!3001 input!3517) lt!1501139)))

(assert (= (and d!1242501 (not res!1733686)) b!4218143))

(assert (= (and b!4218143 res!1733689) b!4218144))

(assert (= (and b!4218144 res!1733687) b!4218145))

(assert (= (and d!1242501 (not res!1733688)) b!4218146))

(assert (=> b!4218146 m!4806331))

(assert (=> b!4218146 m!4806075))

(declare-fun m!4806621 () Bool)

(assert (=> b!4218144 m!4806621))

(assert (=> b!4218144 m!4806417))

(declare-fun m!4806623 () Bool)

(assert (=> b!4218145 m!4806623))

(assert (=> b!4218145 m!4806419))

(assert (=> b!4218145 m!4806623))

(assert (=> b!4218145 m!4806419))

(declare-fun m!4806625 () Bool)

(assert (=> b!4218145 m!4806625))

(assert (=> b!4217761 d!1242501))

(declare-fun d!1242503 () Bool)

(assert (=> d!1242503 (= (inv!61046 (tag!8642 rBis!178)) (= (mod (str.len (value!242201 (tag!8642 rBis!178))) 2) 0))))

(assert (=> b!4217750 d!1242503))

(declare-fun d!1242505 () Bool)

(declare-fun res!1733690 () Bool)

(declare-fun e!2618726 () Bool)

(assert (=> d!1242505 (=> (not res!1733690) (not e!2618726))))

(assert (=> d!1242505 (= res!1733690 (semiInverseModEq!3381 (toChars!10357 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 rBis!178))))))

(assert (=> d!1242505 (= (inv!61049 (transformation!7778 rBis!178)) e!2618726)))

(declare-fun b!4218147 () Bool)

(assert (=> b!4218147 (= e!2618726 (equivClasses!3280 (toChars!10357 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 rBis!178))))))

(assert (= (and d!1242505 res!1733690) b!4218147))

(declare-fun m!4806627 () Bool)

(assert (=> d!1242505 m!4806627))

(declare-fun m!4806629 () Bool)

(assert (=> b!4218147 m!4806629))

(assert (=> b!4217750 d!1242505))

(declare-fun b!4218148 () Bool)

(declare-fun res!1733691 () Bool)

(declare-fun e!2618728 () Bool)

(assert (=> b!4218148 (=> (not res!1733691) (not e!2618728))))

(declare-fun lt!1501140 () Option!9966)

(assert (=> b!4218148 (= res!1733691 (= (value!242202 (_1!25199 (get!15101 lt!1501140))) (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))))))))

(declare-fun b!4218149 () Bool)

(declare-fun e!2618729 () Bool)

(assert (=> b!4218149 (= e!2618729 (matchR!6380 (regex!7778 (h!51823 rules!3967)) (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun b!4218150 () Bool)

(declare-fun res!1733692 () Bool)

(assert (=> b!4218150 (=> (not res!1733692) (not e!2618728))))

(assert (=> b!4218150 (= res!1733692 (< (size!34075 (_2!25199 (get!15101 lt!1501140))) (size!34075 input!3517)))))

(declare-fun d!1242507 () Bool)

(declare-fun e!2618730 () Bool)

(assert (=> d!1242507 e!2618730))

(declare-fun res!1733694 () Bool)

(assert (=> d!1242507 (=> res!1733694 e!2618730)))

(assert (=> d!1242507 (= res!1733694 (isEmpty!27491 lt!1501140))))

(declare-fun e!2618727 () Option!9966)

(assert (=> d!1242507 (= lt!1501140 e!2618727)))

(declare-fun c!717948 () Bool)

(declare-fun lt!1501143 () tuple2!44134)

(assert (=> d!1242507 (= c!717948 (isEmpty!27493 (_1!25201 lt!1501143)))))

(assert (=> d!1242507 (= lt!1501143 (findLongestMatch!1574 (regex!7778 (h!51823 rules!3967)) input!3517))))

(assert (=> d!1242507 (ruleValid!3490 thiss!26544 (h!51823 rules!3967))))

(assert (=> d!1242507 (= (maxPrefixOneRule!3368 thiss!26544 (h!51823 rules!3967) input!3517) lt!1501140)))

(declare-fun b!4218151 () Bool)

(assert (=> b!4218151 (= e!2618728 (= (size!34074 (_1!25199 (get!15101 lt!1501140))) (size!34075 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140))))))))

(declare-fun b!4218152 () Bool)

(declare-fun res!1733697 () Bool)

(assert (=> b!4218152 (=> (not res!1733697) (not e!2618728))))

(assert (=> b!4218152 (= res!1733697 (= (rule!10908 (_1!25199 (get!15101 lt!1501140))) (h!51823 rules!3967)))))

(declare-fun b!4218153 () Bool)

(assert (=> b!4218153 (= e!2618730 e!2618728)))

(declare-fun res!1733693 () Bool)

(assert (=> b!4218153 (=> (not res!1733693) (not e!2618728))))

(assert (=> b!4218153 (= res!1733693 (matchR!6380 (regex!7778 (h!51823 rules!3967)) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))))))

(declare-fun b!4218154 () Bool)

(assert (=> b!4218154 (= e!2618727 None!9965)))

(declare-fun b!4218155 () Bool)

(declare-fun res!1733696 () Bool)

(assert (=> b!4218155 (=> (not res!1733696) (not e!2618728))))

(assert (=> b!4218155 (= res!1733696 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))) (_2!25199 (get!15101 lt!1501140))) input!3517))))

(declare-fun b!4218156 () Bool)

(assert (=> b!4218156 (= e!2618727 (Some!9965 (tuple2!44131 (Token!14259 (apply!10701 (transformation!7778 (h!51823 rules!3967)) (seqFromList!5761 (_1!25201 lt!1501143))) (h!51823 rules!3967) (size!34077 (seqFromList!5761 (_1!25201 lt!1501143))) (_1!25201 lt!1501143)) (_2!25201 lt!1501143))))))

(declare-fun lt!1501141 () Unit!65553)

(assert (=> b!4218156 (= lt!1501141 (longestMatchIsAcceptedByMatchOrIsEmpty!1634 (regex!7778 (h!51823 rules!3967)) input!3517))))

(declare-fun res!1733695 () Bool)

(assert (=> b!4218156 (= res!1733695 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> b!4218156 (=> res!1733695 e!2618729)))

(assert (=> b!4218156 e!2618729))

(declare-fun lt!1501144 () Unit!65553)

(assert (=> b!4218156 (= lt!1501144 lt!1501141)))

(declare-fun lt!1501142 () Unit!65553)

(assert (=> b!4218156 (= lt!1501142 (lemmaSemiInverse!2502 (transformation!7778 (h!51823 rules!3967)) (seqFromList!5761 (_1!25201 lt!1501143))))))

(assert (= (and d!1242507 c!717948) b!4218154))

(assert (= (and d!1242507 (not c!717948)) b!4218156))

(assert (= (and b!4218156 (not res!1733695)) b!4218149))

(assert (= (and d!1242507 (not res!1733694)) b!4218153))

(assert (= (and b!4218153 res!1733693) b!4218155))

(assert (= (and b!4218155 res!1733696) b!4218150))

(assert (= (and b!4218150 res!1733692) b!4218152))

(assert (= (and b!4218152 res!1733697) b!4218148))

(assert (= (and b!4218148 res!1733691) b!4218151))

(declare-fun m!4806631 () Bool)

(assert (=> b!4218152 m!4806631))

(assert (=> b!4218149 m!4806329))

(assert (=> b!4218149 m!4806331))

(assert (=> b!4218149 m!4806329))

(assert (=> b!4218149 m!4806331))

(declare-fun m!4806633 () Bool)

(assert (=> b!4218149 m!4806633))

(declare-fun m!4806635 () Bool)

(assert (=> b!4218149 m!4806635))

(assert (=> b!4218150 m!4806631))

(declare-fun m!4806637 () Bool)

(assert (=> b!4218150 m!4806637))

(assert (=> b!4218150 m!4806331))

(assert (=> b!4218155 m!4806631))

(declare-fun m!4806639 () Bool)

(assert (=> b!4218155 m!4806639))

(assert (=> b!4218155 m!4806639))

(declare-fun m!4806641 () Bool)

(assert (=> b!4218155 m!4806641))

(assert (=> b!4218155 m!4806641))

(declare-fun m!4806643 () Bool)

(assert (=> b!4218155 m!4806643))

(declare-fun m!4806645 () Bool)

(assert (=> b!4218156 m!4806645))

(declare-fun m!4806647 () Bool)

(assert (=> b!4218156 m!4806647))

(declare-fun m!4806649 () Bool)

(assert (=> b!4218156 m!4806649))

(declare-fun m!4806651 () Bool)

(assert (=> b!4218156 m!4806651))

(assert (=> b!4218156 m!4806331))

(assert (=> b!4218156 m!4806649))

(declare-fun m!4806653 () Bool)

(assert (=> b!4218156 m!4806653))

(assert (=> b!4218156 m!4806649))

(assert (=> b!4218156 m!4806329))

(assert (=> b!4218156 m!4806649))

(declare-fun m!4806655 () Bool)

(assert (=> b!4218156 m!4806655))

(assert (=> b!4218156 m!4806329))

(assert (=> b!4218156 m!4806331))

(assert (=> b!4218156 m!4806633))

(assert (=> b!4218148 m!4806631))

(declare-fun m!4806657 () Bool)

(assert (=> b!4218148 m!4806657))

(assert (=> b!4218148 m!4806657))

(declare-fun m!4806659 () Bool)

(assert (=> b!4218148 m!4806659))

(assert (=> b!4218153 m!4806631))

(assert (=> b!4218153 m!4806639))

(assert (=> b!4218153 m!4806639))

(assert (=> b!4218153 m!4806641))

(assert (=> b!4218153 m!4806641))

(declare-fun m!4806661 () Bool)

(assert (=> b!4218153 m!4806661))

(declare-fun m!4806663 () Bool)

(assert (=> d!1242507 m!4806663))

(declare-fun m!4806665 () Bool)

(assert (=> d!1242507 m!4806665))

(declare-fun m!4806667 () Bool)

(assert (=> d!1242507 m!4806667))

(declare-fun m!4806669 () Bool)

(assert (=> d!1242507 m!4806669))

(assert (=> b!4218151 m!4806631))

(declare-fun m!4806671 () Bool)

(assert (=> b!4218151 m!4806671))

(assert (=> b!4217760 d!1242507))

(declare-fun b!4218158 () Bool)

(declare-fun e!2618732 () List!46526)

(assert (=> b!4218158 (= e!2618732 (Cons!46402 (h!51822 p!3001) (++!11852 (t!348545 p!3001) suffix!1557)))))

(declare-fun b!4218160 () Bool)

(declare-fun e!2618731 () Bool)

(declare-fun lt!1501145 () List!46526)

(assert (=> b!4218160 (= e!2618731 (or (not (= suffix!1557 Nil!46402)) (= lt!1501145 p!3001)))))

(declare-fun b!4218157 () Bool)

(assert (=> b!4218157 (= e!2618732 suffix!1557)))

(declare-fun d!1242509 () Bool)

(assert (=> d!1242509 e!2618731))

(declare-fun res!1733698 () Bool)

(assert (=> d!1242509 (=> (not res!1733698) (not e!2618731))))

(assert (=> d!1242509 (= res!1733698 (= (content!7280 lt!1501145) ((_ map or) (content!7280 p!3001) (content!7280 suffix!1557))))))

(assert (=> d!1242509 (= lt!1501145 e!2618732)))

(declare-fun c!717949 () Bool)

(assert (=> d!1242509 (= c!717949 ((_ is Nil!46402) p!3001))))

(assert (=> d!1242509 (= (++!11852 p!3001 suffix!1557) lt!1501145)))

(declare-fun b!4218159 () Bool)

(declare-fun res!1733699 () Bool)

(assert (=> b!4218159 (=> (not res!1733699) (not e!2618731))))

(assert (=> b!4218159 (= res!1733699 (= (size!34075 lt!1501145) (+ (size!34075 p!3001) (size!34075 suffix!1557))))))

(assert (= (and d!1242509 c!717949) b!4218157))

(assert (= (and d!1242509 (not c!717949)) b!4218158))

(assert (= (and d!1242509 res!1733698) b!4218159))

(assert (= (and b!4218159 res!1733699) b!4218160))

(declare-fun m!4806673 () Bool)

(assert (=> b!4218158 m!4806673))

(declare-fun m!4806675 () Bool)

(assert (=> d!1242509 m!4806675))

(declare-fun m!4806677 () Bool)

(assert (=> d!1242509 m!4806677))

(declare-fun m!4806679 () Bool)

(assert (=> d!1242509 m!4806679))

(declare-fun m!4806681 () Bool)

(assert (=> b!4218159 m!4806681))

(assert (=> b!4218159 m!4806075))

(declare-fun m!4806683 () Bool)

(assert (=> b!4218159 m!4806683))

(assert (=> b!4217756 d!1242509))

(declare-fun d!1242511 () Bool)

(assert (=> d!1242511 (= (list!16787 (charsOf!5201 tBis!41)) (list!16789 (c!717901 (charsOf!5201 tBis!41))))))

(declare-fun bs!597571 () Bool)

(assert (= bs!597571 d!1242511))

(declare-fun m!4806685 () Bool)

(assert (=> bs!597571 m!4806685))

(assert (=> b!4217758 d!1242511))

(declare-fun d!1242513 () Bool)

(declare-fun lt!1501146 () BalanceConc!27572)

(assert (=> d!1242513 (= (list!16787 lt!1501146) (originalCharacters!8160 tBis!41))))

(assert (=> d!1242513 (= lt!1501146 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))

(assert (=> d!1242513 (= (charsOf!5201 tBis!41) lt!1501146)))

(declare-fun b_lambda!124279 () Bool)

(assert (=> (not b_lambda!124279) (not d!1242513)))

(assert (=> d!1242513 t!348548))

(declare-fun b_and!332489 () Bool)

(assert (= b_and!332481 (and (=> t!348548 result!308644) b_and!332489)))

(assert (=> d!1242513 t!348550))

(declare-fun b_and!332491 () Bool)

(assert (= b_and!332483 (and (=> t!348550 result!308648) b_and!332491)))

(assert (=> d!1242513 t!348552))

(declare-fun b_and!332493 () Bool)

(assert (= b_and!332485 (and (=> t!348552 result!308650) b_and!332493)))

(assert (=> d!1242513 t!348554))

(declare-fun b_and!332495 () Bool)

(assert (= b_and!332487 (and (=> t!348554 result!308652) b_and!332495)))

(declare-fun m!4806687 () Bool)

(assert (=> d!1242513 m!4806687))

(assert (=> d!1242513 m!4806151))

(assert (=> b!4217758 d!1242513))

(declare-fun b!4218161 () Bool)

(declare-fun res!1733705 () Bool)

(declare-fun e!2618735 () Bool)

(assert (=> b!4218161 (=> (not res!1733705) (not e!2618735))))

(declare-fun lt!1501147 () Option!9966)

(assert (=> b!4218161 (= res!1733705 (matchR!6380 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))))))

(declare-fun b!4218162 () Bool)

(declare-fun res!1733704 () Bool)

(assert (=> b!4218162 (=> (not res!1733704) (not e!2618735))))

(assert (=> b!4218162 (= res!1733704 (< (size!34075 (_2!25199 (get!15101 lt!1501147))) (size!34075 input!3517)))))

(declare-fun b!4218163 () Bool)

(declare-fun e!2618733 () Bool)

(assert (=> b!4218163 (= e!2618733 e!2618735)))

(declare-fun res!1733702 () Bool)

(assert (=> b!4218163 (=> (not res!1733702) (not e!2618735))))

(assert (=> b!4218163 (= res!1733702 (isDefined!7401 lt!1501147))))

(declare-fun b!4218164 () Bool)

(declare-fun e!2618734 () Option!9966)

(declare-fun lt!1501150 () Option!9966)

(declare-fun lt!1501148 () Option!9966)

(assert (=> b!4218164 (= e!2618734 (ite (and ((_ is None!9965) lt!1501150) ((_ is None!9965) lt!1501148)) None!9965 (ite ((_ is None!9965) lt!1501148) lt!1501150 (ite ((_ is None!9965) lt!1501150) lt!1501148 (ite (>= (size!34074 (_1!25199 (v!40851 lt!1501150))) (size!34074 (_1!25199 (v!40851 lt!1501148)))) lt!1501150 lt!1501148)))))))

(declare-fun call!293038 () Option!9966)

(assert (=> b!4218164 (= lt!1501150 call!293038)))

(assert (=> b!4218164 (= lt!1501148 (maxPrefix!4413 thiss!26544 (t!348546 rules!3967) input!3517))))

(declare-fun b!4218165 () Bool)

(declare-fun res!1733700 () Bool)

(assert (=> b!4218165 (=> (not res!1733700) (not e!2618735))))

(assert (=> b!4218165 (= res!1733700 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147)))))))

(declare-fun b!4218166 () Bool)

(declare-fun res!1733701 () Bool)

(assert (=> b!4218166 (=> (not res!1733701) (not e!2618735))))

(assert (=> b!4218166 (= res!1733701 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))) (_2!25199 (get!15101 lt!1501147))) input!3517))))

(declare-fun b!4218167 () Bool)

(assert (=> b!4218167 (= e!2618735 (contains!9599 rules!3967 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))

(declare-fun b!4218168 () Bool)

(assert (=> b!4218168 (= e!2618734 call!293038)))

(declare-fun b!4218169 () Bool)

(declare-fun res!1733703 () Bool)

(assert (=> b!4218169 (=> (not res!1733703) (not e!2618735))))

(assert (=> b!4218169 (= res!1733703 (= (value!242202 (_1!25199 (get!15101 lt!1501147))) (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147)))))))))

(declare-fun d!1242515 () Bool)

(assert (=> d!1242515 e!2618733))

(declare-fun res!1733706 () Bool)

(assert (=> d!1242515 (=> res!1733706 e!2618733)))

(assert (=> d!1242515 (= res!1733706 (isEmpty!27491 lt!1501147))))

(assert (=> d!1242515 (= lt!1501147 e!2618734)))

(declare-fun c!717950 () Bool)

(assert (=> d!1242515 (= c!717950 (and ((_ is Cons!46403) rules!3967) ((_ is Nil!46403) (t!348546 rules!3967))))))

(declare-fun lt!1501149 () Unit!65553)

(declare-fun lt!1501151 () Unit!65553)

(assert (=> d!1242515 (= lt!1501149 lt!1501151)))

(assert (=> d!1242515 (isPrefix!4637 input!3517 input!3517)))

(assert (=> d!1242515 (= lt!1501151 (lemmaIsPrefixRefl!3054 input!3517 input!3517))))

(assert (=> d!1242515 (rulesValidInductive!2892 thiss!26544 rules!3967)))

(assert (=> d!1242515 (= (maxPrefix!4413 thiss!26544 rules!3967 input!3517) lt!1501147)))

(declare-fun bm!293033 () Bool)

(assert (=> bm!293033 (= call!293038 (maxPrefixOneRule!3368 thiss!26544 (h!51823 rules!3967) input!3517))))

(assert (= (and d!1242515 c!717950) b!4218168))

(assert (= (and d!1242515 (not c!717950)) b!4218164))

(assert (= (or b!4218168 b!4218164) bm!293033))

(assert (= (and d!1242515 (not res!1733706)) b!4218163))

(assert (= (and b!4218163 res!1733702) b!4218165))

(assert (= (and b!4218165 res!1733700) b!4218162))

(assert (= (and b!4218162 res!1733704) b!4218166))

(assert (= (and b!4218166 res!1733701) b!4218169))

(assert (= (and b!4218169 res!1733703) b!4218161))

(assert (= (and b!4218161 res!1733705) b!4218167))

(declare-fun m!4806689 () Bool)

(assert (=> b!4218169 m!4806689))

(declare-fun m!4806691 () Bool)

(assert (=> b!4218169 m!4806691))

(assert (=> b!4218169 m!4806691))

(declare-fun m!4806693 () Bool)

(assert (=> b!4218169 m!4806693))

(assert (=> b!4218164 m!4806077))

(declare-fun m!4806695 () Bool)

(assert (=> d!1242515 m!4806695))

(assert (=> d!1242515 m!4806069))

(assert (=> d!1242515 m!4806071))

(declare-fun m!4806697 () Bool)

(assert (=> d!1242515 m!4806697))

(declare-fun m!4806699 () Bool)

(assert (=> b!4218163 m!4806699))

(assert (=> bm!293033 m!4806117))

(assert (=> b!4218165 m!4806689))

(declare-fun m!4806701 () Bool)

(assert (=> b!4218165 m!4806701))

(assert (=> b!4218165 m!4806701))

(declare-fun m!4806703 () Bool)

(assert (=> b!4218165 m!4806703))

(assert (=> b!4218162 m!4806689))

(declare-fun m!4806705 () Bool)

(assert (=> b!4218162 m!4806705))

(assert (=> b!4218162 m!4806331))

(assert (=> b!4218166 m!4806689))

(assert (=> b!4218166 m!4806701))

(assert (=> b!4218166 m!4806701))

(assert (=> b!4218166 m!4806703))

(assert (=> b!4218166 m!4806703))

(declare-fun m!4806707 () Bool)

(assert (=> b!4218166 m!4806707))

(assert (=> b!4218161 m!4806689))

(assert (=> b!4218161 m!4806701))

(assert (=> b!4218161 m!4806701))

(assert (=> b!4218161 m!4806703))

(assert (=> b!4218161 m!4806703))

(declare-fun m!4806709 () Bool)

(assert (=> b!4218161 m!4806709))

(assert (=> b!4218167 m!4806689))

(declare-fun m!4806711 () Bool)

(assert (=> b!4218167 m!4806711))

(assert (=> b!4217747 d!1242515))

(declare-fun b!4218171 () Bool)

(declare-fun e!2618737 () List!46526)

(assert (=> b!4218171 (= e!2618737 (Cons!46402 (h!51822 pBis!121) (++!11852 (t!348545 pBis!121) suffixBis!41)))))

(declare-fun e!2618736 () Bool)

(declare-fun b!4218173 () Bool)

(declare-fun lt!1501152 () List!46526)

(assert (=> b!4218173 (= e!2618736 (or (not (= suffixBis!41 Nil!46402)) (= lt!1501152 pBis!121)))))

(declare-fun b!4218170 () Bool)

(assert (=> b!4218170 (= e!2618737 suffixBis!41)))

(declare-fun d!1242517 () Bool)

(assert (=> d!1242517 e!2618736))

(declare-fun res!1733707 () Bool)

(assert (=> d!1242517 (=> (not res!1733707) (not e!2618736))))

(assert (=> d!1242517 (= res!1733707 (= (content!7280 lt!1501152) ((_ map or) (content!7280 pBis!121) (content!7280 suffixBis!41))))))

(assert (=> d!1242517 (= lt!1501152 e!2618737)))

(declare-fun c!717951 () Bool)

(assert (=> d!1242517 (= c!717951 ((_ is Nil!46402) pBis!121))))

(assert (=> d!1242517 (= (++!11852 pBis!121 suffixBis!41) lt!1501152)))

(declare-fun b!4218172 () Bool)

(declare-fun res!1733708 () Bool)

(assert (=> b!4218172 (=> (not res!1733708) (not e!2618736))))

(assert (=> b!4218172 (= res!1733708 (= (size!34075 lt!1501152) (+ (size!34075 pBis!121) (size!34075 suffixBis!41))))))

(assert (= (and d!1242517 c!717951) b!4218170))

(assert (= (and d!1242517 (not c!717951)) b!4218171))

(assert (= (and d!1242517 res!1733707) b!4218172))

(assert (= (and b!4218172 res!1733708) b!4218173))

(declare-fun m!4806713 () Bool)

(assert (=> b!4218171 m!4806713))

(declare-fun m!4806715 () Bool)

(assert (=> d!1242517 m!4806715))

(declare-fun m!4806717 () Bool)

(assert (=> d!1242517 m!4806717))

(declare-fun m!4806719 () Bool)

(assert (=> d!1242517 m!4806719))

(declare-fun m!4806721 () Bool)

(assert (=> b!4218172 m!4806721))

(assert (=> b!4218172 m!4806085))

(declare-fun m!4806723 () Bool)

(assert (=> b!4218172 m!4806723))

(assert (=> b!4217765 d!1242517))

(declare-fun b!4218174 () Bool)

(declare-fun e!2618738 () Bool)

(declare-fun e!2618739 () Bool)

(assert (=> b!4218174 (= e!2618738 e!2618739)))

(declare-fun c!717953 () Bool)

(assert (=> b!4218174 (= c!717953 ((_ is IntegerValue!24025) (value!242202 tBis!41)))))

(declare-fun b!4218175 () Bool)

(declare-fun res!1733709 () Bool)

(declare-fun e!2618740 () Bool)

(assert (=> b!4218175 (=> res!1733709 e!2618740)))

(assert (=> b!4218175 (= res!1733709 (not ((_ is IntegerValue!24026) (value!242202 tBis!41))))))

(assert (=> b!4218175 (= e!2618739 e!2618740)))

(declare-fun b!4218176 () Bool)

(assert (=> b!4218176 (= e!2618740 (inv!15 (value!242202 tBis!41)))))

(declare-fun b!4218177 () Bool)

(assert (=> b!4218177 (= e!2618739 (inv!17 (value!242202 tBis!41)))))

(declare-fun b!4218178 () Bool)

(assert (=> b!4218178 (= e!2618738 (inv!16 (value!242202 tBis!41)))))

(declare-fun d!1242519 () Bool)

(declare-fun c!717952 () Bool)

(assert (=> d!1242519 (= c!717952 ((_ is IntegerValue!24024) (value!242202 tBis!41)))))

(assert (=> d!1242519 (= (inv!21 (value!242202 tBis!41)) e!2618738)))

(assert (= (and d!1242519 c!717952) b!4218178))

(assert (= (and d!1242519 (not c!717952)) b!4218174))

(assert (= (and b!4218174 c!717953) b!4218177))

(assert (= (and b!4218174 (not c!717953)) b!4218175))

(assert (= (and b!4218175 (not res!1733709)) b!4218176))

(declare-fun m!4806725 () Bool)

(assert (=> b!4218176 m!4806725))

(declare-fun m!4806727 () Bool)

(assert (=> b!4218177 m!4806727))

(declare-fun m!4806729 () Bool)

(assert (=> b!4218178 m!4806729))

(assert (=> b!4217754 d!1242519))

(declare-fun d!1242521 () Bool)

(assert (=> d!1242521 (= (inv!61046 (tag!8642 (h!51823 rules!3967))) (= (mod (str.len (value!242201 (tag!8642 (h!51823 rules!3967)))) 2) 0))))

(assert (=> b!4217764 d!1242521))

(declare-fun d!1242523 () Bool)

(declare-fun res!1733710 () Bool)

(declare-fun e!2618741 () Bool)

(assert (=> d!1242523 (=> (not res!1733710) (not e!2618741))))

(assert (=> d!1242523 (= res!1733710 (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))))))

(assert (=> d!1242523 (= (inv!61049 (transformation!7778 (h!51823 rules!3967))) e!2618741)))

(declare-fun b!4218179 () Bool)

(assert (=> b!4218179 (= e!2618741 (equivClasses!3280 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))))))

(assert (= (and d!1242523 res!1733710) b!4218179))

(declare-fun m!4806731 () Bool)

(assert (=> d!1242523 m!4806731))

(declare-fun m!4806733 () Bool)

(assert (=> b!4218179 m!4806733))

(assert (=> b!4217764 d!1242523))

(declare-fun d!1242525 () Bool)

(declare-fun res!1733711 () Bool)

(declare-fun e!2618742 () Bool)

(assert (=> d!1242525 (=> (not res!1733711) (not e!2618742))))

(assert (=> d!1242525 (= res!1733711 (rulesValid!3049 thiss!26544 rules!3967))))

(assert (=> d!1242525 (= (rulesInvariant!6584 thiss!26544 rules!3967) e!2618742)))

(declare-fun b!4218180 () Bool)

(assert (=> b!4218180 (= e!2618742 (noDuplicateTag!3210 thiss!26544 rules!3967 Nil!46404))))

(assert (= (and d!1242525 res!1733711) b!4218180))

(declare-fun m!4806735 () Bool)

(assert (=> d!1242525 m!4806735))

(declare-fun m!4806737 () Bool)

(assert (=> b!4218180 m!4806737))

(assert (=> b!4217745 d!1242525))

(declare-fun d!1242527 () Bool)

(declare-fun lt!1501155 () Bool)

(declare-fun content!7281 (List!46527) (InoxSet Rule!15356))

(assert (=> d!1242527 (= lt!1501155 (select (content!7281 rules!3967) rBis!178))))

(declare-fun e!2618747 () Bool)

(assert (=> d!1242527 (= lt!1501155 e!2618747)))

(declare-fun res!1733717 () Bool)

(assert (=> d!1242527 (=> (not res!1733717) (not e!2618747))))

(assert (=> d!1242527 (= res!1733717 ((_ is Cons!46403) rules!3967))))

(assert (=> d!1242527 (= (contains!9599 rules!3967 rBis!178) lt!1501155)))

(declare-fun b!4218185 () Bool)

(declare-fun e!2618748 () Bool)

(assert (=> b!4218185 (= e!2618747 e!2618748)))

(declare-fun res!1733716 () Bool)

(assert (=> b!4218185 (=> res!1733716 e!2618748)))

(assert (=> b!4218185 (= res!1733716 (= (h!51823 rules!3967) rBis!178))))

(declare-fun b!4218186 () Bool)

(assert (=> b!4218186 (= e!2618748 (contains!9599 (t!348546 rules!3967) rBis!178))))

(assert (= (and d!1242527 res!1733717) b!4218185))

(assert (= (and b!4218185 (not res!1733716)) b!4218186))

(declare-fun m!4806739 () Bool)

(assert (=> d!1242527 m!4806739))

(declare-fun m!4806741 () Bool)

(assert (=> d!1242527 m!4806741))

(declare-fun m!4806743 () Bool)

(assert (=> b!4218186 m!4806743))

(assert (=> b!4217766 d!1242527))

(declare-fun d!1242529 () Bool)

(assert (=> d!1242529 (= (isEmpty!27490 rules!3967) ((_ is Nil!46403) rules!3967))))

(assert (=> b!4217744 d!1242529))

(declare-fun b!4218190 () Bool)

(declare-fun e!2618749 () Bool)

(assert (=> b!4218190 (= e!2618749 (>= (size!34075 input!3517) (size!34075 pBis!121)))))

(declare-fun b!4218188 () Bool)

(declare-fun res!1733719 () Bool)

(declare-fun e!2618750 () Bool)

(assert (=> b!4218188 (=> (not res!1733719) (not e!2618750))))

(assert (=> b!4218188 (= res!1733719 (= (head!8950 pBis!121) (head!8950 input!3517)))))

(declare-fun b!4218189 () Bool)

(assert (=> b!4218189 (= e!2618750 (isPrefix!4637 (tail!6797 pBis!121) (tail!6797 input!3517)))))

(declare-fun b!4218187 () Bool)

(declare-fun e!2618751 () Bool)

(assert (=> b!4218187 (= e!2618751 e!2618750)))

(declare-fun res!1733721 () Bool)

(assert (=> b!4218187 (=> (not res!1733721) (not e!2618750))))

(assert (=> b!4218187 (= res!1733721 (not ((_ is Nil!46402) input!3517)))))

(declare-fun d!1242531 () Bool)

(assert (=> d!1242531 e!2618749))

(declare-fun res!1733720 () Bool)

(assert (=> d!1242531 (=> res!1733720 e!2618749)))

(declare-fun lt!1501156 () Bool)

(assert (=> d!1242531 (= res!1733720 (not lt!1501156))))

(assert (=> d!1242531 (= lt!1501156 e!2618751)))

(declare-fun res!1733718 () Bool)

(assert (=> d!1242531 (=> res!1733718 e!2618751)))

(assert (=> d!1242531 (= res!1733718 ((_ is Nil!46402) pBis!121))))

(assert (=> d!1242531 (= (isPrefix!4637 pBis!121 input!3517) lt!1501156)))

(assert (= (and d!1242531 (not res!1733718)) b!4218187))

(assert (= (and b!4218187 res!1733721) b!4218188))

(assert (= (and b!4218188 res!1733719) b!4218189))

(assert (= (and d!1242531 (not res!1733720)) b!4218190))

(assert (=> b!4218190 m!4806331))

(assert (=> b!4218190 m!4806085))

(declare-fun m!4806745 () Bool)

(assert (=> b!4218188 m!4806745))

(assert (=> b!4218188 m!4806417))

(declare-fun m!4806747 () Bool)

(assert (=> b!4218189 m!4806747))

(assert (=> b!4218189 m!4806419))

(assert (=> b!4218189 m!4806747))

(assert (=> b!4218189 m!4806419))

(declare-fun m!4806749 () Bool)

(assert (=> b!4218189 m!4806749))

(assert (=> b!4217776 d!1242531))

(declare-fun b!4218195 () Bool)

(declare-fun e!2618754 () Bool)

(declare-fun tp!1290392 () Bool)

(assert (=> b!4218195 (= e!2618754 (and tp_is_empty!22333 tp!1290392))))

(assert (=> b!4217773 (= tp!1290318 e!2618754)))

(assert (= (and b!4217773 ((_ is Cons!46402) (originalCharacters!8160 t!8364))) b!4218195))

(declare-fun b!4218209 () Bool)

(declare-fun e!2618757 () Bool)

(declare-fun tp!1290404 () Bool)

(declare-fun tp!1290406 () Bool)

(assert (=> b!4218209 (= e!2618757 (and tp!1290404 tp!1290406))))

(declare-fun b!4218207 () Bool)

(declare-fun tp!1290407 () Bool)

(declare-fun tp!1290405 () Bool)

(assert (=> b!4218207 (= e!2618757 (and tp!1290407 tp!1290405))))

(declare-fun b!4218206 () Bool)

(assert (=> b!4218206 (= e!2618757 tp_is_empty!22333)))

(assert (=> b!4217753 (= tp!1290323 e!2618757)))

(declare-fun b!4218208 () Bool)

(declare-fun tp!1290403 () Bool)

(assert (=> b!4218208 (= e!2618757 tp!1290403)))

(assert (= (and b!4217753 ((_ is ElementMatch!12683) (regex!7778 (rule!10908 tBis!41)))) b!4218206))

(assert (= (and b!4217753 ((_ is Concat!20692) (regex!7778 (rule!10908 tBis!41)))) b!4218207))

(assert (= (and b!4217753 ((_ is Star!12683) (regex!7778 (rule!10908 tBis!41)))) b!4218208))

(assert (= (and b!4217753 ((_ is Union!12683) (regex!7778 (rule!10908 tBis!41)))) b!4218209))

(declare-fun b!4218210 () Bool)

(declare-fun e!2618758 () Bool)

(declare-fun tp!1290408 () Bool)

(assert (=> b!4218210 (= e!2618758 (and tp_is_empty!22333 tp!1290408))))

(assert (=> b!4217763 (= tp!1290310 e!2618758)))

(assert (= (and b!4217763 ((_ is Cons!46402) (t!348545 suffixBis!41))) b!4218210))

(declare-fun b!4218211 () Bool)

(declare-fun e!2618759 () Bool)

(declare-fun tp!1290409 () Bool)

(assert (=> b!4218211 (= e!2618759 (and tp_is_empty!22333 tp!1290409))))

(assert (=> b!4217770 (= tp!1290325 e!2618759)))

(assert (= (and b!4217770 ((_ is Cons!46402) (t!348545 suffix!1557))) b!4218211))

(declare-fun b!4218215 () Bool)

(declare-fun e!2618760 () Bool)

(declare-fun tp!1290411 () Bool)

(declare-fun tp!1290413 () Bool)

(assert (=> b!4218215 (= e!2618760 (and tp!1290411 tp!1290413))))

(declare-fun b!4218213 () Bool)

(declare-fun tp!1290414 () Bool)

(declare-fun tp!1290412 () Bool)

(assert (=> b!4218213 (= e!2618760 (and tp!1290414 tp!1290412))))

(declare-fun b!4218212 () Bool)

(assert (=> b!4218212 (= e!2618760 tp_is_empty!22333)))

(assert (=> b!4217759 (= tp!1290316 e!2618760)))

(declare-fun b!4218214 () Bool)

(declare-fun tp!1290410 () Bool)

(assert (=> b!4218214 (= e!2618760 tp!1290410)))

(assert (= (and b!4217759 ((_ is ElementMatch!12683) (regex!7778 (rule!10908 t!8364)))) b!4218212))

(assert (= (and b!4217759 ((_ is Concat!20692) (regex!7778 (rule!10908 t!8364)))) b!4218213))

(assert (= (and b!4217759 ((_ is Star!12683) (regex!7778 (rule!10908 t!8364)))) b!4218214))

(assert (= (and b!4217759 ((_ is Union!12683) (regex!7778 (rule!10908 t!8364)))) b!4218215))

(declare-fun b!4218216 () Bool)

(declare-fun e!2618761 () Bool)

(declare-fun tp!1290415 () Bool)

(assert (=> b!4218216 (= e!2618761 (and tp_is_empty!22333 tp!1290415))))

(assert (=> b!4217748 (= tp!1290314 e!2618761)))

(assert (= (and b!4217748 ((_ is Cons!46402) (t!348545 p!3001))) b!4218216))

(declare-fun b!4218220 () Bool)

(declare-fun e!2618762 () Bool)

(declare-fun tp!1290417 () Bool)

(declare-fun tp!1290419 () Bool)

(assert (=> b!4218220 (= e!2618762 (and tp!1290417 tp!1290419))))

(declare-fun b!4218218 () Bool)

(declare-fun tp!1290420 () Bool)

(declare-fun tp!1290418 () Bool)

(assert (=> b!4218218 (= e!2618762 (and tp!1290420 tp!1290418))))

(declare-fun b!4218217 () Bool)

(assert (=> b!4218217 (= e!2618762 tp_is_empty!22333)))

(assert (=> b!4217750 (= tp!1290317 e!2618762)))

(declare-fun b!4218219 () Bool)

(declare-fun tp!1290416 () Bool)

(assert (=> b!4218219 (= e!2618762 tp!1290416)))

(assert (= (and b!4217750 ((_ is ElementMatch!12683) (regex!7778 rBis!178))) b!4218217))

(assert (= (and b!4217750 ((_ is Concat!20692) (regex!7778 rBis!178))) b!4218218))

(assert (= (and b!4217750 ((_ is Star!12683) (regex!7778 rBis!178))) b!4218219))

(assert (= (and b!4217750 ((_ is Union!12683) (regex!7778 rBis!178))) b!4218220))

(declare-fun b!4218221 () Bool)

(declare-fun e!2618763 () Bool)

(declare-fun tp!1290421 () Bool)

(assert (=> b!4218221 (= e!2618763 (and tp_is_empty!22333 tp!1290421))))

(assert (=> b!4217771 (= tp!1290327 e!2618763)))

(assert (= (and b!4217771 ((_ is Cons!46402) (t!348545 pBis!121))) b!4218221))

(declare-fun b!4218232 () Bool)

(declare-fun b_free!123807 () Bool)

(declare-fun b_next!124511 () Bool)

(assert (=> b!4218232 (= b_free!123807 (not b_next!124511))))

(declare-fun tp!1290431 () Bool)

(declare-fun b_and!332497 () Bool)

(assert (=> b!4218232 (= tp!1290431 b_and!332497)))

(declare-fun b_free!123809 () Bool)

(declare-fun b_next!124513 () Bool)

(assert (=> b!4218232 (= b_free!123809 (not b_next!124513))))

(declare-fun tb!253273 () Bool)

(declare-fun t!348604 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) t!348604) tb!253273))

(declare-fun result!308714 () Bool)

(assert (= result!308714 result!308644))

(assert (=> b!4217803 t!348604))

(declare-fun tb!253275 () Bool)

(declare-fun t!348606 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) t!348606) tb!253275))

(declare-fun result!308716 () Bool)

(assert (= result!308716 result!308654))

(assert (=> b!4217818 t!348606))

(declare-fun t!348608 () Bool)

(declare-fun tb!253277 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990))))) t!348608) tb!253277))

(declare-fun result!308718 () Bool)

(assert (= result!308718 result!308700))

(assert (=> d!1242495 t!348608))

(assert (=> d!1242513 t!348604))

(declare-fun b_and!332499 () Bool)

(declare-fun tp!1290430 () Bool)

(assert (=> b!4218232 (= tp!1290430 (and (=> t!348604 result!308714) (=> t!348606 result!308716) (=> t!348608 result!308718) b_and!332499))))

(declare-fun e!2618775 () Bool)

(assert (=> b!4218232 (= e!2618775 (and tp!1290431 tp!1290430))))

(declare-fun e!2618774 () Bool)

(declare-fun b!4218231 () Bool)

(declare-fun tp!1290433 () Bool)

(assert (=> b!4218231 (= e!2618774 (and tp!1290433 (inv!61046 (tag!8642 (h!51823 (t!348546 rules!3967)))) (inv!61049 (transformation!7778 (h!51823 (t!348546 rules!3967)))) e!2618775))))

(declare-fun b!4218230 () Bool)

(declare-fun e!2618772 () Bool)

(declare-fun tp!1290432 () Bool)

(assert (=> b!4218230 (= e!2618772 (and e!2618774 tp!1290432))))

(assert (=> b!4217769 (= tp!1290309 e!2618772)))

(assert (= b!4218231 b!4218232))

(assert (= b!4218230 b!4218231))

(assert (= (and b!4217769 ((_ is Cons!46403) (t!348546 rules!3967))) b!4218230))

(declare-fun m!4806751 () Bool)

(assert (=> b!4218231 m!4806751))

(declare-fun m!4806753 () Bool)

(assert (=> b!4218231 m!4806753))

(declare-fun b!4218233 () Bool)

(declare-fun e!2618776 () Bool)

(declare-fun tp!1290434 () Bool)

(assert (=> b!4218233 (= e!2618776 (and tp_is_empty!22333 tp!1290434))))

(assert (=> b!4217768 (= tp!1290321 e!2618776)))

(assert (= (and b!4217768 ((_ is Cons!46402) (t!348545 input!3517))) b!4218233))

(declare-fun b!4218234 () Bool)

(declare-fun e!2618777 () Bool)

(declare-fun tp!1290435 () Bool)

(assert (=> b!4218234 (= e!2618777 (and tp_is_empty!22333 tp!1290435))))

(assert (=> b!4217754 (= tp!1290311 e!2618777)))

(assert (= (and b!4217754 ((_ is Cons!46402) (originalCharacters!8160 tBis!41))) b!4218234))

(declare-fun b!4218238 () Bool)

(declare-fun e!2618778 () Bool)

(declare-fun tp!1290437 () Bool)

(declare-fun tp!1290439 () Bool)

(assert (=> b!4218238 (= e!2618778 (and tp!1290437 tp!1290439))))

(declare-fun b!4218236 () Bool)

(declare-fun tp!1290440 () Bool)

(declare-fun tp!1290438 () Bool)

(assert (=> b!4218236 (= e!2618778 (and tp!1290440 tp!1290438))))

(declare-fun b!4218235 () Bool)

(assert (=> b!4218235 (= e!2618778 tp_is_empty!22333)))

(assert (=> b!4217764 (= tp!1290315 e!2618778)))

(declare-fun b!4218237 () Bool)

(declare-fun tp!1290436 () Bool)

(assert (=> b!4218237 (= e!2618778 tp!1290436)))

(assert (= (and b!4217764 ((_ is ElementMatch!12683) (regex!7778 (h!51823 rules!3967)))) b!4218235))

(assert (= (and b!4217764 ((_ is Concat!20692) (regex!7778 (h!51823 rules!3967)))) b!4218236))

(assert (= (and b!4217764 ((_ is Star!12683) (regex!7778 (h!51823 rules!3967)))) b!4218237))

(assert (= (and b!4217764 ((_ is Union!12683) (regex!7778 (h!51823 rules!3967)))) b!4218238))

(declare-fun b_lambda!124281 () Bool)

(assert (= b_lambda!124261 (or (and b!4217746 b_free!123797 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 t!8364))))) (and b!4217757 b_free!123789) (and b!4217752 b_free!123801 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 t!8364))))) (and b!4217775 b_free!123793 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 t!8364))))) (and b!4218232 b_free!123809 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 t!8364))))) b_lambda!124281)))

(declare-fun b_lambda!124283 () Bool)

(assert (= b_lambda!124259 (or (and b!4217752 b_free!123801) (and b!4217775 b_free!123793 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) (and b!4217757 b_free!123789 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) (and b!4218232 b_free!123809 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) (and b!4217746 b_free!123797 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) b_lambda!124283)))

(declare-fun b_lambda!124285 () Bool)

(assert (= b_lambda!124279 (or (and b!4217752 b_free!123801) (and b!4217775 b_free!123793 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) (and b!4217757 b_free!123789 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) (and b!4218232 b_free!123809 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) (and b!4217746 b_free!123797 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 tBis!41))))) b_lambda!124285)))

(check-sat b_and!332413 (not d!1242451) (not b!4217817) (not b!4218177) (not b!4218151) (not b_next!124495) (not b!4217789) (not b!4217983) (not d!1242507) (not b_next!124493) (not b!4218158) (not d!1242477) (not b!4218152) (not b!4218147) (not b!4218179) (not d!1242469) b_and!332497 (not b!4218159) (not b!4218036) (not b!4218103) (not b!4218144) (not d!1242523) (not b!4218190) (not b_lambda!124277) (not b!4218148) (not b_next!124491) (not b!4218186) (not b!4218171) (not b_next!124505) (not b!4218135) (not b!4218011) (not b_lambda!124281) (not b!4218108) (not b!4218149) (not d!1242527) (not b!4218213) (not b!4218221) (not d!1242511) (not b!4218180) (not b!4218231) (not b!4218167) tp_is_empty!22333 (not b!4218166) (not b!4218145) (not b!4217958) (not b!4217790) b_and!332425 (not b!4218134) (not d!1242499) (not b!4217981) (not d!1242441) (not b!4218156) (not b!4217952) (not b!4217951) (not d!1242357) (not b!4218107) (not b!4218230) (not b!4218195) (not b_next!124511) (not b!4218119) (not d!1242479) (not b!4218163) (not b!4218215) (not b!4218214) (not b!4218124) (not b!4218150) (not b!4218233) (not b!4218237) (not b!4218117) (not b_next!124497) (not b_lambda!124283) (not tb!253227) (not b!4218210) (not b!4217791) (not b!4218169) b_and!332493 (not b!4218162) b_and!332417 (not b_lambda!124285) (not b!4218146) (not b!4217954) (not b!4218165) (not bm!293032) (not d!1242481) (not b!4218155) (not d!1242505) (not b!4218211) (not b!4218104) (not b!4217957) (not b!4218142) (not b!4218140) (not b!4218218) b_and!332421 (not b!4218238) (not b!4218176) (not b!4218141) (not d!1242419) (not b!4217950) (not b!4218220) (not b!4217803) (not b!4217953) (not b!4218109) b_and!332499 (not b_next!124501) (not b!4218209) (not b!4218216) (not b!4218164) (not b!4217804) (not b!4218111) (not b!4218178) (not d!1242429) (not d!1242517) (not d!1242495) (not b!4218188) (not d!1242465) (not b!4217819) (not b!4218219) (not tb!253265) (not bm!293033) (not b!4218153) (not d!1242525) (not tb!253219) (not b!4217820) (not b!4218236) (not b!4218105) (not b_next!124503) (not d!1242489) (not d!1242515) (not b!4218121) (not b!4217818) (not b!4217982) (not b!4218138) (not d!1242471) (not b!4218172) (not b!4218207) (not d!1242509) (not b!4218120) (not d!1242365) (not d!1242487) (not b!4218234) (not b!4218208) (not d!1242513) b_and!332491 (not b!4218189) (not b!4218161) (not d!1242491) b_and!332489 (not b_next!124513) (not d!1242367) (not b!4217955) (not b!4218106) (not d!1242493) (not b_next!124499) b_and!332495)
(check-sat (not b_next!124495) (not b_next!124493) b_and!332497 b_and!332413 b_and!332425 (not b_next!124511) (not b_next!124497) b_and!332421 (not b_next!124503) b_and!332491 (not b_next!124491) (not b_next!124505) b_and!332493 b_and!332417 b_and!332499 (not b_next!124501) (not b_next!124513) b_and!332489 (not b_next!124499) b_and!332495)
(get-model)

(declare-fun b!4218257 () Bool)

(declare-fun e!2618796 () Bool)

(declare-fun e!2618799 () Bool)

(assert (=> b!4218257 (= e!2618796 e!2618799)))

(declare-fun c!717959 () Bool)

(assert (=> b!4218257 (= c!717959 ((_ is Star!12683) (regex!7778 rBis!178)))))

(declare-fun b!4218258 () Bool)

(declare-fun res!1733740 () Bool)

(declare-fun e!2618797 () Bool)

(assert (=> b!4218258 (=> (not res!1733740) (not e!2618797))))

(declare-fun call!293045 () Bool)

(assert (=> b!4218258 (= res!1733740 call!293045)))

(declare-fun e!2618795 () Bool)

(assert (=> b!4218258 (= e!2618795 e!2618797)))

(declare-fun d!1242533 () Bool)

(declare-fun res!1733739 () Bool)

(assert (=> d!1242533 (=> res!1733739 e!2618796)))

(assert (=> d!1242533 (= res!1733739 ((_ is ElementMatch!12683) (regex!7778 rBis!178)))))

(assert (=> d!1242533 (= (validRegex!5757 (regex!7778 rBis!178)) e!2618796)))

(declare-fun b!4218259 () Bool)

(declare-fun e!2618794 () Bool)

(declare-fun call!293046 () Bool)

(assert (=> b!4218259 (= e!2618794 call!293046)))

(declare-fun b!4218260 () Bool)

(declare-fun e!2618798 () Bool)

(declare-fun call!293047 () Bool)

(assert (=> b!4218260 (= e!2618798 call!293047)))

(declare-fun b!4218261 () Bool)

(assert (=> b!4218261 (= e!2618799 e!2618795)))

(declare-fun c!717958 () Bool)

(assert (=> b!4218261 (= c!717958 ((_ is Union!12683) (regex!7778 rBis!178)))))

(declare-fun b!4218262 () Bool)

(assert (=> b!4218262 (= e!2618797 call!293047)))

(declare-fun b!4218263 () Bool)

(assert (=> b!4218263 (= e!2618799 e!2618794)))

(declare-fun res!1733738 () Bool)

(assert (=> b!4218263 (= res!1733738 (not (nullable!4470 (reg!13012 (regex!7778 rBis!178)))))))

(assert (=> b!4218263 (=> (not res!1733738) (not e!2618794))))

(declare-fun b!4218264 () Bool)

(declare-fun e!2618793 () Bool)

(assert (=> b!4218264 (= e!2618793 e!2618798)))

(declare-fun res!1733742 () Bool)

(assert (=> b!4218264 (=> (not res!1733742) (not e!2618798))))

(assert (=> b!4218264 (= res!1733742 call!293045)))

(declare-fun bm!293040 () Bool)

(assert (=> bm!293040 (= call!293045 call!293046)))

(declare-fun bm!293041 () Bool)

(assert (=> bm!293041 (= call!293047 (validRegex!5757 (ite c!717958 (regTwo!25879 (regex!7778 rBis!178)) (regTwo!25878 (regex!7778 rBis!178)))))))

(declare-fun bm!293042 () Bool)

(assert (=> bm!293042 (= call!293046 (validRegex!5757 (ite c!717959 (reg!13012 (regex!7778 rBis!178)) (ite c!717958 (regOne!25879 (regex!7778 rBis!178)) (regOne!25878 (regex!7778 rBis!178))))))))

(declare-fun b!4218265 () Bool)

(declare-fun res!1733741 () Bool)

(assert (=> b!4218265 (=> res!1733741 e!2618793)))

(assert (=> b!4218265 (= res!1733741 (not ((_ is Concat!20692) (regex!7778 rBis!178))))))

(assert (=> b!4218265 (= e!2618795 e!2618793)))

(assert (= (and d!1242533 (not res!1733739)) b!4218257))

(assert (= (and b!4218257 c!717959) b!4218263))

(assert (= (and b!4218257 (not c!717959)) b!4218261))

(assert (= (and b!4218263 res!1733738) b!4218259))

(assert (= (and b!4218261 c!717958) b!4218258))

(assert (= (and b!4218261 (not c!717958)) b!4218265))

(assert (= (and b!4218258 res!1733740) b!4218262))

(assert (= (and b!4218265 (not res!1733741)) b!4218264))

(assert (= (and b!4218264 res!1733742) b!4218260))

(assert (= (or b!4218262 b!4218260) bm!293041))

(assert (= (or b!4218258 b!4218264) bm!293040))

(assert (= (or b!4218259 bm!293040) bm!293042))

(declare-fun m!4806755 () Bool)

(assert (=> b!4218263 m!4806755))

(declare-fun m!4806757 () Bool)

(assert (=> bm!293041 m!4806757))

(declare-fun m!4806759 () Bool)

(assert (=> bm!293042 m!4806759))

(assert (=> d!1242429 d!1242533))

(declare-fun d!1242535 () Bool)

(assert (=> d!1242535 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))) (list!16789 (c!717901 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))))))

(declare-fun bs!597572 () Bool)

(assert (= bs!597572 d!1242535))

(declare-fun m!4806761 () Bool)

(assert (=> bs!597572 m!4806761))

(assert (=> b!4218165 d!1242535))

(declare-fun d!1242537 () Bool)

(declare-fun lt!1501157 () BalanceConc!27572)

(assert (=> d!1242537 (= (list!16787 lt!1501157) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147))))))

(assert (=> d!1242537 (= lt!1501157 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))) (value!242202 (_1!25199 (get!15101 lt!1501147)))))))

(assert (=> d!1242537 (= (charsOf!5201 (_1!25199 (get!15101 lt!1501147))) lt!1501157)))

(declare-fun b_lambda!124287 () Bool)

(assert (=> (not b_lambda!124287) (not d!1242537)))

(declare-fun tb!253279 () Bool)

(declare-fun t!348612 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348612) tb!253279))

(declare-fun b!4218266 () Bool)

(declare-fun e!2618800 () Bool)

(declare-fun tp!1290441 () Bool)

(assert (=> b!4218266 (= e!2618800 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))) (value!242202 (_1!25199 (get!15101 lt!1501147)))))) tp!1290441))))

(declare-fun result!308720 () Bool)

(assert (=> tb!253279 (= result!308720 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))) (value!242202 (_1!25199 (get!15101 lt!1501147))))) e!2618800))))

(assert (= tb!253279 b!4218266))

(declare-fun m!4806763 () Bool)

(assert (=> b!4218266 m!4806763))

(declare-fun m!4806765 () Bool)

(assert (=> tb!253279 m!4806765))

(assert (=> d!1242537 t!348612))

(declare-fun b_and!332501 () Bool)

(assert (= b_and!332499 (and (=> t!348612 result!308720) b_and!332501)))

(declare-fun tb!253281 () Bool)

(declare-fun t!348614 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348614) tb!253281))

(declare-fun result!308722 () Bool)

(assert (= result!308722 result!308720))

(assert (=> d!1242537 t!348614))

(declare-fun b_and!332503 () Bool)

(assert (= b_and!332493 (and (=> t!348614 result!308722) b_and!332503)))

(declare-fun t!348616 () Bool)

(declare-fun tb!253283 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348616) tb!253283))

(declare-fun result!308724 () Bool)

(assert (= result!308724 result!308720))

(assert (=> d!1242537 t!348616))

(declare-fun b_and!332505 () Bool)

(assert (= b_and!332495 (and (=> t!348616 result!308724) b_and!332505)))

(declare-fun t!348618 () Bool)

(declare-fun tb!253285 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348618) tb!253285))

(declare-fun result!308726 () Bool)

(assert (= result!308726 result!308720))

(assert (=> d!1242537 t!348618))

(declare-fun b_and!332507 () Bool)

(assert (= b_and!332489 (and (=> t!348618 result!308726) b_and!332507)))

(declare-fun t!348620 () Bool)

(declare-fun tb!253287 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348620) tb!253287))

(declare-fun result!308728 () Bool)

(assert (= result!308728 result!308720))

(assert (=> d!1242537 t!348620))

(declare-fun b_and!332509 () Bool)

(assert (= b_and!332491 (and (=> t!348620 result!308728) b_and!332509)))

(declare-fun m!4806767 () Bool)

(assert (=> d!1242537 m!4806767))

(declare-fun m!4806769 () Bool)

(assert (=> d!1242537 m!4806769))

(assert (=> b!4218165 d!1242537))

(declare-fun d!1242539 () Bool)

(assert (=> d!1242539 (= (get!15101 lt!1501147) (v!40851 lt!1501147))))

(assert (=> b!4218165 d!1242539))

(declare-fun d!1242541 () Bool)

(assert (=> d!1242541 (= (list!16787 lt!1501138) (list!16789 (c!717901 lt!1501138)))))

(declare-fun bs!597573 () Bool)

(assert (= bs!597573 d!1242541))

(declare-fun m!4806771 () Bool)

(assert (=> bs!597573 m!4806771))

(assert (=> d!1242495 d!1242541))

(declare-fun b!4218278 () Bool)

(declare-fun e!2618806 () List!46526)

(assert (=> b!4218278 (= e!2618806 (++!11852 (list!16789 (left!34517 (c!717901 (charsOf!5201 tBis!41)))) (list!16789 (right!34847 (c!717901 (charsOf!5201 tBis!41))))))))

(declare-fun b!4218275 () Bool)

(declare-fun e!2618805 () List!46526)

(assert (=> b!4218275 (= e!2618805 Nil!46402)))

(declare-fun b!4218277 () Bool)

(declare-fun list!16790 (IArray!27983) List!46526)

(assert (=> b!4218277 (= e!2618806 (list!16790 (xs!17295 (c!717901 (charsOf!5201 tBis!41)))))))

(declare-fun d!1242543 () Bool)

(declare-fun c!717964 () Bool)

(assert (=> d!1242543 (= c!717964 ((_ is Empty!13989) (c!717901 (charsOf!5201 tBis!41))))))

(assert (=> d!1242543 (= (list!16789 (c!717901 (charsOf!5201 tBis!41))) e!2618805)))

(declare-fun b!4218276 () Bool)

(assert (=> b!4218276 (= e!2618805 e!2618806)))

(declare-fun c!717965 () Bool)

(assert (=> b!4218276 (= c!717965 ((_ is Leaf!21622) (c!717901 (charsOf!5201 tBis!41))))))

(assert (= (and d!1242543 c!717964) b!4218275))

(assert (= (and d!1242543 (not c!717964)) b!4218276))

(assert (= (and b!4218276 c!717965) b!4218277))

(assert (= (and b!4218276 (not c!717965)) b!4218278))

(declare-fun m!4806773 () Bool)

(assert (=> b!4218278 m!4806773))

(declare-fun m!4806775 () Bool)

(assert (=> b!4218278 m!4806775))

(assert (=> b!4218278 m!4806773))

(assert (=> b!4218278 m!4806775))

(declare-fun m!4806777 () Bool)

(assert (=> b!4218278 m!4806777))

(declare-fun m!4806779 () Bool)

(assert (=> b!4218277 m!4806779))

(assert (=> d!1242511 d!1242543))

(declare-fun b!4218307 () Bool)

(declare-fun res!1733765 () Bool)

(declare-fun e!2618827 () Bool)

(assert (=> b!4218307 (=> res!1733765 e!2618827)))

(declare-fun e!2618824 () Bool)

(assert (=> b!4218307 (= res!1733765 e!2618824)))

(declare-fun res!1733764 () Bool)

(assert (=> b!4218307 (=> (not res!1733764) (not e!2618824))))

(declare-fun lt!1501160 () Bool)

(assert (=> b!4218307 (= res!1733764 lt!1501160)))

(declare-fun b!4218308 () Bool)

(declare-fun e!2618821 () Bool)

(assert (=> b!4218308 (= e!2618821 (nullable!4470 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))))))

(declare-fun b!4218309 () Bool)

(declare-fun e!2618825 () Bool)

(assert (=> b!4218309 (= e!2618825 (not (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) (c!717900 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))))))))

(declare-fun d!1242545 () Bool)

(declare-fun e!2618826 () Bool)

(assert (=> d!1242545 e!2618826))

(declare-fun c!717972 () Bool)

(assert (=> d!1242545 (= c!717972 ((_ is EmptyExpr!12683) (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))))))

(assert (=> d!1242545 (= lt!1501160 e!2618821)))

(declare-fun c!717974 () Bool)

(assert (=> d!1242545 (= c!717974 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))))))

(assert (=> d!1242545 (validRegex!5757 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))

(assert (=> d!1242545 (= (matchR!6380 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) lt!1501160)))

(declare-fun b!4218310 () Bool)

(declare-fun call!293050 () Bool)

(assert (=> b!4218310 (= e!2618826 (= lt!1501160 call!293050))))

(declare-fun b!4218311 () Bool)

(declare-fun derivativeStep!3834 (Regex!12683 C!25560) Regex!12683)

(assert (=> b!4218311 (= e!2618821 (matchR!6380 (derivativeStep!3834 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))) (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))))) (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))))))))

(declare-fun b!4218312 () Bool)

(declare-fun res!1733759 () Bool)

(assert (=> b!4218312 (=> res!1733759 e!2618825)))

(assert (=> b!4218312 (= res!1733759 (not (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))))))))

(declare-fun b!4218313 () Bool)

(assert (=> b!4218313 (= e!2618824 (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) (c!717900 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))))

(declare-fun b!4218314 () Bool)

(declare-fun res!1733766 () Bool)

(assert (=> b!4218314 (=> (not res!1733766) (not e!2618824))))

(assert (=> b!4218314 (= res!1733766 (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))))))))

(declare-fun b!4218315 () Bool)

(declare-fun e!2618823 () Bool)

(assert (=> b!4218315 (= e!2618827 e!2618823)))

(declare-fun res!1733761 () Bool)

(assert (=> b!4218315 (=> (not res!1733761) (not e!2618823))))

(assert (=> b!4218315 (= res!1733761 (not lt!1501160))))

(declare-fun b!4218316 () Bool)

(declare-fun e!2618822 () Bool)

(assert (=> b!4218316 (= e!2618826 e!2618822)))

(declare-fun c!717973 () Bool)

(assert (=> b!4218316 (= c!717973 ((_ is EmptyLang!12683) (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))))))

(declare-fun bm!293045 () Bool)

(assert (=> bm!293045 (= call!293050 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))))))

(declare-fun b!4218317 () Bool)

(assert (=> b!4218317 (= e!2618823 e!2618825)))

(declare-fun res!1733763 () Bool)

(assert (=> b!4218317 (=> res!1733763 e!2618825)))

(assert (=> b!4218317 (= res!1733763 call!293050)))

(declare-fun b!4218318 () Bool)

(declare-fun res!1733762 () Bool)

(assert (=> b!4218318 (=> res!1733762 e!2618827)))

(assert (=> b!4218318 (= res!1733762 (not ((_ is ElementMatch!12683) (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))))

(assert (=> b!4218318 (= e!2618822 e!2618827)))

(declare-fun b!4218319 () Bool)

(assert (=> b!4218319 (= e!2618822 (not lt!1501160))))

(declare-fun b!4218320 () Bool)

(declare-fun res!1733760 () Bool)

(assert (=> b!4218320 (=> (not res!1733760) (not e!2618824))))

(assert (=> b!4218320 (= res!1733760 (not call!293050))))

(assert (= (and d!1242545 c!717974) b!4218308))

(assert (= (and d!1242545 (not c!717974)) b!4218311))

(assert (= (and d!1242545 c!717972) b!4218310))

(assert (= (and d!1242545 (not c!717972)) b!4218316))

(assert (= (and b!4218316 c!717973) b!4218319))

(assert (= (and b!4218316 (not c!717973)) b!4218318))

(assert (= (and b!4218318 (not res!1733762)) b!4218307))

(assert (= (and b!4218307 res!1733764) b!4218320))

(assert (= (and b!4218320 res!1733760) b!4218314))

(assert (= (and b!4218314 res!1733766) b!4218313))

(assert (= (and b!4218307 (not res!1733765)) b!4218315))

(assert (= (and b!4218315 res!1733761) b!4218317))

(assert (= (and b!4218317 (not res!1733763)) b!4218312))

(assert (= (and b!4218312 (not res!1733759)) b!4218309))

(assert (= (or b!4218310 b!4218317 b!4218320) bm!293045))

(declare-fun m!4806781 () Bool)

(assert (=> b!4218308 m!4806781))

(assert (=> b!4218314 m!4806703))

(declare-fun m!4806783 () Bool)

(assert (=> b!4218314 m!4806783))

(assert (=> b!4218314 m!4806783))

(declare-fun m!4806785 () Bool)

(assert (=> b!4218314 m!4806785))

(assert (=> b!4218311 m!4806703))

(declare-fun m!4806787 () Bool)

(assert (=> b!4218311 m!4806787))

(assert (=> b!4218311 m!4806787))

(declare-fun m!4806789 () Bool)

(assert (=> b!4218311 m!4806789))

(assert (=> b!4218311 m!4806703))

(assert (=> b!4218311 m!4806783))

(assert (=> b!4218311 m!4806789))

(assert (=> b!4218311 m!4806783))

(declare-fun m!4806791 () Bool)

(assert (=> b!4218311 m!4806791))

(assert (=> bm!293045 m!4806703))

(declare-fun m!4806793 () Bool)

(assert (=> bm!293045 m!4806793))

(assert (=> b!4218313 m!4806703))

(assert (=> b!4218313 m!4806787))

(assert (=> d!1242545 m!4806703))

(assert (=> d!1242545 m!4806793))

(declare-fun m!4806795 () Bool)

(assert (=> d!1242545 m!4806795))

(assert (=> b!4218309 m!4806703))

(assert (=> b!4218309 m!4806787))

(assert (=> b!4218312 m!4806703))

(assert (=> b!4218312 m!4806783))

(assert (=> b!4218312 m!4806783))

(assert (=> b!4218312 m!4806785))

(assert (=> b!4218161 d!1242545))

(assert (=> b!4218161 d!1242539))

(assert (=> b!4218161 d!1242535))

(assert (=> b!4218161 d!1242537))

(declare-fun d!1242547 () Bool)

(declare-fun charsToBigInt!1 (List!46525) Int)

(assert (=> d!1242547 (= (inv!17 (value!242202 t!8364)) (= (charsToBigInt!1 (text!56504 (value!242202 t!8364))) (value!242194 (value!242202 t!8364))))))

(declare-fun bs!597574 () Bool)

(assert (= bs!597574 d!1242547))

(declare-fun m!4806797 () Bool)

(assert (=> bs!597574 m!4806797))

(assert (=> b!4217790 d!1242547))

(declare-fun b!4218322 () Bool)

(declare-fun e!2618829 () List!46526)

(assert (=> b!4218322 (= e!2618829 (Cons!46402 (h!51822 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) (++!11852 (t!348545 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) (_2!25199 (get!15101 lt!1501060)))))))

(declare-fun b!4218324 () Bool)

(declare-fun e!2618828 () Bool)

(declare-fun lt!1501161 () List!46526)

(assert (=> b!4218324 (= e!2618828 (or (not (= (_2!25199 (get!15101 lt!1501060)) Nil!46402)) (= lt!1501161 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))))))))

(declare-fun b!4218321 () Bool)

(assert (=> b!4218321 (= e!2618829 (_2!25199 (get!15101 lt!1501060)))))

(declare-fun d!1242549 () Bool)

(assert (=> d!1242549 e!2618828))

(declare-fun res!1733767 () Bool)

(assert (=> d!1242549 (=> (not res!1733767) (not e!2618828))))

(assert (=> d!1242549 (= res!1733767 (= (content!7280 lt!1501161) ((_ map or) (content!7280 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) (content!7280 (_2!25199 (get!15101 lt!1501060))))))))

(assert (=> d!1242549 (= lt!1501161 e!2618829)))

(declare-fun c!717975 () Bool)

(assert (=> d!1242549 (= c!717975 ((_ is Nil!46402) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))))))

(assert (=> d!1242549 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))) (_2!25199 (get!15101 lt!1501060))) lt!1501161)))

(declare-fun b!4218323 () Bool)

(declare-fun res!1733768 () Bool)

(assert (=> b!4218323 (=> (not res!1733768) (not e!2618828))))

(assert (=> b!4218323 (= res!1733768 (= (size!34075 lt!1501161) (+ (size!34075 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) (size!34075 (_2!25199 (get!15101 lt!1501060))))))))

(assert (= (and d!1242549 c!717975) b!4218321))

(assert (= (and d!1242549 (not c!717975)) b!4218322))

(assert (= (and d!1242549 res!1733767) b!4218323))

(assert (= (and b!4218323 res!1733768) b!4218324))

(declare-fun m!4806799 () Bool)

(assert (=> b!4218322 m!4806799))

(declare-fun m!4806801 () Bool)

(assert (=> d!1242549 m!4806801))

(assert (=> d!1242549 m!4806343))

(declare-fun m!4806803 () Bool)

(assert (=> d!1242549 m!4806803))

(declare-fun m!4806805 () Bool)

(assert (=> d!1242549 m!4806805))

(declare-fun m!4806807 () Bool)

(assert (=> b!4218323 m!4806807))

(assert (=> b!4218323 m!4806343))

(declare-fun m!4806809 () Bool)

(assert (=> b!4218323 m!4806809))

(assert (=> b!4218323 m!4806337))

(assert (=> b!4217957 d!1242549))

(declare-fun d!1242551 () Bool)

(assert (=> d!1242551 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))) (list!16789 (c!717901 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))))))

(declare-fun bs!597575 () Bool)

(assert (= bs!597575 d!1242551))

(declare-fun m!4806811 () Bool)

(assert (=> bs!597575 m!4806811))

(assert (=> b!4217957 d!1242551))

(declare-fun d!1242553 () Bool)

(declare-fun lt!1501162 () BalanceConc!27572)

(assert (=> d!1242553 (= (list!16787 lt!1501162) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060))))))

(assert (=> d!1242553 (= lt!1501162 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060))))) (value!242202 (_1!25199 (get!15101 lt!1501060)))))))

(assert (=> d!1242553 (= (charsOf!5201 (_1!25199 (get!15101 lt!1501060))) lt!1501162)))

(declare-fun b_lambda!124289 () Bool)

(assert (=> (not b_lambda!124289) (not d!1242553)))

(declare-fun tb!253289 () Bool)

(declare-fun t!348623 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348623) tb!253289))

(declare-fun b!4218325 () Bool)

(declare-fun e!2618830 () Bool)

(declare-fun tp!1290442 () Bool)

(assert (=> b!4218325 (= e!2618830 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060))))) (value!242202 (_1!25199 (get!15101 lt!1501060)))))) tp!1290442))))

(declare-fun result!308730 () Bool)

(assert (=> tb!253289 (= result!308730 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060))))) (value!242202 (_1!25199 (get!15101 lt!1501060))))) e!2618830))))

(assert (= tb!253289 b!4218325))

(declare-fun m!4806813 () Bool)

(assert (=> b!4218325 m!4806813))

(declare-fun m!4806815 () Bool)

(assert (=> tb!253289 m!4806815))

(assert (=> d!1242553 t!348623))

(declare-fun b_and!332511 () Bool)

(assert (= b_and!332507 (and (=> t!348623 result!308730) b_and!332511)))

(declare-fun t!348625 () Bool)

(declare-fun tb!253291 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348625) tb!253291))

(declare-fun result!308732 () Bool)

(assert (= result!308732 result!308730))

(assert (=> d!1242553 t!348625))

(declare-fun b_and!332513 () Bool)

(assert (= b_and!332503 (and (=> t!348625 result!308732) b_and!332513)))

(declare-fun t!348627 () Bool)

(declare-fun tb!253293 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348627) tb!253293))

(declare-fun result!308734 () Bool)

(assert (= result!308734 result!308730))

(assert (=> d!1242553 t!348627))

(declare-fun b_and!332515 () Bool)

(assert (= b_and!332509 (and (=> t!348627 result!308734) b_and!332515)))

(declare-fun tb!253295 () Bool)

(declare-fun t!348629 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348629) tb!253295))

(declare-fun result!308736 () Bool)

(assert (= result!308736 result!308730))

(assert (=> d!1242553 t!348629))

(declare-fun b_and!332517 () Bool)

(assert (= b_and!332501 (and (=> t!348629 result!308736) b_and!332517)))

(declare-fun tb!253297 () Bool)

(declare-fun t!348631 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348631) tb!253297))

(declare-fun result!308738 () Bool)

(assert (= result!308738 result!308730))

(assert (=> d!1242553 t!348631))

(declare-fun b_and!332519 () Bool)

(assert (= b_and!332505 (and (=> t!348631 result!308738) b_and!332519)))

(declare-fun m!4806817 () Bool)

(assert (=> d!1242553 m!4806817))

(declare-fun m!4806819 () Bool)

(assert (=> d!1242553 m!4806819))

(assert (=> b!4217957 d!1242553))

(declare-fun d!1242555 () Bool)

(assert (=> d!1242555 (= (get!15101 lt!1501060) (v!40851 lt!1501060))))

(assert (=> b!4217957 d!1242555))

(declare-fun d!1242557 () Bool)

(declare-fun res!1733773 () Bool)

(declare-fun e!2618835 () Bool)

(assert (=> d!1242557 (=> res!1733773 e!2618835)))

(assert (=> d!1242557 (= res!1733773 ((_ is Nil!46403) (t!348546 rules!3967)))))

(assert (=> d!1242557 (= (noDuplicateTag!3210 thiss!26544 (t!348546 rules!3967) Nil!46404) e!2618835)))

(declare-fun b!4218330 () Bool)

(declare-fun e!2618836 () Bool)

(assert (=> b!4218330 (= e!2618835 e!2618836)))

(declare-fun res!1733774 () Bool)

(assert (=> b!4218330 (=> (not res!1733774) (not e!2618836))))

(declare-fun contains!9600 (List!46528 String!53910) Bool)

(assert (=> b!4218330 (= res!1733774 (not (contains!9600 Nil!46404 (tag!8642 (h!51823 (t!348546 rules!3967))))))))

(declare-fun b!4218331 () Bool)

(assert (=> b!4218331 (= e!2618836 (noDuplicateTag!3210 thiss!26544 (t!348546 (t!348546 rules!3967)) (Cons!46404 (tag!8642 (h!51823 (t!348546 rules!3967))) Nil!46404)))))

(assert (= (and d!1242557 (not res!1733773)) b!4218330))

(assert (= (and b!4218330 res!1733774) b!4218331))

(declare-fun m!4806821 () Bool)

(assert (=> b!4218330 m!4806821))

(declare-fun m!4806823 () Bool)

(assert (=> b!4218331 m!4806823))

(assert (=> b!4218124 d!1242557))

(declare-fun b!4218333 () Bool)

(declare-fun e!2618838 () List!46526)

(assert (=> b!4218333 (= e!2618838 (Cons!46402 (h!51822 (t!348545 lt!1500997)) (++!11852 (t!348545 (t!348545 lt!1500997)) (_2!25199 lt!1500990))))))

(declare-fun e!2618837 () Bool)

(declare-fun b!4218335 () Bool)

(declare-fun lt!1501163 () List!46526)

(assert (=> b!4218335 (= e!2618837 (or (not (= (_2!25199 lt!1500990) Nil!46402)) (= lt!1501163 (t!348545 lt!1500997))))))

(declare-fun b!4218332 () Bool)

(assert (=> b!4218332 (= e!2618838 (_2!25199 lt!1500990))))

(declare-fun d!1242559 () Bool)

(assert (=> d!1242559 e!2618837))

(declare-fun res!1733775 () Bool)

(assert (=> d!1242559 (=> (not res!1733775) (not e!2618837))))

(assert (=> d!1242559 (= res!1733775 (= (content!7280 lt!1501163) ((_ map or) (content!7280 (t!348545 lt!1500997)) (content!7280 (_2!25199 lt!1500990)))))))

(assert (=> d!1242559 (= lt!1501163 e!2618838)))

(declare-fun c!717976 () Bool)

(assert (=> d!1242559 (= c!717976 ((_ is Nil!46402) (t!348545 lt!1500997)))))

(assert (=> d!1242559 (= (++!11852 (t!348545 lt!1500997) (_2!25199 lt!1500990)) lt!1501163)))

(declare-fun b!4218334 () Bool)

(declare-fun res!1733776 () Bool)

(assert (=> b!4218334 (=> (not res!1733776) (not e!2618837))))

(assert (=> b!4218334 (= res!1733776 (= (size!34075 lt!1501163) (+ (size!34075 (t!348545 lt!1500997)) (size!34075 (_2!25199 lt!1500990)))))))

(assert (= (and d!1242559 c!717976) b!4218332))

(assert (= (and d!1242559 (not c!717976)) b!4218333))

(assert (= (and d!1242559 res!1733775) b!4218334))

(assert (= (and b!4218334 res!1733776) b!4218335))

(declare-fun m!4806825 () Bool)

(assert (=> b!4218333 m!4806825))

(declare-fun m!4806827 () Bool)

(assert (=> d!1242559 m!4806827))

(declare-fun m!4806829 () Bool)

(assert (=> d!1242559 m!4806829))

(assert (=> d!1242559 m!4806589))

(declare-fun m!4806831 () Bool)

(assert (=> b!4218334 m!4806831))

(assert (=> b!4218334 m!4806563))

(assert (=> b!4218334 m!4806593))

(assert (=> b!4218134 d!1242559))

(declare-fun d!1242561 () Bool)

(declare-fun lt!1501164 () Int)

(assert (=> d!1242561 (>= lt!1501164 0)))

(declare-fun e!2618839 () Int)

(assert (=> d!1242561 (= lt!1501164 e!2618839)))

(declare-fun c!717977 () Bool)

(assert (=> d!1242561 (= c!717977 ((_ is Nil!46402) (originalCharacters!8160 t!8364)))))

(assert (=> d!1242561 (= (size!34075 (originalCharacters!8160 t!8364)) lt!1501164)))

(declare-fun b!4218336 () Bool)

(assert (=> b!4218336 (= e!2618839 0)))

(declare-fun b!4218337 () Bool)

(assert (=> b!4218337 (= e!2618839 (+ 1 (size!34075 (t!348545 (originalCharacters!8160 t!8364)))))))

(assert (= (and d!1242561 c!717977) b!4218336))

(assert (= (and d!1242561 (not c!717977)) b!4218337))

(declare-fun m!4806833 () Bool)

(assert (=> b!4218337 m!4806833))

(assert (=> b!4217819 d!1242561))

(assert (=> b!4217953 d!1242555))

(declare-fun d!1242563 () Bool)

(declare-fun lt!1501165 () Int)

(assert (=> d!1242563 (>= lt!1501165 0)))

(declare-fun e!2618840 () Int)

(assert (=> d!1242563 (= lt!1501165 e!2618840)))

(declare-fun c!717978 () Bool)

(assert (=> d!1242563 (= c!717978 ((_ is Nil!46402) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))))))

(assert (=> d!1242563 (= (size!34075 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))) lt!1501165)))

(declare-fun b!4218338 () Bool)

(assert (=> b!4218338 (= e!2618840 0)))

(declare-fun b!4218339 () Bool)

(assert (=> b!4218339 (= e!2618840 (+ 1 (size!34075 (t!348545 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))))))))

(assert (= (and d!1242563 c!717978) b!4218338))

(assert (= (and d!1242563 (not c!717978)) b!4218339))

(declare-fun m!4806835 () Bool)

(assert (=> b!4218339 m!4806835))

(assert (=> b!4217953 d!1242563))

(declare-fun b!4218343 () Bool)

(declare-fun e!2618841 () Bool)

(assert (=> b!4218343 (= e!2618841 (>= (size!34075 (tail!6797 input!3517)) (size!34075 (tail!6797 pBis!121))))))

(declare-fun b!4218341 () Bool)

(declare-fun res!1733778 () Bool)

(declare-fun e!2618842 () Bool)

(assert (=> b!4218341 (=> (not res!1733778) (not e!2618842))))

(assert (=> b!4218341 (= res!1733778 (= (head!8950 (tail!6797 pBis!121)) (head!8950 (tail!6797 input!3517))))))

(declare-fun b!4218342 () Bool)

(assert (=> b!4218342 (= e!2618842 (isPrefix!4637 (tail!6797 (tail!6797 pBis!121)) (tail!6797 (tail!6797 input!3517))))))

(declare-fun b!4218340 () Bool)

(declare-fun e!2618843 () Bool)

(assert (=> b!4218340 (= e!2618843 e!2618842)))

(declare-fun res!1733780 () Bool)

(assert (=> b!4218340 (=> (not res!1733780) (not e!2618842))))

(assert (=> b!4218340 (= res!1733780 (not ((_ is Nil!46402) (tail!6797 input!3517))))))

(declare-fun d!1242565 () Bool)

(assert (=> d!1242565 e!2618841))

(declare-fun res!1733779 () Bool)

(assert (=> d!1242565 (=> res!1733779 e!2618841)))

(declare-fun lt!1501166 () Bool)

(assert (=> d!1242565 (= res!1733779 (not lt!1501166))))

(assert (=> d!1242565 (= lt!1501166 e!2618843)))

(declare-fun res!1733777 () Bool)

(assert (=> d!1242565 (=> res!1733777 e!2618843)))

(assert (=> d!1242565 (= res!1733777 ((_ is Nil!46402) (tail!6797 pBis!121)))))

(assert (=> d!1242565 (= (isPrefix!4637 (tail!6797 pBis!121) (tail!6797 input!3517)) lt!1501166)))

(assert (= (and d!1242565 (not res!1733777)) b!4218340))

(assert (= (and b!4218340 res!1733780) b!4218341))

(assert (= (and b!4218341 res!1733778) b!4218342))

(assert (= (and d!1242565 (not res!1733779)) b!4218343))

(assert (=> b!4218343 m!4806419))

(declare-fun m!4806837 () Bool)

(assert (=> b!4218343 m!4806837))

(assert (=> b!4218343 m!4806747))

(declare-fun m!4806839 () Bool)

(assert (=> b!4218343 m!4806839))

(assert (=> b!4218341 m!4806747))

(declare-fun m!4806841 () Bool)

(assert (=> b!4218341 m!4806841))

(assert (=> b!4218341 m!4806419))

(declare-fun m!4806843 () Bool)

(assert (=> b!4218341 m!4806843))

(assert (=> b!4218342 m!4806747))

(declare-fun m!4806845 () Bool)

(assert (=> b!4218342 m!4806845))

(assert (=> b!4218342 m!4806419))

(declare-fun m!4806847 () Bool)

(assert (=> b!4218342 m!4806847))

(assert (=> b!4218342 m!4806845))

(assert (=> b!4218342 m!4806847))

(declare-fun m!4806849 () Bool)

(assert (=> b!4218342 m!4806849))

(assert (=> b!4218189 d!1242565))

(declare-fun d!1242567 () Bool)

(assert (=> d!1242567 (= (tail!6797 pBis!121) (t!348545 pBis!121))))

(assert (=> b!4218189 d!1242567))

(declare-fun d!1242569 () Bool)

(assert (=> d!1242569 (= (tail!6797 input!3517) (t!348545 input!3517))))

(assert (=> b!4218189 d!1242569))

(declare-fun d!1242571 () Bool)

(assert (=> d!1242571 true))

(declare-fun order!24547 () Int)

(declare-fun order!24549 () Int)

(declare-fun lambda!129796 () Int)

(declare-fun dynLambda!19987 (Int Int) Int)

(declare-fun dynLambda!19988 (Int Int) Int)

(assert (=> d!1242571 (< (dynLambda!19987 order!24547 (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (dynLambda!19988 order!24549 lambda!129796))))

(assert (=> d!1242571 true))

(declare-fun order!24551 () Int)

(declare-fun dynLambda!19989 (Int Int) Int)

(assert (=> d!1242571 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) (dynLambda!19988 order!24549 lambda!129796))))

(declare-fun Forall!1579 (Int) Bool)

(assert (=> d!1242571 (= (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) (Forall!1579 lambda!129796))))

(declare-fun bs!597576 () Bool)

(assert (= bs!597576 d!1242571))

(declare-fun m!4806853 () Bool)

(assert (=> bs!597576 m!4806853))

(assert (=> d!1242523 d!1242571))

(declare-fun d!1242577 () Bool)

(assert (=> d!1242577 (= (head!8950 p!3001) (h!51822 p!3001))))

(assert (=> b!4218144 d!1242577))

(declare-fun d!1242579 () Bool)

(assert (=> d!1242579 (= (head!8950 input!3517) (h!51822 input!3517))))

(assert (=> b!4218144 d!1242579))

(declare-fun d!1242581 () Bool)

(declare-fun lt!1501170 () Bool)

(assert (=> d!1242581 (= lt!1501170 (select (content!7281 (t!348546 rules!3967)) (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))

(declare-fun e!2618845 () Bool)

(assert (=> d!1242581 (= lt!1501170 e!2618845)))

(declare-fun res!1733785 () Bool)

(assert (=> d!1242581 (=> (not res!1733785) (not e!2618845))))

(assert (=> d!1242581 (= res!1733785 ((_ is Cons!46403) (t!348546 rules!3967)))))

(assert (=> d!1242581 (= (contains!9599 (t!348546 rules!3967) (rule!10908 (_1!25199 (get!15101 lt!1501113)))) lt!1501170)))

(declare-fun b!4218350 () Bool)

(declare-fun e!2618846 () Bool)

(assert (=> b!4218350 (= e!2618845 e!2618846)))

(declare-fun res!1733784 () Bool)

(assert (=> b!4218350 (=> res!1733784 e!2618846)))

(assert (=> b!4218350 (= res!1733784 (= (h!51823 (t!348546 rules!3967)) (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))

(declare-fun b!4218351 () Bool)

(assert (=> b!4218351 (= e!2618846 (contains!9599 (t!348546 (t!348546 rules!3967)) (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))

(assert (= (and d!1242581 res!1733785) b!4218350))

(assert (= (and b!4218350 (not res!1733784)) b!4218351))

(declare-fun m!4806855 () Bool)

(assert (=> d!1242581 m!4806855))

(declare-fun m!4806857 () Bool)

(assert (=> d!1242581 m!4806857))

(declare-fun m!4806859 () Bool)

(assert (=> b!4218351 m!4806859))

(assert (=> b!4218109 d!1242581))

(declare-fun d!1242583 () Bool)

(assert (=> d!1242583 (= (get!15101 lt!1501113) (v!40851 lt!1501113))))

(assert (=> b!4218109 d!1242583))

(declare-fun d!1242585 () Bool)

(declare-fun isBalanced!3747 (Conc!13989) Bool)

(assert (=> d!1242585 (= (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))) (isBalanced!3747 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))))))

(declare-fun bs!597577 () Bool)

(assert (= bs!597577 d!1242585))

(declare-fun m!4806861 () Bool)

(assert (=> bs!597577 m!4806861))

(assert (=> tb!253265 d!1242585))

(declare-fun d!1242587 () Bool)

(assert (=> d!1242587 (= (isEmpty!27491 lt!1501113) (not ((_ is Some!9965) lt!1501113)))))

(assert (=> d!1242465 d!1242587))

(assert (=> d!1242465 d!1242403))

(assert (=> d!1242465 d!1242419))

(declare-fun d!1242589 () Bool)

(assert (=> d!1242589 true))

(declare-fun lt!1501173 () Bool)

(declare-fun lambda!129799 () Int)

(declare-fun forall!8497 (List!46527 Int) Bool)

(assert (=> d!1242589 (= lt!1501173 (forall!8497 (t!348546 rules!3967) lambda!129799))))

(declare-fun e!2618851 () Bool)

(assert (=> d!1242589 (= lt!1501173 e!2618851)))

(declare-fun res!1733790 () Bool)

(assert (=> d!1242589 (=> res!1733790 e!2618851)))

(assert (=> d!1242589 (= res!1733790 (not ((_ is Cons!46403) (t!348546 rules!3967))))))

(assert (=> d!1242589 (= (rulesValidInductive!2892 thiss!26544 (t!348546 rules!3967)) lt!1501173)))

(declare-fun b!4218356 () Bool)

(declare-fun e!2618852 () Bool)

(assert (=> b!4218356 (= e!2618851 e!2618852)))

(declare-fun res!1733791 () Bool)

(assert (=> b!4218356 (=> (not res!1733791) (not e!2618852))))

(assert (=> b!4218356 (= res!1733791 (ruleValid!3490 thiss!26544 (h!51823 (t!348546 rules!3967))))))

(declare-fun b!4218357 () Bool)

(assert (=> b!4218357 (= e!2618852 (rulesValidInductive!2892 thiss!26544 (t!348546 (t!348546 rules!3967))))))

(assert (= (and d!1242589 (not res!1733790)) b!4218356))

(assert (= (and b!4218356 res!1733791) b!4218357))

(declare-fun m!4806863 () Bool)

(assert (=> d!1242589 m!4806863))

(declare-fun m!4806865 () Bool)

(assert (=> b!4218356 m!4806865))

(declare-fun m!4806867 () Bool)

(assert (=> b!4218357 m!4806867))

(assert (=> d!1242465 d!1242589))

(assert (=> d!1242493 d!1242475))

(assert (=> d!1242493 d!1242481))

(declare-fun d!1242591 () Bool)

(assert (=> d!1242591 (isPrefix!4637 lt!1500997 (++!11852 lt!1500997 (_2!25199 lt!1500990)))))

(assert (=> d!1242591 true))

(declare-fun _$46!1856 () Unit!65553)

(assert (=> d!1242591 (= (choose!25853 lt!1500997 (_2!25199 lt!1500990)) _$46!1856)))

(declare-fun bs!597578 () Bool)

(assert (= bs!597578 d!1242591))

(assert (=> bs!597578 m!4806073))

(assert (=> bs!597578 m!4806073))

(assert (=> bs!597578 m!4806105))

(assert (=> d!1242493 d!1242591))

(declare-fun d!1242593 () Bool)

(declare-fun lt!1501174 () Int)

(assert (=> d!1242593 (>= lt!1501174 0)))

(declare-fun e!2618853 () Int)

(assert (=> d!1242593 (= lt!1501174 e!2618853)))

(declare-fun c!717980 () Bool)

(assert (=> d!1242593 (= c!717980 ((_ is Nil!46402) (_2!25199 (get!15101 lt!1501140))))))

(assert (=> d!1242593 (= (size!34075 (_2!25199 (get!15101 lt!1501140))) lt!1501174)))

(declare-fun b!4218360 () Bool)

(assert (=> b!4218360 (= e!2618853 0)))

(declare-fun b!4218361 () Bool)

(assert (=> b!4218361 (= e!2618853 (+ 1 (size!34075 (t!348545 (_2!25199 (get!15101 lt!1501140))))))))

(assert (= (and d!1242593 c!717980) b!4218360))

(assert (= (and d!1242593 (not c!717980)) b!4218361))

(declare-fun m!4806869 () Bool)

(assert (=> b!4218361 m!4806869))

(assert (=> b!4218150 d!1242593))

(declare-fun d!1242595 () Bool)

(assert (=> d!1242595 (= (get!15101 lt!1501140) (v!40851 lt!1501140))))

(assert (=> b!4218150 d!1242595))

(declare-fun d!1242597 () Bool)

(declare-fun lt!1501175 () Int)

(assert (=> d!1242597 (>= lt!1501175 0)))

(declare-fun e!2618854 () Int)

(assert (=> d!1242597 (= lt!1501175 e!2618854)))

(declare-fun c!717981 () Bool)

(assert (=> d!1242597 (= c!717981 ((_ is Nil!46402) input!3517))))

(assert (=> d!1242597 (= (size!34075 input!3517) lt!1501175)))

(declare-fun b!4218362 () Bool)

(assert (=> b!4218362 (= e!2618854 0)))

(declare-fun b!4218363 () Bool)

(assert (=> b!4218363 (= e!2618854 (+ 1 (size!34075 (t!348545 input!3517))))))

(assert (= (and d!1242597 c!717981) b!4218362))

(assert (= (and d!1242597 (not c!717981)) b!4218363))

(declare-fun m!4806871 () Bool)

(assert (=> b!4218363 m!4806871))

(assert (=> b!4218150 d!1242597))

(declare-fun b!4218367 () Bool)

(declare-fun e!2618855 () Bool)

(assert (=> b!4218367 (= e!2618855 (>= (size!34075 (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990)))) (size!34075 (tail!6797 lt!1500997))))))

(declare-fun b!4218365 () Bool)

(declare-fun res!1733793 () Bool)

(declare-fun e!2618856 () Bool)

(assert (=> b!4218365 (=> (not res!1733793) (not e!2618856))))

(assert (=> b!4218365 (= res!1733793 (= (head!8950 (tail!6797 lt!1500997)) (head!8950 (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990))))))))

(declare-fun b!4218366 () Bool)

(assert (=> b!4218366 (= e!2618856 (isPrefix!4637 (tail!6797 (tail!6797 lt!1500997)) (tail!6797 (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990))))))))

(declare-fun b!4218364 () Bool)

(declare-fun e!2618857 () Bool)

(assert (=> b!4218364 (= e!2618857 e!2618856)))

(declare-fun res!1733795 () Bool)

(assert (=> b!4218364 (=> (not res!1733795) (not e!2618856))))

(assert (=> b!4218364 (= res!1733795 (not ((_ is Nil!46402) (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990))))))))

(declare-fun d!1242599 () Bool)

(assert (=> d!1242599 e!2618855))

(declare-fun res!1733794 () Bool)

(assert (=> d!1242599 (=> res!1733794 e!2618855)))

(declare-fun lt!1501176 () Bool)

(assert (=> d!1242599 (= res!1733794 (not lt!1501176))))

(assert (=> d!1242599 (= lt!1501176 e!2618857)))

(declare-fun res!1733792 () Bool)

(assert (=> d!1242599 (=> res!1733792 e!2618857)))

(assert (=> d!1242599 (= res!1733792 ((_ is Nil!46402) (tail!6797 lt!1500997)))))

(assert (=> d!1242599 (= (isPrefix!4637 (tail!6797 lt!1500997) (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990)))) lt!1501176)))

(assert (= (and d!1242599 (not res!1733792)) b!4218364))

(assert (= (and b!4218364 res!1733795) b!4218365))

(assert (= (and b!4218365 res!1733793) b!4218366))

(assert (= (and d!1242599 (not res!1733794)) b!4218367))

(assert (=> b!4218367 m!4806573))

(declare-fun m!4806873 () Bool)

(assert (=> b!4218367 m!4806873))

(assert (=> b!4218367 m!4806571))

(declare-fun m!4806875 () Bool)

(assert (=> b!4218367 m!4806875))

(assert (=> b!4218365 m!4806571))

(declare-fun m!4806877 () Bool)

(assert (=> b!4218365 m!4806877))

(assert (=> b!4218365 m!4806573))

(declare-fun m!4806879 () Bool)

(assert (=> b!4218365 m!4806879))

(assert (=> b!4218366 m!4806571))

(declare-fun m!4806881 () Bool)

(assert (=> b!4218366 m!4806881))

(assert (=> b!4218366 m!4806573))

(declare-fun m!4806883 () Bool)

(assert (=> b!4218366 m!4806883))

(assert (=> b!4218366 m!4806881))

(assert (=> b!4218366 m!4806883))

(declare-fun m!4806885 () Bool)

(assert (=> b!4218366 m!4806885))

(assert (=> b!4218120 d!1242599))

(declare-fun d!1242601 () Bool)

(assert (=> d!1242601 (= (tail!6797 lt!1500997) (t!348545 lt!1500997))))

(assert (=> b!4218120 d!1242601))

(declare-fun d!1242603 () Bool)

(assert (=> d!1242603 (= (tail!6797 (++!11852 lt!1500997 (_2!25199 lt!1500990))) (t!348545 (++!11852 lt!1500997 (_2!25199 lt!1500990))))))

(assert (=> b!4218120 d!1242603))

(declare-fun b!4218371 () Bool)

(declare-fun e!2618858 () Bool)

(assert (=> b!4218371 (= e!2618858 (>= (size!34075 (tail!6797 input!3517)) (size!34075 (tail!6797 input!3517))))))

(declare-fun b!4218369 () Bool)

(declare-fun res!1733797 () Bool)

(declare-fun e!2618859 () Bool)

(assert (=> b!4218369 (=> (not res!1733797) (not e!2618859))))

(assert (=> b!4218369 (= res!1733797 (= (head!8950 (tail!6797 input!3517)) (head!8950 (tail!6797 input!3517))))))

(declare-fun b!4218370 () Bool)

(assert (=> b!4218370 (= e!2618859 (isPrefix!4637 (tail!6797 (tail!6797 input!3517)) (tail!6797 (tail!6797 input!3517))))))

(declare-fun b!4218368 () Bool)

(declare-fun e!2618860 () Bool)

(assert (=> b!4218368 (= e!2618860 e!2618859)))

(declare-fun res!1733799 () Bool)

(assert (=> b!4218368 (=> (not res!1733799) (not e!2618859))))

(assert (=> b!4218368 (= res!1733799 (not ((_ is Nil!46402) (tail!6797 input!3517))))))

(declare-fun d!1242605 () Bool)

(assert (=> d!1242605 e!2618858))

(declare-fun res!1733798 () Bool)

(assert (=> d!1242605 (=> res!1733798 e!2618858)))

(declare-fun lt!1501177 () Bool)

(assert (=> d!1242605 (= res!1733798 (not lt!1501177))))

(assert (=> d!1242605 (= lt!1501177 e!2618860)))

(declare-fun res!1733796 () Bool)

(assert (=> d!1242605 (=> res!1733796 e!2618860)))

(assert (=> d!1242605 (= res!1733796 ((_ is Nil!46402) (tail!6797 input!3517)))))

(assert (=> d!1242605 (= (isPrefix!4637 (tail!6797 input!3517) (tail!6797 input!3517)) lt!1501177)))

(assert (= (and d!1242605 (not res!1733796)) b!4218368))

(assert (= (and b!4218368 res!1733799) b!4218369))

(assert (= (and b!4218369 res!1733797) b!4218370))

(assert (= (and d!1242605 (not res!1733798)) b!4218371))

(assert (=> b!4218371 m!4806419))

(assert (=> b!4218371 m!4806837))

(assert (=> b!4218371 m!4806419))

(assert (=> b!4218371 m!4806837))

(assert (=> b!4218369 m!4806419))

(assert (=> b!4218369 m!4806843))

(assert (=> b!4218369 m!4806419))

(assert (=> b!4218369 m!4806843))

(assert (=> b!4218370 m!4806419))

(assert (=> b!4218370 m!4806847))

(assert (=> b!4218370 m!4806419))

(assert (=> b!4218370 m!4806847))

(assert (=> b!4218370 m!4806847))

(assert (=> b!4218370 m!4806847))

(declare-fun m!4806887 () Bool)

(assert (=> b!4218370 m!4806887))

(assert (=> b!4217982 d!1242605))

(assert (=> b!4217982 d!1242569))

(declare-fun d!1242607 () Bool)

(assert (=> d!1242607 (= (isDefined!7401 lt!1501113) (not (isEmpty!27491 lt!1501113)))))

(declare-fun bs!597579 () Bool)

(assert (= bs!597579 d!1242607))

(assert (=> bs!597579 m!4806543))

(assert (=> b!4218105 d!1242607))

(declare-fun d!1242609 () Bool)

(declare-fun lt!1501178 () Int)

(assert (=> d!1242609 (>= lt!1501178 0)))

(declare-fun e!2618861 () Int)

(assert (=> d!1242609 (= lt!1501178 e!2618861)))

(declare-fun c!717982 () Bool)

(assert (=> d!1242609 (= c!717982 ((_ is Nil!46402) (originalCharacters!8160 tBis!41)))))

(assert (=> d!1242609 (= (size!34075 (originalCharacters!8160 tBis!41)) lt!1501178)))

(declare-fun b!4218372 () Bool)

(assert (=> b!4218372 (= e!2618861 0)))

(declare-fun b!4218373 () Bool)

(assert (=> b!4218373 (= e!2618861 (+ 1 (size!34075 (t!348545 (originalCharacters!8160 tBis!41)))))))

(assert (= (and d!1242609 c!717982) b!4218372))

(assert (= (and d!1242609 (not c!717982)) b!4218373))

(declare-fun m!4806889 () Bool)

(assert (=> b!4218373 m!4806889))

(assert (=> d!1242469 d!1242609))

(declare-fun d!1242611 () Bool)

(assert (=> d!1242611 true))

(declare-fun order!24553 () Int)

(declare-fun lambda!129802 () Int)

(declare-fun dynLambda!19990 (Int Int) Int)

(assert (=> d!1242611 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (dynLambda!19990 order!24553 lambda!129802))))

(declare-fun Forall2!1178 (Int) Bool)

(assert (=> d!1242611 (= (equivClasses!3280 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (Forall2!1178 lambda!129802))))

(declare-fun bs!597580 () Bool)

(assert (= bs!597580 d!1242611))

(declare-fun m!4806891 () Bool)

(assert (=> bs!597580 m!4806891))

(assert (=> b!4218036 d!1242611))

(assert (=> b!4218169 d!1242539))

(declare-fun d!1242613 () Bool)

(declare-fun dynLambda!19991 (Int BalanceConc!27572) TokenValue!8008)

(assert (=> d!1242613 (= (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147))))) (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147))))))))

(declare-fun b_lambda!124291 () Bool)

(assert (=> (not b_lambda!124291) (not d!1242613)))

(declare-fun t!348633 () Bool)

(declare-fun tb!253299 () Bool)

(assert (=> (and b!4218232 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348633) tb!253299))

(declare-fun result!308740 () Bool)

(assert (=> tb!253299 (= result!308740 (inv!21 (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147)))))))))

(declare-fun m!4806893 () Bool)

(assert (=> tb!253299 m!4806893))

(assert (=> d!1242613 t!348633))

(declare-fun b_and!332521 () Bool)

(assert (= b_and!332497 (and (=> t!348633 result!308740) b_and!332521)))

(declare-fun tb!253301 () Bool)

(declare-fun t!348635 () Bool)

(assert (=> (and b!4217752 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348635) tb!253301))

(declare-fun result!308744 () Bool)

(assert (= result!308744 result!308740))

(assert (=> d!1242613 t!348635))

(declare-fun b_and!332523 () Bool)

(assert (= b_and!332425 (and (=> t!348635 result!308744) b_and!332523)))

(declare-fun t!348637 () Bool)

(declare-fun tb!253303 () Bool)

(assert (=> (and b!4217746 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348637) tb!253303))

(declare-fun result!308746 () Bool)

(assert (= result!308746 result!308740))

(assert (=> d!1242613 t!348637))

(declare-fun b_and!332525 () Bool)

(assert (= b_and!332421 (and (=> t!348637 result!308746) b_and!332525)))

(declare-fun tb!253305 () Bool)

(declare-fun t!348639 () Bool)

(assert (=> (and b!4217757 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348639) tb!253305))

(declare-fun result!308748 () Bool)

(assert (= result!308748 result!308740))

(assert (=> d!1242613 t!348639))

(declare-fun b_and!332527 () Bool)

(assert (= b_and!332413 (and (=> t!348639 result!308748) b_and!332527)))

(declare-fun t!348641 () Bool)

(declare-fun tb!253307 () Bool)

(assert (=> (and b!4217775 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348641) tb!253307))

(declare-fun result!308750 () Bool)

(assert (= result!308750 result!308740))

(assert (=> d!1242613 t!348641))

(declare-fun b_and!332529 () Bool)

(assert (= b_and!332417 (and (=> t!348641 result!308750) b_and!332529)))

(assert (=> d!1242613 m!4806691))

(declare-fun m!4806895 () Bool)

(assert (=> d!1242613 m!4806895))

(assert (=> b!4218169 d!1242613))

(declare-fun d!1242615 () Bool)

(declare-fun fromListB!2635 (List!46526) BalanceConc!27572)

(assert (=> d!1242615 (= (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147)))) (fromListB!2635 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501147)))))))

(declare-fun bs!597581 () Bool)

(assert (= bs!597581 d!1242615))

(declare-fun m!4806897 () Bool)

(assert (=> bs!597581 m!4806897))

(assert (=> b!4218169 d!1242615))

(declare-fun b!4218381 () Bool)

(declare-fun e!2618868 () List!46526)

(assert (=> b!4218381 (= e!2618868 (Cons!46402 (h!51822 (t!348545 p!3001)) (++!11852 (t!348545 (t!348545 p!3001)) suffix!1557)))))

(declare-fun b!4218383 () Bool)

(declare-fun e!2618867 () Bool)

(declare-fun lt!1501179 () List!46526)

(assert (=> b!4218383 (= e!2618867 (or (not (= suffix!1557 Nil!46402)) (= lt!1501179 (t!348545 p!3001))))))

(declare-fun b!4218380 () Bool)

(assert (=> b!4218380 (= e!2618868 suffix!1557)))

(declare-fun d!1242617 () Bool)

(assert (=> d!1242617 e!2618867))

(declare-fun res!1733802 () Bool)

(assert (=> d!1242617 (=> (not res!1733802) (not e!2618867))))

(assert (=> d!1242617 (= res!1733802 (= (content!7280 lt!1501179) ((_ map or) (content!7280 (t!348545 p!3001)) (content!7280 suffix!1557))))))

(assert (=> d!1242617 (= lt!1501179 e!2618868)))

(declare-fun c!717983 () Bool)

(assert (=> d!1242617 (= c!717983 ((_ is Nil!46402) (t!348545 p!3001)))))

(assert (=> d!1242617 (= (++!11852 (t!348545 p!3001) suffix!1557) lt!1501179)))

(declare-fun b!4218382 () Bool)

(declare-fun res!1733803 () Bool)

(assert (=> b!4218382 (=> (not res!1733803) (not e!2618867))))

(assert (=> b!4218382 (= res!1733803 (= (size!34075 lt!1501179) (+ (size!34075 (t!348545 p!3001)) (size!34075 suffix!1557))))))

(assert (= (and d!1242617 c!717983) b!4218380))

(assert (= (and d!1242617 (not c!717983)) b!4218381))

(assert (= (and d!1242617 res!1733802) b!4218382))

(assert (= (and b!4218382 res!1733803) b!4218383))

(declare-fun m!4806899 () Bool)

(assert (=> b!4218381 m!4806899))

(declare-fun m!4806901 () Bool)

(assert (=> d!1242617 m!4806901))

(declare-fun m!4806903 () Bool)

(assert (=> d!1242617 m!4806903))

(assert (=> d!1242617 m!4806679))

(declare-fun m!4806905 () Bool)

(assert (=> b!4218382 m!4806905))

(assert (=> b!4218382 m!4806597))

(assert (=> b!4218382 m!4806683))

(assert (=> b!4218158 d!1242617))

(declare-fun d!1242619 () Bool)

(assert (=> d!1242619 (= (list!16787 lt!1501146) (list!16789 (c!717901 lt!1501146)))))

(declare-fun bs!597582 () Bool)

(assert (= bs!597582 d!1242619))

(declare-fun m!4806907 () Bool)

(assert (=> bs!597582 m!4806907))

(assert (=> d!1242513 d!1242619))

(declare-fun d!1242621 () Bool)

(assert (=> d!1242621 (= (isEmpty!27491 lt!1501060) (not ((_ is Some!9965) lt!1501060)))))

(assert (=> d!1242367 d!1242621))

(declare-fun d!1242623 () Bool)

(assert (=> d!1242623 (= (isEmpty!27493 (_1!25201 lt!1501063)) ((_ is Nil!46402) (_1!25201 lt!1501063)))))

(assert (=> d!1242367 d!1242623))

(declare-fun d!1242625 () Bool)

(declare-fun lt!1501202 () tuple2!44134)

(assert (=> d!1242625 (= (++!11852 (_1!25201 lt!1501202) (_2!25201 lt!1501202)) input!3517)))

(declare-fun sizeTr!321 (List!46526 Int) Int)

(assert (=> d!1242625 (= lt!1501202 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 0 input!3517 input!3517 (sizeTr!321 input!3517 0)))))

(declare-fun lt!1501201 () Unit!65553)

(declare-fun lt!1501199 () Unit!65553)

(assert (=> d!1242625 (= lt!1501201 lt!1501199)))

(declare-fun lt!1501198 () List!46526)

(declare-fun lt!1501203 () Int)

(assert (=> d!1242625 (= (sizeTr!321 lt!1501198 lt!1501203) (+ (size!34075 lt!1501198) lt!1501203))))

(declare-fun lemmaSizeTrEqualsSize!320 (List!46526 Int) Unit!65553)

(assert (=> d!1242625 (= lt!1501199 (lemmaSizeTrEqualsSize!320 lt!1501198 lt!1501203))))

(assert (=> d!1242625 (= lt!1501203 0)))

(assert (=> d!1242625 (= lt!1501198 Nil!46402)))

(declare-fun lt!1501200 () Unit!65553)

(declare-fun lt!1501197 () Unit!65553)

(assert (=> d!1242625 (= lt!1501200 lt!1501197)))

(declare-fun lt!1501196 () Int)

(assert (=> d!1242625 (= (sizeTr!321 input!3517 lt!1501196) (+ (size!34075 input!3517) lt!1501196))))

(assert (=> d!1242625 (= lt!1501197 (lemmaSizeTrEqualsSize!320 input!3517 lt!1501196))))

(assert (=> d!1242625 (= lt!1501196 0)))

(assert (=> d!1242625 (validRegex!5757 (regex!7778 rBis!178))))

(assert (=> d!1242625 (= (findLongestMatch!1574 (regex!7778 rBis!178) input!3517) lt!1501202)))

(declare-fun bs!597583 () Bool)

(assert (= bs!597583 d!1242625))

(assert (=> bs!597583 m!4806331))

(declare-fun m!4806909 () Bool)

(assert (=> bs!597583 m!4806909))

(declare-fun m!4806911 () Bool)

(assert (=> bs!597583 m!4806911))

(declare-fun m!4806913 () Bool)

(assert (=> bs!597583 m!4806913))

(declare-fun m!4806915 () Bool)

(assert (=> bs!597583 m!4806915))

(declare-fun m!4806917 () Bool)

(assert (=> bs!597583 m!4806917))

(declare-fun m!4806919 () Bool)

(assert (=> bs!597583 m!4806919))

(declare-fun m!4806921 () Bool)

(assert (=> bs!597583 m!4806921))

(assert (=> bs!597583 m!4806463))

(assert (=> bs!597583 m!4806917))

(declare-fun m!4806923 () Bool)

(assert (=> bs!597583 m!4806923))

(assert (=> d!1242367 d!1242625))

(assert (=> d!1242367 d!1242429))

(declare-fun b!4218387 () Bool)

(declare-fun e!2618870 () List!46526)

(assert (=> b!4218387 (= e!2618870 (++!11852 (list!16789 (left!34517 (c!717901 (charsOf!5201 (_1!25199 lt!1500990))))) (list!16789 (right!34847 (c!717901 (charsOf!5201 (_1!25199 lt!1500990)))))))))

(declare-fun b!4218384 () Bool)

(declare-fun e!2618869 () List!46526)

(assert (=> b!4218384 (= e!2618869 Nil!46402)))

(declare-fun b!4218386 () Bool)

(assert (=> b!4218386 (= e!2618870 (list!16790 (xs!17295 (c!717901 (charsOf!5201 (_1!25199 lt!1500990))))))))

(declare-fun d!1242627 () Bool)

(declare-fun c!717984 () Bool)

(assert (=> d!1242627 (= c!717984 ((_ is Empty!13989) (c!717901 (charsOf!5201 (_1!25199 lt!1500990)))))))

(assert (=> d!1242627 (= (list!16789 (c!717901 (charsOf!5201 (_1!25199 lt!1500990)))) e!2618869)))

(declare-fun b!4218385 () Bool)

(assert (=> b!4218385 (= e!2618869 e!2618870)))

(declare-fun c!717985 () Bool)

(assert (=> b!4218385 (= c!717985 ((_ is Leaf!21622) (c!717901 (charsOf!5201 (_1!25199 lt!1500990)))))))

(assert (= (and d!1242627 c!717984) b!4218384))

(assert (= (and d!1242627 (not c!717984)) b!4218385))

(assert (= (and b!4218385 c!717985) b!4218386))

(assert (= (and b!4218385 (not c!717985)) b!4218387))

(declare-fun m!4806925 () Bool)

(assert (=> b!4218387 m!4806925))

(declare-fun m!4806927 () Bool)

(assert (=> b!4218387 m!4806927))

(assert (=> b!4218387 m!4806925))

(assert (=> b!4218387 m!4806927))

(declare-fun m!4806929 () Bool)

(assert (=> b!4218387 m!4806929))

(declare-fun m!4806931 () Bool)

(assert (=> b!4218386 m!4806931))

(assert (=> d!1242491 d!1242627))

(declare-fun b!4218389 () Bool)

(declare-fun e!2618872 () List!46526)

(assert (=> b!4218389 (= e!2618872 (Cons!46402 (h!51822 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) (++!11852 (t!348545 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) (_2!25199 (get!15101 lt!1501147)))))))

(declare-fun b!4218391 () Bool)

(declare-fun e!2618871 () Bool)

(declare-fun lt!1501204 () List!46526)

(assert (=> b!4218391 (= e!2618871 (or (not (= (_2!25199 (get!15101 lt!1501147)) Nil!46402)) (= lt!1501204 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))))))))

(declare-fun b!4218388 () Bool)

(assert (=> b!4218388 (= e!2618872 (_2!25199 (get!15101 lt!1501147)))))

(declare-fun d!1242629 () Bool)

(assert (=> d!1242629 e!2618871))

(declare-fun res!1733804 () Bool)

(assert (=> d!1242629 (=> (not res!1733804) (not e!2618871))))

(assert (=> d!1242629 (= res!1733804 (= (content!7280 lt!1501204) ((_ map or) (content!7280 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) (content!7280 (_2!25199 (get!15101 lt!1501147))))))))

(assert (=> d!1242629 (= lt!1501204 e!2618872)))

(declare-fun c!717986 () Bool)

(assert (=> d!1242629 (= c!717986 ((_ is Nil!46402) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))))))

(assert (=> d!1242629 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147)))) (_2!25199 (get!15101 lt!1501147))) lt!1501204)))

(declare-fun b!4218390 () Bool)

(declare-fun res!1733805 () Bool)

(assert (=> b!4218390 (=> (not res!1733805) (not e!2618871))))

(assert (=> b!4218390 (= res!1733805 (= (size!34075 lt!1501204) (+ (size!34075 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501147))))) (size!34075 (_2!25199 (get!15101 lt!1501147))))))))

(assert (= (and d!1242629 c!717986) b!4218388))

(assert (= (and d!1242629 (not c!717986)) b!4218389))

(assert (= (and d!1242629 res!1733804) b!4218390))

(assert (= (and b!4218390 res!1733805) b!4218391))

(declare-fun m!4806933 () Bool)

(assert (=> b!4218389 m!4806933))

(declare-fun m!4806935 () Bool)

(assert (=> d!1242629 m!4806935))

(assert (=> d!1242629 m!4806703))

(declare-fun m!4806937 () Bool)

(assert (=> d!1242629 m!4806937))

(declare-fun m!4806939 () Bool)

(assert (=> d!1242629 m!4806939))

(declare-fun m!4806941 () Bool)

(assert (=> b!4218390 m!4806941))

(assert (=> b!4218390 m!4806703))

(declare-fun m!4806943 () Bool)

(assert (=> b!4218390 m!4806943))

(assert (=> b!4218390 m!4806705))

(assert (=> b!4218166 d!1242629))

(assert (=> b!4218166 d!1242535))

(assert (=> b!4218166 d!1242537))

(assert (=> b!4218166 d!1242539))

(declare-fun d!1242631 () Bool)

(declare-fun lt!1501207 () Int)

(assert (=> d!1242631 (= lt!1501207 (size!34075 (list!16787 (seqFromList!5761 (_1!25201 lt!1501063)))))))

(declare-fun size!34078 (Conc!13989) Int)

(assert (=> d!1242631 (= lt!1501207 (size!34078 (c!717901 (seqFromList!5761 (_1!25201 lt!1501063)))))))

(assert (=> d!1242631 (= (size!34077 (seqFromList!5761 (_1!25201 lt!1501063))) lt!1501207)))

(declare-fun bs!597584 () Bool)

(assert (= bs!597584 d!1242631))

(assert (=> bs!597584 m!4806365))

(declare-fun m!4806945 () Bool)

(assert (=> bs!597584 m!4806945))

(assert (=> bs!597584 m!4806945))

(declare-fun m!4806947 () Bool)

(assert (=> bs!597584 m!4806947))

(declare-fun m!4806949 () Bool)

(assert (=> bs!597584 m!4806949))

(assert (=> b!4217958 d!1242631))

(declare-fun d!1242633 () Bool)

(assert (=> d!1242633 (= (seqFromList!5761 (_1!25201 lt!1501063)) (fromListB!2635 (_1!25201 lt!1501063)))))

(declare-fun bs!597585 () Bool)

(assert (= bs!597585 d!1242633))

(declare-fun m!4806951 () Bool)

(assert (=> bs!597585 m!4806951))

(assert (=> b!4217958 d!1242633))

(declare-fun d!1242635 () Bool)

(declare-fun e!2618875 () Bool)

(assert (=> d!1242635 e!2618875))

(declare-fun res!1733808 () Bool)

(assert (=> d!1242635 (=> res!1733808 e!2618875)))

(assert (=> d!1242635 (= res!1733808 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun lt!1501210 () Unit!65553)

(declare-fun choose!25856 (Regex!12683 List!46526) Unit!65553)

(assert (=> d!1242635 (= lt!1501210 (choose!25856 (regex!7778 rBis!178) input!3517))))

(assert (=> d!1242635 (validRegex!5757 (regex!7778 rBis!178))))

(assert (=> d!1242635 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1634 (regex!7778 rBis!178) input!3517) lt!1501210)))

(declare-fun b!4218394 () Bool)

(assert (=> b!4218394 (= e!2618875 (matchR!6380 (regex!7778 rBis!178) (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (= (and d!1242635 (not res!1733808)) b!4218394))

(assert (=> d!1242635 m!4806329))

(assert (=> d!1242635 m!4806331))

(assert (=> d!1242635 m!4806333))

(assert (=> d!1242635 m!4806359))

(declare-fun m!4806953 () Bool)

(assert (=> d!1242635 m!4806953))

(assert (=> d!1242635 m!4806463))

(assert (=> d!1242635 m!4806329))

(assert (=> d!1242635 m!4806331))

(assert (=> b!4218394 m!4806329))

(assert (=> b!4218394 m!4806331))

(assert (=> b!4218394 m!4806329))

(assert (=> b!4218394 m!4806331))

(assert (=> b!4218394 m!4806333))

(assert (=> b!4218394 m!4806335))

(assert (=> b!4217958 d!1242635))

(declare-fun d!1242637 () Bool)

(assert (=> d!1242637 (= (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) ((_ is Nil!46402) (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> b!4217958 d!1242637))

(declare-fun d!1242639 () Bool)

(declare-fun lt!1501211 () Int)

(assert (=> d!1242639 (>= lt!1501211 0)))

(declare-fun e!2618876 () Int)

(assert (=> d!1242639 (= lt!1501211 e!2618876)))

(declare-fun c!717987 () Bool)

(assert (=> d!1242639 (= c!717987 ((_ is Nil!46402) Nil!46402))))

(assert (=> d!1242639 (= (size!34075 Nil!46402) lt!1501211)))

(declare-fun b!4218395 () Bool)

(assert (=> b!4218395 (= e!2618876 0)))

(declare-fun b!4218396 () Bool)

(assert (=> b!4218396 (= e!2618876 (+ 1 (size!34075 (t!348545 Nil!46402))))))

(assert (= (and d!1242639 c!717987) b!4218395))

(assert (= (and d!1242639 (not c!717987)) b!4218396))

(declare-fun m!4806955 () Bool)

(assert (=> b!4218396 m!4806955))

(assert (=> b!4217958 d!1242639))

(declare-fun bm!293062 () Bool)

(declare-fun call!293070 () Unit!65553)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1030 (List!46526 List!46526 List!46526) Unit!65553)

(assert (=> bm!293062 (= call!293070 (lemmaIsPrefixSameLengthThenSameList!1030 input!3517 Nil!46402 input!3517))))

(declare-fun b!4218439 () Bool)

(declare-fun e!2618899 () tuple2!44134)

(declare-fun call!293069 () tuple2!44134)

(assert (=> b!4218439 (= e!2618899 call!293069)))

(declare-fun bm!293063 () Bool)

(declare-fun call!293071 () List!46526)

(assert (=> bm!293063 (= call!293071 (tail!6797 input!3517))))

(declare-fun bm!293064 () Bool)

(declare-fun call!293068 () Regex!12683)

(declare-fun call!293073 () C!25560)

(assert (=> bm!293064 (= call!293068 (derivativeStep!3834 (regex!7778 rBis!178) call!293073))))

(declare-fun b!4218440 () Bool)

(declare-fun e!2618900 () tuple2!44134)

(assert (=> b!4218440 (= e!2618900 (tuple2!44135 Nil!46402 input!3517))))

(declare-fun b!4218441 () Bool)

(declare-fun e!2618905 () Unit!65553)

(declare-fun Unit!65563 () Unit!65553)

(assert (=> b!4218441 (= e!2618905 Unit!65563)))

(declare-fun b!4218442 () Bool)

(declare-fun e!2618906 () Bool)

(declare-fun lt!1501290 () tuple2!44134)

(assert (=> b!4218442 (= e!2618906 (>= (size!34075 (_1!25201 lt!1501290)) (size!34075 Nil!46402)))))

(declare-fun b!4218443 () Bool)

(declare-fun e!2618903 () Bool)

(assert (=> b!4218443 (= e!2618903 e!2618906)))

(declare-fun res!1733815 () Bool)

(assert (=> b!4218443 (=> res!1733815 e!2618906)))

(assert (=> b!4218443 (= res!1733815 (isEmpty!27493 (_1!25201 lt!1501290)))))

(declare-fun b!4218444 () Bool)

(declare-fun e!2618901 () tuple2!44134)

(assert (=> b!4218444 (= e!2618901 (tuple2!44135 Nil!46402 input!3517))))

(declare-fun b!4218446 () Bool)

(assert (=> b!4218446 (= e!2618900 (tuple2!44135 Nil!46402 Nil!46402))))

(declare-fun b!4218447 () Bool)

(declare-fun c!718010 () Bool)

(declare-fun call!293074 () Bool)

(assert (=> b!4218447 (= c!718010 call!293074)))

(declare-fun lt!1501277 () Unit!65553)

(declare-fun lt!1501298 () Unit!65553)

(assert (=> b!4218447 (= lt!1501277 lt!1501298)))

(declare-fun lt!1501278 () C!25560)

(declare-fun lt!1501280 () List!46526)

(assert (=> b!4218447 (= (++!11852 (++!11852 Nil!46402 (Cons!46402 lt!1501278 Nil!46402)) lt!1501280) input!3517)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1302 (List!46526 C!25560 List!46526 List!46526) Unit!65553)

(assert (=> b!4218447 (= lt!1501298 (lemmaMoveElementToOtherListKeepsConcatEq!1302 Nil!46402 lt!1501278 lt!1501280 input!3517))))

(assert (=> b!4218447 (= lt!1501280 (tail!6797 input!3517))))

(assert (=> b!4218447 (= lt!1501278 (head!8950 input!3517))))

(declare-fun lt!1501284 () Unit!65553)

(declare-fun lt!1501283 () Unit!65553)

(assert (=> b!4218447 (= lt!1501284 lt!1501283)))

(declare-fun getSuffix!2859 (List!46526 List!46526) List!46526)

(assert (=> b!4218447 (isPrefix!4637 (++!11852 Nil!46402 (Cons!46402 (head!8950 (getSuffix!2859 input!3517 Nil!46402)) Nil!46402)) input!3517)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!684 (List!46526 List!46526) Unit!65553)

(assert (=> b!4218447 (= lt!1501283 (lemmaAddHeadSuffixToPrefixStillPrefix!684 Nil!46402 input!3517))))

(declare-fun lt!1501286 () Unit!65553)

(declare-fun lt!1501297 () Unit!65553)

(assert (=> b!4218447 (= lt!1501286 lt!1501297)))

(assert (=> b!4218447 (= lt!1501297 (lemmaAddHeadSuffixToPrefixStillPrefix!684 Nil!46402 input!3517))))

(declare-fun lt!1501282 () List!46526)

(assert (=> b!4218447 (= lt!1501282 (++!11852 Nil!46402 (Cons!46402 (head!8950 input!3517) Nil!46402)))))

(declare-fun lt!1501300 () Unit!65553)

(assert (=> b!4218447 (= lt!1501300 e!2618905)))

(declare-fun c!718005 () Bool)

(assert (=> b!4218447 (= c!718005 (= (size!34075 Nil!46402) (size!34075 input!3517)))))

(declare-fun lt!1501303 () Unit!65553)

(declare-fun lt!1501304 () Unit!65553)

(assert (=> b!4218447 (= lt!1501303 lt!1501304)))

(assert (=> b!4218447 (<= (size!34075 Nil!46402) (size!34075 input!3517))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!596 (List!46526 List!46526) Unit!65553)

(assert (=> b!4218447 (= lt!1501304 (lemmaIsPrefixThenSmallerEqSize!596 Nil!46402 input!3517))))

(declare-fun e!2618904 () tuple2!44134)

(assert (=> b!4218447 (= e!2618904 e!2618899)))

(declare-fun b!4218448 () Bool)

(declare-fun c!718007 () Bool)

(assert (=> b!4218448 (= c!718007 call!293074)))

(declare-fun lt!1501296 () Unit!65553)

(declare-fun lt!1501294 () Unit!65553)

(assert (=> b!4218448 (= lt!1501296 lt!1501294)))

(assert (=> b!4218448 (= input!3517 Nil!46402)))

(assert (=> b!4218448 (= lt!1501294 call!293070)))

(declare-fun lt!1501279 () Unit!65553)

(declare-fun lt!1501281 () Unit!65553)

(assert (=> b!4218448 (= lt!1501279 lt!1501281)))

(declare-fun call!293067 () Bool)

(assert (=> b!4218448 call!293067))

(declare-fun call!293072 () Unit!65553)

(assert (=> b!4218448 (= lt!1501281 call!293072)))

(assert (=> b!4218448 (= e!2618904 e!2618900)))

(declare-fun bm!293065 () Bool)

(assert (=> bm!293065 (= call!293069 (findLongestMatchInner!1661 call!293068 lt!1501282 (+ (size!34075 Nil!46402) 1) call!293071 input!3517 (size!34075 input!3517)))))

(declare-fun bm!293066 () Bool)

(assert (=> bm!293066 (= call!293067 (isPrefix!4637 input!3517 input!3517))))

(declare-fun b!4218449 () Bool)

(declare-fun Unit!65566 () Unit!65553)

(assert (=> b!4218449 (= e!2618905 Unit!65566)))

(declare-fun lt!1501287 () Unit!65553)

(assert (=> b!4218449 (= lt!1501287 call!293072)))

(assert (=> b!4218449 call!293067))

(declare-fun lt!1501302 () Unit!65553)

(assert (=> b!4218449 (= lt!1501302 lt!1501287)))

(declare-fun lt!1501292 () Unit!65553)

(assert (=> b!4218449 (= lt!1501292 call!293070)))

(assert (=> b!4218449 (= input!3517 Nil!46402)))

(declare-fun lt!1501289 () Unit!65553)

(assert (=> b!4218449 (= lt!1501289 lt!1501292)))

(assert (=> b!4218449 false))

(declare-fun bm!293067 () Bool)

(assert (=> bm!293067 (= call!293074 (nullable!4470 (regex!7778 rBis!178)))))

(declare-fun b!4218450 () Bool)

(assert (=> b!4218450 (= e!2618901 e!2618904)))

(declare-fun c!718009 () Bool)

(assert (=> b!4218450 (= c!718009 (= (size!34075 Nil!46402) (size!34075 input!3517)))))

(declare-fun bm!293068 () Bool)

(assert (=> bm!293068 (= call!293073 (head!8950 input!3517))))

(declare-fun b!4218451 () Bool)

(declare-fun e!2618902 () tuple2!44134)

(assert (=> b!4218451 (= e!2618899 e!2618902)))

(declare-fun lt!1501293 () tuple2!44134)

(assert (=> b!4218451 (= lt!1501293 call!293069)))

(declare-fun c!718008 () Bool)

(assert (=> b!4218451 (= c!718008 (isEmpty!27493 (_1!25201 lt!1501293)))))

(declare-fun bm!293069 () Bool)

(assert (=> bm!293069 (= call!293072 (lemmaIsPrefixRefl!3054 input!3517 input!3517))))

(declare-fun b!4218452 () Bool)

(assert (=> b!4218452 (= e!2618902 (tuple2!44135 Nil!46402 input!3517))))

(declare-fun d!1242641 () Bool)

(assert (=> d!1242641 e!2618903))

(declare-fun res!1733816 () Bool)

(assert (=> d!1242641 (=> (not res!1733816) (not e!2618903))))

(assert (=> d!1242641 (= res!1733816 (= (++!11852 (_1!25201 lt!1501290) (_2!25201 lt!1501290)) input!3517))))

(assert (=> d!1242641 (= lt!1501290 e!2618901)))

(declare-fun c!718006 () Bool)

(declare-fun lostCause!1058 (Regex!12683) Bool)

(assert (=> d!1242641 (= c!718006 (lostCause!1058 (regex!7778 rBis!178)))))

(declare-fun lt!1501299 () Unit!65553)

(declare-fun Unit!65567 () Unit!65553)

(assert (=> d!1242641 (= lt!1501299 Unit!65567)))

(assert (=> d!1242641 (= (getSuffix!2859 input!3517 Nil!46402) input!3517)))

(declare-fun lt!1501288 () Unit!65553)

(declare-fun lt!1501301 () Unit!65553)

(assert (=> d!1242641 (= lt!1501288 lt!1501301)))

(declare-fun lt!1501295 () List!46526)

(assert (=> d!1242641 (= input!3517 lt!1501295)))

(declare-fun lemmaSamePrefixThenSameSuffix!2275 (List!46526 List!46526 List!46526 List!46526 List!46526) Unit!65553)

(assert (=> d!1242641 (= lt!1501301 (lemmaSamePrefixThenSameSuffix!2275 Nil!46402 input!3517 Nil!46402 lt!1501295 input!3517))))

(assert (=> d!1242641 (= lt!1501295 (getSuffix!2859 input!3517 Nil!46402))))

(declare-fun lt!1501291 () Unit!65553)

(declare-fun lt!1501285 () Unit!65553)

(assert (=> d!1242641 (= lt!1501291 lt!1501285)))

(assert (=> d!1242641 (isPrefix!4637 Nil!46402 (++!11852 Nil!46402 input!3517))))

(assert (=> d!1242641 (= lt!1501285 (lemmaConcatTwoListThenFirstIsPrefix!3092 Nil!46402 input!3517))))

(assert (=> d!1242641 (validRegex!5757 (regex!7778 rBis!178))))

(assert (=> d!1242641 (= (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)) lt!1501290)))

(declare-fun b!4218445 () Bool)

(assert (=> b!4218445 (= e!2618902 lt!1501293)))

(assert (= (and d!1242641 c!718006) b!4218444))

(assert (= (and d!1242641 (not c!718006)) b!4218450))

(assert (= (and b!4218450 c!718009) b!4218448))

(assert (= (and b!4218450 (not c!718009)) b!4218447))

(assert (= (and b!4218448 c!718007) b!4218446))

(assert (= (and b!4218448 (not c!718007)) b!4218440))

(assert (= (and b!4218447 c!718005) b!4218449))

(assert (= (and b!4218447 (not c!718005)) b!4218441))

(assert (= (and b!4218447 c!718010) b!4218451))

(assert (= (and b!4218447 (not c!718010)) b!4218439))

(assert (= (and b!4218451 c!718008) b!4218452))

(assert (= (and b!4218451 (not c!718008)) b!4218445))

(assert (= (or b!4218451 b!4218439) bm!293068))

(assert (= (or b!4218451 b!4218439) bm!293063))

(assert (= (or b!4218451 b!4218439) bm!293064))

(assert (= (or b!4218451 b!4218439) bm!293065))

(assert (= (or b!4218448 b!4218449) bm!293069))

(assert (= (or b!4218448 b!4218447) bm!293067))

(assert (= (or b!4218448 b!4218449) bm!293066))

(assert (= (or b!4218448 b!4218449) bm!293062))

(assert (= (and d!1242641 res!1733816) b!4218443))

(assert (= (and b!4218443 (not res!1733815)) b!4218442))

(assert (=> b!4218447 m!4806331))

(declare-fun m!4806983 () Bool)

(assert (=> b!4218447 m!4806983))

(declare-fun m!4806985 () Bool)

(assert (=> b!4218447 m!4806985))

(declare-fun m!4806987 () Bool)

(assert (=> b!4218447 m!4806987))

(declare-fun m!4806989 () Bool)

(assert (=> b!4218447 m!4806989))

(assert (=> b!4218447 m!4806417))

(declare-fun m!4806991 () Bool)

(assert (=> b!4218447 m!4806991))

(assert (=> b!4218447 m!4806329))

(declare-fun m!4806993 () Bool)

(assert (=> b!4218447 m!4806993))

(assert (=> b!4218447 m!4806419))

(assert (=> b!4218447 m!4806989))

(declare-fun m!4806995 () Bool)

(assert (=> b!4218447 m!4806995))

(declare-fun m!4806997 () Bool)

(assert (=> b!4218447 m!4806997))

(declare-fun m!4806999 () Bool)

(assert (=> b!4218447 m!4806999))

(assert (=> b!4218447 m!4806993))

(declare-fun m!4807001 () Bool)

(assert (=> b!4218447 m!4807001))

(assert (=> b!4218447 m!4806997))

(declare-fun m!4807003 () Bool)

(assert (=> bm!293064 m!4807003))

(assert (=> bm!293069 m!4806071))

(assert (=> bm!293063 m!4806419))

(assert (=> bm!293068 m!4806417))

(assert (=> bm!293067 m!4806465))

(declare-fun m!4807005 () Bool)

(assert (=> b!4218451 m!4807005))

(declare-fun m!4807007 () Bool)

(assert (=> bm!293062 m!4807007))

(declare-fun m!4807009 () Bool)

(assert (=> b!4218443 m!4807009))

(declare-fun m!4807011 () Bool)

(assert (=> d!1242641 m!4807011))

(declare-fun m!4807013 () Bool)

(assert (=> d!1242641 m!4807013))

(assert (=> d!1242641 m!4806463))

(assert (=> d!1242641 m!4806989))

(declare-fun m!4807015 () Bool)

(assert (=> d!1242641 m!4807015))

(assert (=> d!1242641 m!4807013))

(declare-fun m!4807017 () Bool)

(assert (=> d!1242641 m!4807017))

(declare-fun m!4807019 () Bool)

(assert (=> d!1242641 m!4807019))

(declare-fun m!4807021 () Bool)

(assert (=> d!1242641 m!4807021))

(declare-fun m!4807023 () Bool)

(assert (=> b!4218442 m!4807023))

(assert (=> b!4218442 m!4806329))

(assert (=> bm!293066 m!4806069))

(assert (=> bm!293065 m!4806331))

(declare-fun m!4807025 () Bool)

(assert (=> bm!293065 m!4807025))

(assert (=> b!4217958 d!1242641))

(declare-fun bs!597589 () Bool)

(declare-fun d!1242665 () Bool)

(assert (= bs!597589 (and d!1242665 d!1242571)))

(declare-fun lambda!129808 () Int)

(assert (=> bs!597589 (= (and (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (= lambda!129808 lambda!129796))))

(declare-fun b!4218457 () Bool)

(declare-fun e!2618909 () Bool)

(assert (=> b!4218457 (= e!2618909 true)))

(assert (=> d!1242665 e!2618909))

(assert (= d!1242665 b!4218457))

(assert (=> b!4218457 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 rBis!178))) (dynLambda!19988 order!24549 lambda!129808))))

(assert (=> b!4218457 (< (dynLambda!19987 order!24547 (toChars!10357 (transformation!7778 rBis!178))) (dynLambda!19988 order!24549 lambda!129808))))

(assert (=> d!1242665 (= (list!16787 (dynLambda!19986 (toChars!10357 (transformation!7778 rBis!178)) (dynLambda!19991 (toValue!10498 (transformation!7778 rBis!178)) (seqFromList!5761 (_1!25201 lt!1501063))))) (list!16787 (seqFromList!5761 (_1!25201 lt!1501063))))))

(declare-fun lt!1501307 () Unit!65553)

(declare-fun ForallOf!1086 (Int BalanceConc!27572) Unit!65553)

(assert (=> d!1242665 (= lt!1501307 (ForallOf!1086 lambda!129808 (seqFromList!5761 (_1!25201 lt!1501063))))))

(assert (=> d!1242665 (= (lemmaSemiInverse!2502 (transformation!7778 rBis!178) (seqFromList!5761 (_1!25201 lt!1501063))) lt!1501307)))

(declare-fun b_lambda!124293 () Bool)

(assert (=> (not b_lambda!124293) (not d!1242665)))

(declare-fun t!348643 () Bool)

(declare-fun tb!253309 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 rBis!178))) t!348643) tb!253309))

(declare-fun tp!1290443 () Bool)

(declare-fun e!2618912 () Bool)

(declare-fun b!4218462 () Bool)

(assert (=> b!4218462 (= e!2618912 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 rBis!178)) (dynLambda!19991 (toValue!10498 (transformation!7778 rBis!178)) (seqFromList!5761 (_1!25201 lt!1501063)))))) tp!1290443))))

(declare-fun result!308752 () Bool)

(assert (=> tb!253309 (= result!308752 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 rBis!178)) (dynLambda!19991 (toValue!10498 (transformation!7778 rBis!178)) (seqFromList!5761 (_1!25201 lt!1501063))))) e!2618912))))

(assert (= tb!253309 b!4218462))

(declare-fun m!4807027 () Bool)

(assert (=> b!4218462 m!4807027))

(declare-fun m!4807029 () Bool)

(assert (=> tb!253309 m!4807029))

(assert (=> d!1242665 t!348643))

(declare-fun b_and!332531 () Bool)

(assert (= b_and!332513 (and (=> t!348643 result!308752) b_and!332531)))

(declare-fun t!348645 () Bool)

(declare-fun tb!253311 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 rBis!178))) t!348645) tb!253311))

(declare-fun result!308754 () Bool)

(assert (= result!308754 result!308752))

(assert (=> d!1242665 t!348645))

(declare-fun b_and!332533 () Bool)

(assert (= b_and!332517 (and (=> t!348645 result!308754) b_and!332533)))

(declare-fun tb!253313 () Bool)

(declare-fun t!348647 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 rBis!178))) t!348647) tb!253313))

(declare-fun result!308756 () Bool)

(assert (= result!308756 result!308752))

(assert (=> d!1242665 t!348647))

(declare-fun b_and!332535 () Bool)

(assert (= b_and!332519 (and (=> t!348647 result!308756) b_and!332535)))

(declare-fun tb!253315 () Bool)

(declare-fun t!348649 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 rBis!178))) t!348649) tb!253315))

(declare-fun result!308758 () Bool)

(assert (= result!308758 result!308752))

(assert (=> d!1242665 t!348649))

(declare-fun b_and!332537 () Bool)

(assert (= b_and!332511 (and (=> t!348649 result!308758) b_and!332537)))

(declare-fun t!348651 () Bool)

(declare-fun tb!253317 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 rBis!178))) t!348651) tb!253317))

(declare-fun result!308760 () Bool)

(assert (= result!308760 result!308752))

(assert (=> d!1242665 t!348651))

(declare-fun b_and!332539 () Bool)

(assert (= b_and!332515 (and (=> t!348651 result!308760) b_and!332539)))

(declare-fun b_lambda!124295 () Bool)

(assert (=> (not b_lambda!124295) (not d!1242665)))

(declare-fun t!348653 () Bool)

(declare-fun tb!253319 () Bool)

(assert (=> (and b!4217746 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 rBis!178))) t!348653) tb!253319))

(declare-fun result!308762 () Bool)

(assert (=> tb!253319 (= result!308762 (inv!21 (dynLambda!19991 (toValue!10498 (transformation!7778 rBis!178)) (seqFromList!5761 (_1!25201 lt!1501063)))))))

(declare-fun m!4807031 () Bool)

(assert (=> tb!253319 m!4807031))

(assert (=> d!1242665 t!348653))

(declare-fun b_and!332541 () Bool)

(assert (= b_and!332525 (and (=> t!348653 result!308762) b_and!332541)))

(declare-fun t!348655 () Bool)

(declare-fun tb!253321 () Bool)

(assert (=> (and b!4217757 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 rBis!178))) t!348655) tb!253321))

(declare-fun result!308764 () Bool)

(assert (= result!308764 result!308762))

(assert (=> d!1242665 t!348655))

(declare-fun b_and!332543 () Bool)

(assert (= b_and!332527 (and (=> t!348655 result!308764) b_and!332543)))

(declare-fun t!348657 () Bool)

(declare-fun tb!253323 () Bool)

(assert (=> (and b!4218232 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 rBis!178))) t!348657) tb!253323))

(declare-fun result!308766 () Bool)

(assert (= result!308766 result!308762))

(assert (=> d!1242665 t!348657))

(declare-fun b_and!332545 () Bool)

(assert (= b_and!332521 (and (=> t!348657 result!308766) b_and!332545)))

(declare-fun tb!253325 () Bool)

(declare-fun t!348659 () Bool)

(assert (=> (and b!4217775 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 rBis!178))) t!348659) tb!253325))

(declare-fun result!308768 () Bool)

(assert (= result!308768 result!308762))

(assert (=> d!1242665 t!348659))

(declare-fun b_and!332547 () Bool)

(assert (= b_and!332529 (and (=> t!348659 result!308768) b_and!332547)))

(declare-fun t!348661 () Bool)

(declare-fun tb!253327 () Bool)

(assert (=> (and b!4217752 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 rBis!178))) t!348661) tb!253327))

(declare-fun result!308770 () Bool)

(assert (= result!308770 result!308762))

(assert (=> d!1242665 t!348661))

(declare-fun b_and!332549 () Bool)

(assert (= b_and!332523 (and (=> t!348661 result!308770) b_and!332549)))

(declare-fun m!4807033 () Bool)

(assert (=> d!1242665 m!4807033))

(declare-fun m!4807035 () Bool)

(assert (=> d!1242665 m!4807035))

(assert (=> d!1242665 m!4806365))

(declare-fun m!4807037 () Bool)

(assert (=> d!1242665 m!4807037))

(assert (=> d!1242665 m!4807035))

(declare-fun m!4807039 () Bool)

(assert (=> d!1242665 m!4807039))

(assert (=> d!1242665 m!4806365))

(assert (=> d!1242665 m!4806945))

(assert (=> d!1242665 m!4806365))

(assert (=> d!1242665 m!4807033))

(assert (=> b!4217958 d!1242665))

(assert (=> b!4217958 d!1242597))

(declare-fun d!1242667 () Bool)

(assert (=> d!1242667 (= (apply!10701 (transformation!7778 rBis!178) (seqFromList!5761 (_1!25201 lt!1501063))) (dynLambda!19991 (toValue!10498 (transformation!7778 rBis!178)) (seqFromList!5761 (_1!25201 lt!1501063))))))

(declare-fun b_lambda!124297 () Bool)

(assert (=> (not b_lambda!124297) (not d!1242667)))

(assert (=> d!1242667 t!348655))

(declare-fun b_and!332551 () Bool)

(assert (= b_and!332543 (and (=> t!348655 result!308764) b_and!332551)))

(assert (=> d!1242667 t!348659))

(declare-fun b_and!332553 () Bool)

(assert (= b_and!332547 (and (=> t!348659 result!308768) b_and!332553)))

(assert (=> d!1242667 t!348653))

(declare-fun b_and!332555 () Bool)

(assert (= b_and!332541 (and (=> t!348653 result!308762) b_and!332555)))

(assert (=> d!1242667 t!348661))

(declare-fun b_and!332557 () Bool)

(assert (= b_and!332549 (and (=> t!348661 result!308770) b_and!332557)))

(assert (=> d!1242667 t!348657))

(declare-fun b_and!332559 () Bool)

(assert (= b_and!332545 (and (=> t!348657 result!308766) b_and!332559)))

(assert (=> d!1242667 m!4806365))

(assert (=> d!1242667 m!4807033))

(assert (=> b!4217958 d!1242667))

(declare-fun d!1242669 () Bool)

(declare-fun charsToBigInt!0 (List!46525 Int) Int)

(assert (=> d!1242669 (= (inv!15 (value!242202 tBis!41)) (= (charsToBigInt!0 (text!56505 (value!242202 tBis!41)) 0) (value!242197 (value!242202 tBis!41))))))

(declare-fun bs!597590 () Bool)

(assert (= bs!597590 d!1242669))

(declare-fun m!4807041 () Bool)

(assert (=> bs!597590 m!4807041))

(assert (=> b!4218176 d!1242669))

(declare-fun d!1242671 () Bool)

(declare-fun lt!1501364 () Int)

(assert (=> d!1242671 (>= lt!1501364 0)))

(declare-fun e!2618924 () Int)

(assert (=> d!1242671 (= lt!1501364 e!2618924)))

(declare-fun c!718024 () Bool)

(assert (=> d!1242671 (= c!718024 ((_ is Nil!46402) (t!348545 lt!1500997)))))

(assert (=> d!1242671 (= (size!34075 (t!348545 lt!1500997)) lt!1501364)))

(declare-fun b!4218483 () Bool)

(assert (=> b!4218483 (= e!2618924 0)))

(declare-fun b!4218484 () Bool)

(assert (=> b!4218484 (= e!2618924 (+ 1 (size!34075 (t!348545 (t!348545 lt!1500997)))))))

(assert (= (and d!1242671 c!718024) b!4218483))

(assert (= (and d!1242671 (not c!718024)) b!4218484))

(declare-fun m!4807043 () Bool)

(assert (=> b!4218484 m!4807043))

(assert (=> b!4218117 d!1242671))

(declare-fun bs!597591 () Bool)

(declare-fun d!1242673 () Bool)

(assert (= bs!597591 (and d!1242673 d!1242589)))

(declare-fun lambda!129811 () Int)

(assert (=> bs!597591 (= lambda!129811 lambda!129799)))

(assert (=> d!1242673 true))

(declare-fun lt!1501367 () Bool)

(assert (=> d!1242673 (= lt!1501367 (rulesValidInductive!2892 thiss!26544 rules!3967))))

(assert (=> d!1242673 (= lt!1501367 (forall!8497 rules!3967 lambda!129811))))

(assert (=> d!1242673 (= (rulesValid!3049 thiss!26544 rules!3967) lt!1501367)))

(declare-fun bs!597592 () Bool)

(assert (= bs!597592 d!1242673))

(assert (=> bs!597592 m!4806697))

(declare-fun m!4807045 () Bool)

(assert (=> bs!597592 m!4807045))

(assert (=> d!1242525 d!1242673))

(declare-fun bs!597593 () Bool)

(declare-fun d!1242675 () Bool)

(assert (= bs!597593 (and d!1242675 d!1242611)))

(declare-fun lambda!129812 () Int)

(assert (=> bs!597593 (= (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (= lambda!129812 lambda!129802))))

(assert (=> d!1242675 true))

(assert (=> d!1242675 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (rule!10908 t!8364)))) (dynLambda!19990 order!24553 lambda!129812))))

(assert (=> d!1242675 (= (equivClasses!3280 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 t!8364)))) (Forall2!1178 lambda!129812))))

(declare-fun bs!597594 () Bool)

(assert (= bs!597594 d!1242675))

(declare-fun m!4807047 () Bool)

(assert (=> bs!597594 m!4807047))

(assert (=> b!4218142 d!1242675))

(declare-fun d!1242677 () Bool)

(assert (=> d!1242677 (= (isEmpty!27491 (maxPrefixOneRule!3368 thiss!26544 rBis!178 input!3517)) (not ((_ is Some!9965) (maxPrefixOneRule!3368 thiss!26544 rBis!178 input!3517))))))

(assert (=> d!1242441 d!1242677))

(assert (=> d!1242441 d!1242367))

(declare-fun d!1242679 () Bool)

(assert (=> d!1242679 (isEmpty!27491 (maxPrefixOneRule!3368 thiss!26544 rBis!178 input!3517))))

(assert (=> d!1242679 true))

(declare-fun _$62!172 () Unit!65553)

(assert (=> d!1242679 (= (choose!25849 thiss!26544 rBis!178 (t!348546 rules!3967) input!3517) _$62!172)))

(declare-fun bs!597595 () Bool)

(assert (= bs!597595 d!1242679))

(assert (=> bs!597595 m!4806067))

(assert (=> bs!597595 m!4806067))

(assert (=> bs!597595 m!4806471))

(assert (=> d!1242441 d!1242679))

(declare-fun d!1242681 () Bool)

(assert (=> d!1242681 (= (isEmpty!27490 (t!348546 rules!3967)) ((_ is Nil!46403) (t!348546 rules!3967)))))

(assert (=> d!1242441 d!1242681))

(declare-fun b!4218504 () Bool)

(declare-fun e!2618938 () List!46526)

(assert (=> b!4218504 (= e!2618938 (Cons!46402 (h!51822 (t!348545 pBis!121)) (++!11852 (t!348545 (t!348545 pBis!121)) suffixBis!41)))))

(declare-fun lt!1501396 () List!46526)

(declare-fun e!2618937 () Bool)

(declare-fun b!4218506 () Bool)

(assert (=> b!4218506 (= e!2618937 (or (not (= suffixBis!41 Nil!46402)) (= lt!1501396 (t!348545 pBis!121))))))

(declare-fun b!4218503 () Bool)

(assert (=> b!4218503 (= e!2618938 suffixBis!41)))

(declare-fun d!1242683 () Bool)

(assert (=> d!1242683 e!2618937))

(declare-fun res!1733823 () Bool)

(assert (=> d!1242683 (=> (not res!1733823) (not e!2618937))))

(assert (=> d!1242683 (= res!1733823 (= (content!7280 lt!1501396) ((_ map or) (content!7280 (t!348545 pBis!121)) (content!7280 suffixBis!41))))))

(assert (=> d!1242683 (= lt!1501396 e!2618938)))

(declare-fun c!718031 () Bool)

(assert (=> d!1242683 (= c!718031 ((_ is Nil!46402) (t!348545 pBis!121)))))

(assert (=> d!1242683 (= (++!11852 (t!348545 pBis!121) suffixBis!41) lt!1501396)))

(declare-fun b!4218505 () Bool)

(declare-fun res!1733824 () Bool)

(assert (=> b!4218505 (=> (not res!1733824) (not e!2618937))))

(assert (=> b!4218505 (= res!1733824 (= (size!34075 lt!1501396) (+ (size!34075 (t!348545 pBis!121)) (size!34075 suffixBis!41))))))

(assert (= (and d!1242683 c!718031) b!4218503))

(assert (= (and d!1242683 (not c!718031)) b!4218504))

(assert (= (and d!1242683 res!1733823) b!4218505))

(assert (= (and b!4218505 res!1733824) b!4218506))

(declare-fun m!4807097 () Bool)

(assert (=> b!4218504 m!4807097))

(declare-fun m!4807099 () Bool)

(assert (=> d!1242683 m!4807099))

(declare-fun m!4807101 () Bool)

(assert (=> d!1242683 m!4807101))

(assert (=> d!1242683 m!4806719))

(declare-fun m!4807103 () Bool)

(assert (=> b!4218505 m!4807103))

(assert (=> b!4218505 m!4806595))

(assert (=> b!4218505 m!4806723))

(assert (=> b!4218171 d!1242683))

(declare-fun d!1242687 () Bool)

(declare-fun lt!1501397 () Int)

(assert (=> d!1242687 (>= lt!1501397 0)))

(declare-fun e!2618939 () Int)

(assert (=> d!1242687 (= lt!1501397 e!2618939)))

(declare-fun c!718032 () Bool)

(assert (=> d!1242687 (= c!718032 ((_ is Nil!46402) (_2!25199 (get!15101 lt!1501147))))))

(assert (=> d!1242687 (= (size!34075 (_2!25199 (get!15101 lt!1501147))) lt!1501397)))

(declare-fun b!4218507 () Bool)

(assert (=> b!4218507 (= e!2618939 0)))

(declare-fun b!4218508 () Bool)

(assert (=> b!4218508 (= e!2618939 (+ 1 (size!34075 (t!348545 (_2!25199 (get!15101 lt!1501147))))))))

(assert (= (and d!1242687 c!718032) b!4218507))

(assert (= (and d!1242687 (not c!718032)) b!4218508))

(declare-fun m!4807105 () Bool)

(assert (=> b!4218508 m!4807105))

(assert (=> b!4218162 d!1242687))

(assert (=> b!4218162 d!1242539))

(assert (=> b!4218162 d!1242597))

(declare-fun d!1242689 () Bool)

(declare-fun c!718035 () Bool)

(assert (=> d!1242689 (= c!718035 ((_ is Nil!46402) lt!1501145))))

(declare-fun e!2618942 () (InoxSet C!25560))

(assert (=> d!1242689 (= (content!7280 lt!1501145) e!2618942)))

(declare-fun b!4218513 () Bool)

(assert (=> b!4218513 (= e!2618942 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218514 () Bool)

(assert (=> b!4218514 (= e!2618942 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 lt!1501145) true) (content!7280 (t!348545 lt!1501145))))))

(assert (= (and d!1242689 c!718035) b!4218513))

(assert (= (and d!1242689 (not c!718035)) b!4218514))

(declare-fun m!4807107 () Bool)

(assert (=> b!4218514 m!4807107))

(declare-fun m!4807109 () Bool)

(assert (=> b!4218514 m!4807109))

(assert (=> d!1242509 d!1242689))

(declare-fun d!1242691 () Bool)

(declare-fun c!718036 () Bool)

(assert (=> d!1242691 (= c!718036 ((_ is Nil!46402) p!3001))))

(declare-fun e!2618943 () (InoxSet C!25560))

(assert (=> d!1242691 (= (content!7280 p!3001) e!2618943)))

(declare-fun b!4218515 () Bool)

(assert (=> b!4218515 (= e!2618943 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218516 () Bool)

(assert (=> b!4218516 (= e!2618943 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 p!3001) true) (content!7280 (t!348545 p!3001))))))

(assert (= (and d!1242691 c!718036) b!4218515))

(assert (= (and d!1242691 (not c!718036)) b!4218516))

(declare-fun m!4807111 () Bool)

(assert (=> b!4218516 m!4807111))

(assert (=> b!4218516 m!4806903))

(assert (=> d!1242509 d!1242691))

(declare-fun d!1242693 () Bool)

(declare-fun c!718037 () Bool)

(assert (=> d!1242693 (= c!718037 ((_ is Nil!46402) suffix!1557))))

(declare-fun e!2618944 () (InoxSet C!25560))

(assert (=> d!1242693 (= (content!7280 suffix!1557) e!2618944)))

(declare-fun b!4218517 () Bool)

(assert (=> b!4218517 (= e!2618944 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218518 () Bool)

(assert (=> b!4218518 (= e!2618944 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 suffix!1557) true) (content!7280 (t!348545 suffix!1557))))))

(assert (= (and d!1242693 c!718037) b!4218517))

(assert (= (and d!1242693 (not c!718037)) b!4218518))

(declare-fun m!4807113 () Bool)

(assert (=> b!4218518 m!4807113))

(declare-fun m!4807115 () Bool)

(assert (=> b!4218518 m!4807115))

(assert (=> d!1242509 d!1242693))

(declare-fun d!1242695 () Bool)

(declare-fun charsToInt!0 (List!46525) (_ BitVec 32))

(assert (=> d!1242695 (= (inv!16 (value!242202 t!8364)) (= (charsToInt!0 (text!56503 (value!242202 t!8364))) (value!242193 (value!242202 t!8364))))))

(declare-fun bs!597596 () Bool)

(assert (= bs!597596 d!1242695))

(declare-fun m!4807117 () Bool)

(assert (=> bs!597596 m!4807117))

(assert (=> b!4217791 d!1242695))

(declare-fun d!1242697 () Bool)

(declare-fun lt!1501398 () Int)

(assert (=> d!1242697 (>= lt!1501398 0)))

(declare-fun e!2618945 () Int)

(assert (=> d!1242697 (= lt!1501398 e!2618945)))

(declare-fun c!718038 () Bool)

(assert (=> d!1242697 (= c!718038 ((_ is Nil!46402) lt!1501124))))

(assert (=> d!1242697 (= (size!34075 lt!1501124) lt!1501398)))

(declare-fun b!4218519 () Bool)

(assert (=> b!4218519 (= e!2618945 0)))

(declare-fun b!4218520 () Bool)

(assert (=> b!4218520 (= e!2618945 (+ 1 (size!34075 (t!348545 lt!1501124))))))

(assert (= (and d!1242697 c!718038) b!4218519))

(assert (= (and d!1242697 (not c!718038)) b!4218520))

(declare-fun m!4807119 () Bool)

(assert (=> b!4218520 m!4807119))

(assert (=> b!4218135 d!1242697))

(assert (=> b!4218135 d!1242467))

(declare-fun d!1242699 () Bool)

(declare-fun lt!1501399 () Int)

(assert (=> d!1242699 (>= lt!1501399 0)))

(declare-fun e!2618946 () Int)

(assert (=> d!1242699 (= lt!1501399 e!2618946)))

(declare-fun c!718039 () Bool)

(assert (=> d!1242699 (= c!718039 ((_ is Nil!46402) (_2!25199 lt!1500990)))))

(assert (=> d!1242699 (= (size!34075 (_2!25199 lt!1500990)) lt!1501399)))

(declare-fun b!4218521 () Bool)

(assert (=> b!4218521 (= e!2618946 0)))

(declare-fun b!4218522 () Bool)

(assert (=> b!4218522 (= e!2618946 (+ 1 (size!34075 (t!348545 (_2!25199 lt!1500990)))))))

(assert (= (and d!1242699 c!718039) b!4218521))

(assert (= (and d!1242699 (not c!718039)) b!4218522))

(declare-fun m!4807121 () Bool)

(assert (=> b!4218522 m!4807121))

(assert (=> b!4218135 d!1242699))

(declare-fun d!1242701 () Bool)

(declare-fun lt!1501400 () Int)

(assert (=> d!1242701 (>= lt!1501400 0)))

(declare-fun e!2618947 () Int)

(assert (=> d!1242701 (= lt!1501400 e!2618947)))

(declare-fun c!718040 () Bool)

(assert (=> d!1242701 (= c!718040 ((_ is Nil!46402) (t!348545 pBis!121)))))

(assert (=> d!1242701 (= (size!34075 (t!348545 pBis!121)) lt!1501400)))

(declare-fun b!4218523 () Bool)

(assert (=> b!4218523 (= e!2618947 0)))

(declare-fun b!4218524 () Bool)

(assert (=> b!4218524 (= e!2618947 (+ 1 (size!34075 (t!348545 (t!348545 pBis!121)))))))

(assert (= (and d!1242701 c!718040) b!4218523))

(assert (= (and d!1242701 (not c!718040)) b!4218524))

(declare-fun m!4807123 () Bool)

(assert (=> b!4218524 m!4807123))

(assert (=> b!4218138 d!1242701))

(assert (=> b!4218190 d!1242597))

(assert (=> b!4218190 d!1242483))

(declare-fun b!4218526 () Bool)

(declare-fun e!2618949 () List!46526)

(assert (=> b!4218526 (= e!2618949 (Cons!46402 (h!51822 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) (++!11852 (t!348545 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) (_2!25199 (get!15101 lt!1501140)))))))

(declare-fun b!4218528 () Bool)

(declare-fun e!2618948 () Bool)

(declare-fun lt!1501401 () List!46526)

(assert (=> b!4218528 (= e!2618948 (or (not (= (_2!25199 (get!15101 lt!1501140)) Nil!46402)) (= lt!1501401 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))))))))

(declare-fun b!4218525 () Bool)

(assert (=> b!4218525 (= e!2618949 (_2!25199 (get!15101 lt!1501140)))))

(declare-fun d!1242703 () Bool)

(assert (=> d!1242703 e!2618948))

(declare-fun res!1733825 () Bool)

(assert (=> d!1242703 (=> (not res!1733825) (not e!2618948))))

(assert (=> d!1242703 (= res!1733825 (= (content!7280 lt!1501401) ((_ map or) (content!7280 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) (content!7280 (_2!25199 (get!15101 lt!1501140))))))))

(assert (=> d!1242703 (= lt!1501401 e!2618949)))

(declare-fun c!718041 () Bool)

(assert (=> d!1242703 (= c!718041 ((_ is Nil!46402) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))))))

(assert (=> d!1242703 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))) (_2!25199 (get!15101 lt!1501140))) lt!1501401)))

(declare-fun b!4218527 () Bool)

(declare-fun res!1733826 () Bool)

(assert (=> b!4218527 (=> (not res!1733826) (not e!2618948))))

(assert (=> b!4218527 (= res!1733826 (= (size!34075 lt!1501401) (+ (size!34075 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) (size!34075 (_2!25199 (get!15101 lt!1501140))))))))

(assert (= (and d!1242703 c!718041) b!4218525))

(assert (= (and d!1242703 (not c!718041)) b!4218526))

(assert (= (and d!1242703 res!1733825) b!4218527))

(assert (= (and b!4218527 res!1733826) b!4218528))

(declare-fun m!4807125 () Bool)

(assert (=> b!4218526 m!4807125))

(declare-fun m!4807127 () Bool)

(assert (=> d!1242703 m!4807127))

(assert (=> d!1242703 m!4806641))

(declare-fun m!4807129 () Bool)

(assert (=> d!1242703 m!4807129))

(declare-fun m!4807131 () Bool)

(assert (=> d!1242703 m!4807131))

(declare-fun m!4807133 () Bool)

(assert (=> b!4218527 m!4807133))

(assert (=> b!4218527 m!4806641))

(declare-fun m!4807135 () Bool)

(assert (=> b!4218527 m!4807135))

(assert (=> b!4218527 m!4806637))

(assert (=> b!4218155 d!1242703))

(declare-fun d!1242705 () Bool)

(assert (=> d!1242705 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))) (list!16789 (c!717901 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))))))

(declare-fun bs!597597 () Bool)

(assert (= bs!597597 d!1242705))

(declare-fun m!4807137 () Bool)

(assert (=> bs!597597 m!4807137))

(assert (=> b!4218155 d!1242705))

(declare-fun d!1242707 () Bool)

(declare-fun lt!1501402 () BalanceConc!27572)

(assert (=> d!1242707 (= (list!16787 lt!1501402) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140))))))

(assert (=> d!1242707 (= lt!1501402 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140))))) (value!242202 (_1!25199 (get!15101 lt!1501140)))))))

(assert (=> d!1242707 (= (charsOf!5201 (_1!25199 (get!15101 lt!1501140))) lt!1501402)))

(declare-fun b_lambda!124299 () Bool)

(assert (=> (not b_lambda!124299) (not d!1242707)))

(declare-fun tb!253329 () Bool)

(declare-fun t!348663 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348663) tb!253329))

(declare-fun b!4218529 () Bool)

(declare-fun e!2618950 () Bool)

(declare-fun tp!1290444 () Bool)

(assert (=> b!4218529 (= e!2618950 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140))))) (value!242202 (_1!25199 (get!15101 lt!1501140)))))) tp!1290444))))

(declare-fun result!308772 () Bool)

(assert (=> tb!253329 (= result!308772 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140))))) (value!242202 (_1!25199 (get!15101 lt!1501140))))) e!2618950))))

(assert (= tb!253329 b!4218529))

(declare-fun m!4807139 () Bool)

(assert (=> b!4218529 m!4807139))

(declare-fun m!4807141 () Bool)

(assert (=> tb!253329 m!4807141))

(assert (=> d!1242707 t!348663))

(declare-fun b_and!332561 () Bool)

(assert (= b_and!332533 (and (=> t!348663 result!308772) b_and!332561)))

(declare-fun t!348665 () Bool)

(declare-fun tb!253331 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348665) tb!253331))

(declare-fun result!308774 () Bool)

(assert (= result!308774 result!308772))

(assert (=> d!1242707 t!348665))

(declare-fun b_and!332563 () Bool)

(assert (= b_and!332535 (and (=> t!348665 result!308774) b_and!332563)))

(declare-fun tb!253333 () Bool)

(declare-fun t!348667 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348667) tb!253333))

(declare-fun result!308776 () Bool)

(assert (= result!308776 result!308772))

(assert (=> d!1242707 t!348667))

(declare-fun b_and!332565 () Bool)

(assert (= b_and!332537 (and (=> t!348667 result!308776) b_and!332565)))

(declare-fun tb!253335 () Bool)

(declare-fun t!348669 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348669) tb!253335))

(declare-fun result!308778 () Bool)

(assert (= result!308778 result!308772))

(assert (=> d!1242707 t!348669))

(declare-fun b_and!332567 () Bool)

(assert (= b_and!332531 (and (=> t!348669 result!308778) b_and!332567)))

(declare-fun tb!253337 () Bool)

(declare-fun t!348671 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348671) tb!253337))

(declare-fun result!308780 () Bool)

(assert (= result!308780 result!308772))

(assert (=> d!1242707 t!348671))

(declare-fun b_and!332569 () Bool)

(assert (= b_and!332539 (and (=> t!348671 result!308780) b_and!332569)))

(declare-fun m!4807143 () Bool)

(assert (=> d!1242707 m!4807143))

(declare-fun m!4807145 () Bool)

(assert (=> d!1242707 m!4807145))

(assert (=> b!4218155 d!1242707))

(assert (=> b!4218155 d!1242595))

(assert (=> b!4217954 d!1242555))

(assert (=> b!4218151 d!1242595))

(declare-fun d!1242709 () Bool)

(declare-fun lt!1501405 () Int)

(assert (=> d!1242709 (>= lt!1501405 0)))

(declare-fun e!2618953 () Int)

(assert (=> d!1242709 (= lt!1501405 e!2618953)))

(declare-fun c!718042 () Bool)

(assert (=> d!1242709 (= c!718042 ((_ is Nil!46402) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))))))

(assert (=> d!1242709 (= (size!34075 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))) lt!1501405)))

(declare-fun b!4218532 () Bool)

(assert (=> b!4218532 (= e!2618953 0)))

(declare-fun b!4218533 () Bool)

(assert (=> b!4218533 (= e!2618953 (+ 1 (size!34075 (t!348545 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))))))))

(assert (= (and d!1242709 c!718042) b!4218532))

(assert (= (and d!1242709 (not c!718042)) b!4218533))

(declare-fun m!4807147 () Bool)

(assert (=> b!4218533 m!4807147))

(assert (=> b!4218151 d!1242709))

(declare-fun d!1242711 () Bool)

(declare-fun c!718045 () Bool)

(assert (=> d!1242711 (= c!718045 ((_ is Node!13989) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))))

(declare-fun e!2618959 () Bool)

(assert (=> d!1242711 (= (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))) e!2618959)))

(declare-fun b!4218541 () Bool)

(declare-fun inv!61055 (Conc!13989) Bool)

(assert (=> b!4218541 (= e!2618959 (inv!61055 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))))

(declare-fun b!4218542 () Bool)

(declare-fun e!2618960 () Bool)

(assert (=> b!4218542 (= e!2618959 e!2618960)))

(declare-fun res!1733832 () Bool)

(assert (=> b!4218542 (= res!1733832 (not ((_ is Leaf!21622) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))))))))

(assert (=> b!4218542 (=> res!1733832 e!2618960)))

(declare-fun b!4218543 () Bool)

(declare-fun inv!61056 (Conc!13989) Bool)

(assert (=> b!4218543 (= e!2618960 (inv!61056 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))))

(assert (= (and d!1242711 c!718045) b!4218541))

(assert (= (and d!1242711 (not c!718045)) b!4218542))

(assert (= (and b!4218542 (not res!1733832)) b!4218543))

(declare-fun m!4807151 () Bool)

(assert (=> b!4218541 m!4807151))

(declare-fun m!4807153 () Bool)

(assert (=> b!4218543 m!4807153))

(assert (=> b!4217817 d!1242711))

(assert (=> b!4217950 d!1242555))

(declare-fun d!1242715 () Bool)

(assert (=> d!1242715 (= (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060))))) (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060))))))))

(declare-fun b_lambda!124301 () Bool)

(assert (=> (not b_lambda!124301) (not d!1242715)))

(declare-fun t!348673 () Bool)

(declare-fun tb!253339 () Bool)

(assert (=> (and b!4218232 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348673) tb!253339))

(declare-fun result!308782 () Bool)

(assert (=> tb!253339 (= result!308782 (inv!21 (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))))))))

(declare-fun m!4807157 () Bool)

(assert (=> tb!253339 m!4807157))

(assert (=> d!1242715 t!348673))

(declare-fun b_and!332571 () Bool)

(assert (= b_and!332559 (and (=> t!348673 result!308782) b_and!332571)))

(declare-fun t!348675 () Bool)

(declare-fun tb!253341 () Bool)

(assert (=> (and b!4217757 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348675) tb!253341))

(declare-fun result!308784 () Bool)

(assert (= result!308784 result!308782))

(assert (=> d!1242715 t!348675))

(declare-fun b_and!332573 () Bool)

(assert (= b_and!332551 (and (=> t!348675 result!308784) b_and!332573)))

(declare-fun tb!253343 () Bool)

(declare-fun t!348677 () Bool)

(assert (=> (and b!4217746 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348677) tb!253343))

(declare-fun result!308786 () Bool)

(assert (= result!308786 result!308782))

(assert (=> d!1242715 t!348677))

(declare-fun b_and!332575 () Bool)

(assert (= b_and!332555 (and (=> t!348677 result!308786) b_and!332575)))

(declare-fun tb!253345 () Bool)

(declare-fun t!348679 () Bool)

(assert (=> (and b!4217752 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348679) tb!253345))

(declare-fun result!308788 () Bool)

(assert (= result!308788 result!308782))

(assert (=> d!1242715 t!348679))

(declare-fun b_and!332577 () Bool)

(assert (= b_and!332557 (and (=> t!348679 result!308788) b_and!332577)))

(declare-fun tb!253347 () Bool)

(declare-fun t!348681 () Bool)

(assert (=> (and b!4217775 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348681) tb!253347))

(declare-fun result!308790 () Bool)

(assert (= result!308790 result!308782))

(assert (=> d!1242715 t!348681))

(declare-fun b_and!332579 () Bool)

(assert (= b_and!332553 (and (=> t!348681 result!308790) b_and!332579)))

(assert (=> d!1242715 m!4806383))

(declare-fun m!4807159 () Bool)

(assert (=> d!1242715 m!4807159))

(assert (=> b!4217950 d!1242715))

(declare-fun d!1242719 () Bool)

(assert (=> d!1242719 (= (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))) (fromListB!2635 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501060)))))))

(declare-fun bs!597599 () Bool)

(assert (= bs!597599 d!1242719))

(declare-fun m!4807161 () Bool)

(assert (=> bs!597599 m!4807161))

(assert (=> b!4217950 d!1242719))

(declare-fun b!4218547 () Bool)

(declare-fun e!2618962 () Bool)

(assert (=> b!4218547 (= e!2618962 (>= (size!34075 (tail!6797 input!3517)) (size!34075 (tail!6797 p!3001))))))

(declare-fun b!4218545 () Bool)

(declare-fun res!1733834 () Bool)

(declare-fun e!2618963 () Bool)

(assert (=> b!4218545 (=> (not res!1733834) (not e!2618963))))

(assert (=> b!4218545 (= res!1733834 (= (head!8950 (tail!6797 p!3001)) (head!8950 (tail!6797 input!3517))))))

(declare-fun b!4218546 () Bool)

(assert (=> b!4218546 (= e!2618963 (isPrefix!4637 (tail!6797 (tail!6797 p!3001)) (tail!6797 (tail!6797 input!3517))))))

(declare-fun b!4218544 () Bool)

(declare-fun e!2618964 () Bool)

(assert (=> b!4218544 (= e!2618964 e!2618963)))

(declare-fun res!1733836 () Bool)

(assert (=> b!4218544 (=> (not res!1733836) (not e!2618963))))

(assert (=> b!4218544 (= res!1733836 (not ((_ is Nil!46402) (tail!6797 input!3517))))))

(declare-fun d!1242721 () Bool)

(assert (=> d!1242721 e!2618962))

(declare-fun res!1733835 () Bool)

(assert (=> d!1242721 (=> res!1733835 e!2618962)))

(declare-fun lt!1501407 () Bool)

(assert (=> d!1242721 (= res!1733835 (not lt!1501407))))

(assert (=> d!1242721 (= lt!1501407 e!2618964)))

(declare-fun res!1733833 () Bool)

(assert (=> d!1242721 (=> res!1733833 e!2618964)))

(assert (=> d!1242721 (= res!1733833 ((_ is Nil!46402) (tail!6797 p!3001)))))

(assert (=> d!1242721 (= (isPrefix!4637 (tail!6797 p!3001) (tail!6797 input!3517)) lt!1501407)))

(assert (= (and d!1242721 (not res!1733833)) b!4218544))

(assert (= (and b!4218544 res!1733836) b!4218545))

(assert (= (and b!4218545 res!1733834) b!4218546))

(assert (= (and d!1242721 (not res!1733835)) b!4218547))

(assert (=> b!4218547 m!4806419))

(assert (=> b!4218547 m!4806837))

(assert (=> b!4218547 m!4806623))

(declare-fun m!4807163 () Bool)

(assert (=> b!4218547 m!4807163))

(assert (=> b!4218545 m!4806623))

(declare-fun m!4807165 () Bool)

(assert (=> b!4218545 m!4807165))

(assert (=> b!4218545 m!4806419))

(assert (=> b!4218545 m!4806843))

(assert (=> b!4218546 m!4806623))

(declare-fun m!4807167 () Bool)

(assert (=> b!4218546 m!4807167))

(assert (=> b!4218546 m!4806419))

(assert (=> b!4218546 m!4806847))

(assert (=> b!4218546 m!4807167))

(assert (=> b!4218546 m!4806847))

(declare-fun m!4807169 () Bool)

(assert (=> b!4218546 m!4807169))

(assert (=> b!4218145 d!1242721))

(declare-fun d!1242723 () Bool)

(assert (=> d!1242723 (= (tail!6797 p!3001) (t!348545 p!3001))))

(assert (=> b!4218145 d!1242723))

(assert (=> b!4218145 d!1242569))

(declare-fun d!1242725 () Bool)

(declare-fun lt!1501410 () Bool)

(assert (=> d!1242725 (= lt!1501410 (select (content!7281 (t!348546 rules!3967)) rBis!178))))

(declare-fun e!2618965 () Bool)

(assert (=> d!1242725 (= lt!1501410 e!2618965)))

(declare-fun res!1733838 () Bool)

(assert (=> d!1242725 (=> (not res!1733838) (not e!2618965))))

(assert (=> d!1242725 (= res!1733838 ((_ is Cons!46403) (t!348546 rules!3967)))))

(assert (=> d!1242725 (= (contains!9599 (t!348546 rules!3967) rBis!178) lt!1501410)))

(declare-fun b!4218548 () Bool)

(declare-fun e!2618966 () Bool)

(assert (=> b!4218548 (= e!2618965 e!2618966)))

(declare-fun res!1733837 () Bool)

(assert (=> b!4218548 (=> res!1733837 e!2618966)))

(assert (=> b!4218548 (= res!1733837 (= (h!51823 (t!348546 rules!3967)) rBis!178))))

(declare-fun b!4218549 () Bool)

(assert (=> b!4218549 (= e!2618966 (contains!9599 (t!348546 (t!348546 rules!3967)) rBis!178))))

(assert (= (and d!1242725 res!1733838) b!4218548))

(assert (= (and b!4218548 (not res!1733837)) b!4218549))

(assert (=> d!1242725 m!4806855))

(declare-fun m!4807171 () Bool)

(assert (=> d!1242725 m!4807171))

(declare-fun m!4807173 () Bool)

(assert (=> b!4218549 m!4807173))

(assert (=> b!4218186 d!1242725))

(declare-fun d!1242727 () Bool)

(assert (=> d!1242727 (= (isEmpty!27491 lt!1501140) (not ((_ is Some!9965) lt!1501140)))))

(assert (=> d!1242507 d!1242727))

(declare-fun d!1242729 () Bool)

(assert (=> d!1242729 (= (isEmpty!27493 (_1!25201 lt!1501143)) ((_ is Nil!46402) (_1!25201 lt!1501143)))))

(assert (=> d!1242507 d!1242729))

(declare-fun d!1242731 () Bool)

(declare-fun lt!1501417 () tuple2!44134)

(assert (=> d!1242731 (= (++!11852 (_1!25201 lt!1501417) (_2!25201 lt!1501417)) input!3517)))

(assert (=> d!1242731 (= lt!1501417 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 0 input!3517 input!3517 (sizeTr!321 input!3517 0)))))

(declare-fun lt!1501416 () Unit!65553)

(declare-fun lt!1501414 () Unit!65553)

(assert (=> d!1242731 (= lt!1501416 lt!1501414)))

(declare-fun lt!1501413 () List!46526)

(declare-fun lt!1501418 () Int)

(assert (=> d!1242731 (= (sizeTr!321 lt!1501413 lt!1501418) (+ (size!34075 lt!1501413) lt!1501418))))

(assert (=> d!1242731 (= lt!1501414 (lemmaSizeTrEqualsSize!320 lt!1501413 lt!1501418))))

(assert (=> d!1242731 (= lt!1501418 0)))

(assert (=> d!1242731 (= lt!1501413 Nil!46402)))

(declare-fun lt!1501415 () Unit!65553)

(declare-fun lt!1501412 () Unit!65553)

(assert (=> d!1242731 (= lt!1501415 lt!1501412)))

(declare-fun lt!1501411 () Int)

(assert (=> d!1242731 (= (sizeTr!321 input!3517 lt!1501411) (+ (size!34075 input!3517) lt!1501411))))

(assert (=> d!1242731 (= lt!1501412 (lemmaSizeTrEqualsSize!320 input!3517 lt!1501411))))

(assert (=> d!1242731 (= lt!1501411 0)))

(assert (=> d!1242731 (validRegex!5757 (regex!7778 (h!51823 rules!3967)))))

(assert (=> d!1242731 (= (findLongestMatch!1574 (regex!7778 (h!51823 rules!3967)) input!3517) lt!1501417)))

(declare-fun bs!597600 () Bool)

(assert (= bs!597600 d!1242731))

(assert (=> bs!597600 m!4806331))

(declare-fun m!4807175 () Bool)

(assert (=> bs!597600 m!4807175))

(declare-fun m!4807177 () Bool)

(assert (=> bs!597600 m!4807177))

(declare-fun m!4807179 () Bool)

(assert (=> bs!597600 m!4807179))

(declare-fun m!4807181 () Bool)

(assert (=> bs!597600 m!4807181))

(assert (=> bs!597600 m!4806917))

(declare-fun m!4807183 () Bool)

(assert (=> bs!597600 m!4807183))

(declare-fun m!4807185 () Bool)

(assert (=> bs!597600 m!4807185))

(declare-fun m!4807187 () Bool)

(assert (=> bs!597600 m!4807187))

(assert (=> bs!597600 m!4806917))

(declare-fun m!4807189 () Bool)

(assert (=> bs!597600 m!4807189))

(assert (=> d!1242507 d!1242731))

(declare-fun d!1242733 () Bool)

(declare-fun res!1733839 () Bool)

(declare-fun e!2618967 () Bool)

(assert (=> d!1242733 (=> (not res!1733839) (not e!2618967))))

(assert (=> d!1242733 (= res!1733839 (validRegex!5757 (regex!7778 (h!51823 rules!3967))))))

(assert (=> d!1242733 (= (ruleValid!3490 thiss!26544 (h!51823 rules!3967)) e!2618967)))

(declare-fun b!4218550 () Bool)

(declare-fun res!1733840 () Bool)

(assert (=> b!4218550 (=> (not res!1733840) (not e!2618967))))

(assert (=> b!4218550 (= res!1733840 (not (nullable!4470 (regex!7778 (h!51823 rules!3967)))))))

(declare-fun b!4218551 () Bool)

(assert (=> b!4218551 (= e!2618967 (not (= (tag!8642 (h!51823 rules!3967)) (String!53911 ""))))))

(assert (= (and d!1242733 res!1733839) b!4218550))

(assert (= (and b!4218550 res!1733840) b!4218551))

(assert (=> d!1242733 m!4807187))

(declare-fun m!4807191 () Bool)

(assert (=> b!4218550 m!4807191))

(assert (=> d!1242507 d!1242733))

(declare-fun b!4218552 () Bool)

(declare-fun res!1733841 () Bool)

(declare-fun e!2618969 () Bool)

(assert (=> b!4218552 (=> (not res!1733841) (not e!2618969))))

(declare-fun lt!1501419 () Option!9966)

(assert (=> b!4218552 (= res!1733841 (= (value!242202 (_1!25199 (get!15101 lt!1501419))) (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501419)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501419)))))))))

(declare-fun b!4218553 () Bool)

(declare-fun e!2618970 () Bool)

(assert (=> b!4218553 (= e!2618970 (matchR!6380 (regex!7778 (h!51823 (t!348546 rules!3967))) (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 (t!348546 rules!3967))) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun b!4218554 () Bool)

(declare-fun res!1733842 () Bool)

(assert (=> b!4218554 (=> (not res!1733842) (not e!2618969))))

(assert (=> b!4218554 (= res!1733842 (< (size!34075 (_2!25199 (get!15101 lt!1501419))) (size!34075 input!3517)))))

(declare-fun d!1242735 () Bool)

(declare-fun e!2618971 () Bool)

(assert (=> d!1242735 e!2618971))

(declare-fun res!1733844 () Bool)

(assert (=> d!1242735 (=> res!1733844 e!2618971)))

(assert (=> d!1242735 (= res!1733844 (isEmpty!27491 lt!1501419))))

(declare-fun e!2618968 () Option!9966)

(assert (=> d!1242735 (= lt!1501419 e!2618968)))

(declare-fun c!718047 () Bool)

(declare-fun lt!1501422 () tuple2!44134)

(assert (=> d!1242735 (= c!718047 (isEmpty!27493 (_1!25201 lt!1501422)))))

(assert (=> d!1242735 (= lt!1501422 (findLongestMatch!1574 (regex!7778 (h!51823 (t!348546 rules!3967))) input!3517))))

(assert (=> d!1242735 (ruleValid!3490 thiss!26544 (h!51823 (t!348546 rules!3967)))))

(assert (=> d!1242735 (= (maxPrefixOneRule!3368 thiss!26544 (h!51823 (t!348546 rules!3967)) input!3517) lt!1501419)))

(declare-fun b!4218555 () Bool)

(assert (=> b!4218555 (= e!2618969 (= (size!34074 (_1!25199 (get!15101 lt!1501419))) (size!34075 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501419))))))))

(declare-fun b!4218556 () Bool)

(declare-fun res!1733847 () Bool)

(assert (=> b!4218556 (=> (not res!1733847) (not e!2618969))))

(assert (=> b!4218556 (= res!1733847 (= (rule!10908 (_1!25199 (get!15101 lt!1501419))) (h!51823 (t!348546 rules!3967))))))

(declare-fun b!4218557 () Bool)

(assert (=> b!4218557 (= e!2618971 e!2618969)))

(declare-fun res!1733843 () Bool)

(assert (=> b!4218557 (=> (not res!1733843) (not e!2618969))))

(assert (=> b!4218557 (= res!1733843 (matchR!6380 (regex!7778 (h!51823 (t!348546 rules!3967))) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501419))))))))

(declare-fun b!4218558 () Bool)

(assert (=> b!4218558 (= e!2618968 None!9965)))

(declare-fun b!4218559 () Bool)

(declare-fun res!1733846 () Bool)

(assert (=> b!4218559 (=> (not res!1733846) (not e!2618969))))

(assert (=> b!4218559 (= res!1733846 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501419)))) (_2!25199 (get!15101 lt!1501419))) input!3517))))

(declare-fun b!4218560 () Bool)

(assert (=> b!4218560 (= e!2618968 (Some!9965 (tuple2!44131 (Token!14259 (apply!10701 (transformation!7778 (h!51823 (t!348546 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501422))) (h!51823 (t!348546 rules!3967)) (size!34077 (seqFromList!5761 (_1!25201 lt!1501422))) (_1!25201 lt!1501422)) (_2!25201 lt!1501422))))))

(declare-fun lt!1501420 () Unit!65553)

(assert (=> b!4218560 (= lt!1501420 (longestMatchIsAcceptedByMatchOrIsEmpty!1634 (regex!7778 (h!51823 (t!348546 rules!3967))) input!3517))))

(declare-fun res!1733845 () Bool)

(assert (=> b!4218560 (= res!1733845 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 (t!348546 rules!3967))) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> b!4218560 (=> res!1733845 e!2618970)))

(assert (=> b!4218560 e!2618970))

(declare-fun lt!1501423 () Unit!65553)

(assert (=> b!4218560 (= lt!1501423 lt!1501420)))

(declare-fun lt!1501421 () Unit!65553)

(assert (=> b!4218560 (= lt!1501421 (lemmaSemiInverse!2502 (transformation!7778 (h!51823 (t!348546 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501422))))))

(assert (= (and d!1242735 c!718047) b!4218558))

(assert (= (and d!1242735 (not c!718047)) b!4218560))

(assert (= (and b!4218560 (not res!1733845)) b!4218553))

(assert (= (and d!1242735 (not res!1733844)) b!4218557))

(assert (= (and b!4218557 res!1733843) b!4218559))

(assert (= (and b!4218559 res!1733846) b!4218554))

(assert (= (and b!4218554 res!1733842) b!4218556))

(assert (= (and b!4218556 res!1733847) b!4218552))

(assert (= (and b!4218552 res!1733841) b!4218555))

(declare-fun m!4807193 () Bool)

(assert (=> b!4218556 m!4807193))

(assert (=> b!4218553 m!4806329))

(assert (=> b!4218553 m!4806331))

(assert (=> b!4218553 m!4806329))

(assert (=> b!4218553 m!4806331))

(declare-fun m!4807195 () Bool)

(assert (=> b!4218553 m!4807195))

(declare-fun m!4807197 () Bool)

(assert (=> b!4218553 m!4807197))

(assert (=> b!4218554 m!4807193))

(declare-fun m!4807199 () Bool)

(assert (=> b!4218554 m!4807199))

(assert (=> b!4218554 m!4806331))

(assert (=> b!4218559 m!4807193))

(declare-fun m!4807201 () Bool)

(assert (=> b!4218559 m!4807201))

(assert (=> b!4218559 m!4807201))

(declare-fun m!4807203 () Bool)

(assert (=> b!4218559 m!4807203))

(assert (=> b!4218559 m!4807203))

(declare-fun m!4807205 () Bool)

(assert (=> b!4218559 m!4807205))

(declare-fun m!4807207 () Bool)

(assert (=> b!4218560 m!4807207))

(declare-fun m!4807209 () Bool)

(assert (=> b!4218560 m!4807209))

(declare-fun m!4807211 () Bool)

(assert (=> b!4218560 m!4807211))

(declare-fun m!4807213 () Bool)

(assert (=> b!4218560 m!4807213))

(assert (=> b!4218560 m!4806331))

(assert (=> b!4218560 m!4807211))

(declare-fun m!4807215 () Bool)

(assert (=> b!4218560 m!4807215))

(assert (=> b!4218560 m!4807211))

(assert (=> b!4218560 m!4806329))

(assert (=> b!4218560 m!4807211))

(declare-fun m!4807217 () Bool)

(assert (=> b!4218560 m!4807217))

(assert (=> b!4218560 m!4806329))

(assert (=> b!4218560 m!4806331))

(assert (=> b!4218560 m!4807195))

(assert (=> b!4218552 m!4807193))

(declare-fun m!4807219 () Bool)

(assert (=> b!4218552 m!4807219))

(assert (=> b!4218552 m!4807219))

(declare-fun m!4807221 () Bool)

(assert (=> b!4218552 m!4807221))

(assert (=> b!4218557 m!4807193))

(assert (=> b!4218557 m!4807201))

(assert (=> b!4218557 m!4807201))

(assert (=> b!4218557 m!4807203))

(assert (=> b!4218557 m!4807203))

(declare-fun m!4807227 () Bool)

(assert (=> b!4218557 m!4807227))

(declare-fun m!4807229 () Bool)

(assert (=> d!1242735 m!4807229))

(declare-fun m!4807231 () Bool)

(assert (=> d!1242735 m!4807231))

(declare-fun m!4807233 () Bool)

(assert (=> d!1242735 m!4807233))

(assert (=> d!1242735 m!4806865))

(assert (=> b!4218555 m!4807193))

(declare-fun m!4807235 () Bool)

(assert (=> b!4218555 m!4807235))

(assert (=> bm!293032 d!1242735))

(declare-fun d!1242737 () Bool)

(assert (=> d!1242737 (= (isEmpty!27493 (originalCharacters!8160 tBis!41)) ((_ is Nil!46402) (originalCharacters!8160 tBis!41)))))

(assert (=> d!1242357 d!1242737))

(declare-fun b!4218567 () Bool)

(declare-fun res!1733853 () Bool)

(declare-fun e!2618978 () Bool)

(assert (=> b!4218567 (=> (not res!1733853) (not e!2618978))))

(declare-fun lt!1501425 () Option!9966)

(assert (=> b!4218567 (= res!1733853 (matchR!6380 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501425)))) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501425))))))))

(declare-fun b!4218568 () Bool)

(declare-fun res!1733852 () Bool)

(assert (=> b!4218568 (=> (not res!1733852) (not e!2618978))))

(assert (=> b!4218568 (= res!1733852 (< (size!34075 (_2!25199 (get!15101 lt!1501425))) (size!34075 input!3517)))))

(declare-fun b!4218569 () Bool)

(declare-fun e!2618976 () Bool)

(assert (=> b!4218569 (= e!2618976 e!2618978)))

(declare-fun res!1733850 () Bool)

(assert (=> b!4218569 (=> (not res!1733850) (not e!2618978))))

(assert (=> b!4218569 (= res!1733850 (isDefined!7401 lt!1501425))))

(declare-fun b!4218570 () Bool)

(declare-fun e!2618977 () Option!9966)

(declare-fun lt!1501428 () Option!9966)

(declare-fun lt!1501426 () Option!9966)

(assert (=> b!4218570 (= e!2618977 (ite (and ((_ is None!9965) lt!1501428) ((_ is None!9965) lt!1501426)) None!9965 (ite ((_ is None!9965) lt!1501426) lt!1501428 (ite ((_ is None!9965) lt!1501428) lt!1501426 (ite (>= (size!34074 (_1!25199 (v!40851 lt!1501428))) (size!34074 (_1!25199 (v!40851 lt!1501426)))) lt!1501428 lt!1501426)))))))

(declare-fun call!293099 () Option!9966)

(assert (=> b!4218570 (= lt!1501428 call!293099)))

(assert (=> b!4218570 (= lt!1501426 (maxPrefix!4413 thiss!26544 (t!348546 (t!348546 (t!348546 rules!3967))) input!3517))))

(declare-fun b!4218571 () Bool)

(declare-fun res!1733848 () Bool)

(assert (=> b!4218571 (=> (not res!1733848) (not e!2618978))))

(assert (=> b!4218571 (= res!1733848 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501425)))) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501425)))))))

(declare-fun b!4218572 () Bool)

(declare-fun res!1733849 () Bool)

(assert (=> b!4218572 (=> (not res!1733849) (not e!2618978))))

(assert (=> b!4218572 (= res!1733849 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501425)))) (_2!25199 (get!15101 lt!1501425))) input!3517))))

(declare-fun b!4218573 () Bool)

(assert (=> b!4218573 (= e!2618978 (contains!9599 (t!348546 (t!348546 rules!3967)) (rule!10908 (_1!25199 (get!15101 lt!1501425)))))))

(declare-fun b!4218574 () Bool)

(assert (=> b!4218574 (= e!2618977 call!293099)))

(declare-fun b!4218575 () Bool)

(declare-fun res!1733851 () Bool)

(assert (=> b!4218575 (=> (not res!1733851) (not e!2618978))))

(assert (=> b!4218575 (= res!1733851 (= (value!242202 (_1!25199 (get!15101 lt!1501425))) (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501425)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501425)))))))))

(declare-fun d!1242739 () Bool)

(assert (=> d!1242739 e!2618976))

(declare-fun res!1733854 () Bool)

(assert (=> d!1242739 (=> res!1733854 e!2618976)))

(assert (=> d!1242739 (= res!1733854 (isEmpty!27491 lt!1501425))))

(assert (=> d!1242739 (= lt!1501425 e!2618977)))

(declare-fun c!718048 () Bool)

(assert (=> d!1242739 (= c!718048 (and ((_ is Cons!46403) (t!348546 (t!348546 rules!3967))) ((_ is Nil!46403) (t!348546 (t!348546 (t!348546 rules!3967))))))))

(declare-fun lt!1501427 () Unit!65553)

(declare-fun lt!1501429 () Unit!65553)

(assert (=> d!1242739 (= lt!1501427 lt!1501429)))

(assert (=> d!1242739 (isPrefix!4637 input!3517 input!3517)))

(assert (=> d!1242739 (= lt!1501429 (lemmaIsPrefixRefl!3054 input!3517 input!3517))))

(assert (=> d!1242739 (rulesValidInductive!2892 thiss!26544 (t!348546 (t!348546 rules!3967)))))

(assert (=> d!1242739 (= (maxPrefix!4413 thiss!26544 (t!348546 (t!348546 rules!3967)) input!3517) lt!1501425)))

(declare-fun bm!293094 () Bool)

(assert (=> bm!293094 (= call!293099 (maxPrefixOneRule!3368 thiss!26544 (h!51823 (t!348546 (t!348546 rules!3967))) input!3517))))

(assert (= (and d!1242739 c!718048) b!4218574))

(assert (= (and d!1242739 (not c!718048)) b!4218570))

(assert (= (or b!4218574 b!4218570) bm!293094))

(assert (= (and d!1242739 (not res!1733854)) b!4218569))

(assert (= (and b!4218569 res!1733850) b!4218571))

(assert (= (and b!4218571 res!1733848) b!4218568))

(assert (= (and b!4218568 res!1733852) b!4218572))

(assert (= (and b!4218572 res!1733849) b!4218575))

(assert (= (and b!4218575 res!1733851) b!4218567))

(assert (= (and b!4218567 res!1733853) b!4218573))

(declare-fun m!4807247 () Bool)

(assert (=> b!4218575 m!4807247))

(declare-fun m!4807249 () Bool)

(assert (=> b!4218575 m!4807249))

(assert (=> b!4218575 m!4807249))

(declare-fun m!4807251 () Bool)

(assert (=> b!4218575 m!4807251))

(declare-fun m!4807253 () Bool)

(assert (=> b!4218570 m!4807253))

(declare-fun m!4807255 () Bool)

(assert (=> d!1242739 m!4807255))

(assert (=> d!1242739 m!4806069))

(assert (=> d!1242739 m!4806071))

(assert (=> d!1242739 m!4806867))

(declare-fun m!4807257 () Bool)

(assert (=> b!4218569 m!4807257))

(declare-fun m!4807259 () Bool)

(assert (=> bm!293094 m!4807259))

(assert (=> b!4218571 m!4807247))

(declare-fun m!4807261 () Bool)

(assert (=> b!4218571 m!4807261))

(assert (=> b!4218571 m!4807261))

(declare-fun m!4807263 () Bool)

(assert (=> b!4218571 m!4807263))

(assert (=> b!4218568 m!4807247))

(declare-fun m!4807265 () Bool)

(assert (=> b!4218568 m!4807265))

(assert (=> b!4218568 m!4806331))

(assert (=> b!4218572 m!4807247))

(assert (=> b!4218572 m!4807261))

(assert (=> b!4218572 m!4807261))

(assert (=> b!4218572 m!4807263))

(assert (=> b!4218572 m!4807263))

(declare-fun m!4807267 () Bool)

(assert (=> b!4218572 m!4807267))

(assert (=> b!4218567 m!4807247))

(assert (=> b!4218567 m!4807261))

(assert (=> b!4218567 m!4807261))

(assert (=> b!4218567 m!4807263))

(assert (=> b!4218567 m!4807263))

(declare-fun m!4807269 () Bool)

(assert (=> b!4218567 m!4807269))

(assert (=> b!4218573 m!4807247))

(declare-fun m!4807271 () Bool)

(assert (=> b!4218573 m!4807271))

(assert (=> b!4218106 d!1242739))

(declare-fun d!1242745 () Bool)

(declare-fun c!718050 () Bool)

(assert (=> d!1242745 (= c!718050 ((_ is Nil!46402) lt!1501152))))

(declare-fun e!2618983 () (InoxSet C!25560))

(assert (=> d!1242745 (= (content!7280 lt!1501152) e!2618983)))

(declare-fun b!4218580 () Bool)

(assert (=> b!4218580 (= e!2618983 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218581 () Bool)

(assert (=> b!4218581 (= e!2618983 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 lt!1501152) true) (content!7280 (t!348545 lt!1501152))))))

(assert (= (and d!1242745 c!718050) b!4218580))

(assert (= (and d!1242745 (not c!718050)) b!4218581))

(declare-fun m!4807275 () Bool)

(assert (=> b!4218581 m!4807275))

(declare-fun m!4807277 () Bool)

(assert (=> b!4218581 m!4807277))

(assert (=> d!1242517 d!1242745))

(declare-fun d!1242749 () Bool)

(declare-fun c!718051 () Bool)

(assert (=> d!1242749 (= c!718051 ((_ is Nil!46402) pBis!121))))

(declare-fun e!2618984 () (InoxSet C!25560))

(assert (=> d!1242749 (= (content!7280 pBis!121) e!2618984)))

(declare-fun b!4218582 () Bool)

(assert (=> b!4218582 (= e!2618984 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218583 () Bool)

(assert (=> b!4218583 (= e!2618984 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 pBis!121) true) (content!7280 (t!348545 pBis!121))))))

(assert (= (and d!1242749 c!718051) b!4218582))

(assert (= (and d!1242749 (not c!718051)) b!4218583))

(declare-fun m!4807279 () Bool)

(assert (=> b!4218583 m!4807279))

(assert (=> b!4218583 m!4807101))

(assert (=> d!1242517 d!1242749))

(declare-fun d!1242751 () Bool)

(declare-fun c!718052 () Bool)

(assert (=> d!1242751 (= c!718052 ((_ is Nil!46402) suffixBis!41))))

(declare-fun e!2618985 () (InoxSet C!25560))

(assert (=> d!1242751 (= (content!7280 suffixBis!41) e!2618985)))

(declare-fun b!4218584 () Bool)

(assert (=> b!4218584 (= e!2618985 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218585 () Bool)

(assert (=> b!4218585 (= e!2618985 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 suffixBis!41) true) (content!7280 (t!348545 suffixBis!41))))))

(assert (= (and d!1242751 c!718052) b!4218584))

(assert (= (and d!1242751 (not c!718052)) b!4218585))

(declare-fun m!4807281 () Bool)

(assert (=> b!4218585 m!4807281))

(declare-fun m!4807283 () Bool)

(assert (=> b!4218585 m!4807283))

(assert (=> d!1242517 d!1242751))

(assert (=> d!1242487 d!1242483))

(assert (=> d!1242487 d!1242467))

(declare-fun d!1242755 () Bool)

(assert (=> d!1242755 (<= (size!34075 pBis!121) (size!34075 lt!1500997))))

(assert (=> d!1242755 true))

(declare-fun _$61!370 () Unit!65553)

(assert (=> d!1242755 (= (choose!25851 thiss!26544 (t!348546 rules!3967) lt!1500997 (_1!25199 lt!1500990) input!3517 (_2!25199 lt!1500990) pBis!121 suffixBis!41 rBis!178 tBis!41) _$61!370)))

(declare-fun bs!597601 () Bool)

(assert (= bs!597601 d!1242755))

(assert (=> bs!597601 m!4806085))

(assert (=> bs!597601 m!4806083))

(assert (=> d!1242487 d!1242755))

(assert (=> d!1242419 d!1242403))

(declare-fun d!1242757 () Bool)

(assert (=> d!1242757 (isPrefix!4637 input!3517 input!3517)))

(assert (=> d!1242757 true))

(declare-fun _$45!2096 () Unit!65553)

(assert (=> d!1242757 (= (choose!25847 input!3517 input!3517) _$45!2096)))

(declare-fun bs!597602 () Bool)

(assert (= bs!597602 d!1242757))

(assert (=> bs!597602 m!4806069))

(assert (=> d!1242419 d!1242757))

(assert (=> d!1242489 d!1242479))

(declare-fun d!1242759 () Bool)

(assert (=> d!1242759 (rulesInvariant!6584 thiss!26544 (t!348546 rules!3967))))

(assert (=> d!1242759 true))

(declare-fun _$66!611 () Unit!65553)

(assert (=> d!1242759 (= (choose!25852 thiss!26544 (h!51823 rules!3967) (t!348546 rules!3967)) _$66!611)))

(declare-fun bs!597603 () Bool)

(assert (= bs!597603 d!1242759))

(assert (=> bs!597603 m!4806099))

(assert (=> d!1242489 d!1242759))

(declare-fun d!1242761 () Bool)

(declare-fun res!1733855 () Bool)

(declare-fun e!2618986 () Bool)

(assert (=> d!1242761 (=> (not res!1733855) (not e!2618986))))

(assert (=> d!1242761 (= res!1733855 (rulesValid!3049 thiss!26544 (Cons!46403 (h!51823 rules!3967) (t!348546 rules!3967))))))

(assert (=> d!1242761 (= (rulesInvariant!6584 thiss!26544 (Cons!46403 (h!51823 rules!3967) (t!348546 rules!3967))) e!2618986)))

(declare-fun b!4218586 () Bool)

(assert (=> b!4218586 (= e!2618986 (noDuplicateTag!3210 thiss!26544 (Cons!46403 (h!51823 rules!3967) (t!348546 rules!3967)) Nil!46404))))

(assert (= (and d!1242761 res!1733855) b!4218586))

(declare-fun m!4807285 () Bool)

(assert (=> d!1242761 m!4807285))

(declare-fun m!4807287 () Bool)

(assert (=> b!4218586 m!4807287))

(assert (=> d!1242489 d!1242761))

(declare-fun d!1242763 () Bool)

(declare-fun lt!1501431 () Int)

(assert (=> d!1242763 (>= lt!1501431 0)))

(declare-fun e!2618987 () Int)

(assert (=> d!1242763 (= lt!1501431 e!2618987)))

(declare-fun c!718053 () Bool)

(assert (=> d!1242763 (= c!718053 ((_ is Nil!46402) lt!1501145))))

(assert (=> d!1242763 (= (size!34075 lt!1501145) lt!1501431)))

(declare-fun b!4218587 () Bool)

(assert (=> b!4218587 (= e!2618987 0)))

(declare-fun b!4218588 () Bool)

(assert (=> b!4218588 (= e!2618987 (+ 1 (size!34075 (t!348545 lt!1501145))))))

(assert (= (and d!1242763 c!718053) b!4218587))

(assert (= (and d!1242763 (not c!718053)) b!4218588))

(declare-fun m!4807289 () Bool)

(assert (=> b!4218588 m!4807289))

(assert (=> b!4218159 d!1242763))

(assert (=> b!4218159 d!1242485))

(declare-fun d!1242765 () Bool)

(declare-fun lt!1501432 () Int)

(assert (=> d!1242765 (>= lt!1501432 0)))

(declare-fun e!2618988 () Int)

(assert (=> d!1242765 (= lt!1501432 e!2618988)))

(declare-fun c!718054 () Bool)

(assert (=> d!1242765 (= c!718054 ((_ is Nil!46402) suffix!1557))))

(assert (=> d!1242765 (= (size!34075 suffix!1557) lt!1501432)))

(declare-fun b!4218589 () Bool)

(assert (=> b!4218589 (= e!2618988 0)))

(declare-fun b!4218590 () Bool)

(assert (=> b!4218590 (= e!2618988 (+ 1 (size!34075 (t!348545 suffix!1557))))))

(assert (= (and d!1242765 c!718054) b!4218589))

(assert (= (and d!1242765 (not c!718054)) b!4218590))

(declare-fun m!4807291 () Bool)

(assert (=> b!4218590 m!4807291))

(assert (=> b!4218159 d!1242765))

(assert (=> b!4217983 d!1242597))

(declare-fun d!1242767 () Bool)

(declare-fun c!718063 () Bool)

(assert (=> d!1242767 (= c!718063 ((_ is Nil!46403) rules!3967))))

(declare-fun e!2619005 () (InoxSet Rule!15356))

(assert (=> d!1242767 (= (content!7281 rules!3967) e!2619005)))

(declare-fun b!4218623 () Bool)

(assert (=> b!4218623 (= e!2619005 ((as const (Array Rule!15356 Bool)) false))))

(declare-fun b!4218624 () Bool)

(assert (=> b!4218624 (= e!2619005 ((_ map or) (store ((as const (Array Rule!15356 Bool)) false) (h!51823 rules!3967) true) (content!7281 (t!348546 rules!3967))))))

(assert (= (and d!1242767 c!718063) b!4218623))

(assert (= (and d!1242767 (not c!718063)) b!4218624))

(declare-fun m!4807293 () Bool)

(assert (=> b!4218624 m!4807293))

(assert (=> b!4218624 m!4806855))

(assert (=> d!1242527 d!1242767))

(declare-fun d!1242769 () Bool)

(declare-fun lt!1501435 () Int)

(assert (=> d!1242769 (>= lt!1501435 0)))

(declare-fun e!2619006 () Int)

(assert (=> d!1242769 (= lt!1501435 e!2619006)))

(declare-fun c!718064 () Bool)

(assert (=> d!1242769 (= c!718064 ((_ is Nil!46402) (++!11852 lt!1500997 (_2!25199 lt!1500990))))))

(assert (=> d!1242769 (= (size!34075 (++!11852 lt!1500997 (_2!25199 lt!1500990))) lt!1501435)))

(declare-fun b!4218625 () Bool)

(assert (=> b!4218625 (= e!2619006 0)))

(declare-fun b!4218626 () Bool)

(assert (=> b!4218626 (= e!2619006 (+ 1 (size!34075 (t!348545 (++!11852 lt!1500997 (_2!25199 lt!1500990))))))))

(assert (= (and d!1242769 c!718064) b!4218625))

(assert (= (and d!1242769 (not c!718064)) b!4218626))

(declare-fun m!4807295 () Bool)

(assert (=> b!4218626 m!4807295))

(assert (=> b!4218121 d!1242769))

(assert (=> b!4218121 d!1242467))

(declare-fun d!1242771 () Bool)

(declare-fun c!718065 () Bool)

(assert (=> d!1242771 (= c!718065 ((_ is Nil!46402) lt!1501124))))

(declare-fun e!2619007 () (InoxSet C!25560))

(assert (=> d!1242771 (= (content!7280 lt!1501124) e!2619007)))

(declare-fun b!4218627 () Bool)

(assert (=> b!4218627 (= e!2619007 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218628 () Bool)

(assert (=> b!4218628 (= e!2619007 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 lt!1501124) true) (content!7280 (t!348545 lt!1501124))))))

(assert (= (and d!1242771 c!718065) b!4218627))

(assert (= (and d!1242771 (not c!718065)) b!4218628))

(declare-fun m!4807297 () Bool)

(assert (=> b!4218628 m!4807297))

(declare-fun m!4807299 () Bool)

(assert (=> b!4218628 m!4807299))

(assert (=> d!1242481 d!1242771))

(declare-fun d!1242773 () Bool)

(declare-fun c!718066 () Bool)

(assert (=> d!1242773 (= c!718066 ((_ is Nil!46402) lt!1500997))))

(declare-fun e!2619008 () (InoxSet C!25560))

(assert (=> d!1242773 (= (content!7280 lt!1500997) e!2619008)))

(declare-fun b!4218629 () Bool)

(assert (=> b!4218629 (= e!2619008 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218630 () Bool)

(assert (=> b!4218630 (= e!2619008 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 lt!1500997) true) (content!7280 (t!348545 lt!1500997))))))

(assert (= (and d!1242773 c!718066) b!4218629))

(assert (= (and d!1242773 (not c!718066)) b!4218630))

(declare-fun m!4807301 () Bool)

(assert (=> b!4218630 m!4807301))

(assert (=> b!4218630 m!4806829))

(assert (=> d!1242481 d!1242773))

(declare-fun d!1242775 () Bool)

(declare-fun c!718067 () Bool)

(assert (=> d!1242775 (= c!718067 ((_ is Nil!46402) (_2!25199 lt!1500990)))))

(declare-fun e!2619009 () (InoxSet C!25560))

(assert (=> d!1242775 (= (content!7280 (_2!25199 lt!1500990)) e!2619009)))

(declare-fun b!4218631 () Bool)

(assert (=> b!4218631 (= e!2619009 ((as const (Array C!25560 Bool)) false))))

(declare-fun b!4218632 () Bool)

(assert (=> b!4218632 (= e!2619009 ((_ map or) (store ((as const (Array C!25560 Bool)) false) (h!51822 (_2!25199 lt!1500990)) true) (content!7280 (t!348545 (_2!25199 lt!1500990)))))))

(assert (= (and d!1242775 c!718067) b!4218631))

(assert (= (and d!1242775 (not c!718067)) b!4218632))

(declare-fun m!4807303 () Bool)

(assert (=> b!4218632 m!4807303))

(declare-fun m!4807305 () Bool)

(assert (=> b!4218632 m!4807305))

(assert (=> d!1242481 d!1242775))

(declare-fun bs!597604 () Bool)

(declare-fun d!1242777 () Bool)

(assert (= bs!597604 (and d!1242777 d!1242571)))

(declare-fun lambda!129816 () Int)

(assert (=> bs!597604 (= (and (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (= lambda!129816 lambda!129796))))

(declare-fun bs!597605 () Bool)

(assert (= bs!597605 (and d!1242777 d!1242665)))

(assert (=> bs!597605 (= (and (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 rBis!178))) (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 rBis!178)))) (= lambda!129816 lambda!129808))))

(assert (=> d!1242777 true))

(assert (=> d!1242777 (< (dynLambda!19987 order!24547 (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) (dynLambda!19988 order!24549 lambda!129816))))

(assert (=> d!1242777 true))

(assert (=> d!1242777 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (dynLambda!19988 order!24549 lambda!129816))))

(assert (=> d!1242777 (= (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (Forall!1579 lambda!129816))))

(declare-fun bs!597606 () Bool)

(assert (= bs!597606 d!1242777))

(declare-fun m!4807307 () Bool)

(assert (=> bs!597606 m!4807307))

(assert (=> d!1242451 d!1242777))

(declare-fun d!1242779 () Bool)

(assert (=> d!1242779 (= (inv!17 (value!242202 tBis!41)) (= (charsToBigInt!1 (text!56504 (value!242202 tBis!41))) (value!242194 (value!242202 tBis!41))))))

(declare-fun bs!597607 () Bool)

(assert (= bs!597607 d!1242779))

(declare-fun m!4807309 () Bool)

(assert (=> bs!597607 m!4807309))

(assert (=> b!4218177 d!1242779))

(declare-fun d!1242781 () Bool)

(declare-fun lt!1501436 () Bool)

(assert (=> d!1242781 (= lt!1501436 (select (content!7281 rules!3967) (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))

(declare-fun e!2619010 () Bool)

(assert (=> d!1242781 (= lt!1501436 e!2619010)))

(declare-fun res!1733873 () Bool)

(assert (=> d!1242781 (=> (not res!1733873) (not e!2619010))))

(assert (=> d!1242781 (= res!1733873 ((_ is Cons!46403) rules!3967))))

(assert (=> d!1242781 (= (contains!9599 rules!3967 (rule!10908 (_1!25199 (get!15101 lt!1501147)))) lt!1501436)))

(declare-fun b!4218633 () Bool)

(declare-fun e!2619011 () Bool)

(assert (=> b!4218633 (= e!2619010 e!2619011)))

(declare-fun res!1733872 () Bool)

(assert (=> b!4218633 (=> res!1733872 e!2619011)))

(assert (=> b!4218633 (= res!1733872 (= (h!51823 rules!3967) (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))

(declare-fun b!4218634 () Bool)

(assert (=> b!4218634 (= e!2619011 (contains!9599 (t!348546 rules!3967) (rule!10908 (_1!25199 (get!15101 lt!1501147)))))))

(assert (= (and d!1242781 res!1733873) b!4218633))

(assert (= (and b!4218633 (not res!1733872)) b!4218634))

(assert (=> d!1242781 m!4806739))

(declare-fun m!4807311 () Bool)

(assert (=> d!1242781 m!4807311))

(declare-fun m!4807313 () Bool)

(assert (=> b!4218634 m!4807313))

(assert (=> b!4218167 d!1242781))

(assert (=> b!4218167 d!1242539))

(declare-fun d!1242783 () Bool)

(declare-fun lt!1501437 () Int)

(assert (=> d!1242783 (>= lt!1501437 0)))

(declare-fun e!2619012 () Int)

(assert (=> d!1242783 (= lt!1501437 e!2619012)))

(declare-fun c!718068 () Bool)

(assert (=> d!1242783 (= c!718068 ((_ is Nil!46402) (t!348545 p!3001)))))

(assert (=> d!1242783 (= (size!34075 (t!348545 p!3001)) lt!1501437)))

(declare-fun b!4218635 () Bool)

(assert (=> b!4218635 (= e!2619012 0)))

(declare-fun b!4218636 () Bool)

(assert (=> b!4218636 (= e!2619012 (+ 1 (size!34075 (t!348545 (t!348545 p!3001)))))))

(assert (= (and d!1242783 c!718068) b!4218635))

(assert (= (and d!1242783 (not c!718068)) b!4218636))

(declare-fun m!4807315 () Bool)

(assert (=> b!4218636 m!4807315))

(assert (=> b!4218140 d!1242783))

(declare-fun d!1242785 () Bool)

(assert (=> d!1242785 (= (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))) (isBalanced!3747 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))))))

(declare-fun bs!597608 () Bool)

(assert (= bs!597608 d!1242785))

(declare-fun m!4807317 () Bool)

(assert (=> bs!597608 m!4807317))

(assert (=> tb!253227 d!1242785))

(declare-fun d!1242787 () Bool)

(assert (=> d!1242787 (= (seqFromList!5761 (_1!25201 lt!1501143)) (fromListB!2635 (_1!25201 lt!1501143)))))

(declare-fun bs!597609 () Bool)

(assert (= bs!597609 d!1242787))

(declare-fun m!4807319 () Bool)

(assert (=> bs!597609 m!4807319))

(assert (=> b!4218156 d!1242787))

(declare-fun d!1242789 () Bool)

(declare-fun e!2619013 () Bool)

(assert (=> d!1242789 e!2619013))

(declare-fun res!1733874 () Bool)

(assert (=> d!1242789 (=> res!1733874 e!2619013)))

(assert (=> d!1242789 (= res!1733874 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun lt!1501438 () Unit!65553)

(assert (=> d!1242789 (= lt!1501438 (choose!25856 (regex!7778 (h!51823 rules!3967)) input!3517))))

(assert (=> d!1242789 (validRegex!5757 (regex!7778 (h!51823 rules!3967)))))

(assert (=> d!1242789 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1634 (regex!7778 (h!51823 rules!3967)) input!3517) lt!1501438)))

(declare-fun b!4218637 () Bool)

(assert (=> b!4218637 (= e!2619013 (matchR!6380 (regex!7778 (h!51823 rules!3967)) (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (= (and d!1242789 (not res!1733874)) b!4218637))

(assert (=> d!1242789 m!4806329))

(assert (=> d!1242789 m!4806331))

(assert (=> d!1242789 m!4806633))

(assert (=> d!1242789 m!4806645))

(declare-fun m!4807321 () Bool)

(assert (=> d!1242789 m!4807321))

(assert (=> d!1242789 m!4807187))

(assert (=> d!1242789 m!4806329))

(assert (=> d!1242789 m!4806331))

(assert (=> b!4218637 m!4806329))

(assert (=> b!4218637 m!4806331))

(assert (=> b!4218637 m!4806329))

(assert (=> b!4218637 m!4806331))

(assert (=> b!4218637 m!4806633))

(assert (=> b!4218637 m!4806635))

(assert (=> b!4218156 d!1242789))

(assert (=> b!4218156 d!1242597))

(assert (=> b!4218156 d!1242639))

(declare-fun bs!597610 () Bool)

(declare-fun d!1242791 () Bool)

(assert (= bs!597610 (and d!1242791 d!1242571)))

(declare-fun lambda!129817 () Int)

(assert (=> bs!597610 (= lambda!129817 lambda!129796)))

(declare-fun bs!597611 () Bool)

(assert (= bs!597611 (and d!1242791 d!1242665)))

(assert (=> bs!597611 (= (and (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 rBis!178))) (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 rBis!178)))) (= lambda!129817 lambda!129808))))

(declare-fun bs!597612 () Bool)

(assert (= bs!597612 (and d!1242791 d!1242777)))

(assert (=> bs!597612 (= (and (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41))))) (= lambda!129817 lambda!129816))))

(declare-fun b!4218638 () Bool)

(declare-fun e!2619015 () Bool)

(assert (=> b!4218638 (= e!2619015 true)))

(assert (=> d!1242791 e!2619015))

(assert (= d!1242791 b!4218638))

(assert (=> b!4218638 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) (dynLambda!19988 order!24549 lambda!129817))))

(assert (=> b!4218638 (< (dynLambda!19987 order!24547 (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (dynLambda!19988 order!24549 lambda!129817))))

(assert (=> d!1242791 (= (list!16787 (dynLambda!19986 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (dynLambda!19991 (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501143))))) (list!16787 (seqFromList!5761 (_1!25201 lt!1501143))))))

(declare-fun lt!1501439 () Unit!65553)

(assert (=> d!1242791 (= lt!1501439 (ForallOf!1086 lambda!129817 (seqFromList!5761 (_1!25201 lt!1501143))))))

(assert (=> d!1242791 (= (lemmaSemiInverse!2502 (transformation!7778 (h!51823 rules!3967)) (seqFromList!5761 (_1!25201 lt!1501143))) lt!1501439)))

(declare-fun b_lambda!124309 () Bool)

(assert (=> (not b_lambda!124309) (not d!1242791)))

(declare-fun tb!253369 () Bool)

(declare-fun t!348704 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) t!348704) tb!253369))

(declare-fun tp!1290446 () Bool)

(declare-fun b!4218653 () Bool)

(declare-fun e!2619022 () Bool)

(assert (=> b!4218653 (= e!2619022 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (dynLambda!19991 (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501143)))))) tp!1290446))))

(declare-fun result!308814 () Bool)

(assert (=> tb!253369 (= result!308814 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (dynLambda!19991 (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501143))))) e!2619022))))

(assert (= tb!253369 b!4218653))

(declare-fun m!4807325 () Bool)

(assert (=> b!4218653 m!4807325))

(declare-fun m!4807327 () Bool)

(assert (=> tb!253369 m!4807327))

(assert (=> d!1242791 t!348704))

(declare-fun b_and!332611 () Bool)

(assert (= b_and!332567 (and (=> t!348704 result!308814) b_and!332611)))

(declare-fun t!348706 () Bool)

(declare-fun tb!253371 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) t!348706) tb!253371))

(declare-fun result!308816 () Bool)

(assert (= result!308816 result!308814))

(assert (=> d!1242791 t!348706))

(declare-fun b_and!332613 () Bool)

(assert (= b_and!332561 (and (=> t!348706 result!308816) b_and!332613)))

(declare-fun t!348708 () Bool)

(declare-fun tb!253373 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) t!348708) tb!253373))

(declare-fun result!308818 () Bool)

(assert (= result!308818 result!308814))

(assert (=> d!1242791 t!348708))

(declare-fun b_and!332615 () Bool)

(assert (= b_and!332565 (and (=> t!348708 result!308818) b_and!332615)))

(declare-fun t!348710 () Bool)

(declare-fun tb!253375 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) t!348710) tb!253375))

(declare-fun result!308820 () Bool)

(assert (= result!308820 result!308814))

(assert (=> d!1242791 t!348710))

(declare-fun b_and!332617 () Bool)

(assert (= b_and!332569 (and (=> t!348710 result!308820) b_and!332617)))

(declare-fun tb!253377 () Bool)

(declare-fun t!348712 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) t!348712) tb!253377))

(declare-fun result!308822 () Bool)

(assert (= result!308822 result!308814))

(assert (=> d!1242791 t!348712))

(declare-fun b_and!332619 () Bool)

(assert (= b_and!332563 (and (=> t!348712 result!308822) b_and!332619)))

(declare-fun b_lambda!124311 () Bool)

(assert (=> (not b_lambda!124311) (not d!1242791)))

(declare-fun tb!253379 () Bool)

(declare-fun t!348714 () Bool)

(assert (=> (and b!4217746 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) t!348714) tb!253379))

(declare-fun result!308824 () Bool)

(assert (=> tb!253379 (= result!308824 (inv!21 (dynLambda!19991 (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501143)))))))

(declare-fun m!4807343 () Bool)

(assert (=> tb!253379 m!4807343))

(assert (=> d!1242791 t!348714))

(declare-fun b_and!332621 () Bool)

(assert (= b_and!332575 (and (=> t!348714 result!308824) b_and!332621)))

(declare-fun tb!253381 () Bool)

(declare-fun t!348716 () Bool)

(assert (=> (and b!4217752 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) t!348716) tb!253381))

(declare-fun result!308826 () Bool)

(assert (= result!308826 result!308824))

(assert (=> d!1242791 t!348716))

(declare-fun b_and!332623 () Bool)

(assert (= b_and!332577 (and (=> t!348716 result!308826) b_and!332623)))

(declare-fun t!348718 () Bool)

(declare-fun tb!253383 () Bool)

(assert (=> (and b!4218232 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) t!348718) tb!253383))

(declare-fun result!308828 () Bool)

(assert (= result!308828 result!308824))

(assert (=> d!1242791 t!348718))

(declare-fun b_and!332625 () Bool)

(assert (= b_and!332571 (and (=> t!348718 result!308828) b_and!332625)))

(declare-fun t!348720 () Bool)

(declare-fun tb!253385 () Bool)

(assert (=> (and b!4217775 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) t!348720) tb!253385))

(declare-fun result!308830 () Bool)

(assert (= result!308830 result!308824))

(assert (=> d!1242791 t!348720))

(declare-fun b_and!332627 () Bool)

(assert (= b_and!332579 (and (=> t!348720 result!308830) b_and!332627)))

(declare-fun t!348722 () Bool)

(declare-fun tb!253387 () Bool)

(assert (=> (and b!4217757 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) t!348722) tb!253387))

(declare-fun result!308832 () Bool)

(assert (= result!308832 result!308824))

(assert (=> d!1242791 t!348722))

(declare-fun b_and!332629 () Bool)

(assert (= b_and!332573 (and (=> t!348722 result!308832) b_and!332629)))

(declare-fun m!4807347 () Bool)

(assert (=> d!1242791 m!4807347))

(declare-fun m!4807349 () Bool)

(assert (=> d!1242791 m!4807349))

(assert (=> d!1242791 m!4806649))

(declare-fun m!4807351 () Bool)

(assert (=> d!1242791 m!4807351))

(assert (=> d!1242791 m!4807349))

(declare-fun m!4807353 () Bool)

(assert (=> d!1242791 m!4807353))

(assert (=> d!1242791 m!4806649))

(declare-fun m!4807355 () Bool)

(assert (=> d!1242791 m!4807355))

(assert (=> d!1242791 m!4806649))

(assert (=> d!1242791 m!4807347))

(assert (=> b!4218156 d!1242791))

(declare-fun d!1242799 () Bool)

(declare-fun lt!1501442 () Int)

(assert (=> d!1242799 (= lt!1501442 (size!34075 (list!16787 (seqFromList!5761 (_1!25201 lt!1501143)))))))

(assert (=> d!1242799 (= lt!1501442 (size!34078 (c!717901 (seqFromList!5761 (_1!25201 lt!1501143)))))))

(assert (=> d!1242799 (= (size!34077 (seqFromList!5761 (_1!25201 lt!1501143))) lt!1501442)))

(declare-fun bs!597614 () Bool)

(assert (= bs!597614 d!1242799))

(assert (=> bs!597614 m!4806649))

(assert (=> bs!597614 m!4807355))

(assert (=> bs!597614 m!4807355))

(declare-fun m!4807361 () Bool)

(assert (=> bs!597614 m!4807361))

(declare-fun m!4807363 () Bool)

(assert (=> bs!597614 m!4807363))

(assert (=> b!4218156 d!1242799))

(declare-fun bm!293098 () Bool)

(declare-fun call!293106 () Unit!65553)

(assert (=> bm!293098 (= call!293106 (lemmaIsPrefixSameLengthThenSameList!1030 input!3517 Nil!46402 input!3517))))

(declare-fun b!4218655 () Bool)

(declare-fun e!2619025 () tuple2!44134)

(declare-fun call!293105 () tuple2!44134)

(assert (=> b!4218655 (= e!2619025 call!293105)))

(declare-fun bm!293099 () Bool)

(declare-fun call!293107 () List!46526)

(assert (=> bm!293099 (= call!293107 (tail!6797 input!3517))))

(declare-fun bm!293100 () Bool)

(declare-fun call!293104 () Regex!12683)

(declare-fun call!293109 () C!25560)

(assert (=> bm!293100 (= call!293104 (derivativeStep!3834 (regex!7778 (h!51823 rules!3967)) call!293109))))

(declare-fun b!4218657 () Bool)

(declare-fun e!2619026 () tuple2!44134)

(assert (=> b!4218657 (= e!2619026 (tuple2!44135 Nil!46402 input!3517))))

(declare-fun b!4218658 () Bool)

(declare-fun e!2619031 () Unit!65553)

(declare-fun Unit!65569 () Unit!65553)

(assert (=> b!4218658 (= e!2619031 Unit!65569)))

(declare-fun b!4218659 () Bool)

(declare-fun e!2619032 () Bool)

(declare-fun lt!1501456 () tuple2!44134)

(assert (=> b!4218659 (= e!2619032 (>= (size!34075 (_1!25201 lt!1501456)) (size!34075 Nil!46402)))))

(declare-fun b!4218661 () Bool)

(declare-fun e!2619029 () Bool)

(assert (=> b!4218661 (= e!2619029 e!2619032)))

(declare-fun res!1733883 () Bool)

(assert (=> b!4218661 (=> res!1733883 e!2619032)))

(assert (=> b!4218661 (= res!1733883 (isEmpty!27493 (_1!25201 lt!1501456)))))

(declare-fun b!4218662 () Bool)

(declare-fun e!2619027 () tuple2!44134)

(assert (=> b!4218662 (= e!2619027 (tuple2!44135 Nil!46402 input!3517))))

(declare-fun b!4218664 () Bool)

(assert (=> b!4218664 (= e!2619026 (tuple2!44135 Nil!46402 Nil!46402))))

(declare-fun b!4218665 () Bool)

(declare-fun c!718077 () Bool)

(declare-fun call!293110 () Bool)

(assert (=> b!4218665 (= c!718077 call!293110)))

(declare-fun lt!1501443 () Unit!65553)

(declare-fun lt!1501464 () Unit!65553)

(assert (=> b!4218665 (= lt!1501443 lt!1501464)))

(declare-fun lt!1501444 () C!25560)

(declare-fun lt!1501446 () List!46526)

(assert (=> b!4218665 (= (++!11852 (++!11852 Nil!46402 (Cons!46402 lt!1501444 Nil!46402)) lt!1501446) input!3517)))

(assert (=> b!4218665 (= lt!1501464 (lemmaMoveElementToOtherListKeepsConcatEq!1302 Nil!46402 lt!1501444 lt!1501446 input!3517))))

(assert (=> b!4218665 (= lt!1501446 (tail!6797 input!3517))))

(assert (=> b!4218665 (= lt!1501444 (head!8950 input!3517))))

(declare-fun lt!1501450 () Unit!65553)

(declare-fun lt!1501449 () Unit!65553)

(assert (=> b!4218665 (= lt!1501450 lt!1501449)))

(assert (=> b!4218665 (isPrefix!4637 (++!11852 Nil!46402 (Cons!46402 (head!8950 (getSuffix!2859 input!3517 Nil!46402)) Nil!46402)) input!3517)))

(assert (=> b!4218665 (= lt!1501449 (lemmaAddHeadSuffixToPrefixStillPrefix!684 Nil!46402 input!3517))))

(declare-fun lt!1501452 () Unit!65553)

(declare-fun lt!1501463 () Unit!65553)

(assert (=> b!4218665 (= lt!1501452 lt!1501463)))

(assert (=> b!4218665 (= lt!1501463 (lemmaAddHeadSuffixToPrefixStillPrefix!684 Nil!46402 input!3517))))

(declare-fun lt!1501448 () List!46526)

(assert (=> b!4218665 (= lt!1501448 (++!11852 Nil!46402 (Cons!46402 (head!8950 input!3517) Nil!46402)))))

(declare-fun lt!1501466 () Unit!65553)

(assert (=> b!4218665 (= lt!1501466 e!2619031)))

(declare-fun c!718072 () Bool)

(assert (=> b!4218665 (= c!718072 (= (size!34075 Nil!46402) (size!34075 input!3517)))))

(declare-fun lt!1501469 () Unit!65553)

(declare-fun lt!1501470 () Unit!65553)

(assert (=> b!4218665 (= lt!1501469 lt!1501470)))

(assert (=> b!4218665 (<= (size!34075 Nil!46402) (size!34075 input!3517))))

(assert (=> b!4218665 (= lt!1501470 (lemmaIsPrefixThenSmallerEqSize!596 Nil!46402 input!3517))))

(declare-fun e!2619030 () tuple2!44134)

(assert (=> b!4218665 (= e!2619030 e!2619025)))

(declare-fun b!4218666 () Bool)

(declare-fun c!718074 () Bool)

(assert (=> b!4218666 (= c!718074 call!293110)))

(declare-fun lt!1501462 () Unit!65553)

(declare-fun lt!1501460 () Unit!65553)

(assert (=> b!4218666 (= lt!1501462 lt!1501460)))

(assert (=> b!4218666 (= input!3517 Nil!46402)))

(assert (=> b!4218666 (= lt!1501460 call!293106)))

(declare-fun lt!1501445 () Unit!65553)

(declare-fun lt!1501447 () Unit!65553)

(assert (=> b!4218666 (= lt!1501445 lt!1501447)))

(declare-fun call!293103 () Bool)

(assert (=> b!4218666 call!293103))

(declare-fun call!293108 () Unit!65553)

(assert (=> b!4218666 (= lt!1501447 call!293108)))

(assert (=> b!4218666 (= e!2619030 e!2619026)))

(declare-fun bm!293101 () Bool)

(assert (=> bm!293101 (= call!293105 (findLongestMatchInner!1661 call!293104 lt!1501448 (+ (size!34075 Nil!46402) 1) call!293107 input!3517 (size!34075 input!3517)))))

(declare-fun bm!293102 () Bool)

(assert (=> bm!293102 (= call!293103 (isPrefix!4637 input!3517 input!3517))))

(declare-fun b!4218667 () Bool)

(declare-fun Unit!65570 () Unit!65553)

(assert (=> b!4218667 (= e!2619031 Unit!65570)))

(declare-fun lt!1501453 () Unit!65553)

(assert (=> b!4218667 (= lt!1501453 call!293108)))

(assert (=> b!4218667 call!293103))

(declare-fun lt!1501468 () Unit!65553)

(assert (=> b!4218667 (= lt!1501468 lt!1501453)))

(declare-fun lt!1501458 () Unit!65553)

(assert (=> b!4218667 (= lt!1501458 call!293106)))

(assert (=> b!4218667 (= input!3517 Nil!46402)))

(declare-fun lt!1501455 () Unit!65553)

(assert (=> b!4218667 (= lt!1501455 lt!1501458)))

(assert (=> b!4218667 false))

(declare-fun bm!293103 () Bool)

(assert (=> bm!293103 (= call!293110 (nullable!4470 (regex!7778 (h!51823 rules!3967))))))

(declare-fun b!4218668 () Bool)

(assert (=> b!4218668 (= e!2619027 e!2619030)))

(declare-fun c!718076 () Bool)

(assert (=> b!4218668 (= c!718076 (= (size!34075 Nil!46402) (size!34075 input!3517)))))

(declare-fun bm!293104 () Bool)

(assert (=> bm!293104 (= call!293109 (head!8950 input!3517))))

(declare-fun b!4218669 () Bool)

(declare-fun e!2619028 () tuple2!44134)

(assert (=> b!4218669 (= e!2619025 e!2619028)))

(declare-fun lt!1501459 () tuple2!44134)

(assert (=> b!4218669 (= lt!1501459 call!293105)))

(declare-fun c!718075 () Bool)

(assert (=> b!4218669 (= c!718075 (isEmpty!27493 (_1!25201 lt!1501459)))))

(declare-fun bm!293105 () Bool)

(assert (=> bm!293105 (= call!293108 (lemmaIsPrefixRefl!3054 input!3517 input!3517))))

(declare-fun b!4218670 () Bool)

(assert (=> b!4218670 (= e!2619028 (tuple2!44135 Nil!46402 input!3517))))

(declare-fun d!1242801 () Bool)

(assert (=> d!1242801 e!2619029))

(declare-fun res!1733884 () Bool)

(assert (=> d!1242801 (=> (not res!1733884) (not e!2619029))))

(assert (=> d!1242801 (= res!1733884 (= (++!11852 (_1!25201 lt!1501456) (_2!25201 lt!1501456)) input!3517))))

(assert (=> d!1242801 (= lt!1501456 e!2619027)))

(declare-fun c!718073 () Bool)

(assert (=> d!1242801 (= c!718073 (lostCause!1058 (regex!7778 (h!51823 rules!3967))))))

(declare-fun lt!1501465 () Unit!65553)

(declare-fun Unit!65571 () Unit!65553)

(assert (=> d!1242801 (= lt!1501465 Unit!65571)))

(assert (=> d!1242801 (= (getSuffix!2859 input!3517 Nil!46402) input!3517)))

(declare-fun lt!1501454 () Unit!65553)

(declare-fun lt!1501467 () Unit!65553)

(assert (=> d!1242801 (= lt!1501454 lt!1501467)))

(declare-fun lt!1501461 () List!46526)

(assert (=> d!1242801 (= input!3517 lt!1501461)))

(assert (=> d!1242801 (= lt!1501467 (lemmaSamePrefixThenSameSuffix!2275 Nil!46402 input!3517 Nil!46402 lt!1501461 input!3517))))

(assert (=> d!1242801 (= lt!1501461 (getSuffix!2859 input!3517 Nil!46402))))

(declare-fun lt!1501457 () Unit!65553)

(declare-fun lt!1501451 () Unit!65553)

(assert (=> d!1242801 (= lt!1501457 lt!1501451)))

(assert (=> d!1242801 (isPrefix!4637 Nil!46402 (++!11852 Nil!46402 input!3517))))

(assert (=> d!1242801 (= lt!1501451 (lemmaConcatTwoListThenFirstIsPrefix!3092 Nil!46402 input!3517))))

(assert (=> d!1242801 (validRegex!5757 (regex!7778 (h!51823 rules!3967)))))

(assert (=> d!1242801 (= (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)) lt!1501456)))

(declare-fun b!4218663 () Bool)

(assert (=> b!4218663 (= e!2619028 lt!1501459)))

(assert (= (and d!1242801 c!718073) b!4218662))

(assert (= (and d!1242801 (not c!718073)) b!4218668))

(assert (= (and b!4218668 c!718076) b!4218666))

(assert (= (and b!4218668 (not c!718076)) b!4218665))

(assert (= (and b!4218666 c!718074) b!4218664))

(assert (= (and b!4218666 (not c!718074)) b!4218657))

(assert (= (and b!4218665 c!718072) b!4218667))

(assert (= (and b!4218665 (not c!718072)) b!4218658))

(assert (= (and b!4218665 c!718077) b!4218669))

(assert (= (and b!4218665 (not c!718077)) b!4218655))

(assert (= (and b!4218669 c!718075) b!4218670))

(assert (= (and b!4218669 (not c!718075)) b!4218663))

(assert (= (or b!4218669 b!4218655) bm!293104))

(assert (= (or b!4218669 b!4218655) bm!293099))

(assert (= (or b!4218669 b!4218655) bm!293100))

(assert (= (or b!4218669 b!4218655) bm!293101))

(assert (= (or b!4218666 b!4218667) bm!293105))

(assert (= (or b!4218666 b!4218665) bm!293103))

(assert (= (or b!4218666 b!4218667) bm!293102))

(assert (= (or b!4218666 b!4218667) bm!293098))

(assert (= (and d!1242801 res!1733884) b!4218661))

(assert (= (and b!4218661 (not res!1733883)) b!4218659))

(assert (=> b!4218665 m!4806331))

(assert (=> b!4218665 m!4806983))

(declare-fun m!4807389 () Bool)

(assert (=> b!4218665 m!4807389))

(assert (=> b!4218665 m!4806987))

(assert (=> b!4218665 m!4806989))

(assert (=> b!4218665 m!4806417))

(assert (=> b!4218665 m!4806991))

(assert (=> b!4218665 m!4806329))

(declare-fun m!4807391 () Bool)

(assert (=> b!4218665 m!4807391))

(assert (=> b!4218665 m!4806419))

(assert (=> b!4218665 m!4806989))

(assert (=> b!4218665 m!4806995))

(assert (=> b!4218665 m!4806997))

(assert (=> b!4218665 m!4806999))

(assert (=> b!4218665 m!4807391))

(declare-fun m!4807397 () Bool)

(assert (=> b!4218665 m!4807397))

(assert (=> b!4218665 m!4806997))

(declare-fun m!4807399 () Bool)

(assert (=> bm!293100 m!4807399))

(assert (=> bm!293105 m!4806071))

(assert (=> bm!293099 m!4806419))

(assert (=> bm!293104 m!4806417))

(assert (=> bm!293103 m!4807191))

(declare-fun m!4807401 () Bool)

(assert (=> b!4218669 m!4807401))

(assert (=> bm!293098 m!4807007))

(declare-fun m!4807403 () Bool)

(assert (=> b!4218661 m!4807403))

(assert (=> d!1242801 m!4807011))

(assert (=> d!1242801 m!4807013))

(assert (=> d!1242801 m!4807187))

(assert (=> d!1242801 m!4806989))

(declare-fun m!4807407 () Bool)

(assert (=> d!1242801 m!4807407))

(assert (=> d!1242801 m!4807013))

(assert (=> d!1242801 m!4807017))

(declare-fun m!4807411 () Bool)

(assert (=> d!1242801 m!4807411))

(declare-fun m!4807413 () Bool)

(assert (=> d!1242801 m!4807413))

(declare-fun m!4807415 () Bool)

(assert (=> b!4218659 m!4807415))

(assert (=> b!4218659 m!4806329))

(assert (=> bm!293102 m!4806069))

(assert (=> bm!293101 m!4806331))

(declare-fun m!4807417 () Bool)

(assert (=> bm!293101 m!4807417))

(assert (=> b!4218156 d!1242801))

(declare-fun d!1242821 () Bool)

(assert (=> d!1242821 (= (apply!10701 (transformation!7778 (h!51823 rules!3967)) (seqFromList!5761 (_1!25201 lt!1501143))) (dynLambda!19991 (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (seqFromList!5761 (_1!25201 lt!1501143))))))

(declare-fun b_lambda!124317 () Bool)

(assert (=> (not b_lambda!124317) (not d!1242821)))

(assert (=> d!1242821 t!348714))

(declare-fun b_and!332651 () Bool)

(assert (= b_and!332621 (and (=> t!348714 result!308824) b_and!332651)))

(assert (=> d!1242821 t!348720))

(declare-fun b_and!332653 () Bool)

(assert (= b_and!332627 (and (=> t!348720 result!308830) b_and!332653)))

(assert (=> d!1242821 t!348718))

(declare-fun b_and!332655 () Bool)

(assert (= b_and!332625 (and (=> t!348718 result!308828) b_and!332655)))

(assert (=> d!1242821 t!348722))

(declare-fun b_and!332657 () Bool)

(assert (= b_and!332629 (and (=> t!348722 result!308832) b_and!332657)))

(assert (=> d!1242821 t!348716))

(declare-fun b_and!332659 () Bool)

(assert (= b_and!332623 (and (=> t!348716 result!308826) b_and!332659)))

(assert (=> d!1242821 m!4806649))

(assert (=> d!1242821 m!4807347))

(assert (=> b!4218156 d!1242821))

(declare-fun d!1242827 () Bool)

(assert (=> d!1242827 (= (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) ((_ is Nil!46402) (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> b!4218156 d!1242827))

(declare-fun d!1242829 () Bool)

(declare-fun lt!1501478 () Int)

(assert (=> d!1242829 (>= lt!1501478 0)))

(declare-fun e!2619041 () Int)

(assert (=> d!1242829 (= lt!1501478 e!2619041)))

(declare-fun c!718084 () Bool)

(assert (=> d!1242829 (= c!718084 ((_ is Nil!46402) lt!1501152))))

(assert (=> d!1242829 (= (size!34075 lt!1501152) lt!1501478)))

(declare-fun b!4218684 () Bool)

(assert (=> b!4218684 (= e!2619041 0)))

(declare-fun b!4218685 () Bool)

(assert (=> b!4218685 (= e!2619041 (+ 1 (size!34075 (t!348545 lt!1501152))))))

(assert (= (and d!1242829 c!718084) b!4218684))

(assert (= (and d!1242829 (not c!718084)) b!4218685))

(declare-fun m!4807423 () Bool)

(assert (=> b!4218685 m!4807423))

(assert (=> b!4218172 d!1242829))

(assert (=> b!4218172 d!1242483))

(declare-fun d!1242831 () Bool)

(declare-fun lt!1501479 () Int)

(assert (=> d!1242831 (>= lt!1501479 0)))

(declare-fun e!2619044 () Int)

(assert (=> d!1242831 (= lt!1501479 e!2619044)))

(declare-fun c!718087 () Bool)

(assert (=> d!1242831 (= c!718087 ((_ is Nil!46402) suffixBis!41))))

(assert (=> d!1242831 (= (size!34075 suffixBis!41) lt!1501479)))

(declare-fun b!4218690 () Bool)

(assert (=> b!4218690 (= e!2619044 0)))

(declare-fun b!4218691 () Bool)

(assert (=> b!4218691 (= e!2619044 (+ 1 (size!34075 (t!348545 suffixBis!41))))))

(assert (= (and d!1242831 c!718087) b!4218690))

(assert (= (and d!1242831 (not c!718087)) b!4218691))

(declare-fun m!4807425 () Bool)

(assert (=> b!4218691 m!4807425))

(assert (=> b!4218172 d!1242831))

(declare-fun d!1242833 () Bool)

(declare-fun c!718088 () Bool)

(assert (=> d!1242833 (= c!718088 ((_ is Node!13989) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))))))

(declare-fun e!2619045 () Bool)

(assert (=> d!1242833 (= (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))) e!2619045)))

(declare-fun b!4218692 () Bool)

(assert (=> b!4218692 (= e!2619045 (inv!61055 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))))))

(declare-fun b!4218693 () Bool)

(declare-fun e!2619046 () Bool)

(assert (=> b!4218693 (= e!2619045 e!2619046)))

(declare-fun res!1733887 () Bool)

(assert (=> b!4218693 (= res!1733887 (not ((_ is Leaf!21622) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))))))))

(assert (=> b!4218693 (=> res!1733887 e!2619046)))

(declare-fun b!4218694 () Bool)

(assert (=> b!4218694 (= e!2619046 (inv!61056 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))))))

(assert (= (and d!1242833 c!718088) b!4218692))

(assert (= (and d!1242833 (not c!718088)) b!4218693))

(assert (= (and b!4218693 (not res!1733887)) b!4218694))

(declare-fun m!4807427 () Bool)

(assert (=> b!4218692 m!4807427))

(declare-fun m!4807429 () Bool)

(assert (=> b!4218694 m!4807429))

(assert (=> b!4218141 d!1242833))

(declare-fun d!1242835 () Bool)

(assert (=> d!1242835 (= (isDefined!7401 lt!1501147) (not (isEmpty!27491 lt!1501147)))))

(declare-fun bs!597616 () Bool)

(assert (= bs!597616 d!1242835))

(assert (=> bs!597616 m!4806695))

(assert (=> b!4218163 d!1242835))

(declare-fun d!1242837 () Bool)

(assert (=> d!1242837 (= (list!16787 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))) (list!16789 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))))

(declare-fun bs!597617 () Bool)

(assert (= bs!597617 d!1242837))

(declare-fun m!4807431 () Bool)

(assert (=> bs!597617 m!4807431))

(assert (=> b!4217803 d!1242837))

(declare-fun d!1242839 () Bool)

(assert (=> d!1242839 (= (inv!61046 (tag!8642 (h!51823 (t!348546 rules!3967)))) (= (mod (str.len (value!242201 (tag!8642 (h!51823 (t!348546 rules!3967))))) 2) 0))))

(assert (=> b!4218231 d!1242839))

(declare-fun d!1242841 () Bool)

(declare-fun res!1733888 () Bool)

(declare-fun e!2619048 () Bool)

(assert (=> d!1242841 (=> (not res!1733888) (not e!2619048))))

(assert (=> d!1242841 (= res!1733888 (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967))))))))

(assert (=> d!1242841 (= (inv!61049 (transformation!7778 (h!51823 (t!348546 rules!3967)))) e!2619048)))

(declare-fun b!4218697 () Bool)

(assert (=> b!4218697 (= e!2619048 (equivClasses!3280 (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967))))))))

(assert (= (and d!1242841 res!1733888) b!4218697))

(declare-fun m!4807437 () Bool)

(assert (=> d!1242841 m!4807437))

(declare-fun m!4807439 () Bool)

(assert (=> b!4218697 m!4807439))

(assert (=> b!4218231 d!1242841))

(declare-fun b!4218700 () Bool)

(declare-fun res!1733895 () Bool)

(declare-fun e!2619056 () Bool)

(assert (=> b!4218700 (=> res!1733895 e!2619056)))

(declare-fun e!2619053 () Bool)

(assert (=> b!4218700 (= res!1733895 e!2619053)))

(declare-fun res!1733894 () Bool)

(assert (=> b!4218700 (=> (not res!1733894) (not e!2619053))))

(declare-fun lt!1501480 () Bool)

(assert (=> b!4218700 (= res!1733894 lt!1501480)))

(declare-fun b!4218701 () Bool)

(declare-fun e!2619050 () Bool)

(assert (=> b!4218701 (= e!2619050 (nullable!4470 (regex!7778 rBis!178)))))

(declare-fun b!4218702 () Bool)

(declare-fun e!2619054 () Bool)

(assert (=> b!4218702 (= e!2619054 (not (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) (c!717900 (regex!7778 rBis!178)))))))

(declare-fun d!1242845 () Bool)

(declare-fun e!2619055 () Bool)

(assert (=> d!1242845 e!2619055))

(declare-fun c!718091 () Bool)

(assert (=> d!1242845 (= c!718091 ((_ is EmptyExpr!12683) (regex!7778 rBis!178)))))

(assert (=> d!1242845 (= lt!1501480 e!2619050)))

(declare-fun c!718093 () Bool)

(assert (=> d!1242845 (= c!718093 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))))))

(assert (=> d!1242845 (validRegex!5757 (regex!7778 rBis!178))))

(assert (=> d!1242845 (= (matchR!6380 (regex!7778 rBis!178) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) lt!1501480)))

(declare-fun b!4218703 () Bool)

(declare-fun call!293111 () Bool)

(assert (=> b!4218703 (= e!2619055 (= lt!1501480 call!293111))))

(declare-fun b!4218705 () Bool)

(assert (=> b!4218705 (= e!2619050 (matchR!6380 (derivativeStep!3834 (regex!7778 rBis!178) (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))))) (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))))))))

(declare-fun b!4218707 () Bool)

(declare-fun res!1733889 () Bool)

(assert (=> b!4218707 (=> res!1733889 e!2619054)))

(assert (=> b!4218707 (= res!1733889 (not (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))))))))

(declare-fun b!4218708 () Bool)

(assert (=> b!4218708 (= e!2619053 (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))) (c!717900 (regex!7778 rBis!178))))))

(declare-fun b!4218709 () Bool)

(declare-fun res!1733896 () Bool)

(assert (=> b!4218709 (=> (not res!1733896) (not e!2619053))))

(assert (=> b!4218709 (= res!1733896 (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060)))))))))

(declare-fun b!4218710 () Bool)

(declare-fun e!2619052 () Bool)

(assert (=> b!4218710 (= e!2619056 e!2619052)))

(declare-fun res!1733891 () Bool)

(assert (=> b!4218710 (=> (not res!1733891) (not e!2619052))))

(assert (=> b!4218710 (= res!1733891 (not lt!1501480))))

(declare-fun b!4218711 () Bool)

(declare-fun e!2619051 () Bool)

(assert (=> b!4218711 (= e!2619055 e!2619051)))

(declare-fun c!718092 () Bool)

(assert (=> b!4218711 (= c!718092 ((_ is EmptyLang!12683) (regex!7778 rBis!178)))))

(declare-fun bm!293106 () Bool)

(assert (=> bm!293106 (= call!293111 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501060))))))))

(declare-fun b!4218712 () Bool)

(assert (=> b!4218712 (= e!2619052 e!2619054)))

(declare-fun res!1733893 () Bool)

(assert (=> b!4218712 (=> res!1733893 e!2619054)))

(assert (=> b!4218712 (= res!1733893 call!293111)))

(declare-fun b!4218713 () Bool)

(declare-fun res!1733892 () Bool)

(assert (=> b!4218713 (=> res!1733892 e!2619056)))

(assert (=> b!4218713 (= res!1733892 (not ((_ is ElementMatch!12683) (regex!7778 rBis!178))))))

(assert (=> b!4218713 (= e!2619051 e!2619056)))

(declare-fun b!4218714 () Bool)

(assert (=> b!4218714 (= e!2619051 (not lt!1501480))))

(declare-fun b!4218715 () Bool)

(declare-fun res!1733890 () Bool)

(assert (=> b!4218715 (=> (not res!1733890) (not e!2619053))))

(assert (=> b!4218715 (= res!1733890 (not call!293111))))

(assert (= (and d!1242845 c!718093) b!4218701))

(assert (= (and d!1242845 (not c!718093)) b!4218705))

(assert (= (and d!1242845 c!718091) b!4218703))

(assert (= (and d!1242845 (not c!718091)) b!4218711))

(assert (= (and b!4218711 c!718092) b!4218714))

(assert (= (and b!4218711 (not c!718092)) b!4218713))

(assert (= (and b!4218713 (not res!1733892)) b!4218700))

(assert (= (and b!4218700 res!1733894) b!4218715))

(assert (= (and b!4218715 res!1733890) b!4218709))

(assert (= (and b!4218709 res!1733896) b!4218708))

(assert (= (and b!4218700 (not res!1733895)) b!4218710))

(assert (= (and b!4218710 res!1733891) b!4218712))

(assert (= (and b!4218712 (not res!1733893)) b!4218707))

(assert (= (and b!4218707 (not res!1733889)) b!4218702))

(assert (= (or b!4218703 b!4218712 b!4218715) bm!293106))

(assert (=> b!4218701 m!4806465))

(assert (=> b!4218709 m!4806343))

(declare-fun m!4807461 () Bool)

(assert (=> b!4218709 m!4807461))

(assert (=> b!4218709 m!4807461))

(declare-fun m!4807463 () Bool)

(assert (=> b!4218709 m!4807463))

(assert (=> b!4218705 m!4806343))

(declare-fun m!4807465 () Bool)

(assert (=> b!4218705 m!4807465))

(assert (=> b!4218705 m!4807465))

(declare-fun m!4807467 () Bool)

(assert (=> b!4218705 m!4807467))

(assert (=> b!4218705 m!4806343))

(assert (=> b!4218705 m!4807461))

(assert (=> b!4218705 m!4807467))

(assert (=> b!4218705 m!4807461))

(declare-fun m!4807469 () Bool)

(assert (=> b!4218705 m!4807469))

(assert (=> bm!293106 m!4806343))

(declare-fun m!4807471 () Bool)

(assert (=> bm!293106 m!4807471))

(assert (=> b!4218708 m!4806343))

(assert (=> b!4218708 m!4807465))

(assert (=> d!1242845 m!4806343))

(assert (=> d!1242845 m!4807471))

(assert (=> d!1242845 m!4806463))

(assert (=> b!4218702 m!4806343))

(assert (=> b!4218702 m!4807465))

(assert (=> b!4218707 m!4806343))

(assert (=> b!4218707 m!4807461))

(assert (=> b!4218707 m!4807461))

(assert (=> b!4218707 m!4807463))

(assert (=> b!4217955 d!1242845))

(assert (=> b!4217955 d!1242551))

(assert (=> b!4217955 d!1242553))

(assert (=> b!4217955 d!1242555))

(declare-fun b!4218720 () Bool)

(declare-fun res!1733907 () Bool)

(declare-fun e!2619067 () Bool)

(assert (=> b!4218720 (=> res!1733907 e!2619067)))

(declare-fun e!2619064 () Bool)

(assert (=> b!4218720 (= res!1733907 e!2619064)))

(declare-fun res!1733906 () Bool)

(assert (=> b!4218720 (=> (not res!1733906) (not e!2619064))))

(declare-fun lt!1501482 () Bool)

(assert (=> b!4218720 (= res!1733906 lt!1501482)))

(declare-fun b!4218721 () Bool)

(declare-fun e!2619061 () Bool)

(assert (=> b!4218721 (= e!2619061 (nullable!4470 (regex!7778 rBis!178)))))

(declare-fun b!4218722 () Bool)

(declare-fun e!2619065 () Bool)

(assert (=> b!4218722 (= e!2619065 (not (= (head!8950 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) (c!717900 (regex!7778 rBis!178)))))))

(declare-fun d!1242859 () Bool)

(declare-fun e!2619066 () Bool)

(assert (=> d!1242859 e!2619066))

(declare-fun c!718095 () Bool)

(assert (=> d!1242859 (= c!718095 ((_ is EmptyExpr!12683) (regex!7778 rBis!178)))))

(assert (=> d!1242859 (= lt!1501482 e!2619061)))

(declare-fun c!718097 () Bool)

(assert (=> d!1242859 (= c!718097 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> d!1242859 (validRegex!5757 (regex!7778 rBis!178))))

(assert (=> d!1242859 (= (matchR!6380 (regex!7778 rBis!178) (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) lt!1501482)))

(declare-fun b!4218723 () Bool)

(declare-fun call!293112 () Bool)

(assert (=> b!4218723 (= e!2619066 (= lt!1501482 call!293112))))

(declare-fun b!4218724 () Bool)

(assert (=> b!4218724 (= e!2619061 (matchR!6380 (derivativeStep!3834 (regex!7778 rBis!178) (head!8950 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517))))) (tail!6797 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517))))))))

(declare-fun b!4218725 () Bool)

(declare-fun res!1733901 () Bool)

(assert (=> b!4218725 (=> res!1733901 e!2619065)))

(assert (=> b!4218725 (= res!1733901 (not (isEmpty!27493 (tail!6797 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))))

(declare-fun b!4218726 () Bool)

(assert (=> b!4218726 (= e!2619064 (= (head!8950 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) (c!717900 (regex!7778 rBis!178))))))

(declare-fun b!4218727 () Bool)

(declare-fun res!1733908 () Bool)

(assert (=> b!4218727 (=> (not res!1733908) (not e!2619064))))

(assert (=> b!4218727 (= res!1733908 (isEmpty!27493 (tail!6797 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517))))))))

(declare-fun b!4218728 () Bool)

(declare-fun e!2619063 () Bool)

(assert (=> b!4218728 (= e!2619067 e!2619063)))

(declare-fun res!1733903 () Bool)

(assert (=> b!4218728 (=> (not res!1733903) (not e!2619063))))

(assert (=> b!4218728 (= res!1733903 (not lt!1501482))))

(declare-fun b!4218729 () Bool)

(declare-fun e!2619062 () Bool)

(assert (=> b!4218729 (= e!2619066 e!2619062)))

(declare-fun c!718096 () Bool)

(assert (=> b!4218729 (= c!718096 ((_ is EmptyLang!12683) (regex!7778 rBis!178)))))

(declare-fun bm!293107 () Bool)

(assert (=> bm!293107 (= call!293112 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 rBis!178) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun b!4218730 () Bool)

(assert (=> b!4218730 (= e!2619063 e!2619065)))

(declare-fun res!1733905 () Bool)

(assert (=> b!4218730 (=> res!1733905 e!2619065)))

(assert (=> b!4218730 (= res!1733905 call!293112)))

(declare-fun b!4218731 () Bool)

(declare-fun res!1733904 () Bool)

(assert (=> b!4218731 (=> res!1733904 e!2619067)))

(assert (=> b!4218731 (= res!1733904 (not ((_ is ElementMatch!12683) (regex!7778 rBis!178))))))

(assert (=> b!4218731 (= e!2619062 e!2619067)))

(declare-fun b!4218732 () Bool)

(assert (=> b!4218732 (= e!2619062 (not lt!1501482))))

(declare-fun b!4218733 () Bool)

(declare-fun res!1733902 () Bool)

(assert (=> b!4218733 (=> (not res!1733902) (not e!2619064))))

(assert (=> b!4218733 (= res!1733902 (not call!293112))))

(assert (= (and d!1242859 c!718097) b!4218721))

(assert (= (and d!1242859 (not c!718097)) b!4218724))

(assert (= (and d!1242859 c!718095) b!4218723))

(assert (= (and d!1242859 (not c!718095)) b!4218729))

(assert (= (and b!4218729 c!718096) b!4218732))

(assert (= (and b!4218729 (not c!718096)) b!4218731))

(assert (= (and b!4218731 (not res!1733904)) b!4218720))

(assert (= (and b!4218720 res!1733906) b!4218733))

(assert (= (and b!4218733 res!1733902) b!4218727))

(assert (= (and b!4218727 res!1733908) b!4218726))

(assert (= (and b!4218720 (not res!1733907)) b!4218728))

(assert (= (and b!4218728 res!1733903) b!4218730))

(assert (= (and b!4218730 (not res!1733905)) b!4218725))

(assert (= (and b!4218725 (not res!1733901)) b!4218722))

(assert (= (or b!4218723 b!4218730 b!4218733) bm!293107))

(assert (=> b!4218721 m!4806465))

(declare-fun m!4807473 () Bool)

(assert (=> b!4218727 m!4807473))

(assert (=> b!4218727 m!4807473))

(declare-fun m!4807475 () Bool)

(assert (=> b!4218727 m!4807475))

(declare-fun m!4807477 () Bool)

(assert (=> b!4218724 m!4807477))

(assert (=> b!4218724 m!4807477))

(declare-fun m!4807479 () Bool)

(assert (=> b!4218724 m!4807479))

(assert (=> b!4218724 m!4807473))

(assert (=> b!4218724 m!4807479))

(assert (=> b!4218724 m!4807473))

(declare-fun m!4807481 () Bool)

(assert (=> b!4218724 m!4807481))

(assert (=> bm!293107 m!4806359))

(assert (=> b!4218726 m!4807477))

(assert (=> d!1242859 m!4806359))

(assert (=> d!1242859 m!4806463))

(assert (=> b!4218722 m!4807477))

(assert (=> b!4218725 m!4807473))

(assert (=> b!4218725 m!4807473))

(assert (=> b!4218725 m!4807475))

(assert (=> b!4217951 d!1242859))

(assert (=> b!4217951 d!1242641))

(assert (=> b!4217951 d!1242639))

(assert (=> b!4217951 d!1242597))

(declare-fun d!1242861 () Bool)

(assert (=> d!1242861 (= (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))) (isBalanced!3747 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))))))

(declare-fun bs!597618 () Bool)

(assert (= bs!597618 d!1242861))

(declare-fun m!4807483 () Bool)

(assert (=> bs!597618 m!4807483))

(assert (=> tb!253219 d!1242861))

(assert (=> b!4218152 d!1242595))

(declare-fun bs!597619 () Bool)

(declare-fun d!1242863 () Bool)

(assert (= bs!597619 (and d!1242863 d!1242571)))

(declare-fun lambda!129819 () Int)

(assert (=> bs!597619 (= (and (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (= lambda!129819 lambda!129796))))

(declare-fun bs!597620 () Bool)

(assert (= bs!597620 (and d!1242863 d!1242665)))

(assert (=> bs!597620 (= (and (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 rBis!178))) (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 rBis!178)))) (= lambda!129819 lambda!129808))))

(declare-fun bs!597621 () Bool)

(assert (= bs!597621 (and d!1242863 d!1242777)))

(assert (=> bs!597621 (= (and (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41))))) (= lambda!129819 lambda!129816))))

(declare-fun bs!597622 () Bool)

(assert (= bs!597622 (and d!1242863 d!1242791)))

(assert (=> bs!597622 (= (and (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (= lambda!129819 lambda!129817))))

(assert (=> d!1242863 true))

(assert (=> d!1242863 (< (dynLambda!19987 order!24547 (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) (dynLambda!19988 order!24549 lambda!129819))))

(assert (=> d!1242863 true))

(assert (=> d!1242863 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (rule!10908 t!8364)))) (dynLambda!19988 order!24549 lambda!129819))))

(assert (=> d!1242863 (= (semiInverseModEq!3381 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 t!8364)))) (Forall!1579 lambda!129819))))

(declare-fun bs!597623 () Bool)

(assert (= bs!597623 d!1242863))

(declare-fun m!4807485 () Bool)

(assert (=> bs!597623 m!4807485))

(assert (=> d!1242499 d!1242863))

(assert (=> b!4218146 d!1242597))

(assert (=> b!4218146 d!1242485))

(declare-fun d!1242865 () Bool)

(declare-fun nullableFct!1228 (Regex!12683) Bool)

(assert (=> d!1242865 (= (nullable!4470 (regex!7778 rBis!178)) (nullableFct!1228 (regex!7778 rBis!178)))))

(declare-fun bs!597624 () Bool)

(assert (= bs!597624 d!1242865))

(declare-fun m!4807487 () Bool)

(assert (=> bs!597624 m!4807487))

(assert (=> b!4218011 d!1242865))

(assert (=> b!4218148 d!1242595))

(declare-fun d!1242867 () Bool)

(assert (=> d!1242867 (= (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140))))) (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140))))))))

(declare-fun b_lambda!124319 () Bool)

(assert (=> (not b_lambda!124319) (not d!1242867)))

(declare-fun tb!253409 () Bool)

(declare-fun t!348744 () Bool)

(assert (=> (and b!4218232 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348744) tb!253409))

(declare-fun result!308854 () Bool)

(assert (=> tb!253409 (= result!308854 (inv!21 (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))))))))

(declare-fun m!4807495 () Bool)

(assert (=> tb!253409 m!4807495))

(assert (=> d!1242867 t!348744))

(declare-fun b_and!332661 () Bool)

(assert (= b_and!332655 (and (=> t!348744 result!308854) b_and!332661)))

(declare-fun t!348746 () Bool)

(declare-fun tb!253411 () Bool)

(assert (=> (and b!4217752 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348746) tb!253411))

(declare-fun result!308856 () Bool)

(assert (= result!308856 result!308854))

(assert (=> d!1242867 t!348746))

(declare-fun b_and!332663 () Bool)

(assert (= b_and!332659 (and (=> t!348746 result!308856) b_and!332663)))

(declare-fun tb!253413 () Bool)

(declare-fun t!348748 () Bool)

(assert (=> (and b!4217775 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348748) tb!253413))

(declare-fun result!308858 () Bool)

(assert (= result!308858 result!308854))

(assert (=> d!1242867 t!348748))

(declare-fun b_and!332665 () Bool)

(assert (= b_and!332653 (and (=> t!348748 result!308858) b_and!332665)))

(declare-fun tb!253415 () Bool)

(declare-fun t!348750 () Bool)

(assert (=> (and b!4217746 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348750) tb!253415))

(declare-fun result!308860 () Bool)

(assert (= result!308860 result!308854))

(assert (=> d!1242867 t!348750))

(declare-fun b_and!332667 () Bool)

(assert (= b_and!332651 (and (=> t!348750 result!308860) b_and!332667)))

(declare-fun t!348752 () Bool)

(declare-fun tb!253417 () Bool)

(assert (=> (and b!4217757 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348752) tb!253417))

(declare-fun result!308862 () Bool)

(assert (= result!308862 result!308854))

(assert (=> d!1242867 t!348752))

(declare-fun b_and!332669 () Bool)

(assert (= b_and!332657 (and (=> t!348752 result!308862) b_and!332669)))

(assert (=> d!1242867 m!4806657))

(declare-fun m!4807499 () Bool)

(assert (=> d!1242867 m!4807499))

(assert (=> b!4218148 d!1242867))

(declare-fun d!1242875 () Bool)

(assert (=> d!1242875 (= (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))) (fromListB!2635 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501140)))))))

(declare-fun bs!597626 () Bool)

(assert (= bs!597626 d!1242875))

(declare-fun m!4807501 () Bool)

(assert (=> bs!597626 m!4807501))

(assert (=> b!4218148 d!1242875))

(assert (=> d!1242471 d!1242561))

(declare-fun d!1242877 () Bool)

(assert (=> d!1242877 (= (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))) (list!16789 (c!717901 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))))))

(declare-fun bs!597627 () Bool)

(assert (= bs!597627 d!1242877))

(declare-fun m!4807503 () Bool)

(assert (=> bs!597627 m!4807503))

(assert (=> b!4218107 d!1242877))

(declare-fun d!1242879 () Bool)

(declare-fun lt!1501485 () BalanceConc!27572)

(assert (=> d!1242879 (= (list!16787 lt!1501485) (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113))))))

(assert (=> d!1242879 (= lt!1501485 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))) (value!242202 (_1!25199 (get!15101 lt!1501113)))))))

(assert (=> d!1242879 (= (charsOf!5201 (_1!25199 (get!15101 lt!1501113))) lt!1501485)))

(declare-fun b_lambda!124321 () Bool)

(assert (=> (not b_lambda!124321) (not d!1242879)))

(declare-fun tb!253419 () Bool)

(declare-fun t!348754 () Bool)

(assert (=> (and b!4217757 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348754) tb!253419))

(declare-fun b!4218756 () Bool)

(declare-fun e!2619081 () Bool)

(declare-fun tp!1290449 () Bool)

(assert (=> b!4218756 (= e!2619081 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))) (value!242202 (_1!25199 (get!15101 lt!1501113)))))) tp!1290449))))

(declare-fun result!308864 () Bool)

(assert (=> tb!253419 (= result!308864 (and (inv!61054 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))) (value!242202 (_1!25199 (get!15101 lt!1501113))))) e!2619081))))

(assert (= tb!253419 b!4218756))

(declare-fun m!4807507 () Bool)

(assert (=> b!4218756 m!4807507))

(declare-fun m!4807509 () Bool)

(assert (=> tb!253419 m!4807509))

(assert (=> d!1242879 t!348754))

(declare-fun b_and!332671 () Bool)

(assert (= b_and!332615 (and (=> t!348754 result!308864) b_and!332671)))

(declare-fun tb!253421 () Bool)

(declare-fun t!348756 () Bool)

(assert (=> (and b!4217746 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348756) tb!253421))

(declare-fun result!308866 () Bool)

(assert (= result!308866 result!308864))

(assert (=> d!1242879 t!348756))

(declare-fun b_and!332673 () Bool)

(assert (= b_and!332611 (and (=> t!348756 result!308866) b_and!332673)))

(declare-fun t!348758 () Bool)

(declare-fun tb!253423 () Bool)

(assert (=> (and b!4218232 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348758) tb!253423))

(declare-fun result!308868 () Bool)

(assert (= result!308868 result!308864))

(assert (=> d!1242879 t!348758))

(declare-fun b_and!332675 () Bool)

(assert (= b_and!332613 (and (=> t!348758 result!308868) b_and!332675)))

(declare-fun tb!253425 () Bool)

(declare-fun t!348760 () Bool)

(assert (=> (and b!4217775 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348760) tb!253425))

(declare-fun result!308870 () Bool)

(assert (= result!308870 result!308864))

(assert (=> d!1242879 t!348760))

(declare-fun b_and!332677 () Bool)

(assert (= b_and!332617 (and (=> t!348760 result!308870) b_and!332677)))

(declare-fun tb!253427 () Bool)

(declare-fun t!348762 () Bool)

(assert (=> (and b!4217752 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348762) tb!253427))

(declare-fun result!308872 () Bool)

(assert (= result!308872 result!308864))

(assert (=> d!1242879 t!348762))

(declare-fun b_and!332679 () Bool)

(assert (= b_and!332619 (and (=> t!348762 result!308872) b_and!332679)))

(declare-fun m!4807511 () Bool)

(assert (=> d!1242879 m!4807511))

(declare-fun m!4807513 () Bool)

(assert (=> d!1242879 m!4807513))

(assert (=> b!4218107 d!1242879))

(assert (=> b!4218107 d!1242583))

(declare-fun b!4218757 () Bool)

(declare-fun res!1733927 () Bool)

(declare-fun e!2619088 () Bool)

(assert (=> b!4218757 (=> res!1733927 e!2619088)))

(declare-fun e!2619085 () Bool)

(assert (=> b!4218757 (= res!1733927 e!2619085)))

(declare-fun res!1733926 () Bool)

(assert (=> b!4218757 (=> (not res!1733926) (not e!2619085))))

(declare-fun lt!1501487 () Bool)

(assert (=> b!4218757 (= res!1733926 lt!1501487)))

(declare-fun b!4218758 () Bool)

(declare-fun e!2619082 () Bool)

(assert (=> b!4218758 (= e!2619082 (nullable!4470 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))))))

(declare-fun b!4218759 () Bool)

(declare-fun e!2619086 () Bool)

(assert (=> b!4218759 (= e!2619086 (not (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) (c!717900 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))))))))

(declare-fun d!1242883 () Bool)

(declare-fun e!2619087 () Bool)

(assert (=> d!1242883 e!2619087))

(declare-fun c!718102 () Bool)

(assert (=> d!1242883 (= c!718102 ((_ is EmptyExpr!12683) (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))))))

(assert (=> d!1242883 (= lt!1501487 e!2619082)))

(declare-fun c!718104 () Bool)

(assert (=> d!1242883 (= c!718104 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))))))

(assert (=> d!1242883 (validRegex!5757 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))

(assert (=> d!1242883 (= (matchR!6380 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) lt!1501487)))

(declare-fun b!4218760 () Bool)

(declare-fun call!293114 () Bool)

(assert (=> b!4218760 (= e!2619087 (= lt!1501487 call!293114))))

(declare-fun b!4218761 () Bool)

(assert (=> b!4218761 (= e!2619082 (matchR!6380 (derivativeStep!3834 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))) (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))))) (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))))))))

(declare-fun b!4218762 () Bool)

(declare-fun res!1733921 () Bool)

(assert (=> b!4218762 (=> res!1733921 e!2619086)))

(assert (=> b!4218762 (= res!1733921 (not (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))))))))

(declare-fun b!4218763 () Bool)

(assert (=> b!4218763 (= e!2619085 (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) (c!717900 (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))))

(declare-fun b!4218764 () Bool)

(declare-fun res!1733928 () Bool)

(assert (=> b!4218764 (=> (not res!1733928) (not e!2619085))))

(assert (=> b!4218764 (= res!1733928 (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))))))))

(declare-fun b!4218765 () Bool)

(declare-fun e!2619084 () Bool)

(assert (=> b!4218765 (= e!2619088 e!2619084)))

(declare-fun res!1733923 () Bool)

(assert (=> b!4218765 (=> (not res!1733923) (not e!2619084))))

(assert (=> b!4218765 (= res!1733923 (not lt!1501487))))

(declare-fun b!4218766 () Bool)

(declare-fun e!2619083 () Bool)

(assert (=> b!4218766 (= e!2619087 e!2619083)))

(declare-fun c!718103 () Bool)

(assert (=> b!4218766 (= c!718103 ((_ is EmptyLang!12683) (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))))))

(declare-fun bm!293109 () Bool)

(assert (=> bm!293109 (= call!293114 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))))))

(declare-fun b!4218767 () Bool)

(assert (=> b!4218767 (= e!2619084 e!2619086)))

(declare-fun res!1733925 () Bool)

(assert (=> b!4218767 (=> res!1733925 e!2619086)))

(assert (=> b!4218767 (= res!1733925 call!293114)))

(declare-fun b!4218768 () Bool)

(declare-fun res!1733924 () Bool)

(assert (=> b!4218768 (=> res!1733924 e!2619088)))

(assert (=> b!4218768 (= res!1733924 (not ((_ is ElementMatch!12683) (regex!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))))))

(assert (=> b!4218768 (= e!2619083 e!2619088)))

(declare-fun b!4218769 () Bool)

(assert (=> b!4218769 (= e!2619083 (not lt!1501487))))

(declare-fun b!4218770 () Bool)

(declare-fun res!1733922 () Bool)

(assert (=> b!4218770 (=> (not res!1733922) (not e!2619085))))

(assert (=> b!4218770 (= res!1733922 (not call!293114))))

(assert (= (and d!1242883 c!718104) b!4218758))

(assert (= (and d!1242883 (not c!718104)) b!4218761))

(assert (= (and d!1242883 c!718102) b!4218760))

(assert (= (and d!1242883 (not c!718102)) b!4218766))

(assert (= (and b!4218766 c!718103) b!4218769))

(assert (= (and b!4218766 (not c!718103)) b!4218768))

(assert (= (and b!4218768 (not res!1733924)) b!4218757))

(assert (= (and b!4218757 res!1733926) b!4218770))

(assert (= (and b!4218770 res!1733922) b!4218764))

(assert (= (and b!4218764 res!1733928) b!4218763))

(assert (= (and b!4218757 (not res!1733927)) b!4218765))

(assert (= (and b!4218765 res!1733923) b!4218767))

(assert (= (and b!4218767 (not res!1733925)) b!4218762))

(assert (= (and b!4218762 (not res!1733921)) b!4218759))

(assert (= (or b!4218760 b!4218767 b!4218770) bm!293109))

(declare-fun m!4807531 () Bool)

(assert (=> b!4218758 m!4807531))

(assert (=> b!4218764 m!4806553))

(declare-fun m!4807535 () Bool)

(assert (=> b!4218764 m!4807535))

(assert (=> b!4218764 m!4807535))

(declare-fun m!4807537 () Bool)

(assert (=> b!4218764 m!4807537))

(assert (=> b!4218761 m!4806553))

(declare-fun m!4807539 () Bool)

(assert (=> b!4218761 m!4807539))

(assert (=> b!4218761 m!4807539))

(declare-fun m!4807541 () Bool)

(assert (=> b!4218761 m!4807541))

(assert (=> b!4218761 m!4806553))

(assert (=> b!4218761 m!4807535))

(assert (=> b!4218761 m!4807541))

(assert (=> b!4218761 m!4807535))

(declare-fun m!4807543 () Bool)

(assert (=> b!4218761 m!4807543))

(assert (=> bm!293109 m!4806553))

(declare-fun m!4807545 () Bool)

(assert (=> bm!293109 m!4807545))

(assert (=> b!4218763 m!4806553))

(assert (=> b!4218763 m!4807539))

(assert (=> d!1242883 m!4806553))

(assert (=> d!1242883 m!4807545))

(declare-fun m!4807547 () Bool)

(assert (=> d!1242883 m!4807547))

(assert (=> b!4218759 m!4806553))

(assert (=> b!4218759 m!4807539))

(assert (=> b!4218762 m!4806553))

(assert (=> b!4218762 m!4807535))

(assert (=> b!4218762 m!4807535))

(assert (=> b!4218762 m!4807537))

(assert (=> b!4218103 d!1242883))

(assert (=> b!4218103 d!1242583))

(assert (=> b!4218103 d!1242877))

(assert (=> b!4218103 d!1242879))

(declare-fun d!1242889 () Bool)

(declare-fun c!718105 () Bool)

(assert (=> d!1242889 (= c!718105 ((_ is Node!13989) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))))))

(declare-fun e!2619090 () Bool)

(assert (=> d!1242889 (= (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))) e!2619090)))

(declare-fun b!4218772 () Bool)

(assert (=> b!4218772 (= e!2619090 (inv!61055 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))))))

(declare-fun b!4218773 () Bool)

(declare-fun e!2619091 () Bool)

(assert (=> b!4218773 (= e!2619090 e!2619091)))

(declare-fun res!1733929 () Bool)

(assert (=> b!4218773 (= res!1733929 (not ((_ is Leaf!21622) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))))))))

(assert (=> b!4218773 (=> res!1733929 e!2619091)))

(declare-fun b!4218774 () Bool)

(assert (=> b!4218774 (= e!2619091 (inv!61056 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))))))

(assert (= (and d!1242889 c!718105) b!4218772))

(assert (= (and d!1242889 (not c!718105)) b!4218773))

(assert (= (and b!4218773 (not res!1733929)) b!4218774))

(declare-fun m!4807553 () Bool)

(assert (=> b!4218772 m!4807553))

(declare-fun m!4807555 () Bool)

(assert (=> b!4218774 m!4807555))

(assert (=> b!4217820 d!1242889))

(declare-fun bs!597630 () Bool)

(declare-fun d!1242891 () Bool)

(assert (= bs!597630 (and d!1242891 d!1242611)))

(declare-fun lambda!129822 () Int)

(assert (=> bs!597630 (= (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (= lambda!129822 lambda!129802))))

(declare-fun bs!597631 () Bool)

(assert (= bs!597631 (and d!1242891 d!1242675)))

(assert (=> bs!597631 (= (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 t!8364)))) (= lambda!129822 lambda!129812))))

(assert (=> d!1242891 true))

(assert (=> d!1242891 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 rBis!178))) (dynLambda!19990 order!24553 lambda!129822))))

(assert (=> d!1242891 (= (equivClasses!3280 (toChars!10357 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 rBis!178))) (Forall2!1178 lambda!129822))))

(declare-fun bs!597633 () Bool)

(assert (= bs!597633 d!1242891))

(declare-fun m!4807561 () Bool)

(assert (=> bs!597633 m!4807561))

(assert (=> b!4218147 d!1242891))

(declare-fun d!1242897 () Bool)

(declare-fun lt!1501489 () Int)

(assert (=> d!1242897 (>= lt!1501489 0)))

(declare-fun e!2619092 () Int)

(assert (=> d!1242897 (= lt!1501489 e!2619092)))

(declare-fun c!718106 () Bool)

(assert (=> d!1242897 (= c!718106 ((_ is Nil!46402) (originalCharacters!8160 (_1!25199 lt!1500990))))))

(assert (=> d!1242897 (= (size!34075 (originalCharacters!8160 (_1!25199 lt!1500990))) lt!1501489)))

(declare-fun b!4218775 () Bool)

(assert (=> b!4218775 (= e!2619092 0)))

(declare-fun b!4218776 () Bool)

(assert (=> b!4218776 (= e!2619092 (+ 1 (size!34075 (t!348545 (originalCharacters!8160 (_1!25199 lt!1500990))))))))

(assert (= (and d!1242897 c!718106) b!4218775))

(assert (= (and d!1242897 (not c!718106)) b!4218776))

(declare-fun m!4807565 () Bool)

(assert (=> b!4218776 m!4807565))

(assert (=> d!1242477 d!1242897))

(declare-fun d!1242901 () Bool)

(assert (=> d!1242901 (= (inv!16 (value!242202 tBis!41)) (= (charsToInt!0 (text!56503 (value!242202 tBis!41))) (value!242193 (value!242202 tBis!41))))))

(declare-fun bs!597635 () Bool)

(assert (= bs!597635 d!1242901))

(declare-fun m!4807567 () Bool)

(assert (=> bs!597635 m!4807567))

(assert (=> b!4218178 d!1242901))

(assert (=> bm!293033 d!1242507))

(declare-fun d!1242903 () Bool)

(assert (=> d!1242903 (= (isEmpty!27491 lt!1501147) (not ((_ is Some!9965) lt!1501147)))))

(assert (=> d!1242515 d!1242903))

(assert (=> d!1242515 d!1242403))

(assert (=> d!1242515 d!1242419))

(declare-fun bs!597636 () Bool)

(declare-fun d!1242905 () Bool)

(assert (= bs!597636 (and d!1242905 d!1242589)))

(declare-fun lambda!129823 () Int)

(assert (=> bs!597636 (= lambda!129823 lambda!129799)))

(declare-fun bs!597637 () Bool)

(assert (= bs!597637 (and d!1242905 d!1242673)))

(assert (=> bs!597637 (= lambda!129823 lambda!129811)))

(assert (=> d!1242905 true))

(declare-fun lt!1501491 () Bool)

(assert (=> d!1242905 (= lt!1501491 (forall!8497 rules!3967 lambda!129823))))

(declare-fun e!2619096 () Bool)

(assert (=> d!1242905 (= lt!1501491 e!2619096)))

(declare-fun res!1733934 () Bool)

(assert (=> d!1242905 (=> res!1733934 e!2619096)))

(assert (=> d!1242905 (= res!1733934 (not ((_ is Cons!46403) rules!3967)))))

(assert (=> d!1242905 (= (rulesValidInductive!2892 thiss!26544 rules!3967) lt!1501491)))

(declare-fun b!4218781 () Bool)

(declare-fun e!2619097 () Bool)

(assert (=> b!4218781 (= e!2619096 e!2619097)))

(declare-fun res!1733935 () Bool)

(assert (=> b!4218781 (=> (not res!1733935) (not e!2619097))))

(assert (=> b!4218781 (= res!1733935 (ruleValid!3490 thiss!26544 (h!51823 rules!3967)))))

(declare-fun b!4218782 () Bool)

(assert (=> b!4218782 (= e!2619097 (rulesValidInductive!2892 thiss!26544 (t!348546 rules!3967)))))

(assert (= (and d!1242905 (not res!1733934)) b!4218781))

(assert (= (and b!4218781 res!1733935) b!4218782))

(declare-fun m!4807571 () Bool)

(assert (=> d!1242905 m!4807571))

(assert (=> b!4218781 m!4806669))

(assert (=> b!4218782 m!4806545))

(assert (=> d!1242515 d!1242905))

(assert (=> b!4218164 d!1242465))

(assert (=> b!4217804 d!1242609))

(declare-fun bs!597640 () Bool)

(declare-fun d!1242909 () Bool)

(assert (= bs!597640 (and d!1242909 d!1242611)))

(declare-fun lambda!129825 () Int)

(assert (=> bs!597640 (= (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 tBis!41)))) (= lambda!129825 lambda!129802))))

(declare-fun bs!597641 () Bool)

(assert (= bs!597641 (and d!1242909 d!1242675)))

(assert (=> bs!597641 (= (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 t!8364)))) (= lambda!129825 lambda!129812))))

(declare-fun bs!597642 () Bool)

(assert (= bs!597642 (and d!1242909 d!1242891)))

(assert (=> bs!597642 (= (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 rBis!178))) (= lambda!129825 lambda!129822))))

(assert (=> d!1242909 true))

(assert (=> d!1242909 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) (dynLambda!19990 order!24553 lambda!129825))))

(assert (=> d!1242909 (= (equivClasses!3280 (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) (Forall2!1178 lambda!129825))))

(declare-fun bs!597643 () Bool)

(assert (= bs!597643 d!1242909))

(declare-fun m!4807575 () Bool)

(assert (=> bs!597643 m!4807575))

(assert (=> b!4218179 d!1242909))

(declare-fun d!1242913 () Bool)

(assert (=> d!1242913 (= (inv!15 (value!242202 t!8364)) (= (charsToBigInt!0 (text!56505 (value!242202 t!8364)) 0) (value!242197 (value!242202 t!8364))))))

(declare-fun bs!597645 () Bool)

(assert (= bs!597645 d!1242913))

(declare-fun m!4807579 () Bool)

(assert (=> bs!597645 m!4807579))

(assert (=> b!4217789 d!1242913))

(assert (=> b!4218111 d!1242583))

(declare-fun d!1242917 () Bool)

(assert (=> d!1242917 (= (apply!10701 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113))))) (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113))))))))

(declare-fun b_lambda!124325 () Bool)

(assert (=> (not b_lambda!124325) (not d!1242917)))

(declare-fun t!348774 () Bool)

(declare-fun tb!253439 () Bool)

(assert (=> (and b!4218232 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348774) tb!253439))

(declare-fun result!308884 () Bool)

(assert (=> tb!253439 (= result!308884 (inv!21 (dynLambda!19991 (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113))))) (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113)))))))))

(declare-fun m!4807581 () Bool)

(assert (=> tb!253439 m!4807581))

(assert (=> d!1242917 t!348774))

(declare-fun b_and!332691 () Bool)

(assert (= b_and!332661 (and (=> t!348774 result!308884) b_and!332691)))

(declare-fun t!348776 () Bool)

(declare-fun tb!253441 () Bool)

(assert (=> (and b!4217752 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348776) tb!253441))

(declare-fun result!308886 () Bool)

(assert (= result!308886 result!308884))

(assert (=> d!1242917 t!348776))

(declare-fun b_and!332693 () Bool)

(assert (= b_and!332663 (and (=> t!348776 result!308886) b_and!332693)))

(declare-fun tb!253443 () Bool)

(declare-fun t!348778 () Bool)

(assert (=> (and b!4217746 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348778) tb!253443))

(declare-fun result!308888 () Bool)

(assert (= result!308888 result!308884))

(assert (=> d!1242917 t!348778))

(declare-fun b_and!332695 () Bool)

(assert (= b_and!332667 (and (=> t!348778 result!308888) b_and!332695)))

(declare-fun tb!253445 () Bool)

(declare-fun t!348780 () Bool)

(assert (=> (and b!4217757 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348780) tb!253445))

(declare-fun result!308890 () Bool)

(assert (= result!308890 result!308884))

(assert (=> d!1242917 t!348780))

(declare-fun b_and!332697 () Bool)

(assert (= b_and!332669 (and (=> t!348780 result!308890) b_and!332697)))

(declare-fun t!348782 () Bool)

(declare-fun tb!253447 () Bool)

(assert (=> (and b!4217775 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348782) tb!253447))

(declare-fun result!308892 () Bool)

(assert (= result!308892 result!308884))

(assert (=> d!1242917 t!348782))

(declare-fun b_and!332699 () Bool)

(assert (= b_and!332665 (and (=> t!348782 result!308892) b_and!332699)))

(assert (=> d!1242917 m!4806537))

(declare-fun m!4807593 () Bool)

(assert (=> d!1242917 m!4807593))

(assert (=> b!4218111 d!1242917))

(declare-fun d!1242919 () Bool)

(assert (=> d!1242919 (= (seqFromList!5761 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113)))) (fromListB!2635 (originalCharacters!8160 (_1!25199 (get!15101 lt!1501113)))))))

(declare-fun bs!597646 () Bool)

(assert (= bs!597646 d!1242919))

(declare-fun m!4807595 () Bool)

(assert (=> bs!597646 m!4807595))

(assert (=> b!4218111 d!1242919))

(declare-fun b!4218798 () Bool)

(declare-fun e!2619107 () List!46526)

(assert (=> b!4218798 (= e!2619107 (Cons!46402 (h!51822 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) (++!11852 (t!348545 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) (_2!25199 (get!15101 lt!1501113)))))))

(declare-fun b!4218800 () Bool)

(declare-fun e!2619106 () Bool)

(declare-fun lt!1501493 () List!46526)

(assert (=> b!4218800 (= e!2619106 (or (not (= (_2!25199 (get!15101 lt!1501113)) Nil!46402)) (= lt!1501493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))))))))

(declare-fun b!4218797 () Bool)

(assert (=> b!4218797 (= e!2619107 (_2!25199 (get!15101 lt!1501113)))))

(declare-fun d!1242923 () Bool)

(assert (=> d!1242923 e!2619106))

(declare-fun res!1733944 () Bool)

(assert (=> d!1242923 (=> (not res!1733944) (not e!2619106))))

(assert (=> d!1242923 (= res!1733944 (= (content!7280 lt!1501493) ((_ map or) (content!7280 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) (content!7280 (_2!25199 (get!15101 lt!1501113))))))))

(assert (=> d!1242923 (= lt!1501493 e!2619107)))

(declare-fun c!718110 () Bool)

(assert (=> d!1242923 (= c!718110 ((_ is Nil!46402) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))))))

(assert (=> d!1242923 (= (++!11852 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113)))) (_2!25199 (get!15101 lt!1501113))) lt!1501493)))

(declare-fun b!4218799 () Bool)

(declare-fun res!1733945 () Bool)

(assert (=> b!4218799 (=> (not res!1733945) (not e!2619106))))

(assert (=> b!4218799 (= res!1733945 (= (size!34075 lt!1501493) (+ (size!34075 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501113))))) (size!34075 (_2!25199 (get!15101 lt!1501113))))))))

(assert (= (and d!1242923 c!718110) b!4218797))

(assert (= (and d!1242923 (not c!718110)) b!4218798))

(assert (= (and d!1242923 res!1733944) b!4218799))

(assert (= (and b!4218799 res!1733945) b!4218800))

(declare-fun m!4807597 () Bool)

(assert (=> b!4218798 m!4807597))

(declare-fun m!4807599 () Bool)

(assert (=> d!1242923 m!4807599))

(assert (=> d!1242923 m!4806553))

(declare-fun m!4807601 () Bool)

(assert (=> d!1242923 m!4807601))

(declare-fun m!4807603 () Bool)

(assert (=> d!1242923 m!4807603))

(declare-fun m!4807605 () Bool)

(assert (=> b!4218799 m!4807605))

(assert (=> b!4218799 m!4806553))

(declare-fun m!4807607 () Bool)

(assert (=> b!4218799 m!4807607))

(assert (=> b!4218799 m!4806555))

(assert (=> b!4218108 d!1242923))

(assert (=> b!4218108 d!1242877))

(assert (=> b!4218108 d!1242879))

(assert (=> b!4218108 d!1242583))

(declare-fun d!1242925 () Bool)

(declare-fun lt!1501522 () Int)

(assert (=> d!1242925 (>= lt!1501522 0)))

(declare-fun e!2619116 () Int)

(assert (=> d!1242925 (= lt!1501522 e!2619116)))

(declare-fun c!718117 () Bool)

(assert (=> d!1242925 (= c!718117 ((_ is Nil!46402) (_2!25199 (get!15101 lt!1501060))))))

(assert (=> d!1242925 (= (size!34075 (_2!25199 (get!15101 lt!1501060))) lt!1501522)))

(declare-fun b!4218815 () Bool)

(assert (=> b!4218815 (= e!2619116 0)))

(declare-fun b!4218816 () Bool)

(assert (=> b!4218816 (= e!2619116 (+ 1 (size!34075 (t!348545 (_2!25199 (get!15101 lt!1501060))))))))

(assert (= (and d!1242925 c!718117) b!4218815))

(assert (= (and d!1242925 (not c!718117)) b!4218816))

(declare-fun m!4807609 () Bool)

(assert (=> b!4218816 m!4807609))

(assert (=> b!4217952 d!1242925))

(assert (=> b!4217952 d!1242555))

(assert (=> b!4217952 d!1242597))

(declare-fun d!1242927 () Bool)

(assert (=> d!1242927 (= (list!16787 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))) (list!16789 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))))))

(declare-fun bs!597647 () Bool)

(assert (= bs!597647 d!1242927))

(declare-fun m!4807611 () Bool)

(assert (=> bs!597647 m!4807611))

(assert (=> b!4217818 d!1242927))

(declare-fun d!1242929 () Bool)

(assert (=> d!1242929 (= (head!8950 pBis!121) (h!51822 pBis!121))))

(assert (=> b!4218188 d!1242929))

(assert (=> b!4218188 d!1242579))

(declare-fun b!4218817 () Bool)

(declare-fun res!1733954 () Bool)

(declare-fun e!2619123 () Bool)

(assert (=> b!4218817 (=> res!1733954 e!2619123)))

(declare-fun e!2619120 () Bool)

(assert (=> b!4218817 (= res!1733954 e!2619120)))

(declare-fun res!1733953 () Bool)

(assert (=> b!4218817 (=> (not res!1733953) (not e!2619120))))

(declare-fun lt!1501523 () Bool)

(assert (=> b!4218817 (= res!1733953 lt!1501523)))

(declare-fun b!4218818 () Bool)

(declare-fun e!2619117 () Bool)

(assert (=> b!4218818 (= e!2619117 (nullable!4470 (regex!7778 (h!51823 rules!3967))))))

(declare-fun b!4218819 () Bool)

(declare-fun e!2619121 () Bool)

(assert (=> b!4218819 (= e!2619121 (not (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) (c!717900 (regex!7778 (h!51823 rules!3967))))))))

(declare-fun d!1242931 () Bool)

(declare-fun e!2619122 () Bool)

(assert (=> d!1242931 e!2619122))

(declare-fun c!718118 () Bool)

(assert (=> d!1242931 (= c!718118 ((_ is EmptyExpr!12683) (regex!7778 (h!51823 rules!3967))))))

(assert (=> d!1242931 (= lt!1501523 e!2619117)))

(declare-fun c!718120 () Bool)

(assert (=> d!1242931 (= c!718120 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))))))

(assert (=> d!1242931 (validRegex!5757 (regex!7778 (h!51823 rules!3967)))))

(assert (=> d!1242931 (= (matchR!6380 (regex!7778 (h!51823 rules!3967)) (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) lt!1501523)))

(declare-fun b!4218820 () Bool)

(declare-fun call!293124 () Bool)

(assert (=> b!4218820 (= e!2619122 (= lt!1501523 call!293124))))

(declare-fun b!4218821 () Bool)

(assert (=> b!4218821 (= e!2619117 (matchR!6380 (derivativeStep!3834 (regex!7778 (h!51823 rules!3967)) (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))))) (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))))))))

(declare-fun b!4218822 () Bool)

(declare-fun res!1733948 () Bool)

(assert (=> b!4218822 (=> res!1733948 e!2619121)))

(assert (=> b!4218822 (= res!1733948 (not (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))))))))

(declare-fun b!4218823 () Bool)

(assert (=> b!4218823 (= e!2619120 (= (head!8950 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))) (c!717900 (regex!7778 (h!51823 rules!3967)))))))

(declare-fun b!4218824 () Bool)

(declare-fun res!1733955 () Bool)

(assert (=> b!4218824 (=> (not res!1733955) (not e!2619120))))

(assert (=> b!4218824 (= res!1733955 (isEmpty!27493 (tail!6797 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140)))))))))

(declare-fun b!4218825 () Bool)

(declare-fun e!2619119 () Bool)

(assert (=> b!4218825 (= e!2619123 e!2619119)))

(declare-fun res!1733950 () Bool)

(assert (=> b!4218825 (=> (not res!1733950) (not e!2619119))))

(assert (=> b!4218825 (= res!1733950 (not lt!1501523))))

(declare-fun b!4218826 () Bool)

(declare-fun e!2619118 () Bool)

(assert (=> b!4218826 (= e!2619122 e!2619118)))

(declare-fun c!718119 () Bool)

(assert (=> b!4218826 (= c!718119 ((_ is EmptyLang!12683) (regex!7778 (h!51823 rules!3967))))))

(declare-fun bm!293119 () Bool)

(assert (=> bm!293119 (= call!293124 (isEmpty!27493 (list!16787 (charsOf!5201 (_1!25199 (get!15101 lt!1501140))))))))

(declare-fun b!4218827 () Bool)

(assert (=> b!4218827 (= e!2619119 e!2619121)))

(declare-fun res!1733952 () Bool)

(assert (=> b!4218827 (=> res!1733952 e!2619121)))

(assert (=> b!4218827 (= res!1733952 call!293124)))

(declare-fun b!4218828 () Bool)

(declare-fun res!1733951 () Bool)

(assert (=> b!4218828 (=> res!1733951 e!2619123)))

(assert (=> b!4218828 (= res!1733951 (not ((_ is ElementMatch!12683) (regex!7778 (h!51823 rules!3967)))))))

(assert (=> b!4218828 (= e!2619118 e!2619123)))

(declare-fun b!4218829 () Bool)

(assert (=> b!4218829 (= e!2619118 (not lt!1501523))))

(declare-fun b!4218830 () Bool)

(declare-fun res!1733949 () Bool)

(assert (=> b!4218830 (=> (not res!1733949) (not e!2619120))))

(assert (=> b!4218830 (= res!1733949 (not call!293124))))

(assert (= (and d!1242931 c!718120) b!4218818))

(assert (= (and d!1242931 (not c!718120)) b!4218821))

(assert (= (and d!1242931 c!718118) b!4218820))

(assert (= (and d!1242931 (not c!718118)) b!4218826))

(assert (= (and b!4218826 c!718119) b!4218829))

(assert (= (and b!4218826 (not c!718119)) b!4218828))

(assert (= (and b!4218828 (not res!1733951)) b!4218817))

(assert (= (and b!4218817 res!1733953) b!4218830))

(assert (= (and b!4218830 res!1733949) b!4218824))

(assert (= (and b!4218824 res!1733955) b!4218823))

(assert (= (and b!4218817 (not res!1733954)) b!4218825))

(assert (= (and b!4218825 res!1733950) b!4218827))

(assert (= (and b!4218827 (not res!1733952)) b!4218822))

(assert (= (and b!4218822 (not res!1733948)) b!4218819))

(assert (= (or b!4218820 b!4218827 b!4218830) bm!293119))

(assert (=> b!4218818 m!4807191))

(assert (=> b!4218824 m!4806641))

(declare-fun m!4807619 () Bool)

(assert (=> b!4218824 m!4807619))

(assert (=> b!4218824 m!4807619))

(declare-fun m!4807623 () Bool)

(assert (=> b!4218824 m!4807623))

(assert (=> b!4218821 m!4806641))

(declare-fun m!4807627 () Bool)

(assert (=> b!4218821 m!4807627))

(assert (=> b!4218821 m!4807627))

(declare-fun m!4807631 () Bool)

(assert (=> b!4218821 m!4807631))

(assert (=> b!4218821 m!4806641))

(assert (=> b!4218821 m!4807619))

(assert (=> b!4218821 m!4807631))

(assert (=> b!4218821 m!4807619))

(declare-fun m!4807633 () Bool)

(assert (=> b!4218821 m!4807633))

(assert (=> bm!293119 m!4806641))

(declare-fun m!4807637 () Bool)

(assert (=> bm!293119 m!4807637))

(assert (=> b!4218823 m!4806641))

(assert (=> b!4218823 m!4807627))

(assert (=> d!1242931 m!4806641))

(assert (=> d!1242931 m!4807637))

(assert (=> d!1242931 m!4807187))

(assert (=> b!4218819 m!4806641))

(assert (=> b!4218819 m!4807627))

(assert (=> b!4218822 m!4806641))

(assert (=> b!4218822 m!4807619))

(assert (=> b!4218822 m!4807619))

(assert (=> b!4218822 m!4807623))

(assert (=> b!4218153 d!1242931))

(assert (=> b!4218153 d!1242705))

(assert (=> b!4218153 d!1242707))

(assert (=> b!4218153 d!1242595))

(declare-fun d!1242933 () Bool)

(assert (=> d!1242933 (= (isEmpty!27493 (originalCharacters!8160 t!8364)) ((_ is Nil!46402) (originalCharacters!8160 t!8364)))))

(assert (=> d!1242365 d!1242933))

(declare-fun b!4218833 () Bool)

(declare-fun res!1733962 () Bool)

(declare-fun e!2619131 () Bool)

(assert (=> b!4218833 (=> res!1733962 e!2619131)))

(declare-fun e!2619128 () Bool)

(assert (=> b!4218833 (= res!1733962 e!2619128)))

(declare-fun res!1733961 () Bool)

(assert (=> b!4218833 (=> (not res!1733961) (not e!2619128))))

(declare-fun lt!1501525 () Bool)

(assert (=> b!4218833 (= res!1733961 lt!1501525)))

(declare-fun b!4218834 () Bool)

(declare-fun e!2619125 () Bool)

(assert (=> b!4218834 (= e!2619125 (nullable!4470 (regex!7778 (h!51823 rules!3967))))))

(declare-fun b!4218835 () Bool)

(declare-fun e!2619129 () Bool)

(assert (=> b!4218835 (= e!2619129 (not (= (head!8950 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) (c!717900 (regex!7778 (h!51823 rules!3967))))))))

(declare-fun d!1242937 () Bool)

(declare-fun e!2619130 () Bool)

(assert (=> d!1242937 e!2619130))

(declare-fun c!718122 () Bool)

(assert (=> d!1242937 (= c!718122 ((_ is EmptyExpr!12683) (regex!7778 (h!51823 rules!3967))))))

(assert (=> d!1242937 (= lt!1501525 e!2619125)))

(declare-fun c!718124 () Bool)

(assert (=> d!1242937 (= c!718124 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(assert (=> d!1242937 (validRegex!5757 (regex!7778 (h!51823 rules!3967)))))

(assert (=> d!1242937 (= (matchR!6380 (regex!7778 (h!51823 rules!3967)) (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) lt!1501525)))

(declare-fun b!4218836 () Bool)

(declare-fun call!293125 () Bool)

(assert (=> b!4218836 (= e!2619130 (= lt!1501525 call!293125))))

(declare-fun b!4218837 () Bool)

(assert (=> b!4218837 (= e!2619125 (matchR!6380 (derivativeStep!3834 (regex!7778 (h!51823 rules!3967)) (head!8950 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517))))) (tail!6797 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517))))))))

(declare-fun b!4218838 () Bool)

(declare-fun res!1733956 () Bool)

(assert (=> b!4218838 (=> res!1733956 e!2619129)))

(assert (=> b!4218838 (= res!1733956 (not (isEmpty!27493 (tail!6797 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))))

(declare-fun b!4218839 () Bool)

(assert (=> b!4218839 (= e!2619128 (= (head!8950 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))) (c!717900 (regex!7778 (h!51823 rules!3967)))))))

(declare-fun b!4218840 () Bool)

(declare-fun res!1733963 () Bool)

(assert (=> b!4218840 (=> (not res!1733963) (not e!2619128))))

(assert (=> b!4218840 (= res!1733963 (isEmpty!27493 (tail!6797 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517))))))))

(declare-fun b!4218841 () Bool)

(declare-fun e!2619127 () Bool)

(assert (=> b!4218841 (= e!2619131 e!2619127)))

(declare-fun res!1733958 () Bool)

(assert (=> b!4218841 (=> (not res!1733958) (not e!2619127))))

(assert (=> b!4218841 (= res!1733958 (not lt!1501525))))

(declare-fun b!4218842 () Bool)

(declare-fun e!2619126 () Bool)

(assert (=> b!4218842 (= e!2619130 e!2619126)))

(declare-fun c!718123 () Bool)

(assert (=> b!4218842 (= c!718123 ((_ is EmptyLang!12683) (regex!7778 (h!51823 rules!3967))))))

(declare-fun bm!293120 () Bool)

(assert (=> bm!293120 (= call!293125 (isEmpty!27493 (_1!25201 (findLongestMatchInner!1661 (regex!7778 (h!51823 rules!3967)) Nil!46402 (size!34075 Nil!46402) input!3517 input!3517 (size!34075 input!3517)))))))

(declare-fun b!4218843 () Bool)

(assert (=> b!4218843 (= e!2619127 e!2619129)))

(declare-fun res!1733960 () Bool)

(assert (=> b!4218843 (=> res!1733960 e!2619129)))

(assert (=> b!4218843 (= res!1733960 call!293125)))

(declare-fun b!4218844 () Bool)

(declare-fun res!1733959 () Bool)

(assert (=> b!4218844 (=> res!1733959 e!2619131)))

(assert (=> b!4218844 (= res!1733959 (not ((_ is ElementMatch!12683) (regex!7778 (h!51823 rules!3967)))))))

(assert (=> b!4218844 (= e!2619126 e!2619131)))

(declare-fun b!4218845 () Bool)

(assert (=> b!4218845 (= e!2619126 (not lt!1501525))))

(declare-fun b!4218846 () Bool)

(declare-fun res!1733957 () Bool)

(assert (=> b!4218846 (=> (not res!1733957) (not e!2619128))))

(assert (=> b!4218846 (= res!1733957 (not call!293125))))

(assert (= (and d!1242937 c!718124) b!4218834))

(assert (= (and d!1242937 (not c!718124)) b!4218837))

(assert (= (and d!1242937 c!718122) b!4218836))

(assert (= (and d!1242937 (not c!718122)) b!4218842))

(assert (= (and b!4218842 c!718123) b!4218845))

(assert (= (and b!4218842 (not c!718123)) b!4218844))

(assert (= (and b!4218844 (not res!1733959)) b!4218833))

(assert (= (and b!4218833 res!1733961) b!4218846))

(assert (= (and b!4218846 res!1733957) b!4218840))

(assert (= (and b!4218840 res!1733963) b!4218839))

(assert (= (and b!4218833 (not res!1733962)) b!4218841))

(assert (= (and b!4218841 res!1733958) b!4218843))

(assert (= (and b!4218843 (not res!1733960)) b!4218838))

(assert (= (and b!4218838 (not res!1733956)) b!4218835))

(assert (= (or b!4218836 b!4218843 b!4218846) bm!293120))

(assert (=> b!4218834 m!4807191))

(declare-fun m!4807651 () Bool)

(assert (=> b!4218840 m!4807651))

(assert (=> b!4218840 m!4807651))

(declare-fun m!4807653 () Bool)

(assert (=> b!4218840 m!4807653))

(declare-fun m!4807655 () Bool)

(assert (=> b!4218837 m!4807655))

(assert (=> b!4218837 m!4807655))

(declare-fun m!4807659 () Bool)

(assert (=> b!4218837 m!4807659))

(assert (=> b!4218837 m!4807651))

(assert (=> b!4218837 m!4807659))

(assert (=> b!4218837 m!4807651))

(declare-fun m!4807661 () Bool)

(assert (=> b!4218837 m!4807661))

(assert (=> bm!293120 m!4806645))

(assert (=> b!4218839 m!4807655))

(assert (=> d!1242937 m!4806645))

(assert (=> d!1242937 m!4807187))

(assert (=> b!4218835 m!4807655))

(assert (=> b!4218838 m!4807651))

(assert (=> b!4218838 m!4807651))

(assert (=> b!4218838 m!4807653))

(assert (=> b!4218149 d!1242937))

(assert (=> b!4218149 d!1242801))

(assert (=> b!4218149 d!1242639))

(assert (=> b!4218149 d!1242597))

(declare-fun d!1242943 () Bool)

(assert (=> d!1242943 (= (head!8950 lt!1500997) (h!51822 lt!1500997))))

(assert (=> b!4218119 d!1242943))

(declare-fun d!1242945 () Bool)

(assert (=> d!1242945 (= (head!8950 (++!11852 lt!1500997 (_2!25199 lt!1500990))) (h!51822 (++!11852 lt!1500997 (_2!25199 lt!1500990))))))

(assert (=> b!4218119 d!1242945))

(declare-fun d!1242947 () Bool)

(declare-fun lt!1501527 () Int)

(assert (=> d!1242947 (>= lt!1501527 0)))

(declare-fun e!2619134 () Int)

(assert (=> d!1242947 (= lt!1501527 e!2619134)))

(declare-fun c!718126 () Bool)

(assert (=> d!1242947 (= c!718126 ((_ is Nil!46402) (_2!25199 (get!15101 lt!1501113))))))

(assert (=> d!1242947 (= (size!34075 (_2!25199 (get!15101 lt!1501113))) lt!1501527)))

(declare-fun b!4218849 () Bool)

(assert (=> b!4218849 (= e!2619134 0)))

(declare-fun b!4218850 () Bool)

(assert (=> b!4218850 (= e!2619134 (+ 1 (size!34075 (t!348545 (_2!25199 (get!15101 lt!1501113))))))))

(assert (= (and d!1242947 c!718126) b!4218849))

(assert (= (and d!1242947 (not c!718126)) b!4218850))

(declare-fun m!4807665 () Bool)

(assert (=> b!4218850 m!4807665))

(assert (=> b!4218104 d!1242947))

(assert (=> b!4218104 d!1242583))

(assert (=> b!4218104 d!1242597))

(assert (=> b!4217981 d!1242579))

(declare-fun bs!597649 () Bool)

(declare-fun d!1242951 () Bool)

(assert (= bs!597649 (and d!1242951 d!1242589)))

(declare-fun lambda!129826 () Int)

(assert (=> bs!597649 (= lambda!129826 lambda!129799)))

(declare-fun bs!597650 () Bool)

(assert (= bs!597650 (and d!1242951 d!1242673)))

(assert (=> bs!597650 (= lambda!129826 lambda!129811)))

(declare-fun bs!597651 () Bool)

(assert (= bs!597651 (and d!1242951 d!1242905)))

(assert (=> bs!597651 (= lambda!129826 lambda!129823)))

(assert (=> d!1242951 true))

(declare-fun lt!1501528 () Bool)

(assert (=> d!1242951 (= lt!1501528 (rulesValidInductive!2892 thiss!26544 (t!348546 rules!3967)))))

(assert (=> d!1242951 (= lt!1501528 (forall!8497 (t!348546 rules!3967) lambda!129826))))

(assert (=> d!1242951 (= (rulesValid!3049 thiss!26544 (t!348546 rules!3967)) lt!1501528)))

(declare-fun bs!597652 () Bool)

(assert (= bs!597652 d!1242951))

(assert (=> bs!597652 m!4806545))

(declare-fun m!4807669 () Bool)

(assert (=> bs!597652 m!4807669))

(assert (=> d!1242479 d!1242951))

(declare-fun d!1242959 () Bool)

(declare-fun res!1733964 () Bool)

(declare-fun e!2619135 () Bool)

(assert (=> d!1242959 (=> res!1733964 e!2619135)))

(assert (=> d!1242959 (= res!1733964 ((_ is Nil!46403) rules!3967))))

(assert (=> d!1242959 (= (noDuplicateTag!3210 thiss!26544 rules!3967 Nil!46404) e!2619135)))

(declare-fun b!4218851 () Bool)

(declare-fun e!2619136 () Bool)

(assert (=> b!4218851 (= e!2619135 e!2619136)))

(declare-fun res!1733965 () Bool)

(assert (=> b!4218851 (=> (not res!1733965) (not e!2619136))))

(assert (=> b!4218851 (= res!1733965 (not (contains!9600 Nil!46404 (tag!8642 (h!51823 rules!3967)))))))

(declare-fun b!4218852 () Bool)

(assert (=> b!4218852 (= e!2619136 (noDuplicateTag!3210 thiss!26544 (t!348546 rules!3967) (Cons!46404 (tag!8642 (h!51823 rules!3967)) Nil!46404)))))

(assert (= (and d!1242959 (not res!1733964)) b!4218851))

(assert (= (and b!4218851 res!1733965) b!4218852))

(declare-fun m!4807671 () Bool)

(assert (=> b!4218851 m!4807671))

(declare-fun m!4807673 () Bool)

(assert (=> b!4218852 m!4807673))

(assert (=> b!4218180 d!1242959))

(declare-fun bs!597653 () Bool)

(declare-fun d!1242961 () Bool)

(assert (= bs!597653 (and d!1242961 d!1242665)))

(declare-fun lambda!129827 () Int)

(assert (=> bs!597653 (= lambda!129827 lambda!129808)))

(declare-fun bs!597654 () Bool)

(assert (= bs!597654 (and d!1242961 d!1242777)))

(assert (=> bs!597654 (= (and (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 tBis!41))))) (= lambda!129827 lambda!129816))))

(declare-fun bs!597655 () Bool)

(assert (= bs!597655 (and d!1242961 d!1242863)))

(assert (=> bs!597655 (= (and (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (rule!10908 t!8364))))) (= lambda!129827 lambda!129819))))

(declare-fun bs!597656 () Bool)

(assert (= bs!597656 (and d!1242961 d!1242571)))

(assert (=> bs!597656 (= (and (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (= lambda!129827 lambda!129796))))

(declare-fun bs!597657 () Bool)

(assert (= bs!597657 (and d!1242961 d!1242791)))

(assert (=> bs!597657 (= (and (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (= lambda!129827 lambda!129817))))

(assert (=> d!1242961 true))

(assert (=> d!1242961 (< (dynLambda!19987 order!24547 (toChars!10357 (transformation!7778 rBis!178))) (dynLambda!19988 order!24549 lambda!129827))))

(assert (=> d!1242961 true))

(assert (=> d!1242961 (< (dynLambda!19989 order!24551 (toValue!10498 (transformation!7778 rBis!178))) (dynLambda!19988 order!24549 lambda!129827))))

(assert (=> d!1242961 (= (semiInverseModEq!3381 (toChars!10357 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 rBis!178))) (Forall!1579 lambda!129827))))

(declare-fun bs!597658 () Bool)

(assert (= bs!597658 d!1242961))

(declare-fun m!4807675 () Bool)

(assert (=> bs!597658 m!4807675))

(assert (=> d!1242505 d!1242961))

(declare-fun b!4218853 () Bool)

(declare-fun e!2619137 () Bool)

(declare-fun tp!1290451 () Bool)

(assert (=> b!4218853 (= e!2619137 (and tp_is_empty!22333 tp!1290451))))

(assert (=> b!4218221 (= tp!1290421 e!2619137)))

(assert (= (and b!4218221 ((_ is Cons!46402) (t!348545 (t!348545 pBis!121)))) b!4218853))

(declare-fun b!4218857 () Bool)

(declare-fun e!2619138 () Bool)

(declare-fun tp!1290453 () Bool)

(declare-fun tp!1290455 () Bool)

(assert (=> b!4218857 (= e!2619138 (and tp!1290453 tp!1290455))))

(declare-fun b!4218855 () Bool)

(declare-fun tp!1290456 () Bool)

(declare-fun tp!1290454 () Bool)

(assert (=> b!4218855 (= e!2619138 (and tp!1290456 tp!1290454))))

(declare-fun b!4218854 () Bool)

(assert (=> b!4218854 (= e!2619138 tp_is_empty!22333)))

(assert (=> b!4218236 (= tp!1290440 e!2619138)))

(declare-fun b!4218856 () Bool)

(declare-fun tp!1290452 () Bool)

(assert (=> b!4218856 (= e!2619138 tp!1290452)))

(assert (= (and b!4218236 ((_ is ElementMatch!12683) (regOne!25878 (regex!7778 (h!51823 rules!3967))))) b!4218854))

(assert (= (and b!4218236 ((_ is Concat!20692) (regOne!25878 (regex!7778 (h!51823 rules!3967))))) b!4218855))

(assert (= (and b!4218236 ((_ is Star!12683) (regOne!25878 (regex!7778 (h!51823 rules!3967))))) b!4218856))

(assert (= (and b!4218236 ((_ is Union!12683) (regOne!25878 (regex!7778 (h!51823 rules!3967))))) b!4218857))

(declare-fun b!4218861 () Bool)

(declare-fun e!2619139 () Bool)

(declare-fun tp!1290458 () Bool)

(declare-fun tp!1290460 () Bool)

(assert (=> b!4218861 (= e!2619139 (and tp!1290458 tp!1290460))))

(declare-fun b!4218859 () Bool)

(declare-fun tp!1290461 () Bool)

(declare-fun tp!1290459 () Bool)

(assert (=> b!4218859 (= e!2619139 (and tp!1290461 tp!1290459))))

(declare-fun b!4218858 () Bool)

(assert (=> b!4218858 (= e!2619139 tp_is_empty!22333)))

(assert (=> b!4218236 (= tp!1290438 e!2619139)))

(declare-fun b!4218860 () Bool)

(declare-fun tp!1290457 () Bool)

(assert (=> b!4218860 (= e!2619139 tp!1290457)))

(assert (= (and b!4218236 ((_ is ElementMatch!12683) (regTwo!25878 (regex!7778 (h!51823 rules!3967))))) b!4218858))

(assert (= (and b!4218236 ((_ is Concat!20692) (regTwo!25878 (regex!7778 (h!51823 rules!3967))))) b!4218859))

(assert (= (and b!4218236 ((_ is Star!12683) (regTwo!25878 (regex!7778 (h!51823 rules!3967))))) b!4218860))

(assert (= (and b!4218236 ((_ is Union!12683) (regTwo!25878 (regex!7778 (h!51823 rules!3967))))) b!4218861))

(declare-fun tp!1290470 () Bool)

(declare-fun e!2619145 () Bool)

(declare-fun b!4218870 () Bool)

(declare-fun tp!1290468 () Bool)

(assert (=> b!4218870 (= e!2619145 (and (inv!61053 (left!34517 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))))) tp!1290470 (inv!61053 (right!34847 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))))) tp!1290468))))

(declare-fun b!4218872 () Bool)

(declare-fun e!2619144 () Bool)

(declare-fun tp!1290469 () Bool)

(assert (=> b!4218872 (= e!2619144 tp!1290469)))

(declare-fun b!4218871 () Bool)

(declare-fun inv!61057 (IArray!27983) Bool)

(assert (=> b!4218871 (= e!2619145 (and (inv!61057 (xs!17295 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))))) e!2619144))))

(assert (=> b!4218141 (= tp!1290389 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990))))) e!2619145))))

(assert (= (and b!4218141 ((_ is Node!13989) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))))) b!4218870))

(assert (= b!4218871 b!4218872))

(assert (= (and b!4218141 ((_ is Leaf!21622) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))) (value!242202 (_1!25199 lt!1500990)))))) b!4218871))

(declare-fun m!4807677 () Bool)

(assert (=> b!4218870 m!4807677))

(declare-fun m!4807679 () Bool)

(assert (=> b!4218870 m!4807679))

(declare-fun m!4807681 () Bool)

(assert (=> b!4218871 m!4807681))

(assert (=> b!4218141 m!4806609))

(declare-fun b!4218876 () Bool)

(declare-fun e!2619146 () Bool)

(declare-fun tp!1290472 () Bool)

(declare-fun tp!1290474 () Bool)

(assert (=> b!4218876 (= e!2619146 (and tp!1290472 tp!1290474))))

(declare-fun b!4218874 () Bool)

(declare-fun tp!1290475 () Bool)

(declare-fun tp!1290473 () Bool)

(assert (=> b!4218874 (= e!2619146 (and tp!1290475 tp!1290473))))

(declare-fun b!4218873 () Bool)

(assert (=> b!4218873 (= e!2619146 tp_is_empty!22333)))

(assert (=> b!4218218 (= tp!1290420 e!2619146)))

(declare-fun b!4218875 () Bool)

(declare-fun tp!1290471 () Bool)

(assert (=> b!4218875 (= e!2619146 tp!1290471)))

(assert (= (and b!4218218 ((_ is ElementMatch!12683) (regOne!25878 (regex!7778 rBis!178)))) b!4218873))

(assert (= (and b!4218218 ((_ is Concat!20692) (regOne!25878 (regex!7778 rBis!178)))) b!4218874))

(assert (= (and b!4218218 ((_ is Star!12683) (regOne!25878 (regex!7778 rBis!178)))) b!4218875))

(assert (= (and b!4218218 ((_ is Union!12683) (regOne!25878 (regex!7778 rBis!178)))) b!4218876))

(declare-fun b!4218880 () Bool)

(declare-fun e!2619147 () Bool)

(declare-fun tp!1290477 () Bool)

(declare-fun tp!1290479 () Bool)

(assert (=> b!4218880 (= e!2619147 (and tp!1290477 tp!1290479))))

(declare-fun b!4218878 () Bool)

(declare-fun tp!1290480 () Bool)

(declare-fun tp!1290478 () Bool)

(assert (=> b!4218878 (= e!2619147 (and tp!1290480 tp!1290478))))

(declare-fun b!4218877 () Bool)

(assert (=> b!4218877 (= e!2619147 tp_is_empty!22333)))

(assert (=> b!4218218 (= tp!1290418 e!2619147)))

(declare-fun b!4218879 () Bool)

(declare-fun tp!1290476 () Bool)

(assert (=> b!4218879 (= e!2619147 tp!1290476)))

(assert (= (and b!4218218 ((_ is ElementMatch!12683) (regTwo!25878 (regex!7778 rBis!178)))) b!4218877))

(assert (= (and b!4218218 ((_ is Concat!20692) (regTwo!25878 (regex!7778 rBis!178)))) b!4218878))

(assert (= (and b!4218218 ((_ is Star!12683) (regTwo!25878 (regex!7778 rBis!178)))) b!4218879))

(assert (= (and b!4218218 ((_ is Union!12683) (regTwo!25878 (regex!7778 rBis!178)))) b!4218880))

(declare-fun b!4218881 () Bool)

(declare-fun e!2619148 () Bool)

(declare-fun tp!1290481 () Bool)

(assert (=> b!4218881 (= e!2619148 (and tp_is_empty!22333 tp!1290481))))

(assert (=> b!4218211 (= tp!1290409 e!2619148)))

(assert (= (and b!4218211 ((_ is Cons!46402) (t!348545 (t!348545 suffix!1557)))) b!4218881))

(declare-fun b!4218885 () Bool)

(declare-fun e!2619149 () Bool)

(declare-fun tp!1290483 () Bool)

(declare-fun tp!1290485 () Bool)

(assert (=> b!4218885 (= e!2619149 (and tp!1290483 tp!1290485))))

(declare-fun b!4218883 () Bool)

(declare-fun tp!1290486 () Bool)

(declare-fun tp!1290484 () Bool)

(assert (=> b!4218883 (= e!2619149 (and tp!1290486 tp!1290484))))

(declare-fun b!4218882 () Bool)

(assert (=> b!4218882 (= e!2619149 tp_is_empty!22333)))

(assert (=> b!4218231 (= tp!1290433 e!2619149)))

(declare-fun b!4218884 () Bool)

(declare-fun tp!1290482 () Bool)

(assert (=> b!4218884 (= e!2619149 tp!1290482)))

(assert (= (and b!4218231 ((_ is ElementMatch!12683) (regex!7778 (h!51823 (t!348546 rules!3967))))) b!4218882))

(assert (= (and b!4218231 ((_ is Concat!20692) (regex!7778 (h!51823 (t!348546 rules!3967))))) b!4218883))

(assert (= (and b!4218231 ((_ is Star!12683) (regex!7778 (h!51823 (t!348546 rules!3967))))) b!4218884))

(assert (= (and b!4218231 ((_ is Union!12683) (regex!7778 (h!51823 (t!348546 rules!3967))))) b!4218885))

(declare-fun b!4218886 () Bool)

(declare-fun e!2619150 () Bool)

(declare-fun tp!1290487 () Bool)

(assert (=> b!4218886 (= e!2619150 (and tp_is_empty!22333 tp!1290487))))

(assert (=> b!4218195 (= tp!1290392 e!2619150)))

(assert (= (and b!4218195 ((_ is Cons!46402) (t!348545 (originalCharacters!8160 t!8364)))) b!4218886))

(declare-fun b!4218890 () Bool)

(declare-fun e!2619151 () Bool)

(declare-fun tp!1290489 () Bool)

(declare-fun tp!1290491 () Bool)

(assert (=> b!4218890 (= e!2619151 (and tp!1290489 tp!1290491))))

(declare-fun b!4218888 () Bool)

(declare-fun tp!1290492 () Bool)

(declare-fun tp!1290490 () Bool)

(assert (=> b!4218888 (= e!2619151 (and tp!1290492 tp!1290490))))

(declare-fun b!4218887 () Bool)

(assert (=> b!4218887 (= e!2619151 tp_is_empty!22333)))

(assert (=> b!4218219 (= tp!1290416 e!2619151)))

(declare-fun b!4218889 () Bool)

(declare-fun tp!1290488 () Bool)

(assert (=> b!4218889 (= e!2619151 tp!1290488)))

(assert (= (and b!4218219 ((_ is ElementMatch!12683) (reg!13012 (regex!7778 rBis!178)))) b!4218887))

(assert (= (and b!4218219 ((_ is Concat!20692) (reg!13012 (regex!7778 rBis!178)))) b!4218888))

(assert (= (and b!4218219 ((_ is Star!12683) (reg!13012 (regex!7778 rBis!178)))) b!4218889))

(assert (= (and b!4218219 ((_ is Union!12683) (reg!13012 (regex!7778 rBis!178)))) b!4218890))

(declare-fun b!4218894 () Bool)

(declare-fun e!2619152 () Bool)

(declare-fun tp!1290494 () Bool)

(declare-fun tp!1290496 () Bool)

(assert (=> b!4218894 (= e!2619152 (and tp!1290494 tp!1290496))))

(declare-fun b!4218892 () Bool)

(declare-fun tp!1290497 () Bool)

(declare-fun tp!1290495 () Bool)

(assert (=> b!4218892 (= e!2619152 (and tp!1290497 tp!1290495))))

(declare-fun b!4218891 () Bool)

(assert (=> b!4218891 (= e!2619152 tp_is_empty!22333)))

(assert (=> b!4218220 (= tp!1290417 e!2619152)))

(declare-fun b!4218893 () Bool)

(declare-fun tp!1290493 () Bool)

(assert (=> b!4218893 (= e!2619152 tp!1290493)))

(assert (= (and b!4218220 ((_ is ElementMatch!12683) (regOne!25879 (regex!7778 rBis!178)))) b!4218891))

(assert (= (and b!4218220 ((_ is Concat!20692) (regOne!25879 (regex!7778 rBis!178)))) b!4218892))

(assert (= (and b!4218220 ((_ is Star!12683) (regOne!25879 (regex!7778 rBis!178)))) b!4218893))

(assert (= (and b!4218220 ((_ is Union!12683) (regOne!25879 (regex!7778 rBis!178)))) b!4218894))

(declare-fun b!4218898 () Bool)

(declare-fun e!2619153 () Bool)

(declare-fun tp!1290499 () Bool)

(declare-fun tp!1290501 () Bool)

(assert (=> b!4218898 (= e!2619153 (and tp!1290499 tp!1290501))))

(declare-fun b!4218896 () Bool)

(declare-fun tp!1290502 () Bool)

(declare-fun tp!1290500 () Bool)

(assert (=> b!4218896 (= e!2619153 (and tp!1290502 tp!1290500))))

(declare-fun b!4218895 () Bool)

(assert (=> b!4218895 (= e!2619153 tp_is_empty!22333)))

(assert (=> b!4218220 (= tp!1290419 e!2619153)))

(declare-fun b!4218897 () Bool)

(declare-fun tp!1290498 () Bool)

(assert (=> b!4218897 (= e!2619153 tp!1290498)))

(assert (= (and b!4218220 ((_ is ElementMatch!12683) (regTwo!25879 (regex!7778 rBis!178)))) b!4218895))

(assert (= (and b!4218220 ((_ is Concat!20692) (regTwo!25879 (regex!7778 rBis!178)))) b!4218896))

(assert (= (and b!4218220 ((_ is Star!12683) (regTwo!25879 (regex!7778 rBis!178)))) b!4218897))

(assert (= (and b!4218220 ((_ is Union!12683) (regTwo!25879 (regex!7778 rBis!178)))) b!4218898))

(declare-fun b!4218899 () Bool)

(declare-fun e!2619154 () Bool)

(declare-fun tp!1290503 () Bool)

(assert (=> b!4218899 (= e!2619154 (and tp_is_empty!22333 tp!1290503))))

(assert (=> b!4218210 (= tp!1290408 e!2619154)))

(assert (= (and b!4218210 ((_ is Cons!46402) (t!348545 (t!348545 suffixBis!41)))) b!4218899))

(declare-fun b!4218900 () Bool)

(declare-fun e!2619156 () Bool)

(declare-fun tp!1290504 () Bool)

(declare-fun tp!1290506 () Bool)

(assert (=> b!4218900 (= e!2619156 (and (inv!61053 (left!34517 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))))) tp!1290506 (inv!61053 (right!34847 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))))) tp!1290504))))

(declare-fun b!4218902 () Bool)

(declare-fun e!2619155 () Bool)

(declare-fun tp!1290505 () Bool)

(assert (=> b!4218902 (= e!2619155 tp!1290505)))

(declare-fun b!4218901 () Bool)

(assert (=> b!4218901 (= e!2619156 (and (inv!61057 (xs!17295 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))))) e!2619155))))

(assert (=> b!4217817 (= tp!1290331 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41)))) e!2619156))))

(assert (= (and b!4217817 ((_ is Node!13989) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))))) b!4218900))

(assert (= b!4218901 b!4218902))

(assert (= (and b!4217817 ((_ is Leaf!21622) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (value!242202 tBis!41))))) b!4218901))

(declare-fun m!4807683 () Bool)

(assert (=> b!4218900 m!4807683))

(declare-fun m!4807685 () Bool)

(assert (=> b!4218900 m!4807685))

(declare-fun m!4807687 () Bool)

(assert (=> b!4218901 m!4807687))

(assert (=> b!4217817 m!4806145))

(declare-fun b!4218903 () Bool)

(declare-fun e!2619157 () Bool)

(declare-fun tp!1290507 () Bool)

(assert (=> b!4218903 (= e!2619157 (and tp_is_empty!22333 tp!1290507))))

(assert (=> b!4218234 (= tp!1290435 e!2619157)))

(assert (= (and b!4218234 ((_ is Cons!46402) (t!348545 (originalCharacters!8160 tBis!41)))) b!4218903))

(declare-fun b!4218906 () Bool)

(declare-fun b_free!123811 () Bool)

(declare-fun b_next!124515 () Bool)

(assert (=> b!4218906 (= b_free!123811 (not b_next!124515))))

(declare-fun t!348794 () Bool)

(declare-fun tb!253459 () Bool)

(assert (=> (and b!4218906 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348794) tb!253459))

(declare-fun result!308906 () Bool)

(assert (= result!308906 result!308740))

(assert (=> d!1242613 t!348794))

(declare-fun tb!253461 () Bool)

(declare-fun t!348796 () Bool)

(assert (=> (and b!4218906 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 rBis!178))) t!348796) tb!253461))

(declare-fun result!308908 () Bool)

(assert (= result!308908 result!308762))

(assert (=> d!1242667 t!348796))

(declare-fun t!348798 () Bool)

(declare-fun tb!253463 () Bool)

(assert (=> (and b!4218906 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (h!51823 rules!3967)))) t!348798) tb!253463))

(declare-fun result!308910 () Bool)

(assert (= result!308910 result!308824))

(assert (=> d!1242821 t!348798))

(assert (=> d!1242665 t!348796))

(declare-fun tb!253465 () Bool)

(declare-fun t!348800 () Bool)

(assert (=> (and b!4218906 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348800) tb!253465))

(declare-fun result!308912 () Bool)

(assert (= result!308912 result!308782))

(assert (=> d!1242715 t!348800))

(declare-fun t!348802 () Bool)

(declare-fun tb!253467 () Bool)

(assert (=> (and b!4218906 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348802) tb!253467))

(declare-fun result!308914 () Bool)

(assert (= result!308914 result!308884))

(assert (=> d!1242917 t!348802))

(declare-fun tb!253469 () Bool)

(declare-fun t!348804 () Bool)

(assert (=> (and b!4218906 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348804) tb!253469))

(declare-fun result!308916 () Bool)

(assert (= result!308916 result!308854))

(assert (=> d!1242867 t!348804))

(assert (=> d!1242791 t!348798))

(declare-fun b_and!332711 () Bool)

(declare-fun tp!1290509 () Bool)

(assert (=> b!4218906 (= tp!1290509 (and (=> t!348802 result!308914) (=> t!348800 result!308912) (=> t!348796 result!308908) (=> t!348794 result!308906) (=> t!348798 result!308910) (=> t!348804 result!308916) b_and!332711))))

(declare-fun b_free!123813 () Bool)

(declare-fun b_next!124517 () Bool)

(assert (=> b!4218906 (= b_free!123813 (not b_next!124517))))

(declare-fun tb!253471 () Bool)

(declare-fun t!348806 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 tBis!41)))) t!348806) tb!253471))

(declare-fun result!308918 () Bool)

(assert (= result!308918 result!308644))

(assert (=> b!4217803 t!348806))

(declare-fun t!348808 () Bool)

(declare-fun tb!253473 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (h!51823 rules!3967)))) t!348808) tb!253473))

(declare-fun result!308920 () Bool)

(assert (= result!308920 result!308814))

(assert (=> d!1242791 t!348808))

(declare-fun t!348810 () Bool)

(declare-fun tb!253475 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501140)))))) t!348810) tb!253475))

(declare-fun result!308922 () Bool)

(assert (= result!308922 result!308772))

(assert (=> d!1242707 t!348810))

(declare-fun t!348812 () Bool)

(declare-fun tb!253477 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990))))) t!348812) tb!253477))

(declare-fun result!308924 () Bool)

(assert (= result!308924 result!308700))

(assert (=> d!1242495 t!348812))

(declare-fun t!348814 () Bool)

(declare-fun tb!253479 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 t!8364)))) t!348814) tb!253479))

(declare-fun result!308926 () Bool)

(assert (= result!308926 result!308654))

(assert (=> b!4217818 t!348814))

(assert (=> d!1242513 t!348806))

(declare-fun t!348816 () Bool)

(declare-fun tb!253481 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501147)))))) t!348816) tb!253481))

(declare-fun result!308928 () Bool)

(assert (= result!308928 result!308720))

(assert (=> d!1242537 t!348816))

(declare-fun t!348818 () Bool)

(declare-fun tb!253483 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 rBis!178))) t!348818) tb!253483))

(declare-fun result!308930 () Bool)

(assert (= result!308930 result!308752))

(assert (=> d!1242665 t!348818))

(declare-fun tb!253485 () Bool)

(declare-fun t!348820 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501113)))))) t!348820) tb!253485))

(declare-fun result!308932 () Bool)

(assert (= result!308932 result!308864))

(assert (=> d!1242879 t!348820))

(declare-fun tb!253487 () Bool)

(declare-fun t!348822 () Bool)

(assert (=> (and b!4218906 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 (get!15101 lt!1501060)))))) t!348822) tb!253487))

(declare-fun result!308934 () Bool)

(assert (= result!308934 result!308730))

(assert (=> d!1242553 t!348822))

(declare-fun tp!1290508 () Bool)

(declare-fun b_and!332713 () Bool)

(assert (=> b!4218906 (= tp!1290508 (and (=> t!348814 result!308926) (=> t!348816 result!308928) (=> t!348806 result!308918) (=> t!348808 result!308920) (=> t!348810 result!308922) (=> t!348822 result!308934) (=> t!348818 result!308930) (=> t!348812 result!308924) (=> t!348820 result!308932) b_and!332713))))

(declare-fun e!2619161 () Bool)

(assert (=> b!4218906 (= e!2619161 (and tp!1290509 tp!1290508))))

(declare-fun b!4218905 () Bool)

(declare-fun e!2619160 () Bool)

(declare-fun tp!1290511 () Bool)

(assert (=> b!4218905 (= e!2619160 (and tp!1290511 (inv!61046 (tag!8642 (h!51823 (t!348546 (t!348546 rules!3967))))) (inv!61049 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) e!2619161))))

(declare-fun b!4218904 () Bool)

(declare-fun e!2619158 () Bool)

(declare-fun tp!1290510 () Bool)

(assert (=> b!4218904 (= e!2619158 (and e!2619160 tp!1290510))))

(assert (=> b!4218230 (= tp!1290432 e!2619158)))

(assert (= b!4218905 b!4218906))

(assert (= b!4218904 b!4218905))

(assert (= (and b!4218230 ((_ is Cons!46403) (t!348546 (t!348546 rules!3967)))) b!4218904))

(declare-fun m!4807689 () Bool)

(assert (=> b!4218905 m!4807689))

(declare-fun m!4807691 () Bool)

(assert (=> b!4218905 m!4807691))

(declare-fun b!4218910 () Bool)

(declare-fun e!2619162 () Bool)

(declare-fun tp!1290513 () Bool)

(declare-fun tp!1290515 () Bool)

(assert (=> b!4218910 (= e!2619162 (and tp!1290513 tp!1290515))))

(declare-fun b!4218908 () Bool)

(declare-fun tp!1290516 () Bool)

(declare-fun tp!1290514 () Bool)

(assert (=> b!4218908 (= e!2619162 (and tp!1290516 tp!1290514))))

(declare-fun b!4218907 () Bool)

(assert (=> b!4218907 (= e!2619162 tp_is_empty!22333)))

(assert (=> b!4218209 (= tp!1290404 e!2619162)))

(declare-fun b!4218909 () Bool)

(declare-fun tp!1290512 () Bool)

(assert (=> b!4218909 (= e!2619162 tp!1290512)))

(assert (= (and b!4218209 ((_ is ElementMatch!12683) (regOne!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218907))

(assert (= (and b!4218209 ((_ is Concat!20692) (regOne!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218908))

(assert (= (and b!4218209 ((_ is Star!12683) (regOne!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218909))

(assert (= (and b!4218209 ((_ is Union!12683) (regOne!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218910))

(declare-fun b!4218914 () Bool)

(declare-fun e!2619163 () Bool)

(declare-fun tp!1290518 () Bool)

(declare-fun tp!1290520 () Bool)

(assert (=> b!4218914 (= e!2619163 (and tp!1290518 tp!1290520))))

(declare-fun b!4218912 () Bool)

(declare-fun tp!1290521 () Bool)

(declare-fun tp!1290519 () Bool)

(assert (=> b!4218912 (= e!2619163 (and tp!1290521 tp!1290519))))

(declare-fun b!4218911 () Bool)

(assert (=> b!4218911 (= e!2619163 tp_is_empty!22333)))

(assert (=> b!4218209 (= tp!1290406 e!2619163)))

(declare-fun b!4218913 () Bool)

(declare-fun tp!1290517 () Bool)

(assert (=> b!4218913 (= e!2619163 tp!1290517)))

(assert (= (and b!4218209 ((_ is ElementMatch!12683) (regTwo!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218911))

(assert (= (and b!4218209 ((_ is Concat!20692) (regTwo!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218912))

(assert (= (and b!4218209 ((_ is Star!12683) (regTwo!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218913))

(assert (= (and b!4218209 ((_ is Union!12683) (regTwo!25879 (regex!7778 (rule!10908 tBis!41))))) b!4218914))

(declare-fun b!4218915 () Bool)

(declare-fun e!2619164 () Bool)

(declare-fun tp!1290522 () Bool)

(assert (=> b!4218915 (= e!2619164 (and tp_is_empty!22333 tp!1290522))))

(assert (=> b!4218233 (= tp!1290434 e!2619164)))

(assert (= (and b!4218233 ((_ is Cons!46402) (t!348545 (t!348545 input!3517)))) b!4218915))

(declare-fun b!4218916 () Bool)

(declare-fun e!2619165 () Bool)

(declare-fun tp!1290523 () Bool)

(assert (=> b!4218916 (= e!2619165 (and tp_is_empty!22333 tp!1290523))))

(assert (=> b!4218216 (= tp!1290415 e!2619165)))

(assert (= (and b!4218216 ((_ is Cons!46402) (t!348545 (t!348545 p!3001)))) b!4218916))

(declare-fun b!4218920 () Bool)

(declare-fun e!2619166 () Bool)

(declare-fun tp!1290525 () Bool)

(declare-fun tp!1290527 () Bool)

(assert (=> b!4218920 (= e!2619166 (and tp!1290525 tp!1290527))))

(declare-fun b!4218918 () Bool)

(declare-fun tp!1290528 () Bool)

(declare-fun tp!1290526 () Bool)

(assert (=> b!4218918 (= e!2619166 (and tp!1290528 tp!1290526))))

(declare-fun b!4218917 () Bool)

(assert (=> b!4218917 (= e!2619166 tp_is_empty!22333)))

(assert (=> b!4218207 (= tp!1290407 e!2619166)))

(declare-fun b!4218919 () Bool)

(declare-fun tp!1290524 () Bool)

(assert (=> b!4218919 (= e!2619166 tp!1290524)))

(assert (= (and b!4218207 ((_ is ElementMatch!12683) (regOne!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218917))

(assert (= (and b!4218207 ((_ is Concat!20692) (regOne!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218918))

(assert (= (and b!4218207 ((_ is Star!12683) (regOne!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218919))

(assert (= (and b!4218207 ((_ is Union!12683) (regOne!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218920))

(declare-fun b!4218924 () Bool)

(declare-fun e!2619167 () Bool)

(declare-fun tp!1290530 () Bool)

(declare-fun tp!1290532 () Bool)

(assert (=> b!4218924 (= e!2619167 (and tp!1290530 tp!1290532))))

(declare-fun b!4218922 () Bool)

(declare-fun tp!1290533 () Bool)

(declare-fun tp!1290531 () Bool)

(assert (=> b!4218922 (= e!2619167 (and tp!1290533 tp!1290531))))

(declare-fun b!4218921 () Bool)

(assert (=> b!4218921 (= e!2619167 tp_is_empty!22333)))

(assert (=> b!4218207 (= tp!1290405 e!2619167)))

(declare-fun b!4218923 () Bool)

(declare-fun tp!1290529 () Bool)

(assert (=> b!4218923 (= e!2619167 tp!1290529)))

(assert (= (and b!4218207 ((_ is ElementMatch!12683) (regTwo!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218921))

(assert (= (and b!4218207 ((_ is Concat!20692) (regTwo!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218922))

(assert (= (and b!4218207 ((_ is Star!12683) (regTwo!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218923))

(assert (= (and b!4218207 ((_ is Union!12683) (regTwo!25878 (regex!7778 (rule!10908 tBis!41))))) b!4218924))

(declare-fun b!4218928 () Bool)

(declare-fun e!2619168 () Bool)

(declare-fun tp!1290535 () Bool)

(declare-fun tp!1290537 () Bool)

(assert (=> b!4218928 (= e!2619168 (and tp!1290535 tp!1290537))))

(declare-fun b!4218926 () Bool)

(declare-fun tp!1290538 () Bool)

(declare-fun tp!1290536 () Bool)

(assert (=> b!4218926 (= e!2619168 (and tp!1290538 tp!1290536))))

(declare-fun b!4218925 () Bool)

(assert (=> b!4218925 (= e!2619168 tp_is_empty!22333)))

(assert (=> b!4218208 (= tp!1290403 e!2619168)))

(declare-fun b!4218927 () Bool)

(declare-fun tp!1290534 () Bool)

(assert (=> b!4218927 (= e!2619168 tp!1290534)))

(assert (= (and b!4218208 ((_ is ElementMatch!12683) (reg!13012 (regex!7778 (rule!10908 tBis!41))))) b!4218925))

(assert (= (and b!4218208 ((_ is Concat!20692) (reg!13012 (regex!7778 (rule!10908 tBis!41))))) b!4218926))

(assert (= (and b!4218208 ((_ is Star!12683) (reg!13012 (regex!7778 (rule!10908 tBis!41))))) b!4218927))

(assert (= (and b!4218208 ((_ is Union!12683) (reg!13012 (regex!7778 (rule!10908 tBis!41))))) b!4218928))

(declare-fun b!4218929 () Bool)

(declare-fun e!2619170 () Bool)

(declare-fun tp!1290541 () Bool)

(declare-fun tp!1290539 () Bool)

(assert (=> b!4218929 (= e!2619170 (and (inv!61053 (left!34517 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))))) tp!1290541 (inv!61053 (right!34847 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))))) tp!1290539))))

(declare-fun b!4218931 () Bool)

(declare-fun e!2619169 () Bool)

(declare-fun tp!1290540 () Bool)

(assert (=> b!4218931 (= e!2619169 tp!1290540)))

(declare-fun b!4218930 () Bool)

(assert (=> b!4218930 (= e!2619170 (and (inv!61057 (xs!17295 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))))) e!2619169))))

(assert (=> b!4217820 (= tp!1290332 (and (inv!61053 (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364)))) e!2619170))))

(assert (= (and b!4217820 ((_ is Node!13989) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))))) b!4218929))

(assert (= b!4218930 b!4218931))

(assert (= (and b!4217820 ((_ is Leaf!21622) (c!717901 (dynLambda!19986 (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (value!242202 t!8364))))) b!4218930))

(declare-fun m!4807693 () Bool)

(assert (=> b!4218929 m!4807693))

(declare-fun m!4807695 () Bool)

(assert (=> b!4218929 m!4807695))

(declare-fun m!4807697 () Bool)

(assert (=> b!4218930 m!4807697))

(assert (=> b!4217820 m!4806157))

(declare-fun b!4218935 () Bool)

(declare-fun e!2619171 () Bool)

(declare-fun tp!1290543 () Bool)

(declare-fun tp!1290545 () Bool)

(assert (=> b!4218935 (= e!2619171 (and tp!1290543 tp!1290545))))

(declare-fun b!4218933 () Bool)

(declare-fun tp!1290546 () Bool)

(declare-fun tp!1290544 () Bool)

(assert (=> b!4218933 (= e!2619171 (and tp!1290546 tp!1290544))))

(declare-fun b!4218932 () Bool)

(assert (=> b!4218932 (= e!2619171 tp_is_empty!22333)))

(assert (=> b!4218215 (= tp!1290411 e!2619171)))

(declare-fun b!4218934 () Bool)

(declare-fun tp!1290542 () Bool)

(assert (=> b!4218934 (= e!2619171 tp!1290542)))

(assert (= (and b!4218215 ((_ is ElementMatch!12683) (regOne!25879 (regex!7778 (rule!10908 t!8364))))) b!4218932))

(assert (= (and b!4218215 ((_ is Concat!20692) (regOne!25879 (regex!7778 (rule!10908 t!8364))))) b!4218933))

(assert (= (and b!4218215 ((_ is Star!12683) (regOne!25879 (regex!7778 (rule!10908 t!8364))))) b!4218934))

(assert (= (and b!4218215 ((_ is Union!12683) (regOne!25879 (regex!7778 (rule!10908 t!8364))))) b!4218935))

(declare-fun b!4218939 () Bool)

(declare-fun e!2619172 () Bool)

(declare-fun tp!1290548 () Bool)

(declare-fun tp!1290550 () Bool)

(assert (=> b!4218939 (= e!2619172 (and tp!1290548 tp!1290550))))

(declare-fun b!4218937 () Bool)

(declare-fun tp!1290551 () Bool)

(declare-fun tp!1290549 () Bool)

(assert (=> b!4218937 (= e!2619172 (and tp!1290551 tp!1290549))))

(declare-fun b!4218936 () Bool)

(assert (=> b!4218936 (= e!2619172 tp_is_empty!22333)))

(assert (=> b!4218215 (= tp!1290413 e!2619172)))

(declare-fun b!4218938 () Bool)

(declare-fun tp!1290547 () Bool)

(assert (=> b!4218938 (= e!2619172 tp!1290547)))

(assert (= (and b!4218215 ((_ is ElementMatch!12683) (regTwo!25879 (regex!7778 (rule!10908 t!8364))))) b!4218936))

(assert (= (and b!4218215 ((_ is Concat!20692) (regTwo!25879 (regex!7778 (rule!10908 t!8364))))) b!4218937))

(assert (= (and b!4218215 ((_ is Star!12683) (regTwo!25879 (regex!7778 (rule!10908 t!8364))))) b!4218938))

(assert (= (and b!4218215 ((_ is Union!12683) (regTwo!25879 (regex!7778 (rule!10908 t!8364))))) b!4218939))

(declare-fun b!4218943 () Bool)

(declare-fun e!2619173 () Bool)

(declare-fun tp!1290553 () Bool)

(declare-fun tp!1290555 () Bool)

(assert (=> b!4218943 (= e!2619173 (and tp!1290553 tp!1290555))))

(declare-fun b!4218941 () Bool)

(declare-fun tp!1290556 () Bool)

(declare-fun tp!1290554 () Bool)

(assert (=> b!4218941 (= e!2619173 (and tp!1290556 tp!1290554))))

(declare-fun b!4218940 () Bool)

(assert (=> b!4218940 (= e!2619173 tp_is_empty!22333)))

(assert (=> b!4218237 (= tp!1290436 e!2619173)))

(declare-fun b!4218942 () Bool)

(declare-fun tp!1290552 () Bool)

(assert (=> b!4218942 (= e!2619173 tp!1290552)))

(assert (= (and b!4218237 ((_ is ElementMatch!12683) (reg!13012 (regex!7778 (h!51823 rules!3967))))) b!4218940))

(assert (= (and b!4218237 ((_ is Concat!20692) (reg!13012 (regex!7778 (h!51823 rules!3967))))) b!4218941))

(assert (= (and b!4218237 ((_ is Star!12683) (reg!13012 (regex!7778 (h!51823 rules!3967))))) b!4218942))

(assert (= (and b!4218237 ((_ is Union!12683) (reg!13012 (regex!7778 (h!51823 rules!3967))))) b!4218943))

(declare-fun b!4218947 () Bool)

(declare-fun e!2619174 () Bool)

(declare-fun tp!1290558 () Bool)

(declare-fun tp!1290560 () Bool)

(assert (=> b!4218947 (= e!2619174 (and tp!1290558 tp!1290560))))

(declare-fun b!4218945 () Bool)

(declare-fun tp!1290561 () Bool)

(declare-fun tp!1290559 () Bool)

(assert (=> b!4218945 (= e!2619174 (and tp!1290561 tp!1290559))))

(declare-fun b!4218944 () Bool)

(assert (=> b!4218944 (= e!2619174 tp_is_empty!22333)))

(assert (=> b!4218213 (= tp!1290414 e!2619174)))

(declare-fun b!4218946 () Bool)

(declare-fun tp!1290557 () Bool)

(assert (=> b!4218946 (= e!2619174 tp!1290557)))

(assert (= (and b!4218213 ((_ is ElementMatch!12683) (regOne!25878 (regex!7778 (rule!10908 t!8364))))) b!4218944))

(assert (= (and b!4218213 ((_ is Concat!20692) (regOne!25878 (regex!7778 (rule!10908 t!8364))))) b!4218945))

(assert (= (and b!4218213 ((_ is Star!12683) (regOne!25878 (regex!7778 (rule!10908 t!8364))))) b!4218946))

(assert (= (and b!4218213 ((_ is Union!12683) (regOne!25878 (regex!7778 (rule!10908 t!8364))))) b!4218947))

(declare-fun b!4218951 () Bool)

(declare-fun e!2619175 () Bool)

(declare-fun tp!1290563 () Bool)

(declare-fun tp!1290565 () Bool)

(assert (=> b!4218951 (= e!2619175 (and tp!1290563 tp!1290565))))

(declare-fun b!4218949 () Bool)

(declare-fun tp!1290566 () Bool)

(declare-fun tp!1290564 () Bool)

(assert (=> b!4218949 (= e!2619175 (and tp!1290566 tp!1290564))))

(declare-fun b!4218948 () Bool)

(assert (=> b!4218948 (= e!2619175 tp_is_empty!22333)))

(assert (=> b!4218213 (= tp!1290412 e!2619175)))

(declare-fun b!4218950 () Bool)

(declare-fun tp!1290562 () Bool)

(assert (=> b!4218950 (= e!2619175 tp!1290562)))

(assert (= (and b!4218213 ((_ is ElementMatch!12683) (regTwo!25878 (regex!7778 (rule!10908 t!8364))))) b!4218948))

(assert (= (and b!4218213 ((_ is Concat!20692) (regTwo!25878 (regex!7778 (rule!10908 t!8364))))) b!4218949))

(assert (= (and b!4218213 ((_ is Star!12683) (regTwo!25878 (regex!7778 (rule!10908 t!8364))))) b!4218950))

(assert (= (and b!4218213 ((_ is Union!12683) (regTwo!25878 (regex!7778 (rule!10908 t!8364))))) b!4218951))

(declare-fun b!4218955 () Bool)

(declare-fun e!2619176 () Bool)

(declare-fun tp!1290568 () Bool)

(declare-fun tp!1290570 () Bool)

(assert (=> b!4218955 (= e!2619176 (and tp!1290568 tp!1290570))))

(declare-fun b!4218953 () Bool)

(declare-fun tp!1290571 () Bool)

(declare-fun tp!1290569 () Bool)

(assert (=> b!4218953 (= e!2619176 (and tp!1290571 tp!1290569))))

(declare-fun b!4218952 () Bool)

(assert (=> b!4218952 (= e!2619176 tp_is_empty!22333)))

(assert (=> b!4218238 (= tp!1290437 e!2619176)))

(declare-fun b!4218954 () Bool)

(declare-fun tp!1290567 () Bool)

(assert (=> b!4218954 (= e!2619176 tp!1290567)))

(assert (= (and b!4218238 ((_ is ElementMatch!12683) (regOne!25879 (regex!7778 (h!51823 rules!3967))))) b!4218952))

(assert (= (and b!4218238 ((_ is Concat!20692) (regOne!25879 (regex!7778 (h!51823 rules!3967))))) b!4218953))

(assert (= (and b!4218238 ((_ is Star!12683) (regOne!25879 (regex!7778 (h!51823 rules!3967))))) b!4218954))

(assert (= (and b!4218238 ((_ is Union!12683) (regOne!25879 (regex!7778 (h!51823 rules!3967))))) b!4218955))

(declare-fun b!4218959 () Bool)

(declare-fun e!2619177 () Bool)

(declare-fun tp!1290573 () Bool)

(declare-fun tp!1290575 () Bool)

(assert (=> b!4218959 (= e!2619177 (and tp!1290573 tp!1290575))))

(declare-fun b!4218957 () Bool)

(declare-fun tp!1290576 () Bool)

(declare-fun tp!1290574 () Bool)

(assert (=> b!4218957 (= e!2619177 (and tp!1290576 tp!1290574))))

(declare-fun b!4218956 () Bool)

(assert (=> b!4218956 (= e!2619177 tp_is_empty!22333)))

(assert (=> b!4218238 (= tp!1290439 e!2619177)))

(declare-fun b!4218958 () Bool)

(declare-fun tp!1290572 () Bool)

(assert (=> b!4218958 (= e!2619177 tp!1290572)))

(assert (= (and b!4218238 ((_ is ElementMatch!12683) (regTwo!25879 (regex!7778 (h!51823 rules!3967))))) b!4218956))

(assert (= (and b!4218238 ((_ is Concat!20692) (regTwo!25879 (regex!7778 (h!51823 rules!3967))))) b!4218957))

(assert (= (and b!4218238 ((_ is Star!12683) (regTwo!25879 (regex!7778 (h!51823 rules!3967))))) b!4218958))

(assert (= (and b!4218238 ((_ is Union!12683) (regTwo!25879 (regex!7778 (h!51823 rules!3967))))) b!4218959))

(declare-fun b!4218965 () Bool)

(declare-fun e!2619179 () Bool)

(declare-fun tp!1290578 () Bool)

(declare-fun tp!1290580 () Bool)

(assert (=> b!4218965 (= e!2619179 (and tp!1290578 tp!1290580))))

(declare-fun b!4218963 () Bool)

(declare-fun tp!1290581 () Bool)

(declare-fun tp!1290579 () Bool)

(assert (=> b!4218963 (= e!2619179 (and tp!1290581 tp!1290579))))

(declare-fun b!4218962 () Bool)

(assert (=> b!4218962 (= e!2619179 tp_is_empty!22333)))

(assert (=> b!4218214 (= tp!1290410 e!2619179)))

(declare-fun b!4218964 () Bool)

(declare-fun tp!1290577 () Bool)

(assert (=> b!4218964 (= e!2619179 tp!1290577)))

(assert (= (and b!4218214 ((_ is ElementMatch!12683) (reg!13012 (regex!7778 (rule!10908 t!8364))))) b!4218962))

(assert (= (and b!4218214 ((_ is Concat!20692) (reg!13012 (regex!7778 (rule!10908 t!8364))))) b!4218963))

(assert (= (and b!4218214 ((_ is Star!12683) (reg!13012 (regex!7778 (rule!10908 t!8364))))) b!4218964))

(assert (= (and b!4218214 ((_ is Union!12683) (reg!13012 (regex!7778 (rule!10908 t!8364))))) b!4218965))

(declare-fun b_lambda!124329 () Bool)

(assert (= b_lambda!124293 (or (and b!4218232 b_free!123809 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 rBis!178)))) (and b!4217752 b_free!123801 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 rBis!178)))) (and b!4217757 b_free!123789 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 rBis!178)))) (and b!4217746 b_free!123797) (and b!4217775 b_free!123793 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 rBis!178)))) (and b!4218906 b_free!123813 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 rBis!178)))) b_lambda!124329)))

(declare-fun b_lambda!124331 () Bool)

(assert (= b_lambda!124277 (or (and b!4218232 b_free!123809 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))))) (and b!4217746 b_free!123797 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))))) (and b!4217757 b_free!123789 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))))) (and b!4218906 b_free!123813 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))))) (and b!4217752 b_free!123801 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))))) (and b!4217775 b_free!123793 (= (toChars!10357 (transformation!7778 (h!51823 rules!3967))) (toChars!10357 (transformation!7778 (rule!10908 (_1!25199 lt!1500990)))))) b_lambda!124331)))

(declare-fun b_lambda!124333 () Bool)

(assert (= b_lambda!124297 (or (and b!4218232 b_free!123807 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4217775 b_free!123791 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4217752 b_free!123799 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4218906 b_free!123811 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4217746 b_free!123795) (and b!4217757 b_free!123787 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 rBis!178)))) b_lambda!124333)))

(declare-fun b_lambda!124335 () Bool)

(assert (= b_lambda!124317 (or (and b!4218906 b_free!123811 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217752 b_free!123799 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4218232 b_free!123807 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217757 b_free!123787 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217746 b_free!123795 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217775 b_free!123791) b_lambda!124335)))

(declare-fun b_lambda!124337 () Bool)

(assert (= b_lambda!124311 (or (and b!4218906 b_free!123811 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217752 b_free!123799 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4218232 b_free!123807 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217757 b_free!123787 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217746 b_free!123795 (= (toValue!10498 (transformation!7778 rBis!178)) (toValue!10498 (transformation!7778 (h!51823 rules!3967))))) (and b!4217775 b_free!123791) b_lambda!124337)))

(declare-fun b_lambda!124339 () Bool)

(assert (= b_lambda!124295 (or (and b!4218232 b_free!123807 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4217775 b_free!123791 (= (toValue!10498 (transformation!7778 (h!51823 rules!3967))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4217752 b_free!123799 (= (toValue!10498 (transformation!7778 (rule!10908 tBis!41))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4218906 b_free!123811 (= (toValue!10498 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toValue!10498 (transformation!7778 rBis!178)))) (and b!4217746 b_free!123795) (and b!4217757 b_free!123787 (= (toValue!10498 (transformation!7778 (rule!10908 t!8364))) (toValue!10498 (transformation!7778 rBis!178)))) b_lambda!124339)))

(declare-fun b_lambda!124341 () Bool)

(assert (= b_lambda!124309 (or (and b!4218232 b_free!123809 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 rules!3967)))) (toChars!10357 (transformation!7778 (h!51823 rules!3967))))) (and b!4217775 b_free!123793) (and b!4217746 b_free!123797 (= (toChars!10357 (transformation!7778 rBis!178)) (toChars!10357 (transformation!7778 (h!51823 rules!3967))))) (and b!4217752 b_free!123801 (= (toChars!10357 (transformation!7778 (rule!10908 tBis!41))) (toChars!10357 (transformation!7778 (h!51823 rules!3967))))) (and b!4217757 b_free!123789 (= (toChars!10357 (transformation!7778 (rule!10908 t!8364))) (toChars!10357 (transformation!7778 (h!51823 rules!3967))))) (and b!4218906 b_free!123813 (= (toChars!10357 (transformation!7778 (h!51823 (t!348546 (t!348546 rules!3967))))) (toChars!10357 (transformation!7778 (h!51823 rules!3967))))) b_lambda!124341)))

(check-sat (not b!4218949) (not b!4218834) (not b!4218759) b_and!332693 (not b!4218904) (not d!1242777) (not d!1242791) (not b!4218897) (not b!4217817) (not b!4218389) (not b!4218702) (not b!4218339) (not b!4218916) b_and!332677 (not b!4218856) (not b_next!124495) (not d!1242875) (not b!4218885) (not b!4218277) (not d!1242733) (not b_next!124515) (not tb!253419) (not b!4218931) (not b!4218312) (not b!4218484) (not bm!293094) (not b!4218822) (not b!4218309) (not b!4218893) (not b!4218902) (not b_next!124493) (not b!4218839) (not b!4218909) (not b!4218922) (not tb!253299) (not b!4218727) (not b!4218915) (not bm!293103) (not b!4218331) (not d!1242635) (not d!1242705) (not b_lambda!124329) (not d!1242547) (not b!4218954) (not b_lambda!124287) (not b_lambda!124289) (not b!4218878) (not d!1242863) (not b!4218850) (not b!4218323) (not b_lambda!124325) (not b!4218442) (not b!4218835) (not b_next!124517) (not tb!253329) b_and!332695 (not b!4218533) (not b!4218560) (not b!4218774) (not d!1242879) (not b!4218861) (not b!4218799) (not b!4218637) (not bm!293069) (not b!4218387) (not b!4218505) (not b!4218824) (not b!4218367) (not d!1242761) (not b!4218879) (not b_next!124505) (not d!1242801) (not b!4218950) (not b_lambda!124339) (not b!4218628) (not d!1242905) (not d!1242755) (not d!1242841) (not b_next!124491) (not b!4218543) (not bm!293104) (not b!4218447) (not b!4218853) (not b!4218840) (not b!4218903) (not b!4218958) (not b!4218908) (not b_lambda!124281) (not b!4218871) (not d!1242735) (not b!4218583) (not tb!253339) (not b!4218913) (not d!1242559) (not b!4218947) (not b!4218573) (not b!4218550) (not tb!253379) b_and!332713 (not b_lambda!124337) (not b!4218724) (not b!4218898) (not b!4218928) (not b!4218776) (not bm!293101) (not b!4218933) (not b!4218522) (not tb!253309) (not b!4218838) (not bm!293066) (not b!4218569) (not b!4218707) (not d!1242669) (not b!4218926) (not b!4218726) (not b!4218632) (not b!4218394) (not b_lambda!124301) (not b!4218386) (not bm!293106) (not d!1242679) (not d!1242883) (not b!4218333) (not b!4218964) tp_is_empty!22333 (not b!4218626) (not d!1242551) (not b!4218927) (not b!4218575) (not d!1242617) (not b!4218919) (not b!4218756) (not d!1242665) (not b!4218694) (not d!1242781) (not bm!293109) (not b!4218709) (not b!4218661) (not b!4218876) (not d!1242537) (not b!4218586) (not b!4218361) (not b!4218659) (not b!4218946) (not bm!293045) (not b!4218890) (not b!4218308) (not tb!253289) (not d!1242625) (not d!1242919) (not b!4218900) (not d!1242923) (not b!4218546) (not b!4218764) (not b!4218313) (not b_next!124511) (not bm!293067) (not b!4218520) (not b!4218552) (not b!4218322) (not d!1242909) (not b_lambda!124333) (not b!4218943) b_and!332675 (not d!1242787) (not b!4218462) (not bm!293042) (not b!4218951) (not b!4218883) (not b!4218396) (not b!4218965) (not b_next!124497) (not b_lambda!124283) (not b!4218356) (not bm!293068) (not b!4218924) (not d!1242891) (not tb!253439) (not b!4218963) (not d!1242799) (not b!4218357) (not b!4218390) (not d!1242927) (not bm!293105) (not b!4218266) (not b!4218653) (not bm!293099) (not d!1242877) (not d!1242675) (not d!1242611) (not d!1242619) (not b!4218516) (not b!4218884) b_and!332673 (not d!1242835) (not d!1242789) (not d!1242845) (not b!4218524) (not b!4218541) (not b!4218781) (not b!4218382) (not b!4218875) (not d!1242861) (not bm!293062) (not b!4218851) (not b!4218366) (not b!4218920) (not b!4218837) (not b!4218443) (not d!1242961) (not b!4218899) (not b!4218957) (not d!1242707) (not d!1242837) (not d!1242591) (not d!1242739) (not b_lambda!124321) (not b!4218912) (not b_lambda!124285) (not d!1242549) (not b!4218929) (not b!4218872) (not b!4218365) (not b!4218939) (not b!4218896) (not b!4218816) (not b!4218311) (not b!4218381) (not d!1242607) (not b!4218351) (not b!4218581) (not b!4218557) (not b!4218937) (not d!1242641) (not b!4218860) (not bm!293064) (not b!4218554) (not b!4218941) b_and!332699 (not b!4218636) (not bm!293065) (not b!4218330) (not d!1242785) (not b!4218762) (not b!4218342) (not tb!253319) (not b!4218894) (not b!4218880) (not b!4218935) (not b!4218881) (not b!4218567) (not b!4218337) b_and!332691 (not b!4218819) (not b!4218918) (not bm!293120) (not b!4218923) (not b!4218141) (not b!4218888) (not b!4218910) (not d!1242759) (not b!4218634) (not b!4218782) (not tb!253409) (not b!4218555) (not bm!293102) (not b!4218588) (not d!1242937) (not b!4218685) (not d!1242571) (not b!4218325) (not b!4218889) (not b!4218697) (not b!4218369) (not b!4218278) (not d!1242951) (not b!4218938) (not b!4218886) (not b!4218363) (not b_lambda!124331) (not bm!293063) (not d!1242553) (not d!1242633) (not b_next!124501) (not b!4218761) (not tb!253369) (not d!1242695) (not b!4218955) (not b!4218665) (not d!1242585) (not b!4218798) (not b!4218701) (not b!4218821) (not b!4218263) (not d!1242725) (not b_lambda!124335) (not b!4218721) (not b!4218930) (not b!4218945) (not b!4218870) (not b!4218772) (not b!4218518) (not b_lambda!124299) (not bm!293098) (not d!1242931) (not b!4218855) (not b!4218314) (not b!4217820) (not b!4218343) (not b!4218705) (not b!4218529) (not b!4218818) (not b_next!124503) (not b!4218559) (not b!4218708) (not b!4218590) (not b!4218373) (not d!1242581) b_and!332679 (not b!4218892) (not b_lambda!124319) (not b!4218953) (not b!4218334) (not bm!293107) (not d!1242535) (not b!4218341) (not b!4218914) (not b!4218370) (not b!4218514) b_and!332711 (not d!1242703) (not b!4218942) (not d!1242901) (not b!4218758) (not b!4218669) (not b!4218959) (not d!1242719) (not b!4218624) (not b!4218585) (not b!4218691) (not b!4218905) (not b!4218571) (not b!4218763) b_and!332671 (not b!4218527) (not b!4218556) (not b!4218371) (not b_lambda!124341) (not b!4218934) (not d!1242913) b_and!332697 (not b!4218547) (not d!1242673) (not b!4218549) (not d!1242859) (not d!1242545) (not b!4218504) (not bm!293100) (not b!4218901) (not d!1242757) (not b!4218725) (not b!4218722) (not d!1242731) (not d!1242629) (not bm!293041) (not b!4218857) (not b!4218570) (not b!4218545) (not b!4218451) (not d!1242589) (not b!4218859) (not b!4218568) (not d!1242541) (not b_next!124513) (not b!4218508) (not b!4218572) (not d!1242865) (not d!1242683) (not b!4218692) (not b!4218630) (not tb!253279) (not b!4218823) (not d!1242779) (not b_lambda!124291) (not b!4218526) (not b_next!124499) (not d!1242631) (not b!4218852) (not b!4218874) (not b!4218553) (not bm!293119) (not d!1242615))
(check-sat (not b_next!124493) b_and!332713 (not b_next!124511) b_and!332673 b_and!332699 b_and!332691 (not b_next!124501) (not b_next!124503) b_and!332679 b_and!332697 (not b_next!124513) (not b_next!124499) b_and!332693 b_and!332677 (not b_next!124495) (not b_next!124515) (not b_next!124517) b_and!332695 (not b_next!124491) (not b_next!124505) b_and!332675 (not b_next!124497) b_and!332671 b_and!332711)
