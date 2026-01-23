; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406878 () Bool)

(assert start!406878)

(declare-fun b!4249510 () Bool)

(declare-fun b_free!126259 () Bool)

(declare-fun b_next!126963 () Bool)

(assert (=> b!4249510 (= b_free!126259 (not b_next!126963))))

(declare-fun tp!1303754 () Bool)

(declare-fun b_and!336829 () Bool)

(assert (=> b!4249510 (= tp!1303754 b_and!336829)))

(declare-fun b_free!126261 () Bool)

(declare-fun b_next!126965 () Bool)

(assert (=> b!4249510 (= b_free!126261 (not b_next!126965))))

(declare-fun tp!1303752 () Bool)

(declare-fun b_and!336831 () Bool)

(assert (=> b!4249510 (= tp!1303752 b_and!336831)))

(declare-fun b!4249516 () Bool)

(declare-fun b_free!126263 () Bool)

(declare-fun b_next!126967 () Bool)

(assert (=> b!4249516 (= b_free!126263 (not b_next!126967))))

(declare-fun tp!1303756 () Bool)

(declare-fun b_and!336833 () Bool)

(assert (=> b!4249516 (= tp!1303756 b_and!336833)))

(declare-fun b_free!126265 () Bool)

(declare-fun b_next!126969 () Bool)

(assert (=> b!4249516 (= b_free!126265 (not b_next!126969))))

(declare-fun tp!1303757 () Bool)

(declare-fun b_and!336835 () Bool)

(assert (=> b!4249516 (= tp!1303757 b_and!336835)))

(declare-fun e!2639344 () Bool)

(declare-fun e!2639355 () Bool)

(declare-fun tp!1303755 () Bool)

