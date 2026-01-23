; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!352124 () Bool)

(assert start!352124)

(declare-fun b!3750430 () Bool)

(declare-fun b_free!100333 () Bool)

(declare-fun b_next!101037 () Bool)

(assert (=> b!3750430 (= b_free!100333 (not b_next!101037))))

(declare-fun tp!1145130 () Bool)

(declare-fun b_and!278687 () Bool)

(assert (=> b!3750430 (= tp!1145130 b_and!278687)))

(declare-fun b_free!100335 () Bool)

(declare-fun b_next!101039 () Bool)

(assert (=> b!3750430 (= b_free!100335 (not b_next!101039))))

(declare-fun tp!1145125 () Bool)

(declare-fun b_and!278689 () Bool)

(assert (=> b!3750430 (= tp!1145125 b_and!278689)))

(declare-fun b!3750426 () Bool)

(declare-fun b_free!100337 () Bool)

(declare-fun b_next!101041 () Bool)

(assert (=> b!3750426 (= b_free!100337 (not b_next!101041))))

(declare-fun tp!1145119 () Bool)

(declare-fun b_and!278691 () Bool)

(assert (=> b!3750426 (= tp!1145119 b_and!278691)))

(declare-fun b_free!100339 () Bool)

(declare-fun b_next!101043 () Bool)

(assert (=> b!3750426 (= b_free!100339 (not b_next!101043))))

(declare-fun tp!1145126 () Bool)

(declare-fun b_and!278693 () Bool)

(assert (=> b!3750426 (= tp!1145126 b_and!278693)))

(declare-fun b!3750428 () Bool)

(declare-fun b_free!100341 () Bool)

(declare-fun b_next!101045 () Bool)

(assert (=> b!3750428 (= b_free!100341 (not b_next!101045))))

(declare-fun tp!1145120 () Bool)

(declare-fun b_and!278695 () Bool)

(assert (=> b!3750428 (= tp!1145120 b_and!278695)))

(declare-fun b_free!100343 () Bool)

(declare-fun b_next!101047 () Bool)

(assert (=> b!3750428 (= b_free!100343 (not b_next!101047))))

(declare-fun tp!1145127 () Bool)

(declare-fun b_and!278697 () Bool)

(assert (=> b!3750428 (= tp!1145127 b_and!278697)))

(declare-datatypes ((C!22218 0))(
  ( (C!22219 (val!13157 Int)) )
))
(declare-datatypes ((List!40089 0))(
  ( (Nil!39965) (Cons!39965 (h!45385 C!22218) (t!302994 List!40089)) )
))
(declare-datatypes ((IArray!24425 0))(
  ( (IArray!24426 (innerList!12270 List!40089)) )
))
(declare-datatypes ((Regex!11016 0))(
  ( (ElementMatch!11016 (c!649176 C!22218)) (Concat!17357 (regOne!22544 Regex!11016) (regTwo!22544 Regex!11016)) (EmptyExpr!11016) (Star!11016 (reg!11345 Regex!11016)) (EmptyLang!11016) (Union!11016 (regOne!22545 Regex!11016) (regTwo!22545 Regex!11016)) )
))
(declare-datatypes ((List!40090 0))(
  ( (Nil!39966) (Cons!39966 (h!45386 (_ BitVec 16)) (t!302995 List!40090)) )
))
(declare-datatypes ((TokenValue!6341 0))(
  ( (FloatLiteralValue!12682 (text!44832 List!40090)) (TokenValueExt!6340 (__x!24899 Int)) (Broken!31705 (value!194704 List!40090)) (Object!6464) (End!6341) (Def!6341) (Underscore!6341) (Match!6341) (Else!6341) (Error!6341) (Case!6341) (If!6341) (Extends!6341) (Abstract!6341) (Class!6341) (Val!6341) (DelimiterValue!12682 (del!6401 List!40090)) (KeywordValue!6347 (value!194705 List!40090)) (CommentValue!12682 (value!194706 List!40090)) (WhitespaceValue!12682 (value!194707 List!40090)) (IndentationValue!6341 (value!194708 List!40090)) (String!45332) (Int32!6341) (Broken!31706 (value!194709 List!40090)) (Boolean!6342) (Unit!57720) (OperatorValue!6344 (op!6401 List!40090)) (IdentifierValue!12682 (value!194710 List!40090)) (IdentifierValue!12683 (value!194711 List!40090)) (WhitespaceValue!12683 (value!194712 List!40090)) (True!12682) (False!12682) (Broken!31707 (value!194713 List!40090)) (Broken!31708 (value!194714 List!40090)) (True!12683) (RightBrace!6341) (RightBracket!6341) (Colon!6341) (Null!6341) (Comma!6341) (LeftBracket!6341) (False!12683) (LeftBrace!6341) (ImaginaryLiteralValue!6341 (text!44833 List!40090)) (StringLiteralValue!19023 (value!194715 List!40090)) (EOFValue!6341 (value!194716 List!40090)) (IdentValue!6341 (value!194717 List!40090)) (DelimiterValue!12683 (value!194718 List!40090)) (DedentValue!6341 (value!194719 List!40090)) (NewLineValue!6341 (value!194720 List!40090)) (IntegerValue!19023 (value!194721 (_ BitVec 32)) (text!44834 List!40090)) (IntegerValue!19024 (value!194722 Int) (text!44835 List!40090)) (Times!6341) (Or!6341) (Equal!6341) (Minus!6341) (Broken!31709 (value!194723 List!40090)) (And!6341) (Div!6341) (LessEqual!6341) (Mod!6341) (Concat!17358) (Not!6341) (Plus!6341) (SpaceValue!6341 (value!194724 List!40090)) (IntegerValue!19025 (value!194725 Int) (text!44836 List!40090)) (StringLiteralValue!19024 (text!44837 List!40090)) (FloatLiteralValue!12683 (text!44838 List!40090)) (BytesLiteralValue!6341 (value!194726 List!40090)) (CommentValue!12683 (value!194727 List!40090)) (StringLiteralValue!19025 (value!194728 List!40090)) (ErrorTokenValue!6341 (msg!6402 List!40090)) )
))
(declare-datatypes ((String!45333 0))(
  ( (String!45334 (value!194729 String)) )
))
(declare-datatypes ((Conc!12210 0))(
  ( (Node!12210 (left!30925 Conc!12210) (right!31255 Conc!12210) (csize!24650 Int) (cheight!12421 Int)) (Leaf!18950 (xs!15412 IArray!24425) (csize!24651 Int)) (Empty!12210) )
))
(declare-datatypes ((BalanceConc!24034 0))(
  ( (BalanceConc!24035 (c!649177 Conc!12210)) )
))
(declare-datatypes ((TokenValueInjection!12110 0))(
  ( (TokenValueInjection!12111 (toValue!8459 Int) (toChars!8318 Int)) )
))
(declare-datatypes ((Rule!12022 0))(
  ( (Rule!12023 (regex!6111 Regex!11016) (tag!6971 String!45333) (isSeparator!6111 Bool) (transformation!6111 TokenValueInjection!12110)) )
))
(declare-datatypes ((Token!11360 0))(
  ( (Token!11361 (value!194730 TokenValue!6341) (rule!8875 Rule!12022) (size!30083 Int) (originalCharacters!6711 List!40089)) )
))
(declare-datatypes ((List!40091 0))(
  ( (Nil!39967) (Cons!39967 (h!45387 Token!11360) (t!302996 List!40091)) )
))
(declare-fun tokens!606 () List!40091)

(declare-fun b!3750421 () Bool)

(declare-fun tp!1145129 () Bool)

(declare-fun e!2319763 () Bool)

(declare-fun e!2319771 () Bool)

