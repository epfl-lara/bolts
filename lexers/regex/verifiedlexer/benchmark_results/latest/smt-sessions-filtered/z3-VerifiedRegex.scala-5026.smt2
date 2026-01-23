; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254158 () Bool)

(assert start!254158)

(declare-fun b!2613691 () Bool)

(declare-fun b_free!73549 () Bool)

(declare-fun b_next!74253 () Bool)

(assert (=> b!2613691 (= b_free!73549 (not b_next!74253))))

(declare-fun tp!830210 () Bool)

(declare-fun b_and!191167 () Bool)

(assert (=> b!2613691 (= tp!830210 b_and!191167)))

(declare-fun b_free!73551 () Bool)

(declare-fun b_next!74255 () Bool)

(assert (=> b!2613691 (= b_free!73551 (not b_next!74255))))

(declare-fun tp!830204 () Bool)

(declare-fun b_and!191169 () Bool)

(assert (=> b!2613691 (= tp!830204 b_and!191169)))

(declare-fun b!2613693 () Bool)

(declare-fun b_free!73553 () Bool)

(declare-fun b_next!74257 () Bool)

(assert (=> b!2613693 (= b_free!73553 (not b_next!74257))))

(declare-fun tp!830208 () Bool)

(declare-fun b_and!191171 () Bool)

(assert (=> b!2613693 (= tp!830208 b_and!191171)))

(declare-fun b_free!73555 () Bool)

(declare-fun b_next!74259 () Bool)

(assert (=> b!2613693 (= b_free!73555 (not b_next!74259))))

(declare-fun tp!830205 () Bool)

(declare-fun b_and!191173 () Bool)

(assert (=> b!2613693 (= tp!830205 b_and!191173)))

(declare-fun bs!474101 () Bool)

(declare-fun b!2613681 () Bool)

(declare-fun b!2613678 () Bool)

(assert (= bs!474101 (and b!2613681 b!2613678)))

(declare-fun lambda!97890 () Int)

(declare-fun lambda!97889 () Int)

(assert (=> bs!474101 (not (= lambda!97890 lambda!97889))))

(declare-fun b!2613704 () Bool)

(declare-fun e!1649233 () Bool)

(assert (=> b!2613704 (= e!1649233 true)))

(declare-fun b!2613703 () Bool)

(declare-fun e!1649232 () Bool)

(assert (=> b!2613703 (= e!1649232 e!1649233)))

(declare-fun b!2613702 () Bool)

(declare-fun e!1649231 () Bool)

(assert (=> b!2613702 (= e!1649231 e!1649232)))

(assert (=> b!2613681 e!1649231))

(assert (= b!2613703 b!2613704))

(assert (= b!2613702 b!2613703))

