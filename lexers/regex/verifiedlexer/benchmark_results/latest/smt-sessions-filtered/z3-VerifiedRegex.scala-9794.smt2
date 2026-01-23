; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511664 () Bool)

(assert start!511664)

(declare-fun b!4888167 () Bool)

(declare-fun b_free!131379 () Bool)

(declare-fun b_next!132169 () Bool)

(assert (=> b!4888167 (= b_free!131379 (not b_next!132169))))

(declare-fun tp!1375731 () Bool)

(declare-fun b_and!344211 () Bool)

(assert (=> b!4888167 (= tp!1375731 b_and!344211)))

(declare-fun b_free!131381 () Bool)

(declare-fun b_next!132171 () Bool)

(assert (=> b!4888167 (= b_free!131381 (not b_next!132171))))

(declare-fun tp!1375733 () Bool)

(declare-fun b_and!344213 () Bool)

(assert (=> b!4888167 (= tp!1375733 b_and!344213)))

(declare-fun b!4888166 () Bool)

(declare-fun b_free!131383 () Bool)

(declare-fun b_next!132173 () Bool)

(assert (=> b!4888166 (= b_free!131383 (not b_next!132173))))

(declare-fun tp!1375735 () Bool)

(declare-fun b_and!344215 () Bool)

(assert (=> b!4888166 (= tp!1375735 b_and!344215)))

(declare-fun b_free!131385 () Bool)

(declare-fun b_next!132175 () Bool)

(assert (=> b!4888166 (= b_free!131385 (not b_next!132175))))

(declare-fun tp!1375736 () Bool)

(declare-fun b_and!344217 () Bool)

(assert (=> b!4888166 (= tp!1375736 b_and!344217)))

(declare-fun b!4888159 () Bool)

(declare-fun e!3055795 () Bool)

(declare-fun lt!2003418 () Bool)

(declare-fun lt!2003417 () Bool)

(assert (=> b!4888159 (= e!3055795 (or (not (= lt!2003418 lt!2003417)) (not lt!2003418) lt!2003417))))

(declare-datatypes ((LexerInterface!7748 0))(
  ( (LexerInterfaceExt!7745 (__x!34225 Int)) (Lexer!7746) )
))
(declare-fun thiss!14805 () LexerInterface!7748)

(declare-datatypes ((C!26660 0))(
  ( (C!26661 (val!22664 Int)) )
))
(declare-datatypes ((List!56473 0))(
  ( (Nil!56349) (Cons!56349 (h!62797 C!26660) (t!365119 List!56473)) )
))
(declare-fun lt!2003419 () List!56473)

