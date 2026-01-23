; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!240604 () Bool)

(assert start!240604)

(declare-fun b!2467591 () Bool)

(declare-fun b_free!71173 () Bool)

(declare-fun b_next!71877 () Bool)

(assert (=> b!2467591 (= b_free!71173 (not b_next!71877))))

(declare-fun tp!787413 () Bool)

(declare-fun b_and!186709 () Bool)

(assert (=> b!2467591 (= tp!787413 b_and!186709)))

(declare-fun b_free!71175 () Bool)

(declare-fun b_next!71879 () Bool)

(assert (=> b!2467591 (= b_free!71175 (not b_next!71879))))

(declare-fun tp!787411 () Bool)

(declare-fun b_and!186711 () Bool)

(assert (=> b!2467591 (= tp!787411 b_and!186711)))

(declare-fun b!2467600 () Bool)

(declare-fun b_free!71177 () Bool)

(declare-fun b_next!71881 () Bool)

(assert (=> b!2467600 (= b_free!71177 (not b_next!71881))))

(declare-fun tp!787406 () Bool)

(declare-fun b_and!186713 () Bool)

(assert (=> b!2467600 (= tp!787406 b_and!186713)))

(declare-fun b_free!71179 () Bool)

(declare-fun b_next!71883 () Bool)

(assert (=> b!2467600 (= b_free!71179 (not b_next!71883))))

(declare-fun tp!787416 () Bool)

(declare-fun b_and!186715 () Bool)

(assert (=> b!2467600 (= tp!787416 b_and!186715)))

(declare-fun b!2467607 () Bool)

(declare-fun b_free!71181 () Bool)

(declare-fun b_next!71885 () Bool)

(assert (=> b!2467607 (= b_free!71181 (not b_next!71885))))

(declare-fun tp!787415 () Bool)

(declare-fun b_and!186717 () Bool)

(assert (=> b!2467607 (= tp!787415 b_and!186717)))

(declare-fun b_free!71183 () Bool)

(declare-fun b_next!71887 () Bool)

(assert (=> b!2467607 (= b_free!71183 (not b_next!71887))))

(declare-fun tp!787407 () Bool)

(declare-fun b_and!186719 () Bool)

(assert (=> b!2467607 (= tp!787407 b_and!186719)))

(declare-fun b!2467609 () Bool)

(declare-fun b_free!71185 () Bool)

(declare-fun b_next!71889 () Bool)

(assert (=> b!2467609 (= b_free!71185 (not b_next!71889))))

(declare-fun tp!787412 () Bool)

(declare-fun b_and!186721 () Bool)

(assert (=> b!2467609 (= tp!787412 b_and!186721)))

(declare-fun b_free!71187 () Bool)

(declare-fun b_next!71891 () Bool)

(assert (=> b!2467609 (= b_free!71187 (not b_next!71891))))

(declare-fun tp!787409 () Bool)

(declare-fun b_and!186723 () Bool)

(assert (=> b!2467609 (= tp!787409 b_and!186723)))

(declare-fun b!2467583 () Bool)

(declare-fun res!1045205 () Bool)

(declare-fun e!1565158 () Bool)

(assert (=> b!2467583 (=> (not res!1045205) (not e!1565158))))

(declare-fun lt!882529 () Int)

(declare-datatypes ((List!28867 0))(
  ( (Nil!28767) (Cons!28767 (h!34168 (_ BitVec 16)) (t!209530 List!28867)) )
))
(declare-datatypes ((TokenValue!4666 0))(
  ( (FloatLiteralValue!9332 (text!33107 List!28867)) (TokenValueExt!4665 (__x!18587 Int)) (Broken!23330 (value!143061 List!28867)) (Object!4765) (End!4666) (Def!4666) (Underscore!4666) (Match!4666) (Else!4666) (Error!4666) (Case!4666) (If!4666) (Extends!4666) (Abstract!4666) (Class!4666) (Val!4666) (DelimiterValue!9332 (del!4726 List!28867)) (KeywordValue!4672 (value!143062 List!28867)) (CommentValue!9332 (value!143063 List!28867)) (WhitespaceValue!9332 (value!143064 List!28867)) (IndentationValue!4666 (value!143065 List!28867)) (String!31627) (Int32!4666) (Broken!23331 (value!143066 List!28867)) (Boolean!4667) (Unit!42096) (OperatorValue!4669 (op!4726 List!28867)) (IdentifierValue!9332 (value!143067 List!28867)) (IdentifierValue!9333 (value!143068 List!28867)) (WhitespaceValue!9333 (value!143069 List!28867)) (True!9332) (False!9332) (Broken!23332 (value!143070 List!28867)) (Broken!23333 (value!143071 List!28867)) (True!9333) (RightBrace!4666) (RightBracket!4666) (Colon!4666) (Null!4666) (Comma!4666) (LeftBracket!4666) (False!9333) (LeftBrace!4666) (ImaginaryLiteralValue!4666 (text!33108 List!28867)) (StringLiteralValue!13998 (value!143072 List!28867)) (EOFValue!4666 (value!143073 List!28867)) (IdentValue!4666 (value!143074 List!28867)) (DelimiterValue!9333 (value!143075 List!28867)) (DedentValue!4666 (value!143076 List!28867)) (NewLineValue!4666 (value!143077 List!28867)) (IntegerValue!13998 (value!143078 (_ BitVec 32)) (text!33109 List!28867)) (IntegerValue!13999 (value!143079 Int) (text!33110 List!28867)) (Times!4666) (Or!4666) (Equal!4666) (Minus!4666) (Broken!23334 (value!143080 List!28867)) (And!4666) (Div!4666) (LessEqual!4666) (Mod!4666) (Concat!11934) (Not!4666) (Plus!4666) (SpaceValue!4666 (value!143081 List!28867)) (IntegerValue!14000 (value!143082 Int) (text!33111 List!28867)) (StringLiteralValue!13999 (text!33112 List!28867)) (FloatLiteralValue!9333 (text!33113 List!28867)) (BytesLiteralValue!4666 (value!143083 List!28867)) (CommentValue!9333 (value!143084 List!28867)) (StringLiteralValue!14000 (value!143085 List!28867)) (ErrorTokenValue!4666 (msg!4727 List!28867)) )
))
(declare-datatypes ((C!14694 0))(
  ( (C!14695 (val!8607 Int)) )
))
(declare-datatypes ((List!28868 0))(
  ( (Nil!28768) (Cons!28768 (h!34169 C!14694) (t!209531 List!28868)) )
))
(declare-datatypes ((IArray!18389 0))(
  ( (IArray!18390 (innerList!9252 List!28868)) )
))
(declare-datatypes ((Conc!9192 0))(
  ( (Node!9192 (left!22075 Conc!9192) (right!22405 Conc!9192) (csize!18614 Int) (cheight!9403 Int)) (Leaf!13740 (xs!12172 IArray!18389) (csize!18615 Int)) (Empty!9192) )
))
(declare-datatypes ((BalanceConc!17998 0))(
  ( (BalanceConc!17999 (c!393332 Conc!9192)) )
))
(declare-datatypes ((Regex!7268 0))(
  ( (ElementMatch!7268 (c!393333 C!14694)) (Concat!11935 (regOne!15048 Regex!7268) (regTwo!15048 Regex!7268)) (EmptyExpr!7268) (Star!7268 (reg!7597 Regex!7268)) (EmptyLang!7268) (Union!7268 (regOne!15049 Regex!7268) (regTwo!15049 Regex!7268)) )
))
(declare-datatypes ((String!31628 0))(
  ( (String!31629 (value!143086 String)) )
))
(declare-datatypes ((TokenValueInjection!8832 0))(
  ( (TokenValueInjection!8833 (toValue!6340 Int) (toChars!6199 Int)) )
))
(declare-datatypes ((Rule!8760 0))(
  ( (Rule!8761 (regex!4480 Regex!7268) (tag!4970 String!31628) (isSeparator!4480 Bool) (transformation!4480 TokenValueInjection!8832)) )
))
(declare-datatypes ((Token!8430 0))(
  ( (Token!8431 (value!143087 TokenValue!4666) (rule!6838 Rule!8760) (size!22381 Int) (originalCharacters!5246 List!28868)) )
))
(declare-datatypes ((List!28869 0))(
  ( (Nil!28769) (Cons!28769 (h!34170 Token!8430) (t!209532 List!28869)) )
))
(declare-fun lt!882530 () List!28869)

(declare-fun t2!67 () Token!8430)

(declare-fun apply!6768 (List!28869 Int) Token!8430)

(assert (=> b!2467583 (= res!1045205 (= (apply!6768 lt!882530 lt!882529) t2!67))))

(declare-datatypes ((LexerInterface!4077 0))(
  ( (LexerInterfaceExt!4074 (__x!18588 Int)) (Lexer!4075) )
))
(declare-fun thiss!27932 () LexerInterface!4077)

(declare-fun e!1565167 () Bool)

(declare-fun b!2467584 () Bool)

(declare-datatypes ((List!28870 0))(
  ( (Nil!28770) (Cons!28770 (h!34171 Rule!8760) (t!209533 List!28870)) )
))
(declare-fun rules!4472 () List!28870)

(declare-fun t1!67 () Token!8430)

(declare-fun separableTokensPredicate!854 (LexerInterface!4077 Token!8430 Token!8430 List!28870) Bool)

