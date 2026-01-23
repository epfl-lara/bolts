; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!349252 () Bool)

(assert start!349252)

(declare-fun b!3704437 () Bool)

(declare-fun b_free!98925 () Bool)

(declare-fun b_next!99629 () Bool)

(assert (=> b!3704437 (= b_free!98925 (not b_next!99629))))

(declare-fun tp!1126446 () Bool)

(declare-fun b_and!277159 () Bool)

(assert (=> b!3704437 (= tp!1126446 b_and!277159)))

(declare-fun b_free!98927 () Bool)

(declare-fun b_next!99631 () Bool)

(assert (=> b!3704437 (= b_free!98927 (not b_next!99631))))

(declare-fun tp!1126443 () Bool)

(declare-fun b_and!277161 () Bool)

(assert (=> b!3704437 (= tp!1126443 b_and!277161)))

(declare-fun b!3704431 () Bool)

(declare-fun res!1506987 () Bool)

(declare-fun e!2294513 () Bool)

(assert (=> b!3704431 (=> (not res!1506987) (not e!2294513))))

(declare-datatypes ((LexerInterface!5594 0))(
  ( (LexerInterfaceExt!5591 (__x!24687 Int)) (Lexer!5592) )
))
(declare-fun thiss!19663 () LexerInterface!5594)

(declare-datatypes ((List!39557 0))(
  ( (Nil!39433) (Cons!39433 (h!44853 (_ BitVec 16)) (t!302240 List!39557)) )
))
(declare-datatypes ((TokenValue!6235 0))(
  ( (FloatLiteralValue!12470 (text!44090 List!39557)) (TokenValueExt!6234 (__x!24688 Int)) (Broken!31175 (value!191552 List!39557)) (Object!6358) (End!6235) (Def!6235) (Underscore!6235) (Match!6235) (Else!6235) (Error!6235) (Case!6235) (If!6235) (Extends!6235) (Abstract!6235) (Class!6235) (Val!6235) (DelimiterValue!12470 (del!6295 List!39557)) (KeywordValue!6241 (value!191553 List!39557)) (CommentValue!12470 (value!191554 List!39557)) (WhitespaceValue!12470 (value!191555 List!39557)) (IndentationValue!6235 (value!191556 List!39557)) (String!44510) (Int32!6235) (Broken!31176 (value!191557 List!39557)) (Boolean!6236) (Unit!57382) (OperatorValue!6238 (op!6295 List!39557)) (IdentifierValue!12470 (value!191558 List!39557)) (IdentifierValue!12471 (value!191559 List!39557)) (WhitespaceValue!12471 (value!191560 List!39557)) (True!12470) (False!12470) (Broken!31177 (value!191561 List!39557)) (Broken!31178 (value!191562 List!39557)) (True!12471) (RightBrace!6235) (RightBracket!6235) (Colon!6235) (Null!6235) (Comma!6235) (LeftBracket!6235) (False!12471) (LeftBrace!6235) (ImaginaryLiteralValue!6235 (text!44091 List!39557)) (StringLiteralValue!18705 (value!191563 List!39557)) (EOFValue!6235 (value!191564 List!39557)) (IdentValue!6235 (value!191565 List!39557)) (DelimiterValue!12471 (value!191566 List!39557)) (DedentValue!6235 (value!191567 List!39557)) (NewLineValue!6235 (value!191568 List!39557)) (IntegerValue!18705 (value!191569 (_ BitVec 32)) (text!44092 List!39557)) (IntegerValue!18706 (value!191570 Int) (text!44093 List!39557)) (Times!6235) (Or!6235) (Equal!6235) (Minus!6235) (Broken!31179 (value!191571 List!39557)) (And!6235) (Div!6235) (LessEqual!6235) (Mod!6235) (Concat!16999) (Not!6235) (Plus!6235) (SpaceValue!6235 (value!191572 List!39557)) (IntegerValue!18707 (value!191573 Int) (text!44094 List!39557)) (StringLiteralValue!18706 (text!44095 List!39557)) (FloatLiteralValue!12471 (text!44096 List!39557)) (BytesLiteralValue!6235 (value!191574 List!39557)) (CommentValue!12471 (value!191575 List!39557)) (StringLiteralValue!18707 (value!191576 List!39557)) (ErrorTokenValue!6235 (msg!6296 List!39557)) )
))
(declare-datatypes ((String!44511 0))(
  ( (String!44512 (value!191577 String)) )
))
(declare-datatypes ((C!21714 0))(
  ( (C!21715 (val!12905 Int)) )
))
(declare-datatypes ((List!39558 0))(
  ( (Nil!39434) (Cons!39434 (h!44854 C!21714) (t!302241 List!39558)) )
))
(declare-datatypes ((IArray!24209 0))(
  ( (IArray!24210 (innerList!12162 List!39558)) )
))
(declare-datatypes ((Conc!12102 0))(
  ( (Node!12102 (left!30663 Conc!12102) (right!30993 Conc!12102) (csize!24434 Int) (cheight!12313 Int)) (Leaf!18716 (xs!15304 IArray!24209) (csize!24435 Int)) (Empty!12102) )
))
(declare-datatypes ((BalanceConc!23818 0))(
  ( (BalanceConc!23819 (c!639930 Conc!12102)) )
))
(declare-datatypes ((Regex!10764 0))(
  ( (ElementMatch!10764 (c!639931 C!21714)) (Concat!17000 (regOne!22040 Regex!10764) (regTwo!22040 Regex!10764)) (EmptyExpr!10764) (Star!10764 (reg!11093 Regex!10764)) (EmptyLang!10764) (Union!10764 (regOne!22041 Regex!10764) (regTwo!22041 Regex!10764)) )
))
(declare-datatypes ((TokenValueInjection!11898 0))(
  ( (TokenValueInjection!11899 (toValue!8349 Int) (toChars!8208 Int)) )
))
(declare-datatypes ((Rule!11810 0))(
  ( (Rule!11811 (regex!6005 Regex!10764) (tag!6859 String!44511) (isSeparator!6005 Bool) (transformation!6005 TokenValueInjection!11898)) )
))
(declare-datatypes ((List!39559 0))(
  ( (Nil!39435) (Cons!39435 (h!44855 Rule!11810) (t!302242 List!39559)) )
))
(declare-fun rules!2525 () List!39559)

