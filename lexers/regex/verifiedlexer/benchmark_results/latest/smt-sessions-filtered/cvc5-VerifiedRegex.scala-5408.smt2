; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274974 () Bool)

(assert start!274974)

(declare-fun b!2831217 () Bool)

(declare-fun b_free!81381 () Bool)

(declare-fun b_next!82085 () Bool)

(assert (=> b!2831217 (= b_free!81381 (not b_next!82085))))

(declare-fun tp!904753 () Bool)

(declare-fun b_and!207043 () Bool)

(assert (=> b!2831217 (= tp!904753 b_and!207043)))

(declare-fun b_free!81383 () Bool)

(declare-fun b_next!82087 () Bool)

(assert (=> b!2831217 (= b_free!81383 (not b_next!82087))))

(declare-fun tp!904750 () Bool)

(declare-fun b_and!207045 () Bool)

(assert (=> b!2831217 (= tp!904750 b_and!207045)))

(declare-fun b!2831214 () Bool)

(declare-fun b_free!81385 () Bool)

(declare-fun b_next!82089 () Bool)

(assert (=> b!2831214 (= b_free!81385 (not b_next!82089))))

(declare-fun tp!904749 () Bool)

(declare-fun b_and!207047 () Bool)

(assert (=> b!2831214 (= tp!904749 b_and!207047)))

(declare-fun b_free!81387 () Bool)

(declare-fun b_next!82091 () Bool)

(assert (=> b!2831214 (= b_free!81387 (not b_next!82091))))

(declare-fun tp!904751 () Bool)

(declare-fun b_and!207049 () Bool)

(assert (=> b!2831214 (= tp!904751 b_and!207049)))

(declare-fun tp!904752 () Bool)

(declare-datatypes ((List!33491 0))(
  ( (Nil!33367) (Cons!33367 (h!38787 (_ BitVec 16)) (t!231368 List!33491)) )
))
(declare-datatypes ((TokenValue!5231 0))(
  ( (FloatLiteralValue!10462 (text!37062 List!33491)) (TokenValueExt!5230 (__x!22200 Int)) (Broken!26155 (value!160873 List!33491)) (Object!5354) (End!5231) (Def!5231) (Underscore!5231) (Match!5231) (Else!5231) (Error!5231) (Case!5231) (If!5231) (Extends!5231) (Abstract!5231) (Class!5231) (Val!5231) (DelimiterValue!10462 (del!5291 List!33491)) (KeywordValue!5237 (value!160874 List!33491)) (CommentValue!10462 (value!160875 List!33491)) (WhitespaceValue!10462 (value!160876 List!33491)) (IndentationValue!5231 (value!160877 List!33491)) (String!36678) (Int32!5231) (Broken!26156 (value!160878 List!33491)) (Boolean!5232) (Unit!47359) (OperatorValue!5234 (op!5291 List!33491)) (IdentifierValue!10462 (value!160879 List!33491)) (IdentifierValue!10463 (value!160880 List!33491)) (WhitespaceValue!10463 (value!160881 List!33491)) (True!10462) (False!10462) (Broken!26157 (value!160882 List!33491)) (Broken!26158 (value!160883 List!33491)) (True!10463) (RightBrace!5231) (RightBracket!5231) (Colon!5231) (Null!5231) (Comma!5231) (LeftBracket!5231) (False!10463) (LeftBrace!5231) (ImaginaryLiteralValue!5231 (text!37063 List!33491)) (StringLiteralValue!15693 (value!160884 List!33491)) (EOFValue!5231 (value!160885 List!33491)) (IdentValue!5231 (value!160886 List!33491)) (DelimiterValue!10463 (value!160887 List!33491)) (DedentValue!5231 (value!160888 List!33491)) (NewLineValue!5231 (value!160889 List!33491)) (IntegerValue!15693 (value!160890 (_ BitVec 32)) (text!37064 List!33491)) (IntegerValue!15694 (value!160891 Int) (text!37065 List!33491)) (Times!5231) (Or!5231) (Equal!5231) (Minus!5231) (Broken!26159 (value!160892 List!33491)) (And!5231) (Div!5231) (LessEqual!5231) (Mod!5231) (Concat!13623) (Not!5231) (Plus!5231) (SpaceValue!5231 (value!160893 List!33491)) (IntegerValue!15695 (value!160894 Int) (text!37066 List!33491)) (StringLiteralValue!15694 (text!37067 List!33491)) (FloatLiteralValue!10463 (text!37068 List!33491)) (BytesLiteralValue!5231 (value!160895 List!33491)) (CommentValue!10463 (value!160896 List!33491)) (StringLiteralValue!15695 (value!160897 List!33491)) (ErrorTokenValue!5231 (msg!5292 List!33491)) )
))
(declare-datatypes ((C!16966 0))(
  ( (C!16967 (val!10495 Int)) )
))
(declare-datatypes ((List!33492 0))(
  ( (Nil!33368) (Cons!33368 (h!38788 C!16966) (t!231369 List!33492)) )
))
(declare-datatypes ((IArray!20719 0))(
  ( (IArray!20720 (innerList!10417 List!33492)) )
))
(declare-datatypes ((Conc!10357 0))(
  ( (Node!10357 (left!25177 Conc!10357) (right!25507 Conc!10357) (csize!20944 Int) (cheight!10568 Int)) (Leaf!15766 (xs!13469 IArray!20719) (csize!20945 Int)) (Empty!10357) )
))
(declare-datatypes ((Regex!8392 0))(
  ( (ElementMatch!8392 (c!457883 C!16966)) (Concat!13624 (regOne!17296 Regex!8392) (regTwo!17296 Regex!8392)) (EmptyExpr!8392) (Star!8392 (reg!8721 Regex!8392)) (EmptyLang!8392) (Union!8392 (regOne!17297 Regex!8392) (regTwo!17297 Regex!8392)) )
))
(declare-datatypes ((String!36679 0))(
  ( (String!36680 (value!160898 String)) )
))
(declare-datatypes ((BalanceConc!20352 0))(
  ( (BalanceConc!20353 (c!457884 Conc!10357)) )
))
(declare-datatypes ((TokenValueInjection!9890 0))(
  ( (TokenValueInjection!9891 (toValue!7027 Int) (toChars!6886 Int)) )
))
(declare-datatypes ((Rule!9802 0))(
  ( (Rule!9803 (regex!5001 Regex!8392) (tag!5505 String!36679) (isSeparator!5001 Bool) (transformation!5001 TokenValueInjection!9890)) )
))
(declare-datatypes ((Token!9404 0))(
  ( (Token!9405 (value!160899 TokenValue!5231) (rule!7429 Rule!9802) (size!25964 Int) (originalCharacters!5733 List!33492)) )
))
(declare-datatypes ((List!33493 0))(
  ( (Nil!33369) (Cons!33369 (h!38789 Token!9404) (t!231370 List!33493)) )
))
(declare-fun l!4019 () List!33493)

