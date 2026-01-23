; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276286 () Bool)

(assert start!276286)

(declare-fun b!2840880 () Bool)

(declare-fun b_free!82381 () Bool)

(declare-fun b_next!83085 () Bool)

(assert (=> b!2840880 (= b_free!82381 (not b_next!83085))))

(declare-fun tp!910074 () Bool)

(declare-fun b_and!208443 () Bool)

(assert (=> b!2840880 (= tp!910074 b_and!208443)))

(declare-fun b_free!82383 () Bool)

(declare-fun b_next!83087 () Bool)

(assert (=> b!2840880 (= b_free!82383 (not b_next!83087))))

(declare-fun tp!910070 () Bool)

(declare-fun b_and!208445 () Bool)

(assert (=> b!2840880 (= tp!910070 b_and!208445)))

(declare-fun b!2840873 () Bool)

(declare-fun b_free!82385 () Bool)

(declare-fun b_next!83089 () Bool)

(assert (=> b!2840873 (= b_free!82385 (not b_next!83089))))

(declare-fun tp!910067 () Bool)

(declare-fun b_and!208447 () Bool)

(assert (=> b!2840873 (= tp!910067 b_and!208447)))

(declare-fun b_free!82387 () Bool)

(declare-fun b_next!83091 () Bool)

(assert (=> b!2840873 (= b_free!82387 (not b_next!83091))))

(declare-fun tp!910068 () Bool)

(declare-fun b_and!208449 () Bool)

(assert (=> b!2840873 (= tp!910068 b_and!208449)))

(declare-fun b!2840879 () Bool)

(declare-fun b_free!82389 () Bool)

(declare-fun b_next!83093 () Bool)

(assert (=> b!2840879 (= b_free!82389 (not b_next!83093))))

(declare-fun tp!910073 () Bool)

(declare-fun b_and!208451 () Bool)

(assert (=> b!2840879 (= tp!910073 b_and!208451)))

(declare-fun b_free!82391 () Bool)

(declare-fun b_next!83095 () Bool)

(assert (=> b!2840879 (= b_free!82391 (not b_next!83095))))

(declare-fun tp!910076 () Bool)

(declare-fun b_and!208453 () Bool)

(assert (=> b!2840879 (= tp!910076 b_and!208453)))

(declare-fun e!1799776 () Bool)

(assert (=> b!2840873 (= e!1799776 (and tp!910067 tp!910068))))

(declare-fun b!2840874 () Bool)

(declare-fun tp!910075 () Bool)

(declare-datatypes ((C!17082 0))(
  ( (C!17083 (val!10553 Int)) )
))
(declare-datatypes ((List!33757 0))(
  ( (Nil!33633) (Cons!33633 (h!39053 C!17082) (t!232550 List!33757)) )
))
(declare-datatypes ((Regex!8450 0))(
  ( (ElementMatch!8450 (c!458608 C!17082)) (Concat!13739 (regOne!17412 Regex!8450) (regTwo!17412 Regex!8450)) (EmptyExpr!8450) (Star!8450 (reg!8779 Regex!8450)) (EmptyLang!8450) (Union!8450 (regOne!17413 Regex!8450) (regTwo!17413 Regex!8450)) )
))
(declare-datatypes ((String!36968 0))(
  ( (String!36969 (value!162526 String)) )
))
(declare-datatypes ((List!33758 0))(
  ( (Nil!33634) (Cons!33634 (h!39054 (_ BitVec 16)) (t!232551 List!33758)) )
))
(declare-datatypes ((TokenValue!5289 0))(
  ( (FloatLiteralValue!10578 (text!37468 List!33758)) (TokenValueExt!5288 (__x!22316 Int)) (Broken!26445 (value!162527 List!33758)) (Object!5412) (End!5289) (Def!5289) (Underscore!5289) (Match!5289) (Else!5289) (Error!5289) (Case!5289) (If!5289) (Extends!5289) (Abstract!5289) (Class!5289) (Val!5289) (DelimiterValue!10578 (del!5349 List!33758)) (KeywordValue!5295 (value!162528 List!33758)) (CommentValue!10578 (value!162529 List!33758)) (WhitespaceValue!10578 (value!162530 List!33758)) (IndentationValue!5289 (value!162531 List!33758)) (String!36970) (Int32!5289) (Broken!26446 (value!162532 List!33758)) (Boolean!5290) (Unit!47473) (OperatorValue!5292 (op!5349 List!33758)) (IdentifierValue!10578 (value!162533 List!33758)) (IdentifierValue!10579 (value!162534 List!33758)) (WhitespaceValue!10579 (value!162535 List!33758)) (True!10578) (False!10578) (Broken!26447 (value!162536 List!33758)) (Broken!26448 (value!162537 List!33758)) (True!10579) (RightBrace!5289) (RightBracket!5289) (Colon!5289) (Null!5289) (Comma!5289) (LeftBracket!5289) (False!10579) (LeftBrace!5289) (ImaginaryLiteralValue!5289 (text!37469 List!33758)) (StringLiteralValue!15867 (value!162538 List!33758)) (EOFValue!5289 (value!162539 List!33758)) (IdentValue!5289 (value!162540 List!33758)) (DelimiterValue!10579 (value!162541 List!33758)) (DedentValue!5289 (value!162542 List!33758)) (NewLineValue!5289 (value!162543 List!33758)) (IntegerValue!15867 (value!162544 (_ BitVec 32)) (text!37470 List!33758)) (IntegerValue!15868 (value!162545 Int) (text!37471 List!33758)) (Times!5289) (Or!5289) (Equal!5289) (Minus!5289) (Broken!26449 (value!162546 List!33758)) (And!5289) (Div!5289) (LessEqual!5289) (Mod!5289) (Concat!13740) (Not!5289) (Plus!5289) (SpaceValue!5289 (value!162547 List!33758)) (IntegerValue!15869 (value!162548 Int) (text!37472 List!33758)) (StringLiteralValue!15868 (text!37473 List!33758)) (FloatLiteralValue!10579 (text!37474 List!33758)) (BytesLiteralValue!5289 (value!162549 List!33758)) (CommentValue!10579 (value!162550 List!33758)) (StringLiteralValue!15869 (value!162551 List!33758)) (ErrorTokenValue!5289 (msg!5350 List!33758)) )
))
(declare-datatypes ((IArray!20883 0))(
  ( (IArray!20884 (innerList!10499 List!33757)) )
))
(declare-datatypes ((Conc!10439 0))(
  ( (Node!10439 (left!25352 Conc!10439) (right!25682 Conc!10439) (csize!21108 Int) (cheight!10650 Int)) (Leaf!15877 (xs!13551 IArray!20883) (csize!21109 Int)) (Empty!10439) )
))
(declare-datatypes ((BalanceConc!20516 0))(
  ( (BalanceConc!20517 (c!458609 Conc!10439)) )
))
(declare-datatypes ((TokenValueInjection!10006 0))(
  ( (TokenValueInjection!10007 (toValue!7101 Int) (toChars!6960 Int)) )
))
(declare-datatypes ((Rule!9918 0))(
  ( (Rule!9919 (regex!5059 Regex!8450) (tag!5563 String!36968) (isSeparator!5059 Bool) (transformation!5059 TokenValueInjection!10006)) )
))
(declare-datatypes ((List!33759 0))(
  ( (Nil!33635) (Cons!33635 (h!39055 Rule!9918) (t!232552 List!33759)) )
))
(declare-fun rules!4246 () List!33759)

