; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231460 () Bool)

(assert start!231460)

(declare-fun b!2359840 () Bool)

(declare-fun b_free!70469 () Bool)

(declare-fun b_next!71173 () Bool)

(assert (=> b!2359840 (= b_free!70469 (not b_next!71173))))

(declare-fun tp!754710 () Bool)

(declare-fun b_and!185405 () Bool)

(assert (=> b!2359840 (= tp!754710 b_and!185405)))

(declare-fun b_free!70471 () Bool)

(declare-fun b_next!71175 () Bool)

(assert (=> b!2359840 (= b_free!70471 (not b_next!71175))))

(declare-fun tp!754708 () Bool)

(declare-fun b_and!185407 () Bool)

(assert (=> b!2359840 (= tp!754708 b_and!185407)))

(declare-fun b!2359837 () Bool)

(declare-fun e!1507361 () Bool)

(declare-fun tp!754711 () Bool)

(declare-datatypes ((List!28014 0))(
  ( (Nil!27916) (Cons!27916 (h!33317 (_ BitVec 16)) (t!207891 List!28014)) )
))
(declare-datatypes ((TokenValue!4626 0))(
  ( (FloatLiteralValue!9252 (text!32827 List!28014)) (TokenValueExt!4625 (__x!18507 Int)) (Broken!23130 (value!141391 List!28014)) (Object!4723) (End!4626) (Def!4626) (Underscore!4626) (Match!4626) (Else!4626) (Error!4626) (Case!4626) (If!4626) (Extends!4626) (Abstract!4626) (Class!4626) (Val!4626) (DelimiterValue!9252 (del!4686 List!28014)) (KeywordValue!4632 (value!141392 List!28014)) (CommentValue!9252 (value!141393 List!28014)) (WhitespaceValue!9252 (value!141394 List!28014)) (IndentationValue!4626 (value!141395 List!28014)) (String!30731) (Int32!4626) (Broken!23131 (value!141396 List!28014)) (Boolean!4627) (Unit!40833) (OperatorValue!4629 (op!4686 List!28014)) (IdentifierValue!9252 (value!141397 List!28014)) (IdentifierValue!9253 (value!141398 List!28014)) (WhitespaceValue!9253 (value!141399 List!28014)) (True!9252) (False!9252) (Broken!23132 (value!141400 List!28014)) (Broken!23133 (value!141401 List!28014)) (True!9253) (RightBrace!4626) (RightBracket!4626) (Colon!4626) (Null!4626) (Comma!4626) (LeftBracket!4626) (False!9253) (LeftBrace!4626) (ImaginaryLiteralValue!4626 (text!32828 List!28014)) (StringLiteralValue!13878 (value!141402 List!28014)) (EOFValue!4626 (value!141403 List!28014)) (IdentValue!4626 (value!141404 List!28014)) (DelimiterValue!9253 (value!141405 List!28014)) (DedentValue!4626 (value!141406 List!28014)) (NewLineValue!4626 (value!141407 List!28014)) (IntegerValue!13878 (value!141408 (_ BitVec 32)) (text!32829 List!28014)) (IntegerValue!13879 (value!141409 Int) (text!32830 List!28014)) (Times!4626) (Or!4626) (Equal!4626) (Minus!4626) (Broken!23134 (value!141410 List!28014)) (And!4626) (Div!4626) (LessEqual!4626) (Mod!4626) (Concat!11524) (Not!4626) (Plus!4626) (SpaceValue!4626 (value!141411 List!28014)) (IntegerValue!13880 (value!141412 Int) (text!32831 List!28014)) (StringLiteralValue!13879 (text!32832 List!28014)) (FloatLiteralValue!9253 (text!32833 List!28014)) (BytesLiteralValue!4626 (value!141413 List!28014)) (CommentValue!9253 (value!141414 List!28014)) (StringLiteralValue!13880 (value!141415 List!28014)) (ErrorTokenValue!4626 (msg!4687 List!28014)) )
))
(declare-datatypes ((C!13954 0))(
  ( (C!13955 (val!8219 Int)) )
))
(declare-datatypes ((Regex!6898 0))(
  ( (ElementMatch!6898 (c!375095 C!13954)) (Concat!11525 (regOne!14308 Regex!6898) (regTwo!14308 Regex!6898)) (EmptyExpr!6898) (Star!6898 (reg!7227 Regex!6898)) (EmptyLang!6898) (Union!6898 (regOne!14309 Regex!6898) (regTwo!14309 Regex!6898)) )
))
(declare-datatypes ((String!30732 0))(
  ( (String!30733 (value!141416 String)) )
))
(declare-datatypes ((List!28015 0))(
  ( (Nil!27917) (Cons!27917 (h!33318 C!13954) (t!207892 List!28015)) )
))
(declare-datatypes ((IArray!18289 0))(
  ( (IArray!18290 (innerList!9202 List!28015)) )
))
(declare-datatypes ((Conc!9142 0))(
  ( (Node!9142 (left!21227 Conc!9142) (right!21557 Conc!9142) (csize!18514 Int) (cheight!9353 Int)) (Leaf!13496 (xs!12122 IArray!18289) (csize!18515 Int)) (Empty!9142) )
))
(declare-datatypes ((BalanceConc!17896 0))(
  ( (BalanceConc!17897 (c!375096 Conc!9142)) )
))
(declare-datatypes ((TokenValueInjection!8752 0))(
  ( (TokenValueInjection!8753 (toValue!6280 Int) (toChars!6139 Int)) )
))
(declare-datatypes ((Rule!8680 0))(
  ( (Rule!8681 (regex!4440 Regex!6898) (tag!4930 String!30732) (isSeparator!4440 Bool) (transformation!4440 TokenValueInjection!8752)) )
))
(declare-datatypes ((List!28016 0))(
  ( (Nil!27918) (Cons!27918 (h!33319 Rule!8680) (t!207893 List!28016)) )
))
(declare-fun rules!1706 () List!28016)

