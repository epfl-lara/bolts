; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395614 () Bool)

(assert start!395614)

(declare-fun b!4155318 () Bool)

(declare-fun b_free!119219 () Bool)

(declare-fun b_next!119923 () Bool)

(assert (=> b!4155318 (= b_free!119219 (not b_next!119923))))

(declare-fun tp!1267395 () Bool)

(declare-fun b_and!323581 () Bool)

(assert (=> b!4155318 (= tp!1267395 b_and!323581)))

(declare-fun b_free!119221 () Bool)

(declare-fun b_next!119925 () Bool)

(assert (=> b!4155318 (= b_free!119221 (not b_next!119925))))

(declare-fun tp!1267391 () Bool)

(declare-fun b_and!323583 () Bool)

(assert (=> b!4155318 (= tp!1267391 b_and!323583)))

(declare-fun b!4155316 () Bool)

(declare-fun b_free!119223 () Bool)

(declare-fun b_next!119927 () Bool)

(assert (=> b!4155316 (= b_free!119223 (not b_next!119927))))

(declare-fun tp!1267392 () Bool)

(declare-fun b_and!323585 () Bool)

(assert (=> b!4155316 (= tp!1267392 b_and!323585)))

(declare-fun b_free!119225 () Bool)

(declare-fun b_next!119929 () Bool)

(assert (=> b!4155316 (= b_free!119225 (not b_next!119929))))

(declare-fun tp!1267396 () Bool)

(declare-fun b_and!323587 () Bool)

(assert (=> b!4155316 (= tp!1267396 b_and!323587)))

(declare-fun b!4155313 () Bool)

(declare-fun b_free!119227 () Bool)

(declare-fun b_next!119931 () Bool)

(assert (=> b!4155313 (= b_free!119227 (not b_next!119931))))

(declare-fun tp!1267397 () Bool)

(declare-fun b_and!323589 () Bool)

(assert (=> b!4155313 (= tp!1267397 b_and!323589)))

(declare-fun b_free!119229 () Bool)

(declare-fun b_next!119933 () Bool)

(assert (=> b!4155313 (= b_free!119229 (not b_next!119933))))

(declare-fun tp!1267393 () Bool)

(declare-fun b_and!323591 () Bool)

(assert (=> b!4155313 (= tp!1267393 b_and!323591)))

(declare-fun res!1701780 () Bool)

(declare-fun e!2578470 () Bool)

(assert (=> start!395614 (=> (not res!1701780) (not e!2578470))))

(declare-datatypes ((LexerInterface!7057 0))(
  ( (LexerInterfaceExt!7054 (__x!27613 Int)) (Lexer!7055) )
))
(declare-fun thiss!26968 () LexerInterface!7057)

(get-info :version)

(assert (=> start!395614 (= res!1701780 ((_ is Lexer!7055) thiss!26968))))

(assert (=> start!395614 e!2578470))

(assert (=> start!395614 true))

(declare-fun e!2578475 () Bool)

(assert (=> start!395614 e!2578475))

(declare-fun e!2578479 () Bool)

(assert (=> start!395614 e!2578479))

(declare-fun e!2578478 () Bool)

(assert (=> start!395614 e!2578478))

(declare-fun b!4155312 () Bool)

(declare-fun res!1701777 () Bool)

(assert (=> b!4155312 (=> (not res!1701777) (not e!2578470))))

