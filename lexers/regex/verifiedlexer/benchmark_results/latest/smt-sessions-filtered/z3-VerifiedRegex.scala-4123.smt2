; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221224 () Bool)

(assert start!221224)

(declare-fun b!2264156 () Bool)

(declare-fun b_free!66941 () Bool)

(declare-fun b_next!67645 () Bool)

(assert (=> b!2264156 (= b_free!66941 (not b_next!67645))))

(declare-fun tp!716185 () Bool)

(declare-fun b_and!178025 () Bool)

(assert (=> b!2264156 (= tp!716185 b_and!178025)))

(declare-fun b_free!66943 () Bool)

(declare-fun b_next!67647 () Bool)

(assert (=> b!2264156 (= b_free!66943 (not b_next!67647))))

(declare-fun tp!716182 () Bool)

(declare-fun b_and!178027 () Bool)

(assert (=> b!2264156 (= tp!716182 b_and!178027)))

(declare-fun b!2264157 () Bool)

(declare-fun b_free!66945 () Bool)

(declare-fun b_next!67649 () Bool)

(assert (=> b!2264157 (= b_free!66945 (not b_next!67649))))

(declare-fun tp!716179 () Bool)

(declare-fun b_and!178029 () Bool)

(assert (=> b!2264157 (= tp!716179 b_and!178029)))

(declare-fun b_free!66947 () Bool)

(declare-fun b_next!67651 () Bool)

(assert (=> b!2264157 (= b_free!66947 (not b_next!67651))))

(declare-fun tp!716190 () Bool)

(declare-fun b_and!178031 () Bool)

(assert (=> b!2264157 (= tp!716190 b_and!178031)))

(declare-fun b!2264134 () Bool)

(declare-fun b_free!66949 () Bool)

(declare-fun b_next!67653 () Bool)

(assert (=> b!2264134 (= b_free!66949 (not b_next!67653))))

(declare-fun tp!716181 () Bool)

(declare-fun b_and!178033 () Bool)

(assert (=> b!2264134 (= tp!716181 b_and!178033)))

(declare-fun b_free!66951 () Bool)

(declare-fun b_next!67655 () Bool)

(assert (=> b!2264134 (= b_free!66951 (not b_next!67655))))

(declare-fun tp!716180 () Bool)

(declare-fun b_and!178035 () Bool)

(assert (=> b!2264134 (= tp!716180 b_and!178035)))

(declare-fun b!2264131 () Bool)

(declare-fun b_free!66953 () Bool)

(declare-fun b_next!67657 () Bool)

(assert (=> b!2264131 (= b_free!66953 (not b_next!67657))))

(declare-fun tp!716188 () Bool)

(declare-fun b_and!178037 () Bool)

(assert (=> b!2264131 (= tp!716188 b_and!178037)))

(declare-fun b_free!66955 () Bool)

(declare-fun b_next!67659 () Bool)

(assert (=> b!2264131 (= b_free!66955 (not b_next!67659))))

(declare-fun tp!716191 () Bool)

(declare-fun b_and!178039 () Bool)

(assert (=> b!2264131 (= tp!716191 b_and!178039)))

(declare-fun e!1449676 () Bool)

(declare-fun b!2264128 () Bool)

(declare-fun tp!716175 () Bool)

(declare-fun e!1449699 () Bool)

