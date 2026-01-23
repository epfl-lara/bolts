; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!240480 () Bool)

(assert start!240480)

(declare-fun b!2465969 () Bool)

(declare-fun b_free!70949 () Bool)

(declare-fun b_next!71653 () Bool)

(assert (=> b!2465969 (= b_free!70949 (not b_next!71653))))

(declare-fun tp!786528 () Bool)

(declare-fun b_and!186373 () Bool)

(assert (=> b!2465969 (= tp!786528 b_and!186373)))

(declare-fun b_free!70951 () Bool)

(declare-fun b_next!71655 () Bool)

(assert (=> b!2465969 (= b_free!70951 (not b_next!71655))))

(declare-fun tp!786534 () Bool)

(declare-fun b_and!186375 () Bool)

(assert (=> b!2465969 (= tp!786534 b_and!186375)))

(declare-fun b!2465973 () Bool)

(declare-fun b_free!70953 () Bool)

(declare-fun b_next!71657 () Bool)

(assert (=> b!2465973 (= b_free!70953 (not b_next!71657))))

(declare-fun tp!786530 () Bool)

(declare-fun b_and!186377 () Bool)

(assert (=> b!2465973 (= tp!786530 b_and!186377)))

(declare-fun b_free!70955 () Bool)

(declare-fun b_next!71659 () Bool)

(assert (=> b!2465973 (= b_free!70955 (not b_next!71659))))

(declare-fun tp!786532 () Bool)

(declare-fun b_and!186379 () Bool)

(assert (=> b!2465973 (= tp!786532 b_and!186379)))

(declare-fun b!2465971 () Bool)

(declare-fun b_free!70957 () Bool)

(declare-fun b_next!71661 () Bool)

(assert (=> b!2465971 (= b_free!70957 (not b_next!71661))))

(declare-fun tp!786538 () Bool)

(declare-fun b_and!186381 () Bool)

(assert (=> b!2465971 (= tp!786538 b_and!186381)))

(declare-fun b_free!70959 () Bool)

(declare-fun b_next!71663 () Bool)

(assert (=> b!2465971 (= b_free!70959 (not b_next!71663))))

(declare-fun tp!786525 () Bool)

(declare-fun b_and!186383 () Bool)

(assert (=> b!2465971 (= tp!786525 b_and!186383)))

(declare-fun b!2465977 () Bool)

(declare-fun b_free!70961 () Bool)

(declare-fun b_next!71665 () Bool)

(assert (=> b!2465977 (= b_free!70961 (not b_next!71665))))

(declare-fun tp!786527 () Bool)

(declare-fun b_and!186385 () Bool)

(assert (=> b!2465977 (= tp!786527 b_and!186385)))

(declare-fun b_free!70963 () Bool)

(declare-fun b_next!71667 () Bool)

(assert (=> b!2465977 (= b_free!70963 (not b_next!71667))))

(declare-fun tp!786529 () Bool)

(declare-fun b_and!186387 () Bool)

(assert (=> b!2465977 (= tp!786529 b_and!186387)))

(declare-fun b!2465955 () Bool)

(declare-fun res!1044478 () Bool)

(declare-fun e!1563890 () Bool)

(assert (=> b!2465955 (=> (not res!1044478) (not e!1563890))))

(declare-fun i!1803 () Int)

(declare-datatypes ((List!28816 0))(
  ( (Nil!28716) (Cons!28716 (h!34117 (_ BitVec 16)) (t!209323 List!28816)) )
))
(declare-datatypes ((TokenValue!4654 0))(
  ( (FloatLiteralValue!9308 (text!33023 List!28816)) (TokenValueExt!4653 (__x!18563 Int)) (Broken!23270 (value!142719 List!28816)) (Object!4753) (End!4654) (Def!4654) (Underscore!4654) (Match!4654) (Else!4654) (Error!4654) (Case!4654) (If!4654) (Extends!4654) (Abstract!4654) (Class!4654) (Val!4654) (DelimiterValue!9308 (del!4714 List!28816)) (KeywordValue!4660 (value!142720 List!28816)) (CommentValue!9308 (value!142721 List!28816)) (WhitespaceValue!9308 (value!142722 List!28816)) (IndentationValue!4654 (value!142723 List!28816)) (String!31567) (Int32!4654) (Broken!23271 (value!142724 List!28816)) (Boolean!4655) (Unit!42057) (OperatorValue!4657 (op!4714 List!28816)) (IdentifierValue!9308 (value!142725 List!28816)) (IdentifierValue!9309 (value!142726 List!28816)) (WhitespaceValue!9309 (value!142727 List!28816)) (True!9308) (False!9308) (Broken!23272 (value!142728 List!28816)) (Broken!23273 (value!142729 List!28816)) (True!9309) (RightBrace!4654) (RightBracket!4654) (Colon!4654) (Null!4654) (Comma!4654) (LeftBracket!4654) (False!9309) (LeftBrace!4654) (ImaginaryLiteralValue!4654 (text!33024 List!28816)) (StringLiteralValue!13962 (value!142730 List!28816)) (EOFValue!4654 (value!142731 List!28816)) (IdentValue!4654 (value!142732 List!28816)) (DelimiterValue!9309 (value!142733 List!28816)) (DedentValue!4654 (value!142734 List!28816)) (NewLineValue!4654 (value!142735 List!28816)) (IntegerValue!13962 (value!142736 (_ BitVec 32)) (text!33025 List!28816)) (IntegerValue!13963 (value!142737 Int) (text!33026 List!28816)) (Times!4654) (Or!4654) (Equal!4654) (Minus!4654) (Broken!23274 (value!142738 List!28816)) (And!4654) (Div!4654) (LessEqual!4654) (Mod!4654) (Concat!11910) (Not!4654) (Plus!4654) (SpaceValue!4654 (value!142739 List!28816)) (IntegerValue!13964 (value!142740 Int) (text!33027 List!28816)) (StringLiteralValue!13963 (text!33028 List!28816)) (FloatLiteralValue!9309 (text!33029 List!28816)) (BytesLiteralValue!4654 (value!142741 List!28816)) (CommentValue!9309 (value!142742 List!28816)) (StringLiteralValue!13964 (value!142743 List!28816)) (ErrorTokenValue!4654 (msg!4715 List!28816)) )
))
(declare-datatypes ((C!14670 0))(
  ( (C!14671 (val!8595 Int)) )
))
(declare-datatypes ((List!28817 0))(
  ( (Nil!28717) (Cons!28717 (h!34118 C!14670) (t!209324 List!28817)) )
))
(declare-datatypes ((IArray!18361 0))(
  ( (IArray!18362 (innerList!9238 List!28817)) )
))
(declare-datatypes ((Conc!9178 0))(
  ( (Node!9178 (left!22047 Conc!9178) (right!22377 Conc!9178) (csize!18586 Int) (cheight!9389 Int)) (Leaf!13720 (xs!12158 IArray!18361) (csize!18587 Int)) (Empty!9178) )
))
(declare-datatypes ((BalanceConc!17970 0))(
  ( (BalanceConc!17971 (c!393238 Conc!9178)) )
))
(declare-datatypes ((Regex!7256 0))(
  ( (ElementMatch!7256 (c!393239 C!14670)) (Concat!11911 (regOne!15024 Regex!7256) (regTwo!15024 Regex!7256)) (EmptyExpr!7256) (Star!7256 (reg!7585 Regex!7256)) (EmptyLang!7256) (Union!7256 (regOne!15025 Regex!7256) (regTwo!15025 Regex!7256)) )
))
(declare-datatypes ((String!31568 0))(
  ( (String!31569 (value!142744 String)) )
))
(declare-datatypes ((TokenValueInjection!8808 0))(
  ( (TokenValueInjection!8809 (toValue!6328 Int) (toChars!6187 Int)) )
))
(declare-datatypes ((Rule!8736 0))(
  ( (Rule!8737 (regex!4468 Regex!7256) (tag!4958 String!31568) (isSeparator!4468 Bool) (transformation!4468 TokenValueInjection!8808)) )
))
(declare-datatypes ((Token!8406 0))(
  ( (Token!8407 (value!142745 TokenValue!4654) (rule!6826 Rule!8736) (size!22348 Int) (originalCharacters!5234 List!28817)) )
))
(declare-datatypes ((List!28818 0))(
  ( (Nil!28718) (Cons!28718 (h!34119 Token!8406) (t!209325 List!28818)) )
))
(declare-fun l!6611 () List!28818)

(declare-fun size!22349 (List!28818) Int)

(assert (=> b!2465955 (= res!1044478 (< (+ 1 i!1803) (size!22349 l!6611)))))

(declare-fun b!2465956 () Bool)

(declare-fun res!1044482 () Bool)

(assert (=> b!2465956 (=> (not res!1044482) (not e!1563890))))

(declare-fun t2!67 () Token!8406)

(declare-fun apply!6752 (List!28818 Int) Token!8406)

