; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!112204 () Bool)

(assert start!112204)

(declare-fun b!1284607 () Bool)

(declare-fun b_free!30103 () Bool)

(declare-fun b_next!30807 () Bool)

(assert (=> b!1284607 (= b_free!30103 (not b_next!30807))))

(declare-fun tp!373828 () Bool)

(declare-fun b_and!85247 () Bool)

(assert (=> b!1284607 (= tp!373828 b_and!85247)))

(declare-fun b_free!30105 () Bool)

(declare-fun b_next!30809 () Bool)

(assert (=> b!1284607 (= b_free!30105 (not b_next!30809))))

(declare-fun tp!373824 () Bool)

(declare-fun b_and!85249 () Bool)

(assert (=> b!1284607 (= tp!373824 b_and!85249)))

(declare-fun b!1284604 () Bool)

(declare-fun b_free!30107 () Bool)

(declare-fun b_next!30811 () Bool)

(assert (=> b!1284604 (= b_free!30107 (not b_next!30811))))

(declare-fun tp!373823 () Bool)

(declare-fun b_and!85251 () Bool)

(assert (=> b!1284604 (= tp!373823 b_and!85251)))

(declare-fun b_free!30109 () Bool)

(declare-fun b_next!30813 () Bool)

(assert (=> b!1284604 (= b_free!30109 (not b_next!30813))))

(declare-fun tp!373822 () Bool)

(declare-fun b_and!85253 () Bool)

(assert (=> b!1284604 (= tp!373822 b_and!85253)))

(declare-fun b!1284612 () Bool)

(declare-fun b_free!30111 () Bool)

(declare-fun b_next!30815 () Bool)

(assert (=> b!1284612 (= b_free!30111 (not b_next!30815))))

(declare-fun tp!373826 () Bool)

(declare-fun b_and!85255 () Bool)

(assert (=> b!1284612 (= tp!373826 b_and!85255)))

(declare-fun b_free!30113 () Bool)

(declare-fun b_next!30817 () Bool)

(assert (=> b!1284612 (= b_free!30113 (not b_next!30817))))

(declare-fun tp!373818 () Bool)

(declare-fun b_and!85257 () Bool)

(assert (=> b!1284612 (= tp!373818 b_and!85257)))

(declare-fun e!823801 () Bool)

(declare-fun b!1284598 () Bool)

(declare-fun e!823804 () Bool)

(declare-fun tp!373821 () Bool)

(declare-datatypes ((List!12839 0))(
  ( (Nil!12773) (Cons!12773 (h!18174 (_ BitVec 16)) (t!116700 List!12839)) )
))
(declare-datatypes ((TokenValue!2286 0))(
  ( (FloatLiteralValue!4572 (text!16447 List!12839)) (TokenValueExt!2285 (__x!8401 Int)) (Broken!11430 (value!72194 List!12839)) (Object!2351) (End!2286) (Def!2286) (Underscore!2286) (Match!2286) (Else!2286) (Error!2286) (Case!2286) (If!2286) (Extends!2286) (Abstract!2286) (Class!2286) (Val!2286) (DelimiterValue!4572 (del!2346 List!12839)) (KeywordValue!2292 (value!72195 List!12839)) (CommentValue!4572 (value!72196 List!12839)) (WhitespaceValue!4572 (value!72197 List!12839)) (IndentationValue!2286 (value!72198 List!12839)) (String!15667) (Int32!2286) (Broken!11431 (value!72199 List!12839)) (Boolean!2287) (Unit!18986) (OperatorValue!2289 (op!2346 List!12839)) (IdentifierValue!4572 (value!72200 List!12839)) (IdentifierValue!4573 (value!72201 List!12839)) (WhitespaceValue!4573 (value!72202 List!12839)) (True!4572) (False!4572) (Broken!11432 (value!72203 List!12839)) (Broken!11433 (value!72204 List!12839)) (True!4573) (RightBrace!2286) (RightBracket!2286) (Colon!2286) (Null!2286) (Comma!2286) (LeftBracket!2286) (False!4573) (LeftBrace!2286) (ImaginaryLiteralValue!2286 (text!16448 List!12839)) (StringLiteralValue!6858 (value!72205 List!12839)) (EOFValue!2286 (value!72206 List!12839)) (IdentValue!2286 (value!72207 List!12839)) (DelimiterValue!4573 (value!72208 List!12839)) (DedentValue!2286 (value!72209 List!12839)) (NewLineValue!2286 (value!72210 List!12839)) (IntegerValue!6858 (value!72211 (_ BitVec 32)) (text!16449 List!12839)) (IntegerValue!6859 (value!72212 Int) (text!16450 List!12839)) (Times!2286) (Or!2286) (Equal!2286) (Minus!2286) (Broken!11434 (value!72213 List!12839)) (And!2286) (Div!2286) (LessEqual!2286) (Mod!2286) (Concat!5796) (Not!2286) (Plus!2286) (SpaceValue!2286 (value!72214 List!12839)) (IntegerValue!6860 (value!72215 Int) (text!16451 List!12839)) (StringLiteralValue!6859 (text!16452 List!12839)) (FloatLiteralValue!4573 (text!16453 List!12839)) (BytesLiteralValue!2286 (value!72216 List!12839)) (CommentValue!4573 (value!72217 List!12839)) (StringLiteralValue!6860 (value!72218 List!12839)) (ErrorTokenValue!2286 (msg!2347 List!12839)) )
))
(declare-datatypes ((C!7310 0))(
  ( (C!7311 (val!4215 Int)) )
))
(declare-datatypes ((List!12840 0))(
  ( (Nil!12774) (Cons!12774 (h!18175 C!7310) (t!116701 List!12840)) )
))
(declare-datatypes ((IArray!8401 0))(
  ( (IArray!8402 (innerList!4258 List!12840)) )
))
(declare-datatypes ((Conc!4198 0))(
  ( (Node!4198 (left!11014 Conc!4198) (right!11344 Conc!4198) (csize!8626 Int) (cheight!4409 Int)) (Leaf!6493 (xs!6909 IArray!8401) (csize!8627 Int)) (Empty!4198) )
))
(declare-datatypes ((BalanceConc!8336 0))(
  ( (BalanceConc!8337 (c!211517 Conc!4198)) )
))
(declare-datatypes ((Regex!3510 0))(
  ( (ElementMatch!3510 (c!211518 C!7310)) (Concat!5797 (regOne!7532 Regex!3510) (regTwo!7532 Regex!3510)) (EmptyExpr!3510) (Star!3510 (reg!3839 Regex!3510)) (EmptyLang!3510) (Union!3510 (regOne!7533 Regex!3510) (regTwo!7533 Regex!3510)) )
))
(declare-datatypes ((String!15668 0))(
  ( (String!15669 (value!72219 String)) )
))
(declare-datatypes ((TokenValueInjection!4232 0))(
  ( (TokenValueInjection!4233 (toValue!3375 Int) (toChars!3234 Int)) )
))
(declare-datatypes ((Rule!4192 0))(
  ( (Rule!4193 (regex!2196 Regex!3510) (tag!2458 String!15668) (isSeparator!2196 Bool) (transformation!2196 TokenValueInjection!4232)) )
))
(declare-datatypes ((Token!4054 0))(
  ( (Token!4055 (value!72220 TokenValue!2286) (rule!3935 Rule!4192) (size!10402 Int) (originalCharacters!3058 List!12840)) )
))
(declare-fun t2!34 () Token!4054)

(declare-fun inv!17174 (String!15668) Bool)

(declare-fun inv!17177 (TokenValueInjection!4232) Bool)

