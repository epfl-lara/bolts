; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398786 () Bool)

(assert start!398786)

(declare-fun b!4181484 () Bool)

(declare-fun b_free!121495 () Bool)

(declare-fun b_next!122199 () Bool)

(assert (=> b!4181484 (= b_free!121495 (not b_next!122199))))

(declare-fun tp!1277991 () Bool)

(declare-fun b_and!327125 () Bool)

(assert (=> b!4181484 (= tp!1277991 b_and!327125)))

(declare-fun b_free!121497 () Bool)

(declare-fun b_next!122201 () Bool)

(assert (=> b!4181484 (= b_free!121497 (not b_next!122201))))

(declare-fun tp!1277999 () Bool)

(declare-fun b_and!327127 () Bool)

(assert (=> b!4181484 (= tp!1277999 b_and!327127)))

(declare-fun b!4181495 () Bool)

(declare-fun b_free!121499 () Bool)

(declare-fun b_next!122203 () Bool)

(assert (=> b!4181495 (= b_free!121499 (not b_next!122203))))

(declare-fun tp!1277996 () Bool)

(declare-fun b_and!327129 () Bool)

(assert (=> b!4181495 (= tp!1277996 b_and!327129)))

(declare-fun b_free!121501 () Bool)

(declare-fun b_next!122205 () Bool)

(assert (=> b!4181495 (= b_free!121501 (not b_next!122205))))

(declare-fun tp!1277994 () Bool)

(declare-fun b_and!327131 () Bool)

(assert (=> b!4181495 (= tp!1277994 b_and!327131)))

(declare-fun b!4181478 () Bool)

(declare-fun b_free!121503 () Bool)

(declare-fun b_next!122207 () Bool)

(assert (=> b!4181478 (= b_free!121503 (not b_next!122207))))

(declare-fun tp!1277992 () Bool)

(declare-fun b_and!327133 () Bool)

(assert (=> b!4181478 (= tp!1277992 b_and!327133)))

(declare-fun b_free!121505 () Bool)

(declare-fun b_next!122209 () Bool)

(assert (=> b!4181478 (= b_free!121505 (not b_next!122209))))

(declare-fun tp!1277990 () Bool)

(declare-fun b_and!327135 () Bool)

(assert (=> b!4181478 (= tp!1277990 b_and!327135)))

(declare-fun b!4181473 () Bool)

(declare-fun res!1714597 () Bool)

(declare-fun e!2595924 () Bool)

(assert (=> b!4181473 (=> (not res!1714597) (not e!2595924))))

(declare-datatypes ((C!25272 0))(
  ( (C!25273 (val!14798 Int)) )
))
(declare-datatypes ((List!46021 0))(
  ( (Nil!45897) (Cons!45897 (h!51317 C!25272) (t!345126 List!46021)) )
))
(declare-fun pBis!107 () List!46021)

(declare-fun input!3342 () List!46021)

(declare-fun isPrefix!4493 (List!46021 List!46021) Bool)

(assert (=> b!4181473 (= res!1714597 (isPrefix!4493 pBis!107 input!3342))))

(declare-fun b!4181474 () Bool)

(declare-fun res!1714591 () Bool)

(assert (=> b!4181474 (=> (not res!1714591) (not e!2595924))))

(declare-fun p!2959 () List!46021)

(assert (=> b!4181474 (= res!1714591 (isPrefix!4493 p!2959 input!3342))))

(declare-fun b!4181475 () Bool)

(declare-fun res!1714595 () Bool)

(assert (=> b!4181475 (=> (not res!1714595) (not e!2595924))))