(declare-datatypes ((List!45372 0))(
  ( (Nil!45248) (Cons!45248 (h!50668 (_ BitVec 16)) (t!343403 List!45372)) )
))
(declare-datatypes ((TokenValue!7698 0))(
  ( (FloatLiteralValue!15396 (text!54331 List!45372)) (TokenValueExt!7697 (__x!27614 Int)) (Broken!38490 (value!233335 List!45372)) (Object!7821) (End!7698) (Def!7698) (Underscore!7698) (Match!7698) (Else!7698) (Error!7698) (Case!7698) (If!7698) (Extends!7698) (Abstract!7698) (Class!7698) (Val!7698) (DelimiterValue!15396 (del!7758 List!45372)) (KeywordValue!7704 (value!233336 List!45372)) (CommentValue!15396 (value!233337 List!45372)) (WhitespaceValue!15396 (value!233338 List!45372)) (IndentationValue!7698 (value!233339 List!45372)) (String!52239) (Int32!7698) (Broken!38491 (value!233340 List!45372)) (Boolean!7699) (Unit!64448) (OperatorValue!7701 (op!7758 List!45372)) (IdentifierValue!15396 (value!233341 List!45372)) (IdentifierValue!15397 (value!233342 List!45372)) (WhitespaceValue!15397 (value!233343 List!45372)) (True!15396) (False!15396) (Broken!38492 (value!233344 List!45372)) (Broken!38493 (value!233345 List!45372)) (True!15397) (RightBrace!7698) (RightBracket!7698) (Colon!7698) (Null!7698) (Comma!7698) (LeftBracket!7698) (False!15397) (LeftBrace!7698) (ImaginaryLiteralValue!7698 (text!54332 List!45372)) (StringLiteralValue!23094 (value!233346 List!45372)) (EOFValue!7698 (value!233347 List!45372)) (IdentValue!7698 (value!233348 List!45372)) (DelimiterValue!15397 (value!233349 List!45372)) (DedentValue!7698 (value!233350 List!45372)) (NewLineValue!7698 (value!233351 List!45372)) (IntegerValue!23094 (value!233352 (_ BitVec 32)) (text!54333 List!45372)) (IntegerValue!23095 (value!233353 Int) (text!54334 List!45372)) (Times!7698) (Or!7698) (Equal!7698) (Minus!7698) (Broken!38494 (value!233354 List!45372)) (And!7698) (Div!7698) (LessEqual!7698) (Mod!7698) (Concat!20071) (Not!7698) (Plus!7698) (SpaceValue!7698 (value!233355 List!45372)) (IntegerValue!23096 (value!233356 Int) (text!54335 List!45372)) (StringLiteralValue!23095 (text!54336 List!45372)) (FloatLiteralValue!15397 (text!54337 List!45372)) (BytesLiteralValue!7698 (value!233357 List!45372)) (CommentValue!15397 (value!233358 List!45372)) (StringLiteralValue!23096 (value!233359 List!45372)) (ErrorTokenValue!7698 (msg!7759 List!45372)) )
))
(declare-datatypes ((C!24932 0))(
  ( (C!24933 (val!14576 Int)) )
))
(declare-datatypes ((List!45373 0))(
  ( (Nil!45249) (Cons!45249 (h!50669 C!24932) (t!343404 List!45373)) )
))
(declare-datatypes ((IArray!27363 0))(
  ( (IArray!27364 (innerList!13739 List!45373)) )
))
(declare-datatypes ((Conc!13679 0))(
  ( (Node!13679 (left!33835 Conc!13679) (right!34165 Conc!13679) (csize!27588 Int) (cheight!13890 Int)) (Leaf!21128 (xs!16985 IArray!27363) (csize!27589 Int)) (Empty!13679) )
))
(declare-datatypes ((Regex!12373 0))(
  ( (ElementMatch!12373 (c!711352 C!24932)) (Concat!20072 (regOne!25258 Regex!12373) (regTwo!25258 Regex!12373)) (EmptyExpr!12373) (Star!12373 (reg!12702 Regex!12373)) (EmptyLang!12373) (Union!12373 (regOne!25259 Regex!12373) (regTwo!25259 Regex!12373)) )
))
(declare-datatypes ((String!52240 0))(
  ( (String!52241 (value!233360 String)) )
))
(declare-datatypes ((BalanceConc!26952 0))(
  ( (BalanceConc!26953 (c!711353 Conc!13679)) )
))
(declare-datatypes ((TokenValueInjection!14824 0))(
  ( (TokenValueInjection!14825 (toValue!10132 Int) (toChars!9991 Int)) )
))
(declare-datatypes ((Rule!14736 0))(
  ( (Rule!14737 (regex!7468 Regex!12373) (tag!8332 String!52240) (isSeparator!7468 Bool) (transformation!7468 TokenValueInjection!14824)) )
))
(declare-datatypes ((List!45374 0))(
  ( (Nil!45250) (Cons!45250 (h!50670 Rule!14736) (t!343405 List!45374)) )
))
(declare-fun rules!4102 () List!45374)

(declare-datatypes ((List!45375 0))(
  ( (Nil!45251) (Cons!45251 (h!50671 String!52240) (t!343406 List!45375)) )
))
(declare-fun noDuplicateTag!3045 (LexerInterface!7057 List!45374 List!45375) Bool)

(declare-fun noDuplicateTag$default$2!50 (LexerInterface!7057) List!45375)

(assert (=> b!4155312 (= res!1701777 (noDuplicateTag!3045 thiss!26968 rules!4102 (noDuplicateTag$default$2!50 thiss!26968)))))

(declare-fun e!2578477 () Bool)

(assert (=> b!4155313 (= e!2578477 (and tp!1267397 tp!1267393))))

(declare-fun tp!1267400 () Bool)

(declare-fun r1!615 () Rule!14736)

(declare-fun b!4155314 () Bool)

(declare-fun e!2578472 () Bool)

(declare-fun inv!59815 (String!52240) Bool)

(declare-fun inv!59817 (TokenValueInjection!14824) Bool)

(assert (=> b!4155314 (= e!2578479 (and tp!1267400 (inv!59815 (tag!8332 r1!615)) (inv!59817 (transformation!7468 r1!615)) e!2578472))))

