; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100712 () Bool)

(assert start!100712)

(declare-fun b!1155222 () Bool)

(declare-fun e!738768 () Bool)

(assert (=> b!1155222 (= e!738768 true)))

(declare-fun b!1155221 () Bool)

(declare-fun e!738767 () Bool)

(assert (=> b!1155221 (= e!738767 e!738768)))

(declare-fun b!1155212 () Bool)

(assert (=> b!1155212 e!738767))

(assert (= b!1155221 b!1155222))

(assert (= b!1155212 b!1155221))

(declare-fun res!519728 () Bool)

(declare-fun e!738762 () Bool)

(assert (=> start!100712 (=> (not res!519728) (not e!738762))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100712 (= res!519728 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100712 e!738762))

(assert (=> start!100712 true))

(declare-datatypes ((List!11232 0))(
  ( (Nil!11208) (Cons!11208 (h!16609 (_ BitVec 16)) (t!108880 List!11232)) )
))
(declare-datatypes ((TokenValue!2004 0))(
  ( (FloatLiteralValue!4008 (text!14473 List!11232)) (TokenValueExt!2003 (__x!7719 Int)) (Broken!10020 (value!63205 List!11232)) (Object!2027) (End!2004) (Def!2004) (Underscore!2004) (Match!2004) (Else!2004) (Error!2004) (Case!2004) (If!2004) (Extends!2004) (Abstract!2004) (Class!2004) (Val!2004) (DelimiterValue!4008 (del!2064 List!11232)) (KeywordValue!2010 (value!63206 List!11232)) (CommentValue!4008 (value!63207 List!11232)) (WhitespaceValue!4008 (value!63208 List!11232)) (IndentationValue!2004 (value!63209 List!11232)) (String!13609) (Int32!2004) (Broken!10021 (value!63210 List!11232)) (Boolean!2005) (Unit!17244) (OperatorValue!2007 (op!2064 List!11232)) (IdentifierValue!4008 (value!63211 List!11232)) (IdentifierValue!4009 (value!63212 List!11232)) (WhitespaceValue!4009 (value!63213 List!11232)) (True!4008) (False!4008) (Broken!10022 (value!63214 List!11232)) (Broken!10023 (value!63215 List!11232)) (True!4009) (RightBrace!2004) (RightBracket!2004) (Colon!2004) (Null!2004) (Comma!2004) (LeftBracket!2004) (False!4009) (LeftBrace!2004) (ImaginaryLiteralValue!2004 (text!14474 List!11232)) (StringLiteralValue!6012 (value!63216 List!11232)) (EOFValue!2004 (value!63217 List!11232)) (IdentValue!2004 (value!63218 List!11232)) (DelimiterValue!4009 (value!63219 List!11232)) (DedentValue!2004 (value!63220 List!11232)) (NewLineValue!2004 (value!63221 List!11232)) (IntegerValue!6012 (value!63222 (_ BitVec 32)) (text!14475 List!11232)) (IntegerValue!6013 (value!63223 Int) (text!14476 List!11232)) (Times!2004) (Or!2004) (Equal!2004) (Minus!2004) (Broken!10024 (value!63224 List!11232)) (And!2004) (Div!2004) (LessEqual!2004) (Mod!2004) (Concat!5212) (Not!2004) (Plus!2004) (SpaceValue!2004 (value!63225 List!11232)) (IntegerValue!6014 (value!63226 Int) (text!14477 List!11232)) (StringLiteralValue!6013 (text!14478 List!11232)) (FloatLiteralValue!4009 (text!14479 List!11232)) (BytesLiteralValue!2004 (value!63227 List!11232)) (CommentValue!4009 (value!63228 List!11232)) (StringLiteralValue!6014 (value!63229 List!11232)) (ErrorTokenValue!2004 (msg!2065 List!11232)) )
))
(declare-datatypes ((C!6734 0))(
  ( (C!6735 (val!3623 Int)) )
))
(declare-datatypes ((Regex!3208 0))(
  ( (ElementMatch!3208 (c!194005 C!6734)) (Concat!5213 (regOne!6928 Regex!3208) (regTwo!6928 Regex!3208)) (EmptyExpr!3208) (Star!3208 (reg!3537 Regex!3208)) (EmptyLang!3208) (Union!3208 (regOne!6929 Regex!3208) (regTwo!6929 Regex!3208)) )
))
(declare-datatypes ((String!13610 0))(
  ( (String!13611 (value!63230 String)) )
))
(declare-datatypes ((List!11233 0))(
  ( (Nil!11209) (Cons!11209 (h!16610 C!6734) (t!108881 List!11233)) )
))
(declare-datatypes ((IArray!7281 0))(
  ( (IArray!7282 (innerList!3698 List!11233)) )
))
(declare-datatypes ((Conc!3638 0))(
  ( (Node!3638 (left!9767 Conc!3638) (right!10097 Conc!3638) (csize!7506 Int) (cheight!3849 Int)) (Leaf!5618 (xs!6343 IArray!7281) (csize!7507 Int)) (Empty!3638) )
))
(declare-datatypes ((BalanceConc!7298 0))(
  ( (BalanceConc!7299 (c!194006 Conc!3638)) )
))
(declare-datatypes ((TokenValueInjection!3708 0))(
  ( (TokenValueInjection!3709 (toValue!3039 Int) (toChars!2898 Int)) )
))
(declare-datatypes ((Rule!3676 0))(
  ( (Rule!3677 (regex!1938 Regex!3208) (tag!2200 String!13610) (isSeparator!1938 Bool) (transformation!1938 TokenValueInjection!3708)) )
))
(declare-datatypes ((Token!3538 0))(
  ( (Token!3539 (value!63231 TokenValue!2004) (rule!3359 Rule!3676) (size!8824 Int) (originalCharacters!2492 List!11233)) )
))
(declare-datatypes ((List!11234 0))(
  ( (Nil!11210) (Cons!11210 (h!16611 Token!3538) (t!108882 List!11234)) )
))
(declare-datatypes ((List!11235 0))(
  ( (Nil!11211) (Cons!11211 (h!16612 Rule!3676) (t!108883 List!11235)) )
))
(declare-datatypes ((IArray!7283 0))(
  ( (IArray!7284 (innerList!3699 List!11234)) )
))
(declare-datatypes ((Conc!3639 0))(
  ( (Node!3639 (left!9768 Conc!3639) (right!10098 Conc!3639) (csize!7508 Int) (cheight!3850 Int)) (Leaf!5619 (xs!6344 IArray!7283) (csize!7509 Int)) (Empty!3639) )
))
(declare-datatypes ((BalanceConc!7300 0))(
  ( (BalanceConc!7301 (c!194007 Conc!3639)) )
))
(declare-datatypes ((PrintableTokens!562 0))(
  ( (PrintableTokens!563 (rules!9409 List!11235) (tokens!1537 BalanceConc!7300)) )
))
(declare-fun thiss!10527 () PrintableTokens!562)

(declare-fun e!738757 () Bool)

(declare-fun inv!14720 (PrintableTokens!562) Bool)

(assert (=> start!100712 (and (inv!14720 thiss!10527) e!738757)))

(declare-fun b!1155207 () Bool)

(declare-fun res!519729 () Bool)

(assert (=> b!1155207 (=> (not res!519729) (not e!738762))))

(declare-fun size!8825 (BalanceConc!7300) Int)

(assert (=> b!1155207 (= res!519729 (<= to!267 (size!8825 (tokens!1537 thiss!10527))))))

(declare-fun b!1155208 () Bool)

(declare-fun e!738760 () Bool)

(assert (=> b!1155208 (= e!738762 e!738760)))

(declare-fun res!519730 () Bool)

(assert (=> b!1155208 (=> (not res!519730) (not e!738760))))

(declare-datatypes ((LexerInterface!1633 0))(
  ( (LexerInterfaceExt!1630 (__x!7720 Int)) (Lexer!1631) )
))
(declare-fun rulesInvariant!1507 (LexerInterface!1633 List!11235) Bool)

(assert (=> b!1155208 (= res!519730 (rulesInvariant!1507 Lexer!1631 (rules!9409 thiss!10527)))))

(declare-datatypes ((Unit!17245 0))(
  ( (Unit!17246) )
))
(declare-fun lt!392792 () Unit!17245)

(declare-fun lemmaInvariant!125 (PrintableTokens!562) Unit!17245)

(assert (=> b!1155208 (= lt!392792 (lemmaInvariant!125 thiss!10527))))

(declare-fun b!1155209 () Bool)

(declare-fun e!738761 () Bool)

(declare-fun lt!392791 () List!11234)

(declare-fun rulesProduceEachTokenIndividuallyList!501 (LexerInterface!1633 List!11235 List!11234) Bool)

(assert (=> b!1155209 (= e!738761 (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) (t!108882 lt!392791)))))