(declare-datatypes ((List!46022 0))(
  ( (Nil!45898) (Cons!45898 (h!51318 (_ BitVec 16)) (t!345127 List!46022)) )
))
(declare-datatypes ((TokenValue!7866 0))(
  ( (FloatLiteralValue!15732 (text!55507 List!46022)) (TokenValueExt!7865 (__x!27953 Int)) (Broken!39330 (value!238132 List!46022)) (Object!7989) (End!7866) (Def!7866) (Underscore!7866) (Match!7866) (Else!7866) (Error!7866) (Case!7866) (If!7866) (Extends!7866) (Abstract!7866) (Class!7866) (Val!7866) (DelimiterValue!15732 (del!7926 List!46022)) (KeywordValue!7872 (value!238133 List!46022)) (CommentValue!15732 (value!238134 List!46022)) (WhitespaceValue!15732 (value!238135 List!46022)) (IndentationValue!7866 (value!238136 List!46022)) (String!53195) (Int32!7866) (Broken!39331 (value!238137 List!46022)) (Boolean!7867) (Unit!64986) (OperatorValue!7869 (op!7926 List!46022)) (IdentifierValue!15732 (value!238138 List!46022)) (IdentifierValue!15733 (value!238139 List!46022)) (WhitespaceValue!15733 (value!238140 List!46022)) (True!15732) (False!15732) (Broken!39332 (value!238141 List!46022)) (Broken!39333 (value!238142 List!46022)) (True!15733) (RightBrace!7866) (RightBracket!7866) (Colon!7866) (Null!7866) (Comma!7866) (LeftBracket!7866) (False!15733) (LeftBrace!7866) (ImaginaryLiteralValue!7866 (text!55508 List!46022)) (StringLiteralValue!23598 (value!238143 List!46022)) (EOFValue!7866 (value!238144 List!46022)) (IdentValue!7866 (value!238145 List!46022)) (DelimiterValue!15733 (value!238146 List!46022)) (DedentValue!7866 (value!238147 List!46022)) (NewLineValue!7866 (value!238148 List!46022)) (IntegerValue!23598 (value!238149 (_ BitVec 32)) (text!55509 List!46022)) (IntegerValue!23599 (value!238150 Int) (text!55510 List!46022)) (Times!7866) (Or!7866) (Equal!7866) (Minus!7866) (Broken!39334 (value!238151 List!46022)) (And!7866) (Div!7866) (LessEqual!7866) (Mod!7866) (Concat!20407) (Not!7866) (Plus!7866) (SpaceValue!7866 (value!238152 List!46022)) (IntegerValue!23600 (value!238153 Int) (text!55511 List!46022)) (StringLiteralValue!23599 (text!55512 List!46022)) (FloatLiteralValue!15733 (text!55513 List!46022)) (BytesLiteralValue!7866 (value!238154 List!46022)) (CommentValue!15733 (value!238155 List!46022)) (StringLiteralValue!23600 (value!238156 List!46022)) (ErrorTokenValue!7866 (msg!7927 List!46022)) )
))
(declare-datatypes ((IArray!27699 0))(
  ( (IArray!27700 (innerList!13907 List!46021)) )
))
(declare-datatypes ((Conc!13847 0))(
  ( (Node!13847 (left!34191 Conc!13847) (right!34521 Conc!13847) (csize!27924 Int) (cheight!14058 Int)) (Leaf!21408 (xs!17153 IArray!27699) (csize!27925 Int)) (Empty!13847) )
))
(declare-datatypes ((BalanceConc!27288 0))(
  ( (BalanceConc!27289 (c!714036 Conc!13847)) )
))
(declare-datatypes ((Regex!12541 0))(
  ( (ElementMatch!12541 (c!714037 C!25272)) (Concat!20408 (regOne!25594 Regex!12541) (regTwo!25594 Regex!12541)) (EmptyExpr!12541) (Star!12541 (reg!12870 Regex!12541)) (EmptyLang!12541) (Union!12541 (regOne!25595 Regex!12541) (regTwo!25595 Regex!12541)) )
))
(declare-datatypes ((String!53196 0))(
  ( (String!53197 (value!238157 String)) )
))
(declare-datatypes ((TokenValueInjection!15160 0))(
  ( (TokenValueInjection!15161 (toValue!10328 Int) (toChars!10187 Int)) )
))
(declare-datatypes ((Rule!15072 0))(
  ( (Rule!15073 (regex!7636 Regex!12541) (tag!8500 String!53196) (isSeparator!7636 Bool) (transformation!7636 TokenValueInjection!15160)) )
))
(declare-datatypes ((List!46023 0))(
  ( (Nil!45899) (Cons!45899 (h!51319 Rule!15072) (t!345128 List!46023)) )
))
(declare-fun rules!3843 () List!46023)