(declare-datatypes ((List!26975 0))(
  ( (Nil!26881) (Cons!26881 (h!32282 (_ BitVec 16)) (t!201973 List!26975)) )
))
(declare-datatypes ((TokenValue!4439 0))(
  ( (FloatLiteralValue!8878 (text!31518 List!26975)) (TokenValueExt!4438 (__x!17938 Int)) (Broken!22195 (value!135688 List!26975)) (Object!4532) (End!4439) (Def!4439) (Underscore!4439) (Match!4439) (Else!4439) (Error!4439) (Case!4439) (If!4439) (Extends!4439) (Abstract!4439) (Class!4439) (Val!4439) (DelimiterValue!8878 (del!4499 List!26975)) (KeywordValue!4445 (value!135689 List!26975)) (CommentValue!8878 (value!135690 List!26975)) (WhitespaceValue!8878 (value!135691 List!26975)) (IndentationValue!4439 (value!135692 List!26975)) (String!29298) (Int32!4439) (Broken!22196 (value!135693 List!26975)) (Boolean!4440) (Unit!39823) (OperatorValue!4442 (op!4499 List!26975)) (IdentifierValue!8878 (value!135694 List!26975)) (IdentifierValue!8879 (value!135695 List!26975)) (WhitespaceValue!8879 (value!135696 List!26975)) (True!8878) (False!8878) (Broken!22197 (value!135697 List!26975)) (Broken!22198 (value!135698 List!26975)) (True!8879) (RightBrace!4439) (RightBracket!4439) (Colon!4439) (Null!4439) (Comma!4439) (LeftBracket!4439) (False!8879) (LeftBrace!4439) (ImaginaryLiteralValue!4439 (text!31519 List!26975)) (StringLiteralValue!13317 (value!135699 List!26975)) (EOFValue!4439 (value!135700 List!26975)) (IdentValue!4439 (value!135701 List!26975)) (DelimiterValue!8879 (value!135702 List!26975)) (DedentValue!4439 (value!135703 List!26975)) (NewLineValue!4439 (value!135704 List!26975)) (IntegerValue!13317 (value!135705 (_ BitVec 32)) (text!31520 List!26975)) (IntegerValue!13318 (value!135706 Int) (text!31521 List!26975)) (Times!4439) (Or!4439) (Equal!4439) (Minus!4439) (Broken!22199 (value!135707 List!26975)) (And!4439) (Div!4439) (LessEqual!4439) (Mod!4439) (Concat!11064) (Not!4439) (Plus!4439) (SpaceValue!4439 (value!135708 List!26975)) (IntegerValue!13319 (value!135709 Int) (text!31522 List!26975)) (StringLiteralValue!13318 (text!31523 List!26975)) (FloatLiteralValue!8879 (text!31524 List!26975)) (BytesLiteralValue!4439 (value!135710 List!26975)) (CommentValue!8879 (value!135711 List!26975)) (StringLiteralValue!13319 (value!135712 List!26975)) (ErrorTokenValue!4439 (msg!4500 List!26975)) )
))
(declare-datatypes ((C!13396 0))(
  ( (C!13397 (val!7746 Int)) )
))
(declare-datatypes ((List!26976 0))(
  ( (Nil!26882) (Cons!26882 (h!32283 C!13396) (t!201974 List!26976)) )
))
(declare-datatypes ((IArray!17409 0))(
  ( (IArray!17410 (innerList!8762 List!26976)) )
))
(declare-datatypes ((Conc!8702 0))(
  ( (Node!8702 (left!20405 Conc!8702) (right!20735 Conc!8702) (csize!17634 Int) (cheight!8913 Int)) (Leaf!12826 (xs!11644 IArray!17409) (csize!17635 Int)) (Empty!8702) )
))
(declare-datatypes ((BalanceConc!17132 0))(
  ( (BalanceConc!17133 (c!359702 Conc!8702)) )
))
(declare-datatypes ((Regex!6625 0))(
  ( (ElementMatch!6625 (c!359703 C!13396)) (Concat!11065 (regOne!13762 Regex!6625) (regTwo!13762 Regex!6625)) (EmptyExpr!6625) (Star!6625 (reg!6954 Regex!6625)) (EmptyLang!6625) (Union!6625 (regOne!13763 Regex!6625) (regTwo!13763 Regex!6625)) )
))
(declare-datatypes ((String!29299 0))(
  ( (String!29300 (value!135713 String)) )
))
(declare-datatypes ((TokenValueInjection!8418 0))(
  ( (TokenValueInjection!8419 (toValue!6031 Int) (toChars!5890 Int)) )
))
(declare-datatypes ((Rule!8354 0))(
  ( (Rule!8355 (regex!4277 Regex!6625) (tag!4767 String!29299) (isSeparator!4277 Bool) (transformation!4277 TokenValueInjection!8418)) )
))
(declare-datatypes ((List!26977 0))(
  ( (Nil!26883) (Cons!26883 (h!32284 Rule!8354) (t!201975 List!26977)) )
))
(declare-fun rules!1750 () List!26977)

(declare-fun inv!36428 (String!29299) Bool)

(declare-fun inv!36431 (TokenValueInjection!8418) Bool)

(assert (=> b!2264128 (= e!1449699 (and tp!716175 (inv!36428 (tag!4767 (h!32284 rules!1750))) (inv!36431 (transformation!4277 (h!32284 rules!1750))) e!1449676))))

(declare-fun b!2264129 () Bool)

(declare-fun e!1449693 () Bool)

(assert (=> b!2264129 (= e!1449693 true)))

(declare-fun lt!841193 () Bool)

(declare-fun r!2363 () Rule!8354)

(declare-fun lt!841204 () List!26976)

(declare-fun matchR!2886 (Regex!6625 List!26976) Bool)