(declare-fun b!1155210 () Bool)

(declare-fun e!738756 () Bool)

(declare-fun isBalanced!1026 (Conc!3639) Bool)

(assert (=> b!1155210 (= e!738756 (isBalanced!1026 (c!194007 (tokens!1537 thiss!10527))))))

(declare-fun lt!392793 () List!11234)

(declare-fun lambda!46558 () Int)

(declare-fun forall!2860 (List!11234 Int) Bool)

(assert (=> b!1155210 (forall!2860 lt!392793 lambda!46558)))

(declare-fun lt!392795 () Unit!17245)

(declare-fun lemmaForallSubseq!86 (List!11234 List!11234 Int) Unit!17245)

(assert (=> b!1155210 (= lt!392795 (lemmaForallSubseq!86 lt!392793 lt!392791 lambda!46558))))

(declare-fun list!4133 (BalanceConc!7300) List!11234)

(declare-fun slice!153 (BalanceConc!7300 Int Int) BalanceConc!7300)

(assert (=> b!1155210 (= lt!392793 (list!4133 (slice!153 (tokens!1537 thiss!10527) from!787 to!267)))))

(declare-fun subseq!194 (List!11234 List!11234) Bool)

(declare-fun slice!154 (List!11234 Int Int) List!11234)

(assert (=> b!1155210 (subseq!194 (slice!154 lt!392791 from!787 to!267) lt!392791)))

(declare-fun lt!392794 () Unit!17245)

(declare-fun lemmaSliceSubseq!35 (List!11234 Int Int) Unit!17245)

(assert (=> b!1155210 (= lt!392794 (lemmaSliceSubseq!35 lt!392791 from!787 to!267))))

(declare-fun b!1155211 () Bool)

(declare-fun e!738758 () Bool)

(declare-fun tp!333029 () Bool)

(declare-fun inv!14721 (Conc!3639) Bool)

(assert (=> b!1155211 (= e!738758 (and (inv!14721 (c!194007 (tokens!1537 thiss!10527))) tp!333029))))

(assert (=> b!1155212 (= e!738760 (not e!738756))))

(declare-fun res!519726 () Bool)

(assert (=> b!1155212 (=> res!519726 e!738756)))

(declare-fun forall!2861 (BalanceConc!7300 Int) Bool)

(assert (=> b!1155212 (= res!519726 (not (forall!2861 (tokens!1537 thiss!10527) lambda!46558)))))

(declare-fun e!738759 () Bool)

(assert (=> b!1155212 (= (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) lt!392791) e!738759)))

(declare-fun res!519727 () Bool)

(assert (=> b!1155212 (=> res!519727 e!738759)))

(assert (=> b!1155212 (= res!519727 (not (is-Cons!11210 lt!392791)))))