(assert (=> b!2467584 (= e!1565167 (separableTokensPredicate!854 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2467585 () Bool)

(declare-fun res!1045204 () Bool)

(declare-fun e!1565166 () Bool)

(assert (=> b!2467585 (=> (not res!1045204) (not e!1565166))))

(declare-fun i!1803 () Int)

(assert (=> b!2467585 (= res!1045204 (not (= i!1803 0)))))

(declare-fun tp!787417 () Bool)

(declare-fun e!1565168 () Bool)

(declare-fun e!1565171 () Bool)

(declare-fun l!6611 () List!28869)

(declare-fun b!2467586 () Bool)

(declare-fun inv!21 (TokenValue!4666) Bool)

(assert (=> b!2467586 (= e!1565168 (and (inv!21 (value!143087 (h!34170 l!6611))) e!1565171 tp!787417))))

(declare-fun b!2467587 () Bool)

(declare-fun res!1045210 () Bool)

(assert (=> b!2467587 (=> (not res!1045210) (not e!1565166))))

(declare-fun rulesInvariant!3577 (LexerInterface!4077 List!28870) Bool)

(assert (=> b!2467587 (= res!1045210 (rulesInvariant!3577 thiss!27932 rules!4472))))

(declare-fun b!2467588 () Bool)

(declare-fun e!1565160 () Bool)

(assert (=> b!2467588 (= e!1565160 e!1565158)))

(declare-fun res!1045217 () Bool)

(assert (=> b!2467588 (=> (not res!1045217) (not e!1565158))))

(declare-fun size!22382 (List!28869) Int)

(assert (=> b!2467588 (= res!1045217 (< lt!882529 (size!22382 lt!882530)))))

(assert (=> b!2467588 (= lt!882529 (+ 1 (- i!1803 1)))))

(declare-fun b!2467589 () Bool)

(declare-fun res!1045207 () Bool)

(assert (=> b!2467589 (=> (not res!1045207) (not e!1565166))))

(declare-fun isEmpty!16710 (List!28870) Bool)

(assert (=> b!2467589 (= res!1045207 (not (isEmpty!16710 rules!4472)))))

(declare-fun b!2467590 () Bool)

(declare-fun res!1045216 () Bool)

(assert (=> b!2467590 (=> (not res!1045216) (not e!1565166))))

(assert (=> b!2467590 (= res!1045216 (= (apply!6768 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun e!1565169 () Bool)

(assert (=> b!2467591 (= e!1565169 (and tp!787413 tp!787411))))

(declare-fun e!1565154 () Bool)

(declare-fun b!2467592 () Bool)

(declare-fun tp!787404 () Bool)

(declare-fun inv!38855 (Token!8430) Bool)

(assert (=> b!2467592 (= e!1565154 (and (inv!38855 (h!34170 l!6611)) e!1565168 tp!787404))))

(declare-fun b!2467593 () Bool)

(declare-fun res!1045215 () Bool)

(assert (=> b!2467593 (=> (not res!1045215) (not e!1565166))))

(declare-fun rulesProduceEachTokenIndividuallyList!1393 (LexerInterface!4077 List!28870 List!28869) Bool)

(assert (=> b!2467593 (= res!1045215 (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2467594 () Bool)

(declare-fun e!1565163 () Bool)

(declare-fun tp!787418 () Bool)

(declare-fun e!1565162 () Bool)

(declare-fun inv!38852 (String!31628) Bool)

(declare-fun inv!38856 (TokenValueInjection!8832) Bool)

(assert (=> b!2467594 (= e!1565163 (and tp!787418 (inv!38852 (tag!4970 (rule!6838 t1!67))) (inv!38856 (transformation!4480 (rule!6838 t1!67))) e!1565162))))

(declare-fun b!2467595 () Bool)

(declare-fun res!1045214 () Bool)

(assert (=> b!2467595 (=> (not res!1045214) (not e!1565166))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!616 (LexerInterface!4077 List!28869 List!28870) Bool)

(assert (=> b!2467595 (= res!1045214 (tokensListTwoByTwoPredicateSeparableList!616 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2467596 () Bool)

(assert (=> b!2467596 (= e!1565166 e!1565160)))

(declare-fun res!1045203 () Bool)

(assert (=> b!2467596 (=> (not res!1045203) (not e!1565160))))

(assert (=> b!2467596 (= res!1045203 (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 lt!882530))))

(declare-fun tail!3913 (List!28869) List!28869)

(assert (=> b!2467596 (= lt!882530 (tail!3913 l!6611))))

(declare-fun b!2467597 () Bool)

(declare-fun e!1565176 () Bool)

(declare-fun e!1565153 () Bool)

(declare-fun tp!787410 () Bool)

(assert (=> b!2467597 (= e!1565176 (and e!1565153 tp!787410))))

(declare-fun b!2467598 () Bool)

(declare-fun e!1565157 () Bool)

(declare-fun tp!787414 () Bool)

(assert (=> b!2467598 (= e!1565171 (and tp!787414 (inv!38852 (tag!4970 (rule!6838 (h!34170 l!6611)))) (inv!38856 (transformation!4480 (rule!6838 (h!34170 l!6611)))) e!1565157))))

(declare-fun b!2467599 () Bool)

(declare-fun tp!787405 () Bool)

(assert (=> b!2467599 (= e!1565153 (and tp!787405 (inv!38852 (tag!4970 (h!34171 rules!4472))) (inv!38856 (transformation!4480 (h!34171 rules!4472))) e!1565169))))

(assert (=> b!2467600 (= e!1565157 (and tp!787406 tp!787416))))

(declare-fun b!2467601 () Bool)

(declare-fun res!1045212 () Bool)

(assert (=> b!2467601 (=> (not res!1045212) (not e!1565166))))

(assert (=> b!2467601 (= res!1045212 (< (+ 1 i!1803) (size!22382 l!6611)))))

(declare-fun b!2467602 () Bool)

(declare-fun res!1045209 () Bool)

(assert (=> b!2467602 (=> (not res!1045209) (not e!1565166))))

(assert (=> b!2467602 (= res!1045209 (>= i!1803 0))))

(declare-fun b!2467603 () Bool)

(declare-fun res!1045218 () Bool)

(assert (=> b!2467603 (=> (not res!1045218) (not e!1565158))))

(assert (=> b!2467603 (= res!1045218 (= (apply!6768 lt!882530 (- i!1803 1)) t1!67))))

(declare-fun res!1045213 () Bool)

(assert (=> start!240604 (=> (not res!1045213) (not e!1565166))))

(assert (=> start!240604 (= res!1045213 (is-Lexer!4075 thiss!27932))))

(assert (=> start!240604 e!1565166))

(assert (=> start!240604 true))

(assert (=> start!240604 e!1565176))

(declare-fun e!1565159 () Bool)

(assert (=> start!240604 (and (inv!38855 t2!67) e!1565159)))

(assert (=> start!240604 e!1565154))

(declare-fun e!1565155 () Bool)

(assert (=> start!240604 (and (inv!38855 t1!67) e!1565155)))

(declare-fun b!2467604 () Bool)

(declare-fun res!1045208 () Bool)

(assert (=> b!2467604 (=> (not res!1045208) (not e!1565160))))

(assert (=> b!2467604 (= res!1045208 (>= (- i!1803 1) 0))))

(declare-fun tp!787419 () Bool)

(declare-fun b!2467605 () Bool)

(assert (=> b!2467605 (= e!1565155 (and (inv!21 (value!143087 t1!67)) e!1565163 tp!787419))))

(declare-fun b!2467606 () Bool)

(declare-fun res!1045211 () Bool)

(assert (=> b!2467606 (=> (not res!1045211) (not e!1565160))))

(assert (=> b!2467606 (= res!1045211 (tokensListTwoByTwoPredicateSeparableList!616 thiss!27932 lt!882530 rules!4472))))

(declare-fun e!1565156 () Bool)

(assert (=> b!2467607 (= e!1565156 (and tp!787415 tp!787407))))

(declare-fun tp!787420 () Bool)

(declare-fun e!1565175 () Bool)

(declare-fun b!2467608 () Bool)

(assert (=> b!2467608 (= e!1565159 (and (inv!21 (value!143087 t2!67)) e!1565175 tp!787420))))

(assert (=> b!2467609 (= e!1565162 (and tp!787412 tp!787409))))

(declare-fun b!2467610 () Bool)

(declare-fun tp!787408 () Bool)

(assert (=> b!2467610 (= e!1565175 (and tp!787408 (inv!38852 (tag!4970 (rule!6838 t2!67))) (inv!38856 (transformation!4480 (rule!6838 t2!67))) e!1565156))))

(declare-fun b!2467611 () Bool)

(declare-fun isEmpty!16711 (BalanceConc!17998) Bool)

(declare-fun charsOf!2819 (Token!8430) BalanceConc!17998)

(assert (=> b!2467611 (= e!1565158 (not (not (isEmpty!16711 (charsOf!2819 t2!67)))))))

(declare-datatypes ((Unit!42097 0))(
  ( (Unit!42098) )
))
(declare-fun lt!882528 () Unit!42097)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 (LexerInterface!4077 List!28870 List!28869 Token!8430) Unit!42097)

(assert (=> b!2467611 (= lt!882528 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 l!6611 t2!67))))

(declare-fun lt!882532 () Unit!42097)

(assert (=> b!2467611 (= lt!882532 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> b!2467611 e!1565167))

(declare-fun res!1045206 () Bool)

(assert (=> b!2467611 (=> (not res!1045206) (not e!1565167))))

(declare-fun rulesProduceIndividualToken!1809 (LexerInterface!4077 List!28870 Token!8430) Bool)

(assert (=> b!2467611 (= res!1045206 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t2!67))))

(declare-fun lt!882533 () Unit!42097)

(assert (=> b!2467611 (= lt!882533 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 t2!67))))

(assert (=> b!2467611 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882527 () Unit!42097)

(assert (=> b!2467611 (= lt!882527 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 t1!67))))

(declare-fun lt!882531 () Unit!42097)

(declare-fun tokensListTwoByTwoPredicateInstantiateSeparableTokens!7 (LexerInterface!4077 List!28869 List!28870 Token!8430 Token!8430 Int) Unit!42097)

(assert (=> b!2467611 (= lt!882531 (tokensListTwoByTwoPredicateInstantiateSeparableTokens!7 thiss!27932 lt!882530 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(declare-fun b!2467612 () Bool)

(declare-fun res!1045202 () Bool)

(assert (=> b!2467612 (=> (not res!1045202) (not e!1565166))))

(assert (=> b!2467612 (= res!1045202 (= (apply!6768 l!6611 i!1803) t1!67))))

(assert (= (and start!240604 res!1045213) b!2467589))

(assert (= (and b!2467589 res!1045207) b!2467587))

(assert (= (and b!2467587 res!1045210) b!2467593))

(assert (= (and b!2467593 res!1045215) b!2467595))

(assert (= (and b!2467595 res!1045214) b!2467602))

(assert (= (and b!2467602 res!1045209) b!2467601))

(assert (= (and b!2467601 res!1045212) b!2467612))

(assert (= (and b!2467612 res!1045202) b!2467590))

(assert (= (and b!2467590 res!1045216) b!2467585))

(assert (= (and b!2467585 res!1045204) b!2467596))

(assert (= (and b!2467596 res!1045203) b!2467606))

(assert (= (and b!2467606 res!1045211) b!2467604))

(assert (= (and b!2467604 res!1045208) b!2467588))

(assert (= (and b!2467588 res!1045217) b!2467603))

(assert (= (and b!2467603 res!1045218) b!2467583))

(assert (= (and b!2467583 res!1045205) b!2467611))

(assert (= (and b!2467611 res!1045206) b!2467584))

(assert (= b!2467599 b!2467591))

(assert (= b!2467597 b!2467599))

(assert (= (and start!240604 (is-Cons!28770 rules!4472)) b!2467597))

(assert (= b!2467610 b!2467607))

(assert (= b!2467608 b!2467610))

(assert (= start!240604 b!2467608))

(assert (= b!2467598 b!2467600))

(assert (= b!2467586 b!2467598))

(assert (= b!2467592 b!2467586))

(assert (= (and start!240604 (is-Cons!28769 l!6611)) b!2467592))

(assert (= b!2467594 b!2467609))

(assert (= b!2467605 b!2467594))

(assert (= start!240604 b!2467605))

(declare-fun m!2836715 () Bool)

(assert (=> b!2467605 m!2836715))

(declare-fun m!2836717 () Bool)

(assert (=> b!2467592 m!2836717))

(declare-fun m!2836719 () Bool)

(assert (=> b!2467596 m!2836719))

(declare-fun m!2836721 () Bool)

(assert (=> b!2467596 m!2836721))

(declare-fun m!2836723 () Bool)

(assert (=> b!2467599 m!2836723))

(declare-fun m!2836725 () Bool)

(assert (=> b!2467599 m!2836725))

(declare-fun m!2836727 () Bool)

(assert (=> b!2467611 m!2836727))

(declare-fun m!2836729 () Bool)

(assert (=> b!2467611 m!2836729))

(declare-fun m!2836731 () Bool)

(assert (=> b!2467611 m!2836731))

(declare-fun m!2836733 () Bool)

(assert (=> b!2467611 m!2836733))

(declare-fun m!2836735 () Bool)

(assert (=> b!2467611 m!2836735))

(declare-fun m!2836737 () Bool)

(assert (=> b!2467611 m!2836737))

(declare-fun m!2836739 () Bool)

(assert (=> b!2467611 m!2836739))

(declare-fun m!2836741 () Bool)

(assert (=> b!2467611 m!2836741))

(assert (=> b!2467611 m!2836735))

(declare-fun m!2836743 () Bool)

(assert (=> b!2467611 m!2836743))

(declare-fun m!2836745 () Bool)

(assert (=> b!2467612 m!2836745))

(declare-fun m!2836747 () Bool)

(assert (=> b!2467589 m!2836747))

(declare-fun m!2836749 () Bool)

(assert (=> b!2467590 m!2836749))

(declare-fun m!2836751 () Bool)

(assert (=> b!2467595 m!2836751))

(declare-fun m!2836753 () Bool)

(assert (=> b!2467586 m!2836753))

(declare-fun m!2836755 () Bool)

(assert (=> b!2467598 m!2836755))

(declare-fun m!2836757 () Bool)

(assert (=> b!2467598 m!2836757))

(declare-fun m!2836759 () Bool)

(assert (=> b!2467610 m!2836759))

(declare-fun m!2836761 () Bool)

(assert (=> b!2467610 m!2836761))

(declare-fun m!2836763 () Bool)

(assert (=> b!2467594 m!2836763))

(declare-fun m!2836765 () Bool)

(assert (=> b!2467594 m!2836765))

(declare-fun m!2836767 () Bool)

(assert (=> b!2467593 m!2836767))

(declare-fun m!2836769 () Bool)

(assert (=> start!240604 m!2836769))

(declare-fun m!2836771 () Bool)

(assert (=> start!240604 m!2836771))

(declare-fun m!2836773 () Bool)

(assert (=> b!2467601 m!2836773))

(declare-fun m!2836775 () Bool)

(assert (=> b!2467587 m!2836775))

(declare-fun m!2836777 () Bool)

(assert (=> b!2467606 m!2836777))

(declare-fun m!2836779 () Bool)

(assert (=> b!2467584 m!2836779))

(declare-fun m!2836781 () Bool)

(assert (=> b!2467588 m!2836781))

(declare-fun m!2836783 () Bool)

(assert (=> b!2467583 m!2836783))

(declare-fun m!2836785 () Bool)

(assert (=> b!2467608 m!2836785))

(declare-fun m!2836787 () Bool)

(assert (=> b!2467603 m!2836787))

(push 1)

(assert (not b!2467608))

(assert (not b!2467601))

(assert (not b!2467612))

(assert (not b!2467592))

(assert (not b!2467594))

(assert (not b_next!71883))

(assert (not b_next!71881))

(assert (not b_next!71879))

(assert b_and!186719)

(assert (not b!2467590))

(assert b_and!186715)

(assert (not b!2467587))

(assert (not b!2467611))

(assert (not b_next!71877))

(assert (not b!2467588))

(assert b_and!186723)

(assert b_and!186721)

(assert b_and!186711)

(assert (not b_next!71885))

(assert (not b!2467595))

(assert (not b!2467606))

(assert (not b!2467599))

(assert (not b_next!71887))

(assert (not b!2467597))

(assert b_and!186713)

(assert (not b_next!71891))

(assert (not b!2467596))

(assert (not start!240604))

(assert (not b!2467584))

(assert b_and!186717)

(assert (not b!2467610))

(assert (not b!2467603))

(assert (not b!2467598))

(assert b_and!186709)

(assert (not b!2467586))

(assert (not b!2467593))

(assert (not b_next!71889))

(assert (not b!2467589))

(assert (not b!2467605))

(assert (not b!2467583))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71877))

(assert b_and!186723)

(assert (not b_next!71885))

(assert (not b_next!71887))

(assert b_and!186717)

(assert (not b_next!71883))

(assert b_and!186709)

(assert (not b_next!71881))

(assert (not b_next!71879))

(assert b_and!186719)

(assert (not b_next!71889))

(assert b_and!186715)

(assert b_and!186721)

(assert b_and!186711)

(assert b_and!186713)

(assert (not b_next!71891))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!710218 () Bool)

(declare-fun c!393340 () Bool)

(assert (=> d!710218 (= c!393340 (is-IntegerValue!13998 (value!143087 (h!34170 l!6611))))))

(declare-fun e!1565256 () Bool)

(assert (=> d!710218 (= (inv!21 (value!143087 (h!34170 l!6611))) e!1565256)))

(declare-fun b!2467713 () Bool)

(declare-fun e!1565255 () Bool)

(assert (=> b!2467713 (= e!1565256 e!1565255)))

(declare-fun c!393341 () Bool)

(assert (=> b!2467713 (= c!393341 (is-IntegerValue!13999 (value!143087 (h!34170 l!6611))))))

(declare-fun b!2467714 () Bool)

(declare-fun inv!16 (TokenValue!4666) Bool)

(assert (=> b!2467714 (= e!1565256 (inv!16 (value!143087 (h!34170 l!6611))))))

(declare-fun b!2467715 () Bool)

(declare-fun e!1565257 () Bool)

(declare-fun inv!15 (TokenValue!4666) Bool)

(assert (=> b!2467715 (= e!1565257 (inv!15 (value!143087 (h!34170 l!6611))))))

(declare-fun b!2467716 () Bool)

(declare-fun res!1045282 () Bool)

(assert (=> b!2467716 (=> res!1045282 e!1565257)))

(assert (=> b!2467716 (= res!1045282 (not (is-IntegerValue!14000 (value!143087 (h!34170 l!6611)))))))

(assert (=> b!2467716 (= e!1565255 e!1565257)))

(declare-fun b!2467717 () Bool)

(declare-fun inv!17 (TokenValue!4666) Bool)

(assert (=> b!2467717 (= e!1565255 (inv!17 (value!143087 (h!34170 l!6611))))))

(assert (= (and d!710218 c!393340) b!2467714))

(assert (= (and d!710218 (not c!393340)) b!2467713))

(assert (= (and b!2467713 c!393341) b!2467717))

(assert (= (and b!2467713 (not c!393341)) b!2467716))

(assert (= (and b!2467716 (not res!1045282)) b!2467715))

(declare-fun m!2836863 () Bool)

(assert (=> b!2467714 m!2836863))

(declare-fun m!2836865 () Bool)

(assert (=> b!2467715 m!2836865))

(declare-fun m!2836867 () Bool)

(assert (=> b!2467717 m!2836867))

(assert (=> b!2467586 d!710218))

(declare-fun b!2467768 () Bool)

(declare-fun e!1565297 () Bool)

(assert (=> b!2467768 (= e!1565297 true)))

(declare-fun b!2467767 () Bool)

(declare-fun e!1565296 () Bool)

(assert (=> b!2467767 (= e!1565296 e!1565297)))

(declare-fun b!2467766 () Bool)

(declare-fun e!1565295 () Bool)

(assert (=> b!2467766 (= e!1565295 e!1565296)))

(declare-fun d!710220 () Bool)

(assert (=> d!710220 e!1565295))

(assert (= b!2467767 b!2467768))

(assert (= b!2467766 b!2467767))

(assert (= (and d!710220 (is-Cons!28770 rules!4472)) b!2467766))

(declare-fun lambda!93244 () Int)

(declare-fun order!15575 () Int)

(declare-fun order!15573 () Int)

(declare-fun dynLambda!12340 (Int Int) Int)

(declare-fun dynLambda!12341 (Int Int) Int)

(assert (=> b!2467768 (< (dynLambda!12340 order!15573 (toValue!6340 (transformation!4480 (h!34171 rules!4472)))) (dynLambda!12341 order!15575 lambda!93244))))

(declare-fun order!15577 () Int)

(declare-fun dynLambda!12342 (Int Int) Int)

(assert (=> b!2467768 (< (dynLambda!12342 order!15577 (toChars!6199 (transformation!4480 (h!34171 rules!4472)))) (dynLambda!12341 order!15575 lambda!93244))))

(assert (=> d!710220 true))

(declare-fun lt!882588 () Bool)

(declare-fun forall!5897 (List!28869 Int) Bool)

(assert (=> d!710220 (= lt!882588 (forall!5897 lt!882530 lambda!93244))))

(declare-fun e!1565288 () Bool)

(assert (=> d!710220 (= lt!882588 e!1565288)))

(declare-fun res!1045309 () Bool)

(assert (=> d!710220 (=> res!1045309 e!1565288)))

(assert (=> d!710220 (= res!1045309 (not (is-Cons!28769 lt!882530)))))

(assert (=> d!710220 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710220 (= (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 lt!882530) lt!882588)))

(declare-fun b!2467756 () Bool)

(declare-fun e!1565287 () Bool)

(assert (=> b!2467756 (= e!1565288 e!1565287)))

(declare-fun res!1045310 () Bool)

(assert (=> b!2467756 (=> (not res!1045310) (not e!1565287))))

(assert (=> b!2467756 (= res!1045310 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 lt!882530)))))

(declare-fun b!2467757 () Bool)

(assert (=> b!2467757 (= e!1565287 (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 (t!209532 lt!882530)))))

(assert (= (and d!710220 (not res!1045309)) b!2467756))

(assert (= (and b!2467756 res!1045310) b!2467757))

(declare-fun m!2836935 () Bool)

(assert (=> d!710220 m!2836935))

(assert (=> d!710220 m!2836747))

(declare-fun m!2836937 () Bool)

(assert (=> b!2467756 m!2836937))

(declare-fun m!2836939 () Bool)

(assert (=> b!2467757 m!2836939))

(assert (=> b!2467596 d!710220))

(declare-fun d!710238 () Bool)

(assert (=> d!710238 (= (tail!3913 l!6611) (t!209532 l!6611))))

(assert (=> b!2467596 d!710238))

(declare-fun d!710240 () Bool)

(declare-fun res!1045320 () Bool)

(declare-fun e!1565307 () Bool)

(assert (=> d!710240 (=> res!1045320 e!1565307)))

(assert (=> d!710240 (= res!1045320 (or (not (is-Cons!28769 lt!882530)) (not (is-Cons!28769 (t!209532 lt!882530)))))))

(assert (=> d!710240 (= (tokensListTwoByTwoPredicateSeparableList!616 thiss!27932 lt!882530 rules!4472) e!1565307)))

(declare-fun b!2467779 () Bool)

(declare-fun e!1565306 () Bool)

(assert (=> b!2467779 (= e!1565307 e!1565306)))

(declare-fun res!1045319 () Bool)

(assert (=> b!2467779 (=> (not res!1045319) (not e!1565306))))

(assert (=> b!2467779 (= res!1045319 (separableTokensPredicate!854 thiss!27932 (h!34170 lt!882530) (h!34170 (t!209532 lt!882530)) rules!4472))))

(declare-fun lt!882609 () Unit!42097)

(declare-fun Unit!42102 () Unit!42097)

(assert (=> b!2467779 (= lt!882609 Unit!42102)))

(declare-fun size!22385 (BalanceConc!17998) Int)

(assert (=> b!2467779 (> (size!22385 (charsOf!2819 (h!34170 (t!209532 lt!882530)))) 0)))

(declare-fun lt!882610 () Unit!42097)

(declare-fun Unit!42103 () Unit!42097)

(assert (=> b!2467779 (= lt!882610 Unit!42103)))

(assert (=> b!2467779 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 (t!209532 lt!882530)))))

(declare-fun lt!882606 () Unit!42097)

(declare-fun Unit!42104 () Unit!42097)

(assert (=> b!2467779 (= lt!882606 Unit!42104)))

(assert (=> b!2467779 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 lt!882530))))

(declare-fun lt!882605 () Unit!42097)

(declare-fun lt!882611 () Unit!42097)

(assert (=> b!2467779 (= lt!882605 lt!882611)))

(assert (=> b!2467779 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 (t!209532 lt!882530)))))

(assert (=> b!2467779 (= lt!882611 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 (h!34170 (t!209532 lt!882530))))))

(declare-fun lt!882607 () Unit!42097)

(declare-fun lt!882608 () Unit!42097)

(assert (=> b!2467779 (= lt!882607 lt!882608)))

(assert (=> b!2467779 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 lt!882530))))

(assert (=> b!2467779 (= lt!882608 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 (h!34170 lt!882530)))))

