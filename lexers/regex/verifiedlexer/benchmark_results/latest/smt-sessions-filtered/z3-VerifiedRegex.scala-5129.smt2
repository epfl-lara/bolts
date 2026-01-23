; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262624 () Bool)

(assert start!262624)

(declare-fun b!2705422 () Bool)

(declare-fun b_free!76377 () Bool)

(declare-fun b_next!77081 () Bool)

(assert (=> b!2705422 (= b_free!76377 (not b_next!77081))))

(declare-fun tp!855788 () Bool)

(declare-fun b_and!199809 () Bool)

(assert (=> b!2705422 (= tp!855788 b_and!199809)))

(declare-fun b_free!76379 () Bool)

(declare-fun b_next!77083 () Bool)

(assert (=> b!2705422 (= b_free!76379 (not b_next!77083))))

(declare-fun tp!855785 () Bool)

(declare-fun b_and!199811 () Bool)

(assert (=> b!2705422 (= tp!855785 b_and!199811)))

(declare-fun b!2705418 () Bool)

(declare-fun res!1136086 () Bool)

(declare-fun e!1705824 () Bool)

(assert (=> b!2705418 (=> (not res!1136086) (not e!1705824))))

(declare-datatypes ((List!31339 0))(
  ( (Nil!31239) (Cons!31239 (h!36659 (_ BitVec 16)) (t!225777 List!31339)) )
))
(declare-datatypes ((TokenValue!4993 0))(
  ( (FloatLiteralValue!9986 (text!35396 List!31339)) (TokenValueExt!4992 (__x!20121 Int)) (Broken!24965 (value!153560 List!31339)) (Object!5092) (End!4993) (Def!4993) (Underscore!4993) (Match!4993) (Else!4993) (Error!4993) (Case!4993) (If!4993) (Extends!4993) (Abstract!4993) (Class!4993) (Val!4993) (DelimiterValue!9986 (del!5053 List!31339)) (KeywordValue!4999 (value!153561 List!31339)) (CommentValue!9986 (value!153562 List!31339)) (WhitespaceValue!9986 (value!153563 List!31339)) (IndentationValue!4993 (value!153564 List!31339)) (String!34864) (Int32!4993) (Broken!24966 (value!153565 List!31339)) (Boolean!4994) (Unit!45294) (OperatorValue!4996 (op!5053 List!31339)) (IdentifierValue!9986 (value!153566 List!31339)) (IdentifierValue!9987 (value!153567 List!31339)) (WhitespaceValue!9987 (value!153568 List!31339)) (True!9986) (False!9986) (Broken!24967 (value!153569 List!31339)) (Broken!24968 (value!153570 List!31339)) (True!9987) (RightBrace!4993) (RightBracket!4993) (Colon!4993) (Null!4993) (Comma!4993) (LeftBracket!4993) (False!9987) (LeftBrace!4993) (ImaginaryLiteralValue!4993 (text!35397 List!31339)) (StringLiteralValue!14979 (value!153571 List!31339)) (EOFValue!4993 (value!153572 List!31339)) (IdentValue!4993 (value!153573 List!31339)) (DelimiterValue!9987 (value!153574 List!31339)) (DedentValue!4993 (value!153575 List!31339)) (NewLineValue!4993 (value!153576 List!31339)) (IntegerValue!14979 (value!153577 (_ BitVec 32)) (text!35398 List!31339)) (IntegerValue!14980 (value!153578 Int) (text!35399 List!31339)) (Times!4993) (Or!4993) (Equal!4993) (Minus!4993) (Broken!24969 (value!153579 List!31339)) (And!4993) (Div!4993) (LessEqual!4993) (Mod!4993) (Concat!12916) (Not!4993) (Plus!4993) (SpaceValue!4993 (value!153580 List!31339)) (IntegerValue!14981 (value!153581 Int) (text!35400 List!31339)) (StringLiteralValue!14980 (text!35401 List!31339)) (FloatLiteralValue!9987 (text!35402 List!31339)) (BytesLiteralValue!4993 (value!153582 List!31339)) (CommentValue!9987 (value!153583 List!31339)) (StringLiteralValue!14981 (value!153584 List!31339)) (ErrorTokenValue!4993 (msg!5054 List!31339)) )
))
(declare-datatypes ((C!16004 0))(
  ( (C!16005 (val!9936 Int)) )
))
(declare-datatypes ((Regex!7923 0))(
  ( (ElementMatch!7923 (c!436510 C!16004)) (Concat!12917 (regOne!16358 Regex!7923) (regTwo!16358 Regex!7923)) (EmptyExpr!7923) (Star!7923 (reg!8252 Regex!7923)) (EmptyLang!7923) (Union!7923 (regOne!16359 Regex!7923) (regTwo!16359 Regex!7923)) )
))
(declare-datatypes ((String!34865 0))(
  ( (String!34866 (value!153585 String)) )
))
(declare-datatypes ((List!31340 0))(
  ( (Nil!31240) (Cons!31240 (h!36660 C!16004) (t!225778 List!31340)) )
))
(declare-datatypes ((IArray!19543 0))(
  ( (IArray!19544 (innerList!9829 List!31340)) )
))
(declare-datatypes ((Conc!9769 0))(
  ( (Node!9769 (left!24028 Conc!9769) (right!24358 Conc!9769) (csize!19768 Int) (cheight!9980 Int)) (Leaf!14899 (xs!12817 IArray!19543) (csize!19769 Int)) (Empty!9769) )
))
(declare-datatypes ((BalanceConc!19152 0))(
  ( (BalanceConc!19153 (c!436511 Conc!9769)) )
))
(declare-datatypes ((TokenValueInjection!9426 0))(
  ( (TokenValueInjection!9427 (toValue!6733 Int) (toChars!6592 Int)) )
))
(declare-datatypes ((Rule!9342 0))(
  ( (Rule!9343 (regex!4771 Regex!7923) (tag!5275 String!34865) (isSeparator!4771 Bool) (transformation!4771 TokenValueInjection!9426)) )
))
(declare-datatypes ((Token!9004 0))(
  ( (Token!9005 (value!153586 TokenValue!4993) (rule!7191 Rule!9342) (size!24105 Int) (originalCharacters!5533 List!31340)) )
))
(declare-datatypes ((List!31341 0))(
  ( (Nil!31241) (Cons!31241 (h!36661 Token!9004) (t!225779 List!31341)) )
))
(declare-datatypes ((IArray!19545 0))(
  ( (IArray!19546 (innerList!9830 List!31341)) )
))
(declare-datatypes ((Conc!9770 0))(
  ( (Node!9770 (left!24029 Conc!9770) (right!24359 Conc!9770) (csize!19770 Int) (cheight!9981 Int)) (Leaf!14900 (xs!12818 IArray!19545) (csize!19771 Int)) (Empty!9770) )
))
(declare-datatypes ((BalanceConc!19154 0))(
  ( (BalanceConc!19155 (c!436512 Conc!9770)) )
))
(declare-datatypes ((tuple2!30858 0))(
  ( (tuple2!30859 (_1!18061 BalanceConc!19154) (_2!18061 BalanceConc!19152)) )
))
(declare-fun lt!956709 () tuple2!30858)

(declare-fun lt!956711 () tuple2!30858)

(declare-fun list!11792 (BalanceConc!19152) List!31340)

(assert (=> b!2705418 (= res!1136086 (= (list!11792 (_2!18061 lt!956709)) (list!11792 (_2!18061 lt!956711))))))

(declare-fun b!2705419 () Bool)

(declare-fun e!1705823 () Bool)

(assert (=> b!2705419 (= e!1705823 e!1705824)))

(declare-fun res!1136084 () Bool)

(assert (=> b!2705419 (=> (not res!1136084) (not e!1705824))))

(declare-fun acc!331 () BalanceConc!19154)

(declare-fun list!11793 (BalanceConc!19154) List!31341)

(declare-fun ++!7690 (BalanceConc!19154 BalanceConc!19154) BalanceConc!19154)

(assert (=> b!2705419 (= res!1136084 (= (list!11793 (_1!18061 lt!956709)) (list!11793 (++!7690 acc!331 (_1!18061 lt!956711)))))))

(declare-fun input!603 () BalanceConc!19152)

(declare-datatypes ((LexerInterface!4367 0))(
  ( (LexerInterfaceExt!4364 (__x!20122 Int)) (Lexer!4365) )
))
(declare-fun thiss!11556 () LexerInterface!4367)

(declare-datatypes ((List!31342 0))(
  ( (Nil!31242) (Cons!31242 (h!36662 Rule!9342) (t!225780 List!31342)) )
))
(declare-fun rules!1182 () List!31342)

(declare-fun lexRec!627 (LexerInterface!4367 List!31342 BalanceConc!19152) tuple2!30858)

(assert (=> b!2705419 (= lt!956711 (lexRec!627 thiss!11556 rules!1182 input!603))))

(declare-fun totalInput!328 () BalanceConc!19152)

(assert (=> b!2705419 (= lt!956709 (lexRec!627 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2705420 () Bool)

(declare-fun e!1705820 () Bool)

(declare-fun tp!855789 () Bool)

(declare-fun inv!42338 (Conc!9770) Bool)

(assert (=> b!2705420 (= e!1705820 (and (inv!42338 (c!436512 acc!331)) tp!855789))))

(declare-fun b!2705421 () Bool)

(declare-fun res!1136083 () Bool)

(assert (=> b!2705421 (=> (not res!1136083) (not e!1705823))))

(declare-fun lt!956710 () tuple2!30858)

(declare-fun isEmpty!17785 (List!31340) Bool)

(assert (=> b!2705421 (= res!1136083 (isEmpty!17785 (list!11792 (_2!18061 lt!956710))))))

(declare-fun b!2705423 () Bool)

(declare-fun e!1705816 () Bool)

(declare-fun tp!855787 () Bool)

(declare-fun e!1705817 () Bool)

(declare-fun inv!42332 (String!34865) Bool)

(declare-fun inv!42339 (TokenValueInjection!9426) Bool)

(assert (=> b!2705423 (= e!1705816 (and tp!855787 (inv!42332 (tag!5275 (h!36662 rules!1182))) (inv!42339 (transformation!4771 (h!36662 rules!1182))) e!1705817))))

(declare-fun b!2705424 () Bool)

(declare-fun e!1705825 () Bool)

(declare-fun treated!9 () BalanceConc!19152)

(declare-fun tp!855786 () Bool)

(declare-fun inv!42340 (Conc!9769) Bool)

(assert (=> b!2705424 (= e!1705825 (and (inv!42340 (c!436511 treated!9)) tp!855786))))

(declare-fun b!2705425 () Bool)

(declare-fun res!1136082 () Bool)

(declare-fun e!1705821 () Bool)

(assert (=> b!2705425 (=> (not res!1136082) (not e!1705821))))

(declare-fun isEmpty!17786 (List!31342) Bool)

(assert (=> b!2705425 (= res!1136082 (not (isEmpty!17786 rules!1182)))))

(declare-fun b!2705426 () Bool)

(declare-fun rulesValidInductive!1657 (LexerInterface!4367 List!31342) Bool)

(assert (=> b!2705426 (= e!1705824 (not (rulesValidInductive!1657 thiss!11556 rules!1182)))))

(declare-fun b!2705427 () Bool)

(declare-fun res!1136081 () Bool)

(assert (=> b!2705427 (=> (not res!1136081) (not e!1705821))))

(declare-fun ++!7691 (List!31340 List!31340) List!31340)

(assert (=> b!2705427 (= res!1136081 (= (list!11792 totalInput!328) (++!7691 (list!11792 treated!9) (list!11792 input!603))))))

(declare-fun b!2705428 () Bool)

(assert (=> b!2705428 (= e!1705821 e!1705823)))

(declare-fun res!1136085 () Bool)

(assert (=> b!2705428 (=> (not res!1136085) (not e!1705823))))

(assert (=> b!2705428 (= res!1136085 (= (list!11793 (_1!18061 lt!956710)) (list!11793 acc!331)))))

(assert (=> b!2705428 (= lt!956710 (lexRec!627 thiss!11556 rules!1182 treated!9))))

(declare-fun res!1136080 () Bool)

(assert (=> start!262624 (=> (not res!1136080) (not e!1705821))))

(get-info :version)

(assert (=> start!262624 (= res!1136080 ((_ is Lexer!4365) thiss!11556))))

(assert (=> start!262624 e!1705821))

(declare-fun inv!42341 (BalanceConc!19152) Bool)

(assert (=> start!262624 (and (inv!42341 treated!9) e!1705825)))

(declare-fun e!1705818 () Bool)

(assert (=> start!262624 (and (inv!42341 input!603) e!1705818)))

(assert (=> start!262624 true))

(declare-fun e!1705819 () Bool)

(assert (=> start!262624 e!1705819))

(declare-fun e!1705815 () Bool)

(assert (=> start!262624 (and (inv!42341 totalInput!328) e!1705815)))

(declare-fun inv!42342 (BalanceConc!19154) Bool)

(assert (=> start!262624 (and (inv!42342 acc!331) e!1705820)))

(assert (=> b!2705422 (= e!1705817 (and tp!855788 tp!855785))))

(declare-fun b!2705429 () Bool)

(declare-fun tp!855791 () Bool)

(assert (=> b!2705429 (= e!1705815 (and (inv!42340 (c!436511 totalInput!328)) tp!855791))))

(declare-fun b!2705430 () Bool)

(declare-fun res!1136087 () Bool)

(assert (=> b!2705430 (=> (not res!1136087) (not e!1705821))))

(declare-fun rulesInvariant!3852 (LexerInterface!4367 List!31342) Bool)

(assert (=> b!2705430 (= res!1136087 (rulesInvariant!3852 thiss!11556 rules!1182))))

(declare-fun b!2705431 () Bool)

(declare-fun tp!855790 () Bool)

(assert (=> b!2705431 (= e!1705818 (and (inv!42340 (c!436511 input!603)) tp!855790))))

(declare-fun b!2705432 () Bool)

(declare-fun tp!855784 () Bool)

(assert (=> b!2705432 (= e!1705819 (and e!1705816 tp!855784))))

(assert (= (and start!262624 res!1136080) b!2705425))

(assert (= (and b!2705425 res!1136082) b!2705430))

(assert (= (and b!2705430 res!1136087) b!2705427))

(assert (= (and b!2705427 res!1136081) b!2705428))

(assert (= (and b!2705428 res!1136085) b!2705421))

(assert (= (and b!2705421 res!1136083) b!2705419))

(assert (= (and b!2705419 res!1136084) b!2705418))

(assert (= (and b!2705418 res!1136086) b!2705426))

(assert (= start!262624 b!2705424))

(assert (= start!262624 b!2705431))

(assert (= b!2705423 b!2705422))

(assert (= b!2705432 b!2705423))

(assert (= (and start!262624 ((_ is Cons!31242) rules!1182)) b!2705432))

(assert (= start!262624 b!2705429))

(assert (= start!262624 b!2705420))

(declare-fun m!3095253 () Bool)

(assert (=> b!2705428 m!3095253))

(declare-fun m!3095255 () Bool)

(assert (=> b!2705428 m!3095255))

(declare-fun m!3095257 () Bool)

(assert (=> b!2705428 m!3095257))

(declare-fun m!3095259 () Bool)

(assert (=> b!2705431 m!3095259))

(declare-fun m!3095261 () Bool)

(assert (=> b!2705420 m!3095261))

(declare-fun m!3095263 () Bool)

(assert (=> b!2705430 m!3095263))

(declare-fun m!3095265 () Bool)

(assert (=> b!2705423 m!3095265))

(declare-fun m!3095267 () Bool)

(assert (=> b!2705423 m!3095267))

(declare-fun m!3095269 () Bool)

(assert (=> b!2705427 m!3095269))

(declare-fun m!3095271 () Bool)

(assert (=> b!2705427 m!3095271))

(declare-fun m!3095273 () Bool)

(assert (=> b!2705427 m!3095273))

(assert (=> b!2705427 m!3095271))

(assert (=> b!2705427 m!3095273))

(declare-fun m!3095275 () Bool)

(assert (=> b!2705427 m!3095275))

(declare-fun m!3095277 () Bool)

(assert (=> b!2705421 m!3095277))

(assert (=> b!2705421 m!3095277))

(declare-fun m!3095279 () Bool)

(assert (=> b!2705421 m!3095279))

(declare-fun m!3095281 () Bool)

(assert (=> b!2705429 m!3095281))

(declare-fun m!3095283 () Bool)

(assert (=> b!2705425 m!3095283))

(declare-fun m!3095285 () Bool)

(assert (=> b!2705426 m!3095285))

(declare-fun m!3095287 () Bool)

(assert (=> b!2705424 m!3095287))

(declare-fun m!3095289 () Bool)

(assert (=> b!2705418 m!3095289))

(declare-fun m!3095291 () Bool)

(assert (=> b!2705418 m!3095291))

(declare-fun m!3095293 () Bool)

(assert (=> b!2705419 m!3095293))

(declare-fun m!3095295 () Bool)

(assert (=> b!2705419 m!3095295))

(declare-fun m!3095297 () Bool)

(assert (=> b!2705419 m!3095297))

(declare-fun m!3095299 () Bool)

(assert (=> b!2705419 m!3095299))

(assert (=> b!2705419 m!3095293))

(declare-fun m!3095301 () Bool)

(assert (=> b!2705419 m!3095301))

(declare-fun m!3095303 () Bool)

(assert (=> start!262624 m!3095303))

(declare-fun m!3095305 () Bool)

(assert (=> start!262624 m!3095305))

(declare-fun m!3095307 () Bool)

(assert (=> start!262624 m!3095307))

(declare-fun m!3095309 () Bool)

(assert (=> start!262624 m!3095309))

(check-sat (not b!2705429) (not b!2705426) (not b!2705430) (not b!2705431) (not b!2705421) (not b!2705427) (not b!2705419) (not b!2705432) (not b_next!77081) (not start!262624) (not b!2705420) b_and!199809 (not b!2705424) (not b!2705425) b_and!199811 (not b_next!77083) (not b!2705428) (not b!2705423) (not b!2705418))
(check-sat b_and!199811 b_and!199809 (not b_next!77083) (not b_next!77081))
(get-model)

(declare-fun d!777186 () Bool)

(declare-fun list!11796 (Conc!9769) List!31340)

(assert (=> d!777186 (= (list!11792 totalInput!328) (list!11796 (c!436511 totalInput!328)))))

(declare-fun bs!487292 () Bool)

(assert (= bs!487292 d!777186))

(declare-fun m!3095317 () Bool)

(assert (=> bs!487292 m!3095317))

(assert (=> b!2705427 d!777186))

(declare-fun d!777194 () Bool)

(declare-fun e!1705837 () Bool)

(assert (=> d!777194 e!1705837))

(declare-fun res!1136095 () Bool)

(assert (=> d!777194 (=> (not res!1136095) (not e!1705837))))

(declare-fun lt!956714 () List!31340)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4419 (List!31340) (InoxSet C!16004))

(assert (=> d!777194 (= res!1136095 (= (content!4419 lt!956714) ((_ map or) (content!4419 (list!11792 treated!9)) (content!4419 (list!11792 input!603)))))))

(declare-fun e!1705836 () List!31340)

(assert (=> d!777194 (= lt!956714 e!1705836)))

(declare-fun c!436518 () Bool)

(assert (=> d!777194 (= c!436518 ((_ is Nil!31240) (list!11792 treated!9)))))

(assert (=> d!777194 (= (++!7691 (list!11792 treated!9) (list!11792 input!603)) lt!956714)))

(declare-fun b!2705453 () Bool)

(assert (=> b!2705453 (= e!1705837 (or (not (= (list!11792 input!603) Nil!31240)) (= lt!956714 (list!11792 treated!9))))))

(declare-fun b!2705452 () Bool)

(declare-fun res!1136096 () Bool)

(assert (=> b!2705452 (=> (not res!1136096) (not e!1705837))))

(declare-fun size!24109 (List!31340) Int)

(assert (=> b!2705452 (= res!1136096 (= (size!24109 lt!956714) (+ (size!24109 (list!11792 treated!9)) (size!24109 (list!11792 input!603)))))))

(declare-fun b!2705450 () Bool)

(assert (=> b!2705450 (= e!1705836 (list!11792 input!603))))

(declare-fun b!2705451 () Bool)

(assert (=> b!2705451 (= e!1705836 (Cons!31240 (h!36660 (list!11792 treated!9)) (++!7691 (t!225778 (list!11792 treated!9)) (list!11792 input!603))))))

(assert (= (and d!777194 c!436518) b!2705450))

(assert (= (and d!777194 (not c!436518)) b!2705451))

(assert (= (and d!777194 res!1136095) b!2705452))

(assert (= (and b!2705452 res!1136096) b!2705453))

(declare-fun m!3095331 () Bool)

(assert (=> d!777194 m!3095331))

(assert (=> d!777194 m!3095271))

(declare-fun m!3095333 () Bool)

(assert (=> d!777194 m!3095333))

(assert (=> d!777194 m!3095273))

(declare-fun m!3095335 () Bool)

(assert (=> d!777194 m!3095335))

(declare-fun m!3095337 () Bool)

(assert (=> b!2705452 m!3095337))

(assert (=> b!2705452 m!3095271))

(declare-fun m!3095339 () Bool)

(assert (=> b!2705452 m!3095339))

(assert (=> b!2705452 m!3095273))

(declare-fun m!3095341 () Bool)

(assert (=> b!2705452 m!3095341))

(assert (=> b!2705451 m!3095273))

(declare-fun m!3095343 () Bool)

(assert (=> b!2705451 m!3095343))

(assert (=> b!2705427 d!777194))

(declare-fun d!777210 () Bool)

(assert (=> d!777210 (= (list!11792 treated!9) (list!11796 (c!436511 treated!9)))))

(declare-fun bs!487297 () Bool)

(assert (= bs!487297 d!777210))

(declare-fun m!3095345 () Bool)

(assert (=> bs!487297 m!3095345))

(assert (=> b!2705427 d!777210))

(declare-fun d!777212 () Bool)

(assert (=> d!777212 (= (list!11792 input!603) (list!11796 (c!436511 input!603)))))

(declare-fun bs!487298 () Bool)

(assert (= bs!487298 d!777212))

(declare-fun m!3095347 () Bool)

(assert (=> bs!487298 m!3095347))

(assert (=> b!2705427 d!777212))

(declare-fun d!777214 () Bool)

(assert (=> d!777214 true))

(declare-fun lt!956737 () Bool)

(declare-fun lambda!100455 () Int)

(declare-fun forall!6555 (List!31342 Int) Bool)

(assert (=> d!777214 (= lt!956737 (forall!6555 rules!1182 lambda!100455))))

(declare-fun e!1705884 () Bool)

(assert (=> d!777214 (= lt!956737 e!1705884)))

(declare-fun res!1136144 () Bool)

(assert (=> d!777214 (=> res!1136144 e!1705884)))

(assert (=> d!777214 (= res!1136144 (not ((_ is Cons!31242) rules!1182)))))

(assert (=> d!777214 (= (rulesValidInductive!1657 thiss!11556 rules!1182) lt!956737)))

(declare-fun b!2705529 () Bool)

(declare-fun e!1705883 () Bool)

(assert (=> b!2705529 (= e!1705884 e!1705883)))

(declare-fun res!1136145 () Bool)

(assert (=> b!2705529 (=> (not res!1136145) (not e!1705883))))

(declare-fun ruleValid!1563 (LexerInterface!4367 Rule!9342) Bool)

(assert (=> b!2705529 (= res!1136145 (ruleValid!1563 thiss!11556 (h!36662 rules!1182)))))

(declare-fun b!2705530 () Bool)

(assert (=> b!2705530 (= e!1705883 (rulesValidInductive!1657 thiss!11556 (t!225780 rules!1182)))))

(assert (= (and d!777214 (not res!1136144)) b!2705529))

(assert (= (and b!2705529 res!1136145) b!2705530))

(declare-fun m!3095445 () Bool)

(assert (=> d!777214 m!3095445))

(declare-fun m!3095447 () Bool)

(assert (=> b!2705529 m!3095447))

(declare-fun m!3095449 () Bool)

(assert (=> b!2705530 m!3095449))

(assert (=> b!2705426 d!777214))

(declare-fun d!777242 () Bool)

(assert (=> d!777242 (= (isEmpty!17786 rules!1182) ((_ is Nil!31242) rules!1182))))

(assert (=> b!2705425 d!777242))

(declare-fun d!777244 () Bool)

(declare-fun isBalanced!2955 (Conc!9769) Bool)

(assert (=> d!777244 (= (inv!42341 treated!9) (isBalanced!2955 (c!436511 treated!9)))))

(declare-fun bs!487304 () Bool)

(assert (= bs!487304 d!777244))

(declare-fun m!3095451 () Bool)

(assert (=> bs!487304 m!3095451))

(assert (=> start!262624 d!777244))

(declare-fun d!777246 () Bool)

(assert (=> d!777246 (= (inv!42341 input!603) (isBalanced!2955 (c!436511 input!603)))))

(declare-fun bs!487305 () Bool)

(assert (= bs!487305 d!777246))

(declare-fun m!3095453 () Bool)

(assert (=> bs!487305 m!3095453))

(assert (=> start!262624 d!777246))

(declare-fun d!777248 () Bool)

(assert (=> d!777248 (= (inv!42341 totalInput!328) (isBalanced!2955 (c!436511 totalInput!328)))))

(declare-fun bs!487306 () Bool)

(assert (= bs!487306 d!777248))

(declare-fun m!3095455 () Bool)

(assert (=> bs!487306 m!3095455))

(assert (=> start!262624 d!777248))

(declare-fun d!777250 () Bool)

(declare-fun isBalanced!2956 (Conc!9770) Bool)

(assert (=> d!777250 (= (inv!42342 acc!331) (isBalanced!2956 (c!436512 acc!331)))))

(declare-fun bs!487307 () Bool)

(assert (= bs!487307 d!777250))

(declare-fun m!3095457 () Bool)

(assert (=> bs!487307 m!3095457))

(assert (=> start!262624 d!777250))

(declare-fun d!777252 () Bool)

(declare-fun c!436539 () Bool)

(assert (=> d!777252 (= c!436539 ((_ is Node!9769) (c!436511 treated!9)))))

(declare-fun e!1705889 () Bool)

(assert (=> d!777252 (= (inv!42340 (c!436511 treated!9)) e!1705889)))

(declare-fun b!2705539 () Bool)

(declare-fun inv!42349 (Conc!9769) Bool)

(assert (=> b!2705539 (= e!1705889 (inv!42349 (c!436511 treated!9)))))

(declare-fun b!2705540 () Bool)

(declare-fun e!1705890 () Bool)

(assert (=> b!2705540 (= e!1705889 e!1705890)))

(declare-fun res!1136148 () Bool)

(assert (=> b!2705540 (= res!1136148 (not ((_ is Leaf!14899) (c!436511 treated!9))))))

(assert (=> b!2705540 (=> res!1136148 e!1705890)))

(declare-fun b!2705541 () Bool)

(declare-fun inv!42350 (Conc!9769) Bool)

(assert (=> b!2705541 (= e!1705890 (inv!42350 (c!436511 treated!9)))))

(assert (= (and d!777252 c!436539) b!2705539))

(assert (= (and d!777252 (not c!436539)) b!2705540))

(assert (= (and b!2705540 (not res!1136148)) b!2705541))

(declare-fun m!3095459 () Bool)

(assert (=> b!2705539 m!3095459))

(declare-fun m!3095461 () Bool)

(assert (=> b!2705541 m!3095461))

(assert (=> b!2705424 d!777252))

(declare-fun d!777254 () Bool)

(assert (=> d!777254 (= (inv!42332 (tag!5275 (h!36662 rules!1182))) (= (mod (str.len (value!153585 (tag!5275 (h!36662 rules!1182)))) 2) 0))))

(assert (=> b!2705423 d!777254))

(declare-fun d!777256 () Bool)

(declare-fun res!1136151 () Bool)

(declare-fun e!1705893 () Bool)

(assert (=> d!777256 (=> (not res!1136151) (not e!1705893))))

(declare-fun semiInverseModEq!1968 (Int Int) Bool)

(assert (=> d!777256 (= res!1136151 (semiInverseModEq!1968 (toChars!6592 (transformation!4771 (h!36662 rules!1182))) (toValue!6733 (transformation!4771 (h!36662 rules!1182)))))))

(assert (=> d!777256 (= (inv!42339 (transformation!4771 (h!36662 rules!1182))) e!1705893)))

(declare-fun b!2705544 () Bool)

(declare-fun equivClasses!1869 (Int Int) Bool)

(assert (=> b!2705544 (= e!1705893 (equivClasses!1869 (toChars!6592 (transformation!4771 (h!36662 rules!1182))) (toValue!6733 (transformation!4771 (h!36662 rules!1182)))))))

(assert (= (and d!777256 res!1136151) b!2705544))

(declare-fun m!3095463 () Bool)

(assert (=> d!777256 m!3095463))

(declare-fun m!3095465 () Bool)

(assert (=> b!2705544 m!3095465))

(assert (=> b!2705423 d!777256))

(declare-fun d!777258 () Bool)

(assert (=> d!777258 (= (isEmpty!17785 (list!11792 (_2!18061 lt!956710))) ((_ is Nil!31240) (list!11792 (_2!18061 lt!956710))))))

(assert (=> b!2705421 d!777258))

(declare-fun d!777260 () Bool)

(assert (=> d!777260 (= (list!11792 (_2!18061 lt!956710)) (list!11796 (c!436511 (_2!18061 lt!956710))))))

(declare-fun bs!487308 () Bool)

(assert (= bs!487308 d!777260))

(declare-fun m!3095467 () Bool)

(assert (=> bs!487308 m!3095467))

(assert (=> b!2705421 d!777260))

(declare-fun d!777262 () Bool)

(declare-fun c!436540 () Bool)

(assert (=> d!777262 (= c!436540 ((_ is Node!9769) (c!436511 input!603)))))

(declare-fun e!1705894 () Bool)

(assert (=> d!777262 (= (inv!42340 (c!436511 input!603)) e!1705894)))

(declare-fun b!2705545 () Bool)

(assert (=> b!2705545 (= e!1705894 (inv!42349 (c!436511 input!603)))))

(declare-fun b!2705546 () Bool)

(declare-fun e!1705895 () Bool)

(assert (=> b!2705546 (= e!1705894 e!1705895)))

(declare-fun res!1136152 () Bool)

(assert (=> b!2705546 (= res!1136152 (not ((_ is Leaf!14899) (c!436511 input!603))))))

(assert (=> b!2705546 (=> res!1136152 e!1705895)))

(declare-fun b!2705547 () Bool)

(assert (=> b!2705547 (= e!1705895 (inv!42350 (c!436511 input!603)))))

(assert (= (and d!777262 c!436540) b!2705545))

(assert (= (and d!777262 (not c!436540)) b!2705546))

(assert (= (and b!2705546 (not res!1136152)) b!2705547))

(declare-fun m!3095469 () Bool)

(assert (=> b!2705545 m!3095469))

(declare-fun m!3095471 () Bool)

(assert (=> b!2705547 m!3095471))

(assert (=> b!2705431 d!777262))

(declare-fun d!777264 () Bool)

(declare-fun c!436543 () Bool)

(assert (=> d!777264 (= c!436543 ((_ is Node!9770) (c!436512 acc!331)))))

(declare-fun e!1705900 () Bool)

(assert (=> d!777264 (= (inv!42338 (c!436512 acc!331)) e!1705900)))

(declare-fun b!2705554 () Bool)

(declare-fun inv!42351 (Conc!9770) Bool)

(assert (=> b!2705554 (= e!1705900 (inv!42351 (c!436512 acc!331)))))

(declare-fun b!2705555 () Bool)

(declare-fun e!1705901 () Bool)

(assert (=> b!2705555 (= e!1705900 e!1705901)))

(declare-fun res!1136155 () Bool)

(assert (=> b!2705555 (= res!1136155 (not ((_ is Leaf!14900) (c!436512 acc!331))))))

(assert (=> b!2705555 (=> res!1136155 e!1705901)))

(declare-fun b!2705556 () Bool)

(declare-fun inv!42352 (Conc!9770) Bool)

(assert (=> b!2705556 (= e!1705901 (inv!42352 (c!436512 acc!331)))))

(assert (= (and d!777264 c!436543) b!2705554))

(assert (= (and d!777264 (not c!436543)) b!2705555))

(assert (= (and b!2705555 (not res!1136155)) b!2705556))

(declare-fun m!3095473 () Bool)

(assert (=> b!2705554 m!3095473))

(declare-fun m!3095475 () Bool)

(assert (=> b!2705556 m!3095475))

(assert (=> b!2705420 d!777264))

(declare-fun d!777266 () Bool)

(declare-fun res!1136158 () Bool)

(declare-fun e!1705904 () Bool)

(assert (=> d!777266 (=> (not res!1136158) (not e!1705904))))

(declare-fun rulesValid!1774 (LexerInterface!4367 List!31342) Bool)

(assert (=> d!777266 (= res!1136158 (rulesValid!1774 thiss!11556 rules!1182))))

(assert (=> d!777266 (= (rulesInvariant!3852 thiss!11556 rules!1182) e!1705904)))

(declare-fun b!2705559 () Bool)

(declare-datatypes ((List!31344 0))(
  ( (Nil!31244) (Cons!31244 (h!36664 String!34865) (t!225782 List!31344)) )
))
(declare-fun noDuplicateTag!1770 (LexerInterface!4367 List!31342 List!31344) Bool)

(assert (=> b!2705559 (= e!1705904 (noDuplicateTag!1770 thiss!11556 rules!1182 Nil!31244))))

(assert (= (and d!777266 res!1136158) b!2705559))

(declare-fun m!3095477 () Bool)

(assert (=> d!777266 m!3095477))

(declare-fun m!3095479 () Bool)

(assert (=> b!2705559 m!3095479))

(assert (=> b!2705430 d!777266))

(declare-fun d!777268 () Bool)

(declare-fun list!11797 (Conc!9770) List!31341)

(assert (=> d!777268 (= (list!11793 (++!7690 acc!331 (_1!18061 lt!956711))) (list!11797 (c!436512 (++!7690 acc!331 (_1!18061 lt!956711)))))))

(declare-fun bs!487309 () Bool)

(assert (= bs!487309 d!777268))

(declare-fun m!3095481 () Bool)

(assert (=> bs!487309 m!3095481))

(assert (=> b!2705419 d!777268))

(declare-fun b!2705644 () Bool)

(declare-fun lt!956748 () tuple2!30858)

(declare-fun e!1705956 () Bool)

(declare-datatypes ((tuple2!30864 0))(
  ( (tuple2!30865 (_1!18064 List!31341) (_2!18064 List!31340)) )
))
(declare-fun lexList!1204 (LexerInterface!4367 List!31342 List!31340) tuple2!30864)

(assert (=> b!2705644 (= e!1705956 (= (list!11792 (_2!18061 lt!956748)) (_2!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 input!603)))))))

(declare-fun b!2705646 () Bool)

(declare-fun e!1705954 () Bool)

(assert (=> b!2705646 (= e!1705954 (= (list!11792 (_2!18061 lt!956748)) (list!11792 input!603)))))

(declare-fun b!2705647 () Bool)

