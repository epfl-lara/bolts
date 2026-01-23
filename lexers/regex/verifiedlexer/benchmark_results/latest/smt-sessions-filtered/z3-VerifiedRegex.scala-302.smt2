; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8126 () Bool)

(assert start!8126)

(declare-fun b!89895 () Bool)

(declare-fun b_free!2785 () Bool)

(declare-fun b_next!2785 () Bool)

(assert (=> b!89895 (= b_free!2785 (not b_next!2785))))

(declare-fun tp!53576 () Bool)

(declare-fun b_and!4087 () Bool)

(assert (=> b!89895 (= tp!53576 b_and!4087)))

(declare-fun b_free!2787 () Bool)

(declare-fun b_next!2787 () Bool)

(assert (=> b!89895 (= b_free!2787 (not b_next!2787))))

(declare-fun tp!53575 () Bool)

(declare-fun b_and!4089 () Bool)

(assert (=> b!89895 (= tp!53575 b_and!4089)))

(declare-fun b!89892 () Bool)

(declare-fun e!50120 () Bool)

(declare-fun e!50123 () Bool)

(declare-fun tp!53573 () Bool)

(assert (=> b!89892 (= e!50120 (and e!50123 tp!53573))))

(declare-fun e!50122 () Bool)

(declare-fun b!89893 () Bool)

(declare-datatypes ((C!1728 0))(
  ( (C!1729 (val!471 Int)) )
))
(declare-datatypes ((List!1537 0))(
  ( (Nil!1531) (Cons!1531 (h!6928 C!1728) (t!20788 List!1537)) )
))
(declare-datatypes ((IArray!943 0))(
  ( (IArray!944 (innerList!529 List!1537)) )
))
(declare-datatypes ((Conc!471 0))(
  ( (Node!471 (left!1163 Conc!471) (right!1493 Conc!471) (csize!1172 Int) (cheight!682 Int)) (Leaf!774 (xs!3054 IArray!943) (csize!1173 Int)) (Empty!471) )
))
(declare-datatypes ((BalanceConc!946 0))(
  ( (BalanceConc!947 (c!22339 Conc!471)) )
))
(declare-datatypes ((Regex!403 0))(
  ( (ElementMatch!403 (c!22340 C!1728)) (Concat!728 (regOne!1318 Regex!403) (regTwo!1318 Regex!403)) (EmptyExpr!403) (Star!403 (reg!732 Regex!403)) (EmptyLang!403) (Union!403 (regOne!1319 Regex!403) (regTwo!1319 Regex!403)) )
))
(declare-datatypes ((String!2016 0))(
  ( (String!2017 (value!12416 String)) )
))
(declare-datatypes ((List!1538 0))(
  ( (Nil!1532) (Cons!1532 (h!6929 (_ BitVec 16)) (t!20789 List!1538)) )
))
(declare-datatypes ((TokenValue!325 0))(
  ( (FloatLiteralValue!650 (text!2720 List!1538)) (TokenValueExt!324 (__x!1745 Int)) (Broken!1625 (value!12417 List!1538)) (Object!330) (End!325) (Def!325) (Underscore!325) (Match!325) (Else!325) (Error!325) (Case!325) (If!325) (Extends!325) (Abstract!325) (Class!325) (Val!325) (DelimiterValue!650 (del!385 List!1538)) (KeywordValue!331 (value!12418 List!1538)) (CommentValue!650 (value!12419 List!1538)) (WhitespaceValue!650 (value!12420 List!1538)) (IndentationValue!325 (value!12421 List!1538)) (String!2018) (Int32!325) (Broken!1626 (value!12422 List!1538)) (Boolean!326) (Unit!981) (OperatorValue!328 (op!385 List!1538)) (IdentifierValue!650 (value!12423 List!1538)) (IdentifierValue!651 (value!12424 List!1538)) (WhitespaceValue!651 (value!12425 List!1538)) (True!650) (False!650) (Broken!1627 (value!12426 List!1538)) (Broken!1628 (value!12427 List!1538)) (True!651) (RightBrace!325) (RightBracket!325) (Colon!325) (Null!325) (Comma!325) (LeftBracket!325) (False!651) (LeftBrace!325) (ImaginaryLiteralValue!325 (text!2721 List!1538)) (StringLiteralValue!975 (value!12428 List!1538)) (EOFValue!325 (value!12429 List!1538)) (IdentValue!325 (value!12430 List!1538)) (DelimiterValue!651 (value!12431 List!1538)) (DedentValue!325 (value!12432 List!1538)) (NewLineValue!325 (value!12433 List!1538)) (IntegerValue!975 (value!12434 (_ BitVec 32)) (text!2722 List!1538)) (IntegerValue!976 (value!12435 Int) (text!2723 List!1538)) (Times!325) (Or!325) (Equal!325) (Minus!325) (Broken!1629 (value!12436 List!1538)) (And!325) (Div!325) (LessEqual!325) (Mod!325) (Concat!729) (Not!325) (Plus!325) (SpaceValue!325 (value!12437 List!1538)) (IntegerValue!977 (value!12438 Int) (text!2724 List!1538)) (StringLiteralValue!976 (text!2725 List!1538)) (FloatLiteralValue!651 (text!2726 List!1538)) (BytesLiteralValue!325 (value!12439 List!1538)) (CommentValue!651 (value!12440 List!1538)) (StringLiteralValue!977 (value!12441 List!1538)) (ErrorTokenValue!325 (msg!386 List!1538)) )
))
(declare-datatypes ((TokenValueInjection!474 0))(
  ( (TokenValueInjection!475 (toValue!870 Int) (toChars!729 Int)) )
))
(declare-datatypes ((Rule!470 0))(
  ( (Rule!471 (regex!335 Regex!403) (tag!513 String!2016) (isSeparator!335 Bool) (transformation!335 TokenValueInjection!474)) )
))
(declare-datatypes ((List!1539 0))(
  ( (Nil!1533) (Cons!1533 (h!6930 Rule!470) (t!20790 List!1539)) )
))
(declare-fun rules!2471 () List!1539)