(declare-fun e!1799769 () Bool)

(declare-fun e!1799771 () Bool)

(declare-fun inv!45607 (String!36968) Bool)

(declare-fun inv!45610 (TokenValueInjection!10006) Bool)

(assert (=> b!2840874 (= e!1799771 (and tp!910075 (inv!45607 (tag!5563 (h!39055 rules!4246))) (inv!45610 (transformation!5059 (h!39055 rules!4246))) e!1799769))))

(declare-fun e!1799764 () Bool)

(declare-fun tp!910063 () Bool)

(declare-fun e!1799762 () Bool)

(declare-fun b!2840875 () Bool)

(declare-datatypes ((Token!9520 0))(
  ( (Token!9521 (value!162552 TokenValue!5289) (rule!7487 Rule!9918) (size!26108 Int) (originalCharacters!5791 List!33757)) )
))
(declare-datatypes ((List!33760 0))(
  ( (Nil!33636) (Cons!33636 (h!39056 Token!9520) (t!232553 List!33760)) )
))
(declare-fun tokensBis!14 () List!33760)

(declare-fun inv!45611 (Token!9520) Bool)

(assert (=> b!2840875 (= e!1799764 (and (inv!45611 (h!39056 tokensBis!14)) e!1799762 tp!910063))))

(declare-fun b!2840876 () Bool)

(declare-fun tp!910065 () Bool)

(declare-fun e!1799775 () Bool)

(declare-fun e!1799777 () Bool)

(declare-fun tokens!612 () List!33760)

(assert (=> b!2840876 (= e!1799775 (and (inv!45611 (h!39056 tokens!612)) e!1799777 tp!910065))))

(declare-fun b!2840877 () Bool)

(declare-fun e!1799773 () Bool)

(assert (=> b!2840877 (= e!1799773 (and (not (is-Nil!33636 tokensBis!14)) (not (is-Cons!33636 tokens!612))))))

(declare-fun res!1181916 () Bool)

(assert (=> start!276286 (=> (not res!1181916) (not e!1799773))))

(declare-datatypes ((LexerInterface!4649 0))(
  ( (LexerInterfaceExt!4646 (__x!22317 Int)) (Lexer!4647) )
))
(declare-fun thiss!27264 () LexerInterface!4649)

(assert (=> start!276286 (= res!1181916 (is-Lexer!4647 thiss!27264))))

(assert (=> start!276286 e!1799773))

(assert (=> start!276286 true))

(declare-fun e!1799778 () Bool)

(assert (=> start!276286 e!1799778))

(assert (=> start!276286 e!1799764))

(assert (=> start!276286 e!1799775))

(declare-fun b!2840878 () Bool)

(declare-fun res!1181915 () Bool)

(assert (=> b!2840878 (=> (not res!1181915) (not e!1799773))))

(declare-fun rulesProduceEachTokenIndividuallyList!1690 (LexerInterface!4649 List!33759 List!33760) Bool)

(assert (=> b!2840878 (= res!1181915 (rulesProduceEachTokenIndividuallyList!1690 thiss!27264 rules!4246 tokens!612))))

(declare-fun e!1799767 () Bool)

(assert (=> b!2840879 (= e!1799767 (and tp!910073 tp!910076))))

(assert (=> b!2840880 (= e!1799769 (and tp!910074 tp!910070))))

(declare-fun b!2840881 () Bool)

(declare-fun res!1181917 () Bool)

(assert (=> b!2840881 (=> (not res!1181917) (not e!1799773))))

(declare-fun subseq!525 (List!33760 List!33760) Bool)

(assert (=> b!2840881 (= res!1181917 (subseq!525 tokensBis!14 tokens!612))))

(declare-fun b!2840882 () Bool)

(declare-fun res!1181914 () Bool)

(assert (=> b!2840882 (=> (not res!1181914) (not e!1799773))))

(declare-fun rulesInvariant!4065 (LexerInterface!4649 List!33759) Bool)

(assert (=> b!2840882 (= res!1181914 (rulesInvariant!4065 thiss!27264 rules!4246))))

(declare-fun b!2840883 () Bool)

(declare-fun tp!910064 () Bool)

(assert (=> b!2840883 (= e!1799778 (and e!1799771 tp!910064))))

(declare-fun b!2840884 () Bool)

(declare-fun tp!910069 () Bool)

(declare-fun e!1799768 () Bool)

(assert (=> b!2840884 (= e!1799768 (and tp!910069 (inv!45607 (tag!5563 (rule!7487 (h!39056 tokens!612)))) (inv!45610 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) e!1799767))))

(declare-fun b!2840885 () Bool)

(declare-fun e!1799772 () Bool)

(declare-fun tp!910072 () Bool)

(assert (=> b!2840885 (= e!1799772 (and tp!910072 (inv!45607 (tag!5563 (rule!7487 (h!39056 tokensBis!14)))) (inv!45610 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) e!1799776))))

(declare-fun b!2840886 () Bool)

(declare-fun res!1181918 () Bool)

(assert (=> b!2840886 (=> (not res!1181918) (not e!1799773))))

(declare-fun isEmpty!18520 (List!33759) Bool)

(assert (=> b!2840886 (= res!1181918 (not (isEmpty!18520 rules!4246)))))

(declare-fun tp!910071 () Bool)

(declare-fun b!2840887 () Bool)

(declare-fun inv!21 (TokenValue!5289) Bool)

(assert (=> b!2840887 (= e!1799777 (and (inv!21 (value!162552 (h!39056 tokens!612))) e!1799768 tp!910071))))

(declare-fun b!2840888 () Bool)

(declare-fun tp!910066 () Bool)

(assert (=> b!2840888 (= e!1799762 (and (inv!21 (value!162552 (h!39056 tokensBis!14))) e!1799772 tp!910066))))

(assert (= (and start!276286 res!1181916) b!2840886))

(assert (= (and b!2840886 res!1181918) b!2840882))

(assert (= (and b!2840882 res!1181914) b!2840881))

(assert (= (and b!2840881 res!1181917) b!2840878))

(assert (= (and b!2840878 res!1181915) b!2840877))

(assert (= b!2840874 b!2840880))

(assert (= b!2840883 b!2840874))

(assert (= (and start!276286 (is-Cons!33635 rules!4246)) b!2840883))

(assert (= b!2840885 b!2840873))

(assert (= b!2840888 b!2840885))

(assert (= b!2840875 b!2840888))

(assert (= (and start!276286 (is-Cons!33636 tokensBis!14)) b!2840875))

(assert (= b!2840884 b!2840879))

(assert (= b!2840887 b!2840884))

(assert (= b!2840876 b!2840887))

(assert (= (and start!276286 (is-Cons!33636 tokens!612)) b!2840876))

(declare-fun m!3269119 () Bool)

(assert (=> b!2840882 m!3269119))

(declare-fun m!3269121 () Bool)

(assert (=> b!2840875 m!3269121))

(declare-fun m!3269123 () Bool)

(assert (=> b!2840886 m!3269123))

(declare-fun m!3269125 () Bool)

(assert (=> b!2840885 m!3269125))

(declare-fun m!3269127 () Bool)

(assert (=> b!2840885 m!3269127))

(declare-fun m!3269129 () Bool)

(assert (=> b!2840887 m!3269129))

(declare-fun m!3269131 () Bool)

(assert (=> b!2840884 m!3269131))

(declare-fun m!3269133 () Bool)

