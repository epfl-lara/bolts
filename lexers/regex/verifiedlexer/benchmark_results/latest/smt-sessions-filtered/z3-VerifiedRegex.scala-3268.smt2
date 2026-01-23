; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187938 () Bool)

(assert start!187938)

(declare-fun b!1875008 () Bool)

(declare-fun b_free!52153 () Bool)

(declare-fun b_next!52857 () Bool)

(assert (=> b!1875008 (= b_free!52153 (not b_next!52857))))

(declare-fun tp!534429 () Bool)

(declare-fun b_and!144439 () Bool)

(assert (=> b!1875008 (= tp!534429 b_and!144439)))

(declare-fun b_free!52155 () Bool)

(declare-fun b_next!52859 () Bool)

(assert (=> b!1875008 (= b_free!52155 (not b_next!52859))))

(declare-fun tp!534432 () Bool)

(declare-fun b_and!144441 () Bool)

(assert (=> b!1875008 (= tp!534432 b_and!144441)))

(declare-fun b!1875007 () Bool)

(declare-fun e!1196638 () Bool)

(declare-datatypes ((List!20955 0))(
  ( (Nil!20873) (Cons!20873 (h!26274 (_ BitVec 16)) (t!173172 List!20955)) )
))
(declare-datatypes ((TokenValue!3832 0))(
  ( (FloatLiteralValue!7664 (text!27269 List!20955)) (TokenValueExt!3831 (__x!13102 Int)) (Broken!19160 (value!116775 List!20955)) (Object!3913) (End!3832) (Def!3832) (Underscore!3832) (Match!3832) (Else!3832) (Error!3832) (Case!3832) (If!3832) (Extends!3832) (Abstract!3832) (Class!3832) (Val!3832) (DelimiterValue!7664 (del!3892 List!20955)) (KeywordValue!3838 (value!116776 List!20955)) (CommentValue!7664 (value!116777 List!20955)) (WhitespaceValue!7664 (value!116778 List!20955)) (IndentationValue!3832 (value!116779 List!20955)) (String!24109) (Int32!3832) (Broken!19161 (value!116780 List!20955)) (Boolean!3833) (Unit!35399) (OperatorValue!3835 (op!3892 List!20955)) (IdentifierValue!7664 (value!116781 List!20955)) (IdentifierValue!7665 (value!116782 List!20955)) (WhitespaceValue!7665 (value!116783 List!20955)) (True!7664) (False!7664) (Broken!19162 (value!116784 List!20955)) (Broken!19163 (value!116785 List!20955)) (True!7665) (RightBrace!3832) (RightBracket!3832) (Colon!3832) (Null!3832) (Comma!3832) (LeftBracket!3832) (False!7665) (LeftBrace!3832) (ImaginaryLiteralValue!3832 (text!27270 List!20955)) (StringLiteralValue!11496 (value!116786 List!20955)) (EOFValue!3832 (value!116787 List!20955)) (IdentValue!3832 (value!116788 List!20955)) (DelimiterValue!7665 (value!116789 List!20955)) (DedentValue!3832 (value!116790 List!20955)) (NewLineValue!3832 (value!116791 List!20955)) (IntegerValue!11496 (value!116792 (_ BitVec 32)) (text!27271 List!20955)) (IntegerValue!11497 (value!116793 Int) (text!27272 List!20955)) (Times!3832) (Or!3832) (Equal!3832) (Minus!3832) (Broken!19164 (value!116794 List!20955)) (And!3832) (Div!3832) (LessEqual!3832) (Mod!3832) (Concat!8937) (Not!3832) (Plus!3832) (SpaceValue!3832 (value!116795 List!20955)) (IntegerValue!11498 (value!116796 Int) (text!27273 List!20955)) (StringLiteralValue!11497 (text!27274 List!20955)) (FloatLiteralValue!7665 (text!27275 List!20955)) (BytesLiteralValue!3832 (value!116797 List!20955)) (CommentValue!7665 (value!116798 List!20955)) (StringLiteralValue!11498 (value!116799 List!20955)) (ErrorTokenValue!3832 (msg!3893 List!20955)) )
))
(declare-datatypes ((String!24110 0))(
  ( (String!24111 (value!116800 String)) )
))
(declare-datatypes ((C!10368 0))(
  ( (C!10369 (val!6072 Int)) )
))
(declare-datatypes ((Regex!5105 0))(
  ( (ElementMatch!5105 (c!305486 C!10368)) (Concat!8938 (regOne!10722 Regex!5105) (regTwo!10722 Regex!5105)) (EmptyExpr!5105) (Star!5105 (reg!5434 Regex!5105)) (EmptyLang!5105) (Union!5105 (regOne!10723 Regex!5105) (regTwo!10723 Regex!5105)) )
))
(declare-datatypes ((List!20956 0))(
  ( (Nil!20874) (Cons!20874 (h!26275 C!10368) (t!173173 List!20956)) )
))
(declare-datatypes ((IArray!13847 0))(
  ( (IArray!13848 (innerList!6981 List!20956)) )
))
(declare-datatypes ((Conc!6921 0))(
  ( (Node!6921 (left!16775 Conc!6921) (right!17105 Conc!6921) (csize!14072 Int) (cheight!7132 Int)) (Leaf!10190 (xs!9805 IArray!13847) (csize!14073 Int)) (Empty!6921) )
))
(declare-datatypes ((BalanceConc!13658 0))(
  ( (BalanceConc!13659 (c!305487 Conc!6921)) )
))
(declare-datatypes ((TokenValueInjection!7248 0))(
  ( (TokenValueInjection!7249 (toValue!5293 Int) (toChars!5152 Int)) )
))
(declare-datatypes ((Rule!7192 0))(
  ( (Rule!7193 (regex!3696 Regex!5105) (tag!4110 String!24110) (isSeparator!3696 Bool) (transformation!3696 TokenValueInjection!7248)) )
))
(declare-datatypes ((Token!6944 0))(
  ( (Token!6945 (value!116801 TokenValue!3832) (rule!5889 Rule!7192) (size!16555 Int) (originalCharacters!4503 List!20956)) )
))
(declare-fun separatorToken!84 () Token!6944)

