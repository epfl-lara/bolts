; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179202 () Bool)

(assert start!179202)

(declare-fun b!1811619 () Bool)

(declare-fun b_free!49847 () Bool)

(declare-fun b_next!50551 () Bool)

(assert (=> b!1811619 (= b_free!49847 (not b_next!50551))))

(declare-fun tp!511778 () Bool)

(declare-fun b_and!139771 () Bool)

(assert (=> b!1811619 (= tp!511778 b_and!139771)))

(declare-fun b_free!49849 () Bool)

(declare-fun b_next!50553 () Bool)

(assert (=> b!1811619 (= b_free!49849 (not b_next!50553))))

(declare-fun tp!511774 () Bool)

(declare-fun b_and!139773 () Bool)

(assert (=> b!1811619 (= tp!511774 b_and!139773)))

(declare-fun b!1811604 () Bool)

(declare-fun b_free!49851 () Bool)

(declare-fun b_next!50555 () Bool)

(assert (=> b!1811604 (= b_free!49851 (not b_next!50555))))

(declare-fun tp!511782 () Bool)

(declare-fun b_and!139775 () Bool)

(assert (=> b!1811604 (= tp!511782 b_and!139775)))

(declare-fun b_free!49853 () Bool)

(declare-fun b_next!50557 () Bool)

(assert (=> b!1811604 (= b_free!49853 (not b_next!50557))))

(declare-fun tp!511776 () Bool)

(declare-fun b_and!139777 () Bool)

(assert (=> b!1811604 (= tp!511776 b_and!139777)))

(declare-fun b!1811603 () Bool)

(declare-fun b_free!49855 () Bool)

(declare-fun b_next!50559 () Bool)

(assert (=> b!1811603 (= b_free!49855 (not b_next!50559))))

(declare-fun tp!511772 () Bool)

(declare-fun b_and!139779 () Bool)

(assert (=> b!1811603 (= tp!511772 b_and!139779)))

(declare-fun b_free!49857 () Bool)

(declare-fun b_next!50561 () Bool)

(assert (=> b!1811603 (= b_free!49857 (not b_next!50561))))

(declare-fun tp!511781 () Bool)

(declare-fun b_and!139781 () Bool)

(assert (=> b!1811603 (= tp!511781 b_and!139781)))

(declare-fun b!1811658 () Bool)

(declare-fun e!1157179 () Bool)

(assert (=> b!1811658 (= e!1157179 true)))

(declare-fun b!1811657 () Bool)

(declare-fun e!1157178 () Bool)

(assert (=> b!1811657 (= e!1157178 e!1157179)))

(declare-fun b!1811656 () Bool)

(declare-fun e!1157177 () Bool)

(assert (=> b!1811656 (= e!1157177 e!1157178)))

(declare-fun b!1811611 () Bool)

(assert (=> b!1811611 e!1157177))

(assert (= b!1811657 b!1811658))

(assert (= b!1811656 b!1811657))

(assert (= b!1811611 b!1811656))

(declare-fun order!12853 () Int)

(declare-fun order!12851 () Int)

(declare-fun lambda!70988 () Int)

(declare-datatypes ((C!9916 0))(
  ( (C!9917 (val!5554 Int)) )
))
(declare-datatypes ((List!19821 0))(
  ( (Nil!19751) (Cons!19751 (h!25152 C!9916) (t!169082 List!19821)) )
))
(declare-datatypes ((Regex!4871 0))(
  ( (ElementMatch!4871 (c!296032 C!9916)) (Concat!8504 (regOne!10254 Regex!4871) (regTwo!10254 Regex!4871)) (EmptyExpr!4871) (Star!4871 (reg!5200 Regex!4871)) (EmptyLang!4871) (Union!4871 (regOne!10255 Regex!4871) (regTwo!10255 Regex!4871)) )
))
(declare-datatypes ((String!22496 0))(
  ( (String!22497 (value!110622 String)) )
))
(declare-datatypes ((List!19822 0))(
  ( (Nil!19752) (Cons!19752 (h!25153 (_ BitVec 16)) (t!169083 List!19822)) )
))
(declare-datatypes ((TokenValue!3633 0))(
  ( (FloatLiteralValue!7266 (text!25876 List!19822)) (TokenValueExt!3632 (__x!12568 Int)) (Broken!18165 (value!110623 List!19822)) (Object!3702) (End!3633) (Def!3633) (Underscore!3633) (Match!3633) (Else!3633) (Error!3633) (Case!3633) (If!3633) (Extends!3633) (Abstract!3633) (Class!3633) (Val!3633) (DelimiterValue!7266 (del!3693 List!19822)) (KeywordValue!3639 (value!110624 List!19822)) (CommentValue!7266 (value!110625 List!19822)) (WhitespaceValue!7266 (value!110626 List!19822)) (IndentationValue!3633 (value!110627 List!19822)) (String!22498) (Int32!3633) (Broken!18166 (value!110628 List!19822)) (Boolean!3634) (Unit!34320) (OperatorValue!3636 (op!3693 List!19822)) (IdentifierValue!7266 (value!110629 List!19822)) (IdentifierValue!7267 (value!110630 List!19822)) (WhitespaceValue!7267 (value!110631 List!19822)) (True!7266) (False!7266) (Broken!18167 (value!110632 List!19822)) (Broken!18168 (value!110633 List!19822)) (True!7267) (RightBrace!3633) (RightBracket!3633) (Colon!3633) (Null!3633) (Comma!3633) (LeftBracket!3633) (False!7267) (LeftBrace!3633) (ImaginaryLiteralValue!3633 (text!25877 List!19822)) (StringLiteralValue!10899 (value!110634 List!19822)) (EOFValue!3633 (value!110635 List!19822)) (IdentValue!3633 (value!110636 List!19822)) (DelimiterValue!7267 (value!110637 List!19822)) (DedentValue!3633 (value!110638 List!19822)) (NewLineValue!3633 (value!110639 List!19822)) (IntegerValue!10899 (value!110640 (_ BitVec 32)) (text!25878 List!19822)) (IntegerValue!10900 (value!110641 Int) (text!25879 List!19822)) (Times!3633) (Or!3633) (Equal!3633) (Minus!3633) (Broken!18169 (value!110642 List!19822)) (And!3633) (Div!3633) (LessEqual!3633) (Mod!3633) (Concat!8505) (Not!3633) (Plus!3633) (SpaceValue!3633 (value!110643 List!19822)) (IntegerValue!10901 (value!110644 Int) (text!25880 List!19822)) (StringLiteralValue!10900 (text!25881 List!19822)) (FloatLiteralValue!7267 (text!25882 List!19822)) (BytesLiteralValue!3633 (value!110645 List!19822)) (CommentValue!7267 (value!110646 List!19822)) (StringLiteralValue!10901 (value!110647 List!19822)) (ErrorTokenValue!3633 (msg!3694 List!19822)) )
))
(declare-datatypes ((IArray!13147 0))(
  ( (IArray!13148 (innerList!6631 List!19821)) )
))
(declare-datatypes ((Conc!6571 0))(
  ( (Node!6571 (left!15840 Conc!6571) (right!16170 Conc!6571) (csize!13372 Int) (cheight!6782 Int)) (Leaf!9563 (xs!9447 IArray!13147) (csize!13373 Int)) (Empty!6571) )
))
(declare-datatypes ((BalanceConc!13086 0))(
  ( (BalanceConc!13087 (c!296033 Conc!6571)) )
))
(declare-datatypes ((TokenValueInjection!6926 0))(
  ( (TokenValueInjection!6927 (toValue!5074 Int) (toChars!4933 Int)) )
))
(declare-datatypes ((Rule!6886 0))(
  ( (Rule!6887 (regex!3543 Regex!4871) (tag!3953 String!22496) (isSeparator!3543 Bool) (transformation!3543 TokenValueInjection!6926)) )
))
(declare-datatypes ((Token!6652 0))(
  ( (Token!6653 (value!110648 TokenValue!3633) (rule!5649 Rule!6886) (size!15698 Int) (originalCharacters!4357 List!19821)) )
))
(declare-datatypes ((tuple2!19342 0))(
  ( (tuple2!19343 (_1!11073 Token!6652) (_2!11073 List!19821)) )
))
(declare-fun lt!702713 () tuple2!19342)