(declare-fun b!2831207 () Bool)

(declare-fun e!1792461 () Bool)

(declare-fun e!1792466 () Bool)

(declare-fun inv!45320 (Token!9404) Bool)

(assert (=> b!2831207 (= e!1792461 (and (inv!45320 (h!38789 l!4019)) e!1792466 tp!904752))))

(declare-fun b!2831208 () Bool)

(declare-fun e!1792468 () Bool)

(declare-fun size!25965 (BalanceConc!20352) Int)

(declare-fun charsOf!3097 (Token!9404) BalanceConc!20352)

(assert (=> b!2831208 (= e!1792468 (> (size!25965 (charsOf!3097 (h!38789 (t!231370 l!4019)))) 0))))

(declare-fun b!2831209 () Bool)

(declare-fun res!1178573 () Bool)

(declare-fun e!1792460 () Bool)

(assert (=> b!2831209 (=> (not res!1178573) (not e!1792460))))

(declare-datatypes ((LexerInterface!4591 0))(
  ( (LexerInterfaceExt!4588 (__x!22201 Int)) (Lexer!4589) )
))
(declare-fun thiss!11007 () LexerInterface!4591)

(declare-datatypes ((List!33494 0))(
  ( (Nil!33370) (Cons!33370 (h!38790 Rule!9802) (t!231371 List!33494)) )
))
(declare-fun rules!1047 () List!33494)

(declare-datatypes ((IArray!20721 0))(
  ( (IArray!20722 (innerList!10418 List!33493)) )
))
(declare-datatypes ((Conc!10358 0))(
  ( (Node!10358 (left!25178 Conc!10358) (right!25508 Conc!10358) (csize!20946 Int) (cheight!10569 Int)) (Leaf!15767 (xs!13470 IArray!20721) (csize!20947 Int)) (Empty!10358) )
))
(declare-datatypes ((BalanceConc!20354 0))(
  ( (BalanceConc!20355 (c!457885 Conc!10358)) )
))
(declare-fun rulesProduceEachTokenIndividually!1107 (LexerInterface!4591 List!33494 BalanceConc!20354) Bool)

