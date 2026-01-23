; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156718 () Bool)

(assert start!156718)

(declare-fun b!1639846 () Bool)

(declare-fun b_free!44391 () Bool)

(declare-fun b_next!45095 () Bool)

(assert (=> b!1639846 (= b_free!44391 (not b_next!45095))))

(declare-fun tp!475153 () Bool)

(declare-fun b_and!116205 () Bool)

(assert (=> b!1639846 (= tp!475153 b_and!116205)))

(declare-fun b_free!44393 () Bool)

(declare-fun b_next!45097 () Bool)

(assert (=> b!1639846 (= b_free!44393 (not b_next!45097))))

(declare-fun tp!475155 () Bool)

(declare-fun b_and!116207 () Bool)

(assert (=> b!1639846 (= tp!475155 b_and!116207)))

(declare-fun b!1639849 () Bool)

(declare-fun b_free!44395 () Bool)

(declare-fun b_next!45099 () Bool)

(assert (=> b!1639849 (= b_free!44395 (not b_next!45099))))

(declare-fun tp!475151 () Bool)

(declare-fun b_and!116209 () Bool)

(assert (=> b!1639849 (= tp!475151 b_and!116209)))

(declare-fun b_free!44397 () Bool)

(declare-fun b_next!45101 () Bool)

(assert (=> b!1639849 (= b_free!44397 (not b_next!45101))))

(declare-fun tp!475152 () Bool)

(declare-fun b_and!116211 () Bool)

(assert (=> b!1639849 (= tp!475152 b_and!116211)))

(declare-fun e!1051652 () Bool)

(declare-fun tp!475148 () Bool)

(declare-fun e!1051660 () Bool)

(declare-datatypes ((List!18137 0))(
  ( (Nil!18067) (Cons!18067 (h!23468 (_ BitVec 16)) (t!149930 List!18137)) )
))
(declare-datatypes ((TokenValue!3275 0))(
  ( (FloatLiteralValue!6550 (text!23370 List!18137)) (TokenValueExt!3274 (__x!11852 Int)) (Broken!16375 (value!100419 List!18137)) (Object!3344) (End!3275) (Def!3275) (Underscore!3275) (Match!3275) (Else!3275) (Error!3275) (Case!3275) (If!3275) (Extends!3275) (Abstract!3275) (Class!3275) (Val!3275) (DelimiterValue!6550 (del!3335 List!18137)) (KeywordValue!3281 (value!100420 List!18137)) (CommentValue!6550 (value!100421 List!18137)) (WhitespaceValue!6550 (value!100422 List!18137)) (IndentationValue!3275 (value!100423 List!18137)) (String!20706) (Int32!3275) (Broken!16376 (value!100424 List!18137)) (Boolean!3276) (Unit!29661) (OperatorValue!3278 (op!3335 List!18137)) (IdentifierValue!6550 (value!100425 List!18137)) (IdentifierValue!6551 (value!100426 List!18137)) (WhitespaceValue!6551 (value!100427 List!18137)) (True!6550) (False!6550) (Broken!16377 (value!100428 List!18137)) (Broken!16378 (value!100429 List!18137)) (True!6551) (RightBrace!3275) (RightBracket!3275) (Colon!3275) (Null!3275) (Comma!3275) (LeftBracket!3275) (False!6551) (LeftBrace!3275) (ImaginaryLiteralValue!3275 (text!23371 List!18137)) (StringLiteralValue!9825 (value!100430 List!18137)) (EOFValue!3275 (value!100431 List!18137)) (IdentValue!3275 (value!100432 List!18137)) (DelimiterValue!6551 (value!100433 List!18137)) (DedentValue!3275 (value!100434 List!18137)) (NewLineValue!3275 (value!100435 List!18137)) (IntegerValue!9825 (value!100436 (_ BitVec 32)) (text!23372 List!18137)) (IntegerValue!9826 (value!100437 Int) (text!23373 List!18137)) (Times!3275) (Or!3275) (Equal!3275) (Minus!3275) (Broken!16379 (value!100438 List!18137)) (And!3275) (Div!3275) (LessEqual!3275) (Mod!3275) (Concat!7788) (Not!3275) (Plus!3275) (SpaceValue!3275 (value!100439 List!18137)) (IntegerValue!9827 (value!100440 Int) (text!23374 List!18137)) (StringLiteralValue!9826 (text!23375 List!18137)) (FloatLiteralValue!6551 (text!23376 List!18137)) (BytesLiteralValue!3275 (value!100441 List!18137)) (CommentValue!6551 (value!100442 List!18137)) (StringLiteralValue!9827 (value!100443 List!18137)) (ErrorTokenValue!3275 (msg!3336 List!18137)) )
))
(declare-datatypes ((C!9200 0))(
  ( (C!9201 (val!5196 Int)) )
))
(declare-datatypes ((List!18138 0))(
  ( (Nil!18068) (Cons!18068 (h!23469 C!9200) (t!149931 List!18138)) )
))
(declare-datatypes ((IArray!12041 0))(
  ( (IArray!12042 (innerList!6078 List!18138)) )
))
(declare-datatypes ((Conc!6018 0))(
  ( (Node!6018 (left!14484 Conc!6018) (right!14814 Conc!6018) (csize!12266 Int) (cheight!6229 Int)) (Leaf!8831 (xs!8854 IArray!12041) (csize!12267 Int)) (Empty!6018) )
))
(declare-datatypes ((BalanceConc!11980 0))(
  ( (BalanceConc!11981 (c!266707 Conc!6018)) )
))
(declare-datatypes ((Regex!4513 0))(
  ( (ElementMatch!4513 (c!266708 C!9200)) (Concat!7789 (regOne!9538 Regex!4513) (regTwo!9538 Regex!4513)) (EmptyExpr!4513) (Star!4513 (reg!4842 Regex!4513)) (EmptyLang!4513) (Union!4513 (regOne!9539 Regex!4513) (regTwo!9539 Regex!4513)) )
))
(declare-datatypes ((String!20707 0))(
  ( (String!20708 (value!100444 String)) )
))
(declare-datatypes ((TokenValueInjection!6210 0))(
  ( (TokenValueInjection!6211 (toValue!4616 Int) (toChars!4475 Int)) )
))
(declare-datatypes ((Rule!6170 0))(
  ( (Rule!6171 (regex!3185 Regex!4513) (tag!3465 String!20707) (isSeparator!3185 Bool) (transformation!3185 TokenValueInjection!6210)) )
))
(declare-datatypes ((Token!5936 0))(
  ( (Token!5937 (value!100445 TokenValue!3275) (rule!5033 Rule!6170) (size!14382 Int) (originalCharacters!3999 List!18138)) )
))
(declare-datatypes ((List!18139 0))(
  ( (Nil!18069) (Cons!18069 (h!23470 Token!5936) (t!149932 List!18139)) )
))
(declare-fun tokens!457 () List!18139)

(declare-fun b!1639842 () Bool)

(declare-fun inv!23410 (Token!5936) Bool)

(assert (=> b!1639842 (= e!1051652 (and (inv!23410 (h!23470 tokens!457)) e!1051660 tp!475148))))

(declare-fun b!1639843 () Bool)

(declare-fun res!734857 () Bool)

(declare-fun e!1051655 () Bool)

(assert (=> b!1639843 (=> (not res!734857) (not e!1051655))))

(declare-datatypes ((LexerInterface!2814 0))(
  ( (LexerInterfaceExt!2811 (__x!11853 Int)) (Lexer!2812) )
))
(declare-fun thiss!17113 () LexerInterface!2814)

(declare-datatypes ((List!18140 0))(
  ( (Nil!18070) (Cons!18070 (h!23471 Rule!6170) (t!149933 List!18140)) )
))
(declare-fun rules!1846 () List!18140)

(declare-fun rulesInvariant!2483 (LexerInterface!2814 List!18140) Bool)

(assert (=> b!1639843 (= res!734857 (rulesInvariant!2483 thiss!17113 rules!1846))))

(declare-fun b!1639844 () Bool)

(declare-fun lt!602392 () BalanceConc!11980)

(declare-fun lt!602394 () BalanceConc!11980)

(declare-fun list!7130 (BalanceConc!11980) List!18138)

(declare-fun ++!4852 (List!18138 List!18138) List!18138)

(declare-fun charsOf!1834 (Token!5936) BalanceConc!11980)

(assert (=> b!1639844 (= e!1051655 (not (= (list!7130 lt!602394) (++!4852 (list!7130 (charsOf!1834 (h!23470 tokens!457))) (list!7130 lt!602392)))))))

(declare-datatypes ((IArray!12043 0))(
  ( (IArray!12044 (innerList!6079 List!18139)) )
))
(declare-datatypes ((Conc!6019 0))(
  ( (Node!6019 (left!14485 Conc!6019) (right!14815 Conc!6019) (csize!12268 Int) (cheight!6230 Int)) (Leaf!8832 (xs!8855 IArray!12043) (csize!12269 Int)) (Empty!6019) )
))
(declare-datatypes ((BalanceConc!11982 0))(
  ( (BalanceConc!11983 (c!266709 Conc!6019)) )
))
(declare-datatypes ((tuple2!17710 0))(
  ( (tuple2!17711 (_1!10257 BalanceConc!11982) (_2!10257 BalanceConc!11980)) )
))
(declare-fun lt!602393 () tuple2!17710)

(declare-fun lex!1298 (LexerInterface!2814 List!18140 BalanceConc!11980) tuple2!17710)

(assert (=> b!1639844 (= lt!602393 (lex!1298 thiss!17113 rules!1846 lt!602392))))

(declare-fun print!1345 (LexerInterface!2814 BalanceConc!11982) BalanceConc!11980)

(declare-fun seqFromList!2118 (List!18139) BalanceConc!11982)

(assert (=> b!1639844 (= lt!602392 (print!1345 thiss!17113 (seqFromList!2118 (t!149932 tokens!457))))))

(assert (=> b!1639844 (= lt!602394 (print!1345 thiss!17113 (seqFromList!2118 tokens!457)))))

(declare-fun b!1639845 () Bool)

(declare-fun res!734854 () Bool)

(assert (=> b!1639845 (=> (not res!734854) (not e!1051655))))

(get-info :version)

(assert (=> b!1639845 (= res!734854 (and (not ((_ is Nil!18069) tokens!457)) (not ((_ is Nil!18069) (t!149932 tokens!457)))))))

(declare-fun res!734856 () Bool)

(assert (=> start!156718 (=> (not res!734856) (not e!1051655))))

(assert (=> start!156718 (= res!734856 ((_ is Lexer!2812) thiss!17113))))

(assert (=> start!156718 e!1051655))

(assert (=> start!156718 true))

(declare-fun e!1051650 () Bool)

(assert (=> start!156718 e!1051650))

(assert (=> start!156718 e!1051652))

(declare-fun e!1051659 () Bool)

(assert (=> b!1639846 (= e!1051659 (and tp!475153 tp!475155))))

(declare-fun b!1639847 () Bool)

(declare-fun res!734855 () Bool)

(assert (=> b!1639847 (=> (not res!734855) (not e!1051655))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!507 (LexerInterface!2814 List!18139 List!18140) Bool)

(assert (=> b!1639847 (= res!734855 (tokensListTwoByTwoPredicateSeparableList!507 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!475149 () Bool)

(declare-fun b!1639848 () Bool)

(declare-fun e!1051656 () Bool)

(declare-fun inv!21 (TokenValue!3275) Bool)

(assert (=> b!1639848 (= e!1051660 (and (inv!21 (value!100445 (h!23470 tokens!457))) e!1051656 tp!475149))))

(declare-fun e!1051653 () Bool)

(assert (=> b!1639849 (= e!1051653 (and tp!475151 tp!475152))))

(declare-fun b!1639850 () Bool)

(declare-fun res!734858 () Bool)

(assert (=> b!1639850 (=> (not res!734858) (not e!1051655))))

(declare-fun isEmpty!11095 (List!18140) Bool)

(assert (=> b!1639850 (= res!734858 (not (isEmpty!11095 rules!1846)))))

(declare-fun b!1639851 () Bool)

(declare-fun res!734853 () Bool)

(assert (=> b!1639851 (=> (not res!734853) (not e!1051655))))

(declare-fun rulesProduceEachTokenIndividuallyList!1016 (LexerInterface!2814 List!18140 List!18139) Bool)

(assert (=> b!1639851 (= res!734853 (rulesProduceEachTokenIndividuallyList!1016 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1639852 () Bool)

(declare-fun e!1051658 () Bool)

(declare-fun tp!475150 () Bool)

(assert (=> b!1639852 (= e!1051650 (and e!1051658 tp!475150))))

(declare-fun tp!475156 () Bool)

(declare-fun b!1639853 () Bool)

(declare-fun inv!23407 (String!20707) Bool)

(declare-fun inv!23411 (TokenValueInjection!6210) Bool)

(assert (=> b!1639853 (= e!1051658 (and tp!475156 (inv!23407 (tag!3465 (h!23471 rules!1846))) (inv!23411 (transformation!3185 (h!23471 rules!1846))) e!1051659))))

(declare-fun tp!475154 () Bool)

(declare-fun b!1639854 () Bool)

(assert (=> b!1639854 (= e!1051656 (and tp!475154 (inv!23407 (tag!3465 (rule!5033 (h!23470 tokens!457)))) (inv!23411 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) e!1051653))))

(assert (= (and start!156718 res!734856) b!1639850))

(assert (= (and b!1639850 res!734858) b!1639843))

(assert (= (and b!1639843 res!734857) b!1639851))

(assert (= (and b!1639851 res!734853) b!1639847))

(assert (= (and b!1639847 res!734855) b!1639845))

(assert (= (and b!1639845 res!734854) b!1639844))

(assert (= b!1639853 b!1639846))

(assert (= b!1639852 b!1639853))

(assert (= (and start!156718 ((_ is Cons!18070) rules!1846)) b!1639852))

(assert (= b!1639854 b!1639849))

(assert (= b!1639848 b!1639854))

(assert (= b!1639842 b!1639848))

(assert (= (and start!156718 ((_ is Cons!18069) tokens!457)) b!1639842))

(declare-fun m!1979777 () Bool)

(assert (=> b!1639854 m!1979777))

(declare-fun m!1979779 () Bool)

(assert (=> b!1639854 m!1979779))

(declare-fun m!1979781 () Bool)

(assert (=> b!1639843 m!1979781))

(declare-fun m!1979783 () Bool)

(assert (=> b!1639851 m!1979783))

(declare-fun m!1979785 () Bool)

(assert (=> b!1639842 m!1979785))

(declare-fun m!1979787 () Bool)

(assert (=> b!1639848 m!1979787))

(declare-fun m!1979789 () Bool)

(assert (=> b!1639853 m!1979789))

(declare-fun m!1979791 () Bool)

(assert (=> b!1639853 m!1979791))

(declare-fun m!1979793 () Bool)

(assert (=> b!1639844 m!1979793))

(declare-fun m!1979795 () Bool)

(assert (=> b!1639844 m!1979795))

(declare-fun m!1979797 () Bool)

(assert (=> b!1639844 m!1979797))

(declare-fun m!1979799 () Bool)

(assert (=> b!1639844 m!1979799))

(assert (=> b!1639844 m!1979793))

(declare-fun m!1979801 () Bool)

(assert (=> b!1639844 m!1979801))

(declare-fun m!1979803 () Bool)

(assert (=> b!1639844 m!1979803))

(assert (=> b!1639844 m!1979799))

(assert (=> b!1639844 m!1979803))

(declare-fun m!1979805 () Bool)

(assert (=> b!1639844 m!1979805))

(declare-fun m!1979807 () Bool)

(assert (=> b!1639844 m!1979807))

(assert (=> b!1639844 m!1979797))

(declare-fun m!1979809 () Bool)

(assert (=> b!1639844 m!1979809))

(declare-fun m!1979811 () Bool)

(assert (=> b!1639844 m!1979811))

(assert (=> b!1639844 m!1979809))

(declare-fun m!1979813 () Bool)

(assert (=> b!1639847 m!1979813))

(declare-fun m!1979815 () Bool)

(assert (=> b!1639850 m!1979815))

(check-sat (not b!1639850) b_and!116207 (not b!1639853) (not b!1639843) (not b!1639848) (not b!1639844) (not b_next!45099) (not b_next!45095) (not b!1639842) (not b_next!45101) (not b!1639854) (not b!1639847) (not b!1639851) b_and!116205 (not b_next!45097) b_and!116209 b_and!116211 (not b!1639852))
(check-sat b_and!116207 (not b_next!45099) (not b_next!45095) b_and!116211 (not b_next!45101) b_and!116205 (not b_next!45097) b_and!116209)
(get-model)

(declare-fun d!493525 () Bool)

(declare-fun res!734903 () Bool)

(declare-fun e!1051705 () Bool)

(assert (=> d!493525 (=> res!734903 e!1051705)))

(assert (=> d!493525 (= res!734903 (or (not ((_ is Cons!18069) tokens!457)) (not ((_ is Cons!18069) (t!149932 tokens!457)))))))

(assert (=> d!493525 (= (tokensListTwoByTwoPredicateSeparableList!507 thiss!17113 tokens!457 rules!1846) e!1051705)))

(declare-fun b!1639921 () Bool)

(declare-fun e!1051704 () Bool)

(assert (=> b!1639921 (= e!1051705 e!1051704)))

(declare-fun res!734904 () Bool)

(assert (=> b!1639921 (=> (not res!734904) (not e!1051704))))

(declare-fun separableTokensPredicate!756 (LexerInterface!2814 Token!5936 Token!5936 List!18140) Bool)

(assert (=> b!1639921 (= res!734904 (separableTokensPredicate!756 thiss!17113 (h!23470 tokens!457) (h!23470 (t!149932 tokens!457)) rules!1846))))

(declare-datatypes ((Unit!29667 0))(
  ( (Unit!29668) )
))
(declare-fun lt!602446 () Unit!29667)

(declare-fun Unit!29669 () Unit!29667)

(assert (=> b!1639921 (= lt!602446 Unit!29669)))

(declare-fun size!14386 (BalanceConc!11980) Int)

(assert (=> b!1639921 (> (size!14386 (charsOf!1834 (h!23470 (t!149932 tokens!457)))) 0)))

(declare-fun lt!602445 () Unit!29667)

(declare-fun Unit!29670 () Unit!29667)

(assert (=> b!1639921 (= lt!602445 Unit!29670)))

(declare-fun rulesProduceIndividualToken!1466 (LexerInterface!2814 List!18140 Token!5936) Bool)

(assert (=> b!1639921 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 tokens!457)))))

(declare-fun lt!602444 () Unit!29667)

(declare-fun Unit!29671 () Unit!29667)

(assert (=> b!1639921 (= lt!602444 Unit!29671)))

(assert (=> b!1639921 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 tokens!457))))

(declare-fun lt!602449 () Unit!29667)

(declare-fun lt!602443 () Unit!29667)

(assert (=> b!1639921 (= lt!602449 lt!602443)))

(assert (=> b!1639921 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 (LexerInterface!2814 List!18140 List!18139 Token!5936) Unit!29667)

(assert (=> b!1639921 (= lt!602443 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 thiss!17113 rules!1846 tokens!457 (h!23470 (t!149932 tokens!457))))))

(declare-fun lt!602447 () Unit!29667)

(declare-fun lt!602448 () Unit!29667)

(assert (=> b!1639921 (= lt!602447 lt!602448)))

(assert (=> b!1639921 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 tokens!457))))

(assert (=> b!1639921 (= lt!602448 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 thiss!17113 rules!1846 tokens!457 (h!23470 tokens!457)))))

(declare-fun b!1639922 () Bool)

(assert (=> b!1639922 (= e!1051704 (tokensListTwoByTwoPredicateSeparableList!507 thiss!17113 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))) rules!1846))))

(assert (= (and d!493525 (not res!734903)) b!1639921))

(assert (= (and b!1639921 res!734904) b!1639922))

(declare-fun m!1979913 () Bool)

(assert (=> b!1639921 m!1979913))

(declare-fun m!1979915 () Bool)

(assert (=> b!1639921 m!1979915))

(declare-fun m!1979917 () Bool)

(assert (=> b!1639921 m!1979917))

(declare-fun m!1979919 () Bool)

(assert (=> b!1639921 m!1979919))

(declare-fun m!1979921 () Bool)

(assert (=> b!1639921 m!1979921))

(declare-fun m!1979923 () Bool)

(assert (=> b!1639921 m!1979923))

(assert (=> b!1639921 m!1979913))

(declare-fun m!1979925 () Bool)

(assert (=> b!1639921 m!1979925))

(declare-fun m!1979927 () Bool)

(assert (=> b!1639922 m!1979927))

(assert (=> b!1639847 d!493525))

(declare-fun d!493559 () Bool)

(assert (=> d!493559 (= (inv!23407 (tag!3465 (h!23471 rules!1846))) (= (mod (str.len (value!100444 (tag!3465 (h!23471 rules!1846)))) 2) 0))))

(assert (=> b!1639853 d!493559))

(declare-fun d!493561 () Bool)

(declare-fun res!734907 () Bool)

(declare-fun e!1051708 () Bool)

(assert (=> d!493561 (=> (not res!734907) (not e!1051708))))

(declare-fun semiInverseModEq!1220 (Int Int) Bool)

(assert (=> d!493561 (= res!734907 (semiInverseModEq!1220 (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toValue!4616 (transformation!3185 (h!23471 rules!1846)))))))

(assert (=> d!493561 (= (inv!23411 (transformation!3185 (h!23471 rules!1846))) e!1051708)))

(declare-fun b!1639925 () Bool)

(declare-fun equivClasses!1161 (Int Int) Bool)

(assert (=> b!1639925 (= e!1051708 (equivClasses!1161 (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toValue!4616 (transformation!3185 (h!23471 rules!1846)))))))

(assert (= (and d!493561 res!734907) b!1639925))

(declare-fun m!1979929 () Bool)

(assert (=> d!493561 m!1979929))

(declare-fun m!1979931 () Bool)

(assert (=> b!1639925 m!1979931))

(assert (=> b!1639853 d!493561))

(declare-fun d!493563 () Bool)

(declare-fun res!734912 () Bool)

(declare-fun e!1051711 () Bool)

(assert (=> d!493563 (=> (not res!734912) (not e!1051711))))

(declare-fun isEmpty!11098 (List!18138) Bool)

(assert (=> d!493563 (= res!734912 (not (isEmpty!11098 (originalCharacters!3999 (h!23470 tokens!457)))))))

(assert (=> d!493563 (= (inv!23410 (h!23470 tokens!457)) e!1051711)))

(declare-fun b!1639930 () Bool)

(declare-fun res!734913 () Bool)

(assert (=> b!1639930 (=> (not res!734913) (not e!1051711))))

(declare-fun dynLambda!8046 (Int TokenValue!3275) BalanceConc!11980)

(assert (=> b!1639930 (= res!734913 (= (originalCharacters!3999 (h!23470 tokens!457)) (list!7130 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))))

(declare-fun b!1639931 () Bool)

(declare-fun size!14387 (List!18138) Int)

(assert (=> b!1639931 (= e!1051711 (= (size!14382 (h!23470 tokens!457)) (size!14387 (originalCharacters!3999 (h!23470 tokens!457)))))))

(assert (= (and d!493563 res!734912) b!1639930))

(assert (= (and b!1639930 res!734913) b!1639931))

(declare-fun b_lambda!51513 () Bool)

(assert (=> (not b_lambda!51513) (not b!1639930)))

(declare-fun t!149939 () Bool)

(declare-fun tb!93883 () Bool)

(assert (=> (and b!1639846 (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) t!149939) tb!93883))

(declare-fun b!1639936 () Bool)

(declare-fun e!1051714 () Bool)

(declare-fun tp!475162 () Bool)

(declare-fun inv!23414 (Conc!6018) Bool)

(assert (=> b!1639936 (= e!1051714 (and (inv!23414 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))) tp!475162))))

