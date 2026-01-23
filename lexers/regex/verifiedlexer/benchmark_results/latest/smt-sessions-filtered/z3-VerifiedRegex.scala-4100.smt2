; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219872 () Bool)

(assert start!219872)

(declare-fun b!2252822 () Bool)

(declare-fun b_free!66029 () Bool)

(declare-fun b_next!66733 () Bool)

(assert (=> b!2252822 (= b_free!66029 (not b_next!66733))))

(declare-fun tp!711799 () Bool)

(declare-fun b_and!176529 () Bool)

(assert (=> b!2252822 (= tp!711799 b_and!176529)))

(declare-fun b_free!66031 () Bool)

(declare-fun b_next!66735 () Bool)

(assert (=> b!2252822 (= b_free!66031 (not b_next!66735))))

(declare-fun tp!711797 () Bool)

(declare-fun b_and!176531 () Bool)

(assert (=> b!2252822 (= tp!711797 b_and!176531)))

(declare-fun b!2252827 () Bool)

(declare-fun b_free!66033 () Bool)

(declare-fun b_next!66737 () Bool)

(assert (=> b!2252827 (= b_free!66033 (not b_next!66737))))

(declare-fun tp!711798 () Bool)

(declare-fun b_and!176533 () Bool)

(assert (=> b!2252827 (= tp!711798 b_and!176533)))

(declare-fun b_free!66035 () Bool)

(declare-fun b_next!66739 () Bool)

(assert (=> b!2252827 (= b_free!66035 (not b_next!66739))))

(declare-fun tp!711789 () Bool)

(declare-fun b_and!176535 () Bool)

(assert (=> b!2252827 (= tp!711789 b_and!176535)))

(declare-fun b!2252831 () Bool)

(declare-fun b_free!66037 () Bool)

(declare-fun b_next!66741 () Bool)

(assert (=> b!2252831 (= b_free!66037 (not b_next!66741))))

(declare-fun tp!711792 () Bool)

(declare-fun b_and!176537 () Bool)

(assert (=> b!2252831 (= tp!711792 b_and!176537)))

(declare-fun b_free!66039 () Bool)

(declare-fun b_next!66743 () Bool)

(assert (=> b!2252831 (= b_free!66039 (not b_next!66743))))

(declare-fun tp!711805 () Bool)

(declare-fun b_and!176539 () Bool)

(assert (=> b!2252831 (= tp!711805 b_and!176539)))

(declare-fun b!2252819 () Bool)

(declare-fun b_free!66041 () Bool)

(declare-fun b_next!66745 () Bool)

(assert (=> b!2252819 (= b_free!66041 (not b_next!66745))))

(declare-fun tp!711791 () Bool)

(declare-fun b_and!176541 () Bool)

(assert (=> b!2252819 (= tp!711791 b_and!176541)))

(declare-fun b_free!66043 () Bool)

(declare-fun b_next!66747 () Bool)

(assert (=> b!2252819 (= b_free!66043 (not b_next!66747))))

(declare-fun tp!711788 () Bool)

(declare-fun b_and!176543 () Bool)

(assert (=> b!2252819 (= tp!711788 b_and!176543)))

(declare-fun res!962561 () Bool)

(declare-fun e!1441597 () Bool)

(assert (=> start!219872 (=> (not res!962561) (not e!1441597))))

(declare-datatypes ((LexerInterface!3828 0))(
  ( (LexerInterfaceExt!3825 (__x!17846 Int)) (Lexer!3826) )
))
(declare-fun thiss!16613 () LexerInterface!3828)

(get-info :version)

(assert (=> start!219872 (= res!962561 ((_ is Lexer!3826) thiss!16613))))

(assert (=> start!219872 e!1441597))

(assert (=> start!219872 true))

(declare-fun e!1441617 () Bool)

(assert (=> start!219872 e!1441617))

(declare-fun e!1441610 () Bool)

(assert (=> start!219872 e!1441610))

(declare-fun e!1441621 () Bool)

(assert (=> start!219872 e!1441621))

(declare-fun e!1441608 () Bool)