(declare-fun e!1705955 () tuple2!30858)

(assert (=> b!2705647 (= e!1705955 (tuple2!30859 (BalanceConc!19155 Empty!9770) input!603))))

(declare-fun b!2705648 () Bool)

(declare-fun res!1136174 () Bool)

(assert (=> b!2705648 (=> (not res!1136174) (not e!1705956))))

(assert (=> b!2705648 (= res!1136174 (= (list!11793 (_1!18061 lt!956748)) (_1!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 input!603)))))))

(declare-fun b!2705649 () Bool)

(declare-fun e!1705957 () Bool)

(assert (=> b!2705649 (= e!1705954 e!1705957)))

(declare-fun res!1136172 () Bool)

(declare-fun size!24110 (BalanceConc!19152) Int)

(assert (=> b!2705649 (= res!1136172 (< (size!24110 (_2!18061 lt!956748)) (size!24110 input!603)))))

(assert (=> b!2705649 (=> (not res!1136172) (not e!1705957))))

(declare-fun b!2705650 () Bool)

(declare-fun lt!956750 () tuple2!30858)

(declare-datatypes ((tuple2!30866 0))(
  ( (tuple2!30867 (_1!18065 Token!9004) (_2!18065 BalanceConc!19152)) )
))
(declare-datatypes ((Option!6157 0))(
  ( (None!6156) (Some!6156 (v!32966 tuple2!30866)) )
))
(declare-fun lt!956749 () Option!6157)

(declare-fun prepend!1095 (BalanceConc!19154 Token!9004) BalanceConc!19154)

(assert (=> b!2705650 (= e!1705955 (tuple2!30859 (prepend!1095 (_1!18061 lt!956750) (_1!18065 (v!32966 lt!956749))) (_2!18061 lt!956750)))))

(assert (=> b!2705650 (= lt!956750 (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956749))))))

(declare-fun b!2705645 () Bool)

(declare-fun isEmpty!17788 (BalanceConc!19154) Bool)

(assert (=> b!2705645 (= e!1705957 (not (isEmpty!17788 (_1!18061 lt!956748))))))

(declare-fun d!777270 () Bool)

(assert (=> d!777270 e!1705956))

(declare-fun res!1136173 () Bool)

(assert (=> d!777270 (=> (not res!1136173) (not e!1705956))))

(assert (=> d!777270 (= res!1136173 e!1705954)))

(declare-fun c!436553 () Bool)

(declare-fun size!24111 (BalanceConc!19154) Int)

(assert (=> d!777270 (= c!436553 (> (size!24111 (_1!18061 lt!956748)) 0))))

(assert (=> d!777270 (= lt!956748 e!1705955)))

(declare-fun c!436554 () Bool)

(assert (=> d!777270 (= c!436554 ((_ is Some!6156) lt!956749))))

(declare-fun maxPrefixZipperSequence!1017 (LexerInterface!4367 List!31342 BalanceConc!19152) Option!6157)

(assert (=> d!777270 (= lt!956749 (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 input!603))))

(assert (=> d!777270 (= (lexRec!627 thiss!11556 rules!1182 input!603) lt!956748)))

(assert (= (and d!777270 c!436554) b!2705650))

(assert (= (and d!777270 (not c!436554)) b!2705647))

(assert (= (and d!777270 c!436553) b!2705649))

(assert (= (and d!777270 (not c!436553)) b!2705646))

(assert (= (and b!2705649 res!1136172) b!2705645))

(assert (= (and d!777270 res!1136173) b!2705648))

(assert (= (and b!2705648 res!1136174) b!2705644))

(declare-fun m!3095549 () Bool)

(assert (=> d!777270 m!3095549))

(declare-fun m!3095551 () Bool)

(assert (=> d!777270 m!3095551))

(declare-fun m!3095553 () Bool)

(assert (=> b!2705649 m!3095553))

(declare-fun m!3095555 () Bool)

(assert (=> b!2705649 m!3095555))

(declare-fun m!3095557 () Bool)

(assert (=> b!2705646 m!3095557))

(assert (=> b!2705646 m!3095273))

(declare-fun m!3095559 () Bool)

(assert (=> b!2705648 m!3095559))

(assert (=> b!2705648 m!3095273))

(assert (=> b!2705648 m!3095273))

(declare-fun m!3095561 () Bool)

(assert (=> b!2705648 m!3095561))

(declare-fun m!3095563 () Bool)

(assert (=> b!2705645 m!3095563))

(declare-fun m!3095565 () Bool)

(assert (=> b!2705650 m!3095565))

(declare-fun m!3095567 () Bool)

(assert (=> b!2705650 m!3095567))

(assert (=> b!2705644 m!3095557))

(assert (=> b!2705644 m!3095273))

(assert (=> b!2705644 m!3095273))

(assert (=> b!2705644 m!3095561))

(assert (=> b!2705419 d!777270))

(declare-fun b!2705651 () Bool)

(declare-fun e!1705960 () Bool)

(declare-fun lt!956751 () tuple2!30858)

(assert (=> b!2705651 (= e!1705960 (= (list!11792 (_2!18061 lt!956751)) (_2!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 totalInput!328)))))))

(declare-fun b!2705653 () Bool)

(declare-fun e!1705958 () Bool)

(assert (=> b!2705653 (= e!1705958 (= (list!11792 (_2!18061 lt!956751)) (list!11792 totalInput!328)))))

(declare-fun b!2705654 () Bool)

(declare-fun e!1705959 () tuple2!30858)

(assert (=> b!2705654 (= e!1705959 (tuple2!30859 (BalanceConc!19155 Empty!9770) totalInput!328))))

(declare-fun b!2705655 () Bool)

(declare-fun res!1136177 () Bool)

(assert (=> b!2705655 (=> (not res!1136177) (not e!1705960))))

(assert (=> b!2705655 (= res!1136177 (= (list!11793 (_1!18061 lt!956751)) (_1!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 totalInput!328)))))))

(declare-fun b!2705656 () Bool)

(declare-fun e!1705961 () Bool)

(assert (=> b!2705656 (= e!1705958 e!1705961)))

(declare-fun res!1136175 () Bool)

(assert (=> b!2705656 (= res!1136175 (< (size!24110 (_2!18061 lt!956751)) (size!24110 totalInput!328)))))

(assert (=> b!2705656 (=> (not res!1136175) (not e!1705961))))

(declare-fun b!2705657 () Bool)

(declare-fun lt!956753 () tuple2!30858)

(declare-fun lt!956752 () Option!6157)

(assert (=> b!2705657 (= e!1705959 (tuple2!30859 (prepend!1095 (_1!18061 lt!956753) (_1!18065 (v!32966 lt!956752))) (_2!18061 lt!956753)))))

(assert (=> b!2705657 (= lt!956753 (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956752))))))

(declare-fun b!2705652 () Bool)

(assert (=> b!2705652 (= e!1705961 (not (isEmpty!17788 (_1!18061 lt!956751))))))

(declare-fun d!777282 () Bool)

(assert (=> d!777282 e!1705960))

(declare-fun res!1136176 () Bool)

(assert (=> d!777282 (=> (not res!1136176) (not e!1705960))))

(assert (=> d!777282 (= res!1136176 e!1705958)))

(declare-fun c!436555 () Bool)

(assert (=> d!777282 (= c!436555 (> (size!24111 (_1!18061 lt!956751)) 0))))

(assert (=> d!777282 (= lt!956751 e!1705959)))

(declare-fun c!436556 () Bool)

(assert (=> d!777282 (= c!436556 ((_ is Some!6156) lt!956752))))

(assert (=> d!777282 (= lt!956752 (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!777282 (= (lexRec!627 thiss!11556 rules!1182 totalInput!328) lt!956751)))

(assert (= (and d!777282 c!436556) b!2705657))

(assert (= (and d!777282 (not c!436556)) b!2705654))

(assert (= (and d!777282 c!436555) b!2705656))

(assert (= (and d!777282 (not c!436555)) b!2705653))

(assert (= (and b!2705656 res!1136175) b!2705652))

(assert (= (and d!777282 res!1136176) b!2705655))

(assert (= (and b!2705655 res!1136177) b!2705651))

(declare-fun m!3095569 () Bool)

(assert (=> d!777282 m!3095569))

(declare-fun m!3095571 () Bool)

(assert (=> d!777282 m!3095571))

(declare-fun m!3095573 () Bool)

(assert (=> b!2705656 m!3095573))

(declare-fun m!3095575 () Bool)

(assert (=> b!2705656 m!3095575))

(declare-fun m!3095577 () Bool)

(assert (=> b!2705653 m!3095577))

(assert (=> b!2705653 m!3095269))

(declare-fun m!3095579 () Bool)

(assert (=> b!2705655 m!3095579))

(assert (=> b!2705655 m!3095269))

(assert (=> b!2705655 m!3095269))

(declare-fun m!3095581 () Bool)

(assert (=> b!2705655 m!3095581))

(declare-fun m!3095583 () Bool)

(assert (=> b!2705652 m!3095583))

(declare-fun m!3095585 () Bool)

(assert (=> b!2705657 m!3095585))

(declare-fun m!3095587 () Bool)

(assert (=> b!2705657 m!3095587))

(assert (=> b!2705651 m!3095577))

(assert (=> b!2705651 m!3095269))

(assert (=> b!2705651 m!3095269))

(assert (=> b!2705651 m!3095581))

(assert (=> b!2705419 d!777282))

(declare-fun d!777284 () Bool)

(declare-fun e!1705964 () Bool)

(assert (=> d!777284 e!1705964))

(declare-fun res!1136187 () Bool)

(assert (=> d!777284 (=> (not res!1136187) (not e!1705964))))

(declare-fun appendAssocInst!675 (Conc!9770 Conc!9770) Bool)

(assert (=> d!777284 (= res!1136187 (appendAssocInst!675 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))))

(declare-fun lt!956756 () BalanceConc!19154)

(declare-fun ++!7694 (Conc!9770 Conc!9770) Conc!9770)

(assert (=> d!777284 (= lt!956756 (BalanceConc!19155 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))))))

(assert (=> d!777284 (= (++!7690 acc!331 (_1!18061 lt!956711)) lt!956756)))

(declare-fun b!2705668 () Bool)

(declare-fun res!1136188 () Bool)

(assert (=> b!2705668 (=> (not res!1136188) (not e!1705964))))

(declare-fun height!1436 (Conc!9770) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2705668 (= res!1136188 (>= (height!1436 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))) (max!0 (height!1436 (c!436512 acc!331)) (height!1436 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2705666 () Bool)

(declare-fun res!1136186 () Bool)

(assert (=> b!2705666 (=> (not res!1136186) (not e!1705964))))

(assert (=> b!2705666 (= res!1136186 (isBalanced!2956 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))))))

(declare-fun b!2705669 () Bool)

(declare-fun ++!7695 (List!31341 List!31341) List!31341)

(assert (=> b!2705669 (= e!1705964 (= (list!11793 lt!956756) (++!7695 (list!11793 acc!331) (list!11793 (_1!18061 lt!956711)))))))

(declare-fun b!2705667 () Bool)

(declare-fun res!1136189 () Bool)

(assert (=> b!2705667 (=> (not res!1136189) (not e!1705964))))

(assert (=> b!2705667 (= res!1136189 (<= (height!1436 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))) (+ (max!0 (height!1436 (c!436512 acc!331)) (height!1436 (c!436512 (_1!18061 lt!956711)))) 1)))))

(assert (= (and d!777284 res!1136187) b!2705666))

(assert (= (and b!2705666 res!1136186) b!2705667))

(assert (= (and b!2705667 res!1136189) b!2705668))

(assert (= (and b!2705668 res!1136188) b!2705669))

(declare-fun m!3095589 () Bool)

(assert (=> d!777284 m!3095589))

(declare-fun m!3095591 () Bool)

(assert (=> d!777284 m!3095591))

(assert (=> b!2705667 m!3095591))

(assert (=> b!2705667 m!3095591))

(declare-fun m!3095593 () Bool)

(assert (=> b!2705667 m!3095593))

(declare-fun m!3095595 () Bool)

(assert (=> b!2705667 m!3095595))

(declare-fun m!3095597 () Bool)

(assert (=> b!2705667 m!3095597))

(assert (=> b!2705667 m!3095595))

(assert (=> b!2705667 m!3095597))

(declare-fun m!3095599 () Bool)

(assert (=> b!2705667 m!3095599))

(assert (=> b!2705668 m!3095591))

(assert (=> b!2705668 m!3095591))

(assert (=> b!2705668 m!3095593))

(assert (=> b!2705668 m!3095595))

(assert (=> b!2705668 m!3095597))

(assert (=> b!2705668 m!3095595))

(assert (=> b!2705668 m!3095597))

(assert (=> b!2705668 m!3095599))

(declare-fun m!3095601 () Bool)

(assert (=> b!2705669 m!3095601))

(assert (=> b!2705669 m!3095255))

(declare-fun m!3095603 () Bool)

(assert (=> b!2705669 m!3095603))

(assert (=> b!2705669 m!3095255))

(assert (=> b!2705669 m!3095603))

(declare-fun m!3095605 () Bool)

(assert (=> b!2705669 m!3095605))

(assert (=> b!2705666 m!3095591))

(assert (=> b!2705666 m!3095591))

(declare-fun m!3095607 () Bool)

(assert (=> b!2705666 m!3095607))

(assert (=> b!2705419 d!777284))

(declare-fun d!777286 () Bool)

(assert (=> d!777286 (= (list!11793 (_1!18061 lt!956709)) (list!11797 (c!436512 (_1!18061 lt!956709))))))

(declare-fun bs!487312 () Bool)

(assert (= bs!487312 d!777286))

(declare-fun m!3095609 () Bool)

(assert (=> bs!487312 m!3095609))

(assert (=> b!2705419 d!777286))

(declare-fun d!777288 () Bool)

(declare-fun c!436560 () Bool)

(assert (=> d!777288 (= c!436560 ((_ is Node!9769) (c!436511 totalInput!328)))))

(declare-fun e!1705965 () Bool)

(assert (=> d!777288 (= (inv!42340 (c!436511 totalInput!328)) e!1705965)))

(declare-fun b!2705670 () Bool)

(assert (=> b!2705670 (= e!1705965 (inv!42349 (c!436511 totalInput!328)))))

(declare-fun b!2705671 () Bool)

(declare-fun e!1705966 () Bool)

(assert (=> b!2705671 (= e!1705965 e!1705966)))

(declare-fun res!1136190 () Bool)

(assert (=> b!2705671 (= res!1136190 (not ((_ is Leaf!14899) (c!436511 totalInput!328))))))

(assert (=> b!2705671 (=> res!1136190 e!1705966)))

(declare-fun b!2705672 () Bool)

(assert (=> b!2705672 (= e!1705966 (inv!42350 (c!436511 totalInput!328)))))

(assert (= (and d!777288 c!436560) b!2705670))

(assert (= (and d!777288 (not c!436560)) b!2705671))

(assert (= (and b!2705671 (not res!1136190)) b!2705672))

(declare-fun m!3095611 () Bool)

(assert (=> b!2705670 m!3095611))

(declare-fun m!3095613 () Bool)

(assert (=> b!2705672 m!3095613))

(assert (=> b!2705429 d!777288))

(declare-fun d!777290 () Bool)

(assert (=> d!777290 (= (list!11792 (_2!18061 lt!956709)) (list!11796 (c!436511 (_2!18061 lt!956709))))))

(declare-fun bs!487313 () Bool)

(assert (= bs!487313 d!777290))

(declare-fun m!3095615 () Bool)

(assert (=> bs!487313 m!3095615))

(assert (=> b!2705418 d!777290))

(declare-fun d!777292 () Bool)

(assert (=> d!777292 (= (list!11792 (_2!18061 lt!956711)) (list!11796 (c!436511 (_2!18061 lt!956711))))))

(declare-fun bs!487314 () Bool)

(assert (= bs!487314 d!777292))

(declare-fun m!3095617 () Bool)

(assert (=> bs!487314 m!3095617))

(assert (=> b!2705418 d!777292))

(declare-fun d!777294 () Bool)

(assert (=> d!777294 (= (list!11793 (_1!18061 lt!956710)) (list!11797 (c!436512 (_1!18061 lt!956710))))))

(declare-fun bs!487315 () Bool)

(assert (= bs!487315 d!777294))

(declare-fun m!3095619 () Bool)

(assert (=> bs!487315 m!3095619))

(assert (=> b!2705428 d!777294))

(declare-fun d!777296 () Bool)

(assert (=> d!777296 (= (list!11793 acc!331) (list!11797 (c!436512 acc!331)))))

(declare-fun bs!487316 () Bool)

(assert (= bs!487316 d!777296))

(declare-fun m!3095621 () Bool)

(assert (=> bs!487316 m!3095621))

(assert (=> b!2705428 d!777296))

(declare-fun e!1705969 () Bool)

(declare-fun lt!956757 () tuple2!30858)

(declare-fun b!2705673 () Bool)

(assert (=> b!2705673 (= e!1705969 (= (list!11792 (_2!18061 lt!956757)) (_2!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 treated!9)))))))

(declare-fun b!2705675 () Bool)

(declare-fun e!1705967 () Bool)

(assert (=> b!2705675 (= e!1705967 (= (list!11792 (_2!18061 lt!956757)) (list!11792 treated!9)))))

(declare-fun b!2705676 () Bool)

(declare-fun e!1705968 () tuple2!30858)

(assert (=> b!2705676 (= e!1705968 (tuple2!30859 (BalanceConc!19155 Empty!9770) treated!9))))

(declare-fun b!2705677 () Bool)

(declare-fun res!1136193 () Bool)

(assert (=> b!2705677 (=> (not res!1136193) (not e!1705969))))

(assert (=> b!2705677 (= res!1136193 (= (list!11793 (_1!18061 lt!956757)) (_1!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 treated!9)))))))

(declare-fun b!2705678 () Bool)

(declare-fun e!1705970 () Bool)

(assert (=> b!2705678 (= e!1705967 e!1705970)))

(declare-fun res!1136191 () Bool)

(assert (=> b!2705678 (= res!1136191 (< (size!24110 (_2!18061 lt!956757)) (size!24110 treated!9)))))

(assert (=> b!2705678 (=> (not res!1136191) (not e!1705970))))

(declare-fun b!2705679 () Bool)

(declare-fun lt!956759 () tuple2!30858)

(declare-fun lt!956758 () Option!6157)

(assert (=> b!2705679 (= e!1705968 (tuple2!30859 (prepend!1095 (_1!18061 lt!956759) (_1!18065 (v!32966 lt!956758))) (_2!18061 lt!956759)))))

(assert (=> b!2705679 (= lt!956759 (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956758))))))

(declare-fun b!2705674 () Bool)

(assert (=> b!2705674 (= e!1705970 (not (isEmpty!17788 (_1!18061 lt!956757))))))

(declare-fun d!777298 () Bool)

(assert (=> d!777298 e!1705969))

(declare-fun res!1136192 () Bool)

(assert (=> d!777298 (=> (not res!1136192) (not e!1705969))))

(assert (=> d!777298 (= res!1136192 e!1705967)))

(declare-fun c!436561 () Bool)

(assert (=> d!777298 (= c!436561 (> (size!24111 (_1!18061 lt!956757)) 0))))

(assert (=> d!777298 (= lt!956757 e!1705968)))

(declare-fun c!436562 () Bool)

(assert (=> d!777298 (= c!436562 ((_ is Some!6156) lt!956758))))

(assert (=> d!777298 (= lt!956758 (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 treated!9))))

(assert (=> d!777298 (= (lexRec!627 thiss!11556 rules!1182 treated!9) lt!956757)))

(assert (= (and d!777298 c!436562) b!2705679))

(assert (= (and d!777298 (not c!436562)) b!2705676))

(assert (= (and d!777298 c!436561) b!2705678))

(assert (= (and d!777298 (not c!436561)) b!2705675))

(assert (= (and b!2705678 res!1136191) b!2705674))

(assert (= (and d!777298 res!1136192) b!2705677))

(assert (= (and b!2705677 res!1136193) b!2705673))

(declare-fun m!3095623 () Bool)

(assert (=> d!777298 m!3095623))

(declare-fun m!3095625 () Bool)

(assert (=> d!777298 m!3095625))

(declare-fun m!3095627 () Bool)

(assert (=> b!2705678 m!3095627))

(declare-fun m!3095629 () Bool)

(assert (=> b!2705678 m!3095629))

(declare-fun m!3095631 () Bool)

(assert (=> b!2705675 m!3095631))

(assert (=> b!2705675 m!3095271))

(declare-fun m!3095633 () Bool)

(assert (=> b!2705677 m!3095633))

(assert (=> b!2705677 m!3095271))

(assert (=> b!2705677 m!3095271))

(declare-fun m!3095635 () Bool)

(assert (=> b!2705677 m!3095635))

(declare-fun m!3095637 () Bool)

(assert (=> b!2705674 m!3095637))

(declare-fun m!3095639 () Bool)

(assert (=> b!2705679 m!3095639))

(declare-fun m!3095641 () Bool)

(assert (=> b!2705679 m!3095641))

(assert (=> b!2705673 m!3095631))

(assert (=> b!2705673 m!3095271))

(assert (=> b!2705673 m!3095271))

(assert (=> b!2705673 m!3095635))

(assert (=> b!2705428 d!777298))

(declare-fun b!2705690 () Bool)

(declare-fun b_free!76385 () Bool)

(declare-fun b_next!77089 () Bool)

(assert (=> b!2705690 (= b_free!76385 (not b_next!77089))))

(declare-fun tp!855852 () Bool)

(declare-fun b_and!199817 () Bool)

(assert (=> b!2705690 (= tp!855852 b_and!199817)))

(declare-fun b_free!76387 () Bool)

(declare-fun b_next!77091 () Bool)

(assert (=> b!2705690 (= b_free!76387 (not b_next!77091))))

(declare-fun tp!855851 () Bool)

(declare-fun b_and!199819 () Bool)

(assert (=> b!2705690 (= tp!855851 b_and!199819)))

(declare-fun e!1705982 () Bool)

(assert (=> b!2705690 (= e!1705982 (and tp!855852 tp!855851))))

(declare-fun b!2705689 () Bool)

(declare-fun e!1705980 () Bool)

(declare-fun tp!855853 () Bool)

(assert (=> b!2705689 (= e!1705980 (and tp!855853 (inv!42332 (tag!5275 (h!36662 (t!225780 rules!1182)))) (inv!42339 (transformation!4771 (h!36662 (t!225780 rules!1182)))) e!1705982))))

(declare-fun b!2705688 () Bool)

(declare-fun e!1705981 () Bool)

(declare-fun tp!855854 () Bool)

(assert (=> b!2705688 (= e!1705981 (and e!1705980 tp!855854))))

(assert (=> b!2705432 (= tp!855784 e!1705981)))

(assert (= b!2705689 b!2705690))

(assert (= b!2705688 b!2705689))

(assert (= (and b!2705432 ((_ is Cons!31242) (t!225780 rules!1182))) b!2705688))

(declare-fun m!3095643 () Bool)

(assert (=> b!2705689 m!3095643))

(declare-fun m!3095645 () Bool)

(assert (=> b!2705689 m!3095645))

(declare-fun tp!855863 () Bool)

(declare-fun e!1705988 () Bool)

(declare-fun tp!855862 () Bool)

(declare-fun b!2705699 () Bool)

(assert (=> b!2705699 (= e!1705988 (and (inv!42340 (left!24028 (c!436511 input!603))) tp!855862 (inv!42340 (right!24358 (c!436511 input!603))) tp!855863))))

(declare-fun b!2705701 () Bool)

(declare-fun e!1705987 () Bool)

(declare-fun tp!855861 () Bool)

(assert (=> b!2705701 (= e!1705987 tp!855861)))

(declare-fun b!2705700 () Bool)

(declare-fun inv!42353 (IArray!19543) Bool)

(assert (=> b!2705700 (= e!1705988 (and (inv!42353 (xs!12817 (c!436511 input!603))) e!1705987))))

(assert (=> b!2705431 (= tp!855790 (and (inv!42340 (c!436511 input!603)) e!1705988))))

(assert (= (and b!2705431 ((_ is Node!9769) (c!436511 input!603))) b!2705699))

(assert (= b!2705700 b!2705701))

(assert (= (and b!2705431 ((_ is Leaf!14899) (c!436511 input!603))) b!2705700))

(declare-fun m!3095647 () Bool)

(assert (=> b!2705699 m!3095647))

(declare-fun m!3095649 () Bool)

(assert (=> b!2705699 m!3095649))

(declare-fun m!3095651 () Bool)

(assert (=> b!2705700 m!3095651))

(assert (=> b!2705431 m!3095259))

(declare-fun tp!855871 () Bool)

(declare-fun e!1705994 () Bool)

(declare-fun tp!855870 () Bool)

(declare-fun b!2705710 () Bool)

(assert (=> b!2705710 (= e!1705994 (and (inv!42338 (left!24029 (c!436512 acc!331))) tp!855871 (inv!42338 (right!24359 (c!436512 acc!331))) tp!855870))))

(declare-fun b!2705712 () Bool)

(declare-fun e!1705993 () Bool)

(declare-fun tp!855872 () Bool)

(assert (=> b!2705712 (= e!1705993 tp!855872)))

(declare-fun b!2705711 () Bool)

(declare-fun inv!42354 (IArray!19545) Bool)

(assert (=> b!2705711 (= e!1705994 (and (inv!42354 (xs!12818 (c!436512 acc!331))) e!1705993))))

(assert (=> b!2705420 (= tp!855789 (and (inv!42338 (c!436512 acc!331)) e!1705994))))

(assert (= (and b!2705420 ((_ is Node!9770) (c!436512 acc!331))) b!2705710))

(assert (= b!2705711 b!2705712))

(assert (= (and b!2705420 ((_ is Leaf!14900) (c!436512 acc!331))) b!2705711))

(declare-fun m!3095653 () Bool)

(assert (=> b!2705710 m!3095653))

(declare-fun m!3095655 () Bool)

(assert (=> b!2705710 m!3095655))

(declare-fun m!3095657 () Bool)

(assert (=> b!2705711 m!3095657))

(assert (=> b!2705420 m!3095261))

(declare-fun tp!855874 () Bool)

(declare-fun e!1705996 () Bool)

(declare-fun tp!855875 () Bool)

(declare-fun b!2705713 () Bool)

(assert (=> b!2705713 (= e!1705996 (and (inv!42340 (left!24028 (c!436511 treated!9))) tp!855874 (inv!42340 (right!24358 (c!436511 treated!9))) tp!855875))))

(declare-fun b!2705715 () Bool)

(declare-fun e!1705995 () Bool)

(declare-fun tp!855873 () Bool)

(assert (=> b!2705715 (= e!1705995 tp!855873)))

(declare-fun b!2705714 () Bool)

(assert (=> b!2705714 (= e!1705996 (and (inv!42353 (xs!12817 (c!436511 treated!9))) e!1705995))))

(assert (=> b!2705424 (= tp!855786 (and (inv!42340 (c!436511 treated!9)) e!1705996))))

(assert (= (and b!2705424 ((_ is Node!9769) (c!436511 treated!9))) b!2705713))

(assert (= b!2705714 b!2705715))

(assert (= (and b!2705424 ((_ is Leaf!14899) (c!436511 treated!9))) b!2705714))

(declare-fun m!3095659 () Bool)

(assert (=> b!2705713 m!3095659))

(declare-fun m!3095661 () Bool)

(assert (=> b!2705713 m!3095661))

(declare-fun m!3095663 () Bool)

(assert (=> b!2705714 m!3095663))

(assert (=> b!2705424 m!3095287))

(declare-fun b!2705716 () Bool)

(declare-fun e!1705998 () Bool)

(declare-fun tp!855877 () Bool)

(declare-fun tp!855878 () Bool)

(assert (=> b!2705716 (= e!1705998 (and (inv!42340 (left!24028 (c!436511 totalInput!328))) tp!855877 (inv!42340 (right!24358 (c!436511 totalInput!328))) tp!855878))))

(declare-fun b!2705718 () Bool)

(declare-fun e!1705997 () Bool)

(declare-fun tp!855876 () Bool)

(assert (=> b!2705718 (= e!1705997 tp!855876)))

(declare-fun b!2705717 () Bool)

(assert (=> b!2705717 (= e!1705998 (and (inv!42353 (xs!12817 (c!436511 totalInput!328))) e!1705997))))

(assert (=> b!2705429 (= tp!855791 (and (inv!42340 (c!436511 totalInput!328)) e!1705998))))

(assert (= (and b!2705429 ((_ is Node!9769) (c!436511 totalInput!328))) b!2705716))

(assert (= b!2705717 b!2705718))

(assert (= (and b!2705429 ((_ is Leaf!14899) (c!436511 totalInput!328))) b!2705717))

(declare-fun m!3095665 () Bool)

(assert (=> b!2705716 m!3095665))

(declare-fun m!3095667 () Bool)

(assert (=> b!2705716 m!3095667))

(declare-fun m!3095669 () Bool)

(assert (=> b!2705717 m!3095669))

(assert (=> b!2705429 m!3095281))

(declare-fun b!2705731 () Bool)

(declare-fun e!1706001 () Bool)

(declare-fun tp!855890 () Bool)

(assert (=> b!2705731 (= e!1706001 tp!855890)))

(assert (=> b!2705423 (= tp!855787 e!1706001)))

(declare-fun b!2705730 () Bool)

(declare-fun tp!855893 () Bool)

(declare-fun tp!855892 () Bool)

(assert (=> b!2705730 (= e!1706001 (and tp!855893 tp!855892))))

(declare-fun b!2705732 () Bool)

(declare-fun tp!855889 () Bool)

(declare-fun tp!855891 () Bool)

(assert (=> b!2705732 (= e!1706001 (and tp!855889 tp!855891))))

(declare-fun b!2705729 () Bool)

(declare-fun tp_is_empty!13865 () Bool)

(assert (=> b!2705729 (= e!1706001 tp_is_empty!13865)))

(assert (= (and b!2705423 ((_ is ElementMatch!7923) (regex!4771 (h!36662 rules!1182)))) b!2705729))

(assert (= (and b!2705423 ((_ is Concat!12917) (regex!4771 (h!36662 rules!1182)))) b!2705730))

(assert (= (and b!2705423 ((_ is Star!7923) (regex!4771 (h!36662 rules!1182)))) b!2705731))

(assert (= (and b!2705423 ((_ is Union!7923) (regex!4771 (h!36662 rules!1182)))) b!2705732))

(check-sat (not d!777296) (not b!2705716) (not b!2705710) (not b!2705420) (not b!2705657) (not b!2705554) (not b!2705675) (not b!2705674) tp_is_empty!13865 (not d!777298) (not d!777250) (not d!777270) (not b!2705429) (not b!2705547) (not b!2705648) (not d!777194) (not d!777256) b_and!199817 (not b!2705677) (not b!2705541) (not b!2705712) (not b!2705717) (not d!777290) (not b!2705645) (not d!777210) (not b!2705539) (not b!2705669) (not b!2705668) (not b!2705556) (not b!2705431) (not b!2705646) (not d!777282) b_and!199819 (not b!2705672) (not d!777266) (not b!2705451) (not b!2705452) (not b!2705673) (not b!2705731) (not b!2705644) (not b!2705649) (not b!2705666) (not b!2705655) (not d!777294) (not b!2705667) (not b!2705544) (not b_next!77081) (not b!2705545) (not b!2705699) (not d!777286) (not b_next!77091) (not d!777268) (not b!2705711) (not d!777284) (not b!2705650) (not d!777186) (not b!2705652) (not b!2705701) (not b!2705718) (not d!777244) (not b!2705670) b_and!199809 (not b!2705651) (not b!2705732) (not b!2705713) (not d!777248) b_and!199811 (not b!2705679) (not b!2705715) (not b_next!77083) (not b!2705559) (not b!2705656) (not b!2705424) (not d!777214) (not d!777246) (not d!777260) (not b!2705530) (not b!2705678) (not b!2705689) (not b_next!77089) (not b!2705529) (not b!2705714) (not d!777212) (not d!777292) (not b!2705700) (not b!2705688) (not b!2705653) (not b!2705730))
(check-sat b_and!199817 b_and!199819 (not b_next!77081) (not b_next!77091) b_and!199809 (not b_next!77089) b_and!199811 (not b_next!77083))
(get-model)

(declare-fun d!777300 () Bool)

(declare-fun lt!956762 () Int)

(assert (=> d!777300 (= lt!956762 (size!24109 (list!11792 (_2!18061 lt!956748))))))

(declare-fun size!24112 (Conc!9769) Int)

(assert (=> d!777300 (= lt!956762 (size!24112 (c!436511 (_2!18061 lt!956748))))))

(assert (=> d!777300 (= (size!24110 (_2!18061 lt!956748)) lt!956762)))

(declare-fun bs!487317 () Bool)

(assert (= bs!487317 d!777300))

(assert (=> bs!487317 m!3095557))

(assert (=> bs!487317 m!3095557))

(declare-fun m!3095671 () Bool)

(assert (=> bs!487317 m!3095671))

(declare-fun m!3095673 () Bool)

(assert (=> bs!487317 m!3095673))

(assert (=> b!2705649 d!777300))

(declare-fun d!777302 () Bool)

(declare-fun lt!956763 () Int)

(assert (=> d!777302 (= lt!956763 (size!24109 (list!11792 input!603)))))

(assert (=> d!777302 (= lt!956763 (size!24112 (c!436511 input!603)))))

(assert (=> d!777302 (= (size!24110 input!603) lt!956763)))

(declare-fun bs!487318 () Bool)

(assert (= bs!487318 d!777302))

(assert (=> bs!487318 m!3095273))

(assert (=> bs!487318 m!3095273))

(assert (=> bs!487318 m!3095341))

(declare-fun m!3095675 () Bool)

(assert (=> bs!487318 m!3095675))

(assert (=> b!2705649 d!777302))

(declare-fun b!2705745 () Bool)

(declare-fun res!1136208 () Bool)

(declare-fun e!1706006 () Bool)

(assert (=> b!2705745 (=> (not res!1136208) (not e!1706006))))

(declare-fun isEmpty!17789 (Conc!9769) Bool)

(assert (=> b!2705745 (= res!1136208 (not (isEmpty!17789 (left!24028 (c!436511 treated!9)))))))

(declare-fun b!2705746 () Bool)

(assert (=> b!2705746 (= e!1706006 (not (isEmpty!17789 (right!24358 (c!436511 treated!9)))))))

(declare-fun b!2705747 () Bool)

(declare-fun res!1136210 () Bool)

(assert (=> b!2705747 (=> (not res!1136210) (not e!1706006))))

(declare-fun height!1437 (Conc!9769) Int)

(assert (=> b!2705747 (= res!1136210 (<= (- (height!1437 (left!24028 (c!436511 treated!9))) (height!1437 (right!24358 (c!436511 treated!9)))) 1))))

(declare-fun b!2705748 () Bool)

(declare-fun res!1136212 () Bool)

(assert (=> b!2705748 (=> (not res!1136212) (not e!1706006))))

(assert (=> b!2705748 (= res!1136212 (isBalanced!2955 (right!24358 (c!436511 treated!9))))))

(declare-fun b!2705749 () Bool)

(declare-fun res!1136211 () Bool)

