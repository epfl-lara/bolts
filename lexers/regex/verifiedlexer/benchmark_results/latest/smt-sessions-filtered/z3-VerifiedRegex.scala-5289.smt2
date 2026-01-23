; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271260 () Bool)

(assert start!271260)

(declare-fun b!2804448 () Bool)

(declare-fun b_free!79633 () Bool)

(declare-fun b_next!80337 () Bool)

(assert (=> b!2804448 (= b_free!79633 (not b_next!80337))))

(declare-fun tp!894407 () Bool)

(declare-fun b_and!204395 () Bool)

(assert (=> b!2804448 (= tp!894407 b_and!204395)))

(declare-fun b_free!79635 () Bool)

(declare-fun b_next!80339 () Bool)

(assert (=> b!2804448 (= b_free!79635 (not b_next!80339))))

(declare-fun tp!894399 () Bool)

(declare-fun b_and!204397 () Bool)

(assert (=> b!2804448 (= tp!894399 b_and!204397)))

(declare-fun b!2804459 () Bool)

(declare-fun b_free!79637 () Bool)

(declare-fun b_next!80341 () Bool)

(assert (=> b!2804459 (= b_free!79637 (not b_next!80341))))

(declare-fun tp!894408 () Bool)

(declare-fun b_and!204399 () Bool)

(assert (=> b!2804459 (= tp!894408 b_and!204399)))

(declare-fun b_free!79639 () Bool)

(declare-fun b_next!80343 () Bool)

(assert (=> b!2804459 (= b_free!79639 (not b_next!80343))))

(declare-fun tp!894400 () Bool)

(declare-fun b_and!204401 () Bool)

(assert (=> b!2804459 (= tp!894400 b_and!204401)))

(declare-fun b!2804451 () Bool)

(declare-fun b_free!79641 () Bool)

(declare-fun b_next!80345 () Bool)

(assert (=> b!2804451 (= b_free!79641 (not b_next!80345))))

(declare-fun tp!894402 () Bool)

(declare-fun b_and!204403 () Bool)

(assert (=> b!2804451 (= tp!894402 b_and!204403)))

(declare-fun b_free!79643 () Bool)

(declare-fun b_next!80347 () Bool)

(assert (=> b!2804451 (= b_free!79643 (not b_next!80347))))

(declare-fun tp!894401 () Bool)

(declare-fun b_and!204405 () Bool)

(assert (=> b!2804451 (= tp!894401 b_and!204405)))

(declare-fun b!2804472 () Bool)

(declare-fun e!1772644 () Bool)

(assert (=> b!2804472 (= e!1772644 true)))

(declare-fun b!2804471 () Bool)

(declare-fun e!1772643 () Bool)

(assert (=> b!2804471 (= e!1772643 e!1772644)))

(declare-fun b!2804470 () Bool)

(declare-fun e!1772642 () Bool)

(assert (=> b!2804470 (= e!1772642 e!1772643)))

(declare-fun b!2804450 () Bool)

(assert (=> b!2804450 e!1772642))

(assert (= b!2804471 b!2804472))

(assert (= b!2804470 b!2804471))