(declare-fun inv!21 (TokenValue!6341) Bool)

(assert (=> b!3750421 (= e!2319763 (and (inv!21 (value!194730 (h!45387 tokens!606))) e!2319771 tp!1145129))))

(declare-datatypes ((LexerInterface!5700 0))(
  ( (LexerInterfaceExt!5697 (__x!24900 Int)) (Lexer!5698) )
))
(declare-fun thiss!27232 () LexerInterface!5700)

(declare-fun e!2319770 () Bool)

(declare-datatypes ((List!40092 0))(
  ( (Nil!39968) (Cons!39968 (h!45388 Rule!12022) (t!302997 List!40092)) )
))
(declare-fun rules!4236 () List!40092)

(declare-fun t!8579 () Token!11360)

(declare-fun b!3750422 () Bool)

(declare-fun rulesProduceIndividualToken!2616 (LexerInterface!5700 List!40092 Token!11360) Bool)

(assert (=> b!3750422 (= e!2319770 (not (rulesProduceIndividualToken!2616 thiss!27232 rules!4236 t!8579)))))

(declare-fun b!3750423 () Bool)

(declare-fun res!1520059 () Bool)

(assert (=> b!3750423 (=> (not res!1520059) (not e!2319770))))

(declare-fun isEmpty!23544 (List!40092) Bool)

(assert (=> b!3750423 (= res!1520059 (not (isEmpty!23544 rules!4236)))))

(declare-fun e!2319774 () Bool)

(declare-fun b!3750424 () Bool)

(declare-fun e!2319762 () Bool)

(declare-fun tp!1145123 () Bool)

(declare-fun inv!53473 (String!45333) Bool)

(declare-fun inv!53476 (TokenValueInjection!12110) Bool)

(assert (=> b!3750424 (= e!2319762 (and tp!1145123 (inv!53473 (tag!6971 (rule!8875 t!8579))) (inv!53476 (transformation!6111 (rule!8875 t!8579))) e!2319774))))

(declare-fun b!3750425 () Bool)

(declare-fun res!1520060 () Bool)

(assert (=> b!3750425 (=> (not res!1520060) (not e!2319770))))

(declare-fun rulesInvariant!5097 (LexerInterface!5700 List!40092) Bool)

(assert (=> b!3750425 (= res!1520060 (rulesInvariant!5097 thiss!27232 rules!4236))))

(declare-fun e!2319761 () Bool)

(assert (=> b!3750426 (= e!2319761 (and tp!1145119 tp!1145126))))

(declare-fun e!2319767 () Bool)

(declare-fun tp!1145124 () Bool)

(declare-fun b!3750427 () Bool)

(assert (=> b!3750427 (= e!2319771 (and tp!1145124 (inv!53473 (tag!6971 (rule!8875 (h!45387 tokens!606)))) (inv!53476 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) e!2319767))))

(declare-fun b!3750429 () Bool)

(declare-fun e!2319764 () Bool)

(declare-fun e!2319776 () Bool)

(declare-fun tp!1145122 () Bool)

(assert (=> b!3750429 (= e!2319764 (and e!2319776 tp!1145122))))

(assert (=> b!3750430 (= e!2319774 (and tp!1145130 tp!1145125))))

(declare-fun tp!1145121 () Bool)

(declare-fun b!3750431 () Bool)

(assert (=> b!3750431 (= e!2319776 (and tp!1145121 (inv!53473 (tag!6971 (h!45388 rules!4236))) (inv!53476 (transformation!6111 (h!45388 rules!4236))) e!2319761))))

(declare-fun b!3750432 () Bool)

(declare-fun res!1520057 () Bool)

(assert (=> b!3750432 (=> (not res!1520057) (not e!2319770))))

(declare-fun contains!8163 (List!40091 Token!11360) Bool)

(assert (=> b!3750432 (= res!1520057 (contains!8163 tokens!606 t!8579))))

(declare-fun tp!1145131 () Bool)

(declare-fun b!3750433 () Bool)

(declare-fun e!2319765 () Bool)

(assert (=> b!3750433 (= e!2319765 (and (inv!21 (value!194730 t!8579)) e!2319762 tp!1145131))))

(declare-fun b!3750434 () Bool)

(declare-fun res!1520056 () Bool)

(assert (=> b!3750434 (=> (not res!1520056) (not e!2319770))))

(assert (=> b!3750434 (= res!1520056 (and (or (not (is-Cons!39967 tokens!606)) (not (= (h!45387 tokens!606) t!8579))) (not (is-Cons!39967 tokens!606))))))

(declare-fun b!3750435 () Bool)

(declare-fun res!1520061 () Bool)

(assert (=> b!3750435 (=> (not res!1520061) (not e!2319770))))

(declare-fun rulesProduceEachTokenIndividuallyList!1928 (LexerInterface!5700 List!40092 List!40091) Bool)

(assert (=> b!3750435 (= res!1520061 (rulesProduceEachTokenIndividuallyList!1928 thiss!27232 rules!4236 tokens!606))))

(declare-fun b!3750436 () Bool)

(declare-fun tp!1145128 () Bool)

(declare-fun e!2319772 () Bool)

(declare-fun inv!53477 (Token!11360) Bool)

(assert (=> b!3750436 (= e!2319772 (and (inv!53477 (h!45387 tokens!606)) e!2319763 tp!1145128))))

(declare-fun res!1520058 () Bool)

(assert (=> start!352124 (=> (not res!1520058) (not e!2319770))))

(assert (=> start!352124 (= res!1520058 (is-Lexer!5698 thiss!27232))))

(assert (=> start!352124 e!2319770))

(assert (=> start!352124 true))

(assert (=> start!352124 e!2319764))

(assert (=> start!352124 e!2319772))

(assert (=> start!352124 (and (inv!53477 t!8579) e!2319765)))

(assert (=> b!3750428 (= e!2319767 (and tp!1145120 tp!1145127))))

(assert (= (and start!352124 res!1520058) b!3750423))

(assert (= (and b!3750423 res!1520059) b!3750425))

(assert (= (and b!3750425 res!1520060) b!3750432))

(assert (= (and b!3750432 res!1520057) b!3750435))

(assert (= (and b!3750435 res!1520061) b!3750434))

(assert (= (and b!3750434 res!1520056) b!3750422))

(assert (= b!3750431 b!3750426))

(assert (= b!3750429 b!3750431))

(assert (= (and start!352124 (is-Cons!39968 rules!4236)) b!3750429))

(assert (= b!3750427 b!3750428))

(assert (= b!3750421 b!3750427))

(assert (= b!3750436 b!3750421))

(assert (= (and start!352124 (is-Cons!39967 tokens!606)) b!3750436))

(assert (= b!3750424 b!3750430))

(assert (= b!3750433 b!3750424))

(assert (= start!352124 b!3750433))

(declare-fun m!4241501 () Bool)

(assert (=> b!3750433 m!4241501))

(declare-fun m!4241503 () Bool)

(assert (=> start!352124 m!4241503))

(declare-fun m!4241505 () Bool)

(assert (=> b!3750435 m!4241505))

(declare-fun m!4241507 () Bool)

(assert (=> b!3750422 m!4241507))

(declare-fun m!4241509 () Bool)

(assert (=> b!3750431 m!4241509))

(declare-fun m!4241511 () Bool)

(assert (=> b!3750431 m!4241511))

(declare-fun m!4241513 () Bool)

(assert (=> b!3750427 m!4241513))

(declare-fun m!4241515 () Bool)

(assert (=> b!3750427 m!4241515))

(declare-fun m!4241517 () Bool)

(assert (=> b!3750423 m!4241517))

(declare-fun m!4241519 () Bool)

