; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352968 () Bool)

(assert start!352968)

(declare-fun b!3759962 () Bool)

(declare-fun b_free!100625 () Bool)

(declare-fun b_next!101329 () Bool)

(assert (=> b!3759962 (= b_free!100625 (not b_next!101329))))

(declare-fun tp!1148768 () Bool)

(declare-fun b_and!279235 () Bool)

(assert (=> b!3759962 (= tp!1148768 b_and!279235)))

(declare-fun b_free!100627 () Bool)

(declare-fun b_next!101331 () Bool)

(assert (=> b!3759962 (= b_free!100627 (not b_next!101331))))

(declare-fun tp!1148766 () Bool)

(declare-fun b_and!279237 () Bool)

(assert (=> b!3759962 (= tp!1148766 b_and!279237)))

(declare-fun b!3759958 () Bool)

(declare-fun b_free!100629 () Bool)

(declare-fun b_next!101333 () Bool)

(assert (=> b!3759958 (= b_free!100629 (not b_next!101333))))

(declare-fun tp!1148760 () Bool)

(declare-fun b_and!279239 () Bool)

(assert (=> b!3759958 (= tp!1148760 b_and!279239)))

(declare-fun b_free!100631 () Bool)

(declare-fun b_next!101335 () Bool)

(assert (=> b!3759958 (= b_free!100631 (not b_next!101335))))

(declare-fun tp!1148762 () Bool)

(declare-fun b_and!279241 () Bool)

(assert (=> b!3759958 (= tp!1148762 b_and!279241)))

(declare-fun e!2325297 () Bool)

(assert (=> b!3759958 (= e!2325297 (and tp!1148760 tp!1148762))))

(declare-fun e!2325299 () Bool)

(declare-fun e!2325304 () Bool)

(declare-fun tp!1148764 () Bool)

(declare-fun b!3759959 () Bool)

