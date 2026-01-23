; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395650 () Bool)

(assert start!395650)

(declare-fun b!4155545 () Bool)

(declare-fun b_free!119251 () Bool)

(declare-fun b_next!119955 () Bool)

(assert (=> b!4155545 (= b_free!119251 (not b_next!119955))))

(declare-fun tp!1267527 () Bool)

(declare-fun b_and!323613 () Bool)

(assert (=> b!4155545 (= tp!1267527 b_and!323613)))

(declare-fun b_free!119253 () Bool)

(declare-fun b_next!119957 () Bool)

(assert (=> b!4155545 (= b_free!119253 (not b_next!119957))))

(declare-fun tp!1267526 () Bool)

(declare-fun b_and!323615 () Bool)

(assert (=> b!4155545 (= tp!1267526 b_and!323615)))

(declare-fun b!4155552 () Bool)

(declare-fun b_free!119255 () Bool)

(declare-fun b_next!119959 () Bool)

(assert (=> b!4155552 (= b_free!119255 (not b_next!119959))))

(declare-fun tp!1267528 () Bool)

(declare-fun b_and!323617 () Bool)

(assert (=> b!4155552 (= tp!1267528 b_and!323617)))

(declare-fun b_free!119257 () Bool)

(declare-fun b_next!119961 () Bool)

(assert (=> b!4155552 (= b_free!119257 (not b_next!119961))))

(declare-fun tp!1267532 () Bool)

(declare-fun b_and!323619 () Bool)

(assert (=> b!4155552 (= tp!1267532 b_and!323619)))

(declare-fun b!4155553 () Bool)

(declare-fun b_free!119259 () Bool)

(declare-fun b_next!119963 () Bool)

(assert (=> b!4155553 (= b_free!119259 (not b_next!119963))))

(declare-fun tp!1267533 () Bool)

(declare-fun b_and!323621 () Bool)

(assert (=> b!4155553 (= tp!1267533 b_and!323621)))

(declare-fun b_free!119261 () Bool)

(declare-fun b_next!119965 () Bool)

(assert (=> b!4155553 (= b_free!119261 (not b_next!119965))))

(declare-fun tp!1267531 () Bool)

(declare-fun b_and!323623 () Bool)

(assert (=> b!4155553 (= tp!1267531 b_and!323623)))

(declare-fun b!4155543 () Bool)

(declare-fun res!1701881 () Bool)

(declare-fun e!2578654 () Bool)

(assert (=> b!4155543 (=> (not res!1701881) (not e!2578654))))

(declare-datatypes ((List!45380 0))(
  ( (Nil!45256) (Cons!45256 (h!50676 (_ BitVec 16)) (t!343411 List!45380)) )
))
(declare-datatypes ((TokenValue!7700 0))(
  ( (FloatLiteralValue!15400 (text!54345 List!45380)) (TokenValueExt!7699 (__x!27617 Int)) (Broken!38500 (value!233390 List!45380)) (Object!7823) (End!7700) (Def!7700) (Underscore!7700) (Match!7700) (Else!7700) (Error!7700) (Case!7700) (If!7700) (Extends!7700) (Abstract!7700) (Class!7700) (Val!7700) (DelimiterValue!15400 (del!7760 List!45380)) (KeywordValue!7706 (value!233391 List!45380)) (CommentValue!15400 (value!233392 List!45380)) (WhitespaceValue!15400 (value!233393 List!45380)) (IndentationValue!7700 (value!233394 List!45380)) (String!52249) (Int32!7700) (Broken!38501 (value!233395 List!45380)) (Boolean!7701) (Unit!64450) (OperatorValue!7703 (op!7760 List!45380)) (IdentifierValue!15400 (value!233396 List!45380)) (IdentifierValue!15401 (value!233397 List!45380)) (WhitespaceValue!15401 (value!233398 List!45380)) (True!15400) (False!15400) (Broken!38502 (value!233399 List!45380)) (Broken!38503 (value!233400 List!45380)) (True!15401) (RightBrace!7700) (RightBracket!7700) (Colon!7700) (Null!7700) (Comma!7700) (LeftBracket!7700) (False!15401) (LeftBrace!7700) (ImaginaryLiteralValue!7700 (text!54346 List!45380)) (StringLiteralValue!23100 (value!233401 List!45380)) (EOFValue!7700 (value!233402 List!45380)) (IdentValue!7700 (value!233403 List!45380)) (DelimiterValue!15401 (value!233404 List!45380)) (DedentValue!7700 (value!233405 List!45380)) (NewLineValue!7700 (value!233406 List!45380)) (IntegerValue!23100 (value!233407 (_ BitVec 32)) (text!54347 List!45380)) (IntegerValue!23101 (value!233408 Int) (text!54348 List!45380)) (Times!7700) (Or!7700) (Equal!7700) (Minus!7700) (Broken!38504 (value!233409 List!45380)) (And!7700) (Div!7700) (LessEqual!7700) (Mod!7700) (Concat!20075) (Not!7700) (Plus!7700) (SpaceValue!7700 (value!233410 List!45380)) (IntegerValue!23102 (value!233411 Int) (text!54349 List!45380)) (StringLiteralValue!23101 (text!54350 List!45380)) (FloatLiteralValue!15401 (text!54351 List!45380)) (BytesLiteralValue!7700 (value!233412 List!45380)) (CommentValue!15401 (value!233413 List!45380)) (StringLiteralValue!23102 (value!233414 List!45380)) (ErrorTokenValue!7700 (msg!7761 List!45380)) )
))
(declare-datatypes ((C!24936 0))(
  ( (C!24937 (val!14578 Int)) )
))
(declare-datatypes ((List!45381 0))(
  ( (Nil!45257) (Cons!45257 (h!50677 C!24936) (t!343412 List!45381)) )
))
(declare-datatypes ((String!52250 0))(
  ( (String!52251 (value!233415 String)) )
))
(declare-datatypes ((IArray!27367 0))(
  ( (IArray!27368 (innerList!13741 List!45381)) )
))
(declare-datatypes ((Conc!13681 0))(
  ( (Node!13681 (left!33838 Conc!13681) (right!34168 Conc!13681) (csize!27592 Int) (cheight!13892 Int)) (Leaf!21131 (xs!16987 IArray!27367) (csize!27593 Int)) (Empty!13681) )
))
(declare-datatypes ((Regex!12375 0))(
  ( (ElementMatch!12375 (c!711372 C!24936)) (Concat!20076 (regOne!25262 Regex!12375) (regTwo!25262 Regex!12375)) (EmptyExpr!12375) (Star!12375 (reg!12704 Regex!12375)) (EmptyLang!12375) (Union!12375 (regOne!25263 Regex!12375) (regTwo!25263 Regex!12375)) )
))
(declare-datatypes ((BalanceConc!26956 0))(
  ( (BalanceConc!26957 (c!711373 Conc!13681)) )
))
(declare-datatypes ((TokenValueInjection!14828 0))(
  ( (TokenValueInjection!14829 (toValue!10134 Int) (toChars!9993 Int)) )
))
(declare-datatypes ((Rule!14740 0))(
  ( (Rule!14741 (regex!7470 Regex!12375) (tag!8334 String!52250) (isSeparator!7470 Bool) (transformation!7470 TokenValueInjection!14828)) )
))
(declare-datatypes ((List!45382 0))(
  ( (Nil!45258) (Cons!45258 (h!50678 Rule!14740) (t!343413 List!45382)) )
))
(declare-fun rules!4102 () List!45382)

