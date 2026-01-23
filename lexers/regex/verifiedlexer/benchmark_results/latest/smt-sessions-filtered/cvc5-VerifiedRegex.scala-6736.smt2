; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!352012 () Bool)

(assert start!352012)

(declare-fun b!3749347 () Bool)

(declare-fun b_free!100213 () Bool)

(declare-fun b_next!100917 () Bool)

(assert (=> b!3749347 (= b_free!100213 (not b_next!100917))))

(declare-fun tp!1144534 () Bool)

(declare-fun b_and!278495 () Bool)

(assert (=> b!3749347 (= tp!1144534 b_and!278495)))

(declare-fun b_free!100215 () Bool)

(declare-fun b_next!100919 () Bool)

(assert (=> b!3749347 (= b_free!100215 (not b_next!100919))))

(declare-fun tp!1144535 () Bool)

(declare-fun b_and!278497 () Bool)

(assert (=> b!3749347 (= tp!1144535 b_and!278497)))

(declare-fun b!3749358 () Bool)

(declare-fun b_free!100217 () Bool)

(declare-fun b_next!100921 () Bool)

(assert (=> b!3749358 (= b_free!100217 (not b_next!100921))))

(declare-fun tp!1144533 () Bool)

(declare-fun b_and!278499 () Bool)

(assert (=> b!3749358 (= tp!1144533 b_and!278499)))

(declare-fun b_free!100219 () Bool)

(declare-fun b_next!100923 () Bool)

(assert (=> b!3749358 (= b_free!100219 (not b_next!100923))))

(declare-fun tp!1144525 () Bool)

(declare-fun b_and!278501 () Bool)

(assert (=> b!3749358 (= tp!1144525 b_and!278501)))

(declare-fun b!3749356 () Bool)

(declare-fun b_free!100221 () Bool)

(declare-fun b_next!100925 () Bool)

(assert (=> b!3749356 (= b_free!100221 (not b_next!100925))))

(declare-fun tp!1144536 () Bool)

(declare-fun b_and!278503 () Bool)

(assert (=> b!3749356 (= tp!1144536 b_and!278503)))

(declare-fun b_free!100223 () Bool)

(declare-fun b_next!100927 () Bool)

(assert (=> b!3749356 (= b_free!100223 (not b_next!100927))))

(declare-fun tp!1144532 () Bool)

(declare-fun b_and!278505 () Bool)

(assert (=> b!3749356 (= tp!1144532 b_and!278505)))

(declare-fun e!2318917 () Bool)

(assert (=> b!3749347 (= e!2318917 (and tp!1144534 tp!1144535))))

(declare-fun tp!1144529 () Bool)

(declare-fun b!3749348 () Bool)

(declare-fun e!2318914 () Bool)

(declare-datatypes ((C!22206 0))(
  ( (C!22207 (val!13151 Int)) )
))
(declare-datatypes ((List!40060 0))(
  ( (Nil!39936) (Cons!39936 (h!45356 C!22206) (t!302833 List!40060)) )
))
(declare-datatypes ((IArray!24413 0))(
  ( (IArray!24414 (innerList!12264 List!40060)) )
))
(declare-datatypes ((Regex!11010 0))(
  ( (ElementMatch!11010 (c!649108 C!22206)) (Concat!17345 (regOne!22532 Regex!11010) (regTwo!22532 Regex!11010)) (EmptyExpr!11010) (Star!11010 (reg!11339 Regex!11010)) (EmptyLang!11010) (Union!11010 (regOne!22533 Regex!11010) (regTwo!22533 Regex!11010)) )
))
(declare-datatypes ((String!45302 0))(
  ( (String!45303 (value!194533 String)) )
))
(declare-datatypes ((List!40061 0))(
  ( (Nil!39937) (Cons!39937 (h!45357 (_ BitVec 16)) (t!302834 List!40061)) )
))
(declare-datatypes ((TokenValue!6335 0))(
  ( (FloatLiteralValue!12670 (text!44790 List!40061)) (TokenValueExt!6334 (__x!24887 Int)) (Broken!31675 (value!194534 List!40061)) (Object!6458) (End!6335) (Def!6335) (Underscore!6335) (Match!6335) (Else!6335) (Error!6335) (Case!6335) (If!6335) (Extends!6335) (Abstract!6335) (Class!6335) (Val!6335) (DelimiterValue!12670 (del!6395 List!40061)) (KeywordValue!6341 (value!194535 List!40061)) (CommentValue!12670 (value!194536 List!40061)) (WhitespaceValue!12670 (value!194537 List!40061)) (IndentationValue!6335 (value!194538 List!40061)) (String!45304) (Int32!6335) (Broken!31676 (value!194539 List!40061)) (Boolean!6336) (Unit!57714) (OperatorValue!6338 (op!6395 List!40061)) (IdentifierValue!12670 (value!194540 List!40061)) (IdentifierValue!12671 (value!194541 List!40061)) (WhitespaceValue!12671 (value!194542 List!40061)) (True!12670) (False!12670) (Broken!31677 (value!194543 List!40061)) (Broken!31678 (value!194544 List!40061)) (True!12671) (RightBrace!6335) (RightBracket!6335) (Colon!6335) (Null!6335) (Comma!6335) (LeftBracket!6335) (False!12671) (LeftBrace!6335) (ImaginaryLiteralValue!6335 (text!44791 List!40061)) (StringLiteralValue!19005 (value!194545 List!40061)) (EOFValue!6335 (value!194546 List!40061)) (IdentValue!6335 (value!194547 List!40061)) (DelimiterValue!12671 (value!194548 List!40061)) (DedentValue!6335 (value!194549 List!40061)) (NewLineValue!6335 (value!194550 List!40061)) (IntegerValue!19005 (value!194551 (_ BitVec 32)) (text!44792 List!40061)) (IntegerValue!19006 (value!194552 Int) (text!44793 List!40061)) (Times!6335) (Or!6335) (Equal!6335) (Minus!6335) (Broken!31679 (value!194553 List!40061)) (And!6335) (Div!6335) (LessEqual!6335) (Mod!6335) (Concat!17346) (Not!6335) (Plus!6335) (SpaceValue!6335 (value!194554 List!40061)) (IntegerValue!19007 (value!194555 Int) (text!44794 List!40061)) (StringLiteralValue!19006 (text!44795 List!40061)) (FloatLiteralValue!12671 (text!44796 List!40061)) (BytesLiteralValue!6335 (value!194556 List!40061)) (CommentValue!12671 (value!194557 List!40061)) (StringLiteralValue!19007 (value!194558 List!40061)) (ErrorTokenValue!6335 (msg!6396 List!40061)) )
))
(declare-datatypes ((Conc!12204 0))(
  ( (Node!12204 (left!30904 Conc!12204) (right!31234 Conc!12204) (csize!24638 Int) (cheight!12415 Int)) (Leaf!18941 (xs!15406 IArray!24413) (csize!24639 Int)) (Empty!12204) )
))
(declare-datatypes ((BalanceConc!24022 0))(
  ( (BalanceConc!24023 (c!649109 Conc!12204)) )
))
(declare-datatypes ((TokenValueInjection!12098 0))(
  ( (TokenValueInjection!12099 (toValue!8453 Int) (toChars!8312 Int)) )
))
(declare-datatypes ((Rule!12010 0))(
  ( (Rule!12011 (regex!6105 Regex!11010) (tag!6965 String!45302) (isSeparator!6105 Bool) (transformation!6105 TokenValueInjection!12098)) )
))
(declare-datatypes ((List!40062 0))(
  ( (Nil!39938) (Cons!39938 (h!45358 Rule!12010) (t!302835 List!40062)) )
))
(declare-fun rules!4236 () List!40062)