(assert (=> b!1155212 (= lt!392791 (list!4133 (tokens!1537 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!672 (LexerInterface!1633 List!11235 BalanceConc!7300) Bool)

(assert (=> b!1155212 (= (rulesProduceEachTokenIndividually!672 Lexer!1631 (rules!9409 thiss!10527) (tokens!1537 thiss!10527)) (forall!2861 (tokens!1537 thiss!10527) lambda!46558))))

(declare-fun b!1155213 () Bool)

(assert (=> b!1155213 (= e!738759 e!738761)))

(declare-fun res!519731 () Bool)

(assert (=> b!1155213 (=> (not res!519731) (not e!738761))))

(declare-fun rulesProduceIndividualToken!670 (LexerInterface!1633 List!11235 Token!3538) Bool)

(assert (=> b!1155213 (= res!519731 (rulesProduceIndividualToken!670 Lexer!1631 (rules!9409 thiss!10527) (h!16611 lt!392791)))))

(declare-fun tp!333030 () Bool)

(declare-fun b!1155214 () Bool)

(declare-fun inv!14722 (BalanceConc!7300) Bool)

(assert (=> b!1155214 (= e!738757 (and tp!333030 (inv!14722 (tokens!1537 thiss!10527)) e!738758))))

(assert (= (and start!100712 res!519728) b!1155207))

(assert (= (and b!1155207 res!519729) b!1155208))

(assert (= (and b!1155208 res!519730) b!1155212))

(assert (= (and b!1155212 (not res!519727)) b!1155213))

(assert (= (and b!1155213 res!519731) b!1155209))

(assert (= (and b!1155212 (not res!519726)) b!1155210))

(assert (= b!1155214 b!1155211))

(assert (= start!100712 b!1155214))

(declare-fun m!1322167 () Bool)

(assert (=> b!1155207 m!1322167))

(declare-fun m!1322169 () Bool)

(assert (=> b!1155211 m!1322169))

(declare-fun m!1322171 () Bool)

(assert (=> start!100712 m!1322171))

(declare-fun m!1322173 () Bool)

(assert (=> b!1155210 m!1322173))

(declare-fun m!1322175 () Bool)

(assert (=> b!1155210 m!1322175))

(declare-fun m!1322177 () Bool)

(assert (=> b!1155210 m!1322177))

(declare-fun m!1322179 () Bool)

(assert (=> b!1155210 m!1322179))

(declare-fun m!1322181 () Bool)

(assert (=> b!1155210 m!1322181))

(declare-fun m!1322183 () Bool)

(assert (=> b!1155210 m!1322183))

(declare-fun m!1322185 () Bool)

(assert (=> b!1155210 m!1322185))

(assert (=> b!1155210 m!1322173))

(assert (=> b!1155210 m!1322177))

(declare-fun m!1322187 () Bool)

(assert (=> b!1155210 m!1322187))

(declare-fun m!1322189 () Bool)

(assert (=> b!1155213 m!1322189))

(declare-fun m!1322191 () Bool)

(assert (=> b!1155208 m!1322191))

(declare-fun m!1322193 () Bool)

(assert (=> b!1155208 m!1322193))

(declare-fun m!1322195 () Bool)

(assert (=> b!1155214 m!1322195))

(declare-fun m!1322197 () Bool)

(assert (=> b!1155212 m!1322197))

(declare-fun m!1322199 () Bool)

(assert (=> b!1155212 m!1322199))

(declare-fun m!1322201 () Bool)

(assert (=> b!1155212 m!1322201))

(declare-fun m!1322203 () Bool)

(assert (=> b!1155212 m!1322203))

(assert (=> b!1155212 m!1322197))

(declare-fun m!1322205 () Bool)

(assert (=> b!1155209 m!1322205))

(push 1)

(assert (not b!1155214))

(assert (not b!1155209))

(assert (not b!1155213))

(assert (not b!1155207))

(assert (not b!1155222))

(assert (not b!1155210))

(assert (not b!1155212))

(assert (not b!1155211))

(assert (not b!1155208))

(assert (not b!1155221))

(assert (not start!100712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330242 () Bool)

(declare-fun res!519754 () Bool)

(declare-fun e!738798 () Bool)

(assert (=> d!330242 (=> (not res!519754) (not e!738798))))

(declare-fun rulesValid!668 (LexerInterface!1633 List!11235) Bool)

(assert (=> d!330242 (= res!519754 (rulesValid!668 Lexer!1631 (rules!9409 thiss!10527)))))

(assert (=> d!330242 (= (rulesInvariant!1507 Lexer!1631 (rules!9409 thiss!10527)) e!738798)))

(declare-fun b!1155257 () Bool)

(declare-datatypes ((List!11240 0))(
  ( (Nil!11216) (Cons!11216 (h!16617 String!13610) (t!108908 List!11240)) )
))
(declare-fun noDuplicateTag!668 (LexerInterface!1633 List!11235 List!11240) Bool)

(assert (=> b!1155257 (= e!738798 (noDuplicateTag!668 Lexer!1631 (rules!9409 thiss!10527) Nil!11216))))

(assert (= (and d!330242 res!519754) b!1155257))

(declare-fun m!1322247 () Bool)

(assert (=> d!330242 m!1322247))

(declare-fun m!1322249 () Bool)

(assert (=> b!1155257 m!1322249))

(assert (=> b!1155208 d!330242))

(declare-fun d!330244 () Bool)

(declare-fun e!738804 () Bool)

(assert (=> d!330244 e!738804))

(declare-fun res!519764 () Bool)

(assert (=> d!330244 (=> (not res!519764) (not e!738804))))

(assert (=> d!330244 (= res!519764 (rulesInvariant!1507 Lexer!1631 (rules!9409 thiss!10527)))))

(declare-fun Unit!17250 () Unit!17245)

(assert (=> d!330244 (= (lemmaInvariant!125 thiss!10527) Unit!17250)))

(declare-fun b!1155265 () Bool)

(declare-fun res!519765 () Bool)

(assert (=> b!1155265 (=> (not res!519765) (not e!738804))))

(assert (=> b!1155265 (= res!519765 (rulesProduceEachTokenIndividually!672 Lexer!1631 (rules!9409 thiss!10527) (tokens!1537 thiss!10527)))))

(declare-fun b!1155266 () Bool)

(declare-fun separableTokens!88 (LexerInterface!1633 BalanceConc!7300 List!11235) Bool)

(assert (=> b!1155266 (= e!738804 (separableTokens!88 Lexer!1631 (tokens!1537 thiss!10527) (rules!9409 thiss!10527)))))

(assert (= (and d!330244 res!519764) b!1155265))

(assert (= (and b!1155265 res!519765) b!1155266))

(assert (=> d!330244 m!1322191))

(assert (=> b!1155265 m!1322199))

(declare-fun m!1322255 () Bool)

(assert (=> b!1155266 m!1322255))

(assert (=> b!1155208 d!330244))

(declare-fun d!330250 () Bool)

(declare-fun lt!392815 () Bool)

(declare-fun e!738810 () Bool)

(assert (=> d!330250 (= lt!392815 e!738810)))

(declare-fun res!519772 () Bool)

(assert (=> d!330250 (=> (not res!519772) (not e!738810))))

(declare-datatypes ((tuple2!11960 0))(
  ( (tuple2!11961 (_1!6827 BalanceConc!7300) (_2!6827 BalanceConc!7298)) )
))
(declare-fun lex!673 (LexerInterface!1633 List!11235 BalanceConc!7298) tuple2!11960)

(declare-fun print!610 (LexerInterface!1633 BalanceConc!7300) BalanceConc!7298)

(declare-fun singletonSeq!628 (Token!3538) BalanceConc!7300)

(assert (=> d!330250 (= res!519772 (= (list!4133 (_1!6827 (lex!673 Lexer!1631 (rules!9409 thiss!10527) (print!610 Lexer!1631 (singletonSeq!628 (h!16611 lt!392791)))))) (list!4133 (singletonSeq!628 (h!16611 lt!392791)))))))

(declare-fun e!738809 () Bool)

(assert (=> d!330250 (= lt!392815 e!738809)))

(declare-fun res!519773 () Bool)

(assert (=> d!330250 (=> (not res!519773) (not e!738809))))

(declare-fun lt!392816 () tuple2!11960)

(assert (=> d!330250 (= res!519773 (= (size!8825 (_1!6827 lt!392816)) 1))))

(assert (=> d!330250 (= lt!392816 (lex!673 Lexer!1631 (rules!9409 thiss!10527) (print!610 Lexer!1631 (singletonSeq!628 (h!16611 lt!392791)))))))

(declare-fun isEmpty!6918 (List!11235) Bool)

(assert (=> d!330250 (not (isEmpty!6918 (rules!9409 thiss!10527)))))

(assert (=> d!330250 (= (rulesProduceIndividualToken!670 Lexer!1631 (rules!9409 thiss!10527) (h!16611 lt!392791)) lt!392815)))

(declare-fun b!1155273 () Bool)

(declare-fun res!519774 () Bool)

(assert (=> b!1155273 (=> (not res!519774) (not e!738809))))

(declare-fun apply!2397 (BalanceConc!7300 Int) Token!3538)

(assert (=> b!1155273 (= res!519774 (= (apply!2397 (_1!6827 lt!392816) 0) (h!16611 lt!392791)))))

(declare-fun b!1155274 () Bool)

(declare-fun isEmpty!6919 (BalanceConc!7298) Bool)

(assert (=> b!1155274 (= e!738809 (isEmpty!6919 (_2!6827 lt!392816)))))

(declare-fun b!1155275 () Bool)

(assert (=> b!1155275 (= e!738810 (isEmpty!6919 (_2!6827 (lex!673 Lexer!1631 (rules!9409 thiss!10527) (print!610 Lexer!1631 (singletonSeq!628 (h!16611 lt!392791)))))))))

(assert (= (and d!330250 res!519773) b!1155273))

(assert (= (and b!1155273 res!519774) b!1155274))

(assert (= (and d!330250 res!519772) b!1155275))

(declare-fun m!1322257 () Bool)

(assert (=> d!330250 m!1322257))

(declare-fun m!1322259 () Bool)

(assert (=> d!330250 m!1322259))

(declare-fun m!1322261 () Bool)

(assert (=> d!330250 m!1322261))

(declare-fun m!1322263 () Bool)

(assert (=> d!330250 m!1322263))

(assert (=> d!330250 m!1322261))

(declare-fun m!1322265 () Bool)

(assert (=> d!330250 m!1322265))

(assert (=> d!330250 m!1322259))

(declare-fun m!1322267 () Bool)

(assert (=> d!330250 m!1322267))

(assert (=> d!330250 m!1322259))

(declare-fun m!1322269 () Bool)

(assert (=> d!330250 m!1322269))

(declare-fun m!1322271 () Bool)

(assert (=> b!1155273 m!1322271))

(declare-fun m!1322273 () Bool)

(assert (=> b!1155274 m!1322273))

(assert (=> b!1155275 m!1322259))

(assert (=> b!1155275 m!1322259))

(assert (=> b!1155275 m!1322261))

(assert (=> b!1155275 m!1322261))

(assert (=> b!1155275 m!1322265))

(declare-fun m!1322275 () Bool)

(assert (=> b!1155275 m!1322275))

(assert (=> b!1155213 d!330250))

(declare-fun bs!282821 () Bool)

(declare-fun d!330252 () Bool)

(assert (= bs!282821 (and d!330252 b!1155212)))

(declare-fun lambda!46570 () Int)

(assert (=> bs!282821 (= lambda!46570 lambda!46558)))

(declare-fun b!1155324 () Bool)

(declare-fun e!738851 () Bool)

(assert (=> b!1155324 (= e!738851 true)))

(declare-fun b!1155323 () Bool)

(declare-fun e!738850 () Bool)

(assert (=> b!1155323 (= e!738850 e!738851)))

(declare-fun b!1155322 () Bool)

(declare-fun e!738849 () Bool)

(assert (=> b!1155322 (= e!738849 e!738850)))

(assert (=> d!330252 e!738849))

(assert (= b!1155323 b!1155324))

(assert (= b!1155322 b!1155323))

(assert (= (and d!330252 (is-Cons!11211 (rules!9409 thiss!10527))) b!1155322))

(declare-fun order!6845 () Int)

(declare-fun order!6843 () Int)

(declare-fun dynLambda!4939 (Int Int) Int)

(declare-fun dynLambda!4940 (Int Int) Int)

(assert (=> b!1155324 (< (dynLambda!4939 order!6843 (toValue!3039 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46570))))

(declare-fun order!6847 () Int)

(declare-fun dynLambda!4941 (Int Int) Int)

(assert (=> b!1155324 (< (dynLambda!4941 order!6847 (toChars!2898 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46570))))

(assert (=> d!330252 true))

(declare-fun e!738840 () Bool)

(assert (=> d!330252 e!738840))

(declare-fun res!519810 () Bool)

(assert (=> d!330252 (=> (not res!519810) (not e!738840))))

(declare-fun lt!392822 () Bool)

(assert (=> d!330252 (= res!519810 (= lt!392822 (forall!2860 (list!4133 (tokens!1537 thiss!10527)) lambda!46570)))))

(assert (=> d!330252 (= lt!392822 (forall!2861 (tokens!1537 thiss!10527) lambda!46570))))

(assert (=> d!330252 (not (isEmpty!6918 (rules!9409 thiss!10527)))))

(assert (=> d!330252 (= (rulesProduceEachTokenIndividually!672 Lexer!1631 (rules!9409 thiss!10527) (tokens!1537 thiss!10527)) lt!392822)))

(declare-fun b!1155311 () Bool)

(assert (=> b!1155311 (= e!738840 (= lt!392822 (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) (list!4133 (tokens!1537 thiss!10527)))))))

(assert (= (and d!330252 res!519810) b!1155311))

(assert (=> d!330252 m!1322201))

(assert (=> d!330252 m!1322201))

(declare-fun m!1322295 () Bool)

(assert (=> d!330252 m!1322295))

(declare-fun m!1322297 () Bool)

(assert (=> d!330252 m!1322297))

(assert (=> d!330252 m!1322257))

(assert (=> b!1155311 m!1322201))

(assert (=> b!1155311 m!1322201))

(declare-fun m!1322299 () Bool)

(assert (=> b!1155311 m!1322299))

(assert (=> b!1155212 d!330252))

(declare-fun d!330262 () Bool)

(declare-fun lt!392828 () Bool)

(assert (=> d!330262 (= lt!392828 (forall!2860 (list!4133 (tokens!1537 thiss!10527)) lambda!46558))))

(declare-fun forall!2864 (Conc!3639 Int) Bool)

(assert (=> d!330262 (= lt!392828 (forall!2864 (c!194007 (tokens!1537 thiss!10527)) lambda!46558))))

(assert (=> d!330262 (= (forall!2861 (tokens!1537 thiss!10527) lambda!46558) lt!392828)))

(declare-fun bs!282822 () Bool)

(assert (= bs!282822 d!330262))

(assert (=> bs!282822 m!1322201))

(assert (=> bs!282822 m!1322201))

(declare-fun m!1322305 () Bool)

(assert (=> bs!282822 m!1322305))

(declare-fun m!1322307 () Bool)

(assert (=> bs!282822 m!1322307))

(assert (=> b!1155212 d!330262))

(declare-fun d!330266 () Bool)

(declare-fun list!4135 (Conc!3639) List!11234)

(assert (=> d!330266 (= (list!4133 (tokens!1537 thiss!10527)) (list!4135 (c!194007 (tokens!1537 thiss!10527))))))

(declare-fun bs!282823 () Bool)

(assert (= bs!282823 d!330266))

(declare-fun m!1322309 () Bool)

(assert (=> bs!282823 m!1322309))

(assert (=> b!1155212 d!330266))

(declare-fun bs!282828 () Bool)

(declare-fun d!330268 () Bool)

(assert (= bs!282828 (and d!330268 b!1155212)))

(declare-fun lambda!46573 () Int)

(assert (=> bs!282828 (= lambda!46573 lambda!46558)))

(declare-fun bs!282829 () Bool)

(assert (= bs!282829 (and d!330268 d!330252)))

(assert (=> bs!282829 (= lambda!46573 lambda!46570)))

(declare-fun b!1155354 () Bool)

(declare-fun e!738867 () Bool)

(assert (=> b!1155354 (= e!738867 true)))

(declare-fun b!1155353 () Bool)

(declare-fun e!738866 () Bool)

(assert (=> b!1155353 (= e!738866 e!738867)))

(declare-fun b!1155352 () Bool)

(declare-fun e!738865 () Bool)

(assert (=> b!1155352 (= e!738865 e!738866)))

(assert (=> d!330268 e!738865))

(assert (= b!1155353 b!1155354))

(assert (= b!1155352 b!1155353))

(assert (= (and d!330268 (is-Cons!11211 (rules!9409 thiss!10527))) b!1155352))

(assert (=> b!1155354 (< (dynLambda!4939 order!6843 (toValue!3039 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46573))))

(assert (=> b!1155354 (< (dynLambda!4941 order!6847 (toChars!2898 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46573))))

(assert (=> d!330268 true))

(declare-fun lt!392837 () Bool)

(assert (=> d!330268 (= lt!392837 (forall!2860 lt!392791 lambda!46573))))

(declare-fun e!738863 () Bool)

(assert (=> d!330268 (= lt!392837 e!738863)))

(declare-fun res!519837 () Bool)

(assert (=> d!330268 (=> res!519837 e!738863)))

(assert (=> d!330268 (= res!519837 (not (is-Cons!11210 lt!392791)))))

(assert (=> d!330268 (not (isEmpty!6918 (rules!9409 thiss!10527)))))

(assert (=> d!330268 (= (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) lt!392791) lt!392837)))

(declare-fun b!1155350 () Bool)

(declare-fun e!738864 () Bool)

(assert (=> b!1155350 (= e!738863 e!738864)))

(declare-fun res!519836 () Bool)

(assert (=> b!1155350 (=> (not res!519836) (not e!738864))))

(assert (=> b!1155350 (= res!519836 (rulesProduceIndividualToken!670 Lexer!1631 (rules!9409 thiss!10527) (h!16611 lt!392791)))))

(declare-fun b!1155351 () Bool)

(assert (=> b!1155351 (= e!738864 (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) (t!108882 lt!392791)))))

(assert (= (and d!330268 (not res!519837)) b!1155350))

(assert (= (and b!1155350 res!519836) b!1155351))

(declare-fun m!1322337 () Bool)

(assert (=> d!330268 m!1322337))

(assert (=> d!330268 m!1322257))

(assert (=> b!1155350 m!1322189))

(assert (=> b!1155351 m!1322205))

(assert (=> b!1155212 d!330268))

(declare-fun d!330280 () Bool)

(declare-fun lt!392840 () Int)

(declare-fun size!8828 (List!11234) Int)

(assert (=> d!330280 (= lt!392840 (size!8828 (list!4133 (tokens!1537 thiss!10527))))))

(declare-fun size!8829 (Conc!3639) Int)

(assert (=> d!330280 (= lt!392840 (size!8829 (c!194007 (tokens!1537 thiss!10527))))))

(assert (=> d!330280 (= (size!8825 (tokens!1537 thiss!10527)) lt!392840)))

(declare-fun bs!282830 () Bool)

(assert (= bs!282830 d!330280))

(assert (=> bs!282830 m!1322201))

(assert (=> bs!282830 m!1322201))

(declare-fun m!1322339 () Bool)

(assert (=> bs!282830 m!1322339))

(declare-fun m!1322341 () Bool)

(assert (=> bs!282830 m!1322341))

(assert (=> b!1155207 d!330280))

(declare-fun d!330282 () Bool)

(declare-fun c!194014 () Bool)

(assert (=> d!330282 (= c!194014 (is-Node!3639 (c!194007 (tokens!1537 thiss!10527))))))

(declare-fun e!738872 () Bool)

(assert (=> d!330282 (= (inv!14721 (c!194007 (tokens!1537 thiss!10527))) e!738872)))

(declare-fun b!1155361 () Bool)

(declare-fun inv!14726 (Conc!3639) Bool)

(assert (=> b!1155361 (= e!738872 (inv!14726 (c!194007 (tokens!1537 thiss!10527))))))

(declare-fun b!1155362 () Bool)

(declare-fun e!738873 () Bool)

(assert (=> b!1155362 (= e!738872 e!738873)))

(declare-fun res!519840 () Bool)

(assert (=> b!1155362 (= res!519840 (not (is-Leaf!5619 (c!194007 (tokens!1537 thiss!10527)))))))

(assert (=> b!1155362 (=> res!519840 e!738873)))

(declare-fun b!1155363 () Bool)

(declare-fun inv!14727 (Conc!3639) Bool)

(assert (=> b!1155363 (= e!738873 (inv!14727 (c!194007 (tokens!1537 thiss!10527))))))

(assert (= (and d!330282 c!194014) b!1155361))

(assert (= (and d!330282 (not c!194014)) b!1155362))

(assert (= (and b!1155362 (not res!519840)) b!1155363))

(declare-fun m!1322343 () Bool)

(assert (=> b!1155361 m!1322343))

(declare-fun m!1322345 () Bool)

(assert (=> b!1155363 m!1322345))

(assert (=> b!1155211 d!330282))

(declare-fun d!330284 () Bool)

(assert (=> d!330284 (forall!2860 lt!392793 lambda!46558)))

(declare-fun lt!392843 () Unit!17245)

(declare-fun choose!7414 (List!11234 List!11234 Int) Unit!17245)

(assert (=> d!330284 (= lt!392843 (choose!7414 lt!392793 lt!392791 lambda!46558))))

(assert (=> d!330284 (forall!2860 lt!392791 lambda!46558)))

(assert (=> d!330284 (= (lemmaForallSubseq!86 lt!392793 lt!392791 lambda!46558) lt!392843)))

(declare-fun bs!282831 () Bool)

(assert (= bs!282831 d!330284))

(assert (=> bs!282831 m!1322179))

(declare-fun m!1322347 () Bool)

(assert (=> bs!282831 m!1322347))

(declare-fun m!1322349 () Bool)

(assert (=> bs!282831 m!1322349))

(assert (=> b!1155210 d!330284))

(declare-fun d!330286 () Bool)

(assert (=> d!330286 (subseq!194 (slice!154 lt!392791 from!787 to!267) lt!392791)))

(declare-fun lt!392846 () Unit!17245)

(declare-fun choose!7415 (List!11234 Int Int) Unit!17245)

(assert (=> d!330286 (= lt!392846 (choose!7415 lt!392791 from!787 to!267))))

(declare-fun e!738876 () Bool)

(assert (=> d!330286 e!738876))

(declare-fun res!519843 () Bool)

(assert (=> d!330286 (=> (not res!519843) (not e!738876))))

(assert (=> d!330286 (= res!519843 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330286 (= (lemmaSliceSubseq!35 lt!392791 from!787 to!267) lt!392846)))

(declare-fun b!1155366 () Bool)

(assert (=> b!1155366 (= e!738876 (<= to!267 (size!8828 lt!392791)))))

(assert (= (and d!330286 res!519843) b!1155366))

(assert (=> d!330286 m!1322177))

(assert (=> d!330286 m!1322177))

(assert (=> d!330286 m!1322187))

(declare-fun m!1322351 () Bool)

(assert (=> d!330286 m!1322351))

(declare-fun m!1322353 () Bool)

(assert (=> b!1155366 m!1322353))

(assert (=> b!1155210 d!330286))

(declare-fun d!330288 () Bool)

(declare-fun take!38 (List!11234 Int) List!11234)

(declare-fun drop!440 (List!11234 Int) List!11234)

(assert (=> d!330288 (= (slice!154 lt!392791 from!787 to!267) (take!38 (drop!440 lt!392791 from!787) (- to!267 from!787)))))

(declare-fun bs!282832 () Bool)

(assert (= bs!282832 d!330288))

(declare-fun m!1322355 () Bool)

(assert (=> bs!282832 m!1322355))

(assert (=> bs!282832 m!1322355))

(declare-fun m!1322357 () Bool)

(assert (=> bs!282832 m!1322357))

(assert (=> b!1155210 d!330288))

(declare-fun d!330290 () Bool)

(declare-fun e!738881 () Bool)

(assert (=> d!330290 e!738881))

(declare-fun res!519850 () Bool)

(assert (=> d!330290 (=> (not res!519850) (not e!738881))))

(declare-fun slice!157 (Conc!3639 Int Int) Conc!3639)

(assert (=> d!330290 (= res!519850 (isBalanced!1026 (slice!157 (c!194007 (tokens!1537 thiss!10527)) from!787 to!267)))))

(declare-fun lt!392849 () BalanceConc!7300)

(assert (=> d!330290 (= lt!392849 (BalanceConc!7301 (slice!157 (c!194007 (tokens!1537 thiss!10527)) from!787 to!267)))))

(declare-fun e!738882 () Bool)

(assert (=> d!330290 e!738882))

(declare-fun res!519852 () Bool)

(assert (=> d!330290 (=> (not res!519852) (not e!738882))))

(assert (=> d!330290 (= res!519852 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330290 (= (slice!153 (tokens!1537 thiss!10527) from!787 to!267) lt!392849)))

(declare-fun b!1155373 () Bool)

(declare-fun res!519851 () Bool)

(assert (=> b!1155373 (=> (not res!519851) (not e!738882))))

(assert (=> b!1155373 (= res!519851 (<= to!267 (size!8825 (tokens!1537 thiss!10527))))))

(declare-fun b!1155374 () Bool)

(assert (=> b!1155374 (= e!738882 (isBalanced!1026 (c!194007 (tokens!1537 thiss!10527))))))

(declare-fun b!1155375 () Bool)

(assert (=> b!1155375 (= e!738881 (= (list!4133 lt!392849) (slice!154 (list!4133 (tokens!1537 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330290 res!519852) b!1155373))

(assert (= (and b!1155373 res!519851) b!1155374))

(assert (= (and d!330290 res!519850) b!1155375))

(declare-fun m!1322359 () Bool)

(assert (=> d!330290 m!1322359))

(assert (=> d!330290 m!1322359))

(declare-fun m!1322361 () Bool)

(assert (=> d!330290 m!1322361))

(assert (=> b!1155373 m!1322167))

(assert (=> b!1155374 m!1322183))

(declare-fun m!1322363 () Bool)

(assert (=> b!1155375 m!1322363))

(assert (=> b!1155375 m!1322201))

(assert (=> b!1155375 m!1322201))

(declare-fun m!1322365 () Bool)

(assert (=> b!1155375 m!1322365))

(assert (=> b!1155210 d!330290))

(declare-fun d!330292 () Bool)

(declare-fun res!519857 () Bool)

(declare-fun e!738887 () Bool)

(assert (=> d!330292 (=> res!519857 e!738887)))

(assert (=> d!330292 (= res!519857 (is-Nil!11210 lt!392793))))

(assert (=> d!330292 (= (forall!2860 lt!392793 lambda!46558) e!738887)))

(declare-fun b!1155380 () Bool)

(declare-fun e!738888 () Bool)

(assert (=> b!1155380 (= e!738887 e!738888)))

(declare-fun res!519858 () Bool)

(assert (=> b!1155380 (=> (not res!519858) (not e!738888))))

(declare-fun dynLambda!4942 (Int Token!3538) Bool)

(assert (=> b!1155380 (= res!519858 (dynLambda!4942 lambda!46558 (h!16611 lt!392793)))))

(declare-fun b!1155381 () Bool)

(assert (=> b!1155381 (= e!738888 (forall!2860 (t!108882 lt!392793) lambda!46558))))

(assert (= (and d!330292 (not res!519857)) b!1155380))

(assert (= (and b!1155380 res!519858) b!1155381))

(declare-fun b_lambda!34529 () Bool)

(assert (=> (not b_lambda!34529) (not b!1155380)))

(declare-fun m!1322367 () Bool)

(assert (=> b!1155380 m!1322367))

(declare-fun m!1322369 () Bool)

(assert (=> b!1155381 m!1322369))

(assert (=> b!1155210 d!330292))

(declare-fun b!1155403 () Bool)

(declare-fun e!738899 () Bool)

(declare-fun e!738900 () Bool)

(assert (=> b!1155403 (= e!738899 e!738900)))

(declare-fun res!519883 () Bool)

(assert (=> b!1155403 (=> (not res!519883) (not e!738900))))

(declare-fun height!498 (Conc!3639) Int)

(assert (=> b!1155403 (= res!519883 (<= (- 1) (- (height!498 (left!9768 (c!194007 (tokens!1537 thiss!10527)))) (height!498 (right!10098 (c!194007 (tokens!1537 thiss!10527)))))))))

(declare-fun b!1155404 () Bool)

(declare-fun res!519882 () Bool)

(assert (=> b!1155404 (=> (not res!519882) (not e!738900))))

(assert (=> b!1155404 (= res!519882 (isBalanced!1026 (right!10098 (c!194007 (tokens!1537 thiss!10527)))))))

(declare-fun b!1155405 () Bool)

(declare-fun res!519881 () Bool)

(assert (=> b!1155405 (=> (not res!519881) (not e!738900))))

(declare-fun isEmpty!6920 (Conc!3639) Bool)

(assert (=> b!1155405 (= res!519881 (not (isEmpty!6920 (left!9768 (c!194007 (tokens!1537 thiss!10527))))))))

(declare-fun b!1155406 () Bool)

(declare-fun res!519884 () Bool)

(assert (=> b!1155406 (=> (not res!519884) (not e!738900))))

(assert (=> b!1155406 (= res!519884 (isBalanced!1026 (left!9768 (c!194007 (tokens!1537 thiss!10527)))))))

(declare-fun b!1155407 () Bool)

(assert (=> b!1155407 (= e!738900 (not (isEmpty!6920 (right!10098 (c!194007 (tokens!1537 thiss!10527))))))))

(declare-fun d!330294 () Bool)

(declare-fun res!519880 () Bool)

(assert (=> d!330294 (=> res!519880 e!738899)))

(assert (=> d!330294 (= res!519880 (not (is-Node!3639 (c!194007 (tokens!1537 thiss!10527)))))))

(assert (=> d!330294 (= (isBalanced!1026 (c!194007 (tokens!1537 thiss!10527))) e!738899)))

(declare-fun b!1155408 () Bool)

(declare-fun res!519885 () Bool)

(assert (=> b!1155408 (=> (not res!519885) (not e!738900))))

(assert (=> b!1155408 (= res!519885 (<= (- (height!498 (left!9768 (c!194007 (tokens!1537 thiss!10527)))) (height!498 (right!10098 (c!194007 (tokens!1537 thiss!10527))))) 1))))

(assert (= (and d!330294 (not res!519880)) b!1155403))

(assert (= (and b!1155403 res!519883) b!1155408))

(assert (= (and b!1155408 res!519885) b!1155406))

(assert (= (and b!1155406 res!519884) b!1155404))

(assert (= (and b!1155404 res!519882) b!1155405))

(assert (= (and b!1155405 res!519881) b!1155407))

(declare-fun m!1322391 () Bool)

(assert (=> b!1155407 m!1322391))

(declare-fun m!1322393 () Bool)

(assert (=> b!1155408 m!1322393))

(declare-fun m!1322395 () Bool)

(assert (=> b!1155408 m!1322395))

(declare-fun m!1322397 () Bool)

(assert (=> b!1155405 m!1322397))

(declare-fun m!1322399 () Bool)

(assert (=> b!1155406 m!1322399))

(declare-fun m!1322401 () Bool)

(assert (=> b!1155404 m!1322401))

(assert (=> b!1155403 m!1322393))

(assert (=> b!1155403 m!1322395))

(assert (=> b!1155210 d!330294))

(declare-fun e!738911 () Bool)

(declare-fun b!1155419 () Bool)

(assert (=> b!1155419 (= e!738911 (subseq!194 (t!108882 (slice!154 lt!392791 from!787 to!267)) (t!108882 lt!392791)))))

(declare-fun b!1155417 () Bool)

(declare-fun e!738912 () Bool)

(declare-fun e!738910 () Bool)

(assert (=> b!1155417 (= e!738912 e!738910)))

(declare-fun res!519896 () Bool)

(assert (=> b!1155417 (=> (not res!519896) (not e!738910))))

(assert (=> b!1155417 (= res!519896 (is-Cons!11210 lt!392791))))

(declare-fun b!1155420 () Bool)

(declare-fun e!738909 () Bool)

(assert (=> b!1155420 (= e!738909 (subseq!194 (slice!154 lt!392791 from!787 to!267) (t!108882 lt!392791)))))

(declare-fun d!330298 () Bool)

(declare-fun res!519895 () Bool)

(assert (=> d!330298 (=> res!519895 e!738912)))

(assert (=> d!330298 (= res!519895 (is-Nil!11210 (slice!154 lt!392791 from!787 to!267)))))

(assert (=> d!330298 (= (subseq!194 (slice!154 lt!392791 from!787 to!267) lt!392791) e!738912)))

(declare-fun b!1155418 () Bool)

(assert (=> b!1155418 (= e!738910 e!738909)))

(declare-fun res!519897 () Bool)

(assert (=> b!1155418 (=> res!519897 e!738909)))

(assert (=> b!1155418 (= res!519897 e!738911)))

(declare-fun res!519894 () Bool)

(assert (=> b!1155418 (=> (not res!519894) (not e!738911))))

(assert (=> b!1155418 (= res!519894 (= (h!16611 (slice!154 lt!392791 from!787 to!267)) (h!16611 lt!392791)))))

(assert (= (and d!330298 (not res!519895)) b!1155417))

(assert (= (and b!1155417 res!519896) b!1155418))

(assert (= (and b!1155418 res!519894) b!1155419))

(assert (= (and b!1155418 (not res!519897)) b!1155420))

(declare-fun m!1322403 () Bool)

(assert (=> b!1155419 m!1322403))

(assert (=> b!1155420 m!1322177))

(declare-fun m!1322405 () Bool)

(assert (=> b!1155420 m!1322405))

(assert (=> b!1155210 d!330298))

(declare-fun d!330300 () Bool)

(assert (=> d!330300 (= (list!4133 (slice!153 (tokens!1537 thiss!10527) from!787 to!267)) (list!4135 (c!194007 (slice!153 (tokens!1537 thiss!10527) from!787 to!267))))))

(declare-fun bs!282833 () Bool)

(assert (= bs!282833 d!330300))

(declare-fun m!1322407 () Bool)

(assert (=> bs!282833 m!1322407))

(assert (=> b!1155210 d!330300))

(declare-fun d!330302 () Bool)

(declare-fun res!519907 () Bool)

(declare-fun e!738927 () Bool)

(assert (=> d!330302 (=> (not res!519907) (not e!738927))))

(assert (=> d!330302 (= res!519907 (not (isEmpty!6918 (rules!9409 thiss!10527))))))

(assert (=> d!330302 (= (inv!14720 thiss!10527) e!738927)))

(declare-fun b!1155443 () Bool)

(declare-fun res!519908 () Bool)

(assert (=> b!1155443 (=> (not res!519908) (not e!738927))))

(assert (=> b!1155443 (= res!519908 (rulesInvariant!1507 Lexer!1631 (rules!9409 thiss!10527)))))

(declare-fun b!1155444 () Bool)

(declare-fun res!519909 () Bool)

(assert (=> b!1155444 (=> (not res!519909) (not e!738927))))

(assert (=> b!1155444 (= res!519909 (rulesProduceEachTokenIndividually!672 Lexer!1631 (rules!9409 thiss!10527) (tokens!1537 thiss!10527)))))

(declare-fun b!1155445 () Bool)

(assert (=> b!1155445 (= e!738927 (separableTokens!88 Lexer!1631 (tokens!1537 thiss!10527) (rules!9409 thiss!10527)))))

(assert (= (and d!330302 res!519907) b!1155443))

(assert (= (and b!1155443 res!519908) b!1155444))

(assert (= (and b!1155444 res!519909) b!1155445))

(assert (=> d!330302 m!1322257))

(assert (=> b!1155443 m!1322191))

(assert (=> b!1155444 m!1322199))

(assert (=> b!1155445 m!1322255))

(assert (=> start!100712 d!330302))

(declare-fun d!330310 () Bool)

(assert (=> d!330310 (= (inv!14722 (tokens!1537 thiss!10527)) (isBalanced!1026 (c!194007 (tokens!1537 thiss!10527))))))

(declare-fun bs!282837 () Bool)

(assert (= bs!282837 d!330310))

(assert (=> bs!282837 m!1322183))

(assert (=> b!1155214 d!330310))

(declare-fun bs!282838 () Bool)

(declare-fun d!330312 () Bool)

(assert (= bs!282838 (and d!330312 b!1155212)))

(declare-fun lambda!46579 () Int)

(assert (=> bs!282838 (= lambda!46579 lambda!46558)))

(declare-fun bs!282839 () Bool)

(assert (= bs!282839 (and d!330312 d!330252)))

(assert (=> bs!282839 (= lambda!46579 lambda!46570)))

(declare-fun bs!282840 () Bool)

(assert (= bs!282840 (and d!330312 d!330268)))

(assert (=> bs!282840 (= lambda!46579 lambda!46573)))

(declare-fun b!1155450 () Bool)

(declare-fun e!738932 () Bool)

(assert (=> b!1155450 (= e!738932 true)))

(declare-fun b!1155449 () Bool)

(declare-fun e!738931 () Bool)

(assert (=> b!1155449 (= e!738931 e!738932)))

(declare-fun b!1155448 () Bool)

(declare-fun e!738930 () Bool)

(assert (=> b!1155448 (= e!738930 e!738931)))

(assert (=> d!330312 e!738930))

(assert (= b!1155449 b!1155450))

(assert (= b!1155448 b!1155449))

(assert (= (and d!330312 (is-Cons!11211 (rules!9409 thiss!10527))) b!1155448))

(assert (=> b!1155450 (< (dynLambda!4939 order!6843 (toValue!3039 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46579))))

(assert (=> b!1155450 (< (dynLambda!4941 order!6847 (toChars!2898 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46579))))

(assert (=> d!330312 true))

(declare-fun lt!392862 () Bool)

(assert (=> d!330312 (= lt!392862 (forall!2860 (t!108882 lt!392791) lambda!46579))))

(declare-fun e!738928 () Bool)

(assert (=> d!330312 (= lt!392862 e!738928)))

(declare-fun res!519911 () Bool)

(assert (=> d!330312 (=> res!519911 e!738928)))

(assert (=> d!330312 (= res!519911 (not (is-Cons!11210 (t!108882 lt!392791))))))

(assert (=> d!330312 (not (isEmpty!6918 (rules!9409 thiss!10527)))))

(assert (=> d!330312 (= (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) (t!108882 lt!392791)) lt!392862)))

(declare-fun b!1155446 () Bool)

(declare-fun e!738929 () Bool)

(assert (=> b!1155446 (= e!738928 e!738929)))

(declare-fun res!519910 () Bool)

(assert (=> b!1155446 (=> (not res!519910) (not e!738929))))

(assert (=> b!1155446 (= res!519910 (rulesProduceIndividualToken!670 Lexer!1631 (rules!9409 thiss!10527) (h!16611 (t!108882 lt!392791))))))

(declare-fun b!1155447 () Bool)

(assert (=> b!1155447 (= e!738929 (rulesProduceEachTokenIndividuallyList!501 Lexer!1631 (rules!9409 thiss!10527) (t!108882 (t!108882 lt!392791))))))

(assert (= (and d!330312 (not res!519911)) b!1155446))

(assert (= (and b!1155446 res!519910) b!1155447))

(declare-fun m!1322421 () Bool)

(assert (=> d!330312 m!1322421))

(assert (=> d!330312 m!1322257))

(declare-fun m!1322423 () Bool)

(assert (=> b!1155446 m!1322423))

(declare-fun m!1322425 () Bool)

(assert (=> b!1155447 m!1322425))

(assert (=> b!1155209 d!330312))

(declare-fun tp!333045 () Bool)

(declare-fun e!738937 () Bool)

(declare-fun b!1155459 () Bool)

(declare-fun tp!333043 () Bool)

(assert (=> b!1155459 (= e!738937 (and (inv!14721 (left!9768 (c!194007 (tokens!1537 thiss!10527)))) tp!333045 (inv!14721 (right!10098 (c!194007 (tokens!1537 thiss!10527)))) tp!333043))))

(declare-fun b!1155461 () Bool)

(declare-fun e!738938 () Bool)

(declare-fun tp!333044 () Bool)

(assert (=> b!1155461 (= e!738938 tp!333044)))

(declare-fun b!1155460 () Bool)

(declare-fun inv!14728 (IArray!7283) Bool)

(assert (=> b!1155460 (= e!738937 (and (inv!14728 (xs!6344 (c!194007 (tokens!1537 thiss!10527)))) e!738938))))

(assert (=> b!1155211 (= tp!333029 (and (inv!14721 (c!194007 (tokens!1537 thiss!10527))) e!738937))))

(assert (= (and b!1155211 (is-Node!3639 (c!194007 (tokens!1537 thiss!10527)))) b!1155459))

(assert (= b!1155460 b!1155461))

(assert (= (and b!1155211 (is-Leaf!5619 (c!194007 (tokens!1537 thiss!10527)))) b!1155460))

(declare-fun m!1322427 () Bool)

(assert (=> b!1155459 m!1322427))

(declare-fun m!1322429 () Bool)

(assert (=> b!1155459 m!1322429))

(declare-fun m!1322431 () Bool)

(assert (=> b!1155460 m!1322431))

(assert (=> b!1155211 m!1322169))

(declare-fun b!1155470 () Bool)

(declare-fun e!738943 () Bool)

(assert (=> b!1155470 (= e!738943 true)))

(declare-fun b!1155472 () Bool)

(declare-fun e!738944 () Bool)

(assert (=> b!1155472 (= e!738944 true)))

(declare-fun b!1155471 () Bool)

(assert (=> b!1155471 (= e!738943 e!738944)))

(assert (=> b!1155222 e!738943))

(assert (= (and b!1155222 (is-Node!3639 (c!194007 (tokens!1537 thiss!10527)))) b!1155470))

(assert (= b!1155471 b!1155472))

(assert (= (and b!1155222 (is-Leaf!5619 (c!194007 (tokens!1537 thiss!10527)))) b!1155471))

(declare-fun b!1155475 () Bool)

(declare-fun e!738947 () Bool)

(assert (=> b!1155475 (= e!738947 true)))

(declare-fun b!1155474 () Bool)

(declare-fun e!738946 () Bool)

(assert (=> b!1155474 (= e!738946 e!738947)))

(declare-fun b!1155473 () Bool)

(declare-fun e!738945 () Bool)

(assert (=> b!1155473 (= e!738945 e!738946)))

(assert (=> b!1155221 e!738945))

(assert (= b!1155474 b!1155475))

(assert (= b!1155473 b!1155474))

(assert (= (and b!1155221 (is-Cons!11211 (rules!9409 thiss!10527))) b!1155473))

(assert (=> b!1155475 (< (dynLambda!4939 order!6843 (toValue!3039 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46558))))

(assert (=> b!1155475 (< (dynLambda!4941 order!6847 (toChars!2898 (transformation!1938 (h!16612 (rules!9409 thiss!10527))))) (dynLambda!4940 order!6845 lambda!46558))))

(declare-fun b!1155486 () Bool)

(declare-fun b_free!27649 () Bool)

(declare-fun b_next!28353 () Bool)

(assert (=> b!1155486 (= b_free!27649 (not b_next!28353))))

(declare-fun tp!333057 () Bool)

(declare-fun b_and!80525 () Bool)

(assert (=> b!1155486 (= tp!333057 b_and!80525)))

(declare-fun b_free!27651 () Bool)

(declare-fun b_next!28355 () Bool)

(assert (=> b!1155486 (= b_free!27651 (not b_next!28355))))

(declare-fun tp!333054 () Bool)

(declare-fun b_and!80527 () Bool)

(assert (=> b!1155486 (= tp!333054 b_and!80527)))

(declare-fun e!738957 () Bool)

(assert (=> b!1155486 (= e!738957 (and tp!333057 tp!333054))))

(declare-fun b!1155485 () Bool)

(declare-fun e!738958 () Bool)

(declare-fun tp!333055 () Bool)

(declare-fun inv!14717 (String!13610) Bool)

(declare-fun inv!14729 (TokenValueInjection!3708) Bool)

(assert (=> b!1155485 (= e!738958 (and tp!333055 (inv!14717 (tag!2200 (h!16612 (rules!9409 thiss!10527)))) (inv!14729 (transformation!1938 (h!16612 (rules!9409 thiss!10527)))) e!738957))))

(declare-fun b!1155484 () Bool)

(declare-fun e!738959 () Bool)

(declare-fun tp!333056 () Bool)

(assert (=> b!1155484 (= e!738959 (and e!738958 tp!333056))))

(assert (=> b!1155214 (= tp!333030 e!738959)))

(assert (= b!1155485 b!1155486))

(assert (= b!1155484 b!1155485))

(assert (= (and b!1155214 (is-Cons!11211 (rules!9409 thiss!10527))) b!1155484))

(declare-fun m!1322433 () Bool)

(assert (=> b!1155485 m!1322433))

(declare-fun m!1322435 () Bool)

(assert (=> b!1155485 m!1322435))

(declare-fun b_lambda!34531 () Bool)

(assert (= b_lambda!34529 (or b!1155212 b_lambda!34531)))

(declare-fun bs!282841 () Bool)

(declare-fun d!330314 () Bool)

(assert (= bs!282841 (and d!330314 b!1155212)))

(assert (=> bs!282841 (= (dynLambda!4942 lambda!46558 (h!16611 lt!392793)) (rulesProduceIndividualToken!670 Lexer!1631 (rules!9409 thiss!10527) (h!16611 lt!392793)))))

(declare-fun m!1322437 () Bool)

(assert (=> bs!282841 m!1322437))

(assert (=> b!1155380 d!330314))

(push 1)

(assert (not b!1155407))

(assert (not b!1155406))

(assert (not b!1155443))

(assert (not d!330268))

(assert (not d!330312))

(assert (not b!1155459))

(assert (not d!330262))

(assert (not d!330302))

(assert (not b!1155405))

(assert (not d!330290))

(assert (not b!1155351))

(assert (not d!330288))

(assert (not b!1155403))

(assert (not d!330250))

(assert (not d!330252))

(assert (not b!1155374))

(assert (not d!330284))

(assert (not b!1155373))

(assert (not b!1155352))

(assert (not b!1155446))

(assert (not d!330244))

(assert (not b!1155445))

(assert (not b!1155366))

(assert (not b!1155473))

(assert (not b!1155485))

(assert (not b!1155275))

(assert (not bs!282841))

(assert (not b!1155420))

(assert (not b!1155484))

(assert b_and!80525)

(assert (not b!1155257))

(assert (not b!1155472))

(assert (not b!1155419))

(assert (not b!1155350))

(assert (not b!1155447))

(assert (not b!1155274))

(assert (not b_next!28355))

(assert (not d!330280))

(assert (not b_next!28353))

(assert (not d!330242))

(assert (not b!1155381))

(assert (not b!1155265))

(assert (not b!1155460))

(assert (not b!1155470))

(assert (not b!1155211))

(assert (not b!1155311))

(assert (not b!1155375))

(assert (not b!1155361))

(assert (not d!330266))

(assert (not b!1155444))

(assert (not b!1155448))

(assert (not d!330310))

(assert (not b!1155266))

(assert (not b_lambda!34531))

(assert (not d!330300))

(assert (not b!1155408))

(assert (not b!1155404))

(assert (not d!330286))

(assert b_and!80527)

(assert (not b!1155322))

(assert (not b!1155461))

(assert (not b!1155273))

(assert (not b!1155363))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80525)

(assert b_and!80527)

(assert (not b_next!28353))

(assert (not b_next!28355))

(check-sat)

(pop 1)