(declare-fun rBis!167 () Rule!15072)

(declare-fun contains!9443 (List!46023 Rule!15072) Bool)

(assert (=> b!4181475 (= res!1714595 (contains!9443 rules!3843 rBis!167))))

(declare-fun b!4181477 () Bool)

(declare-fun res!1714587 () Bool)

(declare-fun e!2595929 () Bool)

(assert (=> b!4181477 (=> res!1714587 e!2595929)))

(declare-datatypes ((LexerInterface!7229 0))(
  ( (LexerInterfaceExt!7226 (__x!27954 Int)) (Lexer!7227) )
))
(declare-fun thiss!25986 () LexerInterface!7229)

(declare-fun ruleValid!3354 (LexerInterface!7229 Rule!15072) Bool)

(assert (=> b!4181477 (= res!1714587 (not (ruleValid!3354 thiss!25986 rBis!167)))))

(declare-fun e!2595926 () Bool)

(assert (=> b!4181478 (= e!2595926 (and tp!1277992 tp!1277990))))

(declare-fun b!4181479 () Bool)

(declare-fun e!2595927 () Bool)

(declare-fun tp_is_empty!22045 () Bool)

(declare-fun tp!1277995 () Bool)

(assert (=> b!4181479 (= e!2595927 (and tp_is_empty!22045 tp!1277995))))

(declare-fun b!4181480 () Bool)

(declare-fun res!1714593 () Bool)

(assert (=> b!4181480 (=> (not res!1714593) (not e!2595924))))

(declare-fun r!4142 () Rule!15072)

(declare-fun validRegex!5658 (Regex!12541) Bool)

(assert (=> b!4181480 (= res!1714593 (validRegex!5658 (regex!7636 r!4142)))))

(declare-fun b!4181481 () Bool)

(declare-fun e!2595934 () Bool)

(declare-fun tp!1277993 () Bool)

(assert (=> b!4181481 (= e!2595934 (and tp_is_empty!22045 tp!1277993))))

(declare-fun tp!1277989 () Bool)

(declare-fun b!4181482 () Bool)

(declare-fun e!2595936 () Bool)

(declare-fun inv!60435 (String!53196) Bool)

(declare-fun inv!60437 (TokenValueInjection!15160) Bool)

(assert (=> b!4181482 (= e!2595936 (and tp!1277989 (inv!60435 (tag!8500 (h!51319 rules!3843))) (inv!60437 (transformation!7636 (h!51319 rules!3843))) e!2595926))))

(declare-fun b!4181483 () Bool)

(declare-fun res!1714590 () Bool)

(assert (=> b!4181483 (=> (not res!1714590) (not e!2595924))))

(declare-fun rulesInvariant!6442 (LexerInterface!7229 List!46023) Bool)

(assert (=> b!4181483 (= res!1714590 (rulesInvariant!6442 thiss!25986 rules!3843))))

(declare-fun e!2595930 () Bool)

(assert (=> b!4181484 (= e!2595930 (and tp!1277991 tp!1277999))))

(declare-fun b!4181485 () Bool)

(declare-fun e!2595921 () Bool)

(declare-fun tp!1277997 () Bool)

(assert (=> b!4181485 (= e!2595921 (and e!2595936 tp!1277997))))

(declare-fun b!4181486 () Bool)

(declare-fun e!2595933 () Bool)

(assert (=> b!4181486 (= e!2595933 e!2595929)))

(declare-fun res!1714592 () Bool)

(assert (=> b!4181486 (=> res!1714592 e!2595929)))

(declare-fun lt!1489119 () Int)

(declare-fun lt!1489125 () Int)

(assert (=> b!4181486 (= res!1714592 (<= lt!1489119 lt!1489125))))

