; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50392 () Bool)

(assert start!50392)

(declare-fun b!545622 () Bool)

(declare-fun b_free!15161 () Bool)

(declare-fun b_next!15177 () Bool)

(assert (=> b!545622 (= b_free!15161 (not b_next!15177))))

(declare-fun tp!173295 () Bool)

(declare-fun b_and!53275 () Bool)

(assert (=> b!545622 (= tp!173295 b_and!53275)))

(declare-fun b_free!15163 () Bool)

(declare-fun b_next!15179 () Bool)

(assert (=> b!545622 (= b_free!15163 (not b_next!15179))))

(declare-fun tp!173296 () Bool)

(declare-fun b_and!53277 () Bool)

(assert (=> b!545622 (= tp!173296 b_and!53277)))

(declare-fun b!545634 () Bool)

(declare-fun b_free!15165 () Bool)

(declare-fun b_next!15181 () Bool)

(assert (=> b!545634 (= b_free!15165 (not b_next!15181))))

(declare-fun tp!173299 () Bool)

(declare-fun b_and!53279 () Bool)

(assert (=> b!545634 (= tp!173299 b_and!53279)))

(declare-fun b_free!15167 () Bool)

(declare-fun b_next!15183 () Bool)

(assert (=> b!545634 (= b_free!15167 (not b_next!15183))))

(declare-fun tp!173300 () Bool)

(declare-fun b_and!53281 () Bool)

(assert (=> b!545634 (= tp!173300 b_and!53281)))

(declare-fun b!545605 () Bool)

(declare-fun e!329736 () Bool)

(declare-fun e!329749 () Bool)

(declare-fun tp!173294 () Bool)

(assert (=> b!545605 (= e!329736 (and e!329749 tp!173294))))

(declare-fun b!545606 () Bool)

(declare-fun e!329740 () Bool)

(declare-fun e!329732 () Bool)

(assert (=> b!545606 (= e!329740 e!329732)))

(declare-fun res!233007 () Bool)

(assert (=> b!545606 (=> (not res!233007) (not e!329732))))

(declare-datatypes ((C!3612 0))(
  ( (C!3613 (val!2032 Int)) )
))
(declare-datatypes ((List!5381 0))(
  ( (Nil!5371) (Cons!5371 (h!10772 C!3612) (t!74682 List!5381)) )
))
(declare-fun suffix!1342 () List!5381)

(declare-datatypes ((Regex!1345 0))(
  ( (ElementMatch!1345 (c!102894 C!3612)) (Concat!2380 (regOne!3202 Regex!1345) (regTwo!3202 Regex!1345)) (EmptyExpr!1345) (Star!1345 (reg!1674 Regex!1345)) (EmptyLang!1345) (Union!1345 (regOne!3203 Regex!1345) (regTwo!3203 Regex!1345)) )
))
(declare-datatypes ((List!5382 0))(
  ( (Nil!5372) (Cons!5372 (h!10773 (_ BitVec 16)) (t!74683 List!5382)) )
))
(declare-datatypes ((IArray!3457 0))(
  ( (IArray!3458 (innerList!1786 List!5381)) )
))
(declare-datatypes ((Conc!1728 0))(
  ( (Node!1728 (left!4450 Conc!1728) (right!4780 Conc!1728) (csize!3686 Int) (cheight!1939 Int)) (Leaf!2741 (xs!4365 IArray!3457) (csize!3687 Int)) (Empty!1728) )
))
(declare-datatypes ((BalanceConc!3464 0))(
  ( (BalanceConc!3465 (c!102895 Conc!1728)) )
))
(declare-datatypes ((TokenValue!1035 0))(
  ( (FloatLiteralValue!2070 (text!7690 List!5382)) (TokenValueExt!1034 (__x!3968 Int)) (Broken!5175 (value!33654 List!5382)) (Object!1044) (End!1035) (Def!1035) (Underscore!1035) (Match!1035) (Else!1035) (Error!1035) (Case!1035) (If!1035) (Extends!1035) (Abstract!1035) (Class!1035) (Val!1035) (DelimiterValue!2070 (del!1095 List!5382)) (KeywordValue!1041 (value!33655 List!5382)) (CommentValue!2070 (value!33656 List!5382)) (WhitespaceValue!2070 (value!33657 List!5382)) (IndentationValue!1035 (value!33658 List!5382)) (String!6918) (Int32!1035) (Broken!5176 (value!33659 List!5382)) (Boolean!1036) (Unit!9424) (OperatorValue!1038 (op!1095 List!5382)) (IdentifierValue!2070 (value!33660 List!5382)) (IdentifierValue!2071 (value!33661 List!5382)) (WhitespaceValue!2071 (value!33662 List!5382)) (True!2070) (False!2070) (Broken!5177 (value!33663 List!5382)) (Broken!5178 (value!33664 List!5382)) (True!2071) (RightBrace!1035) (RightBracket!1035) (Colon!1035) (Null!1035) (Comma!1035) (LeftBracket!1035) (False!2071) (LeftBrace!1035) (ImaginaryLiteralValue!1035 (text!7691 List!5382)) (StringLiteralValue!3105 (value!33665 List!5382)) (EOFValue!1035 (value!33666 List!5382)) (IdentValue!1035 (value!33667 List!5382)) (DelimiterValue!2071 (value!33668 List!5382)) (DedentValue!1035 (value!33669 List!5382)) (NewLineValue!1035 (value!33670 List!5382)) (IntegerValue!3105 (value!33671 (_ BitVec 32)) (text!7692 List!5382)) (IntegerValue!3106 (value!33672 Int) (text!7693 List!5382)) (Times!1035) (Or!1035) (Equal!1035) (Minus!1035) (Broken!5179 (value!33673 List!5382)) (And!1035) (Div!1035) (LessEqual!1035) (Mod!1035) (Concat!2381) (Not!1035) (Plus!1035) (SpaceValue!1035 (value!33674 List!5382)) (IntegerValue!3107 (value!33675 Int) (text!7694 List!5382)) (StringLiteralValue!3106 (text!7695 List!5382)) (FloatLiteralValue!2071 (text!7696 List!5382)) (BytesLiteralValue!1035 (value!33676 List!5382)) (CommentValue!2071 (value!33677 List!5382)) (StringLiteralValue!3107 (value!33678 List!5382)) (ErrorTokenValue!1035 (msg!1096 List!5382)) )
))
(declare-datatypes ((String!6919 0))(
  ( (String!6920 (value!33679 String)) )
))
(declare-datatypes ((TokenValueInjection!1838 0))(
  ( (TokenValueInjection!1839 (toValue!1858 Int) (toChars!1717 Int)) )
))
(declare-datatypes ((Rule!1822 0))(
  ( (Rule!1823 (regex!1011 Regex!1345) (tag!1273 String!6919) (isSeparator!1011 Bool) (transformation!1011 TokenValueInjection!1838)) )
))
(declare-datatypes ((Token!1758 0))(
  ( (Token!1759 (value!33680 TokenValue!1035) (rule!1727 Rule!1822) (size!4306 Int) (originalCharacters!1050 List!5381)) )
))
(declare-datatypes ((tuple2!6408 0))(
  ( (tuple2!6409 (_1!3468 Token!1758) (_2!3468 List!5381)) )
))
(declare-fun lt!228658 () tuple2!6408)

(declare-fun token!491 () Token!1758)

(assert (=> b!545606 (= res!233007 (and (= (_1!3468 lt!228658) token!491) (= (_2!3468 lt!228658) suffix!1342)))))

(declare-datatypes ((Option!1361 0))(
  ( (None!1360) (Some!1360 (v!16177 tuple2!6408)) )
))
(declare-fun lt!228662 () Option!1361)

(declare-fun get!2031 (Option!1361) tuple2!6408)

(assert (=> b!545606 (= lt!228658 (get!2031 lt!228662))))

(declare-fun b!545607 () Bool)

(declare-fun res!233006 () Bool)

(declare-fun e!329728 () Bool)

(assert (=> b!545607 (=> res!233006 e!329728)))

(declare-fun lt!228695 () Option!1361)

(declare-datatypes ((List!5383 0))(
  ( (Nil!5373) (Cons!5373 (h!10774 Rule!1822) (t!74684 List!5383)) )
))
(declare-fun rules!3103 () List!5383)

(declare-fun getIndex!12 (List!5383 Rule!1822) Int)

(assert (=> b!545607 (= res!233006 (>= (getIndex!12 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (getIndex!12 rules!3103 (rule!1727 token!491))))))

(declare-fun b!545608 () Bool)

(declare-fun e!329743 () Bool)

(declare-fun e!329734 () Bool)

(assert (=> b!545608 (= e!329743 e!329734)))

(declare-fun res!233012 () Bool)

(assert (=> b!545608 (=> (not res!233012) (not e!329734))))

(declare-fun lt!228681 () List!5381)

(declare-fun lt!228669 () List!5381)

(assert (=> b!545608 (= res!233012 (= lt!228681 lt!228669))))

(declare-fun lt!228666 () List!5381)

(declare-fun ++!1499 (List!5381 List!5381) List!5381)

(assert (=> b!545608 (= lt!228681 (++!1499 lt!228666 suffix!1342))))

(declare-fun b!545609 () Bool)

(declare-fun input!2705 () List!5381)

(declare-fun size!4307 (List!5381) Int)

(assert (=> b!545609 (= e!329728 (>= (size!4307 lt!228669) (size!4307 input!2705)))))

(declare-fun b!545610 () Bool)

(assert (=> b!545610 (= e!329732 e!329743)))

(declare-fun res!232994 () Bool)

(assert (=> b!545610 (=> (not res!232994) (not e!329743))))

(get-info :version)

(assert (=> b!545610 (= res!232994 ((_ is Some!1360) lt!228695))))

(declare-datatypes ((LexerInterface!897 0))(
  ( (LexerInterfaceExt!894 (__x!3969 Int)) (Lexer!895) )
))
(declare-fun thiss!22590 () LexerInterface!897)

(declare-fun maxPrefix!595 (LexerInterface!897 List!5383 List!5381) Option!1361)

(assert (=> b!545610 (= lt!228695 (maxPrefix!595 thiss!22590 rules!3103 input!2705))))

(declare-fun b!545611 () Bool)

(declare-fun e!329742 () Bool)

(declare-fun e!329730 () Bool)

(assert (=> b!545611 (= e!329742 e!329730)))

(declare-fun res!233002 () Bool)

(assert (=> b!545611 (=> (not res!233002) (not e!329730))))

(declare-fun isDefined!1173 (Option!1361) Bool)

(assert (=> b!545611 (= res!233002 (isDefined!1173 lt!228695))))

(declare-fun b!545612 () Bool)

(declare-fun res!233018 () Bool)

(assert (=> b!545612 (=> res!233018 e!329728)))

(declare-fun contains!1253 (List!5383 Rule!1822) Bool)

(assert (=> b!545612 (= res!233018 (not (contains!1253 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695))))))))

(declare-fun b!545613 () Bool)

(declare-fun res!232992 () Bool)

(assert (=> b!545613 (=> res!232992 e!329728)))

(declare-fun lt!228674 () List!5381)

(assert (=> b!545613 (= res!232992 (or (not (= lt!228674 lt!228666)) (not (= (originalCharacters!1050 (_1!3468 (v!16177 lt!228695))) (originalCharacters!1050 token!491)))))))

(declare-fun b!545614 () Bool)

(declare-fun res!233001 () Bool)

(declare-fun e!329746 () Bool)

(assert (=> b!545614 (=> (not res!233001) (not e!329746))))

(declare-fun isEmpty!3878 (List!5383) Bool)

(assert (=> b!545614 (= res!233001 (not (isEmpty!3878 rules!3103)))))

(declare-fun b!545615 () Bool)

(declare-fun res!233010 () Bool)

(assert (=> b!545615 (=> res!233010 e!329728)))

(assert (=> b!545615 (= res!233010 (not (contains!1253 rules!3103 (rule!1727 token!491))))))

(declare-fun b!545616 () Bool)

(declare-fun e!329733 () Bool)

(assert (=> b!545616 (= e!329733 e!329740)))

(declare-fun res!233017 () Bool)

(assert (=> b!545616 (=> (not res!233017) (not e!329740))))

(assert (=> b!545616 (= res!233017 (isDefined!1173 lt!228662))))

(assert (=> b!545616 (= lt!228662 (maxPrefix!595 thiss!22590 rules!3103 lt!228669))))

(assert (=> b!545616 (= lt!228669 (++!1499 input!2705 suffix!1342))))

(declare-fun e!329737 () Bool)

(declare-fun lt!228668 () Int)

(declare-fun lt!228676 () List!5381)

(declare-fun b!545617 () Bool)

(declare-fun lt!228687 () TokenValue!1035)

(assert (=> b!545617 (= e!329737 (and (= (size!4306 token!491) lt!228668) (= (originalCharacters!1050 token!491) lt!228666) (= (tuple2!6409 token!491 suffix!1342) (tuple2!6409 (Token!1759 lt!228687 (rule!1727 token!491) lt!228668 lt!228666) lt!228676))))))

(declare-fun b!545618 () Bool)

(declare-datatypes ((Unit!9425 0))(
  ( (Unit!9426) )
))
(declare-fun e!329745 () Unit!9425)

(declare-fun Unit!9427 () Unit!9425)

(assert (=> b!545618 (= e!329745 Unit!9427)))

(declare-fun b!545619 () Bool)

(declare-fun e!329741 () Unit!9425)

(declare-fun Unit!9428 () Unit!9425)

(assert (=> b!545619 (= e!329741 Unit!9428)))

(declare-fun b!545620 () Bool)

(declare-fun e!329731 () Bool)

(declare-fun tp!173297 () Bool)

(declare-fun inv!6735 (String!6919) Bool)

(declare-fun inv!6738 (TokenValueInjection!1838) Bool)

(assert (=> b!545620 (= e!329749 (and tp!173297 (inv!6735 (tag!1273 (h!10774 rules!3103))) (inv!6738 (transformation!1011 (h!10774 rules!3103))) e!329731))))

(declare-fun b!545621 () Bool)

(assert (=> b!545621 (= e!329746 e!329733)))

(declare-fun res!233008 () Bool)

(assert (=> b!545621 (=> (not res!233008) (not e!329733))))

(assert (=> b!545621 (= res!233008 (= lt!228666 input!2705))))

(declare-fun list!2227 (BalanceConc!3464) List!5381)

(declare-fun charsOf!640 (Token!1758) BalanceConc!3464)

(assert (=> b!545621 (= lt!228666 (list!2227 (charsOf!640 token!491)))))

(declare-fun e!329751 () Bool)

(assert (=> b!545622 (= e!329751 (and tp!173295 tp!173296))))

(declare-fun b!545623 () Bool)

(declare-fun res!232998 () Bool)

(assert (=> b!545623 (=> res!232998 e!329728)))

(assert (=> b!545623 (= res!232998 (= (rule!1727 (_1!3468 (v!16177 lt!228695))) (rule!1727 token!491)))))

(declare-fun e!329754 () Bool)

(declare-fun tp!173301 () Bool)

(declare-fun e!329735 () Bool)

(declare-fun b!545624 () Bool)

(declare-fun inv!21 (TokenValue!1035) Bool)

(assert (=> b!545624 (= e!329735 (and (inv!21 (value!33680 token!491)) e!329754 tp!173301))))

(declare-fun e!329747 () Bool)

(declare-fun lt!228667 () Int)

(declare-fun lt!228664 () List!5381)

(declare-fun lt!228672 () tuple2!6408)

(declare-fun b!545625 () Bool)

(declare-fun lt!228661 () TokenValue!1035)

(assert (=> b!545625 (= e!329747 (and (= (size!4306 (_1!3468 (v!16177 lt!228695))) lt!228667) (= (originalCharacters!1050 (_1!3468 (v!16177 lt!228695))) lt!228674) (= lt!228672 (tuple2!6409 (Token!1759 lt!228661 (rule!1727 (_1!3468 (v!16177 lt!228695))) lt!228667 lt!228674) lt!228664))))))

(declare-fun b!545626 () Bool)

(declare-fun e!329752 () Bool)

(declare-fun tp_is_empty!3045 () Bool)

(declare-fun tp!173302 () Bool)

(assert (=> b!545626 (= e!329752 (and tp_is_empty!3045 tp!173302))))

(declare-fun b!545627 () Bool)

(declare-fun res!233005 () Bool)

(assert (=> b!545627 (=> (not res!233005) (not e!329746))))

(declare-fun isEmpty!3879 (List!5381) Bool)

(assert (=> b!545627 (= res!233005 (not (isEmpty!3879 input!2705)))))

(declare-fun b!545628 () Bool)

(declare-fun e!329744 () Bool)

(assert (=> b!545628 (= e!329744 e!329742)))

(declare-fun res!233003 () Bool)

(assert (=> b!545628 (=> res!233003 e!329742)))

(assert (=> b!545628 (= res!233003 (>= lt!228667 lt!228668))))

(declare-fun b!545629 () Bool)

(declare-fun e!329729 () Bool)

(assert (=> b!545629 (= e!329729 e!329728)))

(declare-fun res!233014 () Bool)

(assert (=> b!545629 (=> res!233014 e!329728)))

(declare-fun lt!228688 () List!5381)

(assert (=> b!545629 (= res!233014 (or (not (= lt!228667 lt!228668)) (not (= lt!228688 input!2705)) (not (= lt!228688 lt!228666))))))

(declare-fun lt!228677 () Unit!9425)

(declare-fun lt!228684 () BalanceConc!3464)

(declare-fun lemmaSemiInverse!140 (TokenValueInjection!1838 BalanceConc!3464) Unit!9425)

(assert (=> b!545629 (= lt!228677 (lemmaSemiInverse!140 (transformation!1011 (rule!1727 token!491)) lt!228684))))

(declare-fun lt!228671 () Unit!9425)

(declare-fun lt!228665 () BalanceConc!3464)

(assert (=> b!545629 (= lt!228671 (lemmaSemiInverse!140 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228665))))

(declare-fun lt!228693 () Unit!9425)

(assert (=> b!545629 (= lt!228693 e!329741)))

(declare-fun c!102893 () Bool)

(assert (=> b!545629 (= c!102893 (< lt!228667 lt!228668))))

(assert (=> b!545629 e!329744))

(declare-fun res!232996 () Bool)

(assert (=> b!545629 (=> (not res!232996) (not e!329744))))

(declare-fun maxPrefixOneRule!310 (LexerInterface!897 Rule!1822 List!5381) Option!1361)

(assert (=> b!545629 (= res!232996 (= (maxPrefixOneRule!310 thiss!22590 (rule!1727 token!491) lt!228669) (Some!1360 (tuple2!6409 (Token!1759 lt!228687 (rule!1727 token!491) lt!228668 lt!228666) suffix!1342))))))

(declare-fun lt!228680 () Unit!9425)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!62 (LexerInterface!897 List!5383 List!5381 List!5381 List!5381 Rule!1822) Unit!9425)

(assert (=> b!545629 (= lt!228680 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!62 thiss!22590 rules!3103 lt!228666 lt!228669 suffix!1342 (rule!1727 token!491)))))

(assert (=> b!545629 (= (maxPrefixOneRule!310 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))) input!2705) (Some!1360 (tuple2!6409 (Token!1759 lt!228661 (rule!1727 (_1!3468 (v!16177 lt!228695))) lt!228667 lt!228674) (_2!3468 (v!16177 lt!228695)))))))

(declare-fun lt!228692 () Unit!9425)

