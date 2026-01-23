; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108696 () Bool)

(assert start!108696)

(declare-fun b!1216337 () Bool)

(declare-fun b_free!29249 () Bool)

(declare-fun b_next!29953 () Bool)

(assert (=> b!1216337 (= b_free!29249 (not b_next!29953))))

(declare-fun tp!345358 () Bool)

(declare-fun b_and!82641 () Bool)

(assert (=> b!1216337 (= tp!345358 b_and!82641)))

(declare-fun b_free!29251 () Bool)

(declare-fun b_next!29955 () Bool)

(assert (=> b!1216337 (= b_free!29251 (not b_next!29955))))

(declare-fun tp!345360 () Bool)

(declare-fun b_and!82643 () Bool)

(assert (=> b!1216337 (= tp!345360 b_and!82643)))

(declare-fun b!1216349 () Bool)

(declare-fun b_free!29253 () Bool)

(declare-fun b_next!29957 () Bool)

(assert (=> b!1216349 (= b_free!29253 (not b_next!29957))))

(declare-fun tp!345364 () Bool)

(declare-fun b_and!82645 () Bool)

(assert (=> b!1216349 (= tp!345364 b_and!82645)))

(declare-fun b_free!29255 () Bool)

(declare-fun b_next!29959 () Bool)

(assert (=> b!1216349 (= b_free!29255 (not b_next!29959))))

(declare-fun tp!345359 () Bool)

(declare-fun b_and!82647 () Bool)

(assert (=> b!1216349 (= tp!345359 b_and!82647)))

(declare-fun b!1216332 () Bool)

(declare-fun e!780699 () Bool)

(declare-fun e!780690 () Bool)

(assert (=> b!1216332 (= e!780699 e!780690)))

(declare-fun res!546933 () Bool)

(assert (=> b!1216332 (=> (not res!546933) (not e!780690))))

(declare-datatypes ((C!7134 0))(
  ( (C!7135 (val!4097 Int)) )
))
(declare-datatypes ((List!12476 0))(
  ( (Nil!12418) (Cons!12418 (h!17819 C!7134) (t!113190 List!12476)) )
))
(declare-fun lt!415742 () List!12476)

(declare-fun lt!415741 () List!12476)

(assert (=> b!1216332 (= res!546933 (= lt!415742 lt!415741))))

(declare-datatypes ((IArray!8135 0))(
  ( (IArray!8136 (innerList!4125 List!12476)) )
))
(declare-datatypes ((Conc!4065 0))(
  ( (Node!4065 (left!10722 Conc!4065) (right!11052 Conc!4065) (csize!8360 Int) (cheight!4276 Int)) (Leaf!6283 (xs!6776 IArray!8135) (csize!8361 Int)) (Empty!4065) )
))
(declare-datatypes ((BalanceConc!8062 0))(
  ( (BalanceConc!8063 (c!203439 Conc!4065)) )
))
(declare-fun lt!415740 () BalanceConc!8062)

(declare-fun list!4578 (BalanceConc!8062) List!12476)

(assert (=> b!1216332 (= lt!415741 (list!4578 lt!415740))))

(declare-fun lt!415739 () BalanceConc!8062)

(assert (=> b!1216332 (= lt!415742 (list!4578 lt!415739))))

(declare-fun b!1216333 () Bool)

(declare-datatypes ((List!12477 0))(
  ( (Nil!12419) (Cons!12419 (h!17820 (_ BitVec 16)) (t!113191 List!12477)) )
))
(declare-datatypes ((TokenValue!2206 0))(
  ( (FloatLiteralValue!4412 (text!15887 List!12477)) (TokenValueExt!2205 (__x!8127 Int)) (Broken!11030 (value!69505 List!12477)) (Object!2263) (End!2206) (Def!2206) (Underscore!2206) (Match!2206) (Else!2206) (Error!2206) (Case!2206) (If!2206) (Extends!2206) (Abstract!2206) (Class!2206) (Val!2206) (DelimiterValue!4412 (del!2266 List!12477)) (KeywordValue!2212 (value!69506 List!12477)) (CommentValue!4412 (value!69507 List!12477)) (WhitespaceValue!4412 (value!69508 List!12477)) (IndentationValue!2206 (value!69509 List!12477)) (String!15163) (Int32!2206) (Broken!11031 (value!69510 List!12477)) (Boolean!2207) (Unit!18692) (OperatorValue!2209 (op!2266 List!12477)) (IdentifierValue!4412 (value!69511 List!12477)) (IdentifierValue!4413 (value!69512 List!12477)) (WhitespaceValue!4413 (value!69513 List!12477)) (True!4412) (False!4412) (Broken!11032 (value!69514 List!12477)) (Broken!11033 (value!69515 List!12477)) (True!4413) (RightBrace!2206) (RightBracket!2206) (Colon!2206) (Null!2206) (Comma!2206) (LeftBracket!2206) (False!4413) (LeftBrace!2206) (ImaginaryLiteralValue!2206 (text!15888 List!12477)) (StringLiteralValue!6618 (value!69516 List!12477)) (EOFValue!2206 (value!69517 List!12477)) (IdentValue!2206 (value!69518 List!12477)) (DelimiterValue!4413 (value!69519 List!12477)) (DedentValue!2206 (value!69520 List!12477)) (NewLineValue!2206 (value!69521 List!12477)) (IntegerValue!6618 (value!69522 (_ BitVec 32)) (text!15889 List!12477)) (IntegerValue!6619 (value!69523 Int) (text!15890 List!12477)) (Times!2206) (Or!2206) (Equal!2206) (Minus!2206) (Broken!11034 (value!69524 List!12477)) (And!2206) (Div!2206) (LessEqual!2206) (Mod!2206) (Concat!5614) (Not!2206) (Plus!2206) (SpaceValue!2206 (value!69525 List!12477)) (IntegerValue!6620 (value!69526 Int) (text!15891 List!12477)) (StringLiteralValue!6619 (text!15892 List!12477)) (FloatLiteralValue!4413 (text!15893 List!12477)) (BytesLiteralValue!2206 (value!69527 List!12477)) (CommentValue!4413 (value!69528 List!12477)) (StringLiteralValue!6620 (value!69529 List!12477)) (ErrorTokenValue!2206 (msg!2267 List!12477)) )
))
(declare-datatypes ((Regex!3408 0))(
  ( (ElementMatch!3408 (c!203440 C!7134)) (Concat!5615 (regOne!7328 Regex!3408) (regTwo!7328 Regex!3408)) (EmptyExpr!3408) (Star!3408 (reg!3737 Regex!3408)) (EmptyLang!3408) (Union!3408 (regOne!7329 Regex!3408) (regTwo!7329 Regex!3408)) )
))
(declare-datatypes ((String!15164 0))(
  ( (String!15165 (value!69530 String)) )
))
(declare-datatypes ((TokenValueInjection!4108 0))(
  ( (TokenValueInjection!4109 (toValue!3267 Int) (toChars!3126 Int)) )
))
(declare-datatypes ((Rule!4076 0))(
  ( (Rule!4077 (regex!2138 Regex!3408) (tag!2400 String!15164) (isSeparator!2138 Bool) (transformation!2138 TokenValueInjection!4108)) )
))
(declare-datatypes ((Token!3938 0))(
  ( (Token!3939 (value!69531 TokenValue!2206) (rule!3563 Rule!4076) (size!9820 Int) (originalCharacters!2692 List!12476)) )
))
(declare-datatypes ((tuple2!12286 0))(
  ( (tuple2!12287 (_1!6990 Token!3938) (_2!6990 List!12476)) )
))
(declare-fun lt!415743 () tuple2!12286)

(declare-fun matchR!1525 (Regex!3408 List!12476) Bool)

(assert (=> b!1216333 (= e!780690 (not (matchR!1525 (regex!2138 (rule!3563 (_1!6990 lt!415743))) lt!415742)))))

(declare-fun tp!345365 () Bool)

(declare-fun e!780693 () Bool)

(declare-fun b!1216334 () Bool)

(declare-fun e!780698 () Bool)

(declare-datatypes ((List!12478 0))(
  ( (Nil!12420) (Cons!12420 (h!17821 Rule!4076) (t!113192 List!12478)) )
))
(declare-fun rules!2728 () List!12478)

(declare-fun inv!16608 (String!15164) Bool)

(declare-fun inv!16611 (TokenValueInjection!4108) Bool)

(assert (=> b!1216334 (= e!780698 (and tp!345365 (inv!16608 (tag!2400 (h!17821 rules!2728))) (inv!16611 (transformation!2138 (h!17821 rules!2728))) e!780693))))

(declare-fun b!1216335 () Bool)

(declare-fun res!546928 () Bool)

(declare-fun e!780701 () Bool)