(assert (=> b!2465956 (= res!1044482 (= (apply!6752 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun b!2465957 () Bool)

(declare-fun res!1044475 () Bool)

(assert (=> b!2465957 (=> (not res!1044475) (not e!1563890))))

(declare-fun t1!67 () Token!8406)

(assert (=> b!2465957 (= res!1044475 (= (apply!6752 l!6611 i!1803) t1!67))))

(declare-fun b!2465958 () Bool)

(declare-fun res!1044484 () Bool)

(assert (=> b!2465958 (=> (not res!1044484) (not e!1563890))))

(assert (=> b!2465958 (= res!1044484 (= i!1803 0))))

(declare-fun b!2465959 () Bool)

(declare-fun res!1044479 () Bool)

(assert (=> b!2465959 (=> (not res!1044479) (not e!1563890))))

(declare-datatypes ((LexerInterface!4065 0))(
  ( (LexerInterfaceExt!4062 (__x!18564 Int)) (Lexer!4063) )
))
(declare-fun thiss!27932 () LexerInterface!4065)

(declare-datatypes ((List!28819 0))(
  ( (Nil!28719) (Cons!28719 (h!34120 Rule!8736) (t!209326 List!28819)) )
))
(declare-fun rules!4472 () List!28819)

(declare-fun separableTokensPredicate!845 (LexerInterface!4065 Token!8406 Token!8406 List!28819) Bool)

(assert (=> b!2465959 (= res!1044479 (separableTokensPredicate!845 thiss!27932 t1!67 t2!67 rules!4472))))

(declare-fun b!2465960 () Bool)

(declare-fun tp!786533 () Bool)

(declare-fun e!1563882 () Bool)

(declare-fun e!1563891 () Bool)

(declare-fun inv!38802 (String!31568) Bool)

(declare-fun inv!38805 (TokenValueInjection!8808) Bool)

(assert (=> b!2465960 (= e!1563891 (and tp!786533 (inv!38802 (tag!4958 (rule!6826 (h!34119 l!6611)))) (inv!38805 (transformation!4468 (rule!6826 (h!34119 l!6611)))) e!1563882))))

(declare-fun res!1044477 () Bool)

(assert (=> start!240480 (=> (not res!1044477) (not e!1563890))))

(assert (=> start!240480 (= res!1044477 (is-Lexer!4063 thiss!27932))))

(assert (=> start!240480 e!1563890))

(assert (=> start!240480 true))

(declare-fun e!1563884 () Bool)

(assert (=> start!240480 e!1563884))

(declare-fun e!1563893 () Bool)

(declare-fun inv!38806 (Token!8406) Bool)

(assert (=> start!240480 (and (inv!38806 t2!67) e!1563893)))

(declare-fun e!1563898 () Bool)

(assert (=> start!240480 e!1563898))

(declare-fun e!1563886 () Bool)

(assert (=> start!240480 (and (inv!38806 t1!67) e!1563886)))

(declare-fun b!2465961 () Bool)

(declare-fun res!1044481 () Bool)

(assert (=> b!2465961 (=> (not res!1044481) (not e!1563890))))

(assert (=> b!2465961 (= res!1044481 (>= i!1803 0))))

(declare-fun b!2465962 () Bool)

(declare-fun tp!786540 () Bool)

(declare-fun e!1563900 () Bool)

(declare-fun inv!21 (TokenValue!4654) Bool)

(assert (=> b!2465962 (= e!1563893 (and (inv!21 (value!142745 t2!67)) e!1563900 tp!786540))))

(declare-fun b!2465963 () Bool)

(declare-fun isEmpty!16690 (BalanceConc!17970) Bool)

(declare-fun charsOf!2816 (Token!8406) BalanceConc!17970)

(assert (=> b!2465963 (= e!1563890 (not (not (isEmpty!16690 (charsOf!2816 t2!67)))))))

(declare-fun rulesProduceIndividualToken!1800 (LexerInterface!4065 List!28819 Token!8406) Bool)

(assert (=> b!2465963 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 t2!67)))

(declare-datatypes ((Unit!42058 0))(
  ( (Unit!42059) )
))
(declare-fun lt!882207 () Unit!42058)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 (LexerInterface!4065 List!28819 List!28818 Token!8406) Unit!42058)

(assert (=> b!2465963 (= lt!882207 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 thiss!27932 rules!4472 l!6611 t2!67))))

(assert (=> b!2465963 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882208 () Unit!42058)

(assert (=> b!2465963 (= lt!882208 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 thiss!27932 rules!4472 l!6611 t1!67))))

(declare-fun e!1563883 () Bool)

(declare-fun b!2465964 () Bool)

(declare-fun tp!786537 () Bool)

(assert (=> b!2465964 (= e!1563898 (and (inv!38806 (h!34119 l!6611)) e!1563883 tp!786537))))

(declare-fun tp!786524 () Bool)

(declare-fun b!2465965 () Bool)

(declare-fun e!1563887 () Bool)

(declare-fun e!1563894 () Bool)

(assert (=> b!2465965 (= e!1563894 (and tp!786524 (inv!38802 (tag!4958 (h!34120 rules!4472))) (inv!38805 (transformation!4468 (h!34120 rules!4472))) e!1563887))))

(declare-fun b!2465966 () Bool)

(declare-fun tp!786531 () Bool)

(assert (=> b!2465966 (= e!1563884 (and e!1563894 tp!786531))))

(declare-fun b!2465967 () Bool)

(declare-fun tp!786535 () Bool)

(assert (=> b!2465967 (= e!1563883 (and (inv!21 (value!142745 (h!34119 l!6611))) e!1563891 tp!786535))))

(declare-fun tp!786526 () Bool)

(declare-fun e!1563901 () Bool)

(declare-fun b!2465968 () Bool)

(declare-fun e!1563897 () Bool)

(assert (=> b!2465968 (= e!1563897 (and tp!786526 (inv!38802 (tag!4958 (rule!6826 t1!67))) (inv!38805 (transformation!4468 (rule!6826 t1!67))) e!1563901))))

(assert (=> b!2465969 (= e!1563887 (and tp!786528 tp!786534))))

(declare-fun b!2465970 () Bool)

(declare-fun res!1044480 () Bool)

(assert (=> b!2465970 (=> (not res!1044480) (not e!1563890))))

(declare-fun rulesInvariant!3565 (LexerInterface!4065 List!28819) Bool)

(assert (=> b!2465970 (= res!1044480 (rulesInvariant!3565 thiss!27932 rules!4472))))

(assert (=> b!2465971 (= e!1563901 (and tp!786538 tp!786525))))

(declare-fun b!2465972 () Bool)

(declare-fun tp!786536 () Bool)

(assert (=> b!2465972 (= e!1563886 (and (inv!21 (value!142745 t1!67)) e!1563897 tp!786536))))

(assert (=> b!2465973 (= e!1563882 (and tp!786530 tp!786532))))

(declare-fun b!2465974 () Bool)

(declare-fun res!1044474 () Bool)

(assert (=> b!2465974 (=> (not res!1044474) (not e!1563890))))

(declare-fun isEmpty!16691 (List!28819) Bool)

(assert (=> b!2465974 (= res!1044474 (not (isEmpty!16691 rules!4472)))))

(declare-fun b!2465975 () Bool)

(declare-fun res!1044476 () Bool)

(assert (=> b!2465975 (=> (not res!1044476) (not e!1563890))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!604 (LexerInterface!4065 List!28818 List!28819) Bool)

(assert (=> b!2465975 (= res!1044476 (tokensListTwoByTwoPredicateSeparableList!604 thiss!27932 l!6611 rules!4472))))

(declare-fun tp!786539 () Bool)

(declare-fun b!2465976 () Bool)

(declare-fun e!1563895 () Bool)

(assert (=> b!2465976 (= e!1563900 (and tp!786539 (inv!38802 (tag!4958 (rule!6826 t2!67))) (inv!38805 (transformation!4468 (rule!6826 t2!67))) e!1563895))))

(assert (=> b!2465977 (= e!1563895 (and tp!786527 tp!786529))))

(declare-fun b!2465978 () Bool)

(declare-fun res!1044483 () Bool)

(assert (=> b!2465978 (=> (not res!1044483) (not e!1563890))))

(declare-fun rulesProduceEachTokenIndividuallyList!1381 (LexerInterface!4065 List!28819 List!28818) Bool)

(assert (=> b!2465978 (= res!1044483 (rulesProduceEachTokenIndividuallyList!1381 thiss!27932 rules!4472 l!6611))))

(assert (= (and start!240480 res!1044477) b!2465974))

(assert (= (and b!2465974 res!1044474) b!2465970))

(assert (= (and b!2465970 res!1044480) b!2465978))

(assert (= (and b!2465978 res!1044483) b!2465975))

(assert (= (and b!2465975 res!1044476) b!2465961))

(assert (= (and b!2465961 res!1044481) b!2465955))

(assert (= (and b!2465955 res!1044478) b!2465957))

(assert (= (and b!2465957 res!1044475) b!2465956))

(assert (= (and b!2465956 res!1044482) b!2465958))

(assert (= (and b!2465958 res!1044484) b!2465959))

(assert (= (and b!2465959 res!1044479) b!2465963))

(assert (= b!2465965 b!2465969))

(assert (= b!2465966 b!2465965))

(assert (= (and start!240480 (is-Cons!28719 rules!4472)) b!2465966))

(assert (= b!2465976 b!2465977))

(assert (= b!2465962 b!2465976))

(assert (= start!240480 b!2465962))

(assert (= b!2465960 b!2465973))

(assert (= b!2465967 b!2465960))

(assert (= b!2465964 b!2465967))

(assert (= (and start!240480 (is-Cons!28718 l!6611)) b!2465964))

(assert (= b!2465968 b!2465971))

(assert (= b!2465972 b!2465968))

(assert (= start!240480 b!2465972))

(declare-fun m!2835395 () Bool)

(assert (=> b!2465960 m!2835395))

(declare-fun m!2835397 () Bool)

(assert (=> b!2465960 m!2835397))

(declare-fun m!2835399 () Bool)

(assert (=> b!2465970 m!2835399))

(declare-fun m!2835401 () Bool)

(assert (=> b!2465964 m!2835401))

(declare-fun m!2835403 () Bool)

(assert (=> b!2465974 m!2835403))

(declare-fun m!2835405 () Bool)

(assert (=> b!2465975 m!2835405))

(declare-fun m!2835407 () Bool)

(assert (=> start!240480 m!2835407))

(declare-fun m!2835409 () Bool)

(assert (=> start!240480 m!2835409))

(declare-fun m!2835411 () Bool)

(assert (=> b!2465956 m!2835411))

(declare-fun m!2835413 () Bool)

(assert (=> b!2465972 m!2835413))

(declare-fun m!2835415 () Bool)

(assert (=> b!2465962 m!2835415))

(declare-fun m!2835417 () Bool)

(assert (=> b!2465968 m!2835417))

(declare-fun m!2835419 () Bool)

(assert (=> b!2465968 m!2835419))

(declare-fun m!2835421 () Bool)

(assert (=> b!2465955 m!2835421))

(declare-fun m!2835423 () Bool)

(assert (=> b!2465957 m!2835423))

(declare-fun m!2835425 () Bool)

(assert (=> b!2465963 m!2835425))

(declare-fun m!2835427 () Bool)

(assert (=> b!2465963 m!2835427))

(declare-fun m!2835429 () Bool)

(assert (=> b!2465963 m!2835429))

(declare-fun m!2835431 () Bool)

(assert (=> b!2465963 m!2835431))

(declare-fun m!2835433 () Bool)

(assert (=> b!2465963 m!2835433))

(assert (=> b!2465963 m!2835429))

(declare-fun m!2835435 () Bool)

(assert (=> b!2465963 m!2835435))

(declare-fun m!2835437 () Bool)

(assert (=> b!2465978 m!2835437))

(declare-fun m!2835439 () Bool)

(assert (=> b!2465965 m!2835439))

(declare-fun m!2835441 () Bool)

(assert (=> b!2465965 m!2835441))

(declare-fun m!2835443 () Bool)

(assert (=> b!2465959 m!2835443))

(declare-fun m!2835445 () Bool)

(assert (=> b!2465967 m!2835445))

(declare-fun m!2835447 () Bool)

(assert (=> b!2465976 m!2835447))

(declare-fun m!2835449 () Bool)

(assert (=> b!2465976 m!2835449))

(push 1)

(assert (not b_next!71657))

(assert (not b_next!71663))

(assert b_and!186375)

(assert b_and!186377)

(assert (not b_next!71653))

(assert (not b!2465972))

(assert (not b_next!71655))

(assert (not b!2465967))

(assert (not b_next!71659))

(assert b_and!186383)

(assert (not b!2465970))

(assert (not b!2465968))

(assert (not b_next!71667))

(assert (not b!2465960))

(assert (not b!2465959))

(assert b_and!186373)

(assert b_and!186381)

(assert (not b!2465978))

(assert b_and!186387)

(assert (not b_next!71661))

(assert (not b!2465965))

(assert (not b!2465976))

(assert b_and!186385)

(assert b_and!186379)

(assert (not b!2465962))

(assert (not b_next!71665))

(assert (not b!2465966))

(assert (not b!2465974))

(assert (not b!2465964))

(assert (not b!2465956))

(assert (not b!2465975))

(assert (not b!2465955))

(assert (not b!2465963))

(assert (not b!2465957))

(assert (not start!240480))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71657))

(assert (not b_next!71667))

(assert (not b_next!71663))

(assert b_and!186375)

(assert b_and!186377)

(assert (not b_next!71653))

(assert (not b_next!71655))

(assert b_and!186387)

(assert (not b_next!71661))

(assert (not b_next!71659))

(assert b_and!186385)

(assert b_and!186379)

(assert (not b_next!71665))

(assert b_and!186383)

(assert b_and!186373)

(assert b_and!186381)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!710016 () Bool)

(declare-fun res!1044525 () Bool)

(declare-fun e!1563967 () Bool)

(assert (=> d!710016 (=> (not res!1044525) (not e!1563967))))

(declare-fun rulesValid!1662 (LexerInterface!4065 List!28819) Bool)

(assert (=> d!710016 (= res!1044525 (rulesValid!1662 thiss!27932 rules!4472))))

(assert (=> d!710016 (= (rulesInvariant!3565 thiss!27932 rules!4472) e!1563967)))

(declare-fun b!2466053 () Bool)

(declare-datatypes ((List!28824 0))(
  ( (Nil!28724) (Cons!28724 (h!34125 String!31568) (t!209381 List!28824)) )
))
(declare-fun noDuplicateTag!1660 (LexerInterface!4065 List!28819 List!28824) Bool)

(assert (=> b!2466053 (= e!1563967 (noDuplicateTag!1660 thiss!27932 rules!4472 Nil!28724))))

