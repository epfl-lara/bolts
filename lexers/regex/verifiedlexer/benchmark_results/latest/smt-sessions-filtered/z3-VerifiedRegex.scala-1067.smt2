; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54220 () Bool)

(assert start!54220)

(declare-fun b!584118 () Bool)

(declare-fun b_free!16285 () Bool)

(declare-fun b_next!16301 () Bool)

(assert (=> b!584118 (= b_free!16285 (not b_next!16301))))

(declare-fun tp!182289 () Bool)

(declare-fun b_and!57539 () Bool)

(assert (=> b!584118 (= tp!182289 b_and!57539)))

(declare-fun b_free!16287 () Bool)

(declare-fun b_next!16303 () Bool)

(assert (=> b!584118 (= b_free!16287 (not b_next!16303))))

(declare-fun tp!182284 () Bool)

(declare-fun b_and!57541 () Bool)

(assert (=> b!584118 (= tp!182284 b_and!57541)))

(declare-fun b!584122 () Bool)

(declare-fun b_free!16289 () Bool)

(declare-fun b_next!16305 () Bool)

(assert (=> b!584122 (= b_free!16289 (not b_next!16305))))

(declare-fun tp!182283 () Bool)

(declare-fun b_and!57543 () Bool)

(assert (=> b!584122 (= tp!182283 b_and!57543)))

(declare-fun b_free!16291 () Bool)

(declare-fun b_next!16307 () Bool)

(assert (=> b!584122 (= b_free!16291 (not b_next!16307))))

(declare-fun tp!182281 () Bool)

(declare-fun b_and!57545 () Bool)

(assert (=> b!584122 (= tp!182281 b_and!57545)))

(declare-fun e!353099 () Bool)

(declare-fun e!353096 () Bool)

(declare-fun b!584117 () Bool)

(declare-datatypes ((C!3832 0))(
  ( (C!3833 (val!2142 Int)) )
))
(declare-datatypes ((Regex!1455 0))(
  ( (ElementMatch!1455 (c!109243 C!3832)) (Concat!2600 (regOne!3422 Regex!1455) (regTwo!3422 Regex!1455)) (EmptyExpr!1455) (Star!1455 (reg!1784 Regex!1455)) (EmptyLang!1455) (Union!1455 (regOne!3423 Regex!1455) (regTwo!3423 Regex!1455)) )
))
(declare-datatypes ((String!7468 0))(
  ( (String!7469 (value!36789 String)) )
))
(declare-datatypes ((List!5754 0))(
  ( (Nil!5744) (Cons!5744 (h!11145 (_ BitVec 16)) (t!78365 List!5754)) )
))
(declare-datatypes ((TokenValue!1145 0))(
  ( (FloatLiteralValue!2290 (text!8460 List!5754)) (TokenValueExt!1144 (__x!4188 Int)) (Broken!5725 (value!36790 List!5754)) (Object!1154) (End!1145) (Def!1145) (Underscore!1145) (Match!1145) (Else!1145) (Error!1145) (Case!1145) (If!1145) (Extends!1145) (Abstract!1145) (Class!1145) (Val!1145) (DelimiterValue!2290 (del!1205 List!5754)) (KeywordValue!1151 (value!36791 List!5754)) (CommentValue!2290 (value!36792 List!5754)) (WhitespaceValue!2290 (value!36793 List!5754)) (IndentationValue!1145 (value!36794 List!5754)) (String!7470) (Int32!1145) (Broken!5726 (value!36795 List!5754)) (Boolean!1146) (Unit!10434) (OperatorValue!1148 (op!1205 List!5754)) (IdentifierValue!2290 (value!36796 List!5754)) (IdentifierValue!2291 (value!36797 List!5754)) (WhitespaceValue!2291 (value!36798 List!5754)) (True!2290) (False!2290) (Broken!5727 (value!36799 List!5754)) (Broken!5728 (value!36800 List!5754)) (True!2291) (RightBrace!1145) (RightBracket!1145) (Colon!1145) (Null!1145) (Comma!1145) (LeftBracket!1145) (False!2291) (LeftBrace!1145) (ImaginaryLiteralValue!1145 (text!8461 List!5754)) (StringLiteralValue!3435 (value!36801 List!5754)) (EOFValue!1145 (value!36802 List!5754)) (IdentValue!1145 (value!36803 List!5754)) (DelimiterValue!2291 (value!36804 List!5754)) (DedentValue!1145 (value!36805 List!5754)) (NewLineValue!1145 (value!36806 List!5754)) (IntegerValue!3435 (value!36807 (_ BitVec 32)) (text!8462 List!5754)) (IntegerValue!3436 (value!36808 Int) (text!8463 List!5754)) (Times!1145) (Or!1145) (Equal!1145) (Minus!1145) (Broken!5729 (value!36809 List!5754)) (And!1145) (Div!1145) (LessEqual!1145) (Mod!1145) (Concat!2601) (Not!1145) (Plus!1145) (SpaceValue!1145 (value!36810 List!5754)) (IntegerValue!3437 (value!36811 Int) (text!8464 List!5754)) (StringLiteralValue!3436 (text!8465 List!5754)) (FloatLiteralValue!2291 (text!8466 List!5754)) (BytesLiteralValue!1145 (value!36812 List!5754)) (CommentValue!2291 (value!36813 List!5754)) (StringLiteralValue!3437 (value!36814 List!5754)) (ErrorTokenValue!1145 (msg!1206 List!5754)) )
))
(declare-datatypes ((List!5755 0))(
  ( (Nil!5745) (Cons!5745 (h!11146 C!3832) (t!78366 List!5755)) )
))
(declare-datatypes ((IArray!3677 0))(
  ( (IArray!3678 (innerList!1896 List!5755)) )
))
(declare-datatypes ((Conc!1838 0))(
  ( (Node!1838 (left!4683 Conc!1838) (right!5013 Conc!1838) (csize!3906 Int) (cheight!2049 Int)) (Leaf!2906 (xs!4475 IArray!3677) (csize!3907 Int)) (Empty!1838) )
))
(declare-datatypes ((BalanceConc!3684 0))(
  ( (BalanceConc!3685 (c!109244 Conc!1838)) )
))
(declare-datatypes ((TokenValueInjection!2058 0))(
  ( (TokenValueInjection!2059 (toValue!1992 Int) (toChars!1851 Int)) )
))
(declare-datatypes ((Rule!2042 0))(
  ( (Rule!2043 (regex!1121 Regex!1455) (tag!1383 String!7468) (isSeparator!1121 Bool) (transformation!1121 TokenValueInjection!2058)) )
))
(declare-datatypes ((List!5756 0))(
  ( (Nil!5746) (Cons!5746 (h!11147 Rule!2042) (t!78367 List!5756)) )
))
(declare-fun rules!3103 () List!5756)

(declare-fun tp!182288 () Bool)

(declare-fun inv!7243 (String!7468) Bool)

(declare-fun inv!7246 (TokenValueInjection!2058) Bool)

(assert (=> b!584117 (= e!353096 (and tp!182288 (inv!7243 (tag!1383 (h!11147 rules!3103))) (inv!7246 (transformation!1121 (h!11147 rules!3103))) e!353099))))

(declare-fun e!353095 () Bool)

(assert (=> b!584118 (= e!353095 (and tp!182289 tp!182284))))

(declare-fun b!584119 () Bool)

(declare-fun e!353103 () Bool)

(declare-fun tp!182290 () Bool)

(assert (=> b!584119 (= e!353103 (and e!353096 tp!182290))))

(declare-fun b!584120 () Bool)

(declare-fun e!353100 () Bool)

(declare-fun tp_is_empty!3265 () Bool)

(declare-fun tp!182287 () Bool)

(assert (=> b!584120 (= e!353100 (and tp_is_empty!3265 tp!182287))))

(declare-fun b!584121 () Bool)

(declare-fun e!353097 () Bool)

(declare-fun e!353093 () Bool)

(assert (=> b!584121 (= e!353097 e!353093)))

(declare-fun res!251610 () Bool)

(assert (=> b!584121 (=> (not res!251610) (not e!353093))))

(declare-datatypes ((Token!1978 0))(
  ( (Token!1979 (value!36815 TokenValue!1145) (rule!1881 Rule!2042) (size!4566 Int) (originalCharacters!1160 List!5755)) )
))
(declare-datatypes ((tuple2!6716 0))(
  ( (tuple2!6717 (_1!3622 Token!1978) (_2!3622 List!5755)) )
))
(declare-datatypes ((Option!1472 0))(
  ( (None!1471) (Some!1471 (v!16342 tuple2!6716)) )
))
(declare-fun lt!247788 () Option!1472)

(get-info :version)

(assert (=> b!584121 (= res!251610 ((_ is Some!1471) lt!247788))))

(declare-datatypes ((LexerInterface!1007 0))(
  ( (LexerInterfaceExt!1004 (__x!4189 Int)) (Lexer!1005) )
))
(declare-fun thiss!22590 () LexerInterface!1007)

(declare-fun input!2705 () List!5755)

(declare-fun maxPrefix!705 (LexerInterface!1007 List!5756 List!5755) Option!1472)

(assert (=> b!584121 (= lt!247788 (maxPrefix!705 thiss!22590 rules!3103 input!2705))))

(assert (=> b!584122 (= e!353099 (and tp!182283 tp!182281))))

(declare-fun b!584123 () Bool)

(declare-fun e!353106 () Bool)

(declare-fun tp!182285 () Bool)

(assert (=> b!584123 (= e!353106 (and tp_is_empty!3265 tp!182285))))

(declare-fun b!584124 () Bool)

(declare-fun res!251608 () Bool)

(declare-fun e!353105 () Bool)

(assert (=> b!584124 (=> (not res!251608) (not e!353105))))

(declare-fun rulesInvariant!970 (LexerInterface!1007 List!5756) Bool)

(assert (=> b!584124 (= res!251608 (rulesInvariant!970 thiss!22590 rules!3103))))

(declare-fun token!491 () Token!1978)

(declare-fun tp!182282 () Bool)

(declare-fun e!353102 () Bool)

(declare-fun b!584125 () Bool)

(assert (=> b!584125 (= e!353102 (and tp!182282 (inv!7243 (tag!1383 (rule!1881 token!491))) (inv!7246 (transformation!1121 (rule!1881 token!491))) e!353095))))

(declare-fun b!584126 () Bool)

(declare-datatypes ((Unit!10435 0))(
  ( (Unit!10436) )
))
(declare-fun e!353109 () Unit!10435)

(declare-fun Unit!10437 () Unit!10435)

(assert (=> b!584126 (= e!353109 Unit!10437)))

(declare-fun b!584127 () Bool)

(declare-fun lt!247787 () List!5755)

(declare-fun isPrefix!749 (List!5755 List!5755) Bool)

(assert (=> b!584127 (= e!353093 (not (isPrefix!749 lt!247787 input!2705)))))

(declare-fun lt!247794 () List!5755)

(declare-fun getSuffix!266 (List!5755 List!5755) List!5755)

(assert (=> b!584127 (= lt!247794 (getSuffix!266 input!2705 lt!247787))))

(declare-fun ++!1609 (List!5755 List!5755) List!5755)

(assert (=> b!584127 (isPrefix!749 lt!247787 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))))

(declare-fun lt!247791 () Unit!10435)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!594 (List!5755 List!5755) Unit!10435)

(assert (=> b!584127 (= lt!247791 (lemmaConcatTwoListThenFirstIsPrefix!594 lt!247787 (_2!3622 (v!16342 lt!247788))))))

(declare-fun lt!247796 () Unit!10435)

(declare-fun lemmaCharactersSize!180 (Token!1978) Unit!10435)

(assert (=> b!584127 (= lt!247796 (lemmaCharactersSize!180 token!491))))

(declare-fun lt!247795 () Unit!10435)

(assert (=> b!584127 (= lt!247795 (lemmaCharactersSize!180 (_1!3622 (v!16342 lt!247788))))))

(declare-fun lt!247792 () Unit!10435)

(assert (=> b!584127 (= lt!247792 e!353109)))

(declare-fun c!109242 () Bool)

(declare-fun lt!247793 () List!5755)

(declare-fun size!4567 (List!5755) Int)

(assert (=> b!584127 (= c!109242 (> (size!4567 lt!247787) (size!4567 lt!247793)))))

(declare-fun list!2392 (BalanceConc!3684) List!5755)

(declare-fun charsOf!750 (Token!1978) BalanceConc!3684)

(assert (=> b!584127 (= lt!247787 (list!2392 (charsOf!750 (_1!3622 (v!16342 lt!247788)))))))

(assert (=> b!584127 (= lt!247788 (Some!1471 (v!16342 lt!247788)))))

(declare-fun suffix!1342 () List!5755)

(declare-fun lt!247798 () Unit!10435)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!194 (List!5755 List!5755 List!5755 List!5755) Unit!10435)

(assert (=> b!584127 (= lt!247798 (lemmaConcatSameAndSameSizesThenSameLists!194 lt!247793 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!584128 () Bool)

(declare-fun res!251606 () Bool)

(assert (=> b!584128 (=> (not res!251606) (not e!353093))))

(declare-fun lt!247797 () List!5755)

(assert (=> b!584128 (= res!251606 (= (++!1609 lt!247793 suffix!1342) lt!247797))))

(declare-fun b!584129 () Bool)

(declare-fun e!353094 () Bool)

(assert (=> b!584129 (= e!353105 e!353094)))

(declare-fun res!251607 () Bool)

(assert (=> b!584129 (=> (not res!251607) (not e!353094))))

(assert (=> b!584129 (= res!251607 (= lt!247793 input!2705))))

(assert (=> b!584129 (= lt!247793 (list!2392 (charsOf!750 token!491)))))

(declare-fun b!584130 () Bool)

(declare-fun res!251609 () Bool)

(assert (=> b!584130 (=> (not res!251609) (not e!353105))))

(declare-fun isEmpty!4147 (List!5755) Bool)

(assert (=> b!584130 (= res!251609 (not (isEmpty!4147 input!2705)))))

(declare-fun b!584131 () Bool)

(declare-fun Unit!10438 () Unit!10435)

(assert (=> b!584131 (= e!353109 Unit!10438)))

(assert (=> b!584131 false))

(declare-fun b!584132 () Bool)

(declare-fun e!353108 () Bool)

(assert (=> b!584132 (= e!353094 e!353108)))

(declare-fun res!251613 () Bool)

(assert (=> b!584132 (=> (not res!251613) (not e!353108))))

(declare-fun lt!247789 () Option!1472)

(declare-fun isDefined!1283 (Option!1472) Bool)

(assert (=> b!584132 (= res!251613 (isDefined!1283 lt!247789))))

(assert (=> b!584132 (= lt!247789 (maxPrefix!705 thiss!22590 rules!3103 lt!247797))))

(assert (=> b!584132 (= lt!247797 (++!1609 input!2705 suffix!1342))))

(declare-fun res!251605 () Bool)

(assert (=> start!54220 (=> (not res!251605) (not e!353105))))

(assert (=> start!54220 (= res!251605 ((_ is Lexer!1005) thiss!22590))))

(assert (=> start!54220 e!353105))

(assert (=> start!54220 e!353106))

(assert (=> start!54220 e!353103))

(declare-fun e!353101 () Bool)

(declare-fun inv!7247 (Token!1978) Bool)

(assert (=> start!54220 (and (inv!7247 token!491) e!353101)))

(assert (=> start!54220 true))

(assert (=> start!54220 e!353100))

(declare-fun b!584133 () Bool)

(declare-fun res!251611 () Bool)

(assert (=> b!584133 (=> (not res!251611) (not e!353105))))

(declare-fun isEmpty!4148 (List!5756) Bool)

(assert (=> b!584133 (= res!251611 (not (isEmpty!4148 rules!3103)))))

(declare-fun b!584134 () Bool)

(declare-fun tp!182286 () Bool)

(declare-fun inv!21 (TokenValue!1145) Bool)

(assert (=> b!584134 (= e!353101 (and (inv!21 (value!36815 token!491)) e!353102 tp!182286))))

(declare-fun b!584135 () Bool)

(assert (=> b!584135 (= e!353108 e!353097)))

(declare-fun res!251612 () Bool)

(assert (=> b!584135 (=> (not res!251612) (not e!353097))))

(declare-fun lt!247790 () tuple2!6716)

(assert (=> b!584135 (= res!251612 (and (= (_1!3622 lt!247790) token!491) (= (_2!3622 lt!247790) suffix!1342)))))

(declare-fun get!2196 (Option!1472) tuple2!6716)

(assert (=> b!584135 (= lt!247790 (get!2196 lt!247789))))

(assert (= (and start!54220 res!251605) b!584133))

(assert (= (and b!584133 res!251611) b!584124))

(assert (= (and b!584124 res!251608) b!584130))

(assert (= (and b!584130 res!251609) b!584129))

(assert (= (and b!584129 res!251607) b!584132))

(assert (= (and b!584132 res!251613) b!584135))

(assert (= (and b!584135 res!251612) b!584121))

(assert (= (and b!584121 res!251610) b!584128))

(assert (= (and b!584128 res!251606) b!584127))

(assert (= (and b!584127 c!109242) b!584131))

(assert (= (and b!584127 (not c!109242)) b!584126))

(assert (= (and start!54220 ((_ is Cons!5745) suffix!1342)) b!584123))

(assert (= b!584117 b!584122))

(assert (= b!584119 b!584117))

(assert (= (and start!54220 ((_ is Cons!5746) rules!3103)) b!584119))

(assert (= b!584125 b!584118))

(assert (= b!584134 b!584125))

(assert (= start!54220 b!584134))

(assert (= (and start!54220 ((_ is Cons!5745) input!2705)) b!584120))

(declare-fun m!843743 () Bool)

(assert (=> b!584134 m!843743))

(declare-fun m!843745 () Bool)

(assert (=> b!584124 m!843745))

(declare-fun m!843747 () Bool)

(assert (=> start!54220 m!843747))

(declare-fun m!843749 () Bool)

(assert (=> b!584129 m!843749))

(assert (=> b!584129 m!843749))

(declare-fun m!843751 () Bool)

(assert (=> b!584129 m!843751))

(declare-fun m!843753 () Bool)

(assert (=> b!584121 m!843753))

(declare-fun m!843755 () Bool)

(assert (=> b!584117 m!843755))

(declare-fun m!843757 () Bool)

(assert (=> b!584117 m!843757))

(declare-fun m!843759 () Bool)

(assert (=> b!584135 m!843759))

(declare-fun m!843761 () Bool)

(assert (=> b!584128 m!843761))

(declare-fun m!843763 () Bool)

(assert (=> b!584125 m!843763))

(declare-fun m!843765 () Bool)

(assert (=> b!584125 m!843765))

(declare-fun m!843767 () Bool)

(assert (=> b!584130 m!843767))

(declare-fun m!843769 () Bool)

(assert (=> b!584132 m!843769))

(declare-fun m!843771 () Bool)

(assert (=> b!584132 m!843771))

(declare-fun m!843773 () Bool)

(assert (=> b!584132 m!843773))

(declare-fun m!843775 () Bool)

(assert (=> b!584127 m!843775))

(declare-fun m!843777 () Bool)

(assert (=> b!584127 m!843777))

(assert (=> b!584127 m!843775))

(declare-fun m!843779 () Bool)

(assert (=> b!584127 m!843779))

(declare-fun m!843781 () Bool)

(assert (=> b!584127 m!843781))

(declare-fun m!843783 () Bool)

(assert (=> b!584127 m!843783))

(declare-fun m!843785 () Bool)

(assert (=> b!584127 m!843785))

(declare-fun m!843787 () Bool)

(assert (=> b!584127 m!843787))

(declare-fun m!843789 () Bool)

(assert (=> b!584127 m!843789))

(assert (=> b!584127 m!843785))

(declare-fun m!843791 () Bool)

(assert (=> b!584127 m!843791))

(declare-fun m!843793 () Bool)

(assert (=> b!584127 m!843793))

(declare-fun m!843795 () Bool)

(assert (=> b!584127 m!843795))

(declare-fun m!843797 () Bool)

(assert (=> b!584127 m!843797))

(declare-fun m!843799 () Bool)

(assert (=> b!584133 m!843799))

(check-sat (not b!584125) b_and!57545 b_and!57543 (not b!584121) (not b!584129) (not b!584123) (not b!584119) b_and!57539 tp_is_empty!3265 (not b!584124) (not b!584135) (not b_next!16301) (not b!584130) (not b!584134) (not b!584120) (not start!54220) (not b!584127) (not b!584128) (not b!584132) (not b!584133) (not b_next!16305) (not b_next!16303) b_and!57541 (not b_next!16307) (not b!584117))
(check-sat (not b_next!16301) b_and!57545 b_and!57543 (not b_next!16305) (not b_next!16307) b_and!57539 (not b_next!16303) b_and!57541)
(get-model)

(declare-fun d!205340 () Bool)

(declare-fun res!251620 () Bool)

(declare-fun e!353112 () Bool)

(assert (=> d!205340 (=> (not res!251620) (not e!353112))))

(declare-fun rulesValid!398 (LexerInterface!1007 List!5756) Bool)

(assert (=> d!205340 (= res!251620 (rulesValid!398 thiss!22590 rules!3103))))

(assert (=> d!205340 (= (rulesInvariant!970 thiss!22590 rules!3103) e!353112)))

(declare-fun b!584138 () Bool)

(declare-datatypes ((List!5757 0))(
  ( (Nil!5747) (Cons!5747 (h!11148 String!7468) (t!78384 List!5757)) )
))
(declare-fun noDuplicateTag!398 (LexerInterface!1007 List!5756 List!5757) Bool)

(assert (=> b!584138 (= e!353112 (noDuplicateTag!398 thiss!22590 rules!3103 Nil!5747))))

(assert (= (and d!205340 res!251620) b!584138))

(declare-fun m!843801 () Bool)

(assert (=> d!205340 m!843801))

(declare-fun m!843803 () Bool)

(assert (=> b!584138 m!843803))

(assert (=> b!584124 d!205340))

(declare-fun d!205342 () Bool)

(assert (=> d!205342 (= (get!2196 lt!247789) (v!16342 lt!247789))))

(assert (=> b!584135 d!205342))

(declare-fun d!205344 () Bool)

(assert (=> d!205344 (= (inv!7243 (tag!1383 (rule!1881 token!491))) (= (mod (str.len (value!36789 (tag!1383 (rule!1881 token!491)))) 2) 0))))

(assert (=> b!584125 d!205344))

(declare-fun d!205346 () Bool)

(declare-fun res!251623 () Bool)

(declare-fun e!353115 () Bool)

(assert (=> d!205346 (=> (not res!251623) (not e!353115))))

(declare-fun semiInverseModEq!434 (Int Int) Bool)

(assert (=> d!205346 (= res!251623 (semiInverseModEq!434 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (rule!1881 token!491)))))))

(assert (=> d!205346 (= (inv!7246 (transformation!1121 (rule!1881 token!491))) e!353115)))

(declare-fun b!584141 () Bool)

(declare-fun equivClasses!417 (Int Int) Bool)

(assert (=> b!584141 (= e!353115 (equivClasses!417 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (rule!1881 token!491)))))))

(assert (= (and d!205346 res!251623) b!584141))

(declare-fun m!843805 () Bool)

(assert (=> d!205346 m!843805))

(declare-fun m!843807 () Bool)

(assert (=> b!584141 m!843807))

(assert (=> b!584125 d!205346))

(declare-fun d!205348 () Bool)

(assert (=> d!205348 (= (size!4566 (_1!3622 (v!16342 lt!247788))) (size!4567 (originalCharacters!1160 (_1!3622 (v!16342 lt!247788)))))))

(declare-fun Unit!10439 () Unit!10435)

(assert (=> d!205348 (= (lemmaCharactersSize!180 (_1!3622 (v!16342 lt!247788))) Unit!10439)))

(declare-fun bs!69940 () Bool)

(assert (= bs!69940 d!205348))

(declare-fun m!843809 () Bool)

(assert (=> bs!69940 m!843809))

(assert (=> b!584127 d!205348))

(declare-fun d!205350 () Bool)

(declare-fun lt!247801 () Int)

(assert (=> d!205350 (>= lt!247801 0)))

(declare-fun e!353118 () Int)

(assert (=> d!205350 (= lt!247801 e!353118)))

(declare-fun c!109247 () Bool)

(assert (=> d!205350 (= c!109247 ((_ is Nil!5745) lt!247787))))

(assert (=> d!205350 (= (size!4567 lt!247787) lt!247801)))

(declare-fun b!584146 () Bool)

(assert (=> b!584146 (= e!353118 0)))

(declare-fun b!584147 () Bool)

(assert (=> b!584147 (= e!353118 (+ 1 (size!4567 (t!78366 lt!247787))))))

(assert (= (and d!205350 c!109247) b!584146))

(assert (= (and d!205350 (not c!109247)) b!584147))

(declare-fun m!843811 () Bool)

(assert (=> b!584147 m!843811))

(assert (=> b!584127 d!205350))

(declare-fun b!584159 () Bool)

(declare-fun e!353127 () Bool)

(assert (=> b!584159 (= e!353127 (>= (size!4567 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))) (size!4567 lt!247787)))))

(declare-fun b!584158 () Bool)

(declare-fun e!353126 () Bool)

(declare-fun tail!762 (List!5755) List!5755)

(assert (=> b!584158 (= e!353126 (isPrefix!749 (tail!762 lt!247787) (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))))))

(declare-fun b!584156 () Bool)

(declare-fun e!353125 () Bool)

(assert (=> b!584156 (= e!353125 e!353126)))

(declare-fun res!251635 () Bool)

(assert (=> b!584156 (=> (not res!251635) (not e!353126))))

(assert (=> b!584156 (= res!251635 (not ((_ is Nil!5745) (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))))))

(declare-fun b!584157 () Bool)

(declare-fun res!251638 () Bool)

(assert (=> b!584157 (=> (not res!251638) (not e!353126))))

(declare-fun head!1233 (List!5755) C!3832)

(assert (=> b!584157 (= res!251638 (= (head!1233 lt!247787) (head!1233 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))))))

(declare-fun d!205352 () Bool)

(assert (=> d!205352 e!353127))

(declare-fun res!251636 () Bool)

(assert (=> d!205352 (=> res!251636 e!353127)))

(declare-fun lt!247804 () Bool)

(assert (=> d!205352 (= res!251636 (not lt!247804))))

(assert (=> d!205352 (= lt!247804 e!353125)))

(declare-fun res!251637 () Bool)

(assert (=> d!205352 (=> res!251637 e!353125)))

(assert (=> d!205352 (= res!251637 ((_ is Nil!5745) lt!247787))))

(assert (=> d!205352 (= (isPrefix!749 lt!247787 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))) lt!247804)))

(assert (= (and d!205352 (not res!251637)) b!584156))

(assert (= (and b!584156 res!251635) b!584157))

(assert (= (and b!584157 res!251638) b!584158))

(assert (= (and d!205352 (not res!251636)) b!584159))

(assert (=> b!584159 m!843785))

(declare-fun m!843813 () Bool)

(assert (=> b!584159 m!843813))

(assert (=> b!584159 m!843795))

(declare-fun m!843815 () Bool)

(assert (=> b!584158 m!843815))

(assert (=> b!584158 m!843785))

(declare-fun m!843817 () Bool)

(assert (=> b!584158 m!843817))

(assert (=> b!584158 m!843815))

(assert (=> b!584158 m!843817))

(declare-fun m!843819 () Bool)

(assert (=> b!584158 m!843819))

(declare-fun m!843821 () Bool)

(assert (=> b!584157 m!843821))

(assert (=> b!584157 m!843785))

(declare-fun m!843823 () Bool)

(assert (=> b!584157 m!843823))

(assert (=> b!584127 d!205352))

(declare-fun d!205354 () Bool)

