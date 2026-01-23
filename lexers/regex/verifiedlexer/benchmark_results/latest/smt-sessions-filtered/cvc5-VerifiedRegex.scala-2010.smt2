; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!102224 () Bool)

(assert start!102224)

(declare-fun b!1164916 () Bool)

(declare-fun e!746371 () Bool)

(assert (=> b!1164916 (= e!746371 true)))

(declare-fun b!1164915 () Bool)

(declare-fun e!746370 () Bool)

(assert (=> b!1164915 (= e!746370 e!746371)))

(declare-fun b!1164907 () Bool)

(assert (=> b!1164907 e!746370))

(assert (= b!1164915 b!1164916))

(assert (= b!1164907 b!1164915))

(declare-fun b!1164902 () Bool)

(declare-fun res!525791 () Bool)

(declare-fun e!746363 () Bool)

(assert (=> b!1164902 (=> (not res!525791) (not e!746363))))

(declare-fun to!267 () Int)

(declare-datatypes ((List!11510 0))(
  ( (Nil!11486) (Cons!11486 (h!16887 (_ BitVec 16)) (t!110182 List!11510)) )
))
(declare-datatypes ((TokenValue!2066 0))(
  ( (FloatLiteralValue!4132 (text!14907 List!11510)) (TokenValueExt!2065 (__x!7843 Int)) (Broken!10330 (value!64972 List!11510)) (Object!2089) (End!2066) (Def!2066) (Underscore!2066) (Match!2066) (Else!2066) (Error!2066) (Case!2066) (If!2066) (Extends!2066) (Abstract!2066) (Class!2066) (Val!2066) (DelimiterValue!4132 (del!2126 List!11510)) (KeywordValue!2072 (value!64973 List!11510)) (CommentValue!4132 (value!64974 List!11510)) (WhitespaceValue!4132 (value!64975 List!11510)) (IndentationValue!2066 (value!64976 List!11510)) (String!13919) (Int32!2066) (Broken!10331 (value!64977 List!11510)) (Boolean!2067) (Unit!17580) (OperatorValue!2069 (op!2126 List!11510)) (IdentifierValue!4132 (value!64978 List!11510)) (IdentifierValue!4133 (value!64979 List!11510)) (WhitespaceValue!4133 (value!64980 List!11510)) (True!4132) (False!4132) (Broken!10332 (value!64981 List!11510)) (Broken!10333 (value!64982 List!11510)) (True!4133) (RightBrace!2066) (RightBracket!2066) (Colon!2066) (Null!2066) (Comma!2066) (LeftBracket!2066) (False!4133) (LeftBrace!2066) (ImaginaryLiteralValue!2066 (text!14908 List!11510)) (StringLiteralValue!6198 (value!64983 List!11510)) (EOFValue!2066 (value!64984 List!11510)) (IdentValue!2066 (value!64985 List!11510)) (DelimiterValue!4133 (value!64986 List!11510)) (DedentValue!2066 (value!64987 List!11510)) (NewLineValue!2066 (value!64988 List!11510)) (IntegerValue!6198 (value!64989 (_ BitVec 32)) (text!14909 List!11510)) (IntegerValue!6199 (value!64990 Int) (text!14910 List!11510)) (Times!2066) (Or!2066) (Equal!2066) (Minus!2066) (Broken!10334 (value!64991 List!11510)) (And!2066) (Div!2066) (LessEqual!2066) (Mod!2066) (Concat!5336) (Not!2066) (Plus!2066) (SpaceValue!2066 (value!64992 List!11510)) (IntegerValue!6200 (value!64993 Int) (text!14911 List!11510)) (StringLiteralValue!6199 (text!14912 List!11510)) (FloatLiteralValue!4133 (text!14913 List!11510)) (BytesLiteralValue!2066 (value!64994 List!11510)) (CommentValue!4133 (value!64995 List!11510)) (StringLiteralValue!6200 (value!64996 List!11510)) (ErrorTokenValue!2066 (msg!2127 List!11510)) )
))
(declare-datatypes ((C!6858 0))(
  ( (C!6859 (val!3685 Int)) )
))
(declare-datatypes ((Regex!3270 0))(
  ( (ElementMatch!3270 (c!194592 C!6858)) (Concat!5337 (regOne!7052 Regex!3270) (regTwo!7052 Regex!3270)) (EmptyExpr!3270) (Star!3270 (reg!3599 Regex!3270)) (EmptyLang!3270) (Union!3270 (regOne!7053 Regex!3270) (regTwo!7053 Regex!3270)) )
))
(declare-datatypes ((String!13920 0))(
  ( (String!13921 (value!64997 String)) )
))
(declare-datatypes ((List!11511 0))(
  ( (Nil!11487) (Cons!11487 (h!16888 C!6858) (t!110183 List!11511)) )
))
(declare-datatypes ((IArray!7529 0))(
  ( (IArray!7530 (innerList!3822 List!11511)) )
))
(declare-datatypes ((Conc!3762 0))(
  ( (Node!3762 (left!10042 Conc!3762) (right!10372 Conc!3762) (csize!7754 Int) (cheight!3973 Int)) (Leaf!5773 (xs!6467 IArray!7529) (csize!7755 Int)) (Empty!3762) )
))
(declare-datatypes ((BalanceConc!7546 0))(
  ( (BalanceConc!7547 (c!194593 Conc!3762)) )
))
(declare-datatypes ((TokenValueInjection!3832 0))(
  ( (TokenValueInjection!3833 (toValue!3101 Int) (toChars!2960 Int)) )
))
(declare-datatypes ((Rule!3800 0))(
  ( (Rule!3801 (regex!2000 Regex!3270) (tag!2262 String!13920) (isSeparator!2000 Bool) (transformation!2000 TokenValueInjection!3832)) )
))
(declare-datatypes ((Token!3662 0))(
  ( (Token!3663 (value!64998 TokenValue!2066) (rule!3421 Rule!3800) (size!9046 Int) (originalCharacters!2554 List!11511)) )
))
(declare-datatypes ((List!11512 0))(
  ( (Nil!11488) (Cons!11488 (h!16889 Token!3662) (t!110184 List!11512)) )
))
(declare-datatypes ((List!11513 0))(
  ( (Nil!11489) (Cons!11489 (h!16890 Rule!3800) (t!110185 List!11513)) )
))
(declare-datatypes ((IArray!7531 0))(
  ( (IArray!7532 (innerList!3823 List!11512)) )
))
(declare-datatypes ((Conc!3763 0))(
  ( (Node!3763 (left!10043 Conc!3763) (right!10373 Conc!3763) (csize!7756 Int) (cheight!3974 Int)) (Leaf!5774 (xs!6468 IArray!7531) (csize!7757 Int)) (Empty!3763) )
))
(declare-datatypes ((BalanceConc!7548 0))(
  ( (BalanceConc!7549 (c!194594 Conc!3763)) )
))
(declare-datatypes ((PrintableTokens!686 0))(
  ( (PrintableTokens!687 (rules!9561 List!11513) (tokens!1617 BalanceConc!7548)) )
))
(declare-fun thiss!10527 () PrintableTokens!686)

