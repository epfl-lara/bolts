; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116810 () Bool)

(assert start!116810)

(declare-fun b!1317739 () Bool)

(declare-fun b_free!31755 () Bool)

(declare-fun b_next!32459 () Bool)

(assert (=> b!1317739 (= b_free!31755 (not b_next!32459))))

(declare-fun tp!383169 () Bool)

(declare-fun b_and!88023 () Bool)

(assert (=> b!1317739 (= tp!383169 b_and!88023)))

(declare-fun b_free!31757 () Bool)

(declare-fun b_next!32461 () Bool)

(assert (=> b!1317739 (= b_free!31757 (not b_next!32461))))

(declare-fun tp!383170 () Bool)

(declare-fun b_and!88025 () Bool)

(assert (=> b!1317739 (= tp!383170 b_and!88025)))

(declare-fun b!1317747 () Bool)

(declare-fun b_free!31759 () Bool)

(declare-fun b_next!32463 () Bool)

(assert (=> b!1317747 (= b_free!31759 (not b_next!32463))))

(declare-fun tp!383163 () Bool)

(declare-fun b_and!88027 () Bool)

(assert (=> b!1317747 (= tp!383163 b_and!88027)))

(declare-fun b_free!31761 () Bool)

(declare-fun b_next!32465 () Bool)

(assert (=> b!1317747 (= b_free!31761 (not b_next!32465))))

(declare-fun tp!383162 () Bool)

(declare-fun b_and!88029 () Bool)

(assert (=> b!1317747 (= tp!383162 b_and!88029)))

(declare-fun b!1317736 () Bool)

(declare-fun b_free!31763 () Bool)

(declare-fun b_next!32467 () Bool)

(assert (=> b!1317736 (= b_free!31763 (not b_next!32467))))

(declare-fun tp!383164 () Bool)

(declare-fun b_and!88031 () Bool)

(assert (=> b!1317736 (= tp!383164 b_and!88031)))

(declare-fun b_free!31765 () Bool)

(declare-fun b_next!32469 () Bool)

(assert (=> b!1317736 (= b_free!31765 (not b_next!32469))))

(declare-fun tp!383161 () Bool)

(declare-fun b_and!88033 () Bool)

(assert (=> b!1317736 (= tp!383161 b_and!88033)))

(declare-fun b!1317759 () Bool)

(assert (=> b!1317759 true))

(assert (=> b!1317759 true))

(declare-fun b!1317762 () Bool)

(assert (=> b!1317762 true))

(declare-fun b!1317731 () Bool)

(assert (=> b!1317731 true))

(declare-fun bs!330642 () Bool)

(declare-fun b!1317751 () Bool)

(assert (= bs!330642 (and b!1317751 b!1317731)))

(declare-fun lambda!53723 () Int)

(declare-fun lambda!53722 () Int)

(assert (=> bs!330642 (not (= lambda!53723 lambda!53722))))

(assert (=> b!1317751 true))

(declare-fun b!1317729 () Bool)

(declare-fun e!844651 () Bool)

(declare-fun e!844646 () Bool)

(assert (=> b!1317729 (= e!844651 e!844646)))

(declare-fun res!592136 () Bool)

(assert (=> b!1317729 (=> (not res!592136) (not e!844646))))

(declare-datatypes ((C!7540 0))(
  ( (C!7541 (val!4330 Int)) )
))
(declare-datatypes ((Regex!3625 0))(
  ( (ElementMatch!3625 (c!216254 C!7540)) (Concat!6026 (regOne!7762 Regex!3625) (regTwo!7762 Regex!3625)) (EmptyExpr!3625) (Star!3625 (reg!3954 Regex!3625)) (EmptyLang!3625) (Union!3625 (regOne!7763 Regex!3625) (regTwo!7763 Regex!3625)) )
))
(declare-fun lt!434731 () Regex!3625)

(declare-datatypes ((List!13420 0))(
  ( (Nil!13354) (Cons!13354 (h!18755 C!7540) (t!118435 List!13420)) )
))
(declare-fun lt!434728 () List!13420)

(declare-fun prefixMatch!138 (Regex!3625 List!13420) Bool)

(assert (=> b!1317729 (= res!592136 (prefixMatch!138 lt!434731 lt!434728))))

(declare-datatypes ((LexerInterface!2006 0))(
  ( (LexerInterfaceExt!2003 (__x!8631 Int)) (Lexer!2004) )
))
(declare-fun thiss!19762 () LexerInterface!2006)

(declare-datatypes ((List!13421 0))(
  ( (Nil!13355) (Cons!13355 (h!18756 (_ BitVec 16)) (t!118436 List!13421)) )
))
(declare-datatypes ((TokenValue!2401 0))(
  ( (FloatLiteralValue!4802 (text!17252 List!13421)) (TokenValueExt!2400 (__x!8632 Int)) (Broken!12005 (value!75470 List!13421)) (Object!2466) (End!2401) (Def!2401) (Underscore!2401) (Match!2401) (Else!2401) (Error!2401) (Case!2401) (If!2401) (Extends!2401) (Abstract!2401) (Class!2401) (Val!2401) (DelimiterValue!4802 (del!2461 List!13421)) (KeywordValue!2407 (value!75471 List!13421)) (CommentValue!4802 (value!75472 List!13421)) (WhitespaceValue!4802 (value!75473 List!13421)) (IndentationValue!2401 (value!75474 List!13421)) (String!16240) (Int32!2401) (Broken!12006 (value!75475 List!13421)) (Boolean!2402) (Unit!19421) (OperatorValue!2404 (op!2461 List!13421)) (IdentifierValue!4802 (value!75476 List!13421)) (IdentifierValue!4803 (value!75477 List!13421)) (WhitespaceValue!4803 (value!75478 List!13421)) (True!4802) (False!4802) (Broken!12007 (value!75479 List!13421)) (Broken!12008 (value!75480 List!13421)) (True!4803) (RightBrace!2401) (RightBracket!2401) (Colon!2401) (Null!2401) (Comma!2401) (LeftBracket!2401) (False!4803) (LeftBrace!2401) (ImaginaryLiteralValue!2401 (text!17253 List!13421)) (StringLiteralValue!7203 (value!75481 List!13421)) (EOFValue!2401 (value!75482 List!13421)) (IdentValue!2401 (value!75483 List!13421)) (DelimiterValue!4803 (value!75484 List!13421)) (DedentValue!2401 (value!75485 List!13421)) (NewLineValue!2401 (value!75486 List!13421)) (IntegerValue!7203 (value!75487 (_ BitVec 32)) (text!17254 List!13421)) (IntegerValue!7204 (value!75488 Int) (text!17255 List!13421)) (Times!2401) (Or!2401) (Equal!2401) (Minus!2401) (Broken!12009 (value!75489 List!13421)) (And!2401) (Div!2401) (LessEqual!2401) (Mod!2401) (Concat!6027) (Not!2401) (Plus!2401) (SpaceValue!2401 (value!75490 List!13421)) (IntegerValue!7205 (value!75491 Int) (text!17256 List!13421)) (StringLiteralValue!7204 (text!17257 List!13421)) (FloatLiteralValue!4803 (text!17258 List!13421)) (BytesLiteralValue!2401 (value!75492 List!13421)) (CommentValue!4803 (value!75493 List!13421)) (StringLiteralValue!7205 (value!75494 List!13421)) (ErrorTokenValue!2401 (msg!2462 List!13421)) )
))
(declare-datatypes ((IArray!8789 0))(
  ( (IArray!8790 (innerList!4452 List!13420)) )
))
(declare-datatypes ((Conc!4392 0))(
  ( (Node!4392 (left!11477 Conc!4392) (right!11807 Conc!4392) (csize!9014 Int) (cheight!4603 Int)) (Leaf!6744 (xs!7107 IArray!8789) (csize!9015 Int)) (Empty!4392) )
))
(declare-datatypes ((BalanceConc!8724 0))(
  ( (BalanceConc!8725 (c!216255 Conc!4392)) )
))
(declare-datatypes ((String!16241 0))(
  ( (String!16242 (value!75495 String)) )
))
(declare-datatypes ((TokenValueInjection!4462 0))(
  ( (TokenValueInjection!4463 (toValue!3538 Int) (toChars!3397 Int)) )
))
(declare-datatypes ((Rule!4422 0))(
  ( (Rule!4423 (regex!2311 Regex!3625) (tag!2573 String!16241) (isSeparator!2311 Bool) (transformation!2311 TokenValueInjection!4462)) )
))
(declare-datatypes ((List!13422 0))(
  ( (Nil!13356) (Cons!13356 (h!18757 Rule!4422) (t!118437 List!13422)) )
))
(declare-fun rules!2550 () List!13422)

(declare-fun rulesRegex!196 (LexerInterface!2006 List!13422) Regex!3625)

(assert (=> b!1317729 (= lt!434731 (rulesRegex!196 thiss!19762 rules!2550))))

(declare-fun lt!434732 () List!13420)

(declare-fun lt!434730 () C!7540)

(declare-fun ++!3406 (List!13420 List!13420) List!13420)

(assert (=> b!1317729 (= lt!434728 (++!3406 lt!434732 (Cons!13354 lt!434730 Nil!13354)))))

(declare-fun lt!434725 () BalanceConc!8724)

(declare-fun apply!3043 (BalanceConc!8724 Int) C!7540)

(assert (=> b!1317729 (= lt!434730 (apply!3043 lt!434725 0))))

(declare-fun lt!434720 () BalanceConc!8724)

(declare-fun list!5034 (BalanceConc!8724) List!13420)

(assert (=> b!1317729 (= lt!434732 (list!5034 lt!434720))))

(declare-datatypes ((Token!4284 0))(
  ( (Token!4285 (value!75496 TokenValue!2401) (rule!4054 Rule!4422) (size!10866 Int) (originalCharacters!3173 List!13420)) )
))
(declare-fun t1!34 () Token!4284)

(declare-fun charsOf!1283 (Token!4284) BalanceConc!8724)

(assert (=> b!1317729 (= lt!434720 (charsOf!1283 t1!34))))

(declare-fun b!1317730 () Bool)

(declare-fun e!844668 () Bool)

(declare-fun e!844644 () Bool)

(assert (=> b!1317730 (= e!844668 e!844644)))

(declare-fun res!592130 () Bool)

(assert (=> b!1317730 (=> res!592130 e!844644)))

(declare-datatypes ((List!13423 0))(
  ( (Nil!13357) (Cons!13357 (h!18758 Token!4284) (t!118438 List!13423)) )
))
(declare-datatypes ((IArray!8791 0))(
  ( (IArray!8792 (innerList!4453 List!13423)) )
))
(declare-datatypes ((Conc!4393 0))(
  ( (Node!4393 (left!11478 Conc!4393) (right!11808 Conc!4393) (csize!9016 Int) (cheight!4604 Int)) (Leaf!6745 (xs!7108 IArray!8791) (csize!9017 Int)) (Empty!4393) )
))
(declare-datatypes ((BalanceConc!8726 0))(
  ( (BalanceConc!8727 (c!216256 Conc!4393)) )
))
(declare-datatypes ((tuple2!12978 0))(
  ( (tuple2!12979 (_1!7375 BalanceConc!8726) (_2!7375 BalanceConc!8724)) )
))
(declare-fun lt!434724 () tuple2!12978)

(declare-fun lt!434722 () List!13423)

(declare-fun list!5035 (BalanceConc!8726) List!13423)

(assert (=> b!1317730 (= res!592130 (not (= (list!5035 (_1!7375 lt!434724)) lt!434722)))))

(assert (=> b!1317730 (= lt!434722 (Cons!13357 t1!34 Nil!13357))))

(declare-fun lt!434726 () BalanceConc!8724)

(declare-fun lex!841 (LexerInterface!2006 List!13422 BalanceConc!8724) tuple2!12978)

(assert (=> b!1317730 (= lt!434724 (lex!841 thiss!19762 rules!2550 lt!434726))))

(declare-fun print!780 (LexerInterface!2006 BalanceConc!8726) BalanceConc!8724)

(declare-fun singletonSeq!892 (Token!4284) BalanceConc!8726)

(assert (=> b!1317730 (= lt!434726 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))

(declare-fun lt!434734 () Rule!4422)

(declare-fun getWitness!216 (List!13422 Int) Rule!4422)

(assert (=> b!1317730 (= lt!434734 (getWitness!216 rules!2550 lambda!53722))))

(declare-fun e!844659 () Bool)

(assert (=> b!1317731 (= e!844659 e!844668)))

(declare-fun res!592122 () Bool)

(assert (=> b!1317731 (=> res!592122 e!844668)))

(declare-fun exists!324 (List!13422 Int) Bool)

(assert (=> b!1317731 (= res!592122 (not (exists!324 rules!2550 lambda!53722)))))

(assert (=> b!1317731 (exists!324 rules!2550 lambda!53722)))

(declare-fun lambda!53720 () Int)

(declare-fun lt!434717 () Regex!3625)

(declare-datatypes ((Unit!19422 0))(
  ( (Unit!19423) )
))
(declare-fun lt!434733 () Unit!19422)

(declare-fun lemmaMapContains!54 (List!13422 Int Regex!3625) Unit!19422)

(assert (=> b!1317731 (= lt!434733 (lemmaMapContains!54 rules!2550 lambda!53720 lt!434717))))

(declare-fun b!1317732 () Bool)

(declare-fun e!844661 () Bool)

(assert (=> b!1317732 (= e!844644 e!844661)))

(declare-fun res!592135 () Bool)

(assert (=> b!1317732 (=> res!592135 e!844661)))

(declare-fun lt!434721 () tuple2!12978)

(declare-fun lt!434716 () List!13423)

(assert (=> b!1317732 (= res!592135 (not (= (list!5035 (_1!7375 lt!434721)) lt!434716)))))

(declare-fun t2!34 () Token!4284)

(assert (=> b!1317732 (= lt!434716 (Cons!13357 t2!34 Nil!13357))))

(declare-fun lt!434723 () BalanceConc!8724)

(assert (=> b!1317732 (= lt!434721 (lex!841 thiss!19762 rules!2550 lt!434723))))

(assert (=> b!1317732 (= lt!434723 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))

(declare-fun res!592140 () Bool)

(declare-fun e!844645 () Bool)

(assert (=> start!116810 (=> (not res!592140) (not e!844645))))

(get-info :version)

(assert (=> start!116810 (= res!592140 ((_ is Lexer!2004) thiss!19762))))

(assert (=> start!116810 e!844645))

(assert (=> start!116810 true))

(declare-fun e!844654 () Bool)

(assert (=> start!116810 e!844654))

(declare-fun e!844650 () Bool)

(declare-fun inv!17731 (Token!4284) Bool)

(assert (=> start!116810 (and (inv!17731 t1!34) e!844650)))

(declare-fun e!844652 () Bool)

(assert (=> start!116810 (and (inv!17731 t2!34) e!844652)))

(declare-fun b!1317733 () Bool)

(assert (=> b!1317733 (= e!844645 e!844651)))

(declare-fun res!592144 () Bool)

(assert (=> b!1317733 (=> (not res!592144) (not e!844651))))

(declare-fun size!10867 (BalanceConc!8724) Int)

(assert (=> b!1317733 (= res!592144 (> (size!10867 lt!434725) 0))))

(assert (=> b!1317733 (= lt!434725 (charsOf!1283 t2!34))))

(declare-fun b!1317734 () Bool)

(declare-fun e!844647 () Bool)

(assert (=> b!1317734 (= e!844647 e!844659)))

(declare-fun res!592147 () Bool)

(assert (=> b!1317734 (=> res!592147 e!844659)))

(declare-datatypes ((List!13424 0))(
  ( (Nil!13358) (Cons!13358 (h!18759 Regex!3625) (t!118439 List!13424)) )
))
(declare-fun contains!2347 (List!13424 Regex!3625) Bool)

(declare-fun map!2933 (List!13422 Int) List!13424)

(assert (=> b!1317734 (= res!592147 (not (contains!2347 (map!2933 rules!2550 lambda!53720) lt!434717)))))

(declare-fun lambda!53721 () Int)

(declare-fun getWitness!217 (List!13424 Int) Regex!3625)

(assert (=> b!1317734 (= lt!434717 (getWitness!217 (map!2933 rules!2550 lambda!53720) lambda!53721))))

(declare-fun b!1317735 () Bool)

(declare-fun res!592134 () Bool)

(assert (=> b!1317735 (=> (not res!592134) (not e!844651))))

(declare-fun sepAndNonSepRulesDisjointChars!684 (List!13422 List!13422) Bool)

(assert (=> b!1317735 (= res!592134 (sepAndNonSepRulesDisjointChars!684 rules!2550 rules!2550))))

(declare-fun e!844653 () Bool)

(assert (=> b!1317736 (= e!844653 (and tp!383164 tp!383161))))

(declare-fun e!844663 () Bool)

(declare-fun e!844649 () Bool)

(declare-fun tp!383171 () Bool)

(declare-fun b!1317737 () Bool)

(declare-fun inv!17728 (String!16241) Bool)

(declare-fun inv!17732 (TokenValueInjection!4462) Bool)

(assert (=> b!1317737 (= e!844663 (and tp!383171 (inv!17728 (tag!2573 (rule!4054 t2!34))) (inv!17732 (transformation!2311 (rule!4054 t2!34))) e!844649))))

(declare-fun b!1317738 () Bool)

(declare-fun e!844660 () Bool)

(declare-fun e!844662 () Bool)

(assert (=> b!1317738 (= e!844660 e!844662)))

(declare-fun res!592127 () Bool)

(assert (=> b!1317738 (=> res!592127 e!844662)))

(declare-fun lt!434714 () C!7540)

(declare-fun contains!2348 (List!13420 C!7540) Bool)

(assert (=> b!1317738 (= res!592127 (not (contains!2348 lt!434728 lt!434714)))))

(assert (=> b!1317738 (= lt!434714 (apply!3043 lt!434720 0))))

(declare-fun e!844658 () Bool)

(assert (=> b!1317739 (= e!844658 (and tp!383169 tp!383170))))

(declare-fun b!1317740 () Bool)

(declare-fun res!592148 () Bool)

(assert (=> b!1317740 (=> res!592148 e!844662)))

(declare-fun lt!434735 () List!13420)

(assert (=> b!1317740 (= res!592148 (not (contains!2348 lt!434735 lt!434714)))))

(declare-fun b!1317741 () Bool)

(declare-fun tp!383172 () Bool)

(declare-fun inv!21 (TokenValue!2401) Bool)

(assert (=> b!1317741 (= e!844652 (and (inv!21 (value!75496 t2!34)) e!844663 tp!383172))))

(declare-fun b!1317742 () Bool)

(declare-fun res!592138 () Bool)

(assert (=> b!1317742 (=> (not res!592138) (not e!844645))))

(declare-fun rulesInvariant!1876 (LexerInterface!2006 List!13422) Bool)

(assert (=> b!1317742 (= res!592138 (rulesInvariant!1876 thiss!19762 rules!2550))))

(declare-fun b!1317743 () Bool)

(declare-fun res!592137 () Bool)

(assert (=> b!1317743 (=> res!592137 e!844644)))

(declare-fun isEmpty!7924 (BalanceConc!8724) Bool)

(assert (=> b!1317743 (= res!592137 (not (isEmpty!7924 (_2!7375 lt!434724))))))

(declare-fun b!1317744 () Bool)

(declare-fun res!592149 () Bool)

(assert (=> b!1317744 (=> res!592149 e!844662)))

(assert (=> b!1317744 (= res!592149 (not (contains!2348 lt!434728 lt!434730)))))

(declare-fun b!1317745 () Bool)

(declare-fun e!844643 () Bool)

(declare-fun validRegex!1551 (Regex!3625) Bool)

(assert (=> b!1317745 (= e!844643 (validRegex!1551 (regex!2311 (rule!4054 t2!34))))))

(declare-fun b!1317746 () Bool)

(declare-fun res!592131 () Bool)

(assert (=> b!1317746 (=> (not res!592131) (not e!844645))))

(declare-fun isEmpty!7925 (List!13422) Bool)

(assert (=> b!1317746 (= res!592131 (not (isEmpty!7925 rules!2550)))))

(assert (=> b!1317747 (= e!844649 (and tp!383163 tp!383162))))

(declare-fun b!1317748 () Bool)

(declare-fun res!592139 () Bool)

(assert (=> b!1317748 (=> res!592139 e!844662)))

(assert (=> b!1317748 (= res!592139 (not (contains!2348 lt!434735 lt!434730)))))

(declare-fun b!1317749 () Bool)

(declare-fun res!592128 () Bool)

(assert (=> b!1317749 (=> (not res!592128) (not e!844651))))

(declare-fun separableTokensPredicate!289 (LexerInterface!2006 Token!4284 Token!4284 List!13422) Bool)

(assert (=> b!1317749 (= res!592128 (not (separableTokensPredicate!289 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1317750 () Bool)

(declare-fun res!592150 () Bool)

(assert (=> b!1317750 (=> res!592150 e!844661)))

(declare-fun contains!2349 (List!13422 Rule!4422) Bool)

(assert (=> b!1317750 (= res!592150 (not (contains!2349 rules!2550 lt!434734)))))

(assert (=> b!1317751 (= e!844661 e!844643)))

(declare-fun res!592142 () Bool)

(assert (=> b!1317751 (=> res!592142 e!844643)))

(declare-fun matchR!1627 (Regex!3625 List!13420) Bool)

(assert (=> b!1317751 (= res!592142 (not (matchR!1627 (regex!2311 (rule!4054 t1!34)) lt!434732)))))

(declare-fun lt!434715 () Unit!19422)

(declare-fun forallContained!562 (List!13422 Int Rule!4422) Unit!19422)

(assert (=> b!1317751 (= lt!434715 (forallContained!562 rules!2550 lambda!53723 (rule!4054 t2!34)))))

(declare-fun lt!434727 () Unit!19422)

(assert (=> b!1317751 (= lt!434727 (forallContained!562 rules!2550 lambda!53723 (rule!4054 t1!34)))))

(declare-fun lt!434719 () Unit!19422)

(assert (=> b!1317751 (= lt!434719 (forallContained!562 rules!2550 lambda!53723 lt!434734))))

(declare-fun b!1317752 () Bool)

(declare-fun res!592145 () Bool)

(assert (=> b!1317752 (=> res!592145 e!844661)))

(assert (=> b!1317752 (= res!592145 (not (isEmpty!7924 (_2!7375 lt!434721))))))

(declare-fun b!1317753 () Bool)

(declare-fun res!592132 () Bool)

(assert (=> b!1317753 (=> (not res!592132) (not e!844645))))

(assert (=> b!1317753 (= res!592132 (not (= (isSeparator!2311 (rule!4054 t1!34)) (isSeparator!2311 (rule!4054 t2!34)))))))

(declare-fun b!1317754 () Bool)

(declare-fun res!592124 () Bool)

(assert (=> b!1317754 (=> res!592124 e!844644)))

(declare-datatypes ((tuple2!12980 0))(
  ( (tuple2!12981 (_1!7376 List!13423) (_2!7376 List!13420)) )
))
(declare-fun lexList!544 (LexerInterface!2006 List!13422 List!13420) tuple2!12980)

(assert (=> b!1317754 (= res!592124 (not (= (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434726)) (tuple2!12981 lt!434722 Nil!13354))))))

(declare-fun b!1317755 () Bool)

(declare-fun res!592125 () Bool)

(assert (=> b!1317755 (=> res!592125 e!844661)))

(assert (=> b!1317755 (= res!592125 (not (= (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434723)) (tuple2!12981 lt!434716 Nil!13354))))))

(declare-fun b!1317756 () Bool)

(declare-fun res!592153 () Bool)

(assert (=> b!1317756 (=> res!592153 e!844661)))

(declare-datatypes ((tuple2!12982 0))(
  ( (tuple2!12983 (_1!7377 Token!4284) (_2!7377 List!13420)) )
))
(declare-datatypes ((Option!2580 0))(
  ( (None!2579) (Some!2579 (v!21135 tuple2!12982)) )
))
(declare-fun maxPrefix!1016 (LexerInterface!2006 List!13422 List!13420) Option!2580)

(assert (=> b!1317756 (= res!592153 (not (= (maxPrefix!1016 thiss!19762 rules!2550 (list!5034 lt!434725)) (Some!2579 (tuple2!12983 t2!34 Nil!13354)))))))

(declare-fun b!1317757 () Bool)

(declare-fun res!592151 () Bool)

(assert (=> b!1317757 (=> (not res!592151) (not e!844645))))

(declare-fun rulesProduceIndividualToken!975 (LexerInterface!2006 List!13422 Token!4284) Bool)

(assert (=> b!1317757 (= res!592151 (rulesProduceIndividualToken!975 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1317758 () Bool)

(declare-fun tp!383168 () Bool)

(declare-fun e!844655 () Bool)

(assert (=> b!1317758 (= e!844655 (and tp!383168 (inv!17728 (tag!2573 (h!18757 rules!2550))) (inv!17732 (transformation!2311 (h!18757 rules!2550))) e!844653))))

(declare-fun e!844656 () Bool)

(assert (=> b!1317759 (= e!844646 (not e!844656))))

(declare-fun res!592141 () Bool)

(assert (=> b!1317759 (=> res!592141 e!844656)))

(declare-fun lambda!53719 () Int)

(declare-fun Exists!783 (Int) Bool)

(assert (=> b!1317759 (= res!592141 (not (Exists!783 lambda!53719)))))

(assert (=> b!1317759 (Exists!783 lambda!53719)))

(declare-fun lt!434729 () Unit!19422)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!101 (Regex!3625 List!13420) Unit!19422)

(assert (=> b!1317759 (= lt!434729 (lemmaPrefixMatchThenExistsStringThatMatches!101 lt!434731 lt!434728))))

(declare-fun b!1317760 () Bool)

(declare-fun res!592143 () Bool)

(assert (=> b!1317760 (=> res!592143 e!844661)))

(assert (=> b!1317760 (= res!592143 (not (contains!2349 rules!2550 (rule!4054 t2!34))))))

(declare-fun b!1317761 () Bool)

(assert (=> b!1317761 (= e!844656 e!844660)))

(declare-fun res!592126 () Bool)

(assert (=> b!1317761 (=> res!592126 e!844660)))

(declare-fun getSuffix!481 (List!13420 List!13420) List!13420)

(assert (=> b!1317761 (= res!592126 (not (= lt!434735 (++!3406 lt!434728 (getSuffix!481 lt!434735 lt!434728)))))))

(declare-fun pickWitness!88 (Int) List!13420)

(assert (=> b!1317761 (= lt!434735 (pickWitness!88 lambda!53719))))

(assert (=> b!1317762 (= e!844662 e!844647)))

(declare-fun res!592123 () Bool)

(assert (=> b!1317762 (=> res!592123 e!844647)))

(declare-fun exists!325 (List!13424 Int) Bool)

(assert (=> b!1317762 (= res!592123 (not (exists!325 (map!2933 rules!2550 lambda!53720) lambda!53721)))))

(declare-fun lt!434718 () List!13424)

(assert (=> b!1317762 (exists!325 lt!434718 lambda!53721)))

(declare-fun lt!434736 () Unit!19422)

(declare-fun matchRGenUnionSpec!62 (Regex!3625 List!13424 List!13420) Unit!19422)

(assert (=> b!1317762 (= lt!434736 (matchRGenUnionSpec!62 lt!434731 lt!434718 lt!434735))))

(assert (=> b!1317762 (= lt!434718 (map!2933 rules!2550 lambda!53720))))

(declare-fun b!1317763 () Bool)

(declare-fun tp!383166 () Bool)

(assert (=> b!1317763 (= e!844654 (and e!844655 tp!383166))))

(declare-fun b!1317764 () Bool)

(declare-fun e!844648 () Bool)

(declare-fun tp!383165 () Bool)

(assert (=> b!1317764 (= e!844650 (and (inv!21 (value!75496 t1!34)) e!844648 tp!383165))))

(declare-fun b!1317765 () Bool)

(declare-fun res!592133 () Bool)

(assert (=> b!1317765 (=> (not res!592133) (not e!844645))))

(assert (=> b!1317765 (= res!592133 (rulesProduceIndividualToken!975 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1317766 () Bool)

(declare-fun res!592146 () Bool)

(assert (=> b!1317766 (=> res!592146 e!844662)))

(assert (=> b!1317766 (= res!592146 (not (matchR!1627 lt!434731 lt!434735)))))

(declare-fun b!1317767 () Bool)

(declare-fun res!592152 () Bool)

(assert (=> b!1317767 (=> res!592152 e!844644)))

(assert (=> b!1317767 (= res!592152 (not (contains!2349 rules!2550 (rule!4054 t1!34))))))

(declare-fun b!1317768 () Bool)

(declare-fun res!592129 () Bool)

(assert (=> b!1317768 (=> res!592129 e!844644)))

(assert (=> b!1317768 (= res!592129 (not (= (maxPrefix!1016 thiss!19762 rules!2550 lt!434732) (Some!2579 (tuple2!12983 t1!34 Nil!13354)))))))

(declare-fun tp!383167 () Bool)

(declare-fun b!1317769 () Bool)

(assert (=> b!1317769 (= e!844648 (and tp!383167 (inv!17728 (tag!2573 (rule!4054 t1!34))) (inv!17732 (transformation!2311 (rule!4054 t1!34))) e!844658))))

(assert (= (and start!116810 res!592140) b!1317746))

(assert (= (and b!1317746 res!592131) b!1317742))

(assert (= (and b!1317742 res!592138) b!1317757))

(assert (= (and b!1317757 res!592151) b!1317765))

(assert (= (and b!1317765 res!592133) b!1317753))

(assert (= (and b!1317753 res!592132) b!1317733))

(assert (= (and b!1317733 res!592144) b!1317735))

(assert (= (and b!1317735 res!592134) b!1317749))

(assert (= (and b!1317749 res!592128) b!1317729))

(assert (= (and b!1317729 res!592136) b!1317759))

(assert (= (and b!1317759 (not res!592141)) b!1317761))

(assert (= (and b!1317761 (not res!592126)) b!1317738))

(assert (= (and b!1317738 (not res!592127)) b!1317740))

(assert (= (and b!1317740 (not res!592148)) b!1317744))

(assert (= (and b!1317744 (not res!592149)) b!1317748))

(assert (= (and b!1317748 (not res!592139)) b!1317766))

(assert (= (and b!1317766 (not res!592146)) b!1317762))

(assert (= (and b!1317762 (not res!592123)) b!1317734))

(assert (= (and b!1317734 (not res!592147)) b!1317731))

(assert (= (and b!1317731 (not res!592122)) b!1317730))

(assert (= (and b!1317730 (not res!592130)) b!1317743))

(assert (= (and b!1317743 (not res!592137)) b!1317754))

(assert (= (and b!1317754 (not res!592124)) b!1317768))

(assert (= (and b!1317768 (not res!592129)) b!1317767))

(assert (= (and b!1317767 (not res!592152)) b!1317732))

(assert (= (and b!1317732 (not res!592135)) b!1317752))

(assert (= (and b!1317752 (not res!592145)) b!1317755))

(assert (= (and b!1317755 (not res!592125)) b!1317756))

(assert (= (and b!1317756 (not res!592153)) b!1317760))

(assert (= (and b!1317760 (not res!592143)) b!1317750))

(assert (= (and b!1317750 (not res!592150)) b!1317751))

(assert (= (and b!1317751 (not res!592142)) b!1317745))

(assert (= b!1317758 b!1317736))

(assert (= b!1317763 b!1317758))

(assert (= (and start!116810 ((_ is Cons!13356) rules!2550)) b!1317763))

(assert (= b!1317769 b!1317739))

(assert (= b!1317764 b!1317769))

(assert (= start!116810 b!1317764))

(assert (= b!1317737 b!1317747))

(assert (= b!1317741 b!1317737))

(assert (= start!116810 b!1317741))

(declare-fun m!1472269 () Bool)

(assert (=> b!1317751 m!1472269))

(declare-fun m!1472271 () Bool)

(assert (=> b!1317751 m!1472271))

(declare-fun m!1472273 () Bool)

(assert (=> b!1317751 m!1472273))

(declare-fun m!1472275 () Bool)

(assert (=> b!1317751 m!1472275))

(declare-fun m!1472277 () Bool)

(assert (=> b!1317755 m!1472277))

(assert (=> b!1317755 m!1472277))

(declare-fun m!1472279 () Bool)

(assert (=> b!1317755 m!1472279))

(declare-fun m!1472281 () Bool)

(assert (=> b!1317765 m!1472281))

(declare-fun m!1472283 () Bool)

(assert (=> b!1317758 m!1472283))

(declare-fun m!1472285 () Bool)

(assert (=> b!1317758 m!1472285))

(declare-fun m!1472287 () Bool)

(assert (=> b!1317735 m!1472287))

(declare-fun m!1472289 () Bool)

(assert (=> b!1317748 m!1472289))

(declare-fun m!1472291 () Bool)

(assert (=> b!1317741 m!1472291))

(declare-fun m!1472293 () Bool)

(assert (=> b!1317744 m!1472293))

(declare-fun m!1472295 () Bool)

(assert (=> b!1317768 m!1472295))

(declare-fun m!1472297 () Bool)

(assert (=> b!1317734 m!1472297))

(assert (=> b!1317734 m!1472297))

(declare-fun m!1472299 () Bool)

(assert (=> b!1317734 m!1472299))

(assert (=> b!1317734 m!1472297))

(assert (=> b!1317734 m!1472297))

(declare-fun m!1472301 () Bool)

(assert (=> b!1317734 m!1472301))

(declare-fun m!1472303 () Bool)

(assert (=> start!116810 m!1472303))

(declare-fun m!1472305 () Bool)

(assert (=> start!116810 m!1472305))

(declare-fun m!1472307 () Bool)

(assert (=> b!1317752 m!1472307))

(declare-fun m!1472309 () Bool)

(assert (=> b!1317745 m!1472309))

(declare-fun m!1472311 () Bool)

(assert (=> b!1317767 m!1472311))

(declare-fun m!1472313 () Bool)

(assert (=> b!1317754 m!1472313))

(assert (=> b!1317754 m!1472313))

(declare-fun m!1472315 () Bool)

(assert (=> b!1317754 m!1472315))

(declare-fun m!1472317 () Bool)

(assert (=> b!1317732 m!1472317))

(declare-fun m!1472319 () Bool)

(assert (=> b!1317732 m!1472319))

(declare-fun m!1472321 () Bool)

(assert (=> b!1317732 m!1472321))

(assert (=> b!1317732 m!1472321))

(declare-fun m!1472323 () Bool)

(assert (=> b!1317732 m!1472323))

(declare-fun m!1472325 () Bool)

(assert (=> b!1317750 m!1472325))

(declare-fun m!1472327 () Bool)

(assert (=> b!1317759 m!1472327))

(assert (=> b!1317759 m!1472327))

(declare-fun m!1472329 () Bool)

(assert (=> b!1317759 m!1472329))

(declare-fun m!1472331 () Bool)

(assert (=> b!1317764 m!1472331))

(declare-fun m!1472333 () Bool)

(assert (=> b!1317743 m!1472333))

(declare-fun m!1472335 () Bool)

(assert (=> b!1317756 m!1472335))

(assert (=> b!1317756 m!1472335))

(declare-fun m!1472337 () Bool)

(assert (=> b!1317756 m!1472337))

(assert (=> b!1317762 m!1472297))

(declare-fun m!1472339 () Bool)

(assert (=> b!1317762 m!1472339))

(declare-fun m!1472341 () Bool)

(assert (=> b!1317762 m!1472341))

(assert (=> b!1317762 m!1472297))

(declare-fun m!1472343 () Bool)

(assert (=> b!1317762 m!1472343))

(assert (=> b!1317762 m!1472297))

(declare-fun m!1472345 () Bool)

(assert (=> b!1317729 m!1472345))

(declare-fun m!1472347 () Bool)

(assert (=> b!1317729 m!1472347))

(declare-fun m!1472349 () Bool)

(assert (=> b!1317729 m!1472349))

(declare-fun m!1472351 () Bool)

(assert (=> b!1317729 m!1472351))

(declare-fun m!1472353 () Bool)

(assert (=> b!1317729 m!1472353))

(declare-fun m!1472355 () Bool)

(assert (=> b!1317729 m!1472355))

(declare-fun m!1472357 () Bool)

(assert (=> b!1317737 m!1472357))

(declare-fun m!1472359 () Bool)

(assert (=> b!1317737 m!1472359))

(declare-fun m!1472361 () Bool)

(assert (=> b!1317738 m!1472361))

(declare-fun m!1472363 () Bool)

(assert (=> b!1317738 m!1472363))

(declare-fun m!1472365 () Bool)

(assert (=> b!1317749 m!1472365))

(declare-fun m!1472367 () Bool)

(assert (=> b!1317761 m!1472367))

(assert (=> b!1317761 m!1472367))

(declare-fun m!1472369 () Bool)

(assert (=> b!1317761 m!1472369))

(declare-fun m!1472371 () Bool)

(assert (=> b!1317761 m!1472371))

(declare-fun m!1472373 () Bool)

(assert (=> b!1317769 m!1472373))

(declare-fun m!1472375 () Bool)

(assert (=> b!1317769 m!1472375))

(declare-fun m!1472377 () Bool)

(assert (=> b!1317740 m!1472377))

(declare-fun m!1472379 () Bool)

(assert (=> b!1317733 m!1472379))

(declare-fun m!1472381 () Bool)

(assert (=> b!1317733 m!1472381))

(declare-fun m!1472383 () Bool)

(assert (=> b!1317757 m!1472383))

(declare-fun m!1472385 () Bool)

(assert (=> b!1317746 m!1472385))

(declare-fun m!1472387 () Bool)

(assert (=> b!1317742 m!1472387))

(declare-fun m!1472389 () Bool)

(assert (=> b!1317731 m!1472389))

(assert (=> b!1317731 m!1472389))

(declare-fun m!1472391 () Bool)

(assert (=> b!1317731 m!1472391))

(declare-fun m!1472393 () Bool)

(assert (=> b!1317766 m!1472393))

(declare-fun m!1472395 () Bool)

(assert (=> b!1317760 m!1472395))

(declare-fun m!1472397 () Bool)

(assert (=> b!1317730 m!1472397))

(declare-fun m!1472399 () Bool)

(assert (=> b!1317730 m!1472399))

(declare-fun m!1472401 () Bool)

(assert (=> b!1317730 m!1472401))

(assert (=> b!1317730 m!1472399))

(declare-fun m!1472403 () Bool)

(assert (=> b!1317730 m!1472403))

(declare-fun m!1472405 () Bool)

(assert (=> b!1317730 m!1472405))

(check-sat b_and!88023 b_and!88031 (not b!1317767) (not b!1317768) (not b!1317764) b_and!88029 (not b!1317759) (not b!1317748) (not b!1317732) (not b!1317755) (not b!1317758) (not b!1317765) (not b!1317745) b_and!88033 (not b!1317743) (not b!1317740) (not b!1317762) (not b!1317749) (not b!1317733) (not b!1317734) (not b_next!32463) (not b!1317744) (not b!1317769) b_and!88027 (not b!1317742) (not b!1317761) (not b_next!32465) (not b!1317750) (not b!1317729) (not b!1317730) (not b!1317738) (not b_next!32461) (not b!1317757) (not b!1317751) (not b!1317760) (not b_next!32467) (not b_next!32469) (not b!1317746) (not b!1317731) b_and!88025 (not b!1317754) (not b_next!32459) (not b!1317756) (not b!1317735) (not b!1317766) (not b!1317737) (not b!1317752) (not b!1317763) (not b!1317741) (not start!116810))
(check-sat b_and!88023 b_and!88031 b_and!88033 (not b_next!32463) b_and!88027 (not b_next!32465) (not b_next!32461) b_and!88025 b_and!88029 (not b_next!32459) (not b_next!32467) (not b_next!32469))
(get-model)

(declare-fun b!1317902 () Bool)

(declare-fun lt!434762 () Unit!19422)

(declare-fun Unit!19424 () Unit!19422)

(assert (=> b!1317902 (= lt!434762 Unit!19424)))

(assert (=> b!1317902 false))

(declare-fun e!844748 () Rule!4422)

(declare-fun head!2280 (List!13422) Rule!4422)

(assert (=> b!1317902 (= e!844748 (head!2280 rules!2550))))

(declare-fun b!1317903 () Bool)

(declare-fun e!844747 () Bool)

(declare-fun dynLambda!5838 (Int Rule!4422) Bool)

(assert (=> b!1317903 (= e!844747 (dynLambda!5838 lambda!53722 (h!18757 rules!2550)))))

(declare-fun d!371776 () Bool)

(declare-fun e!844746 () Bool)

(assert (=> d!371776 e!844746))

(declare-fun res!592230 () Bool)

(assert (=> d!371776 (=> (not res!592230) (not e!844746))))

(declare-fun lt!434763 () Rule!4422)

(assert (=> d!371776 (= res!592230 (dynLambda!5838 lambda!53722 lt!434763))))

(declare-fun e!844745 () Rule!4422)

(assert (=> d!371776 (= lt!434763 e!844745)))

(declare-fun c!216283 () Bool)

(assert (=> d!371776 (= c!216283 e!844747)))

(declare-fun res!592231 () Bool)

(assert (=> d!371776 (=> (not res!592231) (not e!844747))))

(assert (=> d!371776 (= res!592231 ((_ is Cons!13356) rules!2550))))

(assert (=> d!371776 (exists!324 rules!2550 lambda!53722)))

(assert (=> d!371776 (= (getWitness!216 rules!2550 lambda!53722) lt!434763)))

(declare-fun b!1317904 () Bool)

(assert (=> b!1317904 (= e!844745 (h!18757 rules!2550))))

(declare-fun b!1317905 () Bool)

(assert (=> b!1317905 (= e!844746 (contains!2349 rules!2550 lt!434763))))

(declare-fun b!1317906 () Bool)

(assert (=> b!1317906 (= e!844745 e!844748)))

(declare-fun c!216282 () Bool)

(assert (=> b!1317906 (= c!216282 ((_ is Cons!13356) rules!2550))))

(declare-fun b!1317907 () Bool)

(assert (=> b!1317907 (= e!844748 (getWitness!216 (t!118437 rules!2550) lambda!53722))))

(assert (= (and d!371776 res!592231) b!1317903))

(assert (= (and d!371776 c!216283) b!1317904))

(assert (= (and d!371776 (not c!216283)) b!1317906))

(assert (= (and b!1317906 c!216282) b!1317907))

(assert (= (and b!1317906 (not c!216282)) b!1317902))

(assert (= (and d!371776 res!592230) b!1317905))

(declare-fun b_lambda!38249 () Bool)

(assert (=> (not b_lambda!38249) (not b!1317903)))

(declare-fun b_lambda!38251 () Bool)

(assert (=> (not b_lambda!38251) (not d!371776)))

(declare-fun m!1472515 () Bool)

(assert (=> b!1317902 m!1472515))

(declare-fun m!1472517 () Bool)

(assert (=> d!371776 m!1472517))

(assert (=> d!371776 m!1472389))

(declare-fun m!1472519 () Bool)

(assert (=> b!1317903 m!1472519))

(declare-fun m!1472521 () Bool)

(assert (=> b!1317907 m!1472521))

(declare-fun m!1472523 () Bool)

(assert (=> b!1317905 m!1472523))

(assert (=> b!1317730 d!371776))

(declare-fun d!371788 () Bool)

(declare-fun lt!434766 () BalanceConc!8724)

(declare-fun printList!562 (LexerInterface!2006 List!13423) List!13420)

(assert (=> d!371788 (= (list!5034 lt!434766) (printList!562 thiss!19762 (list!5035 (singletonSeq!892 t1!34))))))

(declare-fun printTailRec!544 (LexerInterface!2006 BalanceConc!8726 Int BalanceConc!8724) BalanceConc!8724)

(assert (=> d!371788 (= lt!434766 (printTailRec!544 thiss!19762 (singletonSeq!892 t1!34) 0 (BalanceConc!8725 Empty!4392)))))

(assert (=> d!371788 (= (print!780 thiss!19762 (singletonSeq!892 t1!34)) lt!434766)))

(declare-fun bs!330647 () Bool)

(assert (= bs!330647 d!371788))

(declare-fun m!1472525 () Bool)

(assert (=> bs!330647 m!1472525))

(assert (=> bs!330647 m!1472399))

(declare-fun m!1472527 () Bool)

(assert (=> bs!330647 m!1472527))

(assert (=> bs!330647 m!1472527))

(declare-fun m!1472529 () Bool)

(assert (=> bs!330647 m!1472529))

(assert (=> bs!330647 m!1472399))

(declare-fun m!1472531 () Bool)

(assert (=> bs!330647 m!1472531))

(assert (=> b!1317730 d!371788))

(declare-fun d!371790 () Bool)

(declare-fun list!5038 (Conc!4393) List!13423)

(assert (=> d!371790 (= (list!5035 (_1!7375 lt!434724)) (list!5038 (c!216256 (_1!7375 lt!434724))))))

(declare-fun bs!330648 () Bool)

(assert (= bs!330648 d!371790))

(declare-fun m!1472533 () Bool)

(assert (=> bs!330648 m!1472533))

(assert (=> b!1317730 d!371790))

(declare-fun d!371792 () Bool)

(declare-fun e!844751 () Bool)

(assert (=> d!371792 e!844751))

(declare-fun res!592234 () Bool)

(assert (=> d!371792 (=> (not res!592234) (not e!844751))))

(declare-fun lt!434769 () BalanceConc!8726)

(assert (=> d!371792 (= res!592234 (= (list!5035 lt!434769) (Cons!13357 t1!34 Nil!13357)))))

(declare-fun singleton!386 (Token!4284) BalanceConc!8726)

(assert (=> d!371792 (= lt!434769 (singleton!386 t1!34))))

(assert (=> d!371792 (= (singletonSeq!892 t1!34) lt!434769)))

(declare-fun b!1317910 () Bool)

(declare-fun isBalanced!1280 (Conc!4393) Bool)

(assert (=> b!1317910 (= e!844751 (isBalanced!1280 (c!216256 lt!434769)))))

(assert (= (and d!371792 res!592234) b!1317910))

(declare-fun m!1472535 () Bool)

(assert (=> d!371792 m!1472535))

(declare-fun m!1472537 () Bool)

(assert (=> d!371792 m!1472537))

(declare-fun m!1472539 () Bool)

(assert (=> b!1317910 m!1472539))

(assert (=> b!1317730 d!371792))

(declare-fun b!1318021 () Bool)

(declare-fun lt!434821 () tuple2!12978)

(declare-fun e!844823 () Bool)

(assert (=> b!1318021 (= e!844823 (= (list!5034 (_2!7375 lt!434821)) (_2!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434726)))))))

(declare-fun b!1318022 () Bool)

(declare-fun e!844822 () Bool)

(assert (=> b!1318022 (= e!844822 (= (_2!7375 lt!434821) lt!434726))))

(declare-fun b!1318023 () Bool)

(declare-fun e!844824 () Bool)

(declare-fun isEmpty!7928 (BalanceConc!8726) Bool)

(assert (=> b!1318023 (= e!844824 (not (isEmpty!7928 (_1!7375 lt!434821))))))

(declare-fun b!1318024 () Bool)

(assert (=> b!1318024 (= e!844822 e!844824)))

(declare-fun res!592290 () Bool)

(assert (=> b!1318024 (= res!592290 (< (size!10867 (_2!7375 lt!434821)) (size!10867 lt!434726)))))

(assert (=> b!1318024 (=> (not res!592290) (not e!844824))))

(declare-fun d!371794 () Bool)

(assert (=> d!371794 e!844823))

(declare-fun res!592291 () Bool)

(assert (=> d!371794 (=> (not res!592291) (not e!844823))))

(assert (=> d!371794 (= res!592291 e!844822)))

(declare-fun c!216309 () Bool)

(declare-fun size!10870 (BalanceConc!8726) Int)

(assert (=> d!371794 (= c!216309 (> (size!10870 (_1!7375 lt!434821)) 0))))

(declare-fun lexTailRecV2!367 (LexerInterface!2006 List!13422 BalanceConc!8724 BalanceConc!8724 BalanceConc!8724 BalanceConc!8726) tuple2!12978)

(assert (=> d!371794 (= lt!434821 (lexTailRecV2!367 thiss!19762 rules!2550 lt!434726 (BalanceConc!8725 Empty!4392) lt!434726 (BalanceConc!8727 Empty!4393)))))

(assert (=> d!371794 (= (lex!841 thiss!19762 rules!2550 lt!434726) lt!434821)))

(declare-fun b!1318025 () Bool)

(declare-fun res!592289 () Bool)

(assert (=> b!1318025 (=> (not res!592289) (not e!844823))))

(assert (=> b!1318025 (= res!592289 (= (list!5035 (_1!7375 lt!434821)) (_1!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434726)))))))

(assert (= (and d!371794 c!216309) b!1318024))

(assert (= (and d!371794 (not c!216309)) b!1318022))

(assert (= (and b!1318024 res!592290) b!1318023))

(assert (= (and d!371794 res!592291) b!1318025))

(assert (= (and b!1318025 res!592289) b!1318021))

(declare-fun m!1472687 () Bool)

(assert (=> b!1318025 m!1472687))

(assert (=> b!1318025 m!1472313))

(assert (=> b!1318025 m!1472313))

(assert (=> b!1318025 m!1472315))

(declare-fun m!1472689 () Bool)

(assert (=> d!371794 m!1472689))

(declare-fun m!1472691 () Bool)

(assert (=> d!371794 m!1472691))

(declare-fun m!1472693 () Bool)

(assert (=> b!1318024 m!1472693))

(declare-fun m!1472695 () Bool)

(assert (=> b!1318024 m!1472695))

(declare-fun m!1472697 () Bool)

(assert (=> b!1318023 m!1472697))

(declare-fun m!1472699 () Bool)

(assert (=> b!1318021 m!1472699))

(assert (=> b!1318021 m!1472313))

(assert (=> b!1318021 m!1472313))

(assert (=> b!1318021 m!1472315))

(assert (=> b!1317730 d!371794))

(declare-fun b!1318054 () Bool)

(declare-fun e!844840 () Bool)

(declare-fun e!844841 () Bool)

(assert (=> b!1318054 (= e!844840 e!844841)))

(declare-fun res!592314 () Bool)

(assert (=> b!1318054 (=> (not res!592314) (not e!844841))))

(declare-fun lt!434824 () Bool)

(assert (=> b!1318054 (= res!592314 (not lt!434824))))

(declare-fun bm!89513 () Bool)

(declare-fun call!89518 () Bool)

(declare-fun isEmpty!7930 (List!13420) Bool)

(assert (=> bm!89513 (= call!89518 (isEmpty!7930 lt!434732))))

(declare-fun d!371846 () Bool)

(declare-fun e!844845 () Bool)

(assert (=> d!371846 e!844845))

(declare-fun c!216318 () Bool)

(assert (=> d!371846 (= c!216318 ((_ is EmptyExpr!3625) (regex!2311 (rule!4054 t1!34))))))

(declare-fun e!844843 () Bool)

(assert (=> d!371846 (= lt!434824 e!844843)))

(declare-fun c!216317 () Bool)

(assert (=> d!371846 (= c!216317 (isEmpty!7930 lt!434732))))

(assert (=> d!371846 (validRegex!1551 (regex!2311 (rule!4054 t1!34)))))

(assert (=> d!371846 (= (matchR!1627 (regex!2311 (rule!4054 t1!34)) lt!434732) lt!434824)))

(declare-fun b!1318055 () Bool)

(declare-fun res!592308 () Bool)

(assert (=> b!1318055 (=> res!592308 e!844840)))

(assert (=> b!1318055 (= res!592308 (not ((_ is ElementMatch!3625) (regex!2311 (rule!4054 t1!34)))))))

(declare-fun e!844844 () Bool)

(assert (=> b!1318055 (= e!844844 e!844840)))

(declare-fun b!1318056 () Bool)

(declare-fun res!592313 () Bool)

(declare-fun e!844839 () Bool)

(assert (=> b!1318056 (=> res!592313 e!844839)))

(declare-fun tail!1890 (List!13420) List!13420)

(assert (=> b!1318056 (= res!592313 (not (isEmpty!7930 (tail!1890 lt!434732))))))

(declare-fun b!1318057 () Bool)

(declare-fun e!844842 () Bool)

(declare-fun head!2281 (List!13420) C!7540)

(assert (=> b!1318057 (= e!844842 (= (head!2281 lt!434732) (c!216254 (regex!2311 (rule!4054 t1!34)))))))

(declare-fun b!1318058 () Bool)

(assert (=> b!1318058 (= e!844845 e!844844)))

(declare-fun c!216316 () Bool)

(assert (=> b!1318058 (= c!216316 ((_ is EmptyLang!3625) (regex!2311 (rule!4054 t1!34))))))

(declare-fun b!1318059 () Bool)

(declare-fun nullable!1149 (Regex!3625) Bool)

(assert (=> b!1318059 (= e!844843 (nullable!1149 (regex!2311 (rule!4054 t1!34))))))

(declare-fun b!1318060 () Bool)

(declare-fun res!592311 () Bool)

(assert (=> b!1318060 (=> (not res!592311) (not e!844842))))

(assert (=> b!1318060 (= res!592311 (isEmpty!7930 (tail!1890 lt!434732)))))

(declare-fun b!1318061 () Bool)

(declare-fun derivativeStep!901 (Regex!3625 C!7540) Regex!3625)

(assert (=> b!1318061 (= e!844843 (matchR!1627 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)) (tail!1890 lt!434732)))))

(declare-fun b!1318062 () Bool)

(assert (=> b!1318062 (= e!844845 (= lt!434824 call!89518))))

(declare-fun b!1318063 () Bool)

(assert (=> b!1318063 (= e!844839 (not (= (head!2281 lt!434732) (c!216254 (regex!2311 (rule!4054 t1!34))))))))

(declare-fun b!1318064 () Bool)

(declare-fun res!592310 () Bool)

(assert (=> b!1318064 (=> res!592310 e!844840)))

(assert (=> b!1318064 (= res!592310 e!844842)))

(declare-fun res!592309 () Bool)

(assert (=> b!1318064 (=> (not res!592309) (not e!844842))))

(assert (=> b!1318064 (= res!592309 lt!434824)))

(declare-fun b!1318065 () Bool)

(assert (=> b!1318065 (= e!844844 (not lt!434824))))

(declare-fun b!1318066 () Bool)

(declare-fun res!592312 () Bool)

(assert (=> b!1318066 (=> (not res!592312) (not e!844842))))

(assert (=> b!1318066 (= res!592312 (not call!89518))))

(declare-fun b!1318067 () Bool)

(assert (=> b!1318067 (= e!844841 e!844839)))

(declare-fun res!592315 () Bool)

(assert (=> b!1318067 (=> res!592315 e!844839)))

(assert (=> b!1318067 (= res!592315 call!89518)))

(assert (= (and d!371846 c!216317) b!1318059))

(assert (= (and d!371846 (not c!216317)) b!1318061))

(assert (= (and d!371846 c!216318) b!1318062))

(assert (= (and d!371846 (not c!216318)) b!1318058))

(assert (= (and b!1318058 c!216316) b!1318065))

(assert (= (and b!1318058 (not c!216316)) b!1318055))

(assert (= (and b!1318055 (not res!592308)) b!1318064))

(assert (= (and b!1318064 res!592309) b!1318066))

(assert (= (and b!1318066 res!592312) b!1318060))

(assert (= (and b!1318060 res!592311) b!1318057))

(assert (= (and b!1318064 (not res!592310)) b!1318054))

(assert (= (and b!1318054 res!592314) b!1318067))

(assert (= (and b!1318067 (not res!592315)) b!1318056))

(assert (= (and b!1318056 (not res!592313)) b!1318063))

(assert (= (or b!1318062 b!1318066 b!1318067) bm!89513))

(declare-fun m!1472701 () Bool)

(assert (=> b!1318057 m!1472701))

(declare-fun m!1472703 () Bool)

(assert (=> b!1318056 m!1472703))

(assert (=> b!1318056 m!1472703))

(declare-fun m!1472705 () Bool)

(assert (=> b!1318056 m!1472705))

(assert (=> b!1318060 m!1472703))

(assert (=> b!1318060 m!1472703))

(assert (=> b!1318060 m!1472705))

(declare-fun m!1472707 () Bool)

(assert (=> b!1318059 m!1472707))

(assert (=> b!1318063 m!1472701))

(declare-fun m!1472709 () Bool)

(assert (=> d!371846 m!1472709))

(declare-fun m!1472711 () Bool)

(assert (=> d!371846 m!1472711))

(assert (=> bm!89513 m!1472709))

(assert (=> b!1318061 m!1472701))

(assert (=> b!1318061 m!1472701))

(declare-fun m!1472713 () Bool)

(assert (=> b!1318061 m!1472713))

(assert (=> b!1318061 m!1472703))

(assert (=> b!1318061 m!1472713))

(assert (=> b!1318061 m!1472703))

(declare-fun m!1472715 () Bool)

(assert (=> b!1318061 m!1472715))

(assert (=> b!1317751 d!371846))

(declare-fun d!371848 () Bool)

(assert (=> d!371848 (dynLambda!5838 lambda!53723 (rule!4054 t2!34))))

(declare-fun lt!434837 () Unit!19422)

(declare-fun choose!8059 (List!13422 Int Rule!4422) Unit!19422)

(assert (=> d!371848 (= lt!434837 (choose!8059 rules!2550 lambda!53723 (rule!4054 t2!34)))))

(declare-fun e!844854 () Bool)

(assert (=> d!371848 e!844854))

(declare-fun res!592322 () Bool)

(assert (=> d!371848 (=> (not res!592322) (not e!844854))))

(declare-fun forall!3296 (List!13422 Int) Bool)

(assert (=> d!371848 (= res!592322 (forall!3296 rules!2550 lambda!53723))))

(assert (=> d!371848 (= (forallContained!562 rules!2550 lambda!53723 (rule!4054 t2!34)) lt!434837)))

(declare-fun b!1318078 () Bool)

(assert (=> b!1318078 (= e!844854 (contains!2349 rules!2550 (rule!4054 t2!34)))))

(assert (= (and d!371848 res!592322) b!1318078))

(declare-fun b_lambda!38267 () Bool)

(assert (=> (not b_lambda!38267) (not d!371848)))

(declare-fun m!1472717 () Bool)

(assert (=> d!371848 m!1472717))

(declare-fun m!1472719 () Bool)

(assert (=> d!371848 m!1472719))

(declare-fun m!1472721 () Bool)

(assert (=> d!371848 m!1472721))

(assert (=> b!1318078 m!1472395))

(assert (=> b!1317751 d!371848))

(declare-fun d!371850 () Bool)

(assert (=> d!371850 (dynLambda!5838 lambda!53723 (rule!4054 t1!34))))

(declare-fun lt!434838 () Unit!19422)

(assert (=> d!371850 (= lt!434838 (choose!8059 rules!2550 lambda!53723 (rule!4054 t1!34)))))

(declare-fun e!844855 () Bool)

(assert (=> d!371850 e!844855))

(declare-fun res!592333 () Bool)

(assert (=> d!371850 (=> (not res!592333) (not e!844855))))

(assert (=> d!371850 (= res!592333 (forall!3296 rules!2550 lambda!53723))))

(assert (=> d!371850 (= (forallContained!562 rules!2550 lambda!53723 (rule!4054 t1!34)) lt!434838)))

(declare-fun b!1318089 () Bool)

(assert (=> b!1318089 (= e!844855 (contains!2349 rules!2550 (rule!4054 t1!34)))))

(assert (= (and d!371850 res!592333) b!1318089))

(declare-fun b_lambda!38269 () Bool)

(assert (=> (not b_lambda!38269) (not d!371850)))

(declare-fun m!1472723 () Bool)

(assert (=> d!371850 m!1472723))

(declare-fun m!1472725 () Bool)

(assert (=> d!371850 m!1472725))

(assert (=> d!371850 m!1472721))

(assert (=> b!1318089 m!1472311))

(assert (=> b!1317751 d!371850))

(declare-fun d!371852 () Bool)

(assert (=> d!371852 (dynLambda!5838 lambda!53723 lt!434734)))

(declare-fun lt!434839 () Unit!19422)

(assert (=> d!371852 (= lt!434839 (choose!8059 rules!2550 lambda!53723 lt!434734))))

(declare-fun e!844856 () Bool)

(assert (=> d!371852 e!844856))

(declare-fun res!592334 () Bool)

(assert (=> d!371852 (=> (not res!592334) (not e!844856))))

(assert (=> d!371852 (= res!592334 (forall!3296 rules!2550 lambda!53723))))

(assert (=> d!371852 (= (forallContained!562 rules!2550 lambda!53723 lt!434734) lt!434839)))

(declare-fun b!1318090 () Bool)

(assert (=> b!1318090 (= e!844856 (contains!2349 rules!2550 lt!434734))))

(assert (= (and d!371852 res!592334) b!1318090))

(declare-fun b_lambda!38271 () Bool)

(assert (=> (not b_lambda!38271) (not d!371852)))

(declare-fun m!1472727 () Bool)

(assert (=> d!371852 m!1472727))

(declare-fun m!1472729 () Bool)

(assert (=> d!371852 m!1472729))

(assert (=> d!371852 m!1472721))

(assert (=> b!1318090 m!1472325))

(assert (=> b!1317751 d!371852))

(declare-fun d!371854 () Bool)

(declare-fun lt!434842 () Bool)

(assert (=> d!371854 (= lt!434842 (isEmpty!7930 (list!5034 (_2!7375 lt!434721))))))

(declare-fun isEmpty!7931 (Conc!4392) Bool)

(assert (=> d!371854 (= lt!434842 (isEmpty!7931 (c!216255 (_2!7375 lt!434721))))))

(assert (=> d!371854 (= (isEmpty!7924 (_2!7375 lt!434721)) lt!434842)))

(declare-fun bs!330660 () Bool)

(assert (= bs!330660 d!371854))

(declare-fun m!1472731 () Bool)

(assert (=> bs!330660 m!1472731))

(assert (=> bs!330660 m!1472731))

(declare-fun m!1472733 () Bool)

(assert (=> bs!330660 m!1472733))

(declare-fun m!1472735 () Bool)

(assert (=> bs!330660 m!1472735))

(assert (=> b!1317752 d!371854))

(declare-fun bs!330661 () Bool)

(declare-fun d!371856 () Bool)

(assert (= bs!330661 (and d!371856 b!1317731)))

(declare-fun lambda!53735 () Int)

(assert (=> bs!330661 (not (= lambda!53735 lambda!53722))))

(declare-fun bs!330662 () Bool)

(assert (= bs!330662 (and d!371856 b!1317751)))

(assert (=> bs!330662 (not (= lambda!53735 lambda!53723))))

(assert (=> d!371856 true))

(declare-fun order!8051 () Int)

(declare-fun dynLambda!5844 (Int Int) Int)

(assert (=> d!371856 (< (dynLambda!5844 order!8051 lambda!53722) (dynLambda!5844 order!8051 lambda!53735))))

(assert (=> d!371856 (= (exists!324 rules!2550 lambda!53722) (not (forall!3296 rules!2550 lambda!53735)))))

(declare-fun bs!330663 () Bool)

(assert (= bs!330663 d!371856))

(declare-fun m!1472737 () Bool)

(assert (=> bs!330663 m!1472737))

(assert (=> b!1317731 d!371856))

(declare-fun bs!330664 () Bool)

(declare-fun d!371858 () Bool)

(assert (= bs!330664 (and d!371858 b!1317731)))

(declare-fun lambda!53738 () Int)

(assert (=> bs!330664 (not (= lambda!53738 lambda!53722))))

(declare-fun bs!330665 () Bool)

(assert (= bs!330665 (and d!371858 b!1317751)))

(assert (=> bs!330665 (not (= lambda!53738 lambda!53723))))

(declare-fun bs!330666 () Bool)

(assert (= bs!330666 (and d!371858 d!371856)))

(assert (=> bs!330666 (not (= lambda!53738 lambda!53735))))

(assert (=> d!371858 true))

(assert (=> d!371858 true))

(declare-fun order!8053 () Int)

(declare-fun dynLambda!5845 (Int Int) Int)

(assert (=> d!371858 (< (dynLambda!5845 order!8053 lambda!53720) (dynLambda!5844 order!8051 lambda!53738))))

(assert (=> d!371858 (exists!324 rules!2550 lambda!53738)))

(declare-fun lt!434851 () Unit!19422)

(declare-fun choose!8060 (List!13422 Int Regex!3625) Unit!19422)

(assert (=> d!371858 (= lt!434851 (choose!8060 rules!2550 lambda!53720 lt!434717))))

(assert (=> d!371858 (contains!2347 (map!2933 rules!2550 lambda!53720) lt!434717)))

(assert (=> d!371858 (= (lemmaMapContains!54 rules!2550 lambda!53720 lt!434717) lt!434851)))

(declare-fun bs!330667 () Bool)

(assert (= bs!330667 d!371858))

(declare-fun m!1472775 () Bool)

(assert (=> bs!330667 m!1472775))

(declare-fun m!1472777 () Bool)

(assert (=> bs!330667 m!1472777))

(assert (=> bs!330667 m!1472297))

(assert (=> bs!330667 m!1472297))

(assert (=> bs!330667 m!1472299))

(assert (=> b!1317731 d!371858))

(declare-fun b!1318118 () Bool)

(declare-fun e!844868 () tuple2!12980)

(declare-fun lt!434859 () Option!2580)

(declare-fun lt!434860 () tuple2!12980)

(assert (=> b!1318118 (= e!844868 (tuple2!12981 (Cons!13357 (_1!7377 (v!21135 lt!434859)) (_1!7376 lt!434860)) (_2!7376 lt!434860)))))

(assert (=> b!1318118 (= lt!434860 (lexList!544 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!434859))))))

(declare-fun b!1318119 () Bool)

(assert (=> b!1318119 (= e!844868 (tuple2!12981 Nil!13357 (list!5034 lt!434726)))))

(declare-fun b!1318120 () Bool)

(declare-fun e!844870 () Bool)

(declare-fun lt!434858 () tuple2!12980)

(assert (=> b!1318120 (= e!844870 (= (_2!7376 lt!434858) (list!5034 lt!434726)))))

(declare-fun b!1318121 () Bool)

(declare-fun e!844869 () Bool)

(assert (=> b!1318121 (= e!844870 e!844869)))

(declare-fun res!592346 () Bool)

(declare-fun size!10874 (List!13420) Int)

(assert (=> b!1318121 (= res!592346 (< (size!10874 (_2!7376 lt!434858)) (size!10874 (list!5034 lt!434726))))))

(assert (=> b!1318121 (=> (not res!592346) (not e!844869))))

(declare-fun b!1318122 () Bool)

(declare-fun isEmpty!7932 (List!13423) Bool)

(assert (=> b!1318122 (= e!844869 (not (isEmpty!7932 (_1!7376 lt!434858))))))

(declare-fun d!371864 () Bool)

(assert (=> d!371864 e!844870))

(declare-fun c!216327 () Bool)

(declare-fun size!10875 (List!13423) Int)

(assert (=> d!371864 (= c!216327 (> (size!10875 (_1!7376 lt!434858)) 0))))

(assert (=> d!371864 (= lt!434858 e!844868)))

(declare-fun c!216326 () Bool)

(assert (=> d!371864 (= c!216326 ((_ is Some!2579) lt!434859))))

(assert (=> d!371864 (= lt!434859 (maxPrefix!1016 thiss!19762 rules!2550 (list!5034 lt!434726)))))

(assert (=> d!371864 (= (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434726)) lt!434858)))

(assert (= (and d!371864 c!216326) b!1318118))

(assert (= (and d!371864 (not c!216326)) b!1318119))

(assert (= (and d!371864 c!216327) b!1318121))

(assert (= (and d!371864 (not c!216327)) b!1318120))

(assert (= (and b!1318121 res!592346) b!1318122))

(declare-fun m!1472787 () Bool)

(assert (=> b!1318118 m!1472787))

(declare-fun m!1472789 () Bool)

(assert (=> b!1318121 m!1472789))

(assert (=> b!1318121 m!1472313))

(declare-fun m!1472791 () Bool)

(assert (=> b!1318121 m!1472791))

(declare-fun m!1472793 () Bool)

(assert (=> b!1318122 m!1472793))

(declare-fun m!1472795 () Bool)

(assert (=> d!371864 m!1472795))

(assert (=> d!371864 m!1472313))

(declare-fun m!1472797 () Bool)

(assert (=> d!371864 m!1472797))

(assert (=> b!1317754 d!371864))

(declare-fun d!371868 () Bool)

(declare-fun list!5039 (Conc!4392) List!13420)

(assert (=> d!371868 (= (list!5034 lt!434726) (list!5039 (c!216255 lt!434726)))))

(declare-fun bs!330670 () Bool)

(assert (= bs!330670 d!371868))

(declare-fun m!1472801 () Bool)

(assert (=> bs!330670 m!1472801))

(assert (=> b!1317754 d!371868))

(declare-fun d!371872 () Bool)

(declare-fun lt!434863 () Int)

(assert (=> d!371872 (= lt!434863 (size!10874 (list!5034 lt!434725)))))

(declare-fun size!10877 (Conc!4392) Int)

(assert (=> d!371872 (= lt!434863 (size!10877 (c!216255 lt!434725)))))

(assert (=> d!371872 (= (size!10867 lt!434725) lt!434863)))

(declare-fun bs!330671 () Bool)

(assert (= bs!330671 d!371872))

(assert (=> bs!330671 m!1472335))

(assert (=> bs!330671 m!1472335))

(declare-fun m!1472803 () Bool)

(assert (=> bs!330671 m!1472803))

(declare-fun m!1472805 () Bool)

(assert (=> bs!330671 m!1472805))

(assert (=> b!1317733 d!371872))

(declare-fun d!371874 () Bool)

(declare-fun lt!434868 () BalanceConc!8724)

(assert (=> d!371874 (= (list!5034 lt!434868) (originalCharacters!3173 t2!34))))

(declare-fun dynLambda!5846 (Int TokenValue!2401) BalanceConc!8724)

(assert (=> d!371874 (= lt!434868 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))

(assert (=> d!371874 (= (charsOf!1283 t2!34) lt!434868)))

(declare-fun b_lambda!38273 () Bool)

(assert (=> (not b_lambda!38273) (not d!371874)))

(declare-fun t!118455 () Bool)

(declare-fun tb!70005 () Bool)

(assert (=> (and b!1317739 (= (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toChars!3397 (transformation!2311 (rule!4054 t2!34)))) t!118455) tb!70005))

(declare-fun b!1318129 () Bool)

(declare-fun e!844875 () Bool)

(declare-fun tp!383179 () Bool)

(declare-fun inv!17735 (Conc!4392) Bool)

(assert (=> b!1318129 (= e!844875 (and (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))) tp!383179))))

(declare-fun result!84948 () Bool)

(declare-fun inv!17736 (BalanceConc!8724) Bool)

(assert (=> tb!70005 (= result!84948 (and (inv!17736 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))) e!844875))))

(assert (= tb!70005 b!1318129))

(declare-fun m!1472807 () Bool)

(assert (=> b!1318129 m!1472807))

(declare-fun m!1472809 () Bool)

(assert (=> tb!70005 m!1472809))

(assert (=> d!371874 t!118455))

(declare-fun b_and!88059 () Bool)

(assert (= b_and!88025 (and (=> t!118455 result!84948) b_and!88059)))

(declare-fun t!118457 () Bool)

(declare-fun tb!70007 () Bool)

(assert (=> (and b!1317747 (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 t2!34)))) t!118457) tb!70007))

(declare-fun result!84952 () Bool)

(assert (= result!84952 result!84948))

(assert (=> d!371874 t!118457))

(declare-fun b_and!88061 () Bool)

(assert (= b_and!88029 (and (=> t!118457 result!84952) b_and!88061)))

(declare-fun tb!70009 () Bool)

(declare-fun t!118459 () Bool)

(assert (=> (and b!1317736 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t2!34)))) t!118459) tb!70009))

(declare-fun result!84954 () Bool)

(assert (= result!84954 result!84948))

(assert (=> d!371874 t!118459))

(declare-fun b_and!88063 () Bool)

(assert (= b_and!88033 (and (=> t!118459 result!84954) b_and!88063)))

(declare-fun m!1472815 () Bool)

(assert (=> d!371874 m!1472815))

(declare-fun m!1472817 () Bool)

(assert (=> d!371874 m!1472817))

(assert (=> b!1317733 d!371874))

(declare-fun d!371878 () Bool)

(assert (=> d!371878 (= (list!5035 (_1!7375 lt!434721)) (list!5038 (c!216256 (_1!7375 lt!434721))))))

(declare-fun bs!330674 () Bool)

(assert (= bs!330674 d!371878))

(declare-fun m!1472819 () Bool)

(assert (=> bs!330674 m!1472819))

(assert (=> b!1317732 d!371878))

(declare-fun lt!434870 () tuple2!12978)

(declare-fun e!844877 () Bool)

(declare-fun b!1318130 () Bool)

(assert (=> b!1318130 (= e!844877 (= (list!5034 (_2!7375 lt!434870)) (_2!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434723)))))))

(declare-fun b!1318131 () Bool)

(declare-fun e!844876 () Bool)

(assert (=> b!1318131 (= e!844876 (= (_2!7375 lt!434870) lt!434723))))

(declare-fun b!1318132 () Bool)

(declare-fun e!844878 () Bool)

(assert (=> b!1318132 (= e!844878 (not (isEmpty!7928 (_1!7375 lt!434870))))))

(declare-fun b!1318133 () Bool)

(assert (=> b!1318133 (= e!844876 e!844878)))

(declare-fun res!592350 () Bool)

(assert (=> b!1318133 (= res!592350 (< (size!10867 (_2!7375 lt!434870)) (size!10867 lt!434723)))))

(assert (=> b!1318133 (=> (not res!592350) (not e!844878))))

(declare-fun d!371880 () Bool)

(assert (=> d!371880 e!844877))

(declare-fun res!592351 () Bool)

(assert (=> d!371880 (=> (not res!592351) (not e!844877))))

(assert (=> d!371880 (= res!592351 e!844876)))

(declare-fun c!216328 () Bool)

(assert (=> d!371880 (= c!216328 (> (size!10870 (_1!7375 lt!434870)) 0))))

(assert (=> d!371880 (= lt!434870 (lexTailRecV2!367 thiss!19762 rules!2550 lt!434723 (BalanceConc!8725 Empty!4392) lt!434723 (BalanceConc!8727 Empty!4393)))))

(assert (=> d!371880 (= (lex!841 thiss!19762 rules!2550 lt!434723) lt!434870)))

(declare-fun b!1318134 () Bool)

(declare-fun res!592349 () Bool)

(assert (=> b!1318134 (=> (not res!592349) (not e!844877))))

(assert (=> b!1318134 (= res!592349 (= (list!5035 (_1!7375 lt!434870)) (_1!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434723)))))))

(assert (= (and d!371880 c!216328) b!1318133))

(assert (= (and d!371880 (not c!216328)) b!1318131))

(assert (= (and b!1318133 res!592350) b!1318132))

(assert (= (and d!371880 res!592351) b!1318134))

(assert (= (and b!1318134 res!592349) b!1318130))

(declare-fun m!1472821 () Bool)

(assert (=> b!1318134 m!1472821))

(assert (=> b!1318134 m!1472277))

(assert (=> b!1318134 m!1472277))

(assert (=> b!1318134 m!1472279))

(declare-fun m!1472823 () Bool)

(assert (=> d!371880 m!1472823))

(declare-fun m!1472825 () Bool)

(assert (=> d!371880 m!1472825))

(declare-fun m!1472827 () Bool)

(assert (=> b!1318133 m!1472827))

(declare-fun m!1472829 () Bool)

(assert (=> b!1318133 m!1472829))

(declare-fun m!1472831 () Bool)

(assert (=> b!1318132 m!1472831))

(declare-fun m!1472833 () Bool)

(assert (=> b!1318130 m!1472833))

(assert (=> b!1318130 m!1472277))

(assert (=> b!1318130 m!1472277))

(assert (=> b!1318130 m!1472279))

(assert (=> b!1317732 d!371880))

(declare-fun d!371882 () Bool)

(declare-fun lt!434871 () BalanceConc!8724)

(assert (=> d!371882 (= (list!5034 lt!434871) (printList!562 thiss!19762 (list!5035 (singletonSeq!892 t2!34))))))

(assert (=> d!371882 (= lt!434871 (printTailRec!544 thiss!19762 (singletonSeq!892 t2!34) 0 (BalanceConc!8725 Empty!4392)))))

(assert (=> d!371882 (= (print!780 thiss!19762 (singletonSeq!892 t2!34)) lt!434871)))

(declare-fun bs!330675 () Bool)

(assert (= bs!330675 d!371882))

(declare-fun m!1472835 () Bool)

(assert (=> bs!330675 m!1472835))

(assert (=> bs!330675 m!1472321))

(declare-fun m!1472837 () Bool)

(assert (=> bs!330675 m!1472837))

(assert (=> bs!330675 m!1472837))

(declare-fun m!1472839 () Bool)

(assert (=> bs!330675 m!1472839))

(assert (=> bs!330675 m!1472321))

(declare-fun m!1472841 () Bool)

(assert (=> bs!330675 m!1472841))

(assert (=> b!1317732 d!371882))

(declare-fun d!371884 () Bool)

(declare-fun e!844879 () Bool)

(assert (=> d!371884 e!844879))

(declare-fun res!592352 () Bool)

(assert (=> d!371884 (=> (not res!592352) (not e!844879))))

(declare-fun lt!434872 () BalanceConc!8726)

(assert (=> d!371884 (= res!592352 (= (list!5035 lt!434872) (Cons!13357 t2!34 Nil!13357)))))

(assert (=> d!371884 (= lt!434872 (singleton!386 t2!34))))

(assert (=> d!371884 (= (singletonSeq!892 t2!34) lt!434872)))

(declare-fun b!1318135 () Bool)

(assert (=> b!1318135 (= e!844879 (isBalanced!1280 (c!216256 lt!434872)))))

(assert (= (and d!371884 res!592352) b!1318135))

(declare-fun m!1472843 () Bool)

(assert (=> d!371884 m!1472843))

(declare-fun m!1472845 () Bool)

(assert (=> d!371884 m!1472845))

(declare-fun m!1472847 () Bool)

(assert (=> b!1318135 m!1472847))

(assert (=> b!1317732 d!371884))

(declare-fun d!371886 () Bool)

(declare-fun lt!434875 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1881 (List!13424) (InoxSet Regex!3625))

(assert (=> d!371886 (= lt!434875 (select (content!1881 (map!2933 rules!2550 lambda!53720)) lt!434717))))

(declare-fun e!844890 () Bool)

(assert (=> d!371886 (= lt!434875 e!844890)))

(declare-fun res!592363 () Bool)

(assert (=> d!371886 (=> (not res!592363) (not e!844890))))

(assert (=> d!371886 (= res!592363 ((_ is Cons!13358) (map!2933 rules!2550 lambda!53720)))))

(assert (=> d!371886 (= (contains!2347 (map!2933 rules!2550 lambda!53720) lt!434717) lt!434875)))

(declare-fun b!1318146 () Bool)

(declare-fun e!844891 () Bool)

(assert (=> b!1318146 (= e!844890 e!844891)))

(declare-fun res!592364 () Bool)

(assert (=> b!1318146 (=> res!592364 e!844891)))

(assert (=> b!1318146 (= res!592364 (= (h!18759 (map!2933 rules!2550 lambda!53720)) lt!434717))))

(declare-fun b!1318147 () Bool)

(assert (=> b!1318147 (= e!844891 (contains!2347 (t!118439 (map!2933 rules!2550 lambda!53720)) lt!434717))))

(assert (= (and d!371886 res!592363) b!1318146))

(assert (= (and b!1318146 (not res!592364)) b!1318147))

(assert (=> d!371886 m!1472297))

(declare-fun m!1472853 () Bool)

(assert (=> d!371886 m!1472853))

(declare-fun m!1472855 () Bool)

(assert (=> d!371886 m!1472855))

(declare-fun m!1472857 () Bool)

(assert (=> b!1318147 m!1472857))

(assert (=> b!1317734 d!371886))

(declare-fun d!371890 () Bool)

(declare-fun lt!434878 () List!13424)

(declare-fun size!10878 (List!13424) Int)

(declare-fun size!10879 (List!13422) Int)

(assert (=> d!371890 (= (size!10878 lt!434878) (size!10879 rules!2550))))

(declare-fun e!844894 () List!13424)

(assert (=> d!371890 (= lt!434878 e!844894)))

(declare-fun c!216331 () Bool)

(assert (=> d!371890 (= c!216331 ((_ is Nil!13356) rules!2550))))

(assert (=> d!371890 (= (map!2933 rules!2550 lambda!53720) lt!434878)))

(declare-fun b!1318152 () Bool)

(assert (=> b!1318152 (= e!844894 Nil!13358)))

(declare-fun b!1318153 () Bool)

(declare-fun $colon$colon!153 (List!13424 Regex!3625) List!13424)

(declare-fun dynLambda!5847 (Int Rule!4422) Regex!3625)

(assert (=> b!1318153 (= e!844894 ($colon$colon!153 (map!2933 (t!118437 rules!2550) lambda!53720) (dynLambda!5847 lambda!53720 (h!18757 rules!2550))))))

(assert (= (and d!371890 c!216331) b!1318152))

(assert (= (and d!371890 (not c!216331)) b!1318153))

(declare-fun b_lambda!38275 () Bool)

(assert (=> (not b_lambda!38275) (not b!1318153)))

(declare-fun m!1472859 () Bool)

(assert (=> d!371890 m!1472859))

(declare-fun m!1472861 () Bool)

(assert (=> d!371890 m!1472861))

(declare-fun m!1472863 () Bool)

(assert (=> b!1318153 m!1472863))

(declare-fun m!1472865 () Bool)

(assert (=> b!1318153 m!1472865))

(assert (=> b!1318153 m!1472863))

(assert (=> b!1318153 m!1472865))

(declare-fun m!1472867 () Bool)

(assert (=> b!1318153 m!1472867))

(assert (=> b!1317734 d!371890))

(declare-fun b!1318166 () Bool)

(declare-fun e!844906 () Regex!3625)

(assert (=> b!1318166 (= e!844906 (getWitness!217 (t!118439 (map!2933 rules!2550 lambda!53720)) lambda!53721))))

(declare-fun b!1318168 () Bool)

(declare-fun e!844905 () Regex!3625)

(assert (=> b!1318168 (= e!844905 e!844906)))

(declare-fun c!216337 () Bool)

(assert (=> b!1318168 (= c!216337 ((_ is Cons!13358) (map!2933 rules!2550 lambda!53720)))))

(declare-fun e!844904 () Bool)

(declare-fun b!1318169 () Bool)

(declare-fun dynLambda!5848 (Int Regex!3625) Bool)

(assert (=> b!1318169 (= e!844904 (dynLambda!5848 lambda!53721 (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun b!1318170 () Bool)

(declare-fun lt!434884 () Unit!19422)

(declare-fun Unit!19426 () Unit!19422)

(assert (=> b!1318170 (= lt!434884 Unit!19426)))

(assert (=> b!1318170 false))

(declare-fun head!2283 (List!13424) Regex!3625)

(assert (=> b!1318170 (= e!844906 (head!2283 (map!2933 rules!2550 lambda!53720)))))

(declare-fun e!844903 () Bool)

(declare-fun lt!434883 () Regex!3625)

(declare-fun b!1318171 () Bool)

(assert (=> b!1318171 (= e!844903 (contains!2347 (map!2933 rules!2550 lambda!53720) lt!434883))))

(declare-fun d!371892 () Bool)

(assert (=> d!371892 e!844903))

(declare-fun res!592370 () Bool)

(assert (=> d!371892 (=> (not res!592370) (not e!844903))))

(assert (=> d!371892 (= res!592370 (dynLambda!5848 lambda!53721 lt!434883))))

(assert (=> d!371892 (= lt!434883 e!844905)))

(declare-fun c!216336 () Bool)

(assert (=> d!371892 (= c!216336 e!844904)))

(declare-fun res!592369 () Bool)

(assert (=> d!371892 (=> (not res!592369) (not e!844904))))

(assert (=> d!371892 (= res!592369 ((_ is Cons!13358) (map!2933 rules!2550 lambda!53720)))))

(assert (=> d!371892 (exists!325 (map!2933 rules!2550 lambda!53720) lambda!53721)))

(assert (=> d!371892 (= (getWitness!217 (map!2933 rules!2550 lambda!53720) lambda!53721) lt!434883)))

(declare-fun b!1318167 () Bool)

(assert (=> b!1318167 (= e!844905 (h!18759 (map!2933 rules!2550 lambda!53720)))))

(assert (= (and d!371892 res!592369) b!1318169))

(assert (= (and d!371892 c!216336) b!1318167))

(assert (= (and d!371892 (not c!216336)) b!1318168))

(assert (= (and b!1318168 c!216337) b!1318166))

(assert (= (and b!1318168 (not c!216337)) b!1318170))

(assert (= (and d!371892 res!592370) b!1318171))

(declare-fun b_lambda!38277 () Bool)

(assert (=> (not b_lambda!38277) (not b!1318169)))

(declare-fun b_lambda!38279 () Bool)

(assert (=> (not b_lambda!38279) (not d!371892)))

(declare-fun m!1472869 () Bool)

(assert (=> b!1318169 m!1472869))

(declare-fun m!1472871 () Bool)

(assert (=> b!1318166 m!1472871))

(assert (=> b!1318170 m!1472297))

(declare-fun m!1472873 () Bool)

(assert (=> b!1318170 m!1472873))

(declare-fun m!1472875 () Bool)

(assert (=> d!371892 m!1472875))

(assert (=> d!371892 m!1472297))

(assert (=> d!371892 m!1472339))

(assert (=> b!1318171 m!1472297))

(declare-fun m!1472877 () Bool)

(assert (=> b!1318171 m!1472877))

(assert (=> b!1317734 d!371892))

(declare-fun b!1318172 () Bool)

(declare-fun e!844907 () tuple2!12980)

(declare-fun lt!434886 () Option!2580)

(declare-fun lt!434887 () tuple2!12980)

(assert (=> b!1318172 (= e!844907 (tuple2!12981 (Cons!13357 (_1!7377 (v!21135 lt!434886)) (_1!7376 lt!434887)) (_2!7376 lt!434887)))))

(assert (=> b!1318172 (= lt!434887 (lexList!544 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!434886))))))

(declare-fun b!1318173 () Bool)

(assert (=> b!1318173 (= e!844907 (tuple2!12981 Nil!13357 (list!5034 lt!434723)))))

(declare-fun b!1318174 () Bool)

(declare-fun e!844909 () Bool)

(declare-fun lt!434885 () tuple2!12980)

(assert (=> b!1318174 (= e!844909 (= (_2!7376 lt!434885) (list!5034 lt!434723)))))

(declare-fun b!1318175 () Bool)

(declare-fun e!844908 () Bool)

(assert (=> b!1318175 (= e!844909 e!844908)))

(declare-fun res!592371 () Bool)

(assert (=> b!1318175 (= res!592371 (< (size!10874 (_2!7376 lt!434885)) (size!10874 (list!5034 lt!434723))))))

(assert (=> b!1318175 (=> (not res!592371) (not e!844908))))

(declare-fun b!1318176 () Bool)

(assert (=> b!1318176 (= e!844908 (not (isEmpty!7932 (_1!7376 lt!434885))))))

(declare-fun d!371894 () Bool)

(assert (=> d!371894 e!844909))

(declare-fun c!216339 () Bool)

(assert (=> d!371894 (= c!216339 (> (size!10875 (_1!7376 lt!434885)) 0))))

(assert (=> d!371894 (= lt!434885 e!844907)))

(declare-fun c!216338 () Bool)

(assert (=> d!371894 (= c!216338 ((_ is Some!2579) lt!434886))))

(assert (=> d!371894 (= lt!434886 (maxPrefix!1016 thiss!19762 rules!2550 (list!5034 lt!434723)))))

(assert (=> d!371894 (= (lexList!544 thiss!19762 rules!2550 (list!5034 lt!434723)) lt!434885)))

(assert (= (and d!371894 c!216338) b!1318172))

(assert (= (and d!371894 (not c!216338)) b!1318173))

(assert (= (and d!371894 c!216339) b!1318175))

(assert (= (and d!371894 (not c!216339)) b!1318174))

(assert (= (and b!1318175 res!592371) b!1318176))

(declare-fun m!1472879 () Bool)

(assert (=> b!1318172 m!1472879))

(declare-fun m!1472881 () Bool)

(assert (=> b!1318175 m!1472881))

(assert (=> b!1318175 m!1472277))

(declare-fun m!1472883 () Bool)

(assert (=> b!1318175 m!1472883))

(declare-fun m!1472885 () Bool)

(assert (=> b!1318176 m!1472885))

(declare-fun m!1472887 () Bool)

(assert (=> d!371894 m!1472887))

(assert (=> d!371894 m!1472277))

(declare-fun m!1472889 () Bool)

(assert (=> d!371894 m!1472889))

(assert (=> b!1317755 d!371894))

(declare-fun d!371896 () Bool)

(assert (=> d!371896 (= (list!5034 lt!434723) (list!5039 (c!216255 lt!434723)))))

(declare-fun bs!330676 () Bool)

(assert (= bs!330676 d!371896))

(declare-fun m!1472891 () Bool)

(assert (=> bs!330676 m!1472891))

(assert (=> b!1317755 d!371896))

(declare-fun d!371898 () Bool)

(assert (=> d!371898 (= (isEmpty!7925 rules!2550) ((_ is Nil!13356) rules!2550))))

(assert (=> b!1317746 d!371898))

(declare-fun d!371900 () Bool)

(declare-fun lt!434890 () Bool)

(declare-fun content!1882 (List!13422) (InoxSet Rule!4422))

(assert (=> d!371900 (= lt!434890 (select (content!1882 rules!2550) (rule!4054 t1!34)))))

(declare-fun e!844915 () Bool)

(assert (=> d!371900 (= lt!434890 e!844915)))

(declare-fun res!592377 () Bool)

(assert (=> d!371900 (=> (not res!592377) (not e!844915))))

(assert (=> d!371900 (= res!592377 ((_ is Cons!13356) rules!2550))))

(assert (=> d!371900 (= (contains!2349 rules!2550 (rule!4054 t1!34)) lt!434890)))

(declare-fun b!1318181 () Bool)

(declare-fun e!844914 () Bool)

(assert (=> b!1318181 (= e!844915 e!844914)))

(declare-fun res!592376 () Bool)

(assert (=> b!1318181 (=> res!592376 e!844914)))

(assert (=> b!1318181 (= res!592376 (= (h!18757 rules!2550) (rule!4054 t1!34)))))

(declare-fun b!1318182 () Bool)

(assert (=> b!1318182 (= e!844914 (contains!2349 (t!118437 rules!2550) (rule!4054 t1!34)))))

(assert (= (and d!371900 res!592377) b!1318181))

(assert (= (and b!1318181 (not res!592376)) b!1318182))

(declare-fun m!1472893 () Bool)

(assert (=> d!371900 m!1472893))

(declare-fun m!1472895 () Bool)

(assert (=> d!371900 m!1472895))

(declare-fun m!1472897 () Bool)

(assert (=> b!1318182 m!1472897))

(assert (=> b!1317767 d!371900))

(declare-fun d!371902 () Bool)

(assert (=> d!371902 (= (inv!17728 (tag!2573 (rule!4054 t1!34))) (= (mod (str.len (value!75495 (tag!2573 (rule!4054 t1!34)))) 2) 0))))

(assert (=> b!1317769 d!371902))

(declare-fun d!371904 () Bool)

(declare-fun res!592380 () Bool)

(declare-fun e!844918 () Bool)

(assert (=> d!371904 (=> (not res!592380) (not e!844918))))

(declare-fun semiInverseModEq!870 (Int Int) Bool)

(assert (=> d!371904 (= res!592380 (semiInverseModEq!870 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 t1!34)))))))

(assert (=> d!371904 (= (inv!17732 (transformation!2311 (rule!4054 t1!34))) e!844918)))

(declare-fun b!1318185 () Bool)

(declare-fun equivClasses!829 (Int Int) Bool)

(assert (=> b!1318185 (= e!844918 (equivClasses!829 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 t1!34)))))))

(assert (= (and d!371904 res!592380) b!1318185))

(declare-fun m!1472899 () Bool)

(assert (=> d!371904 m!1472899))

(declare-fun m!1472901 () Bool)

(assert (=> b!1318185 m!1472901))

(assert (=> b!1317769 d!371904))

(declare-fun b!1318204 () Bool)

(declare-fun e!844925 () Option!2580)

(declare-fun lt!434902 () Option!2580)

(declare-fun lt!434903 () Option!2580)

(assert (=> b!1318204 (= e!844925 (ite (and ((_ is None!2579) lt!434902) ((_ is None!2579) lt!434903)) None!2579 (ite ((_ is None!2579) lt!434903) lt!434902 (ite ((_ is None!2579) lt!434902) lt!434903 (ite (>= (size!10866 (_1!7377 (v!21135 lt!434902))) (size!10866 (_1!7377 (v!21135 lt!434903)))) lt!434902 lt!434903)))))))

(declare-fun call!89524 () Option!2580)

(assert (=> b!1318204 (= lt!434902 call!89524)))

(assert (=> b!1318204 (= lt!434903 (maxPrefix!1016 thiss!19762 (t!118437 rules!2550) lt!434732))))

(declare-fun b!1318205 () Bool)

(declare-fun res!592398 () Bool)

(declare-fun e!844926 () Bool)

(assert (=> b!1318205 (=> (not res!592398) (not e!844926))))

(declare-fun lt!434901 () Option!2580)

(declare-fun get!4260 (Option!2580) tuple2!12982)

(assert (=> b!1318205 (= res!592398 (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun b!1318206 () Bool)

(declare-fun e!844927 () Bool)

(assert (=> b!1318206 (= e!844927 e!844926)))

(declare-fun res!592397 () Bool)

(assert (=> b!1318206 (=> (not res!592397) (not e!844926))))

(declare-fun isDefined!2179 (Option!2580) Bool)

(assert (=> b!1318206 (= res!592397 (isDefined!2179 lt!434901))))

(declare-fun b!1318207 () Bool)

(declare-fun res!592395 () Bool)

(assert (=> b!1318207 (=> (not res!592395) (not e!844926))))

(assert (=> b!1318207 (= res!592395 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))) (_2!7377 (get!4260 lt!434901))) lt!434732))))

(declare-fun bm!89519 () Bool)

(declare-fun maxPrefixOneRule!581 (LexerInterface!2006 Rule!4422 List!13420) Option!2580)

(assert (=> bm!89519 (= call!89524 (maxPrefixOneRule!581 thiss!19762 (h!18757 rules!2550) lt!434732))))

(declare-fun b!1318208 () Bool)

(declare-fun res!592401 () Bool)

(assert (=> b!1318208 (=> (not res!592401) (not e!844926))))

(assert (=> b!1318208 (= res!592401 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))) (originalCharacters!3173 (_1!7377 (get!4260 lt!434901)))))))

(declare-fun b!1318209 () Bool)

(declare-fun res!592396 () Bool)

(assert (=> b!1318209 (=> (not res!592396) (not e!844926))))

(declare-fun apply!3048 (TokenValueInjection!4462 BalanceConc!8724) TokenValue!2401)

(declare-fun seqFromList!1599 (List!13420) BalanceConc!8724)

(assert (=> b!1318209 (= res!592396 (= (value!75496 (_1!7377 (get!4260 lt!434901))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun b!1318210 () Bool)

(assert (=> b!1318210 (= e!844926 (contains!2349 rules!2550 (rule!4054 (_1!7377 (get!4260 lt!434901)))))))

(declare-fun b!1318211 () Bool)

(assert (=> b!1318211 (= e!844925 call!89524)))

(declare-fun d!371906 () Bool)

(assert (=> d!371906 e!844927))

(declare-fun res!592399 () Bool)

(assert (=> d!371906 (=> res!592399 e!844927)))

(declare-fun isEmpty!7935 (Option!2580) Bool)

(assert (=> d!371906 (= res!592399 (isEmpty!7935 lt!434901))))

(assert (=> d!371906 (= lt!434901 e!844925)))

(declare-fun c!216342 () Bool)

(assert (=> d!371906 (= c!216342 (and ((_ is Cons!13356) rules!2550) ((_ is Nil!13356) (t!118437 rules!2550))))))

(declare-fun lt!434905 () Unit!19422)

(declare-fun lt!434904 () Unit!19422)

(assert (=> d!371906 (= lt!434905 lt!434904)))

(declare-fun isPrefix!1076 (List!13420 List!13420) Bool)

(assert (=> d!371906 (isPrefix!1076 lt!434732 lt!434732)))

(declare-fun lemmaIsPrefixRefl!755 (List!13420 List!13420) Unit!19422)

(assert (=> d!371906 (= lt!434904 (lemmaIsPrefixRefl!755 lt!434732 lt!434732))))

(declare-fun rulesValidInductive!728 (LexerInterface!2006 List!13422) Bool)

(assert (=> d!371906 (rulesValidInductive!728 thiss!19762 rules!2550)))

(assert (=> d!371906 (= (maxPrefix!1016 thiss!19762 rules!2550 lt!434732) lt!434901)))

(declare-fun b!1318212 () Bool)

(declare-fun res!592400 () Bool)

(assert (=> b!1318212 (=> (not res!592400) (not e!844926))))

(assert (=> b!1318212 (= res!592400 (< (size!10874 (_2!7377 (get!4260 lt!434901))) (size!10874 lt!434732)))))

(assert (= (and d!371906 c!216342) b!1318211))

(assert (= (and d!371906 (not c!216342)) b!1318204))

(assert (= (or b!1318211 b!1318204) bm!89519))

(assert (= (and d!371906 (not res!592399)) b!1318206))

(assert (= (and b!1318206 res!592397) b!1318208))

(assert (= (and b!1318208 res!592401) b!1318212))

(assert (= (and b!1318212 res!592400) b!1318207))

(assert (= (and b!1318207 res!592395) b!1318209))

(assert (= (and b!1318209 res!592396) b!1318205))

(assert (= (and b!1318205 res!592398) b!1318210))

(declare-fun m!1472903 () Bool)

(assert (=> b!1318204 m!1472903))

(declare-fun m!1472905 () Bool)

(assert (=> b!1318208 m!1472905))

(declare-fun m!1472907 () Bool)

(assert (=> b!1318208 m!1472907))

(assert (=> b!1318208 m!1472907))

(declare-fun m!1472909 () Bool)

(assert (=> b!1318208 m!1472909))

(assert (=> b!1318210 m!1472905))

(declare-fun m!1472911 () Bool)

(assert (=> b!1318210 m!1472911))

(assert (=> b!1318205 m!1472905))

(assert (=> b!1318205 m!1472907))

(assert (=> b!1318205 m!1472907))

(assert (=> b!1318205 m!1472909))

(assert (=> b!1318205 m!1472909))

(declare-fun m!1472913 () Bool)

(assert (=> b!1318205 m!1472913))

(assert (=> b!1318212 m!1472905))

(declare-fun m!1472915 () Bool)

(assert (=> b!1318212 m!1472915))

(declare-fun m!1472917 () Bool)

(assert (=> b!1318212 m!1472917))

(assert (=> b!1318207 m!1472905))

(assert (=> b!1318207 m!1472907))

(assert (=> b!1318207 m!1472907))

(assert (=> b!1318207 m!1472909))

(assert (=> b!1318207 m!1472909))

(declare-fun m!1472919 () Bool)

(assert (=> b!1318207 m!1472919))

(assert (=> b!1318209 m!1472905))

(declare-fun m!1472921 () Bool)

(assert (=> b!1318209 m!1472921))

(assert (=> b!1318209 m!1472921))

(declare-fun m!1472923 () Bool)

(assert (=> b!1318209 m!1472923))

(declare-fun m!1472925 () Bool)

(assert (=> bm!89519 m!1472925))

(declare-fun m!1472927 () Bool)

(assert (=> b!1318206 m!1472927))

(declare-fun m!1472929 () Bool)

(assert (=> d!371906 m!1472929))

(declare-fun m!1472931 () Bool)

(assert (=> d!371906 m!1472931))

(declare-fun m!1472933 () Bool)

(assert (=> d!371906 m!1472933))

(declare-fun m!1472935 () Bool)

(assert (=> d!371906 m!1472935))

(assert (=> b!1317768 d!371906))

(declare-fun d!371908 () Bool)

(declare-fun prefixMatchZipperSequence!180 (Regex!3625 BalanceConc!8724) Bool)

(declare-fun ++!3408 (BalanceConc!8724 BalanceConc!8724) BalanceConc!8724)

(declare-fun singletonSeq!894 (C!7540) BalanceConc!8724)

(assert (=> d!371908 (= (separableTokensPredicate!289 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!180 (rulesRegex!196 thiss!19762 rules!2550) (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))))))

(declare-fun bs!330677 () Bool)

(assert (= bs!330677 d!371908))

(assert (=> bs!330677 m!1472355))

(declare-fun m!1472937 () Bool)

(assert (=> bs!330677 m!1472937))

(declare-fun m!1472939 () Bool)

(assert (=> bs!330677 m!1472939))

(assert (=> bs!330677 m!1472347))

(declare-fun m!1472941 () Bool)

(assert (=> bs!330677 m!1472941))

(assert (=> bs!330677 m!1472937))

(assert (=> bs!330677 m!1472381))

(declare-fun m!1472943 () Bool)

(assert (=> bs!330677 m!1472943))

(assert (=> bs!330677 m!1472347))

(assert (=> bs!330677 m!1472943))

(assert (=> bs!330677 m!1472941))

(assert (=> bs!330677 m!1472381))

(assert (=> bs!330677 m!1472355))

(assert (=> b!1317749 d!371908))

(declare-fun d!371910 () Bool)

(declare-fun lt!434912 () Bool)

(declare-fun content!1883 (List!13420) (InoxSet C!7540))

(assert (=> d!371910 (= lt!434912 (select (content!1883 lt!434735) lt!434730))))

(declare-fun e!844937 () Bool)

(assert (=> d!371910 (= lt!434912 e!844937)))

(declare-fun res!592412 () Bool)

(assert (=> d!371910 (=> (not res!592412) (not e!844937))))

(assert (=> d!371910 (= res!592412 ((_ is Cons!13354) lt!434735))))

(assert (=> d!371910 (= (contains!2348 lt!434735 lt!434730) lt!434912)))

(declare-fun b!1318223 () Bool)

(declare-fun e!844936 () Bool)

(assert (=> b!1318223 (= e!844937 e!844936)))

(declare-fun res!592413 () Bool)

(assert (=> b!1318223 (=> res!592413 e!844936)))

(assert (=> b!1318223 (= res!592413 (= (h!18755 lt!434735) lt!434730))))

(declare-fun b!1318224 () Bool)

(assert (=> b!1318224 (= e!844936 (contains!2348 (t!118435 lt!434735) lt!434730))))

(assert (= (and d!371910 res!592412) b!1318223))

(assert (= (and b!1318223 (not res!592413)) b!1318224))

(declare-fun m!1472945 () Bool)

(assert (=> d!371910 m!1472945))

(declare-fun m!1472947 () Bool)

(assert (=> d!371910 m!1472947))

(declare-fun m!1472949 () Bool)

(assert (=> b!1318224 m!1472949))

(assert (=> b!1317748 d!371910))

(declare-fun d!371912 () Bool)

(declare-fun lt!434913 () Bool)

(assert (=> d!371912 (= lt!434913 (select (content!1882 rules!2550) lt!434734))))

(declare-fun e!844939 () Bool)

(assert (=> d!371912 (= lt!434913 e!844939)))

(declare-fun res!592415 () Bool)

(assert (=> d!371912 (=> (not res!592415) (not e!844939))))

(assert (=> d!371912 (= res!592415 ((_ is Cons!13356) rules!2550))))

(assert (=> d!371912 (= (contains!2349 rules!2550 lt!434734) lt!434913)))

(declare-fun b!1318225 () Bool)

(declare-fun e!844938 () Bool)

(assert (=> b!1318225 (= e!844939 e!844938)))

(declare-fun res!592414 () Bool)

(assert (=> b!1318225 (=> res!592414 e!844938)))

(assert (=> b!1318225 (= res!592414 (= (h!18757 rules!2550) lt!434734))))

(declare-fun b!1318226 () Bool)

(assert (=> b!1318226 (= e!844938 (contains!2349 (t!118437 rules!2550) lt!434734))))

(assert (= (and d!371912 res!592415) b!1318225))

(assert (= (and b!1318225 (not res!592414)) b!1318226))

(assert (=> d!371912 m!1472893))

(declare-fun m!1472951 () Bool)

(assert (=> d!371912 m!1472951))

(declare-fun m!1472953 () Bool)

(assert (=> b!1318226 m!1472953))

(assert (=> b!1317750 d!371912))

(declare-fun d!371914 () Bool)

(assert (=> d!371914 (= (list!5034 lt!434720) (list!5039 (c!216255 lt!434720)))))

(declare-fun bs!330678 () Bool)

(assert (= bs!330678 d!371914))

(declare-fun m!1472955 () Bool)

(assert (=> bs!330678 m!1472955))

(assert (=> b!1317729 d!371914))

(declare-fun d!371916 () Bool)

(declare-fun lt!434919 () C!7540)

(declare-fun apply!3049 (List!13420 Int) C!7540)

(assert (=> d!371916 (= lt!434919 (apply!3049 (list!5034 lt!434725) 0))))

(declare-fun apply!3050 (Conc!4392 Int) C!7540)

(assert (=> d!371916 (= lt!434919 (apply!3050 (c!216255 lt!434725) 0))))

(declare-fun e!844944 () Bool)

(assert (=> d!371916 e!844944))

(declare-fun res!592421 () Bool)

(assert (=> d!371916 (=> (not res!592421) (not e!844944))))

(assert (=> d!371916 (= res!592421 (<= 0 0))))

(assert (=> d!371916 (= (apply!3043 lt!434725 0) lt!434919)))

(declare-fun b!1318232 () Bool)

(assert (=> b!1318232 (= e!844944 (< 0 (size!10867 lt!434725)))))

(assert (= (and d!371916 res!592421) b!1318232))

(assert (=> d!371916 m!1472335))

(assert (=> d!371916 m!1472335))

(declare-fun m!1472977 () Bool)

(assert (=> d!371916 m!1472977))

(declare-fun m!1472979 () Bool)

(assert (=> d!371916 m!1472979))

(assert (=> b!1318232 m!1472379))

(assert (=> b!1317729 d!371916))

(declare-fun d!371922 () Bool)

(declare-fun c!216351 () Bool)

(assert (=> d!371922 (= c!216351 (isEmpty!7930 lt!434728))))

(declare-fun e!844959 () Bool)

(assert (=> d!371922 (= (prefixMatch!138 lt!434731 lt!434728) e!844959)))

(declare-fun b!1318255 () Bool)

(declare-fun lostCause!277 (Regex!3625) Bool)

(assert (=> b!1318255 (= e!844959 (not (lostCause!277 lt!434731)))))

(declare-fun b!1318256 () Bool)

(assert (=> b!1318256 (= e!844959 (prefixMatch!138 (derivativeStep!901 lt!434731 (head!2281 lt!434728)) (tail!1890 lt!434728)))))

(assert (= (and d!371922 c!216351) b!1318255))

(assert (= (and d!371922 (not c!216351)) b!1318256))

(declare-fun m!1472981 () Bool)

(assert (=> d!371922 m!1472981))

(declare-fun m!1472983 () Bool)

(assert (=> b!1318255 m!1472983))

(declare-fun m!1472985 () Bool)

(assert (=> b!1318256 m!1472985))

(assert (=> b!1318256 m!1472985))

(declare-fun m!1472987 () Bool)

(assert (=> b!1318256 m!1472987))

(declare-fun m!1472989 () Bool)

(assert (=> b!1318256 m!1472989))

(assert (=> b!1318256 m!1472987))

(assert (=> b!1318256 m!1472989))

(declare-fun m!1472993 () Bool)

(assert (=> b!1318256 m!1472993))

(assert (=> b!1317729 d!371922))

(declare-fun b!1318287 () Bool)

(declare-fun e!844977 () List!13420)

(assert (=> b!1318287 (= e!844977 (Cons!13354 lt!434730 Nil!13354))))

(declare-fun lt!434939 () List!13420)

(declare-fun b!1318290 () Bool)

(declare-fun e!844978 () Bool)

(assert (=> b!1318290 (= e!844978 (or (not (= (Cons!13354 lt!434730 Nil!13354) Nil!13354)) (= lt!434939 lt!434732)))))

(declare-fun b!1318289 () Bool)

(declare-fun res!592451 () Bool)

(assert (=> b!1318289 (=> (not res!592451) (not e!844978))))

(assert (=> b!1318289 (= res!592451 (= (size!10874 lt!434939) (+ (size!10874 lt!434732) (size!10874 (Cons!13354 lt!434730 Nil!13354)))))))

(declare-fun b!1318288 () Bool)

(assert (=> b!1318288 (= e!844977 (Cons!13354 (h!18755 lt!434732) (++!3406 (t!118435 lt!434732) (Cons!13354 lt!434730 Nil!13354))))))

(declare-fun d!371924 () Bool)

(assert (=> d!371924 e!844978))

(declare-fun res!592450 () Bool)

(assert (=> d!371924 (=> (not res!592450) (not e!844978))))

(assert (=> d!371924 (= res!592450 (= (content!1883 lt!434939) ((_ map or) (content!1883 lt!434732) (content!1883 (Cons!13354 lt!434730 Nil!13354)))))))

(assert (=> d!371924 (= lt!434939 e!844977)))

(declare-fun c!216356 () Bool)

(assert (=> d!371924 (= c!216356 ((_ is Nil!13354) lt!434732))))

(assert (=> d!371924 (= (++!3406 lt!434732 (Cons!13354 lt!434730 Nil!13354)) lt!434939)))

(assert (= (and d!371924 c!216356) b!1318287))

(assert (= (and d!371924 (not c!216356)) b!1318288))

(assert (= (and d!371924 res!592450) b!1318289))

(assert (= (and b!1318289 res!592451) b!1318290))

(declare-fun m!1473045 () Bool)

(assert (=> b!1318289 m!1473045))

(assert (=> b!1318289 m!1472917))

(declare-fun m!1473047 () Bool)

(assert (=> b!1318289 m!1473047))

(declare-fun m!1473049 () Bool)

(assert (=> b!1318288 m!1473049))

(declare-fun m!1473051 () Bool)

(assert (=> d!371924 m!1473051))

(declare-fun m!1473053 () Bool)

(assert (=> d!371924 m!1473053))

(declare-fun m!1473055 () Bool)

(assert (=> d!371924 m!1473055))

(assert (=> b!1317729 d!371924))

(declare-fun d!371942 () Bool)

(declare-fun lt!434940 () BalanceConc!8724)

(assert (=> d!371942 (= (list!5034 lt!434940) (originalCharacters!3173 t1!34))))

(assert (=> d!371942 (= lt!434940 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))

(assert (=> d!371942 (= (charsOf!1283 t1!34) lt!434940)))

(declare-fun b_lambda!38285 () Bool)

(assert (=> (not b_lambda!38285) (not d!371942)))

(declare-fun t!118462 () Bool)

(declare-fun tb!70011 () Bool)

(assert (=> (and b!1317739 (= (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) t!118462) tb!70011))

(declare-fun b!1318291 () Bool)

(declare-fun e!844979 () Bool)

(declare-fun tp!383180 () Bool)

(assert (=> b!1318291 (= e!844979 (and (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))) tp!383180))))

(declare-fun result!84956 () Bool)

(assert (=> tb!70011 (= result!84956 (and (inv!17736 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))) e!844979))))

(assert (= tb!70011 b!1318291))

(declare-fun m!1473057 () Bool)

(assert (=> b!1318291 m!1473057))

(declare-fun m!1473059 () Bool)

(assert (=> tb!70011 m!1473059))

(assert (=> d!371942 t!118462))

(declare-fun b_and!88065 () Bool)

(assert (= b_and!88059 (and (=> t!118462 result!84956) b_and!88065)))

(declare-fun tb!70013 () Bool)

(declare-fun t!118464 () Bool)

(assert (=> (and b!1317747 (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) t!118464) tb!70013))

(declare-fun result!84958 () Bool)

(assert (= result!84958 result!84956))

(assert (=> d!371942 t!118464))

(declare-fun b_and!88067 () Bool)

(assert (= b_and!88061 (and (=> t!118464 result!84958) b_and!88067)))

(declare-fun t!118466 () Bool)

(declare-fun tb!70015 () Bool)

(assert (=> (and b!1317736 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) t!118466) tb!70015))

(declare-fun result!84960 () Bool)

(assert (= result!84960 result!84956))

(assert (=> d!371942 t!118466))

(declare-fun b_and!88069 () Bool)

(assert (= b_and!88063 (and (=> t!118466 result!84960) b_and!88069)))

(declare-fun m!1473061 () Bool)

(assert (=> d!371942 m!1473061))

(declare-fun m!1473063 () Bool)

(assert (=> d!371942 m!1473063))

(assert (=> b!1317729 d!371942))

(declare-fun bs!330682 () Bool)

(declare-fun d!371944 () Bool)

(assert (= bs!330682 (and d!371944 b!1317762)))

(declare-fun lambda!53744 () Int)

(assert (=> bs!330682 (= lambda!53744 lambda!53720)))

(declare-fun lt!434943 () Unit!19422)

(declare-fun lemma!71 (List!13422 LexerInterface!2006 List!13422) Unit!19422)

(assert (=> d!371944 (= lt!434943 (lemma!71 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!79 (List!13424) Regex!3625)

(assert (=> d!371944 (= (rulesRegex!196 thiss!19762 rules!2550) (generalisedUnion!79 (map!2933 rules!2550 lambda!53744)))))

(declare-fun bs!330683 () Bool)

(assert (= bs!330683 d!371944))

(declare-fun m!1473097 () Bool)

(assert (=> bs!330683 m!1473097))

(declare-fun m!1473099 () Bool)

(assert (=> bs!330683 m!1473099))

(assert (=> bs!330683 m!1473099))

(declare-fun m!1473101 () Bool)

(assert (=> bs!330683 m!1473101))

(assert (=> b!1317729 d!371944))

(declare-fun bs!330686 () Bool)

(declare-fun d!371950 () Bool)

(assert (= bs!330686 (and d!371950 b!1317762)))

(declare-fun lambda!53757 () Int)

(assert (=> bs!330686 (not (= lambda!53757 lambda!53721))))

(declare-fun lambda!53758 () Int)

(assert (=> bs!330686 (= lambda!53758 lambda!53721)))

(declare-fun bs!330687 () Bool)

(assert (= bs!330687 d!371950))

(assert (=> bs!330687 (not (= lambda!53758 lambda!53757))))

(assert (=> d!371950 true))

(assert (=> d!371950 (= (matchR!1627 lt!434731 lt!434735) (exists!325 lt!434718 lambda!53758))))

(declare-fun lt!434949 () Unit!19422)

(declare-fun choose!8064 (Regex!3625 List!13424 List!13420) Unit!19422)

(assert (=> d!371950 (= lt!434949 (choose!8064 lt!434731 lt!434718 lt!434735))))

(declare-fun forall!3298 (List!13424 Int) Bool)

(assert (=> d!371950 (forall!3298 lt!434718 lambda!53757)))

(assert (=> d!371950 (= (matchRGenUnionSpec!62 lt!434731 lt!434718 lt!434735) lt!434949)))

(assert (=> bs!330687 m!1472393))

(declare-fun m!1473109 () Bool)

(assert (=> bs!330687 m!1473109))

(declare-fun m!1473111 () Bool)

(assert (=> bs!330687 m!1473111))

(declare-fun m!1473113 () Bool)

(assert (=> bs!330687 m!1473113))

(assert (=> b!1317762 d!371950))

(declare-fun bs!330695 () Bool)

(declare-fun d!371954 () Bool)

(assert (= bs!330695 (and d!371954 b!1317762)))

(declare-fun lambda!53763 () Int)

(assert (=> bs!330695 (not (= lambda!53763 lambda!53721))))

(declare-fun bs!330696 () Bool)

(assert (= bs!330696 (and d!371954 d!371950)))

(assert (=> bs!330696 (not (= lambda!53763 lambda!53757))))

(assert (=> bs!330696 (not (= lambda!53763 lambda!53758))))

(assert (=> d!371954 true))

(declare-fun order!8057 () Int)

(declare-fun dynLambda!5850 (Int Int) Int)

(assert (=> d!371954 (< (dynLambda!5850 order!8057 lambda!53721) (dynLambda!5850 order!8057 lambda!53763))))

(assert (=> d!371954 (= (exists!325 (map!2933 rules!2550 lambda!53720) lambda!53721) (not (forall!3298 (map!2933 rules!2550 lambda!53720) lambda!53763)))))

(declare-fun bs!330697 () Bool)

(assert (= bs!330697 d!371954))

(assert (=> bs!330697 m!1472297))

(declare-fun m!1473131 () Bool)

(assert (=> bs!330697 m!1473131))

(assert (=> b!1317762 d!371954))

(declare-fun bs!330698 () Bool)

(declare-fun d!371962 () Bool)

(assert (= bs!330698 (and d!371962 b!1317762)))

(declare-fun lambda!53764 () Int)

(assert (=> bs!330698 (not (= lambda!53764 lambda!53721))))

(declare-fun bs!330699 () Bool)

(assert (= bs!330699 (and d!371962 d!371950)))

(assert (=> bs!330699 (not (= lambda!53764 lambda!53757))))

(assert (=> bs!330699 (not (= lambda!53764 lambda!53758))))

(declare-fun bs!330700 () Bool)

(assert (= bs!330700 (and d!371962 d!371954)))

(assert (=> bs!330700 (= lambda!53764 lambda!53763)))

(assert (=> d!371962 true))

(assert (=> d!371962 (< (dynLambda!5850 order!8057 lambda!53721) (dynLambda!5850 order!8057 lambda!53764))))

(assert (=> d!371962 (= (exists!325 lt!434718 lambda!53721) (not (forall!3298 lt!434718 lambda!53764)))))

(declare-fun bs!330701 () Bool)

(assert (= bs!330701 d!371962))

(declare-fun m!1473133 () Bool)

(assert (=> bs!330701 m!1473133))

(assert (=> b!1317762 d!371962))

(assert (=> b!1317762 d!371890))

(declare-fun d!371964 () Bool)

(declare-fun c!216365 () Bool)

(assert (=> d!371964 (= c!216365 ((_ is IntegerValue!7203) (value!75496 t2!34)))))

(declare-fun e!844995 () Bool)

(assert (=> d!371964 (= (inv!21 (value!75496 t2!34)) e!844995)))

(declare-fun b!1318320 () Bool)

(declare-fun res!592460 () Bool)

(declare-fun e!844996 () Bool)

(assert (=> b!1318320 (=> res!592460 e!844996)))

(assert (=> b!1318320 (= res!592460 (not ((_ is IntegerValue!7205) (value!75496 t2!34))))))

(declare-fun e!844997 () Bool)

(assert (=> b!1318320 (= e!844997 e!844996)))

(declare-fun b!1318321 () Bool)

(declare-fun inv!17 (TokenValue!2401) Bool)

(assert (=> b!1318321 (= e!844997 (inv!17 (value!75496 t2!34)))))

(declare-fun b!1318322 () Bool)

(assert (=> b!1318322 (= e!844995 e!844997)))

(declare-fun c!216366 () Bool)

(assert (=> b!1318322 (= c!216366 ((_ is IntegerValue!7204) (value!75496 t2!34)))))

(declare-fun b!1318323 () Bool)

(declare-fun inv!15 (TokenValue!2401) Bool)

(assert (=> b!1318323 (= e!844996 (inv!15 (value!75496 t2!34)))))

(declare-fun b!1318324 () Bool)

(declare-fun inv!16 (TokenValue!2401) Bool)

(assert (=> b!1318324 (= e!844995 (inv!16 (value!75496 t2!34)))))

(assert (= (and d!371964 c!216365) b!1318324))

(assert (= (and d!371964 (not c!216365)) b!1318322))

(assert (= (and b!1318322 c!216366) b!1318321))

(assert (= (and b!1318322 (not c!216366)) b!1318320))

(assert (= (and b!1318320 (not res!592460)) b!1318323))

(declare-fun m!1473145 () Bool)

(assert (=> b!1318321 m!1473145))

(declare-fun m!1473147 () Bool)

(assert (=> b!1318323 m!1473147))

(declare-fun m!1473149 () Bool)

(assert (=> b!1318324 m!1473149))

(assert (=> b!1317741 d!371964))

(declare-fun d!371970 () Bool)

(declare-fun lt!434958 () Bool)

(assert (=> d!371970 (= lt!434958 (select (content!1883 lt!434735) lt!434714))))

(declare-fun e!844999 () Bool)

(assert (=> d!371970 (= lt!434958 e!844999)))

(declare-fun res!592461 () Bool)

(assert (=> d!371970 (=> (not res!592461) (not e!844999))))

(assert (=> d!371970 (= res!592461 ((_ is Cons!13354) lt!434735))))

(assert (=> d!371970 (= (contains!2348 lt!434735 lt!434714) lt!434958)))

(declare-fun b!1318325 () Bool)

(declare-fun e!844998 () Bool)

(assert (=> b!1318325 (= e!844999 e!844998)))

(declare-fun res!592462 () Bool)

(assert (=> b!1318325 (=> res!592462 e!844998)))

(assert (=> b!1318325 (= res!592462 (= (h!18755 lt!434735) lt!434714))))

(declare-fun b!1318326 () Bool)

(assert (=> b!1318326 (= e!844998 (contains!2348 (t!118435 lt!434735) lt!434714))))

(assert (= (and d!371970 res!592461) b!1318325))

(assert (= (and b!1318325 (not res!592462)) b!1318326))

(assert (=> d!371970 m!1472945))

(declare-fun m!1473157 () Bool)

(assert (=> d!371970 m!1473157))

(declare-fun m!1473159 () Bool)

(assert (=> b!1318326 m!1473159))

(assert (=> b!1317740 d!371970))

(declare-fun d!371974 () Bool)

(declare-fun res!592475 () Bool)

(declare-fun e!845016 () Bool)

(assert (=> d!371974 (=> (not res!592475) (not e!845016))))

(declare-fun rulesValid!839 (LexerInterface!2006 List!13422) Bool)

(assert (=> d!371974 (= res!592475 (rulesValid!839 thiss!19762 rules!2550))))

(assert (=> d!371974 (= (rulesInvariant!1876 thiss!19762 rules!2550) e!845016)))

(declare-fun b!1318347 () Bool)

(declare-datatypes ((List!13426 0))(
  ( (Nil!13360) (Cons!13360 (h!18761 String!16241) (t!118477 List!13426)) )
))
(declare-fun noDuplicateTag!839 (LexerInterface!2006 List!13422 List!13426) Bool)

(assert (=> b!1318347 (= e!845016 (noDuplicateTag!839 thiss!19762 rules!2550 Nil!13360))))

(assert (= (and d!371974 res!592475) b!1318347))

(declare-fun m!1473161 () Bool)

(assert (=> d!371974 m!1473161))

(declare-fun m!1473163 () Bool)

(assert (=> b!1318347 m!1473163))

(assert (=> b!1317742 d!371974))

(declare-fun d!371976 () Bool)

(declare-fun lt!434967 () Bool)

(declare-fun e!845055 () Bool)

(assert (=> d!371976 (= lt!434967 e!845055)))

(declare-fun res!592492 () Bool)

(assert (=> d!371976 (=> (not res!592492) (not e!845055))))

(assert (=> d!371976 (= res!592492 (= (list!5035 (_1!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34))))) (list!5035 (singletonSeq!892 t2!34))))))

(declare-fun e!845056 () Bool)

(assert (=> d!371976 (= lt!434967 e!845056)))

(declare-fun res!592491 () Bool)

(assert (=> d!371976 (=> (not res!592491) (not e!845056))))

(declare-fun lt!434966 () tuple2!12978)

(assert (=> d!371976 (= res!592491 (= (size!10870 (_1!7375 lt!434966)) 1))))

(assert (=> d!371976 (= lt!434966 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34))))))

(assert (=> d!371976 (not (isEmpty!7925 rules!2550))))

(assert (=> d!371976 (= (rulesProduceIndividualToken!975 thiss!19762 rules!2550 t2!34) lt!434967)))

(declare-fun b!1318410 () Bool)

(declare-fun res!592493 () Bool)

(assert (=> b!1318410 (=> (not res!592493) (not e!845056))))

(declare-fun apply!3051 (BalanceConc!8726 Int) Token!4284)

(assert (=> b!1318410 (= res!592493 (= (apply!3051 (_1!7375 lt!434966) 0) t2!34))))

(declare-fun b!1318411 () Bool)

(assert (=> b!1318411 (= e!845056 (isEmpty!7924 (_2!7375 lt!434966)))))

(declare-fun b!1318412 () Bool)

(assert (=> b!1318412 (= e!845055 (isEmpty!7924 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34))))))))

(assert (= (and d!371976 res!592491) b!1318410))

(assert (= (and b!1318410 res!592493) b!1318411))

(assert (= (and d!371976 res!592492) b!1318412))

(assert (=> d!371976 m!1472321))

(assert (=> d!371976 m!1472837))

(declare-fun m!1473207 () Bool)

(assert (=> d!371976 m!1473207))

(assert (=> d!371976 m!1472321))

(assert (=> d!371976 m!1472323))

(assert (=> d!371976 m!1472385))

(assert (=> d!371976 m!1472323))

(declare-fun m!1473209 () Bool)

(assert (=> d!371976 m!1473209))

(declare-fun m!1473211 () Bool)

(assert (=> d!371976 m!1473211))

(assert (=> d!371976 m!1472321))

(declare-fun m!1473213 () Bool)

(assert (=> b!1318410 m!1473213))

(declare-fun m!1473215 () Bool)

(assert (=> b!1318411 m!1473215))

(assert (=> b!1318412 m!1472321))

(assert (=> b!1318412 m!1472321))

(assert (=> b!1318412 m!1472323))

(assert (=> b!1318412 m!1472323))

(assert (=> b!1318412 m!1473209))

(declare-fun m!1473217 () Bool)

(assert (=> b!1318412 m!1473217))

(assert (=> b!1317765 d!371976))

(declare-fun d!372000 () Bool)

(declare-fun c!216375 () Bool)

(assert (=> d!372000 (= c!216375 ((_ is IntegerValue!7203) (value!75496 t1!34)))))

(declare-fun e!845057 () Bool)

(assert (=> d!372000 (= (inv!21 (value!75496 t1!34)) e!845057)))

(declare-fun b!1318413 () Bool)

(declare-fun res!592494 () Bool)

(declare-fun e!845058 () Bool)

(assert (=> b!1318413 (=> res!592494 e!845058)))

(assert (=> b!1318413 (= res!592494 (not ((_ is IntegerValue!7205) (value!75496 t1!34))))))

(declare-fun e!845059 () Bool)

(assert (=> b!1318413 (= e!845059 e!845058)))

(declare-fun b!1318414 () Bool)

(assert (=> b!1318414 (= e!845059 (inv!17 (value!75496 t1!34)))))

(declare-fun b!1318415 () Bool)

(assert (=> b!1318415 (= e!845057 e!845059)))

(declare-fun c!216376 () Bool)

(assert (=> b!1318415 (= c!216376 ((_ is IntegerValue!7204) (value!75496 t1!34)))))

(declare-fun b!1318416 () Bool)

(assert (=> b!1318416 (= e!845058 (inv!15 (value!75496 t1!34)))))

(declare-fun b!1318417 () Bool)

(assert (=> b!1318417 (= e!845057 (inv!16 (value!75496 t1!34)))))

(assert (= (and d!372000 c!216375) b!1318417))

(assert (= (and d!372000 (not c!216375)) b!1318415))

(assert (= (and b!1318415 c!216376) b!1318414))

(assert (= (and b!1318415 (not c!216376)) b!1318413))

(assert (= (and b!1318413 (not res!592494)) b!1318416))

(declare-fun m!1473219 () Bool)

(assert (=> b!1318414 m!1473219))

(declare-fun m!1473221 () Bool)

(assert (=> b!1318416 m!1473221))

(declare-fun m!1473223 () Bool)

(assert (=> b!1318417 m!1473223))

(assert (=> b!1317764 d!372000))

(declare-fun d!372002 () Bool)

(declare-fun res!592499 () Bool)

(declare-fun e!845062 () Bool)

(assert (=> d!372002 (=> (not res!592499) (not e!845062))))

(assert (=> d!372002 (= res!592499 (not (isEmpty!7930 (originalCharacters!3173 t1!34))))))

(assert (=> d!372002 (= (inv!17731 t1!34) e!845062)))

(declare-fun b!1318422 () Bool)

(declare-fun res!592500 () Bool)

(assert (=> b!1318422 (=> (not res!592500) (not e!845062))))

(assert (=> b!1318422 (= res!592500 (= (originalCharacters!3173 t1!34) (list!5034 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))))

(declare-fun b!1318423 () Bool)

(assert (=> b!1318423 (= e!845062 (= (size!10866 t1!34) (size!10874 (originalCharacters!3173 t1!34))))))

(assert (= (and d!372002 res!592499) b!1318422))

(assert (= (and b!1318422 res!592500) b!1318423))

(declare-fun b_lambda!38315 () Bool)

(assert (=> (not b_lambda!38315) (not b!1318422)))

(assert (=> b!1318422 t!118462))

(declare-fun b_and!88075 () Bool)

(assert (= b_and!88065 (and (=> t!118462 result!84956) b_and!88075)))

(assert (=> b!1318422 t!118464))

(declare-fun b_and!88077 () Bool)

(assert (= b_and!88067 (and (=> t!118464 result!84958) b_and!88077)))

(assert (=> b!1318422 t!118466))

(declare-fun b_and!88079 () Bool)

(assert (= b_and!88069 (and (=> t!118466 result!84960) b_and!88079)))

(declare-fun m!1473225 () Bool)

(assert (=> d!372002 m!1473225))

(assert (=> b!1318422 m!1473063))

(assert (=> b!1318422 m!1473063))

(declare-fun m!1473227 () Bool)

(assert (=> b!1318422 m!1473227))

(declare-fun m!1473229 () Bool)

(assert (=> b!1318423 m!1473229))

(assert (=> start!116810 d!372002))

(declare-fun d!372004 () Bool)

(declare-fun res!592501 () Bool)

(declare-fun e!845063 () Bool)

(assert (=> d!372004 (=> (not res!592501) (not e!845063))))

(assert (=> d!372004 (= res!592501 (not (isEmpty!7930 (originalCharacters!3173 t2!34))))))

(assert (=> d!372004 (= (inv!17731 t2!34) e!845063)))

(declare-fun b!1318424 () Bool)

(declare-fun res!592502 () Bool)

(assert (=> b!1318424 (=> (not res!592502) (not e!845063))))

(assert (=> b!1318424 (= res!592502 (= (originalCharacters!3173 t2!34) (list!5034 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))))

(declare-fun b!1318425 () Bool)

(assert (=> b!1318425 (= e!845063 (= (size!10866 t2!34) (size!10874 (originalCharacters!3173 t2!34))))))

(assert (= (and d!372004 res!592501) b!1318424))

(assert (= (and b!1318424 res!592502) b!1318425))

(declare-fun b_lambda!38317 () Bool)

(assert (=> (not b_lambda!38317) (not b!1318424)))

(assert (=> b!1318424 t!118455))

(declare-fun b_and!88081 () Bool)

(assert (= b_and!88075 (and (=> t!118455 result!84948) b_and!88081)))

(assert (=> b!1318424 t!118457))

(declare-fun b_and!88083 () Bool)

(assert (= b_and!88077 (and (=> t!118457 result!84952) b_and!88083)))

(assert (=> b!1318424 t!118459))

(declare-fun b_and!88085 () Bool)

(assert (= b_and!88079 (and (=> t!118459 result!84954) b_and!88085)))

(declare-fun m!1473231 () Bool)

(assert (=> d!372004 m!1473231))

(assert (=> b!1318424 m!1472817))

(assert (=> b!1318424 m!1472817))

(declare-fun m!1473233 () Bool)

(assert (=> b!1318424 m!1473233))

(declare-fun m!1473235 () Bool)

(assert (=> b!1318425 m!1473235))

(assert (=> start!116810 d!372004))

(declare-fun d!372006 () Bool)

(declare-fun lt!434968 () Bool)

(assert (=> d!372006 (= lt!434968 (isEmpty!7930 (list!5034 (_2!7375 lt!434724))))))

(assert (=> d!372006 (= lt!434968 (isEmpty!7931 (c!216255 (_2!7375 lt!434724))))))

(assert (=> d!372006 (= (isEmpty!7924 (_2!7375 lt!434724)) lt!434968)))

(declare-fun bs!330714 () Bool)

(assert (= bs!330714 d!372006))

(declare-fun m!1473237 () Bool)

(assert (=> bs!330714 m!1473237))

(assert (=> bs!330714 m!1473237))

(declare-fun m!1473239 () Bool)

(assert (=> bs!330714 m!1473239))

(declare-fun m!1473241 () Bool)

(assert (=> bs!330714 m!1473241))

(assert (=> b!1317743 d!372006))

(declare-fun b!1318426 () Bool)

(declare-fun e!845065 () Bool)

(declare-fun e!845066 () Bool)

(assert (=> b!1318426 (= e!845065 e!845066)))

(declare-fun res!592509 () Bool)

(assert (=> b!1318426 (=> (not res!592509) (not e!845066))))

(declare-fun lt!434969 () Bool)

(assert (=> b!1318426 (= res!592509 (not lt!434969))))

(declare-fun bm!89530 () Bool)

(declare-fun call!89535 () Bool)

(assert (=> bm!89530 (= call!89535 (isEmpty!7930 lt!434735))))

(declare-fun d!372008 () Bool)

(declare-fun e!845070 () Bool)

(assert (=> d!372008 e!845070))

(declare-fun c!216379 () Bool)

(assert (=> d!372008 (= c!216379 ((_ is EmptyExpr!3625) lt!434731))))

(declare-fun e!845068 () Bool)

(assert (=> d!372008 (= lt!434969 e!845068)))

(declare-fun c!216378 () Bool)

(assert (=> d!372008 (= c!216378 (isEmpty!7930 lt!434735))))

(assert (=> d!372008 (validRegex!1551 lt!434731)))

(assert (=> d!372008 (= (matchR!1627 lt!434731 lt!434735) lt!434969)))

(declare-fun b!1318427 () Bool)

(declare-fun res!592503 () Bool)

(assert (=> b!1318427 (=> res!592503 e!845065)))

(assert (=> b!1318427 (= res!592503 (not ((_ is ElementMatch!3625) lt!434731)))))

(declare-fun e!845069 () Bool)

(assert (=> b!1318427 (= e!845069 e!845065)))

(declare-fun b!1318428 () Bool)

(declare-fun res!592508 () Bool)

(declare-fun e!845064 () Bool)

(assert (=> b!1318428 (=> res!592508 e!845064)))

(assert (=> b!1318428 (= res!592508 (not (isEmpty!7930 (tail!1890 lt!434735))))))

(declare-fun b!1318429 () Bool)

(declare-fun e!845067 () Bool)

(assert (=> b!1318429 (= e!845067 (= (head!2281 lt!434735) (c!216254 lt!434731)))))

(declare-fun b!1318430 () Bool)

(assert (=> b!1318430 (= e!845070 e!845069)))

(declare-fun c!216377 () Bool)

(assert (=> b!1318430 (= c!216377 ((_ is EmptyLang!3625) lt!434731))))

(declare-fun b!1318431 () Bool)

(assert (=> b!1318431 (= e!845068 (nullable!1149 lt!434731))))

(declare-fun b!1318432 () Bool)

(declare-fun res!592506 () Bool)

(assert (=> b!1318432 (=> (not res!592506) (not e!845067))))

(assert (=> b!1318432 (= res!592506 (isEmpty!7930 (tail!1890 lt!434735)))))

(declare-fun b!1318433 () Bool)

(assert (=> b!1318433 (= e!845068 (matchR!1627 (derivativeStep!901 lt!434731 (head!2281 lt!434735)) (tail!1890 lt!434735)))))

(declare-fun b!1318434 () Bool)

(assert (=> b!1318434 (= e!845070 (= lt!434969 call!89535))))

(declare-fun b!1318435 () Bool)

(assert (=> b!1318435 (= e!845064 (not (= (head!2281 lt!434735) (c!216254 lt!434731))))))

(declare-fun b!1318436 () Bool)

(declare-fun res!592505 () Bool)

(assert (=> b!1318436 (=> res!592505 e!845065)))

(assert (=> b!1318436 (= res!592505 e!845067)))

(declare-fun res!592504 () Bool)

(assert (=> b!1318436 (=> (not res!592504) (not e!845067))))

(assert (=> b!1318436 (= res!592504 lt!434969)))

(declare-fun b!1318437 () Bool)

(assert (=> b!1318437 (= e!845069 (not lt!434969))))

(declare-fun b!1318438 () Bool)

(declare-fun res!592507 () Bool)

(assert (=> b!1318438 (=> (not res!592507) (not e!845067))))

(assert (=> b!1318438 (= res!592507 (not call!89535))))

(declare-fun b!1318439 () Bool)

(assert (=> b!1318439 (= e!845066 e!845064)))

(declare-fun res!592510 () Bool)

(assert (=> b!1318439 (=> res!592510 e!845064)))

(assert (=> b!1318439 (= res!592510 call!89535)))

(assert (= (and d!372008 c!216378) b!1318431))

(assert (= (and d!372008 (not c!216378)) b!1318433))

(assert (= (and d!372008 c!216379) b!1318434))

(assert (= (and d!372008 (not c!216379)) b!1318430))

(assert (= (and b!1318430 c!216377) b!1318437))

(assert (= (and b!1318430 (not c!216377)) b!1318427))

(assert (= (and b!1318427 (not res!592503)) b!1318436))

(assert (= (and b!1318436 res!592504) b!1318438))

(assert (= (and b!1318438 res!592507) b!1318432))

(assert (= (and b!1318432 res!592506) b!1318429))

(assert (= (and b!1318436 (not res!592505)) b!1318426))

(assert (= (and b!1318426 res!592509) b!1318439))

(assert (= (and b!1318439 (not res!592510)) b!1318428))

(assert (= (and b!1318428 (not res!592508)) b!1318435))

(assert (= (or b!1318434 b!1318438 b!1318439) bm!89530))

(declare-fun m!1473243 () Bool)

(assert (=> b!1318429 m!1473243))

(declare-fun m!1473245 () Bool)

(assert (=> b!1318428 m!1473245))

(assert (=> b!1318428 m!1473245))

(declare-fun m!1473247 () Bool)

(assert (=> b!1318428 m!1473247))

(assert (=> b!1318432 m!1473245))

(assert (=> b!1318432 m!1473245))

(assert (=> b!1318432 m!1473247))

(declare-fun m!1473249 () Bool)

(assert (=> b!1318431 m!1473249))

(assert (=> b!1318435 m!1473243))

(declare-fun m!1473251 () Bool)

(assert (=> d!372008 m!1473251))

(declare-fun m!1473253 () Bool)

(assert (=> d!372008 m!1473253))

(assert (=> bm!89530 m!1473251))

(assert (=> b!1318433 m!1473243))

(assert (=> b!1318433 m!1473243))

(declare-fun m!1473255 () Bool)

(assert (=> b!1318433 m!1473255))

(assert (=> b!1318433 m!1473245))

(assert (=> b!1318433 m!1473255))

(assert (=> b!1318433 m!1473245))

(declare-fun m!1473257 () Bool)

(assert (=> b!1318433 m!1473257))

(assert (=> b!1317766 d!372008))

(declare-fun bm!89537 () Bool)

(declare-fun call!89542 () Bool)

(declare-fun call!89544 () Bool)

(assert (=> bm!89537 (= call!89542 call!89544)))

(declare-fun b!1318458 () Bool)

(declare-fun e!845089 () Bool)

(assert (=> b!1318458 (= e!845089 call!89542)))

(declare-fun b!1318459 () Bool)

(declare-fun e!845087 () Bool)

(declare-fun e!845090 () Bool)

(assert (=> b!1318459 (= e!845087 e!845090)))

(declare-fun res!592523 () Bool)

(assert (=> b!1318459 (= res!592523 (not (nullable!1149 (reg!3954 (regex!2311 (rule!4054 t2!34))))))))

(assert (=> b!1318459 (=> (not res!592523) (not e!845090))))

(declare-fun b!1318460 () Bool)

(declare-fun res!592522 () Bool)

(assert (=> b!1318460 (=> (not res!592522) (not e!845089))))

(declare-fun call!89543 () Bool)

(assert (=> b!1318460 (= res!592522 call!89543)))

(declare-fun e!845088 () Bool)

(assert (=> b!1318460 (= e!845088 e!845089)))

(declare-fun b!1318461 () Bool)

(declare-fun res!592525 () Bool)

(declare-fun e!845085 () Bool)

(assert (=> b!1318461 (=> res!592525 e!845085)))

(assert (=> b!1318461 (= res!592525 (not ((_ is Concat!6026) (regex!2311 (rule!4054 t2!34)))))))

(assert (=> b!1318461 (= e!845088 e!845085)))

(declare-fun b!1318462 () Bool)

(declare-fun e!845091 () Bool)

(assert (=> b!1318462 (= e!845091 call!89542)))

(declare-fun c!216385 () Bool)

(declare-fun c!216384 () Bool)

(declare-fun bm!89539 () Bool)

(assert (=> bm!89539 (= call!89544 (validRegex!1551 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))))))

(declare-fun b!1318463 () Bool)

(declare-fun e!845086 () Bool)

(assert (=> b!1318463 (= e!845086 e!845087)))

(assert (=> b!1318463 (= c!216384 ((_ is Star!3625) (regex!2311 (rule!4054 t2!34))))))

(declare-fun b!1318464 () Bool)

(assert (=> b!1318464 (= e!845090 call!89544)))

(declare-fun b!1318465 () Bool)

(assert (=> b!1318465 (= e!845085 e!845091)))

(declare-fun res!592524 () Bool)

(assert (=> b!1318465 (=> (not res!592524) (not e!845091))))

(assert (=> b!1318465 (= res!592524 call!89543)))

(declare-fun b!1318466 () Bool)

(assert (=> b!1318466 (= e!845087 e!845088)))

(assert (=> b!1318466 (= c!216385 ((_ is Union!3625) (regex!2311 (rule!4054 t2!34))))))

(declare-fun bm!89538 () Bool)

(assert (=> bm!89538 (= call!89543 (validRegex!1551 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))))))

(declare-fun d!372010 () Bool)

(declare-fun res!592521 () Bool)

(assert (=> d!372010 (=> res!592521 e!845086)))

(assert (=> d!372010 (= res!592521 ((_ is ElementMatch!3625) (regex!2311 (rule!4054 t2!34))))))

(assert (=> d!372010 (= (validRegex!1551 (regex!2311 (rule!4054 t2!34))) e!845086)))

(assert (= (and d!372010 (not res!592521)) b!1318463))

(assert (= (and b!1318463 c!216384) b!1318459))

(assert (= (and b!1318463 (not c!216384)) b!1318466))

(assert (= (and b!1318459 res!592523) b!1318464))

(assert (= (and b!1318466 c!216385) b!1318460))

(assert (= (and b!1318466 (not c!216385)) b!1318461))

(assert (= (and b!1318460 res!592522) b!1318458))

(assert (= (and b!1318461 (not res!592525)) b!1318465))

(assert (= (and b!1318465 res!592524) b!1318462))

(assert (= (or b!1318460 b!1318465) bm!89538))

(assert (= (or b!1318458 b!1318462) bm!89537))

(assert (= (or b!1318464 bm!89537) bm!89539))

(declare-fun m!1473259 () Bool)

(assert (=> b!1318459 m!1473259))

(declare-fun m!1473261 () Bool)

(assert (=> bm!89539 m!1473261))

(declare-fun m!1473263 () Bool)

(assert (=> bm!89538 m!1473263))

(assert (=> b!1317745 d!372010))

(declare-fun d!372012 () Bool)

(declare-fun lt!434970 () Bool)

(assert (=> d!372012 (= lt!434970 (select (content!1883 lt!434728) lt!434730))))

(declare-fun e!845093 () Bool)

(assert (=> d!372012 (= lt!434970 e!845093)))

(declare-fun res!592526 () Bool)

(assert (=> d!372012 (=> (not res!592526) (not e!845093))))

(assert (=> d!372012 (= res!592526 ((_ is Cons!13354) lt!434728))))

(assert (=> d!372012 (= (contains!2348 lt!434728 lt!434730) lt!434970)))

(declare-fun b!1318467 () Bool)

(declare-fun e!845092 () Bool)

(assert (=> b!1318467 (= e!845093 e!845092)))

(declare-fun res!592527 () Bool)

(assert (=> b!1318467 (=> res!592527 e!845092)))

(assert (=> b!1318467 (= res!592527 (= (h!18755 lt!434728) lt!434730))))

(declare-fun b!1318468 () Bool)

(assert (=> b!1318468 (= e!845092 (contains!2348 (t!118435 lt!434728) lt!434730))))

(assert (= (and d!372012 res!592526) b!1318467))

(assert (= (and b!1318467 (not res!592527)) b!1318468))

(declare-fun m!1473265 () Bool)

(assert (=> d!372012 m!1473265))

(declare-fun m!1473267 () Bool)

(assert (=> d!372012 m!1473267))

(declare-fun m!1473269 () Bool)

(assert (=> b!1318468 m!1473269))

(assert (=> b!1317744 d!372012))

(declare-fun d!372014 () Bool)

(declare-fun lt!434972 () Bool)

(declare-fun e!845094 () Bool)

(assert (=> d!372014 (= lt!434972 e!845094)))

(declare-fun res!592529 () Bool)

(assert (=> d!372014 (=> (not res!592529) (not e!845094))))

(assert (=> d!372014 (= res!592529 (= (list!5035 (_1!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34))))) (list!5035 (singletonSeq!892 t1!34))))))

(declare-fun e!845095 () Bool)

(assert (=> d!372014 (= lt!434972 e!845095)))

(declare-fun res!592528 () Bool)

(assert (=> d!372014 (=> (not res!592528) (not e!845095))))

(declare-fun lt!434971 () tuple2!12978)

(assert (=> d!372014 (= res!592528 (= (size!10870 (_1!7375 lt!434971)) 1))))

(assert (=> d!372014 (= lt!434971 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34))))))

(assert (=> d!372014 (not (isEmpty!7925 rules!2550))))

(assert (=> d!372014 (= (rulesProduceIndividualToken!975 thiss!19762 rules!2550 t1!34) lt!434972)))

(declare-fun b!1318469 () Bool)

(declare-fun res!592530 () Bool)

(assert (=> b!1318469 (=> (not res!592530) (not e!845095))))

(assert (=> b!1318469 (= res!592530 (= (apply!3051 (_1!7375 lt!434971) 0) t1!34))))

(declare-fun b!1318470 () Bool)

(assert (=> b!1318470 (= e!845095 (isEmpty!7924 (_2!7375 lt!434971)))))

(declare-fun b!1318471 () Bool)

(assert (=> b!1318471 (= e!845094 (isEmpty!7924 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34))))))))

(assert (= (and d!372014 res!592528) b!1318469))

(assert (= (and b!1318469 res!592530) b!1318470))

(assert (= (and d!372014 res!592529) b!1318471))

(assert (=> d!372014 m!1472399))

(assert (=> d!372014 m!1472527))

(declare-fun m!1473271 () Bool)

(assert (=> d!372014 m!1473271))

(assert (=> d!372014 m!1472399))

(assert (=> d!372014 m!1472401))

(assert (=> d!372014 m!1472385))

(assert (=> d!372014 m!1472401))

(declare-fun m!1473273 () Bool)

(assert (=> d!372014 m!1473273))

(declare-fun m!1473275 () Bool)

(assert (=> d!372014 m!1473275))

(assert (=> d!372014 m!1472399))

(declare-fun m!1473277 () Bool)

(assert (=> b!1318469 m!1473277))

(declare-fun m!1473279 () Bool)

(assert (=> b!1318470 m!1473279))

(assert (=> b!1318471 m!1472399))

(assert (=> b!1318471 m!1472399))

(assert (=> b!1318471 m!1472401))

(assert (=> b!1318471 m!1472401))

(assert (=> b!1318471 m!1473273))

(declare-fun m!1473281 () Bool)

(assert (=> b!1318471 m!1473281))

(assert (=> b!1317757 d!372014))

(declare-fun b!1318472 () Bool)

(declare-fun e!845096 () Option!2580)

(declare-fun lt!434974 () Option!2580)

(declare-fun lt!434975 () Option!2580)

(assert (=> b!1318472 (= e!845096 (ite (and ((_ is None!2579) lt!434974) ((_ is None!2579) lt!434975)) None!2579 (ite ((_ is None!2579) lt!434975) lt!434974 (ite ((_ is None!2579) lt!434974) lt!434975 (ite (>= (size!10866 (_1!7377 (v!21135 lt!434974))) (size!10866 (_1!7377 (v!21135 lt!434975)))) lt!434974 lt!434975)))))))

(declare-fun call!89545 () Option!2580)

(assert (=> b!1318472 (= lt!434974 call!89545)))

(assert (=> b!1318472 (= lt!434975 (maxPrefix!1016 thiss!19762 (t!118437 rules!2550) (list!5034 lt!434725)))))

(declare-fun b!1318473 () Bool)

(declare-fun res!592534 () Bool)

(declare-fun e!845097 () Bool)

(assert (=> b!1318473 (=> (not res!592534) (not e!845097))))

(declare-fun lt!434973 () Option!2580)

(assert (=> b!1318473 (= res!592534 (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun b!1318474 () Bool)

(declare-fun e!845098 () Bool)

(assert (=> b!1318474 (= e!845098 e!845097)))

(declare-fun res!592533 () Bool)

(assert (=> b!1318474 (=> (not res!592533) (not e!845097))))

(assert (=> b!1318474 (= res!592533 (isDefined!2179 lt!434973))))

(declare-fun b!1318475 () Bool)

(declare-fun res!592531 () Bool)

(assert (=> b!1318475 (=> (not res!592531) (not e!845097))))

(assert (=> b!1318475 (= res!592531 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))) (_2!7377 (get!4260 lt!434973))) (list!5034 lt!434725)))))

(declare-fun bm!89540 () Bool)

(assert (=> bm!89540 (= call!89545 (maxPrefixOneRule!581 thiss!19762 (h!18757 rules!2550) (list!5034 lt!434725)))))

(declare-fun b!1318476 () Bool)

(declare-fun res!592537 () Bool)

(assert (=> b!1318476 (=> (not res!592537) (not e!845097))))

(assert (=> b!1318476 (= res!592537 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))) (originalCharacters!3173 (_1!7377 (get!4260 lt!434973)))))))

(declare-fun b!1318477 () Bool)

(declare-fun res!592532 () Bool)

(assert (=> b!1318477 (=> (not res!592532) (not e!845097))))

(assert (=> b!1318477 (= res!592532 (= (value!75496 (_1!7377 (get!4260 lt!434973))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun b!1318478 () Bool)

(assert (=> b!1318478 (= e!845097 (contains!2349 rules!2550 (rule!4054 (_1!7377 (get!4260 lt!434973)))))))

(declare-fun b!1318479 () Bool)

(assert (=> b!1318479 (= e!845096 call!89545)))

(declare-fun d!372016 () Bool)

(assert (=> d!372016 e!845098))

(declare-fun res!592535 () Bool)

(assert (=> d!372016 (=> res!592535 e!845098)))

(assert (=> d!372016 (= res!592535 (isEmpty!7935 lt!434973))))

(assert (=> d!372016 (= lt!434973 e!845096)))

(declare-fun c!216386 () Bool)

(assert (=> d!372016 (= c!216386 (and ((_ is Cons!13356) rules!2550) ((_ is Nil!13356) (t!118437 rules!2550))))))

(declare-fun lt!434977 () Unit!19422)

(declare-fun lt!434976 () Unit!19422)

(assert (=> d!372016 (= lt!434977 lt!434976)))

(assert (=> d!372016 (isPrefix!1076 (list!5034 lt!434725) (list!5034 lt!434725))))

(assert (=> d!372016 (= lt!434976 (lemmaIsPrefixRefl!755 (list!5034 lt!434725) (list!5034 lt!434725)))))

(assert (=> d!372016 (rulesValidInductive!728 thiss!19762 rules!2550)))

(assert (=> d!372016 (= (maxPrefix!1016 thiss!19762 rules!2550 (list!5034 lt!434725)) lt!434973)))

(declare-fun b!1318480 () Bool)

(declare-fun res!592536 () Bool)

(assert (=> b!1318480 (=> (not res!592536) (not e!845097))))

(assert (=> b!1318480 (= res!592536 (< (size!10874 (_2!7377 (get!4260 lt!434973))) (size!10874 (list!5034 lt!434725))))))

(assert (= (and d!372016 c!216386) b!1318479))

(assert (= (and d!372016 (not c!216386)) b!1318472))

(assert (= (or b!1318479 b!1318472) bm!89540))

(assert (= (and d!372016 (not res!592535)) b!1318474))

(assert (= (and b!1318474 res!592533) b!1318476))

(assert (= (and b!1318476 res!592537) b!1318480))

(assert (= (and b!1318480 res!592536) b!1318475))

(assert (= (and b!1318475 res!592531) b!1318477))

(assert (= (and b!1318477 res!592532) b!1318473))

(assert (= (and b!1318473 res!592534) b!1318478))

(assert (=> b!1318472 m!1472335))

(declare-fun m!1473283 () Bool)

(assert (=> b!1318472 m!1473283))

(declare-fun m!1473285 () Bool)

(assert (=> b!1318476 m!1473285))

(declare-fun m!1473287 () Bool)

(assert (=> b!1318476 m!1473287))

(assert (=> b!1318476 m!1473287))

(declare-fun m!1473289 () Bool)

(assert (=> b!1318476 m!1473289))

(assert (=> b!1318478 m!1473285))

(declare-fun m!1473291 () Bool)

(assert (=> b!1318478 m!1473291))

(assert (=> b!1318473 m!1473285))

(assert (=> b!1318473 m!1473287))

(assert (=> b!1318473 m!1473287))

(assert (=> b!1318473 m!1473289))

(assert (=> b!1318473 m!1473289))

(declare-fun m!1473293 () Bool)

(assert (=> b!1318473 m!1473293))

(assert (=> b!1318480 m!1473285))

(declare-fun m!1473295 () Bool)

(assert (=> b!1318480 m!1473295))

(assert (=> b!1318480 m!1472335))

(assert (=> b!1318480 m!1472803))

(assert (=> b!1318475 m!1473285))

(assert (=> b!1318475 m!1473287))

(assert (=> b!1318475 m!1473287))

(assert (=> b!1318475 m!1473289))

(assert (=> b!1318475 m!1473289))

(declare-fun m!1473297 () Bool)

(assert (=> b!1318475 m!1473297))

(assert (=> b!1318477 m!1473285))

(declare-fun m!1473299 () Bool)

(assert (=> b!1318477 m!1473299))

(assert (=> b!1318477 m!1473299))

(declare-fun m!1473301 () Bool)

(assert (=> b!1318477 m!1473301))

(assert (=> bm!89540 m!1472335))

(declare-fun m!1473303 () Bool)

(assert (=> bm!89540 m!1473303))

(declare-fun m!1473305 () Bool)

(assert (=> b!1318474 m!1473305))

(declare-fun m!1473307 () Bool)

(assert (=> d!372016 m!1473307))

(assert (=> d!372016 m!1472335))

(assert (=> d!372016 m!1472335))

(declare-fun m!1473309 () Bool)

(assert (=> d!372016 m!1473309))

(assert (=> d!372016 m!1472335))

(assert (=> d!372016 m!1472335))

(declare-fun m!1473311 () Bool)

(assert (=> d!372016 m!1473311))

(assert (=> d!372016 m!1472935))

(assert (=> b!1317756 d!372016))

(declare-fun d!372018 () Bool)

(assert (=> d!372018 (= (list!5034 lt!434725) (list!5039 (c!216255 lt!434725)))))

(declare-fun bs!330715 () Bool)

(assert (= bs!330715 d!372018))

(declare-fun m!1473313 () Bool)

(assert (=> bs!330715 m!1473313))

(assert (=> b!1317756 d!372018))

(declare-fun d!372020 () Bool)

(declare-fun res!592542 () Bool)

(declare-fun e!845103 () Bool)

(assert (=> d!372020 (=> res!592542 e!845103)))

(assert (=> d!372020 (= res!592542 (not ((_ is Cons!13356) rules!2550)))))

(assert (=> d!372020 (= (sepAndNonSepRulesDisjointChars!684 rules!2550 rules!2550) e!845103)))

(declare-fun b!1318485 () Bool)

(declare-fun e!845104 () Bool)

(assert (=> b!1318485 (= e!845103 e!845104)))

(declare-fun res!592543 () Bool)

(assert (=> b!1318485 (=> (not res!592543) (not e!845104))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!314 (Rule!4422 List!13422) Bool)

(assert (=> b!1318485 (= res!592543 (ruleDisjointCharsFromAllFromOtherType!314 (h!18757 rules!2550) rules!2550))))

(declare-fun b!1318486 () Bool)

(assert (=> b!1318486 (= e!845104 (sepAndNonSepRulesDisjointChars!684 rules!2550 (t!118437 rules!2550)))))

(assert (= (and d!372020 (not res!592542)) b!1318485))

(assert (= (and b!1318485 res!592543) b!1318486))

(declare-fun m!1473315 () Bool)

(assert (=> b!1318485 m!1473315))

(declare-fun m!1473317 () Bool)

(assert (=> b!1318486 m!1473317))

(assert (=> b!1317735 d!372020))

(declare-fun d!372022 () Bool)

(assert (=> d!372022 (= (inv!17728 (tag!2573 (h!18757 rules!2550))) (= (mod (str.len (value!75495 (tag!2573 (h!18757 rules!2550)))) 2) 0))))

(assert (=> b!1317758 d!372022))

(declare-fun d!372024 () Bool)

(declare-fun res!592544 () Bool)

(declare-fun e!845105 () Bool)

(assert (=> d!372024 (=> (not res!592544) (not e!845105))))

(assert (=> d!372024 (= res!592544 (semiInverseModEq!870 (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (h!18757 rules!2550)))))))

(assert (=> d!372024 (= (inv!17732 (transformation!2311 (h!18757 rules!2550))) e!845105)))

(declare-fun b!1318487 () Bool)

(assert (=> b!1318487 (= e!845105 (equivClasses!829 (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (h!18757 rules!2550)))))))

(assert (= (and d!372024 res!592544) b!1318487))

(declare-fun m!1473319 () Bool)

(assert (=> d!372024 m!1473319))

(declare-fun m!1473321 () Bool)

(assert (=> b!1318487 m!1473321))

(assert (=> b!1317758 d!372024))

(declare-fun d!372026 () Bool)

(assert (=> d!372026 (= (inv!17728 (tag!2573 (rule!4054 t2!34))) (= (mod (str.len (value!75495 (tag!2573 (rule!4054 t2!34)))) 2) 0))))

(assert (=> b!1317737 d!372026))

(declare-fun d!372028 () Bool)

(declare-fun res!592545 () Bool)

(declare-fun e!845106 () Bool)

(assert (=> d!372028 (=> (not res!592545) (not e!845106))))

(assert (=> d!372028 (= res!592545 (semiInverseModEq!870 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 t2!34)))))))

(assert (=> d!372028 (= (inv!17732 (transformation!2311 (rule!4054 t2!34))) e!845106)))

(declare-fun b!1318488 () Bool)

(assert (=> b!1318488 (= e!845106 (equivClasses!829 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 t2!34)))))))

(assert (= (and d!372028 res!592545) b!1318488))

(declare-fun m!1473323 () Bool)

(assert (=> d!372028 m!1473323))

(declare-fun m!1473325 () Bool)

(assert (=> b!1318488 m!1473325))

(assert (=> b!1317737 d!372028))

(declare-fun d!372030 () Bool)

(declare-fun lt!434978 () Bool)

(assert (=> d!372030 (= lt!434978 (select (content!1883 lt!434728) lt!434714))))

(declare-fun e!845108 () Bool)

(assert (=> d!372030 (= lt!434978 e!845108)))

(declare-fun res!592546 () Bool)

(assert (=> d!372030 (=> (not res!592546) (not e!845108))))

(assert (=> d!372030 (= res!592546 ((_ is Cons!13354) lt!434728))))

(assert (=> d!372030 (= (contains!2348 lt!434728 lt!434714) lt!434978)))

(declare-fun b!1318489 () Bool)

(declare-fun e!845107 () Bool)

(assert (=> b!1318489 (= e!845108 e!845107)))

(declare-fun res!592547 () Bool)

(assert (=> b!1318489 (=> res!592547 e!845107)))

(assert (=> b!1318489 (= res!592547 (= (h!18755 lt!434728) lt!434714))))

(declare-fun b!1318490 () Bool)

(assert (=> b!1318490 (= e!845107 (contains!2348 (t!118435 lt!434728) lt!434714))))

(assert (= (and d!372030 res!592546) b!1318489))

(assert (= (and b!1318489 (not res!592547)) b!1318490))

(assert (=> d!372030 m!1473265))

(declare-fun m!1473327 () Bool)

(assert (=> d!372030 m!1473327))

(declare-fun m!1473329 () Bool)

(assert (=> b!1318490 m!1473329))

(assert (=> b!1317738 d!372030))

(declare-fun d!372032 () Bool)

(declare-fun lt!434979 () C!7540)

(assert (=> d!372032 (= lt!434979 (apply!3049 (list!5034 lt!434720) 0))))

(assert (=> d!372032 (= lt!434979 (apply!3050 (c!216255 lt!434720) 0))))

(declare-fun e!845109 () Bool)

(assert (=> d!372032 e!845109))

(declare-fun res!592548 () Bool)

(assert (=> d!372032 (=> (not res!592548) (not e!845109))))

(assert (=> d!372032 (= res!592548 (<= 0 0))))

(assert (=> d!372032 (= (apply!3043 lt!434720 0) lt!434979)))

(declare-fun b!1318491 () Bool)

(assert (=> b!1318491 (= e!845109 (< 0 (size!10867 lt!434720)))))

(assert (= (and d!372032 res!592548) b!1318491))

(assert (=> d!372032 m!1472351))

(assert (=> d!372032 m!1472351))

(declare-fun m!1473331 () Bool)

(assert (=> d!372032 m!1473331))

(declare-fun m!1473333 () Bool)

(assert (=> d!372032 m!1473333))

(declare-fun m!1473335 () Bool)

(assert (=> b!1318491 m!1473335))

(assert (=> b!1317738 d!372032))

(declare-fun d!372034 () Bool)

(declare-fun choose!8066 (Int) Bool)

(assert (=> d!372034 (= (Exists!783 lambda!53719) (choose!8066 lambda!53719))))

(declare-fun bs!330716 () Bool)

(assert (= bs!330716 d!372034))

(declare-fun m!1473337 () Bool)

(assert (=> bs!330716 m!1473337))

(assert (=> b!1317759 d!372034))

(declare-fun bs!330717 () Bool)

(declare-fun d!372036 () Bool)

(assert (= bs!330717 (and d!372036 b!1317759)))

(declare-fun lambda!53767 () Int)

(assert (=> bs!330717 (= lambda!53767 lambda!53719)))

(assert (=> d!372036 true))

(assert (=> d!372036 true))

(assert (=> d!372036 (Exists!783 lambda!53767)))

(declare-fun lt!434982 () Unit!19422)

(declare-fun choose!8067 (Regex!3625 List!13420) Unit!19422)

(assert (=> d!372036 (= lt!434982 (choose!8067 lt!434731 lt!434728))))

(assert (=> d!372036 (validRegex!1551 lt!434731)))

(assert (=> d!372036 (= (lemmaPrefixMatchThenExistsStringThatMatches!101 lt!434731 lt!434728) lt!434982)))

(declare-fun bs!330718 () Bool)

(assert (= bs!330718 d!372036))

(declare-fun m!1473339 () Bool)

(assert (=> bs!330718 m!1473339))

(declare-fun m!1473341 () Bool)

(assert (=> bs!330718 m!1473341))

(assert (=> bs!330718 m!1473253))

(assert (=> b!1317759 d!372036))

(declare-fun b!1318494 () Bool)

(declare-fun e!845112 () List!13420)

(assert (=> b!1318494 (= e!845112 (getSuffix!481 lt!434735 lt!434728))))

(declare-fun lt!434983 () List!13420)

(declare-fun e!845113 () Bool)

(declare-fun b!1318497 () Bool)

(assert (=> b!1318497 (= e!845113 (or (not (= (getSuffix!481 lt!434735 lt!434728) Nil!13354)) (= lt!434983 lt!434728)))))

(declare-fun b!1318496 () Bool)

(declare-fun res!592552 () Bool)

(assert (=> b!1318496 (=> (not res!592552) (not e!845113))))

(assert (=> b!1318496 (= res!592552 (= (size!10874 lt!434983) (+ (size!10874 lt!434728) (size!10874 (getSuffix!481 lt!434735 lt!434728)))))))

(declare-fun b!1318495 () Bool)

(assert (=> b!1318495 (= e!845112 (Cons!13354 (h!18755 lt!434728) (++!3406 (t!118435 lt!434728) (getSuffix!481 lt!434735 lt!434728))))))

(declare-fun d!372038 () Bool)

(assert (=> d!372038 e!845113))

(declare-fun res!592551 () Bool)

(assert (=> d!372038 (=> (not res!592551) (not e!845113))))

(assert (=> d!372038 (= res!592551 (= (content!1883 lt!434983) ((_ map or) (content!1883 lt!434728) (content!1883 (getSuffix!481 lt!434735 lt!434728)))))))

(assert (=> d!372038 (= lt!434983 e!845112)))

(declare-fun c!216387 () Bool)

(assert (=> d!372038 (= c!216387 ((_ is Nil!13354) lt!434728))))

(assert (=> d!372038 (= (++!3406 lt!434728 (getSuffix!481 lt!434735 lt!434728)) lt!434983)))

(assert (= (and d!372038 c!216387) b!1318494))

(assert (= (and d!372038 (not c!216387)) b!1318495))

(assert (= (and d!372038 res!592551) b!1318496))

(assert (= (and b!1318496 res!592552) b!1318497))

(declare-fun m!1473343 () Bool)

(assert (=> b!1318496 m!1473343))

(declare-fun m!1473345 () Bool)

(assert (=> b!1318496 m!1473345))

(assert (=> b!1318496 m!1472367))

(declare-fun m!1473347 () Bool)

(assert (=> b!1318496 m!1473347))

(assert (=> b!1318495 m!1472367))

(declare-fun m!1473349 () Bool)

(assert (=> b!1318495 m!1473349))

(declare-fun m!1473351 () Bool)

(assert (=> d!372038 m!1473351))

(assert (=> d!372038 m!1473265))

(assert (=> d!372038 m!1472367))

(declare-fun m!1473353 () Bool)

(assert (=> d!372038 m!1473353))

(assert (=> b!1317761 d!372038))

(declare-fun d!372040 () Bool)

(declare-fun lt!434986 () List!13420)

(assert (=> d!372040 (= (++!3406 lt!434728 lt!434986) lt!434735)))

(declare-fun e!845116 () List!13420)

(assert (=> d!372040 (= lt!434986 e!845116)))

(declare-fun c!216390 () Bool)

(assert (=> d!372040 (= c!216390 ((_ is Cons!13354) lt!434728))))

(assert (=> d!372040 (>= (size!10874 lt!434735) (size!10874 lt!434728))))

(assert (=> d!372040 (= (getSuffix!481 lt!434735 lt!434728) lt!434986)))

(declare-fun b!1318502 () Bool)

(assert (=> b!1318502 (= e!845116 (getSuffix!481 (tail!1890 lt!434735) (t!118435 lt!434728)))))

(declare-fun b!1318503 () Bool)

(assert (=> b!1318503 (= e!845116 lt!434735)))

(assert (= (and d!372040 c!216390) b!1318502))

(assert (= (and d!372040 (not c!216390)) b!1318503))

(declare-fun m!1473355 () Bool)

(assert (=> d!372040 m!1473355))

(declare-fun m!1473357 () Bool)

(assert (=> d!372040 m!1473357))

(assert (=> d!372040 m!1473345))

(assert (=> b!1318502 m!1473245))

(assert (=> b!1318502 m!1473245))

(declare-fun m!1473359 () Bool)

(assert (=> b!1318502 m!1473359))

(assert (=> b!1317761 d!372040))

(declare-fun d!372042 () Bool)

(declare-fun lt!434989 () List!13420)

(declare-fun dynLambda!5852 (Int List!13420) Bool)

(assert (=> d!372042 (dynLambda!5852 lambda!53719 lt!434989)))

(declare-fun choose!8068 (Int) List!13420)

(assert (=> d!372042 (= lt!434989 (choose!8068 lambda!53719))))

(assert (=> d!372042 (Exists!783 lambda!53719)))

(assert (=> d!372042 (= (pickWitness!88 lambda!53719) lt!434989)))

(declare-fun b_lambda!38319 () Bool)

(assert (=> (not b_lambda!38319) (not d!372042)))

(declare-fun bs!330719 () Bool)

(assert (= bs!330719 d!372042))

(declare-fun m!1473361 () Bool)

(assert (=> bs!330719 m!1473361))

(declare-fun m!1473363 () Bool)

(assert (=> bs!330719 m!1473363))

(assert (=> bs!330719 m!1472327))

(assert (=> b!1317761 d!372042))

(declare-fun d!372044 () Bool)

(declare-fun lt!434990 () Bool)

(assert (=> d!372044 (= lt!434990 (select (content!1882 rules!2550) (rule!4054 t2!34)))))

(declare-fun e!845118 () Bool)

(assert (=> d!372044 (= lt!434990 e!845118)))

(declare-fun res!592554 () Bool)

(assert (=> d!372044 (=> (not res!592554) (not e!845118))))

(assert (=> d!372044 (= res!592554 ((_ is Cons!13356) rules!2550))))

(assert (=> d!372044 (= (contains!2349 rules!2550 (rule!4054 t2!34)) lt!434990)))

(declare-fun b!1318504 () Bool)

(declare-fun e!845117 () Bool)

(assert (=> b!1318504 (= e!845118 e!845117)))

(declare-fun res!592553 () Bool)

(assert (=> b!1318504 (=> res!592553 e!845117)))

(assert (=> b!1318504 (= res!592553 (= (h!18757 rules!2550) (rule!4054 t2!34)))))

(declare-fun b!1318505 () Bool)

(assert (=> b!1318505 (= e!845117 (contains!2349 (t!118437 rules!2550) (rule!4054 t2!34)))))

(assert (= (and d!372044 res!592554) b!1318504))

(assert (= (and b!1318504 (not res!592553)) b!1318505))

(assert (=> d!372044 m!1472893))

(declare-fun m!1473365 () Bool)

(assert (=> d!372044 m!1473365))

(declare-fun m!1473367 () Bool)

(assert (=> b!1318505 m!1473367))

(assert (=> b!1317760 d!372044))

(declare-fun b!1318510 () Bool)

(declare-fun e!845121 () Bool)

(declare-fun tp_is_empty!6631 () Bool)

(declare-fun tp!383224 () Bool)

(assert (=> b!1318510 (= e!845121 (and tp_is_empty!6631 tp!383224))))

(assert (=> b!1317741 (= tp!383172 e!845121)))

(assert (= (and b!1317741 ((_ is Cons!13354) (originalCharacters!3173 t2!34))) b!1318510))

(declare-fun b!1318521 () Bool)

(declare-fun e!845124 () Bool)

(assert (=> b!1318521 (= e!845124 tp_is_empty!6631)))

(declare-fun b!1318524 () Bool)

(declare-fun tp!383239 () Bool)

(declare-fun tp!383237 () Bool)

(assert (=> b!1318524 (= e!845124 (and tp!383239 tp!383237))))

(assert (=> b!1317758 (= tp!383168 e!845124)))

(declare-fun b!1318523 () Bool)

(declare-fun tp!383238 () Bool)

(assert (=> b!1318523 (= e!845124 tp!383238)))

(declare-fun b!1318522 () Bool)

(declare-fun tp!383236 () Bool)

(declare-fun tp!383235 () Bool)

(assert (=> b!1318522 (= e!845124 (and tp!383236 tp!383235))))

(assert (= (and b!1317758 ((_ is ElementMatch!3625) (regex!2311 (h!18757 rules!2550)))) b!1318521))

(assert (= (and b!1317758 ((_ is Concat!6026) (regex!2311 (h!18757 rules!2550)))) b!1318522))

(assert (= (and b!1317758 ((_ is Star!3625) (regex!2311 (h!18757 rules!2550)))) b!1318523))

(assert (= (and b!1317758 ((_ is Union!3625) (regex!2311 (h!18757 rules!2550)))) b!1318524))

(declare-fun b!1318525 () Bool)

(declare-fun e!845125 () Bool)

(assert (=> b!1318525 (= e!845125 tp_is_empty!6631)))

(declare-fun b!1318528 () Bool)

(declare-fun tp!383244 () Bool)

(declare-fun tp!383242 () Bool)

(assert (=> b!1318528 (= e!845125 (and tp!383244 tp!383242))))

(assert (=> b!1317769 (= tp!383167 e!845125)))

(declare-fun b!1318527 () Bool)

(declare-fun tp!383243 () Bool)

(assert (=> b!1318527 (= e!845125 tp!383243)))

(declare-fun b!1318526 () Bool)

(declare-fun tp!383241 () Bool)

(declare-fun tp!383240 () Bool)

(assert (=> b!1318526 (= e!845125 (and tp!383241 tp!383240))))

(assert (= (and b!1317769 ((_ is ElementMatch!3625) (regex!2311 (rule!4054 t1!34)))) b!1318525))

(assert (= (and b!1317769 ((_ is Concat!6026) (regex!2311 (rule!4054 t1!34)))) b!1318526))

(assert (= (and b!1317769 ((_ is Star!3625) (regex!2311 (rule!4054 t1!34)))) b!1318527))

(assert (= (and b!1317769 ((_ is Union!3625) (regex!2311 (rule!4054 t1!34)))) b!1318528))

(declare-fun b!1318529 () Bool)

(declare-fun e!845126 () Bool)

(assert (=> b!1318529 (= e!845126 tp_is_empty!6631)))

(declare-fun b!1318532 () Bool)

(declare-fun tp!383249 () Bool)

(declare-fun tp!383247 () Bool)

(assert (=> b!1318532 (= e!845126 (and tp!383249 tp!383247))))

(assert (=> b!1317737 (= tp!383171 e!845126)))

(declare-fun b!1318531 () Bool)

(declare-fun tp!383248 () Bool)

(assert (=> b!1318531 (= e!845126 tp!383248)))

(declare-fun b!1318530 () Bool)

(declare-fun tp!383246 () Bool)

(declare-fun tp!383245 () Bool)

(assert (=> b!1318530 (= e!845126 (and tp!383246 tp!383245))))

(assert (= (and b!1317737 ((_ is ElementMatch!3625) (regex!2311 (rule!4054 t2!34)))) b!1318529))

(assert (= (and b!1317737 ((_ is Concat!6026) (regex!2311 (rule!4054 t2!34)))) b!1318530))

(assert (= (and b!1317737 ((_ is Star!3625) (regex!2311 (rule!4054 t2!34)))) b!1318531))

(assert (= (and b!1317737 ((_ is Union!3625) (regex!2311 (rule!4054 t2!34)))) b!1318532))

(declare-fun b!1318543 () Bool)

(declare-fun b_free!31771 () Bool)

(declare-fun b_next!32475 () Bool)

(assert (=> b!1318543 (= b_free!31771 (not b_next!32475))))

(declare-fun tp!383260 () Bool)

(declare-fun b_and!88087 () Bool)

(assert (=> b!1318543 (= tp!383260 b_and!88087)))

(declare-fun b_free!31773 () Bool)

(declare-fun b_next!32477 () Bool)

(assert (=> b!1318543 (= b_free!31773 (not b_next!32477))))

(declare-fun tb!70021 () Bool)

(declare-fun t!118474 () Bool)

(assert (=> (and b!1318543 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 t2!34)))) t!118474) tb!70021))

(declare-fun result!84978 () Bool)

(assert (= result!84978 result!84948))

(assert (=> d!371874 t!118474))

(declare-fun tb!70023 () Bool)

(declare-fun t!118476 () Bool)

(assert (=> (and b!1318543 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) t!118476) tb!70023))

(declare-fun result!84980 () Bool)

(assert (= result!84980 result!84956))

(assert (=> d!371942 t!118476))

(assert (=> b!1318422 t!118476))

(assert (=> b!1318424 t!118474))

(declare-fun tp!383261 () Bool)

(declare-fun b_and!88089 () Bool)

(assert (=> b!1318543 (= tp!383261 (and (=> t!118474 result!84978) (=> t!118476 result!84980) b_and!88089))))

(declare-fun e!845136 () Bool)

(assert (=> b!1318543 (= e!845136 (and tp!383260 tp!383261))))

(declare-fun b!1318542 () Bool)

(declare-fun e!845138 () Bool)

(declare-fun tp!383259 () Bool)

(assert (=> b!1318542 (= e!845138 (and tp!383259 (inv!17728 (tag!2573 (h!18757 (t!118437 rules!2550)))) (inv!17732 (transformation!2311 (h!18757 (t!118437 rules!2550)))) e!845136))))

(declare-fun b!1318541 () Bool)

(declare-fun e!845137 () Bool)

(declare-fun tp!383258 () Bool)

(assert (=> b!1318541 (= e!845137 (and e!845138 tp!383258))))

(assert (=> b!1317763 (= tp!383166 e!845137)))

(assert (= b!1318542 b!1318543))

(assert (= b!1318541 b!1318542))

(assert (= (and b!1317763 ((_ is Cons!13356) (t!118437 rules!2550))) b!1318541))

(declare-fun m!1473369 () Bool)

(assert (=> b!1318542 m!1473369))

(declare-fun m!1473371 () Bool)

(assert (=> b!1318542 m!1473371))

(declare-fun b!1318544 () Bool)

(declare-fun e!845139 () Bool)

(declare-fun tp!383262 () Bool)

(assert (=> b!1318544 (= e!845139 (and tp_is_empty!6631 tp!383262))))

(assert (=> b!1317764 (= tp!383165 e!845139)))

(assert (= (and b!1317764 ((_ is Cons!13354) (originalCharacters!3173 t1!34))) b!1318544))

(declare-fun b_lambda!38321 () Bool)

(assert (= b_lambda!38271 (or b!1317751 b_lambda!38321)))

(declare-fun bs!330720 () Bool)

(declare-fun d!372046 () Bool)

(assert (= bs!330720 (and d!372046 b!1317751)))

(declare-fun ruleValid!564 (LexerInterface!2006 Rule!4422) Bool)

(assert (=> bs!330720 (= (dynLambda!5838 lambda!53723 lt!434734) (ruleValid!564 thiss!19762 lt!434734))))

(declare-fun m!1473373 () Bool)

(assert (=> bs!330720 m!1473373))

(assert (=> d!371852 d!372046))

(declare-fun b_lambda!38323 () Bool)

(assert (= b_lambda!38279 (or b!1317762 b_lambda!38323)))

(declare-fun bs!330721 () Bool)

(declare-fun d!372048 () Bool)

(assert (= bs!330721 (and d!372048 b!1317762)))

(declare-fun res!592555 () Bool)

(declare-fun e!845140 () Bool)

(assert (=> bs!330721 (=> (not res!592555) (not e!845140))))

(assert (=> bs!330721 (= res!592555 (validRegex!1551 lt!434883))))

(assert (=> bs!330721 (= (dynLambda!5848 lambda!53721 lt!434883) e!845140)))

(declare-fun b!1318545 () Bool)

(assert (=> b!1318545 (= e!845140 (matchR!1627 lt!434883 lt!434735))))

(assert (= (and bs!330721 res!592555) b!1318545))

(declare-fun m!1473375 () Bool)

(assert (=> bs!330721 m!1473375))

(declare-fun m!1473377 () Bool)

(assert (=> b!1318545 m!1473377))

(assert (=> d!371892 d!372048))

(declare-fun b_lambda!38325 () Bool)

(assert (= b_lambda!38319 (or b!1317759 b_lambda!38325)))

(declare-fun bs!330722 () Bool)

(declare-fun d!372050 () Bool)

(assert (= bs!330722 (and d!372050 b!1317759)))

(declare-fun res!592556 () Bool)

(declare-fun e!845141 () Bool)

(assert (=> bs!330722 (=> (not res!592556) (not e!845141))))

(assert (=> bs!330722 (= res!592556 (matchR!1627 lt!434731 lt!434989))))

(assert (=> bs!330722 (= (dynLambda!5852 lambda!53719 lt!434989) e!845141)))

(declare-fun b!1318546 () Bool)

(assert (=> b!1318546 (= e!845141 (isPrefix!1076 lt!434728 lt!434989))))

(assert (= (and bs!330722 res!592556) b!1318546))

(declare-fun m!1473379 () Bool)

(assert (=> bs!330722 m!1473379))

(declare-fun m!1473381 () Bool)

(assert (=> b!1318546 m!1473381))

(assert (=> d!372042 d!372050))

(declare-fun b_lambda!38327 () Bool)

(assert (= b_lambda!38269 (or b!1317751 b_lambda!38327)))

(declare-fun bs!330723 () Bool)

(declare-fun d!372052 () Bool)

(assert (= bs!330723 (and d!372052 b!1317751)))

(assert (=> bs!330723 (= (dynLambda!5838 lambda!53723 (rule!4054 t1!34)) (ruleValid!564 thiss!19762 (rule!4054 t1!34)))))

(declare-fun m!1473383 () Bool)

(assert (=> bs!330723 m!1473383))

(assert (=> d!371850 d!372052))

(declare-fun b_lambda!38329 () Bool)

(assert (= b_lambda!38267 (or b!1317751 b_lambda!38329)))

(declare-fun bs!330724 () Bool)

(declare-fun d!372054 () Bool)

(assert (= bs!330724 (and d!372054 b!1317751)))

(assert (=> bs!330724 (= (dynLambda!5838 lambda!53723 (rule!4054 t2!34)) (ruleValid!564 thiss!19762 (rule!4054 t2!34)))))

(declare-fun m!1473385 () Bool)

(assert (=> bs!330724 m!1473385))

(assert (=> d!371848 d!372054))

(declare-fun b_lambda!38331 () Bool)

(assert (= b_lambda!38275 (or b!1317762 b_lambda!38331)))

(declare-fun bs!330725 () Bool)

(declare-fun d!372056 () Bool)

(assert (= bs!330725 (and d!372056 b!1317762)))

(assert (=> bs!330725 (= (dynLambda!5847 lambda!53720 (h!18757 rules!2550)) (regex!2311 (h!18757 rules!2550)))))

(assert (=> b!1318153 d!372056))

(declare-fun b_lambda!38333 () Bool)

(assert (= b_lambda!38285 (or (and b!1317739 b_free!31757) (and b!1317747 b_free!31761 (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 t1!34))))) (and b!1317736 b_free!31765 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t1!34))))) (and b!1318543 b_free!31773 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 t1!34))))) b_lambda!38333)))

(declare-fun b_lambda!38335 () Bool)

(assert (= b_lambda!38317 (or (and b!1317739 b_free!31757 (= (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toChars!3397 (transformation!2311 (rule!4054 t2!34))))) (and b!1317747 b_free!31761) (and b!1317736 b_free!31765 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t2!34))))) (and b!1318543 b_free!31773 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 t2!34))))) b_lambda!38335)))

(declare-fun b_lambda!38337 () Bool)

(assert (= b_lambda!38249 (or b!1317731 b_lambda!38337)))

(declare-fun bs!330726 () Bool)

(declare-fun d!372058 () Bool)

(assert (= bs!330726 (and d!372058 b!1317731)))

(assert (=> bs!330726 (= (dynLambda!5838 lambda!53722 (h!18757 rules!2550)) (= (regex!2311 (h!18757 rules!2550)) lt!434717))))

(assert (=> b!1317903 d!372058))

(declare-fun b_lambda!38339 () Bool)

(assert (= b_lambda!38251 (or b!1317731 b_lambda!38339)))

(declare-fun bs!330727 () Bool)

(declare-fun d!372060 () Bool)

(assert (= bs!330727 (and d!372060 b!1317731)))

(assert (=> bs!330727 (= (dynLambda!5838 lambda!53722 lt!434763) (= (regex!2311 lt!434763) lt!434717))))

(assert (=> d!371776 d!372060))

(declare-fun b_lambda!38341 () Bool)

(assert (= b_lambda!38315 (or (and b!1317739 b_free!31757) (and b!1317747 b_free!31761 (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 t1!34))))) (and b!1317736 b_free!31765 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t1!34))))) (and b!1318543 b_free!31773 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 t1!34))))) b_lambda!38341)))

(declare-fun b_lambda!38343 () Bool)

(assert (= b_lambda!38277 (or b!1317762 b_lambda!38343)))

(declare-fun bs!330728 () Bool)

(declare-fun d!372062 () Bool)

(assert (= bs!330728 (and d!372062 b!1317762)))

(declare-fun res!592557 () Bool)

(declare-fun e!845142 () Bool)

(assert (=> bs!330728 (=> (not res!592557) (not e!845142))))

(assert (=> bs!330728 (= res!592557 (validRegex!1551 (h!18759 (map!2933 rules!2550 lambda!53720))))))

(assert (=> bs!330728 (= (dynLambda!5848 lambda!53721 (h!18759 (map!2933 rules!2550 lambda!53720))) e!845142)))

(declare-fun b!1318547 () Bool)

(assert (=> b!1318547 (= e!845142 (matchR!1627 (h!18759 (map!2933 rules!2550 lambda!53720)) lt!434735))))

(assert (= (and bs!330728 res!592557) b!1318547))

(declare-fun m!1473387 () Bool)

(assert (=> bs!330728 m!1473387))

(declare-fun m!1473389 () Bool)

(assert (=> b!1318547 m!1473389))

(assert (=> b!1318169 d!372062))

(declare-fun b_lambda!38345 () Bool)

(assert (= b_lambda!38273 (or (and b!1317739 b_free!31757 (= (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toChars!3397 (transformation!2311 (rule!4054 t2!34))))) (and b!1317747 b_free!31761) (and b!1317736 b_free!31765 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t2!34))))) (and b!1318543 b_free!31773 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 t2!34))))) b_lambda!38345)))

(check-sat (not d!371884) (not b!1318546) (not d!371788) (not b!1318491) (not tb!70011) (not b!1318472) (not b_lambda!38339) b_and!88023 (not d!371906) (not bs!330721) (not d!371908) (not d!372018) (not d!371924) (not b!1317905) (not d!371852) (not b!1318289) (not b!1318176) (not b!1318485) (not b!1318526) (not b!1318205) (not b!1318468) (not d!372016) (not d!372012) (not bs!330722) (not tb!70005) (not b!1318475) (not b!1318208) (not d!371970) b_and!88031 (not d!371974) (not b!1318090) (not d!371864) (not b!1318291) (not b!1317910) (not b_lambda!38345) (not b_lambda!38343) (not d!371794) (not b!1318528) (not b!1318486) (not d!371896) (not d!371954) b_and!88087 (not b!1318206) (not d!371916) (not b!1318118) (not b!1318023) (not b!1318424) (not b!1318210) (not d!371846) (not d!371776) (not b!1318476) (not b!1318435) (not b!1318502) (not b!1318522) (not d!371882) (not b!1318531) (not b!1318170) (not d!372008) (not d!372042) (not d!371854) (not b_next!32477) (not b_next!32463) (not b!1318510) (not b!1318545) (not d!371922) (not b!1318417) (not b!1318478) b_and!88027 (not d!371950) (not b!1318130) (not b!1318129) (not b_lambda!38321) (not bm!89538) (not b!1318469) (not d!371856) (not d!372032) (not d!372038) (not b!1318256) (not b!1318474) (not b_next!32465) (not b!1317902) b_and!88083 (not b!1318132) (not b!1318524) (not d!371850) (not b!1318470) (not b_lambda!38323) (not b!1318122) b_and!88085 (not bm!89513) (not b!1318495) (not b!1318147) (not b!1318324) (not b!1318061) (not b_lambda!38329) (not b!1318490) (not bm!89540) (not d!372044) b_and!88089 (not b!1318433) b_and!88081 (not d!371874) (not d!371878) (not b!1317907) (not b!1318166) (not b!1318477) (not b!1318414) (not b!1318410) (not bs!330724) (not b_lambda!38335) (not d!371900) (not b!1318428) (not bm!89519) (not b_next!32461) (not d!371894) (not b!1318025) (not b!1318425) (not b!1318212) (not d!371858) (not b!1318541) (not b!1318182) (not d!371880) (not b!1318431) (not b!1318527) (not b!1318505) (not d!371942) tp_is_empty!6631 (not b_next!32467) (not d!372024) (not b!1318135) (not b_next!32469) (not b!1318021) (not b!1318547) (not b!1318078) (not bs!330720) (not bs!330723) (not d!371912) (not b!1318024) (not d!372034) (not b_lambda!38337) (not b!1318121) (not b!1318532) (not b_lambda!38333) (not b!1318255) (not b!1318411) (not d!371790) (not d!371944) (not b!1318175) (not d!371962) (not b_lambda!38341) (not b!1318544) (not d!371910) (not b!1318209) (not b!1318185) (not bm!89530) (not b!1318059) (not b!1318056) (not b!1318224) (not b!1318057) (not b!1318347) (not b_next!32459) (not b!1318473) (not b_lambda!38331) (not b!1318133) (not b!1318471) (not b!1318496) (not b!1318232) (not d!371890) (not b!1318530) (not bs!330728) (not b!1318089) (not b!1318423) (not b!1318226) (not b!1318523) (not b!1318321) (not b!1318153) (not b!1318459) (not d!371868) (not d!371886) (not b!1318429) (not b!1318060) (not bm!89539) (not d!372040) (not d!372014) (not d!372030) (not b_lambda!38327) (not d!371892) (not b!1318488) (not b!1318487) (not b!1318323) (not d!372006) (not b!1318480) (not d!372036) (not b_next!32475) (not b!1318134) (not b!1318171) (not b!1318326) (not d!371872) (not b!1318412) (not b!1318288) (not b!1318063) (not b!1318542) (not b!1318432) (not b!1318416) (not d!371792) (not d!371976) (not d!372002) (not b_lambda!38325) (not b!1318204) (not d!371914) (not d!372028) (not d!371848) (not d!371904) (not b!1318207) (not b!1318172) (not d!372004) (not b!1318422))
(check-sat b_and!88023 b_and!88031 b_and!88087 b_and!88027 b_and!88085 b_and!88089 b_and!88081 (not b_next!32461) (not b_next!32459) (not b_next!32475) (not b_next!32477) (not b_next!32463) (not b_next!32465) b_and!88083 (not b_next!32467) (not b_next!32469))
(get-model)

(declare-fun d!372204 () Bool)

(declare-fun c!216453 () Bool)

(assert (=> d!372204 (= c!216453 ((_ is Node!4392) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))))

(declare-fun e!845289 () Bool)

(assert (=> d!372204 (= (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))) e!845289)))

(declare-fun b!1318781 () Bool)

(declare-fun inv!17739 (Conc!4392) Bool)

(assert (=> b!1318781 (= e!845289 (inv!17739 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))))

(declare-fun b!1318782 () Bool)

(declare-fun e!845290 () Bool)

(assert (=> b!1318782 (= e!845289 e!845290)))

(declare-fun res!592674 () Bool)

(assert (=> b!1318782 (= res!592674 (not ((_ is Leaf!6744) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))))))))

(assert (=> b!1318782 (=> res!592674 e!845290)))

(declare-fun b!1318783 () Bool)

(declare-fun inv!17740 (Conc!4392) Bool)

(assert (=> b!1318783 (= e!845290 (inv!17740 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))))

(assert (= (and d!372204 c!216453) b!1318781))

(assert (= (and d!372204 (not c!216453)) b!1318782))

(assert (= (and b!1318782 (not res!592674)) b!1318783))

(declare-fun m!1473691 () Bool)

(assert (=> b!1318781 m!1473691))

(declare-fun m!1473693 () Bool)

(assert (=> b!1318783 m!1473693))

(assert (=> b!1318129 d!372204))

(declare-fun d!372206 () Bool)

(declare-fun res!592686 () Bool)

(declare-fun e!845299 () Bool)

(assert (=> d!372206 (=> res!592686 e!845299)))

(assert (=> d!372206 (= res!592686 ((_ is Nil!13358) (map!2933 rules!2550 lambda!53720)))))

(assert (=> d!372206 (= (forall!3298 (map!2933 rules!2550 lambda!53720) lambda!53763) e!845299)))

(declare-fun b!1318797 () Bool)

(declare-fun e!845300 () Bool)

(assert (=> b!1318797 (= e!845299 e!845300)))

(declare-fun res!592687 () Bool)

(assert (=> b!1318797 (=> (not res!592687) (not e!845300))))

(assert (=> b!1318797 (= res!592687 (dynLambda!5848 lambda!53763 (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun b!1318798 () Bool)

(assert (=> b!1318798 (= e!845300 (forall!3298 (t!118439 (map!2933 rules!2550 lambda!53720)) lambda!53763))))

(assert (= (and d!372206 (not res!592686)) b!1318797))

(assert (= (and b!1318797 res!592687) b!1318798))

(declare-fun b_lambda!38369 () Bool)

(assert (=> (not b_lambda!38369) (not b!1318797)))

(declare-fun m!1473699 () Bool)

(assert (=> b!1318797 m!1473699))

(declare-fun m!1473703 () Bool)

(assert (=> b!1318798 m!1473703))

(assert (=> d!371954 d!372206))

(declare-fun b!1318799 () Bool)

(declare-fun e!845302 () Bool)

(declare-fun e!845303 () Bool)

(assert (=> b!1318799 (= e!845302 e!845303)))

(declare-fun res!592694 () Bool)

(assert (=> b!1318799 (=> (not res!592694) (not e!845303))))

(declare-fun lt!435058 () Bool)

(assert (=> b!1318799 (= res!592694 (not lt!435058))))

(declare-fun bm!89546 () Bool)

(declare-fun call!89551 () Bool)

(assert (=> bm!89546 (= call!89551 (isEmpty!7930 lt!434735))))

(declare-fun d!372208 () Bool)

(declare-fun e!845307 () Bool)

(assert (=> d!372208 e!845307))

(declare-fun c!216457 () Bool)

(assert (=> d!372208 (= c!216457 ((_ is EmptyExpr!3625) lt!434883))))

(declare-fun e!845305 () Bool)

(assert (=> d!372208 (= lt!435058 e!845305)))

(declare-fun c!216456 () Bool)

(assert (=> d!372208 (= c!216456 (isEmpty!7930 lt!434735))))

(assert (=> d!372208 (validRegex!1551 lt!434883)))

(assert (=> d!372208 (= (matchR!1627 lt!434883 lt!434735) lt!435058)))

(declare-fun b!1318800 () Bool)

(declare-fun res!592688 () Bool)

(assert (=> b!1318800 (=> res!592688 e!845302)))

(assert (=> b!1318800 (= res!592688 (not ((_ is ElementMatch!3625) lt!434883)))))

(declare-fun e!845306 () Bool)

(assert (=> b!1318800 (= e!845306 e!845302)))

(declare-fun b!1318801 () Bool)

(declare-fun res!592693 () Bool)

(declare-fun e!845301 () Bool)

(assert (=> b!1318801 (=> res!592693 e!845301)))

(assert (=> b!1318801 (= res!592693 (not (isEmpty!7930 (tail!1890 lt!434735))))))

(declare-fun b!1318802 () Bool)

(declare-fun e!845304 () Bool)

(assert (=> b!1318802 (= e!845304 (= (head!2281 lt!434735) (c!216254 lt!434883)))))

(declare-fun b!1318803 () Bool)

(assert (=> b!1318803 (= e!845307 e!845306)))

(declare-fun c!216455 () Bool)

(assert (=> b!1318803 (= c!216455 ((_ is EmptyLang!3625) lt!434883))))

(declare-fun b!1318804 () Bool)

(assert (=> b!1318804 (= e!845305 (nullable!1149 lt!434883))))

(declare-fun b!1318805 () Bool)

(declare-fun res!592691 () Bool)

(assert (=> b!1318805 (=> (not res!592691) (not e!845304))))

(assert (=> b!1318805 (= res!592691 (isEmpty!7930 (tail!1890 lt!434735)))))

(declare-fun b!1318806 () Bool)

(assert (=> b!1318806 (= e!845305 (matchR!1627 (derivativeStep!901 lt!434883 (head!2281 lt!434735)) (tail!1890 lt!434735)))))

(declare-fun b!1318807 () Bool)

(assert (=> b!1318807 (= e!845307 (= lt!435058 call!89551))))

(declare-fun b!1318808 () Bool)

(assert (=> b!1318808 (= e!845301 (not (= (head!2281 lt!434735) (c!216254 lt!434883))))))

(declare-fun b!1318809 () Bool)

(declare-fun res!592690 () Bool)

(assert (=> b!1318809 (=> res!592690 e!845302)))

(assert (=> b!1318809 (= res!592690 e!845304)))

(declare-fun res!592689 () Bool)

(assert (=> b!1318809 (=> (not res!592689) (not e!845304))))

(assert (=> b!1318809 (= res!592689 lt!435058)))

(declare-fun b!1318810 () Bool)

(assert (=> b!1318810 (= e!845306 (not lt!435058))))

(declare-fun b!1318811 () Bool)

(declare-fun res!592692 () Bool)

(assert (=> b!1318811 (=> (not res!592692) (not e!845304))))

(assert (=> b!1318811 (= res!592692 (not call!89551))))

(declare-fun b!1318812 () Bool)

(assert (=> b!1318812 (= e!845303 e!845301)))

(declare-fun res!592695 () Bool)

(assert (=> b!1318812 (=> res!592695 e!845301)))

(assert (=> b!1318812 (= res!592695 call!89551)))

(assert (= (and d!372208 c!216456) b!1318804))

(assert (= (and d!372208 (not c!216456)) b!1318806))

(assert (= (and d!372208 c!216457) b!1318807))

(assert (= (and d!372208 (not c!216457)) b!1318803))

(assert (= (and b!1318803 c!216455) b!1318810))

(assert (= (and b!1318803 (not c!216455)) b!1318800))

(assert (= (and b!1318800 (not res!592688)) b!1318809))

(assert (= (and b!1318809 res!592689) b!1318811))

(assert (= (and b!1318811 res!592692) b!1318805))

(assert (= (and b!1318805 res!592691) b!1318802))

(assert (= (and b!1318809 (not res!592690)) b!1318799))

(assert (= (and b!1318799 res!592694) b!1318812))

(assert (= (and b!1318812 (not res!592695)) b!1318801))

(assert (= (and b!1318801 (not res!592693)) b!1318808))

(assert (= (or b!1318807 b!1318811 b!1318812) bm!89546))

(assert (=> b!1318802 m!1473243))

(assert (=> b!1318801 m!1473245))

(assert (=> b!1318801 m!1473245))

(assert (=> b!1318801 m!1473247))

(assert (=> b!1318805 m!1473245))

(assert (=> b!1318805 m!1473245))

(assert (=> b!1318805 m!1473247))

(declare-fun m!1473741 () Bool)

(assert (=> b!1318804 m!1473741))

(assert (=> b!1318808 m!1473243))

(assert (=> d!372208 m!1473251))

(assert (=> d!372208 m!1473375))

(assert (=> bm!89546 m!1473251))

(assert (=> b!1318806 m!1473243))

(assert (=> b!1318806 m!1473243))

(declare-fun m!1473743 () Bool)

(assert (=> b!1318806 m!1473743))

(assert (=> b!1318806 m!1473245))

(assert (=> b!1318806 m!1473743))

(assert (=> b!1318806 m!1473245))

(declare-fun m!1473745 () Bool)

(assert (=> b!1318806 m!1473745))

(assert (=> b!1318545 d!372208))

(declare-fun d!372212 () Bool)

(assert (=> d!372212 (= (list!5034 lt!434766) (list!5039 (c!216255 lt!434766)))))

(declare-fun bs!330763 () Bool)

(assert (= bs!330763 d!372212))

(declare-fun m!1473747 () Bool)

(assert (=> bs!330763 m!1473747))

(assert (=> d!371788 d!372212))

(declare-fun d!372214 () Bool)

(declare-fun c!216463 () Bool)

(assert (=> d!372214 (= c!216463 ((_ is Cons!13357) (list!5035 (singletonSeq!892 t1!34))))))

(declare-fun e!845321 () List!13420)

(assert (=> d!372214 (= (printList!562 thiss!19762 (list!5035 (singletonSeq!892 t1!34))) e!845321)))

(declare-fun b!1318832 () Bool)

(assert (=> b!1318832 (= e!845321 (++!3406 (list!5034 (charsOf!1283 (h!18758 (list!5035 (singletonSeq!892 t1!34))))) (printList!562 thiss!19762 (t!118438 (list!5035 (singletonSeq!892 t1!34))))))))

(declare-fun b!1318833 () Bool)

(assert (=> b!1318833 (= e!845321 Nil!13354)))

(assert (= (and d!372214 c!216463) b!1318832))

(assert (= (and d!372214 (not c!216463)) b!1318833))

(declare-fun m!1473771 () Bool)

(assert (=> b!1318832 m!1473771))

(assert (=> b!1318832 m!1473771))

(declare-fun m!1473773 () Bool)

(assert (=> b!1318832 m!1473773))

(declare-fun m!1473775 () Bool)

(assert (=> b!1318832 m!1473775))

(assert (=> b!1318832 m!1473773))

(assert (=> b!1318832 m!1473775))

(declare-fun m!1473777 () Bool)

(assert (=> b!1318832 m!1473777))

(assert (=> d!371788 d!372214))

(declare-fun d!372228 () Bool)

(assert (=> d!372228 (= (list!5035 (singletonSeq!892 t1!34)) (list!5038 (c!216256 (singletonSeq!892 t1!34))))))

(declare-fun bs!330764 () Bool)

(assert (= bs!330764 d!372228))

(declare-fun m!1473779 () Bool)

(assert (=> bs!330764 m!1473779))

(assert (=> d!371788 d!372228))

(declare-fun d!372230 () Bool)

(declare-fun lt!435082 () BalanceConc!8724)

(declare-fun printListTailRec!234 (LexerInterface!2006 List!13423 List!13420) List!13420)

(declare-fun dropList!371 (BalanceConc!8726 Int) List!13423)

(assert (=> d!372230 (= (list!5034 lt!435082) (printListTailRec!234 thiss!19762 (dropList!371 (singletonSeq!892 t1!34) 0) (list!5034 (BalanceConc!8725 Empty!4392))))))

(declare-fun e!845362 () BalanceConc!8724)

(assert (=> d!372230 (= lt!435082 e!845362)))

(declare-fun c!216478 () Bool)

(assert (=> d!372230 (= c!216478 (>= 0 (size!10870 (singletonSeq!892 t1!34))))))

(declare-fun e!845363 () Bool)

(assert (=> d!372230 e!845363))

(declare-fun res!592736 () Bool)

(assert (=> d!372230 (=> (not res!592736) (not e!845363))))

(assert (=> d!372230 (= res!592736 (>= 0 0))))

(assert (=> d!372230 (= (printTailRec!544 thiss!19762 (singletonSeq!892 t1!34) 0 (BalanceConc!8725 Empty!4392)) lt!435082)))

(declare-fun b!1318897 () Bool)

(assert (=> b!1318897 (= e!845363 (<= 0 (size!10870 (singletonSeq!892 t1!34))))))

(declare-fun b!1318898 () Bool)

(assert (=> b!1318898 (= e!845362 (BalanceConc!8725 Empty!4392))))

(declare-fun b!1318899 () Bool)

(assert (=> b!1318899 (= e!845362 (printTailRec!544 thiss!19762 (singletonSeq!892 t1!34) (+ 0 1) (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (apply!3051 (singletonSeq!892 t1!34) 0)))))))

(declare-fun lt!435084 () List!13423)

(assert (=> b!1318899 (= lt!435084 (list!5035 (singletonSeq!892 t1!34)))))

(declare-fun lt!435088 () Unit!19422)

(declare-fun lemmaDropApply!425 (List!13423 Int) Unit!19422)

(assert (=> b!1318899 (= lt!435088 (lemmaDropApply!425 lt!435084 0))))

(declare-fun head!2285 (List!13423) Token!4284)

(declare-fun drop!664 (List!13423 Int) List!13423)

(declare-fun apply!3055 (List!13423 Int) Token!4284)

(assert (=> b!1318899 (= (head!2285 (drop!664 lt!435084 0)) (apply!3055 lt!435084 0))))

(declare-fun lt!435086 () Unit!19422)

(assert (=> b!1318899 (= lt!435086 lt!435088)))

(declare-fun lt!435087 () List!13423)

(assert (=> b!1318899 (= lt!435087 (list!5035 (singletonSeq!892 t1!34)))))

(declare-fun lt!435083 () Unit!19422)

(declare-fun lemmaDropTail!405 (List!13423 Int) Unit!19422)

(assert (=> b!1318899 (= lt!435083 (lemmaDropTail!405 lt!435087 0))))

(declare-fun tail!1891 (List!13423) List!13423)

(assert (=> b!1318899 (= (tail!1891 (drop!664 lt!435087 0)) (drop!664 lt!435087 (+ 0 1)))))

(declare-fun lt!435085 () Unit!19422)

(assert (=> b!1318899 (= lt!435085 lt!435083)))

(assert (= (and d!372230 res!592736) b!1318897))

(assert (= (and d!372230 c!216478) b!1318898))

(assert (= (and d!372230 (not c!216478)) b!1318899))

(assert (=> d!372230 m!1472399))

(declare-fun m!1473849 () Bool)

(assert (=> d!372230 m!1473849))

(assert (=> d!372230 m!1472399))

(declare-fun m!1473851 () Bool)

(assert (=> d!372230 m!1473851))

(declare-fun m!1473853 () Bool)

(assert (=> d!372230 m!1473853))

(assert (=> d!372230 m!1473849))

(assert (=> d!372230 m!1473853))

(declare-fun m!1473855 () Bool)

(assert (=> d!372230 m!1473855))

(declare-fun m!1473857 () Bool)

(assert (=> d!372230 m!1473857))

(assert (=> b!1318897 m!1472399))

(assert (=> b!1318897 m!1473851))

(declare-fun m!1473859 () Bool)

(assert (=> b!1318899 m!1473859))

(declare-fun m!1473861 () Bool)

(assert (=> b!1318899 m!1473861))

(declare-fun m!1473863 () Bool)

(assert (=> b!1318899 m!1473863))

(declare-fun m!1473865 () Bool)

(assert (=> b!1318899 m!1473865))

(declare-fun m!1473867 () Bool)

(assert (=> b!1318899 m!1473867))

(declare-fun m!1473869 () Bool)

(assert (=> b!1318899 m!1473869))

(declare-fun m!1473871 () Bool)

(assert (=> b!1318899 m!1473871))

(assert (=> b!1318899 m!1473869))

(declare-fun m!1473873 () Bool)

(assert (=> b!1318899 m!1473873))

(assert (=> b!1318899 m!1472399))

(assert (=> b!1318899 m!1473865))

(declare-fun m!1473875 () Bool)

(assert (=> b!1318899 m!1473875))

(declare-fun m!1473877 () Bool)

(assert (=> b!1318899 m!1473877))

(assert (=> b!1318899 m!1472399))

(declare-fun m!1473879 () Bool)

(assert (=> b!1318899 m!1473879))

(declare-fun m!1473881 () Bool)

(assert (=> b!1318899 m!1473881))

(assert (=> b!1318899 m!1473875))

(assert (=> b!1318899 m!1473867))

(assert (=> b!1318899 m!1473879))

(assert (=> b!1318899 m!1472399))

(assert (=> b!1318899 m!1472527))

(assert (=> d!371788 d!372230))

(declare-fun d!372276 () Bool)

(declare-fun lt!435092 () Bool)

(assert (=> d!372276 (= lt!435092 (select (content!1883 (t!118435 lt!434735)) lt!434714))))

(declare-fun e!845365 () Bool)

(assert (=> d!372276 (= lt!435092 e!845365)))

(declare-fun res!592737 () Bool)

(assert (=> d!372276 (=> (not res!592737) (not e!845365))))

(assert (=> d!372276 (= res!592737 ((_ is Cons!13354) (t!118435 lt!434735)))))

(assert (=> d!372276 (= (contains!2348 (t!118435 lt!434735) lt!434714) lt!435092)))

(declare-fun b!1318900 () Bool)

(declare-fun e!845364 () Bool)

(assert (=> b!1318900 (= e!845365 e!845364)))

(declare-fun res!592738 () Bool)

(assert (=> b!1318900 (=> res!592738 e!845364)))

(assert (=> b!1318900 (= res!592738 (= (h!18755 (t!118435 lt!434735)) lt!434714))))

(declare-fun b!1318901 () Bool)

(assert (=> b!1318901 (= e!845364 (contains!2348 (t!118435 (t!118435 lt!434735)) lt!434714))))

(assert (= (and d!372276 res!592737) b!1318900))

(assert (= (and b!1318900 (not res!592738)) b!1318901))

(declare-fun m!1473883 () Bool)

(assert (=> d!372276 m!1473883))

(declare-fun m!1473887 () Bool)

(assert (=> d!372276 m!1473887))

(declare-fun m!1473889 () Bool)

(assert (=> b!1318901 m!1473889))

(assert (=> b!1318326 d!372276))

(declare-fun d!372280 () Bool)

(assert (=> d!372280 (= (head!2280 rules!2550) (h!18757 rules!2550))))

(assert (=> b!1317902 d!372280))

(declare-fun bs!330786 () Bool)

(declare-fun d!372284 () Bool)

(assert (= bs!330786 (and d!372284 b!1317731)))

(declare-fun lambda!53788 () Int)

(assert (=> bs!330786 (not (= lambda!53788 lambda!53722))))

(declare-fun bs!330787 () Bool)

(assert (= bs!330787 (and d!372284 b!1317751)))

(assert (=> bs!330787 (not (= lambda!53788 lambda!53723))))

(declare-fun bs!330788 () Bool)

(assert (= bs!330788 (and d!372284 d!371856)))

(assert (=> bs!330788 (= (= lambda!53738 lambda!53722) (= lambda!53788 lambda!53735))))

(declare-fun bs!330789 () Bool)

(assert (= bs!330789 (and d!372284 d!371858)))

(assert (=> bs!330789 (not (= lambda!53788 lambda!53738))))

(assert (=> d!372284 true))

(assert (=> d!372284 (< (dynLambda!5844 order!8051 lambda!53738) (dynLambda!5844 order!8051 lambda!53788))))

(assert (=> d!372284 (= (exists!324 rules!2550 lambda!53738) (not (forall!3296 rules!2550 lambda!53788)))))

(declare-fun bs!330790 () Bool)

(assert (= bs!330790 d!372284))

(declare-fun m!1473893 () Bool)

(assert (=> bs!330790 m!1473893))

(assert (=> d!371858 d!372284))

(declare-fun bs!330792 () Bool)

(declare-fun d!372286 () Bool)

(assert (= bs!330792 (and d!372286 b!1317731)))

(declare-fun lambda!53791 () Int)

(assert (=> bs!330792 (not (= lambda!53791 lambda!53722))))

(declare-fun bs!330793 () Bool)

(assert (= bs!330793 (and d!372286 b!1317751)))

(assert (=> bs!330793 (not (= lambda!53791 lambda!53723))))

(declare-fun bs!330794 () Bool)

(assert (= bs!330794 (and d!372286 d!372284)))

(assert (=> bs!330794 (not (= lambda!53791 lambda!53788))))

(declare-fun bs!330795 () Bool)

(assert (= bs!330795 (and d!372286 d!371858)))

(assert (=> bs!330795 (= lambda!53791 lambda!53738)))

(declare-fun bs!330796 () Bool)

(assert (= bs!330796 (and d!372286 d!371856)))

(assert (=> bs!330796 (not (= lambda!53791 lambda!53735))))

(assert (=> d!372286 true))

(assert (=> d!372286 true))

(assert (=> d!372286 (< (dynLambda!5845 order!8053 lambda!53720) (dynLambda!5844 order!8051 lambda!53791))))

(assert (=> d!372286 (exists!324 rules!2550 lambda!53791)))

(assert (=> d!372286 true))

(declare-fun _$24!67 () Unit!19422)

(assert (=> d!372286 (= (choose!8060 rules!2550 lambda!53720 lt!434717) _$24!67)))

(declare-fun bs!330797 () Bool)

(assert (= bs!330797 d!372286))

(declare-fun m!1473905 () Bool)

(assert (=> bs!330797 m!1473905))

(assert (=> d!371858 d!372286))

(assert (=> d!371858 d!371886))

(assert (=> d!371858 d!371890))

(declare-fun d!372292 () Bool)

(assert (=> d!372292 (= (get!4260 lt!434901) (v!21135 lt!434901))))

(assert (=> b!1318209 d!372292))

(declare-fun d!372294 () Bool)

(declare-fun dynLambda!5856 (Int BalanceConc!8724) TokenValue!2401)

(assert (=> d!372294 (= (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434901))))) (dynLambda!5856 (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun b_lambda!38377 () Bool)

(assert (=> (not b_lambda!38377) (not d!372294)))

(declare-fun tb!70057 () Bool)

(declare-fun t!118516 () Bool)

(assert (=> (and b!1317739 (= (toValue!3538 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118516) tb!70057))

(declare-fun result!85016 () Bool)

(assert (=> tb!70057 (= result!85016 (inv!21 (dynLambda!5856 (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun m!1473907 () Bool)

(assert (=> tb!70057 m!1473907))

(assert (=> d!372294 t!118516))

(declare-fun b_and!88123 () Bool)

(assert (= b_and!88023 (and (=> t!118516 result!85016) b_and!88123)))

(declare-fun t!118518 () Bool)

(declare-fun tb!70059 () Bool)

(assert (=> (and b!1317747 (= (toValue!3538 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118518) tb!70059))

(declare-fun result!85020 () Bool)

(assert (= result!85020 result!85016))

(assert (=> d!372294 t!118518))

(declare-fun b_and!88125 () Bool)

(assert (= b_and!88027 (and (=> t!118518 result!85020) b_and!88125)))

(declare-fun t!118520 () Bool)

(declare-fun tb!70061 () Bool)

(assert (=> (and b!1317736 (= (toValue!3538 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118520) tb!70061))

(declare-fun result!85022 () Bool)

(assert (= result!85022 result!85016))

(assert (=> d!372294 t!118520))

(declare-fun b_and!88127 () Bool)

(assert (= b_and!88031 (and (=> t!118520 result!85022) b_and!88127)))

(declare-fun tb!70063 () Bool)

(declare-fun t!118522 () Bool)

(assert (=> (and b!1318543 (= (toValue!3538 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118522) tb!70063))

(declare-fun result!85024 () Bool)

(assert (= result!85024 result!85016))

(assert (=> d!372294 t!118522))

(declare-fun b_and!88129 () Bool)

(assert (= b_and!88087 (and (=> t!118522 result!85024) b_and!88129)))

(assert (=> d!372294 m!1472921))

(declare-fun m!1473909 () Bool)

(assert (=> d!372294 m!1473909))

(assert (=> b!1318209 d!372294))

(declare-fun d!372296 () Bool)

(declare-fun fromListB!708 (List!13420) BalanceConc!8724)

(assert (=> d!372296 (= (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434901)))) (fromListB!708 (originalCharacters!3173 (_1!7377 (get!4260 lt!434901)))))))

(declare-fun bs!330798 () Bool)

(assert (= bs!330798 d!372296))

(declare-fun m!1473911 () Bool)

(assert (=> bs!330798 m!1473911))

(assert (=> b!1318209 d!372296))

(declare-fun b!1318912 () Bool)

(declare-fun e!845373 () Bool)

(declare-fun e!845374 () Bool)

(assert (=> b!1318912 (= e!845373 e!845374)))

(declare-fun res!592745 () Bool)

(assert (=> b!1318912 (=> (not res!592745) (not e!845374))))

(declare-fun lt!435093 () Bool)

(assert (=> b!1318912 (= res!592745 (not lt!435093))))

(declare-fun bm!89557 () Bool)

(declare-fun call!89562 () Bool)

(assert (=> bm!89557 (= call!89562 (isEmpty!7930 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun d!372298 () Bool)

(declare-fun e!845378 () Bool)

(assert (=> d!372298 e!845378))

(declare-fun c!216484 () Bool)

(assert (=> d!372298 (= c!216484 ((_ is EmptyExpr!3625) (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun e!845376 () Bool)

(assert (=> d!372298 (= lt!435093 e!845376)))

(declare-fun c!216483 () Bool)

(assert (=> d!372298 (= c!216483 (isEmpty!7930 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))))))

(assert (=> d!372298 (validRegex!1551 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))))

(assert (=> d!372298 (= (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) lt!435093)))

(declare-fun b!1318913 () Bool)

(declare-fun res!592739 () Bool)

(assert (=> b!1318913 (=> res!592739 e!845373)))

(assert (=> b!1318913 (= res!592739 (not ((_ is ElementMatch!3625) (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun e!845377 () Bool)

(assert (=> b!1318913 (= e!845377 e!845373)))

(declare-fun b!1318914 () Bool)

(declare-fun res!592744 () Bool)

(declare-fun e!845372 () Bool)

(assert (=> b!1318914 (=> res!592744 e!845372)))

(assert (=> b!1318914 (= res!592744 (not (isEmpty!7930 (tail!1890 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))))))))

(declare-fun b!1318915 () Bool)

(declare-fun e!845375 () Bool)

(assert (=> b!1318915 (= e!845375 (= (head!2281 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) (c!216254 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun b!1318916 () Bool)

(assert (=> b!1318916 (= e!845378 e!845377)))

(declare-fun c!216482 () Bool)

(assert (=> b!1318916 (= c!216482 ((_ is EmptyLang!3625) (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun b!1318917 () Bool)

(assert (=> b!1318917 (= e!845376 (nullable!1149 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun b!1318918 () Bool)

(declare-fun res!592742 () Bool)

(assert (=> b!1318918 (=> (not res!592742) (not e!845375))))

(assert (=> b!1318918 (= res!592742 (isEmpty!7930 (tail!1890 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun b!1318919 () Bool)

(assert (=> b!1318919 (= e!845376 (matchR!1627 (derivativeStep!901 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))) (head!2281 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))))) (tail!1890 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun b!1318920 () Bool)

(assert (=> b!1318920 (= e!845378 (= lt!435093 call!89562))))

(declare-fun b!1318921 () Bool)

(assert (=> b!1318921 (= e!845372 (not (= (head!2281 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) (c!216254 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))))))))

(declare-fun b!1318922 () Bool)

(declare-fun res!592741 () Bool)

(assert (=> b!1318922 (=> res!592741 e!845373)))

(assert (=> b!1318922 (= res!592741 e!845375)))

(declare-fun res!592740 () Bool)

(assert (=> b!1318922 (=> (not res!592740) (not e!845375))))

(assert (=> b!1318922 (= res!592740 lt!435093)))

(declare-fun b!1318923 () Bool)

(assert (=> b!1318923 (= e!845377 (not lt!435093))))

(declare-fun b!1318924 () Bool)

(declare-fun res!592743 () Bool)

(assert (=> b!1318924 (=> (not res!592743) (not e!845375))))

(assert (=> b!1318924 (= res!592743 (not call!89562))))

(declare-fun b!1318925 () Bool)

(assert (=> b!1318925 (= e!845374 e!845372)))

(declare-fun res!592746 () Bool)

(assert (=> b!1318925 (=> res!592746 e!845372)))

(assert (=> b!1318925 (= res!592746 call!89562)))

(assert (= (and d!372298 c!216483) b!1318917))

(assert (= (and d!372298 (not c!216483)) b!1318919))

(assert (= (and d!372298 c!216484) b!1318920))

(assert (= (and d!372298 (not c!216484)) b!1318916))

(assert (= (and b!1318916 c!216482) b!1318923))

(assert (= (and b!1318916 (not c!216482)) b!1318913))

(assert (= (and b!1318913 (not res!592739)) b!1318922))

(assert (= (and b!1318922 res!592740) b!1318924))

(assert (= (and b!1318924 res!592743) b!1318918))

(assert (= (and b!1318918 res!592742) b!1318915))

(assert (= (and b!1318922 (not res!592741)) b!1318912))

(assert (= (and b!1318912 res!592745) b!1318925))

(assert (= (and b!1318925 (not res!592746)) b!1318914))

(assert (= (and b!1318914 (not res!592744)) b!1318921))

(assert (= (or b!1318920 b!1318924 b!1318925) bm!89557))

(assert (=> b!1318915 m!1473289))

(declare-fun m!1473913 () Bool)

(assert (=> b!1318915 m!1473913))

(assert (=> b!1318914 m!1473289))

(declare-fun m!1473915 () Bool)

(assert (=> b!1318914 m!1473915))

(assert (=> b!1318914 m!1473915))

(declare-fun m!1473917 () Bool)

(assert (=> b!1318914 m!1473917))

(assert (=> b!1318918 m!1473289))

(assert (=> b!1318918 m!1473915))

(assert (=> b!1318918 m!1473915))

(assert (=> b!1318918 m!1473917))

(declare-fun m!1473919 () Bool)

(assert (=> b!1318917 m!1473919))

(assert (=> b!1318921 m!1473289))

(assert (=> b!1318921 m!1473913))

(assert (=> d!372298 m!1473289))

(declare-fun m!1473921 () Bool)

(assert (=> d!372298 m!1473921))

(declare-fun m!1473923 () Bool)

(assert (=> d!372298 m!1473923))

(assert (=> bm!89557 m!1473289))

(assert (=> bm!89557 m!1473921))

(assert (=> b!1318919 m!1473289))

(assert (=> b!1318919 m!1473913))

(assert (=> b!1318919 m!1473913))

(declare-fun m!1473925 () Bool)

(assert (=> b!1318919 m!1473925))

(assert (=> b!1318919 m!1473289))

(assert (=> b!1318919 m!1473915))

(assert (=> b!1318919 m!1473925))

(assert (=> b!1318919 m!1473915))

(declare-fun m!1473927 () Bool)

(assert (=> b!1318919 m!1473927))

(assert (=> b!1318473 d!372298))

(declare-fun d!372300 () Bool)

(assert (=> d!372300 (= (get!4260 lt!434973) (v!21135 lt!434973))))

(assert (=> b!1318473 d!372300))

(declare-fun d!372302 () Bool)

(assert (=> d!372302 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))) (list!5039 (c!216255 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun bs!330799 () Bool)

(assert (= bs!330799 d!372302))

(declare-fun m!1473929 () Bool)

(assert (=> bs!330799 m!1473929))

(assert (=> b!1318473 d!372302))

(declare-fun d!372304 () Bool)

(declare-fun lt!435094 () BalanceConc!8724)

(assert (=> d!372304 (= (list!5034 lt!435094) (originalCharacters!3173 (_1!7377 (get!4260 lt!434973))))))

(assert (=> d!372304 (= lt!435094 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))) (value!75496 (_1!7377 (get!4260 lt!434973)))))))

(assert (=> d!372304 (= (charsOf!1283 (_1!7377 (get!4260 lt!434973))) lt!435094)))

(declare-fun b_lambda!38379 () Bool)

(assert (=> (not b_lambda!38379) (not d!372304)))

(declare-fun t!118524 () Bool)

(declare-fun tb!70065 () Bool)

(assert (=> (and b!1317739 (= (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118524) tb!70065))

(declare-fun b!1318926 () Bool)

(declare-fun e!845379 () Bool)

(declare-fun tp!383268 () Bool)

(assert (=> b!1318926 (= e!845379 (and (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))) (value!75496 (_1!7377 (get!4260 lt!434973)))))) tp!383268))))

(declare-fun result!85026 () Bool)

(assert (=> tb!70065 (= result!85026 (and (inv!17736 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))) (value!75496 (_1!7377 (get!4260 lt!434973))))) e!845379))))

(assert (= tb!70065 b!1318926))

(declare-fun m!1473931 () Bool)

(assert (=> b!1318926 m!1473931))

(declare-fun m!1473933 () Bool)

(assert (=> tb!70065 m!1473933))

(assert (=> d!372304 t!118524))

(declare-fun b_and!88131 () Bool)

(assert (= b_and!88081 (and (=> t!118524 result!85026) b_and!88131)))

(declare-fun tb!70067 () Bool)

(declare-fun t!118526 () Bool)

(assert (=> (and b!1317747 (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118526) tb!70067))

(declare-fun result!85028 () Bool)

(assert (= result!85028 result!85026))

(assert (=> d!372304 t!118526))

(declare-fun b_and!88133 () Bool)

(assert (= b_and!88083 (and (=> t!118526 result!85028) b_and!88133)))

(declare-fun t!118528 () Bool)

(declare-fun tb!70069 () Bool)

(assert (=> (and b!1317736 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118528) tb!70069))

(declare-fun result!85030 () Bool)

(assert (= result!85030 result!85026))

(assert (=> d!372304 t!118528))

(declare-fun b_and!88135 () Bool)

(assert (= b_and!88085 (and (=> t!118528 result!85030) b_and!88135)))

(declare-fun tb!70071 () Bool)

(declare-fun t!118530 () Bool)

(assert (=> (and b!1318543 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118530) tb!70071))

(declare-fun result!85032 () Bool)

(assert (= result!85032 result!85026))

(assert (=> d!372304 t!118530))

(declare-fun b_and!88137 () Bool)

(assert (= b_and!88089 (and (=> t!118530 result!85032) b_and!88137)))

(declare-fun m!1473935 () Bool)

(assert (=> d!372304 m!1473935))

(declare-fun m!1473937 () Bool)

(assert (=> d!372304 m!1473937))

(assert (=> b!1318473 d!372304))

(declare-fun d!372306 () Bool)

(declare-fun res!592749 () List!13420)

(assert (=> d!372306 (dynLambda!5852 lambda!53719 res!592749)))

(declare-fun e!845382 () Bool)

(assert (=> d!372306 e!845382))

(assert (=> d!372306 (= (choose!8068 lambda!53719) res!592749)))

(declare-fun b!1318929 () Bool)

(declare-fun tp!383271 () Bool)

(assert (=> b!1318929 (= e!845382 (and tp_is_empty!6631 tp!383271))))

(assert (= (and d!372306 ((_ is Cons!13354) res!592749)) b!1318929))

(declare-fun b_lambda!38381 () Bool)

(assert (=> (not b_lambda!38381) (not d!372306)))

(declare-fun m!1473939 () Bool)

(assert (=> d!372306 m!1473939))

(assert (=> d!372042 d!372306))

(assert (=> d!372042 d!372034))

(declare-fun d!372308 () Bool)

(declare-fun lt!435095 () Bool)

(assert (=> d!372308 (= lt!435095 (select (content!1881 (map!2933 rules!2550 lambda!53720)) lt!434883))))

(declare-fun e!845383 () Bool)

(assert (=> d!372308 (= lt!435095 e!845383)))

(declare-fun res!592750 () Bool)

(assert (=> d!372308 (=> (not res!592750) (not e!845383))))

(assert (=> d!372308 (= res!592750 ((_ is Cons!13358) (map!2933 rules!2550 lambda!53720)))))

(assert (=> d!372308 (= (contains!2347 (map!2933 rules!2550 lambda!53720) lt!434883) lt!435095)))

(declare-fun b!1318930 () Bool)

(declare-fun e!845384 () Bool)

(assert (=> b!1318930 (= e!845383 e!845384)))

(declare-fun res!592751 () Bool)

(assert (=> b!1318930 (=> res!592751 e!845384)))

(assert (=> b!1318930 (= res!592751 (= (h!18759 (map!2933 rules!2550 lambda!53720)) lt!434883))))

(declare-fun b!1318931 () Bool)

(assert (=> b!1318931 (= e!845384 (contains!2347 (t!118439 (map!2933 rules!2550 lambda!53720)) lt!434883))))

(assert (= (and d!372308 res!592750) b!1318930))

(assert (= (and b!1318930 (not res!592751)) b!1318931))

(assert (=> d!372308 m!1472297))

(assert (=> d!372308 m!1472853))

(declare-fun m!1473941 () Bool)

(assert (=> d!372308 m!1473941))

(declare-fun m!1473943 () Bool)

(assert (=> b!1318931 m!1473943))

(assert (=> b!1318171 d!372308))

(declare-fun b!1318940 () Bool)

(declare-fun e!845389 () List!13420)

(assert (=> b!1318940 (= e!845389 Nil!13354)))

(declare-fun b!1318942 () Bool)

(declare-fun e!845390 () List!13420)

(declare-fun list!5042 (IArray!8789) List!13420)

(assert (=> b!1318942 (= e!845390 (list!5042 (xs!7107 (c!216255 lt!434725))))))

(declare-fun b!1318943 () Bool)

(assert (=> b!1318943 (= e!845390 (++!3406 (list!5039 (left!11477 (c!216255 lt!434725))) (list!5039 (right!11807 (c!216255 lt!434725)))))))

(declare-fun d!372310 () Bool)

(declare-fun c!216489 () Bool)

(assert (=> d!372310 (= c!216489 ((_ is Empty!4392) (c!216255 lt!434725)))))

(assert (=> d!372310 (= (list!5039 (c!216255 lt!434725)) e!845389)))

(declare-fun b!1318941 () Bool)

(assert (=> b!1318941 (= e!845389 e!845390)))

(declare-fun c!216490 () Bool)

(assert (=> b!1318941 (= c!216490 ((_ is Leaf!6744) (c!216255 lt!434725)))))

(assert (= (and d!372310 c!216489) b!1318940))

(assert (= (and d!372310 (not c!216489)) b!1318941))

(assert (= (and b!1318941 c!216490) b!1318942))

(assert (= (and b!1318941 (not c!216490)) b!1318943))

(declare-fun m!1473945 () Bool)

(assert (=> b!1318942 m!1473945))

(declare-fun m!1473947 () Bool)

(assert (=> b!1318943 m!1473947))

(declare-fun m!1473949 () Bool)

(assert (=> b!1318943 m!1473949))

(assert (=> b!1318943 m!1473947))

(assert (=> b!1318943 m!1473949))

(declare-fun m!1473951 () Bool)

(assert (=> b!1318943 m!1473951))

(assert (=> d!372018 d!372310))

(declare-fun d!372312 () Bool)

(assert (=> d!372312 (= (isEmpty!7930 lt!434732) ((_ is Nil!13354) lt!434732))))

(assert (=> bm!89513 d!372312))

(declare-fun d!372314 () Bool)

(assert (=> d!372314 (= (isDefined!2179 lt!434901) (not (isEmpty!7935 lt!434901)))))

(declare-fun bs!330800 () Bool)

(assert (= bs!330800 d!372314))

(assert (=> bs!330800 m!1472929))

(assert (=> b!1318206 d!372314))

(declare-fun d!372316 () Bool)

(declare-fun lt!435098 () Int)

(assert (=> d!372316 (>= lt!435098 0)))

(declare-fun e!845393 () Int)

(assert (=> d!372316 (= lt!435098 e!845393)))

(declare-fun c!216493 () Bool)

(assert (=> d!372316 (= c!216493 ((_ is Nil!13354) (list!5034 lt!434725)))))

(assert (=> d!372316 (= (size!10874 (list!5034 lt!434725)) lt!435098)))

(declare-fun b!1318948 () Bool)

(assert (=> b!1318948 (= e!845393 0)))

(declare-fun b!1318949 () Bool)

(assert (=> b!1318949 (= e!845393 (+ 1 (size!10874 (t!118435 (list!5034 lt!434725)))))))

(assert (= (and d!372316 c!216493) b!1318948))

(assert (= (and d!372316 (not c!216493)) b!1318949))

(declare-fun m!1473953 () Bool)

(assert (=> b!1318949 m!1473953))

(assert (=> d!371872 d!372316))

(assert (=> d!371872 d!372018))

(declare-fun d!372318 () Bool)

(declare-fun lt!435115 () Int)

(assert (=> d!372318 (= lt!435115 (size!10874 (list!5039 (c!216255 lt!434725))))))

(assert (=> d!372318 (= lt!435115 (ite ((_ is Empty!4392) (c!216255 lt!434725)) 0 (ite ((_ is Leaf!6744) (c!216255 lt!434725)) (csize!9015 (c!216255 lt!434725)) (csize!9014 (c!216255 lt!434725)))))))

(assert (=> d!372318 (= (size!10877 (c!216255 lt!434725)) lt!435115)))

(declare-fun bs!330801 () Bool)

(assert (= bs!330801 d!372318))

(assert (=> bs!330801 m!1473313))

(assert (=> bs!330801 m!1473313))

(declare-fun m!1473955 () Bool)

(assert (=> bs!330801 m!1473955))

(assert (=> d!371872 d!372318))

(declare-fun d!372320 () Bool)

(assert (=> d!372320 (= (list!5034 lt!434868) (list!5039 (c!216255 lt!434868)))))

(declare-fun bs!330802 () Bool)

(assert (= bs!330802 d!372320))

(declare-fun m!1473957 () Bool)

(assert (=> bs!330802 m!1473957))

(assert (=> d!371874 d!372320))

(declare-fun d!372322 () Bool)

(assert (=> d!372322 (dynLambda!5838 lambda!53723 (rule!4054 t1!34))))

(assert (=> d!372322 true))

(declare-fun _$7!711 () Unit!19422)

(assert (=> d!372322 (= (choose!8059 rules!2550 lambda!53723 (rule!4054 t1!34)) _$7!711)))

(declare-fun b_lambda!38383 () Bool)

(assert (=> (not b_lambda!38383) (not d!372322)))

(declare-fun bs!330803 () Bool)

(assert (= bs!330803 d!372322))

(assert (=> bs!330803 m!1472723))

(assert (=> d!371850 d!372322))

(declare-fun d!372324 () Bool)

(declare-fun res!592759 () Bool)

(declare-fun e!845404 () Bool)

(assert (=> d!372324 (=> res!592759 e!845404)))

(assert (=> d!372324 (= res!592759 ((_ is Nil!13356) rules!2550))))

(assert (=> d!372324 (= (forall!3296 rules!2550 lambda!53723) e!845404)))

(declare-fun b!1318963 () Bool)

(declare-fun e!845405 () Bool)

(assert (=> b!1318963 (= e!845404 e!845405)))

(declare-fun res!592760 () Bool)

(assert (=> b!1318963 (=> (not res!592760) (not e!845405))))

(assert (=> b!1318963 (= res!592760 (dynLambda!5838 lambda!53723 (h!18757 rules!2550)))))

(declare-fun b!1318964 () Bool)

(assert (=> b!1318964 (= e!845405 (forall!3296 (t!118437 rules!2550) lambda!53723))))

(assert (= (and d!372324 (not res!592759)) b!1318963))

(assert (= (and b!1318963 res!592760) b!1318964))

(declare-fun b_lambda!38385 () Bool)

(assert (=> (not b_lambda!38385) (not b!1318963)))

(declare-fun m!1473961 () Bool)

(assert (=> b!1318963 m!1473961))

(declare-fun m!1473965 () Bool)

(assert (=> b!1318964 m!1473965))

(assert (=> d!371850 d!372324))

(declare-fun b!1318965 () Bool)

(declare-fun e!845406 () List!13420)

(assert (=> b!1318965 (= e!845406 Nil!13354)))

(declare-fun b!1318967 () Bool)

(declare-fun e!845407 () List!13420)

(assert (=> b!1318967 (= e!845407 (list!5042 (xs!7107 (c!216255 lt!434726))))))

(declare-fun b!1318968 () Bool)

(assert (=> b!1318968 (= e!845407 (++!3406 (list!5039 (left!11477 (c!216255 lt!434726))) (list!5039 (right!11807 (c!216255 lt!434726)))))))

(declare-fun d!372326 () Bool)

(declare-fun c!216497 () Bool)

(assert (=> d!372326 (= c!216497 ((_ is Empty!4392) (c!216255 lt!434726)))))

(assert (=> d!372326 (= (list!5039 (c!216255 lt!434726)) e!845406)))

(declare-fun b!1318966 () Bool)

(assert (=> b!1318966 (= e!845406 e!845407)))

(declare-fun c!216498 () Bool)

(assert (=> b!1318966 (= c!216498 ((_ is Leaf!6744) (c!216255 lt!434726)))))

(assert (= (and d!372326 c!216497) b!1318965))

(assert (= (and d!372326 (not c!216497)) b!1318966))

(assert (= (and b!1318966 c!216498) b!1318967))

(assert (= (and b!1318966 (not c!216498)) b!1318968))

(declare-fun m!1473975 () Bool)

(assert (=> b!1318967 m!1473975))

(declare-fun m!1473979 () Bool)

(assert (=> b!1318968 m!1473979))

(declare-fun m!1473981 () Bool)

(assert (=> b!1318968 m!1473981))

(assert (=> b!1318968 m!1473979))

(assert (=> b!1318968 m!1473981))

(declare-fun m!1473985 () Bool)

(assert (=> b!1318968 m!1473985))

(assert (=> d!371868 d!372326))

(assert (=> b!1318476 d!372302))

(assert (=> b!1318476 d!372304))

(assert (=> b!1318476 d!372300))

(declare-fun d!372328 () Bool)

(declare-fun lt!435130 () Bool)

(assert (=> d!372328 (= lt!435130 (isEmpty!7932 (list!5035 (_1!7375 lt!434821))))))

(declare-fun isEmpty!7937 (Conc!4393) Bool)

(assert (=> d!372328 (= lt!435130 (isEmpty!7937 (c!216256 (_1!7375 lt!434821))))))

(assert (=> d!372328 (= (isEmpty!7928 (_1!7375 lt!434821)) lt!435130)))

(declare-fun bs!330804 () Bool)

(assert (= bs!330804 d!372328))

(assert (=> bs!330804 m!1472687))

(assert (=> bs!330804 m!1472687))

(declare-fun m!1474005 () Bool)

(assert (=> bs!330804 m!1474005))

(declare-fun m!1474007 () Bool)

(assert (=> bs!330804 m!1474007))

(assert (=> b!1318023 d!372328))

(declare-fun d!372332 () Bool)

(assert (=> d!372332 (= (isEmpty!7930 lt!434735) ((_ is Nil!13354) lt!434735))))

(assert (=> d!372008 d!372332))

(declare-fun bm!89558 () Bool)

(declare-fun call!89563 () Bool)

(declare-fun call!89565 () Bool)

(assert (=> bm!89558 (= call!89563 call!89565)))

(declare-fun b!1318978 () Bool)

(declare-fun e!845416 () Bool)

(assert (=> b!1318978 (= e!845416 call!89563)))

(declare-fun b!1318979 () Bool)

(declare-fun e!845414 () Bool)

(declare-fun e!845417 () Bool)

(assert (=> b!1318979 (= e!845414 e!845417)))

(declare-fun res!592770 () Bool)

(assert (=> b!1318979 (= res!592770 (not (nullable!1149 (reg!3954 lt!434731))))))

(assert (=> b!1318979 (=> (not res!592770) (not e!845417))))

(declare-fun b!1318980 () Bool)

(declare-fun res!592769 () Bool)

(assert (=> b!1318980 (=> (not res!592769) (not e!845416))))

(declare-fun call!89564 () Bool)

(assert (=> b!1318980 (= res!592769 call!89564)))

(declare-fun e!845415 () Bool)

(assert (=> b!1318980 (= e!845415 e!845416)))

(declare-fun b!1318981 () Bool)

(declare-fun res!592772 () Bool)

(declare-fun e!845412 () Bool)

(assert (=> b!1318981 (=> res!592772 e!845412)))

(assert (=> b!1318981 (= res!592772 (not ((_ is Concat!6026) lt!434731)))))

(assert (=> b!1318981 (= e!845415 e!845412)))

(declare-fun b!1318982 () Bool)

(declare-fun e!845418 () Bool)

(assert (=> b!1318982 (= e!845418 call!89563)))

(declare-fun c!216501 () Bool)

(declare-fun c!216500 () Bool)

(declare-fun bm!89560 () Bool)

(assert (=> bm!89560 (= call!89565 (validRegex!1551 (ite c!216500 (reg!3954 lt!434731) (ite c!216501 (regTwo!7763 lt!434731) (regTwo!7762 lt!434731)))))))

(declare-fun b!1318983 () Bool)

(declare-fun e!845413 () Bool)

(assert (=> b!1318983 (= e!845413 e!845414)))

(assert (=> b!1318983 (= c!216500 ((_ is Star!3625) lt!434731))))

(declare-fun b!1318984 () Bool)

(assert (=> b!1318984 (= e!845417 call!89565)))

(declare-fun b!1318985 () Bool)

(assert (=> b!1318985 (= e!845412 e!845418)))

(declare-fun res!592771 () Bool)

(assert (=> b!1318985 (=> (not res!592771) (not e!845418))))

(assert (=> b!1318985 (= res!592771 call!89564)))

(declare-fun b!1318986 () Bool)

(assert (=> b!1318986 (= e!845414 e!845415)))

(assert (=> b!1318986 (= c!216501 ((_ is Union!3625) lt!434731))))

(declare-fun bm!89559 () Bool)

(assert (=> bm!89559 (= call!89564 (validRegex!1551 (ite c!216501 (regOne!7763 lt!434731) (regOne!7762 lt!434731))))))

(declare-fun d!372334 () Bool)

(declare-fun res!592768 () Bool)

(assert (=> d!372334 (=> res!592768 e!845413)))

(assert (=> d!372334 (= res!592768 ((_ is ElementMatch!3625) lt!434731))))

(assert (=> d!372334 (= (validRegex!1551 lt!434731) e!845413)))

(assert (= (and d!372334 (not res!592768)) b!1318983))

(assert (= (and b!1318983 c!216500) b!1318979))

(assert (= (and b!1318983 (not c!216500)) b!1318986))

(assert (= (and b!1318979 res!592770) b!1318984))

(assert (= (and b!1318986 c!216501) b!1318980))

(assert (= (and b!1318986 (not c!216501)) b!1318981))

(assert (= (and b!1318980 res!592769) b!1318978))

(assert (= (and b!1318981 (not res!592772)) b!1318985))

(assert (= (and b!1318985 res!592771) b!1318982))

(assert (= (or b!1318980 b!1318985) bm!89559))

(assert (= (or b!1318978 b!1318982) bm!89558))

(assert (= (or b!1318984 bm!89558) bm!89560))

(declare-fun m!1474025 () Bool)

(assert (=> b!1318979 m!1474025))

(declare-fun m!1474031 () Bool)

(assert (=> bm!89560 m!1474031))

(declare-fun m!1474035 () Bool)

(assert (=> bm!89559 m!1474035))

(assert (=> d!372008 d!372334))

(declare-fun d!372336 () Bool)

(declare-fun lt!435131 () Int)

(assert (=> d!372336 (>= lt!435131 0)))

(declare-fun e!845419 () Int)

(assert (=> d!372336 (= lt!435131 e!845419)))

(declare-fun c!216502 () Bool)

(assert (=> d!372336 (= c!216502 ((_ is Nil!13354) lt!434939))))

(assert (=> d!372336 (= (size!10874 lt!434939) lt!435131)))

(declare-fun b!1318987 () Bool)

(assert (=> b!1318987 (= e!845419 0)))

(declare-fun b!1318988 () Bool)

(assert (=> b!1318988 (= e!845419 (+ 1 (size!10874 (t!118435 lt!434939))))))

(assert (= (and d!372336 c!216502) b!1318987))

(assert (= (and d!372336 (not c!216502)) b!1318988))

(declare-fun m!1474045 () Bool)

(assert (=> b!1318988 m!1474045))

(assert (=> b!1318289 d!372336))

(declare-fun d!372338 () Bool)

(declare-fun lt!435132 () Int)

(assert (=> d!372338 (>= lt!435132 0)))

(declare-fun e!845420 () Int)

(assert (=> d!372338 (= lt!435132 e!845420)))

(declare-fun c!216503 () Bool)

(assert (=> d!372338 (= c!216503 ((_ is Nil!13354) lt!434732))))

(assert (=> d!372338 (= (size!10874 lt!434732) lt!435132)))

(declare-fun b!1318989 () Bool)

(assert (=> b!1318989 (= e!845420 0)))

(declare-fun b!1318990 () Bool)

(assert (=> b!1318990 (= e!845420 (+ 1 (size!10874 (t!118435 lt!434732))))))

(assert (= (and d!372338 c!216503) b!1318989))

(assert (= (and d!372338 (not c!216503)) b!1318990))

(declare-fun m!1474047 () Bool)

(assert (=> b!1318990 m!1474047))

(assert (=> b!1318289 d!372338))

(declare-fun d!372340 () Bool)

(declare-fun lt!435133 () Int)

(assert (=> d!372340 (>= lt!435133 0)))

(declare-fun e!845421 () Int)

(assert (=> d!372340 (= lt!435133 e!845421)))

(declare-fun c!216504 () Bool)

(assert (=> d!372340 (= c!216504 ((_ is Nil!13354) (Cons!13354 lt!434730 Nil!13354)))))

(assert (=> d!372340 (= (size!10874 (Cons!13354 lt!434730 Nil!13354)) lt!435133)))

(declare-fun b!1318991 () Bool)

(assert (=> b!1318991 (= e!845421 0)))

(declare-fun b!1318992 () Bool)

(assert (=> b!1318992 (= e!845421 (+ 1 (size!10874 (t!118435 (Cons!13354 lt!434730 Nil!13354)))))))

(assert (= (and d!372340 c!216504) b!1318991))

(assert (= (and d!372340 (not c!216504)) b!1318992))

(declare-fun m!1474057 () Bool)

(assert (=> b!1318992 m!1474057))

(assert (=> b!1318289 d!372340))

(declare-fun d!372342 () Bool)

(declare-fun lt!435134 () Int)

(assert (=> d!372342 (>= lt!435134 0)))

(declare-fun e!845422 () Int)

(assert (=> d!372342 (= lt!435134 e!845422)))

(declare-fun c!216505 () Bool)

(assert (=> d!372342 (= c!216505 ((_ is Nil!13354) lt!434983))))

(assert (=> d!372342 (= (size!10874 lt!434983) lt!435134)))

(declare-fun b!1318993 () Bool)

(assert (=> b!1318993 (= e!845422 0)))

(declare-fun b!1318994 () Bool)

(assert (=> b!1318994 (= e!845422 (+ 1 (size!10874 (t!118435 lt!434983))))))

(assert (= (and d!372342 c!216505) b!1318993))

(assert (= (and d!372342 (not c!216505)) b!1318994))

(declare-fun m!1474061 () Bool)

(assert (=> b!1318994 m!1474061))

(assert (=> b!1318496 d!372342))

(declare-fun d!372347 () Bool)

(declare-fun lt!435135 () Int)

(assert (=> d!372347 (>= lt!435135 0)))

(declare-fun e!845423 () Int)

(assert (=> d!372347 (= lt!435135 e!845423)))

(declare-fun c!216506 () Bool)

(assert (=> d!372347 (= c!216506 ((_ is Nil!13354) lt!434728))))

(assert (=> d!372347 (= (size!10874 lt!434728) lt!435135)))

(declare-fun b!1318995 () Bool)

(assert (=> b!1318995 (= e!845423 0)))

(declare-fun b!1318996 () Bool)

(assert (=> b!1318996 (= e!845423 (+ 1 (size!10874 (t!118435 lt!434728))))))

(assert (= (and d!372347 c!216506) b!1318995))

(assert (= (and d!372347 (not c!216506)) b!1318996))

(declare-fun m!1474063 () Bool)

(assert (=> b!1318996 m!1474063))

(assert (=> b!1318496 d!372347))

(declare-fun d!372352 () Bool)

(declare-fun lt!435136 () Int)

(assert (=> d!372352 (>= lt!435136 0)))

(declare-fun e!845431 () Int)

(assert (=> d!372352 (= lt!435136 e!845431)))

(declare-fun c!216509 () Bool)

(assert (=> d!372352 (= c!216509 ((_ is Nil!13354) (getSuffix!481 lt!434735 lt!434728)))))

(assert (=> d!372352 (= (size!10874 (getSuffix!481 lt!434735 lt!434728)) lt!435136)))

(declare-fun b!1319006 () Bool)

(assert (=> b!1319006 (= e!845431 0)))

(declare-fun b!1319007 () Bool)

(assert (=> b!1319007 (= e!845431 (+ 1 (size!10874 (t!118435 (getSuffix!481 lt!434735 lt!434728)))))))

(assert (= (and d!372352 c!216509) b!1319006))

(assert (= (and d!372352 (not c!216509)) b!1319007))

(declare-fun m!1474065 () Bool)

(assert (=> b!1319007 m!1474065))

(assert (=> b!1318496 d!372352))

(declare-fun d!372354 () Bool)

(declare-fun c!216512 () Bool)

(assert (=> d!372354 (= c!216512 ((_ is Nil!13356) rules!2550))))

(declare-fun e!845434 () (InoxSet Rule!4422))

(assert (=> d!372354 (= (content!1882 rules!2550) e!845434)))

(declare-fun b!1319012 () Bool)

(assert (=> b!1319012 (= e!845434 ((as const (Array Rule!4422 Bool)) false))))

(declare-fun b!1319013 () Bool)

(assert (=> b!1319013 (= e!845434 ((_ map or) (store ((as const (Array Rule!4422 Bool)) false) (h!18757 rules!2550) true) (content!1882 (t!118437 rules!2550))))))

(assert (= (and d!372354 c!216512) b!1319012))

(assert (= (and d!372354 (not c!216512)) b!1319013))

(declare-fun m!1474075 () Bool)

(assert (=> b!1319013 m!1474075))

(declare-fun m!1474077 () Bool)

(assert (=> b!1319013 m!1474077))

(assert (=> d!371900 d!372354))

(declare-fun d!372360 () Bool)

(declare-fun lt!435137 () Int)

(assert (=> d!372360 (= lt!435137 (size!10874 (list!5034 lt!434720)))))

(assert (=> d!372360 (= lt!435137 (size!10877 (c!216255 lt!434720)))))

(assert (=> d!372360 (= (size!10867 lt!434720) lt!435137)))

(declare-fun bs!330806 () Bool)

(assert (= bs!330806 d!372360))

(assert (=> bs!330806 m!1472351))

(assert (=> bs!330806 m!1472351))

(declare-fun m!1474079 () Bool)

(assert (=> bs!330806 m!1474079))

(declare-fun m!1474081 () Bool)

(assert (=> bs!330806 m!1474081))

(assert (=> b!1318491 d!372360))

(declare-fun d!372362 () Bool)

(assert (=> d!372362 (= (list!5035 (_1!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34))))) (list!5038 (c!216256 (_1!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))))))

(declare-fun bs!330807 () Bool)

(assert (= bs!330807 d!372362))

(declare-fun m!1474083 () Bool)

(assert (=> bs!330807 m!1474083))

(assert (=> d!371976 d!372362))

(assert (=> d!371976 d!371882))

(declare-fun d!372364 () Bool)

(declare-fun lt!435143 () Int)

(assert (=> d!372364 (= lt!435143 (size!10875 (list!5035 (_1!7375 lt!434966))))))

(declare-fun size!10880 (Conc!4393) Int)

(assert (=> d!372364 (= lt!435143 (size!10880 (c!216256 (_1!7375 lt!434966))))))

(assert (=> d!372364 (= (size!10870 (_1!7375 lt!434966)) lt!435143)))

(declare-fun bs!330809 () Bool)

(assert (= bs!330809 d!372364))

(declare-fun m!1474093 () Bool)

(assert (=> bs!330809 m!1474093))

(assert (=> bs!330809 m!1474093))

(declare-fun m!1474095 () Bool)

(assert (=> bs!330809 m!1474095))

(declare-fun m!1474097 () Bool)

(assert (=> bs!330809 m!1474097))

(assert (=> d!371976 d!372364))

(assert (=> d!371976 d!371884))

(assert (=> d!371976 d!371898))

(declare-fun b!1319017 () Bool)

(declare-fun e!845439 () Bool)

(declare-fun lt!435144 () tuple2!12978)

(assert (=> b!1319017 (= e!845439 (= (list!5034 (_2!7375 lt!435144)) (_2!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))))))

(declare-fun e!845438 () Bool)

(declare-fun b!1319018 () Bool)

(assert (=> b!1319018 (= e!845438 (= (_2!7375 lt!435144) (print!780 thiss!19762 (singletonSeq!892 t2!34))))))

(declare-fun b!1319019 () Bool)

(declare-fun e!845440 () Bool)

(assert (=> b!1319019 (= e!845440 (not (isEmpty!7928 (_1!7375 lt!435144))))))

(declare-fun b!1319020 () Bool)

(assert (=> b!1319020 (= e!845438 e!845440)))

(declare-fun res!592782 () Bool)

(assert (=> b!1319020 (= res!592782 (< (size!10867 (_2!7375 lt!435144)) (size!10867 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))))

(assert (=> b!1319020 (=> (not res!592782) (not e!845440))))

(declare-fun d!372370 () Bool)

(assert (=> d!372370 e!845439))

(declare-fun res!592783 () Bool)

(assert (=> d!372370 (=> (not res!592783) (not e!845439))))

(assert (=> d!372370 (= res!592783 e!845438)))

(declare-fun c!216513 () Bool)

(assert (=> d!372370 (= c!216513 (> (size!10870 (_1!7375 lt!435144)) 0))))

(assert (=> d!372370 (= lt!435144 (lexTailRecV2!367 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34)) (BalanceConc!8725 Empty!4392) (print!780 thiss!19762 (singletonSeq!892 t2!34)) (BalanceConc!8727 Empty!4393)))))

(assert (=> d!372370 (= (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34))) lt!435144)))

(declare-fun b!1319021 () Bool)

(declare-fun res!592781 () Bool)

(assert (=> b!1319021 (=> (not res!592781) (not e!845439))))

(assert (=> b!1319021 (= res!592781 (= (list!5035 (_1!7375 lt!435144)) (_1!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))))))

(assert (= (and d!372370 c!216513) b!1319020))

(assert (= (and d!372370 (not c!216513)) b!1319018))

(assert (= (and b!1319020 res!592782) b!1319019))

(assert (= (and d!372370 res!592783) b!1319021))

(assert (= (and b!1319021 res!592781) b!1319017))

(declare-fun m!1474099 () Bool)

(assert (=> b!1319021 m!1474099))

(assert (=> b!1319021 m!1472323))

(declare-fun m!1474101 () Bool)

(assert (=> b!1319021 m!1474101))

(assert (=> b!1319021 m!1474101))

(declare-fun m!1474103 () Bool)

(assert (=> b!1319021 m!1474103))

(declare-fun m!1474105 () Bool)

(assert (=> d!372370 m!1474105))

(assert (=> d!372370 m!1472323))

(assert (=> d!372370 m!1472323))

(declare-fun m!1474107 () Bool)

(assert (=> d!372370 m!1474107))

(declare-fun m!1474109 () Bool)

(assert (=> b!1319020 m!1474109))

(assert (=> b!1319020 m!1472323))

(declare-fun m!1474111 () Bool)

(assert (=> b!1319020 m!1474111))

(declare-fun m!1474113 () Bool)

(assert (=> b!1319019 m!1474113))

(declare-fun m!1474115 () Bool)

(assert (=> b!1319017 m!1474115))

(assert (=> b!1319017 m!1472323))

(assert (=> b!1319017 m!1474101))

(assert (=> b!1319017 m!1474101))

(assert (=> b!1319017 m!1474103))

(assert (=> d!371976 d!372370))

(declare-fun d!372372 () Bool)

(assert (=> d!372372 (= (list!5035 (singletonSeq!892 t2!34)) (list!5038 (c!216256 (singletonSeq!892 t2!34))))))

(declare-fun bs!330810 () Bool)

(assert (= bs!330810 d!372372))

(declare-fun m!1474117 () Bool)

(assert (=> bs!330810 m!1474117))

(assert (=> d!371976 d!372372))

(declare-fun b!1319022 () Bool)

(declare-fun e!845442 () Bool)

(declare-fun e!845443 () Bool)

(assert (=> b!1319022 (= e!845442 e!845443)))

(declare-fun res!592790 () Bool)

(assert (=> b!1319022 (=> (not res!592790) (not e!845443))))

(declare-fun lt!435147 () Bool)

(assert (=> b!1319022 (= res!592790 (not lt!435147))))

(declare-fun bm!89564 () Bool)

(declare-fun call!89569 () Bool)

(assert (=> bm!89564 (= call!89569 (isEmpty!7930 (tail!1890 lt!434735)))))

(declare-fun d!372374 () Bool)

(declare-fun e!845447 () Bool)

(assert (=> d!372374 e!845447))

(declare-fun c!216516 () Bool)

(assert (=> d!372374 (= c!216516 ((_ is EmptyExpr!3625) (derivativeStep!901 lt!434731 (head!2281 lt!434735))))))

(declare-fun e!845445 () Bool)

(assert (=> d!372374 (= lt!435147 e!845445)))

(declare-fun c!216515 () Bool)

(assert (=> d!372374 (= c!216515 (isEmpty!7930 (tail!1890 lt!434735)))))

(assert (=> d!372374 (validRegex!1551 (derivativeStep!901 lt!434731 (head!2281 lt!434735)))))

(assert (=> d!372374 (= (matchR!1627 (derivativeStep!901 lt!434731 (head!2281 lt!434735)) (tail!1890 lt!434735)) lt!435147)))

(declare-fun b!1319023 () Bool)

(declare-fun res!592784 () Bool)

(assert (=> b!1319023 (=> res!592784 e!845442)))

(assert (=> b!1319023 (= res!592784 (not ((_ is ElementMatch!3625) (derivativeStep!901 lt!434731 (head!2281 lt!434735)))))))

(declare-fun e!845446 () Bool)

(assert (=> b!1319023 (= e!845446 e!845442)))

(declare-fun b!1319024 () Bool)

(declare-fun res!592789 () Bool)

(declare-fun e!845441 () Bool)

(assert (=> b!1319024 (=> res!592789 e!845441)))

(assert (=> b!1319024 (= res!592789 (not (isEmpty!7930 (tail!1890 (tail!1890 lt!434735)))))))

(declare-fun b!1319025 () Bool)

(declare-fun e!845444 () Bool)

(assert (=> b!1319025 (= e!845444 (= (head!2281 (tail!1890 lt!434735)) (c!216254 (derivativeStep!901 lt!434731 (head!2281 lt!434735)))))))

(declare-fun b!1319026 () Bool)

(assert (=> b!1319026 (= e!845447 e!845446)))

(declare-fun c!216514 () Bool)

(assert (=> b!1319026 (= c!216514 ((_ is EmptyLang!3625) (derivativeStep!901 lt!434731 (head!2281 lt!434735))))))

(declare-fun b!1319027 () Bool)

(assert (=> b!1319027 (= e!845445 (nullable!1149 (derivativeStep!901 lt!434731 (head!2281 lt!434735))))))

(declare-fun b!1319028 () Bool)

(declare-fun res!592787 () Bool)

(assert (=> b!1319028 (=> (not res!592787) (not e!845444))))

(assert (=> b!1319028 (= res!592787 (isEmpty!7930 (tail!1890 (tail!1890 lt!434735))))))

(declare-fun b!1319029 () Bool)

(assert (=> b!1319029 (= e!845445 (matchR!1627 (derivativeStep!901 (derivativeStep!901 lt!434731 (head!2281 lt!434735)) (head!2281 (tail!1890 lt!434735))) (tail!1890 (tail!1890 lt!434735))))))

(declare-fun b!1319030 () Bool)

(assert (=> b!1319030 (= e!845447 (= lt!435147 call!89569))))

(declare-fun b!1319031 () Bool)

(assert (=> b!1319031 (= e!845441 (not (= (head!2281 (tail!1890 lt!434735)) (c!216254 (derivativeStep!901 lt!434731 (head!2281 lt!434735))))))))

(declare-fun b!1319032 () Bool)

(declare-fun res!592786 () Bool)

(assert (=> b!1319032 (=> res!592786 e!845442)))

(assert (=> b!1319032 (= res!592786 e!845444)))

(declare-fun res!592785 () Bool)

(assert (=> b!1319032 (=> (not res!592785) (not e!845444))))

(assert (=> b!1319032 (= res!592785 lt!435147)))

(declare-fun b!1319033 () Bool)

(assert (=> b!1319033 (= e!845446 (not lt!435147))))

(declare-fun b!1319034 () Bool)

(declare-fun res!592788 () Bool)

(assert (=> b!1319034 (=> (not res!592788) (not e!845444))))

(assert (=> b!1319034 (= res!592788 (not call!89569))))

(declare-fun b!1319035 () Bool)

(assert (=> b!1319035 (= e!845443 e!845441)))

(declare-fun res!592791 () Bool)

(assert (=> b!1319035 (=> res!592791 e!845441)))

(assert (=> b!1319035 (= res!592791 call!89569)))

(assert (= (and d!372374 c!216515) b!1319027))

(assert (= (and d!372374 (not c!216515)) b!1319029))

(assert (= (and d!372374 c!216516) b!1319030))

(assert (= (and d!372374 (not c!216516)) b!1319026))

(assert (= (and b!1319026 c!216514) b!1319033))

(assert (= (and b!1319026 (not c!216514)) b!1319023))

(assert (= (and b!1319023 (not res!592784)) b!1319032))

(assert (= (and b!1319032 res!592785) b!1319034))

(assert (= (and b!1319034 res!592788) b!1319028))

(assert (= (and b!1319028 res!592787) b!1319025))

(assert (= (and b!1319032 (not res!592786)) b!1319022))

(assert (= (and b!1319022 res!592790) b!1319035))

(assert (= (and b!1319035 (not res!592791)) b!1319024))

(assert (= (and b!1319024 (not res!592789)) b!1319031))

(assert (= (or b!1319030 b!1319034 b!1319035) bm!89564))

(assert (=> b!1319025 m!1473245))

(declare-fun m!1474127 () Bool)

(assert (=> b!1319025 m!1474127))

(assert (=> b!1319024 m!1473245))

(declare-fun m!1474129 () Bool)

(assert (=> b!1319024 m!1474129))

(assert (=> b!1319024 m!1474129))

(declare-fun m!1474131 () Bool)

(assert (=> b!1319024 m!1474131))

(assert (=> b!1319028 m!1473245))

(assert (=> b!1319028 m!1474129))

(assert (=> b!1319028 m!1474129))

(assert (=> b!1319028 m!1474131))

(assert (=> b!1319027 m!1473255))

(declare-fun m!1474133 () Bool)

(assert (=> b!1319027 m!1474133))

(assert (=> b!1319031 m!1473245))

(assert (=> b!1319031 m!1474127))

(assert (=> d!372374 m!1473245))

(assert (=> d!372374 m!1473247))

(assert (=> d!372374 m!1473255))

(declare-fun m!1474137 () Bool)

(assert (=> d!372374 m!1474137))

(assert (=> bm!89564 m!1473245))

(assert (=> bm!89564 m!1473247))

(assert (=> b!1319029 m!1473245))

(assert (=> b!1319029 m!1474127))

(assert (=> b!1319029 m!1473255))

(assert (=> b!1319029 m!1474127))

(declare-fun m!1474139 () Bool)

(assert (=> b!1319029 m!1474139))

(assert (=> b!1319029 m!1473245))

(assert (=> b!1319029 m!1474129))

(assert (=> b!1319029 m!1474139))

(assert (=> b!1319029 m!1474129))

(declare-fun m!1474141 () Bool)

(assert (=> b!1319029 m!1474141))

(assert (=> b!1318433 d!372374))

(declare-fun bm!89574 () Bool)

(declare-fun call!89582 () Regex!3625)

(declare-fun call!89579 () Regex!3625)

(assert (=> bm!89574 (= call!89582 call!89579)))

(declare-fun c!216540 () Bool)

(declare-fun c!216538 () Bool)

(declare-fun bm!89575 () Bool)

(assert (=> bm!89575 (= call!89579 (derivativeStep!901 (ite c!216538 (regTwo!7763 lt!434731) (ite c!216540 (regTwo!7762 lt!434731) (regOne!7762 lt!434731))) (head!2281 lt!434735)))))

(declare-fun b!1319085 () Bool)

(declare-fun e!845477 () Regex!3625)

(assert (=> b!1319085 (= e!845477 (Union!3625 (Concat!6026 call!89582 (regTwo!7762 lt!434731)) EmptyLang!3625))))

(declare-fun call!89580 () Regex!3625)

(declare-fun b!1319086 () Bool)

(assert (=> b!1319086 (= e!845477 (Union!3625 (Concat!6026 call!89580 (regTwo!7762 lt!434731)) call!89582))))

(declare-fun b!1319087 () Bool)

(declare-fun e!845479 () Regex!3625)

(declare-fun call!89581 () Regex!3625)

(assert (=> b!1319087 (= e!845479 (Union!3625 call!89581 call!89579))))

(declare-fun b!1319088 () Bool)

(assert (=> b!1319088 (= c!216540 (nullable!1149 (regOne!7762 lt!434731)))))

(declare-fun e!845478 () Regex!3625)

(assert (=> b!1319088 (= e!845478 e!845477)))

(declare-fun b!1319089 () Bool)

(assert (=> b!1319089 (= e!845479 e!845478)))

(declare-fun c!216541 () Bool)

(assert (=> b!1319089 (= c!216541 ((_ is Star!3625) lt!434731))))

(declare-fun b!1319090 () Bool)

(declare-fun e!845476 () Regex!3625)

(assert (=> b!1319090 (= e!845476 (ite (= (head!2281 lt!434735) (c!216254 lt!434731)) EmptyExpr!3625 EmptyLang!3625))))

(declare-fun b!1319091 () Bool)

(declare-fun e!845475 () Regex!3625)

(assert (=> b!1319091 (= e!845475 EmptyLang!3625)))

(declare-fun bm!89577 () Bool)

(assert (=> bm!89577 (= call!89581 (derivativeStep!901 (ite c!216538 (regOne!7763 lt!434731) (ite c!216541 (reg!3954 lt!434731) (regOne!7762 lt!434731))) (head!2281 lt!434735)))))

(declare-fun b!1319092 () Bool)

(assert (=> b!1319092 (= c!216538 ((_ is Union!3625) lt!434731))))

(assert (=> b!1319092 (= e!845476 e!845479)))

(declare-fun bm!89576 () Bool)

(assert (=> bm!89576 (= call!89580 call!89581)))

(declare-fun d!372386 () Bool)

(declare-fun lt!435165 () Regex!3625)

(assert (=> d!372386 (validRegex!1551 lt!435165)))

(assert (=> d!372386 (= lt!435165 e!845475)))

(declare-fun c!216537 () Bool)

(assert (=> d!372386 (= c!216537 (or ((_ is EmptyExpr!3625) lt!434731) ((_ is EmptyLang!3625) lt!434731)))))

(assert (=> d!372386 (validRegex!1551 lt!434731)))

(assert (=> d!372386 (= (derivativeStep!901 lt!434731 (head!2281 lt!434735)) lt!435165)))

(declare-fun b!1319093 () Bool)

(assert (=> b!1319093 (= e!845475 e!845476)))

(declare-fun c!216539 () Bool)

(assert (=> b!1319093 (= c!216539 ((_ is ElementMatch!3625) lt!434731))))

(declare-fun b!1319094 () Bool)

(assert (=> b!1319094 (= e!845478 (Concat!6026 call!89580 lt!434731))))

(assert (= (and d!372386 c!216537) b!1319091))

(assert (= (and d!372386 (not c!216537)) b!1319093))

(assert (= (and b!1319093 c!216539) b!1319090))

(assert (= (and b!1319093 (not c!216539)) b!1319092))

(assert (= (and b!1319092 c!216538) b!1319087))

(assert (= (and b!1319092 (not c!216538)) b!1319089))

(assert (= (and b!1319089 c!216541) b!1319094))

(assert (= (and b!1319089 (not c!216541)) b!1319088))

(assert (= (and b!1319088 c!216540) b!1319086))

(assert (= (and b!1319088 (not c!216540)) b!1319085))

(assert (= (or b!1319086 b!1319085) bm!89574))

(assert (= (or b!1319094 b!1319086) bm!89576))

(assert (= (or b!1319087 bm!89576) bm!89577))

(assert (= (or b!1319087 bm!89574) bm!89575))

(assert (=> bm!89575 m!1473243))

(declare-fun m!1474201 () Bool)

(assert (=> bm!89575 m!1474201))

(declare-fun m!1474203 () Bool)

(assert (=> b!1319088 m!1474203))

(assert (=> bm!89577 m!1473243))

(declare-fun m!1474205 () Bool)

(assert (=> bm!89577 m!1474205))

(declare-fun m!1474207 () Bool)

(assert (=> d!372386 m!1474207))

(assert (=> d!372386 m!1473253))

(assert (=> b!1318433 d!372386))

(declare-fun d!372424 () Bool)

(assert (=> d!372424 (= (head!2281 lt!434735) (h!18755 lt!434735))))

(assert (=> b!1318433 d!372424))

(declare-fun d!372426 () Bool)

(assert (=> d!372426 (= (tail!1890 lt!434735) (t!118435 lt!434735))))

(assert (=> b!1318433 d!372426))

(assert (=> b!1318089 d!371900))

(declare-fun d!372428 () Bool)

(declare-fun charsToInt!0 (List!13421) (_ BitVec 32))

(assert (=> d!372428 (= (inv!16 (value!75496 t2!34)) (= (charsToInt!0 (text!17254 (value!75496 t2!34))) (value!75487 (value!75496 t2!34))))))

(declare-fun bs!330822 () Bool)

(assert (= bs!330822 d!372428))

(declare-fun m!1474209 () Bool)

(assert (=> bs!330822 m!1474209))

(assert (=> b!1318324 d!372428))

(declare-fun d!372430 () Bool)

(declare-fun lt!435166 () Int)

(assert (=> d!372430 (>= lt!435166 0)))

(declare-fun e!845486 () Int)

(assert (=> d!372430 (= lt!435166 e!845486)))

(declare-fun c!216544 () Bool)

(assert (=> d!372430 (= c!216544 ((_ is Nil!13354) (_2!7377 (get!4260 lt!434973))))))

(assert (=> d!372430 (= (size!10874 (_2!7377 (get!4260 lt!434973))) lt!435166)))

(declare-fun b!1319103 () Bool)

(assert (=> b!1319103 (= e!845486 0)))

(declare-fun b!1319104 () Bool)

(assert (=> b!1319104 (= e!845486 (+ 1 (size!10874 (t!118435 (_2!7377 (get!4260 lt!434973))))))))

(assert (= (and d!372430 c!216544) b!1319103))

(assert (= (and d!372430 (not c!216544)) b!1319104))

(declare-fun m!1474211 () Bool)

(assert (=> b!1319104 m!1474211))

(assert (=> b!1318480 d!372430))

(assert (=> b!1318480 d!372300))

(assert (=> b!1318480 d!372316))

(declare-fun d!372432 () Bool)

(declare-fun lt!435167 () Bool)

(assert (=> d!372432 (= lt!435167 (isEmpty!7930 (list!5034 (_2!7375 lt!434971))))))

(assert (=> d!372432 (= lt!435167 (isEmpty!7931 (c!216255 (_2!7375 lt!434971))))))

(assert (=> d!372432 (= (isEmpty!7924 (_2!7375 lt!434971)) lt!435167)))

(declare-fun bs!330823 () Bool)

(assert (= bs!330823 d!372432))

(declare-fun m!1474213 () Bool)

(assert (=> bs!330823 m!1474213))

(assert (=> bs!330823 m!1474213))

(declare-fun m!1474215 () Bool)

(assert (=> bs!330823 m!1474215))

(declare-fun m!1474217 () Bool)

(assert (=> bs!330823 m!1474217))

(assert (=> b!1318470 d!372432))

(declare-fun d!372434 () Bool)

(declare-fun lt!435168 () Int)

(assert (=> d!372434 (>= lt!435168 0)))

(declare-fun e!845490 () Int)

(assert (=> d!372434 (= lt!435168 e!845490)))

(declare-fun c!216546 () Bool)

(assert (=> d!372434 (= c!216546 ((_ is Nil!13354) (_2!7376 lt!434885)))))

(assert (=> d!372434 (= (size!10874 (_2!7376 lt!434885)) lt!435168)))

(declare-fun b!1319109 () Bool)

(assert (=> b!1319109 (= e!845490 0)))

(declare-fun b!1319110 () Bool)

(assert (=> b!1319110 (= e!845490 (+ 1 (size!10874 (t!118435 (_2!7376 lt!434885)))))))

(assert (= (and d!372434 c!216546) b!1319109))

(assert (= (and d!372434 (not c!216546)) b!1319110))

(declare-fun m!1474219 () Bool)

(assert (=> b!1319110 m!1474219))

(assert (=> b!1318175 d!372434))

(declare-fun d!372436 () Bool)

(declare-fun lt!435169 () Int)

(assert (=> d!372436 (>= lt!435169 0)))

(declare-fun e!845491 () Int)

(assert (=> d!372436 (= lt!435169 e!845491)))

(declare-fun c!216547 () Bool)

(assert (=> d!372436 (= c!216547 ((_ is Nil!13354) (list!5034 lt!434723)))))

(assert (=> d!372436 (= (size!10874 (list!5034 lt!434723)) lt!435169)))

(declare-fun b!1319111 () Bool)

(assert (=> b!1319111 (= e!845491 0)))

(declare-fun b!1319112 () Bool)

(assert (=> b!1319112 (= e!845491 (+ 1 (size!10874 (t!118435 (list!5034 lt!434723)))))))

(assert (= (and d!372436 c!216547) b!1319111))

(assert (= (and d!372436 (not c!216547)) b!1319112))

(declare-fun m!1474225 () Bool)

(assert (=> b!1319112 m!1474225))

(assert (=> b!1318175 d!372436))

(declare-fun d!372440 () Bool)

(declare-fun lt!435174 () C!7540)

(assert (=> d!372440 (contains!2348 (list!5034 lt!434720) lt!435174)))

(declare-fun e!845499 () C!7540)

(assert (=> d!372440 (= lt!435174 e!845499)))

(declare-fun c!216550 () Bool)

(assert (=> d!372440 (= c!216550 (= 0 0))))

(declare-fun e!845500 () Bool)

(assert (=> d!372440 e!845500))

(declare-fun res!592813 () Bool)

(assert (=> d!372440 (=> (not res!592813) (not e!845500))))

(assert (=> d!372440 (= res!592813 (<= 0 0))))

(assert (=> d!372440 (= (apply!3049 (list!5034 lt!434720) 0) lt!435174)))

(declare-fun b!1319125 () Bool)

(assert (=> b!1319125 (= e!845500 (< 0 (size!10874 (list!5034 lt!434720))))))

(declare-fun b!1319126 () Bool)

(assert (=> b!1319126 (= e!845499 (head!2281 (list!5034 lt!434720)))))

(declare-fun b!1319127 () Bool)

(assert (=> b!1319127 (= e!845499 (apply!3049 (tail!1890 (list!5034 lt!434720)) (- 0 1)))))

(assert (= (and d!372440 res!592813) b!1319125))

(assert (= (and d!372440 c!216550) b!1319126))

(assert (= (and d!372440 (not c!216550)) b!1319127))

(assert (=> d!372440 m!1472351))

(declare-fun m!1474245 () Bool)

(assert (=> d!372440 m!1474245))

(assert (=> b!1319125 m!1472351))

(assert (=> b!1319125 m!1474079))

(assert (=> b!1319126 m!1472351))

(declare-fun m!1474247 () Bool)

(assert (=> b!1319126 m!1474247))

(assert (=> b!1319127 m!1472351))

(declare-fun m!1474249 () Bool)

(assert (=> b!1319127 m!1474249))

(assert (=> b!1319127 m!1474249))

(declare-fun m!1474251 () Bool)

(assert (=> b!1319127 m!1474251))

(assert (=> d!372032 d!372440))

(assert (=> d!372032 d!371914))

(declare-fun b!1319170 () Bool)

(declare-fun e!845525 () C!7540)

(declare-fun call!89589 () C!7540)

(assert (=> b!1319170 (= e!845525 call!89589)))

(declare-fun b!1319171 () Bool)

(declare-fun e!845522 () Int)

(assert (=> b!1319171 (= e!845522 0)))

(declare-fun b!1319172 () Bool)

(declare-fun e!845524 () C!7540)

(declare-fun apply!3056 (IArray!8789 Int) C!7540)

(assert (=> b!1319172 (= e!845524 (apply!3056 (xs!7107 (c!216255 lt!434720)) 0))))

(declare-fun b!1319173 () Bool)

(declare-fun e!845523 () Bool)

(assert (=> b!1319173 (= e!845523 (< 0 (size!10877 (c!216255 lt!434720))))))

(declare-fun b!1319174 () Bool)

(assert (=> b!1319174 (= e!845524 e!845525)))

(declare-fun lt!435195 () Bool)

(declare-fun appendIndex!143 (List!13420 List!13420 Int) Bool)

(assert (=> b!1319174 (= lt!435195 (appendIndex!143 (list!5039 (left!11477 (c!216255 lt!434720))) (list!5039 (right!11807 (c!216255 lt!434720))) 0))))

(declare-fun c!216567 () Bool)

(assert (=> b!1319174 (= c!216567 (< 0 (size!10877 (left!11477 (c!216255 lt!434720)))))))

(declare-fun bm!89584 () Bool)

(declare-fun c!216565 () Bool)

(assert (=> bm!89584 (= c!216565 c!216567)))

(assert (=> bm!89584 (= call!89589 (apply!3050 (ite c!216567 (left!11477 (c!216255 lt!434720)) (right!11807 (c!216255 lt!434720))) e!845522))))

(declare-fun b!1319175 () Bool)

(assert (=> b!1319175 (= e!845525 call!89589)))

(declare-fun d!372454 () Bool)

(declare-fun lt!435196 () C!7540)

(assert (=> d!372454 (= lt!435196 (apply!3049 (list!5039 (c!216255 lt!434720)) 0))))

(assert (=> d!372454 (= lt!435196 e!845524)))

(declare-fun c!216566 () Bool)

(assert (=> d!372454 (= c!216566 ((_ is Leaf!6744) (c!216255 lt!434720)))))

(assert (=> d!372454 e!845523))

(declare-fun res!592827 () Bool)

(assert (=> d!372454 (=> (not res!592827) (not e!845523))))

(assert (=> d!372454 (= res!592827 (<= 0 0))))

(assert (=> d!372454 (= (apply!3050 (c!216255 lt!434720) 0) lt!435196)))

(declare-fun b!1319169 () Bool)

(assert (=> b!1319169 (= e!845522 (- 0 (size!10877 (left!11477 (c!216255 lt!434720)))))))

(assert (= (and d!372454 res!592827) b!1319173))

(assert (= (and d!372454 c!216566) b!1319172))

(assert (= (and d!372454 (not c!216566)) b!1319174))

(assert (= (and b!1319174 c!216567) b!1319175))

(assert (= (and b!1319174 (not c!216567)) b!1319170))

(assert (= (or b!1319175 b!1319170) bm!89584))

(assert (= (and bm!89584 c!216565) b!1319171))

(assert (= (and bm!89584 (not c!216565)) b!1319169))

(declare-fun m!1474349 () Bool)

(assert (=> b!1319169 m!1474349))

(assert (=> b!1319173 m!1474081))

(declare-fun m!1474351 () Bool)

(assert (=> b!1319174 m!1474351))

(declare-fun m!1474353 () Bool)

(assert (=> b!1319174 m!1474353))

(assert (=> b!1319174 m!1474351))

(assert (=> b!1319174 m!1474353))

(declare-fun m!1474355 () Bool)

(assert (=> b!1319174 m!1474355))

(assert (=> b!1319174 m!1474349))

(assert (=> d!372454 m!1472955))

(assert (=> d!372454 m!1472955))

(declare-fun m!1474357 () Bool)

(assert (=> d!372454 m!1474357))

(declare-fun m!1474359 () Bool)

(assert (=> b!1319172 m!1474359))

(declare-fun m!1474361 () Bool)

(assert (=> bm!89584 m!1474361))

(assert (=> d!372032 d!372454))

(declare-fun d!372476 () Bool)

(assert (=> d!372476 true))

(declare-fun lambda!53799 () Int)

(declare-fun order!8069 () Int)

(declare-fun order!8067 () Int)

(declare-fun dynLambda!5859 (Int Int) Int)

(declare-fun dynLambda!5860 (Int Int) Int)

(assert (=> d!372476 (< (dynLambda!5859 order!8067 (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) (dynLambda!5860 order!8069 lambda!53799))))

(assert (=> d!372476 true))

(declare-fun order!8071 () Int)

(declare-fun dynLambda!5861 (Int Int) Int)

(assert (=> d!372476 (< (dynLambda!5861 order!8071 (toValue!3538 (transformation!2311 (rule!4054 t1!34)))) (dynLambda!5860 order!8069 lambda!53799))))

(declare-fun Forall!519 (Int) Bool)

(assert (=> d!372476 (= (semiInverseModEq!870 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 t1!34)))) (Forall!519 lambda!53799))))

(declare-fun bs!330844 () Bool)

(assert (= bs!330844 d!372476))

(declare-fun m!1474407 () Bool)

(assert (=> bs!330844 m!1474407))

(assert (=> d!371904 d!372476))

(assert (=> b!1318429 d!372424))

(declare-fun d!372488 () Bool)

(declare-fun res!592857 () Bool)

(declare-fun e!845549 () Bool)

(assert (=> d!372488 (=> res!592857 e!845549)))

(assert (=> d!372488 (= res!592857 (not ((_ is Node!4393) (c!216256 lt!434872))))))

(assert (=> d!372488 (= (isBalanced!1280 (c!216256 lt!434872)) e!845549)))

(declare-fun b!1319223 () Bool)

(declare-fun res!592855 () Bool)

(declare-fun e!845548 () Bool)

(assert (=> b!1319223 (=> (not res!592855) (not e!845548))))

(assert (=> b!1319223 (= res!592855 (isBalanced!1280 (left!11478 (c!216256 lt!434872))))))

(declare-fun b!1319224 () Bool)

(declare-fun res!592856 () Bool)

(assert (=> b!1319224 (=> (not res!592856) (not e!845548))))

(assert (=> b!1319224 (= res!592856 (isBalanced!1280 (right!11808 (c!216256 lt!434872))))))

(declare-fun b!1319225 () Bool)

(assert (=> b!1319225 (= e!845548 (not (isEmpty!7937 (right!11808 (c!216256 lt!434872)))))))

(declare-fun b!1319226 () Bool)

(assert (=> b!1319226 (= e!845549 e!845548)))

(declare-fun res!592860 () Bool)

(assert (=> b!1319226 (=> (not res!592860) (not e!845548))))

(declare-fun height!628 (Conc!4393) Int)

(assert (=> b!1319226 (= res!592860 (<= (- 1) (- (height!628 (left!11478 (c!216256 lt!434872))) (height!628 (right!11808 (c!216256 lt!434872))))))))

(declare-fun b!1319227 () Bool)

(declare-fun res!592859 () Bool)

(assert (=> b!1319227 (=> (not res!592859) (not e!845548))))

(assert (=> b!1319227 (= res!592859 (not (isEmpty!7937 (left!11478 (c!216256 lt!434872)))))))

(declare-fun b!1319228 () Bool)

(declare-fun res!592858 () Bool)

(assert (=> b!1319228 (=> (not res!592858) (not e!845548))))

(assert (=> b!1319228 (= res!592858 (<= (- (height!628 (left!11478 (c!216256 lt!434872))) (height!628 (right!11808 (c!216256 lt!434872)))) 1))))

(assert (= (and d!372488 (not res!592857)) b!1319226))

(assert (= (and b!1319226 res!592860) b!1319228))

(assert (= (and b!1319228 res!592858) b!1319223))

(assert (= (and b!1319223 res!592855) b!1319224))

(assert (= (and b!1319224 res!592856) b!1319227))

(assert (= (and b!1319227 res!592859) b!1319225))

(declare-fun m!1474427 () Bool)

(assert (=> b!1319225 m!1474427))

(declare-fun m!1474429 () Bool)

(assert (=> b!1319227 m!1474429))

(declare-fun m!1474431 () Bool)

(assert (=> b!1319228 m!1474431))

(declare-fun m!1474433 () Bool)

(assert (=> b!1319228 m!1474433))

(declare-fun m!1474435 () Bool)

(assert (=> b!1319224 m!1474435))

(declare-fun m!1474437 () Bool)

(assert (=> b!1319223 m!1474437))

(assert (=> b!1319226 m!1474431))

(assert (=> b!1319226 m!1474433))

(assert (=> b!1318135 d!372488))

(declare-fun bm!89589 () Bool)

(declare-fun call!89594 () Bool)

(declare-fun call!89596 () Bool)

(assert (=> bm!89589 (= call!89594 call!89596)))

(declare-fun b!1319233 () Bool)

(declare-fun e!845556 () Bool)

(assert (=> b!1319233 (= e!845556 call!89594)))

(declare-fun b!1319234 () Bool)

(declare-fun e!845554 () Bool)

(declare-fun e!845557 () Bool)

(assert (=> b!1319234 (= e!845554 e!845557)))

(declare-fun res!592863 () Bool)

(assert (=> b!1319234 (= res!592863 (not (nullable!1149 (reg!3954 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))))))))

(assert (=> b!1319234 (=> (not res!592863) (not e!845557))))

(declare-fun b!1319235 () Bool)

(declare-fun res!592862 () Bool)

(assert (=> b!1319235 (=> (not res!592862) (not e!845556))))

(declare-fun call!89595 () Bool)

(assert (=> b!1319235 (= res!592862 call!89595)))

(declare-fun e!845555 () Bool)

(assert (=> b!1319235 (= e!845555 e!845556)))

(declare-fun b!1319236 () Bool)

(declare-fun res!592865 () Bool)

(declare-fun e!845552 () Bool)

(assert (=> b!1319236 (=> res!592865 e!845552)))

(assert (=> b!1319236 (= res!592865 (not ((_ is Concat!6026) (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34))))))))))

(assert (=> b!1319236 (= e!845555 e!845552)))

(declare-fun b!1319237 () Bool)

(declare-fun e!845558 () Bool)

(assert (=> b!1319237 (= e!845558 call!89594)))

(declare-fun c!216578 () Bool)

(declare-fun bm!89591 () Bool)

(declare-fun c!216579 () Bool)

(assert (=> bm!89591 (= call!89596 (validRegex!1551 (ite c!216578 (reg!3954 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))) (ite c!216579 (regTwo!7763 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))) (regTwo!7762 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34))))))))))))

(declare-fun b!1319238 () Bool)

(declare-fun e!845553 () Bool)

(assert (=> b!1319238 (= e!845553 e!845554)))

(assert (=> b!1319238 (= c!216578 ((_ is Star!3625) (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))))))

(declare-fun b!1319239 () Bool)

(assert (=> b!1319239 (= e!845557 call!89596)))

(declare-fun b!1319240 () Bool)

(assert (=> b!1319240 (= e!845552 e!845558)))

(declare-fun res!592864 () Bool)

(assert (=> b!1319240 (=> (not res!592864) (not e!845558))))

(assert (=> b!1319240 (= res!592864 call!89595)))

(declare-fun b!1319241 () Bool)

(assert (=> b!1319241 (= e!845554 e!845555)))

(assert (=> b!1319241 (= c!216579 ((_ is Union!3625) (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))))))

(declare-fun bm!89590 () Bool)

(assert (=> bm!89590 (= call!89595 (validRegex!1551 (ite c!216579 (regOne!7763 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))) (regOne!7762 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))))))))

(declare-fun d!372498 () Bool)

(declare-fun res!592861 () Bool)

(assert (=> d!372498 (=> res!592861 e!845553)))

(assert (=> d!372498 (= res!592861 ((_ is ElementMatch!3625) (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))))))

(assert (=> d!372498 (= (validRegex!1551 (ite c!216384 (reg!3954 (regex!2311 (rule!4054 t2!34))) (ite c!216385 (regTwo!7763 (regex!2311 (rule!4054 t2!34))) (regTwo!7762 (regex!2311 (rule!4054 t2!34)))))) e!845553)))

(assert (= (and d!372498 (not res!592861)) b!1319238))

(assert (= (and b!1319238 c!216578) b!1319234))

(assert (= (and b!1319238 (not c!216578)) b!1319241))

(assert (= (and b!1319234 res!592863) b!1319239))

(assert (= (and b!1319241 c!216579) b!1319235))

(assert (= (and b!1319241 (not c!216579)) b!1319236))

(assert (= (and b!1319235 res!592862) b!1319233))

(assert (= (and b!1319236 (not res!592865)) b!1319240))

(assert (= (and b!1319240 res!592864) b!1319237))

(assert (= (or b!1319235 b!1319240) bm!89590))

(assert (= (or b!1319233 b!1319237) bm!89589))

(assert (= (or b!1319239 bm!89589) bm!89591))

(declare-fun m!1474439 () Bool)

(assert (=> b!1319234 m!1474439))

(declare-fun m!1474441 () Bool)

(assert (=> bm!89591 m!1474441))

(declare-fun m!1474443 () Bool)

(assert (=> bm!89590 m!1474443))

(assert (=> bm!89539 d!372498))

(declare-fun d!372500 () Bool)

(declare-fun res!592870 () Bool)

(declare-fun e!845569 () Bool)

(assert (=> d!372500 (=> (not res!592870) (not e!845569))))

(assert (=> d!372500 (= res!592870 (validRegex!1551 (regex!2311 (rule!4054 t2!34))))))

(assert (=> d!372500 (= (ruleValid!564 thiss!19762 (rule!4054 t2!34)) e!845569)))

(declare-fun b!1319262 () Bool)

(declare-fun res!592871 () Bool)

(assert (=> b!1319262 (=> (not res!592871) (not e!845569))))

(assert (=> b!1319262 (= res!592871 (not (nullable!1149 (regex!2311 (rule!4054 t2!34)))))))

(declare-fun b!1319263 () Bool)

(assert (=> b!1319263 (= e!845569 (not (= (tag!2573 (rule!4054 t2!34)) (String!16242 ""))))))

(assert (= (and d!372500 res!592870) b!1319262))

(assert (= (and b!1319262 res!592871) b!1319263))

(assert (=> d!372500 m!1472309))

(declare-fun m!1474445 () Bool)

(assert (=> b!1319262 m!1474445))

(assert (=> bs!330724 d!372500))

(declare-fun d!372502 () Bool)

(declare-fun charsToBigInt!0 (List!13421 Int) Int)

(assert (=> d!372502 (= (inv!15 (value!75496 t1!34)) (= (charsToBigInt!0 (text!17256 (value!75496 t1!34)) 0) (value!75491 (value!75496 t1!34))))))

(declare-fun bs!330845 () Bool)

(assert (= bs!330845 d!372502))

(declare-fun m!1474447 () Bool)

(assert (=> bs!330845 m!1474447))

(assert (=> b!1318416 d!372502))

(declare-fun d!372504 () Bool)

(declare-fun c!216595 () Bool)

(assert (=> d!372504 (= c!216595 ((_ is Nil!13354) lt!434735))))

(declare-fun e!845577 () (InoxSet C!7540))

(assert (=> d!372504 (= (content!1883 lt!434735) e!845577)))

(declare-fun b!1319278 () Bool)

(assert (=> b!1319278 (= e!845577 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1319279 () Bool)

(assert (=> b!1319279 (= e!845577 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 lt!434735) true) (content!1883 (t!118435 lt!434735))))))

(assert (= (and d!372504 c!216595) b!1319278))

(assert (= (and d!372504 (not c!216595)) b!1319279))

(declare-fun m!1474457 () Bool)

(assert (=> b!1319279 m!1474457))

(assert (=> b!1319279 m!1473883))

(assert (=> d!371910 d!372504))

(assert (=> b!1318435 d!372424))

(declare-fun d!372512 () Bool)

(declare-fun res!592876 () Bool)

(declare-fun e!845580 () Bool)

(assert (=> d!372512 (=> res!592876 e!845580)))

(assert (=> d!372512 (= res!592876 (not ((_ is Node!4393) (c!216256 lt!434769))))))

(assert (=> d!372512 (= (isBalanced!1280 (c!216256 lt!434769)) e!845580)))

(declare-fun b!1319280 () Bool)

(declare-fun res!592872 () Bool)

(declare-fun e!845578 () Bool)

(assert (=> b!1319280 (=> (not res!592872) (not e!845578))))

(assert (=> b!1319280 (= res!592872 (isBalanced!1280 (left!11478 (c!216256 lt!434769))))))

(declare-fun b!1319282 () Bool)

(declare-fun res!592874 () Bool)

(assert (=> b!1319282 (=> (not res!592874) (not e!845578))))

(assert (=> b!1319282 (= res!592874 (isBalanced!1280 (right!11808 (c!216256 lt!434769))))))

(declare-fun b!1319284 () Bool)

(assert (=> b!1319284 (= e!845578 (not (isEmpty!7937 (right!11808 (c!216256 lt!434769)))))))

(declare-fun b!1319286 () Bool)

(assert (=> b!1319286 (= e!845580 e!845578)))

(declare-fun res!592881 () Bool)

(assert (=> b!1319286 (=> (not res!592881) (not e!845578))))

(assert (=> b!1319286 (= res!592881 (<= (- 1) (- (height!628 (left!11478 (c!216256 lt!434769))) (height!628 (right!11808 (c!216256 lt!434769))))))))

(declare-fun b!1319288 () Bool)

(declare-fun res!592879 () Bool)

(assert (=> b!1319288 (=> (not res!592879) (not e!845578))))

(assert (=> b!1319288 (= res!592879 (not (isEmpty!7937 (left!11478 (c!216256 lt!434769)))))))

(declare-fun b!1319289 () Bool)

(declare-fun res!592877 () Bool)

(assert (=> b!1319289 (=> (not res!592877) (not e!845578))))

(assert (=> b!1319289 (= res!592877 (<= (- (height!628 (left!11478 (c!216256 lt!434769))) (height!628 (right!11808 (c!216256 lt!434769)))) 1))))

(assert (= (and d!372512 (not res!592876)) b!1319286))

(assert (= (and b!1319286 res!592881) b!1319289))

(assert (= (and b!1319289 res!592877) b!1319280))

(assert (= (and b!1319280 res!592872) b!1319282))

(assert (= (and b!1319282 res!592874) b!1319288))

(assert (= (and b!1319288 res!592879) b!1319284))

(declare-fun m!1474461 () Bool)

(assert (=> b!1319284 m!1474461))

(declare-fun m!1474463 () Bool)

(assert (=> b!1319288 m!1474463))

(declare-fun m!1474465 () Bool)

(assert (=> b!1319289 m!1474465))

(declare-fun m!1474467 () Bool)

(assert (=> b!1319289 m!1474467))

(declare-fun m!1474469 () Bool)

(assert (=> b!1319282 m!1474469))

(declare-fun m!1474471 () Bool)

(assert (=> b!1319280 m!1474471))

(assert (=> b!1319286 m!1474465))

(assert (=> b!1319286 m!1474467))

(assert (=> b!1317910 d!372512))

(declare-fun d!372518 () Bool)

(declare-fun nullableFct!265 (Regex!3625) Bool)

(assert (=> d!372518 (= (nullable!1149 (regex!2311 (rule!4054 t1!34))) (nullableFct!265 (regex!2311 (rule!4054 t1!34))))))

(declare-fun bs!330847 () Bool)

(assert (= bs!330847 d!372518))

(declare-fun m!1474475 () Bool)

(assert (=> bs!330847 m!1474475))

(assert (=> b!1318059 d!372518))

(declare-fun d!372522 () Bool)

(assert (=> d!372522 (= (list!5035 lt!434872) (list!5038 (c!216256 lt!434872)))))

(declare-fun bs!330848 () Bool)

(assert (= bs!330848 d!372522))

(declare-fun m!1474477 () Bool)

(assert (=> bs!330848 m!1474477))

(assert (=> d!371884 d!372522))

(declare-fun d!372524 () Bool)

(declare-fun e!845596 () Bool)

(assert (=> d!372524 e!845596))

(declare-fun res!592890 () Bool)

(assert (=> d!372524 (=> (not res!592890) (not e!845596))))

(declare-fun lt!435216 () BalanceConc!8726)

(assert (=> d!372524 (= res!592890 (= (list!5035 lt!435216) (Cons!13357 t2!34 Nil!13357)))))

(declare-fun choose!8071 (Token!4284) BalanceConc!8726)

(assert (=> d!372524 (= lt!435216 (choose!8071 t2!34))))

(assert (=> d!372524 (= (singleton!386 t2!34) lt!435216)))

(declare-fun b!1319308 () Bool)

(assert (=> b!1319308 (= e!845596 (isBalanced!1280 (c!216256 lt!435216)))))

(assert (= (and d!372524 res!592890) b!1319308))

(declare-fun m!1474503 () Bool)

(assert (=> d!372524 m!1474503))

(declare-fun m!1474505 () Bool)

(assert (=> d!372524 m!1474505))

(declare-fun m!1474507 () Bool)

(assert (=> b!1319308 m!1474507))

(assert (=> d!371884 d!372524))

(declare-fun bm!89607 () Bool)

(declare-fun call!89612 () Bool)

(declare-fun call!89614 () Bool)

(assert (=> bm!89607 (= call!89612 call!89614)))

(declare-fun b!1319311 () Bool)

(declare-fun e!845602 () Bool)

(assert (=> b!1319311 (= e!845602 call!89612)))

(declare-fun b!1319312 () Bool)

(declare-fun e!845600 () Bool)

(declare-fun e!845603 () Bool)

(assert (=> b!1319312 (= e!845600 e!845603)))

(declare-fun res!592893 () Bool)

(assert (=> b!1319312 (= res!592893 (not (nullable!1149 (reg!3954 lt!434883))))))

(assert (=> b!1319312 (=> (not res!592893) (not e!845603))))

(declare-fun b!1319313 () Bool)

(declare-fun res!592892 () Bool)

(assert (=> b!1319313 (=> (not res!592892) (not e!845602))))

(declare-fun call!89613 () Bool)

(assert (=> b!1319313 (= res!592892 call!89613)))

(declare-fun e!845601 () Bool)

(assert (=> b!1319313 (= e!845601 e!845602)))

(declare-fun b!1319314 () Bool)

(declare-fun res!592895 () Bool)

(declare-fun e!845598 () Bool)

(assert (=> b!1319314 (=> res!592895 e!845598)))

(assert (=> b!1319314 (= res!592895 (not ((_ is Concat!6026) lt!434883)))))

(assert (=> b!1319314 (= e!845601 e!845598)))

(declare-fun b!1319315 () Bool)

(declare-fun e!845604 () Bool)

(assert (=> b!1319315 (= e!845604 call!89612)))

(declare-fun bm!89609 () Bool)

(declare-fun c!216602 () Bool)

(declare-fun c!216603 () Bool)

(assert (=> bm!89609 (= call!89614 (validRegex!1551 (ite c!216602 (reg!3954 lt!434883) (ite c!216603 (regTwo!7763 lt!434883) (regTwo!7762 lt!434883)))))))

(declare-fun b!1319316 () Bool)

(declare-fun e!845599 () Bool)

(assert (=> b!1319316 (= e!845599 e!845600)))

(assert (=> b!1319316 (= c!216602 ((_ is Star!3625) lt!434883))))

(declare-fun b!1319317 () Bool)

(assert (=> b!1319317 (= e!845603 call!89614)))

(declare-fun b!1319318 () Bool)

(assert (=> b!1319318 (= e!845598 e!845604)))

(declare-fun res!592894 () Bool)

(assert (=> b!1319318 (=> (not res!592894) (not e!845604))))

(assert (=> b!1319318 (= res!592894 call!89613)))

(declare-fun b!1319319 () Bool)

(assert (=> b!1319319 (= e!845600 e!845601)))

(assert (=> b!1319319 (= c!216603 ((_ is Union!3625) lt!434883))))

(declare-fun bm!89608 () Bool)

(assert (=> bm!89608 (= call!89613 (validRegex!1551 (ite c!216603 (regOne!7763 lt!434883) (regOne!7762 lt!434883))))))

(declare-fun d!372540 () Bool)

(declare-fun res!592891 () Bool)

(assert (=> d!372540 (=> res!592891 e!845599)))

(assert (=> d!372540 (= res!592891 ((_ is ElementMatch!3625) lt!434883))))

(assert (=> d!372540 (= (validRegex!1551 lt!434883) e!845599)))

(assert (= (and d!372540 (not res!592891)) b!1319316))

(assert (= (and b!1319316 c!216602) b!1319312))

(assert (= (and b!1319316 (not c!216602)) b!1319319))

(assert (= (and b!1319312 res!592893) b!1319317))

(assert (= (and b!1319319 c!216603) b!1319313))

(assert (= (and b!1319319 (not c!216603)) b!1319314))

(assert (= (and b!1319313 res!592892) b!1319311))

(assert (= (and b!1319314 (not res!592895)) b!1319318))

(assert (= (and b!1319318 res!592894) b!1319315))

(assert (= (or b!1319313 b!1319318) bm!89608))

(assert (= (or b!1319311 b!1319315) bm!89607))

(assert (= (or b!1319317 bm!89607) bm!89609))

(declare-fun m!1474513 () Bool)

(assert (=> b!1319312 m!1474513))

(declare-fun m!1474515 () Bool)

(assert (=> bm!89609 m!1474515))

(declare-fun m!1474517 () Bool)

(assert (=> bm!89608 m!1474517))

(assert (=> bs!330721 d!372540))

(declare-fun d!372546 () Bool)

(declare-fun lt!435219 () Bool)

(assert (=> d!372546 (= lt!435219 (select (content!1883 (t!118435 lt!434735)) lt!434730))))

(declare-fun e!845607 () Bool)

(assert (=> d!372546 (= lt!435219 e!845607)))

(declare-fun res!592896 () Bool)

(assert (=> d!372546 (=> (not res!592896) (not e!845607))))

(assert (=> d!372546 (= res!592896 ((_ is Cons!13354) (t!118435 lt!434735)))))

(assert (=> d!372546 (= (contains!2348 (t!118435 lt!434735) lt!434730) lt!435219)))

(declare-fun b!1319322 () Bool)

(declare-fun e!845606 () Bool)

(assert (=> b!1319322 (= e!845607 e!845606)))

(declare-fun res!592897 () Bool)

(assert (=> b!1319322 (=> res!592897 e!845606)))

(assert (=> b!1319322 (= res!592897 (= (h!18755 (t!118435 lt!434735)) lt!434730))))

(declare-fun b!1319323 () Bool)

(assert (=> b!1319323 (= e!845606 (contains!2348 (t!118435 (t!118435 lt!434735)) lt!434730))))

(assert (= (and d!372546 res!592896) b!1319322))

(assert (= (and b!1319322 (not res!592897)) b!1319323))

(assert (=> d!372546 m!1473883))

(declare-fun m!1474519 () Bool)

(assert (=> d!372546 m!1474519))

(declare-fun m!1474521 () Bool)

(assert (=> b!1319323 m!1474521))

(assert (=> b!1318224 d!372546))

(declare-fun b!1319324 () Bool)

(declare-fun e!845608 () List!13420)

(assert (=> b!1319324 (= e!845608 Nil!13354)))

(declare-fun b!1319326 () Bool)

(declare-fun e!845609 () List!13420)

(assert (=> b!1319326 (= e!845609 (list!5042 (xs!7107 (c!216255 lt!434720))))))

(declare-fun b!1319327 () Bool)

(assert (=> b!1319327 (= e!845609 (++!3406 (list!5039 (left!11477 (c!216255 lt!434720))) (list!5039 (right!11807 (c!216255 lt!434720)))))))

(declare-fun d!372548 () Bool)

(declare-fun c!216605 () Bool)

(assert (=> d!372548 (= c!216605 ((_ is Empty!4392) (c!216255 lt!434720)))))

(assert (=> d!372548 (= (list!5039 (c!216255 lt!434720)) e!845608)))

(declare-fun b!1319325 () Bool)

(assert (=> b!1319325 (= e!845608 e!845609)))

(declare-fun c!216606 () Bool)

(assert (=> b!1319325 (= c!216606 ((_ is Leaf!6744) (c!216255 lt!434720)))))

(assert (= (and d!372548 c!216605) b!1319324))

(assert (= (and d!372548 (not c!216605)) b!1319325))

(assert (= (and b!1319325 c!216606) b!1319326))

(assert (= (and b!1319325 (not c!216606)) b!1319327))

(declare-fun m!1474523 () Bool)

(assert (=> b!1319326 m!1474523))

(assert (=> b!1319327 m!1474351))

(assert (=> b!1319327 m!1474353))

(assert (=> b!1319327 m!1474351))

(assert (=> b!1319327 m!1474353))

(declare-fun m!1474525 () Bool)

(assert (=> b!1319327 m!1474525))

(assert (=> d!371914 d!372548))

(declare-fun d!372550 () Bool)

(assert (=> d!372550 (= (isEmpty!7930 lt!434728) ((_ is Nil!13354) lt!434728))))

(assert (=> d!371922 d!372550))

(declare-fun d!372552 () Bool)

(assert (=> d!372552 (= ($colon$colon!153 (map!2933 (t!118437 rules!2550) lambda!53720) (dynLambda!5847 lambda!53720 (h!18757 rules!2550))) (Cons!13358 (dynLambda!5847 lambda!53720 (h!18757 rules!2550)) (map!2933 (t!118437 rules!2550) lambda!53720)))))

(assert (=> b!1318153 d!372552))

(declare-fun d!372554 () Bool)

(declare-fun lt!435220 () List!13424)

(assert (=> d!372554 (= (size!10878 lt!435220) (size!10879 (t!118437 rules!2550)))))

(declare-fun e!845610 () List!13424)

(assert (=> d!372554 (= lt!435220 e!845610)))

(declare-fun c!216607 () Bool)

(assert (=> d!372554 (= c!216607 ((_ is Nil!13356) (t!118437 rules!2550)))))

(assert (=> d!372554 (= (map!2933 (t!118437 rules!2550) lambda!53720) lt!435220)))

(declare-fun b!1319328 () Bool)

(assert (=> b!1319328 (= e!845610 Nil!13358)))

(declare-fun b!1319329 () Bool)

(assert (=> b!1319329 (= e!845610 ($colon$colon!153 (map!2933 (t!118437 (t!118437 rules!2550)) lambda!53720) (dynLambda!5847 lambda!53720 (h!18757 (t!118437 rules!2550)))))))

(assert (= (and d!372554 c!216607) b!1319328))

(assert (= (and d!372554 (not c!216607)) b!1319329))

(declare-fun b_lambda!38387 () Bool)

(assert (=> (not b_lambda!38387) (not b!1319329)))

(declare-fun m!1474527 () Bool)

(assert (=> d!372554 m!1474527))

(declare-fun m!1474529 () Bool)

(assert (=> d!372554 m!1474529))

(declare-fun m!1474531 () Bool)

(assert (=> b!1319329 m!1474531))

(declare-fun m!1474533 () Bool)

(assert (=> b!1319329 m!1474533))

(assert (=> b!1319329 m!1474531))

(assert (=> b!1319329 m!1474533))

(declare-fun m!1474535 () Bool)

(assert (=> b!1319329 m!1474535))

(assert (=> b!1318153 d!372554))

(declare-fun b!1319330 () Bool)

(declare-fun e!845611 () List!13420)

(assert (=> b!1319330 (= e!845611 (_2!7377 (get!4260 lt!434901)))))

(declare-fun b!1319333 () Bool)

(declare-fun e!845612 () Bool)

(declare-fun lt!435221 () List!13420)

(assert (=> b!1319333 (= e!845612 (or (not (= (_2!7377 (get!4260 lt!434901)) Nil!13354)) (= lt!435221 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun b!1319332 () Bool)

(declare-fun res!592899 () Bool)

(assert (=> b!1319332 (=> (not res!592899) (not e!845612))))

(assert (=> b!1319332 (= res!592899 (= (size!10874 lt!435221) (+ (size!10874 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) (size!10874 (_2!7377 (get!4260 lt!434901))))))))

(declare-fun b!1319331 () Bool)

(assert (=> b!1319331 (= e!845611 (Cons!13354 (h!18755 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) (++!3406 (t!118435 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) (_2!7377 (get!4260 lt!434901)))))))

(declare-fun d!372556 () Bool)

(assert (=> d!372556 e!845612))

(declare-fun res!592898 () Bool)

(assert (=> d!372556 (=> (not res!592898) (not e!845612))))

(assert (=> d!372556 (= res!592898 (= (content!1883 lt!435221) ((_ map or) (content!1883 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) (content!1883 (_2!7377 (get!4260 lt!434901))))))))

(assert (=> d!372556 (= lt!435221 e!845611)))

(declare-fun c!216608 () Bool)

(assert (=> d!372556 (= c!216608 ((_ is Nil!13354) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))))))

(assert (=> d!372556 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))) (_2!7377 (get!4260 lt!434901))) lt!435221)))

(assert (= (and d!372556 c!216608) b!1319330))

(assert (= (and d!372556 (not c!216608)) b!1319331))

(assert (= (and d!372556 res!592898) b!1319332))

(assert (= (and b!1319332 res!592899) b!1319333))

(declare-fun m!1474537 () Bool)

(assert (=> b!1319332 m!1474537))

(assert (=> b!1319332 m!1472909))

(declare-fun m!1474539 () Bool)

(assert (=> b!1319332 m!1474539))

(assert (=> b!1319332 m!1472915))

(declare-fun m!1474541 () Bool)

(assert (=> b!1319331 m!1474541))

(declare-fun m!1474543 () Bool)

(assert (=> d!372556 m!1474543))

(assert (=> d!372556 m!1472909))

(declare-fun m!1474545 () Bool)

(assert (=> d!372556 m!1474545))

(declare-fun m!1474547 () Bool)

(assert (=> d!372556 m!1474547))

(assert (=> b!1318207 d!372556))

(declare-fun d!372558 () Bool)

(assert (=> d!372558 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))) (list!5039 (c!216255 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun bs!330855 () Bool)

(assert (= bs!330855 d!372558))

(declare-fun m!1474549 () Bool)

(assert (=> bs!330855 m!1474549))

(assert (=> b!1318207 d!372558))

(declare-fun d!372560 () Bool)

(declare-fun lt!435226 () BalanceConc!8724)

(assert (=> d!372560 (= (list!5034 lt!435226) (originalCharacters!3173 (_1!7377 (get!4260 lt!434901))))))

(assert (=> d!372560 (= lt!435226 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))) (value!75496 (_1!7377 (get!4260 lt!434901)))))))

(assert (=> d!372560 (= (charsOf!1283 (_1!7377 (get!4260 lt!434901))) lt!435226)))

(declare-fun b_lambda!38389 () Bool)

(assert (=> (not b_lambda!38389) (not d!372560)))

(declare-fun tb!70073 () Bool)

(declare-fun t!118540 () Bool)

(assert (=> (and b!1317739 (= (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118540) tb!70073))

(declare-fun b!1319338 () Bool)

(declare-fun e!845615 () Bool)

(declare-fun tp!383272 () Bool)

(assert (=> b!1319338 (= e!845615 (and (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))) (value!75496 (_1!7377 (get!4260 lt!434901)))))) tp!383272))))

(declare-fun result!85034 () Bool)

(assert (=> tb!70073 (= result!85034 (and (inv!17736 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))) (value!75496 (_1!7377 (get!4260 lt!434901))))) e!845615))))

(assert (= tb!70073 b!1319338))

(declare-fun m!1474551 () Bool)

(assert (=> b!1319338 m!1474551))

(declare-fun m!1474553 () Bool)

(assert (=> tb!70073 m!1474553))

(assert (=> d!372560 t!118540))

(declare-fun b_and!88139 () Bool)

(assert (= b_and!88131 (and (=> t!118540 result!85034) b_and!88139)))

(declare-fun t!118542 () Bool)

(declare-fun tb!70075 () Bool)

(assert (=> (and b!1317747 (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118542) tb!70075))

(declare-fun result!85036 () Bool)

(assert (= result!85036 result!85034))

(assert (=> d!372560 t!118542))

(declare-fun b_and!88141 () Bool)

(assert (= b_and!88133 (and (=> t!118542 result!85036) b_and!88141)))

(declare-fun t!118544 () Bool)

(declare-fun tb!70077 () Bool)

(assert (=> (and b!1317736 (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118544) tb!70077))

(declare-fun result!85038 () Bool)

(assert (= result!85038 result!85034))

(assert (=> d!372560 t!118544))

(declare-fun b_and!88143 () Bool)

(assert (= b_and!88135 (and (=> t!118544 result!85038) b_and!88143)))

(declare-fun tb!70079 () Bool)

(declare-fun t!118546 () Bool)

(assert (=> (and b!1318543 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118546) tb!70079))

(declare-fun result!85040 () Bool)

(assert (= result!85040 result!85034))

(assert (=> d!372560 t!118546))

(declare-fun b_and!88145 () Bool)

(assert (= b_and!88137 (and (=> t!118546 result!85040) b_and!88145)))

(declare-fun m!1474555 () Bool)

(assert (=> d!372560 m!1474555))

(declare-fun m!1474557 () Bool)

(assert (=> d!372560 m!1474557))

(assert (=> b!1318207 d!372560))

(assert (=> b!1318207 d!372292))

(declare-fun lt!435233 () BalanceConc!8724)

(declare-fun e!845631 () Bool)

(declare-fun b!1319372 () Bool)

(assert (=> b!1319372 (= e!845631 (= (list!5034 lt!435233) (++!3406 (list!5034 (charsOf!1283 t1!34)) (list!5034 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))))))

(declare-fun d!372562 () Bool)

(assert (=> d!372562 e!845631))

(declare-fun res!592915 () Bool)

(assert (=> d!372562 (=> (not res!592915) (not e!845631))))

(declare-fun appendAssocInst!260 (Conc!4392 Conc!4392) Bool)

(assert (=> d!372562 (= res!592915 (appendAssocInst!260 (c!216255 (charsOf!1283 t1!34)) (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0)))))))

(declare-fun ++!3410 (Conc!4392 Conc!4392) Conc!4392)

(assert (=> d!372562 (= lt!435233 (BalanceConc!8725 (++!3410 (c!216255 (charsOf!1283 t1!34)) (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))))))

(assert (=> d!372562 (= (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))) lt!435233)))

(declare-fun b!1319370 () Bool)

(declare-fun res!592912 () Bool)

(assert (=> b!1319370 (=> (not res!592912) (not e!845631))))

(declare-fun height!629 (Conc!4392) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1319370 (= res!592912 (<= (height!629 (++!3410 (c!216255 (charsOf!1283 t1!34)) (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))) (+ (max!0 (height!629 (c!216255 (charsOf!1283 t1!34))) (height!629 (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))) 1)))))

(declare-fun b!1319369 () Bool)

(declare-fun res!592913 () Bool)

(assert (=> b!1319369 (=> (not res!592913) (not e!845631))))

(declare-fun isBalanced!1282 (Conc!4392) Bool)

(assert (=> b!1319369 (= res!592913 (isBalanced!1282 (++!3410 (c!216255 (charsOf!1283 t1!34)) (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))))))

(declare-fun b!1319371 () Bool)

(declare-fun res!592914 () Bool)

(assert (=> b!1319371 (=> (not res!592914) (not e!845631))))

(assert (=> b!1319371 (= res!592914 (>= (height!629 (++!3410 (c!216255 (charsOf!1283 t1!34)) (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))) (max!0 (height!629 (c!216255 (charsOf!1283 t1!34))) (height!629 (c!216255 (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0)))))))))

(assert (= (and d!372562 res!592915) b!1319369))

(assert (= (and b!1319369 res!592913) b!1319370))

(assert (= (and b!1319370 res!592912) b!1319371))

(assert (= (and b!1319371 res!592914) b!1319372))

(declare-fun m!1474565 () Bool)

(assert (=> b!1319370 m!1474565))

(declare-fun m!1474567 () Bool)

(assert (=> b!1319370 m!1474567))

(declare-fun m!1474569 () Bool)

(assert (=> b!1319370 m!1474569))

(declare-fun m!1474571 () Bool)

(assert (=> b!1319370 m!1474571))

(declare-fun m!1474573 () Bool)

(assert (=> b!1319370 m!1474573))

(assert (=> b!1319370 m!1474565))

(assert (=> b!1319370 m!1474569))

(assert (=> b!1319370 m!1474571))

(declare-fun m!1474575 () Bool)

(assert (=> b!1319372 m!1474575))

(assert (=> b!1319372 m!1472347))

(declare-fun m!1474577 () Bool)

(assert (=> b!1319372 m!1474577))

(assert (=> b!1319372 m!1472941))

(declare-fun m!1474579 () Bool)

(assert (=> b!1319372 m!1474579))

(assert (=> b!1319372 m!1474577))

(assert (=> b!1319372 m!1474579))

(declare-fun m!1474581 () Bool)

(assert (=> b!1319372 m!1474581))

(assert (=> b!1319369 m!1474565))

(assert (=> b!1319369 m!1474565))

(declare-fun m!1474583 () Bool)

(assert (=> b!1319369 m!1474583))

(declare-fun m!1474585 () Bool)

(assert (=> d!372562 m!1474585))

(assert (=> d!372562 m!1474565))

(assert (=> b!1319371 m!1474565))

(assert (=> b!1319371 m!1474567))

(assert (=> b!1319371 m!1474569))

(assert (=> b!1319371 m!1474571))

(assert (=> b!1319371 m!1474573))

(assert (=> b!1319371 m!1474565))

(assert (=> b!1319371 m!1474569))

(assert (=> b!1319371 m!1474571))

(assert (=> d!371908 d!372562))

(declare-fun d!372566 () Bool)

(declare-fun lt!435282 () Bool)

(assert (=> d!372566 (= lt!435282 (prefixMatch!138 (rulesRegex!196 thiss!19762 rules!2550) (list!5034 (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))))))))

(declare-datatypes ((Context!1164 0))(
  ( (Context!1165 (exprs!1082 List!13424)) )
))
(declare-fun prefixMatchZipperSequence!181 ((InoxSet Context!1164) BalanceConc!8724 Int) Bool)

(declare-fun focus!73 (Regex!3625) (InoxSet Context!1164))

(assert (=> d!372566 (= lt!435282 (prefixMatchZipperSequence!181 (focus!73 (rulesRegex!196 thiss!19762 rules!2550)) (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))) 0))))

(declare-fun lt!435276 () Unit!19422)

(declare-fun lt!435283 () Unit!19422)

(assert (=> d!372566 (= lt!435276 lt!435283)))

(declare-fun lt!435285 () List!13420)

(declare-fun lt!435279 () (InoxSet Context!1164))

(declare-fun prefixMatchZipper!53 ((InoxSet Context!1164) List!13420) Bool)

(assert (=> d!372566 (= (prefixMatch!138 (rulesRegex!196 thiss!19762 rules!2550) lt!435285) (prefixMatchZipper!53 lt!435279 lt!435285))))

(declare-datatypes ((List!13427 0))(
  ( (Nil!13361) (Cons!13361 (h!18762 Context!1164) (t!118584 List!13427)) )
))
(declare-fun lt!435277 () List!13427)

(declare-fun prefixMatchZipperRegexEquiv!53 ((InoxSet Context!1164) List!13427 Regex!3625 List!13420) Unit!19422)

(assert (=> d!372566 (= lt!435283 (prefixMatchZipperRegexEquiv!53 lt!435279 lt!435277 (rulesRegex!196 thiss!19762 rules!2550) lt!435285))))

(assert (=> d!372566 (= lt!435285 (list!5034 (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0)))))))

(declare-fun toList!737 ((InoxSet Context!1164)) List!13427)

(assert (=> d!372566 (= lt!435277 (toList!737 (focus!73 (rulesRegex!196 thiss!19762 rules!2550))))))

(assert (=> d!372566 (= lt!435279 (focus!73 (rulesRegex!196 thiss!19762 rules!2550)))))

(declare-fun lt!435281 () Unit!19422)

(declare-fun lt!435278 () Unit!19422)

(assert (=> d!372566 (= lt!435281 lt!435278)))

(declare-fun lt!435280 () Int)

(declare-fun lt!435284 () (InoxSet Context!1164))

(declare-fun dropList!373 (BalanceConc!8724 Int) List!13420)

(assert (=> d!372566 (= (prefixMatchZipper!53 lt!435284 (dropList!373 (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))) lt!435280)) (prefixMatchZipperSequence!181 lt!435284 (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))) lt!435280))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!53 ((InoxSet Context!1164) BalanceConc!8724 Int) Unit!19422)

(assert (=> d!372566 (= lt!435278 (lemmaprefixMatchZipperSequenceEquivalent!53 lt!435284 (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0))) lt!435280))))

(assert (=> d!372566 (= lt!435280 0)))

(assert (=> d!372566 (= lt!435284 (focus!73 (rulesRegex!196 thiss!19762 rules!2550)))))

(assert (=> d!372566 (validRegex!1551 (rulesRegex!196 thiss!19762 rules!2550))))

(assert (=> d!372566 (= (prefixMatchZipperSequence!180 (rulesRegex!196 thiss!19762 rules!2550) (++!3408 (charsOf!1283 t1!34) (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0)))) lt!435282)))

(declare-fun bs!330878 () Bool)

(assert (= bs!330878 d!372566))

(assert (=> bs!330878 m!1472355))

(declare-fun m!1474735 () Bool)

(assert (=> bs!330878 m!1474735))

(declare-fun m!1474737 () Bool)

(assert (=> bs!330878 m!1474737))

(assert (=> bs!330878 m!1472937))

(declare-fun m!1474739 () Bool)

(assert (=> bs!330878 m!1474739))

(assert (=> bs!330878 m!1472937))

(declare-fun m!1474741 () Bool)

(assert (=> bs!330878 m!1474741))

(assert (=> bs!330878 m!1472355))

(declare-fun m!1474743 () Bool)

(assert (=> bs!330878 m!1474743))

(assert (=> bs!330878 m!1474743))

(declare-fun m!1474745 () Bool)

(assert (=> bs!330878 m!1474745))

(assert (=> bs!330878 m!1472937))

(declare-fun m!1474747 () Bool)

(assert (=> bs!330878 m!1474747))

(assert (=> bs!330878 m!1474743))

(assert (=> bs!330878 m!1472937))

(declare-fun m!1474749 () Bool)

(assert (=> bs!330878 m!1474749))

(assert (=> bs!330878 m!1472355))

(assert (=> bs!330878 m!1474747))

(declare-fun m!1474751 () Bool)

(assert (=> bs!330878 m!1474751))

(assert (=> bs!330878 m!1472355))

(declare-fun m!1474753 () Bool)

(assert (=> bs!330878 m!1474753))

(assert (=> bs!330878 m!1474739))

(declare-fun m!1474755 () Bool)

(assert (=> bs!330878 m!1474755))

(assert (=> bs!330878 m!1472937))

(declare-fun m!1474757 () Bool)

(assert (=> bs!330878 m!1474757))

(assert (=> bs!330878 m!1472355))

(declare-fun m!1474759 () Bool)

(assert (=> bs!330878 m!1474759))

(assert (=> d!371908 d!372566))

(declare-fun d!372614 () Bool)

(declare-fun e!845686 () Bool)

(assert (=> d!372614 e!845686))

(declare-fun res!592981 () Bool)

(assert (=> d!372614 (=> (not res!592981) (not e!845686))))

(declare-fun lt!435288 () BalanceConc!8724)

(assert (=> d!372614 (= res!592981 (= (list!5034 lt!435288) (Cons!13354 (apply!3043 (charsOf!1283 t2!34) 0) Nil!13354)))))

(declare-fun singleton!387 (C!7540) BalanceConc!8724)

(assert (=> d!372614 (= lt!435288 (singleton!387 (apply!3043 (charsOf!1283 t2!34) 0)))))

(assert (=> d!372614 (= (singletonSeq!894 (apply!3043 (charsOf!1283 t2!34) 0)) lt!435288)))

(declare-fun b!1319474 () Bool)

(assert (=> b!1319474 (= e!845686 (isBalanced!1282 (c!216255 lt!435288)))))

(assert (= (and d!372614 res!592981) b!1319474))

(declare-fun m!1474761 () Bool)

(assert (=> d!372614 m!1474761))

(assert (=> d!372614 m!1472943))

(declare-fun m!1474763 () Bool)

(assert (=> d!372614 m!1474763))

(declare-fun m!1474765 () Bool)

(assert (=> b!1319474 m!1474765))

(assert (=> d!371908 d!372614))

(assert (=> d!371908 d!371944))

(declare-fun d!372616 () Bool)

(declare-fun lt!435289 () C!7540)

(assert (=> d!372616 (= lt!435289 (apply!3049 (list!5034 (charsOf!1283 t2!34)) 0))))

(assert (=> d!372616 (= lt!435289 (apply!3050 (c!216255 (charsOf!1283 t2!34)) 0))))

(declare-fun e!845687 () Bool)

(assert (=> d!372616 e!845687))

(declare-fun res!592982 () Bool)

(assert (=> d!372616 (=> (not res!592982) (not e!845687))))

(assert (=> d!372616 (= res!592982 (<= 0 0))))

(assert (=> d!372616 (= (apply!3043 (charsOf!1283 t2!34) 0) lt!435289)))

(declare-fun b!1319475 () Bool)

(assert (=> b!1319475 (= e!845687 (< 0 (size!10867 (charsOf!1283 t2!34))))))

(assert (= (and d!372616 res!592982) b!1319475))

(assert (=> d!372616 m!1472381))

(declare-fun m!1474767 () Bool)

(assert (=> d!372616 m!1474767))

(assert (=> d!372616 m!1474767))

(declare-fun m!1474769 () Bool)

(assert (=> d!372616 m!1474769))

(declare-fun m!1474771 () Bool)

(assert (=> d!372616 m!1474771))

(assert (=> b!1319475 m!1472381))

(declare-fun m!1474773 () Bool)

(assert (=> b!1319475 m!1474773))

(assert (=> d!371908 d!372616))

(assert (=> d!371908 d!371942))

(assert (=> d!371908 d!371874))

(declare-fun d!372618 () Bool)

(assert (=> d!372618 (= (inv!17736 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))) (isBalanced!1282 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))))

(declare-fun bs!330879 () Bool)

(assert (= bs!330879 d!372618))

(declare-fun m!1474775 () Bool)

(assert (=> bs!330879 m!1474775))

(assert (=> tb!70005 d!372618))

(assert (=> b!1318477 d!372300))

(declare-fun d!372620 () Bool)

(assert (=> d!372620 (= (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434973))))) (dynLambda!5856 (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434973))))))))

(declare-fun b_lambda!38397 () Bool)

(assert (=> (not b_lambda!38397) (not d!372620)))

(declare-fun tb!70081 () Bool)

(declare-fun t!118550 () Bool)

(assert (=> (and b!1317739 (= (toValue!3538 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118550) tb!70081))

(declare-fun result!85042 () Bool)

(assert (=> tb!70081 (= result!85042 (inv!21 (dynLambda!5856 (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973))))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun m!1474777 () Bool)

(assert (=> tb!70081 m!1474777))

(assert (=> d!372620 t!118550))

(declare-fun b_and!88147 () Bool)

(assert (= b_and!88123 (and (=> t!118550 result!85042) b_and!88147)))

(declare-fun tb!70083 () Bool)

(declare-fun t!118552 () Bool)

(assert (=> (and b!1317747 (= (toValue!3538 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118552) tb!70083))

(declare-fun result!85044 () Bool)

(assert (= result!85044 result!85042))

(assert (=> d!372620 t!118552))

(declare-fun b_and!88149 () Bool)

(assert (= b_and!88125 (and (=> t!118552 result!85044) b_and!88149)))

(declare-fun tb!70085 () Bool)

(declare-fun t!118554 () Bool)

(assert (=> (and b!1317736 (= (toValue!3538 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118554) tb!70085))

(declare-fun result!85046 () Bool)

(assert (= result!85046 result!85042))

(assert (=> d!372620 t!118554))

(declare-fun b_and!88151 () Bool)

(assert (= b_and!88127 (and (=> t!118554 result!85046) b_and!88151)))

(declare-fun t!118556 () Bool)

(declare-fun tb!70087 () Bool)

(assert (=> (and b!1318543 (= (toValue!3538 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118556) tb!70087))

(declare-fun result!85048 () Bool)

(assert (= result!85048 result!85042))

(assert (=> d!372620 t!118556))

(declare-fun b_and!88153 () Bool)

(assert (= b_and!88129 (and (=> t!118556 result!85048) b_and!88153)))

(assert (=> d!372620 m!1473299))

(declare-fun m!1474779 () Bool)

(assert (=> d!372620 m!1474779))

(assert (=> b!1318477 d!372620))

(declare-fun d!372622 () Bool)

(assert (=> d!372622 (= (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!434973)))) (fromListB!708 (originalCharacters!3173 (_1!7377 (get!4260 lt!434973)))))))

(declare-fun bs!330880 () Bool)

(assert (= bs!330880 d!372622))

(declare-fun m!1474781 () Bool)

(assert (=> bs!330880 m!1474781))

(assert (=> b!1318477 d!372622))

(assert (=> d!371776 d!371856))

(assert (=> d!371970 d!372504))

(declare-fun d!372624 () Bool)

(declare-fun c!216641 () Bool)

(assert (=> d!372624 (= c!216641 ((_ is Nil!13354) lt!434728))))

(declare-fun e!845689 () (InoxSet C!7540))

(assert (=> d!372624 (= (content!1883 lt!434728) e!845689)))

(declare-fun b!1319476 () Bool)

(assert (=> b!1319476 (= e!845689 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1319477 () Bool)

(assert (=> b!1319477 (= e!845689 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 lt!434728) true) (content!1883 (t!118435 lt!434728))))))

(assert (= (and d!372624 c!216641) b!1319476))

(assert (= (and d!372624 (not c!216641)) b!1319477))

(declare-fun m!1474783 () Bool)

(assert (=> b!1319477 m!1474783))

(declare-fun m!1474785 () Bool)

(assert (=> b!1319477 m!1474785))

(assert (=> d!372012 d!372624))

(declare-fun d!372626 () Bool)

(declare-fun lt!435290 () Int)

(assert (=> d!372626 (= lt!435290 (size!10875 (list!5035 (_1!7375 lt!434821))))))

(assert (=> d!372626 (= lt!435290 (size!10880 (c!216256 (_1!7375 lt!434821))))))

(assert (=> d!372626 (= (size!10870 (_1!7375 lt!434821)) lt!435290)))

(declare-fun bs!330881 () Bool)

(assert (= bs!330881 d!372626))

(assert (=> bs!330881 m!1472687))

(assert (=> bs!330881 m!1472687))

(declare-fun m!1474787 () Bool)

(assert (=> bs!330881 m!1474787))

(declare-fun m!1474789 () Bool)

(assert (=> bs!330881 m!1474789))

(assert (=> d!371794 d!372626))

(declare-fun b!1319556 () Bool)

(declare-fun e!845733 () tuple2!12978)

(assert (=> b!1319556 (= e!845733 (tuple2!12979 (BalanceConc!8727 Empty!4393) lt!434726))))

(declare-fun b!1319557 () Bool)

(declare-datatypes ((tuple2!12986 0))(
  ( (tuple2!12987 (_1!7379 Token!4284) (_2!7379 BalanceConc!8724)) )
))
(declare-datatypes ((Option!2581 0))(
  ( (None!2580) (Some!2580 (v!21153 tuple2!12986)) )
))
(declare-fun lt!435483 () Option!2581)

(declare-fun lt!435482 () tuple2!12978)

(declare-fun lexRec!264 (LexerInterface!2006 List!13422 BalanceConc!8724) tuple2!12978)

(assert (=> b!1319557 (= lt!435482 (lexRec!264 thiss!19762 rules!2550 (_2!7379 (v!21153 lt!435483))))))

(declare-fun e!845731 () tuple2!12978)

(declare-fun prepend!349 (BalanceConc!8726 Token!4284) BalanceConc!8726)

(assert (=> b!1319557 (= e!845731 (tuple2!12979 (prepend!349 (_1!7375 lt!435482) (_1!7379 (v!21153 lt!435483))) (_2!7375 lt!435482)))))

(declare-fun lt!435492 () Option!2581)

(declare-fun b!1319558 () Bool)

(declare-fun lt!435499 () tuple2!12978)

(assert (=> b!1319558 (= lt!435499 (lexRec!264 thiss!19762 rules!2550 (_2!7379 (v!21153 lt!435492))))))

(declare-fun e!845732 () tuple2!12978)

(assert (=> b!1319558 (= e!845732 (tuple2!12979 (prepend!349 (_1!7375 lt!435499) (_1!7379 (v!21153 lt!435492))) (_2!7375 lt!435499)))))

(declare-fun b!1319559 () Bool)

(assert (=> b!1319559 (= e!845731 (tuple2!12979 (BalanceConc!8727 Empty!4393) lt!434726))))

(declare-fun e!845734 () Bool)

(declare-fun b!1319560 () Bool)

(declare-fun lt!435475 () tuple2!12978)

(assert (=> b!1319560 (= e!845734 (= (list!5034 (_2!7375 lt!435475)) (list!5034 (_2!7375 (lexRec!264 thiss!19762 rules!2550 lt!434726)))))))

(declare-fun d!372628 () Bool)

(assert (=> d!372628 e!845734))

(declare-fun res!593007 () Bool)

(assert (=> d!372628 (=> (not res!593007) (not e!845734))))

(assert (=> d!372628 (= res!593007 (= (list!5035 (_1!7375 lt!435475)) (list!5035 (_1!7375 (lexRec!264 thiss!19762 rules!2550 lt!434726)))))))

(assert (=> d!372628 (= lt!435475 e!845733)))

(declare-fun c!216669 () Bool)

(declare-fun lt!435481 () Option!2581)

(assert (=> d!372628 (= c!216669 ((_ is Some!2580) lt!435481))))

(declare-fun maxPrefixZipperSequenceV2!209 (LexerInterface!2006 List!13422 BalanceConc!8724 BalanceConc!8724) Option!2581)

(assert (=> d!372628 (= lt!435481 (maxPrefixZipperSequenceV2!209 thiss!19762 rules!2550 lt!434726 lt!434726))))

(declare-fun lt!435477 () Unit!19422)

(declare-fun lt!435494 () Unit!19422)

(assert (=> d!372628 (= lt!435477 lt!435494)))

(declare-fun lt!435493 () List!13420)

(declare-fun lt!435473 () List!13420)

(declare-fun isSuffix!242 (List!13420 List!13420) Bool)

(assert (=> d!372628 (isSuffix!242 lt!435493 (++!3406 lt!435473 lt!435493))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!220 (List!13420 List!13420) Unit!19422)

(assert (=> d!372628 (= lt!435494 (lemmaConcatTwoListThenFSndIsSuffix!220 lt!435473 lt!435493))))

(assert (=> d!372628 (= lt!435493 (list!5034 lt!434726))))

(assert (=> d!372628 (= lt!435473 (list!5034 (BalanceConc!8725 Empty!4392)))))

(assert (=> d!372628 (= (lexTailRecV2!367 thiss!19762 rules!2550 lt!434726 (BalanceConc!8725 Empty!4392) lt!434726 (BalanceConc!8727 Empty!4393)) lt!435475)))

(declare-fun lt!435491 () BalanceConc!8724)

(declare-fun b!1319561 () Bool)

(declare-fun append!385 (BalanceConc!8726 Token!4284) BalanceConc!8726)

(assert (=> b!1319561 (= e!845733 (lexTailRecV2!367 thiss!19762 rules!2550 lt!434726 lt!435491 (_2!7379 (v!21153 lt!435481)) (append!385 (BalanceConc!8727 Empty!4393) (_1!7379 (v!21153 lt!435481)))))))

(declare-fun lt!435497 () tuple2!12978)

(assert (=> b!1319561 (= lt!435497 (lexRec!264 thiss!19762 rules!2550 (_2!7379 (v!21153 lt!435481))))))

(declare-fun lt!435504 () List!13420)

(assert (=> b!1319561 (= lt!435504 (list!5034 (BalanceConc!8725 Empty!4392)))))

(declare-fun lt!435496 () List!13420)

(assert (=> b!1319561 (= lt!435496 (list!5034 (charsOf!1283 (_1!7379 (v!21153 lt!435481)))))))

(declare-fun lt!435480 () List!13420)

(assert (=> b!1319561 (= lt!435480 (list!5034 (_2!7379 (v!21153 lt!435481))))))

(declare-fun lt!435498 () Unit!19422)

(declare-fun lemmaConcatAssociativity!827 (List!13420 List!13420 List!13420) Unit!19422)

(assert (=> b!1319561 (= lt!435498 (lemmaConcatAssociativity!827 lt!435504 lt!435496 lt!435480))))

(assert (=> b!1319561 (= (++!3406 (++!3406 lt!435504 lt!435496) lt!435480) (++!3406 lt!435504 (++!3406 lt!435496 lt!435480)))))

(declare-fun lt!435474 () Unit!19422)

(assert (=> b!1319561 (= lt!435474 lt!435498)))

(declare-fun maxPrefixZipperSequence!537 (LexerInterface!2006 List!13422 BalanceConc!8724) Option!2581)

(assert (=> b!1319561 (= lt!435483 (maxPrefixZipperSequence!537 thiss!19762 rules!2550 lt!434726))))

(declare-fun c!216671 () Bool)

(assert (=> b!1319561 (= c!216671 ((_ is Some!2580) lt!435483))))

(assert (=> b!1319561 (= (lexRec!264 thiss!19762 rules!2550 lt!434726) e!845731)))

(declare-fun lt!435479 () Unit!19422)

(declare-fun Unit!19429 () Unit!19422)

(assert (=> b!1319561 (= lt!435479 Unit!19429)))

(declare-fun lt!435485 () List!13423)

(assert (=> b!1319561 (= lt!435485 (list!5035 (BalanceConc!8727 Empty!4393)))))

(declare-fun lt!435502 () List!13423)

(assert (=> b!1319561 (= lt!435502 (Cons!13357 (_1!7379 (v!21153 lt!435481)) Nil!13357))))

(declare-fun lt!435478 () List!13423)

(assert (=> b!1319561 (= lt!435478 (list!5035 (_1!7375 lt!435497)))))

(declare-fun lt!435490 () Unit!19422)

(declare-fun lemmaConcatAssociativity!828 (List!13423 List!13423 List!13423) Unit!19422)

(assert (=> b!1319561 (= lt!435490 (lemmaConcatAssociativity!828 lt!435485 lt!435502 lt!435478))))

(declare-fun ++!3411 (List!13423 List!13423) List!13423)

(assert (=> b!1319561 (= (++!3411 (++!3411 lt!435485 lt!435502) lt!435478) (++!3411 lt!435485 (++!3411 lt!435502 lt!435478)))))

(declare-fun lt!435487 () Unit!19422)

(assert (=> b!1319561 (= lt!435487 lt!435490)))

(declare-fun lt!435495 () List!13420)

(assert (=> b!1319561 (= lt!435495 (++!3406 (list!5034 (BalanceConc!8725 Empty!4392)) (list!5034 (charsOf!1283 (_1!7379 (v!21153 lt!435481))))))))

(declare-fun lt!435503 () List!13420)

(assert (=> b!1319561 (= lt!435503 (list!5034 (_2!7379 (v!21153 lt!435481))))))

(declare-fun lt!435488 () List!13423)

(assert (=> b!1319561 (= lt!435488 (list!5035 (append!385 (BalanceConc!8727 Empty!4393) (_1!7379 (v!21153 lt!435481)))))))

(declare-fun lt!435484 () Unit!19422)

(declare-fun lemmaLexThenLexPrefix!179 (LexerInterface!2006 List!13422 List!13420 List!13420 List!13423 List!13423 List!13420) Unit!19422)

(assert (=> b!1319561 (= lt!435484 (lemmaLexThenLexPrefix!179 thiss!19762 rules!2550 lt!435495 lt!435503 lt!435488 (list!5035 (_1!7375 lt!435497)) (list!5034 (_2!7375 lt!435497))))))

(assert (=> b!1319561 (= (lexList!544 thiss!19762 rules!2550 lt!435495) (tuple2!12981 lt!435488 Nil!13354))))

(declare-fun lt!435489 () Unit!19422)

(assert (=> b!1319561 (= lt!435489 lt!435484)))

(declare-fun lt!435501 () BalanceConc!8724)

(assert (=> b!1319561 (= lt!435501 (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (_1!7379 (v!21153 lt!435481)))))))

(assert (=> b!1319561 (= lt!435492 (maxPrefixZipperSequence!537 thiss!19762 rules!2550 lt!435501))))

(declare-fun c!216670 () Bool)

(assert (=> b!1319561 (= c!216670 ((_ is Some!2580) lt!435492))))

(assert (=> b!1319561 (= (lexRec!264 thiss!19762 rules!2550 (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (_1!7379 (v!21153 lt!435481))))) e!845732)))

(declare-fun lt!435472 () Unit!19422)

(declare-fun Unit!19430 () Unit!19422)

(assert (=> b!1319561 (= lt!435472 Unit!19430)))

(assert (=> b!1319561 (= lt!435491 (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (_1!7379 (v!21153 lt!435481)))))))

(declare-fun lt!435486 () List!13420)

(assert (=> b!1319561 (= lt!435486 (list!5034 lt!435491))))

(declare-fun lt!435476 () List!13420)

(assert (=> b!1319561 (= lt!435476 (list!5034 (_2!7379 (v!21153 lt!435481))))))

(declare-fun lt!435505 () Unit!19422)

(assert (=> b!1319561 (= lt!435505 (lemmaConcatTwoListThenFSndIsSuffix!220 lt!435486 lt!435476))))

(assert (=> b!1319561 (isSuffix!242 lt!435476 (++!3406 lt!435486 lt!435476))))

(declare-fun lt!435500 () Unit!19422)

(assert (=> b!1319561 (= lt!435500 lt!435505)))

(declare-fun b!1319562 () Bool)

(assert (=> b!1319562 (= e!845732 (tuple2!12979 (BalanceConc!8727 Empty!4393) lt!435501))))

(assert (= (and d!372628 c!216669) b!1319561))

(assert (= (and d!372628 (not c!216669)) b!1319556))

(assert (= (and b!1319561 c!216671) b!1319557))

(assert (= (and b!1319561 (not c!216671)) b!1319559))

(assert (= (and b!1319561 c!216670) b!1319558))

(assert (= (and b!1319561 (not c!216670)) b!1319562))

(assert (= (and d!372628 res!593007) b!1319560))

(declare-fun m!1474955 () Bool)

(assert (=> d!372628 m!1474955))

(declare-fun m!1474957 () Bool)

(assert (=> d!372628 m!1474957))

(assert (=> d!372628 m!1473853))

(assert (=> d!372628 m!1474957))

(declare-fun m!1474959 () Bool)

(assert (=> d!372628 m!1474959))

(declare-fun m!1474961 () Bool)

(assert (=> d!372628 m!1474961))

(declare-fun m!1474963 () Bool)

(assert (=> d!372628 m!1474963))

(assert (=> d!372628 m!1472313))

(declare-fun m!1474965 () Bool)

(assert (=> d!372628 m!1474965))

(declare-fun m!1474967 () Bool)

(assert (=> d!372628 m!1474967))

(declare-fun m!1474969 () Bool)

(assert (=> b!1319558 m!1474969))

(declare-fun m!1474971 () Bool)

(assert (=> b!1319558 m!1474971))

(declare-fun m!1474973 () Bool)

(assert (=> b!1319557 m!1474973))

(declare-fun m!1474975 () Bool)

(assert (=> b!1319557 m!1474975))

(declare-fun m!1474977 () Bool)

(assert (=> b!1319561 m!1474977))

(declare-fun m!1474979 () Bool)

(assert (=> b!1319561 m!1474979))

(declare-fun m!1474981 () Bool)

(assert (=> b!1319561 m!1474981))

(declare-fun m!1474983 () Bool)

(assert (=> b!1319561 m!1474983))

(declare-fun m!1474985 () Bool)

(assert (=> b!1319561 m!1474985))

(declare-fun m!1474987 () Bool)

(assert (=> b!1319561 m!1474987))

(assert (=> b!1319561 m!1474983))

(declare-fun m!1474991 () Bool)

(assert (=> b!1319561 m!1474991))

(declare-fun m!1474995 () Bool)

(assert (=> b!1319561 m!1474995))

(declare-fun m!1474999 () Bool)

(assert (=> b!1319561 m!1474999))

(declare-fun m!1475001 () Bool)

(assert (=> b!1319561 m!1475001))

(declare-fun m!1475006 () Bool)

(assert (=> b!1319561 m!1475006))

(declare-fun m!1475009 () Bool)

(assert (=> b!1319561 m!1475009))

(declare-fun m!1475013 () Bool)

(assert (=> b!1319561 m!1475013))

(declare-fun m!1475015 () Bool)

(assert (=> b!1319561 m!1475015))

(declare-fun m!1475017 () Bool)

(assert (=> b!1319561 m!1475017))

(declare-fun m!1475019 () Bool)

(assert (=> b!1319561 m!1475019))

(declare-fun m!1475023 () Bool)

(assert (=> b!1319561 m!1475023))

(assert (=> b!1319561 m!1474991))

(declare-fun m!1475025 () Bool)

(assert (=> b!1319561 m!1475025))

(assert (=> b!1319561 m!1473853))

(declare-fun m!1475027 () Bool)

(assert (=> b!1319561 m!1475027))

(declare-fun m!1475029 () Bool)

(assert (=> b!1319561 m!1475029))

(assert (=> b!1319561 m!1475019))

(assert (=> b!1319561 m!1474979))

(declare-fun m!1475031 () Bool)

(assert (=> b!1319561 m!1475031))

(declare-fun m!1475033 () Bool)

(assert (=> b!1319561 m!1475033))

(assert (=> b!1319561 m!1473853))

(assert (=> b!1319561 m!1474987))

(declare-fun m!1475035 () Bool)

(assert (=> b!1319561 m!1475035))

(assert (=> b!1319561 m!1474967))

(declare-fun m!1475037 () Bool)

(assert (=> b!1319561 m!1475037))

(declare-fun m!1475039 () Bool)

(assert (=> b!1319561 m!1475039))

(assert (=> b!1319561 m!1474981))

(assert (=> b!1319561 m!1475006))

(assert (=> b!1319561 m!1474995))

(assert (=> b!1319561 m!1475019))

(declare-fun m!1475041 () Bool)

(assert (=> b!1319561 m!1475041))

(assert (=> b!1319561 m!1475013))

(assert (=> b!1319561 m!1474979))

(assert (=> b!1319561 m!1475027))

(declare-fun m!1475043 () Bool)

(assert (=> b!1319561 m!1475043))

(declare-fun m!1475045 () Bool)

(assert (=> b!1319561 m!1475045))

(declare-fun m!1475047 () Bool)

(assert (=> b!1319561 m!1475047))

(declare-fun m!1475049 () Bool)

(assert (=> b!1319561 m!1475049))

(assert (=> b!1319561 m!1475031))

(declare-fun m!1475053 () Bool)

(assert (=> b!1319561 m!1475053))

(declare-fun m!1475057 () Bool)

(assert (=> b!1319560 m!1475057))

(assert (=> b!1319560 m!1474967))

(declare-fun m!1475061 () Bool)

(assert (=> b!1319560 m!1475061))

(assert (=> d!371794 d!372628))

(declare-fun d!372652 () Bool)

(declare-fun charsToBigInt!1 (List!13421) Int)

(assert (=> d!372652 (= (inv!17 (value!75496 t2!34)) (= (charsToBigInt!1 (text!17255 (value!75496 t2!34))) (value!75488 (value!75496 t2!34))))))

(declare-fun bs!330886 () Bool)

(assert (= bs!330886 d!372652))

(declare-fun m!1475075 () Bool)

(assert (=> bs!330886 m!1475075))

(assert (=> b!1318321 d!372652))

(assert (=> bm!89530 d!372332))

(declare-fun b!1319596 () Bool)

(declare-fun e!845752 () tuple2!12980)

(declare-fun lt!435512 () Option!2580)

(declare-fun lt!435513 () tuple2!12980)

(assert (=> b!1319596 (= e!845752 (tuple2!12981 (Cons!13357 (_1!7377 (v!21135 lt!435512)) (_1!7376 lt!435513)) (_2!7376 lt!435513)))))

(assert (=> b!1319596 (= lt!435513 (lexList!544 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!435512))))))

(declare-fun b!1319597 () Bool)

(assert (=> b!1319597 (= e!845752 (tuple2!12981 Nil!13357 (_2!7377 (v!21135 lt!434886))))))

(declare-fun b!1319598 () Bool)

(declare-fun e!845754 () Bool)

(declare-fun lt!435511 () tuple2!12980)

(assert (=> b!1319598 (= e!845754 (= (_2!7376 lt!435511) (_2!7377 (v!21135 lt!434886))))))

(declare-fun b!1319599 () Bool)

(declare-fun e!845753 () Bool)

(assert (=> b!1319599 (= e!845754 e!845753)))

(declare-fun res!593017 () Bool)

(assert (=> b!1319599 (= res!593017 (< (size!10874 (_2!7376 lt!435511)) (size!10874 (_2!7377 (v!21135 lt!434886)))))))

(assert (=> b!1319599 (=> (not res!593017) (not e!845753))))

(declare-fun b!1319600 () Bool)

(assert (=> b!1319600 (= e!845753 (not (isEmpty!7932 (_1!7376 lt!435511))))))

(declare-fun d!372658 () Bool)

(assert (=> d!372658 e!845754))

(declare-fun c!216685 () Bool)

(assert (=> d!372658 (= c!216685 (> (size!10875 (_1!7376 lt!435511)) 0))))

(assert (=> d!372658 (= lt!435511 e!845752)))

(declare-fun c!216684 () Bool)

(assert (=> d!372658 (= c!216684 ((_ is Some!2579) lt!435512))))

(assert (=> d!372658 (= lt!435512 (maxPrefix!1016 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!434886))))))

(assert (=> d!372658 (= (lexList!544 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!434886))) lt!435511)))

(assert (= (and d!372658 c!216684) b!1319596))

(assert (= (and d!372658 (not c!216684)) b!1319597))

(assert (= (and d!372658 c!216685) b!1319599))

(assert (= (and d!372658 (not c!216685)) b!1319598))

(assert (= (and b!1319599 res!593017) b!1319600))

(declare-fun m!1475085 () Bool)

(assert (=> b!1319596 m!1475085))

(declare-fun m!1475087 () Bool)

(assert (=> b!1319599 m!1475087))

(declare-fun m!1475089 () Bool)

(assert (=> b!1319599 m!1475089))

(declare-fun m!1475091 () Bool)

(assert (=> b!1319600 m!1475091))

(declare-fun m!1475093 () Bool)

(assert (=> d!372658 m!1475093))

(declare-fun m!1475095 () Bool)

(assert (=> d!372658 m!1475095))

(assert (=> b!1318172 d!372658))

(declare-fun d!372664 () Bool)

(declare-fun lt!435516 () Bool)

(assert (=> d!372664 (= lt!435516 (isEmpty!7932 (list!5035 (_1!7375 lt!434870))))))

(assert (=> d!372664 (= lt!435516 (isEmpty!7937 (c!216256 (_1!7375 lt!434870))))))

(assert (=> d!372664 (= (isEmpty!7928 (_1!7375 lt!434870)) lt!435516)))

(declare-fun bs!330887 () Bool)

(assert (= bs!330887 d!372664))

(assert (=> bs!330887 m!1472821))

(assert (=> bs!330887 m!1472821))

(declare-fun m!1475101 () Bool)

(assert (=> bs!330887 m!1475101))

(declare-fun m!1475103 () Bool)

(assert (=> bs!330887 m!1475103))

(assert (=> b!1318132 d!372664))

(declare-fun d!372668 () Bool)

(declare-fun lt!435517 () Int)

(assert (=> d!372668 (= lt!435517 (size!10874 (list!5034 (_2!7375 lt!434821))))))

(assert (=> d!372668 (= lt!435517 (size!10877 (c!216255 (_2!7375 lt!434821))))))

(assert (=> d!372668 (= (size!10867 (_2!7375 lt!434821)) lt!435517)))

(declare-fun bs!330889 () Bool)

(assert (= bs!330889 d!372668))

(assert (=> bs!330889 m!1472699))

(assert (=> bs!330889 m!1472699))

(declare-fun m!1475107 () Bool)

(assert (=> bs!330889 m!1475107))

(declare-fun m!1475109 () Bool)

(assert (=> bs!330889 m!1475109))

(assert (=> b!1318024 d!372668))

(declare-fun d!372672 () Bool)

(declare-fun lt!435518 () Int)

(assert (=> d!372672 (= lt!435518 (size!10874 (list!5034 lt!434726)))))

(assert (=> d!372672 (= lt!435518 (size!10877 (c!216255 lt!434726)))))

(assert (=> d!372672 (= (size!10867 lt!434726) lt!435518)))

(declare-fun bs!330890 () Bool)

(assert (= bs!330890 d!372672))

(assert (=> bs!330890 m!1472313))

(assert (=> bs!330890 m!1472313))

(assert (=> bs!330890 m!1472791))

(declare-fun m!1475111 () Bool)

(assert (=> bs!330890 m!1475111))

(assert (=> b!1318024 d!372672))

(declare-fun d!372674 () Bool)

(declare-fun c!216690 () Bool)

(assert (=> d!372674 (= c!216690 ((_ is Nil!13358) (map!2933 rules!2550 lambda!53720)))))

(declare-fun e!845763 () (InoxSet Regex!3625))

(assert (=> d!372674 (= (content!1881 (map!2933 rules!2550 lambda!53720)) e!845763)))

(declare-fun b!1319613 () Bool)

(assert (=> b!1319613 (= e!845763 ((as const (Array Regex!3625 Bool)) false))))

(declare-fun b!1319614 () Bool)

(assert (=> b!1319614 (= e!845763 ((_ map or) (store ((as const (Array Regex!3625 Bool)) false) (h!18759 (map!2933 rules!2550 lambda!53720)) true) (content!1881 (t!118439 (map!2933 rules!2550 lambda!53720)))))))

(assert (= (and d!372674 c!216690) b!1319613))

(assert (= (and d!372674 (not c!216690)) b!1319614))

(declare-fun m!1475121 () Bool)

(assert (=> b!1319614 m!1475121))

(declare-fun m!1475123 () Bool)

(assert (=> b!1319614 m!1475123))

(assert (=> d!371886 d!372674))

(declare-fun d!372678 () Bool)

(assert (=> d!372678 (= (isEmpty!7935 lt!434901) (not ((_ is Some!2579) lt!434901)))))

(assert (=> d!371906 d!372678))

(declare-fun d!372680 () Bool)

(declare-fun e!845771 () Bool)

(assert (=> d!372680 e!845771))

(declare-fun res!593030 () Bool)

(assert (=> d!372680 (=> res!593030 e!845771)))

(declare-fun lt!435521 () Bool)

(assert (=> d!372680 (= res!593030 (not lt!435521))))

(declare-fun e!845772 () Bool)

(assert (=> d!372680 (= lt!435521 e!845772)))

(declare-fun res!593031 () Bool)

(assert (=> d!372680 (=> res!593031 e!845772)))

(assert (=> d!372680 (= res!593031 ((_ is Nil!13354) lt!434732))))

(assert (=> d!372680 (= (isPrefix!1076 lt!434732 lt!434732) lt!435521)))

(declare-fun b!1319624 () Bool)

(declare-fun res!593032 () Bool)

(declare-fun e!845770 () Bool)

(assert (=> b!1319624 (=> (not res!593032) (not e!845770))))

(assert (=> b!1319624 (= res!593032 (= (head!2281 lt!434732) (head!2281 lt!434732)))))

(declare-fun b!1319625 () Bool)

(assert (=> b!1319625 (= e!845770 (isPrefix!1076 (tail!1890 lt!434732) (tail!1890 lt!434732)))))

(declare-fun b!1319623 () Bool)

(assert (=> b!1319623 (= e!845772 e!845770)))

(declare-fun res!593033 () Bool)

(assert (=> b!1319623 (=> (not res!593033) (not e!845770))))

(assert (=> b!1319623 (= res!593033 (not ((_ is Nil!13354) lt!434732)))))

(declare-fun b!1319626 () Bool)

(assert (=> b!1319626 (= e!845771 (>= (size!10874 lt!434732) (size!10874 lt!434732)))))

(assert (= (and d!372680 (not res!593031)) b!1319623))

(assert (= (and b!1319623 res!593033) b!1319624))

(assert (= (and b!1319624 res!593032) b!1319625))

(assert (= (and d!372680 (not res!593030)) b!1319626))

(assert (=> b!1319624 m!1472701))

(assert (=> b!1319624 m!1472701))

(assert (=> b!1319625 m!1472703))

(assert (=> b!1319625 m!1472703))

(assert (=> b!1319625 m!1472703))

(assert (=> b!1319625 m!1472703))

(declare-fun m!1475125 () Bool)

(assert (=> b!1319625 m!1475125))

(assert (=> b!1319626 m!1472917))

(assert (=> b!1319626 m!1472917))

(assert (=> d!371906 d!372680))

(declare-fun d!372682 () Bool)

(assert (=> d!372682 (isPrefix!1076 lt!434732 lt!434732)))

(declare-fun lt!435526 () Unit!19422)

(declare-fun choose!8072 (List!13420 List!13420) Unit!19422)

(assert (=> d!372682 (= lt!435526 (choose!8072 lt!434732 lt!434732))))

(assert (=> d!372682 (= (lemmaIsPrefixRefl!755 lt!434732 lt!434732) lt!435526)))

(declare-fun bs!330891 () Bool)

(assert (= bs!330891 d!372682))

(assert (=> bs!330891 m!1472931))

(declare-fun m!1475127 () Bool)

(assert (=> bs!330891 m!1475127))

(assert (=> d!371906 d!372682))

(declare-fun bs!330892 () Bool)

(declare-fun d!372684 () Bool)

(assert (= bs!330892 (and d!372684 b!1317731)))

(declare-fun lambda!53813 () Int)

(assert (=> bs!330892 (not (= lambda!53813 lambda!53722))))

(declare-fun bs!330893 () Bool)

(assert (= bs!330893 (and d!372684 d!372284)))

(assert (=> bs!330893 (not (= lambda!53813 lambda!53788))))

(declare-fun bs!330894 () Bool)

(assert (= bs!330894 (and d!372684 d!371858)))

(assert (=> bs!330894 (not (= lambda!53813 lambda!53738))))

(declare-fun bs!330895 () Bool)

(assert (= bs!330895 (and d!372684 d!371856)))

(assert (=> bs!330895 (not (= lambda!53813 lambda!53735))))

(declare-fun bs!330896 () Bool)

(assert (= bs!330896 (and d!372684 d!372286)))

(assert (=> bs!330896 (not (= lambda!53813 lambda!53791))))

(declare-fun bs!330897 () Bool)

(assert (= bs!330897 (and d!372684 b!1317751)))

(assert (=> bs!330897 (= lambda!53813 lambda!53723)))

(assert (=> d!372684 true))

(declare-fun lt!435530 () Bool)

(assert (=> d!372684 (= lt!435530 (forall!3296 rules!2550 lambda!53813))))

(declare-fun e!845780 () Bool)

(assert (=> d!372684 (= lt!435530 e!845780)))

(declare-fun res!593051 () Bool)

(assert (=> d!372684 (=> res!593051 e!845780)))

(assert (=> d!372684 (= res!593051 (not ((_ is Cons!13356) rules!2550)))))

(assert (=> d!372684 (= (rulesValidInductive!728 thiss!19762 rules!2550) lt!435530)))

(declare-fun b!1319643 () Bool)

(declare-fun e!845781 () Bool)

(assert (=> b!1319643 (= e!845780 e!845781)))

(declare-fun res!593050 () Bool)

(assert (=> b!1319643 (=> (not res!593050) (not e!845781))))

(assert (=> b!1319643 (= res!593050 (ruleValid!564 thiss!19762 (h!18757 rules!2550)))))

(declare-fun b!1319644 () Bool)

(assert (=> b!1319644 (= e!845781 (rulesValidInductive!728 thiss!19762 (t!118437 rules!2550)))))

(assert (= (and d!372684 (not res!593051)) b!1319643))

(assert (= (and b!1319643 res!593050) b!1319644))

(declare-fun m!1475151 () Bool)

(assert (=> d!372684 m!1475151))

(declare-fun m!1475153 () Bool)

(assert (=> b!1319643 m!1475153))

(declare-fun m!1475155 () Bool)

(assert (=> b!1319644 m!1475155))

(assert (=> d!371906 d!372684))

(declare-fun d!372688 () Bool)

(assert (=> d!372688 (= (inv!17736 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))) (isBalanced!1282 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))))

(declare-fun bs!330898 () Bool)

(assert (= bs!330898 d!372688))

(declare-fun m!1475157 () Bool)

(assert (=> bs!330898 m!1475157))

(assert (=> tb!70011 d!372688))

(declare-fun d!372690 () Bool)

(declare-fun lt!435531 () Int)

(assert (=> d!372690 (>= lt!435531 0)))

(declare-fun e!845782 () Int)

(assert (=> d!372690 (= lt!435531 e!845782)))

(declare-fun c!216694 () Bool)

(assert (=> d!372690 (= c!216694 ((_ is Nil!13354) (_2!7376 lt!434858)))))

(assert (=> d!372690 (= (size!10874 (_2!7376 lt!434858)) lt!435531)))

(declare-fun b!1319645 () Bool)

(assert (=> b!1319645 (= e!845782 0)))

(declare-fun b!1319646 () Bool)

(assert (=> b!1319646 (= e!845782 (+ 1 (size!10874 (t!118435 (_2!7376 lt!434858)))))))

(assert (= (and d!372690 c!216694) b!1319645))

(assert (= (and d!372690 (not c!216694)) b!1319646))

(declare-fun m!1475159 () Bool)

(assert (=> b!1319646 m!1475159))

(assert (=> b!1318121 d!372690))

(declare-fun d!372692 () Bool)

(declare-fun lt!435532 () Int)

(assert (=> d!372692 (>= lt!435532 0)))

(declare-fun e!845783 () Int)

(assert (=> d!372692 (= lt!435532 e!845783)))

(declare-fun c!216695 () Bool)

(assert (=> d!372692 (= c!216695 ((_ is Nil!13354) (list!5034 lt!434726)))))

(assert (=> d!372692 (= (size!10874 (list!5034 lt!434726)) lt!435532)))

(declare-fun b!1319647 () Bool)

(assert (=> b!1319647 (= e!845783 0)))

(declare-fun b!1319648 () Bool)

(assert (=> b!1319648 (= e!845783 (+ 1 (size!10874 (t!118435 (list!5034 lt!434726)))))))

(assert (= (and d!372692 c!216695) b!1319647))

(assert (= (and d!372692 (not c!216695)) b!1319648))

(declare-fun m!1475161 () Bool)

(assert (=> b!1319648 m!1475161))

(assert (=> b!1318121 d!372692))

(declare-fun d!372694 () Bool)

(declare-fun lt!435533 () Bool)

(assert (=> d!372694 (= lt!435533 (select (content!1882 (t!118437 rules!2550)) (rule!4054 t2!34)))))

(declare-fun e!845785 () Bool)

(assert (=> d!372694 (= lt!435533 e!845785)))

(declare-fun res!593053 () Bool)

(assert (=> d!372694 (=> (not res!593053) (not e!845785))))

(assert (=> d!372694 (= res!593053 ((_ is Cons!13356) (t!118437 rules!2550)))))

(assert (=> d!372694 (= (contains!2349 (t!118437 rules!2550) (rule!4054 t2!34)) lt!435533)))

(declare-fun b!1319649 () Bool)

(declare-fun e!845784 () Bool)

(assert (=> b!1319649 (= e!845785 e!845784)))

(declare-fun res!593052 () Bool)

(assert (=> b!1319649 (=> res!593052 e!845784)))

(assert (=> b!1319649 (= res!593052 (= (h!18757 (t!118437 rules!2550)) (rule!4054 t2!34)))))

(declare-fun b!1319650 () Bool)

(assert (=> b!1319650 (= e!845784 (contains!2349 (t!118437 (t!118437 rules!2550)) (rule!4054 t2!34)))))

(assert (= (and d!372694 res!593053) b!1319649))

(assert (= (and b!1319649 (not res!593052)) b!1319650))

(assert (=> d!372694 m!1474077))

(declare-fun m!1475163 () Bool)

(assert (=> d!372694 m!1475163))

(declare-fun m!1475165 () Bool)

(assert (=> b!1319650 m!1475165))

(assert (=> b!1318505 d!372694))

(declare-fun d!372696 () Bool)

(declare-fun lt!435534 () Bool)

(assert (=> d!372696 (= lt!435534 (select (content!1882 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!434901)))))))

(declare-fun e!845787 () Bool)

(assert (=> d!372696 (= lt!435534 e!845787)))

(declare-fun res!593055 () Bool)

(assert (=> d!372696 (=> (not res!593055) (not e!845787))))

(assert (=> d!372696 (= res!593055 ((_ is Cons!13356) rules!2550))))

(assert (=> d!372696 (= (contains!2349 rules!2550 (rule!4054 (_1!7377 (get!4260 lt!434901)))) lt!435534)))

(declare-fun b!1319651 () Bool)

(declare-fun e!845786 () Bool)

(assert (=> b!1319651 (= e!845787 e!845786)))

(declare-fun res!593054 () Bool)

(assert (=> b!1319651 (=> res!593054 e!845786)))

(assert (=> b!1319651 (= res!593054 (= (h!18757 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!434901)))))))

(declare-fun b!1319652 () Bool)

(assert (=> b!1319652 (= e!845786 (contains!2349 (t!118437 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!434901)))))))

(assert (= (and d!372696 res!593055) b!1319651))

(assert (= (and b!1319651 (not res!593054)) b!1319652))

(assert (=> d!372696 m!1472893))

(declare-fun m!1475167 () Bool)

(assert (=> d!372696 m!1475167))

(declare-fun m!1475169 () Bool)

(assert (=> b!1319652 m!1475169))

(assert (=> b!1318210 d!372696))

(assert (=> b!1318210 d!372292))

(declare-fun d!372698 () Bool)

(declare-fun lostCauseFct!114 (Regex!3625) Bool)

(assert (=> d!372698 (= (lostCause!277 lt!434731) (lostCauseFct!114 lt!434731))))

(declare-fun bs!330899 () Bool)

(assert (= bs!330899 d!372698))

(declare-fun m!1475171 () Bool)

(assert (=> bs!330899 m!1475171))

(assert (=> b!1318255 d!372698))

(declare-fun d!372700 () Bool)

(assert (=> d!372700 (= (isDefined!2179 lt!434973) (not (isEmpty!7935 lt!434973)))))

(declare-fun bs!330900 () Bool)

(assert (= bs!330900 d!372700))

(assert (=> bs!330900 m!1473307))

(assert (=> b!1318474 d!372700))

(declare-fun d!372702 () Bool)

(declare-fun res!593056 () Bool)

(declare-fun e!845788 () Bool)

(assert (=> d!372702 (=> res!593056 e!845788)))

(assert (=> d!372702 (= res!593056 ((_ is Nil!13356) rules!2550))))

(assert (=> d!372702 (= (forall!3296 rules!2550 lambda!53735) e!845788)))

(declare-fun b!1319653 () Bool)

(declare-fun e!845789 () Bool)

(assert (=> b!1319653 (= e!845788 e!845789)))

(declare-fun res!593057 () Bool)

(assert (=> b!1319653 (=> (not res!593057) (not e!845789))))

(assert (=> b!1319653 (= res!593057 (dynLambda!5838 lambda!53735 (h!18757 rules!2550)))))

(declare-fun b!1319654 () Bool)

(assert (=> b!1319654 (= e!845789 (forall!3296 (t!118437 rules!2550) lambda!53735))))

(assert (= (and d!372702 (not res!593056)) b!1319653))

(assert (= (and b!1319653 res!593057) b!1319654))

(declare-fun b_lambda!38403 () Bool)

(assert (=> (not b_lambda!38403) (not b!1319653)))

(declare-fun m!1475173 () Bool)

(assert (=> b!1319653 m!1475173))

(declare-fun m!1475175 () Bool)

(assert (=> b!1319654 m!1475175))

(assert (=> d!371856 d!372702))

(declare-fun bm!89624 () Bool)

(declare-fun call!89629 () Bool)

(declare-fun call!89631 () Bool)

(assert (=> bm!89624 (= call!89629 call!89631)))

(declare-fun b!1319655 () Bool)

(declare-fun e!845794 () Bool)

(assert (=> b!1319655 (= e!845794 call!89629)))

(declare-fun b!1319656 () Bool)

(declare-fun e!845792 () Bool)

(declare-fun e!845795 () Bool)

(assert (=> b!1319656 (= e!845792 e!845795)))

(declare-fun res!593060 () Bool)

(assert (=> b!1319656 (= res!593060 (not (nullable!1149 (reg!3954 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))))))))

(assert (=> b!1319656 (=> (not res!593060) (not e!845795))))

(declare-fun b!1319657 () Bool)

(declare-fun res!593059 () Bool)

(assert (=> b!1319657 (=> (not res!593059) (not e!845794))))

(declare-fun call!89630 () Bool)

(assert (=> b!1319657 (= res!593059 call!89630)))

(declare-fun e!845793 () Bool)

(assert (=> b!1319657 (= e!845793 e!845794)))

(declare-fun b!1319658 () Bool)

(declare-fun res!593062 () Bool)

(declare-fun e!845790 () Bool)

(assert (=> b!1319658 (=> res!593062 e!845790)))

(assert (=> b!1319658 (= res!593062 (not ((_ is Concat!6026) (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34)))))))))

(assert (=> b!1319658 (= e!845793 e!845790)))

(declare-fun b!1319659 () Bool)

(declare-fun e!845796 () Bool)

(assert (=> b!1319659 (= e!845796 call!89629)))

(declare-fun bm!89626 () Bool)

(declare-fun c!216697 () Bool)

(declare-fun c!216696 () Bool)

(assert (=> bm!89626 (= call!89631 (validRegex!1551 (ite c!216696 (reg!3954 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) (ite c!216697 (regTwo!7763 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) (regTwo!7762 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34)))))))))))

(declare-fun b!1319660 () Bool)

(declare-fun e!845791 () Bool)

(assert (=> b!1319660 (= e!845791 e!845792)))

(assert (=> b!1319660 (= c!216696 ((_ is Star!3625) (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))))))

(declare-fun b!1319661 () Bool)

(assert (=> b!1319661 (= e!845795 call!89631)))

(declare-fun b!1319662 () Bool)

(assert (=> b!1319662 (= e!845790 e!845796)))

(declare-fun res!593061 () Bool)

(assert (=> b!1319662 (=> (not res!593061) (not e!845796))))

(assert (=> b!1319662 (= res!593061 call!89630)))

(declare-fun b!1319663 () Bool)

(assert (=> b!1319663 (= e!845792 e!845793)))

(assert (=> b!1319663 (= c!216697 ((_ is Union!3625) (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))))))

(declare-fun bm!89625 () Bool)

(assert (=> bm!89625 (= call!89630 (validRegex!1551 (ite c!216697 (regOne!7763 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) (regOne!7762 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))))))))

(declare-fun d!372704 () Bool)

(declare-fun res!593058 () Bool)

(assert (=> d!372704 (=> res!593058 e!845791)))

(assert (=> d!372704 (= res!593058 ((_ is ElementMatch!3625) (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))))))

(assert (=> d!372704 (= (validRegex!1551 (ite c!216385 (regOne!7763 (regex!2311 (rule!4054 t2!34))) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) e!845791)))

(assert (= (and d!372704 (not res!593058)) b!1319660))

(assert (= (and b!1319660 c!216696) b!1319656))

(assert (= (and b!1319660 (not c!216696)) b!1319663))

(assert (= (and b!1319656 res!593060) b!1319661))

(assert (= (and b!1319663 c!216697) b!1319657))

(assert (= (and b!1319663 (not c!216697)) b!1319658))

(assert (= (and b!1319657 res!593059) b!1319655))

(assert (= (and b!1319658 (not res!593062)) b!1319662))

(assert (= (and b!1319662 res!593061) b!1319659))

(assert (= (or b!1319657 b!1319662) bm!89625))

(assert (= (or b!1319655 b!1319659) bm!89624))

(assert (= (or b!1319661 bm!89624) bm!89626))

(declare-fun m!1475177 () Bool)

(assert (=> b!1319656 m!1475177))

(declare-fun m!1475179 () Bool)

(assert (=> bm!89626 m!1475179))

(declare-fun m!1475181 () Bool)

(assert (=> bm!89625 m!1475181))

(assert (=> bm!89538 d!372704))

(declare-fun d!372706 () Bool)

(declare-fun res!593063 () Bool)

(declare-fun e!845797 () Bool)

(assert (=> d!372706 (=> (not res!593063) (not e!845797))))

(assert (=> d!372706 (= res!593063 (validRegex!1551 (regex!2311 (rule!4054 t1!34))))))

(assert (=> d!372706 (= (ruleValid!564 thiss!19762 (rule!4054 t1!34)) e!845797)))

(declare-fun b!1319664 () Bool)

(declare-fun res!593064 () Bool)

(assert (=> b!1319664 (=> (not res!593064) (not e!845797))))

(assert (=> b!1319664 (= res!593064 (not (nullable!1149 (regex!2311 (rule!4054 t1!34)))))))

(declare-fun b!1319665 () Bool)

(assert (=> b!1319665 (= e!845797 (not (= (tag!2573 (rule!4054 t1!34)) (String!16242 ""))))))

(assert (= (and d!372706 res!593063) b!1319664))

(assert (= (and b!1319664 res!593064) b!1319665))

(assert (=> d!372706 m!1472711))

(assert (=> b!1319664 m!1472707))

(assert (=> bs!330723 d!372706))

(declare-fun d!372708 () Bool)

(declare-fun lt!435537 () Token!4284)

(assert (=> d!372708 (= lt!435537 (apply!3055 (list!5035 (_1!7375 lt!434966)) 0))))

(declare-fun apply!3057 (Conc!4393 Int) Token!4284)

(assert (=> d!372708 (= lt!435537 (apply!3057 (c!216256 (_1!7375 lt!434966)) 0))))

(declare-fun e!845800 () Bool)

(assert (=> d!372708 e!845800))

(declare-fun res!593067 () Bool)

(assert (=> d!372708 (=> (not res!593067) (not e!845800))))

(assert (=> d!372708 (= res!593067 (<= 0 0))))

(assert (=> d!372708 (= (apply!3051 (_1!7375 lt!434966) 0) lt!435537)))

(declare-fun b!1319668 () Bool)

(assert (=> b!1319668 (= e!845800 (< 0 (size!10870 (_1!7375 lt!434966))))))

(assert (= (and d!372708 res!593067) b!1319668))

(assert (=> d!372708 m!1474093))

(assert (=> d!372708 m!1474093))

(declare-fun m!1475183 () Bool)

(assert (=> d!372708 m!1475183))

(declare-fun m!1475185 () Bool)

(assert (=> d!372708 m!1475185))

(assert (=> b!1319668 m!1473211))

(assert (=> b!1318410 d!372708))

(assert (=> d!371950 d!372008))

(declare-fun bs!330901 () Bool)

(declare-fun d!372710 () Bool)

(assert (= bs!330901 (and d!372710 d!371950)))

(declare-fun lambda!53814 () Int)

(assert (=> bs!330901 (not (= lambda!53814 lambda!53757))))

(declare-fun bs!330902 () Bool)

(assert (= bs!330902 (and d!372710 b!1317762)))

(assert (=> bs!330902 (not (= lambda!53814 lambda!53721))))

(assert (=> bs!330901 (not (= lambda!53814 lambda!53758))))

(declare-fun bs!330903 () Bool)

(assert (= bs!330903 (and d!372710 d!371962)))

(assert (=> bs!330903 (= (= lambda!53758 lambda!53721) (= lambda!53814 lambda!53764))))

(declare-fun bs!330904 () Bool)

(assert (= bs!330904 (and d!372710 d!371954)))

(assert (=> bs!330904 (= (= lambda!53758 lambda!53721) (= lambda!53814 lambda!53763))))

(assert (=> d!372710 true))

(assert (=> d!372710 (< (dynLambda!5850 order!8057 lambda!53758) (dynLambda!5850 order!8057 lambda!53814))))

(assert (=> d!372710 (= (exists!325 lt!434718 lambda!53758) (not (forall!3298 lt!434718 lambda!53814)))))

(declare-fun bs!330905 () Bool)

(assert (= bs!330905 d!372710))

(declare-fun m!1475187 () Bool)

(assert (=> bs!330905 m!1475187))

(assert (=> d!371950 d!372710))

(declare-fun bs!330906 () Bool)

(declare-fun d!372712 () Bool)

(assert (= bs!330906 (and d!372712 d!371950)))

(declare-fun lambda!53817 () Int)

(assert (=> bs!330906 (not (= lambda!53817 lambda!53757))))

(declare-fun bs!330907 () Bool)

(assert (= bs!330907 (and d!372712 b!1317762)))

(assert (=> bs!330907 (= lambda!53817 lambda!53721)))

(declare-fun bs!330908 () Bool)

(assert (= bs!330908 (and d!372712 d!372710)))

(assert (=> bs!330908 (not (= lambda!53817 lambda!53814))))

(assert (=> bs!330906 (= lambda!53817 lambda!53758)))

(declare-fun bs!330909 () Bool)

(assert (= bs!330909 (and d!372712 d!371962)))

(assert (=> bs!330909 (not (= lambda!53817 lambda!53764))))

(declare-fun bs!330910 () Bool)

(assert (= bs!330910 (and d!372712 d!371954)))

(assert (=> bs!330910 (not (= lambda!53817 lambda!53763))))

(assert (=> d!372712 true))

(assert (=> d!372712 (= (matchR!1627 lt!434731 lt!434735) (exists!325 lt!434718 lambda!53817))))

(assert (=> d!372712 true))

(declare-fun _$85!113 () Unit!19422)

(assert (=> d!372712 (= (choose!8064 lt!434731 lt!434718 lt!434735) _$85!113)))

(declare-fun bs!330911 () Bool)

(assert (= bs!330911 d!372712))

(assert (=> bs!330911 m!1472393))

(declare-fun m!1475189 () Bool)

(assert (=> bs!330911 m!1475189))

(assert (=> d!371950 d!372712))

(declare-fun d!372714 () Bool)

(declare-fun res!593070 () Bool)

(declare-fun e!845803 () Bool)

(assert (=> d!372714 (=> res!593070 e!845803)))

(assert (=> d!372714 (= res!593070 ((_ is Nil!13358) lt!434718))))

(assert (=> d!372714 (= (forall!3298 lt!434718 lambda!53757) e!845803)))

(declare-fun b!1319671 () Bool)

(declare-fun e!845804 () Bool)

(assert (=> b!1319671 (= e!845803 e!845804)))

(declare-fun res!593071 () Bool)

(assert (=> b!1319671 (=> (not res!593071) (not e!845804))))

(assert (=> b!1319671 (= res!593071 (dynLambda!5848 lambda!53757 (h!18759 lt!434718)))))

(declare-fun b!1319672 () Bool)

(assert (=> b!1319672 (= e!845804 (forall!3298 (t!118439 lt!434718) lambda!53757))))

(assert (= (and d!372714 (not res!593070)) b!1319671))

(assert (= (and b!1319671 res!593071) b!1319672))

(declare-fun b_lambda!38405 () Bool)

(assert (=> (not b_lambda!38405) (not b!1319671)))

(declare-fun m!1475191 () Bool)

(assert (=> b!1319671 m!1475191))

(declare-fun m!1475193 () Bool)

(assert (=> b!1319672 m!1475193))

(assert (=> d!371950 d!372714))

(declare-fun d!372716 () Bool)

(assert (=> d!372716 (= (head!2281 lt!434732) (h!18755 lt!434732))))

(assert (=> b!1318063 d!372716))

(declare-fun d!372718 () Bool)

(declare-fun lt!435538 () Bool)

(assert (=> d!372718 (= lt!435538 (isEmpty!7930 (list!5034 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))))))

(assert (=> d!372718 (= lt!435538 (isEmpty!7931 (c!216255 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))))))

(assert (=> d!372718 (= (isEmpty!7924 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34))))) lt!435538)))

(declare-fun bs!330912 () Bool)

(assert (= bs!330912 d!372718))

(declare-fun m!1475195 () Bool)

(assert (=> bs!330912 m!1475195))

(assert (=> bs!330912 m!1475195))

(declare-fun m!1475197 () Bool)

(assert (=> bs!330912 m!1475197))

(declare-fun m!1475199 () Bool)

(assert (=> bs!330912 m!1475199))

(assert (=> b!1318471 d!372718))

(declare-fun lt!435539 () tuple2!12978)

(declare-fun b!1319673 () Bool)

(declare-fun e!845806 () Bool)

(assert (=> b!1319673 (= e!845806 (= (list!5034 (_2!7375 lt!435539)) (_2!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))))))

(declare-fun e!845805 () Bool)

(declare-fun b!1319674 () Bool)

(assert (=> b!1319674 (= e!845805 (= (_2!7375 lt!435539) (print!780 thiss!19762 (singletonSeq!892 t1!34))))))

(declare-fun b!1319675 () Bool)

(declare-fun e!845807 () Bool)

(assert (=> b!1319675 (= e!845807 (not (isEmpty!7928 (_1!7375 lt!435539))))))

(declare-fun b!1319676 () Bool)

(assert (=> b!1319676 (= e!845805 e!845807)))

(declare-fun res!593073 () Bool)

(assert (=> b!1319676 (= res!593073 (< (size!10867 (_2!7375 lt!435539)) (size!10867 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))))

(assert (=> b!1319676 (=> (not res!593073) (not e!845807))))

(declare-fun d!372720 () Bool)

(assert (=> d!372720 e!845806))

(declare-fun res!593074 () Bool)

(assert (=> d!372720 (=> (not res!593074) (not e!845806))))

(assert (=> d!372720 (= res!593074 e!845805)))

(declare-fun c!216698 () Bool)

(assert (=> d!372720 (= c!216698 (> (size!10870 (_1!7375 lt!435539)) 0))))

(assert (=> d!372720 (= lt!435539 (lexTailRecV2!367 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34)) (BalanceConc!8725 Empty!4392) (print!780 thiss!19762 (singletonSeq!892 t1!34)) (BalanceConc!8727 Empty!4393)))))

(assert (=> d!372720 (= (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34))) lt!435539)))

(declare-fun b!1319677 () Bool)

(declare-fun res!593072 () Bool)

(assert (=> b!1319677 (=> (not res!593072) (not e!845806))))

(assert (=> b!1319677 (= res!593072 (= (list!5035 (_1!7375 lt!435539)) (_1!7376 (lexList!544 thiss!19762 rules!2550 (list!5034 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))))))

(assert (= (and d!372720 c!216698) b!1319676))

(assert (= (and d!372720 (not c!216698)) b!1319674))

(assert (= (and b!1319676 res!593073) b!1319675))

(assert (= (and d!372720 res!593074) b!1319677))

(assert (= (and b!1319677 res!593072) b!1319673))

(declare-fun m!1475201 () Bool)

(assert (=> b!1319677 m!1475201))

(assert (=> b!1319677 m!1472401))

(declare-fun m!1475203 () Bool)

(assert (=> b!1319677 m!1475203))

(assert (=> b!1319677 m!1475203))

(declare-fun m!1475205 () Bool)

(assert (=> b!1319677 m!1475205))

(declare-fun m!1475207 () Bool)

(assert (=> d!372720 m!1475207))

(assert (=> d!372720 m!1472401))

(assert (=> d!372720 m!1472401))

(declare-fun m!1475209 () Bool)

(assert (=> d!372720 m!1475209))

(declare-fun m!1475211 () Bool)

(assert (=> b!1319676 m!1475211))

(assert (=> b!1319676 m!1472401))

(declare-fun m!1475213 () Bool)

(assert (=> b!1319676 m!1475213))

(declare-fun m!1475215 () Bool)

(assert (=> b!1319675 m!1475215))

(declare-fun m!1475217 () Bool)

(assert (=> b!1319673 m!1475217))

(assert (=> b!1319673 m!1472401))

(assert (=> b!1319673 m!1475203))

(assert (=> b!1319673 m!1475203))

(assert (=> b!1319673 m!1475205))

(assert (=> b!1318471 d!372720))

(assert (=> b!1318471 d!371788))

(assert (=> b!1318471 d!371792))

(declare-fun d!372722 () Bool)

(assert (=> d!372722 (= (isEmpty!7932 (_1!7376 lt!434885)) ((_ is Nil!13357) (_1!7376 lt!434885)))))

(assert (=> b!1318176 d!372722))

(declare-fun b!1319678 () Bool)

(declare-fun lt!435540 () Unit!19422)

(declare-fun Unit!19433 () Unit!19422)

(assert (=> b!1319678 (= lt!435540 Unit!19433)))

(assert (=> b!1319678 false))

(declare-fun e!845811 () Rule!4422)

(assert (=> b!1319678 (= e!845811 (head!2280 (t!118437 rules!2550)))))

(declare-fun b!1319679 () Bool)

(declare-fun e!845810 () Bool)

(assert (=> b!1319679 (= e!845810 (dynLambda!5838 lambda!53722 (h!18757 (t!118437 rules!2550))))))

(declare-fun d!372724 () Bool)

(declare-fun e!845809 () Bool)

(assert (=> d!372724 e!845809))

(declare-fun res!593075 () Bool)

(assert (=> d!372724 (=> (not res!593075) (not e!845809))))

(declare-fun lt!435541 () Rule!4422)

(assert (=> d!372724 (= res!593075 (dynLambda!5838 lambda!53722 lt!435541))))

(declare-fun e!845808 () Rule!4422)

(assert (=> d!372724 (= lt!435541 e!845808)))

(declare-fun c!216700 () Bool)

(assert (=> d!372724 (= c!216700 e!845810)))

(declare-fun res!593076 () Bool)

(assert (=> d!372724 (=> (not res!593076) (not e!845810))))

(assert (=> d!372724 (= res!593076 ((_ is Cons!13356) (t!118437 rules!2550)))))

(assert (=> d!372724 (exists!324 (t!118437 rules!2550) lambda!53722)))

(assert (=> d!372724 (= (getWitness!216 (t!118437 rules!2550) lambda!53722) lt!435541)))

(declare-fun b!1319680 () Bool)

(assert (=> b!1319680 (= e!845808 (h!18757 (t!118437 rules!2550)))))

(declare-fun b!1319681 () Bool)

(assert (=> b!1319681 (= e!845809 (contains!2349 (t!118437 rules!2550) lt!435541))))

(declare-fun b!1319682 () Bool)

(assert (=> b!1319682 (= e!845808 e!845811)))

(declare-fun c!216699 () Bool)

(assert (=> b!1319682 (= c!216699 ((_ is Cons!13356) (t!118437 rules!2550)))))

(declare-fun b!1319683 () Bool)

(assert (=> b!1319683 (= e!845811 (getWitness!216 (t!118437 (t!118437 rules!2550)) lambda!53722))))

(assert (= (and d!372724 res!593076) b!1319679))

(assert (= (and d!372724 c!216700) b!1319680))

(assert (= (and d!372724 (not c!216700)) b!1319682))

(assert (= (and b!1319682 c!216699) b!1319683))

(assert (= (and b!1319682 (not c!216699)) b!1319678))

(assert (= (and d!372724 res!593075) b!1319681))

(declare-fun b_lambda!38407 () Bool)

(assert (=> (not b_lambda!38407) (not b!1319679)))

(declare-fun b_lambda!38409 () Bool)

(assert (=> (not b_lambda!38409) (not d!372724)))

(declare-fun m!1475219 () Bool)

(assert (=> b!1319678 m!1475219))

(declare-fun m!1475221 () Bool)

(assert (=> d!372724 m!1475221))

(declare-fun m!1475223 () Bool)

(assert (=> d!372724 m!1475223))

(declare-fun m!1475225 () Bool)

(assert (=> b!1319679 m!1475225))

(declare-fun m!1475227 () Bool)

(assert (=> b!1319683 m!1475227))

(declare-fun m!1475229 () Bool)

(assert (=> b!1319681 m!1475229))

(assert (=> b!1317907 d!372724))

(assert (=> d!371912 d!372354))

(assert (=> d!371846 d!372312))

(declare-fun bm!89627 () Bool)

(declare-fun call!89632 () Bool)

(declare-fun call!89634 () Bool)

(assert (=> bm!89627 (= call!89632 call!89634)))

(declare-fun b!1319684 () Bool)

(declare-fun e!845816 () Bool)

(assert (=> b!1319684 (= e!845816 call!89632)))

(declare-fun b!1319685 () Bool)

(declare-fun e!845814 () Bool)

(declare-fun e!845817 () Bool)

(assert (=> b!1319685 (= e!845814 e!845817)))

(declare-fun res!593079 () Bool)

(assert (=> b!1319685 (= res!593079 (not (nullable!1149 (reg!3954 (regex!2311 (rule!4054 t1!34))))))))

(assert (=> b!1319685 (=> (not res!593079) (not e!845817))))

(declare-fun b!1319686 () Bool)

(declare-fun res!593078 () Bool)

(assert (=> b!1319686 (=> (not res!593078) (not e!845816))))

(declare-fun call!89633 () Bool)

(assert (=> b!1319686 (= res!593078 call!89633)))

(declare-fun e!845815 () Bool)

(assert (=> b!1319686 (= e!845815 e!845816)))

(declare-fun b!1319687 () Bool)

(declare-fun res!593081 () Bool)

(declare-fun e!845812 () Bool)

(assert (=> b!1319687 (=> res!593081 e!845812)))

(assert (=> b!1319687 (= res!593081 (not ((_ is Concat!6026) (regex!2311 (rule!4054 t1!34)))))))

(assert (=> b!1319687 (= e!845815 e!845812)))

(declare-fun b!1319688 () Bool)

(declare-fun e!845818 () Bool)

(assert (=> b!1319688 (= e!845818 call!89632)))

(declare-fun c!216702 () Bool)

(declare-fun bm!89629 () Bool)

(declare-fun c!216701 () Bool)

(assert (=> bm!89629 (= call!89634 (validRegex!1551 (ite c!216701 (reg!3954 (regex!2311 (rule!4054 t1!34))) (ite c!216702 (regTwo!7763 (regex!2311 (rule!4054 t1!34))) (regTwo!7762 (regex!2311 (rule!4054 t1!34)))))))))

(declare-fun b!1319689 () Bool)

(declare-fun e!845813 () Bool)

(assert (=> b!1319689 (= e!845813 e!845814)))

(assert (=> b!1319689 (= c!216701 ((_ is Star!3625) (regex!2311 (rule!4054 t1!34))))))

(declare-fun b!1319690 () Bool)

(assert (=> b!1319690 (= e!845817 call!89634)))

(declare-fun b!1319691 () Bool)

(assert (=> b!1319691 (= e!845812 e!845818)))

(declare-fun res!593080 () Bool)

(assert (=> b!1319691 (=> (not res!593080) (not e!845818))))

(assert (=> b!1319691 (= res!593080 call!89633)))

(declare-fun b!1319692 () Bool)

(assert (=> b!1319692 (= e!845814 e!845815)))

(assert (=> b!1319692 (= c!216702 ((_ is Union!3625) (regex!2311 (rule!4054 t1!34))))))

(declare-fun bm!89628 () Bool)

(assert (=> bm!89628 (= call!89633 (validRegex!1551 (ite c!216702 (regOne!7763 (regex!2311 (rule!4054 t1!34))) (regOne!7762 (regex!2311 (rule!4054 t1!34))))))))

(declare-fun d!372726 () Bool)

(declare-fun res!593077 () Bool)

(assert (=> d!372726 (=> res!593077 e!845813)))

(assert (=> d!372726 (= res!593077 ((_ is ElementMatch!3625) (regex!2311 (rule!4054 t1!34))))))

(assert (=> d!372726 (= (validRegex!1551 (regex!2311 (rule!4054 t1!34))) e!845813)))

(assert (= (and d!372726 (not res!593077)) b!1319689))

(assert (= (and b!1319689 c!216701) b!1319685))

(assert (= (and b!1319689 (not c!216701)) b!1319692))

(assert (= (and b!1319685 res!593079) b!1319690))

(assert (= (and b!1319692 c!216702) b!1319686))

(assert (= (and b!1319692 (not c!216702)) b!1319687))

(assert (= (and b!1319686 res!593078) b!1319684))

(assert (= (and b!1319687 (not res!593081)) b!1319691))

(assert (= (and b!1319691 res!593080) b!1319688))

(assert (= (or b!1319686 b!1319691) bm!89628))

(assert (= (or b!1319684 b!1319688) bm!89627))

(assert (= (or b!1319690 bm!89627) bm!89629))

(declare-fun m!1475231 () Bool)

(assert (=> b!1319685 m!1475231))

(declare-fun m!1475233 () Bool)

(assert (=> bm!89629 m!1475233))

(declare-fun m!1475235 () Bool)

(assert (=> bm!89628 m!1475235))

(assert (=> d!371846 d!372726))

(declare-fun d!372728 () Bool)

(declare-fun res!593082 () Bool)

(declare-fun e!845819 () Bool)

(assert (=> d!372728 (=> (not res!593082) (not e!845819))))

(assert (=> d!372728 (= res!593082 (validRegex!1551 (regex!2311 lt!434734)))))

(assert (=> d!372728 (= (ruleValid!564 thiss!19762 lt!434734) e!845819)))

(declare-fun b!1319693 () Bool)

(declare-fun res!593083 () Bool)

(assert (=> b!1319693 (=> (not res!593083) (not e!845819))))

(assert (=> b!1319693 (= res!593083 (not (nullable!1149 (regex!2311 lt!434734))))))

(declare-fun b!1319694 () Bool)

(assert (=> b!1319694 (= e!845819 (not (= (tag!2573 lt!434734) (String!16242 ""))))))

(assert (= (and d!372728 res!593082) b!1319693))

(assert (= (and b!1319693 res!593083) b!1319694))

(declare-fun m!1475237 () Bool)

(assert (=> d!372728 m!1475237))

(declare-fun m!1475239 () Bool)

(assert (=> b!1319693 m!1475239))

(assert (=> bs!330720 d!372728))

(declare-fun d!372730 () Bool)

(assert (=> d!372730 (= (list!5034 lt!434940) (list!5039 (c!216255 lt!434940)))))

(declare-fun bs!330913 () Bool)

(assert (= bs!330913 d!372730))

(declare-fun m!1475241 () Bool)

(assert (=> bs!330913 m!1475241))

(assert (=> d!371942 d!372730))

(declare-fun d!372732 () Bool)

(declare-fun res!593084 () Bool)

(declare-fun e!845820 () Bool)

(assert (=> d!372732 (=> res!593084 e!845820)))

(assert (=> d!372732 (= res!593084 ((_ is Nil!13358) lt!434718))))

(assert (=> d!372732 (= (forall!3298 lt!434718 lambda!53764) e!845820)))

(declare-fun b!1319695 () Bool)

(declare-fun e!845821 () Bool)

(assert (=> b!1319695 (= e!845820 e!845821)))

(declare-fun res!593085 () Bool)

(assert (=> b!1319695 (=> (not res!593085) (not e!845821))))

(assert (=> b!1319695 (= res!593085 (dynLambda!5848 lambda!53764 (h!18759 lt!434718)))))

(declare-fun b!1319696 () Bool)

(assert (=> b!1319696 (= e!845821 (forall!3298 (t!118439 lt!434718) lambda!53764))))

(assert (= (and d!372732 (not res!593084)) b!1319695))

(assert (= (and b!1319695 res!593085) b!1319696))

(declare-fun b_lambda!38411 () Bool)

(assert (=> (not b_lambda!38411) (not b!1319695)))

(declare-fun m!1475243 () Bool)

(assert (=> b!1319695 m!1475243))

(declare-fun m!1475245 () Bool)

(assert (=> b!1319696 m!1475245))

(assert (=> d!371962 d!372732))

(assert (=> d!372044 d!372354))

(declare-fun d!372734 () Bool)

(assert (=> d!372734 (= (isEmpty!7930 (tail!1890 lt!434732)) ((_ is Nil!13354) (tail!1890 lt!434732)))))

(assert (=> b!1318056 d!372734))

(declare-fun d!372736 () Bool)

(assert (=> d!372736 (= (tail!1890 lt!434732) (t!118435 lt!434732))))

(assert (=> b!1318056 d!372736))

(declare-fun b!1319697 () Bool)

(declare-fun e!845822 () Option!2580)

(declare-fun lt!435543 () Option!2580)

(declare-fun lt!435544 () Option!2580)

(assert (=> b!1319697 (= e!845822 (ite (and ((_ is None!2579) lt!435543) ((_ is None!2579) lt!435544)) None!2579 (ite ((_ is None!2579) lt!435544) lt!435543 (ite ((_ is None!2579) lt!435543) lt!435544 (ite (>= (size!10866 (_1!7377 (v!21135 lt!435543))) (size!10866 (_1!7377 (v!21135 lt!435544)))) lt!435543 lt!435544)))))))

(declare-fun call!89635 () Option!2580)

(assert (=> b!1319697 (= lt!435543 call!89635)))

(assert (=> b!1319697 (= lt!435544 (maxPrefix!1016 thiss!19762 (t!118437 (t!118437 rules!2550)) lt!434732))))

(declare-fun b!1319698 () Bool)

(declare-fun res!593089 () Bool)

(declare-fun e!845823 () Bool)

(assert (=> b!1319698 (=> (not res!593089) (not e!845823))))

(declare-fun lt!435542 () Option!2580)

(assert (=> b!1319698 (= res!593089 (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!435542)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435542))))))))

(declare-fun b!1319699 () Bool)

(declare-fun e!845824 () Bool)

(assert (=> b!1319699 (= e!845824 e!845823)))

(declare-fun res!593088 () Bool)

(assert (=> b!1319699 (=> (not res!593088) (not e!845823))))

(assert (=> b!1319699 (= res!593088 (isDefined!2179 lt!435542))))

(declare-fun b!1319700 () Bool)

(declare-fun res!593086 () Bool)

(assert (=> b!1319700 (=> (not res!593086) (not e!845823))))

(assert (=> b!1319700 (= res!593086 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435542)))) (_2!7377 (get!4260 lt!435542))) lt!434732))))

(declare-fun bm!89630 () Bool)

(assert (=> bm!89630 (= call!89635 (maxPrefixOneRule!581 thiss!19762 (h!18757 (t!118437 rules!2550)) lt!434732))))

(declare-fun b!1319701 () Bool)

(declare-fun res!593092 () Bool)

(assert (=> b!1319701 (=> (not res!593092) (not e!845823))))

(assert (=> b!1319701 (= res!593092 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435542)))) (originalCharacters!3173 (_1!7377 (get!4260 lt!435542)))))))

(declare-fun b!1319702 () Bool)

(declare-fun res!593087 () Bool)

(assert (=> b!1319702 (=> (not res!593087) (not e!845823))))

(assert (=> b!1319702 (= res!593087 (= (value!75496 (_1!7377 (get!4260 lt!435542))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!435542)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!435542)))))))))

(declare-fun b!1319703 () Bool)

(assert (=> b!1319703 (= e!845823 (contains!2349 (t!118437 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!435542)))))))

(declare-fun b!1319704 () Bool)

(assert (=> b!1319704 (= e!845822 call!89635)))

(declare-fun d!372738 () Bool)

(assert (=> d!372738 e!845824))

(declare-fun res!593090 () Bool)

(assert (=> d!372738 (=> res!593090 e!845824)))

(assert (=> d!372738 (= res!593090 (isEmpty!7935 lt!435542))))

(assert (=> d!372738 (= lt!435542 e!845822)))

(declare-fun c!216703 () Bool)

(assert (=> d!372738 (= c!216703 (and ((_ is Cons!13356) (t!118437 rules!2550)) ((_ is Nil!13356) (t!118437 (t!118437 rules!2550)))))))

(declare-fun lt!435546 () Unit!19422)

(declare-fun lt!435545 () Unit!19422)

(assert (=> d!372738 (= lt!435546 lt!435545)))

(assert (=> d!372738 (isPrefix!1076 lt!434732 lt!434732)))

(assert (=> d!372738 (= lt!435545 (lemmaIsPrefixRefl!755 lt!434732 lt!434732))))

(assert (=> d!372738 (rulesValidInductive!728 thiss!19762 (t!118437 rules!2550))))

(assert (=> d!372738 (= (maxPrefix!1016 thiss!19762 (t!118437 rules!2550) lt!434732) lt!435542)))

(declare-fun b!1319705 () Bool)

(declare-fun res!593091 () Bool)

(assert (=> b!1319705 (=> (not res!593091) (not e!845823))))

(assert (=> b!1319705 (= res!593091 (< (size!10874 (_2!7377 (get!4260 lt!435542))) (size!10874 lt!434732)))))

(assert (= (and d!372738 c!216703) b!1319704))

(assert (= (and d!372738 (not c!216703)) b!1319697))

(assert (= (or b!1319704 b!1319697) bm!89630))

(assert (= (and d!372738 (not res!593090)) b!1319699))

(assert (= (and b!1319699 res!593088) b!1319701))

(assert (= (and b!1319701 res!593092) b!1319705))

(assert (= (and b!1319705 res!593091) b!1319700))

(assert (= (and b!1319700 res!593086) b!1319702))

(assert (= (and b!1319702 res!593087) b!1319698))

(assert (= (and b!1319698 res!593089) b!1319703))

(declare-fun m!1475247 () Bool)

(assert (=> b!1319697 m!1475247))

(declare-fun m!1475249 () Bool)

(assert (=> b!1319701 m!1475249))

(declare-fun m!1475251 () Bool)

(assert (=> b!1319701 m!1475251))

(assert (=> b!1319701 m!1475251))

(declare-fun m!1475253 () Bool)

(assert (=> b!1319701 m!1475253))

(assert (=> b!1319703 m!1475249))

(declare-fun m!1475255 () Bool)

(assert (=> b!1319703 m!1475255))

(assert (=> b!1319698 m!1475249))

(assert (=> b!1319698 m!1475251))

(assert (=> b!1319698 m!1475251))

(assert (=> b!1319698 m!1475253))

(assert (=> b!1319698 m!1475253))

(declare-fun m!1475257 () Bool)

(assert (=> b!1319698 m!1475257))

(assert (=> b!1319705 m!1475249))

(declare-fun m!1475259 () Bool)

(assert (=> b!1319705 m!1475259))

(assert (=> b!1319705 m!1472917))

(assert (=> b!1319700 m!1475249))

(assert (=> b!1319700 m!1475251))

(assert (=> b!1319700 m!1475251))

(assert (=> b!1319700 m!1475253))

(assert (=> b!1319700 m!1475253))

(declare-fun m!1475261 () Bool)

(assert (=> b!1319700 m!1475261))

(assert (=> b!1319702 m!1475249))

(declare-fun m!1475263 () Bool)

(assert (=> b!1319702 m!1475263))

(assert (=> b!1319702 m!1475263))

(declare-fun m!1475265 () Bool)

(assert (=> b!1319702 m!1475265))

(declare-fun m!1475267 () Bool)

(assert (=> bm!89630 m!1475267))

(declare-fun m!1475269 () Bool)

(assert (=> b!1319699 m!1475269))

(declare-fun m!1475271 () Bool)

(assert (=> d!372738 m!1475271))

(assert (=> d!372738 m!1472931))

(assert (=> d!372738 m!1472933))

(assert (=> d!372738 m!1475155))

(assert (=> b!1318204 d!372738))

(declare-fun d!372740 () Bool)

(assert (=> d!372740 (= (inv!16 (value!75496 t1!34)) (= (charsToInt!0 (text!17254 (value!75496 t1!34))) (value!75487 (value!75496 t1!34))))))

(declare-fun bs!330914 () Bool)

(assert (= bs!330914 d!372740))

(declare-fun m!1475273 () Bool)

(assert (=> bs!330914 m!1475273))

(assert (=> b!1318417 d!372740))

(declare-fun bs!330916 () Bool)

(declare-fun d!372742 () Bool)

(assert (= bs!330916 (and d!372742 b!1317762)))

(declare-fun lambda!53822 () Int)

(assert (=> bs!330916 (= lambda!53822 lambda!53720)))

(declare-fun bs!330917 () Bool)

(assert (= bs!330917 (and d!372742 d!371944)))

(assert (=> bs!330917 (= lambda!53822 lambda!53744)))

(declare-fun bs!330918 () Bool)

(assert (= bs!330918 (and d!372742 d!371950)))

(declare-fun lambda!53823 () Int)

(assert (=> bs!330918 (= lambda!53823 lambda!53757)))

(assert (=> bs!330916 (not (= lambda!53823 lambda!53721))))

(declare-fun bs!330919 () Bool)

(assert (= bs!330919 (and d!372742 d!372710)))

(assert (=> bs!330919 (not (= lambda!53823 lambda!53814))))

(assert (=> bs!330918 (not (= lambda!53823 lambda!53758))))

(declare-fun bs!330920 () Bool)

(assert (= bs!330920 (and d!372742 d!371962)))

(assert (=> bs!330920 (not (= lambda!53823 lambda!53764))))

(declare-fun bs!330921 () Bool)

(assert (= bs!330921 (and d!372742 d!371954)))

(assert (=> bs!330921 (not (= lambda!53823 lambda!53763))))

(declare-fun bs!330922 () Bool)

(assert (= bs!330922 (and d!372742 d!372712)))

(assert (=> bs!330922 (not (= lambda!53823 lambda!53817))))

(assert (=> d!372742 (forall!3298 (map!2933 rules!2550 lambda!53822) lambda!53823)))

(declare-fun lt!435581 () Unit!19422)

(declare-fun e!845827 () Unit!19422)

(assert (=> d!372742 (= lt!435581 e!845827)))

(declare-fun c!216706 () Bool)

(assert (=> d!372742 (= c!216706 ((_ is Nil!13356) rules!2550))))

(assert (=> d!372742 (rulesValidInductive!728 thiss!19762 rules!2550)))

(assert (=> d!372742 (= (lemma!71 rules!2550 thiss!19762 rules!2550) lt!435581)))

(declare-fun b!1319710 () Bool)

(declare-fun Unit!19436 () Unit!19422)

(assert (=> b!1319710 (= e!845827 Unit!19436)))

(declare-fun b!1319711 () Bool)

(declare-fun Unit!19437 () Unit!19422)

(assert (=> b!1319711 (= e!845827 Unit!19437)))

(declare-fun lt!435582 () Unit!19422)

(assert (=> b!1319711 (= lt!435582 (lemma!71 rules!2550 thiss!19762 (t!118437 rules!2550)))))

(assert (= (and d!372742 c!216706) b!1319710))

(assert (= (and d!372742 (not c!216706)) b!1319711))

(declare-fun m!1475301 () Bool)

(assert (=> d!372742 m!1475301))

(assert (=> d!372742 m!1475301))

(declare-fun m!1475303 () Bool)

(assert (=> d!372742 m!1475303))

(assert (=> d!372742 m!1472935))

(declare-fun m!1475305 () Bool)

(assert (=> b!1319711 m!1475305))

(assert (=> d!371944 d!372742))

(declare-fun bs!330925 () Bool)

(declare-fun d!372746 () Bool)

(assert (= bs!330925 (and d!372746 d!371950)))

(declare-fun lambda!53826 () Int)

(assert (=> bs!330925 (= lambda!53826 lambda!53757)))

(declare-fun bs!330926 () Bool)

(assert (= bs!330926 (and d!372746 d!372742)))

(assert (=> bs!330926 (= lambda!53826 lambda!53823)))

(declare-fun bs!330927 () Bool)

(assert (= bs!330927 (and d!372746 b!1317762)))

(assert (=> bs!330927 (not (= lambda!53826 lambda!53721))))

(declare-fun bs!330928 () Bool)

(assert (= bs!330928 (and d!372746 d!372710)))

(assert (=> bs!330928 (not (= lambda!53826 lambda!53814))))

(assert (=> bs!330925 (not (= lambda!53826 lambda!53758))))

(declare-fun bs!330929 () Bool)

(assert (= bs!330929 (and d!372746 d!371962)))

(assert (=> bs!330929 (not (= lambda!53826 lambda!53764))))

(declare-fun bs!330930 () Bool)

(assert (= bs!330930 (and d!372746 d!371954)))

(assert (=> bs!330930 (not (= lambda!53826 lambda!53763))))

(declare-fun bs!330931 () Bool)

(assert (= bs!330931 (and d!372746 d!372712)))

(assert (=> bs!330931 (not (= lambda!53826 lambda!53817))))

(declare-fun b!1319755 () Bool)

(declare-fun e!845855 () Regex!3625)

(assert (=> b!1319755 (= e!845855 (h!18759 (map!2933 rules!2550 lambda!53744)))))

(declare-fun b!1319756 () Bool)

(declare-fun e!845854 () Bool)

(declare-fun isEmpty!7939 (List!13424) Bool)

(assert (=> b!1319756 (= e!845854 (isEmpty!7939 (t!118439 (map!2933 rules!2550 lambda!53744))))))

(declare-fun b!1319757 () Bool)

(declare-fun e!845859 () Regex!3625)

(assert (=> b!1319757 (= e!845859 EmptyLang!3625)))

(declare-fun b!1319758 () Bool)

(declare-fun e!845856 () Bool)

(declare-fun lt!435625 () Regex!3625)

(declare-fun isUnion!25 (Regex!3625) Bool)

(assert (=> b!1319758 (= e!845856 (isUnion!25 lt!435625))))

(declare-fun b!1319759 () Bool)

(assert (=> b!1319759 (= e!845856 (= lt!435625 (head!2283 (map!2933 rules!2550 lambda!53744))))))

(declare-fun b!1319760 () Bool)

(assert (=> b!1319760 (= e!845859 (Union!3625 (h!18759 (map!2933 rules!2550 lambda!53744)) (generalisedUnion!79 (t!118439 (map!2933 rules!2550 lambda!53744)))))))

(declare-fun b!1319761 () Bool)

(assert (=> b!1319761 (= e!845855 e!845859)))

(declare-fun c!216721 () Bool)

(assert (=> b!1319761 (= c!216721 ((_ is Cons!13358) (map!2933 rules!2550 lambda!53744)))))

(declare-fun b!1319762 () Bool)

(declare-fun e!845857 () Bool)

(declare-fun e!845858 () Bool)

(assert (=> b!1319762 (= e!845857 e!845858)))

(declare-fun c!216722 () Bool)

(assert (=> b!1319762 (= c!216722 (isEmpty!7939 (map!2933 rules!2550 lambda!53744)))))

(declare-fun b!1319763 () Bool)

(assert (=> b!1319763 (= e!845858 e!845856)))

(declare-fun c!216724 () Bool)

(declare-fun tail!1894 (List!13424) List!13424)

(assert (=> b!1319763 (= c!216724 (isEmpty!7939 (tail!1894 (map!2933 rules!2550 lambda!53744))))))

(assert (=> d!372746 e!845857))

(declare-fun res!593105 () Bool)

(assert (=> d!372746 (=> (not res!593105) (not e!845857))))

(assert (=> d!372746 (= res!593105 (validRegex!1551 lt!435625))))

(assert (=> d!372746 (= lt!435625 e!845855)))

(declare-fun c!216723 () Bool)

(assert (=> d!372746 (= c!216723 e!845854)))

(declare-fun res!593104 () Bool)

(assert (=> d!372746 (=> (not res!593104) (not e!845854))))

(assert (=> d!372746 (= res!593104 ((_ is Cons!13358) (map!2933 rules!2550 lambda!53744)))))

(assert (=> d!372746 (forall!3298 (map!2933 rules!2550 lambda!53744) lambda!53826)))

(assert (=> d!372746 (= (generalisedUnion!79 (map!2933 rules!2550 lambda!53744)) lt!435625)))

(declare-fun b!1319764 () Bool)

(declare-fun isEmptyLang!25 (Regex!3625) Bool)

(assert (=> b!1319764 (= e!845858 (isEmptyLang!25 lt!435625))))

(assert (= (and d!372746 res!593104) b!1319756))

(assert (= (and d!372746 c!216723) b!1319755))

(assert (= (and d!372746 (not c!216723)) b!1319761))

(assert (= (and b!1319761 c!216721) b!1319760))

(assert (= (and b!1319761 (not c!216721)) b!1319757))

(assert (= (and d!372746 res!593105) b!1319762))

(assert (= (and b!1319762 c!216722) b!1319764))

(assert (= (and b!1319762 (not c!216722)) b!1319763))

(assert (= (and b!1319763 c!216724) b!1319759))

(assert (= (and b!1319763 (not c!216724)) b!1319758))

(declare-fun m!1475425 () Bool)

(assert (=> d!372746 m!1475425))

(assert (=> d!372746 m!1473099))

(declare-fun m!1475427 () Bool)

(assert (=> d!372746 m!1475427))

(declare-fun m!1475429 () Bool)

(assert (=> b!1319758 m!1475429))

(assert (=> b!1319763 m!1473099))

(declare-fun m!1475431 () Bool)

(assert (=> b!1319763 m!1475431))

(assert (=> b!1319763 m!1475431))

(declare-fun m!1475433 () Bool)

(assert (=> b!1319763 m!1475433))

(declare-fun m!1475435 () Bool)

(assert (=> b!1319764 m!1475435))

(assert (=> b!1319762 m!1473099))

(declare-fun m!1475437 () Bool)

(assert (=> b!1319762 m!1475437))

(declare-fun m!1475439 () Bool)

(assert (=> b!1319756 m!1475439))

(declare-fun m!1475441 () Bool)

(assert (=> b!1319760 m!1475441))

(assert (=> b!1319759 m!1473099))

(declare-fun m!1475443 () Bool)

(assert (=> b!1319759 m!1475443))

(assert (=> d!371944 d!372746))

(declare-fun d!372764 () Bool)

(declare-fun lt!435626 () List!13424)

(assert (=> d!372764 (= (size!10878 lt!435626) (size!10879 rules!2550))))

(declare-fun e!845867 () List!13424)

(assert (=> d!372764 (= lt!435626 e!845867)))

(declare-fun c!216725 () Bool)

(assert (=> d!372764 (= c!216725 ((_ is Nil!13356) rules!2550))))

(assert (=> d!372764 (= (map!2933 rules!2550 lambda!53744) lt!435626)))

(declare-fun b!1319780 () Bool)

(assert (=> b!1319780 (= e!845867 Nil!13358)))

(declare-fun b!1319781 () Bool)

(assert (=> b!1319781 (= e!845867 ($colon$colon!153 (map!2933 (t!118437 rules!2550) lambda!53744) (dynLambda!5847 lambda!53744 (h!18757 rules!2550))))))

(assert (= (and d!372764 c!216725) b!1319780))

(assert (= (and d!372764 (not c!216725)) b!1319781))

(declare-fun b_lambda!38413 () Bool)

(assert (=> (not b_lambda!38413) (not b!1319781)))

(declare-fun m!1475451 () Bool)

(assert (=> d!372764 m!1475451))

(assert (=> d!372764 m!1472861))

(declare-fun m!1475453 () Bool)

(assert (=> b!1319781 m!1475453))

(declare-fun m!1475455 () Bool)

(assert (=> b!1319781 m!1475455))

(assert (=> b!1319781 m!1475453))

(assert (=> b!1319781 m!1475455))

(declare-fun m!1475457 () Bool)

(assert (=> b!1319781 m!1475457))

(assert (=> d!371944 d!372764))

(declare-fun b!1319790 () Bool)

(declare-fun e!845870 () List!13420)

(assert (=> b!1319790 (= e!845870 lt!434986)))

(declare-fun lt!435627 () List!13420)

(declare-fun e!845871 () Bool)

(declare-fun b!1319793 () Bool)

(assert (=> b!1319793 (= e!845871 (or (not (= lt!434986 Nil!13354)) (= lt!435627 lt!434728)))))

(declare-fun b!1319792 () Bool)

(declare-fun res!593107 () Bool)

(assert (=> b!1319792 (=> (not res!593107) (not e!845871))))

(assert (=> b!1319792 (= res!593107 (= (size!10874 lt!435627) (+ (size!10874 lt!434728) (size!10874 lt!434986))))))

(declare-fun b!1319791 () Bool)

(assert (=> b!1319791 (= e!845870 (Cons!13354 (h!18755 lt!434728) (++!3406 (t!118435 lt!434728) lt!434986)))))

(declare-fun d!372766 () Bool)

(assert (=> d!372766 e!845871))

(declare-fun res!593106 () Bool)

(assert (=> d!372766 (=> (not res!593106) (not e!845871))))

(assert (=> d!372766 (= res!593106 (= (content!1883 lt!435627) ((_ map or) (content!1883 lt!434728) (content!1883 lt!434986))))))

(assert (=> d!372766 (= lt!435627 e!845870)))

(declare-fun c!216726 () Bool)

(assert (=> d!372766 (= c!216726 ((_ is Nil!13354) lt!434728))))

(assert (=> d!372766 (= (++!3406 lt!434728 lt!434986) lt!435627)))

(assert (= (and d!372766 c!216726) b!1319790))

(assert (= (and d!372766 (not c!216726)) b!1319791))

(assert (= (and d!372766 res!593106) b!1319792))

(assert (= (and b!1319792 res!593107) b!1319793))

(declare-fun m!1475459 () Bool)

(assert (=> b!1319792 m!1475459))

(assert (=> b!1319792 m!1473345))

(declare-fun m!1475461 () Bool)

(assert (=> b!1319792 m!1475461))

(declare-fun m!1475463 () Bool)

(assert (=> b!1319791 m!1475463))

(declare-fun m!1475465 () Bool)

(assert (=> d!372766 m!1475465))

(assert (=> d!372766 m!1473265))

(declare-fun m!1475467 () Bool)

(assert (=> d!372766 m!1475467))

(assert (=> d!372040 d!372766))

(declare-fun d!372768 () Bool)

(declare-fun lt!435628 () Int)

(assert (=> d!372768 (>= lt!435628 0)))

(declare-fun e!845875 () Int)

(assert (=> d!372768 (= lt!435628 e!845875)))

(declare-fun c!216727 () Bool)

(assert (=> d!372768 (= c!216727 ((_ is Nil!13354) lt!434735))))

(assert (=> d!372768 (= (size!10874 lt!434735) lt!435628)))

(declare-fun b!1319806 () Bool)

(assert (=> b!1319806 (= e!845875 0)))

(declare-fun b!1319807 () Bool)

(assert (=> b!1319807 (= e!845875 (+ 1 (size!10874 (t!118435 lt!434735))))))

(assert (= (and d!372768 c!216727) b!1319806))

(assert (= (and d!372768 (not c!216727)) b!1319807))

(declare-fun m!1475469 () Bool)

(assert (=> b!1319807 m!1475469))

(assert (=> d!372040 d!372768))

(assert (=> d!372040 d!372347))

(declare-fun d!372770 () Bool)

(assert (=> d!372770 (= (isEmpty!7930 (originalCharacters!3173 t2!34)) ((_ is Nil!13354) (originalCharacters!3173 t2!34)))))

(assert (=> d!372004 d!372770))

(declare-fun d!372772 () Bool)

(assert (=> d!372772 (= (isEmpty!7930 (list!5034 (_2!7375 lt!434724))) ((_ is Nil!13354) (list!5034 (_2!7375 lt!434724))))))

(assert (=> d!372006 d!372772))

(declare-fun d!372774 () Bool)

(assert (=> d!372774 (= (list!5034 (_2!7375 lt!434724)) (list!5039 (c!216255 (_2!7375 lt!434724))))))

(declare-fun bs!330932 () Bool)

(assert (= bs!330932 d!372774))

(declare-fun m!1475471 () Bool)

(assert (=> bs!330932 m!1475471))

(assert (=> d!372006 d!372774))

(declare-fun d!372776 () Bool)

(declare-fun lt!435631 () Bool)

(assert (=> d!372776 (= lt!435631 (isEmpty!7930 (list!5039 (c!216255 (_2!7375 lt!434724)))))))

(assert (=> d!372776 (= lt!435631 (= (size!10877 (c!216255 (_2!7375 lt!434724))) 0))))

(assert (=> d!372776 (= (isEmpty!7931 (c!216255 (_2!7375 lt!434724))) lt!435631)))

(declare-fun bs!330933 () Bool)

(assert (= bs!330933 d!372776))

(assert (=> bs!330933 m!1475471))

(assert (=> bs!330933 m!1475471))

(declare-fun m!1475479 () Bool)

(assert (=> bs!330933 m!1475479))

(declare-fun m!1475481 () Bool)

(assert (=> bs!330933 m!1475481))

(assert (=> d!372006 d!372776))

(declare-fun d!372778 () Bool)

(declare-fun lt!435632 () Int)

(assert (=> d!372778 (= lt!435632 (size!10875 (list!5035 (_1!7375 lt!434870))))))

(assert (=> d!372778 (= lt!435632 (size!10880 (c!216256 (_1!7375 lt!434870))))))

(assert (=> d!372778 (= (size!10870 (_1!7375 lt!434870)) lt!435632)))

(declare-fun bs!330934 () Bool)

(assert (= bs!330934 d!372778))

(assert (=> bs!330934 m!1472821))

(assert (=> bs!330934 m!1472821))

(declare-fun m!1475483 () Bool)

(assert (=> bs!330934 m!1475483))

(declare-fun m!1475485 () Bool)

(assert (=> bs!330934 m!1475485))

(assert (=> d!371880 d!372778))

(declare-fun b!1319852 () Bool)

(declare-fun e!845895 () tuple2!12978)

(assert (=> b!1319852 (= e!845895 (tuple2!12979 (BalanceConc!8727 Empty!4393) lt!434723))))

(declare-fun lt!435644 () Option!2581)

(declare-fun lt!435643 () tuple2!12978)

(declare-fun b!1319853 () Bool)

(assert (=> b!1319853 (= lt!435643 (lexRec!264 thiss!19762 rules!2550 (_2!7379 (v!21153 lt!435644))))))

(declare-fun e!845893 () tuple2!12978)

(assert (=> b!1319853 (= e!845893 (tuple2!12979 (prepend!349 (_1!7375 lt!435643) (_1!7379 (v!21153 lt!435644))) (_2!7375 lt!435643)))))

(declare-fun lt!435653 () Option!2581)

(declare-fun lt!435660 () tuple2!12978)

(declare-fun b!1319854 () Bool)

(assert (=> b!1319854 (= lt!435660 (lexRec!264 thiss!19762 rules!2550 (_2!7379 (v!21153 lt!435653))))))

(declare-fun e!845894 () tuple2!12978)

(assert (=> b!1319854 (= e!845894 (tuple2!12979 (prepend!349 (_1!7375 lt!435660) (_1!7379 (v!21153 lt!435653))) (_2!7375 lt!435660)))))

(declare-fun b!1319855 () Bool)

(assert (=> b!1319855 (= e!845893 (tuple2!12979 (BalanceConc!8727 Empty!4393) lt!434723))))

(declare-fun b!1319856 () Bool)

(declare-fun lt!435636 () tuple2!12978)

(declare-fun e!845896 () Bool)

(assert (=> b!1319856 (= e!845896 (= (list!5034 (_2!7375 lt!435636)) (list!5034 (_2!7375 (lexRec!264 thiss!19762 rules!2550 lt!434723)))))))

(declare-fun d!372780 () Bool)

(assert (=> d!372780 e!845896))

(declare-fun res!593108 () Bool)

(assert (=> d!372780 (=> (not res!593108) (not e!845896))))

(assert (=> d!372780 (= res!593108 (= (list!5035 (_1!7375 lt!435636)) (list!5035 (_1!7375 (lexRec!264 thiss!19762 rules!2550 lt!434723)))))))

(assert (=> d!372780 (= lt!435636 e!845895)))

(declare-fun c!216728 () Bool)

(declare-fun lt!435642 () Option!2581)

(assert (=> d!372780 (= c!216728 ((_ is Some!2580) lt!435642))))

(assert (=> d!372780 (= lt!435642 (maxPrefixZipperSequenceV2!209 thiss!19762 rules!2550 lt!434723 lt!434723))))

(declare-fun lt!435638 () Unit!19422)

(declare-fun lt!435655 () Unit!19422)

(assert (=> d!372780 (= lt!435638 lt!435655)))

(declare-fun lt!435654 () List!13420)

(declare-fun lt!435634 () List!13420)

(assert (=> d!372780 (isSuffix!242 lt!435654 (++!3406 lt!435634 lt!435654))))

(assert (=> d!372780 (= lt!435655 (lemmaConcatTwoListThenFSndIsSuffix!220 lt!435634 lt!435654))))

(assert (=> d!372780 (= lt!435654 (list!5034 lt!434723))))

(assert (=> d!372780 (= lt!435634 (list!5034 (BalanceConc!8725 Empty!4392)))))

(assert (=> d!372780 (= (lexTailRecV2!367 thiss!19762 rules!2550 lt!434723 (BalanceConc!8725 Empty!4392) lt!434723 (BalanceConc!8727 Empty!4393)) lt!435636)))

(declare-fun lt!435652 () BalanceConc!8724)

(declare-fun b!1319857 () Bool)

(assert (=> b!1319857 (= e!845895 (lexTailRecV2!367 thiss!19762 rules!2550 lt!434723 lt!435652 (_2!7379 (v!21153 lt!435642)) (append!385 (BalanceConc!8727 Empty!4393) (_1!7379 (v!21153 lt!435642)))))))

(declare-fun lt!435658 () tuple2!12978)

(assert (=> b!1319857 (= lt!435658 (lexRec!264 thiss!19762 rules!2550 (_2!7379 (v!21153 lt!435642))))))

(declare-fun lt!435665 () List!13420)

(assert (=> b!1319857 (= lt!435665 (list!5034 (BalanceConc!8725 Empty!4392)))))

(declare-fun lt!435657 () List!13420)

(assert (=> b!1319857 (= lt!435657 (list!5034 (charsOf!1283 (_1!7379 (v!21153 lt!435642)))))))

(declare-fun lt!435641 () List!13420)

(assert (=> b!1319857 (= lt!435641 (list!5034 (_2!7379 (v!21153 lt!435642))))))

(declare-fun lt!435659 () Unit!19422)

(assert (=> b!1319857 (= lt!435659 (lemmaConcatAssociativity!827 lt!435665 lt!435657 lt!435641))))

(assert (=> b!1319857 (= (++!3406 (++!3406 lt!435665 lt!435657) lt!435641) (++!3406 lt!435665 (++!3406 lt!435657 lt!435641)))))

(declare-fun lt!435635 () Unit!19422)

(assert (=> b!1319857 (= lt!435635 lt!435659)))

(assert (=> b!1319857 (= lt!435644 (maxPrefixZipperSequence!537 thiss!19762 rules!2550 lt!434723))))

(declare-fun c!216730 () Bool)

(assert (=> b!1319857 (= c!216730 ((_ is Some!2580) lt!435644))))

(assert (=> b!1319857 (= (lexRec!264 thiss!19762 rules!2550 lt!434723) e!845893)))

(declare-fun lt!435640 () Unit!19422)

(declare-fun Unit!19439 () Unit!19422)

(assert (=> b!1319857 (= lt!435640 Unit!19439)))

(declare-fun lt!435646 () List!13423)

(assert (=> b!1319857 (= lt!435646 (list!5035 (BalanceConc!8727 Empty!4393)))))

(declare-fun lt!435663 () List!13423)

(assert (=> b!1319857 (= lt!435663 (Cons!13357 (_1!7379 (v!21153 lt!435642)) Nil!13357))))

(declare-fun lt!435639 () List!13423)

(assert (=> b!1319857 (= lt!435639 (list!5035 (_1!7375 lt!435658)))))

(declare-fun lt!435651 () Unit!19422)

(assert (=> b!1319857 (= lt!435651 (lemmaConcatAssociativity!828 lt!435646 lt!435663 lt!435639))))

(assert (=> b!1319857 (= (++!3411 (++!3411 lt!435646 lt!435663) lt!435639) (++!3411 lt!435646 (++!3411 lt!435663 lt!435639)))))

(declare-fun lt!435648 () Unit!19422)

(assert (=> b!1319857 (= lt!435648 lt!435651)))

(declare-fun lt!435656 () List!13420)

(assert (=> b!1319857 (= lt!435656 (++!3406 (list!5034 (BalanceConc!8725 Empty!4392)) (list!5034 (charsOf!1283 (_1!7379 (v!21153 lt!435642))))))))

(declare-fun lt!435664 () List!13420)

(assert (=> b!1319857 (= lt!435664 (list!5034 (_2!7379 (v!21153 lt!435642))))))

(declare-fun lt!435649 () List!13423)

(assert (=> b!1319857 (= lt!435649 (list!5035 (append!385 (BalanceConc!8727 Empty!4393) (_1!7379 (v!21153 lt!435642)))))))

(declare-fun lt!435645 () Unit!19422)

(assert (=> b!1319857 (= lt!435645 (lemmaLexThenLexPrefix!179 thiss!19762 rules!2550 lt!435656 lt!435664 lt!435649 (list!5035 (_1!7375 lt!435658)) (list!5034 (_2!7375 lt!435658))))))

(assert (=> b!1319857 (= (lexList!544 thiss!19762 rules!2550 lt!435656) (tuple2!12981 lt!435649 Nil!13354))))

(declare-fun lt!435650 () Unit!19422)

(assert (=> b!1319857 (= lt!435650 lt!435645)))

(declare-fun lt!435662 () BalanceConc!8724)

(assert (=> b!1319857 (= lt!435662 (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (_1!7379 (v!21153 lt!435642)))))))

(assert (=> b!1319857 (= lt!435653 (maxPrefixZipperSequence!537 thiss!19762 rules!2550 lt!435662))))

(declare-fun c!216729 () Bool)

(assert (=> b!1319857 (= c!216729 ((_ is Some!2580) lt!435653))))

(assert (=> b!1319857 (= (lexRec!264 thiss!19762 rules!2550 (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (_1!7379 (v!21153 lt!435642))))) e!845894)))

(declare-fun lt!435633 () Unit!19422)

(declare-fun Unit!19440 () Unit!19422)

(assert (=> b!1319857 (= lt!435633 Unit!19440)))

(assert (=> b!1319857 (= lt!435652 (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (_1!7379 (v!21153 lt!435642)))))))

(declare-fun lt!435647 () List!13420)

(assert (=> b!1319857 (= lt!435647 (list!5034 lt!435652))))

(declare-fun lt!435637 () List!13420)

(assert (=> b!1319857 (= lt!435637 (list!5034 (_2!7379 (v!21153 lt!435642))))))

(declare-fun lt!435666 () Unit!19422)

(assert (=> b!1319857 (= lt!435666 (lemmaConcatTwoListThenFSndIsSuffix!220 lt!435647 lt!435637))))

(assert (=> b!1319857 (isSuffix!242 lt!435637 (++!3406 lt!435647 lt!435637))))

(declare-fun lt!435661 () Unit!19422)

(assert (=> b!1319857 (= lt!435661 lt!435666)))

(declare-fun b!1319858 () Bool)

(assert (=> b!1319858 (= e!845894 (tuple2!12979 (BalanceConc!8727 Empty!4393) lt!435662))))

(assert (= (and d!372780 c!216728) b!1319857))

(assert (= (and d!372780 (not c!216728)) b!1319852))

(assert (= (and b!1319857 c!216730) b!1319853))

(assert (= (and b!1319857 (not c!216730)) b!1319855))

(assert (= (and b!1319857 c!216729) b!1319854))

(assert (= (and b!1319857 (not c!216729)) b!1319858))

(assert (= (and d!372780 res!593108) b!1319856))

(declare-fun m!1475499 () Bool)

(assert (=> d!372780 m!1475499))

(declare-fun m!1475501 () Bool)

(assert (=> d!372780 m!1475501))

(assert (=> d!372780 m!1473853))

(assert (=> d!372780 m!1475501))

(declare-fun m!1475503 () Bool)

(assert (=> d!372780 m!1475503))

(declare-fun m!1475505 () Bool)

(assert (=> d!372780 m!1475505))

(declare-fun m!1475507 () Bool)

(assert (=> d!372780 m!1475507))

(assert (=> d!372780 m!1472277))

(declare-fun m!1475509 () Bool)

(assert (=> d!372780 m!1475509))

(declare-fun m!1475511 () Bool)

(assert (=> d!372780 m!1475511))

(declare-fun m!1475513 () Bool)

(assert (=> b!1319854 m!1475513))

(declare-fun m!1475515 () Bool)

(assert (=> b!1319854 m!1475515))

(declare-fun m!1475517 () Bool)

(assert (=> b!1319853 m!1475517))

(declare-fun m!1475521 () Bool)

(assert (=> b!1319853 m!1475521))

(declare-fun m!1475523 () Bool)

(assert (=> b!1319857 m!1475523))

(declare-fun m!1475525 () Bool)

(assert (=> b!1319857 m!1475525))

(declare-fun m!1475527 () Bool)

(assert (=> b!1319857 m!1475527))

(declare-fun m!1475529 () Bool)

(assert (=> b!1319857 m!1475529))

(declare-fun m!1475531 () Bool)

(assert (=> b!1319857 m!1475531))

(declare-fun m!1475535 () Bool)

(assert (=> b!1319857 m!1475535))

(assert (=> b!1319857 m!1475529))

(declare-fun m!1475537 () Bool)

(assert (=> b!1319857 m!1475537))

(declare-fun m!1475539 () Bool)

(assert (=> b!1319857 m!1475539))

(declare-fun m!1475541 () Bool)

(assert (=> b!1319857 m!1475541))

(declare-fun m!1475543 () Bool)

(assert (=> b!1319857 m!1475543))

(declare-fun m!1475545 () Bool)

(assert (=> b!1319857 m!1475545))

(declare-fun m!1475549 () Bool)

(assert (=> b!1319857 m!1475549))

(declare-fun m!1475553 () Bool)

(assert (=> b!1319857 m!1475553))

(declare-fun m!1475555 () Bool)

(assert (=> b!1319857 m!1475555))

(declare-fun m!1475557 () Bool)

(assert (=> b!1319857 m!1475557))

(declare-fun m!1475559 () Bool)

(assert (=> b!1319857 m!1475559))

(declare-fun m!1475561 () Bool)

(assert (=> b!1319857 m!1475561))

(assert (=> b!1319857 m!1475537))

(declare-fun m!1475563 () Bool)

(assert (=> b!1319857 m!1475563))

(assert (=> b!1319857 m!1473853))

(declare-fun m!1475565 () Bool)

(assert (=> b!1319857 m!1475565))

(declare-fun m!1475567 () Bool)

(assert (=> b!1319857 m!1475567))

(assert (=> b!1319857 m!1475559))

(assert (=> b!1319857 m!1475525))

(declare-fun m!1475569 () Bool)

(assert (=> b!1319857 m!1475569))

(declare-fun m!1475571 () Bool)

(assert (=> b!1319857 m!1475571))

(assert (=> b!1319857 m!1473853))

(assert (=> b!1319857 m!1475535))

(declare-fun m!1475573 () Bool)

(assert (=> b!1319857 m!1475573))

(assert (=> b!1319857 m!1475511))

(declare-fun m!1475575 () Bool)

(assert (=> b!1319857 m!1475575))

(assert (=> b!1319857 m!1475039))

(assert (=> b!1319857 m!1475527))

(assert (=> b!1319857 m!1475545))

(assert (=> b!1319857 m!1475539))

(assert (=> b!1319857 m!1475559))

(declare-fun m!1475577 () Bool)

(assert (=> b!1319857 m!1475577))

(assert (=> b!1319857 m!1475553))

(assert (=> b!1319857 m!1475525))

(assert (=> b!1319857 m!1475565))

(declare-fun m!1475579 () Bool)

(assert (=> b!1319857 m!1475579))

(declare-fun m!1475581 () Bool)

(assert (=> b!1319857 m!1475581))

(declare-fun m!1475583 () Bool)

(assert (=> b!1319857 m!1475583))

(declare-fun m!1475585 () Bool)

(assert (=> b!1319857 m!1475585))

(assert (=> b!1319857 m!1475569))

(declare-fun m!1475587 () Bool)

(assert (=> b!1319857 m!1475587))

(declare-fun m!1475589 () Bool)

(assert (=> b!1319856 m!1475589))

(assert (=> b!1319856 m!1475511))

(declare-fun m!1475591 () Bool)

(assert (=> b!1319856 m!1475591))

(assert (=> d!371880 d!372780))

(assert (=> b!1318060 d!372734))

(assert (=> b!1318060 d!372736))

(assert (=> d!371892 d!371954))

(declare-fun d!372806 () Bool)

(declare-fun lt!435667 () Bool)

(assert (=> d!372806 (= lt!435667 (isEmpty!7930 (list!5034 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))))))

(assert (=> d!372806 (= lt!435667 (isEmpty!7931 (c!216255 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34)))))))))

(assert (=> d!372806 (= (isEmpty!7924 (_2!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t2!34))))) lt!435667)))

(declare-fun bs!330947 () Bool)

(assert (= bs!330947 d!372806))

(declare-fun m!1475593 () Bool)

(assert (=> bs!330947 m!1475593))

(assert (=> bs!330947 m!1475593))

(declare-fun m!1475595 () Bool)

(assert (=> bs!330947 m!1475595))

(declare-fun m!1475597 () Bool)

(assert (=> bs!330947 m!1475597))

(assert (=> b!1318412 d!372806))

(assert (=> b!1318412 d!372370))

(assert (=> b!1318412 d!371882))

(assert (=> b!1318412 d!371884))

(declare-fun d!372808 () Bool)

(assert (=> d!372808 (= (list!5034 lt!434871) (list!5039 (c!216255 lt!434871)))))

(declare-fun bs!330948 () Bool)

(assert (= bs!330948 d!372808))

(declare-fun m!1475599 () Bool)

(assert (=> bs!330948 m!1475599))

(assert (=> d!371882 d!372808))

(declare-fun d!372810 () Bool)

(declare-fun c!216731 () Bool)

(assert (=> d!372810 (= c!216731 ((_ is Cons!13357) (list!5035 (singletonSeq!892 t2!34))))))

(declare-fun e!845900 () List!13420)

(assert (=> d!372810 (= (printList!562 thiss!19762 (list!5035 (singletonSeq!892 t2!34))) e!845900)))

(declare-fun b!1319862 () Bool)

(assert (=> b!1319862 (= e!845900 (++!3406 (list!5034 (charsOf!1283 (h!18758 (list!5035 (singletonSeq!892 t2!34))))) (printList!562 thiss!19762 (t!118438 (list!5035 (singletonSeq!892 t2!34))))))))

(declare-fun b!1319863 () Bool)

(assert (=> b!1319863 (= e!845900 Nil!13354)))

(assert (= (and d!372810 c!216731) b!1319862))

(assert (= (and d!372810 (not c!216731)) b!1319863))

(declare-fun m!1475601 () Bool)

(assert (=> b!1319862 m!1475601))

(assert (=> b!1319862 m!1475601))

(declare-fun m!1475603 () Bool)

(assert (=> b!1319862 m!1475603))

(declare-fun m!1475605 () Bool)

(assert (=> b!1319862 m!1475605))

(assert (=> b!1319862 m!1475603))

(assert (=> b!1319862 m!1475605))

(declare-fun m!1475607 () Bool)

(assert (=> b!1319862 m!1475607))

(assert (=> d!371882 d!372810))

(assert (=> d!371882 d!372372))

(declare-fun d!372812 () Bool)

(declare-fun lt!435668 () BalanceConc!8724)

(assert (=> d!372812 (= (list!5034 lt!435668) (printListTailRec!234 thiss!19762 (dropList!371 (singletonSeq!892 t2!34) 0) (list!5034 (BalanceConc!8725 Empty!4392))))))

(declare-fun e!845901 () BalanceConc!8724)

(assert (=> d!372812 (= lt!435668 e!845901)))

(declare-fun c!216732 () Bool)

(assert (=> d!372812 (= c!216732 (>= 0 (size!10870 (singletonSeq!892 t2!34))))))

(declare-fun e!845902 () Bool)

(assert (=> d!372812 e!845902))

(declare-fun res!593112 () Bool)

(assert (=> d!372812 (=> (not res!593112) (not e!845902))))

(assert (=> d!372812 (= res!593112 (>= 0 0))))

(assert (=> d!372812 (= (printTailRec!544 thiss!19762 (singletonSeq!892 t2!34) 0 (BalanceConc!8725 Empty!4392)) lt!435668)))

(declare-fun b!1319864 () Bool)

(assert (=> b!1319864 (= e!845902 (<= 0 (size!10870 (singletonSeq!892 t2!34))))))

(declare-fun b!1319865 () Bool)

(assert (=> b!1319865 (= e!845901 (BalanceConc!8725 Empty!4392))))

(declare-fun b!1319866 () Bool)

(assert (=> b!1319866 (= e!845901 (printTailRec!544 thiss!19762 (singletonSeq!892 t2!34) (+ 0 1) (++!3408 (BalanceConc!8725 Empty!4392) (charsOf!1283 (apply!3051 (singletonSeq!892 t2!34) 0)))))))

(declare-fun lt!435670 () List!13423)

(assert (=> b!1319866 (= lt!435670 (list!5035 (singletonSeq!892 t2!34)))))

(declare-fun lt!435674 () Unit!19422)

(assert (=> b!1319866 (= lt!435674 (lemmaDropApply!425 lt!435670 0))))

(assert (=> b!1319866 (= (head!2285 (drop!664 lt!435670 0)) (apply!3055 lt!435670 0))))

(declare-fun lt!435672 () Unit!19422)

(assert (=> b!1319866 (= lt!435672 lt!435674)))

(declare-fun lt!435673 () List!13423)

(assert (=> b!1319866 (= lt!435673 (list!5035 (singletonSeq!892 t2!34)))))

(declare-fun lt!435669 () Unit!19422)

(assert (=> b!1319866 (= lt!435669 (lemmaDropTail!405 lt!435673 0))))

(assert (=> b!1319866 (= (tail!1891 (drop!664 lt!435673 0)) (drop!664 lt!435673 (+ 0 1)))))

(declare-fun lt!435671 () Unit!19422)

(assert (=> b!1319866 (= lt!435671 lt!435669)))

(assert (= (and d!372812 res!593112) b!1319864))

(assert (= (and d!372812 c!216732) b!1319865))

(assert (= (and d!372812 (not c!216732)) b!1319866))

(assert (=> d!372812 m!1472321))

(declare-fun m!1475609 () Bool)

(assert (=> d!372812 m!1475609))

(assert (=> d!372812 m!1472321))

(declare-fun m!1475611 () Bool)

(assert (=> d!372812 m!1475611))

(assert (=> d!372812 m!1473853))

(assert (=> d!372812 m!1475609))

(assert (=> d!372812 m!1473853))

(declare-fun m!1475613 () Bool)

(assert (=> d!372812 m!1475613))

(declare-fun m!1475615 () Bool)

(assert (=> d!372812 m!1475615))

(assert (=> b!1319864 m!1472321))

(assert (=> b!1319864 m!1475611))

(declare-fun m!1475617 () Bool)

(assert (=> b!1319866 m!1475617))

(declare-fun m!1475619 () Bool)

(assert (=> b!1319866 m!1475619))

(declare-fun m!1475621 () Bool)

(assert (=> b!1319866 m!1475621))

(declare-fun m!1475623 () Bool)

(assert (=> b!1319866 m!1475623))

(declare-fun m!1475625 () Bool)

(assert (=> b!1319866 m!1475625))

(declare-fun m!1475627 () Bool)

(assert (=> b!1319866 m!1475627))

(declare-fun m!1475629 () Bool)

(assert (=> b!1319866 m!1475629))

(assert (=> b!1319866 m!1475627))

(declare-fun m!1475631 () Bool)

(assert (=> b!1319866 m!1475631))

(assert (=> b!1319866 m!1472321))

(assert (=> b!1319866 m!1475623))

(declare-fun m!1475633 () Bool)

(assert (=> b!1319866 m!1475633))

(declare-fun m!1475635 () Bool)

(assert (=> b!1319866 m!1475635))

(assert (=> b!1319866 m!1472321))

(declare-fun m!1475637 () Bool)

(assert (=> b!1319866 m!1475637))

(declare-fun m!1475639 () Bool)

(assert (=> b!1319866 m!1475639))

(assert (=> b!1319866 m!1475633))

(assert (=> b!1319866 m!1475625))

(assert (=> b!1319866 m!1475637))

(assert (=> b!1319866 m!1472321))

(assert (=> b!1319866 m!1472837))

(assert (=> d!371882 d!372812))

(declare-fun d!372814 () Bool)

(declare-fun lt!435675 () Bool)

(assert (=> d!372814 (= lt!435675 (select (content!1883 (t!118435 lt!434728)) lt!434714))))

(declare-fun e!845904 () Bool)

(assert (=> d!372814 (= lt!435675 e!845904)))

(declare-fun res!593113 () Bool)

(assert (=> d!372814 (=> (not res!593113) (not e!845904))))

(assert (=> d!372814 (= res!593113 ((_ is Cons!13354) (t!118435 lt!434728)))))

(assert (=> d!372814 (= (contains!2348 (t!118435 lt!434728) lt!434714) lt!435675)))

(declare-fun b!1319867 () Bool)

(declare-fun e!845903 () Bool)

(assert (=> b!1319867 (= e!845904 e!845903)))

(declare-fun res!593114 () Bool)

(assert (=> b!1319867 (=> res!593114 e!845903)))

(assert (=> b!1319867 (= res!593114 (= (h!18755 (t!118435 lt!434728)) lt!434714))))

(declare-fun b!1319868 () Bool)

(assert (=> b!1319868 (= e!845903 (contains!2348 (t!118435 (t!118435 lt!434728)) lt!434714))))

(assert (= (and d!372814 res!593113) b!1319867))

(assert (= (and b!1319867 (not res!593114)) b!1319868))

(assert (=> d!372814 m!1474785))

(declare-fun m!1475641 () Bool)

(assert (=> d!372814 m!1475641))

(declare-fun m!1475643 () Bool)

(assert (=> b!1319868 m!1475643))

(assert (=> b!1318490 d!372814))

(declare-fun b!1319869 () Bool)

(declare-fun e!845905 () tuple2!12980)

(declare-fun lt!435677 () Option!2580)

(declare-fun lt!435678 () tuple2!12980)

(assert (=> b!1319869 (= e!845905 (tuple2!12981 (Cons!13357 (_1!7377 (v!21135 lt!435677)) (_1!7376 lt!435678)) (_2!7376 lt!435678)))))

(assert (=> b!1319869 (= lt!435678 (lexList!544 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!435677))))))

(declare-fun b!1319870 () Bool)

(assert (=> b!1319870 (= e!845905 (tuple2!12981 Nil!13357 (_2!7377 (v!21135 lt!434859))))))

(declare-fun b!1319871 () Bool)

(declare-fun e!845907 () Bool)

(declare-fun lt!435676 () tuple2!12980)

(assert (=> b!1319871 (= e!845907 (= (_2!7376 lt!435676) (_2!7377 (v!21135 lt!434859))))))

(declare-fun b!1319872 () Bool)

(declare-fun e!845906 () Bool)

(assert (=> b!1319872 (= e!845907 e!845906)))

(declare-fun res!593115 () Bool)

(assert (=> b!1319872 (= res!593115 (< (size!10874 (_2!7376 lt!435676)) (size!10874 (_2!7377 (v!21135 lt!434859)))))))

(assert (=> b!1319872 (=> (not res!593115) (not e!845906))))

(declare-fun b!1319873 () Bool)

(assert (=> b!1319873 (= e!845906 (not (isEmpty!7932 (_1!7376 lt!435676))))))

(declare-fun d!372816 () Bool)

(assert (=> d!372816 e!845907))

(declare-fun c!216734 () Bool)

(assert (=> d!372816 (= c!216734 (> (size!10875 (_1!7376 lt!435676)) 0))))

(assert (=> d!372816 (= lt!435676 e!845905)))

(declare-fun c!216733 () Bool)

(assert (=> d!372816 (= c!216733 ((_ is Some!2579) lt!435677))))

(assert (=> d!372816 (= lt!435677 (maxPrefix!1016 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!434859))))))

(assert (=> d!372816 (= (lexList!544 thiss!19762 rules!2550 (_2!7377 (v!21135 lt!434859))) lt!435676)))

(assert (= (and d!372816 c!216733) b!1319869))

(assert (= (and d!372816 (not c!216733)) b!1319870))

(assert (= (and d!372816 c!216734) b!1319872))

(assert (= (and d!372816 (not c!216734)) b!1319871))

(assert (= (and b!1319872 res!593115) b!1319873))

(declare-fun m!1475645 () Bool)

(assert (=> b!1319869 m!1475645))

(declare-fun m!1475647 () Bool)

(assert (=> b!1319872 m!1475647))

(declare-fun m!1475649 () Bool)

(assert (=> b!1319872 m!1475649))

(declare-fun m!1475651 () Bool)

(assert (=> b!1319873 m!1475651))

(declare-fun m!1475653 () Bool)

(assert (=> d!372816 m!1475653))

(declare-fun m!1475655 () Bool)

(assert (=> d!372816 m!1475655))

(assert (=> b!1318118 d!372816))

(declare-fun b!1319892 () Bool)

(declare-fun res!593132 () Bool)

(declare-fun e!845919 () Bool)

(assert (=> b!1319892 (=> (not res!593132) (not e!845919))))

(declare-fun lt!435689 () Option!2580)

(assert (=> b!1319892 (= res!593132 (= (value!75496 (_1!7377 (get!4260 lt!435689))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!435689)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!435689)))))))))

(declare-fun b!1319893 () Bool)

(declare-fun res!593134 () Bool)

(assert (=> b!1319893 (=> (not res!593134) (not e!845919))))

(assert (=> b!1319893 (= res!593134 (< (size!10874 (_2!7377 (get!4260 lt!435689))) (size!10874 lt!434732)))))

(declare-fun d!372818 () Bool)

(declare-fun e!845916 () Bool)

(assert (=> d!372818 e!845916))

(declare-fun res!593136 () Bool)

(assert (=> d!372818 (=> res!593136 e!845916)))

(assert (=> d!372818 (= res!593136 (isEmpty!7935 lt!435689))))

(declare-fun e!845917 () Option!2580)

(assert (=> d!372818 (= lt!435689 e!845917)))

(declare-fun c!216737 () Bool)

(declare-datatypes ((tuple2!12990 0))(
  ( (tuple2!12991 (_1!7381 List!13420) (_2!7381 List!13420)) )
))
(declare-fun lt!435692 () tuple2!12990)

(assert (=> d!372818 (= c!216737 (isEmpty!7930 (_1!7381 lt!435692)))))

(declare-fun findLongestMatch!226 (Regex!3625 List!13420) tuple2!12990)

(assert (=> d!372818 (= lt!435692 (findLongestMatch!226 (regex!2311 (h!18757 rules!2550)) lt!434732))))

(assert (=> d!372818 (ruleValid!564 thiss!19762 (h!18757 rules!2550))))

(assert (=> d!372818 (= (maxPrefixOneRule!581 thiss!19762 (h!18757 rules!2550) lt!434732) lt!435689)))

(declare-fun b!1319894 () Bool)

(assert (=> b!1319894 (= e!845917 None!2579)))

(declare-fun b!1319895 () Bool)

(declare-fun e!845918 () Bool)

(declare-fun findLongestMatchInner!270 (Regex!3625 List!13420 Int List!13420 List!13420 Int) tuple2!12990)

(assert (=> b!1319895 (= e!845918 (matchR!1627 (regex!2311 (h!18757 rules!2550)) (_1!7381 (findLongestMatchInner!270 (regex!2311 (h!18757 rules!2550)) Nil!13354 (size!10874 Nil!13354) lt!434732 lt!434732 (size!10874 lt!434732)))))))

(declare-fun b!1319896 () Bool)

(declare-fun res!593131 () Bool)

(assert (=> b!1319896 (=> (not res!593131) (not e!845919))))

(assert (=> b!1319896 (= res!593131 (= (rule!4054 (_1!7377 (get!4260 lt!435689))) (h!18757 rules!2550)))))

(declare-fun b!1319897 () Bool)

(declare-fun res!593133 () Bool)

(assert (=> b!1319897 (=> (not res!593133) (not e!845919))))

(assert (=> b!1319897 (= res!593133 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435689)))) (_2!7377 (get!4260 lt!435689))) lt!434732))))

(declare-fun b!1319898 () Bool)

(assert (=> b!1319898 (= e!845917 (Some!2579 (tuple2!12983 (Token!4285 (apply!3048 (transformation!2311 (h!18757 rules!2550)) (seqFromList!1599 (_1!7381 lt!435692))) (h!18757 rules!2550) (size!10867 (seqFromList!1599 (_1!7381 lt!435692))) (_1!7381 lt!435692)) (_2!7381 lt!435692))))))

(declare-fun lt!435690 () Unit!19422)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!254 (Regex!3625 List!13420) Unit!19422)

(assert (=> b!1319898 (= lt!435690 (longestMatchIsAcceptedByMatchOrIsEmpty!254 (regex!2311 (h!18757 rules!2550)) lt!434732))))

(declare-fun res!593130 () Bool)

(assert (=> b!1319898 (= res!593130 (isEmpty!7930 (_1!7381 (findLongestMatchInner!270 (regex!2311 (h!18757 rules!2550)) Nil!13354 (size!10874 Nil!13354) lt!434732 lt!434732 (size!10874 lt!434732)))))))

(assert (=> b!1319898 (=> res!593130 e!845918)))

(assert (=> b!1319898 e!845918))

(declare-fun lt!435693 () Unit!19422)

(assert (=> b!1319898 (= lt!435693 lt!435690)))

(declare-fun lt!435691 () Unit!19422)

(declare-fun lemmaSemiInverse!324 (TokenValueInjection!4462 BalanceConc!8724) Unit!19422)

(assert (=> b!1319898 (= lt!435691 (lemmaSemiInverse!324 (transformation!2311 (h!18757 rules!2550)) (seqFromList!1599 (_1!7381 lt!435692))))))

(declare-fun b!1319899 () Bool)

(assert (=> b!1319899 (= e!845916 e!845919)))

(declare-fun res!593135 () Bool)

(assert (=> b!1319899 (=> (not res!593135) (not e!845919))))

(assert (=> b!1319899 (= res!593135 (matchR!1627 (regex!2311 (h!18757 rules!2550)) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435689))))))))

(declare-fun b!1319900 () Bool)

(assert (=> b!1319900 (= e!845919 (= (size!10866 (_1!7377 (get!4260 lt!435689))) (size!10874 (originalCharacters!3173 (_1!7377 (get!4260 lt!435689))))))))

(assert (= (and d!372818 c!216737) b!1319894))

(assert (= (and d!372818 (not c!216737)) b!1319898))

(assert (= (and b!1319898 (not res!593130)) b!1319895))

(assert (= (and d!372818 (not res!593136)) b!1319899))

(assert (= (and b!1319899 res!593135) b!1319897))

(assert (= (and b!1319897 res!593133) b!1319893))

(assert (= (and b!1319893 res!593134) b!1319896))

(assert (= (and b!1319896 res!593131) b!1319892))

(assert (= (and b!1319892 res!593132) b!1319900))

(declare-fun m!1475657 () Bool)

(assert (=> b!1319893 m!1475657))

(declare-fun m!1475659 () Bool)

(assert (=> b!1319893 m!1475659))

(assert (=> b!1319893 m!1472917))

(assert (=> b!1319892 m!1475657))

(declare-fun m!1475661 () Bool)

(assert (=> b!1319892 m!1475661))

(assert (=> b!1319892 m!1475661))

(declare-fun m!1475663 () Bool)

(assert (=> b!1319892 m!1475663))

(assert (=> b!1319896 m!1475657))

(assert (=> b!1319897 m!1475657))

(declare-fun m!1475665 () Bool)

(assert (=> b!1319897 m!1475665))

(assert (=> b!1319897 m!1475665))

(declare-fun m!1475667 () Bool)

(assert (=> b!1319897 m!1475667))

(assert (=> b!1319897 m!1475667))

(declare-fun m!1475669 () Bool)

(assert (=> b!1319897 m!1475669))

(declare-fun m!1475671 () Bool)

(assert (=> b!1319895 m!1475671))

(assert (=> b!1319895 m!1472917))

(assert (=> b!1319895 m!1475671))

(assert (=> b!1319895 m!1472917))

(declare-fun m!1475673 () Bool)

(assert (=> b!1319895 m!1475673))

(declare-fun m!1475675 () Bool)

(assert (=> b!1319895 m!1475675))

(assert (=> b!1319899 m!1475657))

(assert (=> b!1319899 m!1475665))

(assert (=> b!1319899 m!1475665))

(assert (=> b!1319899 m!1475667))

(assert (=> b!1319899 m!1475667))

(declare-fun m!1475677 () Bool)

(assert (=> b!1319899 m!1475677))

(declare-fun m!1475679 () Bool)

(assert (=> b!1319898 m!1475679))

(declare-fun m!1475681 () Bool)

(assert (=> b!1319898 m!1475681))

(declare-fun m!1475683 () Bool)

(assert (=> b!1319898 m!1475683))

(assert (=> b!1319898 m!1475671))

(assert (=> b!1319898 m!1472917))

(assert (=> b!1319898 m!1475673))

(assert (=> b!1319898 m!1475681))

(declare-fun m!1475685 () Bool)

(assert (=> b!1319898 m!1475685))

(declare-fun m!1475687 () Bool)

(assert (=> b!1319898 m!1475687))

(assert (=> b!1319898 m!1475671))

(assert (=> b!1319898 m!1475681))

(declare-fun m!1475689 () Bool)

(assert (=> b!1319898 m!1475689))

(assert (=> b!1319898 m!1472917))

(assert (=> b!1319898 m!1475681))

(declare-fun m!1475691 () Bool)

(assert (=> d!372818 m!1475691))

(declare-fun m!1475693 () Bool)

(assert (=> d!372818 m!1475693))

(declare-fun m!1475695 () Bool)

(assert (=> d!372818 m!1475695))

(assert (=> d!372818 m!1475153))

(assert (=> b!1319900 m!1475657))

(declare-fun m!1475697 () Bool)

(assert (=> b!1319900 m!1475697))

(assert (=> bm!89519 d!372818))

(declare-fun d!372820 () Bool)

(assert (=> d!372820 (= (list!5034 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))) (list!5039 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))))))

(declare-fun bs!330949 () Bool)

(assert (= bs!330949 d!372820))

(declare-fun m!1475699 () Bool)

(assert (=> bs!330949 m!1475699))

(assert (=> b!1318424 d!372820))

(declare-fun d!372822 () Bool)

(assert (=> d!372822 (= (list!5034 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))) (list!5039 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))))

(declare-fun bs!330950 () Bool)

(assert (= bs!330950 d!372822))

(declare-fun m!1475701 () Bool)

(assert (=> bs!330950 m!1475701))

(assert (=> b!1318422 d!372822))

(declare-fun d!372824 () Bool)

(assert (=> d!372824 true))

(declare-fun lambda!53829 () Int)

(declare-fun order!8073 () Int)

(declare-fun dynLambda!5862 (Int Int) Int)

(assert (=> d!372824 (< (dynLambda!5861 order!8071 (toValue!3538 (transformation!2311 (h!18757 rules!2550)))) (dynLambda!5862 order!8073 lambda!53829))))

(declare-fun Forall2!421 (Int) Bool)

(assert (=> d!372824 (= (equivClasses!829 (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (h!18757 rules!2550)))) (Forall2!421 lambda!53829))))

(declare-fun bs!330951 () Bool)

(assert (= bs!330951 d!372824))

(declare-fun m!1475703 () Bool)

(assert (=> bs!330951 m!1475703))

(assert (=> b!1318487 d!372824))

(declare-fun d!372826 () Bool)

(assert (=> d!372826 (= (list!5034 (_2!7375 lt!434821)) (list!5039 (c!216255 (_2!7375 lt!434821))))))

(declare-fun bs!330952 () Bool)

(assert (= bs!330952 d!372826))

(declare-fun m!1475705 () Bool)

(assert (=> bs!330952 m!1475705))

(assert (=> b!1318021 d!372826))

(assert (=> b!1318021 d!371864))

(assert (=> b!1318021 d!371868))

(declare-fun d!372828 () Bool)

(declare-fun c!216740 () Bool)

(assert (=> d!372828 (= c!216740 (and ((_ is Cons!13356) rules!2550) (not (= (isSeparator!2311 (h!18757 rules!2550)) (isSeparator!2311 (h!18757 rules!2550))))))))

(declare-fun e!845929 () Bool)

(assert (=> d!372828 (= (ruleDisjointCharsFromAllFromOtherType!314 (h!18757 rules!2550) rules!2550) e!845929)))

(declare-fun b!1319913 () Bool)

(declare-fun e!845930 () Bool)

(assert (=> b!1319913 (= e!845929 e!845930)))

(declare-fun res!593144 () Bool)

(declare-fun rulesUseDisjointChars!162 (Rule!4422 Rule!4422) Bool)

(assert (=> b!1319913 (= res!593144 (rulesUseDisjointChars!162 (h!18757 rules!2550) (h!18757 rules!2550)))))

(assert (=> b!1319913 (=> (not res!593144) (not e!845930))))

(declare-fun b!1319914 () Bool)

(declare-fun e!845928 () Bool)

(declare-fun call!89638 () Bool)

(assert (=> b!1319914 (= e!845928 call!89638)))

(declare-fun b!1319915 () Bool)

(assert (=> b!1319915 (= e!845929 e!845928)))

(declare-fun res!593143 () Bool)

(assert (=> b!1319915 (= res!593143 (not ((_ is Cons!13356) rules!2550)))))

(assert (=> b!1319915 (=> res!593143 e!845928)))

(declare-fun bm!89633 () Bool)

(assert (=> bm!89633 (= call!89638 (ruleDisjointCharsFromAllFromOtherType!314 (h!18757 rules!2550) (t!118437 rules!2550)))))

(declare-fun b!1319916 () Bool)

(assert (=> b!1319916 (= e!845930 call!89638)))

(assert (= (and d!372828 c!216740) b!1319913))

(assert (= (and d!372828 (not c!216740)) b!1319915))

(assert (= (and b!1319913 res!593144) b!1319916))

(assert (= (and b!1319915 (not res!593143)) b!1319914))

(assert (= (or b!1319916 b!1319914) bm!89633))

(declare-fun m!1475707 () Bool)

(assert (=> b!1319913 m!1475707))

(declare-fun m!1475709 () Bool)

(assert (=> bm!89633 m!1475709))

(assert (=> b!1318485 d!372828))

(declare-fun d!372830 () Bool)

(declare-fun lt!435694 () Bool)

(assert (=> d!372830 (= lt!435694 (select (content!1882 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!434973)))))))

(declare-fun e!845932 () Bool)

(assert (=> d!372830 (= lt!435694 e!845932)))

(declare-fun res!593146 () Bool)

(assert (=> d!372830 (=> (not res!593146) (not e!845932))))

(assert (=> d!372830 (= res!593146 ((_ is Cons!13356) rules!2550))))

(assert (=> d!372830 (= (contains!2349 rules!2550 (rule!4054 (_1!7377 (get!4260 lt!434973)))) lt!435694)))

(declare-fun b!1319917 () Bool)

(declare-fun e!845931 () Bool)

(assert (=> b!1319917 (= e!845932 e!845931)))

(declare-fun res!593145 () Bool)

(assert (=> b!1319917 (=> res!593145 e!845931)))

(assert (=> b!1319917 (= res!593145 (= (h!18757 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!434973)))))))

(declare-fun b!1319918 () Bool)

(assert (=> b!1319918 (= e!845931 (contains!2349 (t!118437 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!434973)))))))

(assert (= (and d!372830 res!593146) b!1319917))

(assert (= (and b!1319917 (not res!593145)) b!1319918))

(assert (=> d!372830 m!1472893))

(declare-fun m!1475711 () Bool)

(assert (=> d!372830 m!1475711))

(declare-fun m!1475713 () Bool)

(assert (=> b!1319918 m!1475713))

(assert (=> b!1318478 d!372830))

(assert (=> b!1318478 d!372300))

(declare-fun d!372832 () Bool)

(declare-fun lt!435695 () Int)

(assert (=> d!372832 (= lt!435695 (size!10874 (list!5034 (_2!7375 lt!434870))))))

(assert (=> d!372832 (= lt!435695 (size!10877 (c!216255 (_2!7375 lt!434870))))))

(assert (=> d!372832 (= (size!10867 (_2!7375 lt!434870)) lt!435695)))

(declare-fun bs!330953 () Bool)

(assert (= bs!330953 d!372832))

(assert (=> bs!330953 m!1472833))

(assert (=> bs!330953 m!1472833))

(declare-fun m!1475715 () Bool)

(assert (=> bs!330953 m!1475715))

(declare-fun m!1475717 () Bool)

(assert (=> bs!330953 m!1475717))

(assert (=> b!1318133 d!372832))

(declare-fun d!372834 () Bool)

(declare-fun lt!435696 () Int)

(assert (=> d!372834 (= lt!435696 (size!10874 (list!5034 lt!434723)))))

(assert (=> d!372834 (= lt!435696 (size!10877 (c!216255 lt!434723)))))

(assert (=> d!372834 (= (size!10867 lt!434723) lt!435696)))

(declare-fun bs!330954 () Bool)

(assert (= bs!330954 d!372834))

(assert (=> bs!330954 m!1472277))

(assert (=> bs!330954 m!1472277))

(assert (=> bs!330954 m!1472883))

(declare-fun m!1475719 () Bool)

(assert (=> bs!330954 m!1475719))

(assert (=> b!1318133 d!372834))

(declare-fun d!372836 () Bool)

(declare-fun res!593151 () Bool)

(declare-fun e!845937 () Bool)

(assert (=> d!372836 (=> res!593151 e!845937)))

(assert (=> d!372836 (= res!593151 ((_ is Nil!13356) rules!2550))))

(assert (=> d!372836 (= (noDuplicateTag!839 thiss!19762 rules!2550 Nil!13360) e!845937)))

(declare-fun b!1319923 () Bool)

(declare-fun e!845938 () Bool)

(assert (=> b!1319923 (= e!845937 e!845938)))

(declare-fun res!593152 () Bool)

(assert (=> b!1319923 (=> (not res!593152) (not e!845938))))

(declare-fun contains!2351 (List!13426 String!16241) Bool)

(assert (=> b!1319923 (= res!593152 (not (contains!2351 Nil!13360 (tag!2573 (h!18757 rules!2550)))))))

(declare-fun b!1319924 () Bool)

(assert (=> b!1319924 (= e!845938 (noDuplicateTag!839 thiss!19762 (t!118437 rules!2550) (Cons!13360 (tag!2573 (h!18757 rules!2550)) Nil!13360)))))

(assert (= (and d!372836 (not res!593151)) b!1319923))

(assert (= (and b!1319923 res!593152) b!1319924))

(declare-fun m!1475721 () Bool)

(assert (=> b!1319923 m!1475721))

(declare-fun m!1475723 () Bool)

(assert (=> b!1319924 m!1475723))

(assert (=> b!1318347 d!372836))

(declare-fun d!372838 () Bool)

(assert (=> d!372838 (= (isEmpty!7932 (_1!7376 lt!434858)) ((_ is Nil!13357) (_1!7376 lt!434858)))))

(assert (=> b!1318122 d!372838))

(declare-fun d!372840 () Bool)

(assert (=> d!372840 (= (isEmpty!7935 lt!434973) (not ((_ is Some!2579) lt!434973)))))

(assert (=> d!372016 d!372840))

(declare-fun d!372842 () Bool)

(declare-fun e!845940 () Bool)

(assert (=> d!372842 e!845940))

(declare-fun res!593153 () Bool)

(assert (=> d!372842 (=> res!593153 e!845940)))

(declare-fun lt!435697 () Bool)

(assert (=> d!372842 (= res!593153 (not lt!435697))))

(declare-fun e!845941 () Bool)

(assert (=> d!372842 (= lt!435697 e!845941)))

(declare-fun res!593154 () Bool)

(assert (=> d!372842 (=> res!593154 e!845941)))

(assert (=> d!372842 (= res!593154 ((_ is Nil!13354) (list!5034 lt!434725)))))

(assert (=> d!372842 (= (isPrefix!1076 (list!5034 lt!434725) (list!5034 lt!434725)) lt!435697)))

(declare-fun b!1319926 () Bool)

(declare-fun res!593155 () Bool)

(declare-fun e!845939 () Bool)

(assert (=> b!1319926 (=> (not res!593155) (not e!845939))))

(assert (=> b!1319926 (= res!593155 (= (head!2281 (list!5034 lt!434725)) (head!2281 (list!5034 lt!434725))))))

(declare-fun b!1319927 () Bool)

(assert (=> b!1319927 (= e!845939 (isPrefix!1076 (tail!1890 (list!5034 lt!434725)) (tail!1890 (list!5034 lt!434725))))))

(declare-fun b!1319925 () Bool)

(assert (=> b!1319925 (= e!845941 e!845939)))

(declare-fun res!593156 () Bool)

(assert (=> b!1319925 (=> (not res!593156) (not e!845939))))

(assert (=> b!1319925 (= res!593156 (not ((_ is Nil!13354) (list!5034 lt!434725))))))

(declare-fun b!1319928 () Bool)

(assert (=> b!1319928 (= e!845940 (>= (size!10874 (list!5034 lt!434725)) (size!10874 (list!5034 lt!434725))))))

(assert (= (and d!372842 (not res!593154)) b!1319925))

(assert (= (and b!1319925 res!593156) b!1319926))

(assert (= (and b!1319926 res!593155) b!1319927))

(assert (= (and d!372842 (not res!593153)) b!1319928))

(assert (=> b!1319926 m!1472335))

(declare-fun m!1475725 () Bool)

(assert (=> b!1319926 m!1475725))

(assert (=> b!1319926 m!1472335))

(assert (=> b!1319926 m!1475725))

(assert (=> b!1319927 m!1472335))

(declare-fun m!1475727 () Bool)

(assert (=> b!1319927 m!1475727))

(assert (=> b!1319927 m!1472335))

(assert (=> b!1319927 m!1475727))

(assert (=> b!1319927 m!1475727))

(assert (=> b!1319927 m!1475727))

(declare-fun m!1475729 () Bool)

(assert (=> b!1319927 m!1475729))

(assert (=> b!1319928 m!1472335))

(assert (=> b!1319928 m!1472803))

(assert (=> b!1319928 m!1472335))

(assert (=> b!1319928 m!1472803))

(assert (=> d!372016 d!372842))

(declare-fun d!372844 () Bool)

(assert (=> d!372844 (isPrefix!1076 (list!5034 lt!434725) (list!5034 lt!434725))))

(declare-fun lt!435698 () Unit!19422)

(assert (=> d!372844 (= lt!435698 (choose!8072 (list!5034 lt!434725) (list!5034 lt!434725)))))

(assert (=> d!372844 (= (lemmaIsPrefixRefl!755 (list!5034 lt!434725) (list!5034 lt!434725)) lt!435698)))

(declare-fun bs!330955 () Bool)

(assert (= bs!330955 d!372844))

(assert (=> bs!330955 m!1472335))

(assert (=> bs!330955 m!1472335))

(assert (=> bs!330955 m!1473309))

(assert (=> bs!330955 m!1472335))

(assert (=> bs!330955 m!1472335))

(declare-fun m!1475731 () Bool)

(assert (=> bs!330955 m!1475731))

(assert (=> d!372016 d!372844))

(assert (=> d!372016 d!372684))

(declare-fun d!372846 () Bool)

(declare-fun c!216741 () Bool)

(assert (=> d!372846 (= c!216741 (isEmpty!7930 (tail!1890 lt!434728)))))

(declare-fun e!845942 () Bool)

(assert (=> d!372846 (= (prefixMatch!138 (derivativeStep!901 lt!434731 (head!2281 lt!434728)) (tail!1890 lt!434728)) e!845942)))

(declare-fun b!1319929 () Bool)

(assert (=> b!1319929 (= e!845942 (not (lostCause!277 (derivativeStep!901 lt!434731 (head!2281 lt!434728)))))))

(declare-fun b!1319930 () Bool)

(assert (=> b!1319930 (= e!845942 (prefixMatch!138 (derivativeStep!901 (derivativeStep!901 lt!434731 (head!2281 lt!434728)) (head!2281 (tail!1890 lt!434728))) (tail!1890 (tail!1890 lt!434728))))))

(assert (= (and d!372846 c!216741) b!1319929))

(assert (= (and d!372846 (not c!216741)) b!1319930))

(assert (=> d!372846 m!1472989))

(declare-fun m!1475733 () Bool)

(assert (=> d!372846 m!1475733))

(assert (=> b!1319929 m!1472987))

(declare-fun m!1475735 () Bool)

(assert (=> b!1319929 m!1475735))

(assert (=> b!1319930 m!1472989))

(declare-fun m!1475737 () Bool)

(assert (=> b!1319930 m!1475737))

(assert (=> b!1319930 m!1472987))

(assert (=> b!1319930 m!1475737))

(declare-fun m!1475739 () Bool)

(assert (=> b!1319930 m!1475739))

(assert (=> b!1319930 m!1472989))

(declare-fun m!1475741 () Bool)

(assert (=> b!1319930 m!1475741))

(assert (=> b!1319930 m!1475739))

(assert (=> b!1319930 m!1475741))

(declare-fun m!1475743 () Bool)

(assert (=> b!1319930 m!1475743))

(assert (=> b!1318256 d!372846))

(declare-fun bm!89634 () Bool)

(declare-fun call!89642 () Regex!3625)

(declare-fun call!89639 () Regex!3625)

(assert (=> bm!89634 (= call!89642 call!89639)))

(declare-fun bm!89635 () Bool)

(declare-fun c!216745 () Bool)

(declare-fun c!216743 () Bool)

(assert (=> bm!89635 (= call!89639 (derivativeStep!901 (ite c!216743 (regTwo!7763 lt!434731) (ite c!216745 (regTwo!7762 lt!434731) (regOne!7762 lt!434731))) (head!2281 lt!434728)))))

(declare-fun b!1319931 () Bool)

(declare-fun e!845945 () Regex!3625)

(assert (=> b!1319931 (= e!845945 (Union!3625 (Concat!6026 call!89642 (regTwo!7762 lt!434731)) EmptyLang!3625))))

(declare-fun b!1319932 () Bool)

(declare-fun call!89640 () Regex!3625)

(assert (=> b!1319932 (= e!845945 (Union!3625 (Concat!6026 call!89640 (regTwo!7762 lt!434731)) call!89642))))

(declare-fun b!1319933 () Bool)

(declare-fun e!845947 () Regex!3625)

(declare-fun call!89641 () Regex!3625)

(assert (=> b!1319933 (= e!845947 (Union!3625 call!89641 call!89639))))

(declare-fun b!1319934 () Bool)

(assert (=> b!1319934 (= c!216745 (nullable!1149 (regOne!7762 lt!434731)))))

(declare-fun e!845946 () Regex!3625)

(assert (=> b!1319934 (= e!845946 e!845945)))

(declare-fun b!1319935 () Bool)

(assert (=> b!1319935 (= e!845947 e!845946)))

(declare-fun c!216746 () Bool)

(assert (=> b!1319935 (= c!216746 ((_ is Star!3625) lt!434731))))

(declare-fun b!1319936 () Bool)

(declare-fun e!845944 () Regex!3625)

(assert (=> b!1319936 (= e!845944 (ite (= (head!2281 lt!434728) (c!216254 lt!434731)) EmptyExpr!3625 EmptyLang!3625))))

(declare-fun b!1319937 () Bool)

(declare-fun e!845943 () Regex!3625)

(assert (=> b!1319937 (= e!845943 EmptyLang!3625)))

(declare-fun bm!89637 () Bool)

(assert (=> bm!89637 (= call!89641 (derivativeStep!901 (ite c!216743 (regOne!7763 lt!434731) (ite c!216746 (reg!3954 lt!434731) (regOne!7762 lt!434731))) (head!2281 lt!434728)))))

(declare-fun b!1319938 () Bool)

(assert (=> b!1319938 (= c!216743 ((_ is Union!3625) lt!434731))))

(assert (=> b!1319938 (= e!845944 e!845947)))

(declare-fun bm!89636 () Bool)

(assert (=> bm!89636 (= call!89640 call!89641)))

(declare-fun d!372848 () Bool)

(declare-fun lt!435699 () Regex!3625)

(assert (=> d!372848 (validRegex!1551 lt!435699)))

(assert (=> d!372848 (= lt!435699 e!845943)))

(declare-fun c!216742 () Bool)

(assert (=> d!372848 (= c!216742 (or ((_ is EmptyExpr!3625) lt!434731) ((_ is EmptyLang!3625) lt!434731)))))

(assert (=> d!372848 (validRegex!1551 lt!434731)))

(assert (=> d!372848 (= (derivativeStep!901 lt!434731 (head!2281 lt!434728)) lt!435699)))

(declare-fun b!1319939 () Bool)

(assert (=> b!1319939 (= e!845943 e!845944)))

(declare-fun c!216744 () Bool)

(assert (=> b!1319939 (= c!216744 ((_ is ElementMatch!3625) lt!434731))))

(declare-fun b!1319940 () Bool)

(assert (=> b!1319940 (= e!845946 (Concat!6026 call!89640 lt!434731))))

(assert (= (and d!372848 c!216742) b!1319937))

(assert (= (and d!372848 (not c!216742)) b!1319939))

(assert (= (and b!1319939 c!216744) b!1319936))

(assert (= (and b!1319939 (not c!216744)) b!1319938))

(assert (= (and b!1319938 c!216743) b!1319933))

(assert (= (and b!1319938 (not c!216743)) b!1319935))

(assert (= (and b!1319935 c!216746) b!1319940))

(assert (= (and b!1319935 (not c!216746)) b!1319934))

(assert (= (and b!1319934 c!216745) b!1319932))

(assert (= (and b!1319934 (not c!216745)) b!1319931))

(assert (= (or b!1319932 b!1319931) bm!89634))

(assert (= (or b!1319940 b!1319932) bm!89636))

(assert (= (or b!1319933 bm!89636) bm!89637))

(assert (= (or b!1319933 bm!89634) bm!89635))

(assert (=> bm!89635 m!1472985))

(declare-fun m!1475745 () Bool)

(assert (=> bm!89635 m!1475745))

(assert (=> b!1319934 m!1474203))

(assert (=> bm!89637 m!1472985))

(declare-fun m!1475747 () Bool)

(assert (=> bm!89637 m!1475747))

(declare-fun m!1475749 () Bool)

(assert (=> d!372848 m!1475749))

(assert (=> d!372848 m!1473253))

(assert (=> b!1318256 d!372848))

(declare-fun d!372850 () Bool)

(assert (=> d!372850 (= (head!2281 lt!434728) (h!18755 lt!434728))))

(assert (=> b!1318256 d!372850))

(declare-fun d!372852 () Bool)

(assert (=> d!372852 (= (tail!1890 lt!434728) (t!118435 lt!434728))))

(assert (=> b!1318256 d!372852))

(declare-fun d!372854 () Bool)

(assert (=> d!372854 (= (isEmpty!7930 (originalCharacters!3173 t1!34)) ((_ is Nil!13354) (originalCharacters!3173 t1!34)))))

(assert (=> d!372002 d!372854))

(declare-fun d!372856 () Bool)

(declare-fun e!845949 () Bool)

(assert (=> d!372856 e!845949))

(declare-fun res!593157 () Bool)

(assert (=> d!372856 (=> res!593157 e!845949)))

(declare-fun lt!435700 () Bool)

(assert (=> d!372856 (= res!593157 (not lt!435700))))

(declare-fun e!845950 () Bool)

(assert (=> d!372856 (= lt!435700 e!845950)))

(declare-fun res!593158 () Bool)

(assert (=> d!372856 (=> res!593158 e!845950)))

(assert (=> d!372856 (= res!593158 ((_ is Nil!13354) lt!434728))))

(assert (=> d!372856 (= (isPrefix!1076 lt!434728 lt!434989) lt!435700)))

(declare-fun b!1319942 () Bool)

(declare-fun res!593159 () Bool)

(declare-fun e!845948 () Bool)

(assert (=> b!1319942 (=> (not res!593159) (not e!845948))))

(assert (=> b!1319942 (= res!593159 (= (head!2281 lt!434728) (head!2281 lt!434989)))))

(declare-fun b!1319943 () Bool)

(assert (=> b!1319943 (= e!845948 (isPrefix!1076 (tail!1890 lt!434728) (tail!1890 lt!434989)))))

(declare-fun b!1319941 () Bool)

(assert (=> b!1319941 (= e!845950 e!845948)))

(declare-fun res!593160 () Bool)

(assert (=> b!1319941 (=> (not res!593160) (not e!845948))))

(assert (=> b!1319941 (= res!593160 (not ((_ is Nil!13354) lt!434989)))))

(declare-fun b!1319944 () Bool)

(assert (=> b!1319944 (= e!845949 (>= (size!10874 lt!434989) (size!10874 lt!434728)))))

(assert (= (and d!372856 (not res!593158)) b!1319941))

(assert (= (and b!1319941 res!593160) b!1319942))

(assert (= (and b!1319942 res!593159) b!1319943))

(assert (= (and d!372856 (not res!593157)) b!1319944))

(assert (=> b!1319942 m!1472985))

(declare-fun m!1475751 () Bool)

(assert (=> b!1319942 m!1475751))

(assert (=> b!1319943 m!1472989))

(declare-fun m!1475753 () Bool)

(assert (=> b!1319943 m!1475753))

(assert (=> b!1319943 m!1472989))

(assert (=> b!1319943 m!1475753))

(declare-fun m!1475755 () Bool)

(assert (=> b!1319943 m!1475755))

(declare-fun m!1475757 () Bool)

(assert (=> b!1319944 m!1475757))

(assert (=> b!1319944 m!1473345))

(assert (=> b!1318546 d!372856))

(declare-fun d!372858 () Bool)

(assert (=> d!372858 (= (list!5035 (_1!7375 lt!434821)) (list!5038 (c!216256 (_1!7375 lt!434821))))))

(declare-fun bs!330956 () Bool)

(assert (= bs!330956 d!372858))

(declare-fun m!1475759 () Bool)

(assert (=> bs!330956 m!1475759))

(assert (=> b!1318025 d!372858))

(assert (=> b!1318025 d!371864))

(assert (=> b!1318025 d!371868))

(declare-fun b!1319945 () Bool)

(declare-fun e!845951 () List!13420)

(assert (=> b!1319945 (= e!845951 (_2!7377 (get!4260 lt!434973)))))

(declare-fun b!1319948 () Bool)

(declare-fun e!845952 () Bool)

(declare-fun lt!435701 () List!13420)

(assert (=> b!1319948 (= e!845952 (or (not (= (_2!7377 (get!4260 lt!434973)) Nil!13354)) (= lt!435701 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))))))))

(declare-fun b!1319947 () Bool)

(declare-fun res!593162 () Bool)

(assert (=> b!1319947 (=> (not res!593162) (not e!845952))))

(assert (=> b!1319947 (= res!593162 (= (size!10874 lt!435701) (+ (size!10874 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) (size!10874 (_2!7377 (get!4260 lt!434973))))))))

(declare-fun b!1319946 () Bool)

(assert (=> b!1319946 (= e!845951 (Cons!13354 (h!18755 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) (++!3406 (t!118435 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) (_2!7377 (get!4260 lt!434973)))))))

(declare-fun d!372860 () Bool)

(assert (=> d!372860 e!845952))

(declare-fun res!593161 () Bool)

(assert (=> d!372860 (=> (not res!593161) (not e!845952))))

(assert (=> d!372860 (= res!593161 (= (content!1883 lt!435701) ((_ map or) (content!1883 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))) (content!1883 (_2!7377 (get!4260 lt!434973))))))))

(assert (=> d!372860 (= lt!435701 e!845951)))

(declare-fun c!216747 () Bool)

(assert (=> d!372860 (= c!216747 ((_ is Nil!13354) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973))))))))

(assert (=> d!372860 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434973)))) (_2!7377 (get!4260 lt!434973))) lt!435701)))

(assert (= (and d!372860 c!216747) b!1319945))

(assert (= (and d!372860 (not c!216747)) b!1319946))

(assert (= (and d!372860 res!593161) b!1319947))

(assert (= (and b!1319947 res!593162) b!1319948))

(declare-fun m!1475761 () Bool)

(assert (=> b!1319947 m!1475761))

(assert (=> b!1319947 m!1473289))

(declare-fun m!1475763 () Bool)

(assert (=> b!1319947 m!1475763))

(assert (=> b!1319947 m!1473295))

(declare-fun m!1475765 () Bool)

(assert (=> b!1319946 m!1475765))

(declare-fun m!1475767 () Bool)

(assert (=> d!372860 m!1475767))

(assert (=> d!372860 m!1473289))

(declare-fun m!1475769 () Bool)

(assert (=> d!372860 m!1475769))

(declare-fun m!1475771 () Bool)

(assert (=> d!372860 m!1475771))

(assert (=> b!1318475 d!372860))

(assert (=> b!1318475 d!372302))

(assert (=> b!1318475 d!372304))

(assert (=> b!1318475 d!372300))

(declare-fun b!1319949 () Bool)

(declare-fun e!845953 () List!13420)

(assert (=> b!1319949 (= e!845953 Nil!13354)))

(declare-fun b!1319951 () Bool)

(declare-fun e!845954 () List!13420)

(assert (=> b!1319951 (= e!845954 (list!5042 (xs!7107 (c!216255 lt!434723))))))

(declare-fun b!1319952 () Bool)

(assert (=> b!1319952 (= e!845954 (++!3406 (list!5039 (left!11477 (c!216255 lt!434723))) (list!5039 (right!11807 (c!216255 lt!434723)))))))

(declare-fun d!372862 () Bool)

(declare-fun c!216748 () Bool)

(assert (=> d!372862 (= c!216748 ((_ is Empty!4392) (c!216255 lt!434723)))))

(assert (=> d!372862 (= (list!5039 (c!216255 lt!434723)) e!845953)))

(declare-fun b!1319950 () Bool)

(assert (=> b!1319950 (= e!845953 e!845954)))

(declare-fun c!216749 () Bool)

(assert (=> b!1319950 (= c!216749 ((_ is Leaf!6744) (c!216255 lt!434723)))))

(assert (= (and d!372862 c!216748) b!1319949))

(assert (= (and d!372862 (not c!216748)) b!1319950))

(assert (= (and b!1319950 c!216749) b!1319951))

(assert (= (and b!1319950 (not c!216749)) b!1319952))

(declare-fun m!1475773 () Bool)

(assert (=> b!1319951 m!1475773))

(declare-fun m!1475775 () Bool)

(assert (=> b!1319952 m!1475775))

(declare-fun m!1475777 () Bool)

(assert (=> b!1319952 m!1475777))

(assert (=> b!1319952 m!1475775))

(assert (=> b!1319952 m!1475777))

(declare-fun m!1475779 () Bool)

(assert (=> b!1319952 m!1475779))

(assert (=> d!371896 d!372862))

(declare-fun d!372864 () Bool)

(declare-fun lt!435702 () Bool)

(assert (=> d!372864 (= lt!435702 (isEmpty!7930 (list!5034 (_2!7375 lt!434966))))))

(assert (=> d!372864 (= lt!435702 (isEmpty!7931 (c!216255 (_2!7375 lt!434966))))))

(assert (=> d!372864 (= (isEmpty!7924 (_2!7375 lt!434966)) lt!435702)))

(declare-fun bs!330957 () Bool)

(assert (= bs!330957 d!372864))

(declare-fun m!1475781 () Bool)

(assert (=> bs!330957 m!1475781))

(assert (=> bs!330957 m!1475781))

(declare-fun m!1475783 () Bool)

(assert (=> bs!330957 m!1475783))

(declare-fun m!1475785 () Bool)

(assert (=> bs!330957 m!1475785))

(assert (=> b!1318411 d!372864))

(declare-fun d!372866 () Bool)

(assert (=> d!372866 (= (nullable!1149 (reg!3954 (regex!2311 (rule!4054 t2!34)))) (nullableFct!265 (reg!3954 (regex!2311 (rule!4054 t2!34)))))))

(declare-fun bs!330958 () Bool)

(assert (= bs!330958 d!372866))

(declare-fun m!1475787 () Bool)

(assert (=> bs!330958 m!1475787))

(assert (=> b!1318459 d!372866))

(declare-fun b!1319953 () Bool)

(declare-fun e!845956 () Bool)

(declare-fun e!845957 () Bool)

(assert (=> b!1319953 (= e!845956 e!845957)))

(declare-fun res!593169 () Bool)

(assert (=> b!1319953 (=> (not res!593169) (not e!845957))))

(declare-fun lt!435703 () Bool)

(assert (=> b!1319953 (= res!593169 (not lt!435703))))

(declare-fun bm!89638 () Bool)

(declare-fun call!89643 () Bool)

(assert (=> bm!89638 (= call!89643 (isEmpty!7930 lt!434735))))

(declare-fun d!372868 () Bool)

(declare-fun e!845961 () Bool)

(assert (=> d!372868 e!845961))

(declare-fun c!216752 () Bool)

(assert (=> d!372868 (= c!216752 ((_ is EmptyExpr!3625) (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun e!845959 () Bool)

(assert (=> d!372868 (= lt!435703 e!845959)))

(declare-fun c!216751 () Bool)

(assert (=> d!372868 (= c!216751 (isEmpty!7930 lt!434735))))

(assert (=> d!372868 (validRegex!1551 (h!18759 (map!2933 rules!2550 lambda!53720)))))

(assert (=> d!372868 (= (matchR!1627 (h!18759 (map!2933 rules!2550 lambda!53720)) lt!434735) lt!435703)))

(declare-fun b!1319954 () Bool)

(declare-fun res!593163 () Bool)

(assert (=> b!1319954 (=> res!593163 e!845956)))

(assert (=> b!1319954 (= res!593163 (not ((_ is ElementMatch!3625) (h!18759 (map!2933 rules!2550 lambda!53720)))))))

(declare-fun e!845960 () Bool)

(assert (=> b!1319954 (= e!845960 e!845956)))

(declare-fun b!1319955 () Bool)

(declare-fun res!593168 () Bool)

(declare-fun e!845955 () Bool)

(assert (=> b!1319955 (=> res!593168 e!845955)))

(assert (=> b!1319955 (= res!593168 (not (isEmpty!7930 (tail!1890 lt!434735))))))

(declare-fun e!845958 () Bool)

(declare-fun b!1319956 () Bool)

(assert (=> b!1319956 (= e!845958 (= (head!2281 lt!434735) (c!216254 (h!18759 (map!2933 rules!2550 lambda!53720)))))))

(declare-fun b!1319957 () Bool)

(assert (=> b!1319957 (= e!845961 e!845960)))

(declare-fun c!216750 () Bool)

(assert (=> b!1319957 (= c!216750 ((_ is EmptyLang!3625) (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun b!1319958 () Bool)

(assert (=> b!1319958 (= e!845959 (nullable!1149 (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun b!1319959 () Bool)

(declare-fun res!593166 () Bool)

(assert (=> b!1319959 (=> (not res!593166) (not e!845958))))

(assert (=> b!1319959 (= res!593166 (isEmpty!7930 (tail!1890 lt!434735)))))

(declare-fun b!1319960 () Bool)

(assert (=> b!1319960 (= e!845959 (matchR!1627 (derivativeStep!901 (h!18759 (map!2933 rules!2550 lambda!53720)) (head!2281 lt!434735)) (tail!1890 lt!434735)))))

(declare-fun b!1319961 () Bool)

(assert (=> b!1319961 (= e!845961 (= lt!435703 call!89643))))

(declare-fun b!1319962 () Bool)

(assert (=> b!1319962 (= e!845955 (not (= (head!2281 lt!434735) (c!216254 (h!18759 (map!2933 rules!2550 lambda!53720))))))))

(declare-fun b!1319963 () Bool)

(declare-fun res!593165 () Bool)

(assert (=> b!1319963 (=> res!593165 e!845956)))

(assert (=> b!1319963 (= res!593165 e!845958)))

(declare-fun res!593164 () Bool)

(assert (=> b!1319963 (=> (not res!593164) (not e!845958))))

(assert (=> b!1319963 (= res!593164 lt!435703)))

(declare-fun b!1319964 () Bool)

(assert (=> b!1319964 (= e!845960 (not lt!435703))))

(declare-fun b!1319965 () Bool)

(declare-fun res!593167 () Bool)

(assert (=> b!1319965 (=> (not res!593167) (not e!845958))))

(assert (=> b!1319965 (= res!593167 (not call!89643))))

(declare-fun b!1319966 () Bool)

(assert (=> b!1319966 (= e!845957 e!845955)))

(declare-fun res!593170 () Bool)

(assert (=> b!1319966 (=> res!593170 e!845955)))

(assert (=> b!1319966 (= res!593170 call!89643)))

(assert (= (and d!372868 c!216751) b!1319958))

(assert (= (and d!372868 (not c!216751)) b!1319960))

(assert (= (and d!372868 c!216752) b!1319961))

(assert (= (and d!372868 (not c!216752)) b!1319957))

(assert (= (and b!1319957 c!216750) b!1319964))

(assert (= (and b!1319957 (not c!216750)) b!1319954))

(assert (= (and b!1319954 (not res!593163)) b!1319963))

(assert (= (and b!1319963 res!593164) b!1319965))

(assert (= (and b!1319965 res!593167) b!1319959))

(assert (= (and b!1319959 res!593166) b!1319956))

(assert (= (and b!1319963 (not res!593165)) b!1319953))

(assert (= (and b!1319953 res!593169) b!1319966))

(assert (= (and b!1319966 (not res!593170)) b!1319955))

(assert (= (and b!1319955 (not res!593168)) b!1319962))

(assert (= (or b!1319961 b!1319965 b!1319966) bm!89638))

(assert (=> b!1319956 m!1473243))

(assert (=> b!1319955 m!1473245))

(assert (=> b!1319955 m!1473245))

(assert (=> b!1319955 m!1473247))

(assert (=> b!1319959 m!1473245))

(assert (=> b!1319959 m!1473245))

(assert (=> b!1319959 m!1473247))

(declare-fun m!1475789 () Bool)

(assert (=> b!1319958 m!1475789))

(assert (=> b!1319962 m!1473243))

(assert (=> d!372868 m!1473251))

(assert (=> d!372868 m!1473387))

(assert (=> bm!89638 m!1473251))

(assert (=> b!1319960 m!1473243))

(assert (=> b!1319960 m!1473243))

(declare-fun m!1475791 () Bool)

(assert (=> b!1319960 m!1475791))

(assert (=> b!1319960 m!1473245))

(assert (=> b!1319960 m!1475791))

(assert (=> b!1319960 m!1473245))

(declare-fun m!1475793 () Bool)

(assert (=> b!1319960 m!1475793))

(assert (=> b!1318547 d!372868))

(declare-fun d!372870 () Bool)

(assert (=> d!372870 (= (nullable!1149 lt!434731) (nullableFct!265 lt!434731))))

(declare-fun bs!330959 () Bool)

(assert (= bs!330959 d!372870))

(declare-fun m!1475795 () Bool)

(assert (=> bs!330959 m!1475795))

(assert (=> b!1318431 d!372870))

(declare-fun b!1319976 () Bool)

(declare-fun e!845966 () List!13423)

(declare-fun e!845967 () List!13423)

(assert (=> b!1319976 (= e!845966 e!845967)))

(declare-fun c!216758 () Bool)

(assert (=> b!1319976 (= c!216758 ((_ is Leaf!6745) (c!216256 (_1!7375 lt!434721))))))

(declare-fun b!1319977 () Bool)

(declare-fun list!5043 (IArray!8791) List!13423)

(assert (=> b!1319977 (= e!845967 (list!5043 (xs!7108 (c!216256 (_1!7375 lt!434721)))))))

(declare-fun b!1319975 () Bool)

(assert (=> b!1319975 (= e!845966 Nil!13357)))

(declare-fun b!1319978 () Bool)

(assert (=> b!1319978 (= e!845967 (++!3411 (list!5038 (left!11478 (c!216256 (_1!7375 lt!434721)))) (list!5038 (right!11808 (c!216256 (_1!7375 lt!434721))))))))

(declare-fun d!372872 () Bool)

(declare-fun c!216757 () Bool)

(assert (=> d!372872 (= c!216757 ((_ is Empty!4393) (c!216256 (_1!7375 lt!434721))))))

(assert (=> d!372872 (= (list!5038 (c!216256 (_1!7375 lt!434721))) e!845966)))

(assert (= (and d!372872 c!216757) b!1319975))

(assert (= (and d!372872 (not c!216757)) b!1319976))

(assert (= (and b!1319976 c!216758) b!1319977))

(assert (= (and b!1319976 (not c!216758)) b!1319978))

(declare-fun m!1475797 () Bool)

(assert (=> b!1319977 m!1475797))

(declare-fun m!1475799 () Bool)

(assert (=> b!1319978 m!1475799))

(declare-fun m!1475801 () Bool)

(assert (=> b!1319978 m!1475801))

(assert (=> b!1319978 m!1475799))

(assert (=> b!1319978 m!1475801))

(declare-fun m!1475803 () Bool)

(assert (=> b!1319978 m!1475803))

(assert (=> d!371878 d!372872))

(declare-fun d!372874 () Bool)

(assert (=> d!372874 (dynLambda!5838 lambda!53723 (rule!4054 t2!34))))

(assert (=> d!372874 true))

(declare-fun _$7!713 () Unit!19422)

(assert (=> d!372874 (= (choose!8059 rules!2550 lambda!53723 (rule!4054 t2!34)) _$7!713)))

(declare-fun b_lambda!38451 () Bool)

(assert (=> (not b_lambda!38451) (not d!372874)))

(declare-fun bs!330960 () Bool)

(assert (= bs!330960 d!372874))

(assert (=> bs!330960 m!1472717))

(assert (=> d!371848 d!372874))

(assert (=> d!371848 d!372324))

(declare-fun bs!330961 () Bool)

(declare-fun d!372876 () Bool)

(assert (= bs!330961 (and d!372876 d!372824)))

(declare-fun lambda!53830 () Int)

(assert (=> bs!330961 (= (= (toValue!3538 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (h!18757 rules!2550)))) (= lambda!53830 lambda!53829))))

(assert (=> d!372876 true))

(assert (=> d!372876 (< (dynLambda!5861 order!8071 (toValue!3538 (transformation!2311 (rule!4054 t2!34)))) (dynLambda!5862 order!8073 lambda!53830))))

(assert (=> d!372876 (= (equivClasses!829 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 t2!34)))) (Forall2!421 lambda!53830))))

(declare-fun bs!330962 () Bool)

(assert (= bs!330962 d!372876))

(declare-fun m!1475805 () Bool)

(assert (=> bs!330962 m!1475805))

(assert (=> b!1318488 d!372876))

(declare-fun d!372878 () Bool)

(declare-fun c!216759 () Bool)

(assert (=> d!372878 (= c!216759 ((_ is Node!4392) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))))

(declare-fun e!845968 () Bool)

(assert (=> d!372878 (= (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))) e!845968)))

(declare-fun b!1319979 () Bool)

(assert (=> b!1319979 (= e!845968 (inv!17739 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))))

(declare-fun b!1319980 () Bool)

(declare-fun e!845969 () Bool)

(assert (=> b!1319980 (= e!845968 e!845969)))

(declare-fun res!593171 () Bool)

(assert (=> b!1319980 (= res!593171 (not ((_ is Leaf!6744) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))))))))

(assert (=> b!1319980 (=> res!593171 e!845969)))

(declare-fun b!1319981 () Bool)

(assert (=> b!1319981 (= e!845969 (inv!17740 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))))))

(assert (= (and d!372878 c!216759) b!1319979))

(assert (= (and d!372878 (not c!216759)) b!1319980))

(assert (= (and b!1319980 (not res!593171)) b!1319981))

(declare-fun m!1475807 () Bool)

(assert (=> b!1319979 m!1475807))

(declare-fun m!1475809 () Bool)

(assert (=> b!1319981 m!1475809))

(assert (=> b!1318291 d!372878))

(declare-fun d!372880 () Bool)

(assert (=> d!372880 (dynLambda!5838 lambda!53723 lt!434734)))

(assert (=> d!372880 true))

(declare-fun _$7!714 () Unit!19422)

(assert (=> d!372880 (= (choose!8059 rules!2550 lambda!53723 lt!434734) _$7!714)))

(declare-fun b_lambda!38453 () Bool)

(assert (=> (not b_lambda!38453) (not d!372880)))

(declare-fun bs!330963 () Bool)

(assert (= bs!330963 d!372880))

(assert (=> bs!330963 m!1472727))

(assert (=> d!371852 d!372880))

(assert (=> d!371852 d!372324))

(assert (=> b!1318078 d!372044))

(declare-fun e!845973 () Regex!3625)

(declare-fun b!1319982 () Bool)

(assert (=> b!1319982 (= e!845973 (getWitness!217 (t!118439 (t!118439 (map!2933 rules!2550 lambda!53720))) lambda!53721))))

(declare-fun b!1319984 () Bool)

(declare-fun e!845972 () Regex!3625)

(assert (=> b!1319984 (= e!845972 e!845973)))

(declare-fun c!216761 () Bool)

(assert (=> b!1319984 (= c!216761 ((_ is Cons!13358) (t!118439 (map!2933 rules!2550 lambda!53720))))))

(declare-fun e!845971 () Bool)

(declare-fun b!1319985 () Bool)

(assert (=> b!1319985 (= e!845971 (dynLambda!5848 lambda!53721 (h!18759 (t!118439 (map!2933 rules!2550 lambda!53720)))))))

(declare-fun b!1319986 () Bool)

(declare-fun lt!435705 () Unit!19422)

(declare-fun Unit!19443 () Unit!19422)

(assert (=> b!1319986 (= lt!435705 Unit!19443)))

(assert (=> b!1319986 false))

(assert (=> b!1319986 (= e!845973 (head!2283 (t!118439 (map!2933 rules!2550 lambda!53720))))))

(declare-fun lt!435704 () Regex!3625)

(declare-fun e!845970 () Bool)

(declare-fun b!1319987 () Bool)

(assert (=> b!1319987 (= e!845970 (contains!2347 (t!118439 (map!2933 rules!2550 lambda!53720)) lt!435704))))

(declare-fun d!372882 () Bool)

(assert (=> d!372882 e!845970))

(declare-fun res!593173 () Bool)

(assert (=> d!372882 (=> (not res!593173) (not e!845970))))

(assert (=> d!372882 (= res!593173 (dynLambda!5848 lambda!53721 lt!435704))))

(assert (=> d!372882 (= lt!435704 e!845972)))

(declare-fun c!216760 () Bool)

(assert (=> d!372882 (= c!216760 e!845971)))

(declare-fun res!593172 () Bool)

(assert (=> d!372882 (=> (not res!593172) (not e!845971))))

(assert (=> d!372882 (= res!593172 ((_ is Cons!13358) (t!118439 (map!2933 rules!2550 lambda!53720))))))

(assert (=> d!372882 (exists!325 (t!118439 (map!2933 rules!2550 lambda!53720)) lambda!53721)))

(assert (=> d!372882 (= (getWitness!217 (t!118439 (map!2933 rules!2550 lambda!53720)) lambda!53721) lt!435704)))

(declare-fun b!1319983 () Bool)

(assert (=> b!1319983 (= e!845972 (h!18759 (t!118439 (map!2933 rules!2550 lambda!53720))))))

(assert (= (and d!372882 res!593172) b!1319985))

(assert (= (and d!372882 c!216760) b!1319983))

(assert (= (and d!372882 (not c!216760)) b!1319984))

(assert (= (and b!1319984 c!216761) b!1319982))

(assert (= (and b!1319984 (not c!216761)) b!1319986))

(assert (= (and d!372882 res!593173) b!1319987))

(declare-fun b_lambda!38455 () Bool)

(assert (=> (not b_lambda!38455) (not b!1319985)))

(declare-fun b_lambda!38457 () Bool)

(assert (=> (not b_lambda!38457) (not d!372882)))

(declare-fun m!1475811 () Bool)

(assert (=> b!1319985 m!1475811))

(declare-fun m!1475813 () Bool)

(assert (=> b!1319982 m!1475813))

(declare-fun m!1475815 () Bool)

(assert (=> b!1319986 m!1475815))

(declare-fun m!1475817 () Bool)

(assert (=> d!372882 m!1475817))

(declare-fun m!1475819 () Bool)

(assert (=> d!372882 m!1475819))

(declare-fun m!1475821 () Bool)

(assert (=> b!1319987 m!1475821))

(assert (=> b!1318166 d!372882))

(declare-fun d!372884 () Bool)

(declare-fun lt!435708 () Int)

(assert (=> d!372884 (>= lt!435708 0)))

(declare-fun e!845976 () Int)

(assert (=> d!372884 (= lt!435708 e!845976)))

(declare-fun c!216764 () Bool)

(assert (=> d!372884 (= c!216764 ((_ is Nil!13357) (_1!7376 lt!434885)))))

(assert (=> d!372884 (= (size!10875 (_1!7376 lt!434885)) lt!435708)))

(declare-fun b!1319992 () Bool)

(assert (=> b!1319992 (= e!845976 0)))

(declare-fun b!1319993 () Bool)

(assert (=> b!1319993 (= e!845976 (+ 1 (size!10875 (t!118438 (_1!7376 lt!434885)))))))

(assert (= (and d!372884 c!216764) b!1319992))

(assert (= (and d!372884 (not c!216764)) b!1319993))

(declare-fun m!1475823 () Bool)

(assert (=> b!1319993 m!1475823))

(assert (=> d!371894 d!372884))

(declare-fun b!1319994 () Bool)

(declare-fun e!845977 () Option!2580)

(declare-fun lt!435710 () Option!2580)

(declare-fun lt!435711 () Option!2580)

(assert (=> b!1319994 (= e!845977 (ite (and ((_ is None!2579) lt!435710) ((_ is None!2579) lt!435711)) None!2579 (ite ((_ is None!2579) lt!435711) lt!435710 (ite ((_ is None!2579) lt!435710) lt!435711 (ite (>= (size!10866 (_1!7377 (v!21135 lt!435710))) (size!10866 (_1!7377 (v!21135 lt!435711)))) lt!435710 lt!435711)))))))

(declare-fun call!89644 () Option!2580)

(assert (=> b!1319994 (= lt!435710 call!89644)))

(assert (=> b!1319994 (= lt!435711 (maxPrefix!1016 thiss!19762 (t!118437 rules!2550) (list!5034 lt!434723)))))

(declare-fun b!1319995 () Bool)

(declare-fun res!593177 () Bool)

(declare-fun e!845978 () Bool)

(assert (=> b!1319995 (=> (not res!593177) (not e!845978))))

(declare-fun lt!435709 () Option!2580)

(assert (=> b!1319995 (= res!593177 (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!435709)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435709))))))))

(declare-fun b!1319996 () Bool)

(declare-fun e!845979 () Bool)

(assert (=> b!1319996 (= e!845979 e!845978)))

(declare-fun res!593176 () Bool)

(assert (=> b!1319996 (=> (not res!593176) (not e!845978))))

(assert (=> b!1319996 (= res!593176 (isDefined!2179 lt!435709))))

(declare-fun b!1319997 () Bool)

(declare-fun res!593174 () Bool)

(assert (=> b!1319997 (=> (not res!593174) (not e!845978))))

(assert (=> b!1319997 (= res!593174 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435709)))) (_2!7377 (get!4260 lt!435709))) (list!5034 lt!434723)))))

(declare-fun bm!89639 () Bool)

(assert (=> bm!89639 (= call!89644 (maxPrefixOneRule!581 thiss!19762 (h!18757 rules!2550) (list!5034 lt!434723)))))

(declare-fun b!1319998 () Bool)

(declare-fun res!593180 () Bool)

(assert (=> b!1319998 (=> (not res!593180) (not e!845978))))

(assert (=> b!1319998 (= res!593180 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435709)))) (originalCharacters!3173 (_1!7377 (get!4260 lt!435709)))))))

(declare-fun b!1319999 () Bool)

(declare-fun res!593175 () Bool)

(assert (=> b!1319999 (=> (not res!593175) (not e!845978))))

(assert (=> b!1319999 (= res!593175 (= (value!75496 (_1!7377 (get!4260 lt!435709))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!435709)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!435709)))))))))

(declare-fun b!1320000 () Bool)

(assert (=> b!1320000 (= e!845978 (contains!2349 rules!2550 (rule!4054 (_1!7377 (get!4260 lt!435709)))))))

(declare-fun b!1320001 () Bool)

(assert (=> b!1320001 (= e!845977 call!89644)))

(declare-fun d!372886 () Bool)

(assert (=> d!372886 e!845979))

(declare-fun res!593178 () Bool)

(assert (=> d!372886 (=> res!593178 e!845979)))

(assert (=> d!372886 (= res!593178 (isEmpty!7935 lt!435709))))

(assert (=> d!372886 (= lt!435709 e!845977)))

(declare-fun c!216765 () Bool)

(assert (=> d!372886 (= c!216765 (and ((_ is Cons!13356) rules!2550) ((_ is Nil!13356) (t!118437 rules!2550))))))

(declare-fun lt!435713 () Unit!19422)

(declare-fun lt!435712 () Unit!19422)

(assert (=> d!372886 (= lt!435713 lt!435712)))

(assert (=> d!372886 (isPrefix!1076 (list!5034 lt!434723) (list!5034 lt!434723))))

(assert (=> d!372886 (= lt!435712 (lemmaIsPrefixRefl!755 (list!5034 lt!434723) (list!5034 lt!434723)))))

(assert (=> d!372886 (rulesValidInductive!728 thiss!19762 rules!2550)))

(assert (=> d!372886 (= (maxPrefix!1016 thiss!19762 rules!2550 (list!5034 lt!434723)) lt!435709)))

(declare-fun b!1320002 () Bool)

(declare-fun res!593179 () Bool)

(assert (=> b!1320002 (=> (not res!593179) (not e!845978))))

(assert (=> b!1320002 (= res!593179 (< (size!10874 (_2!7377 (get!4260 lt!435709))) (size!10874 (list!5034 lt!434723))))))

(assert (= (and d!372886 c!216765) b!1320001))

(assert (= (and d!372886 (not c!216765)) b!1319994))

(assert (= (or b!1320001 b!1319994) bm!89639))

(assert (= (and d!372886 (not res!593178)) b!1319996))

(assert (= (and b!1319996 res!593176) b!1319998))

(assert (= (and b!1319998 res!593180) b!1320002))

(assert (= (and b!1320002 res!593179) b!1319997))

(assert (= (and b!1319997 res!593174) b!1319999))

(assert (= (and b!1319999 res!593175) b!1319995))

(assert (= (and b!1319995 res!593177) b!1320000))

(assert (=> b!1319994 m!1472277))

(declare-fun m!1475825 () Bool)

(assert (=> b!1319994 m!1475825))

(declare-fun m!1475827 () Bool)

(assert (=> b!1319998 m!1475827))

(declare-fun m!1475829 () Bool)

(assert (=> b!1319998 m!1475829))

(assert (=> b!1319998 m!1475829))

(declare-fun m!1475831 () Bool)

(assert (=> b!1319998 m!1475831))

(assert (=> b!1320000 m!1475827))

(declare-fun m!1475833 () Bool)

(assert (=> b!1320000 m!1475833))

(assert (=> b!1319995 m!1475827))

(assert (=> b!1319995 m!1475829))

(assert (=> b!1319995 m!1475829))

(assert (=> b!1319995 m!1475831))

(assert (=> b!1319995 m!1475831))

(declare-fun m!1475835 () Bool)

(assert (=> b!1319995 m!1475835))

(assert (=> b!1320002 m!1475827))

(declare-fun m!1475837 () Bool)

(assert (=> b!1320002 m!1475837))

(assert (=> b!1320002 m!1472277))

(assert (=> b!1320002 m!1472883))

(assert (=> b!1319997 m!1475827))

(assert (=> b!1319997 m!1475829))

(assert (=> b!1319997 m!1475829))

(assert (=> b!1319997 m!1475831))

(assert (=> b!1319997 m!1475831))

(declare-fun m!1475839 () Bool)

(assert (=> b!1319997 m!1475839))

(assert (=> b!1319999 m!1475827))

(declare-fun m!1475841 () Bool)

(assert (=> b!1319999 m!1475841))

(assert (=> b!1319999 m!1475841))

(declare-fun m!1475843 () Bool)

(assert (=> b!1319999 m!1475843))

(assert (=> bm!89639 m!1472277))

(declare-fun m!1475845 () Bool)

(assert (=> bm!89639 m!1475845))

(declare-fun m!1475847 () Bool)

(assert (=> b!1319996 m!1475847))

(declare-fun m!1475849 () Bool)

(assert (=> d!372886 m!1475849))

(assert (=> d!372886 m!1472277))

(assert (=> d!372886 m!1472277))

(declare-fun m!1475851 () Bool)

(assert (=> d!372886 m!1475851))

(assert (=> d!372886 m!1472277))

(assert (=> d!372886 m!1472277))

(declare-fun m!1475853 () Bool)

(assert (=> d!372886 m!1475853))

(assert (=> d!372886 m!1472935))

(assert (=> d!371894 d!372886))

(assert (=> d!372030 d!372624))

(assert (=> b!1318057 d!372716))

(declare-fun d!372888 () Bool)

(declare-fun lt!435714 () Bool)

(assert (=> d!372888 (= lt!435714 (select (content!1882 (t!118437 rules!2550)) lt!434734))))

(declare-fun e!845981 () Bool)

(assert (=> d!372888 (= lt!435714 e!845981)))

(declare-fun res!593182 () Bool)

(assert (=> d!372888 (=> (not res!593182) (not e!845981))))

(assert (=> d!372888 (= res!593182 ((_ is Cons!13356) (t!118437 rules!2550)))))

(assert (=> d!372888 (= (contains!2349 (t!118437 rules!2550) lt!434734) lt!435714)))

(declare-fun b!1320003 () Bool)

(declare-fun e!845980 () Bool)

(assert (=> b!1320003 (= e!845981 e!845980)))

(declare-fun res!593181 () Bool)

(assert (=> b!1320003 (=> res!593181 e!845980)))

(assert (=> b!1320003 (= res!593181 (= (h!18757 (t!118437 rules!2550)) lt!434734))))

(declare-fun b!1320004 () Bool)

(assert (=> b!1320004 (= e!845980 (contains!2349 (t!118437 (t!118437 rules!2550)) lt!434734))))

(assert (= (and d!372888 res!593182) b!1320003))

(assert (= (and b!1320003 (not res!593181)) b!1320004))

(assert (=> d!372888 m!1474077))

(declare-fun m!1475855 () Bool)

(assert (=> d!372888 m!1475855))

(declare-fun m!1475857 () Bool)

(assert (=> b!1320004 m!1475857))

(assert (=> b!1318226 d!372888))

(declare-fun b!1320006 () Bool)

(declare-fun e!845982 () List!13423)

(declare-fun e!845983 () List!13423)

(assert (=> b!1320006 (= e!845982 e!845983)))

(declare-fun c!216767 () Bool)

(assert (=> b!1320006 (= c!216767 ((_ is Leaf!6745) (c!216256 (_1!7375 lt!434724))))))

(declare-fun b!1320007 () Bool)

(assert (=> b!1320007 (= e!845983 (list!5043 (xs!7108 (c!216256 (_1!7375 lt!434724)))))))

(declare-fun b!1320005 () Bool)

(assert (=> b!1320005 (= e!845982 Nil!13357)))

(declare-fun b!1320008 () Bool)

(assert (=> b!1320008 (= e!845983 (++!3411 (list!5038 (left!11478 (c!216256 (_1!7375 lt!434724)))) (list!5038 (right!11808 (c!216256 (_1!7375 lt!434724))))))))

(declare-fun d!372890 () Bool)

(declare-fun c!216766 () Bool)

(assert (=> d!372890 (= c!216766 ((_ is Empty!4393) (c!216256 (_1!7375 lt!434724))))))

(assert (=> d!372890 (= (list!5038 (c!216256 (_1!7375 lt!434724))) e!845982)))

(assert (= (and d!372890 c!216766) b!1320005))

(assert (= (and d!372890 (not c!216766)) b!1320006))

(assert (= (and b!1320006 c!216767) b!1320007))

(assert (= (and b!1320006 (not c!216767)) b!1320008))

(declare-fun m!1475859 () Bool)

(assert (=> b!1320007 m!1475859))

(declare-fun m!1475861 () Bool)

(assert (=> b!1320008 m!1475861))

(declare-fun m!1475863 () Bool)

(assert (=> b!1320008 m!1475863))

(assert (=> b!1320008 m!1475861))

(assert (=> b!1320008 m!1475863))

(declare-fun m!1475865 () Bool)

(assert (=> b!1320008 m!1475865))

(assert (=> d!371790 d!372890))

(declare-fun d!372892 () Bool)

(declare-fun lt!435715 () Bool)

(assert (=> d!372892 (= lt!435715 (select (content!1882 (t!118437 rules!2550)) (rule!4054 t1!34)))))

(declare-fun e!845985 () Bool)

(assert (=> d!372892 (= lt!435715 e!845985)))

(declare-fun res!593184 () Bool)

(assert (=> d!372892 (=> (not res!593184) (not e!845985))))

(assert (=> d!372892 (= res!593184 ((_ is Cons!13356) (t!118437 rules!2550)))))

(assert (=> d!372892 (= (contains!2349 (t!118437 rules!2550) (rule!4054 t1!34)) lt!435715)))

(declare-fun b!1320009 () Bool)

(declare-fun e!845984 () Bool)

(assert (=> b!1320009 (= e!845985 e!845984)))

(declare-fun res!593183 () Bool)

(assert (=> b!1320009 (=> res!593183 e!845984)))

(assert (=> b!1320009 (= res!593183 (= (h!18757 (t!118437 rules!2550)) (rule!4054 t1!34)))))

(declare-fun b!1320010 () Bool)

(assert (=> b!1320010 (= e!845984 (contains!2349 (t!118437 (t!118437 rules!2550)) (rule!4054 t1!34)))))

(assert (= (and d!372892 res!593184) b!1320009))

(assert (= (and b!1320009 (not res!593183)) b!1320010))

(assert (=> d!372892 m!1474077))

(declare-fun m!1475867 () Bool)

(assert (=> d!372892 m!1475867))

(declare-fun m!1475869 () Bool)

(assert (=> b!1320010 m!1475869))

(assert (=> b!1318182 d!372892))

(declare-fun d!372894 () Bool)

(declare-fun lt!435716 () C!7540)

(assert (=> d!372894 (contains!2348 (list!5034 lt!434725) lt!435716)))

(declare-fun e!845986 () C!7540)

(assert (=> d!372894 (= lt!435716 e!845986)))

(declare-fun c!216768 () Bool)

(assert (=> d!372894 (= c!216768 (= 0 0))))

(declare-fun e!845987 () Bool)

(assert (=> d!372894 e!845987))

(declare-fun res!593185 () Bool)

(assert (=> d!372894 (=> (not res!593185) (not e!845987))))

(assert (=> d!372894 (= res!593185 (<= 0 0))))

(assert (=> d!372894 (= (apply!3049 (list!5034 lt!434725) 0) lt!435716)))

(declare-fun b!1320011 () Bool)

(assert (=> b!1320011 (= e!845987 (< 0 (size!10874 (list!5034 lt!434725))))))

(declare-fun b!1320012 () Bool)

(assert (=> b!1320012 (= e!845986 (head!2281 (list!5034 lt!434725)))))

(declare-fun b!1320013 () Bool)

(assert (=> b!1320013 (= e!845986 (apply!3049 (tail!1890 (list!5034 lt!434725)) (- 0 1)))))

(assert (= (and d!372894 res!593185) b!1320011))

(assert (= (and d!372894 c!216768) b!1320012))

(assert (= (and d!372894 (not c!216768)) b!1320013))

(assert (=> d!372894 m!1472335))

(declare-fun m!1475871 () Bool)

(assert (=> d!372894 m!1475871))

(assert (=> b!1320011 m!1472335))

(assert (=> b!1320011 m!1472803))

(assert (=> b!1320012 m!1472335))

(assert (=> b!1320012 m!1475725))

(assert (=> b!1320013 m!1472335))

(assert (=> b!1320013 m!1475727))

(assert (=> b!1320013 m!1475727))

(declare-fun m!1475873 () Bool)

(assert (=> b!1320013 m!1475873))

(assert (=> d!371916 d!372894))

(assert (=> d!371916 d!372018))

(declare-fun b!1320015 () Bool)

(declare-fun e!845991 () C!7540)

(declare-fun call!89645 () C!7540)

(assert (=> b!1320015 (= e!845991 call!89645)))

(declare-fun b!1320016 () Bool)

(declare-fun e!845988 () Int)

(assert (=> b!1320016 (= e!845988 0)))

(declare-fun b!1320017 () Bool)

(declare-fun e!845990 () C!7540)

(assert (=> b!1320017 (= e!845990 (apply!3056 (xs!7107 (c!216255 lt!434725)) 0))))

(declare-fun b!1320018 () Bool)

(declare-fun e!845989 () Bool)

(assert (=> b!1320018 (= e!845989 (< 0 (size!10877 (c!216255 lt!434725))))))

(declare-fun b!1320019 () Bool)

(assert (=> b!1320019 (= e!845990 e!845991)))

(declare-fun lt!435717 () Bool)

(assert (=> b!1320019 (= lt!435717 (appendIndex!143 (list!5039 (left!11477 (c!216255 lt!434725))) (list!5039 (right!11807 (c!216255 lt!434725))) 0))))

(declare-fun c!216771 () Bool)

(assert (=> b!1320019 (= c!216771 (< 0 (size!10877 (left!11477 (c!216255 lt!434725)))))))

(declare-fun bm!89640 () Bool)

(declare-fun c!216769 () Bool)

(assert (=> bm!89640 (= c!216769 c!216771)))

(assert (=> bm!89640 (= call!89645 (apply!3050 (ite c!216771 (left!11477 (c!216255 lt!434725)) (right!11807 (c!216255 lt!434725))) e!845988))))

(declare-fun b!1320020 () Bool)

(assert (=> b!1320020 (= e!845991 call!89645)))

(declare-fun d!372896 () Bool)

(declare-fun lt!435718 () C!7540)

(assert (=> d!372896 (= lt!435718 (apply!3049 (list!5039 (c!216255 lt!434725)) 0))))

(assert (=> d!372896 (= lt!435718 e!845990)))

(declare-fun c!216770 () Bool)

(assert (=> d!372896 (= c!216770 ((_ is Leaf!6744) (c!216255 lt!434725)))))

(assert (=> d!372896 e!845989))

(declare-fun res!593186 () Bool)

(assert (=> d!372896 (=> (not res!593186) (not e!845989))))

(assert (=> d!372896 (= res!593186 (<= 0 0))))

(assert (=> d!372896 (= (apply!3050 (c!216255 lt!434725) 0) lt!435718)))

(declare-fun b!1320014 () Bool)

(assert (=> b!1320014 (= e!845988 (- 0 (size!10877 (left!11477 (c!216255 lt!434725)))))))

(assert (= (and d!372896 res!593186) b!1320018))

(assert (= (and d!372896 c!216770) b!1320017))

(assert (= (and d!372896 (not c!216770)) b!1320019))

(assert (= (and b!1320019 c!216771) b!1320020))

(assert (= (and b!1320019 (not c!216771)) b!1320015))

(assert (= (or b!1320020 b!1320015) bm!89640))

(assert (= (and bm!89640 c!216769) b!1320016))

(assert (= (and bm!89640 (not c!216769)) b!1320014))

(declare-fun m!1475875 () Bool)

(assert (=> b!1320014 m!1475875))

(assert (=> b!1320018 m!1472805))

(assert (=> b!1320019 m!1473947))

(assert (=> b!1320019 m!1473949))

(assert (=> b!1320019 m!1473947))

(assert (=> b!1320019 m!1473949))

(declare-fun m!1475877 () Bool)

(assert (=> b!1320019 m!1475877))

(assert (=> b!1320019 m!1475875))

(assert (=> d!372896 m!1473313))

(assert (=> d!372896 m!1473313))

(declare-fun m!1475879 () Bool)

(assert (=> d!372896 m!1475879))

(declare-fun m!1475881 () Bool)

(assert (=> b!1320017 m!1475881))

(declare-fun m!1475883 () Bool)

(assert (=> bm!89640 m!1475883))

(assert (=> d!371916 d!372896))

(declare-fun bs!330964 () Bool)

(declare-fun d!372898 () Bool)

(assert (= bs!330964 (and d!372898 d!372476)))

(declare-fun lambda!53831 () Int)

(assert (=> bs!330964 (= (and (= (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) (= (toValue!3538 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (rule!4054 t1!34))))) (= lambda!53831 lambda!53799))))

(assert (=> d!372898 true))

(assert (=> d!372898 (< (dynLambda!5859 order!8067 (toChars!3397 (transformation!2311 (h!18757 rules!2550)))) (dynLambda!5860 order!8069 lambda!53831))))

(assert (=> d!372898 true))

(assert (=> d!372898 (< (dynLambda!5861 order!8071 (toValue!3538 (transformation!2311 (h!18757 rules!2550)))) (dynLambda!5860 order!8069 lambda!53831))))

(assert (=> d!372898 (= (semiInverseModEq!870 (toChars!3397 (transformation!2311 (h!18757 rules!2550))) (toValue!3538 (transformation!2311 (h!18757 rules!2550)))) (Forall!519 lambda!53831))))

(declare-fun bs!330965 () Bool)

(assert (= bs!330965 d!372898))

(declare-fun m!1475885 () Bool)

(assert (=> bs!330965 m!1475885))

(assert (=> d!372024 d!372898))

(assert (=> b!1318232 d!371872))

(declare-fun d!372900 () Bool)

(declare-fun lt!435719 () Bool)

(assert (=> d!372900 (= lt!435719 (select (content!1883 (t!118435 lt!434728)) lt!434730))))

(declare-fun e!845993 () Bool)

(assert (=> d!372900 (= lt!435719 e!845993)))

(declare-fun res!593187 () Bool)

(assert (=> d!372900 (=> (not res!593187) (not e!845993))))

(assert (=> d!372900 (= res!593187 ((_ is Cons!13354) (t!118435 lt!434728)))))

(assert (=> d!372900 (= (contains!2348 (t!118435 lt!434728) lt!434730) lt!435719)))

(declare-fun b!1320021 () Bool)

(declare-fun e!845992 () Bool)

(assert (=> b!1320021 (= e!845993 e!845992)))

(declare-fun res!593188 () Bool)

(assert (=> b!1320021 (=> res!593188 e!845992)))

(assert (=> b!1320021 (= res!593188 (= (h!18755 (t!118435 lt!434728)) lt!434730))))

(declare-fun b!1320022 () Bool)

(assert (=> b!1320022 (= e!845992 (contains!2348 (t!118435 (t!118435 lt!434728)) lt!434730))))

(assert (= (and d!372900 res!593187) b!1320021))

(assert (= (and b!1320021 (not res!593188)) b!1320022))

(assert (=> d!372900 m!1474785))

(declare-fun m!1475887 () Bool)

(assert (=> d!372900 m!1475887))

(declare-fun m!1475889 () Bool)

(assert (=> b!1320022 m!1475889))

(assert (=> b!1318468 d!372900))

(declare-fun d!372902 () Bool)

(declare-fun lt!435720 () List!13420)

(assert (=> d!372902 (= (++!3406 (t!118435 lt!434728) lt!435720) (tail!1890 lt!434735))))

(declare-fun e!845994 () List!13420)

(assert (=> d!372902 (= lt!435720 e!845994)))

(declare-fun c!216772 () Bool)

(assert (=> d!372902 (= c!216772 ((_ is Cons!13354) (t!118435 lt!434728)))))

(assert (=> d!372902 (>= (size!10874 (tail!1890 lt!434735)) (size!10874 (t!118435 lt!434728)))))

(assert (=> d!372902 (= (getSuffix!481 (tail!1890 lt!434735) (t!118435 lt!434728)) lt!435720)))

(declare-fun b!1320023 () Bool)

(assert (=> b!1320023 (= e!845994 (getSuffix!481 (tail!1890 (tail!1890 lt!434735)) (t!118435 (t!118435 lt!434728))))))

(declare-fun b!1320024 () Bool)

(assert (=> b!1320024 (= e!845994 (tail!1890 lt!434735))))

(assert (= (and d!372902 c!216772) b!1320023))

(assert (= (and d!372902 (not c!216772)) b!1320024))

(declare-fun m!1475891 () Bool)

(assert (=> d!372902 m!1475891))

(assert (=> d!372902 m!1473245))

(declare-fun m!1475893 () Bool)

(assert (=> d!372902 m!1475893))

(assert (=> d!372902 m!1474063))

(assert (=> b!1320023 m!1473245))

(assert (=> b!1320023 m!1474129))

(assert (=> b!1320023 m!1474129))

(declare-fun m!1475895 () Bool)

(assert (=> b!1320023 m!1475895))

(assert (=> b!1318502 d!372902))

(assert (=> b!1318502 d!372426))

(declare-fun d!372904 () Bool)

(declare-fun lt!435721 () Bool)

(assert (=> d!372904 (= lt!435721 (select (content!1881 (t!118439 (map!2933 rules!2550 lambda!53720))) lt!434717))))

(declare-fun e!845995 () Bool)

(assert (=> d!372904 (= lt!435721 e!845995)))

(declare-fun res!593189 () Bool)

(assert (=> d!372904 (=> (not res!593189) (not e!845995))))

(assert (=> d!372904 (= res!593189 ((_ is Cons!13358) (t!118439 (map!2933 rules!2550 lambda!53720))))))

(assert (=> d!372904 (= (contains!2347 (t!118439 (map!2933 rules!2550 lambda!53720)) lt!434717) lt!435721)))

(declare-fun b!1320025 () Bool)

(declare-fun e!845996 () Bool)

(assert (=> b!1320025 (= e!845995 e!845996)))

(declare-fun res!593190 () Bool)

(assert (=> b!1320025 (=> res!593190 e!845996)))

(assert (=> b!1320025 (= res!593190 (= (h!18759 (t!118439 (map!2933 rules!2550 lambda!53720))) lt!434717))))

(declare-fun b!1320026 () Bool)

(assert (=> b!1320026 (= e!845996 (contains!2347 (t!118439 (t!118439 (map!2933 rules!2550 lambda!53720))) lt!434717))))

(assert (= (and d!372904 res!593189) b!1320025))

(assert (= (and b!1320025 (not res!593190)) b!1320026))

(assert (=> d!372904 m!1475123))

(declare-fun m!1475897 () Bool)

(assert (=> d!372904 m!1475897))

(declare-fun m!1475899 () Bool)

(assert (=> b!1320026 m!1475899))

(assert (=> b!1318147 d!372904))

(declare-fun d!372906 () Bool)

(declare-fun c!216773 () Bool)

(assert (=> d!372906 (= c!216773 ((_ is Nil!13354) lt!434983))))

(declare-fun e!845997 () (InoxSet C!7540))

(assert (=> d!372906 (= (content!1883 lt!434983) e!845997)))

(declare-fun b!1320027 () Bool)

(assert (=> b!1320027 (= e!845997 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1320028 () Bool)

(assert (=> b!1320028 (= e!845997 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 lt!434983) true) (content!1883 (t!118435 lt!434983))))))

(assert (= (and d!372906 c!216773) b!1320027))

(assert (= (and d!372906 (not c!216773)) b!1320028))

(declare-fun m!1475901 () Bool)

(assert (=> b!1320028 m!1475901))

(declare-fun m!1475903 () Bool)

(assert (=> b!1320028 m!1475903))

(assert (=> d!372038 d!372906))

(assert (=> d!372038 d!372624))

(declare-fun d!372908 () Bool)

(declare-fun c!216774 () Bool)

(assert (=> d!372908 (= c!216774 ((_ is Nil!13354) (getSuffix!481 lt!434735 lt!434728)))))

(declare-fun e!845998 () (InoxSet C!7540))

(assert (=> d!372908 (= (content!1883 (getSuffix!481 lt!434735 lt!434728)) e!845998)))

(declare-fun b!1320029 () Bool)

(assert (=> b!1320029 (= e!845998 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1320030 () Bool)

(assert (=> b!1320030 (= e!845998 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 (getSuffix!481 lt!434735 lt!434728)) true) (content!1883 (t!118435 (getSuffix!481 lt!434735 lt!434728)))))))

(assert (= (and d!372908 c!216774) b!1320029))

(assert (= (and d!372908 (not c!216774)) b!1320030))

(declare-fun m!1475905 () Bool)

(assert (=> b!1320030 m!1475905))

(declare-fun m!1475907 () Bool)

(assert (=> b!1320030 m!1475907))

(assert (=> d!372038 d!372908))

(declare-fun d!372910 () Bool)

(assert (=> d!372910 (= (inv!17 (value!75496 t1!34)) (= (charsToBigInt!1 (text!17255 (value!75496 t1!34))) (value!75488 (value!75496 t1!34))))))

(declare-fun bs!330966 () Bool)

(assert (= bs!330966 d!372910))

(declare-fun m!1475909 () Bool)

(assert (=> bs!330966 m!1475909))

(assert (=> b!1318414 d!372910))

(declare-fun b!1320031 () Bool)

(declare-fun e!845999 () List!13420)

(assert (=> b!1320031 (= e!845999 (Cons!13354 lt!434730 Nil!13354))))

(declare-fun e!846000 () Bool)

(declare-fun lt!435722 () List!13420)

(declare-fun b!1320034 () Bool)

(assert (=> b!1320034 (= e!846000 (or (not (= (Cons!13354 lt!434730 Nil!13354) Nil!13354)) (= lt!435722 (t!118435 lt!434732))))))

(declare-fun b!1320033 () Bool)

(declare-fun res!593192 () Bool)

(assert (=> b!1320033 (=> (not res!593192) (not e!846000))))

(assert (=> b!1320033 (= res!593192 (= (size!10874 lt!435722) (+ (size!10874 (t!118435 lt!434732)) (size!10874 (Cons!13354 lt!434730 Nil!13354)))))))

(declare-fun b!1320032 () Bool)

(assert (=> b!1320032 (= e!845999 (Cons!13354 (h!18755 (t!118435 lt!434732)) (++!3406 (t!118435 (t!118435 lt!434732)) (Cons!13354 lt!434730 Nil!13354))))))

(declare-fun d!372912 () Bool)

(assert (=> d!372912 e!846000))

(declare-fun res!593191 () Bool)

(assert (=> d!372912 (=> (not res!593191) (not e!846000))))

(assert (=> d!372912 (= res!593191 (= (content!1883 lt!435722) ((_ map or) (content!1883 (t!118435 lt!434732)) (content!1883 (Cons!13354 lt!434730 Nil!13354)))))))

(assert (=> d!372912 (= lt!435722 e!845999)))

(declare-fun c!216775 () Bool)

(assert (=> d!372912 (= c!216775 ((_ is Nil!13354) (t!118435 lt!434732)))))

(assert (=> d!372912 (= (++!3406 (t!118435 lt!434732) (Cons!13354 lt!434730 Nil!13354)) lt!435722)))

(assert (= (and d!372912 c!216775) b!1320031))

(assert (= (and d!372912 (not c!216775)) b!1320032))

(assert (= (and d!372912 res!593191) b!1320033))

(assert (= (and b!1320033 res!593192) b!1320034))

(declare-fun m!1475911 () Bool)

(assert (=> b!1320033 m!1475911))

(assert (=> b!1320033 m!1474047))

(assert (=> b!1320033 m!1473047))

(declare-fun m!1475913 () Bool)

(assert (=> b!1320032 m!1475913))

(declare-fun m!1475915 () Bool)

(assert (=> d!372912 m!1475915))

(declare-fun m!1475917 () Bool)

(assert (=> d!372912 m!1475917))

(assert (=> d!372912 m!1473055))

(assert (=> b!1318288 d!372912))

(assert (=> d!372014 d!372720))

(assert (=> d!372014 d!371788))

(declare-fun d!372914 () Bool)

(declare-fun lt!435723 () Int)

(assert (=> d!372914 (= lt!435723 (size!10875 (list!5035 (_1!7375 lt!434971))))))

(assert (=> d!372914 (= lt!435723 (size!10880 (c!216256 (_1!7375 lt!434971))))))

(assert (=> d!372914 (= (size!10870 (_1!7375 lt!434971)) lt!435723)))

(declare-fun bs!330967 () Bool)

(assert (= bs!330967 d!372914))

(declare-fun m!1475919 () Bool)

(assert (=> bs!330967 m!1475919))

(assert (=> bs!330967 m!1475919))

(declare-fun m!1475921 () Bool)

(assert (=> bs!330967 m!1475921))

(declare-fun m!1475923 () Bool)

(assert (=> bs!330967 m!1475923))

(assert (=> d!372014 d!372914))

(assert (=> d!372014 d!371792))

(declare-fun d!372916 () Bool)

(assert (=> d!372916 (= (list!5035 (_1!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34))))) (list!5038 (c!216256 (_1!7375 (lex!841 thiss!19762 rules!2550 (print!780 thiss!19762 (singletonSeq!892 t1!34)))))))))

(declare-fun bs!330968 () Bool)

(assert (= bs!330968 d!372916))

(declare-fun m!1475925 () Bool)

(assert (=> bs!330968 m!1475925))

(assert (=> d!372014 d!372916))

(assert (=> d!372014 d!372228))

(assert (=> d!372014 d!371898))

(declare-fun d!372918 () Bool)

(declare-fun lt!435726 () Int)

(assert (=> d!372918 (>= lt!435726 0)))

(declare-fun e!846003 () Int)

(assert (=> d!372918 (= lt!435726 e!846003)))

(declare-fun c!216778 () Bool)

(assert (=> d!372918 (= c!216778 ((_ is Nil!13358) lt!434878))))

(assert (=> d!372918 (= (size!10878 lt!434878) lt!435726)))

(declare-fun b!1320039 () Bool)

(assert (=> b!1320039 (= e!846003 0)))

(declare-fun b!1320040 () Bool)

(assert (=> b!1320040 (= e!846003 (+ 1 (size!10878 (t!118439 lt!434878))))))

(assert (= (and d!372918 c!216778) b!1320039))

(assert (= (and d!372918 (not c!216778)) b!1320040))

(declare-fun m!1475927 () Bool)

(assert (=> b!1320040 m!1475927))

(assert (=> d!371890 d!372918))

(declare-fun d!372920 () Bool)

(declare-fun lt!435729 () Int)

(assert (=> d!372920 (>= lt!435729 0)))

(declare-fun e!846006 () Int)

(assert (=> d!372920 (= lt!435729 e!846006)))

(declare-fun c!216781 () Bool)

(assert (=> d!372920 (= c!216781 ((_ is Nil!13356) rules!2550))))

(assert (=> d!372920 (= (size!10879 rules!2550) lt!435729)))

(declare-fun b!1320045 () Bool)

(assert (=> b!1320045 (= e!846006 0)))

(declare-fun b!1320046 () Bool)

(assert (=> b!1320046 (= e!846006 (+ 1 (size!10879 (t!118437 rules!2550))))))

(assert (= (and d!372920 c!216781) b!1320045))

(assert (= (and d!372920 (not c!216781)) b!1320046))

(assert (=> b!1320046 m!1474529))

(assert (=> d!371890 d!372920))

(assert (=> b!1318208 d!372558))

(assert (=> b!1318208 d!372560))

(assert (=> b!1318208 d!372292))

(declare-fun b!1320047 () Bool)

(declare-fun e!846007 () List!13420)

(assert (=> b!1320047 (= e!846007 (getSuffix!481 lt!434735 lt!434728))))

(declare-fun e!846008 () Bool)

(declare-fun lt!435730 () List!13420)

(declare-fun b!1320050 () Bool)

(assert (=> b!1320050 (= e!846008 (or (not (= (getSuffix!481 lt!434735 lt!434728) Nil!13354)) (= lt!435730 (t!118435 lt!434728))))))

(declare-fun b!1320049 () Bool)

(declare-fun res!593194 () Bool)

(assert (=> b!1320049 (=> (not res!593194) (not e!846008))))

(assert (=> b!1320049 (= res!593194 (= (size!10874 lt!435730) (+ (size!10874 (t!118435 lt!434728)) (size!10874 (getSuffix!481 lt!434735 lt!434728)))))))

(declare-fun b!1320048 () Bool)

(assert (=> b!1320048 (= e!846007 (Cons!13354 (h!18755 (t!118435 lt!434728)) (++!3406 (t!118435 (t!118435 lt!434728)) (getSuffix!481 lt!434735 lt!434728))))))

(declare-fun d!372922 () Bool)

(assert (=> d!372922 e!846008))

(declare-fun res!593193 () Bool)

(assert (=> d!372922 (=> (not res!593193) (not e!846008))))

(assert (=> d!372922 (= res!593193 (= (content!1883 lt!435730) ((_ map or) (content!1883 (t!118435 lt!434728)) (content!1883 (getSuffix!481 lt!434735 lt!434728)))))))

(assert (=> d!372922 (= lt!435730 e!846007)))

(declare-fun c!216782 () Bool)

(assert (=> d!372922 (= c!216782 ((_ is Nil!13354) (t!118435 lt!434728)))))

(assert (=> d!372922 (= (++!3406 (t!118435 lt!434728) (getSuffix!481 lt!434735 lt!434728)) lt!435730)))

(assert (= (and d!372922 c!216782) b!1320047))

(assert (= (and d!372922 (not c!216782)) b!1320048))

(assert (= (and d!372922 res!593193) b!1320049))

(assert (= (and b!1320049 res!593194) b!1320050))

(declare-fun m!1475929 () Bool)

(assert (=> b!1320049 m!1475929))

(assert (=> b!1320049 m!1474063))

(assert (=> b!1320049 m!1472367))

(assert (=> b!1320049 m!1473347))

(assert (=> b!1320048 m!1472367))

(declare-fun m!1475931 () Bool)

(assert (=> b!1320048 m!1475931))

(declare-fun m!1475933 () Bool)

(assert (=> d!372922 m!1475933))

(assert (=> d!372922 m!1474785))

(assert (=> d!372922 m!1472367))

(assert (=> d!372922 m!1473353))

(assert (=> b!1318495 d!372922))

(declare-fun b!1320051 () Bool)

(declare-fun e!846010 () Bool)

(declare-fun e!846011 () Bool)

(assert (=> b!1320051 (= e!846010 e!846011)))

(declare-fun res!593201 () Bool)

(assert (=> b!1320051 (=> (not res!593201) (not e!846011))))

(declare-fun lt!435731 () Bool)

(assert (=> b!1320051 (= res!593201 (not lt!435731))))

(declare-fun bm!89641 () Bool)

(declare-fun call!89646 () Bool)

(assert (=> bm!89641 (= call!89646 (isEmpty!7930 lt!434989))))

(declare-fun d!372924 () Bool)

(declare-fun e!846015 () Bool)

(assert (=> d!372924 e!846015))

(declare-fun c!216785 () Bool)

(assert (=> d!372924 (= c!216785 ((_ is EmptyExpr!3625) lt!434731))))

(declare-fun e!846013 () Bool)

(assert (=> d!372924 (= lt!435731 e!846013)))

(declare-fun c!216784 () Bool)

(assert (=> d!372924 (= c!216784 (isEmpty!7930 lt!434989))))

(assert (=> d!372924 (validRegex!1551 lt!434731)))

(assert (=> d!372924 (= (matchR!1627 lt!434731 lt!434989) lt!435731)))

(declare-fun b!1320052 () Bool)

(declare-fun res!593195 () Bool)

(assert (=> b!1320052 (=> res!593195 e!846010)))

(assert (=> b!1320052 (= res!593195 (not ((_ is ElementMatch!3625) lt!434731)))))

(declare-fun e!846014 () Bool)

(assert (=> b!1320052 (= e!846014 e!846010)))

(declare-fun b!1320053 () Bool)

(declare-fun res!593200 () Bool)

(declare-fun e!846009 () Bool)

(assert (=> b!1320053 (=> res!593200 e!846009)))

(assert (=> b!1320053 (= res!593200 (not (isEmpty!7930 (tail!1890 lt!434989))))))

(declare-fun b!1320054 () Bool)

(declare-fun e!846012 () Bool)

(assert (=> b!1320054 (= e!846012 (= (head!2281 lt!434989) (c!216254 lt!434731)))))

(declare-fun b!1320055 () Bool)

(assert (=> b!1320055 (= e!846015 e!846014)))

(declare-fun c!216783 () Bool)

(assert (=> b!1320055 (= c!216783 ((_ is EmptyLang!3625) lt!434731))))

(declare-fun b!1320056 () Bool)

(assert (=> b!1320056 (= e!846013 (nullable!1149 lt!434731))))

(declare-fun b!1320057 () Bool)

(declare-fun res!593198 () Bool)

(assert (=> b!1320057 (=> (not res!593198) (not e!846012))))

(assert (=> b!1320057 (= res!593198 (isEmpty!7930 (tail!1890 lt!434989)))))

(declare-fun b!1320058 () Bool)

(assert (=> b!1320058 (= e!846013 (matchR!1627 (derivativeStep!901 lt!434731 (head!2281 lt!434989)) (tail!1890 lt!434989)))))

(declare-fun b!1320059 () Bool)

(assert (=> b!1320059 (= e!846015 (= lt!435731 call!89646))))

(declare-fun b!1320060 () Bool)

(assert (=> b!1320060 (= e!846009 (not (= (head!2281 lt!434989) (c!216254 lt!434731))))))

(declare-fun b!1320061 () Bool)

(declare-fun res!593197 () Bool)

(assert (=> b!1320061 (=> res!593197 e!846010)))

(assert (=> b!1320061 (= res!593197 e!846012)))

(declare-fun res!593196 () Bool)

(assert (=> b!1320061 (=> (not res!593196) (not e!846012))))

(assert (=> b!1320061 (= res!593196 lt!435731)))

(declare-fun b!1320062 () Bool)

(assert (=> b!1320062 (= e!846014 (not lt!435731))))

(declare-fun b!1320063 () Bool)

(declare-fun res!593199 () Bool)

(assert (=> b!1320063 (=> (not res!593199) (not e!846012))))

(assert (=> b!1320063 (= res!593199 (not call!89646))))

(declare-fun b!1320064 () Bool)

(assert (=> b!1320064 (= e!846011 e!846009)))

(declare-fun res!593202 () Bool)

(assert (=> b!1320064 (=> res!593202 e!846009)))

(assert (=> b!1320064 (= res!593202 call!89646)))

(assert (= (and d!372924 c!216784) b!1320056))

(assert (= (and d!372924 (not c!216784)) b!1320058))

(assert (= (and d!372924 c!216785) b!1320059))

(assert (= (and d!372924 (not c!216785)) b!1320055))

(assert (= (and b!1320055 c!216783) b!1320062))

(assert (= (and b!1320055 (not c!216783)) b!1320052))

(assert (= (and b!1320052 (not res!593195)) b!1320061))

(assert (= (and b!1320061 res!593196) b!1320063))

(assert (= (and b!1320063 res!593199) b!1320057))

(assert (= (and b!1320057 res!593198) b!1320054))

(assert (= (and b!1320061 (not res!593197)) b!1320051))

(assert (= (and b!1320051 res!593201) b!1320064))

(assert (= (and b!1320064 (not res!593202)) b!1320053))

(assert (= (and b!1320053 (not res!593200)) b!1320060))

(assert (= (or b!1320059 b!1320063 b!1320064) bm!89641))

(assert (=> b!1320054 m!1475751))

(assert (=> b!1320053 m!1475753))

(assert (=> b!1320053 m!1475753))

(declare-fun m!1475935 () Bool)

(assert (=> b!1320053 m!1475935))

(assert (=> b!1320057 m!1475753))

(assert (=> b!1320057 m!1475753))

(assert (=> b!1320057 m!1475935))

(assert (=> b!1320056 m!1473249))

(assert (=> b!1320060 m!1475751))

(declare-fun m!1475937 () Bool)

(assert (=> d!372924 m!1475937))

(assert (=> d!372924 m!1473253))

(assert (=> bm!89641 m!1475937))

(assert (=> b!1320058 m!1475751))

(assert (=> b!1320058 m!1475751))

(declare-fun m!1475939 () Bool)

(assert (=> b!1320058 m!1475939))

(assert (=> b!1320058 m!1475753))

(assert (=> b!1320058 m!1475939))

(assert (=> b!1320058 m!1475753))

(declare-fun m!1475941 () Bool)

(assert (=> b!1320058 m!1475941))

(assert (=> bs!330722 d!372924))

(assert (=> b!1318090 d!371912))

(declare-fun d!372926 () Bool)

(declare-fun lt!435732 () Int)

(assert (=> d!372926 (>= lt!435732 0)))

(declare-fun e!846016 () Int)

(assert (=> d!372926 (= lt!435732 e!846016)))

(declare-fun c!216786 () Bool)

(assert (=> d!372926 (= c!216786 ((_ is Nil!13354) (originalCharacters!3173 t1!34)))))

(assert (=> d!372926 (= (size!10874 (originalCharacters!3173 t1!34)) lt!435732)))

(declare-fun b!1320065 () Bool)

(assert (=> b!1320065 (= e!846016 0)))

(declare-fun b!1320066 () Bool)

(assert (=> b!1320066 (= e!846016 (+ 1 (size!10874 (t!118435 (originalCharacters!3173 t1!34)))))))

(assert (= (and d!372926 c!216786) b!1320065))

(assert (= (and d!372926 (not c!216786)) b!1320066))

(declare-fun m!1475943 () Bool)

(assert (=> b!1320066 m!1475943))

(assert (=> b!1318423 d!372926))

(declare-fun d!372928 () Bool)

(assert (=> d!372928 (= (head!2283 (map!2933 rules!2550 lambda!53720)) (h!18759 (map!2933 rules!2550 lambda!53720)))))

(assert (=> b!1318170 d!372928))

(declare-fun d!372930 () Bool)

(declare-fun lt!435733 () Int)

(assert (=> d!372930 (>= lt!435733 0)))

(declare-fun e!846017 () Int)

(assert (=> d!372930 (= lt!435733 e!846017)))

(declare-fun c!216787 () Bool)

(assert (=> d!372930 (= c!216787 ((_ is Nil!13354) (originalCharacters!3173 t2!34)))))

(assert (=> d!372930 (= (size!10874 (originalCharacters!3173 t2!34)) lt!435733)))

(declare-fun b!1320067 () Bool)

(assert (=> b!1320067 (= e!846017 0)))

(declare-fun b!1320068 () Bool)

(assert (=> b!1320068 (= e!846017 (+ 1 (size!10874 (t!118435 (originalCharacters!3173 t2!34)))))))

(assert (= (and d!372930 c!216787) b!1320067))

(assert (= (and d!372930 (not c!216787)) b!1320068))

(declare-fun m!1475945 () Bool)

(assert (=> b!1320068 m!1475945))

(assert (=> b!1318425 d!372930))

(declare-fun b!1320069 () Bool)

(declare-fun e!846018 () Option!2580)

(declare-fun lt!435735 () Option!2580)

(declare-fun lt!435736 () Option!2580)

(assert (=> b!1320069 (= e!846018 (ite (and ((_ is None!2579) lt!435735) ((_ is None!2579) lt!435736)) None!2579 (ite ((_ is None!2579) lt!435736) lt!435735 (ite ((_ is None!2579) lt!435735) lt!435736 (ite (>= (size!10866 (_1!7377 (v!21135 lt!435735))) (size!10866 (_1!7377 (v!21135 lt!435736)))) lt!435735 lt!435736)))))))

(declare-fun call!89647 () Option!2580)

(assert (=> b!1320069 (= lt!435735 call!89647)))

(assert (=> b!1320069 (= lt!435736 (maxPrefix!1016 thiss!19762 (t!118437 (t!118437 rules!2550)) (list!5034 lt!434725)))))

(declare-fun b!1320070 () Bool)

(declare-fun res!593206 () Bool)

(declare-fun e!846019 () Bool)

(assert (=> b!1320070 (=> (not res!593206) (not e!846019))))

(declare-fun lt!435734 () Option!2580)

(assert (=> b!1320070 (= res!593206 (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!435734)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435734))))))))

(declare-fun b!1320071 () Bool)

(declare-fun e!846020 () Bool)

(assert (=> b!1320071 (= e!846020 e!846019)))

(declare-fun res!593205 () Bool)

(assert (=> b!1320071 (=> (not res!593205) (not e!846019))))

(assert (=> b!1320071 (= res!593205 (isDefined!2179 lt!435734))))

(declare-fun b!1320072 () Bool)

(declare-fun res!593203 () Bool)

(assert (=> b!1320072 (=> (not res!593203) (not e!846019))))

(assert (=> b!1320072 (= res!593203 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435734)))) (_2!7377 (get!4260 lt!435734))) (list!5034 lt!434725)))))

(declare-fun bm!89642 () Bool)

(assert (=> bm!89642 (= call!89647 (maxPrefixOneRule!581 thiss!19762 (h!18757 (t!118437 rules!2550)) (list!5034 lt!434725)))))

(declare-fun b!1320073 () Bool)

(declare-fun res!593209 () Bool)

(assert (=> b!1320073 (=> (not res!593209) (not e!846019))))

(assert (=> b!1320073 (= res!593209 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435734)))) (originalCharacters!3173 (_1!7377 (get!4260 lt!435734)))))))

(declare-fun b!1320074 () Bool)

(declare-fun res!593204 () Bool)

(assert (=> b!1320074 (=> (not res!593204) (not e!846019))))

(assert (=> b!1320074 (= res!593204 (= (value!75496 (_1!7377 (get!4260 lt!435734))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!435734)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!435734)))))))))

(declare-fun b!1320075 () Bool)

(assert (=> b!1320075 (= e!846019 (contains!2349 (t!118437 rules!2550) (rule!4054 (_1!7377 (get!4260 lt!435734)))))))

(declare-fun b!1320076 () Bool)

(assert (=> b!1320076 (= e!846018 call!89647)))

(declare-fun d!372932 () Bool)

(assert (=> d!372932 e!846020))

(declare-fun res!593207 () Bool)

(assert (=> d!372932 (=> res!593207 e!846020)))

(assert (=> d!372932 (= res!593207 (isEmpty!7935 lt!435734))))

(assert (=> d!372932 (= lt!435734 e!846018)))

(declare-fun c!216788 () Bool)

(assert (=> d!372932 (= c!216788 (and ((_ is Cons!13356) (t!118437 rules!2550)) ((_ is Nil!13356) (t!118437 (t!118437 rules!2550)))))))

(declare-fun lt!435738 () Unit!19422)

(declare-fun lt!435737 () Unit!19422)

(assert (=> d!372932 (= lt!435738 lt!435737)))

(assert (=> d!372932 (isPrefix!1076 (list!5034 lt!434725) (list!5034 lt!434725))))

(assert (=> d!372932 (= lt!435737 (lemmaIsPrefixRefl!755 (list!5034 lt!434725) (list!5034 lt!434725)))))

(assert (=> d!372932 (rulesValidInductive!728 thiss!19762 (t!118437 rules!2550))))

(assert (=> d!372932 (= (maxPrefix!1016 thiss!19762 (t!118437 rules!2550) (list!5034 lt!434725)) lt!435734)))

(declare-fun b!1320077 () Bool)

(declare-fun res!593208 () Bool)

(assert (=> b!1320077 (=> (not res!593208) (not e!846019))))

(assert (=> b!1320077 (= res!593208 (< (size!10874 (_2!7377 (get!4260 lt!435734))) (size!10874 (list!5034 lt!434725))))))

(assert (= (and d!372932 c!216788) b!1320076))

(assert (= (and d!372932 (not c!216788)) b!1320069))

(assert (= (or b!1320076 b!1320069) bm!89642))

(assert (= (and d!372932 (not res!593207)) b!1320071))

(assert (= (and b!1320071 res!593205) b!1320073))

(assert (= (and b!1320073 res!593209) b!1320077))

(assert (= (and b!1320077 res!593208) b!1320072))

(assert (= (and b!1320072 res!593203) b!1320074))

(assert (= (and b!1320074 res!593204) b!1320070))

(assert (= (and b!1320070 res!593206) b!1320075))

(assert (=> b!1320069 m!1472335))

(declare-fun m!1475947 () Bool)

(assert (=> b!1320069 m!1475947))

(declare-fun m!1475949 () Bool)

(assert (=> b!1320073 m!1475949))

(declare-fun m!1475951 () Bool)

(assert (=> b!1320073 m!1475951))

(assert (=> b!1320073 m!1475951))

(declare-fun m!1475953 () Bool)

(assert (=> b!1320073 m!1475953))

(assert (=> b!1320075 m!1475949))

(declare-fun m!1475955 () Bool)

(assert (=> b!1320075 m!1475955))

(assert (=> b!1320070 m!1475949))

(assert (=> b!1320070 m!1475951))

(assert (=> b!1320070 m!1475951))

(assert (=> b!1320070 m!1475953))

(assert (=> b!1320070 m!1475953))

(declare-fun m!1475957 () Bool)

(assert (=> b!1320070 m!1475957))

(assert (=> b!1320077 m!1475949))

(declare-fun m!1475959 () Bool)

(assert (=> b!1320077 m!1475959))

(assert (=> b!1320077 m!1472335))

(assert (=> b!1320077 m!1472803))

(assert (=> b!1320072 m!1475949))

(assert (=> b!1320072 m!1475951))

(assert (=> b!1320072 m!1475951))

(assert (=> b!1320072 m!1475953))

(assert (=> b!1320072 m!1475953))

(declare-fun m!1475961 () Bool)

(assert (=> b!1320072 m!1475961))

(assert (=> b!1320074 m!1475949))

(declare-fun m!1475963 () Bool)

(assert (=> b!1320074 m!1475963))

(assert (=> b!1320074 m!1475963))

(declare-fun m!1475965 () Bool)

(assert (=> b!1320074 m!1475965))

(assert (=> bm!89642 m!1472335))

(declare-fun m!1475967 () Bool)

(assert (=> bm!89642 m!1475967))

(declare-fun m!1475969 () Bool)

(assert (=> b!1320071 m!1475969))

(declare-fun m!1475971 () Bool)

(assert (=> d!372932 m!1475971))

(assert (=> d!372932 m!1472335))

(assert (=> d!372932 m!1472335))

(assert (=> d!372932 m!1473309))

(assert (=> d!372932 m!1472335))

(assert (=> d!372932 m!1472335))

(assert (=> d!372932 m!1473311))

(assert (=> d!372932 m!1475155))

(assert (=> b!1318472 d!372932))

(declare-fun d!372934 () Bool)

(assert (=> d!372934 true))

(assert (=> d!372934 true))

(declare-fun res!593212 () Bool)

(assert (=> d!372934 (= (choose!8066 lambda!53719) res!593212)))

(assert (=> d!372034 d!372934))

(declare-fun bs!330969 () Bool)

(declare-fun d!372936 () Bool)

(assert (= bs!330969 (and d!372936 d!372824)))

(declare-fun lambda!53832 () Int)

(assert (=> bs!330969 (= (= (toValue!3538 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (h!18757 rules!2550)))) (= lambda!53832 lambda!53829))))

(declare-fun bs!330970 () Bool)

(assert (= bs!330970 (and d!372936 d!372876)))

(assert (=> bs!330970 (= (= (toValue!3538 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 t2!34)))) (= lambda!53832 lambda!53830))))

(assert (=> d!372936 true))

(assert (=> d!372936 (< (dynLambda!5861 order!8071 (toValue!3538 (transformation!2311 (rule!4054 t1!34)))) (dynLambda!5862 order!8073 lambda!53832))))

(assert (=> d!372936 (= (equivClasses!829 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (toValue!3538 (transformation!2311 (rule!4054 t1!34)))) (Forall2!421 lambda!53832))))

(declare-fun bs!330971 () Bool)

(assert (= bs!330971 d!372936))

(declare-fun m!1475973 () Bool)

(assert (=> bs!330971 m!1475973))

(assert (=> b!1318185 d!372936))

(declare-fun b!1320078 () Bool)

(declare-fun e!846022 () Bool)

(declare-fun e!846023 () Bool)

(assert (=> b!1320078 (= e!846022 e!846023)))

(declare-fun res!593219 () Bool)

(assert (=> b!1320078 (=> (not res!593219) (not e!846023))))

(declare-fun lt!435739 () Bool)

(assert (=> b!1320078 (= res!593219 (not lt!435739))))

(declare-fun bm!89643 () Bool)

(declare-fun call!89648 () Bool)

(assert (=> bm!89643 (= call!89648 (isEmpty!7930 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun d!372938 () Bool)

(declare-fun e!846027 () Bool)

(assert (=> d!372938 e!846027))

(declare-fun c!216791 () Bool)

(assert (=> d!372938 (= c!216791 ((_ is EmptyExpr!3625) (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun e!846025 () Bool)

(assert (=> d!372938 (= lt!435739 e!846025)))

(declare-fun c!216790 () Bool)

(assert (=> d!372938 (= c!216790 (isEmpty!7930 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))))))

(assert (=> d!372938 (validRegex!1551 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))))

(assert (=> d!372938 (= (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) lt!435739)))

(declare-fun b!1320079 () Bool)

(declare-fun res!593213 () Bool)

(assert (=> b!1320079 (=> res!593213 e!846022)))

(assert (=> b!1320079 (= res!593213 (not ((_ is ElementMatch!3625) (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun e!846026 () Bool)

(assert (=> b!1320079 (= e!846026 e!846022)))

(declare-fun b!1320080 () Bool)

(declare-fun res!593218 () Bool)

(declare-fun e!846021 () Bool)

(assert (=> b!1320080 (=> res!593218 e!846021)))

(assert (=> b!1320080 (= res!593218 (not (isEmpty!7930 (tail!1890 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))))))))

(declare-fun b!1320081 () Bool)

(declare-fun e!846024 () Bool)

(assert (=> b!1320081 (= e!846024 (= (head!2281 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) (c!216254 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun b!1320082 () Bool)

(assert (=> b!1320082 (= e!846027 e!846026)))

(declare-fun c!216789 () Bool)

(assert (=> b!1320082 (= c!216789 ((_ is EmptyLang!3625) (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun b!1320083 () Bool)

(assert (=> b!1320083 (= e!846025 (nullable!1149 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))))))

(declare-fun b!1320084 () Bool)

(declare-fun res!593216 () Bool)

(assert (=> b!1320084 (=> (not res!593216) (not e!846024))))

(assert (=> b!1320084 (= res!593216 (isEmpty!7930 (tail!1890 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun b!1320085 () Bool)

(assert (=> b!1320085 (= e!846025 (matchR!1627 (derivativeStep!901 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))) (head!2281 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))))) (tail!1890 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901)))))))))

(declare-fun b!1320086 () Bool)

(assert (=> b!1320086 (= e!846027 (= lt!435739 call!89648))))

(declare-fun b!1320087 () Bool)

(assert (=> b!1320087 (= e!846021 (not (= (head!2281 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!434901))))) (c!216254 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!434901))))))))))

(declare-fun b!1320088 () Bool)

(declare-fun res!593215 () Bool)

(assert (=> b!1320088 (=> res!593215 e!846022)))

(assert (=> b!1320088 (= res!593215 e!846024)))

(declare-fun res!593214 () Bool)

(assert (=> b!1320088 (=> (not res!593214) (not e!846024))))

(assert (=> b!1320088 (= res!593214 lt!435739)))

(declare-fun b!1320089 () Bool)

(assert (=> b!1320089 (= e!846026 (not lt!435739))))

(declare-fun b!1320090 () Bool)

(declare-fun res!593217 () Bool)

(assert (=> b!1320090 (=> (not res!593217) (not e!846024))))

(assert (=> b!1320090 (= res!593217 (not call!89648))))

(declare-fun b!1320091 () Bool)

(assert (=> b!1320091 (= e!846023 e!846021)))

(declare-fun res!593220 () Bool)

(assert (=> b!1320091 (=> res!593220 e!846021)))

(assert (=> b!1320091 (= res!593220 call!89648)))

(assert (= (and d!372938 c!216790) b!1320083))

(assert (= (and d!372938 (not c!216790)) b!1320085))

(assert (= (and d!372938 c!216791) b!1320086))

(assert (= (and d!372938 (not c!216791)) b!1320082))

(assert (= (and b!1320082 c!216789) b!1320089))

(assert (= (and b!1320082 (not c!216789)) b!1320079))

(assert (= (and b!1320079 (not res!593213)) b!1320088))

(assert (= (and b!1320088 res!593214) b!1320090))

(assert (= (and b!1320090 res!593217) b!1320084))

(assert (= (and b!1320084 res!593216) b!1320081))

(assert (= (and b!1320088 (not res!593215)) b!1320078))

(assert (= (and b!1320078 res!593219) b!1320091))

(assert (= (and b!1320091 (not res!593220)) b!1320080))

(assert (= (and b!1320080 (not res!593218)) b!1320087))

(assert (= (or b!1320086 b!1320090 b!1320091) bm!89643))

(assert (=> b!1320081 m!1472909))

(declare-fun m!1475975 () Bool)

(assert (=> b!1320081 m!1475975))

(assert (=> b!1320080 m!1472909))

(declare-fun m!1475977 () Bool)

(assert (=> b!1320080 m!1475977))

(assert (=> b!1320080 m!1475977))

(declare-fun m!1475979 () Bool)

(assert (=> b!1320080 m!1475979))

(assert (=> b!1320084 m!1472909))

(assert (=> b!1320084 m!1475977))

(assert (=> b!1320084 m!1475977))

(assert (=> b!1320084 m!1475979))

(declare-fun m!1475981 () Bool)

(assert (=> b!1320083 m!1475981))

(assert (=> b!1320087 m!1472909))

(assert (=> b!1320087 m!1475975))

(assert (=> d!372938 m!1472909))

(declare-fun m!1475983 () Bool)

(assert (=> d!372938 m!1475983))

(declare-fun m!1475985 () Bool)

(assert (=> d!372938 m!1475985))

(assert (=> bm!89643 m!1472909))

(assert (=> bm!89643 m!1475983))

(assert (=> b!1320085 m!1472909))

(assert (=> b!1320085 m!1475975))

(assert (=> b!1320085 m!1475975))

(declare-fun m!1475987 () Bool)

(assert (=> b!1320085 m!1475987))

(assert (=> b!1320085 m!1472909))

(assert (=> b!1320085 m!1475977))

(assert (=> b!1320085 m!1475987))

(assert (=> b!1320085 m!1475977))

(declare-fun m!1475989 () Bool)

(assert (=> b!1320085 m!1475989))

(assert (=> b!1318205 d!372938))

(assert (=> b!1318205 d!372292))

(assert (=> b!1318205 d!372558))

(assert (=> b!1318205 d!372560))

(declare-fun d!372940 () Bool)

(assert (=> d!372940 (= (list!5035 (_1!7375 lt!434870)) (list!5038 (c!216256 (_1!7375 lt!434870))))))

(declare-fun bs!330972 () Bool)

(assert (= bs!330972 d!372940))

(declare-fun m!1475991 () Bool)

(assert (=> bs!330972 m!1475991))

(assert (=> b!1318134 d!372940))

(assert (=> b!1318134 d!371894))

(assert (=> b!1318134 d!371896))

(declare-fun d!372942 () Bool)

(assert (=> d!372942 (= (Exists!783 lambda!53767) (choose!8066 lambda!53767))))

(declare-fun bs!330973 () Bool)

(assert (= bs!330973 d!372942))

(declare-fun m!1475993 () Bool)

(assert (=> bs!330973 m!1475993))

(assert (=> d!372036 d!372942))

(declare-fun bs!330974 () Bool)

(declare-fun d!372944 () Bool)

(assert (= bs!330974 (and d!372944 b!1317759)))

(declare-fun lambda!53835 () Int)

(assert (=> bs!330974 (= lambda!53835 lambda!53719)))

(declare-fun bs!330975 () Bool)

(assert (= bs!330975 (and d!372944 d!372036)))

(assert (=> bs!330975 (= lambda!53835 lambda!53767)))

(assert (=> d!372944 true))

(assert (=> d!372944 true))

(assert (=> d!372944 (Exists!783 lambda!53835)))

(assert (=> d!372944 true))

(declare-fun _$103!83 () Unit!19422)

(assert (=> d!372944 (= (choose!8067 lt!434731 lt!434728) _$103!83)))

(declare-fun bs!330976 () Bool)

(assert (= bs!330976 d!372944))

(declare-fun m!1475995 () Bool)

(assert (=> bs!330976 m!1475995))

(assert (=> d!372036 d!372944))

(assert (=> d!372036 d!372334))

(declare-fun d!372946 () Bool)

(assert (=> d!372946 (= (isEmpty!7930 (tail!1890 lt!434735)) ((_ is Nil!13354) (tail!1890 lt!434735)))))

(assert (=> b!1318428 d!372946))

(assert (=> b!1318428 d!372426))

(declare-fun d!372948 () Bool)

(declare-fun res!593223 () Bool)

(declare-fun e!846030 () Bool)

(assert (=> d!372948 (=> res!593223 e!846030)))

(assert (=> d!372948 (= res!593223 (not ((_ is Cons!13356) (t!118437 rules!2550))))))

(assert (=> d!372948 (= (sepAndNonSepRulesDisjointChars!684 rules!2550 (t!118437 rules!2550)) e!846030)))

(declare-fun b!1320094 () Bool)

(declare-fun e!846031 () Bool)

(assert (=> b!1320094 (= e!846030 e!846031)))

(declare-fun res!593224 () Bool)

(assert (=> b!1320094 (=> (not res!593224) (not e!846031))))

(assert (=> b!1320094 (= res!593224 (ruleDisjointCharsFromAllFromOtherType!314 (h!18757 (t!118437 rules!2550)) rules!2550))))

(declare-fun b!1320095 () Bool)

(assert (=> b!1320095 (= e!846031 (sepAndNonSepRulesDisjointChars!684 rules!2550 (t!118437 (t!118437 rules!2550))))))

(assert (= (and d!372948 (not res!593223)) b!1320094))

(assert (= (and b!1320094 res!593224) b!1320095))

(declare-fun m!1475997 () Bool)

(assert (=> b!1320094 m!1475997))

(declare-fun m!1475999 () Bool)

(assert (=> b!1320095 m!1475999))

(assert (=> b!1318486 d!372948))

(declare-fun bs!330977 () Bool)

(declare-fun d!372950 () Bool)

(assert (= bs!330977 (and d!372950 d!372476)))

(declare-fun lambda!53836 () Int)

(assert (=> bs!330977 (= (and (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) (= (toValue!3538 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 t1!34))))) (= lambda!53836 lambda!53799))))

(declare-fun bs!330978 () Bool)

(assert (= bs!330978 (and d!372950 d!372898)))

(assert (=> bs!330978 (= (and (= (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toChars!3397 (transformation!2311 (h!18757 rules!2550)))) (= (toValue!3538 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (h!18757 rules!2550))))) (= lambda!53836 lambda!53831))))

(assert (=> d!372950 true))

(assert (=> d!372950 (< (dynLambda!5859 order!8067 (toChars!3397 (transformation!2311 (rule!4054 t2!34)))) (dynLambda!5860 order!8069 lambda!53836))))

(assert (=> d!372950 true))

(assert (=> d!372950 (< (dynLambda!5861 order!8071 (toValue!3538 (transformation!2311 (rule!4054 t2!34)))) (dynLambda!5860 order!8069 lambda!53836))))

(assert (=> d!372950 (= (semiInverseModEq!870 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (toValue!3538 (transformation!2311 (rule!4054 t2!34)))) (Forall!519 lambda!53836))))

(declare-fun bs!330979 () Bool)

(assert (= bs!330979 d!372950))

(declare-fun m!1476001 () Bool)

(assert (=> bs!330979 m!1476001))

(assert (=> d!372028 d!372950))

(declare-fun d!372952 () Bool)

(declare-fun lt!435740 () Int)

(assert (=> d!372952 (>= lt!435740 0)))

(declare-fun e!846032 () Int)

(assert (=> d!372952 (= lt!435740 e!846032)))

(declare-fun c!216792 () Bool)

(assert (=> d!372952 (= c!216792 ((_ is Nil!13354) (_2!7377 (get!4260 lt!434901))))))

(assert (=> d!372952 (= (size!10874 (_2!7377 (get!4260 lt!434901))) lt!435740)))

(declare-fun b!1320096 () Bool)

(assert (=> b!1320096 (= e!846032 0)))

(declare-fun b!1320097 () Bool)

(assert (=> b!1320097 (= e!846032 (+ 1 (size!10874 (t!118435 (_2!7377 (get!4260 lt!434901))))))))

(assert (= (and d!372952 c!216792) b!1320096))

(assert (= (and d!372952 (not c!216792)) b!1320097))

(declare-fun m!1476003 () Bool)

(assert (=> b!1320097 m!1476003))

(assert (=> b!1318212 d!372952))

(assert (=> b!1318212 d!372292))

(assert (=> b!1318212 d!372338))

(declare-fun d!372954 () Bool)

(declare-fun c!216793 () Bool)

(assert (=> d!372954 (= c!216793 ((_ is Nil!13354) lt!434939))))

(declare-fun e!846033 () (InoxSet C!7540))

(assert (=> d!372954 (= (content!1883 lt!434939) e!846033)))

(declare-fun b!1320098 () Bool)

(assert (=> b!1320098 (= e!846033 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1320099 () Bool)

(assert (=> b!1320099 (= e!846033 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 lt!434939) true) (content!1883 (t!118435 lt!434939))))))

(assert (= (and d!372954 c!216793) b!1320098))

(assert (= (and d!372954 (not c!216793)) b!1320099))

(declare-fun m!1476005 () Bool)

(assert (=> b!1320099 m!1476005))

(declare-fun m!1476007 () Bool)

(assert (=> b!1320099 m!1476007))

(assert (=> d!371924 d!372954))

(declare-fun d!372956 () Bool)

(declare-fun c!216794 () Bool)

(assert (=> d!372956 (= c!216794 ((_ is Nil!13354) lt!434732))))

(declare-fun e!846034 () (InoxSet C!7540))

(assert (=> d!372956 (= (content!1883 lt!434732) e!846034)))

(declare-fun b!1320100 () Bool)

(assert (=> b!1320100 (= e!846034 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1320101 () Bool)

(assert (=> b!1320101 (= e!846034 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 lt!434732) true) (content!1883 (t!118435 lt!434732))))))

(assert (= (and d!372956 c!216794) b!1320100))

(assert (= (and d!372956 (not c!216794)) b!1320101))

(declare-fun m!1476009 () Bool)

(assert (=> b!1320101 m!1476009))

(assert (=> b!1320101 m!1475917))

(assert (=> d!371924 d!372956))

(declare-fun d!372958 () Bool)

(declare-fun c!216795 () Bool)

(assert (=> d!372958 (= c!216795 ((_ is Nil!13354) (Cons!13354 lt!434730 Nil!13354)))))

(declare-fun e!846035 () (InoxSet C!7540))

(assert (=> d!372958 (= (content!1883 (Cons!13354 lt!434730 Nil!13354)) e!846035)))

(declare-fun b!1320102 () Bool)

(assert (=> b!1320102 (= e!846035 ((as const (Array C!7540 Bool)) false))))

(declare-fun b!1320103 () Bool)

(assert (=> b!1320103 (= e!846035 ((_ map or) (store ((as const (Array C!7540 Bool)) false) (h!18755 (Cons!13354 lt!434730 Nil!13354)) true) (content!1883 (t!118435 (Cons!13354 lt!434730 Nil!13354)))))))

(assert (= (and d!372958 c!216795) b!1320102))

(assert (= (and d!372958 (not c!216795)) b!1320103))

(declare-fun m!1476011 () Bool)

(assert (=> b!1320103 m!1476011))

(declare-fun m!1476013 () Bool)

(assert (=> b!1320103 m!1476013))

(assert (=> d!371924 d!372958))

(declare-fun b!1320104 () Bool)

(declare-fun res!593227 () Bool)

(declare-fun e!846039 () Bool)

(assert (=> b!1320104 (=> (not res!593227) (not e!846039))))

(declare-fun lt!435741 () Option!2580)

(assert (=> b!1320104 (= res!593227 (= (value!75496 (_1!7377 (get!4260 lt!435741))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!435741)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!435741)))))))))

(declare-fun b!1320105 () Bool)

(declare-fun res!593229 () Bool)

(assert (=> b!1320105 (=> (not res!593229) (not e!846039))))

(assert (=> b!1320105 (= res!593229 (< (size!10874 (_2!7377 (get!4260 lt!435741))) (size!10874 (list!5034 lt!434725))))))

(declare-fun d!372960 () Bool)

(declare-fun e!846036 () Bool)

(assert (=> d!372960 e!846036))

(declare-fun res!593231 () Bool)

(assert (=> d!372960 (=> res!593231 e!846036)))

(assert (=> d!372960 (= res!593231 (isEmpty!7935 lt!435741))))

(declare-fun e!846037 () Option!2580)

(assert (=> d!372960 (= lt!435741 e!846037)))

(declare-fun c!216796 () Bool)

(declare-fun lt!435744 () tuple2!12990)

(assert (=> d!372960 (= c!216796 (isEmpty!7930 (_1!7381 lt!435744)))))

(assert (=> d!372960 (= lt!435744 (findLongestMatch!226 (regex!2311 (h!18757 rules!2550)) (list!5034 lt!434725)))))

(assert (=> d!372960 (ruleValid!564 thiss!19762 (h!18757 rules!2550))))

(assert (=> d!372960 (= (maxPrefixOneRule!581 thiss!19762 (h!18757 rules!2550) (list!5034 lt!434725)) lt!435741)))

(declare-fun b!1320106 () Bool)

(assert (=> b!1320106 (= e!846037 None!2579)))

(declare-fun b!1320107 () Bool)

(declare-fun e!846038 () Bool)

(assert (=> b!1320107 (= e!846038 (matchR!1627 (regex!2311 (h!18757 rules!2550)) (_1!7381 (findLongestMatchInner!270 (regex!2311 (h!18757 rules!2550)) Nil!13354 (size!10874 Nil!13354) (list!5034 lt!434725) (list!5034 lt!434725) (size!10874 (list!5034 lt!434725))))))))

(declare-fun b!1320108 () Bool)

(declare-fun res!593226 () Bool)

(assert (=> b!1320108 (=> (not res!593226) (not e!846039))))

(assert (=> b!1320108 (= res!593226 (= (rule!4054 (_1!7377 (get!4260 lt!435741))) (h!18757 rules!2550)))))

(declare-fun b!1320109 () Bool)

(declare-fun res!593228 () Bool)

(assert (=> b!1320109 (=> (not res!593228) (not e!846039))))

(assert (=> b!1320109 (= res!593228 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435741)))) (_2!7377 (get!4260 lt!435741))) (list!5034 lt!434725)))))

(declare-fun b!1320110 () Bool)

(assert (=> b!1320110 (= e!846037 (Some!2579 (tuple2!12983 (Token!4285 (apply!3048 (transformation!2311 (h!18757 rules!2550)) (seqFromList!1599 (_1!7381 lt!435744))) (h!18757 rules!2550) (size!10867 (seqFromList!1599 (_1!7381 lt!435744))) (_1!7381 lt!435744)) (_2!7381 lt!435744))))))

(declare-fun lt!435742 () Unit!19422)

(assert (=> b!1320110 (= lt!435742 (longestMatchIsAcceptedByMatchOrIsEmpty!254 (regex!2311 (h!18757 rules!2550)) (list!5034 lt!434725)))))

(declare-fun res!593225 () Bool)

(assert (=> b!1320110 (= res!593225 (isEmpty!7930 (_1!7381 (findLongestMatchInner!270 (regex!2311 (h!18757 rules!2550)) Nil!13354 (size!10874 Nil!13354) (list!5034 lt!434725) (list!5034 lt!434725) (size!10874 (list!5034 lt!434725))))))))

(assert (=> b!1320110 (=> res!593225 e!846038)))

(assert (=> b!1320110 e!846038))

(declare-fun lt!435745 () Unit!19422)

(assert (=> b!1320110 (= lt!435745 lt!435742)))

(declare-fun lt!435743 () Unit!19422)

(assert (=> b!1320110 (= lt!435743 (lemmaSemiInverse!324 (transformation!2311 (h!18757 rules!2550)) (seqFromList!1599 (_1!7381 lt!435744))))))

(declare-fun b!1320111 () Bool)

(assert (=> b!1320111 (= e!846036 e!846039)))

(declare-fun res!593230 () Bool)

(assert (=> b!1320111 (=> (not res!593230) (not e!846039))))

(assert (=> b!1320111 (= res!593230 (matchR!1627 (regex!2311 (h!18757 rules!2550)) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435741))))))))

(declare-fun b!1320112 () Bool)

(assert (=> b!1320112 (= e!846039 (= (size!10866 (_1!7377 (get!4260 lt!435741))) (size!10874 (originalCharacters!3173 (_1!7377 (get!4260 lt!435741))))))))

(assert (= (and d!372960 c!216796) b!1320106))

(assert (= (and d!372960 (not c!216796)) b!1320110))

(assert (= (and b!1320110 (not res!593225)) b!1320107))

(assert (= (and d!372960 (not res!593231)) b!1320111))

(assert (= (and b!1320111 res!593230) b!1320109))

(assert (= (and b!1320109 res!593228) b!1320105))

(assert (= (and b!1320105 res!593229) b!1320108))

(assert (= (and b!1320108 res!593226) b!1320104))

(assert (= (and b!1320104 res!593227) b!1320112))

(declare-fun m!1476015 () Bool)

(assert (=> b!1320105 m!1476015))

(declare-fun m!1476017 () Bool)

(assert (=> b!1320105 m!1476017))

(assert (=> b!1320105 m!1472335))

(assert (=> b!1320105 m!1472803))

(assert (=> b!1320104 m!1476015))

(declare-fun m!1476019 () Bool)

(assert (=> b!1320104 m!1476019))

(assert (=> b!1320104 m!1476019))

(declare-fun m!1476021 () Bool)

(assert (=> b!1320104 m!1476021))

(assert (=> b!1320108 m!1476015))

(assert (=> b!1320109 m!1476015))

(declare-fun m!1476023 () Bool)

(assert (=> b!1320109 m!1476023))

(assert (=> b!1320109 m!1476023))

(declare-fun m!1476025 () Bool)

(assert (=> b!1320109 m!1476025))

(assert (=> b!1320109 m!1476025))

(declare-fun m!1476027 () Bool)

(assert (=> b!1320109 m!1476027))

(assert (=> b!1320107 m!1475671))

(assert (=> b!1320107 m!1472335))

(assert (=> b!1320107 m!1472803))

(assert (=> b!1320107 m!1475671))

(assert (=> b!1320107 m!1472335))

(assert (=> b!1320107 m!1472335))

(assert (=> b!1320107 m!1472803))

(declare-fun m!1476029 () Bool)

(assert (=> b!1320107 m!1476029))

(declare-fun m!1476031 () Bool)

(assert (=> b!1320107 m!1476031))

(assert (=> b!1320111 m!1476015))

(assert (=> b!1320111 m!1476023))

(assert (=> b!1320111 m!1476023))

(assert (=> b!1320111 m!1476025))

(assert (=> b!1320111 m!1476025))

(declare-fun m!1476033 () Bool)

(assert (=> b!1320111 m!1476033))

(declare-fun m!1476035 () Bool)

(assert (=> b!1320110 m!1476035))

(declare-fun m!1476037 () Bool)

(assert (=> b!1320110 m!1476037))

(declare-fun m!1476039 () Bool)

(assert (=> b!1320110 m!1476039))

(assert (=> b!1320110 m!1475671))

(assert (=> b!1320110 m!1472335))

(assert (=> b!1320110 m!1472335))

(assert (=> b!1320110 m!1472803))

(assert (=> b!1320110 m!1476029))

(assert (=> b!1320110 m!1476037))

(declare-fun m!1476041 () Bool)

(assert (=> b!1320110 m!1476041))

(assert (=> b!1320110 m!1472335))

(declare-fun m!1476043 () Bool)

(assert (=> b!1320110 m!1476043))

(assert (=> b!1320110 m!1475671))

(assert (=> b!1320110 m!1476037))

(declare-fun m!1476045 () Bool)

(assert (=> b!1320110 m!1476045))

(assert (=> b!1320110 m!1472335))

(assert (=> b!1320110 m!1472803))

(assert (=> b!1320110 m!1476037))

(declare-fun m!1476047 () Bool)

(assert (=> d!372960 m!1476047))

(declare-fun m!1476049 () Bool)

(assert (=> d!372960 m!1476049))

(assert (=> d!372960 m!1472335))

(declare-fun m!1476051 () Bool)

(assert (=> d!372960 m!1476051))

(assert (=> d!372960 m!1475153))

(assert (=> b!1320112 m!1476015))

(declare-fun m!1476053 () Bool)

(assert (=> b!1320112 m!1476053))

(assert (=> bm!89540 d!372960))

(declare-fun d!372962 () Bool)

(assert (=> d!372962 (= (list!5034 (_2!7375 lt!434870)) (list!5039 (c!216255 (_2!7375 lt!434870))))))

(declare-fun bs!330980 () Bool)

(assert (= bs!330980 d!372962))

(declare-fun m!1476055 () Bool)

(assert (=> bs!330980 m!1476055))

(assert (=> b!1318130 d!372962))

(assert (=> b!1318130 d!371894))

(assert (=> b!1318130 d!371896))

(declare-fun b!1320113 () Bool)

(declare-fun e!846041 () Bool)

(declare-fun e!846042 () Bool)

(assert (=> b!1320113 (= e!846041 e!846042)))

(declare-fun res!593238 () Bool)

(assert (=> b!1320113 (=> (not res!593238) (not e!846042))))

(declare-fun lt!435746 () Bool)

(assert (=> b!1320113 (= res!593238 (not lt!435746))))

(declare-fun bm!89644 () Bool)

(declare-fun call!89649 () Bool)

(assert (=> bm!89644 (= call!89649 (isEmpty!7930 (tail!1890 lt!434732)))))

(declare-fun d!372964 () Bool)

(declare-fun e!846046 () Bool)

(assert (=> d!372964 e!846046))

(declare-fun c!216799 () Bool)

(assert (=> d!372964 (= c!216799 ((_ is EmptyExpr!3625) (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732))))))

(declare-fun e!846044 () Bool)

(assert (=> d!372964 (= lt!435746 e!846044)))

(declare-fun c!216798 () Bool)

(assert (=> d!372964 (= c!216798 (isEmpty!7930 (tail!1890 lt!434732)))))

(assert (=> d!372964 (validRegex!1551 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)))))

(assert (=> d!372964 (= (matchR!1627 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)) (tail!1890 lt!434732)) lt!435746)))

(declare-fun b!1320114 () Bool)

(declare-fun res!593232 () Bool)

(assert (=> b!1320114 (=> res!593232 e!846041)))

(assert (=> b!1320114 (= res!593232 (not ((_ is ElementMatch!3625) (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)))))))

(declare-fun e!846045 () Bool)

(assert (=> b!1320114 (= e!846045 e!846041)))

(declare-fun b!1320115 () Bool)

(declare-fun res!593237 () Bool)

(declare-fun e!846040 () Bool)

(assert (=> b!1320115 (=> res!593237 e!846040)))

(assert (=> b!1320115 (= res!593237 (not (isEmpty!7930 (tail!1890 (tail!1890 lt!434732)))))))

(declare-fun b!1320116 () Bool)

(declare-fun e!846043 () Bool)

(assert (=> b!1320116 (= e!846043 (= (head!2281 (tail!1890 lt!434732)) (c!216254 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)))))))

(declare-fun b!1320117 () Bool)

(assert (=> b!1320117 (= e!846046 e!846045)))

(declare-fun c!216797 () Bool)

(assert (=> b!1320117 (= c!216797 ((_ is EmptyLang!3625) (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732))))))

(declare-fun b!1320118 () Bool)

(assert (=> b!1320118 (= e!846044 (nullable!1149 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732))))))

(declare-fun b!1320119 () Bool)

(declare-fun res!593235 () Bool)

(assert (=> b!1320119 (=> (not res!593235) (not e!846043))))

(assert (=> b!1320119 (= res!593235 (isEmpty!7930 (tail!1890 (tail!1890 lt!434732))))))

(declare-fun b!1320120 () Bool)

(assert (=> b!1320120 (= e!846044 (matchR!1627 (derivativeStep!901 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)) (head!2281 (tail!1890 lt!434732))) (tail!1890 (tail!1890 lt!434732))))))

(declare-fun b!1320121 () Bool)

(assert (=> b!1320121 (= e!846046 (= lt!435746 call!89649))))

(declare-fun b!1320122 () Bool)

(assert (=> b!1320122 (= e!846040 (not (= (head!2281 (tail!1890 lt!434732)) (c!216254 (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732))))))))

(declare-fun b!1320123 () Bool)

(declare-fun res!593234 () Bool)

(assert (=> b!1320123 (=> res!593234 e!846041)))

(assert (=> b!1320123 (= res!593234 e!846043)))

(declare-fun res!593233 () Bool)

(assert (=> b!1320123 (=> (not res!593233) (not e!846043))))

(assert (=> b!1320123 (= res!593233 lt!435746)))

(declare-fun b!1320124 () Bool)

(assert (=> b!1320124 (= e!846045 (not lt!435746))))

(declare-fun b!1320125 () Bool)

(declare-fun res!593236 () Bool)

(assert (=> b!1320125 (=> (not res!593236) (not e!846043))))

(assert (=> b!1320125 (= res!593236 (not call!89649))))

(declare-fun b!1320126 () Bool)

(assert (=> b!1320126 (= e!846042 e!846040)))

(declare-fun res!593239 () Bool)

(assert (=> b!1320126 (=> res!593239 e!846040)))

(assert (=> b!1320126 (= res!593239 call!89649)))

(assert (= (and d!372964 c!216798) b!1320118))

(assert (= (and d!372964 (not c!216798)) b!1320120))

(assert (= (and d!372964 c!216799) b!1320121))

(assert (= (and d!372964 (not c!216799)) b!1320117))

(assert (= (and b!1320117 c!216797) b!1320124))

(assert (= (and b!1320117 (not c!216797)) b!1320114))

(assert (= (and b!1320114 (not res!593232)) b!1320123))

(assert (= (and b!1320123 res!593233) b!1320125))

(assert (= (and b!1320125 res!593236) b!1320119))

(assert (= (and b!1320119 res!593235) b!1320116))

(assert (= (and b!1320123 (not res!593234)) b!1320113))

(assert (= (and b!1320113 res!593238) b!1320126))

(assert (= (and b!1320126 (not res!593239)) b!1320115))

(assert (= (and b!1320115 (not res!593237)) b!1320122))

(assert (= (or b!1320121 b!1320125 b!1320126) bm!89644))

(assert (=> b!1320116 m!1472703))

(declare-fun m!1476057 () Bool)

(assert (=> b!1320116 m!1476057))

(assert (=> b!1320115 m!1472703))

(declare-fun m!1476059 () Bool)

(assert (=> b!1320115 m!1476059))

(assert (=> b!1320115 m!1476059))

(declare-fun m!1476061 () Bool)

(assert (=> b!1320115 m!1476061))

(assert (=> b!1320119 m!1472703))

(assert (=> b!1320119 m!1476059))

(assert (=> b!1320119 m!1476059))

(assert (=> b!1320119 m!1476061))

(assert (=> b!1320118 m!1472713))

(declare-fun m!1476063 () Bool)

(assert (=> b!1320118 m!1476063))

(assert (=> b!1320122 m!1472703))

(assert (=> b!1320122 m!1476057))

(assert (=> d!372964 m!1472703))

(assert (=> d!372964 m!1472705))

(assert (=> d!372964 m!1472713))

(declare-fun m!1476065 () Bool)

(assert (=> d!372964 m!1476065))

(assert (=> bm!89644 m!1472703))

(assert (=> bm!89644 m!1472705))

(assert (=> b!1320120 m!1472703))

(assert (=> b!1320120 m!1476057))

(assert (=> b!1320120 m!1472713))

(assert (=> b!1320120 m!1476057))

(declare-fun m!1476067 () Bool)

(assert (=> b!1320120 m!1476067))

(assert (=> b!1320120 m!1472703))

(assert (=> b!1320120 m!1476059))

(assert (=> b!1320120 m!1476067))

(assert (=> b!1320120 m!1476059))

(declare-fun m!1476069 () Bool)

(assert (=> b!1320120 m!1476069))

(assert (=> b!1318061 d!372964))

(declare-fun bm!89645 () Bool)

(declare-fun call!89653 () Regex!3625)

(declare-fun call!89650 () Regex!3625)

(assert (=> bm!89645 (= call!89653 call!89650)))

(declare-fun c!216801 () Bool)

(declare-fun c!216803 () Bool)

(declare-fun bm!89646 () Bool)

(assert (=> bm!89646 (= call!89650 (derivativeStep!901 (ite c!216801 (regTwo!7763 (regex!2311 (rule!4054 t1!34))) (ite c!216803 (regTwo!7762 (regex!2311 (rule!4054 t1!34))) (regOne!7762 (regex!2311 (rule!4054 t1!34))))) (head!2281 lt!434732)))))

(declare-fun b!1320127 () Bool)

(declare-fun e!846049 () Regex!3625)

(assert (=> b!1320127 (= e!846049 (Union!3625 (Concat!6026 call!89653 (regTwo!7762 (regex!2311 (rule!4054 t1!34)))) EmptyLang!3625))))

(declare-fun b!1320128 () Bool)

(declare-fun call!89651 () Regex!3625)

(assert (=> b!1320128 (= e!846049 (Union!3625 (Concat!6026 call!89651 (regTwo!7762 (regex!2311 (rule!4054 t1!34)))) call!89653))))

(declare-fun b!1320129 () Bool)

(declare-fun e!846051 () Regex!3625)

(declare-fun call!89652 () Regex!3625)

(assert (=> b!1320129 (= e!846051 (Union!3625 call!89652 call!89650))))

(declare-fun b!1320130 () Bool)

(assert (=> b!1320130 (= c!216803 (nullable!1149 (regOne!7762 (regex!2311 (rule!4054 t1!34)))))))

(declare-fun e!846050 () Regex!3625)

(assert (=> b!1320130 (= e!846050 e!846049)))

(declare-fun b!1320131 () Bool)

(assert (=> b!1320131 (= e!846051 e!846050)))

(declare-fun c!216804 () Bool)

(assert (=> b!1320131 (= c!216804 ((_ is Star!3625) (regex!2311 (rule!4054 t1!34))))))

(declare-fun b!1320132 () Bool)

(declare-fun e!846048 () Regex!3625)

(assert (=> b!1320132 (= e!846048 (ite (= (head!2281 lt!434732) (c!216254 (regex!2311 (rule!4054 t1!34)))) EmptyExpr!3625 EmptyLang!3625))))

(declare-fun b!1320133 () Bool)

(declare-fun e!846047 () Regex!3625)

(assert (=> b!1320133 (= e!846047 EmptyLang!3625)))

(declare-fun bm!89648 () Bool)

(assert (=> bm!89648 (= call!89652 (derivativeStep!901 (ite c!216801 (regOne!7763 (regex!2311 (rule!4054 t1!34))) (ite c!216804 (reg!3954 (regex!2311 (rule!4054 t1!34))) (regOne!7762 (regex!2311 (rule!4054 t1!34))))) (head!2281 lt!434732)))))

(declare-fun b!1320134 () Bool)

(assert (=> b!1320134 (= c!216801 ((_ is Union!3625) (regex!2311 (rule!4054 t1!34))))))

(assert (=> b!1320134 (= e!846048 e!846051)))

(declare-fun bm!89647 () Bool)

(assert (=> bm!89647 (= call!89651 call!89652)))

(declare-fun d!372966 () Bool)

(declare-fun lt!435747 () Regex!3625)

(assert (=> d!372966 (validRegex!1551 lt!435747)))

(assert (=> d!372966 (= lt!435747 e!846047)))

(declare-fun c!216800 () Bool)

(assert (=> d!372966 (= c!216800 (or ((_ is EmptyExpr!3625) (regex!2311 (rule!4054 t1!34))) ((_ is EmptyLang!3625) (regex!2311 (rule!4054 t1!34)))))))

(assert (=> d!372966 (validRegex!1551 (regex!2311 (rule!4054 t1!34)))))

(assert (=> d!372966 (= (derivativeStep!901 (regex!2311 (rule!4054 t1!34)) (head!2281 lt!434732)) lt!435747)))

(declare-fun b!1320135 () Bool)

(assert (=> b!1320135 (= e!846047 e!846048)))

(declare-fun c!216802 () Bool)

(assert (=> b!1320135 (= c!216802 ((_ is ElementMatch!3625) (regex!2311 (rule!4054 t1!34))))))

(declare-fun b!1320136 () Bool)

(assert (=> b!1320136 (= e!846050 (Concat!6026 call!89651 (regex!2311 (rule!4054 t1!34))))))

(assert (= (and d!372966 c!216800) b!1320133))

(assert (= (and d!372966 (not c!216800)) b!1320135))

(assert (= (and b!1320135 c!216802) b!1320132))

(assert (= (and b!1320135 (not c!216802)) b!1320134))

(assert (= (and b!1320134 c!216801) b!1320129))

(assert (= (and b!1320134 (not c!216801)) b!1320131))

(assert (= (and b!1320131 c!216804) b!1320136))

(assert (= (and b!1320131 (not c!216804)) b!1320130))

(assert (= (and b!1320130 c!216803) b!1320128))

(assert (= (and b!1320130 (not c!216803)) b!1320127))

(assert (= (or b!1320128 b!1320127) bm!89645))

(assert (= (or b!1320136 b!1320128) bm!89647))

(assert (= (or b!1320129 bm!89647) bm!89648))

(assert (= (or b!1320129 bm!89645) bm!89646))

(assert (=> bm!89646 m!1472701))

(declare-fun m!1476071 () Bool)

(assert (=> bm!89646 m!1476071))

(declare-fun m!1476073 () Bool)

(assert (=> b!1320130 m!1476073))

(assert (=> bm!89648 m!1472701))

(declare-fun m!1476075 () Bool)

(assert (=> bm!89648 m!1476075))

(declare-fun m!1476077 () Bool)

(assert (=> d!372966 m!1476077))

(assert (=> d!372966 m!1472711))

(assert (=> b!1318061 d!372966))

(assert (=> b!1318061 d!372716))

(assert (=> b!1318061 d!372736))

(declare-fun d!372968 () Bool)

(declare-fun lt!435748 () Bool)

(assert (=> d!372968 (= lt!435748 (select (content!1882 rules!2550) lt!434763))))

(declare-fun e!846053 () Bool)

(assert (=> d!372968 (= lt!435748 e!846053)))

(declare-fun res!593241 () Bool)

(assert (=> d!372968 (=> (not res!593241) (not e!846053))))

(assert (=> d!372968 (= res!593241 ((_ is Cons!13356) rules!2550))))

(assert (=> d!372968 (= (contains!2349 rules!2550 lt!434763) lt!435748)))

(declare-fun b!1320137 () Bool)

(declare-fun e!846052 () Bool)

(assert (=> b!1320137 (= e!846053 e!846052)))

(declare-fun res!593240 () Bool)

(assert (=> b!1320137 (=> res!593240 e!846052)))

(assert (=> b!1320137 (= res!593240 (= (h!18757 rules!2550) lt!434763))))

(declare-fun b!1320138 () Bool)

(assert (=> b!1320138 (= e!846052 (contains!2349 (t!118437 rules!2550) lt!434763))))

(assert (= (and d!372968 res!593241) b!1320137))

(assert (= (and b!1320137 (not res!593240)) b!1320138))

(assert (=> d!372968 m!1472893))

(declare-fun m!1476079 () Bool)

(assert (=> d!372968 m!1476079))

(declare-fun m!1476081 () Bool)

(assert (=> b!1320138 m!1476081))

(assert (=> b!1317905 d!372968))

(assert (=> b!1318432 d!372946))

(assert (=> b!1318432 d!372426))

(declare-fun d!372970 () Bool)

(declare-fun lt!435749 () Int)

(assert (=> d!372970 (>= lt!435749 0)))

(declare-fun e!846054 () Int)

(assert (=> d!372970 (= lt!435749 e!846054)))

(declare-fun c!216805 () Bool)

(assert (=> d!372970 (= c!216805 ((_ is Nil!13357) (_1!7376 lt!434858)))))

(assert (=> d!372970 (= (size!10875 (_1!7376 lt!434858)) lt!435749)))

(declare-fun b!1320139 () Bool)

(assert (=> b!1320139 (= e!846054 0)))

(declare-fun b!1320140 () Bool)

(assert (=> b!1320140 (= e!846054 (+ 1 (size!10875 (t!118438 (_1!7376 lt!434858)))))))

(assert (= (and d!372970 c!216805) b!1320139))

(assert (= (and d!372970 (not c!216805)) b!1320140))

(declare-fun m!1476083 () Bool)

(assert (=> b!1320140 m!1476083))

(assert (=> d!371864 d!372970))

(declare-fun b!1320141 () Bool)

(declare-fun e!846055 () Option!2580)

(declare-fun lt!435751 () Option!2580)

(declare-fun lt!435752 () Option!2580)

(assert (=> b!1320141 (= e!846055 (ite (and ((_ is None!2579) lt!435751) ((_ is None!2579) lt!435752)) None!2579 (ite ((_ is None!2579) lt!435752) lt!435751 (ite ((_ is None!2579) lt!435751) lt!435752 (ite (>= (size!10866 (_1!7377 (v!21135 lt!435751))) (size!10866 (_1!7377 (v!21135 lt!435752)))) lt!435751 lt!435752)))))))

(declare-fun call!89654 () Option!2580)

(assert (=> b!1320141 (= lt!435751 call!89654)))

(assert (=> b!1320141 (= lt!435752 (maxPrefix!1016 thiss!19762 (t!118437 rules!2550) (list!5034 lt!434726)))))

(declare-fun b!1320142 () Bool)

(declare-fun res!593245 () Bool)

(declare-fun e!846056 () Bool)

(assert (=> b!1320142 (=> (not res!593245) (not e!846056))))

(declare-fun lt!435750 () Option!2580)

(assert (=> b!1320142 (= res!593245 (matchR!1627 (regex!2311 (rule!4054 (_1!7377 (get!4260 lt!435750)))) (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435750))))))))

(declare-fun b!1320143 () Bool)

(declare-fun e!846057 () Bool)

(assert (=> b!1320143 (= e!846057 e!846056)))

(declare-fun res!593244 () Bool)

(assert (=> b!1320143 (=> (not res!593244) (not e!846056))))

(assert (=> b!1320143 (= res!593244 (isDefined!2179 lt!435750))))

(declare-fun b!1320144 () Bool)

(declare-fun res!593242 () Bool)

(assert (=> b!1320144 (=> (not res!593242) (not e!846056))))

(assert (=> b!1320144 (= res!593242 (= (++!3406 (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435750)))) (_2!7377 (get!4260 lt!435750))) (list!5034 lt!434726)))))

(declare-fun bm!89649 () Bool)

(assert (=> bm!89649 (= call!89654 (maxPrefixOneRule!581 thiss!19762 (h!18757 rules!2550) (list!5034 lt!434726)))))

(declare-fun b!1320145 () Bool)

(declare-fun res!593248 () Bool)

(assert (=> b!1320145 (=> (not res!593248) (not e!846056))))

(assert (=> b!1320145 (= res!593248 (= (list!5034 (charsOf!1283 (_1!7377 (get!4260 lt!435750)))) (originalCharacters!3173 (_1!7377 (get!4260 lt!435750)))))))

(declare-fun b!1320146 () Bool)

(declare-fun res!593243 () Bool)

(assert (=> b!1320146 (=> (not res!593243) (not e!846056))))

(assert (=> b!1320146 (= res!593243 (= (value!75496 (_1!7377 (get!4260 lt!435750))) (apply!3048 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!435750)))) (seqFromList!1599 (originalCharacters!3173 (_1!7377 (get!4260 lt!435750)))))))))

(declare-fun b!1320147 () Bool)

(assert (=> b!1320147 (= e!846056 (contains!2349 rules!2550 (rule!4054 (_1!7377 (get!4260 lt!435750)))))))

(declare-fun b!1320148 () Bool)

(assert (=> b!1320148 (= e!846055 call!89654)))

(declare-fun d!372972 () Bool)

(assert (=> d!372972 e!846057))

(declare-fun res!593246 () Bool)

(assert (=> d!372972 (=> res!593246 e!846057)))

(assert (=> d!372972 (= res!593246 (isEmpty!7935 lt!435750))))

(assert (=> d!372972 (= lt!435750 e!846055)))

(declare-fun c!216806 () Bool)

(assert (=> d!372972 (= c!216806 (and ((_ is Cons!13356) rules!2550) ((_ is Nil!13356) (t!118437 rules!2550))))))

(declare-fun lt!435754 () Unit!19422)

(declare-fun lt!435753 () Unit!19422)

(assert (=> d!372972 (= lt!435754 lt!435753)))

(assert (=> d!372972 (isPrefix!1076 (list!5034 lt!434726) (list!5034 lt!434726))))

(assert (=> d!372972 (= lt!435753 (lemmaIsPrefixRefl!755 (list!5034 lt!434726) (list!5034 lt!434726)))))

(assert (=> d!372972 (rulesValidInductive!728 thiss!19762 rules!2550)))

(assert (=> d!372972 (= (maxPrefix!1016 thiss!19762 rules!2550 (list!5034 lt!434726)) lt!435750)))

(declare-fun b!1320149 () Bool)

(declare-fun res!593247 () Bool)

(assert (=> b!1320149 (=> (not res!593247) (not e!846056))))

(assert (=> b!1320149 (= res!593247 (< (size!10874 (_2!7377 (get!4260 lt!435750))) (size!10874 (list!5034 lt!434726))))))

(assert (= (and d!372972 c!216806) b!1320148))

(assert (= (and d!372972 (not c!216806)) b!1320141))

(assert (= (or b!1320148 b!1320141) bm!89649))

(assert (= (and d!372972 (not res!593246)) b!1320143))

(assert (= (and b!1320143 res!593244) b!1320145))

(assert (= (and b!1320145 res!593248) b!1320149))

(assert (= (and b!1320149 res!593247) b!1320144))

(assert (= (and b!1320144 res!593242) b!1320146))

(assert (= (and b!1320146 res!593243) b!1320142))

(assert (= (and b!1320142 res!593245) b!1320147))

(assert (=> b!1320141 m!1472313))

(declare-fun m!1476085 () Bool)

(assert (=> b!1320141 m!1476085))

(declare-fun m!1476087 () Bool)

(assert (=> b!1320145 m!1476087))

(declare-fun m!1476089 () Bool)

(assert (=> b!1320145 m!1476089))

(assert (=> b!1320145 m!1476089))

(declare-fun m!1476091 () Bool)

(assert (=> b!1320145 m!1476091))

(assert (=> b!1320147 m!1476087))

(declare-fun m!1476093 () Bool)

(assert (=> b!1320147 m!1476093))

(assert (=> b!1320142 m!1476087))

(assert (=> b!1320142 m!1476089))

(assert (=> b!1320142 m!1476089))

(assert (=> b!1320142 m!1476091))

(assert (=> b!1320142 m!1476091))

(declare-fun m!1476095 () Bool)

(assert (=> b!1320142 m!1476095))

(assert (=> b!1320149 m!1476087))

(declare-fun m!1476097 () Bool)

(assert (=> b!1320149 m!1476097))

(assert (=> b!1320149 m!1472313))

(assert (=> b!1320149 m!1472791))

(assert (=> b!1320144 m!1476087))

(assert (=> b!1320144 m!1476089))

(assert (=> b!1320144 m!1476089))

(assert (=> b!1320144 m!1476091))

(assert (=> b!1320144 m!1476091))

(declare-fun m!1476099 () Bool)

(assert (=> b!1320144 m!1476099))

(assert (=> b!1320146 m!1476087))

(declare-fun m!1476101 () Bool)

(assert (=> b!1320146 m!1476101))

(assert (=> b!1320146 m!1476101))

(declare-fun m!1476103 () Bool)

(assert (=> b!1320146 m!1476103))

(assert (=> bm!89649 m!1472313))

(declare-fun m!1476105 () Bool)

(assert (=> bm!89649 m!1476105))

(declare-fun m!1476107 () Bool)

(assert (=> b!1320143 m!1476107))

(declare-fun m!1476109 () Bool)

(assert (=> d!372972 m!1476109))

(assert (=> d!372972 m!1472313))

(assert (=> d!372972 m!1472313))

(declare-fun m!1476111 () Bool)

(assert (=> d!372972 m!1476111))

(assert (=> d!372972 m!1472313))

(assert (=> d!372972 m!1472313))

(declare-fun m!1476113 () Bool)

(assert (=> d!372972 m!1476113))

(assert (=> d!372972 m!1472935))

(assert (=> d!371864 d!372972))

(declare-fun d!372974 () Bool)

(assert (=> d!372974 (= (inv!17728 (tag!2573 (h!18757 (t!118437 rules!2550)))) (= (mod (str.len (value!75495 (tag!2573 (h!18757 (t!118437 rules!2550))))) 2) 0))))

(assert (=> b!1318542 d!372974))

(declare-fun d!372976 () Bool)

(declare-fun res!593249 () Bool)

(declare-fun e!846058 () Bool)

(assert (=> d!372976 (=> (not res!593249) (not e!846058))))

(assert (=> d!372976 (= res!593249 (semiInverseModEq!870 (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toValue!3538 (transformation!2311 (h!18757 (t!118437 rules!2550))))))))

(assert (=> d!372976 (= (inv!17732 (transformation!2311 (h!18757 (t!118437 rules!2550)))) e!846058)))

(declare-fun b!1320150 () Bool)

(assert (=> b!1320150 (= e!846058 (equivClasses!829 (toChars!3397 (transformation!2311 (h!18757 (t!118437 rules!2550)))) (toValue!3538 (transformation!2311 (h!18757 (t!118437 rules!2550))))))))

(assert (= (and d!372976 res!593249) b!1320150))

(declare-fun m!1476115 () Bool)

(assert (=> d!372976 m!1476115))

(declare-fun m!1476117 () Bool)

(assert (=> b!1320150 m!1476117))

(assert (=> b!1318542 d!372976))

(declare-fun bm!89650 () Bool)

(declare-fun call!89655 () Bool)

(declare-fun call!89657 () Bool)

(assert (=> bm!89650 (= call!89655 call!89657)))

(declare-fun b!1320151 () Bool)

(declare-fun e!846063 () Bool)

(assert (=> b!1320151 (= e!846063 call!89655)))

(declare-fun b!1320152 () Bool)

(declare-fun e!846061 () Bool)

(declare-fun e!846064 () Bool)

(assert (=> b!1320152 (= e!846061 e!846064)))

(declare-fun res!593252 () Bool)

(assert (=> b!1320152 (= res!593252 (not (nullable!1149 (reg!3954 (h!18759 (map!2933 rules!2550 lambda!53720))))))))

(assert (=> b!1320152 (=> (not res!593252) (not e!846064))))

(declare-fun b!1320153 () Bool)

(declare-fun res!593251 () Bool)

(assert (=> b!1320153 (=> (not res!593251) (not e!846063))))

(declare-fun call!89656 () Bool)

(assert (=> b!1320153 (= res!593251 call!89656)))

(declare-fun e!846062 () Bool)

(assert (=> b!1320153 (= e!846062 e!846063)))

(declare-fun b!1320154 () Bool)

(declare-fun res!593254 () Bool)

(declare-fun e!846059 () Bool)

(assert (=> b!1320154 (=> res!593254 e!846059)))

(assert (=> b!1320154 (= res!593254 (not ((_ is Concat!6026) (h!18759 (map!2933 rules!2550 lambda!53720)))))))

(assert (=> b!1320154 (= e!846062 e!846059)))

(declare-fun b!1320155 () Bool)

(declare-fun e!846065 () Bool)

(assert (=> b!1320155 (= e!846065 call!89655)))

(declare-fun bm!89652 () Bool)

(declare-fun c!216807 () Bool)

(declare-fun c!216808 () Bool)

(assert (=> bm!89652 (= call!89657 (validRegex!1551 (ite c!216807 (reg!3954 (h!18759 (map!2933 rules!2550 lambda!53720))) (ite c!216808 (regTwo!7763 (h!18759 (map!2933 rules!2550 lambda!53720))) (regTwo!7762 (h!18759 (map!2933 rules!2550 lambda!53720)))))))))

(declare-fun b!1320156 () Bool)

(declare-fun e!846060 () Bool)

(assert (=> b!1320156 (= e!846060 e!846061)))

(assert (=> b!1320156 (= c!216807 ((_ is Star!3625) (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun b!1320157 () Bool)

(assert (=> b!1320157 (= e!846064 call!89657)))

(declare-fun b!1320158 () Bool)

(assert (=> b!1320158 (= e!846059 e!846065)))

(declare-fun res!593253 () Bool)

(assert (=> b!1320158 (=> (not res!593253) (not e!846065))))

(assert (=> b!1320158 (= res!593253 call!89656)))

(declare-fun b!1320159 () Bool)

(assert (=> b!1320159 (= e!846061 e!846062)))

(assert (=> b!1320159 (= c!216808 ((_ is Union!3625) (h!18759 (map!2933 rules!2550 lambda!53720))))))

(declare-fun bm!89651 () Bool)

(assert (=> bm!89651 (= call!89656 (validRegex!1551 (ite c!216808 (regOne!7763 (h!18759 (map!2933 rules!2550 lambda!53720))) (regOne!7762 (h!18759 (map!2933 rules!2550 lambda!53720))))))))

(declare-fun d!372978 () Bool)

(declare-fun res!593250 () Bool)

(assert (=> d!372978 (=> res!593250 e!846060)))

(assert (=> d!372978 (= res!593250 ((_ is ElementMatch!3625) (h!18759 (map!2933 rules!2550 lambda!53720))))))

(assert (=> d!372978 (= (validRegex!1551 (h!18759 (map!2933 rules!2550 lambda!53720))) e!846060)))

(assert (= (and d!372978 (not res!593250)) b!1320156))

(assert (= (and b!1320156 c!216807) b!1320152))

(assert (= (and b!1320156 (not c!216807)) b!1320159))

(assert (= (and b!1320152 res!593252) b!1320157))

(assert (= (and b!1320159 c!216808) b!1320153))

(assert (= (and b!1320159 (not c!216808)) b!1320154))

(assert (= (and b!1320153 res!593251) b!1320151))

(assert (= (and b!1320154 (not res!593254)) b!1320158))

(assert (= (and b!1320158 res!593253) b!1320155))

(assert (= (or b!1320153 b!1320158) bm!89651))

(assert (= (or b!1320151 b!1320155) bm!89650))

(assert (= (or b!1320157 bm!89650) bm!89652))

(declare-fun m!1476119 () Bool)

(assert (=> b!1320152 m!1476119))

(declare-fun m!1476121 () Bool)

(assert (=> bm!89652 m!1476121))

(declare-fun m!1476123 () Bool)

(assert (=> bm!89651 m!1476123))

(assert (=> bs!330728 d!372978))

(declare-fun d!372980 () Bool)

(declare-fun lt!435755 () Token!4284)

(assert (=> d!372980 (= lt!435755 (apply!3055 (list!5035 (_1!7375 lt!434971)) 0))))

(assert (=> d!372980 (= lt!435755 (apply!3057 (c!216256 (_1!7375 lt!434971)) 0))))

(declare-fun e!846066 () Bool)

(assert (=> d!372980 e!846066))

(declare-fun res!593255 () Bool)

(assert (=> d!372980 (=> (not res!593255) (not e!846066))))

(assert (=> d!372980 (= res!593255 (<= 0 0))))

(assert (=> d!372980 (= (apply!3051 (_1!7375 lt!434971) 0) lt!435755)))

(declare-fun b!1320160 () Bool)

(assert (=> b!1320160 (= e!846066 (< 0 (size!10870 (_1!7375 lt!434971))))))

(assert (= (and d!372980 res!593255) b!1320160))

(assert (=> d!372980 m!1475919))

(assert (=> d!372980 m!1475919))

(declare-fun m!1476125 () Bool)

(assert (=> d!372980 m!1476125))

(declare-fun m!1476127 () Bool)

(assert (=> d!372980 m!1476127))

(assert (=> b!1320160 m!1473275))

(assert (=> b!1318469 d!372980))

(declare-fun d!372982 () Bool)

(assert (=> d!372982 (= (isEmpty!7930 (list!5034 (_2!7375 lt!434721))) ((_ is Nil!13354) (list!5034 (_2!7375 lt!434721))))))

(assert (=> d!371854 d!372982))

(declare-fun d!372984 () Bool)

(assert (=> d!372984 (= (list!5034 (_2!7375 lt!434721)) (list!5039 (c!216255 (_2!7375 lt!434721))))))

(declare-fun bs!330981 () Bool)

(assert (= bs!330981 d!372984))

(declare-fun m!1476129 () Bool)

(assert (=> bs!330981 m!1476129))

(assert (=> d!371854 d!372984))

(declare-fun d!372986 () Bool)

(declare-fun lt!435756 () Bool)

(assert (=> d!372986 (= lt!435756 (isEmpty!7930 (list!5039 (c!216255 (_2!7375 lt!434721)))))))

(assert (=> d!372986 (= lt!435756 (= (size!10877 (c!216255 (_2!7375 lt!434721))) 0))))

(assert (=> d!372986 (= (isEmpty!7931 (c!216255 (_2!7375 lt!434721))) lt!435756)))

(declare-fun bs!330982 () Bool)

(assert (= bs!330982 d!372986))

(assert (=> bs!330982 m!1476129))

(assert (=> bs!330982 m!1476129))

(declare-fun m!1476131 () Bool)

(assert (=> bs!330982 m!1476131))

(declare-fun m!1476133 () Bool)

(assert (=> bs!330982 m!1476133))

(assert (=> d!371854 d!372986))

(declare-fun d!372988 () Bool)

(assert (=> d!372988 (= (inv!15 (value!75496 t2!34)) (= (charsToBigInt!0 (text!17256 (value!75496 t2!34)) 0) (value!75491 (value!75496 t2!34))))))

(declare-fun bs!330983 () Bool)

(assert (= bs!330983 d!372988))

(declare-fun m!1476135 () Bool)

(assert (=> bs!330983 m!1476135))

(assert (=> b!1318323 d!372988))

(declare-fun d!372990 () Bool)

(assert (=> d!372990 (= (list!5035 lt!434769) (list!5038 (c!216256 lt!434769)))))

(declare-fun bs!330984 () Bool)

(assert (= bs!330984 d!372990))

(declare-fun m!1476137 () Bool)

(assert (=> bs!330984 m!1476137))

(assert (=> d!371792 d!372990))

(declare-fun d!372992 () Bool)

(declare-fun e!846067 () Bool)

(assert (=> d!372992 e!846067))

(declare-fun res!593256 () Bool)

(assert (=> d!372992 (=> (not res!593256) (not e!846067))))

(declare-fun lt!435757 () BalanceConc!8726)

(assert (=> d!372992 (= res!593256 (= (list!5035 lt!435757) (Cons!13357 t1!34 Nil!13357)))))

(assert (=> d!372992 (= lt!435757 (choose!8071 t1!34))))

(assert (=> d!372992 (= (singleton!386 t1!34) lt!435757)))

(declare-fun b!1320161 () Bool)

(assert (=> b!1320161 (= e!846067 (isBalanced!1280 (c!216256 lt!435757)))))

(assert (= (and d!372992 res!593256) b!1320161))

(declare-fun m!1476139 () Bool)

(assert (=> d!372992 m!1476139))

(declare-fun m!1476141 () Bool)

(assert (=> d!372992 m!1476141))

(declare-fun m!1476143 () Bool)

(assert (=> b!1320161 m!1476143))

(assert (=> d!371792 d!372992))

(declare-fun bs!330985 () Bool)

(declare-fun d!372994 () Bool)

(assert (= bs!330985 (and d!372994 b!1317731)))

(declare-fun lambda!53839 () Int)

(assert (=> bs!330985 (not (= lambda!53839 lambda!53722))))

(declare-fun bs!330986 () Bool)

(assert (= bs!330986 (and d!372994 d!371858)))

(assert (=> bs!330986 (not (= lambda!53839 lambda!53738))))

(declare-fun bs!330987 () Bool)

(assert (= bs!330987 (and d!372994 d!371856)))

(assert (=> bs!330987 (not (= lambda!53839 lambda!53735))))

(declare-fun bs!330988 () Bool)

(assert (= bs!330988 (and d!372994 d!372286)))

(assert (=> bs!330988 (not (= lambda!53839 lambda!53791))))

(declare-fun bs!330989 () Bool)

(assert (= bs!330989 (and d!372994 b!1317751)))

(assert (=> bs!330989 (= lambda!53839 lambda!53723)))

(declare-fun bs!330990 () Bool)

(assert (= bs!330990 (and d!372994 d!372684)))

(assert (=> bs!330990 (= lambda!53839 lambda!53813)))

(declare-fun bs!330991 () Bool)

(assert (= bs!330991 (and d!372994 d!372284)))

(assert (=> bs!330991 (not (= lambda!53839 lambda!53788))))

(assert (=> d!372994 true))

(declare-fun lt!435760 () Bool)

(assert (=> d!372994 (= lt!435760 (rulesValidInductive!728 thiss!19762 rules!2550))))

(assert (=> d!372994 (= lt!435760 (forall!3296 rules!2550 lambda!53839))))

(assert (=> d!372994 (= (rulesValid!839 thiss!19762 rules!2550) lt!435760)))

(declare-fun bs!330992 () Bool)

(assert (= bs!330992 d!372994))

(assert (=> bs!330992 m!1472935))

(declare-fun m!1476145 () Bool)

(assert (=> bs!330992 m!1476145))

(assert (=> d!371974 d!372994))

(declare-fun e!846073 () Bool)

(declare-fun tp!383377 () Bool)

(declare-fun b!1320170 () Bool)

(declare-fun tp!383378 () Bool)

(assert (=> b!1320170 (= e!846073 (and (inv!17735 (left!11477 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))))) tp!383378 (inv!17735 (right!11807 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))))) tp!383377))))

(declare-fun b!1320172 () Bool)

(declare-fun e!846072 () Bool)

(declare-fun tp!383379 () Bool)

(assert (=> b!1320172 (= e!846072 tp!383379)))

(declare-fun b!1320171 () Bool)

(declare-fun inv!17742 (IArray!8789) Bool)

(assert (=> b!1320171 (= e!846073 (and (inv!17742 (xs!7107 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))))) e!846072))))

(assert (=> b!1318129 (= tp!383179 (and (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34)))) e!846073))))

(assert (= (and b!1318129 ((_ is Node!4392) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))))) b!1320170))

(assert (= b!1320171 b!1320172))

(assert (= (and b!1318129 ((_ is Leaf!6744) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t2!34))) (value!75496 t2!34))))) b!1320171))

(declare-fun m!1476147 () Bool)

(assert (=> b!1320170 m!1476147))

(declare-fun m!1476149 () Bool)

(assert (=> b!1320170 m!1476149))

(declare-fun m!1476151 () Bool)

(assert (=> b!1320171 m!1476151))

(assert (=> b!1318129 m!1472807))

(declare-fun b!1320173 () Bool)

(declare-fun e!846074 () Bool)

(assert (=> b!1320173 (= e!846074 tp_is_empty!6631)))

(declare-fun b!1320176 () Bool)

(declare-fun tp!383384 () Bool)

(declare-fun tp!383382 () Bool)

(assert (=> b!1320176 (= e!846074 (and tp!383384 tp!383382))))

(assert (=> b!1318524 (= tp!383239 e!846074)))

(declare-fun b!1320175 () Bool)

(declare-fun tp!383383 () Bool)

(assert (=> b!1320175 (= e!846074 tp!383383)))

(declare-fun b!1320174 () Bool)

(declare-fun tp!383381 () Bool)

(declare-fun tp!383380 () Bool)

(assert (=> b!1320174 (= e!846074 (and tp!383381 tp!383380))))

(assert (= (and b!1318524 ((_ is ElementMatch!3625) (regOne!7763 (regex!2311 (h!18757 rules!2550))))) b!1320173))

(assert (= (and b!1318524 ((_ is Concat!6026) (regOne!7763 (regex!2311 (h!18757 rules!2550))))) b!1320174))

(assert (= (and b!1318524 ((_ is Star!3625) (regOne!7763 (regex!2311 (h!18757 rules!2550))))) b!1320175))

(assert (= (and b!1318524 ((_ is Union!3625) (regOne!7763 (regex!2311 (h!18757 rules!2550))))) b!1320176))

(declare-fun b!1320177 () Bool)

(declare-fun e!846075 () Bool)

(assert (=> b!1320177 (= e!846075 tp_is_empty!6631)))

(declare-fun b!1320180 () Bool)

(declare-fun tp!383389 () Bool)

(declare-fun tp!383387 () Bool)

(assert (=> b!1320180 (= e!846075 (and tp!383389 tp!383387))))

(assert (=> b!1318524 (= tp!383237 e!846075)))

(declare-fun b!1320179 () Bool)

(declare-fun tp!383388 () Bool)

(assert (=> b!1320179 (= e!846075 tp!383388)))

(declare-fun b!1320178 () Bool)

(declare-fun tp!383386 () Bool)

(declare-fun tp!383385 () Bool)

(assert (=> b!1320178 (= e!846075 (and tp!383386 tp!383385))))

(assert (= (and b!1318524 ((_ is ElementMatch!3625) (regTwo!7763 (regex!2311 (h!18757 rules!2550))))) b!1320177))

(assert (= (and b!1318524 ((_ is Concat!6026) (regTwo!7763 (regex!2311 (h!18757 rules!2550))))) b!1320178))

(assert (= (and b!1318524 ((_ is Star!3625) (regTwo!7763 (regex!2311 (h!18757 rules!2550))))) b!1320179))

(assert (= (and b!1318524 ((_ is Union!3625) (regTwo!7763 (regex!2311 (h!18757 rules!2550))))) b!1320180))

(declare-fun b!1320181 () Bool)

(declare-fun e!846076 () Bool)

(assert (=> b!1320181 (= e!846076 tp_is_empty!6631)))

(declare-fun b!1320184 () Bool)

(declare-fun tp!383394 () Bool)

(declare-fun tp!383392 () Bool)

(assert (=> b!1320184 (= e!846076 (and tp!383394 tp!383392))))

(assert (=> b!1318523 (= tp!383238 e!846076)))

(declare-fun b!1320183 () Bool)

(declare-fun tp!383393 () Bool)

(assert (=> b!1320183 (= e!846076 tp!383393)))

(declare-fun b!1320182 () Bool)

(declare-fun tp!383391 () Bool)

(declare-fun tp!383390 () Bool)

(assert (=> b!1320182 (= e!846076 (and tp!383391 tp!383390))))

(assert (= (and b!1318523 ((_ is ElementMatch!3625) (reg!3954 (regex!2311 (h!18757 rules!2550))))) b!1320181))

(assert (= (and b!1318523 ((_ is Concat!6026) (reg!3954 (regex!2311 (h!18757 rules!2550))))) b!1320182))

(assert (= (and b!1318523 ((_ is Star!3625) (reg!3954 (regex!2311 (h!18757 rules!2550))))) b!1320183))

(assert (= (and b!1318523 ((_ is Union!3625) (reg!3954 (regex!2311 (h!18757 rules!2550))))) b!1320184))

(declare-fun b!1320185 () Bool)

(declare-fun e!846077 () Bool)

(assert (=> b!1320185 (= e!846077 tp_is_empty!6631)))

(declare-fun b!1320188 () Bool)

(declare-fun tp!383399 () Bool)

(declare-fun tp!383397 () Bool)

(assert (=> b!1320188 (= e!846077 (and tp!383399 tp!383397))))

(assert (=> b!1318532 (= tp!383249 e!846077)))

(declare-fun b!1320187 () Bool)

(declare-fun tp!383398 () Bool)

(assert (=> b!1320187 (= e!846077 tp!383398)))

(declare-fun b!1320186 () Bool)

(declare-fun tp!383396 () Bool)

(declare-fun tp!383395 () Bool)

(assert (=> b!1320186 (= e!846077 (and tp!383396 tp!383395))))

(assert (= (and b!1318532 ((_ is ElementMatch!3625) (regOne!7763 (regex!2311 (rule!4054 t2!34))))) b!1320185))

(assert (= (and b!1318532 ((_ is Concat!6026) (regOne!7763 (regex!2311 (rule!4054 t2!34))))) b!1320186))

(assert (= (and b!1318532 ((_ is Star!3625) (regOne!7763 (regex!2311 (rule!4054 t2!34))))) b!1320187))

(assert (= (and b!1318532 ((_ is Union!3625) (regOne!7763 (regex!2311 (rule!4054 t2!34))))) b!1320188))

(declare-fun b!1320189 () Bool)

(declare-fun e!846078 () Bool)

(assert (=> b!1320189 (= e!846078 tp_is_empty!6631)))

(declare-fun b!1320192 () Bool)

(declare-fun tp!383404 () Bool)

(declare-fun tp!383402 () Bool)

(assert (=> b!1320192 (= e!846078 (and tp!383404 tp!383402))))

(assert (=> b!1318532 (= tp!383247 e!846078)))

(declare-fun b!1320191 () Bool)

(declare-fun tp!383403 () Bool)

(assert (=> b!1320191 (= e!846078 tp!383403)))

(declare-fun b!1320190 () Bool)

(declare-fun tp!383401 () Bool)

(declare-fun tp!383400 () Bool)

(assert (=> b!1320190 (= e!846078 (and tp!383401 tp!383400))))

(assert (= (and b!1318532 ((_ is ElementMatch!3625) (regTwo!7763 (regex!2311 (rule!4054 t2!34))))) b!1320189))

(assert (= (and b!1318532 ((_ is Concat!6026) (regTwo!7763 (regex!2311 (rule!4054 t2!34))))) b!1320190))

(assert (= (and b!1318532 ((_ is Star!3625) (regTwo!7763 (regex!2311 (rule!4054 t2!34))))) b!1320191))

(assert (= (and b!1318532 ((_ is Union!3625) (regTwo!7763 (regex!2311 (rule!4054 t2!34))))) b!1320192))

(declare-fun b!1320193 () Bool)

(declare-fun e!846079 () Bool)

(assert (=> b!1320193 (= e!846079 tp_is_empty!6631)))

(declare-fun b!1320196 () Bool)

(declare-fun tp!383409 () Bool)

(declare-fun tp!383407 () Bool)

(assert (=> b!1320196 (= e!846079 (and tp!383409 tp!383407))))

(assert (=> b!1318528 (= tp!383244 e!846079)))

(declare-fun b!1320195 () Bool)

(declare-fun tp!383408 () Bool)

(assert (=> b!1320195 (= e!846079 tp!383408)))

(declare-fun b!1320194 () Bool)

(declare-fun tp!383406 () Bool)

(declare-fun tp!383405 () Bool)

(assert (=> b!1320194 (= e!846079 (and tp!383406 tp!383405))))

(assert (= (and b!1318528 ((_ is ElementMatch!3625) (regOne!7763 (regex!2311 (rule!4054 t1!34))))) b!1320193))

(assert (= (and b!1318528 ((_ is Concat!6026) (regOne!7763 (regex!2311 (rule!4054 t1!34))))) b!1320194))

(assert (= (and b!1318528 ((_ is Star!3625) (regOne!7763 (regex!2311 (rule!4054 t1!34))))) b!1320195))

(assert (= (and b!1318528 ((_ is Union!3625) (regOne!7763 (regex!2311 (rule!4054 t1!34))))) b!1320196))

(declare-fun b!1320197 () Bool)

(declare-fun e!846080 () Bool)

(assert (=> b!1320197 (= e!846080 tp_is_empty!6631)))

(declare-fun b!1320200 () Bool)

(declare-fun tp!383414 () Bool)

(declare-fun tp!383412 () Bool)

(assert (=> b!1320200 (= e!846080 (and tp!383414 tp!383412))))

(assert (=> b!1318528 (= tp!383242 e!846080)))

(declare-fun b!1320199 () Bool)

(declare-fun tp!383413 () Bool)

(assert (=> b!1320199 (= e!846080 tp!383413)))

(declare-fun b!1320198 () Bool)

(declare-fun tp!383411 () Bool)

(declare-fun tp!383410 () Bool)

(assert (=> b!1320198 (= e!846080 (and tp!383411 tp!383410))))

(assert (= (and b!1318528 ((_ is ElementMatch!3625) (regTwo!7763 (regex!2311 (rule!4054 t1!34))))) b!1320197))

(assert (= (and b!1318528 ((_ is Concat!6026) (regTwo!7763 (regex!2311 (rule!4054 t1!34))))) b!1320198))

(assert (= (and b!1318528 ((_ is Star!3625) (regTwo!7763 (regex!2311 (rule!4054 t1!34))))) b!1320199))

(assert (= (and b!1318528 ((_ is Union!3625) (regTwo!7763 (regex!2311 (rule!4054 t1!34))))) b!1320200))

(declare-fun b!1320201 () Bool)

(declare-fun e!846081 () Bool)

(assert (=> b!1320201 (= e!846081 tp_is_empty!6631)))

(declare-fun b!1320204 () Bool)

(declare-fun tp!383419 () Bool)

(declare-fun tp!383417 () Bool)

(assert (=> b!1320204 (= e!846081 (and tp!383419 tp!383417))))

(assert (=> b!1318531 (= tp!383248 e!846081)))

(declare-fun b!1320203 () Bool)

(declare-fun tp!383418 () Bool)

(assert (=> b!1320203 (= e!846081 tp!383418)))

(declare-fun b!1320202 () Bool)

(declare-fun tp!383416 () Bool)

(declare-fun tp!383415 () Bool)

(assert (=> b!1320202 (= e!846081 (and tp!383416 tp!383415))))

(assert (= (and b!1318531 ((_ is ElementMatch!3625) (reg!3954 (regex!2311 (rule!4054 t2!34))))) b!1320201))

(assert (= (and b!1318531 ((_ is Concat!6026) (reg!3954 (regex!2311 (rule!4054 t2!34))))) b!1320202))

(assert (= (and b!1318531 ((_ is Star!3625) (reg!3954 (regex!2311 (rule!4054 t2!34))))) b!1320203))

(assert (= (and b!1318531 ((_ is Union!3625) (reg!3954 (regex!2311 (rule!4054 t2!34))))) b!1320204))

(declare-fun b!1320205 () Bool)

(declare-fun e!846082 () Bool)

(assert (=> b!1320205 (= e!846082 tp_is_empty!6631)))

(declare-fun b!1320208 () Bool)

(declare-fun tp!383424 () Bool)

(declare-fun tp!383422 () Bool)

(assert (=> b!1320208 (= e!846082 (and tp!383424 tp!383422))))

(assert (=> b!1318526 (= tp!383241 e!846082)))

(declare-fun b!1320207 () Bool)

(declare-fun tp!383423 () Bool)

(assert (=> b!1320207 (= e!846082 tp!383423)))

(declare-fun b!1320206 () Bool)

(declare-fun tp!383421 () Bool)

(declare-fun tp!383420 () Bool)

(assert (=> b!1320206 (= e!846082 (and tp!383421 tp!383420))))

(assert (= (and b!1318526 ((_ is ElementMatch!3625) (regOne!7762 (regex!2311 (rule!4054 t1!34))))) b!1320205))

(assert (= (and b!1318526 ((_ is Concat!6026) (regOne!7762 (regex!2311 (rule!4054 t1!34))))) b!1320206))

(assert (= (and b!1318526 ((_ is Star!3625) (regOne!7762 (regex!2311 (rule!4054 t1!34))))) b!1320207))

(assert (= (and b!1318526 ((_ is Union!3625) (regOne!7762 (regex!2311 (rule!4054 t1!34))))) b!1320208))

(declare-fun b!1320209 () Bool)

(declare-fun e!846083 () Bool)

(assert (=> b!1320209 (= e!846083 tp_is_empty!6631)))

(declare-fun b!1320212 () Bool)

(declare-fun tp!383429 () Bool)

(declare-fun tp!383427 () Bool)

(assert (=> b!1320212 (= e!846083 (and tp!383429 tp!383427))))

(assert (=> b!1318526 (= tp!383240 e!846083)))

(declare-fun b!1320211 () Bool)

(declare-fun tp!383428 () Bool)

(assert (=> b!1320211 (= e!846083 tp!383428)))

(declare-fun b!1320210 () Bool)

(declare-fun tp!383426 () Bool)

(declare-fun tp!383425 () Bool)

(assert (=> b!1320210 (= e!846083 (and tp!383426 tp!383425))))

(assert (= (and b!1318526 ((_ is ElementMatch!3625) (regTwo!7762 (regex!2311 (rule!4054 t1!34))))) b!1320209))

(assert (= (and b!1318526 ((_ is Concat!6026) (regTwo!7762 (regex!2311 (rule!4054 t1!34))))) b!1320210))

(assert (= (and b!1318526 ((_ is Star!3625) (regTwo!7762 (regex!2311 (rule!4054 t1!34))))) b!1320211))

(assert (= (and b!1318526 ((_ is Union!3625) (regTwo!7762 (regex!2311 (rule!4054 t1!34))))) b!1320212))

(declare-fun b!1320213 () Bool)

(declare-fun e!846084 () Bool)

(assert (=> b!1320213 (= e!846084 tp_is_empty!6631)))

(declare-fun b!1320216 () Bool)

(declare-fun tp!383434 () Bool)

(declare-fun tp!383432 () Bool)

(assert (=> b!1320216 (= e!846084 (and tp!383434 tp!383432))))

(assert (=> b!1318527 (= tp!383243 e!846084)))

(declare-fun b!1320215 () Bool)

(declare-fun tp!383433 () Bool)

(assert (=> b!1320215 (= e!846084 tp!383433)))

(declare-fun b!1320214 () Bool)

(declare-fun tp!383431 () Bool)

(declare-fun tp!383430 () Bool)

(assert (=> b!1320214 (= e!846084 (and tp!383431 tp!383430))))

(assert (= (and b!1318527 ((_ is ElementMatch!3625) (reg!3954 (regex!2311 (rule!4054 t1!34))))) b!1320213))

(assert (= (and b!1318527 ((_ is Concat!6026) (reg!3954 (regex!2311 (rule!4054 t1!34))))) b!1320214))

(assert (= (and b!1318527 ((_ is Star!3625) (reg!3954 (regex!2311 (rule!4054 t1!34))))) b!1320215))

(assert (= (and b!1318527 ((_ is Union!3625) (reg!3954 (regex!2311 (rule!4054 t1!34))))) b!1320216))

(declare-fun b!1320217 () Bool)

(declare-fun e!846085 () Bool)

(assert (=> b!1320217 (= e!846085 tp_is_empty!6631)))

(declare-fun b!1320220 () Bool)

(declare-fun tp!383439 () Bool)

(declare-fun tp!383437 () Bool)

(assert (=> b!1320220 (= e!846085 (and tp!383439 tp!383437))))

(assert (=> b!1318522 (= tp!383236 e!846085)))

(declare-fun b!1320219 () Bool)

(declare-fun tp!383438 () Bool)

(assert (=> b!1320219 (= e!846085 tp!383438)))

(declare-fun b!1320218 () Bool)

(declare-fun tp!383436 () Bool)

(declare-fun tp!383435 () Bool)

(assert (=> b!1320218 (= e!846085 (and tp!383436 tp!383435))))

(assert (= (and b!1318522 ((_ is ElementMatch!3625) (regOne!7762 (regex!2311 (h!18757 rules!2550))))) b!1320217))

(assert (= (and b!1318522 ((_ is Concat!6026) (regOne!7762 (regex!2311 (h!18757 rules!2550))))) b!1320218))

(assert (= (and b!1318522 ((_ is Star!3625) (regOne!7762 (regex!2311 (h!18757 rules!2550))))) b!1320219))

(assert (= (and b!1318522 ((_ is Union!3625) (regOne!7762 (regex!2311 (h!18757 rules!2550))))) b!1320220))

(declare-fun b!1320221 () Bool)

(declare-fun e!846086 () Bool)

(assert (=> b!1320221 (= e!846086 tp_is_empty!6631)))

(declare-fun b!1320224 () Bool)

(declare-fun tp!383444 () Bool)

(declare-fun tp!383442 () Bool)

(assert (=> b!1320224 (= e!846086 (and tp!383444 tp!383442))))

(assert (=> b!1318522 (= tp!383235 e!846086)))

(declare-fun b!1320223 () Bool)

(declare-fun tp!383443 () Bool)

(assert (=> b!1320223 (= e!846086 tp!383443)))

(declare-fun b!1320222 () Bool)

(declare-fun tp!383441 () Bool)

(declare-fun tp!383440 () Bool)

(assert (=> b!1320222 (= e!846086 (and tp!383441 tp!383440))))

(assert (= (and b!1318522 ((_ is ElementMatch!3625) (regTwo!7762 (regex!2311 (h!18757 rules!2550))))) b!1320221))

(assert (= (and b!1318522 ((_ is Concat!6026) (regTwo!7762 (regex!2311 (h!18757 rules!2550))))) b!1320222))

(assert (= (and b!1318522 ((_ is Star!3625) (regTwo!7762 (regex!2311 (h!18757 rules!2550))))) b!1320223))

(assert (= (and b!1318522 ((_ is Union!3625) (regTwo!7762 (regex!2311 (h!18757 rules!2550))))) b!1320224))

(declare-fun b!1320225 () Bool)

(declare-fun e!846087 () Bool)

(declare-fun tp!383445 () Bool)

(assert (=> b!1320225 (= e!846087 (and tp_is_empty!6631 tp!383445))))

(assert (=> b!1318510 (= tp!383224 e!846087)))

(assert (= (and b!1318510 ((_ is Cons!13354) (t!118435 (originalCharacters!3173 t2!34)))) b!1320225))

(declare-fun b!1320226 () Bool)

(declare-fun e!846088 () Bool)

(assert (=> b!1320226 (= e!846088 tp_is_empty!6631)))

(declare-fun b!1320229 () Bool)

(declare-fun tp!383450 () Bool)

(declare-fun tp!383448 () Bool)

(assert (=> b!1320229 (= e!846088 (and tp!383450 tp!383448))))

(assert (=> b!1318530 (= tp!383246 e!846088)))

(declare-fun b!1320228 () Bool)

(declare-fun tp!383449 () Bool)

(assert (=> b!1320228 (= e!846088 tp!383449)))

(declare-fun b!1320227 () Bool)

(declare-fun tp!383447 () Bool)

(declare-fun tp!383446 () Bool)

(assert (=> b!1320227 (= e!846088 (and tp!383447 tp!383446))))

(assert (= (and b!1318530 ((_ is ElementMatch!3625) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) b!1320226))

(assert (= (and b!1318530 ((_ is Concat!6026) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) b!1320227))

(assert (= (and b!1318530 ((_ is Star!3625) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) b!1320228))

(assert (= (and b!1318530 ((_ is Union!3625) (regOne!7762 (regex!2311 (rule!4054 t2!34))))) b!1320229))

(declare-fun b!1320230 () Bool)

(declare-fun e!846089 () Bool)

(assert (=> b!1320230 (= e!846089 tp_is_empty!6631)))

(declare-fun b!1320233 () Bool)

(declare-fun tp!383455 () Bool)

(declare-fun tp!383453 () Bool)

(assert (=> b!1320233 (= e!846089 (and tp!383455 tp!383453))))

(assert (=> b!1318530 (= tp!383245 e!846089)))

(declare-fun b!1320232 () Bool)

(declare-fun tp!383454 () Bool)

(assert (=> b!1320232 (= e!846089 tp!383454)))

(declare-fun b!1320231 () Bool)

(declare-fun tp!383452 () Bool)

(declare-fun tp!383451 () Bool)

(assert (=> b!1320231 (= e!846089 (and tp!383452 tp!383451))))

(assert (= (and b!1318530 ((_ is ElementMatch!3625) (regTwo!7762 (regex!2311 (rule!4054 t2!34))))) b!1320230))

(assert (= (and b!1318530 ((_ is Concat!6026) (regTwo!7762 (regex!2311 (rule!4054 t2!34))))) b!1320231))

(assert (= (and b!1318530 ((_ is Star!3625) (regTwo!7762 (regex!2311 (rule!4054 t2!34))))) b!1320232))

(assert (= (and b!1318530 ((_ is Union!3625) (regTwo!7762 (regex!2311 (rule!4054 t2!34))))) b!1320233))

(declare-fun b!1320234 () Bool)

(declare-fun e!846090 () Bool)

(declare-fun tp!383456 () Bool)

(assert (=> b!1320234 (= e!846090 (and tp_is_empty!6631 tp!383456))))

(assert (=> b!1318544 (= tp!383262 e!846090)))

(assert (= (and b!1318544 ((_ is Cons!13354) (t!118435 (originalCharacters!3173 t1!34)))) b!1320234))

(declare-fun b!1320235 () Bool)

(declare-fun e!846091 () Bool)

(assert (=> b!1320235 (= e!846091 tp_is_empty!6631)))

(declare-fun b!1320238 () Bool)

(declare-fun tp!383461 () Bool)

(declare-fun tp!383459 () Bool)

(assert (=> b!1320238 (= e!846091 (and tp!383461 tp!383459))))

(assert (=> b!1318542 (= tp!383259 e!846091)))

(declare-fun b!1320237 () Bool)

(declare-fun tp!383460 () Bool)

(assert (=> b!1320237 (= e!846091 tp!383460)))

(declare-fun b!1320236 () Bool)

(declare-fun tp!383458 () Bool)

(declare-fun tp!383457 () Bool)

(assert (=> b!1320236 (= e!846091 (and tp!383458 tp!383457))))

(assert (= (and b!1318542 ((_ is ElementMatch!3625) (regex!2311 (h!18757 (t!118437 rules!2550))))) b!1320235))

(assert (= (and b!1318542 ((_ is Concat!6026) (regex!2311 (h!18757 (t!118437 rules!2550))))) b!1320236))

(assert (= (and b!1318542 ((_ is Star!3625) (regex!2311 (h!18757 (t!118437 rules!2550))))) b!1320237))

(assert (= (and b!1318542 ((_ is Union!3625) (regex!2311 (h!18757 (t!118437 rules!2550))))) b!1320238))

(declare-fun b!1320241 () Bool)

(declare-fun b_free!31779 () Bool)

(declare-fun b_next!32483 () Bool)

(assert (=> b!1320241 (= b_free!31779 (not b_next!32483))))

(declare-fun tb!70101 () Bool)

(declare-fun t!118573 () Bool)

(assert (=> (and b!1320241 (= (toValue!3538 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118573) tb!70101))

(declare-fun result!85066 () Bool)

(assert (= result!85066 result!85016))

(assert (=> d!372294 t!118573))

(declare-fun tb!70103 () Bool)

(declare-fun t!118575 () Bool)

(assert (=> (and b!1320241 (= (toValue!3538 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) (toValue!3538 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118575) tb!70103))

(declare-fun result!85068 () Bool)

(assert (= result!85068 result!85042))

(assert (=> d!372620 t!118575))

(declare-fun b_and!88159 () Bool)

(declare-fun tp!383464 () Bool)

(assert (=> b!1320241 (= tp!383464 (and (=> t!118573 result!85066) (=> t!118575 result!85068) b_and!88159))))

(declare-fun b_free!31781 () Bool)

(declare-fun b_next!32485 () Bool)

(assert (=> b!1320241 (= b_free!31781 (not b_next!32485))))

(declare-fun tb!70105 () Bool)

(declare-fun t!118577 () Bool)

(assert (=> (and b!1320241 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) (toChars!3397 (transformation!2311 (rule!4054 t1!34)))) t!118577) tb!70105))

(declare-fun result!85070 () Bool)

(assert (= result!85070 result!84956))

(assert (=> d!371942 t!118577))

(declare-fun t!118579 () Bool)

(declare-fun tb!70107 () Bool)

(assert (=> (and b!1320241 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) (toChars!3397 (transformation!2311 (rule!4054 t2!34)))) t!118579) tb!70107))

(declare-fun result!85072 () Bool)

(assert (= result!85072 result!84948))

(assert (=> b!1318424 t!118579))

(declare-fun t!118581 () Bool)

(declare-fun tb!70109 () Bool)

(assert (=> (and b!1320241 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434901)))))) t!118581) tb!70109))

(declare-fun result!85074 () Bool)

(assert (= result!85074 result!85034))

(assert (=> d!372560 t!118581))

(declare-fun t!118583 () Bool)

(declare-fun tb!70111 () Bool)

(assert (=> (and b!1320241 (= (toChars!3397 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) (toChars!3397 (transformation!2311 (rule!4054 (_1!7377 (get!4260 lt!434973)))))) t!118583) tb!70111))

(declare-fun result!85076 () Bool)

(assert (= result!85076 result!85026))

(assert (=> d!372304 t!118583))

(assert (=> d!371874 t!118579))

(assert (=> b!1318422 t!118577))

(declare-fun b_and!88161 () Bool)

(declare-fun tp!383465 () Bool)

(assert (=> b!1320241 (= tp!383465 (and (=> t!118583 result!85076) (=> t!118581 result!85074) (=> t!118577 result!85070) (=> t!118579 result!85072) b_and!88161))))

(declare-fun e!846093 () Bool)

(assert (=> b!1320241 (= e!846093 (and tp!383464 tp!383465))))

(declare-fun b!1320240 () Bool)

(declare-fun tp!383463 () Bool)

(declare-fun e!846095 () Bool)

(assert (=> b!1320240 (= e!846095 (and tp!383463 (inv!17728 (tag!2573 (h!18757 (t!118437 (t!118437 rules!2550))))) (inv!17732 (transformation!2311 (h!18757 (t!118437 (t!118437 rules!2550))))) e!846093))))

(declare-fun b!1320239 () Bool)

(declare-fun e!846094 () Bool)

(declare-fun tp!383462 () Bool)

(assert (=> b!1320239 (= e!846094 (and e!846095 tp!383462))))

(assert (=> b!1318541 (= tp!383258 e!846094)))

(assert (= b!1320240 b!1320241))

(assert (= b!1320239 b!1320240))

(assert (= (and b!1318541 ((_ is Cons!13356) (t!118437 (t!118437 rules!2550)))) b!1320239))

(declare-fun m!1476153 () Bool)

(assert (=> b!1320240 m!1476153))

(declare-fun m!1476155 () Bool)

(assert (=> b!1320240 m!1476155))

(declare-fun b!1320242 () Bool)

(declare-fun tp!383467 () Bool)

(declare-fun tp!383466 () Bool)

(declare-fun e!846097 () Bool)

(assert (=> b!1320242 (= e!846097 (and (inv!17735 (left!11477 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))))) tp!383467 (inv!17735 (right!11807 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))))) tp!383466))))

(declare-fun b!1320244 () Bool)

(declare-fun e!846096 () Bool)

(declare-fun tp!383468 () Bool)

(assert (=> b!1320244 (= e!846096 tp!383468)))

(declare-fun b!1320243 () Bool)

(assert (=> b!1320243 (= e!846097 (and (inv!17742 (xs!7107 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))))) e!846096))))

(assert (=> b!1318291 (= tp!383180 (and (inv!17735 (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34)))) e!846097))))

(assert (= (and b!1318291 ((_ is Node!4392) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))))) b!1320242))

(assert (= b!1320243 b!1320244))

(assert (= (and b!1318291 ((_ is Leaf!6744) (c!216255 (dynLambda!5846 (toChars!3397 (transformation!2311 (rule!4054 t1!34))) (value!75496 t1!34))))) b!1320243))

(declare-fun m!1476157 () Bool)

(assert (=> b!1320242 m!1476157))

(declare-fun m!1476159 () Bool)

(assert (=> b!1320242 m!1476159))

(declare-fun m!1476161 () Bool)

(assert (=> b!1320243 m!1476161))

(assert (=> b!1318291 m!1473057))

(declare-fun b_lambda!38459 () Bool)

(assert (= b_lambda!38413 (or d!371944 b_lambda!38459)))

(declare-fun bs!330993 () Bool)

(declare-fun d!372996 () Bool)

(assert (= bs!330993 (and d!372996 d!371944)))

(assert (=> bs!330993 (= (dynLambda!5847 lambda!53744 (h!18757 rules!2550)) (regex!2311 (h!18757 rules!2550)))))

(assert (=> b!1319781 d!372996))

(declare-fun b_lambda!38461 () Bool)

(assert (= b_lambda!38457 (or b!1317762 b_lambda!38461)))

(declare-fun bs!330994 () Bool)

(declare-fun d!372998 () Bool)

(assert (= bs!330994 (and d!372998 b!1317762)))

(declare-fun res!593257 () Bool)

(declare-fun e!846098 () Bool)

(assert (=> bs!330994 (=> (not res!593257) (not e!846098))))

(assert (=> bs!330994 (= res!593257 (validRegex!1551 lt!435704))))

(assert (=> bs!330994 (= (dynLambda!5848 lambda!53721 lt!435704) e!846098)))

(declare-fun b!1320245 () Bool)

(assert (=> b!1320245 (= e!846098 (matchR!1627 lt!435704 lt!434735))))

(assert (= (and bs!330994 res!593257) b!1320245))

(declare-fun m!1476163 () Bool)

(assert (=> bs!330994 m!1476163))

(declare-fun m!1476165 () Bool)

(assert (=> b!1320245 m!1476165))

(assert (=> d!372882 d!372998))

(declare-fun b_lambda!38463 () Bool)

(assert (= b_lambda!38387 (or b!1317762 b_lambda!38463)))

(declare-fun bs!330995 () Bool)

(declare-fun d!373000 () Bool)

(assert (= bs!330995 (and d!373000 b!1317762)))

(assert (=> bs!330995 (= (dynLambda!5847 lambda!53720 (h!18757 (t!118437 rules!2550))) (regex!2311 (h!18757 (t!118437 rules!2550))))))

(assert (=> b!1319329 d!373000))

(declare-fun b_lambda!38465 () Bool)

(assert (= b_lambda!38411 (or d!371962 b_lambda!38465)))

(declare-fun bs!330996 () Bool)

(declare-fun d!373002 () Bool)

(assert (= bs!330996 (and d!373002 d!371962)))

(assert (=> bs!330996 (= (dynLambda!5848 lambda!53764 (h!18759 lt!434718)) (not (dynLambda!5848 lambda!53721 (h!18759 lt!434718))))))

(declare-fun b_lambda!38489 () Bool)

(assert (=> (not b_lambda!38489) (not bs!330996)))

(declare-fun m!1476167 () Bool)

(assert (=> bs!330996 m!1476167))

(assert (=> b!1319695 d!373002))

(declare-fun b_lambda!38467 () Bool)

(assert (= b_lambda!38455 (or b!1317762 b_lambda!38467)))

(declare-fun bs!330997 () Bool)

(declare-fun d!373004 () Bool)

(assert (= bs!330997 (and d!373004 b!1317762)))

(declare-fun res!593258 () Bool)

(declare-fun e!846099 () Bool)

(assert (=> bs!330997 (=> (not res!593258) (not e!846099))))

(assert (=> bs!330997 (= res!593258 (validRegex!1551 (h!18759 (t!118439 (map!2933 rules!2550 lambda!53720)))))))

(assert (=> bs!330997 (= (dynLambda!5848 lambda!53721 (h!18759 (t!118439 (map!2933 rules!2550 lambda!53720)))) e!846099)))

(declare-fun b!1320246 () Bool)

(assert (=> b!1320246 (= e!846099 (matchR!1627 (h!18759 (t!118439 (map!2933 rules!2550 lambda!53720))) lt!434735))))

(assert (= (and bs!330997 res!593258) b!1320246))

(declare-fun m!1476169 () Bool)

(assert (=> bs!330997 m!1476169))

(declare-fun m!1476171 () Bool)

(assert (=> b!1320246 m!1476171))

(assert (=> b!1319985 d!373004))

(declare-fun b_lambda!38469 () Bool)

(assert (= b_lambda!38385 (or b!1317751 b_lambda!38469)))

(declare-fun bs!330998 () Bool)

(declare-fun d!373006 () Bool)

(assert (= bs!330998 (and d!373006 b!1317751)))

(assert (=> bs!330998 (= (dynLambda!5838 lambda!53723 (h!18757 rules!2550)) (ruleValid!564 thiss!19762 (h!18757 rules!2550)))))

(assert (=> bs!330998 m!1475153))

(assert (=> b!1318963 d!373006))

(declare-fun b_lambda!38471 () Bool)

(assert (= b_lambda!38451 (or b!1317751 b_lambda!38471)))

(assert (=> d!372874 d!372054))

(declare-fun b_lambda!38473 () Bool)

(assert (= b_lambda!38453 (or b!1317751 b_lambda!38473)))

(assert (=> d!372880 d!372046))

(declare-fun b_lambda!38475 () Bool)

(assert (= b_lambda!38407 (or b!1317731 b_lambda!38475)))

(declare-fun bs!330999 () Bool)

(declare-fun d!373008 () Bool)

(assert (= bs!330999 (and d!373008 b!1317731)))

(assert (=> bs!330999 (= (dynLambda!5838 lambda!53722 (h!18757 (t!118437 rules!2550))) (= (regex!2311 (h!18757 (t!118437 rules!2550))) lt!434717))))

(assert (=> b!1319679 d!373008))

(declare-fun b_lambda!38477 () Bool)

(assert (= b_lambda!38383 (or b!1317751 b_lambda!38477)))

(assert (=> d!372322 d!372052))

(declare-fun b_lambda!38479 () Bool)

(assert (= b_lambda!38403 (or d!371856 b_lambda!38479)))

(declare-fun bs!331000 () Bool)

(declare-fun d!373010 () Bool)

(assert (= bs!331000 (and d!373010 d!371856)))

(assert (=> bs!331000 (= (dynLambda!5838 lambda!53735 (h!18757 rules!2550)) (not (dynLambda!5838 lambda!53722 (h!18757 rules!2550))))))

(declare-fun b_lambda!38491 () Bool)

(assert (=> (not b_lambda!38491) (not bs!331000)))

(assert (=> bs!331000 m!1472519))

(assert (=> b!1319653 d!373010))

(declare-fun b_lambda!38481 () Bool)

(assert (= b_lambda!38369 (or d!371954 b_lambda!38481)))

(declare-fun bs!331001 () Bool)

(declare-fun d!373012 () Bool)

(assert (= bs!331001 (and d!373012 d!371954)))

(assert (=> bs!331001 (= (dynLambda!5848 lambda!53763 (h!18759 (map!2933 rules!2550 lambda!53720))) (not (dynLambda!5848 lambda!53721 (h!18759 (map!2933 rules!2550 lambda!53720)))))))

(declare-fun b_lambda!38493 () Bool)

(assert (=> (not b_lambda!38493) (not bs!331001)))

(assert (=> bs!331001 m!1472869))

(assert (=> b!1318797 d!373012))

(declare-fun b_lambda!38483 () Bool)

(assert (= b_lambda!38405 (or d!371950 b_lambda!38483)))

(declare-fun bs!331002 () Bool)

(declare-fun d!373014 () Bool)

(assert (= bs!331002 (and d!373014 d!371950)))

(assert (=> bs!331002 (= (dynLambda!5848 lambda!53757 (h!18759 lt!434718)) (validRegex!1551 (h!18759 lt!434718)))))

(declare-fun m!1476173 () Bool)

(assert (=> bs!331002 m!1476173))

(assert (=> b!1319671 d!373014))

(declare-fun b_lambda!38485 () Bool)

(assert (= b_lambda!38409 (or b!1317731 b_lambda!38485)))

(declare-fun bs!331003 () Bool)

(declare-fun d!373016 () Bool)

(assert (= bs!331003 (and d!373016 b!1317731)))

(assert (=> bs!331003 (= (dynLambda!5838 lambda!53722 lt!435541) (= (regex!2311 lt!435541) lt!434717))))

(assert (=> d!372724 d!373016))

(declare-fun b_lambda!38487 () Bool)

(assert (= b_lambda!38381 (or b!1317759 b_lambda!38487)))

(declare-fun bs!331004 () Bool)

(declare-fun d!373018 () Bool)

(assert (= bs!331004 (and d!373018 b!1317759)))

(declare-fun res!593259 () Bool)

(declare-fun e!846100 () Bool)

(assert (=> bs!331004 (=> (not res!593259) (not e!846100))))

(assert (=> bs!331004 (= res!593259 (matchR!1627 lt!434731 res!592749))))

(assert (=> bs!331004 (= (dynLambda!5852 lambda!53719 res!592749) e!846100)))

(declare-fun b!1320247 () Bool)

(assert (=> b!1320247 (= e!846100 (isPrefix!1076 lt!434728 res!592749))))

(assert (= (and bs!331004 res!593259) b!1320247))

(declare-fun m!1476175 () Bool)

(assert (=> bs!331004 m!1476175))

(declare-fun m!1476177 () Bool)

(assert (=> b!1320247 m!1476177))

(assert (=> d!372306 d!373018))

(check-sat (not b!1319614) (not b_lambda!38479) b_and!88141 (not b!1320054) (not b!1320069) (not b!1319982) (not b_lambda!38339) (not d!372902) (not d!372738) (not b!1319308) (not bm!89638) (not b!1319028) (not d!372914) (not b!1320186) (not b!1320033) (not bm!89590) (not bm!89564) (not b!1319999) (not bm!89557) (not b!1319956) (not b!1320178) (not d!372940) (not d!372730) (not b!1319856) (not d!372846) (not b!1320118) (not d!372834) (not d!372556) (not b!1319899) (not b!1319112) (not bm!89608) (not d!372808) b_and!88161 (not b_lambda!38471) (not b!1320228) (not b!1320229) (not b!1319477) (not b!1319896) (not b!1319681) (not b!1319021) (not b!1318931) (not b!1318901) (not d!372276) (not b!1319228) (not b!1319942) (not b!1319371) (not d!372284) (not b!1319897) (not bm!89626) (not d!372968) (not d!372892) (not d!372372) (not b!1318291) (not d!372826) (not b!1319560) (not b!1320174) (not b!1320208) b_and!88139 (not b!1318798) (not b!1319701) (not b_lambda!38345) (not d!372936) (not b!1320200) (not d!372616) (not b!1319286) (not d!372988) (not b!1319224) (not b!1320176) b_and!88143 (not b!1319027) (not b!1319226) (not b!1320022) (not d!372668) (not b!1318804) (not b!1320026) (not b!1320030) (not b!1320147) (not b_lambda!38343) (not b!1318949) (not b!1319924) (not b!1319700) (not b!1319947) (not b!1319664) (not b!1320014) (not d!372700) (not b!1320246) (not b!1319370) (not b!1319998) (not b!1319125) (not d!372546) (not b!1320110) (not b!1319227) (not b!1319994) (not b!1319758) (not b_lambda!38487) (not b!1319234) (not d!372724) (not b!1320018) (not b_lambda!38389) (not b!1319599) (not b!1319557) (not bm!89560) (not b!1319646) (not d!372916) (not b!1319172) (not b!1319981) (not b!1318805) (not b!1320111) (not d!372208) (not b!1318942) (not b!1320146) (not b!1320008) (not d!372820) (not b!1319169) (not b!1318783) (not b!1319986) (not d!372898) (not d!372618) (not b!1319930) (not bs!330994) (not b!1319959) (not d!372362) (not b!1319946) (not b!1318992) (not b!1319791) (not b!1320081) (not b!1320150) (not d!372776) (not b_next!32463) (not d!372742) (not b!1319676) (not b!1320028) (not b!1319326) (not d!372922) (not bm!89641) (not d!372708) (not b_next!32477) (not d!372370) (not b!1320083) b_and!88145 (not b!1320116) (not b!1320203) (not d!372990) (not d!372814) (not d!372718) (not d!372720) (not b!1320143) (not bs!331002) (not b!1319024) (not b!1320172) (not b!1319174) (not b!1319927) (not b!1318919) (not b!1319699) (not bm!89651) (not b!1318129) (not b_lambda!38321) (not b!1319007) (not b!1319279) (not b!1320220) (not b!1320183) (not b!1318808) (not b!1320199) (not tb!70065) (not b!1319668) (not b!1319854) (not b!1319017) (not b!1320195) (not d!372682) (not b!1320140) (not bm!89546) (not b_next!32485) (not b!1320152) (not b!1319323) (not b!1320104) (not b!1320004) (not b!1319673) (not b!1320058) (not b!1319678) (not b!1320211) (not b_lambda!38463) (not b!1320070) (not d!372614) (not bs!330998) (not b!1319928) (not b_next!32465) (not bm!89633) (not b!1319698) (not b!1320202) (not b!1320007) (not b!1319960) (not d!372626) (not b!1320190) (not b!1319764) (not b!1319951) (not b!1319332) (not bm!89559) (not d!372774) (not b!1320094) (not b!1320175) (not b_lambda!38323) (not d!372778) (not b!1319872) (not b!1319929) (not b!1319979) (not bm!89628) (not b!1319644) (not b!1320236) (not b!1320112) (not d!372818) (not b_lambda!38467) (not b!1319280) (not b!1320224) (not b!1319918) (not bm!89652) (not d!372992) (not b!1319711) (not b!1319654) (not b!1320095) (not d!372454) (not d!372806) (not b!1318802) (not b!1319900) (not d!372360) (not b!1318990) (not b!1320182) (not bm!89591) (not b_lambda!38329) (not b!1320073) (not d!372960) (not b!1320161) (not d!372308) (not b!1319685) (not b!1320196) (not b!1319650) (not b!1319781) (not b!1320144) (not b!1319895) (not b!1320060) (not b!1318899) (not b!1318921) (not b!1319683) (not b!1320142) (not bm!89642) (not b!1318897) (not b!1320040) (not b!1319677) (not b!1318943) (not b!1320225) (not b!1320149) (not d!372320) (not b!1319331) (not b!1319756) (not b!1318926) (not b!1318801) (not d!372386) (not b!1319869) (not d!372870) (not b!1320075) (not d!372972) (not d!372694) (not d!372522) (not b!1318918) (not b_next!32483) (not tb!70081) (not b!1320011) (not b!1319913) (not b!1319625) (not d!372230) (not b!1320218) (not b!1319792) (not b!1320242) (not b!1319995) (not b!1319652) (not b!1320179) (not b!1319262) (not b!1320192) (not b!1320101) (not b!1320072) (not b!1319282) (not bm!89609) (not b!1320191) (not b!1320053) (not d!372868) (not b_lambda!38335) (not b_lambda!38485) (not d!372912) (not d!372860) (not b!1320216) (not b!1319892) (not b!1320231) (not b!1320017) (not b!1319019) (not d!372894) (not b_next!32461) (not bm!89643) (not d!372428) (not d!372766) (not b_lambda!38397) (not d!372558) (not b_lambda!38491) (not b!1319944) (not d!372950) (not b!1319104) (not b!1320010) (not b!1318996) (not b!1320234) (not d!372932) (not b!1318994) (not b!1319926) (not d!372684) (not b!1319978) (not b!1320243) (not b!1320097) (not b!1319693) (not b!1320103) (not d!372228) (not d!372476) (not b_lambda!38469) (not b!1318964) (not d!372286) (not b!1320215) (not b!1320099) (not d!372658) (not b!1319127) (not b!1320056) (not d!372964) (not b!1320138) (not b!1320023) (not b!1320232) tp_is_empty!6631 (not b!1320180) (not bm!89637) (not b!1319760) (not tb!70073) (not b_next!32467) (not b_lambda!38379) (not d!372900) (not d!372298) (not b_next!32469) (not d!372518) (not b!1320204) (not b!1319702) (not b!1320068) (not d!372812) (not bs!330997) (not b!1318914) (not d!372560) (not b!1319284) (not b!1318967) (not b!1320170) (not b!1319943) (not d!372924) (not b_lambda!38475) (not b!1320233) (not d!372628) (not b_lambda!38337) (not b!1320032) (not d!372824) (not b_lambda!38333) (not b!1319126) (not b!1320238) (not b!1319857) (not b!1319648) (not b!1320122) (not d!372942) (not b!1319088) (not d!372566) (not d!372314) (not b!1319705) (not b!1320212) (not bm!89639) (not b!1320119) (not b!1319338) (not b_lambda!38341) (not bm!89649) (not d!372886) (not b!1320105) (not tb!70057) (not b!1320074) (not b!1320244) (not b!1319600) (not b!1320210) (not b!1319862) (not b!1320222) (not b!1319372) (not d!372302) (not b_lambda!38465) (not b_lambda!38489) (not d!372994) (not d!372524) (not d!372966) (not d!372374) (not d!372944) (not d!372432) (not bm!89630) (not b!1319807) (not b!1319474) (not d!372888) (not b!1319031) (not b!1320115) (not b!1320080) (not d!372562) (not b!1319288) (not b!1320107) (not b!1319866) (not b!1320198) (not d!372822) (not b!1320145) (not b!1319225) (not d!372318) (not b_next!32459) (not b_lambda!38483) (not d!372986) (not b_lambda!38331) (not b!1319029) b_and!88149 (not b!1319656) (not bm!89640) (not d!372896) (not b!1319762) (not b!1320109) (not d!372672) (not b_lambda!38377) (not b!1319873) (not b!1318917) (not bm!89575) (not b!1319977) (not d!372858) (not b!1319223) (not d!372296) (not b!1320247) (not b!1320141) (not d!372710) (not d!372830) (not b!1320219) (not d!372688) (not b!1319025) (not d!372816) (not b!1320187) (not b!1319475) (not b!1319624) (not b!1319675) (not b!1318968) (not b!1319996) (not d!372976) (not b!1319759) (not b!1320207) (not b!1319596) b_and!88159 (not d!372328) (not b!1320077) (not b!1320108) (not bm!89625) (not b!1318915) (not b!1318988) (not d!372962) (not b_lambda!38481) (not b!1320194) (not b!1318781) (not b!1320000) (not b!1319934) (not d!372728) (not b!1319643) (not b!1320245) (not b!1319672) (not b!1319173) (not d!372440) (not d!372980) (not b!1318832) (not d!372696) (not d!372864) (not b!1319997) (not d!372844) (not b!1320240) (not bs!331004) (not b!1318979) (not b!1320049) (not d!372882) (not b!1319696) (not d!372740) (not b!1320048) (not d!372712) (not b!1320087) (not d!372364) (not b!1320071) b_and!88153 (not b_lambda!38327) (not b!1319893) (not b!1320066) (not b!1319312) (not b!1319558) (not b!1319853) (not b!1320130) (not b_lambda!38473) (not d!372848) (not d!372938) (not d!372652) (not b!1320237) (not b_lambda!38461) (not b!1320002) (not b!1319013) (not bm!89648) (not d!372304) (not b!1318929) (not d!372664) (not d!372764) (not b!1320057) (not b!1320085) (not d!372832) (not bm!89646) (not b!1320012) (not b_next!32475) (not d!372698) (not b!1320214) b_and!88147 (not b!1319898) (not b!1319697) (not bm!89629) (not b!1320120) (not b!1318806) (not b!1319020) (not bm!89584) (not b!1319993) (not d!372502) (not d!372910) (not b!1320223) (not b!1319987) (not d!372500) b_and!88151 (not b!1320160) (not b!1319958) (not b!1320227) (not b!1320084) (not bm!89635) (not b!1319703) (not d!372554) (not b!1320239) (not d!372622) (not b!1319962) (not b!1320171) (not d!372780) (not d!372876) (not b!1319561) (not b!1320019) (not b_lambda!38325) (not b!1319327) (not b!1320206) (not d!372746) (not b!1319864) (not b!1319923) (not b_lambda!38493) (not b_lambda!38477) (not b!1320013) (not b!1320184) (not d!372904) (not b!1319110) (not b!1319763) (not b!1319369) (not d!372212) (not b!1320046) (not d!372866) (not d!372984) (not b!1320188) (not b!1319955) (not b!1319868) (not b_lambda!38459) (not b!1319626) (not b!1319289) (not bm!89577) (not bm!89644) (not b!1319329) (not b!1319952) (not d!372706))
(check-sat b_and!88141 b_and!88161 b_and!88139 b_and!88143 (not b_next!32485) (not b_next!32465) (not b_next!32483) (not b_next!32461) b_and!88159 b_and!88153 b_and!88151 (not b_next!32477) (not b_next!32463) b_and!88145 (not b_next!32467) (not b_next!32469) (not b_next!32459) b_and!88149 (not b_next!32475) b_and!88147)
