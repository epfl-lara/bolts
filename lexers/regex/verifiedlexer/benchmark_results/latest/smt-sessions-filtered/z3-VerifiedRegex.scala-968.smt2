; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48864 () Bool)

(assert start!48864)

(declare-fun b!531622 () Bool)

(declare-fun b_free!14361 () Bool)

(declare-fun b_next!14377 () Bool)

(assert (=> b!531622 (= b_free!14361 (not b_next!14377))))

(declare-fun tp!169590 () Bool)

(declare-fun b_and!51939 () Bool)

(assert (=> b!531622 (= tp!169590 b_and!51939)))

(declare-fun b_free!14363 () Bool)

(declare-fun b_next!14379 () Bool)

(assert (=> b!531622 (= b_free!14363 (not b_next!14379))))

(declare-fun tp!169598 () Bool)

(declare-fun b_and!51941 () Bool)

(assert (=> b!531622 (= tp!169598 b_and!51941)))

(declare-fun b!531618 () Bool)

(declare-fun b_free!14365 () Bool)

(declare-fun b_next!14381 () Bool)

(assert (=> b!531618 (= b_free!14365 (not b_next!14381))))

(declare-fun tp!169595 () Bool)

(declare-fun b_and!51943 () Bool)

(assert (=> b!531618 (= tp!169595 b_and!51943)))

(declare-fun b_free!14367 () Bool)

(declare-fun b_next!14383 () Bool)

(assert (=> b!531618 (= b_free!14367 (not b_next!14383))))

(declare-fun tp!169594 () Bool)

(declare-fun b_and!51945 () Bool)

(assert (=> b!531618 (= tp!169594 b_and!51945)))

(declare-fun b!531617 () Bool)

(declare-fun res!224543 () Bool)

(declare-fun e!320118 () Bool)

(assert (=> b!531617 (=> (not res!224543) (not e!320118))))