(declare-fun dynLambda!9793 (Int Int) Int)

(declare-fun dynLambda!9794 (Int Int) Int)

(assert (=> b!1811658 (< (dynLambda!9793 order!12851 (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) (dynLambda!9794 order!12853 lambda!70988))))

(declare-fun order!12855 () Int)

(declare-fun dynLambda!9795 (Int Int) Int)

(assert (=> b!1811658 (< (dynLambda!9795 order!12855 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) (dynLambda!9794 order!12853 lambda!70988))))

(declare-fun res!814264 () Bool)

(declare-fun e!1157148 () Bool)

(assert (=> start!179202 (=> (not res!814264) (not e!1157148))))

(declare-datatypes ((LexerInterface!3172 0))(
  ( (LexerInterfaceExt!3169 (__x!12569 Int)) (Lexer!3170) )
))
(declare-fun thiss!24550 () LexerInterface!3172)

(get-info :version)

(assert (=> start!179202 (= res!814264 ((_ is Lexer!3170) thiss!24550))))

(assert (=> start!179202 e!1157148))

(declare-fun e!1157138 () Bool)

(assert (=> start!179202 e!1157138))

(declare-fun e!1157152 () Bool)

(assert (=> start!179202 e!1157152))

(assert (=> start!179202 true))

(declare-fun token!523 () Token!6652)

(declare-fun e!1157142 () Bool)

(declare-fun inv!25736 (Token!6652) Bool)

(assert (=> start!179202 (and (inv!25736 token!523) e!1157142)))

(declare-fun e!1157146 () Bool)

(assert (=> start!179202 e!1157146))

(declare-fun e!1157150 () Bool)

(assert (=> b!1811603 (= e!1157150 (and tp!511772 tp!511781))))

(declare-fun e!1157156 () Bool)

(assert (=> b!1811604 (= e!1157156 (and tp!511782 tp!511776))))

(declare-fun b!1811605 () Bool)

(declare-fun res!814268 () Bool)

(declare-fun e!1157162 () Bool)

(assert (=> b!1811605 (=> res!814268 e!1157162)))

(declare-fun lt!702717 () List!19821)

(declare-fun isPrefix!1783 (List!19821 List!19821) Bool)

(assert (=> b!1811605 (= res!814268 (not (isPrefix!1783 lt!702717 lt!702717)))))

(declare-fun b!1811606 () Bool)

(declare-datatypes ((Unit!34321 0))(
  ( (Unit!34322) )
))
(declare-fun e!1157145 () Unit!34321)

(declare-fun Unit!34323 () Unit!34321)

(assert (=> b!1811606 (= e!1157145 Unit!34323)))

(declare-fun b!1811607 () Bool)

(declare-fun e!1157169 () Bool)

(assert (=> b!1811607 (= e!1157169 e!1157162)))

(declare-fun res!814265 () Bool)

(assert (=> b!1811607 (=> res!814265 e!1157162)))

(declare-fun lt!702739 () Int)

(declare-fun lt!702740 () Int)

(assert (=> b!1811607 (= res!814265 (>= lt!702739 lt!702740))))

(declare-fun lt!702732 () Unit!34321)

(assert (=> b!1811607 (= lt!702732 e!1157145)))

(declare-fun c!296031 () Bool)

(assert (=> b!1811607 (= c!296031 (< lt!702740 lt!702739))))

(declare-datatypes ((List!19823 0))(
  ( (Nil!19753) (Cons!19753 (h!25154 Rule!6886) (t!169084 List!19823)) )
))
(declare-fun rules!3447 () List!19823)

(declare-fun getIndex!208 (List!19823 Rule!6886) Int)

(assert (=> b!1811607 (= lt!702739 (getIndex!208 rules!3447 (rule!5649 (_1!11073 lt!702713))))))

(assert (=> b!1811607 (= lt!702740 (getIndex!208 rules!3447 (rule!5649 token!523)))))

(declare-fun b!1811608 () Bool)

(declare-fun res!814262 () Bool)

(declare-fun e!1157141 () Bool)

(assert (=> b!1811608 (=> (not res!814262) (not e!1157141))))

(declare-fun rule!422 () Rule!6886)

(assert (=> b!1811608 (= res!814262 (= (rule!5649 token!523) rule!422))))

(declare-fun b!1811609 () Bool)

(declare-fun e!1157154 () Bool)

(assert (=> b!1811609 (= e!1157154 e!1157169)))

(declare-fun res!814276 () Bool)

(assert (=> b!1811609 (=> res!814276 e!1157169)))

(assert (=> b!1811609 (= res!814276 (= (rule!5649 (_1!11073 lt!702713)) (rule!5649 token!523)))))

(declare-fun suffix!1421 () List!19821)

(assert (=> b!1811609 (= suffix!1421 (_2!11073 lt!702713))))

(declare-fun lt!702704 () List!19821)

(declare-fun lt!702702 () Unit!34321)

(declare-fun lemmaSamePrefixThenSameSuffix!894 (List!19821 List!19821 List!19821 List!19821 List!19821) Unit!34321)

(assert (=> b!1811609 (= lt!702702 (lemmaSamePrefixThenSameSuffix!894 lt!702717 suffix!1421 lt!702717 (_2!11073 lt!702713) lt!702704))))

(declare-fun lt!702748 () List!19821)

(assert (=> b!1811609 (= lt!702748 lt!702717)))

(declare-fun lt!702745 () Unit!34321)

(declare-fun lemmaIsPrefixSameLengthThenSameList!279 (List!19821 List!19821 List!19821) Unit!34321)

(assert (=> b!1811609 (= lt!702745 (lemmaIsPrefixSameLengthThenSameList!279 lt!702748 lt!702717 lt!702704))))

(declare-fun b!1811610 () Bool)

(declare-fun tp!511771 () Bool)

(declare-fun inv!25731 (String!22496) Bool)

(declare-fun inv!25737 (TokenValueInjection!6926) Bool)

(assert (=> b!1811610 (= e!1157152 (and tp!511771 (inv!25731 (tag!3953 rule!422)) (inv!25737 (transformation!3543 rule!422)) e!1157156))))

(declare-fun e!1157170 () Bool)

(declare-fun e!1157143 () Bool)

(assert (=> b!1811611 (= e!1157170 e!1157143)))

(declare-fun res!814271 () Bool)

(assert (=> b!1811611 (=> res!814271 e!1157143)))

(declare-fun Forall!910 (Int) Bool)

(assert (=> b!1811611 (= res!814271 (not (Forall!910 lambda!70988)))))

(declare-fun lt!702736 () Unit!34321)

(declare-fun lemmaInv!742 (TokenValueInjection!6926) Unit!34321)

(assert (=> b!1811611 (= lt!702736 (lemmaInv!742 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))))))