(assert (=> b!2264129 (= lt!841193 (matchR!2886 (regex!4277 r!2363) lt!841204))))

(declare-fun b!2264130 () Bool)

(declare-fun e!1449698 () Bool)

(declare-fun tp!716186 () Bool)

(assert (=> b!2264130 (= e!1449698 (and e!1449699 tp!716186))))

(declare-fun e!1449673 () Bool)

(assert (=> b!2264131 (= e!1449673 (and tp!716188 tp!716191))))

(declare-fun b!2264132 () Bool)

(declare-fun res!967786 () Bool)

(declare-fun e!1449684 () Bool)

(assert (=> b!2264132 (=> (not res!967786) (not e!1449684))))

(declare-fun otherR!12 () Rule!8354)

(declare-fun contains!4635 (List!26977 Rule!8354) Bool)

(assert (=> b!2264132 (= res!967786 (contains!4635 rules!1750 otherR!12))))

(declare-fun res!967787 () Bool)

(assert (=> start!221224 (=> (not res!967787) (not e!1449684))))

(declare-datatypes ((LexerInterface!3874 0))(
  ( (LexerInterfaceExt!3871 (__x!17939 Int)) (Lexer!3872) )
))
(declare-fun thiss!16613 () LexerInterface!3874)

(get-info :version)

(assert (=> start!221224 (= res!967787 ((_ is Lexer!3872) thiss!16613))))

(assert (=> start!221224 e!1449684))

(assert (=> start!221224 true))

(declare-fun e!1449685 () Bool)

(assert (=> start!221224 e!1449685))

(declare-fun e!1449700 () Bool)

(assert (=> start!221224 e!1449700))

(declare-fun e!1449691 () Bool)

(assert (=> start!221224 e!1449691))

(declare-fun e!1449682 () Bool)

(assert (=> start!221224 e!1449682))

(assert (=> start!221224 e!1449698))

(declare-fun e!1449686 () Bool)

(assert (=> start!221224 e!1449686))

(declare-fun e!1449674 () Bool)

(assert (=> start!221224 e!1449674))

(declare-fun b!2264133 () Bool)

(declare-fun e!1449679 () Bool)

(declare-fun e!1449702 () Bool)

(assert (=> b!2264133 (= e!1449679 e!1449702)))

(declare-fun res!967798 () Bool)

(assert (=> b!2264133 (=> res!967798 e!1449702)))

(declare-fun input!1722 () List!26976)

(declare-fun lt!841194 () Int)

(declare-fun lt!841203 () List!26976)

(declare-fun lt!841195 () Int)

(assert (=> b!2264133 (= res!967798 (or (<= lt!841195 lt!841194) (not (= input!1722 lt!841203))))))

(declare-fun size!21076 (List!26976) Int)

(assert (=> b!2264133 (= lt!841194 (size!21076 lt!841204))))

(declare-fun otherP!12 () List!26976)

(assert (=> b!2264133 (= lt!841195 (size!21076 otherP!12))))

(declare-datatypes ((Token!8032 0))(
  ( (Token!8033 (value!135714 TokenValue!4439) (rule!6591 Rule!8354) (size!21077 Int) (originalCharacters!5047 List!26976)) )
))
(declare-datatypes ((tuple2!26494 0))(
  ( (tuple2!26495 (_1!15757 Token!8032) (_2!15757 List!26976)) )
))
(declare-fun lt!841205 () tuple2!26494)

(declare-fun lt!841192 () List!26976)

(assert (=> b!2264133 (= (_2!15757 lt!841205) lt!841192)))

(declare-datatypes ((Unit!39824 0))(
  ( (Unit!39825) )
))
(declare-fun lt!841198 () Unit!39824)

(declare-fun lemmaSamePrefixThenSameSuffix!996 (List!26976 List!26976 List!26976 List!26976 List!26976) Unit!39824)

(assert (=> b!2264133 (= lt!841198 (lemmaSamePrefixThenSameSuffix!996 lt!841204 (_2!15757 lt!841205) lt!841204 lt!841192 input!1722))))

(declare-fun getSuffix!1078 (List!26976 List!26976) List!26976)

(assert (=> b!2264133 (= lt!841192 (getSuffix!1078 input!1722 lt!841204))))

(declare-fun isPrefix!2267 (List!26976 List!26976) Bool)

(assert (=> b!2264133 (isPrefix!2267 lt!841204 lt!841203)))

(declare-fun ++!6549 (List!26976 List!26976) List!26976)