(assert (=> start!219872 e!1441608))

(declare-fun e!1441599 () Bool)

(assert (=> start!219872 e!1441599))

(declare-fun e!1441605 () Bool)

(assert (=> start!219872 e!1441605))

(declare-fun e!1441612 () Bool)

(assert (=> start!219872 e!1441612))

(declare-fun e!1441607 () Bool)

(declare-fun e!1441598 () Bool)

(declare-datatypes ((List!26775 0))(
  ( (Nil!26681) (Cons!26681 (h!32082 (_ BitVec 16)) (t!201003 List!26775)) )
))
(declare-datatypes ((TokenValue!4393 0))(
  ( (FloatLiteralValue!8786 (text!31196 List!26775)) (TokenValueExt!4392 (__x!17847 Int)) (Broken!21965 (value!134377 List!26775)) (Object!4486) (End!4393) (Def!4393) (Underscore!4393) (Match!4393) (Else!4393) (Error!4393) (Case!4393) (If!4393) (Extends!4393) (Abstract!4393) (Class!4393) (Val!4393) (DelimiterValue!8786 (del!4453 List!26775)) (KeywordValue!4399 (value!134378 List!26775)) (CommentValue!8786 (value!134379 List!26775)) (WhitespaceValue!8786 (value!134380 List!26775)) (IndentationValue!4393 (value!134381 List!26775)) (String!29068) (Int32!4393) (Broken!21966 (value!134382 List!26775)) (Boolean!4394) (Unit!39619) (OperatorValue!4396 (op!4453 List!26775)) (IdentifierValue!8786 (value!134383 List!26775)) (IdentifierValue!8787 (value!134384 List!26775)) (WhitespaceValue!8787 (value!134385 List!26775)) (True!8786) (False!8786) (Broken!21967 (value!134386 List!26775)) (Broken!21968 (value!134387 List!26775)) (True!8787) (RightBrace!4393) (RightBracket!4393) (Colon!4393) (Null!4393) (Comma!4393) (LeftBracket!4393) (False!8787) (LeftBrace!4393) (ImaginaryLiteralValue!4393 (text!31197 List!26775)) (StringLiteralValue!13179 (value!134388 List!26775)) (EOFValue!4393 (value!134389 List!26775)) (IdentValue!4393 (value!134390 List!26775)) (DelimiterValue!8787 (value!134391 List!26775)) (DedentValue!4393 (value!134392 List!26775)) (NewLineValue!4393 (value!134393 List!26775)) (IntegerValue!13179 (value!134394 (_ BitVec 32)) (text!31198 List!26775)) (IntegerValue!13180 (value!134395 Int) (text!31199 List!26775)) (Times!4393) (Or!4393) (Equal!4393) (Minus!4393) (Broken!21969 (value!134396 List!26775)) (And!4393) (Div!4393) (LessEqual!4393) (Mod!4393) (Concat!10972) (Not!4393) (Plus!4393) (SpaceValue!4393 (value!134397 List!26775)) (IntegerValue!13181 (value!134398 Int) (text!31200 List!26775)) (StringLiteralValue!13180 (text!31201 List!26775)) (FloatLiteralValue!8787 (text!31202 List!26775)) (BytesLiteralValue!4393 (value!134399 List!26775)) (CommentValue!8787 (value!134400 List!26775)) (StringLiteralValue!13181 (value!134401 List!26775)) (ErrorTokenValue!4393 (msg!4454 List!26775)) )
))
(declare-datatypes ((C!13304 0))(
  ( (C!13305 (val!7700 Int)) )
))
(declare-datatypes ((List!26776 0))(
  ( (Nil!26682) (Cons!26682 (h!32083 C!13304) (t!201004 List!26776)) )
))
(declare-datatypes ((IArray!17225 0))(
  ( (IArray!17226 (innerList!8670 List!26776)) )
))
(declare-datatypes ((Conc!8610 0))(
  ( (Node!8610 (left!20270 Conc!8610) (right!20600 Conc!8610) (csize!17450 Int) (cheight!8821 Int)) (Leaf!12711 (xs!11552 IArray!17225) (csize!17451 Int)) (Empty!8610) )
))
(declare-datatypes ((BalanceConc!16948 0))(
  ( (BalanceConc!16949 (c!358284 Conc!8610)) )
))
(declare-datatypes ((Regex!6579 0))(
  ( (ElementMatch!6579 (c!358285 C!13304)) (Concat!10973 (regOne!13670 Regex!6579) (regTwo!13670 Regex!6579)) (EmptyExpr!6579) (Star!6579 (reg!6908 Regex!6579)) (EmptyLang!6579) (Union!6579 (regOne!13671 Regex!6579) (regTwo!13671 Regex!6579)) )
))
(declare-datatypes ((String!29069 0))(
  ( (String!29070 (value!134402 String)) )
))
(declare-datatypes ((TokenValueInjection!8326 0))(
  ( (TokenValueInjection!8327 (toValue!5973 Int) (toChars!5832 Int)) )
))
(declare-datatypes ((Rule!8262 0))(
  ( (Rule!8263 (regex!4231 Regex!6579) (tag!4721 String!29069) (isSeparator!4231 Bool) (transformation!4231 TokenValueInjection!8326)) )
))
(declare-datatypes ((List!26777 0))(
  ( (Nil!26683) (Cons!26683 (h!32084 Rule!8262) (t!201005 List!26777)) )
))
(declare-fun rules!1750 () List!26777)

