; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189268 () Bool)

(assert start!189268)

(declare-fun res!844132 () Bool)

(declare-fun e!1206793 () Bool)

(assert (=> start!189268 (=> (not res!844132) (not e!1206793))))

(declare-datatypes ((LexerInterface!3357 0))(
  ( (LexerInterfaceExt!3354 (__x!13258 Int)) (Lexer!3355) )
))
(declare-fun thiss!13601 () LexerInterface!3357)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189268 (= res!844132 (and ((_ is Lexer!3355) thiss!13601) (>= from!837 0)))))

(assert (=> start!189268 e!1206793))

(assert (=> start!189268 true))

(declare-datatypes ((List!21233 0))(
  ( (Nil!21151) (Cons!21151 (h!26552 (_ BitVec 16)) (t!175400 List!21233)) )
))
(declare-datatypes ((TokenValue!3880 0))(
  ( (FloatLiteralValue!7760 (text!27605 List!21233)) (TokenValueExt!3879 (__x!13259 Int)) (Broken!19400 (value!118269 List!21233)) (Object!3961) (End!3880) (Def!3880) (Underscore!3880) (Match!3880) (Else!3880) (Error!3880) (Case!3880) (If!3880) (Extends!3880) (Abstract!3880) (Class!3880) (Val!3880) (DelimiterValue!7760 (del!3940 List!21233)) (KeywordValue!3886 (value!118270 List!21233)) (CommentValue!7760 (value!118271 List!21233)) (WhitespaceValue!7760 (value!118272 List!21233)) (IndentationValue!3880 (value!118273 List!21233)) (String!24517) (Int32!3880) (Broken!19401 (value!118274 List!21233)) (Boolean!3881) (Unit!35539) (OperatorValue!3883 (op!3940 List!21233)) (IdentifierValue!7760 (value!118275 List!21233)) (IdentifierValue!7761 (value!118276 List!21233)) (WhitespaceValue!7761 (value!118277 List!21233)) (True!7760) (False!7760) (Broken!19402 (value!118278 List!21233)) (Broken!19403 (value!118279 List!21233)) (True!7761) (RightBrace!3880) (RightBracket!3880) (Colon!3880) (Null!3880) (Comma!3880) (LeftBracket!3880) (False!7761) (LeftBrace!3880) (ImaginaryLiteralValue!3880 (text!27606 List!21233)) (StringLiteralValue!11640 (value!118280 List!21233)) (EOFValue!3880 (value!118281 List!21233)) (IdentValue!3880 (value!118282 List!21233)) (DelimiterValue!7761 (value!118283 List!21233)) (DedentValue!3880 (value!118284 List!21233)) (NewLineValue!3880 (value!118285 List!21233)) (IntegerValue!11640 (value!118286 (_ BitVec 32)) (text!27607 List!21233)) (IntegerValue!11641 (value!118287 Int) (text!27608 List!21233)) (Times!3880) (Or!3880) (Equal!3880) (Minus!3880) (Broken!19404 (value!118288 List!21233)) (And!3880) (Div!3880) (LessEqual!3880) (Mod!3880) (Concat!9049) (Not!3880) (Plus!3880) (SpaceValue!3880 (value!118289 List!21233)) (IntegerValue!11642 (value!118290 Int) (text!27609 List!21233)) (StringLiteralValue!11641 (text!27610 List!21233)) (FloatLiteralValue!7761 (text!27611 List!21233)) (BytesLiteralValue!3880 (value!118291 List!21233)) (CommentValue!7761 (value!118292 List!21233)) (StringLiteralValue!11642 (value!118293 List!21233)) (ErrorTokenValue!3880 (msg!3941 List!21233)) )
))
(declare-datatypes ((C!10484 0))(
  ( (C!10485 (val!6194 Int)) )
))
(declare-datatypes ((List!21234 0))(
  ( (Nil!21152) (Cons!21152 (h!26553 C!10484) (t!175401 List!21234)) )
))
(declare-datatypes ((IArray!14057 0))(
  ( (IArray!14058 (innerList!7086 List!21234)) )
))
(declare-datatypes ((Conc!7026 0))(
  ( (Node!7026 (left!16972 Conc!7026) (right!17302 Conc!7026) (csize!14282 Int) (cheight!7237 Int)) (Leaf!10361 (xs!9916 IArray!14057) (csize!14283 Int)) (Empty!7026) )
))
(declare-datatypes ((BalanceConc!13868 0))(
  ( (BalanceConc!13869 (c!308292 Conc!7026)) )
))
(declare-datatypes ((Regex!5169 0))(
  ( (ElementMatch!5169 (c!308293 C!10484)) (Concat!9050 (regOne!10850 Regex!5169) (regTwo!10850 Regex!5169)) (EmptyExpr!5169) (Star!5169 (reg!5498 Regex!5169)) (EmptyLang!5169) (Union!5169 (regOne!10851 Regex!5169) (regTwo!10851 Regex!5169)) )
))
(declare-datatypes ((String!24518 0))(
  ( (String!24519 (value!118294 String)) )
))
(declare-datatypes ((TokenValueInjection!7344 0))(
  ( (TokenValueInjection!7345 (toValue!5349 Int) (toChars!5208 Int)) )
))
(declare-datatypes ((Rule!7288 0))(
  ( (Rule!7289 (regex!3744 Regex!5169) (tag!4158 String!24518) (isSeparator!3744 Bool) (transformation!3744 TokenValueInjection!7344)) )
))
(declare-datatypes ((Token!7040 0))(
  ( (Token!7041 (value!118295 TokenValue!3880) (rule!5937 Rule!7288) (size!16760 Int) (originalCharacters!4551 List!21234)) )
))
(declare-datatypes ((List!21235 0))(
  ( (Nil!21153) (Cons!21153 (h!26554 Token!7040) (t!175402 List!21235)) )
))
(declare-datatypes ((IArray!14059 0))(
  ( (IArray!14060 (innerList!7087 List!21235)) )
))
(declare-datatypes ((Conc!7027 0))(
  ( (Node!7027 (left!16973 Conc!7027) (right!17303 Conc!7027) (csize!14284 Int) (cheight!7238 Int)) (Leaf!10362 (xs!9917 IArray!14059) (csize!14285 Int)) (Empty!7027) )
))
(declare-datatypes ((BalanceConc!13870 0))(
  ( (BalanceConc!13871 (c!308294 Conc!7027)) )
))
(declare-fun v!6342 () BalanceConc!13870)