(assert (=> d!205354 (and (= lt!247793 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!247807 () Unit!10435)

(declare-fun choose!4196 (List!5755 List!5755 List!5755 List!5755) Unit!10435)

(assert (=> d!205354 (= lt!247807 (choose!4196 lt!247793 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!205354 (= (++!1609 lt!247793 suffix!1342) (++!1609 input!2705 suffix!1342))))

(assert (=> d!205354 (= (lemmaConcatSameAndSameSizesThenSameLists!194 lt!247793 suffix!1342 input!2705 suffix!1342) lt!247807)))

(declare-fun bs!69941 () Bool)

(assert (= bs!69941 d!205354))

(declare-fun m!843825 () Bool)

(assert (=> bs!69941 m!843825))

(assert (=> bs!69941 m!843761))

(assert (=> bs!69941 m!843773))

(assert (=> b!584127 d!205354))

(declare-fun b!584163 () Bool)

(declare-fun e!353130 () Bool)

(assert (=> b!584163 (= e!353130 (>= (size!4567 input!2705) (size!4567 lt!247787)))))

(declare-fun b!584162 () Bool)

(declare-fun e!353129 () Bool)

(assert (=> b!584162 (= e!353129 (isPrefix!749 (tail!762 lt!247787) (tail!762 input!2705)))))

(declare-fun b!584160 () Bool)

(declare-fun e!353128 () Bool)

(assert (=> b!584160 (= e!353128 e!353129)))

(declare-fun res!251639 () Bool)

(assert (=> b!584160 (=> (not res!251639) (not e!353129))))

(assert (=> b!584160 (= res!251639 (not ((_ is Nil!5745) input!2705)))))

(declare-fun b!584161 () Bool)

(declare-fun res!251642 () Bool)

(assert (=> b!584161 (=> (not res!251642) (not e!353129))))

(assert (=> b!584161 (= res!251642 (= (head!1233 lt!247787) (head!1233 input!2705)))))

(declare-fun d!205358 () Bool)

(assert (=> d!205358 e!353130))

(declare-fun res!251640 () Bool)

(assert (=> d!205358 (=> res!251640 e!353130)))

(declare-fun lt!247808 () Bool)

(assert (=> d!205358 (= res!251640 (not lt!247808))))

(assert (=> d!205358 (= lt!247808 e!353128)))

(declare-fun res!251641 () Bool)

(assert (=> d!205358 (=> res!251641 e!353128)))

(assert (=> d!205358 (= res!251641 ((_ is Nil!5745) lt!247787))))

(assert (=> d!205358 (= (isPrefix!749 lt!247787 input!2705) lt!247808)))

(assert (= (and d!205358 (not res!251641)) b!584160))

(assert (= (and b!584160 res!251639) b!584161))

(assert (= (and b!584161 res!251642) b!584162))

(assert (= (and d!205358 (not res!251640)) b!584163))

(declare-fun m!843827 () Bool)

(assert (=> b!584163 m!843827))

(assert (=> b!584163 m!843795))

(assert (=> b!584162 m!843815))

(declare-fun m!843829 () Bool)

(assert (=> b!584162 m!843829))

(assert (=> b!584162 m!843815))

(assert (=> b!584162 m!843829))

(declare-fun m!843831 () Bool)

(assert (=> b!584162 m!843831))

(assert (=> b!584161 m!843821))

(declare-fun m!843833 () Bool)

(assert (=> b!584161 m!843833))

(assert (=> b!584127 d!205358))

(declare-fun d!205360 () Bool)

(declare-fun lt!247811 () BalanceConc!3684)

(assert (=> d!205360 (= (list!2392 lt!247811) (originalCharacters!1160 (_1!3622 (v!16342 lt!247788))))))

(declare-fun dynLambda!3346 (Int TokenValue!1145) BalanceConc!3684)

(assert (=> d!205360 (= lt!247811 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))))

(assert (=> d!205360 (= (charsOf!750 (_1!3622 (v!16342 lt!247788))) lt!247811)))

(declare-fun b_lambda!23017 () Bool)

(assert (=> (not b_lambda!23017) (not d!205360)))

(declare-fun tb!51159 () Bool)

(declare-fun t!78369 () Bool)

(assert (=> (and b!584118 (= (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788)))))) t!78369) tb!51159))

(declare-fun b!584168 () Bool)

(declare-fun e!353133 () Bool)

(declare-fun tp!182293 () Bool)

(declare-fun inv!7248 (Conc!1838) Bool)

(assert (=> b!584168 (= e!353133 (and (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))) tp!182293))))

(declare-fun result!57278 () Bool)

(declare-fun inv!7249 (BalanceConc!3684) Bool)

(assert (=> tb!51159 (= result!57278 (and (inv!7249 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))) e!353133))))

(assert (= tb!51159 b!584168))

(declare-fun m!843835 () Bool)

(assert (=> b!584168 m!843835))

(declare-fun m!843837 () Bool)

(assert (=> tb!51159 m!843837))

(assert (=> d!205360 t!78369))

(declare-fun b_and!57547 () Bool)

(assert (= b_and!57541 (and (=> t!78369 result!57278) b_and!57547)))

(declare-fun tb!51161 () Bool)

(declare-fun t!78371 () Bool)

(assert (=> (and b!584122 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788)))))) t!78371) tb!51161))

(declare-fun result!57282 () Bool)

(assert (= result!57282 result!57278))

(assert (=> d!205360 t!78371))

(declare-fun b_and!57549 () Bool)

(assert (= b_and!57545 (and (=> t!78371 result!57282) b_and!57549)))

(declare-fun m!843839 () Bool)

(assert (=> d!205360 m!843839))

(declare-fun m!843841 () Bool)

(assert (=> d!205360 m!843841))

(assert (=> b!584127 d!205360))

(declare-fun b!584186 () Bool)

(declare-fun e!353142 () List!5755)

(assert (=> b!584186 (= e!353142 (Cons!5745 (h!11146 lt!247787) (++!1609 (t!78366 lt!247787) (_2!3622 (v!16342 lt!247788)))))))

(declare-fun e!353143 () Bool)

(declare-fun lt!247816 () List!5755)

(declare-fun b!584188 () Bool)

(assert (=> b!584188 (= e!353143 (or (not (= (_2!3622 (v!16342 lt!247788)) Nil!5745)) (= lt!247816 lt!247787)))))

(declare-fun b!584187 () Bool)

(declare-fun res!251652 () Bool)

(assert (=> b!584187 (=> (not res!251652) (not e!353143))))

(assert (=> b!584187 (= res!251652 (= (size!4567 lt!247816) (+ (size!4567 lt!247787) (size!4567 (_2!3622 (v!16342 lt!247788))))))))

(declare-fun b!584185 () Bool)

(assert (=> b!584185 (= e!353142 (_2!3622 (v!16342 lt!247788)))))

(declare-fun d!205362 () Bool)

(assert (=> d!205362 e!353143))

(declare-fun res!251651 () Bool)

(assert (=> d!205362 (=> (not res!251651) (not e!353143))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1020 (List!5755) (InoxSet C!3832))

(assert (=> d!205362 (= res!251651 (= (content!1020 lt!247816) ((_ map or) (content!1020 lt!247787) (content!1020 (_2!3622 (v!16342 lt!247788))))))))

(assert (=> d!205362 (= lt!247816 e!353142)))

(declare-fun c!109252 () Bool)

(assert (=> d!205362 (= c!109252 ((_ is Nil!5745) lt!247787))))

(assert (=> d!205362 (= (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))) lt!247816)))

(assert (= (and d!205362 c!109252) b!584185))

(assert (= (and d!205362 (not c!109252)) b!584186))

(assert (= (and d!205362 res!251651) b!584187))

(assert (= (and b!584187 res!251652) b!584188))

(declare-fun m!843843 () Bool)

(assert (=> b!584186 m!843843))

(declare-fun m!843845 () Bool)

(assert (=> b!584187 m!843845))

(assert (=> b!584187 m!843795))

(declare-fun m!843847 () Bool)

(assert (=> b!584187 m!843847))

(declare-fun m!843849 () Bool)

(assert (=> d!205362 m!843849))

(declare-fun m!843851 () Bool)

(assert (=> d!205362 m!843851))

(declare-fun m!843853 () Bool)

(assert (=> d!205362 m!843853))

(assert (=> b!584127 d!205362))

(declare-fun d!205364 () Bool)

(declare-fun list!2393 (Conc!1838) List!5755)

(assert (=> d!205364 (= (list!2392 (charsOf!750 (_1!3622 (v!16342 lt!247788)))) (list!2393 (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788))))))))

(declare-fun bs!69942 () Bool)

(assert (= bs!69942 d!205364))

(declare-fun m!843855 () Bool)

(assert (=> bs!69942 m!843855))

(assert (=> b!584127 d!205364))

(declare-fun d!205366 () Bool)

(declare-fun lt!247817 () Int)

(assert (=> d!205366 (>= lt!247817 0)))

(declare-fun e!353144 () Int)

(assert (=> d!205366 (= lt!247817 e!353144)))

(declare-fun c!109253 () Bool)

(assert (=> d!205366 (= c!109253 ((_ is Nil!5745) lt!247793))))

(assert (=> d!205366 (= (size!4567 lt!247793) lt!247817)))

(declare-fun b!584189 () Bool)

(assert (=> b!584189 (= e!353144 0)))

(declare-fun b!584190 () Bool)

(assert (=> b!584190 (= e!353144 (+ 1 (size!4567 (t!78366 lt!247793))))))

(assert (= (and d!205366 c!109253) b!584189))

(assert (= (and d!205366 (not c!109253)) b!584190))

(declare-fun m!843857 () Bool)

(assert (=> b!584190 m!843857))

(assert (=> b!584127 d!205366))

(declare-fun d!205368 () Bool)

(assert (=> d!205368 (= (size!4566 token!491) (size!4567 (originalCharacters!1160 token!491)))))

(declare-fun Unit!10440 () Unit!10435)

(assert (=> d!205368 (= (lemmaCharactersSize!180 token!491) Unit!10440)))

(declare-fun bs!69943 () Bool)

(assert (= bs!69943 d!205368))

(declare-fun m!843859 () Bool)

(assert (=> bs!69943 m!843859))

(assert (=> b!584127 d!205368))

(declare-fun d!205370 () Bool)

(assert (=> d!205370 (isPrefix!749 lt!247787 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))))

(declare-fun lt!247821 () Unit!10435)

(declare-fun choose!4197 (List!5755 List!5755) Unit!10435)

(assert (=> d!205370 (= lt!247821 (choose!4197 lt!247787 (_2!3622 (v!16342 lt!247788))))))

(assert (=> d!205370 (= (lemmaConcatTwoListThenFirstIsPrefix!594 lt!247787 (_2!3622 (v!16342 lt!247788))) lt!247821)))

(declare-fun bs!69944 () Bool)

(assert (= bs!69944 d!205370))

(assert (=> bs!69944 m!843785))

(assert (=> bs!69944 m!843785))

(assert (=> bs!69944 m!843791))

(declare-fun m!843873 () Bool)

(assert (=> bs!69944 m!843873))

(assert (=> b!584127 d!205370))

(declare-fun d!205374 () Bool)

(declare-fun lt!247824 () List!5755)

(assert (=> d!205374 (= (++!1609 lt!247787 lt!247824) input!2705)))

(declare-fun e!353149 () List!5755)

(assert (=> d!205374 (= lt!247824 e!353149)))

(declare-fun c!109257 () Bool)

(assert (=> d!205374 (= c!109257 ((_ is Cons!5745) lt!247787))))

(assert (=> d!205374 (>= (size!4567 input!2705) (size!4567 lt!247787))))

(assert (=> d!205374 (= (getSuffix!266 input!2705 lt!247787) lt!247824)))

(declare-fun b!584199 () Bool)

(assert (=> b!584199 (= e!353149 (getSuffix!266 (tail!762 input!2705) (t!78366 lt!247787)))))

(declare-fun b!584200 () Bool)

(assert (=> b!584200 (= e!353149 input!2705)))

(assert (= (and d!205374 c!109257) b!584199))

(assert (= (and d!205374 (not c!109257)) b!584200))

(declare-fun m!843875 () Bool)

(assert (=> d!205374 m!843875))

(assert (=> d!205374 m!843827))

(assert (=> d!205374 m!843795))

(assert (=> b!584199 m!843829))

(assert (=> b!584199 m!843829))

(declare-fun m!843877 () Bool)

(assert (=> b!584199 m!843877))

(assert (=> b!584127 d!205374))

(declare-fun b!584202 () Bool)

(declare-fun e!353150 () List!5755)

(assert (=> b!584202 (= e!353150 (Cons!5745 (h!11146 lt!247793) (++!1609 (t!78366 lt!247793) suffix!1342)))))

(declare-fun lt!247825 () List!5755)

(declare-fun e!353151 () Bool)

(declare-fun b!584204 () Bool)

(assert (=> b!584204 (= e!353151 (or (not (= suffix!1342 Nil!5745)) (= lt!247825 lt!247793)))))

(declare-fun b!584203 () Bool)

(declare-fun res!251656 () Bool)

(assert (=> b!584203 (=> (not res!251656) (not e!353151))))

(assert (=> b!584203 (= res!251656 (= (size!4567 lt!247825) (+ (size!4567 lt!247793) (size!4567 suffix!1342))))))

(declare-fun b!584201 () Bool)

(assert (=> b!584201 (= e!353150 suffix!1342)))

(declare-fun d!205376 () Bool)

(assert (=> d!205376 e!353151))

(declare-fun res!251655 () Bool)

(assert (=> d!205376 (=> (not res!251655) (not e!353151))))

(assert (=> d!205376 (= res!251655 (= (content!1020 lt!247825) ((_ map or) (content!1020 lt!247793) (content!1020 suffix!1342))))))

(assert (=> d!205376 (= lt!247825 e!353150)))

(declare-fun c!109258 () Bool)

(assert (=> d!205376 (= c!109258 ((_ is Nil!5745) lt!247793))))

(assert (=> d!205376 (= (++!1609 lt!247793 suffix!1342) lt!247825)))

(assert (= (and d!205376 c!109258) b!584201))

(assert (= (and d!205376 (not c!109258)) b!584202))

(assert (= (and d!205376 res!251655) b!584203))

(assert (= (and b!584203 res!251656) b!584204))

(declare-fun m!843879 () Bool)

(assert (=> b!584202 m!843879))

(declare-fun m!843881 () Bool)

(assert (=> b!584203 m!843881))

(assert (=> b!584203 m!843787))

(declare-fun m!843883 () Bool)

(assert (=> b!584203 m!843883))

(declare-fun m!843885 () Bool)

(assert (=> d!205376 m!843885))

(declare-fun m!843887 () Bool)

(assert (=> d!205376 m!843887))

(declare-fun m!843889 () Bool)

(assert (=> d!205376 m!843889))

(assert (=> b!584128 d!205376))

(declare-fun d!205378 () Bool)

(assert (=> d!205378 (= (inv!7243 (tag!1383 (h!11147 rules!3103))) (= (mod (str.len (value!36789 (tag!1383 (h!11147 rules!3103)))) 2) 0))))

(assert (=> b!584117 d!205378))

(declare-fun d!205380 () Bool)

(declare-fun res!251657 () Bool)

(declare-fun e!353152 () Bool)

(assert (=> d!205380 (=> (not res!251657) (not e!353152))))

(assert (=> d!205380 (= res!251657 (semiInverseModEq!434 (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toValue!1992 (transformation!1121 (h!11147 rules!3103)))))))

(assert (=> d!205380 (= (inv!7246 (transformation!1121 (h!11147 rules!3103))) e!353152)))

(declare-fun b!584205 () Bool)

(assert (=> b!584205 (= e!353152 (equivClasses!417 (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toValue!1992 (transformation!1121 (h!11147 rules!3103)))))))

(assert (= (and d!205380 res!251657) b!584205))

(declare-fun m!843891 () Bool)

(assert (=> d!205380 m!843891))

(declare-fun m!843893 () Bool)

(assert (=> b!584205 m!843893))

(assert (=> b!584117 d!205380))

(declare-fun d!205382 () Bool)

(assert (=> d!205382 (= (list!2392 (charsOf!750 token!491)) (list!2393 (c!109244 (charsOf!750 token!491))))))

(declare-fun bs!69945 () Bool)

(assert (= bs!69945 d!205382))

(declare-fun m!843895 () Bool)

(assert (=> bs!69945 m!843895))

(assert (=> b!584129 d!205382))

(declare-fun d!205384 () Bool)

(declare-fun lt!247828 () BalanceConc!3684)

(assert (=> d!205384 (= (list!2392 lt!247828) (originalCharacters!1160 token!491))))

(assert (=> d!205384 (= lt!247828 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))

(assert (=> d!205384 (= (charsOf!750 token!491) lt!247828)))

(declare-fun b_lambda!23019 () Bool)

(assert (=> (not b_lambda!23019) (not d!205384)))

(declare-fun t!78373 () Bool)

(declare-fun tb!51163 () Bool)

(assert (=> (and b!584118 (= (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toChars!1851 (transformation!1121 (rule!1881 token!491)))) t!78373) tb!51163))

(declare-fun b!584212 () Bool)

(declare-fun e!353157 () Bool)

(declare-fun tp!182294 () Bool)

(assert (=> b!584212 (= e!353157 (and (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))) tp!182294))))

(declare-fun result!57284 () Bool)

(assert (=> tb!51163 (= result!57284 (and (inv!7249 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))) e!353157))))

(assert (= tb!51163 b!584212))

(declare-fun m!843897 () Bool)

(assert (=> b!584212 m!843897))

(declare-fun m!843899 () Bool)

(assert (=> tb!51163 m!843899))

(assert (=> d!205384 t!78373))

(declare-fun b_and!57551 () Bool)

(assert (= b_and!57547 (and (=> t!78373 result!57284) b_and!57551)))

(declare-fun t!78375 () Bool)

(declare-fun tb!51165 () Bool)

(assert (=> (and b!584122 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 token!491)))) t!78375) tb!51165))

(declare-fun result!57286 () Bool)

(assert (= result!57286 result!57284))

(assert (=> d!205384 t!78375))

(declare-fun b_and!57553 () Bool)

(assert (= b_and!57549 (and (=> t!78375 result!57286) b_and!57553)))

(declare-fun m!843901 () Bool)

(assert (=> d!205384 m!843901))

(declare-fun m!843903 () Bool)

(assert (=> d!205384 m!843903))

(assert (=> b!584129 d!205384))

(declare-fun d!205386 () Bool)

(assert (=> d!205386 (= (isEmpty!4147 input!2705) ((_ is Nil!5745) input!2705))))

(assert (=> b!584130 d!205386))

(declare-fun d!205388 () Bool)

(declare-fun res!251674 () Bool)

(declare-fun e!353165 () Bool)

(assert (=> d!205388 (=> (not res!251674) (not e!353165))))

(assert (=> d!205388 (= res!251674 (not (isEmpty!4147 (originalCharacters!1160 token!491))))))

(assert (=> d!205388 (= (inv!7247 token!491) e!353165)))

(declare-fun b!584223 () Bool)

(declare-fun res!251675 () Bool)

(assert (=> b!584223 (=> (not res!251675) (not e!353165))))

(assert (=> b!584223 (= res!251675 (= (originalCharacters!1160 token!491) (list!2392 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))))

(declare-fun b!584224 () Bool)

(assert (=> b!584224 (= e!353165 (= (size!4566 token!491) (size!4567 (originalCharacters!1160 token!491))))))

(assert (= (and d!205388 res!251674) b!584223))

(assert (= (and b!584223 res!251675) b!584224))

(declare-fun b_lambda!23021 () Bool)

(assert (=> (not b_lambda!23021) (not b!584223)))

(assert (=> b!584223 t!78373))

(declare-fun b_and!57555 () Bool)

(assert (= b_and!57551 (and (=> t!78373 result!57284) b_and!57555)))

(assert (=> b!584223 t!78375))

(declare-fun b_and!57557 () Bool)

(assert (= b_and!57553 (and (=> t!78375 result!57286) b_and!57557)))

(declare-fun m!843911 () Bool)

(assert (=> d!205388 m!843911))

(assert (=> b!584223 m!843903))

(assert (=> b!584223 m!843903))

(declare-fun m!843917 () Bool)

(assert (=> b!584223 m!843917))

(assert (=> b!584224 m!843859))

(assert (=> start!54220 d!205388))

(declare-fun d!205390 () Bool)

(declare-fun isEmpty!4149 (Option!1472) Bool)

(assert (=> d!205390 (= (isDefined!1283 lt!247789) (not (isEmpty!4149 lt!247789)))))

(declare-fun bs!69946 () Bool)

(assert (= bs!69946 d!205390))

(declare-fun m!843921 () Bool)

(assert (=> bs!69946 m!843921))

(assert (=> b!584132 d!205390))

(declare-fun b!584270 () Bool)

(declare-fun e!353187 () Bool)

(declare-fun e!353189 () Bool)

(assert (=> b!584270 (= e!353187 e!353189)))

(declare-fun res!251701 () Bool)

(assert (=> b!584270 (=> (not res!251701) (not e!353189))))

(declare-fun lt!247859 () Option!1472)

(assert (=> b!584270 (= res!251701 (isDefined!1283 lt!247859))))

(declare-fun b!584271 () Bool)

(declare-fun contains!1350 (List!5756 Rule!2042) Bool)

(assert (=> b!584271 (= e!353189 (contains!1350 rules!3103 (rule!1881 (_1!3622 (get!2196 lt!247859)))))))

(declare-fun b!584272 () Bool)

(declare-fun res!251698 () Bool)

(assert (=> b!584272 (=> (not res!251698) (not e!353189))))

(assert (=> b!584272 (= res!251698 (= (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))) (originalCharacters!1160 (_1!3622 (get!2196 lt!247859)))))))

(declare-fun bm!40175 () Bool)

(declare-fun call!40180 () Option!1472)

(declare-fun maxPrefixOneRule!399 (LexerInterface!1007 Rule!2042 List!5755) Option!1472)

(assert (=> bm!40175 (= call!40180 (maxPrefixOneRule!399 thiss!22590 (h!11147 rules!3103) lt!247797))))

(declare-fun b!584273 () Bool)

(declare-fun e!353188 () Option!1472)

(assert (=> b!584273 (= e!353188 call!40180)))

(declare-fun b!584274 () Bool)

(declare-fun res!251702 () Bool)

(assert (=> b!584274 (=> (not res!251702) (not e!353189))))

(declare-fun matchR!595 (Regex!1455 List!5755) Bool)

(assert (=> b!584274 (= res!251702 (matchR!595 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun b!584275 () Bool)

(declare-fun res!251696 () Bool)

(assert (=> b!584275 (=> (not res!251696) (not e!353189))))

(assert (=> b!584275 (= res!251696 (< (size!4567 (_2!3622 (get!2196 lt!247859))) (size!4567 lt!247797)))))

(declare-fun d!205394 () Bool)

(assert (=> d!205394 e!353187))

(declare-fun res!251700 () Bool)

(assert (=> d!205394 (=> res!251700 e!353187)))

(assert (=> d!205394 (= res!251700 (isEmpty!4149 lt!247859))))

(assert (=> d!205394 (= lt!247859 e!353188)))

(declare-fun c!109269 () Bool)

(assert (=> d!205394 (= c!109269 (and ((_ is Cons!5746) rules!3103) ((_ is Nil!5746) (t!78367 rules!3103))))))

(declare-fun lt!247860 () Unit!10435)

(declare-fun lt!247858 () Unit!10435)

(assert (=> d!205394 (= lt!247860 lt!247858)))

(assert (=> d!205394 (isPrefix!749 lt!247797 lt!247797)))

(declare-fun lemmaIsPrefixRefl!486 (List!5755 List!5755) Unit!10435)

(assert (=> d!205394 (= lt!247858 (lemmaIsPrefixRefl!486 lt!247797 lt!247797))))

(declare-fun rulesValidInductive!403 (LexerInterface!1007 List!5756) Bool)

(assert (=> d!205394 (rulesValidInductive!403 thiss!22590 rules!3103)))

(assert (=> d!205394 (= (maxPrefix!705 thiss!22590 rules!3103 lt!247797) lt!247859)))

(declare-fun b!584276 () Bool)

(declare-fun res!251699 () Bool)

(assert (=> b!584276 (=> (not res!251699) (not e!353189))))

(declare-fun apply!1379 (TokenValueInjection!2058 BalanceConc!3684) TokenValue!1145)

(declare-fun seqFromList!1302 (List!5755) BalanceConc!3684)

(assert (=> b!584276 (= res!251699 (= (value!36815 (_1!3622 (get!2196 lt!247859))) (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun b!584277 () Bool)

(declare-fun lt!247862 () Option!1472)

(declare-fun lt!247861 () Option!1472)

(assert (=> b!584277 (= e!353188 (ite (and ((_ is None!1471) lt!247862) ((_ is None!1471) lt!247861)) None!1471 (ite ((_ is None!1471) lt!247861) lt!247862 (ite ((_ is None!1471) lt!247862) lt!247861 (ite (>= (size!4566 (_1!3622 (v!16342 lt!247862))) (size!4566 (_1!3622 (v!16342 lt!247861)))) lt!247862 lt!247861)))))))

(assert (=> b!584277 (= lt!247862 call!40180)))

(assert (=> b!584277 (= lt!247861 (maxPrefix!705 thiss!22590 (t!78367 rules!3103) lt!247797))))

(declare-fun b!584278 () Bool)

(declare-fun res!251697 () Bool)

(assert (=> b!584278 (=> (not res!251697) (not e!353189))))

(assert (=> b!584278 (= res!251697 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))) (_2!3622 (get!2196 lt!247859))) lt!247797))))

(assert (= (and d!205394 c!109269) b!584273))

(assert (= (and d!205394 (not c!109269)) b!584277))

(assert (= (or b!584273 b!584277) bm!40175))

(assert (= (and d!205394 (not res!251700)) b!584270))

(assert (= (and b!584270 res!251701) b!584272))

(assert (= (and b!584272 res!251698) b!584275))

(assert (= (and b!584275 res!251696) b!584278))

(assert (= (and b!584278 res!251697) b!584276))

(assert (= (and b!584276 res!251699) b!584274))

(assert (= (and b!584274 res!251702) b!584271))

(declare-fun m!843971 () Bool)

(assert (=> bm!40175 m!843971))

(declare-fun m!843973 () Bool)

(assert (=> d!205394 m!843973))

(declare-fun m!843975 () Bool)

(assert (=> d!205394 m!843975))

(declare-fun m!843977 () Bool)

(assert (=> d!205394 m!843977))

(declare-fun m!843979 () Bool)

(assert (=> d!205394 m!843979))

(declare-fun m!843981 () Bool)

(assert (=> b!584278 m!843981))

(declare-fun m!843983 () Bool)

(assert (=> b!584278 m!843983))

(assert (=> b!584278 m!843983))

(declare-fun m!843985 () Bool)

(assert (=> b!584278 m!843985))

(assert (=> b!584278 m!843985))

(declare-fun m!843987 () Bool)

(assert (=> b!584278 m!843987))

(assert (=> b!584275 m!843981))

(declare-fun m!843989 () Bool)

(assert (=> b!584275 m!843989))

(declare-fun m!843991 () Bool)

(assert (=> b!584275 m!843991))

(declare-fun m!843993 () Bool)

(assert (=> b!584270 m!843993))

(declare-fun m!843995 () Bool)

(assert (=> b!584277 m!843995))

(assert (=> b!584274 m!843981))

(assert (=> b!584274 m!843983))

(assert (=> b!584274 m!843983))

(assert (=> b!584274 m!843985))

(assert (=> b!584274 m!843985))

(declare-fun m!843997 () Bool)

(assert (=> b!584274 m!843997))

(assert (=> b!584272 m!843981))

(assert (=> b!584272 m!843983))

(assert (=> b!584272 m!843983))

(assert (=> b!584272 m!843985))

(assert (=> b!584271 m!843981))

(declare-fun m!843999 () Bool)

(assert (=> b!584271 m!843999))

(assert (=> b!584276 m!843981))

(declare-fun m!844001 () Bool)

(assert (=> b!584276 m!844001))

(assert (=> b!584276 m!844001))

(declare-fun m!844003 () Bool)

(assert (=> b!584276 m!844003))

(assert (=> b!584132 d!205394))

(declare-fun b!584280 () Bool)

(declare-fun e!353190 () List!5755)

(assert (=> b!584280 (= e!353190 (Cons!5745 (h!11146 input!2705) (++!1609 (t!78366 input!2705) suffix!1342)))))

(declare-fun lt!247863 () List!5755)

(declare-fun b!584282 () Bool)

(declare-fun e!353191 () Bool)

(assert (=> b!584282 (= e!353191 (or (not (= suffix!1342 Nil!5745)) (= lt!247863 input!2705)))))

(declare-fun b!584281 () Bool)

(declare-fun res!251704 () Bool)

(assert (=> b!584281 (=> (not res!251704) (not e!353191))))

(assert (=> b!584281 (= res!251704 (= (size!4567 lt!247863) (+ (size!4567 input!2705) (size!4567 suffix!1342))))))

(declare-fun b!584279 () Bool)

(assert (=> b!584279 (= e!353190 suffix!1342)))

(declare-fun d!205420 () Bool)

(assert (=> d!205420 e!353191))

(declare-fun res!251703 () Bool)

(assert (=> d!205420 (=> (not res!251703) (not e!353191))))

(assert (=> d!205420 (= res!251703 (= (content!1020 lt!247863) ((_ map or) (content!1020 input!2705) (content!1020 suffix!1342))))))

(assert (=> d!205420 (= lt!247863 e!353190)))

(declare-fun c!109270 () Bool)

(assert (=> d!205420 (= c!109270 ((_ is Nil!5745) input!2705))))

(assert (=> d!205420 (= (++!1609 input!2705 suffix!1342) lt!247863)))

(assert (= (and d!205420 c!109270) b!584279))

(assert (= (and d!205420 (not c!109270)) b!584280))

(assert (= (and d!205420 res!251703) b!584281))

(assert (= (and b!584281 res!251704) b!584282))

(declare-fun m!844005 () Bool)

(assert (=> b!584280 m!844005))

(declare-fun m!844007 () Bool)

(assert (=> b!584281 m!844007))

(assert (=> b!584281 m!843827))

(assert (=> b!584281 m!843883))

(declare-fun m!844009 () Bool)

(assert (=> d!205420 m!844009))

(declare-fun m!844011 () Bool)

(assert (=> d!205420 m!844011))

(assert (=> d!205420 m!843889))

(assert (=> b!584132 d!205420))

(declare-fun b!584283 () Bool)

(declare-fun e!353192 () Bool)

(declare-fun e!353194 () Bool)

(assert (=> b!584283 (= e!353192 e!353194)))

(declare-fun res!251710 () Bool)

(assert (=> b!584283 (=> (not res!251710) (not e!353194))))

(declare-fun lt!247865 () Option!1472)

(assert (=> b!584283 (= res!251710 (isDefined!1283 lt!247865))))

(declare-fun b!584284 () Bool)

(assert (=> b!584284 (= e!353194 (contains!1350 rules!3103 (rule!1881 (_1!3622 (get!2196 lt!247865)))))))

(declare-fun b!584285 () Bool)

(declare-fun res!251707 () Bool)

(assert (=> b!584285 (=> (not res!251707) (not e!353194))))

(assert (=> b!584285 (= res!251707 (= (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))) (originalCharacters!1160 (_1!3622 (get!2196 lt!247865)))))))

