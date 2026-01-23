; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!395448 () Bool)

(assert start!395448)

(declare-fun b!4154079 () Bool)

(declare-fun b_free!118983 () Bool)

(declare-fun b_next!119687 () Bool)

(assert (=> b!4154079 (= b_free!118983 (not b_next!119687))))

(declare-fun tp!1266591 () Bool)

(declare-fun b_and!323345 () Bool)

(assert (=> b!4154079 (= tp!1266591 b_and!323345)))

(declare-fun b_free!118985 () Bool)

(declare-fun b_next!119689 () Bool)

(assert (=> b!4154079 (= b_free!118985 (not b_next!119689))))

(declare-fun tp!1266589 () Bool)

(declare-fun b_and!323347 () Bool)

(assert (=> b!4154079 (= tp!1266589 b_and!323347)))

(declare-fun b!4154080 () Bool)

(declare-fun b_free!118987 () Bool)

(declare-fun b_next!119691 () Bool)

(assert (=> b!4154080 (= b_free!118987 (not b_next!119691))))

(declare-fun tp!1266588 () Bool)

(declare-fun b_and!323349 () Bool)

(assert (=> b!4154080 (= tp!1266588 b_and!323349)))

(declare-fun b_free!118989 () Bool)

(declare-fun b_next!119693 () Bool)

(assert (=> b!4154080 (= b_free!118989 (not b_next!119693))))

(declare-fun tp!1266586 () Bool)

(declare-fun b_and!323351 () Bool)

(assert (=> b!4154080 (= tp!1266586 b_and!323351)))

(declare-fun b!4154083 () Bool)

(declare-fun b_free!118991 () Bool)

(declare-fun b_next!119695 () Bool)

(assert (=> b!4154083 (= b_free!118991 (not b_next!119695))))

(declare-fun tp!1266592 () Bool)

(declare-fun b_and!323353 () Bool)

(assert (=> b!4154083 (= tp!1266592 b_and!323353)))

(declare-fun b_free!118993 () Bool)

(declare-fun b_next!119697 () Bool)

(assert (=> b!4154083 (= b_free!118993 (not b_next!119697))))

(declare-fun tp!1266585 () Bool)

(declare-fun b_and!323355 () Bool)

(assert (=> b!4154083 (= tp!1266585 b_and!323355)))

(declare-fun res!1701265 () Bool)

(declare-fun e!2577493 () Bool)

(assert (=> start!395448 (=> (not res!1701265) (not e!2577493))))

(declare-datatypes ((LexerInterface!7040 0))(
  ( (LexerInterfaceExt!7037 (__x!27579 Int)) (Lexer!7038) )
))
(declare-fun thiss!26968 () LexerInterface!7040)

(assert (=> start!395448 (= res!1701265 (is-Lexer!7038 thiss!26968))))

(assert (=> start!395448 e!2577493))

(assert (=> start!395448 true))

(declare-fun e!2577485 () Bool)

(assert (=> start!395448 e!2577485))

(declare-fun e!2577492 () Bool)

(assert (=> start!395448 e!2577492))

(declare-fun e!2577489 () Bool)

(assert (=> start!395448 e!2577489))

(declare-fun b!4154075 () Bool)

(declare-fun res!1701267 () Bool)

(assert (=> b!4154075 (=> (not res!1701267) (not e!2577493))))