(declare-fun e!1507360 () Bool)

(declare-fun inv!38136 (String!30732) Bool)

(declare-fun inv!38139 (TokenValueInjection!8752) Bool)

(assert (=> b!2359837 (= e!1507361 (and tp!754711 (inv!38136 (tag!4930 (h!33319 rules!1706))) (inv!38139 (transformation!4440 (h!33319 rules!1706))) e!1507360))))

(declare-fun b!2359838 () Bool)

(declare-fun e!1507363 () Bool)

(assert (=> b!2359838 (= e!1507363 false)))

(declare-datatypes ((LexerInterface!4037 0))(
  ( (LexerInterfaceExt!4034 (__x!18508 Int)) (Lexer!4035) )
))
(declare-fun thiss!13512 () LexerInterface!4037)

(declare-fun input!1160 () List!28015)

(declare-datatypes ((Token!8350 0))(
  ( (Token!8351 (value!141417 TokenValue!4626) (rule!6792 Rule!8680) (size!22108 Int) (originalCharacters!5206 List!28015)) )
))
(declare-datatypes ((tuple2!27652 0))(
  ( (tuple2!27653 (_1!16367 Token!8350) (_2!16367 List!28015)) )
))
(declare-datatypes ((Option!5447 0))(
  ( (None!5446) (Some!5446 (v!30848 tuple2!27652)) )
))
(declare-fun lt!864079 () Option!5447)

(declare-fun maxPrefix!2267 (LexerInterface!4037 List!28016 List!28015) Option!5447)

(assert (=> b!2359838 (= lt!864079 (maxPrefix!2267 thiss!13512 rules!1706 input!1160))))

(declare-fun b!2359839 () Bool)

(declare-fun e!1507359 () Bool)

(declare-fun tp_is_empty!11213 () Bool)

(declare-fun tp!754709 () Bool)

(assert (=> b!2359839 (= e!1507359 (and tp_is_empty!11213 tp!754709))))

(declare-fun res!1001480 () Bool)

(assert (=> start!231460 (=> (not res!1001480) (not e!1507363))))

(assert (=> start!231460 (= res!1001480 (is-Lexer!4035 thiss!13512))))

(assert (=> start!231460 e!1507363))

(assert (=> start!231460 true))

(declare-fun e!1507364 () Bool)

(assert (=> start!231460 e!1507364))

(assert (=> start!231460 e!1507359))

(assert (=> b!2359840 (= e!1507360 (and tp!754710 tp!754708))))

(declare-fun b!2359841 () Bool)

(declare-fun tp!754712 () Bool)

(assert (=> b!2359841 (= e!1507364 (and e!1507361 tp!754712))))

(declare-fun b!2359842 () Bool)

(declare-fun res!1001481 () Bool)

(assert (=> b!2359842 (=> (not res!1001481) (not e!1507363))))

(declare-fun isEmpty!15858 (List!28016) Bool)

(assert (=> b!2359842 (= res!1001481 (not (isEmpty!15858 rules!1706)))))

(declare-fun b!2359843 () Bool)

(declare-fun res!1001479 () Bool)

(assert (=> b!2359843 (=> (not res!1001479) (not e!1507363))))

(declare-fun rulesInvariant!3537 (LexerInterface!4037 List!28016) Bool)

(assert (=> b!2359843 (= res!1001479 (rulesInvariant!3537 thiss!13512 rules!1706))))

(assert (= (and start!231460 res!1001480) b!2359842))

(assert (= (and b!2359842 res!1001481) b!2359843))

(assert (= (and b!2359843 res!1001479) b!2359838))

(assert (= b!2359837 b!2359840))

(assert (= b!2359841 b!2359837))

(assert (= (and start!231460 (is-Cons!27918 rules!1706)) b!2359841))

(assert (= (and start!231460 (is-Cons!27917 input!1160)) b!2359839))

(declare-fun m!2772255 () Bool)

(assert (=> b!2359837 m!2772255))

(declare-fun m!2772257 () Bool)

(assert (=> b!2359837 m!2772257))

(declare-fun m!2772259 () Bool)

(assert (=> b!2359838 m!2772259))

(declare-fun m!2772261 () Bool)

(assert (=> b!2359842 m!2772261))

(declare-fun m!2772263 () Bool)

(assert (=> b!2359843 m!2772263))

(push 1)

(assert (not b!2359843))

(assert (not b!2359838))

(assert b_and!185405)

(assert (not b!2359837))

(assert (not b!2359842))

(assert (not b!2359841))

(assert b_and!185407)

(assert (not b_next!71175))

(assert (not b!2359839))

(assert (not b_next!71173))

(assert tp_is_empty!11213)

(check-sat)

(pop 1)

(push 1)

(assert b_and!185407)

(assert b_and!185405)

(assert (not b_next!71173))

(assert (not b_next!71175))

(check-sat)

(pop 1)