(declare-fun inv!53440 (String!45302) Bool)

(declare-fun inv!53443 (TokenValueInjection!12098) Bool)

(assert (=> b!3749348 (= e!2318914 (and tp!1144529 (inv!53440 (tag!6965 (h!45358 rules!4236))) (inv!53443 (transformation!6105 (h!45358 rules!4236))) e!2318917))))

(declare-fun b!3749349 () Bool)

(declare-fun res!1519695 () Bool)

(declare-fun e!2318905 () Bool)

(assert (=> b!3749349 (=> (not res!1519695) (not e!2318905))))

(declare-datatypes ((LexerInterface!5694 0))(
  ( (LexerInterfaceExt!5691 (__x!24888 Int)) (Lexer!5692) )
))
(declare-fun thiss!27232 () LexerInterface!5694)

(declare-fun rulesInvariant!5091 (LexerInterface!5694 List!40062) Bool)

(assert (=> b!3749349 (= res!1519695 (rulesInvariant!5091 thiss!27232 rules!4236))))

(declare-fun b!3749350 () Bool)

(declare-fun res!1519698 () Bool)

(assert (=> b!3749350 (=> (not res!1519698) (not e!2318905))))

(declare-datatypes ((Token!11348 0))(
  ( (Token!11349 (value!194559 TokenValue!6335) (rule!8869 Rule!12010) (size!30071 Int) (originalCharacters!6705 List!40060)) )
))
(declare-datatypes ((List!40063 0))(
  ( (Nil!39939) (Cons!39939 (h!45359 Token!11348) (t!302836 List!40063)) )
))
(declare-fun tokens!606 () List!40063)

(declare-fun rulesProduceEachTokenIndividuallyList!1922 (LexerInterface!5694 List!40062 List!40063) Bool)

(assert (=> b!3749350 (= res!1519698 (rulesProduceEachTokenIndividuallyList!1922 thiss!27232 rules!4236 tokens!606))))

(declare-fun e!2318912 () Bool)

(declare-fun b!3749351 () Bool)

(declare-fun e!2318906 () Bool)

(declare-fun tp!1144531 () Bool)

(declare-fun inv!53444 (Token!11348) Bool)

(assert (=> b!3749351 (= e!2318906 (and (inv!53444 (h!45359 tokens!606)) e!2318912 tp!1144531))))

(declare-fun b!3749352 () Bool)

(declare-fun tp!1144530 () Bool)

(declare-fun e!2318911 () Bool)

(declare-fun t!8579 () Token!11348)

(declare-fun e!2318916 () Bool)

(declare-fun inv!21 (TokenValue!6335) Bool)

(assert (=> b!3749352 (= e!2318916 (and (inv!21 (value!194559 t!8579)) e!2318911 tp!1144530))))

(declare-fun b!3749354 () Bool)

(declare-fun contains!8157 (List!40063 Token!11348) Bool)

(assert (=> b!3749354 (= e!2318905 (not (contains!8157 (t!302836 tokens!606) t!8579)))))

(declare-fun b!3749355 () Bool)

(declare-fun res!1519697 () Bool)

(assert (=> b!3749355 (=> (not res!1519697) (not e!2318905))))

(declare-fun isEmpty!23532 (List!40062) Bool)

(assert (=> b!3749355 (= res!1519697 (not (isEmpty!23532 rules!4236)))))

(declare-fun e!2318907 () Bool)

(assert (=> b!3749356 (= e!2318907 (and tp!1144536 tp!1144532))))

(declare-fun b!3749357 () Bool)

(declare-fun res!1519694 () Bool)

(assert (=> b!3749357 (=> (not res!1519694) (not e!2318905))))

(assert (=> b!3749357 (= res!1519694 (and (or (not (is-Cons!39939 tokens!606)) (not (= (h!45359 tokens!606) t!8579))) (is-Cons!39939 tokens!606)))))

(declare-fun e!2318908 () Bool)

(assert (=> b!3749358 (= e!2318908 (and tp!1144533 tp!1144525))))

(declare-fun b!3749359 () Bool)

(declare-fun e!2318909 () Bool)

(declare-fun tp!1144537 () Bool)

(assert (=> b!3749359 (= e!2318912 (and (inv!21 (value!194559 (h!45359 tokens!606))) e!2318909 tp!1144537))))

(declare-fun b!3749360 () Bool)

(declare-fun res!1519696 () Bool)

(assert (=> b!3749360 (=> (not res!1519696) (not e!2318905))))

(assert (=> b!3749360 (= res!1519696 (contains!8157 tokens!606 t!8579))))

(declare-fun res!1519699 () Bool)

(assert (=> start!352012 (=> (not res!1519699) (not e!2318905))))

(assert (=> start!352012 (= res!1519699 (is-Lexer!5692 thiss!27232))))

(assert (=> start!352012 e!2318905))

(assert (=> start!352012 true))

(declare-fun e!2318913 () Bool)

(assert (=> start!352012 e!2318913))

(assert (=> start!352012 e!2318906))

(assert (=> start!352012 (and (inv!53444 t!8579) e!2318916)))

(declare-fun b!3749353 () Bool)

(declare-fun tp!1144527 () Bool)

(assert (=> b!3749353 (= e!2318909 (and tp!1144527 (inv!53440 (tag!6965 (rule!8869 (h!45359 tokens!606)))) (inv!53443 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) e!2318908))))

(declare-fun tp!1144528 () Bool)

(declare-fun b!3749361 () Bool)

(assert (=> b!3749361 (= e!2318911 (and tp!1144528 (inv!53440 (tag!6965 (rule!8869 t!8579))) (inv!53443 (transformation!6105 (rule!8869 t!8579))) e!2318907))))

(declare-fun b!3749362 () Bool)

(declare-fun tp!1144526 () Bool)

(assert (=> b!3749362 (= e!2318913 (and e!2318914 tp!1144526))))

(assert (= (and start!352012 res!1519699) b!3749355))

(assert (= (and b!3749355 res!1519697) b!3749349))

(assert (= (and b!3749349 res!1519695) b!3749360))

(assert (= (and b!3749360 res!1519696) b!3749350))

(assert (= (and b!3749350 res!1519698) b!3749357))

(assert (= (and b!3749357 res!1519694) b!3749354))

(assert (= b!3749348 b!3749347))

(assert (= b!3749362 b!3749348))

(assert (= (and start!352012 (is-Cons!39938 rules!4236)) b!3749362))

(assert (= b!3749353 b!3749358))

(assert (= b!3749359 b!3749353))

(assert (= b!3749351 b!3749359))

(assert (= (and start!352012 (is-Cons!39939 tokens!606)) b!3749351))

(assert (= b!3749361 b!3749356))

(assert (= b!3749352 b!3749361))

(assert (= start!352012 b!3749352))

(declare-fun m!4240805 () Bool)