(declare-fun size!33707 (List!46021) Int)

(assert (=> b!4181486 (= lt!1489119 (size!33707 pBis!107))))

(declare-fun b!4181487 () Bool)

(declare-fun res!1714588 () Bool)

(assert (=> b!4181487 (=> (not res!1714588) (not e!2595924))))

(declare-fun matchR!6280 (Regex!12541 List!46021) Bool)

(assert (=> b!4181487 (= res!1714588 (matchR!6280 (regex!7636 r!4142) p!2959))))

(declare-fun b!4181488 () Bool)

(declare-fun res!1714600 () Bool)

(assert (=> b!4181488 (=> (not res!1714600) (not e!2595924))))

(assert (=> b!4181488 (= res!1714600 (ruleValid!3354 thiss!25986 r!4142))))

(declare-fun b!4181489 () Bool)

(declare-fun res!1714594 () Bool)

(assert (=> b!4181489 (=> res!1714594 e!2595929)))

(declare-datatypes ((Token!13986 0))(
  ( (Token!13987 (value!238158 TokenValue!7866) (rule!10698 Rule!15072) (size!33708 Int) (originalCharacters!8024 List!46021)) )
))
(declare-datatypes ((tuple2!43710 0))(
  ( (tuple2!43711 (_1!24989 Token!13986) (_2!24989 List!46021)) )
))
(declare-datatypes ((Option!9830 0))(
  ( (None!9829) (Some!9829 (v!40639 tuple2!43710)) )
))
(declare-fun lt!1489126 () Option!9830)

(declare-fun maxPrefix!4277 (LexerInterface!7229 List!46023 List!46021) Option!9830)

(assert (=> b!4181489 (= res!1714594 (not (= (maxPrefix!4277 thiss!25986 rules!3843 input!3342) lt!1489126)))))

(declare-fun e!2595932 () Bool)

(declare-fun b!4181490 () Bool)

(declare-fun tp!1277998 () Bool)

(assert (=> b!4181490 (= e!2595932 (and tp!1277998 (inv!60435 (tag!8500 r!4142)) (inv!60437 (transformation!7636 r!4142)) e!2595930))))

(declare-fun e!2595923 () Bool)

(declare-fun e!2595925 () Bool)

(declare-fun b!4181491 () Bool)

(declare-fun tp!1277988 () Bool)

(assert (=> b!4181491 (= e!2595925 (and tp!1277988 (inv!60435 (tag!8500 rBis!167)) (inv!60437 (transformation!7636 rBis!167)) e!2595923))))

(declare-fun b!4181492 () Bool)

(assert (=> b!4181492 (= e!2595929 true)))

(assert (=> b!4181492 (<= lt!1489119 (size!33707 input!3342))))

(declare-datatypes ((Unit!64987 0))(
  ( (Unit!64988) )
))
(declare-fun lt!1489123 () Unit!64987)

(declare-fun lemmaIsPrefixThenSmallerEqSize!523 (List!46021 List!46021) Unit!64987)

(assert (=> b!4181492 (= lt!1489123 (lemmaIsPrefixThenSmallerEqSize!523 pBis!107 input!3342))))

(declare-fun b!4181476 () Bool)

(assert (=> b!4181476 (= e!2595924 (not e!2595933))))

(declare-fun res!1714596 () Bool)

(assert (=> b!4181476 (=> res!1714596 e!2595933)))

(declare-fun maxPrefixOneRule!3238 (LexerInterface!7229 Rule!15072 List!46021) Option!9830)

(assert (=> b!4181476 (= res!1714596 (not (= (maxPrefixOneRule!3238 thiss!25986 r!4142 input!3342) lt!1489126)))))

(declare-fun lt!1489122 () TokenValue!7866)

(declare-fun getSuffix!2786 (List!46021 List!46021) List!46021)

(assert (=> b!4181476 (= lt!1489126 (Some!9829 (tuple2!43711 (Token!13987 lt!1489122 r!4142 lt!1489125 p!2959) (getSuffix!2786 input!3342 p!2959))))))