(declare-fun result!113312 () Bool)

(declare-fun inv!23415 (BalanceConc!11980) Bool)

(assert (=> tb!93883 (= result!113312 (and (inv!23415 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))) e!1051714))))

(assert (= tb!93883 b!1639936))

(declare-fun m!1979933 () Bool)

(assert (=> b!1639936 m!1979933))

(declare-fun m!1979935 () Bool)

(assert (=> tb!93883 m!1979935))

(assert (=> b!1639930 t!149939))

(declare-fun b_and!116221 () Bool)

(assert (= b_and!116207 (and (=> t!149939 result!113312) b_and!116221)))

(declare-fun t!149941 () Bool)

(declare-fun tb!93885 () Bool)

(assert (=> (and b!1639849 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) t!149941) tb!93885))

(declare-fun result!113316 () Bool)

(assert (= result!113316 result!113312))

(assert (=> b!1639930 t!149941))

(declare-fun b_and!116223 () Bool)

(assert (= b_and!116211 (and (=> t!149941 result!113316) b_and!116223)))

(declare-fun m!1979937 () Bool)

(assert (=> d!493563 m!1979937))

(declare-fun m!1979939 () Bool)

(assert (=> b!1639930 m!1979939))

(assert (=> b!1639930 m!1979939))

(declare-fun m!1979941 () Bool)

(assert (=> b!1639930 m!1979941))

(declare-fun m!1979943 () Bool)

(assert (=> b!1639931 m!1979943))

(assert (=> b!1639842 d!493563))

(declare-fun d!493565 () Bool)

(declare-fun res!734916 () Bool)

(declare-fun e!1051717 () Bool)

(assert (=> d!493565 (=> (not res!734916) (not e!1051717))))

(declare-fun rulesValid!1148 (LexerInterface!2814 List!18140) Bool)

(assert (=> d!493565 (= res!734916 (rulesValid!1148 thiss!17113 rules!1846))))

(assert (=> d!493565 (= (rulesInvariant!2483 thiss!17113 rules!1846) e!1051717)))

(declare-fun b!1639939 () Bool)

(declare-datatypes ((List!18142 0))(
  ( (Nil!18072) (Cons!18072 (h!23473 String!20707) (t!149955 List!18142)) )
))
(declare-fun noDuplicateTag!1148 (LexerInterface!2814 List!18140 List!18142) Bool)

(assert (=> b!1639939 (= e!1051717 (noDuplicateTag!1148 thiss!17113 rules!1846 Nil!18072))))

(assert (= (and d!493565 res!734916) b!1639939))

(declare-fun m!1979945 () Bool)

(assert (=> d!493565 m!1979945))

(declare-fun m!1979947 () Bool)

(assert (=> b!1639939 m!1979947))

(assert (=> b!1639843 d!493565))

(declare-fun d!493567 () Bool)

(declare-fun c!266726 () Bool)

(assert (=> d!493567 (= c!266726 ((_ is IntegerValue!9825) (value!100445 (h!23470 tokens!457))))))

(declare-fun e!1051725 () Bool)

(assert (=> d!493567 (= (inv!21 (value!100445 (h!23470 tokens!457))) e!1051725)))

(declare-fun b!1639950 () Bool)

(declare-fun e!1051726 () Bool)

(declare-fun inv!15 (TokenValue!3275) Bool)

(assert (=> b!1639950 (= e!1051726 (inv!15 (value!100445 (h!23470 tokens!457))))))

(declare-fun b!1639951 () Bool)

(declare-fun e!1051724 () Bool)

(declare-fun inv!17 (TokenValue!3275) Bool)

(assert (=> b!1639951 (= e!1051724 (inv!17 (value!100445 (h!23470 tokens!457))))))

(declare-fun b!1639952 () Bool)

(assert (=> b!1639952 (= e!1051725 e!1051724)))

(declare-fun c!266727 () Bool)

(assert (=> b!1639952 (= c!266727 ((_ is IntegerValue!9826) (value!100445 (h!23470 tokens!457))))))

(declare-fun b!1639953 () Bool)

(declare-fun inv!16 (TokenValue!3275) Bool)

(assert (=> b!1639953 (= e!1051725 (inv!16 (value!100445 (h!23470 tokens!457))))))

(declare-fun b!1639954 () Bool)

(declare-fun res!734919 () Bool)

(assert (=> b!1639954 (=> res!734919 e!1051726)))

(assert (=> b!1639954 (= res!734919 (not ((_ is IntegerValue!9827) (value!100445 (h!23470 tokens!457)))))))

(assert (=> b!1639954 (= e!1051724 e!1051726)))

(assert (= (and d!493567 c!266726) b!1639953))

(assert (= (and d!493567 (not c!266726)) b!1639952))

(assert (= (and b!1639952 c!266727) b!1639951))

(assert (= (and b!1639952 (not c!266727)) b!1639954))

(assert (= (and b!1639954 (not res!734919)) b!1639950))

(declare-fun m!1979949 () Bool)

(assert (=> b!1639950 m!1979949))

(declare-fun m!1979951 () Bool)

(assert (=> b!1639951 m!1979951))

(declare-fun m!1979953 () Bool)

(assert (=> b!1639953 m!1979953))

(assert (=> b!1639848 d!493567))

(declare-fun d!493569 () Bool)

(assert (=> d!493569 (= (inv!23407 (tag!3465 (rule!5033 (h!23470 tokens!457)))) (= (mod (str.len (value!100444 (tag!3465 (rule!5033 (h!23470 tokens!457))))) 2) 0))))

(assert (=> b!1639854 d!493569))

(declare-fun d!493571 () Bool)

(declare-fun res!734920 () Bool)

(declare-fun e!1051727 () Bool)

(assert (=> d!493571 (=> (not res!734920) (not e!1051727))))

(assert (=> d!493571 (= res!734920 (semiInverseModEq!1220 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457))))))))

(assert (=> d!493571 (= (inv!23411 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) e!1051727)))

(declare-fun b!1639955 () Bool)

(assert (=> b!1639955 (= e!1051727 (equivClasses!1161 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457))))))))

(assert (= (and d!493571 res!734920) b!1639955))

(declare-fun m!1979955 () Bool)

(assert (=> d!493571 m!1979955))

(declare-fun m!1979957 () Bool)

(assert (=> b!1639955 m!1979957))

(assert (=> b!1639854 d!493571))

(declare-fun d!493573 () Bool)

(declare-fun lt!602452 () BalanceConc!11980)

(declare-fun printList!929 (LexerInterface!2814 List!18139) List!18138)

(declare-fun list!7133 (BalanceConc!11982) List!18139)

(assert (=> d!493573 (= (list!7130 lt!602452) (printList!929 thiss!17113 (list!7133 (seqFromList!2118 tokens!457))))))

(declare-fun printTailRec!867 (LexerInterface!2814 BalanceConc!11982 Int BalanceConc!11980) BalanceConc!11980)

(assert (=> d!493573 (= lt!602452 (printTailRec!867 thiss!17113 (seqFromList!2118 tokens!457) 0 (BalanceConc!11981 Empty!6018)))))

(assert (=> d!493573 (= (print!1345 thiss!17113 (seqFromList!2118 tokens!457)) lt!602452)))

(declare-fun bs!395579 () Bool)

(assert (= bs!395579 d!493573))

(declare-fun m!1979959 () Bool)

(assert (=> bs!395579 m!1979959))

(assert (=> bs!395579 m!1979793))

(declare-fun m!1979961 () Bool)

(assert (=> bs!395579 m!1979961))

(assert (=> bs!395579 m!1979961))

(declare-fun m!1979963 () Bool)

(assert (=> bs!395579 m!1979963))

(assert (=> bs!395579 m!1979793))

(declare-fun m!1979965 () Bool)

(assert (=> bs!395579 m!1979965))

(assert (=> b!1639844 d!493573))

(declare-fun b!1639970 () Bool)

(declare-fun e!1051739 () Bool)

(declare-fun e!1051738 () Bool)

(assert (=> b!1639970 (= e!1051739 e!1051738)))

(declare-fun res!734932 () Bool)

(declare-fun lt!602457 () tuple2!17710)

(assert (=> b!1639970 (= res!734932 (< (size!14386 (_2!10257 lt!602457)) (size!14386 lt!602392)))))

(assert (=> b!1639970 (=> (not res!734932) (not e!1051738))))

(declare-fun d!493575 () Bool)

(declare-fun e!1051740 () Bool)

(assert (=> d!493575 e!1051740))

(declare-fun res!734931 () Bool)

(assert (=> d!493575 (=> (not res!734931) (not e!1051740))))

(assert (=> d!493575 (= res!734931 e!1051739)))

(declare-fun c!266730 () Bool)

(declare-fun size!14388 (BalanceConc!11982) Int)

(assert (=> d!493575 (= c!266730 (> (size!14388 (_1!10257 lt!602457)) 0))))

(declare-fun lexTailRecV2!572 (LexerInterface!2814 List!18140 BalanceConc!11980 BalanceConc!11980 BalanceConc!11980 BalanceConc!11982) tuple2!17710)

(assert (=> d!493575 (= lt!602457 (lexTailRecV2!572 thiss!17113 rules!1846 lt!602392 (BalanceConc!11981 Empty!6018) lt!602392 (BalanceConc!11983 Empty!6019)))))

(assert (=> d!493575 (= (lex!1298 thiss!17113 rules!1846 lt!602392) lt!602457)))

(declare-fun b!1639971 () Bool)

(declare-fun res!734933 () Bool)

(assert (=> b!1639971 (=> (not res!734933) (not e!1051740))))

(declare-datatypes ((tuple2!17714 0))(
  ( (tuple2!17715 (_1!10259 List!18139) (_2!10259 List!18138)) )
))
(declare-fun lexList!849 (LexerInterface!2814 List!18140 List!18138) tuple2!17714)

(assert (=> b!1639971 (= res!734933 (= (list!7133 (_1!10257 lt!602457)) (_1!10259 (lexList!849 thiss!17113 rules!1846 (list!7130 lt!602392)))))))

(declare-fun b!1639972 () Bool)

(declare-fun isEmpty!11099 (BalanceConc!11982) Bool)

(assert (=> b!1639972 (= e!1051738 (not (isEmpty!11099 (_1!10257 lt!602457))))))

(declare-fun b!1639973 () Bool)

(assert (=> b!1639973 (= e!1051739 (= (_2!10257 lt!602457) lt!602392))))

(declare-fun b!1639974 () Bool)

(assert (=> b!1639974 (= e!1051740 (= (list!7130 (_2!10257 lt!602457)) (_2!10259 (lexList!849 thiss!17113 rules!1846 (list!7130 lt!602392)))))))

(assert (= (and d!493575 c!266730) b!1639970))

(assert (= (and d!493575 (not c!266730)) b!1639973))

(assert (= (and b!1639970 res!734932) b!1639972))

(assert (= (and d!493575 res!734931) b!1639971))

(assert (= (and b!1639971 res!734933) b!1639974))

(declare-fun m!1979967 () Bool)

(assert (=> b!1639970 m!1979967))

(declare-fun m!1979969 () Bool)

(assert (=> b!1639970 m!1979969))

(declare-fun m!1979971 () Bool)

(assert (=> b!1639972 m!1979971))

(declare-fun m!1979973 () Bool)

(assert (=> b!1639974 m!1979973))

(assert (=> b!1639974 m!1979803))

(assert (=> b!1639974 m!1979803))

(declare-fun m!1979975 () Bool)

(assert (=> b!1639974 m!1979975))

(declare-fun m!1979977 () Bool)

(assert (=> b!1639971 m!1979977))

(assert (=> b!1639971 m!1979803))

(assert (=> b!1639971 m!1979803))

(assert (=> b!1639971 m!1979975))

(declare-fun m!1979979 () Bool)

(assert (=> d!493575 m!1979979))

(declare-fun m!1979981 () Bool)

(assert (=> d!493575 m!1979981))

(assert (=> b!1639844 d!493575))

(declare-fun b!1639985 () Bool)

(declare-fun res!734939 () Bool)

(declare-fun e!1051745 () Bool)

(assert (=> b!1639985 (=> (not res!734939) (not e!1051745))))

(declare-fun lt!602460 () List!18138)

(assert (=> b!1639985 (= res!734939 (= (size!14387 lt!602460) (+ (size!14387 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) (size!14387 (list!7130 lt!602392)))))))

(declare-fun b!1639986 () Bool)

(assert (=> b!1639986 (= e!1051745 (or (not (= (list!7130 lt!602392) Nil!18068)) (= lt!602460 (list!7130 (charsOf!1834 (h!23470 tokens!457))))))))

(declare-fun b!1639984 () Bool)

(declare-fun e!1051746 () List!18138)

(assert (=> b!1639984 (= e!1051746 (Cons!18068 (h!23469 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) (++!4852 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) (list!7130 lt!602392))))))

(declare-fun b!1639983 () Bool)

(assert (=> b!1639983 (= e!1051746 (list!7130 lt!602392))))

(declare-fun d!493577 () Bool)

(assert (=> d!493577 e!1051745))

(declare-fun res!734938 () Bool)

(assert (=> d!493577 (=> (not res!734938) (not e!1051745))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2499 (List!18138) (InoxSet C!9200))

(assert (=> d!493577 (= res!734938 (= (content!2499 lt!602460) ((_ map or) (content!2499 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) (content!2499 (list!7130 lt!602392)))))))

(assert (=> d!493577 (= lt!602460 e!1051746)))

(declare-fun c!266733 () Bool)

(assert (=> d!493577 (= c!266733 ((_ is Nil!18068) (list!7130 (charsOf!1834 (h!23470 tokens!457)))))))

(assert (=> d!493577 (= (++!4852 (list!7130 (charsOf!1834 (h!23470 tokens!457))) (list!7130 lt!602392)) lt!602460)))

(assert (= (and d!493577 c!266733) b!1639983))

(assert (= (and d!493577 (not c!266733)) b!1639984))

(assert (= (and d!493577 res!734938) b!1639985))

(assert (= (and b!1639985 res!734939) b!1639986))

(declare-fun m!1979983 () Bool)

(assert (=> b!1639985 m!1979983))

(assert (=> b!1639985 m!1979799))

(declare-fun m!1979985 () Bool)

(assert (=> b!1639985 m!1979985))

(assert (=> b!1639985 m!1979803))

(declare-fun m!1979987 () Bool)

(assert (=> b!1639985 m!1979987))

(assert (=> b!1639984 m!1979803))

(declare-fun m!1979989 () Bool)

(assert (=> b!1639984 m!1979989))

(declare-fun m!1979991 () Bool)

(assert (=> d!493577 m!1979991))

(assert (=> d!493577 m!1979799))

(declare-fun m!1979993 () Bool)

(assert (=> d!493577 m!1979993))

(assert (=> d!493577 m!1979803))

(declare-fun m!1979995 () Bool)

(assert (=> d!493577 m!1979995))

(assert (=> b!1639844 d!493577))

(declare-fun d!493579 () Bool)

(declare-fun lt!602461 () BalanceConc!11980)

(assert (=> d!493579 (= (list!7130 lt!602461) (printList!929 thiss!17113 (list!7133 (seqFromList!2118 (t!149932 tokens!457)))))))

(assert (=> d!493579 (= lt!602461 (printTailRec!867 thiss!17113 (seqFromList!2118 (t!149932 tokens!457)) 0 (BalanceConc!11981 Empty!6018)))))

(assert (=> d!493579 (= (print!1345 thiss!17113 (seqFromList!2118 (t!149932 tokens!457))) lt!602461)))

(declare-fun bs!395580 () Bool)

(assert (= bs!395580 d!493579))

(declare-fun m!1979997 () Bool)

(assert (=> bs!395580 m!1979997))

(assert (=> bs!395580 m!1979809))

(declare-fun m!1979999 () Bool)

(assert (=> bs!395580 m!1979999))

(assert (=> bs!395580 m!1979999))

(declare-fun m!1980001 () Bool)

(assert (=> bs!395580 m!1980001))

(assert (=> bs!395580 m!1979809))

(declare-fun m!1980003 () Bool)

(assert (=> bs!395580 m!1980003))

(assert (=> b!1639844 d!493579))

(declare-fun d!493581 () Bool)

(declare-fun fromListB!933 (List!18139) BalanceConc!11982)

(assert (=> d!493581 (= (seqFromList!2118 tokens!457) (fromListB!933 tokens!457))))

(declare-fun bs!395581 () Bool)

(assert (= bs!395581 d!493581))

(declare-fun m!1980005 () Bool)

(assert (=> bs!395581 m!1980005))

(assert (=> b!1639844 d!493581))

(declare-fun d!493583 () Bool)

(declare-fun list!7134 (Conc!6018) List!18138)

(assert (=> d!493583 (= (list!7130 lt!602394) (list!7134 (c!266707 lt!602394)))))

(declare-fun bs!395582 () Bool)

(assert (= bs!395582 d!493583))

(declare-fun m!1980007 () Bool)

(assert (=> bs!395582 m!1980007))

(assert (=> b!1639844 d!493583))

(declare-fun d!493585 () Bool)

(declare-fun lt!602464 () BalanceConc!11980)

(assert (=> d!493585 (= (list!7130 lt!602464) (originalCharacters!3999 (h!23470 tokens!457)))))

(assert (=> d!493585 (= lt!602464 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))

(assert (=> d!493585 (= (charsOf!1834 (h!23470 tokens!457)) lt!602464)))

(declare-fun b_lambda!51515 () Bool)

(assert (=> (not b_lambda!51515) (not d!493585)))

(assert (=> d!493585 t!149939))

(declare-fun b_and!116225 () Bool)

(assert (= b_and!116221 (and (=> t!149939 result!113312) b_and!116225)))

(assert (=> d!493585 t!149941))

(declare-fun b_and!116227 () Bool)

(assert (= b_and!116223 (and (=> t!149941 result!113316) b_and!116227)))

(declare-fun m!1980009 () Bool)

(assert (=> d!493585 m!1980009))

(assert (=> d!493585 m!1979939))

(assert (=> b!1639844 d!493585))

(declare-fun d!493587 () Bool)

(assert (=> d!493587 (= (list!7130 lt!602392) (list!7134 (c!266707 lt!602392)))))

(declare-fun bs!395583 () Bool)

(assert (= bs!395583 d!493587))

(declare-fun m!1980011 () Bool)

(assert (=> bs!395583 m!1980011))

(assert (=> b!1639844 d!493587))

(declare-fun d!493589 () Bool)

(assert (=> d!493589 (= (seqFromList!2118 (t!149932 tokens!457)) (fromListB!933 (t!149932 tokens!457)))))

(declare-fun bs!395584 () Bool)

(assert (= bs!395584 d!493589))

(declare-fun m!1980013 () Bool)

(assert (=> bs!395584 m!1980013))

(assert (=> b!1639844 d!493589))

(declare-fun d!493591 () Bool)

(assert (=> d!493591 (= (list!7130 (charsOf!1834 (h!23470 tokens!457))) (list!7134 (c!266707 (charsOf!1834 (h!23470 tokens!457)))))))

(declare-fun bs!395585 () Bool)

(assert (= bs!395585 d!493591))

(declare-fun m!1980015 () Bool)

(assert (=> bs!395585 m!1980015))

(assert (=> b!1639844 d!493591))

(declare-fun d!493593 () Bool)

(assert (=> d!493593 (= (isEmpty!11095 rules!1846) ((_ is Nil!18070) rules!1846))))

(assert (=> b!1639850 d!493593))

(declare-fun b!1640070 () Bool)

(declare-fun e!1051813 () Bool)

(assert (=> b!1640070 (= e!1051813 true)))

(declare-fun b!1640069 () Bool)

(declare-fun e!1051812 () Bool)

(assert (=> b!1640069 (= e!1051812 e!1051813)))

(declare-fun b!1640068 () Bool)

(declare-fun e!1051811 () Bool)

(assert (=> b!1640068 (= e!1051811 e!1051812)))

(declare-fun d!493595 () Bool)

(assert (=> d!493595 e!1051811))

(assert (= b!1640069 b!1640070))

(assert (= b!1640068 b!1640069))

(assert (= (and d!493595 ((_ is Cons!18070) rules!1846)) b!1640068))

(declare-fun order!10709 () Int)

(declare-fun lambda!67460 () Int)

(declare-fun order!10707 () Int)

(declare-fun dynLambda!8047 (Int Int) Int)

(declare-fun dynLambda!8048 (Int Int) Int)

(assert (=> b!1640070 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8048 order!10709 lambda!67460))))

(declare-fun order!10711 () Int)

(declare-fun dynLambda!8049 (Int Int) Int)

(assert (=> b!1640070 (< (dynLambda!8049 order!10711 (toChars!4475 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8048 order!10709 lambda!67460))))

(assert (=> d!493595 true))

(declare-fun lt!602468 () Bool)

(declare-fun forall!4116 (List!18139 Int) Bool)

(assert (=> d!493595 (= lt!602468 (forall!4116 tokens!457 lambda!67460))))

(declare-fun e!1051804 () Bool)

(assert (=> d!493595 (= lt!602468 e!1051804)))

(declare-fun res!734951 () Bool)

(assert (=> d!493595 (=> res!734951 e!1051804)))

(assert (=> d!493595 (= res!734951 (not ((_ is Cons!18069) tokens!457)))))

(assert (=> d!493595 (not (isEmpty!11095 rules!1846))))

(assert (=> d!493595 (= (rulesProduceEachTokenIndividuallyList!1016 thiss!17113 rules!1846 tokens!457) lt!602468)))

(declare-fun b!1640058 () Bool)

(declare-fun e!1051803 () Bool)

(assert (=> b!1640058 (= e!1051804 e!1051803)))

(declare-fun res!734950 () Bool)

(assert (=> b!1640058 (=> (not res!734950) (not e!1051803))))

(assert (=> b!1640058 (= res!734950 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 tokens!457)))))

(declare-fun b!1640059 () Bool)

(assert (=> b!1640059 (= e!1051803 (rulesProduceEachTokenIndividuallyList!1016 thiss!17113 rules!1846 (t!149932 tokens!457)))))

(assert (= (and d!493595 (not res!734951)) b!1640058))

(assert (= (and b!1640058 res!734950) b!1640059))

(declare-fun m!1980041 () Bool)

(assert (=> d!493595 m!1980041))

(assert (=> d!493595 m!1979815))

(assert (=> b!1640058 m!1979915))

(declare-fun m!1980043 () Bool)

(assert (=> b!1640059 m!1980043))

(assert (=> b!1639851 d!493595))

(declare-fun b!1640083 () Bool)

(declare-fun b_free!44407 () Bool)

(declare-fun b_next!45111 () Bool)

(assert (=> b!1640083 (= b_free!44407 (not b_next!45111))))

(declare-fun tp!475223 () Bool)

(declare-fun b_and!116237 () Bool)

(assert (=> b!1640083 (= tp!475223 b_and!116237)))

(declare-fun b_free!44409 () Bool)

(declare-fun b_next!45113 () Bool)

(assert (=> b!1640083 (= b_free!44409 (not b_next!45113))))

(declare-fun t!149952 () Bool)

(declare-fun tb!93891 () Bool)

(assert (=> (and b!1640083 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) t!149952) tb!93891))