(assert (=> start!352012 m!4240805))

(declare-fun m!4240807 () Bool)

(assert (=> b!3749352 m!4240807))

(declare-fun m!4240809 () Bool)

(assert (=> b!3749359 m!4240809))

(declare-fun m!4240811 () Bool)

(assert (=> b!3749355 m!4240811))

(declare-fun m!4240813 () Bool)

(assert (=> b!3749354 m!4240813))

(declare-fun m!4240815 () Bool)

(assert (=> b!3749360 m!4240815))

(declare-fun m!4240817 () Bool)

(assert (=> b!3749361 m!4240817))

(declare-fun m!4240819 () Bool)

(assert (=> b!3749361 m!4240819))

(declare-fun m!4240821 () Bool)

(assert (=> b!3749351 m!4240821))

(declare-fun m!4240823 () Bool)

(assert (=> b!3749353 m!4240823))

(declare-fun m!4240825 () Bool)

(assert (=> b!3749353 m!4240825))

(declare-fun m!4240827 () Bool)

(assert (=> b!3749350 m!4240827))

(declare-fun m!4240829 () Bool)

(assert (=> b!3749349 m!4240829))

(declare-fun m!4240831 () Bool)

(assert (=> b!3749348 m!4240831))

(declare-fun m!4240833 () Bool)

(assert (=> b!3749348 m!4240833))

(push 1)

(assert (not b!3749362))

(assert (not b_next!100925))

(assert (not b_next!100927))

(assert (not b!3749355))

(assert (not b!3749359))

(assert (not b!3749348))

(assert b_and!278503)

(assert b_and!278501)

(assert (not b!3749352))

(assert (not b!3749350))

(assert (not b!3749354))

(assert (not b!3749360))

(assert (not b_next!100923))

(assert (not b_next!100921))

(assert (not b!3749353))

(assert b_and!278495)

(assert (not b_next!100919))

(assert (not b!3749361))

(assert (not b!3749351))

(assert b_and!278497)

(assert (not b_next!100917))

(assert b_and!278505)

(assert (not start!352012))

(assert (not b!3749349))

(assert b_and!278499)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!100923))

(assert (not b_next!100925))

(assert (not b_next!100927))

(assert (not b_next!100919))

(assert b_and!278503)

(assert b_and!278505)

(assert b_and!278501)

(assert b_and!278499)

(assert (not b_next!100921))

(assert b_and!278495)

(assert b_and!278497)

(assert (not b_next!100917))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093847 () Bool)

(assert (=> d!1093847 (= (isEmpty!23532 rules!4236) (is-Nil!39938 rules!4236))))

(assert (=> b!3749355 d!1093847))

(declare-fun d!1093849 () Bool)

(declare-fun res!1519728 () Bool)

(declare-fun e!2318971 () Bool)

(assert (=> d!1093849 (=> (not res!1519728) (not e!2318971))))

(declare-fun rulesValid!2369 (LexerInterface!5694 List!40062) Bool)

(assert (=> d!1093849 (= res!1519728 (rulesValid!2369 thiss!27232 rules!4236))))

(assert (=> d!1093849 (= (rulesInvariant!5091 thiss!27232 rules!4236) e!2318971)))

(declare-fun b!3749413 () Bool)

(declare-datatypes ((List!40068 0))(
  ( (Nil!39944) (Cons!39944 (h!45364 String!45302) (t!302865 List!40068)) )
))
(declare-fun noDuplicateTag!2370 (LexerInterface!5694 List!40062 List!40068) Bool)

(assert (=> b!3749413 (= e!2318971 (noDuplicateTag!2370 thiss!27232 rules!4236 Nil!39944))))

(assert (= (and d!1093849 res!1519728) b!3749413))

(declare-fun m!4240865 () Bool)

(assert (=> d!1093849 m!4240865))

(declare-fun m!4240867 () Bool)

(assert (=> b!3749413 m!4240867))

(assert (=> b!3749349 d!1093849))

(declare-fun d!1093853 () Bool)

(assert (=> d!1093853 (= (inv!53440 (tag!6965 (h!45358 rules!4236))) (= (mod (str.len (value!194533 (tag!6965 (h!45358 rules!4236)))) 2) 0))))

(assert (=> b!3749348 d!1093853))

(declare-fun d!1093855 () Bool)

(declare-fun res!1519734 () Bool)

(declare-fun e!2318977 () Bool)

(assert (=> d!1093855 (=> (not res!1519734) (not e!2318977))))

(declare-fun semiInverseModEq!2613 (Int Int) Bool)

(assert (=> d!1093855 (= res!1519734 (semiInverseModEq!2613 (toChars!8312 (transformation!6105 (h!45358 rules!4236))) (toValue!8453 (transformation!6105 (h!45358 rules!4236)))))))

(assert (=> d!1093855 (= (inv!53443 (transformation!6105 (h!45358 rules!4236))) e!2318977)))

(declare-fun b!3749419 () Bool)

(declare-fun equivClasses!2512 (Int Int) Bool)

(assert (=> b!3749419 (= e!2318977 (equivClasses!2512 (toChars!8312 (transformation!6105 (h!45358 rules!4236))) (toValue!8453 (transformation!6105 (h!45358 rules!4236)))))))

(assert (= (and d!1093855 res!1519734) b!3749419))

(declare-fun m!4240873 () Bool)

(assert (=> d!1093855 m!4240873))

(declare-fun m!4240875 () Bool)

(assert (=> b!3749419 m!4240875))

(assert (=> b!3749348 d!1093855))

(declare-fun b!3749430 () Bool)

(declare-fun e!2318986 () Bool)

(declare-fun inv!17 (TokenValue!6335) Bool)

(assert (=> b!3749430 (= e!2318986 (inv!17 (value!194559 (h!45359 tokens!606))))))

(declare-fun b!3749431 () Bool)

(declare-fun e!2318985 () Bool)

(declare-fun inv!15 (TokenValue!6335) Bool)

(assert (=> b!3749431 (= e!2318985 (inv!15 (value!194559 (h!45359 tokens!606))))))

(declare-fun b!3749432 () Bool)

(declare-fun e!2318984 () Bool)

(assert (=> b!3749432 (= e!2318984 e!2318986)))

(declare-fun c!649116 () Bool)

(assert (=> b!3749432 (= c!649116 (is-IntegerValue!19006 (value!194559 (h!45359 tokens!606))))))

(declare-fun b!3749434 () Bool)

(declare-fun res!1519737 () Bool)

(assert (=> b!3749434 (=> res!1519737 e!2318985)))

(assert (=> b!3749434 (= res!1519737 (not (is-IntegerValue!19007 (value!194559 (h!45359 tokens!606)))))))

(assert (=> b!3749434 (= e!2318986 e!2318985)))

(declare-fun b!3749433 () Bool)

(declare-fun inv!16 (TokenValue!6335) Bool)

(assert (=> b!3749433 (= e!2318984 (inv!16 (value!194559 (h!45359 tokens!606))))))

(declare-fun d!1093859 () Bool)

(declare-fun c!649117 () Bool)

(assert (=> d!1093859 (= c!649117 (is-IntegerValue!19005 (value!194559 (h!45359 tokens!606))))))

(assert (=> d!1093859 (= (inv!21 (value!194559 (h!45359 tokens!606))) e!2318984)))