(assert (=> b!4181476 (= lt!1489125 (size!33707 p!2959))))

(declare-fun lt!1489120 () BalanceConc!27288)

(declare-fun apply!10601 (TokenValueInjection!15160 BalanceConc!27288) TokenValue!7866)

(assert (=> b!4181476 (= lt!1489122 (apply!10601 (transformation!7636 r!4142) lt!1489120))))

(assert (=> b!4181476 (isPrefix!4493 input!3342 input!3342)))

(declare-fun lt!1489124 () Unit!64987)

(declare-fun lemmaIsPrefixRefl!2922 (List!46021 List!46021) Unit!64987)

(assert (=> b!4181476 (= lt!1489124 (lemmaIsPrefixRefl!2922 input!3342 input!3342))))

(declare-fun lt!1489121 () Unit!64987)

(declare-fun lemmaSemiInverse!2402 (TokenValueInjection!15160 BalanceConc!27288) Unit!64987)

(assert (=> b!4181476 (= lt!1489121 (lemmaSemiInverse!2402 (transformation!7636 r!4142) lt!1489120))))

(declare-fun seqFromList!5661 (List!46021) BalanceConc!27288)

(assert (=> b!4181476 (= lt!1489120 (seqFromList!5661 p!2959))))

(declare-fun res!1714589 () Bool)

(assert (=> start!398786 (=> (not res!1714589) (not e!2595924))))

(get-info :version)

(assert (=> start!398786 (= res!1714589 ((_ is Lexer!7227) thiss!25986))))

(assert (=> start!398786 e!2595924))

(assert (=> start!398786 true))

(assert (=> start!398786 e!2595925))

(assert (=> start!398786 e!2595932))

(assert (=> start!398786 e!2595921))

(assert (=> start!398786 e!2595927))

(declare-fun e!2595935 () Bool)

(assert (=> start!398786 e!2595935))

(assert (=> start!398786 e!2595934))

(declare-fun b!4181493 () Bool)

(declare-fun res!1714598 () Bool)

(assert (=> b!4181493 (=> (not res!1714598) (not e!2595924))))

(assert (=> b!4181493 (= res!1714598 (contains!9443 rules!3843 r!4142))))

(declare-fun b!4181494 () Bool)

(declare-fun res!1714599 () Bool)

(assert (=> b!4181494 (=> (not res!1714599) (not e!2595924))))

(declare-fun isEmpty!27157 (List!46023) Bool)

(assert (=> b!4181494 (= res!1714599 (not (isEmpty!27157 rules!3843)))))

(assert (=> b!4181495 (= e!2595923 (and tp!1277996 tp!1277994))))

(declare-fun b!4181496 () Bool)

(declare-fun tp!1278000 () Bool)

(assert (=> b!4181496 (= e!2595935 (and tp_is_empty!22045 tp!1278000))))

(assert (= (and start!398786 res!1714589) b!4181474))

(assert (= (and b!4181474 res!1714591) b!4181473))

(assert (= (and b!4181473 res!1714597) b!4181494))

(assert (= (and b!4181494 res!1714599) b!4181483))

(assert (= (and b!4181483 res!1714590) b!4181493))

(assert (= (and b!4181493 res!1714598) b!4181475))

(assert (= (and b!4181475 res!1714595) b!4181480))

(assert (= (and b!4181480 res!1714593) b!4181487))

(assert (= (and b!4181487 res!1714588) b!4181488))

(assert (= (and b!4181488 res!1714600) b!4181476))

(assert (= (and b!4181476 (not res!1714596)) b!4181486))

(assert (= (and b!4181486 (not res!1714592)) b!4181477))

(assert (= (and b!4181477 (not res!1714587)) b!4181489))

(assert (= (and b!4181489 (not res!1714594)) b!4181492))

(assert (= b!4181491 b!4181495))

(assert (= start!398786 b!4181491))

(assert (= b!4181490 b!4181484))

(assert (= start!398786 b!4181490))

(assert (= b!4181482 b!4181478))

