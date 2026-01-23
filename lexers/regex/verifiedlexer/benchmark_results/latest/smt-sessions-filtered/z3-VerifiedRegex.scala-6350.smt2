; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327526 () Bool)

(assert start!327526)

(declare-fun b!3524752 () Bool)

(declare-fun b_free!90809 () Bool)

(declare-fun b_next!91513 () Bool)

(assert (=> b!3524752 (= b_free!90809 (not b_next!91513))))

(declare-fun tp!1087470 () Bool)

(declare-fun b_and!251271 () Bool)

(assert (=> b!3524752 (= tp!1087470 b_and!251271)))

(declare-fun b_free!90811 () Bool)

(declare-fun b_next!91515 () Bool)

(assert (=> b!3524752 (= b_free!90811 (not b_next!91515))))

(declare-fun tp!1087471 () Bool)

(declare-fun b_and!251273 () Bool)

(assert (=> b!3524752 (= tp!1087471 b_and!251273)))

(declare-fun b!3524718 () Bool)

(declare-fun b_free!90813 () Bool)

(declare-fun b_next!91517 () Bool)

(assert (=> b!3524718 (= b_free!90813 (not b_next!91517))))

(declare-fun tp!1087473 () Bool)

(declare-fun b_and!251275 () Bool)

(assert (=> b!3524718 (= tp!1087473 b_and!251275)))

(declare-fun b_free!90815 () Bool)

(declare-fun b_next!91519 () Bool)

(assert (=> b!3524718 (= b_free!90815 (not b_next!91519))))

(declare-fun tp!1087468 () Bool)

(declare-fun b_and!251277 () Bool)

(assert (=> b!3524718 (= tp!1087468 b_and!251277)))

(declare-fun b!3524740 () Bool)

(declare-fun b_free!90817 () Bool)

(declare-fun b_next!91521 () Bool)

(assert (=> b!3524740 (= b_free!90817 (not b_next!91521))))

(declare-fun tp!1087478 () Bool)

(declare-fun b_and!251279 () Bool)

(assert (=> b!3524740 (= tp!1087478 b_and!251279)))

(declare-fun b_free!90819 () Bool)

(declare-fun b_next!91523 () Bool)

(assert (=> b!3524740 (= b_free!90819 (not b_next!91523))))

(declare-fun tp!1087472 () Bool)

(declare-fun b_and!251281 () Bool)

(assert (=> b!3524740 (= tp!1087472 b_and!251281)))

(declare-fun bs!565633 () Bool)

(declare-fun b!3524751 () Bool)

(declare-fun b!3524722 () Bool)

(assert (= bs!565633 (and b!3524751 b!3524722)))

(declare-fun lambda!122839 () Int)

(declare-fun lambda!122838 () Int)

(assert (=> bs!565633 (not (= lambda!122839 lambda!122838))))

(declare-fun b!3524770 () Bool)

(declare-fun e!2181772 () Bool)

(assert (=> b!3524770 (= e!2181772 true)))

(declare-fun b!3524769 () Bool)

(declare-fun e!2181771 () Bool)

(assert (=> b!3524769 (= e!2181771 e!2181772)))

(declare-fun b!3524768 () Bool)

(declare-fun e!2181770 () Bool)

(assert (=> b!3524768 (= e!2181770 e!2181771)))

(assert (=> b!3524751 e!2181770))

(assert (= b!3524769 b!3524770))

(assert (= b!3524768 b!3524769))

(declare-datatypes ((C!20664 0))(
  ( (C!20665 (val!12380 Int)) )
))
(declare-datatypes ((Regex!10239 0))(
  ( (ElementMatch!10239 (c!607668 C!20664)) (Concat!15949 (regOne!20990 Regex!10239) (regTwo!20990 Regex!10239)) (EmptyExpr!10239) (Star!10239 (reg!10568 Regex!10239)) (EmptyLang!10239) (Union!10239 (regOne!20991 Regex!10239) (regTwo!20991 Regex!10239)) )
))
(declare-datatypes ((List!37484 0))(
  ( (Nil!37360) (Cons!37360 (h!42780 (_ BitVec 16)) (t!282361 List!37484)) )
))
(declare-datatypes ((TokenValue!5710 0))(
  ( (FloatLiteralValue!11420 (text!40415 List!37484)) (TokenValueExt!5709 (__x!23637 Int)) (Broken!28550 (value!176614 List!37484)) (Object!5833) (End!5710) (Def!5710) (Underscore!5710) (Match!5710) (Else!5710) (Error!5710) (Case!5710) (If!5710) (Extends!5710) (Abstract!5710) (Class!5710) (Val!5710) (DelimiterValue!11420 (del!5770 List!37484)) (KeywordValue!5716 (value!176615 List!37484)) (CommentValue!11420 (value!176616 List!37484)) (WhitespaceValue!11420 (value!176617 List!37484)) (IndentationValue!5710 (value!176618 List!37484)) (String!41883) (Int32!5710) (Broken!28551 (value!176619 List!37484)) (Boolean!5711) (Unit!53039) (OperatorValue!5713 (op!5770 List!37484)) (IdentifierValue!11420 (value!176620 List!37484)) (IdentifierValue!11421 (value!176621 List!37484)) (WhitespaceValue!11421 (value!176622 List!37484)) (True!11420) (False!11420) (Broken!28552 (value!176623 List!37484)) (Broken!28553 (value!176624 List!37484)) (True!11421) (RightBrace!5710) (RightBracket!5710) (Colon!5710) (Null!5710) (Comma!5710) (LeftBracket!5710) (False!11421) (LeftBrace!5710) (ImaginaryLiteralValue!5710 (text!40416 List!37484)) (StringLiteralValue!17130 (value!176625 List!37484)) (EOFValue!5710 (value!176626 List!37484)) (IdentValue!5710 (value!176627 List!37484)) (DelimiterValue!11421 (value!176628 List!37484)) (DedentValue!5710 (value!176629 List!37484)) (NewLineValue!5710 (value!176630 List!37484)) (IntegerValue!17130 (value!176631 (_ BitVec 32)) (text!40417 List!37484)) (IntegerValue!17131 (value!176632 Int) (text!40418 List!37484)) (Times!5710) (Or!5710) (Equal!5710) (Minus!5710) (Broken!28554 (value!176633 List!37484)) (And!5710) (Div!5710) (LessEqual!5710) (Mod!5710) (Concat!15950) (Not!5710) (Plus!5710) (SpaceValue!5710 (value!176634 List!37484)) (IntegerValue!17132 (value!176635 Int) (text!40419 List!37484)) (StringLiteralValue!17131 (text!40420 List!37484)) (FloatLiteralValue!11421 (text!40421 List!37484)) (BytesLiteralValue!5710 (value!176636 List!37484)) (CommentValue!11421 (value!176637 List!37484)) (StringLiteralValue!17132 (value!176638 List!37484)) (ErrorTokenValue!5710 (msg!5771 List!37484)) )
))
(declare-datatypes ((List!37485 0))(
  ( (Nil!37361) (Cons!37361 (h!42781 C!20664) (t!282362 List!37485)) )
))
(declare-datatypes ((IArray!22675 0))(
  ( (IArray!22676 (innerList!11395 List!37485)) )
))
(declare-datatypes ((Conc!11335 0))(
  ( (Node!11335 (left!29185 Conc!11335) (right!29515 Conc!11335) (csize!22900 Int) (cheight!11546 Int)) (Leaf!17686 (xs!14525 IArray!22675) (csize!22901 Int)) (Empty!11335) )
))
(declare-datatypes ((BalanceConc!22284 0))(
  ( (BalanceConc!22285 (c!607669 Conc!11335)) )
))
(declare-datatypes ((String!41884 0))(
  ( (String!41885 (value!176639 String)) )
))
(declare-datatypes ((TokenValueInjection!10848 0))(
  ( (TokenValueInjection!10849 (toValue!7736 Int) (toChars!7595 Int)) )
))
(declare-datatypes ((Rule!10760 0))(
  ( (Rule!10761 (regex!5480 Regex!10239) (tag!6120 String!41884) (isSeparator!5480 Bool) (transformation!5480 TokenValueInjection!10848)) )
))
(declare-datatypes ((List!37486 0))(
  ( (Nil!37362) (Cons!37362 (h!42782 Rule!10760) (t!282363 List!37486)) )
))
(declare-fun rules!2135 () List!37486)