(assert (= (and d!1093859 c!649117) b!3749433))

(assert (= (and d!1093859 (not c!649117)) b!3749432))

(assert (= (and b!3749432 c!649116) b!3749430))

(assert (= (and b!3749432 (not c!649116)) b!3749434))

(assert (= (and b!3749434 (not res!1519737)) b!3749431))

(declare-fun m!4240877 () Bool)

(assert (=> b!3749430 m!4240877))

(declare-fun m!4240879 () Bool)

(assert (=> b!3749431 m!4240879))

(declare-fun m!4240881 () Bool)

(assert (=> b!3749433 m!4240881))

(assert (=> b!3749359 d!1093859))

(declare-fun d!1093861 () Bool)

(declare-fun res!1519742 () Bool)

(declare-fun e!2318989 () Bool)

(assert (=> d!1093861 (=> (not res!1519742) (not e!2318989))))

(declare-fun isEmpty!23534 (List!40060) Bool)

(assert (=> d!1093861 (= res!1519742 (not (isEmpty!23534 (originalCharacters!6705 t!8579))))))

(assert (=> d!1093861 (= (inv!53444 t!8579) e!2318989)))

(declare-fun b!3749439 () Bool)

(declare-fun res!1519743 () Bool)

(assert (=> b!3749439 (=> (not res!1519743) (not e!2318989))))

(declare-fun list!14708 (BalanceConc!24022) List!40060)

(declare-fun dynLambda!17242 (Int TokenValue!6335) BalanceConc!24022)

(assert (=> b!3749439 (= res!1519743 (= (originalCharacters!6705 t!8579) (list!14708 (dynLambda!17242 (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (value!194559 t!8579)))))))

(declare-fun b!3749440 () Bool)

(declare-fun size!30073 (List!40060) Int)

(assert (=> b!3749440 (= e!2318989 (= (size!30071 t!8579) (size!30073 (originalCharacters!6705 t!8579))))))

(assert (= (and d!1093861 res!1519742) b!3749439))

(assert (= (and b!3749439 res!1519743) b!3749440))

(declare-fun b_lambda!109899 () Bool)

(assert (=> (not b_lambda!109899) (not b!3749439)))

(declare-fun t!302842 () Bool)

(declare-fun tb!214477 () Bool)

(assert (=> (and b!3749347 (= (toChars!8312 (transformation!6105 (h!45358 rules!4236))) (toChars!8312 (transformation!6105 (rule!8869 t!8579)))) t!302842) tb!214477))

(declare-fun b!3749445 () Bool)

(declare-fun e!2318992 () Bool)

(declare-fun tp!1144579 () Bool)

(declare-fun inv!53447 (Conc!12204) Bool)

(assert (=> b!3749445 (= e!2318992 (and (inv!53447 (c!649109 (dynLambda!17242 (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (value!194559 t!8579)))) tp!1144579))))

(declare-fun result!261838 () Bool)

(declare-fun inv!53448 (BalanceConc!24022) Bool)

(assert (=> tb!214477 (= result!261838 (and (inv!53448 (dynLambda!17242 (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (value!194559 t!8579))) e!2318992))))

(assert (= tb!214477 b!3749445))

(declare-fun m!4240883 () Bool)

(assert (=> b!3749445 m!4240883))

(declare-fun m!4240885 () Bool)

(assert (=> tb!214477 m!4240885))

(assert (=> b!3749439 t!302842))

(declare-fun b_and!278519 () Bool)

(assert (= b_and!278497 (and (=> t!302842 result!261838) b_and!278519)))

(declare-fun t!302844 () Bool)

(declare-fun tb!214479 () Bool)

(assert (=> (and b!3749358 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (toChars!8312 (transformation!6105 (rule!8869 t!8579)))) t!302844) tb!214479))

(declare-fun result!261842 () Bool)

(assert (= result!261842 result!261838))

(assert (=> b!3749439 t!302844))

(declare-fun b_and!278521 () Bool)

(assert (= b_and!278501 (and (=> t!302844 result!261842) b_and!278521)))

(declare-fun t!302846 () Bool)

(declare-fun tb!214481 () Bool)

(assert (=> (and b!3749356 (= (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (toChars!8312 (transformation!6105 (rule!8869 t!8579)))) t!302846) tb!214481))

(declare-fun result!261844 () Bool)

(assert (= result!261844 result!261838))

(assert (=> b!3749439 t!302846))

(declare-fun b_and!278523 () Bool)

(assert (= b_and!278505 (and (=> t!302846 result!261844) b_and!278523)))

(declare-fun m!4240887 () Bool)

(assert (=> d!1093861 m!4240887))

(declare-fun m!4240889 () Bool)

(assert (=> b!3749439 m!4240889))

(assert (=> b!3749439 m!4240889))

(declare-fun m!4240891 () Bool)

(assert (=> b!3749439 m!4240891))

(declare-fun m!4240893 () Bool)

(assert (=> b!3749440 m!4240893))

(assert (=> start!352012 d!1093861))

(declare-fun d!1093863 () Bool)

(declare-fun res!1519744 () Bool)

(declare-fun e!2318993 () Bool)

(assert (=> d!1093863 (=> (not res!1519744) (not e!2318993))))

(assert (=> d!1093863 (= res!1519744 (not (isEmpty!23534 (originalCharacters!6705 (h!45359 tokens!606)))))))

(assert (=> d!1093863 (= (inv!53444 (h!45359 tokens!606)) e!2318993)))

(declare-fun b!3749446 () Bool)

(declare-fun res!1519745 () Bool)

(assert (=> b!3749446 (=> (not res!1519745) (not e!2318993))))

(assert (=> b!3749446 (= res!1519745 (= (originalCharacters!6705 (h!45359 tokens!606)) (list!14708 (dynLambda!17242 (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (value!194559 (h!45359 tokens!606))))))))

(declare-fun b!3749447 () Bool)

(assert (=> b!3749447 (= e!2318993 (= (size!30071 (h!45359 tokens!606)) (size!30073 (originalCharacters!6705 (h!45359 tokens!606)))))))

(assert (= (and d!1093863 res!1519744) b!3749446))

(assert (= (and b!3749446 res!1519745) b!3749447))

(declare-fun b_lambda!109901 () Bool)

(assert (=> (not b_lambda!109901) (not b!3749446)))

(declare-fun tb!214483 () Bool)

(declare-fun t!302848 () Bool)

(assert (=> (and b!3749347 (= (toChars!8312 (transformation!6105 (h!45358 rules!4236))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606))))) t!302848) tb!214483))

(declare-fun b!3749448 () Bool)

(declare-fun e!2318994 () Bool)

(declare-fun tp!1144580 () Bool)

(assert (=> b!3749448 (= e!2318994 (and (inv!53447 (c!649109 (dynLambda!17242 (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (value!194559 (h!45359 tokens!606))))) tp!1144580))))

(declare-fun result!261846 () Bool)

(assert (=> tb!214483 (= result!261846 (and (inv!53448 (dynLambda!17242 (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (value!194559 (h!45359 tokens!606)))) e!2318994))))

(assert (= tb!214483 b!3749448))

(declare-fun m!4240895 () Bool)

(assert (=> b!3749448 m!4240895))

(declare-fun m!4240897 () Bool)

(assert (=> tb!214483 m!4240897))

(assert (=> b!3749446 t!302848))

(declare-fun b_and!278525 () Bool)

(assert (= b_and!278519 (and (=> t!302848 result!261846) b_and!278525)))

(declare-fun t!302850 () Bool)

(declare-fun tb!214485 () Bool)

(assert (=> (and b!3749358 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606))))) t!302850) tb!214485))