(declare-datatypes ((List!45304 0))(
  ( (Nil!45180) (Cons!45180 (h!50600 (_ BitVec 16)) (t!343335 List!45304)) )
))
(declare-datatypes ((TokenValue!7681 0))(
  ( (FloatLiteralValue!15362 (text!54212 List!45304)) (TokenValueExt!7680 (__x!27580 Int)) (Broken!38405 (value!232869 List!45304)) (Object!7804) (End!7681) (Def!7681) (Underscore!7681) (Match!7681) (Else!7681) (Error!7681) (Case!7681) (If!7681) (Extends!7681) (Abstract!7681) (Class!7681) (Val!7681) (DelimiterValue!15362 (del!7741 List!45304)) (KeywordValue!7687 (value!232870 List!45304)) (CommentValue!15362 (value!232871 List!45304)) (WhitespaceValue!15362 (value!232872 List!45304)) (IndentationValue!7681 (value!232873 List!45304)) (String!52156) (Int32!7681) (Broken!38406 (value!232874 List!45304)) (Boolean!7682) (Unit!64415) (OperatorValue!7684 (op!7741 List!45304)) (IdentifierValue!15362 (value!232875 List!45304)) (IdentifierValue!15363 (value!232876 List!45304)) (WhitespaceValue!15363 (value!232877 List!45304)) (True!15362) (False!15362) (Broken!38407 (value!232878 List!45304)) (Broken!38408 (value!232879 List!45304)) (True!15363) (RightBrace!7681) (RightBracket!7681) (Colon!7681) (Null!7681) (Comma!7681) (LeftBracket!7681) (False!15363) (LeftBrace!7681) (ImaginaryLiteralValue!7681 (text!54213 List!45304)) (StringLiteralValue!23043 (value!232880 List!45304)) (EOFValue!7681 (value!232881 List!45304)) (IdentValue!7681 (value!232882 List!45304)) (DelimiterValue!15363 (value!232883 List!45304)) (DedentValue!7681 (value!232884 List!45304)) (NewLineValue!7681 (value!232885 List!45304)) (IntegerValue!23043 (value!232886 (_ BitVec 32)) (text!54214 List!45304)) (IntegerValue!23044 (value!232887 Int) (text!54215 List!45304)) (Times!7681) (Or!7681) (Equal!7681) (Minus!7681) (Broken!38409 (value!232888 List!45304)) (And!7681) (Div!7681) (LessEqual!7681) (Mod!7681) (Concat!20037) (Not!7681) (Plus!7681) (SpaceValue!7681 (value!232889 List!45304)) (IntegerValue!23045 (value!232890 Int) (text!54216 List!45304)) (StringLiteralValue!23044 (text!54217 List!45304)) (FloatLiteralValue!15363 (text!54218 List!45304)) (BytesLiteralValue!7681 (value!232891 List!45304)) (CommentValue!15363 (value!232892 List!45304)) (StringLiteralValue!23045 (value!232893 List!45304)) (ErrorTokenValue!7681 (msg!7742 List!45304)) )
))
(declare-datatypes ((C!24898 0))(
  ( (C!24899 (val!14559 Int)) )
))
(declare-datatypes ((List!45305 0))(
  ( (Nil!45181) (Cons!45181 (h!50601 C!24898) (t!343336 List!45305)) )
))
(declare-datatypes ((String!52157 0))(
  ( (String!52158 (value!232894 String)) )
))
(declare-datatypes ((IArray!27329 0))(
  ( (IArray!27330 (innerList!13722 List!45305)) )
))
(declare-datatypes ((Conc!13662 0))(
  ( (Node!13662 (left!33810 Conc!13662) (right!34140 Conc!13662) (csize!27554 Int) (cheight!13873 Int)) (Leaf!21103 (xs!16968 IArray!27329) (csize!27555 Int)) (Empty!13662) )
))
(declare-datatypes ((Regex!12356 0))(
  ( (ElementMatch!12356 (c!711248 C!24898)) (Concat!20038 (regOne!25224 Regex!12356) (regTwo!25224 Regex!12356)) (EmptyExpr!12356) (Star!12356 (reg!12685 Regex!12356)) (EmptyLang!12356) (Union!12356 (regOne!25225 Regex!12356) (regTwo!25225 Regex!12356)) )
))
(declare-datatypes ((BalanceConc!26918 0))(
  ( (BalanceConc!26919 (c!711249 Conc!13662)) )
))
(declare-datatypes ((TokenValueInjection!14790 0))(
  ( (TokenValueInjection!14791 (toValue!10115 Int) (toChars!9974 Int)) )
))
(declare-datatypes ((Rule!14702 0))(
  ( (Rule!14703 (regex!7451 Regex!12356) (tag!8313 String!52157) (isSeparator!7451 Bool) (transformation!7451 TokenValueInjection!14790)) )
))
(declare-datatypes ((List!45306 0))(
  ( (Nil!45182) (Cons!45182 (h!50602 Rule!14702) (t!343337 List!45306)) )
))
(declare-fun rules!4102 () List!45306)

(declare-fun r2!597 () Rule!14702)

(declare-fun contains!9145 (List!45306 Rule!14702) Bool)

(assert (=> b!4154075 (= res!1701267 (contains!9145 rules!4102 r2!597))))

(declare-fun b!4154076 () Bool)

(declare-fun e!2577484 () Bool)

(declare-fun tp!1266593 () Bool)

(declare-fun inv!59773 (String!52157) Bool)

(declare-fun inv!59776 (TokenValueInjection!14790) Bool)

(assert (=> b!4154076 (= e!2577489 (and tp!1266593 (inv!59773 (tag!8313 r2!597)) (inv!59776 (transformation!7451 r2!597)) e!2577484))))

(declare-fun tp!1266590 () Bool)

(declare-fun r1!615 () Rule!14702)