(declare-fun tp!53572 () Bool)

(declare-fun inv!1881 (String!2016) Bool)

(declare-fun inv!1883 (TokenValueInjection!474) Bool)

(assert (=> b!89893 (= e!50123 (and tp!53572 (inv!1881 (tag!513 (h!6930 rules!2471))) (inv!1883 (transformation!335 (h!6930 rules!2471))) e!50122))))

(declare-fun b!89894 () Bool)

(declare-fun e!50121 () Bool)

(declare-fun tp_is_empty!729 () Bool)

(declare-fun tp!53574 () Bool)

(assert (=> b!89894 (= e!50121 (and tp_is_empty!729 tp!53574))))

(assert (=> b!89895 (= e!50122 (and tp!53576 tp!53575))))

(declare-fun res!45107 () Bool)

(declare-fun e!50119 () Bool)

(assert (=> start!8126 (=> (not res!45107) (not e!50119))))

(declare-datatypes ((LexerInterface!227 0))(
  ( (LexerInterfaceExt!224 (__x!1746 Int)) (Lexer!225) )
))
(declare-fun thiss!19403 () LexerInterface!227)

(get-info :version)

(assert (=> start!8126 (= res!45107 ((_ is Lexer!225) thiss!19403))))

(assert (=> start!8126 e!50119))

(assert (=> start!8126 true))

(assert (=> start!8126 e!50120))

(assert (=> start!8126 e!50121))

(declare-fun b!89896 () Bool)

(declare-fun res!45106 () Bool)

(assert (=> b!89896 (=> (not res!45106) (not e!50119))))

(declare-fun isEmpty!597 (List!1539) Bool)

(assert (=> b!89896 (= res!45106 (not (isEmpty!597 rules!2471)))))

(declare-fun b!89897 () Bool)

(declare-fun input!2238 () List!1537)

(declare-fun size!1329 (List!1537) Int)

(assert (=> b!89897 (= e!50119 (< (size!1329 input!2238) 0))))

(declare-fun b!89898 () Bool)

(declare-fun res!45105 () Bool)

(assert (=> b!89898 (=> (not res!45105) (not e!50119))))

(declare-fun rulesInvariant!221 (LexerInterface!227 List!1539) Bool)

(assert (=> b!89898 (= res!45105 (rulesInvariant!221 thiss!19403 rules!2471))))

(assert (= (and start!8126 res!45107) b!89896))

(assert (= (and b!89896 res!45106) b!89898))

(assert (= (and b!89898 res!45105) b!89897))

(assert (= b!89893 b!89895))

(assert (= b!89892 b!89893))

(assert (= (and start!8126 ((_ is Cons!1533) rules!2471)) b!89892))

(assert (= (and start!8126 ((_ is Cons!1531) input!2238)) b!89894))

