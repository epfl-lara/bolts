; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137434 () Bool)

(assert start!137434)

(declare-fun b!1468508 () Bool)

(declare-fun b_free!36903 () Bool)

(declare-fun b_next!37607 () Bool)

(assert (=> b!1468508 (= b_free!36903 (not b_next!37607))))

(declare-fun tp!413689 () Bool)

(declare-fun b_and!100485 () Bool)

(assert (=> b!1468508 (= tp!413689 b_and!100485)))

(declare-fun b_free!36905 () Bool)

(declare-fun b_next!37609 () Bool)

(assert (=> b!1468508 (= b_free!36905 (not b_next!37609))))

(declare-fun tp!413688 () Bool)

(declare-fun b_and!100487 () Bool)

(assert (=> b!1468508 (= tp!413688 b_and!100487)))

(declare-fun b!1468507 () Bool)

(declare-fun b_free!36907 () Bool)

(declare-fun b_next!37611 () Bool)

(assert (=> b!1468507 (= b_free!36907 (not b_next!37611))))

(declare-fun tp!413686 () Bool)

(declare-fun b_and!100489 () Bool)

(assert (=> b!1468507 (= tp!413686 b_and!100489)))

(declare-fun b_free!36909 () Bool)

(declare-fun b_next!37613 () Bool)

(assert (=> b!1468507 (= b_free!36909 (not b_next!37613))))

(declare-fun tp!413693 () Bool)

(declare-fun b_and!100491 () Bool)

(assert (=> b!1468507 (= tp!413693 b_and!100491)))

(declare-datatypes ((C!8236 0))(
  ( (C!8237 (val!4688 Int)) )
))
(declare-datatypes ((List!15383 0))(
  ( (Nil!15317) (Cons!15317 (h!20718 C!8236) (t!135262 List!15383)) )
))
(declare-fun lt!511116 () List!15383)

(declare-fun lt!511109 () List!15383)

(declare-fun b!1468502 () Bool)

(declare-fun lt!511117 () List!15383)

(declare-fun e!937353 () Bool)

(declare-fun ++!4170 (List!15383 List!15383) List!15383)

(assert (=> b!1468502 (= e!937353 (= lt!511109 (++!4170 lt!511117 lt!511116)))))

(declare-fun res!664304 () Bool)

(declare-fun e!937361 () Bool)

(assert (=> start!137434 (=> (not res!664304) (not e!937361))))

(declare-datatypes ((LexerInterface!2371 0))(
  ( (LexerInterfaceExt!2368 (__x!9400 Int)) (Lexer!2369) )
))
(declare-fun thiss!20360 () LexerInterface!2371)

