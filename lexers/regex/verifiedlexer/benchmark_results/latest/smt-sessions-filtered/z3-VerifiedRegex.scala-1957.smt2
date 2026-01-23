; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98434 () Bool)

(assert start!98434)

(declare-fun b!1139077 () Bool)

(assert (=> b!1139077 true))

(declare-fun b!1139074 () Bool)

(declare-datatypes ((List!11018 0))(
  ( (Nil!10994) (Cons!10994 (h!16395 (_ BitVec 16)) (t!107488 List!11018)) )
))
(declare-datatypes ((TokenValue!1961 0))(
  ( (FloatLiteralValue!3922 (text!14172 List!11018)) (TokenValueExt!1960 (__x!7643 Int)) (Broken!9805 (value!61978 List!11018)) (Object!1984) (End!1961) (Def!1961) (Underscore!1961) (Match!1961) (Else!1961) (Error!1961) (Case!1961) (If!1961) (Extends!1961) (Abstract!1961) (Class!1961) (Val!1961) (DelimiterValue!3922 (del!2021 List!11018)) (KeywordValue!1967 (value!61979 List!11018)) (CommentValue!3922 (value!61980 List!11018)) (WhitespaceValue!3922 (value!61981 List!11018)) (IndentationValue!1961 (value!61982 List!11018)) (String!13392) (Int32!1961) (Broken!9806 (value!61983 List!11018)) (Boolean!1962) (Unit!16849) (OperatorValue!1964 (op!2021 List!11018)) (IdentifierValue!3922 (value!61984 List!11018)) (IdentifierValue!3923 (value!61985 List!11018)) (WhitespaceValue!3923 (value!61986 List!11018)) (True!3922) (False!3922) (Broken!9807 (value!61987 List!11018)) (Broken!9808 (value!61988 List!11018)) (True!3923) (RightBrace!1961) (RightBracket!1961) (Colon!1961) (Null!1961) (Comma!1961) (LeftBracket!1961) (False!3923) (LeftBrace!1961) (ImaginaryLiteralValue!1961 (text!14173 List!11018)) (StringLiteralValue!5883 (value!61989 List!11018)) (EOFValue!1961 (value!61990 List!11018)) (IdentValue!1961 (value!61991 List!11018)) (DelimiterValue!3923 (value!61992 List!11018)) (DedentValue!1961 (value!61993 List!11018)) (NewLineValue!1961 (value!61994 List!11018)) (IntegerValue!5883 (value!61995 (_ BitVec 32)) (text!14174 List!11018)) (IntegerValue!5884 (value!61996 Int) (text!14175 List!11018)) (Times!1961) (Or!1961) (Equal!1961) (Minus!1961) (Broken!9809 (value!61997 List!11018)) (And!1961) (Div!1961) (LessEqual!1961) (Mod!1961) (Concat!5126) (Not!1961) (Plus!1961) (SpaceValue!1961 (value!61998 List!11018)) (IntegerValue!5885 (value!61999 Int) (text!14176 List!11018)) (StringLiteralValue!5884 (text!14177 List!11018)) (FloatLiteralValue!3923 (text!14178 List!11018)) (BytesLiteralValue!1961 (value!62000 List!11018)) (CommentValue!3923 (value!62001 List!11018)) (StringLiteralValue!5885 (value!62002 List!11018)) (ErrorTokenValue!1961 (msg!2022 List!11018)) )
))
(declare-datatypes ((Regex!3165 0))(
  ( (ElementMatch!3165 (c!191044 (_ BitVec 16))) (Concat!5127 (regOne!6842 Regex!3165) (regTwo!6842 Regex!3165)) (EmptyExpr!3165) (Star!3165 (reg!3494 Regex!3165)) (EmptyLang!3165) (Union!3165 (regOne!6843 Regex!3165) (regTwo!6843 Regex!3165)) )
))
(declare-datatypes ((String!13393 0))(
  ( (String!13394 (value!62003 String)) )
))
(declare-datatypes ((IArray!7033 0))(
  ( (IArray!7034 (innerList!3574 List!11018)) )
))
(declare-datatypes ((Conc!3514 0))(
  ( (Node!3514 (left!9547 Conc!3514) (right!9877 Conc!3514) (csize!7258 Int) (cheight!3725 Int)) (Leaf!5472 (xs!6211 IArray!7033) (csize!7259 Int)) (Empty!3514) )
))
(declare-datatypes ((BalanceConc!7050 0))(
  ( (BalanceConc!7051 (c!191045 Conc!3514)) )
))
(declare-datatypes ((TokenValueInjection!3622 0))(
  ( (TokenValueInjection!3623 (toValue!2988 Int) (toChars!2847 Int)) )
))
(declare-datatypes ((Rule!3590 0))(
  ( (Rule!3591 (regex!1895 Regex!3165) (tag!2157 String!13393) (isSeparator!1895 Bool) (transformation!1895 TokenValueInjection!3622)) )
))
(declare-datatypes ((Token!3452 0))(
  ( (Token!3453 (value!62004 TokenValue!1961) (rule!3316 Rule!3590) (size!8608 Int) (originalCharacters!2449 List!11018)) )
))
(declare-datatypes ((List!11019 0))(
  ( (Nil!10995) (Cons!10995 (h!16396 Token!3452) (t!107489 List!11019)) )
))
(declare-datatypes ((IArray!7035 0))(
  ( (IArray!7036 (innerList!3575 List!11019)) )
))
(declare-datatypes ((Conc!3515 0))(
  ( (Node!3515 (left!9548 Conc!3515) (right!9878 Conc!3515) (csize!7260 Int) (cheight!3726 Int)) (Leaf!5473 (xs!6212 IArray!7035) (csize!7261 Int)) (Empty!3515) )
))
(declare-datatypes ((List!11020 0))(
  ( (Nil!10996) (Cons!10996 (h!16397 Rule!3590) (t!107490 List!11020)) )
))
(declare-datatypes ((BalanceConc!7052 0))(
  ( (BalanceConc!7053 (c!191046 Conc!3515)) )
))
(declare-datatypes ((PrintableTokens!476 0))(
  ( (PrintableTokens!477 (rules!9276 List!11020) (tokens!1472 BalanceConc!7052)) )
))
(declare-fun e!727971 () PrintableTokens!476)

