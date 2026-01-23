; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137582 () Bool)

(assert start!137582)

(declare-fun b!1469551 () Bool)

(declare-fun b_free!36999 () Bool)

(declare-fun b_next!37703 () Bool)

(assert (=> b!1469551 (= b_free!36999 (not b_next!37703))))

(declare-fun tp!414275 () Bool)

(declare-fun b_and!100601 () Bool)

(assert (=> b!1469551 (= tp!414275 b_and!100601)))

(declare-fun b_free!37001 () Bool)

(declare-fun b_next!37705 () Bool)

(assert (=> b!1469551 (= b_free!37001 (not b_next!37705))))

(declare-fun tp!414277 () Bool)

(declare-fun b_and!100603 () Bool)

(assert (=> b!1469551 (= tp!414277 b_and!100603)))

(declare-fun b!1469555 () Bool)

(declare-fun b_free!37003 () Bool)

(declare-fun b_next!37707 () Bool)

(assert (=> b!1469555 (= b_free!37003 (not b_next!37707))))

(declare-fun tp!414282 () Bool)

(declare-fun b_and!100605 () Bool)

(assert (=> b!1469555 (= tp!414282 b_and!100605)))

(declare-fun b_free!37005 () Bool)

(declare-fun b_next!37709 () Bool)

(assert (=> b!1469555 (= b_free!37005 (not b_next!37709))))

(declare-fun tp!414269 () Bool)

(declare-fun b_and!100607 () Bool)

(assert (=> b!1469555 (= tp!414269 b_and!100607)))

(declare-fun b!1469546 () Bool)

(declare-fun b_free!37007 () Bool)

(declare-fun b_next!37711 () Bool)

(assert (=> b!1469546 (= b_free!37007 (not b_next!37711))))

(declare-fun tp!414280 () Bool)

(declare-fun b_and!100609 () Bool)

(assert (=> b!1469546 (= tp!414280 b_and!100609)))

(declare-fun b_free!37009 () Bool)

(declare-fun b_next!37713 () Bool)

(assert (=> b!1469546 (= b_free!37009 (not b_next!37713))))

(declare-fun tp!414278 () Bool)

(declare-fun b_and!100611 () Bool)

(assert (=> b!1469546 (= tp!414278 b_and!100611)))

(declare-fun e!938218 () Bool)

(declare-fun tp!414270 () Bool)