(assert (=> b!3750424 m!4241519))

(declare-fun m!4241521 () Bool)

(assert (=> b!3750424 m!4241521))

(declare-fun m!4241523 () Bool)

(assert (=> b!3750436 m!4241523))

(declare-fun m!4241525 () Bool)

(assert (=> b!3750421 m!4241525))

(declare-fun m!4241527 () Bool)

(assert (=> b!3750432 m!4241527))

(declare-fun m!4241529 () Bool)

(assert (=> b!3750425 m!4241529))

(push 1)

(assert (not b_next!101037))

(assert b_and!278689)

(assert (not b!3750422))

(assert b_and!278691)

(assert (not b!3750433))

(assert b_and!278697)

(assert (not b_next!101047))

(assert (not b!3750427))

(assert (not b!3750431))

(assert (not b_next!101041))

(assert (not b!3750425))

(assert (not b_next!101045))

(assert (not b!3750432))

(assert b_and!278693)

(assert (not b_next!101043))

(assert (not b!3750423))

(assert b_and!278695)

(assert (not b!3750424))

(assert (not b_next!101039))

(assert b_and!278687)

(assert (not b!3750421))

(assert (not b!3750436))

(assert (not b!3750429))

(assert (not b!3750435))

(assert (not start!352124))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!101041))

(assert (not b_next!101045))

(assert (not b_next!101037))

(assert b_and!278689)

(assert b_and!278695)

(assert b_and!278691)

(assert (not b_next!101039))

(assert b_and!278687)

(assert b_and!278697)

(assert (not b_next!101047))

(assert b_and!278693)

(assert (not b_next!101043))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1094048 () Bool)

(assert (=> d!1094048 (= (inv!53473 (tag!6971 (rule!8875 (h!45387 tokens!606)))) (= (mod (str.len (value!194729 (tag!6971 (rule!8875 (h!45387 tokens!606))))) 2) 0))))

(assert (=> b!3750427 d!1094048))

(declare-fun d!1094050 () Bool)

(declare-fun res!1520086 () Bool)

(declare-fun e!2319827 () Bool)

(assert (=> d!1094050 (=> (not res!1520086) (not e!2319827))))

(declare-fun semiInverseModEq!2619 (Int Int) Bool)

(assert (=> d!1094050 (= res!1520086 (semiInverseModEq!2619 (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (toValue!8459 (transformation!6111 (rule!8875 (h!45387 tokens!606))))))))

(assert (=> d!1094050 (= (inv!53476 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) e!2319827)))

(declare-fun b!3750487 () Bool)

(declare-fun equivClasses!2518 (Int Int) Bool)

(assert (=> b!3750487 (= e!2319827 (equivClasses!2518 (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (toValue!8459 (transformation!6111 (rule!8875 (h!45387 tokens!606))))))))

(assert (= (and d!1094050 res!1520086) b!3750487))

(declare-fun m!4241561 () Bool)

(assert (=> d!1094050 m!4241561))

(declare-fun m!4241563 () Bool)

(assert (=> b!3750487 m!4241563))

(assert (=> b!3750427 d!1094050))

(declare-fun d!1094052 () Bool)

(declare-fun res!1520091 () Bool)

(declare-fun e!2319830 () Bool)

(assert (=> d!1094052 (=> (not res!1520091) (not e!2319830))))

(declare-fun isEmpty!23546 (List!40089) Bool)

(assert (=> d!1094052 (= res!1520091 (not (isEmpty!23546 (originalCharacters!6711 (h!45387 tokens!606)))))))

(assert (=> d!1094052 (= (inv!53477 (h!45387 tokens!606)) e!2319830)))

(declare-fun b!3750492 () Bool)

(declare-fun res!1520092 () Bool)

(assert (=> b!3750492 (=> (not res!1520092) (not e!2319830))))

(declare-fun list!14714 (BalanceConc!24034) List!40089)

(declare-fun dynLambda!17266 (Int TokenValue!6341) BalanceConc!24034)

(assert (=> b!3750492 (= res!1520092 (= (originalCharacters!6711 (h!45387 tokens!606)) (list!14714 (dynLambda!17266 (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (value!194730 (h!45387 tokens!606))))))))

(declare-fun b!3750493 () Bool)

(declare-fun size!30085 (List!40089) Int)

(assert (=> b!3750493 (= e!2319830 (= (size!30083 (h!45387 tokens!606)) (size!30085 (originalCharacters!6711 (h!45387 tokens!606)))))))

(assert (= (and d!1094052 res!1520091) b!3750492))

(assert (= (and b!3750492 res!1520092) b!3750493))

(declare-fun b_lambda!109947 () Bool)

(assert (=> (not b_lambda!109947) (not b!3750492)))

(declare-fun tb!214597 () Bool)

(declare-fun t!303003 () Bool)

(assert (=> (and b!3750430 (= (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606))))) t!303003) tb!214597))

(declare-fun b!3750498 () Bool)

(declare-fun e!2319833 () Bool)

(declare-fun tp!1145173 () Bool)

(declare-fun inv!53480 (Conc!12210) Bool)

(assert (=> b!3750498 (= e!2319833 (and (inv!53480 (c!649177 (dynLambda!17266 (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (value!194730 (h!45387 tokens!606))))) tp!1145173))))

(declare-fun result!262018 () Bool)

(declare-fun inv!53481 (BalanceConc!24034) Bool)

(assert (=> tb!214597 (= result!262018 (and (inv!53481 (dynLambda!17266 (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (value!194730 (h!45387 tokens!606)))) e!2319833))))

(assert (= tb!214597 b!3750498))

(declare-fun m!4241565 () Bool)

(assert (=> b!3750498 m!4241565))

(declare-fun m!4241567 () Bool)

(assert (=> tb!214597 m!4241567))

(assert (=> b!3750492 t!303003))

(declare-fun b_and!278711 () Bool)

(assert (= b_and!278689 (and (=> t!303003 result!262018) b_and!278711)))

(declare-fun tb!214599 () Bool)

(declare-fun t!303005 () Bool)

(assert (=> (and b!3750426 (= (toChars!8318 (transformation!6111 (h!45388 rules!4236))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606))))) t!303005) tb!214599))

(declare-fun result!262022 () Bool)

(assert (= result!262022 result!262018))

(assert (=> b!3750492 t!303005))

(declare-fun b_and!278713 () Bool)

(assert (= b_and!278693 (and (=> t!303005 result!262022) b_and!278713)))

(declare-fun t!303007 () Bool)

(declare-fun tb!214601 () Bool)

(assert (=> (and b!3750428 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606))))) t!303007) tb!214601))

(declare-fun result!262024 () Bool)

(assert (= result!262024 result!262018))

(assert (=> b!3750492 t!303007))

(declare-fun b_and!278715 () Bool)

(assert (= b_and!278697 (and (=> t!303007 result!262024) b_and!278715)))

(declare-fun m!4241569 () Bool)

(assert (=> d!1094052 m!4241569))

(declare-fun m!4241571 () Bool)

(assert (=> b!3750492 m!4241571))

(assert (=> b!3750492 m!4241571))

(declare-fun m!4241573 () Bool)

(assert (=> b!3750492 m!4241573))

(declare-fun m!4241575 () Bool)

(assert (=> b!3750493 m!4241575))

(assert (=> b!3750436 d!1094052))

(declare-fun d!1094054 () Bool)

(declare-fun res!1520095 () Bool)

(declare-fun e!2319836 () Bool)

(assert (=> d!1094054 (=> (not res!1520095) (not e!2319836))))

(declare-fun rulesValid!2374 (LexerInterface!5700 List!40092) Bool)

(assert (=> d!1094054 (= res!1520095 (rulesValid!2374 thiss!27232 rules!4236))))