(declare-fun call!81148 () PrintableTokens!476)

(assert (=> b!1139074 (= e!727971 call!81148)))

(declare-fun b!1139075 () Bool)

(declare-fun res!512200 () Bool)

(declare-fun e!727977 () Bool)

(assert (=> b!1139075 (=> (not res!512200) (not e!727977))))

(declare-datatypes ((List!11021 0))(
  ( (Nil!10997) (Cons!10997 (h!16398 Int) (t!107491 List!11021)) )
))
(declare-datatypes ((IArray!7037 0))(
  ( (IArray!7038 (innerList!3576 List!11021)) )
))
(declare-datatypes ((Conc!3516 0))(
  ( (Node!3516 (left!9549 Conc!3516) (right!9879 Conc!3516) (csize!7262 Int) (cheight!3727 Int)) (Leaf!5474 (xs!6213 IArray!7037) (csize!7263 Int)) (Empty!3516) )
))
(declare-datatypes ((BalanceConc!7054 0))(
  ( (BalanceConc!7055 (c!191047 Conc!3516)) )
))
(declare-fun indices!2 () BalanceConc!7054)

(declare-fun size!8609 (BalanceConc!7054) Int)

(assert (=> b!1139075 (= res!512200 (>= (size!8609 indices!2) 2))))

(declare-fun b!1139076 () Bool)

(declare-fun e!727973 () Bool)

(assert (=> b!1139076 (= e!727977 e!727973)))

(declare-fun res!512198 () Bool)

(assert (=> b!1139076 (=> (not res!512198) (not e!727973))))

(declare-fun lt!384298 () PrintableTokens!476)

(declare-fun usesJsonRules!0 (PrintableTokens!476) Bool)

(assert (=> b!1139076 (= res!512198 (usesJsonRules!0 lt!384298))))

(assert (=> b!1139076 (= lt!384298 e!727971)))

(declare-fun c!191043 () Bool)

(declare-fun lt!384295 () Int)

(declare-fun lt!384294 () Int)

(assert (=> b!1139076 (= c!191043 (<= lt!384295 lt!384294))))

(declare-fun apply!2313 (BalanceConc!7054 Int) Int)

(assert (=> b!1139076 (= lt!384294 (apply!2313 indices!2 1))))

(assert (=> b!1139076 (= lt!384295 (apply!2313 indices!2 0))))

(declare-fun b!1139078 () Bool)

(declare-fun e!727976 () Bool)

(assert (=> b!1139078 (= e!727976 false)))

(declare-fun lt!384297 () BalanceConc!7054)