(assert (=> b!2840884 m!3269133))

(declare-fun m!3269135 () Bool)

(assert (=> b!2840881 m!3269135))

(declare-fun m!3269137 () Bool)

(assert (=> b!2840878 m!3269137))

(declare-fun m!3269139 () Bool)

(assert (=> b!2840876 m!3269139))

(declare-fun m!3269141 () Bool)

(assert (=> b!2840888 m!3269141))

(declare-fun m!3269143 () Bool)

(assert (=> b!2840874 m!3269143))

(declare-fun m!3269145 () Bool)

(assert (=> b!2840874 m!3269145))

(push 1)

(assert b_and!208449)

(assert (not b_next!83085))

(assert (not b_next!83095))

(assert (not b!2840878))

(assert (not b!2840885))

(assert (not b!2840874))

(assert (not b!2840876))

(assert b_and!208453)

(assert (not b!2840888))

(assert b_and!208443)

(assert b_and!208447)

(assert b_and!208445)

(assert (not b_next!83087))

(assert (not b_next!83089))

(assert (not b_next!83093))

(assert b_and!208451)

(assert (not b!2840883))

(assert (not b!2840881))

(assert (not b_next!83091))

(assert (not b!2840887))

(assert (not b!2840875))

(assert (not b!2840886))

(assert (not b!2840884))

(assert (not b!2840882))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208449)

(assert (not b_next!83085))

(assert (not b_next!83095))

(assert b_and!208453)

(assert b_and!208443)

(assert b_and!208447)

(assert (not b_next!83091))

(assert b_and!208445)

(assert (not b_next!83087))

(assert (not b_next!83089))

(assert (not b_next!83093))

(assert b_and!208451)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2840947 () Bool)

(declare-fun e!1799837 () Bool)

(declare-fun inv!17 (TokenValue!5289) Bool)

(assert (=> b!2840947 (= e!1799837 (inv!17 (value!162552 (h!39056 tokens!612))))))

(declare-fun b!2840948 () Bool)

(declare-fun e!1799838 () Bool)

(declare-fun inv!15 (TokenValue!5289) Bool)

(assert (=> b!2840948 (= e!1799838 (inv!15 (value!162552 (h!39056 tokens!612))))))

(declare-fun b!2840949 () Bool)

(declare-fun e!1799836 () Bool)

(declare-fun inv!16 (TokenValue!5289) Bool)

(assert (=> b!2840949 (= e!1799836 (inv!16 (value!162552 (h!39056 tokens!612))))))

(declare-fun d!823800 () Bool)

(declare-fun c!458617 () Bool)

(assert (=> d!823800 (= c!458617 (is-IntegerValue!15867 (value!162552 (h!39056 tokens!612))))))

(assert (=> d!823800 (= (inv!21 (value!162552 (h!39056 tokens!612))) e!1799836)))

(declare-fun b!2840950 () Bool)

(assert (=> b!2840950 (= e!1799836 e!1799837)))

(declare-fun c!458616 () Bool)

(assert (=> b!2840950 (= c!458616 (is-IntegerValue!15868 (value!162552 (h!39056 tokens!612))))))

(declare-fun b!2840951 () Bool)

(declare-fun res!1181941 () Bool)

(assert (=> b!2840951 (=> res!1181941 e!1799838)))

(assert (=> b!2840951 (= res!1181941 (not (is-IntegerValue!15869 (value!162552 (h!39056 tokens!612)))))))

(assert (=> b!2840951 (= e!1799837 e!1799838)))

(assert (= (and d!823800 c!458617) b!2840949))

(assert (= (and d!823800 (not c!458617)) b!2840950))

(assert (= (and b!2840950 c!458616) b!2840947))

(assert (= (and b!2840950 (not c!458616)) b!2840951))

(assert (= (and b!2840951 (not res!1181941)) b!2840948))

(declare-fun m!3269175 () Bool)

(assert (=> b!2840947 m!3269175))

(declare-fun m!3269177 () Bool)

(assert (=> b!2840948 m!3269177))

(declare-fun m!3269179 () Bool)

(assert (=> b!2840949 m!3269179))

(assert (=> b!2840887 d!823800))

(declare-fun d!823802 () Bool)

(declare-fun res!1181946 () Bool)

(declare-fun e!1799841 () Bool)

(assert (=> d!823802 (=> (not res!1181946) (not e!1799841))))

(declare-fun isEmpty!18522 (List!33757) Bool)

(assert (=> d!823802 (= res!1181946 (not (isEmpty!18522 (originalCharacters!5791 (h!39056 tokens!612)))))))

(assert (=> d!823802 (= (inv!45611 (h!39056 tokens!612)) e!1799841)))

(declare-fun b!2840956 () Bool)

(declare-fun res!1181947 () Bool)

(assert (=> b!2840956 (=> (not res!1181947) (not e!1799841))))

(declare-fun list!12537 (BalanceConc!20516) List!33757)

(declare-fun dynLambda!14156 (Int TokenValue!5289) BalanceConc!20516)

(assert (=> b!2840956 (= res!1181947 (= (originalCharacters!5791 (h!39056 tokens!612)) (list!12537 (dynLambda!14156 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (value!162552 (h!39056 tokens!612))))))))

(declare-fun b!2840957 () Bool)

(declare-fun size!26110 (List!33757) Int)

(assert (=> b!2840957 (= e!1799841 (= (size!26108 (h!39056 tokens!612)) (size!26110 (originalCharacters!5791 (h!39056 tokens!612)))))))

(assert (= (and d!823802 res!1181946) b!2840956))

(assert (= (and b!2840956 res!1181947) b!2840957))

(declare-fun b_lambda!85407 () Bool)

(assert (=> (not b_lambda!85407) (not b!2840956)))

(declare-fun t!232559 () Bool)

(declare-fun tb!154901 () Bool)

(assert (=> (and b!2840880 (= (toChars!6960 (transformation!5059 (h!39055 rules!4246))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612))))) t!232559) tb!154901))

(declare-fun b!2840962 () Bool)

(declare-fun e!1799844 () Bool)

(declare-fun tp!910121 () Bool)

(declare-fun inv!45614 (Conc!10439) Bool)

(assert (=> b!2840962 (= e!1799844 (and (inv!45614 (c!458609 (dynLambda!14156 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (value!162552 (h!39056 tokens!612))))) tp!910121))))

(declare-fun result!193246 () Bool)

(declare-fun inv!45615 (BalanceConc!20516) Bool)

(assert (=> tb!154901 (= result!193246 (and (inv!45615 (dynLambda!14156 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (value!162552 (h!39056 tokens!612)))) e!1799844))))

(assert (= tb!154901 b!2840962))

(declare-fun m!3269181 () Bool)

(assert (=> b!2840962 m!3269181))

(declare-fun m!3269183 () Bool)

(assert (=> tb!154901 m!3269183))

(assert (=> b!2840956 t!232559))

(declare-fun b_and!208467 () Bool)

(assert (= b_and!208445 (and (=> t!232559 result!193246) b_and!208467)))

(declare-fun tb!154903 () Bool)

(declare-fun t!232561 () Bool)

(assert (=> (and b!2840873 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612))))) t!232561) tb!154903))

(declare-fun result!193250 () Bool)

(assert (= result!193250 result!193246))

(assert (=> b!2840956 t!232561))

(declare-fun b_and!208469 () Bool)

(assert (= b_and!208449 (and (=> t!232561 result!193250) b_and!208469)))