(assert (=> d!1094054 (= (rulesInvariant!5097 thiss!27232 rules!4236) e!2319836)))

(declare-fun b!3750501 () Bool)

(declare-datatypes ((List!40097 0))(
  ( (Nil!39973) (Cons!39973 (h!45393 String!45333) (t!303028 List!40097)) )
))
(declare-fun noDuplicateTag!2375 (LexerInterface!5700 List!40092 List!40097) Bool)

(assert (=> b!3750501 (= e!2319836 (noDuplicateTag!2375 thiss!27232 rules!4236 Nil!39973))))

(assert (= (and d!1094054 res!1520095) b!3750501))

(declare-fun m!4241577 () Bool)

(assert (=> d!1094054 m!4241577))

(declare-fun m!4241579 () Bool)

(assert (=> b!3750501 m!4241579))

(assert (=> b!3750425 d!1094054))

(declare-fun b!3750534 () Bool)

(declare-fun e!2319864 () Bool)

(assert (=> b!3750534 (= e!2319864 true)))

(declare-fun b!3750533 () Bool)

(declare-fun e!2319863 () Bool)

(assert (=> b!3750533 (= e!2319863 e!2319864)))

(declare-fun b!3750532 () Bool)

(declare-fun e!2319862 () Bool)

(assert (=> b!3750532 (= e!2319862 e!2319863)))

(declare-fun d!1094056 () Bool)

(assert (=> d!1094056 e!2319862))

(assert (= b!3750533 b!3750534))

(assert (= b!3750532 b!3750533))

(assert (= (and d!1094056 (is-Cons!39968 rules!4236)) b!3750532))

(declare-fun order!21823 () Int)

(declare-fun lambda!125218 () Int)

(declare-fun order!21825 () Int)

(declare-fun dynLambda!17267 (Int Int) Int)

(declare-fun dynLambda!17268 (Int Int) Int)

(assert (=> b!3750534 (< (dynLambda!17267 order!21823 (toValue!8459 (transformation!6111 (h!45388 rules!4236)))) (dynLambda!17268 order!21825 lambda!125218))))

(declare-fun order!21827 () Int)

(declare-fun dynLambda!17269 (Int Int) Int)

(assert (=> b!3750534 (< (dynLambda!17269 order!21827 (toChars!8318 (transformation!6111 (h!45388 rules!4236)))) (dynLambda!17268 order!21825 lambda!125218))))

(assert (=> d!1094056 true))

(declare-fun lt!1299795 () Bool)

(declare-fun forall!8201 (List!40091 Int) Bool)

(assert (=> d!1094056 (= lt!1299795 (forall!8201 tokens!606 lambda!125218))))

(declare-fun e!2319854 () Bool)

(assert (=> d!1094056 (= lt!1299795 e!2319854)))

(declare-fun res!1520117 () Bool)

(assert (=> d!1094056 (=> res!1520117 e!2319854)))

(assert (=> d!1094056 (= res!1520117 (not (is-Cons!39967 tokens!606)))))

(assert (=> d!1094056 (not (isEmpty!23544 rules!4236))))

(assert (=> d!1094056 (= (rulesProduceEachTokenIndividuallyList!1928 thiss!27232 rules!4236 tokens!606) lt!1299795)))

(declare-fun b!3750522 () Bool)

(declare-fun e!2319855 () Bool)

(assert (=> b!3750522 (= e!2319854 e!2319855)))

(declare-fun res!1520116 () Bool)

(assert (=> b!3750522 (=> (not res!1520116) (not e!2319855))))

(assert (=> b!3750522 (= res!1520116 (rulesProduceIndividualToken!2616 thiss!27232 rules!4236 (h!45387 tokens!606)))))

(declare-fun b!3750523 () Bool)

(assert (=> b!3750523 (= e!2319855 (rulesProduceEachTokenIndividuallyList!1928 thiss!27232 rules!4236 (t!302996 tokens!606)))))

(assert (= (and d!1094056 (not res!1520117)) b!3750522))

(assert (= (and b!3750522 res!1520116) b!3750523))

(declare-fun m!4241603 () Bool)

(assert (=> d!1094056 m!4241603))

(assert (=> d!1094056 m!4241517))

(declare-fun m!4241605 () Bool)

(assert (=> b!3750522 m!4241605))

(declare-fun m!4241607 () Bool)

(assert (=> b!3750523 m!4241607))

(assert (=> b!3750435 d!1094056))

(declare-fun d!1094064 () Bool)

(assert (=> d!1094064 (= (inv!53473 (tag!6971 (rule!8875 t!8579))) (= (mod (str.len (value!194729 (tag!6971 (rule!8875 t!8579)))) 2) 0))))

(assert (=> b!3750424 d!1094064))

(declare-fun d!1094066 () Bool)

(declare-fun res!1520118 () Bool)

(declare-fun e!2319865 () Bool)

(assert (=> d!1094066 (=> (not res!1520118) (not e!2319865))))