(declare-datatypes ((List!40197 0))(
  ( (Nil!40073) (Cons!40073 (h!45493 (_ BitVec 16)) (t!303750 List!40197)) )
))
(declare-datatypes ((TokenValue!6368 0))(
  ( (FloatLiteralValue!12736 (text!45021 List!40197)) (TokenValueExt!6367 (__x!24953 Int)) (Broken!31840 (value!195496 List!40197)) (Object!6491) (End!6368) (Def!6368) (Underscore!6368) (Match!6368) (Else!6368) (Error!6368) (Case!6368) (If!6368) (Extends!6368) (Abstract!6368) (Class!6368) (Val!6368) (DelimiterValue!12736 (del!6428 List!40197)) (KeywordValue!6374 (value!195497 List!40197)) (CommentValue!12736 (value!195498 List!40197)) (WhitespaceValue!12736 (value!195499 List!40197)) (IndentationValue!6368 (value!195500 List!40197)) (String!45497) (Int32!6368) (Broken!31841 (value!195501 List!40197)) (Boolean!6369) (Unit!57797) (OperatorValue!6371 (op!6428 List!40197)) (IdentifierValue!12736 (value!195502 List!40197)) (IdentifierValue!12737 (value!195503 List!40197)) (WhitespaceValue!12737 (value!195504 List!40197)) (True!12736) (False!12736) (Broken!31842 (value!195505 List!40197)) (Broken!31843 (value!195506 List!40197)) (True!12737) (RightBrace!6368) (RightBracket!6368) (Colon!6368) (Null!6368) (Comma!6368) (LeftBracket!6368) (False!12737) (LeftBrace!6368) (ImaginaryLiteralValue!6368 (text!45022 List!40197)) (StringLiteralValue!19104 (value!195507 List!40197)) (EOFValue!6368 (value!195508 List!40197)) (IdentValue!6368 (value!195509 List!40197)) (DelimiterValue!12737 (value!195510 List!40197)) (DedentValue!6368 (value!195511 List!40197)) (NewLineValue!6368 (value!195512 List!40197)) (IntegerValue!19104 (value!195513 (_ BitVec 32)) (text!45023 List!40197)) (IntegerValue!19105 (value!195514 Int) (text!45024 List!40197)) (Times!6368) (Or!6368) (Equal!6368) (Minus!6368) (Broken!31844 (value!195515 List!40197)) (And!6368) (Div!6368) (LessEqual!6368) (Mod!6368) (Concat!17411) (Not!6368) (Plus!6368) (SpaceValue!6368 (value!195516 List!40197)) (IntegerValue!19106 (value!195517 Int) (text!45025 List!40197)) (StringLiteralValue!19105 (text!45026 List!40197)) (FloatLiteralValue!12737 (text!45027 List!40197)) (BytesLiteralValue!6368 (value!195518 List!40197)) (CommentValue!12737 (value!195519 List!40197)) (StringLiteralValue!19106 (value!195520 List!40197)) (ErrorTokenValue!6368 (msg!6429 List!40197)) )
))
(declare-datatypes ((C!22272 0))(
  ( (C!22273 (val!13200 Int)) )
))
(declare-datatypes ((List!40198 0))(
  ( (Nil!40074) (Cons!40074 (h!45494 C!22272) (t!303751 List!40198)) )
))
(declare-datatypes ((IArray!24547 0))(
  ( (IArray!24548 (innerList!12331 List!40198)) )
))
(declare-datatypes ((Conc!12271 0))(
  ( (Node!12271 (left!31031 Conc!12271) (right!31361 Conc!12271) (csize!24772 Int) (cheight!12482 Int)) (Leaf!19032 (xs!15477 IArray!24547) (csize!24773 Int)) (Empty!12271) )
))
(declare-datatypes ((BalanceConc!24136 0))(
  ( (BalanceConc!24137 (c!651070 Conc!12271)) )
))
(declare-datatypes ((String!45498 0))(
  ( (String!45499 (value!195521 String)) )
))
(declare-datatypes ((Regex!11043 0))(
  ( (ElementMatch!11043 (c!651071 C!22272)) (Concat!17412 (regOne!22598 Regex!11043) (regTwo!22598 Regex!11043)) (EmptyExpr!11043) (Star!11043 (reg!11372 Regex!11043)) (EmptyLang!11043) (Union!11043 (regOne!22599 Regex!11043) (regTwo!22599 Regex!11043)) )
))
(declare-datatypes ((TokenValueInjection!12164 0))(
  ( (TokenValueInjection!12165 (toValue!8494 Int) (toChars!8353 Int)) )
))
(declare-datatypes ((Rule!12076 0))(
  ( (Rule!12077 (regex!6138 Regex!11043) (tag!6998 String!45498) (isSeparator!6138 Bool) (transformation!6138 TokenValueInjection!12164)) )
))
(declare-datatypes ((Token!11414 0))(
  ( (Token!11415 (value!195522 TokenValue!6368) (rule!8902 Rule!12076) (size!30162 Int) (originalCharacters!6738 List!40198)) )
))
(declare-fun separatorToken!124 () Token!11414)

(declare-fun inv!53733 (String!45498) Bool)

(declare-fun inv!53736 (TokenValueInjection!12164) Bool)

(assert (=> b!3759959 (= e!2325299 (and tp!1148764 (inv!53733 (tag!6998 (rule!8902 separatorToken!124))) (inv!53736 (transformation!6138 (rule!8902 separatorToken!124))) e!2325304))))

(declare-fun res!1522695 () Bool)

(declare-fun e!2325294 () Bool)

(assert (=> start!352968 (=> (not res!1522695) (not e!2325294))))

(declare-datatypes ((List!40199 0))(
  ( (Nil!40075) (Cons!40075 (h!45495 Token!11414) (t!303752 List!40199)) )
))
(declare-fun l!4295 () List!40199)

(declare-datatypes ((LexerInterface!5727 0))(
  ( (LexerInterfaceExt!5724 (__x!24954 Int)) (Lexer!5725) )
))
(declare-fun thiss!13942 () LexerInterface!5727)

(get-info :version)

(assert (=> start!352968 (= res!1522695 (and ((_ is Lexer!5725) thiss!13942) (isSeparator!6138 (rule!8902 separatorToken!124)) ((_ is Cons!40075) l!4295)))))