(assert (=> b!545629 (= lt!228692 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!62 thiss!22590 rules!3103 lt!228674 input!2705 (_2!3468 (v!16177 lt!228695)) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))

(assert (=> b!545629 e!329737))

(declare-fun res!233000 () Bool)

(assert (=> b!545629 (=> (not res!233000) (not e!329737))))

(assert (=> b!545629 (= res!233000 (= (value!33680 token!491) lt!228687))))

(declare-fun apply!1286 (TokenValueInjection!1838 BalanceConc!3464) TokenValue!1035)

(assert (=> b!545629 (= lt!228687 (apply!1286 (transformation!1011 (rule!1727 token!491)) lt!228684))))

(declare-fun seqFromList!1209 (List!5381) BalanceConc!3464)

(assert (=> b!545629 (= lt!228684 (seqFromList!1209 lt!228666))))

(assert (=> b!545629 (= suffix!1342 lt!228676)))

(declare-fun lt!228683 () Unit!9425)

(declare-fun lemmaSamePrefixThenSameSuffix!380 (List!5381 List!5381 List!5381 List!5381 List!5381) Unit!9425)

(assert (=> b!545629 (= lt!228683 (lemmaSamePrefixThenSameSuffix!380 lt!228666 suffix!1342 lt!228666 lt!228676 lt!228669))))

(declare-fun getSuffix!176 (List!5381 List!5381) List!5381)

(assert (=> b!545629 (= lt!228676 (getSuffix!176 lt!228669 lt!228666))))

(declare-fun b!545630 () Bool)

(declare-fun res!233011 () Bool)

(assert (=> b!545630 (=> res!233011 e!329728)))

(assert (=> b!545630 (= res!233011 (not (isEmpty!3879 (_2!3468 (v!16177 lt!228695)))))))

(declare-fun b!545631 () Bool)

(declare-fun e!329748 () Bool)

(assert (=> b!545631 (= e!329748 false)))

(declare-fun b!545632 () Bool)

(declare-fun res!233015 () Bool)

(assert (=> b!545632 (=> (not res!233015) (not e!329747))))

(assert (=> b!545632 (= res!233015 (= (size!4306 (_1!3468 (v!16177 lt!228695))) (size!4307 (originalCharacters!1050 (_1!3468 (v!16177 lt!228695))))))))

(declare-fun b!545633 () Bool)

(declare-fun res!233004 () Bool)

(assert (=> b!545633 (=> (not res!233004) (not e!329730))))

(assert (=> b!545633 (= res!233004 (= (_1!3468 (get!2031 lt!228695)) (_1!3468 (v!16177 lt!228695))))))

(assert (=> b!545634 (= e!329731 (and tp!173299 tp!173300))))

(declare-fun b!545635 () Bool)

(declare-fun res!233016 () Bool)

(assert (=> b!545635 (=> (not res!233016) (not e!329746))))

(declare-fun rulesInvariant!860 (LexerInterface!897 List!5383) Bool)

(assert (=> b!545635 (= res!233016 (rulesInvariant!860 thiss!22590 rules!3103))))

(declare-fun res!233013 () Bool)

(assert (=> start!50392 (=> (not res!233013) (not e!329746))))

(assert (=> start!50392 (= res!233013 ((_ is Lexer!895) thiss!22590))))

(assert (=> start!50392 e!329746))

(assert (=> start!50392 e!329752))

(assert (=> start!50392 e!329736))

(declare-fun inv!6739 (Token!1758) Bool)

(assert (=> start!50392 (and (inv!6739 token!491) e!329735)))

(assert (=> start!50392 true))

(declare-fun e!329753 () Bool)

(assert (=> start!50392 e!329753))

(declare-fun b!545636 () Bool)

(declare-fun Unit!9429 () Unit!9425)

(assert (=> b!545636 (= e!329741 Unit!9429)))

(declare-fun lt!228659 () Unit!9425)

(assert (=> b!545636 (= lt!228659 (lemmaSemiInverse!140 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228665))))

(declare-fun lt!228694 () Unit!9425)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!16 (LexerInterface!897 List!5383 Rule!1822 List!5381 List!5381 List!5381 Rule!1822) Unit!9425)

(assert (=> b!545636 (= lt!228694 (lemmaMaxPrefixOutputsMaxPrefix!16 thiss!22590 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695))) lt!228674 input!2705 input!2705 (rule!1727 token!491)))))

(declare-fun res!233009 () Bool)

(declare-fun matchR!504 (Regex!1345 List!5381) Bool)

(assert (=> b!545636 (= res!233009 (not (matchR!504 (regex!1011 (rule!1727 token!491)) input!2705)))))

(assert (=> b!545636 (=> (not res!233009) (not e!329748))))

(assert (=> b!545636 e!329748))

(declare-fun b!545637 () Bool)

(declare-fun res!232993 () Bool)

(assert (=> b!545637 (=> res!232993 e!329728)))

(assert (=> b!545637 (= res!232993 (not (= lt!228662 (Some!1360 (tuple2!6409 token!491 suffix!1342)))))))

(declare-fun b!545638 () Bool)

(declare-fun tp!173298 () Bool)

(assert (=> b!545638 (= e!329753 (and tp_is_empty!3045 tp!173298))))

(declare-fun b!545639 () Bool)

(declare-fun res!232995 () Bool)

(assert (=> b!545639 (=> (not res!232995) (not e!329737))))

(assert (=> b!545639 (= res!232995 (= (size!4306 token!491) (size!4307 (originalCharacters!1050 token!491))))))

(declare-fun tp!173293 () Bool)

(declare-fun b!545640 () Bool)

(assert (=> b!545640 (= e!329754 (and tp!173293 (inv!6735 (tag!1273 (rule!1727 token!491))) (inv!6738 (transformation!1011 (rule!1727 token!491))) e!329751))))

(declare-fun b!545641 () Bool)

(declare-fun Unit!9430 () Unit!9425)

(assert (=> b!545641 (= e!329745 Unit!9430)))

(assert (=> b!545641 false))

(declare-fun b!545642 () Bool)

(assert (=> b!545642 (= e!329734 (not e!329729))))

(declare-fun res!232999 () Bool)

(assert (=> b!545642 (=> res!232999 e!329729)))

(declare-fun isPrefix!653 (List!5381 List!5381) Bool)

(assert (=> b!545642 (= res!232999 (not (isPrefix!653 input!2705 lt!228681)))))

(assert (=> b!545642 (isPrefix!653 lt!228666 lt!228681)))

(declare-fun lt!228670 () Unit!9425)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!504 (List!5381 List!5381) Unit!9425)

(assert (=> b!545642 (= lt!228670 (lemmaConcatTwoListThenFirstIsPrefix!504 lt!228666 suffix!1342))))

(assert (=> b!545642 (isPrefix!653 input!2705 lt!228669)))

(declare-fun lt!228679 () Unit!9425)

(assert (=> b!545642 (= lt!228679 (lemmaConcatTwoListThenFirstIsPrefix!504 input!2705 suffix!1342))))

(assert (=> b!545642 e!329747))

(declare-fun res!232997 () Bool)

(assert (=> b!545642 (=> (not res!232997) (not e!329747))))

(assert (=> b!545642 (= res!232997 (= (value!33680 (_1!3468 (v!16177 lt!228695))) lt!228661))))

(assert (=> b!545642 (= lt!228661 (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228665))))

(assert (=> b!545642 (= lt!228665 (seqFromList!1209 lt!228674))))

(declare-fun lt!228663 () Unit!9425)

(declare-fun lemmaInv!159 (TokenValueInjection!1838) Unit!9425)

(assert (=> b!545642 (= lt!228663 (lemmaInv!159 (transformation!1011 (rule!1727 token!491))))))

(declare-fun lt!228682 () Unit!9425)

(assert (=> b!545642 (= lt!228682 (lemmaInv!159 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))))))

(declare-fun ruleValid!231 (LexerInterface!897 Rule!1822) Bool)

(assert (=> b!545642 (ruleValid!231 thiss!22590 (rule!1727 token!491))))

(declare-fun lt!228673 () Unit!9425)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!90 (LexerInterface!897 Rule!1822 List!5383) Unit!9425)

(assert (=> b!545642 (= lt!228673 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!90 thiss!22590 (rule!1727 token!491) rules!3103))))

(assert (=> b!545642 (ruleValid!231 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))))))

(declare-fun lt!228691 () Unit!9425)

(assert (=> b!545642 (= lt!228691 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!90 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))) rules!3103))))

(assert (=> b!545642 (isPrefix!653 input!2705 input!2705)))

(declare-fun lt!228685 () Unit!9425)

(declare-fun lemmaIsPrefixRefl!393 (List!5381 List!5381) Unit!9425)

(assert (=> b!545642 (= lt!228685 (lemmaIsPrefixRefl!393 input!2705 input!2705))))

(assert (=> b!545642 (= (_2!3468 (v!16177 lt!228695)) lt!228664)))

(declare-fun lt!228675 () Unit!9425)

(assert (=> b!545642 (= lt!228675 (lemmaSamePrefixThenSameSuffix!380 lt!228674 (_2!3468 (v!16177 lt!228695)) lt!228674 lt!228664 input!2705))))

(assert (=> b!545642 (= lt!228664 (getSuffix!176 input!2705 lt!228674))))

(assert (=> b!545642 (isPrefix!653 lt!228674 lt!228688)))

(assert (=> b!545642 (= lt!228688 (++!1499 lt!228674 (_2!3468 (v!16177 lt!228695))))))

(declare-fun lt!228678 () Unit!9425)

(assert (=> b!545642 (= lt!228678 (lemmaConcatTwoListThenFirstIsPrefix!504 lt!228674 (_2!3468 (v!16177 lt!228695))))))

(declare-fun lt!228689 () Unit!9425)

(declare-fun lemmaCharactersSize!90 (Token!1758) Unit!9425)

(assert (=> b!545642 (= lt!228689 (lemmaCharactersSize!90 token!491))))

(declare-fun lt!228660 () Unit!9425)

(assert (=> b!545642 (= lt!228660 (lemmaCharactersSize!90 (_1!3468 (v!16177 lt!228695))))))

(declare-fun lt!228686 () Unit!9425)

(assert (=> b!545642 (= lt!228686 e!329745)))

(declare-fun c!102892 () Bool)

(assert (=> b!545642 (= c!102892 (> lt!228667 lt!228668))))

(assert (=> b!545642 (= lt!228668 (size!4307 lt!228666))))

(assert (=> b!545642 (= lt!228667 (size!4307 lt!228674))))

(assert (=> b!545642 (= lt!228674 (list!2227 (charsOf!640 (_1!3468 (v!16177 lt!228695)))))))

(assert (=> b!545642 (= lt!228695 (Some!1360 lt!228672))))

(assert (=> b!545642 (= lt!228672 (tuple2!6409 (_1!3468 (v!16177 lt!228695)) (_2!3468 (v!16177 lt!228695))))))

(declare-fun lt!228690 () Unit!9425)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!96 (List!5381 List!5381 List!5381 List!5381) Unit!9425)

(assert (=> b!545642 (= lt!228690 (lemmaConcatSameAndSameSizesThenSameLists!96 lt!228666 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!545643 () Bool)

(assert (=> b!545643 (= e!329730 (= lt!228664 (_2!3468 (v!16177 lt!228695))))))

(assert (= (and start!50392 res!233013) b!545614))

(assert (= (and b!545614 res!233001) b!545635))

(assert (= (and b!545635 res!233016) b!545627))

(assert (= (and b!545627 res!233005) b!545621))

(assert (= (and b!545621 res!233008) b!545616))

(assert (= (and b!545616 res!233017) b!545606))

(assert (= (and b!545606 res!233007) b!545610))

(assert (= (and b!545610 res!232994) b!545608))

(assert (= (and b!545608 res!233012) b!545642))

(assert (= (and b!545642 c!102892) b!545641))

(assert (= (and b!545642 (not c!102892)) b!545618))

(assert (= (and b!545642 res!232997) b!545632))

(assert (= (and b!545632 res!233015) b!545625))

(assert (= (and b!545642 (not res!232999)) b!545629))

(assert (= (and b!545629 res!233000) b!545639))

(assert (= (and b!545639 res!232995) b!545617))

(assert (= (and b!545629 res!232996) b!545628))

(assert (= (and b!545628 (not res!233003)) b!545611))

(assert (= (and b!545611 res!233002) b!545633))

(assert (= (and b!545633 res!233004) b!545643))

(assert (= (and b!545629 c!102893) b!545636))

(assert (= (and b!545629 (not c!102893)) b!545619))

(assert (= (and b!545636 res!233009) b!545631))

(assert (= (and b!545629 (not res!233014)) b!545630))

(assert (= (and b!545630 (not res!233011)) b!545613))

(assert (= (and b!545613 (not res!232992)) b!545612))

(assert (= (and b!545612 (not res!233018)) b!545615))

(assert (= (and b!545615 (not res!233010)) b!545623))

(assert (= (and b!545623 (not res!232998)) b!545607))

(assert (= (and b!545607 (not res!233006)) b!545637))

(assert (= (and b!545637 (not res!232993)) b!545609))

(assert (= (and start!50392 ((_ is Cons!5371) suffix!1342)) b!545626))

(assert (= b!545620 b!545634))

(assert (= b!545605 b!545620))

(assert (= (and start!50392 ((_ is Cons!5373) rules!3103)) b!545605))

(assert (= b!545640 b!545622))

(assert (= b!545624 b!545640))

(assert (= start!50392 b!545624))

(assert (= (and start!50392 ((_ is Cons!5371) input!2705)) b!545638))

(declare-fun m!794169 () Bool)

(assert (=> b!545629 m!794169))

(declare-fun m!794171 () Bool)

(assert (=> b!545629 m!794171))

(declare-fun m!794173 () Bool)

(assert (=> b!545629 m!794173))

(declare-fun m!794175 () Bool)

(assert (=> b!545629 m!794175))

(declare-fun m!794177 () Bool)

(assert (=> b!545629 m!794177))

(declare-fun m!794179 () Bool)

(assert (=> b!545629 m!794179))

(declare-fun m!794181 () Bool)

(assert (=> b!545629 m!794181))

(declare-fun m!794183 () Bool)

(assert (=> b!545629 m!794183))

(declare-fun m!794185 () Bool)

(assert (=> b!545629 m!794185))

(declare-fun m!794187 () Bool)

(assert (=> b!545629 m!794187))

(declare-fun m!794189 () Bool)

(assert (=> b!545630 m!794189))

(declare-fun m!794191 () Bool)

(assert (=> b!545624 m!794191))

(declare-fun m!794193 () Bool)

(assert (=> b!545611 m!794193))

(declare-fun m!794195 () Bool)

(assert (=> b!545642 m!794195))

(declare-fun m!794197 () Bool)

(assert (=> b!545642 m!794197))

(declare-fun m!794199 () Bool)

(assert (=> b!545642 m!794199))

(declare-fun m!794201 () Bool)

(assert (=> b!545642 m!794201))

(declare-fun m!794203 () Bool)

(assert (=> b!545642 m!794203))

(declare-fun m!794205 () Bool)

(assert (=> b!545642 m!794205))

(declare-fun m!794207 () Bool)

(assert (=> b!545642 m!794207))

(declare-fun m!794209 () Bool)

(assert (=> b!545642 m!794209))

(declare-fun m!794211 () Bool)

(assert (=> b!545642 m!794211))

(declare-fun m!794213 () Bool)

(assert (=> b!545642 m!794213))

(declare-fun m!794215 () Bool)

(assert (=> b!545642 m!794215))

(declare-fun m!794217 () Bool)

(assert (=> b!545642 m!794217))

(declare-fun m!794219 () Bool)

(assert (=> b!545642 m!794219))

(declare-fun m!794221 () Bool)

(assert (=> b!545642 m!794221))

(declare-fun m!794223 () Bool)

(assert (=> b!545642 m!794223))

(declare-fun m!794225 () Bool)

(assert (=> b!545642 m!794225))

(declare-fun m!794227 () Bool)

(assert (=> b!545642 m!794227))

(declare-fun m!794229 () Bool)

(assert (=> b!545642 m!794229))

(declare-fun m!794231 () Bool)

(assert (=> b!545642 m!794231))

(declare-fun m!794233 () Bool)

(assert (=> b!545642 m!794233))

(declare-fun m!794235 () Bool)

(assert (=> b!545642 m!794235))

(declare-fun m!794237 () Bool)

(assert (=> b!545642 m!794237))

(assert (=> b!545642 m!794233))

(declare-fun m!794239 () Bool)

(assert (=> b!545642 m!794239))

(declare-fun m!794241 () Bool)

(assert (=> b!545642 m!794241))

(declare-fun m!794243 () Bool)

(assert (=> b!545642 m!794243))

(declare-fun m!794245 () Bool)

(assert (=> b!545642 m!794245))

(declare-fun m!794247 () Bool)

(assert (=> b!545642 m!794247))

(declare-fun m!794249 () Bool)

(assert (=> b!545621 m!794249))

(assert (=> b!545621 m!794249))

(declare-fun m!794251 () Bool)

(assert (=> b!545621 m!794251))

(declare-fun m!794253 () Bool)

(assert (=> b!545639 m!794253))

(declare-fun m!794255 () Bool)

(assert (=> b!545614 m!794255))

(declare-fun m!794257 () Bool)

(assert (=> b!545610 m!794257))

(declare-fun m!794259 () Bool)

(assert (=> start!50392 m!794259))

(declare-fun m!794261 () Bool)

(assert (=> b!545608 m!794261))

(declare-fun m!794263 () Bool)

(assert (=> b!545606 m!794263))

(declare-fun m!794265 () Bool)

(assert (=> b!545607 m!794265))

(declare-fun m!794267 () Bool)

(assert (=> b!545607 m!794267))

(declare-fun m!794269 () Bool)

(assert (=> b!545632 m!794269))

(declare-fun m!794271 () Bool)

(assert (=> b!545609 m!794271))

(declare-fun m!794273 () Bool)

(assert (=> b!545609 m!794273))

(declare-fun m!794275 () Bool)

(assert (=> b!545633 m!794275))

(declare-fun m!794277 () Bool)

(assert (=> b!545640 m!794277))

(declare-fun m!794279 () Bool)

(assert (=> b!545640 m!794279))

(declare-fun m!794281 () Bool)

(assert (=> b!545616 m!794281))

(declare-fun m!794283 () Bool)

(assert (=> b!545616 m!794283))

(declare-fun m!794285 () Bool)

(assert (=> b!545616 m!794285))

(declare-fun m!794287 () Bool)

(assert (=> b!545627 m!794287))

(declare-fun m!794289 () Bool)

(assert (=> b!545615 m!794289))

(assert (=> b!545636 m!794171))

(declare-fun m!794291 () Bool)

(assert (=> b!545636 m!794291))

(declare-fun m!794293 () Bool)

(assert (=> b!545636 m!794293))

(declare-fun m!794295 () Bool)

(assert (=> b!545635 m!794295))

(declare-fun m!794297 () Bool)

(assert (=> b!545620 m!794297))

(declare-fun m!794299 () Bool)

(assert (=> b!545620 m!794299))

(declare-fun m!794301 () Bool)

(assert (=> b!545612 m!794301))

(check-sat (not b!545606) (not b!545626) (not b!545642) (not b!545632) b_and!53275 b_and!53279 (not b!545629) tp_is_empty!3045 (not b!545621) (not start!50392) (not b!545615) (not b!545616) (not b!545611) (not b!545633) (not b!545638) (not b_next!15177) b_and!53277 (not b!545612) (not b!545627) (not b!545608) (not b_next!15181) (not b!545640) (not b!545639) b_and!53281 (not b!545605) (not b!545624) (not b!545610) (not b!545607) (not b!545635) (not b!545620) (not b!545630) (not b!545614) (not b!545609) (not b_next!15183) (not b!545636) (not b_next!15179))
(check-sat (not b_next!15181) b_and!53281 b_and!53275 b_and!53279 (not b_next!15183) (not b_next!15179) (not b_next!15177) b_and!53277)
(get-model)

(declare-fun d!191201 () Bool)

(assert (=> d!191201 (ruleValid!231 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))))))

(declare-fun lt!228698 () Unit!9425)

(declare-fun choose!3863 (LexerInterface!897 Rule!1822 List!5383) Unit!9425)

(assert (=> d!191201 (= lt!228698 (choose!3863 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))) rules!3103))))

(assert (=> d!191201 (contains!1253 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695))))))

(assert (=> d!191201 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!90 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))) rules!3103) lt!228698)))

(declare-fun bs!67652 () Bool)

(assert (= bs!67652 d!191201))

(assert (=> bs!67652 m!794203))

(declare-fun m!794303 () Bool)

(assert (=> bs!67652 m!794303))

(assert (=> bs!67652 m!794301))

(assert (=> b!545642 d!191201))

(declare-fun b!545670 () Bool)

(declare-fun lt!228701 () List!5381)

(declare-fun e!329768 () Bool)

(assert (=> b!545670 (= e!329768 (or (not (= (_2!3468 (v!16177 lt!228695)) Nil!5371)) (= lt!228701 lt!228674)))))

(declare-fun d!191205 () Bool)

(assert (=> d!191205 e!329768))

(declare-fun res!233035 () Bool)