(declare-fun t!232563 () Bool)

(declare-fun tb!154905 () Bool)

(assert (=> (and b!2840879 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612))))) t!232563) tb!154905))

(declare-fun result!193252 () Bool)

(assert (= result!193252 result!193246))

(assert (=> b!2840956 t!232563))

(declare-fun b_and!208471 () Bool)

(assert (= b_and!208453 (and (=> t!232563 result!193252) b_and!208471)))

(declare-fun m!3269185 () Bool)

(assert (=> d!823802 m!3269185))

(declare-fun m!3269187 () Bool)

(assert (=> b!2840956 m!3269187))

(assert (=> b!2840956 m!3269187))

(declare-fun m!3269189 () Bool)

(assert (=> b!2840956 m!3269189))

(declare-fun m!3269191 () Bool)

(assert (=> b!2840957 m!3269191))

(assert (=> b!2840876 d!823802))

(declare-fun d!823804 () Bool)

(assert (=> d!823804 (= (isEmpty!18520 rules!4246) (is-Nil!33635 rules!4246))))

(assert (=> b!2840886 d!823804))

(declare-fun d!823806 () Bool)

(declare-fun res!1181948 () Bool)

(declare-fun e!1799845 () Bool)

(assert (=> d!823806 (=> (not res!1181948) (not e!1799845))))

(assert (=> d!823806 (= res!1181948 (not (isEmpty!18522 (originalCharacters!5791 (h!39056 tokensBis!14)))))))

(assert (=> d!823806 (= (inv!45611 (h!39056 tokensBis!14)) e!1799845)))

(declare-fun b!2840963 () Bool)

(declare-fun res!1181949 () Bool)

(assert (=> b!2840963 (=> (not res!1181949) (not e!1799845))))

(assert (=> b!2840963 (= res!1181949 (= (originalCharacters!5791 (h!39056 tokensBis!14)) (list!12537 (dynLambda!14156 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (value!162552 (h!39056 tokensBis!14))))))))

(declare-fun b!2840964 () Bool)

(assert (=> b!2840964 (= e!1799845 (= (size!26108 (h!39056 tokensBis!14)) (size!26110 (originalCharacters!5791 (h!39056 tokensBis!14)))))))

(assert (= (and d!823806 res!1181948) b!2840963))

(assert (= (and b!2840963 res!1181949) b!2840964))

(declare-fun b_lambda!85409 () Bool)

(assert (=> (not b_lambda!85409) (not b!2840963)))

(declare-fun tb!154907 () Bool)

(declare-fun t!232565 () Bool)

(assert (=> (and b!2840880 (= (toChars!6960 (transformation!5059 (h!39055 rules!4246))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))) t!232565) tb!154907))

(declare-fun b!2840965 () Bool)

(declare-fun e!1799846 () Bool)

(declare-fun tp!910122 () Bool)

(assert (=> b!2840965 (= e!1799846 (and (inv!45614 (c!458609 (dynLambda!14156 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (value!162552 (h!39056 tokensBis!14))))) tp!910122))))

(declare-fun result!193254 () Bool)

(assert (=> tb!154907 (= result!193254 (and (inv!45615 (dynLambda!14156 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (value!162552 (h!39056 tokensBis!14)))) e!1799846))))

(assert (= tb!154907 b!2840965))

(declare-fun m!3269193 () Bool)

(assert (=> b!2840965 m!3269193))

(declare-fun m!3269195 () Bool)

(assert (=> tb!154907 m!3269195))

(assert (=> b!2840963 t!232565))

(declare-fun b_and!208473 () Bool)

(assert (= b_and!208467 (and (=> t!232565 result!193254) b_and!208473)))

(declare-fun t!232567 () Bool)

(declare-fun tb!154909 () Bool)

(assert (=> (and b!2840873 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))) t!232567) tb!154909))

(declare-fun result!193256 () Bool)

(assert (= result!193256 result!193254))

(assert (=> b!2840963 t!232567))

(declare-fun b_and!208475 () Bool)

(assert (= b_and!208469 (and (=> t!232567 result!193256) b_and!208475)))

(declare-fun tb!154911 () Bool)

(declare-fun t!232569 () Bool)

(assert (=> (and b!2840879 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))) t!232569) tb!154911))

(declare-fun result!193258 () Bool)

(assert (= result!193258 result!193254))

(assert (=> b!2840963 t!232569))

(declare-fun b_and!208477 () Bool)

(assert (= b_and!208471 (and (=> t!232569 result!193258) b_and!208477)))

(declare-fun m!3269197 () Bool)

(assert (=> d!823806 m!3269197))

(declare-fun m!3269199 () Bool)

(assert (=> b!2840963 m!3269199))

(assert (=> b!2840963 m!3269199))

(declare-fun m!3269201 () Bool)

(assert (=> b!2840963 m!3269201))

(declare-fun m!3269203 () Bool)

(assert (=> b!2840964 m!3269203))

(assert (=> b!2840875 d!823806))

(declare-fun d!823810 () Bool)

(assert (=> d!823810 (= (inv!45607 (tag!5563 (rule!7487 (h!39056 tokensBis!14)))) (= (mod (str.len (value!162526 (tag!5563 (rule!7487 (h!39056 tokensBis!14))))) 2) 0))))

(assert (=> b!2840885 d!823810))

(declare-fun d!823812 () Bool)

(declare-fun res!1181952 () Bool)

(declare-fun e!1799849 () Bool)

(assert (=> d!823812 (=> (not res!1181952) (not e!1799849))))

(declare-fun semiInverseModEq!2108 (Int Int) Bool)

(assert (=> d!823812 (= res!1181952 (semiInverseModEq!2108 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (toValue!7101 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))))))

(assert (=> d!823812 (= (inv!45610 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) e!1799849)))

(declare-fun b!2840968 () Bool)

(declare-fun equivClasses!2007 (Int Int) Bool)

(assert (=> b!2840968 (= e!1799849 (equivClasses!2007 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (toValue!7101 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))))))

(assert (= (and d!823812 res!1181952) b!2840968))

(declare-fun m!3269205 () Bool)

(assert (=> d!823812 m!3269205))

(declare-fun m!3269207 () Bool)

(assert (=> b!2840968 m!3269207))

(assert (=> b!2840885 d!823812))

(declare-fun d!823814 () Bool)

(assert (=> d!823814 (= (inv!45607 (tag!5563 (h!39055 rules!4246))) (= (mod (str.len (value!162526 (tag!5563 (h!39055 rules!4246)))) 2) 0))))

(assert (=> b!2840874 d!823814))

(declare-fun d!823816 () Bool)

(declare-fun res!1181953 () Bool)

(declare-fun e!1799850 () Bool)

(assert (=> d!823816 (=> (not res!1181953) (not e!1799850))))

(assert (=> d!823816 (= res!1181953 (semiInverseModEq!2108 (toChars!6960 (transformation!5059 (h!39055 rules!4246))) (toValue!7101 (transformation!5059 (h!39055 rules!4246)))))))

(assert (=> d!823816 (= (inv!45610 (transformation!5059 (h!39055 rules!4246))) e!1799850)))

(declare-fun b!2840969 () Bool)

(assert (=> b!2840969 (= e!1799850 (equivClasses!2007 (toChars!6960 (transformation!5059 (h!39055 rules!4246))) (toValue!7101 (transformation!5059 (h!39055 rules!4246)))))))

(assert (= (and d!823816 res!1181953) b!2840969))

