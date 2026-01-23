; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138548 () Bool)

(assert start!138548)

(declare-fun b!1476895 () Bool)

(declare-fun b_free!37779 () Bool)

(declare-fun b_next!38483 () Bool)

(assert (=> b!1476895 (= b_free!37779 (not b_next!38483))))

(declare-fun tp!418036 () Bool)

(declare-fun b_and!102065 () Bool)

(assert (=> b!1476895 (= tp!418036 b_and!102065)))

(declare-fun b_free!37781 () Bool)

(declare-fun b_next!38485 () Bool)

(assert (=> b!1476895 (= b_free!37781 (not b_next!38485))))

(declare-fun tp!418029 () Bool)

(declare-fun b_and!102067 () Bool)

(assert (=> b!1476895 (= tp!418029 b_and!102067)))

(declare-fun b!1476900 () Bool)

(declare-fun b_free!37783 () Bool)

(declare-fun b_next!38487 () Bool)

(assert (=> b!1476900 (= b_free!37783 (not b_next!38487))))

(declare-fun tp!418030 () Bool)

(declare-fun b_and!102069 () Bool)

(assert (=> b!1476900 (= tp!418030 b_and!102069)))

(declare-fun b_free!37785 () Bool)

(declare-fun b_next!38489 () Bool)

(assert (=> b!1476900 (= b_free!37785 (not b_next!38489))))

(declare-fun tp!418031 () Bool)

(declare-fun b_and!102071 () Bool)

(assert (=> b!1476900 (= tp!418031 b_and!102071)))

(declare-fun b!1476898 () Bool)

(declare-fun b_free!37787 () Bool)

(declare-fun b_next!38491 () Bool)

(assert (=> b!1476898 (= b_free!37787 (not b_next!38491))))

(declare-fun tp!418028 () Bool)

(declare-fun b_and!102073 () Bool)

(assert (=> b!1476898 (= tp!418028 b_and!102073)))

(declare-fun b_free!37789 () Bool)

(declare-fun b_next!38493 () Bool)

(assert (=> b!1476898 (= b_free!37789 (not b_next!38493))))

(declare-fun tp!418023 () Bool)

(declare-fun b_and!102075 () Bool)

(assert (=> b!1476898 (= tp!418023 b_and!102075)))

(declare-fun b!1476884 () Bool)

(declare-fun res!667488 () Bool)

(declare-fun e!943707 () Bool)

(assert (=> b!1476884 (=> (not res!667488) (not e!943707))))

(declare-datatypes ((List!15638 0))(
  ( (Nil!15572) (Cons!15572 (h!20973 (_ BitVec 16)) (t!136731 List!15638)) )
))
(declare-datatypes ((C!8354 0))(
  ( (C!8355 (val!4747 Int)) )
))
(declare-datatypes ((List!15639 0))(
  ( (Nil!15573) (Cons!15573 (h!20974 C!8354) (t!136732 List!15639)) )
))
(declare-datatypes ((Regex!4088 0))(
  ( (ElementMatch!4088 (c!242655 C!8354)) (Concat!6952 (regOne!8688 Regex!4088) (regTwo!8688 Regex!4088)) (EmptyExpr!4088) (Star!4088 (reg!4417 Regex!4088)) (EmptyLang!4088) (Union!4088 (regOne!8689 Regex!4088) (regTwo!8689 Regex!4088)) )
))
(declare-datatypes ((TokenValue!2864 0))(
  ( (FloatLiteralValue!5728 (text!20493 List!15638)) (TokenValueExt!2863 (__x!9518 Int)) (Broken!14320 (value!88682 List!15638)) (Object!2929) (End!2864) (Def!2864) (Underscore!2864) (Match!2864) (Else!2864) (Error!2864) (Case!2864) (If!2864) (Extends!2864) (Abstract!2864) (Class!2864) (Val!2864) (DelimiterValue!5728 (del!2924 List!15638)) (KeywordValue!2870 (value!88683 List!15638)) (CommentValue!5728 (value!88684 List!15638)) (WhitespaceValue!5728 (value!88685 List!15638)) (IndentationValue!2864 (value!88686 List!15638)) (String!18577) (Int32!2864) (Broken!14321 (value!88687 List!15638)) (Boolean!2865) (Unit!25333) (OperatorValue!2867 (op!2924 List!15638)) (IdentifierValue!5728 (value!88688 List!15638)) (IdentifierValue!5729 (value!88689 List!15638)) (WhitespaceValue!5729 (value!88690 List!15638)) (True!5728) (False!5728) (Broken!14322 (value!88691 List!15638)) (Broken!14323 (value!88692 List!15638)) (True!5729) (RightBrace!2864) (RightBracket!2864) (Colon!2864) (Null!2864) (Comma!2864) (LeftBracket!2864) (False!5729) (LeftBrace!2864) (ImaginaryLiteralValue!2864 (text!20494 List!15638)) (StringLiteralValue!8592 (value!88693 List!15638)) (EOFValue!2864 (value!88694 List!15638)) (IdentValue!2864 (value!88695 List!15638)) (DelimiterValue!5729 (value!88696 List!15638)) (DedentValue!2864 (value!88697 List!15638)) (NewLineValue!2864 (value!88698 List!15638)) (IntegerValue!8592 (value!88699 (_ BitVec 32)) (text!20495 List!15638)) (IntegerValue!8593 (value!88700 Int) (text!20496 List!15638)) (Times!2864) (Or!2864) (Equal!2864) (Minus!2864) (Broken!14324 (value!88701 List!15638)) (And!2864) (Div!2864) (LessEqual!2864) (Mod!2864) (Concat!6953) (Not!2864) (Plus!2864) (SpaceValue!2864 (value!88702 List!15638)) (IntegerValue!8594 (value!88703 Int) (text!20497 List!15638)) (StringLiteralValue!8593 (text!20498 List!15638)) (FloatLiteralValue!5729 (text!20499 List!15638)) (BytesLiteralValue!2864 (value!88704 List!15638)) (CommentValue!5729 (value!88705 List!15638)) (StringLiteralValue!8594 (value!88706 List!15638)) (ErrorTokenValue!2864 (msg!2925 List!15638)) )
))
(declare-datatypes ((IArray!10615 0))(
  ( (IArray!10616 (innerList!5365 List!15639)) )
))
(declare-datatypes ((Conc!5305 0))(
  ( (Node!5305 (left!13139 Conc!5305) (right!13469 Conc!5305) (csize!10840 Int) (cheight!5516 Int)) (Leaf!7894 (xs!8060 IArray!10615) (csize!10841 Int)) (Empty!5305) )
))
(declare-datatypes ((BalanceConc!10550 0))(
  ( (BalanceConc!10551 (c!242656 Conc!5305)) )
))
(declare-datatypes ((TokenValueInjection!5388 0))(
  ( (TokenValueInjection!5389 (toValue!4109 Int) (toChars!3968 Int)) )
))
(declare-datatypes ((String!18578 0))(
  ( (String!18579 (value!88707 String)) )
))
(declare-datatypes ((Rule!5348 0))(
  ( (Rule!5349 (regex!2774 Regex!4088) (tag!3038 String!18578) (isSeparator!2774 Bool) (transformation!2774 TokenValueInjection!5388)) )
))
(declare-datatypes ((List!15640 0))(
  ( (Nil!15574) (Cons!15574 (h!20975 Rule!5348) (t!136733 List!15640)) )
))
(declare-fun rules!4290 () List!15640)

(declare-datatypes ((LexerInterface!2430 0))(
  ( (LexerInterfaceExt!2427 (__x!9519 Int)) (Lexer!2428) )
))
(declare-fun thiss!27374 () LexerInterface!2430)

(declare-datatypes ((Token!5210 0))(
  ( (Token!5211 (value!88708 TokenValue!2864) (rule!4551 Rule!5348) (size!12618 Int) (originalCharacters!3636 List!15639)) )
))
(declare-datatypes ((List!15641 0))(
  ( (Nil!15575) (Cons!15575 (h!20976 Token!5210) (t!136734 List!15641)) )
))
(declare-fun l2!3105 () List!15641)

(declare-fun tokensListTwoByTwoPredicateSeparableList!290 (LexerInterface!2430 List!15641 List!15640) Bool)