(assert (=> b!1284598 (= e!823801 (and tp!373821 (inv!17174 (tag!2458 (rule!3935 t2!34))) (inv!17177 (transformation!2196 (rule!3935 t2!34))) e!823804))))

(declare-fun tp!373825 () Bool)

(declare-fun t1!34 () Token!4054)

(declare-fun e!823802 () Bool)

(declare-fun e!823794 () Bool)

(declare-fun b!1284599 () Bool)

(assert (=> b!1284599 (= e!823802 (and tp!373825 (inv!17174 (tag!2458 (rule!3935 t1!34))) (inv!17177 (transformation!2196 (rule!3935 t1!34))) e!823794))))

(declare-fun b!1284600 () Bool)

(declare-fun res!576080 () Bool)

(declare-fun e!823806 () Bool)

(assert (=> b!1284600 (=> (not res!576080) (not e!823806))))

(declare-datatypes ((LexerInterface!1891 0))(
  ( (LexerInterfaceExt!1888 (__x!8402 Int)) (Lexer!1889) )
))
(declare-fun thiss!19762 () LexerInterface!1891)

(declare-datatypes ((List!12841 0))(
  ( (Nil!12775) (Cons!12775 (h!18176 Rule!4192) (t!116702 List!12841)) )
))
(declare-fun rules!2550 () List!12841)

(declare-fun rulesInvariant!1761 (LexerInterface!1891 List!12841) Bool)

(assert (=> b!1284600 (= res!576080 (rulesInvariant!1761 thiss!19762 rules!2550))))

(declare-fun b!1284601 () Bool)

(declare-fun e!823799 () Bool)

(assert (=> b!1284601 (= e!823806 e!823799)))

(declare-fun res!576078 () Bool)

(assert (=> b!1284601 (=> (not res!576078) (not e!823799))))

(declare-fun lt!423515 () BalanceConc!8336)

(declare-fun size!10403 (BalanceConc!8336) Int)

(assert (=> b!1284601 (= res!576078 (> (size!10403 lt!423515) 0))))

(declare-fun charsOf!1168 (Token!4054) BalanceConc!8336)

(assert (=> b!1284601 (= lt!423515 (charsOf!1168 t2!34))))

(declare-fun b!1284602 () Bool)

(declare-fun res!576076 () Bool)

(assert (=> b!1284602 (=> (not res!576076) (not e!823806))))

(assert (=> b!1284602 (= res!576076 (not (= (isSeparator!2196 (rule!3935 t1!34)) (isSeparator!2196 (rule!3935 t2!34)))))))

(declare-fun b!1284603 () Bool)

(declare-fun isEmpty!7575 (BalanceConc!8336) Bool)

(assert (=> b!1284603 (= e!823799 (isEmpty!7575 lt!423515))))

(declare-fun res!576079 () Bool)

(assert (=> start!112204 (=> (not res!576079) (not e!823806))))

(assert (=> start!112204 (= res!576079 (is-Lexer!1889 thiss!19762))))

(assert (=> start!112204 e!823806))

(assert (=> start!112204 true))

(declare-fun e!823793 () Bool)

(assert (=> start!112204 e!823793))

(declare-fun e!823808 () Bool)

(declare-fun inv!17178 (Token!4054) Bool)

(assert (=> start!112204 (and (inv!17178 t1!34) e!823808)))

(declare-fun e!823800 () Bool)

(assert (=> start!112204 (and (inv!17178 t2!34) e!823800)))

(assert (=> b!1284604 (= e!823794 (and tp!373823 tp!373822))))

(declare-fun tp!373820 () Bool)

(declare-fun b!1284605 () Bool)

(declare-fun inv!21 (TokenValue!2286) Bool)

(assert (=> b!1284605 (= e!823808 (and (inv!21 (value!72220 t1!34)) e!823802 tp!373820))))

(declare-fun b!1284606 () Bool)

(declare-fun tp!373827 () Bool)

(declare-fun e!823805 () Bool)

(declare-fun e!823807 () Bool)

(assert (=> b!1284606 (= e!823807 (and tp!373827 (inv!17174 (tag!2458 (h!18176 rules!2550))) (inv!17177 (transformation!2196 (h!18176 rules!2550))) e!823805))))

(assert (=> b!1284607 (= e!823804 (and tp!373828 tp!373824))))

(declare-fun b!1284608 () Bool)

(declare-fun res!576075 () Bool)

(assert (=> b!1284608 (=> (not res!576075) (not e!823799))))

(declare-fun sepAndNonSepRulesDisjointChars!569 (List!12841 List!12841) Bool)

(assert (=> b!1284608 (= res!576075 (sepAndNonSepRulesDisjointChars!569 rules!2550 rules!2550))))

(declare-fun b!1284609 () Bool)

(declare-fun res!576074 () Bool)

(assert (=> b!1284609 (=> (not res!576074) (not e!823806))))

(declare-fun isEmpty!7576 (List!12841) Bool)

(assert (=> b!1284609 (= res!576074 (not (isEmpty!7576 rules!2550)))))

(declare-fun b!1284610 () Bool)

(declare-fun res!576081 () Bool)

(assert (=> b!1284610 (=> (not res!576081) (not e!823806))))

(declare-fun rulesProduceIndividualToken!860 (LexerInterface!1891 List!12841 Token!4054) Bool)

(assert (=> b!1284610 (= res!576081 (rulesProduceIndividualToken!860 thiss!19762 rules!2550 t2!34))))

(declare-fun tp!373817 () Bool)

(declare-fun b!1284611 () Bool)

(assert (=> b!1284611 (= e!823800 (and (inv!21 (value!72220 t2!34)) e!823801 tp!373817))))

(assert (=> b!1284612 (= e!823805 (and tp!373826 tp!373818))))

(declare-fun b!1284613 () Bool)

(declare-fun tp!373819 () Bool)

(assert (=> b!1284613 (= e!823793 (and e!823807 tp!373819))))

(declare-fun b!1284614 () Bool)

(declare-fun res!576077 () Bool)

(assert (=> b!1284614 (=> (not res!576077) (not e!823806))))

(assert (=> b!1284614 (= res!576077 (rulesProduceIndividualToken!860 thiss!19762 rules!2550 t1!34))))

(assert (= (and start!112204 res!576079) b!1284609))

(assert (= (and b!1284609 res!576074) b!1284600))

(assert (= (and b!1284600 res!576080) b!1284614))

(assert (= (and b!1284614 res!576077) b!1284610))

(assert (= (and b!1284610 res!576081) b!1284602))

(assert (= (and b!1284602 res!576076) b!1284601))

(assert (= (and b!1284601 res!576078) b!1284608))

(assert (= (and b!1284608 res!576075) b!1284603))

(assert (= b!1284606 b!1284612))

(assert (= b!1284613 b!1284606))

(assert (= (and start!112204 (is-Cons!12775 rules!2550)) b!1284613))

(assert (= b!1284599 b!1284604))

(assert (= b!1284605 b!1284599))

(assert (= start!112204 b!1284605))

(assert (= b!1284598 b!1284607))

(assert (= b!1284611 b!1284598))

(assert (= start!112204 b!1284611))

(declare-fun m!1434751 () Bool)

(assert (=> b!1284611 m!1434751))

(declare-fun m!1434753 () Bool)

(assert (=> start!112204 m!1434753))

(declare-fun m!1434755 () Bool)

(assert (=> start!112204 m!1434755))

(declare-fun m!1434757 () Bool)

(assert (=> b!1284599 m!1434757))

(declare-fun m!1434759 () Bool)