(declare-fun m!3269209 () Bool)

(assert (=> d!823816 m!3269209))

(declare-fun m!3269211 () Bool)

(assert (=> b!2840969 m!3269211))

(assert (=> b!2840874 d!823816))

(declare-fun d!823818 () Bool)

(assert (=> d!823818 (= (inv!45607 (tag!5563 (rule!7487 (h!39056 tokens!612)))) (= (mod (str.len (value!162526 (tag!5563 (rule!7487 (h!39056 tokens!612))))) 2) 0))))

(assert (=> b!2840884 d!823818))

(declare-fun d!823820 () Bool)

(declare-fun res!1181954 () Bool)

(declare-fun e!1799851 () Bool)

(assert (=> d!823820 (=> (not res!1181954) (not e!1799851))))

(assert (=> d!823820 (= res!1181954 (semiInverseModEq!2108 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (toValue!7101 (transformation!5059 (rule!7487 (h!39056 tokens!612))))))))

(assert (=> d!823820 (= (inv!45610 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) e!1799851)))

(declare-fun b!2840970 () Bool)

(assert (=> b!2840970 (= e!1799851 (equivClasses!2007 (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (toValue!7101 (transformation!5059 (rule!7487 (h!39056 tokens!612))))))))

(assert (= (and d!823820 res!1181954) b!2840970))

(declare-fun m!3269213 () Bool)

(assert (=> d!823820 m!3269213))

(declare-fun m!3269215 () Bool)

(assert (=> b!2840970 m!3269215))

(assert (=> b!2840884 d!823820))

(declare-fun d!823822 () Bool)

(declare-fun res!1181959 () Bool)

(declare-fun e!1799860 () Bool)

(assert (=> d!823822 (=> (not res!1181959) (not e!1799860))))

(declare-fun rulesValid!1877 (LexerInterface!4649 List!33759) Bool)

(assert (=> d!823822 (= res!1181959 (rulesValid!1877 thiss!27264 rules!4246))))

(assert (=> d!823822 (= (rulesInvariant!4065 thiss!27264 rules!4246) e!1799860)))

(declare-fun b!2840983 () Bool)

(declare-datatypes ((List!33765 0))(
  ( (Nil!33641) (Cons!33641 (h!39061 String!36968) (t!232598 List!33765)) )
))
(declare-fun noDuplicateTag!1873 (LexerInterface!4649 List!33759 List!33765) Bool)

(assert (=> b!2840983 (= e!1799860 (noDuplicateTag!1873 thiss!27264 rules!4246 Nil!33641))))

(assert (= (and d!823822 res!1181959) b!2840983))

(declare-fun m!3269217 () Bool)

(assert (=> d!823822 m!3269217))

(declare-fun m!3269219 () Bool)

(assert (=> b!2840983 m!3269219))

(assert (=> b!2840882 d!823822))

(declare-fun b!2840998 () Bool)

(declare-fun e!1799873 () Bool)

(declare-fun e!1799874 () Bool)

(assert (=> b!2840998 (= e!1799873 e!1799874)))

(declare-fun res!1181969 () Bool)

(assert (=> b!2840998 (=> res!1181969 e!1799874)))

(declare-fun e!1799872 () Bool)

(assert (=> b!2840998 (= res!1181969 e!1799872)))

(declare-fun res!1181970 () Bool)

(assert (=> b!2840998 (=> (not res!1181970) (not e!1799872))))

(assert (=> b!2840998 (= res!1181970 (= (h!39056 tokensBis!14) (h!39056 tokens!612)))))

(declare-fun d!823824 () Bool)

(declare-fun res!1181972 () Bool)

(declare-fun e!1799875 () Bool)

(assert (=> d!823824 (=> res!1181972 e!1799875)))

(assert (=> d!823824 (= res!1181972 (is-Nil!33636 tokensBis!14))))

(assert (=> d!823824 (= (subseq!525 tokensBis!14 tokens!612) e!1799875)))

(declare-fun b!2840997 () Bool)

(assert (=> b!2840997 (= e!1799875 e!1799873)))

(declare-fun res!1181971 () Bool)

(assert (=> b!2840997 (=> (not res!1181971) (not e!1799873))))

(assert (=> b!2840997 (= res!1181971 (is-Cons!33636 tokens!612))))

(declare-fun b!2841000 () Bool)

(assert (=> b!2841000 (= e!1799874 (subseq!525 tokensBis!14 (t!232553 tokens!612)))))

(declare-fun b!2840999 () Bool)

(assert (=> b!2840999 (= e!1799872 (subseq!525 (t!232553 tokensBis!14) (t!232553 tokens!612)))))

(assert (= (and d!823824 (not res!1181972)) b!2840997))

(assert (= (and b!2840997 res!1181971) b!2840998))

(assert (= (and b!2840998 res!1181970) b!2840999))

(assert (= (and b!2840998 (not res!1181969)) b!2841000))

(declare-fun m!3269227 () Bool)

(assert (=> b!2841000 m!3269227))

(declare-fun m!3269229 () Bool)

(assert (=> b!2840999 m!3269229))

(assert (=> b!2840881 d!823824))

(declare-fun b!2841060 () Bool)

(declare-fun e!1799925 () Bool)

(assert (=> b!2841060 (= e!1799925 true)))

(declare-fun b!2841059 () Bool)

(declare-fun e!1799924 () Bool)

(assert (=> b!2841059 (= e!1799924 e!1799925)))

(declare-fun b!2841058 () Bool)

(declare-fun e!1799923 () Bool)

(assert (=> b!2841058 (= e!1799923 e!1799924)))

(declare-fun d!823828 () Bool)

(assert (=> d!823828 e!1799923))

(assert (= b!2841059 b!2841060))

(assert (= b!2841058 b!2841059))

(assert (= (and d!823828 (is-Cons!33635 rules!4246)) b!2841058))

(declare-fun order!17991 () Int)

(declare-fun lambda!104242 () Int)

(declare-fun order!17989 () Int)

(declare-fun dynLambda!14157 (Int Int) Int)

(declare-fun dynLambda!14158 (Int Int) Int)

(assert (=> b!2841060 (< (dynLambda!14157 order!17989 (toValue!7101 (transformation!5059 (h!39055 rules!4246)))) (dynLambda!14158 order!17991 lambda!104242))))

(declare-fun order!17993 () Int)

(declare-fun dynLambda!14159 (Int Int) Int)

(assert (=> b!2841060 (< (dynLambda!14159 order!17993 (toChars!6960 (transformation!5059 (h!39055 rules!4246)))) (dynLambda!14158 order!17991 lambda!104242))))

(assert (=> d!823828 true))

(declare-fun lt!1011588 () Bool)

(declare-fun forall!6914 (List!33760 Int) Bool)

(assert (=> d!823828 (= lt!1011588 (forall!6914 tokens!612 lambda!104242))))

(declare-fun e!1799916 () Bool)

(assert (=> d!823828 (= lt!1011588 e!1799916)))

(declare-fun res!1182010 () Bool)

(assert (=> d!823828 (=> res!1182010 e!1799916)))

(assert (=> d!823828 (= res!1182010 (not (is-Cons!33636 tokens!612)))))

(assert (=> d!823828 (not (isEmpty!18520 rules!4246))))

(assert (=> d!823828 (= (rulesProduceEachTokenIndividuallyList!1690 thiss!27264 rules!4246 tokens!612) lt!1011588)))

(declare-fun b!2841048 () Bool)

(declare-fun e!1799915 () Bool)

(assert (=> b!2841048 (= e!1799916 e!1799915)))

(declare-fun res!1182011 () Bool)

(assert (=> b!2841048 (=> (not res!1182011) (not e!1799915))))

(declare-fun rulesProduceIndividualToken!2161 (LexerInterface!4649 List!33759 Token!9520) Bool)

(assert (=> b!2841048 (= res!1182011 (rulesProduceIndividualToken!2161 thiss!27264 rules!4246 (h!39056 tokens!612)))))

(declare-fun b!2841049 () Bool)

(assert (=> b!2841049 (= e!1799915 (rulesProduceEachTokenIndividuallyList!1690 thiss!27264 rules!4246 (t!232553 tokens!612)))))

(assert (= (and d!823828 (not res!1182010)) b!2841048))

(assert (= (and b!2841048 res!1182011) b!2841049))

(declare-fun m!3269281 () Bool)

(assert (=> d!823828 m!3269281))

(assert (=> d!823828 m!3269123))

(declare-fun m!3269283 () Bool)

(assert (=> b!2841048 m!3269283))

(declare-fun m!3269285 () Bool)

(assert (=> b!2841049 m!3269285))

(assert (=> b!2840878 d!823828))

(declare-fun b!2841063 () Bool)

(declare-fun e!1799927 () Bool)

(assert (=> b!2841063 (= e!1799927 (inv!17 (value!162552 (h!39056 tokensBis!14))))))

(declare-fun b!2841064 () Bool)

(declare-fun e!1799928 () Bool)

(assert (=> b!2841064 (= e!1799928 (inv!15 (value!162552 (h!39056 tokensBis!14))))))

(declare-fun b!2841065 () Bool)

(declare-fun e!1799926 () Bool)

(assert (=> b!2841065 (= e!1799926 (inv!16 (value!162552 (h!39056 tokensBis!14))))))

(declare-fun d!823854 () Bool)

(declare-fun c!458627 () Bool)

(assert (=> d!823854 (= c!458627 (is-IntegerValue!15867 (value!162552 (h!39056 tokensBis!14))))))

(assert (=> d!823854 (= (inv!21 (value!162552 (h!39056 tokensBis!14))) e!1799926)))

(declare-fun b!2841066 () Bool)

(assert (=> b!2841066 (= e!1799926 e!1799927)))

(declare-fun c!458626 () Bool)

(assert (=> b!2841066 (= c!458626 (is-IntegerValue!15868 (value!162552 (h!39056 tokensBis!14))))))

(declare-fun b!2841067 () Bool)

(declare-fun res!1182012 () Bool)

(assert (=> b!2841067 (=> res!1182012 e!1799928)))

(assert (=> b!2841067 (= res!1182012 (not (is-IntegerValue!15869 (value!162552 (h!39056 tokensBis!14)))))))

(assert (=> b!2841067 (= e!1799927 e!1799928)))

(assert (= (and d!823854 c!458627) b!2841065))

(assert (= (and d!823854 (not c!458627)) b!2841066))

(assert (= (and b!2841066 c!458626) b!2841063))

(assert (= (and b!2841066 (not c!458626)) b!2841067))

(assert (= (and b!2841067 (not res!1182012)) b!2841064))

(declare-fun m!3269287 () Bool)

(assert (=> b!2841063 m!3269287))

(declare-fun m!3269289 () Bool)

(assert (=> b!2841064 m!3269289))

(declare-fun m!3269291 () Bool)

(assert (=> b!2841065 m!3269291))

(assert (=> b!2840888 d!823854))

(declare-fun b!2841072 () Bool)

(declare-fun e!1799931 () Bool)

(declare-fun tp_is_empty!14629 () Bool)

(declare-fun tp!910129 () Bool)

(assert (=> b!2841072 (= e!1799931 (and tp_is_empty!14629 tp!910129))))

(assert (=> b!2840887 (= tp!910071 e!1799931)))

(assert (= (and b!2840887 (is-Cons!33633 (originalCharacters!5791 (h!39056 tokens!612)))) b!2841072))

(declare-fun b!2841086 () Bool)

(declare-fun b_free!82405 () Bool)

(declare-fun b_next!83109 () Bool)

(assert (=> b!2841086 (= b_free!82405 (not b_next!83109))))

(declare-fun tp!910142 () Bool)

(declare-fun b_and!208491 () Bool)

(assert (=> b!2841086 (= tp!910142 b_and!208491)))

(declare-fun b_free!82407 () Bool)

(declare-fun b_next!83111 () Bool)

(assert (=> b!2841086 (= b_free!82407 (not b_next!83111))))

(declare-fun t!232587 () Bool)

(declare-fun tb!154925 () Bool)

(assert (=> (and b!2841086 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokens!612))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612))))) t!232587) tb!154925))