(assert (=> b!1216335 (=> (not res!546928) (not e!780701))))

(declare-fun isEmpty!7383 (List!12478) Bool)

(assert (=> b!1216335 (= res!546928 (not (isEmpty!7383 rules!2728)))))

(declare-fun b!1216336 () Bool)

(declare-fun res!546935 () Bool)

(assert (=> b!1216336 (=> (not res!546935) (not e!780701))))

(declare-datatypes ((List!12479 0))(
  ( (Nil!12421) (Cons!12421 (h!17822 Token!3938) (t!113193 List!12479)) )
))
(declare-fun tokens!556 () List!12479)

(declare-datatypes ((LexerInterface!1833 0))(
  ( (LexerInterfaceExt!1830 (__x!8128 Int)) (Lexer!1831) )
))
(declare-fun thiss!20528 () LexerInterface!1833)

(declare-fun input!2346 () List!12476)

(declare-datatypes ((tuple2!12288 0))(
  ( (tuple2!12289 (_1!6991 List!12479) (_2!6991 List!12476)) )
))
(declare-fun lexList!463 (LexerInterface!1833 List!12478 List!12476) tuple2!12288)

(assert (=> b!1216336 (= res!546935 (= (_1!6991 (lexList!463 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun e!780689 () Bool)

(assert (=> b!1216337 (= e!780689 (and tp!345358 tp!345360))))

(declare-fun b!1216338 () Bool)

(declare-fun res!546929 () Bool)

(assert (=> b!1216338 (=> (not res!546929) (not e!780701))))

(declare-fun rulesInvariant!1707 (LexerInterface!1833 List!12478) Bool)

(assert (=> b!1216338 (= res!546929 (rulesInvariant!1707 thiss!20528 rules!2728))))

(declare-fun b!1216339 () Bool)

(declare-fun tp!345362 () Bool)

(declare-fun e!780696 () Bool)

(declare-fun e!780692 () Bool)

(declare-fun inv!16612 (Token!3938) Bool)

(assert (=> b!1216339 (= e!780692 (and (inv!16612 (h!17822 tokens!556)) e!780696 tp!345362))))

(declare-fun b!1216340 () Bool)

(declare-fun e!780691 () Bool)

(declare-fun tp_is_empty!6337 () Bool)

(declare-fun tp!345361 () Bool)

(assert (=> b!1216340 (= e!780691 (and tp_is_empty!6337 tp!345361))))

(declare-fun b!1216341 () Bool)

(declare-fun e!780702 () Bool)

(declare-fun tp!345356 () Bool)

(assert (=> b!1216341 (= e!780702 (and e!780698 tp!345356))))

(declare-fun b!1216342 () Bool)

(declare-fun e!780704 () Bool)

(declare-fun tp!345363 () Bool)

(declare-fun inv!21 (TokenValue!2206) Bool)

(assert (=> b!1216342 (= e!780696 (and (inv!21 (value!69531 (h!17822 tokens!556))) e!780704 tp!345363))))

(declare-fun tp!345357 () Bool)

(declare-fun b!1216343 () Bool)

(assert (=> b!1216343 (= e!780704 (and tp!345357 (inv!16608 (tag!2400 (rule!3563 (h!17822 tokens!556)))) (inv!16611 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) e!780689))))

(declare-fun b!1216344 () Bool)

(declare-fun e!780697 () Bool)

(declare-fun e!780703 () Bool)

(assert (=> b!1216344 (= e!780697 e!780703)))

(declare-fun res!546932 () Bool)

(assert (=> b!1216344 (=> (not res!546932) (not e!780703))))

(assert (=> b!1216344 (= res!546932 (= (_1!6990 lt!415743) (h!17822 tokens!556)))))

(declare-datatypes ((Option!2500 0))(
  ( (None!2499) (Some!2499 (v!20630 tuple2!12286)) )
))
(declare-fun lt!415738 () Option!2500)

(declare-fun get!4087 (Option!2500) tuple2!12286)

(assert (=> b!1216344 (= lt!415743 (get!4087 lt!415738))))

(declare-fun res!546937 () Bool)

(assert (=> start!108696 (=> (not res!546937) (not e!780701))))

(assert (=> start!108696 (= res!546937 (is-Lexer!1831 thiss!20528))))

(assert (=> start!108696 e!780701))

(assert (=> start!108696 true))

(assert (=> start!108696 e!780702))

(assert (=> start!108696 e!780691))

(assert (=> start!108696 e!780692))

(declare-fun b!1216345 () Bool)

(declare-fun res!546934 () Bool)

(assert (=> b!1216345 (=> (not res!546934) (not e!780701))))

(assert (=> b!1216345 (= res!546934 (not (is-Nil!12421 tokens!556)))))

(declare-fun b!1216346 () Bool)

(assert (=> b!1216346 (= e!780701 e!780697)))

(declare-fun res!546936 () Bool)

(assert (=> b!1216346 (=> (not res!546936) (not e!780697))))

(declare-fun isDefined!2138 (Option!2500) Bool)

(assert (=> b!1216346 (= res!546936 (isDefined!2138 lt!415738))))

(declare-fun maxPrefix!955 (LexerInterface!1833 List!12478 List!12476) Option!2500)

(assert (=> b!1216346 (= lt!415738 (maxPrefix!955 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1216347 () Bool)

(declare-fun res!546931 () Bool)

(assert (=> b!1216347 (=> (not res!546931) (not e!780690))))

(declare-fun ++!3174 (List!12476 List!12476) List!12476)

(assert (=> b!1216347 (= res!546931 (= (++!3174 lt!415741 (_2!6990 lt!415743)) input!2346))))

(declare-fun b!1216348 () Bool)

(assert (=> b!1216348 (= e!780703 e!780699)))

(declare-fun res!546930 () Bool)

(assert (=> b!1216348 (=> (not res!546930) (not e!780699))))

(assert (=> b!1216348 (= res!546930 (= lt!415739 lt!415740))))

(declare-fun charsOf!1144 (Token!3938) BalanceConc!8062)

(assert (=> b!1216348 (= lt!415740 (charsOf!1144 (h!17822 tokens!556)))))

(assert (=> b!1216348 (= lt!415739 (charsOf!1144 (_1!6990 lt!415743)))))

(assert (=> b!1216349 (= e!780693 (and tp!345364 tp!345359))))

(assert (= (and start!108696 res!546937) b!1216335))

(assert (= (and b!1216335 res!546928) b!1216338))

(assert (= (and b!1216338 res!546929) b!1216336))

(assert (= (and b!1216336 res!546935) b!1216345))

(assert (= (and b!1216345 res!546934) b!1216346))

(assert (= (and b!1216346 res!546936) b!1216344))

(assert (= (and b!1216344 res!546932) b!1216348))

(assert (= (and b!1216348 res!546930) b!1216332))

(assert (= (and b!1216332 res!546933) b!1216347))

(assert (= (and b!1216347 res!546931) b!1216333))

(assert (= b!1216334 b!1216349))

(assert (= b!1216341 b!1216334))

(assert (= (and start!108696 (is-Cons!12420 rules!2728)) b!1216341))

(assert (= (and start!108696 (is-Cons!12418 input!2346)) b!1216340))

(assert (= b!1216343 b!1216337))

(assert (= b!1216342 b!1216343))

(assert (= b!1216339 b!1216342))

(assert (= (and start!108696 (is-Cons!12421 tokens!556)) b!1216339))

(declare-fun m!1390703 () Bool)

(assert (=> b!1216343 m!1390703))

(declare-fun m!1390705 () Bool)

(assert (=> b!1216343 m!1390705))

(declare-fun m!1390707 () Bool)

(assert (=> b!1216342 m!1390707))

(declare-fun m!1390709 () Bool)

(assert (=> b!1216344 m!1390709))

(declare-fun m!1390711 () Bool)

(assert (=> b!1216346 m!1390711))

(declare-fun m!1390713 () Bool)

(assert (=> b!1216346 m!1390713))

(declare-fun m!1390715 () Bool)

(assert (=> b!1216332 m!1390715))

(declare-fun m!1390717 () Bool)

(assert (=> b!1216332 m!1390717))

(declare-fun m!1390719 () Bool)

(assert (=> b!1216339 m!1390719))

(declare-fun m!1390721 () Bool)

(assert (=> b!1216336 m!1390721))

(declare-fun m!1390723 () Bool)

(assert (=> b!1216333 m!1390723))

(declare-fun m!1390725 () Bool)

(assert (=> b!1216334 m!1390725))

(declare-fun m!1390727 () Bool)

(assert (=> b!1216334 m!1390727))

(declare-fun m!1390729 () Bool)

(assert (=> b!1216338 m!1390729))

(declare-fun m!1390731 () Bool)

(assert (=> b!1216348 m!1390731))

(declare-fun m!1390733 () Bool)

(assert (=> b!1216348 m!1390733))

(declare-fun m!1390735 () Bool)

(assert (=> b!1216347 m!1390735))

(declare-fun m!1390737 () Bool)

(assert (=> b!1216335 m!1390737))

(push 1)

(assert (not b!1216339))

(assert (not b!1216338))

(assert (not b!1216336))

(assert (not b!1216347))

(assert (not b!1216346))

(assert (not b!1216344))

(assert (not b!1216343))

(assert (not b!1216333))

(assert b_and!82643)

(assert tp_is_empty!6337)

(assert (not b_next!29959))

(assert (not b!1216342))

(assert b_and!82641)

(assert (not b_next!29953))

(assert (not b!1216332))

(assert (not b!1216334))

(assert (not b_next!29955))

(assert (not b!1216335))

(assert (not b_next!29957))

(assert (not b!1216348))

(assert b_and!82647)

(assert (not b!1216340))

(assert (not b!1216341))

(assert b_and!82645)

(check-sat)

(pop 1)

(push 1)

(assert b_and!82647)

(assert b_and!82643)

(assert (not b_next!29959))

(assert b_and!82645)

(assert b_and!82641)

(assert (not b_next!29953))

(assert (not b_next!29955))

(assert (not b_next!29957))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!347402 () Bool)

(assert (=> d!347402 (= (inv!16608 (tag!2400 (h!17821 rules!2728))) (= (mod (str.len (value!69530 (tag!2400 (h!17821 rules!2728)))) 2) 0))))

(assert (=> b!1216334 d!347402))

(declare-fun d!347408 () Bool)

(declare-fun res!546974 () Bool)

(declare-fun e!780759 () Bool)

(assert (=> d!347408 (=> (not res!546974) (not e!780759))))

(declare-fun semiInverseModEq!777 (Int Int) Bool)

(assert (=> d!347408 (= res!546974 (semiInverseModEq!777 (toChars!3126 (transformation!2138 (h!17821 rules!2728))) (toValue!3267 (transformation!2138 (h!17821 rules!2728)))))))

(assert (=> d!347408 (= (inv!16611 (transformation!2138 (h!17821 rules!2728))) e!780759)))

(declare-fun b!1216412 () Bool)

(declare-fun equivClasses!744 (Int Int) Bool)

(assert (=> b!1216412 (= e!780759 (equivClasses!744 (toChars!3126 (transformation!2138 (h!17821 rules!2728))) (toValue!3267 (transformation!2138 (h!17821 rules!2728)))))))

(assert (= (and d!347408 res!546974) b!1216412))

(declare-fun m!1390791 () Bool)

(assert (=> d!347408 m!1390791))

(declare-fun m!1390793 () Bool)

(assert (=> b!1216412 m!1390793))

(assert (=> b!1216334 d!347408))

(declare-fun b!1216456 () Bool)

(declare-fun res!547003 () Bool)

(declare-fun e!780784 () Bool)

(assert (=> b!1216456 (=> (not res!547003) (not e!780784))))

(declare-fun isEmpty!7385 (List!12476) Bool)

(declare-fun tail!1783 (List!12476) List!12476)

(assert (=> b!1216456 (= res!547003 (isEmpty!7385 (tail!1783 lt!415742)))))

(declare-fun d!347412 () Bool)

(declare-fun e!780786 () Bool)

(assert (=> d!347412 e!780786))

(declare-fun c!203453 () Bool)

(assert (=> d!347412 (= c!203453 (is-EmptyExpr!3408 (regex!2138 (rule!3563 (_1!6990 lt!415743)))))))

(declare-fun lt!415771 () Bool)

(declare-fun e!780787 () Bool)

(assert (=> d!347412 (= lt!415771 e!780787)))

(declare-fun c!203455 () Bool)

(assert (=> d!347412 (= c!203455 (isEmpty!7385 lt!415742))))

(declare-fun validRegex!1451 (Regex!3408) Bool)

(assert (=> d!347412 (validRegex!1451 (regex!2138 (rule!3563 (_1!6990 lt!415743))))))

(assert (=> d!347412 (= (matchR!1525 (regex!2138 (rule!3563 (_1!6990 lt!415743))) lt!415742) lt!415771)))

(declare-fun b!1216457 () Bool)

(declare-fun e!780788 () Bool)

(assert (=> b!1216457 (= e!780788 (not lt!415771))))

(declare-fun bm!84559 () Bool)

(declare-fun call!84564 () Bool)

(assert (=> bm!84559 (= call!84564 (isEmpty!7385 lt!415742))))

(declare-fun b!1216458 () Bool)

(assert (=> b!1216458 (= e!780786 (= lt!415771 call!84564))))

(declare-fun b!1216459 () Bool)

(declare-fun res!547006 () Bool)

(declare-fun e!780783 () Bool)

(assert (=> b!1216459 (=> res!547006 e!780783)))

(assert (=> b!1216459 (= res!547006 (not (isEmpty!7385 (tail!1783 lt!415742))))))

(declare-fun b!1216460 () Bool)

(declare-fun res!547001 () Bool)

(assert (=> b!1216460 (=> (not res!547001) (not e!780784))))

(assert (=> b!1216460 (= res!547001 (not call!84564))))

(declare-fun b!1216461 () Bool)

(assert (=> b!1216461 (= e!780786 e!780788)))

(declare-fun c!203454 () Bool)

(assert (=> b!1216461 (= c!203454 (is-EmptyLang!3408 (regex!2138 (rule!3563 (_1!6990 lt!415743)))))))

(declare-fun b!1216462 () Bool)

(declare-fun e!780789 () Bool)

(declare-fun e!780785 () Bool)

(assert (=> b!1216462 (= e!780789 e!780785)))

(declare-fun res!547000 () Bool)

(assert (=> b!1216462 (=> (not res!547000) (not e!780785))))

(assert (=> b!1216462 (= res!547000 (not lt!415771))))

(declare-fun b!1216463 () Bool)

(declare-fun head!2151 (List!12476) C!7134)

(assert (=> b!1216463 (= e!780783 (not (= (head!2151 lt!415742) (c!203440 (regex!2138 (rule!3563 (_1!6990 lt!415743)))))))))

(declare-fun b!1216464 () Bool)

(declare-fun nullable!1054 (Regex!3408) Bool)

(assert (=> b!1216464 (= e!780787 (nullable!1054 (regex!2138 (rule!3563 (_1!6990 lt!415743)))))))

(declare-fun b!1216465 () Bool)

(assert (=> b!1216465 (= e!780785 e!780783)))

(declare-fun res!547002 () Bool)

(assert (=> b!1216465 (=> res!547002 e!780783)))

(assert (=> b!1216465 (= res!547002 call!84564)))

(declare-fun b!1216466 () Bool)

(declare-fun res!547004 () Bool)

(assert (=> b!1216466 (=> res!547004 e!780789)))

(assert (=> b!1216466 (= res!547004 (not (is-ElementMatch!3408 (regex!2138 (rule!3563 (_1!6990 lt!415743))))))))

(assert (=> b!1216466 (= e!780788 e!780789)))

(declare-fun b!1216467 () Bool)

(declare-fun res!547005 () Bool)

(assert (=> b!1216467 (=> res!547005 e!780789)))

(assert (=> b!1216467 (= res!547005 e!780784)))

(declare-fun res!547007 () Bool)

(assert (=> b!1216467 (=> (not res!547007) (not e!780784))))

(assert (=> b!1216467 (= res!547007 lt!415771)))

(declare-fun b!1216468 () Bool)

(assert (=> b!1216468 (= e!780784 (= (head!2151 lt!415742) (c!203440 (regex!2138 (rule!3563 (_1!6990 lt!415743))))))))

(declare-fun b!1216469 () Bool)

(declare-fun derivativeStep!847 (Regex!3408 C!7134) Regex!3408)

(assert (=> b!1216469 (= e!780787 (matchR!1525 (derivativeStep!847 (regex!2138 (rule!3563 (_1!6990 lt!415743))) (head!2151 lt!415742)) (tail!1783 lt!415742)))))

(assert (= (and d!347412 c!203455) b!1216464))

(assert (= (and d!347412 (not c!203455)) b!1216469))

(assert (= (and d!347412 c!203453) b!1216458))

(assert (= (and d!347412 (not c!203453)) b!1216461))

(assert (= (and b!1216461 c!203454) b!1216457))

(assert (= (and b!1216461 (not c!203454)) b!1216466))

(assert (= (and b!1216466 (not res!547004)) b!1216467))

(assert (= (and b!1216467 res!547007) b!1216460))

(assert (= (and b!1216460 res!547001) b!1216456))

(assert (= (and b!1216456 res!547003) b!1216468))

(assert (= (and b!1216467 (not res!547005)) b!1216462))

(assert (= (and b!1216462 res!547000) b!1216465))

(assert (= (and b!1216465 (not res!547002)) b!1216459))

(assert (= (and b!1216459 (not res!547006)) b!1216463))

(assert (= (or b!1216458 b!1216460 b!1216465) bm!84559))

(declare-fun m!1390817 () Bool)

(assert (=> d!347412 m!1390817))

(declare-fun m!1390819 () Bool)

(assert (=> d!347412 m!1390819))

(declare-fun m!1390821 () Bool)

(assert (=> b!1216463 m!1390821))

(declare-fun m!1390823 () Bool)

(assert (=> b!1216456 m!1390823))

(assert (=> b!1216456 m!1390823))

(declare-fun m!1390825 () Bool)

(assert (=> b!1216456 m!1390825))

(declare-fun m!1390827 () Bool)

(assert (=> b!1216464 m!1390827))

(assert (=> b!1216468 m!1390821))

(assert (=> bm!84559 m!1390817))

(assert (=> b!1216469 m!1390821))

(assert (=> b!1216469 m!1390821))

(declare-fun m!1390829 () Bool)

(assert (=> b!1216469 m!1390829))

(assert (=> b!1216469 m!1390823))

(assert (=> b!1216469 m!1390829))

(assert (=> b!1216469 m!1390823))

(declare-fun m!1390831 () Bool)

(assert (=> b!1216469 m!1390831))

(assert (=> b!1216459 m!1390823))

(assert (=> b!1216459 m!1390823))

(assert (=> b!1216459 m!1390825))

(assert (=> b!1216333 d!347412))

(declare-fun d!347424 () Bool)

(assert (=> d!347424 (= (get!4087 lt!415738) (v!20630 lt!415738))))

(assert (=> b!1216344 d!347424))

(declare-fun d!347426 () Bool)

(assert (=> d!347426 (= (isEmpty!7383 rules!2728) (is-Nil!12420 rules!2728))))

(assert (=> b!1216335 d!347426))

(declare-fun d!347428 () Bool)

(declare-fun isEmpty!7386 (Option!2500) Bool)

(assert (=> d!347428 (= (isDefined!2138 lt!415738) (not (isEmpty!7386 lt!415738)))))

(declare-fun bs!288811 () Bool)

(assert (= bs!288811 d!347428))

(declare-fun m!1390839 () Bool)

(assert (=> bs!288811 m!1390839))

(assert (=> b!1216346 d!347428))

(declare-fun b!1216504 () Bool)

(declare-fun res!547030 () Bool)

(declare-fun e!780806 () Bool)

(assert (=> b!1216504 (=> (not res!547030) (not e!780806))))

(declare-fun lt!415783 () Option!2500)

(assert (=> b!1216504 (= res!547030 (= (++!3174 (list!4578 (charsOf!1144 (_1!6990 (get!4087 lt!415783)))) (_2!6990 (get!4087 lt!415783))) input!2346))))

(declare-fun b!1216505 () Bool)

(declare-fun res!547028 () Bool)

(assert (=> b!1216505 (=> (not res!547028) (not e!780806))))

(assert (=> b!1216505 (= res!547028 (matchR!1525 (regex!2138 (rule!3563 (_1!6990 (get!4087 lt!415783)))) (list!4578 (charsOf!1144 (_1!6990 (get!4087 lt!415783))))))))

(declare-fun b!1216506 () Bool)

(declare-fun e!780807 () Option!2500)

(declare-fun call!84567 () Option!2500)

(assert (=> b!1216506 (= e!780807 call!84567)))

(declare-fun bm!84562 () Bool)

(declare-fun maxPrefixOneRule!550 (LexerInterface!1833 Rule!4076 List!12476) Option!2500)

(assert (=> bm!84562 (= call!84567 (maxPrefixOneRule!550 thiss!20528 (h!17821 rules!2728) input!2346))))

(declare-fun b!1216507 () Bool)

(declare-fun contains!2081 (List!12478 Rule!4076) Bool)

(assert (=> b!1216507 (= e!780806 (contains!2081 rules!2728 (rule!3563 (_1!6990 (get!4087 lt!415783)))))))

(declare-fun b!1216508 () Bool)

(declare-fun res!547026 () Bool)

(assert (=> b!1216508 (=> (not res!547026) (not e!780806))))

(assert (=> b!1216508 (= res!547026 (= (list!4578 (charsOf!1144 (_1!6990 (get!4087 lt!415783)))) (originalCharacters!2692 (_1!6990 (get!4087 lt!415783)))))))

(declare-fun b!1216509 () Bool)

(declare-fun e!780808 () Bool)

(assert (=> b!1216509 (= e!780808 e!780806)))

(declare-fun res!547032 () Bool)

(assert (=> b!1216509 (=> (not res!547032) (not e!780806))))

(assert (=> b!1216509 (= res!547032 (isDefined!2138 lt!415783))))

(declare-fun b!1216510 () Bool)

(declare-fun res!547027 () Bool)

(assert (=> b!1216510 (=> (not res!547027) (not e!780806))))

(declare-fun size!9822 (List!12476) Int)

(assert (=> b!1216510 (= res!547027 (< (size!9822 (_2!6990 (get!4087 lt!415783))) (size!9822 input!2346)))))

(declare-fun d!347432 () Bool)

(assert (=> d!347432 e!780808))

(declare-fun res!547029 () Bool)

(assert (=> d!347432 (=> res!547029 e!780808)))

(assert (=> d!347432 (= res!547029 (isEmpty!7386 lt!415783))))

(assert (=> d!347432 (= lt!415783 e!780807)))

(declare-fun c!203464 () Bool)

(assert (=> d!347432 (= c!203464 (and (is-Cons!12420 rules!2728) (is-Nil!12420 (t!113192 rules!2728))))))

(declare-datatypes ((Unit!18694 0))(
  ( (Unit!18695) )
))
(declare-fun lt!415782 () Unit!18694)

(declare-fun lt!415786 () Unit!18694)

(assert (=> d!347432 (= lt!415782 lt!415786)))

(declare-fun isPrefix!1031 (List!12476 List!12476) Bool)

(assert (=> d!347432 (isPrefix!1031 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!724 (List!12476 List!12476) Unit!18694)

(assert (=> d!347432 (= lt!415786 (lemmaIsPrefixRefl!724 input!2346 input!2346))))

(declare-fun rulesValidInductive!667 (LexerInterface!1833 List!12478) Bool)

(assert (=> d!347432 (rulesValidInductive!667 thiss!20528 rules!2728)))

(assert (=> d!347432 (= (maxPrefix!955 thiss!20528 rules!2728 input!2346) lt!415783)))

(declare-fun b!1216511 () Bool)

(declare-fun lt!415784 () Option!2500)

(declare-fun lt!415785 () Option!2500)

(assert (=> b!1216511 (= e!780807 (ite (and (is-None!2499 lt!415784) (is-None!2499 lt!415785)) None!2499 (ite (is-None!2499 lt!415785) lt!415784 (ite (is-None!2499 lt!415784) lt!415785 (ite (>= (size!9820 (_1!6990 (v!20630 lt!415784))) (size!9820 (_1!6990 (v!20630 lt!415785)))) lt!415784 lt!415785)))))))

(assert (=> b!1216511 (= lt!415784 call!84567)))

(assert (=> b!1216511 (= lt!415785 (maxPrefix!955 thiss!20528 (t!113192 rules!2728) input!2346))))

(declare-fun b!1216512 () Bool)

(declare-fun res!547031 () Bool)

(assert (=> b!1216512 (=> (not res!547031) (not e!780806))))

(declare-fun apply!2649 (TokenValueInjection!4108 BalanceConc!8062) TokenValue!2206)

(declare-fun seqFromList!1552 (List!12476) BalanceConc!8062)

(assert (=> b!1216512 (= res!547031 (= (value!69531 (_1!6990 (get!4087 lt!415783))) (apply!2649 (transformation!2138 (rule!3563 (_1!6990 (get!4087 lt!415783)))) (seqFromList!1552 (originalCharacters!2692 (_1!6990 (get!4087 lt!415783)))))))))

(assert (= (and d!347432 c!203464) b!1216506))

(assert (= (and d!347432 (not c!203464)) b!1216511))

(assert (= (or b!1216506 b!1216511) bm!84562))

(assert (= (and d!347432 (not res!547029)) b!1216509))

(assert (= (and b!1216509 res!547032) b!1216508))

(assert (= (and b!1216508 res!547026) b!1216510))

(assert (= (and b!1216510 res!547027) b!1216504))

(assert (= (and b!1216504 res!547030) b!1216512))

(assert (= (and b!1216512 res!547031) b!1216505))

(assert (= (and b!1216505 res!547028) b!1216507))

(declare-fun m!1390847 () Bool)

(assert (=> b!1216509 m!1390847))

(declare-fun m!1390849 () Bool)

(assert (=> b!1216504 m!1390849))

(declare-fun m!1390851 () Bool)

(assert (=> b!1216504 m!1390851))

(assert (=> b!1216504 m!1390851))

(declare-fun m!1390853 () Bool)

(assert (=> b!1216504 m!1390853))

(assert (=> b!1216504 m!1390853))

(declare-fun m!1390855 () Bool)

(assert (=> b!1216504 m!1390855))

(assert (=> b!1216510 m!1390849))

(declare-fun m!1390857 () Bool)

(assert (=> b!1216510 m!1390857))

(declare-fun m!1390859 () Bool)

(assert (=> b!1216510 m!1390859))

(declare-fun m!1390861 () Bool)

(assert (=> b!1216511 m!1390861))

(assert (=> b!1216512 m!1390849))

(declare-fun m!1390863 () Bool)

(assert (=> b!1216512 m!1390863))

(assert (=> b!1216512 m!1390863))

(declare-fun m!1390865 () Bool)

(assert (=> b!1216512 m!1390865))

(assert (=> b!1216507 m!1390849))

(declare-fun m!1390867 () Bool)

(assert (=> b!1216507 m!1390867))

(assert (=> b!1216508 m!1390849))

(assert (=> b!1216508 m!1390851))

(assert (=> b!1216508 m!1390851))

(assert (=> b!1216508 m!1390853))

(declare-fun m!1390869 () Bool)

(assert (=> bm!84562 m!1390869))

(declare-fun m!1390871 () Bool)

(assert (=> d!347432 m!1390871))

(declare-fun m!1390873 () Bool)

(assert (=> d!347432 m!1390873))

(declare-fun m!1390875 () Bool)

(assert (=> d!347432 m!1390875))

(declare-fun m!1390877 () Bool)

(assert (=> d!347432 m!1390877))

(assert (=> b!1216505 m!1390849))

(assert (=> b!1216505 m!1390851))

(assert (=> b!1216505 m!1390851))

(assert (=> b!1216505 m!1390853))

(assert (=> b!1216505 m!1390853))

(declare-fun m!1390879 () Bool)

(assert (=> b!1216505 m!1390879))

(assert (=> b!1216346 d!347432))

(declare-fun b!1216523 () Bool)

(declare-fun e!780816 () Bool)

(declare-fun inv!17 (TokenValue!2206) Bool)

(assert (=> b!1216523 (= e!780816 (inv!17 (value!69531 (h!17822 tokens!556))))))

(declare-fun b!1216524 () Bool)

(declare-fun e!780817 () Bool)

(declare-fun inv!16 (TokenValue!2206) Bool)

(assert (=> b!1216524 (= e!780817 (inv!16 (value!69531 (h!17822 tokens!556))))))

(declare-fun b!1216525 () Bool)

(declare-fun e!780815 () Bool)

(declare-fun inv!15 (TokenValue!2206) Bool)

(assert (=> b!1216525 (= e!780815 (inv!15 (value!69531 (h!17822 tokens!556))))))

(declare-fun b!1216526 () Bool)

(declare-fun res!547035 () Bool)

(assert (=> b!1216526 (=> res!547035 e!780815)))

(assert (=> b!1216526 (= res!547035 (not (is-IntegerValue!6620 (value!69531 (h!17822 tokens!556)))))))

(assert (=> b!1216526 (= e!780816 e!780815)))

(declare-fun d!347442 () Bool)

(declare-fun c!203469 () Bool)

(assert (=> d!347442 (= c!203469 (is-IntegerValue!6618 (value!69531 (h!17822 tokens!556))))))

(assert (=> d!347442 (= (inv!21 (value!69531 (h!17822 tokens!556))) e!780817)))

(declare-fun b!1216527 () Bool)

(assert (=> b!1216527 (= e!780817 e!780816)))

(declare-fun c!203470 () Bool)

(assert (=> b!1216527 (= c!203470 (is-IntegerValue!6619 (value!69531 (h!17822 tokens!556))))))

(assert (= (and d!347442 c!203469) b!1216524))

(assert (= (and d!347442 (not c!203469)) b!1216527))

(assert (= (and b!1216527 c!203470) b!1216523))

(assert (= (and b!1216527 (not c!203470)) b!1216526))

(assert (= (and b!1216526 (not res!547035)) b!1216525))

(declare-fun m!1390881 () Bool)

(assert (=> b!1216523 m!1390881))

(declare-fun m!1390883 () Bool)

(assert (=> b!1216524 m!1390883))

(declare-fun m!1390885 () Bool)

(assert (=> b!1216525 m!1390885))

(assert (=> b!1216342 d!347442))

(declare-fun d!347444 () Bool)

(assert (=> d!347444 (= (inv!16608 (tag!2400 (rule!3563 (h!17822 tokens!556)))) (= (mod (str.len (value!69530 (tag!2400 (rule!3563 (h!17822 tokens!556))))) 2) 0))))

(assert (=> b!1216343 d!347444))

(declare-fun d!347446 () Bool)

(declare-fun res!547036 () Bool)

(declare-fun e!780818 () Bool)

(assert (=> d!347446 (=> (not res!547036) (not e!780818))))

(assert (=> d!347446 (= res!547036 (semiInverseModEq!777 (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (toValue!3267 (transformation!2138 (rule!3563 (h!17822 tokens!556))))))))

(assert (=> d!347446 (= (inv!16611 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) e!780818)))

(declare-fun b!1216528 () Bool)

(assert (=> b!1216528 (= e!780818 (equivClasses!744 (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (toValue!3267 (transformation!2138 (rule!3563 (h!17822 tokens!556))))))))

(assert (= (and d!347446 res!547036) b!1216528))

(declare-fun m!1390887 () Bool)

(assert (=> d!347446 m!1390887))

(declare-fun m!1390889 () Bool)

(assert (=> b!1216528 m!1390889))

(assert (=> b!1216343 d!347446))

(declare-fun d!347448 () Bool)

(declare-fun list!4580 (Conc!4065) List!12476)

(assert (=> d!347448 (= (list!4578 lt!415740) (list!4580 (c!203439 lt!415740)))))

(declare-fun bs!288813 () Bool)

(assert (= bs!288813 d!347448))

(declare-fun m!1390891 () Bool)

(assert (=> bs!288813 m!1390891))

(assert (=> b!1216332 d!347448))

(declare-fun d!347450 () Bool)

(assert (=> d!347450 (= (list!4578 lt!415739) (list!4580 (c!203439 lt!415739)))))

(declare-fun bs!288814 () Bool)

(assert (= bs!288814 d!347450))

(declare-fun m!1390893 () Bool)

(assert (=> bs!288814 m!1390893))

(assert (=> b!1216332 d!347450))

(declare-fun d!347452 () Bool)

(declare-fun res!547041 () Bool)

(declare-fun e!780823 () Bool)

(assert (=> d!347452 (=> (not res!547041) (not e!780823))))

(assert (=> d!347452 (= res!547041 (not (isEmpty!7385 (originalCharacters!2692 (h!17822 tokens!556)))))))

(assert (=> d!347452 (= (inv!16612 (h!17822 tokens!556)) e!780823)))

(declare-fun b!1216537 () Bool)

(declare-fun res!547042 () Bool)

(assert (=> b!1216537 (=> (not res!547042) (not e!780823))))

(declare-fun dynLambda!5420 (Int TokenValue!2206) BalanceConc!8062)

(assert (=> b!1216537 (= res!547042 (= (originalCharacters!2692 (h!17822 tokens!556)) (list!4578 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (value!69531 (h!17822 tokens!556))))))))

(declare-fun b!1216538 () Bool)

(assert (=> b!1216538 (= e!780823 (= (size!9820 (h!17822 tokens!556)) (size!9822 (originalCharacters!2692 (h!17822 tokens!556)))))))

(assert (= (and d!347452 res!547041) b!1216537))

(assert (= (and b!1216537 res!547042) b!1216538))

(declare-fun b_lambda!35871 () Bool)

(assert (=> (not b_lambda!35871) (not b!1216537)))

(declare-fun t!113207 () Bool)

(declare-fun tb!66809 () Bool)

(assert (=> (and b!1216337 (= (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556))))) t!113207) tb!66809))

(declare-fun b!1216547 () Bool)

(declare-fun e!780830 () Bool)

(declare-fun tp!345402 () Bool)

(declare-fun inv!16615 (Conc!4065) Bool)

(assert (=> b!1216547 (= e!780830 (and (inv!16615 (c!203439 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (value!69531 (h!17822 tokens!556))))) tp!345402))))

(declare-fun result!80850 () Bool)

(declare-fun inv!16616 (BalanceConc!8062) Bool)

(assert (=> tb!66809 (= result!80850 (and (inv!16616 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (value!69531 (h!17822 tokens!556)))) e!780830))))

(assert (= tb!66809 b!1216547))

(declare-fun m!1390895 () Bool)

(assert (=> b!1216547 m!1390895))

(declare-fun m!1390897 () Bool)

(assert (=> tb!66809 m!1390897))

(assert (=> b!1216537 t!113207))

(declare-fun b_and!82665 () Bool)

(assert (= b_and!82643 (and (=> t!113207 result!80850) b_and!82665)))

(declare-fun t!113209 () Bool)

(declare-fun tb!66811 () Bool)

(assert (=> (and b!1216349 (= (toChars!3126 (transformation!2138 (h!17821 rules!2728))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556))))) t!113209) tb!66811))

(declare-fun result!80854 () Bool)

(assert (= result!80854 result!80850))

(assert (=> b!1216537 t!113209))

(declare-fun b_and!82667 () Bool)

(assert (= b_and!82647 (and (=> t!113209 result!80854) b_and!82667)))

(declare-fun m!1390899 () Bool)

(assert (=> d!347452 m!1390899))

(declare-fun m!1390901 () Bool)

(assert (=> b!1216537 m!1390901))

(assert (=> b!1216537 m!1390901))

(declare-fun m!1390903 () Bool)

(assert (=> b!1216537 m!1390903))

(declare-fun m!1390905 () Bool)

(assert (=> b!1216538 m!1390905))

(assert (=> b!1216339 d!347452))

(declare-fun b!1216566 () Bool)

(declare-fun e!780835 () List!12476)

(assert (=> b!1216566 (= e!780835 (_2!6990 lt!415743))))

(declare-fun lt!415799 () List!12476)

(declare-fun e!780836 () Bool)

(declare-fun b!1216569 () Bool)

(assert (=> b!1216569 (= e!780836 (or (not (= (_2!6990 lt!415743) Nil!12418)) (= lt!415799 lt!415741)))))

(declare-fun b!1216567 () Bool)

(assert (=> b!1216567 (= e!780835 (Cons!12418 (h!17819 lt!415741) (++!3174 (t!113190 lt!415741) (_2!6990 lt!415743))))))

(declare-fun b!1216568 () Bool)

(declare-fun res!547062 () Bool)

(assert (=> b!1216568 (=> (not res!547062) (not e!780836))))

(assert (=> b!1216568 (= res!547062 (= (size!9822 lt!415799) (+ (size!9822 lt!415741) (size!9822 (_2!6990 lt!415743)))))))

(declare-fun d!347454 () Bool)

(assert (=> d!347454 e!780836))

(declare-fun res!547061 () Bool)

(assert (=> d!347454 (=> (not res!547061) (not e!780836))))

(declare-fun content!1766 (List!12476) (Set C!7134))

(assert (=> d!347454 (= res!547061 (= (content!1766 lt!415799) (set.union (content!1766 lt!415741) (content!1766 (_2!6990 lt!415743)))))))

(assert (=> d!347454 (= lt!415799 e!780835)))

(declare-fun c!203475 () Bool)

(assert (=> d!347454 (= c!203475 (is-Nil!12418 lt!415741))))

(assert (=> d!347454 (= (++!3174 lt!415741 (_2!6990 lt!415743)) lt!415799)))

(assert (= (and d!347454 c!203475) b!1216566))

(assert (= (and d!347454 (not c!203475)) b!1216567))

(assert (= (and d!347454 res!547061) b!1216568))

(assert (= (and b!1216568 res!547062) b!1216569))

(declare-fun m!1390907 () Bool)

(assert (=> b!1216567 m!1390907))

(declare-fun m!1390909 () Bool)

(assert (=> b!1216568 m!1390909))

(declare-fun m!1390911 () Bool)

(assert (=> b!1216568 m!1390911))

(declare-fun m!1390913 () Bool)

(assert (=> b!1216568 m!1390913))

(declare-fun m!1390915 () Bool)

(assert (=> d!347454 m!1390915))

(declare-fun m!1390917 () Bool)

(assert (=> d!347454 m!1390917))

(declare-fun m!1390919 () Bool)

(assert (=> d!347454 m!1390919))

(assert (=> b!1216347 d!347454))

(declare-fun d!347456 () Bool)

(declare-fun e!780848 () Bool)

(assert (=> d!347456 e!780848))

(declare-fun c!203482 () Bool)

(declare-fun lt!415811 () tuple2!12288)

(declare-fun size!9823 (List!12479) Int)

(assert (=> d!347456 (= c!203482 (> (size!9823 (_1!6991 lt!415811)) 0))))

(declare-fun e!780846 () tuple2!12288)

(assert (=> d!347456 (= lt!415811 e!780846)))

(declare-fun c!203481 () Bool)

(declare-fun lt!415812 () Option!2500)

(assert (=> d!347456 (= c!203481 (is-Some!2499 lt!415812))))

(assert (=> d!347456 (= lt!415812 (maxPrefix!955 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347456 (= (lexList!463 thiss!20528 rules!2728 input!2346) lt!415811)))

(declare-fun b!1216589 () Bool)

(declare-fun e!780847 () Bool)

(declare-fun isEmpty!7387 (List!12479) Bool)

(assert (=> b!1216589 (= e!780847 (not (isEmpty!7387 (_1!6991 lt!415811))))))

(declare-fun b!1216590 () Bool)

(assert (=> b!1216590 (= e!780846 (tuple2!12289 Nil!12421 input!2346))))

(declare-fun b!1216591 () Bool)

(assert (=> b!1216591 (= e!780848 (= (_2!6991 lt!415811) input!2346))))

(declare-fun b!1216592 () Bool)

(assert (=> b!1216592 (= e!780848 e!780847)))

(declare-fun res!547072 () Bool)

(assert (=> b!1216592 (= res!547072 (< (size!9822 (_2!6991 lt!415811)) (size!9822 input!2346)))))

(assert (=> b!1216592 (=> (not res!547072) (not e!780847))))

(declare-fun b!1216593 () Bool)

(declare-fun lt!415813 () tuple2!12288)

(assert (=> b!1216593 (= e!780846 (tuple2!12289 (Cons!12421 (_1!6990 (v!20630 lt!415812)) (_1!6991 lt!415813)) (_2!6991 lt!415813)))))

(assert (=> b!1216593 (= lt!415813 (lexList!463 thiss!20528 rules!2728 (_2!6990 (v!20630 lt!415812))))))

(assert (= (and d!347456 c!203481) b!1216593))

(assert (= (and d!347456 (not c!203481)) b!1216590))

(assert (= (and d!347456 c!203482) b!1216592))

(assert (= (and d!347456 (not c!203482)) b!1216591))

(assert (= (and b!1216592 res!547072) b!1216589))

(declare-fun m!1390955 () Bool)

(assert (=> d!347456 m!1390955))

(assert (=> d!347456 m!1390713))

(declare-fun m!1390957 () Bool)

(assert (=> b!1216589 m!1390957))

(declare-fun m!1390959 () Bool)

(assert (=> b!1216592 m!1390959))

(assert (=> b!1216592 m!1390859))

(declare-fun m!1390961 () Bool)

(assert (=> b!1216593 m!1390961))

(assert (=> b!1216336 d!347456))

(declare-fun d!347460 () Bool)

(declare-fun res!547075 () Bool)

(declare-fun e!780851 () Bool)

(assert (=> d!347460 (=> (not res!547075) (not e!780851))))

(declare-fun rulesValid!765 (LexerInterface!1833 List!12478) Bool)

(assert (=> d!347460 (= res!547075 (rulesValid!765 thiss!20528 rules!2728))))

(assert (=> d!347460 (= (rulesInvariant!1707 thiss!20528 rules!2728) e!780851)))

(declare-fun b!1216596 () Bool)

(declare-datatypes ((List!12484 0))(
  ( (Nil!12426) (Cons!12426 (h!17827 String!15164) (t!113230 List!12484)) )
))
(declare-fun noDuplicateTag!765 (LexerInterface!1833 List!12478 List!12484) Bool)

(assert (=> b!1216596 (= e!780851 (noDuplicateTag!765 thiss!20528 rules!2728 Nil!12426))))

(assert (= (and d!347460 res!547075) b!1216596))

(declare-fun m!1390963 () Bool)

(assert (=> d!347460 m!1390963))

(declare-fun m!1390965 () Bool)

(assert (=> b!1216596 m!1390965))

(assert (=> b!1216338 d!347460))

(declare-fun d!347462 () Bool)

(declare-fun lt!415816 () BalanceConc!8062)

(assert (=> d!347462 (= (list!4578 lt!415816) (originalCharacters!2692 (h!17822 tokens!556)))))

(assert (=> d!347462 (= lt!415816 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (value!69531 (h!17822 tokens!556))))))

(assert (=> d!347462 (= (charsOf!1144 (h!17822 tokens!556)) lt!415816)))

(declare-fun b_lambda!35873 () Bool)

(assert (=> (not b_lambda!35873) (not d!347462)))

(assert (=> d!347462 t!113207))

(declare-fun b_and!82669 () Bool)

(assert (= b_and!82665 (and (=> t!113207 result!80850) b_and!82669)))

(assert (=> d!347462 t!113209))

(declare-fun b_and!82671 () Bool)

(assert (= b_and!82667 (and (=> t!113209 result!80854) b_and!82671)))

(declare-fun m!1390967 () Bool)

(assert (=> d!347462 m!1390967))

(assert (=> d!347462 m!1390901))

(assert (=> b!1216348 d!347462))

(declare-fun d!347464 () Bool)

(declare-fun lt!415817 () BalanceConc!8062)

(assert (=> d!347464 (= (list!4578 lt!415817) (originalCharacters!2692 (_1!6990 lt!415743)))))

(assert (=> d!347464 (= lt!415817 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743)))) (value!69531 (_1!6990 lt!415743))))))