(assert (=> b!2264133 (= lt!841203 (++!6549 lt!841204 (_2!15757 lt!841205)))))

(declare-fun lt!841190 () Unit!39824)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1492 (List!26976 List!26976) Unit!39824)

(assert (=> b!2264133 (= lt!841190 (lemmaConcatTwoListThenFirstIsPrefix!1492 lt!841204 (_2!15757 lt!841205)))))

(declare-datatypes ((List!26978 0))(
  ( (Nil!26884) (Cons!26884 (h!32285 Token!8032) (t!201976 List!26978)) )
))
(declare-fun tokens!456 () List!26978)

(declare-fun list!10385 (BalanceConc!17132) List!26976)

(declare-fun charsOf!2665 (Token!8032) BalanceConc!17132)

(assert (=> b!2264133 (= lt!841204 (list!10385 (charsOf!2665 (h!32285 tokens!456))))))

(declare-datatypes ((Option!5255 0))(
  ( (None!5254) (Some!5254 (v!30292 tuple2!26494)) )
))
(declare-fun lt!841199 () Option!5255)

(declare-fun get!8109 (Option!5255) tuple2!26494)

(assert (=> b!2264133 (= lt!841205 (get!8109 lt!841199))))

(declare-fun maxPrefix!2148 (LexerInterface!3874 List!26977 List!26976) Option!5255)

(assert (=> b!2264133 (= lt!841199 (maxPrefix!2148 thiss!16613 rules!1750 input!1722))))

(assert (=> b!2264134 (= e!1449676 (and tp!716181 tp!716180))))

(declare-fun b!2264135 () Bool)

(declare-fun e!1449675 () Bool)

(assert (=> b!2264135 (= e!1449675 e!1449679)))

(declare-fun res!967795 () Bool)

(assert (=> b!2264135 (=> res!967795 e!1449679)))

(assert (=> b!2264135 (= res!967795 ((_ is Nil!26884) tokens!456))))

(declare-fun lt!841202 () Unit!39824)

(declare-fun e!1449689 () Unit!39824)

(assert (=> b!2264135 (= lt!841202 e!1449689)))

(declare-fun c!359701 () Bool)

(declare-fun lt!841189 () Int)

(declare-fun lt!841187 () Int)

(assert (=> b!2264135 (= c!359701 (= lt!841189 lt!841187))))

(declare-fun b!2264136 () Bool)

(declare-fun e!1449695 () Bool)

(assert (=> b!2264136 (= e!1449684 e!1449695)))

(declare-fun res!967799 () Bool)

(assert (=> b!2264136 (=> (not res!967799) (not e!1449695))))

(declare-fun suffix!886 () List!26976)

(declare-datatypes ((IArray!17411 0))(
  ( (IArray!17412 (innerList!8763 List!26978)) )
))
(declare-datatypes ((Conc!8703 0))(
  ( (Node!8703 (left!20406 Conc!8703) (right!20736 Conc!8703) (csize!17636 Int) (cheight!8914 Int)) (Leaf!12827 (xs!11645 IArray!17411) (csize!17637 Int)) (Empty!8703) )
))
(declare-datatypes ((BalanceConc!17134 0))(
  ( (BalanceConc!17135 (c!359704 Conc!8703)) )
))
(declare-datatypes ((tuple2!26496 0))(
  ( (tuple2!26497 (_1!15758 BalanceConc!17134) (_2!15758 BalanceConc!17132)) )
))
(declare-fun lt!841197 () tuple2!26496)

(declare-datatypes ((tuple2!26498 0))(
  ( (tuple2!26499 (_1!15759 List!26978) (_2!15759 List!26976)) )
))
(declare-fun list!10386 (BalanceConc!17134) List!26978)

(assert (=> b!2264136 (= res!967799 (= (tuple2!26499 (list!10386 (_1!15758 lt!841197)) (list!10385 (_2!15758 lt!841197))) (tuple2!26499 tokens!456 suffix!886)))))

(declare-fun lex!1713 (LexerInterface!3874 List!26977 BalanceConc!17132) tuple2!26496)

(declare-fun seqFromList!2981 (List!26976) BalanceConc!17132)

(assert (=> b!2264136 (= lt!841197 (lex!1713 thiss!16613 rules!1750 (seqFromList!2981 input!1722)))))

(declare-fun b!2264137 () Bool)

(declare-fun e!1449690 () Bool)

(declare-fun size!21078 (BalanceConc!17132) Int)

(declare-fun head!4862 (List!26978) Token!8032)