(declare-fun result!113332 () Bool)

(assert (= result!113332 result!113312))

(assert (=> b!1639930 t!149952))

(assert (=> d!493585 t!149952))

(declare-fun b_and!116239 () Bool)

(declare-fun tp!475221 () Bool)

(assert (=> b!1640083 (= tp!475221 (and (=> t!149952 result!113332) b_and!116239))))

(declare-fun e!1051824 () Bool)

(assert (=> b!1640083 (= e!1051824 (and tp!475223 tp!475221))))

(declare-fun e!1051822 () Bool)

(declare-fun tp!475224 () Bool)

(declare-fun b!1640082 () Bool)

(assert (=> b!1640082 (= e!1051822 (and tp!475224 (inv!23407 (tag!3465 (h!23471 (t!149933 rules!1846)))) (inv!23411 (transformation!3185 (h!23471 (t!149933 rules!1846)))) e!1051824))))

(declare-fun b!1640081 () Bool)

(declare-fun e!1051825 () Bool)

(declare-fun tp!475222 () Bool)

(assert (=> b!1640081 (= e!1051825 (and e!1051822 tp!475222))))

(assert (=> b!1639852 (= tp!475150 e!1051825)))

(assert (= b!1640082 b!1640083))

(assert (= b!1640081 b!1640082))

(assert (= (and b!1639852 ((_ is Cons!18070) (t!149933 rules!1846))) b!1640081))

(declare-fun m!1980045 () Bool)

(assert (=> b!1640082 m!1980045))

(declare-fun m!1980047 () Bool)

(assert (=> b!1640082 m!1980047))

(declare-fun e!1051828 () Bool)

(assert (=> b!1639853 (= tp!475156 e!1051828)))

(declare-fun b!1640097 () Bool)

(declare-fun tp!475236 () Bool)

(declare-fun tp!475235 () Bool)

(assert (=> b!1640097 (= e!1051828 (and tp!475236 tp!475235))))

(declare-fun b!1640096 () Bool)

(declare-fun tp!475238 () Bool)

(assert (=> b!1640096 (= e!1051828 tp!475238)))

(declare-fun b!1640094 () Bool)

(declare-fun tp_is_empty!7321 () Bool)

(assert (=> b!1640094 (= e!1051828 tp_is_empty!7321)))

(declare-fun b!1640095 () Bool)

(declare-fun tp!475237 () Bool)

(declare-fun tp!475239 () Bool)

(assert (=> b!1640095 (= e!1051828 (and tp!475237 tp!475239))))

(assert (= (and b!1639853 ((_ is ElementMatch!4513) (regex!3185 (h!23471 rules!1846)))) b!1640094))

(assert (= (and b!1639853 ((_ is Concat!7789) (regex!3185 (h!23471 rules!1846)))) b!1640095))

(assert (= (and b!1639853 ((_ is Star!4513) (regex!3185 (h!23471 rules!1846)))) b!1640096))

(assert (= (and b!1639853 ((_ is Union!4513) (regex!3185 (h!23471 rules!1846)))) b!1640097))

(declare-fun b!1640111 () Bool)

(declare-fun b_free!44411 () Bool)

(declare-fun b_next!45115 () Bool)

(assert (=> b!1640111 (= b_free!44411 (not b_next!45115))))

(declare-fun tp!475252 () Bool)

(declare-fun b_and!116241 () Bool)

(assert (=> b!1640111 (= tp!475252 b_and!116241)))

(declare-fun b_free!44413 () Bool)

(declare-fun b_next!45117 () Bool)

(assert (=> b!1640111 (= b_free!44413 (not b_next!45117))))

(declare-fun t!149954 () Bool)

(declare-fun tb!93893 () Bool)

(assert (=> (and b!1640111 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) t!149954) tb!93893))

(declare-fun result!113338 () Bool)

(assert (= result!113338 result!113312))

(assert (=> b!1639930 t!149954))

(assert (=> d!493585 t!149954))

(declare-fun b_and!116243 () Bool)

(declare-fun tp!475250 () Bool)

(assert (=> b!1640111 (= tp!475250 (and (=> t!149954 result!113338) b_and!116243))))

(declare-fun e!1051841 () Bool)

(assert (=> b!1639842 (= tp!475148 e!1051841)))

(declare-fun tp!475251 () Bool)

(declare-fun b!1640110 () Bool)

(declare-fun e!1051846 () Bool)

(declare-fun e!1051845 () Bool)

(assert (=> b!1640110 (= e!1051845 (and tp!475251 (inv!23407 (tag!3465 (rule!5033 (h!23470 (t!149932 tokens!457))))) (inv!23411 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) e!1051846))))

(assert (=> b!1640111 (= e!1051846 (and tp!475252 tp!475250))))

(declare-fun tp!475253 () Bool)

(declare-fun b!1640108 () Bool)

(declare-fun e!1051842 () Bool)

(assert (=> b!1640108 (= e!1051841 (and (inv!23410 (h!23470 (t!149932 tokens!457))) e!1051842 tp!475253))))

(declare-fun tp!475254 () Bool)

(declare-fun b!1640109 () Bool)

(assert (=> b!1640109 (= e!1051842 (and (inv!21 (value!100445 (h!23470 (t!149932 tokens!457)))) e!1051845 tp!475254))))

(assert (= b!1640110 b!1640111))

(assert (= b!1640109 b!1640110))

(assert (= b!1640108 b!1640109))

(assert (= (and b!1639842 ((_ is Cons!18069) (t!149932 tokens!457))) b!1640108))

(declare-fun m!1980049 () Bool)

(assert (=> b!1640110 m!1980049))

(declare-fun m!1980051 () Bool)

(assert (=> b!1640110 m!1980051))

(declare-fun m!1980053 () Bool)

(assert (=> b!1640108 m!1980053))

(declare-fun m!1980055 () Bool)

(assert (=> b!1640109 m!1980055))

(declare-fun b!1640116 () Bool)

(declare-fun e!1051849 () Bool)

(declare-fun tp!475257 () Bool)

(assert (=> b!1640116 (= e!1051849 (and tp_is_empty!7321 tp!475257))))

(assert (=> b!1639848 (= tp!475149 e!1051849)))

(assert (= (and b!1639848 ((_ is Cons!18068) (originalCharacters!3999 (h!23470 tokens!457)))) b!1640116))

(declare-fun e!1051850 () Bool)

(assert (=> b!1639854 (= tp!475154 e!1051850)))

(declare-fun b!1640120 () Bool)

(declare-fun tp!475259 () Bool)

(declare-fun tp!475258 () Bool)

(assert (=> b!1640120 (= e!1051850 (and tp!475259 tp!475258))))

(declare-fun b!1640119 () Bool)

(declare-fun tp!475261 () Bool)

(assert (=> b!1640119 (= e!1051850 tp!475261)))

(declare-fun b!1640117 () Bool)

(assert (=> b!1640117 (= e!1051850 tp_is_empty!7321)))

(declare-fun b!1640118 () Bool)

(declare-fun tp!475260 () Bool)

(declare-fun tp!475262 () Bool)

(assert (=> b!1640118 (= e!1051850 (and tp!475260 tp!475262))))

(assert (= (and b!1639854 ((_ is ElementMatch!4513) (regex!3185 (rule!5033 (h!23470 tokens!457))))) b!1640117))

(assert (= (and b!1639854 ((_ is Concat!7789) (regex!3185 (rule!5033 (h!23470 tokens!457))))) b!1640118))

(assert (= (and b!1639854 ((_ is Star!4513) (regex!3185 (rule!5033 (h!23470 tokens!457))))) b!1640119))

(assert (= (and b!1639854 ((_ is Union!4513) (regex!3185 (rule!5033 (h!23470 tokens!457))))) b!1640120))

(declare-fun b_lambda!51521 () Bool)