(declare-fun b!2467780 () Bool)

(assert (=> b!2467780 (= e!1565306 (tokensListTwoByTwoPredicateSeparableList!616 thiss!27932 (Cons!28769 (h!34170 (t!209532 lt!882530)) (t!209532 (t!209532 lt!882530))) rules!4472))))

(assert (= (and d!710240 (not res!1045320)) b!2467779))

(assert (= (and b!2467779 res!1045319) b!2467780))

(declare-fun m!2836941 () Bool)

(assert (=> b!2467779 m!2836941))

(declare-fun m!2836943 () Bool)

(assert (=> b!2467779 m!2836943))

(declare-fun m!2836945 () Bool)

(assert (=> b!2467779 m!2836945))

(declare-fun m!2836947 () Bool)

(assert (=> b!2467779 m!2836947))

(declare-fun m!2836949 () Bool)

(assert (=> b!2467779 m!2836949))

(assert (=> b!2467779 m!2836937))

(declare-fun m!2836951 () Bool)

(assert (=> b!2467779 m!2836951))

(assert (=> b!2467779 m!2836943))

(declare-fun m!2836953 () Bool)

(assert (=> b!2467780 m!2836953))

(assert (=> b!2467606 d!710240))

(declare-fun d!710242 () Bool)

(declare-fun res!1045322 () Bool)

(declare-fun e!1565309 () Bool)

(assert (=> d!710242 (=> res!1045322 e!1565309)))

(assert (=> d!710242 (= res!1045322 (or (not (is-Cons!28769 l!6611)) (not (is-Cons!28769 (t!209532 l!6611)))))))

(assert (=> d!710242 (= (tokensListTwoByTwoPredicateSeparableList!616 thiss!27932 l!6611 rules!4472) e!1565309)))

(declare-fun b!2467781 () Bool)

(declare-fun e!1565308 () Bool)

(assert (=> b!2467781 (= e!1565309 e!1565308)))

(declare-fun res!1045321 () Bool)

(assert (=> b!2467781 (=> (not res!1045321) (not e!1565308))))

(assert (=> b!2467781 (= res!1045321 (separableTokensPredicate!854 thiss!27932 (h!34170 l!6611) (h!34170 (t!209532 l!6611)) rules!4472))))

(declare-fun lt!882616 () Unit!42097)

(declare-fun Unit!42105 () Unit!42097)

(assert (=> b!2467781 (= lt!882616 Unit!42105)))

(assert (=> b!2467781 (> (size!22385 (charsOf!2819 (h!34170 (t!209532 l!6611)))) 0)))

(declare-fun lt!882617 () Unit!42097)

(declare-fun Unit!42106 () Unit!42097)

(assert (=> b!2467781 (= lt!882617 Unit!42106)))

(assert (=> b!2467781 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 (t!209532 l!6611)))))

(declare-fun lt!882613 () Unit!42097)

(declare-fun Unit!42107 () Unit!42097)

(assert (=> b!2467781 (= lt!882613 Unit!42107)))

(assert (=> b!2467781 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 l!6611))))

(declare-fun lt!882612 () Unit!42097)

(declare-fun lt!882618 () Unit!42097)

(assert (=> b!2467781 (= lt!882612 lt!882618)))

(assert (=> b!2467781 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 (t!209532 l!6611)))))

(assert (=> b!2467781 (= lt!882618 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 l!6611 (h!34170 (t!209532 l!6611))))))

(declare-fun lt!882614 () Unit!42097)

(declare-fun lt!882615 () Unit!42097)

(assert (=> b!2467781 (= lt!882614 lt!882615)))

(assert (=> b!2467781 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 l!6611))))

(assert (=> b!2467781 (= lt!882615 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 l!6611 (h!34170 l!6611)))))

(declare-fun b!2467782 () Bool)

(assert (=> b!2467782 (= e!1565308 (tokensListTwoByTwoPredicateSeparableList!616 thiss!27932 (Cons!28769 (h!34170 (t!209532 l!6611)) (t!209532 (t!209532 l!6611))) rules!4472))))

(assert (= (and d!710242 (not res!1045322)) b!2467781))

(assert (= (and b!2467781 res!1045321) b!2467782))

(declare-fun m!2836955 () Bool)

(assert (=> b!2467781 m!2836955))

(declare-fun m!2836957 () Bool)

(assert (=> b!2467781 m!2836957))

(declare-fun m!2836959 () Bool)

(assert (=> b!2467781 m!2836959))

(declare-fun m!2836961 () Bool)

(assert (=> b!2467781 m!2836961))

(declare-fun m!2836963 () Bool)

(assert (=> b!2467781 m!2836963))

(declare-fun m!2836965 () Bool)

(assert (=> b!2467781 m!2836965))

(declare-fun m!2836967 () Bool)

(assert (=> b!2467781 m!2836967))

(assert (=> b!2467781 m!2836957))

(declare-fun m!2836969 () Bool)

(assert (=> b!2467782 m!2836969))

(assert (=> b!2467595 d!710242))

(declare-fun d!710244 () Bool)

(declare-fun prefixMatchZipperSequence!719 (Regex!7268 BalanceConc!17998) Bool)

(declare-fun rulesRegex!977 (LexerInterface!4077 List!28870) Regex!7268)

(declare-fun ++!7137 (BalanceConc!17998 BalanceConc!17998) BalanceConc!17998)

(declare-fun singletonSeq!1986 (C!14694) BalanceConc!17998)

(declare-fun apply!6770 (BalanceConc!17998 Int) C!14694)

(assert (=> d!710244 (= (separableTokensPredicate!854 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!719 (rulesRegex!977 thiss!27932 rules!4472) (++!7137 (charsOf!2819 t1!67) (singletonSeq!1986 (apply!6770 (charsOf!2819 t2!67) 0))))))))

(declare-fun bs!466672 () Bool)

(assert (= bs!466672 d!710244))

(assert (=> bs!466672 m!2836735))

(declare-fun m!2836971 () Bool)

(assert (=> bs!466672 m!2836971))

(declare-fun m!2836973 () Bool)

(assert (=> bs!466672 m!2836973))

(declare-fun m!2836975 () Bool)

(assert (=> bs!466672 m!2836975))

(declare-fun m!2836977 () Bool)

(assert (=> bs!466672 m!2836977))

(declare-fun m!2836979 () Bool)

(assert (=> bs!466672 m!2836979))

(assert (=> bs!466672 m!2836973))

(declare-fun m!2836981 () Bool)

(assert (=> bs!466672 m!2836981))

(assert (=> bs!466672 m!2836979))

(assert (=> bs!466672 m!2836977))

(assert (=> bs!466672 m!2836971))

(assert (=> bs!466672 m!2836735))

(assert (=> bs!466672 m!2836981))

(assert (=> b!2467584 d!710244))

(declare-fun d!710246 () Bool)

(declare-fun c!393345 () Bool)

(assert (=> d!710246 (= c!393345 (is-IntegerValue!13998 (value!143087 t1!67)))))

(declare-fun e!1565311 () Bool)

(assert (=> d!710246 (= (inv!21 (value!143087 t1!67)) e!1565311)))

(declare-fun b!2467783 () Bool)

(declare-fun e!1565310 () Bool)

(assert (=> b!2467783 (= e!1565311 e!1565310)))

(declare-fun c!393346 () Bool)

(assert (=> b!2467783 (= c!393346 (is-IntegerValue!13999 (value!143087 t1!67)))))

(declare-fun b!2467784 () Bool)

(assert (=> b!2467784 (= e!1565311 (inv!16 (value!143087 t1!67)))))

(declare-fun b!2467785 () Bool)

(declare-fun e!1565312 () Bool)

(assert (=> b!2467785 (= e!1565312 (inv!15 (value!143087 t1!67)))))

(declare-fun b!2467786 () Bool)

(declare-fun res!1045323 () Bool)

(assert (=> b!2467786 (=> res!1045323 e!1565312)))

(assert (=> b!2467786 (= res!1045323 (not (is-IntegerValue!14000 (value!143087 t1!67))))))

(assert (=> b!2467786 (= e!1565310 e!1565312)))

(declare-fun b!2467787 () Bool)

(assert (=> b!2467787 (= e!1565310 (inv!17 (value!143087 t1!67)))))

(assert (= (and d!710246 c!393345) b!2467784))

(assert (= (and d!710246 (not c!393345)) b!2467783))

(assert (= (and b!2467783 c!393346) b!2467787))

(assert (= (and b!2467783 (not c!393346)) b!2467786))

(assert (= (and b!2467786 (not res!1045323)) b!2467785))

(declare-fun m!2836983 () Bool)

