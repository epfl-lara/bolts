; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273414 () Bool)

(assert start!273414)

(declare-fun b!2818664 () Bool)

(declare-fun b_free!80485 () Bool)

(declare-fun b_next!81189 () Bool)

(assert (=> b!2818664 (= b_free!80485 (not b_next!81189))))

(declare-fun tp!900019 () Bool)

(declare-fun b_and!205823 () Bool)

(assert (=> b!2818664 (= tp!900019 b_and!205823)))

(declare-fun b_free!80487 () Bool)

(declare-fun b_next!81191 () Bool)

(assert (=> b!2818664 (= b_free!80487 (not b_next!81191))))

(declare-fun tp!900014 () Bool)

(declare-fun b_and!205825 () Bool)

(assert (=> b!2818664 (= tp!900014 b_and!205825)))

(declare-fun b!2818657 () Bool)

(declare-fun b_free!80489 () Bool)

(declare-fun b_next!81193 () Bool)

(assert (=> b!2818657 (= b_free!80489 (not b_next!81193))))

(declare-fun tp!900012 () Bool)

(declare-fun b_and!205827 () Bool)

(assert (=> b!2818657 (= tp!900012 b_and!205827)))

(declare-fun b_free!80491 () Bool)

(declare-fun b_next!81195 () Bool)

(assert (=> b!2818657 (= b_free!80491 (not b_next!81195))))

(declare-fun tp!900018 () Bool)

(declare-fun b_and!205829 () Bool)

(assert (=> b!2818657 (= tp!900018 b_and!205829)))

(declare-fun b!2818652 () Bool)

(declare-fun res!1172950 () Bool)

(declare-fun e!1782748 () Bool)

(assert (=> b!2818652 (=> (not res!1172950) (not e!1782748))))

(declare-datatypes ((LexerInterface!4528 0))(
  ( (LexerInterfaceExt!4525 (__x!22007 Int)) (Lexer!4526) )
))
(declare-fun thiss!27755 () LexerInterface!4528)

