; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!164162 () Bool)

(assert start!164162)

(declare-fun b!1686305 () Bool)

(declare-fun b_free!45639 () Bool)

(declare-fun b_next!46343 () Bool)

(assert (=> b!1686305 (= b_free!45639 (not b_next!46343))))

(declare-fun tp!484265 () Bool)

(declare-fun b_and!120517 () Bool)

(assert (=> b!1686305 (= tp!484265 b_and!120517)))

(declare-fun b_free!45641 () Bool)

(declare-fun b_next!46345 () Bool)

(assert (=> b!1686305 (= b_free!45641 (not b_next!46345))))

(declare-fun tp!484260 () Bool)

(declare-fun b_and!120519 () Bool)

(assert (=> b!1686305 (= tp!484260 b_and!120519)))

(declare-fun b!1686301 () Bool)

(declare-fun b_free!45643 () Bool)

(declare-fun b_next!46347 () Bool)

(assert (=> b!1686301 (= b_free!45643 (not b_next!46347))))

(declare-fun tp!484262 () Bool)

(declare-fun b_and!120521 () Bool)

(assert (=> b!1686301 (= tp!484262 b_and!120521)))

(declare-fun b_free!45645 () Bool)

(declare-fun b_next!46349 () Bool)

(assert (=> b!1686301 (= b_free!45645 (not b_next!46349))))

(declare-fun tp!484263 () Bool)

(declare-fun b_and!120523 () Bool)

(assert (=> b!1686301 (= tp!484263 b_and!120523)))

(declare-fun b!1686296 () Bool)

(declare-fun e!1079573 () Bool)

(declare-fun e!1079575 () Bool)

(assert (=> b!1686296 (= e!1079573 e!1079575)))

(declare-fun res!755980 () Bool)

(assert (=> b!1686296 (=> res!755980 e!1079575)))