(assert (=> d!191205 (=> (not res!233035) (not e!329768))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!935 (List!5381) (InoxSet C!3612))

(assert (=> d!191205 (= res!233035 (= (content!935 lt!228701) ((_ map or) (content!935 lt!228674) (content!935 (_2!3468 (v!16177 lt!228695))))))))

(declare-fun e!329769 () List!5381)

(assert (=> d!191205 (= lt!228701 e!329769)))

(declare-fun c!102904 () Bool)

(assert (=> d!191205 (= c!102904 ((_ is Nil!5371) lt!228674))))

(assert (=> d!191205 (= (++!1499 lt!228674 (_2!3468 (v!16177 lt!228695))) lt!228701)))

(declare-fun b!545668 () Bool)

(assert (=> b!545668 (= e!329769 (Cons!5371 (h!10772 lt!228674) (++!1499 (t!74682 lt!228674) (_2!3468 (v!16177 lt!228695)))))))

(declare-fun b!545669 () Bool)

(declare-fun res!233034 () Bool)

(assert (=> b!545669 (=> (not res!233034) (not e!329768))))

(assert (=> b!545669 (= res!233034 (= (size!4307 lt!228701) (+ (size!4307 lt!228674) (size!4307 (_2!3468 (v!16177 lt!228695))))))))

(declare-fun b!545667 () Bool)

(assert (=> b!545667 (= e!329769 (_2!3468 (v!16177 lt!228695)))))

(assert (= (and d!191205 c!102904) b!545667))

(assert (= (and d!191205 (not c!102904)) b!545668))

(assert (= (and d!191205 res!233035) b!545669))

(assert (= (and b!545669 res!233034) b!545670))

(declare-fun m!794311 () Bool)

(assert (=> d!191205 m!794311))

(declare-fun m!794313 () Bool)

(assert (=> d!191205 m!794313))

(declare-fun m!794315 () Bool)

(assert (=> d!191205 m!794315))

(declare-fun m!794317 () Bool)

(assert (=> b!545668 m!794317))

(declare-fun m!794319 () Bool)

(assert (=> b!545669 m!794319))

(assert (=> b!545669 m!794211))

(declare-fun m!794321 () Bool)

(assert (=> b!545669 m!794321))

(assert (=> b!545642 d!191205))

(declare-fun d!191209 () Bool)

(assert (=> d!191209 (isPrefix!653 input!2705 input!2705)))

(declare-fun lt!228708 () Unit!9425)

(declare-fun choose!3864 (List!5381 List!5381) Unit!9425)

(assert (=> d!191209 (= lt!228708 (choose!3864 input!2705 input!2705))))

(assert (=> d!191209 (= (lemmaIsPrefixRefl!393 input!2705 input!2705) lt!228708)))

(declare-fun bs!67655 () Bool)

(assert (= bs!67655 d!191209))

(assert (=> bs!67655 m!794247))

(declare-fun m!794331 () Bool)

(assert (=> bs!67655 m!794331))

(assert (=> b!545642 d!191209))

(declare-fun d!191215 () Bool)

(declare-fun e!329783 () Bool)

(assert (=> d!191215 e!329783))

(declare-fun res!233044 () Bool)

(assert (=> d!191215 (=> res!233044 e!329783)))

(declare-fun lt!228716 () Bool)

(assert (=> d!191215 (= res!233044 (not lt!228716))))

(declare-fun e!329784 () Bool)

(assert (=> d!191215 (= lt!228716 e!329784)))

(declare-fun res!233047 () Bool)

(assert (=> d!191215 (=> res!233047 e!329784)))

(assert (=> d!191215 (= res!233047 ((_ is Nil!5371) lt!228674))))

(assert (=> d!191215 (= (isPrefix!653 lt!228674 lt!228688) lt!228716)))

(declare-fun b!545690 () Bool)

(assert (=> b!545690 (= e!329783 (>= (size!4307 lt!228688) (size!4307 lt!228674)))))

(declare-fun b!545687 () Bool)

(declare-fun e!329782 () Bool)

(assert (=> b!545687 (= e!329784 e!329782)))

(declare-fun res!233046 () Bool)

(assert (=> b!545687 (=> (not res!233046) (not e!329782))))

(assert (=> b!545687 (= res!233046 (not ((_ is Nil!5371) lt!228688)))))

(declare-fun b!545688 () Bool)

(declare-fun res!233045 () Bool)

(assert (=> b!545688 (=> (not res!233045) (not e!329782))))

(declare-fun head!1189 (List!5381) C!3612)

(assert (=> b!545688 (= res!233045 (= (head!1189 lt!228674) (head!1189 lt!228688)))))

(declare-fun b!545689 () Bool)

(declare-fun tail!719 (List!5381) List!5381)

(assert (=> b!545689 (= e!329782 (isPrefix!653 (tail!719 lt!228674) (tail!719 lt!228688)))))

(assert (= (and d!191215 (not res!233047)) b!545687))

(assert (= (and b!545687 res!233046) b!545688))

(assert (= (and b!545688 res!233045) b!545689))

(assert (= (and d!191215 (not res!233044)) b!545690))

(declare-fun m!794343 () Bool)

(assert (=> b!545690 m!794343))

(assert (=> b!545690 m!794211))

(declare-fun m!794345 () Bool)

(assert (=> b!545688 m!794345))

(declare-fun m!794347 () Bool)

(assert (=> b!545688 m!794347))

(declare-fun m!794349 () Bool)

(assert (=> b!545689 m!794349))

(declare-fun m!794351 () Bool)

(assert (=> b!545689 m!794351))

(assert (=> b!545689 m!794349))

(assert (=> b!545689 m!794351))

(declare-fun m!794353 () Bool)

(assert (=> b!545689 m!794353))

(assert (=> b!545642 d!191215))

(declare-fun d!191221 () Bool)

(declare-fun e!329786 () Bool)

(assert (=> d!191221 e!329786))

(declare-fun res!233048 () Bool)

(assert (=> d!191221 (=> res!233048 e!329786)))

(declare-fun lt!228717 () Bool)

(assert (=> d!191221 (= res!233048 (not lt!228717))))

(declare-fun e!329787 () Bool)

(assert (=> d!191221 (= lt!228717 e!329787)))

(declare-fun res!233051 () Bool)

(assert (=> d!191221 (=> res!233051 e!329787)))

(assert (=> d!191221 (= res!233051 ((_ is Nil!5371) lt!228666))))

(assert (=> d!191221 (= (isPrefix!653 lt!228666 lt!228681) lt!228717)))

(declare-fun b!545694 () Bool)

(assert (=> b!545694 (= e!329786 (>= (size!4307 lt!228681) (size!4307 lt!228666)))))

(declare-fun b!545691 () Bool)

(declare-fun e!329785 () Bool)

(assert (=> b!545691 (= e!329787 e!329785)))

(declare-fun res!233050 () Bool)

(assert (=> b!545691 (=> (not res!233050) (not e!329785))))

(assert (=> b!545691 (= res!233050 (not ((_ is Nil!5371) lt!228681)))))

(declare-fun b!545692 () Bool)

(declare-fun res!233049 () Bool)

(assert (=> b!545692 (=> (not res!233049) (not e!329785))))

(assert (=> b!545692 (= res!233049 (= (head!1189 lt!228666) (head!1189 lt!228681)))))

(declare-fun b!545693 () Bool)

(assert (=> b!545693 (= e!329785 (isPrefix!653 (tail!719 lt!228666) (tail!719 lt!228681)))))

(assert (= (and d!191221 (not res!233051)) b!545691))

(assert (= (and b!545691 res!233050) b!545692))

(assert (= (and b!545692 res!233049) b!545693))

(assert (= (and d!191221 (not res!233048)) b!545694))

(declare-fun m!794355 () Bool)

(assert (=> b!545694 m!794355))

(assert (=> b!545694 m!794245))

(declare-fun m!794357 () Bool)

(assert (=> b!545692 m!794357))

(declare-fun m!794359 () Bool)

(assert (=> b!545692 m!794359))

(declare-fun m!794361 () Bool)

(assert (=> b!545693 m!794361))

(declare-fun m!794363 () Bool)

(assert (=> b!545693 m!794363))

(assert (=> b!545693 m!794361))

(assert (=> b!545693 m!794363))

(declare-fun m!794365 () Bool)

(assert (=> b!545693 m!794365))

(assert (=> b!545642 d!191221))

(declare-fun d!191223 () Bool)

(declare-fun fromListB!527 (List!5381) BalanceConc!3464)

(assert (=> d!191223 (= (seqFromList!1209 lt!228674) (fromListB!527 lt!228674))))

(declare-fun bs!67656 () Bool)

(assert (= bs!67656 d!191223))

(declare-fun m!794367 () Bool)

(assert (=> bs!67656 m!794367))

(assert (=> b!545642 d!191223))

(declare-fun d!191225 () Bool)

(declare-fun list!2228 (Conc!1728) List!5381)

(assert (=> d!191225 (= (list!2227 (charsOf!640 (_1!3468 (v!16177 lt!228695)))) (list!2228 (c!102895 (charsOf!640 (_1!3468 (v!16177 lt!228695))))))))

(declare-fun bs!67657 () Bool)

(assert (= bs!67657 d!191225))

(declare-fun m!794369 () Bool)

(assert (=> bs!67657 m!794369))

(assert (=> b!545642 d!191225))

(declare-fun d!191227 () Bool)

(declare-fun e!329790 () Bool)

(assert (=> d!191227 e!329790))

(declare-fun res!233054 () Bool)

(assert (=> d!191227 (=> (not res!233054) (not e!329790))))

(declare-fun semiInverseModEq!390 (Int Int) Bool)

(assert (=> d!191227 (= res!233054 (semiInverseModEq!390 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))))))

(declare-fun Unit!9432 () Unit!9425)

(assert (=> d!191227 (= (lemmaInv!159 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) Unit!9432)))

(declare-fun b!545697 () Bool)

(declare-fun equivClasses!373 (Int Int) Bool)

(assert (=> b!545697 (= e!329790 (equivClasses!373 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))))))

(assert (= (and d!191227 res!233054) b!545697))

(declare-fun m!794371 () Bool)

(assert (=> d!191227 m!794371))

(declare-fun m!794373 () Bool)

(assert (=> b!545697 m!794373))

(assert (=> b!545642 d!191227))

(declare-fun d!191229 () Bool)

(declare-fun e!329792 () Bool)

(assert (=> d!191229 e!329792))

(declare-fun res!233055 () Bool)

(assert (=> d!191229 (=> res!233055 e!329792)))

(declare-fun lt!228718 () Bool)

(assert (=> d!191229 (= res!233055 (not lt!228718))))

(declare-fun e!329793 () Bool)

(assert (=> d!191229 (= lt!228718 e!329793)))

(declare-fun res!233058 () Bool)

(assert (=> d!191229 (=> res!233058 e!329793)))

(assert (=> d!191229 (= res!233058 ((_ is Nil!5371) input!2705))))

(assert (=> d!191229 (= (isPrefix!653 input!2705 lt!228681) lt!228718)))

(declare-fun b!545701 () Bool)

(assert (=> b!545701 (= e!329792 (>= (size!4307 lt!228681) (size!4307 input!2705)))))

(declare-fun b!545698 () Bool)

(declare-fun e!329791 () Bool)

(assert (=> b!545698 (= e!329793 e!329791)))

(declare-fun res!233057 () Bool)

(assert (=> b!545698 (=> (not res!233057) (not e!329791))))

(assert (=> b!545698 (= res!233057 (not ((_ is Nil!5371) lt!228681)))))

(declare-fun b!545699 () Bool)

(declare-fun res!233056 () Bool)

(assert (=> b!545699 (=> (not res!233056) (not e!329791))))

(assert (=> b!545699 (= res!233056 (= (head!1189 input!2705) (head!1189 lt!228681)))))

(declare-fun b!545700 () Bool)

(assert (=> b!545700 (= e!329791 (isPrefix!653 (tail!719 input!2705) (tail!719 lt!228681)))))

(assert (= (and d!191229 (not res!233058)) b!545698))

(assert (= (and b!545698 res!233057) b!545699))

(assert (= (and b!545699 res!233056) b!545700))

(assert (= (and d!191229 (not res!233055)) b!545701))

(assert (=> b!545701 m!794355))

(assert (=> b!545701 m!794273))

(declare-fun m!794375 () Bool)

(assert (=> b!545699 m!794375))

(assert (=> b!545699 m!794359))

(declare-fun m!794377 () Bool)

(assert (=> b!545700 m!794377))

(assert (=> b!545700 m!794363))

(assert (=> b!545700 m!794377))

(assert (=> b!545700 m!794363))

(declare-fun m!794379 () Bool)

(assert (=> b!545700 m!794379))

(assert (=> b!545642 d!191229))

(declare-fun d!191231 () Bool)

(assert (=> d!191231 (= (_2!3468 (v!16177 lt!228695)) lt!228664)))

(declare-fun lt!228721 () Unit!9425)

(declare-fun choose!3868 (List!5381 List!5381 List!5381 List!5381 List!5381) Unit!9425)

(assert (=> d!191231 (= lt!228721 (choose!3868 lt!228674 (_2!3468 (v!16177 lt!228695)) lt!228674 lt!228664 input!2705))))

(assert (=> d!191231 (isPrefix!653 lt!228674 input!2705)))

(assert (=> d!191231 (= (lemmaSamePrefixThenSameSuffix!380 lt!228674 (_2!3468 (v!16177 lt!228695)) lt!228674 lt!228664 input!2705) lt!228721)))

(declare-fun bs!67658 () Bool)

(assert (= bs!67658 d!191231))

(declare-fun m!794381 () Bool)

(assert (=> bs!67658 m!794381))

(declare-fun m!794383 () Bool)

(assert (=> bs!67658 m!794383))

(assert (=> b!545642 d!191231))

(declare-fun d!191233 () Bool)

(declare-fun lt!228724 () List!5381)

(assert (=> d!191233 (= (++!1499 lt!228674 lt!228724) input!2705)))

(declare-fun e!329796 () List!5381)

(assert (=> d!191233 (= lt!228724 e!329796)))

(declare-fun c!102911 () Bool)

(assert (=> d!191233 (= c!102911 ((_ is Cons!5371) lt!228674))))

(assert (=> d!191233 (>= (size!4307 input!2705) (size!4307 lt!228674))))

(assert (=> d!191233 (= (getSuffix!176 input!2705 lt!228674) lt!228724)))

(declare-fun b!545706 () Bool)

(assert (=> b!545706 (= e!329796 (getSuffix!176 (tail!719 input!2705) (t!74682 lt!228674)))))

(declare-fun b!545707 () Bool)

(assert (=> b!545707 (= e!329796 input!2705)))

(assert (= (and d!191233 c!102911) b!545706))

(assert (= (and d!191233 (not c!102911)) b!545707))

(declare-fun m!794385 () Bool)

(assert (=> d!191233 m!794385))

(assert (=> d!191233 m!794273))

(assert (=> d!191233 m!794211))

(assert (=> b!545706 m!794377))

(assert (=> b!545706 m!794377))

(declare-fun m!794387 () Bool)

(assert (=> b!545706 m!794387))

(assert (=> b!545642 d!191233))

(declare-fun d!191235 () Bool)

(assert (=> d!191235 (= (size!4306 (_1!3468 (v!16177 lt!228695))) (size!4307 (originalCharacters!1050 (_1!3468 (v!16177 lt!228695)))))))

(declare-fun Unit!9435 () Unit!9425)

(assert (=> d!191235 (= (lemmaCharactersSize!90 (_1!3468 (v!16177 lt!228695))) Unit!9435)))

(declare-fun bs!67659 () Bool)

(assert (= bs!67659 d!191235))

(assert (=> bs!67659 m!794269))

(assert (=> b!545642 d!191235))

(declare-fun d!191237 () Bool)

(declare-fun lt!228727 () BalanceConc!3464)

(assert (=> d!191237 (= (list!2227 lt!228727) (originalCharacters!1050 (_1!3468 (v!16177 lt!228695))))))

(declare-fun dynLambda!3137 (Int TokenValue!1035) BalanceConc!3464)

(assert (=> d!191237 (= lt!228727 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (value!33680 (_1!3468 (v!16177 lt!228695)))))))

(assert (=> d!191237 (= (charsOf!640 (_1!3468 (v!16177 lt!228695))) lt!228727)))

(declare-fun b_lambda!20961 () Bool)

(assert (=> (not b_lambda!20961) (not d!191237)))

(declare-fun tb!47875 () Bool)

(declare-fun t!74690 () Bool)

(assert (=> (and b!545622 (= (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74690) tb!47875))

(declare-fun b!545712 () Bool)

(declare-fun e!329799 () Bool)

(declare-fun tp!173305 () Bool)

(declare-fun inv!6742 (Conc!1728) Bool)

(assert (=> b!545712 (= e!329799 (and (inv!6742 (c!102895 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (value!33680 (_1!3468 (v!16177 lt!228695)))))) tp!173305))))

(declare-fun result!53532 () Bool)

(declare-fun inv!6743 (BalanceConc!3464) Bool)

(assert (=> tb!47875 (= result!53532 (and (inv!6743 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (value!33680 (_1!3468 (v!16177 lt!228695))))) e!329799))))

(assert (= tb!47875 b!545712))

(declare-fun m!794389 () Bool)

(assert (=> b!545712 m!794389))

(declare-fun m!794391 () Bool)

(assert (=> tb!47875 m!794391))

(assert (=> d!191237 t!74690))

(declare-fun b_and!53287 () Bool)

(assert (= b_and!53277 (and (=> t!74690 result!53532) b_and!53287)))

(declare-fun t!74692 () Bool)

(declare-fun tb!47877 () Bool)

(assert (=> (and b!545634 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74692) tb!47877))

(declare-fun result!53536 () Bool)

(assert (= result!53536 result!53532))

(assert (=> d!191237 t!74692))

(declare-fun b_and!53289 () Bool)

(assert (= b_and!53281 (and (=> t!74692 result!53536) b_and!53289)))

(declare-fun m!794393 () Bool)

(assert (=> d!191237 m!794393))

(declare-fun m!794395 () Bool)

(assert (=> d!191237 m!794395))

(assert (=> b!545642 d!191237))

(declare-fun d!191239 () Bool)

(declare-fun e!329801 () Bool)

(assert (=> d!191239 e!329801))

(declare-fun res!233059 () Bool)

(assert (=> d!191239 (=> res!233059 e!329801)))

(declare-fun lt!228728 () Bool)

(assert (=> d!191239 (= res!233059 (not lt!228728))))

(declare-fun e!329802 () Bool)

(assert (=> d!191239 (= lt!228728 e!329802)))

(declare-fun res!233062 () Bool)

(assert (=> d!191239 (=> res!233062 e!329802)))

(assert (=> d!191239 (= res!233062 ((_ is Nil!5371) input!2705))))

(assert (=> d!191239 (= (isPrefix!653 input!2705 input!2705) lt!228728)))

(declare-fun b!545716 () Bool)

(assert (=> b!545716 (= e!329801 (>= (size!4307 input!2705) (size!4307 input!2705)))))

(declare-fun b!545713 () Bool)

(declare-fun e!329800 () Bool)

(assert (=> b!545713 (= e!329802 e!329800)))

(declare-fun res!233061 () Bool)

(assert (=> b!545713 (=> (not res!233061) (not e!329800))))

(assert (=> b!545713 (= res!233061 (not ((_ is Nil!5371) input!2705)))))

(declare-fun b!545714 () Bool)

(declare-fun res!233060 () Bool)

(assert (=> b!545714 (=> (not res!233060) (not e!329800))))

(assert (=> b!545714 (= res!233060 (= (head!1189 input!2705) (head!1189 input!2705)))))

(declare-fun b!545715 () Bool)

(assert (=> b!545715 (= e!329800 (isPrefix!653 (tail!719 input!2705) (tail!719 input!2705)))))

(assert (= (and d!191239 (not res!233062)) b!545713))

(assert (= (and b!545713 res!233061) b!545714))

(assert (= (and b!545714 res!233060) b!545715))

(assert (= (and d!191239 (not res!233059)) b!545716))

(assert (=> b!545716 m!794273))

(assert (=> b!545716 m!794273))

(assert (=> b!545714 m!794375))

(assert (=> b!545714 m!794375))

(assert (=> b!545715 m!794377))

(assert (=> b!545715 m!794377))

(assert (=> b!545715 m!794377))

(assert (=> b!545715 m!794377))

(declare-fun m!794397 () Bool)

(assert (=> b!545715 m!794397))

(assert (=> b!545642 d!191239))

(declare-fun d!191241 () Bool)

(assert (=> d!191241 (ruleValid!231 thiss!22590 (rule!1727 token!491))))

(declare-fun lt!228729 () Unit!9425)

(assert (=> d!191241 (= lt!228729 (choose!3863 thiss!22590 (rule!1727 token!491) rules!3103))))

(assert (=> d!191241 (contains!1253 rules!3103 (rule!1727 token!491))))

(assert (=> d!191241 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!90 thiss!22590 (rule!1727 token!491) rules!3103) lt!228729)))

(declare-fun bs!67660 () Bool)

(assert (= bs!67660 d!191241))

(assert (=> bs!67660 m!794201))

(declare-fun m!794399 () Bool)

(assert (=> bs!67660 m!794399))

(assert (=> bs!67660 m!794289))

(assert (=> b!545642 d!191241))

(declare-fun d!191243 () Bool)

(assert (=> d!191243 (isPrefix!653 input!2705 (++!1499 input!2705 suffix!1342))))

(declare-fun lt!228732 () Unit!9425)

(declare-fun choose!3869 (List!5381 List!5381) Unit!9425)

(assert (=> d!191243 (= lt!228732 (choose!3869 input!2705 suffix!1342))))

(assert (=> d!191243 (= (lemmaConcatTwoListThenFirstIsPrefix!504 input!2705 suffix!1342) lt!228732)))

(declare-fun bs!67661 () Bool)

(assert (= bs!67661 d!191243))

(assert (=> bs!67661 m!794285))

(assert (=> bs!67661 m!794285))

(declare-fun m!794401 () Bool)

(assert (=> bs!67661 m!794401))

(declare-fun m!794403 () Bool)

(assert (=> bs!67661 m!794403))

(assert (=> b!545642 d!191243))

(declare-fun d!191245 () Bool)

(assert (=> d!191245 (isPrefix!653 lt!228666 (++!1499 lt!228666 suffix!1342))))

(declare-fun lt!228733 () Unit!9425)

(assert (=> d!191245 (= lt!228733 (choose!3869 lt!228666 suffix!1342))))

(assert (=> d!191245 (= (lemmaConcatTwoListThenFirstIsPrefix!504 lt!228666 suffix!1342) lt!228733)))

(declare-fun bs!67662 () Bool)

