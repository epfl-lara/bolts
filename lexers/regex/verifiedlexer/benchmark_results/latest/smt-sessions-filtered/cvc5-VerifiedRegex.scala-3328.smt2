; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!189206 () Bool)

(assert start!189206)

(declare-fun b!1889843 () Bool)

(declare-fun b_free!52561 () Bool)

(declare-fun b_next!53265 () Bool)

(assert (=> b!1889843 (= b_free!52561 (not b_next!53265))))

(declare-fun tp!538990 () Bool)

(declare-fun b_and!145399 () Bool)

(assert (=> b!1889843 (= tp!538990 b_and!145399)))

(declare-fun b_free!52563 () Bool)

(declare-fun b_next!53267 () Bool)

(assert (=> b!1889843 (= b_free!52563 (not b_next!53267))))

(declare-fun tp!538992 () Bool)

(declare-fun b_and!145401 () Bool)

(assert (=> b!1889843 (= tp!538992 b_and!145401)))

(declare-fun b!1889857 () Bool)

(declare-fun b_free!52565 () Bool)

(declare-fun b_next!53269 () Bool)

(assert (=> b!1889857 (= b_free!52565 (not b_next!53269))))

(declare-fun tp!538981 () Bool)

(declare-fun b_and!145403 () Bool)

(assert (=> b!1889857 (= tp!538981 b_and!145403)))

(declare-fun b_free!52567 () Bool)

(declare-fun b_next!53271 () Bool)

(assert (=> b!1889857 (= b_free!52567 (not b_next!53271))))

(declare-fun tp!538987 () Bool)

(declare-fun b_and!145405 () Bool)

(assert (=> b!1889857 (= tp!538987 b_and!145405)))

(declare-fun b!1889858 () Bool)

(declare-fun b_free!52569 () Bool)

(declare-fun b_next!53273 () Bool)

(assert (=> b!1889858 (= b_free!52569 (not b_next!53273))))

(declare-fun tp!538980 () Bool)

(declare-fun b_and!145407 () Bool)

(assert (=> b!1889858 (= tp!538980 b_and!145407)))

(declare-fun b_free!52571 () Bool)

(declare-fun b_next!53275 () Bool)

(assert (=> b!1889858 (= b_free!52571 (not b_next!53275))))

(declare-fun tp!538983 () Bool)

(declare-fun b_and!145409 () Bool)

(assert (=> b!1889858 (= tp!538983 b_and!145409)))

(declare-fun b!1889869 () Bool)

(declare-fun e!1206322 () Bool)

(assert (=> b!1889869 (= e!1206322 true)))

(declare-fun b!1889868 () Bool)

(declare-fun e!1206321 () Bool)

(assert (=> b!1889868 (= e!1206321 e!1206322)))

(declare-fun b!1889867 () Bool)

(declare-fun e!1206320 () Bool)

(assert (=> b!1889867 (= e!1206320 e!1206321)))

(declare-fun b!1889853 () Bool)

(assert (=> b!1889853 e!1206320))

(assert (= b!1889868 b!1889869))

(assert (= b!1889867 b!1889868))