(assert (= (and d!710016 res!1044525) b!2466053))

(declare-fun m!2835507 () Bool)

(assert (=> d!710016 m!2835507))

(declare-fun m!2835509 () Bool)

(assert (=> b!2466053 m!2835509))

(assert (=> b!2465970 d!710016))

(declare-fun d!710018 () Bool)

(declare-fun prefixMatchZipperSequence!717 (Regex!7256 BalanceConc!17970) Bool)

(declare-fun rulesRegex!975 (LexerInterface!4065 List!28819) Regex!7256)

(declare-fun ++!7135 (BalanceConc!17970 BalanceConc!17970) BalanceConc!17970)

(declare-fun singletonSeq!1982 (C!14670) BalanceConc!17970)

(declare-fun apply!6754 (BalanceConc!17970 Int) C!14670)

(assert (=> d!710018 (= (separableTokensPredicate!845 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!717 (rulesRegex!975 thiss!27932 rules!4472) (++!7135 (charsOf!2816 t1!67) (singletonSeq!1982 (apply!6754 (charsOf!2816 t2!67) 0))))))))

(declare-fun bs!466652 () Bool)

(assert (= bs!466652 d!710018))

(assert (=> bs!466652 m!2835429))

(assert (=> bs!466652 m!2835429))

(declare-fun m!2835511 () Bool)

(assert (=> bs!466652 m!2835511))

(assert (=> bs!466652 m!2835511))

(declare-fun m!2835513 () Bool)

(assert (=> bs!466652 m!2835513))

(declare-fun m!2835515 () Bool)

(assert (=> bs!466652 m!2835515))

(declare-fun m!2835517 () Bool)

(assert (=> bs!466652 m!2835517))

(declare-fun m!2835519 () Bool)

(assert (=> bs!466652 m!2835519))

(declare-fun m!2835521 () Bool)

(assert (=> bs!466652 m!2835521))

(assert (=> bs!466652 m!2835517))

(assert (=> bs!466652 m!2835515))

(assert (=> bs!466652 m!2835513))

(assert (=> bs!466652 m!2835519))

(assert (=> b!2465959 d!710018))

(declare-fun d!710022 () Bool)

(assert (=> d!710022 (= (inv!38802 (tag!4958 (rule!6826 (h!34119 l!6611)))) (= (mod (str.len (value!142744 (tag!4958 (rule!6826 (h!34119 l!6611))))) 2) 0))))

(assert (=> b!2465960 d!710022))

(declare-fun d!710024 () Bool)

(declare-fun res!1044531 () Bool)

(declare-fun e!1563970 () Bool)

(assert (=> d!710024 (=> (not res!1044531) (not e!1563970))))

(declare-fun semiInverseModEq!1837 (Int Int) Bool)

(assert (=> d!710024 (= res!1044531 (semiInverseModEq!1837 (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toValue!6328 (transformation!4468 (rule!6826 (h!34119 l!6611))))))))

(assert (=> d!710024 (= (inv!38805 (transformation!4468 (rule!6826 (h!34119 l!6611)))) e!1563970)))

(declare-fun b!2466056 () Bool)

(declare-fun equivClasses!1748 (Int Int) Bool)

(assert (=> b!2466056 (= e!1563970 (equivClasses!1748 (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toValue!6328 (transformation!4468 (rule!6826 (h!34119 l!6611))))))))

(assert (= (and d!710024 res!1044531) b!2466056))

(declare-fun m!2835523 () Bool)

(assert (=> d!710024 m!2835523))

(declare-fun m!2835525 () Bool)

(assert (=> b!2466056 m!2835525))

(assert (=> b!2465960 d!710024))

(declare-fun b!2466139 () Bool)

(declare-fun e!1564030 () Bool)

(assert (=> b!2466139 (= e!1564030 true)))

(declare-fun b!2466138 () Bool)

(declare-fun e!1564029 () Bool)

(assert (=> b!2466138 (= e!1564029 e!1564030)))

(declare-fun b!2466137 () Bool)

(declare-fun e!1564028 () Bool)

(assert (=> b!2466137 (= e!1564028 e!1564029)))

(declare-fun d!710026 () Bool)

(assert (=> d!710026 e!1564028))

(assert (= b!2466138 b!2466139))

(assert (= b!2466137 b!2466138))

(assert (= (and d!710026 (is-Cons!28719 rules!4472)) b!2466137))

(declare-fun order!15549 () Int)

(declare-fun lambda!93232 () Int)

(declare-fun order!15551 () Int)

(declare-fun dynLambda!12327 (Int Int) Int)

(declare-fun dynLambda!12328 (Int Int) Int)

(assert (=> b!2466139 (< (dynLambda!12327 order!15549 (toValue!6328 (transformation!4468 (h!34120 rules!4472)))) (dynLambda!12328 order!15551 lambda!93232))))

(declare-fun order!15553 () Int)

(declare-fun dynLambda!12329 (Int Int) Int)

(assert (=> b!2466139 (< (dynLambda!12329 order!15553 (toChars!6187 (transformation!4468 (h!34120 rules!4472)))) (dynLambda!12328 order!15551 lambda!93232))))

(assert (=> d!710026 true))

(declare-fun lt!882244 () Bool)

(declare-fun forall!5894 (List!28818 Int) Bool)

(assert (=> d!710026 (= lt!882244 (forall!5894 l!6611 lambda!93232))))

(declare-fun e!1564020 () Bool)

(assert (=> d!710026 (= lt!882244 e!1564020)))

(declare-fun res!1044566 () Bool)

(assert (=> d!710026 (=> res!1044566 e!1564020)))

(assert (=> d!710026 (= res!1044566 (not (is-Cons!28718 l!6611)))))

(assert (=> d!710026 (not (isEmpty!16691 rules!4472))))

(assert (=> d!710026 (= (rulesProduceEachTokenIndividuallyList!1381 thiss!27932 rules!4472 l!6611) lt!882244)))

(declare-fun b!2466127 () Bool)

(declare-fun e!1564021 () Bool)

(assert (=> b!2466127 (= e!1564020 e!1564021)))

(declare-fun res!1044565 () Bool)

(assert (=> b!2466127 (=> (not res!1044565) (not e!1564021))))

(assert (=> b!2466127 (= res!1044565 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 (h!34119 l!6611)))))

(declare-fun b!2466128 () Bool)

(assert (=> b!2466128 (= e!1564021 (rulesProduceEachTokenIndividuallyList!1381 thiss!27932 rules!4472 (t!209325 l!6611)))))

(assert (= (and d!710026 (not res!1044566)) b!2466127))

(assert (= (and b!2466127 res!1044565) b!2466128))

(declare-fun m!2835615 () Bool)

(assert (=> d!710026 m!2835615))

(assert (=> d!710026 m!2835403))

(declare-fun m!2835617 () Bool)

(assert (=> b!2466127 m!2835617))

(declare-fun m!2835619 () Bool)

(assert (=> b!2466128 m!2835619))

(assert (=> b!2465978 d!710026))

(declare-fun d!710064 () Bool)

(declare-fun lt!882247 () Token!8406)

(declare-fun contains!4902 (List!28818 Token!8406) Bool)

(assert (=> d!710064 (contains!4902 l!6611 lt!882247)))

(declare-fun e!1564035 () Token!8406)

(assert (=> d!710064 (= lt!882247 e!1564035)))

(declare-fun c!393260 () Bool)

(assert (=> d!710064 (= c!393260 (= i!1803 0))))

(declare-fun e!1564036 () Bool)

(assert (=> d!710064 e!1564036))

(declare-fun res!1044569 () Bool)

(assert (=> d!710064 (=> (not res!1044569) (not e!1564036))))

(assert (=> d!710064 (= res!1044569 (<= 0 i!1803))))

(assert (=> d!710064 (= (apply!6752 l!6611 i!1803) lt!882247)))

(declare-fun b!2466148 () Bool)

(assert (=> b!2466148 (= e!1564036 (< i!1803 (size!22349 l!6611)))))

(declare-fun b!2466149 () Bool)

(declare-fun head!5628 (List!28818) Token!8406)

(assert (=> b!2466149 (= e!1564035 (head!5628 l!6611))))

(declare-fun b!2466150 () Bool)

(declare-fun tail!3901 (List!28818) List!28818)

(assert (=> b!2466150 (= e!1564035 (apply!6752 (tail!3901 l!6611) (- i!1803 1)))))

(assert (= (and d!710064 res!1044569) b!2466148))

(assert (= (and d!710064 c!393260) b!2466149))

(assert (= (and d!710064 (not c!393260)) b!2466150))

(declare-fun m!2835621 () Bool)

(assert (=> d!710064 m!2835621))

(assert (=> b!2466148 m!2835421))

(declare-fun m!2835623 () Bool)

(assert (=> b!2466149 m!2835623))

(declare-fun m!2835625 () Bool)

(assert (=> b!2466150 m!2835625))

(assert (=> b!2466150 m!2835625))

(declare-fun m!2835627 () Bool)

(assert (=> b!2466150 m!2835627))

(assert (=> b!2465957 d!710064))

(declare-fun d!710066 () Bool)

(declare-fun lt!882248 () Token!8406)

(assert (=> d!710066 (contains!4902 l!6611 lt!882248)))

(declare-fun e!1564037 () Token!8406)

(assert (=> d!710066 (= lt!882248 e!1564037)))

(declare-fun c!393261 () Bool)

(assert (=> d!710066 (= c!393261 (= (+ 1 i!1803) 0))))

(declare-fun e!1564038 () Bool)

(assert (=> d!710066 e!1564038))

(declare-fun res!1044570 () Bool)

(assert (=> d!710066 (=> (not res!1044570) (not e!1564038))))

(assert (=> d!710066 (= res!1044570 (<= 0 (+ 1 i!1803)))))

(assert (=> d!710066 (= (apply!6752 l!6611 (+ 1 i!1803)) lt!882248)))

(declare-fun b!2466151 () Bool)

(assert (=> b!2466151 (= e!1564038 (< (+ 1 i!1803) (size!22349 l!6611)))))

(declare-fun b!2466152 () Bool)

(assert (=> b!2466152 (= e!1564037 (head!5628 l!6611))))

(declare-fun b!2466153 () Bool)