(assert (= b_lambda!51513 (or (and b!1639846 b_free!44393 (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) (and b!1639849 b_free!44397) (and b!1640083 b_free!44409 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) (and b!1640111 b_free!44413 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) b_lambda!51521)))

(declare-fun b_lambda!51523 () Bool)

(assert (= b_lambda!51515 (or (and b!1639846 b_free!44393 (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) (and b!1639849 b_free!44397) (and b!1640083 b_free!44409 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) (and b!1640111 b_free!44413 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) b_lambda!51523)))

(check-sat (not b!1639930) (not d!493573) (not d!493579) (not b!1639931) (not b!1640119) (not d!493581) (not b_lambda!51523) b_and!116205 (not b!1640095) (not b!1639953) (not b!1639922) (not b_next!45097) b_and!116209 (not b_lambda!51521) (not b!1640109) (not b!1640058) (not b!1640118) (not b!1639985) (not d!493591) b_and!116241 (not b_next!45099) (not b!1640081) (not b!1640097) (not d!493563) (not b_next!45111) (not d!493587) (not d!493565) (not b_next!45095) (not b!1640116) (not d!493589) (not d!493561) (not b!1640110) (not b!1640082) (not b!1640120) b_and!116239 (not d!493577) (not d!493595) (not b!1639921) (not d!493571) (not b!1639936) b_and!116243 (not b!1639950) (not b!1639971) (not b!1639974) (not b!1639970) (not b!1639951) (not b!1640096) (not b_next!45101) (not b_next!45115) (not b_next!45113) (not b!1639984) (not b!1640059) (not b!1639925) (not d!493585) (not b!1640108) b_and!116225 (not b!1639972) (not d!493583) (not tb!93883) (not b!1639955) (not d!493575) (not b!1640068) tp_is_empty!7321 (not b_next!45117) (not b!1639939) b_and!116227 b_and!116237)
(check-sat b_and!116241 (not b_next!45099) (not b_next!45111) (not b_next!45095) b_and!116239 b_and!116243 (not b_next!45113) b_and!116225 (not b_next!45117) b_and!116205 (not b_next!45097) b_and!116209 (not b_next!45101) (not b_next!45115) b_and!116227 b_and!116237)
(get-model)

(declare-fun d!493609 () Bool)

(declare-fun charsToBigInt!0 (List!18137 Int) Int)

(assert (=> d!493609 (= (inv!15 (value!100445 (h!23470 tokens!457))) (= (charsToBigInt!0 (text!23374 (value!100445 (h!23470 tokens!457))) 0) (value!100440 (value!100445 (h!23470 tokens!457)))))))

(declare-fun bs!395587 () Bool)

(assert (= bs!395587 d!493609))

(declare-fun m!1980067 () Bool)

(assert (=> bs!395587 m!1980067))

(assert (=> b!1639950 d!493609))

(declare-fun d!493611 () Bool)

(declare-fun e!1051856 () Bool)

(assert (=> d!493611 e!1051856))

(declare-fun res!734963 () Bool)

(assert (=> d!493611 (=> (not res!734963) (not e!1051856))))

(declare-fun lt!602477 () BalanceConc!11982)

(assert (=> d!493611 (= res!734963 (= (list!7133 lt!602477) tokens!457))))

(declare-fun fromList!388 (List!18139) Conc!6019)

(assert (=> d!493611 (= lt!602477 (BalanceConc!11983 (fromList!388 tokens!457)))))

(assert (=> d!493611 (= (fromListB!933 tokens!457) lt!602477)))

(declare-fun b!1640126 () Bool)

(declare-fun isBalanced!1828 (Conc!6019) Bool)

(assert (=> b!1640126 (= e!1051856 (isBalanced!1828 (fromList!388 tokens!457)))))

(assert (= (and d!493611 res!734963) b!1640126))

(declare-fun m!1980069 () Bool)

(assert (=> d!493611 m!1980069))

(declare-fun m!1980071 () Bool)

(assert (=> d!493611 m!1980071))

(assert (=> b!1640126 m!1980071))

(assert (=> b!1640126 m!1980071))

(declare-fun m!1980073 () Bool)

(assert (=> b!1640126 m!1980073))

(assert (=> d!493581 d!493611))

(declare-fun d!493613 () Bool)

(declare-fun lt!602480 () Int)

(declare-fun size!14392 (List!18139) Int)

(assert (=> d!493613 (= lt!602480 (size!14392 (list!7133 (_1!10257 lt!602457))))))

(declare-fun size!14393 (Conc!6019) Int)

(assert (=> d!493613 (= lt!602480 (size!14393 (c!266709 (_1!10257 lt!602457))))))

(assert (=> d!493613 (= (size!14388 (_1!10257 lt!602457)) lt!602480)))

(declare-fun bs!395588 () Bool)

(assert (= bs!395588 d!493613))

(assert (=> bs!395588 m!1979977))

(assert (=> bs!395588 m!1979977))

(declare-fun m!1980075 () Bool)

(assert (=> bs!395588 m!1980075))

(declare-fun m!1980077 () Bool)

(assert (=> bs!395588 m!1980077))

(assert (=> d!493575 d!493613))

(declare-fun b!1640200 () Bool)

(declare-datatypes ((tuple2!17720 0))(
  ( (tuple2!17721 (_1!10262 Token!5936) (_2!10262 BalanceConc!11980)) )
))
(declare-datatypes ((Option!3413 0))(
  ( (None!3412) (Some!3412 (v!24517 tuple2!17720)) )
))
(declare-fun lt!602686 () Option!3413)

(declare-fun lt!602689 () tuple2!17710)

(declare-fun lexRec!367 (LexerInterface!2814 List!18140 BalanceConc!11980) tuple2!17710)

(assert (=> b!1640200 (= lt!602689 (lexRec!367 thiss!17113 rules!1846 (_2!10262 (v!24517 lt!602686))))))

(declare-fun e!1051901 () tuple2!17710)

(declare-fun prepend!731 (BalanceConc!11982 Token!5936) BalanceConc!11982)

(assert (=> b!1640200 (= e!1051901 (tuple2!17711 (prepend!731 (_1!10257 lt!602689) (_1!10262 (v!24517 lt!602686))) (_2!10257 lt!602689)))))

(declare-fun b!1640201 () Bool)

(declare-fun e!1051903 () tuple2!17710)

(assert (=> b!1640201 (= e!1051903 (tuple2!17711 (BalanceConc!11983 Empty!6019) lt!602392))))

(declare-fun b!1640202 () Bool)

(assert (=> b!1640202 (= e!1051901 (tuple2!17711 (BalanceConc!11983 Empty!6019) lt!602392))))

(declare-fun b!1640203 () Bool)

(declare-fun lt!602674 () BalanceConc!11980)

(declare-fun lt!602691 () Option!3413)

(declare-fun append!550 (BalanceConc!11982 Token!5936) BalanceConc!11982)

(assert (=> b!1640203 (= e!1051903 (lexTailRecV2!572 thiss!17113 rules!1846 lt!602392 lt!602674 (_2!10262 (v!24517 lt!602691)) (append!550 (BalanceConc!11983 Empty!6019) (_1!10262 (v!24517 lt!602691)))))))

(declare-fun lt!602687 () tuple2!17710)

(assert (=> b!1640203 (= lt!602687 (lexRec!367 thiss!17113 rules!1846 (_2!10262 (v!24517 lt!602691))))))

(declare-fun lt!602693 () List!18138)

(assert (=> b!1640203 (= lt!602693 (list!7130 (BalanceConc!11981 Empty!6018)))))

(declare-fun lt!602676 () List!18138)

(assert (=> b!1640203 (= lt!602676 (list!7130 (charsOf!1834 (_1!10262 (v!24517 lt!602691)))))))

(declare-fun lt!602673 () List!18138)

(assert (=> b!1640203 (= lt!602673 (list!7130 (_2!10262 (v!24517 lt!602691))))))

(declare-fun lt!602685 () Unit!29667)

(declare-fun lemmaConcatAssociativity!1010 (List!18138 List!18138 List!18138) Unit!29667)

(assert (=> b!1640203 (= lt!602685 (lemmaConcatAssociativity!1010 lt!602693 lt!602676 lt!602673))))

(assert (=> b!1640203 (= (++!4852 (++!4852 lt!602693 lt!602676) lt!602673) (++!4852 lt!602693 (++!4852 lt!602676 lt!602673)))))

(declare-fun lt!602669 () Unit!29667)

(assert (=> b!1640203 (= lt!602669 lt!602685)))

(declare-fun maxPrefixZipperSequence!709 (LexerInterface!2814 List!18140 BalanceConc!11980) Option!3413)

(assert (=> b!1640203 (= lt!602686 (maxPrefixZipperSequence!709 thiss!17113 rules!1846 lt!602392))))

(declare-fun c!266764 () Bool)

(assert (=> b!1640203 (= c!266764 ((_ is Some!3412) lt!602686))))

(assert (=> b!1640203 (= (lexRec!367 thiss!17113 rules!1846 lt!602392) e!1051901)))

(declare-fun lt!602700 () Unit!29667)

(declare-fun Unit!29674 () Unit!29667)

(assert (=> b!1640203 (= lt!602700 Unit!29674)))

(declare-fun lt!602680 () List!18139)

(assert (=> b!1640203 (= lt!602680 (list!7133 (BalanceConc!11983 Empty!6019)))))

(declare-fun lt!602684 () List!18139)

(assert (=> b!1640203 (= lt!602684 (Cons!18069 (_1!10262 (v!24517 lt!602691)) Nil!18069))))

(declare-fun lt!602688 () List!18139)

(assert (=> b!1640203 (= lt!602688 (list!7133 (_1!10257 lt!602687)))))

(declare-fun lt!602690 () Unit!29667)

(declare-fun lemmaConcatAssociativity!1011 (List!18139 List!18139 List!18139) Unit!29667)

(assert (=> b!1640203 (= lt!602690 (lemmaConcatAssociativity!1011 lt!602680 lt!602684 lt!602688))))

(declare-fun ++!4855 (List!18139 List!18139) List!18139)

(assert (=> b!1640203 (= (++!4855 (++!4855 lt!602680 lt!602684) lt!602688) (++!4855 lt!602680 (++!4855 lt!602684 lt!602688)))))

(declare-fun lt!602692 () Unit!29667)

(assert (=> b!1640203 (= lt!602692 lt!602690)))

(declare-fun lt!602699 () List!18138)

(assert (=> b!1640203 (= lt!602699 (++!4852 (list!7130 (BalanceConc!11981 Empty!6018)) (list!7130 (charsOf!1834 (_1!10262 (v!24517 lt!602691))))))))

(declare-fun lt!602695 () List!18138)

(assert (=> b!1640203 (= lt!602695 (list!7130 (_2!10262 (v!24517 lt!602691))))))

(declare-fun lt!602679 () List!18139)

(assert (=> b!1640203 (= lt!602679 (list!7133 (append!550 (BalanceConc!11983 Empty!6019) (_1!10262 (v!24517 lt!602691)))))))

(declare-fun lt!602681 () Unit!29667)

(declare-fun lemmaLexThenLexPrefix!255 (LexerInterface!2814 List!18140 List!18138 List!18138 List!18139 List!18139 List!18138) Unit!29667)

(assert (=> b!1640203 (= lt!602681 (lemmaLexThenLexPrefix!255 thiss!17113 rules!1846 lt!602699 lt!602695 lt!602679 (list!7133 (_1!10257 lt!602687)) (list!7130 (_2!10257 lt!602687))))))

(assert (=> b!1640203 (= (lexList!849 thiss!17113 rules!1846 lt!602699) (tuple2!17715 lt!602679 Nil!18068))))

(declare-fun lt!602677 () Unit!29667)

(assert (=> b!1640203 (= lt!602677 lt!602681)))

(declare-fun lt!602670 () BalanceConc!11980)

(declare-fun ++!4856 (BalanceConc!11980 BalanceConc!11980) BalanceConc!11980)

(assert (=> b!1640203 (= lt!602670 (++!4856 (BalanceConc!11981 Empty!6018) (charsOf!1834 (_1!10262 (v!24517 lt!602691)))))))

(declare-fun lt!602668 () Option!3413)

(assert (=> b!1640203 (= lt!602668 (maxPrefixZipperSequence!709 thiss!17113 rules!1846 lt!602670))))

(declare-fun c!266762 () Bool)

(assert (=> b!1640203 (= c!266762 ((_ is Some!3412) lt!602668))))

(declare-fun e!1051900 () tuple2!17710)

(assert (=> b!1640203 (= (lexRec!367 thiss!17113 rules!1846 (++!4856 (BalanceConc!11981 Empty!6018) (charsOf!1834 (_1!10262 (v!24517 lt!602691))))) e!1051900)))

(declare-fun lt!602698 () Unit!29667)

(declare-fun Unit!29675 () Unit!29667)

(assert (=> b!1640203 (= lt!602698 Unit!29675)))

(assert (=> b!1640203 (= lt!602674 (++!4856 (BalanceConc!11981 Empty!6018) (charsOf!1834 (_1!10262 (v!24517 lt!602691)))))))

(declare-fun lt!602675 () List!18138)

(assert (=> b!1640203 (= lt!602675 (list!7130 lt!602674))))

(declare-fun lt!602696 () List!18138)

(assert (=> b!1640203 (= lt!602696 (list!7130 (_2!10262 (v!24517 lt!602691))))))

(declare-fun lt!602694 () Unit!29667)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!314 (List!18138 List!18138) Unit!29667)

(assert (=> b!1640203 (= lt!602694 (lemmaConcatTwoListThenFSndIsSuffix!314 lt!602675 lt!602696))))

(declare-fun isSuffix!413 (List!18138 List!18138) Bool)

(assert (=> b!1640203 (isSuffix!413 lt!602696 (++!4852 lt!602675 lt!602696))))

(declare-fun lt!602678 () Unit!29667)

(assert (=> b!1640203 (= lt!602678 lt!602694)))

(declare-fun d!493615 () Bool)

(declare-fun e!1051902 () Bool)

(assert (=> d!493615 e!1051902))

(declare-fun res!734985 () Bool)

(assert (=> d!493615 (=> (not res!734985) (not e!1051902))))

(declare-fun lt!602682 () tuple2!17710)

(assert (=> d!493615 (= res!734985 (= (list!7133 (_1!10257 lt!602682)) (list!7133 (_1!10257 (lexRec!367 thiss!17113 rules!1846 lt!602392)))))))

(assert (=> d!493615 (= lt!602682 e!1051903)))

(declare-fun c!266763 () Bool)

(assert (=> d!493615 (= c!266763 ((_ is Some!3412) lt!602691))))

(declare-fun maxPrefixZipperSequenceV2!262 (LexerInterface!2814 List!18140 BalanceConc!11980 BalanceConc!11980) Option!3413)

(assert (=> d!493615 (= lt!602691 (maxPrefixZipperSequenceV2!262 thiss!17113 rules!1846 lt!602392 lt!602392))))

(declare-fun lt!602683 () Unit!29667)

(declare-fun lt!602672 () Unit!29667)

(assert (=> d!493615 (= lt!602683 lt!602672)))

(declare-fun lt!602697 () List!18138)

(declare-fun lt!602667 () List!18138)

(assert (=> d!493615 (isSuffix!413 lt!602697 (++!4852 lt!602667 lt!602697))))

(assert (=> d!493615 (= lt!602672 (lemmaConcatTwoListThenFSndIsSuffix!314 lt!602667 lt!602697))))

(assert (=> d!493615 (= lt!602697 (list!7130 lt!602392))))

(assert (=> d!493615 (= lt!602667 (list!7130 (BalanceConc!11981 Empty!6018)))))

(assert (=> d!493615 (= (lexTailRecV2!572 thiss!17113 rules!1846 lt!602392 (BalanceConc!11981 Empty!6018) lt!602392 (BalanceConc!11983 Empty!6019)) lt!602682)))

(declare-fun b!1640204 () Bool)

(assert (=> b!1640204 (= e!1051900 (tuple2!17711 (BalanceConc!11983 Empty!6019) lt!602670))))

(declare-fun b!1640205 () Bool)

(assert (=> b!1640205 (= e!1051902 (= (list!7130 (_2!10257 lt!602682)) (list!7130 (_2!10257 (lexRec!367 thiss!17113 rules!1846 lt!602392)))))))

(declare-fun lt!602671 () tuple2!17710)

(declare-fun b!1640206 () Bool)

(assert (=> b!1640206 (= lt!602671 (lexRec!367 thiss!17113 rules!1846 (_2!10262 (v!24517 lt!602668))))))

(assert (=> b!1640206 (= e!1051900 (tuple2!17711 (prepend!731 (_1!10257 lt!602671) (_1!10262 (v!24517 lt!602668))) (_2!10257 lt!602671)))))

(assert (= (and d!493615 c!266763) b!1640203))

(assert (= (and d!493615 (not c!266763)) b!1640201))

(assert (= (and b!1640203 c!266764) b!1640200))

(assert (= (and b!1640203 (not c!266764)) b!1640202))

(assert (= (and b!1640203 c!266762) b!1640206))

(assert (= (and b!1640203 (not c!266762)) b!1640204))

(assert (= (and d!493615 res!734985) b!1640205))

(declare-fun m!1980227 () Bool)

(assert (=> d!493615 m!1980227))

(declare-fun m!1980229 () Bool)

(assert (=> d!493615 m!1980229))

(declare-fun m!1980231 () Bool)

(assert (=> d!493615 m!1980231))

(declare-fun m!1980233 () Bool)

(assert (=> d!493615 m!1980233))

(declare-fun m!1980235 () Bool)

(assert (=> d!493615 m!1980235))

(declare-fun m!1980237 () Bool)

(assert (=> d!493615 m!1980237))

(declare-fun m!1980239 () Bool)

(assert (=> d!493615 m!1980239))

(assert (=> d!493615 m!1979803))

(declare-fun m!1980241 () Bool)

(assert (=> d!493615 m!1980241))

(assert (=> d!493615 m!1980231))

(declare-fun m!1980243 () Bool)

(assert (=> b!1640203 m!1980243))

(declare-fun m!1980245 () Bool)

(assert (=> b!1640203 m!1980245))

(declare-fun m!1980247 () Bool)

(assert (=> b!1640203 m!1980247))

(declare-fun m!1980249 () Bool)

(assert (=> b!1640203 m!1980249))

(declare-fun m!1980251 () Bool)

(assert (=> b!1640203 m!1980251))

(declare-fun m!1980253 () Bool)

(assert (=> b!1640203 m!1980253))

(declare-fun m!1980255 () Bool)

(assert (=> b!1640203 m!1980255))

(declare-fun m!1980257 () Bool)

(assert (=> b!1640203 m!1980257))

(assert (=> b!1640203 m!1980227))

(declare-fun m!1980259 () Bool)

(assert (=> b!1640203 m!1980259))

(declare-fun m!1980261 () Bool)

(assert (=> b!1640203 m!1980261))

(declare-fun m!1980263 () Bool)

(assert (=> b!1640203 m!1980263))

(declare-fun m!1980265 () Bool)

(assert (=> b!1640203 m!1980265))

(declare-fun m!1980267 () Bool)

(assert (=> b!1640203 m!1980267))

(assert (=> b!1640203 m!1980261))

(assert (=> b!1640203 m!1980239))

(assert (=> b!1640203 m!1980245))

(declare-fun m!1980269 () Bool)

(assert (=> b!1640203 m!1980269))

(assert (=> b!1640203 m!1980259))

(declare-fun m!1980271 () Bool)

(assert (=> b!1640203 m!1980271))

(declare-fun m!1980273 () Bool)

(assert (=> b!1640203 m!1980273))

(assert (=> b!1640203 m!1980253))

(declare-fun m!1980275 () Bool)

(assert (=> b!1640203 m!1980275))

(declare-fun m!1980277 () Bool)

(assert (=> b!1640203 m!1980277))

(declare-fun m!1980279 () Bool)

(assert (=> b!1640203 m!1980279))

(assert (=> b!1640203 m!1980279))

(declare-fun m!1980281 () Bool)

(assert (=> b!1640203 m!1980281))

(assert (=> b!1640203 m!1980265))

(declare-fun m!1980283 () Bool)

(assert (=> b!1640203 m!1980283))

(assert (=> b!1640203 m!1980277))

(declare-fun m!1980285 () Bool)

(assert (=> b!1640203 m!1980285))

(assert (=> b!1640203 m!1980245))

(declare-fun m!1980287 () Bool)

(assert (=> b!1640203 m!1980287))

(declare-fun m!1980289 () Bool)

(assert (=> b!1640203 m!1980289))

(assert (=> b!1640203 m!1980251))

(declare-fun m!1980291 () Bool)

(assert (=> b!1640203 m!1980291))

(declare-fun m!1980293 () Bool)

(assert (=> b!1640203 m!1980293))

(declare-fun m!1980295 () Bool)

(assert (=> b!1640203 m!1980295))

(assert (=> b!1640203 m!1980267))

(declare-fun m!1980297 () Bool)

(assert (=> b!1640203 m!1980297))

(assert (=> b!1640203 m!1980227))

(assert (=> b!1640203 m!1980297))

(declare-fun m!1980299 () Bool)

(assert (=> b!1640203 m!1980299))

(assert (=> b!1640203 m!1980243))

(declare-fun m!1980301 () Bool)

(assert (=> b!1640203 m!1980301))

(declare-fun m!1980303 () Bool)

(assert (=> b!1640203 m!1980303))

(assert (=> b!1640203 m!1980267))

(declare-fun m!1980305 () Bool)

(assert (=> b!1640205 m!1980305))

(assert (=> b!1640205 m!1980239))

(declare-fun m!1980307 () Bool)

(assert (=> b!1640205 m!1980307))

(declare-fun m!1980309 () Bool)

(assert (=> b!1640200 m!1980309))

(declare-fun m!1980311 () Bool)

(assert (=> b!1640200 m!1980311))

(declare-fun m!1980313 () Bool)

(assert (=> b!1640206 m!1980313))

(declare-fun m!1980315 () Bool)

(assert (=> b!1640206 m!1980315))

(assert (=> d!493575 d!493615))

(declare-fun d!493649 () Bool)

(declare-fun charsToBigInt!1 (List!18137) Int)

(assert (=> d!493649 (= (inv!17 (value!100445 (h!23470 tokens!457))) (= (charsToBigInt!1 (text!23373 (value!100445 (h!23470 tokens!457)))) (value!100437 (value!100445 (h!23470 tokens!457)))))))

(declare-fun bs!395594 () Bool)

(assert (= bs!395594 d!493649))

(declare-fun m!1980317 () Bool)

(assert (=> bs!395594 m!1980317))

(assert (=> b!1639951 d!493649))

(declare-fun d!493651 () Bool)

(declare-fun lt!602703 () Int)

(assert (=> d!493651 (= lt!602703 (size!14387 (list!7130 (_2!10257 lt!602457))))))

(declare-fun size!14394 (Conc!6018) Int)

(assert (=> d!493651 (= lt!602703 (size!14394 (c!266707 (_2!10257 lt!602457))))))

(assert (=> d!493651 (= (size!14386 (_2!10257 lt!602457)) lt!602703)))

(declare-fun bs!395595 () Bool)

(assert (= bs!395595 d!493651))

(assert (=> bs!395595 m!1979973))

(assert (=> bs!395595 m!1979973))

(declare-fun m!1980319 () Bool)

(assert (=> bs!395595 m!1980319))

(declare-fun m!1980321 () Bool)

(assert (=> bs!395595 m!1980321))

(assert (=> b!1639970 d!493651))

(declare-fun d!493653 () Bool)

(declare-fun lt!602704 () Int)

(assert (=> d!493653 (= lt!602704 (size!14387 (list!7130 lt!602392)))))

(assert (=> d!493653 (= lt!602704 (size!14394 (c!266707 lt!602392)))))

(assert (=> d!493653 (= (size!14386 lt!602392) lt!602704)))

(declare-fun bs!395596 () Bool)

(assert (= bs!395596 d!493653))

(assert (=> bs!395596 m!1979803))

(assert (=> bs!395596 m!1979803))

(assert (=> bs!395596 m!1979987))

(declare-fun m!1980323 () Bool)

(assert (=> bs!395596 m!1980323))

(assert (=> b!1639970 d!493653))

(declare-fun d!493655 () Bool)

(assert (=> d!493655 (= (list!7130 lt!602452) (list!7134 (c!266707 lt!602452)))))

(declare-fun bs!395597 () Bool)

(assert (= bs!395597 d!493655))

(declare-fun m!1980325 () Bool)

(assert (=> bs!395597 m!1980325))

(assert (=> d!493573 d!493655))

(declare-fun d!493657 () Bool)

(declare-fun c!266767 () Bool)

(assert (=> d!493657 (= c!266767 ((_ is Cons!18069) (list!7133 (seqFromList!2118 tokens!457))))))

(declare-fun e!1051906 () List!18138)

(assert (=> d!493657 (= (printList!929 thiss!17113 (list!7133 (seqFromList!2118 tokens!457))) e!1051906)))

(declare-fun b!1640211 () Bool)

(assert (=> b!1640211 (= e!1051906 (++!4852 (list!7130 (charsOf!1834 (h!23470 (list!7133 (seqFromList!2118 tokens!457))))) (printList!929 thiss!17113 (t!149932 (list!7133 (seqFromList!2118 tokens!457))))))))

(declare-fun b!1640212 () Bool)

(assert (=> b!1640212 (= e!1051906 Nil!18068)))

(assert (= (and d!493657 c!266767) b!1640211))

(assert (= (and d!493657 (not c!266767)) b!1640212))

(declare-fun m!1980327 () Bool)

(assert (=> b!1640211 m!1980327))

(assert (=> b!1640211 m!1980327))

(declare-fun m!1980329 () Bool)

(assert (=> b!1640211 m!1980329))

(declare-fun m!1980331 () Bool)

(assert (=> b!1640211 m!1980331))

(assert (=> b!1640211 m!1980329))

(assert (=> b!1640211 m!1980331))

(declare-fun m!1980333 () Bool)

(assert (=> b!1640211 m!1980333))

(assert (=> d!493573 d!493657))

(declare-fun d!493659 () Bool)

(declare-fun list!7136 (Conc!6019) List!18139)

(assert (=> d!493659 (= (list!7133 (seqFromList!2118 tokens!457)) (list!7136 (c!266709 (seqFromList!2118 tokens!457))))))

(declare-fun bs!395598 () Bool)

(assert (= bs!395598 d!493659))

(declare-fun m!1980335 () Bool)

(assert (=> bs!395598 m!1980335))

(assert (=> d!493573 d!493659))

(declare-fun d!493661 () Bool)

(declare-fun lt!602732 () BalanceConc!11980)

(declare-fun printListTailRec!374 (LexerInterface!2814 List!18139 List!18138) List!18138)

(declare-fun dropList!645 (BalanceConc!11982 Int) List!18139)

(assert (=> d!493661 (= (list!7130 lt!602732) (printListTailRec!374 thiss!17113 (dropList!645 (seqFromList!2118 tokens!457) 0) (list!7130 (BalanceConc!11981 Empty!6018))))))

(declare-fun e!1051927 () BalanceConc!11980)

(assert (=> d!493661 (= lt!602732 e!1051927)))

(declare-fun c!266782 () Bool)

(assert (=> d!493661 (= c!266782 (>= 0 (size!14388 (seqFromList!2118 tokens!457))))))

(declare-fun e!1051926 () Bool)

(assert (=> d!493661 e!1051926))

(declare-fun res!734991 () Bool)

(assert (=> d!493661 (=> (not res!734991) (not e!1051926))))

(assert (=> d!493661 (= res!734991 (>= 0 0))))

(assert (=> d!493661 (= (printTailRec!867 thiss!17113 (seqFromList!2118 tokens!457) 0 (BalanceConc!11981 Empty!6018)) lt!602732)))

(declare-fun b!1640246 () Bool)

(assert (=> b!1640246 (= e!1051926 (<= 0 (size!14388 (seqFromList!2118 tokens!457))))))

(declare-fun b!1640247 () Bool)

(assert (=> b!1640247 (= e!1051927 (BalanceConc!11981 Empty!6018))))

(declare-fun b!1640248 () Bool)

(declare-fun apply!4701 (BalanceConc!11982 Int) Token!5936)

(assert (=> b!1640248 (= e!1051927 (printTailRec!867 thiss!17113 (seqFromList!2118 tokens!457) (+ 0 1) (++!4856 (BalanceConc!11981 Empty!6018) (charsOf!1834 (apply!4701 (seqFromList!2118 tokens!457) 0)))))))

(declare-fun lt!602730 () List!18139)

(assert (=> b!1640248 (= lt!602730 (list!7133 (seqFromList!2118 tokens!457)))))

(declare-fun lt!602733 () Unit!29667)

(declare-fun lemmaDropApply!581 (List!18139 Int) Unit!29667)

(assert (=> b!1640248 (= lt!602733 (lemmaDropApply!581 lt!602730 0))))

(declare-fun head!3564 (List!18139) Token!5936)

(declare-fun drop!893 (List!18139 Int) List!18139)

(declare-fun apply!4702 (List!18139 Int) Token!5936)

(assert (=> b!1640248 (= (head!3564 (drop!893 lt!602730 0)) (apply!4702 lt!602730 0))))

(declare-fun lt!602734 () Unit!29667)

(assert (=> b!1640248 (= lt!602734 lt!602733)))

(declare-fun lt!602731 () List!18139)

(assert (=> b!1640248 (= lt!602731 (list!7133 (seqFromList!2118 tokens!457)))))

(declare-fun lt!602728 () Unit!29667)

(declare-fun lemmaDropTail!561 (List!18139 Int) Unit!29667)

(assert (=> b!1640248 (= lt!602728 (lemmaDropTail!561 lt!602731 0))))

(declare-fun tail!2403 (List!18139) List!18139)

(assert (=> b!1640248 (= (tail!2403 (drop!893 lt!602731 0)) (drop!893 lt!602731 (+ 0 1)))))

(declare-fun lt!602729 () Unit!29667)

(assert (=> b!1640248 (= lt!602729 lt!602728)))

(assert (= (and d!493661 res!734991) b!1640246))

(assert (= (and d!493661 c!266782) b!1640247))

(assert (= (and d!493661 (not c!266782)) b!1640248))

(declare-fun m!1980355 () Bool)

(assert (=> d!493661 m!1980355))

(assert (=> d!493661 m!1980227))

(declare-fun m!1980357 () Bool)

(assert (=> d!493661 m!1980357))

(declare-fun m!1980359 () Bool)

(assert (=> d!493661 m!1980359))

(assert (=> d!493661 m!1979793))

(assert (=> d!493661 m!1980355))

(assert (=> d!493661 m!1979793))

(declare-fun m!1980361 () Bool)

(assert (=> d!493661 m!1980361))

(assert (=> d!493661 m!1980227))

(assert (=> b!1640246 m!1979793))

(assert (=> b!1640246 m!1980361))

(declare-fun m!1980363 () Bool)

(assert (=> b!1640248 m!1980363))

(declare-fun m!1980365 () Bool)

(assert (=> b!1640248 m!1980365))

(declare-fun m!1980367 () Bool)

(assert (=> b!1640248 m!1980367))

(declare-fun m!1980369 () Bool)

(assert (=> b!1640248 m!1980369))

(declare-fun m!1980371 () Bool)

(assert (=> b!1640248 m!1980371))

(declare-fun m!1980373 () Bool)

(assert (=> b!1640248 m!1980373))

(declare-fun m!1980375 () Bool)

(assert (=> b!1640248 m!1980375))

(assert (=> b!1640248 m!1979793))

(assert (=> b!1640248 m!1979961))

(assert (=> b!1640248 m!1979793))

(declare-fun m!1980377 () Bool)

(assert (=> b!1640248 m!1980377))

(assert (=> b!1640248 m!1980369))

(assert (=> b!1640248 m!1980373))

(declare-fun m!1980379 () Bool)

(assert (=> b!1640248 m!1980379))

(declare-fun m!1980381 () Bool)

(assert (=> b!1640248 m!1980381))

(assert (=> b!1640248 m!1979793))

(assert (=> b!1640248 m!1980365))

(declare-fun m!1980383 () Bool)

(assert (=> b!1640248 m!1980383))

(declare-fun m!1980385 () Bool)

(assert (=> b!1640248 m!1980385))

(assert (=> b!1640248 m!1980377))

(assert (=> b!1640248 m!1980363))

(assert (=> d!493573 d!493661))

(declare-fun d!493667 () Bool)

(declare-fun c!266785 () Bool)

(assert (=> d!493667 (= c!266785 ((_ is Nil!18068) lt!602460))))

(declare-fun e!1051930 () (InoxSet C!9200))

(assert (=> d!493667 (= (content!2499 lt!602460) e!1051930)))

(declare-fun b!1640253 () Bool)

(assert (=> b!1640253 (= e!1051930 ((as const (Array C!9200 Bool)) false))))

(declare-fun b!1640254 () Bool)

(assert (=> b!1640254 (= e!1051930 ((_ map or) (store ((as const (Array C!9200 Bool)) false) (h!23469 lt!602460) true) (content!2499 (t!149931 lt!602460))))))

(assert (= (and d!493667 c!266785) b!1640253))

(assert (= (and d!493667 (not c!266785)) b!1640254))

(declare-fun m!1980387 () Bool)

(assert (=> b!1640254 m!1980387))

(declare-fun m!1980389 () Bool)

(assert (=> b!1640254 m!1980389))

(assert (=> d!493577 d!493667))

(declare-fun d!493669 () Bool)

(declare-fun c!266786 () Bool)

(assert (=> d!493669 (= c!266786 ((_ is Nil!18068) (list!7130 (charsOf!1834 (h!23470 tokens!457)))))))

(declare-fun e!1051931 () (InoxSet C!9200))

(assert (=> d!493669 (= (content!2499 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) e!1051931)))

(declare-fun b!1640255 () Bool)

(assert (=> b!1640255 (= e!1051931 ((as const (Array C!9200 Bool)) false))))

(declare-fun b!1640256 () Bool)

(assert (=> b!1640256 (= e!1051931 ((_ map or) (store ((as const (Array C!9200 Bool)) false) (h!23469 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) true) (content!2499 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457)))))))))

(assert (= (and d!493669 c!266786) b!1640255))

(assert (= (and d!493669 (not c!266786)) b!1640256))

(declare-fun m!1980391 () Bool)

(assert (=> b!1640256 m!1980391))

(declare-fun m!1980393 () Bool)

(assert (=> b!1640256 m!1980393))

(assert (=> d!493577 d!493669))

(declare-fun d!493671 () Bool)

(declare-fun c!266787 () Bool)

(assert (=> d!493671 (= c!266787 ((_ is Nil!18068) (list!7130 lt!602392)))))

(declare-fun e!1051932 () (InoxSet C!9200))

(assert (=> d!493671 (= (content!2499 (list!7130 lt!602392)) e!1051932)))

(declare-fun b!1640257 () Bool)

(assert (=> b!1640257 (= e!1051932 ((as const (Array C!9200 Bool)) false))))

(declare-fun b!1640258 () Bool)

(assert (=> b!1640258 (= e!1051932 ((_ map or) (store ((as const (Array C!9200 Bool)) false) (h!23469 (list!7130 lt!602392)) true) (content!2499 (t!149931 (list!7130 lt!602392)))))))

(assert (= (and d!493671 c!266787) b!1640257))

(assert (= (and d!493671 (not c!266787)) b!1640258))

(declare-fun m!1980395 () Bool)

(assert (=> b!1640258 m!1980395))

(declare-fun m!1980397 () Bool)

(assert (=> b!1640258 m!1980397))

(assert (=> d!493577 d!493671))

(declare-fun b!1640270 () Bool)

(declare-fun e!1051938 () List!18138)

(assert (=> b!1640270 (= e!1051938 (++!4852 (list!7134 (left!14484 (c!266707 (charsOf!1834 (h!23470 tokens!457))))) (list!7134 (right!14814 (c!266707 (charsOf!1834 (h!23470 tokens!457)))))))))

(declare-fun d!493673 () Bool)

(declare-fun c!266792 () Bool)

(assert (=> d!493673 (= c!266792 ((_ is Empty!6018) (c!266707 (charsOf!1834 (h!23470 tokens!457)))))))

(declare-fun e!1051937 () List!18138)

(assert (=> d!493673 (= (list!7134 (c!266707 (charsOf!1834 (h!23470 tokens!457)))) e!1051937)))

(declare-fun b!1640267 () Bool)

(assert (=> b!1640267 (= e!1051937 Nil!18068)))

(declare-fun b!1640269 () Bool)

(declare-fun list!7138 (IArray!12041) List!18138)

(assert (=> b!1640269 (= e!1051938 (list!7138 (xs!8854 (c!266707 (charsOf!1834 (h!23470 tokens!457))))))))

(declare-fun b!1640268 () Bool)

(assert (=> b!1640268 (= e!1051937 e!1051938)))

(declare-fun c!266793 () Bool)

(assert (=> b!1640268 (= c!266793 ((_ is Leaf!8831) (c!266707 (charsOf!1834 (h!23470 tokens!457)))))))

(assert (= (and d!493673 c!266792) b!1640267))

(assert (= (and d!493673 (not c!266792)) b!1640268))

(assert (= (and b!1640268 c!266793) b!1640269))

(assert (= (and b!1640268 (not c!266793)) b!1640270))

(declare-fun m!1980413 () Bool)

(assert (=> b!1640270 m!1980413))

(declare-fun m!1980417 () Bool)

(assert (=> b!1640270 m!1980417))

(assert (=> b!1640270 m!1980413))

(assert (=> b!1640270 m!1980417))

(declare-fun m!1980419 () Bool)

(assert (=> b!1640270 m!1980419))

(declare-fun m!1980421 () Bool)

(assert (=> b!1640269 m!1980421))

(assert (=> d!493591 d!493673))

(declare-fun d!493679 () Bool)

(assert (=> d!493679 (= (list!7130 (_2!10257 lt!602457)) (list!7134 (c!266707 (_2!10257 lt!602457))))))

(declare-fun bs!395601 () Bool)

(assert (= bs!395601 d!493679))

(declare-fun m!1980423 () Bool)

(assert (=> bs!395601 m!1980423))

(assert (=> b!1639974 d!493679))

(declare-fun b!1640281 () Bool)

(declare-fun e!1051947 () tuple2!17714)

(assert (=> b!1640281 (= e!1051947 (tuple2!17715 Nil!18069 (list!7130 lt!602392)))))

(declare-fun b!1640282 () Bool)

(declare-datatypes ((tuple2!17722 0))(
  ( (tuple2!17723 (_1!10263 Token!5936) (_2!10263 List!18138)) )
))
(declare-datatypes ((Option!3414 0))(
  ( (None!3413) (Some!3413 (v!24518 tuple2!17722)) )
))
(declare-fun lt!602743 () Option!3414)

(declare-fun lt!602744 () tuple2!17714)

(assert (=> b!1640282 (= e!1051947 (tuple2!17715 (Cons!18069 (_1!10263 (v!24518 lt!602743)) (_1!10259 lt!602744)) (_2!10259 lt!602744)))))

(assert (=> b!1640282 (= lt!602744 (lexList!849 thiss!17113 rules!1846 (_2!10263 (v!24518 lt!602743))))))

(declare-fun b!1640283 () Bool)