(declare-fun m!70572 () Bool)

(assert (=> b!89893 m!70572))

(declare-fun m!70574 () Bool)

(assert (=> b!89893 m!70574))

(declare-fun m!70576 () Bool)

(assert (=> b!89896 m!70576))

(declare-fun m!70578 () Bool)

(assert (=> b!89897 m!70578))

(declare-fun m!70580 () Bool)

(assert (=> b!89898 m!70580))

(check-sat tp_is_empty!729 (not b_next!2785) (not b!89894) (not b!89898) (not b!89893) (not b!89896) (not b!89897) b_and!4089 b_and!4087 (not b!89892) (not b_next!2787))
(check-sat b_and!4089 b_and!4087 (not b_next!2787) (not b_next!2785))
(get-model)

(declare-fun d!19291 () Bool)

(assert (=> d!19291 (= (inv!1881 (tag!513 (h!6930 rules!2471))) (= (mod (str.len (value!12416 (tag!513 (h!6930 rules!2471)))) 2) 0))))

(assert (=> b!89893 d!19291))

(declare-fun d!19293 () Bool)

(declare-fun res!45110 () Bool)

(declare-fun e!50127 () Bool)

(assert (=> d!19293 (=> (not res!45110) (not e!50127))))

(declare-fun semiInverseModEq!70 (Int Int) Bool)

(assert (=> d!19293 (= res!45110 (semiInverseModEq!70 (toChars!729 (transformation!335 (h!6930 rules!2471))) (toValue!870 (transformation!335 (h!6930 rules!2471)))))))

(assert (=> d!19293 (= (inv!1883 (transformation!335 (h!6930 rules!2471))) e!50127)))

(declare-fun b!89901 () Bool)

(declare-fun equivClasses!66 (Int Int) Bool)

(assert (=> b!89901 (= e!50127 (equivClasses!66 (toChars!729 (transformation!335 (h!6930 rules!2471))) (toValue!870 (transformation!335 (h!6930 rules!2471)))))))

(assert (= (and d!19293 res!45110) b!89901))

(declare-fun m!70582 () Bool)

(assert (=> d!19293 m!70582))

(declare-fun m!70584 () Bool)

(assert (=> b!89901 m!70584))

(assert (=> b!89893 d!19293))

(declare-fun d!19295 () Bool)

(assert (=> d!19295 (= (isEmpty!597 rules!2471) ((_ is Nil!1533) rules!2471))))

(assert (=> b!89896 d!19295))

(declare-fun d!19299 () Bool)

(declare-fun res!45113 () Bool)

(declare-fun e!50133 () Bool)

(assert (=> d!19299 (=> (not res!45113) (not e!50133))))

(declare-fun rulesValid!78 (LexerInterface!227 List!1539) Bool)

(assert (=> d!19299 (= res!45113 (rulesValid!78 thiss!19403 rules!2471))))

(assert (=> d!19299 (= (rulesInvariant!221 thiss!19403 rules!2471) e!50133)))

(declare-fun b!89910 () Bool)

(declare-datatypes ((List!1540 0))(
  ( (Nil!1534) (Cons!1534 (h!6931 String!2016) (t!20791 List!1540)) )
))
(declare-fun noDuplicateTag!78 (LexerInterface!227 List!1539 List!1540) Bool)

(assert (=> b!89910 (= e!50133 (noDuplicateTag!78 thiss!19403 rules!2471 Nil!1534))))

(assert (= (and d!19299 res!45113) b!89910))

(declare-fun m!70588 () Bool)

(assert (=> d!19299 m!70588))

(declare-fun m!70590 () Bool)

(assert (=> b!89910 m!70590))

(assert (=> b!89898 d!19299))

(declare-fun d!19303 () Bool)

(declare-fun lt!22562 () Int)

(assert (=> d!19303 (>= lt!22562 0)))

(declare-fun e!50138 () Int)

(assert (=> d!19303 (= lt!22562 e!50138)))

(declare-fun c!22346 () Bool)

(assert (=> d!19303 (= c!22346 ((_ is Nil!1531) input!2238))))

(assert (=> d!19303 (= (size!1329 input!2238) lt!22562)))

(declare-fun b!89917 () Bool)

(assert (=> b!89917 (= e!50138 0)))

(declare-fun b!89918 () Bool)

(assert (=> b!89918 (= e!50138 (+ 1 (size!1329 (t!20788 input!2238))))))