(assert (=> b!2466153 (= e!1564037 (apply!6752 (tail!3901 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!710066 res!1044570) b!2466151))

(assert (= (and d!710066 c!393261) b!2466152))

(assert (= (and d!710066 (not c!393261)) b!2466153))

(declare-fun m!2835629 () Bool)

(assert (=> d!710066 m!2835629))

(assert (=> b!2466151 m!2835421))

(assert (=> b!2466152 m!2835623))

(assert (=> b!2466153 m!2835625))

(assert (=> b!2466153 m!2835625))

(declare-fun m!2835631 () Bool)

(assert (=> b!2466153 m!2835631))

(assert (=> b!2465956 d!710066))

(declare-fun b!2466164 () Bool)

(declare-fun e!1564045 () Bool)

(declare-fun inv!17 (TokenValue!4654) Bool)

(assert (=> b!2466164 (= e!1564045 (inv!17 (value!142745 (h!34119 l!6611))))))

(declare-fun b!2466165 () Bool)

(declare-fun e!1564047 () Bool)

(declare-fun inv!15 (TokenValue!4654) Bool)

(assert (=> b!2466165 (= e!1564047 (inv!15 (value!142745 (h!34119 l!6611))))))

(declare-fun b!2466166 () Bool)

(declare-fun e!1564046 () Bool)

(assert (=> b!2466166 (= e!1564046 e!1564045)))

(declare-fun c!393266 () Bool)

(assert (=> b!2466166 (= c!393266 (is-IntegerValue!13963 (value!142745 (h!34119 l!6611))))))

(declare-fun b!2466167 () Bool)

(declare-fun res!1044573 () Bool)

(assert (=> b!2466167 (=> res!1044573 e!1564047)))

(assert (=> b!2466167 (= res!1044573 (not (is-IntegerValue!13964 (value!142745 (h!34119 l!6611)))))))

(assert (=> b!2466167 (= e!1564045 e!1564047)))

(declare-fun b!2466168 () Bool)

(declare-fun inv!16 (TokenValue!4654) Bool)

(assert (=> b!2466168 (= e!1564046 (inv!16 (value!142745 (h!34119 l!6611))))))

(declare-fun d!710068 () Bool)

(declare-fun c!393267 () Bool)

(assert (=> d!710068 (= c!393267 (is-IntegerValue!13962 (value!142745 (h!34119 l!6611))))))

(assert (=> d!710068 (= (inv!21 (value!142745 (h!34119 l!6611))) e!1564046)))

(assert (= (and d!710068 c!393267) b!2466168))

(assert (= (and d!710068 (not c!393267)) b!2466166))

(assert (= (and b!2466166 c!393266) b!2466164))

(assert (= (and b!2466166 (not c!393266)) b!2466167))

(assert (= (and b!2466167 (not res!1044573)) b!2466165))

(declare-fun m!2835633 () Bool)

(assert (=> b!2466164 m!2835633))

(declare-fun m!2835635 () Bool)

(assert (=> b!2466165 m!2835635))

(declare-fun m!2835637 () Bool)

(assert (=> b!2466168 m!2835637))

(assert (=> b!2465967 d!710068))

(declare-fun d!710070 () Bool)

(assert (=> d!710070 (= (inv!38802 (tag!4958 (rule!6826 t1!67))) (= (mod (str.len (value!142744 (tag!4958 (rule!6826 t1!67)))) 2) 0))))

(assert (=> b!2465968 d!710070))

(declare-fun d!710072 () Bool)

(declare-fun res!1044574 () Bool)

(declare-fun e!1564048 () Bool)

(assert (=> d!710072 (=> (not res!1044574) (not e!1564048))))

(assert (=> d!710072 (= res!1044574 (semiInverseModEq!1837 (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toValue!6328 (transformation!4468 (rule!6826 t1!67)))))))

(assert (=> d!710072 (= (inv!38805 (transformation!4468 (rule!6826 t1!67))) e!1564048)))

(declare-fun b!2466169 () Bool)

(assert (=> b!2466169 (= e!1564048 (equivClasses!1748 (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toValue!6328 (transformation!4468 (rule!6826 t1!67)))))))

(assert (= (and d!710072 res!1044574) b!2466169))

(declare-fun m!2835639 () Bool)

(assert (=> d!710072 m!2835639))

(declare-fun m!2835641 () Bool)

(assert (=> b!2466169 m!2835641))

(assert (=> b!2465968 d!710072))

(declare-fun d!710074 () Bool)

(assert (=> d!710074 (= (inv!38802 (tag!4958 (h!34120 rules!4472))) (= (mod (str.len (value!142744 (tag!4958 (h!34120 rules!4472)))) 2) 0))))

(assert (=> b!2465965 d!710074))

(declare-fun d!710076 () Bool)

(declare-fun res!1044575 () Bool)

(declare-fun e!1564049 () Bool)

(assert (=> d!710076 (=> (not res!1044575) (not e!1564049))))

(assert (=> d!710076 (= res!1044575 (semiInverseModEq!1837 (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toValue!6328 (transformation!4468 (h!34120 rules!4472)))))))

(assert (=> d!710076 (= (inv!38805 (transformation!4468 (h!34120 rules!4472))) e!1564049)))

(declare-fun b!2466170 () Bool)

(assert (=> b!2466170 (= e!1564049 (equivClasses!1748 (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toValue!6328 (transformation!4468 (h!34120 rules!4472)))))))

(assert (= (and d!710076 res!1044575) b!2466170))

(declare-fun m!2835643 () Bool)

(assert (=> d!710076 m!2835643))

(declare-fun m!2835645 () Bool)

(assert (=> b!2466170 m!2835645))

(assert (=> b!2465965 d!710076))

(declare-fun d!710078 () Bool)

(declare-fun res!1044580 () Bool)

(declare-fun e!1564052 () Bool)

(assert (=> d!710078 (=> (not res!1044580) (not e!1564052))))

(declare-fun isEmpty!16694 (List!28817) Bool)

(assert (=> d!710078 (= res!1044580 (not (isEmpty!16694 (originalCharacters!5234 (h!34119 l!6611)))))))

(assert (=> d!710078 (= (inv!38806 (h!34119 l!6611)) e!1564052)))

(declare-fun b!2466175 () Bool)

(declare-fun res!1044581 () Bool)

(assert (=> b!2466175 (=> (not res!1044581) (not e!1564052))))

(declare-fun list!11120 (BalanceConc!17970) List!28817)

(declare-fun dynLambda!12330 (Int TokenValue!4654) BalanceConc!17970)

(assert (=> b!2466175 (= res!1044581 (= (originalCharacters!5234 (h!34119 l!6611)) (list!11120 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (value!142745 (h!34119 l!6611))))))))

(declare-fun b!2466176 () Bool)

(declare-fun size!22352 (List!28817) Int)

(assert (=> b!2466176 (= e!1564052 (= (size!22348 (h!34119 l!6611)) (size!22352 (originalCharacters!5234 (h!34119 l!6611)))))))

(assert (= (and d!710078 res!1044580) b!2466175))

(assert (= (and b!2466175 res!1044581) b!2466176))

(declare-fun b_lambda!75577 () Bool)

(assert (=> (not b_lambda!75577) (not b!2466175)))

(declare-fun t!209342 () Bool)

(declare-fun tb!139329 () Bool)

(assert (=> (and b!2465969 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611))))) t!209342) tb!139329))

(declare-fun b!2466181 () Bool)

(declare-fun e!1564055 () Bool)

(declare-fun tp!786597 () Bool)

(declare-fun inv!38809 (Conc!9178) Bool)

(assert (=> b!2466181 (= e!1564055 (and (inv!38809 (c!393238 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (value!142745 (h!34119 l!6611))))) tp!786597))))

(declare-fun result!171958 () Bool)

(declare-fun inv!38810 (BalanceConc!17970) Bool)

(assert (=> tb!139329 (= result!171958 (and (inv!38810 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (value!142745 (h!34119 l!6611)))) e!1564055))))

(assert (= tb!139329 b!2466181))

(declare-fun m!2835647 () Bool)

(assert (=> b!2466181 m!2835647))

(declare-fun m!2835649 () Bool)

(assert (=> tb!139329 m!2835649))

(assert (=> b!2466175 t!209342))

(declare-fun b_and!186413 () Bool)

(assert (= b_and!186375 (and (=> t!209342 result!171958) b_and!186413)))

(declare-fun t!209344 () Bool)

(declare-fun tb!139331 () Bool)

(assert (=> (and b!2465973 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611))))) t!209344) tb!139331))

(declare-fun result!171962 () Bool)

(assert (= result!171962 result!171958))

(assert (=> b!2466175 t!209344))

(declare-fun b_and!186415 () Bool)

(assert (= b_and!186379 (and (=> t!209344 result!171962) b_and!186415)))

(declare-fun tb!139333 () Bool)

(declare-fun t!209346 () Bool)

(assert (=> (and b!2465971 (= (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611))))) t!209346) tb!139333))

(declare-fun result!171964 () Bool)

(assert (= result!171964 result!171958))

(assert (=> b!2466175 t!209346))

(declare-fun b_and!186417 () Bool)

(assert (= b_and!186383 (and (=> t!209346 result!171964) b_and!186417)))

(declare-fun t!209348 () Bool)

(declare-fun tb!139335 () Bool)

(assert (=> (and b!2465977 (= (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611))))) t!209348) tb!139335))

(declare-fun result!171966 () Bool)

(assert (= result!171966 result!171958))

(assert (=> b!2466175 t!209348))

(declare-fun b_and!186419 () Bool)

(assert (= b_and!186387 (and (=> t!209348 result!171966) b_and!186419)))

(declare-fun m!2835651 () Bool)

(assert (=> d!710078 m!2835651))

(declare-fun m!2835653 () Bool)

(assert (=> b!2466175 m!2835653))

(assert (=> b!2466175 m!2835653))

(declare-fun m!2835655 () Bool)

(assert (=> b!2466175 m!2835655))

(declare-fun m!2835657 () Bool)

(assert (=> b!2466176 m!2835657))

(assert (=> b!2465964 d!710078))

(declare-fun d!710080 () Bool)

(declare-fun res!1044591 () Bool)

(declare-fun e!1564065 () Bool)

(assert (=> d!710080 (=> res!1044591 e!1564065)))

(assert (=> d!710080 (= res!1044591 (or (not (is-Cons!28718 l!6611)) (not (is-Cons!28718 (t!209325 l!6611)))))))

(assert (=> d!710080 (= (tokensListTwoByTwoPredicateSeparableList!604 thiss!27932 l!6611 rules!4472) e!1564065)))

(declare-fun b!2466190 () Bool)

(declare-fun e!1564064 () Bool)

(assert (=> b!2466190 (= e!1564065 e!1564064)))

(declare-fun res!1044590 () Bool)

(assert (=> b!2466190 (=> (not res!1044590) (not e!1564064))))

(assert (=> b!2466190 (= res!1044590 (separableTokensPredicate!845 thiss!27932 (h!34119 l!6611) (h!34119 (t!209325 l!6611)) rules!4472))))

(declare-fun lt!882266 () Unit!42058)

(declare-fun Unit!42063 () Unit!42058)

(assert (=> b!2466190 (= lt!882266 Unit!42063)))

(declare-fun size!22353 (BalanceConc!17970) Int)

(assert (=> b!2466190 (> (size!22353 (charsOf!2816 (h!34119 (t!209325 l!6611)))) 0)))

(declare-fun lt!882270 () Unit!42058)

(declare-fun Unit!42064 () Unit!42058)

(assert (=> b!2466190 (= lt!882270 Unit!42064)))

(assert (=> b!2466190 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 (h!34119 (t!209325 l!6611)))))

(declare-fun lt!882269 () Unit!42058)

(declare-fun Unit!42065 () Unit!42058)

(assert (=> b!2466190 (= lt!882269 Unit!42065)))

(assert (=> b!2466190 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 (h!34119 l!6611))))

(declare-fun lt!882268 () Unit!42058)

(declare-fun lt!882271 () Unit!42058)

(assert (=> b!2466190 (= lt!882268 lt!882271)))

(assert (=> b!2466190 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 (h!34119 (t!209325 l!6611)))))

(assert (=> b!2466190 (= lt!882271 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 thiss!27932 rules!4472 l!6611 (h!34119 (t!209325 l!6611))))))

(declare-fun lt!882267 () Unit!42058)

(declare-fun lt!882265 () Unit!42058)

(assert (=> b!2466190 (= lt!882267 lt!882265)))

(assert (=> b!2466190 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 (h!34119 l!6611))))

(assert (=> b!2466190 (= lt!882265 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 thiss!27932 rules!4472 l!6611 (h!34119 l!6611)))))

(declare-fun b!2466191 () Bool)

(assert (=> b!2466191 (= e!1564064 (tokensListTwoByTwoPredicateSeparableList!604 thiss!27932 (Cons!28718 (h!34119 (t!209325 l!6611)) (t!209325 (t!209325 l!6611))) rules!4472))))

(assert (= (and d!710080 (not res!1044591)) b!2466190))

(assert (= (and b!2466190 res!1044590) b!2466191))

(declare-fun m!2835659 () Bool)

(assert (=> b!2466190 m!2835659))

(declare-fun m!2835661 () Bool)

(assert (=> b!2466190 m!2835661))

(declare-fun m!2835663 () Bool)