(declare-fun e!1196642 () Bool)

(declare-fun tp!534428 () Bool)

(declare-fun inv!21 (TokenValue!3832) Bool)

(assert (=> b!1875007 (= e!1196638 (and (inv!21 (value!116801 separatorToken!84)) e!1196642 tp!534428))))

(declare-fun res!838551 () Bool)

(declare-fun e!1196641 () Bool)

(assert (=> start!187938 (=> (not res!838551) (not e!1196641))))

(declare-datatypes ((LexerInterface!3318 0))(
  ( (LexerInterfaceExt!3315 (__x!13103 Int)) (Lexer!3316) )
))
(declare-fun thiss!13718 () LexerInterface!3318)

(declare-fun from!845 () Int)

(get-info :version)

(assert (=> start!187938 (= res!838551 (and ((_ is Lexer!3316) thiss!13718) (>= from!845 0)))))

(assert (=> start!187938 e!1196641))

(assert (=> start!187938 true))

(declare-datatypes ((List!20957 0))(
  ( (Nil!20875) (Cons!20875 (h!26276 Token!6944) (t!173174 List!20957)) )
))
(declare-datatypes ((IArray!13849 0))(
  ( (IArray!13850 (innerList!6982 List!20957)) )
))
(declare-datatypes ((Conc!6922 0))(
  ( (Node!6922 (left!16776 Conc!6922) (right!17106 Conc!6922) (csize!14074 Int) (cheight!7133 Int)) (Leaf!10191 (xs!9806 IArray!13849) (csize!14075 Int)) (Empty!6922) )
))
(declare-datatypes ((BalanceConc!13660 0))(
  ( (BalanceConc!13661 (c!305488 Conc!6922)) )
))
(declare-fun acc!408 () BalanceConc!13660)

(declare-fun e!1196640 () Bool)

(declare-fun inv!27723 (BalanceConc!13660) Bool)

(assert (=> start!187938 (and (inv!27723 acc!408) e!1196640)))

(declare-fun v!6352 () BalanceConc!13660)

(declare-fun e!1196643 () Bool)

(assert (=> start!187938 (and (inv!27723 v!6352) e!1196643)))

(declare-fun inv!27724 (Token!6944) Bool)

(assert (=> start!187938 (and (inv!27724 separatorToken!84) e!1196638)))

(declare-fun e!1196639 () Bool)

(assert (=> b!1875008 (= e!1196639 (and tp!534429 tp!534432))))

(declare-fun b!1875009 () Bool)

(declare-fun e!1196645 () Bool)

(assert (=> b!1875009 (= e!1196641 e!1196645)))