(declare-fun b!2252807 () Bool)

(declare-fun tp!711796 () Bool)

(declare-fun inv!36218 (String!29069) Bool)

(declare-fun inv!36221 (TokenValueInjection!8326) Bool)

(assert (=> b!2252807 (= e!1441607 (and tp!711796 (inv!36218 (tag!4721 (h!32084 rules!1750))) (inv!36221 (transformation!4231 (h!32084 rules!1750))) e!1441598))))

(declare-fun b!2252808 () Bool)

(declare-fun e!1441600 () Bool)

(declare-fun tp!711801 () Bool)

(declare-fun e!1441606 () Bool)

(declare-datatypes ((Token!7940 0))(
  ( (Token!7941 (value!134403 TokenValue!4393) (rule!6535 Rule!8262) (size!20886 Int) (originalCharacters!5001 List!26776)) )
))
(declare-datatypes ((List!26778 0))(
  ( (Nil!26684) (Cons!26684 (h!32085 Token!7940) (t!201006 List!26778)) )
))
(declare-fun tokens!456 () List!26778)

(assert (=> b!2252808 (= e!1441606 (and tp!711801 (inv!36218 (tag!4721 (rule!6535 (h!32085 tokens!456)))) (inv!36221 (transformation!4231 (rule!6535 (h!32085 tokens!456)))) e!1441600))))

(declare-fun b!2252809 () Bool)

(declare-fun e!1441602 () Bool)

(assert (=> b!2252809 (= e!1441597 e!1441602)))

(declare-fun res!962558 () Bool)

(assert (=> b!2252809 (=> (not res!962558) (not e!1441602))))

(declare-datatypes ((IArray!17227 0))(
  ( (IArray!17228 (innerList!8671 List!26778)) )
))
(declare-datatypes ((Conc!8611 0))(
  ( (Node!8611 (left!20271 Conc!8611) (right!20601 Conc!8611) (csize!17452 Int) (cheight!8822 Int)) (Leaf!12712 (xs!11553 IArray!17227) (csize!17453 Int)) (Empty!8611) )
))
(declare-datatypes ((BalanceConc!16950 0))(
  ( (BalanceConc!16951 (c!358286 Conc!8611)) )
))
(declare-datatypes ((tuple2!26194 0))(
  ( (tuple2!26195 (_1!15607 BalanceConc!16950) (_2!15607 BalanceConc!16948)) )
))
(declare-fun lt!837323 () tuple2!26194)

(declare-fun suffix!886 () List!26776)

(declare-datatypes ((tuple2!26196 0))(
  ( (tuple2!26197 (_1!15608 List!26778) (_2!15608 List!26776)) )
))
(declare-fun list!10249 (BalanceConc!16950) List!26778)