(assert (=> b!2264137 (= e!1449690 (<= (size!21078 (charsOf!2665 (head!4862 tokens!456))) (size!21076 otherP!12)))))

(declare-fun b!2264138 () Bool)

(declare-fun res!967782 () Bool)

(assert (=> b!2264138 (=> (not res!967782) (not e!1449684))))

(declare-fun rulesInvariant!3376 (LexerInterface!3874 List!26977) Bool)

(assert (=> b!2264138 (= res!967782 (rulesInvariant!3376 thiss!16613 rules!1750))))

(declare-fun b!2264139 () Bool)

(declare-fun res!967788 () Bool)

(declare-fun e!1449683 () Bool)

(assert (=> b!2264139 (=> (not res!967788) (not e!1449683))))

(assert (=> b!2264139 (= res!967788 (isPrefix!2267 otherP!12 input!1722))))

(declare-fun b!2264140 () Bool)

(declare-fun e!1449677 () Bool)

(assert (=> b!2264140 (= e!1449677 (= (rule!6591 (head!4862 tokens!456)) r!2363))))

(declare-fun b!2264141 () Bool)

(declare-fun tp_is_empty!10471 () Bool)

(declare-fun tp!716174 () Bool)

(assert (=> b!2264141 (= e!1449685 (and tp_is_empty!10471 tp!716174))))

(declare-fun b!2264142 () Bool)

(declare-fun Unit!39826 () Unit!39824)

(assert (=> b!2264142 (= e!1449689 Unit!39826)))

(declare-fun b!2264143 () Bool)

(assert (=> b!2264143 (= e!1449695 e!1449683)))

(declare-fun res!967791 () Bool)

(assert (=> b!2264143 (=> (not res!967791) (not e!1449683))))

(assert (=> b!2264143 (= res!967791 e!1449690)))

(declare-fun res!967785 () Bool)

(assert (=> b!2264143 (=> res!967785 e!1449690)))

(declare-fun lt!841201 () Bool)

(assert (=> b!2264143 (= res!967785 lt!841201)))

(declare-fun isEmpty!15208 (List!26978) Bool)

(assert (=> b!2264143 (= lt!841201 (isEmpty!15208 tokens!456))))

(declare-fun b!2264144 () Bool)

(declare-fun e!1449692 () Bool)

(assert (=> b!2264144 (= e!1449692 e!1449675)))

(declare-fun res!967783 () Bool)

(assert (=> b!2264144 (=> res!967783 e!1449675)))

(assert (=> b!2264144 (= res!967783 (> lt!841189 lt!841187))))

(declare-fun getIndex!298 (List!26977 Rule!8354) Int)

(assert (=> b!2264144 (= lt!841187 (getIndex!298 rules!1750 otherR!12))))

(assert (=> b!2264144 (= lt!841189 (getIndex!298 rules!1750 r!2363))))

(declare-fun ruleValid!1369 (LexerInterface!3874 Rule!8354) Bool)

(assert (=> b!2264144 (ruleValid!1369 thiss!16613 otherR!12)))

(declare-fun lt!841200 () Unit!39824)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!776 (LexerInterface!3874 Rule!8354 List!26977) Unit!39824)