(declare-datatypes ((List!15451 0))(
  ( (Nil!15385) (Cons!15385 (h!20786 (_ BitVec 16)) (t!135386 List!15451)) )
))
(declare-datatypes ((TokenValue!2823 0))(
  ( (FloatLiteralValue!5646 (text!20206 List!15451)) (TokenValueExt!2822 (__x!9436 Int)) (Broken!14115 (value!87512 List!15451)) (Object!2888) (End!2823) (Def!2823) (Underscore!2823) (Match!2823) (Else!2823) (Error!2823) (Case!2823) (If!2823) (Extends!2823) (Abstract!2823) (Class!2823) (Val!2823) (DelimiterValue!5646 (del!2883 List!15451)) (KeywordValue!2829 (value!87513 List!15451)) (CommentValue!5646 (value!87514 List!15451)) (WhitespaceValue!5646 (value!87515 List!15451)) (IndentationValue!2823 (value!87516 List!15451)) (String!18370) (Int32!2823) (Broken!14116 (value!87517 List!15451)) (Boolean!2824) (Unit!25094) (OperatorValue!2826 (op!2883 List!15451)) (IdentifierValue!5646 (value!87518 List!15451)) (IdentifierValue!5647 (value!87519 List!15451)) (WhitespaceValue!5647 (value!87520 List!15451)) (True!5646) (False!5646) (Broken!14117 (value!87521 List!15451)) (Broken!14118 (value!87522 List!15451)) (True!5647) (RightBrace!2823) (RightBracket!2823) (Colon!2823) (Null!2823) (Comma!2823) (LeftBracket!2823) (False!5647) (LeftBrace!2823) (ImaginaryLiteralValue!2823 (text!20207 List!15451)) (StringLiteralValue!8469 (value!87523 List!15451)) (EOFValue!2823 (value!87524 List!15451)) (IdentValue!2823 (value!87525 List!15451)) (DelimiterValue!5647 (value!87526 List!15451)) (DedentValue!2823 (value!87527 List!15451)) (NewLineValue!2823 (value!87528 List!15451)) (IntegerValue!8469 (value!87529 (_ BitVec 32)) (text!20208 List!15451)) (IntegerValue!8470 (value!87530 Int) (text!20209 List!15451)) (Times!2823) (Or!2823) (Equal!2823) (Minus!2823) (Broken!14119 (value!87531 List!15451)) (And!2823) (Div!2823) (LessEqual!2823) (Mod!2823) (Concat!6870) (Not!2823) (Plus!2823) (SpaceValue!2823 (value!87532 List!15451)) (IntegerValue!8471 (value!87533 Int) (text!20210 List!15451)) (StringLiteralValue!8470 (text!20211 List!15451)) (FloatLiteralValue!5647 (text!20212 List!15451)) (BytesLiteralValue!2823 (value!87534 List!15451)) (CommentValue!5647 (value!87535 List!15451)) (StringLiteralValue!8471 (value!87536 List!15451)) (ErrorTokenValue!2823 (msg!2884 List!15451)) )
))
(declare-datatypes ((C!8272 0))(
  ( (C!8273 (val!4706 Int)) )
))
(declare-datatypes ((Regex!4047 0))(
  ( (ElementMatch!4047 (c!242172 C!8272)) (Concat!6871 (regOne!8606 Regex!4047) (regTwo!8606 Regex!4047)) (EmptyExpr!4047) (Star!4047 (reg!4376 Regex!4047)) (EmptyLang!4047) (Union!4047 (regOne!8607 Regex!4047) (regTwo!8607 Regex!4047)) )
))
(declare-datatypes ((String!18371 0))(
  ( (String!18372 (value!87537 String)) )
))
(declare-datatypes ((List!15452 0))(
  ( (Nil!15386) (Cons!15386 (h!20787 C!8272) (t!135387 List!15452)) )
))
(declare-datatypes ((IArray!10503 0))(
  ( (IArray!10504 (innerList!5309 List!15452)) )
))
(declare-datatypes ((Conc!5249 0))(
  ( (Node!5249 (left!13030 Conc!5249) (right!13360 Conc!5249) (csize!10728 Int) (cheight!5460 Int)) (Leaf!7817 (xs!8004 IArray!10503) (csize!10729 Int)) (Empty!5249) )
))
(declare-datatypes ((BalanceConc!10438 0))(
  ( (BalanceConc!10439 (c!242173 Conc!5249)) )
))
(declare-datatypes ((TokenValueInjection!5306 0))(
  ( (TokenValueInjection!5307 (toValue!4052 Int) (toChars!3911 Int)) )
))
(declare-datatypes ((Rule!5266 0))(
  ( (Rule!5267 (regex!2733 Regex!4047) (tag!2997 String!18371) (isSeparator!2733 Bool) (transformation!2733 TokenValueInjection!5306)) )
))
(declare-datatypes ((Token!5128 0))(
  ( (Token!5129 (value!87538 TokenValue!2823) (rule!4510 Rule!5266) (size!12516 Int) (originalCharacters!3595 List!15452)) )
))
(declare-datatypes ((List!15453 0))(
  ( (Nil!15387) (Cons!15387 (h!20788 Token!5128) (t!135388 List!15453)) )
))
(declare-fun l1!3136 () List!15453)

(declare-fun b!1469541 () Bool)

(declare-fun e!938214 () Bool)

(declare-fun inv!20584 (Token!5128) Bool)

(assert (=> b!1469541 (= e!938218 (and (inv!20584 (h!20788 l1!3136)) e!938214 tp!414270))))

(declare-fun b!1469542 () Bool)

(declare-fun res!664590 () Bool)