(declare-fun size!9047 (BalanceConc!7548) Int)

(assert (=> b!1164902 (= res!525791 (<= to!267 (size!9047 (tokens!1617 thiss!10527))))))

(declare-fun b!1164903 () Bool)

(declare-fun e!746364 () Bool)

(assert (=> b!1164903 (= e!746363 e!746364)))

(declare-fun res!525790 () Bool)

(assert (=> b!1164903 (=> (not res!525790) (not e!746364))))

(declare-datatypes ((LexerInterface!1695 0))(
  ( (LexerInterfaceExt!1692 (__x!7844 Int)) (Lexer!1693) )
))
(declare-fun rulesInvariant!1569 (LexerInterface!1695 List!11513) Bool)

(assert (=> b!1164903 (= res!525790 (rulesInvariant!1569 Lexer!1693 (rules!9561 thiss!10527)))))

(declare-datatypes ((Unit!17581 0))(
  ( (Unit!17582) )
))
(declare-fun lt!398287 () Unit!17581)

(declare-fun lemmaInvariant!187 (PrintableTokens!686) Unit!17581)

(assert (=> b!1164903 (= lt!398287 (lemmaInvariant!187 thiss!10527))))

(declare-fun b!1164904 () Bool)

(declare-fun e!746361 () Bool)

(declare-fun e!746365 () Bool)

(assert (=> b!1164904 (= e!746361 e!746365)))

(declare-fun res!525789 () Bool)

(assert (=> b!1164904 (=> (not res!525789) (not e!746365))))

(declare-fun lt!398288 () List!11512)

(declare-fun rulesProduceIndividualToken!730 (LexerInterface!1695 List!11513 Token!3662) Bool)

(assert (=> b!1164904 (= res!525789 (rulesProduceIndividualToken!730 Lexer!1693 (rules!9561 thiss!10527) (h!16889 lt!398288)))))

(declare-fun res!525792 () Bool)

(assert (=> start!102224 (=> (not res!525792) (not e!746363))))

(declare-fun from!787 () Int)

(assert (=> start!102224 (= res!525792 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102224 e!746363))

(assert (=> start!102224 true))

(declare-fun e!746360 () Bool)

(declare-fun inv!15125 (PrintableTokens!686) Bool)

(assert (=> start!102224 (and (inv!15125 thiss!10527) e!746360)))

(declare-fun b!1164905 () Bool)

(declare-fun e!746362 () Bool)

(declare-fun tp!334097 () Bool)

(declare-fun inv!15126 (Conc!3763) Bool)

(assert (=> b!1164905 (= e!746362 (and (inv!15126 (c!194594 (tokens!1617 thiss!10527))) tp!334097))))

(declare-fun b!1164906 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!561 (LexerInterface!1695 List!11513 List!11512) Bool)

(assert (=> b!1164906 (= e!746365 (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) (t!110184 lt!398288)))))

(declare-fun lambda!47726 () Int)

(declare-fun forall!3008 (BalanceConc!7548 Int) Bool)

(assert (=> b!1164907 (= e!746364 (not (forall!3008 (tokens!1617 thiss!10527) lambda!47726)))))

(assert (=> b!1164907 (= (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) lt!398288) e!746361)))

(declare-fun res!525793 () Bool)

(assert (=> b!1164907 (=> res!525793 e!746361)))

(assert (=> b!1164907 (= res!525793 (not (is-Cons!11488 lt!398288)))))

(declare-fun list!4230 (BalanceConc!7548) List!11512)