(declare-fun e!1051946 () Bool)

(declare-fun lt!602742 () tuple2!17714)

(declare-fun isEmpty!11103 (List!18139) Bool)

(assert (=> b!1640283 (= e!1051946 (not (isEmpty!11103 (_1!10259 lt!602742))))))

(declare-fun b!1640284 () Bool)

(declare-fun e!1051945 () Bool)

(assert (=> b!1640284 (= e!1051945 (= (_2!10259 lt!602742) (list!7130 lt!602392)))))

(declare-fun d!493681 () Bool)

(assert (=> d!493681 e!1051945))

(declare-fun c!266798 () Bool)

(assert (=> d!493681 (= c!266798 (> (size!14392 (_1!10259 lt!602742)) 0))))

(assert (=> d!493681 (= lt!602742 e!1051947)))

(declare-fun c!266799 () Bool)

(assert (=> d!493681 (= c!266799 ((_ is Some!3413) lt!602743))))

(declare-fun maxPrefix!1378 (LexerInterface!2814 List!18140 List!18138) Option!3414)

(assert (=> d!493681 (= lt!602743 (maxPrefix!1378 thiss!17113 rules!1846 (list!7130 lt!602392)))))

(assert (=> d!493681 (= (lexList!849 thiss!17113 rules!1846 (list!7130 lt!602392)) lt!602742)))

(declare-fun b!1640285 () Bool)

(assert (=> b!1640285 (= e!1051945 e!1051946)))

(declare-fun res!734994 () Bool)

(assert (=> b!1640285 (= res!734994 (< (size!14387 (_2!10259 lt!602742)) (size!14387 (list!7130 lt!602392))))))

(assert (=> b!1640285 (=> (not res!734994) (not e!1051946))))

(assert (= (and d!493681 c!266799) b!1640282))

(assert (= (and d!493681 (not c!266799)) b!1640281))

(assert (= (and d!493681 c!266798) b!1640285))

(assert (= (and d!493681 (not c!266798)) b!1640284))

(assert (= (and b!1640285 res!734994) b!1640283))

(declare-fun m!1980425 () Bool)

(assert (=> b!1640282 m!1980425))

(declare-fun m!1980427 () Bool)

(assert (=> b!1640283 m!1980427))

(declare-fun m!1980429 () Bool)

(assert (=> d!493681 m!1980429))

(assert (=> d!493681 m!1979803))

(declare-fun m!1980431 () Bool)

(assert (=> d!493681 m!1980431))

(declare-fun m!1980433 () Bool)

(assert (=> b!1640285 m!1980433))

(assert (=> b!1640285 m!1979803))

(assert (=> b!1640285 m!1979987))

(assert (=> b!1639974 d!493681))

(assert (=> b!1639974 d!493587))

(declare-fun d!493683 () Bool)

(assert (=> d!493683 true))

(declare-fun lambda!67463 () Int)

(declare-fun order!10713 () Int)

(declare-fun dynLambda!8053 (Int Int) Int)

(assert (=> d!493683 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8053 order!10713 lambda!67463))))

(declare-fun Forall2!517 (Int) Bool)

(assert (=> d!493683 (= (equivClasses!1161 (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (Forall2!517 lambda!67463))))

(declare-fun bs!395602 () Bool)

(assert (= bs!395602 d!493683))

(declare-fun m!1980435 () Bool)

(assert (=> bs!395602 m!1980435))

(assert (=> b!1639925 d!493683))

(declare-fun d!493685 () Bool)

(assert (=> d!493685 (= (inv!23407 (tag!3465 (h!23471 (t!149933 rules!1846)))) (= (mod (str.len (value!100444 (tag!3465 (h!23471 (t!149933 rules!1846))))) 2) 0))))

(assert (=> b!1640082 d!493685))

(declare-fun d!493687 () Bool)

(declare-fun res!734997 () Bool)

(declare-fun e!1051950 () Bool)

(assert (=> d!493687 (=> (not res!734997) (not e!1051950))))

(assert (=> d!493687 (= res!734997 (semiInverseModEq!1220 (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toValue!4616 (transformation!3185 (h!23471 (t!149933 rules!1846))))))))

(assert (=> d!493687 (= (inv!23411 (transformation!3185 (h!23471 (t!149933 rules!1846)))) e!1051950)))

(declare-fun b!1640290 () Bool)

(assert (=> b!1640290 (= e!1051950 (equivClasses!1161 (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toValue!4616 (transformation!3185 (h!23471 (t!149933 rules!1846))))))))

(assert (= (and d!493687 res!734997) b!1640290))

(declare-fun m!1980437 () Bool)

(assert (=> d!493687 m!1980437))

(declare-fun m!1980439 () Bool)

(assert (=> b!1640290 m!1980439))

(assert (=> b!1640082 d!493687))

(declare-fun d!493689 () Bool)

(assert (=> d!493689 (= (list!7133 (_1!10257 lt!602457)) (list!7136 (c!266709 (_1!10257 lt!602457))))))

(declare-fun bs!395603 () Bool)

(assert (= bs!395603 d!493689))

(declare-fun m!1980441 () Bool)

(assert (=> bs!395603 m!1980441))

(assert (=> b!1639971 d!493689))

(assert (=> b!1639971 d!493681))

(assert (=> b!1639971 d!493587))

(declare-fun d!493691 () Bool)

(declare-fun lt!602772 () Bool)

(declare-fun e!1051983 () Bool)

(assert (=> d!493691 (= lt!602772 e!1051983)))

(declare-fun res!735023 () Bool)

(assert (=> d!493691 (=> (not res!735023) (not e!1051983))))

(declare-fun singletonSeq!1648 (Token!5936) BalanceConc!11982)

(assert (=> d!493691 (= res!735023 (= (list!7133 (_1!10257 (lex!1298 thiss!17113 rules!1846 (print!1345 thiss!17113 (singletonSeq!1648 (h!23470 tokens!457)))))) (list!7133 (singletonSeq!1648 (h!23470 tokens!457)))))))

(declare-fun e!1051984 () Bool)

(assert (=> d!493691 (= lt!602772 e!1051984)))

(declare-fun res!735022 () Bool)

(assert (=> d!493691 (=> (not res!735022) (not e!1051984))))

(declare-fun lt!602773 () tuple2!17710)

(assert (=> d!493691 (= res!735022 (= (size!14388 (_1!10257 lt!602773)) 1))))

(assert (=> d!493691 (= lt!602773 (lex!1298 thiss!17113 rules!1846 (print!1345 thiss!17113 (singletonSeq!1648 (h!23470 tokens!457)))))))

(assert (=> d!493691 (not (isEmpty!11095 rules!1846))))

(assert (=> d!493691 (= (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 tokens!457)) lt!602772)))

(declare-fun b!1640342 () Bool)

(declare-fun res!735021 () Bool)

(assert (=> b!1640342 (=> (not res!735021) (not e!1051984))))

(assert (=> b!1640342 (= res!735021 (= (apply!4701 (_1!10257 lt!602773) 0) (h!23470 tokens!457)))))

(declare-fun b!1640343 () Bool)

(declare-fun isEmpty!11104 (BalanceConc!11980) Bool)

(assert (=> b!1640343 (= e!1051984 (isEmpty!11104 (_2!10257 lt!602773)))))

(declare-fun b!1640344 () Bool)

(assert (=> b!1640344 (= e!1051983 (isEmpty!11104 (_2!10257 (lex!1298 thiss!17113 rules!1846 (print!1345 thiss!17113 (singletonSeq!1648 (h!23470 tokens!457)))))))))

(assert (= (and d!493691 res!735022) b!1640342))

(assert (= (and b!1640342 res!735021) b!1640343))

(assert (= (and d!493691 res!735023) b!1640344))

(declare-fun m!1980547 () Bool)

(assert (=> d!493691 m!1980547))

(declare-fun m!1980549 () Bool)

(assert (=> d!493691 m!1980549))

(assert (=> d!493691 m!1980547))

(declare-fun m!1980551 () Bool)

(assert (=> d!493691 m!1980551))

(assert (=> d!493691 m!1979815))

(declare-fun m!1980553 () Bool)

(assert (=> d!493691 m!1980553))

(declare-fun m!1980555 () Bool)

(assert (=> d!493691 m!1980555))

(assert (=> d!493691 m!1980551))

(declare-fun m!1980557 () Bool)

(assert (=> d!493691 m!1980557))

(assert (=> d!493691 m!1980547))

(declare-fun m!1980559 () Bool)

(assert (=> b!1640342 m!1980559))

(declare-fun m!1980561 () Bool)

(assert (=> b!1640343 m!1980561))

(assert (=> b!1640344 m!1980547))

(assert (=> b!1640344 m!1980547))

(assert (=> b!1640344 m!1980551))

(assert (=> b!1640344 m!1980551))

(assert (=> b!1640344 m!1980557))

(declare-fun m!1980563 () Bool)

(assert (=> b!1640344 m!1980563))

(assert (=> b!1640058 d!493691))

(declare-fun d!493739 () Bool)

(declare-fun charsToInt!0 (List!18137) (_ BitVec 32))

(assert (=> d!493739 (= (inv!16 (value!100445 (h!23470 tokens!457))) (= (charsToInt!0 (text!23372 (value!100445 (h!23470 tokens!457)))) (value!100436 (value!100445 (h!23470 tokens!457)))))))

(declare-fun bs!395615 () Bool)

(assert (= bs!395615 d!493739))

(declare-fun m!1980565 () Bool)

(assert (=> bs!395615 m!1980565))

(assert (=> b!1639953 d!493739))

(declare-fun d!493741 () Bool)

(declare-fun lt!602776 () Bool)

(assert (=> d!493741 (= lt!602776 (isEmpty!11103 (list!7133 (_1!10257 lt!602457))))))

(declare-fun isEmpty!11105 (Conc!6019) Bool)

(assert (=> d!493741 (= lt!602776 (isEmpty!11105 (c!266709 (_1!10257 lt!602457))))))

(assert (=> d!493741 (= (isEmpty!11099 (_1!10257 lt!602457)) lt!602776)))

(declare-fun bs!395617 () Bool)

(assert (= bs!395617 d!493741))

(assert (=> bs!395617 m!1979977))

(assert (=> bs!395617 m!1979977))

(declare-fun m!1980577 () Bool)

(assert (=> bs!395617 m!1980577))

(declare-fun m!1980579 () Bool)

(assert (=> bs!395617 m!1980579))

(assert (=> b!1639972 d!493741))

(declare-fun bs!395618 () Bool)

(declare-fun d!493747 () Bool)

(assert (= bs!395618 (and d!493747 d!493595)))

(declare-fun lambda!67474 () Int)

(assert (=> bs!395618 (= lambda!67474 lambda!67460)))

(declare-fun b!1640355 () Bool)

(declare-fun e!1051992 () Bool)

(assert (=> b!1640355 (= e!1051992 true)))

(declare-fun b!1640354 () Bool)

(declare-fun e!1051991 () Bool)

(assert (=> b!1640354 (= e!1051991 e!1051992)))

(declare-fun b!1640353 () Bool)

(declare-fun e!1051990 () Bool)

(assert (=> b!1640353 (= e!1051990 e!1051991)))

(assert (=> d!493747 e!1051990))

(assert (= b!1640354 b!1640355))

(assert (= b!1640353 b!1640354))

(assert (= (and d!493747 ((_ is Cons!18070) rules!1846)) b!1640353))

(assert (=> b!1640355 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8048 order!10709 lambda!67474))))

(assert (=> b!1640355 (< (dynLambda!8049 order!10711 (toChars!4475 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8048 order!10709 lambda!67474))))

(assert (=> d!493747 true))

(declare-fun lt!602777 () Bool)

(assert (=> d!493747 (= lt!602777 (forall!4116 (t!149932 tokens!457) lambda!67474))))

(declare-fun e!1051989 () Bool)

(assert (=> d!493747 (= lt!602777 e!1051989)))

(declare-fun res!735025 () Bool)

(assert (=> d!493747 (=> res!735025 e!1051989)))

(assert (=> d!493747 (= res!735025 (not ((_ is Cons!18069) (t!149932 tokens!457))))))

(assert (=> d!493747 (not (isEmpty!11095 rules!1846))))

(assert (=> d!493747 (= (rulesProduceEachTokenIndividuallyList!1016 thiss!17113 rules!1846 (t!149932 tokens!457)) lt!602777)))

(declare-fun b!1640351 () Bool)

(declare-fun e!1051988 () Bool)

(assert (=> b!1640351 (= e!1051989 e!1051988)))

(declare-fun res!735024 () Bool)

(assert (=> b!1640351 (=> (not res!735024) (not e!1051988))))

(assert (=> b!1640351 (= res!735024 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 tokens!457))))))

(declare-fun b!1640352 () Bool)

(assert (=> b!1640352 (= e!1051988 (rulesProduceEachTokenIndividuallyList!1016 thiss!17113 rules!1846 (t!149932 (t!149932 tokens!457))))))

(assert (= (and d!493747 (not res!735025)) b!1640351))

(assert (= (and b!1640351 res!735024) b!1640352))

(declare-fun m!1980581 () Bool)

(assert (=> d!493747 m!1980581))

(assert (=> d!493747 m!1979815))

(assert (=> b!1640351 m!1979923))

(declare-fun m!1980583 () Bool)

(assert (=> b!1640352 m!1980583))

(assert (=> b!1640059 d!493747))

(declare-fun d!493749 () Bool)

(declare-fun res!735030 () Bool)

(declare-fun e!1051997 () Bool)

(assert (=> d!493749 (=> res!735030 e!1051997)))

(assert (=> d!493749 (= res!735030 ((_ is Nil!18070) rules!1846))))

(assert (=> d!493749 (= (noDuplicateTag!1148 thiss!17113 rules!1846 Nil!18072) e!1051997)))

(declare-fun b!1640360 () Bool)

(declare-fun e!1051998 () Bool)

(assert (=> b!1640360 (= e!1051997 e!1051998)))

(declare-fun res!735031 () Bool)

(assert (=> b!1640360 (=> (not res!735031) (not e!1051998))))

(declare-fun contains!3145 (List!18142 String!20707) Bool)

(assert (=> b!1640360 (= res!735031 (not (contains!3145 Nil!18072 (tag!3465 (h!23471 rules!1846)))))))

(declare-fun b!1640361 () Bool)

(assert (=> b!1640361 (= e!1051998 (noDuplicateTag!1148 thiss!17113 (t!149933 rules!1846) (Cons!18072 (tag!3465 (h!23471 rules!1846)) Nil!18072)))))

(assert (= (and d!493749 (not res!735030)) b!1640360))

(assert (= (and b!1640360 res!735031) b!1640361))

(declare-fun m!1980585 () Bool)

(assert (=> b!1640360 m!1980585))

(declare-fun m!1980587 () Bool)

(assert (=> b!1640361 m!1980587))

(assert (=> b!1639939 d!493749))

(declare-fun d!493751 () Bool)

(declare-fun c!266811 () Bool)

(assert (=> d!493751 (= c!266811 ((_ is IntegerValue!9825) (value!100445 (h!23470 (t!149932 tokens!457)))))))

(declare-fun e!1052000 () Bool)

(assert (=> d!493751 (= (inv!21 (value!100445 (h!23470 (t!149932 tokens!457)))) e!1052000)))

(declare-fun b!1640362 () Bool)

(declare-fun e!1052001 () Bool)

(assert (=> b!1640362 (= e!1052001 (inv!15 (value!100445 (h!23470 (t!149932 tokens!457)))))))

(declare-fun b!1640363 () Bool)

(declare-fun e!1051999 () Bool)

(assert (=> b!1640363 (= e!1051999 (inv!17 (value!100445 (h!23470 (t!149932 tokens!457)))))))

(declare-fun b!1640364 () Bool)

(assert (=> b!1640364 (= e!1052000 e!1051999)))

(declare-fun c!266812 () Bool)

(assert (=> b!1640364 (= c!266812 ((_ is IntegerValue!9826) (value!100445 (h!23470 (t!149932 tokens!457)))))))

(declare-fun b!1640365 () Bool)

(assert (=> b!1640365 (= e!1052000 (inv!16 (value!100445 (h!23470 (t!149932 tokens!457)))))))

(declare-fun b!1640366 () Bool)

(declare-fun res!735032 () Bool)

(assert (=> b!1640366 (=> res!735032 e!1052001)))

(assert (=> b!1640366 (= res!735032 (not ((_ is IntegerValue!9827) (value!100445 (h!23470 (t!149932 tokens!457))))))))

(assert (=> b!1640366 (= e!1051999 e!1052001)))

(assert (= (and d!493751 c!266811) b!1640365))

(assert (= (and d!493751 (not c!266811)) b!1640364))

(assert (= (and b!1640364 c!266812) b!1640363))

(assert (= (and b!1640364 (not c!266812)) b!1640366))

(assert (= (and b!1640366 (not res!735032)) b!1640362))

(declare-fun m!1980589 () Bool)

(assert (=> b!1640362 m!1980589))

(declare-fun m!1980591 () Bool)

(assert (=> b!1640363 m!1980591))

(declare-fun m!1980593 () Bool)

(assert (=> b!1640365 m!1980593))

(assert (=> b!1640109 d!493751))

(declare-fun d!493753 () Bool)

(declare-fun c!266815 () Bool)

(assert (=> d!493753 (= c!266815 ((_ is Node!6018) (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))))

(declare-fun e!1052006 () Bool)

(assert (=> d!493753 (= (inv!23414 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))) e!1052006)))

(declare-fun b!1640373 () Bool)

(declare-fun inv!23418 (Conc!6018) Bool)

(assert (=> b!1640373 (= e!1052006 (inv!23418 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))))

(declare-fun b!1640374 () Bool)

(declare-fun e!1052007 () Bool)

(assert (=> b!1640374 (= e!1052006 e!1052007)))

(declare-fun res!735035 () Bool)

(assert (=> b!1640374 (= res!735035 (not ((_ is Leaf!8831) (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))))))))

(assert (=> b!1640374 (=> res!735035 e!1052007)))

(declare-fun b!1640375 () Bool)

(declare-fun inv!23419 (Conc!6018) Bool)

(assert (=> b!1640375 (= e!1052007 (inv!23419 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))))

(assert (= (and d!493753 c!266815) b!1640373))

(assert (= (and d!493753 (not c!266815)) b!1640374))

(assert (= (and b!1640374 (not res!735035)) b!1640375))

(declare-fun m!1980595 () Bool)

(assert (=> b!1640373 m!1980595))

(declare-fun m!1980597 () Bool)

(assert (=> b!1640375 m!1980597))

(assert (=> b!1639936 d!493753))

(declare-fun b!1640379 () Bool)

(declare-fun e!1052009 () List!18138)

(assert (=> b!1640379 (= e!1052009 (++!4852 (list!7134 (left!14484 (c!266707 lt!602392))) (list!7134 (right!14814 (c!266707 lt!602392)))))))

(declare-fun d!493755 () Bool)

(declare-fun c!266816 () Bool)

(assert (=> d!493755 (= c!266816 ((_ is Empty!6018) (c!266707 lt!602392)))))

(declare-fun e!1052008 () List!18138)

(assert (=> d!493755 (= (list!7134 (c!266707 lt!602392)) e!1052008)))

(declare-fun b!1640376 () Bool)

(assert (=> b!1640376 (= e!1052008 Nil!18068)))

(declare-fun b!1640378 () Bool)

(assert (=> b!1640378 (= e!1052009 (list!7138 (xs!8854 (c!266707 lt!602392))))))

(declare-fun b!1640377 () Bool)

(assert (=> b!1640377 (= e!1052008 e!1052009)))

(declare-fun c!266817 () Bool)

(assert (=> b!1640377 (= c!266817 ((_ is Leaf!8831) (c!266707 lt!602392)))))

(assert (= (and d!493755 c!266816) b!1640376))

(assert (= (and d!493755 (not c!266816)) b!1640377))

(assert (= (and b!1640377 c!266817) b!1640378))

(assert (= (and b!1640377 (not c!266817)) b!1640379))

(declare-fun m!1980599 () Bool)

(assert (=> b!1640379 m!1980599))

(declare-fun m!1980601 () Bool)

(assert (=> b!1640379 m!1980601))

(assert (=> b!1640379 m!1980599))

(assert (=> b!1640379 m!1980601))

(declare-fun m!1980603 () Bool)

(assert (=> b!1640379 m!1980603))

(declare-fun m!1980605 () Bool)

(assert (=> b!1640378 m!1980605))

(assert (=> d!493587 d!493755))

(declare-fun d!493757 () Bool)

(assert (=> d!493757 (= (inv!23407 (tag!3465 (rule!5033 (h!23470 (t!149932 tokens!457))))) (= (mod (str.len (value!100444 (tag!3465 (rule!5033 (h!23470 (t!149932 tokens!457)))))) 2) 0))))

(assert (=> b!1640110 d!493757))

(declare-fun d!493759 () Bool)

(declare-fun res!735036 () Bool)

(declare-fun e!1052010 () Bool)

(assert (=> d!493759 (=> (not res!735036) (not e!1052010))))

(assert (=> d!493759 (= res!735036 (semiInverseModEq!1220 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))))))

(assert (=> d!493759 (= (inv!23411 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) e!1052010)))

(declare-fun b!1640380 () Bool)

(assert (=> b!1640380 (= e!1052010 (equivClasses!1161 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))))))

(assert (= (and d!493759 res!735036) b!1640380))

(declare-fun m!1980607 () Bool)

(assert (=> d!493759 m!1980607))

(declare-fun m!1980609 () Bool)

(assert (=> b!1640380 m!1980609))

(assert (=> b!1640110 d!493759))

(declare-fun d!493761 () Bool)

(assert (=> d!493761 (= (isEmpty!11098 (originalCharacters!3999 (h!23470 tokens!457))) ((_ is Nil!18068) (originalCharacters!3999 (h!23470 tokens!457))))))

(assert (=> d!493563 d!493761))

(assert (=> b!1639921 d!493691))

(declare-fun d!493763 () Bool)

(declare-fun prefixMatchZipperSequence!593 (Regex!4513 BalanceConc!11980) Bool)

(declare-fun rulesRegex!575 (LexerInterface!2814 List!18140) Regex!4513)

(declare-fun singletonSeq!1649 (C!9200) BalanceConc!11980)

(declare-fun apply!4704 (BalanceConc!11980 Int) C!9200)

(assert (=> d!493763 (= (separableTokensPredicate!756 thiss!17113 (h!23470 tokens!457) (h!23470 (t!149932 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!593 (rulesRegex!575 thiss!17113 rules!1846) (++!4856 (charsOf!1834 (h!23470 tokens!457)) (singletonSeq!1649 (apply!4704 (charsOf!1834 (h!23470 (t!149932 tokens!457))) 0))))))))

(declare-fun bs!395623 () Bool)

(assert (= bs!395623 d!493763))

(assert (=> bs!395623 m!1979913))

(assert (=> bs!395623 m!1979797))

(declare-fun m!1980695 () Bool)

(assert (=> bs!395623 m!1980695))

(declare-fun m!1980697 () Bool)

(assert (=> bs!395623 m!1980697))

(declare-fun m!1980701 () Bool)

(assert (=> bs!395623 m!1980701))

(assert (=> bs!395623 m!1980697))

(declare-fun m!1980703 () Bool)

(assert (=> bs!395623 m!1980703))

(assert (=> bs!395623 m!1979797))

(assert (=> bs!395623 m!1980701))

(declare-fun m!1980707 () Bool)

(assert (=> bs!395623 m!1980707))

(assert (=> bs!395623 m!1980695))

(assert (=> bs!395623 m!1979913))

(assert (=> bs!395623 m!1980707))

(assert (=> b!1639921 d!493763))

(declare-fun d!493783 () Bool)

(declare-fun lt!602806 () Int)

(assert (=> d!493783 (= lt!602806 (size!14387 (list!7130 (charsOf!1834 (h!23470 (t!149932 tokens!457))))))))

(assert (=> d!493783 (= lt!602806 (size!14394 (c!266707 (charsOf!1834 (h!23470 (t!149932 tokens!457))))))))

(assert (=> d!493783 (= (size!14386 (charsOf!1834 (h!23470 (t!149932 tokens!457)))) lt!602806)))

(declare-fun bs!395624 () Bool)

(assert (= bs!395624 d!493783))

(assert (=> bs!395624 m!1979913))

(declare-fun m!1980711 () Bool)

(assert (=> bs!395624 m!1980711))

(assert (=> bs!395624 m!1980711))

(declare-fun m!1980713 () Bool)

(assert (=> bs!395624 m!1980713))

(declare-fun m!1980715 () Bool)

(assert (=> bs!395624 m!1980715))

(assert (=> b!1639921 d!493783))

(declare-fun d!493785 () Bool)

(assert (=> d!493785 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 tokens!457))))