(declare-datatypes ((List!21189 0))(
  ( (Nil!21107) (Cons!21107 (h!26508 (_ BitVec 16)) (t!175302 List!21189)) )
))
(declare-datatypes ((TokenValue!3867 0))(
  ( (FloatLiteralValue!7734 (text!27514 List!21189)) (TokenValueExt!3866 (__x!13232 Int)) (Broken!19335 (value!117900 List!21189)) (Object!3948) (End!3867) (Def!3867) (Underscore!3867) (Match!3867) (Else!3867) (Error!3867) (Case!3867) (If!3867) (Extends!3867) (Abstract!3867) (Class!3867) (Val!3867) (DelimiterValue!7734 (del!3927 List!21189)) (KeywordValue!3873 (value!117901 List!21189)) (CommentValue!7734 (value!117902 List!21189)) (WhitespaceValue!7734 (value!117903 List!21189)) (IndentationValue!3867 (value!117904 List!21189)) (String!24454) (Int32!3867) (Broken!19336 (value!117905 List!21189)) (Boolean!3868) (Unit!35508) (OperatorValue!3870 (op!3927 List!21189)) (IdentifierValue!7734 (value!117906 List!21189)) (IdentifierValue!7735 (value!117907 List!21189)) (WhitespaceValue!7735 (value!117908 List!21189)) (True!7734) (False!7734) (Broken!19337 (value!117909 List!21189)) (Broken!19338 (value!117910 List!21189)) (True!7735) (RightBrace!3867) (RightBracket!3867) (Colon!3867) (Null!3867) (Comma!3867) (LeftBracket!3867) (False!7735) (LeftBrace!3867) (ImaginaryLiteralValue!3867 (text!27515 List!21189)) (StringLiteralValue!11601 (value!117911 List!21189)) (EOFValue!3867 (value!117912 List!21189)) (IdentValue!3867 (value!117913 List!21189)) (DelimiterValue!7735 (value!117914 List!21189)) (DedentValue!3867 (value!117915 List!21189)) (NewLineValue!3867 (value!117916 List!21189)) (IntegerValue!11601 (value!117917 (_ BitVec 32)) (text!27516 List!21189)) (IntegerValue!11602 (value!117918 Int) (text!27517 List!21189)) (Times!3867) (Or!3867) (Equal!3867) (Minus!3867) (Broken!19339 (value!117919 List!21189)) (And!3867) (Div!3867) (LessEqual!3867) (Mod!3867) (Concat!9023) (Not!3867) (Plus!3867) (SpaceValue!3867 (value!117920 List!21189)) (IntegerValue!11603 (value!117921 Int) (text!27518 List!21189)) (StringLiteralValue!11602 (text!27519 List!21189)) (FloatLiteralValue!7735 (text!27520 List!21189)) (BytesLiteralValue!3867 (value!117922 List!21189)) (CommentValue!7735 (value!117923 List!21189)) (StringLiteralValue!11603 (value!117924 List!21189)) (ErrorTokenValue!3867 (msg!3928 List!21189)) )
))
(declare-datatypes ((C!10458 0))(
  ( (C!10459 (val!6181 Int)) )
))
(declare-datatypes ((List!21190 0))(
  ( (Nil!21108) (Cons!21108 (h!26509 C!10458) (t!175303 List!21190)) )
))
(declare-datatypes ((IArray!14013 0))(
  ( (IArray!14014 (innerList!7064 List!21190)) )
))
(declare-datatypes ((Conc!7004 0))(
  ( (Node!7004 (left!16938 Conc!7004) (right!17268 Conc!7004) (csize!14238 Int) (cheight!7215 Int)) (Leaf!10333 (xs!9894 IArray!14013) (csize!14239 Int)) (Empty!7004) )
))
(declare-datatypes ((BalanceConc!13824 0))(
  ( (BalanceConc!13825 (c!308235 Conc!7004)) )
))
(declare-datatypes ((Regex!5156 0))(
  ( (ElementMatch!5156 (c!308236 C!10458)) (Concat!9024 (regOne!10824 Regex!5156) (regTwo!10824 Regex!5156)) (EmptyExpr!5156) (Star!5156 (reg!5485 Regex!5156)) (EmptyLang!5156) (Union!5156 (regOne!10825 Regex!5156) (regTwo!10825 Regex!5156)) )
))
(declare-datatypes ((String!24455 0))(
  ( (String!24456 (value!117925 String)) )
))
(declare-datatypes ((TokenValueInjection!7318 0))(
  ( (TokenValueInjection!7319 (toValue!5336 Int) (toChars!5195 Int)) )
))
(declare-datatypes ((Rule!7262 0))(
  ( (Rule!7263 (regex!3731 Regex!5156) (tag!4145 String!24455) (isSeparator!3731 Bool) (transformation!3731 TokenValueInjection!7318)) )
))
(declare-datatypes ((List!21191 0))(
  ( (Nil!21109) (Cons!21109 (h!26510 Rule!7262) (t!175304 List!21191)) )
))
(declare-fun rules!4265 () List!21191)

(assert (= (and b!1889853 (is-Cons!21109 rules!4265)) b!1889867))

(declare-fun lambda!73902 () Int)

(declare-fun order!13341 () Int)

(declare-fun order!13343 () Int)

(declare-fun dynLambda!10269 (Int Int) Int)

(declare-fun dynLambda!10270 (Int Int) Int)

(assert (=> b!1889869 (< (dynLambda!10269 order!13341 (toValue!5336 (transformation!3731 (h!26510 rules!4265)))) (dynLambda!10270 order!13343 lambda!73902))))

(declare-fun order!13345 () Int)

(declare-fun dynLambda!10271 (Int Int) Int)

(assert (=> b!1889869 (< (dynLambda!10271 order!13345 (toChars!5195 (transformation!3731 (h!26510 rules!4265)))) (dynLambda!10270 order!13343 lambda!73902))))

(assert (=> b!1889853 true))

(declare-fun e!1206312 () Bool)

(assert (=> b!1889843 (= e!1206312 (and tp!538990 tp!538992))))

(declare-fun tp!538989 () Bool)

(declare-fun e!1206304 () Bool)

(declare-fun e!1206310 () Bool)

(declare-fun b!1889845 () Bool)

(declare-fun inv!28149 (String!24455) Bool)

(declare-fun inv!28152 (TokenValueInjection!7318) Bool)

(assert (=> b!1889845 (= e!1206304 (and tp!538989 (inv!28149 (tag!4145 (h!26510 rules!4265))) (inv!28152 (transformation!3731 (h!26510 rules!4265))) e!1206310))))