(declare-fun call!40181 () Option!1472)

(declare-fun bm!40176 () Bool)

(assert (=> bm!40176 (= call!40181 (maxPrefixOneRule!399 thiss!22590 (h!11147 rules!3103) input!2705))))

(declare-fun b!584286 () Bool)

(declare-fun e!353193 () Option!1472)

(assert (=> b!584286 (= e!353193 call!40181)))

(declare-fun b!584287 () Bool)

(declare-fun res!251711 () Bool)

(assert (=> b!584287 (=> (not res!251711) (not e!353194))))

(assert (=> b!584287 (= res!251711 (matchR!595 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))))))

(declare-fun b!584288 () Bool)

(declare-fun res!251705 () Bool)

(assert (=> b!584288 (=> (not res!251705) (not e!353194))))

(assert (=> b!584288 (= res!251705 (< (size!4567 (_2!3622 (get!2196 lt!247865))) (size!4567 input!2705)))))

(declare-fun d!205422 () Bool)

(assert (=> d!205422 e!353192))

(declare-fun res!251709 () Bool)

(assert (=> d!205422 (=> res!251709 e!353192)))

(assert (=> d!205422 (= res!251709 (isEmpty!4149 lt!247865))))

(assert (=> d!205422 (= lt!247865 e!353193)))

(declare-fun c!109271 () Bool)

(assert (=> d!205422 (= c!109271 (and ((_ is Cons!5746) rules!3103) ((_ is Nil!5746) (t!78367 rules!3103))))))

(declare-fun lt!247866 () Unit!10435)

(declare-fun lt!247864 () Unit!10435)

(assert (=> d!205422 (= lt!247866 lt!247864)))

(assert (=> d!205422 (isPrefix!749 input!2705 input!2705)))

(assert (=> d!205422 (= lt!247864 (lemmaIsPrefixRefl!486 input!2705 input!2705))))

(assert (=> d!205422 (rulesValidInductive!403 thiss!22590 rules!3103)))

(assert (=> d!205422 (= (maxPrefix!705 thiss!22590 rules!3103 input!2705) lt!247865)))

(declare-fun b!584289 () Bool)

(declare-fun res!251708 () Bool)

(assert (=> b!584289 (=> (not res!251708) (not e!353194))))

(assert (=> b!584289 (= res!251708 (= (value!36815 (_1!3622 (get!2196 lt!247865))) (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun b!584290 () Bool)

(declare-fun lt!247868 () Option!1472)

(declare-fun lt!247867 () Option!1472)

(assert (=> b!584290 (= e!353193 (ite (and ((_ is None!1471) lt!247868) ((_ is None!1471) lt!247867)) None!1471 (ite ((_ is None!1471) lt!247867) lt!247868 (ite ((_ is None!1471) lt!247868) lt!247867 (ite (>= (size!4566 (_1!3622 (v!16342 lt!247868))) (size!4566 (_1!3622 (v!16342 lt!247867)))) lt!247868 lt!247867)))))))

(assert (=> b!584290 (= lt!247868 call!40181)))

(assert (=> b!584290 (= lt!247867 (maxPrefix!705 thiss!22590 (t!78367 rules!3103) input!2705))))

(declare-fun b!584291 () Bool)

(declare-fun res!251706 () Bool)

(assert (=> b!584291 (=> (not res!251706) (not e!353194))))

(assert (=> b!584291 (= res!251706 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))) (_2!3622 (get!2196 lt!247865))) input!2705))))

(assert (= (and d!205422 c!109271) b!584286))

(assert (= (and d!205422 (not c!109271)) b!584290))

(assert (= (or b!584286 b!584290) bm!40176))

(assert (= (and d!205422 (not res!251709)) b!584283))

(assert (= (and b!584283 res!251710) b!584285))

(assert (= (and b!584285 res!251707) b!584288))

(assert (= (and b!584288 res!251705) b!584291))

(assert (= (and b!584291 res!251706) b!584289))

(assert (= (and b!584289 res!251708) b!584287))

(assert (= (and b!584287 res!251711) b!584284))

(declare-fun m!844013 () Bool)

(assert (=> bm!40176 m!844013))

(declare-fun m!844015 () Bool)

(assert (=> d!205422 m!844015))

(declare-fun m!844017 () Bool)

(assert (=> d!205422 m!844017))

(declare-fun m!844019 () Bool)

(assert (=> d!205422 m!844019))

(assert (=> d!205422 m!843979))

(declare-fun m!844021 () Bool)

(assert (=> b!584291 m!844021))

(declare-fun m!844023 () Bool)

(assert (=> b!584291 m!844023))

(assert (=> b!584291 m!844023))

(declare-fun m!844025 () Bool)

(assert (=> b!584291 m!844025))

(assert (=> b!584291 m!844025))

(declare-fun m!844027 () Bool)

(assert (=> b!584291 m!844027))

(assert (=> b!584288 m!844021))

(declare-fun m!844029 () Bool)

(assert (=> b!584288 m!844029))

(assert (=> b!584288 m!843827))

(declare-fun m!844031 () Bool)

(assert (=> b!584283 m!844031))

(declare-fun m!844033 () Bool)

(assert (=> b!584290 m!844033))

(assert (=> b!584287 m!844021))

(assert (=> b!584287 m!844023))

(assert (=> b!584287 m!844023))

(assert (=> b!584287 m!844025))

(assert (=> b!584287 m!844025))

(declare-fun m!844035 () Bool)

(assert (=> b!584287 m!844035))

(assert (=> b!584285 m!844021))

(assert (=> b!584285 m!844023))

(assert (=> b!584285 m!844023))

(assert (=> b!584285 m!844025))

(assert (=> b!584284 m!844021))

(declare-fun m!844037 () Bool)

(assert (=> b!584284 m!844037))

(assert (=> b!584289 m!844021))

(declare-fun m!844039 () Bool)

(assert (=> b!584289 m!844039))

(assert (=> b!584289 m!844039))

(declare-fun m!844041 () Bool)

(assert (=> b!584289 m!844041))

(assert (=> b!584121 d!205422))

(declare-fun d!205424 () Bool)

(assert (=> d!205424 (= (isEmpty!4148 rules!3103) ((_ is Nil!5746) rules!3103))))

(assert (=> b!584133 d!205424))

(declare-fun d!205426 () Bool)

(declare-fun c!109277 () Bool)

(assert (=> d!205426 (= c!109277 ((_ is IntegerValue!3435) (value!36815 token!491)))))

(declare-fun e!353203 () Bool)

(assert (=> d!205426 (= (inv!21 (value!36815 token!491)) e!353203)))

(declare-fun b!584302 () Bool)

(declare-fun inv!16 (TokenValue!1145) Bool)

(assert (=> b!584302 (= e!353203 (inv!16 (value!36815 token!491)))))

(declare-fun b!584303 () Bool)

(declare-fun res!251714 () Bool)

(declare-fun e!353201 () Bool)

(assert (=> b!584303 (=> res!251714 e!353201)))

(assert (=> b!584303 (= res!251714 (not ((_ is IntegerValue!3437) (value!36815 token!491))))))

(declare-fun e!353202 () Bool)

(assert (=> b!584303 (= e!353202 e!353201)))

(declare-fun b!584304 () Bool)

(declare-fun inv!15 (TokenValue!1145) Bool)

(assert (=> b!584304 (= e!353201 (inv!15 (value!36815 token!491)))))

(declare-fun b!584305 () Bool)

(declare-fun inv!17 (TokenValue!1145) Bool)

(assert (=> b!584305 (= e!353202 (inv!17 (value!36815 token!491)))))

(declare-fun b!584306 () Bool)

(assert (=> b!584306 (= e!353203 e!353202)))

(declare-fun c!109276 () Bool)

(assert (=> b!584306 (= c!109276 ((_ is IntegerValue!3436) (value!36815 token!491)))))

(assert (= (and d!205426 c!109277) b!584302))

(assert (= (and d!205426 (not c!109277)) b!584306))

(assert (= (and b!584306 c!109276) b!584305))

(assert (= (and b!584306 (not c!109276)) b!584303))

(assert (= (and b!584303 (not res!251714)) b!584304))

(declare-fun m!844043 () Bool)

(assert (=> b!584302 m!844043))

(declare-fun m!844045 () Bool)

(assert (=> b!584304 m!844045))

(declare-fun m!844047 () Bool)

(assert (=> b!584305 m!844047))

(assert (=> b!584134 d!205426))

(declare-fun b!584317 () Bool)

(declare-fun b_free!16293 () Bool)

(declare-fun b_next!16309 () Bool)

(assert (=> b!584317 (= b_free!16293 (not b_next!16309))))

(declare-fun tp!182309 () Bool)

(declare-fun b_and!57563 () Bool)

(assert (=> b!584317 (= tp!182309 b_and!57563)))

(declare-fun b_free!16295 () Bool)

(declare-fun b_next!16311 () Bool)

(assert (=> b!584317 (= b_free!16295 (not b_next!16311))))

(declare-fun t!78381 () Bool)

(declare-fun tb!51171 () Bool)

(assert (=> (and b!584317 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788)))))) t!78381) tb!51171))

(declare-fun result!57296 () Bool)

(assert (= result!57296 result!57278))

(assert (=> d!205360 t!78381))

(declare-fun t!78383 () Bool)

(declare-fun tb!51173 () Bool)

(assert (=> (and b!584317 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 token!491)))) t!78383) tb!51173))

(declare-fun result!57298 () Bool)

(assert (= result!57298 result!57284))

(assert (=> d!205384 t!78383))

(assert (=> b!584223 t!78383))

(declare-fun b_and!57565 () Bool)

(declare-fun tp!182308 () Bool)

(assert (=> b!584317 (= tp!182308 (and (=> t!78381 result!57296) (=> t!78383 result!57298) b_and!57565))))

(declare-fun e!353214 () Bool)

(assert (=> b!584317 (= e!353214 (and tp!182309 tp!182308))))

(declare-fun e!353213 () Bool)

(declare-fun b!584316 () Bool)

(declare-fun tp!182307 () Bool)

(assert (=> b!584316 (= e!353213 (and tp!182307 (inv!7243 (tag!1383 (h!11147 (t!78367 rules!3103)))) (inv!7246 (transformation!1121 (h!11147 (t!78367 rules!3103)))) e!353214))))

(declare-fun b!584315 () Bool)

(declare-fun e!353215 () Bool)

(declare-fun tp!182306 () Bool)

(assert (=> b!584315 (= e!353215 (and e!353213 tp!182306))))

(assert (=> b!584119 (= tp!182290 e!353215)))

(assert (= b!584316 b!584317))

(assert (= b!584315 b!584316))

(assert (= (and b!584119 ((_ is Cons!5746) (t!78367 rules!3103))) b!584315))

(declare-fun m!844049 () Bool)

(assert (=> b!584316 m!844049))

(declare-fun m!844051 () Bool)

(assert (=> b!584316 m!844051))

(declare-fun b!584322 () Bool)

(declare-fun e!353218 () Bool)

(declare-fun tp!182312 () Bool)

(assert (=> b!584322 (= e!353218 (and tp_is_empty!3265 tp!182312))))

(assert (=> b!584120 (= tp!182287 e!353218)))

(assert (= (and b!584120 ((_ is Cons!5745) (t!78366 input!2705))) b!584322))

(declare-fun b!584333 () Bool)

(declare-fun e!353221 () Bool)

(assert (=> b!584333 (= e!353221 tp_is_empty!3265)))

(declare-fun b!584336 () Bool)

(declare-fun tp!182325 () Bool)

(declare-fun tp!182324 () Bool)

(assert (=> b!584336 (= e!353221 (and tp!182325 tp!182324))))

(declare-fun b!584334 () Bool)

(declare-fun tp!182323 () Bool)

(declare-fun tp!182327 () Bool)

(assert (=> b!584334 (= e!353221 (and tp!182323 tp!182327))))

(assert (=> b!584125 (= tp!182282 e!353221)))

(declare-fun b!584335 () Bool)

(declare-fun tp!182326 () Bool)

(assert (=> b!584335 (= e!353221 tp!182326)))

(assert (= (and b!584125 ((_ is ElementMatch!1455) (regex!1121 (rule!1881 token!491)))) b!584333))

(assert (= (and b!584125 ((_ is Concat!2600) (regex!1121 (rule!1881 token!491)))) b!584334))

(assert (= (and b!584125 ((_ is Star!1455) (regex!1121 (rule!1881 token!491)))) b!584335))

(assert (= (and b!584125 ((_ is Union!1455) (regex!1121 (rule!1881 token!491)))) b!584336))

(declare-fun b!584337 () Bool)

(declare-fun e!353222 () Bool)

(assert (=> b!584337 (= e!353222 tp_is_empty!3265)))

(declare-fun b!584340 () Bool)

(declare-fun tp!182330 () Bool)

(declare-fun tp!182329 () Bool)

(assert (=> b!584340 (= e!353222 (and tp!182330 tp!182329))))

(declare-fun b!584338 () Bool)

(declare-fun tp!182328 () Bool)

(declare-fun tp!182332 () Bool)

(assert (=> b!584338 (= e!353222 (and tp!182328 tp!182332))))

(assert (=> b!584117 (= tp!182288 e!353222)))

(declare-fun b!584339 () Bool)

(declare-fun tp!182331 () Bool)

(assert (=> b!584339 (= e!353222 tp!182331)))

(assert (= (and b!584117 ((_ is ElementMatch!1455) (regex!1121 (h!11147 rules!3103)))) b!584337))

(assert (= (and b!584117 ((_ is Concat!2600) (regex!1121 (h!11147 rules!3103)))) b!584338))

(assert (= (and b!584117 ((_ is Star!1455) (regex!1121 (h!11147 rules!3103)))) b!584339))

(assert (= (and b!584117 ((_ is Union!1455) (regex!1121 (h!11147 rules!3103)))) b!584340))

(declare-fun b!584341 () Bool)

(declare-fun e!353223 () Bool)

(declare-fun tp!182333 () Bool)

(assert (=> b!584341 (= e!353223 (and tp_is_empty!3265 tp!182333))))

(assert (=> b!584134 (= tp!182286 e!353223)))

(assert (= (and b!584134 ((_ is Cons!5745) (originalCharacters!1160 token!491))) b!584341))

(declare-fun b!584342 () Bool)

(declare-fun e!353224 () Bool)

(declare-fun tp!182334 () Bool)

(assert (=> b!584342 (= e!353224 (and tp_is_empty!3265 tp!182334))))

(assert (=> b!584123 (= tp!182285 e!353224)))

(assert (= (and b!584123 ((_ is Cons!5745) (t!78366 suffix!1342))) b!584342))

(declare-fun b_lambda!23025 () Bool)

(assert (= b_lambda!23021 (or (and b!584118 b_free!16287) (and b!584122 b_free!16291 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 token!491))))) (and b!584317 b_free!16295 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 token!491))))) b_lambda!23025)))

(declare-fun b_lambda!23027 () Bool)

(assert (= b_lambda!23019 (or (and b!584118 b_free!16287) (and b!584122 b_free!16291 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 token!491))))) (and b!584317 b_free!16295 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 token!491))))) b_lambda!23027)))

(check-sat b_and!57565 (not b!584271) (not b!584281) (not b!584274) (not d!205362) (not b_next!16309) (not tb!51159) (not b!584316) (not b!584187) (not b!584163) (not b!584305) tp_is_empty!3265 (not b!584287) (not b!584341) (not b!584336) (not b!584158) (not b!584212) (not b_next!16301) (not d!205354) (not b!584291) (not b!584289) (not b!584199) (not b!584202) (not b!584270) (not b!584340) b_and!57543 (not b!584159) (not tb!51163) (not d!205384) (not d!205420) (not d!205390) (not b!584168) (not b!584338) (not b!584283) (not b!584315) b_and!57555 (not b!584288) (not b!584203) (not d!205346) (not d!205348) (not d!205380) (not b!584138) (not d!205360) (not b!584277) (not b!584141) (not d!205394) (not d!205368) (not b_next!16305) (not b!584335) (not b!584205) (not b_next!16303) (not b!584186) (not b!584272) (not b_next!16307) (not b!584162) (not b!584342) b_and!57557 (not d!205374) (not bm!40176) (not b!584302) (not b_lambda!23017) (not d!205370) (not b!584161) (not b!584285) (not b!584322) (not b_lambda!23027) (not b!584278) (not d!205376) (not b!584339) (not b!584147) (not d!205364) (not b!584290) (not b!584334) (not b!584280) (not b!584224) (not bm!40175) (not b!584284) b_and!57563 (not b!584223) b_and!57539 (not b!584304) (not b!584275) (not d!205382) (not b!584190) (not d!205422) (not d!205388) (not b_lambda!23025) (not b_next!16311) (not b!584157) (not b!584276) (not d!205340))
(check-sat (not b_next!16309) (not b_next!16301) b_and!57565 b_and!57543 b_and!57555 (not b_next!16305) (not b_next!16303) (not b_next!16307) b_and!57557 b_and!57563 b_and!57539 (not b_next!16311))
(get-model)

(declare-fun b!584449 () Bool)

(declare-fun e!353280 () List!5755)

(assert (=> b!584449 (= e!353280 (Cons!5745 (h!11146 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) (++!1609 (t!78366 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) (_2!3622 (get!2196 lt!247859)))))))

(declare-fun b!584451 () Bool)

(declare-fun e!353281 () Bool)

(declare-fun lt!247891 () List!5755)

(assert (=> b!584451 (= e!353281 (or (not (= (_2!3622 (get!2196 lt!247859)) Nil!5745)) (= lt!247891 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun b!584450 () Bool)

(declare-fun res!251768 () Bool)

(assert (=> b!584450 (=> (not res!251768) (not e!353281))))

(assert (=> b!584450 (= res!251768 (= (size!4567 lt!247891) (+ (size!4567 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) (size!4567 (_2!3622 (get!2196 lt!247859))))))))

(declare-fun b!584448 () Bool)

(assert (=> b!584448 (= e!353280 (_2!3622 (get!2196 lt!247859)))))

(declare-fun d!205456 () Bool)

(assert (=> d!205456 e!353281))

(declare-fun res!251767 () Bool)

(assert (=> d!205456 (=> (not res!251767) (not e!353281))))

(assert (=> d!205456 (= res!251767 (= (content!1020 lt!247891) ((_ map or) (content!1020 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) (content!1020 (_2!3622 (get!2196 lt!247859))))))))

(assert (=> d!205456 (= lt!247891 e!353280)))

(declare-fun c!109289 () Bool)

(assert (=> d!205456 (= c!109289 ((_ is Nil!5745) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))))))

(assert (=> d!205456 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))) (_2!3622 (get!2196 lt!247859))) lt!247891)))

(assert (= (and d!205456 c!109289) b!584448))

(assert (= (and d!205456 (not c!109289)) b!584449))

(assert (= (and d!205456 res!251767) b!584450))

(assert (= (and b!584450 res!251768) b!584451))

(declare-fun m!844161 () Bool)

(assert (=> b!584449 m!844161))

(declare-fun m!844163 () Bool)

(assert (=> b!584450 m!844163))

(assert (=> b!584450 m!843985))

(declare-fun m!844165 () Bool)

(assert (=> b!584450 m!844165))

(assert (=> b!584450 m!843989))

(declare-fun m!844167 () Bool)

(assert (=> d!205456 m!844167))

(assert (=> d!205456 m!843985))

(declare-fun m!844169 () Bool)

(assert (=> d!205456 m!844169))

(declare-fun m!844171 () Bool)

(assert (=> d!205456 m!844171))

(assert (=> b!584278 d!205456))

(declare-fun d!205458 () Bool)

(assert (=> d!205458 (= (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))) (list!2393 (c!109244 (charsOf!750 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun bs!69954 () Bool)

(assert (= bs!69954 d!205458))

(declare-fun m!844173 () Bool)

(assert (=> bs!69954 m!844173))

(assert (=> b!584278 d!205458))

(declare-fun d!205460 () Bool)

(declare-fun lt!247892 () BalanceConc!3684)

(assert (=> d!205460 (= (list!2392 lt!247892) (originalCharacters!1160 (_1!3622 (get!2196 lt!247859))))))

(assert (=> d!205460 (= lt!247892 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))) (value!36815 (_1!3622 (get!2196 lt!247859)))))))

(assert (=> d!205460 (= (charsOf!750 (_1!3622 (get!2196 lt!247859))) lt!247892)))

(declare-fun b_lambda!23037 () Bool)

(assert (=> (not b_lambda!23037) (not d!205460)))

(declare-fun t!78395 () Bool)

(declare-fun tb!51183 () Bool)

(assert (=> (and b!584118 (= (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78395) tb!51183))

(declare-fun b!584452 () Bool)

(declare-fun e!353282 () Bool)

(declare-fun tp!182373 () Bool)

(assert (=> b!584452 (= e!353282 (and (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))) (value!36815 (_1!3622 (get!2196 lt!247859)))))) tp!182373))))

(declare-fun result!57318 () Bool)

(assert (=> tb!51183 (= result!57318 (and (inv!7249 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))) (value!36815 (_1!3622 (get!2196 lt!247859))))) e!353282))))

(assert (= tb!51183 b!584452))

(declare-fun m!844175 () Bool)

(assert (=> b!584452 m!844175))

(declare-fun m!844177 () Bool)

(assert (=> tb!51183 m!844177))

(assert (=> d!205460 t!78395))

(declare-fun b_and!57579 () Bool)

(assert (= b_and!57555 (and (=> t!78395 result!57318) b_and!57579)))

(declare-fun t!78397 () Bool)

(declare-fun tb!51185 () Bool)

(assert (=> (and b!584122 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78397) tb!51185))

(declare-fun result!57320 () Bool)

(assert (= result!57320 result!57318))

(assert (=> d!205460 t!78397))

(declare-fun b_and!57581 () Bool)

(assert (= b_and!57557 (and (=> t!78397 result!57320) b_and!57581)))

(declare-fun t!78399 () Bool)

(declare-fun tb!51187 () Bool)

(assert (=> (and b!584317 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78399) tb!51187))

(declare-fun result!57322 () Bool)

(assert (= result!57322 result!57318))

(assert (=> d!205460 t!78399))

(declare-fun b_and!57583 () Bool)

(assert (= b_and!57565 (and (=> t!78399 result!57322) b_and!57583)))

(declare-fun m!844179 () Bool)

(assert (=> d!205460 m!844179))

(declare-fun m!844181 () Bool)

(assert (=> d!205460 m!844181))

(assert (=> b!584278 d!205460))

(declare-fun d!205462 () Bool)

(assert (=> d!205462 (= (get!2196 lt!247859) (v!16342 lt!247859))))

(assert (=> b!584278 d!205462))

(declare-fun d!205464 () Bool)

(assert (=> d!205464 (= (list!2392 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))) (list!2393 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))))

(declare-fun bs!69955 () Bool)

(assert (= bs!69955 d!205464))

(declare-fun m!844183 () Bool)

(assert (=> bs!69955 m!844183))

(assert (=> b!584223 d!205464))

(declare-fun d!205466 () Bool)

(declare-fun res!251773 () Bool)

(declare-fun e!353287 () Bool)

(assert (=> d!205466 (=> res!251773 e!353287)))

(assert (=> d!205466 (= res!251773 ((_ is Nil!5746) rules!3103))))

(assert (=> d!205466 (= (noDuplicateTag!398 thiss!22590 rules!3103 Nil!5747) e!353287)))

(declare-fun b!584457 () Bool)

(declare-fun e!353288 () Bool)

(assert (=> b!584457 (= e!353287 e!353288)))

(declare-fun res!251774 () Bool)

(assert (=> b!584457 (=> (not res!251774) (not e!353288))))

(declare-fun contains!1352 (List!5757 String!7468) Bool)

(assert (=> b!584457 (= res!251774 (not (contains!1352 Nil!5747 (tag!1383 (h!11147 rules!3103)))))))

(declare-fun b!584458 () Bool)

(assert (=> b!584458 (= e!353288 (noDuplicateTag!398 thiss!22590 (t!78367 rules!3103) (Cons!5747 (tag!1383 (h!11147 rules!3103)) Nil!5747)))))

(assert (= (and d!205466 (not res!251773)) b!584457))

(assert (= (and b!584457 res!251774) b!584458))

(declare-fun m!844185 () Bool)

(assert (=> b!584457 m!844185))

(declare-fun m!844187 () Bool)

(assert (=> b!584458 m!844187))

(assert (=> b!584138 d!205466))

(declare-fun d!205468 () Bool)

(declare-fun c!109292 () Bool)

(assert (=> d!205468 (= c!109292 ((_ is Nil!5745) lt!247863))))

(declare-fun e!353291 () (InoxSet C!3832))

(assert (=> d!205468 (= (content!1020 lt!247863) e!353291)))

(declare-fun b!584463 () Bool)

(assert (=> b!584463 (= e!353291 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584464 () Bool)

(assert (=> b!584464 (= e!353291 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 lt!247863) true) (content!1020 (t!78366 lt!247863))))))

(assert (= (and d!205468 c!109292) b!584463))

(assert (= (and d!205468 (not c!109292)) b!584464))

(declare-fun m!844189 () Bool)

(assert (=> b!584464 m!844189))

(declare-fun m!844191 () Bool)

(assert (=> b!584464 m!844191))

(assert (=> d!205420 d!205468))

(declare-fun d!205470 () Bool)

(declare-fun c!109293 () Bool)

(assert (=> d!205470 (= c!109293 ((_ is Nil!5745) input!2705))))

(declare-fun e!353292 () (InoxSet C!3832))

(assert (=> d!205470 (= (content!1020 input!2705) e!353292)))

(declare-fun b!584465 () Bool)

(assert (=> b!584465 (= e!353292 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584466 () Bool)

(assert (=> b!584466 (= e!353292 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 input!2705) true) (content!1020 (t!78366 input!2705))))))

(assert (= (and d!205470 c!109293) b!584465))

(assert (= (and d!205470 (not c!109293)) b!584466))

(declare-fun m!844193 () Bool)

(assert (=> b!584466 m!844193))

(declare-fun m!844195 () Bool)

(assert (=> b!584466 m!844195))

(assert (=> d!205420 d!205470))

(declare-fun d!205472 () Bool)

(declare-fun c!109294 () Bool)

(assert (=> d!205472 (= c!109294 ((_ is Nil!5745) suffix!1342))))

(declare-fun e!353293 () (InoxSet C!3832))

(assert (=> d!205472 (= (content!1020 suffix!1342) e!353293)))

(declare-fun b!584467 () Bool)

(assert (=> b!584467 (= e!353293 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584468 () Bool)

(assert (=> b!584468 (= e!353293 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 suffix!1342) true) (content!1020 (t!78366 suffix!1342))))))

(assert (= (and d!205472 c!109294) b!584467))

(assert (= (and d!205472 (not c!109294)) b!584468))

(declare-fun m!844197 () Bool)

(assert (=> b!584468 m!844197))

(declare-fun m!844199 () Bool)

(assert (=> b!584468 m!844199))

(assert (=> d!205420 d!205472))

(declare-fun d!205474 () Bool)

(assert (=> d!205474 (= (list!2392 lt!247828) (list!2393 (c!109244 lt!247828)))))

(declare-fun bs!69956 () Bool)

(assert (= bs!69956 d!205474))

(declare-fun m!844201 () Bool)

(assert (=> bs!69956 m!844201))

(assert (=> d!205384 d!205474))

(declare-fun d!205476 () Bool)

(declare-fun lt!247893 () Int)

(assert (=> d!205476 (>= lt!247893 0)))

(declare-fun e!353294 () Int)

(assert (=> d!205476 (= lt!247893 e!353294)))

(declare-fun c!109295 () Bool)

(assert (=> d!205476 (= c!109295 ((_ is Nil!5745) (_2!3622 (get!2196 lt!247865))))))

(assert (=> d!205476 (= (size!4567 (_2!3622 (get!2196 lt!247865))) lt!247893)))

(declare-fun b!584469 () Bool)

(assert (=> b!584469 (= e!353294 0)))

(declare-fun b!584470 () Bool)

(assert (=> b!584470 (= e!353294 (+ 1 (size!4567 (t!78366 (_2!3622 (get!2196 lt!247865))))))))

(assert (= (and d!205476 c!109295) b!584469))

(assert (= (and d!205476 (not c!109295)) b!584470))

(declare-fun m!844203 () Bool)

(assert (=> b!584470 m!844203))

(assert (=> b!584288 d!205476))

(declare-fun d!205478 () Bool)

(assert (=> d!205478 (= (get!2196 lt!247865) (v!16342 lt!247865))))

(assert (=> b!584288 d!205478))

(declare-fun d!205480 () Bool)

(declare-fun lt!247894 () Int)

(assert (=> d!205480 (>= lt!247894 0)))

(declare-fun e!353295 () Int)

(assert (=> d!205480 (= lt!247894 e!353295)))

(declare-fun c!109296 () Bool)

(assert (=> d!205480 (= c!109296 ((_ is Nil!5745) input!2705))))

(assert (=> d!205480 (= (size!4567 input!2705) lt!247894)))

(declare-fun b!584471 () Bool)

(assert (=> b!584471 (= e!353295 0)))

(declare-fun b!584472 () Bool)

(assert (=> b!584472 (= e!353295 (+ 1 (size!4567 (t!78366 input!2705))))))