(assert (= bs!67662 d!191245))

(assert (=> bs!67662 m!794261))

(assert (=> bs!67662 m!794261))

(declare-fun m!794405 () Bool)

(assert (=> bs!67662 m!794405))

(declare-fun m!794407 () Bool)

(assert (=> bs!67662 m!794407))

(assert (=> b!545642 d!191245))

(declare-fun d!191247 () Bool)

(declare-fun res!233067 () Bool)

(declare-fun e!329805 () Bool)

(assert (=> d!191247 (=> (not res!233067) (not e!329805))))

(declare-fun validRegex!448 (Regex!1345) Bool)

(assert (=> d!191247 (= res!233067 (validRegex!448 (regex!1011 (rule!1727 token!491))))))

(assert (=> d!191247 (= (ruleValid!231 thiss!22590 (rule!1727 token!491)) e!329805)))

(declare-fun b!545721 () Bool)

(declare-fun res!233068 () Bool)

(assert (=> b!545721 (=> (not res!233068) (not e!329805))))

(declare-fun nullable!353 (Regex!1345) Bool)

(assert (=> b!545721 (= res!233068 (not (nullable!353 (regex!1011 (rule!1727 token!491)))))))

(declare-fun b!545722 () Bool)

(assert (=> b!545722 (= e!329805 (not (= (tag!1273 (rule!1727 token!491)) (String!6920 ""))))))

(assert (= (and d!191247 res!233067) b!545721))

(assert (= (and b!545721 res!233068) b!545722))

(declare-fun m!794409 () Bool)

(assert (=> d!191247 m!794409))

(declare-fun m!794411 () Bool)

(assert (=> b!545721 m!794411))

(assert (=> b!545642 d!191247))

(declare-fun d!191249 () Bool)

(assert (=> d!191249 (and (= lt!228666 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!228736 () Unit!9425)

(declare-fun choose!3870 (List!5381 List!5381 List!5381 List!5381) Unit!9425)

(assert (=> d!191249 (= lt!228736 (choose!3870 lt!228666 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!191249 (= (++!1499 lt!228666 suffix!1342) (++!1499 input!2705 suffix!1342))))

(assert (=> d!191249 (= (lemmaConcatSameAndSameSizesThenSameLists!96 lt!228666 suffix!1342 input!2705 suffix!1342) lt!228736)))

(declare-fun bs!67663 () Bool)

(assert (= bs!67663 d!191249))

(declare-fun m!794413 () Bool)

(assert (=> bs!67663 m!794413))

(assert (=> bs!67663 m!794261))

(assert (=> bs!67663 m!794285))

(assert (=> b!545642 d!191249))

(declare-fun d!191251 () Bool)

(declare-fun res!233069 () Bool)

(declare-fun e!329806 () Bool)

(assert (=> d!191251 (=> (not res!233069) (not e!329806))))

(assert (=> d!191251 (= res!233069 (validRegex!448 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))))))

(assert (=> d!191251 (= (ruleValid!231 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695)))) e!329806)))

(declare-fun b!545723 () Bool)

(declare-fun res!233070 () Bool)

(assert (=> b!545723 (=> (not res!233070) (not e!329806))))

(assert (=> b!545723 (= res!233070 (not (nullable!353 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))))))

(declare-fun b!545724 () Bool)

(assert (=> b!545724 (= e!329806 (not (= (tag!1273 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (String!6920 ""))))))

(assert (= (and d!191251 res!233069) b!545723))

(assert (= (and b!545723 res!233070) b!545724))

(declare-fun m!794415 () Bool)

(assert (=> d!191251 m!794415))

(declare-fun m!794417 () Bool)

(assert (=> b!545723 m!794417))

(assert (=> b!545642 d!191251))

(declare-fun d!191253 () Bool)

(declare-fun lt!228739 () Int)

(assert (=> d!191253 (>= lt!228739 0)))

(declare-fun e!329809 () Int)

(assert (=> d!191253 (= lt!228739 e!329809)))

(declare-fun c!102914 () Bool)

(assert (=> d!191253 (= c!102914 ((_ is Nil!5371) lt!228666))))

(assert (=> d!191253 (= (size!4307 lt!228666) lt!228739)))

(declare-fun b!545729 () Bool)

(assert (=> b!545729 (= e!329809 0)))

(declare-fun b!545730 () Bool)

(assert (=> b!545730 (= e!329809 (+ 1 (size!4307 (t!74682 lt!228666))))))

(assert (= (and d!191253 c!102914) b!545729))

(assert (= (and d!191253 (not c!102914)) b!545730))

(declare-fun m!794419 () Bool)

(assert (=> b!545730 m!794419))

(assert (=> b!545642 d!191253))

(declare-fun d!191255 () Bool)

(assert (=> d!191255 (isPrefix!653 lt!228674 (++!1499 lt!228674 (_2!3468 (v!16177 lt!228695))))))

(declare-fun lt!228740 () Unit!9425)

(assert (=> d!191255 (= lt!228740 (choose!3869 lt!228674 (_2!3468 (v!16177 lt!228695))))))

(assert (=> d!191255 (= (lemmaConcatTwoListThenFirstIsPrefix!504 lt!228674 (_2!3468 (v!16177 lt!228695))) lt!228740)))

(declare-fun bs!67664 () Bool)

(assert (= bs!67664 d!191255))

(assert (=> bs!67664 m!794199))

(assert (=> bs!67664 m!794199))

(declare-fun m!794421 () Bool)

(assert (=> bs!67664 m!794421))

(declare-fun m!794423 () Bool)

(assert (=> bs!67664 m!794423))

(assert (=> b!545642 d!191255))

(declare-fun d!191257 () Bool)

(declare-fun dynLambda!3138 (Int BalanceConc!3464) TokenValue!1035)

(assert (=> d!191257 (= (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228665) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) lt!228665))))

(declare-fun b_lambda!20963 () Bool)

(assert (=> (not b_lambda!20963) (not d!191257)))

(declare-fun tb!47879 () Bool)

(declare-fun t!74694 () Bool)

(assert (=> (and b!545622 (= (toValue!1858 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74694) tb!47879))

(declare-fun result!53538 () Bool)

(assert (=> tb!47879 (= result!53538 (inv!21 (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) lt!228665)))))

(declare-fun m!794425 () Bool)

(assert (=> tb!47879 m!794425))

(assert (=> d!191257 t!74694))

(declare-fun b_and!53291 () Bool)

(assert (= b_and!53275 (and (=> t!74694 result!53538) b_and!53291)))

(declare-fun t!74696 () Bool)

(declare-fun tb!47881 () Bool)

(assert (=> (and b!545634 (= (toValue!1858 (transformation!1011 (h!10774 rules!3103))) (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74696) tb!47881))

(declare-fun result!53542 () Bool)

(assert (= result!53542 result!53538))

(assert (=> d!191257 t!74696))

(declare-fun b_and!53293 () Bool)

(assert (= b_and!53279 (and (=> t!74696 result!53542) b_and!53293)))

(declare-fun m!794427 () Bool)

(assert (=> d!191257 m!794427))

(assert (=> b!545642 d!191257))

(declare-fun d!191259 () Bool)

(declare-fun e!329813 () Bool)

(assert (=> d!191259 e!329813))

(declare-fun res!233071 () Bool)

(assert (=> d!191259 (=> (not res!233071) (not e!329813))))

(assert (=> d!191259 (= res!233071 (semiInverseModEq!390 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))))))

(declare-fun Unit!9437 () Unit!9425)

(assert (=> d!191259 (= (lemmaInv!159 (transformation!1011 (rule!1727 token!491))) Unit!9437)))

(declare-fun b!545733 () Bool)

(assert (=> b!545733 (= e!329813 (equivClasses!373 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))))))

(assert (= (and d!191259 res!233071) b!545733))

(declare-fun m!794429 () Bool)

(assert (=> d!191259 m!794429))

(declare-fun m!794431 () Bool)

(assert (=> b!545733 m!794431))

(assert (=> b!545642 d!191259))

(declare-fun d!191261 () Bool)

(declare-fun lt!228741 () Int)

(assert (=> d!191261 (>= lt!228741 0)))

(declare-fun e!329814 () Int)

(assert (=> d!191261 (= lt!228741 e!329814)))

(declare-fun c!102915 () Bool)

(assert (=> d!191261 (= c!102915 ((_ is Nil!5371) lt!228674))))

(assert (=> d!191261 (= (size!4307 lt!228674) lt!228741)))

(declare-fun b!545734 () Bool)

(assert (=> b!545734 (= e!329814 0)))

(declare-fun b!545735 () Bool)

(assert (=> b!545735 (= e!329814 (+ 1 (size!4307 (t!74682 lt!228674))))))

(assert (= (and d!191261 c!102915) b!545734))

(assert (= (and d!191261 (not c!102915)) b!545735))

(declare-fun m!794433 () Bool)

(assert (=> b!545735 m!794433))

(assert (=> b!545642 d!191261))

(declare-fun d!191263 () Bool)

(assert (=> d!191263 (= (size!4306 token!491) (size!4307 (originalCharacters!1050 token!491)))))

(declare-fun Unit!9438 () Unit!9425)

(assert (=> d!191263 (= (lemmaCharactersSize!90 token!491) Unit!9438)))

(declare-fun bs!67665 () Bool)

(assert (= bs!67665 d!191263))

(assert (=> bs!67665 m!794253))

(assert (=> b!545642 d!191263))

(declare-fun d!191265 () Bool)

(declare-fun e!329816 () Bool)

(assert (=> d!191265 e!329816))

(declare-fun res!233072 () Bool)

(assert (=> d!191265 (=> res!233072 e!329816)))

(declare-fun lt!228742 () Bool)

(assert (=> d!191265 (= res!233072 (not lt!228742))))

(declare-fun e!329817 () Bool)

(assert (=> d!191265 (= lt!228742 e!329817)))

(declare-fun res!233075 () Bool)

(assert (=> d!191265 (=> res!233075 e!329817)))

(assert (=> d!191265 (= res!233075 ((_ is Nil!5371) input!2705))))

(assert (=> d!191265 (= (isPrefix!653 input!2705 lt!228669) lt!228742)))

(declare-fun b!545739 () Bool)

(assert (=> b!545739 (= e!329816 (>= (size!4307 lt!228669) (size!4307 input!2705)))))

(declare-fun b!545736 () Bool)

(declare-fun e!329815 () Bool)

(assert (=> b!545736 (= e!329817 e!329815)))

(declare-fun res!233074 () Bool)

(assert (=> b!545736 (=> (not res!233074) (not e!329815))))

(assert (=> b!545736 (= res!233074 (not ((_ is Nil!5371) lt!228669)))))

(declare-fun b!545737 () Bool)

(declare-fun res!233073 () Bool)

(assert (=> b!545737 (=> (not res!233073) (not e!329815))))

(assert (=> b!545737 (= res!233073 (= (head!1189 input!2705) (head!1189 lt!228669)))))

(declare-fun b!545738 () Bool)

(assert (=> b!545738 (= e!329815 (isPrefix!653 (tail!719 input!2705) (tail!719 lt!228669)))))

(assert (= (and d!191265 (not res!233075)) b!545736))

(assert (= (and b!545736 res!233074) b!545737))

(assert (= (and b!545737 res!233073) b!545738))

(assert (= (and d!191265 (not res!233072)) b!545739))

(assert (=> b!545739 m!794271))

(assert (=> b!545739 m!794273))

(assert (=> b!545737 m!794375))

(declare-fun m!794435 () Bool)

(assert (=> b!545737 m!794435))

(assert (=> b!545738 m!794377))

(declare-fun m!794437 () Bool)

(assert (=> b!545738 m!794437))

(assert (=> b!545738 m!794377))

(assert (=> b!545738 m!794437))

(declare-fun m!794439 () Bool)

(assert (=> b!545738 m!794439))

(assert (=> b!545642 d!191265))

(declare-fun d!191267 () Bool)

(assert (=> d!191267 (= (list!2227 (charsOf!640 token!491)) (list!2228 (c!102895 (charsOf!640 token!491))))))

(declare-fun bs!67666 () Bool)

(assert (= bs!67666 d!191267))

(declare-fun m!794441 () Bool)

(assert (=> bs!67666 m!794441))

(assert (=> b!545621 d!191267))

(declare-fun d!191269 () Bool)

(declare-fun lt!228743 () BalanceConc!3464)

(assert (=> d!191269 (= (list!2227 lt!228743) (originalCharacters!1050 token!491))))

(assert (=> d!191269 (= lt!228743 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (value!33680 token!491)))))

(assert (=> d!191269 (= (charsOf!640 token!491) lt!228743)))

(declare-fun b_lambda!20965 () Bool)

(assert (=> (not b_lambda!20965) (not d!191269)))

(declare-fun t!74698 () Bool)

(declare-fun tb!47883 () Bool)

(assert (=> (and b!545622 (= (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toChars!1717 (transformation!1011 (rule!1727 token!491)))) t!74698) tb!47883))

(declare-fun b!545740 () Bool)

(declare-fun e!329818 () Bool)

(declare-fun tp!173306 () Bool)

(assert (=> b!545740 (= e!329818 (and (inv!6742 (c!102895 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (value!33680 token!491)))) tp!173306))))

(declare-fun result!53544 () Bool)

(assert (=> tb!47883 (= result!53544 (and (inv!6743 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (value!33680 token!491))) e!329818))))

(assert (= tb!47883 b!545740))

(declare-fun m!794443 () Bool)

(assert (=> b!545740 m!794443))

(declare-fun m!794445 () Bool)

(assert (=> tb!47883 m!794445))

(assert (=> d!191269 t!74698))

(declare-fun b_and!53295 () Bool)

(assert (= b_and!53287 (and (=> t!74698 result!53544) b_and!53295)))

(declare-fun tb!47885 () Bool)

(declare-fun t!74700 () Bool)

(assert (=> (and b!545634 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 token!491)))) t!74700) tb!47885))

(declare-fun result!53546 () Bool)

(assert (= result!53546 result!53544))

(assert (=> d!191269 t!74700))

(declare-fun b_and!53297 () Bool)

(assert (= b_and!53289 (and (=> t!74700 result!53546) b_and!53297)))

(declare-fun m!794447 () Bool)

(assert (=> d!191269 m!794447))

(declare-fun m!794449 () Bool)

(assert (=> d!191269 m!794449))

(assert (=> b!545621 d!191269))

(declare-fun d!191271 () Bool)

(assert (=> d!191271 (= (inv!6735 (tag!1273 (h!10774 rules!3103))) (= (mod (str.len (value!33679 (tag!1273 (h!10774 rules!3103)))) 2) 0))))

(assert (=> b!545620 d!191271))

(declare-fun d!191273 () Bool)

(declare-fun res!233078 () Bool)

(declare-fun e!329821 () Bool)

(assert (=> d!191273 (=> (not res!233078) (not e!329821))))

(assert (=> d!191273 (= res!233078 (semiInverseModEq!390 (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toValue!1858 (transformation!1011 (h!10774 rules!3103)))))))

(assert (=> d!191273 (= (inv!6738 (transformation!1011 (h!10774 rules!3103))) e!329821)))

(declare-fun b!545743 () Bool)

(assert (=> b!545743 (= e!329821 (equivClasses!373 (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toValue!1858 (transformation!1011 (h!10774 rules!3103)))))))

(assert (= (and d!191273 res!233078) b!545743))

(declare-fun m!794451 () Bool)

(assert (=> d!191273 m!794451))

(declare-fun m!794453 () Bool)

(assert (=> b!545743 m!794453))

(assert (=> b!545620 d!191273))

(declare-fun d!191275 () Bool)

(declare-fun lt!228744 () Int)

(assert (=> d!191275 (>= lt!228744 0)))

(declare-fun e!329822 () Int)

(assert (=> d!191275 (= lt!228744 e!329822)))

(declare-fun c!102916 () Bool)

(assert (=> d!191275 (= c!102916 ((_ is Nil!5371) (originalCharacters!1050 token!491)))))

(assert (=> d!191275 (= (size!4307 (originalCharacters!1050 token!491)) lt!228744)))

(declare-fun b!545744 () Bool)

(assert (=> b!545744 (= e!329822 0)))

(declare-fun b!545745 () Bool)

(assert (=> b!545745 (= e!329822 (+ 1 (size!4307 (t!74682 (originalCharacters!1050 token!491)))))))

(assert (= (and d!191275 c!102916) b!545744))

(assert (= (and d!191275 (not c!102916)) b!545745))

(declare-fun m!794455 () Bool)

(assert (=> b!545745 m!794455))

(assert (=> b!545639 d!191275))

(declare-fun d!191277 () Bool)

(assert (=> d!191277 (= (inv!6735 (tag!1273 (rule!1727 token!491))) (= (mod (str.len (value!33679 (tag!1273 (rule!1727 token!491)))) 2) 0))))

(assert (=> b!545640 d!191277))

(declare-fun d!191279 () Bool)

(declare-fun res!233079 () Bool)

(declare-fun e!329823 () Bool)

(assert (=> d!191279 (=> (not res!233079) (not e!329823))))

(assert (=> d!191279 (= res!233079 (semiInverseModEq!390 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))))))

(assert (=> d!191279 (= (inv!6738 (transformation!1011 (rule!1727 token!491))) e!329823)))

(declare-fun b!545746 () Bool)

(assert (=> b!545746 (= e!329823 (equivClasses!373 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))))))

(assert (= (and d!191279 res!233079) b!545746))

(assert (=> d!191279 m!794429))

(assert (=> b!545746 m!794431))

(assert (=> b!545640 d!191279))

(declare-fun d!191281 () Bool)

(declare-fun lt!228747 () Bool)

(declare-fun content!937 (List!5383) (InoxSet Rule!1822))

(assert (=> d!191281 (= lt!228747 (select (content!937 rules!3103) (rule!1727 token!491)))))

(declare-fun e!329829 () Bool)

(assert (=> d!191281 (= lt!228747 e!329829)))

(declare-fun res!233085 () Bool)

(assert (=> d!191281 (=> (not res!233085) (not e!329829))))

(assert (=> d!191281 (= res!233085 ((_ is Cons!5373) rules!3103))))

(assert (=> d!191281 (= (contains!1253 rules!3103 (rule!1727 token!491)) lt!228747)))

(declare-fun b!545751 () Bool)

(declare-fun e!329828 () Bool)

(assert (=> b!545751 (= e!329829 e!329828)))

(declare-fun res!233084 () Bool)

(assert (=> b!545751 (=> res!233084 e!329828)))

(assert (=> b!545751 (= res!233084 (= (h!10774 rules!3103) (rule!1727 token!491)))))

(declare-fun b!545752 () Bool)

(assert (=> b!545752 (= e!329828 (contains!1253 (t!74684 rules!3103) (rule!1727 token!491)))))

(assert (= (and d!191281 res!233085) b!545751))

(assert (= (and b!545751 (not res!233084)) b!545752))

(declare-fun m!794457 () Bool)

(assert (=> d!191281 m!794457))

(declare-fun m!794459 () Bool)

(assert (=> d!191281 m!794459))

(declare-fun m!794461 () Bool)

(assert (=> b!545752 m!794461))

(assert (=> b!545615 d!191281))

(declare-fun d!191283 () Bool)

(declare-fun isEmpty!3881 (Option!1361) Bool)

(assert (=> d!191283 (= (isDefined!1173 lt!228662) (not (isEmpty!3881 lt!228662)))))

(declare-fun bs!67667 () Bool)

(assert (= bs!67667 d!191283))

(declare-fun m!794463 () Bool)

(assert (=> bs!67667 m!794463))

(assert (=> b!545616 d!191283))

(declare-fun b!545771 () Bool)

(declare-fun res!233101 () Bool)

(declare-fun e!329837 () Bool)

(assert (=> b!545771 (=> (not res!233101) (not e!329837))))

(declare-fun lt!228760 () Option!1361)

(assert (=> b!545771 (= res!233101 (= (value!33680 (_1!3468 (get!2031 lt!228760))) (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (get!2031 lt!228760)))) (seqFromList!1209 (originalCharacters!1050 (_1!3468 (get!2031 lt!228760)))))))))

(declare-fun b!545772 () Bool)

(declare-fun e!329838 () Option!1361)

(declare-fun lt!228761 () Option!1361)

(declare-fun lt!228758 () Option!1361)

(assert (=> b!545772 (= e!329838 (ite (and ((_ is None!1360) lt!228761) ((_ is None!1360) lt!228758)) None!1360 (ite ((_ is None!1360) lt!228758) lt!228761 (ite ((_ is None!1360) lt!228761) lt!228758 (ite (>= (size!4306 (_1!3468 (v!16177 lt!228761))) (size!4306 (_1!3468 (v!16177 lt!228758)))) lt!228761 lt!228758)))))))

(declare-fun call!38324 () Option!1361)

(assert (=> b!545772 (= lt!228761 call!38324)))

(assert (=> b!545772 (= lt!228758 (maxPrefix!595 thiss!22590 (t!74684 rules!3103) lt!228669))))

(declare-fun b!545773 () Bool)

(declare-fun res!233100 () Bool)

(assert (=> b!545773 (=> (not res!233100) (not e!329837))))