(declare-datatypes ((List!15384 0))(
  ( (Nil!15318) (Cons!15318 (h!20719 (_ BitVec 16)) (t!135263 List!15384)) )
))
(declare-datatypes ((TokenValue!2805 0))(
  ( (FloatLiteralValue!5610 (text!20080 List!15384)) (TokenValueExt!2804 (__x!9401 Int)) (Broken!14025 (value!86999 List!15384)) (Object!2870) (End!2805) (Def!2805) (Underscore!2805) (Match!2805) (Else!2805) (Error!2805) (Case!2805) (If!2805) (Extends!2805) (Abstract!2805) (Class!2805) (Val!2805) (DelimiterValue!5610 (del!2865 List!15384)) (KeywordValue!2811 (value!87000 List!15384)) (CommentValue!5610 (value!87001 List!15384)) (WhitespaceValue!5610 (value!87002 List!15384)) (IndentationValue!2805 (value!87003 List!15384)) (String!18280) (Int32!2805) (Broken!14026 (value!87004 List!15384)) (Boolean!2806) (Unit!25072) (OperatorValue!2808 (op!2865 List!15384)) (IdentifierValue!5610 (value!87005 List!15384)) (IdentifierValue!5611 (value!87006 List!15384)) (WhitespaceValue!5611 (value!87007 List!15384)) (True!5610) (False!5610) (Broken!14027 (value!87008 List!15384)) (Broken!14028 (value!87009 List!15384)) (True!5611) (RightBrace!2805) (RightBracket!2805) (Colon!2805) (Null!2805) (Comma!2805) (LeftBracket!2805) (False!5611) (LeftBrace!2805) (ImaginaryLiteralValue!2805 (text!20081 List!15384)) (StringLiteralValue!8415 (value!87010 List!15384)) (EOFValue!2805 (value!87011 List!15384)) (IdentValue!2805 (value!87012 List!15384)) (DelimiterValue!5611 (value!87013 List!15384)) (DedentValue!2805 (value!87014 List!15384)) (NewLineValue!2805 (value!87015 List!15384)) (IntegerValue!8415 (value!87016 (_ BitVec 32)) (text!20082 List!15384)) (IntegerValue!8416 (value!87017 Int) (text!20083 List!15384)) (Times!2805) (Or!2805) (Equal!2805) (Minus!2805) (Broken!14029 (value!87018 List!15384)) (And!2805) (Div!2805) (LessEqual!2805) (Mod!2805) (Concat!6834) (Not!2805) (Plus!2805) (SpaceValue!2805 (value!87019 List!15384)) (IntegerValue!8417 (value!87020 Int) (text!20084 List!15384)) (StringLiteralValue!8416 (text!20085 List!15384)) (FloatLiteralValue!5611 (text!20086 List!15384)) (BytesLiteralValue!2805 (value!87021 List!15384)) (CommentValue!5611 (value!87022 List!15384)) (StringLiteralValue!8417 (value!87023 List!15384)) (ErrorTokenValue!2805 (msg!2866 List!15384)) )
))
(declare-datatypes ((IArray!10447 0))(
  ( (IArray!10448 (innerList!5281 List!15383)) )
))
(declare-datatypes ((Conc!5221 0))(
  ( (Node!5221 (left!12985 Conc!5221) (right!13315 Conc!5221) (csize!10672 Int) (cheight!5432 Int)) (Leaf!7780 (xs!7976 IArray!10447) (csize!10673 Int)) (Empty!5221) )
))
(declare-datatypes ((BalanceConc!10382 0))(
  ( (BalanceConc!10383 (c!242047 Conc!5221)) )
))
(declare-datatypes ((TokenValueInjection!5270 0))(
  ( (TokenValueInjection!5271 (toValue!4034 Int) (toChars!3893 Int)) )
))
(declare-datatypes ((Regex!4029 0))(
  ( (ElementMatch!4029 (c!242048 C!8236)) (Concat!6835 (regOne!8570 Regex!4029) (regTwo!8570 Regex!4029)) (EmptyExpr!4029) (Star!4029 (reg!4358 Regex!4029)) (EmptyLang!4029) (Union!4029 (regOne!8571 Regex!4029) (regTwo!8571 Regex!4029)) )
))
(declare-datatypes ((String!18281 0))(
  ( (String!18282 (value!87024 String)) )
))
(declare-datatypes ((Rule!5230 0))(
  ( (Rule!5231 (regex!2715 Regex!4029) (tag!2979 String!18281) (isSeparator!2715 Bool) (transformation!2715 TokenValueInjection!5270)) )
))
(declare-datatypes ((Token!5092 0))(
  ( (Token!5093 (value!87025 TokenValue!2805) (rule!4492 Rule!5230) (size!12493 Int) (originalCharacters!3577 List!15383)) )
))
(declare-datatypes ((List!15385 0))(
  ( (Nil!15319) (Cons!15319 (h!20720 Token!5092) (t!135264 List!15385)) )
))
(declare-fun tokens1!47 () List!15385)

(get-info :version)

(assert (=> start!137434 (= res!664304 (and ((_ is Lexer!2369) thiss!20360) ((_ is Cons!15319) tokens1!47)))))

(assert (=> start!137434 e!937361))

(assert (=> start!137434 true))

(declare-fun e!937362 () Bool)

(assert (=> start!137434 e!937362))

(declare-fun e!937356 () Bool)

(assert (=> start!137434 e!937356))

(declare-fun e!937358 () Bool)

(declare-fun b!1468503 () Bool)

(declare-fun tp!413685 () Bool)

(declare-fun e!937357 () Bool)

