; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!157414 () Bool)

(assert start!157414)

(declare-fun b!1643419 () Bool)

(declare-fun b_free!44599 () Bool)

(declare-fun b_next!45303 () Bool)

(assert (=> b!1643419 (= b_free!44599 (not b_next!45303))))

(declare-fun tp!476336 () Bool)

(declare-fun b_and!116573 () Bool)

(assert (=> b!1643419 (= tp!476336 b_and!116573)))

(declare-fun b_free!44601 () Bool)

(declare-fun b_next!45305 () Bool)

(assert (=> b!1643419 (= b_free!44601 (not b_next!45305))))

(declare-fun tp!476333 () Bool)

(declare-fun b_and!116575 () Bool)

(assert (=> b!1643419 (= tp!476333 b_and!116575)))

(declare-fun b!1643415 () Bool)

(declare-fun b_free!44603 () Bool)

(declare-fun b_next!45307 () Bool)

(assert (=> b!1643415 (= b_free!44603 (not b_next!45307))))

(declare-fun tp!476329 () Bool)

(declare-fun b_and!116577 () Bool)

(assert (=> b!1643415 (= tp!476329 b_and!116577)))

(declare-fun b_free!44605 () Bool)

(declare-fun b_next!45309 () Bool)

(assert (=> b!1643415 (= b_free!44605 (not b_next!45309))))

(declare-fun tp!476330 () Bool)

(declare-fun b_and!116579 () Bool)

(assert (=> b!1643415 (= tp!476330 b_and!116579)))

(declare-fun b!1643412 () Bool)

(declare-fun e!1054029 () Bool)

(declare-fun e!1054037 () Bool)

(assert (=> b!1643412 (= e!1054029 e!1054037)))

(declare-fun res!736299 () Bool)

(assert (=> b!1643412 (=> res!736299 e!1054037)))

(declare-datatypes ((List!18195 0))(
  ( (Nil!18125) (Cons!18125 (h!23526 (_ BitVec 16)) (t!150202 List!18195)) )
))
(declare-datatypes ((TokenValue!3287 0))(
  ( (FloatLiteralValue!6574 (text!23454 List!18195)) (TokenValueExt!3286 (__x!11876 Int)) (Broken!16435 (value!100761 List!18195)) (Object!3356) (End!3287) (Def!3287) (Underscore!3287) (Match!3287) (Else!3287) (Error!3287) (Case!3287) (If!3287) (Extends!3287) (Abstract!3287) (Class!3287) (Val!3287) (DelimiterValue!6574 (del!3347 List!18195)) (KeywordValue!3293 (value!100762 List!18195)) (CommentValue!6574 (value!100763 List!18195)) (WhitespaceValue!6574 (value!100764 List!18195)) (IndentationValue!3287 (value!100765 List!18195)) (String!20766) (Int32!3287) (Broken!16436 (value!100766 List!18195)) (Boolean!3288) (Unit!29916) (OperatorValue!3290 (op!3347 List!18195)) (IdentifierValue!6574 (value!100767 List!18195)) (IdentifierValue!6575 (value!100768 List!18195)) (WhitespaceValue!6575 (value!100769 List!18195)) (True!6574) (False!6574) (Broken!16437 (value!100770 List!18195)) (Broken!16438 (value!100771 List!18195)) (True!6575) (RightBrace!3287) (RightBracket!3287) (Colon!3287) (Null!3287) (Comma!3287) (LeftBracket!3287) (False!6575) (LeftBrace!3287) (ImaginaryLiteralValue!3287 (text!23455 List!18195)) (StringLiteralValue!9861 (value!100772 List!18195)) (EOFValue!3287 (value!100773 List!18195)) (IdentValue!3287 (value!100774 List!18195)) (DelimiterValue!6575 (value!100775 List!18195)) (DedentValue!3287 (value!100776 List!18195)) (NewLineValue!3287 (value!100777 List!18195)) (IntegerValue!9861 (value!100778 (_ BitVec 32)) (text!23456 List!18195)) (IntegerValue!9862 (value!100779 Int) (text!23457 List!18195)) (Times!3287) (Or!3287) (Equal!3287) (Minus!3287) (Broken!16439 (value!100780 List!18195)) (And!3287) (Div!3287) (LessEqual!3287) (Mod!3287) (Concat!7812) (Not!3287) (Plus!3287) (SpaceValue!3287 (value!100781 List!18195)) (IntegerValue!9863 (value!100782 Int) (text!23458 List!18195)) (StringLiteralValue!9862 (text!23459 List!18195)) (FloatLiteralValue!6575 (text!23460 List!18195)) (BytesLiteralValue!3287 (value!100783 List!18195)) (CommentValue!6575 (value!100784 List!18195)) (StringLiteralValue!9863 (value!100785 List!18195)) (ErrorTokenValue!3287 (msg!3348 List!18195)) )
))
(declare-datatypes ((C!9224 0))(
  ( (C!9225 (val!5208 Int)) )
))
(declare-datatypes ((List!18196 0))(
  ( (Nil!18126) (Cons!18126 (h!23527 C!9224) (t!150203 List!18196)) )
))
(declare-datatypes ((IArray!12089 0))(
  ( (IArray!12090 (innerList!6102 List!18196)) )
))
(declare-datatypes ((Conc!6042 0))(
  ( (Node!6042 (left!14534 Conc!6042) (right!14864 Conc!6042) (csize!12314 Int) (cheight!6253 Int)) (Leaf!8861 (xs!8878 IArray!12089) (csize!12315 Int)) (Empty!6042) )
))
(declare-datatypes ((BalanceConc!12028 0))(
  ( (BalanceConc!12029 (c!267229 Conc!6042)) )
))
(declare-datatypes ((Regex!4525 0))(
  ( (ElementMatch!4525 (c!267230 C!9224)) (Concat!7813 (regOne!9562 Regex!4525) (regTwo!9562 Regex!4525)) (EmptyExpr!4525) (Star!4525 (reg!4854 Regex!4525)) (EmptyLang!4525) (Union!4525 (regOne!9563 Regex!4525) (regTwo!9563 Regex!4525)) )
))
(declare-datatypes ((String!20767 0))(
  ( (String!20768 (value!100786 String)) )
))
(declare-datatypes ((TokenValueInjection!6234 0))(
  ( (TokenValueInjection!6235 (toValue!4636 Int) (toChars!4495 Int)) )
))
(declare-datatypes ((Rule!6194 0))(
  ( (Rule!6195 (regex!3197 Regex!4525) (tag!3477 String!20767) (isSeparator!3197 Bool) (transformation!3197 TokenValueInjection!6234)) )
))
(declare-datatypes ((Token!5960 0))(
  ( (Token!5961 (value!100787 TokenValue!3287) (rule!5047 Rule!6194) (size!14436 Int) (originalCharacters!4011 List!18196)) )
))
(declare-datatypes ((List!18197 0))(
  ( (Nil!18127) (Cons!18127 (h!23528 Token!5960) (t!150204 List!18197)) )
))
(declare-fun lt!605501 () List!18197)

(declare-fun lt!605508 () List!18197)

(declare-fun lt!605511 () List!18197)

(assert (=> b!1643412 (= res!736299 (or (not (= lt!605501 lt!605511)) (not (= lt!605511 lt!605508))))))

(declare-datatypes ((IArray!12091 0))(
  ( (IArray!12092 (innerList!6103 List!18197)) )
))
(declare-datatypes ((Conc!6043 0))(
  ( (Node!6043 (left!14535 Conc!6043) (right!14865 Conc!6043) (csize!12316 Int) (cheight!6254 Int)) (Leaf!8862 (xs!8879 IArray!12091) (csize!12317 Int)) (Empty!6043) )
))
(declare-datatypes ((BalanceConc!12030 0))(
  ( (BalanceConc!12031 (c!267231 Conc!6043)) )
))
(declare-fun lt!605517 () BalanceConc!12030)

(declare-fun list!7181 (BalanceConc!12030) List!18197)

(assert (=> b!1643412 (= lt!605511 (list!7181 lt!605517))))

(assert (=> b!1643412 (= lt!605501 lt!605508)))

(declare-fun tokens!457 () List!18197)

(declare-fun prepend!749 (BalanceConc!12030 Token!5960) BalanceConc!12030)

(declare-fun seqFromList!2134 (List!18197) BalanceConc!12030)

(assert (=> b!1643412 (= lt!605508 (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457)))))))

(declare-datatypes ((Unit!29917 0))(
  ( (Unit!29918) )
))
(declare-fun lt!605503 () Unit!29917)

(declare-datatypes ((tuple2!17784 0))(
  ( (tuple2!17785 (_1!10294 BalanceConc!12030) (_2!10294 BalanceConc!12028)) )
))
(declare-fun lt!605513 () tuple2!17784)

(declare-fun seqFromListBHdTlConstructive!272 (Token!5960 List!18197 BalanceConc!12030) Unit!29917)

(assert (=> b!1643412 (= lt!605503 (seqFromListBHdTlConstructive!272 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)) (_1!10294 lt!605513)))))

(declare-fun b!1643413 () Bool)

(declare-fun res!736303 () Bool)

(declare-fun e!1054038 () Bool)

(assert (=> b!1643413 (=> (not res!736303) (not e!1054038))))

(get-info :version)

(assert (=> b!1643413 (= res!736303 (and (not ((_ is Nil!18127) tokens!457)) (not ((_ is Nil!18127) (t!150204 tokens!457)))))))

(declare-fun b!1643414 () Bool)

(declare-fun res!736298 () Bool)

(assert (=> b!1643414 (=> (not res!736298) (not e!1054038))))

(declare-datatypes ((List!18198 0))(
  ( (Nil!18128) (Cons!18128 (h!23529 Rule!6194) (t!150205 List!18198)) )
))
(declare-fun rules!1846 () List!18198)

(declare-datatypes ((LexerInterface!2826 0))(
  ( (LexerInterfaceExt!2823 (__x!11877 Int)) (Lexer!2824) )
))
(declare-fun thiss!17113 () LexerInterface!2826)

(declare-fun rulesProduceEachTokenIndividuallyList!1028 (LexerInterface!2826 List!18198 List!18197) Bool)

(assert (=> b!1643414 (= res!736298 (rulesProduceEachTokenIndividuallyList!1028 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1054039 () Bool)

(assert (=> b!1643415 (= e!1054039 (and tp!476329 tp!476330))))

(declare-fun b!1643416 () Bool)

(declare-fun res!736297 () Bool)

(assert (=> b!1643416 (=> res!736297 e!1054037)))

(declare-fun separableTokensPredicate!766 (LexerInterface!2826 Token!5960 Token!5960 List!18198) Bool)

(assert (=> b!1643416 (= res!736297 (not (separableTokensPredicate!766 thiss!17113 (h!23528 tokens!457) (h!23528 (t!150204 tokens!457)) rules!1846)))))

(declare-fun b!1643417 () Bool)

(declare-fun tp!476331 () Bool)

(declare-fun e!1054042 () Bool)

(declare-fun inv!23481 (String!20767) Bool)

(declare-fun inv!23484 (TokenValueInjection!6234) Bool)

(assert (=> b!1643417 (= e!1054042 (and tp!476331 (inv!23481 (tag!3477 (rule!5047 (h!23528 tokens!457)))) (inv!23484 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) e!1054039))))

(declare-fun res!736302 () Bool)

(assert (=> start!157414 (=> (not res!736302) (not e!1054038))))

(assert (=> start!157414 (= res!736302 ((_ is Lexer!2824) thiss!17113))))

(assert (=> start!157414 e!1054038))

(assert (=> start!157414 true))

(declare-fun e!1054032 () Bool)

(assert (=> start!157414 e!1054032))

(declare-fun e!1054040 () Bool)

(assert (=> start!157414 e!1054040))

(declare-fun e!1054041 () Bool)

(declare-fun tp!476332 () Bool)

(declare-fun b!1643418 () Bool)

(declare-fun inv!23485 (Token!5960) Bool)

(assert (=> b!1643418 (= e!1054040 (and (inv!23485 (h!23528 tokens!457)) e!1054041 tp!476332))))

(declare-fun e!1054035 () Bool)

(assert (=> b!1643419 (= e!1054035 (and tp!476336 tp!476333))))

(declare-fun b!1643420 () Bool)

(declare-fun e!1054031 () Bool)

(assert (=> b!1643420 (= e!1054038 e!1054031)))

(declare-fun res!736300 () Bool)

(assert (=> b!1643420 (=> (not res!736300) (not e!1054031))))

(declare-fun lt!605504 () List!18196)

(declare-fun lt!605512 () List!18196)

(assert (=> b!1643420 (= res!736300 (= lt!605504 lt!605512))))

(declare-fun lt!605502 () List!18196)

(declare-fun lt!605516 () List!18196)

(declare-fun ++!4878 (List!18196 List!18196) List!18196)

(assert (=> b!1643420 (= lt!605512 (++!4878 lt!605502 lt!605516))))

(declare-fun lt!605509 () BalanceConc!12028)

(declare-fun list!7182 (BalanceConc!12028) List!18196)

(assert (=> b!1643420 (= lt!605504 (list!7182 lt!605509))))

(declare-fun lt!605515 () BalanceConc!12028)

(assert (=> b!1643420 (= lt!605516 (list!7182 lt!605515))))

(declare-fun charsOf!1846 (Token!5960) BalanceConc!12028)

(assert (=> b!1643420 (= lt!605502 (list!7182 (charsOf!1846 (h!23528 tokens!457))))))

(declare-fun lex!1310 (LexerInterface!2826 List!18198 BalanceConc!12028) tuple2!17784)

(assert (=> b!1643420 (= lt!605513 (lex!1310 thiss!17113 rules!1846 lt!605515))))

(declare-fun print!1357 (LexerInterface!2826 BalanceConc!12030) BalanceConc!12028)

(assert (=> b!1643420 (= lt!605515 (print!1357 thiss!17113 lt!605517))))

(assert (=> b!1643420 (= lt!605517 (seqFromList!2134 (t!150204 tokens!457)))))

(assert (=> b!1643420 (= lt!605509 (print!1357 thiss!17113 (seqFromList!2134 tokens!457)))))

(declare-fun lt!605514 () List!18196)

(declare-fun lt!605518 () List!18196)

(declare-fun b!1643421 () Bool)

(assert (=> b!1643421 (= e!1054037 (or (not (= lt!605514 lt!605518)) (= lt!605518 lt!605502)))))

(declare-fun printList!939 (LexerInterface!2826 List!18197) List!18196)

(assert (=> b!1643421 (= lt!605518 (printList!939 thiss!17113 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))

(declare-fun lt!605507 () BalanceConc!12028)

(assert (=> b!1643421 (= lt!605514 (list!7182 lt!605507))))

(declare-fun lt!605506 () BalanceConc!12030)

(declare-fun printTailRec!877 (LexerInterface!2826 BalanceConc!12030 Int BalanceConc!12028) BalanceConc!12028)

(assert (=> b!1643421 (= lt!605507 (printTailRec!877 thiss!17113 lt!605506 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> b!1643421 (= lt!605507 (print!1357 thiss!17113 lt!605506))))

(declare-fun singletonSeq!1667 (Token!5960) BalanceConc!12030)

(assert (=> b!1643421 (= lt!605506 (singletonSeq!1667 (h!23528 tokens!457)))))

(declare-datatypes ((tuple2!17786 0))(
  ( (tuple2!17787 (_1!10295 Token!5960) (_2!10295 List!18196)) )
))
(declare-datatypes ((Option!3428 0))(
  ( (None!3427) (Some!3427 (v!24552 tuple2!17786)) )
))
(declare-fun lt!605500 () Option!3428)

(declare-fun maxPrefix!1388 (LexerInterface!2826 List!18198 List!18196) Option!3428)

(assert (=> b!1643421 (= lt!605500 (maxPrefix!1388 thiss!17113 rules!1846 lt!605504))))

(declare-fun e!1054034 () Bool)

(declare-fun b!1643422 () Bool)

(declare-fun tp!476335 () Bool)

(assert (=> b!1643422 (= e!1054034 (and tp!476335 (inv!23481 (tag!3477 (h!23529 rules!1846))) (inv!23484 (transformation!3197 (h!23529 rules!1846))) e!1054035))))

(declare-fun b!1643423 () Bool)

(declare-fun res!736296 () Bool)

(assert (=> b!1643423 (=> (not res!736296) (not e!1054038))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!519 (LexerInterface!2826 List!18197 List!18198) Bool)

(assert (=> b!1643423 (= res!736296 (tokensListTwoByTwoPredicateSeparableList!519 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1643424 () Bool)

(assert (=> b!1643424 (= e!1054031 (not e!1054029))))

(declare-fun res!736304 () Bool)

(assert (=> b!1643424 (=> res!736304 e!1054029)))

(assert (=> b!1643424 (= res!736304 (not (= lt!605501 (t!150204 tokens!457))))))

(assert (=> b!1643424 (= lt!605501 (list!7181 (_1!10294 lt!605513)))))

(declare-fun lt!605510 () Unit!29917)

(declare-fun theoremInvertabilityWhenTokenListSeparable!269 (LexerInterface!2826 List!18198 List!18197) Unit!29917)

(assert (=> b!1643424 (= lt!605510 (theoremInvertabilityWhenTokenListSeparable!269 thiss!17113 rules!1846 (t!150204 tokens!457)))))

(declare-fun isPrefix!1455 (List!18196 List!18196) Bool)

(assert (=> b!1643424 (isPrefix!1455 lt!605502 lt!605512)))

(declare-fun lt!605505 () Unit!29917)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!980 (List!18196 List!18196) Unit!29917)

(assert (=> b!1643424 (= lt!605505 (lemmaConcatTwoListThenFirstIsPrefix!980 lt!605502 lt!605516))))

(declare-fun b!1643425 () Bool)

(declare-fun res!736305 () Bool)

(assert (=> b!1643425 (=> (not res!736305) (not e!1054038))))

(declare-fun rulesInvariant!2495 (LexerInterface!2826 List!18198) Bool)

(assert (=> b!1643425 (= res!736305 (rulesInvariant!2495 thiss!17113 rules!1846))))

(declare-fun b!1643426 () Bool)

(declare-fun tp!476328 () Bool)

(assert (=> b!1643426 (= e!1054032 (and e!1054034 tp!476328))))

(declare-fun b!1643427 () Bool)

(declare-fun tp!476334 () Bool)

(declare-fun inv!21 (TokenValue!3287) Bool)

(assert (=> b!1643427 (= e!1054041 (and (inv!21 (value!100787 (h!23528 tokens!457))) e!1054042 tp!476334))))

(declare-fun b!1643428 () Bool)

(declare-fun res!736301 () Bool)

(assert (=> b!1643428 (=> (not res!736301) (not e!1054038))))

(declare-fun isEmpty!11151 (List!18198) Bool)

(assert (=> b!1643428 (= res!736301 (not (isEmpty!11151 rules!1846)))))

(assert (= (and start!157414 res!736302) b!1643428))

(assert (= (and b!1643428 res!736301) b!1643425))

(assert (= (and b!1643425 res!736305) b!1643414))

(assert (= (and b!1643414 res!736298) b!1643423))

(assert (= (and b!1643423 res!736296) b!1643413))

(assert (= (and b!1643413 res!736303) b!1643420))

(assert (= (and b!1643420 res!736300) b!1643424))

(assert (= (and b!1643424 (not res!736304)) b!1643412))

(assert (= (and b!1643412 (not res!736299)) b!1643416))

(assert (= (and b!1643416 (not res!736297)) b!1643421))

(assert (= b!1643422 b!1643419))

(assert (= b!1643426 b!1643422))

(assert (= (and start!157414 ((_ is Cons!18128) rules!1846)) b!1643426))

(assert (= b!1643417 b!1643415))

(assert (= b!1643427 b!1643417))

(assert (= b!1643418 b!1643427))

(assert (= (and start!157414 ((_ is Cons!18127) tokens!457)) b!1643418))

(declare-fun m!1985677 () Bool)

(assert (=> b!1643423 m!1985677))

(declare-fun m!1985679 () Bool)

(assert (=> b!1643418 m!1985679))

(declare-fun m!1985681 () Bool)

(assert (=> b!1643422 m!1985681))

(declare-fun m!1985683 () Bool)

(assert (=> b!1643422 m!1985683))

(declare-fun m!1985685 () Bool)

(assert (=> b!1643421 m!1985685))

(declare-fun m!1985687 () Bool)

(assert (=> b!1643421 m!1985687))

(declare-fun m!1985689 () Bool)

(assert (=> b!1643421 m!1985689))

(declare-fun m!1985691 () Bool)

(assert (=> b!1643421 m!1985691))

(declare-fun m!1985693 () Bool)

(assert (=> b!1643421 m!1985693))

(declare-fun m!1985695 () Bool)

(assert (=> b!1643421 m!1985695))

(declare-fun m!1985697 () Bool)

(assert (=> b!1643416 m!1985697))

(declare-fun m!1985699 () Bool)

(assert (=> b!1643428 m!1985699))

(declare-fun m!1985701 () Bool)

(assert (=> b!1643414 m!1985701))

(declare-fun m!1985703 () Bool)

(assert (=> b!1643412 m!1985703))

(declare-fun m!1985705 () Bool)

(assert (=> b!1643412 m!1985705))

(declare-fun m!1985707 () Bool)

(assert (=> b!1643412 m!1985707))

(declare-fun m!1985709 () Bool)

(assert (=> b!1643412 m!1985709))

(declare-fun m!1985711 () Bool)

(assert (=> b!1643412 m!1985711))

(assert (=> b!1643412 m!1985707))

(assert (=> b!1643412 m!1985709))

(declare-fun m!1985713 () Bool)

(assert (=> b!1643420 m!1985713))

(declare-fun m!1985715 () Bool)

(assert (=> b!1643420 m!1985715))

(declare-fun m!1985717 () Bool)

(assert (=> b!1643420 m!1985717))

(declare-fun m!1985719 () Bool)

(assert (=> b!1643420 m!1985719))

(declare-fun m!1985721 () Bool)

(assert (=> b!1643420 m!1985721))

(declare-fun m!1985723 () Bool)

(assert (=> b!1643420 m!1985723))

(declare-fun m!1985725 () Bool)

(assert (=> b!1643420 m!1985725))

(declare-fun m!1985727 () Bool)

(assert (=> b!1643420 m!1985727))

(declare-fun m!1985729 () Bool)

(assert (=> b!1643420 m!1985729))

(assert (=> b!1643420 m!1985717))

(declare-fun m!1985731 () Bool)

(assert (=> b!1643420 m!1985731))

(assert (=> b!1643420 m!1985725))

(declare-fun m!1985733 () Bool)

(assert (=> b!1643417 m!1985733))

(declare-fun m!1985735 () Bool)

(assert (=> b!1643417 m!1985735))

(declare-fun m!1985737 () Bool)

(assert (=> b!1643427 m!1985737))

(declare-fun m!1985739 () Bool)

(assert (=> b!1643424 m!1985739))

(declare-fun m!1985741 () Bool)

(assert (=> b!1643424 m!1985741))

(declare-fun m!1985743 () Bool)

(assert (=> b!1643424 m!1985743))

(declare-fun m!1985745 () Bool)

(assert (=> b!1643424 m!1985745))

(declare-fun m!1985747 () Bool)

(assert (=> b!1643425 m!1985747))

(check-sat (not b!1643418) b_and!116579 (not b!1643428) (not b_next!45305) (not b!1643423) (not b_next!45303) (not b!1643420) b_and!116575 (not b!1643414) (not b_next!45309) (not b!1643426) (not b!1643422) (not b!1643427) b_and!116573 (not b!1643412) (not b!1643421) (not b!1643425) (not b!1643417) (not b_next!45307) (not b!1643416) (not b!1643424) b_and!116577)
(check-sat (not b_next!45309) b_and!116579 (not b_next!45305) b_and!116573 (not b_next!45303) (not b_next!45307) b_and!116577 b_and!116575)
(get-model)

(declare-fun d!494799 () Bool)

(declare-fun res!736321 () Bool)

(declare-fun e!1054051 () Bool)

(assert (=> d!494799 (=> (not res!736321) (not e!1054051))))

(declare-fun rulesValid!1158 (LexerInterface!2826 List!18198) Bool)

(assert (=> d!494799 (= res!736321 (rulesValid!1158 thiss!17113 rules!1846))))

(assert (=> d!494799 (= (rulesInvariant!2495 thiss!17113 rules!1846) e!1054051)))

(declare-fun b!1643443 () Bool)

(declare-datatypes ((List!18200 0))(
  ( (Nil!18130) (Cons!18130 (h!23531 String!20767) (t!150229 List!18200)) )
))
(declare-fun noDuplicateTag!1158 (LexerInterface!2826 List!18198 List!18200) Bool)

(assert (=> b!1643443 (= e!1054051 (noDuplicateTag!1158 thiss!17113 rules!1846 Nil!18130))))

(assert (= (and d!494799 res!736321) b!1643443))

(declare-fun m!1985771 () Bool)

(assert (=> d!494799 m!1985771))

(declare-fun m!1985773 () Bool)

(assert (=> b!1643443 m!1985773))

(assert (=> b!1643425 d!494799))

(declare-fun b!1643565 () Bool)

(declare-fun e!1054130 () Bool)

(assert (=> b!1643565 (= e!1054130 true)))

(declare-fun b!1643564 () Bool)

(declare-fun e!1054129 () Bool)

(assert (=> b!1643564 (= e!1054129 e!1054130)))

(declare-fun b!1643563 () Bool)

(declare-fun e!1054128 () Bool)

(assert (=> b!1643563 (= e!1054128 e!1054129)))

(declare-fun d!494801 () Bool)

(assert (=> d!494801 e!1054128))

(assert (= b!1643564 b!1643565))

(assert (= b!1643563 b!1643564))

(assert (= (and d!494801 ((_ is Cons!18128) rules!1846)) b!1643563))

(declare-fun order!10779 () Int)

(declare-fun lambda!67535 () Int)

(declare-fun order!10777 () Int)

(declare-fun dynLambda!8095 (Int Int) Int)

(declare-fun dynLambda!8096 (Int Int) Int)

(assert (=> b!1643565 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8096 order!10779 lambda!67535))))

(declare-fun order!10781 () Int)

(declare-fun dynLambda!8097 (Int Int) Int)

(assert (=> b!1643565 (< (dynLambda!8097 order!10781 (toChars!4495 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8096 order!10779 lambda!67535))))

(assert (=> d!494801 true))

(declare-fun lt!605603 () Bool)

(declare-fun forall!4129 (List!18197 Int) Bool)

(assert (=> d!494801 (= lt!605603 (forall!4129 tokens!457 lambda!67535))))

(declare-fun e!1054121 () Bool)

(assert (=> d!494801 (= lt!605603 e!1054121)))

(declare-fun res!736390 () Bool)

(assert (=> d!494801 (=> res!736390 e!1054121)))

(assert (=> d!494801 (= res!736390 (not ((_ is Cons!18127) tokens!457)))))

(assert (=> d!494801 (not (isEmpty!11151 rules!1846))))

(assert (=> d!494801 (= (rulesProduceEachTokenIndividuallyList!1028 thiss!17113 rules!1846 tokens!457) lt!605603)))

(declare-fun b!1643553 () Bool)

(declare-fun e!1054120 () Bool)

(assert (=> b!1643553 (= e!1054121 e!1054120)))

(declare-fun res!736391 () Bool)

(assert (=> b!1643553 (=> (not res!736391) (not e!1054120))))

(declare-fun rulesProduceIndividualToken!1476 (LexerInterface!2826 List!18198 Token!5960) Bool)

(assert (=> b!1643553 (= res!736391 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 tokens!457)))))

(declare-fun b!1643554 () Bool)

(assert (=> b!1643554 (= e!1054120 (rulesProduceEachTokenIndividuallyList!1028 thiss!17113 rules!1846 (t!150204 tokens!457)))))

(assert (= (and d!494801 (not res!736390)) b!1643553))

(assert (= (and b!1643553 res!736391) b!1643554))

(declare-fun m!1985971 () Bool)

(assert (=> d!494801 m!1985971))

(assert (=> d!494801 m!1985699))

(declare-fun m!1985973 () Bool)

(assert (=> b!1643553 m!1985973))

(declare-fun m!1985975 () Bool)

(assert (=> b!1643554 m!1985975))

(assert (=> b!1643414 d!494801))

(declare-fun d!494857 () Bool)

(declare-fun list!7185 (Conc!6043) List!18197)

(assert (=> d!494857 (= (list!7181 (_1!10294 lt!605513)) (list!7185 (c!267231 (_1!10294 lt!605513))))))

(declare-fun bs!395876 () Bool)

(assert (= bs!395876 d!494857))

(declare-fun m!1985977 () Bool)

(assert (=> bs!395876 m!1985977))

(assert (=> b!1643424 d!494857))

(declare-fun d!494859 () Bool)

(declare-fun e!1054148 () Bool)

(assert (=> d!494859 e!1054148))

(declare-fun res!736397 () Bool)

(assert (=> d!494859 (=> (not res!736397) (not e!1054148))))

(assert (=> d!494859 (= res!736397 (= (list!7181 (_1!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)))))) (t!150204 tokens!457)))))

(declare-fun lt!605682 () Unit!29917)

(declare-fun e!1054147 () Unit!29917)

(assert (=> d!494859 (= lt!605682 e!1054147)))

(declare-fun c!267256 () Bool)

(assert (=> d!494859 (= c!267256 (or ((_ is Nil!18127) (t!150204 tokens!457)) ((_ is Nil!18127) (t!150204 (t!150204 tokens!457)))))))

(assert (=> d!494859 (not (isEmpty!11151 rules!1846))))

(assert (=> d!494859 (= (theoremInvertabilityWhenTokenListSeparable!269 thiss!17113 rules!1846 (t!150204 tokens!457)) lt!605682)))

(declare-fun b!1643590 () Bool)

(declare-fun Unit!29922 () Unit!29917)

(assert (=> b!1643590 (= e!1054147 Unit!29922)))

(declare-fun b!1643591 () Bool)

(declare-fun Unit!29923 () Unit!29917)

(assert (=> b!1643591 (= e!1054147 Unit!29923)))

(declare-fun lt!605658 () BalanceConc!12028)

(assert (=> b!1643591 (= lt!605658 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))

(declare-fun lt!605669 () BalanceConc!12028)

(assert (=> b!1643591 (= lt!605669 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))))))

(declare-fun lt!605665 () tuple2!17784)

(assert (=> b!1643591 (= lt!605665 (lex!1310 thiss!17113 rules!1846 lt!605669))))

(declare-fun lt!605673 () List!18196)

(assert (=> b!1643591 (= lt!605673 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!605659 () List!18196)

(assert (=> b!1643591 (= lt!605659 (list!7182 lt!605669))))

(declare-fun lt!605670 () Unit!29917)

(assert (=> b!1643591 (= lt!605670 (lemmaConcatTwoListThenFirstIsPrefix!980 lt!605673 lt!605659))))

(assert (=> b!1643591 (isPrefix!1455 lt!605673 (++!4878 lt!605673 lt!605659))))

(declare-fun lt!605679 () Unit!29917)

(assert (=> b!1643591 (= lt!605679 lt!605670)))

(declare-fun lt!605664 () Unit!29917)

(assert (=> b!1643591 (= lt!605664 (theoremInvertabilityWhenTokenListSeparable!269 thiss!17113 rules!1846 (t!150204 (t!150204 tokens!457))))))

(declare-fun lt!605681 () Unit!29917)

(assert (=> b!1643591 (= lt!605681 (seqFromListBHdTlConstructive!272 (h!23528 (t!150204 (t!150204 tokens!457))) (t!150204 (t!150204 (t!150204 tokens!457))) (_1!10294 lt!605665)))))

(assert (=> b!1643591 (= (list!7181 (_1!10294 lt!605665)) (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!605675 () Unit!29917)

(assert (=> b!1643591 (= lt!605675 lt!605681)))

(declare-fun lt!605680 () Option!3428)

(assert (=> b!1643591 (= lt!605680 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 lt!605658)))))

(assert (=> b!1643591 (= (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457)))) (printTailRec!877 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) 0 (BalanceConc!12029 Empty!6042)))))

(declare-fun lt!605674 () Unit!29917)

(declare-fun Unit!29924 () Unit!29917)

(assert (=> b!1643591 (= lt!605674 Unit!29924)))

(declare-fun lt!605676 () Unit!29917)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!395 (LexerInterface!2826 List!18198 List!18196 List!18196) Unit!29917)

(assert (=> b!1643591 (= lt!605676 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!395 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))

(assert (=> b!1643591 (= (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))))

(declare-fun lt!605678 () Unit!29917)

(declare-fun Unit!29925 () Unit!29917)

(assert (=> b!1643591 (= lt!605678 Unit!29925)))

(declare-fun singletonSeq!1669 (C!9224) BalanceConc!12028)

(declare-fun apply!4733 (BalanceConc!12028 Int) C!9224)

(declare-fun head!3589 (List!18196) C!9224)

(assert (=> b!1643591 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0))) (Cons!18126 (head!3589 (originalCharacters!4011 (h!23528 (t!150204 (t!150204 tokens!457))))) Nil!18126))))

(declare-fun lt!605668 () Unit!29917)

(declare-fun Unit!29926 () Unit!29917)

(assert (=> b!1643591 (= lt!605668 Unit!29926)))

(assert (=> b!1643591 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0))) (Cons!18126 (head!3589 (list!7182 lt!605669)) Nil!18126))))

(declare-fun lt!605667 () Unit!29917)

(declare-fun Unit!29927 () Unit!29917)

(assert (=> b!1643591 (= lt!605667 Unit!29927)))

(declare-fun head!3590 (BalanceConc!12028) C!9224)

(assert (=> b!1643591 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0))) (Cons!18126 (head!3590 lt!605669) Nil!18126))))

(declare-fun lt!605660 () Unit!29917)

(declare-fun Unit!29928 () Unit!29917)

(assert (=> b!1643591 (= lt!605660 Unit!29928)))

(declare-fun isDefined!2789 (Option!3428) Bool)

(assert (=> b!1643591 (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!605677 () Unit!29917)

(declare-fun Unit!29929 () Unit!29917)

(assert (=> b!1643591 (= lt!605677 Unit!29929)))

(assert (=> b!1643591 (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!605657 () Unit!29917)

(declare-fun Unit!29930 () Unit!29917)

(assert (=> b!1643591 (= lt!605657 Unit!29930)))

(declare-fun lt!605663 () Unit!29917)

(declare-fun Unit!29931 () Unit!29917)

(assert (=> b!1643591 (= lt!605663 Unit!29931)))

(declare-fun get!5272 (Option!3428) tuple2!17786)

(assert (=> b!1643591 (= (_1!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))) (h!23528 (t!150204 tokens!457)))))

(declare-fun lt!605672 () Unit!29917)

(declare-fun Unit!29932 () Unit!29917)

(assert (=> b!1643591 (= lt!605672 Unit!29932)))

(declare-fun isEmpty!11155 (List!18196) Bool)

(assert (=> b!1643591 (isEmpty!11155 (_2!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))))

(declare-fun lt!605662 () Unit!29917)

(declare-fun Unit!29933 () Unit!29917)

(assert (=> b!1643591 (= lt!605662 Unit!29933)))

(declare-fun matchR!2020 (Regex!4525 List!18196) Bool)

(assert (=> b!1643591 (matchR!2020 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!605661 () Unit!29917)

(declare-fun Unit!29934 () Unit!29917)

(assert (=> b!1643591 (= lt!605661 Unit!29934)))

(assert (=> b!1643591 (= (rule!5047 (h!23528 (t!150204 tokens!457))) (rule!5047 (h!23528 (t!150204 tokens!457))))))

(declare-fun lt!605671 () Unit!29917)

(declare-fun Unit!29935 () Unit!29917)

(assert (=> b!1643591 (= lt!605671 Unit!29935)))

(declare-fun lt!605666 () Unit!29917)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!157 (LexerInterface!2826 List!18198 Token!5960 Rule!6194 List!18196) Unit!29917)

(assert (=> b!1643591 (= lt!605666 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!157 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457)) (rule!5047 (h!23528 (t!150204 tokens!457))) (list!7182 lt!605669)))))

(declare-fun b!1643592 () Bool)

(declare-fun isEmpty!11156 (BalanceConc!12028) Bool)

(assert (=> b!1643592 (= e!1054148 (isEmpty!11156 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)))))))))

(assert (= (and d!494859 c!267256) b!1643590))

(assert (= (and d!494859 (not c!267256)) b!1643591))

(assert (= (and d!494859 res!736397) b!1643592))

(declare-fun m!1985989 () Bool)

(assert (=> d!494859 m!1985989))

(declare-fun m!1985991 () Bool)

(assert (=> d!494859 m!1985991))

(declare-fun m!1985993 () Bool)

(assert (=> d!494859 m!1985993))

(assert (=> d!494859 m!1985721))

(assert (=> d!494859 m!1985989))

(assert (=> d!494859 m!1985699))

(assert (=> d!494859 m!1985721))

(assert (=> b!1643591 m!1985707))

(declare-fun m!1985995 () Bool)

(assert (=> b!1643591 m!1985995))

(declare-fun m!1985997 () Bool)

(assert (=> b!1643591 m!1985997))

(declare-fun m!1985999 () Bool)

(assert (=> b!1643591 m!1985999))

(declare-fun m!1986001 () Bool)

(assert (=> b!1643591 m!1986001))

(declare-fun m!1986003 () Bool)

(assert (=> b!1643591 m!1986003))

(declare-fun m!1986005 () Bool)

(assert (=> b!1643591 m!1986005))

(declare-fun m!1986007 () Bool)

(assert (=> b!1643591 m!1986007))

(declare-fun m!1986009 () Bool)

(assert (=> b!1643591 m!1986009))

(declare-fun m!1986011 () Bool)

(assert (=> b!1643591 m!1986011))

(assert (=> b!1643591 m!1986007))

(declare-fun m!1986013 () Bool)

(assert (=> b!1643591 m!1986013))

(declare-fun m!1986015 () Bool)

(assert (=> b!1643591 m!1986015))

(declare-fun m!1986017 () Bool)

(assert (=> b!1643591 m!1986017))

(declare-fun m!1986019 () Bool)

(assert (=> b!1643591 m!1986019))

(assert (=> b!1643591 m!1985721))

(assert (=> b!1643591 m!1986001))

(declare-fun m!1986021 () Bool)

(assert (=> b!1643591 m!1986021))

(declare-fun m!1986023 () Bool)

(assert (=> b!1643591 m!1986023))

(assert (=> b!1643591 m!1986001))

(declare-fun m!1986025 () Bool)

(assert (=> b!1643591 m!1986025))

(declare-fun m!1986027 () Bool)

(assert (=> b!1643591 m!1986027))

(declare-fun m!1986029 () Bool)

(assert (=> b!1643591 m!1986029))

(declare-fun m!1986031 () Bool)

(assert (=> b!1643591 m!1986031))

(assert (=> b!1643591 m!1986013))

(declare-fun m!1986033 () Bool)

(assert (=> b!1643591 m!1986033))

(declare-fun m!1986035 () Bool)

(assert (=> b!1643591 m!1986035))

(declare-fun m!1986037 () Bool)

(assert (=> b!1643591 m!1986037))

(declare-fun m!1986039 () Bool)

(assert (=> b!1643591 m!1986039))

(assert (=> b!1643591 m!1986029))

(declare-fun m!1986041 () Bool)

(assert (=> b!1643591 m!1986041))

(assert (=> b!1643591 m!1986025))

(assert (=> b!1643591 m!1985721))

(assert (=> b!1643591 m!1985989))

(declare-fun m!1986043 () Bool)

(assert (=> b!1643591 m!1986043))

(declare-fun m!1986045 () Bool)

(assert (=> b!1643591 m!1986045))

(declare-fun m!1986047 () Bool)

(assert (=> b!1643591 m!1986047))

(assert (=> b!1643591 m!1986023))

(assert (=> b!1643591 m!1986003))

(assert (=> b!1643591 m!1986017))

(declare-fun m!1986049 () Bool)

(assert (=> b!1643591 m!1986049))

(assert (=> b!1643591 m!1986001))

(assert (=> b!1643591 m!1986017))

(declare-fun m!1986051 () Bool)

(assert (=> b!1643591 m!1986051))

(assert (=> b!1643591 m!1986039))

(assert (=> b!1643591 m!1986045))

(declare-fun m!1986053 () Bool)

(assert (=> b!1643591 m!1986053))

(assert (=> b!1643591 m!1986003))

(declare-fun m!1986055 () Bool)

(assert (=> b!1643591 m!1986055))

(assert (=> b!1643591 m!1986051))

(assert (=> b!1643591 m!1986003))

(declare-fun m!1986057 () Bool)

(assert (=> b!1643591 m!1986057))

(declare-fun m!1986059 () Bool)

(assert (=> b!1643591 m!1986059))

(declare-fun m!1986061 () Bool)

(assert (=> b!1643591 m!1986061))

(declare-fun m!1986063 () Bool)

(assert (=> b!1643591 m!1986063))

(assert (=> b!1643591 m!1985707))

(assert (=> b!1643591 m!1986059))

(assert (=> b!1643591 m!1986013))

(assert (=> b!1643591 m!1986041))

(assert (=> b!1643592 m!1985721))

(assert (=> b!1643592 m!1985721))

(assert (=> b!1643592 m!1985989))

(assert (=> b!1643592 m!1985989))

(assert (=> b!1643592 m!1985991))

(declare-fun m!1986065 () Bool)

(assert (=> b!1643592 m!1986065))

(assert (=> b!1643424 d!494859))

(declare-fun b!1643601 () Bool)

(declare-fun e!1054157 () Bool)

(declare-fun e!1054156 () Bool)

(assert (=> b!1643601 (= e!1054157 e!1054156)))

(declare-fun res!736406 () Bool)

(assert (=> b!1643601 (=> (not res!736406) (not e!1054156))))

(assert (=> b!1643601 (= res!736406 (not ((_ is Nil!18126) lt!605512)))))

(declare-fun b!1643604 () Bool)

(declare-fun e!1054155 () Bool)

(declare-fun size!14440 (List!18196) Int)

(assert (=> b!1643604 (= e!1054155 (>= (size!14440 lt!605512) (size!14440 lt!605502)))))

(declare-fun b!1643602 () Bool)

(declare-fun res!736409 () Bool)

(assert (=> b!1643602 (=> (not res!736409) (not e!1054156))))

(assert (=> b!1643602 (= res!736409 (= (head!3589 lt!605502) (head!3589 lt!605512)))))

(declare-fun b!1643603 () Bool)

(declare-fun tail!2418 (List!18196) List!18196)

(assert (=> b!1643603 (= e!1054156 (isPrefix!1455 (tail!2418 lt!605502) (tail!2418 lt!605512)))))

(declare-fun d!494869 () Bool)

(assert (=> d!494869 e!1054155))

(declare-fun res!736407 () Bool)

(assert (=> d!494869 (=> res!736407 e!1054155)))

(declare-fun lt!605685 () Bool)

(assert (=> d!494869 (= res!736407 (not lt!605685))))

(assert (=> d!494869 (= lt!605685 e!1054157)))

(declare-fun res!736408 () Bool)

(assert (=> d!494869 (=> res!736408 e!1054157)))

(assert (=> d!494869 (= res!736408 ((_ is Nil!18126) lt!605502))))

(assert (=> d!494869 (= (isPrefix!1455 lt!605502 lt!605512) lt!605685)))

(assert (= (and d!494869 (not res!736408)) b!1643601))

(assert (= (and b!1643601 res!736406) b!1643602))

(assert (= (and b!1643602 res!736409) b!1643603))

(assert (= (and d!494869 (not res!736407)) b!1643604))

(declare-fun m!1986067 () Bool)

(assert (=> b!1643604 m!1986067))

(declare-fun m!1986069 () Bool)

(assert (=> b!1643604 m!1986069))

(declare-fun m!1986071 () Bool)

(assert (=> b!1643602 m!1986071))

(declare-fun m!1986073 () Bool)

(assert (=> b!1643602 m!1986073))

(declare-fun m!1986075 () Bool)

(assert (=> b!1643603 m!1986075))

(declare-fun m!1986077 () Bool)

(assert (=> b!1643603 m!1986077))

(assert (=> b!1643603 m!1986075))

(assert (=> b!1643603 m!1986077))

(declare-fun m!1986079 () Bool)

(assert (=> b!1643603 m!1986079))

(assert (=> b!1643424 d!494869))

(declare-fun d!494871 () Bool)

(assert (=> d!494871 (isPrefix!1455 lt!605502 (++!4878 lt!605502 lt!605516))))

(declare-fun lt!605688 () Unit!29917)

(declare-fun choose!9859 (List!18196 List!18196) Unit!29917)

(assert (=> d!494871 (= lt!605688 (choose!9859 lt!605502 lt!605516))))

(assert (=> d!494871 (= (lemmaConcatTwoListThenFirstIsPrefix!980 lt!605502 lt!605516) lt!605688)))

(declare-fun bs!395878 () Bool)

(assert (= bs!395878 d!494871))

(assert (=> bs!395878 m!1985723))

(assert (=> bs!395878 m!1985723))

(declare-fun m!1986081 () Bool)

(assert (=> bs!395878 m!1986081))

(declare-fun m!1986083 () Bool)

(assert (=> bs!395878 m!1986083))

(assert (=> b!1643424 d!494871))

(declare-fun d!494873 () Bool)

(declare-fun res!736415 () Bool)

(declare-fun e!1054163 () Bool)

(assert (=> d!494873 (=> res!736415 e!1054163)))

(assert (=> d!494873 (= res!736415 (or (not ((_ is Cons!18127) tokens!457)) (not ((_ is Cons!18127) (t!150204 tokens!457)))))))

(assert (=> d!494873 (= (tokensListTwoByTwoPredicateSeparableList!519 thiss!17113 tokens!457 rules!1846) e!1054163)))

(declare-fun b!1643609 () Bool)

(declare-fun e!1054162 () Bool)

(assert (=> b!1643609 (= e!1054163 e!1054162)))

(declare-fun res!736414 () Bool)

(assert (=> b!1643609 (=> (not res!736414) (not e!1054162))))

(assert (=> b!1643609 (= res!736414 (separableTokensPredicate!766 thiss!17113 (h!23528 tokens!457) (h!23528 (t!150204 tokens!457)) rules!1846))))

(declare-fun lt!605707 () Unit!29917)

(declare-fun Unit!29941 () Unit!29917)

(assert (=> b!1643609 (= lt!605707 Unit!29941)))

(declare-fun size!14441 (BalanceConc!12028) Int)

(assert (=> b!1643609 (> (size!14441 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) 0)))

(declare-fun lt!605705 () Unit!29917)

(declare-fun Unit!29943 () Unit!29917)

(assert (=> b!1643609 (= lt!605705 Unit!29943)))

(assert (=> b!1643609 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457)))))

(declare-fun lt!605709 () Unit!29917)

(declare-fun Unit!29945 () Unit!29917)

(assert (=> b!1643609 (= lt!605709 Unit!29945)))

(assert (=> b!1643609 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 tokens!457))))

(declare-fun lt!605706 () Unit!29917)

(declare-fun lt!605708 () Unit!29917)

(assert (=> b!1643609 (= lt!605706 lt!605708)))

(assert (=> b!1643609 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 (LexerInterface!2826 List!18198 List!18197 Token!5960) Unit!29917)

(assert (=> b!1643609 (= lt!605708 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 thiss!17113 rules!1846 tokens!457 (h!23528 (t!150204 tokens!457))))))

(declare-fun lt!605704 () Unit!29917)

(declare-fun lt!605703 () Unit!29917)

(assert (=> b!1643609 (= lt!605704 lt!605703)))

(assert (=> b!1643609 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 tokens!457))))

(assert (=> b!1643609 (= lt!605703 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 thiss!17113 rules!1846 tokens!457 (h!23528 tokens!457)))))

(declare-fun b!1643610 () Bool)

(assert (=> b!1643610 (= e!1054162 (tokensListTwoByTwoPredicateSeparableList!519 thiss!17113 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))) rules!1846))))

(assert (= (and d!494873 (not res!736415)) b!1643609))

(assert (= (and b!1643609 res!736414) b!1643610))

(assert (=> b!1643609 m!1986023))

(declare-fun m!1986085 () Bool)

(assert (=> b!1643609 m!1986085))

(declare-fun m!1986087 () Bool)

(assert (=> b!1643609 m!1986087))

(assert (=> b!1643609 m!1985697))

(assert (=> b!1643609 m!1986023))

(declare-fun m!1986089 () Bool)

(assert (=> b!1643609 m!1986089))

(declare-fun m!1986091 () Bool)

(assert (=> b!1643609 m!1986091))

(assert (=> b!1643609 m!1985973))

(declare-fun m!1986093 () Bool)

(assert (=> b!1643610 m!1986093))

(assert (=> b!1643423 d!494873))

(declare-fun d!494875 () Bool)

(assert (=> d!494875 (= (list!7181 lt!605517) (list!7185 (c!267231 lt!605517)))))

(declare-fun bs!395879 () Bool)

(assert (= bs!395879 d!494875))

(declare-fun m!1986095 () Bool)

(assert (=> bs!395879 m!1986095))

(assert (=> b!1643412 d!494875))

(declare-fun d!494877 () Bool)

(declare-fun e!1054166 () Bool)

(assert (=> d!494877 e!1054166))

(declare-fun res!736418 () Bool)

(assert (=> d!494877 (=> (not res!736418) (not e!1054166))))

(declare-fun isBalanced!1840 (Conc!6043) Bool)

(declare-fun prepend!751 (Conc!6043 Token!5960) Conc!6043)

(assert (=> d!494877 (= res!736418 (isBalanced!1840 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!605712 () BalanceConc!12030)

(assert (=> d!494877 (= lt!605712 (BalanceConc!12031 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!494877 (= (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457))) lt!605712)))

(declare-fun b!1643613 () Bool)

(assert (=> b!1643613 (= e!1054166 (= (list!7181 lt!605712) (Cons!18127 (h!23528 (t!150204 tokens!457)) (list!7181 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))))))))

(assert (= (and d!494877 res!736418) b!1643613))

(declare-fun m!1986097 () Bool)

(assert (=> d!494877 m!1986097))

(assert (=> d!494877 m!1986097))

(declare-fun m!1986099 () Bool)

(assert (=> d!494877 m!1986099))

(declare-fun m!1986101 () Bool)

(assert (=> b!1643613 m!1986101))

(assert (=> b!1643613 m!1985707))

(declare-fun m!1986103 () Bool)

(assert (=> b!1643613 m!1986103))

(assert (=> b!1643412 d!494877))

(declare-fun d!494879 () Bool)

(assert (=> d!494879 (= (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457)))) (list!7185 (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457))))))))

(declare-fun bs!395880 () Bool)

(assert (= bs!395880 d!494879))

(declare-fun m!1986105 () Bool)

(assert (=> bs!395880 m!1986105))

(assert (=> b!1643412 d!494879))

(declare-fun d!494881 () Bool)

(assert (=> d!494881 (= (list!7181 (_1!10294 lt!605513)) (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!605715 () Unit!29917)

(declare-fun choose!9860 (Token!5960 List!18197 BalanceConc!12030) Unit!29917)

(assert (=> d!494881 (= lt!605715 (choose!9860 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)) (_1!10294 lt!605513)))))

(declare-fun $colon$colon!356 (List!18197 Token!5960) List!18197)

(assert (=> d!494881 (= (list!7181 (_1!10294 lt!605513)) (list!7181 (seqFromList!2134 ($colon$colon!356 (t!150204 (t!150204 tokens!457)) (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!494881 (= (seqFromListBHdTlConstructive!272 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)) (_1!10294 lt!605513)) lt!605715)))

(declare-fun bs!395881 () Bool)

(assert (= bs!395881 d!494881))

(assert (=> bs!395881 m!1985739))

(assert (=> bs!395881 m!1985707))

(assert (=> bs!395881 m!1985709))

(assert (=> bs!395881 m!1985711))

(declare-fun m!1986107 () Bool)

(assert (=> bs!395881 m!1986107))

(declare-fun m!1986109 () Bool)

(assert (=> bs!395881 m!1986109))

(declare-fun m!1986111 () Bool)

(assert (=> bs!395881 m!1986111))

(assert (=> bs!395881 m!1985707))

(assert (=> bs!395881 m!1985709))

(assert (=> bs!395881 m!1986109))

(assert (=> bs!395881 m!1986111))

(declare-fun m!1986113 () Bool)

(assert (=> bs!395881 m!1986113))

(assert (=> b!1643412 d!494881))

(declare-fun d!494883 () Bool)

(declare-fun fromListB!943 (List!18197) BalanceConc!12030)

(assert (=> d!494883 (= (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (fromListB!943 (t!150204 (t!150204 tokens!457))))))

(declare-fun bs!395882 () Bool)

(assert (= bs!395882 d!494883))

(declare-fun m!1986115 () Bool)

(assert (=> bs!395882 m!1986115))

(assert (=> b!1643412 d!494883))

(declare-fun d!494885 () Bool)

(assert (=> d!494885 (= (inv!23481 (tag!3477 (h!23529 rules!1846))) (= (mod (str.len (value!100786 (tag!3477 (h!23529 rules!1846)))) 2) 0))))

(assert (=> b!1643422 d!494885))

(declare-fun d!494887 () Bool)

(declare-fun res!736421 () Bool)

(declare-fun e!1054169 () Bool)

(assert (=> d!494887 (=> (not res!736421) (not e!1054169))))

(declare-fun semiInverseModEq!1230 (Int Int) Bool)

(assert (=> d!494887 (= res!736421 (semiInverseModEq!1230 (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toValue!4636 (transformation!3197 (h!23529 rules!1846)))))))

(assert (=> d!494887 (= (inv!23484 (transformation!3197 (h!23529 rules!1846))) e!1054169)))

(declare-fun b!1643616 () Bool)

(declare-fun equivClasses!1171 (Int Int) Bool)

(assert (=> b!1643616 (= e!1054169 (equivClasses!1171 (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toValue!4636 (transformation!3197 (h!23529 rules!1846)))))))

(assert (= (and d!494887 res!736421) b!1643616))

(declare-fun m!1986117 () Bool)

(assert (=> d!494887 m!1986117))

(declare-fun m!1986119 () Bool)

(assert (=> b!1643616 m!1986119))

(assert (=> b!1643422 d!494887))

(declare-fun d!494889 () Bool)

(declare-fun list!7186 (Conc!6042) List!18196)

(assert (=> d!494889 (= (list!7182 lt!605507) (list!7186 (c!267229 lt!605507)))))

(declare-fun bs!395883 () Bool)

(assert (= bs!395883 d!494889))

(declare-fun m!1986121 () Bool)

(assert (=> bs!395883 m!1986121))

(assert (=> b!1643421 d!494889))

(declare-fun d!494891 () Bool)

(declare-fun lt!605730 () BalanceConc!12028)

(declare-fun printListTailRec!381 (LexerInterface!2826 List!18197 List!18196) List!18196)

(declare-fun dropList!652 (BalanceConc!12030 Int) List!18197)

(assert (=> d!494891 (= (list!7182 lt!605730) (printListTailRec!381 thiss!17113 (dropList!652 lt!605506 0) (list!7182 (BalanceConc!12029 Empty!6042))))))

(declare-fun e!1054174 () BalanceConc!12028)

(assert (=> d!494891 (= lt!605730 e!1054174)))

(declare-fun c!267260 () Bool)

(declare-fun size!14442 (BalanceConc!12030) Int)

(assert (=> d!494891 (= c!267260 (>= 0 (size!14442 lt!605506)))))

(declare-fun e!1054175 () Bool)

(assert (=> d!494891 e!1054175))

(declare-fun res!736424 () Bool)

(assert (=> d!494891 (=> (not res!736424) (not e!1054175))))

(assert (=> d!494891 (= res!736424 (>= 0 0))))

(assert (=> d!494891 (= (printTailRec!877 thiss!17113 lt!605506 0 (BalanceConc!12029 Empty!6042)) lt!605730)))

(declare-fun b!1643623 () Bool)

(assert (=> b!1643623 (= e!1054175 (<= 0 (size!14442 lt!605506)))))

(declare-fun b!1643624 () Bool)

(assert (=> b!1643624 (= e!1054174 (BalanceConc!12029 Empty!6042))))

(declare-fun b!1643625 () Bool)

(declare-fun ++!4880 (BalanceConc!12028 BalanceConc!12028) BalanceConc!12028)

(declare-fun apply!4734 (BalanceConc!12030 Int) Token!5960)

(assert (=> b!1643625 (= e!1054174 (printTailRec!877 thiss!17113 lt!605506 (+ 0 1) (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605506 0)))))))

(declare-fun lt!605733 () List!18197)

(assert (=> b!1643625 (= lt!605733 (list!7181 lt!605506))))

(declare-fun lt!605736 () Unit!29917)

(declare-fun lemmaDropApply!588 (List!18197 Int) Unit!29917)

(assert (=> b!1643625 (= lt!605736 (lemmaDropApply!588 lt!605733 0))))

(declare-fun head!3593 (List!18197) Token!5960)

(declare-fun drop!900 (List!18197 Int) List!18197)

(declare-fun apply!4735 (List!18197 Int) Token!5960)

(assert (=> b!1643625 (= (head!3593 (drop!900 lt!605733 0)) (apply!4735 lt!605733 0))))

(declare-fun lt!605731 () Unit!29917)

(assert (=> b!1643625 (= lt!605731 lt!605736)))

(declare-fun lt!605734 () List!18197)

(assert (=> b!1643625 (= lt!605734 (list!7181 lt!605506))))

(declare-fun lt!605735 () Unit!29917)

(declare-fun lemmaDropTail!568 (List!18197 Int) Unit!29917)

(assert (=> b!1643625 (= lt!605735 (lemmaDropTail!568 lt!605734 0))))

(declare-fun tail!2420 (List!18197) List!18197)

(assert (=> b!1643625 (= (tail!2420 (drop!900 lt!605734 0)) (drop!900 lt!605734 (+ 0 1)))))

(declare-fun lt!605732 () Unit!29917)

(assert (=> b!1643625 (= lt!605732 lt!605735)))

(assert (= (and d!494891 res!736424) b!1643623))

(assert (= (and d!494891 c!267260) b!1643624))

(assert (= (and d!494891 (not c!267260)) b!1643625))

(declare-fun m!1986123 () Bool)

(assert (=> d!494891 m!1986123))

(declare-fun m!1986125 () Bool)

(assert (=> d!494891 m!1986125))

(declare-fun m!1986127 () Bool)

(assert (=> d!494891 m!1986127))

(declare-fun m!1986129 () Bool)

(assert (=> d!494891 m!1986129))

(assert (=> d!494891 m!1986123))

(assert (=> d!494891 m!1986125))

(declare-fun m!1986131 () Bool)

(assert (=> d!494891 m!1986131))

(assert (=> b!1643623 m!1986129))

(declare-fun m!1986133 () Bool)

(assert (=> b!1643625 m!1986133))

(declare-fun m!1986135 () Bool)

(assert (=> b!1643625 m!1986135))

(assert (=> b!1643625 m!1986135))

(declare-fun m!1986137 () Bool)

(assert (=> b!1643625 m!1986137))

(declare-fun m!1986139 () Bool)

(assert (=> b!1643625 m!1986139))

(declare-fun m!1986141 () Bool)

(assert (=> b!1643625 m!1986141))

(declare-fun m!1986143 () Bool)

(assert (=> b!1643625 m!1986143))

(declare-fun m!1986145 () Bool)

(assert (=> b!1643625 m!1986145))

(declare-fun m!1986147 () Bool)

(assert (=> b!1643625 m!1986147))

(declare-fun m!1986149 () Bool)

(assert (=> b!1643625 m!1986149))

(declare-fun m!1986151 () Bool)

(assert (=> b!1643625 m!1986151))

(assert (=> b!1643625 m!1986149))

(assert (=> b!1643625 m!1986137))

(declare-fun m!1986153 () Bool)

(assert (=> b!1643625 m!1986153))

(assert (=> b!1643625 m!1986145))

(declare-fun m!1986155 () Bool)

(assert (=> b!1643625 m!1986155))

(assert (=> b!1643625 m!1986133))

(declare-fun m!1986157 () Bool)

(assert (=> b!1643625 m!1986157))

(assert (=> b!1643421 d!494891))

(declare-fun d!494893 () Bool)

(declare-fun lt!605739 () BalanceConc!12028)

(assert (=> d!494893 (= (list!7182 lt!605739) (printList!939 thiss!17113 (list!7181 lt!605506)))))

(assert (=> d!494893 (= lt!605739 (printTailRec!877 thiss!17113 lt!605506 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!494893 (= (print!1357 thiss!17113 lt!605506) lt!605739)))

(declare-fun bs!395884 () Bool)

(assert (= bs!395884 d!494893))

(declare-fun m!1986159 () Bool)

(assert (=> bs!395884 m!1986159))

(assert (=> bs!395884 m!1986139))

(assert (=> bs!395884 m!1986139))

(declare-fun m!1986161 () Bool)

(assert (=> bs!395884 m!1986161))

(assert (=> bs!395884 m!1985689))

(assert (=> b!1643421 d!494893))

(declare-fun b!1643648 () Bool)

(declare-fun e!1054185 () Option!3428)

(declare-fun lt!605785 () Option!3428)

(declare-fun lt!605784 () Option!3428)

(assert (=> b!1643648 (= e!1054185 (ite (and ((_ is None!3427) lt!605785) ((_ is None!3427) lt!605784)) None!3427 (ite ((_ is None!3427) lt!605784) lt!605785 (ite ((_ is None!3427) lt!605785) lt!605784 (ite (>= (size!14436 (_1!10295 (v!24552 lt!605785))) (size!14436 (_1!10295 (v!24552 lt!605784)))) lt!605785 lt!605784)))))))

(declare-fun call!105754 () Option!3428)

(assert (=> b!1643648 (= lt!605785 call!105754)))

(assert (=> b!1643648 (= lt!605784 (maxPrefix!1388 thiss!17113 (t!150205 rules!1846) lt!605504))))

(declare-fun b!1643649 () Bool)

(declare-fun e!1054184 () Bool)

(declare-fun e!1054186 () Bool)

(assert (=> b!1643649 (= e!1054184 e!1054186)))

(declare-fun res!736444 () Bool)

(assert (=> b!1643649 (=> (not res!736444) (not e!1054186))))

(declare-fun lt!605786 () Option!3428)

(assert (=> b!1643649 (= res!736444 (isDefined!2789 lt!605786))))

(declare-fun b!1643650 () Bool)

(assert (=> b!1643650 (= e!1054185 call!105754)))

(declare-fun b!1643651 () Bool)

(declare-fun res!736439 () Bool)

(assert (=> b!1643651 (=> (not res!736439) (not e!1054186))))

(assert (=> b!1643651 (= res!736439 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))) (_2!10295 (get!5272 lt!605786))) lt!605504))))

(declare-fun b!1643652 () Bool)

(declare-fun res!736445 () Bool)

(assert (=> b!1643652 (=> (not res!736445) (not e!1054186))))

(declare-fun apply!4736 (TokenValueInjection!6234 BalanceConc!12028) TokenValue!3287)

(declare-fun seqFromList!2136 (List!18196) BalanceConc!12028)

(assert (=> b!1643652 (= res!736445 (= (value!100787 (_1!10295 (get!5272 lt!605786))) (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!605786)))))))))

(declare-fun b!1643653 () Bool)

(declare-fun res!736443 () Bool)

(assert (=> b!1643653 (=> (not res!736443) (not e!1054186))))

(assert (=> b!1643653 (= res!736443 (< (size!14440 (_2!10295 (get!5272 lt!605786))) (size!14440 lt!605504)))))

(declare-fun b!1643654 () Bool)

(declare-fun res!736441 () Bool)

(assert (=> b!1643654 (=> (not res!736441) (not e!1054186))))

(assert (=> b!1643654 (= res!736441 (matchR!2020 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun bm!105749 () Bool)

(declare-fun maxPrefixOneRule!799 (LexerInterface!2826 Rule!6194 List!18196) Option!3428)

(assert (=> bm!105749 (= call!105754 (maxPrefixOneRule!799 thiss!17113 (h!23529 rules!1846) lt!605504))))

(declare-fun d!494895 () Bool)

(assert (=> d!494895 e!1054184))

(declare-fun res!736440 () Bool)

(assert (=> d!494895 (=> res!736440 e!1054184)))

(declare-fun isEmpty!11158 (Option!3428) Bool)

(assert (=> d!494895 (= res!736440 (isEmpty!11158 lt!605786))))

(assert (=> d!494895 (= lt!605786 e!1054185)))

(declare-fun c!267265 () Bool)

(assert (=> d!494895 (= c!267265 (and ((_ is Cons!18128) rules!1846) ((_ is Nil!18128) (t!150205 rules!1846))))))

(declare-fun lt!605788 () Unit!29917)

(declare-fun lt!605787 () Unit!29917)

(assert (=> d!494895 (= lt!605788 lt!605787)))

(assert (=> d!494895 (isPrefix!1455 lt!605504 lt!605504)))

(declare-fun lemmaIsPrefixRefl!984 (List!18196 List!18196) Unit!29917)

(assert (=> d!494895 (= lt!605787 (lemmaIsPrefixRefl!984 lt!605504 lt!605504))))

(declare-fun rulesValidInductive!1006 (LexerInterface!2826 List!18198) Bool)

(assert (=> d!494895 (rulesValidInductive!1006 thiss!17113 rules!1846)))

(assert (=> d!494895 (= (maxPrefix!1388 thiss!17113 rules!1846 lt!605504) lt!605786)))

(declare-fun b!1643655 () Bool)

(declare-fun contains!3154 (List!18198 Rule!6194) Bool)

(assert (=> b!1643655 (= e!1054186 (contains!3154 rules!1846 (rule!5047 (_1!10295 (get!5272 lt!605786)))))))

(declare-fun b!1643656 () Bool)

(declare-fun res!736442 () Bool)

(assert (=> b!1643656 (=> (not res!736442) (not e!1054186))))

(assert (=> b!1643656 (= res!736442 (= (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))) (originalCharacters!4011 (_1!10295 (get!5272 lt!605786)))))))

(assert (= (and d!494895 c!267265) b!1643650))

(assert (= (and d!494895 (not c!267265)) b!1643648))

(assert (= (or b!1643650 b!1643648) bm!105749))

(assert (= (and d!494895 (not res!736440)) b!1643649))

(assert (= (and b!1643649 res!736444) b!1643656))

(assert (= (and b!1643656 res!736442) b!1643653))

(assert (= (and b!1643653 res!736443) b!1643651))

(assert (= (and b!1643651 res!736439) b!1643652))

(assert (= (and b!1643652 res!736445) b!1643654))

(assert (= (and b!1643654 res!736441) b!1643655))

(declare-fun m!1986163 () Bool)

(assert (=> b!1643653 m!1986163))

(declare-fun m!1986165 () Bool)

(assert (=> b!1643653 m!1986165))

(declare-fun m!1986167 () Bool)

(assert (=> b!1643653 m!1986167))

(declare-fun m!1986169 () Bool)

(assert (=> bm!105749 m!1986169))

(assert (=> b!1643656 m!1986163))

(declare-fun m!1986171 () Bool)

(assert (=> b!1643656 m!1986171))

(assert (=> b!1643656 m!1986171))

(declare-fun m!1986173 () Bool)

(assert (=> b!1643656 m!1986173))

(declare-fun m!1986175 () Bool)

(assert (=> b!1643648 m!1986175))

(assert (=> b!1643652 m!1986163))

(declare-fun m!1986177 () Bool)

(assert (=> b!1643652 m!1986177))

(assert (=> b!1643652 m!1986177))

(declare-fun m!1986179 () Bool)

(assert (=> b!1643652 m!1986179))

(declare-fun m!1986181 () Bool)

(assert (=> b!1643649 m!1986181))

(declare-fun m!1986183 () Bool)

(assert (=> d!494895 m!1986183))

(declare-fun m!1986185 () Bool)

(assert (=> d!494895 m!1986185))

(declare-fun m!1986187 () Bool)

(assert (=> d!494895 m!1986187))

(declare-fun m!1986189 () Bool)

(assert (=> d!494895 m!1986189))

(assert (=> b!1643654 m!1986163))

(assert (=> b!1643654 m!1986171))

(assert (=> b!1643654 m!1986171))

(assert (=> b!1643654 m!1986173))

(assert (=> b!1643654 m!1986173))

(declare-fun m!1986191 () Bool)

(assert (=> b!1643654 m!1986191))

(assert (=> b!1643655 m!1986163))

(declare-fun m!1986193 () Bool)

(assert (=> b!1643655 m!1986193))

(assert (=> b!1643651 m!1986163))

(assert (=> b!1643651 m!1986171))

(assert (=> b!1643651 m!1986171))

(assert (=> b!1643651 m!1986173))

(assert (=> b!1643651 m!1986173))

(declare-fun m!1986195 () Bool)

(assert (=> b!1643651 m!1986195))

(assert (=> b!1643421 d!494895))

(declare-fun d!494897 () Bool)

(declare-fun c!267268 () Bool)

(assert (=> d!494897 (= c!267268 ((_ is Cons!18127) (Cons!18127 (h!23528 tokens!457) Nil!18127)))))

(declare-fun e!1054191 () List!18196)

(assert (=> d!494897 (= (printList!939 thiss!17113 (Cons!18127 (h!23528 tokens!457) Nil!18127)) e!1054191)))

(declare-fun b!1643663 () Bool)

(assert (=> b!1643663 (= e!1054191 (++!4878 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))) (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))))

(declare-fun b!1643664 () Bool)

(assert (=> b!1643664 (= e!1054191 Nil!18126)))

(assert (= (and d!494897 c!267268) b!1643663))

(assert (= (and d!494897 (not c!267268)) b!1643664))

(declare-fun m!1986197 () Bool)

(assert (=> b!1643663 m!1986197))

(assert (=> b!1643663 m!1986197))

(declare-fun m!1986199 () Bool)

(assert (=> b!1643663 m!1986199))

(declare-fun m!1986201 () Bool)

(assert (=> b!1643663 m!1986201))

(assert (=> b!1643663 m!1986199))

(assert (=> b!1643663 m!1986201))

(declare-fun m!1986203 () Bool)

(assert (=> b!1643663 m!1986203))

(assert (=> b!1643421 d!494897))

(declare-fun d!494899 () Bool)

(declare-fun e!1054194 () Bool)

(assert (=> d!494899 e!1054194))

(declare-fun res!736450 () Bool)

(assert (=> d!494899 (=> (not res!736450) (not e!1054194))))

(declare-fun lt!605809 () BalanceConc!12030)

(assert (=> d!494899 (= res!736450 (= (list!7181 lt!605809) (Cons!18127 (h!23528 tokens!457) Nil!18127)))))

(declare-fun singleton!714 (Token!5960) BalanceConc!12030)

(assert (=> d!494899 (= lt!605809 (singleton!714 (h!23528 tokens!457)))))

(assert (=> d!494899 (= (singletonSeq!1667 (h!23528 tokens!457)) lt!605809)))

(declare-fun b!1643667 () Bool)

(assert (=> b!1643667 (= e!1054194 (isBalanced!1840 (c!267231 lt!605809)))))

(assert (= (and d!494899 res!736450) b!1643667))

(declare-fun m!1986205 () Bool)

(assert (=> d!494899 m!1986205))

(declare-fun m!1986207 () Bool)

(assert (=> d!494899 m!1986207))

(declare-fun m!1986209 () Bool)

(assert (=> b!1643667 m!1986209))

(assert (=> b!1643421 d!494899))

(declare-fun d!494901 () Bool)

(declare-fun lt!605810 () BalanceConc!12028)

(assert (=> d!494901 (= (list!7182 lt!605810) (printList!939 thiss!17113 (list!7181 (seqFromList!2134 tokens!457))))))

(assert (=> d!494901 (= lt!605810 (printTailRec!877 thiss!17113 (seqFromList!2134 tokens!457) 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!494901 (= (print!1357 thiss!17113 (seqFromList!2134 tokens!457)) lt!605810)))

(declare-fun bs!395885 () Bool)

(assert (= bs!395885 d!494901))

(declare-fun m!1986211 () Bool)

(assert (=> bs!395885 m!1986211))

(assert (=> bs!395885 m!1985725))

(declare-fun m!1986213 () Bool)

(assert (=> bs!395885 m!1986213))

(assert (=> bs!395885 m!1986213))

(declare-fun m!1986215 () Bool)

(assert (=> bs!395885 m!1986215))

(assert (=> bs!395885 m!1985725))

(declare-fun m!1986217 () Bool)

(assert (=> bs!395885 m!1986217))

(assert (=> b!1643420 d!494901))

(declare-fun d!494903 () Bool)

(assert (=> d!494903 (= (list!7182 lt!605515) (list!7186 (c!267229 lt!605515)))))

(declare-fun bs!395886 () Bool)

(assert (= bs!395886 d!494903))

(declare-fun m!1986219 () Bool)

(assert (=> bs!395886 m!1986219))

(assert (=> b!1643420 d!494903))

(declare-fun d!494905 () Bool)

(assert (=> d!494905 (= (list!7182 lt!605509) (list!7186 (c!267229 lt!605509)))))

(declare-fun bs!395887 () Bool)

(assert (= bs!395887 d!494905))

(declare-fun m!1986221 () Bool)

(assert (=> bs!395887 m!1986221))

(assert (=> b!1643420 d!494905))

(declare-fun d!494907 () Bool)

(assert (=> d!494907 (= (seqFromList!2134 tokens!457) (fromListB!943 tokens!457))))

(declare-fun bs!395888 () Bool)

(assert (= bs!395888 d!494907))

(declare-fun m!1986223 () Bool)

(assert (=> bs!395888 m!1986223))

(assert (=> b!1643420 d!494907))

(declare-fun d!494909 () Bool)

(assert (=> d!494909 (= (seqFromList!2134 (t!150204 tokens!457)) (fromListB!943 (t!150204 tokens!457)))))

(declare-fun bs!395889 () Bool)

(assert (= bs!395889 d!494909))

(declare-fun m!1986225 () Bool)

(assert (=> bs!395889 m!1986225))

(assert (=> b!1643420 d!494909))

(declare-fun b!1643741 () Bool)

(declare-fun e!1054249 () Bool)

(declare-fun lt!605845 () tuple2!17784)

(assert (=> b!1643741 (= e!1054249 (= (_2!10294 lt!605845) lt!605515))))

(declare-fun d!494911 () Bool)

(declare-fun e!1054251 () Bool)

(assert (=> d!494911 e!1054251))

(declare-fun res!736471 () Bool)

(assert (=> d!494911 (=> (not res!736471) (not e!1054251))))

(assert (=> d!494911 (= res!736471 e!1054249)))

(declare-fun c!267272 () Bool)

(assert (=> d!494911 (= c!267272 (> (size!14442 (_1!10294 lt!605845)) 0))))

(declare-fun lexTailRecV2!582 (LexerInterface!2826 List!18198 BalanceConc!12028 BalanceConc!12028 BalanceConc!12028 BalanceConc!12030) tuple2!17784)

(assert (=> d!494911 (= lt!605845 (lexTailRecV2!582 thiss!17113 rules!1846 lt!605515 (BalanceConc!12029 Empty!6042) lt!605515 (BalanceConc!12031 Empty!6043)))))

(assert (=> d!494911 (= (lex!1310 thiss!17113 rules!1846 lt!605515) lt!605845)))

(declare-fun b!1643742 () Bool)

(declare-fun e!1054250 () Bool)

(assert (=> b!1643742 (= e!1054249 e!1054250)))

(declare-fun res!736470 () Bool)

(assert (=> b!1643742 (= res!736470 (< (size!14441 (_2!10294 lt!605845)) (size!14441 lt!605515)))))

(assert (=> b!1643742 (=> (not res!736470) (not e!1054250))))

(declare-fun b!1643743 () Bool)

(declare-datatypes ((tuple2!17790 0))(
  ( (tuple2!17791 (_1!10297 List!18197) (_2!10297 List!18196)) )
))
(declare-fun lexList!859 (LexerInterface!2826 List!18198 List!18196) tuple2!17790)

(assert (=> b!1643743 (= e!1054251 (= (list!7182 (_2!10294 lt!605845)) (_2!10297 (lexList!859 thiss!17113 rules!1846 (list!7182 lt!605515)))))))

(declare-fun b!1643744 () Bool)

(declare-fun res!736472 () Bool)

(assert (=> b!1643744 (=> (not res!736472) (not e!1054251))))

(assert (=> b!1643744 (= res!736472 (= (list!7181 (_1!10294 lt!605845)) (_1!10297 (lexList!859 thiss!17113 rules!1846 (list!7182 lt!605515)))))))

(declare-fun b!1643745 () Bool)

(declare-fun isEmpty!11159 (BalanceConc!12030) Bool)

(assert (=> b!1643745 (= e!1054250 (not (isEmpty!11159 (_1!10294 lt!605845))))))

(assert (= (and d!494911 c!267272) b!1643742))

(assert (= (and d!494911 (not c!267272)) b!1643741))

(assert (= (and b!1643742 res!736470) b!1643745))

(assert (= (and d!494911 res!736471) b!1643744))

(assert (= (and b!1643744 res!736472) b!1643743))

(declare-fun m!1986331 () Bool)

(assert (=> b!1643742 m!1986331))

(declare-fun m!1986333 () Bool)

(assert (=> b!1643742 m!1986333))

(declare-fun m!1986335 () Bool)

(assert (=> d!494911 m!1986335))

(declare-fun m!1986337 () Bool)

(assert (=> d!494911 m!1986337))

(declare-fun m!1986339 () Bool)

(assert (=> b!1643743 m!1986339))

(assert (=> b!1643743 m!1985713))

(assert (=> b!1643743 m!1985713))

(declare-fun m!1986341 () Bool)

(assert (=> b!1643743 m!1986341))

(declare-fun m!1986343 () Bool)

(assert (=> b!1643745 m!1986343))

(declare-fun m!1986345 () Bool)

(assert (=> b!1643744 m!1986345))

(assert (=> b!1643744 m!1985713))

(assert (=> b!1643744 m!1985713))

(assert (=> b!1643744 m!1986341))

(assert (=> b!1643420 d!494911))

(declare-fun d!494917 () Bool)

(declare-fun lt!605846 () BalanceConc!12028)

(assert (=> d!494917 (= (list!7182 lt!605846) (printList!939 thiss!17113 (list!7181 lt!605517)))))

(assert (=> d!494917 (= lt!605846 (printTailRec!877 thiss!17113 lt!605517 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!494917 (= (print!1357 thiss!17113 lt!605517) lt!605846)))

(declare-fun bs!395891 () Bool)

(assert (= bs!395891 d!494917))

(declare-fun m!1986347 () Bool)

(assert (=> bs!395891 m!1986347))

(assert (=> bs!395891 m!1985703))

(assert (=> bs!395891 m!1985703))

(declare-fun m!1986349 () Bool)

(assert (=> bs!395891 m!1986349))

(declare-fun m!1986351 () Bool)

(assert (=> bs!395891 m!1986351))

(assert (=> b!1643420 d!494917))

(declare-fun d!494919 () Bool)

(declare-fun lt!605849 () BalanceConc!12028)

(assert (=> d!494919 (= (list!7182 lt!605849) (originalCharacters!4011 (h!23528 tokens!457)))))

(declare-fun dynLambda!8101 (Int TokenValue!3287) BalanceConc!12028)

(assert (=> d!494919 (= lt!605849 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))

(assert (=> d!494919 (= (charsOf!1846 (h!23528 tokens!457)) lt!605849)))

(declare-fun b_lambda!51653 () Bool)

(assert (=> (not b_lambda!51653) (not d!494919)))

(declare-fun t!150222 () Bool)

(declare-fun tb!94055 () Bool)

(assert (=> (and b!1643419 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) t!150222) tb!94055))

(declare-fun b!1643750 () Bool)

(declare-fun e!1054254 () Bool)

(declare-fun tp!476392 () Bool)

(declare-fun inv!23488 (Conc!6042) Bool)

(assert (=> b!1643750 (= e!1054254 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))) tp!476392))))

(declare-fun result!113600 () Bool)

(declare-fun inv!23489 (BalanceConc!12028) Bool)

(assert (=> tb!94055 (= result!113600 (and (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))) e!1054254))))

(assert (= tb!94055 b!1643750))

(declare-fun m!1986353 () Bool)

(assert (=> b!1643750 m!1986353))

(declare-fun m!1986355 () Bool)

(assert (=> tb!94055 m!1986355))

(assert (=> d!494919 t!150222))

(declare-fun b_and!116597 () Bool)

(assert (= b_and!116575 (and (=> t!150222 result!113600) b_and!116597)))

(declare-fun t!150224 () Bool)

(declare-fun tb!94057 () Bool)

(assert (=> (and b!1643415 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) t!150224) tb!94057))

(declare-fun result!113604 () Bool)

(assert (= result!113604 result!113600))

(assert (=> d!494919 t!150224))

(declare-fun b_and!116599 () Bool)

(assert (= b_and!116579 (and (=> t!150224 result!113604) b_and!116599)))

(declare-fun m!1986357 () Bool)

(assert (=> d!494919 m!1986357))

(declare-fun m!1986359 () Bool)

(assert (=> d!494919 m!1986359))

(assert (=> b!1643420 d!494919))

(declare-fun d!494921 () Bool)

(assert (=> d!494921 (= (list!7182 (charsOf!1846 (h!23528 tokens!457))) (list!7186 (c!267229 (charsOf!1846 (h!23528 tokens!457)))))))

(declare-fun bs!395892 () Bool)

(assert (= bs!395892 d!494921))

(declare-fun m!1986361 () Bool)

(assert (=> bs!395892 m!1986361))

(assert (=> b!1643420 d!494921))

(declare-fun b!1643759 () Bool)

(declare-fun e!1054260 () List!18196)

(assert (=> b!1643759 (= e!1054260 lt!605516)))

(declare-fun b!1643761 () Bool)

(declare-fun res!736477 () Bool)

(declare-fun e!1054259 () Bool)

(assert (=> b!1643761 (=> (not res!736477) (not e!1054259))))

(declare-fun lt!605852 () List!18196)

(assert (=> b!1643761 (= res!736477 (= (size!14440 lt!605852) (+ (size!14440 lt!605502) (size!14440 lt!605516))))))

(declare-fun b!1643760 () Bool)

(assert (=> b!1643760 (= e!1054260 (Cons!18126 (h!23527 lt!605502) (++!4878 (t!150203 lt!605502) lt!605516)))))

(declare-fun b!1643762 () Bool)

(assert (=> b!1643762 (= e!1054259 (or (not (= lt!605516 Nil!18126)) (= lt!605852 lt!605502)))))

(declare-fun d!494923 () Bool)

(assert (=> d!494923 e!1054259))

(declare-fun res!736478 () Bool)

(assert (=> d!494923 (=> (not res!736478) (not e!1054259))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2509 (List!18196) (InoxSet C!9224))

(assert (=> d!494923 (= res!736478 (= (content!2509 lt!605852) ((_ map or) (content!2509 lt!605502) (content!2509 lt!605516))))))

(assert (=> d!494923 (= lt!605852 e!1054260)))

(declare-fun c!267275 () Bool)

(assert (=> d!494923 (= c!267275 ((_ is Nil!18126) lt!605502))))

(assert (=> d!494923 (= (++!4878 lt!605502 lt!605516) lt!605852)))

(assert (= (and d!494923 c!267275) b!1643759))

(assert (= (and d!494923 (not c!267275)) b!1643760))

(assert (= (and d!494923 res!736478) b!1643761))

(assert (= (and b!1643761 res!736477) b!1643762))

(declare-fun m!1986363 () Bool)

(assert (=> b!1643761 m!1986363))

(assert (=> b!1643761 m!1986069))

(declare-fun m!1986365 () Bool)

(assert (=> b!1643761 m!1986365))

(declare-fun m!1986367 () Bool)

(assert (=> b!1643760 m!1986367))

(declare-fun m!1986369 () Bool)

(assert (=> d!494923 m!1986369))

(declare-fun m!1986371 () Bool)

(assert (=> d!494923 m!1986371))

(declare-fun m!1986373 () Bool)

(assert (=> d!494923 m!1986373))

(assert (=> b!1643420 d!494923))

(declare-fun d!494925 () Bool)

(declare-fun res!736483 () Bool)

(declare-fun e!1054263 () Bool)

(assert (=> d!494925 (=> (not res!736483) (not e!1054263))))

(assert (=> d!494925 (= res!736483 (not (isEmpty!11155 (originalCharacters!4011 (h!23528 tokens!457)))))))

(assert (=> d!494925 (= (inv!23485 (h!23528 tokens!457)) e!1054263)))

(declare-fun b!1643767 () Bool)

(declare-fun res!736484 () Bool)

(assert (=> b!1643767 (=> (not res!736484) (not e!1054263))))

(assert (=> b!1643767 (= res!736484 (= (originalCharacters!4011 (h!23528 tokens!457)) (list!7182 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))))

(declare-fun b!1643768 () Bool)

(assert (=> b!1643768 (= e!1054263 (= (size!14436 (h!23528 tokens!457)) (size!14440 (originalCharacters!4011 (h!23528 tokens!457)))))))

(assert (= (and d!494925 res!736483) b!1643767))

(assert (= (and b!1643767 res!736484) b!1643768))

(declare-fun b_lambda!51655 () Bool)

(assert (=> (not b_lambda!51655) (not b!1643767)))

(assert (=> b!1643767 t!150222))

(declare-fun b_and!116601 () Bool)

(assert (= b_and!116597 (and (=> t!150222 result!113600) b_and!116601)))

(assert (=> b!1643767 t!150224))

(declare-fun b_and!116603 () Bool)

(assert (= b_and!116599 (and (=> t!150224 result!113604) b_and!116603)))

(declare-fun m!1986375 () Bool)

(assert (=> d!494925 m!1986375))

(assert (=> b!1643767 m!1986359))

(assert (=> b!1643767 m!1986359))

(declare-fun m!1986377 () Bool)

(assert (=> b!1643767 m!1986377))

(declare-fun m!1986379 () Bool)

(assert (=> b!1643768 m!1986379))

(assert (=> b!1643418 d!494925))

(declare-fun d!494927 () Bool)

(assert (=> d!494927 (= (isEmpty!11151 rules!1846) ((_ is Nil!18128) rules!1846))))

(assert (=> b!1643428 d!494927))

(declare-fun d!494929 () Bool)

(assert (=> d!494929 (= (inv!23481 (tag!3477 (rule!5047 (h!23528 tokens!457)))) (= (mod (str.len (value!100786 (tag!3477 (rule!5047 (h!23528 tokens!457))))) 2) 0))))

(assert (=> b!1643417 d!494929))

(declare-fun d!494931 () Bool)

(declare-fun res!736485 () Bool)

(declare-fun e!1054264 () Bool)

(assert (=> d!494931 (=> (not res!736485) (not e!1054264))))

(assert (=> d!494931 (= res!736485 (semiInverseModEq!1230 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457))))))))

(assert (=> d!494931 (= (inv!23484 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) e!1054264)))

(declare-fun b!1643769 () Bool)

(assert (=> b!1643769 (= e!1054264 (equivClasses!1171 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457))))))))

(assert (= (and d!494931 res!736485) b!1643769))

(declare-fun m!1986381 () Bool)

(assert (=> d!494931 m!1986381))

(declare-fun m!1986383 () Bool)

(assert (=> b!1643769 m!1986383))

(assert (=> b!1643417 d!494931))

(declare-fun b!1643780 () Bool)

(declare-fun e!1054273 () Bool)

(declare-fun e!1054272 () Bool)

(assert (=> b!1643780 (= e!1054273 e!1054272)))

(declare-fun c!267281 () Bool)

(assert (=> b!1643780 (= c!267281 ((_ is IntegerValue!9862) (value!100787 (h!23528 tokens!457))))))

(declare-fun b!1643781 () Bool)

(declare-fun inv!17 (TokenValue!3287) Bool)

(assert (=> b!1643781 (= e!1054272 (inv!17 (value!100787 (h!23528 tokens!457))))))

(declare-fun b!1643782 () Bool)

(declare-fun res!736488 () Bool)

(declare-fun e!1054271 () Bool)

(assert (=> b!1643782 (=> res!736488 e!1054271)))

(assert (=> b!1643782 (= res!736488 (not ((_ is IntegerValue!9863) (value!100787 (h!23528 tokens!457)))))))

(assert (=> b!1643782 (= e!1054272 e!1054271)))

(declare-fun d!494933 () Bool)

(declare-fun c!267280 () Bool)

(assert (=> d!494933 (= c!267280 ((_ is IntegerValue!9861) (value!100787 (h!23528 tokens!457))))))

(assert (=> d!494933 (= (inv!21 (value!100787 (h!23528 tokens!457))) e!1054273)))

(declare-fun b!1643783 () Bool)

(declare-fun inv!16 (TokenValue!3287) Bool)

(assert (=> b!1643783 (= e!1054273 (inv!16 (value!100787 (h!23528 tokens!457))))))

(declare-fun b!1643784 () Bool)

(declare-fun inv!15 (TokenValue!3287) Bool)

(assert (=> b!1643784 (= e!1054271 (inv!15 (value!100787 (h!23528 tokens!457))))))

(assert (= (and d!494933 c!267280) b!1643783))

(assert (= (and d!494933 (not c!267280)) b!1643780))

(assert (= (and b!1643780 c!267281) b!1643781))

(assert (= (and b!1643780 (not c!267281)) b!1643782))

(assert (= (and b!1643782 (not res!736488)) b!1643784))

(declare-fun m!1986385 () Bool)

(assert (=> b!1643781 m!1986385))

(declare-fun m!1986387 () Bool)

(assert (=> b!1643783 m!1986387))

(declare-fun m!1986389 () Bool)

(assert (=> b!1643784 m!1986389))

(assert (=> b!1643427 d!494933))

(declare-fun d!494935 () Bool)

(declare-fun prefixMatchZipperSequence!601 (Regex!4525 BalanceConc!12028) Bool)

(declare-fun rulesRegex!583 (LexerInterface!2826 List!18198) Regex!4525)

(assert (=> d!494935 (= (separableTokensPredicate!766 thiss!17113 (h!23528 tokens!457) (h!23528 (t!150204 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!601 (rulesRegex!583 thiss!17113 rules!1846) (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))))))

(declare-fun bs!395893 () Bool)

(assert (= bs!395893 d!494935))

(assert (=> bs!395893 m!1986023))

(declare-fun m!1986391 () Bool)

(assert (=> bs!395893 m!1986391))

(declare-fun m!1986393 () Bool)

(assert (=> bs!395893 m!1986393))

(assert (=> bs!395893 m!1985717))

(assert (=> bs!395893 m!1986393))

(declare-fun m!1986395 () Bool)

(assert (=> bs!395893 m!1986395))

(declare-fun m!1986397 () Bool)

(assert (=> bs!395893 m!1986397))

(assert (=> bs!395893 m!1986395))

(declare-fun m!1986399 () Bool)

(assert (=> bs!395893 m!1986399))

(assert (=> bs!395893 m!1986023))

(assert (=> bs!395893 m!1986391))

(assert (=> bs!395893 m!1985717))

(assert (=> bs!395893 m!1986397))

(assert (=> b!1643416 d!494935))

(declare-fun b!1643795 () Bool)

(declare-fun b_free!44615 () Bool)

(declare-fun b_next!45319 () Bool)

(assert (=> b!1643795 (= b_free!44615 (not b_next!45319))))

(declare-fun tp!476401 () Bool)

(declare-fun b_and!116605 () Bool)

(assert (=> b!1643795 (= tp!476401 b_and!116605)))

(declare-fun b_free!44617 () Bool)

(declare-fun b_next!45321 () Bool)

(assert (=> b!1643795 (= b_free!44617 (not b_next!45321))))

(declare-fun t!150226 () Bool)

(declare-fun tb!94059 () Bool)

(assert (=> (and b!1643795 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) t!150226) tb!94059))

(declare-fun result!113608 () Bool)

(assert (= result!113608 result!113600))

(assert (=> d!494919 t!150226))

(assert (=> b!1643767 t!150226))

(declare-fun b_and!116607 () Bool)

(declare-fun tp!476404 () Bool)

(assert (=> b!1643795 (= tp!476404 (and (=> t!150226 result!113608) b_and!116607))))

(declare-fun e!1054284 () Bool)

(assert (=> b!1643795 (= e!1054284 (and tp!476401 tp!476404))))

(declare-fun b!1643794 () Bool)

(declare-fun tp!476402 () Bool)

(declare-fun e!1054283 () Bool)

(assert (=> b!1643794 (= e!1054283 (and tp!476402 (inv!23481 (tag!3477 (h!23529 (t!150205 rules!1846)))) (inv!23484 (transformation!3197 (h!23529 (t!150205 rules!1846)))) e!1054284))))

(declare-fun b!1643793 () Bool)

(declare-fun e!1054282 () Bool)

(declare-fun tp!476403 () Bool)

(assert (=> b!1643793 (= e!1054282 (and e!1054283 tp!476403))))

(assert (=> b!1643426 (= tp!476328 e!1054282)))

(assert (= b!1643794 b!1643795))

(assert (= b!1643793 b!1643794))

(assert (= (and b!1643426 ((_ is Cons!18128) (t!150205 rules!1846))) b!1643793))

(declare-fun m!1986401 () Bool)

(assert (=> b!1643794 m!1986401))

(declare-fun m!1986403 () Bool)

(assert (=> b!1643794 m!1986403))

(declare-fun b!1643809 () Bool)

(declare-fun b_free!44619 () Bool)

(declare-fun b_next!45323 () Bool)

(assert (=> b!1643809 (= b_free!44619 (not b_next!45323))))

(declare-fun tp!476419 () Bool)

(declare-fun b_and!116609 () Bool)

(assert (=> b!1643809 (= tp!476419 b_and!116609)))

(declare-fun b_free!44621 () Bool)

(declare-fun b_next!45325 () Bool)

(assert (=> b!1643809 (= b_free!44621 (not b_next!45325))))

(declare-fun t!150228 () Bool)

(declare-fun tb!94061 () Bool)

(assert (=> (and b!1643809 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) t!150228) tb!94061))

(declare-fun result!113612 () Bool)

(assert (= result!113612 result!113600))

(assert (=> d!494919 t!150228))

(assert (=> b!1643767 t!150228))

(declare-fun b_and!116611 () Bool)

(declare-fun tp!476415 () Bool)

(assert (=> b!1643809 (= tp!476415 (and (=> t!150228 result!113612) b_and!116611))))

(declare-fun tp!476417 () Bool)

(declare-fun e!1054302 () Bool)

(declare-fun e!1054303 () Bool)

(declare-fun b!1643806 () Bool)

(assert (=> b!1643806 (= e!1054303 (and (inv!23485 (h!23528 (t!150204 tokens!457))) e!1054302 tp!476417))))

(declare-fun tp!476418 () Bool)

(declare-fun b!1643807 () Bool)

(declare-fun e!1054299 () Bool)

(assert (=> b!1643807 (= e!1054302 (and (inv!21 (value!100787 (h!23528 (t!150204 tokens!457)))) e!1054299 tp!476418))))

(declare-fun e!1054301 () Bool)

(assert (=> b!1643809 (= e!1054301 (and tp!476419 tp!476415))))

(assert (=> b!1643418 (= tp!476332 e!1054303)))

(declare-fun b!1643808 () Bool)

(declare-fun tp!476416 () Bool)

(assert (=> b!1643808 (= e!1054299 (and tp!476416 (inv!23481 (tag!3477 (rule!5047 (h!23528 (t!150204 tokens!457))))) (inv!23484 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) e!1054301))))

(assert (= b!1643808 b!1643809))

(assert (= b!1643807 b!1643808))

(assert (= b!1643806 b!1643807))

(assert (= (and b!1643418 ((_ is Cons!18127) (t!150204 tokens!457))) b!1643806))

(declare-fun m!1986405 () Bool)

(assert (=> b!1643806 m!1986405))

(declare-fun m!1986407 () Bool)

(assert (=> b!1643807 m!1986407))

(declare-fun m!1986409 () Bool)

(assert (=> b!1643808 m!1986409))

(declare-fun m!1986411 () Bool)

(assert (=> b!1643808 m!1986411))

(declare-fun b!1643820 () Bool)

(declare-fun e!1054306 () Bool)

(declare-fun tp_is_empty!7341 () Bool)

(assert (=> b!1643820 (= e!1054306 tp_is_empty!7341)))

(assert (=> b!1643417 (= tp!476331 e!1054306)))

(declare-fun b!1643821 () Bool)

(declare-fun tp!476431 () Bool)

(declare-fun tp!476434 () Bool)

(assert (=> b!1643821 (= e!1054306 (and tp!476431 tp!476434))))

(declare-fun b!1643823 () Bool)

(declare-fun tp!476433 () Bool)

(declare-fun tp!476432 () Bool)

(assert (=> b!1643823 (= e!1054306 (and tp!476433 tp!476432))))

(declare-fun b!1643822 () Bool)

(declare-fun tp!476430 () Bool)

(assert (=> b!1643822 (= e!1054306 tp!476430)))

(assert (= (and b!1643417 ((_ is ElementMatch!4525) (regex!3197 (rule!5047 (h!23528 tokens!457))))) b!1643820))

(assert (= (and b!1643417 ((_ is Concat!7813) (regex!3197 (rule!5047 (h!23528 tokens!457))))) b!1643821))

(assert (= (and b!1643417 ((_ is Star!4525) (regex!3197 (rule!5047 (h!23528 tokens!457))))) b!1643822))

(assert (= (and b!1643417 ((_ is Union!4525) (regex!3197 (rule!5047 (h!23528 tokens!457))))) b!1643823))

(declare-fun b!1643824 () Bool)

(declare-fun e!1054307 () Bool)

(assert (=> b!1643824 (= e!1054307 tp_is_empty!7341)))

(assert (=> b!1643422 (= tp!476335 e!1054307)))

(declare-fun b!1643825 () Bool)

(declare-fun tp!476436 () Bool)

(declare-fun tp!476439 () Bool)

(assert (=> b!1643825 (= e!1054307 (and tp!476436 tp!476439))))

(declare-fun b!1643827 () Bool)

(declare-fun tp!476438 () Bool)

(declare-fun tp!476437 () Bool)

(assert (=> b!1643827 (= e!1054307 (and tp!476438 tp!476437))))

(declare-fun b!1643826 () Bool)

(declare-fun tp!476435 () Bool)

(assert (=> b!1643826 (= e!1054307 tp!476435)))

(assert (= (and b!1643422 ((_ is ElementMatch!4525) (regex!3197 (h!23529 rules!1846)))) b!1643824))

(assert (= (and b!1643422 ((_ is Concat!7813) (regex!3197 (h!23529 rules!1846)))) b!1643825))

(assert (= (and b!1643422 ((_ is Star!4525) (regex!3197 (h!23529 rules!1846)))) b!1643826))

(assert (= (and b!1643422 ((_ is Union!4525) (regex!3197 (h!23529 rules!1846)))) b!1643827))

(declare-fun b!1643832 () Bool)

(declare-fun e!1054310 () Bool)

(declare-fun tp!476442 () Bool)

(assert (=> b!1643832 (= e!1054310 (and tp_is_empty!7341 tp!476442))))

(assert (=> b!1643427 (= tp!476334 e!1054310)))

(assert (= (and b!1643427 ((_ is Cons!18126) (originalCharacters!4011 (h!23528 tokens!457)))) b!1643832))

(declare-fun b_lambda!51657 () Bool)

(assert (= b_lambda!51655 (or (and b!1643419 b_free!44601 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) (and b!1643415 b_free!44605) (and b!1643795 b_free!44617 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) (and b!1643809 b_free!44621 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) b_lambda!51657)))

(declare-fun b_lambda!51659 () Bool)

(assert (= b_lambda!51653 (or (and b!1643419 b_free!44601 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) (and b!1643415 b_free!44605) (and b!1643795 b_free!44617 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) (and b!1643809 b_free!44621 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) b_lambda!51659)))

(check-sat (not b!1643554) (not b!1643807) (not b!1643649) (not b_next!45309) (not b!1643653) b_and!116603 tp_is_empty!7341 b_and!116605 (not b!1643744) (not b!1643827) (not d!494889) (not d!494899) (not d!494911) (not d!494935) (not b!1643832) (not b!1643743) (not b!1643591) (not d!494895) (not b!1643610) (not b!1643781) (not b!1643761) (not b!1643793) (not tb!94055) (not b_lambda!51657) (not d!494919) (not b!1643623) (not b!1643443) (not b!1643769) b_and!116611 (not d!494901) (not b!1643667) (not b_next!45305) (not b!1643604) (not b_next!45319) (not b!1643745) (not d!494917) (not d!494887) (not d!494857) (not b!1643768) (not d!494925) (not d!494871) (not d!494905) (not b!1643784) b_and!116573 (not b!1643821) (not d!494931) (not b!1643652) (not d!494923) (not b!1643563) (not d!494875) (not b_next!45303) (not b!1643822) (not b!1643825) (not d!494891) (not b!1643654) (not b!1643767) (not d!494893) (not b!1643823) b_and!116609 (not d!494921) (not d!494879) (not b!1643613) (not b!1643806) (not b_lambda!51659) (not d!494883) (not d!494881) (not b!1643794) (not b!1643553) (not d!494903) (not b!1643742) (not bm!105749) (not b_next!45307) (not b!1643592) (not d!494859) (not b!1643616) (not b!1643651) (not b_next!45321) (not b_next!45325) (not b_next!45323) (not b!1643656) (not d!494799) (not b!1643826) (not b!1643625) (not b!1643603) b_and!116607 b_and!116601 b_and!116577 (not b!1643783) (not b!1643760) (not b!1643808) (not b!1643750) (not d!494801) (not b!1643648) (not d!494877) (not d!494909) (not b!1643609) (not d!494907) (not b!1643655) (not b!1643602) (not b!1643663))
(check-sat b_and!116605 b_and!116611 b_and!116573 (not b_next!45303) b_and!116609 (not b_next!45307) (not b_next!45323) (not b_next!45309) b_and!116603 (not b_next!45305) (not b_next!45319) (not b_next!45321) (not b_next!45325) b_and!116607 b_and!116601 b_and!116577)
(get-model)

(declare-fun b!1643919 () Bool)

(declare-fun e!1054353 () List!18196)

(declare-fun e!1054354 () List!18196)

(assert (=> b!1643919 (= e!1054353 e!1054354)))

(declare-fun c!267307 () Bool)

(assert (=> b!1643919 (= c!267307 ((_ is Leaf!8861) (c!267229 (charsOf!1846 (h!23528 tokens!457)))))))

(declare-fun b!1643918 () Bool)

(assert (=> b!1643918 (= e!1054353 Nil!18126)))

(declare-fun d!494965 () Bool)

(declare-fun c!267306 () Bool)

(assert (=> d!494965 (= c!267306 ((_ is Empty!6042) (c!267229 (charsOf!1846 (h!23528 tokens!457)))))))

(assert (=> d!494965 (= (list!7186 (c!267229 (charsOf!1846 (h!23528 tokens!457)))) e!1054353)))

(declare-fun b!1643920 () Bool)

(declare-fun list!7188 (IArray!12089) List!18196)

(assert (=> b!1643920 (= e!1054354 (list!7188 (xs!8878 (c!267229 (charsOf!1846 (h!23528 tokens!457))))))))

(declare-fun b!1643921 () Bool)

(assert (=> b!1643921 (= e!1054354 (++!4878 (list!7186 (left!14534 (c!267229 (charsOf!1846 (h!23528 tokens!457))))) (list!7186 (right!14864 (c!267229 (charsOf!1846 (h!23528 tokens!457)))))))))

(assert (= (and d!494965 c!267306) b!1643918))

(assert (= (and d!494965 (not c!267306)) b!1643919))

(assert (= (and b!1643919 c!267307) b!1643920))

(assert (= (and b!1643919 (not c!267307)) b!1643921))

(declare-fun m!1986545 () Bool)

(assert (=> b!1643920 m!1986545))

(declare-fun m!1986549 () Bool)

(assert (=> b!1643921 m!1986549))

(declare-fun m!1986551 () Bool)

(assert (=> b!1643921 m!1986551))

(assert (=> b!1643921 m!1986549))

(assert (=> b!1643921 m!1986551))

(declare-fun m!1986555 () Bool)

(assert (=> b!1643921 m!1986555))

(assert (=> d!494921 d!494965))

(declare-fun b!1643922 () Bool)

(declare-fun e!1054356 () List!18196)

(assert (=> b!1643922 (= e!1054356 (_2!10295 (get!5272 lt!605786)))))

(declare-fun b!1643924 () Bool)

(declare-fun res!736539 () Bool)

(declare-fun e!1054355 () Bool)

(assert (=> b!1643924 (=> (not res!736539) (not e!1054355))))

(declare-fun lt!605911 () List!18196)

(assert (=> b!1643924 (= res!736539 (= (size!14440 lt!605911) (+ (size!14440 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) (size!14440 (_2!10295 (get!5272 lt!605786))))))))

(declare-fun b!1643923 () Bool)

(assert (=> b!1643923 (= e!1054356 (Cons!18126 (h!23527 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) (++!4878 (t!150203 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) (_2!10295 (get!5272 lt!605786)))))))

(declare-fun b!1643925 () Bool)

(assert (=> b!1643925 (= e!1054355 (or (not (= (_2!10295 (get!5272 lt!605786)) Nil!18126)) (= lt!605911 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))))))))

(declare-fun d!494971 () Bool)

(assert (=> d!494971 e!1054355))

(declare-fun res!736540 () Bool)

(assert (=> d!494971 (=> (not res!736540) (not e!1054355))))

(assert (=> d!494971 (= res!736540 (= (content!2509 lt!605911) ((_ map or) (content!2509 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) (content!2509 (_2!10295 (get!5272 lt!605786))))))))

(assert (=> d!494971 (= lt!605911 e!1054356)))

(declare-fun c!267308 () Bool)

(assert (=> d!494971 (= c!267308 ((_ is Nil!18126) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))))))

(assert (=> d!494971 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))) (_2!10295 (get!5272 lt!605786))) lt!605911)))

(assert (= (and d!494971 c!267308) b!1643922))

(assert (= (and d!494971 (not c!267308)) b!1643923))

(assert (= (and d!494971 res!736540) b!1643924))

(assert (= (and b!1643924 res!736539) b!1643925))

(declare-fun m!1986559 () Bool)

(assert (=> b!1643924 m!1986559))

(assert (=> b!1643924 m!1986173))

(declare-fun m!1986561 () Bool)

(assert (=> b!1643924 m!1986561))

(assert (=> b!1643924 m!1986165))

(declare-fun m!1986563 () Bool)

(assert (=> b!1643923 m!1986563))

(declare-fun m!1986565 () Bool)

(assert (=> d!494971 m!1986565))

(assert (=> d!494971 m!1986173))

(declare-fun m!1986567 () Bool)

(assert (=> d!494971 m!1986567))

(declare-fun m!1986569 () Bool)

(assert (=> d!494971 m!1986569))

(assert (=> b!1643651 d!494971))

(declare-fun d!494975 () Bool)

(assert (=> d!494975 (= (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))) (list!7186 (c!267229 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun bs!395900 () Bool)

(assert (= bs!395900 d!494975))

(declare-fun m!1986571 () Bool)

(assert (=> bs!395900 m!1986571))

(assert (=> b!1643651 d!494975))

(declare-fun d!494977 () Bool)

(declare-fun lt!605912 () BalanceConc!12028)

(assert (=> d!494977 (= (list!7182 lt!605912) (originalCharacters!4011 (_1!10295 (get!5272 lt!605786))))))

(assert (=> d!494977 (= lt!605912 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))) (value!100787 (_1!10295 (get!5272 lt!605786)))))))

(assert (=> d!494977 (= (charsOf!1846 (_1!10295 (get!5272 lt!605786))) lt!605912)))

(declare-fun b_lambda!51663 () Bool)

(assert (=> (not b_lambda!51663) (not d!494977)))

(declare-fun t!150243 () Bool)

(declare-fun tb!94071 () Bool)

(assert (=> (and b!1643419 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150243) tb!94071))

(declare-fun b!1643931 () Bool)

(declare-fun e!1054360 () Bool)

(declare-fun tp!476444 () Bool)

(assert (=> b!1643931 (= e!1054360 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))) (value!100787 (_1!10295 (get!5272 lt!605786)))))) tp!476444))))

(declare-fun result!113626 () Bool)

(assert (=> tb!94071 (= result!113626 (and (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))) (value!100787 (_1!10295 (get!5272 lt!605786))))) e!1054360))))

(assert (= tb!94071 b!1643931))

(declare-fun m!1986581 () Bool)

(assert (=> b!1643931 m!1986581))

(declare-fun m!1986583 () Bool)

(assert (=> tb!94071 m!1986583))

(assert (=> d!494977 t!150243))

(declare-fun b_and!116621 () Bool)

(assert (= b_and!116601 (and (=> t!150243 result!113626) b_and!116621)))

(declare-fun t!150245 () Bool)

(declare-fun tb!94073 () Bool)

(assert (=> (and b!1643415 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150245) tb!94073))

(declare-fun result!113628 () Bool)

(assert (= result!113628 result!113626))

(assert (=> d!494977 t!150245))

(declare-fun b_and!116623 () Bool)

(assert (= b_and!116603 (and (=> t!150245 result!113628) b_and!116623)))

(declare-fun t!150247 () Bool)

(declare-fun tb!94075 () Bool)

(assert (=> (and b!1643795 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150247) tb!94075))

(declare-fun result!113630 () Bool)

(assert (= result!113630 result!113626))

(assert (=> d!494977 t!150247))

(declare-fun b_and!116625 () Bool)

(assert (= b_and!116607 (and (=> t!150247 result!113630) b_and!116625)))

(declare-fun tb!94077 () Bool)

(declare-fun t!150249 () Bool)

(assert (=> (and b!1643809 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150249) tb!94077))

(declare-fun result!113632 () Bool)

(assert (= result!113632 result!113626))

(assert (=> d!494977 t!150249))

(declare-fun b_and!116627 () Bool)

(assert (= b_and!116611 (and (=> t!150249 result!113632) b_and!116627)))

(declare-fun m!1986585 () Bool)

(assert (=> d!494977 m!1986585))

(declare-fun m!1986587 () Bool)

(assert (=> d!494977 m!1986587))

(assert (=> b!1643651 d!494977))

(declare-fun d!494987 () Bool)

(assert (=> d!494987 (= (get!5272 lt!605786) (v!24552 lt!605786))))

(assert (=> b!1643651 d!494987))

(declare-fun b!1643972 () Bool)

(declare-fun e!1054388 () Bool)

(declare-fun e!1054387 () Bool)

(assert (=> b!1643972 (= e!1054388 e!1054387)))

(declare-fun res!736570 () Bool)

(assert (=> b!1643972 (=> (not res!736570) (not e!1054387))))

(declare-fun lt!605922 () Bool)

(assert (=> b!1643972 (= res!736570 (not lt!605922))))

(declare-fun b!1643973 () Bool)

(declare-fun e!1054389 () Bool)

(assert (=> b!1643973 (= e!1054389 (= (head!3589 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))) (c!267230 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1643974 () Bool)

(declare-fun e!1054390 () Bool)

(declare-fun e!1054385 () Bool)

(assert (=> b!1643974 (= e!1054390 e!1054385)))

(declare-fun c!267322 () Bool)

(assert (=> b!1643974 (= c!267322 ((_ is EmptyLang!4525) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))))

(declare-fun bm!105752 () Bool)

(declare-fun call!105757 () Bool)

(assert (=> bm!105752 (= call!105757 (isEmpty!11155 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1643975 () Bool)

(assert (=> b!1643975 (= e!1054385 (not lt!605922))))

(declare-fun d!494989 () Bool)

(assert (=> d!494989 e!1054390))

(declare-fun c!267321 () Bool)

(assert (=> d!494989 (= c!267321 ((_ is EmptyExpr!4525) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))))

(declare-fun e!1054386 () Bool)

(assert (=> d!494989 (= lt!605922 e!1054386)))

(declare-fun c!267320 () Bool)

(assert (=> d!494989 (= c!267320 (isEmpty!11155 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun validRegex!1800 (Regex!4525) Bool)

(assert (=> d!494989 (validRegex!1800 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!494989 (= (matchR!2020 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))) lt!605922)))

(declare-fun b!1643976 () Bool)

(declare-fun res!736565 () Bool)

(declare-fun e!1054391 () Bool)

(assert (=> b!1643976 (=> res!736565 e!1054391)))

(assert (=> b!1643976 (= res!736565 (not (isEmpty!11155 (tail!2418 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))))

(declare-fun b!1643977 () Bool)

(assert (=> b!1643977 (= e!1054391 (not (= (head!3589 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))) (c!267230 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))))))

(declare-fun b!1643978 () Bool)

(declare-fun derivativeStep!1103 (Regex!4525 C!9224) Regex!4525)

(assert (=> b!1643978 (= e!1054386 (matchR!2020 (derivativeStep!1103 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))) (head!3589 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))) (tail!2418 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1643979 () Bool)

(declare-fun nullable!1338 (Regex!4525) Bool)

(assert (=> b!1643979 (= e!1054386 (nullable!1338 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1643980 () Bool)

(declare-fun res!736564 () Bool)

(assert (=> b!1643980 (=> res!736564 e!1054388)))

(assert (=> b!1643980 (= res!736564 (not ((_ is ElementMatch!4525) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))))))

(assert (=> b!1643980 (= e!1054385 e!1054388)))

(declare-fun b!1643981 () Bool)

(assert (=> b!1643981 (= e!1054387 e!1054391)))

(declare-fun res!736568 () Bool)

(assert (=> b!1643981 (=> res!736568 e!1054391)))

(assert (=> b!1643981 (= res!736568 call!105757)))

(declare-fun b!1643982 () Bool)

(declare-fun res!736563 () Bool)

(assert (=> b!1643982 (=> res!736563 e!1054388)))

(assert (=> b!1643982 (= res!736563 e!1054389)))

(declare-fun res!736569 () Bool)

(assert (=> b!1643982 (=> (not res!736569) (not e!1054389))))

(assert (=> b!1643982 (= res!736569 lt!605922)))

(declare-fun b!1643983 () Bool)

(assert (=> b!1643983 (= e!1054390 (= lt!605922 call!105757))))

(declare-fun b!1643984 () Bool)

(declare-fun res!736567 () Bool)

(assert (=> b!1643984 (=> (not res!736567) (not e!1054389))))

(assert (=> b!1643984 (= res!736567 (not call!105757))))

(declare-fun b!1643985 () Bool)

(declare-fun res!736566 () Bool)

(assert (=> b!1643985 (=> (not res!736566) (not e!1054389))))

(assert (=> b!1643985 (= res!736566 (isEmpty!11155 (tail!2418 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))))

(assert (= (and d!494989 c!267320) b!1643979))

(assert (= (and d!494989 (not c!267320)) b!1643978))

(assert (= (and d!494989 c!267321) b!1643983))

(assert (= (and d!494989 (not c!267321)) b!1643974))

(assert (= (and b!1643974 c!267322) b!1643975))

(assert (= (and b!1643974 (not c!267322)) b!1643980))

(assert (= (and b!1643980 (not res!736564)) b!1643982))

(assert (= (and b!1643982 res!736569) b!1643984))

(assert (= (and b!1643984 res!736567) b!1643985))

(assert (= (and b!1643985 res!736566) b!1643973))

(assert (= (and b!1643982 (not res!736563)) b!1643972))

(assert (= (and b!1643972 res!736570) b!1643981))

(assert (= (and b!1643981 (not res!736568)) b!1643976))

(assert (= (and b!1643976 (not res!736565)) b!1643977))

(assert (= (or b!1643983 b!1643981 b!1643984) bm!105752))

(assert (=> b!1643973 m!1986001))

(declare-fun m!1986619 () Bool)

(assert (=> b!1643973 m!1986619))

(assert (=> d!494989 m!1986001))

(declare-fun m!1986621 () Bool)

(assert (=> d!494989 m!1986621))

(declare-fun m!1986623 () Bool)

(assert (=> d!494989 m!1986623))

(declare-fun m!1986625 () Bool)

(assert (=> b!1643979 m!1986625))

(assert (=> bm!105752 m!1986001))

(assert (=> bm!105752 m!1986621))

(assert (=> b!1643976 m!1986001))

(declare-fun m!1986627 () Bool)

(assert (=> b!1643976 m!1986627))

(assert (=> b!1643976 m!1986627))

(declare-fun m!1986629 () Bool)

(assert (=> b!1643976 m!1986629))

(assert (=> b!1643978 m!1986001))

(assert (=> b!1643978 m!1986619))

(assert (=> b!1643978 m!1986619))

(declare-fun m!1986631 () Bool)

(assert (=> b!1643978 m!1986631))

(assert (=> b!1643978 m!1986001))

(assert (=> b!1643978 m!1986627))

(assert (=> b!1643978 m!1986631))

(assert (=> b!1643978 m!1986627))

(declare-fun m!1986633 () Bool)

(assert (=> b!1643978 m!1986633))

(assert (=> b!1643985 m!1986001))

(assert (=> b!1643985 m!1986627))

(assert (=> b!1643985 m!1986627))

(assert (=> b!1643985 m!1986629))

(assert (=> b!1643977 m!1986001))

(assert (=> b!1643977 m!1986619))

(assert (=> b!1643591 d!494989))

(declare-fun d!495005 () Bool)

(assert (=> d!495005 (= (head!3589 (list!7182 lt!605669)) (h!23527 (list!7182 lt!605669)))))

(assert (=> b!1643591 d!495005))

(declare-fun d!495007 () Bool)

(assert (=> d!495007 (= (list!7182 lt!605669) (list!7186 (c!267229 lt!605669)))))

(declare-fun bs!395907 () Bool)

(assert (= bs!395907 d!495007))

(declare-fun m!1986635 () Bool)

(assert (=> bs!395907 m!1986635))

(assert (=> b!1643591 d!495007))

(declare-fun b!1643990 () Bool)

(declare-fun e!1054394 () Bool)

(declare-fun lt!605933 () tuple2!17784)

(assert (=> b!1643990 (= e!1054394 (= (_2!10294 lt!605933) lt!605669))))

(declare-fun d!495009 () Bool)

(declare-fun e!1054396 () Bool)

(assert (=> d!495009 e!1054396))

(declare-fun res!736572 () Bool)

(assert (=> d!495009 (=> (not res!736572) (not e!1054396))))

(assert (=> d!495009 (= res!736572 e!1054394)))

(declare-fun c!267325 () Bool)

(assert (=> d!495009 (= c!267325 (> (size!14442 (_1!10294 lt!605933)) 0))))

(assert (=> d!495009 (= lt!605933 (lexTailRecV2!582 thiss!17113 rules!1846 lt!605669 (BalanceConc!12029 Empty!6042) lt!605669 (BalanceConc!12031 Empty!6043)))))

(assert (=> d!495009 (= (lex!1310 thiss!17113 rules!1846 lt!605669) lt!605933)))

(declare-fun b!1643991 () Bool)

(declare-fun e!1054395 () Bool)

(assert (=> b!1643991 (= e!1054394 e!1054395)))

(declare-fun res!736571 () Bool)

(assert (=> b!1643991 (= res!736571 (< (size!14441 (_2!10294 lt!605933)) (size!14441 lt!605669)))))

(assert (=> b!1643991 (=> (not res!736571) (not e!1054395))))

(declare-fun b!1643992 () Bool)

(assert (=> b!1643992 (= e!1054396 (= (list!7182 (_2!10294 lt!605933)) (_2!10297 (lexList!859 thiss!17113 rules!1846 (list!7182 lt!605669)))))))

(declare-fun b!1643993 () Bool)

(declare-fun res!736573 () Bool)

(assert (=> b!1643993 (=> (not res!736573) (not e!1054396))))

(assert (=> b!1643993 (= res!736573 (= (list!7181 (_1!10294 lt!605933)) (_1!10297 (lexList!859 thiss!17113 rules!1846 (list!7182 lt!605669)))))))

(declare-fun b!1643994 () Bool)

(assert (=> b!1643994 (= e!1054395 (not (isEmpty!11159 (_1!10294 lt!605933))))))

(assert (= (and d!495009 c!267325) b!1643991))

(assert (= (and d!495009 (not c!267325)) b!1643990))

(assert (= (and b!1643991 res!736571) b!1643994))

(assert (= (and d!495009 res!736572) b!1643993))

(assert (= (and b!1643993 res!736573) b!1643992))

(declare-fun m!1986637 () Bool)

(assert (=> b!1643991 m!1986637))

(declare-fun m!1986639 () Bool)

(assert (=> b!1643991 m!1986639))

(declare-fun m!1986641 () Bool)

(assert (=> d!495009 m!1986641))

(declare-fun m!1986643 () Bool)

(assert (=> d!495009 m!1986643))

(declare-fun m!1986645 () Bool)

(assert (=> b!1643992 m!1986645))

(assert (=> b!1643992 m!1986003))

(assert (=> b!1643992 m!1986003))

(declare-fun m!1986647 () Bool)

(assert (=> b!1643992 m!1986647))

(declare-fun m!1986649 () Bool)

(assert (=> b!1643994 m!1986649))

(declare-fun m!1986651 () Bool)

(assert (=> b!1643993 m!1986651))

(assert (=> b!1643993 m!1986003))

(assert (=> b!1643993 m!1986003))

(assert (=> b!1643993 m!1986647))

(assert (=> b!1643591 d!495009))

(assert (=> b!1643591 d!494883))

(declare-fun d!495011 () Bool)

(assert (=> d!495011 (= (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7186 (c!267229 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun bs!395908 () Bool)

(assert (= bs!395908 d!495011))

(declare-fun m!1986653 () Bool)

(assert (=> bs!395908 m!1986653))

(assert (=> b!1643591 d!495011))

(declare-fun d!495013 () Bool)

(assert (=> d!495013 (= (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457)))) (fromListB!943 (t!150204 (t!150204 (t!150204 tokens!457)))))))

(declare-fun bs!395909 () Bool)

(assert (= bs!395909 d!495013))

(declare-fun m!1986655 () Bool)

(assert (=> bs!395909 m!1986655))

(assert (=> b!1643591 d!495013))

(declare-fun d!495015 () Bool)

(declare-fun lt!605941 () C!9224)

(declare-fun apply!4739 (List!18196 Int) C!9224)

(assert (=> d!495015 (= lt!605941 (apply!4739 (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457))))) 0))))

(declare-fun apply!4740 (Conc!6042 Int) C!9224)

(assert (=> d!495015 (= lt!605941 (apply!4740 (c!267229 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457))))) 0))))

(declare-fun e!1054400 () Bool)

(assert (=> d!495015 e!1054400))

(declare-fun res!736576 () Bool)

(assert (=> d!495015 (=> (not res!736576) (not e!1054400))))

(assert (=> d!495015 (= res!736576 (<= 0 0))))

(assert (=> d!495015 (= (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0) lt!605941)))

(declare-fun b!1643999 () Bool)

(assert (=> b!1643999 (= e!1054400 (< 0 (size!14441 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))))))))

(assert (= (and d!495015 res!736576) b!1643999))

(assert (=> d!495015 m!1986051))

(declare-fun m!1986687 () Bool)

(assert (=> d!495015 m!1986687))

(assert (=> d!495015 m!1986687))

(declare-fun m!1986689 () Bool)

(assert (=> d!495015 m!1986689))

(declare-fun m!1986691 () Bool)

(assert (=> d!495015 m!1986691))

(assert (=> b!1643999 m!1986051))

(declare-fun m!1986693 () Bool)

(assert (=> b!1643999 m!1986693))

(assert (=> b!1643591 d!495015))

(declare-fun b!1644000 () Bool)

(declare-fun e!1054402 () Option!3428)

(declare-fun lt!605943 () Option!3428)

(declare-fun lt!605942 () Option!3428)

(assert (=> b!1644000 (= e!1054402 (ite (and ((_ is None!3427) lt!605943) ((_ is None!3427) lt!605942)) None!3427 (ite ((_ is None!3427) lt!605942) lt!605943 (ite ((_ is None!3427) lt!605943) lt!605942 (ite (>= (size!14436 (_1!10295 (v!24552 lt!605943))) (size!14436 (_1!10295 (v!24552 lt!605942)))) lt!605943 lt!605942)))))))

(declare-fun call!105758 () Option!3428)

(assert (=> b!1644000 (= lt!605943 call!105758)))

(assert (=> b!1644000 (= lt!605942 (maxPrefix!1388 thiss!17113 (t!150205 rules!1846) (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))))))

(declare-fun b!1644001 () Bool)

(declare-fun e!1054401 () Bool)

(declare-fun e!1054403 () Bool)

(assert (=> b!1644001 (= e!1054401 e!1054403)))

(declare-fun res!736582 () Bool)

(assert (=> b!1644001 (=> (not res!736582) (not e!1054403))))

(declare-fun lt!605944 () Option!3428)

(assert (=> b!1644001 (= res!736582 (isDefined!2789 lt!605944))))

(declare-fun b!1644002 () Bool)

(assert (=> b!1644002 (= e!1054402 call!105758)))

(declare-fun b!1644003 () Bool)

(declare-fun res!736577 () Bool)

(assert (=> b!1644003 (=> (not res!736577) (not e!1054403))))

(assert (=> b!1644003 (= res!736577 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605944)))) (_2!10295 (get!5272 lt!605944))) (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))))))

(declare-fun b!1644004 () Bool)

(declare-fun res!736583 () Bool)

(assert (=> b!1644004 (=> (not res!736583) (not e!1054403))))

(assert (=> b!1644004 (= res!736583 (= (value!100787 (_1!10295 (get!5272 lt!605944))) (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605944)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!605944)))))))))

(declare-fun b!1644005 () Bool)

(declare-fun res!736581 () Bool)

(assert (=> b!1644005 (=> (not res!736581) (not e!1054403))))

(assert (=> b!1644005 (= res!736581 (< (size!14440 (_2!10295 (get!5272 lt!605944))) (size!14440 (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644006 () Bool)

(declare-fun res!736579 () Bool)

(assert (=> b!1644006 (=> (not res!736579) (not e!1054403))))

(assert (=> b!1644006 (= res!736579 (matchR!2020 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605944)))) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605944))))))))

(declare-fun bm!105753 () Bool)

(assert (=> bm!105753 (= call!105758 (maxPrefixOneRule!799 thiss!17113 (h!23529 rules!1846) (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))))))

(declare-fun d!495027 () Bool)

(assert (=> d!495027 e!1054401))

(declare-fun res!736578 () Bool)

(assert (=> d!495027 (=> res!736578 e!1054401)))

(assert (=> d!495027 (= res!736578 (isEmpty!11158 lt!605944))))

(assert (=> d!495027 (= lt!605944 e!1054402)))

(declare-fun c!267327 () Bool)

(assert (=> d!495027 (= c!267327 (and ((_ is Cons!18128) rules!1846) ((_ is Nil!18128) (t!150205 rules!1846))))))

(declare-fun lt!605946 () Unit!29917)

(declare-fun lt!605945 () Unit!29917)

(assert (=> d!495027 (= lt!605946 lt!605945)))

(assert (=> d!495027 (isPrefix!1455 (originalCharacters!4011 (h!23528 (t!150204 tokens!457))) (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))))

(assert (=> d!495027 (= lt!605945 (lemmaIsPrefixRefl!984 (originalCharacters!4011 (h!23528 (t!150204 tokens!457))) (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495027 (rulesValidInductive!1006 thiss!17113 rules!1846)))

(assert (=> d!495027 (= (maxPrefix!1388 thiss!17113 rules!1846 (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))) lt!605944)))

(declare-fun b!1644007 () Bool)

(assert (=> b!1644007 (= e!1054403 (contains!3154 rules!1846 (rule!5047 (_1!10295 (get!5272 lt!605944)))))))

(declare-fun b!1644008 () Bool)

(declare-fun res!736580 () Bool)

(assert (=> b!1644008 (=> (not res!736580) (not e!1054403))))

(assert (=> b!1644008 (= res!736580 (= (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605944)))) (originalCharacters!4011 (_1!10295 (get!5272 lt!605944)))))))

(assert (= (and d!495027 c!267327) b!1644002))

(assert (= (and d!495027 (not c!267327)) b!1644000))

(assert (= (or b!1644002 b!1644000) bm!105753))

(assert (= (and d!495027 (not res!736578)) b!1644001))

(assert (= (and b!1644001 res!736582) b!1644008))

(assert (= (and b!1644008 res!736580) b!1644005))

(assert (= (and b!1644005 res!736581) b!1644003))

(assert (= (and b!1644003 res!736577) b!1644004))

(assert (= (and b!1644004 res!736583) b!1644006))

(assert (= (and b!1644006 res!736579) b!1644007))

(declare-fun m!1986695 () Bool)

(assert (=> b!1644005 m!1986695))

(declare-fun m!1986697 () Bool)

(assert (=> b!1644005 m!1986697))

(declare-fun m!1986699 () Bool)

(assert (=> b!1644005 m!1986699))

(declare-fun m!1986701 () Bool)

(assert (=> bm!105753 m!1986701))

(assert (=> b!1644008 m!1986695))

(declare-fun m!1986703 () Bool)

(assert (=> b!1644008 m!1986703))

(assert (=> b!1644008 m!1986703))

(declare-fun m!1986705 () Bool)

(assert (=> b!1644008 m!1986705))

(declare-fun m!1986707 () Bool)

(assert (=> b!1644000 m!1986707))

(assert (=> b!1644004 m!1986695))

(declare-fun m!1986709 () Bool)

(assert (=> b!1644004 m!1986709))

(assert (=> b!1644004 m!1986709))

(declare-fun m!1986711 () Bool)

(assert (=> b!1644004 m!1986711))

(declare-fun m!1986713 () Bool)

(assert (=> b!1644001 m!1986713))

(declare-fun m!1986715 () Bool)

(assert (=> d!495027 m!1986715))

(declare-fun m!1986717 () Bool)

(assert (=> d!495027 m!1986717))

(declare-fun m!1986719 () Bool)

(assert (=> d!495027 m!1986719))

(assert (=> d!495027 m!1986189))

(assert (=> b!1644006 m!1986695))

(assert (=> b!1644006 m!1986703))

(assert (=> b!1644006 m!1986703))

(assert (=> b!1644006 m!1986705))

(assert (=> b!1644006 m!1986705))

(declare-fun m!1986721 () Bool)

(assert (=> b!1644006 m!1986721))

(assert (=> b!1644007 m!1986695))

(declare-fun m!1986723 () Bool)

(assert (=> b!1644007 m!1986723))

(assert (=> b!1644003 m!1986695))

(assert (=> b!1644003 m!1986703))

(assert (=> b!1644003 m!1986703))

(assert (=> b!1644003 m!1986705))

(assert (=> b!1644003 m!1986705))

(declare-fun m!1986725 () Bool)

(assert (=> b!1644003 m!1986725))

(assert (=> b!1643591 d!495027))

(declare-fun b!1644133 () Bool)

(declare-fun e!1054476 () Unit!29917)

(declare-fun Unit!29953 () Unit!29917)

(assert (=> b!1644133 (= e!1054476 Unit!29953)))

(declare-fun b!1644134 () Bool)

(declare-fun e!1054477 () Unit!29917)

(declare-fun Unit!29954 () Unit!29917)

(assert (=> b!1644134 (= e!1054477 Unit!29954)))

(declare-fun b!1644135 () Bool)

(assert (=> b!1644135 false))

(declare-fun lt!606286 () Unit!29917)

(declare-fun lt!606256 () Unit!29917)

(assert (=> b!1644135 (= lt!606286 lt!606256)))

(declare-fun lt!606234 () List!18196)

(assert (=> b!1644135 (not (matchR!2020 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))) lt!606234))))

(declare-fun lt!606299 () Token!5960)

(declare-fun lt!606296 () List!18196)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!89 (LexerInterface!2826 List!18198 Rule!6194 List!18196 List!18196 Rule!6194) Unit!29917)

(assert (=> b!1644135 (= lt!606256 (lemmaMaxPrefNoSmallerRuleMatches!89 thiss!17113 rules!1846 (rule!5047 lt!606299) lt!606234 lt!606296 (rule!5047 (h!23528 (t!150204 tokens!457)))))))

(assert (=> b!1644135 (= lt!606234 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun e!1054472 () Unit!29917)

(declare-fun Unit!29955 () Unit!29917)

(assert (=> b!1644135 (= e!1054472 Unit!29955)))

(declare-fun b!1644136 () Bool)

(assert (=> b!1644136 false))

(declare-fun lt!606231 () Unit!29917)

(declare-fun lt!606237 () Unit!29917)

(assert (=> b!1644136 (= lt!606231 lt!606237)))

(declare-fun lt!606295 () List!18196)

(assert (=> b!1644136 (not (matchR!2020 (regex!3197 (rule!5047 lt!606299)) lt!606295))))

(assert (=> b!1644136 (= lt!606237 (lemmaMaxPrefNoSmallerRuleMatches!89 thiss!17113 rules!1846 (rule!5047 (h!23528 (t!150204 tokens!457))) lt!606295 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (rule!5047 lt!606299)))))

(assert (=> b!1644136 (= lt!606295 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun Unit!29956 () Unit!29917)

(assert (=> b!1644136 (= e!1054477 Unit!29956)))

(declare-fun b!1644137 () Bool)

(declare-fun Unit!29957 () Unit!29917)

(assert (=> b!1644137 (= e!1054476 Unit!29957)))

(declare-fun lt!606260 () List!18196)

(declare-fun lt!606259 () Unit!29917)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!49 (LexerInterface!2826 List!18198 List!18196 Token!5960 Rule!6194 List!18196) Unit!29917)

(assert (=> b!1644137 (= lt!606259 (lemmaMaxPrefixThenMatchesRulesRegex!49 thiss!17113 rules!1846 lt!606296 lt!606299 (rule!5047 lt!606299) lt!606260))))

(assert (=> b!1644137 (matchR!2020 (rulesRegex!583 thiss!17113 rules!1846) (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606236 () Unit!29917)

(assert (=> b!1644137 (= lt!606236 lt!606259)))

(declare-fun lt!606262 () List!18196)

(assert (=> b!1644137 (= lt!606262 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!606245 () List!18196)

(assert (=> b!1644137 (= lt!606245 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!606272 () List!18196)

(declare-fun getSuffix!719 (List!18196 List!18196) List!18196)

(assert (=> b!1644137 (= lt!606272 (getSuffix!719 lt!606296 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!606233 () Unit!29917)

(declare-fun lemmaSamePrefixThenSameSuffix!671 (List!18196 List!18196 List!18196 List!18196 List!18196) Unit!29917)

(assert (=> b!1644137 (= lt!606233 (lemmaSamePrefixThenSameSuffix!671 lt!606262 (list!7182 lt!605669) lt!606245 lt!606272 lt!606296))))

(assert (=> b!1644137 (= (list!7182 lt!605669) lt!606272)))

(declare-fun lt!606287 () Unit!29917)

(assert (=> b!1644137 (= lt!606287 lt!606233)))

(declare-fun lt!606258 () List!18196)

(assert (=> b!1644137 (= lt!606258 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!606289 () Unit!29917)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!162 (List!18196 List!18196) Unit!29917)

(assert (=> b!1644137 (= lt!606289 (lemmaAddHeadSuffixToPrefixStillPrefix!162 lt!606258 lt!606296))))

(assert (=> b!1644137 (isPrefix!1455 (++!4878 lt!606258 (Cons!18126 (head!3589 (getSuffix!719 lt!606296 lt!606258)) Nil!18126)) lt!606296)))

(declare-fun lt!606282 () Unit!29917)

(assert (=> b!1644137 (= lt!606282 lt!606289)))

(declare-fun lt!606248 () List!18196)

(assert (=> b!1644137 (= lt!606248 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606238 () List!18196)

(assert (=> b!1644137 (= lt!606238 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (Cons!18126 (head!3589 (list!7182 lt!605669)) Nil!18126)))))

(declare-fun lt!606232 () Unit!29917)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!48 (List!18196 List!18196 List!18196) Unit!29917)

(assert (=> b!1644137 (= lt!606232 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!48 lt!606248 lt!606238 lt!606296))))

(assert (=> b!1644137 (isPrefix!1455 lt!606238 lt!606248)))

(declare-fun lt!606244 () Unit!29917)

(assert (=> b!1644137 (= lt!606244 lt!606232)))

(declare-fun lt!606235 () Regex!4525)

(assert (=> b!1644137 (= lt!606235 (rulesRegex!583 thiss!17113 rules!1846))))

(declare-fun lt!606246 () List!18196)

(assert (=> b!1644137 (= lt!606246 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (Cons!18126 (head!3589 (list!7182 lt!605669)) Nil!18126)))))

(declare-fun lt!606277 () List!18196)

(assert (=> b!1644137 (= lt!606277 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606298 () Unit!29917)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!49 (Regex!4525 List!18196 List!18196) Unit!29917)

(assert (=> b!1644137 (= lt!606298 (lemmaNotPrefixMatchThenCannotMatchLonger!49 lt!606235 lt!606246 lt!606277))))

(assert (=> b!1644137 (not (matchR!2020 lt!606235 lt!606277))))

(declare-fun lt!606261 () Unit!29917)

(assert (=> b!1644137 (= lt!606261 lt!606298)))

(assert (=> b!1644137 false))

(declare-fun b!1644138 () Bool)

(assert (=> b!1644138 false))

(declare-fun lt!606247 () Unit!29917)

(declare-fun lt!606257 () Unit!29917)

(assert (=> b!1644138 (= lt!606247 lt!606257)))

(assert (=> b!1644138 (= (rule!5047 lt!606299) (rule!5047 (h!23528 (t!150204 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!65 (List!18198 Rule!6194 Rule!6194) Unit!29917)

(assert (=> b!1644138 (= lt!606257 (lemmaSameIndexThenSameElement!65 rules!1846 (rule!5047 lt!606299) (rule!5047 (h!23528 (t!150204 tokens!457)))))))

(declare-fun e!1054471 () Unit!29917)

(declare-fun Unit!29959 () Unit!29917)

(assert (=> b!1644138 (= e!1054471 Unit!29959)))

(declare-fun b!1644139 () Bool)

(declare-fun e!1054473 () Bool)

(declare-datatypes ((Option!3430 0))(
  ( (None!3429) (Some!3429 (v!24564 Rule!6194)) )
))
(declare-fun get!5273 (Option!3430) Rule!6194)

(declare-fun getRuleFromTag!305 (LexerInterface!2826 List!18198 String!20767) Option!3430)

(assert (=> b!1644139 (= e!1054473 (= (rule!5047 lt!606299) (get!5273 (getRuleFromTag!305 thiss!17113 rules!1846 (tag!3477 (rule!5047 lt!606299))))))))

(declare-fun d!495031 () Bool)

(assert (=> d!495031 (= (maxPrefix!1388 thiss!17113 rules!1846 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669))) (Some!3427 (tuple2!17787 (h!23528 (t!150204 tokens!457)) (list!7182 lt!605669))))))

(declare-fun lt!606276 () Unit!29917)

(declare-fun Unit!29960 () Unit!29917)

(assert (=> d!495031 (= lt!606276 Unit!29960)))

(declare-fun lt!606284 () Unit!29917)

(declare-fun e!1054474 () Unit!29917)

(assert (=> d!495031 (= lt!606284 e!1054474)))

(declare-fun c!267361 () Bool)

(assert (=> d!495031 (= c!267361 (not (= (rule!5047 lt!606299) (rule!5047 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!606271 () Unit!29917)

(declare-fun lt!606253 () Unit!29917)

(assert (=> d!495031 (= lt!606271 lt!606253)))

(assert (=> d!495031 (= (list!7182 lt!605669) lt!606260)))

(assert (=> d!495031 (= lt!606253 (lemmaSamePrefixThenSameSuffix!671 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) lt!606260 lt!606296))))

(declare-fun lt!606240 () Unit!29917)

(declare-fun lt!606291 () Unit!29917)

(assert (=> d!495031 (= lt!606240 lt!606291)))

(declare-fun lt!606281 () List!18196)

(declare-fun lt!606290 () List!18196)

(assert (=> d!495031 (= lt!606281 lt!606290)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!172 (List!18196 List!18196 List!18196) Unit!29917)

(assert (=> d!495031 (= lt!606291 (lemmaIsPrefixSameLengthThenSameList!172 lt!606281 lt!606290 lt!606296))))

(assert (=> d!495031 (= lt!606290 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495031 (= lt!606281 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606293 () Unit!29917)

(declare-fun e!1054475 () Unit!29917)

(assert (=> d!495031 (= lt!606293 e!1054475)))

(declare-fun c!267362 () Bool)

(assert (=> d!495031 (= c!267362 (< (size!14441 (charsOf!1846 lt!606299)) (size!14441 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!606263 () Unit!29917)

(assert (=> d!495031 (= lt!606263 e!1054476)))

(declare-fun c!267366 () Bool)

(assert (=> d!495031 (= c!267366 (> (size!14441 (charsOf!1846 lt!606299)) (size!14441 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!606273 () Unit!29917)

(declare-fun lt!606269 () Unit!29917)

(assert (=> d!495031 (= lt!606273 lt!606269)))

(assert (=> d!495031 (matchR!2020 (rulesRegex!583 thiss!17113 rules!1846) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495031 (= lt!606269 (lemmaMaxPrefixThenMatchesRulesRegex!49 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)) (rule!5047 (h!23528 (t!150204 tokens!457))) Nil!18126))))

(declare-fun lt!606250 () Unit!29917)

(declare-fun lt!606288 () Unit!29917)

(assert (=> d!495031 (= lt!606250 lt!606288)))

(declare-fun lt!606278 () List!18196)

(assert (=> d!495031 (= lt!606260 lt!606278)))

(declare-fun lt!606267 () List!18196)

(declare-fun lt!606264 () List!18196)

(assert (=> d!495031 (= lt!606288 (lemmaSamePrefixThenSameSuffix!671 lt!606264 lt!606260 lt!606267 lt!606278 lt!606296))))

(assert (=> d!495031 (= lt!606278 (getSuffix!719 lt!606296 (list!7182 (charsOf!1846 lt!606299))))))

(assert (=> d!495031 (= lt!606267 (list!7182 (charsOf!1846 lt!606299)))))

(assert (=> d!495031 (= lt!606264 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606280 () Unit!29917)

(declare-fun lt!606265 () Unit!29917)

(assert (=> d!495031 (= lt!606280 lt!606265)))

(declare-fun lt!606297 () List!18196)

(assert (=> d!495031 (= (maxPrefixOneRule!799 thiss!17113 (rule!5047 lt!606299) lt!606296) (Some!3427 (tuple2!17787 (Token!5961 (apply!4736 (transformation!3197 (rule!5047 lt!606299)) (seqFromList!2136 lt!606297)) (rule!5047 lt!606299) (size!14440 lt!606297) lt!606297) lt!606260)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!238 (LexerInterface!2826 List!18198 List!18196 List!18196 List!18196 Rule!6194) Unit!29917)

(assert (=> d!495031 (= lt!606265 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!238 thiss!17113 rules!1846 lt!606297 lt!606296 lt!606260 (rule!5047 lt!606299)))))

(assert (=> d!495031 (= lt!606297 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606239 () Unit!29917)

(declare-fun lemmaCharactersSize!344 (Token!5960) Unit!29917)

(assert (=> d!495031 (= lt!606239 (lemmaCharactersSize!344 lt!606299))))

(declare-fun lt!606300 () Unit!29917)

(declare-fun lemmaEqSameImage!197 (TokenValueInjection!6234 BalanceConc!12028 BalanceConc!12028) Unit!29917)

(assert (=> d!495031 (= lt!606300 (lemmaEqSameImage!197 (transformation!3197 (rule!5047 lt!606299)) (charsOf!1846 lt!606299) (seqFromList!2136 (originalCharacters!4011 lt!606299))))))

(declare-fun lt!606275 () Unit!29917)

(declare-fun lemmaSemiInverse!412 (TokenValueInjection!6234 BalanceConc!12028) Unit!29917)

(assert (=> d!495031 (= lt!606275 (lemmaSemiInverse!412 (transformation!3197 (rule!5047 lt!606299)) (charsOf!1846 lt!606299)))))

(declare-fun lt!606268 () Unit!29917)

(declare-fun lemmaInv!477 (TokenValueInjection!6234) Unit!29917)

(assert (=> d!495031 (= lt!606268 (lemmaInv!477 (transformation!3197 (rule!5047 lt!606299))))))

(declare-fun lt!606242 () Unit!29917)

(declare-fun lt!606255 () Unit!29917)

(assert (=> d!495031 (= lt!606242 lt!606255)))

(declare-fun lt!606283 () List!18196)

(assert (=> d!495031 (isPrefix!1455 lt!606283 (++!4878 lt!606283 lt!606260))))

(assert (=> d!495031 (= lt!606255 (lemmaConcatTwoListThenFirstIsPrefix!980 lt!606283 lt!606260))))

(assert (=> d!495031 (= lt!606283 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606270 () Unit!29917)

(declare-fun lt!606243 () Unit!29917)

(assert (=> d!495031 (= lt!606270 lt!606243)))

(assert (=> d!495031 e!1054473))

(declare-fun res!736641 () Bool)

(assert (=> d!495031 (=> (not res!736641) (not e!1054473))))

(declare-fun isDefined!2790 (Option!3430) Bool)

(assert (=> d!495031 (= res!736641 (isDefined!2790 (getRuleFromTag!305 thiss!17113 rules!1846 (tag!3477 (rule!5047 lt!606299)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!305 (LexerInterface!2826 List!18198 List!18196 Token!5960) Unit!29917)

(assert (=> d!495031 (= lt!606243 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!305 thiss!17113 rules!1846 lt!606296 lt!606299))))

(declare-fun lt!606241 () Option!3428)

(assert (=> d!495031 (= lt!606260 (_2!10295 (get!5272 lt!606241)))))

(assert (=> d!495031 (= lt!606299 (_1!10295 (get!5272 lt!606241)))))

(declare-fun lt!606274 () Unit!29917)

(assert (=> d!495031 (= lt!606274 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!395 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))

(assert (=> d!495031 (= lt!606241 (maxPrefix!1388 thiss!17113 rules!1846 lt!606296))))

(declare-fun lt!606292 () Unit!29917)

(declare-fun lt!606285 () Unit!29917)

(assert (=> d!495031 (= lt!606292 lt!606285)))

(declare-fun lt!606279 () List!18196)

(assert (=> d!495031 (isPrefix!1455 lt!606279 (++!4878 lt!606279 (list!7182 lt!605669)))))

(assert (=> d!495031 (= lt!606285 (lemmaConcatTwoListThenFirstIsPrefix!980 lt!606279 (list!7182 lt!605669)))))

(assert (=> d!495031 (= lt!606279 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495031 (= lt!606296 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))

(assert (=> d!495031 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495031 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!157 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457)) (rule!5047 (h!23528 (t!150204 tokens!457))) (list!7182 lt!605669)) lt!606276)))

(declare-fun b!1644140 () Bool)

(declare-fun Unit!29962 () Unit!29917)

(assert (=> b!1644140 (= e!1054472 Unit!29962)))

(declare-fun b!1644141 () Bool)

(declare-fun Unit!29963 () Unit!29917)

(assert (=> b!1644141 (= e!1054475 Unit!29963)))

(declare-fun b!1644142 () Bool)

(declare-fun res!736640 () Bool)

(assert (=> b!1644142 (=> (not res!736640) (not e!1054473))))

(assert (=> b!1644142 (= res!736640 (matchR!2020 (regex!3197 (get!5273 (getRuleFromTag!305 thiss!17113 rules!1846 (tag!3477 (rule!5047 lt!606299))))) (list!7182 (charsOf!1846 lt!606299))))))

(declare-fun b!1644143 () Bool)

(declare-fun Unit!29964 () Unit!29917)

(assert (=> b!1644143 (= e!1054471 Unit!29964)))

(declare-fun b!1644144 () Bool)

(declare-fun Unit!29965 () Unit!29917)

(assert (=> b!1644144 (= e!1054474 Unit!29965)))

(declare-fun b!1644145 () Bool)

(declare-fun Unit!29966 () Unit!29917)

(assert (=> b!1644145 (= e!1054474 Unit!29966)))

(declare-fun c!267363 () Bool)

(declare-fun getIndex!117 (List!18198 Rule!6194) Int)

(assert (=> b!1644145 (= c!267363 (< (getIndex!117 rules!1846 (rule!5047 (h!23528 (t!150204 tokens!457)))) (getIndex!117 rules!1846 (rule!5047 lt!606299))))))

(declare-fun lt!606294 () Unit!29917)

(assert (=> b!1644145 (= lt!606294 e!1054472)))

(declare-fun c!267364 () Bool)

(assert (=> b!1644145 (= c!267364 (< (getIndex!117 rules!1846 (rule!5047 lt!606299)) (getIndex!117 rules!1846 (rule!5047 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!606254 () Unit!29917)

(assert (=> b!1644145 (= lt!606254 e!1054477)))

(declare-fun c!267365 () Bool)

(assert (=> b!1644145 (= c!267365 (= (getIndex!117 rules!1846 (rule!5047 lt!606299)) (getIndex!117 rules!1846 (rule!5047 (h!23528 (t!150204 tokens!457))))))))

(declare-fun lt!606251 () Unit!29917)

(assert (=> b!1644145 (= lt!606251 e!1054471)))

(assert (=> b!1644145 false))

(declare-fun b!1644146 () Bool)

(declare-fun Unit!29967 () Unit!29917)

(assert (=> b!1644146 (= e!1054475 Unit!29967)))

(declare-fun lt!606252 () List!18196)

(assert (=> b!1644146 (= lt!606252 (list!7182 (charsOf!1846 lt!606299)))))

(declare-fun lt!606249 () List!18196)

(assert (=> b!1644146 (= lt!606249 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!606301 () Unit!29917)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!139 (LexerInterface!2826 List!18198 Rule!6194 List!18196 List!18196 List!18196 Rule!6194) Unit!29917)

(assert (=> b!1644146 (= lt!606301 (lemmaMaxPrefixOutputsMaxPrefix!139 thiss!17113 rules!1846 (rule!5047 lt!606299) lt!606252 lt!606296 lt!606249 (rule!5047 (h!23528 (t!150204 tokens!457)))))))

(assert (=> b!1644146 (not (matchR!2020 (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))) lt!606249))))

(declare-fun lt!606266 () Unit!29917)

(assert (=> b!1644146 (= lt!606266 lt!606301)))

(assert (=> b!1644146 false))

(assert (= (and d!495031 res!736641) b!1644142))

(assert (= (and b!1644142 res!736640) b!1644139))

(assert (= (and d!495031 c!267366) b!1644137))

(assert (= (and d!495031 (not c!267366)) b!1644133))

(assert (= (and d!495031 c!267362) b!1644146))

(assert (= (and d!495031 (not c!267362)) b!1644141))

(assert (= (and d!495031 c!267361) b!1644145))

(assert (= (and d!495031 (not c!267361)) b!1644144))

(assert (= (and b!1644145 c!267363) b!1644135))

(assert (= (and b!1644145 (not c!267363)) b!1644140))

(assert (= (and b!1644145 c!267364) b!1644136))

(assert (= (and b!1644145 (not c!267364)) b!1644134))

(assert (= (and b!1644145 c!267365) b!1644138))

(assert (= (and b!1644145 (not c!267365)) b!1644143))

(declare-fun m!1986993 () Bool)

(assert (=> b!1644139 m!1986993))

(assert (=> b!1644139 m!1986993))

(declare-fun m!1986995 () Bool)

(assert (=> b!1644139 m!1986995))

(declare-fun m!1986997 () Bool)

(assert (=> b!1644136 m!1986997))

(assert (=> b!1644136 m!1986023))

(assert (=> b!1644136 m!1986023))

(assert (=> b!1644136 m!1986001))

(assert (=> b!1644136 m!1986001))

(declare-fun m!1986999 () Bool)

(assert (=> b!1644136 m!1986999))

(declare-fun m!1987001 () Bool)

(assert (=> b!1644146 m!1987001))

(declare-fun m!1987003 () Bool)

(assert (=> b!1644146 m!1987003))

(declare-fun m!1987005 () Bool)

(assert (=> b!1644146 m!1987005))

(assert (=> b!1644146 m!1987003))

(assert (=> b!1644146 m!1986023))

(assert (=> b!1644146 m!1986023))

(assert (=> b!1644146 m!1986001))

(declare-fun m!1987007 () Bool)

(assert (=> b!1644146 m!1987007))

(declare-fun m!1987009 () Bool)

(assert (=> b!1644135 m!1987009))

(declare-fun m!1987011 () Bool)

(assert (=> b!1644135 m!1987011))

(assert (=> b!1644135 m!1987003))

(assert (=> b!1644135 m!1987003))

(assert (=> b!1644135 m!1987005))

(declare-fun m!1987013 () Bool)

(assert (=> b!1644138 m!1987013))

(declare-fun m!1987015 () Bool)

(assert (=> b!1644145 m!1987015))

(declare-fun m!1987017 () Bool)

(assert (=> b!1644145 m!1987017))

(assert (=> b!1644142 m!1987003))

(assert (=> b!1644142 m!1986993))

(assert (=> b!1644142 m!1986995))

(assert (=> b!1644142 m!1986993))

(assert (=> b!1644142 m!1987005))

(declare-fun m!1987019 () Bool)

(assert (=> b!1644142 m!1987019))

(assert (=> b!1644142 m!1987003))

(assert (=> b!1644142 m!1987005))

(declare-fun m!1987021 () Bool)

(assert (=> b!1644137 m!1987021))

(declare-fun m!1987023 () Bool)

(assert (=> b!1644137 m!1987023))

(declare-fun m!1987025 () Bool)

(assert (=> b!1644137 m!1987025))

(declare-fun m!1987027 () Bool)

(assert (=> b!1644137 m!1987027))

(assert (=> b!1644137 m!1987003))

(assert (=> b!1644137 m!1987005))

(assert (=> b!1644137 m!1987023))

(declare-fun m!1987029 () Bool)

(assert (=> b!1644137 m!1987029))

(declare-fun m!1987031 () Bool)

(assert (=> b!1644137 m!1987031))

(assert (=> b!1644137 m!1987031))

(declare-fun m!1987033 () Bool)

(assert (=> b!1644137 m!1987033))

(assert (=> b!1644137 m!1986001))

(declare-fun m!1987035 () Bool)

(assert (=> b!1644137 m!1987035))

(assert (=> b!1644137 m!1986397))

(assert (=> b!1644137 m!1986003))

(assert (=> b!1644137 m!1986057))

(assert (=> b!1644137 m!1986001))

(declare-fun m!1987037 () Bool)

(assert (=> b!1644137 m!1987037))

(assert (=> b!1644137 m!1986003))

(declare-fun m!1987039 () Bool)

(assert (=> b!1644137 m!1987039))

(declare-fun m!1987041 () Bool)

(assert (=> b!1644137 m!1987041))

(assert (=> b!1644137 m!1987003))

(declare-fun m!1987043 () Bool)

(assert (=> b!1644137 m!1987043))

(assert (=> b!1644137 m!1986023))

(assert (=> b!1644137 m!1986001))

(declare-fun m!1987045 () Bool)

(assert (=> b!1644137 m!1987045))

(assert (=> b!1644137 m!1986397))

(assert (=> b!1644137 m!1987005))

(declare-fun m!1987047 () Bool)

(assert (=> b!1644137 m!1987047))

(assert (=> b!1644137 m!1986023))

(declare-fun m!1987049 () Bool)

(assert (=> d!495031 m!1987049))

(declare-fun m!1987051 () Bool)

(assert (=> d!495031 m!1987051))

(declare-fun m!1987053 () Bool)

(assert (=> d!495031 m!1987053))

(assert (=> d!495031 m!1986001))

(assert (=> d!495031 m!1986003))

(declare-fun m!1987055 () Bool)

(assert (=> d!495031 m!1987055))

(declare-fun m!1987057 () Bool)

(assert (=> d!495031 m!1987057))

(assert (=> d!495031 m!1986023))

(assert (=> d!495031 m!1986003))

(declare-fun m!1987059 () Bool)

(assert (=> d!495031 m!1987059))

(declare-fun m!1987061 () Bool)

(assert (=> d!495031 m!1987061))

(declare-fun m!1987063 () Bool)

(assert (=> d!495031 m!1987063))

(assert (=> d!495031 m!1987055))

(declare-fun m!1987065 () Bool)

(assert (=> d!495031 m!1987065))

(declare-fun m!1987067 () Bool)

(assert (=> d!495031 m!1987067))

(assert (=> d!495031 m!1987003))

(declare-fun m!1987069 () Bool)

(assert (=> d!495031 m!1987069))

(declare-fun m!1987071 () Bool)

(assert (=> d!495031 m!1987071))

(declare-fun m!1987073 () Bool)

(assert (=> d!495031 m!1987073))

(assert (=> d!495031 m!1986993))

(declare-fun m!1987075 () Bool)

(assert (=> d!495031 m!1987075))

(assert (=> d!495031 m!1985699))

(declare-fun m!1987077 () Bool)

(assert (=> d!495031 m!1987077))

(assert (=> d!495031 m!1987003))

(assert (=> d!495031 m!1987005))

(assert (=> d!495031 m!1986001))

(assert (=> d!495031 m!1986003))

(assert (=> d!495031 m!1986001))

(declare-fun m!1987079 () Bool)

(assert (=> d!495031 m!1987079))

(assert (=> d!495031 m!1986023))

(assert (=> d!495031 m!1986085))

(assert (=> d!495031 m!1987003))

(declare-fun m!1987081 () Bool)

(assert (=> d!495031 m!1987081))

(assert (=> d!495031 m!1986023))

(assert (=> d!495031 m!1986001))

(assert (=> d!495031 m!1986001))

(assert (=> d!495031 m!1986003))

(assert (=> d!495031 m!1986005))

(assert (=> d!495031 m!1986993))

(declare-fun m!1987083 () Bool)

(assert (=> d!495031 m!1987083))

(declare-fun m!1987085 () Bool)

(assert (=> d!495031 m!1987085))

(declare-fun m!1987087 () Bool)

(assert (=> d!495031 m!1987087))

(declare-fun m!1987089 () Bool)

(assert (=> d!495031 m!1987089))

(assert (=> d!495031 m!1987005))

(declare-fun m!1987091 () Bool)

(assert (=> d!495031 m!1987091))

(declare-fun m!1987093 () Bool)

(assert (=> d!495031 m!1987093))

(assert (=> d!495031 m!1987003))

(declare-fun m!1987095 () Bool)

(assert (=> d!495031 m!1987095))

(assert (=> d!495031 m!1986397))

(assert (=> d!495031 m!1987069))

(assert (=> d!495031 m!1987003))

(declare-fun m!1987097 () Bool)

(assert (=> d!495031 m!1987097))

(assert (=> d!495031 m!1986001))

(declare-fun m!1987099 () Bool)

(assert (=> d!495031 m!1987099))

(assert (=> d!495031 m!1986397))

(assert (=> d!495031 m!1986001))

(declare-fun m!1987101 () Bool)

(assert (=> d!495031 m!1987101))

(assert (=> d!495031 m!1987083))

(declare-fun m!1987103 () Bool)

(assert (=> d!495031 m!1987103))

(assert (=> d!495031 m!1987063))

(declare-fun m!1987105 () Bool)

(assert (=> d!495031 m!1987105))

(assert (=> d!495031 m!1986003))

(assert (=> d!495031 m!1987085))

(assert (=> b!1643591 d!495031))

(declare-fun d!495099 () Bool)

(assert (=> d!495099 (= (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))) (v!24552 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))))

(assert (=> b!1643591 d!495099))

(declare-fun b!1644147 () Bool)

(declare-fun e!1054480 () Bool)

(declare-fun e!1054479 () Bool)

(assert (=> b!1644147 (= e!1054480 e!1054479)))

(declare-fun res!736642 () Bool)

(assert (=> b!1644147 (=> (not res!736642) (not e!1054479))))

(assert (=> b!1644147 (= res!736642 (not ((_ is Nil!18126) (++!4878 lt!605673 lt!605659))))))

(declare-fun b!1644150 () Bool)

(declare-fun e!1054478 () Bool)

(assert (=> b!1644150 (= e!1054478 (>= (size!14440 (++!4878 lt!605673 lt!605659)) (size!14440 lt!605673)))))

(declare-fun b!1644148 () Bool)

(declare-fun res!736645 () Bool)

(assert (=> b!1644148 (=> (not res!736645) (not e!1054479))))

(assert (=> b!1644148 (= res!736645 (= (head!3589 lt!605673) (head!3589 (++!4878 lt!605673 lt!605659))))))

(declare-fun b!1644149 () Bool)

(assert (=> b!1644149 (= e!1054479 (isPrefix!1455 (tail!2418 lt!605673) (tail!2418 (++!4878 lt!605673 lt!605659))))))

(declare-fun d!495101 () Bool)

(assert (=> d!495101 e!1054478))

(declare-fun res!736643 () Bool)

(assert (=> d!495101 (=> res!736643 e!1054478)))

(declare-fun lt!606302 () Bool)

(assert (=> d!495101 (= res!736643 (not lt!606302))))

(assert (=> d!495101 (= lt!606302 e!1054480)))

(declare-fun res!736644 () Bool)

(assert (=> d!495101 (=> res!736644 e!1054480)))

(assert (=> d!495101 (= res!736644 ((_ is Nil!18126) lt!605673))))

(assert (=> d!495101 (= (isPrefix!1455 lt!605673 (++!4878 lt!605673 lt!605659)) lt!606302)))

(assert (= (and d!495101 (not res!736644)) b!1644147))

(assert (= (and b!1644147 res!736642) b!1644148))

(assert (= (and b!1644148 res!736645) b!1644149))

(assert (= (and d!495101 (not res!736643)) b!1644150))

(assert (=> b!1644150 m!1986045))

(declare-fun m!1987107 () Bool)

(assert (=> b!1644150 m!1987107))

(declare-fun m!1987109 () Bool)

(assert (=> b!1644150 m!1987109))

(declare-fun m!1987111 () Bool)

(assert (=> b!1644148 m!1987111))

(assert (=> b!1644148 m!1986045))

(declare-fun m!1987113 () Bool)

(assert (=> b!1644148 m!1987113))

(declare-fun m!1987115 () Bool)

(assert (=> b!1644149 m!1987115))

(assert (=> b!1644149 m!1986045))

(declare-fun m!1987117 () Bool)

(assert (=> b!1644149 m!1987117))

(assert (=> b!1644149 m!1987115))

(assert (=> b!1644149 m!1987117))

(declare-fun m!1987119 () Bool)

(assert (=> b!1644149 m!1987119))

(assert (=> b!1643591 d!495101))

(declare-fun d!495103 () Bool)

(assert (=> d!495103 (= (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))) (not (isEmpty!11158 (maxPrefix!1388 thiss!17113 rules!1846 (originalCharacters!4011 (h!23528 (t!150204 tokens!457)))))))))

(declare-fun bs!395932 () Bool)

(assert (= bs!395932 d!495103))

(assert (=> bs!395932 m!1986059))

(declare-fun m!1987121 () Bool)

(assert (=> bs!395932 m!1987121))

(assert (=> b!1643591 d!495103))

(declare-fun b!1644151 () Bool)

(declare-fun e!1054482 () Option!3428)

(declare-fun lt!606304 () Option!3428)

(declare-fun lt!606303 () Option!3428)

(assert (=> b!1644151 (= e!1054482 (ite (and ((_ is None!3427) lt!606304) ((_ is None!3427) lt!606303)) None!3427 (ite ((_ is None!3427) lt!606303) lt!606304 (ite ((_ is None!3427) lt!606304) lt!606303 (ite (>= (size!14436 (_1!10295 (v!24552 lt!606304))) (size!14436 (_1!10295 (v!24552 lt!606303)))) lt!606304 lt!606303)))))))

(declare-fun call!105763 () Option!3428)

(assert (=> b!1644151 (= lt!606304 call!105763)))

(assert (=> b!1644151 (= lt!606303 (maxPrefix!1388 thiss!17113 (t!150205 rules!1846) (list!7182 lt!605658)))))

(declare-fun b!1644152 () Bool)

(declare-fun e!1054481 () Bool)

(declare-fun e!1054483 () Bool)

(assert (=> b!1644152 (= e!1054481 e!1054483)))

(declare-fun res!736651 () Bool)

(assert (=> b!1644152 (=> (not res!736651) (not e!1054483))))

(declare-fun lt!606305 () Option!3428)

(assert (=> b!1644152 (= res!736651 (isDefined!2789 lt!606305))))

(declare-fun b!1644153 () Bool)

(assert (=> b!1644153 (= e!1054482 call!105763)))

(declare-fun b!1644154 () Bool)

(declare-fun res!736646 () Bool)

(assert (=> b!1644154 (=> (not res!736646) (not e!1054483))))

(assert (=> b!1644154 (= res!736646 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606305)))) (_2!10295 (get!5272 lt!606305))) (list!7182 lt!605658)))))

(declare-fun b!1644155 () Bool)

(declare-fun res!736652 () Bool)

(assert (=> b!1644155 (=> (not res!736652) (not e!1054483))))

(assert (=> b!1644155 (= res!736652 (= (value!100787 (_1!10295 (get!5272 lt!606305))) (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!606305)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!606305)))))))))

(declare-fun b!1644156 () Bool)

(declare-fun res!736650 () Bool)

(assert (=> b!1644156 (=> (not res!736650) (not e!1054483))))

(assert (=> b!1644156 (= res!736650 (< (size!14440 (_2!10295 (get!5272 lt!606305))) (size!14440 (list!7182 lt!605658))))))

(declare-fun b!1644157 () Bool)

(declare-fun res!736648 () Bool)

(assert (=> b!1644157 (=> (not res!736648) (not e!1054483))))

(assert (=> b!1644157 (= res!736648 (matchR!2020 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!606305)))) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606305))))))))

(declare-fun bm!105758 () Bool)

(assert (=> bm!105758 (= call!105763 (maxPrefixOneRule!799 thiss!17113 (h!23529 rules!1846) (list!7182 lt!605658)))))

(declare-fun d!495105 () Bool)

(assert (=> d!495105 e!1054481))

(declare-fun res!736647 () Bool)

(assert (=> d!495105 (=> res!736647 e!1054481)))

(assert (=> d!495105 (= res!736647 (isEmpty!11158 lt!606305))))

(assert (=> d!495105 (= lt!606305 e!1054482)))

(declare-fun c!267367 () Bool)

(assert (=> d!495105 (= c!267367 (and ((_ is Cons!18128) rules!1846) ((_ is Nil!18128) (t!150205 rules!1846))))))

(declare-fun lt!606307 () Unit!29917)

(declare-fun lt!606306 () Unit!29917)

(assert (=> d!495105 (= lt!606307 lt!606306)))

(assert (=> d!495105 (isPrefix!1455 (list!7182 lt!605658) (list!7182 lt!605658))))

(assert (=> d!495105 (= lt!606306 (lemmaIsPrefixRefl!984 (list!7182 lt!605658) (list!7182 lt!605658)))))

(assert (=> d!495105 (rulesValidInductive!1006 thiss!17113 rules!1846)))

(assert (=> d!495105 (= (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 lt!605658)) lt!606305)))

(declare-fun b!1644158 () Bool)

(assert (=> b!1644158 (= e!1054483 (contains!3154 rules!1846 (rule!5047 (_1!10295 (get!5272 lt!606305)))))))

(declare-fun b!1644159 () Bool)

(declare-fun res!736649 () Bool)

(assert (=> b!1644159 (=> (not res!736649) (not e!1054483))))

(assert (=> b!1644159 (= res!736649 (= (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606305)))) (originalCharacters!4011 (_1!10295 (get!5272 lt!606305)))))))

(assert (= (and d!495105 c!267367) b!1644153))

(assert (= (and d!495105 (not c!267367)) b!1644151))

(assert (= (or b!1644153 b!1644151) bm!105758))

(assert (= (and d!495105 (not res!736647)) b!1644152))

(assert (= (and b!1644152 res!736651) b!1644159))

(assert (= (and b!1644159 res!736649) b!1644156))

(assert (= (and b!1644156 res!736650) b!1644154))

(assert (= (and b!1644154 res!736646) b!1644155))

(assert (= (and b!1644155 res!736652) b!1644157))

(assert (= (and b!1644157 res!736648) b!1644158))

(declare-fun m!1987123 () Bool)

(assert (=> b!1644156 m!1987123))

(declare-fun m!1987125 () Bool)

(assert (=> b!1644156 m!1987125))

(assert (=> b!1644156 m!1986007))

(declare-fun m!1987127 () Bool)

(assert (=> b!1644156 m!1987127))

(assert (=> bm!105758 m!1986007))

(declare-fun m!1987129 () Bool)

(assert (=> bm!105758 m!1987129))

(assert (=> b!1644159 m!1987123))

(declare-fun m!1987131 () Bool)

(assert (=> b!1644159 m!1987131))

(assert (=> b!1644159 m!1987131))

(declare-fun m!1987133 () Bool)

(assert (=> b!1644159 m!1987133))

(assert (=> b!1644151 m!1986007))

(declare-fun m!1987135 () Bool)

(assert (=> b!1644151 m!1987135))

(assert (=> b!1644155 m!1987123))

(declare-fun m!1987137 () Bool)

(assert (=> b!1644155 m!1987137))

(assert (=> b!1644155 m!1987137))

(declare-fun m!1987139 () Bool)

(assert (=> b!1644155 m!1987139))

(declare-fun m!1987141 () Bool)

(assert (=> b!1644152 m!1987141))

(declare-fun m!1987143 () Bool)

(assert (=> d!495105 m!1987143))

(assert (=> d!495105 m!1986007))

(assert (=> d!495105 m!1986007))

(declare-fun m!1987145 () Bool)

(assert (=> d!495105 m!1987145))

(assert (=> d!495105 m!1986007))

(assert (=> d!495105 m!1986007))

(declare-fun m!1987147 () Bool)

(assert (=> d!495105 m!1987147))

(assert (=> d!495105 m!1986189))

(assert (=> b!1644157 m!1987123))

(assert (=> b!1644157 m!1987131))

(assert (=> b!1644157 m!1987131))

(assert (=> b!1644157 m!1987133))

(assert (=> b!1644157 m!1987133))

(declare-fun m!1987149 () Bool)

(assert (=> b!1644157 m!1987149))

(assert (=> b!1644158 m!1987123))

(declare-fun m!1987151 () Bool)

(assert (=> b!1644158 m!1987151))

(assert (=> b!1644154 m!1987123))

(assert (=> b!1644154 m!1987131))

(assert (=> b!1644154 m!1987131))

(assert (=> b!1644154 m!1987133))

(assert (=> b!1644154 m!1987133))

(declare-fun m!1987153 () Bool)

(assert (=> b!1644154 m!1987153))

(assert (=> b!1643591 d!495105))

(declare-fun d!495107 () Bool)

(assert (=> d!495107 (= (isEmpty!11155 (_2!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))) ((_ is Nil!18126) (_2!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))))))

(assert (=> b!1643591 d!495107))

(declare-fun d!495109 () Bool)

(assert (=> d!495109 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0))) (list!7186 (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0)))))))

(declare-fun bs!395933 () Bool)

(assert (= bs!395933 d!495109))

(declare-fun m!1987155 () Bool)

(assert (=> bs!395933 m!1987155))

(assert (=> b!1643591 d!495109))

(declare-fun d!495111 () Bool)

(declare-fun lt!606308 () BalanceConc!12028)

(assert (=> d!495111 (= (list!7182 lt!606308) (printList!939 thiss!17113 (list!7181 (seqFromList!2134 (t!150204 (t!150204 tokens!457))))))))

(assert (=> d!495111 (= lt!606308 (printTailRec!877 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!495111 (= (print!1357 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) lt!606308)))

(declare-fun bs!395934 () Bool)

(assert (= bs!395934 d!495111))

(declare-fun m!1987157 () Bool)

(assert (=> bs!395934 m!1987157))

(assert (=> bs!395934 m!1985707))

(assert (=> bs!395934 m!1986103))

(assert (=> bs!395934 m!1986103))

(declare-fun m!1987159 () Bool)

(assert (=> bs!395934 m!1987159))

(assert (=> bs!395934 m!1985707))

(declare-fun m!1987161 () Bool)

(assert (=> bs!395934 m!1987161))

(assert (=> b!1643591 d!495111))

(declare-fun d!495113 () Bool)

(declare-fun e!1054484 () Bool)

(assert (=> d!495113 e!1054484))

(declare-fun res!736653 () Bool)

(assert (=> d!495113 (=> (not res!736653) (not e!1054484))))

(declare-fun lt!606309 () BalanceConc!12030)

(assert (=> d!495113 (= res!736653 (= (list!7181 lt!606309) (Cons!18127 (h!23528 (t!150204 tokens!457)) Nil!18127)))))

(assert (=> d!495113 (= lt!606309 (singleton!714 (h!23528 (t!150204 tokens!457))))))

(assert (=> d!495113 (= (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) lt!606309)))

(declare-fun b!1644160 () Bool)

(assert (=> b!1644160 (= e!1054484 (isBalanced!1840 (c!267231 lt!606309)))))

(assert (= (and d!495113 res!736653) b!1644160))

(declare-fun m!1987163 () Bool)

(assert (=> d!495113 m!1987163))

(declare-fun m!1987165 () Bool)

(assert (=> d!495113 m!1987165))

(declare-fun m!1987167 () Bool)

(assert (=> b!1644160 m!1987167))

(assert (=> b!1643591 d!495113))

(declare-fun d!495115 () Bool)

(assert (=> d!495115 (= (list!7181 (_1!10294 lt!605665)) (list!7185 (c!267231 (_1!10294 lt!605665))))))

(declare-fun bs!395935 () Bool)

(assert (= bs!395935 d!495115))

(declare-fun m!1987169 () Bool)

(assert (=> bs!395935 m!1987169))

(assert (=> b!1643591 d!495115))

(declare-fun d!495117 () Bool)

(declare-fun lt!606310 () BalanceConc!12028)

(assert (=> d!495117 (= (list!7182 lt!606310) (printList!939 thiss!17113 (list!7181 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495117 (= lt!606310 (printTailRec!877 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!495117 (= (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457)))) lt!606310)))

(declare-fun bs!395936 () Bool)

(assert (= bs!395936 d!495117))

(declare-fun m!1987171 () Bool)

(assert (=> bs!395936 m!1987171))

(assert (=> bs!395936 m!1986013))

(declare-fun m!1987173 () Bool)

(assert (=> bs!395936 m!1987173))

(assert (=> bs!395936 m!1987173))

(declare-fun m!1987175 () Bool)

(assert (=> bs!395936 m!1987175))

(assert (=> bs!395936 m!1986013))

(assert (=> bs!395936 m!1986033))

(assert (=> b!1643591 d!495117))

(declare-fun d!495119 () Bool)

(declare-fun lt!606311 () BalanceConc!12028)

(assert (=> d!495119 (= (list!7182 lt!606311) (originalCharacters!4011 (h!23528 (t!150204 (t!150204 tokens!457)))))))

(assert (=> d!495119 (= lt!606311 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (value!100787 (h!23528 (t!150204 (t!150204 tokens!457))))))))

(assert (=> d!495119 (= (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) lt!606311)))

(declare-fun b_lambda!51669 () Bool)

(assert (=> (not b_lambda!51669) (not d!495119)))

(declare-fun t!150270 () Bool)

(declare-fun tb!94095 () Bool)

(assert (=> (and b!1643419 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))))) t!150270) tb!94095))

(declare-fun b!1644161 () Bool)

(declare-fun e!1054485 () Bool)

(declare-fun tp!476447 () Bool)

(assert (=> b!1644161 (= e!1054485 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (value!100787 (h!23528 (t!150204 (t!150204 tokens!457))))))) tp!476447))))

(declare-fun result!113650 () Bool)

(assert (=> tb!94095 (= result!113650 (and (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (value!100787 (h!23528 (t!150204 (t!150204 tokens!457)))))) e!1054485))))

(assert (= tb!94095 b!1644161))

(declare-fun m!1987177 () Bool)

(assert (=> b!1644161 m!1987177))

(declare-fun m!1987179 () Bool)

(assert (=> tb!94095 m!1987179))

(assert (=> d!495119 t!150270))

(declare-fun b_and!116645 () Bool)

(assert (= b_and!116621 (and (=> t!150270 result!113650) b_and!116645)))

(declare-fun t!150272 () Bool)

(declare-fun tb!94097 () Bool)

(assert (=> (and b!1643415 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))))) t!150272) tb!94097))

(declare-fun result!113652 () Bool)

(assert (= result!113652 result!113650))

(assert (=> d!495119 t!150272))

(declare-fun b_and!116647 () Bool)

(assert (= b_and!116623 (and (=> t!150272 result!113652) b_and!116647)))

(declare-fun t!150274 () Bool)

(declare-fun tb!94099 () Bool)

(assert (=> (and b!1643795 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))))) t!150274) tb!94099))

(declare-fun result!113654 () Bool)

(assert (= result!113654 result!113650))

(assert (=> d!495119 t!150274))

(declare-fun b_and!116649 () Bool)

(assert (= b_and!116625 (and (=> t!150274 result!113654) b_and!116649)))

(declare-fun t!150276 () Bool)

(declare-fun tb!94101 () Bool)

(assert (=> (and b!1643809 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))))) t!150276) tb!94101))

(declare-fun result!113656 () Bool)

(assert (= result!113656 result!113650))

(assert (=> d!495119 t!150276))

(declare-fun b_and!116651 () Bool)

(assert (= b_and!116627 (and (=> t!150276 result!113656) b_and!116651)))

(declare-fun m!1987181 () Bool)

(assert (=> d!495119 m!1987181))

(declare-fun m!1987183 () Bool)

(assert (=> d!495119 m!1987183))

(assert (=> b!1643591 d!495119))

(declare-fun d!495121 () Bool)

(assert (=> d!495121 (= (head!3589 (originalCharacters!4011 (h!23528 (t!150204 (t!150204 tokens!457))))) (h!23527 (originalCharacters!4011 (h!23528 (t!150204 (t!150204 tokens!457))))))))

(assert (=> b!1643591 d!495121))

(declare-fun b!1644162 () Bool)

(declare-fun e!1054487 () List!18196)

(assert (=> b!1644162 (= e!1054487 lt!605659)))

(declare-fun b!1644164 () Bool)

(declare-fun res!736654 () Bool)

(declare-fun e!1054486 () Bool)

(assert (=> b!1644164 (=> (not res!736654) (not e!1054486))))

(declare-fun lt!606312 () List!18196)

(assert (=> b!1644164 (= res!736654 (= (size!14440 lt!606312) (+ (size!14440 lt!605673) (size!14440 lt!605659))))))

(declare-fun b!1644163 () Bool)

(assert (=> b!1644163 (= e!1054487 (Cons!18126 (h!23527 lt!605673) (++!4878 (t!150203 lt!605673) lt!605659)))))

(declare-fun b!1644165 () Bool)

(assert (=> b!1644165 (= e!1054486 (or (not (= lt!605659 Nil!18126)) (= lt!606312 lt!605673)))))

(declare-fun d!495123 () Bool)

(assert (=> d!495123 e!1054486))

(declare-fun res!736655 () Bool)

(assert (=> d!495123 (=> (not res!736655) (not e!1054486))))

(assert (=> d!495123 (= res!736655 (= (content!2509 lt!606312) ((_ map or) (content!2509 lt!605673) (content!2509 lt!605659))))))

(assert (=> d!495123 (= lt!606312 e!1054487)))

(declare-fun c!267368 () Bool)

(assert (=> d!495123 (= c!267368 ((_ is Nil!18126) lt!605673))))

(assert (=> d!495123 (= (++!4878 lt!605673 lt!605659) lt!606312)))

(assert (= (and d!495123 c!267368) b!1644162))

(assert (= (and d!495123 (not c!267368)) b!1644163))

(assert (= (and d!495123 res!736655) b!1644164))

(assert (= (and b!1644164 res!736654) b!1644165))

(declare-fun m!1987185 () Bool)

(assert (=> b!1644164 m!1987185))

(assert (=> b!1644164 m!1987109))

(declare-fun m!1987187 () Bool)

(assert (=> b!1644164 m!1987187))

(declare-fun m!1987189 () Bool)

(assert (=> b!1644163 m!1987189))

(declare-fun m!1987191 () Bool)

(assert (=> d!495123 m!1987191))

(declare-fun m!1987193 () Bool)

(assert (=> d!495123 m!1987193))

(declare-fun m!1987195 () Bool)

(assert (=> d!495123 m!1987195))

(assert (=> b!1643591 d!495123))

(declare-fun d!495125 () Bool)

(declare-fun lt!606315 () C!9224)

(assert (=> d!495125 (= lt!606315 (head!3589 (list!7182 lt!605669)))))

(declare-fun head!3595 (Conc!6042) C!9224)

(assert (=> d!495125 (= lt!606315 (head!3595 (c!267229 lt!605669)))))

(assert (=> d!495125 (not (isEmpty!11156 lt!605669))))

(assert (=> d!495125 (= (head!3590 lt!605669) lt!606315)))

(declare-fun bs!395937 () Bool)

(assert (= bs!395937 d!495125))

(assert (=> bs!395937 m!1986003))

(assert (=> bs!395937 m!1986003))

(assert (=> bs!395937 m!1986057))

(declare-fun m!1987197 () Bool)

(assert (=> bs!395937 m!1987197))

(declare-fun m!1987199 () Bool)

(assert (=> bs!395937 m!1987199))

(assert (=> b!1643591 d!495125))

(declare-fun d!495127 () Bool)

(declare-fun e!1054488 () Bool)

(assert (=> d!495127 e!1054488))

(declare-fun res!736656 () Bool)

(assert (=> d!495127 (=> (not res!736656) (not e!1054488))))

(assert (=> d!495127 (= res!736656 (isBalanced!1840 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457))))) (h!23528 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606316 () BalanceConc!12030)

(assert (=> d!495127 (= lt!606316 (BalanceConc!12031 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457))))) (h!23528 (t!150204 (t!150204 tokens!457))))))))

(assert (=> d!495127 (= (prepend!749 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 (t!150204 tokens!457)))) lt!606316)))

(declare-fun b!1644166 () Bool)

(assert (=> b!1644166 (= e!1054488 (= (list!7181 lt!606316) (Cons!18127 (h!23528 (t!150204 (t!150204 tokens!457))) (list!7181 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457))))))))))

(assert (= (and d!495127 res!736656) b!1644166))

(declare-fun m!1987201 () Bool)

(assert (=> d!495127 m!1987201))

(assert (=> d!495127 m!1987201))

(declare-fun m!1987203 () Bool)

(assert (=> d!495127 m!1987203))

(declare-fun m!1987205 () Bool)

(assert (=> b!1644166 m!1987205))

(assert (=> b!1644166 m!1986041))

(declare-fun m!1987207 () Bool)

(assert (=> b!1644166 m!1987207))

(assert (=> b!1643591 d!495127))

(declare-fun b!1644167 () Bool)

(declare-fun e!1054490 () Option!3428)

(declare-fun lt!606318 () Option!3428)

(declare-fun lt!606317 () Option!3428)

(assert (=> b!1644167 (= e!1054490 (ite (and ((_ is None!3427) lt!606318) ((_ is None!3427) lt!606317)) None!3427 (ite ((_ is None!3427) lt!606317) lt!606318 (ite ((_ is None!3427) lt!606318) lt!606317 (ite (>= (size!14436 (_1!10295 (v!24552 lt!606318))) (size!14436 (_1!10295 (v!24552 lt!606317)))) lt!606318 lt!606317)))))))

(declare-fun call!105764 () Option!3428)

(assert (=> b!1644167 (= lt!606318 call!105764)))

(assert (=> b!1644167 (= lt!606317 (maxPrefix!1388 thiss!17113 (t!150205 rules!1846) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644168 () Bool)

(declare-fun e!1054489 () Bool)

(declare-fun e!1054491 () Bool)

(assert (=> b!1644168 (= e!1054489 e!1054491)))

(declare-fun res!736662 () Bool)

(assert (=> b!1644168 (=> (not res!736662) (not e!1054491))))

(declare-fun lt!606319 () Option!3428)

(assert (=> b!1644168 (= res!736662 (isDefined!2789 lt!606319))))

(declare-fun b!1644169 () Bool)

(assert (=> b!1644169 (= e!1054490 call!105764)))

(declare-fun b!1644170 () Bool)

(declare-fun res!736657 () Bool)

(assert (=> b!1644170 (=> (not res!736657) (not e!1054491))))

(assert (=> b!1644170 (= res!736657 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606319)))) (_2!10295 (get!5272 lt!606319))) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644171 () Bool)

(declare-fun res!736663 () Bool)

(assert (=> b!1644171 (=> (not res!736663) (not e!1054491))))

(assert (=> b!1644171 (= res!736663 (= (value!100787 (_1!10295 (get!5272 lt!606319))) (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!606319)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!606319)))))))))

(declare-fun b!1644172 () Bool)

(declare-fun res!736661 () Bool)

(assert (=> b!1644172 (=> (not res!736661) (not e!1054491))))

(assert (=> b!1644172 (= res!736661 (< (size!14440 (_2!10295 (get!5272 lt!606319))) (size!14440 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1644173 () Bool)

(declare-fun res!736659 () Bool)

(assert (=> b!1644173 (=> (not res!736659) (not e!1054491))))

(assert (=> b!1644173 (= res!736659 (matchR!2020 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!606319)))) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606319))))))))

(declare-fun bm!105759 () Bool)

(assert (=> bm!105759 (= call!105764 (maxPrefixOneRule!799 thiss!17113 (h!23529 rules!1846) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(declare-fun d!495129 () Bool)

(assert (=> d!495129 e!1054489))

(declare-fun res!736658 () Bool)

(assert (=> d!495129 (=> res!736658 e!1054489)))

(assert (=> d!495129 (= res!736658 (isEmpty!11158 lt!606319))))

(assert (=> d!495129 (= lt!606319 e!1054490)))

(declare-fun c!267369 () Bool)

(assert (=> d!495129 (= c!267369 (and ((_ is Cons!18128) rules!1846) ((_ is Nil!18128) (t!150205 rules!1846))))))

(declare-fun lt!606321 () Unit!29917)

(declare-fun lt!606320 () Unit!29917)

(assert (=> d!495129 (= lt!606321 lt!606320)))

(assert (=> d!495129 (isPrefix!1455 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495129 (= lt!606320 (lemmaIsPrefixRefl!984 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495129 (rulesValidInductive!1006 thiss!17113 rules!1846)))

(assert (=> d!495129 (= (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))) lt!606319)))

(declare-fun b!1644174 () Bool)

(assert (=> b!1644174 (= e!1054491 (contains!3154 rules!1846 (rule!5047 (_1!10295 (get!5272 lt!606319)))))))

(declare-fun b!1644175 () Bool)

(declare-fun res!736660 () Bool)

(assert (=> b!1644175 (=> (not res!736660) (not e!1054491))))

(assert (=> b!1644175 (= res!736660 (= (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606319)))) (originalCharacters!4011 (_1!10295 (get!5272 lt!606319)))))))

(assert (= (and d!495129 c!267369) b!1644169))

(assert (= (and d!495129 (not c!267369)) b!1644167))

(assert (= (or b!1644169 b!1644167) bm!105759))

(assert (= (and d!495129 (not res!736658)) b!1644168))

(assert (= (and b!1644168 res!736662) b!1644175))

(assert (= (and b!1644175 res!736660) b!1644172))

(assert (= (and b!1644172 res!736661) b!1644170))

(assert (= (and b!1644170 res!736657) b!1644171))

(assert (= (and b!1644171 res!736663) b!1644173))

(assert (= (and b!1644173 res!736659) b!1644174))

(declare-fun m!1987209 () Bool)

(assert (=> b!1644172 m!1987209))

(declare-fun m!1987211 () Bool)

(assert (=> b!1644172 m!1987211))

(assert (=> b!1644172 m!1986001))

(declare-fun m!1987213 () Bool)

(assert (=> b!1644172 m!1987213))

(assert (=> bm!105759 m!1986001))

(declare-fun m!1987215 () Bool)

(assert (=> bm!105759 m!1987215))

(assert (=> b!1644175 m!1987209))

(declare-fun m!1987217 () Bool)

(assert (=> b!1644175 m!1987217))

(assert (=> b!1644175 m!1987217))

(declare-fun m!1987219 () Bool)

(assert (=> b!1644175 m!1987219))

(assert (=> b!1644167 m!1986001))

(declare-fun m!1987221 () Bool)

(assert (=> b!1644167 m!1987221))

(assert (=> b!1644171 m!1987209))

(declare-fun m!1987223 () Bool)

(assert (=> b!1644171 m!1987223))

(assert (=> b!1644171 m!1987223))

(declare-fun m!1987225 () Bool)

(assert (=> b!1644171 m!1987225))

(declare-fun m!1987227 () Bool)

(assert (=> b!1644168 m!1987227))

(declare-fun m!1987229 () Bool)

(assert (=> d!495129 m!1987229))

(assert (=> d!495129 m!1986001))

(assert (=> d!495129 m!1986001))

(declare-fun m!1987231 () Bool)

(assert (=> d!495129 m!1987231))

(assert (=> d!495129 m!1986001))

(assert (=> d!495129 m!1986001))

(declare-fun m!1987233 () Bool)

(assert (=> d!495129 m!1987233))

(assert (=> d!495129 m!1986189))

(assert (=> b!1644173 m!1987209))

(assert (=> b!1644173 m!1987217))

(assert (=> b!1644173 m!1987217))

(assert (=> b!1644173 m!1987219))

(assert (=> b!1644173 m!1987219))

(declare-fun m!1987235 () Bool)

(assert (=> b!1644173 m!1987235))

(assert (=> b!1644174 m!1987209))

(declare-fun m!1987237 () Bool)

(assert (=> b!1644174 m!1987237))

(assert (=> b!1644170 m!1987209))

(assert (=> b!1644170 m!1987217))

(assert (=> b!1644170 m!1987217))

(assert (=> b!1644170 m!1987219))

(assert (=> b!1644170 m!1987219))

(declare-fun m!1987239 () Bool)

(assert (=> b!1644170 m!1987239))

(assert (=> b!1643591 d!495129))

(declare-fun d!495131 () Bool)

(assert (=> d!495131 (isPrefix!1455 lt!605673 (++!4878 lt!605673 lt!605659))))

(declare-fun lt!606322 () Unit!29917)

(assert (=> d!495131 (= lt!606322 (choose!9859 lt!605673 lt!605659))))

(assert (=> d!495131 (= (lemmaConcatTwoListThenFirstIsPrefix!980 lt!605673 lt!605659) lt!606322)))

(declare-fun bs!395938 () Bool)

(assert (= bs!395938 d!495131))

(assert (=> bs!395938 m!1986045))

(assert (=> bs!395938 m!1986045))

(assert (=> bs!395938 m!1986053))

(declare-fun m!1987241 () Bool)

(assert (=> bs!395938 m!1987241))

(assert (=> b!1643591 d!495131))

(declare-fun d!495133 () Bool)

(assert (=> d!495133 (= (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))))) (not (isEmpty!11158 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))))

(declare-fun bs!395939 () Bool)

(assert (= bs!395939 d!495133))

(assert (=> bs!395939 m!1986017))

(declare-fun m!1987243 () Bool)

(assert (=> bs!395939 m!1987243))

(assert (=> b!1643591 d!495133))

(declare-fun d!495135 () Bool)

(declare-fun e!1054493 () Bool)

(assert (=> d!495135 e!1054493))

(declare-fun res!736664 () Bool)

(assert (=> d!495135 (=> (not res!736664) (not e!1054493))))

(assert (=> d!495135 (= res!736664 (= (list!7181 (_1!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 tokens!457))))))) (t!150204 (t!150204 tokens!457))))))

(declare-fun lt!606348 () Unit!29917)

(declare-fun e!1054492 () Unit!29917)

(assert (=> d!495135 (= lt!606348 e!1054492)))

(declare-fun c!267370 () Bool)

(assert (=> d!495135 (= c!267370 (or ((_ is Nil!18127) (t!150204 (t!150204 tokens!457))) ((_ is Nil!18127) (t!150204 (t!150204 (t!150204 tokens!457))))))))

(assert (=> d!495135 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495135 (= (theoremInvertabilityWhenTokenListSeparable!269 thiss!17113 rules!1846 (t!150204 (t!150204 tokens!457))) lt!606348)))

(declare-fun b!1644176 () Bool)

(declare-fun Unit!29980 () Unit!29917)

(assert (=> b!1644176 (= e!1054492 Unit!29980)))

(declare-fun b!1644177 () Bool)

(declare-fun Unit!29981 () Unit!29917)

(assert (=> b!1644177 (= e!1054492 Unit!29981)))

(declare-fun lt!606324 () BalanceConc!12028)

(assert (=> b!1644177 (= lt!606324 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))))))

(declare-fun lt!606335 () BalanceConc!12028)

(assert (=> b!1644177 (= lt!606335 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606331 () tuple2!17784)

(assert (=> b!1644177 (= lt!606331 (lex!1310 thiss!17113 rules!1846 lt!606335))))

(declare-fun lt!606339 () List!18196)

(assert (=> b!1644177 (= lt!606339 (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606325 () List!18196)

(assert (=> b!1644177 (= lt!606325 (list!7182 lt!606335))))

(declare-fun lt!606336 () Unit!29917)

(assert (=> b!1644177 (= lt!606336 (lemmaConcatTwoListThenFirstIsPrefix!980 lt!606339 lt!606325))))

(assert (=> b!1644177 (isPrefix!1455 lt!606339 (++!4878 lt!606339 lt!606325))))

(declare-fun lt!606345 () Unit!29917)

(assert (=> b!1644177 (= lt!606345 lt!606336)))

(declare-fun lt!606330 () Unit!29917)

(assert (=> b!1644177 (= lt!606330 (theoremInvertabilityWhenTokenListSeparable!269 thiss!17113 rules!1846 (t!150204 (t!150204 (t!150204 tokens!457)))))))

(declare-fun lt!606347 () Unit!29917)

(assert (=> b!1644177 (= lt!606347 (seqFromListBHdTlConstructive!272 (h!23528 (t!150204 (t!150204 (t!150204 tokens!457)))) (t!150204 (t!150204 (t!150204 (t!150204 tokens!457)))) (_1!10294 lt!606331)))))

(assert (=> b!1644177 (= (list!7181 (_1!10294 lt!606331)) (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 (t!150204 (t!150204 tokens!457))))) (h!23528 (t!150204 (t!150204 (t!150204 tokens!457)))))))))

(declare-fun lt!606341 () Unit!29917)

(assert (=> b!1644177 (= lt!606341 lt!606347)))

(declare-fun lt!606346 () Option!3428)

(assert (=> b!1644177 (= lt!606346 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 lt!606324)))))

(assert (=> b!1644177 (= (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 (t!150204 tokens!457))))) (printTailRec!877 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 (t!150204 tokens!457)))) 0 (BalanceConc!12029 Empty!6042)))))

(declare-fun lt!606340 () Unit!29917)

(declare-fun Unit!29982 () Unit!29917)

(assert (=> b!1644177 (= lt!606340 Unit!29982)))

(declare-fun lt!606342 () Unit!29917)

(assert (=> b!1644177 (= lt!606342 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!395 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457))))) (list!7182 lt!606335)))))

(assert (=> b!1644177 (= (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457))))) (originalCharacters!4011 (h!23528 (t!150204 (t!150204 tokens!457)))))))

(declare-fun lt!606344 () Unit!29917)

(declare-fun Unit!29983 () Unit!29917)

(assert (=> b!1644177 (= lt!606344 Unit!29983)))

(assert (=> b!1644177 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 (t!150204 tokens!457))))) 0))) (Cons!18126 (head!3589 (originalCharacters!4011 (h!23528 (t!150204 (t!150204 (t!150204 tokens!457)))))) Nil!18126))))

(declare-fun lt!606334 () Unit!29917)

(declare-fun Unit!29984 () Unit!29917)

(assert (=> b!1644177 (= lt!606334 Unit!29984)))

(assert (=> b!1644177 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 (t!150204 tokens!457))))) 0))) (Cons!18126 (head!3589 (list!7182 lt!606335)) Nil!18126))))

(declare-fun lt!606333 () Unit!29917)

(declare-fun Unit!29986 () Unit!29917)

(assert (=> b!1644177 (= lt!606333 Unit!29986)))

(assert (=> b!1644177 (= (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 (t!150204 tokens!457))))) 0))) (Cons!18126 (head!3590 lt!606335) Nil!18126))))

(declare-fun lt!606326 () Unit!29917)

(declare-fun Unit!29987 () Unit!29917)

(assert (=> b!1644177 (= lt!606326 Unit!29987)))

(assert (=> b!1644177 (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (originalCharacters!4011 (h!23528 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606343 () Unit!29917)

(declare-fun Unit!29988 () Unit!29917)

(assert (=> b!1644177 (= lt!606343 Unit!29988)))

(assert (=> b!1644177 (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))))))))

(declare-fun lt!606323 () Unit!29917)

(declare-fun Unit!29989 () Unit!29917)

(assert (=> b!1644177 (= lt!606323 Unit!29989)))

(declare-fun lt!606329 () Unit!29917)

(declare-fun Unit!29990 () Unit!29917)

(assert (=> b!1644177 (= lt!606329 Unit!29990)))

(assert (=> b!1644177 (= (_1!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))))))) (h!23528 (t!150204 (t!150204 tokens!457))))))

(declare-fun lt!606338 () Unit!29917)

(declare-fun Unit!29991 () Unit!29917)

(assert (=> b!1644177 (= lt!606338 Unit!29991)))

(assert (=> b!1644177 (isEmpty!11155 (_2!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))))))))))

(declare-fun lt!606328 () Unit!29917)

(declare-fun Unit!29992 () Unit!29917)

(assert (=> b!1644177 (= lt!606328 Unit!29992)))

(assert (=> b!1644177 (matchR!2020 (regex!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))) (list!7182 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606327 () Unit!29917)

(declare-fun Unit!29993 () Unit!29917)

(assert (=> b!1644177 (= lt!606327 Unit!29993)))

(assert (=> b!1644177 (= (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))) (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))))

(declare-fun lt!606337 () Unit!29917)

(declare-fun Unit!29994 () Unit!29917)

(assert (=> b!1644177 (= lt!606337 Unit!29994)))

(declare-fun lt!606332 () Unit!29917)

(assert (=> b!1644177 (= lt!606332 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!157 thiss!17113 rules!1846 (h!23528 (t!150204 (t!150204 tokens!457))) (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))) (list!7182 lt!606335)))))

(declare-fun b!1644178 () Bool)

(assert (=> b!1644178 (= e!1054493 (isEmpty!11156 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 (t!150204 tokens!457))))))))))

(assert (= (and d!495135 c!267370) b!1644176))

(assert (= (and d!495135 (not c!267370)) b!1644177))

(assert (= (and d!495135 res!736664) b!1644178))

(assert (=> d!495135 m!1985995))

(declare-fun m!1987245 () Bool)

(assert (=> d!495135 m!1987245))

(declare-fun m!1987247 () Bool)

(assert (=> d!495135 m!1987247))

(assert (=> d!495135 m!1985707))

(assert (=> d!495135 m!1985995))

(assert (=> d!495135 m!1985699))

(assert (=> d!495135 m!1985707))

(assert (=> b!1644177 m!1986041))

(declare-fun m!1987249 () Bool)

(assert (=> b!1644177 m!1987249))

(declare-fun m!1987251 () Bool)

(assert (=> b!1644177 m!1987251))

(declare-fun m!1987253 () Bool)

(assert (=> b!1644177 m!1987253))

(assert (=> b!1644177 m!1986687))

(declare-fun m!1987255 () Bool)

(assert (=> b!1644177 m!1987255))

(declare-fun m!1987257 () Bool)

(assert (=> b!1644177 m!1987257))

(declare-fun m!1987259 () Bool)

(assert (=> b!1644177 m!1987259))

(declare-fun m!1987261 () Bool)

(assert (=> b!1644177 m!1987261))

(declare-fun m!1987263 () Bool)

(assert (=> b!1644177 m!1987263))

(assert (=> b!1644177 m!1987259))

(declare-fun m!1987265 () Bool)

(assert (=> b!1644177 m!1987265))

(declare-fun m!1987267 () Bool)

(assert (=> b!1644177 m!1987267))

(declare-fun m!1987269 () Bool)

(assert (=> b!1644177 m!1987269))

(declare-fun m!1987271 () Bool)

(assert (=> b!1644177 m!1987271))

(assert (=> b!1644177 m!1985707))

(assert (=> b!1644177 m!1986687))

(declare-fun m!1987273 () Bool)

(assert (=> b!1644177 m!1987273))

(assert (=> b!1644177 m!1986051))

(assert (=> b!1644177 m!1986687))

(declare-fun m!1987275 () Bool)

(assert (=> b!1644177 m!1987275))

(declare-fun m!1987277 () Bool)

(assert (=> b!1644177 m!1987277))

(declare-fun m!1987279 () Bool)

(assert (=> b!1644177 m!1987279))

(declare-fun m!1987281 () Bool)

(assert (=> b!1644177 m!1987281))

(assert (=> b!1644177 m!1987265))

(declare-fun m!1987283 () Bool)

(assert (=> b!1644177 m!1987283))

(declare-fun m!1987285 () Bool)

(assert (=> b!1644177 m!1987285))

(declare-fun m!1987287 () Bool)

(assert (=> b!1644177 m!1987287))

(declare-fun m!1987289 () Bool)

(assert (=> b!1644177 m!1987289))

(assert (=> b!1644177 m!1987279))

(declare-fun m!1987291 () Bool)

(assert (=> b!1644177 m!1987291))

(assert (=> b!1644177 m!1987275))

(assert (=> b!1644177 m!1985707))

(assert (=> b!1644177 m!1985995))

(declare-fun m!1987293 () Bool)

(assert (=> b!1644177 m!1987293))

(declare-fun m!1987295 () Bool)

(assert (=> b!1644177 m!1987295))

(declare-fun m!1987297 () Bool)

(assert (=> b!1644177 m!1987297))

(assert (=> b!1644177 m!1986051))

(assert (=> b!1644177 m!1987255))

(assert (=> b!1644177 m!1987269))

(declare-fun m!1987299 () Bool)

(assert (=> b!1644177 m!1987299))

(assert (=> b!1644177 m!1986687))

(assert (=> b!1644177 m!1987269))

(declare-fun m!1987301 () Bool)

(assert (=> b!1644177 m!1987301))

(assert (=> b!1644177 m!1987289))

(assert (=> b!1644177 m!1987295))

(declare-fun m!1987303 () Bool)

(assert (=> b!1644177 m!1987303))

(assert (=> b!1644177 m!1987255))

(declare-fun m!1987305 () Bool)

(assert (=> b!1644177 m!1987305))

(assert (=> b!1644177 m!1987301))

(assert (=> b!1644177 m!1987255))

(declare-fun m!1987307 () Bool)

(assert (=> b!1644177 m!1987307))

(declare-fun m!1987309 () Bool)

(assert (=> b!1644177 m!1987309))

(declare-fun m!1987311 () Bool)

(assert (=> b!1644177 m!1987311))

(declare-fun m!1987313 () Bool)

(assert (=> b!1644177 m!1987313))

(assert (=> b!1644177 m!1986041))

(assert (=> b!1644177 m!1987309))

(assert (=> b!1644177 m!1987265))

(assert (=> b!1644177 m!1987291))

(assert (=> b!1644178 m!1985707))

(assert (=> b!1644178 m!1985707))

(assert (=> b!1644178 m!1985995))

(assert (=> b!1644178 m!1985995))

(assert (=> b!1644178 m!1987245))

(declare-fun m!1987315 () Bool)

(assert (=> b!1644178 m!1987315))

(assert (=> b!1643591 d!495135))

(declare-fun d!495137 () Bool)

(declare-fun lt!606349 () BalanceConc!12028)

(assert (=> d!495137 (= (list!7182 lt!606349) (printListTailRec!381 thiss!17113 (dropList!652 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) 0) (list!7182 (BalanceConc!12029 Empty!6042))))))

(declare-fun e!1054494 () BalanceConc!12028)

(assert (=> d!495137 (= lt!606349 e!1054494)))

(declare-fun c!267371 () Bool)

(assert (=> d!495137 (= c!267371 (>= 0 (size!14442 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))))

(declare-fun e!1054495 () Bool)

(assert (=> d!495137 e!1054495))

(declare-fun res!736665 () Bool)

(assert (=> d!495137 (=> (not res!736665) (not e!1054495))))

(assert (=> d!495137 (= res!736665 (>= 0 0))))

(assert (=> d!495137 (= (printTailRec!877 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) 0 (BalanceConc!12029 Empty!6042)) lt!606349)))

(declare-fun b!1644179 () Bool)

(assert (=> b!1644179 (= e!1054495 (<= 0 (size!14442 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644180 () Bool)

(assert (=> b!1644180 (= e!1054494 (BalanceConc!12029 Empty!6042))))

(declare-fun b!1644181 () Bool)

(assert (=> b!1644181 (= e!1054494 (printTailRec!877 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) (+ 0 1) (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))) 0)))))))

(declare-fun lt!606352 () List!18197)

(assert (=> b!1644181 (= lt!606352 (list!7181 (singletonSeq!1667 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!606355 () Unit!29917)

(assert (=> b!1644181 (= lt!606355 (lemmaDropApply!588 lt!606352 0))))

(assert (=> b!1644181 (= (head!3593 (drop!900 lt!606352 0)) (apply!4735 lt!606352 0))))

(declare-fun lt!606350 () Unit!29917)

(assert (=> b!1644181 (= lt!606350 lt!606355)))

(declare-fun lt!606353 () List!18197)

(assert (=> b!1644181 (= lt!606353 (list!7181 (singletonSeq!1667 (h!23528 (t!150204 tokens!457)))))))

(declare-fun lt!606354 () Unit!29917)

(assert (=> b!1644181 (= lt!606354 (lemmaDropTail!568 lt!606353 0))))

(assert (=> b!1644181 (= (tail!2420 (drop!900 lt!606353 0)) (drop!900 lt!606353 (+ 0 1)))))

(declare-fun lt!606351 () Unit!29917)

(assert (=> b!1644181 (= lt!606351 lt!606354)))

(assert (= (and d!495137 res!736665) b!1644179))

(assert (= (and d!495137 c!267371) b!1644180))

(assert (= (and d!495137 (not c!267371)) b!1644181))

(declare-fun m!1987317 () Bool)

(assert (=> d!495137 m!1987317))

(assert (=> d!495137 m!1986125))

(declare-fun m!1987319 () Bool)

(assert (=> d!495137 m!1987319))

(assert (=> d!495137 m!1986013))

(declare-fun m!1987321 () Bool)

(assert (=> d!495137 m!1987321))

(assert (=> d!495137 m!1986013))

(assert (=> d!495137 m!1987317))

(assert (=> d!495137 m!1986125))

(declare-fun m!1987323 () Bool)

(assert (=> d!495137 m!1987323))

(assert (=> b!1644179 m!1986013))

(assert (=> b!1644179 m!1987321))

(declare-fun m!1987325 () Bool)

(assert (=> b!1644181 m!1987325))

(declare-fun m!1987327 () Bool)

(assert (=> b!1644181 m!1987327))

(assert (=> b!1644181 m!1987327))

(declare-fun m!1987329 () Bool)

(assert (=> b!1644181 m!1987329))

(assert (=> b!1644181 m!1986013))

(assert (=> b!1644181 m!1987173))

(declare-fun m!1987331 () Bool)

(assert (=> b!1644181 m!1987331))

(declare-fun m!1987333 () Bool)

(assert (=> b!1644181 m!1987333))

(declare-fun m!1987335 () Bool)

(assert (=> b!1644181 m!1987335))

(declare-fun m!1987337 () Bool)

(assert (=> b!1644181 m!1987337))

(declare-fun m!1987339 () Bool)

(assert (=> b!1644181 m!1987339))

(declare-fun m!1987341 () Bool)

(assert (=> b!1644181 m!1987341))

(assert (=> b!1644181 m!1987339))

(assert (=> b!1644181 m!1986013))

(assert (=> b!1644181 m!1987329))

(declare-fun m!1987343 () Bool)

(assert (=> b!1644181 m!1987343))

(assert (=> b!1644181 m!1987335))

(declare-fun m!1987345 () Bool)

(assert (=> b!1644181 m!1987345))

(assert (=> b!1644181 m!1986013))

(assert (=> b!1644181 m!1987325))

(declare-fun m!1987347 () Bool)

(assert (=> b!1644181 m!1987347))

(assert (=> b!1643591 d!495137))

(declare-fun d!495139 () Bool)

(declare-fun lt!606356 () BalanceConc!12028)

(assert (=> d!495139 (= (list!7182 lt!606356) (printList!939 thiss!17113 (list!7181 (seqFromList!2134 (t!150204 tokens!457)))))))

(assert (=> d!495139 (= lt!606356 (printTailRec!877 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)) 0 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!495139 (= (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))) lt!606356)))

(declare-fun bs!395940 () Bool)

(assert (= bs!395940 d!495139))

(declare-fun m!1987349 () Bool)

(assert (=> bs!395940 m!1987349))

(assert (=> bs!395940 m!1985721))

(declare-fun m!1987351 () Bool)

(assert (=> bs!395940 m!1987351))

(assert (=> bs!395940 m!1987351))

(declare-fun m!1987353 () Bool)

(assert (=> bs!395940 m!1987353))

(assert (=> bs!395940 m!1985721))

(declare-fun m!1987355 () Bool)

(assert (=> bs!395940 m!1987355))

(assert (=> b!1643591 d!495139))

(declare-fun d!495141 () Bool)

(declare-fun lt!606357 () BalanceConc!12028)

(assert (=> d!495141 (= (list!7182 lt!606357) (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))))

(assert (=> d!495141 (= lt!606357 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (value!100787 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495141 (= (charsOf!1846 (h!23528 (t!150204 tokens!457))) lt!606357)))

(declare-fun b_lambda!51671 () Bool)

(assert (=> (not b_lambda!51671) (not d!495141)))

(declare-fun tb!94103 () Bool)

(declare-fun t!150278 () Bool)

(assert (=> (and b!1643419 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) t!150278) tb!94103))

(declare-fun b!1644182 () Bool)

(declare-fun e!1054496 () Bool)

(declare-fun tp!476448 () Bool)

(assert (=> b!1644182 (= e!1054496 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (value!100787 (h!23528 (t!150204 tokens!457)))))) tp!476448))))

(declare-fun result!113658 () Bool)

(assert (=> tb!94103 (= result!113658 (and (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (value!100787 (h!23528 (t!150204 tokens!457))))) e!1054496))))

(assert (= tb!94103 b!1644182))

(declare-fun m!1987357 () Bool)

(assert (=> b!1644182 m!1987357))

(declare-fun m!1987359 () Bool)

(assert (=> tb!94103 m!1987359))

(assert (=> d!495141 t!150278))

(declare-fun b_and!116653 () Bool)

(assert (= b_and!116645 (and (=> t!150278 result!113658) b_and!116653)))

(declare-fun t!150280 () Bool)

(declare-fun tb!94105 () Bool)

(assert (=> (and b!1643415 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) t!150280) tb!94105))

(declare-fun result!113660 () Bool)

(assert (= result!113660 result!113658))

(assert (=> d!495141 t!150280))

(declare-fun b_and!116655 () Bool)

(assert (= b_and!116647 (and (=> t!150280 result!113660) b_and!116655)))

(declare-fun tb!94107 () Bool)

(declare-fun t!150282 () Bool)

(assert (=> (and b!1643795 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) t!150282) tb!94107))

(declare-fun result!113662 () Bool)

(assert (= result!113662 result!113658))

(assert (=> d!495141 t!150282))

(declare-fun b_and!116657 () Bool)

(assert (= b_and!116649 (and (=> t!150282 result!113662) b_and!116657)))

(declare-fun t!150284 () Bool)

(declare-fun tb!94109 () Bool)

(assert (=> (and b!1643809 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) t!150284) tb!94109))

(declare-fun result!113664 () Bool)

(assert (= result!113664 result!113658))

(assert (=> d!495141 t!150284))

(declare-fun b_and!116659 () Bool)

(assert (= b_and!116651 (and (=> t!150284 result!113664) b_and!116659)))

(declare-fun m!1987361 () Bool)

(assert (=> d!495141 m!1987361))

(declare-fun m!1987363 () Bool)

(assert (=> d!495141 m!1987363))

(assert (=> b!1643591 d!495141))

(declare-fun d!495143 () Bool)

(assert (=> d!495143 (= (list!7182 lt!605658) (list!7186 (c!267229 lt!605658)))))

(declare-fun bs!395941 () Bool)

(assert (= bs!395941 d!495143))

(declare-fun m!1987365 () Bool)

(assert (=> bs!395941 m!1987365))

(assert (=> b!1643591 d!495143))

(assert (=> b!1643591 d!494909))

(declare-fun d!495145 () Bool)

(assert (=> d!495145 (= (list!7181 (_1!10294 lt!605665)) (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606358 () Unit!29917)

(assert (=> d!495145 (= lt!606358 (choose!9860 (h!23528 (t!150204 (t!150204 tokens!457))) (t!150204 (t!150204 (t!150204 tokens!457))) (_1!10294 lt!605665)))))

(assert (=> d!495145 (= (list!7181 (_1!10294 lt!605665)) (list!7181 (seqFromList!2134 ($colon$colon!356 (t!150204 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 (t!150204 tokens!457)))))))))

(assert (=> d!495145 (= (seqFromListBHdTlConstructive!272 (h!23528 (t!150204 (t!150204 tokens!457))) (t!150204 (t!150204 (t!150204 tokens!457))) (_1!10294 lt!605665)) lt!606358)))

(declare-fun bs!395942 () Bool)

(assert (= bs!395942 d!495145))

(assert (=> bs!395942 m!1986011))

(assert (=> bs!395942 m!1986041))

(assert (=> bs!395942 m!1986025))

(assert (=> bs!395942 m!1986027))

(declare-fun m!1987367 () Bool)

(assert (=> bs!395942 m!1987367))

(declare-fun m!1987369 () Bool)

(assert (=> bs!395942 m!1987369))

(declare-fun m!1987371 () Bool)

(assert (=> bs!395942 m!1987371))

(assert (=> bs!395942 m!1986041))

(assert (=> bs!395942 m!1986025))

(assert (=> bs!395942 m!1987369))

(assert (=> bs!395942 m!1987371))

(declare-fun m!1987373 () Bool)

(assert (=> bs!395942 m!1987373))

(assert (=> b!1643591 d!495145))

(declare-fun lt!606395 () Token!5960)

(declare-fun b!1644192 () Bool)

(declare-fun e!1054502 () Bool)

(assert (=> b!1644192 (= e!1054502 (= (rule!5047 lt!606395) (get!5273 (getRuleFromTag!305 thiss!17113 rules!1846 (tag!3477 (rule!5047 lt!606395))))))))

(declare-fun d!495147 () Bool)

(assert (=> d!495147 (isDefined!2789 (maxPrefix!1388 thiss!17113 rules!1846 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669))))))

(declare-fun lt!606407 () Unit!29917)

(declare-fun e!1054501 () Unit!29917)

(assert (=> d!495147 (= lt!606407 e!1054501)))

(declare-fun c!267374 () Bool)

(assert (=> d!495147 (= c!267374 (isEmpty!11158 (maxPrefix!1388 thiss!17113 rules!1846 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))))

(declare-fun lt!606397 () Unit!29917)

(declare-fun lt!606396 () Unit!29917)

(assert (=> d!495147 (= lt!606397 lt!606396)))

(assert (=> d!495147 e!1054502))

(declare-fun res!736670 () Bool)

(assert (=> d!495147 (=> (not res!736670) (not e!1054502))))

(assert (=> d!495147 (= res!736670 (isDefined!2790 (getRuleFromTag!305 thiss!17113 rules!1846 (tag!3477 (rule!5047 lt!606395)))))))

(assert (=> d!495147 (= lt!606396 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!305 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) lt!606395))))

(declare-fun lt!606399 () Unit!29917)

(declare-fun lt!606405 () Unit!29917)

(assert (=> d!495147 (= lt!606399 lt!606405)))

(declare-fun lt!606401 () List!18196)

(assert (=> d!495147 (isPrefix!1455 lt!606401 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!191 (List!18196 List!18196 List!18196) Unit!29917)

(assert (=> d!495147 (= lt!606405 (lemmaPrefixStaysPrefixWhenAddingToSuffix!191 lt!606401 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))

(assert (=> d!495147 (= lt!606401 (list!7182 (charsOf!1846 lt!606395)))))

(declare-fun lt!606393 () Unit!29917)

(declare-fun lt!606402 () Unit!29917)

(assert (=> d!495147 (= lt!606393 lt!606402)))

(declare-fun lt!606408 () List!18196)

(declare-fun lt!606404 () List!18196)

(assert (=> d!495147 (isPrefix!1455 lt!606408 (++!4878 lt!606408 lt!606404))))

(assert (=> d!495147 (= lt!606402 (lemmaConcatTwoListThenFirstIsPrefix!980 lt!606408 lt!606404))))

(assert (=> d!495147 (= lt!606404 (_2!10295 (get!5272 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))))

(assert (=> d!495147 (= lt!606408 (list!7182 (charsOf!1846 lt!606395)))))

(assert (=> d!495147 (= lt!606395 (head!3593 (list!7181 (_1!10294 (lex!1310 thiss!17113 rules!1846 (seqFromList!2136 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))))))

(assert (=> d!495147 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495147 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!395 thiss!17113 rules!1846 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)) lt!606407)))

(declare-fun b!1644191 () Bool)

(declare-fun res!736671 () Bool)

(assert (=> b!1644191 (=> (not res!736671) (not e!1054502))))

(assert (=> b!1644191 (= res!736671 (matchR!2020 (regex!3197 (get!5273 (getRuleFromTag!305 thiss!17113 rules!1846 (tag!3477 (rule!5047 lt!606395))))) (list!7182 (charsOf!1846 lt!606395))))))

(declare-fun b!1644193 () Bool)

(declare-fun Unit!29996 () Unit!29917)

(assert (=> b!1644193 (= e!1054501 Unit!29996)))

(declare-fun lt!606394 () List!18196)

(assert (=> b!1644193 (= lt!606394 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669)))))

(declare-fun lt!606406 () Unit!29917)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!200 (LexerInterface!2826 Rule!6194 List!18198 List!18196) Unit!29917)

(assert (=> b!1644193 (= lt!606406 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!200 thiss!17113 (rule!5047 lt!606395) rules!1846 lt!606394))))

(assert (=> b!1644193 (isEmpty!11158 (maxPrefixOneRule!799 thiss!17113 (rule!5047 lt!606395) lt!606394))))

(declare-fun lt!606403 () Unit!29917)

(assert (=> b!1644193 (= lt!606403 lt!606406)))

(declare-fun lt!606400 () List!18196)

(assert (=> b!1644193 (= lt!606400 (list!7182 (charsOf!1846 lt!606395)))))

(declare-fun lt!606398 () Unit!29917)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!196 (LexerInterface!2826 Rule!6194 List!18196 List!18196) Unit!29917)

(assert (=> b!1644193 (= lt!606398 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!196 thiss!17113 (rule!5047 lt!606395) lt!606400 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) (list!7182 lt!605669))))))

(assert (=> b!1644193 (not (matchR!2020 (regex!3197 (rule!5047 lt!606395)) lt!606400))))

(declare-fun lt!606409 () Unit!29917)

(assert (=> b!1644193 (= lt!606409 lt!606398)))

(assert (=> b!1644193 false))

(declare-fun b!1644194 () Bool)

(declare-fun Unit!29997 () Unit!29917)

(assert (=> b!1644194 (= e!1054501 Unit!29997)))

(assert (= (and d!495147 res!736670) b!1644191))

(assert (= (and b!1644191 res!736671) b!1644192))

(assert (= (and d!495147 c!267374) b!1644193))

(assert (= (and d!495147 (not c!267374)) b!1644194))

(declare-fun m!1987375 () Bool)

(assert (=> b!1644192 m!1987375))

(assert (=> b!1644192 m!1987375))

(declare-fun m!1987377 () Bool)

(assert (=> b!1644192 m!1987377))

(assert (=> d!495147 m!1986001))

(assert (=> d!495147 m!1986003))

(assert (=> d!495147 m!1987055))

(declare-fun m!1987379 () Bool)

(assert (=> d!495147 m!1987379))

(declare-fun m!1987381 () Bool)

(assert (=> d!495147 m!1987381))

(assert (=> d!495147 m!1987065))

(declare-fun m!1987383 () Bool)

(assert (=> d!495147 m!1987383))

(assert (=> d!495147 m!1986001))

(declare-fun m!1987385 () Bool)

(assert (=> d!495147 m!1987385))

(assert (=> d!495147 m!1986017))

(assert (=> d!495147 m!1986019))

(declare-fun m!1987387 () Bool)

(assert (=> d!495147 m!1987387))

(declare-fun m!1987389 () Bool)

(assert (=> d!495147 m!1987389))

(assert (=> d!495147 m!1986001))

(assert (=> d!495147 m!1986003))

(declare-fun m!1987391 () Bool)

(assert (=> d!495147 m!1987391))

(declare-fun m!1987393 () Bool)

(assert (=> d!495147 m!1987393))

(declare-fun m!1987395 () Bool)

(assert (=> d!495147 m!1987395))

(assert (=> d!495147 m!1987055))

(assert (=> d!495147 m!1987065))

(declare-fun m!1987397 () Bool)

(assert (=> d!495147 m!1987397))

(assert (=> d!495147 m!1987381))

(declare-fun m!1987399 () Bool)

(assert (=> d!495147 m!1987399))

(assert (=> d!495147 m!1987379))

(declare-fun m!1987401 () Bool)

(assert (=> d!495147 m!1987401))

(assert (=> d!495147 m!1986001))

(assert (=> d!495147 m!1986017))

(assert (=> d!495147 m!1987375))

(assert (=> d!495147 m!1987393))

(assert (=> d!495147 m!1987055))

(declare-fun m!1987403 () Bool)

(assert (=> d!495147 m!1987403))

(assert (=> d!495147 m!1987065))

(declare-fun m!1987405 () Bool)

(assert (=> d!495147 m!1987405))

(assert (=> d!495147 m!1987375))

(declare-fun m!1987407 () Bool)

(assert (=> d!495147 m!1987407))

(assert (=> d!495147 m!1985699))

(assert (=> d!495147 m!1986001))

(assert (=> d!495147 m!1987387))

(assert (=> b!1644191 m!1987375))

(assert (=> b!1644191 m!1987377))

(assert (=> b!1644191 m!1987375))

(assert (=> b!1644191 m!1987393))

(assert (=> b!1644191 m!1987395))

(assert (=> b!1644191 m!1987395))

(declare-fun m!1987409 () Bool)

(assert (=> b!1644191 m!1987409))

(assert (=> b!1644191 m!1987393))

(assert (=> b!1644193 m!1986001))

(assert (=> b!1644193 m!1986003))

(assert (=> b!1644193 m!1987055))

(assert (=> b!1644193 m!1987393))

(assert (=> b!1644193 m!1987055))

(declare-fun m!1987411 () Bool)

(assert (=> b!1644193 m!1987411))

(declare-fun m!1987413 () Bool)

(assert (=> b!1644193 m!1987413))

(declare-fun m!1987415 () Bool)

(assert (=> b!1644193 m!1987415))

(assert (=> b!1644193 m!1987413))

(declare-fun m!1987417 () Bool)

(assert (=> b!1644193 m!1987417))

(assert (=> b!1644193 m!1987393))

(assert (=> b!1644193 m!1987395))

(declare-fun m!1987419 () Bool)

(assert (=> b!1644193 m!1987419))

(assert (=> b!1643591 d!495147))

(declare-fun d!495149 () Bool)

(assert (=> d!495149 (= (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 (t!150204 tokens!457))))) (list!7185 (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 (t!150204 tokens!457)))))))))

(declare-fun bs!395943 () Bool)

(assert (= bs!395943 d!495149))

(declare-fun m!1987421 () Bool)

(assert (=> bs!395943 m!1987421))

(assert (=> b!1643591 d!495149))

(declare-fun d!495151 () Bool)

(declare-fun e!1054505 () Bool)

(assert (=> d!495151 e!1054505))

(declare-fun res!736674 () Bool)

(assert (=> d!495151 (=> (not res!736674) (not e!1054505))))

(declare-fun lt!606412 () BalanceConc!12028)

(assert (=> d!495151 (= res!736674 (= (list!7182 lt!606412) (Cons!18126 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0) Nil!18126)))))

(declare-fun singleton!716 (C!9224) BalanceConc!12028)

(assert (=> d!495151 (= lt!606412 (singleton!716 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0)))))

(assert (=> d!495151 (= (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 (t!150204 tokens!457)))) 0)) lt!606412)))

(declare-fun b!1644197 () Bool)

(declare-fun isBalanced!1842 (Conc!6042) Bool)

(assert (=> b!1644197 (= e!1054505 (isBalanced!1842 (c!267229 lt!606412)))))

(assert (= (and d!495151 res!736674) b!1644197))

(declare-fun m!1987423 () Bool)

(assert (=> d!495151 m!1987423))

(assert (=> d!495151 m!1986039))

(declare-fun m!1987425 () Bool)

(assert (=> d!495151 m!1987425))

(declare-fun m!1987427 () Bool)

(assert (=> b!1644197 m!1987427))

(assert (=> b!1643591 d!495151))

(declare-fun d!495153 () Bool)

(assert (=> d!495153 (= (isDefined!2789 lt!605786) (not (isEmpty!11158 lt!605786)))))

(declare-fun bs!395944 () Bool)

(assert (= bs!395944 d!495153))

(assert (=> bs!395944 m!1986183))

(assert (=> b!1643649 d!495153))

(declare-fun d!495155 () Bool)

(declare-fun lt!606415 () Int)

(declare-fun size!14446 (List!18197) Int)

(assert (=> d!495155 (= lt!606415 (size!14446 (list!7181 (_1!10294 lt!605845))))))

(declare-fun size!14447 (Conc!6043) Int)

(assert (=> d!495155 (= lt!606415 (size!14447 (c!267231 (_1!10294 lt!605845))))))

(assert (=> d!495155 (= (size!14442 (_1!10294 lt!605845)) lt!606415)))

(declare-fun bs!395945 () Bool)

(assert (= bs!395945 d!495155))

(assert (=> bs!395945 m!1986345))

(assert (=> bs!395945 m!1986345))

(declare-fun m!1987429 () Bool)

(assert (=> bs!395945 m!1987429))

(declare-fun m!1987431 () Bool)

(assert (=> bs!395945 m!1987431))

(assert (=> d!494911 d!495155))

(declare-fun d!495157 () Bool)

(declare-fun e!1054515 () Bool)

(assert (=> d!495157 e!1054515))

(declare-fun res!736677 () Bool)

(assert (=> d!495157 (=> (not res!736677) (not e!1054515))))

(declare-fun lt!606512 () tuple2!17784)

(declare-fun lexRec!371 (LexerInterface!2826 List!18198 BalanceConc!12028) tuple2!17784)

(assert (=> d!495157 (= res!736677 (= (list!7181 (_1!10294 lt!606512)) (list!7181 (_1!10294 (lexRec!371 thiss!17113 rules!1846 lt!605515)))))))

(declare-fun e!1054516 () tuple2!17784)

(assert (=> d!495157 (= lt!606512 e!1054516)))

(declare-fun c!267381 () Bool)

(declare-datatypes ((tuple2!17794 0))(
  ( (tuple2!17795 (_1!10299 Token!5960) (_2!10299 BalanceConc!12028)) )
))
(declare-datatypes ((Option!3432 0))(
  ( (None!3431) (Some!3431 (v!24566 tuple2!17794)) )
))
(declare-fun lt!606509 () Option!3432)

(assert (=> d!495157 (= c!267381 ((_ is Some!3431) lt!606509))))

(declare-fun maxPrefixZipperSequenceV2!266 (LexerInterface!2826 List!18198 BalanceConc!12028 BalanceConc!12028) Option!3432)

(assert (=> d!495157 (= lt!606509 (maxPrefixZipperSequenceV2!266 thiss!17113 rules!1846 lt!605515 lt!605515))))

(declare-fun lt!606506 () Unit!29917)

(declare-fun lt!606510 () Unit!29917)

(assert (=> d!495157 (= lt!606506 lt!606510)))

(declare-fun lt!606513 () List!18196)

(declare-fun lt!606488 () List!18196)

(declare-fun isSuffix!417 (List!18196 List!18196) Bool)

(assert (=> d!495157 (isSuffix!417 lt!606513 (++!4878 lt!606488 lt!606513))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!318 (List!18196 List!18196) Unit!29917)

(assert (=> d!495157 (= lt!606510 (lemmaConcatTwoListThenFSndIsSuffix!318 lt!606488 lt!606513))))

(assert (=> d!495157 (= lt!606513 (list!7182 lt!605515))))

(assert (=> d!495157 (= lt!606488 (list!7182 (BalanceConc!12029 Empty!6042)))))

(assert (=> d!495157 (= (lexTailRecV2!582 thiss!17113 rules!1846 lt!605515 (BalanceConc!12029 Empty!6042) lt!605515 (BalanceConc!12031 Empty!6043)) lt!606512)))

(declare-fun lt!606495 () Option!3432)

(declare-fun b!1644212 () Bool)

(declare-fun lt!606497 () tuple2!17784)

(assert (=> b!1644212 (= lt!606497 (lexRec!371 thiss!17113 rules!1846 (_2!10299 (v!24566 lt!606495))))))

(declare-fun e!1054514 () tuple2!17784)

(assert (=> b!1644212 (= e!1054514 (tuple2!17785 (prepend!749 (_1!10294 lt!606497) (_1!10299 (v!24566 lt!606495))) (_2!10294 lt!606497)))))

(declare-fun b!1644213 () Bool)

(declare-fun lt!606515 () tuple2!17784)

(declare-fun lt!606485 () Option!3432)

(assert (=> b!1644213 (= lt!606515 (lexRec!371 thiss!17113 rules!1846 (_2!10299 (v!24566 lt!606485))))))

(declare-fun e!1054517 () tuple2!17784)

(assert (=> b!1644213 (= e!1054517 (tuple2!17785 (prepend!749 (_1!10294 lt!606515) (_1!10299 (v!24566 lt!606485))) (_2!10294 lt!606515)))))

(declare-fun b!1644214 () Bool)

(assert (=> b!1644214 (= e!1054516 (tuple2!17785 (BalanceConc!12031 Empty!6043) lt!605515))))

(declare-fun b!1644215 () Bool)

(assert (=> b!1644215 (= e!1054514 (tuple2!17785 (BalanceConc!12031 Empty!6043) lt!605515))))

(declare-fun b!1644216 () Bool)

(assert (=> b!1644216 (= e!1054515 (= (list!7182 (_2!10294 lt!606512)) (list!7182 (_2!10294 (lexRec!371 thiss!17113 rules!1846 lt!605515)))))))

(declare-fun b!1644217 () Bool)

(declare-fun lt!606494 () BalanceConc!12028)

(assert (=> b!1644217 (= e!1054517 (tuple2!17785 (BalanceConc!12031 Empty!6043) lt!606494))))

(declare-fun b!1644218 () Bool)

(declare-fun lt!606491 () BalanceConc!12028)

(declare-fun append!554 (BalanceConc!12030 Token!5960) BalanceConc!12030)

(assert (=> b!1644218 (= e!1054516 (lexTailRecV2!582 thiss!17113 rules!1846 lt!605515 lt!606491 (_2!10299 (v!24566 lt!606509)) (append!554 (BalanceConc!12031 Empty!6043) (_1!10299 (v!24566 lt!606509)))))))

(declare-fun lt!606496 () tuple2!17784)

(assert (=> b!1644218 (= lt!606496 (lexRec!371 thiss!17113 rules!1846 (_2!10299 (v!24566 lt!606509))))))

(declare-fun lt!606505 () List!18196)

(assert (=> b!1644218 (= lt!606505 (list!7182 (BalanceConc!12029 Empty!6042)))))

(declare-fun lt!606504 () List!18196)

(assert (=> b!1644218 (= lt!606504 (list!7182 (charsOf!1846 (_1!10299 (v!24566 lt!606509)))))))

(declare-fun lt!606514 () List!18196)

(assert (=> b!1644218 (= lt!606514 (list!7182 (_2!10299 (v!24566 lt!606509))))))

(declare-fun lt!606486 () Unit!29917)

(declare-fun lemmaConcatAssociativity!1018 (List!18196 List!18196 List!18196) Unit!29917)

(assert (=> b!1644218 (= lt!606486 (lemmaConcatAssociativity!1018 lt!606505 lt!606504 lt!606514))))

(assert (=> b!1644218 (= (++!4878 (++!4878 lt!606505 lt!606504) lt!606514) (++!4878 lt!606505 (++!4878 lt!606504 lt!606514)))))

(declare-fun lt!606503 () Unit!29917)

(assert (=> b!1644218 (= lt!606503 lt!606486)))

(declare-fun maxPrefixZipperSequence!713 (LexerInterface!2826 List!18198 BalanceConc!12028) Option!3432)

(assert (=> b!1644218 (= lt!606495 (maxPrefixZipperSequence!713 thiss!17113 rules!1846 lt!605515))))

(declare-fun c!267383 () Bool)

(assert (=> b!1644218 (= c!267383 ((_ is Some!3431) lt!606495))))

(assert (=> b!1644218 (= (lexRec!371 thiss!17113 rules!1846 lt!605515) e!1054514)))

(declare-fun lt!606517 () Unit!29917)

(declare-fun Unit!29999 () Unit!29917)

(assert (=> b!1644218 (= lt!606517 Unit!29999)))

(declare-fun lt!606499 () List!18197)

(assert (=> b!1644218 (= lt!606499 (list!7181 (BalanceConc!12031 Empty!6043)))))

(declare-fun lt!606511 () List!18197)

(assert (=> b!1644218 (= lt!606511 (Cons!18127 (_1!10299 (v!24566 lt!606509)) Nil!18127))))

(declare-fun lt!606490 () List!18197)

(assert (=> b!1644218 (= lt!606490 (list!7181 (_1!10294 lt!606496)))))

(declare-fun lt!606487 () Unit!29917)

(declare-fun lemmaConcatAssociativity!1019 (List!18197 List!18197 List!18197) Unit!29917)

(assert (=> b!1644218 (= lt!606487 (lemmaConcatAssociativity!1019 lt!606499 lt!606511 lt!606490))))

(declare-fun ++!4883 (List!18197 List!18197) List!18197)

(assert (=> b!1644218 (= (++!4883 (++!4883 lt!606499 lt!606511) lt!606490) (++!4883 lt!606499 (++!4883 lt!606511 lt!606490)))))

(declare-fun lt!606489 () Unit!29917)

(assert (=> b!1644218 (= lt!606489 lt!606487)))

(declare-fun lt!606508 () List!18196)

(assert (=> b!1644218 (= lt!606508 (++!4878 (list!7182 (BalanceConc!12029 Empty!6042)) (list!7182 (charsOf!1846 (_1!10299 (v!24566 lt!606509))))))))

(declare-fun lt!606502 () List!18196)

(assert (=> b!1644218 (= lt!606502 (list!7182 (_2!10299 (v!24566 lt!606509))))))

(declare-fun lt!606507 () List!18197)

(assert (=> b!1644218 (= lt!606507 (list!7181 (append!554 (BalanceConc!12031 Empty!6043) (_1!10299 (v!24566 lt!606509)))))))

(declare-fun lt!606484 () Unit!29917)

(declare-fun lemmaLexThenLexPrefix!259 (LexerInterface!2826 List!18198 List!18196 List!18196 List!18197 List!18197 List!18196) Unit!29917)

(assert (=> b!1644218 (= lt!606484 (lemmaLexThenLexPrefix!259 thiss!17113 rules!1846 lt!606508 lt!606502 lt!606507 (list!7181 (_1!10294 lt!606496)) (list!7182 (_2!10294 lt!606496))))))

(assert (=> b!1644218 (= (lexList!859 thiss!17113 rules!1846 lt!606508) (tuple2!17791 lt!606507 Nil!18126))))

(declare-fun lt!606500 () Unit!29917)

(assert (=> b!1644218 (= lt!606500 lt!606484)))

(assert (=> b!1644218 (= lt!606494 (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (_1!10299 (v!24566 lt!606509)))))))

(assert (=> b!1644218 (= lt!606485 (maxPrefixZipperSequence!713 thiss!17113 rules!1846 lt!606494))))

(declare-fun c!267382 () Bool)

(assert (=> b!1644218 (= c!267382 ((_ is Some!3431) lt!606485))))

(assert (=> b!1644218 (= (lexRec!371 thiss!17113 rules!1846 (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (_1!10299 (v!24566 lt!606509))))) e!1054517)))

(declare-fun lt!606516 () Unit!29917)

(declare-fun Unit!30000 () Unit!29917)

(assert (=> b!1644218 (= lt!606516 Unit!30000)))

(assert (=> b!1644218 (= lt!606491 (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (_1!10299 (v!24566 lt!606509)))))))

(declare-fun lt!606492 () List!18196)

(assert (=> b!1644218 (= lt!606492 (list!7182 lt!606491))))

(declare-fun lt!606501 () List!18196)

(assert (=> b!1644218 (= lt!606501 (list!7182 (_2!10299 (v!24566 lt!606509))))))

(declare-fun lt!606493 () Unit!29917)

(assert (=> b!1644218 (= lt!606493 (lemmaConcatTwoListThenFSndIsSuffix!318 lt!606492 lt!606501))))

(assert (=> b!1644218 (isSuffix!417 lt!606501 (++!4878 lt!606492 lt!606501))))

(declare-fun lt!606498 () Unit!29917)

(assert (=> b!1644218 (= lt!606498 lt!606493)))

(assert (= (and d!495157 c!267381) b!1644218))

(assert (= (and d!495157 (not c!267381)) b!1644214))

(assert (= (and b!1644218 c!267383) b!1644212))

(assert (= (and b!1644218 (not c!267383)) b!1644215))

(assert (= (and b!1644218 c!267382) b!1644213))

(assert (= (and b!1644218 (not c!267382)) b!1644217))

(assert (= (and d!495157 res!736677) b!1644216))

(declare-fun m!1987433 () Bool)

(assert (=> b!1644218 m!1987433))

(declare-fun m!1987435 () Bool)

(assert (=> b!1644218 m!1987435))

(declare-fun m!1987437 () Bool)

(assert (=> b!1644218 m!1987437))

(declare-fun m!1987439 () Bool)

(assert (=> b!1644218 m!1987439))

(declare-fun m!1987441 () Bool)

(assert (=> b!1644218 m!1987441))

(declare-fun m!1987443 () Bool)

(assert (=> b!1644218 m!1987443))

(declare-fun m!1987445 () Bool)

(assert (=> b!1644218 m!1987445))

(assert (=> b!1644218 m!1987435))

(declare-fun m!1987447 () Bool)

(assert (=> b!1644218 m!1987447))

(declare-fun m!1987449 () Bool)

(assert (=> b!1644218 m!1987449))

(declare-fun m!1987451 () Bool)

(assert (=> b!1644218 m!1987451))

(assert (=> b!1644218 m!1986125))

(declare-fun m!1987453 () Bool)

(assert (=> b!1644218 m!1987453))

(declare-fun m!1987455 () Bool)

(assert (=> b!1644218 m!1987455))

(assert (=> b!1644218 m!1987437))

(declare-fun m!1987457 () Bool)

(assert (=> b!1644218 m!1987457))

(declare-fun m!1987459 () Bool)

(assert (=> b!1644218 m!1987459))

(declare-fun m!1987461 () Bool)

(assert (=> b!1644218 m!1987461))

(declare-fun m!1987463 () Bool)

(assert (=> b!1644218 m!1987463))

(declare-fun m!1987465 () Bool)

(assert (=> b!1644218 m!1987465))

(declare-fun m!1987467 () Bool)

(assert (=> b!1644218 m!1987467))

(assert (=> b!1644218 m!1987441))

(declare-fun m!1987469 () Bool)

(assert (=> b!1644218 m!1987469))

(assert (=> b!1644218 m!1987449))

(declare-fun m!1987471 () Bool)

(assert (=> b!1644218 m!1987471))

(assert (=> b!1644218 m!1986125))

(declare-fun m!1987473 () Bool)

(assert (=> b!1644218 m!1987473))

(declare-fun m!1987475 () Bool)

(assert (=> b!1644218 m!1987475))

(declare-fun m!1987477 () Bool)

(assert (=> b!1644218 m!1987477))

(assert (=> b!1644218 m!1987455))

(declare-fun m!1987479 () Bool)

(assert (=> b!1644218 m!1987479))

(assert (=> b!1644218 m!1987443))

(assert (=> b!1644218 m!1987433))

(assert (=> b!1644218 m!1987437))

(declare-fun m!1987481 () Bool)

(assert (=> b!1644218 m!1987481))

(assert (=> b!1644218 m!1987451))

(declare-fun m!1987483 () Bool)

(assert (=> b!1644218 m!1987483))

(declare-fun m!1987485 () Bool)

(assert (=> b!1644218 m!1987485))

(assert (=> b!1644218 m!1987439))

(declare-fun m!1987487 () Bool)

(assert (=> b!1644218 m!1987487))

(assert (=> b!1644218 m!1987477))

(assert (=> b!1644218 m!1987433))

(assert (=> b!1644218 m!1987473))

(declare-fun m!1987489 () Bool)

(assert (=> b!1644218 m!1987489))

(declare-fun m!1987491 () Bool)

(assert (=> b!1644218 m!1987491))

(declare-fun m!1987493 () Bool)

(assert (=> b!1644218 m!1987493))

(declare-fun m!1987495 () Bool)

(assert (=> b!1644218 m!1987495))

(declare-fun m!1987497 () Bool)

(assert (=> d!495157 m!1987497))

(declare-fun m!1987499 () Bool)

(assert (=> d!495157 m!1987499))

(assert (=> d!495157 m!1985713))

(declare-fun m!1987501 () Bool)

(assert (=> d!495157 m!1987501))

(declare-fun m!1987503 () Bool)

(assert (=> d!495157 m!1987503))

(declare-fun m!1987505 () Bool)

(assert (=> d!495157 m!1987505))

(assert (=> d!495157 m!1986125))

(assert (=> d!495157 m!1987463))

(declare-fun m!1987507 () Bool)

(assert (=> d!495157 m!1987507))

(assert (=> d!495157 m!1987501))

(declare-fun m!1987509 () Bool)

(assert (=> b!1644216 m!1987509))

(assert (=> b!1644216 m!1987463))

(declare-fun m!1987511 () Bool)

(assert (=> b!1644216 m!1987511))

(declare-fun m!1987513 () Bool)

(assert (=> b!1644213 m!1987513))

(declare-fun m!1987515 () Bool)

(assert (=> b!1644213 m!1987515))

(declare-fun m!1987517 () Bool)

(assert (=> b!1644212 m!1987517))

(declare-fun m!1987519 () Bool)

(assert (=> b!1644212 m!1987519))

(assert (=> d!494911 d!495157))

(declare-fun d!495159 () Bool)

(declare-fun res!736682 () Bool)

(declare-fun e!1054522 () Bool)

(assert (=> d!495159 (=> res!736682 e!1054522)))

(assert (=> d!495159 (= res!736682 ((_ is Nil!18127) tokens!457))))

(assert (=> d!495159 (= (forall!4129 tokens!457 lambda!67535) e!1054522)))

(declare-fun b!1644223 () Bool)

(declare-fun e!1054523 () Bool)

(assert (=> b!1644223 (= e!1054522 e!1054523)))

(declare-fun res!736683 () Bool)

(assert (=> b!1644223 (=> (not res!736683) (not e!1054523))))

(declare-fun dynLambda!8102 (Int Token!5960) Bool)

(assert (=> b!1644223 (= res!736683 (dynLambda!8102 lambda!67535 (h!23528 tokens!457)))))

(declare-fun b!1644224 () Bool)

(assert (=> b!1644224 (= e!1054523 (forall!4129 (t!150204 tokens!457) lambda!67535))))

(assert (= (and d!495159 (not res!736682)) b!1644223))

(assert (= (and b!1644223 res!736683) b!1644224))

(declare-fun b_lambda!51673 () Bool)

(assert (=> (not b_lambda!51673) (not b!1644223)))

(declare-fun m!1987521 () Bool)

(assert (=> b!1644223 m!1987521))

(declare-fun m!1987523 () Bool)

(assert (=> b!1644224 m!1987523))

(assert (=> d!494801 d!495159))

(assert (=> d!494801 d!494927))

(declare-fun b!1644225 () Bool)

(declare-fun e!1054525 () List!18196)

(assert (=> b!1644225 (= e!1054525 lt!605516)))

(declare-fun b!1644227 () Bool)

(declare-fun res!736684 () Bool)

(declare-fun e!1054524 () Bool)

(assert (=> b!1644227 (=> (not res!736684) (not e!1054524))))

(declare-fun lt!606518 () List!18196)

(assert (=> b!1644227 (= res!736684 (= (size!14440 lt!606518) (+ (size!14440 (t!150203 lt!605502)) (size!14440 lt!605516))))))

(declare-fun b!1644226 () Bool)

(assert (=> b!1644226 (= e!1054525 (Cons!18126 (h!23527 (t!150203 lt!605502)) (++!4878 (t!150203 (t!150203 lt!605502)) lt!605516)))))

(declare-fun b!1644228 () Bool)

(assert (=> b!1644228 (= e!1054524 (or (not (= lt!605516 Nil!18126)) (= lt!606518 (t!150203 lt!605502))))))

(declare-fun d!495161 () Bool)

(assert (=> d!495161 e!1054524))

(declare-fun res!736685 () Bool)

(assert (=> d!495161 (=> (not res!736685) (not e!1054524))))

(assert (=> d!495161 (= res!736685 (= (content!2509 lt!606518) ((_ map or) (content!2509 (t!150203 lt!605502)) (content!2509 lt!605516))))))

(assert (=> d!495161 (= lt!606518 e!1054525)))

(declare-fun c!267384 () Bool)

(assert (=> d!495161 (= c!267384 ((_ is Nil!18126) (t!150203 lt!605502)))))

(assert (=> d!495161 (= (++!4878 (t!150203 lt!605502) lt!605516) lt!606518)))

(assert (= (and d!495161 c!267384) b!1644225))

(assert (= (and d!495161 (not c!267384)) b!1644226))

(assert (= (and d!495161 res!736685) b!1644227))

(assert (= (and b!1644227 res!736684) b!1644228))

(declare-fun m!1987525 () Bool)

(assert (=> b!1644227 m!1987525))

(declare-fun m!1987527 () Bool)

(assert (=> b!1644227 m!1987527))

(assert (=> b!1644227 m!1986365))

(declare-fun m!1987529 () Bool)

(assert (=> b!1644226 m!1987529))

(declare-fun m!1987531 () Bool)

(assert (=> d!495161 m!1987531))

(declare-fun m!1987533 () Bool)

(assert (=> d!495161 m!1987533))

(assert (=> d!495161 m!1986373))

(assert (=> b!1643760 d!495161))

(declare-fun d!495163 () Bool)

(assert (=> d!495163 (= (inv!23481 (tag!3477 (rule!5047 (h!23528 (t!150204 tokens!457))))) (= (mod (str.len (value!100786 (tag!3477 (rule!5047 (h!23528 (t!150204 tokens!457)))))) 2) 0))))

(assert (=> b!1643808 d!495163))

(declare-fun d!495165 () Bool)

(declare-fun res!736686 () Bool)

(declare-fun e!1054526 () Bool)

(assert (=> d!495165 (=> (not res!736686) (not e!1054526))))

(assert (=> d!495165 (= res!736686 (semiInverseModEq!1230 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))))))

(assert (=> d!495165 (= (inv!23484 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) e!1054526)))

(declare-fun b!1644229 () Bool)

(assert (=> b!1644229 (= e!1054526 (equivClasses!1171 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))))))

(assert (= (and d!495165 res!736686) b!1644229))

(declare-fun m!1987535 () Bool)

(assert (=> d!495165 m!1987535))

(declare-fun m!1987537 () Bool)

(assert (=> b!1644229 m!1987537))

(assert (=> b!1643808 d!495165))

(declare-fun b!1644246 () Bool)

(declare-fun e!1054533 () Bool)

(declare-fun isEmpty!11162 (Conc!6043) Bool)

(assert (=> b!1644246 (= e!1054533 (not (isEmpty!11162 (right!14865 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1644247 () Bool)

(declare-fun res!736705 () Bool)

(assert (=> b!1644247 (=> (not res!736705) (not e!1054533))))

(assert (=> b!1644247 (= res!736705 (isBalanced!1840 (right!14865 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644249 () Bool)

(declare-fun res!736706 () Bool)

(assert (=> b!1644249 (=> (not res!736706) (not e!1054533))))

(assert (=> b!1644249 (= res!736706 (isBalanced!1840 (left!14535 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644250 () Bool)

(declare-fun res!736703 () Bool)

(assert (=> b!1644250 (=> (not res!736703) (not e!1054533))))

(assert (=> b!1644250 (= res!736703 (not (isEmpty!11162 (left!14535 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1644251 () Bool)

(declare-fun res!736708 () Bool)

(assert (=> b!1644251 (=> (not res!736708) (not e!1054533))))

(declare-fun height!930 (Conc!6043) Int)

(assert (=> b!1644251 (= res!736708 (<= (- (height!930 (left!14535 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))))) (height!930 (right!14865 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)))))) 1))))

(declare-fun d!495167 () Bool)

(declare-fun res!736707 () Bool)

(declare-fun e!1054534 () Bool)

(assert (=> d!495167 (=> res!736707 e!1054534)))

(assert (=> d!495167 (= res!736707 (not ((_ is Node!6043) (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495167 (= (isBalanced!1840 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457)))) e!1054534)))

(declare-fun b!1644248 () Bool)

(assert (=> b!1644248 (= e!1054534 e!1054533)))

(declare-fun res!736704 () Bool)

(assert (=> b!1644248 (=> (not res!736704) (not e!1054533))))

(assert (=> b!1644248 (= res!736704 (<= (- 1) (- (height!930 (left!14535 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))))) (height!930 (right!14865 (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))))))))))

(assert (= (and d!495167 (not res!736707)) b!1644248))

(assert (= (and b!1644248 res!736704) b!1644251))

(assert (= (and b!1644251 res!736708) b!1644249))

(assert (= (and b!1644249 res!736706) b!1644247))

(assert (= (and b!1644247 res!736705) b!1644250))

(assert (= (and b!1644250 res!736703) b!1644246))

(declare-fun m!1987539 () Bool)

(assert (=> b!1644246 m!1987539))

(declare-fun m!1987541 () Bool)

(assert (=> b!1644248 m!1987541))

(declare-fun m!1987543 () Bool)

(assert (=> b!1644248 m!1987543))

(declare-fun m!1987545 () Bool)

(assert (=> b!1644250 m!1987545))

(declare-fun m!1987547 () Bool)

(assert (=> b!1644247 m!1987547))

(declare-fun m!1987549 () Bool)

(assert (=> b!1644249 m!1987549))

(assert (=> b!1644251 m!1987541))

(assert (=> b!1644251 m!1987543))

(assert (=> d!494877 d!495167))

(declare-fun d!495169 () Bool)

(declare-fun e!1054541 () Bool)

(assert (=> d!495169 e!1054541))

(declare-fun res!736711 () Bool)

(assert (=> d!495169 (=> (not res!736711) (not e!1054541))))

(declare-fun lt!606627 () Conc!6043)

(assert (=> d!495169 (= res!736711 (isBalanced!1840 lt!606627))))

(declare-fun ++!4884 (Conc!6043 Conc!6043) Conc!6043)

(declare-fun fill!101 (Int Token!5960) IArray!12091)

(assert (=> d!495169 (= lt!606627 (++!4884 (Leaf!8862 (fill!101 1 (h!23528 (t!150204 tokens!457))) 1) (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457))))))))

(assert (=> d!495169 (isBalanced!1840 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))))))

(assert (=> d!495169 (= (prepend!751 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 tokens!457))) lt!606627)))

(declare-fun b!1644262 () Bool)

(assert (=> b!1644262 (= e!1054541 (= (list!7185 lt!606627) (Cons!18127 (h!23528 (t!150204 tokens!457)) (list!7185 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457))))))))))

(assert (= (and d!495169 res!736711) b!1644262))

(declare-fun m!1987551 () Bool)

(assert (=> d!495169 m!1987551))

(declare-fun m!1987553 () Bool)

(assert (=> d!495169 m!1987553))

(declare-fun m!1987555 () Bool)

(assert (=> d!495169 m!1987555))

(declare-fun m!1987557 () Bool)

(assert (=> d!495169 m!1987557))

(declare-fun m!1987559 () Bool)

(assert (=> b!1644262 m!1987559))

(declare-fun m!1987561 () Bool)

(assert (=> b!1644262 m!1987561))

(assert (=> d!494877 d!495169))

(declare-fun d!495171 () Bool)

(declare-fun charsToInt!0 (List!18195) (_ BitVec 32))

(assert (=> d!495171 (= (inv!16 (value!100787 (h!23528 tokens!457))) (= (charsToInt!0 (text!23456 (value!100787 (h!23528 tokens!457)))) (value!100778 (value!100787 (h!23528 tokens!457)))))))

(declare-fun bs!395946 () Bool)

(assert (= bs!395946 d!495171))

(declare-fun m!1987563 () Bool)

(assert (=> bs!395946 m!1987563))

(assert (=> b!1643783 d!495171))

(declare-fun d!495173 () Bool)

(assert (=> d!495173 (= (list!7182 lt!605739) (list!7186 (c!267229 lt!605739)))))

(declare-fun bs!395947 () Bool)

(assert (= bs!395947 d!495173))

(declare-fun m!1987565 () Bool)

(assert (=> bs!395947 m!1987565))

(assert (=> d!494893 d!495173))

(declare-fun d!495175 () Bool)

(declare-fun c!267395 () Bool)

(assert (=> d!495175 (= c!267395 ((_ is Cons!18127) (list!7181 lt!605506)))))

(declare-fun e!1054548 () List!18196)

(assert (=> d!495175 (= (printList!939 thiss!17113 (list!7181 lt!605506)) e!1054548)))

(declare-fun b!1644275 () Bool)

(assert (=> b!1644275 (= e!1054548 (++!4878 (list!7182 (charsOf!1846 (h!23528 (list!7181 lt!605506)))) (printList!939 thiss!17113 (t!150204 (list!7181 lt!605506)))))))

(declare-fun b!1644276 () Bool)

(assert (=> b!1644276 (= e!1054548 Nil!18126)))

(assert (= (and d!495175 c!267395) b!1644275))

(assert (= (and d!495175 (not c!267395)) b!1644276))

(declare-fun m!1987567 () Bool)

(assert (=> b!1644275 m!1987567))

(assert (=> b!1644275 m!1987567))

(declare-fun m!1987569 () Bool)

(assert (=> b!1644275 m!1987569))

(declare-fun m!1987571 () Bool)

(assert (=> b!1644275 m!1987571))

(assert (=> b!1644275 m!1987569))

(assert (=> b!1644275 m!1987571))

(declare-fun m!1987573 () Bool)

(assert (=> b!1644275 m!1987573))

(assert (=> d!494893 d!495175))

(declare-fun d!495177 () Bool)

(assert (=> d!495177 (= (list!7181 lt!605506) (list!7185 (c!267231 lt!605506)))))

(declare-fun bs!395948 () Bool)

(assert (= bs!395948 d!495177))

(declare-fun m!1987575 () Bool)

(assert (=> bs!395948 m!1987575))

(assert (=> d!494893 d!495177))

(assert (=> d!494893 d!494891))

(declare-fun b!1644281 () Bool)

(declare-fun e!1054554 () Bool)

(declare-fun e!1054553 () Bool)

(assert (=> b!1644281 (= e!1054554 e!1054553)))

(declare-fun res!736719 () Bool)

(assert (=> b!1644281 (=> (not res!736719) (not e!1054553))))

(declare-fun lt!606664 () Bool)

(assert (=> b!1644281 (= res!736719 (not lt!606664))))

(declare-fun b!1644282 () Bool)

(declare-fun e!1054555 () Bool)

(assert (=> b!1644282 (= e!1054555 (= (head!3589 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) (c!267230 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))))))

(declare-fun b!1644283 () Bool)

(declare-fun e!1054556 () Bool)

(declare-fun e!1054551 () Bool)

(assert (=> b!1644283 (= e!1054556 e!1054551)))

(declare-fun c!267400 () Bool)

(assert (=> b!1644283 (= c!267400 ((_ is EmptyLang!4525) (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun bm!105760 () Bool)

(declare-fun call!105765 () Bool)

(assert (=> bm!105760 (= call!105765 (isEmpty!11155 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun b!1644284 () Bool)

(assert (=> b!1644284 (= e!1054551 (not lt!606664))))

(declare-fun d!495179 () Bool)

(assert (=> d!495179 e!1054556))

(declare-fun c!267399 () Bool)

(assert (=> d!495179 (= c!267399 ((_ is EmptyExpr!4525) (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun e!1054552 () Bool)

(assert (=> d!495179 (= lt!606664 e!1054552)))

(declare-fun c!267398 () Bool)

(assert (=> d!495179 (= c!267398 (isEmpty!11155 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))))))

(assert (=> d!495179 (validRegex!1800 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))))

(assert (=> d!495179 (= (matchR!2020 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) lt!606664)))

(declare-fun b!1644285 () Bool)

(declare-fun res!736714 () Bool)

(declare-fun e!1054557 () Bool)

(assert (=> b!1644285 (=> res!736714 e!1054557)))

(assert (=> b!1644285 (= res!736714 (not (isEmpty!11155 (tail!2418 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))))))))

(declare-fun b!1644286 () Bool)

(assert (=> b!1644286 (= e!1054557 (not (= (head!3589 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786))))) (c!267230 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))))))))

(declare-fun b!1644287 () Bool)

(assert (=> b!1644287 (= e!1054552 (matchR!2020 (derivativeStep!1103 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))) (head!3589 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))))) (tail!2418 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))))))))

(declare-fun b!1644288 () Bool)

(assert (=> b!1644288 (= e!1054552 (nullable!1338 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun b!1644289 () Bool)

(declare-fun res!736713 () Bool)

(assert (=> b!1644289 (=> res!736713 e!1054554)))

(assert (=> b!1644289 (= res!736713 (not ((_ is ElementMatch!4525) (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))))))

(assert (=> b!1644289 (= e!1054551 e!1054554)))

(declare-fun b!1644290 () Bool)

(assert (=> b!1644290 (= e!1054553 e!1054557)))

(declare-fun res!736717 () Bool)

(assert (=> b!1644290 (=> res!736717 e!1054557)))

(assert (=> b!1644290 (= res!736717 call!105765)))

(declare-fun b!1644291 () Bool)

(declare-fun res!736712 () Bool)

(assert (=> b!1644291 (=> res!736712 e!1054554)))

(assert (=> b!1644291 (= res!736712 e!1054555)))

(declare-fun res!736718 () Bool)

(assert (=> b!1644291 (=> (not res!736718) (not e!1054555))))

(assert (=> b!1644291 (= res!736718 lt!606664)))

(declare-fun b!1644292 () Bool)

(assert (=> b!1644292 (= e!1054556 (= lt!606664 call!105765))))

(declare-fun b!1644293 () Bool)

(declare-fun res!736716 () Bool)

(assert (=> b!1644293 (=> (not res!736716) (not e!1054555))))

(assert (=> b!1644293 (= res!736716 (not call!105765))))

(declare-fun b!1644294 () Bool)

(declare-fun res!736715 () Bool)

(assert (=> b!1644294 (=> (not res!736715) (not e!1054555))))

(assert (=> b!1644294 (= res!736715 (isEmpty!11155 (tail!2418 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!605786)))))))))

(assert (= (and d!495179 c!267398) b!1644288))

(assert (= (and d!495179 (not c!267398)) b!1644287))

(assert (= (and d!495179 c!267399) b!1644292))

(assert (= (and d!495179 (not c!267399)) b!1644283))

(assert (= (and b!1644283 c!267400) b!1644284))

(assert (= (and b!1644283 (not c!267400)) b!1644289))

(assert (= (and b!1644289 (not res!736713)) b!1644291))

(assert (= (and b!1644291 res!736718) b!1644293))

(assert (= (and b!1644293 res!736716) b!1644294))

(assert (= (and b!1644294 res!736715) b!1644282))

(assert (= (and b!1644291 (not res!736712)) b!1644281))

(assert (= (and b!1644281 res!736719) b!1644290))

(assert (= (and b!1644290 (not res!736717)) b!1644285))

(assert (= (and b!1644285 (not res!736714)) b!1644286))

(assert (= (or b!1644292 b!1644290 b!1644293) bm!105760))

(assert (=> b!1644282 m!1986173))

(declare-fun m!1987577 () Bool)

(assert (=> b!1644282 m!1987577))

(assert (=> d!495179 m!1986173))

(declare-fun m!1987579 () Bool)

(assert (=> d!495179 m!1987579))

(declare-fun m!1987581 () Bool)

(assert (=> d!495179 m!1987581))

(declare-fun m!1987583 () Bool)

(assert (=> b!1644288 m!1987583))

(assert (=> bm!105760 m!1986173))

(assert (=> bm!105760 m!1987579))

(assert (=> b!1644285 m!1986173))

(declare-fun m!1987585 () Bool)

(assert (=> b!1644285 m!1987585))

(assert (=> b!1644285 m!1987585))

(declare-fun m!1987587 () Bool)

(assert (=> b!1644285 m!1987587))

(assert (=> b!1644287 m!1986173))

(assert (=> b!1644287 m!1987577))

(assert (=> b!1644287 m!1987577))

(declare-fun m!1987589 () Bool)

(assert (=> b!1644287 m!1987589))

(assert (=> b!1644287 m!1986173))

(assert (=> b!1644287 m!1987585))

(assert (=> b!1644287 m!1987589))

(assert (=> b!1644287 m!1987585))

(declare-fun m!1987591 () Bool)

(assert (=> b!1644287 m!1987591))

(assert (=> b!1644294 m!1986173))

(assert (=> b!1644294 m!1987585))

(assert (=> b!1644294 m!1987585))

(assert (=> b!1644294 m!1987587))

(assert (=> b!1644286 m!1986173))

(assert (=> b!1644286 m!1987577))

(assert (=> b!1643654 d!495179))

(assert (=> b!1643654 d!494987))

(assert (=> b!1643654 d!494975))

(assert (=> b!1643654 d!494977))

(declare-fun b!1644296 () Bool)

(declare-fun e!1054558 () List!18196)

(declare-fun e!1054559 () List!18196)

(assert (=> b!1644296 (= e!1054558 e!1054559)))

(declare-fun c!267402 () Bool)

(assert (=> b!1644296 (= c!267402 ((_ is Leaf!8861) (c!267229 lt!605509)))))

(declare-fun b!1644295 () Bool)

(assert (=> b!1644295 (= e!1054558 Nil!18126)))

(declare-fun d!495181 () Bool)

(declare-fun c!267401 () Bool)

(assert (=> d!495181 (= c!267401 ((_ is Empty!6042) (c!267229 lt!605509)))))

(assert (=> d!495181 (= (list!7186 (c!267229 lt!605509)) e!1054558)))

(declare-fun b!1644297 () Bool)

(assert (=> b!1644297 (= e!1054559 (list!7188 (xs!8878 (c!267229 lt!605509))))))

(declare-fun b!1644298 () Bool)

(assert (=> b!1644298 (= e!1054559 (++!4878 (list!7186 (left!14534 (c!267229 lt!605509))) (list!7186 (right!14864 (c!267229 lt!605509)))))))

(assert (= (and d!495181 c!267401) b!1644295))

(assert (= (and d!495181 (not c!267401)) b!1644296))

(assert (= (and b!1644296 c!267402) b!1644297))

(assert (= (and b!1644296 (not c!267402)) b!1644298))

(declare-fun m!1987593 () Bool)

(assert (=> b!1644297 m!1987593))

(declare-fun m!1987595 () Bool)

(assert (=> b!1644298 m!1987595))

(declare-fun m!1987597 () Bool)

(assert (=> b!1644298 m!1987597))

(assert (=> b!1644298 m!1987595))

(assert (=> b!1644298 m!1987597))

(declare-fun m!1987599 () Bool)

(assert (=> b!1644298 m!1987599))

(assert (=> d!494905 d!495181))

(declare-fun bs!395949 () Bool)

(declare-fun d!495183 () Bool)

(assert (= bs!395949 (and d!495183 d!494801)))

(declare-fun lambda!67543 () Int)

(assert (=> bs!395949 (= lambda!67543 lambda!67535)))

(declare-fun b!1644303 () Bool)

(declare-fun e!1054564 () Bool)

(assert (=> b!1644303 (= e!1054564 true)))

(declare-fun b!1644302 () Bool)

(declare-fun e!1054563 () Bool)

(assert (=> b!1644302 (= e!1054563 e!1054564)))

(declare-fun b!1644301 () Bool)

(declare-fun e!1054562 () Bool)

(assert (=> b!1644301 (= e!1054562 e!1054563)))

(assert (=> d!495183 e!1054562))

(assert (= b!1644302 b!1644303))

(assert (= b!1644301 b!1644302))

(assert (= (and d!495183 ((_ is Cons!18128) rules!1846)) b!1644301))

(assert (=> b!1644303 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8096 order!10779 lambda!67543))))

(assert (=> b!1644303 (< (dynLambda!8097 order!10781 (toChars!4495 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8096 order!10779 lambda!67543))))

(assert (=> d!495183 true))

(declare-fun lt!606665 () Bool)

(assert (=> d!495183 (= lt!606665 (forall!4129 (t!150204 tokens!457) lambda!67543))))

(declare-fun e!1054561 () Bool)

(assert (=> d!495183 (= lt!606665 e!1054561)))

(declare-fun res!736720 () Bool)

(assert (=> d!495183 (=> res!736720 e!1054561)))

(assert (=> d!495183 (= res!736720 (not ((_ is Cons!18127) (t!150204 tokens!457))))))

(assert (=> d!495183 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495183 (= (rulesProduceEachTokenIndividuallyList!1028 thiss!17113 rules!1846 (t!150204 tokens!457)) lt!606665)))

(declare-fun b!1644299 () Bool)

(declare-fun e!1054560 () Bool)

(assert (=> b!1644299 (= e!1054561 e!1054560)))

(declare-fun res!736721 () Bool)

(assert (=> b!1644299 (=> (not res!736721) (not e!1054560))))

(assert (=> b!1644299 (= res!736721 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457))))))

(declare-fun b!1644300 () Bool)

(assert (=> b!1644300 (= e!1054560 (rulesProduceEachTokenIndividuallyList!1028 thiss!17113 rules!1846 (t!150204 (t!150204 tokens!457))))))

(assert (= (and d!495183 (not res!736720)) b!1644299))

(assert (= (and b!1644299 res!736721) b!1644300))

(declare-fun m!1987601 () Bool)

(assert (=> d!495183 m!1987601))

(assert (=> d!495183 m!1985699))

(assert (=> b!1644299 m!1986089))

(declare-fun m!1987603 () Bool)

(assert (=> b!1644300 m!1987603))

(assert (=> b!1643554 d!495183))

(declare-fun d!495185 () Bool)

(declare-fun lt!606668 () Int)

(assert (=> d!495185 (>= lt!606668 0)))

(declare-fun e!1054567 () Int)

(assert (=> d!495185 (= lt!606668 e!1054567)))

(declare-fun c!267405 () Bool)

(assert (=> d!495185 (= c!267405 ((_ is Nil!18126) (_2!10295 (get!5272 lt!605786))))))

(assert (=> d!495185 (= (size!14440 (_2!10295 (get!5272 lt!605786))) lt!606668)))

(declare-fun b!1644308 () Bool)

(assert (=> b!1644308 (= e!1054567 0)))

(declare-fun b!1644309 () Bool)

(assert (=> b!1644309 (= e!1054567 (+ 1 (size!14440 (t!150203 (_2!10295 (get!5272 lt!605786))))))))

(assert (= (and d!495185 c!267405) b!1644308))

(assert (= (and d!495185 (not c!267405)) b!1644309))

(declare-fun m!1987605 () Bool)

(assert (=> b!1644309 m!1987605))

(assert (=> b!1643653 d!495185))

(assert (=> b!1643653 d!494987))

(declare-fun d!495187 () Bool)

(declare-fun lt!606669 () Int)

(assert (=> d!495187 (>= lt!606669 0)))

(declare-fun e!1054568 () Int)

(assert (=> d!495187 (= lt!606669 e!1054568)))

(declare-fun c!267406 () Bool)

(assert (=> d!495187 (= c!267406 ((_ is Nil!18126) lt!605504))))

(assert (=> d!495187 (= (size!14440 lt!605504) lt!606669)))

(declare-fun b!1644310 () Bool)

(assert (=> b!1644310 (= e!1054568 0)))

(declare-fun b!1644311 () Bool)

(assert (=> b!1644311 (= e!1054568 (+ 1 (size!14440 (t!150203 lt!605504))))))

(assert (= (and d!495187 c!267406) b!1644310))

(assert (= (and d!495187 (not c!267406)) b!1644311))

(declare-fun m!1987607 () Bool)

(assert (=> b!1644311 m!1987607))

(assert (=> b!1643653 d!495187))

(declare-fun d!495189 () Bool)

(assert (=> d!495189 (= (list!7182 lt!605730) (list!7186 (c!267229 lt!605730)))))

(declare-fun bs!395950 () Bool)

(assert (= bs!395950 d!495189))

(declare-fun m!1987609 () Bool)

(assert (=> bs!395950 m!1987609))

(assert (=> d!494891 d!495189))

(declare-fun d!495191 () Bool)

(declare-fun lt!606670 () Int)

(assert (=> d!495191 (= lt!606670 (size!14446 (list!7181 lt!605506)))))

(assert (=> d!495191 (= lt!606670 (size!14447 (c!267231 lt!605506)))))

(assert (=> d!495191 (= (size!14442 lt!605506) lt!606670)))

(declare-fun bs!395951 () Bool)

(assert (= bs!395951 d!495191))

(assert (=> bs!395951 m!1986139))

(assert (=> bs!395951 m!1986139))

(declare-fun m!1987611 () Bool)

(assert (=> bs!395951 m!1987611))

(declare-fun m!1987613 () Bool)

(assert (=> bs!395951 m!1987613))

(assert (=> d!494891 d!495191))

(declare-fun d!495193 () Bool)

(declare-fun lt!606685 () List!18196)

(assert (=> d!495193 (= lt!606685 (++!4878 (list!7182 (BalanceConc!12029 Empty!6042)) (printList!939 thiss!17113 (dropList!652 lt!605506 0))))))

(declare-fun e!1054571 () List!18196)

(assert (=> d!495193 (= lt!606685 e!1054571)))

(declare-fun c!267409 () Bool)

(assert (=> d!495193 (= c!267409 ((_ is Cons!18127) (dropList!652 lt!605506 0)))))

(assert (=> d!495193 (= (printListTailRec!381 thiss!17113 (dropList!652 lt!605506 0) (list!7182 (BalanceConc!12029 Empty!6042))) lt!606685)))

(declare-fun b!1644316 () Bool)

(assert (=> b!1644316 (= e!1054571 (printListTailRec!381 thiss!17113 (t!150204 (dropList!652 lt!605506 0)) (++!4878 (list!7182 (BalanceConc!12029 Empty!6042)) (list!7182 (charsOf!1846 (h!23528 (dropList!652 lt!605506 0)))))))))

(declare-fun lt!606681 () List!18196)

(assert (=> b!1644316 (= lt!606681 (list!7182 (charsOf!1846 (h!23528 (dropList!652 lt!605506 0)))))))

(declare-fun lt!606682 () List!18196)

(assert (=> b!1644316 (= lt!606682 (printList!939 thiss!17113 (t!150204 (dropList!652 lt!605506 0))))))

(declare-fun lt!606684 () Unit!29917)

(assert (=> b!1644316 (= lt!606684 (lemmaConcatAssociativity!1018 (list!7182 (BalanceConc!12029 Empty!6042)) lt!606681 lt!606682))))

(assert (=> b!1644316 (= (++!4878 (++!4878 (list!7182 (BalanceConc!12029 Empty!6042)) lt!606681) lt!606682) (++!4878 (list!7182 (BalanceConc!12029 Empty!6042)) (++!4878 lt!606681 lt!606682)))))

(declare-fun lt!606683 () Unit!29917)

(assert (=> b!1644316 (= lt!606683 lt!606684)))

(declare-fun b!1644317 () Bool)

(assert (=> b!1644317 (= e!1054571 (list!7182 (BalanceConc!12029 Empty!6042)))))

(assert (= (and d!495193 c!267409) b!1644316))

(assert (= (and d!495193 (not c!267409)) b!1644317))

(assert (=> d!495193 m!1986123))

(declare-fun m!1987615 () Bool)

(assert (=> d!495193 m!1987615))

(assert (=> d!495193 m!1986125))

(assert (=> d!495193 m!1987615))

(declare-fun m!1987617 () Bool)

(assert (=> d!495193 m!1987617))

(assert (=> b!1644316 m!1986125))

(declare-fun m!1987619 () Bool)

(assert (=> b!1644316 m!1987619))

(declare-fun m!1987621 () Bool)

(assert (=> b!1644316 m!1987621))

(declare-fun m!1987623 () Bool)

(assert (=> b!1644316 m!1987623))

(declare-fun m!1987625 () Bool)

(assert (=> b!1644316 m!1987625))

(declare-fun m!1987627 () Bool)

(assert (=> b!1644316 m!1987627))

(declare-fun m!1987629 () Bool)

(assert (=> b!1644316 m!1987629))

(assert (=> b!1644316 m!1987621))

(declare-fun m!1987631 () Bool)

(assert (=> b!1644316 m!1987631))

(assert (=> b!1644316 m!1986125))

(assert (=> b!1644316 m!1987625))

(declare-fun m!1987633 () Bool)

(assert (=> b!1644316 m!1987633))

(declare-fun m!1987635 () Bool)

(assert (=> b!1644316 m!1987635))

(assert (=> b!1644316 m!1986125))

(assert (=> b!1644316 m!1987627))

(assert (=> b!1644316 m!1987635))

(assert (=> b!1644316 m!1987619))

(assert (=> b!1644316 m!1986125))

(declare-fun m!1987637 () Bool)

(assert (=> b!1644316 m!1987637))

(assert (=> d!494891 d!495193))

(declare-fun d!495195 () Bool)

(assert (=> d!495195 (= (list!7182 (BalanceConc!12029 Empty!6042)) (list!7186 (c!267229 (BalanceConc!12029 Empty!6042))))))

(declare-fun bs!395952 () Bool)

(assert (= bs!395952 d!495195))

(declare-fun m!1987639 () Bool)

(assert (=> bs!395952 m!1987639))

(assert (=> d!494891 d!495195))

(declare-fun d!495197 () Bool)

(assert (=> d!495197 (= (dropList!652 lt!605506 0) (drop!900 (list!7185 (c!267231 lt!605506)) 0))))

(declare-fun bs!395953 () Bool)

(assert (= bs!395953 d!495197))

(assert (=> bs!395953 m!1987575))

(assert (=> bs!395953 m!1987575))

(declare-fun m!1987641 () Bool)

(assert (=> bs!395953 m!1987641))

(assert (=> d!494891 d!495197))

(declare-fun b!1644329 () Bool)

(declare-fun e!1054577 () List!18197)

(assert (=> b!1644329 (= e!1054577 (++!4883 (list!7185 (left!14535 (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457)))))) (list!7185 (right!14865 (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457))))))))))

(declare-fun d!495199 () Bool)

(declare-fun c!267414 () Bool)

(assert (=> d!495199 (= c!267414 ((_ is Empty!6043) (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457))))))))

(declare-fun e!1054576 () List!18197)

(assert (=> d!495199 (= (list!7185 (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457))))) e!1054576)))

(declare-fun b!1644328 () Bool)

(declare-fun list!7190 (IArray!12091) List!18197)

(assert (=> b!1644328 (= e!1054577 (list!7190 (xs!8879 (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1644327 () Bool)

(assert (=> b!1644327 (= e!1054576 e!1054577)))

(declare-fun c!267415 () Bool)

(assert (=> b!1644327 (= c!267415 ((_ is Leaf!8862) (c!267231 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457))))))))

(declare-fun b!1644326 () Bool)

(assert (=> b!1644326 (= e!1054576 Nil!18127)))

(assert (= (and d!495199 c!267414) b!1644326))

(assert (= (and d!495199 (not c!267414)) b!1644327))

(assert (= (and b!1644327 c!267415) b!1644328))

(assert (= (and b!1644327 (not c!267415)) b!1644329))

(declare-fun m!1987643 () Bool)

(assert (=> b!1644329 m!1987643))

(declare-fun m!1987645 () Bool)

(assert (=> b!1644329 m!1987645))

(assert (=> b!1644329 m!1987643))

(assert (=> b!1644329 m!1987645))

(declare-fun m!1987647 () Bool)

(assert (=> b!1644329 m!1987647))

(declare-fun m!1987649 () Bool)

(assert (=> b!1644328 m!1987649))

(assert (=> d!494879 d!495199))

(declare-fun d!495201 () Bool)

(assert (=> d!495201 (= (list!7181 (_1!10294 lt!605845)) (list!7185 (c!267231 (_1!10294 lt!605845))))))

(declare-fun bs!395954 () Bool)

(assert (= bs!395954 d!495201))

(declare-fun m!1987651 () Bool)

(assert (=> bs!395954 m!1987651))

(assert (=> b!1643744 d!495201))

(declare-fun b!1644363 () Bool)

(declare-fun e!1054594 () Bool)

(declare-fun lt!606768 () tuple2!17790)

(assert (=> b!1644363 (= e!1054594 (= (_2!10297 lt!606768) (list!7182 lt!605515)))))

(declare-fun b!1644364 () Bool)

(declare-fun e!1054595 () tuple2!17790)

(declare-fun lt!606770 () Option!3428)

(declare-fun lt!606769 () tuple2!17790)

(assert (=> b!1644364 (= e!1054595 (tuple2!17791 (Cons!18127 (_1!10295 (v!24552 lt!606770)) (_1!10297 lt!606769)) (_2!10297 lt!606769)))))

(assert (=> b!1644364 (= lt!606769 (lexList!859 thiss!17113 rules!1846 (_2!10295 (v!24552 lt!606770))))))

(declare-fun d!495203 () Bool)

(assert (=> d!495203 e!1054594))

(declare-fun c!267427 () Bool)

(assert (=> d!495203 (= c!267427 (> (size!14446 (_1!10297 lt!606768)) 0))))

(assert (=> d!495203 (= lt!606768 e!1054595)))

(declare-fun c!267428 () Bool)

(assert (=> d!495203 (= c!267428 ((_ is Some!3427) lt!606770))))

(assert (=> d!495203 (= lt!606770 (maxPrefix!1388 thiss!17113 rules!1846 (list!7182 lt!605515)))))

(assert (=> d!495203 (= (lexList!859 thiss!17113 rules!1846 (list!7182 lt!605515)) lt!606768)))

(declare-fun b!1644365 () Bool)

(declare-fun e!1054596 () Bool)

(assert (=> b!1644365 (= e!1054594 e!1054596)))

(declare-fun res!736733 () Bool)

(assert (=> b!1644365 (= res!736733 (< (size!14440 (_2!10297 lt!606768)) (size!14440 (list!7182 lt!605515))))))

(assert (=> b!1644365 (=> (not res!736733) (not e!1054596))))

(declare-fun b!1644366 () Bool)

(assert (=> b!1644366 (= e!1054595 (tuple2!17791 Nil!18127 (list!7182 lt!605515)))))

(declare-fun b!1644367 () Bool)

(declare-fun isEmpty!11163 (List!18197) Bool)

(assert (=> b!1644367 (= e!1054596 (not (isEmpty!11163 (_1!10297 lt!606768))))))

(assert (= (and d!495203 c!267428) b!1644364))

(assert (= (and d!495203 (not c!267428)) b!1644366))

(assert (= (and d!495203 c!267427) b!1644365))

(assert (= (and d!495203 (not c!267427)) b!1644363))

(assert (= (and b!1644365 res!736733) b!1644367))

(declare-fun m!1987799 () Bool)

(assert (=> b!1644364 m!1987799))

(declare-fun m!1987801 () Bool)

(assert (=> d!495203 m!1987801))

(assert (=> d!495203 m!1985713))

(declare-fun m!1987803 () Bool)

(assert (=> d!495203 m!1987803))

(declare-fun m!1987805 () Bool)

(assert (=> b!1644365 m!1987805))

(assert (=> b!1644365 m!1985713))

(declare-fun m!1987807 () Bool)

(assert (=> b!1644365 m!1987807))

(declare-fun m!1987809 () Bool)

(assert (=> b!1644367 m!1987809))

(assert (=> b!1643744 d!495203))

(assert (=> b!1643744 d!494903))

(assert (=> d!494859 d!494927))

(declare-fun e!1054597 () Bool)

(declare-fun lt!606771 () tuple2!17784)

(declare-fun b!1644368 () Bool)

(assert (=> b!1644368 (= e!1054597 (= (_2!10294 lt!606771) (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)))))))

(declare-fun d!495211 () Bool)

(declare-fun e!1054599 () Bool)

(assert (=> d!495211 e!1054599))

(declare-fun res!736735 () Bool)

(assert (=> d!495211 (=> (not res!736735) (not e!1054599))))

(assert (=> d!495211 (= res!736735 e!1054597)))

(declare-fun c!267429 () Bool)

(assert (=> d!495211 (= c!267429 (> (size!14442 (_1!10294 lt!606771)) 0))))

(assert (=> d!495211 (= lt!606771 (lexTailRecV2!582 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))) (BalanceConc!12029 Empty!6042) (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))) (BalanceConc!12031 Empty!6043)))))

(assert (=> d!495211 (= (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)))) lt!606771)))

(declare-fun b!1644369 () Bool)

(declare-fun e!1054598 () Bool)

(assert (=> b!1644369 (= e!1054597 e!1054598)))

(declare-fun res!736734 () Bool)

(assert (=> b!1644369 (= res!736734 (< (size!14441 (_2!10294 lt!606771)) (size!14441 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))))

(assert (=> b!1644369 (=> (not res!736734) (not e!1054598))))

(declare-fun b!1644370 () Bool)

(assert (=> b!1644370 (= e!1054599 (= (list!7182 (_2!10294 lt!606771)) (_2!10297 (lexList!859 thiss!17113 rules!1846 (list!7182 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))))))

(declare-fun b!1644371 () Bool)

(declare-fun res!736736 () Bool)

(assert (=> b!1644371 (=> (not res!736736) (not e!1054599))))

(assert (=> b!1644371 (= res!736736 (= (list!7181 (_1!10294 lt!606771)) (_1!10297 (lexList!859 thiss!17113 rules!1846 (list!7182 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))))))

(declare-fun b!1644372 () Bool)

(assert (=> b!1644372 (= e!1054598 (not (isEmpty!11159 (_1!10294 lt!606771))))))

(assert (= (and d!495211 c!267429) b!1644369))

(assert (= (and d!495211 (not c!267429)) b!1644368))

(assert (= (and b!1644369 res!736734) b!1644372))

(assert (= (and d!495211 res!736735) b!1644371))

(assert (= (and b!1644371 res!736736) b!1644370))

(declare-fun m!1987811 () Bool)

(assert (=> b!1644369 m!1987811))

(assert (=> b!1644369 m!1985989))

(declare-fun m!1987813 () Bool)

(assert (=> b!1644369 m!1987813))

(declare-fun m!1987815 () Bool)

(assert (=> d!495211 m!1987815))

(assert (=> d!495211 m!1985989))

(assert (=> d!495211 m!1985989))

(declare-fun m!1987817 () Bool)

(assert (=> d!495211 m!1987817))

(declare-fun m!1987819 () Bool)

(assert (=> b!1644370 m!1987819))

(assert (=> b!1644370 m!1985989))

(declare-fun m!1987821 () Bool)

(assert (=> b!1644370 m!1987821))

(assert (=> b!1644370 m!1987821))

(declare-fun m!1987823 () Bool)

(assert (=> b!1644370 m!1987823))

(declare-fun m!1987825 () Bool)

(assert (=> b!1644372 m!1987825))

(declare-fun m!1987827 () Bool)

(assert (=> b!1644371 m!1987827))

(assert (=> b!1644371 m!1985989))

(assert (=> b!1644371 m!1987821))

(assert (=> b!1644371 m!1987821))

(assert (=> b!1644371 m!1987823))

(assert (=> d!494859 d!495211))

(assert (=> d!494859 d!495139))

(assert (=> d!494859 d!494909))

(declare-fun d!495213 () Bool)

(assert (=> d!495213 (= (list!7181 (_1!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)))))) (list!7185 (c!267231 (_1!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))))))

(declare-fun bs!395955 () Bool)

(assert (= bs!395955 d!495213))

(declare-fun m!1987829 () Bool)

(assert (=> bs!395955 m!1987829))

(assert (=> d!494859 d!495213))

(declare-fun b!1644373 () Bool)

(declare-fun e!1054600 () Bool)

(assert (=> b!1644373 (= e!1054600 (not (isEmpty!11162 (right!14865 (c!267231 lt!605809)))))))

(declare-fun b!1644374 () Bool)

(declare-fun res!736739 () Bool)

(assert (=> b!1644374 (=> (not res!736739) (not e!1054600))))

(assert (=> b!1644374 (= res!736739 (isBalanced!1840 (right!14865 (c!267231 lt!605809))))))

(declare-fun b!1644376 () Bool)

(declare-fun res!736740 () Bool)

(assert (=> b!1644376 (=> (not res!736740) (not e!1054600))))

(assert (=> b!1644376 (= res!736740 (isBalanced!1840 (left!14535 (c!267231 lt!605809))))))

(declare-fun b!1644377 () Bool)

(declare-fun res!736737 () Bool)

(assert (=> b!1644377 (=> (not res!736737) (not e!1054600))))

(assert (=> b!1644377 (= res!736737 (not (isEmpty!11162 (left!14535 (c!267231 lt!605809)))))))

(declare-fun b!1644378 () Bool)

(declare-fun res!736742 () Bool)

(assert (=> b!1644378 (=> (not res!736742) (not e!1054600))))

(assert (=> b!1644378 (= res!736742 (<= (- (height!930 (left!14535 (c!267231 lt!605809))) (height!930 (right!14865 (c!267231 lt!605809)))) 1))))

(declare-fun d!495215 () Bool)

(declare-fun res!736741 () Bool)

(declare-fun e!1054601 () Bool)

(assert (=> d!495215 (=> res!736741 e!1054601)))

(assert (=> d!495215 (= res!736741 (not ((_ is Node!6043) (c!267231 lt!605809))))))

(assert (=> d!495215 (= (isBalanced!1840 (c!267231 lt!605809)) e!1054601)))

(declare-fun b!1644375 () Bool)

(assert (=> b!1644375 (= e!1054601 e!1054600)))

(declare-fun res!736738 () Bool)

(assert (=> b!1644375 (=> (not res!736738) (not e!1054600))))

(assert (=> b!1644375 (= res!736738 (<= (- 1) (- (height!930 (left!14535 (c!267231 lt!605809))) (height!930 (right!14865 (c!267231 lt!605809))))))))

(assert (= (and d!495215 (not res!736741)) b!1644375))

(assert (= (and b!1644375 res!736738) b!1644378))

(assert (= (and b!1644378 res!736742) b!1644376))

(assert (= (and b!1644376 res!736740) b!1644374))

(assert (= (and b!1644374 res!736739) b!1644377))

(assert (= (and b!1644377 res!736737) b!1644373))

(declare-fun m!1987831 () Bool)

(assert (=> b!1644373 m!1987831))

(declare-fun m!1987833 () Bool)

(assert (=> b!1644375 m!1987833))

(declare-fun m!1987835 () Bool)

(assert (=> b!1644375 m!1987835))

(declare-fun m!1987837 () Bool)

(assert (=> b!1644377 m!1987837))

(declare-fun m!1987839 () Bool)

(assert (=> b!1644374 m!1987839))

(declare-fun m!1987841 () Bool)

(assert (=> b!1644376 m!1987841))

(assert (=> b!1644378 m!1987833))

(assert (=> b!1644378 m!1987835))

(assert (=> b!1643667 d!495215))

(declare-fun d!495217 () Bool)

(declare-fun lt!606774 () Int)

(assert (=> d!495217 (= lt!606774 (size!14440 (list!7182 (_2!10294 lt!605845))))))

(declare-fun size!14448 (Conc!6042) Int)

(assert (=> d!495217 (= lt!606774 (size!14448 (c!267229 (_2!10294 lt!605845))))))

(assert (=> d!495217 (= (size!14441 (_2!10294 lt!605845)) lt!606774)))

(declare-fun bs!395956 () Bool)

(assert (= bs!395956 d!495217))

(assert (=> bs!395956 m!1986339))

(assert (=> bs!395956 m!1986339))

(declare-fun m!1987843 () Bool)

(assert (=> bs!395956 m!1987843))

(declare-fun m!1987845 () Bool)

(assert (=> bs!395956 m!1987845))

(assert (=> b!1643742 d!495217))

(declare-fun d!495219 () Bool)

(declare-fun lt!606775 () Int)

(assert (=> d!495219 (= lt!606775 (size!14440 (list!7182 lt!605515)))))

(assert (=> d!495219 (= lt!606775 (size!14448 (c!267229 lt!605515)))))

(assert (=> d!495219 (= (size!14441 lt!605515) lt!606775)))

(declare-fun bs!395957 () Bool)

(assert (= bs!395957 d!495219))

(assert (=> bs!395957 m!1985713))

(assert (=> bs!395957 m!1985713))

(assert (=> bs!395957 m!1987807))

(declare-fun m!1987847 () Bool)

(assert (=> bs!395957 m!1987847))

(assert (=> b!1643742 d!495219))

(declare-fun d!495221 () Bool)

(assert (=> d!495221 true))

(declare-fun lt!606778 () Bool)

(assert (=> d!495221 (= lt!606778 (rulesValidInductive!1006 thiss!17113 rules!1846))))

(declare-fun lambda!67546 () Int)

(declare-fun forall!4131 (List!18198 Int) Bool)

(assert (=> d!495221 (= lt!606778 (forall!4131 rules!1846 lambda!67546))))

(assert (=> d!495221 (= (rulesValid!1158 thiss!17113 rules!1846) lt!606778)))

(declare-fun bs!395958 () Bool)

(assert (= bs!395958 d!495221))

(assert (=> bs!395958 m!1986189))

(declare-fun m!1987849 () Bool)

(assert (=> bs!395958 m!1987849))

(assert (=> d!494799 d!495221))

(declare-fun d!495223 () Bool)

(declare-fun res!736744 () Bool)

(declare-fun e!1054603 () Bool)

(assert (=> d!495223 (=> res!736744 e!1054603)))

(assert (=> d!495223 (= res!736744 (or (not ((_ is Cons!18127) (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))) (not ((_ is Cons!18127) (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))))))))

(assert (=> d!495223 (= (tokensListTwoByTwoPredicateSeparableList!519 thiss!17113 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))) rules!1846) e!1054603)))

(declare-fun b!1644381 () Bool)

(declare-fun e!1054602 () Bool)

(assert (=> b!1644381 (= e!1054603 e!1054602)))

(declare-fun res!736743 () Bool)

(assert (=> b!1644381 (=> (not res!736743) (not e!1054602))))

(assert (=> b!1644381 (= res!736743 (separableTokensPredicate!766 thiss!17113 (h!23528 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)))) (h!23528 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))) rules!1846))))

(declare-fun lt!606783 () Unit!29917)

(declare-fun Unit!30015 () Unit!29917)

(assert (=> b!1644381 (= lt!606783 Unit!30015)))

(assert (=> b!1644381 (> (size!14441 (charsOf!1846 (h!23528 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))))) 0)))

(declare-fun lt!606781 () Unit!29917)

(declare-fun Unit!30016 () Unit!29917)

(assert (=> b!1644381 (= lt!606781 Unit!30016)))

(assert (=> b!1644381 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))))))

(declare-fun lt!606785 () Unit!29917)

(declare-fun Unit!30017 () Unit!29917)

(assert (=> b!1644381 (= lt!606785 Unit!30017)))

(assert (=> b!1644381 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)))))))

(declare-fun lt!606782 () Unit!29917)

(declare-fun lt!606784 () Unit!29917)

(assert (=> b!1644381 (= lt!606782 lt!606784)))

(assert (=> b!1644381 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))))))

(assert (=> b!1644381 (= lt!606784 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 thiss!17113 rules!1846 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)))))))))

(declare-fun lt!606780 () Unit!29917)

(declare-fun lt!606779 () Unit!29917)

(assert (=> b!1644381 (= lt!606780 lt!606779)))

(assert (=> b!1644381 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)))))))

(assert (=> b!1644381 (= lt!606779 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 thiss!17113 rules!1846 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))) (h!23528 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))))))

(declare-fun b!1644382 () Bool)

(assert (=> b!1644382 (= e!1054602 (tokensListTwoByTwoPredicateSeparableList!519 thiss!17113 (Cons!18127 (h!23528 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))) (t!150204 (t!150204 (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)))))) rules!1846))))

(assert (= (and d!495223 (not res!736744)) b!1644381))

(assert (= (and b!1644381 res!736743) b!1644382))

(declare-fun m!1987851 () Bool)

(assert (=> b!1644381 m!1987851))

(declare-fun m!1987853 () Bool)

(assert (=> b!1644381 m!1987853))

(declare-fun m!1987855 () Bool)

(assert (=> b!1644381 m!1987855))

(declare-fun m!1987857 () Bool)

(assert (=> b!1644381 m!1987857))

(assert (=> b!1644381 m!1987851))

(declare-fun m!1987859 () Bool)

(assert (=> b!1644381 m!1987859))

(declare-fun m!1987861 () Bool)

(assert (=> b!1644381 m!1987861))

(declare-fun m!1987863 () Bool)

(assert (=> b!1644381 m!1987863))

(declare-fun m!1987865 () Bool)

(assert (=> b!1644382 m!1987865))

(assert (=> b!1643610 d!495223))

(declare-fun d!495225 () Bool)

(assert (=> d!495225 true))

(declare-fun lambda!67549 () Int)

(declare-fun order!10789 () Int)

(declare-fun dynLambda!8104 (Int Int) Int)

(assert (=> d!495225 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8104 order!10789 lambda!67549))))

(declare-fun Forall2!520 (Int) Bool)

(assert (=> d!495225 (= (equivClasses!1171 (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (Forall2!520 lambda!67549))))

(declare-fun bs!395959 () Bool)

(assert (= bs!395959 d!495225))

(declare-fun m!1987867 () Bool)

(assert (=> bs!395959 m!1987867))

(assert (=> b!1643616 d!495225))

(declare-fun d!495227 () Bool)

(declare-fun e!1054608 () Bool)

(assert (=> d!495227 e!1054608))

(declare-fun res!736749 () Bool)

(assert (=> d!495227 (=> (not res!736749) (not e!1054608))))

(declare-fun lt!606788 () BalanceConc!12030)

(assert (=> d!495227 (= res!736749 (= (list!7181 lt!606788) tokens!457))))

(declare-fun fromList!392 (List!18197) Conc!6043)

(assert (=> d!495227 (= lt!606788 (BalanceConc!12031 (fromList!392 tokens!457)))))

(assert (=> d!495227 (= (fromListB!943 tokens!457) lt!606788)))

(declare-fun b!1644389 () Bool)

(assert (=> b!1644389 (= e!1054608 (isBalanced!1840 (fromList!392 tokens!457)))))

(assert (= (and d!495227 res!736749) b!1644389))

(declare-fun m!1987869 () Bool)

(assert (=> d!495227 m!1987869))

(declare-fun m!1987871 () Bool)

(assert (=> d!495227 m!1987871))

(assert (=> b!1644389 m!1987871))

(assert (=> b!1644389 m!1987871))

(declare-fun m!1987873 () Bool)

(assert (=> b!1644389 m!1987873))

(assert (=> d!494907 d!495227))

(declare-fun b!1644390 () Bool)

(declare-fun e!1054611 () Bool)

(declare-fun e!1054610 () Bool)

(assert (=> b!1644390 (= e!1054611 e!1054610)))

(declare-fun res!736750 () Bool)

(assert (=> b!1644390 (=> (not res!736750) (not e!1054610))))

(assert (=> b!1644390 (= res!736750 (not ((_ is Nil!18126) (++!4878 lt!605502 lt!605516))))))

(declare-fun b!1644393 () Bool)

(declare-fun e!1054609 () Bool)

(assert (=> b!1644393 (= e!1054609 (>= (size!14440 (++!4878 lt!605502 lt!605516)) (size!14440 lt!605502)))))

(declare-fun b!1644391 () Bool)

(declare-fun res!736753 () Bool)

(assert (=> b!1644391 (=> (not res!736753) (not e!1054610))))

(assert (=> b!1644391 (= res!736753 (= (head!3589 lt!605502) (head!3589 (++!4878 lt!605502 lt!605516))))))

(declare-fun b!1644392 () Bool)

(assert (=> b!1644392 (= e!1054610 (isPrefix!1455 (tail!2418 lt!605502) (tail!2418 (++!4878 lt!605502 lt!605516))))))

(declare-fun d!495229 () Bool)

(assert (=> d!495229 e!1054609))

(declare-fun res!736751 () Bool)

(assert (=> d!495229 (=> res!736751 e!1054609)))

(declare-fun lt!606789 () Bool)

(assert (=> d!495229 (= res!736751 (not lt!606789))))

(assert (=> d!495229 (= lt!606789 e!1054611)))

(declare-fun res!736752 () Bool)

(assert (=> d!495229 (=> res!736752 e!1054611)))

(assert (=> d!495229 (= res!736752 ((_ is Nil!18126) lt!605502))))

(assert (=> d!495229 (= (isPrefix!1455 lt!605502 (++!4878 lt!605502 lt!605516)) lt!606789)))

(assert (= (and d!495229 (not res!736752)) b!1644390))

(assert (= (and b!1644390 res!736750) b!1644391))

(assert (= (and b!1644391 res!736753) b!1644392))

(assert (= (and d!495229 (not res!736751)) b!1644393))

(assert (=> b!1644393 m!1985723))

(declare-fun m!1987875 () Bool)

(assert (=> b!1644393 m!1987875))

(assert (=> b!1644393 m!1986069))

(assert (=> b!1644391 m!1986071))

(assert (=> b!1644391 m!1985723))

(declare-fun m!1987877 () Bool)

(assert (=> b!1644391 m!1987877))

(assert (=> b!1644392 m!1986075))

(assert (=> b!1644392 m!1985723))

(declare-fun m!1987879 () Bool)

(assert (=> b!1644392 m!1987879))

(assert (=> b!1644392 m!1986075))

(assert (=> b!1644392 m!1987879))

(declare-fun m!1987881 () Bool)

(assert (=> b!1644392 m!1987881))

(assert (=> d!494871 d!495229))

(assert (=> d!494871 d!494923))

(declare-fun d!495231 () Bool)

(assert (=> d!495231 (isPrefix!1455 lt!605502 (++!4878 lt!605502 lt!605516))))

(assert (=> d!495231 true))

(declare-fun _$46!1100 () Unit!29917)

(assert (=> d!495231 (= (choose!9859 lt!605502 lt!605516) _$46!1100)))

(declare-fun bs!395960 () Bool)

(assert (= bs!395960 d!495231))

(assert (=> bs!395960 m!1985723))

(assert (=> bs!395960 m!1985723))

(assert (=> bs!395960 m!1986081))

(assert (=> d!494871 d!495231))

(assert (=> d!494881 d!494877))

(declare-fun d!495233 () Bool)

(assert (=> d!495233 (= (list!7181 (seqFromList!2134 ($colon$colon!356 (t!150204 (t!150204 tokens!457)) (h!23528 (t!150204 tokens!457))))) (list!7185 (c!267231 (seqFromList!2134 ($colon$colon!356 (t!150204 (t!150204 tokens!457)) (h!23528 (t!150204 tokens!457)))))))))

(declare-fun bs!395961 () Bool)

(assert (= bs!395961 d!495233))

(declare-fun m!1987883 () Bool)

(assert (=> bs!395961 m!1987883))

(assert (=> d!494881 d!495233))

(declare-fun d!495235 () Bool)

(assert (=> d!495235 (= ($colon$colon!356 (t!150204 (t!150204 tokens!457)) (h!23528 (t!150204 tokens!457))) (Cons!18127 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457))))))

(assert (=> d!494881 d!495235))

(declare-fun d!495237 () Bool)

(assert (=> d!495237 (= (seqFromList!2134 ($colon$colon!356 (t!150204 (t!150204 tokens!457)) (h!23528 (t!150204 tokens!457)))) (fromListB!943 ($colon$colon!356 (t!150204 (t!150204 tokens!457)) (h!23528 (t!150204 tokens!457)))))))

(declare-fun bs!395962 () Bool)

(assert (= bs!395962 d!495237))

(assert (=> bs!395962 m!1986109))

(declare-fun m!1987885 () Bool)

(assert (=> bs!395962 m!1987885))

(assert (=> d!494881 d!495237))

(assert (=> d!494881 d!494879))

(declare-fun d!495239 () Bool)

(assert (=> d!495239 (= (list!7181 (_1!10294 lt!605513)) (list!7181 (prepend!749 (seqFromList!2134 (t!150204 (t!150204 tokens!457))) (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495239 true))

(declare-fun _$1!10040 () Unit!29917)

(assert (=> d!495239 (= (choose!9860 (h!23528 (t!150204 tokens!457)) (t!150204 (t!150204 tokens!457)) (_1!10294 lt!605513)) _$1!10040)))

(declare-fun bs!395963 () Bool)

(assert (= bs!395963 d!495239))

(assert (=> bs!395963 m!1985739))

(assert (=> bs!395963 m!1985707))

(assert (=> bs!395963 m!1985707))

(assert (=> bs!395963 m!1985709))

(assert (=> bs!395963 m!1985709))

(assert (=> bs!395963 m!1985711))

(assert (=> d!494881 d!495239))

(assert (=> d!494881 d!494857))

(assert (=> d!494881 d!494883))

(declare-fun b!1644395 () Bool)

(declare-fun e!1054612 () List!18196)

(declare-fun e!1054613 () List!18196)

(assert (=> b!1644395 (= e!1054612 e!1054613)))

(declare-fun c!267432 () Bool)

(assert (=> b!1644395 (= c!267432 ((_ is Leaf!8861) (c!267229 lt!605507)))))

(declare-fun b!1644394 () Bool)

(assert (=> b!1644394 (= e!1054612 Nil!18126)))

(declare-fun d!495241 () Bool)

(declare-fun c!267431 () Bool)

(assert (=> d!495241 (= c!267431 ((_ is Empty!6042) (c!267229 lt!605507)))))

(assert (=> d!495241 (= (list!7186 (c!267229 lt!605507)) e!1054612)))

(declare-fun b!1644396 () Bool)

(assert (=> b!1644396 (= e!1054613 (list!7188 (xs!8878 (c!267229 lt!605507))))))

(declare-fun b!1644397 () Bool)

(assert (=> b!1644397 (= e!1054613 (++!4878 (list!7186 (left!14534 (c!267229 lt!605507))) (list!7186 (right!14864 (c!267229 lt!605507)))))))

(assert (= (and d!495241 c!267431) b!1644394))

(assert (= (and d!495241 (not c!267431)) b!1644395))

(assert (= (and b!1644395 c!267432) b!1644396))

(assert (= (and b!1644395 (not c!267432)) b!1644397))

(declare-fun m!1987887 () Bool)

(assert (=> b!1644396 m!1987887))

(declare-fun m!1987889 () Bool)

(assert (=> b!1644397 m!1987889))

(declare-fun m!1987891 () Bool)

(assert (=> b!1644397 m!1987891))

(assert (=> b!1644397 m!1987889))

(assert (=> b!1644397 m!1987891))

(declare-fun m!1987893 () Bool)

(assert (=> b!1644397 m!1987893))

(assert (=> d!494889 d!495241))

(declare-fun d!495243 () Bool)

(declare-fun res!736754 () Bool)

(declare-fun e!1054614 () Bool)

(assert (=> d!495243 (=> (not res!736754) (not e!1054614))))

(assert (=> d!495243 (= res!736754 (not (isEmpty!11155 (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495243 (= (inv!23485 (h!23528 (t!150204 tokens!457))) e!1054614)))

(declare-fun b!1644398 () Bool)

(declare-fun res!736755 () Bool)

(assert (=> b!1644398 (=> (not res!736755) (not e!1054614))))

(assert (=> b!1644398 (= res!736755 (= (originalCharacters!4011 (h!23528 (t!150204 tokens!457))) (list!7182 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (value!100787 (h!23528 (t!150204 tokens!457)))))))))

(declare-fun b!1644399 () Bool)

(assert (=> b!1644399 (= e!1054614 (= (size!14436 (h!23528 (t!150204 tokens!457))) (size!14440 (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))))))

(assert (= (and d!495243 res!736754) b!1644398))

(assert (= (and b!1644398 res!736755) b!1644399))

(declare-fun b_lambda!51675 () Bool)

(assert (=> (not b_lambda!51675) (not b!1644398)))

(assert (=> b!1644398 t!150278))

(declare-fun b_and!116661 () Bool)

(assert (= b_and!116653 (and (=> t!150278 result!113658) b_and!116661)))

(assert (=> b!1644398 t!150280))

(declare-fun b_and!116663 () Bool)

(assert (= b_and!116655 (and (=> t!150280 result!113660) b_and!116663)))

(assert (=> b!1644398 t!150282))

(declare-fun b_and!116665 () Bool)

(assert (= b_and!116657 (and (=> t!150282 result!113662) b_and!116665)))

(assert (=> b!1644398 t!150284))

(declare-fun b_and!116667 () Bool)

(assert (= b_and!116659 (and (=> t!150284 result!113664) b_and!116667)))

(declare-fun m!1987895 () Bool)

(assert (=> d!495243 m!1987895))

(assert (=> b!1644398 m!1987363))

(assert (=> b!1644398 m!1987363))

(declare-fun m!1987897 () Bool)

(assert (=> b!1644398 m!1987897))

(assert (=> b!1644399 m!1986699))

(assert (=> b!1643806 d!495243))

(declare-fun d!495245 () Bool)

(assert (=> d!495245 (= (list!7181 lt!605712) (list!7185 (c!267231 lt!605712)))))

(declare-fun bs!395964 () Bool)

(assert (= bs!395964 d!495245))

(declare-fun m!1987899 () Bool)

(assert (=> bs!395964 m!1987899))

(assert (=> b!1643613 d!495245))

(declare-fun d!495247 () Bool)

(assert (=> d!495247 (= (list!7181 (seqFromList!2134 (t!150204 (t!150204 tokens!457)))) (list!7185 (c!267231 (seqFromList!2134 (t!150204 (t!150204 tokens!457))))))))

(declare-fun bs!395965 () Bool)

(assert (= bs!395965 d!495247))

(assert (=> bs!395965 m!1987561))

(assert (=> b!1643613 d!495247))

(declare-fun b!1644403 () Bool)

(declare-fun e!1054616 () List!18197)

(assert (=> b!1644403 (= e!1054616 (++!4883 (list!7185 (left!14535 (c!267231 (_1!10294 lt!605513)))) (list!7185 (right!14865 (c!267231 (_1!10294 lt!605513))))))))

(declare-fun d!495249 () Bool)

(declare-fun c!267433 () Bool)

(assert (=> d!495249 (= c!267433 ((_ is Empty!6043) (c!267231 (_1!10294 lt!605513))))))

(declare-fun e!1054615 () List!18197)

(assert (=> d!495249 (= (list!7185 (c!267231 (_1!10294 lt!605513))) e!1054615)))

(declare-fun b!1644402 () Bool)

(assert (=> b!1644402 (= e!1054616 (list!7190 (xs!8879 (c!267231 (_1!10294 lt!605513)))))))

(declare-fun b!1644401 () Bool)

(assert (=> b!1644401 (= e!1054615 e!1054616)))

(declare-fun c!267434 () Bool)

(assert (=> b!1644401 (= c!267434 ((_ is Leaf!8862) (c!267231 (_1!10294 lt!605513))))))

(declare-fun b!1644400 () Bool)

(assert (=> b!1644400 (= e!1054615 Nil!18127)))

(assert (= (and d!495249 c!267433) b!1644400))

(assert (= (and d!495249 (not c!267433)) b!1644401))

(assert (= (and b!1644401 c!267434) b!1644402))

(assert (= (and b!1644401 (not c!267434)) b!1644403))

(declare-fun m!1987901 () Bool)

(assert (=> b!1644403 m!1987901))

(declare-fun m!1987903 () Bool)

(assert (=> b!1644403 m!1987903))

(assert (=> b!1644403 m!1987901))

(assert (=> b!1644403 m!1987903))

(declare-fun m!1987905 () Bool)

(assert (=> b!1644403 m!1987905))

(declare-fun m!1987907 () Bool)

(assert (=> b!1644402 m!1987907))

(assert (=> d!494857 d!495249))

(declare-fun d!495251 () Bool)

(declare-fun charsToBigInt!1 (List!18195) Int)

(assert (=> d!495251 (= (inv!17 (value!100787 (h!23528 tokens!457))) (= (charsToBigInt!1 (text!23457 (value!100787 (h!23528 tokens!457)))) (value!100779 (value!100787 (h!23528 tokens!457)))))))

(declare-fun bs!395966 () Bool)

(assert (= bs!395966 d!495251))

(declare-fun m!1987909 () Bool)

(assert (=> bs!395966 m!1987909))

(assert (=> b!1643781 d!495251))

(declare-fun d!495253 () Bool)

(declare-fun res!736760 () Bool)

(declare-fun e!1054621 () Bool)

(assert (=> d!495253 (=> res!736760 e!1054621)))

(assert (=> d!495253 (= res!736760 ((_ is Nil!18128) rules!1846))))

(assert (=> d!495253 (= (noDuplicateTag!1158 thiss!17113 rules!1846 Nil!18130) e!1054621)))

(declare-fun b!1644408 () Bool)

(declare-fun e!1054622 () Bool)

(assert (=> b!1644408 (= e!1054621 e!1054622)))

(declare-fun res!736761 () Bool)

(assert (=> b!1644408 (=> (not res!736761) (not e!1054622))))

(declare-fun contains!3155 (List!18200 String!20767) Bool)

(assert (=> b!1644408 (= res!736761 (not (contains!3155 Nil!18130 (tag!3477 (h!23529 rules!1846)))))))

(declare-fun b!1644409 () Bool)

(assert (=> b!1644409 (= e!1054622 (noDuplicateTag!1158 thiss!17113 (t!150205 rules!1846) (Cons!18130 (tag!3477 (h!23529 rules!1846)) Nil!18130)))))

(assert (= (and d!495253 (not res!736760)) b!1644408))

(assert (= (and b!1644408 res!736761) b!1644409))

(declare-fun m!1987911 () Bool)

(assert (=> b!1644408 m!1987911))

(declare-fun m!1987913 () Bool)

(assert (=> b!1644409 m!1987913))

(assert (=> b!1643443 d!495253))

(declare-fun d!495255 () Bool)

(assert (=> d!495255 true))

(declare-fun order!10791 () Int)

(declare-fun lambda!67552 () Int)

(declare-fun dynLambda!8105 (Int Int) Int)

(assert (=> d!495255 (< (dynLambda!8097 order!10781 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) (dynLambda!8105 order!10791 lambda!67552))))

(assert (=> d!495255 true))

(assert (=> d!495255 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) (dynLambda!8105 order!10791 lambda!67552))))

(declare-fun Forall!650 (Int) Bool)

(assert (=> d!495255 (= (semiInverseModEq!1230 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) (Forall!650 lambda!67552))))

(declare-fun bs!395967 () Bool)

(assert (= bs!395967 d!495255))

(declare-fun m!1987915 () Bool)

(assert (=> bs!395967 m!1987915))

(assert (=> d!494931 d!495255))

(declare-fun d!495257 () Bool)

(assert (=> d!495257 (= (list!7182 lt!605849) (list!7186 (c!267229 lt!605849)))))

(declare-fun bs!395968 () Bool)

(assert (= bs!395968 d!495257))

(declare-fun m!1987917 () Bool)

(assert (=> bs!395968 m!1987917))

(assert (=> d!494919 d!495257))

(declare-fun d!495259 () Bool)

(assert (=> d!495259 (= (list!7182 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))) (list!7186 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))))

(declare-fun bs!395969 () Bool)

(assert (= bs!395969 d!495259))

(declare-fun m!1987919 () Bool)

(assert (=> bs!395969 m!1987919))

(assert (=> b!1643767 d!495259))

(declare-fun b!1644414 () Bool)

(declare-fun e!1054625 () Bool)

(declare-fun e!1054624 () Bool)

(assert (=> b!1644414 (= e!1054625 e!1054624)))

(declare-fun res!736762 () Bool)

(assert (=> b!1644414 (=> (not res!736762) (not e!1054624))))

(assert (=> b!1644414 (= res!736762 (not ((_ is Nil!18126) (tail!2418 lt!605512))))))

(declare-fun b!1644417 () Bool)

(declare-fun e!1054623 () Bool)

(assert (=> b!1644417 (= e!1054623 (>= (size!14440 (tail!2418 lt!605512)) (size!14440 (tail!2418 lt!605502))))))

(declare-fun b!1644415 () Bool)

(declare-fun res!736765 () Bool)

(assert (=> b!1644415 (=> (not res!736765) (not e!1054624))))

(assert (=> b!1644415 (= res!736765 (= (head!3589 (tail!2418 lt!605502)) (head!3589 (tail!2418 lt!605512))))))

(declare-fun b!1644416 () Bool)

(assert (=> b!1644416 (= e!1054624 (isPrefix!1455 (tail!2418 (tail!2418 lt!605502)) (tail!2418 (tail!2418 lt!605512))))))

(declare-fun d!495261 () Bool)

(assert (=> d!495261 e!1054623))

(declare-fun res!736763 () Bool)

(assert (=> d!495261 (=> res!736763 e!1054623)))

(declare-fun lt!606790 () Bool)

(assert (=> d!495261 (= res!736763 (not lt!606790))))

(assert (=> d!495261 (= lt!606790 e!1054625)))

(declare-fun res!736764 () Bool)

(assert (=> d!495261 (=> res!736764 e!1054625)))

(assert (=> d!495261 (= res!736764 ((_ is Nil!18126) (tail!2418 lt!605502)))))

(assert (=> d!495261 (= (isPrefix!1455 (tail!2418 lt!605502) (tail!2418 lt!605512)) lt!606790)))

(assert (= (and d!495261 (not res!736764)) b!1644414))

(assert (= (and b!1644414 res!736762) b!1644415))

(assert (= (and b!1644415 res!736765) b!1644416))

(assert (= (and d!495261 (not res!736763)) b!1644417))

(assert (=> b!1644417 m!1986077))

(declare-fun m!1987921 () Bool)

(assert (=> b!1644417 m!1987921))

(assert (=> b!1644417 m!1986075))

(declare-fun m!1987923 () Bool)

(assert (=> b!1644417 m!1987923))

(assert (=> b!1644415 m!1986075))

(declare-fun m!1987925 () Bool)

(assert (=> b!1644415 m!1987925))

(assert (=> b!1644415 m!1986077))

(declare-fun m!1987927 () Bool)

(assert (=> b!1644415 m!1987927))

(assert (=> b!1644416 m!1986075))

(declare-fun m!1987929 () Bool)

(assert (=> b!1644416 m!1987929))

(assert (=> b!1644416 m!1986077))

(declare-fun m!1987931 () Bool)

(assert (=> b!1644416 m!1987931))

(assert (=> b!1644416 m!1987929))

(assert (=> b!1644416 m!1987931))

(declare-fun m!1987933 () Bool)

(assert (=> b!1644416 m!1987933))

(assert (=> b!1643603 d!495261))

(declare-fun d!495263 () Bool)

(assert (=> d!495263 (= (tail!2418 lt!605502) (t!150203 lt!605502))))

(assert (=> b!1643603 d!495263))

(declare-fun d!495265 () Bool)

(assert (=> d!495265 (= (tail!2418 lt!605512) (t!150203 lt!605512))))

(assert (=> b!1643603 d!495265))

(declare-fun d!495267 () Bool)

(assert (=> d!495267 (= (isEmpty!11158 lt!605786) (not ((_ is Some!3427) lt!605786)))))

(assert (=> d!494895 d!495267))

(declare-fun b!1644418 () Bool)

(declare-fun e!1054628 () Bool)

(declare-fun e!1054627 () Bool)

(assert (=> b!1644418 (= e!1054628 e!1054627)))

(declare-fun res!736766 () Bool)

(assert (=> b!1644418 (=> (not res!736766) (not e!1054627))))

(assert (=> b!1644418 (= res!736766 (not ((_ is Nil!18126) lt!605504)))))

(declare-fun b!1644421 () Bool)

(declare-fun e!1054626 () Bool)

(assert (=> b!1644421 (= e!1054626 (>= (size!14440 lt!605504) (size!14440 lt!605504)))))

(declare-fun b!1644419 () Bool)

(declare-fun res!736769 () Bool)

(assert (=> b!1644419 (=> (not res!736769) (not e!1054627))))

(assert (=> b!1644419 (= res!736769 (= (head!3589 lt!605504) (head!3589 lt!605504)))))

(declare-fun b!1644420 () Bool)

(assert (=> b!1644420 (= e!1054627 (isPrefix!1455 (tail!2418 lt!605504) (tail!2418 lt!605504)))))

(declare-fun d!495269 () Bool)

(assert (=> d!495269 e!1054626))

(declare-fun res!736767 () Bool)

(assert (=> d!495269 (=> res!736767 e!1054626)))

(declare-fun lt!606791 () Bool)

(assert (=> d!495269 (= res!736767 (not lt!606791))))

(assert (=> d!495269 (= lt!606791 e!1054628)))

(declare-fun res!736768 () Bool)

(assert (=> d!495269 (=> res!736768 e!1054628)))

(assert (=> d!495269 (= res!736768 ((_ is Nil!18126) lt!605504))))

(assert (=> d!495269 (= (isPrefix!1455 lt!605504 lt!605504) lt!606791)))

(assert (= (and d!495269 (not res!736768)) b!1644418))

(assert (= (and b!1644418 res!736766) b!1644419))

(assert (= (and b!1644419 res!736769) b!1644420))

(assert (= (and d!495269 (not res!736767)) b!1644421))

(assert (=> b!1644421 m!1986167))

(assert (=> b!1644421 m!1986167))

(declare-fun m!1987935 () Bool)

(assert (=> b!1644419 m!1987935))

(assert (=> b!1644419 m!1987935))

(declare-fun m!1987937 () Bool)

(assert (=> b!1644420 m!1987937))

(assert (=> b!1644420 m!1987937))

(assert (=> b!1644420 m!1987937))

(assert (=> b!1644420 m!1987937))

(declare-fun m!1987939 () Bool)

(assert (=> b!1644420 m!1987939))

(assert (=> d!494895 d!495269))

(declare-fun d!495271 () Bool)

(assert (=> d!495271 (isPrefix!1455 lt!605504 lt!605504)))

(declare-fun lt!606794 () Unit!29917)

(declare-fun choose!9864 (List!18196 List!18196) Unit!29917)

(assert (=> d!495271 (= lt!606794 (choose!9864 lt!605504 lt!605504))))

(assert (=> d!495271 (= (lemmaIsPrefixRefl!984 lt!605504 lt!605504) lt!606794)))

(declare-fun bs!395970 () Bool)

(assert (= bs!395970 d!495271))

(assert (=> bs!395970 m!1986185))

(declare-fun m!1987941 () Bool)

(assert (=> bs!395970 m!1987941))

(assert (=> d!494895 d!495271))

(declare-fun bs!395971 () Bool)

(declare-fun d!495273 () Bool)

(assert (= bs!395971 (and d!495273 d!495221)))

(declare-fun lambda!67555 () Int)

(assert (=> bs!395971 (= lambda!67555 lambda!67546)))

(assert (=> d!495273 true))

(declare-fun lt!606797 () Bool)

(assert (=> d!495273 (= lt!606797 (forall!4131 rules!1846 lambda!67555))))

(declare-fun e!1054633 () Bool)

(assert (=> d!495273 (= lt!606797 e!1054633)))

(declare-fun res!736774 () Bool)

(assert (=> d!495273 (=> res!736774 e!1054633)))

(assert (=> d!495273 (= res!736774 (not ((_ is Cons!18128) rules!1846)))))

(assert (=> d!495273 (= (rulesValidInductive!1006 thiss!17113 rules!1846) lt!606797)))

(declare-fun b!1644426 () Bool)

(declare-fun e!1054634 () Bool)

(assert (=> b!1644426 (= e!1054633 e!1054634)))

(declare-fun res!736775 () Bool)

(assert (=> b!1644426 (=> (not res!736775) (not e!1054634))))

(declare-fun ruleValid!751 (LexerInterface!2826 Rule!6194) Bool)

(assert (=> b!1644426 (= res!736775 (ruleValid!751 thiss!17113 (h!23529 rules!1846)))))

(declare-fun b!1644427 () Bool)

(assert (=> b!1644427 (= e!1054634 (rulesValidInductive!1006 thiss!17113 (t!150205 rules!1846)))))

(assert (= (and d!495273 (not res!736774)) b!1644426))

(assert (= (and b!1644426 res!736775) b!1644427))

(declare-fun m!1987943 () Bool)

(assert (=> d!495273 m!1987943))

(declare-fun m!1987945 () Bool)

(assert (=> b!1644426 m!1987945))

(declare-fun m!1987947 () Bool)

(assert (=> b!1644427 m!1987947))

(assert (=> d!494895 d!495273))

(declare-fun b!1644429 () Bool)

(declare-fun e!1054635 () List!18196)

(declare-fun e!1054636 () List!18196)

(assert (=> b!1644429 (= e!1054635 e!1054636)))

(declare-fun c!267436 () Bool)

(assert (=> b!1644429 (= c!267436 ((_ is Leaf!8861) (c!267229 lt!605515)))))

(declare-fun b!1644428 () Bool)

(assert (=> b!1644428 (= e!1054635 Nil!18126)))

(declare-fun d!495275 () Bool)

(declare-fun c!267435 () Bool)

(assert (=> d!495275 (= c!267435 ((_ is Empty!6042) (c!267229 lt!605515)))))

(assert (=> d!495275 (= (list!7186 (c!267229 lt!605515)) e!1054635)))

(declare-fun b!1644430 () Bool)

(assert (=> b!1644430 (= e!1054636 (list!7188 (xs!8878 (c!267229 lt!605515))))))

(declare-fun b!1644431 () Bool)

(assert (=> b!1644431 (= e!1054636 (++!4878 (list!7186 (left!14534 (c!267229 lt!605515))) (list!7186 (right!14864 (c!267229 lt!605515)))))))

(assert (= (and d!495275 c!267435) b!1644428))

(assert (= (and d!495275 (not c!267435)) b!1644429))

(assert (= (and b!1644429 c!267436) b!1644430))

(assert (= (and b!1644429 (not c!267436)) b!1644431))

(declare-fun m!1987949 () Bool)

(assert (=> b!1644430 m!1987949))

(declare-fun m!1987951 () Bool)

(assert (=> b!1644431 m!1987951))

(declare-fun m!1987953 () Bool)

(assert (=> b!1644431 m!1987953))

(assert (=> b!1644431 m!1987951))

(assert (=> b!1644431 m!1987953))

(declare-fun m!1987955 () Bool)

(assert (=> b!1644431 m!1987955))

(assert (=> d!494903 d!495275))

(declare-fun d!495277 () Bool)

(declare-fun lt!606798 () Int)

(assert (=> d!495277 (>= lt!606798 0)))

(declare-fun e!1054637 () Int)

(assert (=> d!495277 (= lt!606798 e!1054637)))

(declare-fun c!267437 () Bool)

(assert (=> d!495277 (= c!267437 ((_ is Nil!18126) lt!605852))))

(assert (=> d!495277 (= (size!14440 lt!605852) lt!606798)))

(declare-fun b!1644432 () Bool)

(assert (=> b!1644432 (= e!1054637 0)))

(declare-fun b!1644433 () Bool)

(assert (=> b!1644433 (= e!1054637 (+ 1 (size!14440 (t!150203 lt!605852))))))

(assert (= (and d!495277 c!267437) b!1644432))

(assert (= (and d!495277 (not c!267437)) b!1644433))

(declare-fun m!1987957 () Bool)

(assert (=> b!1644433 m!1987957))

(assert (=> b!1643761 d!495277))

(declare-fun d!495279 () Bool)

(declare-fun lt!606799 () Int)

(assert (=> d!495279 (>= lt!606799 0)))

(declare-fun e!1054638 () Int)

(assert (=> d!495279 (= lt!606799 e!1054638)))

(declare-fun c!267438 () Bool)

(assert (=> d!495279 (= c!267438 ((_ is Nil!18126) lt!605502))))

(assert (=> d!495279 (= (size!14440 lt!605502) lt!606799)))

(declare-fun b!1644434 () Bool)

(assert (=> b!1644434 (= e!1054638 0)))

(declare-fun b!1644435 () Bool)

(assert (=> b!1644435 (= e!1054638 (+ 1 (size!14440 (t!150203 lt!605502))))))

(assert (= (and d!495279 c!267438) b!1644434))

(assert (= (and d!495279 (not c!267438)) b!1644435))

(assert (=> b!1644435 m!1987527))

(assert (=> b!1643761 d!495279))

(declare-fun d!495281 () Bool)

(declare-fun lt!606800 () Int)

(assert (=> d!495281 (>= lt!606800 0)))

(declare-fun e!1054639 () Int)

(assert (=> d!495281 (= lt!606800 e!1054639)))

(declare-fun c!267439 () Bool)

(assert (=> d!495281 (= c!267439 ((_ is Nil!18126) lt!605516))))

(assert (=> d!495281 (= (size!14440 lt!605516) lt!606800)))

(declare-fun b!1644436 () Bool)

(assert (=> b!1644436 (= e!1054639 0)))

(declare-fun b!1644437 () Bool)

(assert (=> b!1644437 (= e!1054639 (+ 1 (size!14440 (t!150203 lt!605516))))))

(assert (= (and d!495281 c!267439) b!1644436))

(assert (= (and d!495281 (not c!267439)) b!1644437))

(declare-fun m!1987959 () Bool)

(assert (=> b!1644437 m!1987959))

(assert (=> b!1643761 d!495281))

(declare-fun d!495283 () Bool)

(declare-fun lt!606803 () Bool)

(assert (=> d!495283 (= lt!606803 (isEmpty!11155 (list!7182 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))))))

(declare-fun isEmpty!11164 (Conc!6042) Bool)

(assert (=> d!495283 (= lt!606803 (isEmpty!11164 (c!267229 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457))))))))))

(assert (=> d!495283 (= (isEmpty!11156 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (seqFromList!2134 (t!150204 tokens!457)))))) lt!606803)))

(declare-fun bs!395972 () Bool)

(assert (= bs!395972 d!495283))

(declare-fun m!1987961 () Bool)

(assert (=> bs!395972 m!1987961))

(assert (=> bs!395972 m!1987961))

(declare-fun m!1987963 () Bool)

(assert (=> bs!395972 m!1987963))

(declare-fun m!1987965 () Bool)

(assert (=> bs!395972 m!1987965))

(assert (=> b!1643592 d!495283))

(assert (=> b!1643592 d!495211))

(assert (=> b!1643592 d!495139))

(assert (=> b!1643592 d!494909))

(declare-fun bs!395973 () Bool)

(declare-fun d!495285 () Bool)

(assert (= bs!395973 (and d!495285 d!495255)))

(declare-fun lambda!67556 () Int)

(assert (=> bs!395973 (= (and (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) (= (toValue!4636 (transformation!3197 (h!23529 rules!1846))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457)))))) (= lambda!67556 lambda!67552))))

(assert (=> d!495285 true))

(assert (=> d!495285 (< (dynLambda!8097 order!10781 (toChars!4495 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8105 order!10791 lambda!67556))))

(assert (=> d!495285 true))

(assert (=> d!495285 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (dynLambda!8105 order!10791 lambda!67556))))

(assert (=> d!495285 (= (semiInverseModEq!1230 (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (Forall!650 lambda!67556))))

(declare-fun bs!395974 () Bool)

(assert (= bs!395974 d!495285))

(declare-fun m!1987967 () Bool)

(assert (=> bs!395974 m!1987967))

(assert (=> d!494887 d!495285))

(declare-fun b!1644438 () Bool)

(declare-fun e!1054641 () Option!3428)

(declare-fun lt!606805 () Option!3428)

(declare-fun lt!606804 () Option!3428)

(assert (=> b!1644438 (= e!1054641 (ite (and ((_ is None!3427) lt!606805) ((_ is None!3427) lt!606804)) None!3427 (ite ((_ is None!3427) lt!606804) lt!606805 (ite ((_ is None!3427) lt!606805) lt!606804 (ite (>= (size!14436 (_1!10295 (v!24552 lt!606805))) (size!14436 (_1!10295 (v!24552 lt!606804)))) lt!606805 lt!606804)))))))

(declare-fun call!105767 () Option!3428)

(assert (=> b!1644438 (= lt!606805 call!105767)))

(assert (=> b!1644438 (= lt!606804 (maxPrefix!1388 thiss!17113 (t!150205 (t!150205 rules!1846)) lt!605504))))

(declare-fun b!1644439 () Bool)

(declare-fun e!1054640 () Bool)

(declare-fun e!1054642 () Bool)

(assert (=> b!1644439 (= e!1054640 e!1054642)))

(declare-fun res!736781 () Bool)

(assert (=> b!1644439 (=> (not res!736781) (not e!1054642))))

(declare-fun lt!606806 () Option!3428)

(assert (=> b!1644439 (= res!736781 (isDefined!2789 lt!606806))))

(declare-fun b!1644440 () Bool)

(assert (=> b!1644440 (= e!1054641 call!105767)))

(declare-fun b!1644441 () Bool)

(declare-fun res!736776 () Bool)

(assert (=> b!1644441 (=> (not res!736776) (not e!1054642))))

(assert (=> b!1644441 (= res!736776 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606806)))) (_2!10295 (get!5272 lt!606806))) lt!605504))))

(declare-fun b!1644442 () Bool)

(declare-fun res!736782 () Bool)

(assert (=> b!1644442 (=> (not res!736782) (not e!1054642))))

(assert (=> b!1644442 (= res!736782 (= (value!100787 (_1!10295 (get!5272 lt!606806))) (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!606806)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!606806)))))))))

(declare-fun b!1644443 () Bool)

(declare-fun res!736780 () Bool)

(assert (=> b!1644443 (=> (not res!736780) (not e!1054642))))

(assert (=> b!1644443 (= res!736780 (< (size!14440 (_2!10295 (get!5272 lt!606806))) (size!14440 lt!605504)))))

(declare-fun b!1644444 () Bool)

(declare-fun res!736778 () Bool)

(assert (=> b!1644444 (=> (not res!736778) (not e!1054642))))

(assert (=> b!1644444 (= res!736778 (matchR!2020 (regex!3197 (rule!5047 (_1!10295 (get!5272 lt!606806)))) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606806))))))))

(declare-fun bm!105762 () Bool)

(assert (=> bm!105762 (= call!105767 (maxPrefixOneRule!799 thiss!17113 (h!23529 (t!150205 rules!1846)) lt!605504))))

(declare-fun d!495287 () Bool)

(assert (=> d!495287 e!1054640))

(declare-fun res!736777 () Bool)

(assert (=> d!495287 (=> res!736777 e!1054640)))

(assert (=> d!495287 (= res!736777 (isEmpty!11158 lt!606806))))

(assert (=> d!495287 (= lt!606806 e!1054641)))

(declare-fun c!267440 () Bool)

(assert (=> d!495287 (= c!267440 (and ((_ is Cons!18128) (t!150205 rules!1846)) ((_ is Nil!18128) (t!150205 (t!150205 rules!1846)))))))

(declare-fun lt!606808 () Unit!29917)

(declare-fun lt!606807 () Unit!29917)

(assert (=> d!495287 (= lt!606808 lt!606807)))

(assert (=> d!495287 (isPrefix!1455 lt!605504 lt!605504)))

(assert (=> d!495287 (= lt!606807 (lemmaIsPrefixRefl!984 lt!605504 lt!605504))))

(assert (=> d!495287 (rulesValidInductive!1006 thiss!17113 (t!150205 rules!1846))))

(assert (=> d!495287 (= (maxPrefix!1388 thiss!17113 (t!150205 rules!1846) lt!605504) lt!606806)))

(declare-fun b!1644445 () Bool)

(assert (=> b!1644445 (= e!1054642 (contains!3154 (t!150205 rules!1846) (rule!5047 (_1!10295 (get!5272 lt!606806)))))))

(declare-fun b!1644446 () Bool)

(declare-fun res!736779 () Bool)

(assert (=> b!1644446 (=> (not res!736779) (not e!1054642))))

(assert (=> b!1644446 (= res!736779 (= (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606806)))) (originalCharacters!4011 (_1!10295 (get!5272 lt!606806)))))))

(assert (= (and d!495287 c!267440) b!1644440))

(assert (= (and d!495287 (not c!267440)) b!1644438))

(assert (= (or b!1644440 b!1644438) bm!105762))

(assert (= (and d!495287 (not res!736777)) b!1644439))

(assert (= (and b!1644439 res!736781) b!1644446))

(assert (= (and b!1644446 res!736779) b!1644443))

(assert (= (and b!1644443 res!736780) b!1644441))

(assert (= (and b!1644441 res!736776) b!1644442))

(assert (= (and b!1644442 res!736782) b!1644444))

(assert (= (and b!1644444 res!736778) b!1644445))

(declare-fun m!1987969 () Bool)

(assert (=> b!1644443 m!1987969))

(declare-fun m!1987971 () Bool)

(assert (=> b!1644443 m!1987971))

(assert (=> b!1644443 m!1986167))

(declare-fun m!1987973 () Bool)

(assert (=> bm!105762 m!1987973))

(assert (=> b!1644446 m!1987969))

(declare-fun m!1987975 () Bool)

(assert (=> b!1644446 m!1987975))

(assert (=> b!1644446 m!1987975))

(declare-fun m!1987977 () Bool)

(assert (=> b!1644446 m!1987977))

(declare-fun m!1987979 () Bool)

(assert (=> b!1644438 m!1987979))

(assert (=> b!1644442 m!1987969))

(declare-fun m!1987981 () Bool)

(assert (=> b!1644442 m!1987981))

(assert (=> b!1644442 m!1987981))

(declare-fun m!1987983 () Bool)

(assert (=> b!1644442 m!1987983))

(declare-fun m!1987985 () Bool)

(assert (=> b!1644439 m!1987985))

(declare-fun m!1987987 () Bool)

(assert (=> d!495287 m!1987987))

(assert (=> d!495287 m!1986185))

(assert (=> d!495287 m!1986187))

(assert (=> d!495287 m!1987947))

(assert (=> b!1644444 m!1987969))

(assert (=> b!1644444 m!1987975))

(assert (=> b!1644444 m!1987975))

(assert (=> b!1644444 m!1987977))

(assert (=> b!1644444 m!1987977))

(declare-fun m!1987989 () Bool)

(assert (=> b!1644444 m!1987989))

(assert (=> b!1644445 m!1987969))

(declare-fun m!1987991 () Bool)

(assert (=> b!1644445 m!1987991))

(assert (=> b!1644441 m!1987969))

(assert (=> b!1644441 m!1987975))

(assert (=> b!1644441 m!1987975))

(assert (=> b!1644441 m!1987977))

(assert (=> b!1644441 m!1987977))

(declare-fun m!1987993 () Bool)

(assert (=> b!1644441 m!1987993))

(assert (=> b!1643648 d!495287))

(declare-fun b!1644447 () Bool)

(declare-fun e!1054645 () Bool)

(declare-fun e!1054644 () Bool)

(assert (=> b!1644447 (= e!1054645 e!1054644)))

(declare-fun c!267442 () Bool)

(assert (=> b!1644447 (= c!267442 ((_ is IntegerValue!9862) (value!100787 (h!23528 (t!150204 tokens!457)))))))

(declare-fun b!1644448 () Bool)

(assert (=> b!1644448 (= e!1054644 (inv!17 (value!100787 (h!23528 (t!150204 tokens!457)))))))

(declare-fun b!1644449 () Bool)

(declare-fun res!736783 () Bool)

(declare-fun e!1054643 () Bool)

(assert (=> b!1644449 (=> res!736783 e!1054643)))

(assert (=> b!1644449 (= res!736783 (not ((_ is IntegerValue!9863) (value!100787 (h!23528 (t!150204 tokens!457))))))))

(assert (=> b!1644449 (= e!1054644 e!1054643)))

(declare-fun d!495289 () Bool)

(declare-fun c!267441 () Bool)

(assert (=> d!495289 (= c!267441 ((_ is IntegerValue!9861) (value!100787 (h!23528 (t!150204 tokens!457)))))))

(assert (=> d!495289 (= (inv!21 (value!100787 (h!23528 (t!150204 tokens!457)))) e!1054645)))

(declare-fun b!1644450 () Bool)

(assert (=> b!1644450 (= e!1054645 (inv!16 (value!100787 (h!23528 (t!150204 tokens!457)))))))

(declare-fun b!1644451 () Bool)

(assert (=> b!1644451 (= e!1054643 (inv!15 (value!100787 (h!23528 (t!150204 tokens!457)))))))

(assert (= (and d!495289 c!267441) b!1644450))

(assert (= (and d!495289 (not c!267441)) b!1644447))

(assert (= (and b!1644447 c!267442) b!1644448))

(assert (= (and b!1644447 (not c!267442)) b!1644449))

(assert (= (and b!1644449 (not res!736783)) b!1644451))

(declare-fun m!1987995 () Bool)

(assert (=> b!1644448 m!1987995))

(declare-fun m!1987997 () Bool)

(assert (=> b!1644450 m!1987997))

(declare-fun m!1987999 () Bool)

(assert (=> b!1644451 m!1987999))

(assert (=> b!1643807 d!495289))

(declare-fun b!1644452 () Bool)

(declare-fun e!1054647 () List!18196)

(assert (=> b!1644452 (= e!1054647 (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))

(declare-fun b!1644454 () Bool)

(declare-fun res!736784 () Bool)

(declare-fun e!1054646 () Bool)

(assert (=> b!1644454 (=> (not res!736784) (not e!1054646))))

(declare-fun lt!606809 () List!18196)

(assert (=> b!1644454 (= res!736784 (= (size!14440 lt!606809) (+ (size!14440 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (size!14440 (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))))))

(declare-fun b!1644453 () Bool)

(assert (=> b!1644453 (= e!1054647 (Cons!18126 (h!23527 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (++!4878 (t!150203 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))))

(declare-fun b!1644455 () Bool)

(assert (=> b!1644455 (= e!1054646 (or (not (= (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))) Nil!18126)) (= lt!606809 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))))))

(declare-fun d!495291 () Bool)

(assert (=> d!495291 e!1054646))

(declare-fun res!736785 () Bool)

(assert (=> d!495291 (=> (not res!736785) (not e!1054646))))

(assert (=> d!495291 (= res!736785 (= (content!2509 lt!606809) ((_ map or) (content!2509 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (content!2509 (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))))))

(assert (=> d!495291 (= lt!606809 e!1054647)))

(declare-fun c!267443 () Bool)

(assert (=> d!495291 (= c!267443 ((_ is Nil!18126) (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))))

(assert (=> d!495291 (= (++!4878 (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))) (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127)))) lt!606809)))

(assert (= (and d!495291 c!267443) b!1644452))

(assert (= (and d!495291 (not c!267443)) b!1644453))

(assert (= (and d!495291 res!736785) b!1644454))

(assert (= (and b!1644454 res!736784) b!1644455))

(declare-fun m!1988001 () Bool)

(assert (=> b!1644454 m!1988001))

(assert (=> b!1644454 m!1986199))

(declare-fun m!1988003 () Bool)

(assert (=> b!1644454 m!1988003))

(assert (=> b!1644454 m!1986201))

(declare-fun m!1988005 () Bool)

(assert (=> b!1644454 m!1988005))

(assert (=> b!1644453 m!1986201))

(declare-fun m!1988007 () Bool)

(assert (=> b!1644453 m!1988007))

(declare-fun m!1988009 () Bool)

(assert (=> d!495291 m!1988009))

(assert (=> d!495291 m!1986199))

(declare-fun m!1988011 () Bool)

(assert (=> d!495291 m!1988011))

(assert (=> d!495291 m!1986201))

(declare-fun m!1988013 () Bool)

(assert (=> d!495291 m!1988013))

(assert (=> b!1643663 d!495291))

(declare-fun d!495293 () Bool)

(assert (=> d!495293 (= (list!7182 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))) (list!7186 (c!267229 (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))))

(declare-fun bs!395975 () Bool)

(assert (= bs!395975 d!495293))

(declare-fun m!1988015 () Bool)

(assert (=> bs!395975 m!1988015))

(assert (=> b!1643663 d!495293))

(declare-fun d!495295 () Bool)

(declare-fun lt!606810 () BalanceConc!12028)

(assert (=> d!495295 (= (list!7182 lt!606810) (originalCharacters!4011 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))

(assert (=> d!495295 (= lt!606810 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (value!100787 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))))

(assert (=> d!495295 (= (charsOf!1846 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))) lt!606810)))

(declare-fun b_lambda!51677 () Bool)

(assert (=> (not b_lambda!51677) (not d!495295)))

(declare-fun tb!94111 () Bool)

(declare-fun t!150291 () Bool)

(assert (=> (and b!1643419 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) t!150291) tb!94111))

(declare-fun b!1644456 () Bool)

(declare-fun e!1054648 () Bool)

(declare-fun tp!476449 () Bool)

(assert (=> b!1644456 (= e!1054648 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (value!100787 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) tp!476449))))

(declare-fun result!113666 () Bool)

(assert (=> tb!94111 (= result!113666 (and (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (value!100787 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) e!1054648))))

(assert (= tb!94111 b!1644456))

(declare-fun m!1988017 () Bool)

(assert (=> b!1644456 m!1988017))

(declare-fun m!1988019 () Bool)

(assert (=> tb!94111 m!1988019))

(assert (=> d!495295 t!150291))

(declare-fun b_and!116669 () Bool)

(assert (= b_and!116661 (and (=> t!150291 result!113666) b_and!116669)))

(declare-fun t!150293 () Bool)

(declare-fun tb!94113 () Bool)

(assert (=> (and b!1643415 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) t!150293) tb!94113))

(declare-fun result!113668 () Bool)

(assert (= result!113668 result!113666))

(assert (=> d!495295 t!150293))

(declare-fun b_and!116671 () Bool)

(assert (= b_and!116663 (and (=> t!150293 result!113668) b_and!116671)))

(declare-fun t!150295 () Bool)

(declare-fun tb!94115 () Bool)

(assert (=> (and b!1643795 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) t!150295) tb!94115))

(declare-fun result!113670 () Bool)

(assert (= result!113670 result!113666))

(assert (=> d!495295 t!150295))

(declare-fun b_and!116673 () Bool)

(assert (= b_and!116665 (and (=> t!150295 result!113670) b_and!116673)))

(declare-fun t!150297 () Bool)

(declare-fun tb!94117 () Bool)

(assert (=> (and b!1643809 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) t!150297) tb!94117))

(declare-fun result!113672 () Bool)

(assert (= result!113672 result!113666))

(assert (=> d!495295 t!150297))

(declare-fun b_and!116675 () Bool)

(assert (= b_and!116667 (and (=> t!150297 result!113672) b_and!116675)))

(declare-fun m!1988021 () Bool)

(assert (=> d!495295 m!1988021))

(declare-fun m!1988023 () Bool)

(assert (=> d!495295 m!1988023))

(assert (=> b!1643663 d!495295))

(declare-fun d!495297 () Bool)

(declare-fun c!267444 () Bool)

(assert (=> d!495297 (= c!267444 ((_ is Cons!18127) (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))

(declare-fun e!1054649 () List!18196)

(assert (=> d!495297 (= (printList!939 thiss!17113 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))) e!1054649)))

(declare-fun b!1644457 () Bool)

(assert (=> b!1644457 (= e!1054649 (++!4878 (list!7182 (charsOf!1846 (h!23528 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))))) (printList!939 thiss!17113 (t!150204 (t!150204 (Cons!18127 (h!23528 tokens!457) Nil!18127))))))))

(declare-fun b!1644458 () Bool)

(assert (=> b!1644458 (= e!1054649 Nil!18126)))

(assert (= (and d!495297 c!267444) b!1644457))

(assert (= (and d!495297 (not c!267444)) b!1644458))

(declare-fun m!1988025 () Bool)

(assert (=> b!1644457 m!1988025))

(assert (=> b!1644457 m!1988025))

(declare-fun m!1988027 () Bool)

(assert (=> b!1644457 m!1988027))

(declare-fun m!1988029 () Bool)

(assert (=> b!1644457 m!1988029))

(assert (=> b!1644457 m!1988027))

(assert (=> b!1644457 m!1988029))

(declare-fun m!1988031 () Bool)

(assert (=> b!1644457 m!1988031))

(assert (=> b!1643663 d!495297))

(declare-fun d!495299 () Bool)

(declare-fun charsToBigInt!0 (List!18195 Int) Int)

(assert (=> d!495299 (= (inv!15 (value!100787 (h!23528 tokens!457))) (= (charsToBigInt!0 (text!23458 (value!100787 (h!23528 tokens!457))) 0) (value!100782 (value!100787 (h!23528 tokens!457)))))))

(declare-fun bs!395976 () Bool)

(assert (= bs!395976 d!495299))

(declare-fun m!1988033 () Bool)

(assert (=> bs!395976 m!1988033))

(assert (=> b!1643784 d!495299))

(declare-fun d!495301 () Bool)

(declare-fun c!267447 () Bool)

(assert (=> d!495301 (= c!267447 ((_ is Nil!18126) lt!605852))))

(declare-fun e!1054652 () (InoxSet C!9224))

(assert (=> d!495301 (= (content!2509 lt!605852) e!1054652)))

(declare-fun b!1644463 () Bool)

(assert (=> b!1644463 (= e!1054652 ((as const (Array C!9224 Bool)) false))))

(declare-fun b!1644464 () Bool)

(assert (=> b!1644464 (= e!1054652 ((_ map or) (store ((as const (Array C!9224 Bool)) false) (h!23527 lt!605852) true) (content!2509 (t!150203 lt!605852))))))

(assert (= (and d!495301 c!267447) b!1644463))

(assert (= (and d!495301 (not c!267447)) b!1644464))

(declare-fun m!1988035 () Bool)

(assert (=> b!1644464 m!1988035))

(declare-fun m!1988037 () Bool)

(assert (=> b!1644464 m!1988037))

(assert (=> d!494923 d!495301))

(declare-fun d!495303 () Bool)

(declare-fun c!267448 () Bool)

(assert (=> d!495303 (= c!267448 ((_ is Nil!18126) lt!605502))))

(declare-fun e!1054653 () (InoxSet C!9224))

(assert (=> d!495303 (= (content!2509 lt!605502) e!1054653)))

(declare-fun b!1644465 () Bool)

(assert (=> b!1644465 (= e!1054653 ((as const (Array C!9224 Bool)) false))))

(declare-fun b!1644466 () Bool)

(assert (=> b!1644466 (= e!1054653 ((_ map or) (store ((as const (Array C!9224 Bool)) false) (h!23527 lt!605502) true) (content!2509 (t!150203 lt!605502))))))

(assert (= (and d!495303 c!267448) b!1644465))

(assert (= (and d!495303 (not c!267448)) b!1644466))

(declare-fun m!1988039 () Bool)

(assert (=> b!1644466 m!1988039))

(assert (=> b!1644466 m!1987533))

(assert (=> d!494923 d!495303))

(declare-fun d!495305 () Bool)

(declare-fun c!267449 () Bool)

(assert (=> d!495305 (= c!267449 ((_ is Nil!18126) lt!605516))))

(declare-fun e!1054654 () (InoxSet C!9224))

(assert (=> d!495305 (= (content!2509 lt!605516) e!1054654)))

(declare-fun b!1644467 () Bool)

(assert (=> b!1644467 (= e!1054654 ((as const (Array C!9224 Bool)) false))))

(declare-fun b!1644468 () Bool)

(assert (=> b!1644468 (= e!1054654 ((_ map or) (store ((as const (Array C!9224 Bool)) false) (h!23527 lt!605516) true) (content!2509 (t!150203 lt!605516))))))

(assert (= (and d!495305 c!267449) b!1644467))

(assert (= (and d!495305 (not c!267449)) b!1644468))

(declare-fun m!1988041 () Bool)

(assert (=> b!1644468 m!1988041))

(declare-fun m!1988043 () Bool)

(assert (=> b!1644468 m!1988043))

(assert (=> d!494923 d!495305))

(declare-fun d!495307 () Bool)

(declare-fun e!1054655 () Bool)

(assert (=> d!495307 e!1054655))

(declare-fun res!736786 () Bool)

(assert (=> d!495307 (=> (not res!736786) (not e!1054655))))

(declare-fun lt!606811 () BalanceConc!12030)

(assert (=> d!495307 (= res!736786 (= (list!7181 lt!606811) (t!150204 (t!150204 tokens!457))))))

(assert (=> d!495307 (= lt!606811 (BalanceConc!12031 (fromList!392 (t!150204 (t!150204 tokens!457)))))))

(assert (=> d!495307 (= (fromListB!943 (t!150204 (t!150204 tokens!457))) lt!606811)))

(declare-fun b!1644469 () Bool)

(assert (=> b!1644469 (= e!1054655 (isBalanced!1840 (fromList!392 (t!150204 (t!150204 tokens!457)))))))

(assert (= (and d!495307 res!736786) b!1644469))

(declare-fun m!1988045 () Bool)

(assert (=> d!495307 m!1988045))

(declare-fun m!1988047 () Bool)

(assert (=> d!495307 m!1988047))

(assert (=> b!1644469 m!1988047))

(assert (=> b!1644469 m!1988047))

(declare-fun m!1988049 () Bool)

(assert (=> b!1644469 m!1988049))

(assert (=> d!494883 d!495307))

(declare-fun d!495309 () Bool)

(assert (=> d!495309 (= (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))) (isBalanced!1842 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))))

(declare-fun bs!395977 () Bool)

(assert (= bs!395977 d!495309))

(declare-fun m!1988051 () Bool)

(assert (=> bs!395977 m!1988051))

(assert (=> tb!94055 d!495309))

(declare-fun d!495311 () Bool)

(declare-fun lt!606814 () Bool)

(declare-fun content!2511 (List!18198) (InoxSet Rule!6194))

(assert (=> d!495311 (= lt!606814 (select (content!2511 rules!1846) (rule!5047 (_1!10295 (get!5272 lt!605786)))))))

(declare-fun e!1054660 () Bool)

(assert (=> d!495311 (= lt!606814 e!1054660)))

(declare-fun res!736791 () Bool)

(assert (=> d!495311 (=> (not res!736791) (not e!1054660))))

(assert (=> d!495311 (= res!736791 ((_ is Cons!18128) rules!1846))))

(assert (=> d!495311 (= (contains!3154 rules!1846 (rule!5047 (_1!10295 (get!5272 lt!605786)))) lt!606814)))

(declare-fun b!1644474 () Bool)

(declare-fun e!1054661 () Bool)

(assert (=> b!1644474 (= e!1054660 e!1054661)))

(declare-fun res!736792 () Bool)

(assert (=> b!1644474 (=> res!736792 e!1054661)))

(assert (=> b!1644474 (= res!736792 (= (h!23529 rules!1846) (rule!5047 (_1!10295 (get!5272 lt!605786)))))))

(declare-fun b!1644475 () Bool)

(assert (=> b!1644475 (= e!1054661 (contains!3154 (t!150205 rules!1846) (rule!5047 (_1!10295 (get!5272 lt!605786)))))))

(assert (= (and d!495311 res!736791) b!1644474))

(assert (= (and b!1644474 (not res!736792)) b!1644475))

(declare-fun m!1988053 () Bool)

(assert (=> d!495311 m!1988053))

(declare-fun m!1988055 () Bool)

(assert (=> d!495311 m!1988055))

(declare-fun m!1988057 () Bool)

(assert (=> b!1644475 m!1988057))

(assert (=> b!1643655 d!495311))

(assert (=> b!1643655 d!494987))

(declare-fun b!1644527 () Bool)

(declare-fun e!1054685 () Option!3428)

(assert (=> b!1644527 (= e!1054685 None!3427)))

(declare-fun d!495313 () Bool)

(declare-fun e!1054687 () Bool)

(assert (=> d!495313 e!1054687))

(declare-fun res!736829 () Bool)

(assert (=> d!495313 (=> res!736829 e!1054687)))

(declare-fun lt!606917 () Option!3428)

(assert (=> d!495313 (= res!736829 (isEmpty!11158 lt!606917))))

(assert (=> d!495313 (= lt!606917 e!1054685)))

(declare-fun c!267459 () Bool)

(declare-datatypes ((tuple2!17798 0))(
  ( (tuple2!17799 (_1!10301 List!18196) (_2!10301 List!18196)) )
))
(declare-fun lt!606922 () tuple2!17798)

(assert (=> d!495313 (= c!267459 (isEmpty!11155 (_1!10301 lt!606922)))))

(declare-fun findLongestMatch!289 (Regex!4525 List!18196) tuple2!17798)

(assert (=> d!495313 (= lt!606922 (findLongestMatch!289 (regex!3197 (h!23529 rules!1846)) lt!605504))))

(assert (=> d!495313 (ruleValid!751 thiss!17113 (h!23529 rules!1846))))

(assert (=> d!495313 (= (maxPrefixOneRule!799 thiss!17113 (h!23529 rules!1846) lt!605504) lt!606917)))

(declare-fun b!1644529 () Bool)

(declare-fun res!736826 () Bool)

(declare-fun e!1054688 () Bool)

(assert (=> b!1644529 (=> (not res!736826) (not e!1054688))))

(assert (=> b!1644529 (= res!736826 (= (++!4878 (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606917)))) (_2!10295 (get!5272 lt!606917))) lt!605504))))

(declare-fun b!1644530 () Bool)

(assert (=> b!1644530 (= e!1054685 (Some!3427 (tuple2!17787 (Token!5961 (apply!4736 (transformation!3197 (h!23529 rules!1846)) (seqFromList!2136 (_1!10301 lt!606922))) (h!23529 rules!1846) (size!14441 (seqFromList!2136 (_1!10301 lt!606922))) (_1!10301 lt!606922)) (_2!10301 lt!606922))))))

(declare-fun lt!606925 () Unit!29917)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!347 (Regex!4525 List!18196) Unit!29917)

(assert (=> b!1644530 (= lt!606925 (longestMatchIsAcceptedByMatchOrIsEmpty!347 (regex!3197 (h!23529 rules!1846)) lt!605504))))

(declare-fun res!736832 () Bool)

(declare-fun findLongestMatchInner!363 (Regex!4525 List!18196 Int List!18196 List!18196 Int) tuple2!17798)

(assert (=> b!1644530 (= res!736832 (isEmpty!11155 (_1!10301 (findLongestMatchInner!363 (regex!3197 (h!23529 rules!1846)) Nil!18126 (size!14440 Nil!18126) lt!605504 lt!605504 (size!14440 lt!605504)))))))

(declare-fun e!1054690 () Bool)

(assert (=> b!1644530 (=> res!736832 e!1054690)))

(assert (=> b!1644530 e!1054690))

(declare-fun lt!606924 () Unit!29917)

(assert (=> b!1644530 (= lt!606924 lt!606925)))

(declare-fun lt!606918 () Unit!29917)

(assert (=> b!1644530 (= lt!606918 (lemmaSemiInverse!412 (transformation!3197 (h!23529 rules!1846)) (seqFromList!2136 (_1!10301 lt!606922))))))

(declare-fun b!1644531 () Bool)

(declare-fun res!736831 () Bool)

(assert (=> b!1644531 (=> (not res!736831) (not e!1054688))))

(assert (=> b!1644531 (= res!736831 (= (value!100787 (_1!10295 (get!5272 lt!606917))) (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!606917)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!606917)))))))))

(declare-fun b!1644532 () Bool)

(declare-fun res!736828 () Bool)

(assert (=> b!1644532 (=> (not res!736828) (not e!1054688))))

(assert (=> b!1644532 (= res!736828 (< (size!14440 (_2!10295 (get!5272 lt!606917))) (size!14440 lt!605504)))))

(declare-fun b!1644534 () Bool)

(assert (=> b!1644534 (= e!1054687 e!1054688)))

(declare-fun res!736830 () Bool)

(assert (=> b!1644534 (=> (not res!736830) (not e!1054688))))

(assert (=> b!1644534 (= res!736830 (matchR!2020 (regex!3197 (h!23529 rules!1846)) (list!7182 (charsOf!1846 (_1!10295 (get!5272 lt!606917))))))))

(declare-fun b!1644536 () Bool)

(assert (=> b!1644536 (= e!1054690 (matchR!2020 (regex!3197 (h!23529 rules!1846)) (_1!10301 (findLongestMatchInner!363 (regex!3197 (h!23529 rules!1846)) Nil!18126 (size!14440 Nil!18126) lt!605504 lt!605504 (size!14440 lt!605504)))))))

(declare-fun b!1644538 () Bool)

(declare-fun res!736836 () Bool)

(assert (=> b!1644538 (=> (not res!736836) (not e!1054688))))

(assert (=> b!1644538 (= res!736836 (= (rule!5047 (_1!10295 (get!5272 lt!606917))) (h!23529 rules!1846)))))

(declare-fun b!1644539 () Bool)

(assert (=> b!1644539 (= e!1054688 (= (size!14436 (_1!10295 (get!5272 lt!606917))) (size!14440 (originalCharacters!4011 (_1!10295 (get!5272 lt!606917))))))))

(assert (= (and d!495313 c!267459) b!1644527))

(assert (= (and d!495313 (not c!267459)) b!1644530))

(assert (= (and b!1644530 (not res!736832)) b!1644536))

(assert (= (and d!495313 (not res!736829)) b!1644534))

(assert (= (and b!1644534 res!736830) b!1644529))

(assert (= (and b!1644529 res!736826) b!1644532))

(assert (= (and b!1644532 res!736828) b!1644538))

(assert (= (and b!1644538 res!736836) b!1644531))

(assert (= (and b!1644531 res!736831) b!1644539))

(declare-fun m!1988269 () Bool)

(assert (=> b!1644534 m!1988269))

(declare-fun m!1988271 () Bool)

(assert (=> b!1644534 m!1988271))

(assert (=> b!1644534 m!1988271))

(declare-fun m!1988275 () Bool)

(assert (=> b!1644534 m!1988275))

(assert (=> b!1644534 m!1988275))

(declare-fun m!1988281 () Bool)

(assert (=> b!1644534 m!1988281))

(declare-fun m!1988283 () Bool)

(assert (=> d!495313 m!1988283))

(declare-fun m!1988285 () Bool)

(assert (=> d!495313 m!1988285))

(declare-fun m!1988287 () Bool)

(assert (=> d!495313 m!1988287))

(assert (=> d!495313 m!1987945))

(declare-fun m!1988289 () Bool)

(assert (=> b!1644530 m!1988289))

(assert (=> b!1644530 m!1986167))

(declare-fun m!1988293 () Bool)

(assert (=> b!1644530 m!1988293))

(declare-fun m!1988297 () Bool)

(assert (=> b!1644530 m!1988297))

(declare-fun m!1988303 () Bool)

(assert (=> b!1644530 m!1988303))

(declare-fun m!1988307 () Bool)

(assert (=> b!1644530 m!1988307))

(assert (=> b!1644530 m!1988289))

(assert (=> b!1644530 m!1988303))

(assert (=> b!1644530 m!1988303))

(declare-fun m!1988309 () Bool)

(assert (=> b!1644530 m!1988309))

(declare-fun m!1988311 () Bool)

(assert (=> b!1644530 m!1988311))

(assert (=> b!1644530 m!1988303))

(declare-fun m!1988313 () Bool)

(assert (=> b!1644530 m!1988313))

(assert (=> b!1644530 m!1986167))

(assert (=> b!1644539 m!1988269))

(declare-fun m!1988315 () Bool)

(assert (=> b!1644539 m!1988315))

(assert (=> b!1644531 m!1988269))

(declare-fun m!1988317 () Bool)

(assert (=> b!1644531 m!1988317))

(assert (=> b!1644531 m!1988317))

(declare-fun m!1988319 () Bool)

(assert (=> b!1644531 m!1988319))

(assert (=> b!1644538 m!1988269))

(assert (=> b!1644532 m!1988269))

(declare-fun m!1988323 () Bool)

(assert (=> b!1644532 m!1988323))

(assert (=> b!1644532 m!1986167))

(assert (=> b!1644529 m!1988269))

(assert (=> b!1644529 m!1988271))

(assert (=> b!1644529 m!1988271))

(assert (=> b!1644529 m!1988275))

(assert (=> b!1644529 m!1988275))

(declare-fun m!1988329 () Bool)

(assert (=> b!1644529 m!1988329))

(assert (=> b!1644536 m!1988289))

(assert (=> b!1644536 m!1986167))

(assert (=> b!1644536 m!1988289))

(assert (=> b!1644536 m!1986167))

(assert (=> b!1644536 m!1988293))

(declare-fun m!1988331 () Bool)

(assert (=> b!1644536 m!1988331))

(assert (=> bm!105749 d!495313))

(declare-fun d!495333 () Bool)

(assert (=> d!495333 (= (list!7182 lt!605846) (list!7186 (c!267229 lt!605846)))))

(declare-fun bs!395981 () Bool)

(assert (= bs!395981 d!495333))

(declare-fun m!1988333 () Bool)

(assert (=> bs!395981 m!1988333))

(assert (=> d!494917 d!495333))

(declare-fun d!495335 () Bool)

(declare-fun c!267461 () Bool)

(assert (=> d!495335 (= c!267461 ((_ is Cons!18127) (list!7181 lt!605517)))))

(declare-fun e!1054693 () List!18196)

(assert (=> d!495335 (= (printList!939 thiss!17113 (list!7181 lt!605517)) e!1054693)))

(declare-fun b!1644544 () Bool)

(assert (=> b!1644544 (= e!1054693 (++!4878 (list!7182 (charsOf!1846 (h!23528 (list!7181 lt!605517)))) (printList!939 thiss!17113 (t!150204 (list!7181 lt!605517)))))))

(declare-fun b!1644545 () Bool)

(assert (=> b!1644545 (= e!1054693 Nil!18126)))

(assert (= (and d!495335 c!267461) b!1644544))

(assert (= (and d!495335 (not c!267461)) b!1644545))

(declare-fun m!1988347 () Bool)

(assert (=> b!1644544 m!1988347))

(assert (=> b!1644544 m!1988347))

(declare-fun m!1988349 () Bool)

(assert (=> b!1644544 m!1988349))

(declare-fun m!1988351 () Bool)

(assert (=> b!1644544 m!1988351))

(assert (=> b!1644544 m!1988349))

(assert (=> b!1644544 m!1988351))

(declare-fun m!1988353 () Bool)

(assert (=> b!1644544 m!1988353))

(assert (=> d!494917 d!495335))

(assert (=> d!494917 d!494875))

(declare-fun d!495339 () Bool)

(declare-fun lt!606928 () BalanceConc!12028)

(assert (=> d!495339 (= (list!7182 lt!606928) (printListTailRec!381 thiss!17113 (dropList!652 lt!605517 0) (list!7182 (BalanceConc!12029 Empty!6042))))))

(declare-fun e!1054697 () BalanceConc!12028)

(assert (=> d!495339 (= lt!606928 e!1054697)))

(declare-fun c!267463 () Bool)

(assert (=> d!495339 (= c!267463 (>= 0 (size!14442 lt!605517)))))

(declare-fun e!1054698 () Bool)

(assert (=> d!495339 e!1054698))

(declare-fun res!736842 () Bool)

(assert (=> d!495339 (=> (not res!736842) (not e!1054698))))

(assert (=> d!495339 (= res!736842 (>= 0 0))))

(assert (=> d!495339 (= (printTailRec!877 thiss!17113 lt!605517 0 (BalanceConc!12029 Empty!6042)) lt!606928)))

(declare-fun b!1644551 () Bool)

(assert (=> b!1644551 (= e!1054698 (<= 0 (size!14442 lt!605517)))))

(declare-fun b!1644552 () Bool)

(assert (=> b!1644552 (= e!1054697 (BalanceConc!12029 Empty!6042))))

(declare-fun b!1644553 () Bool)

(assert (=> b!1644553 (= e!1054697 (printTailRec!877 thiss!17113 lt!605517 (+ 0 1) (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605517 0)))))))

(declare-fun lt!606931 () List!18197)

(assert (=> b!1644553 (= lt!606931 (list!7181 lt!605517))))

(declare-fun lt!606934 () Unit!29917)

(assert (=> b!1644553 (= lt!606934 (lemmaDropApply!588 lt!606931 0))))

(assert (=> b!1644553 (= (head!3593 (drop!900 lt!606931 0)) (apply!4735 lt!606931 0))))

(declare-fun lt!606929 () Unit!29917)

(assert (=> b!1644553 (= lt!606929 lt!606934)))

(declare-fun lt!606932 () List!18197)

(assert (=> b!1644553 (= lt!606932 (list!7181 lt!605517))))

(declare-fun lt!606933 () Unit!29917)

(assert (=> b!1644553 (= lt!606933 (lemmaDropTail!568 lt!606932 0))))

(assert (=> b!1644553 (= (tail!2420 (drop!900 lt!606932 0)) (drop!900 lt!606932 (+ 0 1)))))

(declare-fun lt!606930 () Unit!29917)

(assert (=> b!1644553 (= lt!606930 lt!606933)))

(assert (= (and d!495339 res!736842) b!1644551))

(assert (= (and d!495339 c!267463) b!1644552))

(assert (= (and d!495339 (not c!267463)) b!1644553))

(declare-fun m!1988375 () Bool)

(assert (=> d!495339 m!1988375))

(assert (=> d!495339 m!1986125))

(declare-fun m!1988377 () Bool)

(assert (=> d!495339 m!1988377))

(declare-fun m!1988379 () Bool)

(assert (=> d!495339 m!1988379))

(assert (=> d!495339 m!1988375))

(assert (=> d!495339 m!1986125))

(declare-fun m!1988381 () Bool)

(assert (=> d!495339 m!1988381))

(assert (=> b!1644551 m!1988379))

(declare-fun m!1988383 () Bool)

(assert (=> b!1644553 m!1988383))

(declare-fun m!1988385 () Bool)

(assert (=> b!1644553 m!1988385))

(assert (=> b!1644553 m!1988385))

(declare-fun m!1988387 () Bool)

(assert (=> b!1644553 m!1988387))

(assert (=> b!1644553 m!1985703))

(declare-fun m!1988389 () Bool)

(assert (=> b!1644553 m!1988389))

(declare-fun m!1988391 () Bool)

(assert (=> b!1644553 m!1988391))

(declare-fun m!1988395 () Bool)

(assert (=> b!1644553 m!1988395))

(declare-fun m!1988397 () Bool)

(assert (=> b!1644553 m!1988397))

(declare-fun m!1988401 () Bool)

(assert (=> b!1644553 m!1988401))

(declare-fun m!1988403 () Bool)

(assert (=> b!1644553 m!1988403))

(assert (=> b!1644553 m!1988401))

(assert (=> b!1644553 m!1988387))

(declare-fun m!1988407 () Bool)

(assert (=> b!1644553 m!1988407))

(assert (=> b!1644553 m!1988395))

(declare-fun m!1988409 () Bool)

(assert (=> b!1644553 m!1988409))

(assert (=> b!1644553 m!1988383))

(declare-fun m!1988411 () Bool)

(assert (=> b!1644553 m!1988411))

(assert (=> d!494917 d!495339))

(declare-fun d!495351 () Bool)

(declare-fun lt!606938 () Bool)

(assert (=> d!495351 (= lt!606938 (isEmpty!11163 (list!7181 (_1!10294 lt!605845))))))

(assert (=> d!495351 (= lt!606938 (isEmpty!11162 (c!267231 (_1!10294 lt!605845))))))

(assert (=> d!495351 (= (isEmpty!11159 (_1!10294 lt!605845)) lt!606938)))

(declare-fun bs!395984 () Bool)

(assert (= bs!395984 d!495351))

(assert (=> bs!395984 m!1986345))

(assert (=> bs!395984 m!1986345))

(declare-fun m!1988413 () Bool)

(assert (=> bs!395984 m!1988413))

(declare-fun m!1988415 () Bool)

(assert (=> bs!395984 m!1988415))

(assert (=> b!1643745 d!495351))

(declare-fun d!495353 () Bool)

(declare-fun e!1054704 () Bool)

(assert (=> d!495353 e!1054704))

(declare-fun res!736844 () Bool)

(assert (=> d!495353 (=> (not res!736844) (not e!1054704))))

(declare-fun lt!606939 () BalanceConc!12028)

(assert (=> d!495353 (= res!736844 (= (list!7182 lt!606939) (Cons!18126 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0) Nil!18126)))))

(assert (=> d!495353 (= lt!606939 (singleton!716 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0)))))

(assert (=> d!495353 (= (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0)) lt!606939)))

(declare-fun b!1644563 () Bool)

(assert (=> b!1644563 (= e!1054704 (isBalanced!1842 (c!267229 lt!606939)))))

(assert (= (and d!495353 res!736844) b!1644563))

(declare-fun m!1988417 () Bool)

(assert (=> d!495353 m!1988417))

(assert (=> d!495353 m!1986391))

(declare-fun m!1988419 () Bool)

(assert (=> d!495353 m!1988419))

(declare-fun m!1988421 () Bool)

(assert (=> b!1644563 m!1988421))

(assert (=> d!494935 d!495353))

(declare-fun d!495355 () Bool)

(declare-fun lt!606991 () Bool)

(declare-fun prefixMatch!448 (Regex!4525 List!18196) Bool)

(assert (=> d!495355 (= lt!606991 (prefixMatch!448 (rulesRegex!583 thiss!17113 rules!1846) (list!7182 (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))))))

(declare-datatypes ((List!18203 0))(
  ( (Nil!18133) (Cons!18133 (h!23534 Regex!4525) (t!150402 List!18203)) )
))
(declare-datatypes ((Context!1774 0))(
  ( (Context!1775 (exprs!1387 List!18203)) )
))
(declare-fun prefixMatchZipperSequence!603 ((InoxSet Context!1774) BalanceConc!12028 Int) Bool)

(declare-fun focus!193 (Regex!4525) (InoxSet Context!1774))

(assert (=> d!495355 (= lt!606991 (prefixMatchZipperSequence!603 (focus!193 (rulesRegex!583 thiss!17113 rules!1846)) (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))) 0))))

(declare-fun lt!606993 () Unit!29917)

(declare-fun lt!606994 () Unit!29917)

(assert (=> d!495355 (= lt!606993 lt!606994)))

(declare-fun lt!606992 () (InoxSet Context!1774))

(declare-fun lt!606985 () List!18196)

(declare-fun prefixMatchZipper!172 ((InoxSet Context!1774) List!18196) Bool)

(assert (=> d!495355 (= (prefixMatch!448 (rulesRegex!583 thiss!17113 rules!1846) lt!606985) (prefixMatchZipper!172 lt!606992 lt!606985))))

(declare-datatypes ((List!18204 0))(
  ( (Nil!18134) (Cons!18134 (h!23535 Context!1774) (t!150403 List!18204)) )
))
(declare-fun lt!606990 () List!18204)

(declare-fun prefixMatchZipperRegexEquiv!172 ((InoxSet Context!1774) List!18204 Regex!4525 List!18196) Unit!29917)

(assert (=> d!495355 (= lt!606994 (prefixMatchZipperRegexEquiv!172 lt!606992 lt!606990 (rulesRegex!583 thiss!17113 rules!1846) lt!606985))))

(assert (=> d!495355 (= lt!606985 (list!7182 (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0)))))))

(declare-fun toList!933 ((InoxSet Context!1774)) List!18204)

(assert (=> d!495355 (= lt!606990 (toList!933 (focus!193 (rulesRegex!583 thiss!17113 rules!1846))))))

(assert (=> d!495355 (= lt!606992 (focus!193 (rulesRegex!583 thiss!17113 rules!1846)))))

(declare-fun lt!606988 () Unit!29917)

(declare-fun lt!606989 () Unit!29917)

(assert (=> d!495355 (= lt!606988 lt!606989)))

(declare-fun lt!606986 () (InoxSet Context!1774))

(declare-fun lt!606987 () Int)

(declare-fun dropList!654 (BalanceConc!12028 Int) List!18196)

(assert (=> d!495355 (= (prefixMatchZipper!172 lt!606986 (dropList!654 (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))) lt!606987)) (prefixMatchZipperSequence!603 lt!606986 (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))) lt!606987))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!172 ((InoxSet Context!1774) BalanceConc!12028 Int) Unit!29917)

(assert (=> d!495355 (= lt!606989 (lemmaprefixMatchZipperSequenceEquivalent!172 lt!606986 (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))) lt!606987))))

(assert (=> d!495355 (= lt!606987 0)))

(assert (=> d!495355 (= lt!606986 (focus!193 (rulesRegex!583 thiss!17113 rules!1846)))))

(assert (=> d!495355 (validRegex!1800 (rulesRegex!583 thiss!17113 rules!1846))))

(assert (=> d!495355 (= (prefixMatchZipperSequence!601 (rulesRegex!583 thiss!17113 rules!1846) (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0)))) lt!606991)))

(declare-fun bs!395993 () Bool)

(assert (= bs!395993 d!495355))

(declare-fun m!1988585 () Bool)

(assert (=> bs!395993 m!1988585))

(assert (=> bs!395993 m!1986395))

(declare-fun m!1988587 () Bool)

(assert (=> bs!395993 m!1988587))

(assert (=> bs!395993 m!1986397))

(declare-fun m!1988589 () Bool)

(assert (=> bs!395993 m!1988589))

(assert (=> bs!395993 m!1986395))

(declare-fun m!1988591 () Bool)

(assert (=> bs!395993 m!1988591))

(assert (=> bs!395993 m!1988585))

(declare-fun m!1988593 () Bool)

(assert (=> bs!395993 m!1988593))

(declare-fun m!1988595 () Bool)

(assert (=> bs!395993 m!1988595))

(assert (=> bs!395993 m!1986395))

(declare-fun m!1988597 () Bool)

(assert (=> bs!395993 m!1988597))

(assert (=> bs!395993 m!1986395))

(declare-fun m!1988599 () Bool)

(assert (=> bs!395993 m!1988599))

(assert (=> bs!395993 m!1986397))

(declare-fun m!1988601 () Bool)

(assert (=> bs!395993 m!1988601))

(assert (=> bs!395993 m!1988599))

(declare-fun m!1988603 () Bool)

(assert (=> bs!395993 m!1988603))

(assert (=> bs!395993 m!1986397))

(declare-fun m!1988605 () Bool)

(assert (=> bs!395993 m!1988605))

(assert (=> bs!395993 m!1986395))

(declare-fun m!1988607 () Bool)

(assert (=> bs!395993 m!1988607))

(assert (=> bs!395993 m!1986397))

(assert (=> bs!395993 m!1988585))

(assert (=> bs!395993 m!1986397))

(assert (=> bs!395993 m!1988597))

(declare-fun m!1988609 () Bool)

(assert (=> bs!395993 m!1988609))

(assert (=> d!494935 d!495355))

(declare-fun b!1644667 () Bool)

(declare-fun res!736898 () Bool)

(declare-fun e!1054765 () Bool)

(assert (=> b!1644667 (=> (not res!736898) (not e!1054765))))

(declare-fun ++!4886 (Conc!6042 Conc!6042) Conc!6042)

(assert (=> b!1644667 (= res!736898 (isBalanced!1842 (++!4886 (c!267229 (charsOf!1846 (h!23528 tokens!457))) (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))))))

(declare-fun b!1644670 () Bool)

(declare-fun lt!607000 () BalanceConc!12028)

(assert (=> b!1644670 (= e!1054765 (= (list!7182 lt!607000) (++!4878 (list!7182 (charsOf!1846 (h!23528 tokens!457))) (list!7182 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))))))

(declare-fun b!1644669 () Bool)

(declare-fun res!736901 () Bool)

(assert (=> b!1644669 (=> (not res!736901) (not e!1054765))))

(declare-fun height!931 (Conc!6042) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1644669 (= res!736901 (>= (height!931 (++!4886 (c!267229 (charsOf!1846 (h!23528 tokens!457))) (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))) (max!0 (height!931 (c!267229 (charsOf!1846 (h!23528 tokens!457)))) (height!931 (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0)))))))))

(declare-fun d!495417 () Bool)

(assert (=> d!495417 e!1054765))

(declare-fun res!736899 () Bool)

(assert (=> d!495417 (=> (not res!736899) (not e!1054765))))

(declare-fun appendAssocInst!455 (Conc!6042 Conc!6042) Bool)

(assert (=> d!495417 (= res!736899 (appendAssocInst!455 (c!267229 (charsOf!1846 (h!23528 tokens!457))) (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0)))))))

(assert (=> d!495417 (= lt!607000 (BalanceConc!12029 (++!4886 (c!267229 (charsOf!1846 (h!23528 tokens!457))) (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))))))

(assert (=> d!495417 (= (++!4880 (charsOf!1846 (h!23528 tokens!457)) (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))) lt!607000)))

(declare-fun b!1644668 () Bool)

(declare-fun res!736900 () Bool)

(assert (=> b!1644668 (=> (not res!736900) (not e!1054765))))

(assert (=> b!1644668 (= res!736900 (<= (height!931 (++!4886 (c!267229 (charsOf!1846 (h!23528 tokens!457))) (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))) (+ (max!0 (height!931 (c!267229 (charsOf!1846 (h!23528 tokens!457)))) (height!931 (c!267229 (singletonSeq!1669 (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0))))) 1)))))

(assert (= (and d!495417 res!736899) b!1644667))

(assert (= (and b!1644667 res!736898) b!1644668))

(assert (= (and b!1644668 res!736900) b!1644669))

(assert (= (and b!1644669 res!736901) b!1644670))

(declare-fun m!1988645 () Bool)

(assert (=> b!1644669 m!1988645))

(declare-fun m!1988647 () Bool)

(assert (=> b!1644669 m!1988647))

(declare-fun m!1988649 () Bool)

(assert (=> b!1644669 m!1988649))

(declare-fun m!1988651 () Bool)

(assert (=> b!1644669 m!1988651))

(declare-fun m!1988653 () Bool)

(assert (=> b!1644669 m!1988653))

(assert (=> b!1644669 m!1988645))

(assert (=> b!1644669 m!1988651))

(assert (=> b!1644669 m!1988647))

(declare-fun m!1988655 () Bool)

(assert (=> d!495417 m!1988655))

(assert (=> d!495417 m!1988651))

(assert (=> b!1644668 m!1988645))

(assert (=> b!1644668 m!1988647))

(assert (=> b!1644668 m!1988649))

(assert (=> b!1644668 m!1988651))

(assert (=> b!1644668 m!1988653))

(assert (=> b!1644668 m!1988645))

(assert (=> b!1644668 m!1988651))

(assert (=> b!1644668 m!1988647))

(declare-fun m!1988657 () Bool)

(assert (=> b!1644670 m!1988657))

(assert (=> b!1644670 m!1985717))

(assert (=> b!1644670 m!1985731))

(assert (=> b!1644670 m!1986393))

(declare-fun m!1988661 () Bool)

(assert (=> b!1644670 m!1988661))

(assert (=> b!1644670 m!1985731))

(assert (=> b!1644670 m!1988661))

(declare-fun m!1988665 () Bool)

(assert (=> b!1644670 m!1988665))

(assert (=> b!1644667 m!1988651))

(assert (=> b!1644667 m!1988651))

(declare-fun m!1988673 () Bool)

(assert (=> b!1644667 m!1988673))

(assert (=> d!494935 d!495417))

(assert (=> d!494935 d!494919))

(declare-fun d!495439 () Bool)

(declare-fun lt!607008 () C!9224)

(assert (=> d!495439 (= lt!607008 (apply!4739 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) 0))))

(assert (=> d!495439 (= lt!607008 (apply!4740 (c!267229 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) 0))))

(declare-fun e!1054768 () Bool)

(assert (=> d!495439 e!1054768))

(declare-fun res!736904 () Bool)

(assert (=> d!495439 (=> (not res!736904) (not e!1054768))))

(assert (=> d!495439 (= res!736904 (<= 0 0))))

(assert (=> d!495439 (= (apply!4733 (charsOf!1846 (h!23528 (t!150204 tokens!457))) 0) lt!607008)))

(declare-fun b!1644673 () Bool)

(assert (=> b!1644673 (= e!1054768 (< 0 (size!14441 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(assert (= (and d!495439 res!736904) b!1644673))

(assert (=> d!495439 m!1986023))

(assert (=> d!495439 m!1986001))

(assert (=> d!495439 m!1986001))

(declare-fun m!1988683 () Bool)

(assert (=> d!495439 m!1988683))

(declare-fun m!1988685 () Bool)

(assert (=> d!495439 m!1988685))

(assert (=> b!1644673 m!1986023))

(assert (=> b!1644673 m!1986085))

(assert (=> d!494935 d!495439))

(declare-fun d!495445 () Bool)

(declare-fun lt!607011 () Unit!29917)

(declare-fun lemma!258 (List!18198 LexerInterface!2826 List!18198) Unit!29917)

(assert (=> d!495445 (= lt!607011 (lemma!258 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67571 () Int)

(declare-fun generalisedUnion!266 (List!18203) Regex!4525)

(declare-fun map!3736 (List!18198 Int) List!18203)

(assert (=> d!495445 (= (rulesRegex!583 thiss!17113 rules!1846) (generalisedUnion!266 (map!3736 rules!1846 lambda!67571)))))

(declare-fun bs!395999 () Bool)

(assert (= bs!395999 d!495445))

(declare-fun m!1988699 () Bool)

(assert (=> bs!395999 m!1988699))

(declare-fun m!1988701 () Bool)

(assert (=> bs!395999 m!1988701))

(assert (=> bs!395999 m!1988701))

(declare-fun m!1988703 () Bool)

(assert (=> bs!395999 m!1988703))

(assert (=> d!494935 d!495445))

(assert (=> d!494935 d!495141))

(declare-fun d!495449 () Bool)

(assert (=> d!495449 (= (list!7182 (_2!10294 lt!605845)) (list!7186 (c!267229 (_2!10294 lt!605845))))))

(declare-fun bs!396000 () Bool)

(assert (= bs!396000 d!495449))

(declare-fun m!1988705 () Bool)

(assert (=> bs!396000 m!1988705))

(assert (=> b!1643743 d!495449))

(assert (=> b!1643743 d!495203))

(assert (=> b!1643743 d!494903))

(declare-fun d!495451 () Bool)

(declare-fun lt!607052 () Bool)

(declare-fun e!1054813 () Bool)

(assert (=> d!495451 (= lt!607052 e!1054813)))

(declare-fun res!736955 () Bool)

(assert (=> d!495451 (=> (not res!736955) (not e!1054813))))

(assert (=> d!495451 (= res!736955 (= (list!7181 (_1!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 tokens!457)))))) (list!7181 (singletonSeq!1667 (h!23528 tokens!457)))))))

(declare-fun e!1054812 () Bool)

(assert (=> d!495451 (= lt!607052 e!1054812)))

(declare-fun res!736956 () Bool)

(assert (=> d!495451 (=> (not res!736956) (not e!1054812))))

(declare-fun lt!607053 () tuple2!17784)

(assert (=> d!495451 (= res!736956 (= (size!14442 (_1!10294 lt!607053)) 1))))

(assert (=> d!495451 (= lt!607053 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 tokens!457)))))))

(assert (=> d!495451 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495451 (= (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 tokens!457)) lt!607052)))

(declare-fun b!1644749 () Bool)

(declare-fun res!736957 () Bool)

(assert (=> b!1644749 (=> (not res!736957) (not e!1054812))))

(assert (=> b!1644749 (= res!736957 (= (apply!4734 (_1!10294 lt!607053) 0) (h!23528 tokens!457)))))

(declare-fun b!1644750 () Bool)

(assert (=> b!1644750 (= e!1054812 (isEmpty!11156 (_2!10294 lt!607053)))))

(declare-fun b!1644751 () Bool)

(assert (=> b!1644751 (= e!1054813 (isEmpty!11156 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 tokens!457)))))))))

(assert (= (and d!495451 res!736956) b!1644749))

(assert (= (and b!1644749 res!736957) b!1644750))

(assert (= (and d!495451 res!736955) b!1644751))

(declare-fun m!1988875 () Bool)

(assert (=> d!495451 m!1988875))

(assert (=> d!495451 m!1985699))

(assert (=> d!495451 m!1985693))

(declare-fun m!1988877 () Bool)

(assert (=> d!495451 m!1988877))

(assert (=> d!495451 m!1988877))

(declare-fun m!1988879 () Bool)

(assert (=> d!495451 m!1988879))

(declare-fun m!1988881 () Bool)

(assert (=> d!495451 m!1988881))

(assert (=> d!495451 m!1985693))

(assert (=> d!495451 m!1985693))

(declare-fun m!1988883 () Bool)

(assert (=> d!495451 m!1988883))

(declare-fun m!1988885 () Bool)

(assert (=> b!1644749 m!1988885))

(declare-fun m!1988887 () Bool)

(assert (=> b!1644750 m!1988887))

(assert (=> b!1644751 m!1985693))

(assert (=> b!1644751 m!1985693))

(assert (=> b!1644751 m!1988877))

(assert (=> b!1644751 m!1988877))

(assert (=> b!1644751 m!1988879))

(declare-fun m!1988889 () Bool)

(assert (=> b!1644751 m!1988889))

(assert (=> b!1643553 d!495451))

(assert (=> b!1643609 d!495451))

(assert (=> b!1643609 d!494935))

(declare-fun d!495495 () Bool)

(declare-fun lt!607054 () Int)

(assert (=> d!495495 (= lt!607054 (size!14440 (list!7182 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495495 (= lt!607054 (size!14448 (c!267229 (charsOf!1846 (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495495 (= (size!14441 (charsOf!1846 (h!23528 (t!150204 tokens!457)))) lt!607054)))

(declare-fun bs!396011 () Bool)

(assert (= bs!396011 d!495495))

(assert (=> bs!396011 m!1986023))

(assert (=> bs!396011 m!1986001))

(assert (=> bs!396011 m!1986001))

(assert (=> bs!396011 m!1987213))

(declare-fun m!1988891 () Bool)

(assert (=> bs!396011 m!1988891))

(assert (=> b!1643609 d!495495))

(declare-fun d!495497 () Bool)

(assert (=> d!495497 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 tokens!457))))

(declare-fun lt!607084 () Unit!29917)

(declare-fun choose!9866 (LexerInterface!2826 List!18198 List!18197 Token!5960) Unit!29917)

(assert (=> d!495497 (= lt!607084 (choose!9866 thiss!17113 rules!1846 tokens!457 (h!23528 tokens!457)))))

(assert (=> d!495497 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495497 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 thiss!17113 rules!1846 tokens!457 (h!23528 tokens!457)) lt!607084)))

(declare-fun bs!396015 () Bool)

(assert (= bs!396015 d!495497))

(assert (=> bs!396015 m!1985973))

(declare-fun m!1989031 () Bool)

(assert (=> bs!396015 m!1989031))

(assert (=> bs!396015 m!1985699))

(assert (=> b!1643609 d!495497))

(assert (=> b!1643609 d!495141))

(declare-fun d!495533 () Bool)

(declare-fun lt!607085 () Bool)

(declare-fun e!1054904 () Bool)

(assert (=> d!495533 (= lt!607085 e!1054904)))

(declare-fun res!736987 () Bool)

(assert (=> d!495533 (=> (not res!736987) (not e!1054904))))

(assert (=> d!495533 (= res!736987 (= (list!7181 (_1!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))) (list!7181 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))))

(declare-fun e!1054903 () Bool)

(assert (=> d!495533 (= lt!607085 e!1054903)))

(declare-fun res!736988 () Bool)

(assert (=> d!495533 (=> (not res!736988) (not e!1054903))))

(declare-fun lt!607086 () tuple2!17784)

(assert (=> d!495533 (= res!736988 (= (size!14442 (_1!10294 lt!607086)) 1))))

(assert (=> d!495533 (= lt!607086 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))))

(assert (=> d!495533 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495533 (= (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457))) lt!607085)))

(declare-fun b!1644909 () Bool)

(declare-fun res!736989 () Bool)

(assert (=> b!1644909 (=> (not res!736989) (not e!1054903))))

(assert (=> b!1644909 (= res!736989 (= (apply!4734 (_1!10294 lt!607086) 0) (h!23528 (t!150204 tokens!457))))))

(declare-fun b!1644910 () Bool)

(assert (=> b!1644910 (= e!1054903 (isEmpty!11156 (_2!10294 lt!607086)))))

(declare-fun b!1644911 () Bool)

(assert (=> b!1644911 (= e!1054904 (isEmpty!11156 (_2!10294 (lex!1310 thiss!17113 rules!1846 (print!1357 thiss!17113 (singletonSeq!1667 (h!23528 (t!150204 tokens!457))))))))))

(assert (= (and d!495533 res!736988) b!1644909))

(assert (= (and b!1644909 res!736989) b!1644910))

(assert (= (and d!495533 res!736987) b!1644911))

(declare-fun m!1989033 () Bool)

(assert (=> d!495533 m!1989033))

(assert (=> d!495533 m!1985699))

(assert (=> d!495533 m!1986013))

(assert (=> d!495533 m!1986015))

(assert (=> d!495533 m!1986015))

(declare-fun m!1989035 () Bool)

(assert (=> d!495533 m!1989035))

(declare-fun m!1989037 () Bool)

(assert (=> d!495533 m!1989037))

(assert (=> d!495533 m!1986013))

(assert (=> d!495533 m!1986013))

(assert (=> d!495533 m!1987173))

(declare-fun m!1989039 () Bool)

(assert (=> b!1644909 m!1989039))

(declare-fun m!1989041 () Bool)

(assert (=> b!1644910 m!1989041))

(assert (=> b!1644911 m!1986013))

(assert (=> b!1644911 m!1986013))

(assert (=> b!1644911 m!1986015))

(assert (=> b!1644911 m!1986015))

(assert (=> b!1644911 m!1989035))

(declare-fun m!1989043 () Bool)

(assert (=> b!1644911 m!1989043))

(assert (=> b!1643609 d!495533))

(declare-fun d!495535 () Bool)

(assert (=> d!495535 (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 (t!150204 tokens!457)))))

(declare-fun lt!607087 () Unit!29917)

(assert (=> d!495535 (= lt!607087 (choose!9866 thiss!17113 rules!1846 tokens!457 (h!23528 (t!150204 tokens!457))))))

(assert (=> d!495535 (not (isEmpty!11151 rules!1846))))

(assert (=> d!495535 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!594 thiss!17113 rules!1846 tokens!457 (h!23528 (t!150204 tokens!457))) lt!607087)))

(declare-fun bs!396016 () Bool)

(assert (= bs!396016 d!495535))

(assert (=> bs!396016 m!1986089))

(declare-fun m!1989045 () Bool)

(assert (=> bs!396016 m!1989045))

(assert (=> bs!396016 m!1985699))

(assert (=> b!1643609 d!495535))

(declare-fun d!495537 () Bool)

(declare-fun c!267533 () Bool)

(assert (=> d!495537 (= c!267533 ((_ is Node!6042) (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))))

(declare-fun e!1054909 () Bool)

(assert (=> d!495537 (= (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))) e!1054909)))

(declare-fun b!1644918 () Bool)

(declare-fun inv!23492 (Conc!6042) Bool)

(assert (=> b!1644918 (= e!1054909 (inv!23492 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))))

(declare-fun b!1644919 () Bool)

(declare-fun e!1054910 () Bool)

(assert (=> b!1644919 (= e!1054909 e!1054910)))

(declare-fun res!736992 () Bool)

(assert (=> b!1644919 (= res!736992 (not ((_ is Leaf!8861) (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))))))))

(assert (=> b!1644919 (=> res!736992 e!1054910)))

(declare-fun b!1644920 () Bool)

(declare-fun inv!23493 (Conc!6042) Bool)

(assert (=> b!1644920 (= e!1054910 (inv!23493 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))))))

(assert (= (and d!495537 c!267533) b!1644918))

(assert (= (and d!495537 (not c!267533)) b!1644919))

(assert (= (and b!1644919 (not res!736992)) b!1644920))

(declare-fun m!1989047 () Bool)

(assert (=> b!1644918 m!1989047))

(declare-fun m!1989049 () Bool)

(assert (=> b!1644920 m!1989049))

(assert (=> b!1643750 d!495537))

(assert (=> b!1643652 d!494987))

(declare-fun d!495539 () Bool)

(declare-fun dynLambda!8109 (Int BalanceConc!12028) TokenValue!3287)

(assert (=> d!495539 (= (apply!4736 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!605786))))) (dynLambda!8109 (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!605786))))))))

(declare-fun b_lambda!51697 () Bool)

(assert (=> (not b_lambda!51697) (not d!495539)))

(declare-fun t!150356 () Bool)

(declare-fun tb!94171 () Bool)

(assert (=> (and b!1643419 (= (toValue!4636 (transformation!3197 (h!23529 rules!1846))) (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150356) tb!94171))

(declare-fun result!113730 () Bool)

(assert (=> tb!94171 (= result!113730 (inv!21 (dynLambda!8109 (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786))))) (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!605786)))))))))

(declare-fun m!1989051 () Bool)

(assert (=> tb!94171 m!1989051))

(assert (=> d!495539 t!150356))

(declare-fun b_and!116717 () Bool)

(assert (= b_and!116573 (and (=> t!150356 result!113730) b_and!116717)))

(declare-fun t!150358 () Bool)

(declare-fun tb!94173 () Bool)

(assert (=> (and b!1643415 (= (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150358) tb!94173))

(declare-fun result!113734 () Bool)

(assert (= result!113734 result!113730))

(assert (=> d!495539 t!150358))

(declare-fun b_and!116719 () Bool)

(assert (= b_and!116577 (and (=> t!150358 result!113734) b_and!116719)))

(declare-fun t!150360 () Bool)

(declare-fun tb!94175 () Bool)

(assert (=> (and b!1643795 (= (toValue!4636 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150360) tb!94175))

(declare-fun result!113736 () Bool)

(assert (= result!113736 result!113730))

(assert (=> d!495539 t!150360))

(declare-fun b_and!116721 () Bool)

(assert (= b_and!116605 (and (=> t!150360 result!113736) b_and!116721)))

(declare-fun t!150362 () Bool)

(declare-fun tb!94177 () Bool)

(assert (=> (and b!1643809 (= (toValue!4636 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150362) tb!94177))

(declare-fun result!113738 () Bool)

(assert (= result!113738 result!113730))

(assert (=> d!495539 t!150362))

(declare-fun b_and!116723 () Bool)

(assert (= b_and!116609 (and (=> t!150362 result!113738) b_and!116723)))

(assert (=> d!495539 m!1986177))

(declare-fun m!1989053 () Bool)

(assert (=> d!495539 m!1989053))

(assert (=> b!1643652 d!495539))

(declare-fun d!495541 () Bool)

(declare-fun fromListB!945 (List!18196) BalanceConc!12028)

(assert (=> d!495541 (= (seqFromList!2136 (originalCharacters!4011 (_1!10295 (get!5272 lt!605786)))) (fromListB!945 (originalCharacters!4011 (_1!10295 (get!5272 lt!605786)))))))

(declare-fun bs!396017 () Bool)

(assert (= bs!396017 d!495541))

(declare-fun m!1989055 () Bool)

(assert (=> bs!396017 m!1989055))

(assert (=> b!1643652 d!495541))

(declare-fun d!495543 () Bool)

(assert (=> d!495543 (= (head!3589 lt!605502) (h!23527 lt!605502))))

(assert (=> b!1643602 d!495543))

(declare-fun d!495545 () Bool)

(assert (=> d!495545 (= (head!3589 lt!605512) (h!23527 lt!605512))))

(assert (=> b!1643602 d!495545))

(declare-fun d!495547 () Bool)

(assert (=> d!495547 (= (list!7182 lt!605810) (list!7186 (c!267229 lt!605810)))))

(declare-fun bs!396018 () Bool)

(assert (= bs!396018 d!495547))

(declare-fun m!1989057 () Bool)

(assert (=> bs!396018 m!1989057))

(assert (=> d!494901 d!495547))

(declare-fun d!495549 () Bool)

(declare-fun c!267534 () Bool)

(assert (=> d!495549 (= c!267534 ((_ is Cons!18127) (list!7181 (seqFromList!2134 tokens!457))))))

(declare-fun e!1054914 () List!18196)

(assert (=> d!495549 (= (printList!939 thiss!17113 (list!7181 (seqFromList!2134 tokens!457))) e!1054914)))

(declare-fun b!1644923 () Bool)

(assert (=> b!1644923 (= e!1054914 (++!4878 (list!7182 (charsOf!1846 (h!23528 (list!7181 (seqFromList!2134 tokens!457))))) (printList!939 thiss!17113 (t!150204 (list!7181 (seqFromList!2134 tokens!457))))))))

(declare-fun b!1644924 () Bool)

(assert (=> b!1644924 (= e!1054914 Nil!18126)))

(assert (= (and d!495549 c!267534) b!1644923))

(assert (= (and d!495549 (not c!267534)) b!1644924))

(declare-fun m!1989059 () Bool)

(assert (=> b!1644923 m!1989059))

(assert (=> b!1644923 m!1989059))

(declare-fun m!1989061 () Bool)

(assert (=> b!1644923 m!1989061))

(declare-fun m!1989063 () Bool)

(assert (=> b!1644923 m!1989063))

(assert (=> b!1644923 m!1989061))

(assert (=> b!1644923 m!1989063))

(declare-fun m!1989065 () Bool)

(assert (=> b!1644923 m!1989065))

(assert (=> d!494901 d!495549))

(declare-fun d!495551 () Bool)

(assert (=> d!495551 (= (list!7181 (seqFromList!2134 tokens!457)) (list!7185 (c!267231 (seqFromList!2134 tokens!457))))))

(declare-fun bs!396019 () Bool)

(assert (= bs!396019 d!495551))

(declare-fun m!1989067 () Bool)

(assert (=> bs!396019 m!1989067))

(assert (=> d!494901 d!495551))

(declare-fun d!495553 () Bool)

(declare-fun lt!607088 () BalanceConc!12028)

(assert (=> d!495553 (= (list!7182 lt!607088) (printListTailRec!381 thiss!17113 (dropList!652 (seqFromList!2134 tokens!457) 0) (list!7182 (BalanceConc!12029 Empty!6042))))))

(declare-fun e!1054915 () BalanceConc!12028)

(assert (=> d!495553 (= lt!607088 e!1054915)))

(declare-fun c!267535 () Bool)

(assert (=> d!495553 (= c!267535 (>= 0 (size!14442 (seqFromList!2134 tokens!457))))))

(declare-fun e!1054916 () Bool)

(assert (=> d!495553 e!1054916))

(declare-fun res!736993 () Bool)

(assert (=> d!495553 (=> (not res!736993) (not e!1054916))))

(assert (=> d!495553 (= res!736993 (>= 0 0))))

(assert (=> d!495553 (= (printTailRec!877 thiss!17113 (seqFromList!2134 tokens!457) 0 (BalanceConc!12029 Empty!6042)) lt!607088)))

(declare-fun b!1644925 () Bool)

(assert (=> b!1644925 (= e!1054916 (<= 0 (size!14442 (seqFromList!2134 tokens!457))))))

(declare-fun b!1644926 () Bool)

(assert (=> b!1644926 (= e!1054915 (BalanceConc!12029 Empty!6042))))

(declare-fun b!1644927 () Bool)

(assert (=> b!1644927 (= e!1054915 (printTailRec!877 thiss!17113 (seqFromList!2134 tokens!457) (+ 0 1) (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 (seqFromList!2134 tokens!457) 0)))))))

(declare-fun lt!607091 () List!18197)

(assert (=> b!1644927 (= lt!607091 (list!7181 (seqFromList!2134 tokens!457)))))

(declare-fun lt!607094 () Unit!29917)

(assert (=> b!1644927 (= lt!607094 (lemmaDropApply!588 lt!607091 0))))

(assert (=> b!1644927 (= (head!3593 (drop!900 lt!607091 0)) (apply!4735 lt!607091 0))))

(declare-fun lt!607089 () Unit!29917)

(assert (=> b!1644927 (= lt!607089 lt!607094)))

(declare-fun lt!607092 () List!18197)

(assert (=> b!1644927 (= lt!607092 (list!7181 (seqFromList!2134 tokens!457)))))

(declare-fun lt!607093 () Unit!29917)

(assert (=> b!1644927 (= lt!607093 (lemmaDropTail!568 lt!607092 0))))

(assert (=> b!1644927 (= (tail!2420 (drop!900 lt!607092 0)) (drop!900 lt!607092 (+ 0 1)))))

(declare-fun lt!607090 () Unit!29917)

(assert (=> b!1644927 (= lt!607090 lt!607093)))

(assert (= (and d!495553 res!736993) b!1644925))

(assert (= (and d!495553 c!267535) b!1644926))

(assert (= (and d!495553 (not c!267535)) b!1644927))

(declare-fun m!1989069 () Bool)

(assert (=> d!495553 m!1989069))

(assert (=> d!495553 m!1986125))

(declare-fun m!1989071 () Bool)

(assert (=> d!495553 m!1989071))

(assert (=> d!495553 m!1985725))

(declare-fun m!1989073 () Bool)

(assert (=> d!495553 m!1989073))

(assert (=> d!495553 m!1985725))

(assert (=> d!495553 m!1989069))

(assert (=> d!495553 m!1986125))

(declare-fun m!1989075 () Bool)

(assert (=> d!495553 m!1989075))

(assert (=> b!1644925 m!1985725))

(assert (=> b!1644925 m!1989073))

(declare-fun m!1989077 () Bool)

(assert (=> b!1644927 m!1989077))

(declare-fun m!1989079 () Bool)

(assert (=> b!1644927 m!1989079))

(assert (=> b!1644927 m!1989079))

(declare-fun m!1989081 () Bool)

(assert (=> b!1644927 m!1989081))

(assert (=> b!1644927 m!1985725))

(assert (=> b!1644927 m!1986213))

(declare-fun m!1989083 () Bool)

(assert (=> b!1644927 m!1989083))

(declare-fun m!1989085 () Bool)

(assert (=> b!1644927 m!1989085))

(declare-fun m!1989087 () Bool)

(assert (=> b!1644927 m!1989087))

(declare-fun m!1989089 () Bool)

(assert (=> b!1644927 m!1989089))

(declare-fun m!1989091 () Bool)

(assert (=> b!1644927 m!1989091))

(declare-fun m!1989093 () Bool)

(assert (=> b!1644927 m!1989093))

(assert (=> b!1644927 m!1989091))

(assert (=> b!1644927 m!1985725))

(assert (=> b!1644927 m!1989081))

(declare-fun m!1989095 () Bool)

(assert (=> b!1644927 m!1989095))

(assert (=> b!1644927 m!1989087))

(declare-fun m!1989097 () Bool)

(assert (=> b!1644927 m!1989097))

(assert (=> b!1644927 m!1985725))

(assert (=> b!1644927 m!1989077))

(declare-fun m!1989099 () Bool)

(assert (=> b!1644927 m!1989099))

(assert (=> d!494901 d!495553))

(declare-fun d!495555 () Bool)

(declare-fun lt!607095 () BalanceConc!12028)

(assert (=> d!495555 (= (list!7182 lt!607095) (originalCharacters!4011 (apply!4734 lt!605506 0)))))

(assert (=> d!495555 (= lt!607095 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0)))) (value!100787 (apply!4734 lt!605506 0))))))

(assert (=> d!495555 (= (charsOf!1846 (apply!4734 lt!605506 0)) lt!607095)))

(declare-fun b_lambda!51699 () Bool)

(assert (=> (not b_lambda!51699) (not d!495555)))

(declare-fun t!150366 () Bool)

(declare-fun tb!94179 () Bool)

(assert (=> (and b!1643419 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0))))) t!150366) tb!94179))

(declare-fun b!1644928 () Bool)

(declare-fun e!1054917 () Bool)

(declare-fun tp!476532 () Bool)

(assert (=> b!1644928 (= e!1054917 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0)))) (value!100787 (apply!4734 lt!605506 0))))) tp!476532))))

(declare-fun result!113740 () Bool)

(assert (=> tb!94179 (= result!113740 (and (inv!23489 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0)))) (value!100787 (apply!4734 lt!605506 0)))) e!1054917))))

(assert (= tb!94179 b!1644928))

(declare-fun m!1989101 () Bool)

(assert (=> b!1644928 m!1989101))

(declare-fun m!1989103 () Bool)

(assert (=> tb!94179 m!1989103))

(assert (=> d!495555 t!150366))

(declare-fun b_and!116725 () Bool)

(assert (= b_and!116669 (and (=> t!150366 result!113740) b_and!116725)))

(declare-fun t!150368 () Bool)

(declare-fun tb!94181 () Bool)

(assert (=> (and b!1643415 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0))))) t!150368) tb!94181))

(declare-fun result!113742 () Bool)

(assert (= result!113742 result!113740))

(assert (=> d!495555 t!150368))

(declare-fun b_and!116727 () Bool)

(assert (= b_and!116671 (and (=> t!150368 result!113742) b_and!116727)))

(declare-fun tb!94183 () Bool)

(declare-fun t!150370 () Bool)

(assert (=> (and b!1643795 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0))))) t!150370) tb!94183))

(declare-fun result!113744 () Bool)

(assert (= result!113744 result!113740))

(assert (=> d!495555 t!150370))

(declare-fun b_and!116729 () Bool)

(assert (= b_and!116673 (and (=> t!150370 result!113744) b_and!116729)))

(declare-fun t!150372 () Bool)

(declare-fun tb!94185 () Bool)

(assert (=> (and b!1643809 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0))))) t!150372) tb!94185))

(declare-fun result!113746 () Bool)

(assert (= result!113746 result!113740))

(assert (=> d!495555 t!150372))

(declare-fun b_and!116731 () Bool)

(assert (= b_and!116675 (and (=> t!150372 result!113746) b_and!116731)))

(declare-fun m!1989105 () Bool)

(assert (=> d!495555 m!1989105))

(declare-fun m!1989107 () Bool)

(assert (=> d!495555 m!1989107))

(assert (=> b!1643625 d!495555))

(declare-fun d!495557 () Bool)

(declare-fun lt!607098 () Token!5960)

(declare-fun contains!3157 (List!18197 Token!5960) Bool)

(assert (=> d!495557 (contains!3157 lt!605733 lt!607098)))

(declare-fun e!1054923 () Token!5960)

(assert (=> d!495557 (= lt!607098 e!1054923)))

(declare-fun c!267538 () Bool)

(assert (=> d!495557 (= c!267538 (= 0 0))))

(declare-fun e!1054922 () Bool)

(assert (=> d!495557 e!1054922))

(declare-fun res!736996 () Bool)

(assert (=> d!495557 (=> (not res!736996) (not e!1054922))))

(assert (=> d!495557 (= res!736996 (<= 0 0))))

(assert (=> d!495557 (= (apply!4735 lt!605733 0) lt!607098)))

(declare-fun b!1644935 () Bool)

(assert (=> b!1644935 (= e!1054922 (< 0 (size!14446 lt!605733)))))

(declare-fun b!1644936 () Bool)

(assert (=> b!1644936 (= e!1054923 (head!3593 lt!605733))))

(declare-fun b!1644937 () Bool)

(assert (=> b!1644937 (= e!1054923 (apply!4735 (tail!2420 lt!605733) (- 0 1)))))

(assert (= (and d!495557 res!736996) b!1644935))

(assert (= (and d!495557 c!267538) b!1644936))

(assert (= (and d!495557 (not c!267538)) b!1644937))

(declare-fun m!1989109 () Bool)

(assert (=> d!495557 m!1989109))

(declare-fun m!1989111 () Bool)

(assert (=> b!1644935 m!1989111))

(declare-fun m!1989113 () Bool)

(assert (=> b!1644936 m!1989113))

(declare-fun m!1989115 () Bool)

(assert (=> b!1644937 m!1989115))

(assert (=> b!1644937 m!1989115))

(declare-fun m!1989117 () Bool)

(assert (=> b!1644937 m!1989117))

(assert (=> b!1643625 d!495557))

(declare-fun b!1644956 () Bool)

(declare-fun e!1054937 () List!18197)

(assert (=> b!1644956 (= e!1054937 lt!605734)))

(declare-fun b!1644957 () Bool)

(declare-fun e!1054934 () List!18197)

(assert (=> b!1644957 (= e!1054934 e!1054937)))

(declare-fun c!267547 () Bool)

(assert (=> b!1644957 (= c!267547 (<= (+ 0 1) 0))))

(declare-fun b!1644958 () Bool)

(declare-fun e!1054936 () Int)

(declare-fun call!105778 () Int)

(assert (=> b!1644958 (= e!1054936 (- call!105778 (+ 0 1)))))

(declare-fun b!1644959 () Bool)

(assert (=> b!1644959 (= e!1054937 (drop!900 (t!150204 lt!605734) (- (+ 0 1) 1)))))

(declare-fun bm!105773 () Bool)

(assert (=> bm!105773 (= call!105778 (size!14446 lt!605734))))

(declare-fun d!495559 () Bool)

(declare-fun e!1054935 () Bool)

(assert (=> d!495559 e!1054935))

(declare-fun res!736999 () Bool)

(assert (=> d!495559 (=> (not res!736999) (not e!1054935))))

(declare-fun lt!607101 () List!18197)

(declare-fun content!2513 (List!18197) (InoxSet Token!5960))

(assert (=> d!495559 (= res!736999 (= ((_ map implies) (content!2513 lt!607101) (content!2513 lt!605734)) ((as const (InoxSet Token!5960)) true)))))

(assert (=> d!495559 (= lt!607101 e!1054934)))

(declare-fun c!267548 () Bool)

(assert (=> d!495559 (= c!267548 ((_ is Nil!18127) lt!605734))))

(assert (=> d!495559 (= (drop!900 lt!605734 (+ 0 1)) lt!607101)))

(declare-fun b!1644960 () Bool)

(assert (=> b!1644960 (= e!1054934 Nil!18127)))

(declare-fun b!1644961 () Bool)

(declare-fun e!1054938 () Int)

(assert (=> b!1644961 (= e!1054938 call!105778)))

(declare-fun b!1644962 () Bool)

(assert (=> b!1644962 (= e!1054935 (= (size!14446 lt!607101) e!1054938))))

(declare-fun c!267549 () Bool)

(assert (=> b!1644962 (= c!267549 (<= (+ 0 1) 0))))

(declare-fun b!1644963 () Bool)

(assert (=> b!1644963 (= e!1054936 0)))

(declare-fun b!1644964 () Bool)

(assert (=> b!1644964 (= e!1054938 e!1054936)))

(declare-fun c!267550 () Bool)

(assert (=> b!1644964 (= c!267550 (>= (+ 0 1) call!105778))))

(assert (= (and d!495559 c!267548) b!1644960))

(assert (= (and d!495559 (not c!267548)) b!1644957))

(assert (= (and b!1644957 c!267547) b!1644956))

(assert (= (and b!1644957 (not c!267547)) b!1644959))

(assert (= (and d!495559 res!736999) b!1644962))

(assert (= (and b!1644962 c!267549) b!1644961))

(assert (= (and b!1644962 (not c!267549)) b!1644964))

(assert (= (and b!1644964 c!267550) b!1644963))

(assert (= (and b!1644964 (not c!267550)) b!1644958))

(assert (= (or b!1644961 b!1644964 b!1644958) bm!105773))

(declare-fun m!1989119 () Bool)

(assert (=> b!1644959 m!1989119))

(declare-fun m!1989121 () Bool)

(assert (=> bm!105773 m!1989121))

(declare-fun m!1989123 () Bool)

(assert (=> d!495559 m!1989123))

(declare-fun m!1989125 () Bool)

(assert (=> d!495559 m!1989125))

(declare-fun m!1989127 () Bool)

(assert (=> b!1644962 m!1989127))

(assert (=> b!1643625 d!495559))

(declare-fun d!495561 () Bool)

(assert (=> d!495561 (= (head!3593 (drop!900 lt!605733 0)) (apply!4735 lt!605733 0))))

(declare-fun lt!607104 () Unit!29917)

(declare-fun choose!9869 (List!18197 Int) Unit!29917)

(assert (=> d!495561 (= lt!607104 (choose!9869 lt!605733 0))))

(declare-fun e!1054941 () Bool)

(assert (=> d!495561 e!1054941))

(declare-fun res!737002 () Bool)

(assert (=> d!495561 (=> (not res!737002) (not e!1054941))))

(assert (=> d!495561 (= res!737002 (>= 0 0))))

(assert (=> d!495561 (= (lemmaDropApply!588 lt!605733 0) lt!607104)))

(declare-fun b!1644967 () Bool)

(assert (=> b!1644967 (= e!1054941 (< 0 (size!14446 lt!605733)))))

(assert (= (and d!495561 res!737002) b!1644967))

(assert (=> d!495561 m!1986149))

(assert (=> d!495561 m!1986149))

(assert (=> d!495561 m!1986151))

(assert (=> d!495561 m!1986157))

(declare-fun m!1989129 () Bool)

(assert (=> d!495561 m!1989129))

(assert (=> b!1644967 m!1989111))

(assert (=> b!1643625 d!495561))

(assert (=> b!1643625 d!495177))

(declare-fun b!1644968 () Bool)

(declare-fun e!1054945 () List!18197)

(assert (=> b!1644968 (= e!1054945 lt!605733)))

(declare-fun b!1644969 () Bool)

(declare-fun e!1054942 () List!18197)

(assert (=> b!1644969 (= e!1054942 e!1054945)))

(declare-fun c!267551 () Bool)

(assert (=> b!1644969 (= c!267551 (<= 0 0))))

(declare-fun b!1644970 () Bool)

(declare-fun e!1054944 () Int)

(declare-fun call!105779 () Int)

(assert (=> b!1644970 (= e!1054944 (- call!105779 0))))

(declare-fun b!1644971 () Bool)

(assert (=> b!1644971 (= e!1054945 (drop!900 (t!150204 lt!605733) (- 0 1)))))

(declare-fun bm!105774 () Bool)

(assert (=> bm!105774 (= call!105779 (size!14446 lt!605733))))

(declare-fun d!495563 () Bool)

(declare-fun e!1054943 () Bool)

(assert (=> d!495563 e!1054943))

(declare-fun res!737003 () Bool)

(assert (=> d!495563 (=> (not res!737003) (not e!1054943))))

(declare-fun lt!607105 () List!18197)

(assert (=> d!495563 (= res!737003 (= ((_ map implies) (content!2513 lt!607105) (content!2513 lt!605733)) ((as const (InoxSet Token!5960)) true)))))

(assert (=> d!495563 (= lt!607105 e!1054942)))

(declare-fun c!267552 () Bool)

(assert (=> d!495563 (= c!267552 ((_ is Nil!18127) lt!605733))))

(assert (=> d!495563 (= (drop!900 lt!605733 0) lt!607105)))

(declare-fun b!1644972 () Bool)

(assert (=> b!1644972 (= e!1054942 Nil!18127)))

(declare-fun b!1644973 () Bool)

(declare-fun e!1054946 () Int)

(assert (=> b!1644973 (= e!1054946 call!105779)))

(declare-fun b!1644974 () Bool)

(assert (=> b!1644974 (= e!1054943 (= (size!14446 lt!607105) e!1054946))))

(declare-fun c!267553 () Bool)

(assert (=> b!1644974 (= c!267553 (<= 0 0))))

(declare-fun b!1644975 () Bool)

(assert (=> b!1644975 (= e!1054944 0)))

(declare-fun b!1644976 () Bool)

(assert (=> b!1644976 (= e!1054946 e!1054944)))

(declare-fun c!267554 () Bool)

(assert (=> b!1644976 (= c!267554 (>= 0 call!105779))))

(assert (= (and d!495563 c!267552) b!1644972))

(assert (= (and d!495563 (not c!267552)) b!1644969))

(assert (= (and b!1644969 c!267551) b!1644968))

(assert (= (and b!1644969 (not c!267551)) b!1644971))

(assert (= (and d!495563 res!737003) b!1644974))

(assert (= (and b!1644974 c!267553) b!1644973))

(assert (= (and b!1644974 (not c!267553)) b!1644976))

(assert (= (and b!1644976 c!267554) b!1644975))

(assert (= (and b!1644976 (not c!267554)) b!1644970))

(assert (= (or b!1644973 b!1644976 b!1644970) bm!105774))

(declare-fun m!1989131 () Bool)

(assert (=> b!1644971 m!1989131))

(assert (=> bm!105774 m!1989111))

(declare-fun m!1989133 () Bool)

(assert (=> d!495563 m!1989133))

(declare-fun m!1989135 () Bool)

(assert (=> d!495563 m!1989135))

(declare-fun m!1989137 () Bool)

(assert (=> b!1644974 m!1989137))

(assert (=> b!1643625 d!495563))

(declare-fun d!495565 () Bool)

(assert (=> d!495565 (= (tail!2420 (drop!900 lt!605734 0)) (drop!900 lt!605734 (+ 0 1)))))

(declare-fun lt!607108 () Unit!29917)

(declare-fun choose!9870 (List!18197 Int) Unit!29917)

(assert (=> d!495565 (= lt!607108 (choose!9870 lt!605734 0))))

(declare-fun e!1054949 () Bool)

(assert (=> d!495565 e!1054949))

(declare-fun res!737006 () Bool)

(assert (=> d!495565 (=> (not res!737006) (not e!1054949))))

(assert (=> d!495565 (= res!737006 (>= 0 0))))

(assert (=> d!495565 (= (lemmaDropTail!568 lt!605734 0) lt!607108)))

(declare-fun b!1644979 () Bool)

(assert (=> b!1644979 (= e!1054949 (< 0 (size!14446 lt!605734)))))

(assert (= (and d!495565 res!737006) b!1644979))

(assert (=> d!495565 m!1986145))

(assert (=> d!495565 m!1986145))

(assert (=> d!495565 m!1986147))

(assert (=> d!495565 m!1986143))

(declare-fun m!1989139 () Bool)

(assert (=> d!495565 m!1989139))

(assert (=> b!1644979 m!1989121))

(assert (=> b!1643625 d!495565))

(declare-fun d!495567 () Bool)

(declare-fun lt!607109 () BalanceConc!12028)

(assert (=> d!495567 (= (list!7182 lt!607109) (printListTailRec!381 thiss!17113 (dropList!652 lt!605506 (+ 0 1)) (list!7182 (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605506 0))))))))

(declare-fun e!1054950 () BalanceConc!12028)

(assert (=> d!495567 (= lt!607109 e!1054950)))

(declare-fun c!267555 () Bool)

(assert (=> d!495567 (= c!267555 (>= (+ 0 1) (size!14442 lt!605506)))))

(declare-fun e!1054951 () Bool)

(assert (=> d!495567 e!1054951))

(declare-fun res!737007 () Bool)

(assert (=> d!495567 (=> (not res!737007) (not e!1054951))))

(assert (=> d!495567 (= res!737007 (>= (+ 0 1) 0))))

(assert (=> d!495567 (= (printTailRec!877 thiss!17113 lt!605506 (+ 0 1) (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605506 0)))) lt!607109)))

(declare-fun b!1644980 () Bool)

(assert (=> b!1644980 (= e!1054951 (<= (+ 0 1) (size!14442 lt!605506)))))

(declare-fun b!1644981 () Bool)

(assert (=> b!1644981 (= e!1054950 (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605506 0))))))

(declare-fun b!1644982 () Bool)

(assert (=> b!1644982 (= e!1054950 (printTailRec!877 thiss!17113 lt!605506 (+ 0 1 1) (++!4880 (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605506 0))) (charsOf!1846 (apply!4734 lt!605506 (+ 0 1))))))))

(declare-fun lt!607112 () List!18197)

(assert (=> b!1644982 (= lt!607112 (list!7181 lt!605506))))

(declare-fun lt!607115 () Unit!29917)

(assert (=> b!1644982 (= lt!607115 (lemmaDropApply!588 lt!607112 (+ 0 1)))))

(assert (=> b!1644982 (= (head!3593 (drop!900 lt!607112 (+ 0 1))) (apply!4735 lt!607112 (+ 0 1)))))

(declare-fun lt!607110 () Unit!29917)

(assert (=> b!1644982 (= lt!607110 lt!607115)))

(declare-fun lt!607113 () List!18197)

(assert (=> b!1644982 (= lt!607113 (list!7181 lt!605506))))

(declare-fun lt!607114 () Unit!29917)

(assert (=> b!1644982 (= lt!607114 (lemmaDropTail!568 lt!607113 (+ 0 1)))))

(assert (=> b!1644982 (= (tail!2420 (drop!900 lt!607113 (+ 0 1))) (drop!900 lt!607113 (+ 0 1 1)))))

(declare-fun lt!607111 () Unit!29917)

(assert (=> b!1644982 (= lt!607111 lt!607114)))

(assert (= (and d!495567 res!737007) b!1644980))

(assert (= (and d!495567 c!267555) b!1644981))

(assert (= (and d!495567 (not c!267555)) b!1644982))

(declare-fun m!1989141 () Bool)

(assert (=> d!495567 m!1989141))

(declare-fun m!1989143 () Bool)

(assert (=> d!495567 m!1989143))

(declare-fun m!1989145 () Bool)

(assert (=> d!495567 m!1989145))

(assert (=> d!495567 m!1986129))

(assert (=> d!495567 m!1989141))

(assert (=> d!495567 m!1986137))

(assert (=> d!495567 m!1989143))

(declare-fun m!1989147 () Bool)

(assert (=> d!495567 m!1989147))

(assert (=> b!1644980 m!1986129))

(declare-fun m!1989149 () Bool)

(assert (=> b!1644982 m!1989149))

(declare-fun m!1989151 () Bool)

(assert (=> b!1644982 m!1989151))

(assert (=> b!1644982 m!1986137))

(assert (=> b!1644982 m!1989151))

(declare-fun m!1989153 () Bool)

(assert (=> b!1644982 m!1989153))

(assert (=> b!1644982 m!1986139))

(declare-fun m!1989155 () Bool)

(assert (=> b!1644982 m!1989155))

(declare-fun m!1989157 () Bool)

(assert (=> b!1644982 m!1989157))

(declare-fun m!1989159 () Bool)

(assert (=> b!1644982 m!1989159))

(declare-fun m!1989161 () Bool)

(assert (=> b!1644982 m!1989161))

(declare-fun m!1989163 () Bool)

(assert (=> b!1644982 m!1989163))

(declare-fun m!1989165 () Bool)

(assert (=> b!1644982 m!1989165))

(assert (=> b!1644982 m!1989163))

(assert (=> b!1644982 m!1989153))

(declare-fun m!1989167 () Bool)

(assert (=> b!1644982 m!1989167))

(assert (=> b!1644982 m!1989159))

(declare-fun m!1989169 () Bool)

(assert (=> b!1644982 m!1989169))

(assert (=> b!1644982 m!1989149))

(declare-fun m!1989171 () Bool)

(assert (=> b!1644982 m!1989171))

(assert (=> b!1643625 d!495567))

(declare-fun d!495569 () Bool)

(assert (=> d!495569 (= (tail!2420 (drop!900 lt!605734 0)) (t!150204 (drop!900 lt!605734 0)))))

(assert (=> b!1643625 d!495569))

(declare-fun d!495571 () Bool)

(assert (=> d!495571 (= (head!3593 (drop!900 lt!605733 0)) (h!23528 (drop!900 lt!605733 0)))))

(assert (=> b!1643625 d!495571))

(declare-fun b!1644983 () Bool)

(declare-fun res!737008 () Bool)

(declare-fun e!1054952 () Bool)

(assert (=> b!1644983 (=> (not res!737008) (not e!1054952))))

(assert (=> b!1644983 (= res!737008 (isBalanced!1842 (++!4886 (c!267229 (BalanceConc!12029 Empty!6042)) (c!267229 (charsOf!1846 (apply!4734 lt!605506 0))))))))

(declare-fun b!1644986 () Bool)

(declare-fun lt!607116 () BalanceConc!12028)

(assert (=> b!1644986 (= e!1054952 (= (list!7182 lt!607116) (++!4878 (list!7182 (BalanceConc!12029 Empty!6042)) (list!7182 (charsOf!1846 (apply!4734 lt!605506 0))))))))

(declare-fun b!1644985 () Bool)

(declare-fun res!737011 () Bool)

(assert (=> b!1644985 (=> (not res!737011) (not e!1054952))))

(assert (=> b!1644985 (= res!737011 (>= (height!931 (++!4886 (c!267229 (BalanceConc!12029 Empty!6042)) (c!267229 (charsOf!1846 (apply!4734 lt!605506 0))))) (max!0 (height!931 (c!267229 (BalanceConc!12029 Empty!6042))) (height!931 (c!267229 (charsOf!1846 (apply!4734 lt!605506 0)))))))))

(declare-fun d!495573 () Bool)

(assert (=> d!495573 e!1054952))

(declare-fun res!737009 () Bool)

(assert (=> d!495573 (=> (not res!737009) (not e!1054952))))

(assert (=> d!495573 (= res!737009 (appendAssocInst!455 (c!267229 (BalanceConc!12029 Empty!6042)) (c!267229 (charsOf!1846 (apply!4734 lt!605506 0)))))))

(assert (=> d!495573 (= lt!607116 (BalanceConc!12029 (++!4886 (c!267229 (BalanceConc!12029 Empty!6042)) (c!267229 (charsOf!1846 (apply!4734 lt!605506 0))))))))

(assert (=> d!495573 (= (++!4880 (BalanceConc!12029 Empty!6042) (charsOf!1846 (apply!4734 lt!605506 0))) lt!607116)))

(declare-fun b!1644984 () Bool)

(declare-fun res!737010 () Bool)

(assert (=> b!1644984 (=> (not res!737010) (not e!1054952))))

(assert (=> b!1644984 (= res!737010 (<= (height!931 (++!4886 (c!267229 (BalanceConc!12029 Empty!6042)) (c!267229 (charsOf!1846 (apply!4734 lt!605506 0))))) (+ (max!0 (height!931 (c!267229 (BalanceConc!12029 Empty!6042))) (height!931 (c!267229 (charsOf!1846 (apply!4734 lt!605506 0))))) 1)))))

(assert (= (and d!495573 res!737009) b!1644983))

(assert (= (and b!1644983 res!737008) b!1644984))

(assert (= (and b!1644984 res!737010) b!1644985))

(assert (= (and b!1644985 res!737011) b!1644986))

(declare-fun m!1989173 () Bool)

(assert (=> b!1644985 m!1989173))

(declare-fun m!1989175 () Bool)

(assert (=> b!1644985 m!1989175))

(declare-fun m!1989177 () Bool)

(assert (=> b!1644985 m!1989177))

(declare-fun m!1989179 () Bool)

(assert (=> b!1644985 m!1989179))

(declare-fun m!1989181 () Bool)

(assert (=> b!1644985 m!1989181))

(assert (=> b!1644985 m!1989173))

(assert (=> b!1644985 m!1989179))

(assert (=> b!1644985 m!1989175))

(declare-fun m!1989183 () Bool)

(assert (=> d!495573 m!1989183))

(assert (=> d!495573 m!1989179))

(assert (=> b!1644984 m!1989173))

(assert (=> b!1644984 m!1989175))

(assert (=> b!1644984 m!1989177))

(assert (=> b!1644984 m!1989179))

(assert (=> b!1644984 m!1989181))

(assert (=> b!1644984 m!1989173))

(assert (=> b!1644984 m!1989179))

(assert (=> b!1644984 m!1989175))

(declare-fun m!1989185 () Bool)

(assert (=> b!1644986 m!1989185))

(assert (=> b!1644986 m!1986125))

(assert (=> b!1644986 m!1986135))

(declare-fun m!1989187 () Bool)

(assert (=> b!1644986 m!1989187))

(assert (=> b!1644986 m!1986125))

(assert (=> b!1644986 m!1989187))

(declare-fun m!1989189 () Bool)

(assert (=> b!1644986 m!1989189))

(assert (=> b!1644983 m!1989179))

(assert (=> b!1644983 m!1989179))

(declare-fun m!1989191 () Bool)

(assert (=> b!1644983 m!1989191))

(assert (=> b!1643625 d!495573))

(declare-fun b!1644987 () Bool)

(declare-fun e!1054956 () List!18197)

(assert (=> b!1644987 (= e!1054956 lt!605734)))

(declare-fun b!1644988 () Bool)

(declare-fun e!1054953 () List!18197)

(assert (=> b!1644988 (= e!1054953 e!1054956)))

(declare-fun c!267556 () Bool)

(assert (=> b!1644988 (= c!267556 (<= 0 0))))

(declare-fun b!1644989 () Bool)

(declare-fun e!1054955 () Int)

(declare-fun call!105780 () Int)

(assert (=> b!1644989 (= e!1054955 (- call!105780 0))))

(declare-fun b!1644990 () Bool)

(assert (=> b!1644990 (= e!1054956 (drop!900 (t!150204 lt!605734) (- 0 1)))))

(declare-fun bm!105775 () Bool)

(assert (=> bm!105775 (= call!105780 (size!14446 lt!605734))))

(declare-fun d!495575 () Bool)

(declare-fun e!1054954 () Bool)

(assert (=> d!495575 e!1054954))

(declare-fun res!737012 () Bool)

(assert (=> d!495575 (=> (not res!737012) (not e!1054954))))

(declare-fun lt!607117 () List!18197)

(assert (=> d!495575 (= res!737012 (= ((_ map implies) (content!2513 lt!607117) (content!2513 lt!605734)) ((as const (InoxSet Token!5960)) true)))))

(assert (=> d!495575 (= lt!607117 e!1054953)))

(declare-fun c!267557 () Bool)

(assert (=> d!495575 (= c!267557 ((_ is Nil!18127) lt!605734))))

(assert (=> d!495575 (= (drop!900 lt!605734 0) lt!607117)))

(declare-fun b!1644991 () Bool)

(assert (=> b!1644991 (= e!1054953 Nil!18127)))

(declare-fun b!1644992 () Bool)

(declare-fun e!1054957 () Int)

(assert (=> b!1644992 (= e!1054957 call!105780)))

(declare-fun b!1644993 () Bool)

(assert (=> b!1644993 (= e!1054954 (= (size!14446 lt!607117) e!1054957))))

(declare-fun c!267558 () Bool)

(assert (=> b!1644993 (= c!267558 (<= 0 0))))

(declare-fun b!1644994 () Bool)

(assert (=> b!1644994 (= e!1054955 0)))

(declare-fun b!1644995 () Bool)

(assert (=> b!1644995 (= e!1054957 e!1054955)))

(declare-fun c!267559 () Bool)

(assert (=> b!1644995 (= c!267559 (>= 0 call!105780))))

(assert (= (and d!495575 c!267557) b!1644991))

(assert (= (and d!495575 (not c!267557)) b!1644988))

(assert (= (and b!1644988 c!267556) b!1644987))

(assert (= (and b!1644988 (not c!267556)) b!1644990))

(assert (= (and d!495575 res!737012) b!1644993))

(assert (= (and b!1644993 c!267558) b!1644992))

(assert (= (and b!1644993 (not c!267558)) b!1644995))

(assert (= (and b!1644995 c!267559) b!1644994))

(assert (= (and b!1644995 (not c!267559)) b!1644989))

(assert (= (or b!1644992 b!1644995 b!1644989) bm!105775))

(declare-fun m!1989193 () Bool)

(assert (=> b!1644990 m!1989193))

(assert (=> bm!105775 m!1989121))

(declare-fun m!1989195 () Bool)

(assert (=> d!495575 m!1989195))

(assert (=> d!495575 m!1989125))

(declare-fun m!1989197 () Bool)

(assert (=> b!1644993 m!1989197))

(assert (=> b!1643625 d!495575))

(declare-fun d!495577 () Bool)

(declare-fun lt!607120 () Token!5960)

(assert (=> d!495577 (= lt!607120 (apply!4735 (list!7181 lt!605506) 0))))

(declare-fun apply!4742 (Conc!6043 Int) Token!5960)

(assert (=> d!495577 (= lt!607120 (apply!4742 (c!267231 lt!605506) 0))))

(declare-fun e!1054960 () Bool)

(assert (=> d!495577 e!1054960))

(declare-fun res!737015 () Bool)

(assert (=> d!495577 (=> (not res!737015) (not e!1054960))))

(assert (=> d!495577 (= res!737015 (<= 0 0))))

(assert (=> d!495577 (= (apply!4734 lt!605506 0) lt!607120)))

(declare-fun b!1644998 () Bool)

(assert (=> b!1644998 (= e!1054960 (< 0 (size!14442 lt!605506)))))

(assert (= (and d!495577 res!737015) b!1644998))

(assert (=> d!495577 m!1986139))

(assert (=> d!495577 m!1986139))

(declare-fun m!1989199 () Bool)

(assert (=> d!495577 m!1989199))

(declare-fun m!1989201 () Bool)

(assert (=> d!495577 m!1989201))

(assert (=> b!1644998 m!1986129))

(assert (=> b!1643625 d!495577))

(assert (=> b!1643623 d!495191))

(assert (=> b!1643656 d!494975))

(assert (=> b!1643656 d!494977))

(assert (=> b!1643656 d!494987))

(declare-fun d!495579 () Bool)

(assert (=> d!495579 (= (inv!23481 (tag!3477 (h!23529 (t!150205 rules!1846)))) (= (mod (str.len (value!100786 (tag!3477 (h!23529 (t!150205 rules!1846))))) 2) 0))))

(assert (=> b!1643794 d!495579))

(declare-fun d!495581 () Bool)

(declare-fun res!737016 () Bool)

(declare-fun e!1054961 () Bool)

(assert (=> d!495581 (=> (not res!737016) (not e!1054961))))

(assert (=> d!495581 (= res!737016 (semiInverseModEq!1230 (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toValue!4636 (transformation!3197 (h!23529 (t!150205 rules!1846))))))))

(assert (=> d!495581 (= (inv!23484 (transformation!3197 (h!23529 (t!150205 rules!1846)))) e!1054961)))

(declare-fun b!1644999 () Bool)

(assert (=> b!1644999 (= e!1054961 (equivClasses!1171 (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toValue!4636 (transformation!3197 (h!23529 (t!150205 rules!1846))))))))

(assert (= (and d!495581 res!737016) b!1644999))

(declare-fun m!1989203 () Bool)

(assert (=> d!495581 m!1989203))

(declare-fun m!1989205 () Bool)

(assert (=> b!1644999 m!1989205))

(assert (=> b!1643794 d!495581))

(declare-fun d!495583 () Bool)

(assert (=> d!495583 (= (list!7181 lt!605809) (list!7185 (c!267231 lt!605809)))))

(declare-fun bs!396020 () Bool)

(assert (= bs!396020 d!495583))

(declare-fun m!1989207 () Bool)

(assert (=> bs!396020 m!1989207))

(assert (=> d!494899 d!495583))

(declare-fun d!495585 () Bool)

(declare-fun e!1054964 () Bool)

(assert (=> d!495585 e!1054964))

(declare-fun res!737019 () Bool)

(assert (=> d!495585 (=> (not res!737019) (not e!1054964))))

(declare-fun lt!607123 () BalanceConc!12030)

(assert (=> d!495585 (= res!737019 (= (list!7181 lt!607123) (Cons!18127 (h!23528 tokens!457) Nil!18127)))))

(declare-fun choose!9871 (Token!5960) BalanceConc!12030)

(assert (=> d!495585 (= lt!607123 (choose!9871 (h!23528 tokens!457)))))

(assert (=> d!495585 (= (singleton!714 (h!23528 tokens!457)) lt!607123)))

(declare-fun b!1645002 () Bool)

(assert (=> b!1645002 (= e!1054964 (isBalanced!1840 (c!267231 lt!607123)))))

(assert (= (and d!495585 res!737019) b!1645002))

(declare-fun m!1989209 () Bool)

(assert (=> d!495585 m!1989209))

(declare-fun m!1989211 () Bool)

(assert (=> d!495585 m!1989211))

(declare-fun m!1989213 () Bool)

(assert (=> b!1645002 m!1989213))

(assert (=> d!494899 d!495585))

(declare-fun bs!396021 () Bool)

(declare-fun d!495587 () Bool)

(assert (= bs!396021 (and d!495587 d!495225)))

(declare-fun lambda!67574 () Int)

(assert (=> bs!396021 (= (= (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toValue!4636 (transformation!3197 (h!23529 rules!1846)))) (= lambda!67574 lambda!67549))))

(assert (=> d!495587 true))

(assert (=> d!495587 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) (dynLambda!8104 order!10789 lambda!67574))))

(assert (=> d!495587 (= (equivClasses!1171 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toValue!4636 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) (Forall2!520 lambda!67574))))

(declare-fun bs!396022 () Bool)

(assert (= bs!396022 d!495587))

(declare-fun m!1989215 () Bool)

(assert (=> bs!396022 m!1989215))

(assert (=> b!1643769 d!495587))

(declare-fun d!495589 () Bool)

(declare-fun e!1054965 () Bool)

(assert (=> d!495589 e!1054965))

(declare-fun res!737020 () Bool)

(assert (=> d!495589 (=> (not res!737020) (not e!1054965))))

(declare-fun lt!607124 () BalanceConc!12030)

(assert (=> d!495589 (= res!737020 (= (list!7181 lt!607124) (t!150204 tokens!457)))))

(assert (=> d!495589 (= lt!607124 (BalanceConc!12031 (fromList!392 (t!150204 tokens!457))))))

(assert (=> d!495589 (= (fromListB!943 (t!150204 tokens!457)) lt!607124)))

(declare-fun b!1645003 () Bool)

(assert (=> b!1645003 (= e!1054965 (isBalanced!1840 (fromList!392 (t!150204 tokens!457))))))

(assert (= (and d!495589 res!737020) b!1645003))

(declare-fun m!1989217 () Bool)

(assert (=> d!495589 m!1989217))

(declare-fun m!1989219 () Bool)

(assert (=> d!495589 m!1989219))

(assert (=> b!1645003 m!1989219))

(assert (=> b!1645003 m!1989219))

(declare-fun m!1989221 () Bool)

(assert (=> b!1645003 m!1989221))

(assert (=> d!494909 d!495589))

(declare-fun d!495591 () Bool)

(assert (=> d!495591 (= (isEmpty!11155 (originalCharacters!4011 (h!23528 tokens!457))) ((_ is Nil!18126) (originalCharacters!4011 (h!23528 tokens!457))))))

(assert (=> d!494925 d!495591))

(declare-fun d!495593 () Bool)

(declare-fun lt!607125 () Int)

(assert (=> d!495593 (>= lt!607125 0)))

(declare-fun e!1054966 () Int)

(assert (=> d!495593 (= lt!607125 e!1054966)))

(declare-fun c!267560 () Bool)

(assert (=> d!495593 (= c!267560 ((_ is Nil!18126) lt!605512))))

(assert (=> d!495593 (= (size!14440 lt!605512) lt!607125)))

(declare-fun b!1645004 () Bool)

(assert (=> b!1645004 (= e!1054966 0)))

(declare-fun b!1645005 () Bool)

(assert (=> b!1645005 (= e!1054966 (+ 1 (size!14440 (t!150203 lt!605512))))))

(assert (= (and d!495593 c!267560) b!1645004))

(assert (= (and d!495593 (not c!267560)) b!1645005))

(declare-fun m!1989223 () Bool)

(assert (=> b!1645005 m!1989223))

(assert (=> b!1643604 d!495593))

(assert (=> b!1643604 d!495279))

(declare-fun d!495595 () Bool)

(declare-fun lt!607126 () Int)

(assert (=> d!495595 (>= lt!607126 0)))

(declare-fun e!1054967 () Int)

(assert (=> d!495595 (= lt!607126 e!1054967)))

(declare-fun c!267561 () Bool)

(assert (=> d!495595 (= c!267561 ((_ is Nil!18126) (originalCharacters!4011 (h!23528 tokens!457))))))

(assert (=> d!495595 (= (size!14440 (originalCharacters!4011 (h!23528 tokens!457))) lt!607126)))

(declare-fun b!1645006 () Bool)

(assert (=> b!1645006 (= e!1054967 0)))

(declare-fun b!1645007 () Bool)

(assert (=> b!1645007 (= e!1054967 (+ 1 (size!14440 (t!150203 (originalCharacters!4011 (h!23528 tokens!457))))))))

(assert (= (and d!495595 c!267561) b!1645006))

(assert (= (and d!495595 (not c!267561)) b!1645007))

(declare-fun m!1989225 () Bool)

(assert (=> b!1645007 m!1989225))

(assert (=> b!1643768 d!495595))

(declare-fun b!1645011 () Bool)

(declare-fun e!1054969 () List!18197)

(assert (=> b!1645011 (= e!1054969 (++!4883 (list!7185 (left!14535 (c!267231 lt!605517))) (list!7185 (right!14865 (c!267231 lt!605517)))))))

(declare-fun d!495597 () Bool)

(declare-fun c!267562 () Bool)

(assert (=> d!495597 (= c!267562 ((_ is Empty!6043) (c!267231 lt!605517)))))

(declare-fun e!1054968 () List!18197)

(assert (=> d!495597 (= (list!7185 (c!267231 lt!605517)) e!1054968)))

(declare-fun b!1645010 () Bool)

(assert (=> b!1645010 (= e!1054969 (list!7190 (xs!8879 (c!267231 lt!605517))))))

(declare-fun b!1645009 () Bool)

(assert (=> b!1645009 (= e!1054968 e!1054969)))

(declare-fun c!267563 () Bool)

(assert (=> b!1645009 (= c!267563 ((_ is Leaf!8862) (c!267231 lt!605517)))))

(declare-fun b!1645008 () Bool)

(assert (=> b!1645008 (= e!1054968 Nil!18127)))

(assert (= (and d!495597 c!267562) b!1645008))

(assert (= (and d!495597 (not c!267562)) b!1645009))

(assert (= (and b!1645009 c!267563) b!1645010))

(assert (= (and b!1645009 (not c!267563)) b!1645011))

(declare-fun m!1989227 () Bool)

(assert (=> b!1645011 m!1989227))

(declare-fun m!1989229 () Bool)

(assert (=> b!1645011 m!1989229))

(assert (=> b!1645011 m!1989227))

(assert (=> b!1645011 m!1989229))

(declare-fun m!1989231 () Bool)

(assert (=> b!1645011 m!1989231))

(declare-fun m!1989233 () Bool)

(assert (=> b!1645010 m!1989233))

(assert (=> d!494875 d!495597))

(declare-fun b!1645012 () Bool)

(declare-fun e!1054970 () Bool)

(assert (=> b!1645012 (= e!1054970 tp_is_empty!7341)))

(assert (=> b!1643823 (= tp!476433 e!1054970)))

(declare-fun b!1645013 () Bool)

(declare-fun tp!476534 () Bool)

(declare-fun tp!476537 () Bool)

(assert (=> b!1645013 (= e!1054970 (and tp!476534 tp!476537))))

(declare-fun b!1645015 () Bool)

(declare-fun tp!476536 () Bool)

(declare-fun tp!476535 () Bool)

(assert (=> b!1645015 (= e!1054970 (and tp!476536 tp!476535))))

(declare-fun b!1645014 () Bool)

(declare-fun tp!476533 () Bool)

(assert (=> b!1645014 (= e!1054970 tp!476533)))

(assert (= (and b!1643823 ((_ is ElementMatch!4525) (regOne!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645012))

(assert (= (and b!1643823 ((_ is Concat!7813) (regOne!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645013))

(assert (= (and b!1643823 ((_ is Star!4525) (regOne!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645014))

(assert (= (and b!1643823 ((_ is Union!4525) (regOne!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645015))

(declare-fun b!1645016 () Bool)

(declare-fun e!1054971 () Bool)

(assert (=> b!1645016 (= e!1054971 tp_is_empty!7341)))

(assert (=> b!1643823 (= tp!476432 e!1054971)))

(declare-fun b!1645017 () Bool)

(declare-fun tp!476539 () Bool)

(declare-fun tp!476542 () Bool)

(assert (=> b!1645017 (= e!1054971 (and tp!476539 tp!476542))))

(declare-fun b!1645019 () Bool)

(declare-fun tp!476541 () Bool)

(declare-fun tp!476540 () Bool)

(assert (=> b!1645019 (= e!1054971 (and tp!476541 tp!476540))))

(declare-fun b!1645018 () Bool)

(declare-fun tp!476538 () Bool)

(assert (=> b!1645018 (= e!1054971 tp!476538)))

(assert (= (and b!1643823 ((_ is ElementMatch!4525) (regTwo!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645016))

(assert (= (and b!1643823 ((_ is Concat!7813) (regTwo!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645017))

(assert (= (and b!1643823 ((_ is Star!4525) (regTwo!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645018))

(assert (= (and b!1643823 ((_ is Union!4525) (regTwo!9563 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645019))

(declare-fun b!1645022 () Bool)

(declare-fun e!1054974 () Bool)

(assert (=> b!1645022 (= e!1054974 true)))

(declare-fun b!1645021 () Bool)

(declare-fun e!1054973 () Bool)

(assert (=> b!1645021 (= e!1054973 e!1054974)))

(declare-fun b!1645020 () Bool)

(declare-fun e!1054972 () Bool)

(assert (=> b!1645020 (= e!1054972 e!1054973)))

(assert (=> b!1643563 e!1054972))

(assert (= b!1645021 b!1645022))

(assert (= b!1645020 b!1645021))

(assert (= (and b!1643563 ((_ is Cons!18128) (t!150205 rules!1846))) b!1645020))

(assert (=> b!1645022 (< (dynLambda!8095 order!10777 (toValue!4636 (transformation!3197 (h!23529 (t!150205 rules!1846))))) (dynLambda!8096 order!10779 lambda!67535))))

(assert (=> b!1645022 (< (dynLambda!8097 order!10781 (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846))))) (dynLambda!8096 order!10779 lambda!67535))))

(declare-fun b!1645023 () Bool)

(declare-fun e!1054975 () Bool)

(assert (=> b!1645023 (= e!1054975 tp_is_empty!7341)))

(assert (=> b!1643808 (= tp!476416 e!1054975)))

(declare-fun b!1645024 () Bool)

(declare-fun tp!476544 () Bool)

(declare-fun tp!476547 () Bool)

(assert (=> b!1645024 (= e!1054975 (and tp!476544 tp!476547))))

(declare-fun b!1645026 () Bool)

(declare-fun tp!476546 () Bool)

(declare-fun tp!476545 () Bool)

(assert (=> b!1645026 (= e!1054975 (and tp!476546 tp!476545))))

(declare-fun b!1645025 () Bool)

(declare-fun tp!476543 () Bool)

(assert (=> b!1645025 (= e!1054975 tp!476543)))

(assert (= (and b!1643808 ((_ is ElementMatch!4525) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) b!1645023))

(assert (= (and b!1643808 ((_ is Concat!7813) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) b!1645024))

(assert (= (and b!1643808 ((_ is Star!4525) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) b!1645025))

(assert (= (and b!1643808 ((_ is Union!4525) (regex!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) b!1645026))

(declare-fun b!1645027 () Bool)

(declare-fun e!1054976 () Bool)

(assert (=> b!1645027 (= e!1054976 tp_is_empty!7341)))

(assert (=> b!1643822 (= tp!476430 e!1054976)))

(declare-fun b!1645028 () Bool)

(declare-fun tp!476549 () Bool)

(declare-fun tp!476552 () Bool)

(assert (=> b!1645028 (= e!1054976 (and tp!476549 tp!476552))))

(declare-fun b!1645030 () Bool)

(declare-fun tp!476551 () Bool)

(declare-fun tp!476550 () Bool)

(assert (=> b!1645030 (= e!1054976 (and tp!476551 tp!476550))))

(declare-fun b!1645029 () Bool)

(declare-fun tp!476548 () Bool)

(assert (=> b!1645029 (= e!1054976 tp!476548)))

(assert (= (and b!1643822 ((_ is ElementMatch!4525) (reg!4854 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645027))

(assert (= (and b!1643822 ((_ is Concat!7813) (reg!4854 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645028))

(assert (= (and b!1643822 ((_ is Star!4525) (reg!4854 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645029))

(assert (= (and b!1643822 ((_ is Union!4525) (reg!4854 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645030))

(declare-fun b!1645031 () Bool)

(declare-fun e!1054977 () Bool)

(assert (=> b!1645031 (= e!1054977 tp_is_empty!7341)))

(assert (=> b!1643827 (= tp!476438 e!1054977)))

(declare-fun b!1645032 () Bool)

(declare-fun tp!476554 () Bool)

(declare-fun tp!476557 () Bool)

(assert (=> b!1645032 (= e!1054977 (and tp!476554 tp!476557))))

(declare-fun b!1645034 () Bool)

(declare-fun tp!476556 () Bool)

(declare-fun tp!476555 () Bool)

(assert (=> b!1645034 (= e!1054977 (and tp!476556 tp!476555))))

(declare-fun b!1645033 () Bool)

(declare-fun tp!476553 () Bool)

(assert (=> b!1645033 (= e!1054977 tp!476553)))

(assert (= (and b!1643827 ((_ is ElementMatch!4525) (regOne!9563 (regex!3197 (h!23529 rules!1846))))) b!1645031))

(assert (= (and b!1643827 ((_ is Concat!7813) (regOne!9563 (regex!3197 (h!23529 rules!1846))))) b!1645032))

(assert (= (and b!1643827 ((_ is Star!4525) (regOne!9563 (regex!3197 (h!23529 rules!1846))))) b!1645033))

(assert (= (and b!1643827 ((_ is Union!4525) (regOne!9563 (regex!3197 (h!23529 rules!1846))))) b!1645034))

(declare-fun b!1645035 () Bool)

(declare-fun e!1054978 () Bool)

(assert (=> b!1645035 (= e!1054978 tp_is_empty!7341)))

(assert (=> b!1643827 (= tp!476437 e!1054978)))

(declare-fun b!1645036 () Bool)

(declare-fun tp!476559 () Bool)

(declare-fun tp!476562 () Bool)

(assert (=> b!1645036 (= e!1054978 (and tp!476559 tp!476562))))

(declare-fun b!1645038 () Bool)

(declare-fun tp!476561 () Bool)

(declare-fun tp!476560 () Bool)

(assert (=> b!1645038 (= e!1054978 (and tp!476561 tp!476560))))

(declare-fun b!1645037 () Bool)

(declare-fun tp!476558 () Bool)

(assert (=> b!1645037 (= e!1054978 tp!476558)))

(assert (= (and b!1643827 ((_ is ElementMatch!4525) (regTwo!9563 (regex!3197 (h!23529 rules!1846))))) b!1645035))

(assert (= (and b!1643827 ((_ is Concat!7813) (regTwo!9563 (regex!3197 (h!23529 rules!1846))))) b!1645036))

(assert (= (and b!1643827 ((_ is Star!4525) (regTwo!9563 (regex!3197 (h!23529 rules!1846))))) b!1645037))

(assert (= (and b!1643827 ((_ is Union!4525) (regTwo!9563 (regex!3197 (h!23529 rules!1846))))) b!1645038))

(declare-fun b!1645039 () Bool)

(declare-fun e!1054979 () Bool)

(assert (=> b!1645039 (= e!1054979 tp_is_empty!7341)))

(assert (=> b!1643825 (= tp!476436 e!1054979)))

(declare-fun b!1645040 () Bool)

(declare-fun tp!476564 () Bool)

(declare-fun tp!476567 () Bool)

(assert (=> b!1645040 (= e!1054979 (and tp!476564 tp!476567))))

(declare-fun b!1645042 () Bool)

(declare-fun tp!476566 () Bool)

(declare-fun tp!476565 () Bool)

(assert (=> b!1645042 (= e!1054979 (and tp!476566 tp!476565))))

(declare-fun b!1645041 () Bool)

(declare-fun tp!476563 () Bool)

(assert (=> b!1645041 (= e!1054979 tp!476563)))

(assert (= (and b!1643825 ((_ is ElementMatch!4525) (regOne!9562 (regex!3197 (h!23529 rules!1846))))) b!1645039))

(assert (= (and b!1643825 ((_ is Concat!7813) (regOne!9562 (regex!3197 (h!23529 rules!1846))))) b!1645040))

(assert (= (and b!1643825 ((_ is Star!4525) (regOne!9562 (regex!3197 (h!23529 rules!1846))))) b!1645041))

(assert (= (and b!1643825 ((_ is Union!4525) (regOne!9562 (regex!3197 (h!23529 rules!1846))))) b!1645042))

(declare-fun b!1645043 () Bool)

(declare-fun e!1054980 () Bool)

(assert (=> b!1645043 (= e!1054980 tp_is_empty!7341)))

(assert (=> b!1643825 (= tp!476439 e!1054980)))

(declare-fun b!1645044 () Bool)

(declare-fun tp!476569 () Bool)

(declare-fun tp!476572 () Bool)

(assert (=> b!1645044 (= e!1054980 (and tp!476569 tp!476572))))

(declare-fun b!1645046 () Bool)

(declare-fun tp!476571 () Bool)

(declare-fun tp!476570 () Bool)

(assert (=> b!1645046 (= e!1054980 (and tp!476571 tp!476570))))

(declare-fun b!1645045 () Bool)

(declare-fun tp!476568 () Bool)

(assert (=> b!1645045 (= e!1054980 tp!476568)))

(assert (= (and b!1643825 ((_ is ElementMatch!4525) (regTwo!9562 (regex!3197 (h!23529 rules!1846))))) b!1645043))

(assert (= (and b!1643825 ((_ is Concat!7813) (regTwo!9562 (regex!3197 (h!23529 rules!1846))))) b!1645044))

(assert (= (and b!1643825 ((_ is Star!4525) (regTwo!9562 (regex!3197 (h!23529 rules!1846))))) b!1645045))

(assert (= (and b!1643825 ((_ is Union!4525) (regTwo!9562 (regex!3197 (h!23529 rules!1846))))) b!1645046))

(declare-fun b!1645047 () Bool)

(declare-fun e!1054981 () Bool)

(assert (=> b!1645047 (= e!1054981 tp_is_empty!7341)))

(assert (=> b!1643794 (= tp!476402 e!1054981)))

(declare-fun b!1645048 () Bool)

(declare-fun tp!476574 () Bool)

(declare-fun tp!476577 () Bool)

(assert (=> b!1645048 (= e!1054981 (and tp!476574 tp!476577))))

(declare-fun b!1645050 () Bool)

(declare-fun tp!476576 () Bool)

(declare-fun tp!476575 () Bool)

(assert (=> b!1645050 (= e!1054981 (and tp!476576 tp!476575))))

(declare-fun b!1645049 () Bool)

(declare-fun tp!476573 () Bool)

(assert (=> b!1645049 (= e!1054981 tp!476573)))

(assert (= (and b!1643794 ((_ is ElementMatch!4525) (regex!3197 (h!23529 (t!150205 rules!1846))))) b!1645047))

(assert (= (and b!1643794 ((_ is Concat!7813) (regex!3197 (h!23529 (t!150205 rules!1846))))) b!1645048))

(assert (= (and b!1643794 ((_ is Star!4525) (regex!3197 (h!23529 (t!150205 rules!1846))))) b!1645049))

(assert (= (and b!1643794 ((_ is Union!4525) (regex!3197 (h!23529 (t!150205 rules!1846))))) b!1645050))

(declare-fun b!1645051 () Bool)

(declare-fun e!1054982 () Bool)

(declare-fun tp!476578 () Bool)

(assert (=> b!1645051 (= e!1054982 (and tp_is_empty!7341 tp!476578))))

(assert (=> b!1643807 (= tp!476418 e!1054982)))

(assert (= (and b!1643807 ((_ is Cons!18126) (originalCharacters!4011 (h!23528 (t!150204 tokens!457))))) b!1645051))

(declare-fun b!1645052 () Bool)

(declare-fun e!1054983 () Bool)

(assert (=> b!1645052 (= e!1054983 tp_is_empty!7341)))

(assert (=> b!1643821 (= tp!476431 e!1054983)))

(declare-fun b!1645053 () Bool)

(declare-fun tp!476580 () Bool)

(declare-fun tp!476583 () Bool)

(assert (=> b!1645053 (= e!1054983 (and tp!476580 tp!476583))))

(declare-fun b!1645055 () Bool)

(declare-fun tp!476582 () Bool)

(declare-fun tp!476581 () Bool)

(assert (=> b!1645055 (= e!1054983 (and tp!476582 tp!476581))))

(declare-fun b!1645054 () Bool)

(declare-fun tp!476579 () Bool)

(assert (=> b!1645054 (= e!1054983 tp!476579)))

(assert (= (and b!1643821 ((_ is ElementMatch!4525) (regOne!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645052))

(assert (= (and b!1643821 ((_ is Concat!7813) (regOne!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645053))

(assert (= (and b!1643821 ((_ is Star!4525) (regOne!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645054))

(assert (= (and b!1643821 ((_ is Union!4525) (regOne!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645055))

(declare-fun b!1645056 () Bool)

(declare-fun e!1054984 () Bool)

(assert (=> b!1645056 (= e!1054984 tp_is_empty!7341)))

(assert (=> b!1643821 (= tp!476434 e!1054984)))

(declare-fun b!1645057 () Bool)

(declare-fun tp!476585 () Bool)

(declare-fun tp!476588 () Bool)

(assert (=> b!1645057 (= e!1054984 (and tp!476585 tp!476588))))

(declare-fun b!1645059 () Bool)

(declare-fun tp!476587 () Bool)

(declare-fun tp!476586 () Bool)

(assert (=> b!1645059 (= e!1054984 (and tp!476587 tp!476586))))

(declare-fun b!1645058 () Bool)

(declare-fun tp!476584 () Bool)

(assert (=> b!1645058 (= e!1054984 tp!476584)))

(assert (= (and b!1643821 ((_ is ElementMatch!4525) (regTwo!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645056))

(assert (= (and b!1643821 ((_ is Concat!7813) (regTwo!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645057))

(assert (= (and b!1643821 ((_ is Star!4525) (regTwo!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645058))

(assert (= (and b!1643821 ((_ is Union!4525) (regTwo!9562 (regex!3197 (rule!5047 (h!23528 tokens!457)))))) b!1645059))

(declare-fun b!1645060 () Bool)

(declare-fun e!1054985 () Bool)

(assert (=> b!1645060 (= e!1054985 tp_is_empty!7341)))

(assert (=> b!1643826 (= tp!476435 e!1054985)))

(declare-fun b!1645061 () Bool)

(declare-fun tp!476590 () Bool)

(declare-fun tp!476593 () Bool)

(assert (=> b!1645061 (= e!1054985 (and tp!476590 tp!476593))))

(declare-fun b!1645063 () Bool)

(declare-fun tp!476592 () Bool)

(declare-fun tp!476591 () Bool)

(assert (=> b!1645063 (= e!1054985 (and tp!476592 tp!476591))))

(declare-fun b!1645062 () Bool)

(declare-fun tp!476589 () Bool)

(assert (=> b!1645062 (= e!1054985 tp!476589)))

(assert (= (and b!1643826 ((_ is ElementMatch!4525) (reg!4854 (regex!3197 (h!23529 rules!1846))))) b!1645060))

(assert (= (and b!1643826 ((_ is Concat!7813) (reg!4854 (regex!3197 (h!23529 rules!1846))))) b!1645061))

(assert (= (and b!1643826 ((_ is Star!4525) (reg!4854 (regex!3197 (h!23529 rules!1846))))) b!1645062))

(assert (= (and b!1643826 ((_ is Union!4525) (reg!4854 (regex!3197 (h!23529 rules!1846))))) b!1645063))

(declare-fun b!1645066 () Bool)

(declare-fun b_free!44631 () Bool)

(declare-fun b_next!45335 () Bool)

(assert (=> b!1645066 (= b_free!44631 (not b_next!45335))))

(declare-fun tb!94187 () Bool)

(declare-fun t!150375 () Bool)

(assert (=> (and b!1645066 (= (toValue!4636 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150375) tb!94187))

(declare-fun result!113748 () Bool)

(assert (= result!113748 result!113730))

(assert (=> d!495539 t!150375))

(declare-fun b_and!116733 () Bool)

(declare-fun tp!476594 () Bool)

(assert (=> b!1645066 (= tp!476594 (and (=> t!150375 result!113748) b_and!116733))))

(declare-fun b_free!44633 () Bool)

(declare-fun b_next!45337 () Bool)

(assert (=> b!1645066 (= b_free!44633 (not b_next!45337))))

(declare-fun t!150377 () Bool)

(declare-fun tb!94189 () Bool)

(assert (=> (and b!1645066 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) t!150377) tb!94189))

(declare-fun result!113750 () Bool)

(assert (= result!113750 result!113666))

(assert (=> d!495295 t!150377))

(declare-fun t!150379 () Bool)

(declare-fun tb!94191 () Bool)

(assert (=> (and b!1645066 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150379) tb!94191))

(declare-fun result!113752 () Bool)

(assert (= result!113752 result!113626))

(assert (=> d!494977 t!150379))

(declare-fun tb!94193 () Bool)

(declare-fun t!150381 () Bool)

(assert (=> (and b!1645066 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) t!150381) tb!94193))

(declare-fun result!113754 () Bool)

(assert (= result!113754 result!113600))

(assert (=> b!1643767 t!150381))

(declare-fun t!150383 () Bool)

(declare-fun tb!94195 () Bool)

(assert (=> (and b!1645066 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))))) t!150383) tb!94195))

(declare-fun result!113756 () Bool)

(assert (= result!113756 result!113650))

(assert (=> d!495119 t!150383))

(declare-fun t!150385 () Bool)

(declare-fun tb!94197 () Bool)

(assert (=> (and b!1645066 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) t!150385) tb!94197))

(declare-fun result!113758 () Bool)

(assert (= result!113758 result!113658))

(assert (=> b!1644398 t!150385))

(declare-fun tb!94199 () Bool)

(declare-fun t!150387 () Bool)

(assert (=> (and b!1645066 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0))))) t!150387) tb!94199))

(declare-fun result!113760 () Bool)

(assert (= result!113760 result!113740))

(assert (=> d!495555 t!150387))

(assert (=> d!494919 t!150381))

(assert (=> d!495141 t!150385))

(declare-fun b_and!116735 () Bool)

(declare-fun tp!476597 () Bool)

(assert (=> b!1645066 (= tp!476597 (and (=> t!150377 result!113750) (=> t!150383 result!113756) (=> t!150387 result!113760) (=> t!150385 result!113758) (=> t!150379 result!113752) (=> t!150381 result!113754) b_and!116735))))

(declare-fun e!1054988 () Bool)

(assert (=> b!1645066 (= e!1054988 (and tp!476594 tp!476597))))

(declare-fun e!1054987 () Bool)

(declare-fun tp!476595 () Bool)

(declare-fun b!1645065 () Bool)

(assert (=> b!1645065 (= e!1054987 (and tp!476595 (inv!23481 (tag!3477 (h!23529 (t!150205 (t!150205 rules!1846))))) (inv!23484 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) e!1054988))))

(declare-fun b!1645064 () Bool)

(declare-fun e!1054986 () Bool)

(declare-fun tp!476596 () Bool)

(assert (=> b!1645064 (= e!1054986 (and e!1054987 tp!476596))))

(assert (=> b!1643793 (= tp!476403 e!1054986)))

(assert (= b!1645065 b!1645066))

(assert (= b!1645064 b!1645065))

(assert (= (and b!1643793 ((_ is Cons!18128) (t!150205 (t!150205 rules!1846)))) b!1645064))

(declare-fun m!1989235 () Bool)

(assert (=> b!1645065 m!1989235))

(declare-fun m!1989237 () Bool)

(assert (=> b!1645065 m!1989237))

(declare-fun b!1645070 () Bool)

(declare-fun b_free!44635 () Bool)

(declare-fun b_next!45339 () Bool)

(assert (=> b!1645070 (= b_free!44635 (not b_next!45339))))

(declare-fun tb!94201 () Bool)

(declare-fun t!150389 () Bool)

(assert (=> (and b!1645070 (= (toValue!4636 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toValue!4636 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150389) tb!94201))

(declare-fun result!113762 () Bool)

(assert (= result!113762 result!113730))

(assert (=> d!495539 t!150389))

(declare-fun tp!476602 () Bool)

(declare-fun b_and!116737 () Bool)

(assert (=> b!1645070 (= tp!476602 (and (=> t!150389 result!113762) b_and!116737))))

(declare-fun b_free!44637 () Bool)

(declare-fun b_next!45341 () Bool)

(assert (=> b!1645070 (= b_free!44637 (not b_next!45341))))

(declare-fun t!150391 () Bool)

(declare-fun tb!94203 () Bool)

(assert (=> (and b!1645070 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (Cons!18127 (h!23528 tokens!457) Nil!18127)))))) t!150391) tb!94203))

(declare-fun result!113764 () Bool)

(assert (= result!113764 result!113666))

(assert (=> d!495295 t!150391))

(declare-fun tb!94205 () Bool)

(declare-fun t!150393 () Bool)

(assert (=> (and b!1645070 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (_1!10295 (get!5272 lt!605786)))))) t!150393) tb!94205))

(declare-fun result!113766 () Bool)

(assert (= result!113766 result!113626))

(assert (=> d!494977 t!150393))

(declare-fun t!150395 () Bool)

(declare-fun tb!94207 () Bool)

(assert (=> (and b!1645070 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457))))) t!150395) tb!94207))

(declare-fun result!113768 () Bool)

(assert (= result!113768 result!113600))

(assert (=> b!1643767 t!150395))

(declare-fun t!150397 () Bool)

(declare-fun tb!94209 () Bool)

(assert (=> (and b!1645070 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457))))))) t!150397) tb!94209))

(declare-fun result!113770 () Bool)

(assert (= result!113770 result!113650))

(assert (=> d!495119 t!150397))

(declare-fun t!150399 () Bool)

(declare-fun tb!94211 () Bool)

(assert (=> (and b!1645070 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457)))))) t!150399) tb!94211))

(declare-fun result!113772 () Bool)

(assert (= result!113772 result!113658))

(assert (=> b!1644398 t!150399))

(declare-fun t!150401 () Bool)

(declare-fun tb!94213 () Bool)

(assert (=> (and b!1645070 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (apply!4734 lt!605506 0))))) t!150401) tb!94213))

(declare-fun result!113774 () Bool)

(assert (= result!113774 result!113740))

(assert (=> d!495555 t!150401))

(assert (=> d!494919 t!150395))

(assert (=> d!495141 t!150399))

(declare-fun b_and!116739 () Bool)

(declare-fun tp!476598 () Bool)

(assert (=> b!1645070 (= tp!476598 (and (=> t!150391 result!113764) (=> t!150397 result!113770) (=> t!150395 result!113768) (=> t!150393 result!113766) (=> t!150401 result!113774) (=> t!150399 result!113772) b_and!116739))))

(declare-fun e!1054994 () Bool)

(declare-fun tp!476600 () Bool)

(declare-fun b!1645067 () Bool)

(declare-fun e!1054995 () Bool)

(assert (=> b!1645067 (= e!1054995 (and (inv!23485 (h!23528 (t!150204 (t!150204 tokens!457)))) e!1054994 tp!476600))))

(declare-fun tp!476601 () Bool)

(declare-fun e!1054991 () Bool)

(declare-fun b!1645068 () Bool)

(assert (=> b!1645068 (= e!1054994 (and (inv!21 (value!100787 (h!23528 (t!150204 (t!150204 tokens!457))))) e!1054991 tp!476601))))

(declare-fun e!1054993 () Bool)

(assert (=> b!1645070 (= e!1054993 (and tp!476602 tp!476598))))

(assert (=> b!1643806 (= tp!476417 e!1054995)))

(declare-fun tp!476599 () Bool)

(declare-fun b!1645069 () Bool)

(assert (=> b!1645069 (= e!1054991 (and tp!476599 (inv!23481 (tag!3477 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (inv!23484 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) e!1054993))))

(assert (= b!1645069 b!1645070))

(assert (= b!1645068 b!1645069))

(assert (= b!1645067 b!1645068))

(assert (= (and b!1643806 ((_ is Cons!18127) (t!150204 (t!150204 tokens!457)))) b!1645067))

(declare-fun m!1989239 () Bool)

(assert (=> b!1645067 m!1989239))

(declare-fun m!1989241 () Bool)

(assert (=> b!1645068 m!1989241))

(declare-fun m!1989243 () Bool)

(assert (=> b!1645069 m!1989243))

(declare-fun m!1989245 () Bool)

(assert (=> b!1645069 m!1989245))

(declare-fun e!1055001 () Bool)

(declare-fun tp!476611 () Bool)

(declare-fun tp!476610 () Bool)

(declare-fun b!1645079 () Bool)

(assert (=> b!1645079 (= e!1055001 (and (inv!23488 (left!14534 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))))) tp!476611 (inv!23488 (right!14864 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))))) tp!476610))))

(declare-fun b!1645081 () Bool)

(declare-fun e!1055000 () Bool)

(declare-fun tp!476609 () Bool)

(assert (=> b!1645081 (= e!1055000 tp!476609)))

(declare-fun b!1645080 () Bool)

(declare-fun inv!23495 (IArray!12089) Bool)

(assert (=> b!1645080 (= e!1055001 (and (inv!23495 (xs!8878 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))))) e!1055000))))

(assert (=> b!1643750 (= tp!476392 (and (inv!23488 (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457))))) e!1055001))))

(assert (= (and b!1643750 ((_ is Node!6042) (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))))) b!1645079))

(assert (= b!1645080 b!1645081))

(assert (= (and b!1643750 ((_ is Leaf!8861) (c!267229 (dynLambda!8101 (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (value!100787 (h!23528 tokens!457)))))) b!1645080))

(declare-fun m!1989247 () Bool)

(assert (=> b!1645079 m!1989247))

(declare-fun m!1989249 () Bool)

(assert (=> b!1645079 m!1989249))

(declare-fun m!1989251 () Bool)

(assert (=> b!1645080 m!1989251))

(assert (=> b!1643750 m!1986353))

(declare-fun b!1645082 () Bool)

(declare-fun e!1055002 () Bool)

(declare-fun tp!476612 () Bool)

(assert (=> b!1645082 (= e!1055002 (and tp_is_empty!7341 tp!476612))))

(assert (=> b!1643832 (= tp!476442 e!1055002)))

(assert (= (and b!1643832 ((_ is Cons!18126) (t!150203 (originalCharacters!4011 (h!23528 tokens!457))))) b!1645082))

(declare-fun b_lambda!51701 () Bool)

(assert (= b_lambda!51671 (or (and b!1645066 b_free!44633 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1643809 b_free!44621) (and b!1643415 b_free!44605 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1643419 b_free!44601 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1643795 b_free!44617 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1645070 b_free!44637 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) b_lambda!51701)))

(declare-fun b_lambda!51703 () Bool)

(assert (= b_lambda!51675 (or (and b!1645066 b_free!44633 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1643809 b_free!44621) (and b!1643415 b_free!44605 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1643419 b_free!44601 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1643795 b_free!44617 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) (and b!1645070 b_free!44637 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))))) b_lambda!51703)))

(declare-fun b_lambda!51705 () Bool)

(assert (= b_lambda!51673 (or d!494801 b_lambda!51705)))

(declare-fun bs!396023 () Bool)

(declare-fun d!495599 () Bool)

(assert (= bs!396023 (and d!495599 d!494801)))

(assert (=> bs!396023 (= (dynLambda!8102 lambda!67535 (h!23528 tokens!457)) (rulesProduceIndividualToken!1476 thiss!17113 rules!1846 (h!23528 tokens!457)))))

(assert (=> bs!396023 m!1985973))

(assert (=> b!1644223 d!495599))

(declare-fun b_lambda!51707 () Bool)

(assert (= b_lambda!51669 (or (and b!1645070 b_free!44637) (and b!1645066 b_free!44633 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 (t!150205 rules!1846))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))))) (and b!1643419 b_free!44601 (= (toChars!4495 (transformation!3197 (h!23529 rules!1846))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))))) (and b!1643415 b_free!44605 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 tokens!457)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))))) (and b!1643795 b_free!44617 (= (toChars!4495 (transformation!3197 (h!23529 (t!150205 rules!1846)))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))))) (and b!1643809 b_free!44621 (= (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 tokens!457))))) (toChars!4495 (transformation!3197 (rule!5047 (h!23528 (t!150204 (t!150204 tokens!457)))))))) b_lambda!51707)))

(check-sat (not b_next!45309) (not d!495119) (not tb!94103) (not b!1644179) (not b!1645014) (not b!1645050) (not b_next!45339) tp_is_empty!7341 (not b!1644962) (not b!1645082) (not b!1644003) b_and!116717 (not b!1645018) (not b!1644213) (not d!495125) (not d!494989) (not d!495293) (not b!1644172) (not d!495535) (not b!1644249) (not d!495339) (not b!1644373) (not d!495153) b_and!116727 (not b!1644909) (not d!495233) (not b!1645045) (not b!1644670) (not b!1644218) (not d!495567) (not b!1644309) (not d!495135) (not b!1644135) (not b!1645026) (not b!1644163) (not b!1644393) (not b!1644910) (not d!495243) (not b!1644311) (not b!1644421) (not bs!396023) (not b!1644530) (not d!495117) (not b!1644911) (not b!1644298) (not b!1644364) (not b!1644301) (not d!495287) (not d!495291) (not d!495191) (not d!495259) (not b!1644193) (not b!1644985) (not b!1644299) (not b!1644466) (not b!1645048) (not d!495273) (not d!495115) (not b!1644396) (not d!495169) (not b!1645054) (not b!1644229) (not b!1644979) (not b!1644980) (not b!1644544) (not b!1644751) (not d!495173) (not b!1643973) (not b!1645041) (not b!1644178) (not b!1644974) (not b!1644539) (not d!495247) (not b!1644224) (not d!495251) (not b!1644453) (not b!1644300) (not b!1644998) (not d!495563) (not b!1644456) (not d!495533) (not b!1644192) (not d!495151) (not b!1644667) (not tb!94171) (not d!495577) (not b!1644435) (not b!1644920) (not b!1645038) (not b!1645061) (not d!495313) (not b!1644553) (not b!1644936) (not b!1644375) (not b!1644457) (not b!1645057) (not b!1644173) (not b_lambda!51699) (not b!1643977) (not b_next!45337) (not d!494975) (not b!1644226) (not b!1645005) (not b!1644285) (not b!1644170) (not d!495143) (not b_lambda!51657) (not d!495165) (not b!1645034) (not d!495285) (not b!1644191) (not b!1644529) (not b!1644415) b_and!116721 (not d!495231) (not d!495007) (not b!1645002) (not d!495171) (not d!495239) (not b!1644448) (not d!495195) (not b_lambda!51677) (not b!1644164) (not d!495227) (not b!1643991) (not b!1644316) (not b!1644367) (not b!1644399) (not b!1645010) (not b!1644935) (not b!1644149) (not b!1644369) (not d!495193) (not b!1644246) (not d!495417) (not d!495211) (not b!1644990) (not b!1644750) (not b!1644157) (not d!495307) (not d!495131) (not b!1644370) (not d!495587) (not b!1644445) (not b!1645013) (not b!1644923) (not b!1644216) (not b!1644142) (not b!1644286) (not b!1644398) (not b_next!45305) (not b!1645015) (not b!1645079) (not bm!105760) (not b!1644469) (not b!1644439) (not d!495141) (not d!495189) (not b_next!45319) (not d!495575) (not b!1644181) (not b!1645049) (not d!495449) (not b!1643923) (not d!495105) (not bm!105762) (not b!1644247) (not b!1645069) (not b!1644372) (not b_lambda!51663) b_and!116733 (not d!495353) (not bm!105752) (not b!1645081) (not b!1644008) b_and!116729 (not d!495111) (not b!1644468) (not b!1644402) b_and!116719 (not b!1644007) b_and!116723 (not b!1644167) (not d!495183) (not d!495009) (not b!1644450) (not tb!94111) (not b!1644749) (not b!1643924) (not b!1644532) (not b!1644927) (not d!495027) (not b!1644262) (not d!495031) (not b!1644967) (not b!1645030) (not d!494977) (not b!1645055) (not d!495573) (not b!1645036) (not b!1644371) (not b!1644374) (not b_lambda!51707) (not b!1644155) (not b!1644389) (not b!1644006) (not d!495311) (not b!1644175) (not d!495283) (not b!1644177) (not d!495451) (not b!1644397) (not b!1643979) (not b!1643978) (not d!495157) (not d!495581) (not b!1644669) (not b!1645064) (not b!1644297) (not b!1644427) (not d!495495) (not b_next!45303) (not d!495299) (not d!495129) (not d!495015) (not b!1644139) (not b!1645029) (not b!1644282) (not b_next!45341) (not b!1645019) (not d!495589) (not b!1645024) (not b!1643993) (not b!1644376) (not b!1644251) (not d!495237) (not tb!94179) (not d!495585) (not b!1644381) (not d!495271) (not b!1644409) (not b!1644983) (not b!1644454) (not d!495109) (not b!1645053) (not b!1644137) (not b!1645059) (not d!495139) (not b!1645044) (not b!1645058) (not b!1644999) (not b!1644275) (not d!495201) (not b!1644959) (not d!495145) (not b!1644984) (not b!1643992) (not b!1644150) b_and!116739 (not b!1644152) (not b!1644475) (not d!495149) b_and!116735 (not b!1644168) (not b!1644416) (not d!495133) (not bm!105774) (not d!495113) (not b!1644408) (not b!1644288) (not bm!105758) (not b!1644437) (not b_lambda!51659) (not b!1645028) (not b!1644419) (not d!495445) (not b!1644250) (not b!1644138) (not d!495161) (not b!1644441) (not b!1644171) (not b!1644365) (not b!1645051) (not b!1644971) (not d!495351) (not d!495177) (not b!1644294) (not b!1644918) (not d!495561) (not d!495127) (not b!1645032) (not b!1644151) (not b!1644420) (not b!1644148) (not d!495103) (not b!1644287) (not d!495213) (not b!1645033) (not b!1644928) (not b!1645042) (not b!1644451) (not b_lambda!51697) (not b_lambda!51703) (not d!495137) (not b!1644937) (not tb!94071) (not b!1644986) (not b!1645068) (not b!1645037) (not b!1644430) (not b!1645080) (not b!1644212) (not b!1644534) (not b!1644563) (not b!1644136) (not b_next!45307) (not b!1644001) (not b!1643921) (not d!495583) (not b!1644000) (not b!1644174) (not d!495553) (not b!1643985) (not b!1645063) (not b!1644538) (not d!495203) (not b!1645065) (not d!495221) (not b_lambda!51701) (not d!495123) (not b!1644166) (not b!1644227) (not b!1644005) (not b!1644531) (not d!495557) (not b!1645017) (not b!1644433) (not d!495547) (not d!495309) (not d!494971) (not b!1644382) (not b_next!45321) (not b_next!45325) (not d!495559) (not b!1643994) (not bm!105773) (not d!495013) (not b!1645007) (not b!1644551) (not b!1644668) (not b_next!45323) (not b!1644925) (not b!1645067) (not d!495197) (not b!1644673) b_and!116731 (not d!495295) (not d!495011) (not bm!105775) (not b!1644392) (not b!1644145) (not d!495219) (not b!1644438) (not b!1644378) (not bm!105759) (not b!1644161) b_and!116725 (not b!1644444) (not b!1644403) (not b!1644328) (not b!1643999) (not b!1645062) (not b!1645003) (not d!495155) (not b!1644158) (not d!495555) (not b!1644417) (not d!495255) (not d!495551) (not b!1644993) (not b!1644536) (not b!1644154) (not d!495217) (not b!1644156) (not b!1644160) (not b!1644431) (not b!1643750) (not d!495245) (not d!495257) (not b!1644004) (not b!1644446) b_and!116737 (not d!495497) (not d!495179) (not b!1644982) (not b!1645040) (not bm!105753) (not d!495147) (not d!495565) (not b!1644426) (not b!1643920) (not b!1644197) (not b!1644377) (not d!495333) (not b!1644391) (not b!1644329) (not b!1645020) (not b!1644146) (not b!1644442) (not b_lambda!51705) (not b!1644464) (not b!1643931) (not b!1644182) (not b!1645011) (not b!1644248) (not b!1645025) (not b_next!45335) (not b!1643976) (not d!495225) (not b!1645046) (not b!1644159) (not d!495439) (not d!495541) (not d!495355) (not b!1644443) (not tb!94095))
(check-sat b_and!116727 (not b_next!45337) b_and!116721 (not b_next!45307) b_and!116725 b_and!116737 (not b_next!45335) (not b_next!45309) b_and!116717 (not b_next!45339) (not b_next!45305) (not b_next!45319) b_and!116729 b_and!116733 b_and!116719 b_and!116723 (not b_next!45341) (not b_next!45303) b_and!116735 b_and!116739 (not b_next!45321) (not b_next!45325) (not b_next!45323) b_and!116731)