(assert (=> b!2705749 (=> (not res!1136211) (not e!1706006))))

(assert (=> b!2705749 (= res!1136211 (isBalanced!2955 (left!24028 (c!436511 treated!9))))))

(declare-fun d!777304 () Bool)

(declare-fun res!1136209 () Bool)

(declare-fun e!1706007 () Bool)

(assert (=> d!777304 (=> res!1136209 e!1706007)))

(assert (=> d!777304 (= res!1136209 (not ((_ is Node!9769) (c!436511 treated!9))))))

(assert (=> d!777304 (= (isBalanced!2955 (c!436511 treated!9)) e!1706007)))

(declare-fun b!2705750 () Bool)

(assert (=> b!2705750 (= e!1706007 e!1706006)))

(declare-fun res!1136213 () Bool)

(assert (=> b!2705750 (=> (not res!1136213) (not e!1706006))))

(assert (=> b!2705750 (= res!1136213 (<= (- 1) (- (height!1437 (left!24028 (c!436511 treated!9))) (height!1437 (right!24358 (c!436511 treated!9))))))))

(assert (= (and d!777304 (not res!1136209)) b!2705750))

(assert (= (and b!2705750 res!1136213) b!2705747))

(assert (= (and b!2705747 res!1136210) b!2705749))

(assert (= (and b!2705749 res!1136211) b!2705748))

(assert (= (and b!2705748 res!1136212) b!2705745))

(assert (= (and b!2705745 res!1136208) b!2705746))

(declare-fun m!3095677 () Bool)

(assert (=> b!2705748 m!3095677))

(declare-fun m!3095679 () Bool)

(assert (=> b!2705746 m!3095679))

(declare-fun m!3095681 () Bool)

(assert (=> b!2705747 m!3095681))

(declare-fun m!3095683 () Bool)

(assert (=> b!2705747 m!3095683))

(declare-fun m!3095685 () Bool)

(assert (=> b!2705749 m!3095685))

(assert (=> b!2705750 m!3095681))

(assert (=> b!2705750 m!3095683))

(declare-fun m!3095687 () Bool)

(assert (=> b!2705745 m!3095687))

(assert (=> d!777244 d!777304))

(declare-fun b!2705761 () Bool)

(declare-fun e!1706013 () List!31340)

(declare-fun list!11798 (IArray!19543) List!31340)

(assert (=> b!2705761 (= e!1706013 (list!11798 (xs!12817 (c!436511 (_2!18061 lt!956710)))))))

(declare-fun b!2705760 () Bool)

(declare-fun e!1706012 () List!31340)

(assert (=> b!2705760 (= e!1706012 e!1706013)))

(declare-fun c!436568 () Bool)

(assert (=> b!2705760 (= c!436568 ((_ is Leaf!14899) (c!436511 (_2!18061 lt!956710))))))

(declare-fun d!777306 () Bool)

(declare-fun c!436567 () Bool)

(assert (=> d!777306 (= c!436567 ((_ is Empty!9769) (c!436511 (_2!18061 lt!956710))))))

(assert (=> d!777306 (= (list!11796 (c!436511 (_2!18061 lt!956710))) e!1706012)))

(declare-fun b!2705759 () Bool)

(assert (=> b!2705759 (= e!1706012 Nil!31240)))

(declare-fun b!2705762 () Bool)

(assert (=> b!2705762 (= e!1706013 (++!7691 (list!11796 (left!24028 (c!436511 (_2!18061 lt!956710)))) (list!11796 (right!24358 (c!436511 (_2!18061 lt!956710))))))))

(assert (= (and d!777306 c!436567) b!2705759))

(assert (= (and d!777306 (not c!436567)) b!2705760))

(assert (= (and b!2705760 c!436568) b!2705761))

(assert (= (and b!2705760 (not c!436568)) b!2705762))

(declare-fun m!3095689 () Bool)

(assert (=> b!2705761 m!3095689))

(declare-fun m!3095691 () Bool)

(assert (=> b!2705762 m!3095691))

(declare-fun m!3095693 () Bool)

(assert (=> b!2705762 m!3095693))

(assert (=> b!2705762 m!3095691))

(assert (=> b!2705762 m!3095693))

(declare-fun m!3095695 () Bool)

(assert (=> b!2705762 m!3095695))

(assert (=> d!777260 d!777306))

(declare-fun d!777308 () Bool)

(assert (=> d!777308 (= (inv!42353 (xs!12817 (c!436511 totalInput!328))) (<= (size!24109 (innerList!9829 (xs!12817 (c!436511 totalInput!328)))) 2147483647))))

(declare-fun bs!487319 () Bool)

(assert (= bs!487319 d!777308))

(declare-fun m!3095697 () Bool)

(assert (=> bs!487319 m!3095697))

(assert (=> b!2705717 d!777308))

(declare-fun d!777310 () Bool)

(declare-fun e!1706016 () Bool)

(assert (=> d!777310 e!1706016))

(declare-fun res!1136216 () Bool)

(assert (=> d!777310 (=> (not res!1136216) (not e!1706016))))

(declare-fun prepend!1096 (Conc!9770 Token!9004) Conc!9770)

(assert (=> d!777310 (= res!1136216 (isBalanced!2956 (prepend!1096 (c!436512 (_1!18061 lt!956753)) (_1!18065 (v!32966 lt!956752)))))))

(declare-fun lt!956766 () BalanceConc!19154)

(assert (=> d!777310 (= lt!956766 (BalanceConc!19155 (prepend!1096 (c!436512 (_1!18061 lt!956753)) (_1!18065 (v!32966 lt!956752)))))))

(assert (=> d!777310 (= (prepend!1095 (_1!18061 lt!956753) (_1!18065 (v!32966 lt!956752))) lt!956766)))

(declare-fun b!2705765 () Bool)

(assert (=> b!2705765 (= e!1706016 (= (list!11793 lt!956766) (Cons!31241 (_1!18065 (v!32966 lt!956752)) (list!11793 (_1!18061 lt!956753)))))))

(assert (= (and d!777310 res!1136216) b!2705765))

(declare-fun m!3095699 () Bool)

(assert (=> d!777310 m!3095699))

(assert (=> d!777310 m!3095699))

(declare-fun m!3095701 () Bool)

(assert (=> d!777310 m!3095701))

(declare-fun m!3095703 () Bool)

(assert (=> b!2705765 m!3095703))

(declare-fun m!3095705 () Bool)

(assert (=> b!2705765 m!3095705))

(assert (=> b!2705657 d!777310))

(declare-fun e!1706019 () Bool)

(declare-fun b!2705766 () Bool)

(declare-fun lt!956767 () tuple2!30858)

(assert (=> b!2705766 (= e!1706019 (= (list!11792 (_2!18061 lt!956767)) (_2!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 (_2!18065 (v!32966 lt!956752)))))))))

(declare-fun b!2705768 () Bool)

(declare-fun e!1706017 () Bool)

(assert (=> b!2705768 (= e!1706017 (= (list!11792 (_2!18061 lt!956767)) (list!11792 (_2!18065 (v!32966 lt!956752)))))))

(declare-fun b!2705769 () Bool)

(declare-fun e!1706018 () tuple2!30858)

(assert (=> b!2705769 (= e!1706018 (tuple2!30859 (BalanceConc!19155 Empty!9770) (_2!18065 (v!32966 lt!956752))))))

(declare-fun b!2705770 () Bool)

(declare-fun res!1136219 () Bool)

(assert (=> b!2705770 (=> (not res!1136219) (not e!1706019))))

(assert (=> b!2705770 (= res!1136219 (= (list!11793 (_1!18061 lt!956767)) (_1!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 (_2!18065 (v!32966 lt!956752)))))))))

(declare-fun b!2705771 () Bool)

(declare-fun e!1706020 () Bool)

(assert (=> b!2705771 (= e!1706017 e!1706020)))

(declare-fun res!1136217 () Bool)

(assert (=> b!2705771 (= res!1136217 (< (size!24110 (_2!18061 lt!956767)) (size!24110 (_2!18065 (v!32966 lt!956752)))))))

(assert (=> b!2705771 (=> (not res!1136217) (not e!1706020))))

(declare-fun b!2705772 () Bool)

(declare-fun lt!956769 () tuple2!30858)

(declare-fun lt!956768 () Option!6157)

(assert (=> b!2705772 (= e!1706018 (tuple2!30859 (prepend!1095 (_1!18061 lt!956769) (_1!18065 (v!32966 lt!956768))) (_2!18061 lt!956769)))))

(assert (=> b!2705772 (= lt!956769 (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956768))))))

(declare-fun b!2705767 () Bool)

(assert (=> b!2705767 (= e!1706020 (not (isEmpty!17788 (_1!18061 lt!956767))))))

(declare-fun d!777312 () Bool)

(assert (=> d!777312 e!1706019))

(declare-fun res!1136218 () Bool)

(assert (=> d!777312 (=> (not res!1136218) (not e!1706019))))

(assert (=> d!777312 (= res!1136218 e!1706017)))

(declare-fun c!436570 () Bool)

(assert (=> d!777312 (= c!436570 (> (size!24111 (_1!18061 lt!956767)) 0))))

(assert (=> d!777312 (= lt!956767 e!1706018)))

(declare-fun c!436571 () Bool)

(assert (=> d!777312 (= c!436571 ((_ is Some!6156) lt!956768))))

(assert (=> d!777312 (= lt!956768 (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956752))))))

(assert (=> d!777312 (= (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956752))) lt!956767)))

(assert (= (and d!777312 c!436571) b!2705772))

(assert (= (and d!777312 (not c!436571)) b!2705769))

(assert (= (and d!777312 c!436570) b!2705771))

(assert (= (and d!777312 (not c!436570)) b!2705768))

(assert (= (and b!2705771 res!1136217) b!2705767))

(assert (= (and d!777312 res!1136218) b!2705770))

(assert (= (and b!2705770 res!1136219) b!2705766))

(declare-fun m!3095707 () Bool)

(assert (=> d!777312 m!3095707))

(declare-fun m!3095709 () Bool)

(assert (=> d!777312 m!3095709))

(declare-fun m!3095711 () Bool)

(assert (=> b!2705771 m!3095711))

(declare-fun m!3095713 () Bool)

(assert (=> b!2705771 m!3095713))

(declare-fun m!3095715 () Bool)

(assert (=> b!2705768 m!3095715))

(declare-fun m!3095717 () Bool)

(assert (=> b!2705768 m!3095717))

(declare-fun m!3095719 () Bool)

(assert (=> b!2705770 m!3095719))

(assert (=> b!2705770 m!3095717))

(assert (=> b!2705770 m!3095717))

(declare-fun m!3095721 () Bool)

(assert (=> b!2705770 m!3095721))

(declare-fun m!3095723 () Bool)

(assert (=> b!2705767 m!3095723))

(declare-fun m!3095725 () Bool)

(assert (=> b!2705772 m!3095725))

(declare-fun m!3095727 () Bool)

(assert (=> b!2705772 m!3095727))

(assert (=> b!2705766 m!3095715))

(assert (=> b!2705766 m!3095717))

(assert (=> b!2705766 m!3095717))

(assert (=> b!2705766 m!3095721))

(assert (=> b!2705657 d!777312))

(declare-fun d!777314 () Bool)

(declare-fun res!1136224 () Bool)

(declare-fun e!1706023 () Bool)

(assert (=> d!777314 (=> (not res!1136224) (not e!1706023))))

(declare-fun size!24113 (List!31341) Int)

(declare-fun list!11799 (IArray!19545) List!31341)

(assert (=> d!777314 (= res!1136224 (<= (size!24113 (list!11799 (xs!12818 (c!436512 acc!331)))) 512))))

(assert (=> d!777314 (= (inv!42352 (c!436512 acc!331)) e!1706023)))

(declare-fun b!2705777 () Bool)

(declare-fun res!1136225 () Bool)

(assert (=> b!2705777 (=> (not res!1136225) (not e!1706023))))

(assert (=> b!2705777 (= res!1136225 (= (csize!19771 (c!436512 acc!331)) (size!24113 (list!11799 (xs!12818 (c!436512 acc!331))))))))

(declare-fun b!2705778 () Bool)

(assert (=> b!2705778 (= e!1706023 (and (> (csize!19771 (c!436512 acc!331)) 0) (<= (csize!19771 (c!436512 acc!331)) 512)))))

(assert (= (and d!777314 res!1136224) b!2705777))

(assert (= (and b!2705777 res!1136225) b!2705778))

(declare-fun m!3095729 () Bool)

(assert (=> d!777314 m!3095729))

(assert (=> d!777314 m!3095729))

(declare-fun m!3095731 () Bool)

(assert (=> d!777314 m!3095731))

(assert (=> b!2705777 m!3095729))

(assert (=> b!2705777 m!3095729))

(assert (=> b!2705777 m!3095731))

(assert (=> b!2705556 d!777314))

(declare-fun d!777316 () Bool)

(assert (=> d!777316 (= (list!11793 (_1!18061 lt!956757)) (list!11797 (c!436512 (_1!18061 lt!956757))))))

(declare-fun bs!487320 () Bool)

(assert (= bs!487320 d!777316))

(declare-fun m!3095733 () Bool)

(assert (=> bs!487320 m!3095733))

(assert (=> b!2705677 d!777316))

(declare-fun b!2705789 () Bool)

(declare-fun e!1706031 () Bool)

(declare-fun lt!956778 () tuple2!30864)

(assert (=> b!2705789 (= e!1706031 (= (_2!18064 lt!956778) (list!11792 treated!9)))))

(declare-fun b!2705790 () Bool)

(declare-fun e!1706032 () Bool)

(assert (=> b!2705790 (= e!1706031 e!1706032)))

(declare-fun res!1136230 () Bool)

(assert (=> b!2705790 (= res!1136230 (< (size!24109 (_2!18064 lt!956778)) (size!24109 (list!11792 treated!9))))))

(assert (=> b!2705790 (=> (not res!1136230) (not e!1706032))))

(declare-fun b!2705791 () Bool)

(declare-fun e!1706030 () tuple2!30864)

(declare-datatypes ((tuple2!30868 0))(
  ( (tuple2!30869 (_1!18066 Token!9004) (_2!18066 List!31340)) )
))
(declare-datatypes ((Option!6158 0))(
  ( (None!6157) (Some!6157 (v!32969 tuple2!30868)) )
))
(declare-fun lt!956777 () Option!6158)

(declare-fun lt!956776 () tuple2!30864)

(assert (=> b!2705791 (= e!1706030 (tuple2!30865 (Cons!31241 (_1!18066 (v!32969 lt!956777)) (_1!18064 lt!956776)) (_2!18064 lt!956776)))))

(assert (=> b!2705791 (= lt!956776 (lexList!1204 thiss!11556 rules!1182 (_2!18066 (v!32969 lt!956777))))))

(declare-fun b!2705793 () Bool)

(assert (=> b!2705793 (= e!1706030 (tuple2!30865 Nil!31241 (list!11792 treated!9)))))

(declare-fun b!2705792 () Bool)

(declare-fun isEmpty!17790 (List!31341) Bool)

(assert (=> b!2705792 (= e!1706032 (not (isEmpty!17790 (_1!18064 lt!956778))))))

(declare-fun d!777318 () Bool)

(assert (=> d!777318 e!1706031))

(declare-fun c!436576 () Bool)

(assert (=> d!777318 (= c!436576 (> (size!24113 (_1!18064 lt!956778)) 0))))

(assert (=> d!777318 (= lt!956778 e!1706030)))

(declare-fun c!436577 () Bool)

(assert (=> d!777318 (= c!436577 ((_ is Some!6157) lt!956777))))

(declare-fun maxPrefix!2357 (LexerInterface!4367 List!31342 List!31340) Option!6158)

(assert (=> d!777318 (= lt!956777 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 treated!9)))))

(assert (=> d!777318 (= (lexList!1204 thiss!11556 rules!1182 (list!11792 treated!9)) lt!956778)))

(assert (= (and d!777318 c!436577) b!2705791))

(assert (= (and d!777318 (not c!436577)) b!2705793))

(assert (= (and d!777318 c!436576) b!2705790))

(assert (= (and d!777318 (not c!436576)) b!2705789))

(assert (= (and b!2705790 res!1136230) b!2705792))

(declare-fun m!3095735 () Bool)

(assert (=> b!2705790 m!3095735))

(assert (=> b!2705790 m!3095271))

(assert (=> b!2705790 m!3095339))

(declare-fun m!3095737 () Bool)

(assert (=> b!2705791 m!3095737))

(declare-fun m!3095739 () Bool)

(assert (=> b!2705792 m!3095739))

(declare-fun m!3095741 () Bool)

(assert (=> d!777318 m!3095741))

(assert (=> d!777318 m!3095271))

(declare-fun m!3095743 () Bool)

(assert (=> d!777318 m!3095743))

(assert (=> b!2705677 d!777318))

(assert (=> b!2705677 d!777210))

(declare-fun d!777320 () Bool)

(assert (=> d!777320 true))

(declare-fun order!17077 () Int)

(declare-fun order!17079 () Int)

(declare-fun lambda!100461 () Int)

(declare-fun dynLambda!13466 (Int Int) Int)

(declare-fun dynLambda!13467 (Int Int) Int)

(assert (=> d!777320 (< (dynLambda!13466 order!17077 (toChars!6592 (transformation!4771 (h!36662 rules!1182)))) (dynLambda!13467 order!17079 lambda!100461))))

(assert (=> d!777320 true))

(declare-fun order!17081 () Int)

(declare-fun dynLambda!13468 (Int Int) Int)

(assert (=> d!777320 (< (dynLambda!13468 order!17081 (toValue!6733 (transformation!4771 (h!36662 rules!1182)))) (dynLambda!13467 order!17079 lambda!100461))))

(declare-fun Forall!1203 (Int) Bool)

(assert (=> d!777320 (= (semiInverseModEq!1968 (toChars!6592 (transformation!4771 (h!36662 rules!1182))) (toValue!6733 (transformation!4771 (h!36662 rules!1182)))) (Forall!1203 lambda!100461))))

(declare-fun bs!487322 () Bool)

(assert (= bs!487322 d!777320))

(declare-fun m!3095747 () Bool)

(assert (=> bs!487322 m!3095747))

(assert (=> d!777256 d!777320))

(declare-fun d!777326 () Bool)

(assert (=> d!777326 (= (list!11793 (_1!18061 lt!956751)) (list!11797 (c!436512 (_1!18061 lt!956751))))))

(declare-fun bs!487323 () Bool)

(assert (= bs!487323 d!777326))

(declare-fun m!3095749 () Bool)

(assert (=> bs!487323 m!3095749))

(assert (=> b!2705655 d!777326))

(declare-fun b!2705798 () Bool)

(declare-fun e!1706034 () Bool)

(declare-fun lt!956781 () tuple2!30864)

(assert (=> b!2705798 (= e!1706034 (= (_2!18064 lt!956781) (list!11792 totalInput!328)))))

(declare-fun b!2705799 () Bool)

(declare-fun e!1706035 () Bool)

(assert (=> b!2705799 (= e!1706034 e!1706035)))

(declare-fun res!1136231 () Bool)

(assert (=> b!2705799 (= res!1136231 (< (size!24109 (_2!18064 lt!956781)) (size!24109 (list!11792 totalInput!328))))))

(assert (=> b!2705799 (=> (not res!1136231) (not e!1706035))))

(declare-fun b!2705800 () Bool)

(declare-fun e!1706033 () tuple2!30864)

(declare-fun lt!956780 () Option!6158)

(declare-fun lt!956779 () tuple2!30864)

(assert (=> b!2705800 (= e!1706033 (tuple2!30865 (Cons!31241 (_1!18066 (v!32969 lt!956780)) (_1!18064 lt!956779)) (_2!18064 lt!956779)))))

(assert (=> b!2705800 (= lt!956779 (lexList!1204 thiss!11556 rules!1182 (_2!18066 (v!32969 lt!956780))))))

(declare-fun b!2705802 () Bool)

(assert (=> b!2705802 (= e!1706033 (tuple2!30865 Nil!31241 (list!11792 totalInput!328)))))

(declare-fun b!2705801 () Bool)

(assert (=> b!2705801 (= e!1706035 (not (isEmpty!17790 (_1!18064 lt!956781))))))

(declare-fun d!777328 () Bool)

(assert (=> d!777328 e!1706034))

(declare-fun c!436578 () Bool)

(assert (=> d!777328 (= c!436578 (> (size!24113 (_1!18064 lt!956781)) 0))))

(assert (=> d!777328 (= lt!956781 e!1706033)))

(declare-fun c!436579 () Bool)

(assert (=> d!777328 (= c!436579 ((_ is Some!6157) lt!956780))))

(assert (=> d!777328 (= lt!956780 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 totalInput!328)))))

(assert (=> d!777328 (= (lexList!1204 thiss!11556 rules!1182 (list!11792 totalInput!328)) lt!956781)))

(assert (= (and d!777328 c!436579) b!2705800))

(assert (= (and d!777328 (not c!436579)) b!2705802))

(assert (= (and d!777328 c!436578) b!2705799))

(assert (= (and d!777328 (not c!436578)) b!2705798))

(assert (= (and b!2705799 res!1136231) b!2705801))

(declare-fun m!3095751 () Bool)

(assert (=> b!2705799 m!3095751))

(assert (=> b!2705799 m!3095269))

(declare-fun m!3095753 () Bool)

(assert (=> b!2705799 m!3095753))

(declare-fun m!3095755 () Bool)

(assert (=> b!2705800 m!3095755))

(declare-fun m!3095757 () Bool)

(assert (=> b!2705801 m!3095757))

(declare-fun m!3095759 () Bool)

(assert (=> d!777328 m!3095759))

(assert (=> d!777328 m!3095269))

(declare-fun m!3095761 () Bool)

(assert (=> d!777328 m!3095761))

(assert (=> b!2705655 d!777328))

(assert (=> b!2705655 d!777186))

(declare-fun d!777330 () Bool)

(declare-fun c!436580 () Bool)

(assert (=> d!777330 (= c!436580 ((_ is Node!9769) (left!24028 (c!436511 input!603))))))

(declare-fun e!1706040 () Bool)

(assert (=> d!777330 (= (inv!42340 (left!24028 (c!436511 input!603))) e!1706040)))

(declare-fun b!2705807 () Bool)

(assert (=> b!2705807 (= e!1706040 (inv!42349 (left!24028 (c!436511 input!603))))))

(declare-fun b!2705808 () Bool)

(declare-fun e!1706041 () Bool)

(assert (=> b!2705808 (= e!1706040 e!1706041)))

(declare-fun res!1136238 () Bool)

(assert (=> b!2705808 (= res!1136238 (not ((_ is Leaf!14899) (left!24028 (c!436511 input!603)))))))

(assert (=> b!2705808 (=> res!1136238 e!1706041)))

(declare-fun b!2705809 () Bool)

(assert (=> b!2705809 (= e!1706041 (inv!42350 (left!24028 (c!436511 input!603))))))

(assert (= (and d!777330 c!436580) b!2705807))

(assert (= (and d!777330 (not c!436580)) b!2705808))

(assert (= (and b!2705808 (not res!1136238)) b!2705809))

(declare-fun m!3095763 () Bool)

(assert (=> b!2705807 m!3095763))

(declare-fun m!3095765 () Bool)

(assert (=> b!2705809 m!3095765))

(assert (=> b!2705699 d!777330))

(declare-fun d!777332 () Bool)

(declare-fun c!436581 () Bool)

(assert (=> d!777332 (= c!436581 ((_ is Node!9769) (right!24358 (c!436511 input!603))))))

(declare-fun e!1706042 () Bool)

(assert (=> d!777332 (= (inv!42340 (right!24358 (c!436511 input!603))) e!1706042)))

(declare-fun b!2705818 () Bool)

(assert (=> b!2705818 (= e!1706042 (inv!42349 (right!24358 (c!436511 input!603))))))

(declare-fun b!2705819 () Bool)

(declare-fun e!1706043 () Bool)

(assert (=> b!2705819 (= e!1706042 e!1706043)))

(declare-fun res!1136245 () Bool)

(assert (=> b!2705819 (= res!1136245 (not ((_ is Leaf!14899) (right!24358 (c!436511 input!603)))))))

(assert (=> b!2705819 (=> res!1136245 e!1706043)))

(declare-fun b!2705820 () Bool)

(assert (=> b!2705820 (= e!1706043 (inv!42350 (right!24358 (c!436511 input!603))))))

(assert (= (and d!777332 c!436581) b!2705818))

(assert (= (and d!777332 (not c!436581)) b!2705819))

(assert (= (and b!2705819 (not res!1136245)) b!2705820))

(declare-fun m!3095767 () Bool)

(assert (=> b!2705818 m!3095767))

(declare-fun m!3095769 () Bool)

(assert (=> b!2705820 m!3095769))

(assert (=> b!2705699 d!777332))

(declare-fun d!777334 () Bool)

(assert (=> d!777334 (= (list!11792 (_2!18061 lt!956757)) (list!11796 (c!436511 (_2!18061 lt!956757))))))

(declare-fun bs!487324 () Bool)

(assert (= bs!487324 d!777334))

(declare-fun m!3095771 () Bool)

(assert (=> bs!487324 m!3095771))

(assert (=> b!2705675 d!777334))

(assert (=> b!2705675 d!777210))

(declare-fun d!777336 () Bool)

(declare-fun res!1136250 () Bool)

(declare-fun e!1706046 () Bool)

(assert (=> d!777336 (=> (not res!1136250) (not e!1706046))))

(declare-fun validRegex!3306 (Regex!7923) Bool)

(assert (=> d!777336 (= res!1136250 (validRegex!3306 (regex!4771 (h!36662 rules!1182))))))

(assert (=> d!777336 (= (ruleValid!1563 thiss!11556 (h!36662 rules!1182)) e!1706046)))

(declare-fun b!2705825 () Bool)

(declare-fun res!1136251 () Bool)

(assert (=> b!2705825 (=> (not res!1136251) (not e!1706046))))

(declare-fun nullable!2597 (Regex!7923) Bool)

(assert (=> b!2705825 (= res!1136251 (not (nullable!2597 (regex!4771 (h!36662 rules!1182)))))))

(declare-fun b!2705826 () Bool)

(assert (=> b!2705826 (= e!1706046 (not (= (tag!5275 (h!36662 rules!1182)) (String!34866 ""))))))

(assert (= (and d!777336 res!1136250) b!2705825))

(assert (= (and b!2705825 res!1136251) b!2705826))

(declare-fun m!3095773 () Bool)

(assert (=> d!777336 m!3095773))

(declare-fun m!3095775 () Bool)

(assert (=> b!2705825 m!3095775))

(assert (=> b!2705529 d!777336))

(declare-fun d!777338 () Bool)

(declare-fun res!1136262 () Bool)

(declare-fun e!1706053 () Bool)

(assert (=> d!777338 (=> res!1136262 e!1706053)))

(assert (=> d!777338 (= res!1136262 ((_ is Nil!31242) rules!1182))))

(assert (=> d!777338 (= (noDuplicateTag!1770 thiss!11556 rules!1182 Nil!31244) e!1706053)))

(declare-fun b!2705837 () Bool)

(declare-fun e!1706054 () Bool)

(assert (=> b!2705837 (= e!1706053 e!1706054)))

(declare-fun res!1136263 () Bool)

(assert (=> b!2705837 (=> (not res!1136263) (not e!1706054))))

(declare-fun contains!5947 (List!31344 String!34865) Bool)

(assert (=> b!2705837 (= res!1136263 (not (contains!5947 Nil!31244 (tag!5275 (h!36662 rules!1182)))))))

(declare-fun b!2705838 () Bool)

(assert (=> b!2705838 (= e!1706054 (noDuplicateTag!1770 thiss!11556 (t!225780 rules!1182) (Cons!31244 (tag!5275 (h!36662 rules!1182)) Nil!31244)))))

(assert (= (and d!777338 (not res!1136262)) b!2705837))

(assert (= (and b!2705837 res!1136263) b!2705838))

(declare-fun m!3095789 () Bool)

(assert (=> b!2705837 m!3095789))

(declare-fun m!3095791 () Bool)

(assert (=> b!2705838 m!3095791))

(assert (=> b!2705559 d!777338))

(declare-fun d!777342 () Bool)

(declare-fun lt!956784 () Bool)

(assert (=> d!777342 (= lt!956784 (isEmpty!17790 (list!11793 (_1!18061 lt!956748))))))

(declare-fun isEmpty!17792 (Conc!9770) Bool)

(assert (=> d!777342 (= lt!956784 (isEmpty!17792 (c!436512 (_1!18061 lt!956748))))))

(assert (=> d!777342 (= (isEmpty!17788 (_1!18061 lt!956748)) lt!956784)))

(declare-fun bs!487325 () Bool)

(assert (= bs!487325 d!777342))

(assert (=> bs!487325 m!3095559))

(assert (=> bs!487325 m!3095559))

(declare-fun m!3095793 () Bool)

(assert (=> bs!487325 m!3095793))

(declare-fun m!3095795 () Bool)

(assert (=> bs!487325 m!3095795))

(assert (=> b!2705645 d!777342))

(declare-fun d!777344 () Bool)

(declare-fun res!1136288 () Bool)

(declare-fun e!1706075 () Bool)

(assert (=> d!777344 (=> (not res!1136288) (not e!1706075))))

(declare-fun size!24114 (Conc!9770) Int)

(assert (=> d!777344 (= res!1136288 (= (csize!19770 (c!436512 acc!331)) (+ (size!24114 (left!24029 (c!436512 acc!331))) (size!24114 (right!24359 (c!436512 acc!331))))))))

(assert (=> d!777344 (= (inv!42351 (c!436512 acc!331)) e!1706075)))

(declare-fun b!2705863 () Bool)

(declare-fun res!1136289 () Bool)

(assert (=> b!2705863 (=> (not res!1136289) (not e!1706075))))

(assert (=> b!2705863 (= res!1136289 (and (not (= (left!24029 (c!436512 acc!331)) Empty!9770)) (not (= (right!24359 (c!436512 acc!331)) Empty!9770))))))

(declare-fun b!2705864 () Bool)

(declare-fun res!1136290 () Bool)

(assert (=> b!2705864 (=> (not res!1136290) (not e!1706075))))

(assert (=> b!2705864 (= res!1136290 (= (cheight!9981 (c!436512 acc!331)) (+ (max!0 (height!1436 (left!24029 (c!436512 acc!331))) (height!1436 (right!24359 (c!436512 acc!331)))) 1)))))

(declare-fun b!2705865 () Bool)

(assert (=> b!2705865 (= e!1706075 (<= 0 (cheight!9981 (c!436512 acc!331))))))

(assert (= (and d!777344 res!1136288) b!2705863))

(assert (= (and b!2705863 res!1136289) b!2705864))

(assert (= (and b!2705864 res!1136290) b!2705865))

(declare-fun m!3095797 () Bool)

(assert (=> d!777344 m!3095797))

(declare-fun m!3095799 () Bool)

(assert (=> d!777344 m!3095799))

(declare-fun m!3095801 () Bool)

(assert (=> b!2705864 m!3095801))

(declare-fun m!3095803 () Bool)

(assert (=> b!2705864 m!3095803))

(assert (=> b!2705864 m!3095801))

(assert (=> b!2705864 m!3095803))

(declare-fun m!3095805 () Bool)

(assert (=> b!2705864 m!3095805))

(assert (=> b!2705554 d!777344))

(declare-fun d!777346 () Bool)

(declare-fun e!1706077 () Bool)

(assert (=> d!777346 e!1706077))

(declare-fun res!1136291 () Bool)

(assert (=> d!777346 (=> (not res!1136291) (not e!1706077))))

(declare-fun lt!956785 () List!31340)

(assert (=> d!777346 (= res!1136291 (= (content!4419 lt!956785) ((_ map or) (content!4419 (t!225778 (list!11792 treated!9))) (content!4419 (list!11792 input!603)))))))

(declare-fun e!1706076 () List!31340)

(assert (=> d!777346 (= lt!956785 e!1706076)))

(declare-fun c!436582 () Bool)

(assert (=> d!777346 (= c!436582 ((_ is Nil!31240) (t!225778 (list!11792 treated!9))))))

(assert (=> d!777346 (= (++!7691 (t!225778 (list!11792 treated!9)) (list!11792 input!603)) lt!956785)))

(declare-fun b!2705869 () Bool)

(assert (=> b!2705869 (= e!1706077 (or (not (= (list!11792 input!603) Nil!31240)) (= lt!956785 (t!225778 (list!11792 treated!9)))))))

(declare-fun b!2705868 () Bool)

(declare-fun res!1136292 () Bool)

(assert (=> b!2705868 (=> (not res!1136292) (not e!1706077))))

(assert (=> b!2705868 (= res!1136292 (= (size!24109 lt!956785) (+ (size!24109 (t!225778 (list!11792 treated!9))) (size!24109 (list!11792 input!603)))))))

(declare-fun b!2705866 () Bool)

(assert (=> b!2705866 (= e!1706076 (list!11792 input!603))))

(declare-fun b!2705867 () Bool)

(assert (=> b!2705867 (= e!1706076 (Cons!31240 (h!36660 (t!225778 (list!11792 treated!9))) (++!7691 (t!225778 (t!225778 (list!11792 treated!9))) (list!11792 input!603))))))

(assert (= (and d!777346 c!436582) b!2705866))

(assert (= (and d!777346 (not c!436582)) b!2705867))

(assert (= (and d!777346 res!1136291) b!2705868))

(assert (= (and b!2705868 res!1136292) b!2705869))

(declare-fun m!3095807 () Bool)

(assert (=> d!777346 m!3095807))

(declare-fun m!3095809 () Bool)

(assert (=> d!777346 m!3095809))

(assert (=> d!777346 m!3095273))

(assert (=> d!777346 m!3095335))

(declare-fun m!3095811 () Bool)

(assert (=> b!2705868 m!3095811))

(declare-fun m!3095813 () Bool)

(assert (=> b!2705868 m!3095813))

(assert (=> b!2705868 m!3095273))

(assert (=> b!2705868 m!3095341))

(assert (=> b!2705867 m!3095273))

(declare-fun m!3095815 () Bool)

(assert (=> b!2705867 m!3095815))

(assert (=> b!2705451 d!777346))

(declare-fun d!777348 () Bool)

(declare-fun res!1136308 () Bool)

(declare-fun e!1706089 () Bool)

(assert (=> d!777348 (=> (not res!1136308) (not e!1706089))))

(assert (=> d!777348 (= res!1136308 (= (csize!19768 (c!436511 treated!9)) (+ (size!24112 (left!24028 (c!436511 treated!9))) (size!24112 (right!24358 (c!436511 treated!9))))))))

(assert (=> d!777348 (= (inv!42349 (c!436511 treated!9)) e!1706089)))

(declare-fun b!2705885 () Bool)

(declare-fun res!1136309 () Bool)

(assert (=> b!2705885 (=> (not res!1136309) (not e!1706089))))

(assert (=> b!2705885 (= res!1136309 (and (not (= (left!24028 (c!436511 treated!9)) Empty!9769)) (not (= (right!24358 (c!436511 treated!9)) Empty!9769))))))

(declare-fun b!2705886 () Bool)

(declare-fun res!1136310 () Bool)

(assert (=> b!2705886 (=> (not res!1136310) (not e!1706089))))

