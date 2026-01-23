; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181570 () Bool)

(assert start!181570)

(declare-fun b!1829802 () Bool)

(declare-fun b_free!51111 () Bool)

(declare-fun b_next!51815 () Bool)

(assert (=> b!1829802 (= b_free!51111 (not b_next!51815))))

(declare-fun tp!517659 () Bool)

(declare-fun b_and!142341 () Bool)

(assert (=> b!1829802 (= tp!517659 b_and!142341)))

(declare-fun b_free!51113 () Bool)

(declare-fun b_next!51817 () Bool)

(assert (=> b!1829802 (= b_free!51113 (not b_next!51817))))

(declare-fun tp!517663 () Bool)

(declare-fun b_and!142343 () Bool)

(assert (=> b!1829802 (= tp!517663 b_and!142343)))

(declare-fun b!1829789 () Bool)

(declare-fun b_free!51115 () Bool)

(declare-fun b_next!51819 () Bool)

(assert (=> b!1829789 (= b_free!51115 (not b_next!51819))))

(declare-fun tp!517668 () Bool)

(declare-fun b_and!142345 () Bool)

(assert (=> b!1829789 (= tp!517668 b_and!142345)))

(declare-fun b_free!51117 () Bool)

(declare-fun b_next!51821 () Bool)

(assert (=> b!1829789 (= b_free!51117 (not b_next!51821))))

(declare-fun tp!517660 () Bool)

(declare-fun b_and!142347 () Bool)

(assert (=> b!1829789 (= tp!517660 b_and!142347)))

(declare-fun b!1829797 () Bool)

(declare-fun b_free!51119 () Bool)

(declare-fun b_next!51823 () Bool)

(assert (=> b!1829797 (= b_free!51119 (not b_next!51823))))

(declare-fun tp!517661 () Bool)

(declare-fun b_and!142349 () Bool)

(assert (=> b!1829797 (= tp!517661 b_and!142349)))

(declare-fun b_free!51121 () Bool)

(declare-fun b_next!51825 () Bool)

(assert (=> b!1829797 (= b_free!51121 (not b_next!51825))))

(declare-fun tp!517669 () Bool)

(declare-fun b_and!142351 () Bool)

(assert (=> b!1829797 (= tp!517669 b_and!142351)))

(declare-fun b!1829793 () Bool)

(assert (=> b!1829793 true))

(declare-fun b!1829786 () Bool)

(declare-fun e!1169608 () Bool)

(declare-fun e!1169610 () Bool)

(assert (=> b!1829786 (= e!1169608 e!1169610)))

(declare-fun res!822900 () Bool)

(assert (=> b!1829786 (=> (not res!822900) (not e!1169610))))

(declare-datatypes ((C!10100 0))(
  ( (C!10101 (val!5646 Int)) )
))
(declare-datatypes ((List!20187 0))(
  ( (Nil!20117) (Cons!20117 (h!25518 C!10100) (t!170552 List!20187)) )
))
(declare-fun suffix!1667 () List!20187)

(declare-fun lt!710560 () List!20187)

(declare-fun input!3612 () List!20187)

(declare-fun ++!5459 (List!20187 List!20187) List!20187)

(assert (=> b!1829786 (= res!822900 (= input!3612 (++!5459 lt!710560 suffix!1667)))))