(assert (= (and d!205480 c!109296) b!584471))

(assert (= (and d!205480 (not c!109296)) b!584472))

(declare-fun m!844205 () Bool)

(assert (=> b!584472 m!844205))

(assert (=> b!584288 d!205480))

(declare-fun d!205482 () Bool)

(assert (=> d!205482 true))

(declare-fun lambda!15841 () Int)

(declare-fun order!4693 () Int)

(declare-fun order!4691 () Int)

(declare-fun dynLambda!3348 (Int Int) Int)

(declare-fun dynLambda!3349 (Int Int) Int)

(assert (=> d!205482 (< (dynLambda!3348 order!4691 (toValue!1992 (transformation!1121 (h!11147 rules!3103)))) (dynLambda!3349 order!4693 lambda!15841))))

(declare-fun Forall2!215 (Int) Bool)

(assert (=> d!205482 (= (equivClasses!417 (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toValue!1992 (transformation!1121 (h!11147 rules!3103)))) (Forall2!215 lambda!15841))))

(declare-fun bs!69958 () Bool)

(assert (= bs!69958 d!205482))

(declare-fun m!844247 () Bool)

(assert (=> bs!69958 m!844247))

(assert (=> b!584205 d!205482))

(declare-fun b!584529 () Bool)

(declare-fun e!353324 () List!5755)

(assert (=> b!584529 (= e!353324 (Cons!5745 (h!11146 (t!78366 lt!247787)) (++!1609 (t!78366 (t!78366 lt!247787)) (_2!3622 (v!16342 lt!247788)))))))

(declare-fun e!353325 () Bool)

(declare-fun b!584531 () Bool)

(declare-fun lt!247903 () List!5755)

(assert (=> b!584531 (= e!353325 (or (not (= (_2!3622 (v!16342 lt!247788)) Nil!5745)) (= lt!247903 (t!78366 lt!247787))))))

(declare-fun b!584530 () Bool)

(declare-fun res!251804 () Bool)

(assert (=> b!584530 (=> (not res!251804) (not e!353325))))

(assert (=> b!584530 (= res!251804 (= (size!4567 lt!247903) (+ (size!4567 (t!78366 lt!247787)) (size!4567 (_2!3622 (v!16342 lt!247788))))))))

(declare-fun b!584528 () Bool)

(assert (=> b!584528 (= e!353324 (_2!3622 (v!16342 lt!247788)))))

(declare-fun d!205506 () Bool)

(assert (=> d!205506 e!353325))

(declare-fun res!251803 () Bool)

(assert (=> d!205506 (=> (not res!251803) (not e!353325))))

(assert (=> d!205506 (= res!251803 (= (content!1020 lt!247903) ((_ map or) (content!1020 (t!78366 lt!247787)) (content!1020 (_2!3622 (v!16342 lt!247788))))))))

(assert (=> d!205506 (= lt!247903 e!353324)))

(declare-fun c!109310 () Bool)

(assert (=> d!205506 (= c!109310 ((_ is Nil!5745) (t!78366 lt!247787)))))

(assert (=> d!205506 (= (++!1609 (t!78366 lt!247787) (_2!3622 (v!16342 lt!247788))) lt!247903)))

(assert (= (and d!205506 c!109310) b!584528))

(assert (= (and d!205506 (not c!109310)) b!584529))

(assert (= (and d!205506 res!251803) b!584530))

(assert (= (and b!584530 res!251804) b!584531))

(declare-fun m!844249 () Bool)

(assert (=> b!584529 m!844249))

(declare-fun m!844251 () Bool)

(assert (=> b!584530 m!844251))

(assert (=> b!584530 m!843811))

(assert (=> b!584530 m!843847))

(declare-fun m!844253 () Bool)

(assert (=> d!205506 m!844253))

(declare-fun m!844255 () Bool)

(assert (=> d!205506 m!844255))

(assert (=> d!205506 m!843853))

(assert (=> b!584186 d!205506))

(declare-fun b!584533 () Bool)

(declare-fun e!353326 () List!5755)

(assert (=> b!584533 (= e!353326 (Cons!5745 (h!11146 (t!78366 lt!247793)) (++!1609 (t!78366 (t!78366 lt!247793)) suffix!1342)))))

(declare-fun b!584535 () Bool)

(declare-fun e!353327 () Bool)

(declare-fun lt!247904 () List!5755)

(assert (=> b!584535 (= e!353327 (or (not (= suffix!1342 Nil!5745)) (= lt!247904 (t!78366 lt!247793))))))

(declare-fun b!584534 () Bool)

(declare-fun res!251806 () Bool)

(assert (=> b!584534 (=> (not res!251806) (not e!353327))))

(assert (=> b!584534 (= res!251806 (= (size!4567 lt!247904) (+ (size!4567 (t!78366 lt!247793)) (size!4567 suffix!1342))))))

(declare-fun b!584532 () Bool)

(assert (=> b!584532 (= e!353326 suffix!1342)))

(declare-fun d!205508 () Bool)

(assert (=> d!205508 e!353327))

(declare-fun res!251805 () Bool)

(assert (=> d!205508 (=> (not res!251805) (not e!353327))))

(assert (=> d!205508 (= res!251805 (= (content!1020 lt!247904) ((_ map or) (content!1020 (t!78366 lt!247793)) (content!1020 suffix!1342))))))

(assert (=> d!205508 (= lt!247904 e!353326)))

(declare-fun c!109311 () Bool)

(assert (=> d!205508 (= c!109311 ((_ is Nil!5745) (t!78366 lt!247793)))))

(assert (=> d!205508 (= (++!1609 (t!78366 lt!247793) suffix!1342) lt!247904)))

(assert (= (and d!205508 c!109311) b!584532))

(assert (= (and d!205508 (not c!109311)) b!584533))

(assert (= (and d!205508 res!251805) b!584534))

(assert (= (and b!584534 res!251806) b!584535))

(declare-fun m!844257 () Bool)

(assert (=> b!584533 m!844257))

(declare-fun m!844259 () Bool)

(assert (=> b!584534 m!844259))

(assert (=> b!584534 m!843857))

(assert (=> b!584534 m!843883))

(declare-fun m!844261 () Bool)

(assert (=> d!205508 m!844261))

(declare-fun m!844263 () Bool)

(assert (=> d!205508 m!844263))

(assert (=> d!205508 m!843889))

(assert (=> b!584202 d!205508))

(declare-fun d!205510 () Bool)

(assert (=> d!205510 (= (inv!7243 (tag!1383 (h!11147 (t!78367 rules!3103)))) (= (mod (str.len (value!36789 (tag!1383 (h!11147 (t!78367 rules!3103))))) 2) 0))))

(assert (=> b!584316 d!205510))

(declare-fun d!205512 () Bool)

(declare-fun res!251807 () Bool)

(declare-fun e!353328 () Bool)

(assert (=> d!205512 (=> (not res!251807) (not e!353328))))

(assert (=> d!205512 (= res!251807 (semiInverseModEq!434 (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toValue!1992 (transformation!1121 (h!11147 (t!78367 rules!3103))))))))

(assert (=> d!205512 (= (inv!7246 (transformation!1121 (h!11147 (t!78367 rules!3103)))) e!353328)))

(declare-fun b!584536 () Bool)

(assert (=> b!584536 (= e!353328 (equivClasses!417 (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toValue!1992 (transformation!1121 (h!11147 (t!78367 rules!3103))))))))

(assert (= (and d!205512 res!251807) b!584536))

(declare-fun m!844265 () Bool)

(assert (=> d!205512 m!844265))

(declare-fun m!844267 () Bool)

(assert (=> b!584536 m!844267))

(assert (=> b!584316 d!205512))

(declare-fun d!205514 () Bool)

(declare-fun lt!247905 () Int)

(assert (=> d!205514 (>= lt!247905 0)))

(declare-fun e!353329 () Int)

(assert (=> d!205514 (= lt!247905 e!353329)))

(declare-fun c!109312 () Bool)

(assert (=> d!205514 (= c!109312 ((_ is Nil!5745) (t!78366 lt!247787)))))

(assert (=> d!205514 (= (size!4567 (t!78366 lt!247787)) lt!247905)))

(declare-fun b!584537 () Bool)

(assert (=> b!584537 (= e!353329 0)))

(declare-fun b!584538 () Bool)

(assert (=> b!584538 (= e!353329 (+ 1 (size!4567 (t!78366 (t!78366 lt!247787)))))))

(assert (= (and d!205514 c!109312) b!584537))

(assert (= (and d!205514 (not c!109312)) b!584538))

(declare-fun m!844269 () Bool)

(assert (=> b!584538 m!844269))

(assert (=> b!584147 d!205514))

(declare-fun d!205516 () Bool)

(assert (=> d!205516 (= (list!2392 lt!247811) (list!2393 (c!109244 lt!247811)))))

(declare-fun bs!69959 () Bool)

(assert (= bs!69959 d!205516))

(declare-fun m!844271 () Bool)

(assert (=> bs!69959 m!844271))

(assert (=> d!205360 d!205516))

(declare-fun b!584557 () Bool)

(declare-fun res!251824 () Bool)

(declare-fun e!353339 () Bool)

(assert (=> b!584557 (=> (not res!251824) (not e!353339))))

(declare-fun lt!247919 () Option!1472)

(assert (=> b!584557 (= res!251824 (= (value!36815 (_1!3622 (get!2196 lt!247919))) (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247919)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247919)))))))))

(declare-fun b!584558 () Bool)

(declare-fun e!353338 () Bool)

(assert (=> b!584558 (= e!353338 e!353339)))

(declare-fun res!251825 () Bool)

(assert (=> b!584558 (=> (not res!251825) (not e!353339))))

(assert (=> b!584558 (= res!251825 (matchR!595 (regex!1121 (h!11147 rules!3103)) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247919))))))))

(declare-fun b!584559 () Bool)

(declare-fun e!353340 () Bool)

(declare-datatypes ((tuple2!6718 0))(
  ( (tuple2!6719 (_1!3623 List!5755) (_2!3623 List!5755)) )
))
(declare-fun findLongestMatchInner!180 (Regex!1455 List!5755 Int List!5755 List!5755 Int) tuple2!6718)

(assert (=> b!584559 (= e!353340 (matchR!595 (regex!1121 (h!11147 rules!3103)) (_1!3623 (findLongestMatchInner!180 (regex!1121 (h!11147 rules!3103)) Nil!5745 (size!4567 Nil!5745) lt!247797 lt!247797 (size!4567 lt!247797)))))))

(declare-fun b!584560 () Bool)

(declare-fun res!251822 () Bool)

(assert (=> b!584560 (=> (not res!251822) (not e!353339))))

(assert (=> b!584560 (= res!251822 (= (rule!1881 (_1!3622 (get!2196 lt!247919))) (h!11147 rules!3103)))))

(declare-fun b!584561 () Bool)

(declare-fun res!251826 () Bool)

(assert (=> b!584561 (=> (not res!251826) (not e!353339))))

(assert (=> b!584561 (= res!251826 (< (size!4567 (_2!3622 (get!2196 lt!247919))) (size!4567 lt!247797)))))

(declare-fun b!584562 () Bool)

(declare-fun res!251823 () Bool)

(assert (=> b!584562 (=> (not res!251823) (not e!353339))))

(assert (=> b!584562 (= res!251823 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247919)))) (_2!3622 (get!2196 lt!247919))) lt!247797))))

(declare-fun d!205518 () Bool)

(assert (=> d!205518 e!353338))

(declare-fun res!251828 () Bool)

(assert (=> d!205518 (=> res!251828 e!353338)))

(assert (=> d!205518 (= res!251828 (isEmpty!4149 lt!247919))))

(declare-fun e!353341 () Option!1472)

(assert (=> d!205518 (= lt!247919 e!353341)))

(declare-fun c!109315 () Bool)

(declare-fun lt!247916 () tuple2!6718)

(assert (=> d!205518 (= c!109315 (isEmpty!4147 (_1!3623 lt!247916)))))

(declare-fun findLongestMatch!159 (Regex!1455 List!5755) tuple2!6718)

(assert (=> d!205518 (= lt!247916 (findLongestMatch!159 (regex!1121 (h!11147 rules!3103)) lt!247797))))

(declare-fun ruleValid!324 (LexerInterface!1007 Rule!2042) Bool)

(assert (=> d!205518 (ruleValid!324 thiss!22590 (h!11147 rules!3103))))

(assert (=> d!205518 (= (maxPrefixOneRule!399 thiss!22590 (h!11147 rules!3103) lt!247797) lt!247919)))

(declare-fun b!584563 () Bool)

(assert (=> b!584563 (= e!353341 None!1471)))

(declare-fun b!584564 () Bool)

(declare-fun size!4568 (BalanceConc!3684) Int)

(assert (=> b!584564 (= e!353341 (Some!1471 (tuple2!6717 (Token!1979 (apply!1379 (transformation!1121 (h!11147 rules!3103)) (seqFromList!1302 (_1!3623 lt!247916))) (h!11147 rules!3103) (size!4568 (seqFromList!1302 (_1!3623 lt!247916))) (_1!3623 lt!247916)) (_2!3623 lt!247916))))))

(declare-fun lt!247918 () Unit!10435)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!164 (Regex!1455 List!5755) Unit!10435)

(assert (=> b!584564 (= lt!247918 (longestMatchIsAcceptedByMatchOrIsEmpty!164 (regex!1121 (h!11147 rules!3103)) lt!247797))))

(declare-fun res!251827 () Bool)

(assert (=> b!584564 (= res!251827 (isEmpty!4147 (_1!3623 (findLongestMatchInner!180 (regex!1121 (h!11147 rules!3103)) Nil!5745 (size!4567 Nil!5745) lt!247797 lt!247797 (size!4567 lt!247797)))))))

(assert (=> b!584564 (=> res!251827 e!353340)))

(assert (=> b!584564 e!353340))

(declare-fun lt!247917 () Unit!10435)

(assert (=> b!584564 (= lt!247917 lt!247918)))

(declare-fun lt!247920 () Unit!10435)

(declare-fun lemmaSemiInverse!217 (TokenValueInjection!2058 BalanceConc!3684) Unit!10435)

(assert (=> b!584564 (= lt!247920 (lemmaSemiInverse!217 (transformation!1121 (h!11147 rules!3103)) (seqFromList!1302 (_1!3623 lt!247916))))))

(declare-fun b!584565 () Bool)

(assert (=> b!584565 (= e!353339 (= (size!4566 (_1!3622 (get!2196 lt!247919))) (size!4567 (originalCharacters!1160 (_1!3622 (get!2196 lt!247919))))))))

(assert (= (and d!205518 c!109315) b!584563))

(assert (= (and d!205518 (not c!109315)) b!584564))

(assert (= (and b!584564 (not res!251827)) b!584559))

(assert (= (and d!205518 (not res!251828)) b!584558))

(assert (= (and b!584558 res!251825) b!584562))

(assert (= (and b!584562 res!251823) b!584561))

(assert (= (and b!584561 res!251826) b!584560))

(assert (= (and b!584560 res!251822) b!584557))

(assert (= (and b!584557 res!251824) b!584565))

(declare-fun m!844273 () Bool)

(assert (=> b!584559 m!844273))

(assert (=> b!584559 m!843991))

(assert (=> b!584559 m!844273))

(assert (=> b!584559 m!843991))

(declare-fun m!844275 () Bool)

(assert (=> b!584559 m!844275))

(declare-fun m!844277 () Bool)

(assert (=> b!584559 m!844277))

(declare-fun m!844279 () Bool)

(assert (=> b!584557 m!844279))

(declare-fun m!844281 () Bool)

(assert (=> b!584557 m!844281))

(assert (=> b!584557 m!844281))

(declare-fun m!844283 () Bool)

(assert (=> b!584557 m!844283))

(declare-fun m!844285 () Bool)

(assert (=> b!584564 m!844285))

(assert (=> b!584564 m!844285))

(declare-fun m!844287 () Bool)

(assert (=> b!584564 m!844287))

(assert (=> b!584564 m!844273))

(assert (=> b!584564 m!844285))

(declare-fun m!844289 () Bool)

(assert (=> b!584564 m!844289))

(assert (=> b!584564 m!844285))

(declare-fun m!844291 () Bool)

(assert (=> b!584564 m!844291))

(declare-fun m!844293 () Bool)

(assert (=> b!584564 m!844293))

(assert (=> b!584564 m!844273))

(assert (=> b!584564 m!843991))

(assert (=> b!584564 m!844275))

(declare-fun m!844295 () Bool)

(assert (=> b!584564 m!844295))

(assert (=> b!584564 m!843991))

(assert (=> b!584565 m!844279))

(declare-fun m!844297 () Bool)

(assert (=> b!584565 m!844297))

(assert (=> b!584560 m!844279))

(assert (=> b!584558 m!844279))

(declare-fun m!844299 () Bool)

(assert (=> b!584558 m!844299))

(assert (=> b!584558 m!844299))

(declare-fun m!844301 () Bool)

(assert (=> b!584558 m!844301))

(assert (=> b!584558 m!844301))

(declare-fun m!844303 () Bool)

(assert (=> b!584558 m!844303))

(assert (=> b!584562 m!844279))

(assert (=> b!584562 m!844299))

(assert (=> b!584562 m!844299))

(assert (=> b!584562 m!844301))

(assert (=> b!584562 m!844301))

(declare-fun m!844305 () Bool)

(assert (=> b!584562 m!844305))

(declare-fun m!844307 () Bool)

(assert (=> d!205518 m!844307))

(declare-fun m!844309 () Bool)

(assert (=> d!205518 m!844309))

(declare-fun m!844311 () Bool)

(assert (=> d!205518 m!844311))

(declare-fun m!844313 () Bool)

(assert (=> d!205518 m!844313))

(assert (=> b!584561 m!844279))

(declare-fun m!844315 () Bool)

(assert (=> b!584561 m!844315))

(assert (=> b!584561 m!843991))

(assert (=> bm!40175 d!205518))

(assert (=> b!584163 d!205480))

(assert (=> b!584163 d!205350))

(declare-fun d!205520 () Bool)

(declare-fun c!109316 () Bool)

(assert (=> d!205520 (= c!109316 ((_ is Nil!5745) lt!247825))))

(declare-fun e!353342 () (InoxSet C!3832))

(assert (=> d!205520 (= (content!1020 lt!247825) e!353342)))

(declare-fun b!584566 () Bool)

(assert (=> b!584566 (= e!353342 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584567 () Bool)

(assert (=> b!584567 (= e!353342 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 lt!247825) true) (content!1020 (t!78366 lt!247825))))))

(assert (= (and d!205520 c!109316) b!584566))

(assert (= (and d!205520 (not c!109316)) b!584567))

(declare-fun m!844317 () Bool)

(assert (=> b!584567 m!844317))

(declare-fun m!844319 () Bool)

(assert (=> b!584567 m!844319))

(assert (=> d!205376 d!205520))

(declare-fun d!205522 () Bool)

(declare-fun c!109317 () Bool)

(assert (=> d!205522 (= c!109317 ((_ is Nil!5745) lt!247793))))

(declare-fun e!353343 () (InoxSet C!3832))

(assert (=> d!205522 (= (content!1020 lt!247793) e!353343)))

(declare-fun b!584568 () Bool)

(assert (=> b!584568 (= e!353343 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584569 () Bool)

(assert (=> b!584569 (= e!353343 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 lt!247793) true) (content!1020 (t!78366 lt!247793))))))

(assert (= (and d!205522 c!109317) b!584568))

(assert (= (and d!205522 (not c!109317)) b!584569))

(declare-fun m!844321 () Bool)

(assert (=> b!584569 m!844321))

(assert (=> b!584569 m!844263))

(assert (=> d!205376 d!205522))

(assert (=> d!205376 d!205472))

(declare-fun d!205524 () Bool)

(declare-fun lt!247921 () Int)

(assert (=> d!205524 (>= lt!247921 0)))

(declare-fun e!353344 () Int)

(assert (=> d!205524 (= lt!247921 e!353344)))

(declare-fun c!109318 () Bool)

(assert (=> d!205524 (= c!109318 ((_ is Nil!5745) (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))

(assert (=> d!205524 (= (size!4567 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))) lt!247921)))

(declare-fun b!584570 () Bool)

(assert (=> b!584570 (= e!353344 0)))

(declare-fun b!584571 () Bool)

(assert (=> b!584571 (= e!353344 (+ 1 (size!4567 (t!78366 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))))

(assert (= (and d!205524 c!109318) b!584570))

(assert (= (and d!205524 (not c!109318)) b!584571))

(declare-fun m!844323 () Bool)

(assert (=> b!584571 m!844323))

(assert (=> b!584159 d!205524))

(assert (=> b!584159 d!205350))

(declare-fun b!584601 () Bool)

(declare-fun e!353364 () Bool)

(declare-fun nullable!396 (Regex!1455) Bool)

(assert (=> b!584601 (= e!353364 (nullable!396 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun b!584602 () Bool)

(declare-fun e!353365 () Bool)

(assert (=> b!584602 (= e!353365 (= (head!1233 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) (c!109243 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun b!584603 () Bool)

(declare-fun res!251852 () Bool)

(declare-fun e!353362 () Bool)

(assert (=> b!584603 (=> res!251852 e!353362)))

(assert (=> b!584603 (= res!251852 (not ((_ is ElementMatch!1455) (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun e!353360 () Bool)

(assert (=> b!584603 (= e!353360 e!353362)))

(declare-fun b!584604 () Bool)

(declare-fun res!251846 () Bool)

(declare-fun e!353361 () Bool)

(assert (=> b!584604 (=> res!251846 e!353361)))

(assert (=> b!584604 (= res!251846 (not (isEmpty!4147 (tail!762 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))))))))

(declare-fun b!584605 () Bool)

(declare-fun e!353363 () Bool)

(declare-fun lt!247924 () Bool)

(declare-fun call!40191 () Bool)

(assert (=> b!584605 (= e!353363 (= lt!247924 call!40191))))

(declare-fun b!584606 () Bool)

(declare-fun derivativeStep!309 (Regex!1455 C!3832) Regex!1455)

(assert (=> b!584606 (= e!353364 (matchR!595 (derivativeStep!309 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))) (head!1233 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))))) (tail!762 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun b!584607 () Bool)

(declare-fun res!251845 () Bool)

(assert (=> b!584607 (=> res!251845 e!353362)))

(assert (=> b!584607 (= res!251845 e!353365)))

(declare-fun res!251851 () Bool)

(assert (=> b!584607 (=> (not res!251851) (not e!353365))))

(assert (=> b!584607 (= res!251851 lt!247924)))

(declare-fun bm!40186 () Bool)

(assert (=> bm!40186 (= call!40191 (isEmpty!4147 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun b!584608 () Bool)

(declare-fun res!251850 () Bool)

(assert (=> b!584608 (=> (not res!251850) (not e!353365))))

(assert (=> b!584608 (= res!251850 (not call!40191))))

(declare-fun b!584609 () Bool)

(declare-fun e!353359 () Bool)

(assert (=> b!584609 (= e!353362 e!353359)))

(declare-fun res!251849 () Bool)

(assert (=> b!584609 (=> (not res!251849) (not e!353359))))

(assert (=> b!584609 (= res!251849 (not lt!247924))))

(declare-fun b!584610 () Bool)

(assert (=> b!584610 (= e!353363 e!353360)))

(declare-fun c!109327 () Bool)

(assert (=> b!584610 (= c!109327 ((_ is EmptyLang!1455) (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun b!584611 () Bool)

(assert (=> b!584611 (= e!353361 (not (= (head!1233 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) (c!109243 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))))))))

(declare-fun d!205526 () Bool)

(assert (=> d!205526 e!353363))

(declare-fun c!109325 () Bool)

(assert (=> d!205526 (= c!109325 ((_ is EmptyExpr!1455) (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))))))

(assert (=> d!205526 (= lt!247924 e!353364)))

(declare-fun c!109326 () Bool)

(assert (=> d!205526 (= c!109326 (isEmpty!4147 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun validRegex!491 (Regex!1455) Bool)

(assert (=> d!205526 (validRegex!491 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))))

(assert (=> d!205526 (= (matchR!595 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859))))) lt!247924)))

(declare-fun b!584600 () Bool)

(assert (=> b!584600 (= e!353360 (not lt!247924))))

(declare-fun b!584612 () Bool)

(declare-fun res!251848 () Bool)

(assert (=> b!584612 (=> (not res!251848) (not e!353365))))

(assert (=> b!584612 (= res!251848 (isEmpty!4147 (tail!762 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun b!584613 () Bool)

(assert (=> b!584613 (= e!353359 e!353361)))

(declare-fun res!251847 () Bool)

(assert (=> b!584613 (=> res!251847 e!353361)))

(assert (=> b!584613 (= res!251847 call!40191)))

(assert (= (and d!205526 c!109326) b!584601))

(assert (= (and d!205526 (not c!109326)) b!584606))

(assert (= (and d!205526 c!109325) b!584605))

(assert (= (and d!205526 (not c!109325)) b!584610))

(assert (= (and b!584610 c!109327) b!584600))

(assert (= (and b!584610 (not c!109327)) b!584603))

(assert (= (and b!584603 (not res!251852)) b!584607))

(assert (= (and b!584607 res!251851) b!584608))

(assert (= (and b!584608 res!251850) b!584612))

(assert (= (and b!584612 res!251848) b!584602))

(assert (= (and b!584607 (not res!251845)) b!584609))

(assert (= (and b!584609 res!251849) b!584613))

(assert (= (and b!584613 (not res!251847)) b!584604))

(assert (= (and b!584604 (not res!251846)) b!584611))

(assert (= (or b!584605 b!584608 b!584613) bm!40186))

(assert (=> b!584606 m!843985))

(declare-fun m!844325 () Bool)

(assert (=> b!584606 m!844325))

(assert (=> b!584606 m!844325))

(declare-fun m!844327 () Bool)

(assert (=> b!584606 m!844327))

(assert (=> b!584606 m!843985))

(declare-fun m!844329 () Bool)

(assert (=> b!584606 m!844329))

(assert (=> b!584606 m!844327))

(assert (=> b!584606 m!844329))

(declare-fun m!844331 () Bool)

(assert (=> b!584606 m!844331))

(assert (=> b!584602 m!843985))

(assert (=> b!584602 m!844325))

(assert (=> b!584611 m!843985))

(assert (=> b!584611 m!844325))

(assert (=> d!205526 m!843985))

(declare-fun m!844333 () Bool)

(assert (=> d!205526 m!844333))

(declare-fun m!844335 () Bool)

(assert (=> d!205526 m!844335))

(assert (=> bm!40186 m!843985))

(assert (=> bm!40186 m!844333))

(declare-fun m!844337 () Bool)

(assert (=> b!584601 m!844337))

(assert (=> b!584604 m!843985))

(assert (=> b!584604 m!844329))

(assert (=> b!584604 m!844329))

(declare-fun m!844339 () Bool)

(assert (=> b!584604 m!844339))

(assert (=> b!584612 m!843985))

(assert (=> b!584612 m!844329))

(assert (=> b!584612 m!844329))

(assert (=> b!584612 m!844339))

(assert (=> b!584274 d!205526))

(assert (=> b!584274 d!205462))

(assert (=> b!584274 d!205458))

(assert (=> b!584274 d!205460))

(declare-fun d!205528 () Bool)

(assert (=> d!205528 (= (isDefined!1283 lt!247865) (not (isEmpty!4149 lt!247865)))))

(declare-fun bs!69960 () Bool)

(assert (= bs!69960 d!205528))

(assert (=> bs!69960 m!844015))

(assert (=> b!584283 d!205528))

(assert (=> b!584276 d!205462))

(declare-fun d!205530 () Bool)

(declare-fun dynLambda!3350 (Int BalanceConc!3684) TokenValue!1145)

(assert (=> d!205530 (= (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247859))))) (dynLambda!3350 (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247859))))))))

(declare-fun b_lambda!23041 () Bool)

(assert (=> (not b_lambda!23041) (not d!205530)))

(declare-fun t!78407 () Bool)

(declare-fun tb!51195 () Bool)

(assert (=> (and b!584118 (= (toValue!1992 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78407) tb!51195))

(declare-fun result!57330 () Bool)

(assert (=> tb!51195 (= result!57330 (inv!21 (dynLambda!3350 (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859))))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247859)))))))))

(declare-fun m!844341 () Bool)

(assert (=> tb!51195 m!844341))

(assert (=> d!205530 t!78407))

(declare-fun b_and!57591 () Bool)

(assert (= b_and!57539 (and (=> t!78407 result!57330) b_and!57591)))

(declare-fun t!78409 () Bool)

(declare-fun tb!51197 () Bool)

(assert (=> (and b!584122 (= (toValue!1992 (transformation!1121 (h!11147 rules!3103))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78409) tb!51197))

(declare-fun result!57334 () Bool)

(assert (= result!57334 result!57330))

(assert (=> d!205530 t!78409))

(declare-fun b_and!57593 () Bool)

(assert (= b_and!57543 (and (=> t!78409 result!57334) b_and!57593)))

(declare-fun t!78411 () Bool)

(declare-fun tb!51199 () Bool)

(assert (=> (and b!584317 (= (toValue!1992 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78411) tb!51199))

(declare-fun result!57336 () Bool)

(assert (= result!57336 result!57330))

(assert (=> d!205530 t!78411))

(declare-fun b_and!57595 () Bool)

(assert (= b_and!57563 (and (=> t!78411 result!57336) b_and!57595)))

(assert (=> d!205530 m!844001))

(declare-fun m!844343 () Bool)

(assert (=> d!205530 m!844343))

(assert (=> b!584276 d!205530))

(declare-fun d!205532 () Bool)

(declare-fun fromListB!570 (List!5755) BalanceConc!3684)

(assert (=> d!205532 (= (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247859)))) (fromListB!570 (originalCharacters!1160 (_1!3622 (get!2196 lt!247859)))))))

(declare-fun bs!69961 () Bool)

(assert (= bs!69961 d!205532))

(declare-fun m!844345 () Bool)

(assert (=> bs!69961 m!844345))

(assert (=> b!584276 d!205532))

(declare-fun d!205534 () Bool)

(declare-fun isBalanced!515 (Conc!1838) Bool)

(assert (=> d!205534 (= (inv!7249 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))) (isBalanced!515 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))))

(declare-fun bs!69962 () Bool)

(assert (= bs!69962 d!205534))

(declare-fun m!844347 () Bool)

(assert (=> bs!69962 m!844347))

(assert (=> tb!51163 d!205534))

(assert (=> d!205370 d!205352))

(assert (=> d!205370 d!205362))

(declare-fun d!205536 () Bool)

(assert (=> d!205536 (isPrefix!749 lt!247787 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))))

(assert (=> d!205536 true))

(declare-fun _$46!938 () Unit!10435)

(assert (=> d!205536 (= (choose!4197 lt!247787 (_2!3622 (v!16342 lt!247788))) _$46!938)))

(declare-fun bs!69963 () Bool)

(assert (= bs!69963 d!205536))

(assert (=> bs!69963 m!843785))

(assert (=> bs!69963 m!843785))

(assert (=> bs!69963 m!843791))

(assert (=> d!205370 d!205536))

(declare-fun d!205538 () Bool)

(assert (=> d!205538 (= (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))) (list!2393 (c!109244 (charsOf!750 (_1!3622 (get!2196 lt!247865))))))))

(declare-fun bs!69964 () Bool)

(assert (= bs!69964 d!205538))

(declare-fun m!844349 () Bool)

(assert (=> bs!69964 m!844349))

(assert (=> b!584285 d!205538))

(declare-fun d!205540 () Bool)

(declare-fun lt!247925 () BalanceConc!3684)

(assert (=> d!205540 (= (list!2392 lt!247925) (originalCharacters!1160 (_1!3622 (get!2196 lt!247865))))))

(assert (=> d!205540 (= lt!247925 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))) (value!36815 (_1!3622 (get!2196 lt!247865)))))))