(assert (=> b!1284599 m!1434759))

(declare-fun m!1434761 () Bool)

(assert (=> b!1284606 m!1434761))

(declare-fun m!1434763 () Bool)

(assert (=> b!1284606 m!1434763))

(declare-fun m!1434765 () Bool)

(assert (=> b!1284610 m!1434765))

(declare-fun m!1434767 () Bool)

(assert (=> b!1284608 m!1434767))

(declare-fun m!1434769 () Bool)

(assert (=> b!1284603 m!1434769))

(declare-fun m!1434771 () Bool)

(assert (=> b!1284601 m!1434771))

(declare-fun m!1434773 () Bool)

(assert (=> b!1284601 m!1434773))

(declare-fun m!1434775 () Bool)

(assert (=> b!1284598 m!1434775))

(declare-fun m!1434777 () Bool)

(assert (=> b!1284598 m!1434777))

(declare-fun m!1434779 () Bool)

(assert (=> b!1284605 m!1434779))

(declare-fun m!1434781 () Bool)

(assert (=> b!1284614 m!1434781))

(declare-fun m!1434783 () Bool)

(assert (=> b!1284600 m!1434783))

(declare-fun m!1434785 () Bool)

(assert (=> b!1284609 m!1434785))

(push 1)

(assert (not b!1284601))

(assert (not start!112204))

(assert (not b!1284600))

(assert (not b!1284598))

(assert b_and!85255)

(assert (not b_next!30807))

(assert (not b!1284613))

(assert (not b!1284610))

(assert (not b!1284603))

(assert (not b!1284606))

(assert b_and!85251)

(assert (not b_next!30811))

(assert b_and!85247)

(assert b_and!85257)

(assert (not b_next!30817))

(assert (not b_next!30809))

(assert (not b_next!30815))

(assert (not b!1284611))

(assert (not b!1284609))

(assert b_and!85253)

(assert (not b!1284608))

(assert (not b_next!30813))

(assert b_and!85249)

(assert (not b!1284605))

(assert (not b!1284614))

(assert (not b!1284599))

(check-sat)

(pop 1)

(push 1)

(assert b_and!85255)

(assert (not b_next!30807))

(assert (not b_next!30815))

(assert b_and!85253)

(assert (not b_next!30813))

(assert b_and!85249)

(assert b_and!85251)

(assert (not b_next!30811))

(assert b_and!85247)

(assert b_and!85257)

(assert (not b_next!30817))

(assert (not b_next!30809))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!361743 () Bool)

(declare-fun lt!423521 () Bool)

(declare-fun isEmpty!7579 (List!12840) Bool)

(declare-fun list!4742 (BalanceConc!8336) List!12840)

(assert (=> d!361743 (= lt!423521 (isEmpty!7579 (list!4742 lt!423515)))))

(declare-fun isEmpty!7580 (Conc!4198) Bool)

(assert (=> d!361743 (= lt!423521 (isEmpty!7580 (c!211517 lt!423515)))))

(assert (=> d!361743 (= (isEmpty!7575 lt!423515) lt!423521)))

(declare-fun bs!327985 () Bool)

(assert (= bs!327985 d!361743))

(declare-fun m!1434823 () Bool)

(assert (=> bs!327985 m!1434823))

(assert (=> bs!327985 m!1434823))

(declare-fun m!1434825 () Bool)

(assert (=> bs!327985 m!1434825))

(declare-fun m!1434827 () Bool)

(assert (=> bs!327985 m!1434827))

(assert (=> b!1284603 d!361743))

(declare-fun d!361745 () Bool)

(declare-fun lt!423526 () Bool)

(declare-fun e!823864 () Bool)

(assert (=> d!361745 (= lt!423526 e!823864)))

(declare-fun res!576123 () Bool)

(assert (=> d!361745 (=> (not res!576123) (not e!823864))))

(declare-datatypes ((List!12845 0))(
  ( (Nil!12779) (Cons!12779 (h!18180 Token!4054) (t!116723 List!12845)) )
))
(declare-datatypes ((IArray!8405 0))(
  ( (IArray!8406 (innerList!4260 List!12845)) )
))
(declare-datatypes ((Conc!4200 0))(
  ( (Node!4200 (left!11016 Conc!4200) (right!11346 Conc!4200) (csize!8630 Int) (cheight!4411 Int)) (Leaf!6495 (xs!6911 IArray!8405) (csize!8631 Int)) (Empty!4200) )
))
(declare-datatypes ((BalanceConc!8340 0))(
  ( (BalanceConc!8341 (c!211529 Conc!4200)) )
))
(declare-fun list!4743 (BalanceConc!8340) List!12845)

(declare-datatypes ((tuple2!12616 0))(
  ( (tuple2!12617 (_1!7194 BalanceConc!8340) (_2!7194 BalanceConc!8336)) )
))
(declare-fun lex!766 (LexerInterface!1891 List!12841 BalanceConc!8336) tuple2!12616)

(declare-fun print!703 (LexerInterface!1891 BalanceConc!8340) BalanceConc!8336)

(declare-fun singletonSeq!774 (Token!4054) BalanceConc!8340)

(assert (=> d!361745 (= res!576123 (= (list!4743 (_1!7194 (lex!766 thiss!19762 rules!2550 (print!703 thiss!19762 (singletonSeq!774 t1!34))))) (list!4743 (singletonSeq!774 t1!34))))))

(declare-fun e!823865 () Bool)

(assert (=> d!361745 (= lt!423526 e!823865)))

(declare-fun res!576125 () Bool)

(assert (=> d!361745 (=> (not res!576125) (not e!823865))))

(declare-fun lt!423527 () tuple2!12616)

(declare-fun size!10406 (BalanceConc!8340) Int)

(assert (=> d!361745 (= res!576125 (= (size!10406 (_1!7194 lt!423527)) 1))))

(assert (=> d!361745 (= lt!423527 (lex!766 thiss!19762 rules!2550 (print!703 thiss!19762 (singletonSeq!774 t1!34))))))

(assert (=> d!361745 (not (isEmpty!7576 rules!2550))))

(assert (=> d!361745 (= (rulesProduceIndividualToken!860 thiss!19762 rules!2550 t1!34) lt!423526)))

(declare-fun b!1284675 () Bool)

(declare-fun res!576124 () Bool)

(assert (=> b!1284675 (=> (not res!576124) (not e!823865))))

(declare-fun apply!2724 (BalanceConc!8340 Int) Token!4054)

(assert (=> b!1284675 (= res!576124 (= (apply!2724 (_1!7194 lt!423527) 0) t1!34))))

(declare-fun b!1284676 () Bool)

(assert (=> b!1284676 (= e!823865 (isEmpty!7575 (_2!7194 lt!423527)))))

(declare-fun b!1284677 () Bool)

(assert (=> b!1284677 (= e!823864 (isEmpty!7575 (_2!7194 (lex!766 thiss!19762 rules!2550 (print!703 thiss!19762 (singletonSeq!774 t1!34))))))))

(assert (= (and d!361745 res!576125) b!1284675))

(assert (= (and b!1284675 res!576124) b!1284676))

(assert (= (and d!361745 res!576123) b!1284677))

(assert (=> d!361745 m!1434785))

(declare-fun m!1434833 () Bool)

(assert (=> d!361745 m!1434833))

(declare-fun m!1434835 () Bool)

(assert (=> d!361745 m!1434835))

(declare-fun m!1434837 () Bool)

(assert (=> d!361745 m!1434837))

(declare-fun m!1434839 () Bool)

(assert (=> d!361745 m!1434839))