(declare-fun e!938222 () Bool)

(assert (=> b!1469542 (=> (not res!664590) (not e!938222))))

(declare-datatypes ((List!15454 0))(
  ( (Nil!15388) (Cons!15388 (h!20789 Rule!5266) (t!135389 List!15454)) )
))
(declare-fun rules!4290 () List!15454)

(declare-datatypes ((LexerInterface!2389 0))(
  ( (LexerInterfaceExt!2386 (__x!9437 Int)) (Lexer!2387) )
))
(declare-fun thiss!27374 () LexerInterface!2389)

(declare-fun rulesProduceEachTokenIndividuallyList!756 (LexerInterface!2389 List!15454 List!15453) Bool)

(assert (=> b!1469542 (= res!664590 (rulesProduceEachTokenIndividuallyList!756 thiss!27374 rules!4290 l1!3136))))

(declare-fun tp!414274 () Bool)

(declare-fun e!938209 () Bool)

(declare-fun b!1469543 () Bool)

(declare-fun e!938217 () Bool)

(declare-fun inv!20581 (String!18371) Bool)

(declare-fun inv!20585 (TokenValueInjection!5306) Bool)

(assert (=> b!1469543 (= e!938209 (and tp!414274 (inv!20581 (tag!2997 (rule!4510 (h!20788 l1!3136)))) (inv!20585 (transformation!2733 (rule!4510 (h!20788 l1!3136)))) e!938217))))

(declare-fun tp!414271 () Bool)

(declare-fun e!938210 () Bool)

(declare-fun b!1469544 () Bool)

(declare-fun e!938220 () Bool)

(declare-fun l2!3105 () List!15453)

(assert (=> b!1469544 (= e!938220 (and tp!414271 (inv!20581 (tag!2997 (rule!4510 (h!20788 l2!3105)))) (inv!20585 (transformation!2733 (rule!4510 (h!20788 l2!3105)))) e!938210))))

(declare-fun e!938208 () Bool)

(declare-fun b!1469545 () Bool)

(declare-fun tp!414273 () Bool)

(declare-fun inv!21 (TokenValue!2823) Bool)

(assert (=> b!1469545 (= e!938208 (and (inv!21 (value!87538 (h!20788 l2!3105))) e!938220 tp!414273))))

(assert (=> b!1469546 (= e!938210 (and tp!414280 tp!414278))))

(declare-fun b!1469547 () Bool)

(assert (=> b!1469547 (= e!938222 false)))

(declare-fun lt!511245 () Bool)