(declare-fun rulesInvariant!4991 (LexerInterface!5594 List!39559) Bool)

(assert (=> b!3704431 (= res!1506987 (rulesInvariant!4991 thiss!19663 rules!2525))))

(declare-fun b!3704432 () Bool)

(declare-fun e!2294517 () Bool)

(assert (=> b!3704432 (= e!2294513 e!2294517)))

(declare-fun res!1506988 () Bool)

(assert (=> b!3704432 (=> (not res!1506988) (not e!2294517))))

(declare-datatypes ((Option!8547 0))(
  ( (None!8546) (Some!8546 (v!38526 Rule!11810)) )
))
(declare-fun lt!1296167 () Option!8547)

(declare-fun isEmpty!23471 (Option!8547) Bool)

(assert (=> b!3704432 (= res!1506988 (not (isEmpty!23471 lt!1296167)))))

(assert (=> b!3704432 (= lt!1296167 (Some!8546 (h!44855 rules!2525)))))

(declare-fun res!1506990 () Bool)

(assert (=> start!349252 (=> (not res!1506990) (not e!2294513))))

(assert (=> start!349252 (= res!1506990 (is-Lexer!5592 thiss!19663))))

(assert (=> start!349252 e!2294513))

(assert (=> start!349252 true))

(declare-fun e!2294511 () Bool)

(assert (=> start!349252 e!2294511))

(declare-fun tag!164 () String!44511)

(declare-fun inv!52951 (String!44511) Bool)

(assert (=> start!349252 (inv!52951 tag!164)))

(declare-fun tp!1126445 () Bool)

(declare-fun e!2294512 () Bool)

(declare-fun b!3704433 () Bool)

(declare-fun e!2294514 () Bool)

(declare-fun inv!52954 (TokenValueInjection!11898) Bool)

(assert (=> b!3704433 (= e!2294514 (and tp!1126445 (inv!52951 (tag!6859 (h!44855 rules!2525))) (inv!52954 (transformation!6005 (h!44855 rules!2525))) e!2294512))))

(declare-fun b!3704434 () Bool)

(declare-fun tp!1126444 () Bool)

(assert (=> b!3704434 (= e!2294511 (and e!2294514 tp!1126444))))

(declare-fun b!3704435 () Bool)

(declare-fun res!1506989 () Bool)

(assert (=> b!3704435 (=> (not res!1506989) (not e!2294513))))

(assert (=> b!3704435 (= res!1506989 (and (is-Cons!39435 rules!2525) (= (tag!6859 (h!44855 rules!2525)) tag!164)))))

(declare-fun b!3704436 () Bool)

(declare-fun isDefined!6734 (Option!8547) Bool)

(assert (=> b!3704436 (= e!2294517 (not (isDefined!6734 lt!1296167)))))

(assert (=> b!3704437 (= e!2294512 (and tp!1126446 tp!1126443))))

(assert (= (and start!349252 res!1506990) b!3704431))

(assert (= (and b!3704431 res!1506987) b!3704435))