(declare-fun result!261848 () Bool)

(assert (= result!261848 result!261846))

(assert (=> b!3749446 t!302850))

(declare-fun b_and!278527 () Bool)

(assert (= b_and!278521 (and (=> t!302850 result!261848) b_and!278527)))

(declare-fun tb!214487 () Bool)

(declare-fun t!302852 () Bool)

(assert (=> (and b!3749356 (= (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606))))) t!302852) tb!214487))

(declare-fun result!261850 () Bool)

(assert (= result!261850 result!261846))

(assert (=> b!3749446 t!302852))

(declare-fun b_and!278529 () Bool)

(assert (= b_and!278523 (and (=> t!302852 result!261850) b_and!278529)))

(declare-fun m!4240899 () Bool)

(assert (=> d!1093863 m!4240899))

(declare-fun m!4240901 () Bool)

(assert (=> b!3749446 m!4240901))

(assert (=> b!3749446 m!4240901))

(declare-fun m!4240903 () Bool)

(assert (=> b!3749446 m!4240903))

(declare-fun m!4240905 () Bool)

(assert (=> b!3749447 m!4240905))

(assert (=> b!3749351 d!1093863))

(declare-fun b!3749469 () Bool)

(declare-fun e!2319013 () Bool)

(assert (=> b!3749469 (= e!2319013 true)))

(declare-fun b!3749468 () Bool)

(declare-fun e!2319012 () Bool)

(assert (=> b!3749468 (= e!2319012 e!2319013)))

(declare-fun b!3749467 () Bool)

(declare-fun e!2319011 () Bool)

(assert (=> b!3749467 (= e!2319011 e!2319012)))

(declare-fun d!1093865 () Bool)

(assert (=> d!1093865 e!2319011))

(assert (= b!3749468 b!3749469))

(assert (= b!3749467 b!3749468))

(assert (= (and d!1093865 (is-Cons!39938 rules!4236)) b!3749467))

(declare-fun order!21787 () Int)

(declare-fun order!21789 () Int)

(declare-fun lambda!125196 () Int)

(declare-fun dynLambda!17243 (Int Int) Int)

(declare-fun dynLambda!17244 (Int Int) Int)

(assert (=> b!3749469 (< (dynLambda!17243 order!21787 (toValue!8453 (transformation!6105 (h!45358 rules!4236)))) (dynLambda!17244 order!21789 lambda!125196))))

(declare-fun order!21791 () Int)

(declare-fun dynLambda!17245 (Int Int) Int)

(assert (=> b!3749469 (< (dynLambda!17245 order!21791 (toChars!8312 (transformation!6105 (h!45358 rules!4236)))) (dynLambda!17244 order!21789 lambda!125196))))

(assert (=> d!1093865 true))

(declare-fun lt!1299735 () Bool)

(declare-fun forall!8195 (List!40063 Int) Bool)

(assert (=> d!1093865 (= lt!1299735 (forall!8195 tokens!606 lambda!125196))))

(declare-fun e!2319004 () Bool)

(assert (=> d!1093865 (= lt!1299735 e!2319004)))

(declare-fun res!1519755 () Bool)

(assert (=> d!1093865 (=> res!1519755 e!2319004)))

(assert (=> d!1093865 (= res!1519755 (not (is-Cons!39939 tokens!606)))))

(assert (=> d!1093865 (not (isEmpty!23532 rules!4236))))

(assert (=> d!1093865 (= (rulesProduceEachTokenIndividuallyList!1922 thiss!27232 rules!4236 tokens!606) lt!1299735)))

(declare-fun b!3749457 () Bool)

(declare-fun e!2319003 () Bool)

(assert (=> b!3749457 (= e!2319004 e!2319003)))

(declare-fun res!1519754 () Bool)

(assert (=> b!3749457 (=> (not res!1519754) (not e!2319003))))

(declare-fun rulesProduceIndividualToken!2610 (LexerInterface!5694 List!40062 Token!11348) Bool)

(assert (=> b!3749457 (= res!1519754 (rulesProduceIndividualToken!2610 thiss!27232 rules!4236 (h!45359 tokens!606)))))

(declare-fun b!3749458 () Bool)

(assert (=> b!3749458 (= e!2319003 (rulesProduceEachTokenIndividuallyList!1922 thiss!27232 rules!4236 (t!302836 tokens!606)))))

(assert (= (and d!1093865 (not res!1519755)) b!3749457))

(assert (= (and b!3749457 res!1519754) b!3749458))

(declare-fun m!4240907 () Bool)

(assert (=> d!1093865 m!4240907))

(assert (=> d!1093865 m!4240811))

(declare-fun m!4240909 () Bool)

(assert (=> b!3749457 m!4240909))

(declare-fun m!4240911 () Bool)

(assert (=> b!3749458 m!4240911))

(assert (=> b!3749350 d!1093865))

(declare-fun d!1093867 () Bool)

(assert (=> d!1093867 (= (inv!53440 (tag!6965 (rule!8869 t!8579))) (= (mod (str.len (value!194533 (tag!6965 (rule!8869 t!8579)))) 2) 0))))

(assert (=> b!3749361 d!1093867))

(declare-fun d!1093869 () Bool)

(declare-fun res!1519756 () Bool)

(declare-fun e!2319014 () Bool)

(assert (=> d!1093869 (=> (not res!1519756) (not e!2319014))))