(declare-fun b!4154077 () Bool)

(declare-fun e!2577488 () Bool)

(assert (=> b!4154077 (= e!2577492 (and tp!1266590 (inv!59773 (tag!8313 r1!615)) (inv!59776 (transformation!7451 r1!615)) e!2577488))))

(declare-fun b!4154078 () Bool)

(declare-fun res!1701263 () Bool)

(assert (=> b!4154078 (=> (not res!1701263) (not e!2577493))))

(declare-fun getIndex!793 (List!45306 Rule!14702) Int)

(assert (=> b!4154078 (= res!1701263 (< (getIndex!793 rules!4102 r1!615) (getIndex!793 rules!4102 r2!597)))))

(assert (=> b!4154079 (= e!2577484 (and tp!1266591 tp!1266589))))

(assert (=> b!4154080 (= e!2577488 (and tp!1266588 tp!1266586))))

(declare-fun b!4154081 () Bool)

(assert (=> b!4154081 (= e!2577493 (= rules!4102 Nil!45182))))

(declare-fun b!4154082 () Bool)

(declare-fun res!1701266 () Bool)

(assert (=> b!4154082 (=> (not res!1701266) (not e!2577493))))

(declare-datatypes ((List!45307 0))(
  ( (Nil!45183) (Cons!45183 (h!50603 String!52157) (t!343338 List!45307)) )
))
(declare-fun noDuplicateTag!3028 (LexerInterface!7040 List!45306 List!45307) Bool)

(declare-fun noDuplicateTag$default$2!33 (LexerInterface!7040) List!45307)

(assert (=> b!4154082 (= res!1701266 (noDuplicateTag!3028 thiss!26968 rules!4102 (noDuplicateTag$default$2!33 thiss!26968)))))

(declare-fun e!2577487 () Bool)

(assert (=> b!4154083 (= e!2577487 (and tp!1266592 tp!1266585))))

(declare-fun b!4154084 () Bool)

(declare-fun res!1701264 () Bool)

(assert (=> b!4154084 (=> (not res!1701264) (not e!2577493))))

(assert (=> b!4154084 (= res!1701264 (contains!9145 rules!4102 r1!615))))

(declare-fun e!2577483 () Bool)

(declare-fun b!4154085 () Bool)

(declare-fun tp!1266594 () Bool)

(assert (=> b!4154085 (= e!2577483 (and tp!1266594 (inv!59773 (tag!8313 (h!50602 rules!4102))) (inv!59776 (transformation!7451 (h!50602 rules!4102))) e!2577487))))

(declare-fun b!4154086 () Bool)

(declare-fun res!1701262 () Bool)

(assert (=> b!4154086 (=> (not res!1701262) (not e!2577493))))

(declare-fun head!8777 (List!45306) Rule!14702)

(assert (=> b!4154086 (= res!1701262 (not (= (head!8777 rules!4102) r1!615)))))

(declare-fun b!4154087 () Bool)

(declare-fun tp!1266587 () Bool)

(assert (=> b!4154087 (= e!2577485 (and e!2577483 tp!1266587))))

(assert (= (and start!395448 res!1701265) b!4154084))

(assert (= (and b!4154084 res!1701264) b!4154075))

(assert (= (and b!4154075 res!1701267) b!4154082))

(assert (= (and b!4154082 res!1701266) b!4154078))

(assert (= (and b!4154078 res!1701263) b!4154086))

(assert (= (and b!4154086 res!1701262) b!4154081))

(assert (= b!4154085 b!4154083))

(assert (= b!4154087 b!4154085))

(assert (= (and start!395448 (is-Cons!45182 rules!4102)) b!4154087))

(assert (= b!4154077 b!4154080))

(assert (= start!395448 b!4154077))

(assert (= b!4154076 b!4154079))

(assert (= start!395448 b!4154076))

(declare-fun m!4748985 () Bool)

(assert (=> b!4154075 m!4748985))

(declare-fun m!4748987 () Bool)

(assert (=> b!4154086 m!4748987))

(declare-fun m!4748989 () Bool)

(assert (=> b!4154084 m!4748989))

(declare-fun m!4748991 () Bool)

(assert (=> b!4154078 m!4748991))

(declare-fun m!4748993 () Bool)

(assert (=> b!4154078 m!4748993))

(declare-fun m!4748995 () Bool)

(assert (=> b!4154082 m!4748995))

(assert (=> b!4154082 m!4748995))

(declare-fun m!4748997 () Bool)

(assert (=> b!4154082 m!4748997))

(declare-fun m!4748999 () Bool)

(assert (=> b!4154076 m!4748999))