(assert (=> b!2467784 m!2836983))

(declare-fun m!2836985 () Bool)

(assert (=> b!2467785 m!2836985))

(declare-fun m!2836987 () Bool)

(assert (=> b!2467787 m!2836987))

(assert (=> b!2467605 d!710246))

(declare-fun d!710248 () Bool)

(assert (=> d!710248 (= (inv!38852 (tag!4970 (rule!6838 t1!67))) (= (mod (str.len (value!143086 (tag!4970 (rule!6838 t1!67)))) 2) 0))))

(assert (=> b!2467594 d!710248))

(declare-fun d!710250 () Bool)

(declare-fun res!1045326 () Bool)

(declare-fun e!1565315 () Bool)

(assert (=> d!710250 (=> (not res!1045326) (not e!1565315))))

(declare-fun semiInverseModEq!1841 (Int Int) Bool)

(assert (=> d!710250 (= res!1045326 (semiInverseModEq!1841 (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toValue!6340 (transformation!4480 (rule!6838 t1!67)))))))

(assert (=> d!710250 (= (inv!38856 (transformation!4480 (rule!6838 t1!67))) e!1565315)))

(declare-fun b!2467790 () Bool)

(declare-fun equivClasses!1752 (Int Int) Bool)

(assert (=> b!2467790 (= e!1565315 (equivClasses!1752 (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toValue!6340 (transformation!4480 (rule!6838 t1!67)))))))

(assert (= (and d!710250 res!1045326) b!2467790))

(declare-fun m!2836989 () Bool)

(assert (=> d!710250 m!2836989))

(declare-fun m!2836991 () Bool)

(assert (=> b!2467790 m!2836991))

(assert (=> b!2467594 d!710250))

(declare-fun d!710252 () Bool)

(declare-fun lt!882621 () Token!8430)

(declare-fun contains!4910 (List!28869 Token!8430) Bool)

(assert (=> d!710252 (contains!4910 lt!882530 lt!882621)))

(declare-fun e!1565320 () Token!8430)

(assert (=> d!710252 (= lt!882621 e!1565320)))

(declare-fun c!393349 () Bool)

(assert (=> d!710252 (= c!393349 (= lt!882529 0))))

(declare-fun e!1565321 () Bool)

(assert (=> d!710252 e!1565321))

(declare-fun res!1045329 () Bool)

(assert (=> d!710252 (=> (not res!1045329) (not e!1565321))))

(assert (=> d!710252 (= res!1045329 (<= 0 lt!882529))))

(assert (=> d!710252 (= (apply!6768 lt!882530 lt!882529) lt!882621)))

(declare-fun b!2467797 () Bool)

(assert (=> b!2467797 (= e!1565321 (< lt!882529 (size!22382 lt!882530)))))

(declare-fun b!2467798 () Bool)

(declare-fun head!5632 (List!28869) Token!8430)

(assert (=> b!2467798 (= e!1565320 (head!5632 lt!882530))))

(declare-fun b!2467799 () Bool)

(assert (=> b!2467799 (= e!1565320 (apply!6768 (tail!3913 lt!882530) (- lt!882529 1)))))

(assert (= (and d!710252 res!1045329) b!2467797))

(assert (= (and d!710252 c!393349) b!2467798))

(assert (= (and d!710252 (not c!393349)) b!2467799))

(declare-fun m!2836993 () Bool)

(assert (=> d!710252 m!2836993))

(assert (=> b!2467797 m!2836781))

(declare-fun m!2836995 () Bool)

(assert (=> b!2467798 m!2836995))

(declare-fun m!2836997 () Bool)

(assert (=> b!2467799 m!2836997))

(assert (=> b!2467799 m!2836997))

(declare-fun m!2836999 () Bool)

(assert (=> b!2467799 m!2836999))

(assert (=> b!2467583 d!710252))

(declare-fun d!710254 () Bool)

(declare-fun res!1045334 () Bool)

(declare-fun e!1565324 () Bool)

(assert (=> d!710254 (=> (not res!1045334) (not e!1565324))))

(declare-fun isEmpty!16714 (List!28868) Bool)

(assert (=> d!710254 (= res!1045334 (not (isEmpty!16714 (originalCharacters!5246 t2!67))))))

(assert (=> d!710254 (= (inv!38855 t2!67) e!1565324)))

(declare-fun b!2467804 () Bool)

(declare-fun res!1045335 () Bool)

(assert (=> b!2467804 (=> (not res!1045335) (not e!1565324))))

(declare-fun list!11126 (BalanceConc!17998) List!28868)

(declare-fun dynLambda!12343 (Int TokenValue!4666) BalanceConc!17998)

(assert (=> b!2467804 (= res!1045335 (= (originalCharacters!5246 t2!67) (list!11126 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (value!143087 t2!67)))))))

(declare-fun b!2467805 () Bool)

(declare-fun size!22386 (List!28868) Int)

(assert (=> b!2467805 (= e!1565324 (= (size!22381 t2!67) (size!22386 (originalCharacters!5246 t2!67))))))

(assert (= (and d!710254 res!1045334) b!2467804))

(assert (= (and b!2467804 res!1045335) b!2467805))

(declare-fun b_lambda!75635 () Bool)

(assert (=> (not b_lambda!75635) (not b!2467804)))

(declare-fun t!209559 () Bool)

(declare-fun tb!139481 () Bool)

(assert (=> (and b!2467591 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 t2!67)))) t!209559) tb!139481))

(declare-fun b!2467810 () Bool)

(declare-fun e!1565327 () Bool)

(declare-fun tp!787478 () Bool)

(declare-fun inv!38859 (Conc!9192) Bool)

(assert (=> b!2467810 (= e!1565327 (and (inv!38859 (c!393332 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (value!143087 t2!67)))) tp!787478))))

(declare-fun result!172150 () Bool)

(declare-fun inv!38860 (BalanceConc!17998) Bool)

(assert (=> tb!139481 (= result!172150 (and (inv!38860 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (value!143087 t2!67))) e!1565327))))

(assert (= tb!139481 b!2467810))

(declare-fun m!2837001 () Bool)

(assert (=> b!2467810 m!2837001))

(declare-fun m!2837003 () Bool)

(assert (=> tb!139481 m!2837003))

(assert (=> b!2467804 t!209559))

(declare-fun b_and!186757 () Bool)

(assert (= b_and!186711 (and (=> t!209559 result!172150) b_and!186757)))

(declare-fun t!209561 () Bool)

(declare-fun tb!139483 () Bool)

(assert (=> (and b!2467600 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toChars!6199 (transformation!4480 (rule!6838 t2!67)))) t!209561) tb!139483))

(declare-fun result!172154 () Bool)

(assert (= result!172154 result!172150))

(assert (=> b!2467804 t!209561))

(declare-fun b_and!186759 () Bool)

(assert (= b_and!186715 (and (=> t!209561 result!172154) b_and!186759)))

(declare-fun t!209563 () Bool)

(declare-fun tb!139485 () Bool)

(assert (=> (and b!2467607 (= (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toChars!6199 (transformation!4480 (rule!6838 t2!67)))) t!209563) tb!139485))

(declare-fun result!172156 () Bool)

(assert (= result!172156 result!172150))

(assert (=> b!2467804 t!209563))

(declare-fun b_and!186761 () Bool)

(assert (= b_and!186719 (and (=> t!209563 result!172156) b_and!186761)))

(declare-fun t!209565 () Bool)

(declare-fun tb!139487 () Bool)

(assert (=> (and b!2467609 (= (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toChars!6199 (transformation!4480 (rule!6838 t2!67)))) t!209565) tb!139487))

(declare-fun result!172158 () Bool)

(assert (= result!172158 result!172150))

(assert (=> b!2467804 t!209565))

(declare-fun b_and!186763 () Bool)

(assert (= b_and!186723 (and (=> t!209565 result!172158) b_and!186763)))

(declare-fun m!2837005 () Bool)

(assert (=> d!710254 m!2837005))

(declare-fun m!2837007 () Bool)

(assert (=> b!2467804 m!2837007))

(assert (=> b!2467804 m!2837007))

(declare-fun m!2837009 () Bool)

(assert (=> b!2467804 m!2837009))

(declare-fun m!2837011 () Bool)

(assert (=> b!2467805 m!2837011))

(assert (=> start!240604 d!710254))

(declare-fun d!710256 () Bool)

(declare-fun res!1045336 () Bool)

(declare-fun e!1565328 () Bool)

(assert (=> d!710256 (=> (not res!1045336) (not e!1565328))))

(assert (=> d!710256 (= res!1045336 (not (isEmpty!16714 (originalCharacters!5246 t1!67))))))

(assert (=> d!710256 (= (inv!38855 t1!67) e!1565328)))

(declare-fun b!2467811 () Bool)

(declare-fun res!1045337 () Bool)

(assert (=> b!2467811 (=> (not res!1045337) (not e!1565328))))

(assert (=> b!2467811 (= res!1045337 (= (originalCharacters!5246 t1!67) (list!11126 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (value!143087 t1!67)))))))

(declare-fun b!2467812 () Bool)

(assert (=> b!2467812 (= e!1565328 (= (size!22381 t1!67) (size!22386 (originalCharacters!5246 t1!67))))))

(assert (= (and d!710256 res!1045336) b!2467811))

(assert (= (and b!2467811 res!1045337) b!2467812))

(declare-fun b_lambda!75637 () Bool)

(assert (=> (not b_lambda!75637) (not b!2467811)))

(declare-fun tb!139489 () Bool)

(declare-fun t!209567 () Bool)

(assert (=> (and b!2467591 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 t1!67)))) t!209567) tb!139489))

(declare-fun b!2467813 () Bool)

(declare-fun e!1565329 () Bool)

(declare-fun tp!787479 () Bool)

(assert (=> b!2467813 (= e!1565329 (and (inv!38859 (c!393332 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (value!143087 t1!67)))) tp!787479))))

(declare-fun result!172160 () Bool)

(assert (=> tb!139489 (= result!172160 (and (inv!38860 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (value!143087 t1!67))) e!1565329))))

(assert (= tb!139489 b!2467813))

(declare-fun m!2837013 () Bool)

(assert (=> b!2467813 m!2837013))

(declare-fun m!2837015 () Bool)

(assert (=> tb!139489 m!2837015))

(assert (=> b!2467811 t!209567))

(declare-fun b_and!186765 () Bool)

(assert (= b_and!186757 (and (=> t!209567 result!172160) b_and!186765)))

(declare-fun t!209569 () Bool)

(declare-fun tb!139491 () Bool)

(assert (=> (and b!2467600 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toChars!6199 (transformation!4480 (rule!6838 t1!67)))) t!209569) tb!139491))

(declare-fun result!172162 () Bool)

(assert (= result!172162 result!172160))

(assert (=> b!2467811 t!209569))

(declare-fun b_and!186767 () Bool)

(assert (= b_and!186759 (and (=> t!209569 result!172162) b_and!186767)))

(declare-fun t!209571 () Bool)

(declare-fun tb!139493 () Bool)

(assert (=> (and b!2467607 (= (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toChars!6199 (transformation!4480 (rule!6838 t1!67)))) t!209571) tb!139493))

(declare-fun result!172164 () Bool)

(assert (= result!172164 result!172160))

(assert (=> b!2467811 t!209571))

(declare-fun b_and!186769 () Bool)

(assert (= b_and!186761 (and (=> t!209571 result!172164) b_and!186769)))

(declare-fun t!209573 () Bool)

(declare-fun tb!139495 () Bool)

(assert (=> (and b!2467609 (= (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toChars!6199 (transformation!4480 (rule!6838 t1!67)))) t!209573) tb!139495))

(declare-fun result!172166 () Bool)

(assert (= result!172166 result!172160))

(assert (=> b!2467811 t!209573))

(declare-fun b_and!186771 () Bool)

(assert (= b_and!186763 (and (=> t!209573 result!172166) b_and!186771)))

(declare-fun m!2837017 () Bool)

(assert (=> d!710256 m!2837017))

(declare-fun m!2837019 () Bool)

(assert (=> b!2467811 m!2837019))

(assert (=> b!2467811 m!2837019))

(declare-fun m!2837021 () Bool)

(assert (=> b!2467811 m!2837021))

(declare-fun m!2837023 () Bool)

(assert (=> b!2467812 m!2837023))

(assert (=> start!240604 d!710256))

(declare-fun bs!466673 () Bool)

(declare-fun d!710258 () Bool)

(assert (= bs!466673 (and d!710258 d!710220)))

(declare-fun lambda!93245 () Int)

(assert (=> bs!466673 (= lambda!93245 lambda!93244)))

(declare-fun b!2467818 () Bool)

(declare-fun e!1565334 () Bool)

(assert (=> b!2467818 (= e!1565334 true)))

(declare-fun b!2467817 () Bool)

(declare-fun e!1565333 () Bool)

(assert (=> b!2467817 (= e!1565333 e!1565334)))

(declare-fun b!2467816 () Bool)

(declare-fun e!1565332 () Bool)

(assert (=> b!2467816 (= e!1565332 e!1565333)))

(assert (=> d!710258 e!1565332))

(assert (= b!2467817 b!2467818))

(assert (= b!2467816 b!2467817))

(assert (= (and d!710258 (is-Cons!28770 rules!4472)) b!2467816))

(assert (=> b!2467818 (< (dynLambda!12340 order!15573 (toValue!6340 (transformation!4480 (h!34171 rules!4472)))) (dynLambda!12341 order!15575 lambda!93245))))

(assert (=> b!2467818 (< (dynLambda!12342 order!15577 (toChars!6199 (transformation!4480 (h!34171 rules!4472)))) (dynLambda!12341 order!15575 lambda!93245))))

(assert (=> d!710258 true))

(declare-fun lt!882622 () Bool)

(assert (=> d!710258 (= lt!882622 (forall!5897 l!6611 lambda!93245))))

(declare-fun e!1565331 () Bool)

(assert (=> d!710258 (= lt!882622 e!1565331)))

(declare-fun res!1045338 () Bool)

(assert (=> d!710258 (=> res!1045338 e!1565331)))

(assert (=> d!710258 (= res!1045338 (not (is-Cons!28769 l!6611)))))

(assert (=> d!710258 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710258 (= (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 l!6611) lt!882622)))

(declare-fun b!2467814 () Bool)

(declare-fun e!1565330 () Bool)

(assert (=> b!2467814 (= e!1565331 e!1565330)))

(declare-fun res!1045339 () Bool)