(assert (=> b!1476884 (= res!667488 (tokensListTwoByTwoPredicateSeparableList!290 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1476885 () Bool)

(declare-fun l1!3136 () List!15641)

(declare-fun contains!2937 (List!15641 Token!5210) Bool)

(declare-fun last!332 (List!15641) Token!5210)

(assert (=> b!1476885 (= e!943707 (not (contains!2937 l1!3136 (last!332 l1!3136))))))

(declare-fun b!1476886 () Bool)

(declare-fun res!667493 () Bool)

(assert (=> b!1476886 (=> (not res!667493) (not e!943707))))

(declare-fun isEmpty!9731 (List!15641) Bool)

(assert (=> b!1476886 (= res!667493 (not (isEmpty!9731 l2!3105)))))

(declare-fun e!943692 () Bool)

(declare-fun e!943691 () Bool)

(declare-fun tp!418027 () Bool)

(declare-fun b!1476887 () Bool)

(declare-fun inv!21 (TokenValue!2864) Bool)

(assert (=> b!1476887 (= e!943692 (and (inv!21 (value!88708 (h!20976 l2!3105))) e!943691 tp!418027))))

(declare-fun b!1476888 () Bool)

(declare-fun res!667489 () Bool)

(assert (=> b!1476888 (=> (not res!667489) (not e!943707))))

(declare-fun isEmpty!9732 (List!15640) Bool)

(assert (=> b!1476888 (= res!667489 (not (isEmpty!9732 rules!4290)))))

(declare-fun tp!418033 () Bool)

(declare-fun e!943698 () Bool)

(declare-fun e!943695 () Bool)

(declare-fun b!1476889 () Bool)

(declare-fun inv!20782 (String!18578) Bool)

(declare-fun inv!20785 (TokenValueInjection!5388) Bool)

(assert (=> b!1476889 (= e!943695 (and tp!418033 (inv!20782 (tag!3038 (rule!4551 (h!20976 l1!3136)))) (inv!20785 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) e!943698))))

(declare-fun b!1476890 () Bool)

(declare-fun res!667494 () Bool)

(assert (=> b!1476890 (=> (not res!667494) (not e!943707))))

(assert (=> b!1476890 (= res!667494 (tokensListTwoByTwoPredicateSeparableList!290 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1476891 () Bool)

(declare-fun res!667490 () Bool)

(assert (=> b!1476891 (=> (not res!667490) (not e!943707))))

(declare-fun rulesInvariant!2219 (LexerInterface!2430 List!15640) Bool)

(assert (=> b!1476891 (= res!667490 (rulesInvariant!2219 thiss!27374 rules!4290))))

(declare-fun b!1476892 () Bool)

(declare-fun e!943702 () Bool)

(declare-fun e!943699 () Bool)

(declare-fun tp!418026 () Bool)

(declare-fun inv!20786 (Token!5210) Bool)

(assert (=> b!1476892 (= e!943702 (and (inv!20786 (h!20976 l1!3136)) e!943699 tp!418026))))

(declare-fun b!1476893 () Bool)

(declare-fun tp!418032 () Bool)

(assert (=> b!1476893 (= e!943699 (and (inv!21 (value!88708 (h!20976 l1!3136))) e!943695 tp!418032))))

(declare-fun b!1476894 () Bool)

(declare-fun e!943706 () Bool)

(declare-fun tp!418024 () Bool)

(declare-fun e!943701 () Bool)

(assert (=> b!1476894 (= e!943706 (and tp!418024 (inv!20782 (tag!3038 (h!20975 rules!4290))) (inv!20785 (transformation!2774 (h!20975 rules!4290))) e!943701))))

(assert (=> b!1476895 (= e!943701 (and tp!418036 tp!418029))))

(declare-fun b!1476896 () Bool)

(declare-fun res!667495 () Bool)

(assert (=> b!1476896 (=> (not res!667495) (not e!943707))))

(declare-fun rulesProduceEachTokenIndividuallyList!797 (LexerInterface!2430 List!15640 List!15641) Bool)

(assert (=> b!1476896 (= res!667495 (rulesProduceEachTokenIndividuallyList!797 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1476897 () Bool)

(declare-fun res!667487 () Bool)

(assert (=> b!1476897 (=> (not res!667487) (not e!943707))))

(assert (=> b!1476897 (= res!667487 (rulesProduceEachTokenIndividuallyList!797 thiss!27374 rules!4290 l2!3105))))

(declare-fun e!943703 () Bool)

(assert (=> b!1476898 (= e!943703 (and tp!418028 tp!418023))))

(declare-fun tp!418025 () Bool)

(declare-fun b!1476899 () Bool)

(assert (=> b!1476899 (= e!943691 (and tp!418025 (inv!20782 (tag!3038 (rule!4551 (h!20976 l2!3105)))) (inv!20785 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) e!943703))))

(assert (=> b!1476900 (= e!943698 (and tp!418030 tp!418031))))

(declare-fun b!1476901 () Bool)

(declare-fun res!667491 () Bool)

(assert (=> b!1476901 (=> (not res!667491) (not e!943707))))

(assert (=> b!1476901 (= res!667491 (not (isEmpty!9731 l1!3136)))))

(declare-fun res!667492 () Bool)

(assert (=> start!138548 (=> (not res!667492) (not e!943707))))

(assert (=> start!138548 (= res!667492 (is-Lexer!2428 thiss!27374))))

(assert (=> start!138548 e!943707))

(assert (=> start!138548 true))

(declare-fun e!943705 () Bool)

(assert (=> start!138548 e!943705))

(assert (=> start!138548 e!943702))

(declare-fun e!943697 () Bool)

(assert (=> start!138548 e!943697))

(declare-fun tp!418034 () Bool)

(declare-fun b!1476902 () Bool)

(assert (=> b!1476902 (= e!943697 (and (inv!20786 (h!20976 l2!3105)) e!943692 tp!418034))))

(declare-fun b!1476903 () Bool)

(declare-fun tp!418035 () Bool)

(assert (=> b!1476903 (= e!943705 (and e!943706 tp!418035))))

(assert (= (and start!138548 res!667492) b!1476888))

(assert (= (and b!1476888 res!667489) b!1476891))

(assert (= (and b!1476891 res!667490) b!1476896))

(assert (= (and b!1476896 res!667495) b!1476897))

(assert (= (and b!1476897 res!667487) b!1476890))

(assert (= (and b!1476890 res!667494) b!1476884))

(assert (= (and b!1476884 res!667488) b!1476901))

(assert (= (and b!1476901 res!667491) b!1476886))

(assert (= (and b!1476886 res!667493) b!1476885))

(assert (= b!1476894 b!1476895))

(assert (= b!1476903 b!1476894))

(assert (= (and start!138548 (is-Cons!15574 rules!4290)) b!1476903))

(assert (= b!1476889 b!1476900))

(assert (= b!1476893 b!1476889))

(assert (= b!1476892 b!1476893))

(assert (= (and start!138548 (is-Cons!15575 l1!3136)) b!1476892))

(assert (= b!1476899 b!1476898))

(assert (= b!1476887 b!1476899))

(assert (= b!1476902 b!1476887))

(assert (= (and start!138548 (is-Cons!15575 l2!3105)) b!1476902))

(declare-fun m!1722529 () Bool)

(assert (=> b!1476885 m!1722529))

(assert (=> b!1476885 m!1722529))

(declare-fun m!1722531 () Bool)

(assert (=> b!1476885 m!1722531))

(declare-fun m!1722533 () Bool)

(assert (=> b!1476890 m!1722533))

(declare-fun m!1722535 () Bool)

(assert (=> b!1476893 m!1722535))

(declare-fun m!1722537 () Bool)

(assert (=> b!1476891 m!1722537))

(declare-fun m!1722539 () Bool)

(assert (=> b!1476899 m!1722539))

(declare-fun m!1722541 () Bool)

(assert (=> b!1476899 m!1722541))

(declare-fun m!1722543 () Bool)

(assert (=> b!1476897 m!1722543))

(declare-fun m!1722545 () Bool)

(assert (=> b!1476887 m!1722545))

(declare-fun m!1722547 () Bool)

(assert (=> b!1476886 m!1722547))

(declare-fun m!1722549 () Bool)

(assert (=> b!1476889 m!1722549))

(declare-fun m!1722551 () Bool)

(assert (=> b!1476889 m!1722551))

(declare-fun m!1722553 () Bool)

(assert (=> b!1476894 m!1722553))

(declare-fun m!1722555 () Bool)

(assert (=> b!1476894 m!1722555))

(declare-fun m!1722557 () Bool)

(assert (=> b!1476892 m!1722557))

(declare-fun m!1722559 () Bool)

(assert (=> b!1476888 m!1722559))

(declare-fun m!1722561 () Bool)

(assert (=> b!1476902 m!1722561))

(declare-fun m!1722563 () Bool)

(assert (=> b!1476901 m!1722563))

(declare-fun m!1722565 () Bool)

(assert (=> b!1476896 m!1722565))

(declare-fun m!1722567 () Bool)

(assert (=> b!1476884 m!1722567))

(push 1)

(assert (not b!1476892))

(assert (not b!1476896))

(assert (not b!1476887))

(assert b_and!102069)

(assert (not b_next!38489))

(assert (not b_next!38485))

(assert (not b!1476885))

(assert (not b!1476886))

(assert b_and!102073)

(assert (not b!1476902))

(assert (not b!1476894))

(assert (not b_next!38493))

(assert b_and!102065)

(assert (not b_next!38491))

(assert (not b!1476888))

(assert (not b!1476901))

(assert (not b!1476891))

(assert (not b!1476903))

(assert (not b!1476897))

(assert b_and!102067)

(assert b_and!102075)

(assert b_and!102071)

(assert (not b!1476889))

(assert (not b!1476899))

(assert (not b_next!38487))

(assert (not b!1476884))

(assert (not b!1476893))

(assert (not b_next!38483))

(assert (not b!1476890))

(check-sat)

(pop 1)

(push 1)

(assert b_and!102069)

(assert (not b_next!38489))

(assert (not b_next!38485))

(assert (not b_next!38487))

(assert b_and!102073)

(assert (not b_next!38493))

(assert (not b_next!38483))

(assert b_and!102065)

(assert (not b_next!38491))

(assert b_and!102067)

(assert b_and!102075)

(assert b_and!102071)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!433253 () Bool)

(declare-fun res!667535 () Bool)

(declare-fun e!943768 () Bool)

(assert (=> d!433253 (=> (not res!667535) (not e!943768))))

(declare-fun isEmpty!9735 (List!15639) Bool)

(assert (=> d!433253 (= res!667535 (not (isEmpty!9735 (originalCharacters!3636 (h!20976 l1!3136)))))))

(assert (=> d!433253 (= (inv!20786 (h!20976 l1!3136)) e!943768)))

(declare-fun b!1476981 () Bool)

(declare-fun res!667536 () Bool)

(assert (=> b!1476981 (=> (not res!667536) (not e!943768))))

(declare-fun list!6198 (BalanceConc!10550) List!15639)

(declare-fun dynLambda!7067 (Int TokenValue!2864) BalanceConc!10550)

(assert (=> b!1476981 (= res!667536 (= (originalCharacters!3636 (h!20976 l1!3136)) (list!6198 (dynLambda!7067 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (value!88708 (h!20976 l1!3136))))))))

(declare-fun b!1476982 () Bool)

(declare-fun size!12620 (List!15639) Int)

(assert (=> b!1476982 (= e!943768 (= (size!12618 (h!20976 l1!3136)) (size!12620 (originalCharacters!3636 (h!20976 l1!3136)))))))

(assert (= (and d!433253 res!667535) b!1476981))

(assert (= (and b!1476981 res!667536) b!1476982))

(declare-fun b_lambda!46231 () Bool)

(assert (=> (not b_lambda!46231) (not b!1476981)))

(declare-fun tb!84181 () Bool)

(declare-fun t!136748 () Bool)

(assert (=> (and b!1476895 (= (toChars!3968 (transformation!2774 (h!20975 rules!4290))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136))))) t!136748) tb!84181))

(declare-fun b!1476988 () Bool)

(declare-fun e!943772 () Bool)

(declare-fun tp!418085 () Bool)

(declare-fun inv!20789 (Conc!5305) Bool)

(assert (=> b!1476988 (= e!943772 (and (inv!20789 (c!242656 (dynLambda!7067 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (value!88708 (h!20976 l1!3136))))) tp!418085))))

(declare-fun result!101156 () Bool)

(declare-fun inv!20790 (BalanceConc!10550) Bool)

(assert (=> tb!84181 (= result!101156 (and (inv!20790 (dynLambda!7067 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (value!88708 (h!20976 l1!3136)))) e!943772))))

(assert (= tb!84181 b!1476988))

(declare-fun m!1722631 () Bool)

(assert (=> b!1476988 m!1722631))

(declare-fun m!1722635 () Bool)

(assert (=> tb!84181 m!1722635))

(assert (=> b!1476981 t!136748))

(declare-fun b_and!102101 () Bool)

(assert (= b_and!102067 (and (=> t!136748 result!101156) b_and!102101)))

(declare-fun t!136754 () Bool)

(declare-fun tb!84187 () Bool)

(assert (=> (and b!1476900 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136))))) t!136754) tb!84187))