(declare-datatypes ((List!20188 0))(
  ( (Nil!20118) (Cons!20118 (h!25519 (_ BitVec 16)) (t!170553 List!20188)) )
))
(declare-datatypes ((TokenValue!3725 0))(
  ( (FloatLiteralValue!7450 (text!26520 List!20188)) (TokenValueExt!3724 (__x!12752 Int)) (Broken!18625 (value!113238 List!20188)) (Object!3794) (End!3725) (Def!3725) (Underscore!3725) (Match!3725) (Else!3725) (Error!3725) (Case!3725) (If!3725) (Extends!3725) (Abstract!3725) (Class!3725) (Val!3725) (DelimiterValue!7450 (del!3785 List!20188)) (KeywordValue!3731 (value!113239 List!20188)) (CommentValue!7450 (value!113240 List!20188)) (WhitespaceValue!7450 (value!113241 List!20188)) (IndentationValue!3725 (value!113242 List!20188)) (String!22956) (Int32!3725) (Broken!18626 (value!113243 List!20188)) (Boolean!3726) (Unit!34784) (OperatorValue!3728 (op!3785 List!20188)) (IdentifierValue!7450 (value!113244 List!20188)) (IdentifierValue!7451 (value!113245 List!20188)) (WhitespaceValue!7451 (value!113246 List!20188)) (True!7450) (False!7450) (Broken!18627 (value!113247 List!20188)) (Broken!18628 (value!113248 List!20188)) (True!7451) (RightBrace!3725) (RightBracket!3725) (Colon!3725) (Null!3725) (Comma!3725) (LeftBracket!3725) (False!7451) (LeftBrace!3725) (ImaginaryLiteralValue!3725 (text!26521 List!20188)) (StringLiteralValue!11175 (value!113249 List!20188)) (EOFValue!3725 (value!113250 List!20188)) (IdentValue!3725 (value!113251 List!20188)) (DelimiterValue!7451 (value!113252 List!20188)) (DedentValue!3725 (value!113253 List!20188)) (NewLineValue!3725 (value!113254 List!20188)) (IntegerValue!11175 (value!113255 (_ BitVec 32)) (text!26522 List!20188)) (IntegerValue!11176 (value!113256 Int) (text!26523 List!20188)) (Times!3725) (Or!3725) (Equal!3725) (Minus!3725) (Broken!18629 (value!113257 List!20188)) (And!3725) (Div!3725) (LessEqual!3725) (Mod!3725) (Concat!8688) (Not!3725) (Plus!3725) (SpaceValue!3725 (value!113258 List!20188)) (IntegerValue!11177 (value!113259 Int) (text!26524 List!20188)) (StringLiteralValue!11176 (text!26525 List!20188)) (FloatLiteralValue!7451 (text!26526 List!20188)) (BytesLiteralValue!3725 (value!113260 List!20188)) (CommentValue!7451 (value!113261 List!20188)) (StringLiteralValue!11177 (value!113262 List!20188)) (ErrorTokenValue!3725 (msg!3786 List!20188)) )
))
(declare-datatypes ((IArray!13339 0))(
  ( (IArray!13340 (innerList!6727 List!20187)) )
))
(declare-datatypes ((Conc!6667 0))(
  ( (Node!6667 (left!16086 Conc!6667) (right!16416 Conc!6667) (csize!13564 Int) (cheight!6878 Int)) (Leaf!9705 (xs!9543 IArray!13339) (csize!13565 Int)) (Empty!6667) )
))
(declare-datatypes ((BalanceConc!13278 0))(
  ( (BalanceConc!13279 (c!298390 Conc!6667)) )
))
(declare-datatypes ((TokenValueInjection!7110 0))(
  ( (TokenValueInjection!7111 (toValue!5178 Int) (toChars!5037 Int)) )
))
(declare-datatypes ((Regex!4963 0))(
  ( (ElementMatch!4963 (c!298391 C!10100)) (Concat!8689 (regOne!10438 Regex!4963) (regTwo!10438 Regex!4963)) (EmptyExpr!4963) (Star!4963 (reg!5292 Regex!4963)) (EmptyLang!4963) (Union!4963 (regOne!10439 Regex!4963) (regTwo!10439 Regex!4963)) )
))
(declare-datatypes ((String!22957 0))(
  ( (String!22958 (value!113263 String)) )
))
(declare-datatypes ((Rule!7070 0))(
  ( (Rule!7071 (regex!3635 Regex!4963) (tag!4049 String!22957) (isSeparator!3635 Bool) (transformation!3635 TokenValueInjection!7110)) )
))
(declare-datatypes ((Token!6824 0))(
  ( (Token!6825 (value!113264 TokenValue!3725) (rule!5803 Rule!7070) (size!15951 Int) (originalCharacters!4443 List!20187)) )
))
(declare-fun token!556 () Token!6824)