(declare-fun r1!615 () Rule!14740)

(declare-fun contains!9174 (List!45382 Rule!14740) Bool)

(assert (=> b!4155543 (= res!1701881 (contains!9174 rules!4102 r1!615))))

(declare-fun b!4155544 () Bool)

(declare-fun res!1701877 () Bool)

(assert (=> b!4155544 (=> (not res!1701877) (not e!2578654))))

(declare-datatypes ((LexerInterface!7059 0))(
  ( (LexerInterfaceExt!7056 (__x!27618 Int)) (Lexer!7057) )
))
(declare-fun thiss!26968 () LexerInterface!7059)

(declare-datatypes ((List!45383 0))(
  ( (Nil!45259) (Cons!45259 (h!50679 String!52250) (t!343414 List!45383)) )
))
(declare-fun noDuplicateTag!3047 (LexerInterface!7059 List!45382 List!45383) Bool)

(declare-fun noDuplicateTag$default$2!52 (LexerInterface!7059) List!45383)

(assert (=> b!4155544 (= res!1701877 (noDuplicateTag!3047 thiss!26968 rules!4102 (noDuplicateTag$default$2!52 thiss!26968)))))

(declare-fun e!2578653 () Bool)

(assert (=> b!4155545 (= e!2578653 (and tp!1267527 tp!1267526))))

(declare-fun tp!1267534 () Bool)

(declare-fun b!4155546 () Bool)

(declare-fun e!2578647 () Bool)

(declare-fun inv!59820 (String!52250) Bool)

(declare-fun inv!59822 (TokenValueInjection!14828) Bool)

(assert (=> b!4155546 (= e!2578647 (and tp!1267534 (inv!59820 (tag!8334 r1!615)) (inv!59822 (transformation!7470 r1!615)) e!2578653))))

(declare-fun e!2578646 () Bool)

(declare-fun e!2578644 () Bool)

(declare-fun tp!1267525 () Bool)

(declare-fun b!4155547 () Bool)

(assert (=> b!4155547 (= e!2578646 (and tp!1267525 (inv!59820 (tag!8334 (h!50678 rules!4102))) (inv!59822 (transformation!7470 (h!50678 rules!4102))) e!2578644))))

(declare-fun res!1701880 () Bool)

(assert (=> start!395650 (=> (not res!1701880) (not e!2578654))))

(get-info :version)

(assert (=> start!395650 (= res!1701880 ((_ is Lexer!7057) thiss!26968))))

(assert (=> start!395650 e!2578654))

(assert (=> start!395650 true))

(declare-fun e!2578651 () Bool)

(assert (=> start!395650 e!2578651))