(assert (=> b!2264144 (= lt!841200 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!776 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2264145 () Bool)

(assert (=> b!2264145 (= e!1449683 (not e!1449692))))

(declare-fun res!967797 () Bool)

(assert (=> b!2264145 (=> res!967797 e!1449692)))

(declare-fun e!1449694 () Bool)

(assert (=> b!2264145 (= res!967797 e!1449694)))

(declare-fun res!967794 () Bool)

(assert (=> b!2264145 (=> (not res!967794) (not e!1449694))))

(assert (=> b!2264145 (= res!967794 (not lt!841201))))

(assert (=> b!2264145 (ruleValid!1369 thiss!16613 r!2363)))

(declare-fun lt!841188 () Unit!39824)

(assert (=> b!2264145 (= lt!841188 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!776 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2264146 () Bool)

(declare-fun res!967793 () Bool)

(assert (=> b!2264146 (=> (not res!967793) (not e!1449684))))

(assert (=> b!2264146 (= res!967793 (contains!4635 rules!1750 r!2363))))

(declare-fun b!2264147 () Bool)

(declare-fun res!967800 () Bool)

(assert (=> b!2264147 (=> (not res!967800) (not e!1449683))))

(assert (=> b!2264147 (= res!967800 (not (= r!2363 otherR!12)))))

(declare-fun e!1449681 () Bool)

(declare-fun tp!716176 () Bool)

(declare-fun b!2264148 () Bool)

(assert (=> b!2264148 (= e!1449700 (and tp!716176 (inv!36428 (tag!4767 otherR!12)) (inv!36431 (transformation!4277 otherR!12)) e!1449681))))

(declare-fun b!2264149 () Bool)

(declare-fun tp!716189 () Bool)

(assert (=> b!2264149 (= e!1449682 (and tp_is_empty!10471 tp!716189))))

(declare-fun b!2264150 () Bool)

(declare-fun res!967792 () Bool)

(assert (=> b!2264150 (=> (not res!967792) (not e!1449683))))

(assert (=> b!2264150 (= res!967792 e!1449677)))

(declare-fun res!967790 () Bool)

(assert (=> b!2264150 (=> res!967790 e!1449677)))

(assert (=> b!2264150 (= res!967790 lt!841201)))

(declare-fun e!1449701 () Bool)

(declare-fun b!2264151 () Bool)

(declare-fun tp!716187 () Bool)

(assert (=> b!2264151 (= e!1449686 (and tp!716187 (inv!36428 (tag!4767 r!2363)) (inv!36431 (transformation!4277 r!2363)) e!1449701))))

(declare-fun b!2264152 () Bool)

(assert (=> b!2264152 (= e!1449694 (not (matchR!2886 (regex!4277 r!2363) (list!10385 (charsOf!2665 (head!4862 tokens!456))))))))

(declare-fun tp!716183 () Bool)

(declare-fun b!2264153 () Bool)

(declare-fun e!1449703 () Bool)

(declare-fun inv!36432 (Token!8032) Bool)

(assert (=> b!2264153 (= e!1449674 (and (inv!36432 (h!32285 tokens!456)) e!1449703 tp!716183))))

(declare-fun b!2264154 () Bool)

(declare-fun tp!716177 () Bool)

(declare-fun e!1449678 () Bool)

(assert (=> b!2264154 (= e!1449678 (and tp!716177 (inv!36428 (tag!4767 (rule!6591 (h!32285 tokens!456)))) (inv!36431 (transformation!4277 (rule!6591 (h!32285 tokens!456)))) e!1449673))))

(declare-fun b!2264155 () Bool)

(declare-fun Unit!39827 () Unit!39824)

(assert (=> b!2264155 (= e!1449689 Unit!39827)))

(declare-fun lt!841196 () Unit!39824)

(declare-fun lemmaSameIndexThenSameElement!144 (List!26977 Rule!8354 Rule!8354) Unit!39824)

(assert (=> b!2264155 (= lt!841196 (lemmaSameIndexThenSameElement!144 rules!1750 r!2363 otherR!12))))

(assert (=> b!2264155 false))

(assert (=> b!2264156 (= e!1449701 (and tp!716185 tp!716182))))

(assert (=> b!2264157 (= e!1449681 (and tp!716179 tp!716190))))

(declare-fun b!2264158 () Bool)

(declare-fun res!967784 () Bool)

(assert (=> b!2264158 (=> (not res!967784) (not e!1449684))))

(declare-fun isEmpty!15209 (List!26977) Bool)

(assert (=> b!2264158 (= res!967784 (not (isEmpty!15209 rules!1750)))))

(declare-fun b!2264159 () Bool)

(declare-fun res!967789 () Bool)

(assert (=> b!2264159 (=> res!967789 e!1449702)))

(declare-fun isEmpty!15210 (List!26976) Bool)

(assert (=> b!2264159 (= res!967789 (isEmpty!15210 lt!841204))))

(declare-fun b!2264160 () Bool)

(declare-fun tp!716178 () Bool)

(assert (=> b!2264160 (= e!1449691 (and tp_is_empty!10471 tp!716178))))

(declare-fun b!2264161 () Bool)

(declare-fun tp!716184 () Bool)

(declare-fun inv!21 (TokenValue!4439) Bool)

(assert (=> b!2264161 (= e!1449703 (and (inv!21 (value!135714 (h!32285 tokens!456))) e!1449678 tp!716184))))

(declare-fun b!2264162 () Bool)

(assert (=> b!2264162 (= e!1449702 e!1449693)))

(declare-fun res!967796 () Bool)

(assert (=> b!2264162 (=> res!967796 e!1449693)))

(declare-fun lt!841206 () BalanceConc!17132)

(declare-fun apply!6581 (TokenValueInjection!8418 BalanceConc!17132) TokenValue!4439)

(assert (=> b!2264162 (= res!967796 (not (= lt!841199 (Some!5254 (tuple2!26495 (Token!8033 (apply!6581 (transformation!4277 r!2363) lt!841206) r!2363 lt!841194 lt!841204) (_2!15757 lt!841205))))))))

(declare-fun lt!841191 () Unit!39824)

(declare-fun lemmaSemiInverse!1024 (TokenValueInjection!8418 BalanceConc!17132) Unit!39824)

(assert (=> b!2264162 (= lt!841191 (lemmaSemiInverse!1024 (transformation!4277 r!2363) lt!841206))))

(assert (=> b!2264162 (= lt!841206 (seqFromList!2981 lt!841204))))

(assert (= (and start!221224 res!967787) b!2264158))

(assert (= (and b!2264158 res!967784) b!2264138))

(assert (= (and b!2264138 res!967782) b!2264146))

(assert (= (and b!2264146 res!967793) b!2264132))

(assert (= (and b!2264132 res!967786) b!2264136))

(assert (= (and b!2264136 res!967799) b!2264143))

(assert (= (and b!2264143 (not res!967785)) b!2264137))

(assert (= (and b!2264143 res!967791) b!2264150))

(assert (= (and b!2264150 (not res!967790)) b!2264140))

(assert (= (and b!2264150 res!967792) b!2264139))

(assert (= (and b!2264139 res!967788) b!2264147))

(assert (= (and b!2264147 res!967800) b!2264145))

(assert (= (and b!2264145 res!967794) b!2264152))

(assert (= (and b!2264145 (not res!967797)) b!2264144))

(assert (= (and b!2264144 (not res!967783)) b!2264135))

(assert (= (and b!2264135 c!359701) b!2264155))

(assert (= (and b!2264135 (not c!359701)) b!2264142))

(assert (= (and b!2264135 (not res!967795)) b!2264133))

(assert (= (and b!2264133 (not res!967798)) b!2264159))

(assert (= (and b!2264159 (not res!967789)) b!2264162))

(assert (= (and b!2264162 (not res!967796)) b!2264129))

(assert (= (and start!221224 ((_ is Cons!26882) input!1722)) b!2264141))

(assert (= b!2264148 b!2264157))

(assert (= start!221224 b!2264148))

(assert (= (and start!221224 ((_ is Cons!26882) suffix!886)) b!2264160))

(assert (= (and start!221224 ((_ is Cons!26882) otherP!12)) b!2264149))

(assert (= b!2264128 b!2264134))

(assert (= b!2264130 b!2264128))

(assert (= (and start!221224 ((_ is Cons!26883) rules!1750)) b!2264130))

(assert (= b!2264151 b!2264156))

(assert (= start!221224 b!2264151))

(assert (= b!2264154 b!2264131))

(assert (= b!2264161 b!2264154))

(assert (= b!2264153 b!2264161))

(assert (= (and start!221224 ((_ is Cons!26884) tokens!456)) b!2264153))

(declare-fun m!2693555 () Bool)

(assert (=> b!2264139 m!2693555))

(declare-fun m!2693557 () Bool)

(assert (=> b!2264151 m!2693557))

(declare-fun m!2693559 () Bool)

(assert (=> b!2264151 m!2693559))

(declare-fun m!2693561 () Bool)

(assert (=> b!2264138 m!2693561))

(declare-fun m!2693563 () Bool)

(assert (=> b!2264144 m!2693563))

(declare-fun m!2693565 () Bool)

(assert (=> b!2264144 m!2693565))

(declare-fun m!2693567 () Bool)

(assert (=> b!2264144 m!2693567))

(declare-fun m!2693569 () Bool)

(assert (=> b!2264144 m!2693569))

(declare-fun m!2693571 () Bool)

(assert (=> b!2264162 m!2693571))

(declare-fun m!2693573 () Bool)

(assert (=> b!2264162 m!2693573))

(declare-fun m!2693575 () Bool)

(assert (=> b!2264162 m!2693575))

(declare-fun m!2693577 () Bool)

(assert (=> b!2264133 m!2693577))

(declare-fun m!2693579 () Bool)

(assert (=> b!2264133 m!2693579))

(declare-fun m!2693581 () Bool)

(assert (=> b!2264133 m!2693581))

(declare-fun m!2693583 () Bool)

(assert (=> b!2264133 m!2693583))

(declare-fun m!2693585 () Bool)

(assert (=> b!2264133 m!2693585))

(declare-fun m!2693587 () Bool)

(assert (=> b!2264133 m!2693587))

(assert (=> b!2264133 m!2693585))

(declare-fun m!2693589 () Bool)

(assert (=> b!2264133 m!2693589))

(declare-fun m!2693591 () Bool)

(assert (=> b!2264133 m!2693591))

(declare-fun m!2693593 () Bool)

(assert (=> b!2264133 m!2693593))

(declare-fun m!2693595 () Bool)

(assert (=> b!2264133 m!2693595))

(declare-fun m!2693597 () Bool)

(assert (=> b!2264133 m!2693597))

(declare-fun m!2693599 () Bool)

(assert (=> b!2264158 m!2693599))

(declare-fun m!2693601 () Bool)

(assert (=> b!2264148 m!2693601))

(declare-fun m!2693603 () Bool)

(assert (=> b!2264148 m!2693603))

(declare-fun m!2693605 () Bool)

(assert (=> b!2264159 m!2693605))

(declare-fun m!2693607 () Bool)

(assert (=> b!2264143 m!2693607))

(declare-fun m!2693609 () Bool)

(assert (=> b!2264152 m!2693609))

(assert (=> b!2264152 m!2693609))

(declare-fun m!2693611 () Bool)

(assert (=> b!2264152 m!2693611))

(assert (=> b!2264152 m!2693611))

(declare-fun m!2693613 () Bool)

(assert (=> b!2264152 m!2693613))

(assert (=> b!2264152 m!2693613))

(declare-fun m!2693615 () Bool)

(assert (=> b!2264152 m!2693615))

(assert (=> b!2264140 m!2693609))

(declare-fun m!2693617 () Bool)

(assert (=> b!2264132 m!2693617))

(declare-fun m!2693619 () Bool)

(assert (=> b!2264161 m!2693619))

(declare-fun m!2693621 () Bool)

(assert (=> b!2264128 m!2693621))

(declare-fun m!2693623 () Bool)

(assert (=> b!2264128 m!2693623))

(declare-fun m!2693625 () Bool)

(assert (=> b!2264146 m!2693625))

(declare-fun m!2693627 () Bool)

(assert (=> b!2264136 m!2693627))

(declare-fun m!2693629 () Bool)

(assert (=> b!2264136 m!2693629))

(declare-fun m!2693631 () Bool)

(assert (=> b!2264136 m!2693631))

(assert (=> b!2264136 m!2693631))

(declare-fun m!2693633 () Bool)

(assert (=> b!2264136 m!2693633))

(declare-fun m!2693635 () Bool)

(assert (=> b!2264153 m!2693635))

(declare-fun m!2693637 () Bool)

(assert (=> b!2264145 m!2693637))

(declare-fun m!2693639 () Bool)

(assert (=> b!2264145 m!2693639))

(declare-fun m!2693641 () Bool)

(assert (=> b!2264154 m!2693641))

(declare-fun m!2693643 () Bool)

(assert (=> b!2264154 m!2693643))

(declare-fun m!2693645 () Bool)

(assert (=> b!2264155 m!2693645))

(assert (=> b!2264137 m!2693609))

(assert (=> b!2264137 m!2693609))

(assert (=> b!2264137 m!2693611))

(assert (=> b!2264137 m!2693611))

(declare-fun m!2693647 () Bool)

(assert (=> b!2264137 m!2693647))

(assert (=> b!2264137 m!2693591))

(declare-fun m!2693649 () Bool)

(assert (=> b!2264129 m!2693649))

(check-sat tp_is_empty!10471 (not b!2264140) b_and!178025 (not b!2264149) (not b_next!67649) (not b!2264148) (not b_next!67659) (not b!2264144) (not b!2264139) (not b!2264146) (not b_next!67655) (not b!2264154) b_and!178033 (not b!2264151) (not b!2264161) (not b!2264128) b_and!178031 b_and!178029 (not b_next!67647) (not b!2264130) (not b!2264129) b_and!178037 (not b!2264153) (not b!2264138) (not b!2264141) (not b!2264155) (not b_next!67657) (not b_next!67645) b_and!178035 (not b_next!67651) (not b!2264132) (not b!2264160) (not b!2264159) b_and!178039 (not b!2264143) (not b!2264162) (not b!2264137) (not b!2264152) (not b!2264158) (not b!2264133) (not b_next!67653) (not b!2264145) (not b!2264136) b_and!178027)
(check-sat (not b_next!67655) b_and!178033 b_and!178025 b_and!178031 b_and!178037 (not b_next!67657) (not b_next!67651) b_and!178039 (not b_next!67653) b_and!178027 (not b_next!67649) (not b_next!67659) b_and!178029 (not b_next!67647) (not b_next!67645) b_and!178035)