(declare-datatypes ((String!6478 0))(
  ( (String!6479 (value!31146 String)) )
))
(declare-datatypes ((C!3436 0))(
  ( (C!3437 (val!1944 Int)) )
))
(declare-datatypes ((Regex!1257 0))(
  ( (ElementMatch!1257 (c!101456 C!3436)) (Concat!2204 (regOne!3026 Regex!1257) (regTwo!3026 Regex!1257)) (EmptyExpr!1257) (Star!1257 (reg!1586 Regex!1257)) (EmptyLang!1257) (Union!1257 (regOne!3027 Regex!1257) (regTwo!3027 Regex!1257)) )
))
(declare-datatypes ((List!5095 0))(
  ( (Nil!5085) (Cons!5085 (h!10486 (_ BitVec 16)) (t!73782 List!5095)) )
))
(declare-datatypes ((TokenValue!947 0))(
  ( (FloatLiteralValue!1894 (text!7074 List!5095)) (TokenValueExt!946 (__x!3792 Int)) (Broken!4735 (value!31147 List!5095)) (Object!956) (End!947) (Def!947) (Underscore!947) (Match!947) (Else!947) (Error!947) (Case!947) (If!947) (Extends!947) (Abstract!947) (Class!947) (Val!947) (DelimiterValue!1894 (del!1007 List!5095)) (KeywordValue!953 (value!31148 List!5095)) (CommentValue!1894 (value!31149 List!5095)) (WhitespaceValue!1894 (value!31150 List!5095)) (IndentationValue!947 (value!31151 List!5095)) (String!6480) (Int32!947) (Broken!4736 (value!31152 List!5095)) (Boolean!948) (Unit!8870) (OperatorValue!950 (op!1007 List!5095)) (IdentifierValue!1894 (value!31153 List!5095)) (IdentifierValue!1895 (value!31154 List!5095)) (WhitespaceValue!1895 (value!31155 List!5095)) (True!1894) (False!1894) (Broken!4737 (value!31156 List!5095)) (Broken!4738 (value!31157 List!5095)) (True!1895) (RightBrace!947) (RightBracket!947) (Colon!947) (Null!947) (Comma!947) (LeftBracket!947) (False!1895) (LeftBrace!947) (ImaginaryLiteralValue!947 (text!7075 List!5095)) (StringLiteralValue!2841 (value!31158 List!5095)) (EOFValue!947 (value!31159 List!5095)) (IdentValue!947 (value!31160 List!5095)) (DelimiterValue!1895 (value!31161 List!5095)) (DedentValue!947 (value!31162 List!5095)) (NewLineValue!947 (value!31163 List!5095)) (IntegerValue!2841 (value!31164 (_ BitVec 32)) (text!7076 List!5095)) (IntegerValue!2842 (value!31165 Int) (text!7077 List!5095)) (Times!947) (Or!947) (Equal!947) (Minus!947) (Broken!4739 (value!31166 List!5095)) (And!947) (Div!947) (LessEqual!947) (Mod!947) (Concat!2205) (Not!947) (Plus!947) (SpaceValue!947 (value!31167 List!5095)) (IntegerValue!2843 (value!31168 Int) (text!7078 List!5095)) (StringLiteralValue!2842 (text!7079 List!5095)) (FloatLiteralValue!1895 (text!7080 List!5095)) (BytesLiteralValue!947 (value!31169 List!5095)) (CommentValue!1895 (value!31170 List!5095)) (StringLiteralValue!2843 (value!31171 List!5095)) (ErrorTokenValue!947 (msg!1008 List!5095)) )
))
(declare-datatypes ((List!5096 0))(
  ( (Nil!5086) (Cons!5086 (h!10487 C!3436) (t!73783 List!5096)) )
))
(declare-datatypes ((IArray!3281 0))(
  ( (IArray!3282 (innerList!1698 List!5096)) )
))
(declare-datatypes ((Conc!1640 0))(
  ( (Node!1640 (left!4294 Conc!1640) (right!4624 Conc!1640) (csize!3510 Int) (cheight!1851 Int)) (Leaf!2609 (xs!4277 IArray!3281) (csize!3511 Int)) (Empty!1640) )
))
(declare-datatypes ((BalanceConc!3288 0))(
  ( (BalanceConc!3289 (c!101457 Conc!1640)) )
))
(declare-datatypes ((TokenValueInjection!1662 0))(
  ( (TokenValueInjection!1663 (toValue!1766 Int) (toChars!1625 Int)) )
))
(declare-datatypes ((Rule!1646 0))(
  ( (Rule!1647 (regex!923 Regex!1257) (tag!1185 String!6478) (isSeparator!923 Bool) (transformation!923 TokenValueInjection!1662)) )
))
(declare-datatypes ((List!5097 0))(
  ( (Nil!5087) (Cons!5087 (h!10488 Rule!1646) (t!73784 List!5097)) )
))
(declare-fun rules!3103 () List!5097)

(declare-fun isEmpty!3680 (List!5097) Bool)

(assert (=> b!531617 (= res!224543 (not (isEmpty!3680 rules!3103)))))

(declare-fun e!320117 () Bool)

(assert (=> b!531618 (= e!320117 (and tp!169595 tp!169594))))

(declare-fun b!531619 () Bool)

(declare-fun res!224542 () Bool)

(assert (=> b!531619 (=> (not res!224542) (not e!320118))))

(declare-datatypes ((LexerInterface!809 0))(
  ( (LexerInterfaceExt!806 (__x!3793 Int)) (Lexer!807) )
))
(declare-fun thiss!22590 () LexerInterface!809)

(declare-fun rulesInvariant!772 (LexerInterface!809 List!5097) Bool)

(assert (=> b!531619 (= res!224542 (rulesInvariant!772 thiss!22590 rules!3103))))

(declare-fun b!531620 () Bool)

(declare-fun e!320124 () Bool)

(assert (=> b!531620 (= e!320118 e!320124)))

(declare-fun res!224541 () Bool)

(assert (=> b!531620 (=> (not res!224541) (not e!320124))))

(declare-fun lt!218824 () List!5096)

(declare-fun input!2705 () List!5096)

(assert (=> b!531620 (= res!224541 (= lt!218824 input!2705))))

(declare-datatypes ((Token!1582 0))(
  ( (Token!1583 (value!31172 TokenValue!947) (rule!1623 Rule!1646) (size!4114 Int) (originalCharacters!962 List!5096)) )
))
(declare-fun token!491 () Token!1582)

(declare-fun list!2115 (BalanceConc!3288) List!5096)

