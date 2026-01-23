; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508216 () Bool)

(assert start!508216)

(declare-fun b!4862117 () Bool)

(declare-fun b_free!130523 () Bool)

(declare-fun b_next!131313 () Bool)

(assert (=> b!4862117 (= b_free!130523 (not b_next!131313))))

(declare-fun tp!1368087 () Bool)

(declare-fun b_and!342375 () Bool)

(assert (=> b!4862117 (= tp!1368087 b_and!342375)))

(declare-fun b_free!130525 () Bool)

(declare-fun b_next!131315 () Bool)

(assert (=> b!4862117 (= b_free!130525 (not b_next!131315))))

(declare-fun tp!1368085 () Bool)

(declare-fun b_and!342377 () Bool)

(assert (=> b!4862117 (= tp!1368085 b_and!342377)))

(declare-fun b!4862115 () Bool)

(declare-fun e!3039921 () Bool)

(declare-fun e!3039924 () Bool)

(declare-fun tp!1368086 () Bool)

(assert (=> b!4862115 (= e!3039921 (and e!3039924 tp!1368086))))

(declare-fun e!3039927 () Bool)

(assert (=> b!4862117 (= e!3039927 (and tp!1368087 tp!1368085))))

(declare-fun b!4862118 () Bool)

(declare-fun e!3039923 () Bool)

(assert (=> b!4862118 (= e!3039923 false)))

(declare-fun lt!1992572 () Bool)

(declare-datatypes ((LexerInterface!7606 0))(
  ( (LexerInterfaceExt!7603 (__x!33941 Int)) (Lexer!7604) )
))
(declare-fun thiss!11777 () LexerInterface!7606)