(declare-fun inv!21 (TokenValue!2805) Bool)

(assert (=> b!1468503 (= e!937358 (and (inv!21 (value!87025 (h!20720 tokens1!47))) e!937357 tp!413685))))

(declare-fun tokens2!49 () List!15385)

(declare-fun b!1468504 () Bool)

(declare-fun e!937355 () Bool)

(declare-fun tp!413690 () Bool)

(declare-fun inv!20493 (Token!5092) Bool)

(assert (=> b!1468504 (= e!937356 (and (inv!20493 (h!20720 tokens2!49)) e!937355 tp!413690))))

(declare-fun e!937366 () Bool)

(declare-fun tp!413692 () Bool)

(declare-fun b!1468505 () Bool)

(assert (=> b!1468505 (= e!937355 (and (inv!21 (value!87025 (h!20720 tokens2!49))) e!937366 tp!413692))))

(declare-fun b!1468506 () Bool)

(declare-fun e!937352 () Bool)

(declare-fun e!937351 () Bool)

(assert (=> b!1468506 (= e!937352 e!937351)))

(declare-fun res!664303 () Bool)

(assert (=> b!1468506 (=> (not res!664303) (not e!937351))))

(declare-fun lt!511111 () List!15385)

(declare-fun lt!511110 () List!15385)

(assert (=> b!1468506 (= res!664303 (= lt!511111 lt!511110))))

(assert (=> b!1468506 (= lt!511110 (Cons!15319 (h!20720 tokens1!47) tokens2!49))))

(declare-fun ++!4171 (List!15385 List!15385) List!15385)

(assert (=> b!1468506 (= lt!511111 (++!4171 tokens1!47 tokens2!49))))

(declare-fun e!937359 () Bool)

(assert (=> b!1468507 (= e!937359 (and tp!413686 tp!413693))))

(declare-fun e!937354 () Bool)

(assert (=> b!1468508 (= e!937354 (and tp!413689 tp!413688))))

(declare-fun tp!413687 () Bool)

(declare-fun b!1468509 () Bool)

(declare-fun inv!20490 (String!18281) Bool)

(declare-fun inv!20494 (TokenValueInjection!5270) Bool)

(assert (=> b!1468509 (= e!937357 (and tp!413687 (inv!20490 (tag!2979 (rule!4492 (h!20720 tokens1!47)))) (inv!20494 (transformation!2715 (rule!4492 (h!20720 tokens1!47)))) e!937354))))

(declare-fun b!1468510 () Bool)

(assert (=> b!1468510 (= e!937351 (not e!937353))))

(declare-fun res!664306 () Bool)

(assert (=> b!1468510 (=> res!664306 e!937353)))

(declare-fun lt!511112 () List!15383)

(assert (=> b!1468510 (= res!664306 (not (= lt!511109 lt!511112)))))

(declare-fun printList!761 (LexerInterface!2371 List!15385) List!15383)

(assert (=> b!1468510 (= lt!511109 (printList!761 thiss!20360 lt!511111))))

(declare-fun lt!511113 () List!15383)

(assert (=> b!1468510 (= lt!511113 lt!511112)))

(declare-fun lt!511114 () List!15383)

(assert (=> b!1468510 (= lt!511112 (++!4170 lt!511114 lt!511116))))

(assert (=> b!1468510 (= lt!511113 (printList!761 thiss!20360 lt!511110))))

(assert (=> b!1468510 (= lt!511116 (printList!761 thiss!20360 tokens2!49))))

(declare-fun b!1468511 () Bool)

(assert (=> b!1468511 (= e!937361 e!937352)))

(declare-fun res!664302 () Bool)

(assert (=> b!1468511 (=> (not res!664302) (not e!937352))))

(assert (=> b!1468511 (= res!664302 (= lt!511117 lt!511114))))

(declare-fun lt!511115 () BalanceConc!10382)

(declare-fun list!6143 (BalanceConc!10382) List!15383)

(assert (=> b!1468511 (= lt!511114 (list!6143 lt!511115))))

(assert (=> b!1468511 (= lt!511117 (printList!761 thiss!20360 tokens1!47))))