(assert (=> start!395650 e!2578647))

(declare-fun e!2578645 () Bool)

(assert (=> start!395650 e!2578645))

(declare-fun b!4155548 () Bool)

(declare-fun e!2578652 () Bool)

(assert (=> b!4155548 (= e!2578654 e!2578652)))

(declare-fun res!1701878 () Bool)

(assert (=> b!4155548 (=> (not res!1701878) (not e!2578652))))

(declare-fun lt!1481392 () List!45383)

(declare-fun contains!9175 (List!45383 String!52250) Bool)

(assert (=> b!4155548 (= res!1701878 (contains!9175 lt!1481392 (tag!8334 r1!615)))))

(assert (=> b!4155548 (= lt!1481392 (Cons!45259 (tag!8334 r1!615) Nil!45259))))

(declare-fun b!4155549 () Bool)

(declare-fun res!1701875 () Bool)

(assert (=> b!4155549 (=> (not res!1701875) (not e!2578654))))

(declare-fun r2!597 () Rule!14740)

(assert (=> b!4155549 (= res!1701875 (contains!9174 rules!4102 r2!597))))

(declare-fun b!4155550 () Bool)

(declare-fun res!1701876 () Bool)

(assert (=> b!4155550 (=> (not res!1701876) (not e!2578654))))

(declare-fun head!8792 (List!45382) Rule!14740)

(assert (=> b!4155550 (= res!1701876 (= (head!8792 rules!4102) r1!615))))

(declare-fun b!4155551 () Bool)

(declare-fun tail!6627 (List!45382) List!45382)

(assert (=> b!4155551 (= e!2578652 (not (noDuplicateTag!3047 thiss!26968 (tail!6627 rules!4102) lt!1481392)))))

(assert (=> b!4155552 (= e!2578644 (and tp!1267528 tp!1267532))))

(declare-fun e!2578643 () Bool)

(assert (=> b!4155553 (= e!2578643 (and tp!1267533 tp!1267531))))

(declare-fun tp!1267529 () Bool)

(declare-fun b!4155554 () Bool)

(assert (=> b!4155554 (= e!2578645 (and tp!1267529 (inv!59820 (tag!8334 r2!597)) (inv!59822 (transformation!7470 r2!597)) e!2578643))))

(declare-fun b!4155555 () Bool)

(declare-fun tp!1267530 () Bool)

(assert (=> b!4155555 (= e!2578651 (and e!2578646 tp!1267530))))

(declare-fun b!4155556 () Bool)

(declare-fun res!1701879 () Bool)

(assert (=> b!4155556 (=> (not res!1701879) (not e!2578654))))

(declare-fun getIndex!812 (List!45382 Rule!14740) Int)

(assert (=> b!4155556 (= res!1701879 (< (getIndex!812 rules!4102 r1!615) (getIndex!812 rules!4102 r2!597)))))

(assert (= (and start!395650 res!1701880) b!4155543))

(assert (= (and b!4155543 res!1701881) b!4155549))

(assert (= (and b!4155549 res!1701875) b!4155544))

(assert (= (and b!4155544 res!1701877) b!4155556))

(assert (= (and b!4155556 res!1701879) b!4155550))

(assert (= (and b!4155550 res!1701876) b!4155548))

(assert (= (and b!4155548 res!1701878) b!4155551))

(assert (= b!4155547 b!4155552))

(assert (= b!4155555 b!4155547))

(assert (= (and start!395650 ((_ is Cons!45258) rules!4102)) b!4155555))

(assert (= b!4155546 b!4155545))

(assert (= start!395650 b!4155546))

(assert (= b!4155554 b!4155553))

(assert (= start!395650 b!4155554))

(declare-fun m!4749985 () Bool)

(assert (=> b!4155556 m!4749985))

(declare-fun m!4749987 () Bool)

(assert (=> b!4155556 m!4749987))

(declare-fun m!4749989 () Bool)

(assert (=> b!4155554 m!4749989))

(declare-fun m!4749991 () Bool)

(assert (=> b!4155554 m!4749991))

(declare-fun m!4749993 () Bool)

(assert (=> b!4155549 m!4749993))

(declare-fun m!4749995 () Bool)

(assert (=> b!4155544 m!4749995))

(assert (=> b!4155544 m!4749995))

(declare-fun m!4749997 () Bool)

(assert (=> b!4155544 m!4749997))

(declare-fun m!4749999 () Bool)

(assert (=> b!4155547 m!4749999))

(declare-fun m!4750001 () Bool)

(assert (=> b!4155547 m!4750001))

(declare-fun m!4750003 () Bool)

(assert (=> b!4155551 m!4750003))

(assert (=> b!4155551 m!4750003))

(declare-fun m!4750005 () Bool)

(assert (=> b!4155551 m!4750005))

(declare-fun m!4750007 () Bool)

(assert (=> b!4155550 m!4750007))

(declare-fun m!4750009 () Bool)

(assert (=> b!4155543 m!4750009))

(declare-fun m!4750011 () Bool)

(assert (=> b!4155548 m!4750011))

