; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48484 () Bool)

(assert start!48484)

(declare-fun b!528936 () Bool)

(declare-fun b_free!14089 () Bool)

(declare-fun b_next!14105 () Bool)

(assert (=> b!528936 (= b_free!14089 (not b_next!14105))))

(declare-fun tp!168215 () Bool)

(declare-fun b_and!51587 () Bool)

(assert (=> b!528936 (= tp!168215 b_and!51587)))

(declare-fun b_free!14091 () Bool)

(declare-fun b_next!14107 () Bool)

(assert (=> b!528936 (= b_free!14091 (not b_next!14107))))

(declare-fun tp!168212 () Bool)

(declare-fun b_and!51589 () Bool)

(assert (=> b!528936 (= tp!168212 b_and!51589)))

(declare-fun b!528933 () Bool)

(declare-fun b_free!14093 () Bool)

(declare-fun b_next!14109 () Bool)

(assert (=> b!528933 (= b_free!14093 (not b_next!14109))))

(declare-fun tp!168213 () Bool)

(declare-fun b_and!51591 () Bool)

(assert (=> b!528933 (= tp!168213 b_and!51591)))

(declare-fun b_free!14095 () Bool)

(declare-fun b_next!14111 () Bool)

(assert (=> b!528933 (= b_free!14095 (not b_next!14111))))

(declare-fun tp!168211 () Bool)

(declare-fun b_and!51593 () Bool)

(assert (=> b!528933 (= tp!168211 b_and!51593)))

(declare-fun e!318205 () Bool)

(assert (=> b!528933 (= e!318205 (and tp!168213 tp!168211))))

(declare-fun res!223396 () Bool)

(declare-fun e!318200 () Bool)

(assert (=> start!48484 (=> (not res!223396) (not e!318200))))

(declare-datatypes ((LexerInterface!781 0))(
  ( (LexerInterfaceExt!778 (__x!3736 Int)) (Lexer!779) )
))
(declare-fun thiss!22590 () LexerInterface!781)

(get-info :version)

(assert (=> start!48484 (= res!223396 ((_ is Lexer!779) thiss!22590))))

(assert (=> start!48484 e!318200))

(declare-fun e!318199 () Bool)

(assert (=> start!48484 e!318199))

(declare-fun e!318204 () Bool)

(assert (=> start!48484 e!318204))