(declare-fun res!838550 () Bool)

(assert (=> b!1875009 (=> (not res!838550) (not e!1196645))))

(declare-fun lt!720402 () Int)

(assert (=> b!1875009 (= res!838550 (and (<= from!845 lt!720402) (isSeparator!3696 (rule!5889 separatorToken!84)) (< from!845 lt!720402)))))

(declare-fun size!16556 (BalanceConc!13660) Int)

(assert (=> b!1875009 (= lt!720402 (size!16556 v!6352))))

(declare-fun b!1875010 () Bool)

(declare-fun tp!534433 () Bool)

(declare-fun inv!27725 (Conc!6922) Bool)

(assert (=> b!1875010 (= e!1196640 (and (inv!27725 (c!305488 acc!408)) tp!534433))))

(declare-fun b!1875011 () Bool)

(assert (=> b!1875011 (= e!1196645 (not true))))

(declare-fun lt!720405 () List!20957)

(declare-fun lt!720401 () Token!6944)

(declare-fun list!8510 (BalanceConc!13660) List!20957)

(declare-fun ++!5649 (BalanceConc!13660 BalanceConc!13660) BalanceConc!13660)

(declare-fun singletonSeq!1811 (Token!6944) BalanceConc!13660)

(assert (=> b!1875011 (= lt!720405 (list!8510 (++!5649 acc!408 (++!5649 (singletonSeq!1811 lt!720401) (singletonSeq!1811 separatorToken!84)))))))

(declare-fun lt!720409 () List!20957)

(declare-fun lt!720406 () List!20957)

(declare-fun lt!720398 () List!20957)

(declare-fun ++!5650 (List!20957 List!20957) List!20957)

(assert (=> b!1875011 (= (++!5650 (++!5650 lt!720409 lt!720406) lt!720398) (++!5650 lt!720409 (++!5650 lt!720406 lt!720398)))))

(declare-datatypes ((Unit!35400 0))(
  ( (Unit!35401) )
))
(declare-fun lt!720404 () Unit!35400)

(declare-fun lemmaConcatAssociativity!1107 (List!20957 List!20957 List!20957) Unit!35400)

(assert (=> b!1875011 (= lt!720404 (lemmaConcatAssociativity!1107 lt!720409 lt!720406 lt!720398))))

(declare-fun lt!720403 () List!20957)

(declare-fun withSeparatorTokenList!104 (LexerInterface!3318 List!20957 Token!6944) List!20957)

(assert (=> b!1875011 (= lt!720398 (withSeparatorTokenList!104 thiss!13718 lt!720403 separatorToken!84))))

(assert (=> b!1875011 (= lt!720406 (Cons!20875 lt!720401 (Cons!20875 separatorToken!84 Nil!20875)))))

(declare-fun apply!5492 (BalanceConc!13660 Int) Token!6944)

(assert (=> b!1875011 (= lt!720401 (apply!5492 v!6352 from!845))))

(assert (=> b!1875011 (= lt!720409 (list!8510 acc!408))))

(declare-fun lt!720408 () List!20957)

(declare-fun tail!2896 (List!20957) List!20957)

(assert (=> b!1875011 (= (tail!2896 lt!720408) lt!720403)))

(declare-fun lt!720399 () List!20957)

(declare-fun drop!1016 (List!20957 Int) List!20957)

(assert (=> b!1875011 (= lt!720403 (drop!1016 lt!720399 (+ 1 from!845)))))

(declare-fun lt!720400 () Unit!35400)

(declare-fun lemmaDropTail!634 (List!20957 Int) Unit!35400)

(assert (=> b!1875011 (= lt!720400 (lemmaDropTail!634 lt!720399 from!845))))

(declare-fun head!4367 (List!20957) Token!6944)

(declare-fun apply!5493 (List!20957 Int) Token!6944)

(assert (=> b!1875011 (= (head!4367 lt!720408) (apply!5493 lt!720399 from!845))))

(assert (=> b!1875011 (= lt!720408 (drop!1016 lt!720399 from!845))))

(declare-fun lt!720407 () Unit!35400)

(declare-fun lemmaDropApply!654 (List!20957 Int) Unit!35400)

(assert (=> b!1875011 (= lt!720407 (lemmaDropApply!654 lt!720399 from!845))))

(assert (=> b!1875011 (= lt!720399 (list!8510 v!6352))))

(declare-fun b!1875012 () Bool)