(declare-fun result!193278 () Bool)

(assert (= result!193278 result!193246))

(assert (=> b!2840956 t!232587))

(declare-fun t!232589 () Bool)

(declare-fun tb!154927 () Bool)

(assert (=> (and b!2841086 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokens!612))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))) t!232589) tb!154927))

(declare-fun result!193280 () Bool)

(assert (= result!193280 result!193254))

(assert (=> b!2840963 t!232589))

(declare-fun b_and!208493 () Bool)

(declare-fun tp!910140 () Bool)

(assert (=> b!2841086 (= tp!910140 (and (=> t!232587 result!193278) (=> t!232589 result!193280) b_and!208493))))

(declare-fun tp!910141 () Bool)

(declare-fun e!1799948 () Bool)

(declare-fun e!1799946 () Bool)

(declare-fun b!2841083 () Bool)

(assert (=> b!2841083 (= e!1799948 (and (inv!45611 (h!39056 (t!232553 tokens!612))) e!1799946 tp!910141))))

(declare-fun b!2841084 () Bool)

(declare-fun e!1799944 () Bool)

(declare-fun tp!910143 () Bool)

(assert (=> b!2841084 (= e!1799946 (and (inv!21 (value!162552 (h!39056 (t!232553 tokens!612)))) e!1799944 tp!910143))))

(declare-fun b!2841085 () Bool)

(declare-fun tp!910144 () Bool)

(declare-fun e!1799945 () Bool)

(assert (=> b!2841085 (= e!1799944 (and tp!910144 (inv!45607 (tag!5563 (rule!7487 (h!39056 (t!232553 tokens!612))))) (inv!45610 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokens!612))))) e!1799945))))

(assert (=> b!2840876 (= tp!910065 e!1799948)))

(assert (=> b!2841086 (= e!1799945 (and tp!910142 tp!910140))))

(assert (= b!2841085 b!2841086))

(assert (= b!2841084 b!2841085))

(assert (= b!2841083 b!2841084))

(assert (= (and b!2840876 (is-Cons!33636 (t!232553 tokens!612))) b!2841083))

(declare-fun m!3269293 () Bool)

(assert (=> b!2841083 m!3269293))

(declare-fun m!3269295 () Bool)

(assert (=> b!2841084 m!3269295))

(declare-fun m!3269297 () Bool)

(assert (=> b!2841085 m!3269297))

(declare-fun m!3269299 () Bool)

(assert (=> b!2841085 m!3269299))

(declare-fun b!2841090 () Bool)

(declare-fun b_free!82409 () Bool)

(declare-fun b_next!83113 () Bool)

(assert (=> b!2841090 (= b_free!82409 (not b_next!83113))))