(assert (=> d!205540 (= (charsOf!750 (_1!3622 (get!2196 lt!247865))) lt!247925)))

(declare-fun b_lambda!23043 () Bool)

(assert (=> (not b_lambda!23043) (not d!205540)))

(declare-fun t!78413 () Bool)

(declare-fun tb!51201 () Bool)

(assert (=> (and b!584118 (= (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78413) tb!51201))

(declare-fun b!584616 () Bool)

(declare-fun e!353369 () Bool)

(declare-fun tp!182375 () Bool)

(assert (=> b!584616 (= e!353369 (and (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))) (value!36815 (_1!3622 (get!2196 lt!247865)))))) tp!182375))))

(declare-fun result!57338 () Bool)

(assert (=> tb!51201 (= result!57338 (and (inv!7249 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))) (value!36815 (_1!3622 (get!2196 lt!247865))))) e!353369))))

(assert (= tb!51201 b!584616))

(declare-fun m!844351 () Bool)

(assert (=> b!584616 m!844351))

(declare-fun m!844353 () Bool)

(assert (=> tb!51201 m!844353))

(assert (=> d!205540 t!78413))

(declare-fun b_and!57597 () Bool)

(assert (= b_and!57579 (and (=> t!78413 result!57338) b_and!57597)))

(declare-fun tb!51203 () Bool)

(declare-fun t!78415 () Bool)

(assert (=> (and b!584122 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78415) tb!51203))

(declare-fun result!57340 () Bool)

(assert (= result!57340 result!57338))

(assert (=> d!205540 t!78415))

(declare-fun b_and!57599 () Bool)

(assert (= b_and!57581 (and (=> t!78415 result!57340) b_and!57599)))

(declare-fun tb!51205 () Bool)

(declare-fun t!78417 () Bool)

(assert (=> (and b!584317 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78417) tb!51205))

(declare-fun result!57342 () Bool)

(assert (= result!57342 result!57338))

(assert (=> d!205540 t!78417))

(declare-fun b_and!57601 () Bool)

(assert (= b_and!57583 (and (=> t!78417 result!57342) b_and!57601)))

(declare-fun m!844355 () Bool)

(assert (=> d!205540 m!844355))

(declare-fun m!844357 () Bool)

(assert (=> d!205540 m!844357))

(assert (=> b!584285 d!205540))

(assert (=> b!584285 d!205478))

(declare-fun d!205542 () Bool)

(declare-fun lt!247926 () Int)

(assert (=> d!205542 (>= lt!247926 0)))

(declare-fun e!353370 () Int)

(assert (=> d!205542 (= lt!247926 e!353370)))

(declare-fun c!109328 () Bool)

(assert (=> d!205542 (= c!109328 ((_ is Nil!5745) lt!247863))))

(assert (=> d!205542 (= (size!4567 lt!247863) lt!247926)))

(declare-fun b!584617 () Bool)

(assert (=> b!584617 (= e!353370 0)))

(declare-fun b!584618 () Bool)

(assert (=> b!584618 (= e!353370 (+ 1 (size!4567 (t!78366 lt!247863))))))

(assert (= (and d!205542 c!109328) b!584617))

(assert (= (and d!205542 (not c!109328)) b!584618))

(declare-fun m!844359 () Bool)

(assert (=> b!584618 m!844359))

(assert (=> b!584281 d!205542))

(assert (=> b!584281 d!205480))

(declare-fun d!205544 () Bool)

(declare-fun lt!247927 () Int)

(assert (=> d!205544 (>= lt!247927 0)))

(declare-fun e!353371 () Int)

(assert (=> d!205544 (= lt!247927 e!353371)))

(declare-fun c!109329 () Bool)

(assert (=> d!205544 (= c!109329 ((_ is Nil!5745) suffix!1342))))

(assert (=> d!205544 (= (size!4567 suffix!1342) lt!247927)))

(declare-fun b!584619 () Bool)

(assert (=> b!584619 (= e!353371 0)))

(declare-fun b!584620 () Bool)

(assert (=> b!584620 (= e!353371 (+ 1 (size!4567 (t!78366 suffix!1342))))))

(assert (= (and d!205544 c!109329) b!584619))

(assert (= (and d!205544 (not c!109329)) b!584620))

(declare-fun m!844361 () Bool)

(assert (=> b!584620 m!844361))

(assert (=> b!584281 d!205544))

(declare-fun d!205546 () Bool)

(declare-fun c!109330 () Bool)

(assert (=> d!205546 (= c!109330 ((_ is Nil!5745) lt!247816))))

(declare-fun e!353372 () (InoxSet C!3832))

(assert (=> d!205546 (= (content!1020 lt!247816) e!353372)))

(declare-fun b!584621 () Bool)

(assert (=> b!584621 (= e!353372 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584622 () Bool)

(assert (=> b!584622 (= e!353372 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 lt!247816) true) (content!1020 (t!78366 lt!247816))))))

(assert (= (and d!205546 c!109330) b!584621))

(assert (= (and d!205546 (not c!109330)) b!584622))

(declare-fun m!844363 () Bool)

(assert (=> b!584622 m!844363))

(declare-fun m!844365 () Bool)

(assert (=> b!584622 m!844365))

(assert (=> d!205362 d!205546))

(declare-fun d!205548 () Bool)

(declare-fun c!109331 () Bool)

(assert (=> d!205548 (= c!109331 ((_ is Nil!5745) lt!247787))))

(declare-fun e!353373 () (InoxSet C!3832))

(assert (=> d!205548 (= (content!1020 lt!247787) e!353373)))

(declare-fun b!584623 () Bool)

(assert (=> b!584623 (= e!353373 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584624 () Bool)

(assert (=> b!584624 (= e!353373 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 lt!247787) true) (content!1020 (t!78366 lt!247787))))))

(assert (= (and d!205548 c!109331) b!584623))

(assert (= (and d!205548 (not c!109331)) b!584624))

(declare-fun m!844367 () Bool)

(assert (=> b!584624 m!844367))

(assert (=> b!584624 m!844255))

(assert (=> d!205362 d!205548))

(declare-fun d!205550 () Bool)

(declare-fun c!109332 () Bool)

(assert (=> d!205550 (= c!109332 ((_ is Nil!5745) (_2!3622 (v!16342 lt!247788))))))

(declare-fun e!353374 () (InoxSet C!3832))

(assert (=> d!205550 (= (content!1020 (_2!3622 (v!16342 lt!247788))) e!353374)))

(declare-fun b!584625 () Bool)

(assert (=> b!584625 (= e!353374 ((as const (Array C!3832 Bool)) false))))

(declare-fun b!584626 () Bool)

(assert (=> b!584626 (= e!353374 ((_ map or) (store ((as const (Array C!3832 Bool)) false) (h!11146 (_2!3622 (v!16342 lt!247788))) true) (content!1020 (t!78366 (_2!3622 (v!16342 lt!247788))))))))

(assert (= (and d!205550 c!109332) b!584625))

(assert (= (and d!205550 (not c!109332)) b!584626))

(declare-fun m!844369 () Bool)

(assert (=> b!584626 m!844369))

(declare-fun m!844371 () Bool)

(assert (=> b!584626 m!844371))

(assert (=> d!205362 d!205550))

(declare-fun b!584628 () Bool)

(declare-fun e!353375 () List!5755)

(assert (=> b!584628 (= e!353375 (Cons!5745 (h!11146 lt!247787) (++!1609 (t!78366 lt!247787) lt!247824)))))

(declare-fun e!353376 () Bool)

(declare-fun b!584630 () Bool)

(declare-fun lt!247928 () List!5755)

(assert (=> b!584630 (= e!353376 (or (not (= lt!247824 Nil!5745)) (= lt!247928 lt!247787)))))

(declare-fun b!584629 () Bool)

(declare-fun res!251854 () Bool)

(assert (=> b!584629 (=> (not res!251854) (not e!353376))))

(assert (=> b!584629 (= res!251854 (= (size!4567 lt!247928) (+ (size!4567 lt!247787) (size!4567 lt!247824))))))

(declare-fun b!584627 () Bool)

(assert (=> b!584627 (= e!353375 lt!247824)))

(declare-fun d!205552 () Bool)

(assert (=> d!205552 e!353376))

(declare-fun res!251853 () Bool)

(assert (=> d!205552 (=> (not res!251853) (not e!353376))))

(assert (=> d!205552 (= res!251853 (= (content!1020 lt!247928) ((_ map or) (content!1020 lt!247787) (content!1020 lt!247824))))))

(assert (=> d!205552 (= lt!247928 e!353375)))

(declare-fun c!109333 () Bool)

(assert (=> d!205552 (= c!109333 ((_ is Nil!5745) lt!247787))))

(assert (=> d!205552 (= (++!1609 lt!247787 lt!247824) lt!247928)))

(assert (= (and d!205552 c!109333) b!584627))

(assert (= (and d!205552 (not c!109333)) b!584628))

(assert (= (and d!205552 res!251853) b!584629))

(assert (= (and b!584629 res!251854) b!584630))

(declare-fun m!844373 () Bool)

(assert (=> b!584628 m!844373))

(declare-fun m!844375 () Bool)

(assert (=> b!584629 m!844375))

(assert (=> b!584629 m!843795))

(declare-fun m!844377 () Bool)

(assert (=> b!584629 m!844377))

(declare-fun m!844379 () Bool)

(assert (=> d!205552 m!844379))

(assert (=> d!205552 m!843851))

(declare-fun m!844381 () Bool)

(assert (=> d!205552 m!844381))

(assert (=> d!205374 d!205552))

(assert (=> d!205374 d!205480))

(assert (=> d!205374 d!205350))

(declare-fun d!205554 () Bool)

(declare-fun lt!247931 () Bool)

(declare-fun content!1022 (List!5756) (InoxSet Rule!2042))

(assert (=> d!205554 (= lt!247931 (select (content!1022 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247859)))))))

(declare-fun e!353381 () Bool)

(assert (=> d!205554 (= lt!247931 e!353381)))

(declare-fun res!251859 () Bool)

(assert (=> d!205554 (=> (not res!251859) (not e!353381))))

(assert (=> d!205554 (= res!251859 ((_ is Cons!5746) rules!3103))))

(assert (=> d!205554 (= (contains!1350 rules!3103 (rule!1881 (_1!3622 (get!2196 lt!247859)))) lt!247931)))

(declare-fun b!584635 () Bool)

(declare-fun e!353382 () Bool)

(assert (=> b!584635 (= e!353381 e!353382)))

(declare-fun res!251860 () Bool)

(assert (=> b!584635 (=> res!251860 e!353382)))

(assert (=> b!584635 (= res!251860 (= (h!11147 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247859)))))))

(declare-fun b!584636 () Bool)

(assert (=> b!584636 (= e!353382 (contains!1350 (t!78367 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247859)))))))

(assert (= (and d!205554 res!251859) b!584635))

(assert (= (and b!584635 (not res!251860)) b!584636))

(declare-fun m!844383 () Bool)

(assert (=> d!205554 m!844383))

(declare-fun m!844385 () Bool)

(assert (=> d!205554 m!844385))

(declare-fun m!844387 () Bool)

(assert (=> b!584636 m!844387))

(assert (=> b!584271 d!205554))

(assert (=> b!584271 d!205462))

(declare-fun d!205556 () Bool)

(assert (=> d!205556 (= (head!1233 lt!247787) (h!11146 lt!247787))))

(assert (=> b!584161 d!205556))

(declare-fun d!205558 () Bool)

(assert (=> d!205558 (= (head!1233 input!2705) (h!11146 input!2705))))

(assert (=> b!584161 d!205558))

(declare-fun d!205560 () Bool)

(declare-fun lt!247932 () Int)

(assert (=> d!205560 (>= lt!247932 0)))

(declare-fun e!353383 () Int)

(assert (=> d!205560 (= lt!247932 e!353383)))

(declare-fun c!109334 () Bool)

(assert (=> d!205560 (= c!109334 ((_ is Nil!5745) (originalCharacters!1160 (_1!3622 (v!16342 lt!247788)))))))

(assert (=> d!205560 (= (size!4567 (originalCharacters!1160 (_1!3622 (v!16342 lt!247788)))) lt!247932)))

(declare-fun b!584637 () Bool)

(assert (=> b!584637 (= e!353383 0)))

(declare-fun b!584638 () Bool)

(assert (=> b!584638 (= e!353383 (+ 1 (size!4567 (t!78366 (originalCharacters!1160 (_1!3622 (v!16342 lt!247788)))))))))

(assert (= (and d!205560 c!109334) b!584637))

(assert (= (and d!205560 (not c!109334)) b!584638))

(declare-fun m!844389 () Bool)

(assert (=> b!584638 m!844389))

(assert (=> d!205348 d!205560))

(assert (=> b!584157 d!205556))

(declare-fun d!205562 () Bool)

(assert (=> d!205562 (= (head!1233 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))) (h!11146 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))

(assert (=> b!584157 d!205562))

(declare-fun d!205564 () Bool)

(assert (=> d!205564 (= (isEmpty!4147 (originalCharacters!1160 token!491)) ((_ is Nil!5745) (originalCharacters!1160 token!491)))))

(assert (=> d!205388 d!205564))

(declare-fun d!205566 () Bool)

(declare-fun c!109337 () Bool)

(assert (=> d!205566 (= c!109337 ((_ is Node!1838) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))))

(declare-fun e!353388 () Bool)

(assert (=> d!205566 (= (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))) e!353388)))

(declare-fun b!584645 () Bool)

(declare-fun inv!7252 (Conc!1838) Bool)

(assert (=> b!584645 (= e!353388 (inv!7252 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))))

(declare-fun b!584646 () Bool)

(declare-fun e!353389 () Bool)

(assert (=> b!584646 (= e!353388 e!353389)))

(declare-fun res!251863 () Bool)

(assert (=> b!584646 (= res!251863 (not ((_ is Leaf!2906) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))))))))

(assert (=> b!584646 (=> res!251863 e!353389)))

(declare-fun b!584647 () Bool)

(declare-fun inv!7253 (Conc!1838) Bool)

(assert (=> b!584647 (= e!353389 (inv!7253 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))))))

(assert (= (and d!205566 c!109337) b!584645))

(assert (= (and d!205566 (not c!109337)) b!584646))

(assert (= (and b!584646 (not res!251863)) b!584647))

(declare-fun m!844391 () Bool)

(assert (=> b!584645 m!844391))

(declare-fun m!844393 () Bool)

(assert (=> b!584647 m!844393))

(assert (=> b!584212 d!205566))

(declare-fun b!584649 () Bool)

(declare-fun e!353390 () List!5755)

(assert (=> b!584649 (= e!353390 (Cons!5745 (h!11146 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) (++!1609 (t!78366 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) (_2!3622 (get!2196 lt!247865)))))))

(declare-fun b!584651 () Bool)

(declare-fun e!353391 () Bool)

(declare-fun lt!247933 () List!5755)

(assert (=> b!584651 (= e!353391 (or (not (= (_2!3622 (get!2196 lt!247865)) Nil!5745)) (= lt!247933 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun b!584650 () Bool)

(declare-fun res!251865 () Bool)

(assert (=> b!584650 (=> (not res!251865) (not e!353391))))

(assert (=> b!584650 (= res!251865 (= (size!4567 lt!247933) (+ (size!4567 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) (size!4567 (_2!3622 (get!2196 lt!247865))))))))

(declare-fun b!584648 () Bool)

(assert (=> b!584648 (= e!353390 (_2!3622 (get!2196 lt!247865)))))

(declare-fun d!205568 () Bool)

(assert (=> d!205568 e!353391))

(declare-fun res!251864 () Bool)

(assert (=> d!205568 (=> (not res!251864) (not e!353391))))

(assert (=> d!205568 (= res!251864 (= (content!1020 lt!247933) ((_ map or) (content!1020 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) (content!1020 (_2!3622 (get!2196 lt!247865))))))))

(assert (=> d!205568 (= lt!247933 e!353390)))

(declare-fun c!109338 () Bool)

(assert (=> d!205568 (= c!109338 ((_ is Nil!5745) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))))))

(assert (=> d!205568 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))) (_2!3622 (get!2196 lt!247865))) lt!247933)))

(assert (= (and d!205568 c!109338) b!584648))

(assert (= (and d!205568 (not c!109338)) b!584649))

(assert (= (and d!205568 res!251864) b!584650))

(assert (= (and b!584650 res!251865) b!584651))

(declare-fun m!844395 () Bool)

(assert (=> b!584649 m!844395))

(declare-fun m!844397 () Bool)

(assert (=> b!584650 m!844397))

(assert (=> b!584650 m!844025))

(declare-fun m!844399 () Bool)

(assert (=> b!584650 m!844399))

(assert (=> b!584650 m!844029))

(declare-fun m!844401 () Bool)

(assert (=> d!205568 m!844401))

(assert (=> d!205568 m!844025))

(declare-fun m!844403 () Bool)

(assert (=> d!205568 m!844403))

(declare-fun m!844405 () Bool)

(assert (=> d!205568 m!844405))

(assert (=> b!584291 d!205568))

(assert (=> b!584291 d!205538))

(assert (=> b!584291 d!205540))

(assert (=> b!584291 d!205478))

(declare-fun d!205570 () Bool)

(declare-fun charsToBigInt!0 (List!5754 Int) Int)

(assert (=> d!205570 (= (inv!15 (value!36815 token!491)) (= (charsToBigInt!0 (text!8464 (value!36815 token!491)) 0) (value!36811 (value!36815 token!491))))))

(declare-fun bs!69965 () Bool)

(assert (= bs!69965 d!205570))

(declare-fun m!844407 () Bool)

(assert (=> bs!69965 m!844407))

(assert (=> b!584304 d!205570))

(declare-fun bs!69966 () Bool)

(declare-fun d!205572 () Bool)

(assert (= bs!69966 (and d!205572 d!205482)))

(declare-fun lambda!15842 () Int)

(assert (=> bs!69966 (= (= (toValue!1992 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (h!11147 rules!3103)))) (= lambda!15842 lambda!15841))))

(assert (=> d!205572 true))

(assert (=> d!205572 (< (dynLambda!3348 order!4691 (toValue!1992 (transformation!1121 (rule!1881 token!491)))) (dynLambda!3349 order!4693 lambda!15842))))

(assert (=> d!205572 (= (equivClasses!417 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (rule!1881 token!491)))) (Forall2!215 lambda!15842))))

(declare-fun bs!69967 () Bool)

(assert (= bs!69967 d!205572))

(declare-fun m!844409 () Bool)

(assert (=> bs!69967 m!844409))

(assert (=> b!584141 d!205572))

(declare-fun d!205574 () Bool)

(declare-fun charsToInt!0 (List!5754) (_ BitVec 32))

(assert (=> d!205574 (= (inv!16 (value!36815 token!491)) (= (charsToInt!0 (text!8462 (value!36815 token!491))) (value!36807 (value!36815 token!491))))))

(declare-fun bs!69968 () Bool)

(assert (= bs!69968 d!205574))

(declare-fun m!844411 () Bool)

(assert (=> bs!69968 m!844411))

(assert (=> b!584302 d!205574))

(declare-fun b!584652 () Bool)

(declare-fun res!251868 () Bool)

(declare-fun e!353393 () Bool)

(assert (=> b!584652 (=> (not res!251868) (not e!353393))))

(declare-fun lt!247937 () Option!1472)

(assert (=> b!584652 (= res!251868 (= (value!36815 (_1!3622 (get!2196 lt!247937))) (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247937)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247937)))))))))

(declare-fun b!584653 () Bool)

(declare-fun e!353392 () Bool)

(assert (=> b!584653 (= e!353392 e!353393)))

(declare-fun res!251869 () Bool)

(assert (=> b!584653 (=> (not res!251869) (not e!353393))))

(assert (=> b!584653 (= res!251869 (matchR!595 (regex!1121 (h!11147 rules!3103)) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247937))))))))

(declare-fun b!584654 () Bool)

(declare-fun e!353394 () Bool)

(assert (=> b!584654 (= e!353394 (matchR!595 (regex!1121 (h!11147 rules!3103)) (_1!3623 (findLongestMatchInner!180 (regex!1121 (h!11147 rules!3103)) Nil!5745 (size!4567 Nil!5745) input!2705 input!2705 (size!4567 input!2705)))))))

(declare-fun b!584655 () Bool)

(declare-fun res!251866 () Bool)

(assert (=> b!584655 (=> (not res!251866) (not e!353393))))

(assert (=> b!584655 (= res!251866 (= (rule!1881 (_1!3622 (get!2196 lt!247937))) (h!11147 rules!3103)))))

(declare-fun b!584656 () Bool)

(declare-fun res!251870 () Bool)

(assert (=> b!584656 (=> (not res!251870) (not e!353393))))

(assert (=> b!584656 (= res!251870 (< (size!4567 (_2!3622 (get!2196 lt!247937))) (size!4567 input!2705)))))

(declare-fun b!584657 () Bool)

(declare-fun res!251867 () Bool)

(assert (=> b!584657 (=> (not res!251867) (not e!353393))))

(assert (=> b!584657 (= res!251867 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247937)))) (_2!3622 (get!2196 lt!247937))) input!2705))))

(declare-fun d!205576 () Bool)

(assert (=> d!205576 e!353392))

(declare-fun res!251872 () Bool)

(assert (=> d!205576 (=> res!251872 e!353392)))

(assert (=> d!205576 (= res!251872 (isEmpty!4149 lt!247937))))

(declare-fun e!353395 () Option!1472)

(assert (=> d!205576 (= lt!247937 e!353395)))

(declare-fun c!109339 () Bool)

(declare-fun lt!247934 () tuple2!6718)

(assert (=> d!205576 (= c!109339 (isEmpty!4147 (_1!3623 lt!247934)))))

(assert (=> d!205576 (= lt!247934 (findLongestMatch!159 (regex!1121 (h!11147 rules!3103)) input!2705))))

(assert (=> d!205576 (ruleValid!324 thiss!22590 (h!11147 rules!3103))))

(assert (=> d!205576 (= (maxPrefixOneRule!399 thiss!22590 (h!11147 rules!3103) input!2705) lt!247937)))

(declare-fun b!584658 () Bool)

(assert (=> b!584658 (= e!353395 None!1471)))

(declare-fun b!584659 () Bool)

(assert (=> b!584659 (= e!353395 (Some!1471 (tuple2!6717 (Token!1979 (apply!1379 (transformation!1121 (h!11147 rules!3103)) (seqFromList!1302 (_1!3623 lt!247934))) (h!11147 rules!3103) (size!4568 (seqFromList!1302 (_1!3623 lt!247934))) (_1!3623 lt!247934)) (_2!3623 lt!247934))))))

(declare-fun lt!247936 () Unit!10435)

(assert (=> b!584659 (= lt!247936 (longestMatchIsAcceptedByMatchOrIsEmpty!164 (regex!1121 (h!11147 rules!3103)) input!2705))))

(declare-fun res!251871 () Bool)

(assert (=> b!584659 (= res!251871 (isEmpty!4147 (_1!3623 (findLongestMatchInner!180 (regex!1121 (h!11147 rules!3103)) Nil!5745 (size!4567 Nil!5745) input!2705 input!2705 (size!4567 input!2705)))))))

(assert (=> b!584659 (=> res!251871 e!353394)))

(assert (=> b!584659 e!353394))

(declare-fun lt!247935 () Unit!10435)

(assert (=> b!584659 (= lt!247935 lt!247936)))

(declare-fun lt!247938 () Unit!10435)

(assert (=> b!584659 (= lt!247938 (lemmaSemiInverse!217 (transformation!1121 (h!11147 rules!3103)) (seqFromList!1302 (_1!3623 lt!247934))))))

(declare-fun b!584660 () Bool)

(assert (=> b!584660 (= e!353393 (= (size!4566 (_1!3622 (get!2196 lt!247937))) (size!4567 (originalCharacters!1160 (_1!3622 (get!2196 lt!247937))))))))

(assert (= (and d!205576 c!109339) b!584658))

(assert (= (and d!205576 (not c!109339)) b!584659))

(assert (= (and b!584659 (not res!251871)) b!584654))

(assert (= (and d!205576 (not res!251872)) b!584653))

(assert (= (and b!584653 res!251869) b!584657))

(assert (= (and b!584657 res!251867) b!584656))

(assert (= (and b!584656 res!251870) b!584655))

(assert (= (and b!584655 res!251866) b!584652))

(assert (= (and b!584652 res!251868) b!584660))

(assert (=> b!584654 m!844273))

(assert (=> b!584654 m!843827))

(assert (=> b!584654 m!844273))

(assert (=> b!584654 m!843827))

(declare-fun m!844413 () Bool)

(assert (=> b!584654 m!844413))

(declare-fun m!844415 () Bool)

(assert (=> b!584654 m!844415))

(declare-fun m!844417 () Bool)

(assert (=> b!584652 m!844417))

(declare-fun m!844419 () Bool)

(assert (=> b!584652 m!844419))

(assert (=> b!584652 m!844419))

(declare-fun m!844421 () Bool)

(assert (=> b!584652 m!844421))

(declare-fun m!844423 () Bool)

(assert (=> b!584659 m!844423))

(assert (=> b!584659 m!844423))

(declare-fun m!844425 () Bool)

(assert (=> b!584659 m!844425))

(assert (=> b!584659 m!844273))

(assert (=> b!584659 m!844423))

(declare-fun m!844427 () Bool)

(assert (=> b!584659 m!844427))

(assert (=> b!584659 m!844423))

(declare-fun m!844429 () Bool)

(assert (=> b!584659 m!844429))

(declare-fun m!844431 () Bool)

(assert (=> b!584659 m!844431))

(assert (=> b!584659 m!844273))

(assert (=> b!584659 m!843827))

(assert (=> b!584659 m!844413))

(declare-fun m!844433 () Bool)

(assert (=> b!584659 m!844433))

(assert (=> b!584659 m!843827))

(assert (=> b!584660 m!844417))

(declare-fun m!844435 () Bool)

(assert (=> b!584660 m!844435))

(assert (=> b!584655 m!844417))

(assert (=> b!584653 m!844417))

(declare-fun m!844437 () Bool)

(assert (=> b!584653 m!844437))

(assert (=> b!584653 m!844437))

(declare-fun m!844439 () Bool)

(assert (=> b!584653 m!844439))

(assert (=> b!584653 m!844439))

(declare-fun m!844441 () Bool)

(assert (=> b!584653 m!844441))

(assert (=> b!584657 m!844417))

(assert (=> b!584657 m!844437))

(assert (=> b!584657 m!844437))

(assert (=> b!584657 m!844439))

(assert (=> b!584657 m!844439))

(declare-fun m!844443 () Bool)

(assert (=> b!584657 m!844443))

(declare-fun m!844445 () Bool)

(assert (=> d!205576 m!844445))

(declare-fun m!844447 () Bool)

(assert (=> d!205576 m!844447))

(declare-fun m!844449 () Bool)

(assert (=> d!205576 m!844449))

(assert (=> d!205576 m!844313))

(assert (=> b!584656 m!844417))

(declare-fun m!844451 () Bool)

(assert (=> b!584656 m!844451))

(assert (=> b!584656 m!843827))

(assert (=> bm!40176 d!205576))