(get-info :version)

(assert (= (and b!3524751 ((_ is Cons!37362) rules!2135)) b!3524768))

(declare-fun order!20117 () Int)

(declare-fun order!20119 () Int)

(declare-fun dynLambda!15926 (Int Int) Int)

(declare-fun dynLambda!15927 (Int Int) Int)

(assert (=> b!3524770 (< (dynLambda!15926 order!20117 (toValue!7736 (transformation!5480 (h!42782 rules!2135)))) (dynLambda!15927 order!20119 lambda!122839))))

(declare-fun order!20121 () Int)

(declare-fun dynLambda!15928 (Int Int) Int)

(assert (=> b!3524770 (< (dynLambda!15928 order!20121 (toChars!7595 (transformation!5480 (h!42782 rules!2135)))) (dynLambda!15927 order!20119 lambda!122839))))

(assert (=> b!3524751 true))

(declare-fun b!3524717 () Bool)

(declare-datatypes ((Unit!53040 0))(
  ( (Unit!53041) )
))
(declare-fun e!2181749 () Unit!53040)

(declare-fun Unit!53042 () Unit!53040)

(assert (=> b!3524717 (= e!2181749 Unit!53042)))

(declare-fun e!2181742 () Bool)

(assert (=> b!3524718 (= e!2181742 (and tp!1087473 tp!1087468))))

(declare-fun b!3524719 () Bool)

(declare-fun res!1421637 () Bool)

(declare-fun e!2181731 () Bool)

(assert (=> b!3524719 (=> (not res!1421637) (not e!2181731))))

(declare-datatypes ((Token!10326 0))(
  ( (Token!10327 (value!176640 TokenValue!5710) (rule!8132 Rule!10760) (size!28431 Int) (originalCharacters!6194 List!37485)) )
))
(declare-datatypes ((List!37487 0))(
  ( (Nil!37363) (Cons!37363 (h!42783 Token!10326) (t!282364 List!37487)) )
))
(declare-fun tokens!494 () List!37487)

(declare-datatypes ((LexerInterface!5069 0))(
  ( (LexerInterfaceExt!5066 (__x!23638 Int)) (Lexer!5067) )
))
(declare-fun thiss!18206 () LexerInterface!5069)

(declare-datatypes ((IArray!22677 0))(
  ( (IArray!22678 (innerList!11396 List!37487)) )
))
(declare-datatypes ((Conc!11336 0))(
  ( (Node!11336 (left!29186 Conc!11336) (right!29516 Conc!11336) (csize!22902 Int) (cheight!11547 Int)) (Leaf!17687 (xs!14526 IArray!22677) (csize!22903 Int)) (Empty!11336) )
))
(declare-datatypes ((BalanceConc!22286 0))(
  ( (BalanceConc!22287 (c!607670 Conc!11336)) )
))
(declare-fun rulesProduceEachTokenIndividually!1520 (LexerInterface!5069 List!37486 BalanceConc!22286) Bool)

(declare-fun seqFromList!4013 (List!37487) BalanceConc!22286)

(assert (=> b!3524719 (= res!1421637 (rulesProduceEachTokenIndividually!1520 thiss!18206 rules!2135 (seqFromList!4013 tokens!494)))))

(declare-fun b!3524720 () Bool)

(declare-fun e!2181756 () Bool)

(declare-fun e!2181753 () Bool)

(assert (=> b!3524720 (= e!2181756 e!2181753)))

(declare-fun res!1421630 () Bool)

(assert (=> b!3524720 (=> (not res!1421630) (not e!2181753))))

(declare-fun lt!1204092 () Rule!10760)

(declare-fun lt!1204108 () List!37485)

(declare-fun matchR!4823 (Regex!10239 List!37485) Bool)

(assert (=> b!3524720 (= res!1421630 (matchR!4823 (regex!5480 lt!1204092) lt!1204108))))

(declare-datatypes ((Option!7623 0))(
  ( (None!7622) (Some!7622 (v!37120 Rule!10760)) )
))
(declare-fun lt!1204074 () Option!7623)

(declare-fun get!11997 (Option!7623) Rule!10760)

(assert (=> b!3524720 (= lt!1204092 (get!11997 lt!1204074))))

(declare-fun b!3524721 () Bool)

(declare-fun e!2181762 () Bool)

(declare-fun separatorToken!241 () Token!10326)

(declare-fun lt!1204066 () Rule!10760)

(assert (=> b!3524721 (= e!2181762 (= (rule!8132 separatorToken!241) lt!1204066))))

(declare-fun res!1421634 () Bool)

(assert (=> b!3524722 (=> (not res!1421634) (not e!2181731))))

(declare-fun forall!8039 (List!37487 Int) Bool)

(assert (=> b!3524722 (= res!1421634 (forall!8039 tokens!494 lambda!122838))))

(declare-fun e!2181752 () Bool)

(declare-fun tp!1087477 () Bool)

(declare-fun e!2181734 () Bool)

(declare-fun b!3524723 () Bool)

(declare-fun inv!21 (TokenValue!5710) Bool)

(assert (=> b!3524723 (= e!2181734 (and (inv!21 (value!176640 (h!42783 tokens!494))) e!2181752 tp!1087477))))

(declare-fun tp!1087476 () Bool)

(declare-fun e!2181733 () Bool)

(declare-fun b!3524724 () Bool)

(declare-fun inv!50598 (String!41884) Bool)

(declare-fun inv!50601 (TokenValueInjection!10848) Bool)