(declare-fun b!4155315 () Bool)

(declare-fun e!2578476 () Bool)

(declare-fun tp!1267394 () Bool)

(assert (=> b!4155315 (= e!2578475 (and e!2578476 tp!1267394))))

(assert (=> b!4155316 (= e!2578472 (and tp!1267392 tp!1267396))))

(declare-fun b!4155317 () Bool)

(declare-fun res!1701779 () Bool)

(assert (=> b!4155317 (=> (not res!1701779) (not e!2578470))))

(declare-fun contains!9170 (List!45374 Rule!14736) Bool)

(assert (=> b!4155317 (= res!1701779 (contains!9170 rules!4102 r1!615))))

(declare-fun e!2578474 () Bool)

(assert (=> b!4155318 (= e!2578474 (and tp!1267395 tp!1267391))))

(declare-fun b!4155319 () Bool)

(declare-fun res!1701778 () Bool)

(assert (=> b!4155319 (=> (not res!1701778) (not e!2578470))))

(declare-fun r2!597 () Rule!14736)

(declare-fun getIndex!810 (List!45374 Rule!14736) Int)

(assert (=> b!4155319 (= res!1701778 (< (getIndex!810 rules!4102 r1!615) (getIndex!810 rules!4102 r2!597)))))

(declare-fun tp!1267399 () Bool)

(declare-fun b!4155320 () Bool)

(assert (=> b!4155320 (= e!2578476 (and tp!1267399 (inv!59815 (tag!8332 (h!50670 rules!4102))) (inv!59817 (transformation!7468 (h!50670 rules!4102))) e!2578474))))

(declare-fun b!4155321 () Bool)

(declare-fun res!1701781 () Bool)

(assert (=> b!4155321 (=> (not res!1701781) (not e!2578470))))

(declare-fun head!8790 (List!45374) Rule!14736)

(assert (=> b!4155321 (= res!1701781 (= (head!8790 rules!4102) r1!615))))

(declare-fun b!4155322 () Bool)

(declare-fun res!1701776 () Bool)

(assert (=> b!4155322 (=> (not res!1701776) (not e!2578470))))

(assert (=> b!4155322 (= res!1701776 (contains!9170 rules!4102 r2!597))))

(declare-fun tp!1267398 () Bool)

(declare-fun b!4155323 () Bool)

(assert (=> b!4155323 (= e!2578478 (and tp!1267398 (inv!59815 (tag!8332 r2!597)) (inv!59817 (transformation!7468 r2!597)) e!2578477))))

(declare-fun b!4155324 () Bool)

(declare-fun contains!9171 (List!45375 String!52240) Bool)

(assert (=> b!4155324 (= e!2578470 (not (contains!9171 (Cons!45251 (tag!8332 r1!615) Nil!45251) (tag!8332 r1!615))))))

(assert (= (and start!395614 res!1701780) b!4155317))

(assert (= (and b!4155317 res!1701779) b!4155322))

(assert (= (and b!4155322 res!1701776) b!4155312))

(assert (= (and b!4155312 res!1701777) b!4155319))

(assert (= (and b!4155319 res!1701778) b!4155321))

(assert (= (and b!4155321 res!1701781) b!4155324))

(assert (= b!4155320 b!4155318))

(assert (= b!4155315 b!4155320))

(assert (= (and start!395614 ((_ is Cons!45250) rules!4102)) b!4155315))

(assert (= b!4155314 b!4155316))

(assert (= start!395614 b!4155314))

(assert (= b!4155323 b!4155313))

(assert (= start!395614 b!4155323))

(declare-fun m!4749845 () Bool)

(assert (=> b!4155312 m!4749845))

(assert (=> b!4155312 m!4749845))

(declare-fun m!4749847 () Bool)

(assert (=> b!4155312 m!4749847))

(declare-fun m!4749849 () Bool)

(assert (=> b!4155323 m!4749849))

(declare-fun m!4749851 () Bool)

(assert (=> b!4155323 m!4749851))

(declare-fun m!4749853 () Bool)

(assert (=> b!4155317 m!4749853))

(declare-fun m!4749855 () Bool)

(assert (=> b!4155319 m!4749855))

(declare-fun m!4749857 () Bool)

(assert (=> b!4155319 m!4749857))

(declare-fun m!4749859 () Bool)

(assert (=> b!4155320 m!4749859))

(declare-fun m!4749861 () Bool)

(assert (=> b!4155320 m!4749861))

(declare-fun m!4749863 () Bool)

(assert (=> b!4155314 m!4749863))

(declare-fun m!4749865 () Bool)

(assert (=> b!4155314 m!4749865))

(declare-fun m!4749867 () Bool)

(assert (=> b!4155321 m!4749867))

