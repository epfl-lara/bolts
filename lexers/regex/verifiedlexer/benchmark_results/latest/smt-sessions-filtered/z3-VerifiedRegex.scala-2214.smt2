; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108634 () Bool)

(assert start!108634)

(declare-fun b!1215813 () Bool)

(declare-fun b_free!29193 () Bool)

(declare-fun b_next!29897 () Bool)

(assert (=> b!1215813 (= b_free!29193 (not b_next!29897))))

(declare-fun tp!345100 () Bool)

(declare-fun b_and!82561 () Bool)

(assert (=> b!1215813 (= tp!345100 b_and!82561)))

(declare-fun b_free!29195 () Bool)

(declare-fun b_next!29899 () Bool)

(assert (=> b!1215813 (= b_free!29195 (not b_next!29899))))

(declare-fun tp!345101 () Bool)

(declare-fun b_and!82563 () Bool)

(assert (=> b!1215813 (= tp!345101 b_and!82563)))

(declare-fun b!1215822 () Bool)

(declare-fun b_free!29197 () Bool)

(declare-fun b_next!29901 () Bool)

(assert (=> b!1215822 (= b_free!29197 (not b_next!29901))))

(declare-fun tp!345105 () Bool)

(declare-fun b_and!82565 () Bool)

(assert (=> b!1215822 (= tp!345105 b_and!82565)))

(declare-fun b_free!29199 () Bool)

(declare-fun b_next!29903 () Bool)

(assert (=> b!1215822 (= b_free!29199 (not b_next!29903))))

(declare-fun tp!345104 () Bool)

(declare-fun b_and!82567 () Bool)

(assert (=> b!1215822 (= tp!345104 b_and!82567)))

(declare-fun b!1215809 () Bool)

(declare-fun e!780294 () Bool)

(declare-fun e!780291 () Bool)