(declare-fun m!4749001 () Bool)

(assert (=> b!4154076 m!4749001))

(declare-fun m!4749003 () Bool)

(assert (=> b!4154077 m!4749003))

(declare-fun m!4749005 () Bool)

(assert (=> b!4154077 m!4749005))

(declare-fun m!4749007 () Bool)

(assert (=> b!4154085 m!4749007))

(declare-fun m!4749009 () Bool)

(assert (=> b!4154085 m!4749009))

(push 1)

(assert (not b!4154077))

(assert b_and!323349)

(assert b_and!323347)

(assert b_and!323351)

(assert (not b_next!119691))

(assert (not b!4154085))

(assert (not b_next!119689))

(assert (not b!4154078))

(assert b_and!323345)

(assert b_and!323355)

(assert (not b!4154084))

(assert (not b!4154075))

(assert (not b!4154082))

(assert (not b_next!119695))

(assert (not b_next!119687))

(assert (not b_next!119697))

(assert (not b!4154086))

(assert b_and!323353)

(assert (not b_next!119693))

(assert (not b!4154087))

(assert (not b!4154076))

(check-sat)

(pop 1)

(push 1)

(assert b_and!323345)

(assert b_and!323355)

(assert b_and!323349)

(assert (not b_next!119697))

(assert b_and!323347)

(assert b_and!323351)

(assert (not b_next!119691))

(assert (not b_next!119689))

(assert (not b_next!119695))

(assert (not b_next!119687))

(assert b_and!323353)

(assert (not b_next!119693))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1228521 () Bool)

(declare-fun lt!1481145 () Bool)

(declare-fun content!6988 (List!45306) (Set Rule!14702))

(assert (=> d!1228521 (= lt!1481145 (set.member r2!597 (content!6988 rules!4102)))))

(declare-fun e!2577531 () Bool)

(assert (=> d!1228521 (= lt!1481145 e!2577531)))

(declare-fun res!1701298 () Bool)

(assert (=> d!1228521 (=> (not res!1701298) (not e!2577531))))

(assert (=> d!1228521 (= res!1701298 (is-Cons!45182 rules!4102))))

(assert (=> d!1228521 (= (contains!9145 rules!4102 r2!597) lt!1481145)))

(declare-fun b!4154131 () Bool)

(declare-fun e!2577532 () Bool)

(assert (=> b!4154131 (= e!2577531 e!2577532)))

(declare-fun res!1701297 () Bool)

(assert (=> b!4154131 (=> res!1701297 e!2577532)))

(assert (=> b!4154131 (= res!1701297 (= (h!50602 rules!4102) r2!597))))

(declare-fun b!4154132 () Bool)

(assert (=> b!4154132 (= e!2577532 (contains!9145 (t!343337 rules!4102) r2!597))))

(assert (= (and d!1228521 res!1701298) b!4154131))

(assert (= (and b!4154131 (not res!1701297)) b!4154132))

(declare-fun m!4749037 () Bool)

(assert (=> d!1228521 m!4749037))

(declare-fun m!4749039 () Bool)

(assert (=> d!1228521 m!4749039))

(declare-fun m!4749041 () Bool)

(assert (=> b!4154132 m!4749041))

(assert (=> b!4154075 d!1228521))

(declare-fun d!1228523 () Bool)

(assert (=> d!1228523 (= (head!8777 rules!4102) (h!50602 rules!4102))))

(assert (=> b!4154086 d!1228523))

(declare-fun d!1228525 () Bool)

(assert (=> d!1228525 (= (inv!59773 (tag!8313 (h!50602 rules!4102))) (= (mod (str.len (value!232894 (tag!8313 (h!50602 rules!4102)))) 2) 0))))

(assert (=> b!4154085 d!1228525))

(declare-fun d!1228527 () Bool)

(declare-fun res!1701301 () Bool)

(declare-fun e!2577535 () Bool)

(assert (=> d!1228527 (=> (not res!1701301) (not e!2577535))))

(declare-fun semiInverseModEq!3226 (Int Int) Bool)

(assert (=> d!1228527 (= res!1701301 (semiInverseModEq!3226 (toChars!9974 (transformation!7451 (h!50602 rules!4102))) (toValue!10115 (transformation!7451 (h!50602 rules!4102)))))))

(assert (=> d!1228527 (= (inv!59776 (transformation!7451 (h!50602 rules!4102))) e!2577535)))

(declare-fun b!4154135 () Bool)

(declare-fun equivClasses!3125 (Int Int) Bool)