(declare-fun m!4749869 () Bool)

(assert (=> b!4155324 m!4749869))

(declare-fun m!4749871 () Bool)

(assert (=> b!4155322 m!4749871))

(check-sat (not b!4155314) b_and!323591 (not b!4155319) (not b!4155323) (not b_next!119929) (not b_next!119925) (not b!4155320) (not b_next!119931) b_and!323585 (not b_next!119927) b_and!323589 b_and!323581 (not b!4155315) (not b!4155312) (not b!4155321) (not b!4155317) (not b!4155322) (not b!4155324) (not b_next!119933) b_and!323583 (not b_next!119923) b_and!323587)
(check-sat b_and!323581 b_and!323591 (not b_next!119929) (not b_next!119925) (not b_next!119931) b_and!323585 (not b_next!119927) b_and!323589 (not b_next!119933) b_and!323583 (not b_next!119923) b_and!323587)
(get-model)

(declare-fun d!1228771 () Bool)

(declare-fun lt!1481371 () Int)

(assert (=> d!1228771 (>= lt!1481371 0)))

(declare-fun e!2578495 () Int)

(assert (=> d!1228771 (= lt!1481371 e!2578495)))

(declare-fun c!711359 () Bool)

(assert (=> d!1228771 (= c!711359 (and ((_ is Cons!45250) rules!4102) (= (h!50670 rules!4102) r1!615)))))

(assert (=> d!1228771 (contains!9170 rules!4102 r1!615)))

(assert (=> d!1228771 (= (getIndex!810 rules!4102 r1!615) lt!1481371)))

(declare-fun b!4155342 () Bool)

(declare-fun e!2578494 () Int)

(assert (=> b!4155342 (= e!2578495 e!2578494)))

(declare-fun c!711358 () Bool)

(assert (=> b!4155342 (= c!711358 (and ((_ is Cons!45250) rules!4102) (not (= (h!50670 rules!4102) r1!615))))))

(declare-fun b!4155341 () Bool)

(assert (=> b!4155341 (= e!2578495 0)))

(declare-fun b!4155343 () Bool)

(assert (=> b!4155343 (= e!2578494 (+ 1 (getIndex!810 (t!343405 rules!4102) r1!615)))))

(declare-fun b!4155344 () Bool)

(assert (=> b!4155344 (= e!2578494 (- 1))))

(assert (= (and d!1228771 c!711359) b!4155341))

(assert (= (and d!1228771 (not c!711359)) b!4155342))

(assert (= (and b!4155342 c!711358) b!4155343))

(assert (= (and b!4155342 (not c!711358)) b!4155344))

(assert (=> d!1228771 m!4749853))

(declare-fun m!4749883 () Bool)

(assert (=> b!4155343 m!4749883))

(assert (=> b!4155319 d!1228771))

(declare-fun d!1228779 () Bool)

(declare-fun lt!1481372 () Int)

(assert (=> d!1228779 (>= lt!1481372 0)))

(declare-fun e!2578497 () Int)

(assert (=> d!1228779 (= lt!1481372 e!2578497)))

(declare-fun c!711361 () Bool)

(assert (=> d!1228779 (= c!711361 (and ((_ is Cons!45250) rules!4102) (= (h!50670 rules!4102) r2!597)))))

(assert (=> d!1228779 (contains!9170 rules!4102 r2!597)))

(assert (=> d!1228779 (= (getIndex!810 rules!4102 r2!597) lt!1481372)))

(declare-fun b!4155346 () Bool)

(declare-fun e!2578496 () Int)

(assert (=> b!4155346 (= e!2578497 e!2578496)))

(declare-fun c!711360 () Bool)

(assert (=> b!4155346 (= c!711360 (and ((_ is Cons!45250) rules!4102) (not (= (h!50670 rules!4102) r2!597))))))

(declare-fun b!4155345 () Bool)

(assert (=> b!4155345 (= e!2578497 0)))

(declare-fun b!4155347 () Bool)

(assert (=> b!4155347 (= e!2578496 (+ 1 (getIndex!810 (t!343405 rules!4102) r2!597)))))

(declare-fun b!4155348 () Bool)

(assert (=> b!4155348 (= e!2578496 (- 1))))

(assert (= (and d!1228779 c!711361) b!4155345))

(assert (= (and d!1228779 (not c!711361)) b!4155346))

(assert (= (and b!4155346 c!711360) b!4155347))

(assert (= (and b!4155346 (not c!711360)) b!4155348))

(assert (=> d!1228779 m!4749871))

(declare-fun m!4749885 () Bool)

(assert (=> b!4155347 m!4749885))

(assert (=> b!4155319 d!1228779))

(declare-fun d!1228781 () Bool)