(assert (=> d!347464 (= (charsOf!1144 (_1!6990 lt!415743)) lt!415817)))

(declare-fun b_lambda!35875 () Bool)

(assert (=> (not b_lambda!35875) (not d!347464)))

(declare-fun tb!66813 () Bool)

(declare-fun t!113211 () Bool)

(assert (=> (and b!1216337 (= (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))) (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743))))) t!113211) tb!66813))

(declare-fun b!1216597 () Bool)

(declare-fun e!780852 () Bool)

(declare-fun tp!345403 () Bool)

(assert (=> b!1216597 (= e!780852 (and (inv!16615 (c!203439 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743)))) (value!69531 (_1!6990 lt!415743))))) tp!345403))))

(declare-fun result!80856 () Bool)

(assert (=> tb!66813 (= result!80856 (and (inv!16616 (dynLambda!5420 (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743)))) (value!69531 (_1!6990 lt!415743)))) e!780852))))

(assert (= tb!66813 b!1216597))

(declare-fun m!1390969 () Bool)

(assert (=> b!1216597 m!1390969))

(declare-fun m!1390971 () Bool)

(assert (=> tb!66813 m!1390971))

(assert (=> d!347464 t!113211))

(declare-fun b_and!82673 () Bool)

(assert (= b_and!82669 (and (=> t!113211 result!80856) b_and!82673)))