(assert (=> b!2467814 (=> (not res!1045339) (not e!1565330))))

(assert (=> b!2467814 (= res!1045339 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 (h!34170 l!6611)))))

(declare-fun b!2467815 () Bool)

(assert (=> b!2467815 (= e!1565330 (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 (t!209532 l!6611)))))

(assert (= (and d!710258 (not res!1045338)) b!2467814))

(assert (= (and b!2467814 res!1045339) b!2467815))

(declare-fun m!2837025 () Bool)

(assert (=> d!710258 m!2837025))

(assert (=> d!710258 m!2836747))

(assert (=> b!2467814 m!2836965))

(declare-fun m!2837027 () Bool)

(assert (=> b!2467815 m!2837027))

(assert (=> b!2467593 d!710258))

(declare-fun d!710260 () Bool)

(declare-fun lt!882623 () Token!8430)

(assert (=> d!710260 (contains!4910 lt!882530 lt!882623)))

(declare-fun e!1565335 () Token!8430)

(assert (=> d!710260 (= lt!882623 e!1565335)))

(declare-fun c!393350 () Bool)

(assert (=> d!710260 (= c!393350 (= (- i!1803 1) 0))))

(declare-fun e!1565336 () Bool)

(assert (=> d!710260 e!1565336))

(declare-fun res!1045340 () Bool)

(assert (=> d!710260 (=> (not res!1045340) (not e!1565336))))

(assert (=> d!710260 (= res!1045340 (<= 0 (- i!1803 1)))))

(assert (=> d!710260 (= (apply!6768 lt!882530 (- i!1803 1)) lt!882623)))

(declare-fun b!2467819 () Bool)

(assert (=> b!2467819 (= e!1565336 (< (- i!1803 1) (size!22382 lt!882530)))))

(declare-fun b!2467820 () Bool)

(assert (=> b!2467820 (= e!1565335 (head!5632 lt!882530))))

(declare-fun b!2467821 () Bool)

(assert (=> b!2467821 (= e!1565335 (apply!6768 (tail!3913 lt!882530) (- (- i!1803 1) 1)))))

(assert (= (and d!710260 res!1045340) b!2467819))

(assert (= (and d!710260 c!393350) b!2467820))

(assert (= (and d!710260 (not c!393350)) b!2467821))

(declare-fun m!2837029 () Bool)

(assert (=> d!710260 m!2837029))

(assert (=> b!2467819 m!2836781))

(assert (=> b!2467820 m!2836995))

(assert (=> b!2467821 m!2836997))

(assert (=> b!2467821 m!2836997))

(declare-fun m!2837031 () Bool)

(assert (=> b!2467821 m!2837031))

(assert (=> b!2467603 d!710260))

(declare-fun d!710262 () Bool)

(declare-fun res!1045341 () Bool)

(declare-fun e!1565337 () Bool)

(assert (=> d!710262 (=> (not res!1045341) (not e!1565337))))

(assert (=> d!710262 (= res!1045341 (not (isEmpty!16714 (originalCharacters!5246 (h!34170 l!6611)))))))

(assert (=> d!710262 (= (inv!38855 (h!34170 l!6611)) e!1565337)))

(declare-fun b!2467822 () Bool)

(declare-fun res!1045342 () Bool)

(assert (=> b!2467822 (=> (not res!1045342) (not e!1565337))))

(assert (=> b!2467822 (= res!1045342 (= (originalCharacters!5246 (h!34170 l!6611)) (list!11126 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (value!143087 (h!34170 l!6611))))))))

(declare-fun b!2467823 () Bool)

(assert (=> b!2467823 (= e!1565337 (= (size!22381 (h!34170 l!6611)) (size!22386 (originalCharacters!5246 (h!34170 l!6611)))))))

(assert (= (and d!710262 res!1045341) b!2467822))

(assert (= (and b!2467822 res!1045342) b!2467823))

(declare-fun b_lambda!75639 () Bool)

(assert (=> (not b_lambda!75639) (not b!2467822)))

(declare-fun tb!139497 () Bool)

(declare-fun t!209575 () Bool)

(assert (=> (and b!2467591 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611))))) t!209575) tb!139497))

(declare-fun b!2467824 () Bool)

(declare-fun e!1565338 () Bool)

(declare-fun tp!787480 () Bool)

(assert (=> b!2467824 (= e!1565338 (and (inv!38859 (c!393332 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (value!143087 (h!34170 l!6611))))) tp!787480))))

(declare-fun result!172168 () Bool)

(assert (=> tb!139497 (= result!172168 (and (inv!38860 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (value!143087 (h!34170 l!6611)))) e!1565338))))

(assert (= tb!139497 b!2467824))

(declare-fun m!2837033 () Bool)

(assert (=> b!2467824 m!2837033))

(declare-fun m!2837035 () Bool)

(assert (=> tb!139497 m!2837035))

(assert (=> b!2467822 t!209575))

(declare-fun b_and!186773 () Bool)

(assert (= b_and!186765 (and (=> t!209575 result!172168) b_and!186773)))

(declare-fun t!209577 () Bool)

(declare-fun tb!139499 () Bool)

(assert (=> (and b!2467600 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611))))) t!209577) tb!139499))

(declare-fun result!172170 () Bool)

(assert (= result!172170 result!172168))

(assert (=> b!2467822 t!209577))

(declare-fun b_and!186775 () Bool)

(assert (= b_and!186767 (and (=> t!209577 result!172170) b_and!186775)))

(declare-fun t!209579 () Bool)

(declare-fun tb!139501 () Bool)

(assert (=> (and b!2467607 (= (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611))))) t!209579) tb!139501))

(declare-fun result!172172 () Bool)

(assert (= result!172172 result!172168))

(assert (=> b!2467822 t!209579))

(declare-fun b_and!186777 () Bool)

(assert (= b_and!186769 (and (=> t!209579 result!172172) b_and!186777)))

(declare-fun tb!139503 () Bool)

(declare-fun t!209581 () Bool)

(assert (=> (and b!2467609 (= (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611))))) t!209581) tb!139503))

(declare-fun result!172174 () Bool)

(assert (= result!172174 result!172168))

(assert (=> b!2467822 t!209581))

(declare-fun b_and!186779 () Bool)

(assert (= b_and!186771 (and (=> t!209581 result!172174) b_and!186779)))

(declare-fun m!2837037 () Bool)

(assert (=> d!710262 m!2837037))

(declare-fun m!2837039 () Bool)

(assert (=> b!2467822 m!2837039))

(assert (=> b!2467822 m!2837039))

(declare-fun m!2837041 () Bool)

(assert (=> b!2467822 m!2837041))

(declare-fun m!2837043 () Bool)

(assert (=> b!2467823 m!2837043))

(assert (=> b!2467592 d!710262))

(declare-fun d!710264 () Bool)

(declare-fun lt!882624 () Token!8430)

(assert (=> d!710264 (contains!4910 l!6611 lt!882624)))

(declare-fun e!1565339 () Token!8430)

(assert (=> d!710264 (= lt!882624 e!1565339)))

(declare-fun c!393351 () Bool)

(assert (=> d!710264 (= c!393351 (= i!1803 0))))

(declare-fun e!1565340 () Bool)

(assert (=> d!710264 e!1565340))

(declare-fun res!1045343 () Bool)

(assert (=> d!710264 (=> (not res!1045343) (not e!1565340))))

(assert (=> d!710264 (= res!1045343 (<= 0 i!1803))))

(assert (=> d!710264 (= (apply!6768 l!6611 i!1803) lt!882624)))

(declare-fun b!2467825 () Bool)

(assert (=> b!2467825 (= e!1565340 (< i!1803 (size!22382 l!6611)))))

(declare-fun b!2467826 () Bool)

(assert (=> b!2467826 (= e!1565339 (head!5632 l!6611))))

(declare-fun b!2467827 () Bool)

(assert (=> b!2467827 (= e!1565339 (apply!6768 (tail!3913 l!6611) (- i!1803 1)))))

(assert (= (and d!710264 res!1045343) b!2467825))

(assert (= (and d!710264 c!393351) b!2467826))

(assert (= (and d!710264 (not c!393351)) b!2467827))

(declare-fun m!2837045 () Bool)

(assert (=> d!710264 m!2837045))

(assert (=> b!2467825 m!2836773))

(declare-fun m!2837047 () Bool)

(assert (=> b!2467826 m!2837047))

(assert (=> b!2467827 m!2836721))

(assert (=> b!2467827 m!2836721))

(declare-fun m!2837049 () Bool)

(assert (=> b!2467827 m!2837049))

(assert (=> b!2467612 d!710264))

(declare-fun d!710266 () Bool)

(declare-fun lt!882627 () Int)

(assert (=> d!710266 (>= lt!882627 0)))

(declare-fun e!1565343 () Int)

(assert (=> d!710266 (= lt!882627 e!1565343)))

(declare-fun c!393354 () Bool)

(assert (=> d!710266 (= c!393354 (is-Nil!28769 l!6611))))

(assert (=> d!710266 (= (size!22382 l!6611) lt!882627)))

(declare-fun b!2467832 () Bool)

(assert (=> b!2467832 (= e!1565343 0)))

(declare-fun b!2467833 () Bool)

(assert (=> b!2467833 (= e!1565343 (+ 1 (size!22382 (t!209532 l!6611))))))

(assert (= (and d!710266 c!393354) b!2467832))

(assert (= (and d!710266 (not c!393354)) b!2467833))

(declare-fun m!2837051 () Bool)

(assert (=> b!2467833 m!2837051))

(assert (=> b!2467601 d!710266))

(declare-fun d!710268 () Bool)

(declare-fun lt!882628 () Token!8430)

(assert (=> d!710268 (contains!4910 l!6611 lt!882628)))

(declare-fun e!1565344 () Token!8430)

(assert (=> d!710268 (= lt!882628 e!1565344)))

(declare-fun c!393355 () Bool)

(assert (=> d!710268 (= c!393355 (= (+ 1 i!1803) 0))))

(declare-fun e!1565345 () Bool)

(assert (=> d!710268 e!1565345))

(declare-fun res!1045344 () Bool)

(assert (=> d!710268 (=> (not res!1045344) (not e!1565345))))

(assert (=> d!710268 (= res!1045344 (<= 0 (+ 1 i!1803)))))

(assert (=> d!710268 (= (apply!6768 l!6611 (+ 1 i!1803)) lt!882628)))

(declare-fun b!2467834 () Bool)

(assert (=> b!2467834 (= e!1565345 (< (+ 1 i!1803) (size!22382 l!6611)))))

(declare-fun b!2467835 () Bool)

(assert (=> b!2467835 (= e!1565344 (head!5632 l!6611))))

(declare-fun b!2467836 () Bool)

(assert (=> b!2467836 (= e!1565344 (apply!6768 (tail!3913 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!710268 res!1045344) b!2467834))

(assert (= (and d!710268 c!393355) b!2467835))

(assert (= (and d!710268 (not c!393355)) b!2467836))

(declare-fun m!2837053 () Bool)

(assert (=> d!710268 m!2837053))

(assert (=> b!2467834 m!2836773))

(assert (=> b!2467835 m!2837047))

(assert (=> b!2467836 m!2836721))

(assert (=> b!2467836 m!2836721))

(declare-fun m!2837055 () Bool)

(assert (=> b!2467836 m!2837055))

(assert (=> b!2467590 d!710268))

(declare-fun d!710270 () Bool)

(assert (=> d!710270 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882631 () Unit!42097)

(declare-fun choose!14576 (LexerInterface!4077 List!28870 List!28869 Token!8430) Unit!42097)

(assert (=> d!710270 (= lt!882631 (choose!14576 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> d!710270 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710270 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 l!6611 t1!67) lt!882631)))

(declare-fun bs!466674 () Bool)

(assert (= bs!466674 d!710270))

(assert (=> bs!466674 m!2836741))

(declare-fun m!2837057 () Bool)

(assert (=> bs!466674 m!2837057))

(assert (=> bs!466674 m!2836747))

(assert (=> b!2467611 d!710270))

(declare-fun e!1565378 () Bool)

(declare-fun b!2467893 () Bool)

(assert (=> b!2467893 (= e!1565378 (separableTokensPredicate!854 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun lt!882644 () Unit!42097)

(declare-fun lt!882647 () Unit!42097)

(assert (=> b!2467893 (= lt!882644 lt!882647)))

(assert (=> b!2467893 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t2!67)))

(assert (=> b!2467893 (= lt!882647 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 t2!67))))

(declare-fun e!1565379 () Bool)

(assert (=> b!2467893 e!1565379))

(declare-fun res!1045373 () Bool)

(assert (=> b!2467893 (=> (not res!1045373) (not e!1565379))))

(assert (=> b!2467893 (= res!1045373 (is-Lexer!4075 thiss!27932))))

(declare-fun lt!882646 () Unit!42097)

(declare-fun lt!882645 () Unit!42097)

(assert (=> b!2467893 (= lt!882646 lt!882645)))

(assert (=> b!2467893 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t1!67)))

(assert (=> b!2467893 (= lt!882645 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 t1!67))))

(declare-fun b!2467894 () Bool)

(declare-fun res!1045371 () Bool)

(assert (=> b!2467894 (=> (not res!1045371) (not e!1565378))))

(assert (=> b!2467894 (= res!1045371 (rulesInvariant!3577 thiss!27932 rules!4472))))

(declare-fun b!2467895 () Bool)

(declare-fun res!1045370 () Bool)

(assert (=> b!2467895 (=> (not res!1045370) (not e!1565379))))

(assert (=> b!2467895 (= res!1045370 (rulesInvariant!3577 thiss!27932 rules!4472))))

(declare-fun b!2467896 () Bool)

(declare-fun res!1045368 () Bool)

(assert (=> b!2467896 (=> (not res!1045368) (not e!1565379))))

(assert (=> b!2467896 (= res!1045368 (contains!4910 lt!882530 t2!67))))

(declare-fun d!710272 () Bool)

(assert (=> d!710272 e!1565378))

(declare-fun res!1045374 () Bool)

(assert (=> d!710272 (=> (not res!1045374) (not e!1565378))))

(assert (=> d!710272 (= res!1045374 (is-Lexer!4075 thiss!27932))))

(declare-fun lt!882643 () Unit!42097)

(declare-fun choose!14577 (LexerInterface!4077 List!28869 List!28870 Token!8430 Token!8430 Int) Unit!42097)

(assert (=> d!710272 (= lt!882643 (choose!14577 thiss!27932 lt!882530 rules!4472 t1!67 t2!67 (- i!1803 1)))))

(assert (=> d!710272 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710272 (= (tokensListTwoByTwoPredicateInstantiateSeparableTokens!7 thiss!27932 lt!882530 rules!4472 t1!67 t2!67 (- i!1803 1)) lt!882643)))

(declare-fun b!2467897 () Bool)

(declare-fun res!1045369 () Bool)

(assert (=> b!2467897 (=> (not res!1045369) (not e!1565378))))

(assert (=> b!2467897 (= res!1045369 (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 lt!882530))))

(declare-fun b!2467898 () Bool)

(assert (=> b!2467898 (= e!1565379 (rulesProduceEachTokenIndividuallyList!1393 thiss!27932 rules!4472 lt!882530))))

(declare-fun b!2467899 () Bool)

(declare-fun res!1045372 () Bool)

(assert (=> b!2467899 (=> (not res!1045372) (not e!1565378))))

(assert (=> b!2467899 (= res!1045372 (contains!4910 lt!882530 t1!67))))

(assert (= (and d!710272 res!1045374) b!2467894))

(assert (= (and b!2467894 res!1045371) b!2467899))

(assert (= (and b!2467899 res!1045372) b!2467897))

(assert (= (and b!2467897 res!1045369) b!2467893))

(assert (= (and b!2467893 res!1045373) b!2467895))

(assert (= (and b!2467895 res!1045370) b!2467896))

(assert (= (and b!2467896 res!1045368) b!2467898))

(declare-fun m!2837089 () Bool)

(assert (=> b!2467899 m!2837089))

(assert (=> b!2467893 m!2836731))

(assert (=> b!2467893 m!2836779))

(assert (=> b!2467893 m!2836733))

(assert (=> b!2467893 m!2836741))

(assert (=> b!2467893 m!2836739))

(declare-fun m!2837091 () Bool)

(assert (=> b!2467896 m!2837091))

(assert (=> b!2467898 m!2836719))

(declare-fun m!2837093 () Bool)

(assert (=> d!710272 m!2837093))

(assert (=> d!710272 m!2836747))

(assert (=> b!2467894 m!2836775))

(assert (=> b!2467895 m!2836775))

(assert (=> b!2467897 m!2836719))

(assert (=> b!2467611 d!710272))

(declare-fun d!710290 () Bool)

(assert (=> d!710290 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t2!67)))

(declare-fun lt!882651 () Unit!42097)

(assert (=> d!710290 (= lt!882651 (choose!14576 thiss!27932 rules!4472 l!6611 t2!67))))

(assert (=> d!710290 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710290 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 l!6611 t2!67) lt!882651)))