(declare-datatypes ((C!3380 0))(
  ( (C!3381 (val!1916 Int)) )
))
(declare-datatypes ((Regex!1229 0))(
  ( (ElementMatch!1229 (c!101210 C!3380)) (Concat!2148 (regOne!2970 Regex!1229) (regTwo!2970 Regex!1229)) (EmptyExpr!1229) (Star!1229 (reg!1558 Regex!1229)) (EmptyLang!1229) (Union!1229 (regOne!2971 Regex!1229) (regTwo!2971 Regex!1229)) )
))
(declare-datatypes ((List!5001 0))(
  ( (Nil!4991) (Cons!4991 (h!10392 (_ BitVec 16)) (t!73622 List!5001)) )
))
(declare-datatypes ((TokenValue!919 0))(
  ( (FloatLiteralValue!1838 (text!6878 List!5001)) (TokenValueExt!918 (__x!3737 Int)) (Broken!4595 (value!30348 List!5001)) (Object!928) (End!919) (Def!919) (Underscore!919) (Match!919) (Else!919) (Error!919) (Case!919) (If!919) (Extends!919) (Abstract!919) (Class!919) (Val!919) (DelimiterValue!1838 (del!979 List!5001)) (KeywordValue!925 (value!30349 List!5001)) (CommentValue!1838 (value!30350 List!5001)) (WhitespaceValue!1838 (value!30351 List!5001)) (IndentationValue!919 (value!30352 List!5001)) (String!6338) (Int32!919) (Broken!4596 (value!30353 List!5001)) (Boolean!920) (Unit!8814) (OperatorValue!922 (op!979 List!5001)) (IdentifierValue!1838 (value!30354 List!5001)) (IdentifierValue!1839 (value!30355 List!5001)) (WhitespaceValue!1839 (value!30356 List!5001)) (True!1838) (False!1838) (Broken!4597 (value!30357 List!5001)) (Broken!4598 (value!30358 List!5001)) (True!1839) (RightBrace!919) (RightBracket!919) (Colon!919) (Null!919) (Comma!919) (LeftBracket!919) (False!1839) (LeftBrace!919) (ImaginaryLiteralValue!919 (text!6879 List!5001)) (StringLiteralValue!2757 (value!30359 List!5001)) (EOFValue!919 (value!30360 List!5001)) (IdentValue!919 (value!30361 List!5001)) (DelimiterValue!1839 (value!30362 List!5001)) (DedentValue!919 (value!30363 List!5001)) (NewLineValue!919 (value!30364 List!5001)) (IntegerValue!2757 (value!30365 (_ BitVec 32)) (text!6880 List!5001)) (IntegerValue!2758 (value!30366 Int) (text!6881 List!5001)) (Times!919) (Or!919) (Equal!919) (Minus!919) (Broken!4599 (value!30367 List!5001)) (And!919) (Div!919) (LessEqual!919) (Mod!919) (Concat!2149) (Not!919) (Plus!919) (SpaceValue!919 (value!30368 List!5001)) (IntegerValue!2759 (value!30369 Int) (text!6882 List!5001)) (StringLiteralValue!2758 (text!6883 List!5001)) (FloatLiteralValue!1839 (text!6884 List!5001)) (BytesLiteralValue!919 (value!30370 List!5001)) (CommentValue!1839 (value!30371 List!5001)) (StringLiteralValue!2759 (value!30372 List!5001)) (ErrorTokenValue!919 (msg!980 List!5001)) )
))
(declare-datatypes ((String!6339 0))(
  ( (String!6340 (value!30373 String)) )
))
(declare-datatypes ((List!5002 0))(
  ( (Nil!4992) (Cons!4992 (h!10393 C!3380) (t!73623 List!5002)) )
))
(declare-datatypes ((IArray!3225 0))(
  ( (IArray!3226 (innerList!1670 List!5002)) )
))
(declare-datatypes ((Conc!1612 0))(
  ( (Node!1612 (left!4232 Conc!1612) (right!4562 Conc!1612) (csize!3454 Int) (cheight!1823 Int)) (Leaf!2567 (xs!4249 IArray!3225) (csize!3455 Int)) (Empty!1612) )
))
(declare-datatypes ((BalanceConc!3232 0))(
  ( (BalanceConc!3233 (c!101211 Conc!1612)) )
))
(declare-datatypes ((TokenValueInjection!1606 0))(
  ( (TokenValueInjection!1607 (toValue!1734 Int) (toChars!1593 Int)) )
))
(declare-datatypes ((Rule!1590 0))(
  ( (Rule!1591 (regex!895 Regex!1229) (tag!1157 String!6339) (isSeparator!895 Bool) (transformation!895 TokenValueInjection!1606)) )
))
(declare-datatypes ((Token!1526 0))(
  ( (Token!1527 (value!30374 TokenValue!919) (rule!1595 Rule!1590) (size!4073 Int) (originalCharacters!934 List!5002)) )
))
(declare-fun token!491 () Token!1526)

(declare-fun e!318203 () Bool)

(declare-fun inv!6257 (Token!1526) Bool)

(assert (=> start!48484 (and (inv!6257 token!491) e!318203)))

(assert (=> start!48484 true))

(declare-fun e!318202 () Bool)

(assert (=> start!48484 e!318202))

(declare-fun b!528934 () Bool)

(declare-fun e!318209 () Bool)

(declare-fun tp!168207 () Bool)

(assert (=> b!528934 (= e!318204 (and e!318209 tp!168207))))

(declare-fun b!528935 () Bool)

(assert (=> b!528935 (= e!318200 false)))

(declare-fun lt!218303 () List!5002)

(declare-fun input!2705 () List!5002)

(declare-fun suffix!1342 () List!5002)

(declare-fun ++!1383 (List!5002 List!5002) List!5002)

(assert (=> b!528935 (= lt!218303 (++!1383 input!2705 suffix!1342))))

(declare-fun e!318201 () Bool)

(assert (=> b!528936 (= e!318201 (and tp!168215 tp!168212))))

(declare-fun b!528937 () Bool)

(declare-fun res!223393 () Bool)

(assert (=> b!528937 (=> (not res!223393) (not e!318200))))

(declare-fun list!2075 (BalanceConc!3232) List!5002)

(declare-fun charsOf!524 (Token!1526) BalanceConc!3232)

(assert (=> b!528937 (= res!223393 (= (list!2075 (charsOf!524 token!491)) input!2705))))

(declare-fun b!528938 () Bool)

(declare-fun res!223395 () Bool)

(assert (=> b!528938 (=> (not res!223395) (not e!318200))))

(declare-datatypes ((List!5003 0))(
  ( (Nil!4993) (Cons!4993 (h!10394 Rule!1590) (t!73624 List!5003)) )
))
(declare-fun rules!3103 () List!5003)

(declare-fun isEmpty!3616 (List!5003) Bool)

(assert (=> b!528938 (= res!223395 (not (isEmpty!3616 rules!3103)))))