(assert (=> d!1094066 (= res!1520118 (semiInverseModEq!2619 (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (toValue!8459 (transformation!6111 (rule!8875 t!8579)))))))

(assert (=> d!1094066 (= (inv!53476 (transformation!6111 (rule!8875 t!8579))) e!2319865)))

(declare-fun b!3750537 () Bool)

(assert (=> b!3750537 (= e!2319865 (equivClasses!2518 (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (toValue!8459 (transformation!6111 (rule!8875 t!8579)))))))

(assert (= (and d!1094066 res!1520118) b!3750537))

(declare-fun m!4241609 () Bool)

(assert (=> d!1094066 m!4241609))

(declare-fun m!4241611 () Bool)

(assert (=> b!3750537 m!4241611))

(assert (=> b!3750424 d!1094066))

(declare-fun d!1094068 () Bool)

(assert (=> d!1094068 (= (isEmpty!23544 rules!4236) (is-Nil!39968 rules!4236))))

(assert (=> b!3750423 d!1094068))

(declare-fun b!3750548 () Bool)

(declare-fun res!1520121 () Bool)

(declare-fun e!2319872 () Bool)

(assert (=> b!3750548 (=> res!1520121 e!2319872)))

(assert (=> b!3750548 (= res!1520121 (not (is-IntegerValue!19025 (value!194730 t!8579))))))

(declare-fun e!2319874 () Bool)

(assert (=> b!3750548 (= e!2319874 e!2319872)))

(declare-fun b!3750549 () Bool)

(declare-fun inv!17 (TokenValue!6341) Bool)

(assert (=> b!3750549 (= e!2319874 (inv!17 (value!194730 t!8579)))))

(declare-fun b!3750550 () Bool)

(declare-fun inv!15 (TokenValue!6341) Bool)

(assert (=> b!3750550 (= e!2319872 (inv!15 (value!194730 t!8579)))))

(declare-fun b!3750551 () Bool)

(declare-fun e!2319873 () Bool)

(assert (=> b!3750551 (= e!2319873 e!2319874)))

(declare-fun c!649184 () Bool)

(assert (=> b!3750551 (= c!649184 (is-IntegerValue!19024 (value!194730 t!8579)))))

(declare-fun d!1094070 () Bool)

(declare-fun c!649185 () Bool)

(assert (=> d!1094070 (= c!649185 (is-IntegerValue!19023 (value!194730 t!8579)))))

(assert (=> d!1094070 (= (inv!21 (value!194730 t!8579)) e!2319873)))

(declare-fun b!3750552 () Bool)

(declare-fun inv!16 (TokenValue!6341) Bool)

(assert (=> b!3750552 (= e!2319873 (inv!16 (value!194730 t!8579)))))

(assert (= (and d!1094070 c!649185) b!3750552))

(assert (= (and d!1094070 (not c!649185)) b!3750551))

(assert (= (and b!3750551 c!649184) b!3750549))

(assert (= (and b!3750551 (not c!649184)) b!3750548))

(assert (= (and b!3750548 (not res!1520121)) b!3750550))

(declare-fun m!4241613 () Bool)

(assert (=> b!3750549 m!4241613))

(declare-fun m!4241615 () Bool)

(assert (=> b!3750550 m!4241615))

(declare-fun m!4241617 () Bool)

(assert (=> b!3750552 m!4241617))

(assert (=> b!3750433 d!1094070))

(declare-fun d!1094072 () Bool)

(declare-fun lt!1299800 () Bool)

(declare-fun e!2319880 () Bool)

(assert (=> d!1094072 (= lt!1299800 e!2319880)))

(declare-fun res!1520130 () Bool)

(assert (=> d!1094072 (=> (not res!1520130) (not e!2319880))))

(declare-datatypes ((IArray!24429 0))(
  ( (IArray!24430 (innerList!12272 List!40091)) )
))
(declare-datatypes ((Conc!12212 0))(
  ( (Node!12212 (left!30929 Conc!12212) (right!31259 Conc!12212) (csize!24654 Int) (cheight!12423 Int)) (Leaf!18952 (xs!15414 IArray!24429) (csize!24655 Int)) (Empty!12212) )
))
(declare-datatypes ((BalanceConc!24038 0))(
  ( (BalanceConc!24039 (c!649188 Conc!12212)) )
))
(declare-fun list!14715 (BalanceConc!24038) List!40091)

(declare-datatypes ((tuple2!39230 0))(
  ( (tuple2!39231 (_1!22749 BalanceConc!24038) (_2!22749 BalanceConc!24034)) )
))
(declare-fun lex!2639 (LexerInterface!5700 List!40092 BalanceConc!24034) tuple2!39230)

(declare-fun print!2178 (LexerInterface!5700 BalanceConc!24038) BalanceConc!24034)

(declare-fun singletonSeq!2620 (Token!11360) BalanceConc!24038)

(assert (=> d!1094072 (= res!1520130 (= (list!14715 (_1!22749 (lex!2639 thiss!27232 rules!4236 (print!2178 thiss!27232 (singletonSeq!2620 t!8579))))) (list!14715 (singletonSeq!2620 t!8579))))))

(declare-fun e!2319879 () Bool)

(assert (=> d!1094072 (= lt!1299800 e!2319879)))

(declare-fun res!1520129 () Bool)

(assert (=> d!1094072 (=> (not res!1520129) (not e!2319879))))

(declare-fun lt!1299801 () tuple2!39230)

(declare-fun size!30086 (BalanceConc!24038) Int)

(assert (=> d!1094072 (= res!1520129 (= (size!30086 (_1!22749 lt!1299801)) 1))))

(assert (=> d!1094072 (= lt!1299801 (lex!2639 thiss!27232 rules!4236 (print!2178 thiss!27232 (singletonSeq!2620 t!8579))))))

(assert (=> d!1094072 (not (isEmpty!23544 rules!4236))))

(assert (=> d!1094072 (= (rulesProduceIndividualToken!2616 thiss!27232 rules!4236 t!8579) lt!1299800)))

(declare-fun b!3750559 () Bool)

(declare-fun res!1520128 () Bool)

(assert (=> b!3750559 (=> (not res!1520128) (not e!2319879))))

(declare-fun apply!9412 (BalanceConc!24038 Int) Token!11360)

(assert (=> b!3750559 (= res!1520128 (= (apply!9412 (_1!22749 lt!1299801) 0) t!8579))))

(declare-fun b!3750560 () Bool)

(declare-fun isEmpty!23547 (BalanceConc!24034) Bool)

(assert (=> b!3750560 (= e!2319879 (isEmpty!23547 (_2!22749 lt!1299801)))))

(declare-fun b!3750561 () Bool)

(assert (=> b!3750561 (= e!2319880 (isEmpty!23547 (_2!22749 (lex!2639 thiss!27232 rules!4236 (print!2178 thiss!27232 (singletonSeq!2620 t!8579))))))))

(assert (= (and d!1094072 res!1520129) b!3750559))

(assert (= (and b!3750559 res!1520128) b!3750560))

(assert (= (and d!1094072 res!1520130) b!3750561))

(declare-fun m!4241619 () Bool)

(assert (=> d!1094072 m!4241619))

(declare-fun m!4241621 () Bool)

(assert (=> d!1094072 m!4241621))

(declare-fun m!4241623 () Bool)

(assert (=> d!1094072 m!4241623))

(declare-fun m!4241625 () Bool)

(assert (=> d!1094072 m!4241625))

(declare-fun m!4241627 () Bool)

(assert (=> d!1094072 m!4241627))

(assert (=> d!1094072 m!4241517))

(declare-fun m!4241629 () Bool)

(assert (=> d!1094072 m!4241629))

(assert (=> d!1094072 m!4241625))

(assert (=> d!1094072 m!4241625))

(assert (=> d!1094072 m!4241621))

(declare-fun m!4241631 () Bool)

(assert (=> b!3750559 m!4241631))

(declare-fun m!4241633 () Bool)

(assert (=> b!3750560 m!4241633))

(assert (=> b!3750561 m!4241625))

(assert (=> b!3750561 m!4241625))

(assert (=> b!3750561 m!4241621))

(assert (=> b!3750561 m!4241621))

(assert (=> b!3750561 m!4241623))

(declare-fun m!4241635 () Bool)

(assert (=> b!3750561 m!4241635))

(assert (=> b!3750422 d!1094072))

(declare-fun d!1094074 () Bool)

(declare-fun res!1520131 () Bool)

(declare-fun e!2319881 () Bool)

(assert (=> d!1094074 (=> (not res!1520131) (not e!2319881))))

(assert (=> d!1094074 (= res!1520131 (not (isEmpty!23546 (originalCharacters!6711 t!8579))))))

(assert (=> d!1094074 (= (inv!53477 t!8579) e!2319881)))

(declare-fun b!3750562 () Bool)

(declare-fun res!1520132 () Bool)

(assert (=> b!3750562 (=> (not res!1520132) (not e!2319881))))

(assert (=> b!3750562 (= res!1520132 (= (originalCharacters!6711 t!8579) (list!14714 (dynLambda!17266 (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (value!194730 t!8579)))))))

(declare-fun b!3750563 () Bool)

(assert (=> b!3750563 (= e!2319881 (= (size!30083 t!8579) (size!30085 (originalCharacters!6711 t!8579))))))

(assert (= (and d!1094074 res!1520131) b!3750562))

(assert (= (and b!3750562 res!1520132) b!3750563))

(declare-fun b_lambda!109949 () Bool)

(assert (=> (not b_lambda!109949) (not b!3750562)))

(declare-fun t!303015 () Bool)

(declare-fun tb!214603 () Bool)

(assert (=> (and b!3750430 (= (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (toChars!8318 (transformation!6111 (rule!8875 t!8579)))) t!303015) tb!214603))

(declare-fun b!3750564 () Bool)

(declare-fun e!2319882 () Bool)

(declare-fun tp!1145174 () Bool)

(assert (=> b!3750564 (= e!2319882 (and (inv!53480 (c!649177 (dynLambda!17266 (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (value!194730 t!8579)))) tp!1145174))))

(declare-fun result!262026 () Bool)

(assert (=> tb!214603 (= result!262026 (and (inv!53481 (dynLambda!17266 (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (value!194730 t!8579))) e!2319882))))

(assert (= tb!214603 b!3750564))

(declare-fun m!4241637 () Bool)

(assert (=> b!3750564 m!4241637))

(declare-fun m!4241639 () Bool)

(assert (=> tb!214603 m!4241639))

(assert (=> b!3750562 t!303015))

(declare-fun b_and!278717 () Bool)

(assert (= b_and!278711 (and (=> t!303015 result!262026) b_and!278717)))

(declare-fun t!303017 () Bool)

(declare-fun tb!214605 () Bool)

(assert (=> (and b!3750426 (= (toChars!8318 (transformation!6111 (h!45388 rules!4236))) (toChars!8318 (transformation!6111 (rule!8875 t!8579)))) t!303017) tb!214605))

(declare-fun result!262028 () Bool)

(assert (= result!262028 result!262026))

(assert (=> b!3750562 t!303017))

(declare-fun b_and!278719 () Bool)

(assert (= b_and!278713 (and (=> t!303017 result!262028) b_and!278719)))

(declare-fun tb!214607 () Bool)

(declare-fun t!303019 () Bool)

(assert (=> (and b!3750428 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (toChars!8318 (transformation!6111 (rule!8875 t!8579)))) t!303019) tb!214607))

(declare-fun result!262030 () Bool)

(assert (= result!262030 result!262026))

(assert (=> b!3750562 t!303019))

(declare-fun b_and!278721 () Bool)

(assert (= b_and!278715 (and (=> t!303019 result!262030) b_and!278721)))

(declare-fun m!4241641 () Bool)

(assert (=> d!1094074 m!4241641))

(declare-fun m!4241643 () Bool)

(assert (=> b!3750562 m!4241643))

(assert (=> b!3750562 m!4241643))

(declare-fun m!4241645 () Bool)

(assert (=> b!3750562 m!4241645))

(declare-fun m!4241647 () Bool)

(assert (=> b!3750563 m!4241647))

(assert (=> start!352124 d!1094074))

(declare-fun d!1094076 () Bool)

(declare-fun lt!1299804 () Bool)

(declare-fun content!5864 (List!40091) (Set Token!11360))

(assert (=> d!1094076 (= lt!1299804 (set.member t!8579 (content!5864 tokens!606)))))

(declare-fun e!2319888 () Bool)

(assert (=> d!1094076 (= lt!1299804 e!2319888)))

(declare-fun res!1520137 () Bool)

(assert (=> d!1094076 (=> (not res!1520137) (not e!2319888))))

(assert (=> d!1094076 (= res!1520137 (is-Cons!39967 tokens!606))))

(assert (=> d!1094076 (= (contains!8163 tokens!606 t!8579) lt!1299804)))

(declare-fun b!3750569 () Bool)

(declare-fun e!2319887 () Bool)

(assert (=> b!3750569 (= e!2319888 e!2319887)))

(declare-fun res!1520138 () Bool)

(assert (=> b!3750569 (=> res!1520138 e!2319887)))

(assert (=> b!3750569 (= res!1520138 (= (h!45387 tokens!606) t!8579))))

(declare-fun b!3750570 () Bool)

(assert (=> b!3750570 (= e!2319887 (contains!8163 (t!302996 tokens!606) t!8579))))

(assert (= (and d!1094076 res!1520137) b!3750569))

(assert (= (and b!3750569 (not res!1520138)) b!3750570))

(declare-fun m!4241649 () Bool)

(assert (=> d!1094076 m!4241649))

(declare-fun m!4241651 () Bool)

(assert (=> d!1094076 m!4241651))

(declare-fun m!4241653 () Bool)

(assert (=> b!3750570 m!4241653))

(assert (=> b!3750432 d!1094076))

(declare-fun b!3750571 () Bool)

(declare-fun res!1520139 () Bool)

(declare-fun e!2319889 () Bool)

(assert (=> b!3750571 (=> res!1520139 e!2319889)))

(assert (=> b!3750571 (= res!1520139 (not (is-IntegerValue!19025 (value!194730 (h!45387 tokens!606)))))))

(declare-fun e!2319891 () Bool)

(assert (=> b!3750571 (= e!2319891 e!2319889)))

(declare-fun b!3750572 () Bool)

(assert (=> b!3750572 (= e!2319891 (inv!17 (value!194730 (h!45387 tokens!606))))))

(declare-fun b!3750573 () Bool)

(assert (=> b!3750573 (= e!2319889 (inv!15 (value!194730 (h!45387 tokens!606))))))

(declare-fun b!3750574 () Bool)

(declare-fun e!2319890 () Bool)

(assert (=> b!3750574 (= e!2319890 e!2319891)))

(declare-fun c!649186 () Bool)

(assert (=> b!3750574 (= c!649186 (is-IntegerValue!19024 (value!194730 (h!45387 tokens!606))))))

(declare-fun d!1094078 () Bool)

(declare-fun c!649187 () Bool)

(assert (=> d!1094078 (= c!649187 (is-IntegerValue!19023 (value!194730 (h!45387 tokens!606))))))

(assert (=> d!1094078 (= (inv!21 (value!194730 (h!45387 tokens!606))) e!2319890)))

(declare-fun b!3750575 () Bool)

(assert (=> b!3750575 (= e!2319890 (inv!16 (value!194730 (h!45387 tokens!606))))))

(assert (= (and d!1094078 c!649187) b!3750575))

(assert (= (and d!1094078 (not c!649187)) b!3750574))

(assert (= (and b!3750574 c!649186) b!3750572))

(assert (= (and b!3750574 (not c!649186)) b!3750571))

(assert (= (and b!3750571 (not res!1520139)) b!3750573))

(declare-fun m!4241655 () Bool)

(assert (=> b!3750572 m!4241655))

(declare-fun m!4241657 () Bool)

(assert (=> b!3750573 m!4241657))

(declare-fun m!4241659 () Bool)

(assert (=> b!3750575 m!4241659))

(assert (=> b!3750421 d!1094078))

(declare-fun d!1094080 () Bool)

(assert (=> d!1094080 (= (inv!53473 (tag!6971 (h!45388 rules!4236))) (= (mod (str.len (value!194729 (tag!6971 (h!45388 rules!4236)))) 2) 0))))

(assert (=> b!3750431 d!1094080))

(declare-fun d!1094082 () Bool)

(declare-fun res!1520140 () Bool)

(declare-fun e!2319892 () Bool)

(assert (=> d!1094082 (=> (not res!1520140) (not e!2319892))))

(assert (=> d!1094082 (= res!1520140 (semiInverseModEq!2619 (toChars!8318 (transformation!6111 (h!45388 rules!4236))) (toValue!8459 (transformation!6111 (h!45388 rules!4236)))))))

(assert (=> d!1094082 (= (inv!53476 (transformation!6111 (h!45388 rules!4236))) e!2319892)))

(declare-fun b!3750576 () Bool)

(assert (=> b!3750576 (= e!2319892 (equivClasses!2518 (toChars!8318 (transformation!6111 (h!45388 rules!4236))) (toValue!8459 (transformation!6111 (h!45388 rules!4236)))))))

(assert (= (and d!1094082 res!1520140) b!3750576))

(declare-fun m!4241661 () Bool)

(assert (=> d!1094082 m!4241661))

(declare-fun m!4241663 () Bool)

(assert (=> b!3750576 m!4241663))

(assert (=> b!3750431 d!1094082))

(declare-fun b!3750590 () Bool)

(declare-fun e!2319895 () Bool)

(declare-fun tp!1145185 () Bool)

(declare-fun tp!1145187 () Bool)

(assert (=> b!3750590 (= e!2319895 (and tp!1145185 tp!1145187))))

(assert (=> b!3750424 (= tp!1145123 e!2319895)))

(declare-fun b!3750589 () Bool)

(declare-fun tp!1145186 () Bool)

(assert (=> b!3750589 (= e!2319895 tp!1145186)))

(declare-fun b!3750587 () Bool)

(declare-fun tp_is_empty!19031 () Bool)

(assert (=> b!3750587 (= e!2319895 tp_is_empty!19031)))

(declare-fun b!3750588 () Bool)

(declare-fun tp!1145188 () Bool)

(declare-fun tp!1145189 () Bool)

(assert (=> b!3750588 (= e!2319895 (and tp!1145188 tp!1145189))))

(assert (= (and b!3750424 (is-ElementMatch!11016 (regex!6111 (rule!8875 t!8579)))) b!3750587))

(assert (= (and b!3750424 (is-Concat!17357 (regex!6111 (rule!8875 t!8579)))) b!3750588))

(assert (= (and b!3750424 (is-Star!11016 (regex!6111 (rule!8875 t!8579)))) b!3750589))

(assert (= (and b!3750424 (is-Union!11016 (regex!6111 (rule!8875 t!8579)))) b!3750590))

(declare-fun b!3750601 () Bool)

(declare-fun b_free!100357 () Bool)

(declare-fun b_next!101061 () Bool)

(assert (=> b!3750601 (= b_free!100357 (not b_next!101061))))

(declare-fun tp!1145201 () Bool)

(declare-fun b_and!278723 () Bool)

(assert (=> b!3750601 (= tp!1145201 b_and!278723)))

(declare-fun b_free!100359 () Bool)

(declare-fun b_next!101063 () Bool)

(assert (=> b!3750601 (= b_free!100359 (not b_next!101063))))

(declare-fun tb!214609 () Bool)

(declare-fun t!303021 () Bool)

(assert (=> (and b!3750601 (= (toChars!8318 (transformation!6111 (h!45388 (t!302997 rules!4236)))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606))))) t!303021) tb!214609))

(declare-fun result!262036 () Bool)

(assert (= result!262036 result!262018))

(assert (=> b!3750492 t!303021))

(declare-fun tb!214611 () Bool)

(declare-fun t!303023 () Bool)

(assert (=> (and b!3750601 (= (toChars!8318 (transformation!6111 (h!45388 (t!302997 rules!4236)))) (toChars!8318 (transformation!6111 (rule!8875 t!8579)))) t!303023) tb!214611))

(declare-fun result!262038 () Bool)

(assert (= result!262038 result!262026))

(assert (=> b!3750562 t!303023))

(declare-fun tp!1145199 () Bool)

(declare-fun b_and!278725 () Bool)

(assert (=> b!3750601 (= tp!1145199 (and (=> t!303021 result!262036) (=> t!303023 result!262038) b_and!278725))))

(declare-fun e!2319905 () Bool)

(assert (=> b!3750601 (= e!2319905 (and tp!1145201 tp!1145199))))

(declare-fun b!3750600 () Bool)

(declare-fun e!2319906 () Bool)

(declare-fun tp!1145200 () Bool)

(assert (=> b!3750600 (= e!2319906 (and tp!1145200 (inv!53473 (tag!6971 (h!45388 (t!302997 rules!4236)))) (inv!53476 (transformation!6111 (h!45388 (t!302997 rules!4236)))) e!2319905))))

(declare-fun b!3750599 () Bool)

(declare-fun e!2319904 () Bool)

(declare-fun tp!1145198 () Bool)

(assert (=> b!3750599 (= e!2319904 (and e!2319906 tp!1145198))))

(assert (=> b!3750429 (= tp!1145122 e!2319904)))

(assert (= b!3750600 b!3750601))

(assert (= b!3750599 b!3750600))

(assert (= (and b!3750429 (is-Cons!39968 (t!302997 rules!4236))) b!3750599))

(declare-fun m!4241665 () Bool)

(assert (=> b!3750600 m!4241665))

(declare-fun m!4241667 () Bool)

(assert (=> b!3750600 m!4241667))

(declare-fun b!3750606 () Bool)

(declare-fun e!2319910 () Bool)

(declare-fun tp!1145204 () Bool)

(assert (=> b!3750606 (= e!2319910 (and tp_is_empty!19031 tp!1145204))))

(assert (=> b!3750433 (= tp!1145131 e!2319910)))

(assert (= (and b!3750433 (is-Cons!39965 (originalCharacters!6711 t!8579))) b!3750606))

(declare-fun b!3750610 () Bool)

(declare-fun e!2319911 () Bool)

(declare-fun tp!1145205 () Bool)

(declare-fun tp!1145207 () Bool)

(assert (=> b!3750610 (= e!2319911 (and tp!1145205 tp!1145207))))

(assert (=> b!3750427 (= tp!1145124 e!2319911)))

(declare-fun b!3750609 () Bool)

(declare-fun tp!1145206 () Bool)

(assert (=> b!3750609 (= e!2319911 tp!1145206)))

(declare-fun b!3750607 () Bool)

(assert (=> b!3750607 (= e!2319911 tp_is_empty!19031)))

(declare-fun b!3750608 () Bool)

(declare-fun tp!1145208 () Bool)

(declare-fun tp!1145209 () Bool)

(assert (=> b!3750608 (= e!2319911 (and tp!1145208 tp!1145209))))

(assert (= (and b!3750427 (is-ElementMatch!11016 (regex!6111 (rule!8875 (h!45387 tokens!606))))) b!3750607))

(assert (= (and b!3750427 (is-Concat!17357 (regex!6111 (rule!8875 (h!45387 tokens!606))))) b!3750608))

(assert (= (and b!3750427 (is-Star!11016 (regex!6111 (rule!8875 (h!45387 tokens!606))))) b!3750609))

(assert (= (and b!3750427 (is-Union!11016 (regex!6111 (rule!8875 (h!45387 tokens!606))))) b!3750610))

(declare-fun b!3750611 () Bool)

(declare-fun e!2319912 () Bool)

(declare-fun tp!1145210 () Bool)

(assert (=> b!3750611 (= e!2319912 (and tp_is_empty!19031 tp!1145210))))

(assert (=> b!3750421 (= tp!1145129 e!2319912)))

(assert (= (and b!3750421 (is-Cons!39965 (originalCharacters!6711 (h!45387 tokens!606)))) b!3750611))

(declare-fun b!3750615 () Bool)

(declare-fun e!2319913 () Bool)

(declare-fun tp!1145211 () Bool)

(declare-fun tp!1145213 () Bool)

(assert (=> b!3750615 (= e!2319913 (and tp!1145211 tp!1145213))))

(assert (=> b!3750431 (= tp!1145121 e!2319913)))

(declare-fun b!3750614 () Bool)

(declare-fun tp!1145212 () Bool)

(assert (=> b!3750614 (= e!2319913 tp!1145212)))

(declare-fun b!3750612 () Bool)

(assert (=> b!3750612 (= e!2319913 tp_is_empty!19031)))

(declare-fun b!3750613 () Bool)

(declare-fun tp!1145214 () Bool)

(declare-fun tp!1145215 () Bool)

(assert (=> b!3750613 (= e!2319913 (and tp!1145214 tp!1145215))))

(assert (= (and b!3750431 (is-ElementMatch!11016 (regex!6111 (h!45388 rules!4236)))) b!3750612))

(assert (= (and b!3750431 (is-Concat!17357 (regex!6111 (h!45388 rules!4236)))) b!3750613))

(assert (= (and b!3750431 (is-Star!11016 (regex!6111 (h!45388 rules!4236)))) b!3750614))

(assert (= (and b!3750431 (is-Union!11016 (regex!6111 (h!45388 rules!4236)))) b!3750615))

(declare-fun b!3750629 () Bool)

(declare-fun b_free!100361 () Bool)

(declare-fun b_next!101065 () Bool)

(assert (=> b!3750629 (= b_free!100361 (not b_next!101065))))

(declare-fun tp!1145227 () Bool)

(declare-fun b_and!278727 () Bool)

(assert (=> b!3750629 (= tp!1145227 b_and!278727)))

(declare-fun b_free!100363 () Bool)

(declare-fun b_next!101067 () Bool)

(assert (=> b!3750629 (= b_free!100363 (not b_next!101067))))

(declare-fun t!303025 () Bool)

(declare-fun tb!214613 () Bool)

(assert (=> (and b!3750629 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 (t!302996 tokens!606))))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606))))) t!303025) tb!214613))