(declare-datatypes ((List!32742 0))(
  ( (Nil!32642) (Cons!32642 (h!38062 (_ BitVec 16)) (t!228970 List!32742)) )
))
(declare-datatypes ((TokenValue!5095 0))(
  ( (FloatLiteralValue!10190 (text!36110 List!32742)) (TokenValueExt!5094 (__x!21847 Int)) (Broken!25475 (value!156764 List!32742)) (Object!5194) (End!5095) (Def!5095) (Underscore!5095) (Match!5095) (Else!5095) (Error!5095) (Case!5095) (If!5095) (Extends!5095) (Abstract!5095) (Class!5095) (Val!5095) (DelimiterValue!10190 (del!5155 List!32742)) (KeywordValue!5101 (value!156765 List!32742)) (CommentValue!10190 (value!156766 List!32742)) (WhitespaceValue!10190 (value!156767 List!32742)) (IndentationValue!5095 (value!156768 List!32742)) (String!35810) (Int32!5095) (Broken!25476 (value!156769 List!32742)) (Boolean!5096) (Unit!46739) (OperatorValue!5098 (op!5155 List!32742)) (IdentifierValue!10190 (value!156770 List!32742)) (IdentifierValue!10191 (value!156771 List!32742)) (WhitespaceValue!10191 (value!156772 List!32742)) (True!10190) (False!10190) (Broken!25477 (value!156773 List!32742)) (Broken!25478 (value!156774 List!32742)) (True!10191) (RightBrace!5095) (RightBracket!5095) (Colon!5095) (Null!5095) (Comma!5095) (LeftBracket!5095) (False!10191) (LeftBrace!5095) (ImaginaryLiteralValue!5095 (text!36111 List!32742)) (StringLiteralValue!15285 (value!156775 List!32742)) (EOFValue!5095 (value!156776 List!32742)) (IdentValue!5095 (value!156777 List!32742)) (DelimiterValue!10191 (value!156778 List!32742)) (DedentValue!5095 (value!156779 List!32742)) (NewLineValue!5095 (value!156780 List!32742)) (IntegerValue!15285 (value!156781 (_ BitVec 32)) (text!36112 List!32742)) (IntegerValue!15286 (value!156782 Int) (text!36113 List!32742)) (Times!5095) (Or!5095) (Equal!5095) (Minus!5095) (Broken!25479 (value!156783 List!32742)) (And!5095) (Div!5095) (LessEqual!5095) (Mod!5095) (Concat!13338) (Not!5095) (Plus!5095) (SpaceValue!5095 (value!156784 List!32742)) (IntegerValue!15287 (value!156785 Int) (text!36114 List!32742)) (StringLiteralValue!15286 (text!36115 List!32742)) (FloatLiteralValue!10191 (text!36116 List!32742)) (BytesLiteralValue!5095 (value!156786 List!32742)) (CommentValue!10191 (value!156787 List!32742)) (StringLiteralValue!15287 (value!156788 List!32742)) (ErrorTokenValue!5095 (msg!5156 List!32742)) )
))
(declare-datatypes ((C!16644 0))(
  ( (C!16645 (val!10256 Int)) )
))
(declare-datatypes ((List!32743 0))(
  ( (Nil!32643) (Cons!32643 (h!38063 C!16644) (t!228971 List!32743)) )
))
(declare-datatypes ((IArray!20209 0))(
  ( (IArray!20210 (innerList!10162 List!32743)) )
))
(declare-datatypes ((Conc!10102 0))(
  ( (Node!10102 (left!24637 Conc!10102) (right!24967 Conc!10102) (csize!20434 Int) (cheight!10313 Int)) (Leaf!15392 (xs!13214 IArray!20209) (csize!20435 Int)) (Empty!10102) )
))
(declare-datatypes ((BalanceConc!19818 0))(
  ( (BalanceConc!19819 (c!454562 Conc!10102)) )
))
(declare-datatypes ((TokenValueInjection!9630 0))(
  ( (TokenValueInjection!9631 (toValue!6871 Int) (toChars!6730 Int)) )
))
(declare-datatypes ((String!35811 0))(
  ( (String!35812 (value!156789 String)) )
))
(declare-datatypes ((Regex!8243 0))(
  ( (ElementMatch!8243 (c!454563 C!16644)) (Concat!13339 (regOne!16998 Regex!8243) (regTwo!16998 Regex!8243)) (EmptyExpr!8243) (Star!8243 (reg!8572 Regex!8243)) (EmptyLang!8243) (Union!8243 (regOne!16999 Regex!8243) (regTwo!16999 Regex!8243)) )
))
(declare-datatypes ((Rule!9546 0))(
  ( (Rule!9547 (regex!4873 Regex!8243) (tag!5377 String!35811) (isSeparator!4873 Bool) (transformation!4873 TokenValueInjection!9630)) )
))
(declare-datatypes ((List!32744 0))(
  ( (Nil!32644) (Cons!32644 (h!38064 Rule!9546) (t!228972 List!32744)) )
))
(declare-fun rules!2540 () List!32744)