(assert (=> b!3524724 (= e!2181752 (and tp!1087476 (inv!50598 (tag!6120 (rule!8132 (h!42783 tokens!494)))) (inv!50601 (transformation!5480 (rule!8132 (h!42783 tokens!494)))) e!2181733))))

(declare-fun b!3524725 () Bool)

(declare-fun e!2181745 () Bool)

(declare-fun e!2181737 () Bool)

(declare-fun tp!1087474 () Bool)

(assert (=> b!3524725 (= e!2181745 (and e!2181737 tp!1087474))))

(declare-fun b!3524726 () Bool)

(declare-fun e!2181741 () Unit!53040)

(declare-fun Unit!53043 () Unit!53040)

(assert (=> b!3524726 (= e!2181741 Unit!53043)))

(declare-fun lt!1204099 () Unit!53040)

(declare-fun lt!1204093 () C!20664)

(declare-fun lt!1204095 () List!37485)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!538 (Regex!10239 List!37485 C!20664) Unit!53040)

(assert (=> b!3524726 (= lt!1204099 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!538 (regex!5480 (rule!8132 separatorToken!241)) lt!1204095 lt!1204093))))

(declare-fun res!1421633 () Bool)

(assert (=> b!3524726 (= res!1421633 (not (matchR!4823 (regex!5480 (rule!8132 separatorToken!241)) lt!1204095)))))

(declare-fun e!2181748 () Bool)

(assert (=> b!3524726 (=> (not res!1421633) (not e!2181748))))

(assert (=> b!3524726 e!2181748))

(declare-fun b!3524727 () Bool)

(assert (=> b!3524727 (= e!2181753 (= (rule!8132 (h!42783 tokens!494)) lt!1204092))))

(declare-fun b!3524728 () Bool)

(declare-fun e!2181761 () Bool)

(assert (=> b!3524728 (= e!2181761 false)))

(declare-fun b!3524729 () Bool)

(declare-fun res!1421642 () Bool)

(declare-fun e!2181750 () Bool)

(assert (=> b!3524729 (=> res!1421642 e!2181750)))

(declare-datatypes ((tuple2!37204 0))(
  ( (tuple2!37205 (_1!21736 BalanceConc!22286) (_2!21736 BalanceConc!22284)) )
))
(declare-fun lt!1204090 () tuple2!37204)

(declare-fun apply!8910 (BalanceConc!22286 Int) Token!10326)

(assert (=> b!3524729 (= res!1421642 (not (= (apply!8910 (_1!21736 lt!1204090) 0) (h!42783 (t!282364 tokens!494)))))))

(declare-fun b!3524730 () Bool)

(declare-fun e!2181730 () Bool)

(declare-fun tp!1087480 () Bool)

(declare-fun inv!50602 (Token!10326) Bool)

(assert (=> b!3524730 (= e!2181730 (and (inv!50602 (h!42783 tokens!494)) e!2181734 tp!1087480))))

(declare-fun b!3524731 () Bool)

(declare-fun tp!1087475 () Bool)

(declare-fun e!2181735 () Bool)

(declare-fun e!2181729 () Bool)

(assert (=> b!3524731 (= e!2181729 (and (inv!21 (value!176640 separatorToken!241)) e!2181735 tp!1087475))))

(declare-fun b!3524732 () Bool)

(declare-fun res!1421641 () Bool)

(declare-fun e!2181763 () Bool)

(assert (=> b!3524732 (=> (not res!1421641) (not e!2181763))))

(declare-fun lt!1204106 () tuple2!37204)

(assert (=> b!3524732 (= res!1421641 (= (apply!8910 (_1!21736 lt!1204106) 0) separatorToken!241))))

(declare-fun b!3524733 () Bool)

(declare-fun e!2181747 () Bool)

(declare-fun e!2181759 () Bool)

(assert (=> b!3524733 (= e!2181747 e!2181759)))

(declare-fun res!1421629 () Bool)

(assert (=> b!3524733 (=> (not res!1421629) (not e!2181759))))

(declare-fun lt!1204085 () Rule!10760)

(declare-fun lt!1204064 () List!37485)

(assert (=> b!3524733 (= res!1421629 (matchR!4823 (regex!5480 lt!1204085) lt!1204064))))

(declare-fun lt!1204098 () Option!7623)

(assert (=> b!3524733 (= lt!1204085 (get!11997 lt!1204098))))

(declare-fun b!3524734 () Bool)

(declare-fun isEmpty!21829 (BalanceConc!22284) Bool)

(assert (=> b!3524734 (= e!2181763 (isEmpty!21829 (_2!21736 lt!1204106)))))

(declare-fun b!3524735 () Bool)

(declare-fun res!1421617 () Bool)

(assert (=> b!3524735 (=> (not res!1421617) (not e!2181731))))

(declare-fun rulesInvariant!4466 (LexerInterface!5069 List!37486) Bool)

(assert (=> b!3524735 (= res!1421617 (rulesInvariant!4466 thiss!18206 rules!2135))))

(declare-fun b!3524736 () Bool)

(declare-fun res!1421622 () Bool)

(declare-fun e!2181757 () Bool)

(assert (=> b!3524736 (=> res!1421622 e!2181757)))

(declare-fun rulesProduceIndividualToken!2561 (LexerInterface!5069 List!37486 Token!10326) Bool)

(assert (=> b!3524736 (= res!1421622 (not (rulesProduceIndividualToken!2561 thiss!18206 rules!2135 (h!42783 tokens!494))))))

(declare-fun b!3524737 () Bool)

(declare-fun res!1421631 () Bool)

(assert (=> b!3524737 (=> (not res!1421631) (not e!2181731))))

