; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222648 () Bool)

(assert start!222648)

(declare-fun b!2275028 () Bool)

(declare-fun b_free!67757 () Bool)

(declare-fun b_next!68461 () Bool)

(assert (=> b!2275028 (= b_free!67757 (not b_next!68461))))

(declare-fun tp!720688 () Bool)

(declare-fun b_and!179393 () Bool)

(assert (=> b!2275028 (= tp!720688 b_and!179393)))

(declare-fun b_free!67759 () Bool)

(declare-fun b_next!68463 () Bool)

(assert (=> b!2275028 (= b_free!67759 (not b_next!68463))))

(declare-fun tp!720674 () Bool)

(declare-fun b_and!179395 () Bool)

(assert (=> b!2275028 (= tp!720674 b_and!179395)))

(declare-fun b!2275036 () Bool)

(declare-fun b_free!67761 () Bool)

(declare-fun b_next!68465 () Bool)

(assert (=> b!2275036 (= b_free!67761 (not b_next!68465))))

(declare-fun tp!720690 () Bool)

(declare-fun b_and!179397 () Bool)

(assert (=> b!2275036 (= tp!720690 b_and!179397)))

(declare-fun b_free!67763 () Bool)

(declare-fun b_next!68467 () Bool)

(assert (=> b!2275036 (= b_free!67763 (not b_next!68467))))

(declare-fun tp!720679 () Bool)

(declare-fun b_and!179399 () Bool)

(assert (=> b!2275036 (= tp!720679 b_and!179399)))

(declare-fun b!2275024 () Bool)

(declare-fun b_free!67765 () Bool)

(declare-fun b_next!68469 () Bool)

(assert (=> b!2275024 (= b_free!67765 (not b_next!68469))))

(declare-fun tp!720685 () Bool)

(declare-fun b_and!179401 () Bool)

(assert (=> b!2275024 (= tp!720685 b_and!179401)))

(declare-fun b_free!67767 () Bool)

(declare-fun b_next!68471 () Bool)

(assert (=> b!2275024 (= b_free!67767 (not b_next!68471))))

(declare-fun tp!720686 () Bool)

(declare-fun b_and!179403 () Bool)

(assert (=> b!2275024 (= tp!720686 b_and!179403)))

(declare-fun b!2275008 () Bool)

(declare-fun b_free!67769 () Bool)

(declare-fun b_next!68473 () Bool)

(assert (=> b!2275008 (= b_free!67769 (not b_next!68473))))

(declare-fun tp!720689 () Bool)

(declare-fun b_and!179405 () Bool)

(assert (=> b!2275008 (= tp!720689 b_and!179405)))

(declare-fun b_free!67771 () Bool)

(declare-fun b_next!68475 () Bool)

(assert (=> b!2275008 (= b_free!67771 (not b_next!68475))))

(declare-fun tp!720678 () Bool)

(declare-fun b_and!179407 () Bool)

(assert (=> b!2275008 (= tp!720678 b_and!179407)))

(declare-fun b!2275007 () Bool)

(declare-fun res!972341 () Bool)

(declare-fun e!1457192 () Bool)

(assert (=> b!2275007 (=> (not res!972341) (not e!1457192))))