(declare-datatypes ((List!33138 0))(
  ( (Nil!33014) (Cons!33014 (h!38434 (_ BitVec 16)) (t!230287 List!33138)) )
))
(declare-datatypes ((TokenValue!5167 0))(
  ( (FloatLiteralValue!10334 (text!36614 List!33138)) (TokenValueExt!5166 (__x!22008 Int)) (Broken!25835 (value!158998 List!33138)) (Object!5290) (End!5167) (Def!5167) (Underscore!5167) (Match!5167) (Else!5167) (Error!5167) (Case!5167) (If!5167) (Extends!5167) (Abstract!5167) (Class!5167) (Val!5167) (DelimiterValue!10334 (del!5227 List!33138)) (KeywordValue!5173 (value!158999 List!33138)) (CommentValue!10334 (value!159000 List!33138)) (WhitespaceValue!10334 (value!159001 List!33138)) (IndentationValue!5167 (value!159002 List!33138)) (String!36290) (Int32!5167) (Broken!25836 (value!159003 List!33138)) (Boolean!5168) (Unit!46968) (OperatorValue!5170 (op!5227 List!33138)) (IdentifierValue!10334 (value!159004 List!33138)) (IdentifierValue!10335 (value!159005 List!33138)) (WhitespaceValue!10335 (value!159006 List!33138)) (True!10334) (False!10334) (Broken!25837 (value!159007 List!33138)) (Broken!25838 (value!159008 List!33138)) (True!10335) (RightBrace!5167) (RightBracket!5167) (Colon!5167) (Null!5167) (Comma!5167) (LeftBracket!5167) (False!10335) (LeftBrace!5167) (ImaginaryLiteralValue!5167 (text!36615 List!33138)) (StringLiteralValue!15501 (value!159009 List!33138)) (EOFValue!5167 (value!159010 List!33138)) (IdentValue!5167 (value!159011 List!33138)) (DelimiterValue!10335 (value!159012 List!33138)) (DedentValue!5167 (value!159013 List!33138)) (NewLineValue!5167 (value!159014 List!33138)) (IntegerValue!15501 (value!159015 (_ BitVec 32)) (text!36616 List!33138)) (IntegerValue!15502 (value!159016 Int) (text!36617 List!33138)) (Times!5167) (Or!5167) (Equal!5167) (Minus!5167) (Broken!25839 (value!159017 List!33138)) (And!5167) (Div!5167) (LessEqual!5167) (Mod!5167) (Concat!13494) (Not!5167) (Plus!5167) (SpaceValue!5167 (value!159018 List!33138)) (IntegerValue!15503 (value!159019 Int) (text!36618 List!33138)) (StringLiteralValue!15502 (text!36619 List!33138)) (FloatLiteralValue!10335 (text!36620 List!33138)) (BytesLiteralValue!5167 (value!159020 List!33138)) (CommentValue!10335 (value!159021 List!33138)) (StringLiteralValue!15503 (value!159022 List!33138)) (ErrorTokenValue!5167 (msg!5228 List!33138)) )
))
(declare-datatypes ((C!16836 0))(
  ( (C!16837 (val!10398 Int)) )
))
(declare-datatypes ((Regex!8327 0))(
  ( (ElementMatch!8327 (c!456884 C!16836)) (Concat!13495 (regOne!17166 Regex!8327) (regTwo!17166 Regex!8327)) (EmptyExpr!8327) (Star!8327 (reg!8656 Regex!8327)) (EmptyLang!8327) (Union!8327 (regOne!17167 Regex!8327) (regTwo!17167 Regex!8327)) )
))
(declare-datatypes ((String!36291 0))(
  ( (String!36292 (value!159023 String)) )
))
(declare-datatypes ((List!33139 0))(
  ( (Nil!33015) (Cons!33015 (h!38435 C!16836) (t!230288 List!33139)) )
))
(declare-datatypes ((IArray!20493 0))(
  ( (IArray!20494 (innerList!10304 List!33139)) )
))
(declare-datatypes ((Conc!10244 0))(
  ( (Node!10244 (left!24927 Conc!10244) (right!25257 Conc!10244) (csize!20718 Int) (cheight!10455 Int)) (Leaf!15604 (xs!13356 IArray!20493) (csize!20719 Int)) (Empty!10244) )
))
(declare-datatypes ((BalanceConc!20126 0))(
  ( (BalanceConc!20127 (c!456885 Conc!10244)) )
))
(declare-datatypes ((TokenValueInjection!9762 0))(
  ( (TokenValueInjection!9763 (toValue!6951 Int) (toChars!6810 Int)) )
))
(declare-datatypes ((Rule!9674 0))(
  ( (Rule!9675 (regex!4937 Regex!8327) (tag!5441 String!36291) (isSeparator!4937 Bool) (transformation!4937 TokenValueInjection!9762)) )
))
(declare-datatypes ((Token!9276 0))(
  ( (Token!9277 (value!159024 TokenValue!5167) (rule!7365 Rule!9674) (size!25715 Int) (originalCharacters!5669 List!33139)) )
))
(declare-datatypes ((List!33140 0))(
  ( (Nil!33016) (Cons!33016 (h!38436 Token!9276) (t!230289 List!33140)) )
))
(declare-fun l!6581 () List!33140)

(declare-datatypes ((List!33141 0))(
  ( (Nil!33017) (Cons!33017 (h!38437 Rule!9674) (t!230290 List!33141)) )
))
(declare-fun rules!4424 () List!33141)

(declare-fun rulesProduceEachTokenIndividuallyList!1580 (LexerInterface!4528 List!33141 List!33140) Bool)

(assert (=> b!2818652 (= res!1172950 (rulesProduceEachTokenIndividuallyList!1580 thiss!27755 rules!4424 l!6581))))

(declare-fun e!1782749 () Bool)

(declare-fun tp!900013 () Bool)

(declare-fun e!1782751 () Bool)

(declare-fun b!2818653 () Bool)

(declare-fun inv!44935 (Token!9276) Bool)

(assert (=> b!2818653 (= e!1782749 (and (inv!44935 (h!38436 l!6581)) e!1782751 tp!900013))))