(assert (=> b!3524737 (= res!1421631 (rulesProduceIndividualToken!2561 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3524738 () Bool)

(declare-fun Unit!53044 () Unit!53040)

(assert (=> b!3524738 (= e!2181749 Unit!53044)))

(declare-fun lt!1204075 () Unit!53040)

(declare-fun lt!1204104 () C!20664)

(assert (=> b!3524738 (= lt!1204075 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!538 (regex!5480 (rule!8132 (h!42783 (t!282364 tokens!494)))) lt!1204064 lt!1204104))))

(declare-fun res!1421621 () Bool)

(assert (=> b!3524738 (= res!1421621 (not (matchR!4823 (regex!5480 (rule!8132 (h!42783 (t!282364 tokens!494)))) lt!1204064)))))

(assert (=> b!3524738 (=> (not res!1421621) (not e!2181761))))

(assert (=> b!3524738 e!2181761))

(declare-fun b!3524739 () Bool)

(declare-fun e!2181738 () Bool)

(declare-fun e!2181743 () Bool)

(assert (=> b!3524739 (= e!2181738 e!2181743)))

(declare-fun res!1421614 () Bool)

(assert (=> b!3524739 (=> res!1421614 e!2181743)))

(assert (=> b!3524739 (= res!1421614 (or (isSeparator!5480 (rule!8132 (h!42783 tokens!494))) (isSeparator!5480 (rule!8132 (h!42783 (t!282364 tokens!494))))))))

(declare-fun lt!1204096 () Unit!53040)

(declare-fun forallContained!1427 (List!37487 Int Token!10326) Unit!53040)

(assert (=> b!3524739 (= lt!1204096 (forallContained!1427 tokens!494 lambda!122838 (h!42783 (t!282364 tokens!494))))))

(declare-fun lt!1204082 () Unit!53040)

(assert (=> b!3524739 (= lt!1204082 (forallContained!1427 tokens!494 lambda!122838 (h!42783 tokens!494)))))

(assert (=> b!3524740 (= e!2181733 (and tp!1087478 tp!1087472))))

(declare-fun tp!1087469 () Bool)

(declare-fun b!3524741 () Bool)

(assert (=> b!3524741 (= e!2181737 (and tp!1087469 (inv!50598 (tag!6120 (h!42782 rules!2135))) (inv!50601 (transformation!5480 (h!42782 rules!2135))) e!2181742))))

(declare-fun b!3524742 () Bool)

(declare-fun e!2181739 () Bool)

(assert (=> b!3524742 (= e!2181739 e!2181757)))

(declare-fun res!1421640 () Bool)

(assert (=> b!3524742 (=> res!1421640 e!2181757)))

(declare-fun lt!1204087 () List!37485)

(declare-fun lt!1204089 () List!37485)

(assert (=> b!3524742 (= res!1421640 (or (not (= lt!1204089 lt!1204108)) (not (= lt!1204087 lt!1204108))))))

(declare-fun list!13671 (BalanceConc!22284) List!37485)

(declare-fun charsOf!3494 (Token!10326) BalanceConc!22284)

(assert (=> b!3524742 (= lt!1204108 (list!13671 (charsOf!3494 (h!42783 tokens!494))))))

(declare-fun b!3524743 () Bool)

(declare-fun e!2181751 () Bool)

(declare-fun e!2181744 () Bool)

(assert (=> b!3524743 (= e!2181751 e!2181744)))

(declare-fun res!1421626 () Bool)

(assert (=> b!3524743 (=> res!1421626 e!2181744)))

(declare-fun lt!1204081 () List!37485)

(declare-fun lt!1204073 () List!37485)

(assert (=> b!3524743 (= res!1421626 (not (= lt!1204081 lt!1204073)))))

(declare-fun lt!1204094 () List!37485)

(assert (=> b!3524743 (= lt!1204094 lt!1204073)))

(declare-fun lt!1204077 () List!37485)

(declare-fun ++!9263 (List!37485 List!37485) List!37485)

(assert (=> b!3524743 (= lt!1204073 (++!9263 lt!1204108 lt!1204077))))

(declare-fun lt!1204084 () List!37485)

(declare-fun lt!1204088 () Unit!53040)

(declare-fun lemmaConcatAssociativity!2014 (List!37485 List!37485 List!37485) Unit!53040)

(assert (=> b!3524743 (= lt!1204088 (lemmaConcatAssociativity!2014 lt!1204108 lt!1204095 lt!1204084))))

(declare-fun e!2181760 () Bool)

(declare-fun b!3524744 () Bool)

(declare-fun tp!1087479 () Bool)

(assert (=> b!3524744 (= e!2181735 (and tp!1087479 (inv!50598 (tag!6120 (rule!8132 separatorToken!241))) (inv!50601 (transformation!5480 (rule!8132 separatorToken!241))) e!2181760))))

(declare-fun b!3524745 () Bool)

(declare-fun res!1421615 () Bool)

(assert (=> b!3524745 (=> (not res!1421615) (not e!2181731))))

(declare-fun isEmpty!21830 (List!37486) Bool)

(assert (=> b!3524745 (= res!1421615 (not (isEmpty!21830 rules!2135)))))

(declare-fun b!3524746 () Bool)

(assert (=> b!3524746 (= e!2181748 false)))

(declare-fun b!3524747 () Bool)

(assert (=> b!3524747 (= e!2181731 (not e!2181739))))

(declare-fun res!1421632 () Bool)

(assert (=> b!3524747 (=> res!1421632 e!2181739)))

(assert (=> b!3524747 (= res!1421632 (not (= lt!1204087 lt!1204089)))))

(declare-fun printList!1617 (LexerInterface!5069 List!37487) List!37485)

(assert (=> b!3524747 (= lt!1204089 (printList!1617 thiss!18206 (Cons!37363 (h!42783 tokens!494) Nil!37363)))))

(declare-fun lt!1204065 () BalanceConc!22284)

(assert (=> b!3524747 (= lt!1204087 (list!13671 lt!1204065))))

(declare-fun lt!1204091 () BalanceConc!22286)

(declare-fun printTailRec!1564 (LexerInterface!5069 BalanceConc!22286 Int BalanceConc!22284) BalanceConc!22284)

(assert (=> b!3524747 (= lt!1204065 (printTailRec!1564 thiss!18206 lt!1204091 0 (BalanceConc!22285 Empty!11335)))))

(declare-fun print!2134 (LexerInterface!5069 BalanceConc!22286) BalanceConc!22284)

(assert (=> b!3524747 (= lt!1204065 (print!2134 thiss!18206 lt!1204091))))

(declare-fun singletonSeq!2576 (Token!10326) BalanceConc!22286)

(assert (=> b!3524747 (= lt!1204091 (singletonSeq!2576 (h!42783 tokens!494)))))

(declare-fun b!3524748 () Bool)

(declare-fun Unit!53045 () Unit!53040)

(assert (=> b!3524748 (= e!2181741 Unit!53045)))

(declare-fun b!3524749 () Bool)

(declare-fun res!1421616 () Bool)

(assert (=> b!3524749 (=> (not res!1421616) (not e!2181731))))

(declare-fun sepAndNonSepRulesDisjointChars!1674 (List!37486 List!37486) Bool)

(assert (=> b!3524749 (= res!1421616 (sepAndNonSepRulesDisjointChars!1674 rules!2135 rules!2135))))

(declare-fun b!3524750 () Bool)

(assert (=> b!3524750 (= e!2181757 e!2181738)))

(declare-fun res!1421628 () Bool)

(assert (=> b!3524750 (=> res!1421628 e!2181738)))

(declare-fun lt!1204102 () BalanceConc!22284)

(declare-fun isEmpty!21831 (BalanceConc!22286) Bool)

(declare-fun lex!2395 (LexerInterface!5069 List!37486 BalanceConc!22284) tuple2!37204)

(assert (=> b!3524750 (= res!1421628 (isEmpty!21831 (_1!21736 (lex!2395 thiss!18206 rules!2135 lt!1204102))))))

(declare-fun seqFromList!4014 (List!37485) BalanceConc!22284)

(assert (=> b!3524750 (= lt!1204102 (seqFromList!4014 lt!1204108))))

(declare-fun res!1421623 () Bool)

(assert (=> start!327526 (=> (not res!1421623) (not e!2181731))))

(assert (=> start!327526 (= res!1421623 ((_ is Lexer!5067) thiss!18206))))

(assert (=> start!327526 e!2181731))

(assert (=> start!327526 true))

(assert (=> start!327526 e!2181745))

(assert (=> start!327526 e!2181730))

(assert (=> start!327526 (and (inv!50602 separatorToken!241) e!2181729)))

(assert (=> b!3524751 (= e!2181744 true)))

(declare-fun lt!1204072 () Unit!53040)

(assert (=> b!3524751 (= lt!1204072 e!2181749)))

(declare-fun c!607667 () Bool)

(declare-fun contains!7014 (List!37485 C!20664) Bool)

(declare-fun usedCharacters!714 (Regex!10239) List!37485)

(assert (=> b!3524751 (= c!607667 (not (contains!7014 (usedCharacters!714 (regex!5480 (rule!8132 (h!42783 (t!282364 tokens!494))))) lt!1204104)))))

(declare-fun head!7391 (List!37485) C!20664)

(assert (=> b!3524751 (= lt!1204104 (head!7391 lt!1204064))))

(declare-datatypes ((tuple2!37206 0))(
  ( (tuple2!37207 (_1!21737 Token!10326) (_2!21737 List!37485)) )
))
(declare-datatypes ((Option!7624 0))(
  ( (None!7623) (Some!7623 (v!37121 tuple2!37206)) )
))
(declare-fun maxPrefixOneRule!1776 (LexerInterface!5069 Rule!10760 List!37485) Option!7624)

(declare-fun apply!8911 (TokenValueInjection!10848 BalanceConc!22284) TokenValue!5710)

(declare-fun size!28432 (List!37485) Int)

(assert (=> b!3524751 (= (maxPrefixOneRule!1776 thiss!18206 (rule!8132 (h!42783 (t!282364 tokens!494))) lt!1204064) (Some!7623 (tuple2!37207 (Token!10327 (apply!8911 (transformation!5480 (rule!8132 (h!42783 (t!282364 tokens!494)))) (seqFromList!4014 lt!1204064)) (rule!8132 (h!42783 (t!282364 tokens!494))) (size!28432 lt!1204064) lt!1204064) Nil!37361)))))

(declare-fun lt!1204097 () Unit!53040)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!869 (LexerInterface!5069 List!37486 List!37485 List!37485 List!37485 Rule!10760) Unit!53040)

(assert (=> b!3524751 (= lt!1204097 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!869 thiss!18206 rules!2135 lt!1204064 lt!1204064 Nil!37361 (rule!8132 (h!42783 (t!282364 tokens!494)))))))