(assert (=> d!1228781 (= (inv!59815 (tag!8332 r1!615)) (= (mod (str.len (value!233360 (tag!8332 r1!615))) 2) 0))))

(assert (=> b!4155314 d!1228781))

(declare-fun d!1228783 () Bool)

(declare-fun res!1701803 () Bool)

(declare-fun e!2578503 () Bool)

(assert (=> d!1228783 (=> (not res!1701803) (not e!2578503))))

(declare-fun semiInverseModEq!3234 (Int Int) Bool)

(assert (=> d!1228783 (= res!1701803 (semiInverseModEq!3234 (toChars!9991 (transformation!7468 r1!615)) (toValue!10132 (transformation!7468 r1!615))))))

(assert (=> d!1228783 (= (inv!59817 (transformation!7468 r1!615)) e!2578503)))

(declare-fun b!4155354 () Bool)

(declare-fun equivClasses!3133 (Int Int) Bool)

(assert (=> b!4155354 (= e!2578503 (equivClasses!3133 (toChars!9991 (transformation!7468 r1!615)) (toValue!10132 (transformation!7468 r1!615))))))

(assert (= (and d!1228783 res!1701803) b!4155354))

(declare-fun m!4749891 () Bool)

(assert (=> d!1228783 m!4749891))

(declare-fun m!4749893 () Bool)

(assert (=> b!4155354 m!4749893))

(assert (=> b!4155314 d!1228783))

(declare-fun d!1228787 () Bool)

(assert (=> d!1228787 (= (inv!59815 (tag!8332 (h!50670 rules!4102))) (= (mod (str.len (value!233360 (tag!8332 (h!50670 rules!4102)))) 2) 0))))

(assert (=> b!4155320 d!1228787))

(declare-fun d!1228789 () Bool)

(declare-fun res!1701804 () Bool)

(declare-fun e!2578504 () Bool)

(assert (=> d!1228789 (=> (not res!1701804) (not e!2578504))))

(assert (=> d!1228789 (= res!1701804 (semiInverseModEq!3234 (toChars!9991 (transformation!7468 (h!50670 rules!4102))) (toValue!10132 (transformation!7468 (h!50670 rules!4102)))))))

(assert (=> d!1228789 (= (inv!59817 (transformation!7468 (h!50670 rules!4102))) e!2578504)))

(declare-fun b!4155355 () Bool)

(assert (=> b!4155355 (= e!2578504 (equivClasses!3133 (toChars!9991 (transformation!7468 (h!50670 rules!4102))) (toValue!10132 (transformation!7468 (h!50670 rules!4102)))))))

(assert (= (and d!1228789 res!1701804) b!4155355))

(declare-fun m!4749895 () Bool)

(assert (=> d!1228789 m!4749895))

(declare-fun m!4749897 () Bool)

(assert (=> b!4155355 m!4749897))

(assert (=> b!4155320 d!1228789))

(declare-fun d!1228791 () Bool)

(assert (=> d!1228791 (= (inv!59815 (tag!8332 r2!597)) (= (mod (str.len (value!233360 (tag!8332 r2!597))) 2) 0))))

(assert (=> b!4155323 d!1228791))

(declare-fun d!1228793 () Bool)

(declare-fun res!1701805 () Bool)

(declare-fun e!2578505 () Bool)

(assert (=> d!1228793 (=> (not res!1701805) (not e!2578505))))

(assert (=> d!1228793 (= res!1701805 (semiInverseModEq!3234 (toChars!9991 (transformation!7468 r2!597)) (toValue!10132 (transformation!7468 r2!597))))))

(assert (=> d!1228793 (= (inv!59817 (transformation!7468 r2!597)) e!2578505)))

(declare-fun b!4155356 () Bool)

(assert (=> b!4155356 (= e!2578505 (equivClasses!3133 (toChars!9991 (transformation!7468 r2!597)) (toValue!10132 (transformation!7468 r2!597))))))

(assert (= (and d!1228793 res!1701805) b!4155356))

(declare-fun m!4749899 () Bool)

(assert (=> d!1228793 m!4749899))

(declare-fun m!4749901 () Bool)

(assert (=> b!4155356 m!4749901))

(assert (=> b!4155323 d!1228793))

(declare-fun d!1228795 () Bool)

(declare-fun lt!1481377 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6996 (List!45375) (InoxSet String!52240))

(assert (=> d!1228795 (= lt!1481377 (select (content!6996 (Cons!45251 (tag!8332 r1!615) Nil!45251)) (tag!8332 r1!615)))))

(declare-fun e!2578515 () Bool)

(assert (=> d!1228795 (= lt!1481377 e!2578515)))

(declare-fun res!1701810 () Bool)

(assert (=> d!1228795 (=> (not res!1701810) (not e!2578515))))

