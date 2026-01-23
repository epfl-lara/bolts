; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218976 () Bool)

(assert start!218976)

(declare-fun b!2245802 () Bool)

(declare-fun b_free!65517 () Bool)

(declare-fun b_next!66221 () Bool)

(assert (=> b!2245802 (= b_free!65517 (not b_next!66221))))

(declare-fun tp!708999 () Bool)

(declare-fun b_and!175657 () Bool)

(assert (=> b!2245802 (= tp!708999 b_and!175657)))

(declare-fun b_free!65519 () Bool)

(declare-fun b_next!66223 () Bool)

(assert (=> b!2245802 (= b_free!65519 (not b_next!66223))))

(declare-fun tp!709002 () Bool)

(declare-fun b_and!175659 () Bool)

(assert (=> b!2245802 (= tp!709002 b_and!175659)))

(declare-fun b!2245817 () Bool)

(declare-fun b_free!65521 () Bool)

(declare-fun b_next!66225 () Bool)

(assert (=> b!2245817 (= b_free!65521 (not b_next!66225))))

(declare-fun tp!709010 () Bool)

(declare-fun b_and!175661 () Bool)

(assert (=> b!2245817 (= tp!709010 b_and!175661)))

(declare-fun b_free!65523 () Bool)

(declare-fun b_next!66227 () Bool)

(assert (=> b!2245817 (= b_free!65523 (not b_next!66227))))

(declare-fun tp!709009 () Bool)

(declare-fun b_and!175663 () Bool)

(assert (=> b!2245817 (= tp!709009 b_and!175663)))

(declare-fun b!2245798 () Bool)

(declare-fun b_free!65525 () Bool)

(declare-fun b_next!66229 () Bool)

(assert (=> b!2245798 (= b_free!65525 (not b_next!66229))))

(declare-fun tp!709004 () Bool)

(declare-fun b_and!175665 () Bool)

(assert (=> b!2245798 (= tp!709004 b_and!175665)))

(declare-fun b_free!65527 () Bool)

(declare-fun b_next!66231 () Bool)

(assert (=> b!2245798 (= b_free!65527 (not b_next!66231))))

(declare-fun tp!708996 () Bool)

(declare-fun b_and!175667 () Bool)

(assert (=> b!2245798 (= tp!708996 b_and!175667)))

(declare-fun b!2245815 () Bool)

(declare-fun b_free!65529 () Bool)

(declare-fun b_next!66233 () Bool)

(assert (=> b!2245815 (= b_free!65529 (not b_next!66233))))

(declare-fun tp!709011 () Bool)

(declare-fun b_and!175669 () Bool)

(assert (=> b!2245815 (= tp!709011 b_and!175669)))

(declare-fun b_free!65531 () Bool)

(declare-fun b_next!66235 () Bool)

(assert (=> b!2245815 (= b_free!65531 (not b_next!66235))))

(declare-fun tp!709012 () Bool)

(declare-fun b_and!175671 () Bool)

(assert (=> b!2245815 (= tp!709012 b_and!175671)))

(declare-fun b!2245791 () Bool)

(declare-fun res!959582 () Bool)

(declare-fun e!1436812 () Bool)

(assert (=> b!2245791 (=> res!959582 e!1436812)))