(declare-fun m!4750013 () Bool)

(assert (=> b!4155546 m!4750013))

(declare-fun m!4750015 () Bool)

(assert (=> b!4155546 m!4750015))

(check-sat (not b_next!119959) (not b!4155550) (not b_next!119961) b_and!323613 (not b!4155548) (not b!4155556) b_and!323615 (not b!4155546) (not b_next!119965) (not b!4155554) (not b!4155547) b_and!323623 (not b!4155543) b_and!323617 b_and!323621 (not b!4155549) (not b_next!119957) (not b_next!119955) (not b!4155551) (not b!4155544) (not b_next!119963) (not b!4155555) b_and!323619)
(check-sat (not b_next!119959) (not b_next!119957) (not b_next!119961) b_and!323613 b_and!323615 (not b_next!119965) (not b_next!119955) b_and!323623 (not b_next!119963) b_and!323619 b_and!323617 b_and!323621)
(get-model)

(declare-fun d!1228826 () Bool)

(declare-fun res!1701898 () Bool)

(declare-fun e!2578663 () Bool)

(assert (=> d!1228826 (=> res!1701898 e!2578663)))

(assert (=> d!1228826 (= res!1701898 ((_ is Nil!45258) rules!4102))))

(assert (=> d!1228826 (= (noDuplicateTag!3047 thiss!26968 rules!4102 (noDuplicateTag$default$2!52 thiss!26968)) e!2578663)))

(declare-fun b!4155565 () Bool)

(declare-fun e!2578664 () Bool)

(assert (=> b!4155565 (= e!2578663 e!2578664)))

(declare-fun res!1701899 () Bool)

(assert (=> b!4155565 (=> (not res!1701899) (not e!2578664))))

(assert (=> b!4155565 (= res!1701899 (not (contains!9175 (noDuplicateTag$default$2!52 thiss!26968) (tag!8334 (h!50678 rules!4102)))))))

(declare-fun b!4155566 () Bool)

(assert (=> b!4155566 (= e!2578664 (noDuplicateTag!3047 thiss!26968 (t!343413 rules!4102) (Cons!45259 (tag!8334 (h!50678 rules!4102)) (noDuplicateTag$default$2!52 thiss!26968))))))

(assert (= (and d!1228826 (not res!1701898)) b!4155565))

(assert (= (and b!4155565 res!1701899) b!4155566))

(assert (=> b!4155565 m!4749995))

(declare-fun m!4750017 () Bool)

(assert (=> b!4155565 m!4750017))

(declare-fun m!4750019 () Bool)

(assert (=> b!4155566 m!4750019))

(assert (=> b!4155544 d!1228826))

(declare-fun d!1228830 () Bool)

(assert (=> d!1228830 (= (noDuplicateTag$default$2!52 thiss!26968) Nil!45259)))

(assert (=> b!4155544 d!1228830))

(declare-fun d!1228832 () Bool)

(declare-fun lt!1481395 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6999 (List!45382) (InoxSet Rule!14740))

(assert (=> d!1228832 (= lt!1481395 (select (content!6999 rules!4102) r2!597))))

(declare-fun e!2578671 () Bool)

(assert (=> d!1228832 (= lt!1481395 e!2578671)))

(declare-fun res!1701907 () Bool)

(assert (=> d!1228832 (=> (not res!1701907) (not e!2578671))))

(assert (=> d!1228832 (= res!1701907 ((_ is Cons!45258) rules!4102))))

(assert (=> d!1228832 (= (contains!9174 rules!4102 r2!597) lt!1481395)))

(declare-fun b!4155573 () Bool)

(declare-fun e!2578672 () Bool)

(assert (=> b!4155573 (= e!2578671 e!2578672)))

(declare-fun res!1701906 () Bool)

(assert (=> b!4155573 (=> res!1701906 e!2578672)))

(assert (=> b!4155573 (= res!1701906 (= (h!50678 rules!4102) r2!597))))

(declare-fun b!4155574 () Bool)

(assert (=> b!4155574 (= e!2578672 (contains!9174 (t!343413 rules!4102) r2!597))))

(assert (= (and d!1228832 res!1701907) b!4155573))

(assert (= (and b!4155573 (not res!1701906)) b!4155574))

(declare-fun m!4750025 () Bool)

(assert (=> d!1228832 m!4750025))

(declare-fun m!4750027 () Bool)

(assert (=> d!1228832 m!4750027))

(declare-fun m!4750029 () Bool)

(assert (=> b!4155574 m!4750029))

(assert (=> b!4155549 d!1228832))

(declare-fun d!1228838 () Bool)

(assert (=> d!1228838 (= (inv!59820 (tag!8334 r2!597)) (= (mod (str.len (value!233415 (tag!8334 r2!597))) 2) 0))))

(assert (=> b!4155554 d!1228838))

(declare-fun d!1228840 () Bool)

(declare-fun res!1701910 () Bool)

(declare-fun e!2578684 () Bool)

(assert (=> d!1228840 (=> (not res!1701910) (not e!2578684))))

(declare-fun semiInverseModEq!3236 (Int Int) Bool)