(declare-fun bs!466676 () Bool)

(assert (= bs!466676 d!710290))

(assert (=> bs!466676 m!2836739))

(declare-fun m!2837097 () Bool)

(assert (=> bs!466676 m!2837097))

(assert (=> bs!466676 m!2836747))

(assert (=> b!2467611 d!710290))

(declare-fun d!710294 () Bool)

(assert (=> d!710294 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t2!67)))

(declare-fun lt!882653 () Unit!42097)

(assert (=> d!710294 (= lt!882653 (choose!14576 thiss!27932 rules!4472 lt!882530 t2!67))))

(assert (=> d!710294 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710294 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 t2!67) lt!882653)))

(declare-fun bs!466678 () Bool)

(assert (= bs!466678 d!710294))

(assert (=> bs!466678 m!2836739))

(declare-fun m!2837101 () Bool)

(assert (=> bs!466678 m!2837101))

(assert (=> bs!466678 m!2836747))

(assert (=> b!2467611 d!710294))

(declare-fun d!710298 () Bool)

(assert (=> d!710298 (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882654 () Unit!42097)

(assert (=> d!710298 (= lt!882654 (choose!14576 thiss!27932 rules!4472 lt!882530 t1!67))))

(assert (=> d!710298 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710298 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!670 thiss!27932 rules!4472 lt!882530 t1!67) lt!882654)))

(declare-fun bs!466679 () Bool)

(assert (= bs!466679 d!710298))

(assert (=> bs!466679 m!2836741))

(declare-fun m!2837103 () Bool)

(assert (=> bs!466679 m!2837103))

(assert (=> bs!466679 m!2836747))

(assert (=> b!2467611 d!710298))

(declare-fun d!710300 () Bool)

(declare-fun lt!882657 () BalanceConc!17998)

(assert (=> d!710300 (= (list!11126 lt!882657) (originalCharacters!5246 t2!67))))