(assert (=> d!1228795 (= res!1701810 ((_ is Cons!45251) (Cons!45251 (tag!8332 r1!615) Nil!45251)))))

(assert (=> d!1228795 (= (contains!9171 (Cons!45251 (tag!8332 r1!615) Nil!45251) (tag!8332 r1!615)) lt!1481377)))

(declare-fun b!4155369 () Bool)

(declare-fun e!2578516 () Bool)

(assert (=> b!4155369 (= e!2578515 e!2578516)))

(declare-fun res!1701811 () Bool)

(assert (=> b!4155369 (=> res!1701811 e!2578516)))

(assert (=> b!4155369 (= res!1701811 (= (h!50671 (Cons!45251 (tag!8332 r1!615) Nil!45251)) (tag!8332 r1!615)))))

(declare-fun b!4155370 () Bool)

(assert (=> b!4155370 (= e!2578516 (contains!9171 (t!343406 (Cons!45251 (tag!8332 r1!615) Nil!45251)) (tag!8332 r1!615)))))

(assert (= (and d!1228795 res!1701810) b!4155369))

(assert (= (and b!4155369 (not res!1701811)) b!4155370))

(declare-fun m!4749903 () Bool)

(assert (=> d!1228795 m!4749903))

(declare-fun m!4749905 () Bool)

(assert (=> d!1228795 m!4749905))

(declare-fun m!4749907 () Bool)

(assert (=> b!4155370 m!4749907))

(assert (=> b!4155324 d!1228795))

(declare-fun d!1228797 () Bool)

(declare-fun lt!1481382 () Bool)

(declare-fun content!6997 (List!45374) (InoxSet Rule!14736))

(assert (=> d!1228797 (= lt!1481382 (select (content!6997 rules!4102) r2!597))))

(declare-fun e!2578527 () Bool)

(assert (=> d!1228797 (= lt!1481382 e!2578527)))

(declare-fun res!1701817 () Bool)

(assert (=> d!1228797 (=> (not res!1701817) (not e!2578527))))

(assert (=> d!1228797 (= res!1701817 ((_ is Cons!45250) rules!4102))))

(assert (=> d!1228797 (= (contains!9170 rules!4102 r2!597) lt!1481382)))

(declare-fun b!4155384 () Bool)

(declare-fun e!2578526 () Bool)

(assert (=> b!4155384 (= e!2578527 e!2578526)))

(declare-fun res!1701818 () Bool)

(assert (=> b!4155384 (=> res!1701818 e!2578526)))

(assert (=> b!4155384 (= res!1701818 (= (h!50670 rules!4102) r2!597))))

(declare-fun b!4155385 () Bool)

(assert (=> b!4155385 (= e!2578526 (contains!9170 (t!343405 rules!4102) r2!597))))

(assert (= (and d!1228797 res!1701817) b!4155384))

(assert (= (and b!4155384 (not res!1701818)) b!4155385))

(declare-fun m!4749917 () Bool)

(assert (=> d!1228797 m!4749917))

(declare-fun m!4749919 () Bool)

(assert (=> d!1228797 m!4749919))

(declare-fun m!4749921 () Bool)

(assert (=> b!4155385 m!4749921))

(assert (=> b!4155322 d!1228797))

(declare-fun d!1228807 () Bool)

(declare-fun lt!1481383 () Bool)

(assert (=> d!1228807 (= lt!1481383 (select (content!6997 rules!4102) r1!615))))

(declare-fun e!2578529 () Bool)

(assert (=> d!1228807 (= lt!1481383 e!2578529)))

(declare-fun res!1701819 () Bool)

(assert (=> d!1228807 (=> (not res!1701819) (not e!2578529))))

(assert (=> d!1228807 (= res!1701819 ((_ is Cons!45250) rules!4102))))

(assert (=> d!1228807 (= (contains!9170 rules!4102 r1!615) lt!1481383)))

(declare-fun b!4155386 () Bool)

(declare-fun e!2578528 () Bool)

(assert (=> b!4155386 (= e!2578529 e!2578528)))

(declare-fun res!1701820 () Bool)

(assert (=> b!4155386 (=> res!1701820 e!2578528)))

(assert (=> b!4155386 (= res!1701820 (= (h!50670 rules!4102) r1!615))))

(declare-fun b!4155387 () Bool)

(assert (=> b!4155387 (= e!2578528 (contains!9170 (t!343405 rules!4102) r1!615))))

(assert (= (and d!1228807 res!1701819) b!4155386))

(assert (= (and b!4155386 (not res!1701820)) b!4155387))

(assert (=> d!1228807 m!4749917))

(declare-fun m!4749923 () Bool)

(assert (=> d!1228807 m!4749923))

(declare-fun m!4749925 () Bool)

(assert (=> b!4155387 m!4749925))

(assert (=> b!4155317 d!1228807))