(declare-fun b!528939 () Bool)

(declare-fun res!223397 () Bool)

(assert (=> b!528939 (=> (not res!223397) (not e!318200))))

(declare-fun rulesInvariant!744 (LexerInterface!781 List!5003) Bool)

(assert (=> b!528939 (= res!223397 (rulesInvariant!744 thiss!22590 rules!3103))))

(declare-fun b!528940 () Bool)

(declare-fun tp_is_empty!2813 () Bool)

(declare-fun tp!168216 () Bool)

(assert (=> b!528940 (= e!318202 (and tp_is_empty!2813 tp!168216))))

(declare-fun b!528941 () Bool)

(declare-fun tp!168210 () Bool)

(declare-fun inv!6254 (String!6339) Bool)

(declare-fun inv!6258 (TokenValueInjection!1606) Bool)

(assert (=> b!528941 (= e!318209 (and tp!168210 (inv!6254 (tag!1157 (h!10394 rules!3103))) (inv!6258 (transformation!895 (h!10394 rules!3103))) e!318201))))

(declare-fun b!528942 () Bool)

(declare-fun tp!168214 () Bool)

(assert (=> b!528942 (= e!318199 (and tp_is_empty!2813 tp!168214))))

(declare-fun tp!168209 () Bool)

(declare-fun e!318210 () Bool)

(declare-fun b!528943 () Bool)

(declare-fun inv!21 (TokenValue!919) Bool)

(assert (=> b!528943 (= e!318203 (and (inv!21 (value!30374 token!491)) e!318210 tp!168209))))

(declare-fun b!528944 () Bool)

(declare-fun res!223394 () Bool)

(assert (=> b!528944 (=> (not res!223394) (not e!318200))))

(declare-fun isEmpty!3617 (List!5002) Bool)

(assert (=> b!528944 (= res!223394 (not (isEmpty!3617 input!2705)))))

(declare-fun b!528945 () Bool)

(declare-fun tp!168208 () Bool)

(assert (=> b!528945 (= e!318210 (and tp!168208 (inv!6254 (tag!1157 (rule!1595 token!491))) (inv!6258 (transformation!895 (rule!1595 token!491))) e!318205))))

(assert (= (and start!48484 res!223396) b!528938))

(assert (= (and b!528938 res!223395) b!528939))

(assert (= (and b!528939 res!223397) b!528944))

(assert (= (and b!528944 res!223394) b!528937))

(assert (= (and b!528937 res!223393) b!528935))

(assert (= (and start!48484 ((_ is Cons!4992) suffix!1342)) b!528942))

(assert (= b!528941 b!528936))

(assert (= b!528934 b!528941))

(assert (= (and start!48484 ((_ is Cons!4993) rules!3103)) b!528934))

(assert (= b!528945 b!528933))

(assert (= b!528943 b!528945))

(assert (= start!48484 b!528943))

(assert (= (and start!48484 ((_ is Cons!4992) input!2705)) b!528940))

(declare-fun m!774627 () Bool)

(assert (=> b!528943 m!774627))

(declare-fun m!774629 () Bool)

(assert (=> start!48484 m!774629))

(declare-fun m!774631 () Bool)

(assert (=> b!528944 m!774631))

(declare-fun m!774633 () Bool)

(assert (=> b!528938 m!774633))

(declare-fun m!774635 () Bool)

(assert (=> b!528935 m!774635))

(declare-fun m!774637 () Bool)

(assert (=> b!528941 m!774637))

(declare-fun m!774639 () Bool)

(assert (=> b!528941 m!774639))

(declare-fun m!774641 () Bool)

(assert (=> b!528945 m!774641))

(declare-fun m!774643 () Bool)

(assert (=> b!528945 m!774643))

(declare-fun m!774645 () Bool)

(assert (=> b!528937 m!774645))

(assert (=> b!528937 m!774645))

(declare-fun m!774647 () Bool)

(assert (=> b!528937 m!774647))

(declare-fun m!774649 () Bool)

(assert (=> b!528939 m!774649))

(check-sat (not b!528942) (not b!528939) b_and!51589 b_and!51591 (not b!528944) tp_is_empty!2813 (not start!48484) (not b!528935) (not b_next!14111) b_and!51587 b_and!51593 (not b_next!14107) (not b!528937) (not b!528945) (not b!528934) (not b_next!14109) (not b!528940) (not b!528941) (not b!528938) (not b_next!14105) (not b!528943))
(check-sat (not b_next!14107) b_and!51589 (not b_next!14109) b_and!51591 (not b_next!14111) (not b_next!14105) b_and!51587 b_and!51593)