(declare-fun list!10250 (BalanceConc!16948) List!26776)

(assert (=> b!2252809 (= res!962558 (= (tuple2!26197 (list!10249 (_1!15607 lt!837323)) (list!10250 (_2!15607 lt!837323))) (tuple2!26197 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26776)

(declare-fun lex!1667 (LexerInterface!3828 List!26777 BalanceConc!16948) tuple2!26194)

(declare-fun seqFromList!2935 (List!26776) BalanceConc!16948)

(assert (=> b!2252809 (= lt!837323 (lex!1667 thiss!16613 rules!1750 (seqFromList!2935 input!1722)))))

(declare-fun b!2252810 () Bool)

(declare-fun res!962567 () Bool)

(declare-fun e!1441616 () Bool)

(assert (=> b!2252810 (=> (not res!962567) (not e!1441616))))

(declare-fun otherP!12 () List!26776)

(declare-fun isPrefix!2221 (List!26776 List!26776) Bool)

(assert (=> b!2252810 (= res!962567 (isPrefix!2221 otherP!12 input!1722))))

(declare-fun b!2252811 () Bool)

(assert (=> b!2252811 (= e!1441602 e!1441616)))

(declare-fun res!962560 () Bool)

(assert (=> b!2252811 (=> (not res!962560) (not e!1441616))))

(declare-fun e!1441596 () Bool)

(assert (=> b!2252811 (= res!962560 e!1441596)))

(declare-fun res!962569 () Bool)

(assert (=> b!2252811 (=> res!962569 e!1441596)))

(declare-fun lt!837327 () Bool)

(assert (=> b!2252811 (= res!962569 lt!837327)))

(declare-fun isEmpty!15051 (List!26778) Bool)

(assert (=> b!2252811 (= lt!837327 (isEmpty!15051 tokens!456))))

(declare-fun b!2252812 () Bool)

(declare-fun e!1441623 () Bool)

(declare-fun tp!711794 () Bool)

(declare-fun otherR!12 () Rule!8262)

(assert (=> b!2252812 (= e!1441610 (and tp!711794 (inv!36218 (tag!4721 otherR!12)) (inv!36221 (transformation!4231 otherR!12)) e!1441623))))

(declare-fun b!2252813 () Bool)

(declare-fun e!1441613 () Bool)

(declare-fun e!1441618 () Bool)

(assert (=> b!2252813 (= e!1441613 e!1441618)))

(declare-fun res!962565 () Bool)

(assert (=> b!2252813 (=> res!962565 e!1441618)))

(declare-fun r!2363 () Rule!8262)

(declare-fun getIndex!252 (List!26777 Rule!8262) Int)

(assert (=> b!2252813 (= res!962565 (<= (getIndex!252 rules!1750 r!2363) (getIndex!252 rules!1750 otherR!12)))))

(declare-fun ruleValid!1323 (LexerInterface!3828 Rule!8262) Bool)

(assert (=> b!2252813 (ruleValid!1323 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39620 0))(
  ( (Unit!39621) )
))
(declare-fun lt!837331 () Unit!39620)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!730 (LexerInterface!3828 Rule!8262 List!26777) Unit!39620)

(assert (=> b!2252813 (= lt!837331 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!730 thiss!16613 otherR!12 rules!1750))))

(declare-fun tp!711795 () Bool)

(declare-fun e!1441595 () Bool)

(declare-fun b!2252814 () Bool)

(declare-fun inv!21 (TokenValue!4393) Bool)

(assert (=> b!2252814 (= e!1441595 (and (inv!21 (value!134403 (h!32085 tokens!456))) e!1441606 tp!711795))))

(declare-fun b!2252815 () Bool)

(declare-fun e!1441619 () Bool)

(assert (=> b!2252815 (= e!1441619 true)))

(declare-fun lt!837325 () Bool)

(declare-fun lt!837330 () List!26776)

(assert (=> b!2252815 (= lt!837325 (isPrefix!2221 lt!837330 input!1722))))

(declare-fun b!2252816 () Bool)

(declare-fun tp_is_empty!10379 () Bool)

(declare-fun tp!711790 () Bool)

(assert (=> b!2252816 (= e!1441608 (and tp_is_empty!10379 tp!711790))))

(declare-fun b!2252817 () Bool)

(declare-fun e!1441603 () Bool)

(declare-fun matchR!2840 (Regex!6579 List!26776) Bool)

(declare-fun charsOf!2619 (Token!7940) BalanceConc!16948)

(declare-fun head!4800 (List!26778) Token!7940)

(assert (=> b!2252817 (= e!1441603 (not (matchR!2840 (regex!4231 r!2363) (list!10250 (charsOf!2619 (head!4800 tokens!456))))))))

(declare-fun b!2252818 () Bool)

(declare-fun e!1441601 () Bool)

(assert (=> b!2252818 (= e!1441618 e!1441601)))

(declare-fun res!962555 () Bool)

(assert (=> b!2252818 (=> res!962555 e!1441601)))

(declare-datatypes ((tuple2!26198 0))(
  ( (tuple2!26199 (_1!15609 Token!7940) (_2!15609 List!26776)) )
))
(declare-fun lt!837328 () tuple2!26198)

(assert (=> b!2252818 (= res!962555 (not (= (h!32085 tokens!456) (_1!15609 lt!837328))))))

(declare-datatypes ((Option!5207 0))(
  ( (None!5206) (Some!5206 (v!30228 tuple2!26198)) )
))
(declare-fun get!8054 (Option!5207) tuple2!26198)

(declare-fun maxPrefix!2116 (LexerInterface!3828 List!26777 List!26776) Option!5207)

(assert (=> b!2252818 (= lt!837328 (get!8054 (maxPrefix!2116 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2252819 (= e!1441600 (and tp!711791 tp!711788))))

(declare-fun b!2252820 () Bool)

(declare-fun tp!711800 () Bool)

(assert (=> b!2252820 (= e!1441617 (and tp_is_empty!10379 tp!711800))))

(declare-fun b!2252821 () Bool)

(assert (=> b!2252821 (= e!1441601 e!1441619)))

(declare-fun res!962557 () Bool)

(assert (=> b!2252821 (=> res!962557 e!1441619)))

(declare-fun size!20887 (List!26776) Int)

(assert (=> b!2252821 (= res!962557 (not (= (size!20887 otherP!12) (size!20887 lt!837330))))))

(declare-fun lt!837326 () List!26776)

(assert (=> b!2252821 (= (_2!15609 lt!837328) lt!837326)))

(declare-fun lt!837332 () Unit!39620)

(declare-fun lemmaSamePrefixThenSameSuffix!976 (List!26776 List!26776 List!26776 List!26776 List!26776) Unit!39620)

(assert (=> b!2252821 (= lt!837332 (lemmaSamePrefixThenSameSuffix!976 lt!837330 (_2!15609 lt!837328) lt!837330 lt!837326 input!1722))))

(declare-fun getSuffix!1056 (List!26776 List!26776) List!26776)

(assert (=> b!2252821 (= lt!837326 (getSuffix!1056 input!1722 lt!837330))))

(declare-fun ++!6503 (List!26776 List!26776) List!26776)

(assert (=> b!2252821 (isPrefix!2221 lt!837330 (++!6503 lt!837330 (_2!15609 lt!837328)))))

(declare-fun lt!837324 () Unit!39620)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1466 (List!26776 List!26776) Unit!39620)

(assert (=> b!2252821 (= lt!837324 (lemmaConcatTwoListThenFirstIsPrefix!1466 lt!837330 (_2!15609 lt!837328)))))

(assert (=> b!2252821 (= lt!837330 (list!10250 (charsOf!2619 (h!32085 tokens!456))))))

(assert (=> b!2252822 (= e!1441623 (and tp!711799 tp!711797))))

(declare-fun b!2252823 () Bool)

(declare-fun res!962563 () Bool)

(assert (=> b!2252823 (=> (not res!962563) (not e!1441597))))

(declare-fun isEmpty!15052 (List!26777) Bool)

(assert (=> b!2252823 (= res!962563 (not (isEmpty!15052 rules!1750)))))

(declare-fun b!2252824 () Bool)

(declare-fun res!962566 () Bool)

(assert (=> b!2252824 (=> (not res!962566) (not e!1441597))))

(declare-fun rulesInvariant!3330 (LexerInterface!3828 List!26777) Bool)

(assert (=> b!2252824 (= res!962566 (rulesInvariant!3330 thiss!16613 rules!1750))))

(declare-fun b!2252825 () Bool)

(declare-fun tp!711803 () Bool)

(assert (=> b!2252825 (= e!1441621 (and tp_is_empty!10379 tp!711803))))

(declare-fun b!2252826 () Bool)

(declare-fun size!20888 (BalanceConc!16948) Int)

(assert (=> b!2252826 (= e!1441596 (<= (size!20888 (charsOf!2619 (head!4800 tokens!456))) (size!20887 otherP!12)))))

(assert (=> b!2252827 (= e!1441598 (and tp!711798 tp!711789))))

(declare-fun b!2252828 () Bool)

(assert (=> b!2252828 (= e!1441616 (not e!1441613))))

(declare-fun res!962556 () Bool)

(assert (=> b!2252828 (=> res!962556 e!1441613)))

(assert (=> b!2252828 (= res!962556 e!1441603)))

(declare-fun res!962554 () Bool)

(assert (=> b!2252828 (=> (not res!962554) (not e!1441603))))

(assert (=> b!2252828 (= res!962554 (not lt!837327))))

(assert (=> b!2252828 (ruleValid!1323 thiss!16613 r!2363)))

(declare-fun lt!837329 () Unit!39620)

(assert (=> b!2252828 (= lt!837329 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!730 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2252829 () Bool)

(declare-fun res!962559 () Bool)

(assert (=> b!2252829 (=> (not res!962559) (not e!1441616))))

(declare-fun e!1441615 () Bool)

(assert (=> b!2252829 (= res!962559 e!1441615)))

(declare-fun res!962564 () Bool)

(assert (=> b!2252829 (=> res!962564 e!1441615)))

(assert (=> b!2252829 (= res!962564 lt!837327)))

(declare-fun tp!711804 () Bool)

(declare-fun b!2252830 () Bool)

(declare-fun e!1441609 () Bool)

(assert (=> b!2252830 (= e!1441605 (and tp!711804 (inv!36218 (tag!4721 r!2363)) (inv!36221 (transformation!4231 r!2363)) e!1441609))))

(assert (=> b!2252831 (= e!1441609 (and tp!711792 tp!711805))))

(declare-fun b!2252832 () Bool)

(declare-fun res!962562 () Bool)

(assert (=> b!2252832 (=> (not res!962562) (not e!1441597))))

(declare-fun contains!4583 (List!26777 Rule!8262) Bool)

(assert (=> b!2252832 (= res!962562 (contains!4583 rules!1750 r!2363))))

(declare-fun b!2252833 () Bool)

(declare-fun tp!711802 () Bool)

(assert (=> b!2252833 (= e!1441599 (and e!1441607 tp!711802))))

(declare-fun b!2252834 () Bool)

(declare-fun res!962570 () Bool)

(assert (=> b!2252834 (=> (not res!962570) (not e!1441597))))

(assert (=> b!2252834 (= res!962570 (contains!4583 rules!1750 otherR!12))))

(declare-fun b!2252835 () Bool)

(declare-fun res!962553 () Bool)

(assert (=> b!2252835 (=> res!962553 e!1441618)))

(assert (=> b!2252835 (= res!962553 ((_ is Nil!26684) tokens!456))))

(declare-fun b!2252836 () Bool)

(declare-fun res!962568 () Bool)

(assert (=> b!2252836 (=> (not res!962568) (not e!1441616))))

(assert (=> b!2252836 (= res!962568 (not (= r!2363 otherR!12)))))

(declare-fun b!2252837 () Bool)

(declare-fun tp!711793 () Bool)

(declare-fun inv!36222 (Token!7940) Bool)

(assert (=> b!2252837 (= e!1441612 (and (inv!36222 (h!32085 tokens!456)) e!1441595 tp!711793))))

(declare-fun b!2252838 () Bool)

(assert (=> b!2252838 (= e!1441615 (= (rule!6535 (head!4800 tokens!456)) r!2363))))

(assert (= (and start!219872 res!962561) b!2252823))

(assert (= (and b!2252823 res!962563) b!2252824))

(assert (= (and b!2252824 res!962566) b!2252832))

(assert (= (and b!2252832 res!962562) b!2252834))

(assert (= (and b!2252834 res!962570) b!2252809))

(assert (= (and b!2252809 res!962558) b!2252811))

(assert (= (and b!2252811 (not res!962569)) b!2252826))

(assert (= (and b!2252811 res!962560) b!2252829))

(assert (= (and b!2252829 (not res!962564)) b!2252838))

(assert (= (and b!2252829 res!962559) b!2252810))

(assert (= (and b!2252810 res!962567) b!2252836))

(assert (= (and b!2252836 res!962568) b!2252828))

(assert (= (and b!2252828 res!962554) b!2252817))

(assert (= (and b!2252828 (not res!962556)) b!2252813))

(assert (= (and b!2252813 (not res!962565)) b!2252835))

(assert (= (and b!2252835 (not res!962553)) b!2252818))

(assert (= (and b!2252818 (not res!962555)) b!2252821))

(assert (= (and b!2252821 (not res!962557)) b!2252815))

(assert (= (and start!219872 ((_ is Cons!26682) input!1722)) b!2252820))

(assert (= b!2252812 b!2252822))

(assert (= start!219872 b!2252812))

(assert (= (and start!219872 ((_ is Cons!26682) suffix!886)) b!2252825))

(assert (= (and start!219872 ((_ is Cons!26682) otherP!12)) b!2252816))

(assert (= b!2252807 b!2252827))

(assert (= b!2252833 b!2252807))

(assert (= (and start!219872 ((_ is Cons!26683) rules!1750)) b!2252833))

(assert (= b!2252830 b!2252831))

(assert (= start!219872 b!2252830))

(assert (= b!2252808 b!2252819))

(assert (= b!2252814 b!2252808))

(assert (= b!2252837 b!2252814))

(assert (= (and start!219872 ((_ is Cons!26684) tokens!456)) b!2252837))

(declare-fun m!2683581 () Bool)

(assert (=> b!2252823 m!2683581))

(declare-fun m!2683583 () Bool)

(assert (=> b!2252811 m!2683583))

(declare-fun m!2683585 () Bool)

(assert (=> b!2252818 m!2683585))

(assert (=> b!2252818 m!2683585))

(declare-fun m!2683587 () Bool)

(assert (=> b!2252818 m!2683587))

(declare-fun m!2683589 () Bool)

(assert (=> b!2252838 m!2683589))

(assert (=> b!2252826 m!2683589))

(assert (=> b!2252826 m!2683589))

(declare-fun m!2683591 () Bool)

(assert (=> b!2252826 m!2683591))

(assert (=> b!2252826 m!2683591))

(declare-fun m!2683593 () Bool)

(assert (=> b!2252826 m!2683593))

(declare-fun m!2683595 () Bool)

(assert (=> b!2252826 m!2683595))

(declare-fun m!2683597 () Bool)

(assert (=> b!2252824 m!2683597))

(assert (=> b!2252817 m!2683589))

(assert (=> b!2252817 m!2683589))

(assert (=> b!2252817 m!2683591))

(assert (=> b!2252817 m!2683591))

(declare-fun m!2683599 () Bool)

(assert (=> b!2252817 m!2683599))

(assert (=> b!2252817 m!2683599))

(declare-fun m!2683601 () Bool)

(assert (=> b!2252817 m!2683601))

(declare-fun m!2683603 () Bool)

(assert (=> b!2252812 m!2683603))

(declare-fun m!2683605 () Bool)

(assert (=> b!2252812 m!2683605))

(declare-fun m!2683607 () Bool)

(assert (=> b!2252830 m!2683607))

(declare-fun m!2683609 () Bool)

(assert (=> b!2252830 m!2683609))

(declare-fun m!2683611 () Bool)

(assert (=> b!2252807 m!2683611))

(declare-fun m!2683613 () Bool)

(assert (=> b!2252807 m!2683613))

(declare-fun m!2683615 () Bool)

(assert (=> b!2252813 m!2683615))

(declare-fun m!2683617 () Bool)

(assert (=> b!2252813 m!2683617))

(declare-fun m!2683619 () Bool)

(assert (=> b!2252813 m!2683619))

(declare-fun m!2683621 () Bool)

(assert (=> b!2252813 m!2683621))

(declare-fun m!2683623 () Bool)

(assert (=> b!2252810 m!2683623))

(declare-fun m!2683625 () Bool)

(assert (=> b!2252809 m!2683625))

(declare-fun m!2683627 () Bool)

(assert (=> b!2252809 m!2683627))

(declare-fun m!2683629 () Bool)

(assert (=> b!2252809 m!2683629))

(assert (=> b!2252809 m!2683629))

(declare-fun m!2683631 () Bool)

(assert (=> b!2252809 m!2683631))

(declare-fun m!2683633 () Bool)

(assert (=> b!2252834 m!2683633))

(declare-fun m!2683635 () Bool)

(assert (=> b!2252814 m!2683635))

(declare-fun m!2683637 () Bool)

(assert (=> b!2252815 m!2683637))

(declare-fun m!2683639 () Bool)

(assert (=> b!2252821 m!2683639))

(declare-fun m!2683641 () Bool)

(assert (=> b!2252821 m!2683641))

(assert (=> b!2252821 m!2683595))

(declare-fun m!2683643 () Bool)

(assert (=> b!2252821 m!2683643))

(declare-fun m!2683645 () Bool)

(assert (=> b!2252821 m!2683645))

(declare-fun m!2683647 () Bool)

(assert (=> b!2252821 m!2683647))

(declare-fun m!2683649 () Bool)

(assert (=> b!2252821 m!2683649))

(declare-fun m!2683651 () Bool)

(assert (=> b!2252821 m!2683651))

(assert (=> b!2252821 m!2683649))

(assert (=> b!2252821 m!2683639))

(declare-fun m!2683653 () Bool)

(assert (=> b!2252821 m!2683653))

(declare-fun m!2683655 () Bool)

(assert (=> b!2252808 m!2683655))

(declare-fun m!2683657 () Bool)

(assert (=> b!2252808 m!2683657))

(declare-fun m!2683659 () Bool)

(assert (=> b!2252828 m!2683659))

(declare-fun m!2683661 () Bool)

(assert (=> b!2252828 m!2683661))

(declare-fun m!2683663 () Bool)

(assert (=> b!2252832 m!2683663))

(declare-fun m!2683665 () Bool)

(assert (=> b!2252837 m!2683665))

(check-sat (not b!2252828) b_and!176533 b_and!176539 (not b_next!66737) b_and!176543 (not b!2252815) tp_is_empty!10379 (not b_next!66743) (not b!2252833) (not b!2252816) (not b!2252813) (not b_next!66733) b_and!176535 b_and!176541 (not b!2252809) (not b!2252814) (not b!2252807) (not b!2252832) b_and!176529 (not b!2252808) (not b!2252837) (not b_next!66735) (not b!2252838) (not b!2252817) (not b!2252820) (not b!2252811) (not b_next!66741) (not b_next!66739) (not b!2252823) (not b!2252834) (not b!2252810) (not b_next!66745) (not b!2252825) (not b!2252821) (not b!2252830) (not b_next!66747) b_and!176537 b_and!176531 (not b!2252812) (not b!2252824) (not b!2252826) (not b!2252818))
(check-sat b_and!176541 b_and!176533 b_and!176539 (not b_next!66737) b_and!176529 b_and!176543 (not b_next!66735) (not b_next!66743) (not b_next!66745) (not b_next!66733) b_and!176535 (not b_next!66741) (not b_next!66739) (not b_next!66747) b_and!176537 b_and!176531)