(declare-fun e!1157140 () Bool)

(declare-fun tp!511777 () Bool)

(declare-fun b!1811612 () Bool)

(declare-fun e!1157167 () Bool)

(assert (=> b!1811612 (= e!1157140 (and tp!511777 (inv!25731 (tag!3953 (h!25154 rules!3447))) (inv!25737 (transformation!3543 (h!25154 rules!3447))) e!1157167))))

(declare-fun b!1811613 () Bool)

(declare-fun e!1157137 () Bool)

(assert (=> b!1811613 (= e!1157141 (not e!1157137))))

(declare-fun res!814263 () Bool)

(assert (=> b!1811613 (=> res!814263 e!1157137)))

(declare-fun matchR!2344 (Regex!4871 List!19821) Bool)

(assert (=> b!1811613 (= res!814263 (not (matchR!2344 (regex!3543 rule!422) lt!702717)))))

(declare-fun ruleValid!1041 (LexerInterface!3172 Rule!6886) Bool)

(assert (=> b!1811613 (ruleValid!1041 thiss!24550 rule!422)))

(declare-fun lt!702703 () Unit!34321)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!564 (LexerInterface!3172 Rule!6886 List!19823) Unit!34321)

(assert (=> b!1811613 (= lt!702703 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!564 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1811614 () Bool)

(declare-fun res!814259 () Bool)

(assert (=> b!1811614 (=> res!814259 e!1157162)))

(declare-fun isEmpty!12498 (List!19821) Bool)

(assert (=> b!1811614 (= res!814259 (isEmpty!12498 lt!702717))))

(declare-fun b!1811615 () Bool)

(declare-fun res!814269 () Bool)

(assert (=> b!1811615 (=> (not res!814269) (not e!1157141))))

(declare-fun lt!702712 () tuple2!19342)

(assert (=> b!1811615 (= res!814269 (isEmpty!12498 (_2!11073 lt!702712)))))

(declare-fun b!1811616 () Bool)

(declare-fun e!1157157 () Unit!34321)

(declare-fun Unit!34324 () Unit!34321)

(assert (=> b!1811616 (= e!1157157 Unit!34324)))

(declare-fun lt!702709 () Unit!34321)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!252 (LexerInterface!3172 List!19823 Rule!6886 List!19821 List!19821 List!19821 Rule!6886) Unit!34321)

(assert (=> b!1811616 (= lt!702709 (lemmaMaxPrefixOutputsMaxPrefix!252 thiss!24550 rules!3447 (rule!5649 (_1!11073 lt!702713)) lt!702748 lt!702704 lt!702717 rule!422))))

(assert (=> b!1811616 false))

(declare-fun b!1811617 () Bool)

(declare-fun Unit!34325 () Unit!34321)

(assert (=> b!1811617 (= e!1157145 Unit!34325)))

(declare-fun lt!702711 () Unit!34321)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!164 (LexerInterface!3172 List!19823 Rule!6886 List!19821 List!19821 Rule!6886) Unit!34321)

(assert (=> b!1811617 (= lt!702711 (lemmaMaxPrefNoSmallerRuleMatches!164 thiss!24550 rules!3447 (rule!5649 (_1!11073 lt!702713)) lt!702748 lt!702704 (rule!5649 token!523)))))

(declare-fun res!814251 () Bool)

(assert (=> b!1811617 (= res!814251 (not (matchR!2344 (regex!3543 (rule!5649 token!523)) lt!702748)))))

(declare-fun e!1157158 () Bool)

(assert (=> b!1811617 (=> (not res!814251) (not e!1157158))))

(assert (=> b!1811617 e!1157158))

(declare-fun b!1811618 () Bool)

(declare-fun res!814255 () Bool)

(assert (=> b!1811618 (=> (not res!814255) (not e!1157148))))

(declare-fun isEmpty!12499 (List!19823) Bool)

(assert (=> b!1811618 (= res!814255 (not (isEmpty!12499 rules!3447)))))

(assert (=> b!1811619 (= e!1157167 (and tp!511778 tp!511774))))

(declare-fun b!1811620 () Bool)

(declare-fun res!814257 () Bool)

(assert (=> b!1811620 (=> res!814257 e!1157162)))

(declare-fun contains!3577 (List!19823 Rule!6886) Bool)

(assert (=> b!1811620 (= res!814257 (not (contains!3577 rules!3447 (rule!5649 (_1!11073 lt!702713)))))))

(declare-fun b!1811621 () Bool)

(declare-fun e!1157161 () Bool)

(assert (=> b!1811621 (= e!1157161 e!1157141)))

(declare-fun res!814273 () Bool)

(assert (=> b!1811621 (=> (not res!814273) (not e!1157141))))

(assert (=> b!1811621 (= res!814273 (= (_1!11073 lt!702712) token!523))))

(declare-datatypes ((Option!4112 0))(
  ( (None!4111) (Some!4111 (v!25630 tuple2!19342)) )
))
(declare-fun lt!702706 () Option!4112)

(declare-fun get!6099 (Option!4112) tuple2!19342)

(assert (=> b!1811621 (= lt!702712 (get!6099 lt!702706))))

(declare-fun b!1811622 () Bool)

(declare-fun e!1157165 () Bool)

(declare-fun e!1157160 () Bool)

(assert (=> b!1811622 (= e!1157165 e!1157160)))

(declare-fun res!814267 () Bool)

(assert (=> b!1811622 (=> res!814267 e!1157160)))

(declare-fun lt!702725 () Int)

(declare-fun lt!702710 () Option!4112)

(declare-fun lt!702715 () TokenValue!3633)

(assert (=> b!1811622 (= res!814267 (not (= lt!702710 (Some!4111 (tuple2!19343 (Token!6653 lt!702715 (rule!5649 (_1!11073 lt!702713)) lt!702725 lt!702748) (_2!11073 lt!702713))))))))

(declare-fun lt!702718 () BalanceConc!13086)

(declare-fun size!15699 (BalanceConc!13086) Int)

(assert (=> b!1811622 (= lt!702725 (size!15699 lt!702718))))

(declare-fun apply!5343 (TokenValueInjection!6926 BalanceConc!13086) TokenValue!3633)

(assert (=> b!1811622 (= lt!702715 (apply!5343 (transformation!3543 (rule!5649 (_1!11073 lt!702713))) lt!702718))))

(declare-fun lt!702722 () Unit!34321)

(declare-fun lemmaCharactersSize!601 (Token!6652) Unit!34321)

(assert (=> b!1811622 (= lt!702722 (lemmaCharactersSize!601 (_1!11073 lt!702713)))))

(declare-fun lt!702707 () Unit!34321)

(declare-fun lemmaEqSameImage!454 (TokenValueInjection!6926 BalanceConc!13086 BalanceConc!13086) Unit!34321)

(declare-fun seqFromList!2512 (List!19821) BalanceConc!13086)

(assert (=> b!1811622 (= lt!702707 (lemmaEqSameImage!454 (transformation!3543 (rule!5649 (_1!11073 lt!702713))) lt!702718 (seqFromList!2512 (originalCharacters!4357 (_1!11073 lt!702713)))))))

(declare-fun b!1811623 () Bool)

(declare-fun e!1157159 () Bool)

(assert (=> b!1811623 (= e!1157159 (matchR!2344 (regex!3543 (rule!5649 token!523)) lt!702717))))

(declare-fun b!1811624 () Bool)

(declare-fun res!814250 () Bool)