(declare-fun tp!534431 () Bool)

(assert (=> b!1875012 (= e!1196643 (and (inv!27725 (c!305488 v!6352)) tp!534431))))

(declare-fun tp!534430 () Bool)

(declare-fun b!1875013 () Bool)

(declare-fun inv!27718 (String!24110) Bool)

(declare-fun inv!27726 (TokenValueInjection!7248) Bool)

(assert (=> b!1875013 (= e!1196642 (and tp!534430 (inv!27718 (tag!4110 (rule!5889 separatorToken!84))) (inv!27726 (transformation!3696 (rule!5889 separatorToken!84))) e!1196639))))

(assert (= (and start!187938 res!838551) b!1875009))

(assert (= (and b!1875009 res!838550) b!1875011))

(assert (= start!187938 b!1875010))

(assert (= start!187938 b!1875012))

(assert (= b!1875013 b!1875008))

(assert (= b!1875007 b!1875013))

(assert (= start!187938 b!1875007))

(declare-fun m!2300175 () Bool)

(assert (=> b!1875011 m!2300175))

(declare-fun m!2300177 () Bool)

(assert (=> b!1875011 m!2300177))

(declare-fun m!2300179 () Bool)

(assert (=> b!1875011 m!2300179))

(declare-fun m!2300181 () Bool)

(assert (=> b!1875011 m!2300181))

(declare-fun m!2300183 () Bool)

(assert (=> b!1875011 m!2300183))

(declare-fun m!2300185 () Bool)

(assert (=> b!1875011 m!2300185))

(declare-fun m!2300187 () Bool)

(assert (=> b!1875011 m!2300187))

(declare-fun m!2300189 () Bool)

(assert (=> b!1875011 m!2300189))

(declare-fun m!2300191 () Bool)

(assert (=> b!1875011 m!2300191))

(assert (=> b!1875011 m!2300185))

(declare-fun m!2300193 () Bool)

(assert (=> b!1875011 m!2300193))

(declare-fun m!2300195 () Bool)

(assert (=> b!1875011 m!2300195))

(declare-fun m!2300197 () Bool)

(assert (=> b!1875011 m!2300197))

(declare-fun m!2300199 () Bool)

(assert (=> b!1875011 m!2300199))

(assert (=> b!1875011 m!2300175))

(assert (=> b!1875011 m!2300191))

(declare-fun m!2300201 () Bool)

(assert (=> b!1875011 m!2300201))

(declare-fun m!2300203 () Bool)

(assert (=> b!1875011 m!2300203))

(assert (=> b!1875011 m!2300195))

(assert (=> b!1875011 m!2300199))

(declare-fun m!2300205 () Bool)

(assert (=> b!1875011 m!2300205))

(assert (=> b!1875011 m!2300181))

(declare-fun m!2300207 () Bool)

(assert (=> b!1875011 m!2300207))

(declare-fun m!2300209 () Bool)

(assert (=> b!1875011 m!2300209))

(declare-fun m!2300211 () Bool)

(assert (=> b!1875011 m!2300211))

(declare-fun m!2300213 () Bool)

(assert (=> b!1875011 m!2300213))

(declare-fun m!2300215 () Bool)

(assert (=> b!1875011 m!2300215))

(declare-fun m!2300217 () Bool)

(assert (=> b!1875007 m!2300217))

(declare-fun m!2300219 () Bool)

(assert (=> b!1875010 m!2300219))

(declare-fun m!2300221 () Bool)

(assert (=> b!1875013 m!2300221))

(declare-fun m!2300223 () Bool)

(assert (=> b!1875013 m!2300223))

(declare-fun m!2300225 () Bool)

(assert (=> start!187938 m!2300225))

(declare-fun m!2300227 () Bool)

(assert (=> start!187938 m!2300227))

(declare-fun m!2300229 () Bool)

(assert (=> start!187938 m!2300229))

(declare-fun m!2300231 () Bool)

(assert (=> b!1875012 m!2300231))

(declare-fun m!2300233 () Bool)

(assert (=> b!1875009 m!2300233))

(check-sat (not start!187938) (not b_next!52859) (not b!1875012) (not b!1875013) b_and!144441 (not b_next!52857) (not b!1875009) (not b!1875011) (not b!1875010) (not b!1875007) b_and!144439)
(check-sat b_and!144441 b_and!144439 (not b_next!52857) (not b_next!52859))