(declare-fun seqFromList!3247 (List!33493) BalanceConc!20354)

(assert (=> b!2831209 (= res!1178573 (rulesProduceEachTokenIndividually!1107 thiss!11007 rules!1047 (seqFromList!3247 l!4019)))))

(declare-fun b!2831210 () Bool)

(declare-fun tp!904747 () Bool)

(declare-fun e!1792464 () Bool)

(declare-fun e!1792469 () Bool)

(declare-fun inv!45317 (String!36679) Bool)

(declare-fun inv!45321 (TokenValueInjection!9890) Bool)

(assert (=> b!2831210 (= e!1792469 (and tp!904747 (inv!45317 (tag!5505 (rule!7429 (h!38789 l!4019)))) (inv!45321 (transformation!5001 (rule!7429 (h!38789 l!4019)))) e!1792464))))

(declare-fun tp!904748 () Bool)

(declare-fun b!2831211 () Bool)

(declare-fun inv!21 (TokenValue!5231) Bool)

(assert (=> b!2831211 (= e!1792466 (and (inv!21 (value!160899 (h!38789 l!4019))) e!1792469 tp!904748))))

(declare-fun b!2831212 () Bool)

(declare-fun res!1178574 () Bool)

(assert (=> b!2831212 (=> (not res!1178574) (not e!1792460))))

(assert (=> b!2831212 (= res!1178574 (and (is-Cons!33369 l!4019) (is-Cons!33369 (t!231370 l!4019))))))

(declare-fun b!2831213 () Bool)

(declare-fun res!1178576 () Bool)

(assert (=> b!2831213 (=> (not res!1178576) (not e!1792460))))

(declare-fun rulesInvariant!4007 (LexerInterface!4591 List!33494) Bool)

(assert (=> b!2831213 (= res!1178576 (rulesInvariant!4007 thiss!11007 rules!1047))))

(declare-fun res!1178575 () Bool)

(assert (=> start!274974 (=> (not res!1178575) (not e!1792460))))

(assert (=> start!274974 (= res!1178575 (is-Lexer!4589 thiss!11007))))

(assert (=> start!274974 e!1792460))

(assert (=> start!274974 true))

(declare-fun e!1792465 () Bool)

(assert (=> start!274974 e!1792465))

(assert (=> start!274974 e!1792461))

(assert (=> b!2831214 (= e!1792464 (and tp!904749 tp!904751))))

(declare-fun b!2831215 () Bool)

(declare-fun res!1178572 () Bool)

(assert (=> b!2831215 (=> (not res!1178572) (not e!1792460))))

(declare-fun isEmpty!18398 (List!33494) Bool)

(assert (=> b!2831215 (= res!1178572 (not (isEmpty!18398 rules!1047)))))

(declare-fun b!2831216 () Bool)

(declare-fun e!1792458 () Bool)

(declare-fun tp!904745 () Bool)

(assert (=> b!2831216 (= e!1792465 (and e!1792458 tp!904745))))

(declare-fun e!1792467 () Bool)

(assert (=> b!2831217 (= e!1792467 (and tp!904753 tp!904750))))

(declare-fun b!2831218 () Bool)

(declare-fun tp!904746 () Bool)

(assert (=> b!2831218 (= e!1792458 (and tp!904746 (inv!45317 (tag!5505 (h!38790 rules!1047))) (inv!45321 (transformation!5001 (h!38790 rules!1047))) e!1792467))))

(declare-fun b!2831219 () Bool)

(assert (=> b!2831219 (= e!1792460 (not true))))

(assert (=> b!2831219 e!1792468))

(declare-fun res!1178578 () Bool)

(assert (=> b!2831219 (=> (not res!1178578) (not e!1792468))))

(declare-fun rulesProduceIndividualToken!2123 (LexerInterface!4591 List!33494 Token!9404) Bool)

(assert (=> b!2831219 (= res!1178578 (rulesProduceIndividualToken!2123 thiss!11007 rules!1047 (h!38789 (t!231370 l!4019))))))

(declare-datatypes ((Unit!47360 0))(
  ( (Unit!47361) )
))
(declare-fun lt!1010104 () Unit!47360)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!741 (LexerInterface!4591 List!33494 List!33493 Token!9404) Unit!47360)