(declare-fun result!101164 () Bool)

(assert (= result!101164 result!101156))

(assert (=> b!1476981 t!136754))

(declare-fun b_and!102103 () Bool)

(assert (= b_and!102071 (and (=> t!136754 result!101164) b_and!102103)))

(declare-fun tb!84189 () Bool)

(declare-fun t!136756 () Bool)

(assert (=> (and b!1476898 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136))))) t!136756) tb!84189))

(declare-fun result!101166 () Bool)

(assert (= result!101166 result!101156))

(assert (=> b!1476981 t!136756))

(declare-fun b_and!102105 () Bool)

(assert (= b_and!102075 (and (=> t!136756 result!101166) b_and!102105)))

(declare-fun m!1722637 () Bool)

(assert (=> d!433253 m!1722637))

(declare-fun m!1722639 () Bool)

(assert (=> b!1476981 m!1722639))

(assert (=> b!1476981 m!1722639))

(declare-fun m!1722641 () Bool)

(assert (=> b!1476981 m!1722641))

(declare-fun m!1722643 () Bool)

(assert (=> b!1476982 m!1722643))

(assert (=> b!1476892 d!433253))

(declare-fun d!433259 () Bool)

(declare-fun res!667539 () Bool)

(declare-fun e!943775 () Bool)

(assert (=> d!433259 (=> (not res!667539) (not e!943775))))

(declare-fun rulesValid!1011 (LexerInterface!2430 List!15640) Bool)

(assert (=> d!433259 (= res!667539 (rulesValid!1011 thiss!27374 rules!4290))))

(assert (=> d!433259 (= (rulesInvariant!2219 thiss!27374 rules!4290) e!943775)))

(declare-fun b!1476991 () Bool)

(declare-datatypes ((List!15646 0))(
  ( (Nil!15580) (Cons!15580 (h!20981 String!18578) (t!136779 List!15646)) )
))
(declare-fun noDuplicateTag!1011 (LexerInterface!2430 List!15640 List!15646) Bool)

(assert (=> b!1476991 (= e!943775 (noDuplicateTag!1011 thiss!27374 rules!4290 Nil!15580))))

(assert (= (and d!433259 res!667539) b!1476991))

(declare-fun m!1722645 () Bool)

(assert (=> d!433259 m!1722645))

(declare-fun m!1722647 () Bool)

(assert (=> b!1476991 m!1722647))

(assert (=> b!1476891 d!433259))

(declare-fun d!433263 () Bool)

(declare-fun res!667540 () Bool)

(declare-fun e!943776 () Bool)

(assert (=> d!433263 (=> (not res!667540) (not e!943776))))

(assert (=> d!433263 (= res!667540 (not (isEmpty!9735 (originalCharacters!3636 (h!20976 l2!3105)))))))

(assert (=> d!433263 (= (inv!20786 (h!20976 l2!3105)) e!943776)))

(declare-fun b!1476992 () Bool)

(declare-fun res!667541 () Bool)

(assert (=> b!1476992 (=> (not res!667541) (not e!943776))))

(assert (=> b!1476992 (= res!667541 (= (originalCharacters!3636 (h!20976 l2!3105)) (list!6198 (dynLambda!7067 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (value!88708 (h!20976 l2!3105))))))))

(declare-fun b!1476993 () Bool)

(assert (=> b!1476993 (= e!943776 (= (size!12618 (h!20976 l2!3105)) (size!12620 (originalCharacters!3636 (h!20976 l2!3105)))))))

(assert (= (and d!433263 res!667540) b!1476992))

(assert (= (and b!1476992 res!667541) b!1476993))

(declare-fun b_lambda!46233 () Bool)

(assert (=> (not b_lambda!46233) (not b!1476992)))

(declare-fun t!136758 () Bool)

(declare-fun tb!84191 () Bool)

(assert (=> (and b!1476895 (= (toChars!3968 (transformation!2774 (h!20975 rules!4290))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105))))) t!136758) tb!84191))

(declare-fun b!1476994 () Bool)

(declare-fun e!943777 () Bool)

(declare-fun tp!418086 () Bool)

(assert (=> b!1476994 (= e!943777 (and (inv!20789 (c!242656 (dynLambda!7067 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (value!88708 (h!20976 l2!3105))))) tp!418086))))

(declare-fun result!101168 () Bool)

(assert (=> tb!84191 (= result!101168 (and (inv!20790 (dynLambda!7067 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (value!88708 (h!20976 l2!3105)))) e!943777))))

(assert (= tb!84191 b!1476994))

(declare-fun m!1722649 () Bool)

(assert (=> b!1476994 m!1722649))

(declare-fun m!1722651 () Bool)

(assert (=> tb!84191 m!1722651))

(assert (=> b!1476992 t!136758))

(declare-fun b_and!102107 () Bool)

(assert (= b_and!102101 (and (=> t!136758 result!101168) b_and!102107)))

(declare-fun tb!84193 () Bool)

(declare-fun t!136760 () Bool)

(assert (=> (and b!1476900 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105))))) t!136760) tb!84193))

(declare-fun result!101170 () Bool)

(assert (= result!101170 result!101168))

(assert (=> b!1476992 t!136760))

(declare-fun b_and!102109 () Bool)

(assert (= b_and!102103 (and (=> t!136760 result!101170) b_and!102109)))

(declare-fun t!136762 () Bool)

(declare-fun tb!84195 () Bool)

(assert (=> (and b!1476898 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105))))) t!136762) tb!84195))

(declare-fun result!101172 () Bool)

(assert (= result!101172 result!101168))

(assert (=> b!1476992 t!136762))

(declare-fun b_and!102111 () Bool)

(assert (= b_and!102105 (and (=> t!136762 result!101172) b_and!102111)))

(declare-fun m!1722653 () Bool)

(assert (=> d!433263 m!1722653))

(declare-fun m!1722655 () Bool)

(assert (=> b!1476992 m!1722655))

(assert (=> b!1476992 m!1722655))

(declare-fun m!1722657 () Bool)

(assert (=> b!1476992 m!1722657))

(declare-fun m!1722659 () Bool)