(declare-fun tb!66815 () Bool)

(declare-fun t!113213 () Bool)

(assert (=> (and b!1216349 (= (toChars!3126 (transformation!2138 (h!17821 rules!2728))) (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743))))) t!113213) tb!66815))

(declare-fun result!80858 () Bool)

(assert (= result!80858 result!80856))

(assert (=> d!347464 t!113213))

(declare-fun b_and!82675 () Bool)

(assert (= b_and!82671 (and (=> t!113213 result!80858) b_and!82675)))

(declare-fun m!1390973 () Bool)

(assert (=> d!347464 m!1390973))

(declare-fun m!1390975 () Bool)

(assert (=> d!347464 m!1390975))

(assert (=> b!1216348 d!347464))

(declare-fun b!1216617 () Bool)

(declare-fun b_free!29265 () Bool)

(declare-fun b_next!29969 () Bool)

(assert (=> b!1216617 (= b_free!29265 (not b_next!29969))))

(declare-fun tp!345417 () Bool)

(declare-fun b_and!82677 () Bool)

(assert (=> b!1216617 (= tp!345417 b_and!82677)))

(declare-fun b_free!29267 () Bool)

(declare-fun b_next!29971 () Bool)

(assert (=> b!1216617 (= b_free!29267 (not b_next!29971))))