(declare-datatypes ((List!30321 0))(
  ( (Nil!30221) (Cons!30221 (h!35641 (_ BitVec 16)) (t!214354 List!30321)) )
))
(declare-datatypes ((C!15592 0))(
  ( (C!15593 (val!9730 Int)) )
))
(declare-datatypes ((Regex!7717 0))(
  ( (ElementMatch!7717 (c!420071 C!15592)) (Concat!12512 (regOne!15946 Regex!7717) (regTwo!15946 Regex!7717)) (EmptyExpr!7717) (Star!7717 (reg!8046 Regex!7717)) (EmptyLang!7717) (Union!7717 (regOne!15947 Regex!7717) (regTwo!15947 Regex!7717)) )
))
(declare-datatypes ((String!33858 0))(
  ( (String!33859 (value!147909 String)) )
))
(declare-datatypes ((TokenValue!4795 0))(
  ( (FloatLiteralValue!9590 (text!34010 List!30321)) (TokenValueExt!4794 (__x!19423 Int)) (Broken!23975 (value!147910 List!30321)) (Object!4894) (End!4795) (Def!4795) (Underscore!4795) (Match!4795) (Else!4795) (Error!4795) (Case!4795) (If!4795) (Extends!4795) (Abstract!4795) (Class!4795) (Val!4795) (DelimiterValue!9590 (del!4855 List!30321)) (KeywordValue!4801 (value!147911 List!30321)) (CommentValue!9590 (value!147912 List!30321)) (WhitespaceValue!9590 (value!147913 List!30321)) (IndentationValue!4795 (value!147914 List!30321)) (String!33860) (Int32!4795) (Broken!23976 (value!147915 List!30321)) (Boolean!4796) (Unit!44200) (OperatorValue!4798 (op!4855 List!30321)) (IdentifierValue!9590 (value!147916 List!30321)) (IdentifierValue!9591 (value!147917 List!30321)) (WhitespaceValue!9591 (value!147918 List!30321)) (True!9590) (False!9590) (Broken!23977 (value!147919 List!30321)) (Broken!23978 (value!147920 List!30321)) (True!9591) (RightBrace!4795) (RightBracket!4795) (Colon!4795) (Null!4795) (Comma!4795) (LeftBracket!4795) (False!9591) (LeftBrace!4795) (ImaginaryLiteralValue!4795 (text!34011 List!30321)) (StringLiteralValue!14385 (value!147921 List!30321)) (EOFValue!4795 (value!147922 List!30321)) (IdentValue!4795 (value!147923 List!30321)) (DelimiterValue!9591 (value!147924 List!30321)) (DedentValue!4795 (value!147925 List!30321)) (NewLineValue!4795 (value!147926 List!30321)) (IntegerValue!14385 (value!147927 (_ BitVec 32)) (text!34012 List!30321)) (IntegerValue!14386 (value!147928 Int) (text!34013 List!30321)) (Times!4795) (Or!4795) (Equal!4795) (Minus!4795) (Broken!23979 (value!147929 List!30321)) (And!4795) (Div!4795) (LessEqual!4795) (Mod!4795) (Concat!12513) (Not!4795) (Plus!4795) (SpaceValue!4795 (value!147930 List!30321)) (IntegerValue!14387 (value!147931 Int) (text!34014 List!30321)) (StringLiteralValue!14386 (text!34015 List!30321)) (FloatLiteralValue!9591 (text!34016 List!30321)) (BytesLiteralValue!4795 (value!147932 List!30321)) (CommentValue!9591 (value!147933 List!30321)) (StringLiteralValue!14387 (value!147934 List!30321)) (ErrorTokenValue!4795 (msg!4856 List!30321)) )
))
(declare-datatypes ((List!30322 0))(
  ( (Nil!30222) (Cons!30222 (h!35642 C!15592) (t!214355 List!30322)) )
))
(declare-datatypes ((IArray!18781 0))(
  ( (IArray!18782 (innerList!9448 List!30322)) )
))
(declare-datatypes ((Conc!9388 0))(
  ( (Node!9388 (left!23266 Conc!9388) (right!23596 Conc!9388) (csize!19006 Int) (cheight!9599 Int)) (Leaf!14415 (xs!12376 IArray!18781) (csize!19007 Int)) (Empty!9388) )
))
(declare-datatypes ((BalanceConc!18390 0))(
  ( (BalanceConc!18391 (c!420072 Conc!9388)) )
))
(declare-datatypes ((TokenValueInjection!9030 0))(
  ( (TokenValueInjection!9031 (toValue!6479 Int) (toChars!6338 Int)) )
))
(declare-datatypes ((Rule!8946 0))(
  ( (Rule!8947 (regex!4573 Regex!7717) (tag!5063 String!33858) (isSeparator!4573 Bool) (transformation!4573 TokenValueInjection!9030)) )
))
(declare-datatypes ((List!30323 0))(
  ( (Nil!30223) (Cons!30223 (h!35643 Rule!8946) (t!214356 List!30323)) )
))
(declare-fun rules!1726 () List!30323)

(get-info :version)

(assert (= (and b!2613681 ((_ is Cons!30223) rules!1726)) b!2613702))

(declare-fun order!16117 () Int)

(declare-fun order!16115 () Int)

(declare-fun dynLambda!12821 (Int Int) Int)

(declare-fun dynLambda!12822 (Int Int) Int)

(assert (=> b!2613704 (< (dynLambda!12821 order!16115 (toValue!6479 (transformation!4573 (h!35643 rules!1726)))) (dynLambda!12822 order!16117 lambda!97890))))

(declare-fun order!16119 () Int)

(declare-fun dynLambda!12823 (Int Int) Int)

(assert (=> b!2613704 (< (dynLambda!12823 order!16119 (toChars!6338 (transformation!4573 (h!35643 rules!1726)))) (dynLambda!12822 order!16117 lambda!97890))))