(assert (=> b!1476993 m!1722659))

(assert (=> b!1476902 d!433263))

(declare-fun d!433267 () Bool)

(declare-fun c!242664 () Bool)

(assert (=> d!433267 (= c!242664 (is-IntegerValue!8592 (value!88708 (h!20976 l1!3136))))))

(declare-fun e!943785 () Bool)

(assert (=> d!433267 (= (inv!21 (value!88708 (h!20976 l1!3136))) e!943785)))

(declare-fun b!1477005 () Bool)

(declare-fun e!943786 () Bool)

(assert (=> b!1477005 (= e!943785 e!943786)))

(declare-fun c!242663 () Bool)

(assert (=> b!1477005 (= c!242663 (is-IntegerValue!8593 (value!88708 (h!20976 l1!3136))))))

(declare-fun b!1477006 () Bool)

(declare-fun e!943784 () Bool)

(declare-fun inv!15 (TokenValue!2864) Bool)

(assert (=> b!1477006 (= e!943784 (inv!15 (value!88708 (h!20976 l1!3136))))))

(declare-fun b!1477007 () Bool)

(declare-fun res!667544 () Bool)

(assert (=> b!1477007 (=> res!667544 e!943784)))

(assert (=> b!1477007 (= res!667544 (not (is-IntegerValue!8594 (value!88708 (h!20976 l1!3136)))))))

(assert (=> b!1477007 (= e!943786 e!943784)))

(declare-fun b!1477008 () Bool)

(declare-fun inv!16 (TokenValue!2864) Bool)

(assert (=> b!1477008 (= e!943785 (inv!16 (value!88708 (h!20976 l1!3136))))))

(declare-fun b!1477009 () Bool)

(declare-fun inv!17 (TokenValue!2864) Bool)

(assert (=> b!1477009 (= e!943786 (inv!17 (value!88708 (h!20976 l1!3136))))))

(assert (= (and d!433267 c!242664) b!1477008))

(assert (= (and d!433267 (not c!242664)) b!1477005))

(assert (= (and b!1477005 c!242663) b!1477009))

(assert (= (and b!1477005 (not c!242663)) b!1477007))

(assert (= (and b!1477007 (not res!667544)) b!1477006))

(declare-fun m!1722661 () Bool)

(assert (=> b!1477006 m!1722661))

(declare-fun m!1722663 () Bool)

(assert (=> b!1477008 m!1722663))

(declare-fun m!1722665 () Bool)

(assert (=> b!1477009 m!1722665))

(assert (=> b!1476893 d!433267))

(declare-fun d!433269 () Bool)

(assert (=> d!433269 (= (inv!20782 (tag!3038 (rule!4551 (h!20976 l1!3136)))) (= (mod (str.len (value!88707 (tag!3038 (rule!4551 (h!20976 l1!3136))))) 2) 0))))

(assert (=> b!1476889 d!433269))

(declare-fun d!433271 () Bool)

(declare-fun res!667551 () Bool)

(declare-fun e!943793 () Bool)

(assert (=> d!433271 (=> (not res!667551) (not e!943793))))

(declare-fun semiInverseModEq!1038 (Int Int) Bool)

(assert (=> d!433271 (= res!667551 (semiInverseModEq!1038 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (toValue!4109 (transformation!2774 (rule!4551 (h!20976 l1!3136))))))))

(assert (=> d!433271 (= (inv!20785 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) e!943793)))

(declare-fun b!1477016 () Bool)

(declare-fun equivClasses!997 (Int Int) Bool)

(assert (=> b!1477016 (= e!943793 (equivClasses!997 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (toValue!4109 (transformation!2774 (rule!4551 (h!20976 l1!3136))))))))

(assert (= (and d!433271 res!667551) b!1477016))

(declare-fun m!1722673 () Bool)

(assert (=> d!433271 m!1722673))

(declare-fun m!1722677 () Bool)

(assert (=> b!1477016 m!1722677))

(assert (=> b!1476889 d!433271))

(declare-fun d!433279 () Bool)

(assert (=> d!433279 (= (inv!20782 (tag!3038 (rule!4551 (h!20976 l2!3105)))) (= (mod (str.len (value!88707 (tag!3038 (rule!4551 (h!20976 l2!3105))))) 2) 0))))

(assert (=> b!1476899 d!433279))

(declare-fun d!433281 () Bool)

(declare-fun res!667552 () Bool)

(declare-fun e!943794 () Bool)

(assert (=> d!433281 (=> (not res!667552) (not e!943794))))

(assert (=> d!433281 (= res!667552 (semiInverseModEq!1038 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (toValue!4109 (transformation!2774 (rule!4551 (h!20976 l2!3105))))))))

(assert (=> d!433281 (= (inv!20785 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) e!943794)))

(declare-fun b!1477017 () Bool)

(assert (=> b!1477017 (= e!943794 (equivClasses!997 (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (toValue!4109 (transformation!2774 (rule!4551 (h!20976 l2!3105))))))))

(assert (= (and d!433281 res!667552) b!1477017))

(declare-fun m!1722679 () Bool)

(assert (=> d!433281 m!1722679))

(declare-fun m!1722681 () Bool)

(assert (=> b!1477017 m!1722681))

(assert (=> b!1476899 d!433281))

(declare-fun d!433283 () Bool)

(assert (=> d!433283 (= (isEmpty!9731 l1!3136) (is-Nil!15575 l1!3136))))

(assert (=> b!1476901 d!433283))

(declare-fun d!433285 () Bool)

(declare-fun res!667557 () Bool)

(declare-fun e!943799 () Bool)

(assert (=> d!433285 (=> res!667557 e!943799)))

(assert (=> d!433285 (= res!667557 (or (not (is-Cons!15575 l1!3136)) (not (is-Cons!15575 (t!136734 l1!3136)))))))

(assert (=> d!433285 (= (tokensListTwoByTwoPredicateSeparableList!290 thiss!27374 l1!3136 rules!4290) e!943799)))

(declare-fun b!1477022 () Bool)

(declare-fun e!943800 () Bool)

(assert (=> b!1477022 (= e!943799 e!943800)))

(declare-fun res!667558 () Bool)

(assert (=> b!1477022 (=> (not res!667558) (not e!943800))))

(declare-fun separableTokensPredicate!571 (LexerInterface!2430 Token!5210 Token!5210 List!15640) Bool)

(assert (=> b!1477022 (= res!667558 (separableTokensPredicate!571 thiss!27374 (h!20976 l1!3136) (h!20976 (t!136734 l1!3136)) rules!4290))))

(declare-datatypes ((Unit!25335 0))(
  ( (Unit!25336) )
))
(declare-fun lt!513338 () Unit!25335)

(declare-fun Unit!25337 () Unit!25335)

(assert (=> b!1477022 (= lt!513338 Unit!25337)))

(declare-fun size!12621 (BalanceConc!10550) Int)

(declare-fun charsOf!1587 (Token!5210) BalanceConc!10550)

(assert (=> b!1477022 (> (size!12621 (charsOf!1587 (h!20976 (t!136734 l1!3136)))) 0)))

(declare-fun lt!513336 () Unit!25335)

(declare-fun Unit!25338 () Unit!25335)

(assert (=> b!1477022 (= lt!513336 Unit!25338)))

(declare-fun rulesProduceIndividualToken!1287 (LexerInterface!2430 List!15640 Token!5210) Bool)

(assert (=> b!1477022 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 (t!136734 l1!3136)))))

(declare-fun lt!513337 () Unit!25335)

(declare-fun Unit!25339 () Unit!25335)

(assert (=> b!1477022 (= lt!513337 Unit!25339)))

(assert (=> b!1477022 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 l1!3136))))

(declare-fun lt!513335 () Unit!25335)

(declare-fun lt!513334 () Unit!25335)

(assert (=> b!1477022 (= lt!513335 lt!513334)))

(assert (=> b!1477022 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 (t!136734 l1!3136)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!468 (LexerInterface!2430 List!15640 List!15641 Token!5210) Unit!25335)

(assert (=> b!1477022 (= lt!513334 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!468 thiss!27374 rules!4290 l1!3136 (h!20976 (t!136734 l1!3136))))))

(declare-fun lt!513332 () Unit!25335)

(declare-fun lt!513333 () Unit!25335)

(assert (=> b!1477022 (= lt!513332 lt!513333)))

(assert (=> b!1477022 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 l1!3136))))

(assert (=> b!1477022 (= lt!513333 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!468 thiss!27374 rules!4290 l1!3136 (h!20976 l1!3136)))))

(declare-fun b!1477023 () Bool)

(assert (=> b!1477023 (= e!943800 (tokensListTwoByTwoPredicateSeparableList!290 thiss!27374 (Cons!15575 (h!20976 (t!136734 l1!3136)) (t!136734 (t!136734 l1!3136))) rules!4290))))

(assert (= (and d!433285 (not res!667557)) b!1477022))

(assert (= (and b!1477022 res!667558) b!1477023))

(declare-fun m!1722683 () Bool)

(assert (=> b!1477022 m!1722683))

(declare-fun m!1722685 () Bool)

(assert (=> b!1477022 m!1722685))

(declare-fun m!1722687 () Bool)

(assert (=> b!1477022 m!1722687))