(declare-datatypes ((List!12454 0))(
  ( (Nil!12396) (Cons!12396 (h!17797 (_ BitVec 16)) (t!113136 List!12454)) )
))
(declare-datatypes ((TokenValue!2201 0))(
  ( (FloatLiteralValue!4402 (text!15852 List!12454)) (TokenValueExt!2200 (__x!8117 Int)) (Broken!11005 (value!69361 List!12454)) (Object!2258) (End!2201) (Def!2201) (Underscore!2201) (Match!2201) (Else!2201) (Error!2201) (Case!2201) (If!2201) (Extends!2201) (Abstract!2201) (Class!2201) (Val!2201) (DelimiterValue!4402 (del!2261 List!12454)) (KeywordValue!2207 (value!69362 List!12454)) (CommentValue!4402 (value!69363 List!12454)) (WhitespaceValue!4402 (value!69364 List!12454)) (IndentationValue!2201 (value!69365 List!12454)) (String!15136) (Int32!2201) (Broken!11006 (value!69366 List!12454)) (Boolean!2202) (Unit!18685) (OperatorValue!2204 (op!2261 List!12454)) (IdentifierValue!4402 (value!69367 List!12454)) (IdentifierValue!4403 (value!69368 List!12454)) (WhitespaceValue!4403 (value!69369 List!12454)) (True!4402) (False!4402) (Broken!11007 (value!69370 List!12454)) (Broken!11008 (value!69371 List!12454)) (True!4403) (RightBrace!2201) (RightBracket!2201) (Colon!2201) (Null!2201) (Comma!2201) (LeftBracket!2201) (False!4403) (LeftBrace!2201) (ImaginaryLiteralValue!2201 (text!15853 List!12454)) (StringLiteralValue!6603 (value!69372 List!12454)) (EOFValue!2201 (value!69373 List!12454)) (IdentValue!2201 (value!69374 List!12454)) (DelimiterValue!4403 (value!69375 List!12454)) (DedentValue!2201 (value!69376 List!12454)) (NewLineValue!2201 (value!69377 List!12454)) (IntegerValue!6603 (value!69378 (_ BitVec 32)) (text!15854 List!12454)) (IntegerValue!6604 (value!69379 Int) (text!15855 List!12454)) (Times!2201) (Or!2201) (Equal!2201) (Minus!2201) (Broken!11009 (value!69380 List!12454)) (And!2201) (Div!2201) (LessEqual!2201) (Mod!2201) (Concat!5604) (Not!2201) (Plus!2201) (SpaceValue!2201 (value!69381 List!12454)) (IntegerValue!6605 (value!69382 Int) (text!15856 List!12454)) (StringLiteralValue!6604 (text!15857 List!12454)) (FloatLiteralValue!4403 (text!15858 List!12454)) (BytesLiteralValue!2201 (value!69383 List!12454)) (CommentValue!4403 (value!69384 List!12454)) (StringLiteralValue!6605 (value!69385 List!12454)) (ErrorTokenValue!2201 (msg!2262 List!12454)) )
))
(declare-datatypes ((C!7124 0))(
  ( (C!7125 (val!4092 Int)) )
))
(declare-datatypes ((List!12455 0))(
  ( (Nil!12397) (Cons!12397 (h!17798 C!7124) (t!113137 List!12455)) )
))
(declare-datatypes ((IArray!8125 0))(
  ( (IArray!8126 (innerList!4120 List!12455)) )
))
(declare-datatypes ((Conc!4060 0))(
  ( (Node!4060 (left!10714 Conc!4060) (right!11044 Conc!4060) (csize!8350 Int) (cheight!4271 Int)) (Leaf!6275 (xs!6771 IArray!8125) (csize!8351 Int)) (Empty!4060) )
))
(declare-datatypes ((Regex!3403 0))(
  ( (ElementMatch!3403 (c!203388 C!7124)) (Concat!5605 (regOne!7318 Regex!3403) (regTwo!7318 Regex!3403)) (EmptyExpr!3403) (Star!3403 (reg!3732 Regex!3403)) (EmptyLang!3403) (Union!3403 (regOne!7319 Regex!3403) (regTwo!7319 Regex!3403)) )
))
(declare-datatypes ((String!15137 0))(
  ( (String!15138 (value!69386 String)) )
))
(declare-datatypes ((BalanceConc!8052 0))(
  ( (BalanceConc!8053 (c!203389 Conc!4060)) )
))
(declare-datatypes ((TokenValueInjection!4098 0))(
  ( (TokenValueInjection!4099 (toValue!3262 Int) (toChars!3121 Int)) )
))
(declare-datatypes ((Rule!4066 0))(
  ( (Rule!4067 (regex!2133 Regex!3403) (tag!2395 String!15137) (isSeparator!2133 Bool) (transformation!2133 TokenValueInjection!4098)) )
))
(declare-datatypes ((List!12456 0))(
  ( (Nil!12398) (Cons!12398 (h!17799 Rule!4066) (t!113138 List!12456)) )
))
(declare-fun rules!2728 () List!12456)

(declare-fun tp!345098 () Bool)

(declare-fun inv!16587 (String!15137) Bool)

(declare-fun inv!16590 (TokenValueInjection!4098) Bool)

(assert (=> b!1215809 (= e!780291 (and tp!345098 (inv!16587 (tag!2395 (h!17799 rules!2728))) (inv!16590 (transformation!2133 (h!17799 rules!2728))) e!780294))))

(declare-fun b!1215810 () Bool)

(declare-fun e!780300 () Bool)

(declare-datatypes ((Token!3928 0))(
  ( (Token!3929 (value!69387 TokenValue!2201) (rule!3558 Rule!4066) (size!9811 Int) (originalCharacters!2687 List!12455)) )
))
(declare-datatypes ((tuple2!12266 0))(
  ( (tuple2!12267 (_1!6980 Token!3928) (_2!6980 List!12455)) )
))
(declare-fun lt!415603 () tuple2!12266)

(declare-datatypes ((List!12457 0))(
  ( (Nil!12399) (Cons!12399 (h!17800 Token!3928) (t!113139 List!12457)) )
))
(declare-fun tokens!556 () List!12457)

(declare-fun charsOf!1139 (Token!3928) BalanceConc!8052)

(assert (=> b!1215810 (= e!780300 (not (= (charsOf!1139 (_1!6980 lt!415603)) (charsOf!1139 (h!17800 tokens!556)))))))

(declare-fun b!1215811 () Bool)