(declare-datatypes ((List!26669 0))(
  ( (Nil!26575) (Cons!26575 (h!31976 (_ BitVec 16)) (t!200367 List!26669)) )
))
(declare-datatypes ((TokenValue!4369 0))(
  ( (FloatLiteralValue!8738 (text!31028 List!26669)) (TokenValueExt!4368 (__x!17798 Int)) (Broken!21845 (value!133693 List!26669)) (Object!4462) (End!4369) (Def!4369) (Underscore!4369) (Match!4369) (Else!4369) (Error!4369) (Case!4369) (If!4369) (Extends!4369) (Abstract!4369) (Class!4369) (Val!4369) (DelimiterValue!8738 (del!4429 List!26669)) (KeywordValue!4375 (value!133694 List!26669)) (CommentValue!8738 (value!133695 List!26669)) (WhitespaceValue!8738 (value!133696 List!26669)) (IndentationValue!4369 (value!133697 List!26669)) (String!28948) (Int32!4369) (Broken!21846 (value!133698 List!26669)) (Boolean!4370) (Unit!39537) (OperatorValue!4372 (op!4429 List!26669)) (IdentifierValue!8738 (value!133699 List!26669)) (IdentifierValue!8739 (value!133700 List!26669)) (WhitespaceValue!8739 (value!133701 List!26669)) (True!8738) (False!8738) (Broken!21847 (value!133702 List!26669)) (Broken!21848 (value!133703 List!26669)) (True!8739) (RightBrace!4369) (RightBracket!4369) (Colon!4369) (Null!4369) (Comma!4369) (LeftBracket!4369) (False!8739) (LeftBrace!4369) (ImaginaryLiteralValue!4369 (text!31029 List!26669)) (StringLiteralValue!13107 (value!133704 List!26669)) (EOFValue!4369 (value!133705 List!26669)) (IdentValue!4369 (value!133706 List!26669)) (DelimiterValue!8739 (value!133707 List!26669)) (DedentValue!4369 (value!133708 List!26669)) (NewLineValue!4369 (value!133709 List!26669)) (IntegerValue!13107 (value!133710 (_ BitVec 32)) (text!31030 List!26669)) (IntegerValue!13108 (value!133711 Int) (text!31031 List!26669)) (Times!4369) (Or!4369) (Equal!4369) (Minus!4369) (Broken!21849 (value!133712 List!26669)) (And!4369) (Div!4369) (LessEqual!4369) (Mod!4369) (Concat!10924) (Not!4369) (Plus!4369) (SpaceValue!4369 (value!133713 List!26669)) (IntegerValue!13109 (value!133714 Int) (text!31032 List!26669)) (StringLiteralValue!13108 (text!31033 List!26669)) (FloatLiteralValue!8739 (text!31034 List!26669)) (BytesLiteralValue!4369 (value!133715 List!26669)) (CommentValue!8739 (value!133716 List!26669)) (StringLiteralValue!13109 (value!133717 List!26669)) (ErrorTokenValue!4369 (msg!4430 List!26669)) )
))
(declare-datatypes ((C!13256 0))(
  ( (C!13257 (val!7676 Int)) )
))
(declare-datatypes ((List!26670 0))(
  ( (Nil!26576) (Cons!26576 (h!31977 C!13256) (t!200368 List!26670)) )
))
(declare-datatypes ((IArray!17129 0))(
  ( (IArray!17130 (innerList!8622 List!26670)) )
))
(declare-datatypes ((Conc!8562 0))(
  ( (Node!8562 (left!20198 Conc!8562) (right!20528 Conc!8562) (csize!17354 Int) (cheight!8773 Int)) (Leaf!12651 (xs!11504 IArray!17129) (csize!17355 Int)) (Empty!8562) )
))
(declare-datatypes ((BalanceConc!16852 0))(
  ( (BalanceConc!16853 (c!357334 Conc!8562)) )
))
(declare-datatypes ((String!28949 0))(
  ( (String!28950 (value!133718 String)) )
))
(declare-datatypes ((Regex!6555 0))(
  ( (ElementMatch!6555 (c!357335 C!13256)) (Concat!10925 (regOne!13622 Regex!6555) (regTwo!13622 Regex!6555)) (EmptyExpr!6555) (Star!6555 (reg!6884 Regex!6555)) (EmptyLang!6555) (Union!6555 (regOne!13623 Regex!6555) (regTwo!13623 Regex!6555)) )
))
(declare-datatypes ((TokenValueInjection!8278 0))(
  ( (TokenValueInjection!8279 (toValue!5937 Int) (toChars!5796 Int)) )
))
(declare-datatypes ((Rule!8214 0))(
  ( (Rule!8215 (regex!4207 Regex!6555) (tag!4697 String!28949) (isSeparator!4207 Bool) (transformation!4207 TokenValueInjection!8278)) )
))
(declare-datatypes ((Token!7892 0))(
  ( (Token!7893 (value!133719 TokenValue!4369) (rule!6505 Rule!8214) (size!20779 Int) (originalCharacters!4977 List!26670)) )
))
(declare-datatypes ((List!26671 0))(
  ( (Nil!26577) (Cons!26577 (h!31978 Token!7892) (t!200369 List!26671)) )
))
(declare-fun tokens!456 () List!26671)