(assert (=> b!1164907 (= lt!398288 (list!4230 (tokens!1617 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!733 (LexerInterface!1695 List!11513 BalanceConc!7548) Bool)

(assert (=> b!1164907 (= (rulesProduceEachTokenIndividually!733 Lexer!1693 (rules!9561 thiss!10527) (tokens!1617 thiss!10527)) (forall!3008 (tokens!1617 thiss!10527) lambda!47726))))

(declare-fun tp!334098 () Bool)

(declare-fun b!1164908 () Bool)

(declare-fun inv!15127 (BalanceConc!7548) Bool)

(assert (=> b!1164908 (= e!746360 (and tp!334098 (inv!15127 (tokens!1617 thiss!10527)) e!746362))))

(assert (= (and start!102224 res!525792) b!1164902))

(assert (= (and b!1164902 res!525791) b!1164903))

(assert (= (and b!1164903 res!525790) b!1164907))

(assert (= (and b!1164907 (not res!525793)) b!1164904))

(assert (= (and b!1164904 res!525789) b!1164906))

(assert (= b!1164908 b!1164905))

(assert (= start!102224 b!1164908))

(declare-fun m!1334527 () Bool)

(assert (=> b!1164907 m!1334527))

(declare-fun m!1334529 () Bool)

(assert (=> b!1164907 m!1334529))

(assert (=> b!1164907 m!1334527))

(declare-fun m!1334531 () Bool)

(assert (=> b!1164907 m!1334531))

(declare-fun m!1334533 () Bool)

(assert (=> b!1164907 m!1334533))

(declare-fun m!1334535 () Bool)

(assert (=> start!102224 m!1334535))

(declare-fun m!1334537 () Bool)

(assert (=> b!1164904 m!1334537))

(declare-fun m!1334539 () Bool)

(assert (=> b!1164906 m!1334539))

(declare-fun m!1334541 () Bool)

(assert (=> b!1164902 m!1334541))

(declare-fun m!1334543 () Bool)

(assert (=> b!1164903 m!1334543))

(declare-fun m!1334545 () Bool)

(assert (=> b!1164903 m!1334545))

(declare-fun m!1334547 () Bool)

(assert (=> b!1164905 m!1334547))

(declare-fun m!1334549 () Bool)

(assert (=> b!1164908 m!1334549))

(push 1)

(assert (not b!1164906))

(assert (not b!1164908))

(assert (not b!1164916))

(assert (not b!1164907))

(assert (not b!1164902))

(assert (not b!1164904))

(assert (not start!102224))

(assert (not b!1164905))

(assert (not b!1164915))

(assert (not b!1164903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!284154 () Bool)

(declare-fun d!332497 () Bool)

(assert (= bs!284154 (and d!332497 b!1164907)))

(declare-fun lambda!47736 () Int)

(assert (=> bs!284154 (= lambda!47736 lambda!47726)))

(declare-fun b!1164962 () Bool)

(declare-fun e!746410 () Bool)

(assert (=> b!1164962 (= e!746410 true)))

(declare-fun b!1164961 () Bool)

(declare-fun e!746409 () Bool)

(assert (=> b!1164961 (= e!746409 e!746410)))

(declare-fun b!1164960 () Bool)

(declare-fun e!746408 () Bool)

(assert (=> b!1164960 (= e!746408 e!746409)))

(assert (=> d!332497 e!746408))

(assert (= b!1164961 b!1164962))

(assert (= b!1164960 b!1164961))

(assert (= (and d!332497 (is-Cons!11489 (rules!9561 thiss!10527))) b!1164960))

(declare-fun order!7025 () Int)

(declare-fun order!7023 () Int)

(declare-fun dynLambda!5059 (Int Int) Int)

(declare-fun dynLambda!5060 (Int Int) Int)

(assert (=> b!1164962 (< (dynLambda!5059 order!7023 (toValue!3101 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47736))))

(declare-fun order!7027 () Int)

(declare-fun dynLambda!5061 (Int Int) Int)

(assert (=> b!1164962 (< (dynLambda!5061 order!7027 (toChars!2960 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47736))))

(assert (=> d!332497 true))

(declare-fun e!746401 () Bool)

(assert (=> d!332497 e!746401))

(declare-fun res!525814 () Bool)

(assert (=> d!332497 (=> (not res!525814) (not e!746401))))

(declare-fun lt!398297 () Bool)

(declare-fun forall!3010 (List!11512 Int) Bool)

(assert (=> d!332497 (= res!525814 (= lt!398297 (forall!3010 (list!4230 (tokens!1617 thiss!10527)) lambda!47736)))))

(assert (=> d!332497 (= lt!398297 (forall!3008 (tokens!1617 thiss!10527) lambda!47736))))

(declare-fun isEmpty!6997 (List!11513) Bool)

(assert (=> d!332497 (not (isEmpty!6997 (rules!9561 thiss!10527)))))

(assert (=> d!332497 (= (rulesProduceEachTokenIndividually!733 Lexer!1693 (rules!9561 thiss!10527) (tokens!1617 thiss!10527)) lt!398297)))

(declare-fun b!1164951 () Bool)

(assert (=> b!1164951 (= e!746401 (= lt!398297 (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) (list!4230 (tokens!1617 thiss!10527)))))))

(assert (= (and d!332497 res!525814) b!1164951))

(assert (=> d!332497 m!1334529))

(assert (=> d!332497 m!1334529))

(declare-fun m!1334579 () Bool)

(assert (=> d!332497 m!1334579))

(declare-fun m!1334581 () Bool)

(assert (=> d!332497 m!1334581))

(declare-fun m!1334583 () Bool)

(assert (=> d!332497 m!1334583))

(assert (=> b!1164951 m!1334529))

(assert (=> b!1164951 m!1334529))

(declare-fun m!1334585 () Bool)

(assert (=> b!1164951 m!1334585))

(assert (=> b!1164907 d!332497))

(declare-fun d!332503 () Bool)

(declare-fun list!4232 (Conc!3763) List!11512)

(assert (=> d!332503 (= (list!4230 (tokens!1617 thiss!10527)) (list!4232 (c!194594 (tokens!1617 thiss!10527))))))

(declare-fun bs!284155 () Bool)

(assert (= bs!284155 d!332503))

(declare-fun m!1334587 () Bool)

(assert (=> bs!284155 m!1334587))

(assert (=> b!1164907 d!332503))

(declare-fun d!332505 () Bool)

(declare-fun lt!398300 () Bool)

(assert (=> d!332505 (= lt!398300 (forall!3010 (list!4230 (tokens!1617 thiss!10527)) lambda!47726))))

(declare-fun forall!3011 (Conc!3763 Int) Bool)

(assert (=> d!332505 (= lt!398300 (forall!3011 (c!194594 (tokens!1617 thiss!10527)) lambda!47726))))

(assert (=> d!332505 (= (forall!3008 (tokens!1617 thiss!10527) lambda!47726) lt!398300)))

(declare-fun bs!284156 () Bool)

(assert (= bs!284156 d!332505))

(assert (=> bs!284156 m!1334529))

(assert (=> bs!284156 m!1334529))

(declare-fun m!1334589 () Bool)

(assert (=> bs!284156 m!1334589))

(declare-fun m!1334591 () Bool)

(assert (=> bs!284156 m!1334591))

(assert (=> b!1164907 d!332505))

(declare-fun bs!284157 () Bool)

(declare-fun d!332507 () Bool)

(assert (= bs!284157 (and d!332507 b!1164907)))

(declare-fun lambda!47739 () Int)

(assert (=> bs!284157 (= lambda!47739 lambda!47726)))

(declare-fun bs!284158 () Bool)

(assert (= bs!284158 (and d!332507 d!332497)))

(assert (=> bs!284158 (= lambda!47739 lambda!47736)))

(declare-fun b!1164973 () Bool)

(declare-fun e!746419 () Bool)

(assert (=> b!1164973 (= e!746419 true)))

(declare-fun b!1164972 () Bool)

(declare-fun e!746418 () Bool)

(assert (=> b!1164972 (= e!746418 e!746419)))

(declare-fun b!1164971 () Bool)

(declare-fun e!746417 () Bool)

(assert (=> b!1164971 (= e!746417 e!746418)))

(assert (=> d!332507 e!746417))

(assert (= b!1164972 b!1164973))

(assert (= b!1164971 b!1164972))

(assert (= (and d!332507 (is-Cons!11489 (rules!9561 thiss!10527))) b!1164971))

(assert (=> b!1164973 (< (dynLambda!5059 order!7023 (toValue!3101 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47739))))

(assert (=> b!1164973 (< (dynLambda!5061 order!7027 (toChars!2960 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47739))))

(assert (=> d!332507 true))

(declare-fun lt!398303 () Bool)

(assert (=> d!332507 (= lt!398303 (forall!3010 lt!398288 lambda!47739))))

(declare-fun e!746416 () Bool)

(assert (=> d!332507 (= lt!398303 e!746416)))

(declare-fun res!525819 () Bool)

(assert (=> d!332507 (=> res!525819 e!746416)))

(assert (=> d!332507 (= res!525819 (not (is-Cons!11488 lt!398288)))))

(assert (=> d!332507 (not (isEmpty!6997 (rules!9561 thiss!10527)))))

(assert (=> d!332507 (= (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) lt!398288) lt!398303)))

(declare-fun b!1164969 () Bool)

(declare-fun e!746415 () Bool)

(assert (=> b!1164969 (= e!746416 e!746415)))

(declare-fun res!525820 () Bool)

(assert (=> b!1164969 (=> (not res!525820) (not e!746415))))

(assert (=> b!1164969 (= res!525820 (rulesProduceIndividualToken!730 Lexer!1693 (rules!9561 thiss!10527) (h!16889 lt!398288)))))

(declare-fun b!1164970 () Bool)

(assert (=> b!1164970 (= e!746415 (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) (t!110184 lt!398288)))))

(assert (= (and d!332507 (not res!525819)) b!1164969))

(assert (= (and b!1164969 res!525820) b!1164970))

(declare-fun m!1334593 () Bool)

(assert (=> d!332507 m!1334593))

(assert (=> d!332507 m!1334583))

(assert (=> b!1164969 m!1334537))

(assert (=> b!1164970 m!1334539))

(assert (=> b!1164907 d!332507))

(declare-fun d!332509 () Bool)

(declare-fun lt!398306 () Int)

(declare-fun size!9050 (List!11512) Int)

(assert (=> d!332509 (= lt!398306 (size!9050 (list!4230 (tokens!1617 thiss!10527))))))

(declare-fun size!9051 (Conc!3763) Int)

(assert (=> d!332509 (= lt!398306 (size!9051 (c!194594 (tokens!1617 thiss!10527))))))

(assert (=> d!332509 (= (size!9047 (tokens!1617 thiss!10527)) lt!398306)))

(declare-fun bs!284159 () Bool)

(assert (= bs!284159 d!332509))

(assert (=> bs!284159 m!1334529))

(assert (=> bs!284159 m!1334529))

(declare-fun m!1334595 () Bool)

(assert (=> bs!284159 m!1334595))

(declare-fun m!1334597 () Bool)

(assert (=> bs!284159 m!1334597))

(assert (=> b!1164902 d!332509))

(declare-fun d!332511 () Bool)

(declare-fun isBalanced!1057 (Conc!3763) Bool)

(assert (=> d!332511 (= (inv!15127 (tokens!1617 thiss!10527)) (isBalanced!1057 (c!194594 (tokens!1617 thiss!10527))))))

(declare-fun bs!284160 () Bool)

(assert (= bs!284160 d!332511))

(declare-fun m!1334599 () Bool)

(assert (=> bs!284160 m!1334599))

(assert (=> b!1164908 d!332511))

(declare-fun d!332513 () Bool)

(declare-fun res!525823 () Bool)

(declare-fun e!746422 () Bool)

(assert (=> d!332513 (=> (not res!525823) (not e!746422))))

(declare-fun rulesValid!698 (LexerInterface!1695 List!11513) Bool)

(assert (=> d!332513 (= res!525823 (rulesValid!698 Lexer!1693 (rules!9561 thiss!10527)))))

(assert (=> d!332513 (= (rulesInvariant!1569 Lexer!1693 (rules!9561 thiss!10527)) e!746422)))

(declare-fun b!1164976 () Bool)

(declare-datatypes ((List!11518 0))(
  ( (Nil!11494) (Cons!11494 (h!16895 String!13920) (t!110204 List!11518)) )
))
(declare-fun noDuplicateTag!698 (LexerInterface!1695 List!11513 List!11518) Bool)

(assert (=> b!1164976 (= e!746422 (noDuplicateTag!698 Lexer!1693 (rules!9561 thiss!10527) Nil!11494))))

(assert (= (and d!332513 res!525823) b!1164976))

(declare-fun m!1334601 () Bool)

(assert (=> d!332513 m!1334601))

(declare-fun m!1334603 () Bool)

(assert (=> b!1164976 m!1334603))

(assert (=> b!1164903 d!332513))

(declare-fun d!332515 () Bool)

(declare-fun e!746434 () Bool)

(assert (=> d!332515 e!746434))

(declare-fun res!525837 () Bool)

(assert (=> d!332515 (=> (not res!525837) (not e!746434))))

(assert (=> d!332515 (= res!525837 (rulesInvariant!1569 Lexer!1693 (rules!9561 thiss!10527)))))

(declare-fun Unit!17586 () Unit!17581)

(assert (=> d!332515 (= (lemmaInvariant!187 thiss!10527) Unit!17586)))

(declare-fun b!1164996 () Bool)

(declare-fun res!525838 () Bool)

(assert (=> b!1164996 (=> (not res!525838) (not e!746434))))

(assert (=> b!1164996 (= res!525838 (rulesProduceEachTokenIndividually!733 Lexer!1693 (rules!9561 thiss!10527) (tokens!1617 thiss!10527)))))

(declare-fun b!1164997 () Bool)

(declare-fun separableTokens!136 (LexerInterface!1695 BalanceConc!7548 List!11513) Bool)

(assert (=> b!1164997 (= e!746434 (separableTokens!136 Lexer!1693 (tokens!1617 thiss!10527) (rules!9561 thiss!10527)))))

(assert (= (and d!332515 res!525837) b!1164996))

(assert (= (and b!1164996 res!525838) b!1164997))

(assert (=> d!332515 m!1334543))

(assert (=> b!1164996 m!1334533))

(declare-fun m!1334611 () Bool)

(assert (=> b!1164997 m!1334611))

(assert (=> b!1164903 d!332515))

(declare-fun d!332521 () Bool)

(declare-fun lt!398315 () Bool)

(declare-fun e!746443 () Bool)

(assert (=> d!332521 (= lt!398315 e!746443)))

(declare-fun res!525855 () Bool)

(assert (=> d!332521 (=> (not res!525855) (not e!746443))))

(declare-datatypes ((tuple2!12016 0))(
  ( (tuple2!12017 (_1!6855 BalanceConc!7548) (_2!6855 BalanceConc!7546)) )
))
(declare-fun lex!701 (LexerInterface!1695 List!11513 BalanceConc!7546) tuple2!12016)

(declare-fun print!638 (LexerInterface!1695 BalanceConc!7548) BalanceConc!7546)

(declare-fun singletonSeq!664 (Token!3662) BalanceConc!7548)

(assert (=> d!332521 (= res!525855 (= (list!4230 (_1!6855 (lex!701 Lexer!1693 (rules!9561 thiss!10527) (print!638 Lexer!1693 (singletonSeq!664 (h!16889 lt!398288)))))) (list!4230 (singletonSeq!664 (h!16889 lt!398288)))))))

(declare-fun e!746442 () Bool)

(assert (=> d!332521 (= lt!398315 e!746442)))

(declare-fun res!525854 () Bool)

(assert (=> d!332521 (=> (not res!525854) (not e!746442))))

(declare-fun lt!398314 () tuple2!12016)

(assert (=> d!332521 (= res!525854 (= (size!9047 (_1!6855 lt!398314)) 1))))

(assert (=> d!332521 (= lt!398314 (lex!701 Lexer!1693 (rules!9561 thiss!10527) (print!638 Lexer!1693 (singletonSeq!664 (h!16889 lt!398288)))))))

(assert (=> d!332521 (not (isEmpty!6997 (rules!9561 thiss!10527)))))

(assert (=> d!332521 (= (rulesProduceIndividualToken!730 Lexer!1693 (rules!9561 thiss!10527) (h!16889 lt!398288)) lt!398315)))

(declare-fun b!1165013 () Bool)

(declare-fun res!525856 () Bool)

(assert (=> b!1165013 (=> (not res!525856) (not e!746442))))

(declare-fun apply!2475 (BalanceConc!7548 Int) Token!3662)

(assert (=> b!1165013 (= res!525856 (= (apply!2475 (_1!6855 lt!398314) 0) (h!16889 lt!398288)))))

(declare-fun b!1165014 () Bool)

(declare-fun isEmpty!6998 (BalanceConc!7546) Bool)

(assert (=> b!1165014 (= e!746442 (isEmpty!6998 (_2!6855 lt!398314)))))

(declare-fun b!1165015 () Bool)

(assert (=> b!1165015 (= e!746443 (isEmpty!6998 (_2!6855 (lex!701 Lexer!1693 (rules!9561 thiss!10527) (print!638 Lexer!1693 (singletonSeq!664 (h!16889 lt!398288)))))))))

(assert (= (and d!332521 res!525854) b!1165013))

(assert (= (and b!1165013 res!525856) b!1165014))

(assert (= (and d!332521 res!525855) b!1165015))

(declare-fun m!1334619 () Bool)

(assert (=> d!332521 m!1334619))

(declare-fun m!1334621 () Bool)

(assert (=> d!332521 m!1334621))

(assert (=> d!332521 m!1334583))

(assert (=> d!332521 m!1334619))

(declare-fun m!1334623 () Bool)

(assert (=> d!332521 m!1334623))

(assert (=> d!332521 m!1334621))

(declare-fun m!1334625 () Bool)

(assert (=> d!332521 m!1334625))

(declare-fun m!1334627 () Bool)

(assert (=> d!332521 m!1334627))

(declare-fun m!1334629 () Bool)

(assert (=> d!332521 m!1334629))

(assert (=> d!332521 m!1334619))

(declare-fun m!1334631 () Bool)

(assert (=> b!1165013 m!1334631))

(declare-fun m!1334633 () Bool)

(assert (=> b!1165014 m!1334633))

(assert (=> b!1165015 m!1334619))

(assert (=> b!1165015 m!1334619))

(assert (=> b!1165015 m!1334621))

(assert (=> b!1165015 m!1334621))

(assert (=> b!1165015 m!1334625))

(declare-fun m!1334635 () Bool)

(assert (=> b!1165015 m!1334635))

(assert (=> b!1164904 d!332521))

(declare-fun d!332527 () Bool)

(declare-fun c!194603 () Bool)

(assert (=> d!332527 (= c!194603 (is-Node!3763 (c!194594 (tokens!1617 thiss!10527))))))

(declare-fun e!746448 () Bool)

(assert (=> d!332527 (= (inv!15126 (c!194594 (tokens!1617 thiss!10527))) e!746448)))

(declare-fun b!1165022 () Bool)

(declare-fun inv!15131 (Conc!3763) Bool)

(assert (=> b!1165022 (= e!746448 (inv!15131 (c!194594 (tokens!1617 thiss!10527))))))

(declare-fun b!1165023 () Bool)

(declare-fun e!746449 () Bool)

(assert (=> b!1165023 (= e!746448 e!746449)))

(declare-fun res!525859 () Bool)

(assert (=> b!1165023 (= res!525859 (not (is-Leaf!5774 (c!194594 (tokens!1617 thiss!10527)))))))

(assert (=> b!1165023 (=> res!525859 e!746449)))

(declare-fun b!1165024 () Bool)

(declare-fun inv!15132 (Conc!3763) Bool)

(assert (=> b!1165024 (= e!746449 (inv!15132 (c!194594 (tokens!1617 thiss!10527))))))

(assert (= (and d!332527 c!194603) b!1165022))

(assert (= (and d!332527 (not c!194603)) b!1165023))

(assert (= (and b!1165023 (not res!525859)) b!1165024))

(declare-fun m!1334637 () Bool)

(assert (=> b!1165022 m!1334637))

(declare-fun m!1334639 () Bool)

(assert (=> b!1165024 m!1334639))

(assert (=> b!1164905 d!332527))

(declare-fun d!332529 () Bool)

(declare-fun res!525872 () Bool)

(declare-fun e!746467 () Bool)

(assert (=> d!332529 (=> (not res!525872) (not e!746467))))

(assert (=> d!332529 (= res!525872 (not (isEmpty!6997 (rules!9561 thiss!10527))))))

(assert (=> d!332529 (= (inv!15125 thiss!10527) e!746467)))

(declare-fun b!1165050 () Bool)

(declare-fun res!525873 () Bool)

(assert (=> b!1165050 (=> (not res!525873) (not e!746467))))

(assert (=> b!1165050 (= res!525873 (rulesInvariant!1569 Lexer!1693 (rules!9561 thiss!10527)))))

(declare-fun b!1165051 () Bool)

(declare-fun res!525874 () Bool)

(assert (=> b!1165051 (=> (not res!525874) (not e!746467))))

(assert (=> b!1165051 (= res!525874 (rulesProduceEachTokenIndividually!733 Lexer!1693 (rules!9561 thiss!10527) (tokens!1617 thiss!10527)))))

(declare-fun b!1165052 () Bool)

(assert (=> b!1165052 (= e!746467 (separableTokens!136 Lexer!1693 (tokens!1617 thiss!10527) (rules!9561 thiss!10527)))))

(assert (= (and d!332529 res!525872) b!1165050))

(assert (= (and b!1165050 res!525873) b!1165051))

(assert (= (and b!1165051 res!525874) b!1165052))

(assert (=> d!332529 m!1334583))

(assert (=> b!1165050 m!1334543))

(assert (=> b!1165051 m!1334533))

(assert (=> b!1165052 m!1334611))

(assert (=> start!102224 d!332529))

(declare-fun bs!284163 () Bool)

(declare-fun d!332533 () Bool)

(assert (= bs!284163 (and d!332533 b!1164907)))

(declare-fun lambda!47743 () Int)

(assert (=> bs!284163 (= lambda!47743 lambda!47726)))

(declare-fun bs!284164 () Bool)

(assert (= bs!284164 (and d!332533 d!332497)))

(assert (=> bs!284164 (= lambda!47743 lambda!47736)))

(declare-fun bs!284165 () Bool)

(assert (= bs!284165 (and d!332533 d!332507)))

(assert (=> bs!284165 (= lambda!47743 lambda!47739)))

(declare-fun b!1165057 () Bool)

(declare-fun e!746472 () Bool)

(assert (=> b!1165057 (= e!746472 true)))

(declare-fun b!1165056 () Bool)

(declare-fun e!746471 () Bool)

(assert (=> b!1165056 (= e!746471 e!746472)))

(declare-fun b!1165055 () Bool)

(declare-fun e!746470 () Bool)

(assert (=> b!1165055 (= e!746470 e!746471)))

(assert (=> d!332533 e!746470))

(assert (= b!1165056 b!1165057))

(assert (= b!1165055 b!1165056))

(assert (= (and d!332533 (is-Cons!11489 (rules!9561 thiss!10527))) b!1165055))

(assert (=> b!1165057 (< (dynLambda!5059 order!7023 (toValue!3101 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47743))))

(assert (=> b!1165057 (< (dynLambda!5061 order!7027 (toChars!2960 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47743))))

(assert (=> d!332533 true))

(declare-fun lt!398319 () Bool)

(assert (=> d!332533 (= lt!398319 (forall!3010 (t!110184 lt!398288) lambda!47743))))

(declare-fun e!746469 () Bool)

(assert (=> d!332533 (= lt!398319 e!746469)))

(declare-fun res!525875 () Bool)

(assert (=> d!332533 (=> res!525875 e!746469)))

(assert (=> d!332533 (= res!525875 (not (is-Cons!11488 (t!110184 lt!398288))))))

(assert (=> d!332533 (not (isEmpty!6997 (rules!9561 thiss!10527)))))

(assert (=> d!332533 (= (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) (t!110184 lt!398288)) lt!398319)))

(declare-fun b!1165053 () Bool)

(declare-fun e!746468 () Bool)

(assert (=> b!1165053 (= e!746469 e!746468)))

(declare-fun res!525876 () Bool)

(assert (=> b!1165053 (=> (not res!525876) (not e!746468))))

(assert (=> b!1165053 (= res!525876 (rulesProduceIndividualToken!730 Lexer!1693 (rules!9561 thiss!10527) (h!16889 (t!110184 lt!398288))))))

(declare-fun b!1165054 () Bool)

(assert (=> b!1165054 (= e!746468 (rulesProduceEachTokenIndividuallyList!561 Lexer!1693 (rules!9561 thiss!10527) (t!110184 (t!110184 lt!398288))))))

(assert (= (and d!332533 (not res!525875)) b!1165053))

(assert (= (and b!1165053 res!525876) b!1165054))

(declare-fun m!1334647 () Bool)

(assert (=> d!332533 m!1334647))

(assert (=> d!332533 m!1334583))

(declare-fun m!1334649 () Bool)

(assert (=> b!1165053 m!1334649))

(declare-fun m!1334651 () Bool)

(assert (=> b!1165054 m!1334651))

(assert (=> b!1164906 d!332533))

(declare-fun b!1165068 () Bool)

(declare-fun b_free!27773 () Bool)

(declare-fun b_next!28477 () Bool)

(assert (=> b!1165068 (= b_free!27773 (not b_next!28477))))

(declare-fun tp!334113 () Bool)

(declare-fun b_and!80649 () Bool)

(assert (=> b!1165068 (= tp!334113 b_and!80649)))

(declare-fun b_free!27775 () Bool)

(declare-fun b_next!28479 () Bool)

(assert (=> b!1165068 (= b_free!27775 (not b_next!28479))))

(declare-fun tp!334114 () Bool)

(declare-fun b_and!80651 () Bool)

(assert (=> b!1165068 (= tp!334114 b_and!80651)))

(declare-fun e!746483 () Bool)

(assert (=> b!1165068 (= e!746483 (and tp!334113 tp!334114))))

(declare-fun b!1165067 () Bool)

(declare-fun tp!334115 () Bool)

(declare-fun e!746482 () Bool)

(declare-fun inv!15122 (String!13920) Bool)

(declare-fun inv!15133 (TokenValueInjection!3832) Bool)

(assert (=> b!1165067 (= e!746482 (and tp!334115 (inv!15122 (tag!2262 (h!16890 (rules!9561 thiss!10527)))) (inv!15133 (transformation!2000 (h!16890 (rules!9561 thiss!10527)))) e!746483))))

(declare-fun b!1165066 () Bool)

(declare-fun e!746484 () Bool)

(declare-fun tp!334116 () Bool)

(assert (=> b!1165066 (= e!746484 (and e!746482 tp!334116))))

(assert (=> b!1164908 (= tp!334098 e!746484)))

(assert (= b!1165067 b!1165068))

(assert (= b!1165066 b!1165067))

(assert (= (and b!1164908 (is-Cons!11489 (rules!9561 thiss!10527))) b!1165066))

(declare-fun m!1334653 () Bool)

(assert (=> b!1165067 m!1334653))

(declare-fun m!1334655 () Bool)

(assert (=> b!1165067 m!1334655))

(declare-fun b!1165071 () Bool)

(declare-fun e!746487 () Bool)

(assert (=> b!1165071 (= e!746487 true)))

(declare-fun b!1165070 () Bool)

(declare-fun e!746486 () Bool)

(assert (=> b!1165070 (= e!746486 e!746487)))

(declare-fun b!1165069 () Bool)

(declare-fun e!746485 () Bool)

(assert (=> b!1165069 (= e!746485 e!746486)))

(assert (=> b!1164915 e!746485))

(assert (= b!1165070 b!1165071))

(assert (= b!1165069 b!1165070))

(assert (= (and b!1164915 (is-Cons!11489 (rules!9561 thiss!10527))) b!1165069))

(assert (=> b!1165071 (< (dynLambda!5059 order!7023 (toValue!3101 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47726))))

(assert (=> b!1165071 (< (dynLambda!5061 order!7027 (toChars!2960 (transformation!2000 (h!16890 (rules!9561 thiss!10527))))) (dynLambda!5060 order!7025 lambda!47726))))

(declare-fun b!1165080 () Bool)

(declare-fun e!746492 () Bool)

(assert (=> b!1165080 (= e!746492 true)))

(declare-fun b!1165082 () Bool)

(declare-fun e!746493 () Bool)

(assert (=> b!1165082 (= e!746493 true)))

(declare-fun b!1165081 () Bool)

(assert (=> b!1165081 (= e!746492 e!746493)))

(assert (=> b!1164916 e!746492))

(assert (= (and b!1164916 (is-Node!3763 (c!194594 (tokens!1617 thiss!10527)))) b!1165080))

(assert (= b!1165081 b!1165082))

(assert (= (and b!1164916 (is-Leaf!5774 (c!194594 (tokens!1617 thiss!10527)))) b!1165081))

(declare-fun b!1165091 () Bool)

(declare-fun tp!334123 () Bool)

(declare-fun tp!334124 () Bool)

(declare-fun e!746499 () Bool)

(assert (=> b!1165091 (= e!746499 (and (inv!15126 (left!10043 (c!194594 (tokens!1617 thiss!10527)))) tp!334124 (inv!15126 (right!10373 (c!194594 (tokens!1617 thiss!10527)))) tp!334123))))

(declare-fun b!1165093 () Bool)

(declare-fun e!746498 () Bool)

(declare-fun tp!334125 () Bool)

(assert (=> b!1165093 (= e!746498 tp!334125)))

(declare-fun b!1165092 () Bool)

(declare-fun inv!15134 (IArray!7531) Bool)

(assert (=> b!1165092 (= e!746499 (and (inv!15134 (xs!6468 (c!194594 (tokens!1617 thiss!10527)))) e!746498))))

(assert (=> b!1164905 (= tp!334097 (and (inv!15126 (c!194594 (tokens!1617 thiss!10527))) e!746499))))

(assert (= (and b!1164905 (is-Node!3763 (c!194594 (tokens!1617 thiss!10527)))) b!1165091))

(assert (= b!1165092 b!1165093))

(assert (= (and b!1164905 (is-Leaf!5774 (c!194594 (tokens!1617 thiss!10527)))) b!1165092))

(declare-fun m!1334657 () Bool)

(assert (=> b!1165091 m!1334657))

(declare-fun m!1334659 () Bool)

(assert (=> b!1165091 m!1334659))

(declare-fun m!1334661 () Bool)

(assert (=> b!1165092 m!1334661))

(assert (=> b!1164905 m!1334547))

(push 1)

(assert (not b!1164971))

(assert (not b!1165051))

(assert (not b!1164970))

(assert (not b!1165015))

(assert (not b!1164997))

(assert (not b!1165052))

(assert (not b!1165054))

(assert (not b!1165053))

(assert (not b!1165024))

(assert b_and!80649)

(assert (not d!332507))

(assert (not d!332521))

(assert (not b!1164905))

(assert (not d!332503))

(assert (not d!332505))

(assert (not d!332511))

(assert (not b!1165055))

(assert (not b!1165080))

(assert (not d!332533))

(assert (not b!1165069))

(assert (not b!1165082))

(assert (not d!332529))

(assert (not b!1164976))

(assert (not b!1165093))

(assert b_and!80651)

(assert (not b!1165067))

(assert (not b!1165014))

(assert (not b!1165066))

(assert (not b!1165013))

(assert (not d!332497))

(assert (not d!332509))

(assert (not b_next!28477))

(assert (not b!1165022))

(assert (not b!1165091))

(assert (not b!1164969))

(assert (not b!1165050))

(assert (not b!1164960))

(assert (not b!1165092))

(assert (not b!1164951))

(assert (not b_next!28479))

(assert (not d!332513))

(assert (not b!1164996))

(assert (not d!332515))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80649)

(assert b_and!80651)

(assert (not b_next!28477))

(assert (not b_next!28479))

(check-sat)

(pop 1)