(assert (=> d!1228840 (= res!1701910 (semiInverseModEq!3236 (toChars!9993 (transformation!7470 r2!597)) (toValue!10134 (transformation!7470 r2!597))))))

(assert (=> d!1228840 (= (inv!59822 (transformation!7470 r2!597)) e!2578684)))

(declare-fun b!4155593 () Bool)

(declare-fun equivClasses!3135 (Int Int) Bool)

(assert (=> b!4155593 (= e!2578684 (equivClasses!3135 (toChars!9993 (transformation!7470 r2!597)) (toValue!10134 (transformation!7470 r2!597))))))

(assert (= (and d!1228840 res!1701910) b!4155593))

(declare-fun m!4750035 () Bool)

(assert (=> d!1228840 m!4750035))

(declare-fun m!4750037 () Bool)

(assert (=> b!4155593 m!4750037))

(assert (=> b!4155554 d!1228840))

(declare-fun d!1228848 () Bool)

(declare-fun lt!1481400 () Bool)

(assert (=> d!1228848 (= lt!1481400 (select (content!6999 rules!4102) r1!615))))

(declare-fun e!2578685 () Bool)

(assert (=> d!1228848 (= lt!1481400 e!2578685)))

(declare-fun res!1701912 () Bool)

(assert (=> d!1228848 (=> (not res!1701912) (not e!2578685))))

(assert (=> d!1228848 (= res!1701912 ((_ is Cons!45258) rules!4102))))

(assert (=> d!1228848 (= (contains!9174 rules!4102 r1!615) lt!1481400)))

(declare-fun b!4155594 () Bool)

(declare-fun e!2578686 () Bool)

(assert (=> b!4155594 (= e!2578685 e!2578686)))

(declare-fun res!1701911 () Bool)

(assert (=> b!4155594 (=> res!1701911 e!2578686)))

(assert (=> b!4155594 (= res!1701911 (= (h!50678 rules!4102) r1!615))))

(declare-fun b!4155595 () Bool)

(assert (=> b!4155595 (= e!2578686 (contains!9174 (t!343413 rules!4102) r1!615))))

(assert (= (and d!1228848 res!1701912) b!4155594))

(assert (= (and b!4155594 (not res!1701911)) b!4155595))

(assert (=> d!1228848 m!4750025))

(declare-fun m!4750039 () Bool)

(assert (=> d!1228848 m!4750039))

(declare-fun m!4750041 () Bool)

(assert (=> b!4155595 m!4750041))

(assert (=> b!4155543 d!1228848))

(declare-fun b!4155615 () Bool)

(declare-fun e!2578700 () Int)

(assert (=> b!4155615 (= e!2578700 (- 1))))

(declare-fun b!4155614 () Bool)

(assert (=> b!4155614 (= e!2578700 (+ 1 (getIndex!812 (t!343413 rules!4102) r1!615)))))

(declare-fun d!1228850 () Bool)

(declare-fun lt!1481405 () Int)

(assert (=> d!1228850 (>= lt!1481405 0)))

(declare-fun e!2578701 () Int)

(assert (=> d!1228850 (= lt!1481405 e!2578701)))

(declare-fun c!711386 () Bool)

(assert (=> d!1228850 (= c!711386 (and ((_ is Cons!45258) rules!4102) (= (h!50678 rules!4102) r1!615)))))

(assert (=> d!1228850 (contains!9174 rules!4102 r1!615)))

(assert (=> d!1228850 (= (getIndex!812 rules!4102 r1!615) lt!1481405)))

(declare-fun b!4155612 () Bool)

(assert (=> b!4155612 (= e!2578701 0)))

(declare-fun b!4155613 () Bool)

(assert (=> b!4155613 (= e!2578701 e!2578700)))

(declare-fun c!711387 () Bool)

(assert (=> b!4155613 (= c!711387 (and ((_ is Cons!45258) rules!4102) (not (= (h!50678 rules!4102) r1!615))))))

(assert (= (and d!1228850 c!711386) b!4155612))

(assert (= (and d!1228850 (not c!711386)) b!4155613))

(assert (= (and b!4155613 c!711387) b!4155614))

(assert (= (and b!4155613 (not c!711387)) b!4155615))

(declare-fun m!4750053 () Bool)

(assert (=> b!4155614 m!4750053))

(assert (=> d!1228850 m!4750009))

(assert (=> b!4155556 d!1228850))

(declare-fun b!4155621 () Bool)

(declare-fun e!2578704 () Int)

(assert (=> b!4155621 (= e!2578704 (- 1))))

(declare-fun b!4155620 () Bool)

(assert (=> b!4155620 (= e!2578704 (+ 1 (getIndex!812 (t!343413 rules!4102) r2!597)))))

(declare-fun d!1228860 () Bool)

(declare-fun lt!1481407 () Int)

(assert (=> d!1228860 (>= lt!1481407 0)))

(declare-fun e!2578705 () Int)

(assert (=> d!1228860 (= lt!1481407 e!2578705)))

(declare-fun c!711388 () Bool)