(declare-fun b!1889846 () Bool)

(declare-fun res!843953 () Bool)

(declare-fun e!1206300 () Bool)

(assert (=> b!1889846 (=> (not res!843953) (not e!1206300))))

(declare-datatypes ((LexerInterface!3344 0))(
  ( (LexerInterfaceExt!3341 (__x!13233 Int)) (Lexer!3342) )
))
(declare-fun thiss!27307 () LexerInterface!3344)

(declare-datatypes ((Token!7014 0))(
  ( (Token!7015 (value!117926 TokenValue!3867) (rule!5924 Rule!7262) (size!16732 Int) (originalCharacters!4538 List!21190)) )
))
(declare-datatypes ((List!21192 0))(
  ( (Nil!21110) (Cons!21110 (h!26511 Token!7014) (t!175305 List!21192)) )
))
(declare-fun ts2!17 () List!21192)

(declare-fun rulesProduceEachTokenIndividuallyList!1101 (LexerInterface!3344 List!21191 List!21192) Bool)

(assert (=> b!1889846 (= res!843953 (rulesProduceEachTokenIndividuallyList!1101 thiss!27307 rules!4265 ts2!17))))

(declare-fun ts1!17 () List!21192)

(declare-fun e!1206308 () Bool)

(declare-fun tp!538979 () Bool)

(declare-fun b!1889847 () Bool)

(declare-fun e!1206306 () Bool)

(declare-fun inv!21 (TokenValue!3867) Bool)

(assert (=> b!1889847 (= e!1206308 (and (inv!21 (value!117926 (h!26511 ts1!17))) e!1206306 tp!538979))))

(declare-fun b!1889848 () Bool)

(declare-fun e!1206297 () Bool)

(declare-fun tp!538988 () Bool)

(assert (=> b!1889848 (= e!1206306 (and tp!538988 (inv!28149 (tag!4145 (rule!5924 (h!26511 ts1!17)))) (inv!28152 (transformation!3731 (rule!5924 (h!26511 ts1!17)))) e!1206297))))

(declare-fun e!1206313 () Bool)

(declare-fun b!1889849 () Bool)

(declare-fun e!1206298 () Bool)

(declare-fun tp!538986 () Bool)

(declare-fun inv!28153 (Token!7014) Bool)

(assert (=> b!1889849 (= e!1206298 (and (inv!28153 (h!26511 ts2!17)) e!1206313 tp!538986))))

(declare-fun b!1889850 () Bool)

(declare-fun e!1206301 () Bool)

(declare-fun tp!538982 () Bool)

(assert (=> b!1889850 (= e!1206301 (and e!1206304 tp!538982))))

(declare-fun b!1889851 () Bool)

(declare-fun res!843956 () Bool)

(assert (=> b!1889851 (=> (not res!843956) (not e!1206300))))

(declare-fun rulesInvariant!2977 (LexerInterface!3344 List!21191) Bool)

(assert (=> b!1889851 (= res!843956 (rulesInvariant!2977 thiss!27307 rules!4265))))

(declare-fun b!1889852 () Bool)

(declare-fun tp!538984 () Bool)

(declare-fun e!1206305 () Bool)

(assert (=> b!1889852 (= e!1206305 (and tp!538984 (inv!28149 (tag!4145 (rule!5924 (h!26511 ts2!17)))) (inv!28152 (transformation!3731 (rule!5924 (h!26511 ts2!17)))) e!1206312))))

(declare-fun res!843954 () Bool)

(assert (=> start!189206 (=> (not res!843954) (not e!1206300))))

(assert (=> start!189206 (= res!843954 (is-Lexer!3342 thiss!27307))))

(assert (=> start!189206 e!1206300))

(assert (=> start!189206 true))

(assert (=> start!189206 e!1206301))

(declare-fun e!1206311 () Bool)

(assert (=> start!189206 e!1206311))

(assert (=> start!189206 e!1206298))

(declare-fun b!1889844 () Bool)

(declare-fun res!843952 () Bool)

(assert (=> b!1889844 (=> (not res!843952) (not e!1206300))))

(declare-fun isEmpty!13000 (List!21191) Bool)

(assert (=> b!1889844 (= res!843952 (not (isEmpty!13000 rules!4265)))))

(assert (=> b!1889853 (= e!1206300 false)))

(declare-fun lt!723874 () List!21192)

(declare-fun ++!5704 (List!21192 List!21192) List!21192)

(assert (=> b!1889853 (= lt!723874 (++!5704 ts1!17 ts2!17))))

(declare-datatypes ((Unit!35509 0))(
  ( (Unit!35510) )
))
(declare-fun lt!723873 () Unit!35509)