(declare-fun t!113215 () Bool)

(declare-fun tb!66817 () Bool)

(assert (=> (and b!1216617 (= (toChars!3126 (transformation!2138 (rule!3563 (h!17822 (t!113193 tokens!556))))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556))))) t!113215) tb!66817))

(declare-fun result!80862 () Bool)

(assert (= result!80862 result!80850))

(assert (=> b!1216537 t!113215))

(assert (=> d!347462 t!113215))

(declare-fun t!113217 () Bool)

(declare-fun tb!66819 () Bool)

(assert (=> (and b!1216617 (= (toChars!3126 (transformation!2138 (rule!3563 (h!17822 (t!113193 tokens!556))))) (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743))))) t!113217) tb!66819))

(declare-fun result!80864 () Bool)

(assert (= result!80864 result!80856))

(assert (=> d!347464 t!113217))

(declare-fun tp!345416 () Bool)

(declare-fun b_and!82679 () Bool)

(assert (=> b!1216617 (= tp!345416 (and (=> t!113215 result!80862) (=> t!113217 result!80864) b_and!82679))))

(declare-fun e!780869 () Bool)

(declare-fun e!780868 () Bool)

(declare-fun b!1216614 () Bool)

(declare-fun tp!345415 () Bool)

(assert (=> b!1216614 (= e!780869 (and (inv!16612 (h!17822 (t!113193 tokens!556))) e!780868 tp!345415))))