(assert (=> d!1228860 (= c!711388 (and ((_ is Cons!45258) rules!4102) (= (h!50678 rules!4102) r2!597)))))

(assert (=> d!1228860 (contains!9174 rules!4102 r2!597)))

(assert (=> d!1228860 (= (getIndex!812 rules!4102 r2!597) lt!1481407)))

(declare-fun b!4155618 () Bool)

(assert (=> b!4155618 (= e!2578705 0)))

(declare-fun b!4155619 () Bool)

(assert (=> b!4155619 (= e!2578705 e!2578704)))

(declare-fun c!711389 () Bool)

(assert (=> b!4155619 (= c!711389 (and ((_ is Cons!45258) rules!4102) (not (= (h!50678 rules!4102) r2!597))))))

(assert (= (and d!1228860 c!711388) b!4155618))

(assert (= (and d!1228860 (not c!711388)) b!4155619))

(assert (= (and b!4155619 c!711389) b!4155620))

(assert (= (and b!4155619 (not c!711389)) b!4155621))

(declare-fun m!4750059 () Bool)

(assert (=> b!4155620 m!4750059))

(assert (=> d!1228860 m!4749993))

(assert (=> b!4155556 d!1228860))

(declare-fun d!1228864 () Bool)

(assert (=> d!1228864 (= (head!8792 rules!4102) (h!50678 rules!4102))))

(assert (=> b!4155550 d!1228864))

(declare-fun d!1228866 () Bool)

(assert (=> d!1228866 (= (inv!59820 (tag!8334 r1!615)) (= (mod (str.len (value!233415 (tag!8334 r1!615))) 2) 0))))

(assert (=> b!4155546 d!1228866))

(declare-fun d!1228868 () Bool)

(declare-fun res!1701923 () Bool)

(declare-fun e!2578706 () Bool)

(assert (=> d!1228868 (=> (not res!1701923) (not e!2578706))))

(assert (=> d!1228868 (= res!1701923 (semiInverseModEq!3236 (toChars!9993 (transformation!7470 r1!615)) (toValue!10134 (transformation!7470 r1!615))))))

(assert (=> d!1228868 (= (inv!59822 (transformation!7470 r1!615)) e!2578706)))

(declare-fun b!4155622 () Bool)

(assert (=> b!4155622 (= e!2578706 (equivClasses!3135 (toChars!9993 (transformation!7470 r1!615)) (toValue!10134 (transformation!7470 r1!615))))))

(assert (= (and d!1228868 res!1701923) b!4155622))

(declare-fun m!4750061 () Bool)

(assert (=> d!1228868 m!4750061))

(declare-fun m!4750063 () Bool)

(assert (=> b!4155622 m!4750063))

(assert (=> b!4155546 d!1228868))

(declare-fun d!1228870 () Bool)

(declare-fun res!1701926 () Bool)

(declare-fun e!2578709 () Bool)

(assert (=> d!1228870 (=> res!1701926 e!2578709)))

(assert (=> d!1228870 (= res!1701926 ((_ is Nil!45258) (tail!6627 rules!4102)))))

(assert (=> d!1228870 (= (noDuplicateTag!3047 thiss!26968 (tail!6627 rules!4102) lt!1481392) e!2578709)))

(declare-fun b!4155625 () Bool)

(declare-fun e!2578712 () Bool)

(assert (=> b!4155625 (= e!2578709 e!2578712)))

(declare-fun res!1701928 () Bool)

(assert (=> b!4155625 (=> (not res!1701928) (not e!2578712))))

(assert (=> b!4155625 (= res!1701928 (not (contains!9175 lt!1481392 (tag!8334 (h!50678 (tail!6627 rules!4102))))))))

(declare-fun b!4155626 () Bool)

(assert (=> b!4155626 (= e!2578712 (noDuplicateTag!3047 thiss!26968 (t!343413 (tail!6627 rules!4102)) (Cons!45259 (tag!8334 (h!50678 (tail!6627 rules!4102))) lt!1481392)))))

(assert (= (and d!1228870 (not res!1701926)) b!4155625))

(assert (= (and b!4155625 res!1701928) b!4155626))

(declare-fun m!4750065 () Bool)

(assert (=> b!4155625 m!4750065))

(declare-fun m!4750067 () Bool)

(assert (=> b!4155626 m!4750067))

(assert (=> b!4155551 d!1228870))

(declare-fun d!1228872 () Bool)

(assert (=> d!1228872 (= (tail!6627 rules!4102) (t!343413 rules!4102))))

(assert (=> b!4155551 d!1228872))

(declare-fun d!1228874 () Bool)

(declare-fun lt!1481414 () Bool)

(declare-fun content!7002 (List!45383) (InoxSet String!52250))

(assert (=> d!1228874 (= lt!1481414 (select (content!7002 lt!1481392) (tag!8334 r1!615)))))

(declare-fun e!2578727 () Bool)

(assert (=> d!1228874 (= lt!1481414 e!2578727)))

(declare-fun res!1701942 () Bool)

(assert (=> d!1228874 (=> (not res!1701942) (not e!2578727))))