(declare-datatypes ((List!47189 0))(
  ( (Nil!47065) (Cons!47065 (h!52485 (_ BitVec 16)) (t!352218 List!47189)) )
))
(declare-datatypes ((TokenValue!8196 0))(
  ( (FloatLiteralValue!16392 (text!57817 List!47189)) (TokenValueExt!8195 (__x!28615 Int)) (Broken!40980 (value!247541 List!47189)) (Object!8319) (End!8196) (Def!8196) (Underscore!8196) (Match!8196) (Else!8196) (Error!8196) (Case!8196) (If!8196) (Extends!8196) (Abstract!8196) (Class!8196) (Val!8196) (DelimiterValue!16392 (del!8256 List!47189)) (KeywordValue!8202 (value!247542 List!47189)) (CommentValue!16392 (value!247543 List!47189)) (WhitespaceValue!16392 (value!247544 List!47189)) (IndentationValue!8196 (value!247545 List!47189)) (String!54909) (Int32!8196) (Broken!40981 (value!247546 List!47189)) (Boolean!8197) (Unit!66054) (OperatorValue!8199 (op!8256 List!47189)) (IdentifierValue!16392 (value!247547 List!47189)) (IdentifierValue!16393 (value!247548 List!47189)) (WhitespaceValue!16393 (value!247549 List!47189)) (True!16392) (False!16392) (Broken!40982 (value!247550 List!47189)) (Broken!40983 (value!247551 List!47189)) (True!16393) (RightBrace!8196) (RightBracket!8196) (Colon!8196) (Null!8196) (Comma!8196) (LeftBracket!8196) (False!16393) (LeftBrace!8196) (ImaginaryLiteralValue!8196 (text!57818 List!47189)) (StringLiteralValue!24588 (value!247552 List!47189)) (EOFValue!8196 (value!247553 List!47189)) (IdentValue!8196 (value!247554 List!47189)) (DelimiterValue!16393 (value!247555 List!47189)) (DedentValue!8196 (value!247556 List!47189)) (NewLineValue!8196 (value!247557 List!47189)) (IntegerValue!24588 (value!247558 (_ BitVec 32)) (text!57819 List!47189)) (IntegerValue!24589 (value!247559 Int) (text!57820 List!47189)) (Times!8196) (Or!8196) (Equal!8196) (Minus!8196) (Broken!40984 (value!247560 List!47189)) (And!8196) (Div!8196) (LessEqual!8196) (Mod!8196) (Concat!21067) (Not!8196) (Plus!8196) (SpaceValue!8196 (value!247561 List!47189)) (IntegerValue!24590 (value!247562 Int) (text!57821 List!47189)) (StringLiteralValue!24589 (text!57822 List!47189)) (FloatLiteralValue!16393 (text!57823 List!47189)) (BytesLiteralValue!8196 (value!247563 List!47189)) (CommentValue!16393 (value!247564 List!47189)) (StringLiteralValue!24590 (value!247565 List!47189)) (ErrorTokenValue!8196 (msg!8257 List!47189)) )
))
(declare-datatypes ((C!25940 0))(
  ( (C!25941 (val!15160 Int)) )
))
(declare-datatypes ((List!47190 0))(
  ( (Nil!47066) (Cons!47066 (h!52486 C!25940) (t!352219 List!47190)) )
))
(declare-datatypes ((IArray!28359 0))(
  ( (IArray!28360 (innerList!14237 List!47190)) )
))
(declare-datatypes ((Conc!14177 0))(
  ( (Node!14177 (left!34922 Conc!14177) (right!35252 Conc!14177) (csize!28584 Int) (cheight!14388 Int)) (Leaf!21919 (xs!17483 IArray!28359) (csize!28585 Int)) (Empty!14177) )
))
(declare-datatypes ((BalanceConc!27948 0))(
  ( (BalanceConc!27949 (c!721672 Conc!14177)) )
))
(declare-datatypes ((TokenValueInjection!15820 0))(
  ( (TokenValueInjection!15821 (toValue!10738 Int) (toChars!10597 Int)) )
))
(declare-datatypes ((String!54910 0))(
  ( (String!54911 (value!247566 String)) )
))
(declare-datatypes ((Regex!12871 0))(
  ( (ElementMatch!12871 (c!721673 C!25940)) (Concat!21068 (regOne!26254 Regex!12871) (regTwo!26254 Regex!12871)) (EmptyExpr!12871) (Star!12871 (reg!13200 Regex!12871)) (EmptyLang!12871) (Union!12871 (regOne!26255 Regex!12871) (regTwo!26255 Regex!12871)) )
))
(declare-datatypes ((Rule!15732 0))(
  ( (Rule!15733 (regex!7966 Regex!12871) (tag!8830 String!54910) (isSeparator!7966 Bool) (transformation!7966 TokenValueInjection!15820)) )
))
(declare-datatypes ((List!47191 0))(
  ( (Nil!47067) (Cons!47067 (h!52487 Rule!15732) (t!352220 List!47191)) )
))
(declare-fun rules!2971 () List!47191)

(declare-fun b!4249508 () Bool)

(declare-fun inv!61837 (String!54910) Bool)

(declare-fun inv!61840 (TokenValueInjection!15820) Bool)

(assert (=> b!4249508 (= e!2639344 (and tp!1303755 (inv!61837 (tag!8830 (h!52487 rules!2971))) (inv!61840 (transformation!7966 (h!52487 rules!2971))) e!2639355))))

(declare-fun res!1746992 () Bool)

(declare-fun e!2639348 () Bool)

(assert (=> start!406878 (=> (not res!1746992) (not e!2639348))))

(declare-datatypes ((LexerInterface!7561 0))(
  ( (LexerInterfaceExt!7558 (__x!28616 Int)) (Lexer!7559) )
))
(declare-fun thiss!21641 () LexerInterface!7561)

(get-info :version)

(assert (=> start!406878 (= res!1746992 ((_ is Lexer!7559) thiss!21641))))

(assert (=> start!406878 e!2639348))

(assert (=> start!406878 true))

(declare-fun e!2639356 () Bool)

(assert (=> start!406878 e!2639356))

(declare-fun e!2639359 () Bool)

(assert (=> start!406878 e!2639359))

