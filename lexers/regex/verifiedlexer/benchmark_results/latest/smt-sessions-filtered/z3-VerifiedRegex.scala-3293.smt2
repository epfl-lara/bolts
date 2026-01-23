; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188856 () Bool)

(assert start!188856)

(declare-fun res!841804 () Bool)

(declare-fun e!1203400 () Bool)

(assert (=> start!188856 (=> (not res!841804) (not e!1203400))))

(declare-fun from!519 () Int)

(assert (=> start!188856 (= res!841804 (<= 0 from!519))))

(assert (=> start!188856 e!1203400))

(assert (=> start!188856 true))

(declare-datatypes ((List!21103 0))(
  ( (Nil!21021) (Cons!21021 (h!26422 (_ BitVec 16)) (t!175102 List!21103)) )
))
(declare-datatypes ((TokenValue!3862 0))(
  ( (FloatLiteralValue!7724 (text!27479 List!21103)) (TokenValueExt!3861 (__x!13223 Int)) (Broken!19310 (value!117660 List!21103)) (Object!3943) (End!3862) (Def!3862) (Underscore!3862) (Match!3862) (Else!3862) (Error!3862) (Case!3862) (If!3862) (Extends!3862) (Abstract!3862) (Class!3862) (Val!3862) (DelimiterValue!7724 (del!3922 List!21103)) (KeywordValue!3868 (value!117661 List!21103)) (CommentValue!7724 (value!117662 List!21103)) (WhitespaceValue!7724 (value!117663 List!21103)) (IndentationValue!3862 (value!117664 List!21103)) (String!24299) (Int32!3862) (Broken!19311 (value!117665 List!21103)) (Boolean!3863) (Unit!35475) (OperatorValue!3865 (op!3922 List!21103)) (IdentifierValue!7724 (value!117666 List!21103)) (IdentifierValue!7725 (value!117667 List!21103)) (WhitespaceValue!7725 (value!117668 List!21103)) (True!7724) (False!7724) (Broken!19312 (value!117669 List!21103)) (Broken!19313 (value!117670 List!21103)) (True!7725) (RightBrace!3862) (RightBracket!3862) (Colon!3862) (Null!3862) (Comma!3862) (LeftBracket!3862) (False!7725) (LeftBrace!3862) (ImaginaryLiteralValue!3862 (text!27480 List!21103)) (StringLiteralValue!11586 (value!117671 List!21103)) (EOFValue!3862 (value!117672 List!21103)) (IdentValue!3862 (value!117673 List!21103)) (DelimiterValue!7725 (value!117674 List!21103)) (DedentValue!3862 (value!117675 List!21103)) (NewLineValue!3862 (value!117676 List!21103)) (IntegerValue!11586 (value!117677 (_ BitVec 32)) (text!27481 List!21103)) (IntegerValue!11587 (value!117678 Int) (text!27482 List!21103)) (Times!3862) (Or!3862) (Equal!3862) (Minus!3862) (Broken!19314 (value!117679 List!21103)) (And!3862) (Div!3862) (LessEqual!3862) (Mod!3862) (Concat!9013) (Not!3862) (Plus!3862) (SpaceValue!3862 (value!117680 List!21103)) (IntegerValue!11588 (value!117681 Int) (text!27483 List!21103)) (StringLiteralValue!11587 (text!27484 List!21103)) (FloatLiteralValue!7725 (text!27485 List!21103)) (BytesLiteralValue!3862 (value!117682 List!21103)) (CommentValue!7725 (value!117683 List!21103)) (StringLiteralValue!11588 (value!117684 List!21103)) (ErrorTokenValue!3862 (msg!3923 List!21103)) )
))
(declare-datatypes ((Regex!5151 0))(
  ( (ElementMatch!5151 (c!308088 (_ BitVec 16))) (Concat!9014 (regOne!10814 Regex!5151) (regTwo!10814 Regex!5151)) (EmptyExpr!5151) (Star!5151 (reg!5480 Regex!5151)) (EmptyLang!5151) (Union!5151 (regOne!10815 Regex!5151) (regTwo!10815 Regex!5151)) )
))
(declare-datatypes ((String!24300 0))(
  ( (String!24301 (value!117685 String)) )
))
(declare-datatypes ((IArray!14001 0))(
  ( (IArray!14002 (innerList!7058 List!21103)) )
))
(declare-datatypes ((Conc!6998 0))(
  ( (Node!6998 (left!16887 Conc!6998) (right!17217 Conc!6998) (csize!14226 Int) (cheight!7209 Int)) (Leaf!10292 (xs!9888 IArray!14001) (csize!14227 Int)) (Empty!6998) )
))
(declare-datatypes ((BalanceConc!13812 0))(
  ( (BalanceConc!13813 (c!308089 Conc!6998)) )
))
(declare-datatypes ((TokenValueInjection!7308 0))(
  ( (TokenValueInjection!7309 (toValue!5331 Int) (toChars!5190 Int)) )
))
(declare-datatypes ((Rule!7252 0))(
  ( (Rule!7253 (regex!3726 Regex!5151) (tag!4140 String!24300) (isSeparator!3726 Bool) (transformation!3726 TokenValueInjection!7308)) )
))
(declare-datatypes ((Token!7004 0))(
  ( (Token!7005 (value!117686 TokenValue!3862) (rule!5919 Rule!7252) (size!16706 Int) (originalCharacters!4533 List!21103)) )
))
(declare-datatypes ((List!21104 0))(
  ( (Nil!21022) (Cons!21022 (h!26423 Token!7004) (t!175103 List!21104)) )
))
(declare-datatypes ((IArray!14003 0))(
  ( (IArray!14004 (innerList!7059 List!21104)) )
))
(declare-datatypes ((Conc!6999 0))(
  ( (Node!6999 (left!16888 Conc!6999) (right!17218 Conc!6999) (csize!14228 Int) (cheight!7210 Int)) (Leaf!10293 (xs!9889 IArray!14003) (csize!14229 Int)) (Empty!6999) )
))
(declare-datatypes ((List!21105 0))(
  ( (Nil!21023) (Cons!21023 (h!26424 Rule!7252) (t!175104 List!21105)) )
))
(declare-datatypes ((BalanceConc!13814 0))(
  ( (BalanceConc!13815 (c!308090 Conc!6999)) )
))
(declare-datatypes ((PrintableTokens!1264 0))(
  ( (PrintableTokens!1265 (rules!15072 List!21105) (tokens!2464 BalanceConc!13814)) )
))
(declare-fun obj!5 () PrintableTokens!1264)