(declare-fun m!1722689 () Bool)

(assert (=> b!1477022 m!1722689))

(assert (=> b!1477022 m!1722683))

(declare-fun m!1722691 () Bool)

(assert (=> b!1477022 m!1722691))

(declare-fun m!1722693 () Bool)

(assert (=> b!1477022 m!1722693))

(declare-fun m!1722695 () Bool)

(assert (=> b!1477022 m!1722695))

(declare-fun m!1722697 () Bool)

(assert (=> b!1477023 m!1722697))

(assert (=> b!1476890 d!433285))

(declare-fun b!1477044 () Bool)

(declare-fun e!943819 () Bool)

(assert (=> b!1477044 (= e!943819 true)))

(declare-fun b!1477043 () Bool)

(declare-fun e!943818 () Bool)

(assert (=> b!1477043 (= e!943818 e!943819)))

(declare-fun b!1477042 () Bool)

(declare-fun e!943817 () Bool)

(assert (=> b!1477042 (= e!943817 e!943818)))

(declare-fun d!433287 () Bool)

(assert (=> d!433287 e!943817))

(assert (= b!1477043 b!1477044))

(assert (= b!1477042 b!1477043))

(assert (= (and d!433287 (is-Cons!15574 rules!4290)) b!1477042))

(declare-fun lambda!63694 () Int)

(declare-fun order!9359 () Int)

(declare-fun order!9361 () Int)

(declare-fun dynLambda!7068 (Int Int) Int)

(declare-fun dynLambda!7069 (Int Int) Int)

(assert (=> b!1477044 (< (dynLambda!7068 order!9359 (toValue!4109 (transformation!2774 (h!20975 rules!4290)))) (dynLambda!7069 order!9361 lambda!63694))))

(declare-fun order!9363 () Int)

(declare-fun dynLambda!7070 (Int Int) Int)

(assert (=> b!1477044 (< (dynLambda!7070 order!9363 (toChars!3968 (transformation!2774 (h!20975 rules!4290)))) (dynLambda!7069 order!9361 lambda!63694))))

(assert (=> d!433287 true))

(declare-fun lt!513343 () Bool)

(declare-fun forall!3795 (List!15641 Int) Bool)

(assert (=> d!433287 (= lt!513343 (forall!3795 l2!3105 lambda!63694))))

(declare-fun e!943810 () Bool)

(assert (=> d!433287 (= lt!513343 e!943810)))

(declare-fun res!667567 () Bool)

(assert (=> d!433287 (=> res!667567 e!943810)))

(assert (=> d!433287 (= res!667567 (not (is-Cons!15575 l2!3105)))))

(assert (=> d!433287 (not (isEmpty!9732 rules!4290))))

(assert (=> d!433287 (= (rulesProduceEachTokenIndividuallyList!797 thiss!27374 rules!4290 l2!3105) lt!513343)))

(declare-fun b!1477032 () Bool)

(declare-fun e!943809 () Bool)

(assert (=> b!1477032 (= e!943810 e!943809)))

(declare-fun res!667568 () Bool)

(assert (=> b!1477032 (=> (not res!667568) (not e!943809))))

(assert (=> b!1477032 (= res!667568 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 l2!3105)))))

(declare-fun b!1477033 () Bool)

(assert (=> b!1477033 (= e!943809 (rulesProduceEachTokenIndividuallyList!797 thiss!27374 rules!4290 (t!136734 l2!3105)))))

(assert (= (and d!433287 (not res!667567)) b!1477032))

(assert (= (and b!1477032 res!667568) b!1477033))

(declare-fun m!1722699 () Bool)

(assert (=> d!433287 m!1722699))

(assert (=> d!433287 m!1722559))

(declare-fun m!1722701 () Bool)

(assert (=> b!1477032 m!1722701))

(declare-fun m!1722703 () Bool)

(assert (=> b!1477033 m!1722703))

(assert (=> b!1476897 d!433287))

(declare-fun d!433289 () Bool)

(assert (=> d!433289 (= (isEmpty!9731 l2!3105) (is-Nil!15575 l2!3105))))

(assert (=> b!1476886 d!433289))

(declare-fun d!433291 () Bool)

(assert (=> d!433291 (= (isEmpty!9732 rules!4290) (is-Nil!15574 rules!4290))))

(assert (=> b!1476888 d!433291))

(declare-fun d!433293 () Bool)

(declare-fun c!242666 () Bool)

(assert (=> d!433293 (= c!242666 (is-IntegerValue!8592 (value!88708 (h!20976 l2!3105))))))

(declare-fun e!943821 () Bool)

(assert (=> d!433293 (= (inv!21 (value!88708 (h!20976 l2!3105))) e!943821)))

(declare-fun b!1477047 () Bool)

(declare-fun e!943822 () Bool)

(assert (=> b!1477047 (= e!943821 e!943822)))

(declare-fun c!242665 () Bool)

(assert (=> b!1477047 (= c!242665 (is-IntegerValue!8593 (value!88708 (h!20976 l2!3105))))))

(declare-fun b!1477048 () Bool)

(declare-fun e!943820 () Bool)

(assert (=> b!1477048 (= e!943820 (inv!15 (value!88708 (h!20976 l2!3105))))))

(declare-fun b!1477049 () Bool)

(declare-fun res!667569 () Bool)

(assert (=> b!1477049 (=> res!667569 e!943820)))

(assert (=> b!1477049 (= res!667569 (not (is-IntegerValue!8594 (value!88708 (h!20976 l2!3105)))))))

(assert (=> b!1477049 (= e!943822 e!943820)))

(declare-fun b!1477050 () Bool)

(assert (=> b!1477050 (= e!943821 (inv!16 (value!88708 (h!20976 l2!3105))))))

(declare-fun b!1477051 () Bool)

(assert (=> b!1477051 (= e!943822 (inv!17 (value!88708 (h!20976 l2!3105))))))

(assert (= (and d!433293 c!242666) b!1477050))

(assert (= (and d!433293 (not c!242666)) b!1477047))

(assert (= (and b!1477047 c!242665) b!1477051))

(assert (= (and b!1477047 (not c!242665)) b!1477049))

(assert (= (and b!1477049 (not res!667569)) b!1477048))

(declare-fun m!1722705 () Bool)

(assert (=> b!1477048 m!1722705))

(declare-fun m!1722707 () Bool)

(assert (=> b!1477050 m!1722707))

(declare-fun m!1722709 () Bool)

(assert (=> b!1477051 m!1722709))

(assert (=> b!1476887 d!433293))

(declare-fun d!433295 () Bool)

(declare-fun res!667570 () Bool)

(declare-fun e!943823 () Bool)

(assert (=> d!433295 (=> res!667570 e!943823)))

(assert (=> d!433295 (= res!667570 (or (not (is-Cons!15575 l2!3105)) (not (is-Cons!15575 (t!136734 l2!3105)))))))

(assert (=> d!433295 (= (tokensListTwoByTwoPredicateSeparableList!290 thiss!27374 l2!3105 rules!4290) e!943823)))

(declare-fun b!1477052 () Bool)

(declare-fun e!943824 () Bool)

(assert (=> b!1477052 (= e!943823 e!943824)))

(declare-fun res!667571 () Bool)

(assert (=> b!1477052 (=> (not res!667571) (not e!943824))))

(assert (=> b!1477052 (= res!667571 (separableTokensPredicate!571 thiss!27374 (h!20976 l2!3105) (h!20976 (t!136734 l2!3105)) rules!4290))))

(declare-fun lt!513350 () Unit!25335)

(declare-fun Unit!25340 () Unit!25335)

(assert (=> b!1477052 (= lt!513350 Unit!25340)))

(assert (=> b!1477052 (> (size!12621 (charsOf!1587 (h!20976 (t!136734 l2!3105)))) 0)))

(declare-fun lt!513348 () Unit!25335)

(declare-fun Unit!25341 () Unit!25335)

(assert (=> b!1477052 (= lt!513348 Unit!25341)))

(assert (=> b!1477052 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 (t!136734 l2!3105)))))

(declare-fun lt!513349 () Unit!25335)

(declare-fun Unit!25342 () Unit!25335)

(assert (=> b!1477052 (= lt!513349 Unit!25342)))

(assert (=> b!1477052 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 l2!3105))))

(declare-fun lt!513347 () Unit!25335)

(declare-fun lt!513346 () Unit!25335)

(assert (=> b!1477052 (= lt!513347 lt!513346)))

(assert (=> b!1477052 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 (t!136734 l2!3105)))))

(assert (=> b!1477052 (= lt!513346 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!468 thiss!27374 rules!4290 l2!3105 (h!20976 (t!136734 l2!3105))))))

(declare-fun lt!513344 () Unit!25335)

(declare-fun lt!513345 () Unit!25335)

(assert (=> b!1477052 (= lt!513344 lt!513345)))

(assert (=> b!1477052 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 l2!3105))))

(assert (=> b!1477052 (= lt!513345 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!468 thiss!27374 rules!4290 l2!3105 (h!20976 l2!3105)))))

(declare-fun b!1477053 () Bool)