(declare-fun e!2639345 () Bool)

(assert (=> start!406878 e!2639345))

(declare-fun e!2639360 () Bool)

(assert (=> start!406878 e!2639360))

(declare-fun e!2639352 () Bool)

(assert (=> start!406878 e!2639352))

(declare-fun b!4249509 () Bool)

(declare-fun e!2639347 () Bool)

(assert (=> b!4249509 (= e!2639348 e!2639347)))

(declare-fun res!1746990 () Bool)

(assert (=> b!4249509 (=> (not res!1746990) (not e!2639347))))

(declare-datatypes ((Token!14558 0))(
  ( (Token!14559 (value!247567 TokenValue!8196) (rule!11100 Rule!15732) (size!34460 Int) (originalCharacters!8310 List!47190)) )
))
(declare-datatypes ((tuple2!44630 0))(
  ( (tuple2!44631 (_1!25449 Token!14558) (_2!25449 List!47190)) )
))
(declare-datatypes ((Option!10100 0))(
  ( (None!10099) (Some!10099 (v!41057 tuple2!44630)) )
))
(declare-fun lt!1508309 () Option!10100)

(declare-fun lt!1508310 () Option!10100)

(assert (=> b!4249509 (= res!1746990 (and ((_ is Some!10099) lt!1508309) ((_ is Some!10099) lt!1508310)))))

(declare-fun shorterInput!62 () List!47190)

(declare-fun maxPrefix!4517 (LexerInterface!7561 List!47191 List!47190) Option!10100)