(get-info :version)

(assert (=> b!2245791 (= res!959582 (not ((_ is Nil!26577) tokens!456)))))

(declare-fun e!1436809 () Bool)

(declare-fun tp!709013 () Bool)

(declare-fun otherR!12 () Rule!8214)

(declare-fun e!1436806 () Bool)

(declare-fun b!2245792 () Bool)

(declare-fun inv!36100 (String!28949) Bool)

(declare-fun inv!36103 (TokenValueInjection!8278) Bool)

(assert (=> b!2245792 (= e!1436806 (and tp!709013 (inv!36100 (tag!4697 otherR!12)) (inv!36103 (transformation!4207 otherR!12)) e!1436809))))

(declare-fun e!1436822 () Bool)

(declare-fun r!2363 () Rule!8214)

(declare-fun e!1436825 () Bool)

(declare-fun b!2245793 () Bool)

(declare-fun tp!709000 () Bool)

(assert (=> b!2245793 (= e!1436825 (and tp!709000 (inv!36100 (tag!4697 r!2363)) (inv!36103 (transformation!4207 r!2363)) e!1436822))))

(declare-fun b!2245794 () Bool)

(declare-fun e!1436829 () Bool)

(declare-fun tp_is_empty!10331 () Bool)

(declare-fun tp!708998 () Bool)

(assert (=> b!2245794 (= e!1436829 (and tp_is_empty!10331 tp!708998))))

(declare-fun b!2245795 () Bool)

(declare-fun e!1436816 () Bool)

(declare-fun head!4766 (List!26671) Token!7892)

(assert (=> b!2245795 (= e!1436816 (= (rule!6505 (head!4766 tokens!456)) r!2363))))

(declare-fun res!959569 () Bool)

(declare-fun e!1436817 () Bool)

(assert (=> start!218976 (=> (not res!959569) (not e!1436817))))

(declare-datatypes ((LexerInterface!3804 0))(
  ( (LexerInterfaceExt!3801 (__x!17799 Int)) (Lexer!3802) )
))
(declare-fun thiss!16613 () LexerInterface!3804)

(assert (=> start!218976 (= res!959569 ((_ is Lexer!3802) thiss!16613))))

(assert (=> start!218976 e!1436817))

(assert (=> start!218976 true))

(assert (=> start!218976 e!1436829))

(assert (=> start!218976 e!1436806))

(declare-fun e!1436827 () Bool)

(assert (=> start!218976 e!1436827))

(declare-fun e!1436830 () Bool)

(assert (=> start!218976 e!1436830))

(declare-fun e!1436826 () Bool)

(assert (=> start!218976 e!1436826))

(assert (=> start!218976 e!1436825))

(declare-fun e!1436810 () Bool)

(assert (=> start!218976 e!1436810))

(declare-fun b!2245796 () Bool)

(declare-fun e!1436824 () Bool)

(declare-fun tp!709007 () Bool)

(declare-fun inv!36104 (Token!7892) Bool)

(assert (=> b!2245796 (= e!1436810 (and (inv!36104 (h!31978 tokens!456)) e!1436824 tp!709007))))

(declare-fun b!2245797 () Bool)

(declare-fun e!1436818 () Bool)

(assert (=> b!2245797 (= e!1436818 e!1436812)))

(declare-fun res!959579 () Bool)

(assert (=> b!2245797 (=> res!959579 e!1436812)))

(declare-datatypes ((List!26672 0))(
  ( (Nil!26578) (Cons!26578 (h!31979 Rule!8214) (t!200370 List!26672)) )
))
(declare-fun rules!1750 () List!26672)

(declare-fun getIndex!228 (List!26672 Rule!8214) Int)

(assert (=> b!2245797 (= res!959579 (<= (getIndex!228 rules!1750 r!2363) (getIndex!228 rules!1750 otherR!12)))))

(declare-fun ruleValid!1299 (LexerInterface!3804 Rule!8214) Bool)