(get-info :version)

(assert (= (and b!2804450 ((_ is Cons!32644) rules!2540)) b!2804470))

(declare-fun lambda!103033 () Int)

(declare-fun order!17285 () Int)

(declare-fun order!17283 () Int)

(declare-fun dynLambda!13646 (Int Int) Int)

(declare-fun dynLambda!13647 (Int Int) Int)

(assert (=> b!2804472 (< (dynLambda!13646 order!17283 (toValue!6871 (transformation!4873 (h!38064 rules!2540)))) (dynLambda!13647 order!17285 lambda!103033))))

(declare-fun order!17287 () Int)

(declare-fun dynLambda!13648 (Int Int) Int)

(assert (=> b!2804472 (< (dynLambda!13648 order!17287 (toChars!6730 (transformation!4873 (h!38064 rules!2540)))) (dynLambda!13647 order!17285 lambda!103033))))

(assert (=> b!2804450 true))

(declare-fun b!2804445 () Bool)

(declare-fun res!1168414 () Bool)

(declare-fun e!1772628 () Bool)

(assert (=> b!2804445 (=> (not res!1168414) (not e!1772628))))

(declare-datatypes ((Token!9148 0))(
  ( (Token!9149 (value!156790 TokenValue!5095) (rule!7301 Rule!9546) (size!25489 Int) (originalCharacters!5605 List!32743)) )
))
(declare-fun separatorToken!283 () Token!9148)

(declare-datatypes ((List!32745 0))(
  ( (Nil!32645) (Cons!32645 (h!38065 Token!9148) (t!228973 List!32745)) )
))
(declare-fun l!5055 () List!32745)

(assert (=> b!2804445 (= res!1168414 (and (isSeparator!4873 (rule!7301 separatorToken!283)) ((_ is Cons!32645) l!5055)))))

(declare-fun b!2804446 () Bool)

(declare-fun e!1772635 () Bool)

(declare-fun e!1772625 () Bool)

(declare-fun tp!894406 () Bool)

(declare-fun inv!44318 (String!35811) Bool)

(declare-fun inv!44321 (TokenValueInjection!9630) Bool)

(assert (=> b!2804446 (= e!1772635 (and tp!894406 (inv!44318 (tag!5377 (h!38064 rules!2540))) (inv!44321 (transformation!4873 (h!38064 rules!2540))) e!1772625))))

(declare-fun b!2804447 () Bool)

(declare-fun res!1168411 () Bool)

(assert (=> b!2804447 (=> (not res!1168411) (not e!1772628))))

(declare-datatypes ((LexerInterface!4464 0))(
  ( (LexerInterfaceExt!4461 (__x!21848 Int)) (Lexer!4462) )
))
(declare-fun thiss!19710 () LexerInterface!4464)

(declare-fun rulesProduceIndividualToken!2028 (LexerInterface!4464 List!32744 Token!9148) Bool)

(assert (=> b!2804447 (= res!1168411 (rulesProduceIndividualToken!2028 thiss!19710 rules!2540 separatorToken!283))))

(assert (=> b!2804448 (= e!1772625 (and tp!894407 tp!894399))))

(declare-fun b!2804449 () Bool)

(declare-fun res!1168416 () Bool)

(assert (=> b!2804449 (=> (not res!1168416) (not e!1772628))))

(declare-fun rulesProduceEachTokenIndividuallyList!1538 (LexerInterface!4464 List!32744 List!32745) Bool)

(assert (=> b!2804449 (= res!1168416 (rulesProduceEachTokenIndividuallyList!1538 thiss!19710 rules!2540 l!5055))))

(assert (=> b!2804450 (= e!1772628 false)))

(declare-fun lt!1002872 () Bool)

(assert (=> b!2804450 (= lt!1002872 (rulesProduceEachTokenIndividuallyList!1538 thiss!19710 rules!2540 (t!228973 l!5055)))))