(declare-fun b!2818654 () Bool)

(declare-fun rulesInvariant!3946 (LexerInterface!4528 List!33141) Bool)

(assert (=> b!2818654 (= e!1782748 (not (rulesInvariant!3946 Lexer!4526 rules!4424)))))

(declare-fun e!1782754 () Bool)

(declare-fun lt!1006365 () List!33140)

(assert (=> b!2818654 (= (rulesProduceEachTokenIndividuallyList!1580 thiss!27755 rules!4424 lt!1006365) e!1782754)))

(declare-fun res!1172944 () Bool)

(assert (=> b!2818654 (=> res!1172944 e!1782754)))

(get-info :version)

(assert (=> b!2818654 (= res!1172944 (not ((_ is Cons!33016) lt!1006365)))))

(declare-fun i!1730 () Int)

(declare-fun take!531 (List!33140 Int) List!33140)

(assert (=> b!2818654 (= lt!1006365 (take!531 l!6581 i!1730))))

(declare-fun tp!900020 () Bool)

(declare-fun b!2818655 () Bool)

(declare-fun e!1782744 () Bool)

(declare-fun inv!21 (TokenValue!5167) Bool)

(assert (=> b!2818655 (= e!1782751 (and (inv!21 (value!159024 (h!38436 l!6581))) e!1782744 tp!900020))))

(declare-fun b!2818656 () Bool)

(declare-fun res!1172949 () Bool)