(assert (=> b!2245797 (ruleValid!1299 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39538 0))(
  ( (Unit!39539) )
))
(declare-fun lt!835332 () Unit!39538)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!706 (LexerInterface!3804 Rule!8214 List!26672) Unit!39538)

(assert (=> b!2245797 (= lt!835332 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!706 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2245798 (= e!1436809 (and tp!709004 tp!708996))))

(declare-fun b!2245799 () Bool)

(declare-fun e!1436805 () Bool)

(assert (=> b!2245799 (= e!1436817 e!1436805)))

(declare-fun res!959575 () Bool)

(assert (=> b!2245799 (=> (not res!959575) (not e!1436805))))

(declare-datatypes ((IArray!17131 0))(
  ( (IArray!17132 (innerList!8623 List!26671)) )
))
(declare-datatypes ((Conc!8563 0))(
  ( (Node!8563 (left!20199 Conc!8563) (right!20529 Conc!8563) (csize!17356 Int) (cheight!8774 Int)) (Leaf!12652 (xs!11505 IArray!17131) (csize!17357 Int)) (Empty!8563) )
))
(declare-datatypes ((BalanceConc!16854 0))(
  ( (BalanceConc!16855 (c!357336 Conc!8563)) )
))
(declare-datatypes ((tuple2!26038 0))(
  ( (tuple2!26039 (_1!15529 BalanceConc!16854) (_2!15529 BalanceConc!16852)) )
))
(declare-fun lt!835331 () tuple2!26038)

(declare-fun suffix!886 () List!26670)

(declare-datatypes ((tuple2!26040 0))(
  ( (tuple2!26041 (_1!15530 List!26671) (_2!15530 List!26670)) )
))
(declare-fun list!10170 (BalanceConc!16854) List!26671)

(declare-fun list!10171 (BalanceConc!16852) List!26670)

(assert (=> b!2245799 (= res!959575 (= (tuple2!26041 (list!10170 (_1!15529 lt!835331)) (list!10171 (_2!15529 lt!835331))) (tuple2!26041 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26670)

(declare-fun lex!1643 (LexerInterface!3804 List!26672 BalanceConc!16852) tuple2!26038)

(declare-fun seqFromList!2911 (List!26670) BalanceConc!16852)

(assert (=> b!2245799 (= lt!835331 (lex!1643 thiss!16613 rules!1750 (seqFromList!2911 input!1722)))))

(declare-fun b!2245800 () Bool)

(declare-fun e!1436815 () Bool)

(assert (=> b!2245800 (= e!1436805 e!1436815)))

(declare-fun res!959572 () Bool)

(assert (=> b!2245800 (=> (not res!959572) (not e!1436815))))

(declare-fun e!1436820 () Bool)

(assert (=> b!2245800 (= res!959572 e!1436820)))

(declare-fun res!959568 () Bool)

(assert (=> b!2245800 (=> res!959568 e!1436820)))

(declare-fun lt!835334 () Bool)

(assert (=> b!2245800 (= res!959568 lt!835334)))

(declare-fun isEmpty!14964 (List!26671) Bool)

(assert (=> b!2245800 (= lt!835334 (isEmpty!14964 tokens!456))))

(declare-fun b!2245801 () Bool)

(assert (=> b!2245801 (= e!1436815 (not e!1436818))))

(declare-fun res!959571 () Bool)

(assert (=> b!2245801 (=> res!959571 e!1436818)))

(declare-fun e!1436831 () Bool)

(assert (=> b!2245801 (= res!959571 e!1436831)))

(declare-fun res!959576 () Bool)

(assert (=> b!2245801 (=> (not res!959576) (not e!1436831))))

(assert (=> b!2245801 (= res!959576 (not lt!835334))))

(assert (=> b!2245801 (ruleValid!1299 thiss!16613 r!2363)))

(declare-fun lt!835333 () Unit!39538)

(assert (=> b!2245801 (= lt!835333 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!706 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1436828 () Bool)

(assert (=> b!2245802 (= e!1436828 (and tp!708999 tp!709002))))

(declare-fun b!2245803 () Bool)

(declare-fun res!959573 () Bool)

(assert (=> b!2245803 (=> (not res!959573) (not e!1436817))))

(declare-fun rulesInvariant!3306 (LexerInterface!3804 List!26672) Bool)

(assert (=> b!2245803 (= res!959573 (rulesInvariant!3306 thiss!16613 rules!1750))))

(declare-fun tp!709003 () Bool)

(declare-fun e!1436821 () Bool)

(declare-fun b!2245804 () Bool)

(declare-fun inv!21 (TokenValue!4369) Bool)

(assert (=> b!2245804 (= e!1436824 (and (inv!21 (value!133719 (h!31978 tokens!456))) e!1436821 tp!709003))))

(declare-fun b!2245805 () Bool)

(declare-fun tp!709001 () Bool)

(assert (=> b!2245805 (= e!1436821 (and tp!709001 (inv!36100 (tag!4697 (rule!6505 (h!31978 tokens!456)))) (inv!36103 (transformation!4207 (rule!6505 (h!31978 tokens!456)))) e!1436828))))

(declare-fun b!2245806 () Bool)

(declare-fun tp!709006 () Bool)

(assert (=> b!2245806 (= e!1436827 (and tp_is_empty!10331 tp!709006))))

(declare-fun b!2245807 () Bool)

(declare-fun e!1436819 () Bool)

(declare-fun tp!709008 () Bool)

(assert (=> b!2245807 (= e!1436826 (and e!1436819 tp!709008))))

(declare-fun b!2245808 () Bool)

(declare-fun res!959583 () Bool)

(assert (=> b!2245808 (=> (not res!959583) (not e!1436817))))

(declare-fun contains!4554 (List!26672 Rule!8214) Bool)

(assert (=> b!2245808 (= res!959583 (contains!4554 rules!1750 otherR!12))))

(declare-fun b!2245809 () Bool)

(declare-fun res!959570 () Bool)

(assert (=> b!2245809 (=> (not res!959570) (not e!1436817))))

(assert (=> b!2245809 (= res!959570 (contains!4554 rules!1750 r!2363))))

(declare-fun b!2245810 () Bool)

(declare-fun matchR!2816 (Regex!6555 List!26670) Bool)

(declare-fun charsOf!2595 (Token!7892) BalanceConc!16852)

(assert (=> b!2245810 (= e!1436831 (not (matchR!2816 (regex!4207 r!2363) (list!10171 (charsOf!2595 (head!4766 tokens!456))))))))

(declare-fun b!2245811 () Bool)

(declare-fun res!959574 () Bool)

(assert (=> b!2245811 (=> (not res!959574) (not e!1436815))))

(assert (=> b!2245811 (= res!959574 e!1436816)))

(declare-fun res!959578 () Bool)

(assert (=> b!2245811 (=> res!959578 e!1436816)))

(assert (=> b!2245811 (= res!959578 lt!835334)))

(declare-fun b!2245812 () Bool)

(declare-fun otherP!12 () List!26670)

(declare-fun size!20780 (BalanceConc!16852) Int)

(declare-fun size!20781 (List!26670) Int)

(assert (=> b!2245812 (= e!1436820 (<= (size!20780 (charsOf!2595 (head!4766 tokens!456))) (size!20781 otherP!12)))))

(declare-fun b!2245813 () Bool)

(declare-fun res!959577 () Bool)

(assert (=> b!2245813 (=> (not res!959577) (not e!1436817))))

(declare-fun isEmpty!14965 (List!26672) Bool)

(assert (=> b!2245813 (= res!959577 (not (isEmpty!14965 rules!1750)))))

(declare-fun b!2245814 () Bool)

(declare-fun res!959580 () Bool)

(assert (=> b!2245814 (=> (not res!959580) (not e!1436815))))

(declare-fun isPrefix!2197 (List!26670 List!26670) Bool)

(assert (=> b!2245814 (= res!959580 (isPrefix!2197 otherP!12 input!1722))))

(assert (=> b!2245815 (= e!1436822 (and tp!709011 tp!709012))))

(declare-fun b!2245816 () Bool)

(declare-fun res!959581 () Bool)

(assert (=> b!2245816 (=> (not res!959581) (not e!1436815))))

(assert (=> b!2245816 (= res!959581 (not (= r!2363 otherR!12)))))

(declare-fun e!1436808 () Bool)

(assert (=> b!2245817 (= e!1436808 (and tp!709010 tp!709009))))

(declare-fun b!2245818 () Bool)

(assert (=> b!2245818 (= e!1436812 true)))

(declare-datatypes ((tuple2!26042 0))(
  ( (tuple2!26043 (_1!15531 Token!7892) (_2!15531 List!26670)) )
))
(declare-datatypes ((Option!5182 0))(
  ( (None!5181) (Some!5181 (v!30193 tuple2!26042)) )
))
(declare-fun isEmpty!14966 (Option!5182) Bool)

(declare-fun maxPrefixOneRule!1300 (LexerInterface!3804 Rule!8214 List!26670) Option!5182)

(assert (=> b!2245818 (isEmpty!14966 (maxPrefixOneRule!1300 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!835330 () Unit!39538)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!391 (LexerInterface!3804 Rule!8214 List!26672 List!26670) Unit!39538)

(assert (=> b!2245818 (= lt!835330 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!391 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun tp!709005 () Bool)

(declare-fun b!2245819 () Bool)

(assert (=> b!2245819 (= e!1436819 (and tp!709005 (inv!36100 (tag!4697 (h!31979 rules!1750))) (inv!36103 (transformation!4207 (h!31979 rules!1750))) e!1436808))))

(declare-fun b!2245820 () Bool)

(declare-fun tp!708997 () Bool)

(assert (=> b!2245820 (= e!1436830 (and tp_is_empty!10331 tp!708997))))

(assert (= (and start!218976 res!959569) b!2245813))

(assert (= (and b!2245813 res!959577) b!2245803))

(assert (= (and b!2245803 res!959573) b!2245809))

(assert (= (and b!2245809 res!959570) b!2245808))

(assert (= (and b!2245808 res!959583) b!2245799))

(assert (= (and b!2245799 res!959575) b!2245800))

(assert (= (and b!2245800 (not res!959568)) b!2245812))

(assert (= (and b!2245800 res!959572) b!2245811))

(assert (= (and b!2245811 (not res!959578)) b!2245795))

(assert (= (and b!2245811 res!959574) b!2245814))

(assert (= (and b!2245814 res!959580) b!2245816))

(assert (= (and b!2245816 res!959581) b!2245801))

(assert (= (and b!2245801 res!959576) b!2245810))

(assert (= (and b!2245801 (not res!959571)) b!2245797))

(assert (= (and b!2245797 (not res!959579)) b!2245791))

(assert (= (and b!2245791 (not res!959582)) b!2245818))

(assert (= (and start!218976 ((_ is Cons!26576) input!1722)) b!2245794))

(assert (= b!2245792 b!2245798))

(assert (= start!218976 b!2245792))

(assert (= (and start!218976 ((_ is Cons!26576) suffix!886)) b!2245806))

(assert (= (and start!218976 ((_ is Cons!26576) otherP!12)) b!2245820))

(assert (= b!2245819 b!2245817))

(assert (= b!2245807 b!2245819))

(assert (= (and start!218976 ((_ is Cons!26578) rules!1750)) b!2245807))

(assert (= b!2245793 b!2245815))

(assert (= start!218976 b!2245793))

(assert (= b!2245805 b!2245802))

(assert (= b!2245804 b!2245805))

(assert (= b!2245796 b!2245804))

(assert (= (and start!218976 ((_ is Cons!26577) tokens!456)) b!2245796))

(declare-fun m!2677341 () Bool)

(assert (=> b!2245801 m!2677341))

(declare-fun m!2677343 () Bool)

(assert (=> b!2245801 m!2677343))

(declare-fun m!2677345 () Bool)

(assert (=> b!2245796 m!2677345))

(declare-fun m!2677347 () Bool)

(assert (=> b!2245809 m!2677347))

(declare-fun m!2677349 () Bool)

(assert (=> b!2245814 m!2677349))

(declare-fun m!2677351 () Bool)

(assert (=> b!2245795 m!2677351))

(declare-fun m!2677353 () Bool)

(assert (=> b!2245793 m!2677353))

(declare-fun m!2677355 () Bool)

(assert (=> b!2245793 m!2677355))

(declare-fun m!2677357 () Bool)

(assert (=> b!2245797 m!2677357))

(declare-fun m!2677359 () Bool)

(assert (=> b!2245797 m!2677359))

(declare-fun m!2677361 () Bool)

(assert (=> b!2245797 m!2677361))

(declare-fun m!2677363 () Bool)

(assert (=> b!2245797 m!2677363))

(declare-fun m!2677365 () Bool)

(assert (=> b!2245804 m!2677365))

(declare-fun m!2677367 () Bool)

(assert (=> b!2245792 m!2677367))

(declare-fun m!2677369 () Bool)

(assert (=> b!2245792 m!2677369))

(declare-fun m!2677371 () Bool)

(assert (=> b!2245799 m!2677371))

(declare-fun m!2677373 () Bool)

(assert (=> b!2245799 m!2677373))

(declare-fun m!2677375 () Bool)

(assert (=> b!2245799 m!2677375))

(assert (=> b!2245799 m!2677375))

(declare-fun m!2677377 () Bool)

(assert (=> b!2245799 m!2677377))

(declare-fun m!2677379 () Bool)

(assert (=> b!2245800 m!2677379))

(declare-fun m!2677381 () Bool)

(assert (=> b!2245803 m!2677381))

(declare-fun m!2677383 () Bool)

(assert (=> b!2245813 m!2677383))

(declare-fun m!2677385 () Bool)

(assert (=> b!2245808 m!2677385))

(declare-fun m!2677387 () Bool)

(assert (=> b!2245805 m!2677387))

(declare-fun m!2677389 () Bool)

(assert (=> b!2245805 m!2677389))

(assert (=> b!2245812 m!2677351))

(assert (=> b!2245812 m!2677351))

(declare-fun m!2677391 () Bool)

(assert (=> b!2245812 m!2677391))

(assert (=> b!2245812 m!2677391))

(declare-fun m!2677393 () Bool)

(assert (=> b!2245812 m!2677393))

(declare-fun m!2677395 () Bool)

(assert (=> b!2245812 m!2677395))

(assert (=> b!2245810 m!2677351))

(assert (=> b!2245810 m!2677351))

(assert (=> b!2245810 m!2677391))

(assert (=> b!2245810 m!2677391))

(declare-fun m!2677397 () Bool)

(assert (=> b!2245810 m!2677397))

(assert (=> b!2245810 m!2677397))

(declare-fun m!2677399 () Bool)

(assert (=> b!2245810 m!2677399))

(declare-fun m!2677401 () Bool)

(assert (=> b!2245818 m!2677401))

(assert (=> b!2245818 m!2677401))

(declare-fun m!2677403 () Bool)

(assert (=> b!2245818 m!2677403))

(declare-fun m!2677405 () Bool)

(assert (=> b!2245818 m!2677405))

(declare-fun m!2677407 () Bool)

(assert (=> b!2245819 m!2677407))

(declare-fun m!2677409 () Bool)

(assert (=> b!2245819 m!2677409))

(check-sat b_and!175667 tp_is_empty!10331 b_and!175669 (not b!2245795) (not b!2245814) b_and!175663 (not b!2245806) (not b!2245800) b_and!175659 (not b!2245807) (not b!2245796) (not b_next!66221) (not b!2245801) (not b!2245809) b_and!175671 (not b!2245799) (not b_next!66231) (not b!2245804) (not b!2245818) b_and!175665 (not b!2245819) (not b!2245820) (not b_next!66235) (not b!2245792) (not b!2245805) (not b!2245813) (not b_next!66227) (not b!2245812) (not b!2245803) b_and!175657 (not b!2245808) (not b_next!66223) (not b!2245810) (not b!2245794) b_and!175661 (not b!2245793) (not b!2245797) (not b_next!66229) (not b_next!66225) (not b_next!66233))
(check-sat b_and!175667 (not b_next!66221) b_and!175669 b_and!175671 b_and!175663 (not b_next!66231) b_and!175665 (not b_next!66235) (not b_next!66227) b_and!175657 b_and!175659 (not b_next!66223) b_and!175661 (not b_next!66229) (not b_next!66225) (not b_next!66233))