(assert (=> b!4154135 (= e!2577535 (equivClasses!3125 (toChars!9974 (transformation!7451 (h!50602 rules!4102))) (toValue!10115 (transformation!7451 (h!50602 rules!4102)))))))

(assert (= (and d!1228527 res!1701301) b!4154135))

(declare-fun m!4749043 () Bool)

(assert (=> d!1228527 m!4749043))

(declare-fun m!4749045 () Bool)

(assert (=> b!4154135 m!4749045))

(assert (=> b!4154085 d!1228527))

(declare-fun d!1228529 () Bool)

(declare-fun lt!1481146 () Bool)

(assert (=> d!1228529 (= lt!1481146 (set.member r1!615 (content!6988 rules!4102)))))

(declare-fun e!2577536 () Bool)

(assert (=> d!1228529 (= lt!1481146 e!2577536)))

(declare-fun res!1701303 () Bool)

(assert (=> d!1228529 (=> (not res!1701303) (not e!2577536))))

(assert (=> d!1228529 (= res!1701303 (is-Cons!45182 rules!4102))))

(assert (=> d!1228529 (= (contains!9145 rules!4102 r1!615) lt!1481146)))

(declare-fun b!4154136 () Bool)

(declare-fun e!2577537 () Bool)

(assert (=> b!4154136 (= e!2577536 e!2577537)))

(declare-fun res!1701302 () Bool)

(assert (=> b!4154136 (=> res!1701302 e!2577537)))

(assert (=> b!4154136 (= res!1701302 (= (h!50602 rules!4102) r1!615))))

(declare-fun b!4154137 () Bool)

(assert (=> b!4154137 (= e!2577537 (contains!9145 (t!343337 rules!4102) r1!615))))

(assert (= (and d!1228529 res!1701303) b!4154136))

(assert (= (and b!4154136 (not res!1701302)) b!4154137))

(assert (=> d!1228529 m!4749037))

(declare-fun m!4749047 () Bool)

(assert (=> d!1228529 m!4749047))

(declare-fun m!4749049 () Bool)

(assert (=> b!4154137 m!4749049))

(assert (=> b!4154084 d!1228529))

(declare-fun b!4154147 () Bool)

(declare-fun e!2577544 () Int)

(declare-fun e!2577543 () Int)

(assert (=> b!4154147 (= e!2577544 e!2577543)))

(declare-fun c!711257 () Bool)

(assert (=> b!4154147 (= c!711257 (and (is-Cons!45182 rules!4102) (not (= (h!50602 rules!4102) r1!615))))))

(declare-fun d!1228531 () Bool)

(declare-fun lt!1481149 () Int)

(assert (=> d!1228531 (>= lt!1481149 0)))

(assert (=> d!1228531 (= lt!1481149 e!2577544)))

(declare-fun c!711256 () Bool)

(assert (=> d!1228531 (= c!711256 (and (is-Cons!45182 rules!4102) (= (h!50602 rules!4102) r1!615)))))

(assert (=> d!1228531 (contains!9145 rules!4102 r1!615)))

(assert (=> d!1228531 (= (getIndex!793 rules!4102 r1!615) lt!1481149)))

(declare-fun b!4154148 () Bool)

(assert (=> b!4154148 (= e!2577543 (+ 1 (getIndex!793 (t!343337 rules!4102) r1!615)))))

(declare-fun b!4154149 () Bool)

(assert (=> b!4154149 (= e!2577543 (- 1))))

(declare-fun b!4154146 () Bool)

(assert (=> b!4154146 (= e!2577544 0)))

(assert (= (and d!1228531 c!711256) b!4154146))

(assert (= (and d!1228531 (not c!711256)) b!4154147))

(assert (= (and b!4154147 c!711257) b!4154148))

(assert (= (and b!4154147 (not c!711257)) b!4154149))

(assert (=> d!1228531 m!4748989))

(declare-fun m!4749051 () Bool)

(assert (=> b!4154148 m!4749051))

(assert (=> b!4154078 d!1228531))

(declare-fun b!4154151 () Bool)

(declare-fun e!2577546 () Int)

(declare-fun e!2577545 () Int)

(assert (=> b!4154151 (= e!2577546 e!2577545)))

(declare-fun c!711259 () Bool)

(assert (=> b!4154151 (= c!711259 (and (is-Cons!45182 rules!4102) (not (= (h!50602 rules!4102) r2!597))))))

(declare-fun d!1228533 () Bool)

(declare-fun lt!1481150 () Int)

(assert (=> d!1228533 (>= lt!1481150 0)))

(assert (=> d!1228533 (= lt!1481150 e!2577546)))

(declare-fun c!711258 () Bool)