(assert (=> b!2705886 (= res!1136310 (= (cheight!9980 (c!436511 treated!9)) (+ (max!0 (height!1437 (left!24028 (c!436511 treated!9))) (height!1437 (right!24358 (c!436511 treated!9)))) 1)))))

(declare-fun b!2705887 () Bool)

(assert (=> b!2705887 (= e!1706089 (<= 0 (cheight!9980 (c!436511 treated!9))))))

(assert (= (and d!777348 res!1136308) b!2705885))

(assert (= (and b!2705885 res!1136309) b!2705886))

(assert (= (and b!2705886 res!1136310) b!2705887))

(declare-fun m!3095817 () Bool)

(assert (=> d!777348 m!3095817))

(declare-fun m!3095819 () Bool)

(assert (=> d!777348 m!3095819))

(assert (=> b!2705886 m!3095681))

(assert (=> b!2705886 m!3095683))

(assert (=> b!2705886 m!3095681))

(assert (=> b!2705886 m!3095683))

(declare-fun m!3095821 () Bool)

(assert (=> b!2705886 m!3095821))

(assert (=> b!2705539 d!777348))

(assert (=> b!2705420 d!777264))

(declare-fun bs!487326 () Bool)

(declare-fun d!777350 () Bool)

(assert (= bs!487326 (and d!777350 d!777214)))

(declare-fun lambda!100464 () Int)

(assert (=> bs!487326 (= lambda!100464 lambda!100455)))

(assert (=> d!777350 true))

(declare-fun lt!956788 () Bool)

(assert (=> d!777350 (= lt!956788 (rulesValidInductive!1657 thiss!11556 rules!1182))))

(assert (=> d!777350 (= lt!956788 (forall!6555 rules!1182 lambda!100464))))

(assert (=> d!777350 (= (rulesValid!1774 thiss!11556 rules!1182) lt!956788)))

(declare-fun bs!487327 () Bool)

(assert (= bs!487327 d!777350))

(assert (=> bs!487327 m!3095285))

(declare-fun m!3095857 () Bool)

(assert (=> bs!487327 m!3095857))

(assert (=> d!777266 d!777350))

(declare-fun d!777354 () Bool)

(declare-fun c!436583 () Bool)

(assert (=> d!777354 (= c!436583 ((_ is Node!9769) (left!24028 (c!436511 treated!9))))))

(declare-fun e!1706090 () Bool)

(assert (=> d!777354 (= (inv!42340 (left!24028 (c!436511 treated!9))) e!1706090)))

(declare-fun b!2705888 () Bool)

(assert (=> b!2705888 (= e!1706090 (inv!42349 (left!24028 (c!436511 treated!9))))))

(declare-fun b!2705889 () Bool)

(declare-fun e!1706091 () Bool)

(assert (=> b!2705889 (= e!1706090 e!1706091)))

(declare-fun res!1136311 () Bool)

(assert (=> b!2705889 (= res!1136311 (not ((_ is Leaf!14899) (left!24028 (c!436511 treated!9)))))))

(assert (=> b!2705889 (=> res!1136311 e!1706091)))

(declare-fun b!2705890 () Bool)

(assert (=> b!2705890 (= e!1706091 (inv!42350 (left!24028 (c!436511 treated!9))))))

(assert (= (and d!777354 c!436583) b!2705888))

(assert (= (and d!777354 (not c!436583)) b!2705889))

(assert (= (and b!2705889 (not res!1136311)) b!2705890))

(declare-fun m!3095859 () Bool)

(assert (=> b!2705888 m!3095859))

(declare-fun m!3095861 () Bool)

(assert (=> b!2705890 m!3095861))

(assert (=> b!2705713 d!777354))

(declare-fun d!777356 () Bool)

(declare-fun c!436584 () Bool)

(assert (=> d!777356 (= c!436584 ((_ is Node!9769) (right!24358 (c!436511 treated!9))))))

(declare-fun e!1706092 () Bool)

(assert (=> d!777356 (= (inv!42340 (right!24358 (c!436511 treated!9))) e!1706092)))

(declare-fun b!2705891 () Bool)

(assert (=> b!2705891 (= e!1706092 (inv!42349 (right!24358 (c!436511 treated!9))))))

(declare-fun b!2705892 () Bool)

(declare-fun e!1706093 () Bool)

(assert (=> b!2705892 (= e!1706092 e!1706093)))

(declare-fun res!1136312 () Bool)

(assert (=> b!2705892 (= res!1136312 (not ((_ is Leaf!14899) (right!24358 (c!436511 treated!9)))))))

(assert (=> b!2705892 (=> res!1136312 e!1706093)))

(declare-fun b!2705893 () Bool)

(assert (=> b!2705893 (= e!1706093 (inv!42350 (right!24358 (c!436511 treated!9))))))

(assert (= (and d!777356 c!436584) b!2705891))

(assert (= (and d!777356 (not c!436584)) b!2705892))

(assert (= (and b!2705892 (not res!1136312)) b!2705893))

(declare-fun m!3095863 () Bool)

(assert (=> b!2705891 m!3095863))

(declare-fun m!3095865 () Bool)

(assert (=> b!2705893 m!3095865))

(assert (=> b!2705713 d!777356))

(declare-fun d!777358 () Bool)

(declare-fun res!1136327 () Bool)

(declare-fun e!1706098 () Bool)

(assert (=> d!777358 (=> res!1136327 e!1706098)))

(assert (=> d!777358 (= res!1136327 (not ((_ is Node!9770) (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))))))

(assert (=> d!777358 (= (isBalanced!2956 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))) e!1706098)))

(declare-fun b!2705906 () Bool)

(declare-fun res!1136326 () Bool)

(declare-fun e!1706099 () Bool)

(assert (=> b!2705906 (=> (not res!1136326) (not e!1706099))))

(assert (=> b!2705906 (= res!1136326 (not (isEmpty!17792 (left!24029 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))))))))

(declare-fun b!2705907 () Bool)

(assert (=> b!2705907 (= e!1706099 (not (isEmpty!17792 (right!24359 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))))))))

(declare-fun b!2705908 () Bool)

(declare-fun res!1136330 () Bool)

(assert (=> b!2705908 (=> (not res!1136330) (not e!1706099))))

(assert (=> b!2705908 (= res!1136330 (isBalanced!2956 (right!24359 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2705909 () Bool)

(declare-fun res!1136329 () Bool)

(assert (=> b!2705909 (=> (not res!1136329) (not e!1706099))))

(assert (=> b!2705909 (= res!1136329 (<= (- (height!1436 (left!24029 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))) (height!1436 (right!24359 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))))) 1))))

(declare-fun b!2705910 () Bool)

(assert (=> b!2705910 (= e!1706098 e!1706099)))

(declare-fun res!1136325 () Bool)

(assert (=> b!2705910 (=> (not res!1136325) (not e!1706099))))

(assert (=> b!2705910 (= res!1136325 (<= (- 1) (- (height!1436 (left!24029 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))) (height!1436 (right!24359 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))))))))

(declare-fun b!2705911 () Bool)

(declare-fun res!1136328 () Bool)

(assert (=> b!2705911 (=> (not res!1136328) (not e!1706099))))

(assert (=> b!2705911 (= res!1136328 (isBalanced!2956 (left!24029 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))))))

(assert (= (and d!777358 (not res!1136327)) b!2705910))

(assert (= (and b!2705910 res!1136325) b!2705909))

(assert (= (and b!2705909 res!1136329) b!2705911))

(assert (= (and b!2705911 res!1136328) b!2705908))

(assert (= (and b!2705908 res!1136330) b!2705906))

(assert (= (and b!2705906 res!1136326) b!2705907))

(declare-fun m!3095867 () Bool)

(assert (=> b!2705910 m!3095867))

(declare-fun m!3095869 () Bool)

(assert (=> b!2705910 m!3095869))

(assert (=> b!2705909 m!3095867))

(assert (=> b!2705909 m!3095869))

(declare-fun m!3095871 () Bool)

(assert (=> b!2705911 m!3095871))

(declare-fun m!3095873 () Bool)

(assert (=> b!2705907 m!3095873))

(declare-fun m!3095875 () Bool)

(assert (=> b!2705906 m!3095875))

(declare-fun m!3095877 () Bool)

(assert (=> b!2705908 m!3095877))

(assert (=> b!2705666 d!777358))

(declare-fun bm!174319 () Bool)

(declare-fun call!174330 () Conc!9770)

(declare-fun call!174328 () Conc!9770)

(assert (=> bm!174319 (= call!174330 call!174328)))

(declare-fun b!2706058 () Bool)

(declare-fun res!1136384 () Bool)

(declare-fun e!1706174 () Bool)

(assert (=> b!2706058 (=> (not res!1136384) (not e!1706174))))

(declare-fun lt!956818 () Conc!9770)

(assert (=> b!2706058 (= res!1136384 (>= (height!1436 lt!956818) (max!0 (height!1436 (c!436512 acc!331)) (height!1436 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2706059 () Bool)

(declare-fun e!1706175 () Conc!9770)

(declare-fun call!174327 () Conc!9770)

(assert (=> b!2706059 (= e!1706175 call!174327)))

(declare-fun b!2706060 () Bool)

(assert (=> b!2706060 (= e!1706174 (= (list!11797 lt!956818) (++!7695 (list!11797 (c!436512 acc!331)) (list!11797 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun c!436641 () Bool)

(declare-fun bm!174320 () Bool)

(declare-fun c!436635 () Bool)

(declare-fun c!436638 () Bool)

(assert (=> bm!174320 (= call!174328 (++!7694 (ite c!436638 (ite c!436635 (right!24359 (c!436512 acc!331)) (right!24359 (right!24359 (c!436512 acc!331)))) (c!436512 acc!331)) (ite c!436638 (c!436512 (_1!18061 lt!956711)) (ite c!436641 (left!24029 (c!436512 (_1!18061 lt!956711))) (left!24029 (left!24029 (c!436512 (_1!18061 lt!956711))))))))))

(declare-fun bm!174321 () Bool)

(declare-fun call!174335 () Conc!9770)

(declare-fun call!174329 () Conc!9770)

(assert (=> bm!174321 (= call!174335 call!174329)))

(declare-fun b!2706061 () Bool)

(declare-fun e!1706179 () Conc!9770)

(assert (=> b!2706061 (= e!1706179 (c!436512 acc!331))))

(declare-fun bm!174322 () Bool)

(declare-fun call!174326 () Conc!9770)

(declare-fun call!174332 () Conc!9770)

(assert (=> bm!174322 (= call!174326 call!174332)))

(declare-fun b!2706062 () Bool)

(declare-fun e!1706178 () Conc!9770)

(declare-fun e!1706172 () Conc!9770)

(assert (=> b!2706062 (= e!1706178 e!1706172)))

(declare-fun lt!956816 () Conc!9770)

(declare-fun call!174334 () Conc!9770)

(assert (=> b!2706062 (= lt!956816 call!174334)))

(declare-fun c!436639 () Bool)

(declare-fun call!174324 () Int)

(declare-fun call!174331 () Int)

(assert (=> b!2706062 (= c!436639 (= call!174324 (- call!174331 3)))))

(declare-fun call!174337 () Int)

(declare-fun bm!174323 () Bool)

(assert (=> bm!174323 (= call!174337 (height!1436 (ite c!436638 (c!436512 acc!331) (right!24359 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2706063 () Bool)

(declare-fun e!1706176 () Conc!9770)

(assert (=> b!2706063 (= e!1706175 e!1706176)))

(declare-fun lt!956817 () Int)

(assert (=> b!2706063 (= c!436638 (< lt!956817 (- 1)))))

(declare-fun b!2706064 () Bool)

(declare-fun call!174339 () Int)

(assert (=> b!2706064 (= c!436635 (>= call!174339 call!174331))))

(declare-fun e!1706180 () Conc!9770)

(assert (=> b!2706064 (= e!1706176 e!1706180)))

(declare-fun b!2706065 () Bool)

(declare-fun e!1706171 () Conc!9770)

(declare-fun call!174325 () Conc!9770)

(assert (=> b!2706065 (= e!1706171 call!174325)))

(declare-fun bm!174324 () Bool)

(declare-fun call!174333 () Conc!9770)

(assert (=> bm!174324 (= call!174332 call!174333)))

(declare-fun b!2706066 () Bool)

(declare-fun res!1136385 () Bool)

(assert (=> b!2706066 (=> (not res!1136385) (not e!1706174))))

(assert (=> b!2706066 (= res!1136385 (<= (height!1436 lt!956818) (+ (max!0 (height!1436 (c!436512 acc!331)) (height!1436 (c!436512 (_1!18061 lt!956711)))) 1)))))

(declare-fun bm!174325 () Bool)

(declare-fun lt!956815 () Conc!9770)

(assert (=> bm!174325 (= call!174324 (height!1436 (ite c!436638 lt!956815 lt!956816)))))

(declare-fun b!2706067 () Bool)

(assert (=> b!2706067 (= e!1706180 e!1706171)))

(assert (=> b!2706067 (= lt!956815 call!174330)))

(declare-fun c!436636 () Bool)

(assert (=> b!2706067 (= c!436636 (= call!174324 (- call!174337 3)))))

(declare-fun b!2706068 () Bool)

(declare-fun e!1706173 () Bool)

(assert (=> b!2706068 (= e!1706173 (isBalanced!2956 (c!436512 (_1!18061 lt!956711))))))

(declare-fun b!2706069 () Bool)

(assert (=> b!2706069 (= e!1706178 call!174332)))

(declare-fun bm!174326 () Bool)

(assert (=> bm!174326 (= call!174325 call!174333)))

(declare-fun b!2706070 () Bool)

(declare-fun e!1706177 () Conc!9770)

(assert (=> b!2706070 (= e!1706177 e!1706179)))

(declare-fun c!436634 () Bool)

(assert (=> b!2706070 (= c!436634 (= (c!436512 (_1!18061 lt!956711)) Empty!9770))))

(declare-fun bm!174327 () Bool)

(assert (=> bm!174327 (= call!174339 (height!1436 (ite c!436638 (left!24029 (c!436512 acc!331)) (left!24029 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2706071 () Bool)

(declare-fun res!1136382 () Bool)

(assert (=> b!2706071 (=> (not res!1136382) (not e!1706174))))

(assert (=> b!2706071 (= res!1136382 (isBalanced!2956 lt!956818))))

(declare-fun bm!174329 () Bool)

(assert (=> bm!174329 (= call!174334 call!174328)))

(declare-fun bm!174328 () Bool)

(declare-fun call!174338 () Conc!9770)

(assert (=> bm!174328 (= call!174338 call!174329)))

(declare-fun d!777360 () Bool)

(assert (=> d!777360 e!1706174))

(declare-fun res!1136383 () Bool)

(assert (=> d!777360 (=> (not res!1136383) (not e!1706174))))

(assert (=> d!777360 (= res!1136383 (appendAssocInst!675 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))))))

(assert (=> d!777360 (= lt!956818 e!1706177)))

(declare-fun c!436640 () Bool)

(assert (=> d!777360 (= c!436640 (= (c!436512 acc!331) Empty!9770))))

(assert (=> d!777360 e!1706173))

(declare-fun res!1136381 () Bool)

(assert (=> d!777360 (=> (not res!1136381) (not e!1706173))))

(assert (=> d!777360 (= res!1136381 (isBalanced!2956 (c!436512 acc!331)))))

(assert (=> d!777360 (= (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))) lt!956818)))

(declare-fun b!2706072 () Bool)

(assert (=> b!2706072 (= e!1706171 call!174325)))

(declare-fun b!2706073 () Bool)

(assert (=> b!2706073 (= e!1706177 (c!436512 (_1!18061 lt!956711)))))

(declare-fun bm!174330 () Bool)

(declare-fun call!174336 () Conc!9770)

(assert (=> bm!174330 (= call!174336 call!174338)))

(declare-fun b!2706074 () Bool)

(assert (=> b!2706074 (= c!436641 (>= call!174337 call!174339))))

(assert (=> b!2706074 (= e!1706176 e!1706178)))

(declare-fun bm!174331 () Bool)

(assert (=> bm!174331 (= call!174329 call!174327)))

(declare-fun b!2706075 () Bool)

(assert (=> b!2706075 (= e!1706172 call!174335)))

(declare-fun c!436637 () Bool)

(declare-fun bm!174332 () Bool)

(declare-fun <>!247 (Conc!9770 Conc!9770) Conc!9770)

(assert (=> bm!174332 (= call!174327 (<>!247 (ite c!436637 (c!436512 acc!331) (ite c!436638 (ite c!436635 (left!24029 (c!436512 acc!331)) (ite c!436636 (left!24029 (right!24359 (c!436512 acc!331))) (left!24029 (c!436512 acc!331)))) (ite c!436639 call!174326 lt!956816))) (ite c!436637 (c!436512 (_1!18061 lt!956711)) (ite c!436638 (ite c!436635 call!174330 (ite c!436636 lt!956815 (left!24029 (right!24359 (c!436512 acc!331))))) (ite c!436639 (right!24359 (c!436512 (_1!18061 lt!956711))) call!174326)))))))

(declare-fun bm!174333 () Bool)

(assert (=> bm!174333 (= call!174333 (<>!247 (ite c!436638 (ite c!436636 (left!24029 (c!436512 acc!331)) call!174336) (ite c!436641 call!174334 (ite c!436639 lt!956816 (right!24359 (left!24029 (c!436512 (_1!18061 lt!956711))))))) (ite c!436638 (ite c!436636 call!174336 lt!956815) (ite c!436641 (right!24359 (c!436512 (_1!18061 lt!956711))) (ite c!436639 (right!24359 (left!24029 (c!436512 (_1!18061 lt!956711)))) (right!24359 (c!436512 (_1!18061 lt!956711))))))))))

(declare-fun bm!174334 () Bool)

(assert (=> bm!174334 (= call!174331 (height!1436 (ite c!436638 (right!24359 (c!436512 acc!331)) (c!436512 (_1!18061 lt!956711)))))))

(declare-fun b!2706076 () Bool)

(assert (=> b!2706076 (= c!436637 (and (<= (- 1) lt!956817) (<= lt!956817 1)))))

(assert (=> b!2706076 (= lt!956817 (- (height!1436 (c!436512 (_1!18061 lt!956711))) (height!1436 (c!436512 acc!331))))))

(assert (=> b!2706076 (= e!1706179 e!1706175)))

(declare-fun b!2706077 () Bool)

(assert (=> b!2706077 (= e!1706172 call!174335)))

(declare-fun b!2706078 () Bool)

(assert (=> b!2706078 (= e!1706180 call!174338)))

(assert (= (and d!777360 res!1136381) b!2706068))

(assert (= (and d!777360 c!436640) b!2706073))

(assert (= (and d!777360 (not c!436640)) b!2706070))

(assert (= (and b!2706070 c!436634) b!2706061))

(assert (= (and b!2706070 (not c!436634)) b!2706076))

(assert (= (and b!2706076 c!436637) b!2706059))

(assert (= (and b!2706076 (not c!436637)) b!2706063))

(assert (= (and b!2706063 c!436638) b!2706064))

(assert (= (and b!2706063 (not c!436638)) b!2706074))

(assert (= (and b!2706064 c!436635) b!2706078))

(assert (= (and b!2706064 (not c!436635)) b!2706067))

(assert (= (and b!2706067 c!436636) b!2706072))

(assert (= (and b!2706067 (not c!436636)) b!2706065))

(assert (= (or b!2706072 b!2706065) bm!174330))

(assert (= (or b!2706072 b!2706065) bm!174326))

(assert (= (or b!2706078 b!2706067) bm!174319))

(assert (= (or b!2706078 bm!174330) bm!174328))

(assert (= (and b!2706074 c!436641) b!2706069))

(assert (= (and b!2706074 (not c!436641)) b!2706062))

(assert (= (and b!2706062 c!436639) b!2706075))

(assert (= (and b!2706062 (not c!436639)) b!2706077))

(assert (= (or b!2706075 b!2706077) bm!174322))

(assert (= (or b!2706075 b!2706077) bm!174321))

(assert (= (or b!2706069 b!2706062) bm!174329))

(assert (= (or b!2706069 bm!174322) bm!174324))

(assert (= (or b!2706067 b!2706074) bm!174323))

(assert (= (or bm!174328 bm!174321) bm!174331))

(assert (= (or bm!174326 bm!174324) bm!174333))

(assert (= (or bm!174319 bm!174329) bm!174320))

(assert (= (or b!2706064 b!2706062) bm!174334))

(assert (= (or b!2706064 b!2706074) bm!174327))

(assert (= (or b!2706067 b!2706062) bm!174325))

(assert (= (or b!2706059 bm!174331) bm!174332))

(assert (= (and d!777360 res!1136383) b!2706071))

(assert (= (and b!2706071 res!1136382) b!2706066))

(assert (= (and b!2706066 res!1136385) b!2706058))

(assert (= (and b!2706058 res!1136384) b!2706060))

(declare-fun m!3095967 () Bool)

(assert (=> b!2706068 m!3095967))

(assert (=> b!2706076 m!3095597))

(assert (=> b!2706076 m!3095595))

(declare-fun m!3095969 () Bool)

(assert (=> bm!174332 m!3095969))

(declare-fun m!3095971 () Bool)

(assert (=> b!2706071 m!3095971))

(declare-fun m!3095973 () Bool)

(assert (=> bm!174320 m!3095973))

(declare-fun m!3095975 () Bool)

(assert (=> bm!174323 m!3095975))

(declare-fun m!3095977 () Bool)

(assert (=> bm!174325 m!3095977))

(assert (=> d!777360 m!3095589))

(assert (=> d!777360 m!3095457))

(declare-fun m!3095979 () Bool)

(assert (=> b!2706066 m!3095979))

(assert (=> b!2706066 m!3095595))

(assert (=> b!2706066 m!3095597))

(assert (=> b!2706066 m!3095595))

(assert (=> b!2706066 m!3095597))

(assert (=> b!2706066 m!3095599))

(assert (=> b!2706058 m!3095979))

(assert (=> b!2706058 m!3095595))

(assert (=> b!2706058 m!3095597))

(assert (=> b!2706058 m!3095595))

(assert (=> b!2706058 m!3095597))

(assert (=> b!2706058 m!3095599))

(declare-fun m!3095981 () Bool)

(assert (=> bm!174327 m!3095981))

(declare-fun m!3095989 () Bool)

(assert (=> bm!174333 m!3095989))

(declare-fun m!3095993 () Bool)

(assert (=> bm!174334 m!3095993))

(declare-fun m!3095995 () Bool)

(assert (=> b!2706060 m!3095995))

(assert (=> b!2706060 m!3095621))

(declare-fun m!3095997 () Bool)

(assert (=> b!2706060 m!3095997))

(assert (=> b!2706060 m!3095621))

(assert (=> b!2706060 m!3095997))

(declare-fun m!3095999 () Bool)

(assert (=> b!2706060 m!3095999))

(assert (=> b!2705666 d!777360))

(declare-fun b!2706114 () Bool)

(declare-fun e!1706198 () List!31341)

(declare-fun e!1706199 () List!31341)

(assert (=> b!2706114 (= e!1706198 e!1706199)))

(declare-fun c!436657 () Bool)

(assert (=> b!2706114 (= c!436657 ((_ is Leaf!14900) (c!436512 (++!7690 acc!331 (_1!18061 lt!956711)))))))

(declare-fun b!2706115 () Bool)

(assert (=> b!2706115 (= e!1706199 (list!11799 (xs!12818 (c!436512 (++!7690 acc!331 (_1!18061 lt!956711))))))))

(declare-fun b!2706113 () Bool)

(assert (=> b!2706113 (= e!1706198 Nil!31241)))

(declare-fun b!2706116 () Bool)

(assert (=> b!2706116 (= e!1706199 (++!7695 (list!11797 (left!24029 (c!436512 (++!7690 acc!331 (_1!18061 lt!956711))))) (list!11797 (right!24359 (c!436512 (++!7690 acc!331 (_1!18061 lt!956711)))))))))

(declare-fun d!777384 () Bool)

(declare-fun c!436656 () Bool)

(assert (=> d!777384 (= c!436656 ((_ is Empty!9770) (c!436512 (++!7690 acc!331 (_1!18061 lt!956711)))))))

(assert (=> d!777384 (= (list!11797 (c!436512 (++!7690 acc!331 (_1!18061 lt!956711)))) e!1706198)))

(assert (= (and d!777384 c!436656) b!2706113))

(assert (= (and d!777384 (not c!436656)) b!2706114))

(assert (= (and b!2706114 c!436657) b!2706115))

(assert (= (and b!2706114 (not c!436657)) b!2706116))

(declare-fun m!3096017 () Bool)

(assert (=> b!2706115 m!3096017))

(declare-fun m!3096019 () Bool)

(assert (=> b!2706116 m!3096019))

(declare-fun m!3096023 () Bool)

(assert (=> b!2706116 m!3096023))

(assert (=> b!2706116 m!3096019))

(assert (=> b!2706116 m!3096023))

(declare-fun m!3096031 () Bool)

(assert (=> b!2706116 m!3096031))

(assert (=> d!777268 d!777384))

(declare-fun d!777394 () Bool)

(declare-fun lt!956821 () Int)

(assert (=> d!777394 (= lt!956821 (size!24113 (list!11793 (_1!18061 lt!956757))))))

(assert (=> d!777394 (= lt!956821 (size!24114 (c!436512 (_1!18061 lt!956757))))))

(assert (=> d!777394 (= (size!24111 (_1!18061 lt!956757)) lt!956821)))

(declare-fun bs!487330 () Bool)

(assert (= bs!487330 d!777394))

(assert (=> bs!487330 m!3095633))

(assert (=> bs!487330 m!3095633))

(declare-fun m!3096035 () Bool)

(assert (=> bs!487330 m!3096035))

(declare-fun m!3096037 () Bool)

(assert (=> bs!487330 m!3096037))

(assert (=> d!777298 d!777394))

(declare-fun b!2706167 () Bool)

(declare-fun e!1706236 () Bool)

(declare-fun e!1706234 () Bool)

(assert (=> b!2706167 (= e!1706236 e!1706234)))

(declare-fun res!1136418 () Bool)

(assert (=> b!2706167 (=> (not res!1136418) (not e!1706234))))

(declare-fun lt!956859 () Option!6157)

(declare-fun get!9748 (Option!6157) tuple2!30866)

(declare-fun get!9749 (Option!6158) tuple2!30868)

(declare-fun maxPrefixZipper!461 (LexerInterface!4367 List!31342 List!31340) Option!6158)

(assert (=> b!2706167 (= res!1136418 (= (_1!18065 (get!9748 lt!956859)) (_1!18066 (get!9749 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 treated!9))))))))

(declare-fun d!777398 () Bool)

(declare-fun e!1706239 () Bool)

(assert (=> d!777398 e!1706239))

(declare-fun res!1136419 () Bool)

(assert (=> d!777398 (=> (not res!1136419) (not e!1706239))))

(declare-fun isDefined!4875 (Option!6157) Bool)

(declare-fun isDefined!4876 (Option!6158) Bool)

(assert (=> d!777398 (= res!1136419 (= (isDefined!4875 lt!956859) (isDefined!4876 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 treated!9)))))))

(declare-fun e!1706235 () Option!6157)

(assert (=> d!777398 (= lt!956859 e!1706235)))

(declare-fun c!436672 () Bool)

(assert (=> d!777398 (= c!436672 (and ((_ is Cons!31242) rules!1182) ((_ is Nil!31242) (t!225780 rules!1182))))))

(declare-datatypes ((Unit!45295 0))(
  ( (Unit!45296) )
))
(declare-fun lt!956858 () Unit!45295)

(declare-fun lt!956862 () Unit!45295)

(assert (=> d!777398 (= lt!956858 lt!956862)))

(declare-fun lt!956864 () List!31340)

(declare-fun lt!956863 () List!31340)

(declare-fun isPrefix!2474 (List!31340 List!31340) Bool)

(assert (=> d!777398 (isPrefix!2474 lt!956864 lt!956863)))

(declare-fun lemmaIsPrefixRefl!1600 (List!31340 List!31340) Unit!45295)

(assert (=> d!777398 (= lt!956862 (lemmaIsPrefixRefl!1600 lt!956864 lt!956863))))

(assert (=> d!777398 (= lt!956863 (list!11792 treated!9))))

(assert (=> d!777398 (= lt!956864 (list!11792 treated!9))))

(assert (=> d!777398 (rulesValidInductive!1657 thiss!11556 rules!1182)))

(assert (=> d!777398 (= (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 treated!9) lt!956859)))

(declare-fun e!1706237 () Bool)

(declare-fun b!2706168 () Bool)

(assert (=> b!2706168 (= e!1706237 (= (list!11792 (_2!18065 (get!9748 lt!956859))) (_2!18066 (get!9749 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 treated!9))))))))

(declare-fun b!2706169 () Bool)

(assert (=> b!2706169 (= e!1706234 (= (list!11792 (_2!18065 (get!9748 lt!956859))) (_2!18066 (get!9749 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 treated!9))))))))

(declare-fun b!2706170 () Bool)

(declare-fun e!1706238 () Bool)

(assert (=> b!2706170 (= e!1706239 e!1706238)))

(declare-fun res!1136415 () Bool)

(assert (=> b!2706170 (=> res!1136415 e!1706238)))

(assert (=> b!2706170 (= res!1136415 (not (isDefined!4875 lt!956859)))))

(declare-fun b!2706171 () Bool)

(declare-fun res!1136416 () Bool)

(assert (=> b!2706171 (=> (not res!1136416) (not e!1706239))))

(assert (=> b!2706171 (= res!1136416 e!1706236)))

(declare-fun res!1136417 () Bool)

(assert (=> b!2706171 (=> res!1136417 e!1706236)))

(assert (=> b!2706171 (= res!1136417 (not (isDefined!4875 lt!956859)))))

(declare-fun bm!174337 () Bool)

(declare-fun call!174342 () Option!6157)

(declare-fun maxPrefixOneRuleZipperSequence!470 (LexerInterface!4367 Rule!9342 BalanceConc!19152) Option!6157)

(assert (=> bm!174337 (= call!174342 (maxPrefixOneRuleZipperSequence!470 thiss!11556 (h!36662 rules!1182) treated!9))))

(declare-fun b!2706172 () Bool)

(assert (=> b!2706172 (= e!1706235 call!174342)))

(declare-fun b!2706173 () Bool)

(assert (=> b!2706173 (= e!1706238 e!1706237)))

(declare-fun res!1136414 () Bool)

(assert (=> b!2706173 (=> (not res!1136414) (not e!1706237))))

(assert (=> b!2706173 (= res!1136414 (= (_1!18065 (get!9748 lt!956859)) (_1!18066 (get!9749 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 treated!9))))))))

(declare-fun b!2706174 () Bool)

(declare-fun lt!956861 () Option!6157)

(declare-fun lt!956860 () Option!6157)

(assert (=> b!2706174 (= e!1706235 (ite (and ((_ is None!6156) lt!956861) ((_ is None!6156) lt!956860)) None!6156 (ite ((_ is None!6156) lt!956860) lt!956861 (ite ((_ is None!6156) lt!956861) lt!956860 (ite (>= (size!24105 (_1!18065 (v!32966 lt!956861))) (size!24105 (_1!18065 (v!32966 lt!956860)))) lt!956861 lt!956860)))))))

(assert (=> b!2706174 (= lt!956861 call!174342)))

(assert (=> b!2706174 (= lt!956860 (maxPrefixZipperSequence!1017 thiss!11556 (t!225780 rules!1182) treated!9))))

(assert (= (and d!777398 c!436672) b!2706172))

(assert (= (and d!777398 (not c!436672)) b!2706174))

(assert (= (or b!2706172 b!2706174) bm!174337))

(assert (= (and d!777398 res!1136419) b!2706171))

(assert (= (and b!2706171 (not res!1136417)) b!2706167))

(assert (= (and b!2706167 res!1136418) b!2706169))

(assert (= (and b!2706171 res!1136416) b!2706170))

(assert (= (and b!2706170 (not res!1136415)) b!2706173))

(assert (= (and b!2706173 res!1136414) b!2706168))

(declare-fun m!3096089 () Bool)

(assert (=> b!2706173 m!3096089))

(assert (=> b!2706173 m!3095271))

(assert (=> b!2706173 m!3095271))

(assert (=> b!2706173 m!3095743))

(assert (=> b!2706173 m!3095743))

(declare-fun m!3096091 () Bool)

(assert (=> b!2706173 m!3096091))

(declare-fun m!3096093 () Bool)

(assert (=> bm!174337 m!3096093))

(declare-fun m!3096095 () Bool)

(assert (=> b!2706174 m!3096095))

(declare-fun m!3096097 () Bool)

(assert (=> b!2706171 m!3096097))

(assert (=> b!2706168 m!3095743))

(assert (=> b!2706168 m!3096091))

(assert (=> b!2706168 m!3095271))

(assert (=> b!2706168 m!3095271))

(assert (=> b!2706168 m!3095743))

(assert (=> b!2706168 m!3096089))

(declare-fun m!3096099 () Bool)

(assert (=> b!2706168 m!3096099))

(assert (=> b!2706170 m!3096097))

(assert (=> b!2706167 m!3096089))

(assert (=> b!2706167 m!3095271))

(assert (=> b!2706167 m!3095271))

(declare-fun m!3096101 () Bool)

(assert (=> b!2706167 m!3096101))

(assert (=> b!2706167 m!3096101))

(declare-fun m!3096103 () Bool)

(assert (=> b!2706167 m!3096103))

(assert (=> b!2706169 m!3095271))

(assert (=> b!2706169 m!3096101))

(assert (=> b!2706169 m!3096101))

(assert (=> b!2706169 m!3096103))

(assert (=> b!2706169 m!3095271))

(assert (=> b!2706169 m!3096089))

(assert (=> b!2706169 m!3096099))

(assert (=> d!777398 m!3095271))

(assert (=> d!777398 m!3096101))

(assert (=> d!777398 m!3095271))

(assert (=> d!777398 m!3096097))

(declare-fun m!3096105 () Bool)

(assert (=> d!777398 m!3096105))

(assert (=> d!777398 m!3096101))

(declare-fun m!3096107 () Bool)

(assert (=> d!777398 m!3096107))

(declare-fun m!3096109 () Bool)

(assert (=> d!777398 m!3096109))

(assert (=> d!777398 m!3095285))

(assert (=> d!777298 d!777398))

(declare-fun d!777420 () Bool)

(declare-fun e!1706240 () Bool)

(assert (=> d!777420 e!1706240))

(declare-fun res!1136420 () Bool)

(assert (=> d!777420 (=> (not res!1136420) (not e!1706240))))

(assert (=> d!777420 (= res!1136420 (isBalanced!2956 (prepend!1096 (c!436512 (_1!18061 lt!956759)) (_1!18065 (v!32966 lt!956758)))))))

(declare-fun lt!956865 () BalanceConc!19154)

(assert (=> d!777420 (= lt!956865 (BalanceConc!19155 (prepend!1096 (c!436512 (_1!18061 lt!956759)) (_1!18065 (v!32966 lt!956758)))))))

(assert (=> d!777420 (= (prepend!1095 (_1!18061 lt!956759) (_1!18065 (v!32966 lt!956758))) lt!956865)))

(declare-fun b!2706175 () Bool)

(assert (=> b!2706175 (= e!1706240 (= (list!11793 lt!956865) (Cons!31241 (_1!18065 (v!32966 lt!956758)) (list!11793 (_1!18061 lt!956759)))))))

(assert (= (and d!777420 res!1136420) b!2706175))

(declare-fun m!3096111 () Bool)

(assert (=> d!777420 m!3096111))

(assert (=> d!777420 m!3096111))

(declare-fun m!3096113 () Bool)

(assert (=> d!777420 m!3096113))

(declare-fun m!3096115 () Bool)

(assert (=> b!2706175 m!3096115))

(declare-fun m!3096117 () Bool)

(assert (=> b!2706175 m!3096117))

(assert (=> b!2705679 d!777420))

(declare-fun b!2706176 () Bool)

(declare-fun lt!956866 () tuple2!30858)

(declare-fun e!1706243 () Bool)

(assert (=> b!2706176 (= e!1706243 (= (list!11792 (_2!18061 lt!956866)) (_2!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 (_2!18065 (v!32966 lt!956758)))))))))

(declare-fun b!2706178 () Bool)

(declare-fun e!1706241 () Bool)

(assert (=> b!2706178 (= e!1706241 (= (list!11792 (_2!18061 lt!956866)) (list!11792 (_2!18065 (v!32966 lt!956758)))))))

(declare-fun b!2706179 () Bool)

(declare-fun e!1706242 () tuple2!30858)

(assert (=> b!2706179 (= e!1706242 (tuple2!30859 (BalanceConc!19155 Empty!9770) (_2!18065 (v!32966 lt!956758))))))

(declare-fun b!2706180 () Bool)

(declare-fun res!1136423 () Bool)

(assert (=> b!2706180 (=> (not res!1136423) (not e!1706243))))

(assert (=> b!2706180 (= res!1136423 (= (list!11793 (_1!18061 lt!956866)) (_1!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 (_2!18065 (v!32966 lt!956758)))))))))

(declare-fun b!2706181 () Bool)

(declare-fun e!1706244 () Bool)

(assert (=> b!2706181 (= e!1706241 e!1706244)))

(declare-fun res!1136421 () Bool)

(assert (=> b!2706181 (= res!1136421 (< (size!24110 (_2!18061 lt!956866)) (size!24110 (_2!18065 (v!32966 lt!956758)))))))

(assert (=> b!2706181 (=> (not res!1136421) (not e!1706244))))

(declare-fun b!2706182 () Bool)

(declare-fun lt!956868 () tuple2!30858)

(declare-fun lt!956867 () Option!6157)

(assert (=> b!2706182 (= e!1706242 (tuple2!30859 (prepend!1095 (_1!18061 lt!956868) (_1!18065 (v!32966 lt!956867))) (_2!18061 lt!956868)))))

(assert (=> b!2706182 (= lt!956868 (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956867))))))