(assert (=> b!1469547 (= lt!511245 (rulesProduceEachTokenIndividuallyList!756 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1469548 () Bool)

(declare-fun tp!414276 () Bool)

(assert (=> b!1469548 (= e!938214 (and (inv!21 (value!87538 (h!20788 l1!3136))) e!938209 tp!414276))))

(declare-fun b!1469549 () Bool)

(declare-fun e!938212 () Bool)

(declare-fun e!938213 () Bool)

(declare-fun tp!414279 () Bool)

(assert (=> b!1469549 (= e!938212 (and e!938213 tp!414279))))

(declare-fun b!1469550 () Bool)

(declare-fun res!664591 () Bool)

(assert (=> b!1469550 (=> (not res!664591) (not e!938222))))

(declare-fun isEmpty!9617 (List!15454) Bool)

(assert (=> b!1469550 (= res!664591 (not (isEmpty!9617 rules!4290)))))

(declare-fun res!664589 () Bool)

(assert (=> start!137582 (=> (not res!664589) (not e!938222))))

(get-info :version)

(assert (=> start!137582 (= res!664589 ((_ is Lexer!2387) thiss!27374))))

(assert (=> start!137582 e!938222))

(assert (=> start!137582 true))

(assert (=> start!137582 e!938212))

(assert (=> start!137582 e!938218))

(declare-fun e!938207 () Bool)

(assert (=> start!137582 e!938207))

(declare-fun e!938221 () Bool)

(assert (=> b!1469551 (= e!938221 (and tp!414275 tp!414277))))

(declare-fun tp!414281 () Bool)

(declare-fun b!1469552 () Bool)

(assert (=> b!1469552 (= e!938207 (and (inv!20584 (h!20788 l2!3105)) e!938208 tp!414281))))

(declare-fun b!1469553 () Bool)

(declare-fun res!664588 () Bool)

(assert (=> b!1469553 (=> (not res!664588) (not e!938222))))

(declare-fun rulesInvariant!2178 (LexerInterface!2389 List!15454) Bool)

(assert (=> b!1469553 (= res!664588 (rulesInvariant!2178 thiss!27374 rules!4290))))

(declare-fun tp!414272 () Bool)

(declare-fun b!1469554 () Bool)

(assert (=> b!1469554 (= e!938213 (and tp!414272 (inv!20581 (tag!2997 (h!20789 rules!4290))) (inv!20585 (transformation!2733 (h!20789 rules!4290))) e!938221))))

(assert (=> b!1469555 (= e!938217 (and tp!414282 tp!414269))))

(assert (= (and start!137582 res!664589) b!1469550))

(assert (= (and b!1469550 res!664591) b!1469553))

(assert (= (and b!1469553 res!664588) b!1469542))

(assert (= (and b!1469542 res!664590) b!1469547))

(assert (= b!1469554 b!1469551))

(assert (= b!1469549 b!1469554))

(assert (= (and start!137582 ((_ is Cons!15388) rules!4290)) b!1469549))

(assert (= b!1469543 b!1469555))

(assert (= b!1469548 b!1469543))

(assert (= b!1469541 b!1469548))

(assert (= (and start!137582 ((_ is Cons!15387) l1!3136)) b!1469541))

(assert (= b!1469544 b!1469546))

(assert (= b!1469545 b!1469544))

(assert (= b!1469552 b!1469545))

(assert (= (and start!137582 ((_ is Cons!15387) l2!3105)) b!1469552))

(declare-fun m!1713889 () Bool)

(assert (=> b!1469547 m!1713889))

(declare-fun m!1713891 () Bool)

(assert (=> b!1469545 m!1713891))

(declare-fun m!1713893 () Bool)

(assert (=> b!1469554 m!1713893))

(declare-fun m!1713895 () Bool)

(assert (=> b!1469554 m!1713895))

(declare-fun m!1713897 () Bool)

(assert (=> b!1469548 m!1713897))

(declare-fun m!1713899 () Bool)

(assert (=> b!1469543 m!1713899))

(declare-fun m!1713901 () Bool)

(assert (=> b!1469543 m!1713901))

(declare-fun m!1713903 () Bool)

(assert (=> b!1469550 m!1713903))

(declare-fun m!1713905 () Bool)

(assert (=> b!1469553 m!1713905))

(declare-fun m!1713907 () Bool)

(assert (=> b!1469541 m!1713907))

(declare-fun m!1713909 () Bool)

(assert (=> b!1469544 m!1713909))

(declare-fun m!1713911 () Bool)

(assert (=> b!1469544 m!1713911))

(declare-fun m!1713913 () Bool)

(assert (=> b!1469552 m!1713913))

(declare-fun m!1713915 () Bool)

(assert (=> b!1469542 m!1713915))

(check-sat (not b!1469542) (not b!1469544) (not b!1469547) (not b_next!37711) (not b_next!37707) b_and!100607 b_and!100609 (not b!1469548) (not b_next!37709) (not b!1469549) (not b_next!37705) (not b_next!37703) b_and!100603 (not b!1469543) b_and!100611 b_and!100601 (not b!1469554) (not b!1469541) (not b_next!37713) (not b!1469552) (not b!1469553) (not b!1469550) (not b!1469545) b_and!100605)
(check-sat b_and!100603 (not b_next!37713) (not b_next!37711) (not b_next!37707) b_and!100607 b_and!100609 (not b_next!37709) b_and!100605 (not b_next!37705) (not b_next!37703) b_and!100611 b_and!100601)