(assert (=> d!1093869 (= res!1519756 (semiInverseModEq!2613 (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (toValue!8453 (transformation!6105 (rule!8869 t!8579)))))))

(assert (=> d!1093869 (= (inv!53443 (transformation!6105 (rule!8869 t!8579))) e!2319014)))

(declare-fun b!3749472 () Bool)

(assert (=> b!3749472 (= e!2319014 (equivClasses!2512 (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (toValue!8453 (transformation!6105 (rule!8869 t!8579)))))))

(assert (= (and d!1093869 res!1519756) b!3749472))

(declare-fun m!4240913 () Bool)

(assert (=> d!1093869 m!4240913))

(declare-fun m!4240915 () Bool)

(assert (=> b!3749472 m!4240915))

(assert (=> b!3749361 d!1093869))

(declare-fun d!1093871 () Bool)

(declare-fun lt!1299738 () Bool)

(declare-fun content!5858 (List!40063) (Set Token!11348))

(assert (=> d!1093871 (= lt!1299738 (set.member t!8579 (content!5858 tokens!606)))))

(declare-fun e!2319020 () Bool)

(assert (=> d!1093871 (= lt!1299738 e!2319020)))

(declare-fun res!1519761 () Bool)

(assert (=> d!1093871 (=> (not res!1519761) (not e!2319020))))

(assert (=> d!1093871 (= res!1519761 (is-Cons!39939 tokens!606))))

(assert (=> d!1093871 (= (contains!8157 tokens!606 t!8579) lt!1299738)))

(declare-fun b!3749477 () Bool)

(declare-fun e!2319019 () Bool)

(assert (=> b!3749477 (= e!2319020 e!2319019)))

(declare-fun res!1519762 () Bool)

(assert (=> b!3749477 (=> res!1519762 e!2319019)))

(assert (=> b!3749477 (= res!1519762 (= (h!45359 tokens!606) t!8579))))

(declare-fun b!3749478 () Bool)

(assert (=> b!3749478 (= e!2319019 (contains!8157 (t!302836 tokens!606) t!8579))))

(assert (= (and d!1093871 res!1519761) b!3749477))

(assert (= (and b!3749477 (not res!1519762)) b!3749478))

(declare-fun m!4240917 () Bool)

(assert (=> d!1093871 m!4240917))

(declare-fun m!4240919 () Bool)

(assert (=> d!1093871 m!4240919))

(assert (=> b!3749478 m!4240813))

(assert (=> b!3749360 d!1093871))

(declare-fun d!1093873 () Bool)

(declare-fun lt!1299739 () Bool)

(assert (=> d!1093873 (= lt!1299739 (set.member t!8579 (content!5858 (t!302836 tokens!606))))))

(declare-fun e!2319022 () Bool)

(assert (=> d!1093873 (= lt!1299739 e!2319022)))

(declare-fun res!1519763 () Bool)

(assert (=> d!1093873 (=> (not res!1519763) (not e!2319022))))

(assert (=> d!1093873 (= res!1519763 (is-Cons!39939 (t!302836 tokens!606)))))

(assert (=> d!1093873 (= (contains!8157 (t!302836 tokens!606) t!8579) lt!1299739)))

(declare-fun b!3749479 () Bool)

(declare-fun e!2319021 () Bool)

(assert (=> b!3749479 (= e!2319022 e!2319021)))

(declare-fun res!1519764 () Bool)

(assert (=> b!3749479 (=> res!1519764 e!2319021)))

(assert (=> b!3749479 (= res!1519764 (= (h!45359 (t!302836 tokens!606)) t!8579))))

(declare-fun b!3749480 () Bool)

(assert (=> b!3749480 (= e!2319021 (contains!8157 (t!302836 (t!302836 tokens!606)) t!8579))))

(assert (= (and d!1093873 res!1519763) b!3749479))

(assert (= (and b!3749479 (not res!1519764)) b!3749480))

(declare-fun m!4240921 () Bool)

(assert (=> d!1093873 m!4240921))

(declare-fun m!4240923 () Bool)

(assert (=> d!1093873 m!4240923))

(declare-fun m!4240925 () Bool)

(assert (=> b!3749480 m!4240925))

(assert (=> b!3749354 d!1093873))

(declare-fun d!1093875 () Bool)

(assert (=> d!1093875 (= (inv!53440 (tag!6965 (rule!8869 (h!45359 tokens!606)))) (= (mod (str.len (value!194533 (tag!6965 (rule!8869 (h!45359 tokens!606))))) 2) 0))))

(assert (=> b!3749353 d!1093875))

(declare-fun d!1093877 () Bool)

(declare-fun res!1519765 () Bool)

(declare-fun e!2319023 () Bool)

(assert (=> d!1093877 (=> (not res!1519765) (not e!2319023))))

(assert (=> d!1093877 (= res!1519765 (semiInverseModEq!2613 (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (toValue!8453 (transformation!6105 (rule!8869 (h!45359 tokens!606))))))))

(assert (=> d!1093877 (= (inv!53443 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) e!2319023)))

(declare-fun b!3749481 () Bool)

(assert (=> b!3749481 (= e!2319023 (equivClasses!2512 (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (toValue!8453 (transformation!6105 (rule!8869 (h!45359 tokens!606))))))))

(assert (= (and d!1093877 res!1519765) b!3749481))

(declare-fun m!4240927 () Bool)

(assert (=> d!1093877 m!4240927))

(declare-fun m!4240929 () Bool)

(assert (=> b!3749481 m!4240929))

(assert (=> b!3749353 d!1093877))

(declare-fun b!3749482 () Bool)

(declare-fun e!2319026 () Bool)

(assert (=> b!3749482 (= e!2319026 (inv!17 (value!194559 t!8579)))))

(declare-fun b!3749483 () Bool)

(declare-fun e!2319025 () Bool)

(assert (=> b!3749483 (= e!2319025 (inv!15 (value!194559 t!8579)))))

(declare-fun b!3749484 () Bool)

(declare-fun e!2319024 () Bool)

(assert (=> b!3749484 (= e!2319024 e!2319026)))

(declare-fun c!649118 () Bool)

(assert (=> b!3749484 (= c!649118 (is-IntegerValue!19006 (value!194559 t!8579)))))

(declare-fun b!3749486 () Bool)

(declare-fun res!1519766 () Bool)

(assert (=> b!3749486 (=> res!1519766 e!2319025)))

(assert (=> b!3749486 (= res!1519766 (not (is-IntegerValue!19007 (value!194559 t!8579))))))

(assert (=> b!3749486 (= e!2319026 e!2319025)))

(declare-fun b!3749485 () Bool)

(assert (=> b!3749485 (= e!2319024 (inv!16 (value!194559 t!8579)))))

(declare-fun d!1093879 () Bool)

(declare-fun c!649119 () Bool)

(assert (=> d!1093879 (= c!649119 (is-IntegerValue!19005 (value!194559 t!8579)))))

(assert (=> d!1093879 (= (inv!21 (value!194559 t!8579)) e!2319024)))

(assert (= (and d!1093879 c!649119) b!3749485))

(assert (= (and d!1093879 (not c!649119)) b!3749484))

(assert (= (and b!3749484 c!649118) b!3749482))

(assert (= (and b!3749484 (not c!649118)) b!3749486))

(assert (= (and b!3749486 (not res!1519766)) b!3749483))

(declare-fun m!4240931 () Bool)

(assert (=> b!3749482 m!4240931))

(declare-fun m!4240933 () Bool)

(assert (=> b!3749483 m!4240933))

(declare-fun m!4240935 () Bool)

(assert (=> b!3749485 m!4240935))

(assert (=> b!3749352 d!1093879))

(declare-fun b!3749497 () Bool)

(declare-fun b_free!100237 () Bool)

(declare-fun b_next!100941 () Bool)

(assert (=> b!3749497 (= b_free!100237 (not b_next!100941))))

(declare-fun tp!1144592 () Bool)

(declare-fun b_and!278531 () Bool)

(assert (=> b!3749497 (= tp!1144592 b_and!278531)))

(declare-fun b_free!100239 () Bool)

(declare-fun b_next!100943 () Bool)

(assert (=> b!3749497 (= b_free!100239 (not b_next!100943))))

(declare-fun tb!214489 () Bool)

(declare-fun t!302858 () Bool)

(assert (=> (and b!3749497 (= (toChars!8312 (transformation!6105 (h!45358 (t!302835 rules!4236)))) (toChars!8312 (transformation!6105 (rule!8869 t!8579)))) t!302858) tb!214489))

(declare-fun result!261854 () Bool)

(assert (= result!261854 result!261838))

(assert (=> b!3749439 t!302858))

(declare-fun tb!214491 () Bool)

(declare-fun t!302860 () Bool)

(assert (=> (and b!3749497 (= (toChars!8312 (transformation!6105 (h!45358 (t!302835 rules!4236)))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606))))) t!302860) tb!214491))

(declare-fun result!261856 () Bool)

(assert (= result!261856 result!261846))

(assert (=> b!3749446 t!302860))

(declare-fun tp!1144591 () Bool)

(declare-fun b_and!278533 () Bool)

(assert (=> b!3749497 (= tp!1144591 (and (=> t!302858 result!261854) (=> t!302860 result!261856) b_and!278533))))

(declare-fun e!2319036 () Bool)

(assert (=> b!3749497 (= e!2319036 (and tp!1144592 tp!1144591))))

(declare-fun e!2319038 () Bool)

(declare-fun tp!1144590 () Bool)

(declare-fun b!3749496 () Bool)

(assert (=> b!3749496 (= e!2319038 (and tp!1144590 (inv!53440 (tag!6965 (h!45358 (t!302835 rules!4236)))) (inv!53443 (transformation!6105 (h!45358 (t!302835 rules!4236)))) e!2319036))))

(declare-fun b!3749495 () Bool)

(declare-fun e!2319035 () Bool)

(declare-fun tp!1144589 () Bool)

(assert (=> b!3749495 (= e!2319035 (and e!2319038 tp!1144589))))

(assert (=> b!3749362 (= tp!1144526 e!2319035)))

(assert (= b!3749496 b!3749497))

(assert (= b!3749495 b!3749496))

(assert (= (and b!3749362 (is-Cons!39938 (t!302835 rules!4236))) b!3749495))

(declare-fun m!4240937 () Bool)

(assert (=> b!3749496 m!4240937))

(declare-fun m!4240939 () Bool)

(assert (=> b!3749496 m!4240939))

(declare-fun b!3749511 () Bool)

(declare-fun b_free!100241 () Bool)

(declare-fun b_next!100945 () Bool)

(assert (=> b!3749511 (= b_free!100241 (not b_next!100945))))

(declare-fun tp!1144605 () Bool)

(declare-fun b_and!278535 () Bool)

(assert (=> b!3749511 (= tp!1144605 b_and!278535)))

(declare-fun b_free!100243 () Bool)

(declare-fun b_next!100947 () Bool)

(assert (=> b!3749511 (= b_free!100243 (not b_next!100947))))

(declare-fun t!302862 () Bool)

(declare-fun tb!214493 () Bool)

(assert (=> (and b!3749511 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 (t!302836 tokens!606))))) (toChars!8312 (transformation!6105 (rule!8869 t!8579)))) t!302862) tb!214493))