(assert (=> b!1811624 (=> res!814250 e!1157170)))

(assert (=> b!1811624 (= res!814250 (not (matchR!2344 (regex!3543 (rule!5649 (_1!11073 lt!702713))) lt!702748)))))

(declare-fun b!1811625 () Bool)

(assert (=> b!1811625 (= e!1157148 e!1157161)))

(declare-fun res!814260 () Bool)

(assert (=> b!1811625 (=> (not res!814260) (not e!1157161))))

(declare-fun isDefined!3453 (Option!4112) Bool)

(assert (=> b!1811625 (= res!814260 (isDefined!3453 lt!702706))))

(declare-fun maxPrefix!1726 (LexerInterface!3172 List!19823 List!19821) Option!4112)

(assert (=> b!1811625 (= lt!702706 (maxPrefix!1726 thiss!24550 rules!3447 lt!702717))))

(declare-fun lt!702728 () BalanceConc!13086)

(declare-fun list!8043 (BalanceConc!13086) List!19821)

(assert (=> b!1811625 (= lt!702717 (list!8043 lt!702728))))

(declare-fun charsOf!2192 (Token!6652) BalanceConc!13086)

(assert (=> b!1811625 (= lt!702728 (charsOf!2192 token!523))))

(declare-fun b!1811626 () Bool)

(declare-fun e!1157164 () Bool)

(declare-fun e!1157147 () Bool)

(assert (=> b!1811626 (= e!1157164 e!1157147)))

(declare-fun res!814249 () Bool)

(assert (=> b!1811626 (=> res!814249 e!1157147)))

(declare-fun lt!702730 () Bool)

(assert (=> b!1811626 (= res!814249 lt!702730)))

(declare-fun lt!702705 () Unit!34321)

(declare-fun e!1157153 () Unit!34321)

(assert (=> b!1811626 (= lt!702705 e!1157153)))

(declare-fun c!296029 () Bool)

(assert (=> b!1811626 (= c!296029 lt!702730)))

(declare-fun lt!702738 () Int)

(assert (=> b!1811626 (= lt!702730 (> lt!702725 lt!702738))))

(assert (=> b!1811626 (= lt!702738 (size!15699 lt!702728))))

(declare-fun lt!702737 () Regex!4871)

(assert (=> b!1811626 (matchR!2344 lt!702737 lt!702717)))

(declare-fun lt!702721 () Unit!34321)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!250 (LexerInterface!3172 List!19823 List!19821 Token!6652 Rule!6886 List!19821) Unit!34321)

(assert (=> b!1811626 (= lt!702721 (lemmaMaxPrefixThenMatchesRulesRegex!250 thiss!24550 rules!3447 lt!702717 token!523 rule!422 Nil!19751))))

(declare-fun b!1811627 () Bool)

(declare-fun e!1157155 () Bool)

(assert (=> b!1811627 (= e!1157155 e!1157170)))

(declare-fun res!814272 () Bool)

(assert (=> b!1811627 (=> res!814272 e!1157170)))

(assert (=> b!1811627 (= res!814272 (not (isPrefix!1783 lt!702748 lt!702704)))))

(declare-fun ++!5373 (List!19821 List!19821) List!19821)

(assert (=> b!1811627 (isPrefix!1783 lt!702748 (++!5373 lt!702748 (_2!11073 lt!702713)))))

(declare-fun lt!702741 () Unit!34321)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1292 (List!19821 List!19821) Unit!34321)

(assert (=> b!1811627 (= lt!702741 (lemmaConcatTwoListThenFirstIsPrefix!1292 lt!702748 (_2!11073 lt!702713)))))

(assert (=> b!1811627 (= lt!702748 (list!8043 lt!702718))))

(assert (=> b!1811627 (= lt!702718 (charsOf!2192 (_1!11073 lt!702713)))))

(declare-fun e!1157149 () Bool)

(assert (=> b!1811627 e!1157149))

(declare-fun res!814252 () Bool)

(assert (=> b!1811627 (=> (not res!814252) (not e!1157149))))

(declare-datatypes ((Option!4113 0))(
  ( (None!4112) (Some!4112 (v!25631 Rule!6886)) )
))
(declare-fun lt!702727 () Option!4113)

(declare-fun isDefined!3454 (Option!4113) Bool)

(assert (=> b!1811627 (= res!814252 (isDefined!3454 lt!702727))))

(declare-fun getRuleFromTag!591 (LexerInterface!3172 List!19823 String!22496) Option!4113)

(assert (=> b!1811627 (= lt!702727 (getRuleFromTag!591 thiss!24550 rules!3447 (tag!3953 (rule!5649 (_1!11073 lt!702713)))))))

(declare-fun lt!702735 () Unit!34321)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!591 (LexerInterface!3172 List!19823 List!19821 Token!6652) Unit!34321)

(assert (=> b!1811627 (= lt!702735 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!591 thiss!24550 rules!3447 lt!702704 (_1!11073 lt!702713)))))

(assert (=> b!1811627 (= lt!702713 (get!6099 lt!702710))))

(declare-fun lt!702708 () Unit!34321)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!694 (LexerInterface!3172 List!19823 List!19821 List!19821) Unit!34321)

(assert (=> b!1811627 (= lt!702708 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!694 thiss!24550 rules!3447 lt!702717 suffix!1421))))

(assert (=> b!1811627 (= lt!702710 (maxPrefix!1726 thiss!24550 rules!3447 lt!702704))))

(assert (=> b!1811627 (isPrefix!1783 lt!702717 lt!702704)))

(declare-fun lt!702716 () Unit!34321)

(assert (=> b!1811627 (= lt!702716 (lemmaConcatTwoListThenFirstIsPrefix!1292 lt!702717 suffix!1421))))

(assert (=> b!1811627 (= lt!702704 (++!5373 lt!702717 suffix!1421))))

(declare-fun b!1811628 () Bool)

(assert (=> b!1811628 (= e!1157160 e!1157164)))

(declare-fun res!814256 () Bool)

(assert (=> b!1811628 (=> res!814256 e!1157164)))

(declare-fun lt!702729 () Option!4112)

(declare-fun lt!702746 () List!19821)

(assert (=> b!1811628 (= res!814256 (or (not (= lt!702746 (_2!11073 lt!702713))) (not (= lt!702729 (Some!4111 (tuple2!19343 (_1!11073 lt!702713) lt!702746))))))))

(assert (=> b!1811628 (= (_2!11073 lt!702713) lt!702746)))

(declare-fun lt!702701 () Unit!34321)

(assert (=> b!1811628 (= lt!702701 (lemmaSamePrefixThenSameSuffix!894 lt!702748 (_2!11073 lt!702713) lt!702748 lt!702746 lt!702704))))

(declare-fun getSuffix!950 (List!19821 List!19821) List!19821)

(assert (=> b!1811628 (= lt!702746 (getSuffix!950 lt!702704 lt!702748))))

(declare-fun lt!702724 () Int)

(declare-fun lt!702747 () TokenValue!3633)

(assert (=> b!1811628 (= lt!702729 (Some!4111 (tuple2!19343 (Token!6653 lt!702747 (rule!5649 (_1!11073 lt!702713)) lt!702724 lt!702748) (_2!11073 lt!702713))))))

(declare-fun maxPrefixOneRule!1095 (LexerInterface!3172 Rule!6886 List!19821) Option!4112)

(assert (=> b!1811628 (= lt!702729 (maxPrefixOneRule!1095 thiss!24550 (rule!5649 (_1!11073 lt!702713)) lt!702704))))