(assert (=> b!1477053 (= e!943824 (tokensListTwoByTwoPredicateSeparableList!290 thiss!27374 (Cons!15575 (h!20976 (t!136734 l2!3105)) (t!136734 (t!136734 l2!3105))) rules!4290))))

(assert (= (and d!433295 (not res!667570)) b!1477052))

(assert (= (and b!1477052 res!667571) b!1477053))

(declare-fun m!1722711 () Bool)

(assert (=> b!1477052 m!1722711))

(assert (=> b!1477052 m!1722701))

(declare-fun m!1722713 () Bool)

(assert (=> b!1477052 m!1722713))

(declare-fun m!1722715 () Bool)

(assert (=> b!1477052 m!1722715))

(assert (=> b!1477052 m!1722711))

(declare-fun m!1722717 () Bool)

(assert (=> b!1477052 m!1722717))

(declare-fun m!1722719 () Bool)

(assert (=> b!1477052 m!1722719))

(declare-fun m!1722721 () Bool)

(assert (=> b!1477052 m!1722721))

(declare-fun m!1722723 () Bool)

(assert (=> b!1477053 m!1722723))

(assert (=> b!1476884 d!433295))

(declare-fun d!433297 () Bool)

(assert (=> d!433297 (= (inv!20782 (tag!3038 (h!20975 rules!4290))) (= (mod (str.len (value!88707 (tag!3038 (h!20975 rules!4290)))) 2) 0))))

(assert (=> b!1476894 d!433297))

(declare-fun d!433299 () Bool)

(declare-fun res!667572 () Bool)

(declare-fun e!943825 () Bool)

(assert (=> d!433299 (=> (not res!667572) (not e!943825))))

(assert (=> d!433299 (= res!667572 (semiInverseModEq!1038 (toChars!3968 (transformation!2774 (h!20975 rules!4290))) (toValue!4109 (transformation!2774 (h!20975 rules!4290)))))))

(assert (=> d!433299 (= (inv!20785 (transformation!2774 (h!20975 rules!4290))) e!943825)))

(declare-fun b!1477054 () Bool)

(assert (=> b!1477054 (= e!943825 (equivClasses!997 (toChars!3968 (transformation!2774 (h!20975 rules!4290))) (toValue!4109 (transformation!2774 (h!20975 rules!4290)))))))

(assert (= (and d!433299 res!667572) b!1477054))

(declare-fun m!1722725 () Bool)

(assert (=> d!433299 m!1722725))

(declare-fun m!1722727 () Bool)

(assert (=> b!1477054 m!1722727))

(assert (=> b!1476894 d!433299))

(declare-fun d!433301 () Bool)

(declare-fun lt!513353 () Bool)

(declare-fun content!2272 (List!15641) (Set Token!5210))

(assert (=> d!433301 (= lt!513353 (set.member (last!332 l1!3136) (content!2272 l1!3136)))))

(declare-fun e!943830 () Bool)

(assert (=> d!433301 (= lt!513353 e!943830)))

(declare-fun res!667577 () Bool)

(assert (=> d!433301 (=> (not res!667577) (not e!943830))))

(assert (=> d!433301 (= res!667577 (is-Cons!15575 l1!3136))))

(assert (=> d!433301 (= (contains!2937 l1!3136 (last!332 l1!3136)) lt!513353)))

(declare-fun b!1477059 () Bool)

(declare-fun e!943831 () Bool)

(assert (=> b!1477059 (= e!943830 e!943831)))

(declare-fun res!667578 () Bool)

(assert (=> b!1477059 (=> res!667578 e!943831)))

(assert (=> b!1477059 (= res!667578 (= (h!20976 l1!3136) (last!332 l1!3136)))))

(declare-fun b!1477060 () Bool)

(assert (=> b!1477060 (= e!943831 (contains!2937 (t!136734 l1!3136) (last!332 l1!3136)))))

(assert (= (and d!433301 res!667577) b!1477059))

(assert (= (and b!1477059 (not res!667578)) b!1477060))

(declare-fun m!1722729 () Bool)

(assert (=> d!433301 m!1722729))

(assert (=> d!433301 m!1722529))

(declare-fun m!1722731 () Bool)

(assert (=> d!433301 m!1722731))

(assert (=> b!1477060 m!1722529))

(declare-fun m!1722733 () Bool)

(assert (=> b!1477060 m!1722733))

(assert (=> b!1476885 d!433301))

(declare-fun d!433303 () Bool)

(declare-fun lt!513356 () Token!5210)

(assert (=> d!433303 (contains!2937 l1!3136 lt!513356)))

(declare-fun e!943834 () Token!5210)

(assert (=> d!433303 (= lt!513356 e!943834)))

(declare-fun c!242669 () Bool)

(assert (=> d!433303 (= c!242669 (and (is-Cons!15575 l1!3136) (is-Nil!15575 (t!136734 l1!3136))))))

(assert (=> d!433303 (not (isEmpty!9731 l1!3136))))

(assert (=> d!433303 (= (last!332 l1!3136) lt!513356)))

(declare-fun b!1477065 () Bool)

(assert (=> b!1477065 (= e!943834 (h!20976 l1!3136))))

(declare-fun b!1477066 () Bool)

(assert (=> b!1477066 (= e!943834 (last!332 (t!136734 l1!3136)))))

(assert (= (and d!433303 c!242669) b!1477065))

(assert (= (and d!433303 (not c!242669)) b!1477066))

(declare-fun m!1722735 () Bool)

(assert (=> d!433303 m!1722735))

(assert (=> d!433303 m!1722563))

(declare-fun m!1722737 () Bool)

(assert (=> b!1477066 m!1722737))

(assert (=> b!1476885 d!433303))

(declare-fun bs!345729 () Bool)

(declare-fun d!433305 () Bool)

(assert (= bs!345729 (and d!433305 d!433287)))

(declare-fun lambda!63695 () Int)

(assert (=> bs!345729 (= lambda!63695 lambda!63694)))

(declare-fun b!1477071 () Bool)

(declare-fun e!943839 () Bool)

(assert (=> b!1477071 (= e!943839 true)))

(declare-fun b!1477070 () Bool)

(declare-fun e!943838 () Bool)

(assert (=> b!1477070 (= e!943838 e!943839)))

(declare-fun b!1477069 () Bool)

(declare-fun e!943837 () Bool)

(assert (=> b!1477069 (= e!943837 e!943838)))

(assert (=> d!433305 e!943837))

(assert (= b!1477070 b!1477071))

(assert (= b!1477069 b!1477070))

(assert (= (and d!433305 (is-Cons!15574 rules!4290)) b!1477069))

(assert (=> b!1477071 (< (dynLambda!7068 order!9359 (toValue!4109 (transformation!2774 (h!20975 rules!4290)))) (dynLambda!7069 order!9361 lambda!63695))))

(assert (=> b!1477071 (< (dynLambda!7070 order!9363 (toChars!3968 (transformation!2774 (h!20975 rules!4290)))) (dynLambda!7069 order!9361 lambda!63695))))

(assert (=> d!433305 true))

(declare-fun lt!513357 () Bool)

(assert (=> d!433305 (= lt!513357 (forall!3795 l1!3136 lambda!63695))))

(declare-fun e!943836 () Bool)

(assert (=> d!433305 (= lt!513357 e!943836)))

(declare-fun res!667579 () Bool)

(assert (=> d!433305 (=> res!667579 e!943836)))

(assert (=> d!433305 (= res!667579 (not (is-Cons!15575 l1!3136)))))

(assert (=> d!433305 (not (isEmpty!9732 rules!4290))))

(assert (=> d!433305 (= (rulesProduceEachTokenIndividuallyList!797 thiss!27374 rules!4290 l1!3136) lt!513357)))

(declare-fun b!1477067 () Bool)

(declare-fun e!943835 () Bool)

(assert (=> b!1477067 (= e!943836 e!943835)))

(declare-fun res!667580 () Bool)

(assert (=> b!1477067 (=> (not res!667580) (not e!943835))))

(assert (=> b!1477067 (= res!667580 (rulesProduceIndividualToken!1287 thiss!27374 rules!4290 (h!20976 l1!3136)))))

(declare-fun b!1477068 () Bool)

(assert (=> b!1477068 (= e!943835 (rulesProduceEachTokenIndividuallyList!797 thiss!27374 rules!4290 (t!136734 l1!3136)))))

(assert (= (and d!433305 (not res!667579)) b!1477067))

(assert (= (and b!1477067 res!667580) b!1477068))

(declare-fun m!1722739 () Bool)

(assert (=> d!433305 m!1722739))

(assert (=> d!433305 m!1722559))

(assert (=> b!1477067 m!1722685))

(declare-fun m!1722741 () Bool)

(assert (=> b!1477068 m!1722741))

(assert (=> b!1476896 d!433305))

(declare-fun b!1477085 () Bool)

(declare-fun b_free!37803 () Bool)

(declare-fun b_next!38507 () Bool)

(assert (=> b!1477085 (= b_free!37803 (not b_next!38507))))

(declare-fun tp!418098 () Bool)

(declare-fun b_and!102113 () Bool)

(assert (=> b!1477085 (= tp!418098 b_and!102113)))

(declare-fun b_free!37805 () Bool)

(declare-fun b_next!38509 () Bool)

(assert (=> b!1477085 (= b_free!37805 (not b_next!38509))))