(declare-datatypes ((IArray!29509 0))(
  ( (IArray!29510 (innerList!14812 List!56473)) )
))
(declare-datatypes ((Conc!14724 0))(
  ( (Node!14724 (left!40928 Conc!14724) (right!41258 Conc!14724) (csize!29678 Int) (cheight!14935 Int)) (Leaf!24519 (xs!18040 IArray!29509) (csize!29679 Int)) (Empty!14724) )
))
(declare-datatypes ((BalanceConc!28878 0))(
  ( (BalanceConc!28879 (c!830889 Conc!14724)) )
))
(declare-datatypes ((List!56474 0))(
  ( (Nil!56350) (Cons!56350 (h!62798 (_ BitVec 16)) (t!365120 List!56474)) )
))
(declare-datatypes ((TokenValue!8466 0))(
  ( (FloatLiteralValue!16932 (text!59707 List!56474)) (TokenValueExt!8465 (__x!34226 Int)) (Broken!42330 (value!261572 List!56474)) (Object!8589) (End!8466) (Def!8466) (Underscore!8466) (Match!8466) (Else!8466) (Error!8466) (Case!8466) (If!8466) (Extends!8466) (Abstract!8466) (Class!8466) (Val!8466) (DelimiterValue!16932 (del!8526 List!56474)) (KeywordValue!8472 (value!261573 List!56474)) (CommentValue!16932 (value!261574 List!56474)) (WhitespaceValue!16932 (value!261575 List!56474)) (IndentationValue!8466 (value!261576 List!56474)) (String!63771) (Int32!8466) (Broken!42331 (value!261577 List!56474)) (Boolean!8467) (Unit!146339) (OperatorValue!8469 (op!8526 List!56474)) (IdentifierValue!16932 (value!261578 List!56474)) (IdentifierValue!16933 (value!261579 List!56474)) (WhitespaceValue!16933 (value!261580 List!56474)) (True!16932) (False!16932) (Broken!42332 (value!261581 List!56474)) (Broken!42333 (value!261582 List!56474)) (True!16933) (RightBrace!8466) (RightBracket!8466) (Colon!8466) (Null!8466) (Comma!8466) (LeftBracket!8466) (False!16933) (LeftBrace!8466) (ImaginaryLiteralValue!8466 (text!59708 List!56474)) (StringLiteralValue!25398 (value!261583 List!56474)) (EOFValue!8466 (value!261584 List!56474)) (IdentValue!8466 (value!261585 List!56474)) (DelimiterValue!16933 (value!261586 List!56474)) (DedentValue!8466 (value!261587 List!56474)) (NewLineValue!8466 (value!261588 List!56474)) (IntegerValue!25398 (value!261589 (_ BitVec 32)) (text!59709 List!56474)) (IntegerValue!25399 (value!261590 Int) (text!59710 List!56474)) (Times!8466) (Or!8466) (Equal!8466) (Minus!8466) (Broken!42334 (value!261591 List!56474)) (And!8466) (Div!8466) (LessEqual!8466) (Mod!8466) (Concat!21697) (Not!8466) (Plus!8466) (SpaceValue!8466 (value!261592 List!56474)) (IntegerValue!25400 (value!261593 Int) (text!59711 List!56474)) (StringLiteralValue!25399 (text!59712 List!56474)) (FloatLiteralValue!16933 (text!59713 List!56474)) (BytesLiteralValue!8466 (value!261594 List!56474)) (CommentValue!16933 (value!261595 List!56474)) (StringLiteralValue!25400 (value!261596 List!56474)) (ErrorTokenValue!8466 (msg!8527 List!56474)) )
))
(declare-datatypes ((Regex!13231 0))(
  ( (ElementMatch!13231 (c!830890 C!26660)) (Concat!21698 (regOne!26974 Regex!13231) (regTwo!26974 Regex!13231)) (EmptyExpr!13231) (Star!13231 (reg!13560 Regex!13231)) (EmptyLang!13231) (Union!13231 (regOne!26975 Regex!13231) (regTwo!26975 Regex!13231)) )
))
(declare-datatypes ((String!63772 0))(
  ( (String!63773 (value!261597 String)) )
))
(declare-datatypes ((TokenValueInjection!16240 0))(
  ( (TokenValueInjection!16241 (toValue!11043 Int) (toChars!10902 Int)) )
))
(declare-datatypes ((Rule!16112 0))(
  ( (Rule!16113 (regex!8156 Regex!13231) (tag!9020 String!63772) (isSeparator!8156 Bool) (transformation!8156 TokenValueInjection!16240)) )
))
(declare-datatypes ((List!56475 0))(
  ( (Nil!56351) (Cons!56351 (h!62799 Rule!16112) (t!365121 List!56475)) )
))
(declare-fun rulesArg!165 () List!56475)

(declare-datatypes ((Token!14880 0))(
  ( (Token!14881 (value!261598 TokenValue!8466) (rule!11334 Rule!16112) (size!37102 Int) (originalCharacters!8471 List!56473)) )
))
(declare-datatypes ((tuple2!60364 0))(
  ( (tuple2!60365 (_1!33485 Token!14880) (_2!33485 List!56473)) )
))
(declare-datatypes ((Option!13993 0))(
  ( (None!13992) (Some!13992 (v!49942 tuple2!60364)) )
))
(declare-fun isDefined!11006 (Option!13993) Bool)

(declare-fun maxPrefixZipper!659 (LexerInterface!7748 List!56475 List!56473) Option!13993)

(assert (=> b!4888159 (= lt!2003417 (isDefined!11006 (maxPrefixZipper!659 thiss!14805 rulesArg!165 lt!2003419)))))

(declare-datatypes ((tuple2!60366 0))(
  ( (tuple2!60367 (_1!33486 Token!14880) (_2!33486 BalanceConc!28878)) )
))
(declare-datatypes ((Option!13994 0))(
  ( (None!13993) (Some!13993 (v!49943 tuple2!60366)) )
))
(declare-fun err!4489 () Option!13994)

(declare-fun isDefined!11007 (Option!13994) Bool)