(declare-fun size!15700 (List!19821) Int)

(assert (=> b!1811628 (= lt!702724 (size!15700 lt!702748))))

(assert (=> b!1811628 (= lt!702747 (apply!5343 (transformation!3543 (rule!5649 (_1!11073 lt!702713))) (seqFromList!2512 lt!702748)))))

(declare-fun lt!702742 () Unit!34321)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!473 (LexerInterface!3172 List!19823 List!19821 List!19821 List!19821 Rule!6886) Unit!34321)

(assert (=> b!1811628 (= lt!702742 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!473 thiss!24550 rules!3447 lt!702748 lt!702704 (_2!11073 lt!702713) (rule!5649 (_1!11073 lt!702713))))))

(declare-fun b!1811629 () Bool)

(declare-fun res!814275 () Bool)

(assert (=> b!1811629 (=> res!814275 e!1157137)))

(assert (=> b!1811629 (= res!814275 (isEmpty!12498 suffix!1421))))

(declare-fun b!1811630 () Bool)

(assert (=> b!1811630 (= e!1157158 false)))

(declare-fun b!1811631 () Bool)

(declare-fun e!1157139 () Bool)

(assert (=> b!1811631 (= e!1157149 e!1157139)))

(declare-fun res!814261 () Bool)

(assert (=> b!1811631 (=> (not res!814261) (not e!1157139))))

(declare-fun lt!702734 () Rule!6886)

(assert (=> b!1811631 (= res!814261 (matchR!2344 (regex!3543 lt!702734) (list!8043 (charsOf!2192 (_1!11073 lt!702713)))))))

(declare-fun get!6100 (Option!4113) Rule!6886)

(assert (=> b!1811631 (= lt!702734 (get!6100 lt!702727))))

(declare-fun b!1811632 () Bool)

(declare-fun tp!511775 () Bool)

(assert (=> b!1811632 (= e!1157146 (and e!1157140 tp!511775))))

(declare-fun b!1811633 () Bool)

(declare-fun Unit!34326 () Unit!34321)

(assert (=> b!1811633 (= e!1157157 Unit!34326)))

(declare-fun b!1811634 () Bool)

(declare-fun res!814266 () Bool)

(assert (=> b!1811634 (=> res!814266 e!1157162)))

(assert (=> b!1811634 (= res!814266 (not (contains!3577 rules!3447 (rule!5649 token!523))))))

(declare-fun e!1157144 () Bool)

(declare-fun b!1811635 () Bool)

(declare-fun tp!511779 () Bool)

(assert (=> b!1811635 (= e!1157144 (and tp!511779 (inv!25731 (tag!3953 (rule!5649 token!523))) (inv!25737 (transformation!3543 (rule!5649 token!523))) e!1157150))))

(declare-fun b!1811636 () Bool)

(assert (=> b!1811636 (= e!1157137 e!1157155)))

(declare-fun res!814270 () Bool)

(assert (=> b!1811636 (=> res!814270 e!1157155)))

(declare-fun lt!702733 () List!19821)

(declare-fun prefixMatch!754 (Regex!4871 List!19821) Bool)

(assert (=> b!1811636 (= res!814270 (prefixMatch!754 lt!702737 lt!702733))))

(declare-fun head!4206 (List!19821) C!9916)

(assert (=> b!1811636 (= lt!702733 (++!5373 lt!702717 (Cons!19751 (head!4206 suffix!1421) Nil!19751)))))

(declare-fun rulesRegex!899 (LexerInterface!3172 List!19823) Regex!4871)

(assert (=> b!1811636 (= lt!702737 (rulesRegex!899 thiss!24550 rules!3447))))

(declare-fun b!1811637 () Bool)

(declare-fun tp_is_empty!7985 () Bool)

(declare-fun tp!511780 () Bool)

(assert (=> b!1811637 (= e!1157138 (and tp_is_empty!7985 tp!511780))))

(declare-fun b!1811638 () Bool)

(declare-fun Unit!34327 () Unit!34321)

(assert (=> b!1811638 (= e!1157153 Unit!34327)))

(declare-fun lt!702719 () Unit!34321)

(assert (=> b!1811638 (= lt!702719 (lemmaMaxPrefixThenMatchesRulesRegex!250 thiss!24550 rules!3447 lt!702704 (_1!11073 lt!702713) (rule!5649 (_1!11073 lt!702713)) (_2!11073 lt!702713)))))

(assert (=> b!1811638 (matchR!2344 lt!702737 lt!702748)))

(declare-fun lt!702731 () List!19821)

(assert (=> b!1811638 (= lt!702731 (getSuffix!950 lt!702704 lt!702717))))

(declare-fun lt!702700 () Unit!34321)

(assert (=> b!1811638 (= lt!702700 (lemmaSamePrefixThenSameSuffix!894 lt!702717 suffix!1421 lt!702717 lt!702731 lt!702704))))

(assert (=> b!1811638 (= suffix!1421 lt!702731)))

(declare-fun lt!702744 () Unit!34321)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!319 (List!19821 List!19821) Unit!34321)

(assert (=> b!1811638 (= lt!702744 (lemmaAddHeadSuffixToPrefixStillPrefix!319 lt!702717 lt!702704))))

(assert (=> b!1811638 (isPrefix!1783 (++!5373 lt!702717 (Cons!19751 (head!4206 lt!702731) Nil!19751)) lt!702704)))

(declare-fun lt!702726 () Unit!34321)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!191 (List!19821 List!19821 List!19821) Unit!34321)

(assert (=> b!1811638 (= lt!702726 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!191 lt!702748 lt!702733 lt!702704))))

(assert (=> b!1811638 (isPrefix!1783 lt!702733 lt!702748)))

(declare-fun lt!702723 () Unit!34321)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!182 (Regex!4871 List!19821 List!19821) Unit!34321)

(assert (=> b!1811638 (= lt!702723 (lemmaNotPrefixMatchThenCannotMatchLonger!182 lt!702737 lt!702733 lt!702748))))

(assert (=> b!1811638 false))

(declare-fun b!1811639 () Bool)

(declare-fun tp!511773 () Bool)

(declare-fun inv!21 (TokenValue!3633) Bool)

(assert (=> b!1811639 (= e!1157142 (and (inv!21 (value!110648 token!523)) e!1157144 tp!511773))))

(declare-fun b!1811640 () Bool)

(assert (=> b!1811640 (= e!1157139 (= (rule!5649 (_1!11073 lt!702713)) lt!702734))))

(declare-fun b!1811641 () Bool)

(declare-fun res!814278 () Bool)

(assert (=> b!1811641 (=> (not res!814278) (not e!1157148))))

(assert (=> b!1811641 (= res!814278 (contains!3577 rules!3447 rule!422))))

(declare-fun b!1811642 () Bool)

(assert (=> b!1811642 (= e!1157143 e!1157165)))

(declare-fun res!814258 () Bool)

(assert (=> b!1811642 (=> res!814258 e!1157165)))

(declare-fun dynLambda!9796 (Int TokenValue!3633) BalanceConc!13086)

(declare-fun dynLambda!9797 (Int BalanceConc!13086) TokenValue!3633)

(assert (=> b!1811642 (= res!814258 (not (= (list!8043 (dynLambda!9796 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) (dynLambda!9797 (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) lt!702718))) lt!702748)))))

(declare-fun lt!702714 () Unit!34321)

(declare-fun lemmaSemiInverse!681 (TokenValueInjection!6926 BalanceConc!13086) Unit!34321)