(declare-fun charsOf!552 (Token!1582) BalanceConc!3288)

(assert (=> b!531620 (= lt!218824 (list!2115 (charsOf!552 token!491)))))

(declare-fun b!531621 () Bool)

(declare-fun e!320121 () Bool)

(declare-fun e!320113 () Bool)

(assert (=> b!531621 (= e!320121 e!320113)))

(declare-fun res!224536 () Bool)

(assert (=> b!531621 (=> (not res!224536) (not e!320113))))

(declare-fun suffix!1342 () List!5096)

(declare-datatypes ((tuple2!6200 0))(
  ( (tuple2!6201 (_1!3364 Token!1582) (_2!3364 List!5096)) )
))
(declare-fun lt!218831 () tuple2!6200)

(assert (=> b!531621 (= res!224536 (and (= (_1!3364 lt!218831) token!491) (= (_2!3364 lt!218831) suffix!1342)))))

(declare-datatypes ((Option!1273 0))(
  ( (None!1272) (Some!1272 (v!16077 tuple2!6200)) )
))
(declare-fun lt!218826 () Option!1273)

(declare-fun get!1899 (Option!1273) tuple2!6200)

(assert (=> b!531621 (= lt!218831 (get!1899 lt!218826))))

(declare-fun e!320119 () Bool)

(declare-fun e!320125 () Bool)

(declare-fun tp!169593 () Bool)

(declare-fun b!531623 () Bool)

(declare-fun inv!6377 (String!6478) Bool)

(declare-fun inv!6380 (TokenValueInjection!1662) Bool)

(assert (=> b!531623 (= e!320119 (and tp!169593 (inv!6377 (tag!1185 (h!10488 rules!3103))) (inv!6380 (transformation!923 (h!10488 rules!3103))) e!320125))))

(declare-fun b!531624 () Bool)

(declare-datatypes ((Unit!8871 0))(
  ( (Unit!8872) )
))
(declare-fun e!320110 () Unit!8871)

(declare-fun Unit!8873 () Unit!8871)

(assert (=> b!531624 (= e!320110 Unit!8873)))

(assert (=> b!531624 false))

(declare-fun b!531625 () Bool)

(declare-fun e!320111 () Bool)

(assert (=> b!531625 (= e!320113 e!320111)))

(declare-fun res!224537 () Bool)

(assert (=> b!531625 (=> (not res!224537) (not e!320111))))

(declare-fun lt!218832 () Option!1273)

(get-info :version)

(assert (=> b!531625 (= res!224537 ((_ is Some!1272) lt!218832))))

(declare-fun maxPrefix!507 (LexerInterface!809 List!5097 List!5096) Option!1273)

(assert (=> b!531625 (= lt!218832 (maxPrefix!507 thiss!22590 rules!3103 input!2705))))

(declare-fun b!531626 () Bool)

(declare-fun res!224535 () Bool)

(assert (=> b!531626 (=> (not res!224535) (not e!320118))))

(declare-fun isEmpty!3681 (List!5096) Bool)

(assert (=> b!531626 (= res!224535 (not (isEmpty!3681 input!2705)))))

(declare-fun b!531627 () Bool)

(declare-fun res!224540 () Bool)

(assert (=> b!531627 (=> (not res!224540) (not e!320111))))

(declare-fun lt!218828 () List!5096)

(declare-fun ++!1411 (List!5096 List!5096) List!5096)

(assert (=> b!531627 (= res!224540 (= (++!1411 lt!218824 suffix!1342) lt!218828))))

(declare-fun b!531628 () Bool)

(declare-fun lt!218835 () Int)

(declare-fun size!4115 (List!5096) Int)

(assert (=> b!531628 (= e!320111 (not (>= (size!4115 input!2705) lt!218835)))))

(declare-fun lt!218825 () List!5096)

(declare-fun isPrefix!565 (List!5096 List!5096) Bool)

(assert (=> b!531628 (isPrefix!565 lt!218825 (++!1411 lt!218825 (_2!3364 (v!16077 lt!218832))))))

(declare-fun lt!218834 () Unit!8871)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!416 (List!5096 List!5096) Unit!8871)

(assert (=> b!531628 (= lt!218834 (lemmaConcatTwoListThenFirstIsPrefix!416 lt!218825 (_2!3364 (v!16077 lt!218832))))))