(assert (=> b!2466190 m!2835663))

(assert (=> b!2466190 m!2835659))

(declare-fun m!2835665 () Bool)

(assert (=> b!2466190 m!2835665))

(assert (=> b!2466190 m!2835617))

(declare-fun m!2835667 () Bool)

(assert (=> b!2466190 m!2835667))

(declare-fun m!2835669 () Bool)

(assert (=> b!2466190 m!2835669))

(declare-fun m!2835671 () Bool)

(assert (=> b!2466191 m!2835671))

(assert (=> b!2465975 d!710080))

(declare-fun d!710082 () Bool)

(declare-fun res!1044592 () Bool)

(declare-fun e!1564066 () Bool)

(assert (=> d!710082 (=> (not res!1044592) (not e!1564066))))

(assert (=> d!710082 (= res!1044592 (not (isEmpty!16694 (originalCharacters!5234 t2!67))))))

(assert (=> d!710082 (= (inv!38806 t2!67) e!1564066)))

(declare-fun b!2466192 () Bool)

(declare-fun res!1044593 () Bool)

(assert (=> b!2466192 (=> (not res!1044593) (not e!1564066))))

(assert (=> b!2466192 (= res!1044593 (= (originalCharacters!5234 t2!67) (list!11120 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (value!142745 t2!67)))))))

(declare-fun b!2466193 () Bool)

(assert (=> b!2466193 (= e!1564066 (= (size!22348 t2!67) (size!22352 (originalCharacters!5234 t2!67))))))

(assert (= (and d!710082 res!1044592) b!2466192))

(assert (= (and b!2466192 res!1044593) b!2466193))

(declare-fun b_lambda!75579 () Bool)

(assert (=> (not b_lambda!75579) (not b!2466192)))

(declare-fun t!209352 () Bool)

(declare-fun tb!139337 () Bool)

(assert (=> (and b!2465969 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 t2!67)))) t!209352) tb!139337))

(declare-fun b!2466194 () Bool)

(declare-fun e!1564067 () Bool)

(declare-fun tp!786598 () Bool)

(assert (=> b!2466194 (= e!1564067 (and (inv!38809 (c!393238 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (value!142745 t2!67)))) tp!786598))))

(declare-fun result!171968 () Bool)

(assert (=> tb!139337 (= result!171968 (and (inv!38810 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (value!142745 t2!67))) e!1564067))))

(assert (= tb!139337 b!2466194))

(declare-fun m!2835673 () Bool)

(assert (=> b!2466194 m!2835673))

(declare-fun m!2835675 () Bool)

(assert (=> tb!139337 m!2835675))

(assert (=> b!2466192 t!209352))

(declare-fun b_and!186421 () Bool)

(assert (= b_and!186413 (and (=> t!209352 result!171968) b_and!186421)))

(declare-fun t!209354 () Bool)

(declare-fun tb!139339 () Bool)

(assert (=> (and b!2465973 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toChars!6187 (transformation!4468 (rule!6826 t2!67)))) t!209354) tb!139339))

(declare-fun result!171970 () Bool)

(assert (= result!171970 result!171968))

(assert (=> b!2466192 t!209354))

(declare-fun b_and!186423 () Bool)

(assert (= b_and!186415 (and (=> t!209354 result!171970) b_and!186423)))

(declare-fun t!209356 () Bool)

(declare-fun tb!139341 () Bool)

(assert (=> (and b!2465971 (= (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toChars!6187 (transformation!4468 (rule!6826 t2!67)))) t!209356) tb!139341))

(declare-fun result!171972 () Bool)

(assert (= result!171972 result!171968))

(assert (=> b!2466192 t!209356))

(declare-fun b_and!186425 () Bool)

(assert (= b_and!186417 (and (=> t!209356 result!171972) b_and!186425)))

(declare-fun t!209358 () Bool)

(declare-fun tb!139343 () Bool)

(assert (=> (and b!2465977 (= (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toChars!6187 (transformation!4468 (rule!6826 t2!67)))) t!209358) tb!139343))

(declare-fun result!171974 () Bool)

(assert (= result!171974 result!171968))

(assert (=> b!2466192 t!209358))

(declare-fun b_and!186427 () Bool)

(assert (= b_and!186419 (and (=> t!209358 result!171974) b_and!186427)))

(declare-fun m!2835677 () Bool)

(assert (=> d!710082 m!2835677))

(declare-fun m!2835679 () Bool)

(assert (=> b!2466192 m!2835679))

(assert (=> b!2466192 m!2835679))

(declare-fun m!2835681 () Bool)

(assert (=> b!2466192 m!2835681))

(declare-fun m!2835683 () Bool)

(assert (=> b!2466193 m!2835683))

(assert (=> start!240480 d!710082))

(declare-fun d!710084 () Bool)

(declare-fun res!1044594 () Bool)

(declare-fun e!1564068 () Bool)

(assert (=> d!710084 (=> (not res!1044594) (not e!1564068))))

(assert (=> d!710084 (= res!1044594 (not (isEmpty!16694 (originalCharacters!5234 t1!67))))))

(assert (=> d!710084 (= (inv!38806 t1!67) e!1564068)))

(declare-fun b!2466195 () Bool)

(declare-fun res!1044595 () Bool)

(assert (=> b!2466195 (=> (not res!1044595) (not e!1564068))))

(assert (=> b!2466195 (= res!1044595 (= (originalCharacters!5234 t1!67) (list!11120 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (value!142745 t1!67)))))))

(declare-fun b!2466196 () Bool)

(assert (=> b!2466196 (= e!1564068 (= (size!22348 t1!67) (size!22352 (originalCharacters!5234 t1!67))))))

(assert (= (and d!710084 res!1044594) b!2466195))

(assert (= (and b!2466195 res!1044595) b!2466196))

(declare-fun b_lambda!75581 () Bool)

(assert (=> (not b_lambda!75581) (not b!2466195)))

(declare-fun tb!139345 () Bool)

(declare-fun t!209360 () Bool)

(assert (=> (and b!2465969 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 t1!67)))) t!209360) tb!139345))

(declare-fun b!2466197 () Bool)

(declare-fun e!1564069 () Bool)

(declare-fun tp!786599 () Bool)

(assert (=> b!2466197 (= e!1564069 (and (inv!38809 (c!393238 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (value!142745 t1!67)))) tp!786599))))

(declare-fun result!171976 () Bool)

(assert (=> tb!139345 (= result!171976 (and (inv!38810 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (value!142745 t1!67))) e!1564069))))

(assert (= tb!139345 b!2466197))

(declare-fun m!2835685 () Bool)

(assert (=> b!2466197 m!2835685))

(declare-fun m!2835687 () Bool)

(assert (=> tb!139345 m!2835687))

(assert (=> b!2466195 t!209360))

(declare-fun b_and!186429 () Bool)

(assert (= b_and!186421 (and (=> t!209360 result!171976) b_and!186429)))

(declare-fun t!209362 () Bool)

(declare-fun tb!139347 () Bool)

(assert (=> (and b!2465973 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toChars!6187 (transformation!4468 (rule!6826 t1!67)))) t!209362) tb!139347))

(declare-fun result!171978 () Bool)

(assert (= result!171978 result!171976))

(assert (=> b!2466195 t!209362))

(declare-fun b_and!186431 () Bool)

(assert (= b_and!186423 (and (=> t!209362 result!171978) b_and!186431)))

(declare-fun t!209364 () Bool)

(declare-fun tb!139349 () Bool)

(assert (=> (and b!2465971 (= (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toChars!6187 (transformation!4468 (rule!6826 t1!67)))) t!209364) tb!139349))

(declare-fun result!171980 () Bool)

(assert (= result!171980 result!171976))

(assert (=> b!2466195 t!209364))

(declare-fun b_and!186433 () Bool)

(assert (= b_and!186425 (and (=> t!209364 result!171980) b_and!186433)))

(declare-fun t!209366 () Bool)

(declare-fun tb!139351 () Bool)

(assert (=> (and b!2465977 (= (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toChars!6187 (transformation!4468 (rule!6826 t1!67)))) t!209366) tb!139351))

(declare-fun result!171982 () Bool)

(assert (= result!171982 result!171976))

(assert (=> b!2466195 t!209366))

(declare-fun b_and!186435 () Bool)

(assert (= b_and!186427 (and (=> t!209366 result!171982) b_and!186435)))

(declare-fun m!2835689 () Bool)

(assert (=> d!710084 m!2835689))

(declare-fun m!2835691 () Bool)

(assert (=> b!2466195 m!2835691))

(assert (=> b!2466195 m!2835691))

(declare-fun m!2835693 () Bool)

(assert (=> b!2466195 m!2835693))

(declare-fun m!2835695 () Bool)

(assert (=> b!2466196 m!2835695))

(assert (=> start!240480 d!710084))

(declare-fun d!710086 () Bool)

(assert (=> d!710086 (= (inv!38802 (tag!4958 (rule!6826 t2!67))) (= (mod (str.len (value!142744 (tag!4958 (rule!6826 t2!67)))) 2) 0))))

(assert (=> b!2465976 d!710086))

(declare-fun d!710088 () Bool)

(declare-fun res!1044596 () Bool)

(declare-fun e!1564070 () Bool)

(assert (=> d!710088 (=> (not res!1044596) (not e!1564070))))

(assert (=> d!710088 (= res!1044596 (semiInverseModEq!1837 (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toValue!6328 (transformation!4468 (rule!6826 t2!67)))))))

(assert (=> d!710088 (= (inv!38805 (transformation!4468 (rule!6826 t2!67))) e!1564070)))

(declare-fun b!2466198 () Bool)

(assert (=> b!2466198 (= e!1564070 (equivClasses!1748 (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toValue!6328 (transformation!4468 (rule!6826 t2!67)))))))

(assert (= (and d!710088 res!1044596) b!2466198))

(declare-fun m!2835697 () Bool)

(assert (=> d!710088 m!2835697))

(declare-fun m!2835699 () Bool)

(assert (=> b!2466198 m!2835699))

(assert (=> b!2465976 d!710088))

(declare-fun d!710090 () Bool)

(declare-fun lt!882274 () Int)

(assert (=> d!710090 (>= lt!882274 0)))

(declare-fun e!1564073 () Int)

(assert (=> d!710090 (= lt!882274 e!1564073)))

(declare-fun c!393270 () Bool)

(assert (=> d!710090 (= c!393270 (is-Nil!28718 l!6611))))

(assert (=> d!710090 (= (size!22349 l!6611) lt!882274)))

(declare-fun b!2466203 () Bool)

(assert (=> b!2466203 (= e!1564073 0)))

(declare-fun b!2466204 () Bool)

(assert (=> b!2466204 (= e!1564073 (+ 1 (size!22349 (t!209325 l!6611))))))

(assert (= (and d!710090 c!393270) b!2466203))

(assert (= (and d!710090 (not c!393270)) b!2466204))

(declare-fun m!2835701 () Bool)

(assert (=> b!2466204 m!2835701))

(assert (=> b!2465955 d!710090))

(declare-fun b!2466205 () Bool)

(declare-fun e!1564074 () Bool)

(assert (=> b!2466205 (= e!1564074 (inv!17 (value!142745 t2!67)))))

(declare-fun b!2466206 () Bool)

(declare-fun e!1564076 () Bool)

(assert (=> b!2466206 (= e!1564076 (inv!15 (value!142745 t2!67)))))

(declare-fun b!2466207 () Bool)

(declare-fun e!1564075 () Bool)

(assert (=> b!2466207 (= e!1564075 e!1564074)))

(declare-fun c!393271 () Bool)

(assert (=> b!2466207 (= c!393271 (is-IntegerValue!13963 (value!142745 t2!67)))))

(declare-fun b!2466208 () Bool)

(declare-fun res!1044597 () Bool)

(assert (=> b!2466208 (=> res!1044597 e!1564076)))

