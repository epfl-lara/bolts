; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277474 () Bool)

(assert start!277474)

(declare-fun b!2848762 () Bool)

(declare-fun b_free!82917 () Bool)

(declare-fun b_next!83621 () Bool)

(assert (=> b!2848762 (= b_free!82917 (not b_next!83621))))

(declare-fun tp!914688 () Bool)

(declare-fun b_and!209159 () Bool)

(assert (=> b!2848762 (= tp!914688 b_and!209159)))

(declare-fun b_free!82919 () Bool)

(declare-fun b_next!83623 () Bool)

(assert (=> b!2848762 (= b_free!82919 (not b_next!83623))))

(declare-fun tp!914684 () Bool)

(declare-fun b_and!209161 () Bool)

(assert (=> b!2848762 (= tp!914684 b_and!209161)))

(declare-fun b!2848758 () Bool)

(declare-fun b_free!82921 () Bool)

(declare-fun b_next!83625 () Bool)

(assert (=> b!2848758 (= b_free!82921 (not b_next!83625))))

(declare-fun tp!914690 () Bool)

(declare-fun b_and!209163 () Bool)

(assert (=> b!2848758 (= tp!914690 b_and!209163)))

(declare-fun b_free!82923 () Bool)

(declare-fun b_next!83627 () Bool)

(assert (=> b!2848758 (= b_free!82923 (not b_next!83627))))

(declare-fun tp!914689 () Bool)

(declare-fun b_and!209165 () Bool)

(assert (=> b!2848758 (= tp!914689 b_and!209165)))

(declare-fun res!1184268 () Bool)

(declare-fun e!1805262 () Bool)

(assert (=> start!277474 (=> (not res!1184268) (not e!1805262))))

(declare-datatypes ((LexerInterface!4679 0))(
  ( (LexerInterfaceExt!4676 (__x!22437 Int)) (Lexer!4677) )
))
(declare-fun thiss!10983 () LexerInterface!4679)

(get-info :version)

(assert (=> start!277474 (= res!1184268 ((_ is Lexer!4677) thiss!10983))))

(assert (=> start!277474 e!1805262))

(assert (=> start!277474 true))

(declare-fun e!1805264 () Bool)

(assert (=> start!277474 e!1805264))

(declare-fun e!1805261 () Bool)

(assert (=> start!277474 e!1805261))

(declare-fun b!2848755 () Bool)

(declare-fun e!1805259 () Bool)

(declare-fun tp!914683 () Bool)

(assert (=> b!2848755 (= e!1805264 (and e!1805259 tp!914683))))

(declare-fun b!2848756 () Bool)

(declare-fun tp!914686 () Bool)

(declare-fun e!1805258 () Bool)

(declare-datatypes ((List!33982 0))(
  ( (Nil!33858) (Cons!33858 (h!39278 (_ BitVec 16)) (t!233009 List!33982)) )
))
(declare-datatypes ((TokenValue!5320 0))(
  ( (FloatLiteralValue!10640 (text!37685 List!33982)) (TokenValueExt!5319 (__x!22438 Int)) (Broken!26600 (value!163460 List!33982)) (Object!5443) (End!5320) (Def!5320) (Underscore!5320) (Match!5320) (Else!5320) (Error!5320) (Case!5320) (If!5320) (Extends!5320) (Abstract!5320) (Class!5320) (Val!5320) (DelimiterValue!10640 (del!5380 List!33982)) (KeywordValue!5326 (value!163461 List!33982)) (CommentValue!10640 (value!163462 List!33982)) (WhitespaceValue!10640 (value!163463 List!33982)) (IndentationValue!5320 (value!163464 List!33982)) (String!37213) (Int32!5320) (Broken!26601 (value!163465 List!33982)) (Boolean!5321) (Unit!47598) (OperatorValue!5323 (op!5380 List!33982)) (IdentifierValue!10640 (value!163466 List!33982)) (IdentifierValue!10641 (value!163467 List!33982)) (WhitespaceValue!10641 (value!163468 List!33982)) (True!10640) (False!10640) (Broken!26602 (value!163469 List!33982)) (Broken!26603 (value!163470 List!33982)) (True!10641) (RightBrace!5320) (RightBracket!5320) (Colon!5320) (Null!5320) (Comma!5320) (LeftBracket!5320) (False!10641) (LeftBrace!5320) (ImaginaryLiteralValue!5320 (text!37686 List!33982)) (StringLiteralValue!15960 (value!163471 List!33982)) (EOFValue!5320 (value!163472 List!33982)) (IdentValue!5320 (value!163473 List!33982)) (DelimiterValue!10641 (value!163474 List!33982)) (DedentValue!5320 (value!163475 List!33982)) (NewLineValue!5320 (value!163476 List!33982)) (IntegerValue!15960 (value!163477 (_ BitVec 32)) (text!37687 List!33982)) (IntegerValue!15961 (value!163478 Int) (text!37688 List!33982)) (Times!5320) (Or!5320) (Equal!5320) (Minus!5320) (Broken!26604 (value!163479 List!33982)) (And!5320) (Div!5320) (LessEqual!5320) (Mod!5320) (Concat!13825) (Not!5320) (Plus!5320) (SpaceValue!5320 (value!163480 List!33982)) (IntegerValue!15962 (value!163481 Int) (text!37689 List!33982)) (StringLiteralValue!15961 (text!37690 List!33982)) (FloatLiteralValue!10641 (text!37691 List!33982)) (BytesLiteralValue!5320 (value!163482 List!33982)) (CommentValue!10641 (value!163483 List!33982)) (StringLiteralValue!15962 (value!163484 List!33982)) (ErrorTokenValue!5320 (msg!5381 List!33982)) )
))
(declare-datatypes ((C!17192 0))(
  ( (C!17193 (val!10630 Int)) )
))
(declare-datatypes ((List!33983 0))(
  ( (Nil!33859) (Cons!33859 (h!39279 C!17192) (t!233010 List!33983)) )
))
(declare-datatypes ((IArray!21001 0))(
  ( (IArray!21002 (innerList!10558 List!33983)) )
))
(declare-datatypes ((Regex!8505 0))(
  ( (ElementMatch!8505 (c!459535 C!17192)) (Concat!13826 (regOne!17522 Regex!8505) (regTwo!17522 Regex!8505)) (EmptyExpr!8505) (Star!8505 (reg!8834 Regex!8505)) (EmptyLang!8505) (Union!8505 (regOne!17523 Regex!8505) (regTwo!17523 Regex!8505)) )
))
(declare-datatypes ((Conc!10498 0))(
  ( (Node!10498 (left!25493 Conc!10498) (right!25823 Conc!10498) (csize!21226 Int) (cheight!10709 Int)) (Leaf!15974 (xs!13616 IArray!21001) (csize!21227 Int)) (Empty!10498) )
))
(declare-datatypes ((BalanceConc!20634 0))(
  ( (BalanceConc!20635 (c!459536 Conc!10498)) )
))
(declare-datatypes ((String!37214 0))(
  ( (String!37215 (value!163485 String)) )
))
(declare-datatypes ((TokenValueInjection!10068 0))(
  ( (TokenValueInjection!10069 (toValue!7150 Int) (toChars!7009 Int)) )
))
(declare-datatypes ((Rule!9980 0))(
  ( (Rule!9981 (regex!5090 Regex!8505) (tag!5594 String!37214) (isSeparator!5090 Bool) (transformation!5090 TokenValueInjection!10068)) )
))
(declare-datatypes ((List!33984 0))(
  ( (Nil!33860) (Cons!33860 (h!39280 Rule!9980) (t!233011 List!33984)) )
))
(declare-fun rules!1039 () List!33984)