(declare-fun result!261860 () Bool)

(assert (= result!261860 result!261838))

(assert (=> b!3749439 t!302862))

(declare-fun t!302864 () Bool)

(declare-fun tb!214495 () Bool)

(assert (=> (and b!3749511 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 (t!302836 tokens!606))))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606))))) t!302864) tb!214495))

(declare-fun result!261862 () Bool)

(assert (= result!261862 result!261846))

(assert (=> b!3749446 t!302864))

(declare-fun tp!1144603 () Bool)

(declare-fun b_and!278537 () Bool)

(assert (=> b!3749511 (= tp!1144603 (and (=> t!302862 result!261860) (=> t!302864 result!261862) b_and!278537))))

(declare-fun e!2319056 () Bool)

(declare-fun b!3749510 () Bool)

(declare-fun e!2319054 () Bool)

(declare-fun tp!1144606 () Bool)

(assert (=> b!3749510 (= e!2319054 (and tp!1144606 (inv!53440 (tag!6965 (rule!8869 (h!45359 (t!302836 tokens!606))))) (inv!53443 (transformation!6105 (rule!8869 (h!45359 (t!302836 tokens!606))))) e!2319056))))

(declare-fun b!3749509 () Bool)

(declare-fun e!2319052 () Bool)

(declare-fun tp!1144607 () Bool)

(assert (=> b!3749509 (= e!2319052 (and (inv!21 (value!194559 (h!45359 (t!302836 tokens!606)))) e!2319054 tp!1144607))))

(declare-fun b!3749508 () Bool)

(declare-fun e!2319051 () Bool)

(declare-fun tp!1144604 () Bool)

(assert (=> b!3749508 (= e!2319051 (and (inv!53444 (h!45359 (t!302836 tokens!606))) e!2319052 tp!1144604))))

(assert (=> b!3749351 (= tp!1144531 e!2319051)))

(assert (=> b!3749511 (= e!2319056 (and tp!1144605 tp!1144603))))

(assert (= b!3749510 b!3749511))

(assert (= b!3749509 b!3749510))

(assert (= b!3749508 b!3749509))

(assert (= (and b!3749351 (is-Cons!39939 (t!302836 tokens!606))) b!3749508))

(declare-fun m!4240941 () Bool)

(assert (=> b!3749510 m!4240941))

(declare-fun m!4240943 () Bool)

(assert (=> b!3749510 m!4240943))

(declare-fun m!4240945 () Bool)

(assert (=> b!3749509 m!4240945))

(declare-fun m!4240947 () Bool)

(assert (=> b!3749508 m!4240947))

(declare-fun b!3749523 () Bool)

(declare-fun e!2319059 () Bool)

(declare-fun tp!1144622 () Bool)

(declare-fun tp!1144620 () Bool)

(assert (=> b!3749523 (= e!2319059 (and tp!1144622 tp!1144620))))

(declare-fun b!3749525 () Bool)

(declare-fun tp!1144619 () Bool)

(declare-fun tp!1144621 () Bool)

(assert (=> b!3749525 (= e!2319059 (and tp!1144619 tp!1144621))))

(declare-fun b!3749522 () Bool)

(declare-fun tp_is_empty!19019 () Bool)

(assert (=> b!3749522 (= e!2319059 tp_is_empty!19019)))

(assert (=> b!3749361 (= tp!1144528 e!2319059)))

(declare-fun b!3749524 () Bool)

(declare-fun tp!1144618 () Bool)

(assert (=> b!3749524 (= e!2319059 tp!1144618)))

(assert (= (and b!3749361 (is-ElementMatch!11010 (regex!6105 (rule!8869 t!8579)))) b!3749522))

(assert (= (and b!3749361 (is-Concat!17345 (regex!6105 (rule!8869 t!8579)))) b!3749523))

(assert (= (and b!3749361 (is-Star!11010 (regex!6105 (rule!8869 t!8579)))) b!3749524))

(assert (= (and b!3749361 (is-Union!11010 (regex!6105 (rule!8869 t!8579)))) b!3749525))

(declare-fun b!3749527 () Bool)

(declare-fun e!2319060 () Bool)

(declare-fun tp!1144627 () Bool)

(declare-fun tp!1144625 () Bool)

(assert (=> b!3749527 (= e!2319060 (and tp!1144627 tp!1144625))))

(declare-fun b!3749529 () Bool)

(declare-fun tp!1144624 () Bool)

(declare-fun tp!1144626 () Bool)

(assert (=> b!3749529 (= e!2319060 (and tp!1144624 tp!1144626))))

(declare-fun b!3749526 () Bool)

(assert (=> b!3749526 (= e!2319060 tp_is_empty!19019)))

(assert (=> b!3749348 (= tp!1144529 e!2319060)))

(declare-fun b!3749528 () Bool)