(assert (=> b!2466208 (= res!1044597 (not (is-IntegerValue!13964 (value!142745 t2!67))))))

(assert (=> b!2466208 (= e!1564074 e!1564076)))

(declare-fun b!2466209 () Bool)

(assert (=> b!2466209 (= e!1564075 (inv!16 (value!142745 t2!67)))))

(declare-fun d!710092 () Bool)

(declare-fun c!393272 () Bool)

(assert (=> d!710092 (= c!393272 (is-IntegerValue!13962 (value!142745 t2!67)))))

(assert (=> d!710092 (= (inv!21 (value!142745 t2!67)) e!1564075)))

(assert (= (and d!710092 c!393272) b!2466209))

(assert (= (and d!710092 (not c!393272)) b!2466207))

(assert (= (and b!2466207 c!393271) b!2466205))

(assert (= (and b!2466207 (not c!393271)) b!2466208))

(assert (= (and b!2466208 (not res!1044597)) b!2466206))

(declare-fun m!2835703 () Bool)

(assert (=> b!2466205 m!2835703))

(declare-fun m!2835705 () Bool)

(assert (=> b!2466206 m!2835705))

(declare-fun m!2835707 () Bool)

(assert (=> b!2466209 m!2835707))

(assert (=> b!2465962 d!710092))

(declare-fun b!2466210 () Bool)

(declare-fun e!1564077 () Bool)

(assert (=> b!2466210 (= e!1564077 (inv!17 (value!142745 t1!67)))))

(declare-fun b!2466211 () Bool)

(declare-fun e!1564079 () Bool)

(assert (=> b!2466211 (= e!1564079 (inv!15 (value!142745 t1!67)))))

(declare-fun b!2466212 () Bool)

(declare-fun e!1564078 () Bool)

(assert (=> b!2466212 (= e!1564078 e!1564077)))

(declare-fun c!393273 () Bool)

(assert (=> b!2466212 (= c!393273 (is-IntegerValue!13963 (value!142745 t1!67)))))

(declare-fun b!2466213 () Bool)

(declare-fun res!1044598 () Bool)

(assert (=> b!2466213 (=> res!1044598 e!1564079)))

(assert (=> b!2466213 (= res!1044598 (not (is-IntegerValue!13964 (value!142745 t1!67))))))

(assert (=> b!2466213 (= e!1564077 e!1564079)))

(declare-fun b!2466214 () Bool)

(assert (=> b!2466214 (= e!1564078 (inv!16 (value!142745 t1!67)))))

(declare-fun d!710094 () Bool)

(declare-fun c!393274 () Bool)

(assert (=> d!710094 (= c!393274 (is-IntegerValue!13962 (value!142745 t1!67)))))

(assert (=> d!710094 (= (inv!21 (value!142745 t1!67)) e!1564078)))

(assert (= (and d!710094 c!393274) b!2466214))

(assert (= (and d!710094 (not c!393274)) b!2466212))

(assert (= (and b!2466212 c!393273) b!2466210))

(assert (= (and b!2466212 (not c!393273)) b!2466213))

(assert (= (and b!2466213 (not res!1044598)) b!2466211))

(declare-fun m!2835709 () Bool)

(assert (=> b!2466210 m!2835709))

(declare-fun m!2835711 () Bool)

(assert (=> b!2466211 m!2835711))

(declare-fun m!2835713 () Bool)

(assert (=> b!2466214 m!2835713))

(assert (=> b!2465972 d!710094))

(declare-fun d!710096 () Bool)

(assert (=> d!710096 (= (isEmpty!16691 rules!4472) (is-Nil!28719 rules!4472))))

(assert (=> b!2465974 d!710096))

(declare-fun d!710098 () Bool)

(assert (=> d!710098 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 t1!67)))

(declare-fun lt!882277 () Unit!42058)

(declare-fun choose!14574 (LexerInterface!4065 List!28819 List!28818 Token!8406) Unit!42058)

(assert (=> d!710098 (= lt!882277 (choose!14574 thiss!27932 rules!4472 l!6611 t1!67))))

(assert (=> d!710098 (not (isEmpty!16691 rules!4472))))

(assert (=> d!710098 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 thiss!27932 rules!4472 l!6611 t1!67) lt!882277)))

(declare-fun bs!466654 () Bool)

(assert (= bs!466654 d!710098))

(assert (=> bs!466654 m!2835433))

(declare-fun m!2835715 () Bool)

(assert (=> bs!466654 m!2835715))

(assert (=> bs!466654 m!2835403))

(assert (=> b!2465963 d!710098))

(declare-fun d!710100 () Bool)

(assert (=> d!710100 (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 t2!67)))

(declare-fun lt!882278 () Unit!42058)

(assert (=> d!710100 (= lt!882278 (choose!14574 thiss!27932 rules!4472 l!6611 t2!67))))

(assert (=> d!710100 (not (isEmpty!16691 rules!4472))))

(assert (=> d!710100 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!661 thiss!27932 rules!4472 l!6611 t2!67) lt!882278)))

(declare-fun bs!466655 () Bool)

(assert (= bs!466655 d!710100))

(assert (=> bs!466655 m!2835431))

(declare-fun m!2835717 () Bool)

(assert (=> bs!466655 m!2835717))

(assert (=> bs!466655 m!2835403))

(assert (=> b!2465963 d!710100))

(declare-fun d!710102 () Bool)

(declare-fun lt!882281 () BalanceConc!17970)

(assert (=> d!710102 (= (list!11120 lt!882281) (originalCharacters!5234 t2!67))))