(declare-fun inv!45885 (String!37214) Bool)

(declare-fun inv!45887 (TokenValueInjection!10068) Bool)

(assert (=> b!2848756 (= e!1805259 (and tp!914686 (inv!45885 (tag!5594 (h!39280 rules!1039))) (inv!45887 (transformation!5090 (h!39280 rules!1039))) e!1805258))))

(declare-fun b!2848757 () Bool)

(declare-fun e!1805265 () Bool)

(declare-fun tp!914687 () Bool)

(assert (=> b!2848757 (= e!1805261 (and e!1805265 tp!914687))))

(assert (=> b!2848758 (= e!1805258 (and tp!914690 tp!914689))))

(declare-fun b!2848759 () Bool)

(assert (=> b!2848759 (= e!1805262 false)))

(declare-fun lt!1013081 () Bool)

(declare-fun rs!188 () List!33984)

(declare-fun rulesValidInductive!1755 (LexerInterface!4679 List!33984) Bool)

(assert (=> b!2848759 (= lt!1013081 (rulesValidInductive!1755 thiss!10983 rs!188))))

(declare-fun e!1805263 () Bool)

(declare-fun tp!914685 () Bool)

(declare-fun b!2848760 () Bool)

(assert (=> b!2848760 (= e!1805265 (and tp!914685 (inv!45885 (tag!5594 (h!39280 rs!188))) (inv!45887 (transformation!5090 (h!39280 rs!188))) e!1805263))))

(declare-fun b!2848761 () Bool)

(declare-fun res!1184267 () Bool)

(assert (=> b!2848761 (=> (not res!1184267) (not e!1805262))))

(assert (=> b!2848761 (= res!1184267 (rulesValidInductive!1755 thiss!10983 rules!1039))))

(assert (=> b!2848762 (= e!1805263 (and tp!914688 tp!914684))))

(assert (= (and start!277474 res!1184268) b!2848761))

(assert (= (and b!2848761 res!1184267) b!2848759))

(assert (= b!2848756 b!2848758))

(assert (= b!2848755 b!2848756))

(assert (= (and start!277474 ((_ is Cons!33860) rules!1039)) b!2848755))

(assert (= b!2848760 b!2848762))

(assert (= b!2848757 b!2848760))

(assert (= (and start!277474 ((_ is Cons!33860) rs!188)) b!2848757))

(declare-fun m!3275705 () Bool)

(assert (=> b!2848756 m!3275705))

(declare-fun m!3275707 () Bool)

(assert (=> b!2848756 m!3275707))

(declare-fun m!3275709 () Bool)

(assert (=> b!2848759 m!3275709))

(declare-fun m!3275711 () Bool)

(assert (=> b!2848760 m!3275711))

(declare-fun m!3275713 () Bool)

(assert (=> b!2848760 m!3275713))

(declare-fun m!3275715 () Bool)

(assert (=> b!2848761 m!3275715))

(check-sat (not b!2848761) b_and!209159 (not b!2848759) b_and!209165 b_and!209161 (not b!2848756) (not b!2848755) (not b_next!83625) (not b_next!83621) (not b!2848760) b_and!209163 (not b_next!83627) (not b!2848757) (not b_next!83623))
(check-sat b_and!209159 b_and!209165 b_and!209161 b_and!209163 (not b_next!83625) (not b_next!83621) (not b_next!83627) (not b_next!83623))