(declare-datatypes ((List!55991 0))(
  ( (Nil!55867) (Cons!55867 (h!62315 (_ BitVec 16)) (t!363615 List!55991)) )
))
(declare-datatypes ((TokenValue!8324 0))(
  ( (FloatLiteralValue!16648 (text!58713 List!55991)) (TokenValueExt!8323 (__x!33942 Int)) (Broken!41620 (value!257518 List!55991)) (Object!8447) (End!8324) (Def!8324) (Underscore!8324) (Match!8324) (Else!8324) (Error!8324) (Case!8324) (If!8324) (Extends!8324) (Abstract!8324) (Class!8324) (Val!8324) (DelimiterValue!16648 (del!8384 List!55991)) (KeywordValue!8330 (value!257519 List!55991)) (CommentValue!16648 (value!257520 List!55991)) (WhitespaceValue!16648 (value!257521 List!55991)) (IndentationValue!8324 (value!257522 List!55991)) (String!63037) (Int32!8324) (Broken!41621 (value!257523 List!55991)) (Boolean!8325) (Unit!145907) (OperatorValue!8327 (op!8384 List!55991)) (IdentifierValue!16648 (value!257524 List!55991)) (IdentifierValue!16649 (value!257525 List!55991)) (WhitespaceValue!16649 (value!257526 List!55991)) (True!16648) (False!16648) (Broken!41622 (value!257527 List!55991)) (Broken!41623 (value!257528 List!55991)) (True!16649) (RightBrace!8324) (RightBracket!8324) (Colon!8324) (Null!8324) (Comma!8324) (LeftBracket!8324) (False!16649) (LeftBrace!8324) (ImaginaryLiteralValue!8324 (text!58714 List!55991)) (StringLiteralValue!24972 (value!257529 List!55991)) (EOFValue!8324 (value!257530 List!55991)) (IdentValue!8324 (value!257531 List!55991)) (DelimiterValue!16649 (value!257532 List!55991)) (DedentValue!8324 (value!257533 List!55991)) (NewLineValue!8324 (value!257534 List!55991)) (IntegerValue!24972 (value!257535 (_ BitVec 32)) (text!58715 List!55991)) (IntegerValue!24973 (value!257536 Int) (text!58716 List!55991)) (Times!8324) (Or!8324) (Equal!8324) (Minus!8324) (Broken!41624 (value!257537 List!55991)) (And!8324) (Div!8324) (LessEqual!8324) (Mod!8324) (Concat!21413) (Not!8324) (Plus!8324) (SpaceValue!8324 (value!257538 List!55991)) (IntegerValue!24974 (value!257539 Int) (text!58717 List!55991)) (StringLiteralValue!24973 (text!58718 List!55991)) (FloatLiteralValue!16649 (text!58719 List!55991)) (BytesLiteralValue!8324 (value!257540 List!55991)) (CommentValue!16649 (value!257541 List!55991)) (StringLiteralValue!24974 (value!257542 List!55991)) (ErrorTokenValue!8324 (msg!8385 List!55991)) )
))
(declare-datatypes ((C!26376 0))(
  ( (C!26377 (val!22510 Int)) )
))
(declare-datatypes ((List!55992 0))(
  ( (Nil!55868) (Cons!55868 (h!62316 C!26376) (t!363616 List!55992)) )
))
(declare-datatypes ((IArray!29145 0))(
  ( (IArray!29146 (innerList!14630 List!55992)) )
))
(declare-datatypes ((Conc!14542 0))(
  ( (Node!14542 (left!40581 Conc!14542) (right!40911 Conc!14542) (csize!29314 Int) (cheight!14753 Int)) (Leaf!24260 (xs!17848 IArray!29145) (csize!29315 Int)) (Empty!14542) )
))
(declare-datatypes ((BalanceConc!28526 0))(
  ( (BalanceConc!28527 (c!826925 Conc!14542)) )
))
(declare-datatypes ((TokenValueInjection!15956 0))(
  ( (TokenValueInjection!15957 (toValue!10869 Int) (toChars!10728 Int)) )
))
(declare-datatypes ((String!63038 0))(
  ( (String!63039 (value!257543 String)) )
))
(declare-datatypes ((Regex!13089 0))(
  ( (ElementMatch!13089 (c!826926 C!26376)) (Concat!21414 (regOne!26690 Regex!13089) (regTwo!26690 Regex!13089)) (EmptyExpr!13089) (Star!13089 (reg!13418 Regex!13089)) (EmptyLang!13089) (Union!13089 (regOne!26691 Regex!13089) (regTwo!26691 Regex!13089)) )
))
(declare-datatypes ((Rule!15828 0))(
  ( (Rule!15829 (regex!8014 Regex!13089) (tag!8878 String!63038) (isSeparator!8014 Bool) (transformation!8014 TokenValueInjection!15956)) )
))
(declare-datatypes ((List!55993 0))(
  ( (Nil!55869) (Cons!55869 (h!62317 Rule!15828) (t!363617 List!55993)) )
))
(declare-fun rules!1248 () List!55993)

(declare-fun rulesValidInductive!3013 (LexerInterface!7606 List!55993) Bool)

(assert (=> b!4862118 (= lt!1992572 (rulesValidInductive!3013 thiss!11777 rules!1248))))

(declare-fun b!4862119 () Bool)

(declare-fun e!3039926 () Bool)

(declare-fun totalInput!332 () BalanceConc!28526)

(declare-fun tp!1368084 () Bool)

(declare-fun inv!71753 (Conc!14542) Bool)

(assert (=> b!4862119 (= e!3039926 (and (inv!71753 (c!826925 totalInput!332)) tp!1368084))))

(declare-fun b!4862120 () Bool)

(declare-fun res!2075614 () Bool)

(assert (=> b!4862120 (=> (not res!2075614) (not e!3039923))))

(declare-fun input!661 () BalanceConc!28526)

(declare-fun isSuffix!1043 (List!55992 List!55992) Bool)

(declare-fun list!17444 (BalanceConc!28526) List!55992)

(assert (=> b!4862120 (= res!2075614 (isSuffix!1043 (list!17444 input!661) (list!17444 totalInput!332)))))

(declare-fun b!4862121 () Bool)

(declare-fun res!2075613 () Bool)

(assert (=> b!4862121 (=> (not res!2075613) (not e!3039923))))