(declare-fun b!2706177 () Bool)

(assert (=> b!2706177 (= e!1706244 (not (isEmpty!17788 (_1!18061 lt!956866))))))

(declare-fun d!777422 () Bool)

(assert (=> d!777422 e!1706243))

(declare-fun res!1136422 () Bool)

(assert (=> d!777422 (=> (not res!1136422) (not e!1706243))))

(assert (=> d!777422 (= res!1136422 e!1706241)))

(declare-fun c!436673 () Bool)

(assert (=> d!777422 (= c!436673 (> (size!24111 (_1!18061 lt!956866)) 0))))

(assert (=> d!777422 (= lt!956866 e!1706242)))

(declare-fun c!436674 () Bool)

(assert (=> d!777422 (= c!436674 ((_ is Some!6156) lt!956867))))

(assert (=> d!777422 (= lt!956867 (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956758))))))

(assert (=> d!777422 (= (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956758))) lt!956866)))

(assert (= (and d!777422 c!436674) b!2706182))

(assert (= (and d!777422 (not c!436674)) b!2706179))

(assert (= (and d!777422 c!436673) b!2706181))

(assert (= (and d!777422 (not c!436673)) b!2706178))

(assert (= (and b!2706181 res!1136421) b!2706177))

(assert (= (and d!777422 res!1136422) b!2706180))

(assert (= (and b!2706180 res!1136423) b!2706176))

(declare-fun m!3096119 () Bool)

(assert (=> d!777422 m!3096119))

(declare-fun m!3096121 () Bool)

(assert (=> d!777422 m!3096121))

(declare-fun m!3096123 () Bool)

(assert (=> b!2706181 m!3096123))

(declare-fun m!3096125 () Bool)

(assert (=> b!2706181 m!3096125))

(declare-fun m!3096127 () Bool)

(assert (=> b!2706178 m!3096127))

(declare-fun m!3096129 () Bool)

(assert (=> b!2706178 m!3096129))

(declare-fun m!3096131 () Bool)

(assert (=> b!2706180 m!3096131))

(assert (=> b!2706180 m!3096129))

(assert (=> b!2706180 m!3096129))

(declare-fun m!3096133 () Bool)

(assert (=> b!2706180 m!3096133))

(declare-fun m!3096135 () Bool)

(assert (=> b!2706177 m!3096135))

(declare-fun m!3096137 () Bool)

(assert (=> b!2706182 m!3096137))

(declare-fun m!3096139 () Bool)

(assert (=> b!2706182 m!3096139))

(assert (=> b!2706176 m!3096127))

(assert (=> b!2706176 m!3096129))

(assert (=> b!2706176 m!3096129))

(assert (=> b!2706176 m!3096133))

(assert (=> b!2705679 d!777422))

(declare-fun d!777424 () Bool)

(declare-fun lt!956869 () Int)

(assert (=> d!777424 (= lt!956869 (size!24113 (list!11793 (_1!18061 lt!956751))))))

(assert (=> d!777424 (= lt!956869 (size!24114 (c!436512 (_1!18061 lt!956751))))))

(assert (=> d!777424 (= (size!24111 (_1!18061 lt!956751)) lt!956869)))

(declare-fun bs!487338 () Bool)

(assert (= bs!487338 d!777424))

(assert (=> bs!487338 m!3095579))

(assert (=> bs!487338 m!3095579))

(declare-fun m!3096141 () Bool)

(assert (=> bs!487338 m!3096141))

(declare-fun m!3096143 () Bool)

(assert (=> bs!487338 m!3096143))

(assert (=> d!777282 d!777424))

(declare-fun b!2706183 () Bool)

(declare-fun e!1706247 () Bool)

(declare-fun e!1706245 () Bool)

(assert (=> b!2706183 (= e!1706247 e!1706245)))

(declare-fun res!1136428 () Bool)

(assert (=> b!2706183 (=> (not res!1136428) (not e!1706245))))

(declare-fun lt!956871 () Option!6157)

(assert (=> b!2706183 (= res!1136428 (= (_1!18065 (get!9748 lt!956871)) (_1!18066 (get!9749 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 totalInput!328))))))))

(declare-fun d!777426 () Bool)

(declare-fun e!1706250 () Bool)

(assert (=> d!777426 e!1706250))

(declare-fun res!1136429 () Bool)

(assert (=> d!777426 (=> (not res!1136429) (not e!1706250))))

(assert (=> d!777426 (= res!1136429 (= (isDefined!4875 lt!956871) (isDefined!4876 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 totalInput!328)))))))

(declare-fun e!1706246 () Option!6157)

(assert (=> d!777426 (= lt!956871 e!1706246)))

(declare-fun c!436675 () Bool)

(assert (=> d!777426 (= c!436675 (and ((_ is Cons!31242) rules!1182) ((_ is Nil!31242) (t!225780 rules!1182))))))

(declare-fun lt!956870 () Unit!45295)

(declare-fun lt!956874 () Unit!45295)

(assert (=> d!777426 (= lt!956870 lt!956874)))

(declare-fun lt!956876 () List!31340)

(declare-fun lt!956875 () List!31340)

(assert (=> d!777426 (isPrefix!2474 lt!956876 lt!956875)))

(assert (=> d!777426 (= lt!956874 (lemmaIsPrefixRefl!1600 lt!956876 lt!956875))))

(assert (=> d!777426 (= lt!956875 (list!11792 totalInput!328))))

(assert (=> d!777426 (= lt!956876 (list!11792 totalInput!328))))

(assert (=> d!777426 (rulesValidInductive!1657 thiss!11556 rules!1182)))

(assert (=> d!777426 (= (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 totalInput!328) lt!956871)))

(declare-fun b!2706184 () Bool)

(declare-fun e!1706248 () Bool)

(assert (=> b!2706184 (= e!1706248 (= (list!11792 (_2!18065 (get!9748 lt!956871))) (_2!18066 (get!9749 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 totalInput!328))))))))

(declare-fun b!2706185 () Bool)

(assert (=> b!2706185 (= e!1706245 (= (list!11792 (_2!18065 (get!9748 lt!956871))) (_2!18066 (get!9749 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 totalInput!328))))))))

(declare-fun b!2706186 () Bool)

(declare-fun e!1706249 () Bool)

(assert (=> b!2706186 (= e!1706250 e!1706249)))

(declare-fun res!1136425 () Bool)

(assert (=> b!2706186 (=> res!1136425 e!1706249)))

(assert (=> b!2706186 (= res!1136425 (not (isDefined!4875 lt!956871)))))

(declare-fun b!2706187 () Bool)

(declare-fun res!1136426 () Bool)

(assert (=> b!2706187 (=> (not res!1136426) (not e!1706250))))

(assert (=> b!2706187 (= res!1136426 e!1706247)))

(declare-fun res!1136427 () Bool)

(assert (=> b!2706187 (=> res!1136427 e!1706247)))

(assert (=> b!2706187 (= res!1136427 (not (isDefined!4875 lt!956871)))))

(declare-fun call!174343 () Option!6157)

(declare-fun bm!174338 () Bool)

(assert (=> bm!174338 (= call!174343 (maxPrefixOneRuleZipperSequence!470 thiss!11556 (h!36662 rules!1182) totalInput!328))))

(declare-fun b!2706188 () Bool)

(assert (=> b!2706188 (= e!1706246 call!174343)))

(declare-fun b!2706189 () Bool)

(assert (=> b!2706189 (= e!1706249 e!1706248)))

(declare-fun res!1136424 () Bool)

(assert (=> b!2706189 (=> (not res!1136424) (not e!1706248))))

(assert (=> b!2706189 (= res!1136424 (= (_1!18065 (get!9748 lt!956871)) (_1!18066 (get!9749 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 totalInput!328))))))))

(declare-fun b!2706190 () Bool)

(declare-fun lt!956873 () Option!6157)

(declare-fun lt!956872 () Option!6157)

(assert (=> b!2706190 (= e!1706246 (ite (and ((_ is None!6156) lt!956873) ((_ is None!6156) lt!956872)) None!6156 (ite ((_ is None!6156) lt!956872) lt!956873 (ite ((_ is None!6156) lt!956873) lt!956872 (ite (>= (size!24105 (_1!18065 (v!32966 lt!956873))) (size!24105 (_1!18065 (v!32966 lt!956872)))) lt!956873 lt!956872)))))))

(assert (=> b!2706190 (= lt!956873 call!174343)))

(assert (=> b!2706190 (= lt!956872 (maxPrefixZipperSequence!1017 thiss!11556 (t!225780 rules!1182) totalInput!328))))

(assert (= (and d!777426 c!436675) b!2706188))

(assert (= (and d!777426 (not c!436675)) b!2706190))

(assert (= (or b!2706188 b!2706190) bm!174338))

(assert (= (and d!777426 res!1136429) b!2706187))

(assert (= (and b!2706187 (not res!1136427)) b!2706183))

(assert (= (and b!2706183 res!1136428) b!2706185))

(assert (= (and b!2706187 res!1136426) b!2706186))

(assert (= (and b!2706186 (not res!1136425)) b!2706189))

(assert (= (and b!2706189 res!1136424) b!2706184))

(declare-fun m!3096145 () Bool)

(assert (=> b!2706189 m!3096145))

(assert (=> b!2706189 m!3095269))

(assert (=> b!2706189 m!3095269))

(assert (=> b!2706189 m!3095761))

(assert (=> b!2706189 m!3095761))

(declare-fun m!3096147 () Bool)

(assert (=> b!2706189 m!3096147))

(declare-fun m!3096149 () Bool)

(assert (=> bm!174338 m!3096149))

(declare-fun m!3096151 () Bool)

(assert (=> b!2706190 m!3096151))

(declare-fun m!3096153 () Bool)

(assert (=> b!2706187 m!3096153))

(assert (=> b!2706184 m!3095761))

(assert (=> b!2706184 m!3096147))

(assert (=> b!2706184 m!3095269))

(assert (=> b!2706184 m!3095269))

(assert (=> b!2706184 m!3095761))

(assert (=> b!2706184 m!3096145))

(declare-fun m!3096155 () Bool)

(assert (=> b!2706184 m!3096155))

(assert (=> b!2706186 m!3096153))

(assert (=> b!2706183 m!3096145))

(assert (=> b!2706183 m!3095269))

(assert (=> b!2706183 m!3095269))

(declare-fun m!3096157 () Bool)

(assert (=> b!2706183 m!3096157))

(assert (=> b!2706183 m!3096157))

(declare-fun m!3096159 () Bool)

(assert (=> b!2706183 m!3096159))

(assert (=> b!2706185 m!3095269))

(assert (=> b!2706185 m!3096157))

(assert (=> b!2706185 m!3096157))

(assert (=> b!2706185 m!3096159))

(assert (=> b!2706185 m!3095269))

(assert (=> b!2706185 m!3096145))

(assert (=> b!2706185 m!3096155))

(assert (=> d!777426 m!3095269))

(assert (=> d!777426 m!3096157))

(assert (=> d!777426 m!3095269))

(assert (=> d!777426 m!3096153))

(declare-fun m!3096161 () Bool)

(assert (=> d!777426 m!3096161))

(assert (=> d!777426 m!3096157))

(declare-fun m!3096163 () Bool)

(assert (=> d!777426 m!3096163))

(declare-fun m!3096165 () Bool)

(assert (=> d!777426 m!3096165))

(assert (=> d!777426 m!3095285))

(assert (=> d!777282 d!777426))

(declare-fun d!777428 () Bool)

(assert (=> d!777428 (= (list!11793 lt!956756) (list!11797 (c!436512 lt!956756)))))

(declare-fun bs!487339 () Bool)

(assert (= bs!487339 d!777428))

(declare-fun m!3096167 () Bool)

(assert (=> bs!487339 m!3096167))

(assert (=> b!2705669 d!777428))

(declare-fun b!2706200 () Bool)

(declare-fun e!1706256 () List!31341)

(assert (=> b!2706200 (= e!1706256 (Cons!31241 (h!36661 (list!11793 acc!331)) (++!7695 (t!225779 (list!11793 acc!331)) (list!11793 (_1!18061 lt!956711)))))))

(declare-fun b!2706202 () Bool)

(declare-fun e!1706255 () Bool)

(declare-fun lt!956879 () List!31341)

(assert (=> b!2706202 (= e!1706255 (or (not (= (list!11793 (_1!18061 lt!956711)) Nil!31241)) (= lt!956879 (list!11793 acc!331))))))

(declare-fun d!777430 () Bool)

(assert (=> d!777430 e!1706255))

(declare-fun res!1136435 () Bool)

(assert (=> d!777430 (=> (not res!1136435) (not e!1706255))))

(declare-fun content!4420 (List!31341) (InoxSet Token!9004))

(assert (=> d!777430 (= res!1136435 (= (content!4420 lt!956879) ((_ map or) (content!4420 (list!11793 acc!331)) (content!4420 (list!11793 (_1!18061 lt!956711))))))))

(assert (=> d!777430 (= lt!956879 e!1706256)))

(declare-fun c!436678 () Bool)

(assert (=> d!777430 (= c!436678 ((_ is Nil!31241) (list!11793 acc!331)))))

(assert (=> d!777430 (= (++!7695 (list!11793 acc!331) (list!11793 (_1!18061 lt!956711))) lt!956879)))

(declare-fun b!2706199 () Bool)

(assert (=> b!2706199 (= e!1706256 (list!11793 (_1!18061 lt!956711)))))

(declare-fun b!2706201 () Bool)

(declare-fun res!1136434 () Bool)

(assert (=> b!2706201 (=> (not res!1136434) (not e!1706255))))

(assert (=> b!2706201 (= res!1136434 (= (size!24113 lt!956879) (+ (size!24113 (list!11793 acc!331)) (size!24113 (list!11793 (_1!18061 lt!956711))))))))

(assert (= (and d!777430 c!436678) b!2706199))

(assert (= (and d!777430 (not c!436678)) b!2706200))

(assert (= (and d!777430 res!1136435) b!2706201))

(assert (= (and b!2706201 res!1136434) b!2706202))

(assert (=> b!2706200 m!3095603))

(declare-fun m!3096169 () Bool)

(assert (=> b!2706200 m!3096169))

(declare-fun m!3096171 () Bool)

(assert (=> d!777430 m!3096171))

(assert (=> d!777430 m!3095255))

(declare-fun m!3096173 () Bool)

(assert (=> d!777430 m!3096173))

(assert (=> d!777430 m!3095603))

(declare-fun m!3096175 () Bool)

(assert (=> d!777430 m!3096175))

(declare-fun m!3096177 () Bool)

(assert (=> b!2706201 m!3096177))

(assert (=> b!2706201 m!3095255))

(declare-fun m!3096179 () Bool)

(assert (=> b!2706201 m!3096179))

(assert (=> b!2706201 m!3095603))

(declare-fun m!3096181 () Bool)

(assert (=> b!2706201 m!3096181))

(assert (=> b!2705669 d!777430))

(assert (=> b!2705669 d!777296))

(declare-fun d!777432 () Bool)

(assert (=> d!777432 (= (list!11793 (_1!18061 lt!956711)) (list!11797 (c!436512 (_1!18061 lt!956711))))))

(declare-fun bs!487340 () Bool)

(assert (= bs!487340 d!777432))

(assert (=> bs!487340 m!3095997))

(assert (=> b!2705669 d!777432))

(declare-fun d!777434 () Bool)

(declare-fun lt!956882 () Int)

(assert (=> d!777434 (>= lt!956882 0)))

(declare-fun e!1706259 () Int)

(assert (=> d!777434 (= lt!956882 e!1706259)))

(declare-fun c!436681 () Bool)

(assert (=> d!777434 (= c!436681 ((_ is Nil!31240) lt!956714))))

(assert (=> d!777434 (= (size!24109 lt!956714) lt!956882)))

(declare-fun b!2706207 () Bool)

(assert (=> b!2706207 (= e!1706259 0)))

(declare-fun b!2706208 () Bool)

(assert (=> b!2706208 (= e!1706259 (+ 1 (size!24109 (t!225778 lt!956714))))))

(assert (= (and d!777434 c!436681) b!2706207))

(assert (= (and d!777434 (not c!436681)) b!2706208))

(declare-fun m!3096183 () Bool)

(assert (=> b!2706208 m!3096183))

(assert (=> b!2705452 d!777434))

(declare-fun d!777436 () Bool)

(declare-fun lt!956883 () Int)

(assert (=> d!777436 (>= lt!956883 0)))

(declare-fun e!1706260 () Int)

(assert (=> d!777436 (= lt!956883 e!1706260)))

(declare-fun c!436682 () Bool)

(assert (=> d!777436 (= c!436682 ((_ is Nil!31240) (list!11792 treated!9)))))

(assert (=> d!777436 (= (size!24109 (list!11792 treated!9)) lt!956883)))

(declare-fun b!2706209 () Bool)

(assert (=> b!2706209 (= e!1706260 0)))

(declare-fun b!2706210 () Bool)

(assert (=> b!2706210 (= e!1706260 (+ 1 (size!24109 (t!225778 (list!11792 treated!9)))))))

(assert (= (and d!777436 c!436682) b!2706209))

(assert (= (and d!777436 (not c!436682)) b!2706210))

(assert (=> b!2706210 m!3095813))

(assert (=> b!2705452 d!777436))

(declare-fun d!777438 () Bool)

(declare-fun lt!956884 () Int)

(assert (=> d!777438 (>= lt!956884 0)))

(declare-fun e!1706261 () Int)

(assert (=> d!777438 (= lt!956884 e!1706261)))

(declare-fun c!436683 () Bool)

(assert (=> d!777438 (= c!436683 ((_ is Nil!31240) (list!11792 input!603)))))

(assert (=> d!777438 (= (size!24109 (list!11792 input!603)) lt!956884)))

(declare-fun b!2706211 () Bool)

(assert (=> b!2706211 (= e!1706261 0)))

(declare-fun b!2706212 () Bool)

(assert (=> b!2706212 (= e!1706261 (+ 1 (size!24109 (t!225778 (list!11792 input!603)))))))

(assert (= (and d!777438 c!436683) b!2706211))

(assert (= (and d!777438 (not c!436683)) b!2706212))

(declare-fun m!3096185 () Bool)

(assert (=> b!2706212 m!3096185))

(assert (=> b!2705452 d!777438))

(declare-fun d!777440 () Bool)

(assert (=> d!777440 (= (list!11792 (_2!18061 lt!956751)) (list!11796 (c!436511 (_2!18061 lt!956751))))))

(declare-fun bs!487341 () Bool)

(assert (= bs!487341 d!777440))

(declare-fun m!3096187 () Bool)

(assert (=> bs!487341 m!3096187))

(assert (=> b!2705653 d!777440))

(assert (=> b!2705653 d!777186))

(assert (=> b!2705673 d!777334))

(assert (=> b!2705673 d!777318))

(assert (=> b!2705673 d!777210))

(assert (=> b!2705431 d!777262))

(declare-fun b!2706214 () Bool)

(declare-fun e!1706262 () List!31341)

(declare-fun e!1706263 () List!31341)

(assert (=> b!2706214 (= e!1706262 e!1706263)))

(declare-fun c!436685 () Bool)

(assert (=> b!2706214 (= c!436685 ((_ is Leaf!14900) (c!436512 (_1!18061 lt!956710))))))

(declare-fun b!2706215 () Bool)

(assert (=> b!2706215 (= e!1706263 (list!11799 (xs!12818 (c!436512 (_1!18061 lt!956710)))))))

(declare-fun b!2706213 () Bool)

(assert (=> b!2706213 (= e!1706262 Nil!31241)))

(declare-fun b!2706216 () Bool)

(assert (=> b!2706216 (= e!1706263 (++!7695 (list!11797 (left!24029 (c!436512 (_1!18061 lt!956710)))) (list!11797 (right!24359 (c!436512 (_1!18061 lt!956710))))))))

(declare-fun d!777442 () Bool)

(declare-fun c!436684 () Bool)

(assert (=> d!777442 (= c!436684 ((_ is Empty!9770) (c!436512 (_1!18061 lt!956710))))))

(assert (=> d!777442 (= (list!11797 (c!436512 (_1!18061 lt!956710))) e!1706262)))

(assert (= (and d!777442 c!436684) b!2706213))

(assert (= (and d!777442 (not c!436684)) b!2706214))

(assert (= (and b!2706214 c!436685) b!2706215))

(assert (= (and b!2706214 (not c!436685)) b!2706216))

(declare-fun m!3096189 () Bool)

(assert (=> b!2706215 m!3096189))

(declare-fun m!3096191 () Bool)

(assert (=> b!2706216 m!3096191))

(declare-fun m!3096193 () Bool)

(assert (=> b!2706216 m!3096193))

(assert (=> b!2706216 m!3096191))

(assert (=> b!2706216 m!3096193))

(declare-fun m!3096195 () Bool)

(assert (=> b!2706216 m!3096195))

(assert (=> d!777294 d!777442))

(assert (=> b!2705651 d!777440))

(assert (=> b!2705651 d!777328))

(assert (=> b!2705651 d!777186))

(declare-fun d!777444 () Bool)

(declare-fun c!436688 () Bool)

(assert (=> d!777444 (= c!436688 ((_ is Nil!31240) lt!956714))))

(declare-fun e!1706266 () (InoxSet C!16004))

(assert (=> d!777444 (= (content!4419 lt!956714) e!1706266)))

(declare-fun b!2706221 () Bool)

(assert (=> b!2706221 (= e!1706266 ((as const (Array C!16004 Bool)) false))))

(declare-fun b!2706222 () Bool)

(assert (=> b!2706222 (= e!1706266 ((_ map or) (store ((as const (Array C!16004 Bool)) false) (h!36660 lt!956714) true) (content!4419 (t!225778 lt!956714))))))

(assert (= (and d!777444 c!436688) b!2706221))

(assert (= (and d!777444 (not c!436688)) b!2706222))

(declare-fun m!3096197 () Bool)

(assert (=> b!2706222 m!3096197))

(declare-fun m!3096199 () Bool)

(assert (=> b!2706222 m!3096199))

(assert (=> d!777194 d!777444))

(declare-fun d!777446 () Bool)

(declare-fun c!436689 () Bool)

(assert (=> d!777446 (= c!436689 ((_ is Nil!31240) (list!11792 treated!9)))))

(declare-fun e!1706267 () (InoxSet C!16004))

(assert (=> d!777446 (= (content!4419 (list!11792 treated!9)) e!1706267)))

(declare-fun b!2706223 () Bool)

(assert (=> b!2706223 (= e!1706267 ((as const (Array C!16004 Bool)) false))))

(declare-fun b!2706224 () Bool)

(assert (=> b!2706224 (= e!1706267 ((_ map or) (store ((as const (Array C!16004 Bool)) false) (h!36660 (list!11792 treated!9)) true) (content!4419 (t!225778 (list!11792 treated!9)))))))

(assert (= (and d!777446 c!436689) b!2706223))

(assert (= (and d!777446 (not c!436689)) b!2706224))

(declare-fun m!3096201 () Bool)

(assert (=> b!2706224 m!3096201))

(assert (=> b!2706224 m!3095809))

(assert (=> d!777194 d!777446))

(declare-fun d!777448 () Bool)

(declare-fun c!436690 () Bool)

(assert (=> d!777448 (= c!436690 ((_ is Nil!31240) (list!11792 input!603)))))

(declare-fun e!1706268 () (InoxSet C!16004))

(assert (=> d!777448 (= (content!4419 (list!11792 input!603)) e!1706268)))

(declare-fun b!2706225 () Bool)

(assert (=> b!2706225 (= e!1706268 ((as const (Array C!16004 Bool)) false))))

(declare-fun b!2706226 () Bool)

(assert (=> b!2706226 (= e!1706268 ((_ map or) (store ((as const (Array C!16004 Bool)) false) (h!36660 (list!11792 input!603)) true) (content!4419 (t!225778 (list!11792 input!603)))))))

(assert (= (and d!777448 c!436690) b!2706225))

(assert (= (and d!777448 (not c!436690)) b!2706226))

(declare-fun m!3096203 () Bool)

(assert (=> b!2706226 m!3096203))

(declare-fun m!3096205 () Bool)

(assert (=> b!2706226 m!3096205))

(assert (=> d!777194 d!777448))

(declare-fun b!2706227 () Bool)

(declare-fun res!1136436 () Bool)

(declare-fun e!1706269 () Bool)

(assert (=> b!2706227 (=> (not res!1136436) (not e!1706269))))

(assert (=> b!2706227 (= res!1136436 (not (isEmpty!17789 (left!24028 (c!436511 totalInput!328)))))))

(declare-fun b!2706228 () Bool)

(assert (=> b!2706228 (= e!1706269 (not (isEmpty!17789 (right!24358 (c!436511 totalInput!328)))))))

(declare-fun b!2706229 () Bool)

(declare-fun res!1136438 () Bool)

(assert (=> b!2706229 (=> (not res!1136438) (not e!1706269))))

(assert (=> b!2706229 (= res!1136438 (<= (- (height!1437 (left!24028 (c!436511 totalInput!328))) (height!1437 (right!24358 (c!436511 totalInput!328)))) 1))))

(declare-fun b!2706230 () Bool)

(declare-fun res!1136440 () Bool)

(assert (=> b!2706230 (=> (not res!1136440) (not e!1706269))))

(assert (=> b!2706230 (= res!1136440 (isBalanced!2955 (right!24358 (c!436511 totalInput!328))))))

(declare-fun b!2706231 () Bool)

(declare-fun res!1136439 () Bool)

(assert (=> b!2706231 (=> (not res!1136439) (not e!1706269))))

(assert (=> b!2706231 (= res!1136439 (isBalanced!2955 (left!24028 (c!436511 totalInput!328))))))

(declare-fun d!777450 () Bool)

(declare-fun res!1136437 () Bool)

(declare-fun e!1706270 () Bool)

(assert (=> d!777450 (=> res!1136437 e!1706270)))

(assert (=> d!777450 (= res!1136437 (not ((_ is Node!9769) (c!436511 totalInput!328))))))

(assert (=> d!777450 (= (isBalanced!2955 (c!436511 totalInput!328)) e!1706270)))

(declare-fun b!2706232 () Bool)

(assert (=> b!2706232 (= e!1706270 e!1706269)))

(declare-fun res!1136441 () Bool)

(assert (=> b!2706232 (=> (not res!1136441) (not e!1706269))))

(assert (=> b!2706232 (= res!1136441 (<= (- 1) (- (height!1437 (left!24028 (c!436511 totalInput!328))) (height!1437 (right!24358 (c!436511 totalInput!328))))))))

(assert (= (and d!777450 (not res!1136437)) b!2706232))

(assert (= (and b!2706232 res!1136441) b!2706229))

(assert (= (and b!2706229 res!1136438) b!2706231))

(assert (= (and b!2706231 res!1136439) b!2706230))

(assert (= (and b!2706230 res!1136440) b!2706227))

(assert (= (and b!2706227 res!1136436) b!2706228))

(declare-fun m!3096207 () Bool)

(assert (=> b!2706230 m!3096207))

(declare-fun m!3096209 () Bool)

(assert (=> b!2706228 m!3096209))

(declare-fun m!3096211 () Bool)

(assert (=> b!2706229 m!3096211))

(declare-fun m!3096213 () Bool)

(assert (=> b!2706229 m!3096213))

(declare-fun m!3096215 () Bool)

(assert (=> b!2706231 m!3096215))

(assert (=> b!2706232 m!3096211))

(assert (=> b!2706232 m!3096213))

(declare-fun m!3096217 () Bool)

(assert (=> b!2706227 m!3096217))

(assert (=> d!777248 d!777450))

(assert (=> b!2705429 d!777288))

(declare-fun d!777452 () Bool)

(declare-fun res!1136446 () Bool)

(declare-fun e!1706275 () Bool)

(assert (=> d!777452 (=> res!1136446 e!1706275)))

(assert (=> d!777452 (= res!1136446 ((_ is Nil!31242) rules!1182))))

(assert (=> d!777452 (= (forall!6555 rules!1182 lambda!100455) e!1706275)))

(declare-fun b!2706237 () Bool)

(declare-fun e!1706276 () Bool)

(assert (=> b!2706237 (= e!1706275 e!1706276)))

(declare-fun res!1136447 () Bool)

(assert (=> b!2706237 (=> (not res!1136447) (not e!1706276))))

(declare-fun dynLambda!13470 (Int Rule!9342) Bool)

(assert (=> b!2706237 (= res!1136447 (dynLambda!13470 lambda!100455 (h!36662 rules!1182)))))

(declare-fun b!2706238 () Bool)

(assert (=> b!2706238 (= e!1706276 (forall!6555 (t!225780 rules!1182) lambda!100455))))

(assert (= (and d!777452 (not res!1136446)) b!2706237))

(assert (= (and b!2706237 res!1136447) b!2706238))

(declare-fun b_lambda!82387 () Bool)

(assert (=> (not b_lambda!82387) (not b!2706237)))

(declare-fun m!3096219 () Bool)

(assert (=> b!2706237 m!3096219))

(declare-fun m!3096221 () Bool)

(assert (=> b!2706238 m!3096221))

(assert (=> d!777214 d!777452))

(declare-fun d!777454 () Bool)

(declare-fun c!436691 () Bool)

(assert (=> d!777454 (= c!436691 ((_ is Node!9770) (left!24029 (c!436512 acc!331))))))

(declare-fun e!1706277 () Bool)

(assert (=> d!777454 (= (inv!42338 (left!24029 (c!436512 acc!331))) e!1706277)))

(declare-fun b!2706239 () Bool)

(assert (=> b!2706239 (= e!1706277 (inv!42351 (left!24029 (c!436512 acc!331))))))

(declare-fun b!2706240 () Bool)

(declare-fun e!1706278 () Bool)

(assert (=> b!2706240 (= e!1706277 e!1706278)))

(declare-fun res!1136448 () Bool)

(assert (=> b!2706240 (= res!1136448 (not ((_ is Leaf!14900) (left!24029 (c!436512 acc!331)))))))

(assert (=> b!2706240 (=> res!1136448 e!1706278)))

(declare-fun b!2706241 () Bool)

(assert (=> b!2706241 (= e!1706278 (inv!42352 (left!24029 (c!436512 acc!331))))))

(assert (= (and d!777454 c!436691) b!2706239))

(assert (= (and d!777454 (not c!436691)) b!2706240))

(assert (= (and b!2706240 (not res!1136448)) b!2706241))

(declare-fun m!3096223 () Bool)

(assert (=> b!2706239 m!3096223))

(declare-fun m!3096225 () Bool)

(assert (=> b!2706241 m!3096225))

(assert (=> b!2705710 d!777454))

(declare-fun d!777456 () Bool)

(declare-fun c!436692 () Bool)

(assert (=> d!777456 (= c!436692 ((_ is Node!9770) (right!24359 (c!436512 acc!331))))))

(declare-fun e!1706279 () Bool)

(assert (=> d!777456 (= (inv!42338 (right!24359 (c!436512 acc!331))) e!1706279)))

(declare-fun b!2706242 () Bool)

(assert (=> b!2706242 (= e!1706279 (inv!42351 (right!24359 (c!436512 acc!331))))))

(declare-fun b!2706243 () Bool)

(declare-fun e!1706280 () Bool)

(assert (=> b!2706243 (= e!1706279 e!1706280)))

(declare-fun res!1136449 () Bool)

(assert (=> b!2706243 (= res!1136449 (not ((_ is Leaf!14900) (right!24359 (c!436512 acc!331)))))))

(assert (=> b!2706243 (=> res!1136449 e!1706280)))

(declare-fun b!2706244 () Bool)

(assert (=> b!2706244 (= e!1706280 (inv!42352 (right!24359 (c!436512 acc!331))))))

(assert (= (and d!777456 c!436692) b!2706242))

(assert (= (and d!777456 (not c!436692)) b!2706243))

(assert (= (and b!2706243 (not res!1136449)) b!2706244))

(declare-fun m!3096227 () Bool)

(assert (=> b!2706242 m!3096227))

(declare-fun m!3096229 () Bool)

(assert (=> b!2706244 m!3096229))

(assert (=> b!2705710 d!777456))

(declare-fun d!777458 () Bool)

(declare-fun lt!956897 () Int)

(assert (=> d!777458 (= lt!956897 (size!24109 (list!11792 (_2!18061 lt!956757))))))

(assert (=> d!777458 (= lt!956897 (size!24112 (c!436511 (_2!18061 lt!956757))))))

(assert (=> d!777458 (= (size!24110 (_2!18061 lt!956757)) lt!956897)))