(assert (=> d!710102 (= lt!882281 (dynLambda!12330 (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (value!142745 t2!67)))))

(assert (=> d!710102 (= (charsOf!2816 t2!67) lt!882281)))

(declare-fun b_lambda!75583 () Bool)

(assert (=> (not b_lambda!75583) (not d!710102)))

(assert (=> d!710102 t!209352))

(declare-fun b_and!186437 () Bool)

(assert (= b_and!186429 (and (=> t!209352 result!171968) b_and!186437)))

(assert (=> d!710102 t!209354))

(declare-fun b_and!186439 () Bool)

(assert (= b_and!186431 (and (=> t!209354 result!171970) b_and!186439)))

(assert (=> d!710102 t!209356))

(declare-fun b_and!186441 () Bool)

(assert (= b_and!186433 (and (=> t!209356 result!171972) b_and!186441)))

(assert (=> d!710102 t!209358))

(declare-fun b_and!186443 () Bool)

(assert (= b_and!186435 (and (=> t!209358 result!171974) b_and!186443)))

(declare-fun m!2835719 () Bool)

(assert (=> d!710102 m!2835719))

(assert (=> d!710102 m!2835679))

(assert (=> b!2465963 d!710102))

(declare-fun d!710104 () Bool)

(declare-fun lt!882288 () Bool)

(declare-fun e!1564096 () Bool)

(assert (=> d!710104 (= lt!882288 e!1564096)))

(declare-fun res!1044609 () Bool)

(assert (=> d!710104 (=> (not res!1044609) (not e!1564096))))

(declare-datatypes ((IArray!18365 0))(
  ( (IArray!18366 (innerList!9240 List!28818)) )
))
(declare-datatypes ((Conc!9180 0))(
  ( (Node!9180 (left!22053 Conc!9180) (right!22383 Conc!9180) (csize!18590 Int) (cheight!9391 Int)) (Leaf!13722 (xs!12160 IArray!18365) (csize!18591 Int)) (Empty!9180) )
))
(declare-datatypes ((BalanceConc!17974 0))(
  ( (BalanceConc!17975 (c!393275 Conc!9180)) )
))
(declare-fun list!11121 (BalanceConc!17974) List!28818)

(declare-datatypes ((tuple2!28232 0))(
  ( (tuple2!28233 (_1!16657 BalanceConc!17974) (_2!16657 BalanceConc!17970)) )
))
(declare-fun lex!1856 (LexerInterface!4065 List!28819 BalanceConc!17970) tuple2!28232)

(declare-fun print!1578 (LexerInterface!4065 BalanceConc!17974) BalanceConc!17970)

(declare-fun singletonSeq!1983 (Token!8406) BalanceConc!17974)

(assert (=> d!710104 (= res!1044609 (= (list!11121 (_1!16657 (lex!1856 thiss!27932 rules!4472 (print!1578 thiss!27932 (singletonSeq!1983 t1!67))))) (list!11121 (singletonSeq!1983 t1!67))))))

(declare-fun e!1564095 () Bool)

(assert (=> d!710104 (= lt!882288 e!1564095)))

(declare-fun res!1044608 () Bool)

(assert (=> d!710104 (=> (not res!1044608) (not e!1564095))))

(declare-fun lt!882287 () tuple2!28232)

(declare-fun size!22354 (BalanceConc!17974) Int)

(assert (=> d!710104 (= res!1044608 (= (size!22354 (_1!16657 lt!882287)) 1))))

(assert (=> d!710104 (= lt!882287 (lex!1856 thiss!27932 rules!4472 (print!1578 thiss!27932 (singletonSeq!1983 t1!67))))))

(assert (=> d!710104 (not (isEmpty!16691 rules!4472))))

(assert (=> d!710104 (= (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 t1!67) lt!882288)))

(declare-fun b!2466236 () Bool)

(declare-fun res!1044607 () Bool)

(assert (=> b!2466236 (=> (not res!1044607) (not e!1564095))))

(declare-fun apply!6755 (BalanceConc!17974 Int) Token!8406)

(assert (=> b!2466236 (= res!1044607 (= (apply!6755 (_1!16657 lt!882287) 0) t1!67))))

(declare-fun b!2466237 () Bool)

(assert (=> b!2466237 (= e!1564095 (isEmpty!16690 (_2!16657 lt!882287)))))

(declare-fun b!2466238 () Bool)

(assert (=> b!2466238 (= e!1564096 (isEmpty!16690 (_2!16657 (lex!1856 thiss!27932 rules!4472 (print!1578 thiss!27932 (singletonSeq!1983 t1!67))))))))

(assert (= (and d!710104 res!1044608) b!2466236))

(assert (= (and b!2466236 res!1044607) b!2466237))

(assert (= (and d!710104 res!1044609) b!2466238))

(declare-fun m!2835725 () Bool)

(assert (=> d!710104 m!2835725))

(declare-fun m!2835727 () Bool)

(assert (=> d!710104 m!2835727))

(assert (=> d!710104 m!2835725))

(assert (=> d!710104 m!2835403))

(assert (=> d!710104 m!2835725))

(declare-fun m!2835729 () Bool)

(assert (=> d!710104 m!2835729))

(assert (=> d!710104 m!2835727))

(declare-fun m!2835731 () Bool)

(assert (=> d!710104 m!2835731))

(declare-fun m!2835733 () Bool)

(assert (=> d!710104 m!2835733))

(declare-fun m!2835735 () Bool)

(assert (=> d!710104 m!2835735))

(declare-fun m!2835737 () Bool)

(assert (=> b!2466236 m!2835737))

(declare-fun m!2835739 () Bool)

(assert (=> b!2466237 m!2835739))

(assert (=> b!2466238 m!2835725))

(assert (=> b!2466238 m!2835725))

(assert (=> b!2466238 m!2835727))

(assert (=> b!2466238 m!2835727))

(assert (=> b!2466238 m!2835731))

(declare-fun m!2835741 () Bool)

(assert (=> b!2466238 m!2835741))

(assert (=> b!2465963 d!710104))

(declare-fun d!710108 () Bool)

(declare-fun lt!882291 () Bool)

(assert (=> d!710108 (= lt!882291 (isEmpty!16694 (list!11120 (charsOf!2816 t2!67))))))

(declare-fun isEmpty!16695 (Conc!9178) Bool)

(assert (=> d!710108 (= lt!882291 (isEmpty!16695 (c!393238 (charsOf!2816 t2!67))))))

(assert (=> d!710108 (= (isEmpty!16690 (charsOf!2816 t2!67)) lt!882291)))

(declare-fun bs!466656 () Bool)

(assert (= bs!466656 d!710108))

(assert (=> bs!466656 m!2835429))

(declare-fun m!2835743 () Bool)

(assert (=> bs!466656 m!2835743))

(assert (=> bs!466656 m!2835743))

(declare-fun m!2835745 () Bool)

(assert (=> bs!466656 m!2835745))

(declare-fun m!2835747 () Bool)

(assert (=> bs!466656 m!2835747))

(assert (=> b!2465963 d!710108))

(declare-fun d!710110 () Bool)

(declare-fun lt!882293 () Bool)

(declare-fun e!1564098 () Bool)

(assert (=> d!710110 (= lt!882293 e!1564098)))

(declare-fun res!1044612 () Bool)

(assert (=> d!710110 (=> (not res!1044612) (not e!1564098))))

(assert (=> d!710110 (= res!1044612 (= (list!11121 (_1!16657 (lex!1856 thiss!27932 rules!4472 (print!1578 thiss!27932 (singletonSeq!1983 t2!67))))) (list!11121 (singletonSeq!1983 t2!67))))))

(declare-fun e!1564097 () Bool)

(assert (=> d!710110 (= lt!882293 e!1564097)))

(declare-fun res!1044611 () Bool)

(assert (=> d!710110 (=> (not res!1044611) (not e!1564097))))

(declare-fun lt!882292 () tuple2!28232)

(assert (=> d!710110 (= res!1044611 (= (size!22354 (_1!16657 lt!882292)) 1))))

(assert (=> d!710110 (= lt!882292 (lex!1856 thiss!27932 rules!4472 (print!1578 thiss!27932 (singletonSeq!1983 t2!67))))))

(assert (=> d!710110 (not (isEmpty!16691 rules!4472))))

(assert (=> d!710110 (= (rulesProduceIndividualToken!1800 thiss!27932 rules!4472 t2!67) lt!882293)))

(declare-fun b!2466239 () Bool)

(declare-fun res!1044610 () Bool)

(assert (=> b!2466239 (=> (not res!1044610) (not e!1564097))))

(assert (=> b!2466239 (= res!1044610 (= (apply!6755 (_1!16657 lt!882292) 0) t2!67))))

(declare-fun b!2466240 () Bool)

(assert (=> b!2466240 (= e!1564097 (isEmpty!16690 (_2!16657 lt!882292)))))

(declare-fun b!2466241 () Bool)

(assert (=> b!2466241 (= e!1564098 (isEmpty!16690 (_2!16657 (lex!1856 thiss!27932 rules!4472 (print!1578 thiss!27932 (singletonSeq!1983 t2!67))))))))

(assert (= (and d!710110 res!1044611) b!2466239))

(assert (= (and b!2466239 res!1044610) b!2466240))

(assert (= (and d!710110 res!1044612) b!2466241))

(declare-fun m!2835749 () Bool)

(assert (=> d!710110 m!2835749))

(declare-fun m!2835751 () Bool)

(assert (=> d!710110 m!2835751))

(assert (=> d!710110 m!2835749))

(assert (=> d!710110 m!2835403))

(assert (=> d!710110 m!2835749))

(declare-fun m!2835753 () Bool)

(assert (=> d!710110 m!2835753))

(assert (=> d!710110 m!2835751))

(declare-fun m!2835755 () Bool)

(assert (=> d!710110 m!2835755))

(declare-fun m!2835757 () Bool)

(assert (=> d!710110 m!2835757))

(declare-fun m!2835759 () Bool)

(assert (=> d!710110 m!2835759))

(declare-fun m!2835761 () Bool)

(assert (=> b!2466239 m!2835761))

(declare-fun m!2835763 () Bool)

(assert (=> b!2466240 m!2835763))

(assert (=> b!2466241 m!2835749))

(assert (=> b!2466241 m!2835749))

(assert (=> b!2466241 m!2835751))

(assert (=> b!2466241 m!2835751))

(assert (=> b!2466241 m!2835755))

(declare-fun m!2835765 () Bool)

(assert (=> b!2466241 m!2835765))

(assert (=> b!2465963 d!710110))

(declare-fun e!1564101 () Bool)

(assert (=> b!2465960 (= tp!786533 e!1564101)))

(declare-fun b!2466252 () Bool)

(declare-fun tp_is_empty!11937 () Bool)

(assert (=> b!2466252 (= e!1564101 tp_is_empty!11937)))

(declare-fun b!2466254 () Bool)

(declare-fun tp!786611 () Bool)

(assert (=> b!2466254 (= e!1564101 tp!786611)))

(declare-fun b!2466255 () Bool)

(declare-fun tp!786610 () Bool)

(declare-fun tp!786613 () Bool)

(assert (=> b!2466255 (= e!1564101 (and tp!786610 tp!786613))))

(declare-fun b!2466253 () Bool)

(declare-fun tp!786614 () Bool)

(declare-fun tp!786612 () Bool)

(assert (=> b!2466253 (= e!1564101 (and tp!786614 tp!786612))))

(assert (= (and b!2465960 (is-ElementMatch!7256 (regex!4468 (rule!6826 (h!34119 l!6611))))) b!2466252))

(assert (= (and b!2465960 (is-Concat!11911 (regex!4468 (rule!6826 (h!34119 l!6611))))) b!2466253))

(assert (= (and b!2465960 (is-Star!7256 (regex!4468 (rule!6826 (h!34119 l!6611))))) b!2466254))

(assert (= (and b!2465960 (is-Union!7256 (regex!4468 (rule!6826 (h!34119 l!6611))))) b!2466255))

(declare-fun b!2466260 () Bool)

(declare-fun e!1564104 () Bool)

(declare-fun tp!786617 () Bool)

(assert (=> b!2466260 (= e!1564104 (and tp_is_empty!11937 tp!786617))))

(assert (=> b!2465967 (= tp!786535 e!1564104)))

(assert (= (and b!2465967 (is-Cons!28717 (originalCharacters!5234 (h!34119 l!6611)))) b!2466260))

(declare-fun e!1564105 () Bool)

(assert (=> b!2465968 (= tp!786526 e!1564105)))

(declare-fun b!2466261 () Bool)

(assert (=> b!2466261 (= e!1564105 tp_is_empty!11937)))

(declare-fun b!2466263 () Bool)

(declare-fun tp!786619 () Bool)

(assert (=> b!2466263 (= e!1564105 tp!786619)))

(declare-fun b!2466264 () Bool)

(declare-fun tp!786618 () Bool)

(declare-fun tp!786621 () Bool)

(assert (=> b!2466264 (= e!1564105 (and tp!786618 tp!786621))))

(declare-fun b!2466262 () Bool)

(declare-fun tp!786622 () Bool)

(declare-fun tp!786620 () Bool)

(assert (=> b!2466262 (= e!1564105 (and tp!786622 tp!786620))))

(assert (= (and b!2465968 (is-ElementMatch!7256 (regex!4468 (rule!6826 t1!67)))) b!2466261))

(assert (= (and b!2465968 (is-Concat!11911 (regex!4468 (rule!6826 t1!67)))) b!2466262))

(assert (= (and b!2465968 (is-Star!7256 (regex!4468 (rule!6826 t1!67)))) b!2466263))

(assert (= (and b!2465968 (is-Union!7256 (regex!4468 (rule!6826 t1!67)))) b!2466264))

(declare-fun e!1564106 () Bool)

(assert (=> b!2465965 (= tp!786524 e!1564106)))

(declare-fun b!2466265 () Bool)

(assert (=> b!2466265 (= e!1564106 tp_is_empty!11937)))

(declare-fun b!2466267 () Bool)

(declare-fun tp!786624 () Bool)

(assert (=> b!2466267 (= e!1564106 tp!786624)))

(declare-fun b!2466268 () Bool)

(declare-fun tp!786623 () Bool)

(declare-fun tp!786626 () Bool)

(assert (=> b!2466268 (= e!1564106 (and tp!786623 tp!786626))))

(declare-fun b!2466266 () Bool)

(declare-fun tp!786627 () Bool)

(declare-fun tp!786625 () Bool)

(assert (=> b!2466266 (= e!1564106 (and tp!786627 tp!786625))))

(assert (= (and b!2465965 (is-ElementMatch!7256 (regex!4468 (h!34120 rules!4472)))) b!2466265))

(assert (= (and b!2465965 (is-Concat!11911 (regex!4468 (h!34120 rules!4472)))) b!2466266))

(assert (= (and b!2465965 (is-Star!7256 (regex!4468 (h!34120 rules!4472)))) b!2466267))

(assert (= (and b!2465965 (is-Union!7256 (regex!4468 (h!34120 rules!4472)))) b!2466268))

(declare-fun b!2466282 () Bool)

(declare-fun b_free!70981 () Bool)

(declare-fun b_next!71685 () Bool)

(assert (=> b!2466282 (= b_free!70981 (not b_next!71685))))

(declare-fun tp!786638 () Bool)

(declare-fun b_and!186445 () Bool)

(assert (=> b!2466282 (= tp!786638 b_and!186445)))

(declare-fun b_free!70983 () Bool)

(declare-fun b_next!71687 () Bool)

(assert (=> b!2466282 (= b_free!70983 (not b_next!71687))))

(declare-fun t!209370 () Bool)

(declare-fun tb!139353 () Bool)

(assert (=> (and b!2466282 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611))))) t!209370) tb!139353))

(declare-fun result!171990 () Bool)

(assert (= result!171990 result!171958))

(assert (=> b!2466175 t!209370))

(declare-fun t!209372 () Bool)

(declare-fun tb!139355 () Bool)

(assert (=> (and b!2466282 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 t2!67)))) t!209372) tb!139355))

(declare-fun result!171992 () Bool)

(assert (= result!171992 result!171968))

(assert (=> b!2466192 t!209372))

(declare-fun tb!139357 () Bool)

(declare-fun t!209374 () Bool)

(assert (=> (and b!2466282 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 t1!67)))) t!209374) tb!139357))

(declare-fun result!171994 () Bool)

(assert (= result!171994 result!171976))

(assert (=> b!2466195 t!209374))

(assert (=> d!710102 t!209372))

(declare-fun tp!786641 () Bool)

(declare-fun b_and!186447 () Bool)

(assert (=> b!2466282 (= tp!786641 (and (=> t!209370 result!171990) (=> t!209372 result!171992) (=> t!209374 result!171994) b_and!186447))))

(declare-fun e!1564121 () Bool)

(assert (=> b!2466282 (= e!1564121 (and tp!786638 tp!786641))))

(declare-fun e!1564122 () Bool)

(declare-fun b!2466281 () Bool)

(declare-fun tp!786639 () Bool)

(assert (=> b!2466281 (= e!1564122 (and tp!786639 (inv!38802 (tag!4958 (rule!6826 (h!34119 (t!209325 l!6611))))) (inv!38805 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) e!1564121))))

(declare-fun e!1564123 () Bool)

(assert (=> b!2465964 (= tp!786537 e!1564123)))

(declare-fun tp!786642 () Bool)

(declare-fun e!1564119 () Bool)

(declare-fun b!2466280 () Bool)

(assert (=> b!2466280 (= e!1564119 (and (inv!21 (value!142745 (h!34119 (t!209325 l!6611)))) e!1564122 tp!786642))))

(declare-fun tp!786640 () Bool)

(declare-fun b!2466279 () Bool)

(assert (=> b!2466279 (= e!1564123 (and (inv!38806 (h!34119 (t!209325 l!6611))) e!1564119 tp!786640))))

(assert (= b!2466281 b!2466282))

(assert (= b!2466280 b!2466281))

(assert (= b!2466279 b!2466280))

(assert (= (and b!2465964 (is-Cons!28718 (t!209325 l!6611))) b!2466279))