(declare-datatypes ((List!18547 0))(
  ( (Nil!18477) (Cons!18477 (h!23878 (_ BitVec 16)) (t!154800 List!18547)) )
))
(declare-datatypes ((TokenValue!3343 0))(
  ( (FloatLiteralValue!6686 (text!23846 List!18547)) (TokenValueExt!3342 (__x!11988 Int)) (Broken!16715 (value!102357 List!18547)) (Object!3412) (End!3343) (Def!3343) (Underscore!3343) (Match!3343) (Else!3343) (Error!3343) (Case!3343) (If!3343) (Extends!3343) (Abstract!3343) (Class!3343) (Val!3343) (DelimiterValue!6686 (del!3403 List!18547)) (KeywordValue!3349 (value!102358 List!18547)) (CommentValue!6686 (value!102359 List!18547)) (WhitespaceValue!6686 (value!102360 List!18547)) (IndentationValue!3343 (value!102361 List!18547)) (String!21046) (Int32!3343) (Broken!16716 (value!102362 List!18547)) (Boolean!3344) (Unit!31832) (OperatorValue!3346 (op!3403 List!18547)) (IdentifierValue!6686 (value!102363 List!18547)) (IdentifierValue!6687 (value!102364 List!18547)) (WhitespaceValue!6687 (value!102365 List!18547)) (True!6686) (False!6686) (Broken!16717 (value!102366 List!18547)) (Broken!16718 (value!102367 List!18547)) (True!6687) (RightBrace!3343) (RightBracket!3343) (Colon!3343) (Null!3343) (Comma!3343) (LeftBracket!3343) (False!6687) (LeftBrace!3343) (ImaginaryLiteralValue!3343 (text!23847 List!18547)) (StringLiteralValue!10029 (value!102368 List!18547)) (EOFValue!3343 (value!102369 List!18547)) (IdentValue!3343 (value!102370 List!18547)) (DelimiterValue!6687 (value!102371 List!18547)) (DedentValue!3343 (value!102372 List!18547)) (NewLineValue!3343 (value!102373 List!18547)) (IntegerValue!10029 (value!102374 (_ BitVec 32)) (text!23848 List!18547)) (IntegerValue!10030 (value!102375 Int) (text!23849 List!18547)) (Times!3343) (Or!3343) (Equal!3343) (Minus!3343) (Broken!16719 (value!102376 List!18547)) (And!3343) (Div!3343) (LessEqual!3343) (Mod!3343) (Concat!7924) (Not!3343) (Plus!3343) (SpaceValue!3343 (value!102377 List!18547)) (IntegerValue!10031 (value!102378 Int) (text!23850 List!18547)) (StringLiteralValue!10030 (text!23851 List!18547)) (FloatLiteralValue!6687 (text!23852 List!18547)) (BytesLiteralValue!3343 (value!102379 List!18547)) (CommentValue!6687 (value!102380 List!18547)) (StringLiteralValue!10031 (value!102381 List!18547)) (ErrorTokenValue!3343 (msg!3404 List!18547)) )
))
(declare-datatypes ((C!9336 0))(
  ( (C!9337 (val!5264 Int)) )
))
(declare-datatypes ((List!18548 0))(
  ( (Nil!18478) (Cons!18478 (h!23879 C!9336) (t!154801 List!18548)) )
))
(declare-datatypes ((IArray!12313 0))(
  ( (IArray!12314 (innerList!6214 List!18548)) )
))
(declare-datatypes ((Conc!6154 0))(
  ( (Node!6154 (left!14770 Conc!6154) (right!15100 Conc!6154) (csize!12538 Int) (cheight!6365 Int)) (Leaf!9001 (xs!9014 IArray!12313) (csize!12539 Int)) (Empty!6154) )
))
(declare-datatypes ((BalanceConc!12252 0))(
  ( (BalanceConc!12253 (c!275411 Conc!6154)) )
))
(declare-datatypes ((Regex!4581 0))(
  ( (ElementMatch!4581 (c!275412 C!9336)) (Concat!7925 (regOne!9674 Regex!4581) (regTwo!9674 Regex!4581)) (EmptyExpr!4581) (Star!4581 (reg!4910 Regex!4581)) (EmptyLang!4581) (Union!4581 (regOne!9675 Regex!4581) (regTwo!9675 Regex!4581)) )
))
(declare-datatypes ((String!21047 0))(
  ( (String!21048 (value!102382 String)) )
))
(declare-datatypes ((TokenValueInjection!6346 0))(
  ( (TokenValueInjection!6347 (toValue!4732 Int) (toChars!4591 Int)) )
))
(declare-datatypes ((Rule!6306 0))(
  ( (Rule!6307 (regex!3253 Regex!4581) (tag!3543 String!21047) (isSeparator!3253 Bool) (transformation!3253 TokenValueInjection!6346)) )
))
(declare-datatypes ((Token!6072 0))(
  ( (Token!6073 (value!102383 TokenValue!3343) (rule!5159 Rule!6306) (size!14718 Int) (originalCharacters!4067 List!18548)) )
))
(declare-datatypes ((tuple2!18222 0))(
  ( (tuple2!18223 (_1!10513 Token!6072) (_2!10513 List!18548)) )
))
(declare-datatypes ((Option!3564 0))(
  ( (None!3563) (Some!3563 (v!24884 tuple2!18222)) )
))
(declare-fun lt!640511 () Option!3564)

(declare-fun isDefined!2913 (Option!3564) Bool)

(assert (=> b!1686296 (= res!755980 (not (isDefined!2913 lt!640511)))))

(declare-datatypes ((Unit!31833 0))(
  ( (Unit!31834) )
))
(declare-fun lt!640503 () Unit!31833)

(declare-datatypes ((List!18549 0))(
  ( (Nil!18479) (Cons!18479 (h!23880 Rule!6306) (t!154802 List!18549)) )
))
(declare-fun rules!1846 () List!18549)

(declare-datatypes ((LexerInterface!2882 0))(
  ( (LexerInterfaceExt!2879 (__x!11989 Int)) (Lexer!2880) )
))
(declare-fun thiss!17113 () LexerInterface!2882)

(declare-fun lt!640509 () List!18548)

(declare-fun lt!640497 () List!18548)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!444 (LexerInterface!2882 List!18549 List!18548 List!18548) Unit!31833)

(assert (=> b!1686296 (= lt!640503 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!444 thiss!17113 rules!1846 lt!640509 lt!640497))))

(declare-fun b!1686297 () Bool)

(declare-fun res!755973 () Bool)

(declare-fun e!1079572 () Bool)

(assert (=> b!1686297 (=> (not res!755973) (not e!1079572))))

(declare-datatypes ((List!18550 0))(
  ( (Nil!18480) (Cons!18480 (h!23881 Token!6072) (t!154803 List!18550)) )
))
(declare-fun tokens!457 () List!18550)

(declare-fun tokensListTwoByTwoPredicateSeparableList!575 (LexerInterface!2882 List!18550 List!18549) Bool)

