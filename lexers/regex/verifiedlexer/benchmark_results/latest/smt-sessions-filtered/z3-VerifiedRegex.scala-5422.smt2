; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!275956 () Bool)

(assert start!275956)

(declare-fun b!2837008 () Bool)

(declare-fun b_free!81841 () Bool)

(declare-fun b_next!82545 () Bool)

(assert (=> b!2837008 (= b_free!81841 (not b_next!82545))))

(declare-fun tp!907812 () Bool)

(declare-fun b_and!207711 () Bool)

(assert (=> b!2837008 (= tp!907812 b_and!207711)))

(declare-fun b_free!81843 () Bool)

(declare-fun b_next!82547 () Bool)

(assert (=> b!2837008 (= b_free!81843 (not b_next!82547))))

(declare-fun tp!907807 () Bool)

(declare-fun b_and!207713 () Bool)

(assert (=> b!2837008 (= tp!907807 b_and!207713)))

(declare-fun b!2837009 () Bool)

(declare-fun b_free!81845 () Bool)

(declare-fun b_next!82549 () Bool)

(assert (=> b!2837009 (= b_free!81845 (not b_next!82549))))

(declare-fun tp!907813 () Bool)

(declare-fun b_and!207715 () Bool)

(assert (=> b!2837009 (= tp!907813 b_and!207715)))

(declare-fun b_free!81847 () Bool)

(declare-fun b_next!82551 () Bool)

(assert (=> b!2837009 (= b_free!81847 (not b_next!82551))))

(declare-fun tp!907806 () Bool)

(declare-fun b_and!207717 () Bool)

(assert (=> b!2837009 (= tp!907806 b_and!207717)))

(declare-fun b!2837004 () Bool)

(declare-fun b_free!81849 () Bool)

(declare-fun b_next!82553 () Bool)

(assert (=> b!2837004 (= b_free!81849 (not b_next!82553))))

(declare-fun tp!907814 () Bool)

(declare-fun b_and!207719 () Bool)

(assert (=> b!2837004 (= tp!907814 b_and!207719)))

(declare-fun b_free!81851 () Bool)

(declare-fun b_next!82555 () Bool)

(assert (=> b!2837004 (= b_free!81851 (not b_next!82555))))

(declare-fun tp!907808 () Bool)

(declare-fun b_and!207721 () Bool)

(assert (=> b!2837004 (= tp!907808 b_and!207721)))

(declare-fun b!2836999 () Bool)

(declare-fun res!1180519 () Bool)

(declare-fun e!1796482 () Bool)

(assert (=> b!2836999 (=> (not res!1180519) (not e!1796482))))