(assert (=> d!710300 (= lt!882657 (dynLambda!12343 (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (value!143087 t2!67)))))

(assert (=> d!710300 (= (charsOf!2819 t2!67) lt!882657)))

(declare-fun b_lambda!75641 () Bool)

(assert (=> (not b_lambda!75641) (not d!710300)))

(assert (=> d!710300 t!209559))

(declare-fun b_and!186781 () Bool)

(assert (= b_and!186773 (and (=> t!209559 result!172150) b_and!186781)))

(assert (=> d!710300 t!209561))

(declare-fun b_and!186783 () Bool)

(assert (= b_and!186775 (and (=> t!209561 result!172154) b_and!186783)))

(assert (=> d!710300 t!209563))

(declare-fun b_and!186785 () Bool)

(assert (= b_and!186777 (and (=> t!209563 result!172156) b_and!186785)))

(assert (=> d!710300 t!209565))

(declare-fun b_and!186787 () Bool)

(assert (= b_and!186779 (and (=> t!209565 result!172158) b_and!186787)))

(declare-fun m!2837105 () Bool)

(assert (=> d!710300 m!2837105))

(assert (=> d!710300 m!2837007))

(assert (=> b!2467611 d!710300))

(declare-fun d!710302 () Bool)

(declare-fun lt!882662 () Bool)

(declare-fun e!1565385 () Bool)

(assert (=> d!710302 (= lt!882662 e!1565385)))

(declare-fun res!1045381 () Bool)

(assert (=> d!710302 (=> (not res!1045381) (not e!1565385))))

(declare-datatypes ((IArray!18393 0))(
  ( (IArray!18394 (innerList!9254 List!28869)) )
))
(declare-datatypes ((Conc!9194 0))(
  ( (Node!9194 (left!22081 Conc!9194) (right!22411 Conc!9194) (csize!18618 Int) (cheight!9405 Int)) (Leaf!13742 (xs!12174 IArray!18393) (csize!18619 Int)) (Empty!9194) )
))
(declare-datatypes ((BalanceConc!18002 0))(
  ( (BalanceConc!18003 (c!393371 Conc!9194)) )
))
(declare-fun list!11127 (BalanceConc!18002) List!28869)

(declare-datatypes ((tuple2!28236 0))(
  ( (tuple2!28237 (_1!16659 BalanceConc!18002) (_2!16659 BalanceConc!17998)) )
))
(declare-fun lex!1858 (LexerInterface!4077 List!28870 BalanceConc!17998) tuple2!28236)

(declare-fun print!1580 (LexerInterface!4077 BalanceConc!18002) BalanceConc!17998)

(declare-fun singletonSeq!1987 (Token!8430) BalanceConc!18002)

(assert (=> d!710302 (= res!1045381 (= (list!11127 (_1!16659 (lex!1858 thiss!27932 rules!4472 (print!1580 thiss!27932 (singletonSeq!1987 t1!67))))) (list!11127 (singletonSeq!1987 t1!67))))))

(declare-fun e!1565384 () Bool)

(assert (=> d!710302 (= lt!882662 e!1565384)))

(declare-fun res!1045383 () Bool)

(assert (=> d!710302 (=> (not res!1045383) (not e!1565384))))

(declare-fun lt!882663 () tuple2!28236)

(declare-fun size!22387 (BalanceConc!18002) Int)

(assert (=> d!710302 (= res!1045383 (= (size!22387 (_1!16659 lt!882663)) 1))))

(assert (=> d!710302 (= lt!882663 (lex!1858 thiss!27932 rules!4472 (print!1580 thiss!27932 (singletonSeq!1987 t1!67))))))

(assert (=> d!710302 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710302 (= (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t1!67) lt!882662)))

(declare-fun b!2467906 () Bool)

(declare-fun res!1045382 () Bool)

(assert (=> b!2467906 (=> (not res!1045382) (not e!1565384))))

(declare-fun apply!6771 (BalanceConc!18002 Int) Token!8430)

(assert (=> b!2467906 (= res!1045382 (= (apply!6771 (_1!16659 lt!882663) 0) t1!67))))

(declare-fun b!2467907 () Bool)

(assert (=> b!2467907 (= e!1565384 (isEmpty!16711 (_2!16659 lt!882663)))))

(declare-fun b!2467908 () Bool)

(assert (=> b!2467908 (= e!1565385 (isEmpty!16711 (_2!16659 (lex!1858 thiss!27932 rules!4472 (print!1580 thiss!27932 (singletonSeq!1987 t1!67))))))))

(assert (= (and d!710302 res!1045383) b!2467906))

(assert (= (and b!2467906 res!1045382) b!2467907))

(assert (= (and d!710302 res!1045381) b!2467908))

(declare-fun m!2837107 () Bool)

(assert (=> d!710302 m!2837107))

(declare-fun m!2837109 () Bool)

(assert (=> d!710302 m!2837109))

(declare-fun m!2837111 () Bool)

(assert (=> d!710302 m!2837111))

(declare-fun m!2837113 () Bool)

(assert (=> d!710302 m!2837113))

(assert (=> d!710302 m!2837109))

(assert (=> d!710302 m!2837113))

(declare-fun m!2837115 () Bool)

(assert (=> d!710302 m!2837115))

(assert (=> d!710302 m!2837113))

(assert (=> d!710302 m!2836747))

(declare-fun m!2837117 () Bool)

(assert (=> d!710302 m!2837117))

(declare-fun m!2837119 () Bool)

(assert (=> b!2467906 m!2837119))

(declare-fun m!2837121 () Bool)

(assert (=> b!2467907 m!2837121))

(assert (=> b!2467908 m!2837113))

(assert (=> b!2467908 m!2837113))

(assert (=> b!2467908 m!2837109))

(assert (=> b!2467908 m!2837109))

(assert (=> b!2467908 m!2837111))

(declare-fun m!2837123 () Bool)

(assert (=> b!2467908 m!2837123))

(assert (=> b!2467611 d!710302))

(declare-fun d!710304 () Bool)

(declare-fun lt!882666 () Bool)

(assert (=> d!710304 (= lt!882666 (isEmpty!16714 (list!11126 (charsOf!2819 t2!67))))))

(declare-fun isEmpty!16715 (Conc!9192) Bool)

(assert (=> d!710304 (= lt!882666 (isEmpty!16715 (c!393332 (charsOf!2819 t2!67))))))

(assert (=> d!710304 (= (isEmpty!16711 (charsOf!2819 t2!67)) lt!882666)))

(declare-fun bs!466680 () Bool)

(assert (= bs!466680 d!710304))

(assert (=> bs!466680 m!2836735))

(declare-fun m!2837125 () Bool)

(assert (=> bs!466680 m!2837125))

(assert (=> bs!466680 m!2837125))

(declare-fun m!2837127 () Bool)

(assert (=> bs!466680 m!2837127))

(declare-fun m!2837129 () Bool)

(assert (=> bs!466680 m!2837129))

(assert (=> b!2467611 d!710304))

(declare-fun d!710306 () Bool)

(declare-fun lt!882667 () Bool)

(declare-fun e!1565387 () Bool)

(assert (=> d!710306 (= lt!882667 e!1565387)))

(declare-fun res!1045384 () Bool)

(assert (=> d!710306 (=> (not res!1045384) (not e!1565387))))

(assert (=> d!710306 (= res!1045384 (= (list!11127 (_1!16659 (lex!1858 thiss!27932 rules!4472 (print!1580 thiss!27932 (singletonSeq!1987 t2!67))))) (list!11127 (singletonSeq!1987 t2!67))))))

(declare-fun e!1565386 () Bool)

(assert (=> d!710306 (= lt!882667 e!1565386)))

(declare-fun res!1045386 () Bool)

(assert (=> d!710306 (=> (not res!1045386) (not e!1565386))))

(declare-fun lt!882668 () tuple2!28236)

(assert (=> d!710306 (= res!1045386 (= (size!22387 (_1!16659 lt!882668)) 1))))

(assert (=> d!710306 (= lt!882668 (lex!1858 thiss!27932 rules!4472 (print!1580 thiss!27932 (singletonSeq!1987 t2!67))))))

(assert (=> d!710306 (not (isEmpty!16710 rules!4472))))

(assert (=> d!710306 (= (rulesProduceIndividualToken!1809 thiss!27932 rules!4472 t2!67) lt!882667)))

(declare-fun b!2467909 () Bool)

(declare-fun res!1045385 () Bool)

(assert (=> b!2467909 (=> (not res!1045385) (not e!1565386))))

(assert (=> b!2467909 (= res!1045385 (= (apply!6771 (_1!16659 lt!882668) 0) t2!67))))

(declare-fun b!2467910 () Bool)

(assert (=> b!2467910 (= e!1565386 (isEmpty!16711 (_2!16659 lt!882668)))))

(declare-fun b!2467911 () Bool)

(assert (=> b!2467911 (= e!1565387 (isEmpty!16711 (_2!16659 (lex!1858 thiss!27932 rules!4472 (print!1580 thiss!27932 (singletonSeq!1987 t2!67))))))))

(assert (= (and d!710306 res!1045386) b!2467909))

(assert (= (and b!2467909 res!1045385) b!2467910))

(assert (= (and d!710306 res!1045384) b!2467911))

(declare-fun m!2837131 () Bool)

(assert (=> d!710306 m!2837131))

(declare-fun m!2837133 () Bool)

(assert (=> d!710306 m!2837133))

(declare-fun m!2837135 () Bool)

(assert (=> d!710306 m!2837135))

(declare-fun m!2837137 () Bool)

(assert (=> d!710306 m!2837137))

(assert (=> d!710306 m!2837133))

(assert (=> d!710306 m!2837137))

(declare-fun m!2837139 () Bool)

(assert (=> d!710306 m!2837139))

(assert (=> d!710306 m!2837137))

(assert (=> d!710306 m!2836747))

(declare-fun m!2837141 () Bool)

(assert (=> d!710306 m!2837141))

(declare-fun m!2837143 () Bool)

(assert (=> b!2467909 m!2837143))

(declare-fun m!2837145 () Bool)

(assert (=> b!2467910 m!2837145))

(assert (=> b!2467911 m!2837137))

(assert (=> b!2467911 m!2837137))

(assert (=> b!2467911 m!2837133))

(assert (=> b!2467911 m!2837133))

(assert (=> b!2467911 m!2837135))

(declare-fun m!2837147 () Bool)

(assert (=> b!2467911 m!2837147))

(assert (=> b!2467611 d!710306))

(declare-fun d!710308 () Bool)

(assert (=> d!710308 (= (isEmpty!16710 rules!4472) (is-Nil!28770 rules!4472))))

(assert (=> b!2467589 d!710308))

(declare-fun d!710310 () Bool)

(assert (=> d!710310 (= (inv!38852 (tag!4970 (rule!6838 t2!67))) (= (mod (str.len (value!143086 (tag!4970 (rule!6838 t2!67)))) 2) 0))))

(assert (=> b!2467610 d!710310))

(declare-fun d!710312 () Bool)

(declare-fun res!1045387 () Bool)

(declare-fun e!1565388 () Bool)

(assert (=> d!710312 (=> (not res!1045387) (not e!1565388))))

(assert (=> d!710312 (= res!1045387 (semiInverseModEq!1841 (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toValue!6340 (transformation!4480 (rule!6838 t2!67)))))))

(assert (=> d!710312 (= (inv!38856 (transformation!4480 (rule!6838 t2!67))) e!1565388)))

(declare-fun b!2467912 () Bool)

(assert (=> b!2467912 (= e!1565388 (equivClasses!1752 (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toValue!6340 (transformation!4480 (rule!6838 t2!67)))))))

(assert (= (and d!710312 res!1045387) b!2467912))

(declare-fun m!2837149 () Bool)

(assert (=> d!710312 m!2837149))

(declare-fun m!2837151 () Bool)

(assert (=> b!2467912 m!2837151))

(assert (=> b!2467610 d!710312))

(declare-fun d!710314 () Bool)

(assert (=> d!710314 (= (inv!38852 (tag!4970 (h!34171 rules!4472))) (= (mod (str.len (value!143086 (tag!4970 (h!34171 rules!4472)))) 2) 0))))

(assert (=> b!2467599 d!710314))

(declare-fun d!710316 () Bool)

(declare-fun res!1045388 () Bool)

(declare-fun e!1565389 () Bool)

(assert (=> d!710316 (=> (not res!1045388) (not e!1565389))))

(assert (=> d!710316 (= res!1045388 (semiInverseModEq!1841 (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toValue!6340 (transformation!4480 (h!34171 rules!4472)))))))

(assert (=> d!710316 (= (inv!38856 (transformation!4480 (h!34171 rules!4472))) e!1565389)))

(declare-fun b!2467913 () Bool)

(assert (=> b!2467913 (= e!1565389 (equivClasses!1752 (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toValue!6340 (transformation!4480 (h!34171 rules!4472)))))))

(assert (= (and d!710316 res!1045388) b!2467913))

(declare-fun m!2837153 () Bool)

(assert (=> d!710316 m!2837153))

(declare-fun m!2837155 () Bool)

(assert (=> b!2467913 m!2837155))

(assert (=> b!2467599 d!710316))

(declare-fun d!710318 () Bool)

(declare-fun lt!882669 () Int)

(assert (=> d!710318 (>= lt!882669 0)))

(declare-fun e!1565390 () Int)

(assert (=> d!710318 (= lt!882669 e!1565390)))

(declare-fun c!393366 () Bool)

(assert (=> d!710318 (= c!393366 (is-Nil!28769 lt!882530))))

(assert (=> d!710318 (= (size!22382 lt!882530) lt!882669)))

(declare-fun b!2467914 () Bool)

(assert (=> b!2467914 (= e!1565390 0)))

(declare-fun b!2467915 () Bool)

(assert (=> b!2467915 (= e!1565390 (+ 1 (size!22382 (t!209532 lt!882530))))))

(assert (= (and d!710318 c!393366) b!2467914))

(assert (= (and d!710318 (not c!393366)) b!2467915))

(declare-fun m!2837157 () Bool)

(assert (=> b!2467915 m!2837157))

(assert (=> b!2467588 d!710318))

(declare-fun d!710320 () Bool)

(assert (=> d!710320 (= (inv!38852 (tag!4970 (rule!6838 (h!34170 l!6611)))) (= (mod (str.len (value!143086 (tag!4970 (rule!6838 (h!34170 l!6611))))) 2) 0))))

(assert (=> b!2467598 d!710320))

(declare-fun d!710322 () Bool)

(declare-fun res!1045389 () Bool)

(declare-fun e!1565391 () Bool)

(assert (=> d!710322 (=> (not res!1045389) (not e!1565391))))

(assert (=> d!710322 (= res!1045389 (semiInverseModEq!1841 (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toValue!6340 (transformation!4480 (rule!6838 (h!34170 l!6611))))))))

(assert (=> d!710322 (= (inv!38856 (transformation!4480 (rule!6838 (h!34170 l!6611)))) e!1565391)))

(declare-fun b!2467916 () Bool)

(assert (=> b!2467916 (= e!1565391 (equivClasses!1752 (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toValue!6340 (transformation!4480 (rule!6838 (h!34170 l!6611))))))))

(assert (= (and d!710322 res!1045389) b!2467916))

(declare-fun m!2837159 () Bool)

(assert (=> d!710322 m!2837159))

(declare-fun m!2837161 () Bool)

(assert (=> b!2467916 m!2837161))

(assert (=> b!2467598 d!710322))

(declare-fun d!710324 () Bool)

(declare-fun res!1045392 () Bool)

(declare-fun e!1565394 () Bool)

(assert (=> d!710324 (=> (not res!1045392) (not e!1565394))))

(declare-fun rulesValid!1665 (LexerInterface!4077 List!28870) Bool)

(assert (=> d!710324 (= res!1045392 (rulesValid!1665 thiss!27932 rules!4472))))

(assert (=> d!710324 (= (rulesInvariant!3577 thiss!27932 rules!4472) e!1565394)))

(declare-fun b!2467919 () Bool)

(declare-datatypes ((List!28875 0))(
  ( (Nil!28775) (Cons!28775 (h!34176 String!31628) (t!209614 List!28875)) )
))
(declare-fun noDuplicateTag!1663 (LexerInterface!4077 List!28870 List!28875) Bool)

(assert (=> b!2467919 (= e!1565394 (noDuplicateTag!1663 thiss!27932 rules!4472 Nil!28775))))

(assert (= (and d!710324 res!1045392) b!2467919))

(declare-fun m!2837163 () Bool)

(assert (=> d!710324 m!2837163))

(declare-fun m!2837165 () Bool)

(assert (=> b!2467919 m!2837165))

(assert (=> b!2467587 d!710324))

(declare-fun d!710326 () Bool)

(declare-fun c!393367 () Bool)

(assert (=> d!710326 (= c!393367 (is-IntegerValue!13998 (value!143087 t2!67)))))

(declare-fun e!1565396 () Bool)

(assert (=> d!710326 (= (inv!21 (value!143087 t2!67)) e!1565396)))

(declare-fun b!2467920 () Bool)

(declare-fun e!1565395 () Bool)

(assert (=> b!2467920 (= e!1565396 e!1565395)))

(declare-fun c!393368 () Bool)

(assert (=> b!2467920 (= c!393368 (is-IntegerValue!13999 (value!143087 t2!67)))))

(declare-fun b!2467921 () Bool)

(assert (=> b!2467921 (= e!1565396 (inv!16 (value!143087 t2!67)))))

(declare-fun b!2467922 () Bool)

(declare-fun e!1565397 () Bool)

(assert (=> b!2467922 (= e!1565397 (inv!15 (value!143087 t2!67)))))

(declare-fun b!2467923 () Bool)

(declare-fun res!1045393 () Bool)

(assert (=> b!2467923 (=> res!1045393 e!1565397)))

(assert (=> b!2467923 (= res!1045393 (not (is-IntegerValue!14000 (value!143087 t2!67))))))

(assert (=> b!2467923 (= e!1565395 e!1565397)))

(declare-fun b!2467924 () Bool)

(assert (=> b!2467924 (= e!1565395 (inv!17 (value!143087 t2!67)))))

(assert (= (and d!710326 c!393367) b!2467921))

(assert (= (and d!710326 (not c!393367)) b!2467920))

(assert (= (and b!2467920 c!393368) b!2467924))

(assert (= (and b!2467920 (not c!393368)) b!2467923))

(assert (= (and b!2467923 (not res!1045393)) b!2467922))

(declare-fun m!2837167 () Bool)

(assert (=> b!2467921 m!2837167))

(declare-fun m!2837169 () Bool)

(assert (=> b!2467922 m!2837169))

(declare-fun m!2837171 () Bool)

(assert (=> b!2467924 m!2837171))

(assert (=> b!2467608 d!710326))

(declare-fun b!2467929 () Bool)

(declare-fun e!1565400 () Bool)

(declare-fun tp_is_empty!11945 () Bool)

(declare-fun tp!787483 () Bool)

(assert (=> b!2467929 (= e!1565400 (and tp_is_empty!11945 tp!787483))))

(assert (=> b!2467586 (= tp!787417 e!1565400)))

(assert (= (and b!2467586 (is-Cons!28768 (originalCharacters!5246 (h!34170 l!6611)))) b!2467929))

(declare-fun b!2467930 () Bool)

(declare-fun e!1565401 () Bool)

(declare-fun tp!787484 () Bool)

(assert (=> b!2467930 (= e!1565401 (and tp_is_empty!11945 tp!787484))))

(assert (=> b!2467605 (= tp!787419 e!1565401)))

(assert (= (and b!2467605 (is-Cons!28768 (originalCharacters!5246 t1!67))) b!2467930))

(declare-fun b!2467943 () Bool)

(declare-fun e!1565404 () Bool)

(declare-fun tp!787495 () Bool)

(assert (=> b!2467943 (= e!1565404 tp!787495)))

(declare-fun b!2467941 () Bool)

(assert (=> b!2467941 (= e!1565404 tp_is_empty!11945)))

(assert (=> b!2467594 (= tp!787418 e!1565404)))

(declare-fun b!2467942 () Bool)

(declare-fun tp!787499 () Bool)

(declare-fun tp!787497 () Bool)

(assert (=> b!2467942 (= e!1565404 (and tp!787499 tp!787497))))

(declare-fun b!2467944 () Bool)

(declare-fun tp!787496 () Bool)

(declare-fun tp!787498 () Bool)

(assert (=> b!2467944 (= e!1565404 (and tp!787496 tp!787498))))

(assert (= (and b!2467594 (is-ElementMatch!7268 (regex!4480 (rule!6838 t1!67)))) b!2467941))

(assert (= (and b!2467594 (is-Concat!11935 (regex!4480 (rule!6838 t1!67)))) b!2467942))

(assert (= (and b!2467594 (is-Star!7268 (regex!4480 (rule!6838 t1!67)))) b!2467943))

(assert (= (and b!2467594 (is-Union!7268 (regex!4480 (rule!6838 t1!67)))) b!2467944))

(declare-fun b!2467958 () Bool)

(declare-fun b_free!71205 () Bool)

(declare-fun b_next!71909 () Bool)

(assert (=> b!2467958 (= b_free!71205 (not b_next!71909))))

(declare-fun tp!787513 () Bool)

(declare-fun b_and!186789 () Bool)

(assert (=> b!2467958 (= tp!787513 b_and!186789)))

(declare-fun b_free!71207 () Bool)

(declare-fun b_next!71911 () Bool)

(assert (=> b!2467958 (= b_free!71207 (not b_next!71911))))

(declare-fun tb!139505 () Bool)

(declare-fun t!209588 () Bool)

(assert (=> (and b!2467958 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 t2!67)))) t!209588) tb!139505))

(declare-fun result!172182 () Bool)

(assert (= result!172182 result!172150))

(assert (=> b!2467804 t!209588))

(declare-fun tb!139507 () Bool)

(declare-fun t!209590 () Bool)

(assert (=> (and b!2467958 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 t1!67)))) t!209590) tb!139507))

(declare-fun result!172184 () Bool)

(assert (= result!172184 result!172160))

(assert (=> b!2467811 t!209590))

(declare-fun t!209592 () Bool)

(declare-fun tb!139509 () Bool)

(assert (=> (and b!2467958 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611))))) t!209592) tb!139509))

(declare-fun result!172186 () Bool)

(assert (= result!172186 result!172168))

(assert (=> b!2467822 t!209592))

(assert (=> d!710300 t!209588))

(declare-fun b_and!186791 () Bool)

(declare-fun tp!787514 () Bool)

(assert (=> b!2467958 (= tp!787514 (and (=> t!209588 result!172182) (=> t!209590 result!172184) (=> t!209592 result!172186) b_and!186791))))

(declare-fun e!1565422 () Bool)

(declare-fun tp!787512 () Bool)

(declare-fun b!2467956 () Bool)

(declare-fun e!1565417 () Bool)

(assert (=> b!2467956 (= e!1565422 (and (inv!21 (value!143087 (h!34170 (t!209532 l!6611)))) e!1565417 tp!787512))))

(declare-fun e!1565420 () Bool)

(declare-fun tp!787511 () Bool)

(declare-fun b!2467957 () Bool)

(assert (=> b!2467957 (= e!1565417 (and tp!787511 (inv!38852 (tag!4970 (rule!6838 (h!34170 (t!209532 l!6611))))) (inv!38856 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) e!1565420))))

(assert (=> b!2467958 (= e!1565420 (and tp!787513 tp!787514))))

(declare-fun e!1565419 () Bool)

(assert (=> b!2467592 (= tp!787404 e!1565419)))

(declare-fun tp!787510 () Bool)

(declare-fun b!2467955 () Bool)

(assert (=> b!2467955 (= e!1565419 (and (inv!38855 (h!34170 (t!209532 l!6611))) e!1565422 tp!787510))))

(assert (= b!2467957 b!2467958))

(assert (= b!2467956 b!2467957))

(assert (= b!2467955 b!2467956))

(assert (= (and b!2467592 (is-Cons!28769 (t!209532 l!6611))) b!2467955))

(declare-fun m!2837173 () Bool)

(assert (=> b!2467956 m!2837173))

(declare-fun m!2837175 () Bool)

(assert (=> b!2467957 m!2837175))

(declare-fun m!2837177 () Bool)

(assert (=> b!2467957 m!2837177))