(assert (=> b!545773 (= res!233100 (= (++!1499 (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228760)))) (_2!3468 (get!2031 lt!228760))) lt!228669))))

(declare-fun b!545774 () Bool)

(assert (=> b!545774 (= e!329837 (contains!1253 rules!3103 (rule!1727 (_1!3468 (get!2031 lt!228760)))))))

(declare-fun b!545775 () Bool)

(declare-fun res!233106 () Bool)

(assert (=> b!545775 (=> (not res!233106) (not e!329837))))

(assert (=> b!545775 (= res!233106 (< (size!4307 (_2!3468 (get!2031 lt!228760))) (size!4307 lt!228669)))))

(declare-fun b!545776 () Bool)

(declare-fun e!329836 () Bool)

(assert (=> b!545776 (= e!329836 e!329837)))

(declare-fun res!233105 () Bool)

(assert (=> b!545776 (=> (not res!233105) (not e!329837))))

(assert (=> b!545776 (= res!233105 (isDefined!1173 lt!228760))))

(declare-fun b!545777 () Bool)

(declare-fun res!233102 () Bool)

(assert (=> b!545777 (=> (not res!233102) (not e!329837))))

(assert (=> b!545777 (= res!233102 (= (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228760)))) (originalCharacters!1050 (_1!3468 (get!2031 lt!228760)))))))

(declare-fun d!191285 () Bool)

(assert (=> d!191285 e!329836))

(declare-fun res!233103 () Bool)

(assert (=> d!191285 (=> res!233103 e!329836)))

(assert (=> d!191285 (= res!233103 (isEmpty!3881 lt!228760))))

(assert (=> d!191285 (= lt!228760 e!329838)))

(declare-fun c!102919 () Bool)

(assert (=> d!191285 (= c!102919 (and ((_ is Cons!5373) rules!3103) ((_ is Nil!5373) (t!74684 rules!3103))))))

(declare-fun lt!228759 () Unit!9425)

(declare-fun lt!228762 () Unit!9425)

(assert (=> d!191285 (= lt!228759 lt!228762)))

(assert (=> d!191285 (isPrefix!653 lt!228669 lt!228669)))

(assert (=> d!191285 (= lt!228762 (lemmaIsPrefixRefl!393 lt!228669 lt!228669))))

(declare-fun rulesValidInductive!355 (LexerInterface!897 List!5383) Bool)

(assert (=> d!191285 (rulesValidInductive!355 thiss!22590 rules!3103)))

(assert (=> d!191285 (= (maxPrefix!595 thiss!22590 rules!3103 lt!228669) lt!228760)))

(declare-fun b!545778 () Bool)

(declare-fun res!233104 () Bool)

(assert (=> b!545778 (=> (not res!233104) (not e!329837))))

(assert (=> b!545778 (= res!233104 (matchR!504 (regex!1011 (rule!1727 (_1!3468 (get!2031 lt!228760)))) (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228760))))))))

(declare-fun bm!38319 () Bool)

(assert (=> bm!38319 (= call!38324 (maxPrefixOneRule!310 thiss!22590 (h!10774 rules!3103) lt!228669))))

(declare-fun b!545779 () Bool)

(assert (=> b!545779 (= e!329838 call!38324)))

(assert (= (and d!191285 c!102919) b!545779))

(assert (= (and d!191285 (not c!102919)) b!545772))

(assert (= (or b!545779 b!545772) bm!38319))

(assert (= (and d!191285 (not res!233103)) b!545776))

(assert (= (and b!545776 res!233105) b!545777))

(assert (= (and b!545777 res!233102) b!545775))

(assert (= (and b!545775 res!233106) b!545773))

(assert (= (and b!545773 res!233100) b!545771))

(assert (= (and b!545771 res!233101) b!545778))

(assert (= (and b!545778 res!233104) b!545774))

(declare-fun m!794465 () Bool)

(assert (=> b!545775 m!794465))

(declare-fun m!794467 () Bool)

(assert (=> b!545775 m!794467))

(assert (=> b!545775 m!794271))

(declare-fun m!794469 () Bool)

(assert (=> d!191285 m!794469))

(declare-fun m!794471 () Bool)

(assert (=> d!191285 m!794471))

(declare-fun m!794473 () Bool)

(assert (=> d!191285 m!794473))

(declare-fun m!794475 () Bool)

(assert (=> d!191285 m!794475))

(declare-fun m!794477 () Bool)

(assert (=> bm!38319 m!794477))

(declare-fun m!794479 () Bool)

(assert (=> b!545776 m!794479))

(assert (=> b!545771 m!794465))

(declare-fun m!794481 () Bool)

(assert (=> b!545771 m!794481))

(assert (=> b!545771 m!794481))

(declare-fun m!794483 () Bool)

(assert (=> b!545771 m!794483))

(declare-fun m!794485 () Bool)

(assert (=> b!545772 m!794485))

(assert (=> b!545777 m!794465))

(declare-fun m!794487 () Bool)

(assert (=> b!545777 m!794487))

(assert (=> b!545777 m!794487))

(declare-fun m!794489 () Bool)

(assert (=> b!545777 m!794489))

(assert (=> b!545778 m!794465))

(assert (=> b!545778 m!794487))

(assert (=> b!545778 m!794487))

(assert (=> b!545778 m!794489))

(assert (=> b!545778 m!794489))

(declare-fun m!794491 () Bool)

(assert (=> b!545778 m!794491))

(assert (=> b!545774 m!794465))

(declare-fun m!794493 () Bool)

(assert (=> b!545774 m!794493))

(assert (=> b!545773 m!794465))

(assert (=> b!545773 m!794487))

(assert (=> b!545773 m!794487))

(assert (=> b!545773 m!794489))

(assert (=> b!545773 m!794489))

(declare-fun m!794495 () Bool)

(assert (=> b!545773 m!794495))

(assert (=> b!545616 d!191285))

(declare-fun b!545783 () Bool)

(declare-fun lt!228763 () List!5381)

(declare-fun e!329839 () Bool)

(assert (=> b!545783 (= e!329839 (or (not (= suffix!1342 Nil!5371)) (= lt!228763 input!2705)))))

(declare-fun d!191287 () Bool)

(assert (=> d!191287 e!329839))

(declare-fun res!233108 () Bool)

(assert (=> d!191287 (=> (not res!233108) (not e!329839))))

(assert (=> d!191287 (= res!233108 (= (content!935 lt!228763) ((_ map or) (content!935 input!2705) (content!935 suffix!1342))))))

(declare-fun e!329840 () List!5381)

(assert (=> d!191287 (= lt!228763 e!329840)))

(declare-fun c!102920 () Bool)

(assert (=> d!191287 (= c!102920 ((_ is Nil!5371) input!2705))))

(assert (=> d!191287 (= (++!1499 input!2705 suffix!1342) lt!228763)))

(declare-fun b!545781 () Bool)

(assert (=> b!545781 (= e!329840 (Cons!5371 (h!10772 input!2705) (++!1499 (t!74682 input!2705) suffix!1342)))))

(declare-fun b!545782 () Bool)

(declare-fun res!233107 () Bool)

(assert (=> b!545782 (=> (not res!233107) (not e!329839))))

(assert (=> b!545782 (= res!233107 (= (size!4307 lt!228763) (+ (size!4307 input!2705) (size!4307 suffix!1342))))))

(declare-fun b!545780 () Bool)

(assert (=> b!545780 (= e!329840 suffix!1342)))

(assert (= (and d!191287 c!102920) b!545780))

(assert (= (and d!191287 (not c!102920)) b!545781))

(assert (= (and d!191287 res!233108) b!545782))

(assert (= (and b!545782 res!233107) b!545783))

(declare-fun m!794497 () Bool)

(assert (=> d!191287 m!794497))

(declare-fun m!794499 () Bool)

(assert (=> d!191287 m!794499))

(declare-fun m!794501 () Bool)

(assert (=> d!191287 m!794501))

(declare-fun m!794503 () Bool)

(assert (=> b!545781 m!794503))

(declare-fun m!794505 () Bool)

(assert (=> b!545782 m!794505))

(assert (=> b!545782 m!794273))

(declare-fun m!794507 () Bool)

(assert (=> b!545782 m!794507))

(assert (=> b!545616 d!191287))

(declare-fun d!191289 () Bool)

(assert (=> d!191289 (= (isEmpty!3878 rules!3103) ((_ is Nil!5373) rules!3103))))

(assert (=> b!545614 d!191289))

(declare-fun d!191291 () Bool)

(declare-fun res!233111 () Bool)

(declare-fun e!329843 () Bool)

(assert (=> d!191291 (=> (not res!233111) (not e!329843))))

(declare-fun rulesValid!356 (LexerInterface!897 List!5383) Bool)

(assert (=> d!191291 (= res!233111 (rulesValid!356 thiss!22590 rules!3103))))

(assert (=> d!191291 (= (rulesInvariant!860 thiss!22590 rules!3103) e!329843)))

(declare-fun b!545786 () Bool)

(declare-datatypes ((List!5385 0))(
  ( (Nil!5375) (Cons!5375 (h!10776 String!6919) (t!74758 List!5385)) )
))
(declare-fun noDuplicateTag!356 (LexerInterface!897 List!5383 List!5385) Bool)

(assert (=> b!545786 (= e!329843 (noDuplicateTag!356 thiss!22590 rules!3103 Nil!5375))))

(assert (= (and d!191291 res!233111) b!545786))

(declare-fun m!794509 () Bool)

(assert (=> d!191291 m!794509))

(declare-fun m!794511 () Bool)

(assert (=> b!545786 m!794511))

(assert (=> b!545635 d!191291))

(declare-fun b!545984 () Bool)

(declare-fun e!329954 () Bool)

(assert (=> b!545984 (= e!329954 true)))

(declare-fun d!191293 () Bool)

(assert (=> d!191293 e!329954))

(assert (= d!191293 b!545984))

(declare-fun order!4471 () Int)

(declare-fun order!4469 () Int)

(declare-fun lambda!15492 () Int)

(declare-fun dynLambda!3139 (Int Int) Int)

(declare-fun dynLambda!3140 (Int Int) Int)

(assert (=> b!545984 (< (dynLambda!3139 order!4469 (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) (dynLambda!3140 order!4471 lambda!15492))))

(declare-fun order!4473 () Int)

(declare-fun dynLambda!3141 (Int Int) Int)

(assert (=> b!545984 (< (dynLambda!3141 order!4473 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) (dynLambda!3140 order!4471 lambda!15492))))

(assert (=> d!191293 (= (list!2227 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) lt!228665))) (list!2227 lt!228665))))

(declare-fun lt!228845 () Unit!9425)

(declare-fun ForallOf!86 (Int BalanceConc!3464) Unit!9425)

(assert (=> d!191293 (= lt!228845 (ForallOf!86 lambda!15492 lt!228665))))

(assert (=> d!191293 (= (lemmaSemiInverse!140 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228665) lt!228845)))

(declare-fun b_lambda!20979 () Bool)

(assert (=> (not b_lambda!20979) (not d!191293)))

(declare-fun t!74718 () Bool)

(declare-fun tb!47903 () Bool)

(assert (=> (and b!545622 (= (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74718) tb!47903))

(declare-fun tp!173312 () Bool)

(declare-fun e!329958 () Bool)

(declare-fun b!545994 () Bool)

(assert (=> b!545994 (= e!329958 (and (inv!6742 (c!102895 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) lt!228665)))) tp!173312))))

(declare-fun result!53566 () Bool)

(assert (=> tb!47903 (= result!53566 (and (inv!6743 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))) lt!228665))) e!329958))))

(assert (= tb!47903 b!545994))

(declare-fun m!794757 () Bool)

(assert (=> b!545994 m!794757))

(declare-fun m!794759 () Bool)

(assert (=> tb!47903 m!794759))

(assert (=> d!191293 t!74718))

(declare-fun b_and!53323 () Bool)

(assert (= b_and!53295 (and (=> t!74718 result!53566) b_and!53323)))

(declare-fun t!74720 () Bool)

(declare-fun tb!47905 () Bool)

(assert (=> (and b!545634 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74720) tb!47905))

(declare-fun result!53568 () Bool)

(assert (= result!53568 result!53566))

(assert (=> d!191293 t!74720))

(declare-fun b_and!53325 () Bool)

(assert (= b_and!53297 (and (=> t!74720 result!53568) b_and!53325)))

(declare-fun b_lambda!20981 () Bool)

(assert (=> (not b_lambda!20981) (not d!191293)))

(assert (=> d!191293 t!74694))

(declare-fun b_and!53327 () Bool)

(assert (= b_and!53291 (and (=> t!74694 result!53538) b_and!53327)))

(assert (=> d!191293 t!74696))

(declare-fun b_and!53329 () Bool)

(assert (= b_and!53293 (and (=> t!74696 result!53542) b_and!53329)))

(declare-fun m!794761 () Bool)

(assert (=> d!191293 m!794761))

(assert (=> d!191293 m!794427))

(declare-fun m!794763 () Bool)

(assert (=> d!191293 m!794763))

(assert (=> d!191293 m!794763))

(declare-fun m!794765 () Bool)

(assert (=> d!191293 m!794765))

(assert (=> d!191293 m!794427))

(declare-fun m!794767 () Bool)

(assert (=> d!191293 m!794767))

(assert (=> b!545636 d!191293))

(declare-fun d!191377 () Bool)

(assert (=> d!191377 (not (matchR!504 (regex!1011 (rule!1727 token!491)) input!2705))))

(declare-fun lt!228855 () Unit!9425)

(declare-fun choose!3873 (LexerInterface!897 List!5383 Rule!1822 List!5381 List!5381 List!5381 Rule!1822) Unit!9425)

(assert (=> d!191377 (= lt!228855 (choose!3873 thiss!22590 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695))) lt!228674 input!2705 input!2705 (rule!1727 token!491)))))

(assert (=> d!191377 (isPrefix!653 lt!228674 input!2705)))

(assert (=> d!191377 (= (lemmaMaxPrefixOutputsMaxPrefix!16 thiss!22590 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695))) lt!228674 input!2705 input!2705 (rule!1727 token!491)) lt!228855)))

(declare-fun bs!67685 () Bool)

(assert (= bs!67685 d!191377))

(assert (=> bs!67685 m!794293))

(declare-fun m!794799 () Bool)

(assert (=> bs!67685 m!794799))

(assert (=> bs!67685 m!794383))

(assert (=> b!545636 d!191377))

(declare-fun b!546058 () Bool)

(declare-fun e!330000 () Bool)

(declare-fun e!329998 () Bool)

(assert (=> b!546058 (= e!330000 e!329998)))

(declare-fun res!233281 () Bool)

(assert (=> b!546058 (=> res!233281 e!329998)))

(declare-fun call!38334 () Bool)

(assert (=> b!546058 (= res!233281 call!38334)))

(declare-fun b!546059 () Bool)

(declare-fun res!233283 () Bool)

(declare-fun e!329994 () Bool)

(assert (=> b!546059 (=> (not res!233283) (not e!329994))))

(assert (=> b!546059 (= res!233283 (not call!38334))))

(declare-fun b!546060 () Bool)

(declare-fun e!329995 () Bool)

(declare-fun derivativeStep!269 (Regex!1345 C!3612) Regex!1345)

(assert (=> b!546060 (= e!329995 (matchR!504 (derivativeStep!269 (regex!1011 (rule!1727 token!491)) (head!1189 input!2705)) (tail!719 input!2705)))))

(declare-fun b!546062 () Bool)

(assert (=> b!546062 (= e!329998 (not (= (head!1189 input!2705) (c!102894 (regex!1011 (rule!1727 token!491))))))))

(declare-fun b!546063 () Bool)

(declare-fun res!233280 () Bool)

(declare-fun e!329996 () Bool)

(assert (=> b!546063 (=> res!233280 e!329996)))

(assert (=> b!546063 (= res!233280 e!329994)))

(declare-fun res!233279 () Bool)

(assert (=> b!546063 (=> (not res!233279) (not e!329994))))

(declare-fun lt!228870 () Bool)

(assert (=> b!546063 (= res!233279 lt!228870)))

(declare-fun b!546064 () Bool)

(declare-fun e!329997 () Bool)

(assert (=> b!546064 (= e!329997 (= lt!228870 call!38334))))

(declare-fun b!546065 () Bool)

(declare-fun res!233278 () Bool)

(assert (=> b!546065 (=> (not res!233278) (not e!329994))))

(assert (=> b!546065 (= res!233278 (isEmpty!3879 (tail!719 input!2705)))))

(declare-fun b!546066 () Bool)

(declare-fun e!329999 () Bool)

(assert (=> b!546066 (= e!329997 e!329999)))

(declare-fun c!102965 () Bool)

(assert (=> b!546066 (= c!102965 ((_ is EmptyLang!1345) (regex!1011 (rule!1727 token!491))))))

(declare-fun b!546067 () Bool)

(assert (=> b!546067 (= e!329994 (= (head!1189 input!2705) (c!102894 (regex!1011 (rule!1727 token!491)))))))

(declare-fun d!191383 () Bool)

(assert (=> d!191383 e!329997))

(declare-fun c!102967 () Bool)

(assert (=> d!191383 (= c!102967 ((_ is EmptyExpr!1345) (regex!1011 (rule!1727 token!491))))))

(assert (=> d!191383 (= lt!228870 e!329995)))

(declare-fun c!102966 () Bool)

(assert (=> d!191383 (= c!102966 (isEmpty!3879 input!2705))))

(assert (=> d!191383 (validRegex!448 (regex!1011 (rule!1727 token!491)))))

(assert (=> d!191383 (= (matchR!504 (regex!1011 (rule!1727 token!491)) input!2705) lt!228870)))

(declare-fun b!546061 () Bool)

(assert (=> b!546061 (= e!329999 (not lt!228870))))

(declare-fun b!546068 () Bool)

(assert (=> b!546068 (= e!329996 e!330000)))

(declare-fun res!233277 () Bool)

(assert (=> b!546068 (=> (not res!233277) (not e!330000))))

(assert (=> b!546068 (= res!233277 (not lt!228870))))

(declare-fun b!546069 () Bool)

(declare-fun res!233282 () Bool)

(assert (=> b!546069 (=> res!233282 e!329996)))

(assert (=> b!546069 (= res!233282 (not ((_ is ElementMatch!1345) (regex!1011 (rule!1727 token!491)))))))

(assert (=> b!546069 (= e!329999 e!329996)))

(declare-fun b!546070 () Bool)

(declare-fun res!233284 () Bool)

(assert (=> b!546070 (=> res!233284 e!329998)))

(assert (=> b!546070 (= res!233284 (not (isEmpty!3879 (tail!719 input!2705))))))

(declare-fun bm!38329 () Bool)

(assert (=> bm!38329 (= call!38334 (isEmpty!3879 input!2705))))

(declare-fun b!546071 () Bool)

(assert (=> b!546071 (= e!329995 (nullable!353 (regex!1011 (rule!1727 token!491))))))

(assert (= (and d!191383 c!102966) b!546071))

(assert (= (and d!191383 (not c!102966)) b!546060))

(assert (= (and d!191383 c!102967) b!546064))

(assert (= (and d!191383 (not c!102967)) b!546066))

(assert (= (and b!546066 c!102965) b!546061))

(assert (= (and b!546066 (not c!102965)) b!546069))

(assert (= (and b!546069 (not res!233282)) b!546063))

(assert (= (and b!546063 res!233279) b!546059))

(assert (= (and b!546059 res!233283) b!546065))

(assert (= (and b!546065 res!233278) b!546067))

(assert (= (and b!546063 (not res!233280)) b!546068))

(assert (= (and b!546068 res!233277) b!546058))

(assert (= (and b!546058 (not res!233281)) b!546070))

(assert (= (and b!546070 (not res!233284)) b!546062))

(assert (= (or b!546064 b!546058 b!546059) bm!38329))

(assert (=> b!546060 m!794375))

(assert (=> b!546060 m!794375))

(declare-fun m!794885 () Bool)

(assert (=> b!546060 m!794885))

(assert (=> b!546060 m!794377))

(assert (=> b!546060 m!794885))

(assert (=> b!546060 m!794377))

(declare-fun m!794887 () Bool)

(assert (=> b!546060 m!794887))

(assert (=> bm!38329 m!794287))

(assert (=> d!191383 m!794287))

(assert (=> d!191383 m!794409))

(assert (=> b!546062 m!794375))

(assert (=> b!546071 m!794411))

(assert (=> b!546065 m!794377))

(assert (=> b!546065 m!794377))

(declare-fun m!794889 () Bool)

(assert (=> b!546065 m!794889))

(assert (=> b!546067 m!794375))

(assert (=> b!546070 m!794377))

(assert (=> b!546070 m!794377))

(assert (=> b!546070 m!794889))

(assert (=> b!545636 d!191383))

(declare-fun d!191421 () Bool)

(assert (=> d!191421 (= (isDefined!1173 lt!228695) (not (isEmpty!3881 lt!228695)))))

(declare-fun bs!67688 () Bool)

(assert (= bs!67688 d!191421))

(declare-fun m!794891 () Bool)

(assert (=> bs!67688 m!794891))

(assert (=> b!545611 d!191421))

(declare-fun d!191423 () Bool)