(declare-datatypes ((C!17024 0))(
  ( (C!17025 (val!10524 Int)) )
))
(declare-datatypes ((List!33626 0))(
  ( (Nil!33502) (Cons!33502 (h!38922 C!17024) (t!232003 List!33626)) )
))
(declare-datatypes ((Regex!8421 0))(
  ( (ElementMatch!8421 (c!458400 C!17024)) (Concat!13681 (regOne!17354 Regex!8421) (regTwo!17354 Regex!8421)) (EmptyExpr!8421) (Star!8421 (reg!8750 Regex!8421)) (EmptyLang!8421) (Union!8421 (regOne!17355 Regex!8421) (regTwo!17355 Regex!8421)) )
))
(declare-datatypes ((String!36821 0))(
  ( (String!36822 (value!161698 String)) )
))
(declare-datatypes ((List!33627 0))(
  ( (Nil!33503) (Cons!33503 (h!38923 (_ BitVec 16)) (t!232004 List!33627)) )
))
(declare-datatypes ((TokenValue!5260 0))(
  ( (FloatLiteralValue!10520 (text!37265 List!33627)) (TokenValueExt!5259 (__x!22258 Int)) (Broken!26300 (value!161699 List!33627)) (Object!5383) (End!5260) (Def!5260) (Underscore!5260) (Match!5260) (Else!5260) (Error!5260) (Case!5260) (If!5260) (Extends!5260) (Abstract!5260) (Class!5260) (Val!5260) (DelimiterValue!10520 (del!5320 List!33627)) (KeywordValue!5266 (value!161700 List!33627)) (CommentValue!10520 (value!161701 List!33627)) (WhitespaceValue!10520 (value!161702 List!33627)) (IndentationValue!5260 (value!161703 List!33627)) (String!36823) (Int32!5260) (Broken!26301 (value!161704 List!33627)) (Boolean!5261) (Unit!47432) (OperatorValue!5263 (op!5320 List!33627)) (IdentifierValue!10520 (value!161705 List!33627)) (IdentifierValue!10521 (value!161706 List!33627)) (WhitespaceValue!10521 (value!161707 List!33627)) (True!10520) (False!10520) (Broken!26302 (value!161708 List!33627)) (Broken!26303 (value!161709 List!33627)) (True!10521) (RightBrace!5260) (RightBracket!5260) (Colon!5260) (Null!5260) (Comma!5260) (LeftBracket!5260) (False!10521) (LeftBrace!5260) (ImaginaryLiteralValue!5260 (text!37266 List!33627)) (StringLiteralValue!15780 (value!161710 List!33627)) (EOFValue!5260 (value!161711 List!33627)) (IdentValue!5260 (value!161712 List!33627)) (DelimiterValue!10521 (value!161713 List!33627)) (DedentValue!5260 (value!161714 List!33627)) (NewLineValue!5260 (value!161715 List!33627)) (IntegerValue!15780 (value!161716 (_ BitVec 32)) (text!37267 List!33627)) (IntegerValue!15781 (value!161717 Int) (text!37268 List!33627)) (Times!5260) (Or!5260) (Equal!5260) (Minus!5260) (Broken!26304 (value!161718 List!33627)) (And!5260) (Div!5260) (LessEqual!5260) (Mod!5260) (Concat!13682) (Not!5260) (Plus!5260) (SpaceValue!5260 (value!161719 List!33627)) (IntegerValue!15782 (value!161720 Int) (text!37269 List!33627)) (StringLiteralValue!15781 (text!37270 List!33627)) (FloatLiteralValue!10521 (text!37271 List!33627)) (BytesLiteralValue!5260 (value!161721 List!33627)) (CommentValue!10521 (value!161722 List!33627)) (StringLiteralValue!15782 (value!161723 List!33627)) (ErrorTokenValue!5260 (msg!5321 List!33627)) )
))
(declare-datatypes ((IArray!20825 0))(
  ( (IArray!20826 (innerList!10470 List!33626)) )
))
(declare-datatypes ((Conc!10410 0))(
  ( (Node!10410 (left!25276 Conc!10410) (right!25606 Conc!10410) (csize!21050 Int) (cheight!10621 Int)) (Leaf!15833 (xs!13522 IArray!20825) (csize!21051 Int)) (Empty!10410) )
))
(declare-datatypes ((BalanceConc!20458 0))(
  ( (BalanceConc!20459 (c!458401 Conc!10410)) )
))
(declare-datatypes ((TokenValueInjection!9948 0))(
  ( (TokenValueInjection!9949 (toValue!7072 Int) (toChars!6931 Int)) )
))
(declare-datatypes ((Rule!9860 0))(
  ( (Rule!9861 (regex!5030 Regex!8421) (tag!5534 String!36821) (isSeparator!5030 Bool) (transformation!5030 TokenValueInjection!9948)) )
))
(declare-datatypes ((List!33628 0))(
  ( (Nil!33504) (Cons!33504 (h!38924 Rule!9860) (t!232005 List!33628)) )
))
(declare-fun rules!4246 () List!33628)

(declare-datatypes ((Token!9462 0))(
  ( (Token!9463 (value!161724 TokenValue!5260) (rule!7458 Rule!9860) (size!26063 Int) (originalCharacters!5762 List!33626)) )
))
(declare-datatypes ((List!33629 0))(
  ( (Nil!33505) (Cons!33505 (h!38925 Token!9462) (t!232006 List!33629)) )
))
(declare-fun tokens!612 () List!33629)

(declare-datatypes ((LexerInterface!4620 0))(
  ( (LexerInterfaceExt!4617 (__x!22259 Int)) (Lexer!4618) )
))
(declare-fun thiss!27264 () LexerInterface!4620)

(declare-fun rulesProduceEachTokenIndividuallyList!1661 (LexerInterface!4620 List!33628 List!33629) Bool)