(declare-fun m!2837179 () Bool)

(assert (=> b!2467955 m!2837179))

(declare-fun b!2467975 () Bool)

(declare-fun e!1565427 () Bool)

(declare-fun tp!787515 () Bool)

(assert (=> b!2467975 (= e!1565427 tp!787515)))

(declare-fun b!2467973 () Bool)

(assert (=> b!2467973 (= e!1565427 tp_is_empty!11945)))

(assert (=> b!2467610 (= tp!787408 e!1565427)))

(declare-fun b!2467974 () Bool)

(declare-fun tp!787519 () Bool)

(declare-fun tp!787517 () Bool)

(assert (=> b!2467974 (= e!1565427 (and tp!787519 tp!787517))))

(declare-fun b!2467976 () Bool)

(declare-fun tp!787516 () Bool)

(declare-fun tp!787518 () Bool)

(assert (=> b!2467976 (= e!1565427 (and tp!787516 tp!787518))))

(assert (= (and b!2467610 (is-ElementMatch!7268 (regex!4480 (rule!6838 t2!67)))) b!2467973))

(assert (= (and b!2467610 (is-Concat!11935 (regex!4480 (rule!6838 t2!67)))) b!2467974))

(assert (= (and b!2467610 (is-Star!7268 (regex!4480 (rule!6838 t2!67)))) b!2467975))

(assert (= (and b!2467610 (is-Union!7268 (regex!4480 (rule!6838 t2!67)))) b!2467976))

(declare-fun b!2467979 () Bool)

(declare-fun e!1565428 () Bool)

(declare-fun tp!787520 () Bool)

(assert (=> b!2467979 (= e!1565428 tp!787520)))

(declare-fun b!2467977 () Bool)

(assert (=> b!2467977 (= e!1565428 tp_is_empty!11945)))

(assert (=> b!2467599 (= tp!787405 e!1565428)))

(declare-fun b!2467978 () Bool)

(declare-fun tp!787524 () Bool)

(declare-fun tp!787522 () Bool)

(assert (=> b!2467978 (= e!1565428 (and tp!787524 tp!787522))))

(declare-fun b!2467980 () Bool)

(declare-fun tp!787521 () Bool)

(declare-fun tp!787523 () Bool)

(assert (=> b!2467980 (= e!1565428 (and tp!787521 tp!787523))))

(assert (= (and b!2467599 (is-ElementMatch!7268 (regex!4480 (h!34171 rules!4472)))) b!2467977))

(assert (= (and b!2467599 (is-Concat!11935 (regex!4480 (h!34171 rules!4472)))) b!2467978))

(assert (= (and b!2467599 (is-Star!7268 (regex!4480 (h!34171 rules!4472)))) b!2467979))

(assert (= (and b!2467599 (is-Union!7268 (regex!4480 (h!34171 rules!4472)))) b!2467980))

(declare-fun b!2467983 () Bool)

(declare-fun e!1565429 () Bool)

(declare-fun tp!787525 () Bool)

(assert (=> b!2467983 (= e!1565429 tp!787525)))

(declare-fun b!2467981 () Bool)

(assert (=> b!2467981 (= e!1565429 tp_is_empty!11945)))

(assert (=> b!2467598 (= tp!787414 e!1565429)))

(declare-fun b!2467982 () Bool)

(declare-fun tp!787529 () Bool)

(declare-fun tp!787527 () Bool)

(assert (=> b!2467982 (= e!1565429 (and tp!787529 tp!787527))))

(declare-fun b!2467984 () Bool)

(declare-fun tp!787526 () Bool)

(declare-fun tp!787528 () Bool)

(assert (=> b!2467984 (= e!1565429 (and tp!787526 tp!787528))))

(assert (= (and b!2467598 (is-ElementMatch!7268 (regex!4480 (rule!6838 (h!34170 l!6611))))) b!2467981))

(assert (= (and b!2467598 (is-Concat!11935 (regex!4480 (rule!6838 (h!34170 l!6611))))) b!2467982))

(assert (= (and b!2467598 (is-Star!7268 (regex!4480 (rule!6838 (h!34170 l!6611))))) b!2467983))

(assert (= (and b!2467598 (is-Union!7268 (regex!4480 (rule!6838 (h!34170 l!6611))))) b!2467984))

(declare-fun b!2467985 () Bool)

(declare-fun e!1565430 () Bool)

(declare-fun tp!787530 () Bool)

(assert (=> b!2467985 (= e!1565430 (and tp_is_empty!11945 tp!787530))))

(assert (=> b!2467608 (= tp!787420 e!1565430)))

(assert (= (and b!2467608 (is-Cons!28768 (originalCharacters!5246 t2!67))) b!2467985))

(declare-fun b!2468000 () Bool)

(declare-fun b_free!71209 () Bool)

(declare-fun b_next!71913 () Bool)

(assert (=> b!2468000 (= b_free!71209 (not b_next!71913))))

(declare-fun tp!787540 () Bool)

(declare-fun b_and!186793 () Bool)

(assert (=> b!2468000 (= tp!787540 b_and!186793)))

(declare-fun b_free!71211 () Bool)

(declare-fun b_next!71915 () Bool)

(assert (=> b!2468000 (= b_free!71211 (not b_next!71915))))

(declare-fun t!209594 () Bool)

(declare-fun tb!139511 () Bool)

(assert (=> (and b!2468000 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 t2!67)))) t!209594) tb!139511))

(declare-fun result!172190 () Bool)

(assert (= result!172190 result!172150))

(assert (=> b!2467804 t!209594))

(declare-fun tb!139513 () Bool)

(declare-fun t!209596 () Bool)

(assert (=> (and b!2468000 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 t1!67)))) t!209596) tb!139513))

(declare-fun result!172192 () Bool)

(assert (= result!172192 result!172160))

(assert (=> b!2467811 t!209596))

(declare-fun tb!139515 () Bool)

(declare-fun t!209598 () Bool)

(assert (=> (and b!2468000 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611))))) t!209598) tb!139515))

(declare-fun result!172194 () Bool)

(assert (= result!172194 result!172168))

(assert (=> b!2467822 t!209598))

(assert (=> d!710300 t!209594))

(declare-fun tp!787541 () Bool)

(declare-fun b_and!186795 () Bool)

(assert (=> b!2468000 (= tp!787541 (and (=> t!209594 result!172190) (=> t!209596 result!172192) (=> t!209598 result!172194) b_and!186795))))

(declare-fun e!1565443 () Bool)

(assert (=> b!2468000 (= e!1565443 (and tp!787540 tp!787541))))

(declare-fun e!1565442 () Bool)

(declare-fun tp!787542 () Bool)

(declare-fun b!2467998 () Bool)

(assert (=> b!2467998 (= e!1565442 (and tp!787542 (inv!38852 (tag!4970 (h!34171 (t!209533 rules!4472)))) (inv!38856 (transformation!4480 (h!34171 (t!209533 rules!4472)))) e!1565443))))

(declare-fun b!2467996 () Bool)

(declare-fun e!1565444 () Bool)

(declare-fun tp!787539 () Bool)

(assert (=> b!2467996 (= e!1565444 (and e!1565442 tp!787539))))

(assert (=> b!2467597 (= tp!787410 e!1565444)))

(assert (= b!2467998 b!2468000))

(assert (= b!2467996 b!2467998))

(assert (= (and b!2467597 (is-Cons!28770 (t!209533 rules!4472))) b!2467996))

(declare-fun m!2837181 () Bool)

(assert (=> b!2467998 m!2837181))

(declare-fun m!2837183 () Bool)

(assert (=> b!2467998 m!2837183))

(declare-fun b_lambda!75643 () Bool)

(assert (= b_lambda!75641 (or (and b!2467600 b_free!71179 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2468000 b_free!71211 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2467591 b_free!71175 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2467609 b_free!71187 (= (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2467607 b_free!71183) (and b!2467958 b_free!71207 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) b_lambda!75643)))

(declare-fun b_lambda!75645 () Bool)

(assert (= b_lambda!75639 (or (and b!2467607 b_free!71183 (= (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))))) (and b!2467958 b_free!71207 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))))) (and b!2467609 b_free!71187 (= (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))))) (and b!2467600 b_free!71179) (and b!2467591 b_free!71175 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))))) (and b!2468000 b_free!71211 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))))) b_lambda!75645)))

(declare-fun b_lambda!75647 () Bool)

(assert (= b_lambda!75635 (or (and b!2467600 b_free!71179 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2468000 b_free!71211 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2467591 b_free!71175 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2467609 b_free!71187 (= (toChars!6199 (transformation!4480 (rule!6838 t1!67))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) (and b!2467607 b_free!71183) (and b!2467958 b_free!71207 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 t2!67))))) b_lambda!75647)))

(declare-fun b_lambda!75649 () Bool)

(assert (= b_lambda!75637 (or (and b!2467607 b_free!71183 (= (toChars!6199 (transformation!4480 (rule!6838 t2!67))) (toChars!6199 (transformation!4480 (rule!6838 t1!67))))) (and b!2467609 b_free!71187) (and b!2467591 b_free!71175 (= (toChars!6199 (transformation!4480 (h!34171 rules!4472))) (toChars!6199 (transformation!4480 (rule!6838 t1!67))))) (and b!2467600 b_free!71179 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 l!6611)))) (toChars!6199 (transformation!4480 (rule!6838 t1!67))))) (and b!2467958 b_free!71207 (= (toChars!6199 (transformation!4480 (rule!6838 (h!34170 (t!209532 l!6611))))) (toChars!6199 (transformation!4480 (rule!6838 t1!67))))) (and b!2468000 b_free!71211 (= (toChars!6199 (transformation!4480 (h!34171 (t!209533 rules!4472)))) (toChars!6199 (transformation!4480 (rule!6838 t1!67))))) b_lambda!75649)))

(push 1)

(assert (not b_next!71885))

(assert (not b!2467757))

(assert (not b!2467907))

(assert (not b!2467816))

(assert (not d!710258))

(assert (not b_next!71877))

(assert (not b!2467814))

(assert (not b_next!71909))

(assert (not b!2467834))

(assert (not b!2467985))

(assert (not b_lambda!75649))

(assert (not b_next!71913))

(assert (not d!710254))

(assert (not d!710244))

(assert (not b!2467982))

(assert (not d!710304))

(assert b_and!186721)

(assert (not b!2467811))

(assert (not d!710324))

(assert (not d!710290))

(assert (not b!2467956))

(assert (not b!2467785))

(assert (not d!710300))

(assert (not b!2467815))

(assert (not b!2467895))

(assert (not b!2467756))

(assert (not b!2467908))

(assert (not tb!139481))

(assert (not d!710302))

(assert (not b!2467984))

(assert (not b!2467826))

(assert (not b!2467913))

(assert (not b!2467836))

(assert (not b!2467944))

(assert (not b!2467766))

(assert (not b!2467912))

(assert b_and!186791)

(assert (not d!710272))

(assert (not d!710306))

(assert (not b!2467930))

(assert b_and!186783)

(assert (not b_next!71915))

(assert (not b!2467714))

(assert (not d!710256))

(assert (not b!2467820))

(assert (not b!2467898))

(assert (not b!2467929))

(assert (not b_next!71887))

(assert (not b!2467998))

(assert (not b!2467819))

(assert (not tb!139497))

(assert b_and!186713)

(assert (not b_next!71891))

(assert (not b_lambda!75647))

(assert (not b!2467822))

(assert (not b!2467825))

(assert b_and!186787)

(assert (not b!2467715))

(assert (not b!2467784))

(assert (not tb!139489))

(assert (not b_lambda!75645))

(assert (not b!2467827))

(assert b_and!186717)

(assert (not b!2467804))

(assert (not d!710252))

(assert (not d!710260))

(assert (not b!2467896))

(assert (not b!2467824))

(assert (not b!2467894))

(assert (not b!2467921))

(assert (not b!2467957))

(assert (not b!2467797))

(assert (not d!710270))

(assert (not d!710264))

(assert (not b_next!71883))

(assert (not d!710316))

(assert (not b!2467906))

(assert b_and!186709)

(assert (not b!2467910))

(assert (not d!710220))

(assert (not b!2467780))

(assert (not b!2467810))

(assert (not b!2467955))

(assert (not b!2467924))

(assert (not b_next!71911))

(assert (not b_next!71881))

(assert b_and!186785)

(assert (not b_next!71879))

(assert (not d!710262))

(assert (not b!2467983))

(assert (not b!2467787))

(assert (not b!2467916))

(assert (not d!710268))

(assert (not b!2467893))

(assert (not b!2467915))

(assert (not b!2467979))

(assert (not b!2467980))

(assert (not b_next!71889))

(assert (not b!2467813))

(assert (not b!2467899))

(assert b_and!186781)

(assert (not b!2467922))

(assert (not b!2467835))

(assert b_and!186795)

(assert (not b!2467805))

(assert (not b!2467897))

(assert (not d!710312))

(assert (not d!710294))

(assert (not b!2467975))

(assert (not b!2467790))

(assert (not b_lambda!75643))

(assert (not d!710250))

(assert (not d!710322))

(assert (not b!2467978))

(assert (not b!2467943))

(assert (not b!2467823))

(assert (not d!710298))

(assert (not b!2467781))

(assert (not b!2467919))

(assert (not b!2467911))

(assert (not b!2467996))

(assert (not b!2467782))

(assert (not b!2467976))

(assert (not b!2467717))

(assert (not b!2467833))

(assert (not b!2467821))

(assert (not b!2467798))

(assert tp_is_empty!11945)

(assert b_and!186793)

(assert (not b!2467942))

(assert (not b!2467974))

(assert (not b!2467812))

(assert (not b!2467909))

(assert (not b!2467799))

(assert (not b!2467779))

(assert b_and!186789)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71877))

(assert (not b_next!71909))

(assert (not b_next!71913))

(assert b_and!186721)

(assert b_and!186791)

(assert (not b_next!71885))

(assert (not b_next!71887))

(assert (not b_next!71883))

(assert b_and!186709)

(assert (not b_next!71879))

(assert (not b_next!71889))

(assert b_and!186793)

(assert b_and!186789)

(assert b_and!186783)

(assert (not b_next!71915))

(assert b_and!186713)

(assert (not b_next!71891))

(assert b_and!186787)

(assert b_and!186717)

(assert (not b_next!71911))

(assert (not b_next!71881))

(assert b_and!186785)

(assert b_and!186781)

(assert b_and!186795)

(check-sat)

(pop 1)