(assert (=> b!2818656 (=> (not res!1172949) (not e!1782748))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!665 (LexerInterface!4528 List!33140 List!33141) Bool)

(assert (=> b!2818656 (= res!1172949 (tokensListTwoByTwoPredicateSeparableList!665 thiss!27755 l!6581 rules!4424))))

(declare-fun e!1782745 () Bool)

(assert (=> b!2818657 (= e!1782745 (and tp!900012 tp!900018))))

(declare-fun b!2818658 () Bool)

(declare-fun res!1172945 () Bool)

(assert (=> b!2818658 (=> (not res!1172945) (not e!1782748))))

(assert (=> b!2818658 (= res!1172945 (rulesInvariant!3946 thiss!27755 rules!4424))))

(declare-fun res!1172951 () Bool)

(assert (=> start!273414 (=> (not res!1172951) (not e!1782748))))

(assert (=> start!273414 (= res!1172951 ((_ is Lexer!4526) thiss!27755))))

(assert (=> start!273414 e!1782748))

(assert (=> start!273414 true))

(declare-fun e!1782743 () Bool)

(assert (=> start!273414 e!1782743))

(assert (=> start!273414 e!1782749))

(declare-fun e!1782750 () Bool)

(declare-fun b!2818651 () Bool)

(assert (=> b!2818651 (= e!1782750 (rulesProduceEachTokenIndividuallyList!1580 thiss!27755 rules!4424 (t!230289 lt!1006365)))))

(declare-fun b!2818659 () Bool)

(declare-fun e!1782747 () Bool)

(declare-fun tp!900017 () Bool)

(assert (=> b!2818659 (= e!1782743 (and e!1782747 tp!900017))))

(declare-fun e!1782753 () Bool)

(declare-fun tp!900016 () Bool)

(declare-fun b!2818660 () Bool)

(declare-fun inv!44932 (String!36291) Bool)

(declare-fun inv!44936 (TokenValueInjection!9762) Bool)

(assert (=> b!2818660 (= e!1782744 (and tp!900016 (inv!44932 (tag!5441 (rule!7365 (h!38436 l!6581)))) (inv!44936 (transformation!4937 (rule!7365 (h!38436 l!6581)))) e!1782753))))

(declare-fun b!2818661 () Bool)

(assert (=> b!2818661 (= e!1782754 e!1782750)))

(declare-fun res!1172947 () Bool)

(assert (=> b!2818661 (=> (not res!1172947) (not e!1782750))))

(declare-fun rulesProduceIndividualToken!2066 (LexerInterface!4528 List!33141 Token!9276) Bool)

(assert (=> b!2818661 (= res!1172947 (rulesProduceIndividualToken!2066 thiss!27755 rules!4424 (h!38436 lt!1006365)))))

(declare-fun b!2818662 () Bool)

(declare-fun res!1172946 () Bool)

(assert (=> b!2818662 (=> (not res!1172946) (not e!1782748))))

(declare-fun isEmpty!18266 (List!33141) Bool)

(assert (=> b!2818662 (= res!1172946 (not (isEmpty!18266 rules!4424)))))

(declare-fun tp!900015 () Bool)

(declare-fun b!2818663 () Bool)

(assert (=> b!2818663 (= e!1782747 (and tp!900015 (inv!44932 (tag!5441 (h!38437 rules!4424))) (inv!44936 (transformation!4937 (h!38437 rules!4424))) e!1782745))))

(assert (=> b!2818664 (= e!1782753 (and tp!900019 tp!900014))))

(declare-fun b!2818665 () Bool)

(declare-fun res!1172948 () Bool)

(assert (=> b!2818665 (=> (not res!1172948) (not e!1782748))))

(assert (=> b!2818665 (= res!1172948 (and (not ((_ is Nil!33016) l!6581)) (<= i!1730 0)))))

(assert (= (and start!273414 res!1172951) b!2818662))

(assert (= (and b!2818662 res!1172946) b!2818658))

(assert (= (and b!2818658 res!1172945) b!2818652))

(assert (= (and b!2818652 res!1172950) b!2818656))

(assert (= (and b!2818656 res!1172949) b!2818665))

(assert (= (and b!2818665 res!1172948) b!2818654))

(assert (= (and b!2818654 (not res!1172944)) b!2818661))

(assert (= (and b!2818661 res!1172947) b!2818651))

(assert (= b!2818663 b!2818657))

(assert (= b!2818659 b!2818663))

(assert (= (and start!273414 ((_ is Cons!33017) rules!4424)) b!2818659))

(assert (= b!2818660 b!2818664))

(assert (= b!2818655 b!2818660))

(assert (= b!2818653 b!2818655))

(assert (= (and start!273414 ((_ is Cons!33016) l!6581)) b!2818653))

(declare-fun m!3249453 () Bool)

(assert (=> b!2818660 m!3249453))

(declare-fun m!3249455 () Bool)

(assert (=> b!2818660 m!3249455))

(declare-fun m!3249457 () Bool)

(assert (=> b!2818663 m!3249457))

(declare-fun m!3249459 () Bool)

(assert (=> b!2818663 m!3249459))

(declare-fun m!3249461 () Bool)

(assert (=> b!2818652 m!3249461))

(declare-fun m!3249463 () Bool)

(assert (=> b!2818653 m!3249463))

(declare-fun m!3249465 () Bool)

(assert (=> b!2818662 m!3249465))

(declare-fun m!3249467 () Bool)

(assert (=> b!2818655 m!3249467))

(declare-fun m!3249469 () Bool)

(assert (=> b!2818651 m!3249469))

(declare-fun m!3249471 () Bool)

(assert (=> b!2818661 m!3249471))

(declare-fun m!3249473 () Bool)

(assert (=> b!2818658 m!3249473))

(declare-fun m!3249475 () Bool)

(assert (=> b!2818656 m!3249475))

(declare-fun m!3249477 () Bool)

(assert (=> b!2818654 m!3249477))

(declare-fun m!3249479 () Bool)

(assert (=> b!2818654 m!3249479))

(declare-fun m!3249481 () Bool)

(assert (=> b!2818654 m!3249481))

(check-sat (not b!2818651) b_and!205825 (not b!2818654) b_and!205827 (not b!2818655) (not b!2818661) (not b_next!81193) (not b!2818662) (not b!2818660) b_and!205829 (not b!2818656) b_and!205823 (not b_next!81189) (not b_next!81191) (not b!2818652) (not b!2818659) (not b!2818663) (not b_next!81195) (not b!2818658) (not b!2818653))
(check-sat b_and!205825 b_and!205827 (not b_next!81193) (not b_next!81191) b_and!205829 (not b_next!81195) b_and!205823 (not b_next!81189))