(declare-fun lt!228873 () Bool)

(assert (=> d!191423 (= lt!228873 (select (content!937 rules!3103) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))

(declare-fun e!330007 () Bool)

(assert (=> d!191423 (= lt!228873 e!330007)))

(declare-fun res!233288 () Bool)

(assert (=> d!191423 (=> (not res!233288) (not e!330007))))

(assert (=> d!191423 (= res!233288 ((_ is Cons!5373) rules!3103))))

(assert (=> d!191423 (= (contains!1253 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228873)))

(declare-fun b!546082 () Bool)

(declare-fun e!330006 () Bool)

(assert (=> b!546082 (= e!330007 e!330006)))

(declare-fun res!233287 () Bool)

(assert (=> b!546082 (=> res!233287 e!330006)))

(assert (=> b!546082 (= res!233287 (= (h!10774 rules!3103) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))

(declare-fun b!546083 () Bool)

(assert (=> b!546083 (= e!330006 (contains!1253 (t!74684 rules!3103) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))

(assert (= (and d!191423 res!233288) b!546082))

(assert (= (and b!546082 (not res!233287)) b!546083))

(assert (=> d!191423 m!794457))

(declare-fun m!794893 () Bool)

(assert (=> d!191423 m!794893))

(declare-fun m!794895 () Bool)

(assert (=> b!546083 m!794895))

(assert (=> b!545612 d!191423))

(declare-fun d!191425 () Bool)

(assert (=> d!191425 (= (get!2031 lt!228695) (v!16177 lt!228695))))

(assert (=> b!545633 d!191425))

(declare-fun b!546095 () Bool)

(declare-fun res!233290 () Bool)

(declare-fun e!330012 () Bool)

(assert (=> b!546095 (=> (not res!233290) (not e!330012))))

(declare-fun lt!228876 () Option!1361)

(assert (=> b!546095 (= res!233290 (= (value!33680 (_1!3468 (get!2031 lt!228876))) (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (get!2031 lt!228876)))) (seqFromList!1209 (originalCharacters!1050 (_1!3468 (get!2031 lt!228876)))))))))

(declare-fun b!546096 () Bool)

(declare-fun e!330013 () Option!1361)

(declare-fun lt!228877 () Option!1361)

(declare-fun lt!228874 () Option!1361)

(assert (=> b!546096 (= e!330013 (ite (and ((_ is None!1360) lt!228877) ((_ is None!1360) lt!228874)) None!1360 (ite ((_ is None!1360) lt!228874) lt!228877 (ite ((_ is None!1360) lt!228877) lt!228874 (ite (>= (size!4306 (_1!3468 (v!16177 lt!228877))) (size!4306 (_1!3468 (v!16177 lt!228874)))) lt!228877 lt!228874)))))))

(declare-fun call!38335 () Option!1361)

(assert (=> b!546096 (= lt!228877 call!38335)))

(assert (=> b!546096 (= lt!228874 (maxPrefix!595 thiss!22590 (t!74684 rules!3103) input!2705))))

(declare-fun b!546097 () Bool)

(declare-fun res!233289 () Bool)

(assert (=> b!546097 (=> (not res!233289) (not e!330012))))

(assert (=> b!546097 (= res!233289 (= (++!1499 (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228876)))) (_2!3468 (get!2031 lt!228876))) input!2705))))

(declare-fun b!546098 () Bool)

(assert (=> b!546098 (= e!330012 (contains!1253 rules!3103 (rule!1727 (_1!3468 (get!2031 lt!228876)))))))

(declare-fun b!546099 () Bool)

(declare-fun res!233295 () Bool)

(assert (=> b!546099 (=> (not res!233295) (not e!330012))))

(assert (=> b!546099 (= res!233295 (< (size!4307 (_2!3468 (get!2031 lt!228876))) (size!4307 input!2705)))))

(declare-fun b!546100 () Bool)

(declare-fun e!330011 () Bool)

(assert (=> b!546100 (= e!330011 e!330012)))

(declare-fun res!233294 () Bool)

(assert (=> b!546100 (=> (not res!233294) (not e!330012))))

(assert (=> b!546100 (= res!233294 (isDefined!1173 lt!228876))))

(declare-fun b!546101 () Bool)

(declare-fun res!233291 () Bool)

(assert (=> b!546101 (=> (not res!233291) (not e!330012))))

(assert (=> b!546101 (= res!233291 (= (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228876)))) (originalCharacters!1050 (_1!3468 (get!2031 lt!228876)))))))

(declare-fun d!191427 () Bool)

(assert (=> d!191427 e!330011))

(declare-fun res!233292 () Bool)

(assert (=> d!191427 (=> res!233292 e!330011)))

(assert (=> d!191427 (= res!233292 (isEmpty!3881 lt!228876))))

(assert (=> d!191427 (= lt!228876 e!330013)))

(declare-fun c!102970 () Bool)

(assert (=> d!191427 (= c!102970 (and ((_ is Cons!5373) rules!3103) ((_ is Nil!5373) (t!74684 rules!3103))))))

(declare-fun lt!228875 () Unit!9425)

(declare-fun lt!228878 () Unit!9425)

(assert (=> d!191427 (= lt!228875 lt!228878)))

(assert (=> d!191427 (isPrefix!653 input!2705 input!2705)))

(assert (=> d!191427 (= lt!228878 (lemmaIsPrefixRefl!393 input!2705 input!2705))))

(assert (=> d!191427 (rulesValidInductive!355 thiss!22590 rules!3103)))

(assert (=> d!191427 (= (maxPrefix!595 thiss!22590 rules!3103 input!2705) lt!228876)))

(declare-fun b!546102 () Bool)

(declare-fun res!233293 () Bool)

(assert (=> b!546102 (=> (not res!233293) (not e!330012))))

(assert (=> b!546102 (= res!233293 (matchR!504 (regex!1011 (rule!1727 (_1!3468 (get!2031 lt!228876)))) (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228876))))))))

(declare-fun bm!38330 () Bool)

(assert (=> bm!38330 (= call!38335 (maxPrefixOneRule!310 thiss!22590 (h!10774 rules!3103) input!2705))))

(declare-fun b!546103 () Bool)

(assert (=> b!546103 (= e!330013 call!38335)))

(assert (= (and d!191427 c!102970) b!546103))

(assert (= (and d!191427 (not c!102970)) b!546096))

(assert (= (or b!546103 b!546096) bm!38330))

(assert (= (and d!191427 (not res!233292)) b!546100))

(assert (= (and b!546100 res!233294) b!546101))

(assert (= (and b!546101 res!233291) b!546099))

(assert (= (and b!546099 res!233295) b!546097))

(assert (= (and b!546097 res!233289) b!546095))

(assert (= (and b!546095 res!233290) b!546102))

(assert (= (and b!546102 res!233293) b!546098))

(declare-fun m!794897 () Bool)

(assert (=> b!546099 m!794897))

(declare-fun m!794899 () Bool)

(assert (=> b!546099 m!794899))

(assert (=> b!546099 m!794273))

(declare-fun m!794901 () Bool)

(assert (=> d!191427 m!794901))

(assert (=> d!191427 m!794247))

(assert (=> d!191427 m!794237))

(assert (=> d!191427 m!794475))

(declare-fun m!794903 () Bool)

(assert (=> bm!38330 m!794903))

(declare-fun m!794905 () Bool)

(assert (=> b!546100 m!794905))

(assert (=> b!546095 m!794897))

(declare-fun m!794907 () Bool)

(assert (=> b!546095 m!794907))

(assert (=> b!546095 m!794907))

(declare-fun m!794909 () Bool)

(assert (=> b!546095 m!794909))

(declare-fun m!794911 () Bool)

(assert (=> b!546096 m!794911))

(assert (=> b!546101 m!794897))

(declare-fun m!794913 () Bool)

(assert (=> b!546101 m!794913))

(assert (=> b!546101 m!794913))

(declare-fun m!794915 () Bool)

(assert (=> b!546101 m!794915))

(assert (=> b!546102 m!794897))

(assert (=> b!546102 m!794913))

(assert (=> b!546102 m!794913))

(assert (=> b!546102 m!794915))

(assert (=> b!546102 m!794915))

(declare-fun m!794917 () Bool)

(assert (=> b!546102 m!794917))

(assert (=> b!546098 m!794897))

(declare-fun m!794919 () Bool)

(assert (=> b!546098 m!794919))

(assert (=> b!546097 m!794897))

(assert (=> b!546097 m!794913))

(assert (=> b!546097 m!794913))

(assert (=> b!546097 m!794915))

(assert (=> b!546097 m!794915))

(declare-fun m!794921 () Bool)

(assert (=> b!546097 m!794921))

(assert (=> b!545610 d!191427))

(declare-fun d!191429 () Bool)

(declare-fun lt!228879 () Int)

(assert (=> d!191429 (>= lt!228879 0)))

(declare-fun e!330027 () Int)

(assert (=> d!191429 (= lt!228879 e!330027)))

(declare-fun c!102971 () Bool)

(assert (=> d!191429 (= c!102971 ((_ is Nil!5371) (originalCharacters!1050 (_1!3468 (v!16177 lt!228695)))))))

(assert (=> d!191429 (= (size!4307 (originalCharacters!1050 (_1!3468 (v!16177 lt!228695)))) lt!228879)))

(declare-fun b!546119 () Bool)

(assert (=> b!546119 (= e!330027 0)))

(declare-fun b!546120 () Bool)

(assert (=> b!546120 (= e!330027 (+ 1 (size!4307 (t!74682 (originalCharacters!1050 (_1!3468 (v!16177 lt!228695)))))))))

(assert (= (and d!191429 c!102971) b!546119))

(assert (= (and d!191429 (not c!102971)) b!546120))

(declare-fun m!794927 () Bool)

(assert (=> b!546120 m!794927))

(assert (=> b!545632 d!191429))

(declare-fun d!191431 () Bool)

(assert (=> d!191431 (= (isEmpty!3879 (_2!3468 (v!16177 lt!228695))) ((_ is Nil!5371) (_2!3468 (v!16177 lt!228695))))))

(assert (=> b!545630 d!191431))

(declare-fun d!191433 () Bool)

(declare-fun lt!228880 () Int)

(assert (=> d!191433 (>= lt!228880 0)))

(declare-fun e!330031 () Int)

(assert (=> d!191433 (= lt!228880 e!330031)))

(declare-fun c!102972 () Bool)

(assert (=> d!191433 (= c!102972 ((_ is Nil!5371) lt!228669))))

(assert (=> d!191433 (= (size!4307 lt!228669) lt!228880)))

(declare-fun b!546127 () Bool)

(assert (=> b!546127 (= e!330031 0)))

(declare-fun b!546128 () Bool)

(assert (=> b!546128 (= e!330031 (+ 1 (size!4307 (t!74682 lt!228669))))))

(assert (= (and d!191433 c!102972) b!546127))

(assert (= (and d!191433 (not c!102972)) b!546128))

(declare-fun m!794929 () Bool)

(assert (=> b!546128 m!794929))

(assert (=> b!545609 d!191433))

(declare-fun d!191435 () Bool)

(declare-fun lt!228881 () Int)

(assert (=> d!191435 (>= lt!228881 0)))

(declare-fun e!330032 () Int)

(assert (=> d!191435 (= lt!228881 e!330032)))

(declare-fun c!102973 () Bool)

(assert (=> d!191435 (= c!102973 ((_ is Nil!5371) input!2705))))

(assert (=> d!191435 (= (size!4307 input!2705) lt!228881)))

(declare-fun b!546129 () Bool)

(assert (=> b!546129 (= e!330032 0)))

(declare-fun b!546130 () Bool)

(assert (=> b!546130 (= e!330032 (+ 1 (size!4307 (t!74682 input!2705))))))

(assert (= (and d!191435 c!102973) b!546129))

(assert (= (and d!191435 (not c!102973)) b!546130))

(declare-fun m!794931 () Bool)

(assert (=> b!546130 m!794931))

(assert (=> b!545609 d!191435))

(declare-fun b!546141 () Bool)

(declare-fun e!330039 () Int)

(assert (=> b!546141 (= e!330039 (+ 1 (getIndex!12 (t!74684 rules!3103) (rule!1727 (_1!3468 (v!16177 lt!228695))))))))

(declare-fun b!546139 () Bool)

(declare-fun e!330038 () Int)

(assert (=> b!546139 (= e!330038 0)))

(declare-fun b!546142 () Bool)

(assert (=> b!546142 (= e!330039 (- 1))))

(declare-fun d!191437 () Bool)

(declare-fun lt!228884 () Int)

(assert (=> d!191437 (>= lt!228884 0)))

(assert (=> d!191437 (= lt!228884 e!330038)))

(declare-fun c!102978 () Bool)

(assert (=> d!191437 (= c!102978 (and ((_ is Cons!5373) rules!3103) (= (h!10774 rules!3103) (rule!1727 (_1!3468 (v!16177 lt!228695))))))))

(assert (=> d!191437 (contains!1253 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695))))))

(assert (=> d!191437 (= (getIndex!12 rules!3103 (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228884)))

(declare-fun b!546140 () Bool)

(assert (=> b!546140 (= e!330038 e!330039)))

(declare-fun c!102979 () Bool)

(assert (=> b!546140 (= c!102979 (and ((_ is Cons!5373) rules!3103) (not (= (h!10774 rules!3103) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))))

(assert (= (and d!191437 c!102978) b!546139))

(assert (= (and d!191437 (not c!102978)) b!546140))

(assert (= (and b!546140 c!102979) b!546141))

(assert (= (and b!546140 (not c!102979)) b!546142))

(declare-fun m!794933 () Bool)

(assert (=> b!546141 m!794933))

(assert (=> d!191437 m!794301))

(assert (=> b!545607 d!191437))

(declare-fun b!546145 () Bool)

(declare-fun e!330041 () Int)

(assert (=> b!546145 (= e!330041 (+ 1 (getIndex!12 (t!74684 rules!3103) (rule!1727 token!491))))))

(declare-fun b!546143 () Bool)

(declare-fun e!330040 () Int)

(assert (=> b!546143 (= e!330040 0)))

(declare-fun b!546146 () Bool)

(assert (=> b!546146 (= e!330041 (- 1))))

(declare-fun d!191439 () Bool)

(declare-fun lt!228885 () Int)

(assert (=> d!191439 (>= lt!228885 0)))

(assert (=> d!191439 (= lt!228885 e!330040)))

(declare-fun c!102980 () Bool)

(assert (=> d!191439 (= c!102980 (and ((_ is Cons!5373) rules!3103) (= (h!10774 rules!3103) (rule!1727 token!491))))))

(assert (=> d!191439 (contains!1253 rules!3103 (rule!1727 token!491))))

(assert (=> d!191439 (= (getIndex!12 rules!3103 (rule!1727 token!491)) lt!228885)))

(declare-fun b!546144 () Bool)

(assert (=> b!546144 (= e!330040 e!330041)))

(declare-fun c!102981 () Bool)

(assert (=> b!546144 (= c!102981 (and ((_ is Cons!5373) rules!3103) (not (= (h!10774 rules!3103) (rule!1727 token!491)))))))

(assert (= (and d!191439 c!102980) b!546143))

(assert (= (and d!191439 (not c!102980)) b!546144))

(assert (= (and b!546144 c!102981) b!546145))

(assert (= (and b!546144 (not c!102981)) b!546146))

(declare-fun m!794935 () Bool)

(assert (=> b!546145 m!794935))

(assert (=> d!191439 m!794289))

(assert (=> b!545607 d!191439))

(declare-fun lt!228886 () List!5381)

(declare-fun e!330042 () Bool)

(declare-fun b!546150 () Bool)

(assert (=> b!546150 (= e!330042 (or (not (= suffix!1342 Nil!5371)) (= lt!228886 lt!228666)))))

(declare-fun d!191441 () Bool)

(assert (=> d!191441 e!330042))

(declare-fun res!233297 () Bool)

(assert (=> d!191441 (=> (not res!233297) (not e!330042))))

(assert (=> d!191441 (= res!233297 (= (content!935 lt!228886) ((_ map or) (content!935 lt!228666) (content!935 suffix!1342))))))

(declare-fun e!330043 () List!5381)

(assert (=> d!191441 (= lt!228886 e!330043)))

(declare-fun c!102982 () Bool)

(assert (=> d!191441 (= c!102982 ((_ is Nil!5371) lt!228666))))

(assert (=> d!191441 (= (++!1499 lt!228666 suffix!1342) lt!228886)))

(declare-fun b!546148 () Bool)

(assert (=> b!546148 (= e!330043 (Cons!5371 (h!10772 lt!228666) (++!1499 (t!74682 lt!228666) suffix!1342)))))

(declare-fun b!546149 () Bool)

(declare-fun res!233296 () Bool)

(assert (=> b!546149 (=> (not res!233296) (not e!330042))))

(assert (=> b!546149 (= res!233296 (= (size!4307 lt!228886) (+ (size!4307 lt!228666) (size!4307 suffix!1342))))))

(declare-fun b!546147 () Bool)

(assert (=> b!546147 (= e!330043 suffix!1342)))

(assert (= (and d!191441 c!102982) b!546147))

(assert (= (and d!191441 (not c!102982)) b!546148))

(assert (= (and d!191441 res!233297) b!546149))

(assert (= (and b!546149 res!233296) b!546150))

(declare-fun m!794937 () Bool)

(assert (=> d!191441 m!794937))

(declare-fun m!794939 () Bool)

(assert (=> d!191441 m!794939))

(assert (=> d!191441 m!794501))

(declare-fun m!794941 () Bool)

(assert (=> b!546148 m!794941))

(declare-fun m!794943 () Bool)

(assert (=> b!546149 m!794943))

(assert (=> b!546149 m!794245))

(assert (=> b!546149 m!794507))

(assert (=> b!545608 d!191441))

(declare-fun d!191443 () Bool)

(assert (=> d!191443 (= (maxPrefixOneRule!310 thiss!22590 (rule!1727 token!491) lt!228669) (Some!1360 (tuple2!6409 (Token!1759 (apply!1286 (transformation!1011 (rule!1727 token!491)) (seqFromList!1209 lt!228666)) (rule!1727 token!491) (size!4307 lt!228666) lt!228666) suffix!1342)))))

(declare-fun lt!228889 () Unit!9425)

(declare-fun choose!3874 (LexerInterface!897 List!5383 List!5381 List!5381 List!5381 Rule!1822) Unit!9425)

(assert (=> d!191443 (= lt!228889 (choose!3874 thiss!22590 rules!3103 lt!228666 lt!228669 suffix!1342 (rule!1727 token!491)))))

(assert (=> d!191443 (not (isEmpty!3878 rules!3103))))

(assert (=> d!191443 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!62 thiss!22590 rules!3103 lt!228666 lt!228669 suffix!1342 (rule!1727 token!491)) lt!228889)))

(declare-fun bs!67689 () Bool)

(assert (= bs!67689 d!191443))

(assert (=> bs!67689 m!794183))

(declare-fun m!794945 () Bool)

(assert (=> bs!67689 m!794945))

(assert (=> bs!67689 m!794245))

(assert (=> bs!67689 m!794183))

(assert (=> bs!67689 m!794255))

(assert (=> bs!67689 m!794187))

(declare-fun m!794947 () Bool)

(assert (=> bs!67689 m!794947))

(assert (=> b!545629 d!191443))

(declare-fun b!546169 () Bool)

(declare-fun res!233313 () Bool)

(declare-fun e!330052 () Bool)

(assert (=> b!546169 (=> (not res!233313) (not e!330052))))

(declare-fun lt!228902 () Option!1361)

(assert (=> b!546169 (= res!233313 (= (++!1499 (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228902)))) (_2!3468 (get!2031 lt!228902))) lt!228669))))

(declare-fun d!191445 () Bool)

(declare-fun e!330053 () Bool)

(assert (=> d!191445 e!330053))

(declare-fun res!233314 () Bool)

(assert (=> d!191445 (=> res!233314 e!330053)))

(assert (=> d!191445 (= res!233314 (isEmpty!3881 lt!228902))))

(declare-fun e!330054 () Option!1361)

(assert (=> d!191445 (= lt!228902 e!330054)))

(declare-fun c!102985 () Bool)

(declare-datatypes ((tuple2!6412 0))(
  ( (tuple2!6413 (_1!3470 List!5381) (_2!3470 List!5381)) )
))
(declare-fun lt!228903 () tuple2!6412)

(assert (=> d!191445 (= c!102985 (isEmpty!3879 (_1!3470 lt!228903)))))

(declare-fun findLongestMatch!116 (Regex!1345 List!5381) tuple2!6412)

(assert (=> d!191445 (= lt!228903 (findLongestMatch!116 (regex!1011 (rule!1727 token!491)) lt!228669))))

(assert (=> d!191445 (ruleValid!231 thiss!22590 (rule!1727 token!491))))

(assert (=> d!191445 (= (maxPrefixOneRule!310 thiss!22590 (rule!1727 token!491) lt!228669) lt!228902)))

(declare-fun b!546170 () Bool)

(declare-fun res!233316 () Bool)

(assert (=> b!546170 (=> (not res!233316) (not e!330052))))