(declare-fun d!1228809 () Bool)

(declare-fun res!1701831 () Bool)

(declare-fun e!2578540 () Bool)

(assert (=> d!1228809 (=> res!1701831 e!2578540)))

(assert (=> d!1228809 (= res!1701831 ((_ is Nil!45250) rules!4102))))

(assert (=> d!1228809 (= (noDuplicateTag!3045 thiss!26968 rules!4102 (noDuplicateTag$default$2!50 thiss!26968)) e!2578540)))

(declare-fun b!4155398 () Bool)

(declare-fun e!2578541 () Bool)

(assert (=> b!4155398 (= e!2578540 e!2578541)))

(declare-fun res!1701832 () Bool)

(assert (=> b!4155398 (=> (not res!1701832) (not e!2578541))))

(assert (=> b!4155398 (= res!1701832 (not (contains!9171 (noDuplicateTag$default$2!50 thiss!26968) (tag!8332 (h!50670 rules!4102)))))))

(declare-fun b!4155399 () Bool)

(assert (=> b!4155399 (= e!2578541 (noDuplicateTag!3045 thiss!26968 (t!343405 rules!4102) (Cons!45251 (tag!8332 (h!50670 rules!4102)) (noDuplicateTag$default$2!50 thiss!26968))))))

(assert (= (and d!1228809 (not res!1701831)) b!4155398))

(assert (= (and b!4155398 res!1701832) b!4155399))

(assert (=> b!4155398 m!4749845))

(declare-fun m!4749933 () Bool)

(assert (=> b!4155398 m!4749933))

(declare-fun m!4749935 () Bool)

(assert (=> b!4155399 m!4749935))

(assert (=> b!4155312 d!1228809))

(declare-fun d!1228817 () Bool)

(assert (=> d!1228817 (= (noDuplicateTag$default$2!50 thiss!26968) Nil!45251)))

(assert (=> b!4155312 d!1228817))

(declare-fun d!1228821 () Bool)

(assert (=> d!1228821 (= (head!8790 rules!4102) (h!50670 rules!4102))))

(assert (=> b!4155321 d!1228821))

(declare-fun e!2578547 () Bool)

(assert (=> b!4155314 (= tp!1267400 e!2578547)))

(declare-fun b!4155416 () Bool)

(declare-fun tp!1267411 () Bool)

(declare-fun tp!1267413 () Bool)

(assert (=> b!4155416 (= e!2578547 (and tp!1267411 tp!1267413))))

(declare-fun b!4155414 () Bool)

(declare-fun tp!1267414 () Bool)

(declare-fun tp!1267415 () Bool)

(assert (=> b!4155414 (= e!2578547 (and tp!1267414 tp!1267415))))

(declare-fun b!4155413 () Bool)

(declare-fun tp_is_empty!21635 () Bool)

(assert (=> b!4155413 (= e!2578547 tp_is_empty!21635)))

(declare-fun b!4155415 () Bool)

(declare-fun tp!1267412 () Bool)

(assert (=> b!4155415 (= e!2578547 tp!1267412)))

(assert (= (and b!4155314 ((_ is ElementMatch!12373) (regex!7468 r1!615))) b!4155413))

(assert (= (and b!4155314 ((_ is Concat!20072) (regex!7468 r1!615))) b!4155414))

(assert (= (and b!4155314 ((_ is Star!12373) (regex!7468 r1!615))) b!4155415))

(assert (= (and b!4155314 ((_ is Union!12373) (regex!7468 r1!615))) b!4155416))

(declare-fun e!2578550 () Bool)

(assert (=> b!4155320 (= tp!1267399 e!2578550)))

(declare-fun b!4155422 () Bool)

(declare-fun tp!1267416 () Bool)

(declare-fun tp!1267418 () Bool)

(assert (=> b!4155422 (= e!2578550 (and tp!1267416 tp!1267418))))

(declare-fun b!4155420 () Bool)

(declare-fun tp!1267419 () Bool)

(declare-fun tp!1267420 () Bool)

(assert (=> b!4155420 (= e!2578550 (and tp!1267419 tp!1267420))))

(declare-fun b!4155419 () Bool)

(assert (=> b!4155419 (= e!2578550 tp_is_empty!21635)))

(declare-fun b!4155421 () Bool)

(declare-fun tp!1267417 () Bool)

(assert (=> b!4155421 (= e!2578550 tp!1267417)))

(assert (= (and b!4155320 ((_ is ElementMatch!12373) (regex!7468 (h!50670 rules!4102)))) b!4155419))

(assert (= (and b!4155320 ((_ is Concat!20072) (regex!7468 (h!50670 rules!4102)))) b!4155420))

(assert (= (and b!4155320 ((_ is Star!12373) (regex!7468 (h!50670 rules!4102)))) b!4155421))