(declare-fun bs!487342 () Bool)

(assert (= bs!487342 d!777458))

(assert (=> bs!487342 m!3095631))

(assert (=> bs!487342 m!3095631))

(declare-fun m!3096231 () Bool)

(assert (=> bs!487342 m!3096231))

(declare-fun m!3096233 () Bool)

(assert (=> bs!487342 m!3096233))

(assert (=> b!2705678 d!777458))

(declare-fun d!777460 () Bool)

(declare-fun lt!956900 () Int)

(assert (=> d!777460 (= lt!956900 (size!24109 (list!11792 treated!9)))))

(assert (=> d!777460 (= lt!956900 (size!24112 (c!436511 treated!9)))))

(assert (=> d!777460 (= (size!24110 treated!9) lt!956900)))

(declare-fun bs!487343 () Bool)

(assert (= bs!487343 d!777460))

(assert (=> bs!487343 m!3095271))

(assert (=> bs!487343 m!3095271))

(assert (=> bs!487343 m!3095339))

(declare-fun m!3096235 () Bool)

(assert (=> bs!487343 m!3096235))

(assert (=> b!2705678 d!777460))

(declare-fun d!777462 () Bool)

(declare-fun res!1136466 () Bool)

(declare-fun e!1706295 () Bool)

(assert (=> d!777462 (=> (not res!1136466) (not e!1706295))))

(assert (=> d!777462 (= res!1136466 (<= (size!24109 (list!11798 (xs!12817 (c!436511 totalInput!328)))) 512))))

(assert (=> d!777462 (= (inv!42350 (c!436511 totalInput!328)) e!1706295)))

(declare-fun b!2706265 () Bool)

(declare-fun res!1136467 () Bool)

(assert (=> b!2706265 (=> (not res!1136467) (not e!1706295))))

(assert (=> b!2706265 (= res!1136467 (= (csize!19769 (c!436511 totalInput!328)) (size!24109 (list!11798 (xs!12817 (c!436511 totalInput!328))))))))

(declare-fun b!2706266 () Bool)

(assert (=> b!2706266 (= e!1706295 (and (> (csize!19769 (c!436511 totalInput!328)) 0) (<= (csize!19769 (c!436511 totalInput!328)) 512)))))

(assert (= (and d!777462 res!1136466) b!2706265))

(assert (= (and b!2706265 res!1136467) b!2706266))

(declare-fun m!3096237 () Bool)

(assert (=> d!777462 m!3096237))

(assert (=> d!777462 m!3096237))

(declare-fun m!3096239 () Bool)

(assert (=> d!777462 m!3096239))

(assert (=> b!2706265 m!3096237))

(assert (=> b!2706265 m!3096237))

(assert (=> b!2706265 m!3096239))

(assert (=> b!2705672 d!777462))

(declare-fun b!2706268 () Bool)

(declare-fun e!1706296 () List!31341)

(declare-fun e!1706297 () List!31341)

(assert (=> b!2706268 (= e!1706296 e!1706297)))

(declare-fun c!436696 () Bool)

(assert (=> b!2706268 (= c!436696 ((_ is Leaf!14900) (c!436512 acc!331)))))

(declare-fun b!2706269 () Bool)

(assert (=> b!2706269 (= e!1706297 (list!11799 (xs!12818 (c!436512 acc!331))))))

(declare-fun b!2706267 () Bool)

(assert (=> b!2706267 (= e!1706296 Nil!31241)))

(declare-fun b!2706270 () Bool)

(assert (=> b!2706270 (= e!1706297 (++!7695 (list!11797 (left!24029 (c!436512 acc!331))) (list!11797 (right!24359 (c!436512 acc!331)))))))

(declare-fun d!777464 () Bool)

(declare-fun c!436695 () Bool)

(assert (=> d!777464 (= c!436695 ((_ is Empty!9770) (c!436512 acc!331)))))

(assert (=> d!777464 (= (list!11797 (c!436512 acc!331)) e!1706296)))

(assert (= (and d!777464 c!436695) b!2706267))

(assert (= (and d!777464 (not c!436695)) b!2706268))

(assert (= (and b!2706268 c!436696) b!2706269))

(assert (= (and b!2706268 (not c!436696)) b!2706270))

(assert (=> b!2706269 m!3095729))

(declare-fun m!3096241 () Bool)

(assert (=> b!2706270 m!3096241))

(declare-fun m!3096243 () Bool)

(assert (=> b!2706270 m!3096243))

(assert (=> b!2706270 m!3096241))

(assert (=> b!2706270 m!3096243))

(declare-fun m!3096245 () Bool)

(assert (=> b!2706270 m!3096245))

(assert (=> d!777296 d!777464))

(declare-fun d!777466 () Bool)

(declare-fun lt!956901 () Int)

(assert (=> d!777466 (= lt!956901 (size!24109 (list!11792 (_2!18061 lt!956751))))))

(assert (=> d!777466 (= lt!956901 (size!24112 (c!436511 (_2!18061 lt!956751))))))

(assert (=> d!777466 (= (size!24110 (_2!18061 lt!956751)) lt!956901)))

(declare-fun bs!487344 () Bool)

(assert (= bs!487344 d!777466))

(assert (=> bs!487344 m!3095577))

(assert (=> bs!487344 m!3095577))

(declare-fun m!3096247 () Bool)

(assert (=> bs!487344 m!3096247))

(declare-fun m!3096249 () Bool)

(assert (=> bs!487344 m!3096249))

(assert (=> b!2705656 d!777466))

(declare-fun d!777468 () Bool)

(declare-fun lt!956902 () Int)

(assert (=> d!777468 (= lt!956902 (size!24109 (list!11792 totalInput!328)))))

(assert (=> d!777468 (= lt!956902 (size!24112 (c!436511 totalInput!328)))))

(assert (=> d!777468 (= (size!24110 totalInput!328) lt!956902)))

(declare-fun bs!487345 () Bool)

(assert (= bs!487345 d!777468))

(assert (=> bs!487345 m!3095269))

(assert (=> bs!487345 m!3095269))

(assert (=> bs!487345 m!3095753))

(declare-fun m!3096251 () Bool)

(assert (=> bs!487345 m!3096251))

(assert (=> b!2705656 d!777468))

(declare-fun d!777470 () Bool)

(assert (=> d!777470 (= (inv!42353 (xs!12817 (c!436511 input!603))) (<= (size!24109 (innerList!9829 (xs!12817 (c!436511 input!603)))) 2147483647))))

(declare-fun bs!487346 () Bool)

(assert (= bs!487346 d!777470))

(declare-fun m!3096253 () Bool)

(assert (=> bs!487346 m!3096253))

(assert (=> b!2705700 d!777470))

(declare-fun d!777472 () Bool)

(assert (=> d!777472 (= (list!11793 (_1!18061 lt!956748)) (list!11797 (c!436512 (_1!18061 lt!956748))))))

(declare-fun bs!487347 () Bool)

(assert (= bs!487347 d!777472))

(declare-fun m!3096255 () Bool)

(assert (=> bs!487347 m!3096255))

(assert (=> b!2705648 d!777472))

(declare-fun b!2706271 () Bool)

(declare-fun e!1706299 () Bool)

(declare-fun lt!956905 () tuple2!30864)

(assert (=> b!2706271 (= e!1706299 (= (_2!18064 lt!956905) (list!11792 input!603)))))

(declare-fun b!2706272 () Bool)

(declare-fun e!1706300 () Bool)

(assert (=> b!2706272 (= e!1706299 e!1706300)))

(declare-fun res!1136468 () Bool)

(assert (=> b!2706272 (= res!1136468 (< (size!24109 (_2!18064 lt!956905)) (size!24109 (list!11792 input!603))))))

(assert (=> b!2706272 (=> (not res!1136468) (not e!1706300))))

(declare-fun b!2706273 () Bool)

(declare-fun e!1706298 () tuple2!30864)

(declare-fun lt!956904 () Option!6158)

(declare-fun lt!956903 () tuple2!30864)

(assert (=> b!2706273 (= e!1706298 (tuple2!30865 (Cons!31241 (_1!18066 (v!32969 lt!956904)) (_1!18064 lt!956903)) (_2!18064 lt!956903)))))

(assert (=> b!2706273 (= lt!956903 (lexList!1204 thiss!11556 rules!1182 (_2!18066 (v!32969 lt!956904))))))

(declare-fun b!2706275 () Bool)

(assert (=> b!2706275 (= e!1706298 (tuple2!30865 Nil!31241 (list!11792 input!603)))))

(declare-fun b!2706274 () Bool)

(assert (=> b!2706274 (= e!1706300 (not (isEmpty!17790 (_1!18064 lt!956905))))))

(declare-fun d!777474 () Bool)

(assert (=> d!777474 e!1706299))

(declare-fun c!436697 () Bool)

(assert (=> d!777474 (= c!436697 (> (size!24113 (_1!18064 lt!956905)) 0))))

(assert (=> d!777474 (= lt!956905 e!1706298)))

(declare-fun c!436698 () Bool)

(assert (=> d!777474 (= c!436698 ((_ is Some!6157) lt!956904))))

(assert (=> d!777474 (= lt!956904 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 input!603)))))

(assert (=> d!777474 (= (lexList!1204 thiss!11556 rules!1182 (list!11792 input!603)) lt!956905)))

(assert (= (and d!777474 c!436698) b!2706273))

(assert (= (and d!777474 (not c!436698)) b!2706275))

(assert (= (and d!777474 c!436697) b!2706272))

(assert (= (and d!777474 (not c!436697)) b!2706271))

(assert (= (and b!2706272 res!1136468) b!2706274))

(declare-fun m!3096257 () Bool)

(assert (=> b!2706272 m!3096257))

(assert (=> b!2706272 m!3095273))

(assert (=> b!2706272 m!3095341))

(declare-fun m!3096259 () Bool)

(assert (=> b!2706273 m!3096259))

(declare-fun m!3096261 () Bool)

(assert (=> b!2706274 m!3096261))

(declare-fun m!3096263 () Bool)

(assert (=> d!777474 m!3096263))

(assert (=> d!777474 m!3095273))

(declare-fun m!3096265 () Bool)

(assert (=> d!777474 m!3096265))

(assert (=> b!2705648 d!777474))

(assert (=> b!2705648 d!777212))

(declare-fun d!777476 () Bool)

(declare-fun c!436699 () Bool)

(assert (=> d!777476 (= c!436699 ((_ is Node!9769) (left!24028 (c!436511 totalInput!328))))))

(declare-fun e!1706301 () Bool)

(assert (=> d!777476 (= (inv!42340 (left!24028 (c!436511 totalInput!328))) e!1706301)))

(declare-fun b!2706276 () Bool)

(assert (=> b!2706276 (= e!1706301 (inv!42349 (left!24028 (c!436511 totalInput!328))))))

(declare-fun b!2706277 () Bool)

(declare-fun e!1706302 () Bool)

(assert (=> b!2706277 (= e!1706301 e!1706302)))

(declare-fun res!1136469 () Bool)

(assert (=> b!2706277 (= res!1136469 (not ((_ is Leaf!14899) (left!24028 (c!436511 totalInput!328)))))))

(assert (=> b!2706277 (=> res!1136469 e!1706302)))

(declare-fun b!2706278 () Bool)

(assert (=> b!2706278 (= e!1706302 (inv!42350 (left!24028 (c!436511 totalInput!328))))))

(assert (= (and d!777476 c!436699) b!2706276))

(assert (= (and d!777476 (not c!436699)) b!2706277))

(assert (= (and b!2706277 (not res!1136469)) b!2706278))

(declare-fun m!3096267 () Bool)

(assert (=> b!2706276 m!3096267))

(declare-fun m!3096269 () Bool)

(assert (=> b!2706278 m!3096269))

(assert (=> b!2705716 d!777476))

(declare-fun d!777478 () Bool)

(declare-fun c!436700 () Bool)

(assert (=> d!777478 (= c!436700 ((_ is Node!9769) (right!24358 (c!436511 totalInput!328))))))

(declare-fun e!1706303 () Bool)

(assert (=> d!777478 (= (inv!42340 (right!24358 (c!436511 totalInput!328))) e!1706303)))

(declare-fun b!2706279 () Bool)

(assert (=> b!2706279 (= e!1706303 (inv!42349 (right!24358 (c!436511 totalInput!328))))))

(declare-fun b!2706280 () Bool)

(declare-fun e!1706304 () Bool)

(assert (=> b!2706280 (= e!1706303 e!1706304)))

(declare-fun res!1136470 () Bool)

(assert (=> b!2706280 (= res!1136470 (not ((_ is Leaf!14899) (right!24358 (c!436511 totalInput!328)))))))

(assert (=> b!2706280 (=> res!1136470 e!1706304)))

(declare-fun b!2706281 () Bool)

(assert (=> b!2706281 (= e!1706304 (inv!42350 (right!24358 (c!436511 totalInput!328))))))

(assert (= (and d!777478 c!436700) b!2706279))

(assert (= (and d!777478 (not c!436700)) b!2706280))

(assert (= (and b!2706280 (not res!1136470)) b!2706281))

(declare-fun m!3096271 () Bool)

(assert (=> b!2706279 m!3096271))

(declare-fun m!3096273 () Bool)

(assert (=> b!2706281 m!3096273))

(assert (=> b!2705716 d!777478))

(declare-fun bs!487348 () Bool)

(declare-fun d!777480 () Bool)

(assert (= bs!487348 (and d!777480 d!777214)))

(declare-fun lambda!100468 () Int)

(assert (=> bs!487348 (= lambda!100468 lambda!100455)))

(declare-fun bs!487349 () Bool)

(assert (= bs!487349 (and d!777480 d!777350)))

(assert (=> bs!487349 (= lambda!100468 lambda!100464)))

(assert (=> d!777480 true))

(declare-fun lt!956906 () Bool)

(assert (=> d!777480 (= lt!956906 (forall!6555 (t!225780 rules!1182) lambda!100468))))

(declare-fun e!1706306 () Bool)

(assert (=> d!777480 (= lt!956906 e!1706306)))

(declare-fun res!1136471 () Bool)

(assert (=> d!777480 (=> res!1136471 e!1706306)))

(assert (=> d!777480 (= res!1136471 (not ((_ is Cons!31242) (t!225780 rules!1182))))))

(assert (=> d!777480 (= (rulesValidInductive!1657 thiss!11556 (t!225780 rules!1182)) lt!956906)))

(declare-fun b!2706282 () Bool)

(declare-fun e!1706305 () Bool)

(assert (=> b!2706282 (= e!1706306 e!1706305)))

(declare-fun res!1136472 () Bool)

(assert (=> b!2706282 (=> (not res!1136472) (not e!1706305))))

(assert (=> b!2706282 (= res!1136472 (ruleValid!1563 thiss!11556 (h!36662 (t!225780 rules!1182))))))

(declare-fun b!2706283 () Bool)

(assert (=> b!2706283 (= e!1706305 (rulesValidInductive!1657 thiss!11556 (t!225780 (t!225780 rules!1182))))))

(assert (= (and d!777480 (not res!1136471)) b!2706282))

(assert (= (and b!2706282 res!1136472) b!2706283))

(declare-fun m!3096275 () Bool)

(assert (=> d!777480 m!3096275))

(declare-fun m!3096277 () Bool)

(assert (=> b!2706282 m!3096277))

(declare-fun m!3096279 () Bool)

(assert (=> b!2706283 m!3096279))

(assert (=> b!2705530 d!777480))

(declare-fun d!777482 () Bool)

(assert (=> d!777482 (= (list!11792 (_2!18061 lt!956748)) (list!11796 (c!436511 (_2!18061 lt!956748))))))

(declare-fun bs!487350 () Bool)

(assert (= bs!487350 d!777482))

(declare-fun m!3096281 () Bool)

(assert (=> bs!487350 m!3096281))

(assert (=> b!2705646 d!777482))

(assert (=> b!2705646 d!777212))

(declare-fun d!777484 () Bool)

(declare-fun res!1136475 () Bool)

(declare-fun e!1706307 () Bool)

(assert (=> d!777484 (=> res!1136475 e!1706307)))

(assert (=> d!777484 (= res!1136475 (not ((_ is Node!9770) (c!436512 acc!331))))))

(assert (=> d!777484 (= (isBalanced!2956 (c!436512 acc!331)) e!1706307)))

(declare-fun b!2706284 () Bool)

(declare-fun res!1136474 () Bool)

(declare-fun e!1706308 () Bool)

(assert (=> b!2706284 (=> (not res!1136474) (not e!1706308))))

(assert (=> b!2706284 (= res!1136474 (not (isEmpty!17792 (left!24029 (c!436512 acc!331)))))))

(declare-fun b!2706285 () Bool)

(assert (=> b!2706285 (= e!1706308 (not (isEmpty!17792 (right!24359 (c!436512 acc!331)))))))

(declare-fun b!2706286 () Bool)

(declare-fun res!1136478 () Bool)

(assert (=> b!2706286 (=> (not res!1136478) (not e!1706308))))

(assert (=> b!2706286 (= res!1136478 (isBalanced!2956 (right!24359 (c!436512 acc!331))))))

(declare-fun b!2706287 () Bool)

(declare-fun res!1136477 () Bool)

(assert (=> b!2706287 (=> (not res!1136477) (not e!1706308))))

(assert (=> b!2706287 (= res!1136477 (<= (- (height!1436 (left!24029 (c!436512 acc!331))) (height!1436 (right!24359 (c!436512 acc!331)))) 1))))

(declare-fun b!2706288 () Bool)

(assert (=> b!2706288 (= e!1706307 e!1706308)))

(declare-fun res!1136473 () Bool)

(assert (=> b!2706288 (=> (not res!1136473) (not e!1706308))))

(assert (=> b!2706288 (= res!1136473 (<= (- 1) (- (height!1436 (left!24029 (c!436512 acc!331))) (height!1436 (right!24359 (c!436512 acc!331))))))))

(declare-fun b!2706289 () Bool)

(declare-fun res!1136476 () Bool)

(assert (=> b!2706289 (=> (not res!1136476) (not e!1706308))))

(assert (=> b!2706289 (= res!1136476 (isBalanced!2956 (left!24029 (c!436512 acc!331))))))

(assert (= (and d!777484 (not res!1136475)) b!2706288))

(assert (= (and b!2706288 res!1136473) b!2706287))

(assert (= (and b!2706287 res!1136477) b!2706289))

(assert (= (and b!2706289 res!1136476) b!2706286))

(assert (= (and b!2706286 res!1136478) b!2706284))

(assert (= (and b!2706284 res!1136474) b!2706285))

(assert (=> b!2706288 m!3095801))

(assert (=> b!2706288 m!3095803))

(assert (=> b!2706287 m!3095801))

(assert (=> b!2706287 m!3095803))

(declare-fun m!3096283 () Bool)

(assert (=> b!2706289 m!3096283))

(declare-fun m!3096285 () Bool)

(assert (=> b!2706285 m!3096285))

(declare-fun m!3096287 () Bool)

(assert (=> b!2706284 m!3096287))

(declare-fun m!3096289 () Bool)

(assert (=> b!2706286 m!3096289))

(assert (=> d!777250 d!777484))

(declare-fun d!777486 () Bool)

(declare-fun lt!956907 () Bool)

(assert (=> d!777486 (= lt!956907 (isEmpty!17790 (list!11793 (_1!18061 lt!956757))))))

(assert (=> d!777486 (= lt!956907 (isEmpty!17792 (c!436512 (_1!18061 lt!956757))))))

(assert (=> d!777486 (= (isEmpty!17788 (_1!18061 lt!956757)) lt!956907)))

(declare-fun bs!487351 () Bool)

(assert (= bs!487351 d!777486))

(assert (=> bs!487351 m!3095633))

(assert (=> bs!487351 m!3095633))

(declare-fun m!3096291 () Bool)

(assert (=> bs!487351 m!3096291))

(declare-fun m!3096293 () Bool)

(assert (=> bs!487351 m!3096293))

(assert (=> b!2705674 d!777486))

(declare-fun d!777488 () Bool)

(declare-fun res!1136479 () Bool)

(declare-fun e!1706309 () Bool)

(assert (=> d!777488 (=> (not res!1136479) (not e!1706309))))

(assert (=> d!777488 (= res!1136479 (= (csize!19768 (c!436511 totalInput!328)) (+ (size!24112 (left!24028 (c!436511 totalInput!328))) (size!24112 (right!24358 (c!436511 totalInput!328))))))))

(assert (=> d!777488 (= (inv!42349 (c!436511 totalInput!328)) e!1706309)))

(declare-fun b!2706290 () Bool)

(declare-fun res!1136480 () Bool)

(assert (=> b!2706290 (=> (not res!1136480) (not e!1706309))))

(assert (=> b!2706290 (= res!1136480 (and (not (= (left!24028 (c!436511 totalInput!328)) Empty!9769)) (not (= (right!24358 (c!436511 totalInput!328)) Empty!9769))))))

(declare-fun b!2706291 () Bool)

(declare-fun res!1136481 () Bool)

(assert (=> b!2706291 (=> (not res!1136481) (not e!1706309))))

(assert (=> b!2706291 (= res!1136481 (= (cheight!9980 (c!436511 totalInput!328)) (+ (max!0 (height!1437 (left!24028 (c!436511 totalInput!328))) (height!1437 (right!24358 (c!436511 totalInput!328)))) 1)))))

(declare-fun b!2706292 () Bool)

(assert (=> b!2706292 (= e!1706309 (<= 0 (cheight!9980 (c!436511 totalInput!328))))))

(assert (= (and d!777488 res!1136479) b!2706290))

(assert (= (and b!2706290 res!1136480) b!2706291))

(assert (= (and b!2706291 res!1136481) b!2706292))

(declare-fun m!3096295 () Bool)

(assert (=> d!777488 m!3096295))

(declare-fun m!3096297 () Bool)

(assert (=> d!777488 m!3096297))

(assert (=> b!2706291 m!3096211))

(assert (=> b!2706291 m!3096213))

(assert (=> b!2706291 m!3096211))

(assert (=> b!2706291 m!3096213))

(declare-fun m!3096299 () Bool)

(assert (=> b!2706291 m!3096299))

(assert (=> b!2705670 d!777488))

(assert (=> b!2705667 d!777360))

(declare-fun d!777490 () Bool)

(assert (=> d!777490 (= (height!1436 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))) (ite ((_ is Empty!9770) (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))) 0 (ite ((_ is Leaf!14900) (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))) 1 (cheight!9981 (++!7694 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711)))))))))

(assert (=> b!2705667 d!777490))

(declare-fun d!777492 () Bool)

(assert (=> d!777492 (= (height!1436 (c!436512 (_1!18061 lt!956711))) (ite ((_ is Empty!9770) (c!436512 (_1!18061 lt!956711))) 0 (ite ((_ is Leaf!14900) (c!436512 (_1!18061 lt!956711))) 1 (cheight!9981 (c!436512 (_1!18061 lt!956711))))))))

(assert (=> b!2705667 d!777492))

(declare-fun d!777494 () Bool)

(assert (=> d!777494 (= (max!0 (height!1436 (c!436512 acc!331)) (height!1436 (c!436512 (_1!18061 lt!956711)))) (ite (< (height!1436 (c!436512 acc!331)) (height!1436 (c!436512 (_1!18061 lt!956711)))) (height!1436 (c!436512 (_1!18061 lt!956711))) (height!1436 (c!436512 acc!331))))))

(assert (=> b!2705667 d!777494))

(declare-fun d!777496 () Bool)

(assert (=> d!777496 (= (height!1436 (c!436512 acc!331)) (ite ((_ is Empty!9770) (c!436512 acc!331)) 0 (ite ((_ is Leaf!14900) (c!436512 acc!331)) 1 (cheight!9981 (c!436512 acc!331)))))))

(assert (=> b!2705667 d!777496))

(declare-fun d!777498 () Bool)

(assert (=> d!777498 (= (inv!42353 (xs!12817 (c!436511 treated!9))) (<= (size!24109 (innerList!9829 (xs!12817 (c!436511 treated!9)))) 2147483647))))

(declare-fun bs!487352 () Bool)

(assert (= bs!487352 d!777498))

(declare-fun m!3096313 () Bool)

(assert (=> bs!487352 m!3096313))

(assert (=> b!2705714 d!777498))

(declare-fun b!2706303 () Bool)

(declare-fun e!1706317 () List!31340)

(assert (=> b!2706303 (= e!1706317 (list!11798 (xs!12817 (c!436511 (_2!18061 lt!956709)))))))

(declare-fun b!2706302 () Bool)

(declare-fun e!1706316 () List!31340)

(assert (=> b!2706302 (= e!1706316 e!1706317)))

(declare-fun c!436703 () Bool)

(assert (=> b!2706302 (= c!436703 ((_ is Leaf!14899) (c!436511 (_2!18061 lt!956709))))))

(declare-fun d!777500 () Bool)

(declare-fun c!436702 () Bool)

(assert (=> d!777500 (= c!436702 ((_ is Empty!9769) (c!436511 (_2!18061 lt!956709))))))

(assert (=> d!777500 (= (list!11796 (c!436511 (_2!18061 lt!956709))) e!1706316)))

(declare-fun b!2706301 () Bool)

(assert (=> b!2706301 (= e!1706316 Nil!31240)))

(declare-fun b!2706304 () Bool)

(assert (=> b!2706304 (= e!1706317 (++!7691 (list!11796 (left!24028 (c!436511 (_2!18061 lt!956709)))) (list!11796 (right!24358 (c!436511 (_2!18061 lt!956709))))))))

(assert (= (and d!777500 c!436702) b!2706301))

(assert (= (and d!777500 (not c!436702)) b!2706302))

(assert (= (and b!2706302 c!436703) b!2706303))

(assert (= (and b!2706302 (not c!436703)) b!2706304))

(declare-fun m!3096325 () Bool)

(assert (=> b!2706303 m!3096325))

(declare-fun m!3096327 () Bool)

(assert (=> b!2706304 m!3096327))

(declare-fun m!3096329 () Bool)

(assert (=> b!2706304 m!3096329))

(assert (=> b!2706304 m!3096327))

(assert (=> b!2706304 m!3096329))

(declare-fun m!3096331 () Bool)

(assert (=> b!2706304 m!3096331))

(assert (=> d!777290 d!777500))

(declare-fun b!2706307 () Bool)

(declare-fun e!1706319 () List!31340)

(assert (=> b!2706307 (= e!1706319 (list!11798 (xs!12817 (c!436511 treated!9))))))

(declare-fun b!2706306 () Bool)

(declare-fun e!1706318 () List!31340)

(assert (=> b!2706306 (= e!1706318 e!1706319)))

(declare-fun c!436705 () Bool)

(assert (=> b!2706306 (= c!436705 ((_ is Leaf!14899) (c!436511 treated!9)))))

(declare-fun d!777504 () Bool)

(declare-fun c!436704 () Bool)

(assert (=> d!777504 (= c!436704 ((_ is Empty!9769) (c!436511 treated!9)))))

(assert (=> d!777504 (= (list!11796 (c!436511 treated!9)) e!1706318)))

(declare-fun b!2706305 () Bool)

(assert (=> b!2706305 (= e!1706318 Nil!31240)))

(declare-fun b!2706308 () Bool)

(assert (=> b!2706308 (= e!1706319 (++!7691 (list!11796 (left!24028 (c!436511 treated!9))) (list!11796 (right!24358 (c!436511 treated!9)))))))

(assert (= (and d!777504 c!436704) b!2706305))

(assert (= (and d!777504 (not c!436704)) b!2706306))

(assert (= (and b!2706306 c!436705) b!2706307))

(assert (= (and b!2706306 (not c!436705)) b!2706308))

(declare-fun m!3096335 () Bool)

(assert (=> b!2706307 m!3096335))

(declare-fun m!3096337 () Bool)

(assert (=> b!2706308 m!3096337))

(declare-fun m!3096339 () Bool)

(assert (=> b!2706308 m!3096339))

(assert (=> b!2706308 m!3096337))

(assert (=> b!2706308 m!3096339))

(declare-fun m!3096341 () Bool)

(assert (=> b!2706308 m!3096341))

(assert (=> d!777210 d!777504))

(declare-fun d!777508 () Bool)

(declare-fun e!1706323 () Bool)

(assert (=> d!777508 e!1706323))

(declare-fun res!1136489 () Bool)

(assert (=> d!777508 (=> (not res!1136489) (not e!1706323))))

(assert (=> d!777508 (= res!1136489 (isBalanced!2956 (prepend!1096 (c!436512 (_1!18061 lt!956750)) (_1!18065 (v!32966 lt!956749)))))))

(declare-fun lt!956918 () BalanceConc!19154)

(assert (=> d!777508 (= lt!956918 (BalanceConc!19155 (prepend!1096 (c!436512 (_1!18061 lt!956750)) (_1!18065 (v!32966 lt!956749)))))))

(assert (=> d!777508 (= (prepend!1095 (_1!18061 lt!956750) (_1!18065 (v!32966 lt!956749))) lt!956918)))

(declare-fun b!2706314 () Bool)

(assert (=> b!2706314 (= e!1706323 (= (list!11793 lt!956918) (Cons!31241 (_1!18065 (v!32966 lt!956749)) (list!11793 (_1!18061 lt!956750)))))))

(assert (= (and d!777508 res!1136489) b!2706314))

(declare-fun m!3096343 () Bool)

(assert (=> d!777508 m!3096343))

(assert (=> d!777508 m!3096343))

(declare-fun m!3096349 () Bool)

(assert (=> d!777508 m!3096349))

(declare-fun m!3096353 () Bool)

(assert (=> b!2706314 m!3096353))

(declare-fun m!3096356 () Bool)

(assert (=> b!2706314 m!3096356))

(assert (=> b!2705650 d!777508))

(declare-fun e!1706326 () Bool)

(declare-fun lt!956919 () tuple2!30858)

(declare-fun b!2706315 () Bool)

(assert (=> b!2706315 (= e!1706326 (= (list!11792 (_2!18061 lt!956919)) (_2!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 (_2!18065 (v!32966 lt!956749)))))))))

(declare-fun b!2706317 () Bool)

(declare-fun e!1706324 () Bool)

(assert (=> b!2706317 (= e!1706324 (= (list!11792 (_2!18061 lt!956919)) (list!11792 (_2!18065 (v!32966 lt!956749)))))))

(declare-fun b!2706318 () Bool)

(declare-fun e!1706325 () tuple2!30858)

(assert (=> b!2706318 (= e!1706325 (tuple2!30859 (BalanceConc!19155 Empty!9770) (_2!18065 (v!32966 lt!956749))))))

(declare-fun b!2706319 () Bool)

(declare-fun res!1136492 () Bool)

(assert (=> b!2706319 (=> (not res!1136492) (not e!1706326))))

(assert (=> b!2706319 (= res!1136492 (= (list!11793 (_1!18061 lt!956919)) (_1!18064 (lexList!1204 thiss!11556 rules!1182 (list!11792 (_2!18065 (v!32966 lt!956749)))))))))

(declare-fun b!2706320 () Bool)

(declare-fun e!1706327 () Bool)

(assert (=> b!2706320 (= e!1706324 e!1706327)))

(declare-fun res!1136490 () Bool)

(assert (=> b!2706320 (= res!1136490 (< (size!24110 (_2!18061 lt!956919)) (size!24110 (_2!18065 (v!32966 lt!956749)))))))

(assert (=> b!2706320 (=> (not res!1136490) (not e!1706327))))

(declare-fun b!2706321 () Bool)

(declare-fun lt!956921 () tuple2!30858)

(declare-fun lt!956920 () Option!6157)

(assert (=> b!2706321 (= e!1706325 (tuple2!30859 (prepend!1095 (_1!18061 lt!956921) (_1!18065 (v!32966 lt!956920))) (_2!18061 lt!956921)))))

(assert (=> b!2706321 (= lt!956921 (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956920))))))

(declare-fun b!2706316 () Bool)

(assert (=> b!2706316 (= e!1706327 (not (isEmpty!17788 (_1!18061 lt!956919))))))

(declare-fun d!777510 () Bool)

(assert (=> d!777510 e!1706326))

(declare-fun res!1136491 () Bool)

(assert (=> d!777510 (=> (not res!1136491) (not e!1706326))))

(assert (=> d!777510 (= res!1136491 e!1706324)))

(declare-fun c!436708 () Bool)

(assert (=> d!777510 (= c!436708 (> (size!24111 (_1!18061 lt!956919)) 0))))

(assert (=> d!777510 (= lt!956919 e!1706325)))

(declare-fun c!436709 () Bool)

(assert (=> d!777510 (= c!436709 ((_ is Some!6156) lt!956920))))

(assert (=> d!777510 (= lt!956920 (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956749))))))

(assert (=> d!777510 (= (lexRec!627 thiss!11556 rules!1182 (_2!18065 (v!32966 lt!956749))) lt!956919)))

(assert (= (and d!777510 c!436709) b!2706321))

(assert (= (and d!777510 (not c!436709)) b!2706318))

(assert (= (and d!777510 c!436708) b!2706320))

(assert (= (and d!777510 (not c!436708)) b!2706317))

(assert (= (and b!2706320 res!1136490) b!2706316))

(assert (= (and d!777510 res!1136491) b!2706319))

(assert (= (and b!2706319 res!1136492) b!2706315))

(declare-fun m!3096363 () Bool)

(assert (=> d!777510 m!3096363))

(declare-fun m!3096365 () Bool)

(assert (=> d!777510 m!3096365))

(declare-fun m!3096367 () Bool)

(assert (=> b!2706320 m!3096367))

(declare-fun m!3096369 () Bool)

(assert (=> b!2706320 m!3096369))

(declare-fun m!3096371 () Bool)

(assert (=> b!2706317 m!3096371))

(declare-fun m!3096373 () Bool)

(assert (=> b!2706317 m!3096373))

(declare-fun m!3096375 () Bool)

(assert (=> b!2706319 m!3096375))

(assert (=> b!2706319 m!3096373))

(assert (=> b!2706319 m!3096373))

(declare-fun m!3096377 () Bool)

(assert (=> b!2706319 m!3096377))

(declare-fun m!3096379 () Bool)

(assert (=> b!2706316 m!3096379))

(declare-fun m!3096381 () Bool)

(assert (=> b!2706321 m!3096381))

(declare-fun m!3096383 () Bool)

(assert (=> b!2706321 m!3096383))

(assert (=> b!2706315 m!3096371))

(assert (=> b!2706315 m!3096373))

(assert (=> b!2706315 m!3096373))

(assert (=> b!2706315 m!3096377))

(assert (=> b!2705650 d!777510))

(declare-fun b!2706382 () Bool)

(declare-fun e!1706373 () Bool)

(declare-fun e!1706368 () Bool)

(assert (=> b!2706382 (= e!1706373 e!1706368)))

(declare-fun res!1136537 () Bool)

(assert (=> b!2706382 (=> (not res!1136537) (not e!1706368))))

(declare-fun appendAssoc!189 (List!31341 List!31341 List!31341) Bool)