(declare-datatypes ((List!27143 0))(
  ( (Nil!27049) (Cons!27049 (h!32450 (_ BitVec 16)) (t!202971 List!27143)) )
))
(declare-datatypes ((TokenValue!4477 0))(
  ( (FloatLiteralValue!8954 (text!31784 List!27143)) (TokenValueExt!4476 (__x!18014 Int)) (Broken!22385 (value!136771 List!27143)) (Object!4570) (End!4477) (Def!4477) (Underscore!4477) (Match!4477) (Else!4477) (Error!4477) (Case!4477) (If!4477) (Extends!4477) (Abstract!4477) (Class!4477) (Val!4477) (DelimiterValue!8954 (del!4537 List!27143)) (KeywordValue!4483 (value!136772 List!27143)) (CommentValue!8954 (value!136773 List!27143)) (WhitespaceValue!8954 (value!136774 List!27143)) (IndentationValue!4477 (value!136775 List!27143)) (String!29488) (Int32!4477) (Broken!22386 (value!136776 List!27143)) (Boolean!4478) (Unit!39991) (OperatorValue!4480 (op!4537 List!27143)) (IdentifierValue!8954 (value!136777 List!27143)) (IdentifierValue!8955 (value!136778 List!27143)) (WhitespaceValue!8955 (value!136779 List!27143)) (True!8954) (False!8954) (Broken!22387 (value!136780 List!27143)) (Broken!22388 (value!136781 List!27143)) (True!8955) (RightBrace!4477) (RightBracket!4477) (Colon!4477) (Null!4477) (Comma!4477) (LeftBracket!4477) (False!8955) (LeftBrace!4477) (ImaginaryLiteralValue!4477 (text!31785 List!27143)) (StringLiteralValue!13431 (value!136782 List!27143)) (EOFValue!4477 (value!136783 List!27143)) (IdentValue!4477 (value!136784 List!27143)) (DelimiterValue!8955 (value!136785 List!27143)) (DedentValue!4477 (value!136786 List!27143)) (NewLineValue!4477 (value!136787 List!27143)) (IntegerValue!13431 (value!136788 (_ BitVec 32)) (text!31786 List!27143)) (IntegerValue!13432 (value!136789 Int) (text!31787 List!27143)) (Times!4477) (Or!4477) (Equal!4477) (Minus!4477) (Broken!22389 (value!136790 List!27143)) (And!4477) (Div!4477) (LessEqual!4477) (Mod!4477) (Concat!11140) (Not!4477) (Plus!4477) (SpaceValue!4477 (value!136791 List!27143)) (IntegerValue!13433 (value!136792 Int) (text!31788 List!27143)) (StringLiteralValue!13432 (text!31789 List!27143)) (FloatLiteralValue!8955 (text!31790 List!27143)) (BytesLiteralValue!4477 (value!136793 List!27143)) (CommentValue!8955 (value!136794 List!27143)) (StringLiteralValue!13433 (value!136795 List!27143)) (ErrorTokenValue!4477 (msg!4538 List!27143)) )
))
(declare-datatypes ((C!13472 0))(
  ( (C!13473 (val!7784 Int)) )
))
(declare-datatypes ((List!27144 0))(
  ( (Nil!27050) (Cons!27050 (h!32451 C!13472) (t!202972 List!27144)) )
))
(declare-datatypes ((IArray!17561 0))(
  ( (IArray!17562 (innerList!8838 List!27144)) )
))
(declare-datatypes ((Conc!8778 0))(
  ( (Node!8778 (left!20524 Conc!8778) (right!20854 Conc!8778) (csize!17786 Int) (cheight!8989 Int)) (Leaf!12921 (xs!11720 IArray!17561) (csize!17787 Int)) (Empty!8778) )
))
(declare-datatypes ((BalanceConc!17284 0))(
  ( (BalanceConc!17285 (c!361134 Conc!8778)) )
))
(declare-datatypes ((Regex!6663 0))(
  ( (ElementMatch!6663 (c!361135 C!13472)) (Concat!11141 (regOne!13838 Regex!6663) (regTwo!13838 Regex!6663)) (EmptyExpr!6663) (Star!6663 (reg!6992 Regex!6663)) (EmptyLang!6663) (Union!6663 (regOne!13839 Regex!6663) (regTwo!13839 Regex!6663)) )
))
(declare-datatypes ((String!29489 0))(
  ( (String!29490 (value!136796 String)) )
))
(declare-datatypes ((TokenValueInjection!8494 0))(
  ( (TokenValueInjection!8495 (toValue!6089 Int) (toChars!5948 Int)) )
))
(declare-datatypes ((Rule!8430 0))(
  ( (Rule!8431 (regex!4315 Regex!6663) (tag!4805 String!29489) (isSeparator!4315 Bool) (transformation!4315 TokenValueInjection!8494)) )
))
(declare-datatypes ((List!27145 0))(
  ( (Nil!27051) (Cons!27051 (h!32452 Rule!8430) (t!202973 List!27145)) )
))
(declare-fun rules!1750 () List!27145)