(declare-fun result!262044 () Bool)

(assert (= result!262044 result!262018))

(assert (=> b!3750492 t!303025))

(declare-fun tb!214615 () Bool)

(declare-fun t!303027 () Bool)

(assert (=> (and b!3750629 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 (t!302996 tokens!606))))) (toChars!8318 (transformation!6111 (rule!8875 t!8579)))) t!303027) tb!214615))

(declare-fun result!262046 () Bool)

(assert (= result!262046 result!262026))

(assert (=> b!3750562 t!303027))

(declare-fun tp!1145226 () Bool)

(declare-fun b_and!278729 () Bool)

(assert (=> b!3750629 (= tp!1145226 (and (=> t!303025 result!262044) (=> t!303027 result!262046) b_and!278729))))

(declare-fun b!3750627 () Bool)

(declare-fun e!2319927 () Bool)

(declare-fun tp!1145229 () Bool)

(declare-fun e!2319929 () Bool)

(assert (=> b!3750627 (= e!2319927 (and (inv!21 (value!194730 (h!45387 (t!302996 tokens!606)))) e!2319929 tp!1145229))))

(declare-fun b!3750626 () Bool)

(declare-fun tp!1145228 () Bool)

(declare-fun e!2319930 () Bool)

(assert (=> b!3750626 (= e!2319930 (and (inv!53477 (h!45387 (t!302996 tokens!606))) e!2319927 tp!1145228))))