(assert (=> b!546170 (= res!233316 (= (rule!1727 (_1!3468 (get!2031 lt!228902))) (rule!1727 token!491)))))

(declare-fun b!546171 () Bool)

(declare-fun size!4309 (BalanceConc!3464) Int)

(assert (=> b!546171 (= e!330054 (Some!1360 (tuple2!6409 (Token!1759 (apply!1286 (transformation!1011 (rule!1727 token!491)) (seqFromList!1209 (_1!3470 lt!228903))) (rule!1727 token!491) (size!4309 (seqFromList!1209 (_1!3470 lt!228903))) (_1!3470 lt!228903)) (_2!3470 lt!228903))))))

(declare-fun lt!228900 () Unit!9425)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!121 (Regex!1345 List!5381) Unit!9425)

(assert (=> b!546171 (= lt!228900 (longestMatchIsAcceptedByMatchOrIsEmpty!121 (regex!1011 (rule!1727 token!491)) lt!228669))))

(declare-fun res!233317 () Bool)

(declare-fun findLongestMatchInner!137 (Regex!1345 List!5381 Int List!5381 List!5381 Int) tuple2!6412)

(assert (=> b!546171 (= res!233317 (isEmpty!3879 (_1!3470 (findLongestMatchInner!137 (regex!1011 (rule!1727 token!491)) Nil!5371 (size!4307 Nil!5371) lt!228669 lt!228669 (size!4307 lt!228669)))))))

(declare-fun e!330055 () Bool)

(assert (=> b!546171 (=> res!233317 e!330055)))

(assert (=> b!546171 e!330055))

(declare-fun lt!228901 () Unit!9425)

(assert (=> b!546171 (= lt!228901 lt!228900)))

(declare-fun lt!228904 () Unit!9425)

(assert (=> b!546171 (= lt!228904 (lemmaSemiInverse!140 (transformation!1011 (rule!1727 token!491)) (seqFromList!1209 (_1!3470 lt!228903))))))

(declare-fun b!546172 () Bool)

(assert (=> b!546172 (= e!330055 (matchR!504 (regex!1011 (rule!1727 token!491)) (_1!3470 (findLongestMatchInner!137 (regex!1011 (rule!1727 token!491)) Nil!5371 (size!4307 Nil!5371) lt!228669 lt!228669 (size!4307 lt!228669)))))))

(declare-fun b!546173 () Bool)

(assert (=> b!546173 (= e!330052 (= (size!4306 (_1!3468 (get!2031 lt!228902))) (size!4307 (originalCharacters!1050 (_1!3468 (get!2031 lt!228902))))))))

(declare-fun b!546174 () Bool)

(declare-fun res!233315 () Bool)

(assert (=> b!546174 (=> (not res!233315) (not e!330052))))

(assert (=> b!546174 (= res!233315 (< (size!4307 (_2!3468 (get!2031 lt!228902))) (size!4307 lt!228669)))))

(declare-fun b!546175 () Bool)

(assert (=> b!546175 (= e!330053 e!330052)))

(declare-fun res!233312 () Bool)

(assert (=> b!546175 (=> (not res!233312) (not e!330052))))

(assert (=> b!546175 (= res!233312 (matchR!504 (regex!1011 (rule!1727 token!491)) (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228902))))))))

(declare-fun b!546176 () Bool)

(declare-fun res!233318 () Bool)

(assert (=> b!546176 (=> (not res!233318) (not e!330052))))

(assert (=> b!546176 (= res!233318 (= (value!33680 (_1!3468 (get!2031 lt!228902))) (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (get!2031 lt!228902)))) (seqFromList!1209 (originalCharacters!1050 (_1!3468 (get!2031 lt!228902)))))))))

(declare-fun b!546177 () Bool)

(assert (=> b!546177 (= e!330054 None!1360)))

(assert (= (and d!191445 c!102985) b!546177))

(assert (= (and d!191445 (not c!102985)) b!546171))

(assert (= (and b!546171 (not res!233317)) b!546172))

(assert (= (and d!191445 (not res!233314)) b!546175))

(assert (= (and b!546175 res!233312) b!546169))

(assert (= (and b!546169 res!233313) b!546174))

(assert (= (and b!546174 res!233315) b!546170))

(assert (= (and b!546170 res!233316) b!546176))

(assert (= (and b!546176 res!233318) b!546173))

(declare-fun m!794949 () Bool)

(assert (=> b!546169 m!794949))

(declare-fun m!794951 () Bool)

(assert (=> b!546169 m!794951))

(assert (=> b!546169 m!794951))

(declare-fun m!794953 () Bool)

(assert (=> b!546169 m!794953))

(assert (=> b!546169 m!794953))

(declare-fun m!794955 () Bool)

(assert (=> b!546169 m!794955))

(declare-fun m!794957 () Bool)

(assert (=> d!191445 m!794957))

(declare-fun m!794959 () Bool)

(assert (=> d!191445 m!794959))

(declare-fun m!794961 () Bool)

(assert (=> d!191445 m!794961))

(assert (=> d!191445 m!794201))

(declare-fun m!794963 () Bool)

(assert (=> b!546171 m!794963))

(declare-fun m!794965 () Bool)

(assert (=> b!546171 m!794965))

(assert (=> b!546171 m!794271))

(assert (=> b!546171 m!794963))

(assert (=> b!546171 m!794963))

(declare-fun m!794967 () Bool)

(assert (=> b!546171 m!794967))

(declare-fun m!794969 () Bool)

(assert (=> b!546171 m!794969))

(assert (=> b!546171 m!794271))

(declare-fun m!794971 () Bool)

(assert (=> b!546171 m!794971))

(declare-fun m!794973 () Bool)

(assert (=> b!546171 m!794973))

(declare-fun m!794975 () Bool)

(assert (=> b!546171 m!794975))

(assert (=> b!546171 m!794963))

(declare-fun m!794977 () Bool)

(assert (=> b!546171 m!794977))

(assert (=> b!546171 m!794969))

(assert (=> b!546175 m!794949))

(assert (=> b!546175 m!794951))

(assert (=> b!546175 m!794951))

(assert (=> b!546175 m!794953))

(assert (=> b!546175 m!794953))

(declare-fun m!794979 () Bool)

(assert (=> b!546175 m!794979))

(assert (=> b!546172 m!794969))

(assert (=> b!546172 m!794271))

(assert (=> b!546172 m!794969))

(assert (=> b!546172 m!794271))

(assert (=> b!546172 m!794971))

(declare-fun m!794981 () Bool)

(assert (=> b!546172 m!794981))

(assert (=> b!546174 m!794949))

(declare-fun m!794983 () Bool)

(assert (=> b!546174 m!794983))

(assert (=> b!546174 m!794271))

(assert (=> b!546176 m!794949))

(declare-fun m!794985 () Bool)

(assert (=> b!546176 m!794985))

(assert (=> b!546176 m!794985))

(declare-fun m!794987 () Bool)

(assert (=> b!546176 m!794987))

(assert (=> b!546173 m!794949))

(declare-fun m!794989 () Bool)

(assert (=> b!546173 m!794989))

(assert (=> b!546170 m!794949))

(assert (=> b!545629 d!191445))

(declare-fun bs!67690 () Bool)

(declare-fun d!191447 () Bool)

(assert (= bs!67690 (and d!191447 d!191293)))

(declare-fun lambda!15493 () Int)

(assert (=> bs!67690 (= (and (= (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) (= (toValue!1858 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695))))))) (= lambda!15493 lambda!15492))))

(declare-fun b!546178 () Bool)

(declare-fun e!330056 () Bool)

(assert (=> b!546178 (= e!330056 true)))

(assert (=> d!191447 e!330056))

(assert (= d!191447 b!546178))

(assert (=> b!546178 (< (dynLambda!3139 order!4469 (toValue!1858 (transformation!1011 (rule!1727 token!491)))) (dynLambda!3140 order!4471 lambda!15493))))

(assert (=> b!546178 (< (dynLambda!3141 order!4473 (toChars!1717 (transformation!1011 (rule!1727 token!491)))) (dynLambda!3140 order!4471 lambda!15493))))

(assert (=> d!191447 (= (list!2227 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 token!491))) lt!228684))) (list!2227 lt!228684))))

(declare-fun lt!228905 () Unit!9425)

(assert (=> d!191447 (= lt!228905 (ForallOf!86 lambda!15493 lt!228684))))

(assert (=> d!191447 (= (lemmaSemiInverse!140 (transformation!1011 (rule!1727 token!491)) lt!228684) lt!228905)))

(declare-fun b_lambda!20997 () Bool)

(assert (=> (not b_lambda!20997) (not d!191447)))

(declare-fun t!74738 () Bool)

(declare-fun tb!47923 () Bool)

(assert (=> (and b!545622 (= (toChars!1717 (transformation!1011 (rule!1727 token!491))) (toChars!1717 (transformation!1011 (rule!1727 token!491)))) t!74738) tb!47923))

(declare-fun b!546179 () Bool)

(declare-fun e!330057 () Bool)

(declare-fun tp!173351 () Bool)

(assert (=> b!546179 (= e!330057 (and (inv!6742 (c!102895 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 token!491))) lt!228684)))) tp!173351))))

(declare-fun result!53592 () Bool)

(assert (=> tb!47923 (= result!53592 (and (inv!6743 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 token!491))) lt!228684))) e!330057))))

(assert (= tb!47923 b!546179))

(declare-fun m!794991 () Bool)

(assert (=> b!546179 m!794991))

(declare-fun m!794993 () Bool)

(assert (=> tb!47923 m!794993))

(assert (=> d!191447 t!74738))

(declare-fun b_and!53343 () Bool)

(assert (= b_and!53323 (and (=> t!74738 result!53592) b_and!53343)))

(declare-fun tb!47925 () Bool)

(declare-fun t!74740 () Bool)

(assert (=> (and b!545634 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 token!491)))) t!74740) tb!47925))

(declare-fun result!53594 () Bool)

(assert (= result!53594 result!53592))

(assert (=> d!191447 t!74740))

(declare-fun b_and!53345 () Bool)

(assert (= b_and!53325 (and (=> t!74740 result!53594) b_and!53345)))

(declare-fun b_lambda!20999 () Bool)

(assert (=> (not b_lambda!20999) (not d!191447)))

(declare-fun t!74742 () Bool)

(declare-fun tb!47927 () Bool)

(assert (=> (and b!545622 (= (toValue!1858 (transformation!1011 (rule!1727 token!491))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))) t!74742) tb!47927))

(declare-fun result!53596 () Bool)

(assert (=> tb!47927 (= result!53596 (inv!21 (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 token!491))) lt!228684)))))

(declare-fun m!794995 () Bool)

(assert (=> tb!47927 m!794995))

(assert (=> d!191447 t!74742))

(declare-fun b_and!53347 () Bool)

(assert (= b_and!53327 (and (=> t!74742 result!53596) b_and!53347)))

(declare-fun t!74744 () Bool)

(declare-fun tb!47929 () Bool)

(assert (=> (and b!545634 (= (toValue!1858 (transformation!1011 (h!10774 rules!3103))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))) t!74744) tb!47929))

(declare-fun result!53598 () Bool)

(assert (= result!53598 result!53596))

(assert (=> d!191447 t!74744))

(declare-fun b_and!53349 () Bool)

(assert (= b_and!53329 (and (=> t!74744 result!53598) b_and!53349)))

(declare-fun m!794997 () Bool)

(assert (=> d!191447 m!794997))

(declare-fun m!794999 () Bool)

(assert (=> d!191447 m!794999))

(declare-fun m!795001 () Bool)

(assert (=> d!191447 m!795001))

(assert (=> d!191447 m!795001))

(declare-fun m!795003 () Bool)

(assert (=> d!191447 m!795003))

(assert (=> d!191447 m!794999))

(declare-fun m!795005 () Bool)

(assert (=> d!191447 m!795005))

(assert (=> b!545629 d!191447))

(declare-fun d!191449 () Bool)

(declare-fun lt!228906 () List!5381)

(assert (=> d!191449 (= (++!1499 lt!228666 lt!228906) lt!228669)))

(declare-fun e!330059 () List!5381)

(assert (=> d!191449 (= lt!228906 e!330059)))

(declare-fun c!102986 () Bool)

(assert (=> d!191449 (= c!102986 ((_ is Cons!5371) lt!228666))))

(assert (=> d!191449 (>= (size!4307 lt!228669) (size!4307 lt!228666))))

(assert (=> d!191449 (= (getSuffix!176 lt!228669 lt!228666) lt!228906)))

(declare-fun b!546180 () Bool)

(assert (=> b!546180 (= e!330059 (getSuffix!176 (tail!719 lt!228669) (t!74682 lt!228666)))))

(declare-fun b!546181 () Bool)

(assert (=> b!546181 (= e!330059 lt!228669)))

(assert (= (and d!191449 c!102986) b!546180))

(assert (= (and d!191449 (not c!102986)) b!546181))

(declare-fun m!795007 () Bool)

(assert (=> d!191449 m!795007))

(assert (=> d!191449 m!794271))

(assert (=> d!191449 m!794245))

(assert (=> b!546180 m!794437))

(assert (=> b!546180 m!794437))

(declare-fun m!795009 () Bool)

(assert (=> b!546180 m!795009))

(assert (=> b!545629 d!191449))

(declare-fun b!546182 () Bool)

(declare-fun res!233320 () Bool)

(declare-fun e!330060 () Bool)

(assert (=> b!546182 (=> (not res!233320) (not e!330060))))

(declare-fun lt!228909 () Option!1361)

(assert (=> b!546182 (= res!233320 (= (++!1499 (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228909)))) (_2!3468 (get!2031 lt!228909))) input!2705))))

(declare-fun d!191451 () Bool)

(declare-fun e!330061 () Bool)

(assert (=> d!191451 e!330061))

(declare-fun res!233321 () Bool)

(assert (=> d!191451 (=> res!233321 e!330061)))

(assert (=> d!191451 (= res!233321 (isEmpty!3881 lt!228909))))

(declare-fun e!330062 () Option!1361)

(assert (=> d!191451 (= lt!228909 e!330062)))

(declare-fun c!102987 () Bool)

(declare-fun lt!228910 () tuple2!6412)

(assert (=> d!191451 (= c!102987 (isEmpty!3879 (_1!3470 lt!228910)))))

(assert (=> d!191451 (= lt!228910 (findLongestMatch!116 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) input!2705))))

(assert (=> d!191451 (ruleValid!231 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))))))

(assert (=> d!191451 (= (maxPrefixOneRule!310 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))) input!2705) lt!228909)))

(declare-fun b!546183 () Bool)

(declare-fun res!233323 () Bool)

(assert (=> b!546183 (=> (not res!233323) (not e!330060))))

(assert (=> b!546183 (= res!233323 (= (rule!1727 (_1!3468 (get!2031 lt!228909))) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))

(declare-fun b!546184 () Bool)

(assert (=> b!546184 (= e!330062 (Some!1360 (tuple2!6409 (Token!1759 (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (seqFromList!1209 (_1!3470 lt!228910))) (rule!1727 (_1!3468 (v!16177 lt!228695))) (size!4309 (seqFromList!1209 (_1!3470 lt!228910))) (_1!3470 lt!228910)) (_2!3470 lt!228910))))))

(declare-fun lt!228907 () Unit!9425)

(assert (=> b!546184 (= lt!228907 (longestMatchIsAcceptedByMatchOrIsEmpty!121 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) input!2705))))

(declare-fun res!233324 () Bool)

(assert (=> b!546184 (= res!233324 (isEmpty!3879 (_1!3470 (findLongestMatchInner!137 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) Nil!5371 (size!4307 Nil!5371) input!2705 input!2705 (size!4307 input!2705)))))))

(declare-fun e!330063 () Bool)

(assert (=> b!546184 (=> res!233324 e!330063)))

(assert (=> b!546184 e!330063))

(declare-fun lt!228908 () Unit!9425)

(assert (=> b!546184 (= lt!228908 lt!228907)))

(declare-fun lt!228911 () Unit!9425)

(assert (=> b!546184 (= lt!228911 (lemmaSemiInverse!140 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (seqFromList!1209 (_1!3470 lt!228910))))))

(declare-fun b!546185 () Bool)

(assert (=> b!546185 (= e!330063 (matchR!504 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (_1!3470 (findLongestMatchInner!137 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) Nil!5371 (size!4307 Nil!5371) input!2705 input!2705 (size!4307 input!2705)))))))

(declare-fun b!546186 () Bool)

(assert (=> b!546186 (= e!330060 (= (size!4306 (_1!3468 (get!2031 lt!228909))) (size!4307 (originalCharacters!1050 (_1!3468 (get!2031 lt!228909))))))))

(declare-fun b!546187 () Bool)

(declare-fun res!233322 () Bool)

(assert (=> b!546187 (=> (not res!233322) (not e!330060))))

(assert (=> b!546187 (= res!233322 (< (size!4307 (_2!3468 (get!2031 lt!228909))) (size!4307 input!2705)))))

(declare-fun b!546188 () Bool)

(assert (=> b!546188 (= e!330061 e!330060)))

(declare-fun res!233319 () Bool)

(assert (=> b!546188 (=> (not res!233319) (not e!330060))))

(assert (=> b!546188 (= res!233319 (matchR!504 (regex!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (list!2227 (charsOf!640 (_1!3468 (get!2031 lt!228909))))))))

(declare-fun b!546189 () Bool)

(declare-fun res!233325 () Bool)

(assert (=> b!546189 (=> (not res!233325) (not e!330060))))

(assert (=> b!546189 (= res!233325 (= (value!33680 (_1!3468 (get!2031 lt!228909))) (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (get!2031 lt!228909)))) (seqFromList!1209 (originalCharacters!1050 (_1!3468 (get!2031 lt!228909)))))))))

(declare-fun b!546190 () Bool)

(assert (=> b!546190 (= e!330062 None!1360)))

(assert (= (and d!191451 c!102987) b!546190))

(assert (= (and d!191451 (not c!102987)) b!546184))

(assert (= (and b!546184 (not res!233324)) b!546185))

(assert (= (and d!191451 (not res!233321)) b!546188))

(assert (= (and b!546188 res!233319) b!546182))

(assert (= (and b!546182 res!233320) b!546187))

(assert (= (and b!546187 res!233322) b!546183))

(assert (= (and b!546183 res!233323) b!546189))

(assert (= (and b!546189 res!233325) b!546186))

(declare-fun m!795011 () Bool)

(assert (=> b!546182 m!795011))

(declare-fun m!795013 () Bool)

(assert (=> b!546182 m!795013))

(assert (=> b!546182 m!795013))

(declare-fun m!795015 () Bool)

(assert (=> b!546182 m!795015))

(assert (=> b!546182 m!795015))

(declare-fun m!795017 () Bool)

(assert (=> b!546182 m!795017))

(declare-fun m!795019 () Bool)

(assert (=> d!191451 m!795019))

(declare-fun m!795021 () Bool)

(assert (=> d!191451 m!795021))

(declare-fun m!795023 () Bool)

(assert (=> d!191451 m!795023))

(assert (=> d!191451 m!794203))

(declare-fun m!795025 () Bool)

(assert (=> b!546184 m!795025))

(declare-fun m!795027 () Bool)

(assert (=> b!546184 m!795027))

(assert (=> b!546184 m!794273))

(assert (=> b!546184 m!795025))

(assert (=> b!546184 m!795025))

(declare-fun m!795029 () Bool)

(assert (=> b!546184 m!795029))

(assert (=> b!546184 m!794969))

(assert (=> b!546184 m!794273))

(declare-fun m!795031 () Bool)

(assert (=> b!546184 m!795031))

(declare-fun m!795033 () Bool)

(assert (=> b!546184 m!795033))

(declare-fun m!795035 () Bool)

(assert (=> b!546184 m!795035))

(assert (=> b!546184 m!795025))

(declare-fun m!795037 () Bool)

(assert (=> b!546184 m!795037))

(assert (=> b!546184 m!794969))

(assert (=> b!546188 m!795011))

(assert (=> b!546188 m!795013))

(assert (=> b!546188 m!795013))

(assert (=> b!546188 m!795015))

(assert (=> b!546188 m!795015))

(declare-fun m!795039 () Bool)

(assert (=> b!546188 m!795039))

(assert (=> b!546185 m!794969))

(assert (=> b!546185 m!794273))

(assert (=> b!546185 m!794969))

(assert (=> b!546185 m!794273))

(assert (=> b!546185 m!795031))

(declare-fun m!795041 () Bool)

(assert (=> b!546185 m!795041))

(assert (=> b!546187 m!795011))

(declare-fun m!795043 () Bool)

(assert (=> b!546187 m!795043))

(assert (=> b!546187 m!794273))

(assert (=> b!546189 m!795011))

(declare-fun m!795045 () Bool)

(assert (=> b!546189 m!795045))

(assert (=> b!546189 m!795045))

(declare-fun m!795047 () Bool)

(assert (=> b!546189 m!795047))

(assert (=> b!546186 m!795011))

(declare-fun m!795049 () Bool)

(assert (=> b!546186 m!795049))

(assert (=> b!546183 m!795011))

(assert (=> b!545629 d!191451))

(declare-fun d!191453 () Bool)

