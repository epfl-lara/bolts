; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95782 () Bool)

(assert start!95782)

(declare-fun b!1108525 () Bool)

(assert (=> b!1108525 true))

(declare-fun b!1108523 () Bool)

(declare-fun e!703041 () Bool)

(declare-datatypes ((List!10924 0))(
  ( (Nil!10900) (Cons!10900 (h!16301 (_ BitVec 16)) (t!105516 List!10924)) )
))
(declare-datatypes ((TokenValue!1945 0))(
  ( (FloatLiteralValue!3890 (text!14060 List!10924)) (TokenValueExt!1944 (__x!7616 Int)) (Broken!9725 (value!61522 List!10924)) (Object!1968) (End!1945) (Def!1945) (Underscore!1945) (Match!1945) (Else!1945) (Error!1945) (Case!1945) (If!1945) (Extends!1945) (Abstract!1945) (Class!1945) (Val!1945) (DelimiterValue!3890 (del!2005 List!10924)) (KeywordValue!1951 (value!61523 List!10924)) (CommentValue!3890 (value!61524 List!10924)) (WhitespaceValue!3890 (value!61525 List!10924)) (IndentationValue!1945 (value!61526 List!10924)) (String!13312) (Int32!1945) (Broken!9726 (value!61527 List!10924)) (Boolean!1946) (Unit!16482) (OperatorValue!1948 (op!2005 List!10924)) (IdentifierValue!3890 (value!61528 List!10924)) (IdentifierValue!3891 (value!61529 List!10924)) (WhitespaceValue!3891 (value!61530 List!10924)) (True!3890) (False!3890) (Broken!9727 (value!61531 List!10924)) (Broken!9728 (value!61532 List!10924)) (True!3891) (RightBrace!1945) (RightBracket!1945) (Colon!1945) (Null!1945) (Comma!1945) (LeftBracket!1945) (False!3891) (LeftBrace!1945) (ImaginaryLiteralValue!1945 (text!14061 List!10924)) (StringLiteralValue!5835 (value!61533 List!10924)) (EOFValue!1945 (value!61534 List!10924)) (IdentValue!1945 (value!61535 List!10924)) (DelimiterValue!3891 (value!61536 List!10924)) (DedentValue!1945 (value!61537 List!10924)) (NewLineValue!1945 (value!61538 List!10924)) (IntegerValue!5835 (value!61539 (_ BitVec 32)) (text!14062 List!10924)) (IntegerValue!5836 (value!61540 Int) (text!14063 List!10924)) (Times!1945) (Or!1945) (Equal!1945) (Minus!1945) (Broken!9729 (value!61541 List!10924)) (And!1945) (Div!1945) (LessEqual!1945) (Mod!1945) (Concat!5094) (Not!1945) (Plus!1945) (SpaceValue!1945 (value!61542 List!10924)) (IntegerValue!5837 (value!61543 Int) (text!14064 List!10924)) (StringLiteralValue!5836 (text!14065 List!10924)) (FloatLiteralValue!3891 (text!14066 List!10924)) (BytesLiteralValue!1945 (value!61544 List!10924)) (CommentValue!3891 (value!61545 List!10924)) (StringLiteralValue!5837 (value!61546 List!10924)) (ErrorTokenValue!1945 (msg!2006 List!10924)) )
))
(declare-datatypes ((Regex!3149 0))(
  ( (ElementMatch!3149 (c!188032 (_ BitVec 16))) (Concat!5095 (regOne!6810 Regex!3149) (regTwo!6810 Regex!3149)) (EmptyExpr!3149) (Star!3149 (reg!3478 Regex!3149)) (EmptyLang!3149) (Union!3149 (regOne!6811 Regex!3149) (regTwo!6811 Regex!3149)) )
))
(declare-datatypes ((String!13313 0))(
  ( (String!13314 (value!61547 String)) )
))
(declare-datatypes ((IArray!6905 0))(
  ( (IArray!6906 (innerList!3510 List!10924)) )
))
(declare-datatypes ((Conc!3450 0))(
  ( (Node!3450 (left!9443 Conc!3450) (right!9773 Conc!3450) (csize!7130 Int) (cheight!3661 Int)) (Leaf!5400 (xs!6143 IArray!6905) (csize!7131 Int)) (Empty!3450) )
))
(declare-datatypes ((BalanceConc!6922 0))(
  ( (BalanceConc!6923 (c!188033 Conc!3450)) )
))
(declare-datatypes ((TokenValueInjection!3590 0))(
  ( (TokenValueInjection!3591 (toValue!2960 Int) (toChars!2819 Int)) )
))
(declare-datatypes ((Rule!3558 0))(
  ( (Rule!3559 (regex!1879 Regex!3149) (tag!2141 String!13313) (isSeparator!1879 Bool) (transformation!1879 TokenValueInjection!3590)) )
))
(declare-datatypes ((Token!3420 0))(
  ( (Token!3421 (value!61548 TokenValue!1945) (rule!3300 Rule!3558) (size!8448 Int) (originalCharacters!2433 List!10924)) )
))
(declare-datatypes ((List!10925 0))(
  ( (Nil!10901) (Cons!10901 (h!16302 Token!3420) (t!105517 List!10925)) )
))
(declare-datatypes ((IArray!6907 0))(
  ( (IArray!6908 (innerList!3511 List!10925)) )
))
(declare-datatypes ((Conc!3451 0))(
  ( (Node!3451 (left!9444 Conc!3451) (right!9774 Conc!3451) (csize!7132 Int) (cheight!3662 Int)) (Leaf!5401 (xs!6144 IArray!6907) (csize!7133 Int)) (Empty!3451) )
))
(declare-datatypes ((List!10926 0))(
  ( (Nil!10902) (Cons!10902 (h!16303 Rule!3558) (t!105518 List!10926)) )
))
(declare-datatypes ((BalanceConc!6924 0))(
  ( (BalanceConc!6925 (c!188034 Conc!3451)) )
))
(declare-datatypes ((PrintableTokens!444 0))(
  ( (PrintableTokens!445 (rules!9166 List!10926) (tokens!1428 BalanceConc!6924)) )
))
(declare-datatypes ((List!10927 0))(
  ( (Nil!10903) (Cons!10903 (h!16304 PrintableTokens!444) (t!105519 List!10927)) )
))
(declare-datatypes ((IArray!6909 0))(
  ( (IArray!6910 (innerList!3512 List!10927)) )
))
(declare-datatypes ((Conc!3452 0))(
  ( (Node!3452 (left!9445 Conc!3452) (right!9775 Conc!3452) (csize!7134 Int) (cheight!3663 Int)) (Leaf!5402 (xs!6145 IArray!6909) (csize!7135 Int)) (Empty!3452) )
))
(declare-datatypes ((BalanceConc!6926 0))(
  ( (BalanceConc!6927 (c!188035 Conc!3452)) )
))
(declare-fun acc!225 () BalanceConc!6926)