(declare-fun tail!1629 (BalanceConc!7054) BalanceConc!7054)

(assert (=> b!1139078 (= lt!384297 (tail!1629 (tail!1629 indices!2)))))

(declare-fun bm!81143 () Bool)

(declare-fun pt!21 () PrintableTokens!476)

(declare-fun slice!88 (PrintableTokens!476 Int Int) PrintableTokens!476)

(assert (=> bm!81143 (= call!81148 (slice!88 pt!21 (ite c!191043 lt!384295 lt!384294) (ite c!191043 (+ 1 lt!384294) (+ 1 lt!384295))))))

(declare-fun b!1139079 () Bool)

(declare-fun res!512197 () Bool)

(assert (=> b!1139079 (=> (not res!512197) (not e!727977))))

(declare-datatypes ((List!11022 0))(
  ( (Nil!10998) (Cons!10998 (h!16399 PrintableTokens!476) (t!107492 List!11022)) )
))
(declare-datatypes ((IArray!7039 0))(
  ( (IArray!7040 (innerList!3577 List!11022)) )
))
(declare-datatypes ((Conc!3517 0))(
  ( (Node!3517 (left!9550 Conc!3517) (right!9880 Conc!3517) (csize!7264 Int) (cheight!3728 Int)) (Leaf!5475 (xs!6214 IArray!7039) (csize!7265 Int)) (Empty!3517) )
))
(declare-datatypes ((BalanceConc!7056 0))(
  ( (BalanceConc!7057 (c!191048 Conc!3517)) )
))
(declare-fun acc!225 () BalanceConc!7056)

(declare-fun lambda!45813 () Int)

(declare-fun forall!2698 (BalanceConc!7056 Int) Bool)

(assert (=> b!1139079 (= res!512197 (forall!2698 acc!225 lambda!45813))))

(declare-fun b!1139080 () Bool)

(assert (=> b!1139080 (= e!727973 e!727976)))

(declare-fun res!512199 () Bool)

(assert (=> b!1139080 (=> (not res!512199) (not e!727976))))

(declare-fun append!346 (BalanceConc!7056 PrintableTokens!476) BalanceConc!7056)

(assert (=> b!1139080 (= res!512199 (forall!2698 (append!346 acc!225 lt!384298) lambda!45813))))

(declare-datatypes ((Unit!16850 0))(
  ( (Unit!16851) )
))
(declare-fun lt!384296 () Unit!16850)

(declare-fun lemmaConcatPreservesForall!108 (List!11022 List!11022 Int) Unit!16850)

(declare-fun list!4014 (BalanceConc!7056) List!11022)

(assert (=> b!1139080 (= lt!384296 (lemmaConcatPreservesForall!108 (list!4014 acc!225) (Cons!10998 lt!384298 Nil!10998) lambda!45813))))

(declare-fun b!1139081 () Bool)

(declare-fun e!727972 () Bool)

(declare-fun tp!331454 () Bool)

(declare-fun inv!14288 (Conc!3515) Bool)

(assert (=> b!1139081 (= e!727972 (and (inv!14288 (c!191046 (tokens!1472 pt!21))) tp!331454))))

(declare-fun b!1139082 () Bool)

(declare-fun res!512201 () Bool)

(assert (=> b!1139082 (=> (not res!512201) (not e!727977))))

(assert (=> b!1139082 (= res!512201 (usesJsonRules!0 pt!21))))

(declare-fun b!1139083 () Bool)

(assert (=> b!1139083 (= e!727971 call!81148)))

(declare-fun b!1139084 () Bool)

(declare-fun e!727974 () Bool)

(declare-fun tp!331453 () Bool)

(declare-fun inv!14289 (Conc!3516) Bool)

(assert (=> b!1139084 (= e!727974 (and (inv!14289 (c!191047 indices!2)) tp!331453))))

(declare-fun res!512202 () Bool)

(assert (=> b!1139077 (=> (not res!512202) (not e!727977))))

(declare-fun lambda!45812 () Int)

(declare-fun forall!2699 (BalanceConc!7054 Int) Bool)

(assert (=> b!1139077 (= res!512202 (forall!2699 indices!2 lambda!45812))))

(declare-fun res!512196 () Bool)

(assert (=> start!98434 (=> (not res!512196) (not e!727977))))

(declare-fun size!108 () Int)

(declare-fun size!8610 (PrintableTokens!476) Int)

(assert (=> start!98434 (= res!512196 (= (size!8610 pt!21) size!108))))