(assert (=> d!361745 m!1434833))

(assert (=> d!361745 m!1434837))

(declare-fun m!1434841 () Bool)

(assert (=> d!361745 m!1434841))

(assert (=> d!361745 m!1434833))

(declare-fun m!1434843 () Bool)

(assert (=> d!361745 m!1434843))

(declare-fun m!1434845 () Bool)

(assert (=> b!1284675 m!1434845))

(declare-fun m!1434847 () Bool)

(assert (=> b!1284676 m!1434847))

(assert (=> b!1284677 m!1434833))

(assert (=> b!1284677 m!1434833))

(assert (=> b!1284677 m!1434837))

(assert (=> b!1284677 m!1434837))

(assert (=> b!1284677 m!1434839))

(declare-fun m!1434849 () Bool)

(assert (=> b!1284677 m!1434849))

(assert (=> b!1284614 d!361745))

(declare-fun d!361753 () Bool)

(declare-fun lt!423530 () Int)

(declare-fun size!10407 (List!12840) Int)

(assert (=> d!361753 (= lt!423530 (size!10407 (list!4742 lt!423515)))))

(declare-fun size!10408 (Conc!4198) Int)

(assert (=> d!361753 (= lt!423530 (size!10408 (c!211517 lt!423515)))))

(assert (=> d!361753 (= (size!10403 lt!423515) lt!423530)))

(declare-fun bs!327986 () Bool)

(assert (= bs!327986 d!361753))

(assert (=> bs!327986 m!1434823))

(assert (=> bs!327986 m!1434823))

(declare-fun m!1434851 () Bool)

(assert (=> bs!327986 m!1434851))

(declare-fun m!1434853 () Bool)

(assert (=> bs!327986 m!1434853))

(assert (=> b!1284601 d!361753))

(declare-fun d!361755 () Bool)

(declare-fun lt!423533 () BalanceConc!8336)

(assert (=> d!361755 (= (list!4742 lt!423533) (originalCharacters!3058 t2!34))))

(declare-fun dynLambda!5565 (Int TokenValue!2286) BalanceConc!8336)

(assert (=> d!361755 (= lt!423533 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (value!72220 t2!34)))))

(assert (=> d!361755 (= (charsOf!1168 t2!34) lt!423533)))

(declare-fun b_lambda!36583 () Bool)

(assert (=> (not b_lambda!36583) (not d!361755)))

(declare-fun t!116708 () Bool)

(declare-fun tb!69057 () Bool)

(assert (=> (and b!1284607 (= (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (toChars!3234 (transformation!2196 (rule!3935 t2!34)))) t!116708) tb!69057))

(declare-fun b!1284682 () Bool)

(declare-fun e!823868 () Bool)

(declare-fun tp!373867 () Bool)

(declare-fun inv!17181 (Conc!4198) Bool)

(assert (=> b!1284682 (= e!823868 (and (inv!17181 (c!211517 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (value!72220 t2!34)))) tp!373867))))

(declare-fun result!83606 () Bool)

(declare-fun inv!17182 (BalanceConc!8336) Bool)

(assert (=> tb!69057 (= result!83606 (and (inv!17182 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (value!72220 t2!34))) e!823868))))

(assert (= tb!69057 b!1284682))

(declare-fun m!1434855 () Bool)

(assert (=> b!1284682 m!1434855))

(declare-fun m!1434857 () Bool)

(assert (=> tb!69057 m!1434857))

(assert (=> d!361755 t!116708))

(declare-fun b_and!85271 () Bool)

(assert (= b_and!85249 (and (=> t!116708 result!83606) b_and!85271)))

(declare-fun tb!69059 () Bool)

(declare-fun t!116710 () Bool)

(assert (=> (and b!1284604 (= (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (toChars!3234 (transformation!2196 (rule!3935 t2!34)))) t!116710) tb!69059))

(declare-fun result!83610 () Bool)

(assert (= result!83610 result!83606))

(assert (=> d!361755 t!116710))

(declare-fun b_and!85273 () Bool)

(assert (= b_and!85253 (and (=> t!116710 result!83610) b_and!85273)))

(declare-fun t!116712 () Bool)

(declare-fun tb!69061 () Bool)

(assert (=> (and b!1284612 (= (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toChars!3234 (transformation!2196 (rule!3935 t2!34)))) t!116712) tb!69061))

(declare-fun result!83612 () Bool)

(assert (= result!83612 result!83606))

(assert (=> d!361755 t!116712))

(declare-fun b_and!85275 () Bool)

(assert (= b_and!85257 (and (=> t!116712 result!83612) b_and!85275)))

(declare-fun m!1434859 () Bool)

(assert (=> d!361755 m!1434859))

(declare-fun m!1434861 () Bool)

(assert (=> d!361755 m!1434861))

(assert (=> b!1284601 d!361755))

(declare-fun d!361757 () Bool)

(declare-fun res!576130 () Bool)

(declare-fun e!823871 () Bool)

(assert (=> d!361757 (=> (not res!576130) (not e!823871))))

(assert (=> d!361757 (= res!576130 (not (isEmpty!7579 (originalCharacters!3058 t1!34))))))

(assert (=> d!361757 (= (inv!17178 t1!34) e!823871)))

(declare-fun b!1284687 () Bool)

(declare-fun res!576131 () Bool)

(assert (=> b!1284687 (=> (not res!576131) (not e!823871))))

(assert (=> b!1284687 (= res!576131 (= (originalCharacters!3058 t1!34) (list!4742 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (value!72220 t1!34)))))))

(declare-fun b!1284688 () Bool)

(assert (=> b!1284688 (= e!823871 (= (size!10402 t1!34) (size!10407 (originalCharacters!3058 t1!34))))))

(assert (= (and d!361757 res!576130) b!1284687))

(assert (= (and b!1284687 res!576131) b!1284688))

(declare-fun b_lambda!36585 () Bool)

(assert (=> (not b_lambda!36585) (not b!1284687)))

(declare-fun t!116714 () Bool)

(declare-fun tb!69063 () Bool)

(assert (=> (and b!1284607 (= (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (toChars!3234 (transformation!2196 (rule!3935 t1!34)))) t!116714) tb!69063))

(declare-fun b!1284689 () Bool)

(declare-fun e!823872 () Bool)

(declare-fun tp!373868 () Bool)

(assert (=> b!1284689 (= e!823872 (and (inv!17181 (c!211517 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (value!72220 t1!34)))) tp!373868))))

(declare-fun result!83614 () Bool)

(assert (=> tb!69063 (= result!83614 (and (inv!17182 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (value!72220 t1!34))) e!823872))))

(assert (= tb!69063 b!1284689))

(declare-fun m!1434863 () Bool)

(assert (=> b!1284689 m!1434863))

(declare-fun m!1434865 () Bool)

(assert (=> tb!69063 m!1434865))

(assert (=> b!1284687 t!116714))

(declare-fun b_and!85277 () Bool)

(assert (= b_and!85271 (and (=> t!116714 result!83614) b_and!85277)))

(declare-fun t!116716 () Bool)

(declare-fun tb!69065 () Bool)