(declare-fun charsOf!1568 (Token!5092) BalanceConc!10382)

(assert (=> b!1468511 (= lt!511115 (charsOf!1568 (h!20720 tokens1!47)))))

(declare-fun tp!413694 () Bool)

(declare-fun b!1468512 () Bool)

(assert (=> b!1468512 (= e!937366 (and tp!413694 (inv!20490 (tag!2979 (rule!4492 (h!20720 tokens2!49)))) (inv!20494 (transformation!2715 (rule!4492 (h!20720 tokens2!49)))) e!937359))))

(declare-fun b!1468513 () Bool)

(declare-fun res!664305 () Bool)

(assert (=> b!1468513 (=> (not res!664305) (not e!937361))))

(declare-fun isEmpty!9603 (List!15385) Bool)

(assert (=> b!1468513 (= res!664305 (isEmpty!9603 (t!135264 tokens1!47)))))

(declare-fun b!1468514 () Bool)

(declare-fun tp!413691 () Bool)

(assert (=> b!1468514 (= e!937362 (and (inv!20493 (h!20720 tokens1!47)) e!937358 tp!413691))))

(assert (= (and start!137434 res!664304) b!1468513))

(assert (= (and b!1468513 res!664305) b!1468511))

(assert (= (and b!1468511 res!664302) b!1468506))

(assert (= (and b!1468506 res!664303) b!1468510))

(assert (= (and b!1468510 (not res!664306)) b!1468502))

(assert (= b!1468509 b!1468508))

(assert (= b!1468503 b!1468509))

(assert (= b!1468514 b!1468503))

(assert (= (and start!137434 ((_ is Cons!15319) tokens1!47)) b!1468514))

(assert (= b!1468512 b!1468507))

(assert (= b!1468505 b!1468512))

(assert (= b!1468504 b!1468505))

(assert (= (and start!137434 ((_ is Cons!15319) tokens2!49)) b!1468504))

(declare-fun m!1713109 () Bool)

(assert (=> b!1468513 m!1713109))

(declare-fun m!1713111 () Bool)

(assert (=> b!1468511 m!1713111))

(declare-fun m!1713113 () Bool)

(assert (=> b!1468511 m!1713113))

(declare-fun m!1713115 () Bool)

(assert (=> b!1468511 m!1713115))

(declare-fun m!1713117 () Bool)

(assert (=> b!1468506 m!1713117))

(declare-fun m!1713119 () Bool)

(assert (=> b!1468510 m!1713119))

(declare-fun m!1713121 () Bool)

(assert (=> b!1468510 m!1713121))

(declare-fun m!1713123 () Bool)

(assert (=> b!1468510 m!1713123))

(declare-fun m!1713125 () Bool)

(assert (=> b!1468510 m!1713125))

(declare-fun m!1713127 () Bool)

(assert (=> b!1468502 m!1713127))

(declare-fun m!1713129 () Bool)

(assert (=> b!1468514 m!1713129))

(declare-fun m!1713131 () Bool)

(assert (=> b!1468509 m!1713131))

(declare-fun m!1713133 () Bool)

(assert (=> b!1468509 m!1713133))

(declare-fun m!1713135 () Bool)

(assert (=> b!1468512 m!1713135))

(declare-fun m!1713137 () Bool)

(assert (=> b!1468512 m!1713137))

(declare-fun m!1713139 () Bool)

(assert (=> b!1468503 m!1713139))

(declare-fun m!1713141 () Bool)

(assert (=> b!1468505 m!1713141))

(declare-fun m!1713143 () Bool)

(assert (=> b!1468504 m!1713143))

(check-sat (not b_next!37613) b_and!100487 (not b!1468511) (not b!1468505) (not b!1468502) (not b!1468503) (not b!1468509) (not b_next!37611) (not b!1468512) (not b!1468506) b_and!100485 (not b!1468504) (not b_next!37609) b_and!100489 (not b_next!37607) (not b!1468513) b_and!100491 (not b!1468514) (not b!1468510))
(check-sat (not b_next!37613) b_and!100487 b_and!100491 (not b_next!37611) b_and!100485 (not b_next!37609) b_and!100489 (not b_next!37607))