(assert (=> b!4249509 (= lt!1508310 (maxPrefix!4517 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47190)

(assert (=> b!4249509 (= lt!1508309 (maxPrefix!4517 thiss!21641 rules!2971 longerInput!62))))

(assert (=> b!4249510 (= e!2639355 (and tp!1303754 tp!1303752))))

(declare-fun b!4249511 () Bool)

(declare-fun res!1746989 () Bool)

(assert (=> b!4249511 (=> (not res!1746989) (not e!2639348))))

(declare-fun rulesInvariant!6672 (LexerInterface!7561 List!47191) Bool)

(assert (=> b!4249511 (= res!1746989 (rulesInvariant!6672 thiss!21641 rules!2971))))

(declare-fun b!4249512 () Bool)

(declare-fun e!2639354 () Bool)

(assert (=> b!4249512 (= e!2639347 e!2639354)))

(declare-fun res!1746986 () Bool)

(assert (=> b!4249512 (=> (not res!1746986) (not e!2639354))))

(declare-fun lt!1508308 () List!47190)

(declare-fun ++!11977 (List!47190 List!47190) List!47190)

(assert (=> b!4249512 (= res!1746986 (= (++!11977 lt!1508308 (_2!25449 (v!41057 lt!1508309))) longerInput!62))))

(declare-fun list!16958 (BalanceConc!27948) List!47190)

(declare-fun charsOf!5308 (Token!14558) BalanceConc!27948)

(assert (=> b!4249512 (= lt!1508308 (list!16958 (charsOf!5308 (_1!25449 (v!41057 lt!1508309)))))))

(declare-fun b!4249513 () Bool)

(declare-fun res!1746991 () Bool)

(assert (=> b!4249513 (=> (not res!1746991) (not e!2639348))))

(declare-fun size!34461 (List!47190) Int)

(assert (=> b!4249513 (= res!1746991 (> (size!34461 longerInput!62) (size!34461 shorterInput!62)))))

(declare-fun tp!1303751 () Bool)

(declare-datatypes ((List!47192 0))(
  ( (Nil!47068) (Cons!47068 (h!52488 Token!14558) (t!352221 List!47192)) )
))
(declare-fun tokens!592 () List!47192)

(declare-fun b!4249514 () Bool)

(declare-fun e!2639357 () Bool)

(declare-fun inv!61841 (Token!14558) Bool)

(assert (=> b!4249514 (= e!2639345 (and (inv!61841 (h!52488 tokens!592)) e!2639357 tp!1303751))))

(declare-fun b!4249515 () Bool)

(declare-fun tp_is_empty!22733 () Bool)

(declare-fun tp!1303747 () Bool)

(assert (=> b!4249515 (= e!2639356 (and tp_is_empty!22733 tp!1303747))))

(declare-fun e!2639351 () Bool)

(assert (=> b!4249516 (= e!2639351 (and tp!1303756 tp!1303757))))

(declare-fun tp!1303753 () Bool)

(declare-fun e!2639346 () Bool)

(declare-fun b!4249517 () Bool)

(declare-fun inv!21 (TokenValue!8196) Bool)

(assert (=> b!4249517 (= e!2639357 (and (inv!21 (value!247567 (h!52488 tokens!592))) e!2639346 tp!1303753))))

(declare-fun b!4249518 () Bool)

(declare-fun tp!1303758 () Bool)

(assert (=> b!4249518 (= e!2639360 (and e!2639344 tp!1303758))))

(declare-fun b!4249519 () Bool)

(declare-fun tp!1303748 () Bool)

(assert (=> b!4249519 (= e!2639359 (and tp_is_empty!22733 tp!1303748))))

(declare-fun b!4249520 () Bool)

(declare-fun res!1746993 () Bool)

(assert (=> b!4249520 (=> (not res!1746993) (not e!2639348))))

(declare-fun suffix!1284 () List!47190)

(declare-datatypes ((tuple2!44632 0))(
  ( (tuple2!44633 (_1!25450 List!47192) (_2!25450 List!47190)) )
))
(declare-fun lexList!2067 (LexerInterface!7561 List!47191 List!47190) tuple2!44632)

(assert (=> b!4249520 (= res!1746993 (= (lexList!2067 thiss!21641 rules!2971 longerInput!62) (tuple2!44633 tokens!592 suffix!1284)))))

(declare-fun b!4249521 () Bool)

(declare-fun tp!1303749 () Bool)

(assert (=> b!4249521 (= e!2639346 (and tp!1303749 (inv!61837 (tag!8830 (rule!11100 (h!52488 tokens!592)))) (inv!61840 (transformation!7966 (rule!11100 (h!52488 tokens!592)))) e!2639351))))

(declare-fun b!4249522 () Bool)

(declare-fun res!1746987 () Bool)

(assert (=> b!4249522 (=> (not res!1746987) (not e!2639348))))

(declare-fun isEmpty!27844 (List!47191) Bool)

(assert (=> b!4249522 (= res!1746987 (not (isEmpty!27844 rules!2971)))))

(declare-fun b!4249523 () Bool)

(declare-fun res!1746994 () Bool)

(assert (=> b!4249523 (=> (not res!1746994) (not e!2639348))))

(declare-fun isEmpty!27845 (List!47190) Bool)

(assert (=> b!4249523 (= res!1746994 (not (isEmpty!27845 longerInput!62)))))

(declare-fun e!2639349 () Bool)

(declare-fun b!4249524 () Bool)

(declare-fun lt!1508307 () List!47190)

(assert (=> b!4249524 (= e!2639349 (and (= (_1!25449 (v!41057 lt!1508309)) (_1!25449 (v!41057 lt!1508310))) (not (= lt!1508308 lt!1508307))))))

(declare-fun b!4249525 () Bool)

(declare-fun tp!1303750 () Bool)

(assert (=> b!4249525 (= e!2639352 (and tp_is_empty!22733 tp!1303750))))

(declare-fun b!4249526 () Bool)

(assert (=> b!4249526 (= e!2639354 e!2639349)))

(declare-fun res!1746988 () Bool)

(assert (=> b!4249526 (=> (not res!1746988) (not e!2639349))))

(assert (=> b!4249526 (= res!1746988 (= (++!11977 lt!1508307 (_2!25449 (v!41057 lt!1508310))) shorterInput!62))))

(assert (=> b!4249526 (= lt!1508307 (list!16958 (charsOf!5308 (_1!25449 (v!41057 lt!1508310)))))))

(assert (= (and start!406878 res!1746992) b!4249522))

(assert (= (and b!4249522 res!1746987) b!4249511))

(assert (= (and b!4249511 res!1746989) b!4249523))

(assert (= (and b!4249523 res!1746994) b!4249513))

(assert (= (and b!4249513 res!1746991) b!4249520))

(assert (= (and b!4249520 res!1746993) b!4249509))

(assert (= (and b!4249509 res!1746990) b!4249512))

(assert (= (and b!4249512 res!1746986) b!4249526))

(assert (= (and b!4249526 res!1746988) b!4249524))

(assert (= (and start!406878 ((_ is Cons!47066) suffix!1284)) b!4249515))

(assert (= (and start!406878 ((_ is Cons!47066) longerInput!62)) b!4249519))

(assert (= b!4249521 b!4249516))

(assert (= b!4249517 b!4249521))

(assert (= b!4249514 b!4249517))

(assert (= (and start!406878 ((_ is Cons!47068) tokens!592)) b!4249514))

(assert (= b!4249508 b!4249510))

(assert (= b!4249518 b!4249508))

(assert (= (and start!406878 ((_ is Cons!47067) rules!2971)) b!4249518))

(assert (= (and start!406878 ((_ is Cons!47066) shorterInput!62)) b!4249525))

(declare-fun m!4834511 () Bool)

(assert (=> b!4249512 m!4834511))

(declare-fun m!4834513 () Bool)

(assert (=> b!4249512 m!4834513))

(assert (=> b!4249512 m!4834513))

(declare-fun m!4834515 () Bool)

(assert (=> b!4249512 m!4834515))

(declare-fun m!4834517 () Bool)

(assert (=> b!4249523 m!4834517))

(declare-fun m!4834519 () Bool)

(assert (=> b!4249520 m!4834519))

(declare-fun m!4834521 () Bool)

(assert (=> b!4249514 m!4834521))

(declare-fun m!4834523 () Bool)

(assert (=> b!4249517 m!4834523))

(declare-fun m!4834525 () Bool)

(assert (=> b!4249522 m!4834525))

(declare-fun m!4834527 () Bool)

(assert (=> b!4249521 m!4834527))

(declare-fun m!4834529 () Bool)

(assert (=> b!4249521 m!4834529))

(declare-fun m!4834531 () Bool)

(assert (=> b!4249526 m!4834531))

(declare-fun m!4834533 () Bool)

(assert (=> b!4249526 m!4834533))

(assert (=> b!4249526 m!4834533))

(declare-fun m!4834535 () Bool)

(assert (=> b!4249526 m!4834535))

(declare-fun m!4834537 () Bool)

(assert (=> b!4249513 m!4834537))

(declare-fun m!4834539 () Bool)

(assert (=> b!4249513 m!4834539))

(declare-fun m!4834541 () Bool)

(assert (=> b!4249508 m!4834541))

(declare-fun m!4834543 () Bool)

(assert (=> b!4249508 m!4834543))

(declare-fun m!4834545 () Bool)

(assert (=> b!4249511 m!4834545))

(declare-fun m!4834547 () Bool)

(assert (=> b!4249509 m!4834547))

(declare-fun m!4834549 () Bool)

(assert (=> b!4249509 m!4834549))

(check-sat b_and!336829 (not b!4249508) (not b!4249522) (not b_next!126969) (not b!4249521) (not b!4249525) (not b_next!126967) (not b!4249514) (not b!4249526) (not b!4249511) (not b!4249519) (not b!4249513) (not b_next!126963) (not b!4249515) (not b!4249509) b_and!336831 (not b!4249518) (not b!4249517) tp_is_empty!22733 (not b_next!126965) (not b!4249523) (not b!4249512) b_and!336835 b_and!336833 (not b!4249520))
(check-sat b_and!336829 (not b_next!126963) b_and!336831 (not b_next!126965) (not b_next!126969) b_and!336835 b_and!336833 (not b_next!126967))