(declare-fun e!780293 () Bool)

(declare-fun tp!345102 () Bool)

(assert (=> b!1215811 (= e!780293 (and e!780291 tp!345102))))

(declare-fun tp!345097 () Bool)

(declare-fun e!780298 () Bool)

(declare-fun e!780292 () Bool)

(declare-fun b!1215812 () Bool)

(declare-fun inv!16591 (Token!3928) Bool)

(assert (=> b!1215812 (= e!780292 (and (inv!16591 (h!17800 tokens!556)) e!780298 tp!345097))))

(declare-fun e!780296 () Bool)

(assert (=> b!1215813 (= e!780296 (and tp!345100 tp!345101))))

(declare-fun b!1215814 () Bool)

(declare-fun e!780299 () Bool)

(declare-fun tp_is_empty!6327 () Bool)

(declare-fun tp!345096 () Bool)

(assert (=> b!1215814 (= e!780299 (and tp_is_empty!6327 tp!345096))))

(declare-fun b!1215815 () Bool)

(declare-fun e!780297 () Bool)

(assert (=> b!1215815 (= e!780297 e!780300)))

(declare-fun res!546703 () Bool)

(assert (=> b!1215815 (=> (not res!546703) (not e!780300))))

(assert (=> b!1215815 (= res!546703 (= (_1!6980 lt!415603) (h!17800 tokens!556)))))

(declare-datatypes ((Option!2495 0))(
  ( (None!2494) (Some!2494 (v!20625 tuple2!12266)) )
))
(declare-fun lt!415602 () Option!2495)

(declare-fun get!4079 (Option!2495) tuple2!12266)

(assert (=> b!1215815 (= lt!415603 (get!4079 lt!415602))))

(declare-fun b!1215816 () Bool)

(declare-fun e!780295 () Bool)

(declare-fun tp!345099 () Bool)

(declare-fun inv!21 (TokenValue!2201) Bool)

(assert (=> b!1215816 (= e!780298 (and (inv!21 (value!69387 (h!17800 tokens!556))) e!780295 tp!345099))))

(declare-fun b!1215817 () Bool)

(declare-fun res!546704 () Bool)

(declare-fun e!780288 () Bool)

(assert (=> b!1215817 (=> (not res!546704) (not e!780288))))

(get-info :version)

(assert (=> b!1215817 (= res!546704 (not ((_ is Nil!12399) tokens!556)))))

(declare-fun b!1215818 () Bool)

(assert (=> b!1215818 (= e!780288 e!780297)))

(declare-fun res!546705 () Bool)

(assert (=> b!1215818 (=> (not res!546705) (not e!780297))))

(declare-fun isDefined!2133 (Option!2495) Bool)

(assert (=> b!1215818 (= res!546705 (isDefined!2133 lt!415602))))

(declare-fun input!2346 () List!12455)

(declare-datatypes ((LexerInterface!1828 0))(
  ( (LexerInterfaceExt!1825 (__x!8118 Int)) (Lexer!1826) )
))
(declare-fun thiss!20528 () LexerInterface!1828)

(declare-fun maxPrefix!950 (LexerInterface!1828 List!12456 List!12455) Option!2495)

(assert (=> b!1215818 (= lt!415602 (maxPrefix!950 thiss!20528 rules!2728 input!2346))))

(declare-fun res!546709 () Bool)

(assert (=> start!108634 (=> (not res!546709) (not e!780288))))

(assert (=> start!108634 (= res!546709 ((_ is Lexer!1826) thiss!20528))))

(assert (=> start!108634 e!780288))

(assert (=> start!108634 true))

(assert (=> start!108634 e!780293))

(assert (=> start!108634 e!780299))

(assert (=> start!108634 e!780292))

(declare-fun b!1215819 () Bool)

(declare-fun res!546706 () Bool)

(assert (=> b!1215819 (=> (not res!546706) (not e!780288))))

(declare-fun isEmpty!7373 (List!12456) Bool)

(assert (=> b!1215819 (= res!546706 (not (isEmpty!7373 rules!2728)))))

(declare-fun b!1215820 () Bool)

(declare-fun res!546707 () Bool)