(declare-fun d!205578 () Bool)

(assert (=> d!205578 true))

(declare-fun order!4695 () Int)

(declare-fun lambda!15845 () Int)

(declare-fun order!4697 () Int)

(declare-fun dynLambda!3351 (Int Int) Int)

(declare-fun dynLambda!3352 (Int Int) Int)

(assert (=> d!205578 (< (dynLambda!3351 order!4695 (toChars!1851 (transformation!1121 (h!11147 rules!3103)))) (dynLambda!3352 order!4697 lambda!15845))))

(assert (=> d!205578 true))

(assert (=> d!205578 (< (dynLambda!3348 order!4691 (toValue!1992 (transformation!1121 (h!11147 rules!3103)))) (dynLambda!3352 order!4697 lambda!15845))))

(declare-fun Forall!289 (Int) Bool)

(assert (=> d!205578 (= (semiInverseModEq!434 (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toValue!1992 (transformation!1121 (h!11147 rules!3103)))) (Forall!289 lambda!15845))))

(declare-fun bs!69969 () Bool)

(assert (= bs!69969 d!205578))

(declare-fun m!844453 () Bool)

(assert (=> bs!69969 m!844453))

(assert (=> d!205380 d!205578))

(declare-fun d!205580 () Bool)

(assert (=> d!205580 (= (isEmpty!4149 lt!247865) (not ((_ is Some!1471) lt!247865)))))

(assert (=> d!205422 d!205580))

(declare-fun b!584668 () Bool)

(declare-fun e!353398 () Bool)

(assert (=> b!584668 (= e!353398 (>= (size!4567 input!2705) (size!4567 input!2705)))))

(declare-fun b!584667 () Bool)

(declare-fun e!353397 () Bool)

(assert (=> b!584667 (= e!353397 (isPrefix!749 (tail!762 input!2705) (tail!762 input!2705)))))

(declare-fun b!584665 () Bool)

(declare-fun e!353396 () Bool)

(assert (=> b!584665 (= e!353396 e!353397)))

(declare-fun res!251873 () Bool)

(assert (=> b!584665 (=> (not res!251873) (not e!353397))))

(assert (=> b!584665 (= res!251873 (not ((_ is Nil!5745) input!2705)))))

(declare-fun b!584666 () Bool)

(declare-fun res!251876 () Bool)

(assert (=> b!584666 (=> (not res!251876) (not e!353397))))

(assert (=> b!584666 (= res!251876 (= (head!1233 input!2705) (head!1233 input!2705)))))

(declare-fun d!205582 () Bool)

(assert (=> d!205582 e!353398))

(declare-fun res!251874 () Bool)

(assert (=> d!205582 (=> res!251874 e!353398)))

(declare-fun lt!247939 () Bool)

(assert (=> d!205582 (= res!251874 (not lt!247939))))

(assert (=> d!205582 (= lt!247939 e!353396)))

(declare-fun res!251875 () Bool)

(assert (=> d!205582 (=> res!251875 e!353396)))

(assert (=> d!205582 (= res!251875 ((_ is Nil!5745) input!2705))))

(assert (=> d!205582 (= (isPrefix!749 input!2705 input!2705) lt!247939)))

(assert (= (and d!205582 (not res!251875)) b!584665))

(assert (= (and b!584665 res!251873) b!584666))

(assert (= (and b!584666 res!251876) b!584667))

(assert (= (and d!205582 (not res!251874)) b!584668))

(assert (=> b!584668 m!843827))

(assert (=> b!584668 m!843827))

(assert (=> b!584667 m!843829))

(assert (=> b!584667 m!843829))

(assert (=> b!584667 m!843829))

(assert (=> b!584667 m!843829))

(declare-fun m!844455 () Bool)

(assert (=> b!584667 m!844455))

(assert (=> b!584666 m!843833))

(assert (=> b!584666 m!843833))

(assert (=> d!205422 d!205582))

(declare-fun d!205584 () Bool)

(assert (=> d!205584 (isPrefix!749 input!2705 input!2705)))

(declare-fun lt!247942 () Unit!10435)

(declare-fun choose!4200 (List!5755 List!5755) Unit!10435)

(assert (=> d!205584 (= lt!247942 (choose!4200 input!2705 input!2705))))

(assert (=> d!205584 (= (lemmaIsPrefixRefl!486 input!2705 input!2705) lt!247942)))

(declare-fun bs!69970 () Bool)

(assert (= bs!69970 d!205584))

(assert (=> bs!69970 m!844017))

(declare-fun m!844457 () Bool)

(assert (=> bs!69970 m!844457))

(assert (=> d!205422 d!205584))

(declare-fun d!205586 () Bool)

(assert (=> d!205586 true))

(declare-fun lt!247945 () Bool)

(declare-fun lambda!15848 () Int)

(declare-fun forall!1541 (List!5756 Int) Bool)

(assert (=> d!205586 (= lt!247945 (forall!1541 rules!3103 lambda!15848))))

(declare-fun e!353403 () Bool)

(assert (=> d!205586 (= lt!247945 e!353403)))

(declare-fun res!251881 () Bool)

(assert (=> d!205586 (=> res!251881 e!353403)))

(assert (=> d!205586 (= res!251881 (not ((_ is Cons!5746) rules!3103)))))

(assert (=> d!205586 (= (rulesValidInductive!403 thiss!22590 rules!3103) lt!247945)))

(declare-fun b!584673 () Bool)

(declare-fun e!353404 () Bool)

(assert (=> b!584673 (= e!353403 e!353404)))

(declare-fun res!251882 () Bool)

(assert (=> b!584673 (=> (not res!251882) (not e!353404))))

(assert (=> b!584673 (= res!251882 (ruleValid!324 thiss!22590 (h!11147 rules!3103)))))

(declare-fun b!584674 () Bool)

(assert (=> b!584674 (= e!353404 (rulesValidInductive!403 thiss!22590 (t!78367 rules!3103)))))

(assert (= (and d!205586 (not res!251881)) b!584673))

(assert (= (and b!584673 res!251882) b!584674))

(declare-fun m!844459 () Bool)

(assert (=> d!205586 m!844459))

(assert (=> b!584673 m!844313))

(declare-fun m!844461 () Bool)

(assert (=> b!584674 m!844461))

(assert (=> d!205422 d!205586))

(declare-fun b!584678 () Bool)

(declare-fun e!353410 () Bool)

(assert (=> b!584678 (= e!353410 (nullable!396 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))))))

(declare-fun b!584679 () Bool)

(declare-fun e!353411 () Bool)

(assert (=> b!584679 (= e!353411 (= (head!1233 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) (c!109243 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun b!584680 () Bool)

(declare-fun res!251890 () Bool)

(declare-fun e!353408 () Bool)

(assert (=> b!584680 (=> res!251890 e!353408)))

(assert (=> b!584680 (= res!251890 (not ((_ is ElementMatch!1455) (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun e!353406 () Bool)

(assert (=> b!584680 (= e!353406 e!353408)))

(declare-fun b!584681 () Bool)

(declare-fun res!251884 () Bool)

(declare-fun e!353407 () Bool)

(assert (=> b!584681 (=> res!251884 e!353407)))

(assert (=> b!584681 (= res!251884 (not (isEmpty!4147 (tail!762 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))))))))

(declare-fun b!584682 () Bool)

(declare-fun e!353409 () Bool)

(declare-fun lt!247946 () Bool)

(declare-fun call!40192 () Bool)

(assert (=> b!584682 (= e!353409 (= lt!247946 call!40192))))

(declare-fun b!584683 () Bool)

(assert (=> b!584683 (= e!353410 (matchR!595 (derivativeStep!309 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))) (head!1233 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))))) (tail!762 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun b!584684 () Bool)

(declare-fun res!251883 () Bool)

(assert (=> b!584684 (=> res!251883 e!353408)))

(assert (=> b!584684 (= res!251883 e!353411)))

(declare-fun res!251889 () Bool)

(assert (=> b!584684 (=> (not res!251889) (not e!353411))))

(assert (=> b!584684 (= res!251889 lt!247946)))

(declare-fun bm!40187 () Bool)

(assert (=> bm!40187 (= call!40192 (isEmpty!4147 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))))))

(declare-fun b!584685 () Bool)

(declare-fun res!251888 () Bool)

(assert (=> b!584685 (=> (not res!251888) (not e!353411))))

(assert (=> b!584685 (= res!251888 (not call!40192))))

(declare-fun b!584686 () Bool)

(declare-fun e!353405 () Bool)

(assert (=> b!584686 (= e!353408 e!353405)))

(declare-fun res!251887 () Bool)

(assert (=> b!584686 (=> (not res!251887) (not e!353405))))

(assert (=> b!584686 (= res!251887 (not lt!247946))))

(declare-fun b!584687 () Bool)

(assert (=> b!584687 (= e!353409 e!353406)))

(declare-fun c!109342 () Bool)

(assert (=> b!584687 (= c!109342 ((_ is EmptyLang!1455) (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))))))

(declare-fun b!584688 () Bool)

(assert (=> b!584688 (= e!353407 (not (= (head!1233 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) (c!109243 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))))))))

(declare-fun d!205588 () Bool)

(assert (=> d!205588 e!353409))

(declare-fun c!109340 () Bool)

(assert (=> d!205588 (= c!109340 ((_ is EmptyExpr!1455) (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))))))

(assert (=> d!205588 (= lt!247946 e!353410)))

(declare-fun c!109341 () Bool)

(assert (=> d!205588 (= c!109341 (isEmpty!4147 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))))))

(assert (=> d!205588 (validRegex!491 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))))

(assert (=> d!205588 (= (matchR!595 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865))))) lt!247946)))

(declare-fun b!584677 () Bool)

(assert (=> b!584677 (= e!353406 (not lt!247946))))

(declare-fun b!584689 () Bool)

(declare-fun res!251886 () Bool)

(assert (=> b!584689 (=> (not res!251886) (not e!353411))))

(assert (=> b!584689 (= res!251886 (isEmpty!4147 (tail!762 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun b!584690 () Bool)

(assert (=> b!584690 (= e!353405 e!353407)))

(declare-fun res!251885 () Bool)

(assert (=> b!584690 (=> res!251885 e!353407)))

(assert (=> b!584690 (= res!251885 call!40192)))

(assert (= (and d!205588 c!109341) b!584678))

(assert (= (and d!205588 (not c!109341)) b!584683))

(assert (= (and d!205588 c!109340) b!584682))

(assert (= (and d!205588 (not c!109340)) b!584687))

(assert (= (and b!584687 c!109342) b!584677))

(assert (= (and b!584687 (not c!109342)) b!584680))

(assert (= (and b!584680 (not res!251890)) b!584684))

(assert (= (and b!584684 res!251889) b!584685))

(assert (= (and b!584685 res!251888) b!584689))

(assert (= (and b!584689 res!251886) b!584679))

(assert (= (and b!584684 (not res!251883)) b!584686))

(assert (= (and b!584686 res!251887) b!584690))

(assert (= (and b!584690 (not res!251885)) b!584681))

(assert (= (and b!584681 (not res!251884)) b!584688))

(assert (= (or b!584682 b!584685 b!584690) bm!40187))

(assert (=> b!584683 m!844025))

(declare-fun m!844463 () Bool)

(assert (=> b!584683 m!844463))

(assert (=> b!584683 m!844463))

(declare-fun m!844465 () Bool)

(assert (=> b!584683 m!844465))

(assert (=> b!584683 m!844025))

(declare-fun m!844467 () Bool)

(assert (=> b!584683 m!844467))

(assert (=> b!584683 m!844465))

(assert (=> b!584683 m!844467))

(declare-fun m!844469 () Bool)

(assert (=> b!584683 m!844469))

(assert (=> b!584679 m!844025))

(assert (=> b!584679 m!844463))

(assert (=> b!584688 m!844025))

(assert (=> b!584688 m!844463))

(assert (=> d!205588 m!844025))

(declare-fun m!844471 () Bool)

(assert (=> d!205588 m!844471))

(declare-fun m!844473 () Bool)

(assert (=> d!205588 m!844473))

(assert (=> bm!40187 m!844025))

(assert (=> bm!40187 m!844471))

(declare-fun m!844475 () Bool)

(assert (=> b!584678 m!844475))

(assert (=> b!584681 m!844025))

(assert (=> b!584681 m!844467))

(assert (=> b!584681 m!844467))

(declare-fun m!844477 () Bool)

(assert (=> b!584681 m!844477))

(assert (=> b!584689 m!844025))

(assert (=> b!584689 m!844467))

(assert (=> b!584689 m!844467))

(assert (=> b!584689 m!844477))

(assert (=> b!584287 d!205588))

(assert (=> b!584287 d!205478))

(assert (=> b!584287 d!205538))

(assert (=> b!584287 d!205540))

(declare-fun d!205590 () Bool)

(declare-fun lt!247947 () Int)

(assert (=> d!205590 (>= lt!247947 0)))

(declare-fun e!353412 () Int)

(assert (=> d!205590 (= lt!247947 e!353412)))

(declare-fun c!109343 () Bool)

(assert (=> d!205590 (= c!109343 ((_ is Nil!5745) (originalCharacters!1160 token!491)))))

(assert (=> d!205590 (= (size!4567 (originalCharacters!1160 token!491)) lt!247947)))

(declare-fun b!584691 () Bool)

(assert (=> b!584691 (= e!353412 0)))

(declare-fun b!584692 () Bool)

(assert (=> b!584692 (= e!353412 (+ 1 (size!4567 (t!78366 (originalCharacters!1160 token!491)))))))

(assert (= (and d!205590 c!109343) b!584691))

(assert (= (and d!205590 (not c!109343)) b!584692))

(declare-fun m!844479 () Bool)

(assert (=> b!584692 m!844479))

(assert (=> b!584224 d!205590))

(declare-fun d!205592 () Bool)

(assert (=> d!205592 (= (isEmpty!4149 lt!247859) (not ((_ is Some!1471) lt!247859)))))

(assert (=> d!205394 d!205592))

(declare-fun b!584696 () Bool)

(declare-fun e!353415 () Bool)

(assert (=> b!584696 (= e!353415 (>= (size!4567 lt!247797) (size!4567 lt!247797)))))

(declare-fun b!584695 () Bool)

(declare-fun e!353414 () Bool)

(assert (=> b!584695 (= e!353414 (isPrefix!749 (tail!762 lt!247797) (tail!762 lt!247797)))))

(declare-fun b!584693 () Bool)

(declare-fun e!353413 () Bool)

(assert (=> b!584693 (= e!353413 e!353414)))

(declare-fun res!251891 () Bool)

(assert (=> b!584693 (=> (not res!251891) (not e!353414))))

(assert (=> b!584693 (= res!251891 (not ((_ is Nil!5745) lt!247797)))))

(declare-fun b!584694 () Bool)

(declare-fun res!251894 () Bool)

(assert (=> b!584694 (=> (not res!251894) (not e!353414))))

(assert (=> b!584694 (= res!251894 (= (head!1233 lt!247797) (head!1233 lt!247797)))))

(declare-fun d!205594 () Bool)

(assert (=> d!205594 e!353415))

(declare-fun res!251892 () Bool)

(assert (=> d!205594 (=> res!251892 e!353415)))

(declare-fun lt!247948 () Bool)

(assert (=> d!205594 (= res!251892 (not lt!247948))))

(assert (=> d!205594 (= lt!247948 e!353413)))

(declare-fun res!251893 () Bool)

(assert (=> d!205594 (=> res!251893 e!353413)))

(assert (=> d!205594 (= res!251893 ((_ is Nil!5745) lt!247797))))

(assert (=> d!205594 (= (isPrefix!749 lt!247797 lt!247797) lt!247948)))

(assert (= (and d!205594 (not res!251893)) b!584693))

(assert (= (and b!584693 res!251891) b!584694))

(assert (= (and b!584694 res!251894) b!584695))

(assert (= (and d!205594 (not res!251892)) b!584696))

(assert (=> b!584696 m!843991))

(assert (=> b!584696 m!843991))

(declare-fun m!844481 () Bool)

(assert (=> b!584695 m!844481))

(assert (=> b!584695 m!844481))

(assert (=> b!584695 m!844481))

(assert (=> b!584695 m!844481))

(declare-fun m!844483 () Bool)

(assert (=> b!584695 m!844483))

(declare-fun m!844485 () Bool)

(assert (=> b!584694 m!844485))

(assert (=> b!584694 m!844485))

(assert (=> d!205394 d!205594))

(declare-fun d!205596 () Bool)

(assert (=> d!205596 (isPrefix!749 lt!247797 lt!247797)))

(declare-fun lt!247949 () Unit!10435)

(assert (=> d!205596 (= lt!247949 (choose!4200 lt!247797 lt!247797))))

(assert (=> d!205596 (= (lemmaIsPrefixRefl!486 lt!247797 lt!247797) lt!247949)))

(declare-fun bs!69971 () Bool)

(assert (= bs!69971 d!205596))

(assert (=> bs!69971 m!843975))

(declare-fun m!844487 () Bool)

(assert (=> bs!69971 m!844487))

(assert (=> d!205394 d!205596))

(assert (=> d!205394 d!205586))

(assert (=> b!584289 d!205478))

(declare-fun d!205598 () Bool)

(assert (=> d!205598 (= (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247865))))) (dynLambda!3350 (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247865))))))))

(declare-fun b_lambda!23045 () Bool)

(assert (=> (not b_lambda!23045) (not d!205598)))

(declare-fun t!78419 () Bool)

(declare-fun tb!51207 () Bool)

(assert (=> (and b!584118 (= (toValue!1992 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78419) tb!51207))

(declare-fun result!57344 () Bool)

(assert (=> tb!51207 (= result!57344 (inv!21 (dynLambda!3350 (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865))))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247865)))))))))

(declare-fun m!844489 () Bool)

(assert (=> tb!51207 m!844489))

(assert (=> d!205598 t!78419))

(declare-fun b_and!57603 () Bool)

(assert (= b_and!57591 (and (=> t!78419 result!57344) b_and!57603)))

(declare-fun tb!51209 () Bool)

(declare-fun t!78421 () Bool)

(assert (=> (and b!584122 (= (toValue!1992 (transformation!1121 (h!11147 rules!3103))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78421) tb!51209))

(declare-fun result!57346 () Bool)

(assert (= result!57346 result!57344))

(assert (=> d!205598 t!78421))

(declare-fun b_and!57605 () Bool)

(assert (= b_and!57593 (and (=> t!78421 result!57346) b_and!57605)))

(declare-fun t!78423 () Bool)

(declare-fun tb!51211 () Bool)

(assert (=> (and b!584317 (= (toValue!1992 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78423) tb!51211))

(declare-fun result!57348 () Bool)

(assert (= result!57348 result!57344))

(assert (=> d!205598 t!78423))

(declare-fun b_and!57607 () Bool)

(assert (= b_and!57595 (and (=> t!78423 result!57348) b_and!57607)))

(assert (=> d!205598 m!844039))

(declare-fun m!844491 () Bool)

(assert (=> d!205598 m!844491))

(assert (=> b!584289 d!205598))

(declare-fun d!205600 () Bool)

(assert (=> d!205600 (= (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247865)))) (fromListB!570 (originalCharacters!1160 (_1!3622 (get!2196 lt!247865)))))))

(declare-fun bs!69972 () Bool)

(assert (= bs!69972 d!205600))

(declare-fun m!844493 () Bool)

(assert (=> bs!69972 m!844493))

(assert (=> b!584289 d!205600))

(declare-fun d!205602 () Bool)

(declare-fun lt!247950 () Int)

(assert (=> d!205602 (>= lt!247950 0)))

(declare-fun e!353417 () Int)

(assert (=> d!205602 (= lt!247950 e!353417)))

(declare-fun c!109344 () Bool)

(assert (=> d!205602 (= c!109344 ((_ is Nil!5745) lt!247816))))

(assert (=> d!205602 (= (size!4567 lt!247816) lt!247950)))

(declare-fun b!584697 () Bool)

(assert (=> b!584697 (= e!353417 0)))

(declare-fun b!584698 () Bool)

(assert (=> b!584698 (= e!353417 (+ 1 (size!4567 (t!78366 lt!247816))))))

(assert (= (and d!205602 c!109344) b!584697))

(assert (= (and d!205602 (not c!109344)) b!584698))

(declare-fun m!844495 () Bool)

(assert (=> b!584698 m!844495))

(assert (=> b!584187 d!205602))

(assert (=> b!584187 d!205350))

(declare-fun d!205604 () Bool)

(declare-fun lt!247951 () Int)

(assert (=> d!205604 (>= lt!247951 0)))

(declare-fun e!353418 () Int)

(assert (=> d!205604 (= lt!247951 e!353418)))

(declare-fun c!109345 () Bool)

(assert (=> d!205604 (= c!109345 ((_ is Nil!5745) (_2!3622 (v!16342 lt!247788))))))

(assert (=> d!205604 (= (size!4567 (_2!3622 (v!16342 lt!247788))) lt!247951)))

(declare-fun b!584699 () Bool)

(assert (=> b!584699 (= e!353418 0)))

(declare-fun b!584700 () Bool)

(assert (=> b!584700 (= e!353418 (+ 1 (size!4567 (t!78366 (_2!3622 (v!16342 lt!247788))))))))

(assert (= (and d!205604 c!109345) b!584699))

(assert (= (and d!205604 (not c!109345)) b!584700))

(declare-fun m!844497 () Bool)

(assert (=> b!584700 m!844497))

(assert (=> b!584187 d!205604))

(declare-fun d!205606 () Bool)

(declare-fun lt!247952 () Int)

(assert (=> d!205606 (>= lt!247952 0)))

(declare-fun e!353419 () Int)

(assert (=> d!205606 (= lt!247952 e!353419)))

(declare-fun c!109346 () Bool)

(assert (=> d!205606 (= c!109346 ((_ is Nil!5745) lt!247825))))

(assert (=> d!205606 (= (size!4567 lt!247825) lt!247952)))

(declare-fun b!584701 () Bool)

(assert (=> b!584701 (= e!353419 0)))

(declare-fun b!584702 () Bool)

(assert (=> b!584702 (= e!353419 (+ 1 (size!4567 (t!78366 lt!247825))))))

(assert (= (and d!205606 c!109346) b!584701))

(assert (= (and d!205606 (not c!109346)) b!584702))

(declare-fun m!844499 () Bool)

(assert (=> b!584702 m!844499))

(assert (=> b!584203 d!205606))

(assert (=> b!584203 d!205366))

(assert (=> b!584203 d!205544))

(declare-fun b!584706 () Bool)

(declare-fun e!353422 () Bool)

(assert (=> b!584706 (= e!353422 (>= (size!4567 (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))) (size!4567 (tail!762 lt!247787))))))

(declare-fun b!584705 () Bool)

(declare-fun e!353421 () Bool)

(assert (=> b!584705 (= e!353421 (isPrefix!749 (tail!762 (tail!762 lt!247787)) (tail!762 (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))))

(declare-fun b!584703 () Bool)

(declare-fun e!353420 () Bool)

(assert (=> b!584703 (= e!353420 e!353421)))

(declare-fun res!251895 () Bool)

(assert (=> b!584703 (=> (not res!251895) (not e!353421))))

(assert (=> b!584703 (= res!251895 (not ((_ is Nil!5745) (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))))

(declare-fun b!584704 () Bool)

(declare-fun res!251898 () Bool)

(assert (=> b!584704 (=> (not res!251898) (not e!353421))))

(assert (=> b!584704 (= res!251898 (= (head!1233 (tail!762 lt!247787)) (head!1233 (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))))

(declare-fun d!205608 () Bool)

(assert (=> d!205608 e!353422))

(declare-fun res!251896 () Bool)

(assert (=> d!205608 (=> res!251896 e!353422)))

(declare-fun lt!247953 () Bool)

(assert (=> d!205608 (= res!251896 (not lt!247953))))

(assert (=> d!205608 (= lt!247953 e!353420)))

(declare-fun res!251897 () Bool)

(assert (=> d!205608 (=> res!251897 e!353420)))

(assert (=> d!205608 (= res!251897 ((_ is Nil!5745) (tail!762 lt!247787)))))

(assert (=> d!205608 (= (isPrefix!749 (tail!762 lt!247787) (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788))))) lt!247953)))

(assert (= (and d!205608 (not res!251897)) b!584703))

(assert (= (and b!584703 res!251895) b!584704))

(assert (= (and b!584704 res!251898) b!584705))

(assert (= (and d!205608 (not res!251896)) b!584706))

(assert (=> b!584706 m!843817))

(declare-fun m!844501 () Bool)

(assert (=> b!584706 m!844501))

(assert (=> b!584706 m!843815))

(declare-fun m!844503 () Bool)

(assert (=> b!584706 m!844503))

(assert (=> b!584705 m!843815))

(declare-fun m!844505 () Bool)

(assert (=> b!584705 m!844505))

(assert (=> b!584705 m!843817))

(declare-fun m!844507 () Bool)

(assert (=> b!584705 m!844507))

(assert (=> b!584705 m!844505))

(assert (=> b!584705 m!844507))

(declare-fun m!844509 () Bool)

(assert (=> b!584705 m!844509))

(assert (=> b!584704 m!843815))

(declare-fun m!844511 () Bool)

(assert (=> b!584704 m!844511))

(assert (=> b!584704 m!843817))

(declare-fun m!844513 () Bool)

(assert (=> b!584704 m!844513))

(assert (=> b!584158 d!205608))

(declare-fun d!205610 () Bool)

(assert (=> d!205610 (= (tail!762 lt!247787) (t!78366 lt!247787))))

(assert (=> b!584158 d!205610))

(declare-fun d!205612 () Bool)

(assert (=> d!205612 (= (tail!762 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))) (t!78366 (++!1609 lt!247787 (_2!3622 (v!16342 lt!247788)))))))

(assert (=> b!584158 d!205612))

(declare-fun d!205614 () Bool)

(assert (=> d!205614 (= (inv!7249 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))) (isBalanced!515 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))))))

(declare-fun bs!69973 () Bool)

(assert (= bs!69973 d!205614))

(declare-fun m!844515 () Bool)

(assert (=> bs!69973 m!844515))

(assert (=> tb!51159 d!205614))

(declare-fun bs!69974 () Bool)

(declare-fun d!205616 () Bool)

(assert (= bs!69974 (and d!205616 d!205578)))

(declare-fun lambda!15849 () Int)

(assert (=> bs!69974 (= (and (= (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toChars!1851 (transformation!1121 (h!11147 rules!3103)))) (= (toValue!1992 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (h!11147 rules!3103))))) (= lambda!15849 lambda!15845))))

(assert (=> d!205616 true))

(assert (=> d!205616 (< (dynLambda!3351 order!4695 (toChars!1851 (transformation!1121 (rule!1881 token!491)))) (dynLambda!3352 order!4697 lambda!15849))))

(assert (=> d!205616 true))

(assert (=> d!205616 (< (dynLambda!3348 order!4691 (toValue!1992 (transformation!1121 (rule!1881 token!491)))) (dynLambda!3352 order!4697 lambda!15849))))

(assert (=> d!205616 (= (semiInverseModEq!434 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toValue!1992 (transformation!1121 (rule!1881 token!491)))) (Forall!289 lambda!15849))))

(declare-fun bs!69975 () Bool)

(assert (= bs!69975 d!205616))

(declare-fun m!844517 () Bool)

(assert (=> bs!69975 m!844517))

(assert (=> d!205346 d!205616))

(declare-fun d!205618 () Bool)

(declare-fun lt!247954 () Int)

(assert (=> d!205618 (>= lt!247954 0)))

(declare-fun e!353423 () Int)

(assert (=> d!205618 (= lt!247954 e!353423)))

(declare-fun c!109347 () Bool)

(assert (=> d!205618 (= c!109347 ((_ is Nil!5745) (_2!3622 (get!2196 lt!247859))))))

(assert (=> d!205618 (= (size!4567 (_2!3622 (get!2196 lt!247859))) lt!247954)))

(declare-fun b!584707 () Bool)

(assert (=> b!584707 (= e!353423 0)))

(declare-fun b!584708 () Bool)

(assert (=> b!584708 (= e!353423 (+ 1 (size!4567 (t!78366 (_2!3622 (get!2196 lt!247859))))))))

(assert (= (and d!205618 c!109347) b!584707))

(assert (= (and d!205618 (not c!109347)) b!584708))

(declare-fun m!844519 () Bool)

(assert (=> b!584708 m!844519))

(assert (=> b!584275 d!205618))

(assert (=> b!584275 d!205462))

(declare-fun d!205620 () Bool)

(declare-fun lt!247955 () Int)

(assert (=> d!205620 (>= lt!247955 0)))

(declare-fun e!353424 () Int)

(assert (=> d!205620 (= lt!247955 e!353424)))

(declare-fun c!109348 () Bool)

(assert (=> d!205620 (= c!109348 ((_ is Nil!5745) lt!247797))))

(assert (=> d!205620 (= (size!4567 lt!247797) lt!247955)))

(declare-fun b!584709 () Bool)

(assert (=> b!584709 (= e!353424 0)))

(declare-fun b!584710 () Bool)

(assert (=> b!584710 (= e!353424 (+ 1 (size!4567 (t!78366 lt!247797))))))

(assert (= (and d!205620 c!109348) b!584709))

(assert (= (and d!205620 (not c!109348)) b!584710))

(declare-fun m!844521 () Bool)

(assert (=> b!584710 m!844521))

(assert (=> b!584275 d!205620))

(declare-fun d!205622 () Bool)

(declare-fun c!109353 () Bool)