(declare-fun e!2319928 () Bool)

(assert (=> b!3750629 (= e!2319928 (and tp!1145227 tp!1145226))))

(declare-fun tp!1145230 () Bool)

(declare-fun b!3750628 () Bool)

(assert (=> b!3750628 (= e!2319929 (and tp!1145230 (inv!53473 (tag!6971 (rule!8875 (h!45387 (t!302996 tokens!606))))) (inv!53476 (transformation!6111 (rule!8875 (h!45387 (t!302996 tokens!606))))) e!2319928))))

(assert (=> b!3750436 (= tp!1145128 e!2319930)))

(assert (= b!3750628 b!3750629))

(assert (= b!3750627 b!3750628))

(assert (= b!3750626 b!3750627))

(assert (= (and b!3750436 (is-Cons!39967 (t!302996 tokens!606))) b!3750626))

(declare-fun m!4241669 () Bool)

(assert (=> b!3750627 m!4241669))

(declare-fun m!4241671 () Bool)

(assert (=> b!3750626 m!4241671))

(declare-fun m!4241673 () Bool)

(assert (=> b!3750628 m!4241673))

(declare-fun m!4241675 () Bool)

(assert (=> b!3750628 m!4241675))

(declare-fun b_lambda!109951 () Bool)

(assert (= b_lambda!109947 (or (and b!3750601 b_free!100359 (= (toChars!8318 (transformation!6111 (h!45388 (t!302997 rules!4236)))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))))) (and b!3750426 b_free!100339 (= (toChars!8318 (transformation!6111 (h!45388 rules!4236))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))))) (and b!3750430 b_free!100335 (= (toChars!8318 (transformation!6111 (rule!8875 t!8579))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))))) (and b!3750428 b_free!100343) (and b!3750629 b_free!100363 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 (t!302996 tokens!606))))) (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))))) b_lambda!109951)))