(declare-fun t!136768 () Bool)

(declare-fun tb!84197 () Bool)

(assert (=> (and b!1477085 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l1!3136))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136))))) t!136768) tb!84197))

(declare-fun result!101176 () Bool)

(assert (= result!101176 result!101156))

(assert (=> b!1476981 t!136768))

(declare-fun t!136770 () Bool)

(declare-fun tb!84199 () Bool)

(assert (=> (and b!1477085 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l1!3136))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105))))) t!136770) tb!84199))

(declare-fun result!101178 () Bool)

(assert (= result!101178 result!101168))

(assert (=> b!1476992 t!136770))

(declare-fun tp!418101 () Bool)

(declare-fun b_and!102115 () Bool)

(assert (=> b!1477085 (= tp!418101 (and (=> t!136768 result!101176) (=> t!136770 result!101178) b_and!102115))))

(declare-fun e!943856 () Bool)

(assert (=> b!1477085 (= e!943856 (and tp!418098 tp!418101))))

(declare-fun e!943857 () Bool)

(declare-fun tp!418097 () Bool)

(declare-fun e!943853 () Bool)

(declare-fun b!1477082 () Bool)

(assert (=> b!1477082 (= e!943857 (and (inv!20786 (h!20976 (t!136734 l1!3136))) e!943853 tp!418097))))

(declare-fun b!1477084 () Bool)

(declare-fun e!943855 () Bool)

(declare-fun tp!418100 () Bool)

(assert (=> b!1477084 (= e!943855 (and tp!418100 (inv!20782 (tag!3038 (rule!4551 (h!20976 (t!136734 l1!3136))))) (inv!20785 (transformation!2774 (rule!4551 (h!20976 (t!136734 l1!3136))))) e!943856))))

(declare-fun b!1477083 () Bool)

(declare-fun tp!418099 () Bool)

(assert (=> b!1477083 (= e!943853 (and (inv!21 (value!88708 (h!20976 (t!136734 l1!3136)))) e!943855 tp!418099))))

(assert (=> b!1476892 (= tp!418026 e!943857)))

(assert (= b!1477084 b!1477085))

(assert (= b!1477083 b!1477084))

(assert (= b!1477082 b!1477083))

(assert (= (and b!1476892 (is-Cons!15575 (t!136734 l1!3136))) b!1477082))

(declare-fun m!1722743 () Bool)

(assert (=> b!1477082 m!1722743))

(declare-fun m!1722745 () Bool)

(assert (=> b!1477084 m!1722745))

(declare-fun m!1722747 () Bool)

(assert (=> b!1477084 m!1722747))

(declare-fun m!1722749 () Bool)

(assert (=> b!1477083 m!1722749))

(declare-fun b!1477089 () Bool)

(declare-fun b_free!37807 () Bool)

(declare-fun b_next!38511 () Bool)

(assert (=> b!1477089 (= b_free!37807 (not b_next!38511))))

(declare-fun tp!418103 () Bool)

(declare-fun b_and!102117 () Bool)

(assert (=> b!1477089 (= tp!418103 b_and!102117)))

(declare-fun b_free!37809 () Bool)

(declare-fun b_next!38513 () Bool)

(assert (=> b!1477089 (= b_free!37809 (not b_next!38513))))

(declare-fun t!136772 () Bool)

(declare-fun tb!84201 () Bool)

(assert (=> (and b!1477089 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l2!3105))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136))))) t!136772) tb!84201))

(declare-fun result!101180 () Bool)

(assert (= result!101180 result!101156))

(assert (=> b!1476981 t!136772))

(declare-fun t!136774 () Bool)

(declare-fun tb!84203 () Bool)

(assert (=> (and b!1477089 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l2!3105))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105))))) t!136774) tb!84203))

(declare-fun result!101182 () Bool)

(assert (= result!101182 result!101168))

(assert (=> b!1476992 t!136774))

(declare-fun tp!418106 () Bool)

(declare-fun b_and!102119 () Bool)

(assert (=> b!1477089 (= tp!418106 (and (=> t!136772 result!101180) (=> t!136774 result!101182) b_and!102119))))

(declare-fun e!943862 () Bool)

(assert (=> b!1477089 (= e!943862 (and tp!418103 tp!418106))))

(declare-fun e!943863 () Bool)

(declare-fun e!943859 () Bool)

(declare-fun b!1477086 () Bool)

(declare-fun tp!418102 () Bool)

(assert (=> b!1477086 (= e!943863 (and (inv!20786 (h!20976 (t!136734 l2!3105))) e!943859 tp!418102))))

(declare-fun tp!418105 () Bool)

(declare-fun b!1477088 () Bool)

(declare-fun e!943861 () Bool)

(assert (=> b!1477088 (= e!943861 (and tp!418105 (inv!20782 (tag!3038 (rule!4551 (h!20976 (t!136734 l2!3105))))) (inv!20785 (transformation!2774 (rule!4551 (h!20976 (t!136734 l2!3105))))) e!943862))))

(declare-fun b!1477087 () Bool)

(declare-fun tp!418104 () Bool)

(assert (=> b!1477087 (= e!943859 (and (inv!21 (value!88708 (h!20976 (t!136734 l2!3105)))) e!943861 tp!418104))))

(assert (=> b!1476902 (= tp!418034 e!943863)))

(assert (= b!1477088 b!1477089))

(assert (= b!1477087 b!1477088))

(assert (= b!1477086 b!1477087))

(assert (= (and b!1476902 (is-Cons!15575 (t!136734 l2!3105))) b!1477086))

(declare-fun m!1722751 () Bool)

(assert (=> b!1477086 m!1722751))

(declare-fun m!1722753 () Bool)

(assert (=> b!1477088 m!1722753))

(declare-fun m!1722755 () Bool)

(assert (=> b!1477088 m!1722755))

(declare-fun m!1722757 () Bool)

(assert (=> b!1477087 m!1722757))

(declare-fun b!1477096 () Bool)

(declare-fun e!943868 () Bool)

(declare-fun tp_is_empty!6945 () Bool)

(declare-fun tp!418109 () Bool)

(assert (=> b!1477096 (= e!943868 (and tp_is_empty!6945 tp!418109))))

(assert (=> b!1476893 (= tp!418032 e!943868)))

(assert (= (and b!1476893 (is-Cons!15573 (originalCharacters!3636 (h!20976 l1!3136)))) b!1477096))

(declare-fun b!1477115 () Bool)

(declare-fun b_free!37811 () Bool)

(declare-fun b_next!38515 () Bool)

(assert (=> b!1477115 (= b_free!37811 (not b_next!38515))))

(declare-fun tp!418121 () Bool)

(declare-fun b_and!102121 () Bool)

(assert (=> b!1477115 (= tp!418121 b_and!102121)))

(declare-fun b_free!37813 () Bool)

(declare-fun b_next!38517 () Bool)

(assert (=> b!1477115 (= b_free!37813 (not b_next!38517))))

(declare-fun tb!84205 () Bool)

(declare-fun t!136776 () Bool)

(assert (=> (and b!1477115 (= (toChars!3968 (transformation!2774 (h!20975 (t!136733 rules!4290)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136))))) t!136776) tb!84205))

(declare-fun result!101188 () Bool)

(assert (= result!101188 result!101156))

(assert (=> b!1476981 t!136776))

(declare-fun tb!84207 () Bool)

(declare-fun t!136778 () Bool)

(assert (=> (and b!1477115 (= (toChars!3968 (transformation!2774 (h!20975 (t!136733 rules!4290)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105))))) t!136778) tb!84207))

(declare-fun result!101190 () Bool)

(assert (= result!101190 result!101168))

(assert (=> b!1476992 t!136778))

(declare-fun tp!418120 () Bool)

(declare-fun b_and!102123 () Bool)

(assert (=> b!1477115 (= tp!418120 (and (=> t!136776 result!101188) (=> t!136778 result!101190) b_and!102123))))

(declare-fun e!943884 () Bool)

(assert (=> b!1477115 (= e!943884 (and tp!418121 tp!418120))))

(declare-fun b!1477114 () Bool)

(declare-fun e!943883 () Bool)

(declare-fun tp!418118 () Bool)

(assert (=> b!1477114 (= e!943883 (and tp!418118 (inv!20782 (tag!3038 (h!20975 (t!136733 rules!4290)))) (inv!20785 (transformation!2774 (h!20975 (t!136733 rules!4290)))) e!943884))))

(declare-fun b!1477113 () Bool)

(declare-fun e!943886 () Bool)

(declare-fun tp!418119 () Bool)

(assert (=> b!1477113 (= e!943886 (and e!943883 tp!418119))))

(assert (=> b!1476903 (= tp!418035 e!943886)))

(assert (= b!1477114 b!1477115))

(assert (= b!1477113 b!1477114))

(assert (= (and b!1476903 (is-Cons!15574 (t!136733 rules!4290))) b!1477113))

(declare-fun m!1722759 () Bool)

(assert (=> b!1477114 m!1722759))

(declare-fun m!1722761 () Bool)

(assert (=> b!1477114 m!1722761))

(declare-fun b!1477132 () Bool)

(declare-fun e!943892 () Bool)

(declare-fun tp!418133 () Bool)