(assert (=> d!1228874 (= res!1701942 ((_ is Cons!45259) lt!1481392))))

(assert (=> d!1228874 (= (contains!9175 lt!1481392 (tag!8334 r1!615)) lt!1481414)))

(declare-fun b!4155650 () Bool)

(declare-fun e!2578726 () Bool)

(assert (=> b!4155650 (= e!2578727 e!2578726)))

(declare-fun res!1701941 () Bool)

(assert (=> b!4155650 (=> res!1701941 e!2578726)))

(assert (=> b!4155650 (= res!1701941 (= (h!50679 lt!1481392) (tag!8334 r1!615)))))

(declare-fun b!4155651 () Bool)

(assert (=> b!4155651 (= e!2578726 (contains!9175 (t!343414 lt!1481392) (tag!8334 r1!615)))))

(assert (= (and d!1228874 res!1701942) b!4155650))

(assert (= (and b!4155650 (not res!1701941)) b!4155651))

(declare-fun m!4750087 () Bool)

(assert (=> d!1228874 m!4750087))

(declare-fun m!4750089 () Bool)

(assert (=> d!1228874 m!4750089))

(declare-fun m!4750091 () Bool)

(assert (=> b!4155651 m!4750091))

(assert (=> b!4155548 d!1228874))

(declare-fun d!1228886 () Bool)

(assert (=> d!1228886 (= (inv!59820 (tag!8334 (h!50678 rules!4102))) (= (mod (str.len (value!233415 (tag!8334 (h!50678 rules!4102)))) 2) 0))))

(assert (=> b!4155547 d!1228886))

(declare-fun d!1228888 () Bool)

(declare-fun res!1701943 () Bool)

(declare-fun e!2578730 () Bool)

(assert (=> d!1228888 (=> (not res!1701943) (not e!2578730))))

(assert (=> d!1228888 (= res!1701943 (semiInverseModEq!3236 (toChars!9993 (transformation!7470 (h!50678 rules!4102))) (toValue!10134 (transformation!7470 (h!50678 rules!4102)))))))

(assert (=> d!1228888 (= (inv!59822 (transformation!7470 (h!50678 rules!4102))) e!2578730)))

(declare-fun b!4155660 () Bool)

(assert (=> b!4155660 (= e!2578730 (equivClasses!3135 (toChars!9993 (transformation!7470 (h!50678 rules!4102))) (toValue!10134 (transformation!7470 (h!50678 rules!4102)))))))

(assert (= (and d!1228888 res!1701943) b!4155660))

(declare-fun m!4750093 () Bool)

(assert (=> d!1228888 m!4750093))

(declare-fun m!4750095 () Bool)

(assert (=> b!4155660 m!4750095))

(assert (=> b!4155547 d!1228888))

(declare-fun b!4155684 () Bool)

(declare-fun e!2578742 () Bool)

(declare-fun tp!1267578 () Bool)

(declare-fun tp!1267582 () Bool)

(assert (=> b!4155684 (= e!2578742 (and tp!1267578 tp!1267582))))

(assert (=> b!4155554 (= tp!1267529 e!2578742)))

(declare-fun b!4155686 () Bool)

(declare-fun tp!1267579 () Bool)

(declare-fun tp!1267580 () Bool)

(assert (=> b!4155686 (= e!2578742 (and tp!1267579 tp!1267580))))

(declare-fun b!4155685 () Bool)

(declare-fun tp!1267581 () Bool)

(assert (=> b!4155685 (= e!2578742 tp!1267581)))

(declare-fun b!4155683 () Bool)

(declare-fun tp_is_empty!21641 () Bool)

(assert (=> b!4155683 (= e!2578742 tp_is_empty!21641)))

(assert (= (and b!4155554 ((_ is ElementMatch!12375) (regex!7470 r2!597))) b!4155683))

(assert (= (and b!4155554 ((_ is Concat!20076) (regex!7470 r2!597))) b!4155684))

(assert (= (and b!4155554 ((_ is Star!12375) (regex!7470 r2!597))) b!4155685))

(assert (= (and b!4155554 ((_ is Union!12375) (regex!7470 r2!597))) b!4155686))

(declare-fun b!4155700 () Bool)

(declare-fun b_free!119267 () Bool)

(declare-fun b_next!119971 () Bool)

(assert (=> b!4155700 (= b_free!119267 (not b_next!119971))))

(declare-fun tp!1267598 () Bool)

(declare-fun b_and!323629 () Bool)

(assert (=> b!4155700 (= tp!1267598 b_and!323629)))

(declare-fun b_free!119269 () Bool)

(declare-fun b_next!119973 () Bool)

(assert (=> b!4155700 (= b_free!119269 (not b_next!119973))))

(declare-fun tp!1267596 () Bool)

(declare-fun b_and!323631 () Bool)

(assert (=> b!4155700 (= tp!1267596 b_and!323631)))

(declare-fun e!2578758 () Bool)

(assert (=> b!4155700 (= e!2578758 (and tp!1267598 tp!1267596))))

(declare-fun e!2578756 () Bool)

(declare-fun tp!1267597 () Bool)