(assert (= (and b!3704435 res!1506989) b!3704432))

(assert (= (and b!3704432 res!1506988) b!3704436))

(assert (= b!3704433 b!3704437))

(assert (= b!3704434 b!3704433))

(assert (= (and start!349252 (is-Cons!39435 rules!2525)) b!3704434))

(declare-fun m!4215169 () Bool)

(assert (=> start!349252 m!4215169))

(declare-fun m!4215171 () Bool)

(assert (=> b!3704436 m!4215171))

(declare-fun m!4215173 () Bool)

(assert (=> b!3704432 m!4215173))

(declare-fun m!4215175 () Bool)

(assert (=> b!3704431 m!4215175))

(declare-fun m!4215177 () Bool)

(assert (=> b!3704433 m!4215177))

(declare-fun m!4215179 () Bool)

(assert (=> b!3704433 m!4215179))

(push 1)

(assert (not b!3704434))

(assert (not b_next!99629))

(assert (not b!3704432))

(assert (not b!3704433))

(assert b_and!277161)

(assert (not b_next!99631))

(assert (not start!349252))

(assert (not b!3704436))

(assert b_and!277159)

(assert (not b!3704431))

(check-sat)

(pop 1)

(push 1)

(assert b_and!277161)

(assert b_and!277159)

(assert (not b_next!99631))

(assert (not b_next!99629))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1086180 () Bool)

(assert (=> d!1086180 (= (inv!52951 (tag!6859 (h!44855 rules!2525))) (= (mod (str.len (value!191577 (tag!6859 (h!44855 rules!2525)))) 2) 0))))

(assert (=> b!3704433 d!1086180))

(declare-fun d!1086182 () Bool)

(declare-fun res!1507009 () Bool)

(declare-fun e!2294541 () Bool)

(assert (=> d!1086182 (=> (not res!1507009) (not e!2294541))))

(declare-fun semiInverseModEq!2568 (Int Int) Bool)

(assert (=> d!1086182 (= res!1507009 (semiInverseModEq!2568 (toChars!8208 (transformation!6005 (h!44855 rules!2525))) (toValue!8349 (transformation!6005 (h!44855 rules!2525)))))))

(assert (=> d!1086182 (= (inv!52954 (transformation!6005 (h!44855 rules!2525))) e!2294541)))

(declare-fun b!3704461 () Bool)

(declare-fun equivClasses!2467 (Int Int) Bool)

(assert (=> b!3704461 (= e!2294541 (equivClasses!2467 (toChars!8208 (transformation!6005 (h!44855 rules!2525))) (toValue!8349 (transformation!6005 (h!44855 rules!2525)))))))

(assert (= (and d!1086182 res!1507009) b!3704461))

(declare-fun m!4215193 () Bool)

(assert (=> d!1086182 m!4215193))

(declare-fun m!4215195 () Bool)

(assert (=> b!3704461 m!4215195))

(assert (=> b!3704433 d!1086182))

(declare-fun d!1086188 () Bool)

(assert (=> d!1086188 (= (inv!52951 tag!164) (= (mod (str.len (value!191577 tag!164)) 2) 0))))

(assert (=> start!349252 d!1086188))

(declare-fun d!1086190 () Bool)

(assert (=> d!1086190 (= (isEmpty!23471 lt!1296167) (not (is-Some!8546 lt!1296167)))))

(assert (=> b!3704432 d!1086190))

(declare-fun d!1086192 () Bool)

(declare-fun res!1507015 () Bool)

(declare-fun e!2294547 () Bool)

(assert (=> d!1086192 (=> (not res!1507015) (not e!2294547))))

(declare-fun rulesValid!2324 (LexerInterface!5594 List!39559) Bool)

(assert (=> d!1086192 (= res!1507015 (rulesValid!2324 thiss!19663 rules!2525))))

(assert (=> d!1086192 (= (rulesInvariant!4991 thiss!19663 rules!2525) e!2294547)))

(declare-fun b!3704467 () Bool)

(declare-datatypes ((List!39563 0))(
  ( (Nil!39439) (Cons!39439 (h!44859 String!44511) (t!302246 List!39563)) )
))
(declare-fun noDuplicateTag!2325 (LexerInterface!5594 List!39559 List!39563) Bool)

(assert (=> b!3704467 (= e!2294547 (noDuplicateTag!2325 thiss!19663 rules!2525 Nil!39439))))

(assert (= (and d!1086192 res!1507015) b!3704467))

(declare-fun m!4215197 () Bool)

(assert (=> d!1086192 m!4215197))

(declare-fun m!4215199 () Bool)

(assert (=> b!3704467 m!4215199))