(declare-fun isEmpty!15338 (List!27145) Bool)

(assert (=> b!2275007 (= res!972341 (not (isEmpty!15338 rules!1750)))))

(declare-fun e!1457176 () Bool)

(assert (=> b!2275008 (= e!1457176 (and tp!720689 tp!720678))))

(declare-fun tp!720675 () Bool)

(declare-datatypes ((Token!8108 0))(
  ( (Token!8109 (value!136797 TokenValue!4477) (rule!6637 Rule!8430) (size!21251 Int) (originalCharacters!5085 List!27144)) )
))
(declare-datatypes ((List!27146 0))(
  ( (Nil!27052) (Cons!27052 (h!32453 Token!8108) (t!202974 List!27146)) )
))
(declare-fun tokens!456 () List!27146)

(declare-fun e!1457179 () Bool)

(declare-fun b!2275009 () Bool)

(declare-fun e!1457187 () Bool)

(declare-fun inv!36623 (Token!8108) Bool)

(assert (=> b!2275009 (= e!1457179 (and (inv!36623 (h!32453 tokens!456)) e!1457187 tp!720675))))

(declare-fun b!2275010 () Bool)

(declare-fun e!1457180 () Bool)

(declare-fun tp_is_empty!10547 () Bool)

(declare-fun tp!720684 () Bool)

(assert (=> b!2275010 (= e!1457180 (and tp_is_empty!10547 tp!720684))))

(declare-fun b!2275011 () Bool)

(declare-fun e!1457185 () Bool)

(declare-fun r!2363 () Rule!8430)

(declare-fun head!4916 (List!27146) Token!8108)

(assert (=> b!2275011 (= e!1457185 (= (rule!6637 (head!4916 tokens!456)) r!2363))))

(declare-fun b!2275012 () Bool)

(declare-fun e!1457189 () Bool)

(declare-fun e!1457191 () Bool)

(assert (=> b!2275012 (= e!1457189 (not e!1457191))))

(declare-fun res!972342 () Bool)

(assert (=> b!2275012 (=> res!972342 e!1457191)))

(declare-fun e!1457175 () Bool)

(assert (=> b!2275012 (= res!972342 e!1457175)))

(declare-fun res!972349 () Bool)

(assert (=> b!2275012 (=> (not res!972349) (not e!1457175))))

(declare-fun lt!844797 () Bool)

(assert (=> b!2275012 (= res!972349 (not lt!844797))))

(declare-datatypes ((LexerInterface!3912 0))(
  ( (LexerInterfaceExt!3909 (__x!18015 Int)) (Lexer!3910) )
))
(declare-fun thiss!16613 () LexerInterface!3912)

(declare-fun ruleValid!1405 (LexerInterface!3912 Rule!8430) Bool)

(assert (=> b!2275012 (ruleValid!1405 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39992 0))(
  ( (Unit!39993) )
))
(declare-fun lt!844795 () Unit!39992)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!810 (LexerInterface!3912 Rule!8430 List!27145) Unit!39992)