(assert (=> b!4888159 (= lt!2003418 (isDefined!11007 err!4489))))

(assert (=> b!4888159 true))

(declare-fun e!3055788 () Bool)

(assert (=> b!4888159 e!3055788))

(declare-fun b!4888160 () Bool)

(declare-fun e!3055786 () Bool)

(declare-fun e!3055787 () Bool)

(declare-fun tp!1375728 () Bool)

(assert (=> b!4888160 (= e!3055786 (and e!3055787 tp!1375728))))

(declare-fun b!4888161 () Bool)

(declare-fun res!2087580 () Bool)

(declare-fun e!3055792 () Bool)

(assert (=> b!4888161 (=> (not res!2087580) (not e!3055792))))

(declare-fun rulesValidInductive!3135 (LexerInterface!7748 List!56475) Bool)

(assert (=> b!4888161 (= res!2087580 (rulesValidInductive!3135 thiss!14805 rulesArg!165))))

(declare-fun b!4888162 () Bool)

(declare-fun res!2087582 () Bool)

(assert (=> b!4888162 (=> (not res!2087582) (not e!3055792))))

(declare-fun isEmpty!30210 (List!56475) Bool)

(assert (=> b!4888162 (= res!2087582 (not (isEmpty!30210 rulesArg!165)))))

(declare-fun tp!1375734 () Bool)

(declare-fun b!4888164 () Bool)

(declare-fun e!3055798 () Bool)

(declare-fun e!3055793 () Bool)

(declare-fun inv!72561 (String!63772) Bool)

(declare-fun inv!72566 (TokenValueInjection!16240) Bool)

(assert (=> b!4888164 (= e!3055798 (and tp!1375734 (inv!72561 (tag!9020 (rule!11334 (_1!33486 (v!49943 err!4489))))) (inv!72566 (transformation!8156 (rule!11334 (_1!33486 (v!49943 err!4489))))) e!3055793))))

(declare-fun e!3055790 () Bool)

(declare-fun e!3055796 () Bool)

(declare-fun b!4888165 () Bool)

(declare-fun inv!72567 (Token!14880) Bool)

(declare-fun inv!72568 (BalanceConc!28878) Bool)

(assert (=> b!4888165 (= e!3055788 (and (inv!72567 (_1!33486 (v!49943 err!4489))) e!3055796 (inv!72568 (_2!33486 (v!49943 err!4489))) e!3055790))))

(assert (=> b!4888166 (= e!3055793 (and tp!1375735 tp!1375736))))

(declare-fun e!3055797 () Bool)

(assert (=> b!4888167 (= e!3055797 (and tp!1375731 tp!1375733))))

(declare-fun tp!1375729 () Bool)

(declare-fun b!4888168 () Bool)

(declare-fun inv!21 (TokenValue!8466) Bool)

(assert (=> b!4888168 (= e!3055796 (and (inv!21 (value!261598 (_1!33486 (v!49943 err!4489)))) e!3055798 tp!1375729))))

(declare-fun b!4888169 () Bool)

(declare-fun tp!1375737 () Bool)

(declare-fun inv!72569 (Conc!14724) Bool)

(assert (=> b!4888169 (= e!3055790 (and (inv!72569 (c!830889 (_2!33486 (v!49943 err!4489)))) tp!1375737))))

(declare-fun b!4888170 () Bool)

(assert (=> b!4888170 (= e!3055792 (not e!3055795))))

(declare-fun res!2087581 () Bool)

(assert (=> b!4888170 (=> res!2087581 e!3055795)))

(get-info :version)

(assert (=> b!4888170 (= res!2087581 (or (and ((_ is Cons!56351) rulesArg!165) ((_ is Nil!56351) (t!365121 rulesArg!165))) ((_ is Cons!56351) rulesArg!165)))))

(declare-fun isPrefix!4878 (List!56473 List!56473) Bool)

(assert (=> b!4888170 (isPrefix!4878 lt!2003419 lt!2003419)))

(declare-datatypes ((Unit!146340 0))(
  ( (Unit!146341) )
))
(declare-fun lt!2003416 () Unit!146340)

(declare-fun lemmaIsPrefixRefl!3275 (List!56473 List!56473) Unit!146340)

(assert (=> b!4888170 (= lt!2003416 (lemmaIsPrefixRefl!3275 lt!2003419 lt!2003419))))