(declare-fun b_lambda!109953 () Bool)

(assert (= b_lambda!109949 (or (and b!3750601 b_free!100359 (= (toChars!8318 (transformation!6111 (h!45388 (t!302997 rules!4236)))) (toChars!8318 (transformation!6111 (rule!8875 t!8579))))) (and b!3750629 b_free!100363 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 (t!302996 tokens!606))))) (toChars!8318 (transformation!6111 (rule!8875 t!8579))))) (and b!3750426 b_free!100339 (= (toChars!8318 (transformation!6111 (h!45388 rules!4236))) (toChars!8318 (transformation!6111 (rule!8875 t!8579))))) (and b!3750430 b_free!100335) (and b!3750428 b_free!100343 (= (toChars!8318 (transformation!6111 (rule!8875 (h!45387 tokens!606)))) (toChars!8318 (transformation!6111 (rule!8875 t!8579))))) b_lambda!109953)))

(push 1)

(assert (not d!1094050))

(assert (not b!3750559))

(assert (not b!3750610))

(assert b_and!278687)

(assert (not b!3750487))

(assert (not b!3750590))

(assert (not b!3750599))

(assert (not b_next!101061))

(assert b_and!278721)

(assert (not b!3750627))

(assert (not b!3750570))

(assert (not b!3750501))

(assert (not tb!214603))

(assert (not b!3750572))

(assert (not d!1094056))

(assert (not b_next!101041))

(assert (not b!3750522))

(assert (not b!3750523))

(assert (not b!3750550))

(assert (not b!3750611))

(assert b_and!278729)

(assert (not b_next!101045))

(assert (not b!3750549))

(assert (not d!1094052))

(assert (not b_lambda!109951))

(assert (not b!3750589))

(assert (not b!3750626))

(assert b_and!278717)

(assert (not b!3750560))

(assert (not b!3750562))

(assert (not b_next!101037))

(assert (not b!3750532))

(assert (not b!3750573))

(assert (not b_next!101065))

(assert (not b!3750613))

(assert (not tb!214597))

(assert (not b!3750588))

(assert (not b_next!101043))

(assert b_and!278723)

(assert b_and!278695)

(assert (not b!3750563))

(assert (not d!1094072))

(assert (not b!3750564))

(assert (not b!3750600))

(assert b_and!278691)

(assert (not b!3750576))

(assert (not b!3750498))

(assert (not d!1094066))

(assert (not b!3750575))

(assert (not b!3750609))

(assert b_and!278719)

(assert (not b_next!101039))

(assert (not b!3750561))

(assert (not b!3750552))

(assert (not b!3750615))

(assert (not b_next!101067))

(assert (not b!3750537))

(assert b_and!278725)

(assert (not b!3750493))

(assert (not d!1094074))

(assert (not b_next!101047))

(assert (not d!1094054))

(assert (not d!1094076))

(assert (not b!3750608))

(assert (not b!3750614))

(assert b_and!278727)

(assert (not b_lambda!109953))

(assert (not b!3750606))

(assert (not d!1094082))

(assert (not b!3750628))

(assert (not b_next!101063))

(assert tp_is_empty!19031)

(assert (not b!3750492))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!101041))

(assert b_and!278717)

(assert (not b_next!101037))

(assert (not b_next!101065))

(assert (not b_next!101043))

(assert b_and!278691)

(assert b_and!278687)

(assert (not b_next!101067))

(assert b_and!278725)

(assert (not b_next!101047))

(assert b_and!278727)

(assert (not b_next!101063))

(assert (not b_next!101061))

(assert b_and!278721)

(assert b_and!278729)

(assert (not b_next!101045))

(assert b_and!278723)

(assert b_and!278695)

(assert b_and!278719)

(assert (not b_next!101039))

(check-sat)

(pop 1)