(assert (=> start!352968 e!2325294))

(assert (=> start!352968 true))

(declare-fun e!2325301 () Bool)

(declare-fun inv!53737 (Token!11414) Bool)

(assert (=> start!352968 (and (inv!53737 separatorToken!124) e!2325301)))

(declare-fun e!2325298 () Bool)

(assert (=> start!352968 e!2325298))

(declare-fun e!2325302 () Bool)

(assert (=> start!352968 e!2325302))

(declare-fun b!3759960 () Bool)

(declare-fun tp_is_empty!19081 () Bool)

(declare-fun tp!1148759 () Bool)

(assert (=> b!3759960 (= e!2325302 (and tp_is_empty!19081 tp!1148759))))

(declare-fun tp!1148767 () Bool)

(declare-fun e!2325296 () Bool)

(declare-fun e!2325303 () Bool)

(declare-fun b!3759961 () Bool)

(declare-fun inv!21 (TokenValue!6368) Bool)

(assert (=> b!3759961 (= e!2325303 (and (inv!21 (value!195522 (h!45495 l!4295))) e!2325296 tp!1148767))))

(assert (=> b!3759962 (= e!2325304 (and tp!1148768 tp!1148766))))

(declare-fun b!3759963 () Bool)

(declare-fun tp!1148761 () Bool)

(assert (=> b!3759963 (= e!2325301 (and (inv!21 (value!195522 separatorToken!124)) e!2325299 tp!1148761))))

(declare-fun tp!1148765 () Bool)

(declare-fun b!3759964 () Bool)

(assert (=> b!3759964 (= e!2325298 (and (inv!53737 (h!45495 l!4295)) e!2325303 tp!1148765))))

(declare-fun b!3759965 () Bool)

(assert (=> b!3759965 (= e!2325294 (not true))))

(declare-fun lt!1301490 () List!40198)

(declare-fun lt!1301489 () List!40198)

(declare-fun printWithSeparatorTokenListTailRec!46 (LexerInterface!5727 List!40199 Token!11414 List!40198) List!40198)

(assert (=> b!3759965 (= lt!1301489 (printWithSeparatorTokenListTailRec!46 thiss!13942 (t!303752 l!4295) separatorToken!124 lt!1301490))))

(declare-fun lt!1301492 () List!40198)

(assert (=> b!3759965 (= lt!1301490 lt!1301492)))

(declare-fun lt!1301491 () List!40198)

(declare-fun acc!415 () List!40198)

(declare-fun lt!1301487 () List!40198)

(declare-fun ++!9935 (List!40198 List!40198) List!40198)

(assert (=> b!3759965 (= lt!1301490 (++!9935 (++!9935 acc!415 lt!1301487) lt!1301491))))

(declare-datatypes ((Unit!57798 0))(
  ( (Unit!57799) )
))
(declare-fun lt!1301495 () Unit!57798)

(declare-fun lemmaConcatAssociativity!2098 (List!40198 List!40198 List!40198) Unit!57798)

(assert (=> b!3759965 (= lt!1301495 (lemmaConcatAssociativity!2098 acc!415 lt!1301487 lt!1301491))))

(declare-fun lt!1301488 () List!40198)

(declare-fun lt!1301494 () List!40198)

(assert (=> b!3759965 (= (++!9935 lt!1301492 lt!1301494) (++!9935 acc!415 (++!9935 lt!1301488 lt!1301494)))))

(assert (=> b!3759965 (= lt!1301492 (++!9935 acc!415 lt!1301488))))

(declare-fun lt!1301493 () Unit!57798)

(assert (=> b!3759965 (= lt!1301493 (lemmaConcatAssociativity!2098 acc!415 lt!1301488 lt!1301494))))

(declare-fun printWithSeparatorTokenList!406 (LexerInterface!5727 List!40199 Token!11414) List!40198)

(assert (=> b!3759965 (= lt!1301494 (printWithSeparatorTokenList!406 thiss!13942 (t!303752 l!4295) separatorToken!124))))

(assert (=> b!3759965 (= lt!1301488 (++!9935 lt!1301487 lt!1301491))))