(assert (=> d!191453 (= (apply!1286 (transformation!1011 (rule!1727 token!491)) lt!228684) (dynLambda!3138 (toValue!1858 (transformation!1011 (rule!1727 token!491))) lt!228684))))

(declare-fun b_lambda!21001 () Bool)

(assert (=> (not b_lambda!21001) (not d!191453)))

(assert (=> d!191453 t!74742))

(declare-fun b_and!53351 () Bool)

(assert (= b_and!53347 (and (=> t!74742 result!53596) b_and!53351)))

(assert (=> d!191453 t!74744))

(declare-fun b_and!53353 () Bool)

(assert (= b_and!53349 (and (=> t!74744 result!53598) b_and!53353)))

(assert (=> d!191453 m!794999))

(assert (=> b!545629 d!191453))

(declare-fun d!191455 () Bool)

(assert (=> d!191455 (= suffix!1342 lt!228676)))

(declare-fun lt!228912 () Unit!9425)

(assert (=> d!191455 (= lt!228912 (choose!3868 lt!228666 suffix!1342 lt!228666 lt!228676 lt!228669))))

(assert (=> d!191455 (isPrefix!653 lt!228666 lt!228669)))

(assert (=> d!191455 (= (lemmaSamePrefixThenSameSuffix!380 lt!228666 suffix!1342 lt!228666 lt!228676 lt!228669) lt!228912)))

(declare-fun bs!67691 () Bool)

(assert (= bs!67691 d!191455))

(declare-fun m!795051 () Bool)

(assert (=> bs!67691 m!795051))

(declare-fun m!795053 () Bool)

(assert (=> bs!67691 m!795053))

(assert (=> b!545629 d!191455))

(declare-fun d!191457 () Bool)

(assert (=> d!191457 (= (maxPrefixOneRule!310 thiss!22590 (rule!1727 (_1!3468 (v!16177 lt!228695))) input!2705) (Some!1360 (tuple2!6409 (Token!1759 (apply!1286 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))) (seqFromList!1209 lt!228674)) (rule!1727 (_1!3468 (v!16177 lt!228695))) (size!4307 lt!228674) lt!228674) (_2!3468 (v!16177 lt!228695)))))))

(declare-fun lt!228913 () Unit!9425)

(assert (=> d!191457 (= lt!228913 (choose!3874 thiss!22590 rules!3103 lt!228674 input!2705 (_2!3468 (v!16177 lt!228695)) (rule!1727 (_1!3468 (v!16177 lt!228695)))))))

(assert (=> d!191457 (not (isEmpty!3878 rules!3103))))

(assert (=> d!191457 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!62 thiss!22590 rules!3103 lt!228674 input!2705 (_2!3468 (v!16177 lt!228695)) (rule!1727 (_1!3468 (v!16177 lt!228695)))) lt!228913)))

(declare-fun bs!67692 () Bool)

(assert (= bs!67692 d!191457))

(assert (=> bs!67692 m!794223))

(declare-fun m!795055 () Bool)

(assert (=> bs!67692 m!795055))

(assert (=> bs!67692 m!794211))

(assert (=> bs!67692 m!794223))

(assert (=> bs!67692 m!794255))

(assert (=> bs!67692 m!794179))

(declare-fun m!795057 () Bool)

(assert (=> bs!67692 m!795057))

(assert (=> b!545629 d!191457))

(declare-fun d!191459 () Bool)

(assert (=> d!191459 (= (seqFromList!1209 lt!228666) (fromListB!527 lt!228666))))

(declare-fun bs!67693 () Bool)

(assert (= bs!67693 d!191459))

(declare-fun m!795059 () Bool)

(assert (=> bs!67693 m!795059))

(assert (=> b!545629 d!191459))

(assert (=> b!545629 d!191293))

(declare-fun d!191461 () Bool)

(assert (=> d!191461 (= (get!2031 lt!228662) (v!16177 lt!228662))))

(assert (=> b!545606 d!191461))

(declare-fun d!191463 () Bool)

(assert (=> d!191463 (= (isEmpty!3879 input!2705) ((_ is Nil!5371) input!2705))))

(assert (=> b!545627 d!191463))

(declare-fun d!191465 () Bool)

(declare-fun res!233330 () Bool)

(declare-fun e!330066 () Bool)

(assert (=> d!191465 (=> (not res!233330) (not e!330066))))

(assert (=> d!191465 (= res!233330 (not (isEmpty!3879 (originalCharacters!1050 token!491))))))

(assert (=> d!191465 (= (inv!6739 token!491) e!330066)))

(declare-fun b!546195 () Bool)

(declare-fun res!233331 () Bool)

(assert (=> b!546195 (=> (not res!233331) (not e!330066))))

(assert (=> b!546195 (= res!233331 (= (originalCharacters!1050 token!491) (list!2227 (dynLambda!3137 (toChars!1717 (transformation!1011 (rule!1727 token!491))) (value!33680 token!491)))))))

(declare-fun b!546196 () Bool)

(assert (=> b!546196 (= e!330066 (= (size!4306 token!491) (size!4307 (originalCharacters!1050 token!491))))))

(assert (= (and d!191465 res!233330) b!546195))

(assert (= (and b!546195 res!233331) b!546196))

(declare-fun b_lambda!21003 () Bool)

(assert (=> (not b_lambda!21003) (not b!546195)))

(assert (=> b!546195 t!74698))

(declare-fun b_and!53355 () Bool)

(assert (= b_and!53343 (and (=> t!74698 result!53544) b_and!53355)))

(assert (=> b!546195 t!74700))

(declare-fun b_and!53357 () Bool)

(assert (= b_and!53345 (and (=> t!74700 result!53546) b_and!53357)))

(declare-fun m!795061 () Bool)

(assert (=> d!191465 m!795061))

(assert (=> b!546195 m!794449))

(assert (=> b!546195 m!794449))

(declare-fun m!795063 () Bool)

(assert (=> b!546195 m!795063))

(assert (=> b!546196 m!794253))

(assert (=> start!50392 d!191465))

(declare-fun b!546207 () Bool)

(declare-fun e!330073 () Bool)

(declare-fun inv!17 (TokenValue!1035) Bool)

(assert (=> b!546207 (= e!330073 (inv!17 (value!33680 token!491)))))

(declare-fun b!546208 () Bool)

(declare-fun e!330075 () Bool)

(declare-fun inv!15 (TokenValue!1035) Bool)

(assert (=> b!546208 (= e!330075 (inv!15 (value!33680 token!491)))))

(declare-fun b!546209 () Bool)

(declare-fun e!330074 () Bool)

(declare-fun inv!16 (TokenValue!1035) Bool)

(assert (=> b!546209 (= e!330074 (inv!16 (value!33680 token!491)))))

(declare-fun b!546210 () Bool)

(declare-fun res!233334 () Bool)

(assert (=> b!546210 (=> res!233334 e!330075)))

(assert (=> b!546210 (= res!233334 (not ((_ is IntegerValue!3107) (value!33680 token!491))))))

(assert (=> b!546210 (= e!330073 e!330075)))

(declare-fun d!191467 () Bool)

(declare-fun c!102993 () Bool)

(assert (=> d!191467 (= c!102993 ((_ is IntegerValue!3105) (value!33680 token!491)))))

(assert (=> d!191467 (= (inv!21 (value!33680 token!491)) e!330074)))

(declare-fun b!546211 () Bool)

(assert (=> b!546211 (= e!330074 e!330073)))

(declare-fun c!102992 () Bool)

(assert (=> b!546211 (= c!102992 ((_ is IntegerValue!3106) (value!33680 token!491)))))

(assert (= (and d!191467 c!102993) b!546209))

(assert (= (and d!191467 (not c!102993)) b!546211))

(assert (= (and b!546211 c!102992) b!546207))

(assert (= (and b!546211 (not c!102992)) b!546210))

(assert (= (and b!546210 (not res!233334)) b!546208))

(declare-fun m!795065 () Bool)

(assert (=> b!546207 m!795065))

(declare-fun m!795067 () Bool)

(assert (=> b!546208 m!795067))

(declare-fun m!795069 () Bool)

(assert (=> b!546209 m!795069))

(assert (=> b!545624 d!191467))

(declare-fun b!546216 () Bool)

(declare-fun e!330078 () Bool)

(declare-fun tp!173354 () Bool)

(assert (=> b!546216 (= e!330078 (and tp_is_empty!3045 tp!173354))))

(assert (=> b!545626 (= tp!173302 e!330078)))

(assert (= (and b!545626 ((_ is Cons!5371) (t!74682 suffix!1342))) b!546216))

(declare-fun b!546227 () Bool)

(declare-fun b_free!15173 () Bool)

(declare-fun b_next!15189 () Bool)

(assert (=> b!546227 (= b_free!15173 (not b_next!15189))))

(declare-fun t!74746 () Bool)

(declare-fun tb!47931 () Bool)

(assert (=> (and b!546227 (= (toValue!1858 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toValue!1858 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74746) tb!47931))

(declare-fun result!53604 () Bool)

(assert (= result!53604 result!53538))

(assert (=> d!191257 t!74746))

(assert (=> d!191293 t!74746))

(declare-fun tb!47933 () Bool)

(declare-fun t!74748 () Bool)

(assert (=> (and b!546227 (= (toValue!1858 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toValue!1858 (transformation!1011 (rule!1727 token!491)))) t!74748) tb!47933))

(declare-fun result!53606 () Bool)

(assert (= result!53606 result!53596))

(assert (=> d!191447 t!74748))

(assert (=> d!191453 t!74748))

(declare-fun tp!173365 () Bool)

(declare-fun b_and!53359 () Bool)

(assert (=> b!546227 (= tp!173365 (and (=> t!74746 result!53604) (=> t!74748 result!53606) b_and!53359))))

(declare-fun b_free!15175 () Bool)

(declare-fun b_next!15191 () Bool)

(assert (=> b!546227 (= b_free!15175 (not b_next!15191))))

(declare-fun tb!47935 () Bool)

(declare-fun t!74750 () Bool)

(assert (=> (and b!546227 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 token!491)))) t!74750) tb!47935))

(declare-fun result!53608 () Bool)

(assert (= result!53608 result!53544))

(assert (=> d!191269 t!74750))

(assert (=> b!546195 t!74750))

(declare-fun t!74752 () Bool)

(declare-fun tb!47937 () Bool)

(assert (=> (and b!546227 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 token!491)))) t!74752) tb!47937))

(declare-fun result!53610 () Bool)

(assert (= result!53610 result!53592))

(assert (=> d!191447 t!74752))

(declare-fun tb!47939 () Bool)

(declare-fun t!74754 () Bool)

(assert (=> (and b!546227 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74754) tb!47939))

(declare-fun result!53612 () Bool)

(assert (= result!53612 result!53566))

(assert (=> d!191293 t!74754))

(declare-fun tb!47941 () Bool)

(declare-fun t!74756 () Bool)

(assert (=> (and b!546227 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 (_1!3468 (v!16177 lt!228695)))))) t!74756) tb!47941))

(declare-fun result!53614 () Bool)

(assert (= result!53614 result!53532))

(assert (=> d!191237 t!74756))

(declare-fun b_and!53361 () Bool)

(declare-fun tp!173366 () Bool)

(assert (=> b!546227 (= tp!173366 (and (=> t!74754 result!53612) (=> t!74756 result!53614) (=> t!74750 result!53608) (=> t!74752 result!53610) b_and!53361))))

(declare-fun e!330090 () Bool)

(assert (=> b!546227 (= e!330090 (and tp!173365 tp!173366))))

(declare-fun tp!173364 () Bool)

(declare-fun e!330089 () Bool)

(declare-fun b!546226 () Bool)

(assert (=> b!546226 (= e!330089 (and tp!173364 (inv!6735 (tag!1273 (h!10774 (t!74684 rules!3103)))) (inv!6738 (transformation!1011 (h!10774 (t!74684 rules!3103)))) e!330090))))

(declare-fun b!546225 () Bool)

(declare-fun e!330088 () Bool)

(declare-fun tp!173363 () Bool)

(assert (=> b!546225 (= e!330088 (and e!330089 tp!173363))))

(assert (=> b!545605 (= tp!173294 e!330088)))

(assert (= b!546226 b!546227))

(assert (= b!546225 b!546226))

(assert (= (and b!545605 ((_ is Cons!5373) (t!74684 rules!3103))) b!546225))

(declare-fun m!795071 () Bool)

(assert (=> b!546226 m!795071))

(declare-fun m!795073 () Bool)

(assert (=> b!546226 m!795073))

(declare-fun b!546241 () Bool)

(declare-fun e!330093 () Bool)

(declare-fun tp!173381 () Bool)

(declare-fun tp!173377 () Bool)

(assert (=> b!546241 (= e!330093 (and tp!173381 tp!173377))))

(declare-fun b!546240 () Bool)

(declare-fun tp!173379 () Bool)

(assert (=> b!546240 (= e!330093 tp!173379)))

(declare-fun b!546238 () Bool)

(assert (=> b!546238 (= e!330093 tp_is_empty!3045)))

(declare-fun b!546239 () Bool)

(declare-fun tp!173378 () Bool)

(declare-fun tp!173380 () Bool)

(assert (=> b!546239 (= e!330093 (and tp!173378 tp!173380))))

(assert (=> b!545620 (= tp!173297 e!330093)))

(assert (= (and b!545620 ((_ is ElementMatch!1345) (regex!1011 (h!10774 rules!3103)))) b!546238))

(assert (= (and b!545620 ((_ is Concat!2380) (regex!1011 (h!10774 rules!3103)))) b!546239))

(assert (= (and b!545620 ((_ is Star!1345) (regex!1011 (h!10774 rules!3103)))) b!546240))

(assert (= (and b!545620 ((_ is Union!1345) (regex!1011 (h!10774 rules!3103)))) b!546241))

(declare-fun b!546245 () Bool)

(declare-fun e!330094 () Bool)

(declare-fun tp!173386 () Bool)

(declare-fun tp!173382 () Bool)

(assert (=> b!546245 (= e!330094 (and tp!173386 tp!173382))))

(declare-fun b!546244 () Bool)

(declare-fun tp!173384 () Bool)

(assert (=> b!546244 (= e!330094 tp!173384)))

(declare-fun b!546242 () Bool)

(assert (=> b!546242 (= e!330094 tp_is_empty!3045)))

(declare-fun b!546243 () Bool)

(declare-fun tp!173383 () Bool)

(declare-fun tp!173385 () Bool)

(assert (=> b!546243 (= e!330094 (and tp!173383 tp!173385))))

(assert (=> b!545640 (= tp!173293 e!330094)))

(assert (= (and b!545640 ((_ is ElementMatch!1345) (regex!1011 (rule!1727 token!491)))) b!546242))

(assert (= (and b!545640 ((_ is Concat!2380) (regex!1011 (rule!1727 token!491)))) b!546243))

(assert (= (and b!545640 ((_ is Star!1345) (regex!1011 (rule!1727 token!491)))) b!546244))

(assert (= (and b!545640 ((_ is Union!1345) (regex!1011 (rule!1727 token!491)))) b!546245))

(declare-fun b!546246 () Bool)

(declare-fun e!330095 () Bool)

(declare-fun tp!173387 () Bool)

(assert (=> b!546246 (= e!330095 (and tp_is_empty!3045 tp!173387))))

(assert (=> b!545624 (= tp!173301 e!330095)))

(assert (= (and b!545624 ((_ is Cons!5371) (originalCharacters!1050 token!491))) b!546246))

(declare-fun b!546247 () Bool)

(declare-fun e!330096 () Bool)

(declare-fun tp!173388 () Bool)

(assert (=> b!546247 (= e!330096 (and tp_is_empty!3045 tp!173388))))

(assert (=> b!545638 (= tp!173298 e!330096)))

(assert (= (and b!545638 ((_ is Cons!5371) (t!74682 input!2705))) b!546247))

(declare-fun b_lambda!21005 () Bool)

(assert (= b_lambda!21001 (or (and b!545622 b_free!15161) (and b!545634 b_free!15165 (= (toValue!1858 (transformation!1011 (h!10774 rules!3103))) (toValue!1858 (transformation!1011 (rule!1727 token!491))))) (and b!546227 b_free!15173 (= (toValue!1858 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toValue!1858 (transformation!1011 (rule!1727 token!491))))) b_lambda!21005)))

(declare-fun b_lambda!21007 () Bool)

(assert (= b_lambda!20997 (or (and b!545622 b_free!15163) (and b!545634 b_free!15167 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 token!491))))) (and b!546227 b_free!15175 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 token!491))))) b_lambda!21007)))

(declare-fun b_lambda!21009 () Bool)

(assert (= b_lambda!20965 (or (and b!545622 b_free!15163) (and b!545634 b_free!15167 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 token!491))))) (and b!546227 b_free!15175 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 token!491))))) b_lambda!21009)))

(declare-fun b_lambda!21011 () Bool)

(assert (= b_lambda!21003 (or (and b!545622 b_free!15163) (and b!545634 b_free!15167 (= (toChars!1717 (transformation!1011 (h!10774 rules!3103))) (toChars!1717 (transformation!1011 (rule!1727 token!491))))) (and b!546227 b_free!15175 (= (toChars!1717 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toChars!1717 (transformation!1011 (rule!1727 token!491))))) b_lambda!21011)))

(declare-fun b_lambda!21013 () Bool)

(assert (= b_lambda!20999 (or (and b!545622 b_free!15161) (and b!545634 b_free!15165 (= (toValue!1858 (transformation!1011 (h!10774 rules!3103))) (toValue!1858 (transformation!1011 (rule!1727 token!491))))) (and b!546227 b_free!15173 (= (toValue!1858 (transformation!1011 (h!10774 (t!74684 rules!3103)))) (toValue!1858 (transformation!1011 (rule!1727 token!491))))) b_lambda!21013)))

(check-sat (not b_next!15191) (not d!191423) (not d!191249) (not b!545782) (not b!545689) (not d!191427) (not b_lambda!20963) (not d!191243) (not b_next!15189) (not b!545721) (not b!545776) (not b!546083) (not d!191225) (not b!546169) (not b!546171) (not b!545775) (not d!191457) (not b_next!15177) (not b!546172) (not d!191287) (not d!191447) (not b!546149) (not b!546062) (not b_next!15181) (not d!191279) (not b!545701) (not b!546246) (not d!191459) (not b!546241) (not b!545746) (not b!545668) (not b_lambda!20961) (not b!545723) (not b!545771) (not b!546071) (not b!546096) (not b!545737) (not b!546179) (not b!545714) (not b!545692) (not b!546098) (not d!191241) (not tb!47927) (not b!546175) (not b!545773) b_and!53351 (not d!191465) (not b!545781) (not d!191255) (not b!546245) (not d!191245) (not b!545772) (not d!191439) (not b!545693) (not b_lambda!21007) (not d!191251) (not b!546187) (not b!546141) (not b!546070) (not b!546183) (not d!191273) (not d!191283) b_and!53353 (not b!546170) (not b!545715) (not d!191267) (not b!546176) (not b!545735) (not b!546243) (not b!546128) (not b!545739) (not b!545738) (not b!546216) (not b!546065) (not bm!38330) (not b!546186) (not d!191293) (not b!545743) (not d!191259) (not b!546174) (not b!546185) (not b_lambda!21005) (not b!545994) (not b!545777) (not d!191451) (not b!546247) (not b!546095) (not d!191235) (not d!191291) b_and!53359 (not tb!47883) (not b!546101) (not b_lambda!20981) (not b!545712) (not d!191247) b_and!53355 (not tb!47923) (not b!546148) (not b!546180) (not b!546145) (not b!545774) (not b!546067) (not b!546225) (not b!546060) (not b!545745) (not d!191209) (not b!546100) b_and!53361 (not d!191421) (not d!191263) (not bm!38319) (not d!191205) (not tb!47903) (not b!545752) (not b!545699) (not d!191455) (not b!546196) (not b_lambda!20979) (not b!546173) (not b!545778) (not d!191237) (not bm!38329) (not b!546244) (not b!546240) (not b!546102) (not b!546195) (not b!546182) (not b_lambda!21011) (not b!546209) (not b!546207) (not d!191201) (not b!546184) (not d!191281) (not b!545706) (not b!546189) (not d!191437) (not b!545690) (not d!191269) (not b_next!15183) (not d!191441) (not d!191223) (not b!546208) (not b!546130) (not tb!47875) (not b!545786) (not b!546226) (not b_next!15179) (not b!545733) (not d!191227) (not d!191449) (not b!545730) (not b_lambda!21009) (not d!191377) (not b!545716) (not b!545694) (not b!545669) b_and!53357 (not d!191233) tp_is_empty!3045 (not b!546097) (not b!545740) (not b_lambda!21013) (not d!191443) (not b!546239) (not b!546099) (not b!545697) (not d!191285) (not b!546120) (not b!545700) (not d!191445) (not b!545688) (not b!546188) (not d!191231) (not d!191383) (not tb!47879))
(check-sat (not b_next!15189) (not b_next!15177) (not b_next!15191) (not b_next!15181) b_and!53351 b_and!53353 b_and!53359 b_and!53355 b_and!53361 (not b_next!15183) (not b_next!15179) b_and!53357)