(assert (=> d!1228533 (= c!711258 (and (is-Cons!45182 rules!4102) (= (h!50602 rules!4102) r2!597)))))

(assert (=> d!1228533 (contains!9145 rules!4102 r2!597)))

(assert (=> d!1228533 (= (getIndex!793 rules!4102 r2!597) lt!1481150)))

(declare-fun b!4154152 () Bool)

(assert (=> b!4154152 (= e!2577545 (+ 1 (getIndex!793 (t!343337 rules!4102) r2!597)))))

(declare-fun b!4154153 () Bool)

(assert (=> b!4154153 (= e!2577545 (- 1))))

(declare-fun b!4154150 () Bool)

(assert (=> b!4154150 (= e!2577546 0)))

(assert (= (and d!1228533 c!711258) b!4154150))

(assert (= (and d!1228533 (not c!711258)) b!4154151))

(assert (= (and b!4154151 c!711259) b!4154152))

(assert (= (and b!4154151 (not c!711259)) b!4154153))

(assert (=> d!1228533 m!4748985))

(declare-fun m!4749053 () Bool)

(assert (=> b!4154152 m!4749053))

(assert (=> b!4154078 d!1228533))

(declare-fun d!1228535 () Bool)

(assert (=> d!1228535 (= (inv!59773 (tag!8313 r1!615)) (= (mod (str.len (value!232894 (tag!8313 r1!615))) 2) 0))))

(assert (=> b!4154077 d!1228535))

(declare-fun d!1228537 () Bool)

(declare-fun res!1701304 () Bool)

(declare-fun e!2577547 () Bool)

(assert (=> d!1228537 (=> (not res!1701304) (not e!2577547))))

(assert (=> d!1228537 (= res!1701304 (semiInverseModEq!3226 (toChars!9974 (transformation!7451 r1!615)) (toValue!10115 (transformation!7451 r1!615))))))

(assert (=> d!1228537 (= (inv!59776 (transformation!7451 r1!615)) e!2577547)))

(declare-fun b!4154154 () Bool)

(assert (=> b!4154154 (= e!2577547 (equivClasses!3125 (toChars!9974 (transformation!7451 r1!615)) (toValue!10115 (transformation!7451 r1!615))))))

(assert (= (and d!1228537 res!1701304) b!4154154))

(declare-fun m!4749055 () Bool)

(assert (=> d!1228537 m!4749055))

(declare-fun m!4749057 () Bool)

(assert (=> b!4154154 m!4749057))

(assert (=> b!4154077 d!1228537))

(declare-fun d!1228539 () Bool)

(declare-fun res!1701309 () Bool)

(declare-fun e!2577552 () Bool)

(assert (=> d!1228539 (=> res!1701309 e!2577552)))

(assert (=> d!1228539 (= res!1701309 (is-Nil!45182 rules!4102))))

(assert (=> d!1228539 (= (noDuplicateTag!3028 thiss!26968 rules!4102 (noDuplicateTag$default$2!33 thiss!26968)) e!2577552)))

(declare-fun b!4154159 () Bool)

(declare-fun e!2577553 () Bool)

(assert (=> b!4154159 (= e!2577552 e!2577553)))

(declare-fun res!1701310 () Bool)

(assert (=> b!4154159 (=> (not res!1701310) (not e!2577553))))

(declare-fun contains!9147 (List!45307 String!52157) Bool)

(assert (=> b!4154159 (= res!1701310 (not (contains!9147 (noDuplicateTag$default$2!33 thiss!26968) (tag!8313 (h!50602 rules!4102)))))))

(declare-fun b!4154160 () Bool)

(assert (=> b!4154160 (= e!2577553 (noDuplicateTag!3028 thiss!26968 (t!343337 rules!4102) (Cons!45183 (tag!8313 (h!50602 rules!4102)) (noDuplicateTag$default$2!33 thiss!26968))))))

(assert (= (and d!1228539 (not res!1701309)) b!4154159))

(assert (= (and b!4154159 res!1701310) b!4154160))

(assert (=> b!4154159 m!4748995))

(declare-fun m!4749059 () Bool)

(assert (=> b!4154159 m!4749059))

(declare-fun m!4749061 () Bool)

(assert (=> b!4154160 m!4749061))

(assert (=> b!4154082 d!1228539))

(declare-fun d!1228543 () Bool)

(assert (=> d!1228543 (= (noDuplicateTag$default$2!33 thiss!26968) Nil!45183)))

(assert (=> b!4154082 d!1228543))

(declare-fun d!1228547 () Bool)