(assert (=> b!2706382 (= res!1136537 (appendAssoc!189 (list!11797 (c!436512 acc!331)) (list!11797 (left!24029 (c!436512 (_1!18061 lt!956711)))) (list!11797 (right!24359 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2706383 () Bool)

(declare-fun e!1706367 () Bool)

(assert (=> b!2706383 (= e!1706367 (appendAssoc!189 (list!11797 (left!24029 (c!436512 acc!331))) (list!11797 (left!24029 (right!24359 (c!436512 acc!331)))) (++!7695 (list!11797 (right!24359 (right!24359 (c!436512 acc!331)))) (list!11797 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2706384 () Bool)

(declare-fun e!1706371 () Bool)

(declare-fun e!1706370 () Bool)

(assert (=> b!2706384 (= e!1706371 e!1706370)))

(declare-fun res!1136535 () Bool)

(assert (=> b!2706384 (=> (not res!1136535) (not e!1706370))))

(assert (=> b!2706384 (= res!1136535 (appendAssoc!189 (list!11797 (c!436512 acc!331)) (list!11797 (left!24029 (left!24029 (c!436512 (_1!18061 lt!956711))))) (list!11797 (right!24359 (left!24029 (c!436512 (_1!18061 lt!956711)))))))))

(declare-fun b!2706385 () Bool)

(declare-fun e!1706372 () Bool)

(declare-fun e!1706374 () Bool)

(assert (=> b!2706385 (= e!1706372 e!1706374)))

(declare-fun res!1136536 () Bool)

(assert (=> b!2706385 (=> res!1136536 e!1706374)))

(assert (=> b!2706385 (= res!1136536 (not ((_ is Node!9770) (right!24359 (c!436512 acc!331)))))))

(declare-fun b!2706386 () Bool)

(assert (=> b!2706386 (= e!1706368 e!1706371)))

(declare-fun res!1136538 () Bool)

(assert (=> b!2706386 (=> res!1136538 e!1706371)))

(assert (=> b!2706386 (= res!1136538 (not ((_ is Node!9770) (left!24029 (c!436512 (_1!18061 lt!956711))))))))

(declare-fun b!2706387 () Bool)

(assert (=> b!2706387 (= e!1706374 e!1706367)))

(declare-fun res!1136539 () Bool)

(assert (=> b!2706387 (=> (not res!1136539) (not e!1706367))))

(assert (=> b!2706387 (= res!1136539 (appendAssoc!189 (list!11797 (left!24029 (right!24359 (c!436512 acc!331)))) (list!11797 (right!24359 (right!24359 (c!436512 acc!331)))) (list!11797 (c!436512 (_1!18061 lt!956711)))))))

(declare-fun b!2706388 () Bool)

(declare-fun e!1706375 () Bool)

(assert (=> b!2706388 (= e!1706375 e!1706372)))

(declare-fun res!1136542 () Bool)

(assert (=> b!2706388 (=> (not res!1136542) (not e!1706372))))

(assert (=> b!2706388 (= res!1136542 (appendAssoc!189 (list!11797 (left!24029 (c!436512 acc!331))) (list!11797 (right!24359 (c!436512 acc!331))) (list!11797 (c!436512 (_1!18061 lt!956711)))))))

(declare-fun b!2706389 () Bool)

(declare-fun e!1706369 () Bool)

(assert (=> b!2706389 (= e!1706369 e!1706373)))

(declare-fun res!1136541 () Bool)

(assert (=> b!2706389 (=> res!1136541 e!1706373)))

(assert (=> b!2706389 (= res!1136541 (not ((_ is Node!9770) (c!436512 (_1!18061 lt!956711)))))))

(declare-fun d!777514 () Bool)

(assert (=> d!777514 e!1706369))

(declare-fun res!1136543 () Bool)

(assert (=> d!777514 (=> (not res!1136543) (not e!1706369))))

(assert (=> d!777514 (= res!1136543 e!1706375)))

(declare-fun res!1136540 () Bool)

(assert (=> d!777514 (=> res!1136540 e!1706375)))

(assert (=> d!777514 (= res!1136540 (not ((_ is Node!9770) (c!436512 acc!331))))))

(assert (=> d!777514 (= (appendAssocInst!675 (c!436512 acc!331) (c!436512 (_1!18061 lt!956711))) true)))

(declare-fun b!2706390 () Bool)

(assert (=> b!2706390 (= e!1706370 (appendAssoc!189 (++!7695 (list!11797 (c!436512 acc!331)) (list!11797 (left!24029 (left!24029 (c!436512 (_1!18061 lt!956711)))))) (list!11797 (right!24359 (left!24029 (c!436512 (_1!18061 lt!956711))))) (list!11797 (right!24359 (c!436512 (_1!18061 lt!956711))))))))

(assert (= (and d!777514 (not res!1136540)) b!2706388))

(assert (= (and b!2706388 res!1136542) b!2706385))

(assert (= (and b!2706385 (not res!1136536)) b!2706387))

(assert (= (and b!2706387 res!1136539) b!2706383))

(assert (= (and d!777514 res!1136543) b!2706389))

(assert (= (and b!2706389 (not res!1136541)) b!2706382))

(assert (= (and b!2706382 res!1136537) b!2706386))

(assert (= (and b!2706386 (not res!1136538)) b!2706384))

(assert (= (and b!2706384 res!1136535) b!2706390))

(assert (=> b!2706384 m!3095621))

(declare-fun m!3096435 () Bool)

(assert (=> b!2706384 m!3096435))

(declare-fun m!3096437 () Bool)

(assert (=> b!2706384 m!3096437))

(assert (=> b!2706384 m!3095621))

(assert (=> b!2706384 m!3096435))

(assert (=> b!2706384 m!3096437))

(declare-fun m!3096439 () Bool)

(assert (=> b!2706384 m!3096439))

(assert (=> b!2706388 m!3096241))

(assert (=> b!2706388 m!3096243))

(assert (=> b!2706388 m!3095997))

(assert (=> b!2706388 m!3096241))

(assert (=> b!2706388 m!3096243))

(assert (=> b!2706388 m!3095997))

(declare-fun m!3096441 () Bool)

(assert (=> b!2706388 m!3096441))

(declare-fun m!3096443 () Bool)

(assert (=> b!2706387 m!3096443))

(declare-fun m!3096445 () Bool)

(assert (=> b!2706387 m!3096445))

(assert (=> b!2706387 m!3095997))

(assert (=> b!2706387 m!3096443))

(assert (=> b!2706387 m!3096445))

(assert (=> b!2706387 m!3095997))

(declare-fun m!3096447 () Bool)

(assert (=> b!2706387 m!3096447))

(assert (=> b!2706383 m!3096445))

(assert (=> b!2706383 m!3096241))

(assert (=> b!2706383 m!3096241))

(assert (=> b!2706383 m!3096443))

(declare-fun m!3096449 () Bool)

(assert (=> b!2706383 m!3096449))

(declare-fun m!3096451 () Bool)

(assert (=> b!2706383 m!3096451))

(assert (=> b!2706383 m!3095997))

(assert (=> b!2706383 m!3096443))

(assert (=> b!2706383 m!3096445))

(assert (=> b!2706383 m!3095997))

(assert (=> b!2706383 m!3096449))

(declare-fun m!3096453 () Bool)

(assert (=> b!2706390 m!3096453))

(assert (=> b!2706390 m!3096437))

(declare-fun m!3096455 () Bool)

(assert (=> b!2706390 m!3096455))

(declare-fun m!3096457 () Bool)

(assert (=> b!2706390 m!3096457))

(assert (=> b!2706390 m!3096437))

(assert (=> b!2706390 m!3096455))

(assert (=> b!2706390 m!3095621))

(assert (=> b!2706390 m!3095621))

(assert (=> b!2706390 m!3096435))

(assert (=> b!2706390 m!3096453))

(assert (=> b!2706390 m!3096435))

(assert (=> b!2706382 m!3095621))

(declare-fun m!3096459 () Bool)

(assert (=> b!2706382 m!3096459))

(assert (=> b!2706382 m!3096455))

(assert (=> b!2706382 m!3095621))

(assert (=> b!2706382 m!3096459))

(assert (=> b!2706382 m!3096455))

(declare-fun m!3096461 () Bool)

(assert (=> b!2706382 m!3096461))

(assert (=> d!777284 d!777514))

(assert (=> d!777284 d!777360))

(declare-fun d!777546 () Bool)

(declare-fun res!1136548 () Bool)

(declare-fun e!1706382 () Bool)

(assert (=> d!777546 (=> (not res!1136548) (not e!1706382))))

(assert (=> d!777546 (= res!1136548 (<= (size!24109 (list!11798 (xs!12817 (c!436511 input!603)))) 512))))

(assert (=> d!777546 (= (inv!42350 (c!436511 input!603)) e!1706382)))

(declare-fun b!2706399 () Bool)

(declare-fun res!1136549 () Bool)

(assert (=> b!2706399 (=> (not res!1136549) (not e!1706382))))

(assert (=> b!2706399 (= res!1136549 (= (csize!19769 (c!436511 input!603)) (size!24109 (list!11798 (xs!12817 (c!436511 input!603))))))))

(declare-fun b!2706400 () Bool)

(assert (=> b!2706400 (= e!1706382 (and (> (csize!19769 (c!436511 input!603)) 0) (<= (csize!19769 (c!436511 input!603)) 512)))))

(assert (= (and d!777546 res!1136548) b!2706399))

(assert (= (and b!2706399 res!1136549) b!2706400))

(declare-fun m!3096463 () Bool)

(assert (=> d!777546 m!3096463))

(assert (=> d!777546 m!3096463))

(declare-fun m!3096465 () Bool)

(assert (=> d!777546 m!3096465))

(assert (=> b!2706399 m!3096463))

(assert (=> b!2706399 m!3096463))

(assert (=> b!2706399 m!3096465))

(assert (=> b!2705547 d!777546))

(declare-fun d!777548 () Bool)

(declare-fun lt!956928 () Int)

(assert (=> d!777548 (= lt!956928 (size!24113 (list!11793 (_1!18061 lt!956748))))))

(assert (=> d!777548 (= lt!956928 (size!24114 (c!436512 (_1!18061 lt!956748))))))

(assert (=> d!777548 (= (size!24111 (_1!18061 lt!956748)) lt!956928)))

(declare-fun bs!487355 () Bool)

(assert (= bs!487355 d!777548))

(assert (=> bs!487355 m!3095559))

(assert (=> bs!487355 m!3095559))

(declare-fun m!3096467 () Bool)

(assert (=> bs!487355 m!3096467))

(declare-fun m!3096469 () Bool)

(assert (=> bs!487355 m!3096469))

(assert (=> d!777270 d!777548))

(declare-fun b!2706407 () Bool)

(declare-fun e!1706387 () Bool)

(declare-fun e!1706385 () Bool)

(assert (=> b!2706407 (= e!1706387 e!1706385)))

(declare-fun res!1136560 () Bool)

(assert (=> b!2706407 (=> (not res!1136560) (not e!1706385))))

(declare-fun lt!956930 () Option!6157)

(assert (=> b!2706407 (= res!1136560 (= (_1!18065 (get!9748 lt!956930)) (_1!18066 (get!9749 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 input!603))))))))

(declare-fun d!777550 () Bool)

(declare-fun e!1706390 () Bool)

(assert (=> d!777550 e!1706390))

(declare-fun res!1136561 () Bool)

(assert (=> d!777550 (=> (not res!1136561) (not e!1706390))))

(assert (=> d!777550 (= res!1136561 (= (isDefined!4875 lt!956930) (isDefined!4876 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 input!603)))))))

(declare-fun e!1706386 () Option!6157)

(assert (=> d!777550 (= lt!956930 e!1706386)))

(declare-fun c!436721 () Bool)

(assert (=> d!777550 (= c!436721 (and ((_ is Cons!31242) rules!1182) ((_ is Nil!31242) (t!225780 rules!1182))))))

(declare-fun lt!956929 () Unit!45295)

(declare-fun lt!956933 () Unit!45295)

(assert (=> d!777550 (= lt!956929 lt!956933)))

(declare-fun lt!956935 () List!31340)

(declare-fun lt!956934 () List!31340)

(assert (=> d!777550 (isPrefix!2474 lt!956935 lt!956934)))

(assert (=> d!777550 (= lt!956933 (lemmaIsPrefixRefl!1600 lt!956935 lt!956934))))

(assert (=> d!777550 (= lt!956934 (list!11792 input!603))))

(assert (=> d!777550 (= lt!956935 (list!11792 input!603))))

(assert (=> d!777550 (rulesValidInductive!1657 thiss!11556 rules!1182)))

(assert (=> d!777550 (= (maxPrefixZipperSequence!1017 thiss!11556 rules!1182 input!603) lt!956930)))

(declare-fun e!1706388 () Bool)

(declare-fun b!2706408 () Bool)

(assert (=> b!2706408 (= e!1706388 (= (list!11792 (_2!18065 (get!9748 lt!956930))) (_2!18066 (get!9749 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 input!603))))))))

(declare-fun b!2706409 () Bool)

(assert (=> b!2706409 (= e!1706385 (= (list!11792 (_2!18065 (get!9748 lt!956930))) (_2!18066 (get!9749 (maxPrefixZipper!461 thiss!11556 rules!1182 (list!11792 input!603))))))))

(declare-fun b!2706410 () Bool)

(declare-fun e!1706389 () Bool)

(assert (=> b!2706410 (= e!1706390 e!1706389)))

(declare-fun res!1136557 () Bool)

(assert (=> b!2706410 (=> res!1136557 e!1706389)))

(assert (=> b!2706410 (= res!1136557 (not (isDefined!4875 lt!956930)))))

(declare-fun b!2706411 () Bool)

(declare-fun res!1136558 () Bool)

(assert (=> b!2706411 (=> (not res!1136558) (not e!1706390))))

(assert (=> b!2706411 (= res!1136558 e!1706387)))

(declare-fun res!1136559 () Bool)

(assert (=> b!2706411 (=> res!1136559 e!1706387)))

(assert (=> b!2706411 (= res!1136559 (not (isDefined!4875 lt!956930)))))

(declare-fun call!174347 () Option!6157)

(declare-fun bm!174342 () Bool)

(assert (=> bm!174342 (= call!174347 (maxPrefixOneRuleZipperSequence!470 thiss!11556 (h!36662 rules!1182) input!603))))

(declare-fun b!2706412 () Bool)

(assert (=> b!2706412 (= e!1706386 call!174347)))

(declare-fun b!2706413 () Bool)

(assert (=> b!2706413 (= e!1706389 e!1706388)))

(declare-fun res!1136556 () Bool)

(assert (=> b!2706413 (=> (not res!1136556) (not e!1706388))))

(assert (=> b!2706413 (= res!1136556 (= (_1!18065 (get!9748 lt!956930)) (_1!18066 (get!9749 (maxPrefix!2357 thiss!11556 rules!1182 (list!11792 input!603))))))))

(declare-fun b!2706414 () Bool)

(declare-fun lt!956932 () Option!6157)

(declare-fun lt!956931 () Option!6157)

(assert (=> b!2706414 (= e!1706386 (ite (and ((_ is None!6156) lt!956932) ((_ is None!6156) lt!956931)) None!6156 (ite ((_ is None!6156) lt!956931) lt!956932 (ite ((_ is None!6156) lt!956932) lt!956931 (ite (>= (size!24105 (_1!18065 (v!32966 lt!956932))) (size!24105 (_1!18065 (v!32966 lt!956931)))) lt!956932 lt!956931)))))))

(assert (=> b!2706414 (= lt!956932 call!174347)))

(assert (=> b!2706414 (= lt!956931 (maxPrefixZipperSequence!1017 thiss!11556 (t!225780 rules!1182) input!603))))

(assert (= (and d!777550 c!436721) b!2706412))

(assert (= (and d!777550 (not c!436721)) b!2706414))

(assert (= (or b!2706412 b!2706414) bm!174342))

(assert (= (and d!777550 res!1136561) b!2706411))

(assert (= (and b!2706411 (not res!1136559)) b!2706407))

(assert (= (and b!2706407 res!1136560) b!2706409))

(assert (= (and b!2706411 res!1136558) b!2706410))

(assert (= (and b!2706410 (not res!1136557)) b!2706413))

(assert (= (and b!2706413 res!1136556) b!2706408))

(declare-fun m!3096471 () Bool)

(assert (=> b!2706413 m!3096471))

(assert (=> b!2706413 m!3095273))

(assert (=> b!2706413 m!3095273))

(assert (=> b!2706413 m!3096265))

(assert (=> b!2706413 m!3096265))

(declare-fun m!3096473 () Bool)

(assert (=> b!2706413 m!3096473))

(declare-fun m!3096475 () Bool)

(assert (=> bm!174342 m!3096475))

(declare-fun m!3096477 () Bool)

(assert (=> b!2706414 m!3096477))

(declare-fun m!3096479 () Bool)

(assert (=> b!2706411 m!3096479))

(assert (=> b!2706408 m!3096265))

(assert (=> b!2706408 m!3096473))

(assert (=> b!2706408 m!3095273))

(assert (=> b!2706408 m!3095273))

(assert (=> b!2706408 m!3096265))

(assert (=> b!2706408 m!3096471))

(declare-fun m!3096481 () Bool)

(assert (=> b!2706408 m!3096481))

(assert (=> b!2706410 m!3096479))

(assert (=> b!2706407 m!3096471))

(assert (=> b!2706407 m!3095273))

(assert (=> b!2706407 m!3095273))

(declare-fun m!3096483 () Bool)

(assert (=> b!2706407 m!3096483))

(assert (=> b!2706407 m!3096483))

(declare-fun m!3096485 () Bool)

(assert (=> b!2706407 m!3096485))

(assert (=> b!2706409 m!3095273))

(assert (=> b!2706409 m!3096483))

(assert (=> b!2706409 m!3096483))

(assert (=> b!2706409 m!3096485))

(assert (=> b!2706409 m!3095273))

(assert (=> b!2706409 m!3096471))

(assert (=> b!2706409 m!3096481))

(assert (=> d!777550 m!3095273))

(assert (=> d!777550 m!3096483))

(assert (=> d!777550 m!3095273))

(assert (=> d!777550 m!3096479))

(declare-fun m!3096487 () Bool)

(assert (=> d!777550 m!3096487))

(assert (=> d!777550 m!3096483))

(declare-fun m!3096489 () Bool)

(assert (=> d!777550 m!3096489))

(declare-fun m!3096491 () Bool)

(assert (=> d!777550 m!3096491))

(assert (=> d!777550 m!3095285))

(assert (=> d!777270 d!777550))

(declare-fun d!777552 () Bool)

(assert (=> d!777552 true))

(declare-fun lambda!100471 () Int)

(declare-fun order!17083 () Int)

(declare-fun dynLambda!13473 (Int Int) Int)

(assert (=> d!777552 (< (dynLambda!13468 order!17081 (toValue!6733 (transformation!4771 (h!36662 rules!1182)))) (dynLambda!13473 order!17083 lambda!100471))))

(declare-fun Forall2!803 (Int) Bool)

(assert (=> d!777552 (= (equivClasses!1869 (toChars!6592 (transformation!4771 (h!36662 rules!1182))) (toValue!6733 (transformation!4771 (h!36662 rules!1182)))) (Forall2!803 lambda!100471))))

(declare-fun bs!487358 () Bool)

(assert (= bs!487358 d!777552))

(declare-fun m!3096557 () Bool)

(assert (=> bs!487358 m!3096557))

(assert (=> b!2705544 d!777552))

(declare-fun b!2706450 () Bool)

(declare-fun e!1706410 () List!31340)

(assert (=> b!2706450 (= e!1706410 (list!11798 (xs!12817 (c!436511 totalInput!328))))))

(declare-fun b!2706449 () Bool)

(declare-fun e!1706409 () List!31340)

(assert (=> b!2706449 (= e!1706409 e!1706410)))

(declare-fun c!436728 () Bool)

(assert (=> b!2706449 (= c!436728 ((_ is Leaf!14899) (c!436511 totalInput!328)))))

(declare-fun d!777570 () Bool)

(declare-fun c!436727 () Bool)

(assert (=> d!777570 (= c!436727 ((_ is Empty!9769) (c!436511 totalInput!328)))))

(assert (=> d!777570 (= (list!11796 (c!436511 totalInput!328)) e!1706409)))

(declare-fun b!2706448 () Bool)

(assert (=> b!2706448 (= e!1706409 Nil!31240)))

(declare-fun b!2706451 () Bool)

(assert (=> b!2706451 (= e!1706410 (++!7691 (list!11796 (left!24028 (c!436511 totalInput!328))) (list!11796 (right!24358 (c!436511 totalInput!328)))))))

(assert (= (and d!777570 c!436727) b!2706448))

(assert (= (and d!777570 (not c!436727)) b!2706449))

(assert (= (and b!2706449 c!436728) b!2706450))

(assert (= (and b!2706449 (not c!436728)) b!2706451))

(assert (=> b!2706450 m!3096237))

(declare-fun m!3096559 () Bool)

(assert (=> b!2706451 m!3096559))

(declare-fun m!3096561 () Bool)

(assert (=> b!2706451 m!3096561))

(assert (=> b!2706451 m!3096559))

(assert (=> b!2706451 m!3096561))

(declare-fun m!3096563 () Bool)

(assert (=> b!2706451 m!3096563))

(assert (=> d!777186 d!777570))

(declare-fun d!777574 () Bool)

(declare-fun res!1136583 () Bool)

(declare-fun e!1706411 () Bool)

(assert (=> d!777574 (=> (not res!1136583) (not e!1706411))))

(assert (=> d!777574 (= res!1136583 (= (csize!19768 (c!436511 input!603)) (+ (size!24112 (left!24028 (c!436511 input!603))) (size!24112 (right!24358 (c!436511 input!603))))))))

(assert (=> d!777574 (= (inv!42349 (c!436511 input!603)) e!1706411)))

(declare-fun b!2706452 () Bool)

(declare-fun res!1136584 () Bool)

(assert (=> b!2706452 (=> (not res!1136584) (not e!1706411))))

(assert (=> b!2706452 (= res!1136584 (and (not (= (left!24028 (c!436511 input!603)) Empty!9769)) (not (= (right!24358 (c!436511 input!603)) Empty!9769))))))

(declare-fun b!2706453 () Bool)

(declare-fun res!1136585 () Bool)

(assert (=> b!2706453 (=> (not res!1136585) (not e!1706411))))

(assert (=> b!2706453 (= res!1136585 (= (cheight!9980 (c!436511 input!603)) (+ (max!0 (height!1437 (left!24028 (c!436511 input!603))) (height!1437 (right!24358 (c!436511 input!603)))) 1)))))

(declare-fun b!2706454 () Bool)

(assert (=> b!2706454 (= e!1706411 (<= 0 (cheight!9980 (c!436511 input!603))))))

(assert (= (and d!777574 res!1136583) b!2706452))

(assert (= (and b!2706452 res!1136584) b!2706453))

(assert (= (and b!2706453 res!1136585) b!2706454))

(declare-fun m!3096565 () Bool)

(assert (=> d!777574 m!3096565))

(declare-fun m!3096567 () Bool)

(assert (=> d!777574 m!3096567))

(declare-fun m!3096569 () Bool)

(assert (=> b!2706453 m!3096569))

(declare-fun m!3096571 () Bool)

(assert (=> b!2706453 m!3096571))

(assert (=> b!2706453 m!3096569))

(assert (=> b!2706453 m!3096571))

(declare-fun m!3096573 () Bool)

(assert (=> b!2706453 m!3096573))

(assert (=> b!2705545 d!777574))

(declare-fun b!2706457 () Bool)

(declare-fun e!1706413 () List!31340)

(assert (=> b!2706457 (= e!1706413 (list!11798 (xs!12817 (c!436511 (_2!18061 lt!956711)))))))

(declare-fun b!2706456 () Bool)

(declare-fun e!1706412 () List!31340)

(assert (=> b!2706456 (= e!1706412 e!1706413)))

(declare-fun c!436730 () Bool)

(assert (=> b!2706456 (= c!436730 ((_ is Leaf!14899) (c!436511 (_2!18061 lt!956711))))))

(declare-fun d!777576 () Bool)

(declare-fun c!436729 () Bool)

(assert (=> d!777576 (= c!436729 ((_ is Empty!9769) (c!436511 (_2!18061 lt!956711))))))

(assert (=> d!777576 (= (list!11796 (c!436511 (_2!18061 lt!956711))) e!1706412)))

(declare-fun b!2706455 () Bool)

(assert (=> b!2706455 (= e!1706412 Nil!31240)))

(declare-fun b!2706458 () Bool)

(assert (=> b!2706458 (= e!1706413 (++!7691 (list!11796 (left!24028 (c!436511 (_2!18061 lt!956711)))) (list!11796 (right!24358 (c!436511 (_2!18061 lt!956711))))))))

(assert (= (and d!777576 c!436729) b!2706455))

(assert (= (and d!777576 (not c!436729)) b!2706456))

(assert (= (and b!2706456 c!436730) b!2706457))

(assert (= (and b!2706456 (not c!436730)) b!2706458))

(declare-fun m!3096575 () Bool)

(assert (=> b!2706457 m!3096575))

(declare-fun m!3096577 () Bool)

(assert (=> b!2706458 m!3096577))

(declare-fun m!3096579 () Bool)

(assert (=> b!2706458 m!3096579))

(assert (=> b!2706458 m!3096577))

(assert (=> b!2706458 m!3096579))

(declare-fun m!3096581 () Bool)

(assert (=> b!2706458 m!3096581))

(assert (=> d!777292 d!777576))

(declare-fun b!2706460 () Bool)

(declare-fun e!1706414 () List!31341)

(declare-fun e!1706415 () List!31341)

(assert (=> b!2706460 (= e!1706414 e!1706415)))

(declare-fun c!436732 () Bool)

(assert (=> b!2706460 (= c!436732 ((_ is Leaf!14900) (c!436512 (_1!18061 lt!956709))))))

(declare-fun b!2706461 () Bool)

(assert (=> b!2706461 (= e!1706415 (list!11799 (xs!12818 (c!436512 (_1!18061 lt!956709)))))))

(declare-fun b!2706459 () Bool)

(assert (=> b!2706459 (= e!1706414 Nil!31241)))

(declare-fun b!2706462 () Bool)

(assert (=> b!2706462 (= e!1706415 (++!7695 (list!11797 (left!24029 (c!436512 (_1!18061 lt!956709)))) (list!11797 (right!24359 (c!436512 (_1!18061 lt!956709))))))))

(declare-fun d!777578 () Bool)

(declare-fun c!436731 () Bool)

(assert (=> d!777578 (= c!436731 ((_ is Empty!9770) (c!436512 (_1!18061 lt!956709))))))

(assert (=> d!777578 (= (list!11797 (c!436512 (_1!18061 lt!956709))) e!1706414)))

(assert (= (and d!777578 c!436731) b!2706459))

(assert (= (and d!777578 (not c!436731)) b!2706460))

(assert (= (and b!2706460 c!436732) b!2706461))

(assert (= (and b!2706460 (not c!436732)) b!2706462))

(declare-fun m!3096583 () Bool)

(assert (=> b!2706461 m!3096583))

(declare-fun m!3096585 () Bool)

(assert (=> b!2706462 m!3096585))

(declare-fun m!3096587 () Bool)

(assert (=> b!2706462 m!3096587))

(assert (=> b!2706462 m!3096585))

(assert (=> b!2706462 m!3096587))

(declare-fun m!3096589 () Bool)

(assert (=> b!2706462 m!3096589))

(assert (=> d!777286 d!777578))

(assert (=> b!2705424 d!777252))

(declare-fun b!2706463 () Bool)

(declare-fun res!1136586 () Bool)

(declare-fun e!1706416 () Bool)

(assert (=> b!2706463 (=> (not res!1136586) (not e!1706416))))

(assert (=> b!2706463 (= res!1136586 (not (isEmpty!17789 (left!24028 (c!436511 input!603)))))))

(declare-fun b!2706464 () Bool)

(assert (=> b!2706464 (= e!1706416 (not (isEmpty!17789 (right!24358 (c!436511 input!603)))))))

(declare-fun b!2706465 () Bool)

(declare-fun res!1136588 () Bool)

(assert (=> b!2706465 (=> (not res!1136588) (not e!1706416))))

(assert (=> b!2706465 (= res!1136588 (<= (- (height!1437 (left!24028 (c!436511 input!603))) (height!1437 (right!24358 (c!436511 input!603)))) 1))))

(declare-fun b!2706466 () Bool)

(declare-fun res!1136590 () Bool)

(assert (=> b!2706466 (=> (not res!1136590) (not e!1706416))))

(assert (=> b!2706466 (= res!1136590 (isBalanced!2955 (right!24358 (c!436511 input!603))))))

(declare-fun b!2706467 () Bool)

(declare-fun res!1136589 () Bool)

(assert (=> b!2706467 (=> (not res!1136589) (not e!1706416))))

(assert (=> b!2706467 (= res!1136589 (isBalanced!2955 (left!24028 (c!436511 input!603))))))

(declare-fun d!777580 () Bool)

(declare-fun res!1136587 () Bool)

(declare-fun e!1706417 () Bool)

(assert (=> d!777580 (=> res!1136587 e!1706417)))

(assert (=> d!777580 (= res!1136587 (not ((_ is Node!9769) (c!436511 input!603))))))

(assert (=> d!777580 (= (isBalanced!2955 (c!436511 input!603)) e!1706417)))

(declare-fun b!2706468 () Bool)

(assert (=> b!2706468 (= e!1706417 e!1706416)))

(declare-fun res!1136591 () Bool)

(assert (=> b!2706468 (=> (not res!1136591) (not e!1706416))))

(assert (=> b!2706468 (= res!1136591 (<= (- 1) (- (height!1437 (left!24028 (c!436511 input!603))) (height!1437 (right!24358 (c!436511 input!603))))))))

(assert (= (and d!777580 (not res!1136587)) b!2706468))

(assert (= (and b!2706468 res!1136591) b!2706465))

(assert (= (and b!2706465 res!1136588) b!2706467))

(assert (= (and b!2706467 res!1136589) b!2706466))

(assert (= (and b!2706466 res!1136590) b!2706463))

(assert (= (and b!2706463 res!1136586) b!2706464))

(declare-fun m!3096591 () Bool)

(assert (=> b!2706466 m!3096591))

(declare-fun m!3096593 () Bool)

(assert (=> b!2706464 m!3096593))

(assert (=> b!2706465 m!3096569))

(assert (=> b!2706465 m!3096571))

(declare-fun m!3096595 () Bool)

(assert (=> b!2706467 m!3096595))

(assert (=> b!2706468 m!3096569))

(assert (=> b!2706468 m!3096571))

(declare-fun m!3096597 () Bool)

(assert (=> b!2706463 m!3096597))

(assert (=> d!777246 d!777580))

(declare-fun d!777582 () Bool)

(declare-fun res!1136594 () Bool)

(declare-fun e!1706420 () Bool)

(assert (=> d!777582 (=> (not res!1136594) (not e!1706420))))

(assert (=> d!777582 (= res!1136594 (<= (size!24109 (list!11798 (xs!12817 (c!436511 treated!9)))) 512))))

(assert (=> d!777582 (= (inv!42350 (c!436511 treated!9)) e!1706420)))

(declare-fun b!2706471 () Bool)

(declare-fun res!1136595 () Bool)

(assert (=> b!2706471 (=> (not res!1136595) (not e!1706420))))

(assert (=> b!2706471 (= res!1136595 (= (csize!19769 (c!436511 treated!9)) (size!24109 (list!11798 (xs!12817 (c!436511 treated!9))))))))

(declare-fun b!2706472 () Bool)

(assert (=> b!2706472 (= e!1706420 (and (> (csize!19769 (c!436511 treated!9)) 0) (<= (csize!19769 (c!436511 treated!9)) 512)))))

(assert (= (and d!777582 res!1136594) b!2706471))

(assert (= (and b!2706471 res!1136595) b!2706472))

(assert (=> d!777582 m!3096335))

(assert (=> d!777582 m!3096335))

(declare-fun m!3096599 () Bool)

(assert (=> d!777582 m!3096599))

(assert (=> b!2706471 m!3096335))

(assert (=> b!2706471 m!3096335))

(assert (=> b!2706471 m!3096599))

(assert (=> b!2705541 d!777582))

(declare-fun b!2706475 () Bool)

(declare-fun e!1706422 () List!31340)

(assert (=> b!2706475 (= e!1706422 (list!11798 (xs!12817 (c!436511 input!603))))))

(declare-fun b!2706474 () Bool)

(declare-fun e!1706421 () List!31340)

(assert (=> b!2706474 (= e!1706421 e!1706422)))

(declare-fun c!436734 () Bool)

(assert (=> b!2706474 (= c!436734 ((_ is Leaf!14899) (c!436511 input!603)))))

(declare-fun d!777584 () Bool)

(declare-fun c!436733 () Bool)

(assert (=> d!777584 (= c!436733 ((_ is Empty!9769) (c!436511 input!603)))))

(assert (=> d!777584 (= (list!11796 (c!436511 input!603)) e!1706421)))

(declare-fun b!2706473 () Bool)

(assert (=> b!2706473 (= e!1706421 Nil!31240)))

(declare-fun b!2706476 () Bool)

(assert (=> b!2706476 (= e!1706422 (++!7691 (list!11796 (left!24028 (c!436511 input!603))) (list!11796 (right!24358 (c!436511 input!603)))))))

(assert (= (and d!777584 c!436733) b!2706473))

(assert (= (and d!777584 (not c!436733)) b!2706474))

(assert (= (and b!2706474 c!436734) b!2706475))

(assert (= (and b!2706474 (not c!436734)) b!2706476))

(assert (=> b!2706475 m!3096463))

(declare-fun m!3096601 () Bool)

(assert (=> b!2706476 m!3096601))

(declare-fun m!3096603 () Bool)

(assert (=> b!2706476 m!3096603))

(assert (=> b!2706476 m!3096601))

(assert (=> b!2706476 m!3096603))

(declare-fun m!3096605 () Bool)

(assert (=> b!2706476 m!3096605))

(assert (=> d!777212 d!777584))

(assert (=> b!2705668 d!777360))

(assert (=> b!2705668 d!777490))

(assert (=> b!2705668 d!777492))

(assert (=> b!2705668 d!777494))

(assert (=> b!2705668 d!777496))

(declare-fun d!777586 () Bool)

(declare-fun lt!956944 () Bool)

(assert (=> d!777586 (= lt!956944 (isEmpty!17790 (list!11793 (_1!18061 lt!956751))))))

(assert (=> d!777586 (= lt!956944 (isEmpty!17792 (c!436512 (_1!18061 lt!956751))))))

(assert (=> d!777586 (= (isEmpty!17788 (_1!18061 lt!956751)) lt!956944)))

(declare-fun bs!487359 () Bool)

(assert (= bs!487359 d!777586))

(assert (=> bs!487359 m!3095579))

(assert (=> bs!487359 m!3095579))

(declare-fun m!3096607 () Bool)

(assert (=> bs!487359 m!3096607))

(declare-fun m!3096609 () Bool)

(assert (=> bs!487359 m!3096609))

(assert (=> b!2705652 d!777586))

(assert (=> b!2705644 d!777482))

(assert (=> b!2705644 d!777474))

(assert (=> b!2705644 d!777212))

(declare-fun d!777588 () Bool)

(assert (=> d!777588 (= (inv!42332 (tag!5275 (h!36662 (t!225780 rules!1182)))) (= (mod (str.len (value!153585 (tag!5275 (h!36662 (t!225780 rules!1182))))) 2) 0))))

(assert (=> b!2705689 d!777588))

(declare-fun d!777590 () Bool)

(declare-fun res!1136596 () Bool)

(declare-fun e!1706423 () Bool)

(assert (=> d!777590 (=> (not res!1136596) (not e!1706423))))

(assert (=> d!777590 (= res!1136596 (semiInverseModEq!1968 (toChars!6592 (transformation!4771 (h!36662 (t!225780 rules!1182)))) (toValue!6733 (transformation!4771 (h!36662 (t!225780 rules!1182))))))))

(assert (=> d!777590 (= (inv!42339 (transformation!4771 (h!36662 (t!225780 rules!1182)))) e!1706423)))

(declare-fun b!2706477 () Bool)

(assert (=> b!2706477 (= e!1706423 (equivClasses!1869 (toChars!6592 (transformation!4771 (h!36662 (t!225780 rules!1182)))) (toValue!6733 (transformation!4771 (h!36662 (t!225780 rules!1182))))))))

(assert (= (and d!777590 res!1136596) b!2706477))

(declare-fun m!3096611 () Bool)

(assert (=> d!777590 m!3096611))

(declare-fun m!3096613 () Bool)

(assert (=> b!2706477 m!3096613))

(assert (=> b!2705689 d!777590))

(declare-fun d!777592 () Bool)

(assert (=> d!777592 (= (inv!42354 (xs!12818 (c!436512 acc!331))) (<= (size!24113 (innerList!9830 (xs!12818 (c!436512 acc!331)))) 2147483647))))

(declare-fun bs!487360 () Bool)

(assert (= bs!487360 d!777592))

(declare-fun m!3096615 () Bool)

(assert (=> bs!487360 m!3096615))

(assert (=> b!2705711 d!777592))

(declare-fun b!2706482 () Bool)

(declare-fun e!1706424 () Bool)

(declare-fun tp!855895 () Bool)

(assert (=> b!2706482 (= e!1706424 tp!855895)))

(assert (=> b!2705731 (= tp!855890 e!1706424)))

(declare-fun b!2706481 () Bool)

(declare-fun tp!855898 () Bool)

(declare-fun tp!855897 () Bool)

(assert (=> b!2706481 (= e!1706424 (and tp!855898 tp!855897))))

(declare-fun b!2706483 () Bool)

(declare-fun tp!855894 () Bool)

(declare-fun tp!855896 () Bool)

(assert (=> b!2706483 (= e!1706424 (and tp!855894 tp!855896))))

(declare-fun b!2706480 () Bool)

(assert (=> b!2706480 (= e!1706424 tp_is_empty!13865)))

(assert (= (and b!2705731 ((_ is ElementMatch!7923) (reg!8252 (regex!4771 (h!36662 rules!1182))))) b!2706480))

(assert (= (and b!2705731 ((_ is Concat!12917) (reg!8252 (regex!4771 (h!36662 rules!1182))))) b!2706481))

(assert (= (and b!2705731 ((_ is Star!7923) (reg!8252 (regex!4771 (h!36662 rules!1182))))) b!2706482))

(assert (= (and b!2705731 ((_ is Union!7923) (reg!8252 (regex!4771 (h!36662 rules!1182))))) b!2706483))

(declare-fun b!2706488 () Bool)

(declare-fun e!1706427 () Bool)

(declare-fun tp!855900 () Bool)

(assert (=> b!2706488 (= e!1706427 tp!855900)))

(assert (=> b!2705732 (= tp!855889 e!1706427)))

(declare-fun b!2706487 () Bool)

(declare-fun tp!855903 () Bool)

(declare-fun tp!855902 () Bool)

(assert (=> b!2706487 (= e!1706427 (and tp!855903 tp!855902))))

(declare-fun b!2706489 () Bool)

(declare-fun tp!855899 () Bool)

(declare-fun tp!855901 () Bool)

(assert (=> b!2706489 (= e!1706427 (and tp!855899 tp!855901))))

(declare-fun b!2706486 () Bool)

(assert (=> b!2706486 (= e!1706427 tp_is_empty!13865)))

(assert (= (and b!2705732 ((_ is ElementMatch!7923) (regOne!16359 (regex!4771 (h!36662 rules!1182))))) b!2706486))

(assert (= (and b!2705732 ((_ is Concat!12917) (regOne!16359 (regex!4771 (h!36662 rules!1182))))) b!2706487))

(assert (= (and b!2705732 ((_ is Star!7923) (regOne!16359 (regex!4771 (h!36662 rules!1182))))) b!2706488))

(assert (= (and b!2705732 ((_ is Union!7923) (regOne!16359 (regex!4771 (h!36662 rules!1182))))) b!2706489))

(declare-fun b!2706492 () Bool)

(declare-fun e!1706428 () Bool)

(declare-fun tp!855905 () Bool)

(assert (=> b!2706492 (= e!1706428 tp!855905)))

(assert (=> b!2705732 (= tp!855891 e!1706428)))

(declare-fun b!2706491 () Bool)

(declare-fun tp!855908 () Bool)

(declare-fun tp!855907 () Bool)

(assert (=> b!2706491 (= e!1706428 (and tp!855908 tp!855907))))

(declare-fun b!2706493 () Bool)

(declare-fun tp!855904 () Bool)

(declare-fun tp!855906 () Bool)

(assert (=> b!2706493 (= e!1706428 (and tp!855904 tp!855906))))

(declare-fun b!2706490 () Bool)

(assert (=> b!2706490 (= e!1706428 tp_is_empty!13865)))

(assert (= (and b!2705732 ((_ is ElementMatch!7923) (regTwo!16359 (regex!4771 (h!36662 rules!1182))))) b!2706490))

(assert (= (and b!2705732 ((_ is Concat!12917) (regTwo!16359 (regex!4771 (h!36662 rules!1182))))) b!2706491))

(assert (= (and b!2705732 ((_ is Star!7923) (regTwo!16359 (regex!4771 (h!36662 rules!1182))))) b!2706492))

(assert (= (and b!2705732 ((_ is Union!7923) (regTwo!16359 (regex!4771 (h!36662 rules!1182))))) b!2706493))

(declare-fun b!2706496 () Bool)

(declare-fun e!1706429 () Bool)

(declare-fun tp!855910 () Bool)

(assert (=> b!2706496 (= e!1706429 tp!855910)))

(assert (=> b!2705730 (= tp!855893 e!1706429)))

(declare-fun b!2706495 () Bool)

(declare-fun tp!855913 () Bool)

(declare-fun tp!855912 () Bool)

(assert (=> b!2706495 (= e!1706429 (and tp!855913 tp!855912))))

(declare-fun b!2706497 () Bool)

(declare-fun tp!855909 () Bool)

(declare-fun tp!855911 () Bool)

(assert (=> b!2706497 (= e!1706429 (and tp!855909 tp!855911))))

(declare-fun b!2706494 () Bool)

(assert (=> b!2706494 (= e!1706429 tp_is_empty!13865)))

(assert (= (and b!2705730 ((_ is ElementMatch!7923) (regOne!16358 (regex!4771 (h!36662 rules!1182))))) b!2706494))

(assert (= (and b!2705730 ((_ is Concat!12917) (regOne!16358 (regex!4771 (h!36662 rules!1182))))) b!2706495))

(assert (= (and b!2705730 ((_ is Star!7923) (regOne!16358 (regex!4771 (h!36662 rules!1182))))) b!2706496))

(assert (= (and b!2705730 ((_ is Union!7923) (regOne!16358 (regex!4771 (h!36662 rules!1182))))) b!2706497))

(declare-fun b!2706500 () Bool)

(declare-fun e!1706430 () Bool)

(declare-fun tp!855915 () Bool)

(assert (=> b!2706500 (= e!1706430 tp!855915)))

(assert (=> b!2705730 (= tp!855892 e!1706430)))

(declare-fun b!2706499 () Bool)

(declare-fun tp!855918 () Bool)

(declare-fun tp!855917 () Bool)

(assert (=> b!2706499 (= e!1706430 (and tp!855918 tp!855917))))

(declare-fun b!2706501 () Bool)

(declare-fun tp!855914 () Bool)

(declare-fun tp!855916 () Bool)

(assert (=> b!2706501 (= e!1706430 (and tp!855914 tp!855916))))

(declare-fun b!2706498 () Bool)

(assert (=> b!2706498 (= e!1706430 tp_is_empty!13865)))

(assert (= (and b!2705730 ((_ is ElementMatch!7923) (regTwo!16358 (regex!4771 (h!36662 rules!1182))))) b!2706498))

(assert (= (and b!2705730 ((_ is Concat!12917) (regTwo!16358 (regex!4771 (h!36662 rules!1182))))) b!2706499))

(assert (= (and b!2705730 ((_ is Star!7923) (regTwo!16358 (regex!4771 (h!36662 rules!1182))))) b!2706500))

(assert (= (and b!2705730 ((_ is Union!7923) (regTwo!16358 (regex!4771 (h!36662 rules!1182))))) b!2706501))

(declare-fun b!2706510 () Bool)

(declare-fun e!1706435 () Bool)

(declare-fun tp!855921 () Bool)

(assert (=> b!2706510 (= e!1706435 (and tp_is_empty!13865 tp!855921))))

(assert (=> b!2705701 (= tp!855861 e!1706435)))

(assert (= (and b!2705701 ((_ is Cons!31240) (innerList!9829 (xs!12817 (c!436511 input!603))))) b!2706510))

(declare-fun b!2706511 () Bool)

(declare-fun e!1706436 () Bool)

(declare-fun tp!855922 () Bool)

(assert (=> b!2706511 (= e!1706436 (and tp_is_empty!13865 tp!855922))))

(assert (=> b!2705718 (= tp!855876 e!1706436)))

(assert (= (and b!2705718 ((_ is Cons!31240) (innerList!9829 (xs!12817 (c!436511 totalInput!328))))) b!2706511))

(declare-fun tp!855924 () Bool)

(declare-fun e!1706438 () Bool)

(declare-fun b!2706512 () Bool)

(declare-fun tp!855925 () Bool)

(assert (=> b!2706512 (= e!1706438 (and (inv!42340 (left!24028 (left!24028 (c!436511 input!603)))) tp!855924 (inv!42340 (right!24358 (left!24028 (c!436511 input!603)))) tp!855925))))

(declare-fun b!2706514 () Bool)

(declare-fun e!1706437 () Bool)

(declare-fun tp!855923 () Bool)

(assert (=> b!2706514 (= e!1706437 tp!855923)))

(declare-fun b!2706513 () Bool)

(assert (=> b!2706513 (= e!1706438 (and (inv!42353 (xs!12817 (left!24028 (c!436511 input!603)))) e!1706437))))

(assert (=> b!2705699 (= tp!855862 (and (inv!42340 (left!24028 (c!436511 input!603))) e!1706438))))

(assert (= (and b!2705699 ((_ is Node!9769) (left!24028 (c!436511 input!603)))) b!2706512))

(assert (= b!2706513 b!2706514))

(assert (= (and b!2705699 ((_ is Leaf!14899) (left!24028 (c!436511 input!603)))) b!2706513))

(declare-fun m!3096625 () Bool)

(assert (=> b!2706512 m!3096625))

(declare-fun m!3096627 () Bool)

(assert (=> b!2706512 m!3096627))

(declare-fun m!3096629 () Bool)

(assert (=> b!2706513 m!3096629))

(assert (=> b!2705699 m!3095647))

(declare-fun b!2706515 () Bool)

(declare-fun e!1706440 () Bool)

(declare-fun tp!855928 () Bool)

(declare-fun tp!855927 () Bool)

(assert (=> b!2706515 (= e!1706440 (and (inv!42340 (left!24028 (right!24358 (c!436511 input!603)))) tp!855927 (inv!42340 (right!24358 (right!24358 (c!436511 input!603)))) tp!855928))))

(declare-fun b!2706517 () Bool)

(declare-fun e!1706439 () Bool)

(declare-fun tp!855926 () Bool)

(assert (=> b!2706517 (= e!1706439 tp!855926)))

(declare-fun b!2706516 () Bool)

(assert (=> b!2706516 (= e!1706440 (and (inv!42353 (xs!12817 (right!24358 (c!436511 input!603)))) e!1706439))))

(assert (=> b!2705699 (= tp!855863 (and (inv!42340 (right!24358 (c!436511 input!603))) e!1706440))))

(assert (= (and b!2705699 ((_ is Node!9769) (right!24358 (c!436511 input!603)))) b!2706515))

(assert (= b!2706516 b!2706517))

(assert (= (and b!2705699 ((_ is Leaf!14899) (right!24358 (c!436511 input!603)))) b!2706516))

(declare-fun m!3096631 () Bool)

(assert (=> b!2706515 m!3096631))

(declare-fun m!3096633 () Bool)

(assert (=> b!2706515 m!3096633))

(declare-fun m!3096635 () Bool)

(assert (=> b!2706516 m!3096635))

(assert (=> b!2705699 m!3095649))

(declare-fun tp!855930 () Bool)

(declare-fun e!1706442 () Bool)

(declare-fun b!2706518 () Bool)

(declare-fun tp!855931 () Bool)

(assert (=> b!2706518 (= e!1706442 (and (inv!42340 (left!24028 (left!24028 (c!436511 totalInput!328)))) tp!855930 (inv!42340 (right!24358 (left!24028 (c!436511 totalInput!328)))) tp!855931))))

(declare-fun b!2706520 () Bool)

(declare-fun e!1706441 () Bool)

(declare-fun tp!855929 () Bool)

(assert (=> b!2706520 (= e!1706441 tp!855929)))

(declare-fun b!2706519 () Bool)

(assert (=> b!2706519 (= e!1706442 (and (inv!42353 (xs!12817 (left!24028 (c!436511 totalInput!328)))) e!1706441))))

(assert (=> b!2705716 (= tp!855877 (and (inv!42340 (left!24028 (c!436511 totalInput!328))) e!1706442))))

(assert (= (and b!2705716 ((_ is Node!9769) (left!24028 (c!436511 totalInput!328)))) b!2706518))

(assert (= b!2706519 b!2706520))

(assert (= (and b!2705716 ((_ is Leaf!14899) (left!24028 (c!436511 totalInput!328)))) b!2706519))

(declare-fun m!3096637 () Bool)

(assert (=> b!2706518 m!3096637))

(declare-fun m!3096639 () Bool)

(assert (=> b!2706518 m!3096639))

(declare-fun m!3096641 () Bool)

(assert (=> b!2706519 m!3096641))

(assert (=> b!2705716 m!3095665))

(declare-fun b!2706523 () Bool)

(declare-fun tp!855933 () Bool)

(declare-fun e!1706445 () Bool)

(declare-fun tp!855934 () Bool)

(assert (=> b!2706523 (= e!1706445 (and (inv!42340 (left!24028 (right!24358 (c!436511 totalInput!328)))) tp!855933 (inv!42340 (right!24358 (right!24358 (c!436511 totalInput!328)))) tp!855934))))

(declare-fun b!2706525 () Bool)

(declare-fun e!1706444 () Bool)

(declare-fun tp!855932 () Bool)

(assert (=> b!2706525 (= e!1706444 tp!855932)))

(declare-fun b!2706524 () Bool)

(assert (=> b!2706524 (= e!1706445 (and (inv!42353 (xs!12817 (right!24358 (c!436511 totalInput!328)))) e!1706444))))

(assert (=> b!2705716 (= tp!855878 (and (inv!42340 (right!24358 (c!436511 totalInput!328))) e!1706445))))

(assert (= (and b!2705716 ((_ is Node!9769) (right!24358 (c!436511 totalInput!328)))) b!2706523))

(assert (= b!2706524 b!2706525))

(assert (= (and b!2705716 ((_ is Leaf!14899) (right!24358 (c!436511 totalInput!328)))) b!2706524))

(declare-fun m!3096647 () Bool)

(assert (=> b!2706523 m!3096647))

(declare-fun m!3096649 () Bool)

(assert (=> b!2706523 m!3096649))

(declare-fun m!3096653 () Bool)

(assert (=> b!2706524 m!3096653))

(assert (=> b!2705716 m!3095667))

(declare-fun b!2706528 () Bool)

(declare-fun e!1706447 () Bool)

(declare-fun tp!855935 () Bool)

(assert (=> b!2706528 (= e!1706447 (and tp_is_empty!13865 tp!855935))))

(assert (=> b!2705715 (= tp!855873 e!1706447)))

(assert (= (and b!2705715 ((_ is Cons!31240) (innerList!9829 (xs!12817 (c!436511 treated!9))))) b!2706528))

(declare-fun b!2706533 () Bool)

(declare-fun e!1706449 () Bool)

(declare-fun tp!855937 () Bool)

(assert (=> b!2706533 (= e!1706449 tp!855937)))

(assert (=> b!2705689 (= tp!855853 e!1706449)))

(declare-fun b!2706532 () Bool)

(declare-fun tp!855940 () Bool)

(declare-fun tp!855939 () Bool)

(assert (=> b!2706532 (= e!1706449 (and tp!855940 tp!855939))))

(declare-fun b!2706534 () Bool)

(declare-fun tp!855936 () Bool)

(declare-fun tp!855938 () Bool)

(assert (=> b!2706534 (= e!1706449 (and tp!855936 tp!855938))))

(declare-fun b!2706531 () Bool)

(assert (=> b!2706531 (= e!1706449 tp_is_empty!13865)))

(assert (= (and b!2705689 ((_ is ElementMatch!7923) (regex!4771 (h!36662 (t!225780 rules!1182))))) b!2706531))

(assert (= (and b!2705689 ((_ is Concat!12917) (regex!4771 (h!36662 (t!225780 rules!1182))))) b!2706532))

(assert (= (and b!2705689 ((_ is Star!7923) (regex!4771 (h!36662 (t!225780 rules!1182))))) b!2706533))

(assert (= (and b!2705689 ((_ is Union!7923) (regex!4771 (h!36662 (t!225780 rules!1182))))) b!2706534))

(declare-fun b!2706540 () Bool)

(declare-fun b_free!76389 () Bool)

(declare-fun b_next!77093 () Bool)

(assert (=> b!2706540 (= b_free!76389 (not b_next!77093))))

(declare-fun tp!855942 () Bool)

(declare-fun b_and!199821 () Bool)

(assert (=> b!2706540 (= tp!855942 b_and!199821)))

(declare-fun b_free!76391 () Bool)

(declare-fun b_next!77095 () Bool)

(assert (=> b!2706540 (= b_free!76391 (not b_next!77095))))

(declare-fun tp!855941 () Bool)

(declare-fun b_and!199823 () Bool)

(assert (=> b!2706540 (= tp!855941 b_and!199823)))

(declare-fun e!1706454 () Bool)

(assert (=> b!2706540 (= e!1706454 (and tp!855942 tp!855941))))

(declare-fun b!2706539 () Bool)

(declare-fun tp!855943 () Bool)

(declare-fun e!1706452 () Bool)

(assert (=> b!2706539 (= e!1706452 (and tp!855943 (inv!42332 (tag!5275 (h!36662 (t!225780 (t!225780 rules!1182))))) (inv!42339 (transformation!4771 (h!36662 (t!225780 (t!225780 rules!1182))))) e!1706454))))

(declare-fun b!2706538 () Bool)

(declare-fun e!1706453 () Bool)

(declare-fun tp!855944 () Bool)

(assert (=> b!2706538 (= e!1706453 (and e!1706452 tp!855944))))

(assert (=> b!2705688 (= tp!855854 e!1706453)))

(assert (= b!2706539 b!2706540))

(assert (= b!2706538 b!2706539))

(assert (= (and b!2705688 ((_ is Cons!31242) (t!225780 (t!225780 rules!1182)))) b!2706538))

(declare-fun m!3096671 () Bool)

(assert (=> b!2706539 m!3096671))

(declare-fun m!3096673 () Bool)

(assert (=> b!2706539 m!3096673))

(declare-fun b!2706541 () Bool)

(declare-fun e!1706456 () Bool)

(declare-fun tp!855946 () Bool)

(declare-fun tp!855947 () Bool)

(assert (=> b!2706541 (= e!1706456 (and (inv!42340 (left!24028 (left!24028 (c!436511 treated!9)))) tp!855946 (inv!42340 (right!24358 (left!24028 (c!436511 treated!9)))) tp!855947))))

(declare-fun b!2706543 () Bool)

(declare-fun e!1706455 () Bool)

(declare-fun tp!855945 () Bool)

(assert (=> b!2706543 (= e!1706455 tp!855945)))

(declare-fun b!2706542 () Bool)

(assert (=> b!2706542 (= e!1706456 (and (inv!42353 (xs!12817 (left!24028 (c!436511 treated!9)))) e!1706455))))

(assert (=> b!2705713 (= tp!855874 (and (inv!42340 (left!24028 (c!436511 treated!9))) e!1706456))))

(assert (= (and b!2705713 ((_ is Node!9769) (left!24028 (c!436511 treated!9)))) b!2706541))

(assert (= b!2706542 b!2706543))

(assert (= (and b!2705713 ((_ is Leaf!14899) (left!24028 (c!436511 treated!9)))) b!2706542))

(declare-fun m!3096675 () Bool)

(assert (=> b!2706541 m!3096675))

(declare-fun m!3096677 () Bool)

(assert (=> b!2706541 m!3096677))

(declare-fun m!3096679 () Bool)

(assert (=> b!2706542 m!3096679))

(assert (=> b!2705713 m!3095659))

(declare-fun e!1706458 () Bool)

(declare-fun tp!855949 () Bool)

(declare-fun b!2706544 () Bool)

(declare-fun tp!855950 () Bool)

(assert (=> b!2706544 (= e!1706458 (and (inv!42340 (left!24028 (right!24358 (c!436511 treated!9)))) tp!855949 (inv!42340 (right!24358 (right!24358 (c!436511 treated!9)))) tp!855950))))

(declare-fun b!2706546 () Bool)

(declare-fun e!1706457 () Bool)

(declare-fun tp!855948 () Bool)

(assert (=> b!2706546 (= e!1706457 tp!855948)))

(declare-fun b!2706545 () Bool)

(assert (=> b!2706545 (= e!1706458 (and (inv!42353 (xs!12817 (right!24358 (c!436511 treated!9)))) e!1706457))))

(assert (=> b!2705713 (= tp!855875 (and (inv!42340 (right!24358 (c!436511 treated!9))) e!1706458))))

(assert (= (and b!2705713 ((_ is Node!9769) (right!24358 (c!436511 treated!9)))) b!2706544))

(assert (= b!2706545 b!2706546))

(assert (= (and b!2705713 ((_ is Leaf!14899) (right!24358 (c!436511 treated!9)))) b!2706545))

(declare-fun m!3096681 () Bool)

(assert (=> b!2706544 m!3096681))

(declare-fun m!3096683 () Bool)

(assert (=> b!2706544 m!3096683))

(declare-fun m!3096685 () Bool)

(assert (=> b!2706545 m!3096685))

(assert (=> b!2705713 m!3095661))

(declare-fun b!2706566 () Bool)

(declare-fun b_free!76393 () Bool)

(declare-fun b_next!77097 () Bool)

(assert (=> b!2706566 (= b_free!76393 (not b_next!77097))))

(declare-fun tp!855963 () Bool)

(declare-fun b_and!199825 () Bool)

(assert (=> b!2706566 (= tp!855963 b_and!199825)))

(declare-fun b_free!76395 () Bool)

(declare-fun b_next!77099 () Bool)

(assert (=> b!2706566 (= b_free!76395 (not b_next!77099))))

(declare-fun tp!855965 () Bool)

(declare-fun b_and!199827 () Bool)

(assert (=> b!2706566 (= tp!855965 b_and!199827)))

(declare-fun e!1706476 () Bool)

(declare-fun e!1706474 () Bool)

(declare-fun tp!855964 () Bool)

(declare-fun b!2706564 () Bool)

(declare-fun inv!21 (TokenValue!4993) Bool)

(assert (=> b!2706564 (= e!1706474 (and (inv!21 (value!153586 (h!36661 (innerList!9830 (xs!12818 (c!436512 acc!331)))))) e!1706476 tp!855964))))

(declare-fun e!1706477 () Bool)

(declare-fun tp!855962 () Bool)

(declare-fun b!2706563 () Bool)

(declare-fun inv!42355 (Token!9004) Bool)

(assert (=> b!2706563 (= e!1706477 (and (inv!42355 (h!36661 (innerList!9830 (xs!12818 (c!436512 acc!331))))) e!1706474 tp!855962))))

(assert (=> b!2705712 (= tp!855872 e!1706477)))

(declare-fun e!1706478 () Bool)

(assert (=> b!2706566 (= e!1706478 (and tp!855963 tp!855965))))

(declare-fun b!2706565 () Bool)

(declare-fun tp!855961 () Bool)

(assert (=> b!2706565 (= e!1706476 (and tp!855961 (inv!42332 (tag!5275 (rule!7191 (h!36661 (innerList!9830 (xs!12818 (c!436512 acc!331))))))) (inv!42339 (transformation!4771 (rule!7191 (h!36661 (innerList!9830 (xs!12818 (c!436512 acc!331))))))) e!1706478))))

(assert (= b!2706565 b!2706566))

(assert (= b!2706564 b!2706565))

(assert (= b!2706563 b!2706564))

(assert (= (and b!2705712 ((_ is Cons!31241) (innerList!9830 (xs!12818 (c!436512 acc!331))))) b!2706563))

(declare-fun m!3096701 () Bool)

(assert (=> b!2706564 m!3096701))

(declare-fun m!3096703 () Bool)

(assert (=> b!2706563 m!3096703))

(declare-fun m!3096705 () Bool)

(assert (=> b!2706565 m!3096705))

(declare-fun m!3096707 () Bool)

(assert (=> b!2706565 m!3096707))

(declare-fun tp!855966 () Bool)

(declare-fun tp!855967 () Bool)

(declare-fun b!2706571 () Bool)

(declare-fun e!1706483 () Bool)

(assert (=> b!2706571 (= e!1706483 (and (inv!42338 (left!24029 (left!24029 (c!436512 acc!331)))) tp!855967 (inv!42338 (right!24359 (left!24029 (c!436512 acc!331)))) tp!855966))))

(declare-fun b!2706573 () Bool)

(declare-fun e!1706482 () Bool)

(declare-fun tp!855968 () Bool)

(assert (=> b!2706573 (= e!1706482 tp!855968)))

(declare-fun b!2706572 () Bool)

(assert (=> b!2706572 (= e!1706483 (and (inv!42354 (xs!12818 (left!24029 (c!436512 acc!331)))) e!1706482))))

(assert (=> b!2705710 (= tp!855871 (and (inv!42338 (left!24029 (c!436512 acc!331))) e!1706483))))

(assert (= (and b!2705710 ((_ is Node!9770) (left!24029 (c!436512 acc!331)))) b!2706571))

(assert (= b!2706572 b!2706573))

(assert (= (and b!2705710 ((_ is Leaf!14900) (left!24029 (c!436512 acc!331)))) b!2706572))

(declare-fun m!3096717 () Bool)

(assert (=> b!2706571 m!3096717))

(declare-fun m!3096721 () Bool)

(assert (=> b!2706571 m!3096721))

(declare-fun m!3096723 () Bool)

(assert (=> b!2706572 m!3096723))

(assert (=> b!2705710 m!3095653))

(declare-fun tp!855969 () Bool)

(declare-fun e!1706485 () Bool)

(declare-fun tp!855970 () Bool)

(declare-fun b!2706574 () Bool)

(assert (=> b!2706574 (= e!1706485 (and (inv!42338 (left!24029 (right!24359 (c!436512 acc!331)))) tp!855970 (inv!42338 (right!24359 (right!24359 (c!436512 acc!331)))) tp!855969))))

(declare-fun b!2706576 () Bool)

(declare-fun e!1706484 () Bool)

(declare-fun tp!855971 () Bool)

(assert (=> b!2706576 (= e!1706484 tp!855971)))

(declare-fun b!2706575 () Bool)

(assert (=> b!2706575 (= e!1706485 (and (inv!42354 (xs!12818 (right!24359 (c!436512 acc!331)))) e!1706484))))

(assert (=> b!2705710 (= tp!855870 (and (inv!42338 (right!24359 (c!436512 acc!331))) e!1706485))))

(assert (= (and b!2705710 ((_ is Node!9770) (right!24359 (c!436512 acc!331)))) b!2706574))

(assert (= b!2706575 b!2706576))

(assert (= (and b!2705710 ((_ is Leaf!14900) (right!24359 (c!436512 acc!331)))) b!2706575))

(declare-fun m!3096725 () Bool)

(assert (=> b!2706574 m!3096725))

(declare-fun m!3096727 () Bool)

(assert (=> b!2706574 m!3096727))

(declare-fun m!3096729 () Bool)

(assert (=> b!2706575 m!3096729))

(assert (=> b!2705710 m!3095655))

(declare-fun b_lambda!82389 () Bool)

(assert (= b_lambda!82387 (or d!777214 b_lambda!82389)))

(declare-fun bs!487369 () Bool)

(declare-fun d!777620 () Bool)

(assert (= bs!487369 (and d!777620 d!777214)))

(assert (=> bs!487369 (= (dynLambda!13470 lambda!100455 (h!36662 rules!1182)) (ruleValid!1563 thiss!11556 (h!36662 rules!1182)))))

(assert (=> bs!487369 m!3095447))

(assert (=> b!2706237 d!777620))

(check-sat (not b!2706068) (not bm!174338) (not b!2705762) (not d!777428) (not b!2706315) tp_is_empty!13865 (not b!2706239) (not b!2706307) (not b!2706411) (not b!2706410) (not b!2706168) (not b!2706532) (not b!2706116) (not b!2706208) (not b!2705770) (not b!2705777) (not b!2706450) (not b!2706176) (not b!2706175) (not b!2706482) (not bm!174337) (not b!2706269) (not b!2706058) (not b!2706270) (not d!777334) (not b!2706493) (not b!2706226) (not d!777310) (not d!777302) (not b_next!77097) (not d!777470) (not b!2706471) (not b!2706242) (not b!2706174) (not b!2706200) (not b!2705818) (not b!2706190) (not b!2705792) (not b!2706171) (not b!2705791) (not d!777498) b_and!199817 (not d!777482) (not b!2706528) (not b!2706180) (not d!777398) (not b!2706390) (not b!2706289) (not d!777344) (not b!2706457) (not b!2705772) (not b!2706461) (not b!2705906) (not d!777328) (not b!2705867) (not b!2706228) (not b!2706487) (not d!777552) (not b!2706575) (not b!2706538) (not b!2706320) (not b!2706573) (not b!2705768) (not b!2706576) (not b!2706060) (not b!2705908) (not b!2706463) (not b!2706477) (not d!777468) (not d!777350) (not b!2705716) (not bm!174325) (not b!2706189) (not b!2706499) (not bm!174320) (not b!2705893) (not b!2706282) (not b!2706210) (not d!777590) (not b!2705890) (not d!777458) (not b!2706518) (not b!2705749) (not bm!174323) (not b!2706512) (not d!777508) (not b!2706241) b_and!199823 (not b!2706565) (not b!2706408) (not b!2706464) (not b!2705771) (not b!2705748) (not b!2706511) (not b!2705907) (not b!2706466) (not d!777312) (not b!2705807) (not b!2706515) (not d!777426) (not b!2706520) (not bs!487369) b_and!199819 (not bm!174332) (not b!2705825) (not b!2706564) (not b!2706227) (not d!777422) (not b!2706115) (not d!777550) (not d!777462) (not b!2706451) (not d!777348) (not b!2706185) (not d!777582) (not b!2706501) (not b!2706184) (not b!2706265) (not b_next!77093) (not d!777546) (not b!2706177) (not b!2706489) (not b!2705746) (not b!2706516) (not bm!174342) (not d!777488) (not b!2706317) (not b!2705799) (not b!2706543) (not b!2705801) (not b!2706476) (not b!2706523) (not b!2706541) (not b!2706284) (not b!2706274) (not b!2706314) (not b!2706308) (not b!2706231) (not b!2706544) (not b!2706525) (not d!777592) (not b!2706222) (not b!2705820) (not b!2706273) (not d!777308) (not b!2706409) (not b!2705800) (not b_lambda!82389) (not bm!174327) (not d!777424) (not b!2706542) (not b!2706563) (not d!777474) (not b!2706500) (not b!2706187) (not b!2706382) (not b!2705864) (not b!2705710) (not b!2706238) (not b!2706319) (not b_next!77081) (not b!2706212) (not b!2706519) (not d!777574) (not b!2706291) (not b!2706276) (not b!2706413) (not b!2706399) (not b!2706546) (not b!2705745) (not d!777586) (not d!777472) (not b!2706539) (not b!2706215) (not b_next!77091) (not b!2706216) (not b!2705699) (not d!777342) (not b!2705886) (not b!2706170) (not d!777466) (not b!2705767) (not b!2706285) (not d!777548) (not b!2706414) (not b!2705868) (not b!2706513) (not b!2706468) (not b!2706481) (not b!2705750) (not b!2706407) (not d!777318) (not b!2706510) (not d!777316) (not d!777336) (not d!777420) (not b!2706458) (not b!2706232) (not b!2705909) (not b!2705888) (not b!2706483) (not b!2706465) (not b!2706545) (not d!777394) (not b!2706467) (not b!2706524) b_and!199809 (not b!2705911) (not b!2706574) (not bm!174334) (not b!2706453) (not b!2706316) (not b!2705713) (not b!2705891) (not b!2706303) (not d!777314) b_and!199821 b_and!199825 (not b!2705838) (not b_next!77099) (not b!2706186) (not b!2706181) b_and!199811 (not b!2706321) (not d!777460) (not b_next!77083) (not b!2706287) (not b!2706173) (not b!2706533) (not b!2706286) (not d!777480) (not b!2706167) (not b!2705910) (not d!777326) (not d!777360) (not b!2706383) (not b!2705790) (not b!2706244) (not b!2705809) (not b!2705837) (not b!2706169) (not b!2706076) (not b!2706491) (not b!2706283) (not b!2706496) (not b!2706517) (not b!2706475) (not d!777432) (not d!777430) (not d!777300) (not b!2706071) (not b!2705747) (not b!2706462) (not b!2706066) (not b_next!77089) (not b!2706279) (not b!2706183) (not bm!174333) (not b!2706224) (not b!2706304) (not b!2706278) (not b!2706288) (not d!777320) (not b!2706571) (not b!2705766) (not d!777486) (not b!2706201) (not b!2706281) (not d!777440) (not b!2706388) (not d!777346) (not b!2706230) (not b_next!77095) (not b!2706534) (not b!2706492) (not b!2706384) (not d!777510) (not b!2706514) (not b!2706182) (not b!2706272) b_and!199827 (not b!2706387) (not b!2706229) (not b!2706572) (not b!2706495) (not b!2706497) (not b!2705761) (not b!2706488) (not b!2706178) (not b!2705765))
(check-sat (not b_next!77097) b_and!199817 b_and!199823 b_and!199819 (not b_next!77093) (not b_next!77081) (not b_next!77091) b_and!199809 (not b_next!77089) (not b_next!77095) b_and!199827 b_and!199821 b_and!199825 (not b_next!77099) b_and!199811 (not b_next!77083))