(assert (=> start!98434 e!727977))

(declare-fun e!727975 () Bool)

(declare-fun inv!14290 (PrintableTokens!476) Bool)

(assert (=> start!98434 (and (inv!14290 pt!21) e!727975)))

(assert (=> start!98434 true))

(declare-fun inv!14291 (BalanceConc!7054) Bool)

(assert (=> start!98434 (and (inv!14291 indices!2) e!727974)))

(declare-fun e!727970 () Bool)

(declare-fun inv!14292 (BalanceConc!7056) Bool)

(assert (=> start!98434 (and (inv!14292 acc!225) e!727970)))

(declare-fun b!1139085 () Bool)

(declare-fun tp!331455 () Bool)

(declare-fun inv!14293 (BalanceConc!7052) Bool)

(assert (=> b!1139085 (= e!727975 (and tp!331455 (inv!14293 (tokens!1472 pt!21)) e!727972))))

(declare-fun b!1139086 () Bool)

(declare-fun tp!331456 () Bool)

(declare-fun inv!14294 (Conc!3517) Bool)

(assert (=> b!1139086 (= e!727970 (and (inv!14294 (c!191048 acc!225)) tp!331456))))

(assert (= (and start!98434 res!512196) b!1139077))

(assert (= (and b!1139077 res!512202) b!1139082))

(assert (= (and b!1139082 res!512201) b!1139079))

(assert (= (and b!1139079 res!512197) b!1139075))

(assert (= (and b!1139075 res!512200) b!1139076))

(assert (= (and b!1139076 c!191043) b!1139074))

(assert (= (and b!1139076 (not c!191043)) b!1139083))

(assert (= (or b!1139074 b!1139083) bm!81143))

(assert (= (and b!1139076 res!512198) b!1139080))

(assert (= (and b!1139080 res!512199) b!1139078))

(assert (= b!1139085 b!1139081))

(assert (= start!98434 b!1139085))

(assert (= start!98434 b!1139084))

(assert (= start!98434 b!1139086))

(declare-fun m!1294497 () Bool)

(assert (=> b!1139080 m!1294497))

(assert (=> b!1139080 m!1294497))

(declare-fun m!1294499 () Bool)

(assert (=> b!1139080 m!1294499))

(declare-fun m!1294501 () Bool)

(assert (=> b!1139080 m!1294501))

(assert (=> b!1139080 m!1294501))

(declare-fun m!1294503 () Bool)

(assert (=> b!1139080 m!1294503))

(declare-fun m!1294505 () Bool)

(assert (=> b!1139079 m!1294505))

(declare-fun m!1294507 () Bool)

(assert (=> b!1139077 m!1294507))

(declare-fun m!1294509 () Bool)

(assert (=> b!1139076 m!1294509))

(declare-fun m!1294511 () Bool)

(assert (=> b!1139076 m!1294511))

(declare-fun m!1294513 () Bool)

(assert (=> b!1139076 m!1294513))

(declare-fun m!1294515 () Bool)

(assert (=> b!1139085 m!1294515))

(declare-fun m!1294517 () Bool)

(assert (=> b!1139078 m!1294517))

(assert (=> b!1139078 m!1294517))

(declare-fun m!1294519 () Bool)

(assert (=> b!1139078 m!1294519))

(declare-fun m!1294521 () Bool)

(assert (=> b!1139084 m!1294521))

(declare-fun m!1294523 () Bool)

(assert (=> bm!81143 m!1294523))

(declare-fun m!1294525 () Bool)

(assert (=> b!1139086 m!1294525))

(declare-fun m!1294527 () Bool)

(assert (=> start!98434 m!1294527))

(declare-fun m!1294529 () Bool)

(assert (=> start!98434 m!1294529))

(declare-fun m!1294531 () Bool)

(assert (=> start!98434 m!1294531))

(declare-fun m!1294533 () Bool)

(assert (=> start!98434 m!1294533))

(declare-fun m!1294535 () Bool)

(assert (=> b!1139081 m!1294535))

(declare-fun m!1294537 () Bool)

(assert (=> b!1139075 m!1294537))

(declare-fun m!1294539 () Bool)

(assert (=> b!1139082 m!1294539))

(check-sat (not b!1139080) (not b!1139075) (not b!1139078) (not b!1139079) (not b!1139084) (not b!1139086) (not b!1139076) (not b!1139082) (not bm!81143) (not b!1139085) (not start!98434) (not b!1139081) (not b!1139077))
(check-sat)