(declare-fun b!1216616 () Bool)

(declare-fun e!780870 () Bool)

(declare-fun e!780872 () Bool)

(declare-fun tp!345414 () Bool)

(assert (=> b!1216616 (= e!780870 (and tp!345414 (inv!16608 (tag!2400 (rule!3563 (h!17822 (t!113193 tokens!556))))) (inv!16611 (transformation!2138 (rule!3563 (h!17822 (t!113193 tokens!556))))) e!780872))))

(declare-fun tp!345418 () Bool)

(declare-fun b!1216615 () Bool)

(assert (=> b!1216615 (= e!780868 (and (inv!21 (value!69531 (h!17822 (t!113193 tokens!556)))) e!780870 tp!345418))))

(assert (=> b!1216617 (= e!780872 (and tp!345417 tp!345416))))

(assert (=> b!1216339 (= tp!345362 e!780869)))

(assert (= b!1216616 b!1216617))

(assert (= b!1216615 b!1216616))

(assert (= b!1216614 b!1216615))

(assert (= (and b!1216339 (is-Cons!12421 (t!113193 tokens!556))) b!1216614))

(declare-fun m!1390977 () Bool)

(assert (=> b!1216614 m!1390977))

(declare-fun m!1390979 () Bool)

(assert (=> b!1216616 m!1390979))