(declare-fun list!8175 (BalanceConc!13278) List!20187)

(declare-fun charsOf!2278 (Token!6824) BalanceConc!13278)

(assert (=> b!1829786 (= lt!710560 (list!8175 (charsOf!2278 token!556)))))

(declare-fun b!1829787 () Bool)

(declare-fun e!1169598 () Bool)

(declare-fun e!1169601 () Bool)

(assert (=> b!1829787 (= e!1169598 e!1169601)))

(declare-fun res!822899 () Bool)

(assert (=> b!1829787 (=> res!822899 e!1169601)))

(declare-fun lt!710567 () Regex!4963)

(declare-datatypes ((List!20189 0))(
  ( (Nil!20119) (Cons!20119 (h!25520 Regex!4963) (t!170554 List!20189)) )
))
(declare-fun lt!710558 () List!20189)

(declare-fun generalisedUnion!478 (List!20189) Regex!4963)

(assert (=> b!1829787 (= res!822899 (not (= lt!710567 (generalisedUnion!478 lt!710558))))))

(declare-datatypes ((LexerInterface!3264 0))(
  ( (LexerInterfaceExt!3261 (__x!12753 Int)) (Lexer!3262) )
))
(declare-fun thiss!28068 () LexerInterface!3264)

(declare-datatypes ((List!20190 0))(
  ( (Nil!20120) (Cons!20120 (h!25521 Rule!7070) (t!170555 List!20190)) )
))
(declare-fun rules!4538 () List!20190)

(declare-fun rulesRegex!955 (LexerInterface!3264 List!20190) Regex!4963)

(assert (=> b!1829787 (= lt!710567 (rulesRegex!955 thiss!28068 rules!4538))))

(declare-fun lambda!71857 () Int)

(declare-fun map!4171 (List!20190 Int) List!20189)

(assert (=> b!1829787 (= lt!710558 (map!4171 rules!4538 lambda!71857))))

(declare-datatypes ((Unit!34785 0))(
  ( (Unit!34786) )
))
(declare-fun lt!710563 () Unit!34785)

(declare-fun rule!559 () Rule!7070)

(declare-fun lemma!525 (List!20187 Rule!7070 List!20190 List!20187 LexerInterface!3264 Token!6824 List!20190) Unit!34785)