(assert (=> d!1228547 (= (inv!59773 (tag!8313 r2!597)) (= (mod (str.len (value!232894 (tag!8313 r2!597))) 2) 0))))

(assert (=> b!4154076 d!1228547))

(declare-fun d!1228549 () Bool)

(declare-fun res!1701311 () Bool)

(declare-fun e!2577554 () Bool)

(assert (=> d!1228549 (=> (not res!1701311) (not e!2577554))))

(assert (=> d!1228549 (= res!1701311 (semiInverseModEq!3226 (toChars!9974 (transformation!7451 r2!597)) (toValue!10115 (transformation!7451 r2!597))))))

(assert (=> d!1228549 (= (inv!59776 (transformation!7451 r2!597)) e!2577554)))

(declare-fun b!4154161 () Bool)

(assert (=> b!4154161 (= e!2577554 (equivClasses!3125 (toChars!9974 (transformation!7451 r2!597)) (toValue!10115 (transformation!7451 r2!597))))))

(assert (= (and d!1228549 res!1701311) b!4154161))

(declare-fun m!4749063 () Bool)

(assert (=> d!1228549 m!4749063))

(declare-fun m!4749065 () Bool)

(assert (=> b!4154161 m!4749065))

(assert (=> b!4154076 d!1228549))

(declare-fun b!4154172 () Bool)

(declare-fun e!2577557 () Bool)

(declare-fun tp_is_empty!21619 () Bool)

(assert (=> b!4154172 (= e!2577557 tp_is_empty!21619)))

(declare-fun b!4154174 () Bool)

(declare-fun tp!1266639 () Bool)

(assert (=> b!4154174 (= e!2577557 tp!1266639)))

(declare-fun b!4154175 () Bool)

(declare-fun tp!1266638 () Bool)

(declare-fun tp!1266635 () Bool)

(assert (=> b!4154175 (= e!2577557 (and tp!1266638 tp!1266635))))

(assert (=> b!4154085 (= tp!1266594 e!2577557)))

(declare-fun b!4154173 () Bool)

(declare-fun tp!1266636 () Bool)

(declare-fun tp!1266637 () Bool)

(assert (=> b!4154173 (= e!2577557 (and tp!1266636 tp!1266637))))

(assert (= (and b!4154085 (is-ElementMatch!12356 (regex!7451 (h!50602 rules!4102)))) b!4154172))

(assert (= (and b!4154085 (is-Concat!20038 (regex!7451 (h!50602 rules!4102)))) b!4154173))

(assert (= (and b!4154085 (is-Star!12356 (regex!7451 (h!50602 rules!4102)))) b!4154174))

(assert (= (and b!4154085 (is-Union!12356 (regex!7451 (h!50602 rules!4102)))) b!4154175))

(declare-fun b!4154176 () Bool)

(declare-fun e!2577558 () Bool)

(assert (=> b!4154176 (= e!2577558 tp_is_empty!21619)))

(declare-fun b!4154178 () Bool)

(declare-fun tp!1266644 () Bool)

(assert (=> b!4154178 (= e!2577558 tp!1266644)))

(declare-fun b!4154179 () Bool)

(declare-fun tp!1266643 () Bool)

(declare-fun tp!1266640 () Bool)

(assert (=> b!4154179 (= e!2577558 (and tp!1266643 tp!1266640))))

(assert (=> b!4154077 (= tp!1266590 e!2577558)))

(declare-fun b!4154177 () Bool)

(declare-fun tp!1266641 () Bool)

(declare-fun tp!1266642 () Bool)

(assert (=> b!4154177 (= e!2577558 (and tp!1266641 tp!1266642))))

(assert (= (and b!4154077 (is-ElementMatch!12356 (regex!7451 r1!615))) b!4154176))

(assert (= (and b!4154077 (is-Concat!20038 (regex!7451 r1!615))) b!4154177))

(assert (= (and b!4154077 (is-Star!12356 (regex!7451 r1!615))) b!4154178))

(assert (= (and b!4154077 (is-Union!12356 (regex!7451 r1!615))) b!4154179))

(declare-fun b!4154190 () Bool)

(declare-fun b_free!119007 () Bool)

(declare-fun b_next!119711 () Bool)

(assert (=> b!4154190 (= b_free!119007 (not b_next!119711))))

(declare-fun tp!1266656 () Bool)

(declare-fun b_and!323369 () Bool)

(assert (=> b!4154190 (= tp!1266656 b_and!323369)))

(declare-fun b_free!119009 () Bool)

(declare-fun b_next!119713 () Bool)

(assert (=> b!4154190 (= b_free!119009 (not b_next!119713))))

(declare-fun tp!1266653 () Bool)