(assert (= (and b!4155320 ((_ is Union!12373) (regex!7468 (h!50670 rules!4102)))) b!4155422))

(declare-fun e!2578551 () Bool)

(assert (=> b!4155323 (= tp!1267398 e!2578551)))

(declare-fun b!4155426 () Bool)

(declare-fun tp!1267421 () Bool)

(declare-fun tp!1267423 () Bool)

(assert (=> b!4155426 (= e!2578551 (and tp!1267421 tp!1267423))))

(declare-fun b!4155424 () Bool)

(declare-fun tp!1267424 () Bool)

(declare-fun tp!1267425 () Bool)

(assert (=> b!4155424 (= e!2578551 (and tp!1267424 tp!1267425))))

(declare-fun b!4155423 () Bool)

(assert (=> b!4155423 (= e!2578551 tp_is_empty!21635)))

(declare-fun b!4155425 () Bool)

(declare-fun tp!1267422 () Bool)

(assert (=> b!4155425 (= e!2578551 tp!1267422)))

(assert (= (and b!4155323 ((_ is ElementMatch!12373) (regex!7468 r2!597))) b!4155423))

(assert (= (and b!4155323 ((_ is Concat!20072) (regex!7468 r2!597))) b!4155424))

(assert (= (and b!4155323 ((_ is Star!12373) (regex!7468 r2!597))) b!4155425))

(assert (= (and b!4155323 ((_ is Union!12373) (regex!7468 r2!597))) b!4155426))

(declare-fun b!4155445 () Bool)

(declare-fun b_free!119231 () Bool)

(declare-fun b_next!119935 () Bool)

(assert (=> b!4155445 (= b_free!119231 (not b_next!119935))))

(declare-fun tp!1267434 () Bool)

(declare-fun b_and!323593 () Bool)

(assert (=> b!4155445 (= tp!1267434 b_and!323593)))

(declare-fun b_free!119233 () Bool)

(declare-fun b_next!119937 () Bool)

(assert (=> b!4155445 (= b_free!119233 (not b_next!119937))))

(declare-fun tp!1267435 () Bool)

(declare-fun b_and!323595 () Bool)

(assert (=> b!4155445 (= tp!1267435 b_and!323595)))

(declare-fun e!2578567 () Bool)

(assert (=> b!4155445 (= e!2578567 (and tp!1267434 tp!1267435))))

(declare-fun b!4155444 () Bool)

(declare-fun tp!1267436 () Bool)

(declare-fun e!2578565 () Bool)

(assert (=> b!4155444 (= e!2578565 (and tp!1267436 (inv!59815 (tag!8332 (h!50670 (t!343405 rules!4102)))) (inv!59817 (transformation!7468 (h!50670 (t!343405 rules!4102)))) e!2578567))))

(declare-fun b!4155443 () Bool)

(declare-fun e!2578566 () Bool)

(declare-fun tp!1267439 () Bool)

(assert (=> b!4155443 (= e!2578566 (and e!2578565 tp!1267439))))

(assert (=> b!4155315 (= tp!1267394 e!2578566)))

(assert (= b!4155444 b!4155445))

(assert (= b!4155443 b!4155444))

(assert (= (and b!4155315 ((_ is Cons!45250) (t!343405 rules!4102))) b!4155443))

(declare-fun m!4749945 () Bool)

(assert (=> b!4155444 m!4749945))

(declare-fun m!4749947 () Bool)

(assert (=> b!4155444 m!4749947))

(check-sat (not b!4155387) b_and!323581 (not b!4155355) (not b!4155356) (not b_next!119925) (not b!4155399) (not b!4155444) (not b_next!119931) b_and!323595 (not d!1228771) (not d!1228789) (not b!4155426) (not d!1228795) (not b!4155422) (not b!4155398) (not b!4155354) (not d!1228793) (not b!4155370) b_and!323591 (not b!4155385) (not b!4155443) (not b!4155421) (not b!4155414) (not b!4155424) (not b_next!119929) (not d!1228797) (not d!1228807) (not b_next!119933) b_and!323583 (not b!4155347) (not d!1228783) (not d!1228779) (not b!4155416) (not b!4155420) (not b!4155415) b_and!323593 (not b_next!119923) b_and!323587 tp_is_empty!21635 (not b!4155343) b_and!323585 (not b_next!119937) (not b!4155425) (not b_next!119927) (not b_next!119935) b_and!323589)
(check-sat b_and!323581 b_and!323591 (not b_next!119929) (not b_next!119925) (not b_next!119931) b_and!323595 (not b_next!119927) (not b_next!119933) b_and!323583 b_and!323593 (not b_next!119923) b_and!323587 b_and!323585 (not b_next!119937) (not b_next!119935) b_and!323589)