(declare-fun m!1390981 () Bool)

(assert (=> b!1216616 m!1390981))

(declare-fun m!1390983 () Bool)

(assert (=> b!1216615 m!1390983))

(declare-fun b!1216650 () Bool)

(declare-fun e!780887 () Bool)

(assert (=> b!1216650 (= e!780887 tp_is_empty!6337)))

(declare-fun b!1216652 () Bool)

(declare-fun tp!345430 () Bool)

(assert (=> b!1216652 (= e!780887 tp!345430)))

(declare-fun b!1216653 () Bool)

(declare-fun tp!345433 () Bool)

(declare-fun tp!345432 () Bool)

(assert (=> b!1216653 (= e!780887 (and tp!345433 tp!345432))))

(assert (=> b!1216334 (= tp!345365 e!780887)))

(declare-fun b!1216651 () Bool)

(declare-fun tp!345431 () Bool)

(declare-fun tp!345429 () Bool)

(assert (=> b!1216651 (= e!780887 (and tp!345431 tp!345429))))

(assert (= (and b!1216334 (is-ElementMatch!3408 (regex!2138 (h!17821 rules!2728)))) b!1216650))

(assert (= (and b!1216334 (is-Concat!5615 (regex!2138 (h!17821 rules!2728)))) b!1216651))

(assert (= (and b!1216334 (is-Star!3408 (regex!2138 (h!17821 rules!2728)))) b!1216652))

(assert (= (and b!1216334 (is-Union!3408 (regex!2138 (h!17821 rules!2728)))) b!1216653))

(declare-fun b!1216658 () Bool)

(declare-fun e!780890 () Bool)

(declare-fun tp!345436 () Bool)

(assert (=> b!1216658 (= e!780890 (and tp_is_empty!6337 tp!345436))))

(assert (=> b!1216340 (= tp!345361 e!780890)))

(assert (= (and b!1216340 (is-Cons!12418 (t!113190 input!2346))) b!1216658))

(declare-fun b!1216659 () Bool)

(declare-fun e!780891 () Bool)

(declare-fun tp!345437 () Bool)