(declare-fun e!1203404 () Bool)

(declare-fun inv!28028 (PrintableTokens!1264) Bool)

(assert (=> start!188856 (and (inv!28028 obj!5) e!1203404)))

(declare-fun b!1886047 () Bool)

(declare-fun e!1203403 () Bool)

(declare-fun e!1203399 () Bool)

(assert (=> b!1886047 (= e!1203403 e!1203399)))

(declare-fun res!841806 () Bool)

(assert (=> b!1886047 (=> (not res!841806) (not e!1203399))))

(declare-fun e!1203402 () Bool)

(assert (=> b!1886047 (= res!841806 e!1203402)))

(declare-fun res!841803 () Bool)

(assert (=> b!1886047 (=> res!841803 e!1203402)))

(declare-fun lt!723483 () Token!7004)

(get-info :version)

(assert (=> b!1886047 (= res!841803 (not ((_ is StringLiteralValue!11587) (value!117686 lt!723483))))))

(declare-fun apply!5555 (BalanceConc!13814 Int) Token!7004)

(assert (=> b!1886047 (= lt!723483 (apply!5555 (tokens!2464 obj!5) from!519))))

(declare-fun b!1886048 () Bool)

(assert (=> b!1886048 (= e!1203402 true)))

(declare-fun lt!723482 () BalanceConc!13812)

(declare-fun seqFromList!2632 (List!21103) BalanceConc!13812)

(assert (=> b!1886048 (= lt!723482 (seqFromList!2632 (Cons!21021 #x0022 (Cons!21021 #x0069 (Cons!21021 #x0064 (Cons!21021 #x0022 Nil!21021))))))))

(declare-fun b!1886049 () Bool)

(declare-fun e!1203401 () Bool)

(declare-fun tp!537726 () Bool)

(declare-fun inv!28029 (Conc!6999) Bool)

(assert (=> b!1886049 (= e!1203401 (and (inv!28029 (c!308090 (tokens!2464 obj!5))) tp!537726))))

(declare-fun b!1886050 () Bool)

(declare-fun tp!537725 () Bool)

(declare-fun inv!28030 (BalanceConc!13814) Bool)

(assert (=> b!1886050 (= e!1203404 (and tp!537725 (inv!28030 (tokens!2464 obj!5)) e!1203401))))

(declare-fun b!1886051 () Bool)

(assert (=> b!1886051 (= e!1203400 e!1203403)))

(declare-fun res!841805 () Bool)

(assert (=> b!1886051 (=> (not res!841805) (not e!1203403))))

(declare-fun lt!723484 () Int)

(assert (=> b!1886051 (= res!841805 (and (<= from!519 lt!723484) (< from!519 lt!723484)))))

(declare-fun size!16707 (PrintableTokens!1264) Int)

(assert (=> b!1886051 (= lt!723484 (size!16707 obj!5))))

(declare-fun returnNextInt!4 () Bool)

(declare-fun b!1886052 () Bool)

(assert (=> b!1886052 (= e!1203399 (and (or (not ((_ is IntegerValue!11588) (value!117686 lt!723483))) (not returnNextInt!4)) (>= (- lt!723484 (+ 1 from!519)) (- lt!723484 from!519))))))

(assert (= (and start!188856 res!841804) b!1886051))

(assert (= (and b!1886051 res!841805) b!1886047))

(assert (= (and b!1886047 (not res!841803)) b!1886048))

(assert (= (and b!1886047 res!841806) b!1886052))

(assert (= b!1886050 b!1886049))

(assert (= start!188856 b!1886050))

(declare-fun m!2318823 () Bool)

(assert (=> b!1886048 m!2318823))

(declare-fun m!2318825 () Bool)

(assert (=> b!1886050 m!2318825))

(declare-fun m!2318827 () Bool)

(assert (=> b!1886049 m!2318827))

(declare-fun m!2318829 () Bool)

(assert (=> b!1886047 m!2318829))

(declare-fun m!2318831 () Bool)

(assert (=> start!188856 m!2318831))

(declare-fun m!2318833 () Bool)

(assert (=> b!1886051 m!2318833))

(check-sat (not b!1886048) (not b!1886047) (not b!1886049) (not b!1886050) (not start!188856) (not b!1886051))
(check-sat)