(declare-fun lt!1002873 () Bool)

(assert (=> b!2804450 (= lt!1002873 (rulesProduceIndividualToken!2028 thiss!19710 rules!2540 (h!38065 l!5055)))))

(declare-datatypes ((Unit!46740 0))(
  ( (Unit!46741) )
))
(declare-fun lt!1002874 () Unit!46740)

(declare-fun forallContained!1055 (List!32745 Int Token!9148) Unit!46740)

(assert (=> b!2804450 (= lt!1002874 (forallContained!1055 l!5055 lambda!103033 (h!38065 l!5055)))))

(declare-fun e!1772621 () Bool)

(assert (=> b!2804451 (= e!1772621 (and tp!894402 tp!894401))))

(declare-fun b!2804452 () Bool)

(declare-fun res!1168413 () Bool)

(assert (=> b!2804452 (=> (not res!1168413) (not e!1772628))))

(declare-fun contains!6029 (List!32745 Token!9148) Bool)

(assert (=> b!2804452 (= res!1168413 (contains!6029 l!5055 (h!38065 l!5055)))))

(declare-fun e!1772623 () Bool)

(declare-fun e!1772626 () Bool)

(declare-fun b!2804453 () Bool)

(declare-fun tp!894409 () Bool)

(declare-fun inv!21 (TokenValue!5095) Bool)

(assert (=> b!2804453 (= e!1772623 (and (inv!21 (value!156790 (h!38065 l!5055))) e!1772626 tp!894409))))

(declare-fun b!2804454 () Bool)

(declare-fun e!1772632 () Bool)

(declare-fun tp!894404 () Bool)

(assert (=> b!2804454 (= e!1772632 (and e!1772635 tp!894404))))

(declare-fun tp!894405 () Bool)

(declare-fun e!1772633 () Bool)

(declare-fun b!2804455 () Bool)

(declare-fun inv!44322 (Token!9148) Bool)

(assert (=> b!2804455 (= e!1772633 (and (inv!44322 (h!38065 l!5055)) e!1772623 tp!894405))))

(declare-fun tp!894403 () Bool)

(declare-fun e!1772622 () Bool)

(declare-fun b!2804456 () Bool)

(assert (=> b!2804456 (= e!1772626 (and tp!894403 (inv!44318 (tag!5377 (rule!7301 (h!38065 l!5055)))) (inv!44321 (transformation!4873 (rule!7301 (h!38065 l!5055)))) e!1772622))))

(declare-fun tp!894410 () Bool)

(declare-fun e!1772634 () Bool)

(declare-fun b!2804457 () Bool)

(assert (=> b!2804457 (= e!1772634 (and tp!894410 (inv!44318 (tag!5377 (rule!7301 separatorToken!283))) (inv!44321 (transformation!4873 (rule!7301 separatorToken!283))) e!1772621))))

(declare-fun b!2804458 () Bool)

(declare-fun res!1168415 () Bool)

(assert (=> b!2804458 (=> (not res!1168415) (not e!1772628))))

(declare-fun isEmpty!18155 (List!32744) Bool)

(assert (=> b!2804458 (= res!1168415 (not (isEmpty!18155 rules!2540)))))

(assert (=> b!2804459 (= e!1772622 (and tp!894408 tp!894400))))

(declare-fun res!1168410 () Bool)

(assert (=> start!271260 (=> (not res!1168410) (not e!1772628))))

(assert (=> start!271260 (= res!1168410 ((_ is Lexer!4462) thiss!19710))))

(assert (=> start!271260 e!1772628))

(assert (=> start!271260 true))

(assert (=> start!271260 e!1772632))

(assert (=> start!271260 e!1772633))

(declare-fun e!1772627 () Bool)

(assert (=> start!271260 (and (inv!44322 separatorToken!283) e!1772627)))

(declare-fun tp!894398 () Bool)

(declare-fun b!2804460 () Bool)