(declare-fun m!2835767 () Bool)

(assert (=> b!2466281 m!2835767))

(declare-fun m!2835769 () Bool)

(assert (=> b!2466281 m!2835769))

(declare-fun m!2835771 () Bool)

(assert (=> b!2466280 m!2835771))

(declare-fun m!2835773 () Bool)

(assert (=> b!2466279 m!2835773))

(declare-fun b!2466293 () Bool)

(declare-fun b_free!70985 () Bool)

(declare-fun b_next!71689 () Bool)

(assert (=> b!2466293 (= b_free!70985 (not b_next!71689))))

(declare-fun tp!786654 () Bool)

(declare-fun b_and!186449 () Bool)

(assert (=> b!2466293 (= tp!786654 b_and!186449)))

(declare-fun b_free!70987 () Bool)

(declare-fun b_next!71691 () Bool)

(assert (=> b!2466293 (= b_free!70987 (not b_next!71691))))

(declare-fun tb!139359 () Bool)

(declare-fun t!209376 () Bool)

(assert (=> (and b!2466293 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611))))) t!209376) tb!139359))

(declare-fun result!171998 () Bool)

(assert (= result!171998 result!171958))

(assert (=> b!2466175 t!209376))

(declare-fun t!209378 () Bool)

(declare-fun tb!139361 () Bool)

(assert (=> (and b!2466293 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 t2!67)))) t!209378) tb!139361))

(declare-fun result!172000 () Bool)

(assert (= result!172000 result!171968))

(assert (=> b!2466192 t!209378))

(declare-fun t!209380 () Bool)

(declare-fun tb!139363 () Bool)

(assert (=> (and b!2466293 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 t1!67)))) t!209380) tb!139363))

(declare-fun result!172002 () Bool)

(assert (= result!172002 result!171976))

(assert (=> b!2466195 t!209380))

(assert (=> d!710102 t!209378))

(declare-fun b_and!186451 () Bool)

(declare-fun tp!786653 () Bool)

(assert (=> b!2466293 (= tp!786653 (and (=> t!209376 result!171998) (=> t!209378 result!172000) (=> t!209380 result!172002) b_and!186451))))

(declare-fun e!1564136 () Bool)

(assert (=> b!2466293 (= e!1564136 (and tp!786654 tp!786653))))

(declare-fun tp!786652 () Bool)

(declare-fun e!1564133 () Bool)

(declare-fun b!2466292 () Bool)

(assert (=> b!2466292 (= e!1564133 (and tp!786652 (inv!38802 (tag!4958 (h!34120 (t!209326 rules!4472)))) (inv!38805 (transformation!4468 (h!34120 (t!209326 rules!4472)))) e!1564136))))

(declare-fun b!2466291 () Bool)

(declare-fun e!1564135 () Bool)

(declare-fun tp!786651 () Bool)

(assert (=> b!2466291 (= e!1564135 (and e!1564133 tp!786651))))

(assert (=> b!2465966 (= tp!786531 e!1564135)))

(assert (= b!2466292 b!2466293))

(assert (= b!2466291 b!2466292))

(assert (= (and b!2465966 (is-Cons!28719 (t!209326 rules!4472))) b!2466291))

(declare-fun m!2835775 () Bool)

(assert (=> b!2466292 m!2835775))

(declare-fun m!2835777 () Bool)

(assert (=> b!2466292 m!2835777))

(declare-fun e!1564137 () Bool)

(assert (=> b!2465976 (= tp!786539 e!1564137)))

(declare-fun b!2466294 () Bool)

(assert (=> b!2466294 (= e!1564137 tp_is_empty!11937)))

(declare-fun b!2466296 () Bool)

(declare-fun tp!786656 () Bool)

(assert (=> b!2466296 (= e!1564137 tp!786656)))

(declare-fun b!2466297 () Bool)

(declare-fun tp!786655 () Bool)

(declare-fun tp!786658 () Bool)

(assert (=> b!2466297 (= e!1564137 (and tp!786655 tp!786658))))

(declare-fun b!2466295 () Bool)

(declare-fun tp!786659 () Bool)

(declare-fun tp!786657 () Bool)

(assert (=> b!2466295 (= e!1564137 (and tp!786659 tp!786657))))

(assert (= (and b!2465976 (is-ElementMatch!7256 (regex!4468 (rule!6826 t2!67)))) b!2466294))

(assert (= (and b!2465976 (is-Concat!11911 (regex!4468 (rule!6826 t2!67)))) b!2466295))

(assert (= (and b!2465976 (is-Star!7256 (regex!4468 (rule!6826 t2!67)))) b!2466296))

(assert (= (and b!2465976 (is-Union!7256 (regex!4468 (rule!6826 t2!67)))) b!2466297))

(declare-fun b!2466298 () Bool)

(declare-fun e!1564138 () Bool)

(declare-fun tp!786660 () Bool)

(assert (=> b!2466298 (= e!1564138 (and tp_is_empty!11937 tp!786660))))

(assert (=> b!2465962 (= tp!786540 e!1564138)))

(assert (= (and b!2465962 (is-Cons!28717 (originalCharacters!5234 t2!67))) b!2466298))

(declare-fun b!2466299 () Bool)

(declare-fun e!1564139 () Bool)

(declare-fun tp!786661 () Bool)

(assert (=> b!2466299 (= e!1564139 (and tp_is_empty!11937 tp!786661))))

(assert (=> b!2465972 (= tp!786536 e!1564139)))

(assert (= (and b!2465972 (is-Cons!28717 (originalCharacters!5234 t1!67))) b!2466299))

(declare-fun b_lambda!75585 () Bool)

(assert (= b_lambda!75579 (or (and b!2465971 b_free!70959 (= (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2466293 b_free!70987 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2466282 b_free!70983 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2465969 b_free!70951 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2465977 b_free!70963) (and b!2465973 b_free!70955 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) b_lambda!75585)))

(declare-fun b_lambda!75587 () Bool)

(assert (= b_lambda!75583 (or (and b!2465971 b_free!70959 (= (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2466293 b_free!70987 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2466282 b_free!70983 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2465969 b_free!70951 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) (and b!2465977 b_free!70963) (and b!2465973 b_free!70955 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toChars!6187 (transformation!4468 (rule!6826 t2!67))))) b_lambda!75587)))

(declare-fun b_lambda!75589 () Bool)

(assert (= b_lambda!75577 (or (and b!2465973 b_free!70955) (and b!2466293 b_free!70987 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))))) (and b!2466282 b_free!70983 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))))) (and b!2465977 b_free!70963 (= (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))))) (and b!2465971 b_free!70959 (= (toChars!6187 (transformation!4468 (rule!6826 t1!67))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))))) (and b!2465969 b_free!70951 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))))) b_lambda!75589)))

(declare-fun b_lambda!75591 () Bool)

(assert (= b_lambda!75581 (or (and b!2465969 b_free!70951 (= (toChars!6187 (transformation!4468 (h!34120 rules!4472))) (toChars!6187 (transformation!4468 (rule!6826 t1!67))))) (and b!2466293 b_free!70987 (= (toChars!6187 (transformation!4468 (h!34120 (t!209326 rules!4472)))) (toChars!6187 (transformation!4468 (rule!6826 t1!67))))) (and b!2466282 b_free!70983 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 (t!209325 l!6611))))) (toChars!6187 (transformation!4468 (rule!6826 t1!67))))) (and b!2465973 b_free!70955 (= (toChars!6187 (transformation!4468 (rule!6826 (h!34119 l!6611)))) (toChars!6187 (transformation!4468 (rule!6826 t1!67))))) (and b!2465971 b_free!70959) (and b!2465977 b_free!70963 (= (toChars!6187 (transformation!4468 (rule!6826 t2!67))) (toChars!6187 (transformation!4468 (rule!6826 t1!67))))) b_lambda!75591)))

(push 1)

(assert (not b!2466298))

(assert (not b!2466168))

(assert (not b_next!71665))

(assert (not b!2466191))

(assert (not b_next!71657))

(assert (not d!710026))

(assert (not tb!139337))

(assert b_and!186437)

(assert (not b!2466148))

(assert (not b!2466152))

(assert (not b!2466255))

(assert (not b!2466260))

(assert (not b!2466165))

(assert (not b!2466239))

(assert (not b_next!71667))

(assert (not b!2466190))

(assert (not b!2466196))

(assert (not b_next!71663))

(assert (not b!2466263))

(assert (not b!2466254))

(assert b_and!186451)

(assert (not b!2466299))

(assert (not b!2466164))

(assert (not b_next!71689))

(assert (not b!2466279))

(assert (not b_next!71685))

(assert b_and!186377)

(assert tp_is_empty!11937)

(assert (not b!2466262))

(assert (not b!2466176))

(assert (not d!710072))

(assert b_and!186441)

(assert (not b_next!71653))

(assert b_and!186373)

(assert b_and!186381)

(assert (not b!2466056))

(assert (not b!2466281))

(assert (not d!710084))

(assert (not b!2466204))

(assert b_and!186443)

(assert (not d!710108))

(assert (not b!2466151))

(assert (not b!2466195))

(assert (not d!710102))

(assert (not b_next!71655))

(assert (not b!2466127))

(assert (not b!2466128))

(assert (not b!2466193))

(assert (not tb!139329))

(assert (not d!710066))

(assert (not b!2466137))

(assert (not b!2466268))

(assert (not b!2466296))

(assert (not b!2466209))

(assert (not d!710018))

(assert (not b!2466210))

(assert (not b!2466267))

(assert (not b!2466280))

(assert (not b!2466295))

(assert (not b!2466214))

(assert (not b!2466238))

(assert (not d!710104))

(assert (not b!2466053))

(assert (not b!2466240))

(assert (not b!2466170))

(assert b_and!186447)

(assert (not b_lambda!75589))

(assert (not d!710064))

(assert (not d!710016))

(assert (not b!2466236))

(assert (not b_next!71661))

(assert (not d!710100))

(assert (not b!2466297))

(assert (not tb!139345))

(assert (not b!2466292))

(assert (not b_next!71659))

(assert (not b!2466192))

(assert (not b!2466153))

(assert (not d!710082))

(assert (not d!710024))

(assert b_and!186385)

(assert (not b!2466150))

(assert (not b!2466266))

(assert (not b!2466169))

(assert (not b!2466194))

(assert (not b!2466291))

(assert (not d!710088))

(assert (not b!2466205))

(assert (not d!710076))

(assert (not b!2466206))

(assert (not b!2466237))

(assert (not b!2466175))

(assert b_and!186449)

(assert (not d!710110))

(assert (not d!710078))

(assert (not d!710098))

(assert (not b_next!71691))

(assert (not b_lambda!75585))

(assert b_and!186439)

(assert (not b!2466197))

(assert (not b!2466181))

(assert (not b!2466241))

(assert (not b!2466264))

(assert (not b_lambda!75591))

(assert (not b!2466253))

(assert (not b!2466149))

(assert (not b!2466211))

(assert (not b!2466198))

(assert (not b_next!71687))

(assert (not b_lambda!75587))

(assert b_and!186445)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!71667))

(assert (not b_next!71663))

(assert b_and!186451)

(assert b_and!186443)

(assert (not b_next!71655))

(assert b_and!186447)

(assert (not b_next!71661))

(assert (not b_next!71659))

(assert b_and!186385)

(assert (not b_next!71665))

(assert b_and!186449)

(assert (not b_next!71657))

(assert b_and!186437)

(assert (not b_next!71689))

(assert (not b_next!71685))

(assert b_and!186377)

(assert b_and!186441)

(assert (not b_next!71653))

(assert b_and!186373)

(assert b_and!186381)

(assert (not b_next!71691))

(assert b_and!186439)

(assert (not b_next!71687))

(assert b_and!186445)

(check-sat)

(pop 1)