(declare-fun e!1206792 () Bool)

(declare-fun inv!28198 (BalanceConc!13870) Bool)

(assert (=> start!189268 (and (inv!28198 v!6342) e!1206792)))

(declare-fun b!1890408 () Bool)

(declare-fun e!1206794 () Bool)

(assert (=> b!1890408 (= e!1206793 e!1206794)))

(declare-fun res!844133 () Bool)

(assert (=> b!1890408 (=> (not res!844133) (not e!1206794))))

(declare-fun lt!724018 () Int)

(assert (=> b!1890408 (= res!844133 (and (<= from!837 lt!724018) (< from!837 lt!724018)))))

(declare-fun size!16761 (BalanceConc!13870) Int)

(assert (=> b!1890408 (= lt!724018 (size!16761 v!6342))))

(declare-fun b!1890409 () Bool)

(assert (=> b!1890409 (= e!1206794 (not true))))

(declare-fun lt!724021 () BalanceConc!13868)

(declare-fun charsOf!2306 (Token!7040) BalanceConc!13868)

(declare-fun apply!5562 (BalanceConc!13870 Int) Token!7040)

(assert (=> b!1890409 (= lt!724021 (charsOf!2306 (apply!5562 v!6342 from!837)))))

(declare-fun lt!724017 () List!21235)

(declare-fun lt!724022 () List!21235)

(declare-fun tail!2919 (List!21235) List!21235)

(declare-fun drop!1043 (List!21235 Int) List!21235)

(assert (=> b!1890409 (= (tail!2919 lt!724017) (drop!1043 lt!724022 (+ 1 from!837)))))

(declare-datatypes ((Unit!35540 0))(
  ( (Unit!35541) )
))
(declare-fun lt!724019 () Unit!35540)

(declare-fun lemmaDropTail!656 (List!21235 Int) Unit!35540)

(assert (=> b!1890409 (= lt!724019 (lemmaDropTail!656 lt!724022 from!837))))

(declare-fun head!4392 (List!21235) Token!7040)

(declare-fun apply!5563 (List!21235 Int) Token!7040)

(assert (=> b!1890409 (= (head!4392 lt!724017) (apply!5563 lt!724022 from!837))))

(assert (=> b!1890409 (= lt!724017 (drop!1043 lt!724022 from!837))))

(declare-fun lt!724020 () Unit!35540)

(declare-fun lemmaDropApply!678 (List!21235 Int) Unit!35540)

(assert (=> b!1890409 (= lt!724020 (lemmaDropApply!678 lt!724022 from!837))))

(declare-fun list!8579 (BalanceConc!13870) List!21235)

(assert (=> b!1890409 (= lt!724022 (list!8579 v!6342))))

(declare-fun b!1890410 () Bool)

(declare-fun tp!539278 () Bool)

(declare-fun inv!28199 (Conc!7027) Bool)

(assert (=> b!1890410 (= e!1206792 (and (inv!28199 (c!308294 v!6342)) tp!539278))))

(assert (= (and start!189268 res!844132) b!1890408))

(assert (= (and b!1890408 res!844133) b!1890409))

(assert (= start!189268 b!1890410))

(declare-fun m!2321105 () Bool)

(assert (=> start!189268 m!2321105))

(declare-fun m!2321107 () Bool)

(assert (=> b!1890408 m!2321107))

(declare-fun m!2321109 () Bool)

(assert (=> b!1890409 m!2321109))

(declare-fun m!2321111 () Bool)

(assert (=> b!1890409 m!2321111))

(declare-fun m!2321113 () Bool)

(assert (=> b!1890409 m!2321113))

(declare-fun m!2321115 () Bool)

(assert (=> b!1890409 m!2321115))

(declare-fun m!2321117 () Bool)

(assert (=> b!1890409 m!2321117))

(declare-fun m!2321119 () Bool)

(assert (=> b!1890409 m!2321119))

(declare-fun m!2321121 () Bool)

(assert (=> b!1890409 m!2321121))

(declare-fun m!2321123 () Bool)

(assert (=> b!1890409 m!2321123))

(declare-fun m!2321125 () Bool)

(assert (=> b!1890409 m!2321125))

(declare-fun m!2321127 () Bool)

(assert (=> b!1890409 m!2321127))

(assert (=> b!1890409 m!2321117))

(declare-fun m!2321129 () Bool)

(assert (=> b!1890410 m!2321129))

(check-sat (not start!189268) (not b!1890408) (not b!1890409) (not b!1890410))
(check-sat)