(declare-fun rulesInvariant!6704 (LexerInterface!7606 List!55993) Bool)

(assert (=> b!4862121 (= res!2075613 (rulesInvariant!6704 thiss!11777 rules!1248))))

(declare-fun b!4862122 () Bool)

(declare-fun res!2075615 () Bool)

(assert (=> b!4862122 (=> (not res!2075615) (not e!3039923))))

(declare-fun isEmpty!29875 (List!55993) Bool)

(assert (=> b!4862122 (= res!2075615 (not (isEmpty!29875 rules!1248)))))

(declare-fun b!4862123 () Bool)

(declare-fun e!3039925 () Bool)

(declare-fun tp!1368083 () Bool)

(assert (=> b!4862123 (= e!3039925 (and (inv!71753 (c!826925 input!661)) tp!1368083))))

(declare-fun tp!1368082 () Bool)

(declare-fun b!4862116 () Bool)

(declare-fun inv!71749 (String!63038) Bool)

(declare-fun inv!71754 (TokenValueInjection!15956) Bool)

(assert (=> b!4862116 (= e!3039924 (and tp!1368082 (inv!71749 (tag!8878 (h!62317 rules!1248))) (inv!71754 (transformation!8014 (h!62317 rules!1248))) e!3039927))))

(declare-fun res!2075612 () Bool)

(assert (=> start!508216 (=> (not res!2075612) (not e!3039923))))

(get-info :version)

(assert (=> start!508216 (= res!2075612 ((_ is Lexer!7604) thiss!11777))))

(assert (=> start!508216 e!3039923))

(assert (=> start!508216 true))

(assert (=> start!508216 e!3039921))

(declare-fun inv!71755 (BalanceConc!28526) Bool)

(assert (=> start!508216 (and (inv!71755 input!661) e!3039925)))

(assert (=> start!508216 (and (inv!71755 totalInput!332) e!3039926)))

(assert (= (and start!508216 res!2075612) b!4862122))

(assert (= (and b!4862122 res!2075615) b!4862121))

(assert (= (and b!4862121 res!2075613) b!4862120))

(assert (= (and b!4862120 res!2075614) b!4862118))

(assert (= b!4862116 b!4862117))

(assert (= b!4862115 b!4862116))

(assert (= (and start!508216 ((_ is Cons!55869) rules!1248)) b!4862115))

(assert (= start!508216 b!4862123))

(assert (= start!508216 b!4862119))

(declare-fun m!5859680 () Bool)

(assert (=> b!4862123 m!5859680))

(declare-fun m!5859682 () Bool)

(assert (=> start!508216 m!5859682))

(declare-fun m!5859684 () Bool)

(assert (=> start!508216 m!5859684))

(declare-fun m!5859686 () Bool)

(assert (=> b!4862121 m!5859686))

(declare-fun m!5859688 () Bool)

(assert (=> b!4862119 m!5859688))

(declare-fun m!5859690 () Bool)

(assert (=> b!4862118 m!5859690))

(declare-fun m!5859692 () Bool)

(assert (=> b!4862122 m!5859692))

(declare-fun m!5859694 () Bool)

(assert (=> b!4862116 m!5859694))

(declare-fun m!5859696 () Bool)

(assert (=> b!4862116 m!5859696))

(declare-fun m!5859698 () Bool)

(assert (=> b!4862120 m!5859698))

(declare-fun m!5859700 () Bool)

(assert (=> b!4862120 m!5859700))

(assert (=> b!4862120 m!5859698))

(assert (=> b!4862120 m!5859700))

(declare-fun m!5859702 () Bool)

(assert (=> b!4862120 m!5859702))

(check-sat (not b!4862115) (not b!4862118) (not b_next!131313) (not b!4862116) b_and!342375 (not b!4862123) (not b!4862122) (not b_next!131315) (not start!508216) b_and!342377 (not b!4862120) (not b!4862121) (not b!4862119))
(check-sat b_and!342377 b_and!342375 (not b_next!131313) (not b_next!131315))