(assert (=> d!205622 (= c!109353 ((_ is Empty!1838) (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788))))))))

(declare-fun e!353429 () List!5755)

(assert (=> d!205622 (= (list!2393 (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788))))) e!353429)))

(declare-fun b!584722 () Bool)

(declare-fun e!353430 () List!5755)

(assert (=> b!584722 (= e!353430 (++!1609 (list!2393 (left!4683 (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788)))))) (list!2393 (right!5013 (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788))))))))))

(declare-fun b!584719 () Bool)

(assert (=> b!584719 (= e!353429 Nil!5745)))

(declare-fun b!584721 () Bool)

(declare-fun list!2396 (IArray!3677) List!5755)

(assert (=> b!584721 (= e!353430 (list!2396 (xs!4475 (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788)))))))))

(declare-fun b!584720 () Bool)

(assert (=> b!584720 (= e!353429 e!353430)))

(declare-fun c!109354 () Bool)

(assert (=> b!584720 (= c!109354 ((_ is Leaf!2906) (c!109244 (charsOf!750 (_1!3622 (v!16342 lt!247788))))))))

(assert (= (and d!205622 c!109353) b!584719))

(assert (= (and d!205622 (not c!109353)) b!584720))

(assert (= (and b!584720 c!109354) b!584721))

(assert (= (and b!584720 (not c!109354)) b!584722))

(declare-fun m!844523 () Bool)

(assert (=> b!584722 m!844523))

(declare-fun m!844525 () Bool)

(assert (=> b!584722 m!844525))

(assert (=> b!584722 m!844523))

(assert (=> b!584722 m!844525))

(declare-fun m!844527 () Bool)

(assert (=> b!584722 m!844527))

(declare-fun m!844529 () Bool)

(assert (=> b!584721 m!844529))

(assert (=> d!205364 d!205622))

(declare-fun d!205624 () Bool)

(declare-fun lt!247956 () Bool)

(assert (=> d!205624 (= lt!247956 (select (content!1022 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247865)))))))

(declare-fun e!353431 () Bool)

(assert (=> d!205624 (= lt!247956 e!353431)))

(declare-fun res!251899 () Bool)

(assert (=> d!205624 (=> (not res!251899) (not e!353431))))

(assert (=> d!205624 (= res!251899 ((_ is Cons!5746) rules!3103))))

(assert (=> d!205624 (= (contains!1350 rules!3103 (rule!1881 (_1!3622 (get!2196 lt!247865)))) lt!247956)))

(declare-fun b!584723 () Bool)

(declare-fun e!353432 () Bool)

(assert (=> b!584723 (= e!353431 e!353432)))

(declare-fun res!251900 () Bool)

(assert (=> b!584723 (=> res!251900 e!353432)))

(assert (=> b!584723 (= res!251900 (= (h!11147 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247865)))))))

(declare-fun b!584724 () Bool)

(assert (=> b!584724 (= e!353432 (contains!1350 (t!78367 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247865)))))))

(assert (= (and d!205624 res!251899) b!584723))

(assert (= (and b!584723 (not res!251900)) b!584724))

(assert (=> d!205624 m!844383))

(declare-fun m!844531 () Bool)

(assert (=> d!205624 m!844531))

(declare-fun m!844533 () Bool)

(assert (=> b!584724 m!844533))

(assert (=> b!584284 d!205624))

(assert (=> b!584284 d!205478))

(declare-fun b!584725 () Bool)

(declare-fun e!353433 () Bool)

(declare-fun e!353435 () Bool)

(assert (=> b!584725 (= e!353433 e!353435)))

(declare-fun res!251906 () Bool)

(assert (=> b!584725 (=> (not res!251906) (not e!353435))))

(declare-fun lt!247958 () Option!1472)

(assert (=> b!584725 (= res!251906 (isDefined!1283 lt!247958))))

(declare-fun b!584726 () Bool)

(assert (=> b!584726 (= e!353435 (contains!1350 (t!78367 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247958)))))))

(declare-fun b!584727 () Bool)

(declare-fun res!251903 () Bool)

(assert (=> b!584727 (=> (not res!251903) (not e!353435))))

(assert (=> b!584727 (= res!251903 (= (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247958)))) (originalCharacters!1160 (_1!3622 (get!2196 lt!247958)))))))

(declare-fun call!40193 () Option!1472)

(declare-fun bm!40188 () Bool)

(assert (=> bm!40188 (= call!40193 (maxPrefixOneRule!399 thiss!22590 (h!11147 (t!78367 rules!3103)) lt!247797))))

(declare-fun b!584728 () Bool)

(declare-fun e!353434 () Option!1472)

(assert (=> b!584728 (= e!353434 call!40193)))

(declare-fun b!584729 () Bool)

(declare-fun res!251907 () Bool)

(assert (=> b!584729 (=> (not res!251907) (not e!353435))))

(assert (=> b!584729 (= res!251907 (matchR!595 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247958)))) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247958))))))))

(declare-fun b!584730 () Bool)

(declare-fun res!251901 () Bool)

(assert (=> b!584730 (=> (not res!251901) (not e!353435))))

(assert (=> b!584730 (= res!251901 (< (size!4567 (_2!3622 (get!2196 lt!247958))) (size!4567 lt!247797)))))

(declare-fun d!205626 () Bool)

(assert (=> d!205626 e!353433))

(declare-fun res!251905 () Bool)

(assert (=> d!205626 (=> res!251905 e!353433)))

(assert (=> d!205626 (= res!251905 (isEmpty!4149 lt!247958))))

(assert (=> d!205626 (= lt!247958 e!353434)))

(declare-fun c!109355 () Bool)

(assert (=> d!205626 (= c!109355 (and ((_ is Cons!5746) (t!78367 rules!3103)) ((_ is Nil!5746) (t!78367 (t!78367 rules!3103)))))))

(declare-fun lt!247959 () Unit!10435)

(declare-fun lt!247957 () Unit!10435)

(assert (=> d!205626 (= lt!247959 lt!247957)))

(assert (=> d!205626 (isPrefix!749 lt!247797 lt!247797)))

(assert (=> d!205626 (= lt!247957 (lemmaIsPrefixRefl!486 lt!247797 lt!247797))))

(assert (=> d!205626 (rulesValidInductive!403 thiss!22590 (t!78367 rules!3103))))

(assert (=> d!205626 (= (maxPrefix!705 thiss!22590 (t!78367 rules!3103) lt!247797) lt!247958)))

(declare-fun b!584731 () Bool)

(declare-fun res!251904 () Bool)

(assert (=> b!584731 (=> (not res!251904) (not e!353435))))

(assert (=> b!584731 (= res!251904 (= (value!36815 (_1!3622 (get!2196 lt!247958))) (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247958)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247958)))))))))

(declare-fun b!584732 () Bool)

(declare-fun lt!247961 () Option!1472)

(declare-fun lt!247960 () Option!1472)

(assert (=> b!584732 (= e!353434 (ite (and ((_ is None!1471) lt!247961) ((_ is None!1471) lt!247960)) None!1471 (ite ((_ is None!1471) lt!247960) lt!247961 (ite ((_ is None!1471) lt!247961) lt!247960 (ite (>= (size!4566 (_1!3622 (v!16342 lt!247961))) (size!4566 (_1!3622 (v!16342 lt!247960)))) lt!247961 lt!247960)))))))

(assert (=> b!584732 (= lt!247961 call!40193)))

(assert (=> b!584732 (= lt!247960 (maxPrefix!705 thiss!22590 (t!78367 (t!78367 rules!3103)) lt!247797))))

(declare-fun b!584733 () Bool)

(declare-fun res!251902 () Bool)

(assert (=> b!584733 (=> (not res!251902) (not e!353435))))

(assert (=> b!584733 (= res!251902 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247958)))) (_2!3622 (get!2196 lt!247958))) lt!247797))))

(assert (= (and d!205626 c!109355) b!584728))

(assert (= (and d!205626 (not c!109355)) b!584732))

(assert (= (or b!584728 b!584732) bm!40188))

(assert (= (and d!205626 (not res!251905)) b!584725))

(assert (= (and b!584725 res!251906) b!584727))

(assert (= (and b!584727 res!251903) b!584730))

(assert (= (and b!584730 res!251901) b!584733))

(assert (= (and b!584733 res!251902) b!584731))

(assert (= (and b!584731 res!251904) b!584729))

(assert (= (and b!584729 res!251907) b!584726))

(declare-fun m!844535 () Bool)

(assert (=> bm!40188 m!844535))

(declare-fun m!844537 () Bool)

(assert (=> d!205626 m!844537))

(assert (=> d!205626 m!843975))

(assert (=> d!205626 m!843977))

(assert (=> d!205626 m!844461))

(declare-fun m!844539 () Bool)

(assert (=> b!584733 m!844539))

(declare-fun m!844541 () Bool)

(assert (=> b!584733 m!844541))

(assert (=> b!584733 m!844541))

(declare-fun m!844543 () Bool)

(assert (=> b!584733 m!844543))

(assert (=> b!584733 m!844543))

(declare-fun m!844545 () Bool)

(assert (=> b!584733 m!844545))

(assert (=> b!584730 m!844539))

(declare-fun m!844547 () Bool)

(assert (=> b!584730 m!844547))

(assert (=> b!584730 m!843991))

(declare-fun m!844549 () Bool)

(assert (=> b!584725 m!844549))

(declare-fun m!844551 () Bool)

(assert (=> b!584732 m!844551))

(assert (=> b!584729 m!844539))

(assert (=> b!584729 m!844541))

(assert (=> b!584729 m!844541))

(assert (=> b!584729 m!844543))

(assert (=> b!584729 m!844543))

(declare-fun m!844553 () Bool)

(assert (=> b!584729 m!844553))

(assert (=> b!584727 m!844539))

(assert (=> b!584727 m!844541))

(assert (=> b!584727 m!844541))

(assert (=> b!584727 m!844543))

(assert (=> b!584726 m!844539))

(declare-fun m!844555 () Bool)

(assert (=> b!584726 m!844555))

(assert (=> b!584731 m!844539))

(declare-fun m!844557 () Bool)

(assert (=> b!584731 m!844557))

(assert (=> b!584731 m!844557))

(declare-fun m!844559 () Bool)

(assert (=> b!584731 m!844559))

(assert (=> b!584277 d!205626))

(declare-fun d!205628 () Bool)

(declare-fun lt!247962 () Int)

(assert (=> d!205628 (>= lt!247962 0)))

(declare-fun e!353436 () Int)

(assert (=> d!205628 (= lt!247962 e!353436)))

(declare-fun c!109356 () Bool)

(assert (=> d!205628 (= c!109356 ((_ is Nil!5745) (t!78366 lt!247793)))))

(assert (=> d!205628 (= (size!4567 (t!78366 lt!247793)) lt!247962)))

(declare-fun b!584734 () Bool)

(assert (=> b!584734 (= e!353436 0)))

(declare-fun b!584735 () Bool)

(assert (=> b!584735 (= e!353436 (+ 1 (size!4567 (t!78366 (t!78366 lt!247793)))))))

(assert (= (and d!205628 c!109356) b!584734))

(assert (= (and d!205628 (not c!109356)) b!584735))

(declare-fun m!844561 () Bool)

(assert (=> b!584735 m!844561))

(assert (=> b!584190 d!205628))

(declare-fun d!205630 () Bool)

(declare-fun c!109357 () Bool)

(assert (=> d!205630 (= c!109357 ((_ is Node!1838) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))))))

(declare-fun e!353437 () Bool)

(assert (=> d!205630 (= (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))) e!353437)))

(declare-fun b!584736 () Bool)

(assert (=> b!584736 (= e!353437 (inv!7252 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))))))

(declare-fun b!584737 () Bool)

(declare-fun e!353438 () Bool)

(assert (=> b!584737 (= e!353437 e!353438)))

(declare-fun res!251908 () Bool)

(assert (=> b!584737 (= res!251908 (not ((_ is Leaf!2906) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))))))))

(assert (=> b!584737 (=> res!251908 e!353438)))

(declare-fun b!584738 () Bool)

(assert (=> b!584738 (= e!353438 (inv!7253 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))))))

(assert (= (and d!205630 c!109357) b!584736))

(assert (= (and d!205630 (not c!109357)) b!584737))

(assert (= (and b!584737 (not res!251908)) b!584738))

(declare-fun m!844563 () Bool)

(assert (=> b!584736 m!844563))

(declare-fun m!844565 () Bool)

(assert (=> b!584738 m!844565))

(assert (=> b!584168 d!205630))

(declare-fun d!205632 () Bool)

(assert (=> d!205632 (= (isDefined!1283 lt!247859) (not (isEmpty!4149 lt!247859)))))

(declare-fun bs!69976 () Bool)

(assert (= bs!69976 d!205632))

(assert (=> bs!69976 m!843973))

(assert (=> b!584270 d!205632))

(assert (=> b!584272 d!205458))

(assert (=> b!584272 d!205460))

(assert (=> b!584272 d!205462))

(assert (=> d!205368 d!205590))

(declare-fun b!584742 () Bool)

(declare-fun e!353441 () Bool)

(assert (=> b!584742 (= e!353441 (>= (size!4567 (tail!762 input!2705)) (size!4567 (tail!762 lt!247787))))))

(declare-fun b!584741 () Bool)

(declare-fun e!353440 () Bool)

(assert (=> b!584741 (= e!353440 (isPrefix!749 (tail!762 (tail!762 lt!247787)) (tail!762 (tail!762 input!2705))))))

(declare-fun b!584739 () Bool)

(declare-fun e!353439 () Bool)

(assert (=> b!584739 (= e!353439 e!353440)))

(declare-fun res!251909 () Bool)

(assert (=> b!584739 (=> (not res!251909) (not e!353440))))

(assert (=> b!584739 (= res!251909 (not ((_ is Nil!5745) (tail!762 input!2705))))))

(declare-fun b!584740 () Bool)

(declare-fun res!251912 () Bool)

(assert (=> b!584740 (=> (not res!251912) (not e!353440))))

(assert (=> b!584740 (= res!251912 (= (head!1233 (tail!762 lt!247787)) (head!1233 (tail!762 input!2705))))))

(declare-fun d!205634 () Bool)

(assert (=> d!205634 e!353441))

(declare-fun res!251910 () Bool)

(assert (=> d!205634 (=> res!251910 e!353441)))

(declare-fun lt!247963 () Bool)

(assert (=> d!205634 (= res!251910 (not lt!247963))))

(assert (=> d!205634 (= lt!247963 e!353439)))

(declare-fun res!251911 () Bool)

(assert (=> d!205634 (=> res!251911 e!353439)))

(assert (=> d!205634 (= res!251911 ((_ is Nil!5745) (tail!762 lt!247787)))))

(assert (=> d!205634 (= (isPrefix!749 (tail!762 lt!247787) (tail!762 input!2705)) lt!247963)))

(assert (= (and d!205634 (not res!251911)) b!584739))

(assert (= (and b!584739 res!251909) b!584740))

(assert (= (and b!584740 res!251912) b!584741))

(assert (= (and d!205634 (not res!251910)) b!584742))

(assert (=> b!584742 m!843829))

(declare-fun m!844567 () Bool)

(assert (=> b!584742 m!844567))

(assert (=> b!584742 m!843815))

(assert (=> b!584742 m!844503))

(assert (=> b!584741 m!843815))

(assert (=> b!584741 m!844505))

(assert (=> b!584741 m!843829))

(declare-fun m!844569 () Bool)

(assert (=> b!584741 m!844569))

(assert (=> b!584741 m!844505))

(assert (=> b!584741 m!844569))

(declare-fun m!844571 () Bool)

(assert (=> b!584741 m!844571))

(assert (=> b!584740 m!843815))

(assert (=> b!584740 m!844511))

(assert (=> b!584740 m!843829))

(declare-fun m!844573 () Bool)

(assert (=> b!584740 m!844573))

(assert (=> b!584162 d!205634))

(assert (=> b!584162 d!205610))

(declare-fun d!205636 () Bool)

(assert (=> d!205636 (= (tail!762 input!2705) (t!78366 input!2705))))

(assert (=> b!584162 d!205636))

(declare-fun b!584743 () Bool)

(declare-fun e!353442 () Bool)

(declare-fun e!353444 () Bool)

(assert (=> b!584743 (= e!353442 e!353444)))

(declare-fun res!251918 () Bool)

(assert (=> b!584743 (=> (not res!251918) (not e!353444))))

(declare-fun lt!247965 () Option!1472)

(assert (=> b!584743 (= res!251918 (isDefined!1283 lt!247965))))

(declare-fun b!584744 () Bool)

(assert (=> b!584744 (= e!353444 (contains!1350 (t!78367 rules!3103) (rule!1881 (_1!3622 (get!2196 lt!247965)))))))

(declare-fun b!584745 () Bool)

(declare-fun res!251915 () Bool)

(assert (=> b!584745 (=> (not res!251915) (not e!353444))))

(assert (=> b!584745 (= res!251915 (= (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247965)))) (originalCharacters!1160 (_1!3622 (get!2196 lt!247965)))))))

(declare-fun call!40194 () Option!1472)

(declare-fun bm!40189 () Bool)

(assert (=> bm!40189 (= call!40194 (maxPrefixOneRule!399 thiss!22590 (h!11147 (t!78367 rules!3103)) input!2705))))

(declare-fun b!584746 () Bool)

(declare-fun e!353443 () Option!1472)

(assert (=> b!584746 (= e!353443 call!40194)))

(declare-fun b!584747 () Bool)

(declare-fun res!251919 () Bool)

(assert (=> b!584747 (=> (not res!251919) (not e!353444))))

(assert (=> b!584747 (= res!251919 (matchR!595 (regex!1121 (rule!1881 (_1!3622 (get!2196 lt!247965)))) (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247965))))))))

(declare-fun b!584748 () Bool)

(declare-fun res!251913 () Bool)

(assert (=> b!584748 (=> (not res!251913) (not e!353444))))

(assert (=> b!584748 (= res!251913 (< (size!4567 (_2!3622 (get!2196 lt!247965))) (size!4567 input!2705)))))

(declare-fun d!205638 () Bool)

(assert (=> d!205638 e!353442))

(declare-fun res!251917 () Bool)

(assert (=> d!205638 (=> res!251917 e!353442)))

(assert (=> d!205638 (= res!251917 (isEmpty!4149 lt!247965))))

(assert (=> d!205638 (= lt!247965 e!353443)))

(declare-fun c!109358 () Bool)

(assert (=> d!205638 (= c!109358 (and ((_ is Cons!5746) (t!78367 rules!3103)) ((_ is Nil!5746) (t!78367 (t!78367 rules!3103)))))))

(declare-fun lt!247966 () Unit!10435)

(declare-fun lt!247964 () Unit!10435)

(assert (=> d!205638 (= lt!247966 lt!247964)))

(assert (=> d!205638 (isPrefix!749 input!2705 input!2705)))

(assert (=> d!205638 (= lt!247964 (lemmaIsPrefixRefl!486 input!2705 input!2705))))

(assert (=> d!205638 (rulesValidInductive!403 thiss!22590 (t!78367 rules!3103))))

(assert (=> d!205638 (= (maxPrefix!705 thiss!22590 (t!78367 rules!3103) input!2705) lt!247965)))

(declare-fun b!584749 () Bool)

(declare-fun res!251916 () Bool)

(assert (=> b!584749 (=> (not res!251916) (not e!353444))))

(assert (=> b!584749 (= res!251916 (= (value!36815 (_1!3622 (get!2196 lt!247965))) (apply!1379 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247965)))) (seqFromList!1302 (originalCharacters!1160 (_1!3622 (get!2196 lt!247965)))))))))

(declare-fun b!584750 () Bool)

(declare-fun lt!247968 () Option!1472)

(declare-fun lt!247967 () Option!1472)

(assert (=> b!584750 (= e!353443 (ite (and ((_ is None!1471) lt!247968) ((_ is None!1471) lt!247967)) None!1471 (ite ((_ is None!1471) lt!247967) lt!247968 (ite ((_ is None!1471) lt!247968) lt!247967 (ite (>= (size!4566 (_1!3622 (v!16342 lt!247968))) (size!4566 (_1!3622 (v!16342 lt!247967)))) lt!247968 lt!247967)))))))

(assert (=> b!584750 (= lt!247968 call!40194)))

(assert (=> b!584750 (= lt!247967 (maxPrefix!705 thiss!22590 (t!78367 (t!78367 rules!3103)) input!2705))))

(declare-fun b!584751 () Bool)

(declare-fun res!251914 () Bool)

(assert (=> b!584751 (=> (not res!251914) (not e!353444))))

(assert (=> b!584751 (= res!251914 (= (++!1609 (list!2392 (charsOf!750 (_1!3622 (get!2196 lt!247965)))) (_2!3622 (get!2196 lt!247965))) input!2705))))

(assert (= (and d!205638 c!109358) b!584746))

(assert (= (and d!205638 (not c!109358)) b!584750))

(assert (= (or b!584746 b!584750) bm!40189))

(assert (= (and d!205638 (not res!251917)) b!584743))

(assert (= (and b!584743 res!251918) b!584745))

(assert (= (and b!584745 res!251915) b!584748))

(assert (= (and b!584748 res!251913) b!584751))

(assert (= (and b!584751 res!251914) b!584749))

(assert (= (and b!584749 res!251916) b!584747))

(assert (= (and b!584747 res!251919) b!584744))

(declare-fun m!844575 () Bool)

(assert (=> bm!40189 m!844575))

(declare-fun m!844577 () Bool)

(assert (=> d!205638 m!844577))

(assert (=> d!205638 m!844017))

(assert (=> d!205638 m!844019))

(assert (=> d!205638 m!844461))

(declare-fun m!844579 () Bool)

(assert (=> b!584751 m!844579))

(declare-fun m!844581 () Bool)

(assert (=> b!584751 m!844581))

(assert (=> b!584751 m!844581))

(declare-fun m!844583 () Bool)

(assert (=> b!584751 m!844583))

(assert (=> b!584751 m!844583))

(declare-fun m!844585 () Bool)

(assert (=> b!584751 m!844585))

(assert (=> b!584748 m!844579))

(declare-fun m!844587 () Bool)

(assert (=> b!584748 m!844587))

(assert (=> b!584748 m!843827))

(declare-fun m!844589 () Bool)

(assert (=> b!584743 m!844589))

(declare-fun m!844591 () Bool)

(assert (=> b!584750 m!844591))

(assert (=> b!584747 m!844579))

(assert (=> b!584747 m!844581))

(assert (=> b!584747 m!844581))

(assert (=> b!584747 m!844583))

(assert (=> b!584747 m!844583))

(declare-fun m!844593 () Bool)

(assert (=> b!584747 m!844593))

(assert (=> b!584745 m!844579))

(assert (=> b!584745 m!844581))

(assert (=> b!584745 m!844581))

(assert (=> b!584745 m!844583))

(assert (=> b!584744 m!844579))

(declare-fun m!844595 () Bool)

(assert (=> b!584744 m!844595))

(assert (=> b!584749 m!844579))

(declare-fun m!844597 () Bool)

(assert (=> b!584749 m!844597))

(assert (=> b!584749 m!844597))

(declare-fun m!844599 () Bool)

(assert (=> b!584749 m!844599))

(assert (=> b!584290 d!205638))

(declare-fun d!205640 () Bool)

(assert (=> d!205640 (= (isEmpty!4149 lt!247789) (not ((_ is Some!1471) lt!247789)))))

(assert (=> d!205390 d!205640))

(declare-fun d!205642 () Bool)

(declare-fun charsToBigInt!1 (List!5754) Int)

(assert (=> d!205642 (= (inv!17 (value!36815 token!491)) (= (charsToBigInt!1 (text!8463 (value!36815 token!491))) (value!36808 (value!36815 token!491))))))

(declare-fun bs!69977 () Bool)

(assert (= bs!69977 d!205642))

(declare-fun m!844601 () Bool)

(assert (=> bs!69977 m!844601))

(assert (=> b!584305 d!205642))

(declare-fun d!205644 () Bool)

(declare-fun c!109359 () Bool)

(assert (=> d!205644 (= c!109359 ((_ is Empty!1838) (c!109244 (charsOf!750 token!491))))))

(declare-fun e!353445 () List!5755)

(assert (=> d!205644 (= (list!2393 (c!109244 (charsOf!750 token!491))) e!353445)))

(declare-fun b!584755 () Bool)

(declare-fun e!353446 () List!5755)

(assert (=> b!584755 (= e!353446 (++!1609 (list!2393 (left!4683 (c!109244 (charsOf!750 token!491)))) (list!2393 (right!5013 (c!109244 (charsOf!750 token!491))))))))

(declare-fun b!584752 () Bool)

(assert (=> b!584752 (= e!353445 Nil!5745)))

(declare-fun b!584754 () Bool)

(assert (=> b!584754 (= e!353446 (list!2396 (xs!4475 (c!109244 (charsOf!750 token!491)))))))

(declare-fun b!584753 () Bool)

(assert (=> b!584753 (= e!353445 e!353446)))

(declare-fun c!109360 () Bool)

(assert (=> b!584753 (= c!109360 ((_ is Leaf!2906) (c!109244 (charsOf!750 token!491))))))

(assert (= (and d!205644 c!109359) b!584752))

(assert (= (and d!205644 (not c!109359)) b!584753))

(assert (= (and b!584753 c!109360) b!584754))

(assert (= (and b!584753 (not c!109360)) b!584755))

(declare-fun m!844603 () Bool)

(assert (=> b!584755 m!844603))

(declare-fun m!844605 () Bool)

(assert (=> b!584755 m!844605))

(assert (=> b!584755 m!844603))

(assert (=> b!584755 m!844605))

(declare-fun m!844607 () Bool)

(assert (=> b!584755 m!844607))

(declare-fun m!844609 () Bool)

(assert (=> b!584754 m!844609))

(assert (=> d!205382 d!205644))

(declare-fun d!205646 () Bool)