(declare-fun lt!602809 () Unit!29667)

(declare-fun choose!9842 (LexerInterface!2814 List!18140 List!18139 Token!5936) Unit!29667)

(assert (=> d!493785 (= lt!602809 (choose!9842 thiss!17113 rules!1846 tokens!457 (h!23470 tokens!457)))))

(assert (=> d!493785 (not (isEmpty!11095 rules!1846))))

(assert (=> d!493785 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 thiss!17113 rules!1846 tokens!457 (h!23470 tokens!457)) lt!602809)))

(declare-fun bs!395630 () Bool)

(assert (= bs!395630 d!493785))

(assert (=> bs!395630 m!1979915))

(declare-fun m!1980747 () Bool)

(assert (=> bs!395630 m!1980747))

(assert (=> bs!395630 m!1979815))

(assert (=> b!1639921 d!493785))

(declare-fun d!493793 () Bool)

(declare-fun lt!602810 () BalanceConc!11980)

(assert (=> d!493793 (= (list!7130 lt!602810) (originalCharacters!3999 (h!23470 (t!149932 tokens!457))))))

(assert (=> d!493793 (= lt!602810 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (value!100445 (h!23470 (t!149932 tokens!457)))))))

(assert (=> d!493793 (= (charsOf!1834 (h!23470 (t!149932 tokens!457))) lt!602810)))

(declare-fun b_lambda!51537 () Bool)

(assert (=> (not b_lambda!51537) (not d!493793)))

(declare-fun t!149979 () Bool)

(declare-fun tb!93911 () Bool)

(assert (=> (and b!1639846 (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) t!149979) tb!93911))

(declare-fun b!1640478 () Bool)

(declare-fun e!1052062 () Bool)

(declare-fun tp!475344 () Bool)

(assert (=> b!1640478 (= e!1052062 (and (inv!23414 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (value!100445 (h!23470 (t!149932 tokens!457)))))) tp!475344))))

(declare-fun result!113360 () Bool)

(assert (=> tb!93911 (= result!113360 (and (inv!23415 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (value!100445 (h!23470 (t!149932 tokens!457))))) e!1052062))))

(assert (= tb!93911 b!1640478))

(declare-fun m!1980749 () Bool)

(assert (=> b!1640478 m!1980749))

(declare-fun m!1980751 () Bool)

(assert (=> tb!93911 m!1980751))

(assert (=> d!493793 t!149979))

(declare-fun b_and!116269 () Bool)

(assert (= b_and!116225 (and (=> t!149979 result!113360) b_and!116269)))

(declare-fun t!149981 () Bool)

(declare-fun tb!93913 () Bool)

(assert (=> (and b!1639849 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) t!149981) tb!93913))

(declare-fun result!113362 () Bool)

(assert (= result!113362 result!113360))

(assert (=> d!493793 t!149981))

(declare-fun b_and!116271 () Bool)

(assert (= b_and!116227 (and (=> t!149981 result!113362) b_and!116271)))

(declare-fun t!149983 () Bool)

(declare-fun tb!93915 () Bool)

(assert (=> (and b!1640083 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) t!149983) tb!93915))

(declare-fun result!113364 () Bool)

(assert (= result!113364 result!113360))

(assert (=> d!493793 t!149983))

(declare-fun b_and!116273 () Bool)

(assert (= b_and!116239 (and (=> t!149983 result!113364) b_and!116273)))

(declare-fun t!149985 () Bool)

(declare-fun tb!93917 () Bool)

(assert (=> (and b!1640111 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) t!149985) tb!93917))

(declare-fun result!113366 () Bool)

(assert (= result!113366 result!113360))

(assert (=> d!493793 t!149985))

(declare-fun b_and!116275 () Bool)

(assert (= b_and!116243 (and (=> t!149985 result!113366) b_and!116275)))

(declare-fun m!1980753 () Bool)

(assert (=> d!493793 m!1980753))

(declare-fun m!1980755 () Bool)

(assert (=> d!493793 m!1980755))

(assert (=> b!1639921 d!493793))

(declare-fun d!493795 () Bool)

(declare-fun lt!602811 () Bool)

(declare-fun e!1052063 () Bool)

(assert (=> d!493795 (= lt!602811 e!1052063)))

(declare-fun res!735051 () Bool)

(assert (=> d!493795 (=> (not res!735051) (not e!1052063))))

(assert (=> d!493795 (= res!735051 (= (list!7133 (_1!10257 (lex!1298 thiss!17113 rules!1846 (print!1345 thiss!17113 (singletonSeq!1648 (h!23470 (t!149932 tokens!457))))))) (list!7133 (singletonSeq!1648 (h!23470 (t!149932 tokens!457))))))))

(declare-fun e!1052064 () Bool)

(assert (=> d!493795 (= lt!602811 e!1052064)))

(declare-fun res!735050 () Bool)

(assert (=> d!493795 (=> (not res!735050) (not e!1052064))))

(declare-fun lt!602812 () tuple2!17710)

(assert (=> d!493795 (= res!735050 (= (size!14388 (_1!10257 lt!602812)) 1))))

(assert (=> d!493795 (= lt!602812 (lex!1298 thiss!17113 rules!1846 (print!1345 thiss!17113 (singletonSeq!1648 (h!23470 (t!149932 tokens!457))))))))

(assert (=> d!493795 (not (isEmpty!11095 rules!1846))))

(assert (=> d!493795 (= (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 tokens!457))) lt!602811)))

(declare-fun b!1640479 () Bool)

(declare-fun res!735049 () Bool)

(assert (=> b!1640479 (=> (not res!735049) (not e!1052064))))

(assert (=> b!1640479 (= res!735049 (= (apply!4701 (_1!10257 lt!602812) 0) (h!23470 (t!149932 tokens!457))))))

(declare-fun b!1640480 () Bool)

(assert (=> b!1640480 (= e!1052064 (isEmpty!11104 (_2!10257 lt!602812)))))

(declare-fun b!1640481 () Bool)

(assert (=> b!1640481 (= e!1052063 (isEmpty!11104 (_2!10257 (lex!1298 thiss!17113 rules!1846 (print!1345 thiss!17113 (singletonSeq!1648 (h!23470 (t!149932 tokens!457))))))))))

(assert (= (and d!493795 res!735050) b!1640479))

(assert (= (and b!1640479 res!735049) b!1640480))

(assert (= (and d!493795 res!735051) b!1640481))

(declare-fun m!1980757 () Bool)

(assert (=> d!493795 m!1980757))

(declare-fun m!1980759 () Bool)

(assert (=> d!493795 m!1980759))

(assert (=> d!493795 m!1980757))

(declare-fun m!1980761 () Bool)

(assert (=> d!493795 m!1980761))

(assert (=> d!493795 m!1979815))

(declare-fun m!1980763 () Bool)

(assert (=> d!493795 m!1980763))

(declare-fun m!1980765 () Bool)

(assert (=> d!493795 m!1980765))

(assert (=> d!493795 m!1980761))

(declare-fun m!1980767 () Bool)

(assert (=> d!493795 m!1980767))

(assert (=> d!493795 m!1980757))

(declare-fun m!1980769 () Bool)

(assert (=> b!1640479 m!1980769))

(declare-fun m!1980771 () Bool)

(assert (=> b!1640480 m!1980771))

(assert (=> b!1640481 m!1980757))

(assert (=> b!1640481 m!1980757))

(assert (=> b!1640481 m!1980761))

(assert (=> b!1640481 m!1980761))

(assert (=> b!1640481 m!1980767))

(declare-fun m!1980773 () Bool)

(assert (=> b!1640481 m!1980773))

(assert (=> b!1639921 d!493795))

(declare-fun d!493797 () Bool)

(assert (=> d!493797 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 tokens!457)))))

(declare-fun lt!602813 () Unit!29667)

(assert (=> d!493797 (= lt!602813 (choose!9842 thiss!17113 rules!1846 tokens!457 (h!23470 (t!149932 tokens!457))))))

(assert (=> d!493797 (not (isEmpty!11095 rules!1846))))

(assert (=> d!493797 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 thiss!17113 rules!1846 tokens!457 (h!23470 (t!149932 tokens!457))) lt!602813)))

(declare-fun bs!395631 () Bool)

(assert (= bs!395631 d!493797))

(assert (=> bs!395631 m!1979923))

(declare-fun m!1980775 () Bool)

(assert (=> bs!395631 m!1980775))

(assert (=> bs!395631 m!1979815))

(assert (=> b!1639921 d!493797))

(declare-fun b!1640484 () Bool)

(declare-fun res!735053 () Bool)

(declare-fun e!1052065 () Bool)

(assert (=> b!1640484 (=> (not res!735053) (not e!1052065))))

(declare-fun lt!602814 () List!18138)

(assert (=> b!1640484 (= res!735053 (= (size!14387 lt!602814) (+ (size!14387 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457))))) (size!14387 (list!7130 lt!602392)))))))

(declare-fun b!1640485 () Bool)

(assert (=> b!1640485 (= e!1052065 (or (not (= (list!7130 lt!602392) Nil!18068)) (= lt!602814 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457)))))))))

(declare-fun b!1640483 () Bool)

(declare-fun e!1052066 () List!18138)

(assert (=> b!1640483 (= e!1052066 (Cons!18068 (h!23469 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457))))) (++!4852 (t!149931 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457))))) (list!7130 lt!602392))))))

(declare-fun b!1640482 () Bool)

(assert (=> b!1640482 (= e!1052066 (list!7130 lt!602392))))

(declare-fun d!493799 () Bool)

(assert (=> d!493799 e!1052065))

(declare-fun res!735052 () Bool)

(assert (=> d!493799 (=> (not res!735052) (not e!1052065))))

(assert (=> d!493799 (= res!735052 (= (content!2499 lt!602814) ((_ map or) (content!2499 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457))))) (content!2499 (list!7130 lt!602392)))))))

(assert (=> d!493799 (= lt!602814 e!1052066)))

(declare-fun c!266825 () Bool)

(assert (=> d!493799 (= c!266825 ((_ is Nil!18068) (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457))))))))

(assert (=> d!493799 (= (++!4852 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) (list!7130 lt!602392)) lt!602814)))

(assert (= (and d!493799 c!266825) b!1640482))

(assert (= (and d!493799 (not c!266825)) b!1640483))

(assert (= (and d!493799 res!735052) b!1640484))

(assert (= (and b!1640484 res!735053) b!1640485))

(declare-fun m!1980777 () Bool)

(assert (=> b!1640484 m!1980777))

(declare-fun m!1980779 () Bool)

(assert (=> b!1640484 m!1980779))

(assert (=> b!1640484 m!1979803))

(assert (=> b!1640484 m!1979987))

(assert (=> b!1640483 m!1979803))

(declare-fun m!1980781 () Bool)

(assert (=> b!1640483 m!1980781))

(declare-fun m!1980783 () Bool)

(assert (=> d!493799 m!1980783))

(assert (=> d!493799 m!1980393))

(assert (=> d!493799 m!1979803))

(assert (=> d!493799 m!1979995))

(assert (=> b!1639984 d!493799))

(declare-fun d!493801 () Bool)

(assert (=> d!493801 (= (list!7130 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))) (list!7134 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))))

(declare-fun bs!395632 () Bool)

(assert (= bs!395632 d!493801))

(declare-fun m!1980785 () Bool)

(assert (=> bs!395632 m!1980785))

(assert (=> b!1639930 d!493801))

(declare-fun b!1640489 () Bool)

(declare-fun e!1052068 () List!18138)

(assert (=> b!1640489 (= e!1052068 (++!4852 (list!7134 (left!14484 (c!266707 lt!602394))) (list!7134 (right!14814 (c!266707 lt!602394)))))))

(declare-fun d!493803 () Bool)

(declare-fun c!266826 () Bool)

(assert (=> d!493803 (= c!266826 ((_ is Empty!6018) (c!266707 lt!602394)))))

(declare-fun e!1052067 () List!18138)

(assert (=> d!493803 (= (list!7134 (c!266707 lt!602394)) e!1052067)))

(declare-fun b!1640486 () Bool)

(assert (=> b!1640486 (= e!1052067 Nil!18068)))

(declare-fun b!1640488 () Bool)

(assert (=> b!1640488 (= e!1052068 (list!7138 (xs!8854 (c!266707 lt!602394))))))

(declare-fun b!1640487 () Bool)

(assert (=> b!1640487 (= e!1052067 e!1052068)))

(declare-fun c!266827 () Bool)

(assert (=> b!1640487 (= c!266827 ((_ is Leaf!8831) (c!266707 lt!602394)))))

(assert (= (and d!493803 c!266826) b!1640486))

(assert (= (and d!493803 (not c!266826)) b!1640487))

(assert (= (and b!1640487 c!266827) b!1640488))

(assert (= (and b!1640487 (not c!266827)) b!1640489))

(declare-fun m!1980787 () Bool)

(assert (=> b!1640489 m!1980787))

(declare-fun m!1980789 () Bool)

(assert (=> b!1640489 m!1980789))

(assert (=> b!1640489 m!1980787))

(assert (=> b!1640489 m!1980789))

(declare-fun m!1980791 () Bool)

(assert (=> b!1640489 m!1980791))

(declare-fun m!1980793 () Bool)

(assert (=> b!1640488 m!1980793))

(assert (=> d!493583 d!493803))

(declare-fun d!493805 () Bool)

(declare-fun lt!602817 () Int)

(assert (=> d!493805 (>= lt!602817 0)))

(declare-fun e!1052071 () Int)

(assert (=> d!493805 (= lt!602817 e!1052071)))

(declare-fun c!266830 () Bool)

(assert (=> d!493805 (= c!266830 ((_ is Nil!18068) (originalCharacters!3999 (h!23470 tokens!457))))))

(assert (=> d!493805 (= (size!14387 (originalCharacters!3999 (h!23470 tokens!457))) lt!602817)))

(declare-fun b!1640494 () Bool)

(assert (=> b!1640494 (= e!1052071 0)))

(declare-fun b!1640495 () Bool)

(assert (=> b!1640495 (= e!1052071 (+ 1 (size!14387 (t!149931 (originalCharacters!3999 (h!23470 tokens!457))))))))

(assert (= (and d!493805 c!266830) b!1640494))

(assert (= (and d!493805 (not c!266830)) b!1640495))

(declare-fun m!1980795 () Bool)

(assert (=> b!1640495 m!1980795))

(assert (=> b!1639931 d!493805))

(declare-fun d!493807 () Bool)

(declare-fun res!735058 () Bool)

(declare-fun e!1052076 () Bool)

(assert (=> d!493807 (=> res!735058 e!1052076)))

(assert (=> d!493807 (= res!735058 ((_ is Nil!18069) tokens!457))))

(assert (=> d!493807 (= (forall!4116 tokens!457 lambda!67460) e!1052076)))

(declare-fun b!1640500 () Bool)

(declare-fun e!1052077 () Bool)

(assert (=> b!1640500 (= e!1052076 e!1052077)))

(declare-fun res!735059 () Bool)

(assert (=> b!1640500 (=> (not res!735059) (not e!1052077))))

(declare-fun dynLambda!8054 (Int Token!5936) Bool)

(assert (=> b!1640500 (= res!735059 (dynLambda!8054 lambda!67460 (h!23470 tokens!457)))))

(declare-fun b!1640501 () Bool)

(assert (=> b!1640501 (= e!1052077 (forall!4116 (t!149932 tokens!457) lambda!67460))))

(assert (= (and d!493807 (not res!735058)) b!1640500))

(assert (= (and b!1640500 res!735059) b!1640501))

(declare-fun b_lambda!51539 () Bool)

(assert (=> (not b_lambda!51539) (not b!1640500)))

(declare-fun m!1980797 () Bool)

(assert (=> b!1640500 m!1980797))

(declare-fun m!1980799 () Bool)

(assert (=> b!1640501 m!1980799))

(assert (=> d!493595 d!493807))

(assert (=> d!493595 d!493593))

(declare-fun d!493809 () Bool)

(assert (=> d!493809 (= (list!7130 lt!602461) (list!7134 (c!266707 lt!602461)))))

(declare-fun bs!395633 () Bool)

(assert (= bs!395633 d!493809))

(declare-fun m!1980801 () Bool)

(assert (=> bs!395633 m!1980801))

(assert (=> d!493579 d!493809))

(declare-fun d!493811 () Bool)

(declare-fun c!266831 () Bool)

(assert (=> d!493811 (= c!266831 ((_ is Cons!18069) (list!7133 (seqFromList!2118 (t!149932 tokens!457)))))))

(declare-fun e!1052078 () List!18138)

(assert (=> d!493811 (= (printList!929 thiss!17113 (list!7133 (seqFromList!2118 (t!149932 tokens!457)))) e!1052078)))

(declare-fun b!1640502 () Bool)

(assert (=> b!1640502 (= e!1052078 (++!4852 (list!7130 (charsOf!1834 (h!23470 (list!7133 (seqFromList!2118 (t!149932 tokens!457)))))) (printList!929 thiss!17113 (t!149932 (list!7133 (seqFromList!2118 (t!149932 tokens!457)))))))))

(declare-fun b!1640503 () Bool)

(assert (=> b!1640503 (= e!1052078 Nil!18068)))

(assert (= (and d!493811 c!266831) b!1640502))

(assert (= (and d!493811 (not c!266831)) b!1640503))

(declare-fun m!1980803 () Bool)

(assert (=> b!1640502 m!1980803))

(assert (=> b!1640502 m!1980803))

(declare-fun m!1980805 () Bool)

(assert (=> b!1640502 m!1980805))

(declare-fun m!1980807 () Bool)

(assert (=> b!1640502 m!1980807))

(assert (=> b!1640502 m!1980805))

(assert (=> b!1640502 m!1980807))

(declare-fun m!1980809 () Bool)

(assert (=> b!1640502 m!1980809))

(assert (=> d!493579 d!493811))

(declare-fun d!493813 () Bool)

(assert (=> d!493813 (= (list!7133 (seqFromList!2118 (t!149932 tokens!457))) (list!7136 (c!266709 (seqFromList!2118 (t!149932 tokens!457)))))))

(declare-fun bs!395634 () Bool)

(assert (= bs!395634 d!493813))

(declare-fun m!1980811 () Bool)

(assert (=> bs!395634 m!1980811))

(assert (=> d!493579 d!493813))

(declare-fun d!493815 () Bool)

(declare-fun lt!602822 () BalanceConc!11980)

(assert (=> d!493815 (= (list!7130 lt!602822) (printListTailRec!374 thiss!17113 (dropList!645 (seqFromList!2118 (t!149932 tokens!457)) 0) (list!7130 (BalanceConc!11981 Empty!6018))))))

(declare-fun e!1052080 () BalanceConc!11980)

(assert (=> d!493815 (= lt!602822 e!1052080)))

(declare-fun c!266832 () Bool)

(assert (=> d!493815 (= c!266832 (>= 0 (size!14388 (seqFromList!2118 (t!149932 tokens!457)))))))

(declare-fun e!1052079 () Bool)

(assert (=> d!493815 e!1052079))

(declare-fun res!735060 () Bool)

(assert (=> d!493815 (=> (not res!735060) (not e!1052079))))

(assert (=> d!493815 (= res!735060 (>= 0 0))))

(assert (=> d!493815 (= (printTailRec!867 thiss!17113 (seqFromList!2118 (t!149932 tokens!457)) 0 (BalanceConc!11981 Empty!6018)) lt!602822)))

(declare-fun b!1640504 () Bool)

(assert (=> b!1640504 (= e!1052079 (<= 0 (size!14388 (seqFromList!2118 (t!149932 tokens!457)))))))

(declare-fun b!1640505 () Bool)

(assert (=> b!1640505 (= e!1052080 (BalanceConc!11981 Empty!6018))))

(declare-fun b!1640506 () Bool)

(assert (=> b!1640506 (= e!1052080 (printTailRec!867 thiss!17113 (seqFromList!2118 (t!149932 tokens!457)) (+ 0 1) (++!4856 (BalanceConc!11981 Empty!6018) (charsOf!1834 (apply!4701 (seqFromList!2118 (t!149932 tokens!457)) 0)))))))

(declare-fun lt!602820 () List!18139)

(assert (=> b!1640506 (= lt!602820 (list!7133 (seqFromList!2118 (t!149932 tokens!457))))))

(declare-fun lt!602823 () Unit!29667)

(assert (=> b!1640506 (= lt!602823 (lemmaDropApply!581 lt!602820 0))))

(assert (=> b!1640506 (= (head!3564 (drop!893 lt!602820 0)) (apply!4702 lt!602820 0))))

(declare-fun lt!602824 () Unit!29667)

(assert (=> b!1640506 (= lt!602824 lt!602823)))

(declare-fun lt!602821 () List!18139)

(assert (=> b!1640506 (= lt!602821 (list!7133 (seqFromList!2118 (t!149932 tokens!457))))))

(declare-fun lt!602818 () Unit!29667)

(assert (=> b!1640506 (= lt!602818 (lemmaDropTail!561 lt!602821 0))))

(assert (=> b!1640506 (= (tail!2403 (drop!893 lt!602821 0)) (drop!893 lt!602821 (+ 0 1)))))

(declare-fun lt!602819 () Unit!29667)

(assert (=> b!1640506 (= lt!602819 lt!602818)))

(assert (= (and d!493815 res!735060) b!1640504))

(assert (= (and d!493815 c!266832) b!1640505))

(assert (= (and d!493815 (not c!266832)) b!1640506))

(declare-fun m!1980813 () Bool)

(assert (=> d!493815 m!1980813))

(assert (=> d!493815 m!1980227))

(declare-fun m!1980815 () Bool)

(assert (=> d!493815 m!1980815))

(declare-fun m!1980817 () Bool)

(assert (=> d!493815 m!1980817))

(assert (=> d!493815 m!1979809))

(assert (=> d!493815 m!1980813))

(assert (=> d!493815 m!1979809))

(declare-fun m!1980819 () Bool)

(assert (=> d!493815 m!1980819))

(assert (=> d!493815 m!1980227))

(assert (=> b!1640504 m!1979809))

(assert (=> b!1640504 m!1980819))

(declare-fun m!1980821 () Bool)

(assert (=> b!1640506 m!1980821))

(declare-fun m!1980823 () Bool)

(assert (=> b!1640506 m!1980823))

(declare-fun m!1980825 () Bool)

(assert (=> b!1640506 m!1980825))