(assert (=> b!3524751 e!2181747))

(declare-fun res!1421624 () Bool)

(assert (=> b!3524751 (=> (not res!1421624) (not e!2181747))))

(declare-fun isDefined!5876 (Option!7623) Bool)

(assert (=> b!3524751 (= res!1421624 (isDefined!5876 lt!1204098))))

(declare-fun getRuleFromTag!1123 (LexerInterface!5069 List!37486 String!41884) Option!7623)

(assert (=> b!3524751 (= lt!1204098 (getRuleFromTag!1123 thiss!18206 rules!2135 (tag!6120 (rule!8132 (h!42783 (t!282364 tokens!494))))))))

(declare-fun lt!1204086 () Unit!53040)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1123 (LexerInterface!5069 List!37486 List!37485 Token!10326) Unit!53040)

(assert (=> b!3524751 (= lt!1204086 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1123 thiss!18206 rules!2135 lt!1204064 (h!42783 (t!282364 tokens!494))))))

(declare-fun lt!1204101 () Bool)

(assert (=> b!3524751 lt!1204101))

(declare-fun lt!1204067 () Unit!53040)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1058 (LexerInterface!5069 List!37486 List!37487 Token!10326) Unit!53040)

(assert (=> b!3524751 (= lt!1204067 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1058 thiss!18206 rules!2135 tokens!494 (h!42783 (t!282364 tokens!494))))))

(declare-fun maxPrefix!2609 (LexerInterface!5069 List!37486 List!37485) Option!7624)

(assert (=> b!3524751 (= (maxPrefix!2609 thiss!18206 rules!2135 lt!1204073) (Some!7623 (tuple2!37207 (h!42783 tokens!494) lt!1204077)))))

(declare-fun lt!1204078 () Unit!53040)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!236 (LexerInterface!5069 List!37486 Token!10326 Rule!10760 List!37485 Rule!10760) Unit!53040)

(assert (=> b!3524751 (= lt!1204078 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!236 thiss!18206 rules!2135 (h!42783 tokens!494) (rule!8132 (h!42783 tokens!494)) lt!1204077 (rule!8132 separatorToken!241)))))

(assert (=> b!3524751 (not (contains!7014 (usedCharacters!714 (regex!5480 (rule!8132 (h!42783 tokens!494)))) lt!1204093))))

(declare-fun lt!1204070 () Unit!53040)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!280 (LexerInterface!5069 List!37486 List!37486 Rule!10760 Rule!10760 C!20664) Unit!53040)

(assert (=> b!3524751 (= lt!1204070 (lemmaNonSepRuleNotContainsCharContainedInASepRule!280 thiss!18206 rules!2135 rules!2135 (rule!8132 (h!42783 tokens!494)) (rule!8132 separatorToken!241) lt!1204093))))

(declare-fun lt!1204063 () Unit!53040)

(assert (=> b!3524751 (= lt!1204063 (forallContained!1427 tokens!494 lambda!122839 (h!42783 (t!282364 tokens!494))))))

(declare-fun lt!1204103 () Bool)

(assert (=> b!3524751 (= lt!1204101 (not lt!1204103))))

(assert (=> b!3524751 (= lt!1204101 (rulesProduceIndividualToken!2561 thiss!18206 rules!2135 (h!42783 (t!282364 tokens!494))))))

(assert (=> b!3524751 (= lt!1204103 e!2181750)))

(declare-fun res!1421618 () Bool)

(assert (=> b!3524751 (=> res!1421618 e!2181750)))

(declare-fun size!28433 (BalanceConc!22286) Int)

(assert (=> b!3524751 (= res!1421618 (not (= (size!28433 (_1!21736 lt!1204090)) 1)))))

(declare-fun lt!1204076 () BalanceConc!22284)

(assert (=> b!3524751 (= lt!1204090 (lex!2395 thiss!18206 rules!2135 lt!1204076))))

(declare-fun lt!1204107 () BalanceConc!22286)

(assert (=> b!3524751 (= lt!1204076 (printTailRec!1564 thiss!18206 lt!1204107 0 (BalanceConc!22285 Empty!11335)))))

(assert (=> b!3524751 (= lt!1204076 (print!2134 thiss!18206 lt!1204107))))

(assert (=> b!3524751 (= lt!1204107 (singletonSeq!2576 (h!42783 (t!282364 tokens!494))))))