(assert (=> b!1215820 (=> (not res!546707) (not e!780288))))

(declare-fun rulesInvariant!1702 (LexerInterface!1828 List!12456) Bool)

(assert (=> b!1215820 (= res!546707 (rulesInvariant!1702 thiss!20528 rules!2728))))

(declare-fun b!1215821 () Bool)

(declare-fun tp!345103 () Bool)

(assert (=> b!1215821 (= e!780295 (and tp!345103 (inv!16587 (tag!2395 (rule!3558 (h!17800 tokens!556)))) (inv!16590 (transformation!2133 (rule!3558 (h!17800 tokens!556)))) e!780296))))

(assert (=> b!1215822 (= e!780294 (and tp!345105 tp!345104))))

(declare-fun b!1215823 () Bool)

(declare-fun res!546708 () Bool)

(assert (=> b!1215823 (=> (not res!546708) (not e!780288))))

(declare-datatypes ((tuple2!12268 0))(
  ( (tuple2!12269 (_1!6981 List!12457) (_2!6981 List!12455)) )
))
(declare-fun lexList!458 (LexerInterface!1828 List!12456 List!12455) tuple2!12268)

(assert (=> b!1215823 (= res!546708 (= (_1!6981 (lexList!458 thiss!20528 rules!2728 input!2346)) tokens!556))))

(assert (= (and start!108634 res!546709) b!1215819))

(assert (= (and b!1215819 res!546706) b!1215820))

(assert (= (and b!1215820 res!546707) b!1215823))

(assert (= (and b!1215823 res!546708) b!1215817))

(assert (= (and b!1215817 res!546704) b!1215818))

(assert (= (and b!1215818 res!546705) b!1215815))

(assert (= (and b!1215815 res!546703) b!1215810))

(assert (= b!1215809 b!1215822))

(assert (= b!1215811 b!1215809))

(assert (= (and start!108634 ((_ is Cons!12398) rules!2728)) b!1215811))

(assert (= (and start!108634 ((_ is Cons!12397) input!2346)) b!1215814))

(assert (= b!1215821 b!1215813))

(assert (= b!1215816 b!1215821))

(assert (= b!1215812 b!1215816))

(assert (= (and start!108634 ((_ is Cons!12399) tokens!556)) b!1215812))

(declare-fun m!1390315 () Bool)

(assert (=> b!1215820 m!1390315))

(declare-fun m!1390317 () Bool)

(assert (=> b!1215818 m!1390317))

(declare-fun m!1390319 () Bool)

(assert (=> b!1215818 m!1390319))

(declare-fun m!1390321 () Bool)

(assert (=> b!1215821 m!1390321))

(declare-fun m!1390323 () Bool)

(assert (=> b!1215821 m!1390323))

(declare-fun m!1390325 () Bool)

(assert (=> b!1215809 m!1390325))

(declare-fun m!1390327 () Bool)

(assert (=> b!1215809 m!1390327))

(declare-fun m!1390329 () Bool)

(assert (=> b!1215823 m!1390329))

(declare-fun m!1390331 () Bool)

(assert (=> b!1215816 m!1390331))

(declare-fun m!1390333 () Bool)

(assert (=> b!1215819 m!1390333))

(declare-fun m!1390335 () Bool)

(assert (=> b!1215815 m!1390335))

(declare-fun m!1390337 () Bool)

(assert (=> b!1215812 m!1390337))

(declare-fun m!1390339 () Bool)

(assert (=> b!1215810 m!1390339))

(declare-fun m!1390341 () Bool)

(assert (=> b!1215810 m!1390341))

(check-sat (not b!1215810) (not b!1215821) (not b!1215812) tp_is_empty!6327 (not b_next!29897) (not b!1215819) b_and!82563 b_and!82561 b_and!82567 (not b!1215823) (not b!1215820) (not b!1215811) (not b!1215816) (not b!1215814) b_and!82565 (not b_next!29901) (not b_next!29903) (not b!1215815) (not b_next!29899) (not b!1215809) (not b!1215818))
(check-sat b_and!82565 (not b_next!29897) b_and!82563 b_and!82561 (not b_next!29899) b_and!82567 (not b_next!29901) (not b_next!29903))