(declare-fun m!1980827 () Bool)

(assert (=> b!1640506 m!1980827))

(declare-fun m!1980829 () Bool)

(assert (=> b!1640506 m!1980829))

(declare-fun m!1980831 () Bool)

(assert (=> b!1640506 m!1980831))

(declare-fun m!1980833 () Bool)

(assert (=> b!1640506 m!1980833))

(assert (=> b!1640506 m!1979809))

(assert (=> b!1640506 m!1979999))

(assert (=> b!1640506 m!1979809))

(declare-fun m!1980835 () Bool)

(assert (=> b!1640506 m!1980835))

(assert (=> b!1640506 m!1980827))

(assert (=> b!1640506 m!1980831))

(declare-fun m!1980837 () Bool)

(assert (=> b!1640506 m!1980837))

(declare-fun m!1980839 () Bool)

(assert (=> b!1640506 m!1980839))

(assert (=> b!1640506 m!1979809))

(assert (=> b!1640506 m!1980823))

(declare-fun m!1980841 () Bool)

(assert (=> b!1640506 m!1980841))

(declare-fun m!1980843 () Bool)

(assert (=> b!1640506 m!1980843))

(assert (=> b!1640506 m!1980835))

(assert (=> b!1640506 m!1980821))

(assert (=> d!493579 d!493815))

(declare-fun d!493817 () Bool)

(declare-fun res!735061 () Bool)

(declare-fun e!1052081 () Bool)

(assert (=> d!493817 (=> (not res!735061) (not e!1052081))))

(assert (=> d!493817 (= res!735061 (not (isEmpty!11098 (originalCharacters!3999 (h!23470 (t!149932 tokens!457))))))))

(assert (=> d!493817 (= (inv!23410 (h!23470 (t!149932 tokens!457))) e!1052081)))

(declare-fun b!1640507 () Bool)

(declare-fun res!735062 () Bool)

(assert (=> b!1640507 (=> (not res!735062) (not e!1052081))))

(assert (=> b!1640507 (= res!735062 (= (originalCharacters!3999 (h!23470 (t!149932 tokens!457))) (list!7130 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))) (value!100445 (h!23470 (t!149932 tokens!457)))))))))

(declare-fun b!1640508 () Bool)

(assert (=> b!1640508 (= e!1052081 (= (size!14382 (h!23470 (t!149932 tokens!457))) (size!14387 (originalCharacters!3999 (h!23470 (t!149932 tokens!457))))))))

(assert (= (and d!493817 res!735061) b!1640507))

(assert (= (and b!1640507 res!735062) b!1640508))

(declare-fun b_lambda!51541 () Bool)

(assert (=> (not b_lambda!51541) (not b!1640507)))

(assert (=> b!1640507 t!149979))

(declare-fun b_and!116277 () Bool)

(assert (= b_and!116269 (and (=> t!149979 result!113360) b_and!116277)))

(assert (=> b!1640507 t!149981))

(declare-fun b_and!116279 () Bool)

(assert (= b_and!116271 (and (=> t!149981 result!113362) b_and!116279)))

(assert (=> b!1640507 t!149983))

(declare-fun b_and!116281 () Bool)

(assert (= b_and!116273 (and (=> t!149983 result!113364) b_and!116281)))

(assert (=> b!1640507 t!149985))

(declare-fun b_and!116283 () Bool)

(assert (= b_and!116275 (and (=> t!149985 result!113366) b_and!116283)))

(declare-fun m!1980845 () Bool)

(assert (=> d!493817 m!1980845))

(assert (=> b!1640507 m!1980755))

(assert (=> b!1640507 m!1980755))

(declare-fun m!1980847 () Bool)

(assert (=> b!1640507 m!1980847))

(declare-fun m!1980849 () Bool)

(assert (=> b!1640508 m!1980849))

(assert (=> b!1640108 d!493817))

(declare-fun d!493819 () Bool)

(declare-fun e!1052082 () Bool)

(assert (=> d!493819 e!1052082))

(declare-fun res!735063 () Bool)

(assert (=> d!493819 (=> (not res!735063) (not e!1052082))))

(declare-fun lt!602825 () BalanceConc!11982)

(assert (=> d!493819 (= res!735063 (= (list!7133 lt!602825) (t!149932 tokens!457)))))

(assert (=> d!493819 (= lt!602825 (BalanceConc!11983 (fromList!388 (t!149932 tokens!457))))))

(assert (=> d!493819 (= (fromListB!933 (t!149932 tokens!457)) lt!602825)))

(declare-fun b!1640509 () Bool)

(assert (=> b!1640509 (= e!1052082 (isBalanced!1828 (fromList!388 (t!149932 tokens!457))))))

(assert (= (and d!493819 res!735063) b!1640509))

(declare-fun m!1980851 () Bool)

(assert (=> d!493819 m!1980851))

(declare-fun m!1980853 () Bool)

(assert (=> d!493819 m!1980853))

(assert (=> b!1640509 m!1980853))

(assert (=> b!1640509 m!1980853))

(declare-fun m!1980855 () Bool)

(assert (=> b!1640509 m!1980855))

(assert (=> d!493589 d!493819))

(declare-fun d!493821 () Bool)

(assert (=> d!493821 (= (list!7130 lt!602464) (list!7134 (c!266707 lt!602464)))))

(declare-fun bs!395635 () Bool)

(assert (= bs!395635 d!493821))

(declare-fun m!1980857 () Bool)

(assert (=> bs!395635 m!1980857))

(assert (=> d!493585 d!493821))

(declare-fun bs!395636 () Bool)

(declare-fun d!493823 () Bool)

(assert (= bs!395636 (and d!493823 d!493683)))

(declare-fun lambda!67477 () Int)

(assert (=> bs!395636 (= (= (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (= lambda!67477 lambda!67463))))

(assert (=> d!493823 true))

(assert (=> d!493823 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) (dynLambda!8053 order!10713 lambda!67477))))

(assert (=> d!493823 (= (equivClasses!1161 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) (Forall2!517 lambda!67477))))

(declare-fun bs!395637 () Bool)

(assert (= bs!395637 d!493823))

(declare-fun m!1980859 () Bool)

(assert (=> bs!395637 m!1980859))

(assert (=> b!1639955 d!493823))

(declare-fun d!493825 () Bool)

(assert (=> d!493825 true))

(declare-fun lt!602828 () Bool)

(declare-fun rulesValidInductive!1000 (LexerInterface!2814 List!18140) Bool)

(assert (=> d!493825 (= lt!602828 (rulesValidInductive!1000 thiss!17113 rules!1846))))

(declare-fun lambda!67480 () Int)

(declare-fun forall!4118 (List!18140 Int) Bool)

(assert (=> d!493825 (= lt!602828 (forall!4118 rules!1846 lambda!67480))))

(assert (=> d!493825 (= (rulesValid!1148 thiss!17113 rules!1846) lt!602828)))

(declare-fun bs!395638 () Bool)

(assert (= bs!395638 d!493825))

(declare-fun m!1980861 () Bool)

(assert (=> bs!395638 m!1980861))

(declare-fun m!1980863 () Bool)

(assert (=> bs!395638 m!1980863))

(assert (=> d!493565 d!493825))

(declare-fun d!493827 () Bool)

(assert (=> d!493827 true))

(declare-fun lambda!67483 () Int)

(declare-fun order!10719 () Int)

(declare-fun dynLambda!8055 (Int Int) Int)

(assert (=> d!493827 (< (dynLambda!8049 order!10711 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) (dynLambda!8055 order!10719 lambda!67483))))

(assert (=> d!493827 true))

(assert (=> d!493827 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) (dynLambda!8055 order!10719 lambda!67483))))

(declare-fun Forall!646 (Int) Bool)

(assert (=> d!493827 (= (semiInverseModEq!1220 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) (Forall!646 lambda!67483))))

(declare-fun bs!395639 () Bool)

(assert (= bs!395639 d!493827))

(declare-fun m!1980865 () Bool)

(assert (=> bs!395639 m!1980865))

(assert (=> d!493571 d!493827))

(declare-fun d!493829 () Bool)

(declare-fun lt!602829 () Int)

(assert (=> d!493829 (>= lt!602829 0)))

(declare-fun e!1052083 () Int)

(assert (=> d!493829 (= lt!602829 e!1052083)))

(declare-fun c!266833 () Bool)

(assert (=> d!493829 (= c!266833 ((_ is Nil!18068) lt!602460))))

(assert (=> d!493829 (= (size!14387 lt!602460) lt!602829)))

(declare-fun b!1640516 () Bool)

(assert (=> b!1640516 (= e!1052083 0)))

(declare-fun b!1640517 () Bool)

(assert (=> b!1640517 (= e!1052083 (+ 1 (size!14387 (t!149931 lt!602460))))))

(assert (= (and d!493829 c!266833) b!1640516))

(assert (= (and d!493829 (not c!266833)) b!1640517))

(declare-fun m!1980867 () Bool)

(assert (=> b!1640517 m!1980867))

(assert (=> b!1639985 d!493829))

(declare-fun d!493831 () Bool)

(declare-fun lt!602830 () Int)

(assert (=> d!493831 (>= lt!602830 0)))

(declare-fun e!1052084 () Int)

(assert (=> d!493831 (= lt!602830 e!1052084)))

(declare-fun c!266834 () Bool)

(assert (=> d!493831 (= c!266834 ((_ is Nil!18068) (list!7130 (charsOf!1834 (h!23470 tokens!457)))))))

(assert (=> d!493831 (= (size!14387 (list!7130 (charsOf!1834 (h!23470 tokens!457)))) lt!602830)))

(declare-fun b!1640518 () Bool)

(assert (=> b!1640518 (= e!1052084 0)))

(declare-fun b!1640519 () Bool)

(assert (=> b!1640519 (= e!1052084 (+ 1 (size!14387 (t!149931 (list!7130 (charsOf!1834 (h!23470 tokens!457)))))))))

(assert (= (and d!493831 c!266834) b!1640518))

(assert (= (and d!493831 (not c!266834)) b!1640519))

(assert (=> b!1640519 m!1980779))

(assert (=> b!1639985 d!493831))

(declare-fun d!493833 () Bool)

(declare-fun lt!602831 () Int)

(assert (=> d!493833 (>= lt!602831 0)))

(declare-fun e!1052085 () Int)

(assert (=> d!493833 (= lt!602831 e!1052085)))

(declare-fun c!266835 () Bool)

(assert (=> d!493833 (= c!266835 ((_ is Nil!18068) (list!7130 lt!602392)))))

(assert (=> d!493833 (= (size!14387 (list!7130 lt!602392)) lt!602831)))

(declare-fun b!1640520 () Bool)

(assert (=> b!1640520 (= e!1052085 0)))

(declare-fun b!1640521 () Bool)

(assert (=> b!1640521 (= e!1052085 (+ 1 (size!14387 (t!149931 (list!7130 lt!602392)))))))

(assert (= (and d!493833 c!266835) b!1640520))

(assert (= (and d!493833 (not c!266835)) b!1640521))

(declare-fun m!1980869 () Bool)

(assert (=> b!1640521 m!1980869))

(assert (=> b!1639985 d!493833))

(declare-fun d!493835 () Bool)

(declare-fun res!735064 () Bool)

(declare-fun e!1052087 () Bool)

(assert (=> d!493835 (=> res!735064 e!1052087)))

(assert (=> d!493835 (= res!735064 (or (not ((_ is Cons!18069) (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))) (not ((_ is Cons!18069) (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))))))))

(assert (=> d!493835 (= (tokensListTwoByTwoPredicateSeparableList!507 thiss!17113 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))) rules!1846) e!1052087)))

(declare-fun b!1640522 () Bool)

(declare-fun e!1052086 () Bool)

(assert (=> b!1640522 (= e!1052087 e!1052086)))

(declare-fun res!735065 () Bool)

(assert (=> b!1640522 (=> (not res!735065) (not e!1052086))))

(assert (=> b!1640522 (= res!735065 (separableTokensPredicate!756 thiss!17113 (h!23470 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457)))) (h!23470 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))) rules!1846))))

(declare-fun lt!602835 () Unit!29667)

(declare-fun Unit!29679 () Unit!29667)

(assert (=> b!1640522 (= lt!602835 Unit!29679)))

(assert (=> b!1640522 (> (size!14386 (charsOf!1834 (h!23470 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))))) 0)))

(declare-fun lt!602834 () Unit!29667)

(declare-fun Unit!29680 () Unit!29667)

(assert (=> b!1640522 (= lt!602834 Unit!29680)))

(assert (=> b!1640522 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))))))

(declare-fun lt!602833 () Unit!29667)

(declare-fun Unit!29681 () Unit!29667)

(assert (=> b!1640522 (= lt!602833 Unit!29681)))

(assert (=> b!1640522 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457)))))))

(declare-fun lt!602838 () Unit!29667)

(declare-fun lt!602832 () Unit!29667)

(assert (=> b!1640522 (= lt!602838 lt!602832)))

(assert (=> b!1640522 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))))))

(assert (=> b!1640522 (= lt!602832 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 thiss!17113 rules!1846 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))) (h!23470 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457)))))))))

(declare-fun lt!602836 () Unit!29667)

(declare-fun lt!602837 () Unit!29667)

(assert (=> b!1640522 (= lt!602836 lt!602837)))

(assert (=> b!1640522 (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457)))))))

(assert (=> b!1640522 (= lt!602837 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!585 thiss!17113 rules!1846 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))) (h!23470 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))))))

(declare-fun b!1640523 () Bool)

(assert (=> b!1640523 (= e!1052086 (tokensListTwoByTwoPredicateSeparableList!507 thiss!17113 (Cons!18069 (h!23470 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457))))) (t!149932 (t!149932 (Cons!18069 (h!23470 (t!149932 tokens!457)) (t!149932 (t!149932 tokens!457)))))) rules!1846))))

(assert (= (and d!493835 (not res!735064)) b!1640522))

(assert (= (and b!1640522 res!735065) b!1640523))

(declare-fun m!1980871 () Bool)

(assert (=> b!1640522 m!1980871))

(declare-fun m!1980873 () Bool)

(assert (=> b!1640522 m!1980873))

(declare-fun m!1980875 () Bool)

(assert (=> b!1640522 m!1980875))

(declare-fun m!1980877 () Bool)

(assert (=> b!1640522 m!1980877))

(declare-fun m!1980879 () Bool)

(assert (=> b!1640522 m!1980879))

(declare-fun m!1980881 () Bool)

(assert (=> b!1640522 m!1980881))

(assert (=> b!1640522 m!1980871))

(declare-fun m!1980883 () Bool)

(assert (=> b!1640522 m!1980883))

(declare-fun m!1980885 () Bool)

(assert (=> b!1640523 m!1980885))

(assert (=> b!1639922 d!493835))

(declare-fun d!493837 () Bool)

(declare-fun isBalanced!1830 (Conc!6018) Bool)

(assert (=> d!493837 (= (inv!23415 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))) (isBalanced!1830 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))))))

(declare-fun bs!395640 () Bool)

(assert (= bs!395640 d!493837))

(declare-fun m!1980887 () Bool)

(assert (=> bs!395640 m!1980887))

(assert (=> tb!93883 d!493837))

(declare-fun bs!395641 () Bool)

(declare-fun d!493839 () Bool)

(assert (= bs!395641 (and d!493839 d!493827)))

(declare-fun lambda!67484 () Int)

(assert (=> bs!395641 (= (and (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) (= (toValue!4616 (transformation!3185 (h!23471 rules!1846))) (toValue!4616 (transformation!3185 (rule!5033 (h!23470 tokens!457)))))) (= lambda!67484 lambda!67483))))

(assert (=> d!493839 true))

(assert (=> d!493839 (< (dynLambda!8049 order!10711 (toChars!4475 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8055 order!10719 lambda!67484))))

(assert (=> d!493839 true))

(assert (=> d!493839 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (dynLambda!8055 order!10719 lambda!67484))))

(assert (=> d!493839 (= (semiInverseModEq!1220 (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toValue!4616 (transformation!3185 (h!23471 rules!1846)))) (Forall!646 lambda!67484))))

(declare-fun bs!395642 () Bool)

(assert (= bs!395642 d!493839))

(declare-fun m!1980889 () Bool)

(assert (=> bs!395642 m!1980889))

(assert (=> d!493561 d!493839))

(declare-fun b!1640526 () Bool)

(declare-fun e!1052090 () Bool)

(assert (=> b!1640526 (= e!1052090 true)))

(declare-fun b!1640525 () Bool)

(declare-fun e!1052089 () Bool)

(assert (=> b!1640525 (= e!1052089 e!1052090)))

(declare-fun b!1640524 () Bool)

(declare-fun e!1052088 () Bool)

(assert (=> b!1640524 (= e!1052088 e!1052089)))

(assert (=> b!1640068 e!1052088))

(assert (= b!1640525 b!1640526))

(assert (= b!1640524 b!1640525))

(assert (= (and b!1640068 ((_ is Cons!18070) (t!149933 rules!1846))) b!1640524))

(assert (=> b!1640526 (< (dynLambda!8047 order!10707 (toValue!4616 (transformation!3185 (h!23471 (t!149933 rules!1846))))) (dynLambda!8048 order!10709 lambda!67460))))

(assert (=> b!1640526 (< (dynLambda!8049 order!10711 (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846))))) (dynLambda!8048 order!10709 lambda!67460))))

(declare-fun b!1640527 () Bool)

(declare-fun e!1052091 () Bool)

(declare-fun tp!475345 () Bool)

(assert (=> b!1640527 (= e!1052091 (and tp_is_empty!7321 tp!475345))))

(assert (=> b!1640109 (= tp!475254 e!1052091)))

(assert (= (and b!1640109 ((_ is Cons!18068) (originalCharacters!3999 (h!23470 (t!149932 tokens!457))))) b!1640527))

(declare-fun tp!475353 () Bool)

(declare-fun e!1052097 () Bool)

(declare-fun tp!475352 () Bool)

(declare-fun b!1640536 () Bool)

(assert (=> b!1640536 (= e!1052097 (and (inv!23414 (left!14484 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))))) tp!475353 (inv!23414 (right!14814 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))))) tp!475352))))

(declare-fun b!1640538 () Bool)

(declare-fun e!1052096 () Bool)

(declare-fun tp!475354 () Bool)

(assert (=> b!1640538 (= e!1052096 tp!475354)))

(declare-fun b!1640537 () Bool)

(declare-fun inv!23421 (IArray!12041) Bool)

(assert (=> b!1640537 (= e!1052097 (and (inv!23421 (xs!8854 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))))) e!1052096))))

(assert (=> b!1639936 (= tp!475162 (and (inv!23414 (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457))))) e!1052097))))

(assert (= (and b!1639936 ((_ is Node!6018) (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))))) b!1640536))

(assert (= b!1640537 b!1640538))

