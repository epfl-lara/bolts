; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188844 () Bool)

(assert start!188844)

(declare-fun b!1885958 () Bool)

(declare-fun e!1203311 () Bool)

(assert (=> b!1885958 (= e!1203311 false)))

(declare-datatypes ((List!21085 0))(
  ( (Nil!21003) (Cons!21003 (h!26404 (_ BitVec 16)) (t!175084 List!21085)) )
))
(declare-datatypes ((IArray!13977 0))(
  ( (IArray!13978 (innerList!7046 List!21085)) )
))
(declare-datatypes ((Conc!6986 0))(
  ( (Node!6986 (left!16872 Conc!6986) (right!17202 Conc!6986) (csize!14202 Int) (cheight!7197 Int)) (Leaf!10277 (xs!9876 IArray!13977) (csize!14203 Int)) (Empty!6986) )
))
(declare-datatypes ((BalanceConc!13788 0))(
  ( (BalanceConc!13789 (c!308066 Conc!6986)) )
))
(declare-fun lt!723441 () BalanceConc!13788)

(declare-fun seqFromList!2628 (List!21085) BalanceConc!13788)

(assert (=> b!1885958 (= lt!723441 (seqFromList!2628 (Cons!21003 #x0022 (Cons!21003 #x0069 (Cons!21003 #x0064 (Cons!21003 #x0022 Nil!21003))))))))

(declare-fun b!1885959 () Bool)

(declare-fun res!841751 () Bool)

(assert (=> b!1885959 (=> (not res!841751) (not e!1203311))))

(declare-datatypes ((TokenValue!3856 0))(
  ( (FloatLiteralValue!7712 (text!27437 List!21085)) (TokenValueExt!3855 (__x!13217 Int)) (Broken!19280 (value!117489 List!21085)) (Object!3937) (End!3856) (Def!3856) (Underscore!3856) (Match!3856) (Else!3856) (Error!3856) (Case!3856) (If!3856) (Extends!3856) (Abstract!3856) (Class!3856) (Val!3856) (DelimiterValue!7712 (del!3916 List!21085)) (KeywordValue!3862 (value!117490 List!21085)) (CommentValue!7712 (value!117491 List!21085)) (WhitespaceValue!7712 (value!117492 List!21085)) (IndentationValue!3856 (value!117493 List!21085)) (String!24269) (Int32!3856) (Broken!19281 (value!117494 List!21085)) (Boolean!3857) (Unit!35469) (OperatorValue!3859 (op!3916 List!21085)) (IdentifierValue!7712 (value!117495 List!21085)) (IdentifierValue!7713 (value!117496 List!21085)) (WhitespaceValue!7713 (value!117497 List!21085)) (True!7712) (False!7712) (Broken!19282 (value!117498 List!21085)) (Broken!19283 (value!117499 List!21085)) (True!7713) (RightBrace!3856) (RightBracket!3856) (Colon!3856) (Null!3856) (Comma!3856) (LeftBracket!3856) (False!7713) (LeftBrace!3856) (ImaginaryLiteralValue!3856 (text!27438 List!21085)) (StringLiteralValue!11568 (value!117500 List!21085)) (EOFValue!3856 (value!117501 List!21085)) (IdentValue!3856 (value!117502 List!21085)) (DelimiterValue!7713 (value!117503 List!21085)) (DedentValue!3856 (value!117504 List!21085)) (NewLineValue!3856 (value!117505 List!21085)) (IntegerValue!11568 (value!117506 (_ BitVec 32)) (text!27439 List!21085)) (IntegerValue!11569 (value!117507 Int) (text!27440 List!21085)) (Times!3856) (Or!3856) (Equal!3856) (Minus!3856) (Broken!19284 (value!117508 List!21085)) (And!3856) (Div!3856) (LessEqual!3856) (Mod!3856) (Concat!9001) (Not!3856) (Plus!3856) (SpaceValue!3856 (value!117509 List!21085)) (IntegerValue!11570 (value!117510 Int) (text!27441 List!21085)) (StringLiteralValue!11569 (text!27442 List!21085)) (FloatLiteralValue!7713 (text!27443 List!21085)) (BytesLiteralValue!3856 (value!117511 List!21085)) (CommentValue!7713 (value!117512 List!21085)) (StringLiteralValue!11570 (value!117513 List!21085)) (ErrorTokenValue!3856 (msg!3917 List!21085)) )
))
(declare-datatypes ((Regex!5145 0))(
  ( (ElementMatch!5145 (c!308067 (_ BitVec 16))) (Concat!9002 (regOne!10802 Regex!5145) (regTwo!10802 Regex!5145)) (EmptyExpr!5145) (Star!5145 (reg!5474 Regex!5145)) (EmptyLang!5145) (Union!5145 (regOne!10803 Regex!5145) (regTwo!10803 Regex!5145)) )
))
(declare-datatypes ((String!24270 0))(
  ( (String!24271 (value!117514 String)) )
))
(declare-datatypes ((TokenValueInjection!7296 0))(
  ( (TokenValueInjection!7297 (toValue!5325 Int) (toChars!5184 Int)) )
))
(declare-datatypes ((Rule!7240 0))(
  ( (Rule!7241 (regex!3720 Regex!5145) (tag!4134 String!24270) (isSeparator!3720 Bool) (transformation!3720 TokenValueInjection!7296)) )
))
(declare-datatypes ((Token!6992 0))(
  ( (Token!6993 (value!117515 TokenValue!3856) (rule!5913 Rule!7240) (size!16694 Int) (originalCharacters!4527 List!21085)) )
))
(declare-datatypes ((List!21086 0))(
  ( (Nil!21004) (Cons!21004 (h!26405 Token!6992) (t!175085 List!21086)) )
))
(declare-datatypes ((IArray!13979 0))(
  ( (IArray!13980 (innerList!7047 List!21086)) )
))
(declare-datatypes ((Conc!6987 0))(
  ( (Node!6987 (left!16873 Conc!6987) (right!17203 Conc!6987) (csize!14204 Int) (cheight!7198 Int)) (Leaf!10278 (xs!9877 IArray!13979) (csize!14205 Int)) (Empty!6987) )
))
(declare-datatypes ((List!21087 0))(
  ( (Nil!21005) (Cons!21005 (h!26406 Rule!7240) (t!175086 List!21087)) )
))
(declare-datatypes ((BalanceConc!13790 0))(
  ( (BalanceConc!13791 (c!308068 Conc!6987)) )
))
(declare-datatypes ((PrintableTokens!1252 0))(
  ( (PrintableTokens!1253 (rules!15066 List!21087) (tokens!2458 BalanceConc!13790)) )
))
(declare-fun obj!5 () PrintableTokens!1252)

(declare-fun from!519 () Int)

(get-info :version)

(declare-fun apply!5551 (BalanceConc!13790 Int) Token!6992)

(assert (=> b!1885959 (= res!841751 ((_ is StringLiteralValue!11569) (value!117515 (apply!5551 (tokens!2458 obj!5) from!519))))))

(declare-fun b!1885960 () Bool)

(declare-fun e!1203312 () Bool)

(declare-fun tp!537690 () Bool)

(declare-fun inv!28001 (Conc!6987) Bool)

(assert (=> b!1885960 (= e!1203312 (and (inv!28001 (c!308068 (tokens!2458 obj!5))) tp!537690))))

(declare-fun res!841750 () Bool)

(declare-fun e!1203314 () Bool)

(assert (=> start!188844 (=> (not res!841750) (not e!1203314))))

(assert (=> start!188844 (= res!841750 (<= 0 from!519))))

(assert (=> start!188844 e!1203314))

(assert (=> start!188844 true))

(declare-fun e!1203313 () Bool)

(declare-fun inv!28002 (PrintableTokens!1252) Bool)

(assert (=> start!188844 (and (inv!28002 obj!5) e!1203313)))

(declare-fun b!1885961 () Bool)

(assert (=> b!1885961 (= e!1203314 e!1203311)))

(declare-fun res!841752 () Bool)

(assert (=> b!1885961 (=> (not res!841752) (not e!1203311))))

(declare-fun lt!723442 () Int)

(assert (=> b!1885961 (= res!841752 (and (<= from!519 lt!723442) (< from!519 lt!723442)))))

(declare-fun size!16695 (PrintableTokens!1252) Int)

(assert (=> b!1885961 (= lt!723442 (size!16695 obj!5))))

(declare-fun b!1885962 () Bool)

(declare-fun tp!537689 () Bool)

(declare-fun inv!28003 (BalanceConc!13790) Bool)

(assert (=> b!1885962 (= e!1203313 (and tp!537689 (inv!28003 (tokens!2458 obj!5)) e!1203312))))

(assert (= (and start!188844 res!841750) b!1885961))

(assert (= (and b!1885961 res!841752) b!1885959))

(assert (= (and b!1885959 res!841751) b!1885958))

(assert (= b!1885962 b!1885960))

(assert (= start!188844 b!1885962))

(declare-fun m!2318759 () Bool)

(assert (=> b!1885958 m!2318759))

(declare-fun m!2318761 () Bool)

(assert (=> b!1885961 m!2318761))

(declare-fun m!2318763 () Bool)

(assert (=> b!1885959 m!2318763))

(declare-fun m!2318765 () Bool)

(assert (=> start!188844 m!2318765))

(declare-fun m!2318767 () Bool)

(assert (=> b!1885960 m!2318767))

(declare-fun m!2318769 () Bool)

(assert (=> b!1885962 m!2318769))

(check-sat (not b!1885962) (not b!1885960) (not b!1885959) (not start!188844) (not b!1885961) (not b!1885958))
(check-sat)