(assert (=> b!1811642 (= lt!702714 (lemmaSemiInverse!681 (transformation!3543 (rule!5649 (_1!11073 lt!702713))) lt!702718))))

(declare-fun b!1811643 () Bool)

(assert (=> b!1811643 (= e!1157162 e!1157159)))

(declare-fun res!814277 () Bool)

(assert (=> b!1811643 (=> res!814277 e!1157159)))

(declare-fun lt!702743 () BalanceConc!13086)

(assert (=> b!1811643 (= res!814277 (not (= lt!702706 (Some!4111 (tuple2!19343 (Token!6653 (apply!5343 (transformation!3543 (rule!5649 token!523)) lt!702743) (rule!5649 token!523) (size!15700 lt!702717) lt!702717) (getSuffix!950 lt!702717 lt!702717))))))))

(declare-fun lt!702699 () Unit!34321)

(assert (=> b!1811643 (= lt!702699 (lemmaSemiInverse!681 (transformation!3543 (rule!5649 token!523)) lt!702743))))

(assert (=> b!1811643 (= lt!702743 (seqFromList!2512 lt!702717))))

(declare-fun b!1811644 () Bool)

(declare-fun Unit!34328 () Unit!34321)

(assert (=> b!1811644 (= e!1157153 Unit!34328)))

(declare-fun b!1811645 () Bool)

(assert (=> b!1811645 (= e!1157147 e!1157154)))

(declare-fun res!814254 () Bool)

(assert (=> b!1811645 (=> res!814254 e!1157154)))

(assert (=> b!1811645 (= res!814254 (not (= lt!702725 lt!702738)))))

(declare-fun lt!702720 () Unit!34321)

(assert (=> b!1811645 (= lt!702720 e!1157157)))

(declare-fun c!296030 () Bool)

(assert (=> b!1811645 (= c!296030 (< lt!702725 lt!702738))))

(declare-fun b!1811646 () Bool)

(declare-fun res!814253 () Bool)

(assert (=> b!1811646 (=> res!814253 e!1157165)))

(assert (=> b!1811646 (= res!814253 (not (= lt!702718 (dynLambda!9796 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) (value!110648 (_1!11073 lt!702713))))))))

(declare-fun b!1811647 () Bool)

(declare-fun res!814274 () Bool)

(assert (=> b!1811647 (=> (not res!814274) (not e!1157148))))

(declare-fun rulesInvariant!2841 (LexerInterface!3172 List!19823) Bool)

(assert (=> b!1811647 (= res!814274 (rulesInvariant!2841 thiss!24550 rules!3447))))

(assert (= (and start!179202 res!814264) b!1811618))

(assert (= (and b!1811618 res!814255) b!1811647))

(assert (= (and b!1811647 res!814274) b!1811641))

(assert (= (and b!1811641 res!814278) b!1811625))

(assert (= (and b!1811625 res!814260) b!1811621))

(assert (= (and b!1811621 res!814273) b!1811615))

(assert (= (and b!1811615 res!814269) b!1811608))

(assert (= (and b!1811608 res!814262) b!1811613))

(assert (= (and b!1811613 (not res!814263)) b!1811629))

(assert (= (and b!1811629 (not res!814275)) b!1811636))

(assert (= (and b!1811636 (not res!814270)) b!1811627))

(assert (= (and b!1811627 res!814252) b!1811631))

(assert (= (and b!1811631 res!814261) b!1811640))

(assert (= (and b!1811627 (not res!814272)) b!1811624))

(assert (= (and b!1811624 (not res!814250)) b!1811611))

(assert (= (and b!1811611 (not res!814271)) b!1811642))

(assert (= (and b!1811642 (not res!814258)) b!1811646))

(assert (= (and b!1811646 (not res!814253)) b!1811622))

(assert (= (and b!1811622 (not res!814267)) b!1811628))

(assert (= (and b!1811628 (not res!814256)) b!1811626))

(assert (= (and b!1811626 c!296029) b!1811638))

(assert (= (and b!1811626 (not c!296029)) b!1811644))

(assert (= (and b!1811626 (not res!814249)) b!1811645))

(assert (= (and b!1811645 c!296030) b!1811616))

(assert (= (and b!1811645 (not c!296030)) b!1811633))

(assert (= (and b!1811645 (not res!814254)) b!1811609))

(assert (= (and b!1811609 (not res!814276)) b!1811607))

(assert (= (and b!1811607 c!296031) b!1811617))

(assert (= (and b!1811607 (not c!296031)) b!1811606))

(assert (= (and b!1811617 res!814251) b!1811630))

(assert (= (and b!1811607 (not res!814265)) b!1811605))

(assert (= (and b!1811605 (not res!814268)) b!1811634))

(assert (= (and b!1811634 (not res!814266)) b!1811620))

(assert (= (and b!1811620 (not res!814257)) b!1811614))

(assert (= (and b!1811614 (not res!814259)) b!1811643))

(assert (= (and b!1811643 (not res!814277)) b!1811623))

(assert (= (and start!179202 ((_ is Cons!19751) suffix!1421)) b!1811637))

(assert (= b!1811610 b!1811604))

(assert (= start!179202 b!1811610))

(assert (= b!1811635 b!1811603))

(assert (= b!1811639 b!1811635))

(assert (= start!179202 b!1811639))

(assert (= b!1811612 b!1811619))

(assert (= b!1811632 b!1811612))

(assert (= (and start!179202 ((_ is Cons!19753) rules!3447)) b!1811632))

(declare-fun b_lambda!59715 () Bool)

(assert (=> (not b_lambda!59715) (not b!1811642)))

(declare-fun t!169065 () Bool)

(declare-fun tb!110635 () Bool)

(assert (=> (and b!1811619 (= (toChars!4933 (transformation!3543 (h!25154 rules!3447))) (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169065) tb!110635))

(declare-fun b!1811663 () Bool)

(declare-fun tp!511785 () Bool)

(declare-fun e!1157182 () Bool)

(declare-fun inv!25738 (Conc!6571) Bool)

(assert (=> b!1811663 (= e!1157182 (and (inv!25738 (c!296033 (dynLambda!9796 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) (dynLambda!9797 (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) lt!702718)))) tp!511785))))

(declare-fun result!132846 () Bool)

(declare-fun inv!25739 (BalanceConc!13086) Bool)

(assert (=> tb!110635 (= result!132846 (and (inv!25739 (dynLambda!9796 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) (dynLambda!9797 (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) lt!702718))) e!1157182))))

(assert (= tb!110635 b!1811663))

(declare-fun m!2240355 () Bool)

(assert (=> b!1811663 m!2240355))

(declare-fun m!2240357 () Bool)

(assert (=> tb!110635 m!2240357))

(assert (=> b!1811642 t!169065))

(declare-fun b_and!139783 () Bool)

(assert (= b_and!139773 (and (=> t!169065 result!132846) b_and!139783)))

(declare-fun tb!110637 () Bool)

(declare-fun t!169067 () Bool)