(assert (=> b!3524751 e!2181763))

(declare-fun res!1421625 () Bool)

(assert (=> b!3524751 (=> (not res!1421625) (not e!2181763))))

(assert (=> b!3524751 (= res!1421625 (= (size!28433 (_1!21736 lt!1204106)) 1))))

(declare-fun lt!1204100 () BalanceConc!22284)

(assert (=> b!3524751 (= lt!1204106 (lex!2395 thiss!18206 rules!2135 lt!1204100))))

(declare-fun lt!1204080 () BalanceConc!22286)

(assert (=> b!3524751 (= lt!1204100 (printTailRec!1564 thiss!18206 lt!1204080 0 (BalanceConc!22285 Empty!11335)))))

(assert (=> b!3524751 (= lt!1204100 (print!2134 thiss!18206 lt!1204080))))

(assert (=> b!3524751 (= lt!1204080 (singletonSeq!2576 separatorToken!241))))

(declare-fun lt!1204069 () Unit!53040)

(assert (=> b!3524751 (= lt!1204069 e!2181741)))

(declare-fun c!607666 () Bool)

(assert (=> b!3524751 (= c!607666 (not (contains!7014 (usedCharacters!714 (regex!5480 (rule!8132 separatorToken!241))) lt!1204093)))))

(assert (=> b!3524751 (= lt!1204093 (head!7391 lt!1204095))))

(declare-fun e!2181755 () Bool)

(assert (=> b!3524751 e!2181755))

(declare-fun res!1421627 () Bool)

(assert (=> b!3524751 (=> (not res!1421627) (not e!2181755))))

(declare-fun lt!1204079 () Option!7623)

(assert (=> b!3524751 (= res!1421627 (isDefined!5876 lt!1204079))))

(assert (=> b!3524751 (= lt!1204079 (getRuleFromTag!1123 thiss!18206 rules!2135 (tag!6120 (rule!8132 separatorToken!241))))))

(declare-fun lt!1204105 () Unit!53040)

(assert (=> b!3524751 (= lt!1204105 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1123 thiss!18206 rules!2135 lt!1204095 separatorToken!241))))

(assert (=> b!3524751 (= (maxPrefixOneRule!1776 thiss!18206 (rule!8132 (h!42783 tokens!494)) lt!1204108) (Some!7623 (tuple2!37207 (Token!10327 (apply!8911 (transformation!5480 (rule!8132 (h!42783 tokens!494))) lt!1204102) (rule!8132 (h!42783 tokens!494)) (size!28432 lt!1204108) lt!1204108) Nil!37361)))))

(declare-fun lt!1204068 () Unit!53040)

(assert (=> b!3524751 (= lt!1204068 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!869 thiss!18206 rules!2135 lt!1204108 lt!1204108 Nil!37361 (rule!8132 (h!42783 tokens!494))))))

(assert (=> b!3524751 e!2181756))

(declare-fun res!1421639 () Bool)

(assert (=> b!3524751 (=> (not res!1421639) (not e!2181756))))

(assert (=> b!3524751 (= res!1421639 (isDefined!5876 lt!1204074))))

(assert (=> b!3524751 (= lt!1204074 (getRuleFromTag!1123 thiss!18206 rules!2135 (tag!6120 (rule!8132 (h!42783 tokens!494)))))))

(declare-fun lt!1204071 () Unit!53040)

(assert (=> b!3524751 (= lt!1204071 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1123 thiss!18206 rules!2135 lt!1204108 (h!42783 tokens!494)))))

(declare-fun lt!1204083 () Unit!53040)

(assert (=> b!3524751 (= lt!1204083 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1058 thiss!18206 rules!2135 tokens!494 (h!42783 tokens!494)))))

(assert (=> b!3524752 (= e!2181760 (and tp!1087470 tp!1087471))))

(declare-fun b!3524753 () Bool)

(declare-fun e!2181736 () Bool)

(assert (=> b!3524753 (= e!2181743 e!2181736)))

(declare-fun res!1421619 () Bool)

(assert (=> b!3524753 (=> res!1421619 e!2181736)))

(declare-fun printWithSeparatorTokenList!356 (LexerInterface!5069 List!37487 Token!10326) List!37485)

(assert (=> b!3524753 (= res!1421619 (not (= lt!1204084 (++!9263 (++!9263 lt!1204064 lt!1204095) (printWithSeparatorTokenList!356 thiss!18206 (t!282364 (t!282364 tokens!494)) separatorToken!241)))))))

(assert (=> b!3524753 (= lt!1204064 (list!13671 (charsOf!3494 (h!42783 (t!282364 tokens!494)))))))

(assert (=> b!3524753 (= lt!1204077 (++!9263 lt!1204095 lt!1204084))))

(assert (=> b!3524753 (= lt!1204095 (list!13671 (charsOf!3494 separatorToken!241)))))

(assert (=> b!3524753 (= lt!1204084 (printWithSeparatorTokenList!356 thiss!18206 (t!282364 tokens!494) separatorToken!241))))