(assert (=> b!2613681 true))

(declare-fun b!2613675 () Bool)

(declare-fun res!1100237 () Bool)

(declare-fun e!1649213 () Bool)

(assert (=> b!2613675 (=> (not res!1100237) (not e!1649213))))

(declare-fun isEmpty!17262 (List!30323) Bool)

(assert (=> b!2613675 (= res!1100237 (not (isEmpty!17262 rules!1726)))))

(declare-fun b!2613676 () Bool)

(declare-fun res!1100235 () Bool)

(declare-fun e!1649221 () Bool)

(assert (=> b!2613676 (=> res!1100235 e!1649221)))

(declare-datatypes ((Token!8616 0))(
  ( (Token!8617 (value!147935 TokenValue!4795) (rule!6943 Rule!8946) (size!23392 Int) (originalCharacters!5339 List!30322)) )
))
(declare-datatypes ((List!30324 0))(
  ( (Nil!30224) (Cons!30224 (h!35644 Token!8616) (t!214357 List!30324)) )
))
(declare-fun lt!918444 () List!30324)

(declare-fun lt!918447 () Token!8616)

(declare-fun contains!5628 (List!30324 Token!8616) Bool)

(assert (=> b!2613676 (= res!1100235 (not (contains!5628 lt!918444 lt!918447)))))

(declare-fun b!2613677 () Bool)

(declare-fun res!1100232 () Bool)

(assert (=> b!2613677 (=> (not res!1100232) (not e!1649213))))

(declare-fun sepAndNonSepRulesDisjointChars!1146 (List!30323 List!30323) Bool)

(assert (=> b!2613677 (= res!1100232 (sepAndNonSepRulesDisjointChars!1146 rules!1726 rules!1726))))

(declare-fun res!1100242 () Bool)

(assert (=> b!2613678 (=> (not res!1100242) (not e!1649213))))

(declare-datatypes ((IArray!18783 0))(
  ( (IArray!18784 (innerList!9449 List!30324)) )
))
(declare-datatypes ((Conc!9389 0))(
  ( (Node!9389 (left!23267 Conc!9389) (right!23597 Conc!9389) (csize!19008 Int) (cheight!9600 Int)) (Leaf!14416 (xs!12377 IArray!18783) (csize!19009 Int)) (Empty!9389) )
))
(declare-datatypes ((BalanceConc!18392 0))(
  ( (BalanceConc!18393 (c!420073 Conc!9389)) )
))
(declare-fun v!6381 () BalanceConc!18392)

(declare-fun forall!6277 (BalanceConc!18392 Int) Bool)

(assert (=> b!2613678 (= res!1100242 (forall!6277 v!6381 lambda!97889))))

(declare-fun b!2613679 () Bool)

(declare-fun res!1100239 () Bool)

(assert (=> b!2613679 (=> (not res!1100239) (not e!1649213))))

(declare-fun separatorToken!156 () Token!8616)

(declare-datatypes ((LexerInterface!4170 0))(
  ( (LexerInterfaceExt!4167 (__x!19424 Int)) (Lexer!4168) )
))
(declare-fun thiss!14197 () LexerInterface!4170)

(declare-fun rulesProduceIndividualToken!1882 (LexerInterface!4170 List!30323 Token!8616) Bool)