(declare-fun tp!329309 () Bool)

(declare-fun inv!13994 (Conc!3452) Bool)

(assert (=> b!1108523 (= e!703041 (and (inv!13994 (c!188035 acc!225)) tp!329309))))

(declare-fun b!1108524 () Bool)

(declare-fun e!703043 () Bool)

(declare-datatypes ((List!10928 0))(
  ( (Nil!10904) (Cons!10904 (h!16305 Int) (t!105520 List!10928)) )
))
(declare-datatypes ((IArray!6911 0))(
  ( (IArray!6912 (innerList!3513 List!10928)) )
))
(declare-datatypes ((Conc!3453 0))(
  ( (Node!3453 (left!9446 Conc!3453) (right!9776 Conc!3453) (csize!7136 Int) (cheight!3664 Int)) (Leaf!5403 (xs!6146 IArray!6911) (csize!7137 Int)) (Empty!3453) )
))
(declare-datatypes ((BalanceConc!6928 0))(
  ( (BalanceConc!6929 (c!188036 Conc!3453)) )
))
(declare-fun indices!2 () BalanceConc!6928)

(declare-fun tp!329311 () Bool)

(declare-fun inv!13995 (Conc!3453) Bool)

(assert (=> b!1108524 (= e!703043 (and (inv!13995 (c!188036 indices!2)) tp!329311))))

(declare-fun res!490721 () Bool)

(declare-fun e!703039 () Bool)

(assert (=> b!1108525 (=> (not res!490721) (not e!703039))))

(declare-fun lambda!44788 () Int)

(declare-fun forall!2557 (BalanceConc!6928 Int) Bool)

(assert (=> b!1108525 (= res!490721 (forall!2557 indices!2 lambda!44788))))

(declare-fun b!1108526 () Bool)