(declare-fun input!1236 () BalanceConc!28878)

(declare-fun list!17696 (BalanceConc!28878) List!56473)

(assert (=> b!4888170 (= lt!2003419 (list!17696 input!1236))))

(declare-fun b!4888171 () Bool)

(declare-fun e!3055791 () Bool)

(declare-fun tp!1375730 () Bool)

(assert (=> b!4888171 (= e!3055791 (and (inv!72569 (c!830889 input!1236)) tp!1375730))))

(declare-fun res!2087579 () Bool)

(assert (=> start!511664 (=> (not res!2087579) (not e!3055792))))

(assert (=> start!511664 (= res!2087579 ((_ is Lexer!7746) thiss!14805))))

(assert (=> start!511664 e!3055792))

(assert (=> start!511664 true))

(assert (=> start!511664 e!3055786))

(assert (=> start!511664 (and (inv!72568 input!1236) e!3055791)))

(declare-fun tp!1375732 () Bool)

(declare-fun b!4888163 () Bool)

(assert (=> b!4888163 (= e!3055787 (and tp!1375732 (inv!72561 (tag!9020 (h!62799 rulesArg!165))) (inv!72566 (transformation!8156 (h!62799 rulesArg!165))) e!3055797))))

(assert (= (and start!511664 res!2087579) b!4888161))

(assert (= (and b!4888161 res!2087580) b!4888162))

(assert (= (and b!4888162 res!2087582) b!4888170))

(assert (= (and b!4888170 (not res!2087581)) b!4888159))

(assert (= b!4888164 b!4888166))

(assert (= b!4888168 b!4888164))

(assert (= b!4888165 b!4888168))

(assert (= b!4888165 b!4888169))

(assert (= (and b!4888159 ((_ is Some!13993) err!4489)) b!4888165))

(assert (= b!4888163 b!4888167))

(assert (= b!4888160 b!4888163))

(assert (= (and start!511664 ((_ is Cons!56351) rulesArg!165)) b!4888160))

(assert (= start!511664 b!4888171))

(declare-fun m!5891824 () Bool)

(assert (=> b!4888165 m!5891824))

(declare-fun m!5891826 () Bool)

(assert (=> b!4888165 m!5891826))

(declare-fun m!5891828 () Bool)

(assert (=> b!4888171 m!5891828))

(declare-fun m!5891830 () Bool)

(assert (=> b!4888159 m!5891830))

(assert (=> b!4888159 m!5891830))

(declare-fun m!5891832 () Bool)

(assert (=> b!4888159 m!5891832))

(declare-fun m!5891834 () Bool)

(assert (=> b!4888159 m!5891834))

(declare-fun m!5891836 () Bool)

(assert (=> b!4888170 m!5891836))

(declare-fun m!5891838 () Bool)

(assert (=> b!4888170 m!5891838))

(declare-fun m!5891840 () Bool)

(assert (=> b!4888170 m!5891840))

(declare-fun m!5891842 () Bool)

(assert (=> b!4888164 m!5891842))

(declare-fun m!5891844 () Bool)

(assert (=> b!4888164 m!5891844))

(declare-fun m!5891846 () Bool)

(assert (=> start!511664 m!5891846))

(declare-fun m!5891848 () Bool)

(assert (=> b!4888168 m!5891848))

(declare-fun m!5891850 () Bool)

(assert (=> b!4888162 m!5891850))

(declare-fun m!5891852 () Bool)

(assert (=> b!4888169 m!5891852))

(declare-fun m!5891854 () Bool)

(assert (=> b!4888163 m!5891854))

(declare-fun m!5891856 () Bool)

(assert (=> b!4888163 m!5891856))

(declare-fun m!5891858 () Bool)

(assert (=> b!4888161 m!5891858))

(check-sat (not b!4888162) (not b!4888159) b_and!344211 (not b!4888160) b_and!344213 (not b!4888164) (not b!4888171) (not start!511664) (not b!4888161) b_and!344217 (not b!4888170) (not b_next!132169) (not b!4888169) b_and!344215 (not b_next!132173) (not b!4888168) (not b!4888165) (not b_next!132175) (not b_next!132171) (not b!4888163))
(check-sat b_and!344217 b_and!344211 b_and!344213 (not b_next!132169) b_and!344215 (not b_next!132173) (not b_next!132175) (not b_next!132171))