(assert (=> b!2275012 (= lt!844795 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!810 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2275014 () Bool)

(declare-fun e!1457190 () Bool)

(declare-fun e!1457184 () Bool)

(assert (=> b!2275014 (= e!1457190 e!1457184)))

(declare-fun res!972350 () Bool)

(assert (=> b!2275014 (=> res!972350 e!1457184)))

(declare-fun lt!844798 () Int)

(declare-fun lt!844796 () Int)

(assert (=> b!2275014 (= res!972350 (< lt!844798 lt!844796))))

(declare-fun otherR!12 () Rule!8430)

(declare-fun otherP!12 () List!27144)

(declare-fun matchR!2920 (Regex!6663 List!27144) Bool)

(assert (=> b!2275014 (not (matchR!2920 (regex!4315 otherR!12) otherP!12))))

(declare-fun input!1722 () List!27144)

(declare-fun lt!844802 () Unit!39992)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!403 (LexerInterface!3912 Rule!8430 List!27144 List!27144) Unit!39992)

(assert (=> b!2275014 (= lt!844802 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!403 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun e!1457193 () Bool)

(declare-fun b!2275015 () Bool)

(declare-fun tp!720687 () Bool)

(declare-fun e!1457173 () Bool)

(declare-fun inv!36620 (String!29489) Bool)

(declare-fun inv!36624 (TokenValueInjection!8494) Bool)

(assert (=> b!2275015 (= e!1457173 (and tp!720687 (inv!36620 (tag!4805 otherR!12)) (inv!36624 (transformation!4315 otherR!12)) e!1457193))))

(declare-fun b!2275016 () Bool)

(declare-fun res!972343 () Bool)

(assert (=> b!2275016 (=> (not res!972343) (not e!1457192))))

(declare-fun contains!4683 (List!27145 Rule!8430) Bool)

(assert (=> b!2275016 (= res!972343 (contains!4683 rules!1750 r!2363))))

(declare-fun b!2275017 () Bool)

(declare-fun res!972346 () Bool)

(assert (=> b!2275017 (=> (not res!972346) (not e!1457189))))

(assert (=> b!2275017 (= res!972346 (not (= r!2363 otherR!12)))))

(declare-fun b!2275018 () Bool)

(declare-fun e!1457177 () Bool)

(declare-fun size!21252 (BalanceConc!17284) Int)

(declare-fun charsOf!2703 (Token!8108) BalanceConc!17284)

(declare-fun size!21253 (List!27144) Int)

(assert (=> b!2275018 (= e!1457177 (<= (size!21252 (charsOf!2703 (head!4916 tokens!456))) (size!21253 otherP!12)))))

(declare-fun e!1457169 () Bool)

(declare-fun tp!720677 () Bool)

(declare-fun b!2275019 () Bool)

(assert (=> b!2275019 (= e!1457169 (and tp!720677 (inv!36620 (tag!4805 (h!32452 rules!1750))) (inv!36624 (transformation!4315 (h!32452 rules!1750))) e!1457176))))

(declare-fun b!2275020 () Bool)

(assert (=> b!2275020 (= e!1457184 true)))

(declare-fun lt!844793 () Bool)

(declare-fun e!1457181 () Bool)

(assert (=> b!2275020 (= lt!844793 e!1457181)))

(declare-fun res!972354 () Bool)

(assert (=> b!2275020 (=> res!972354 e!1457181)))

(declare-fun size!21254 (List!27146) Int)

(assert (=> b!2275020 (= res!972354 (<= (size!21254 tokens!456) 0))))

(declare-fun b!2275021 () Bool)

(declare-fun e!1457165 () Bool)

(declare-fun tp!720681 () Bool)

(assert (=> b!2275021 (= e!1457165 (and e!1457169 tp!720681))))

(declare-fun b!2275022 () Bool)

(declare-fun e!1457167 () Bool)

(assert (=> b!2275022 (= e!1457191 e!1457167)))

(declare-fun res!972347 () Bool)

(assert (=> b!2275022 (=> res!972347 e!1457167)))

(get-info :version)

(assert (=> b!2275022 (= res!972347 (or (<= lt!844796 lt!844798) (not ((_ is Nil!27052) tokens!456))))))

(declare-fun getIndex!328 (List!27145 Rule!8430) Int)

(assert (=> b!2275022 (= lt!844798 (getIndex!328 rules!1750 otherR!12))))

(assert (=> b!2275022 (= lt!844796 (getIndex!328 rules!1750 r!2363))))

(assert (=> b!2275022 (ruleValid!1405 thiss!16613 otherR!12)))

(declare-fun lt!844794 () Unit!39992)

(assert (=> b!2275022 (= lt!844794 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!810 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2275023 () Bool)

(assert (=> b!2275023 (= e!1457181 (> (size!21253 otherP!12) (size!21252 (charsOf!2703 (head!4916 tokens!456)))))))

(declare-fun e!1457166 () Bool)

(assert (=> b!2275024 (= e!1457166 (and tp!720685 tp!720686))))

(declare-fun b!2275025 () Bool)

(declare-fun list!10512 (BalanceConc!17284) List!27144)

(assert (=> b!2275025 (= e!1457175 (not (matchR!2920 (regex!4315 r!2363) (list!10512 (charsOf!2703 (head!4916 tokens!456))))))))

(declare-fun b!2275026 () Bool)

(declare-fun res!972348 () Bool)

(assert (=> b!2275026 (=> (not res!972348) (not e!1457192))))

(assert (=> b!2275026 (= res!972348 (contains!4683 rules!1750 otherR!12))))

(declare-fun tp!720683 () Bool)

(declare-fun b!2275027 () Bool)

(declare-fun e!1457188 () Bool)

(assert (=> b!2275027 (= e!1457188 (and tp!720683 (inv!36620 (tag!4805 r!2363)) (inv!36624 (transformation!4315 r!2363)) e!1457166))))

(declare-fun e!1457182 () Bool)

(assert (=> b!2275028 (= e!1457182 (and tp!720688 tp!720674))))

(declare-fun b!2275029 () Bool)

(declare-fun res!972353 () Bool)

(assert (=> b!2275029 (=> (not res!972353) (not e!1457189))))

(declare-fun isPrefix!2305 (List!27144 List!27144) Bool)

(assert (=> b!2275029 (= res!972353 (isPrefix!2305 otherP!12 input!1722))))

(declare-fun b!2275030 () Bool)

(declare-fun e!1457172 () Bool)

(declare-fun tp!720691 () Bool)

(assert (=> b!2275030 (= e!1457172 (and tp_is_empty!10547 tp!720691))))

(declare-fun e!1457186 () Bool)

(declare-fun tp!720676 () Bool)

(declare-fun b!2275031 () Bool)

(declare-fun inv!21 (TokenValue!4477) Bool)

(assert (=> b!2275031 (= e!1457187 (and (inv!21 (value!136797 (h!32453 tokens!456))) e!1457186 tp!720676))))

(declare-fun b!2275032 () Bool)

(declare-fun e!1457168 () Bool)

(declare-fun tp!720682 () Bool)

(assert (=> b!2275032 (= e!1457168 (and tp_is_empty!10547 tp!720682))))

(declare-fun res!972338 () Bool)

(assert (=> start!222648 (=> (not res!972338) (not e!1457192))))

(assert (=> start!222648 (= res!972338 ((_ is Lexer!3910) thiss!16613))))

(assert (=> start!222648 e!1457192))

(assert (=> start!222648 true))

(assert (=> start!222648 e!1457168))

(assert (=> start!222648 e!1457173))

(assert (=> start!222648 e!1457172))

(assert (=> start!222648 e!1457180))

(assert (=> start!222648 e!1457165))

(assert (=> start!222648 e!1457188))

(assert (=> start!222648 e!1457179))

(declare-fun b!2275013 () Bool)

(declare-fun e!1457170 () Bool)

(assert (=> b!2275013 (= e!1457170 e!1457189)))

(declare-fun res!972340 () Bool)

(assert (=> b!2275013 (=> (not res!972340) (not e!1457189))))

(assert (=> b!2275013 (= res!972340 e!1457177)))

(declare-fun res!972352 () Bool)

(assert (=> b!2275013 (=> res!972352 e!1457177)))

(assert (=> b!2275013 (= res!972352 lt!844797)))

(declare-fun isEmpty!15339 (List!27146) Bool)

(assert (=> b!2275013 (= lt!844797 (isEmpty!15339 tokens!456))))

(declare-fun b!2275033 () Bool)

(assert (=> b!2275033 (= e!1457167 e!1457190)))

(declare-fun res!972351 () Bool)

(assert (=> b!2275033 (=> res!972351 e!1457190)))

(declare-datatypes ((tuple2!26746 0))(
  ( (tuple2!26747 (_1!15883 Token!8108) (_2!15883 List!27144)) )
))
(declare-datatypes ((Option!5297 0))(
  ( (None!5296) (Some!5296 (v!30350 tuple2!26746)) )
))
(declare-fun lt!844801 () Option!5297)

(assert (=> b!2275033 (= res!972351 (not (= lt!844801 None!5296)))))

(declare-fun isEmpty!15340 (Option!5297) Bool)

(assert (=> b!2275033 (isEmpty!15340 lt!844801)))

(declare-fun maxPrefixOneRule!1362 (LexerInterface!3912 Rule!8430 List!27144) Option!5297)

(assert (=> b!2275033 (= lt!844801 (maxPrefixOneRule!1362 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!844800 () Unit!39992)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!413 (LexerInterface!3912 Rule!8430 List!27145 List!27144) Unit!39992)

(assert (=> b!2275033 (= lt!844800 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!413 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2275034 () Bool)

(declare-fun res!972345 () Bool)

(assert (=> b!2275034 (=> (not res!972345) (not e!1457189))))

(assert (=> b!2275034 (= res!972345 e!1457185)))

(declare-fun res!972344 () Bool)

(assert (=> b!2275034 (=> res!972344 e!1457185)))

(assert (=> b!2275034 (= res!972344 lt!844797)))

(declare-fun b!2275035 () Bool)

(declare-fun tp!720680 () Bool)

(assert (=> b!2275035 (= e!1457186 (and tp!720680 (inv!36620 (tag!4805 (rule!6637 (h!32453 tokens!456)))) (inv!36624 (transformation!4315 (rule!6637 (h!32453 tokens!456)))) e!1457182))))

(assert (=> b!2275036 (= e!1457193 (and tp!720690 tp!720679))))

(declare-fun b!2275037 () Bool)

(declare-fun res!972337 () Bool)

(assert (=> b!2275037 (=> (not res!972337) (not e!1457192))))

(declare-fun rulesInvariant!3414 (LexerInterface!3912 List!27145) Bool)

(assert (=> b!2275037 (= res!972337 (rulesInvariant!3414 thiss!16613 rules!1750))))

(declare-fun b!2275038 () Bool)

(assert (=> b!2275038 (= e!1457192 e!1457170)))

(declare-fun res!972339 () Bool)

(assert (=> b!2275038 (=> (not res!972339) (not e!1457170))))

(declare-datatypes ((IArray!17563 0))(
  ( (IArray!17564 (innerList!8839 List!27146)) )
))
(declare-datatypes ((Conc!8779 0))(
  ( (Node!8779 (left!20525 Conc!8779) (right!20855 Conc!8779) (csize!17788 Int) (cheight!8990 Int)) (Leaf!12922 (xs!11721 IArray!17563) (csize!17789 Int)) (Empty!8779) )
))
(declare-datatypes ((BalanceConc!17286 0))(
  ( (BalanceConc!17287 (c!361136 Conc!8779)) )
))
(declare-datatypes ((tuple2!26748 0))(
  ( (tuple2!26749 (_1!15884 BalanceConc!17286) (_2!15884 BalanceConc!17284)) )
))
(declare-fun lt!844799 () tuple2!26748)

(declare-fun suffix!886 () List!27144)

(declare-datatypes ((tuple2!26750 0))(
  ( (tuple2!26751 (_1!15885 List!27146) (_2!15885 List!27144)) )
))
(declare-fun list!10513 (BalanceConc!17286) List!27146)

(assert (=> b!2275038 (= res!972339 (= (tuple2!26751 (list!10513 (_1!15884 lt!844799)) (list!10512 (_2!15884 lt!844799))) (tuple2!26751 tokens!456 suffix!886)))))

(declare-fun lex!1751 (LexerInterface!3912 List!27145 BalanceConc!17284) tuple2!26748)

(declare-fun seqFromList!3019 (List!27144) BalanceConc!17284)

(assert (=> b!2275038 (= lt!844799 (lex!1751 thiss!16613 rules!1750 (seqFromList!3019 input!1722)))))

(assert (= (and start!222648 res!972338) b!2275007))

(assert (= (and b!2275007 res!972341) b!2275037))

(assert (= (and b!2275037 res!972337) b!2275016))

(assert (= (and b!2275016 res!972343) b!2275026))

(assert (= (and b!2275026 res!972348) b!2275038))

(assert (= (and b!2275038 res!972339) b!2275013))

(assert (= (and b!2275013 (not res!972352)) b!2275018))

(assert (= (and b!2275013 res!972340) b!2275034))

(assert (= (and b!2275034 (not res!972344)) b!2275011))

(assert (= (and b!2275034 res!972345) b!2275029))

(assert (= (and b!2275029 res!972353) b!2275017))

(assert (= (and b!2275017 res!972346) b!2275012))

(assert (= (and b!2275012 res!972349) b!2275025))

(assert (= (and b!2275012 (not res!972342)) b!2275022))

(assert (= (and b!2275022 (not res!972347)) b!2275033))

(assert (= (and b!2275033 (not res!972351)) b!2275014))

(assert (= (and b!2275014 (not res!972350)) b!2275020))

(assert (= (and b!2275020 (not res!972354)) b!2275023))

(assert (= (and start!222648 ((_ is Cons!27050) input!1722)) b!2275032))

(assert (= b!2275015 b!2275036))

(assert (= start!222648 b!2275015))

(assert (= (and start!222648 ((_ is Cons!27050) suffix!886)) b!2275030))

(assert (= (and start!222648 ((_ is Cons!27050) otherP!12)) b!2275010))

(assert (= b!2275019 b!2275008))

(assert (= b!2275021 b!2275019))

(assert (= (and start!222648 ((_ is Cons!27051) rules!1750)) b!2275021))

(assert (= b!2275027 b!2275024))

(assert (= start!222648 b!2275027))

(assert (= b!2275035 b!2275028))

(assert (= b!2275031 b!2275035))

(assert (= b!2275009 b!2275031))

(assert (= (and start!222648 ((_ is Cons!27052) tokens!456)) b!2275009))

(declare-fun m!2703267 () Bool)

(assert (=> b!2275023 m!2703267))

(declare-fun m!2703269 () Bool)

(assert (=> b!2275023 m!2703269))

(assert (=> b!2275023 m!2703269))

(declare-fun m!2703271 () Bool)

(assert (=> b!2275023 m!2703271))

(assert (=> b!2275023 m!2703271))

(declare-fun m!2703273 () Bool)

(assert (=> b!2275023 m!2703273))

(declare-fun m!2703275 () Bool)

(assert (=> b!2275014 m!2703275))

(declare-fun m!2703277 () Bool)

(assert (=> b!2275014 m!2703277))

(declare-fun m!2703279 () Bool)

(assert (=> b!2275029 m!2703279))

(declare-fun m!2703281 () Bool)

(assert (=> b!2275020 m!2703281))

(assert (=> b!2275011 m!2703269))

(declare-fun m!2703283 () Bool)

(assert (=> b!2275007 m!2703283))

(declare-fun m!2703285 () Bool)

(assert (=> b!2275022 m!2703285))

(declare-fun m!2703287 () Bool)

(assert (=> b!2275022 m!2703287))

(declare-fun m!2703289 () Bool)

(assert (=> b!2275022 m!2703289))

(declare-fun m!2703291 () Bool)

(assert (=> b!2275022 m!2703291))

(declare-fun m!2703293 () Bool)

(assert (=> b!2275037 m!2703293))

(declare-fun m!2703295 () Bool)

(assert (=> b!2275027 m!2703295))

(declare-fun m!2703297 () Bool)

(assert (=> b!2275027 m!2703297))

(declare-fun m!2703299 () Bool)

(assert (=> b!2275012 m!2703299))

(declare-fun m!2703301 () Bool)

(assert (=> b!2275012 m!2703301))

(declare-fun m!2703303 () Bool)

(assert (=> b!2275031 m!2703303))

(declare-fun m!2703305 () Bool)

(assert (=> b!2275015 m!2703305))

(declare-fun m!2703307 () Bool)

(assert (=> b!2275015 m!2703307))

(assert (=> b!2275025 m!2703269))

(assert (=> b!2275025 m!2703269))

(assert (=> b!2275025 m!2703271))

(assert (=> b!2275025 m!2703271))

(declare-fun m!2703309 () Bool)

(assert (=> b!2275025 m!2703309))

(assert (=> b!2275025 m!2703309))

(declare-fun m!2703311 () Bool)

(assert (=> b!2275025 m!2703311))

(declare-fun m!2703313 () Bool)

(assert (=> b!2275019 m!2703313))

(declare-fun m!2703315 () Bool)

(assert (=> b!2275019 m!2703315))

(declare-fun m!2703317 () Bool)

(assert (=> b!2275009 m!2703317))

(declare-fun m!2703319 () Bool)

(assert (=> b!2275026 m!2703319))

(declare-fun m!2703321 () Bool)

(assert (=> b!2275016 m!2703321))

(declare-fun m!2703323 () Bool)

(assert (=> b!2275033 m!2703323))

(declare-fun m!2703325 () Bool)

(assert (=> b!2275033 m!2703325))

(declare-fun m!2703327 () Bool)

(assert (=> b!2275033 m!2703327))

(assert (=> b!2275018 m!2703269))

(assert (=> b!2275018 m!2703269))

(assert (=> b!2275018 m!2703271))

(assert (=> b!2275018 m!2703271))

(assert (=> b!2275018 m!2703273))

(assert (=> b!2275018 m!2703267))

(declare-fun m!2703329 () Bool)

(assert (=> b!2275035 m!2703329))

(declare-fun m!2703331 () Bool)

(assert (=> b!2275035 m!2703331))

(declare-fun m!2703333 () Bool)

(assert (=> b!2275038 m!2703333))

(declare-fun m!2703335 () Bool)

(assert (=> b!2275038 m!2703335))

(declare-fun m!2703337 () Bool)

(assert (=> b!2275038 m!2703337))

(assert (=> b!2275038 m!2703337))

(declare-fun m!2703339 () Bool)

(assert (=> b!2275038 m!2703339))

(declare-fun m!2703341 () Bool)

(assert (=> b!2275013 m!2703341))

(check-sat b_and!179393 (not b!2275037) (not b_next!68475) tp_is_empty!10547 (not b!2275035) b_and!179397 (not b!2275007) (not b!2275015) (not b!2275016) (not b_next!68465) (not b!2275032) (not b!2275033) (not b!2275029) (not b_next!68471) (not b!2275025) (not b!2275021) (not b!2275031) (not b!2275018) b_and!179407 (not b!2275014) (not b!2275019) b_and!179401 (not b!2275026) (not b!2275012) (not b!2275010) (not b!2275020) b_and!179405 (not b!2275038) (not b!2275027) b_and!179395 (not b_next!68467) (not b!2275030) (not b_next!68461) (not b_next!68463) (not b!2275023) (not b!2275011) (not b!2275009) b_and!179403 (not b!2275022) (not b_next!68473) b_and!179399 (not b!2275013) (not b_next!68469))
(check-sat b_and!179393 (not b_next!68471) (not b_next!68475) b_and!179407 b_and!179397 b_and!179401 b_and!179405 (not b_next!68465) b_and!179403 (not b_next!68469) b_and!179395 (not b_next!68467) (not b_next!68461) (not b_next!68463) (not b_next!68473) b_and!179399)