(assert (=> b!2613679 (= res!1100239 (rulesProduceIndividualToken!1882 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2613680 () Bool)

(declare-fun e!1649222 () Bool)

(assert (=> b!2613680 (= e!1649213 e!1649222)))

(declare-fun res!1100234 () Bool)

(assert (=> b!2613680 (=> (not res!1100234) (not e!1649222))))

(declare-fun from!862 () Int)

(declare-fun lt!918439 () Int)

(assert (=> b!2613680 (= res!1100234 (< from!862 lt!918439))))

(declare-datatypes ((Unit!44201 0))(
  ( (Unit!44202) )
))
(declare-fun lt!918442 () Unit!44201)

(declare-fun lemmaContentSubsetPreservesForall!242 (List!30324 List!30324 Int) Unit!44201)

(declare-fun dropList!876 (BalanceConc!18392 Int) List!30324)

(assert (=> b!2613680 (= lt!918442 (lemmaContentSubsetPreservesForall!242 lt!918444 (dropList!876 v!6381 from!862) lambda!97889))))

(declare-fun list!11343 (BalanceConc!18392) List!30324)

(assert (=> b!2613680 (= lt!918444 (list!11343 v!6381))))

(declare-datatypes ((tuple2!29784 0))(
  ( (tuple2!29785 (_1!17434 Token!8616) (_2!17434 BalanceConc!18390)) )
))
(declare-datatypes ((Option!5952 0))(
  ( (None!5951) (Some!5951 (v!32286 tuple2!29784)) )
))
(declare-fun lt!918441 () Option!5952)

(assert (=> b!2613681 (= e!1649221 (or (not ((_ is Some!5951) lt!918441)) (not (= (_1!17434 (v!32286 lt!918441)) lt!918447)) (<= 0 from!862)))))

(declare-fun maxPrefixZipperSequence!900 (LexerInterface!4170 List!30323 BalanceConc!18390) Option!5952)

(declare-fun ++!7339 (BalanceConc!18390 BalanceConc!18390) BalanceConc!18390)

(declare-fun charsOf!2864 (Token!8616) BalanceConc!18390)

(declare-fun printWithSeparatorTokenWhenNeededRec!448 (LexerInterface!4170 List!30323 BalanceConc!18392 Token!8616 Int) BalanceConc!18390)

(assert (=> b!2613681 (= lt!918441 (maxPrefixZipperSequence!900 thiss!14197 rules!1726 (++!7339 (charsOf!2864 lt!918447) (printWithSeparatorTokenWhenNeededRec!448 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!918443 () Unit!44201)

(declare-fun forallContained!929 (List!30324 Int Token!8616) Unit!44201)

(assert (=> b!2613681 (= lt!918443 (forallContained!929 lt!918444 lambda!97890 lt!918447))))

(declare-fun b!2613682 () Bool)

(assert (=> b!2613682 (= e!1649222 (not e!1649221))))

(declare-fun res!1100243 () Bool)

(assert (=> b!2613682 (=> res!1100243 e!1649221)))

(declare-fun contains!5629 (BalanceConc!18392 Token!8616) Bool)

(assert (=> b!2613682 (= res!1100243 (not (contains!5629 v!6381 lt!918447)))))

(declare-fun apply!7112 (BalanceConc!18392 Int) Token!8616)

(assert (=> b!2613682 (= lt!918447 (apply!7112 v!6381 from!862))))

(declare-fun lt!918440 () List!30324)

(declare-fun tail!4206 (List!30324) List!30324)

(declare-fun drop!1569 (List!30324 Int) List!30324)

(assert (=> b!2613682 (= (tail!4206 lt!918440) (drop!1569 lt!918444 (+ 1 from!862)))))

(declare-fun lt!918446 () Unit!44201)

(declare-fun lemmaDropTail!758 (List!30324 Int) Unit!44201)

(assert (=> b!2613682 (= lt!918446 (lemmaDropTail!758 lt!918444 from!862))))

(declare-fun head!5968 (List!30324) Token!8616)

(declare-fun apply!7113 (List!30324 Int) Token!8616)

(assert (=> b!2613682 (= (head!5968 lt!918440) (apply!7113 lt!918444 from!862))))

(assert (=> b!2613682 (= lt!918440 (drop!1569 lt!918444 from!862))))

(declare-fun lt!918445 () Unit!44201)

(declare-fun lemmaDropApply!784 (List!30324 Int) Unit!44201)

(assert (=> b!2613682 (= lt!918445 (lemmaDropApply!784 lt!918444 from!862))))

(declare-fun b!2613683 () Bool)

(declare-fun res!1100236 () Bool)

(assert (=> b!2613683 (=> (not res!1100236) (not e!1649213))))

(declare-fun rulesInvariant!3670 (LexerInterface!4170 List!30323) Bool)

(assert (=> b!2613683 (= res!1100236 (rulesInvariant!3670 thiss!14197 rules!1726))))

(declare-fun b!2613684 () Bool)

(declare-fun res!1100240 () Bool)

(assert (=> b!2613684 (=> (not res!1100240) (not e!1649213))))

(declare-fun rulesProduceEachTokenIndividually!990 (LexerInterface!4170 List!30323 BalanceConc!18392) Bool)

(assert (=> b!2613684 (= res!1100240 (rulesProduceEachTokenIndividually!990 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2613685 () Bool)

(declare-fun res!1100241 () Bool)

(assert (=> b!2613685 (=> (not res!1100241) (not e!1649213))))

(assert (=> b!2613685 (= res!1100241 (isSeparator!4573 (rule!6943 separatorToken!156)))))

(declare-fun b!2613687 () Bool)

(declare-fun e!1649220 () Bool)

(declare-fun e!1649214 () Bool)

(declare-fun tp!830212 () Bool)

(assert (=> b!2613687 (= e!1649220 (and e!1649214 tp!830212))))

(declare-fun b!2613688 () Bool)

(declare-fun e!1649219 () Bool)

(declare-fun tp!830206 () Bool)

(declare-fun inv!40914 (Conc!9389) Bool)

(assert (=> b!2613688 (= e!1649219 (and (inv!40914 (c!420073 v!6381)) tp!830206))))

(declare-fun e!1649217 () Bool)

(declare-fun tp!830211 () Bool)

(declare-fun b!2613689 () Bool)

(declare-fun inv!40909 (String!33858) Bool)

(declare-fun inv!40915 (TokenValueInjection!9030) Bool)

(assert (=> b!2613689 (= e!1649214 (and tp!830211 (inv!40909 (tag!5063 (h!35643 rules!1726))) (inv!40915 (transformation!4573 (h!35643 rules!1726))) e!1649217))))

(declare-fun b!2613690 () Bool)

(declare-fun e!1649218 () Bool)

(assert (=> b!2613690 (= e!1649218 e!1649213)))

(declare-fun res!1100238 () Bool)

(assert (=> b!2613690 (=> (not res!1100238) (not e!1649213))))

(assert (=> b!2613690 (= res!1100238 (<= from!862 lt!918439))))

(declare-fun size!23393 (BalanceConc!18392) Int)

(assert (=> b!2613690 (= lt!918439 (size!23393 v!6381))))

(declare-fun e!1649224 () Bool)

(assert (=> b!2613691 (= e!1649224 (and tp!830210 tp!830204))))

(declare-fun e!1649223 () Bool)

(declare-fun e!1649216 () Bool)

(declare-fun b!2613692 () Bool)

(declare-fun tp!830207 () Bool)

(declare-fun inv!21 (TokenValue!4795) Bool)

(assert (=> b!2613692 (= e!1649223 (and (inv!21 (value!147935 separatorToken!156)) e!1649216 tp!830207))))

(assert (=> b!2613693 (= e!1649217 (and tp!830208 tp!830205))))

(declare-fun res!1100233 () Bool)

(assert (=> start!254158 (=> (not res!1100233) (not e!1649218))))

(assert (=> start!254158 (= res!1100233 (and ((_ is Lexer!4168) thiss!14197) (>= from!862 0)))))

(assert (=> start!254158 e!1649218))

(assert (=> start!254158 true))

(assert (=> start!254158 e!1649220))

(declare-fun inv!40916 (Token!8616) Bool)

(assert (=> start!254158 (and (inv!40916 separatorToken!156) e!1649223)))

(declare-fun inv!40917 (BalanceConc!18392) Bool)

(assert (=> start!254158 (and (inv!40917 v!6381) e!1649219)))

(declare-fun tp!830209 () Bool)

(declare-fun b!2613686 () Bool)

(assert (=> b!2613686 (= e!1649216 (and tp!830209 (inv!40909 (tag!5063 (rule!6943 separatorToken!156))) (inv!40915 (transformation!4573 (rule!6943 separatorToken!156))) e!1649224))))

(assert (= (and start!254158 res!1100233) b!2613690))

(assert (= (and b!2613690 res!1100238) b!2613675))

(assert (= (and b!2613675 res!1100237) b!2613683))

(assert (= (and b!2613683 res!1100236) b!2613684))

(assert (= (and b!2613684 res!1100240) b!2613679))

(assert (= (and b!2613679 res!1100239) b!2613685))

(assert (= (and b!2613685 res!1100241) b!2613678))

(assert (= (and b!2613678 res!1100242) b!2613677))

(assert (= (and b!2613677 res!1100232) b!2613680))

(assert (= (and b!2613680 res!1100234) b!2613682))

(assert (= (and b!2613682 (not res!1100243)) b!2613676))

(assert (= (and b!2613676 (not res!1100235)) b!2613681))

(assert (= b!2613689 b!2613693))

(assert (= b!2613687 b!2613689))

(assert (= (and start!254158 ((_ is Cons!30223) rules!1726)) b!2613687))

(assert (= b!2613686 b!2613691))

(assert (= b!2613692 b!2613686))

(assert (= start!254158 b!2613692))

(assert (= start!254158 b!2613688))

(declare-fun m!2948487 () Bool)

(assert (=> b!2613686 m!2948487))

(declare-fun m!2948489 () Bool)

(assert (=> b!2613686 m!2948489))

(declare-fun m!2948491 () Bool)

(assert (=> b!2613683 m!2948491))

(declare-fun m!2948493 () Bool)

(assert (=> b!2613675 m!2948493))

(declare-fun m!2948495 () Bool)

(assert (=> b!2613677 m!2948495))

(declare-fun m!2948497 () Bool)

(assert (=> b!2613684 m!2948497))

(declare-fun m!2948499 () Bool)

(assert (=> b!2613688 m!2948499))

(declare-fun m!2948501 () Bool)

(assert (=> b!2613682 m!2948501))

(declare-fun m!2948503 () Bool)

(assert (=> b!2613682 m!2948503))

(declare-fun m!2948505 () Bool)

(assert (=> b!2613682 m!2948505))

(declare-fun m!2948507 () Bool)

(assert (=> b!2613682 m!2948507))

(declare-fun m!2948509 () Bool)

(assert (=> b!2613682 m!2948509))

(declare-fun m!2948511 () Bool)

(assert (=> b!2613682 m!2948511))

(declare-fun m!2948513 () Bool)

(assert (=> b!2613682 m!2948513))

(declare-fun m!2948515 () Bool)

(assert (=> b!2613682 m!2948515))

(declare-fun m!2948517 () Bool)

(assert (=> b!2613682 m!2948517))

(declare-fun m!2948519 () Bool)

(assert (=> b!2613690 m!2948519))

(declare-fun m!2948521 () Bool)

(assert (=> b!2613681 m!2948521))

(declare-fun m!2948523 () Bool)

(assert (=> b!2613681 m!2948523))

(declare-fun m!2948525 () Bool)

(assert (=> b!2613681 m!2948525))

(assert (=> b!2613681 m!2948523))

(assert (=> b!2613681 m!2948525))

(declare-fun m!2948527 () Bool)

(assert (=> b!2613681 m!2948527))

(declare-fun m!2948529 () Bool)

(assert (=> b!2613681 m!2948529))

(assert (=> b!2613681 m!2948521))

(declare-fun m!2948531 () Bool)

(assert (=> b!2613689 m!2948531))

(declare-fun m!2948533 () Bool)

(assert (=> b!2613689 m!2948533))

(declare-fun m!2948535 () Bool)

(assert (=> b!2613678 m!2948535))

(declare-fun m!2948537 () Bool)

(assert (=> b!2613692 m!2948537))

(declare-fun m!2948539 () Bool)

(assert (=> start!254158 m!2948539))

(declare-fun m!2948541 () Bool)

(assert (=> start!254158 m!2948541))

(declare-fun m!2948543 () Bool)

(assert (=> b!2613679 m!2948543))

(declare-fun m!2948545 () Bool)

(assert (=> b!2613676 m!2948545))

(declare-fun m!2948547 () Bool)

(assert (=> b!2613680 m!2948547))

(assert (=> b!2613680 m!2948547))

(declare-fun m!2948549 () Bool)

(assert (=> b!2613680 m!2948549))

(declare-fun m!2948551 () Bool)

(assert (=> b!2613680 m!2948551))

(check-sat (not b_next!74259) b_and!191167 (not b!2613686) (not b!2613702) (not start!254158) (not b!2613690) (not b!2613683) (not b_next!74253) (not b!2613684) (not b_next!74257) (not b!2613676) b_and!191173 (not b!2613678) (not b_next!74255) b_and!191171 (not b!2613689) (not b!2613692) (not b!2613677) b_and!191169 (not b!2613681) (not b!2613680) (not b!2613687) (not b!2613675) (not b!2613682) (not b!2613688) (not b!2613679))
(check-sat (not b_next!74259) b_and!191167 (not b_next!74253) (not b_next!74257) b_and!191169 b_and!191173 (not b_next!74255) b_and!191171)