(assert (=> d!205646 (and (= lt!247793 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!205646 true))

(declare-fun _$50!241 () Unit!10435)

(assert (=> d!205646 (= (choose!4196 lt!247793 suffix!1342 input!2705 suffix!1342) _$50!241)))

(assert (=> d!205354 d!205646))

(assert (=> d!205354 d!205376))

(assert (=> d!205354 d!205420))

(declare-fun b!584757 () Bool)

(declare-fun e!353447 () List!5755)

(assert (=> b!584757 (= e!353447 (Cons!5745 (h!11146 (t!78366 input!2705)) (++!1609 (t!78366 (t!78366 input!2705)) suffix!1342)))))

(declare-fun lt!247969 () List!5755)

(declare-fun e!353448 () Bool)

(declare-fun b!584759 () Bool)

(assert (=> b!584759 (= e!353448 (or (not (= suffix!1342 Nil!5745)) (= lt!247969 (t!78366 input!2705))))))

(declare-fun b!584758 () Bool)

(declare-fun res!251921 () Bool)

(assert (=> b!584758 (=> (not res!251921) (not e!353448))))

(assert (=> b!584758 (= res!251921 (= (size!4567 lt!247969) (+ (size!4567 (t!78366 input!2705)) (size!4567 suffix!1342))))))

(declare-fun b!584756 () Bool)

(assert (=> b!584756 (= e!353447 suffix!1342)))

(declare-fun d!205648 () Bool)

(assert (=> d!205648 e!353448))

(declare-fun res!251920 () Bool)

(assert (=> d!205648 (=> (not res!251920) (not e!353448))))

(assert (=> d!205648 (= res!251920 (= (content!1020 lt!247969) ((_ map or) (content!1020 (t!78366 input!2705)) (content!1020 suffix!1342))))))

(assert (=> d!205648 (= lt!247969 e!353447)))

(declare-fun c!109361 () Bool)

(assert (=> d!205648 (= c!109361 ((_ is Nil!5745) (t!78366 input!2705)))))

(assert (=> d!205648 (= (++!1609 (t!78366 input!2705) suffix!1342) lt!247969)))

(assert (= (and d!205648 c!109361) b!584756))

(assert (= (and d!205648 (not c!109361)) b!584757))

(assert (= (and d!205648 res!251920) b!584758))

(assert (= (and b!584758 res!251921) b!584759))

(declare-fun m!844611 () Bool)

(assert (=> b!584757 m!844611))

(declare-fun m!844613 () Bool)

(assert (=> b!584758 m!844613))

(assert (=> b!584758 m!844205))

(assert (=> b!584758 m!843883))

(declare-fun m!844615 () Bool)

(assert (=> d!205648 m!844615))

(assert (=> d!205648 m!844195))

(assert (=> d!205648 m!843889))

(assert (=> b!584280 d!205648))

(declare-fun d!205650 () Bool)

(declare-fun lt!247970 () List!5755)

(assert (=> d!205650 (= (++!1609 (t!78366 lt!247787) lt!247970) (tail!762 input!2705))))

(declare-fun e!353449 () List!5755)

(assert (=> d!205650 (= lt!247970 e!353449)))

(declare-fun c!109362 () Bool)

(assert (=> d!205650 (= c!109362 ((_ is Cons!5745) (t!78366 lt!247787)))))

(assert (=> d!205650 (>= (size!4567 (tail!762 input!2705)) (size!4567 (t!78366 lt!247787)))))

(assert (=> d!205650 (= (getSuffix!266 (tail!762 input!2705) (t!78366 lt!247787)) lt!247970)))

(declare-fun b!584760 () Bool)

(assert (=> b!584760 (= e!353449 (getSuffix!266 (tail!762 (tail!762 input!2705)) (t!78366 (t!78366 lt!247787))))))

(declare-fun b!584761 () Bool)

(assert (=> b!584761 (= e!353449 (tail!762 input!2705))))

(assert (= (and d!205650 c!109362) b!584760))

(assert (= (and d!205650 (not c!109362)) b!584761))

(declare-fun m!844617 () Bool)

(assert (=> d!205650 m!844617))

(assert (=> d!205650 m!843829))

(assert (=> d!205650 m!844567))

(assert (=> d!205650 m!843811))

(assert (=> b!584760 m!843829))

(assert (=> b!584760 m!844569))

(assert (=> b!584760 m!844569))

(declare-fun m!844619 () Bool)

(assert (=> b!584760 m!844619))

(assert (=> b!584199 d!205650))

(assert (=> b!584199 d!205636))

(declare-fun bs!69978 () Bool)

(declare-fun d!205652 () Bool)

(assert (= bs!69978 (and d!205652 d!205586)))

(declare-fun lambda!15852 () Int)

(assert (=> bs!69978 (= lambda!15852 lambda!15848)))

(assert (=> d!205652 true))

(declare-fun lt!247973 () Bool)

(assert (=> d!205652 (= lt!247973 (rulesValidInductive!403 thiss!22590 rules!3103))))

(assert (=> d!205652 (= lt!247973 (forall!1541 rules!3103 lambda!15852))))

(assert (=> d!205652 (= (rulesValid!398 thiss!22590 rules!3103) lt!247973)))

(declare-fun bs!69979 () Bool)

(assert (= bs!69979 d!205652))

(assert (=> bs!69979 m!843979))

(declare-fun m!844621 () Bool)

(assert (=> bs!69979 m!844621))

(assert (=> d!205340 d!205652))

(declare-fun b!584762 () Bool)

(declare-fun e!353450 () Bool)

(assert (=> b!584762 (= e!353450 tp_is_empty!3265)))

(declare-fun b!584765 () Bool)

(declare-fun tp!182378 () Bool)

(declare-fun tp!182377 () Bool)

(assert (=> b!584765 (= e!353450 (and tp!182378 tp!182377))))

(declare-fun b!584763 () Bool)

(declare-fun tp!182376 () Bool)

(declare-fun tp!182380 () Bool)

(assert (=> b!584763 (= e!353450 (and tp!182376 tp!182380))))

(assert (=> b!584335 (= tp!182326 e!353450)))

(declare-fun b!584764 () Bool)

(declare-fun tp!182379 () Bool)

(assert (=> b!584764 (= e!353450 tp!182379)))

(assert (= (and b!584335 ((_ is ElementMatch!1455) (reg!1784 (regex!1121 (rule!1881 token!491))))) b!584762))

(assert (= (and b!584335 ((_ is Concat!2600) (reg!1784 (regex!1121 (rule!1881 token!491))))) b!584763))

(assert (= (and b!584335 ((_ is Star!1455) (reg!1784 (regex!1121 (rule!1881 token!491))))) b!584764))

(assert (= (and b!584335 ((_ is Union!1455) (reg!1784 (regex!1121 (rule!1881 token!491))))) b!584765))

(declare-fun b!584766 () Bool)

(declare-fun e!353451 () Bool)

(assert (=> b!584766 (= e!353451 tp_is_empty!3265)))

(declare-fun b!584769 () Bool)

(declare-fun tp!182383 () Bool)

(declare-fun tp!182382 () Bool)

(assert (=> b!584769 (= e!353451 (and tp!182383 tp!182382))))

(declare-fun b!584767 () Bool)

(declare-fun tp!182381 () Bool)

(declare-fun tp!182385 () Bool)

(assert (=> b!584767 (= e!353451 (and tp!182381 tp!182385))))

(assert (=> b!584339 (= tp!182331 e!353451)))

(declare-fun b!584768 () Bool)

(declare-fun tp!182384 () Bool)

(assert (=> b!584768 (= e!353451 tp!182384)))

(assert (= (and b!584339 ((_ is ElementMatch!1455) (reg!1784 (regex!1121 (h!11147 rules!3103))))) b!584766))

(assert (= (and b!584339 ((_ is Concat!2600) (reg!1784 (regex!1121 (h!11147 rules!3103))))) b!584767))

(assert (= (and b!584339 ((_ is Star!1455) (reg!1784 (regex!1121 (h!11147 rules!3103))))) b!584768))

(assert (= (and b!584339 ((_ is Union!1455) (reg!1784 (regex!1121 (h!11147 rules!3103))))) b!584769))

(declare-fun b!584770 () Bool)

(declare-fun e!353452 () Bool)

(assert (=> b!584770 (= e!353452 tp_is_empty!3265)))

(declare-fun b!584773 () Bool)

(declare-fun tp!182388 () Bool)

(declare-fun tp!182387 () Bool)

(assert (=> b!584773 (= e!353452 (and tp!182388 tp!182387))))

(declare-fun b!584771 () Bool)

(declare-fun tp!182386 () Bool)

(declare-fun tp!182390 () Bool)

(assert (=> b!584771 (= e!353452 (and tp!182386 tp!182390))))

(assert (=> b!584334 (= tp!182323 e!353452)))

(declare-fun b!584772 () Bool)

(declare-fun tp!182389 () Bool)

(assert (=> b!584772 (= e!353452 tp!182389)))

(assert (= (and b!584334 ((_ is ElementMatch!1455) (regOne!3422 (regex!1121 (rule!1881 token!491))))) b!584770))

(assert (= (and b!584334 ((_ is Concat!2600) (regOne!3422 (regex!1121 (rule!1881 token!491))))) b!584771))

(assert (= (and b!584334 ((_ is Star!1455) (regOne!3422 (regex!1121 (rule!1881 token!491))))) b!584772))

(assert (= (and b!584334 ((_ is Union!1455) (regOne!3422 (regex!1121 (rule!1881 token!491))))) b!584773))

(declare-fun b!584774 () Bool)

(declare-fun e!353453 () Bool)

(assert (=> b!584774 (= e!353453 tp_is_empty!3265)))

(declare-fun b!584777 () Bool)

(declare-fun tp!182393 () Bool)

(declare-fun tp!182392 () Bool)

(assert (=> b!584777 (= e!353453 (and tp!182393 tp!182392))))

(declare-fun b!584775 () Bool)

(declare-fun tp!182391 () Bool)

(declare-fun tp!182395 () Bool)

(assert (=> b!584775 (= e!353453 (and tp!182391 tp!182395))))

(assert (=> b!584334 (= tp!182327 e!353453)))

(declare-fun b!584776 () Bool)

(declare-fun tp!182394 () Bool)

(assert (=> b!584776 (= e!353453 tp!182394)))

(assert (= (and b!584334 ((_ is ElementMatch!1455) (regTwo!3422 (regex!1121 (rule!1881 token!491))))) b!584774))

(assert (= (and b!584334 ((_ is Concat!2600) (regTwo!3422 (regex!1121 (rule!1881 token!491))))) b!584775))

(assert (= (and b!584334 ((_ is Star!1455) (regTwo!3422 (regex!1121 (rule!1881 token!491))))) b!584776))

(assert (= (and b!584334 ((_ is Union!1455) (regTwo!3422 (regex!1121 (rule!1881 token!491))))) b!584777))

(declare-fun b!584778 () Bool)

(declare-fun e!353454 () Bool)

(assert (=> b!584778 (= e!353454 tp_is_empty!3265)))

(declare-fun b!584781 () Bool)

(declare-fun tp!182398 () Bool)

(declare-fun tp!182397 () Bool)

(assert (=> b!584781 (= e!353454 (and tp!182398 tp!182397))))

(declare-fun b!584779 () Bool)

(declare-fun tp!182396 () Bool)

(declare-fun tp!182400 () Bool)

(assert (=> b!584779 (= e!353454 (and tp!182396 tp!182400))))

(assert (=> b!584338 (= tp!182328 e!353454)))

(declare-fun b!584780 () Bool)

(declare-fun tp!182399 () Bool)

(assert (=> b!584780 (= e!353454 tp!182399)))

(assert (= (and b!584338 ((_ is ElementMatch!1455) (regOne!3422 (regex!1121 (h!11147 rules!3103))))) b!584778))

(assert (= (and b!584338 ((_ is Concat!2600) (regOne!3422 (regex!1121 (h!11147 rules!3103))))) b!584779))

(assert (= (and b!584338 ((_ is Star!1455) (regOne!3422 (regex!1121 (h!11147 rules!3103))))) b!584780))

(assert (= (and b!584338 ((_ is Union!1455) (regOne!3422 (regex!1121 (h!11147 rules!3103))))) b!584781))

(declare-fun b!584782 () Bool)

(declare-fun e!353455 () Bool)

(assert (=> b!584782 (= e!353455 tp_is_empty!3265)))

(declare-fun b!584785 () Bool)

(declare-fun tp!182403 () Bool)

(declare-fun tp!182402 () Bool)

(assert (=> b!584785 (= e!353455 (and tp!182403 tp!182402))))

(declare-fun b!584783 () Bool)

(declare-fun tp!182401 () Bool)

(declare-fun tp!182405 () Bool)

(assert (=> b!584783 (= e!353455 (and tp!182401 tp!182405))))

(assert (=> b!584338 (= tp!182332 e!353455)))

(declare-fun b!584784 () Bool)

(declare-fun tp!182404 () Bool)

(assert (=> b!584784 (= e!353455 tp!182404)))

(assert (= (and b!584338 ((_ is ElementMatch!1455) (regTwo!3422 (regex!1121 (h!11147 rules!3103))))) b!584782))

(assert (= (and b!584338 ((_ is Concat!2600) (regTwo!3422 (regex!1121 (h!11147 rules!3103))))) b!584783))

(assert (= (and b!584338 ((_ is Star!1455) (regTwo!3422 (regex!1121 (h!11147 rules!3103))))) b!584784))

(assert (= (and b!584338 ((_ is Union!1455) (regTwo!3422 (regex!1121 (h!11147 rules!3103))))) b!584785))

(declare-fun b!584794 () Bool)

(declare-fun e!353460 () Bool)

(declare-fun tp!182412 () Bool)

(declare-fun tp!182414 () Bool)

(assert (=> b!584794 (= e!353460 (and (inv!7248 (left!4683 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))))) tp!182412 (inv!7248 (right!5013 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))))) tp!182414))))

(declare-fun b!584796 () Bool)

(declare-fun e!353461 () Bool)

(declare-fun tp!182413 () Bool)

(assert (=> b!584796 (= e!353461 tp!182413)))

(declare-fun b!584795 () Bool)

(declare-fun inv!7256 (IArray!3677) Bool)

(assert (=> b!584795 (= e!353460 (and (inv!7256 (xs!4475 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))))) e!353461))))

(assert (=> b!584168 (= tp!182293 (and (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788)))))) e!353460))))

(assert (= (and b!584168 ((_ is Node!1838) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))))) b!584794))

(assert (= b!584795 b!584796))

(assert (= (and b!584168 ((_ is Leaf!2906) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))) (value!36815 (_1!3622 (v!16342 lt!247788))))))) b!584795))

(declare-fun m!844623 () Bool)

(assert (=> b!584794 m!844623))

(declare-fun m!844625 () Bool)

(assert (=> b!584794 m!844625))

(declare-fun m!844627 () Bool)

(assert (=> b!584795 m!844627))

(assert (=> b!584168 m!843835))

(declare-fun b!584797 () Bool)

(declare-fun e!353462 () Bool)

(declare-fun tp!182415 () Bool)

(assert (=> b!584797 (= e!353462 (and tp_is_empty!3265 tp!182415))))

(assert (=> b!584322 (= tp!182312 e!353462)))

(assert (= (and b!584322 ((_ is Cons!5745) (t!78366 (t!78366 input!2705)))) b!584797))

(declare-fun b!584798 () Bool)

(declare-fun e!353463 () Bool)

(declare-fun tp!182416 () Bool)

(assert (=> b!584798 (= e!353463 (and tp_is_empty!3265 tp!182416))))

(assert (=> b!584342 (= tp!182334 e!353463)))

(assert (= (and b!584342 ((_ is Cons!5745) (t!78366 (t!78366 suffix!1342)))) b!584798))

(declare-fun b!584799 () Bool)

(declare-fun e!353464 () Bool)

(assert (=> b!584799 (= e!353464 tp_is_empty!3265)))

(declare-fun b!584802 () Bool)

(declare-fun tp!182419 () Bool)

(declare-fun tp!182418 () Bool)

(assert (=> b!584802 (= e!353464 (and tp!182419 tp!182418))))

(declare-fun b!584800 () Bool)

(declare-fun tp!182417 () Bool)

(declare-fun tp!182421 () Bool)

(assert (=> b!584800 (= e!353464 (and tp!182417 tp!182421))))

(assert (=> b!584316 (= tp!182307 e!353464)))

(declare-fun b!584801 () Bool)

(declare-fun tp!182420 () Bool)

(assert (=> b!584801 (= e!353464 tp!182420)))

(assert (= (and b!584316 ((_ is ElementMatch!1455) (regex!1121 (h!11147 (t!78367 rules!3103))))) b!584799))

(assert (= (and b!584316 ((_ is Concat!2600) (regex!1121 (h!11147 (t!78367 rules!3103))))) b!584800))

(assert (= (and b!584316 ((_ is Star!1455) (regex!1121 (h!11147 (t!78367 rules!3103))))) b!584801))

(assert (= (and b!584316 ((_ is Union!1455) (regex!1121 (h!11147 (t!78367 rules!3103))))) b!584802))

(declare-fun b!584805 () Bool)

(declare-fun b_free!16301 () Bool)

(declare-fun b_next!16317 () Bool)

(assert (=> b!584805 (= b_free!16301 (not b_next!16317))))

(declare-fun t!78426 () Bool)

(declare-fun tb!51213 () Bool)

(assert (=> (and b!584805 (= (toValue!1992 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78426) tb!51213))

(declare-fun result!57352 () Bool)

(assert (= result!57352 result!57330))

(assert (=> d!205530 t!78426))

(declare-fun t!78428 () Bool)

(declare-fun tb!51215 () Bool)

(assert (=> (and b!584805 (= (toValue!1992 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toValue!1992 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78428) tb!51215))

(declare-fun result!57354 () Bool)

(assert (= result!57354 result!57344))

(assert (=> d!205598 t!78428))

(declare-fun b_and!57609 () Bool)

(declare-fun tp!182425 () Bool)

(assert (=> b!584805 (= tp!182425 (and (=> t!78426 result!57352) (=> t!78428 result!57354) b_and!57609))))

(declare-fun b_free!16303 () Bool)

(declare-fun b_next!16319 () Bool)

(assert (=> b!584805 (= b_free!16303 (not b_next!16319))))

(declare-fun tb!51217 () Bool)

(declare-fun t!78430 () Bool)

(assert (=> (and b!584805 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788)))))) t!78430) tb!51217))

(declare-fun result!57356 () Bool)

(assert (= result!57356 result!57278))

(assert (=> d!205360 t!78430))

(declare-fun tb!51219 () Bool)

(declare-fun t!78432 () Bool)

(assert (=> (and b!584805 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247865)))))) t!78432) tb!51219))

(declare-fun result!57358 () Bool)

(assert (= result!57358 result!57338))

(assert (=> d!205540 t!78432))

(declare-fun tb!51221 () Bool)

(declare-fun t!78434 () Bool)

(assert (=> (and b!584805 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toChars!1851 (transformation!1121 (rule!1881 token!491)))) t!78434) tb!51221))

(declare-fun result!57360 () Bool)

(assert (= result!57360 result!57284))

(assert (=> b!584223 t!78434))

(declare-fun tb!51223 () Bool)

(declare-fun t!78436 () Bool)

(assert (=> (and b!584805 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (get!2196 lt!247859)))))) t!78436) tb!51223))

(declare-fun result!57362 () Bool)

(assert (= result!57362 result!57318))

(assert (=> d!205460 t!78436))

(assert (=> d!205384 t!78434))

(declare-fun b_and!57611 () Bool)

(declare-fun tp!182424 () Bool)

(assert (=> b!584805 (= tp!182424 (and (=> t!78434 result!57360) (=> t!78436 result!57362) (=> t!78430 result!57356) (=> t!78432 result!57358) b_and!57611))))

(declare-fun e!353467 () Bool)

(assert (=> b!584805 (= e!353467 (and tp!182425 tp!182424))))

(declare-fun tp!182423 () Bool)

(declare-fun e!353466 () Bool)

(declare-fun b!584804 () Bool)

(assert (=> b!584804 (= e!353466 (and tp!182423 (inv!7243 (tag!1383 (h!11147 (t!78367 (t!78367 rules!3103))))) (inv!7246 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) e!353467))))

(declare-fun b!584803 () Bool)

(declare-fun e!353468 () Bool)

(declare-fun tp!182422 () Bool)

(assert (=> b!584803 (= e!353468 (and e!353466 tp!182422))))

(assert (=> b!584315 (= tp!182306 e!353468)))

(assert (= b!584804 b!584805))

(assert (= b!584803 b!584804))

(assert (= (and b!584315 ((_ is Cons!5746) (t!78367 (t!78367 rules!3103)))) b!584803))

(declare-fun m!844629 () Bool)

(assert (=> b!584804 m!844629))

(declare-fun m!844631 () Bool)

(assert (=> b!584804 m!844631))

(declare-fun e!353469 () Bool)

(declare-fun tp!182426 () Bool)

(declare-fun tp!182428 () Bool)

(declare-fun b!584806 () Bool)

(assert (=> b!584806 (= e!353469 (and (inv!7248 (left!4683 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))))) tp!182426 (inv!7248 (right!5013 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))))) tp!182428))))

(declare-fun b!584808 () Bool)

(declare-fun e!353470 () Bool)

(declare-fun tp!182427 () Bool)

(assert (=> b!584808 (= e!353470 tp!182427)))

(declare-fun b!584807 () Bool)

(assert (=> b!584807 (= e!353469 (and (inv!7256 (xs!4475 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))))) e!353470))))

(assert (=> b!584212 (= tp!182294 (and (inv!7248 (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491)))) e!353469))))

(assert (= (and b!584212 ((_ is Node!1838) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))))) b!584806))

(assert (= b!584807 b!584808))

(assert (= (and b!584212 ((_ is Leaf!2906) (c!109244 (dynLambda!3346 (toChars!1851 (transformation!1121 (rule!1881 token!491))) (value!36815 token!491))))) b!584807))

(declare-fun m!844633 () Bool)

(assert (=> b!584806 m!844633))

(declare-fun m!844635 () Bool)

(assert (=> b!584806 m!844635))

(declare-fun m!844637 () Bool)

(assert (=> b!584807 m!844637))

(assert (=> b!584212 m!843897))

(declare-fun b!584809 () Bool)

(declare-fun e!353471 () Bool)

(declare-fun tp!182429 () Bool)

(assert (=> b!584809 (= e!353471 (and tp_is_empty!3265 tp!182429))))

(assert (=> b!584341 (= tp!182333 e!353471)))

(assert (= (and b!584341 ((_ is Cons!5745) (t!78366 (originalCharacters!1160 token!491)))) b!584809))

(declare-fun b!584810 () Bool)

(declare-fun e!353472 () Bool)

(assert (=> b!584810 (= e!353472 tp_is_empty!3265)))

(declare-fun b!584813 () Bool)

(declare-fun tp!182432 () Bool)

(declare-fun tp!182431 () Bool)

(assert (=> b!584813 (= e!353472 (and tp!182432 tp!182431))))

(declare-fun b!584811 () Bool)

(declare-fun tp!182430 () Bool)

(declare-fun tp!182434 () Bool)

(assert (=> b!584811 (= e!353472 (and tp!182430 tp!182434))))

(assert (=> b!584336 (= tp!182325 e!353472)))

(declare-fun b!584812 () Bool)

(declare-fun tp!182433 () Bool)

(assert (=> b!584812 (= e!353472 tp!182433)))

(assert (= (and b!584336 ((_ is ElementMatch!1455) (regOne!3423 (regex!1121 (rule!1881 token!491))))) b!584810))

(assert (= (and b!584336 ((_ is Concat!2600) (regOne!3423 (regex!1121 (rule!1881 token!491))))) b!584811))

(assert (= (and b!584336 ((_ is Star!1455) (regOne!3423 (regex!1121 (rule!1881 token!491))))) b!584812))

(assert (= (and b!584336 ((_ is Union!1455) (regOne!3423 (regex!1121 (rule!1881 token!491))))) b!584813))

(declare-fun b!584814 () Bool)

(declare-fun e!353473 () Bool)

(assert (=> b!584814 (= e!353473 tp_is_empty!3265)))

(declare-fun b!584817 () Bool)

(declare-fun tp!182437 () Bool)

(declare-fun tp!182436 () Bool)

(assert (=> b!584817 (= e!353473 (and tp!182437 tp!182436))))

(declare-fun b!584815 () Bool)

(declare-fun tp!182435 () Bool)

(declare-fun tp!182439 () Bool)

(assert (=> b!584815 (= e!353473 (and tp!182435 tp!182439))))

(assert (=> b!584336 (= tp!182324 e!353473)))

(declare-fun b!584816 () Bool)

(declare-fun tp!182438 () Bool)

(assert (=> b!584816 (= e!353473 tp!182438)))

(assert (= (and b!584336 ((_ is ElementMatch!1455) (regTwo!3423 (regex!1121 (rule!1881 token!491))))) b!584814))

(assert (= (and b!584336 ((_ is Concat!2600) (regTwo!3423 (regex!1121 (rule!1881 token!491))))) b!584815))

(assert (= (and b!584336 ((_ is Star!1455) (regTwo!3423 (regex!1121 (rule!1881 token!491))))) b!584816))

(assert (= (and b!584336 ((_ is Union!1455) (regTwo!3423 (regex!1121 (rule!1881 token!491))))) b!584817))

(declare-fun b!584818 () Bool)

(declare-fun e!353474 () Bool)

(assert (=> b!584818 (= e!353474 tp_is_empty!3265)))

(declare-fun b!584821 () Bool)

(declare-fun tp!182442 () Bool)

(declare-fun tp!182441 () Bool)

(assert (=> b!584821 (= e!353474 (and tp!182442 tp!182441))))

(declare-fun b!584819 () Bool)

(declare-fun tp!182440 () Bool)

(declare-fun tp!182444 () Bool)

(assert (=> b!584819 (= e!353474 (and tp!182440 tp!182444))))

(assert (=> b!584340 (= tp!182330 e!353474)))

(declare-fun b!584820 () Bool)

(declare-fun tp!182443 () Bool)

(assert (=> b!584820 (= e!353474 tp!182443)))

(assert (= (and b!584340 ((_ is ElementMatch!1455) (regOne!3423 (regex!1121 (h!11147 rules!3103))))) b!584818))

(assert (= (and b!584340 ((_ is Concat!2600) (regOne!3423 (regex!1121 (h!11147 rules!3103))))) b!584819))

(assert (= (and b!584340 ((_ is Star!1455) (regOne!3423 (regex!1121 (h!11147 rules!3103))))) b!584820))

(assert (= (and b!584340 ((_ is Union!1455) (regOne!3423 (regex!1121 (h!11147 rules!3103))))) b!584821))

(declare-fun b!584822 () Bool)

(declare-fun e!353475 () Bool)

(assert (=> b!584822 (= e!353475 tp_is_empty!3265)))

(declare-fun b!584825 () Bool)

(declare-fun tp!182447 () Bool)

(declare-fun tp!182446 () Bool)

(assert (=> b!584825 (= e!353475 (and tp!182447 tp!182446))))

(declare-fun b!584823 () Bool)

(declare-fun tp!182445 () Bool)

(declare-fun tp!182449 () Bool)

(assert (=> b!584823 (= e!353475 (and tp!182445 tp!182449))))

(assert (=> b!584340 (= tp!182329 e!353475)))

(declare-fun b!584824 () Bool)

(declare-fun tp!182448 () Bool)

(assert (=> b!584824 (= e!353475 tp!182448)))

(assert (= (and b!584340 ((_ is ElementMatch!1455) (regTwo!3423 (regex!1121 (h!11147 rules!3103))))) b!584822))

(assert (= (and b!584340 ((_ is Concat!2600) (regTwo!3423 (regex!1121 (h!11147 rules!3103))))) b!584823))

(assert (= (and b!584340 ((_ is Star!1455) (regTwo!3423 (regex!1121 (h!11147 rules!3103))))) b!584824))

(assert (= (and b!584340 ((_ is Union!1455) (regTwo!3423 (regex!1121 (h!11147 rules!3103))))) b!584825))

(declare-fun b_lambda!23047 () Bool)

(assert (= b_lambda!23017 (or (and b!584118 b_free!16287 (= (toChars!1851 (transformation!1121 (rule!1881 token!491))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))))) (and b!584122 b_free!16291 (= (toChars!1851 (transformation!1121 (h!11147 rules!3103))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))))) (and b!584317 b_free!16295 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 rules!3103)))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))))) (and b!584805 b_free!16303 (= (toChars!1851 (transformation!1121 (h!11147 (t!78367 (t!78367 rules!3103))))) (toChars!1851 (transformation!1121 (rule!1881 (_1!3622 (v!16342 lt!247788))))))) b_lambda!23047)))

(check-sat (not d!205518) (not b!584772) (not b!584742) (not b_next!16319) (not d!205638) (not b_next!16309) tp_is_empty!3265 (not b!584764) (not b!584706) (not b!584722) (not b!584674) (not b!584763) (not b!584744) (not tb!51201) (not b!584457) (not d!205616) (not d!205464) (not b!584758) (not d!205600) (not b!584645) (not b!584738) (not b!584815) (not b!584726) (not b!584824) (not d!205512) (not b!584629) (not b!584819) (not b!584656) (not d!205568) (not b!584695) (not b!584754) (not b!584736) (not b!584604) (not b!584702) (not d!205538) (not b!584529) (not b!584571) (not b!584452) b_and!57609 (not b_next!16301) (not d!205614) (not b!584212) (not b!584784) (not b!584560) (not b_lambda!23045) (not b!584564) (not b!584796) (not b!584821) (not d!205552) (not b!584803) (not b!584765) (not d!205528) (not b!584561) (not b!584825) (not b!584659) (not b!584780) (not d!205642) (not b_lambda!23043) (not b!584650) (not b!584679) (not b!584725) b_and!57597 (not b!584768) b_and!57611 (not b!584779) (not b!584801) (not b!584750) (not b_lambda!23037) (not b!584809) (not b!584559) (not b!584636) (not d!205632) (not d!205526) (not d!205516) (not b!584806) b_and!57603 (not b!584449) (not b!584740) (not b!584647) (not b!584692) (not b!584458) (not b!584557) (not b!584168) (not b!584606) (not b!584536) (not d!205570) (not b!584773) (not b_lambda!23047) (not d!205458) (not tb!51207) b_and!57607 (not b!584708) (not bm!40188) (not b!584705) (not b!584704) (not b!584743) (not d!205586) (not b!584534) (not b!584804) (not b!584816) (not b!584562) (not b!584694) (not b!584732) (not b!584807) b_and!57605 (not b!584741) (not b!584626) (not b!584783) (not b!584745) (not b!584624) (not d!205474) (not b!584767) (not b!584538) (not b!584808) (not b!584794) (not d!205508) (not b!584785) (not b!584601) (not b!584618) (not b!584666) (not b_next!16305) (not d!205482) (not b_next!16303) (not d!205576) (not b!584731) (not b!584638) (not b!584468) (not b!584775) (not b!584558) (not d!205624) (not b!584470) (not b!584771) (not b!584567) (not d!205506) (not b_next!16307) (not b!584652) (not b!584800) (not d!205540) (not b!584620) (not b!584820) b_and!57599 (not d!205456) (not b!584602) (not b!584698) (not d!205626) (not b!584721) (not b!584811) (not b!584777) (not d!205588) (not b!584710) (not d!205554) (not b!584760) (not tb!51183) (not b!584781) (not d!205536) (not tb!51195) (not b!584769) (not d!205652) (not b_lambda!23041) (not b_next!16317) (not d!205532) (not b!584673) (not b!584724) (not b_lambda!23027) (not b!584616) (not b!584729) (not b!584755) (not b!584700) (not b!584817) (not b!584735) (not b!584681) (not b!584795) (not b!584530) (not b!584751) (not b!584657) (not b!584653) (not b!584749) (not b!584660) (not b!584655) (not b!584798) (not b!584649) (not b!584730) (not b!584611) (not b!584654) (not b!584472) (not d!205578) (not b!584450) (not d!205584) (not b!584748) (not b!584688) (not b!584776) (not b!584696) (not b!584667) (not b!584757) (not b!584747) (not d!205650) (not bm!40187) (not d!205534) (not b!584733) (not d!205572) (not bm!40186) (not b!584689) (not b!584683) (not b!584668) (not b!584823) (not d!205648) b_and!57601 (not d!205460) (not b!584727) (not bm!40189) (not b!584628) (not b!584813) (not b!584678) (not b_lambda!23025) (not d!205596) (not b!584569) (not b_next!16311) (not b!584565) (not b!584464) (not b!584466) (not b!584612) (not b!584622) (not b!584533) (not b!584812) (not b!584802) (not b!584797) (not d!205574))
(check-sat b_and!57597 b_and!57611 b_and!57603 b_and!57607 b_and!57605 (not b_next!16305) (not b_next!16303) (not b_next!16317) b_and!57601 (not b_next!16311) (not b_next!16319) (not b_next!16309) b_and!57609 (not b_next!16301) b_and!57599 (not b_next!16307))