(declare-fun lt!218830 () Unit!8871)

(declare-fun lemmaCharactersSize!2 (Token!1582) Unit!8871)

(assert (=> b!531628 (= lt!218830 (lemmaCharactersSize!2 token!491))))

(declare-fun lt!218829 () Unit!8871)

(assert (=> b!531628 (= lt!218829 (lemmaCharactersSize!2 (_1!3364 (v!16077 lt!218832))))))

(declare-fun lt!218833 () Unit!8871)

(assert (=> b!531628 (= lt!218833 e!320110)))

(declare-fun c!101455 () Bool)

(assert (=> b!531628 (= c!101455 (> lt!218835 (size!4115 lt!218824)))))

(assert (=> b!531628 (= lt!218835 (size!4115 lt!218825))))

(assert (=> b!531628 (= lt!218825 (list!2115 (charsOf!552 (_1!3364 (v!16077 lt!218832)))))))

(assert (=> b!531628 (= lt!218832 (Some!1272 (v!16077 lt!218832)))))

(declare-fun lt!218827 () Unit!8871)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!8 (List!5096 List!5096 List!5096 List!5096) Unit!8871)

(assert (=> b!531628 (= lt!218827 (lemmaConcatSameAndSameSizesThenSameLists!8 lt!218824 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!531629 () Bool)

(declare-fun Unit!8874 () Unit!8871)

(assert (=> b!531629 (= e!320110 Unit!8874)))

(declare-fun b!531630 () Bool)

(declare-fun e!320126 () Bool)

(declare-fun tp_is_empty!2869 () Bool)

(declare-fun tp!169592 () Bool)

(assert (=> b!531630 (= e!320126 (and tp_is_empty!2869 tp!169592))))

(declare-fun b!531631 () Bool)

(declare-fun e!320115 () Bool)

(declare-fun tp!169589 () Bool)

(assert (=> b!531631 (= e!320115 (and e!320119 tp!169589))))

(declare-fun tp!169597 () Bool)

(declare-fun b!531632 () Bool)

(declare-fun e!320116 () Bool)

(assert (=> b!531632 (= e!320116 (and tp!169597 (inv!6377 (tag!1185 (rule!1623 token!491))) (inv!6380 (transformation!923 (rule!1623 token!491))) e!320117))))

(declare-fun b!531633 () Bool)

(assert (=> b!531633 (= e!320124 e!320121)))

(declare-fun res!224539 () Bool)

(assert (=> b!531633 (=> (not res!224539) (not e!320121))))

(declare-fun isDefined!1085 (Option!1273) Bool)

(assert (=> b!531633 (= res!224539 (isDefined!1085 lt!218826))))

(assert (=> b!531633 (= lt!218826 (maxPrefix!507 thiss!22590 rules!3103 lt!218828))))

(assert (=> b!531633 (= lt!218828 (++!1411 input!2705 suffix!1342))))

(assert (=> b!531622 (= e!320125 (and tp!169590 tp!169598))))

(declare-fun res!224538 () Bool)

(assert (=> start!48864 (=> (not res!224538) (not e!320118))))

(assert (=> start!48864 (= res!224538 ((_ is Lexer!807) thiss!22590))))

(assert (=> start!48864 e!320118))

(assert (=> start!48864 e!320126))

(assert (=> start!48864 e!320115))

(declare-fun e!320122 () Bool)

(declare-fun inv!6381 (Token!1582) Bool)

(assert (=> start!48864 (and (inv!6381 token!491) e!320122)))

(assert (=> start!48864 true))

(declare-fun e!320123 () Bool)

(assert (=> start!48864 e!320123))

(declare-fun b!531634 () Bool)

(declare-fun tp!169596 () Bool)

(assert (=> b!531634 (= e!320123 (and tp_is_empty!2869 tp!169596))))

(declare-fun b!531635 () Bool)

(declare-fun tp!169591 () Bool)

(declare-fun inv!21 (TokenValue!947) Bool)

(assert (=> b!531635 (= e!320122 (and (inv!21 (value!31172 token!491)) e!320116 tp!169591))))

(assert (= (and start!48864 res!224538) b!531617))

(assert (= (and b!531617 res!224543) b!531619))

(assert (= (and b!531619 res!224542) b!531626))

(assert (= (and b!531626 res!224535) b!531620))

(assert (= (and b!531620 res!224541) b!531633))

(assert (= (and b!531633 res!224539) b!531621))

(assert (= (and b!531621 res!224536) b!531625))

(assert (= (and b!531625 res!224537) b!531627))

(assert (= (and b!531627 res!224540) b!531628))

(assert (= (and b!531628 c!101455) b!531624))

(assert (= (and b!531628 (not c!101455)) b!531629))

(assert (= (and start!48864 ((_ is Cons!5086) suffix!1342)) b!531630))

(assert (= b!531623 b!531622))

(assert (= b!531631 b!531623))

(assert (= (and start!48864 ((_ is Cons!5087) rules!3103)) b!531631))

(assert (= b!531632 b!531618))

(assert (= b!531635 b!531632))

(assert (= start!48864 b!531635))

(assert (= (and start!48864 ((_ is Cons!5086) input!2705)) b!531634))

(declare-fun m!776659 () Bool)

(assert (=> b!531621 m!776659))

(declare-fun m!776661 () Bool)

(assert (=> start!48864 m!776661))

(declare-fun m!776663 () Bool)

(assert (=> b!531627 m!776663))

(declare-fun m!776665 () Bool)

(assert (=> b!531623 m!776665))

(declare-fun m!776667 () Bool)

(assert (=> b!531623 m!776667))

(declare-fun m!776669 () Bool)

(assert (=> b!531628 m!776669))

(declare-fun m!776671 () Bool)

(assert (=> b!531628 m!776671))

(declare-fun m!776673 () Bool)

(assert (=> b!531628 m!776673))

(declare-fun m!776675 () Bool)

(assert (=> b!531628 m!776675))

(declare-fun m!776677 () Bool)

(assert (=> b!531628 m!776677))

(assert (=> b!531628 m!776671))

(declare-fun m!776679 () Bool)

(assert (=> b!531628 m!776679))

(declare-fun m!776681 () Bool)

(assert (=> b!531628 m!776681))

(declare-fun m!776683 () Bool)

(assert (=> b!531628 m!776683))

(declare-fun m!776685 () Bool)

(assert (=> b!531628 m!776685))

(assert (=> b!531628 m!776685))

(declare-fun m!776687 () Bool)

(assert (=> b!531628 m!776687))

(declare-fun m!776689 () Bool)

(assert (=> b!531628 m!776689))

(declare-fun m!776691 () Bool)

(assert (=> b!531619 m!776691))

(declare-fun m!776693 () Bool)

(assert (=> b!531633 m!776693))

(declare-fun m!776695 () Bool)

(assert (=> b!531633 m!776695))

(declare-fun m!776697 () Bool)

(assert (=> b!531633 m!776697))

(declare-fun m!776699 () Bool)

(assert (=> b!531620 m!776699))

(assert (=> b!531620 m!776699))

(declare-fun m!776701 () Bool)

(assert (=> b!531620 m!776701))

(declare-fun m!776703 () Bool)

(assert (=> b!531632 m!776703))

(declare-fun m!776705 () Bool)

(assert (=> b!531632 m!776705))

(declare-fun m!776707 () Bool)

(assert (=> b!531625 m!776707))

(declare-fun m!776709 () Bool)

(assert (=> b!531617 m!776709))

(declare-fun m!776711 () Bool)

(assert (=> b!531626 m!776711))

(declare-fun m!776713 () Bool)

(assert (=> b!531635 m!776713))

(check-sat (not b_next!14383) (not b_next!14379) (not b_next!14377) (not b!531623) (not start!48864) (not b_next!14381) (not b!531632) b_and!51941 (not b!531628) b_and!51939 (not b!531621) tp_is_empty!2869 (not b!531631) (not b!531635) (not b!531630) (not b!531626) (not b!531633) (not b!531620) (not b!531634) (not b!531619) (not b!531617) (not b!531625) (not b!531627) b_and!51945 b_and!51943)
(check-sat (not b_next!14383) (not b_next!14379) (not b_next!14377) (not b_next!14381) b_and!51941 b_and!51939 b_and!51945 b_and!51943)