(assert (=> b!1216659 (= e!780891 (and tp_is_empty!6337 tp!345437))))

(assert (=> b!1216342 (= tp!345363 e!780891)))

(assert (= (and b!1216342 (is-Cons!12418 (originalCharacters!2692 (h!17822 tokens!556)))) b!1216659))

(declare-fun b!1216670 () Bool)

(declare-fun b_free!29269 () Bool)

(declare-fun b_next!29973 () Bool)

(assert (=> b!1216670 (= b_free!29269 (not b_next!29973))))

(declare-fun tp!345448 () Bool)

(declare-fun b_and!82681 () Bool)

(assert (=> b!1216670 (= tp!345448 b_and!82681)))

(declare-fun b_free!29271 () Bool)

(declare-fun b_next!29975 () Bool)

(assert (=> b!1216670 (= b_free!29271 (not b_next!29975))))

(declare-fun t!113219 () Bool)

(declare-fun tb!66821 () Bool)

(assert (=> (and b!1216670 (= (toChars!3126 (transformation!2138 (h!17821 (t!113192 rules!2728)))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556))))) t!113219) tb!66821))

(declare-fun result!80872 () Bool)

(assert (= result!80872 result!80850))

(assert (=> b!1216537 t!113219))

(assert (=> d!347462 t!113219))

(declare-fun t!113221 () Bool)

(declare-fun tb!66823 () Bool)

(assert (=> (and b!1216670 (= (toChars!3126 (transformation!2138 (h!17821 (t!113192 rules!2728)))) (toChars!3126 (transformation!2138 (rule!3563 (_1!6990 lt!415743))))) t!113221) tb!66823))

(declare-fun result!80874 () Bool)

(assert (= result!80874 result!80856))

(assert (=> d!347464 t!113221))

(declare-fun b_and!82683 () Bool)

(declare-fun tp!345447 () Bool)

(assert (=> b!1216670 (= tp!345447 (and (=> t!113219 result!80872) (=> t!113221 result!80874) b_and!82683))))

(declare-fun e!780901 () Bool)

(assert (=> b!1216670 (= e!780901 (and tp!345448 tp!345447))))

(declare-fun tp!345446 () Bool)

(declare-fun b!1216669 () Bool)

(declare-fun e!780903 () Bool)

(assert (=> b!1216669 (= e!780903 (and tp!345446 (inv!16608 (tag!2400 (h!17821 (t!113192 rules!2728)))) (inv!16611 (transformation!2138 (h!17821 (t!113192 rules!2728)))) e!780901))))

(declare-fun b!1216668 () Bool)

(declare-fun e!780900 () Bool)

(declare-fun tp!345449 () Bool)

(assert (=> b!1216668 (= e!780900 (and e!780903 tp!345449))))

(assert (=> b!1216341 (= tp!345356 e!780900)))

(assert (= b!1216669 b!1216670))

(assert (= b!1216668 b!1216669))

(assert (= (and b!1216341 (is-Cons!12420 (t!113192 rules!2728))) b!1216668))

(declare-fun m!1390985 () Bool)

(assert (=> b!1216669 m!1390985))

(declare-fun m!1390987 () Bool)

(assert (=> b!1216669 m!1390987))

(declare-fun b!1216671 () Bool)

(declare-fun e!780904 () Bool)

(assert (=> b!1216671 (= e!780904 tp_is_empty!6337)))

(declare-fun b!1216673 () Bool)

(declare-fun tp!345451 () Bool)

(assert (=> b!1216673 (= e!780904 tp!345451)))

(declare-fun b!1216674 () Bool)

(declare-fun tp!345454 () Bool)

(declare-fun tp!345453 () Bool)

(assert (=> b!1216674 (= e!780904 (and tp!345454 tp!345453))))

(assert (=> b!1216343 (= tp!345357 e!780904)))

(declare-fun b!1216672 () Bool)

(declare-fun tp!345452 () Bool)

(declare-fun tp!345450 () Bool)

(assert (=> b!1216672 (= e!780904 (and tp!345452 tp!345450))))

(assert (= (and b!1216343 (is-ElementMatch!3408 (regex!2138 (rule!3563 (h!17822 tokens!556))))) b!1216671))

(assert (= (and b!1216343 (is-Concat!5615 (regex!2138 (rule!3563 (h!17822 tokens!556))))) b!1216672))

(assert (= (and b!1216343 (is-Star!3408 (regex!2138 (rule!3563 (h!17822 tokens!556))))) b!1216673))

(assert (= (and b!1216343 (is-Union!3408 (regex!2138 (rule!3563 (h!17822 tokens!556))))) b!1216674))

(declare-fun b_lambda!35877 () Bool)

(assert (= b_lambda!35873 (or (and b!1216337 b_free!29251) (and b!1216349 b_free!29255 (= (toChars!3126 (transformation!2138 (h!17821 rules!2728))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))))) (and b!1216617 b_free!29267 (= (toChars!3126 (transformation!2138 (rule!3563 (h!17822 (t!113193 tokens!556))))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))))) (and b!1216670 b_free!29271 (= (toChars!3126 (transformation!2138 (h!17821 (t!113192 rules!2728)))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))))) b_lambda!35877)))

(declare-fun b_lambda!35879 () Bool)

(assert (= b_lambda!35871 (or (and b!1216337 b_free!29251) (and b!1216349 b_free!29255 (= (toChars!3126 (transformation!2138 (h!17821 rules!2728))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))))) (and b!1216617 b_free!29267 (= (toChars!3126 (transformation!2138 (rule!3563 (h!17822 (t!113193 tokens!556))))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))))) (and b!1216670 b_free!29271 (= (toChars!3126 (transformation!2138 (h!17821 (t!113192 rules!2728)))) (toChars!3126 (transformation!2138 (rule!3563 (h!17822 tokens!556)))))) b_lambda!35879)))

(push 1)

(assert (not d!347454))

(assert (not b_next!29973))

(assert (not d!347464))

(assert (not d!347412))

(assert b_and!82673)

(assert (not b!1216523))

(assert (not b!1216674))

(assert (not b!1216658))

(assert b_and!82641)

(assert (not b!1216669))

(assert (not b_next!29953))

(assert (not b!1216567))

(assert (not b!1216524))

(assert (not b!1216528))

(assert b_and!82683)

(assert (not b!1216463))

(assert (not b!1216651))

(assert (not b!1216525))

(assert (not tb!66813))

(assert (not b_next!29971))

(assert (not b!1216597))

(assert (not d!347456))

(assert (not d!347446))

(assert (not b!1216614))

(assert b_and!82679)

(assert (not d!347428))

(assert (not b!1216616))

(assert (not b!1216652))

(assert (not b!1216615))

(assert b_and!82675)

(assert (not b!1216673))

(assert (not d!347460))

(assert (not b!1216507))

(assert (not b!1216547))

(assert (not bm!84562))

(assert (not b_next!29955))

(assert (not b_next!29957))

(assert (not b_lambda!35875))

(assert (not d!347462))

(assert (not d!347452))

(assert (not b!1216659))

(assert (not b!1216568))

(assert (not b_next!29969))

(assert (not b_next!29975))

(assert (not b!1216537))

(assert (not b!1216592))

(assert (not d!347448))

(assert (not b!1216469))

(assert (not b!1216596))

(assert (not b!1216505))

(assert (not b!1216672))

(assert (not b!1216668))

(assert (not b!1216593))

(assert (not b_lambda!35879))

(assert (not tb!66809))

(assert (not b!1216509))

(assert (not d!347450))

(assert (not b!1216459))

(assert b_and!82681)

(assert (not b!1216412))

(assert (not b_lambda!35877))

(assert (not b!1216456))

(assert (not b!1216653))

(assert tp_is_empty!6337)

(assert (not b!1216468))

(assert (not b!1216511))

(assert (not b!1216510))

(assert (not b!1216538))

(assert (not d!347408))

(assert (not b!1216589))

(assert (not d!347432))

(assert (not b!1216508))

(assert (not b!1216464))

(assert (not b!1216504))

(assert (not b_next!29959))

(assert (not bm!84559))

(assert (not b!1216512))

(assert b_and!82677)

(assert b_and!82645)

(check-sat)

(pop 1)

(push 1)

(assert b_and!82683)

(assert (not b_next!29973))

(assert (not b_next!29971))

(assert b_and!82679)

(assert b_and!82675)

(assert b_and!82673)

(assert (not b_next!29969))

(assert (not b_next!29975))

(assert b_and!82681)

(assert (not b_next!29959))

(assert b_and!82641)

(assert (not b_next!29953))

(assert (not b_next!29955))

(assert (not b_next!29957))

(assert b_and!82677)

(assert b_and!82645)

(check-sat)

(pop 1)