(assert (=> b!1686297 (= res!755973 (tokensListTwoByTwoPredicateSeparableList!575 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1686298 () Bool)

(declare-fun res!755965 () Bool)

(assert (=> b!1686298 (=> (not res!755965) (not e!1079572))))

(get-info :version)

(assert (=> b!1686298 (= res!755965 (and (not ((_ is Nil!18480) tokens!457)) (not ((_ is Nil!18480) (t!154803 tokens!457)))))))

(declare-fun e!1079581 () Bool)

(declare-fun e!1079576 () Bool)

(declare-fun b!1686299 () Bool)

(declare-fun tp!484267 () Bool)

(declare-fun inv!23839 (String!21047) Bool)

(declare-fun inv!23842 (TokenValueInjection!6346) Bool)

(assert (=> b!1686299 (= e!1079576 (and tp!484267 (inv!23839 (tag!3543 (h!23880 rules!1846))) (inv!23842 (transformation!3253 (h!23880 rules!1846))) e!1079581))))

(declare-fun b!1686300 () Bool)

(declare-fun e!1079583 () Bool)

(declare-fun e!1079580 () Bool)

(assert (=> b!1686300 (= e!1079583 e!1079580)))

(declare-fun res!755967 () Bool)

(assert (=> b!1686300 (=> res!755967 e!1079580)))

(declare-fun lt!640496 () List!18548)

(declare-fun lt!640506 () Regex!4581)

(declare-fun prefixMatch!494 (Regex!4581 List!18548) Bool)

(declare-fun ++!5061 (List!18548 List!18548) List!18548)

(assert (=> b!1686300 (= res!755967 (prefixMatch!494 lt!640506 (++!5061 lt!640509 lt!640496)))))

(declare-fun lt!640495 () BalanceConc!12252)

(declare-fun list!7427 (BalanceConc!12252) List!18548)

(assert (=> b!1686300 (= lt!640496 (list!7427 lt!640495))))

(assert (=> b!1686301 (= e!1079581 (and tp!484262 tp!484263))))

(declare-fun b!1686303 () Bool)

(declare-fun tp!484261 () Bool)

(declare-fun e!1079579 () Bool)

(declare-fun e!1079587 () Bool)

(declare-fun inv!21 (TokenValue!3343) Bool)

(assert (=> b!1686303 (= e!1079587 (and (inv!21 (value!102383 (h!23881 tokens!457))) e!1079579 tp!484261))))

(declare-fun b!1686304 () Bool)

(declare-fun e!1079578 () Bool)

(assert (=> b!1686304 (= e!1079572 e!1079578)))

(declare-fun res!755982 () Bool)

(assert (=> b!1686304 (=> (not res!755982) (not e!1079578))))

(declare-fun lt!640513 () List!18548)

(declare-fun lt!640505 () List!18548)

(assert (=> b!1686304 (= res!755982 (= lt!640513 lt!640505))))

(assert (=> b!1686304 (= lt!640505 (++!5061 lt!640509 lt!640497))))

(declare-fun lt!640493 () BalanceConc!12252)

(assert (=> b!1686304 (= lt!640513 (list!7427 lt!640493))))

(declare-fun lt!640514 () BalanceConc!12252)

(assert (=> b!1686304 (= lt!640497 (list!7427 lt!640514))))

(declare-fun lt!640508 () BalanceConc!12252)

(assert (=> b!1686304 (= lt!640509 (list!7427 lt!640508))))

(declare-fun charsOf!1902 (Token!6072) BalanceConc!12252)

(assert (=> b!1686304 (= lt!640508 (charsOf!1902 (h!23881 tokens!457)))))

(declare-datatypes ((IArray!12315 0))(
  ( (IArray!12316 (innerList!6215 List!18550)) )
))
(declare-datatypes ((Conc!6155 0))(
  ( (Node!6155 (left!14771 Conc!6155) (right!15101 Conc!6155) (csize!12540 Int) (cheight!6366 Int)) (Leaf!9002 (xs!9015 IArray!12315) (csize!12541 Int)) (Empty!6155) )
))
(declare-datatypes ((BalanceConc!12254 0))(
  ( (BalanceConc!12255 (c!275413 Conc!6155)) )
))
(declare-datatypes ((tuple2!18224 0))(
  ( (tuple2!18225 (_1!10514 BalanceConc!12254) (_2!10514 BalanceConc!12252)) )
))
(declare-fun lt!640512 () tuple2!18224)

(declare-fun lex!1366 (LexerInterface!2882 List!18549 BalanceConc!12252) tuple2!18224)

(assert (=> b!1686304 (= lt!640512 (lex!1366 thiss!17113 rules!1846 lt!640514))))

(declare-fun lt!640500 () BalanceConc!12254)

(declare-fun print!1413 (LexerInterface!2882 BalanceConc!12254) BalanceConc!12252)

(assert (=> b!1686304 (= lt!640514 (print!1413 thiss!17113 lt!640500))))

(declare-fun seqFromList!2243 (List!18550) BalanceConc!12254)

(assert (=> b!1686304 (= lt!640500 (seqFromList!2243 (t!154803 tokens!457)))))

(assert (=> b!1686304 (= lt!640493 (print!1413 thiss!17113 (seqFromList!2243 tokens!457)))))

(declare-fun e!1079585 () Bool)

(assert (=> b!1686305 (= e!1079585 (and tp!484265 tp!484260))))

(declare-fun b!1686306 () Bool)

(declare-fun e!1079584 () Bool)

(declare-fun maxPrefix!1442 (LexerInterface!2882 List!18549 List!18548) Option!3564)

(assert (=> b!1686306 (= e!1079584 (isDefined!2913 (maxPrefix!1442 thiss!17113 rules!1846 lt!640509)))))

(assert (=> b!1686306 (isDefined!2913 (maxPrefix!1442 thiss!17113 rules!1846 (originalCharacters!4067 (h!23881 tokens!457))))))

(declare-fun b!1686307 () Bool)

(declare-fun res!755977 () Bool)

(declare-fun e!1079588 () Bool)

(assert (=> b!1686307 (=> (not res!755977) (not e!1079588))))

(declare-fun head!3775 (List!18548) C!9336)

(assert (=> b!1686307 (= res!755977 (= lt!640496 (Cons!18478 (head!3775 (originalCharacters!4067 (h!23881 (t!154803 tokens!457)))) Nil!18478)))))

(declare-fun b!1686308 () Bool)

(declare-fun res!755983 () Bool)

(assert (=> b!1686308 (=> res!755983 e!1079573)))

(declare-fun rulesProduceIndividualToken!1530 (LexerInterface!2882 List!18549 Token!6072) Bool)

(assert (=> b!1686308 (= res!755983 (not (rulesProduceIndividualToken!1530 thiss!17113 rules!1846 (h!23881 tokens!457))))))

(declare-fun b!1686309 () Bool)

(declare-fun e!1079586 () Bool)

(assert (=> b!1686309 (= e!1079586 e!1079573)))

(declare-fun res!755984 () Bool)

(assert (=> b!1686309 (=> res!755984 e!1079573)))

(declare-fun lt!640498 () List!18548)

(declare-fun lt!640499 () List!18548)

(assert (=> b!1686309 (= res!755984 (or (not (= lt!640499 lt!640498)) (not (= lt!640498 lt!640509)) (not (= lt!640499 lt!640509))))))

(declare-fun printList!995 (LexerInterface!2882 List!18550) List!18548)

(assert (=> b!1686309 (= lt!640498 (printList!995 thiss!17113 (Cons!18480 (h!23881 tokens!457) Nil!18480)))))

(declare-fun lt!640510 () BalanceConc!12252)

(assert (=> b!1686309 (= lt!640499 (list!7427 lt!640510))))

(declare-fun lt!640494 () BalanceConc!12254)

(declare-fun printTailRec!933 (LexerInterface!2882 BalanceConc!12254 Int BalanceConc!12252) BalanceConc!12252)

(assert (=> b!1686309 (= lt!640510 (printTailRec!933 thiss!17113 lt!640494 0 (BalanceConc!12253 Empty!6154)))))

(assert (=> b!1686309 (= lt!640510 (print!1413 thiss!17113 lt!640494))))

(declare-fun singletonSeq!1774 (Token!6072) BalanceConc!12254)

(assert (=> b!1686309 (= lt!640494 (singletonSeq!1774 (h!23881 tokens!457)))))

(assert (=> b!1686309 (= lt!640511 (maxPrefix!1442 thiss!17113 rules!1846 lt!640513))))

(declare-fun b!1686310 () Bool)

(declare-fun res!755978 () Bool)

(assert (=> b!1686310 (=> res!755978 e!1079586)))

(declare-fun separableTokensPredicate!822 (LexerInterface!2882 Token!6072 Token!6072 List!18549) Bool)

(assert (=> b!1686310 (= res!755978 (not (separableTokensPredicate!822 thiss!17113 (h!23881 tokens!457) (h!23881 (t!154803 tokens!457)) rules!1846)))))

(declare-fun b!1686311 () Bool)

(declare-fun e!1079590 () Bool)

(declare-fun tp!484266 () Bool)

(assert (=> b!1686311 (= e!1079590 (and e!1079576 tp!484266))))

(declare-fun b!1686312 () Bool)

(declare-fun res!755974 () Bool)

(assert (=> b!1686312 (=> (not res!755974) (not e!1079588))))

(assert (=> b!1686312 (= res!755974 (= lt!640496 (Cons!18478 (head!3775 lt!640497) Nil!18478)))))

(declare-fun b!1686313 () Bool)

(declare-fun e!1079574 () Bool)

(assert (=> b!1686313 (= e!1079578 (not e!1079574))))

(declare-fun res!755972 () Bool)

(assert (=> b!1686313 (=> res!755972 e!1079574)))

(declare-fun lt!640504 () List!18550)

(assert (=> b!1686313 (= res!755972 (not (= lt!640504 (t!154803 tokens!457))))))

(declare-fun list!7428 (BalanceConc!12254) List!18550)

(assert (=> b!1686313 (= lt!640504 (list!7428 (_1!10514 lt!640512)))))

(declare-fun lt!640501 () Unit!31833)

(declare-fun theoremInvertabilityWhenTokenListSeparable!319 (LexerInterface!2882 List!18549 List!18550) Unit!31833)

(assert (=> b!1686313 (= lt!640501 (theoremInvertabilityWhenTokenListSeparable!319 thiss!17113 rules!1846 (t!154803 tokens!457)))))

(declare-fun isPrefix!1511 (List!18548 List!18548) Bool)

(assert (=> b!1686313 (isPrefix!1511 lt!640509 lt!640505)))

(declare-fun lt!640507 () Unit!31833)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1032 (List!18548 List!18548) Unit!31833)

(assert (=> b!1686313 (= lt!640507 (lemmaConcatTwoListThenFirstIsPrefix!1032 lt!640509 lt!640497))))

(declare-fun b!1686314 () Bool)

(declare-fun head!3776 (BalanceConc!12252) C!9336)

(assert (=> b!1686314 (= e!1079588 (= lt!640496 (Cons!18478 (head!3776 lt!640514) Nil!18478)))))

(declare-fun b!1686315 () Bool)

(declare-fun res!755970 () Bool)

(assert (=> b!1686315 (=> (not res!755970) (not e!1079572))))

(declare-fun rulesProduceEachTokenIndividuallyList!1084 (LexerInterface!2882 List!18549 List!18550) Bool)

(assert (=> b!1686315 (= res!755970 (rulesProduceEachTokenIndividuallyList!1084 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1686316 () Bool)

(assert (=> b!1686316 (= e!1079575 e!1079583)))

(declare-fun res!755981 () Bool)

(assert (=> b!1686316 (=> res!755981 e!1079583)))

(declare-fun prefixMatchZipperSequence!693 (Regex!4581 BalanceConc!12252) Bool)

(declare-fun ++!5062 (BalanceConc!12252 BalanceConc!12252) BalanceConc!12252)

(assert (=> b!1686316 (= res!755981 (prefixMatchZipperSequence!693 lt!640506 (++!5062 lt!640508 lt!640495)))))

(declare-fun singletonSeq!1775 (C!9336) BalanceConc!12252)

(declare-fun apply!5033 (BalanceConc!12252 Int) C!9336)

(assert (=> b!1686316 (= lt!640495 (singletonSeq!1775 (apply!5033 (charsOf!1902 (h!23881 (t!154803 tokens!457))) 0)))))

(declare-fun rulesRegex!635 (LexerInterface!2882 List!18549) Regex!4581)

(assert (=> b!1686316 (= lt!640506 (rulesRegex!635 thiss!17113 rules!1846))))

(declare-fun b!1686317 () Bool)

(declare-fun res!755966 () Bool)

(assert (=> b!1686317 (=> (not res!755966) (not e!1079572))))

(declare-fun isEmpty!11558 (List!18549) Bool)

(assert (=> b!1686317 (= res!755966 (not (isEmpty!11558 rules!1846)))))

(declare-fun b!1686318 () Bool)

(assert (=> b!1686318 (= e!1079574 e!1079586)))

(declare-fun res!755975 () Bool)

(assert (=> b!1686318 (=> res!755975 e!1079586)))

(declare-fun lt!640491 () List!18550)

(declare-fun lt!640502 () List!18550)

(assert (=> b!1686318 (= res!755975 (or (not (= lt!640504 lt!640491)) (not (= lt!640491 lt!640502))))))

(assert (=> b!1686318 (= lt!640491 (list!7428 lt!640500))))

(assert (=> b!1686318 (= lt!640504 lt!640502)))

(declare-fun prepend!849 (BalanceConc!12254 Token!6072) BalanceConc!12254)

(assert (=> b!1686318 (= lt!640502 (list!7428 (prepend!849 (seqFromList!2243 (t!154803 (t!154803 tokens!457))) (h!23881 (t!154803 tokens!457)))))))

(declare-fun lt!640492 () Unit!31833)

(declare-fun seqFromListBHdTlConstructive!322 (Token!6072 List!18550 BalanceConc!12254) Unit!31833)

(assert (=> b!1686318 (= lt!640492 (seqFromListBHdTlConstructive!322 (h!23881 (t!154803 tokens!457)) (t!154803 (t!154803 tokens!457)) (_1!10514 lt!640512)))))

(declare-fun b!1686319 () Bool)

(declare-fun res!755971 () Bool)

(assert (=> b!1686319 (=> (not res!755971) (not e!1079572))))

(declare-fun rulesInvariant!2551 (LexerInterface!2882 List!18549) Bool)

(assert (=> b!1686319 (= res!755971 (rulesInvariant!2551 thiss!17113 rules!1846))))

(declare-fun res!755969 () Bool)

(assert (=> start!164162 (=> (not res!755969) (not e!1079572))))

(assert (=> start!164162 (= res!755969 ((_ is Lexer!2880) thiss!17113))))

(assert (=> start!164162 e!1079572))

(assert (=> start!164162 true))

(assert (=> start!164162 e!1079590))

(declare-fun e!1079582 () Bool)

(assert (=> start!164162 e!1079582))

(declare-fun tp!484264 () Bool)

(declare-fun b!1686302 () Bool)

(assert (=> b!1686302 (= e!1079579 (and tp!484264 (inv!23839 (tag!3543 (rule!5159 (h!23881 tokens!457)))) (inv!23842 (transformation!3253 (rule!5159 (h!23881 tokens!457)))) e!1079585))))

(declare-fun b!1686320 () Bool)

(assert (=> b!1686320 (= e!1079580 e!1079584)))

(declare-fun res!755976 () Bool)

(assert (=> b!1686320 (=> res!755976 e!1079584)))

(declare-datatypes ((tuple2!18226 0))(
  ( (tuple2!18227 (_1!10515 Token!6072) (_2!10515 BalanceConc!12252)) )
))
(declare-datatypes ((Option!3565 0))(
  ( (None!3564) (Some!3564 (v!24885 tuple2!18226)) )
))
(declare-fun isDefined!2914 (Option!3565) Bool)

(declare-fun maxPrefixZipperSequence!753 (LexerInterface!2882 List!18549 BalanceConc!12252) Option!3565)

(declare-fun seqFromList!2244 (List!18548) BalanceConc!12252)

(assert (=> b!1686320 (= res!755976 (not (isDefined!2914 (maxPrefixZipperSequence!753 thiss!17113 rules!1846 (seqFromList!2244 (originalCharacters!4067 (h!23881 tokens!457)))))))))

(assert (=> b!1686320 e!1079588))

(declare-fun res!755968 () Bool)

(assert (=> b!1686320 (=> (not res!755968) (not e!1079588))))

(assert (=> b!1686320 (= res!755968 (= lt!640509 (originalCharacters!4067 (h!23881 tokens!457))))))

(declare-fun tp!484268 () Bool)

(declare-fun b!1686321 () Bool)

(declare-fun inv!23843 (Token!6072) Bool)

(assert (=> b!1686321 (= e!1079582 (and (inv!23843 (h!23881 tokens!457)) e!1079587 tp!484268))))

(declare-fun b!1686322 () Bool)

(declare-fun res!755979 () Bool)

(assert (=> b!1686322 (=> res!755979 e!1079573)))

(declare-fun isEmpty!11559 (BalanceConc!12254) Bool)

(assert (=> b!1686322 (= res!755979 (isEmpty!11559 (_1!10514 (lex!1366 thiss!17113 rules!1846 (seqFromList!2244 lt!640509)))))))

(assert (= (and start!164162 res!755969) b!1686317))

(assert (= (and b!1686317 res!755966) b!1686319))

(assert (= (and b!1686319 res!755971) b!1686315))

(assert (= (and b!1686315 res!755970) b!1686297))

(assert (= (and b!1686297 res!755973) b!1686298))

(assert (= (and b!1686298 res!755965) b!1686304))

(assert (= (and b!1686304 res!755982) b!1686313))

(assert (= (and b!1686313 (not res!755972)) b!1686318))

(assert (= (and b!1686318 (not res!755975)) b!1686310))

(assert (= (and b!1686310 (not res!755978)) b!1686309))

(assert (= (and b!1686309 (not res!755984)) b!1686308))

(assert (= (and b!1686308 (not res!755983)) b!1686322))

(assert (= (and b!1686322 (not res!755979)) b!1686296))

(assert (= (and b!1686296 (not res!755980)) b!1686316))

(assert (= (and b!1686316 (not res!755981)) b!1686300))

(assert (= (and b!1686300 (not res!755967)) b!1686320))

(assert (= (and b!1686320 res!755968) b!1686307))

(assert (= (and b!1686307 res!755977) b!1686312))

(assert (= (and b!1686312 res!755974) b!1686314))

(assert (= (and b!1686320 (not res!755976)) b!1686306))

(assert (= b!1686299 b!1686301))

(assert (= b!1686311 b!1686299))

(assert (= (and start!164162 ((_ is Cons!18479) rules!1846)) b!1686311))

(assert (= b!1686302 b!1686305))

(assert (= b!1686303 b!1686302))

(assert (= b!1686321 b!1686303))

(assert (= (and start!164162 ((_ is Cons!18480) tokens!457)) b!1686321))

(declare-fun m!2069479 () Bool)

(assert (=> b!1686316 m!2069479))

(declare-fun m!2069481 () Bool)

(assert (=> b!1686316 m!2069481))

(declare-fun m!2069483 () Bool)

(assert (=> b!1686316 m!2069483))

(declare-fun m!2069485 () Bool)

(assert (=> b!1686316 m!2069485))

(assert (=> b!1686316 m!2069481))

(declare-fun m!2069487 () Bool)

(assert (=> b!1686316 m!2069487))

(declare-fun m!2069489 () Bool)

(assert (=> b!1686316 m!2069489))

(assert (=> b!1686316 m!2069483))

(assert (=> b!1686316 m!2069489))

(declare-fun m!2069491 () Bool)

(assert (=> b!1686317 m!2069491))

(declare-fun m!2069493 () Bool)

(assert (=> b!1686304 m!2069493))

(declare-fun m!2069495 () Bool)

(assert (=> b!1686304 m!2069495))

(declare-fun m!2069497 () Bool)

(assert (=> b!1686304 m!2069497))

(declare-fun m!2069499 () Bool)

(assert (=> b!1686304 m!2069499))

(declare-fun m!2069501 () Bool)

(assert (=> b!1686304 m!2069501))

(declare-fun m!2069503 () Bool)

(assert (=> b!1686304 m!2069503))

(declare-fun m!2069505 () Bool)

(assert (=> b!1686304 m!2069505))

(declare-fun m!2069507 () Bool)

(assert (=> b!1686304 m!2069507))

(declare-fun m!2069509 () Bool)

(assert (=> b!1686304 m!2069509))

(declare-fun m!2069511 () Bool)

(assert (=> b!1686304 m!2069511))

(assert (=> b!1686304 m!2069505))

(declare-fun m!2069513 () Bool)

(assert (=> b!1686319 m!2069513))

(declare-fun m!2069515 () Bool)

(assert (=> b!1686318 m!2069515))

(declare-fun m!2069517 () Bool)

(assert (=> b!1686318 m!2069517))

(declare-fun m!2069519 () Bool)

(assert (=> b!1686318 m!2069519))

(declare-fun m!2069521 () Bool)

(assert (=> b!1686318 m!2069521))

(declare-fun m!2069523 () Bool)

(assert (=> b!1686318 m!2069523))

(assert (=> b!1686318 m!2069517))

(assert (=> b!1686318 m!2069519))

(declare-fun m!2069525 () Bool)

(assert (=> b!1686321 m!2069525))

(declare-fun m!2069527 () Bool)

(assert (=> b!1686300 m!2069527))

(assert (=> b!1686300 m!2069527))

(declare-fun m!2069529 () Bool)

(assert (=> b!1686300 m!2069529))

(declare-fun m!2069531 () Bool)

(assert (=> b!1686300 m!2069531))

(declare-fun m!2069533 () Bool)

(assert (=> b!1686299 m!2069533))

(declare-fun m!2069535 () Bool)

(assert (=> b!1686299 m!2069535))

(declare-fun m!2069537 () Bool)

(assert (=> b!1686297 m!2069537))

(declare-fun m!2069539 () Bool)

(assert (=> b!1686306 m!2069539))

(assert (=> b!1686306 m!2069539))

(declare-fun m!2069541 () Bool)

(assert (=> b!1686306 m!2069541))

(declare-fun m!2069543 () Bool)

(assert (=> b!1686306 m!2069543))

(assert (=> b!1686306 m!2069543))

(declare-fun m!2069545 () Bool)

(assert (=> b!1686306 m!2069545))

(declare-fun m!2069547 () Bool)

(assert (=> b!1686310 m!2069547))

(declare-fun m!2069549 () Bool)

(assert (=> b!1686314 m!2069549))

(declare-fun m!2069551 () Bool)

(assert (=> b!1686302 m!2069551))

(declare-fun m!2069553 () Bool)

(assert (=> b!1686302 m!2069553))

(declare-fun m!2069555 () Bool)

(assert (=> b!1686309 m!2069555))

(declare-fun m!2069557 () Bool)

(assert (=> b!1686309 m!2069557))

(declare-fun m!2069559 () Bool)

(assert (=> b!1686309 m!2069559))

(declare-fun m!2069561 () Bool)

(assert (=> b!1686309 m!2069561))

(declare-fun m!2069563 () Bool)

(assert (=> b!1686309 m!2069563))

(declare-fun m!2069565 () Bool)

(assert (=> b!1686309 m!2069565))

(declare-fun m!2069567 () Bool)

(assert (=> b!1686313 m!2069567))

(declare-fun m!2069569 () Bool)

(assert (=> b!1686313 m!2069569))

(declare-fun m!2069571 () Bool)

(assert (=> b!1686313 m!2069571))

(declare-fun m!2069573 () Bool)

(assert (=> b!1686313 m!2069573))

(declare-fun m!2069575 () Bool)

(assert (=> b!1686308 m!2069575))

(declare-fun m!2069577 () Bool)

(assert (=> b!1686296 m!2069577))

(declare-fun m!2069579 () Bool)

(assert (=> b!1686296 m!2069579))

(declare-fun m!2069581 () Bool)

(assert (=> b!1686322 m!2069581))

(assert (=> b!1686322 m!2069581))

(declare-fun m!2069583 () Bool)

(assert (=> b!1686322 m!2069583))

(declare-fun m!2069585 () Bool)

(assert (=> b!1686322 m!2069585))

(declare-fun m!2069587 () Bool)

(assert (=> b!1686320 m!2069587))

(assert (=> b!1686320 m!2069587))

(declare-fun m!2069589 () Bool)

(assert (=> b!1686320 m!2069589))

(assert (=> b!1686320 m!2069589))

(declare-fun m!2069591 () Bool)

(assert (=> b!1686320 m!2069591))

(declare-fun m!2069593 () Bool)

(assert (=> b!1686303 m!2069593))

(declare-fun m!2069595 () Bool)

(assert (=> b!1686307 m!2069595))

(declare-fun m!2069597 () Bool)

(assert (=> b!1686312 m!2069597))

(declare-fun m!2069599 () Bool)

(assert (=> b!1686315 m!2069599))

(check-sat (not b!1686299) (not b!1686318) (not b!1686314) (not b!1686321) b_and!120517 (not b!1686320) (not b!1686319) (not b!1686304) b_and!120523 (not b!1686315) (not b!1686310) (not b_next!46343) (not b!1686296) (not b!1686312) b_and!120519 (not b!1686316) (not b_next!46347) (not b!1686297) (not b!1686311) (not b!1686302) (not b!1686322) (not b!1686300) b_and!120521 (not b!1686309) (not b_next!46345) (not b!1686306) (not b!1686317) (not b!1686303) (not b!1686313) (not b!1686308) (not b_next!46349) (not b!1686307))
(check-sat b_and!120519 (not b_next!46347) b_and!120517 b_and!120521 b_and!120523 (not b_next!46345) (not b_next!46343) (not b_next!46349))