(assert (=> (and b!1811604 (= (toChars!4933 (transformation!3543 rule!422)) (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169067) tb!110637))

(declare-fun result!132850 () Bool)

(assert (= result!132850 result!132846))

(assert (=> b!1811642 t!169067))

(declare-fun b_and!139785 () Bool)

(assert (= b_and!139777 (and (=> t!169067 result!132850) b_and!139785)))

(declare-fun tb!110639 () Bool)

(declare-fun t!169069 () Bool)

(assert (=> (and b!1811603 (= (toChars!4933 (transformation!3543 (rule!5649 token!523))) (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169069) tb!110639))

(declare-fun result!132852 () Bool)

(assert (= result!132852 result!132846))

(assert (=> b!1811642 t!169069))

(declare-fun b_and!139787 () Bool)

(assert (= b_and!139781 (and (=> t!169069 result!132852) b_and!139787)))

(declare-fun b_lambda!59717 () Bool)

(assert (=> (not b_lambda!59717) (not b!1811642)))

(declare-fun t!169071 () Bool)

(declare-fun tb!110641 () Bool)

(assert (=> (and b!1811619 (= (toValue!5074 (transformation!3543 (h!25154 rules!3447))) (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169071) tb!110641))

(declare-fun result!132854 () Bool)

(assert (=> tb!110641 (= result!132854 (inv!21 (dynLambda!9797 (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) lt!702718)))))

(declare-fun m!2240359 () Bool)

(assert (=> tb!110641 m!2240359))

(assert (=> b!1811642 t!169071))

(declare-fun b_and!139789 () Bool)

(assert (= b_and!139771 (and (=> t!169071 result!132854) b_and!139789)))

(declare-fun t!169073 () Bool)

(declare-fun tb!110643 () Bool)

(assert (=> (and b!1811604 (= (toValue!5074 (transformation!3543 rule!422)) (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169073) tb!110643))

(declare-fun result!132858 () Bool)

(assert (= result!132858 result!132854))

(assert (=> b!1811642 t!169073))

(declare-fun b_and!139791 () Bool)

(assert (= b_and!139775 (and (=> t!169073 result!132858) b_and!139791)))

(declare-fun t!169075 () Bool)

(declare-fun tb!110645 () Bool)

(assert (=> (and b!1811603 (= (toValue!5074 (transformation!3543 (rule!5649 token!523))) (toValue!5074 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169075) tb!110645))

(declare-fun result!132860 () Bool)

(assert (= result!132860 result!132854))

(assert (=> b!1811642 t!169075))

(declare-fun b_and!139793 () Bool)

(assert (= b_and!139779 (and (=> t!169075 result!132860) b_and!139793)))

(declare-fun b_lambda!59719 () Bool)

(assert (=> (not b_lambda!59719) (not b!1811646)))

(declare-fun t!169077 () Bool)

(declare-fun tb!110647 () Bool)

(assert (=> (and b!1811619 (= (toChars!4933 (transformation!3543 (h!25154 rules!3447))) (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169077) tb!110647))

(declare-fun b!1811666 () Bool)

(declare-fun e!1157186 () Bool)

(declare-fun tp!511786 () Bool)

(assert (=> b!1811666 (= e!1157186 (and (inv!25738 (c!296033 (dynLambda!9796 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) (value!110648 (_1!11073 lt!702713))))) tp!511786))))

(declare-fun result!132862 () Bool)

(assert (=> tb!110647 (= result!132862 (and (inv!25739 (dynLambda!9796 (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713)))) (value!110648 (_1!11073 lt!702713)))) e!1157186))))

(assert (= tb!110647 b!1811666))

(declare-fun m!2240361 () Bool)

(assert (=> b!1811666 m!2240361))

(declare-fun m!2240363 () Bool)

(assert (=> tb!110647 m!2240363))

(assert (=> b!1811646 t!169077))

(declare-fun b_and!139795 () Bool)

(assert (= b_and!139783 (and (=> t!169077 result!132862) b_and!139795)))

(declare-fun t!169079 () Bool)

(declare-fun tb!110649 () Bool)

(assert (=> (and b!1811604 (= (toChars!4933 (transformation!3543 rule!422)) (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169079) tb!110649))

(declare-fun result!132864 () Bool)

(assert (= result!132864 result!132862))

(assert (=> b!1811646 t!169079))

(declare-fun b_and!139797 () Bool)

(assert (= b_and!139785 (and (=> t!169079 result!132864) b_and!139797)))

(declare-fun t!169081 () Bool)

(declare-fun tb!110651 () Bool)

(assert (=> (and b!1811603 (= (toChars!4933 (transformation!3543 (rule!5649 token!523))) (toChars!4933 (transformation!3543 (rule!5649 (_1!11073 lt!702713))))) t!169081) tb!110651))

(declare-fun result!132866 () Bool)

(assert (= result!132866 result!132862))

(assert (=> b!1811646 t!169081))

(declare-fun b_and!139799 () Bool)

(assert (= b_and!139787 (and (=> t!169081 result!132866) b_and!139799)))

(declare-fun m!2240365 () Bool)

(assert (=> b!1811631 m!2240365))

(assert (=> b!1811631 m!2240365))

(declare-fun m!2240367 () Bool)

(assert (=> b!1811631 m!2240367))

(assert (=> b!1811631 m!2240367))

(declare-fun m!2240369 () Bool)

(assert (=> b!1811631 m!2240369))

(declare-fun m!2240371 () Bool)

(assert (=> b!1811631 m!2240371))

(declare-fun m!2240373 () Bool)

(assert (=> b!1811620 m!2240373))

(declare-fun m!2240375 () Bool)

(assert (=> b!1811616 m!2240375))

(declare-fun m!2240377 () Bool)

(assert (=> b!1811646 m!2240377))

(declare-fun m!2240379 () Bool)

(assert (=> b!1811624 m!2240379))

(declare-fun m!2240381 () Bool)

(assert (=> b!1811612 m!2240381))

(declare-fun m!2240383 () Bool)

(assert (=> b!1811612 m!2240383))

(declare-fun m!2240385 () Bool)

(assert (=> b!1811614 m!2240385))

(declare-fun m!2240387 () Bool)

(assert (=> b!1811636 m!2240387))

(declare-fun m!2240389 () Bool)

(assert (=> b!1811636 m!2240389))

(declare-fun m!2240391 () Bool)

(assert (=> b!1811636 m!2240391))

(declare-fun m!2240393 () Bool)

(assert (=> b!1811636 m!2240393))

(declare-fun m!2240395 () Bool)

(assert (=> b!1811647 m!2240395))

(declare-fun m!2240397 () Bool)

(assert (=> b!1811611 m!2240397))

(declare-fun m!2240399 () Bool)

(assert (=> b!1811611 m!2240399))

(declare-fun m!2240401 () Bool)

(assert (=> b!1811607 m!2240401))

(declare-fun m!2240403 () Bool)

(assert (=> b!1811607 m!2240403))

(declare-fun m!2240405 () Bool)

(assert (=> b!1811623 m!2240405))

(declare-fun m!2240407 () Bool)

(assert (=> start!179202 m!2240407))

(declare-fun m!2240409 () Bool)

(assert (=> b!1811626 m!2240409))

(declare-fun m!2240411 () Bool)

(assert (=> b!1811626 m!2240411))

(declare-fun m!2240413 () Bool)

(assert (=> b!1811626 m!2240413))

(declare-fun m!2240415 () Bool)

(assert (=> b!1811641 m!2240415))

(declare-fun m!2240417 () Bool)

(assert (=> b!1811638 m!2240417))

(declare-fun m!2240419 () Bool)

(assert (=> b!1811638 m!2240419))

(declare-fun m!2240421 () Bool)

(assert (=> b!1811638 m!2240421))

(declare-fun m!2240423 () Bool)

(assert (=> b!1811638 m!2240423))

(declare-fun m!2240425 () Bool)

(assert (=> b!1811638 m!2240425))

(declare-fun m!2240427 () Bool)

(assert (=> b!1811638 m!2240427))

(declare-fun m!2240429 () Bool)

(assert (=> b!1811638 m!2240429))

(declare-fun m!2240431 () Bool)

(assert (=> b!1811638 m!2240431))

(declare-fun m!2240433 () Bool)

(assert (=> b!1811638 m!2240433))

(declare-fun m!2240435 () Bool)

(assert (=> b!1811638 m!2240435))

(declare-fun m!2240437 () Bool)

(assert (=> b!1811638 m!2240437))

(assert (=> b!1811638 m!2240427))

(declare-fun m!2240439 () Bool)

(assert (=> b!1811643 m!2240439))

(declare-fun m!2240441 () Bool)

(assert (=> b!1811643 m!2240441))

(declare-fun m!2240443 () Bool)

(assert (=> b!1811643 m!2240443))

(declare-fun m!2240445 () Bool)

(assert (=> b!1811643 m!2240445))

(declare-fun m!2240447 () Bool)

(assert (=> b!1811643 m!2240447))

(declare-fun m!2240449 () Bool)

(assert (=> b!1811627 m!2240449))

(declare-fun m!2240451 () Bool)

(assert (=> b!1811627 m!2240451))

(declare-fun m!2240453 () Bool)

(assert (=> b!1811627 m!2240453))

(declare-fun m!2240455 () Bool)

(assert (=> b!1811627 m!2240455))

(declare-fun m!2240457 () Bool)

(assert (=> b!1811627 m!2240457))

(declare-fun m!2240459 () Bool)

(assert (=> b!1811627 m!2240459))

(assert (=> b!1811627 m!2240365))

(declare-fun m!2240461 () Bool)

(assert (=> b!1811627 m!2240461))

(declare-fun m!2240463 () Bool)

(assert (=> b!1811627 m!2240463))

(declare-fun m!2240465 () Bool)

(assert (=> b!1811627 m!2240465))

(declare-fun m!2240467 () Bool)

(assert (=> b!1811627 m!2240467))

(declare-fun m!2240469 () Bool)

(assert (=> b!1811627 m!2240469))

(declare-fun m!2240471 () Bool)

(assert (=> b!1811627 m!2240471))

(assert (=> b!1811627 m!2240459))

(declare-fun m!2240473 () Bool)

(assert (=> b!1811627 m!2240473))

(declare-fun m!2240475 () Bool)

(assert (=> b!1811627 m!2240475))

(declare-fun m!2240477 () Bool)

(assert (=> b!1811621 m!2240477))

(declare-fun m!2240479 () Bool)

(assert (=> b!1811609 m!2240479))

(declare-fun m!2240481 () Bool)

(assert (=> b!1811609 m!2240481))

(declare-fun m!2240483 () Bool)

(assert (=> b!1811639 m!2240483))

(declare-fun m!2240485 () Bool)

(assert (=> b!1811642 m!2240485))

(assert (=> b!1811642 m!2240485))

(declare-fun m!2240487 () Bool)

(assert (=> b!1811642 m!2240487))

(assert (=> b!1811642 m!2240487))

(declare-fun m!2240489 () Bool)

(assert (=> b!1811642 m!2240489))

(declare-fun m!2240491 () Bool)

(assert (=> b!1811642 m!2240491))

(declare-fun m!2240493 () Bool)

(assert (=> b!1811622 m!2240493))

(declare-fun m!2240495 () Bool)

(assert (=> b!1811622 m!2240495))

(declare-fun m!2240497 () Bool)

(assert (=> b!1811622 m!2240497))

(assert (=> b!1811622 m!2240493))

(declare-fun m!2240499 () Bool)

(assert (=> b!1811622 m!2240499))

(declare-fun m!2240501 () Bool)

(assert (=> b!1811622 m!2240501))

(declare-fun m!2240503 () Bool)

(assert (=> b!1811613 m!2240503))

(declare-fun m!2240505 () Bool)

(assert (=> b!1811613 m!2240505))

(declare-fun m!2240507 () Bool)

(assert (=> b!1811613 m!2240507))

(declare-fun m!2240509 () Bool)

(assert (=> b!1811628 m!2240509))

(declare-fun m!2240511 () Bool)

(assert (=> b!1811628 m!2240511))

(declare-fun m!2240513 () Bool)

(assert (=> b!1811628 m!2240513))

(assert (=> b!1811628 m!2240511))

(declare-fun m!2240515 () Bool)

(assert (=> b!1811628 m!2240515))

(declare-fun m!2240517 () Bool)

(assert (=> b!1811628 m!2240517))

(declare-fun m!2240519 () Bool)

(assert (=> b!1811628 m!2240519))

(declare-fun m!2240521 () Bool)

(assert (=> b!1811628 m!2240521))

(declare-fun m!2240523 () Bool)

(assert (=> b!1811610 m!2240523))

(declare-fun m!2240525 () Bool)

(assert (=> b!1811610 m!2240525))

(declare-fun m!2240527 () Bool)

(assert (=> b!1811618 m!2240527))

(declare-fun m!2240529 () Bool)

(assert (=> b!1811635 m!2240529))

(declare-fun m!2240531 () Bool)

(assert (=> b!1811635 m!2240531))

(declare-fun m!2240533 () Bool)

(assert (=> b!1811617 m!2240533))

(declare-fun m!2240535 () Bool)

(assert (=> b!1811617 m!2240535))

(declare-fun m!2240537 () Bool)

(assert (=> b!1811629 m!2240537))

(declare-fun m!2240539 () Bool)

(assert (=> b!1811634 m!2240539))

(declare-fun m!2240541 () Bool)

(assert (=> b!1811625 m!2240541))

(declare-fun m!2240543 () Bool)

(assert (=> b!1811625 m!2240543))

(declare-fun m!2240545 () Bool)

(assert (=> b!1811625 m!2240545))

(declare-fun m!2240547 () Bool)

(assert (=> b!1811625 m!2240547))

(declare-fun m!2240549 () Bool)

(assert (=> b!1811615 m!2240549))

(declare-fun m!2240551 () Bool)

(assert (=> b!1811605 m!2240551))

(check-sat (not tb!110641) (not b!1811618) (not b!1811637) (not b!1811625) (not b!1811610) (not b!1811628) (not b_lambda!59717) tp_is_empty!7985 (not b_lambda!59719) (not b!1811663) (not b_next!50551) (not b!1811622) (not start!179202) (not b!1811624) (not tb!110647) (not b!1811612) (not b!1811614) b_and!139795 (not b!1811666) (not b!1811629) (not tb!110635) (not b!1811615) b_and!139791 (not b!1811627) (not b!1811636) (not b!1811632) (not b!1811647) b_and!139797 (not b!1811617) (not b!1811638) (not b_lambda!59715) b_and!139793 (not b!1811626) (not b!1811611) (not b!1811605) b_and!139799 (not b!1811643) (not b!1811639) (not b!1811641) (not b!1811631) (not b_next!50559) (not b!1811642) (not b!1811623) (not b!1811609) (not b_next!50553) (not b!1811607) (not b!1811634) (not b_next!50557) (not b!1811620) (not b!1811635) b_and!139789 (not b!1811621) (not b!1811613) (not b_next!50555) (not b_next!50561) (not b!1811616))
(check-sat (not b_next!50551) b_and!139795 b_and!139791 b_and!139799 (not b_next!50559) (not b_next!50553) b_and!139797 b_and!139793 (not b_next!50557) b_and!139789 (not b_next!50555) (not b_next!50561))