(declare-fun lemmaConcatPreservesForall!123 (List!21192 List!21192 Int) Unit!35509)

(assert (=> b!1889853 (= lt!723873 (lemmaConcatPreservesForall!123 ts1!17 ts2!17 lambda!73902))))

(declare-fun b!1889854 () Bool)

(declare-fun res!843955 () Bool)

(assert (=> b!1889854 (=> (not res!843955) (not e!1206300))))

(assert (=> b!1889854 (= res!843955 (rulesProduceEachTokenIndividuallyList!1101 thiss!27307 rules!4265 ts1!17))))

(declare-fun tp!538985 () Bool)

(declare-fun b!1889855 () Bool)

(assert (=> b!1889855 (= e!1206311 (and (inv!28153 (h!26511 ts1!17)) e!1206308 tp!538985))))

(declare-fun b!1889856 () Bool)

(declare-fun tp!538991 () Bool)

(assert (=> b!1889856 (= e!1206313 (and (inv!21 (value!117926 (h!26511 ts2!17))) e!1206305 tp!538991))))

(assert (=> b!1889857 (= e!1206310 (and tp!538981 tp!538987))))

(assert (=> b!1889858 (= e!1206297 (and tp!538980 tp!538983))))

(assert (= (and start!189206 res!843954) b!1889844))

(assert (= (and b!1889844 res!843952) b!1889851))

(assert (= (and b!1889851 res!843956) b!1889854))

(assert (= (and b!1889854 res!843955) b!1889846))

(assert (= (and b!1889846 res!843953) b!1889853))

(assert (= b!1889845 b!1889857))

(assert (= b!1889850 b!1889845))

(assert (= (and start!189206 (is-Cons!21109 rules!4265)) b!1889850))

(assert (= b!1889848 b!1889858))

(assert (= b!1889847 b!1889848))

(assert (= b!1889855 b!1889847))

(assert (= (and start!189206 (is-Cons!21110 ts1!17)) b!1889855))

(assert (= b!1889852 b!1889843))

(assert (= b!1889856 b!1889852))

(assert (= b!1889849 b!1889856))

(assert (= (and start!189206 (is-Cons!21110 ts2!17)) b!1889849))

(declare-fun m!2320615 () Bool)

(assert (=> b!1889855 m!2320615))

(declare-fun m!2320617 () Bool)

(assert (=> b!1889844 m!2320617))

(declare-fun m!2320619 () Bool)

(assert (=> b!1889853 m!2320619))

(declare-fun m!2320621 () Bool)

(assert (=> b!1889853 m!2320621))

(declare-fun m!2320623 () Bool)

(assert (=> b!1889848 m!2320623))

(declare-fun m!2320625 () Bool)

(assert (=> b!1889848 m!2320625))

(declare-fun m!2320627 () Bool)

(assert (=> b!1889849 m!2320627))

(declare-fun m!2320629 () Bool)

(assert (=> b!1889851 m!2320629))

(declare-fun m!2320631 () Bool)

(assert (=> b!1889852 m!2320631))

(declare-fun m!2320633 () Bool)

(assert (=> b!1889852 m!2320633))

(declare-fun m!2320635 () Bool)

(assert (=> b!1889854 m!2320635))

(declare-fun m!2320637 () Bool)

(assert (=> b!1889845 m!2320637))

(declare-fun m!2320639 () Bool)

(assert (=> b!1889845 m!2320639))

(declare-fun m!2320641 () Bool)

(assert (=> b!1889846 m!2320641))

(declare-fun m!2320643 () Bool)

(assert (=> b!1889847 m!2320643))

(declare-fun m!2320645 () Bool)

(assert (=> b!1889856 m!2320645))

(push 1)

(assert (not b!1889850))

(assert (not b_next!53275))

(assert (not b_next!53267))

(assert b_and!145409)

(assert (not b!1889853))

(assert (not b!1889845))

(assert (not b!1889867))

(assert (not b!1889852))

(assert (not b!1889849))

(assert (not b_next!53269))

(assert (not b!1889851))

(assert (not b!1889847))

(assert b_and!145405)

(assert (not b_next!53271))

(assert (not b!1889855))

(assert (not b!1889848))

(assert (not b!1889844))

(assert (not b_next!53273))

(assert (not b!1889846))

(assert b_and!145401)

(assert b_and!145407)

(assert b_and!145403)

(assert (not b!1889854))

(assert b_and!145399)

(assert (not b!1889856))

(assert (not b_next!53265))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!53269))

(assert (not b_next!53275))

(assert (not b_next!53267))

(assert b_and!145409)

(assert b_and!145399)

(assert (not b_next!53265))

(assert b_and!145405)

(assert (not b_next!53271))

(assert (not b_next!53273))

(assert b_and!145401)

(assert b_and!145407)

(assert b_and!145403)

(check-sat)

(pop 1)