(assert (=> b!3704431 d!1086192))

(declare-fun d!1086194 () Bool)

(assert (=> d!1086194 (= (isDefined!6734 lt!1296167) (not (isEmpty!23471 lt!1296167)))))

(declare-fun bs!574606 () Bool)

(assert (= bs!574606 d!1086194))

(assert (=> bs!574606 m!4215173))

(assert (=> b!3704436 d!1086194))

(declare-fun b!3704480 () Bool)

(declare-fun b_free!98933 () Bool)

(declare-fun b_next!99637 () Bool)

(assert (=> b!3704480 (= b_free!98933 (not b_next!99637))))

(declare-fun tp!1126468 () Bool)

(declare-fun b_and!277167 () Bool)

(assert (=> b!3704480 (= tp!1126468 b_and!277167)))

(declare-fun b_free!98935 () Bool)

(declare-fun b_next!99639 () Bool)

(assert (=> b!3704480 (= b_free!98935 (not b_next!99639))))

(declare-fun tp!1126470 () Bool)

(declare-fun b_and!277169 () Bool)

(assert (=> b!3704480 (= tp!1126470 b_and!277169)))

(declare-fun e!2294559 () Bool)

(assert (=> b!3704480 (= e!2294559 (and tp!1126468 tp!1126470))))

(declare-fun b!3704479 () Bool)

(declare-fun e!2294560 () Bool)

(declare-fun tp!1126467 () Bool)

(assert (=> b!3704479 (= e!2294560 (and tp!1126467 (inv!52951 (tag!6859 (h!44855 (t!302242 rules!2525)))) (inv!52954 (transformation!6005 (h!44855 (t!302242 rules!2525)))) e!2294559))))

(declare-fun b!3704478 () Bool)

(declare-fun e!2294558 () Bool)

(declare-fun tp!1126469 () Bool)

(assert (=> b!3704478 (= e!2294558 (and e!2294560 tp!1126469))))

(assert (=> b!3704434 (= tp!1126444 e!2294558)))

(assert (= b!3704479 b!3704480))

(assert (= b!3704478 b!3704479))

(assert (= (and b!3704434 (is-Cons!39435 (t!302242 rules!2525))) b!3704478))

(declare-fun m!4215205 () Bool)

(assert (=> b!3704479 m!4215205))

(declare-fun m!4215207 () Bool)

(assert (=> b!3704479 m!4215207))

(declare-fun e!2294565 () Bool)

(assert (=> b!3704433 (= tp!1126445 e!2294565)))

(declare-fun b!3704497 () Bool)

(declare-fun tp!1126481 () Bool)

(declare-fun tp!1126485 () Bool)

(assert (=> b!3704497 (= e!2294565 (and tp!1126481 tp!1126485))))

(declare-fun b!3704495 () Bool)

(declare-fun tp!1126482 () Bool)

(declare-fun tp!1126483 () Bool)

(assert (=> b!3704495 (= e!2294565 (and tp!1126482 tp!1126483))))

(declare-fun b!3704494 () Bool)

(declare-fun tp_is_empty!18583 () Bool)

(assert (=> b!3704494 (= e!2294565 tp_is_empty!18583)))

(declare-fun b!3704496 () Bool)

(declare-fun tp!1126484 () Bool)

(assert (=> b!3704496 (= e!2294565 tp!1126484)))

(assert (= (and b!3704433 (is-ElementMatch!10764 (regex!6005 (h!44855 rules!2525)))) b!3704494))

(assert (= (and b!3704433 (is-Concat!17000 (regex!6005 (h!44855 rules!2525)))) b!3704495))

(assert (= (and b!3704433 (is-Star!10764 (regex!6005 (h!44855 rules!2525)))) b!3704496))

(assert (= (and b!3704433 (is-Union!10764 (regex!6005 (h!44855 rules!2525)))) b!3704497))

(push 1)

(assert (not b!3704461))

(assert (not b_next!99629))

(assert (not b!3704496))

(assert (not b_next!99637))

(assert b_and!277167)

(assert (not b_next!99631))

(assert tp_is_empty!18583)

(assert b_and!277169)

(assert (not b!3704497))

(assert b_and!277159)

(assert (not b_next!99639))

(assert (not b!3704478))

(assert (not b!3704495))

(assert (not b!3704479))

(assert (not b!3704467))

(assert (not d!1086192))

(assert (not d!1086182))

(assert b_and!277161)

(assert (not d!1086194))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99629))

(assert (not b_next!99637))

(assert b_and!277161)

(assert b_and!277167)

(assert (not b_next!99631))

(assert b_and!277169)

(assert b_and!277159)

(assert (not b_next!99639))

(check-sat)

(pop 1)