(assert (=> b!3524753 (= lt!1204081 (printWithSeparatorTokenList!356 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3524754 () Bool)

(declare-fun res!1421638 () Bool)

(assert (=> b!3524754 (=> (not res!1421638) (not e!2181731))))

(assert (=> b!3524754 (= res!1421638 (isSeparator!5480 (rule!8132 separatorToken!241)))))

(declare-fun b!3524755 () Bool)

(assert (=> b!3524755 (= e!2181759 (= (rule!8132 (h!42783 (t!282364 tokens!494))) lt!1204085))))

(declare-fun b!3524756 () Bool)

(assert (=> b!3524756 (= e!2181750 (not (isEmpty!21829 (_2!21736 lt!1204090))))))

(declare-fun b!3524757 () Bool)

(assert (=> b!3524757 (= e!2181755 e!2181762)))

(declare-fun res!1421636 () Bool)

(assert (=> b!3524757 (=> (not res!1421636) (not e!2181762))))

(assert (=> b!3524757 (= res!1421636 (matchR!4823 (regex!5480 lt!1204066) lt!1204095))))

(assert (=> b!3524757 (= lt!1204066 (get!11997 lt!1204079))))

(declare-fun b!3524758 () Bool)

(declare-fun res!1421620 () Bool)

(assert (=> b!3524758 (=> (not res!1421620) (not e!2181731))))

(assert (=> b!3524758 (= res!1421620 (and (not ((_ is Nil!37363) tokens!494)) (not ((_ is Nil!37363) (t!282364 tokens!494)))))))

(declare-fun b!3524759 () Bool)

(assert (=> b!3524759 (= e!2181736 e!2181751)))

(declare-fun res!1421635 () Bool)

(assert (=> b!3524759 (=> res!1421635 e!2181751)))

(assert (=> b!3524759 (= res!1421635 (not (= lt!1204081 lt!1204094)))))

(assert (=> b!3524759 (= lt!1204094 (++!9263 (++!9263 lt!1204108 lt!1204095) lt!1204084))))

(assert (= (and start!327526 res!1421623) b!3524745))

(assert (= (and b!3524745 res!1421615) b!3524735))

(assert (= (and b!3524735 res!1421617) b!3524719))

(assert (= (and b!3524719 res!1421637) b!3524737))

(assert (= (and b!3524737 res!1421631) b!3524754))

(assert (= (and b!3524754 res!1421638) b!3524722))

(assert (= (and b!3524722 res!1421634) b!3524749))

(assert (= (and b!3524749 res!1421616) b!3524758))

(assert (= (and b!3524758 res!1421620) b!3524747))

(assert (= (and b!3524747 (not res!1421632)) b!3524742))

(assert (= (and b!3524742 (not res!1421640)) b!3524736))

(assert (= (and b!3524736 (not res!1421622)) b!3524750))

(assert (= (and b!3524750 (not res!1421628)) b!3524739))

(assert (= (and b!3524739 (not res!1421614)) b!3524753))

(assert (= (and b!3524753 (not res!1421619)) b!3524759))

(assert (= (and b!3524759 (not res!1421635)) b!3524743))

(assert (= (and b!3524743 (not res!1421626)) b!3524751))

(assert (= (and b!3524751 res!1421639) b!3524720))

(assert (= (and b!3524720 res!1421630) b!3524727))

(assert (= (and b!3524751 res!1421627) b!3524757))

(assert (= (and b!3524757 res!1421636) b!3524721))

(assert (= (and b!3524751 c!607666) b!3524726))

(assert (= (and b!3524751 (not c!607666)) b!3524748))

(assert (= (and b!3524726 res!1421633) b!3524746))

(assert (= (and b!3524751 res!1421625) b!3524732))

(assert (= (and b!3524732 res!1421641) b!3524734))

(assert (= (and b!3524751 (not res!1421618)) b!3524729))

(assert (= (and b!3524729 (not res!1421642)) b!3524756))

(assert (= (and b!3524751 res!1421624) b!3524733))

(assert (= (and b!3524733 res!1421629) b!3524755))

(assert (= (and b!3524751 c!607667) b!3524738))

(assert (= (and b!3524751 (not c!607667)) b!3524717))

(assert (= (and b!3524738 res!1421621) b!3524728))

(assert (= b!3524741 b!3524718))

(assert (= b!3524725 b!3524741))

(assert (= (and start!327526 ((_ is Cons!37362) rules!2135)) b!3524725))

(assert (= b!3524724 b!3524740))

(assert (= b!3524723 b!3524724))

(assert (= b!3524730 b!3524723))

(assert (= (and start!327526 ((_ is Cons!37363) tokens!494)) b!3524730))

(assert (= b!3524744 b!3524752))

(assert (= b!3524731 b!3524744))

(assert (= start!327526 b!3524731))

(declare-fun m!3977619 () Bool)

(assert (=> b!3524738 m!3977619))

(declare-fun m!3977621 () Bool)

(assert (=> b!3524738 m!3977621))

(declare-fun m!3977623 () Bool)

(assert (=> b!3524753 m!3977623))

(declare-fun m!3977625 () Bool)

(assert (=> b!3524753 m!3977625))

(declare-fun m!3977627 () Bool)

(assert (=> b!3524753 m!3977627))

(declare-fun m!3977629 () Bool)

(assert (=> b!3524753 m!3977629))

(declare-fun m!3977631 () Bool)

(assert (=> b!3524753 m!3977631))

(assert (=> b!3524753 m!3977623))

(declare-fun m!3977633 () Bool)

(assert (=> b!3524753 m!3977633))

(declare-fun m!3977635 () Bool)

(assert (=> b!3524753 m!3977635))

(declare-fun m!3977637 () Bool)

(assert (=> b!3524753 m!3977637))

(declare-fun m!3977639 () Bool)

(assert (=> b!3524753 m!3977639))

(assert (=> b!3524753 m!3977637))

(assert (=> b!3524753 m!3977635))

(assert (=> b!3524753 m!3977625))

(declare-fun m!3977641 () Bool)

(assert (=> b!3524753 m!3977641))

(declare-fun m!3977643 () Bool)

(assert (=> b!3524759 m!3977643))

(assert (=> b!3524759 m!3977643))

(declare-fun m!3977645 () Bool)

(assert (=> b!3524759 m!3977645))

(declare-fun m!3977647 () Bool)

(assert (=> b!3524749 m!3977647))

(declare-fun m!3977649 () Bool)

(assert (=> start!327526 m!3977649))

(declare-fun m!3977651 () Bool)

(assert (=> b!3524722 m!3977651))

(declare-fun m!3977653 () Bool)

(assert (=> b!3524733 m!3977653))

(declare-fun m!3977655 () Bool)

(assert (=> b!3524733 m!3977655))

(declare-fun m!3977657 () Bool)

(assert (=> b!3524726 m!3977657))

(declare-fun m!3977659 () Bool)

(assert (=> b!3524726 m!3977659))

(declare-fun m!3977661 () Bool)

(assert (=> b!3524736 m!3977661))

(declare-fun m!3977663 () Bool)

(assert (=> b!3524724 m!3977663))

(declare-fun m!3977665 () Bool)

(assert (=> b!3524724 m!3977665))

(declare-fun m!3977667 () Bool)

(assert (=> b!3524750 m!3977667))

(declare-fun m!3977669 () Bool)

(assert (=> b!3524750 m!3977669))

(declare-fun m!3977671 () Bool)

(assert (=> b!3524750 m!3977671))

(declare-fun m!3977673 () Bool)

(assert (=> b!3524737 m!3977673))

(declare-fun m!3977675 () Bool)

(assert (=> b!3524744 m!3977675))

(declare-fun m!3977677 () Bool)

(assert (=> b!3524744 m!3977677))

(declare-fun m!3977679 () Bool)

(assert (=> b!3524719 m!3977679))

(assert (=> b!3524719 m!3977679))

(declare-fun m!3977681 () Bool)

(assert (=> b!3524719 m!3977681))

(declare-fun m!3977683 () Bool)

(assert (=> b!3524747 m!3977683))

(declare-fun m!3977685 () Bool)

(assert (=> b!3524747 m!3977685))

(declare-fun m!3977687 () Bool)

(assert (=> b!3524747 m!3977687))

(declare-fun m!3977689 () Bool)

(assert (=> b!3524747 m!3977689))

(declare-fun m!3977691 () Bool)

(assert (=> b!3524747 m!3977691))

(declare-fun m!3977693 () Bool)

(assert (=> b!3524734 m!3977693))

(declare-fun m!3977695 () Bool)

(assert (=> b!3524751 m!3977695))

(declare-fun m!3977697 () Bool)

(assert (=> b!3524751 m!3977697))

(declare-fun m!3977699 () Bool)

(assert (=> b!3524751 m!3977699))

(declare-fun m!3977701 () Bool)

(assert (=> b!3524751 m!3977701))

(declare-fun m!3977703 () Bool)

(assert (=> b!3524751 m!3977703))

(declare-fun m!3977705 () Bool)

(assert (=> b!3524751 m!3977705))

(declare-fun m!3977707 () Bool)

(assert (=> b!3524751 m!3977707))

(assert (=> b!3524751 m!3977707))

(declare-fun m!3977709 () Bool)

(assert (=> b!3524751 m!3977709))

(declare-fun m!3977711 () Bool)

(assert (=> b!3524751 m!3977711))

(declare-fun m!3977713 () Bool)

(assert (=> b!3524751 m!3977713))

(declare-fun m!3977715 () Bool)

(assert (=> b!3524751 m!3977715))

(declare-fun m!3977717 () Bool)

(assert (=> b!3524751 m!3977717))

(declare-fun m!3977719 () Bool)

(assert (=> b!3524751 m!3977719))

(declare-fun m!3977721 () Bool)

(assert (=> b!3524751 m!3977721))

(declare-fun m!3977723 () Bool)

(assert (=> b!3524751 m!3977723))

(assert (=> b!3524751 m!3977721))

(declare-fun m!3977725 () Bool)

(assert (=> b!3524751 m!3977725))

(declare-fun m!3977727 () Bool)

(assert (=> b!3524751 m!3977727))

(declare-fun m!3977729 () Bool)

(assert (=> b!3524751 m!3977729))

(declare-fun m!3977731 () Bool)

(assert (=> b!3524751 m!3977731))

(declare-fun m!3977733 () Bool)

(assert (=> b!3524751 m!3977733))

(declare-fun m!3977735 () Bool)

(assert (=> b!3524751 m!3977735))

(declare-fun m!3977737 () Bool)

(assert (=> b!3524751 m!3977737))

(assert (=> b!3524751 m!3977733))

(declare-fun m!3977739 () Bool)

(assert (=> b!3524751 m!3977739))

(declare-fun m!3977741 () Bool)

(assert (=> b!3524751 m!3977741))

(declare-fun m!3977743 () Bool)

(assert (=> b!3524751 m!3977743))

(declare-fun m!3977745 () Bool)

(assert (=> b!3524751 m!3977745))

(declare-fun m!3977747 () Bool)

(assert (=> b!3524751 m!3977747))

(declare-fun m!3977749 () Bool)

(assert (=> b!3524751 m!3977749))

(declare-fun m!3977751 () Bool)

(assert (=> b!3524751 m!3977751))

(declare-fun m!3977753 () Bool)

(assert (=> b!3524751 m!3977753))

(declare-fun m!3977755 () Bool)

(assert (=> b!3524751 m!3977755))

(assert (=> b!3524751 m!3977737))

(declare-fun m!3977757 () Bool)

(assert (=> b!3524751 m!3977757))

(declare-fun m!3977759 () Bool)

(assert (=> b!3524751 m!3977759))

(declare-fun m!3977761 () Bool)

(assert (=> b!3524751 m!3977761))

(declare-fun m!3977763 () Bool)

(assert (=> b!3524751 m!3977763))

(declare-fun m!3977765 () Bool)

(assert (=> b!3524751 m!3977765))

(declare-fun m!3977767 () Bool)

(assert (=> b!3524751 m!3977767))

(declare-fun m!3977769 () Bool)

(assert (=> b!3524751 m!3977769))

(declare-fun m!3977771 () Bool)

(assert (=> b!3524751 m!3977771))

(declare-fun m!3977773 () Bool)

(assert (=> b!3524751 m!3977773))

(declare-fun m!3977775 () Bool)

(assert (=> b!3524751 m!3977775))

(declare-fun m!3977777 () Bool)

(assert (=> b!3524751 m!3977777))

(declare-fun m!3977779 () Bool)

(assert (=> b!3524751 m!3977779))

(declare-fun m!3977781 () Bool)

(assert (=> b!3524732 m!3977781))

(declare-fun m!3977783 () Bool)

(assert (=> b!3524743 m!3977783))

(declare-fun m!3977785 () Bool)

(assert (=> b!3524743 m!3977785))

(declare-fun m!3977787 () Bool)

(assert (=> b!3524730 m!3977787))

(declare-fun m!3977789 () Bool)

(assert (=> b!3524756 m!3977789))

(declare-fun m!3977791 () Bool)

(assert (=> b!3524735 m!3977791))

(declare-fun m!3977793 () Bool)

(assert (=> b!3524741 m!3977793))

(declare-fun m!3977795 () Bool)

(assert (=> b!3524741 m!3977795))

(declare-fun m!3977797 () Bool)

(assert (=> b!3524720 m!3977797))

(declare-fun m!3977799 () Bool)

(assert (=> b!3524720 m!3977799))

(declare-fun m!3977801 () Bool)

(assert (=> b!3524745 m!3977801))

(declare-fun m!3977803 () Bool)

(assert (=> b!3524731 m!3977803))

(declare-fun m!3977805 () Bool)

(assert (=> b!3524742 m!3977805))

(assert (=> b!3524742 m!3977805))

(declare-fun m!3977807 () Bool)

(assert (=> b!3524742 m!3977807))

(declare-fun m!3977809 () Bool)

(assert (=> b!3524723 m!3977809))

(declare-fun m!3977811 () Bool)

(assert (=> b!3524757 m!3977811))

(declare-fun m!3977813 () Bool)

(assert (=> b!3524757 m!3977813))

(declare-fun m!3977815 () Bool)

(assert (=> b!3524739 m!3977815))

(declare-fun m!3977817 () Bool)

(assert (=> b!3524739 m!3977817))

(declare-fun m!3977819 () Bool)

(assert (=> b!3524729 m!3977819))

(check-sat b_and!251271 (not b!3524734) (not b!3524747) b_and!251273 (not b_next!91513) (not b!3524750) (not b!3524725) (not b_next!91523) (not b!3524742) (not b!3524735) (not start!327526) (not b!3524737) (not b!3524723) (not b!3524744) (not b!3524733) (not b!3524732) b_and!251277 (not b!3524756) (not b!3524724) b_and!251275 (not b!3524768) (not b_next!91519) (not b!3524722) (not b!3524736) (not b!3524753) (not b!3524720) (not b_next!91517) (not b!3524757) (not b_next!91515) (not b!3524751) (not b!3524730) (not b!3524719) (not b!3524745) b_and!251279 (not b!3524729) (not b!3524743) b_and!251281 (not b!3524741) (not b!3524738) (not b_next!91521) (not b!3524739) (not b!3524731) (not b!3524726) (not b!3524749) (not b!3524759))
(check-sat b_and!251271 b_and!251277 b_and!251275 b_and!251273 (not b_next!91519) (not b_next!91517) (not b_next!91513) (not b_next!91523) (not b_next!91515) b_and!251279 b_and!251281 (not b_next!91521))