(assert (= (and b!1639936 ((_ is Leaf!8831) (c!266707 (dynLambda!8046 (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (value!100445 (h!23470 tokens!457)))))) b!1640537))

(declare-fun m!1980891 () Bool)

(assert (=> b!1640536 m!1980891))

(declare-fun m!1980893 () Bool)

(assert (=> b!1640536 m!1980893))

(declare-fun m!1980895 () Bool)

(assert (=> b!1640537 m!1980895))

(assert (=> b!1639936 m!1979933))

(declare-fun b!1640539 () Bool)

(declare-fun e!1052098 () Bool)

(declare-fun tp!475355 () Bool)

(assert (=> b!1640539 (= e!1052098 (and tp_is_empty!7321 tp!475355))))

(assert (=> b!1640116 (= tp!475257 e!1052098)))

(assert (= (and b!1640116 ((_ is Cons!18068) (t!149931 (originalCharacters!3999 (h!23470 tokens!457))))) b!1640539))

(declare-fun e!1052099 () Bool)

(assert (=> b!1640110 (= tp!475251 e!1052099)))

(declare-fun b!1640543 () Bool)

(declare-fun tp!475357 () Bool)

(declare-fun tp!475356 () Bool)

(assert (=> b!1640543 (= e!1052099 (and tp!475357 tp!475356))))

(declare-fun b!1640542 () Bool)

(declare-fun tp!475359 () Bool)

(assert (=> b!1640542 (= e!1052099 tp!475359)))

(declare-fun b!1640540 () Bool)

(assert (=> b!1640540 (= e!1052099 tp_is_empty!7321)))

(declare-fun b!1640541 () Bool)

(declare-fun tp!475358 () Bool)

(declare-fun tp!475360 () Bool)

(assert (=> b!1640541 (= e!1052099 (and tp!475358 tp!475360))))

(assert (= (and b!1640110 ((_ is ElementMatch!4513) (regex!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) b!1640540))

(assert (= (and b!1640110 ((_ is Concat!7789) (regex!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) b!1640541))

(assert (= (and b!1640110 ((_ is Star!4513) (regex!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) b!1640542))

(assert (= (and b!1640110 ((_ is Union!4513) (regex!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) b!1640543))

(declare-fun e!1052100 () Bool)

(assert (=> b!1640095 (= tp!475237 e!1052100)))

(declare-fun b!1640547 () Bool)

(declare-fun tp!475362 () Bool)

(declare-fun tp!475361 () Bool)

(assert (=> b!1640547 (= e!1052100 (and tp!475362 tp!475361))))

(declare-fun b!1640546 () Bool)

(declare-fun tp!475364 () Bool)

(assert (=> b!1640546 (= e!1052100 tp!475364)))

(declare-fun b!1640544 () Bool)

(assert (=> b!1640544 (= e!1052100 tp_is_empty!7321)))

(declare-fun b!1640545 () Bool)

(declare-fun tp!475363 () Bool)

(declare-fun tp!475365 () Bool)

(assert (=> b!1640545 (= e!1052100 (and tp!475363 tp!475365))))

(assert (= (and b!1640095 ((_ is ElementMatch!4513) (regOne!9538 (regex!3185 (h!23471 rules!1846))))) b!1640544))

(assert (= (and b!1640095 ((_ is Concat!7789) (regOne!9538 (regex!3185 (h!23471 rules!1846))))) b!1640545))

(assert (= (and b!1640095 ((_ is Star!4513) (regOne!9538 (regex!3185 (h!23471 rules!1846))))) b!1640546))

(assert (= (and b!1640095 ((_ is Union!4513) (regOne!9538 (regex!3185 (h!23471 rules!1846))))) b!1640547))

(declare-fun e!1052101 () Bool)

(assert (=> b!1640095 (= tp!475239 e!1052101)))

(declare-fun b!1640551 () Bool)

(declare-fun tp!475367 () Bool)

(declare-fun tp!475366 () Bool)

(assert (=> b!1640551 (= e!1052101 (and tp!475367 tp!475366))))

(declare-fun b!1640550 () Bool)

(declare-fun tp!475369 () Bool)

(assert (=> b!1640550 (= e!1052101 tp!475369)))

(declare-fun b!1640548 () Bool)

(assert (=> b!1640548 (= e!1052101 tp_is_empty!7321)))

(declare-fun b!1640549 () Bool)

(declare-fun tp!475368 () Bool)

(declare-fun tp!475370 () Bool)

(assert (=> b!1640549 (= e!1052101 (and tp!475368 tp!475370))))

(assert (= (and b!1640095 ((_ is ElementMatch!4513) (regTwo!9538 (regex!3185 (h!23471 rules!1846))))) b!1640548))

(assert (= (and b!1640095 ((_ is Concat!7789) (regTwo!9538 (regex!3185 (h!23471 rules!1846))))) b!1640549))

(assert (= (and b!1640095 ((_ is Star!4513) (regTwo!9538 (regex!3185 (h!23471 rules!1846))))) b!1640550))

(assert (= (and b!1640095 ((_ is Union!4513) (regTwo!9538 (regex!3185 (h!23471 rules!1846))))) b!1640551))

(declare-fun e!1052102 () Bool)

(assert (=> b!1640118 (= tp!475260 e!1052102)))

(declare-fun b!1640555 () Bool)

(declare-fun tp!475372 () Bool)

(declare-fun tp!475371 () Bool)

(assert (=> b!1640555 (= e!1052102 (and tp!475372 tp!475371))))

(declare-fun b!1640554 () Bool)

(declare-fun tp!475374 () Bool)

(assert (=> b!1640554 (= e!1052102 tp!475374)))

(declare-fun b!1640552 () Bool)

(assert (=> b!1640552 (= e!1052102 tp_is_empty!7321)))

(declare-fun b!1640553 () Bool)

(declare-fun tp!475373 () Bool)

(declare-fun tp!475375 () Bool)

(assert (=> b!1640553 (= e!1052102 (and tp!475373 tp!475375))))

(assert (= (and b!1640118 ((_ is ElementMatch!4513) (regOne!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640552))

(assert (= (and b!1640118 ((_ is Concat!7789) (regOne!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640553))

(assert (= (and b!1640118 ((_ is Star!4513) (regOne!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640554))

(assert (= (and b!1640118 ((_ is Union!4513) (regOne!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640555))

(declare-fun e!1052103 () Bool)

(assert (=> b!1640118 (= tp!475262 e!1052103)))

(declare-fun b!1640559 () Bool)

(declare-fun tp!475377 () Bool)

(declare-fun tp!475376 () Bool)

(assert (=> b!1640559 (= e!1052103 (and tp!475377 tp!475376))))

(declare-fun b!1640558 () Bool)

(declare-fun tp!475379 () Bool)

(assert (=> b!1640558 (= e!1052103 tp!475379)))

(declare-fun b!1640556 () Bool)

(assert (=> b!1640556 (= e!1052103 tp_is_empty!7321)))

(declare-fun b!1640557 () Bool)

(declare-fun tp!475378 () Bool)

(declare-fun tp!475380 () Bool)

(assert (=> b!1640557 (= e!1052103 (and tp!475378 tp!475380))))

(assert (= (and b!1640118 ((_ is ElementMatch!4513) (regTwo!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640556))

(assert (= (and b!1640118 ((_ is Concat!7789) (regTwo!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640557))

(assert (= (and b!1640118 ((_ is Star!4513) (regTwo!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640558))

(assert (= (and b!1640118 ((_ is Union!4513) (regTwo!9538 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640559))

(declare-fun e!1052104 () Bool)

(assert (=> b!1640119 (= tp!475261 e!1052104)))

(declare-fun b!1640563 () Bool)

(declare-fun tp!475382 () Bool)

(declare-fun tp!475381 () Bool)

(assert (=> b!1640563 (= e!1052104 (and tp!475382 tp!475381))))

(declare-fun b!1640562 () Bool)

(declare-fun tp!475384 () Bool)

(assert (=> b!1640562 (= e!1052104 tp!475384)))

(declare-fun b!1640560 () Bool)

(assert (=> b!1640560 (= e!1052104 tp_is_empty!7321)))

(declare-fun b!1640561 () Bool)

(declare-fun tp!475383 () Bool)

(declare-fun tp!475385 () Bool)

(assert (=> b!1640561 (= e!1052104 (and tp!475383 tp!475385))))

(assert (= (and b!1640119 ((_ is ElementMatch!4513) (reg!4842 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640560))

(assert (= (and b!1640119 ((_ is Concat!7789) (reg!4842 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640561))

(assert (= (and b!1640119 ((_ is Star!4513) (reg!4842 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640562))

(assert (= (and b!1640119 ((_ is Union!4513) (reg!4842 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640563))

(declare-fun b!1640567 () Bool)

(declare-fun b_free!44423 () Bool)

(declare-fun b_next!45127 () Bool)

(assert (=> b!1640567 (= b_free!44423 (not b_next!45127))))

(declare-fun tp!475388 () Bool)

(declare-fun b_and!116285 () Bool)

(assert (=> b!1640567 (= tp!475388 b_and!116285)))

(declare-fun b_free!44425 () Bool)

(declare-fun b_next!45129 () Bool)

(assert (=> b!1640567 (= b_free!44425 (not b_next!45129))))

(declare-fun t!149987 () Bool)

(declare-fun tb!93919 () Bool)

(assert (=> (and b!1640567 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 (t!149932 tokens!457)))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) t!149987) tb!93919))

(declare-fun result!113370 () Bool)

(assert (= result!113370 result!113312))

(assert (=> b!1639930 t!149987))

(assert (=> d!493585 t!149987))

(declare-fun t!149989 () Bool)

(declare-fun tb!93921 () Bool)

(assert (=> (and b!1640567 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 (t!149932 tokens!457)))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) t!149989) tb!93921))

(declare-fun result!113372 () Bool)

(assert (= result!113372 result!113360))

(assert (=> d!493793 t!149989))

(assert (=> b!1640507 t!149989))

(declare-fun tp!475386 () Bool)

(declare-fun b_and!116287 () Bool)

(assert (=> b!1640567 (= tp!475386 (and (=> t!149987 result!113370) (=> t!149989 result!113372) b_and!116287))))

(declare-fun e!1052105 () Bool)

(assert (=> b!1640108 (= tp!475253 e!1052105)))

(declare-fun tp!475387 () Bool)

(declare-fun e!1052110 () Bool)

(declare-fun b!1640566 () Bool)

(declare-fun e!1052109 () Bool)

(assert (=> b!1640566 (= e!1052109 (and tp!475387 (inv!23407 (tag!3465 (rule!5033 (h!23470 (t!149932 (t!149932 tokens!457)))))) (inv!23411 (transformation!3185 (rule!5033 (h!23470 (t!149932 (t!149932 tokens!457)))))) e!1052110))))

(assert (=> b!1640567 (= e!1052110 (and tp!475388 tp!475386))))

(declare-fun tp!475389 () Bool)

(declare-fun e!1052106 () Bool)

(declare-fun b!1640564 () Bool)

(assert (=> b!1640564 (= e!1052105 (and (inv!23410 (h!23470 (t!149932 (t!149932 tokens!457)))) e!1052106 tp!475389))))

(declare-fun b!1640565 () Bool)

(declare-fun tp!475390 () Bool)

(assert (=> b!1640565 (= e!1052106 (and (inv!21 (value!100445 (h!23470 (t!149932 (t!149932 tokens!457))))) e!1052109 tp!475390))))

(assert (= b!1640566 b!1640567))

(assert (= b!1640565 b!1640566))

(assert (= b!1640564 b!1640565))

(assert (= (and b!1640108 ((_ is Cons!18069) (t!149932 (t!149932 tokens!457)))) b!1640564))

(declare-fun m!1980897 () Bool)

(assert (=> b!1640566 m!1980897))

(declare-fun m!1980899 () Bool)

(assert (=> b!1640566 m!1980899))

(declare-fun m!1980901 () Bool)

(assert (=> b!1640564 m!1980901))

(declare-fun m!1980903 () Bool)

(assert (=> b!1640565 m!1980903))

(declare-fun e!1052111 () Bool)

(assert (=> b!1640120 (= tp!475259 e!1052111)))

(declare-fun b!1640571 () Bool)

(declare-fun tp!475392 () Bool)

(declare-fun tp!475391 () Bool)

(assert (=> b!1640571 (= e!1052111 (and tp!475392 tp!475391))))

(declare-fun b!1640570 () Bool)

(declare-fun tp!475394 () Bool)

(assert (=> b!1640570 (= e!1052111 tp!475394)))

(declare-fun b!1640568 () Bool)

(assert (=> b!1640568 (= e!1052111 tp_is_empty!7321)))

(declare-fun b!1640569 () Bool)

(declare-fun tp!475393 () Bool)

(declare-fun tp!475395 () Bool)

(assert (=> b!1640569 (= e!1052111 (and tp!475393 tp!475395))))

(assert (= (and b!1640120 ((_ is ElementMatch!4513) (regOne!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640568))

(assert (= (and b!1640120 ((_ is Concat!7789) (regOne!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640569))

(assert (= (and b!1640120 ((_ is Star!4513) (regOne!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640570))

(assert (= (and b!1640120 ((_ is Union!4513) (regOne!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640571))

(declare-fun e!1052112 () Bool)

(assert (=> b!1640120 (= tp!475258 e!1052112)))

(declare-fun b!1640575 () Bool)

(declare-fun tp!475397 () Bool)

(declare-fun tp!475396 () Bool)

(assert (=> b!1640575 (= e!1052112 (and tp!475397 tp!475396))))

(declare-fun b!1640574 () Bool)

(declare-fun tp!475399 () Bool)

(assert (=> b!1640574 (= e!1052112 tp!475399)))

(declare-fun b!1640572 () Bool)

(assert (=> b!1640572 (= e!1052112 tp_is_empty!7321)))

(declare-fun b!1640573 () Bool)

(declare-fun tp!475398 () Bool)

(declare-fun tp!475400 () Bool)

(assert (=> b!1640573 (= e!1052112 (and tp!475398 tp!475400))))

(assert (= (and b!1640120 ((_ is ElementMatch!4513) (regTwo!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640572))

(assert (= (and b!1640120 ((_ is Concat!7789) (regTwo!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640573))

(assert (= (and b!1640120 ((_ is Star!4513) (regTwo!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640574))

(assert (= (and b!1640120 ((_ is Union!4513) (regTwo!9539 (regex!3185 (rule!5033 (h!23470 tokens!457)))))) b!1640575))

(declare-fun b!1640578 () Bool)

(declare-fun b_free!44427 () Bool)

(declare-fun b_next!45131 () Bool)

(assert (=> b!1640578 (= b_free!44427 (not b_next!45131))))

(declare-fun tp!475403 () Bool)

(declare-fun b_and!116289 () Bool)

(assert (=> b!1640578 (= tp!475403 b_and!116289)))

(declare-fun b_free!44429 () Bool)

(declare-fun b_next!45133 () Bool)

(assert (=> b!1640578 (= b_free!44429 (not b_next!45133))))

(declare-fun tb!93923 () Bool)

(declare-fun t!149991 () Bool)

(assert (=> (and b!1640578 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 (t!149933 rules!1846))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457))))) t!149991) tb!93923))

(declare-fun result!113374 () Bool)

(assert (= result!113374 result!113312))

(assert (=> b!1639930 t!149991))

(assert (=> d!493585 t!149991))

(declare-fun t!149993 () Bool)

(declare-fun tb!93925 () Bool)

(assert (=> (and b!1640578 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 (t!149933 rules!1846))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457)))))) t!149993) tb!93925))

(declare-fun result!113376 () Bool)

(assert (= result!113376 result!113360))

(assert (=> d!493793 t!149993))

(assert (=> b!1640507 t!149993))

(declare-fun tp!475401 () Bool)

(declare-fun b_and!116291 () Bool)

(assert (=> b!1640578 (= tp!475401 (and (=> t!149991 result!113374) (=> t!149993 result!113376) b_and!116291))))

(declare-fun e!1052115 () Bool)

(assert (=> b!1640578 (= e!1052115 (and tp!475403 tp!475401))))

(declare-fun b!1640577 () Bool)

(declare-fun e!1052113 () Bool)

(declare-fun tp!475404 () Bool)

(assert (=> b!1640577 (= e!1052113 (and tp!475404 (inv!23407 (tag!3465 (h!23471 (t!149933 (t!149933 rules!1846))))) (inv!23411 (transformation!3185 (h!23471 (t!149933 (t!149933 rules!1846))))) e!1052115))))

(declare-fun b!1640576 () Bool)

(declare-fun e!1052116 () Bool)

(declare-fun tp!475402 () Bool)

(assert (=> b!1640576 (= e!1052116 (and e!1052113 tp!475402))))

(assert (=> b!1640081 (= tp!475222 e!1052116)))

(assert (= b!1640577 b!1640578))

(assert (= b!1640576 b!1640577))

(assert (= (and b!1640081 ((_ is Cons!18070) (t!149933 (t!149933 rules!1846)))) b!1640576))

(declare-fun m!1980905 () Bool)

(assert (=> b!1640577 m!1980905))

(declare-fun m!1980907 () Bool)

(assert (=> b!1640577 m!1980907))

(declare-fun e!1052117 () Bool)

(assert (=> b!1640082 (= tp!475224 e!1052117)))

(declare-fun b!1640582 () Bool)

(declare-fun tp!475406 () Bool)

(declare-fun tp!475405 () Bool)

(assert (=> b!1640582 (= e!1052117 (and tp!475406 tp!475405))))

(declare-fun b!1640581 () Bool)

(declare-fun tp!475408 () Bool)

(assert (=> b!1640581 (= e!1052117 tp!475408)))

(declare-fun b!1640579 () Bool)

(assert (=> b!1640579 (= e!1052117 tp_is_empty!7321)))

(declare-fun b!1640580 () Bool)

(declare-fun tp!475407 () Bool)

(declare-fun tp!475409 () Bool)

(assert (=> b!1640580 (= e!1052117 (and tp!475407 tp!475409))))

(assert (= (and b!1640082 ((_ is ElementMatch!4513) (regex!3185 (h!23471 (t!149933 rules!1846))))) b!1640579))

(assert (= (and b!1640082 ((_ is Concat!7789) (regex!3185 (h!23471 (t!149933 rules!1846))))) b!1640580))

(assert (= (and b!1640082 ((_ is Star!4513) (regex!3185 (h!23471 (t!149933 rules!1846))))) b!1640581))

(assert (= (and b!1640082 ((_ is Union!4513) (regex!3185 (h!23471 (t!149933 rules!1846))))) b!1640582))

(declare-fun e!1052118 () Bool)

(assert (=> b!1640096 (= tp!475238 e!1052118)))

(declare-fun b!1640586 () Bool)

(declare-fun tp!475411 () Bool)

(declare-fun tp!475410 () Bool)

(assert (=> b!1640586 (= e!1052118 (and tp!475411 tp!475410))))

(declare-fun b!1640585 () Bool)

(declare-fun tp!475413 () Bool)

(assert (=> b!1640585 (= e!1052118 tp!475413)))

(declare-fun b!1640583 () Bool)

(assert (=> b!1640583 (= e!1052118 tp_is_empty!7321)))

(declare-fun b!1640584 () Bool)

(declare-fun tp!475412 () Bool)

(declare-fun tp!475414 () Bool)

(assert (=> b!1640584 (= e!1052118 (and tp!475412 tp!475414))))

(assert (= (and b!1640096 ((_ is ElementMatch!4513) (reg!4842 (regex!3185 (h!23471 rules!1846))))) b!1640583))

(assert (= (and b!1640096 ((_ is Concat!7789) (reg!4842 (regex!3185 (h!23471 rules!1846))))) b!1640584))

(assert (= (and b!1640096 ((_ is Star!4513) (reg!4842 (regex!3185 (h!23471 rules!1846))))) b!1640585))

(assert (= (and b!1640096 ((_ is Union!4513) (reg!4842 (regex!3185 (h!23471 rules!1846))))) b!1640586))

(declare-fun e!1052119 () Bool)

(assert (=> b!1640097 (= tp!475236 e!1052119)))

(declare-fun b!1640590 () Bool)

(declare-fun tp!475416 () Bool)

(declare-fun tp!475415 () Bool)

(assert (=> b!1640590 (= e!1052119 (and tp!475416 tp!475415))))

(declare-fun b!1640589 () Bool)

(declare-fun tp!475418 () Bool)

(assert (=> b!1640589 (= e!1052119 tp!475418)))

(declare-fun b!1640587 () Bool)

(assert (=> b!1640587 (= e!1052119 tp_is_empty!7321)))

(declare-fun b!1640588 () Bool)

(declare-fun tp!475417 () Bool)

(declare-fun tp!475419 () Bool)

(assert (=> b!1640588 (= e!1052119 (and tp!475417 tp!475419))))

(assert (= (and b!1640097 ((_ is ElementMatch!4513) (regOne!9539 (regex!3185 (h!23471 rules!1846))))) b!1640587))

(assert (= (and b!1640097 ((_ is Concat!7789) (regOne!9539 (regex!3185 (h!23471 rules!1846))))) b!1640588))

(assert (= (and b!1640097 ((_ is Star!4513) (regOne!9539 (regex!3185 (h!23471 rules!1846))))) b!1640589))

(assert (= (and b!1640097 ((_ is Union!4513) (regOne!9539 (regex!3185 (h!23471 rules!1846))))) b!1640590))

(declare-fun e!1052120 () Bool)

(assert (=> b!1640097 (= tp!475235 e!1052120)))

(declare-fun b!1640594 () Bool)

(declare-fun tp!475421 () Bool)

(declare-fun tp!475420 () Bool)

(assert (=> b!1640594 (= e!1052120 (and tp!475421 tp!475420))))

(declare-fun b!1640593 () Bool)

(declare-fun tp!475423 () Bool)

(assert (=> b!1640593 (= e!1052120 tp!475423)))

(declare-fun b!1640591 () Bool)

(assert (=> b!1640591 (= e!1052120 tp_is_empty!7321)))

(declare-fun b!1640592 () Bool)

(declare-fun tp!475422 () Bool)

(declare-fun tp!475424 () Bool)

(assert (=> b!1640592 (= e!1052120 (and tp!475422 tp!475424))))

(assert (= (and b!1640097 ((_ is ElementMatch!4513) (regTwo!9539 (regex!3185 (h!23471 rules!1846))))) b!1640591))

(assert (= (and b!1640097 ((_ is Concat!7789) (regTwo!9539 (regex!3185 (h!23471 rules!1846))))) b!1640592))

(assert (= (and b!1640097 ((_ is Star!4513) (regTwo!9539 (regex!3185 (h!23471 rules!1846))))) b!1640593))

(assert (= (and b!1640097 ((_ is Union!4513) (regTwo!9539 (regex!3185 (h!23471 rules!1846))))) b!1640594))

(declare-fun b_lambda!51543 () Bool)

(assert (= b_lambda!51539 (or d!493595 b_lambda!51543)))

(declare-fun bs!395643 () Bool)

(declare-fun d!493841 () Bool)

(assert (= bs!395643 (and d!493841 d!493595)))

(assert (=> bs!395643 (= (dynLambda!8054 lambda!67460 (h!23470 tokens!457)) (rulesProduceIndividualToken!1466 thiss!17113 rules!1846 (h!23470 tokens!457)))))

(assert (=> bs!395643 m!1979915))

(assert (=> b!1640500 d!493841))

(declare-fun b_lambda!51545 () Bool)

(assert (= b_lambda!51537 (or (and b!1640567 b_free!44425 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 (t!149932 tokens!457)))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1640578 b_free!44429 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 (t!149933 rules!1846))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1639849 b_free!44397 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1640111 b_free!44413) (and b!1639846 b_free!44393 (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1640083 b_free!44409 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) b_lambda!51545)))

(declare-fun b_lambda!51547 () Bool)

(assert (= b_lambda!51541 (or (and b!1640567 b_free!44425 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 (t!149932 tokens!457)))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1640578 b_free!44429 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 (t!149933 rules!1846))))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1639849 b_free!44397 (= (toChars!4475 (transformation!3185 (rule!5033 (h!23470 tokens!457)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1640111 b_free!44413) (and b!1639846 b_free!44393 (= (toChars!4475 (transformation!3185 (h!23471 rules!1846))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) (and b!1640083 b_free!44409 (= (toChars!4475 (transformation!3185 (h!23471 (t!149933 rules!1846)))) (toChars!4475 (transformation!3185 (rule!5033 (h!23470 (t!149932 tokens!457))))))) b_lambda!51547)))

(check-sat (not b!1640344) (not d!493741) (not d!493661) (not b!1640524) (not b!1640538) (not b!1640488) (not d!493679) (not d!493609) (not b!1640523) (not d!493819) (not b!1640519) (not b!1640365) (not b!1640479) (not b!1640589) (not d!493793) (not b!1640555) (not b!1640362) (not b!1640283) (not b!1640203) (not b!1640570) (not b!1640554) (not d!493823) (not b!1640489) (not b!1640506) (not b!1640508) (not b!1640553) (not b_next!45097) b_and!116209 (not d!493827) (not b_lambda!51521) (not b!1640561) (not b!1640564) (not b!1640211) (not d!493683) (not b!1640248) b_and!116241 (not b!1640594) (not d!493613) (not d!493821) (not b!1640126) (not b!1640563) (not b!1640361) (not d!493691) b_and!116283 (not b!1640484) b_and!116287 (not b!1640541) (not b!1640588) (not d!493759) (not d!493687) (not b!1640290) (not b!1640580) (not b!1640495) (not b!1640478) (not b_next!45129) (not b!1640258) (not b!1640517) (not d!493825) (not d!493809) (not b_next!45099) (not d!493615) (not b!1640343) (not b!1640586) (not b!1640269) (not d!493813) (not b!1640562) (not d!493795) (not b!1640549) (not b!1640557) (not d!493651) (not b!1640521) b_and!116281 (not b!1640205) (not d!493837) (not b!1640592) (not b!1640352) (not b!1640373) (not d!493817) (not b_next!45111) (not b!1640537) (not b!1640342) (not b!1640246) (not b_lambda!51547) (not d!493659) (not b!1640565) (not b!1640590) (not b!1640585) (not b!1640536) (not b_lambda!51545) (not d!493747) (not b!1640566) (not d!493655) (not b!1640353) (not b!1640582) (not b!1640379) (not b!1640558) (not b!1640550) (not d!493689) (not b_next!45095) b_and!116289 (not b!1640378) (not b!1640543) (not tb!93911) (not b!1640200) (not d!493611) (not d!493739) (not b!1640256) (not b!1640481) (not d!493797) (not b!1640483) (not b_next!45127) (not b!1640504) (not b!1640501) b_and!116285 (not d!493653) (not d!493815) b_and!116277 (not b!1640507) (not b!1640206) (not b!1640559) (not b!1640363) (not b!1640509) (not b!1640584) (not b!1640502) (not b!1639936) b_and!116291 (not b!1640545) (not b!1640527) (not b!1640569) (not d!493763) (not b!1640575) (not d!493649) (not b!1640573) (not d!493801) (not b!1640360) (not d!493681) (not b!1640593) (not bs!395643) (not b_next!45101) (not b_next!45115) (not b!1640546) (not b_next!45131) (not b_next!45113) (not b!1640542) (not b!1640522) b_and!116279 (not b!1640574) (not b!1640351) (not b!1640577) (not b!1640375) (not b!1640571) (not d!493799) (not d!493785) (not b_lambda!51523) (not b!1640285) (not b!1640576) tp_is_empty!7321 (not b_next!45117) (not b_next!45133) (not b!1640547) (not b!1640254) (not b!1640270) b_and!116237 (not b!1640539) (not b!1640551) (not b!1640480) (not d!493783) (not b!1640380) (not d!493839) (not b!1640581) (not b_lambda!51543) (not b!1640282) b_and!116205)
(check-sat b_and!116241 b_and!116283 b_and!116287 (not b_next!45129) (not b_next!45099) b_and!116281 (not b_next!45111) b_and!116291 b_and!116237 b_and!116205 (not b_next!45097) b_and!116209 (not b_next!45095) b_and!116289 (not b_next!45127) b_and!116285 b_and!116277 (not b_next!45101) (not b_next!45115) (not b_next!45131) (not b_next!45113) b_and!116279 (not b_next!45117) (not b_next!45133))