(assert (=> b!2836999 (= res!1180519 (rulesProduceEachTokenIndividuallyList!1661 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2837000 () Bool)

(declare-fun tp!907810 () Bool)

(declare-fun e!1796494 () Bool)

(declare-fun e!1796481 () Bool)

(declare-fun tokensBis!14 () List!33629)

(declare-fun inv!45472 (String!36821) Bool)

(declare-fun inv!45475 (TokenValueInjection!9948) Bool)

(assert (=> b!2837000 (= e!1796494 (and tp!907810 (inv!45472 (tag!5534 (rule!7458 (h!38925 tokensBis!14)))) (inv!45475 (transformation!5030 (rule!7458 (h!38925 tokensBis!14)))) e!1796481))))

(declare-fun b!2837001 () Bool)

(declare-fun e!1796488 () Bool)

(declare-fun tp!907811 () Bool)

(declare-fun e!1796479 () Bool)

(assert (=> b!2837001 (= e!1796488 (and tp!907811 (inv!45472 (tag!5534 (h!38924 rules!4246))) (inv!45475 (transformation!5030 (h!38924 rules!4246))) e!1796479))))

(declare-fun b!2837002 () Bool)

(declare-fun res!1180516 () Bool)

(assert (=> b!2837002 (=> (not res!1180516) (not e!1796482))))

(declare-fun subseq!496 (List!33629 List!33629) Bool)

(assert (=> b!2837002 (= res!1180516 (subseq!496 tokensBis!14 tokens!612))))

(declare-fun tp!907818 () Bool)

(declare-fun b!2837003 () Bool)

(declare-fun e!1796486 () Bool)

(declare-fun e!1796489 () Bool)

(assert (=> b!2837003 (= e!1796486 (and tp!907818 (inv!45472 (tag!5534 (rule!7458 (h!38925 tokens!612)))) (inv!45475 (transformation!5030 (rule!7458 (h!38925 tokens!612)))) e!1796489))))

(assert (=> b!2837004 (= e!1796489 (and tp!907814 tp!907808))))

(declare-fun b!2837005 () Bool)

(declare-fun tp!907805 () Bool)

(declare-fun e!1796487 () Bool)

(declare-fun e!1796485 () Bool)

(declare-fun inv!45476 (Token!9462) Bool)

(assert (=> b!2837005 (= e!1796487 (and (inv!45476 (h!38925 tokensBis!14)) e!1796485 tp!907805))))

(declare-fun tp!907809 () Bool)

(declare-fun b!2837006 () Bool)

(declare-fun inv!21 (TokenValue!5260) Bool)

(assert (=> b!2837006 (= e!1796485 (and (inv!21 (value!161724 (h!38925 tokensBis!14))) e!1796494 tp!907809))))

(declare-fun b!2837007 () Bool)

(declare-fun res!1180518 () Bool)

(assert (=> b!2837007 (=> (not res!1180518) (not e!1796482))))

(assert (=> b!2837007 (= res!1180518 (subseq!496 (t!232006 tokensBis!14) (t!232006 tokens!612)))))

(declare-fun res!1180520 () Bool)

(assert (=> start!275956 (=> (not res!1180520) (not e!1796482))))

(get-info :version)

(assert (=> start!275956 (= res!1180520 ((_ is Lexer!4618) thiss!27264))))

(assert (=> start!275956 e!1796482))

(assert (=> start!275956 true))

(declare-fun e!1796484 () Bool)

(assert (=> start!275956 e!1796484))

(assert (=> start!275956 e!1796487))

(declare-fun e!1796492 () Bool)

(assert (=> start!275956 e!1796492))

(assert (=> b!2837008 (= e!1796481 (and tp!907812 tp!907807))))

(assert (=> b!2837009 (= e!1796479 (and tp!907813 tp!907806))))

(declare-fun b!2837010 () Bool)

(declare-fun res!1180515 () Bool)

(assert (=> b!2837010 (=> (not res!1180515) (not e!1796482))))

(assert (=> b!2837010 (= res!1180515 (and (not ((_ is Nil!33505) tokensBis!14)) ((_ is Cons!33505) tokens!612) (= (h!38925 tokensBis!14) (h!38925 tokens!612))))))

(declare-fun b!2837011 () Bool)

(assert (=> b!2837011 (= e!1796482 false)))

(declare-fun lt!1011461 () Bool)

(assert (=> b!2837011 (= lt!1011461 (rulesProduceEachTokenIndividuallyList!1661 thiss!27264 rules!4246 (t!232006 tokens!612)))))

(declare-fun b!2837012 () Bool)

(declare-fun res!1180517 () Bool)

(assert (=> b!2837012 (=> (not res!1180517) (not e!1796482))))

(declare-fun isEmpty!18475 (List!33628) Bool)

(assert (=> b!2837012 (= res!1180517 (not (isEmpty!18475 rules!4246)))))

(declare-fun b!2837013 () Bool)

(declare-fun tp!907815 () Bool)

(declare-fun e!1796495 () Bool)

(assert (=> b!2837013 (= e!1796492 (and (inv!45476 (h!38925 tokens!612)) e!1796495 tp!907815))))

(declare-fun b!2837014 () Bool)

(declare-fun tp!907817 () Bool)

(assert (=> b!2837014 (= e!1796484 (and e!1796488 tp!907817))))

(declare-fun b!2837015 () Bool)

(declare-fun res!1180521 () Bool)

(assert (=> b!2837015 (=> (not res!1180521) (not e!1796482))))

(declare-fun rulesInvariant!4036 (LexerInterface!4620 List!33628) Bool)

(assert (=> b!2837015 (= res!1180521 (rulesInvariant!4036 thiss!27264 rules!4246))))

(declare-fun b!2837016 () Bool)

(declare-fun tp!907816 () Bool)

(assert (=> b!2837016 (= e!1796495 (and (inv!21 (value!161724 (h!38925 tokens!612))) e!1796486 tp!907816))))

(assert (= (and start!275956 res!1180520) b!2837012))

(assert (= (and b!2837012 res!1180517) b!2837015))

(assert (= (and b!2837015 res!1180521) b!2837002))

(assert (= (and b!2837002 res!1180516) b!2836999))

(assert (= (and b!2836999 res!1180519) b!2837010))

(assert (= (and b!2837010 res!1180515) b!2837007))

(assert (= (and b!2837007 res!1180518) b!2837011))

(assert (= b!2837001 b!2837009))

(assert (= b!2837014 b!2837001))

(assert (= (and start!275956 ((_ is Cons!33504) rules!4246)) b!2837014))

(assert (= b!2837000 b!2837008))

(assert (= b!2837006 b!2837000))

(assert (= b!2837005 b!2837006))

(assert (= (and start!275956 ((_ is Cons!33505) tokensBis!14)) b!2837005))

(assert (= b!2837003 b!2837004))

(assert (= b!2837016 b!2837003))

(assert (= b!2837013 b!2837016))

(assert (= (and start!275956 ((_ is Cons!33505) tokens!612)) b!2837013))

(declare-fun m!3266735 () Bool)

(assert (=> b!2837012 m!3266735))

(declare-fun m!3266737 () Bool)

(assert (=> b!2837001 m!3266737))

(declare-fun m!3266739 () Bool)

(assert (=> b!2837001 m!3266739))

(declare-fun m!3266741 () Bool)

(assert (=> b!2837016 m!3266741))

(declare-fun m!3266743 () Bool)

(assert (=> b!2837002 m!3266743))

(declare-fun m!3266745 () Bool)

(assert (=> b!2837005 m!3266745))

(declare-fun m!3266747 () Bool)

(assert (=> b!2837003 m!3266747))

(declare-fun m!3266749 () Bool)

(assert (=> b!2837003 m!3266749))

(declare-fun m!3266751 () Bool)

(assert (=> b!2837007 m!3266751))

(declare-fun m!3266753 () Bool)

(assert (=> b!2837000 m!3266753))

(declare-fun m!3266755 () Bool)

(assert (=> b!2837000 m!3266755))

(declare-fun m!3266757 () Bool)

(assert (=> b!2837015 m!3266757))

(declare-fun m!3266759 () Bool)

(assert (=> b!2837006 m!3266759))

(declare-fun m!3266761 () Bool)

(assert (=> b!2837011 m!3266761))

(declare-fun m!3266763 () Bool)

(assert (=> b!2837013 m!3266763))

(declare-fun m!3266765 () Bool)

(assert (=> b!2836999 m!3266765))

(check-sat (not b!2837014) (not b_next!82545) (not b!2837002) (not b!2836999) (not b!2837006) (not b_next!82553) (not b!2837011) (not b!2837015) (not b!2837007) b_and!207719 (not b!2837003) (not b_next!82551) (not b_next!82547) (not b_next!82555) b_and!207715 b_and!207717 b_and!207711 (not b!2837005) (not b!2837001) (not b!2837016) b_and!207721 b_and!207713 (not b!2837013) (not b!2837000) (not b_next!82549) (not b!2837012))
(check-sat b_and!207719 (not b_next!82545) (not b_next!82553) (not b_next!82549) (not b_next!82551) (not b_next!82547) (not b_next!82555) b_and!207715 b_and!207717 b_and!207711 b_and!207721 b_and!207713)