(assert (= b!4181485 b!4181482))

(assert (= (and start!398786 ((_ is Cons!45899) rules!3843)) b!4181485))

(assert (= (and start!398786 ((_ is Cons!45897) input!3342)) b!4181479))

(assert (= (and start!398786 ((_ is Cons!45897) pBis!107)) b!4181496))

(assert (= (and start!398786 ((_ is Cons!45897) p!2959)) b!4181481))

(declare-fun m!4770479 () Bool)

(assert (=> b!4181474 m!4770479))

(declare-fun m!4770481 () Bool)

(assert (=> b!4181480 m!4770481))

(declare-fun m!4770483 () Bool)

(assert (=> b!4181486 m!4770483))

(declare-fun m!4770485 () Bool)

(assert (=> b!4181494 m!4770485))

(declare-fun m!4770487 () Bool)

(assert (=> b!4181483 m!4770487))

(declare-fun m!4770489 () Bool)

(assert (=> b!4181490 m!4770489))

(declare-fun m!4770491 () Bool)

(assert (=> b!4181490 m!4770491))

(declare-fun m!4770493 () Bool)

(assert (=> b!4181475 m!4770493))

(declare-fun m!4770495 () Bool)

(assert (=> b!4181473 m!4770495))

(declare-fun m!4770497 () Bool)

(assert (=> b!4181488 m!4770497))

(declare-fun m!4770499 () Bool)

(assert (=> b!4181476 m!4770499))

(declare-fun m!4770501 () Bool)

(assert (=> b!4181476 m!4770501))

(declare-fun m!4770503 () Bool)

(assert (=> b!4181476 m!4770503))

(declare-fun m!4770505 () Bool)

(assert (=> b!4181476 m!4770505))

(declare-fun m!4770507 () Bool)

(assert (=> b!4181476 m!4770507))

(declare-fun m!4770509 () Bool)

(assert (=> b!4181476 m!4770509))

(declare-fun m!4770511 () Bool)

(assert (=> b!4181476 m!4770511))

(declare-fun m!4770513 () Bool)

(assert (=> b!4181476 m!4770513))

(declare-fun m!4770515 () Bool)

(assert (=> b!4181493 m!4770515))

(declare-fun m!4770517 () Bool)

(assert (=> b!4181489 m!4770517))

(declare-fun m!4770519 () Bool)

(assert (=> b!4181491 m!4770519))

(declare-fun m!4770521 () Bool)

(assert (=> b!4181491 m!4770521))

(declare-fun m!4770523 () Bool)

(assert (=> b!4181487 m!4770523))

(declare-fun m!4770525 () Bool)

(assert (=> b!4181482 m!4770525))

(declare-fun m!4770527 () Bool)

(assert (=> b!4181482 m!4770527))

(declare-fun m!4770529 () Bool)

(assert (=> b!4181477 m!4770529))

(declare-fun m!4770531 () Bool)

(assert (=> b!4181492 m!4770531))

(declare-fun m!4770533 () Bool)

(assert (=> b!4181492 m!4770533))

(check-sat (not b!4181476) (not b_next!122209) (not b!4181488) (not b!4181474) (not b_next!122207) (not b!4181475) b_and!327125 (not b!4181493) b_and!327133 (not b!4181487) (not b!4181485) b_and!327129 (not b!4181496) (not b!4181492) b_and!327131 b_and!327135 (not b!4181489) (not b!4181486) tp_is_empty!22045 (not b!4181491) (not b!4181494) (not b!4181481) (not b!4181473) (not b!4181477) (not b_next!122199) (not b!4181490) (not b!4181483) (not b!4181479) (not b_next!122205) b_and!327127 (not b!4181480) (not b!4181482) (not b_next!122201) (not b_next!122203))
(check-sat b_and!327133 (not b_next!122209) b_and!327129 (not b_next!122199) (not b_next!122205) (not b_next!122207) b_and!327125 b_and!327127 b_and!327131 b_and!327135 (not b_next!122201) (not b_next!122203))