(assert (=> b!2804460 (= e!1772627 (and (inv!21 (value!156790 separatorToken!283)) e!1772634 tp!894398))))

(declare-fun b!2804461 () Bool)

(declare-fun res!1168412 () Bool)

(assert (=> b!2804461 (=> (not res!1168412) (not e!1772628))))

(declare-fun rulesInvariant!3904 (LexerInterface!4464 List!32744) Bool)

(assert (=> b!2804461 (= res!1168412 (rulesInvariant!3904 thiss!19710 rules!2540))))

(assert (= (and start!271260 res!1168410) b!2804458))

(assert (= (and b!2804458 res!1168415) b!2804461))

(assert (= (and b!2804461 res!1168412) b!2804449))

(assert (= (and b!2804449 res!1168416) b!2804447))

(assert (= (and b!2804447 res!1168411) b!2804445))

(assert (= (and b!2804445 res!1168414) b!2804452))

(assert (= (and b!2804452 res!1168413) b!2804450))

(assert (= b!2804446 b!2804448))

(assert (= b!2804454 b!2804446))

(assert (= (and start!271260 ((_ is Cons!32644) rules!2540)) b!2804454))

(assert (= b!2804456 b!2804459))

(assert (= b!2804453 b!2804456))

(assert (= b!2804455 b!2804453))

(assert (= (and start!271260 ((_ is Cons!32645) l!5055)) b!2804455))

(assert (= b!2804457 b!2804451))

(assert (= b!2804460 b!2804457))

(assert (= start!271260 b!2804460))

(declare-fun m!3233949 () Bool)

(assert (=> b!2804450 m!3233949))

(declare-fun m!3233951 () Bool)

(assert (=> b!2804450 m!3233951))

(declare-fun m!3233953 () Bool)

(assert (=> b!2804450 m!3233953))

(declare-fun m!3233955 () Bool)

(assert (=> b!2804457 m!3233955))

(declare-fun m!3233957 () Bool)

(assert (=> b!2804457 m!3233957))

(declare-fun m!3233959 () Bool)

(assert (=> b!2804455 m!3233959))

(declare-fun m!3233961 () Bool)

(assert (=> start!271260 m!3233961))

(declare-fun m!3233963 () Bool)

(assert (=> b!2804447 m!3233963))

(declare-fun m!3233965 () Bool)

(assert (=> b!2804452 m!3233965))

(declare-fun m!3233967 () Bool)

(assert (=> b!2804453 m!3233967))

(declare-fun m!3233969 () Bool)

(assert (=> b!2804461 m!3233969))

(declare-fun m!3233971 () Bool)

(assert (=> b!2804460 m!3233971))

(declare-fun m!3233973 () Bool)

(assert (=> b!2804456 m!3233973))

(declare-fun m!3233975 () Bool)

(assert (=> b!2804456 m!3233975))

(declare-fun m!3233977 () Bool)

(assert (=> b!2804458 m!3233977))

(declare-fun m!3233979 () Bool)

(assert (=> b!2804446 m!3233979))

(declare-fun m!3233981 () Bool)

(assert (=> b!2804446 m!3233981))

(declare-fun m!3233983 () Bool)

(assert (=> b!2804449 m!3233983))

(check-sat (not b!2804458) (not b_next!80347) (not b!2804450) (not b!2804454) (not b_next!80337) b_and!204401 b_and!204403 (not b!2804452) (not b!2804460) b_and!204397 b_and!204399 (not b_next!80343) (not b!2804470) (not b!2804447) (not b_next!80341) (not b!2804446) b_and!204395 (not b!2804455) b_and!204405 (not b!2804449) (not b!2804457) (not b!2804453) (not b!2804461) (not start!271260) (not b_next!80345) (not b!2804456) (not b_next!80339))
(check-sat (not b_next!80347) (not b_next!80337) b_and!204401 b_and!204405 b_and!204403 b_and!204397 b_and!204399 (not b_next!80343) (not b_next!80345) (not b_next!80339) (not b_next!80341) b_and!204395)