(assert (=> b!2831219 (= lt!1010104 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!741 thiss!11007 rules!1047 l!4019 (h!38789 (t!231370 l!4019))))))

(assert (=> b!2831219 (rulesProduceIndividualToken!2123 thiss!11007 rules!1047 (h!38789 l!4019))))

(declare-fun lt!1010105 () Unit!47360)

(assert (=> b!2831219 (= lt!1010105 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!741 thiss!11007 rules!1047 l!4019 (h!38789 l!4019)))))

(declare-fun b!2831220 () Bool)

(declare-fun res!1178577 () Bool)

(assert (=> b!2831220 (=> (not res!1178577) (not e!1792460))))

(declare-fun rulesProduceEachTokenIndividuallyList!1634 (LexerInterface!4591 List!33494 List!33493) Bool)

(assert (=> b!2831220 (= res!1178577 (rulesProduceEachTokenIndividuallyList!1634 thiss!11007 rules!1047 l!4019))))

(assert (= (and start!274974 res!1178575) b!2831215))

(assert (= (and b!2831215 res!1178572) b!2831213))

(assert (= (and b!2831213 res!1178576) b!2831220))

(assert (= (and b!2831220 res!1178577) b!2831209))

(assert (= (and b!2831209 res!1178573) b!2831212))

(assert (= (and b!2831212 res!1178574) b!2831219))

(assert (= (and b!2831219 res!1178578) b!2831208))

(assert (= b!2831218 b!2831217))

(assert (= b!2831216 b!2831218))

(assert (= (and start!274974 (is-Cons!33370 rules!1047)) b!2831216))

(assert (= b!2831210 b!2831214))

(assert (= b!2831211 b!2831210))

(assert (= b!2831207 b!2831211))

(assert (= (and start!274974 (is-Cons!33369 l!4019)) b!2831207))

(declare-fun m!3260763 () Bool)

(assert (=> b!2831219 m!3260763))

(declare-fun m!3260765 () Bool)

(assert (=> b!2831219 m!3260765))

(declare-fun m!3260767 () Bool)

(assert (=> b!2831219 m!3260767))

(declare-fun m!3260769 () Bool)

(assert (=> b!2831219 m!3260769))

(declare-fun m!3260771 () Bool)

(assert (=> b!2831207 m!3260771))

(declare-fun m!3260773 () Bool)

(assert (=> b!2831210 m!3260773))

(declare-fun m!3260775 () Bool)

(assert (=> b!2831210 m!3260775))

(declare-fun m!3260777 () Bool)

(assert (=> b!2831209 m!3260777))

(assert (=> b!2831209 m!3260777))

(declare-fun m!3260779 () Bool)

(assert (=> b!2831209 m!3260779))

(declare-fun m!3260781 () Bool)

(assert (=> b!2831218 m!3260781))

(declare-fun m!3260783 () Bool)

(assert (=> b!2831218 m!3260783))

(declare-fun m!3260785 () Bool)

(assert (=> b!2831211 m!3260785))

(declare-fun m!3260787 () Bool)

(assert (=> b!2831215 m!3260787))

(declare-fun m!3260789 () Bool)

(assert (=> b!2831208 m!3260789))

(assert (=> b!2831208 m!3260789))

(declare-fun m!3260791 () Bool)

(assert (=> b!2831208 m!3260791))

(declare-fun m!3260793 () Bool)

(assert (=> b!2831220 m!3260793))

(declare-fun m!3260795 () Bool)

(assert (=> b!2831213 m!3260795))

(push 1)

(assert b_and!207049)

(assert (not b!2831216))

(assert b_and!207047)

(assert (not b!2831207))

(assert (not b!2831209))

(assert (not b_next!82089))

(assert (not b!2831215))

(assert (not b!2831208))

(assert b_and!207045)

(assert (not b!2831218))

(assert (not b!2831219))

(assert (not b!2831210))

(assert (not b_next!82085))

(assert (not b_next!82091))

(assert (not b!2831220))

(assert (not b!2831213))

(assert (not b_next!82087))

(assert (not b!2831211))

(assert b_and!207043)

(check-sat)

(pop 1)

(push 1)

(assert b_and!207045)

(assert b_and!207049)

(assert b_and!207047)

(assert (not b_next!82085))

(assert (not b_next!82091))

(assert (not b_next!82089))

(assert (not b_next!82087))

(assert b_and!207043)

(check-sat)

(pop 1)