(declare-fun b_and!323371 () Bool)

(assert (=> b!4154190 (= tp!1266653 b_and!323371)))

(declare-fun e!2577569 () Bool)

(assert (=> b!4154190 (= e!2577569 (and tp!1266656 tp!1266653))))

(declare-fun e!2577568 () Bool)

(declare-fun tp!1266655 () Bool)

(declare-fun b!4154189 () Bool)

(assert (=> b!4154189 (= e!2577568 (and tp!1266655 (inv!59773 (tag!8313 (h!50602 (t!343337 rules!4102)))) (inv!59776 (transformation!7451 (h!50602 (t!343337 rules!4102)))) e!2577569))))

(declare-fun b!4154188 () Bool)

(declare-fun e!2577567 () Bool)

(declare-fun tp!1266654 () Bool)

(assert (=> b!4154188 (= e!2577567 (and e!2577568 tp!1266654))))

(assert (=> b!4154087 (= tp!1266587 e!2577567)))

(assert (= b!4154189 b!4154190))

(assert (= b!4154188 b!4154189))

(assert (= (and b!4154087 (is-Cons!45182 (t!343337 rules!4102))) b!4154188))

(declare-fun m!4749067 () Bool)

(assert (=> b!4154189 m!4749067))

(declare-fun m!4749069 () Bool)

(assert (=> b!4154189 m!4749069))

(declare-fun b!4154191 () Bool)

(declare-fun e!2577571 () Bool)

(assert (=> b!4154191 (= e!2577571 tp_is_empty!21619)))

(declare-fun b!4154193 () Bool)

(declare-fun tp!1266661 () Bool)

(assert (=> b!4154193 (= e!2577571 tp!1266661)))

(declare-fun b!4154194 () Bool)

(declare-fun tp!1266660 () Bool)

(declare-fun tp!1266657 () Bool)

(assert (=> b!4154194 (= e!2577571 (and tp!1266660 tp!1266657))))

(assert (=> b!4154076 (= tp!1266593 e!2577571)))

(declare-fun b!4154192 () Bool)

(declare-fun tp!1266658 () Bool)

(declare-fun tp!1266659 () Bool)

(assert (=> b!4154192 (= e!2577571 (and tp!1266658 tp!1266659))))

(assert (= (and b!4154076 (is-ElementMatch!12356 (regex!7451 r2!597))) b!4154191))

(assert (= (and b!4154076 (is-Concat!20038 (regex!7451 r2!597))) b!4154192))

(assert (= (and b!4154076 (is-Star!12356 (regex!7451 r2!597))) b!4154193))

(assert (= (and b!4154076 (is-Union!12356 (regex!7451 r2!597))) b!4154194))

(push 1)

(assert (not b!4154148))

(assert (not b!4154152))

(assert (not b!4154188))

(assert (not b!4154175))

(assert b_and!323355)

(assert (not b!4154137))

(assert b_and!323347)

(assert (not d!1228521))

(assert (not b!4154189))

(assert (not b_next!119691))

(assert (not d!1228549))

(assert (not d!1228537))

(assert (not d!1228531))

(assert tp_is_empty!21619)

(assert (not b!4154160))

(assert b_and!323345)

(assert (not b!4154159))

(assert (not b!4154193))

(assert (not b_next!119713))

(assert (not d!1228527))

(assert (not b!4154154))

(assert (not b!4154194))

(assert b_and!323349)

(assert (not b!4154192))

(assert (not b!4154132))

(assert (not b_next!119695))

(assert (not b_next!119687))

(assert (not b_next!119697))

(assert (not d!1228529))

(assert b_and!323351)

(assert (not b_next!119711))

(assert (not b!4154178))

(assert (not b!4154135))

(assert (not b!4154174))

(assert b_and!323353)

(assert b_and!323369)

(assert (not b_next!119693))

(assert b_and!323371)

(assert (not b!4154179))

(assert (not b!4154161))

(assert (not d!1228533))

(assert (not b!4154173))

(assert (not b_next!119689))

(assert (not b!4154177))

(check-sat)

(pop 1)

(push 1)

(assert b_and!323345)

(assert b_and!323355)

(assert (not b_next!119713))

(assert b_and!323349)

(assert (not b_next!119697))

(assert b_and!323347)

(assert (not b_next!119691))

(assert (not b_next!119689))

(assert (not b_next!119695))

(assert (not b_next!119687))

(assert b_and!323351)

(assert (not b_next!119711))

(assert b_and!323353)

(assert b_and!323371)

(assert b_and!323369)

(assert (not b_next!119693))

(check-sat)

(pop 1)