(declare-fun tp!910147 () Bool)

(declare-fun b_and!208495 () Bool)

(assert (=> b!2841090 (= tp!910147 b_and!208495)))

(declare-fun b_free!82411 () Bool)

(declare-fun b_next!83115 () Bool)

(assert (=> b!2841090 (= b_free!82411 (not b_next!83115))))

(declare-fun tb!154929 () Bool)

(declare-fun t!232591 () Bool)

(assert (=> (and b!2841090 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokensBis!14))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612))))) t!232591) tb!154929))

(declare-fun result!193282 () Bool)

(assert (= result!193282 result!193246))

(assert (=> b!2840956 t!232591))

(declare-fun t!232593 () Bool)

(declare-fun tb!154931 () Bool)

(assert (=> (and b!2841090 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokensBis!14))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))) t!232593) tb!154931))

(declare-fun result!193284 () Bool)

(assert (= result!193284 result!193254))

(assert (=> b!2840963 t!232593))

(declare-fun tp!910145 () Bool)

(declare-fun b_and!208497 () Bool)

(assert (=> b!2841090 (= tp!910145 (and (=> t!232591 result!193282) (=> t!232593 result!193284) b_and!208497))))

(declare-fun tp!910146 () Bool)

(declare-fun b!2841087 () Bool)

(declare-fun e!1799952 () Bool)

(declare-fun e!1799954 () Bool)

(assert (=> b!2841087 (= e!1799954 (and (inv!45611 (h!39056 (t!232553 tokensBis!14))) e!1799952 tp!910146))))

(declare-fun b!2841088 () Bool)

(declare-fun tp!910148 () Bool)

(declare-fun e!1799950 () Bool)

(assert (=> b!2841088 (= e!1799952 (and (inv!21 (value!162552 (h!39056 (t!232553 tokensBis!14)))) e!1799950 tp!910148))))

(declare-fun b!2841089 () Bool)

(declare-fun e!1799951 () Bool)

(declare-fun tp!910149 () Bool)

(assert (=> b!2841089 (= e!1799950 (and tp!910149 (inv!45607 (tag!5563 (rule!7487 (h!39056 (t!232553 tokensBis!14))))) (inv!45610 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokensBis!14))))) e!1799951))))

(assert (=> b!2840875 (= tp!910063 e!1799954)))

(assert (=> b!2841090 (= e!1799951 (and tp!910147 tp!910145))))

(assert (= b!2841089 b!2841090))

(assert (= b!2841088 b!2841089))

(assert (= b!2841087 b!2841088))

(assert (= (and b!2840875 (is-Cons!33636 (t!232553 tokensBis!14))) b!2841087))

(declare-fun m!3269301 () Bool)

(assert (=> b!2841087 m!3269301))

(declare-fun m!3269303 () Bool)

(assert (=> b!2841088 m!3269303))

(declare-fun m!3269305 () Bool)

(assert (=> b!2841089 m!3269305))

(declare-fun m!3269307 () Bool)

(assert (=> b!2841089 m!3269307))

(declare-fun b!2841101 () Bool)

(declare-fun e!1799958 () Bool)

(assert (=> b!2841101 (= e!1799958 tp_is_empty!14629)))

(declare-fun b!2841102 () Bool)

(declare-fun tp!910162 () Bool)

(declare-fun tp!910161 () Bool)

(assert (=> b!2841102 (= e!1799958 (and tp!910162 tp!910161))))

(assert (=> b!2840885 (= tp!910072 e!1799958)))

(declare-fun b!2841104 () Bool)

(declare-fun tp!910163 () Bool)

(declare-fun tp!910160 () Bool)

(assert (=> b!2841104 (= e!1799958 (and tp!910163 tp!910160))))

(declare-fun b!2841103 () Bool)

(declare-fun tp!910164 () Bool)

(assert (=> b!2841103 (= e!1799958 tp!910164)))

(assert (= (and b!2840885 (is-ElementMatch!8450 (regex!5059 (rule!7487 (h!39056 tokensBis!14))))) b!2841101))

(assert (= (and b!2840885 (is-Concat!13739 (regex!5059 (rule!7487 (h!39056 tokensBis!14))))) b!2841102))

(assert (= (and b!2840885 (is-Star!8450 (regex!5059 (rule!7487 (h!39056 tokensBis!14))))) b!2841103))

(assert (= (and b!2840885 (is-Union!8450 (regex!5059 (rule!7487 (h!39056 tokensBis!14))))) b!2841104))

(declare-fun b!2841105 () Bool)

(declare-fun e!1799959 () Bool)

(assert (=> b!2841105 (= e!1799959 tp_is_empty!14629)))

(declare-fun b!2841106 () Bool)

(declare-fun tp!910167 () Bool)

(declare-fun tp!910166 () Bool)

(assert (=> b!2841106 (= e!1799959 (and tp!910167 tp!910166))))

(assert (=> b!2840874 (= tp!910075 e!1799959)))

(declare-fun b!2841108 () Bool)

(declare-fun tp!910168 () Bool)

(declare-fun tp!910165 () Bool)

(assert (=> b!2841108 (= e!1799959 (and tp!910168 tp!910165))))

(declare-fun b!2841107 () Bool)

(declare-fun tp!910169 () Bool)

(assert (=> b!2841107 (= e!1799959 tp!910169)))

(assert (= (and b!2840874 (is-ElementMatch!8450 (regex!5059 (h!39055 rules!4246)))) b!2841105))

(assert (= (and b!2840874 (is-Concat!13739 (regex!5059 (h!39055 rules!4246)))) b!2841106))

(assert (= (and b!2840874 (is-Star!8450 (regex!5059 (h!39055 rules!4246)))) b!2841107))

(assert (= (and b!2840874 (is-Union!8450 (regex!5059 (h!39055 rules!4246)))) b!2841108))

(declare-fun b!2841109 () Bool)

(declare-fun e!1799960 () Bool)

(assert (=> b!2841109 (= e!1799960 tp_is_empty!14629)))

(declare-fun b!2841110 () Bool)

(declare-fun tp!910172 () Bool)

(declare-fun tp!910171 () Bool)

(assert (=> b!2841110 (= e!1799960 (and tp!910172 tp!910171))))

(assert (=> b!2840884 (= tp!910069 e!1799960)))

(declare-fun b!2841112 () Bool)

(declare-fun tp!910173 () Bool)

(declare-fun tp!910170 () Bool)

(assert (=> b!2841112 (= e!1799960 (and tp!910173 tp!910170))))

(declare-fun b!2841111 () Bool)

(declare-fun tp!910174 () Bool)

(assert (=> b!2841111 (= e!1799960 tp!910174)))

(assert (= (and b!2840884 (is-ElementMatch!8450 (regex!5059 (rule!7487 (h!39056 tokens!612))))) b!2841109))

(assert (= (and b!2840884 (is-Concat!13739 (regex!5059 (rule!7487 (h!39056 tokens!612))))) b!2841110))

(assert (= (and b!2840884 (is-Star!8450 (regex!5059 (rule!7487 (h!39056 tokens!612))))) b!2841111))

(assert (= (and b!2840884 (is-Union!8450 (regex!5059 (rule!7487 (h!39056 tokens!612))))) b!2841112))

(declare-fun b!2841123 () Bool)

(declare-fun b_free!82413 () Bool)

(declare-fun b_next!83117 () Bool)

(assert (=> b!2841123 (= b_free!82413 (not b_next!83117))))