(declare-fun b!4155699 () Bool)

(assert (=> b!4155699 (= e!2578756 (and tp!1267597 (inv!59820 (tag!8334 (h!50678 (t!343413 rules!4102)))) (inv!59822 (transformation!7470 (h!50678 (t!343413 rules!4102)))) e!2578758))))

(declare-fun b!4155698 () Bool)

(declare-fun e!2578757 () Bool)

(declare-fun tp!1267595 () Bool)

(assert (=> b!4155698 (= e!2578757 (and e!2578756 tp!1267595))))

(assert (=> b!4155555 (= tp!1267530 e!2578757)))

(assert (= b!4155699 b!4155700))

(assert (= b!4155698 b!4155699))

(assert (= (and b!4155555 ((_ is Cons!45258) (t!343413 rules!4102))) b!4155698))

(declare-fun m!4750101 () Bool)

(assert (=> b!4155699 m!4750101))

(declare-fun m!4750103 () Bool)

(assert (=> b!4155699 m!4750103))

(declare-fun b!4155702 () Bool)

(declare-fun e!2578759 () Bool)

(declare-fun tp!1267599 () Bool)

(declare-fun tp!1267603 () Bool)

(assert (=> b!4155702 (= e!2578759 (and tp!1267599 tp!1267603))))

(assert (=> b!4155546 (= tp!1267534 e!2578759)))

(declare-fun b!4155704 () Bool)

(declare-fun tp!1267600 () Bool)

(declare-fun tp!1267601 () Bool)

(assert (=> b!4155704 (= e!2578759 (and tp!1267600 tp!1267601))))

(declare-fun b!4155703 () Bool)

(declare-fun tp!1267602 () Bool)

(assert (=> b!4155703 (= e!2578759 tp!1267602)))

(declare-fun b!4155701 () Bool)

(assert (=> b!4155701 (= e!2578759 tp_is_empty!21641)))

(assert (= (and b!4155546 ((_ is ElementMatch!12375) (regex!7470 r1!615))) b!4155701))

(assert (= (and b!4155546 ((_ is Concat!20076) (regex!7470 r1!615))) b!4155702))

(assert (= (and b!4155546 ((_ is Star!12375) (regex!7470 r1!615))) b!4155703))

(assert (= (and b!4155546 ((_ is Union!12375) (regex!7470 r1!615))) b!4155704))

(declare-fun b!4155706 () Bool)

(declare-fun e!2578760 () Bool)

(declare-fun tp!1267604 () Bool)

(declare-fun tp!1267608 () Bool)

(assert (=> b!4155706 (= e!2578760 (and tp!1267604 tp!1267608))))

(assert (=> b!4155547 (= tp!1267525 e!2578760)))

(declare-fun b!4155708 () Bool)

(declare-fun tp!1267605 () Bool)

(declare-fun tp!1267606 () Bool)

(assert (=> b!4155708 (= e!2578760 (and tp!1267605 tp!1267606))))

(declare-fun b!4155707 () Bool)

(declare-fun tp!1267607 () Bool)

(assert (=> b!4155707 (= e!2578760 tp!1267607)))

(declare-fun b!4155705 () Bool)

(assert (=> b!4155705 (= e!2578760 tp_is_empty!21641)))

(assert (= (and b!4155547 ((_ is ElementMatch!12375) (regex!7470 (h!50678 rules!4102)))) b!4155705))

(assert (= (and b!4155547 ((_ is Concat!20076) (regex!7470 (h!50678 rules!4102)))) b!4155706))

(assert (= (and b!4155547 ((_ is Star!12375) (regex!7470 (h!50678 rules!4102)))) b!4155707))

(assert (= (and b!4155547 ((_ is Union!12375) (regex!7470 (h!50678 rules!4102)))) b!4155708))

(check-sat (not b_next!119971) (not b_next!119957) b_and!323631 (not b!4155685) (not b!4155660) b_and!323629 (not b!4155708) (not d!1228860) (not d!1228868) (not b_next!119963) (not b!4155566) b_and!323617 (not b!4155702) b_and!323621 tp_is_empty!21641 (not b_next!119959) (not b!4155620) (not b!4155703) (not b!4155698) (not d!1228850) (not b_next!119961) (not b!4155626) (not b!4155686) (not b!4155699) b_and!323613 (not b!4155706) b_and!323615 (not b!4155614) (not b!4155625) (not d!1228848) (not b_next!119965) (not b!4155684) (not b!4155704) (not d!1228888) (not b!4155565) (not b_next!119955) (not b_next!119973) (not b!4155593) (not b!4155574) b_and!323623 (not d!1228840) (not b!4155622) (not b!4155651) b_and!323619 (not d!1228874) (not b!4155595) (not d!1228832) (not b!4155707))
(check-sat (not b_next!119959) (not b_next!119971) (not b_next!119957) b_and!323631 (not b_next!119961) b_and!323613 b_and!323629 b_and!323615 (not b_next!119965) b_and!323623 (not b_next!119963) b_and!323619 b_and!323617 b_and!323621 (not b_next!119955) (not b_next!119973))