(assert (=> (and b!1284604 (= (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (toChars!3234 (transformation!2196 (rule!3935 t1!34)))) t!116716) tb!69065))

(declare-fun result!83616 () Bool)

(assert (= result!83616 result!83614))

(assert (=> b!1284687 t!116716))

(declare-fun b_and!85279 () Bool)

(assert (= b_and!85273 (and (=> t!116716 result!83616) b_and!85279)))

(declare-fun t!116718 () Bool)

(declare-fun tb!69067 () Bool)

(assert (=> (and b!1284612 (= (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toChars!3234 (transformation!2196 (rule!3935 t1!34)))) t!116718) tb!69067))

(declare-fun result!83618 () Bool)

(assert (= result!83618 result!83614))

(assert (=> b!1284687 t!116718))

(declare-fun b_and!85281 () Bool)

(assert (= b_and!85275 (and (=> t!116718 result!83618) b_and!85281)))

(declare-fun m!1434867 () Bool)

(assert (=> d!361757 m!1434867))

(declare-fun m!1434869 () Bool)

(assert (=> b!1284687 m!1434869))

(assert (=> b!1284687 m!1434869))

(declare-fun m!1434871 () Bool)

(assert (=> b!1284687 m!1434871))

(declare-fun m!1434873 () Bool)

(assert (=> b!1284688 m!1434873))

(assert (=> start!112204 d!361757))

(declare-fun d!361759 () Bool)

(declare-fun res!576132 () Bool)

(declare-fun e!823873 () Bool)

(assert (=> d!361759 (=> (not res!576132) (not e!823873))))

(assert (=> d!361759 (= res!576132 (not (isEmpty!7579 (originalCharacters!3058 t2!34))))))

(assert (=> d!361759 (= (inv!17178 t2!34) e!823873)))

(declare-fun b!1284690 () Bool)

(declare-fun res!576133 () Bool)

(assert (=> b!1284690 (=> (not res!576133) (not e!823873))))

(assert (=> b!1284690 (= res!576133 (= (originalCharacters!3058 t2!34) (list!4742 (dynLambda!5565 (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (value!72220 t2!34)))))))

(declare-fun b!1284691 () Bool)

(assert (=> b!1284691 (= e!823873 (= (size!10402 t2!34) (size!10407 (originalCharacters!3058 t2!34))))))

(assert (= (and d!361759 res!576132) b!1284690))

(assert (= (and b!1284690 res!576133) b!1284691))

(declare-fun b_lambda!36587 () Bool)

(assert (=> (not b_lambda!36587) (not b!1284690)))

(assert (=> b!1284690 t!116708))

(declare-fun b_and!85283 () Bool)

(assert (= b_and!85277 (and (=> t!116708 result!83606) b_and!85283)))

(assert (=> b!1284690 t!116710))

(declare-fun b_and!85285 () Bool)

(assert (= b_and!85279 (and (=> t!116710 result!83610) b_and!85285)))

(assert (=> b!1284690 t!116712))

(declare-fun b_and!85287 () Bool)

(assert (= b_and!85281 (and (=> t!116712 result!83612) b_and!85287)))

(declare-fun m!1434875 () Bool)

(assert (=> d!361759 m!1434875))

(assert (=> b!1284690 m!1434861))

(assert (=> b!1284690 m!1434861))

(declare-fun m!1434877 () Bool)

(assert (=> b!1284690 m!1434877))

(declare-fun m!1434879 () Bool)

(assert (=> b!1284691 m!1434879))

(assert (=> start!112204 d!361759))

(declare-fun d!361761 () Bool)

(declare-fun c!211526 () Bool)

(assert (=> d!361761 (= c!211526 (is-IntegerValue!6858 (value!72220 t2!34)))))

(declare-fun e!823882 () Bool)

(assert (=> d!361761 (= (inv!21 (value!72220 t2!34)) e!823882)))

(declare-fun b!1284702 () Bool)

(declare-fun e!823881 () Bool)

(assert (=> b!1284702 (= e!823882 e!823881)))

(declare-fun c!211525 () Bool)

(assert (=> b!1284702 (= c!211525 (is-IntegerValue!6859 (value!72220 t2!34)))))

(declare-fun b!1284703 () Bool)

(declare-fun e!823880 () Bool)

(declare-fun inv!15 (TokenValue!2286) Bool)

(assert (=> b!1284703 (= e!823880 (inv!15 (value!72220 t2!34)))))

(declare-fun b!1284704 () Bool)

(declare-fun inv!17 (TokenValue!2286) Bool)

(assert (=> b!1284704 (= e!823881 (inv!17 (value!72220 t2!34)))))

(declare-fun b!1284705 () Bool)

(declare-fun res!576136 () Bool)

(assert (=> b!1284705 (=> res!576136 e!823880)))

(assert (=> b!1284705 (= res!576136 (not (is-IntegerValue!6860 (value!72220 t2!34))))))

(assert (=> b!1284705 (= e!823881 e!823880)))

(declare-fun b!1284706 () Bool)

(declare-fun inv!16 (TokenValue!2286) Bool)

(assert (=> b!1284706 (= e!823882 (inv!16 (value!72220 t2!34)))))

(assert (= (and d!361761 c!211526) b!1284706))

(assert (= (and d!361761 (not c!211526)) b!1284702))

(assert (= (and b!1284702 c!211525) b!1284704))

(assert (= (and b!1284702 (not c!211525)) b!1284705))

(assert (= (and b!1284705 (not res!576136)) b!1284703))

(declare-fun m!1434881 () Bool)

(assert (=> b!1284703 m!1434881))

(declare-fun m!1434883 () Bool)

(assert (=> b!1284704 m!1434883))

(declare-fun m!1434885 () Bool)

(assert (=> b!1284706 m!1434885))

(assert (=> b!1284611 d!361761))

(declare-fun d!361763 () Bool)

(declare-fun res!576139 () Bool)

(declare-fun e!823885 () Bool)

(assert (=> d!361763 (=> (not res!576139) (not e!823885))))

(declare-fun rulesValid!798 (LexerInterface!1891 List!12841) Bool)

(assert (=> d!361763 (= res!576139 (rulesValid!798 thiss!19762 rules!2550))))

(assert (=> d!361763 (= (rulesInvariant!1761 thiss!19762 rules!2550) e!823885)))

(declare-fun b!1284709 () Bool)

(declare-datatypes ((List!12846 0))(
  ( (Nil!12780) (Cons!12780 (h!18181 String!15668) (t!116724 List!12846)) )
))
(declare-fun noDuplicateTag!798 (LexerInterface!1891 List!12841 List!12846) Bool)

(assert (=> b!1284709 (= e!823885 (noDuplicateTag!798 thiss!19762 rules!2550 Nil!12780))))

(assert (= (and d!361763 res!576139) b!1284709))

(declare-fun m!1434887 () Bool)

(assert (=> d!361763 m!1434887))

(declare-fun m!1434889 () Bool)

(assert (=> b!1284709 m!1434889))

(assert (=> b!1284600 d!361763))

(declare-fun d!361765 () Bool)

(assert (=> d!361765 (= (inv!17174 (tag!2458 (rule!3935 t1!34))) (= (mod (str.len (value!72219 (tag!2458 (rule!3935 t1!34)))) 2) 0))))

(assert (=> b!1284599 d!361765))

(declare-fun d!361767 () Bool)

(declare-fun res!576142 () Bool)

(declare-fun e!823888 () Bool)

(assert (=> d!361767 (=> (not res!576142) (not e!823888))))

(declare-fun semiInverseModEq!827 (Int Int) Bool)

(assert (=> d!361767 (= res!576142 (semiInverseModEq!827 (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (toValue!3375 (transformation!2196 (rule!3935 t1!34)))))))

(assert (=> d!361767 (= (inv!17177 (transformation!2196 (rule!3935 t1!34))) e!823888)))

(declare-fun b!1284712 () Bool)

(declare-fun equivClasses!786 (Int Int) Bool)

(assert (=> b!1284712 (= e!823888 (equivClasses!786 (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (toValue!3375 (transformation!2196 (rule!3935 t1!34)))))))

(assert (= (and d!361767 res!576142) b!1284712))

(declare-fun m!1434891 () Bool)

(assert (=> d!361767 m!1434891))

(declare-fun m!1434893 () Bool)

(assert (=> b!1284712 m!1434893))

(assert (=> b!1284599 d!361767))

(declare-fun d!361769 () Bool)

(declare-fun lt!423534 () Bool)

(declare-fun e!823889 () Bool)

(assert (=> d!361769 (= lt!423534 e!823889)))

(declare-fun res!576143 () Bool)

(assert (=> d!361769 (=> (not res!576143) (not e!823889))))

(assert (=> d!361769 (= res!576143 (= (list!4743 (_1!7194 (lex!766 thiss!19762 rules!2550 (print!703 thiss!19762 (singletonSeq!774 t2!34))))) (list!4743 (singletonSeq!774 t2!34))))))

(declare-fun e!823890 () Bool)

(assert (=> d!361769 (= lt!423534 e!823890)))

(declare-fun res!576145 () Bool)

(assert (=> d!361769 (=> (not res!576145) (not e!823890))))

(declare-fun lt!423535 () tuple2!12616)

(assert (=> d!361769 (= res!576145 (= (size!10406 (_1!7194 lt!423535)) 1))))

(assert (=> d!361769 (= lt!423535 (lex!766 thiss!19762 rules!2550 (print!703 thiss!19762 (singletonSeq!774 t2!34))))))

(assert (=> d!361769 (not (isEmpty!7576 rules!2550))))

(assert (=> d!361769 (= (rulesProduceIndividualToken!860 thiss!19762 rules!2550 t2!34) lt!423534)))

(declare-fun b!1284713 () Bool)

(declare-fun res!576144 () Bool)

(assert (=> b!1284713 (=> (not res!576144) (not e!823890))))

(assert (=> b!1284713 (= res!576144 (= (apply!2724 (_1!7194 lt!423535) 0) t2!34))))

(declare-fun b!1284714 () Bool)

(assert (=> b!1284714 (= e!823890 (isEmpty!7575 (_2!7194 lt!423535)))))

(declare-fun b!1284715 () Bool)

(assert (=> b!1284715 (= e!823889 (isEmpty!7575 (_2!7194 (lex!766 thiss!19762 rules!2550 (print!703 thiss!19762 (singletonSeq!774 t2!34))))))))

(assert (= (and d!361769 res!576145) b!1284713))

(assert (= (and b!1284713 res!576144) b!1284714))

(assert (= (and d!361769 res!576143) b!1284715))

(assert (=> d!361769 m!1434785))

(declare-fun m!1434895 () Bool)

(assert (=> d!361769 m!1434895))

(declare-fun m!1434897 () Bool)

(assert (=> d!361769 m!1434897))

(declare-fun m!1434899 () Bool)

(assert (=> d!361769 m!1434899))

(declare-fun m!1434901 () Bool)

(assert (=> d!361769 m!1434901))

(assert (=> d!361769 m!1434895))

(assert (=> d!361769 m!1434899))

(declare-fun m!1434903 () Bool)

(assert (=> d!361769 m!1434903))

(assert (=> d!361769 m!1434895))

(declare-fun m!1434905 () Bool)

(assert (=> d!361769 m!1434905))

(declare-fun m!1434907 () Bool)

(assert (=> b!1284713 m!1434907))

(declare-fun m!1434909 () Bool)

(assert (=> b!1284714 m!1434909))

(assert (=> b!1284715 m!1434895))

(assert (=> b!1284715 m!1434895))

(assert (=> b!1284715 m!1434899))

(assert (=> b!1284715 m!1434899))

(assert (=> b!1284715 m!1434901))

(declare-fun m!1434911 () Bool)

(assert (=> b!1284715 m!1434911))

(assert (=> b!1284610 d!361769))

(declare-fun d!361771 () Bool)

(assert (=> d!361771 (= (isEmpty!7576 rules!2550) (is-Nil!12775 rules!2550))))

(assert (=> b!1284609 d!361771))

(declare-fun d!361773 () Bool)

(assert (=> d!361773 (= (inv!17174 (tag!2458 (rule!3935 t2!34))) (= (mod (str.len (value!72219 (tag!2458 (rule!3935 t2!34)))) 2) 0))))

(assert (=> b!1284598 d!361773))

(declare-fun d!361775 () Bool)

(declare-fun res!576146 () Bool)

(declare-fun e!823891 () Bool)

(assert (=> d!361775 (=> (not res!576146) (not e!823891))))

(assert (=> d!361775 (= res!576146 (semiInverseModEq!827 (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (toValue!3375 (transformation!2196 (rule!3935 t2!34)))))))

(assert (=> d!361775 (= (inv!17177 (transformation!2196 (rule!3935 t2!34))) e!823891)))

(declare-fun b!1284716 () Bool)

(assert (=> b!1284716 (= e!823891 (equivClasses!786 (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (toValue!3375 (transformation!2196 (rule!3935 t2!34)))))))

(assert (= (and d!361775 res!576146) b!1284716))

(declare-fun m!1434913 () Bool)

(assert (=> d!361775 m!1434913))

(declare-fun m!1434915 () Bool)

(assert (=> b!1284716 m!1434915))

(assert (=> b!1284598 d!361775))

(declare-fun d!361777 () Bool)

(declare-fun res!576151 () Bool)

(declare-fun e!823896 () Bool)

(assert (=> d!361777 (=> res!576151 e!823896)))

(assert (=> d!361777 (= res!576151 (not (is-Cons!12775 rules!2550)))))

(assert (=> d!361777 (= (sepAndNonSepRulesDisjointChars!569 rules!2550 rules!2550) e!823896)))

(declare-fun b!1284721 () Bool)

(declare-fun e!823897 () Bool)

(assert (=> b!1284721 (= e!823896 e!823897)))

(declare-fun res!576152 () Bool)

(assert (=> b!1284721 (=> (not res!576152) (not e!823897))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!272 (Rule!4192 List!12841) Bool)

(assert (=> b!1284721 (= res!576152 (ruleDisjointCharsFromAllFromOtherType!272 (h!18176 rules!2550) rules!2550))))

(declare-fun b!1284722 () Bool)

(assert (=> b!1284722 (= e!823897 (sepAndNonSepRulesDisjointChars!569 rules!2550 (t!116702 rules!2550)))))

(assert (= (and d!361777 (not res!576151)) b!1284721))

(assert (= (and b!1284721 res!576152) b!1284722))

(declare-fun m!1434917 () Bool)

(assert (=> b!1284721 m!1434917))

(declare-fun m!1434919 () Bool)

(assert (=> b!1284722 m!1434919))

(assert (=> b!1284608 d!361777))

(declare-fun d!361779 () Bool)

(assert (=> d!361779 (= (inv!17174 (tag!2458 (h!18176 rules!2550))) (= (mod (str.len (value!72219 (tag!2458 (h!18176 rules!2550)))) 2) 0))))

(assert (=> b!1284606 d!361779))

(declare-fun d!361781 () Bool)

(declare-fun res!576153 () Bool)

(declare-fun e!823898 () Bool)

(assert (=> d!361781 (=> (not res!576153) (not e!823898))))

(assert (=> d!361781 (= res!576153 (semiInverseModEq!827 (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toValue!3375 (transformation!2196 (h!18176 rules!2550)))))))

(assert (=> d!361781 (= (inv!17177 (transformation!2196 (h!18176 rules!2550))) e!823898)))

(declare-fun b!1284723 () Bool)

(assert (=> b!1284723 (= e!823898 (equivClasses!786 (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toValue!3375 (transformation!2196 (h!18176 rules!2550)))))))

(assert (= (and d!361781 res!576153) b!1284723))

(declare-fun m!1434921 () Bool)

(assert (=> d!361781 m!1434921))

(declare-fun m!1434923 () Bool)

(assert (=> b!1284723 m!1434923))

(assert (=> b!1284606 d!361781))

(declare-fun d!361783 () Bool)

(declare-fun c!211528 () Bool)

(assert (=> d!361783 (= c!211528 (is-IntegerValue!6858 (value!72220 t1!34)))))

(declare-fun e!823901 () Bool)

(assert (=> d!361783 (= (inv!21 (value!72220 t1!34)) e!823901)))

(declare-fun b!1284724 () Bool)

(declare-fun e!823900 () Bool)

(assert (=> b!1284724 (= e!823901 e!823900)))

(declare-fun c!211527 () Bool)

(assert (=> b!1284724 (= c!211527 (is-IntegerValue!6859 (value!72220 t1!34)))))

(declare-fun b!1284725 () Bool)

(declare-fun e!823899 () Bool)

(assert (=> b!1284725 (= e!823899 (inv!15 (value!72220 t1!34)))))

(declare-fun b!1284726 () Bool)

(assert (=> b!1284726 (= e!823900 (inv!17 (value!72220 t1!34)))))

(declare-fun b!1284727 () Bool)

(declare-fun res!576154 () Bool)

(assert (=> b!1284727 (=> res!576154 e!823899)))

(assert (=> b!1284727 (= res!576154 (not (is-IntegerValue!6860 (value!72220 t1!34))))))

(assert (=> b!1284727 (= e!823900 e!823899)))

(declare-fun b!1284728 () Bool)

(assert (=> b!1284728 (= e!823901 (inv!16 (value!72220 t1!34)))))

(assert (= (and d!361783 c!211528) b!1284728))

(assert (= (and d!361783 (not c!211528)) b!1284724))

(assert (= (and b!1284724 c!211527) b!1284726))

(assert (= (and b!1284724 (not c!211527)) b!1284727))

(assert (= (and b!1284727 (not res!576154)) b!1284725))

(declare-fun m!1434925 () Bool)

(assert (=> b!1284725 m!1434925))

(declare-fun m!1434927 () Bool)

(assert (=> b!1284726 m!1434927))

(declare-fun m!1434929 () Bool)

(assert (=> b!1284728 m!1434929))

(assert (=> b!1284605 d!361783))

(declare-fun b!1284740 () Bool)

(declare-fun e!823904 () Bool)

(declare-fun tp!373880 () Bool)

(declare-fun tp!373881 () Bool)

(assert (=> b!1284740 (= e!823904 (and tp!373880 tp!373881))))

(assert (=> b!1284598 (= tp!373821 e!823904)))

(declare-fun b!1284739 () Bool)

(declare-fun tp_is_empty!6537 () Bool)

(assert (=> b!1284739 (= e!823904 tp_is_empty!6537)))

(declare-fun b!1284741 () Bool)

(declare-fun tp!373882 () Bool)

(assert (=> b!1284741 (= e!823904 tp!373882)))

(declare-fun b!1284742 () Bool)

(declare-fun tp!373879 () Bool)

(declare-fun tp!373883 () Bool)

(assert (=> b!1284742 (= e!823904 (and tp!373879 tp!373883))))

(assert (= (and b!1284598 (is-ElementMatch!3510 (regex!2196 (rule!3935 t2!34)))) b!1284739))

(assert (= (and b!1284598 (is-Concat!5797 (regex!2196 (rule!3935 t2!34)))) b!1284740))

(assert (= (and b!1284598 (is-Star!3510 (regex!2196 (rule!3935 t2!34)))) b!1284741))

(assert (= (and b!1284598 (is-Union!3510 (regex!2196 (rule!3935 t2!34)))) b!1284742))

(declare-fun b!1284753 () Bool)

(declare-fun b_free!30127 () Bool)

(declare-fun b_next!30831 () Bool)

(assert (=> b!1284753 (= b_free!30127 (not b_next!30831))))

(declare-fun tp!373893 () Bool)

(declare-fun b_and!85289 () Bool)

(assert (=> b!1284753 (= tp!373893 b_and!85289)))

(declare-fun b_free!30129 () Bool)

(declare-fun b_next!30833 () Bool)

(assert (=> b!1284753 (= b_free!30129 (not b_next!30833))))

(declare-fun tb!69069 () Bool)

(declare-fun t!116720 () Bool)

(assert (=> (and b!1284753 (= (toChars!3234 (transformation!2196 (h!18176 (t!116702 rules!2550)))) (toChars!3234 (transformation!2196 (rule!3935 t2!34)))) t!116720) tb!69069))

(declare-fun result!83624 () Bool)

(assert (= result!83624 result!83606))

(assert (=> d!361755 t!116720))

(declare-fun t!116722 () Bool)

(declare-fun tb!69071 () Bool)

(assert (=> (and b!1284753 (= (toChars!3234 (transformation!2196 (h!18176 (t!116702 rules!2550)))) (toChars!3234 (transformation!2196 (rule!3935 t1!34)))) t!116722) tb!69071))

(declare-fun result!83626 () Bool)

(assert (= result!83626 result!83614))

(assert (=> b!1284687 t!116722))

(assert (=> b!1284690 t!116720))

(declare-fun tp!373892 () Bool)

(declare-fun b_and!85291 () Bool)

(assert (=> b!1284753 (= tp!373892 (and (=> t!116720 result!83624) (=> t!116722 result!83626) b_and!85291))))

(declare-fun e!823914 () Bool)

(assert (=> b!1284753 (= e!823914 (and tp!373893 tp!373892))))

(declare-fun e!823915 () Bool)

(declare-fun tp!373895 () Bool)

(declare-fun b!1284752 () Bool)

(assert (=> b!1284752 (= e!823915 (and tp!373895 (inv!17174 (tag!2458 (h!18176 (t!116702 rules!2550)))) (inv!17177 (transformation!2196 (h!18176 (t!116702 rules!2550)))) e!823914))))

(declare-fun b!1284751 () Bool)

(declare-fun e!823916 () Bool)

(declare-fun tp!373894 () Bool)

(assert (=> b!1284751 (= e!823916 (and e!823915 tp!373894))))

(assert (=> b!1284613 (= tp!373819 e!823916)))

(assert (= b!1284752 b!1284753))

(assert (= b!1284751 b!1284752))

(assert (= (and b!1284613 (is-Cons!12775 (t!116702 rules!2550))) b!1284751))

(declare-fun m!1434931 () Bool)

(assert (=> b!1284752 m!1434931))

(declare-fun m!1434933 () Bool)

(assert (=> b!1284752 m!1434933))

(declare-fun b!1284758 () Bool)

(declare-fun e!823919 () Bool)

(declare-fun tp!373898 () Bool)

(assert (=> b!1284758 (= e!823919 (and tp_is_empty!6537 tp!373898))))

(assert (=> b!1284611 (= tp!373817 e!823919)))

(assert (= (and b!1284611 (is-Cons!12774 (originalCharacters!3058 t2!34))) b!1284758))

(declare-fun b!1284760 () Bool)

(declare-fun e!823920 () Bool)

(declare-fun tp!373900 () Bool)

(declare-fun tp!373901 () Bool)

(assert (=> b!1284760 (= e!823920 (and tp!373900 tp!373901))))

(assert (=> b!1284606 (= tp!373827 e!823920)))

(declare-fun b!1284759 () Bool)

(assert (=> b!1284759 (= e!823920 tp_is_empty!6537)))

(declare-fun b!1284761 () Bool)

(declare-fun tp!373902 () Bool)

(assert (=> b!1284761 (= e!823920 tp!373902)))

(declare-fun b!1284762 () Bool)

(declare-fun tp!373899 () Bool)

(declare-fun tp!373903 () Bool)

(assert (=> b!1284762 (= e!823920 (and tp!373899 tp!373903))))

(assert (= (and b!1284606 (is-ElementMatch!3510 (regex!2196 (h!18176 rules!2550)))) b!1284759))

(assert (= (and b!1284606 (is-Concat!5797 (regex!2196 (h!18176 rules!2550)))) b!1284760))

(assert (= (and b!1284606 (is-Star!3510 (regex!2196 (h!18176 rules!2550)))) b!1284761))

(assert (= (and b!1284606 (is-Union!3510 (regex!2196 (h!18176 rules!2550)))) b!1284762))

(declare-fun b!1284763 () Bool)

(declare-fun e!823921 () Bool)

(declare-fun tp!373904 () Bool)

(assert (=> b!1284763 (= e!823921 (and tp_is_empty!6537 tp!373904))))

(assert (=> b!1284605 (= tp!373820 e!823921)))

(assert (= (and b!1284605 (is-Cons!12774 (originalCharacters!3058 t1!34))) b!1284763))

(declare-fun b!1284765 () Bool)

(declare-fun e!823922 () Bool)

(declare-fun tp!373906 () Bool)

(declare-fun tp!373907 () Bool)

(assert (=> b!1284765 (= e!823922 (and tp!373906 tp!373907))))

(assert (=> b!1284599 (= tp!373825 e!823922)))

(declare-fun b!1284764 () Bool)

(assert (=> b!1284764 (= e!823922 tp_is_empty!6537)))

(declare-fun b!1284766 () Bool)

(declare-fun tp!373908 () Bool)

(assert (=> b!1284766 (= e!823922 tp!373908)))

(declare-fun b!1284767 () Bool)

(declare-fun tp!373905 () Bool)

(declare-fun tp!373909 () Bool)

(assert (=> b!1284767 (= e!823922 (and tp!373905 tp!373909))))

(assert (= (and b!1284599 (is-ElementMatch!3510 (regex!2196 (rule!3935 t1!34)))) b!1284764))

(assert (= (and b!1284599 (is-Concat!5797 (regex!2196 (rule!3935 t1!34)))) b!1284765))

(assert (= (and b!1284599 (is-Star!3510 (regex!2196 (rule!3935 t1!34)))) b!1284766))

(assert (= (and b!1284599 (is-Union!3510 (regex!2196 (rule!3935 t1!34)))) b!1284767))

(declare-fun b_lambda!36589 () Bool)

(assert (= b_lambda!36585 (or (and b!1284607 b_free!30105 (= (toChars!3234 (transformation!2196 (rule!3935 t2!34))) (toChars!3234 (transformation!2196 (rule!3935 t1!34))))) (and b!1284604 b_free!30109) (and b!1284612 b_free!30113 (= (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toChars!3234 (transformation!2196 (rule!3935 t1!34))))) (and b!1284753 b_free!30129 (= (toChars!3234 (transformation!2196 (h!18176 (t!116702 rules!2550)))) (toChars!3234 (transformation!2196 (rule!3935 t1!34))))) b_lambda!36589)))

(declare-fun b_lambda!36591 () Bool)

(assert (= b_lambda!36583 (or (and b!1284607 b_free!30105) (and b!1284604 b_free!30109 (= (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (toChars!3234 (transformation!2196 (rule!3935 t2!34))))) (and b!1284612 b_free!30113 (= (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toChars!3234 (transformation!2196 (rule!3935 t2!34))))) (and b!1284753 b_free!30129 (= (toChars!3234 (transformation!2196 (h!18176 (t!116702 rules!2550)))) (toChars!3234 (transformation!2196 (rule!3935 t2!34))))) b_lambda!36591)))

(declare-fun b_lambda!36593 () Bool)

(assert (= b_lambda!36587 (or (and b!1284607 b_free!30105) (and b!1284604 b_free!30109 (= (toChars!3234 (transformation!2196 (rule!3935 t1!34))) (toChars!3234 (transformation!2196 (rule!3935 t2!34))))) (and b!1284612 b_free!30113 (= (toChars!3234 (transformation!2196 (h!18176 rules!2550))) (toChars!3234 (transformation!2196 (rule!3935 t2!34))))) (and b!1284753 b_free!30129 (= (toChars!3234 (transformation!2196 (h!18176 (t!116702 rules!2550)))) (toChars!3234 (transformation!2196 (rule!3935 t2!34))))) b_lambda!36593)))

(push 1)

(assert (not b!1284676))

(assert (not b_next!30831))

(assert (not b!1284721))

(assert (not b!1284725))

(assert (not b!1284687))

(assert (not b!1284675))

(assert (not b_lambda!36593))

(assert (not d!361757))

(assert (not d!361745))

(assert (not d!361769))

(assert (not b!1284740))

(assert (not d!361743))

(assert (not b!1284728))

(assert (not b!1284709))

(assert (not b!1284766))

(assert (not b!1284703))

(assert (not b_lambda!36589))

(assert (not b!1284752))

(assert b_and!85287)

(assert b_and!85291)

(assert (not b!1284682))

(assert (not b!1284758))

(assert (not b!1284762))

(assert (not b!1284690))

(assert (not b_next!30811))

(assert (not b!1284691))

(assert (not b_lambda!36591))

(assert b_and!85247)

(assert (not tb!69057))

(assert (not b!1284706))

(assert (not b!1284677))

(assert b_and!85255)

(assert (not d!361753))

(assert (not b!1284763))

(assert (not d!361781))

(assert (not b!1284704))

(assert (not b!1284713))

(assert (not b!1284761))

(assert (not b_next!30807))

(assert (not b!1284723))

(assert (not d!361767))

(assert (not b!1284765))

(assert (not b!1284767))

(assert tp_is_empty!6537)

(assert (not b!1284716))

(assert (not b!1284712))

(assert (not b_next!30817))

(assert (not b!1284688))

(assert (not b_next!30809))

(assert (not b!1284742))

(assert (not b_next!30815))

(assert b_and!85289)

(assert b_and!85285)

(assert (not b!1284751))

(assert (not b!1284726))

(assert (not b!1284689))

(assert (not b_next!30833))

(assert (not b_next!30813))

(assert (not d!361759))

(assert b_and!85283)

(assert (not b!1284741))

(assert (not d!361763))

(assert (not b!1284714))

(assert (not d!361775))

(assert (not d!361755))

(assert (not tb!69063))

(assert b_and!85251)

(assert (not b!1284760))

(assert (not b!1284722))

(assert (not b!1284715))

(check-sat)

(pop 1)

(push 1)

(assert b_and!85287)

(assert b_and!85291)

(assert (not b_next!30831))

(assert b_and!85255)

(assert (not b_next!30807))

(assert b_and!85285)

(assert b_and!85283)

(assert b_and!85251)

(assert (not b_next!30811))

(assert b_and!85247)

(assert (not b_next!30817))

(assert (not b_next!30809))

(assert (not b_next!30815))

(assert b_and!85289)

(assert (not b_next!30833))

(assert (not b_next!30813))

(check-sat)

(pop 1)