(declare-fun tp!910184 () Bool)

(declare-fun b_and!208499 () Bool)

(assert (=> b!2841123 (= tp!910184 b_and!208499)))

(declare-fun b_free!82415 () Bool)

(declare-fun b_next!83119 () Bool)

(assert (=> b!2841123 (= b_free!82415 (not b_next!83119))))

(declare-fun t!232595 () Bool)

(declare-fun tb!154933 () Bool)

(assert (=> (and b!2841123 (= (toChars!6960 (transformation!5059 (h!39055 (t!232552 rules!4246)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612))))) t!232595) tb!154933))

(declare-fun result!193290 () Bool)

(assert (= result!193290 result!193246))

(assert (=> b!2840956 t!232595))

(declare-fun t!232597 () Bool)

(declare-fun tb!154935 () Bool)

(assert (=> (and b!2841123 (= (toChars!6960 (transformation!5059 (h!39055 (t!232552 rules!4246)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14))))) t!232597) tb!154935))

(declare-fun result!193292 () Bool)

(assert (= result!193292 result!193254))

(assert (=> b!2840963 t!232597))

(declare-fun b_and!208501 () Bool)

(declare-fun tp!910186 () Bool)

(assert (=> b!2841123 (= tp!910186 (and (=> t!232595 result!193290) (=> t!232597 result!193292) b_and!208501))))

(declare-fun e!1799972 () Bool)

(assert (=> b!2841123 (= e!1799972 (and tp!910184 tp!910186))))

(declare-fun e!1799969 () Bool)

(declare-fun tp!910185 () Bool)

(declare-fun b!2841122 () Bool)

(assert (=> b!2841122 (= e!1799969 (and tp!910185 (inv!45607 (tag!5563 (h!39055 (t!232552 rules!4246)))) (inv!45610 (transformation!5059 (h!39055 (t!232552 rules!4246)))) e!1799972))))

(declare-fun b!2841121 () Bool)

(declare-fun e!1799970 () Bool)

(declare-fun tp!910183 () Bool)

(assert (=> b!2841121 (= e!1799970 (and e!1799969 tp!910183))))

(assert (=> b!2840883 (= tp!910064 e!1799970)))

(assert (= b!2841122 b!2841123))

(assert (= b!2841121 b!2841122))

(assert (= (and b!2840883 (is-Cons!33635 (t!232552 rules!4246))) b!2841121))

(declare-fun m!3269309 () Bool)

(assert (=> b!2841122 m!3269309))

(declare-fun m!3269311 () Bool)

(assert (=> b!2841122 m!3269311))

(declare-fun b!2841124 () Bool)

(declare-fun e!1799973 () Bool)

(declare-fun tp!910187 () Bool)

(assert (=> b!2841124 (= e!1799973 (and tp_is_empty!14629 tp!910187))))

(assert (=> b!2840888 (= tp!910066 e!1799973)))

(assert (= (and b!2840888 (is-Cons!33633 (originalCharacters!5791 (h!39056 tokensBis!14)))) b!2841124))

(declare-fun b_lambda!85415 () Bool)

(assert (= b_lambda!85409 (or (and b!2841090 b_free!82411 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokensBis!14))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))))) (and b!2840880 b_free!82383 (= (toChars!6960 (transformation!5059 (h!39055 rules!4246))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))))) (and b!2841086 b_free!82407 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokens!612))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))))) (and b!2840879 b_free!82391 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))))) (and b!2840873 b_free!82387) (and b!2841123 b_free!82415 (= (toChars!6960 (transformation!5059 (h!39055 (t!232552 rules!4246)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))))) b_lambda!85415)))

(declare-fun b_lambda!85417 () Bool)

(assert (= b_lambda!85407 (or (and b!2841123 b_free!82415 (= (toChars!6960 (transformation!5059 (h!39055 (t!232552 rules!4246)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))))) (and b!2841086 b_free!82407 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokens!612))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))))) (and b!2840879 b_free!82391) (and b!2840873 b_free!82387 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokensBis!14)))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))))) (and b!2841090 b_free!82411 (= (toChars!6960 (transformation!5059 (rule!7487 (h!39056 (t!232553 tokensBis!14))))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))))) (and b!2840880 b_free!82383 (= (toChars!6960 (transformation!5059 (h!39055 rules!4246))) (toChars!6960 (transformation!5059 (rule!7487 (h!39056 tokens!612)))))) b_lambda!85417)))

(push 1)

(assert (not b!2840968))

(assert b_and!208477)

(assert (not b_next!83095))

(assert (not b!2841064))

(assert (not b!2841084))

(assert b_and!208473)

(assert b_and!208475)

(assert (not b!2840963))

(assert (not tb!154901))

(assert (not b_next!83087))

(assert (not b_lambda!85415))

(assert (not b!2841112))

(assert b_and!208499)

(assert (not b!2841087))

(assert b_and!208497)

(assert (not b!2841111))

(assert b_and!208493)

(assert (not d!823822))

(assert (not b!2841107))

(assert (not d!823806))

(assert (not b!2841108))

(assert (not b_next!83113))

(assert (not b_lambda!85417))

(assert (not b_next!83085))

(assert (not b_next!83119))

(assert (not d!823820))

(assert (not b_next!83093))

(assert b_and!208451)

(assert (not b_next!83109))

(assert (not b_next!83117))

(assert (not b!2841058))

(assert (not b!2841102))

(assert (not b!2841065))

(assert (not b!2840999))

(assert (not b!2841088))

(assert (not d!823828))

(assert b_and!208501)

(assert (not b!2840969))

(assert (not b!2841124))

(assert b_and!208495)

(assert (not b!2841122))

(assert (not b_next!83115))

(assert (not b!2840956))

(assert (not b!2841089))

(assert (not b!2841085))

(assert (not b!2840970))

(assert (not b!2841048))

(assert b_and!208443)

(assert (not b!2841083))

(assert b_and!208447)

(assert (not b!2841063))

(assert (not b!2840949))

(assert (not b!2840947))

(assert (not tb!154907))

(assert (not b!2841106))

(assert (not d!823812))

(assert (not b_next!83091))

(assert (not b!2841072))

(assert (not b!2841000))

(assert (not b!2841104))

(assert (not d!823816))

(assert (not b!2841049))

(assert tp_is_empty!14629)

(assert (not b!2840957))

(assert (not b!2841110))

(assert (not b!2840965))

(assert (not b!2840948))

(assert (not b!2840983))

(assert (not b!2840962))

(assert (not b!2841103))

(assert (not b!2840964))

(assert (not b_next!83089))

(assert (not b!2841121))

(assert b_and!208491)

(assert (not d!823802))

(assert (not b_next!83111))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208499)

(assert b_and!208497)

(assert (not b_next!83085))

(assert b_and!208477)

(assert (not b_next!83095))

(assert (not b_next!83119))

(assert b_and!208473)

(assert b_and!208501)

(assert b_and!208475)

(assert b_and!208443)

(assert b_and!208447)

(assert (not b_next!83091))

(assert (not b_next!83087))

(assert (not b_next!83089))

(assert b_and!208493)

(assert (not b_next!83113))

(assert (not b_next!83093))

(assert b_and!208451)

(assert (not b_next!83109))

(assert (not b_next!83117))

(assert b_and!208495)

(assert (not b_next!83115))

(assert b_and!208491)

(assert (not b_next!83111))

(check-sat)

(pop 1)