(assert (=> b!1829787 (= lt!710563 (lemma!525 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1829788 () Bool)

(declare-fun e!1169616 () Bool)

(declare-fun tp_is_empty!8161 () Bool)

(declare-fun tp!517658 () Bool)

(assert (=> b!1829788 (= e!1169616 (and tp_is_empty!8161 tp!517658))))

(declare-fun e!1169617 () Bool)

(assert (=> b!1829789 (= e!1169617 (and tp!517668 tp!517660))))

(declare-fun b!1829790 () Bool)

(declare-fun e!1169618 () Bool)

(declare-fun e!1169605 () Bool)

(assert (=> b!1829790 (= e!1169618 e!1169605)))

(declare-fun res!822895 () Bool)

(assert (=> b!1829790 (=> res!822895 e!1169605)))

(declare-fun lt!710555 () List!20189)

(declare-fun lambda!71858 () Int)

(declare-fun exists!645 (List!20189 Int) Bool)

(assert (=> b!1829790 (= res!822895 (not (exists!645 lt!710555 lambda!71858)))))

(assert (=> b!1829790 (exists!645 lt!710555 lambda!71858)))

(declare-fun lt!710554 () Unit!34785)

(declare-fun lemmaContainsThenExists!51 (List!20189 Regex!4963 Int) Unit!34785)

(assert (=> b!1829790 (= lt!710554 (lemmaContainsThenExists!51 lt!710555 (regex!3635 rule!559) lambda!71858))))

(declare-fun b!1829791 () Bool)

(declare-fun e!1169615 () Bool)

(assert (=> b!1829791 (= e!1169615 e!1169608)))

(declare-fun res!822902 () Bool)

(assert (=> b!1829791 (=> (not res!822902) (not e!1169608))))

(declare-datatypes ((tuple2!19586 0))(
  ( (tuple2!19587 (_1!11195 Token!6824) (_2!11195 List!20187)) )
))
(declare-datatypes ((Option!4215 0))(
  ( (None!4214) (Some!4214 (v!25785 tuple2!19586)) )
))
(declare-fun lt!710562 () Option!4215)

(declare-fun maxPrefix!1812 (LexerInterface!3264 List!20190 List!20187) Option!4215)

(assert (=> b!1829791 (= res!822902 (= (maxPrefix!1812 thiss!28068 rules!4538 input!3612) lt!710562))))

(assert (=> b!1829791 (= lt!710562 (Some!4214 (tuple2!19587 token!556 suffix!1667)))))

(declare-fun b!1829792 () Bool)

(declare-fun res!822903 () Bool)

(assert (=> b!1829792 (=> (not res!822903) (not e!1169615))))

(declare-fun rulesInvariant!2933 (LexerInterface!3264 List!20190) Bool)

(assert (=> b!1829792 (= res!822903 (rulesInvariant!2933 thiss!28068 rules!4538))))

(declare-fun e!1169599 () Bool)

(assert (=> b!1829793 (= e!1169599 e!1169618)))

(declare-fun res!822897 () Bool)

(assert (=> b!1829793 (=> res!822897 e!1169618)))

(declare-fun validRegex!2023 (Regex!4963) Bool)

(assert (=> b!1829793 (= res!822897 (not (validRegex!2023 (regex!3635 rule!559))))))

(declare-fun lt!710559 () Bool)

(assert (=> b!1829793 (= lt!710559 (exists!645 lt!710555 lambda!71858))))

(declare-fun matchR!2426 (Regex!4963 List!20187) Bool)

(assert (=> b!1829793 (= lt!710559 (matchR!2426 lt!710567 lt!710560))))

(declare-fun lt!710561 () Unit!34785)

(declare-fun matchRGenUnionSpec!230 (Regex!4963 List!20189 List!20187) Unit!34785)

(assert (=> b!1829793 (= lt!710561 (matchRGenUnionSpec!230 lt!710567 lt!710555 lt!710560))))

(declare-fun b!1829795 () Bool)

(declare-fun res!822896 () Bool)

(assert (=> b!1829795 (=> (not res!822896) (not e!1169608))))

(assert (=> b!1829795 (= res!822896 (= (rule!5803 token!556) rule!559))))

(declare-fun b!1829796 () Bool)

(declare-fun e!1169597 () Bool)

(declare-fun tp!517664 () Bool)

(assert (=> b!1829796 (= e!1169597 (and tp_is_empty!8161 tp!517664))))

(declare-fun e!1169607 () Bool)

(assert (=> b!1829797 (= e!1169607 (and tp!517661 tp!517669))))

(declare-fun b!1829798 () Bool)

(assert (=> b!1829798 (= e!1169605 lt!710559)))

(declare-fun b!1829799 () Bool)

(declare-fun res!822904 () Bool)

(assert (=> b!1829799 (=> (not res!822904) (not e!1169615))))

(declare-fun isEmpty!12701 (List!20190) Bool)

(assert (=> b!1829799 (= res!822904 (not (isEmpty!12701 rules!4538)))))

(declare-fun b!1829800 () Bool)

(declare-fun tp!517665 () Bool)

(declare-fun e!1169603 () Bool)

(declare-fun e!1169609 () Bool)

(declare-fun inv!26175 (String!22957) Bool)

(declare-fun inv!26178 (TokenValueInjection!7110) Bool)

(assert (=> b!1829800 (= e!1169603 (and tp!517665 (inv!26175 (tag!4049 rule!559)) (inv!26178 (transformation!3635 rule!559)) e!1169609))))

(declare-fun b!1829801 () Bool)

(assert (=> b!1829801 (= e!1169601 e!1169599)))

(declare-fun res!822893 () Bool)

(assert (=> b!1829801 (=> res!822893 e!1169599)))

(declare-fun contains!3708 (List!20189 Regex!4963) Bool)

(assert (=> b!1829801 (= res!822893 (not (contains!3708 lt!710555 (regex!3635 rule!559))))))

(assert (=> b!1829801 (= lt!710555 (map!4171 rules!4538 lambda!71857))))

(declare-fun lt!710564 () Unit!34785)

(declare-fun lemma!526 (List!20187 Rule!7070 List!20190 List!20187 LexerInterface!3264 Token!6824 List!20190) Unit!34785)

(assert (=> b!1829801 (= lt!710564 (lemma!526 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1829802 (= e!1169609 (and tp!517659 tp!517663))))

(declare-fun b!1829803 () Bool)

(declare-fun e!1169614 () Bool)

(declare-fun tp!517662 () Bool)

(assert (=> b!1829803 (= e!1169614 (and tp!517662 (inv!26175 (tag!4049 (rule!5803 token!556))) (inv!26178 (transformation!3635 (rule!5803 token!556))) e!1169617))))

(declare-fun e!1169600 () Bool)

(declare-fun b!1829804 () Bool)

(declare-fun tp!517667 () Bool)

(assert (=> b!1829804 (= e!1169600 (and tp!517667 (inv!26175 (tag!4049 (h!25521 rules!4538))) (inv!26178 (transformation!3635 (h!25521 rules!4538))) e!1169607))))

(declare-fun b!1829805 () Bool)

(declare-fun e!1169596 () Bool)

(declare-fun tp!517670 () Bool)

(declare-fun inv!21 (TokenValue!3725) Bool)

(assert (=> b!1829805 (= e!1169596 (and (inv!21 (value!113264 token!556)) e!1169614 tp!517670))))

(declare-fun b!1829806 () Bool)

(declare-fun res!822901 () Bool)

(assert (=> b!1829806 (=> (not res!822901) (not e!1169615))))

(declare-fun contains!3709 (List!20190 Rule!7070) Bool)

(assert (=> b!1829806 (= res!822901 (contains!3709 rules!4538 rule!559))))

(declare-fun b!1829807 () Bool)

(declare-fun e!1169606 () Bool)

(assert (=> b!1829807 (= e!1169610 (not e!1169606))))

(declare-fun res!822892 () Bool)

(assert (=> b!1829807 (=> res!822892 e!1169606)))

(assert (=> b!1829807 (= res!822892 (not (matchR!2426 (regex!3635 rule!559) lt!710560)))))

(declare-fun ruleValid!1125 (LexerInterface!3264 Rule!7070) Bool)

(assert (=> b!1829807 (ruleValid!1125 thiss!28068 rule!559)))

(declare-fun lt!710568 () Unit!34785)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!644 (LexerInterface!3264 Rule!7070 List!20190) Unit!34785)

(assert (=> b!1829807 (= lt!710568 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!644 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1829808 () Bool)

(assert (=> b!1829808 (= e!1169606 e!1169598)))

(declare-fun res!822894 () Bool)

(assert (=> b!1829808 (=> res!822894 e!1169598)))

(declare-fun lt!710557 () Option!4215)

(assert (=> b!1829808 (= res!822894 (not (= lt!710557 lt!710562)))))

(declare-fun lt!710556 () TokenValue!3725)

(declare-fun lt!710565 () Int)

(assert (=> b!1829808 (= lt!710557 (Some!4214 (tuple2!19587 (Token!6825 lt!710556 rule!559 lt!710565 lt!710560) suffix!1667)))))

(declare-fun maxPrefixOneRule!1173 (LexerInterface!3264 Rule!7070 List!20187) Option!4215)

(assert (=> b!1829808 (= lt!710557 (maxPrefixOneRule!1173 thiss!28068 rule!559 input!3612))))

(declare-fun size!15952 (List!20187) Int)

(assert (=> b!1829808 (= lt!710565 (size!15952 lt!710560))))

(declare-fun apply!5423 (TokenValueInjection!7110 BalanceConc!13278) TokenValue!3725)

(declare-fun seqFromList!2592 (List!20187) BalanceConc!13278)

(assert (=> b!1829808 (= lt!710556 (apply!5423 (transformation!3635 rule!559) (seqFromList!2592 lt!710560)))))

(declare-fun lt!710566 () Unit!34785)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!543 (LexerInterface!3264 List!20190 List!20187 List!20187 List!20187 Rule!7070) Unit!34785)

(assert (=> b!1829808 (= lt!710566 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!543 thiss!28068 rules!4538 lt!710560 input!3612 suffix!1667 rule!559))))

(declare-fun res!822898 () Bool)

(assert (=> start!181570 (=> (not res!822898) (not e!1169615))))

(get-info :version)

(assert (=> start!181570 (= res!822898 ((_ is Lexer!3262) thiss!28068))))

(assert (=> start!181570 e!1169615))

(assert (=> start!181570 e!1169616))

(assert (=> start!181570 true))

(declare-fun e!1169613 () Bool)

(assert (=> start!181570 e!1169613))

(declare-fun inv!26179 (Token!6824) Bool)

(assert (=> start!181570 (and (inv!26179 token!556) e!1169596)))

(assert (=> start!181570 e!1169603))

(assert (=> start!181570 e!1169597))

(declare-fun b!1829794 () Bool)

(declare-fun tp!517666 () Bool)

(assert (=> b!1829794 (= e!1169613 (and e!1169600 tp!517666))))

(assert (= (and start!181570 res!822898) b!1829799))

(assert (= (and b!1829799 res!822904) b!1829792))

(assert (= (and b!1829792 res!822903) b!1829806))

(assert (= (and b!1829806 res!822901) b!1829791))

(assert (= (and b!1829791 res!822902) b!1829795))

(assert (= (and b!1829795 res!822896) b!1829786))

(assert (= (and b!1829786 res!822900) b!1829807))

(assert (= (and b!1829807 (not res!822892)) b!1829808))

(assert (= (and b!1829808 (not res!822894)) b!1829787))

(assert (= (and b!1829787 (not res!822899)) b!1829801))

(assert (= (and b!1829801 (not res!822893)) b!1829793))

(assert (= (and b!1829793 (not res!822897)) b!1829790))

(assert (= (and b!1829790 (not res!822895)) b!1829798))

(assert (= (and start!181570 ((_ is Cons!20117) suffix!1667)) b!1829788))

(assert (= b!1829804 b!1829797))

(assert (= b!1829794 b!1829804))

(assert (= (and start!181570 ((_ is Cons!20120) rules!4538)) b!1829794))

(assert (= b!1829803 b!1829789))

(assert (= b!1829805 b!1829803))

(assert (= start!181570 b!1829805))

(assert (= b!1829800 b!1829802))

(assert (= start!181570 b!1829800))

(assert (= (and start!181570 ((_ is Cons!20117) input!3612)) b!1829796))

(declare-fun m!2257537 () Bool)

(assert (=> b!1829790 m!2257537))

(assert (=> b!1829790 m!2257537))

(declare-fun m!2257539 () Bool)

(assert (=> b!1829790 m!2257539))

(declare-fun m!2257541 () Bool)

(assert (=> b!1829800 m!2257541))

(declare-fun m!2257543 () Bool)

(assert (=> b!1829800 m!2257543))

(declare-fun m!2257545 () Bool)

(assert (=> b!1829804 m!2257545))

(declare-fun m!2257547 () Bool)

(assert (=> b!1829804 m!2257547))

(declare-fun m!2257549 () Bool)

(assert (=> start!181570 m!2257549))

(declare-fun m!2257551 () Bool)

(assert (=> b!1829806 m!2257551))

(declare-fun m!2257553 () Bool)

(assert (=> b!1829791 m!2257553))

(declare-fun m!2257555 () Bool)

(assert (=> b!1829799 m!2257555))

(declare-fun m!2257557 () Bool)

(assert (=> b!1829803 m!2257557))

(declare-fun m!2257559 () Bool)

(assert (=> b!1829803 m!2257559))

(declare-fun m!2257561 () Bool)

(assert (=> b!1829801 m!2257561))

(declare-fun m!2257563 () Bool)

(assert (=> b!1829801 m!2257563))

(declare-fun m!2257565 () Bool)

(assert (=> b!1829801 m!2257565))

(declare-fun m!2257567 () Bool)

(assert (=> b!1829787 m!2257567))

(declare-fun m!2257569 () Bool)

(assert (=> b!1829787 m!2257569))

(assert (=> b!1829787 m!2257563))

(declare-fun m!2257571 () Bool)

(assert (=> b!1829787 m!2257571))

(declare-fun m!2257573 () Bool)

(assert (=> b!1829792 m!2257573))

(declare-fun m!2257575 () Bool)

(assert (=> b!1829807 m!2257575))

(declare-fun m!2257577 () Bool)

(assert (=> b!1829807 m!2257577))

(declare-fun m!2257579 () Bool)

(assert (=> b!1829807 m!2257579))

(declare-fun m!2257581 () Bool)

(assert (=> b!1829808 m!2257581))

(declare-fun m!2257583 () Bool)

(assert (=> b!1829808 m!2257583))

(assert (=> b!1829808 m!2257581))

(declare-fun m!2257585 () Bool)

(assert (=> b!1829808 m!2257585))

(declare-fun m!2257587 () Bool)

(assert (=> b!1829808 m!2257587))

(declare-fun m!2257589 () Bool)

(assert (=> b!1829808 m!2257589))

(declare-fun m!2257591 () Bool)

(assert (=> b!1829805 m!2257591))

(declare-fun m!2257593 () Bool)

(assert (=> b!1829786 m!2257593))

(declare-fun m!2257595 () Bool)

(assert (=> b!1829786 m!2257595))

(assert (=> b!1829786 m!2257595))

(declare-fun m!2257597 () Bool)

(assert (=> b!1829786 m!2257597))

(declare-fun m!2257599 () Bool)

(assert (=> b!1829793 m!2257599))

(assert (=> b!1829793 m!2257537))

(declare-fun m!2257601 () Bool)

(assert (=> b!1829793 m!2257601))

(declare-fun m!2257603 () Bool)

(assert (=> b!1829793 m!2257603))

(check-sat b_and!142351 (not b_next!51817) (not b!1829793) (not b!1829788) (not b!1829805) (not b!1829791) b_and!142341 (not b!1829804) (not b_next!51821) (not b!1829806) (not b_next!51815) b_and!142343 (not b!1829790) (not b_next!51819) (not b_next!51823) tp_is_empty!8161 b_and!142349 (not b!1829799) b_and!142345 (not b!1829800) (not b_next!51825) (not b!1829794) (not b!1829807) (not b!1829796) (not b!1829803) (not start!181570) (not b!1829801) b_and!142347 (not b!1829786) (not b!1829808) (not b!1829792) (not b!1829787))
(check-sat b_and!142351 (not b_next!51817) (not b_next!51823) (not b_next!51825) b_and!142341 (not b_next!51821) (not b_next!51815) b_and!142343 b_and!142347 (not b_next!51819) b_and!142349 b_and!142345)