(declare-fun e!703040 () Bool)

(declare-fun pt!21 () PrintableTokens!444)

(declare-fun tp!329310 () Bool)

(declare-fun inv!13996 (Conc!3451) Bool)

(assert (=> b!1108526 (= e!703040 (and (inv!13996 (c!188034 (tokens!1428 pt!21))) tp!329310))))

(declare-fun b!1108527 () Bool)

(declare-fun res!490722 () Bool)

(assert (=> b!1108527 (=> (not res!490722) (not e!703039))))

(declare-fun lambda!44789 () Int)

(declare-fun forall!2558 (BalanceConc!6926 Int) Bool)

(assert (=> b!1108527 (= res!490722 (forall!2558 acc!225 lambda!44789))))

(declare-fun b!1108528 () Bool)

(declare-fun lt!376254 () Int)

(assert (=> b!1108528 (= e!703039 (and (>= lt!376254 2) (>= 0 lt!376254)))))

(declare-fun size!8449 (BalanceConc!6928) Int)

(assert (=> b!1108528 (= lt!376254 (size!8449 indices!2))))

(declare-fun b!1108529 () Bool)

(declare-fun res!490723 () Bool)

(assert (=> b!1108529 (=> (not res!490723) (not e!703039))))

(declare-fun usesJsonRules!0 (PrintableTokens!444) Bool)

(assert (=> b!1108529 (= res!490723 (usesJsonRules!0 pt!21))))

(declare-fun tp!329312 () Bool)

(declare-fun b!1108530 () Bool)

(declare-fun e!703042 () Bool)

(declare-fun inv!13997 (BalanceConc!6924) Bool)

(assert (=> b!1108530 (= e!703042 (and tp!329312 (inv!13997 (tokens!1428 pt!21)) e!703040))))

(declare-fun res!490720 () Bool)

(assert (=> start!95782 (=> (not res!490720) (not e!703039))))

(declare-fun size!108 () Int)

(declare-fun size!8450 (PrintableTokens!444) Int)

(assert (=> start!95782 (= res!490720 (= (size!8450 pt!21) size!108))))

(assert (=> start!95782 e!703039))

(declare-fun inv!13998 (PrintableTokens!444) Bool)

(assert (=> start!95782 (and (inv!13998 pt!21) e!703042)))

(assert (=> start!95782 true))

(declare-fun inv!13999 (BalanceConc!6928) Bool)

(assert (=> start!95782 (and (inv!13999 indices!2) e!703043)))

(declare-fun inv!14000 (BalanceConc!6926) Bool)

(assert (=> start!95782 (and (inv!14000 acc!225) e!703041)))

(assert (= (and start!95782 res!490720) b!1108525))

(assert (= (and b!1108525 res!490721) b!1108529))

(assert (= (and b!1108529 res!490723) b!1108527))

(assert (= (and b!1108527 res!490722) b!1108528))

(assert (= b!1108530 b!1108526))

(assert (= start!95782 b!1108530))

(assert (= start!95782 b!1108524))

(assert (= start!95782 b!1108523))

(declare-fun m!1265347 () Bool)

(assert (=> b!1108525 m!1265347))

(declare-fun m!1265349 () Bool)

(assert (=> b!1108530 m!1265349))

(declare-fun m!1265351 () Bool)

(assert (=> b!1108529 m!1265351))

(declare-fun m!1265353 () Bool)

(assert (=> b!1108523 m!1265353))

(declare-fun m!1265355 () Bool)

(assert (=> b!1108527 m!1265355))

(declare-fun m!1265357 () Bool)

(assert (=> b!1108526 m!1265357))

(declare-fun m!1265359 () Bool)

(assert (=> b!1108524 m!1265359))

(declare-fun m!1265361 () Bool)

(assert (=> start!95782 m!1265361))

(declare-fun m!1265363 () Bool)

(assert (=> start!95782 m!1265363))

(declare-fun m!1265365 () Bool)

(assert (=> start!95782 m!1265365))

(declare-fun m!1265367 () Bool)

(assert (=> start!95782 m!1265367))

(declare-fun m!1265369 () Bool)

(assert (=> b!1108528 m!1265369))

(check-sat (not b!1108528) (not b!1108527) (not b!1108530) (not b!1108524) (not b!1108526) (not b!1108525) (not b!1108523) (not b!1108529) (not start!95782))
(check-sat)