(declare-fun list!14790 (BalanceConc!24136) List!40198)

(declare-fun charsOf!3991 (Token!11414) BalanceConc!24136)

(assert (=> b!3759965 (= lt!1301491 (list!14790 (charsOf!3991 separatorToken!124)))))

(assert (=> b!3759965 (= lt!1301487 (list!14790 (charsOf!3991 (h!45495 l!4295))))))

(declare-fun tp!1148763 () Bool)

(declare-fun b!3759966 () Bool)

(assert (=> b!3759966 (= e!2325296 (and tp!1148763 (inv!53733 (tag!6998 (rule!8902 (h!45495 l!4295)))) (inv!53736 (transformation!6138 (rule!8902 (h!45495 l!4295)))) e!2325297))))

(assert (= (and start!352968 res!1522695) b!3759965))

(assert (= b!3759959 b!3759962))

(assert (= b!3759963 b!3759959))

(assert (= start!352968 b!3759963))

(assert (= b!3759966 b!3759958))

(assert (= b!3759961 b!3759966))

(assert (= b!3759964 b!3759961))

(assert (= (and start!352968 ((_ is Cons!40075) l!4295)) b!3759964))

(assert (= (and start!352968 ((_ is Cons!40074) acc!415)) b!3759960))

(declare-fun m!4253755 () Bool)

(assert (=> b!3759964 m!4253755))

(declare-fun m!4253757 () Bool)

(assert (=> b!3759963 m!4253757))

(declare-fun m!4253759 () Bool)

(assert (=> b!3759961 m!4253759))

(declare-fun m!4253761 () Bool)

(assert (=> b!3759959 m!4253761))

(declare-fun m!4253763 () Bool)

(assert (=> b!3759959 m!4253763))

(declare-fun m!4253765 () Bool)

(assert (=> b!3759966 m!4253765))

(declare-fun m!4253767 () Bool)

(assert (=> b!3759966 m!4253767))

(declare-fun m!4253769 () Bool)

(assert (=> start!352968 m!4253769))

(declare-fun m!4253771 () Bool)

(assert (=> b!3759965 m!4253771))

(declare-fun m!4253773 () Bool)

(assert (=> b!3759965 m!4253773))

(declare-fun m!4253775 () Bool)

(assert (=> b!3759965 m!4253775))

(declare-fun m!4253777 () Bool)

(assert (=> b!3759965 m!4253777))

(declare-fun m!4253779 () Bool)

(assert (=> b!3759965 m!4253779))

(declare-fun m!4253781 () Bool)

(assert (=> b!3759965 m!4253781))

(declare-fun m!4253783 () Bool)

(assert (=> b!3759965 m!4253783))

(declare-fun m!4253785 () Bool)

(assert (=> b!3759965 m!4253785))

(declare-fun m!4253787 () Bool)

(assert (=> b!3759965 m!4253787))

(declare-fun m!4253789 () Bool)

(assert (=> b!3759965 m!4253789))

(declare-fun m!4253791 () Bool)

(assert (=> b!3759965 m!4253791))

(assert (=> b!3759965 m!4253771))

(assert (=> b!3759965 m!4253783))

(declare-fun m!4253793 () Bool)

(assert (=> b!3759965 m!4253793))

(assert (=> b!3759965 m!4253775))

(assert (=> b!3759965 m!4253789))

(declare-fun m!4253795 () Bool)

(assert (=> b!3759965 m!4253795))

(declare-fun m!4253797 () Bool)

(assert (=> b!3759965 m!4253797))

(declare-fun m!4253799 () Bool)

(assert (=> b!3759965 m!4253799))

(check-sat (not b_next!101331) tp_is_empty!19081 (not b_next!101335) (not b!3759964) b_and!279241 b_and!279239 b_and!279235 (not b!3759965) (not b!3759960) (not b_next!101329) (not b_next!101333) (not start!352968) (not b!3759966) (not b!3759959) b_and!279237 (not b!3759963) (not b!3759961))
(check-sat (not b_next!101329) (not b_next!101331) (not b_next!101333) (not b_next!101335) b_and!279241 b_and!279239 b_and!279237 b_and!279235)