(declare-fun tp!1144623 () Bool)

(assert (=> b!3749528 (= e!2319060 tp!1144623)))

(assert (= (and b!3749348 (is-ElementMatch!11010 (regex!6105 (h!45358 rules!4236)))) b!3749526))

(assert (= (and b!3749348 (is-Concat!17345 (regex!6105 (h!45358 rules!4236)))) b!3749527))

(assert (= (and b!3749348 (is-Star!11010 (regex!6105 (h!45358 rules!4236)))) b!3749528))

(assert (= (and b!3749348 (is-Union!11010 (regex!6105 (h!45358 rules!4236)))) b!3749529))

(declare-fun b!3749534 () Bool)

(declare-fun e!2319063 () Bool)

(declare-fun tp!1144630 () Bool)

(assert (=> b!3749534 (= e!2319063 (and tp_is_empty!19019 tp!1144630))))

(assert (=> b!3749359 (= tp!1144537 e!2319063)))

(assert (= (and b!3749359 (is-Cons!39936 (originalCharacters!6705 (h!45359 tokens!606)))) b!3749534))

(declare-fun b!3749536 () Bool)

(declare-fun e!2319064 () Bool)

(declare-fun tp!1144635 () Bool)

(declare-fun tp!1144633 () Bool)

(assert (=> b!3749536 (= e!2319064 (and tp!1144635 tp!1144633))))

(declare-fun b!3749538 () Bool)

(declare-fun tp!1144632 () Bool)

(declare-fun tp!1144634 () Bool)

(assert (=> b!3749538 (= e!2319064 (and tp!1144632 tp!1144634))))

(declare-fun b!3749535 () Bool)

(assert (=> b!3749535 (= e!2319064 tp_is_empty!19019)))

(assert (=> b!3749353 (= tp!1144527 e!2319064)))

(declare-fun b!3749537 () Bool)

(declare-fun tp!1144631 () Bool)

(assert (=> b!3749537 (= e!2319064 tp!1144631)))

(assert (= (and b!3749353 (is-ElementMatch!11010 (regex!6105 (rule!8869 (h!45359 tokens!606))))) b!3749535))

(assert (= (and b!3749353 (is-Concat!17345 (regex!6105 (rule!8869 (h!45359 tokens!606))))) b!3749536))

(assert (= (and b!3749353 (is-Star!11010 (regex!6105 (rule!8869 (h!45359 tokens!606))))) b!3749537))

(assert (= (and b!3749353 (is-Union!11010 (regex!6105 (rule!8869 (h!45359 tokens!606))))) b!3749538))

(declare-fun b!3749539 () Bool)

(declare-fun e!2319065 () Bool)

(declare-fun tp!1144636 () Bool)

(assert (=> b!3749539 (= e!2319065 (and tp_is_empty!19019 tp!1144636))))

(assert (=> b!3749352 (= tp!1144530 e!2319065)))

(assert (= (and b!3749352 (is-Cons!39936 (originalCharacters!6705 t!8579))) b!3749539))

(declare-fun b_lambda!109903 () Bool)

(assert (= b_lambda!109901 (or (and b!3749358 b_free!100219) (and b!3749347 b_free!100215 (= (toChars!8312 (transformation!6105 (h!45358 rules!4236))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))))) (and b!3749497 b_free!100239 (= (toChars!8312 (transformation!6105 (h!45358 (t!302835 rules!4236)))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))))) (and b!3749511 b_free!100243 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 (t!302836 tokens!606))))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))))) (and b!3749356 b_free!100223 (= (toChars!8312 (transformation!6105 (rule!8869 t!8579))) (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))))) b_lambda!109903)))

(declare-fun b_lambda!109905 () Bool)

(assert (= b_lambda!109899 (or (and b!3749358 b_free!100219 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 tokens!606)))) (toChars!8312 (transformation!6105 (rule!8869 t!8579))))) (and b!3749347 b_free!100215 (= (toChars!8312 (transformation!6105 (h!45358 rules!4236))) (toChars!8312 (transformation!6105 (rule!8869 t!8579))))) (and b!3749511 b_free!100243 (= (toChars!8312 (transformation!6105 (rule!8869 (h!45359 (t!302836 tokens!606))))) (toChars!8312 (transformation!6105 (rule!8869 t!8579))))) (and b!3749497 b_free!100239 (= (toChars!8312 (transformation!6105 (h!45358 (t!302835 rules!4236)))) (toChars!8312 (transformation!6105 (rule!8869 t!8579))))) (and b!3749356 b_free!100223) b_lambda!109905)))

(push 1)

(assert (not b!3749419))

(assert (not b!3749538))

(assert (not b_lambda!109905))

(assert (not d!1093849))

(assert (not b_next!100917))

(assert b_and!278503)

(assert b_and!278535)

(assert (not d!1093873))

(assert (not b!3749534))

(assert (not b!3749536))

(assert b_and!278529)

(assert (not b_next!100945))

(assert (not b!3749439))

(assert (not d!1093865))

(assert (not d!1093855))

(assert (not b_next!100923))

(assert (not b!3749537))

(assert (not b!3749480))

(assert (not b!3749483))

(assert (not b!3749529))

(assert (not b!3749509))

(assert (not b!3749478))

(assert (not b!3749457))

(assert (not b!3749440))

(assert (not b_next!100943))

(assert (not b!3749413))

(assert (not b!3749430))

(assert (not b_next!100941))

(assert (not b!3749431))

(assert (not b!3749525))

(assert (not b!3749448))

(assert (not b!3749458))

(assert (not d!1093863))

(assert tp_is_empty!19019)

(assert (not d!1093861))

(assert (not d!1093877))

(assert b_and!278525)

(assert (not tb!214483))

(assert (not b!3749485))

(assert (not b!3749524))

(assert (not b_next!100925))

(assert (not d!1093871))

(assert (not b_next!100927))

(assert (not tb!214477))

(assert b_and!278533)

(assert (not b!3749433))

(assert (not b_next!100921))

(assert (not b!3749527))

(assert b_and!278495)

(assert (not b!3749495))

(assert (not b!3749523))

(assert (not b_lambda!109903))

(assert (not b!3749528))

(assert (not d!1093869))

(assert (not b!3749446))

(assert (not b!3749467))

(assert (not b!3749472))

(assert (not b_next!100919))

(assert (not b!3749539))

(assert (not b!3749510))

(assert b_and!278537)

(assert b_and!278527)

(assert (not b!3749482))

(assert (not b!3749496))

(assert b_and!278531)

(assert b_and!278499)

(assert (not b!3749481))

(assert (not b!3749447))

(assert (not b!3749445))

(assert (not b!3749508))

(assert (not b_next!100947))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278529)

(assert (not b_next!100945))

(assert (not b_next!100923))

(assert (not b_next!100943))

(assert (not b_next!100941))

(assert b_and!278525)

(assert (not b_next!100925))

(assert (not b_next!100927))

(assert b_and!278533)

(assert (not b_next!100919))

(assert (not b_next!100917))

(assert b_and!278503)

(assert b_and!278535)

(assert (not b_next!100947))

(assert (not b_next!100921))

(assert b_and!278495)

(assert b_and!278537)

(assert b_and!278527)

(assert b_and!278531)

(assert b_and!278499)

(check-sat)

(pop 1)