(declare-fun tp!418135 () Bool)

(assert (=> b!1477132 (= e!943892 (and tp!418133 tp!418135))))

(declare-fun b!1477131 () Bool)

(assert (=> b!1477131 (= e!943892 tp_is_empty!6945)))

(assert (=> b!1476889 (= tp!418033 e!943892)))

(declare-fun b!1477133 () Bool)

(declare-fun tp!418136 () Bool)

(assert (=> b!1477133 (= e!943892 tp!418136)))

(declare-fun b!1477134 () Bool)

(declare-fun tp!418132 () Bool)

(declare-fun tp!418134 () Bool)

(assert (=> b!1477134 (= e!943892 (and tp!418132 tp!418134))))

(assert (= (and b!1476889 (is-ElementMatch!4088 (regex!2774 (rule!4551 (h!20976 l1!3136))))) b!1477131))

(assert (= (and b!1476889 (is-Concat!6952 (regex!2774 (rule!4551 (h!20976 l1!3136))))) b!1477132))

(assert (= (and b!1476889 (is-Star!4088 (regex!2774 (rule!4551 (h!20976 l1!3136))))) b!1477133))

(assert (= (and b!1476889 (is-Union!4088 (regex!2774 (rule!4551 (h!20976 l1!3136))))) b!1477134))

(declare-fun b!1477136 () Bool)

(declare-fun e!943893 () Bool)

(declare-fun tp!418138 () Bool)

(declare-fun tp!418140 () Bool)

(assert (=> b!1477136 (= e!943893 (and tp!418138 tp!418140))))

(declare-fun b!1477135 () Bool)

(assert (=> b!1477135 (= e!943893 tp_is_empty!6945)))

(assert (=> b!1476899 (= tp!418025 e!943893)))

(declare-fun b!1477137 () Bool)

(declare-fun tp!418141 () Bool)

(assert (=> b!1477137 (= e!943893 tp!418141)))

(declare-fun b!1477138 () Bool)

(declare-fun tp!418137 () Bool)

(declare-fun tp!418139 () Bool)

(assert (=> b!1477138 (= e!943893 (and tp!418137 tp!418139))))

(assert (= (and b!1476899 (is-ElementMatch!4088 (regex!2774 (rule!4551 (h!20976 l2!3105))))) b!1477135))

(assert (= (and b!1476899 (is-Concat!6952 (regex!2774 (rule!4551 (h!20976 l2!3105))))) b!1477136))

(assert (= (and b!1476899 (is-Star!4088 (regex!2774 (rule!4551 (h!20976 l2!3105))))) b!1477137))

(assert (= (and b!1476899 (is-Union!4088 (regex!2774 (rule!4551 (h!20976 l2!3105))))) b!1477138))

(declare-fun b!1477139 () Bool)

(declare-fun e!943894 () Bool)

(declare-fun tp!418142 () Bool)

(assert (=> b!1477139 (= e!943894 (and tp_is_empty!6945 tp!418142))))

(assert (=> b!1476887 (= tp!418027 e!943894)))

(assert (= (and b!1476887 (is-Cons!15573 (originalCharacters!3636 (h!20976 l2!3105)))) b!1477139))

(declare-fun b!1477141 () Bool)

(declare-fun e!943895 () Bool)

(declare-fun tp!418144 () Bool)

(declare-fun tp!418146 () Bool)

(assert (=> b!1477141 (= e!943895 (and tp!418144 tp!418146))))

(declare-fun b!1477140 () Bool)

(assert (=> b!1477140 (= e!943895 tp_is_empty!6945)))

(assert (=> b!1476894 (= tp!418024 e!943895)))

(declare-fun b!1477142 () Bool)

(declare-fun tp!418147 () Bool)

(assert (=> b!1477142 (= e!943895 tp!418147)))

(declare-fun b!1477143 () Bool)

(declare-fun tp!418143 () Bool)

(declare-fun tp!418145 () Bool)

(assert (=> b!1477143 (= e!943895 (and tp!418143 tp!418145))))

(assert (= (and b!1476894 (is-ElementMatch!4088 (regex!2774 (h!20975 rules!4290)))) b!1477140))

(assert (= (and b!1476894 (is-Concat!6952 (regex!2774 (h!20975 rules!4290)))) b!1477141))

(assert (= (and b!1476894 (is-Star!4088 (regex!2774 (h!20975 rules!4290)))) b!1477142))

(assert (= (and b!1476894 (is-Union!4088 (regex!2774 (h!20975 rules!4290)))) b!1477143))

(declare-fun b_lambda!46235 () Bool)

(assert (= b_lambda!46233 (or (and b!1477115 b_free!37813 (= (toChars!3968 (transformation!2774 (h!20975 (t!136733 rules!4290)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))))) (and b!1476900 b_free!37785 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))))) (and b!1477089 b_free!37809 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l2!3105))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))))) (and b!1476898 b_free!37789) (and b!1477085 b_free!37805 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l1!3136))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))))) (and b!1476895 b_free!37781 (= (toChars!3968 (transformation!2774 (h!20975 rules!4290))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))))) b_lambda!46235)))

(declare-fun b_lambda!46237 () Bool)

(assert (= b_lambda!46231 (or (and b!1477089 b_free!37809 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l2!3105))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))))) (and b!1476895 b_free!37781 (= (toChars!3968 (transformation!2774 (h!20975 rules!4290))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))))) (and b!1476898 b_free!37789 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l2!3105)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))))) (and b!1477085 b_free!37805 (= (toChars!3968 (transformation!2774 (rule!4551 (h!20976 (t!136734 l1!3136))))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))))) (and b!1476900 b_free!37785) (and b!1477115 b_free!37813 (= (toChars!3968 (transformation!2774 (h!20975 (t!136733 rules!4290)))) (toChars!3968 (transformation!2774 (rule!4551 (h!20976 l1!3136)))))) b_lambda!46237)))

(push 1)

(assert (not b!1477053))

(assert (not b!1477088))

(assert (not d!433263))

(assert (not b!1477086))

(assert (not b!1477096))

(assert (not b!1477143))

(assert b_and!102117)

(assert (not d!433271))

(assert (not b!1477087))

(assert b_and!102065)

(assert (not b_next!38491))

(assert (not b!1477137))

(assert (not b!1477068))

(assert (not b_next!38511))

(assert (not b!1477084))

(assert (not b!1476993))

(assert (not b!1477083))

(assert (not d!433303))

(assert (not b!1477067))

(assert (not b!1477136))

(assert (not b_next!38507))

(assert (not b!1477133))

(assert (not b!1477017))

(assert (not b!1477016))

(assert (not b!1477054))

(assert b_and!102123)

(assert (not b!1477042))

(assert (not b!1477082))

(assert (not b!1476988))

(assert b_and!102069)

(assert (not b_next!38509))

(assert (not d!433281))

(assert (not b!1477141))

(assert (not b!1477050))

(assert (not b!1476994))

(assert b_and!102113)

(assert (not b!1477032))

(assert (not b!1477113))

(assert (not tb!84181))

(assert (not d!433305))

(assert b_and!102121)

(assert (not d!433299))

(assert (not b!1477138))

(assert (not b!1476982))

(assert b_and!102119)

(assert (not b_next!38513))

(assert (not b!1477023))

(assert (not b!1477051))

(assert (not b!1477114))

(assert (not b_next!38489))

(assert (not b!1477139))

(assert (not b!1477052))

(assert (not b!1477008))

(assert (not b!1477006))

(assert (not d!433253))

(assert (not b_next!38485))

(assert (not b!1477009))

(assert (not b!1477134))

(assert b_and!102109)

(assert (not tb!84191))

(assert b_and!102107)

(assert (not b!1477033))

(assert (not b_next!38517))

(assert (not b_next!38515))

(assert (not b_lambda!46237))

(assert (not b_next!38487))

(assert (not b!1476981))

(assert b_and!102073)

(assert (not b!1477066))

(assert (not b!1476992))

(assert (not d!433287))

(assert b_and!102115)

(assert tp_is_empty!6945)

(assert (not b!1477060))

(assert (not b!1477022))

(assert (not b_lambda!46235))

(assert (not b!1476991))

(assert (not b!1477048))

(assert (not d!433301))

(assert (not b_next!38493))

(assert b_and!102111)

(assert (not b!1477069))

(assert (not b!1477132))

(assert (not b_next!38483))

(assert (not b!1477142))

(assert (not d!433259))

(check-sat)

(pop 1)

(push 1)

(assert b_and!102117)

(assert (not b_next!38511))

(assert (not b_next!38507))

(assert b_and!102123)

(assert b_and!102113)

(assert b_and!102121)

(assert (not b_next!38489))

(assert (not b_next!38485))

(assert b_and!102109)

(assert b_and!102107)

(assert (not b_next!38487))

(assert b_and!102073)

(assert b_and!102115)

(assert (not b_next!38483))

(assert b_and!102065)

(assert (not b_next!38491))

(assert b_and!102069)

(assert (not b_next!38509))

(assert b_and!102119)

(assert (not b_next!38513))

(assert (not b_next!38517))

(assert (not b_next!38515))

(assert (not b_next!38493))

(assert b_and!102111)

(check-sat)

(pop 1)