(assert (= (and d!19303 c!22346) b!89917))

(assert (= (and d!19303 (not c!22346)) b!89918))

(declare-fun m!70592 () Bool)

(assert (=> b!89918 m!70592))

(assert (=> b!89897 d!19303))

(declare-fun b!89923 () Bool)

(declare-fun e!50141 () Bool)

(declare-fun tp!53579 () Bool)

(assert (=> b!89923 (= e!50141 (and tp_is_empty!729 tp!53579))))

(assert (=> b!89894 (= tp!53574 e!50141)))

(assert (= (and b!89894 ((_ is Cons!1531) (t!20788 input!2238))) b!89923))

(declare-fun b!89937 () Bool)

(declare-fun e!50145 () Bool)

(declare-fun tp!53592 () Bool)

(assert (=> b!89937 (= e!50145 tp!53592)))

(declare-fun b!89935 () Bool)

(assert (=> b!89935 (= e!50145 tp_is_empty!729)))

(declare-fun b!89938 () Bool)

(declare-fun tp!53593 () Bool)

(declare-fun tp!53594 () Bool)

(assert (=> b!89938 (= e!50145 (and tp!53593 tp!53594))))

(assert (=> b!89893 (= tp!53572 e!50145)))

(declare-fun b!89936 () Bool)

(declare-fun tp!53591 () Bool)

(declare-fun tp!53590 () Bool)

(assert (=> b!89936 (= e!50145 (and tp!53591 tp!53590))))

(assert (= (and b!89893 ((_ is ElementMatch!403) (regex!335 (h!6930 rules!2471)))) b!89935))

(assert (= (and b!89893 ((_ is Concat!728) (regex!335 (h!6930 rules!2471)))) b!89936))

(assert (= (and b!89893 ((_ is Star!403) (regex!335 (h!6930 rules!2471)))) b!89937))

(assert (= (and b!89893 ((_ is Union!403) (regex!335 (h!6930 rules!2471)))) b!89938))

(declare-fun b!89949 () Bool)

(declare-fun b_free!2789 () Bool)

(declare-fun b_next!2789 () Bool)

(assert (=> b!89949 (= b_free!2789 (not b_next!2789))))

(declare-fun tp!53605 () Bool)

(declare-fun b_and!4091 () Bool)

(assert (=> b!89949 (= tp!53605 b_and!4091)))

(declare-fun b_free!2791 () Bool)

(declare-fun b_next!2791 () Bool)

(assert (=> b!89949 (= b_free!2791 (not b_next!2791))))

(declare-fun tp!53603 () Bool)

(declare-fun b_and!4093 () Bool)

(assert (=> b!89949 (= tp!53603 b_and!4093)))

(declare-fun e!50155 () Bool)

(assert (=> b!89949 (= e!50155 (and tp!53605 tp!53603))))

(declare-fun e!50154 () Bool)

(declare-fun b!89948 () Bool)

(declare-fun tp!53606 () Bool)

(assert (=> b!89948 (= e!50154 (and tp!53606 (inv!1881 (tag!513 (h!6930 (t!20790 rules!2471)))) (inv!1883 (transformation!335 (h!6930 (t!20790 rules!2471)))) e!50155))))

(declare-fun b!89947 () Bool)

(declare-fun e!50156 () Bool)

(declare-fun tp!53604 () Bool)

(assert (=> b!89947 (= e!50156 (and e!50154 tp!53604))))

(assert (=> b!89892 (= tp!53573 e!50156)))

(assert (= b!89948 b!89949))

(assert (= b!89947 b!89948))

(assert (= (and b!89892 ((_ is Cons!1533) (t!20790 rules!2471))) b!89947))

(declare-fun m!70598 () Bool)

(assert (=> b!89948 m!70598))

(declare-fun m!70600 () Bool)

(assert (=> b!89948 m!70600))

(check-sat (not b!89947) tp_is_empty!729 (not b!89910) (not b_next!2789) (not b!89918) (not b!89936) (not b_next!2787) (not d!19293) (not b_next!2791) b_and!4089 b_and!4087 (not b!89923) (not d!19299) (not b_next!2785) (not b!89948) b_and!4091 (not b!89938) (not b!89901) (not b!89937) b_and!4093)
(check-sat (not b_next!2785) (not b_next!2789) (not b_next!2787) b_and!4091 (not b_next!2791) b_and!4089 b_and!4093 b_and!4087)
