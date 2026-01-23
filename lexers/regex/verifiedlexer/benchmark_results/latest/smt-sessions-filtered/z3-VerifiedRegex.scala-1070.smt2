; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54568 () Bool)

(assert start!54568)

(declare-fun b!586422 () Bool)

(declare-fun b_free!16365 () Bool)

(declare-fun b_next!16381 () Bool)

(assert (=> b!586422 (= b_free!16365 (not b_next!16381))))

(declare-fun tp!182929 () Bool)

(declare-fun b_and!57763 () Bool)

(assert (=> b!586422 (= tp!182929 b_and!57763)))

(declare-fun b_free!16367 () Bool)

(declare-fun b_next!16383 () Bool)

(assert (=> b!586422 (= b_free!16367 (not b_next!16383))))

(declare-fun tp!182930 () Bool)

(declare-fun b_and!57765 () Bool)

(assert (=> b!586422 (= tp!182930 b_and!57765)))

(declare-fun b!586416 () Bool)

(declare-fun b_free!16369 () Bool)

(declare-fun b_next!16385 () Bool)

(assert (=> b!586416 (= b_free!16369 (not b_next!16385))))

(declare-fun tp!182934 () Bool)

(declare-fun b_and!57767 () Bool)

(assert (=> b!586416 (= tp!182934 b_and!57767)))

(declare-fun b_free!16371 () Bool)

(declare-fun b_next!16387 () Bool)

(assert (=> b!586416 (= b_free!16371 (not b_next!16387))))

(declare-fun tp!182932 () Bool)

(declare-fun b_and!57769 () Bool)

(assert (=> b!586416 (= tp!182932 b_and!57769)))

(declare-fun e!354437 () Bool)

(assert (=> b!586416 (= e!354437 (and tp!182934 tp!182932))))

(declare-fun b!586417 () Bool)

(declare-fun e!354452 () Bool)

(declare-fun e!354444 () Bool)

(assert (=> b!586417 (= e!354452 e!354444)))

(declare-fun res!252619 () Bool)

(assert (=> b!586417 (=> (not res!252619) (not e!354444))))

(declare-datatypes ((C!3844 0))(
  ( (C!3845 (val!2148 Int)) )
))
(declare-datatypes ((List!5776 0))(
  ( (Nil!5766) (Cons!5766 (h!11167 C!3844) (t!78583 List!5776)) )
))
(declare-fun suffix!1342 () List!5776)

(declare-datatypes ((Regex!1461 0))(
  ( (ElementMatch!1461 (c!109611 C!3844)) (Concat!2612 (regOne!3434 Regex!1461) (regTwo!3434 Regex!1461)) (EmptyExpr!1461) (Star!1461 (reg!1790 Regex!1461)) (EmptyLang!1461) (Union!1461 (regOne!3435 Regex!1461) (regTwo!3435 Regex!1461)) )
))
(declare-datatypes ((List!5777 0))(
  ( (Nil!5767) (Cons!5767 (h!11168 (_ BitVec 16)) (t!78584 List!5777)) )
))
(declare-datatypes ((TokenValue!1151 0))(
  ( (FloatLiteralValue!2302 (text!8502 List!5777)) (TokenValueExt!1150 (__x!4200 Int)) (Broken!5755 (value!36960 List!5777)) (Object!1160) (End!1151) (Def!1151) (Underscore!1151) (Match!1151) (Else!1151) (Error!1151) (Case!1151) (If!1151) (Extends!1151) (Abstract!1151) (Class!1151) (Val!1151) (DelimiterValue!2302 (del!1211 List!5777)) (KeywordValue!1157 (value!36961 List!5777)) (CommentValue!2302 (value!36962 List!5777)) (WhitespaceValue!2302 (value!36963 List!5777)) (IndentationValue!1151 (value!36964 List!5777)) (String!7498) (Int32!1151) (Broken!5756 (value!36965 List!5777)) (Boolean!1152) (Unit!10472) (OperatorValue!1154 (op!1211 List!5777)) (IdentifierValue!2302 (value!36966 List!5777)) (IdentifierValue!2303 (value!36967 List!5777)) (WhitespaceValue!2303 (value!36968 List!5777)) (True!2302) (False!2302) (Broken!5757 (value!36969 List!5777)) (Broken!5758 (value!36970 List!5777)) (True!2303) (RightBrace!1151) (RightBracket!1151) (Colon!1151) (Null!1151) (Comma!1151) (LeftBracket!1151) (False!2303) (LeftBrace!1151) (ImaginaryLiteralValue!1151 (text!8503 List!5777)) (StringLiteralValue!3453 (value!36971 List!5777)) (EOFValue!1151 (value!36972 List!5777)) (IdentValue!1151 (value!36973 List!5777)) (DelimiterValue!2303 (value!36974 List!5777)) (DedentValue!1151 (value!36975 List!5777)) (NewLineValue!1151 (value!36976 List!5777)) (IntegerValue!3453 (value!36977 (_ BitVec 32)) (text!8504 List!5777)) (IntegerValue!3454 (value!36978 Int) (text!8505 List!5777)) (Times!1151) (Or!1151) (Equal!1151) (Minus!1151) (Broken!5759 (value!36979 List!5777)) (And!1151) (Div!1151) (LessEqual!1151) (Mod!1151) (Concat!2613) (Not!1151) (Plus!1151) (SpaceValue!1151 (value!36980 List!5777)) (IntegerValue!3455 (value!36981 Int) (text!8506 List!5777)) (StringLiteralValue!3454 (text!8507 List!5777)) (FloatLiteralValue!2303 (text!8508 List!5777)) (BytesLiteralValue!1151 (value!36982 List!5777)) (CommentValue!2303 (value!36983 List!5777)) (StringLiteralValue!3455 (value!36984 List!5777)) (ErrorTokenValue!1151 (msg!1212 List!5777)) )
))
(declare-datatypes ((String!7499 0))(
  ( (String!7500 (value!36985 String)) )
))
(declare-datatypes ((IArray!3689 0))(
  ( (IArray!3690 (innerList!1902 List!5776)) )
))
(declare-datatypes ((Conc!1844 0))(
  ( (Node!1844 (left!4700 Conc!1844) (right!5030 Conc!1844) (csize!3918 Int) (cheight!2055 Int)) (Leaf!2915 (xs!4481 IArray!3689) (csize!3919 Int)) (Empty!1844) )
))
(declare-datatypes ((BalanceConc!3696 0))(
  ( (BalanceConc!3697 (c!109612 Conc!1844)) )
))
(declare-datatypes ((TokenValueInjection!2070 0))(
  ( (TokenValueInjection!2071 (toValue!2006 Int) (toChars!1865 Int)) )
))
(declare-datatypes ((Rule!2054 0))(
  ( (Rule!2055 (regex!1127 Regex!1461) (tag!1389 String!7499) (isSeparator!1127 Bool) (transformation!1127 TokenValueInjection!2070)) )
))
(declare-datatypes ((Token!1990 0))(
  ( (Token!1991 (value!36986 TokenValue!1151) (rule!1891 Rule!2054) (size!4582 Int) (originalCharacters!1166 List!5776)) )
))
(declare-fun token!491 () Token!1990)

(declare-datatypes ((tuple2!6736 0))(
  ( (tuple2!6737 (_1!3632 Token!1990) (_2!3632 List!5776)) )
))
(declare-fun lt!248518 () tuple2!6736)

(assert (=> b!586417 (= res!252619 (and (= (_1!3632 lt!248518) token!491) (= (_2!3632 lt!248518) suffix!1342)))))

(declare-datatypes ((Option!1478 0))(
  ( (None!1477) (Some!1477 (v!16352 tuple2!6736)) )
))
(declare-fun lt!248511 () Option!1478)

(declare-fun get!2205 (Option!1478) tuple2!6736)

(assert (=> b!586417 (= lt!248518 (get!2205 lt!248511))))

(declare-fun b!586418 () Bool)

(declare-fun e!354447 () Bool)

(declare-fun tp_is_empty!3277 () Bool)

(declare-fun tp!182936 () Bool)

(assert (=> b!586418 (= e!354447 (and tp_is_empty!3277 tp!182936))))

(declare-fun e!354443 () Bool)

(declare-datatypes ((List!5778 0))(
  ( (Nil!5768) (Cons!5768 (h!11169 Rule!2054) (t!78585 List!5778)) )
))
(declare-fun rules!3103 () List!5778)

(declare-fun e!354448 () Bool)

(declare-fun tp!182931 () Bool)

(declare-fun b!586419 () Bool)

(declare-fun inv!7282 (String!7499) Bool)

(declare-fun inv!7285 (TokenValueInjection!2070) Bool)

(assert (=> b!586419 (= e!354448 (and tp!182931 (inv!7282 (tag!1389 (h!11169 rules!3103))) (inv!7285 (transformation!1127 (h!11169 rules!3103))) e!354443))))

(declare-fun b!586420 () Bool)

(declare-fun res!252627 () Bool)

(declare-fun e!354439 () Bool)

(assert (=> b!586420 (=> (not res!252627) (not e!354439))))

(declare-fun input!2705 () List!5776)

(declare-fun isEmpty!4163 (List!5776) Bool)

(assert (=> b!586420 (= res!252627 (not (isEmpty!4163 input!2705)))))

(declare-fun b!586421 () Bool)

(declare-fun e!354449 () Bool)

(assert (=> b!586421 (= e!354449 e!354452)))

(declare-fun res!252625 () Bool)

(assert (=> b!586421 (=> (not res!252625) (not e!354452))))

(declare-fun isDefined!1289 (Option!1478) Bool)

(assert (=> b!586421 (= res!252625 (isDefined!1289 lt!248511))))

(declare-fun lt!248514 () List!5776)

(declare-datatypes ((LexerInterface!1013 0))(
  ( (LexerInterfaceExt!1010 (__x!4201 Int)) (Lexer!1011) )
))
(declare-fun thiss!22590 () LexerInterface!1013)

(declare-fun maxPrefix!711 (LexerInterface!1013 List!5778 List!5776) Option!1478)

(assert (=> b!586421 (= lt!248511 (maxPrefix!711 thiss!22590 rules!3103 lt!248514))))

(declare-fun ++!1615 (List!5776 List!5776) List!5776)

(assert (=> b!586421 (= lt!248514 (++!1615 input!2705 suffix!1342))))

(assert (=> b!586422 (= e!354443 (and tp!182929 tp!182930))))

(declare-fun b!586423 () Bool)

(declare-fun tp!182937 () Bool)

(declare-fun e!354453 () Bool)

(declare-fun e!354440 () Bool)

(declare-fun inv!21 (TokenValue!1151) Bool)

(assert (=> b!586423 (= e!354440 (and (inv!21 (value!36986 token!491)) e!354453 tp!182937))))

(declare-fun tp!182935 () Bool)

(declare-fun b!586424 () Bool)

(assert (=> b!586424 (= e!354453 (and tp!182935 (inv!7282 (tag!1389 (rule!1891 token!491))) (inv!7285 (transformation!1127 (rule!1891 token!491))) e!354437))))

(declare-fun b!586425 () Bool)

(declare-fun res!252624 () Bool)

(declare-fun e!354441 () Bool)

(assert (=> b!586425 (=> (not res!252624) (not e!354441))))

(declare-fun lt!248508 () List!5776)

(assert (=> b!586425 (= res!252624 (= (++!1615 lt!248508 suffix!1342) lt!248514))))

(declare-fun b!586426 () Bool)

(declare-fun e!354445 () Bool)

(declare-fun tp!182933 () Bool)

(assert (=> b!586426 (= e!354445 (and tp_is_empty!3277 tp!182933))))

(declare-fun b!586427 () Bool)

(declare-datatypes ((Unit!10473 0))(
  ( (Unit!10474) )
))
(declare-fun e!354450 () Unit!10473)

(declare-fun Unit!10475 () Unit!10473)

(assert (=> b!586427 (= e!354450 Unit!10475)))

(declare-fun b!586428 () Bool)

(declare-fun res!252626 () Bool)

(declare-fun e!354442 () Bool)

(assert (=> b!586428 (=> res!252626 e!354442)))

(declare-fun lt!248516 () List!5776)

(assert (=> b!586428 (= res!252626 (not (= lt!248516 input!2705)))))

(declare-fun b!586429 () Bool)

(declare-fun res!252618 () Bool)

(assert (=> b!586429 (=> (not res!252618) (not e!354439))))

(declare-fun rulesInvariant!976 (LexerInterface!1013 List!5778) Bool)

(assert (=> b!586429 (= res!252618 (rulesInvariant!976 thiss!22590 rules!3103))))

(declare-fun b!586430 () Bool)

(declare-fun Unit!10476 () Unit!10473)

(assert (=> b!586430 (= e!354450 Unit!10476)))

(assert (=> b!586430 false))

(declare-fun b!586415 () Bool)

(declare-fun e!354436 () Bool)

(declare-fun tp!182938 () Bool)

(assert (=> b!586415 (= e!354436 (and e!354448 tp!182938))))

(declare-fun res!252620 () Bool)

(assert (=> start!54568 (=> (not res!252620) (not e!354439))))

(get-info :version)

(assert (=> start!54568 (= res!252620 ((_ is Lexer!1011) thiss!22590))))

(assert (=> start!54568 e!354439))

(assert (=> start!54568 e!354447))

(assert (=> start!54568 e!354436))

(declare-fun inv!7286 (Token!1990) Bool)

(assert (=> start!54568 (and (inv!7286 token!491) e!354440)))

(assert (=> start!54568 true))

(assert (=> start!54568 e!354445))

(declare-fun lt!248509 () List!5776)

(declare-fun lt!248513 () List!5776)

(declare-fun b!586431 () Bool)

(assert (=> b!586431 (= e!354442 (= (++!1615 lt!248509 lt!248513) input!2705))))

(declare-fun b!586432 () Bool)

(assert (=> b!586432 (= e!354444 e!354441)))

(declare-fun res!252622 () Bool)

(assert (=> b!586432 (=> (not res!252622) (not e!354441))))

(declare-fun lt!248517 () Option!1478)

(assert (=> b!586432 (= res!252622 ((_ is Some!1477) lt!248517))))

(assert (=> b!586432 (= lt!248517 (maxPrefix!711 thiss!22590 rules!3103 input!2705))))

(declare-fun b!586433 () Bool)

(declare-fun res!252623 () Bool)

(assert (=> b!586433 (=> (not res!252623) (not e!354439))))

(declare-fun isEmpty!4164 (List!5778) Bool)

(assert (=> b!586433 (= res!252623 (not (isEmpty!4164 rules!3103)))))

(declare-fun b!586434 () Bool)

(assert (=> b!586434 (= e!354439 e!354449)))

(declare-fun res!252621 () Bool)

(assert (=> b!586434 (=> (not res!252621) (not e!354449))))

(assert (=> b!586434 (= res!252621 (= lt!248508 input!2705))))

(declare-fun list!2406 (BalanceConc!3696) List!5776)

(declare-fun charsOf!756 (Token!1990) BalanceConc!3696)

(assert (=> b!586434 (= lt!248508 (list!2406 (charsOf!756 token!491)))))

(declare-fun b!586435 () Bool)

(assert (=> b!586435 (= e!354441 (not e!354442))))

(declare-fun res!252617 () Bool)

(assert (=> b!586435 (=> res!252617 e!354442)))

(declare-fun isPrefix!755 (List!5776 List!5776) Bool)

(assert (=> b!586435 (= res!252617 (not (isPrefix!755 lt!248509 input!2705)))))

(declare-fun getSuffix!272 (List!5776 List!5776) List!5776)

(assert (=> b!586435 (= lt!248513 (getSuffix!272 input!2705 lt!248509))))

(assert (=> b!586435 (isPrefix!755 lt!248509 lt!248516)))

(assert (=> b!586435 (= lt!248516 (++!1615 lt!248509 (_2!3632 (v!16352 lt!248517))))))

(declare-fun lt!248510 () Unit!10473)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!600 (List!5776 List!5776) Unit!10473)

(assert (=> b!586435 (= lt!248510 (lemmaConcatTwoListThenFirstIsPrefix!600 lt!248509 (_2!3632 (v!16352 lt!248517))))))

(declare-fun lt!248515 () Unit!10473)

(declare-fun lemmaCharactersSize!186 (Token!1990) Unit!10473)

(assert (=> b!586435 (= lt!248515 (lemmaCharactersSize!186 token!491))))

(declare-fun lt!248507 () Unit!10473)

(assert (=> b!586435 (= lt!248507 (lemmaCharactersSize!186 (_1!3632 (v!16352 lt!248517))))))

(declare-fun lt!248512 () Unit!10473)

(assert (=> b!586435 (= lt!248512 e!354450)))

(declare-fun c!109610 () Bool)

(declare-fun size!4583 (List!5776) Int)

(assert (=> b!586435 (= c!109610 (> (size!4583 lt!248509) (size!4583 lt!248508)))))

(assert (=> b!586435 (= lt!248509 (list!2406 (charsOf!756 (_1!3632 (v!16352 lt!248517)))))))

(assert (=> b!586435 (= lt!248517 (Some!1477 (v!16352 lt!248517)))))

(declare-fun lt!248506 () Unit!10473)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!200 (List!5776 List!5776 List!5776 List!5776) Unit!10473)

(assert (=> b!586435 (= lt!248506 (lemmaConcatSameAndSameSizesThenSameLists!200 lt!248508 suffix!1342 input!2705 suffix!1342))))

(assert (= (and start!54568 res!252620) b!586433))

(assert (= (and b!586433 res!252623) b!586429))

(assert (= (and b!586429 res!252618) b!586420))

(assert (= (and b!586420 res!252627) b!586434))

(assert (= (and b!586434 res!252621) b!586421))

(assert (= (and b!586421 res!252625) b!586417))

(assert (= (and b!586417 res!252619) b!586432))

(assert (= (and b!586432 res!252622) b!586425))

(assert (= (and b!586425 res!252624) b!586435))

(assert (= (and b!586435 c!109610) b!586430))

(assert (= (and b!586435 (not c!109610)) b!586427))

(assert (= (and b!586435 (not res!252617)) b!586428))

(assert (= (and b!586428 (not res!252626)) b!586431))

(assert (= (and start!54568 ((_ is Cons!5766) suffix!1342)) b!586418))

(assert (= b!586419 b!586422))

(assert (= b!586415 b!586419))

(assert (= (and start!54568 ((_ is Cons!5768) rules!3103)) b!586415))

(assert (= b!586424 b!586416))

(assert (= b!586423 b!586424))

(assert (= start!54568 b!586423))

(assert (= (and start!54568 ((_ is Cons!5766) input!2705)) b!586426))

(declare-fun m!846585 () Bool)

(assert (=> b!586434 m!846585))

(assert (=> b!586434 m!846585))

(declare-fun m!846587 () Bool)

(assert (=> b!586434 m!846587))

(declare-fun m!846589 () Bool)

(assert (=> b!586435 m!846589))

(declare-fun m!846591 () Bool)

(assert (=> b!586435 m!846591))

(declare-fun m!846593 () Bool)

(assert (=> b!586435 m!846593))

(declare-fun m!846595 () Bool)

(assert (=> b!586435 m!846595))

(declare-fun m!846597 () Bool)

(assert (=> b!586435 m!846597))

(declare-fun m!846599 () Bool)

(assert (=> b!586435 m!846599))

(declare-fun m!846601 () Bool)

(assert (=> b!586435 m!846601))

(declare-fun m!846603 () Bool)

(assert (=> b!586435 m!846603))

(declare-fun m!846605 () Bool)

(assert (=> b!586435 m!846605))

(declare-fun m!846607 () Bool)

(assert (=> b!586435 m!846607))

(declare-fun m!846609 () Bool)

(assert (=> b!586435 m!846609))

(assert (=> b!586435 m!846589))

(declare-fun m!846611 () Bool)

(assert (=> b!586435 m!846611))

(declare-fun m!846613 () Bool)

(assert (=> b!586419 m!846613))

(declare-fun m!846615 () Bool)

(assert (=> b!586419 m!846615))

(declare-fun m!846617 () Bool)

(assert (=> b!586429 m!846617))

(declare-fun m!846619 () Bool)

(assert (=> b!586420 m!846619))

(declare-fun m!846621 () Bool)

(assert (=> b!586424 m!846621))

(declare-fun m!846623 () Bool)

(assert (=> b!586424 m!846623))

(declare-fun m!846625 () Bool)

(assert (=> b!586421 m!846625))

(declare-fun m!846627 () Bool)

(assert (=> b!586421 m!846627))

(declare-fun m!846629 () Bool)

(assert (=> b!586421 m!846629))

(declare-fun m!846631 () Bool)

(assert (=> b!586433 m!846631))

(declare-fun m!846633 () Bool)

(assert (=> b!586432 m!846633))

(declare-fun m!846635 () Bool)

(assert (=> b!586417 m!846635))

(declare-fun m!846637 () Bool)

(assert (=> start!54568 m!846637))

(declare-fun m!846639 () Bool)

(assert (=> b!586423 m!846639))

(declare-fun m!846641 () Bool)

(assert (=> b!586425 m!846641))

(declare-fun m!846643 () Bool)

(assert (=> b!586431 m!846643))

(check-sat b_and!57769 b_and!57765 (not b!586421) (not b_next!16385) (not b!586418) b_and!57763 (not b_next!16383) (not b!586417) (not b!586433) b_and!57767 (not b!586424) (not start!54568) (not b!586426) (not b!586423) (not b!586429) (not b!586432) (not b!586425) (not b_next!16381) (not b!586419) (not b!586434) (not b!586431) (not b!586420) (not b_next!16387) (not b!586435) tp_is_empty!3277 (not b!586415))
(check-sat b_and!57769 b_and!57765 (not b_next!16385) (not b_next!16381) b_and!57763 (not b_next!16383) b_and!57767 (not b_next!16387))
(get-model)

(declare-fun d!206283 () Bool)

(declare-fun e!354458 () Bool)

(assert (=> d!206283 e!354458))

(declare-fun res!252636 () Bool)

(assert (=> d!206283 (=> (not res!252636) (not e!354458))))

(declare-fun lt!248521 () List!5776)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1029 (List!5776) (InoxSet C!3844))

(assert (=> d!206283 (= res!252636 (= (content!1029 lt!248521) ((_ map or) (content!1029 lt!248508) (content!1029 suffix!1342))))))

(declare-fun e!354459 () List!5776)

(assert (=> d!206283 (= lt!248521 e!354459)))

(declare-fun c!109615 () Bool)

(assert (=> d!206283 (= c!109615 ((_ is Nil!5766) lt!248508))))

(assert (=> d!206283 (= (++!1615 lt!248508 suffix!1342) lt!248521)))

(declare-fun b!586445 () Bool)

(assert (=> b!586445 (= e!354459 (Cons!5766 (h!11167 lt!248508) (++!1615 (t!78583 lt!248508) suffix!1342)))))

(declare-fun b!586446 () Bool)

(declare-fun res!252637 () Bool)

(assert (=> b!586446 (=> (not res!252637) (not e!354458))))

(assert (=> b!586446 (= res!252637 (= (size!4583 lt!248521) (+ (size!4583 lt!248508) (size!4583 suffix!1342))))))

(declare-fun b!586447 () Bool)

(assert (=> b!586447 (= e!354458 (or (not (= suffix!1342 Nil!5766)) (= lt!248521 lt!248508)))))

(declare-fun b!586444 () Bool)

(assert (=> b!586444 (= e!354459 suffix!1342)))

(assert (= (and d!206283 c!109615) b!586444))

(assert (= (and d!206283 (not c!109615)) b!586445))

(assert (= (and d!206283 res!252636) b!586446))

(assert (= (and b!586446 res!252637) b!586447))

(declare-fun m!846645 () Bool)

(assert (=> d!206283 m!846645))

(declare-fun m!846647 () Bool)

(assert (=> d!206283 m!846647))

(declare-fun m!846649 () Bool)

(assert (=> d!206283 m!846649))

(declare-fun m!846651 () Bool)

(assert (=> b!586445 m!846651))

(declare-fun m!846653 () Bool)

(assert (=> b!586446 m!846653))

(assert (=> b!586446 m!846599))

(declare-fun m!846655 () Bool)

(assert (=> b!586446 m!846655))

(assert (=> b!586425 d!206283))

(declare-fun d!206285 () Bool)

(assert (=> d!206285 (= (get!2205 lt!248511) (v!16352 lt!248511))))

(assert (=> b!586417 d!206285))

(declare-fun d!206287 () Bool)

(assert (=> d!206287 (= (inv!7282 (tag!1389 (h!11169 rules!3103))) (= (mod (str.len (value!36985 (tag!1389 (h!11169 rules!3103)))) 2) 0))))

(assert (=> b!586419 d!206287))

(declare-fun d!206289 () Bool)

(declare-fun res!252643 () Bool)

(declare-fun e!354462 () Bool)

(assert (=> d!206289 (=> (not res!252643) (not e!354462))))

(declare-fun semiInverseModEq!439 (Int Int) Bool)

(assert (=> d!206289 (= res!252643 (semiInverseModEq!439 (toChars!1865 (transformation!1127 (h!11169 rules!3103))) (toValue!2006 (transformation!1127 (h!11169 rules!3103)))))))

(assert (=> d!206289 (= (inv!7285 (transformation!1127 (h!11169 rules!3103))) e!354462)))

(declare-fun b!586450 () Bool)

(declare-fun equivClasses!422 (Int Int) Bool)

(assert (=> b!586450 (= e!354462 (equivClasses!422 (toChars!1865 (transformation!1127 (h!11169 rules!3103))) (toValue!2006 (transformation!1127 (h!11169 rules!3103)))))))

(assert (= (and d!206289 res!252643) b!586450))

(declare-fun m!846657 () Bool)

(assert (=> d!206289 m!846657))

(declare-fun m!846659 () Bool)

(assert (=> b!586450 m!846659))

(assert (=> b!586419 d!206289))

(declare-fun d!206295 () Bool)

(declare-fun res!252649 () Bool)

(declare-fun e!354468 () Bool)

(assert (=> d!206295 (=> (not res!252649) (not e!354468))))

(declare-fun rulesValid!403 (LexerInterface!1013 List!5778) Bool)

(assert (=> d!206295 (= res!252649 (rulesValid!403 thiss!22590 rules!3103))))

(assert (=> d!206295 (= (rulesInvariant!976 thiss!22590 rules!3103) e!354468)))

(declare-fun b!586456 () Bool)

(declare-datatypes ((List!5780 0))(
  ( (Nil!5770) (Cons!5770 (h!11171 String!7499) (t!78611 List!5780)) )
))
(declare-fun noDuplicateTag!403 (LexerInterface!1013 List!5778 List!5780) Bool)

(assert (=> b!586456 (= e!354468 (noDuplicateTag!403 thiss!22590 rules!3103 Nil!5770))))

(assert (= (and d!206295 res!252649) b!586456))

(declare-fun m!846665 () Bool)

(assert (=> d!206295 m!846665))

(declare-fun m!846667 () Bool)

(assert (=> b!586456 m!846667))

(assert (=> b!586429 d!206295))

(declare-fun d!206299 () Bool)

(declare-fun e!354469 () Bool)

(assert (=> d!206299 e!354469))

(declare-fun res!252650 () Bool)

(assert (=> d!206299 (=> (not res!252650) (not e!354469))))

(declare-fun lt!248522 () List!5776)

(assert (=> d!206299 (= res!252650 (= (content!1029 lt!248522) ((_ map or) (content!1029 lt!248509) (content!1029 lt!248513))))))

(declare-fun e!354470 () List!5776)

(assert (=> d!206299 (= lt!248522 e!354470)))

(declare-fun c!109616 () Bool)

(assert (=> d!206299 (= c!109616 ((_ is Nil!5766) lt!248509))))

(assert (=> d!206299 (= (++!1615 lt!248509 lt!248513) lt!248522)))

(declare-fun b!586458 () Bool)

(assert (=> b!586458 (= e!354470 (Cons!5766 (h!11167 lt!248509) (++!1615 (t!78583 lt!248509) lt!248513)))))

(declare-fun b!586459 () Bool)

(declare-fun res!252651 () Bool)

(assert (=> b!586459 (=> (not res!252651) (not e!354469))))

(assert (=> b!586459 (= res!252651 (= (size!4583 lt!248522) (+ (size!4583 lt!248509) (size!4583 lt!248513))))))

(declare-fun b!586460 () Bool)

(assert (=> b!586460 (= e!354469 (or (not (= lt!248513 Nil!5766)) (= lt!248522 lt!248509)))))

(declare-fun b!586457 () Bool)

(assert (=> b!586457 (= e!354470 lt!248513)))

(assert (= (and d!206299 c!109616) b!586457))

(assert (= (and d!206299 (not c!109616)) b!586458))

(assert (= (and d!206299 res!252650) b!586459))

(assert (= (and b!586459 res!252651) b!586460))

(declare-fun m!846669 () Bool)

(assert (=> d!206299 m!846669))

(declare-fun m!846671 () Bool)

(assert (=> d!206299 m!846671))

(declare-fun m!846673 () Bool)

(assert (=> d!206299 m!846673))

(declare-fun m!846675 () Bool)

(assert (=> b!586458 m!846675))

(declare-fun m!846677 () Bool)

(assert (=> b!586459 m!846677))

(assert (=> b!586459 m!846593))

(declare-fun m!846679 () Bool)

(assert (=> b!586459 m!846679))

(assert (=> b!586431 d!206299))

(declare-fun d!206301 () Bool)

(assert (=> d!206301 (= (isEmpty!4163 input!2705) ((_ is Nil!5766) input!2705))))

(assert (=> b!586420 d!206301))

(declare-fun b!586540 () Bool)

(declare-fun e!354515 () Option!1478)

(declare-fun call!40220 () Option!1478)

(assert (=> b!586540 (= e!354515 call!40220)))

(declare-fun b!586541 () Bool)

(declare-fun res!252703 () Bool)

(declare-fun e!354516 () Bool)

(assert (=> b!586541 (=> (not res!252703) (not e!354516))))

(declare-fun lt!248558 () Option!1478)

(declare-fun matchR!599 (Regex!1461 List!5776) Bool)

(assert (=> b!586541 (= res!252703 (matchR!599 (regex!1127 (rule!1891 (_1!3632 (get!2205 lt!248558)))) (list!2406 (charsOf!756 (_1!3632 (get!2205 lt!248558))))))))

(declare-fun d!206303 () Bool)

(declare-fun e!354514 () Bool)

(assert (=> d!206303 e!354514))

(declare-fun res!252700 () Bool)

(assert (=> d!206303 (=> res!252700 e!354514)))

(declare-fun isEmpty!4165 (Option!1478) Bool)

(assert (=> d!206303 (= res!252700 (isEmpty!4165 lt!248558))))

(assert (=> d!206303 (= lt!248558 e!354515)))

(declare-fun c!109630 () Bool)

(assert (=> d!206303 (= c!109630 (and ((_ is Cons!5768) rules!3103) ((_ is Nil!5768) (t!78585 rules!3103))))))

(declare-fun lt!248560 () Unit!10473)

(declare-fun lt!248559 () Unit!10473)

(assert (=> d!206303 (= lt!248560 lt!248559)))

(assert (=> d!206303 (isPrefix!755 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!490 (List!5776 List!5776) Unit!10473)

(assert (=> d!206303 (= lt!248559 (lemmaIsPrefixRefl!490 input!2705 input!2705))))

(declare-fun rulesValidInductive!407 (LexerInterface!1013 List!5778) Bool)

(assert (=> d!206303 (rulesValidInductive!407 thiss!22590 rules!3103)))

(assert (=> d!206303 (= (maxPrefix!711 thiss!22590 rules!3103 input!2705) lt!248558)))

(declare-fun b!586542 () Bool)

(assert (=> b!586542 (= e!354514 e!354516)))

(declare-fun res!252704 () Bool)

(assert (=> b!586542 (=> (not res!252704) (not e!354516))))

(assert (=> b!586542 (= res!252704 (isDefined!1289 lt!248558))))

(declare-fun b!586543 () Bool)

(declare-fun res!252701 () Bool)

(assert (=> b!586543 (=> (not res!252701) (not e!354516))))

(assert (=> b!586543 (= res!252701 (= (list!2406 (charsOf!756 (_1!3632 (get!2205 lt!248558)))) (originalCharacters!1166 (_1!3632 (get!2205 lt!248558)))))))

(declare-fun b!586544 () Bool)

(declare-fun res!252699 () Bool)

(assert (=> b!586544 (=> (not res!252699) (not e!354516))))

(assert (=> b!586544 (= res!252699 (< (size!4583 (_2!3632 (get!2205 lt!248558))) (size!4583 input!2705)))))

(declare-fun b!586545 () Bool)

(declare-fun res!252705 () Bool)

(assert (=> b!586545 (=> (not res!252705) (not e!354516))))

(assert (=> b!586545 (= res!252705 (= (++!1615 (list!2406 (charsOf!756 (_1!3632 (get!2205 lt!248558)))) (_2!3632 (get!2205 lt!248558))) input!2705))))

(declare-fun b!586546 () Bool)

(declare-fun res!252702 () Bool)

(assert (=> b!586546 (=> (not res!252702) (not e!354516))))

(declare-fun apply!1383 (TokenValueInjection!2070 BalanceConc!3696) TokenValue!1151)

(declare-fun seqFromList!1306 (List!5776) BalanceConc!3696)

(assert (=> b!586546 (= res!252702 (= (value!36986 (_1!3632 (get!2205 lt!248558))) (apply!1383 (transformation!1127 (rule!1891 (_1!3632 (get!2205 lt!248558)))) (seqFromList!1306 (originalCharacters!1166 (_1!3632 (get!2205 lt!248558)))))))))

(declare-fun b!586547 () Bool)

(declare-fun contains!1358 (List!5778 Rule!2054) Bool)

(assert (=> b!586547 (= e!354516 (contains!1358 rules!3103 (rule!1891 (_1!3632 (get!2205 lt!248558)))))))

(declare-fun bm!40215 () Bool)

(declare-fun maxPrefixOneRule!404 (LexerInterface!1013 Rule!2054 List!5776) Option!1478)

(assert (=> bm!40215 (= call!40220 (maxPrefixOneRule!404 thiss!22590 (h!11169 rules!3103) input!2705))))

(declare-fun b!586548 () Bool)

(declare-fun lt!248561 () Option!1478)

(declare-fun lt!248562 () Option!1478)

(assert (=> b!586548 (= e!354515 (ite (and ((_ is None!1477) lt!248561) ((_ is None!1477) lt!248562)) None!1477 (ite ((_ is None!1477) lt!248562) lt!248561 (ite ((_ is None!1477) lt!248561) lt!248562 (ite (>= (size!4582 (_1!3632 (v!16352 lt!248561))) (size!4582 (_1!3632 (v!16352 lt!248562)))) lt!248561 lt!248562)))))))

(assert (=> b!586548 (= lt!248561 call!40220)))

(assert (=> b!586548 (= lt!248562 (maxPrefix!711 thiss!22590 (t!78585 rules!3103) input!2705))))

(assert (= (and d!206303 c!109630) b!586540))

(assert (= (and d!206303 (not c!109630)) b!586548))

(assert (= (or b!586540 b!586548) bm!40215))

(assert (= (and d!206303 (not res!252700)) b!586542))

(assert (= (and b!586542 res!252704) b!586543))

(assert (= (and b!586543 res!252701) b!586544))

(assert (= (and b!586544 res!252699) b!586545))

(assert (= (and b!586545 res!252705) b!586546))

(assert (= (and b!586546 res!252702) b!586541))

(assert (= (and b!586541 res!252703) b!586547))

(declare-fun m!846769 () Bool)

(assert (=> b!586541 m!846769))

(declare-fun m!846771 () Bool)

(assert (=> b!586541 m!846771))

(assert (=> b!586541 m!846771))

(declare-fun m!846773 () Bool)

(assert (=> b!586541 m!846773))

(assert (=> b!586541 m!846773))

(declare-fun m!846775 () Bool)

(assert (=> b!586541 m!846775))

(declare-fun m!846777 () Bool)

(assert (=> b!586542 m!846777))

(assert (=> b!586545 m!846769))

(assert (=> b!586545 m!846771))

(assert (=> b!586545 m!846771))

(assert (=> b!586545 m!846773))

(assert (=> b!586545 m!846773))

(declare-fun m!846779 () Bool)

(assert (=> b!586545 m!846779))

(assert (=> b!586543 m!846769))

(assert (=> b!586543 m!846771))

(assert (=> b!586543 m!846771))

(assert (=> b!586543 m!846773))

(declare-fun m!846781 () Bool)

(assert (=> bm!40215 m!846781))

(assert (=> b!586546 m!846769))

(declare-fun m!846783 () Bool)

(assert (=> b!586546 m!846783))

(assert (=> b!586546 m!846783))

(declare-fun m!846785 () Bool)

(assert (=> b!586546 m!846785))

(declare-fun m!846787 () Bool)

(assert (=> b!586548 m!846787))

(assert (=> b!586544 m!846769))

(declare-fun m!846789 () Bool)

(assert (=> b!586544 m!846789))

(declare-fun m!846791 () Bool)

(assert (=> b!586544 m!846791))

(declare-fun m!846793 () Bool)

(assert (=> d!206303 m!846793))

(declare-fun m!846795 () Bool)

(assert (=> d!206303 m!846795))

(declare-fun m!846797 () Bool)

(assert (=> d!206303 m!846797))

(declare-fun m!846799 () Bool)

(assert (=> d!206303 m!846799))

(assert (=> b!586547 m!846769))

(declare-fun m!846801 () Bool)

(assert (=> b!586547 m!846801))

(assert (=> b!586432 d!206303))

(declare-fun d!206343 () Bool)

(assert (=> d!206343 (= (isDefined!1289 lt!248511) (not (isEmpty!4165 lt!248511)))))

(declare-fun bs!70080 () Bool)

(assert (= bs!70080 d!206343))

(declare-fun m!846803 () Bool)

(assert (=> bs!70080 m!846803))

(assert (=> b!586421 d!206343))

(declare-fun b!586549 () Bool)

(declare-fun e!354518 () Option!1478)

(declare-fun call!40221 () Option!1478)

(assert (=> b!586549 (= e!354518 call!40221)))

(declare-fun b!586550 () Bool)

(declare-fun res!252710 () Bool)

(declare-fun e!354519 () Bool)

(assert (=> b!586550 (=> (not res!252710) (not e!354519))))

(declare-fun lt!248563 () Option!1478)

(assert (=> b!586550 (= res!252710 (matchR!599 (regex!1127 (rule!1891 (_1!3632 (get!2205 lt!248563)))) (list!2406 (charsOf!756 (_1!3632 (get!2205 lt!248563))))))))

(declare-fun d!206345 () Bool)

(declare-fun e!354517 () Bool)

(assert (=> d!206345 e!354517))

(declare-fun res!252707 () Bool)

(assert (=> d!206345 (=> res!252707 e!354517)))

(assert (=> d!206345 (= res!252707 (isEmpty!4165 lt!248563))))

(assert (=> d!206345 (= lt!248563 e!354518)))

(declare-fun c!109631 () Bool)

(assert (=> d!206345 (= c!109631 (and ((_ is Cons!5768) rules!3103) ((_ is Nil!5768) (t!78585 rules!3103))))))

(declare-fun lt!248565 () Unit!10473)

(declare-fun lt!248564 () Unit!10473)

(assert (=> d!206345 (= lt!248565 lt!248564)))

(assert (=> d!206345 (isPrefix!755 lt!248514 lt!248514)))

(assert (=> d!206345 (= lt!248564 (lemmaIsPrefixRefl!490 lt!248514 lt!248514))))

(assert (=> d!206345 (rulesValidInductive!407 thiss!22590 rules!3103)))

(assert (=> d!206345 (= (maxPrefix!711 thiss!22590 rules!3103 lt!248514) lt!248563)))

(declare-fun b!586551 () Bool)

(assert (=> b!586551 (= e!354517 e!354519)))

(declare-fun res!252711 () Bool)

(assert (=> b!586551 (=> (not res!252711) (not e!354519))))

(assert (=> b!586551 (= res!252711 (isDefined!1289 lt!248563))))

(declare-fun b!586552 () Bool)

(declare-fun res!252708 () Bool)

(assert (=> b!586552 (=> (not res!252708) (not e!354519))))

(assert (=> b!586552 (= res!252708 (= (list!2406 (charsOf!756 (_1!3632 (get!2205 lt!248563)))) (originalCharacters!1166 (_1!3632 (get!2205 lt!248563)))))))

(declare-fun b!586553 () Bool)

(declare-fun res!252706 () Bool)

(assert (=> b!586553 (=> (not res!252706) (not e!354519))))

(assert (=> b!586553 (= res!252706 (< (size!4583 (_2!3632 (get!2205 lt!248563))) (size!4583 lt!248514)))))

(declare-fun b!586554 () Bool)

(declare-fun res!252712 () Bool)

(assert (=> b!586554 (=> (not res!252712) (not e!354519))))

(assert (=> b!586554 (= res!252712 (= (++!1615 (list!2406 (charsOf!756 (_1!3632 (get!2205 lt!248563)))) (_2!3632 (get!2205 lt!248563))) lt!248514))))

(declare-fun b!586555 () Bool)

(declare-fun res!252709 () Bool)

(assert (=> b!586555 (=> (not res!252709) (not e!354519))))

(assert (=> b!586555 (= res!252709 (= (value!36986 (_1!3632 (get!2205 lt!248563))) (apply!1383 (transformation!1127 (rule!1891 (_1!3632 (get!2205 lt!248563)))) (seqFromList!1306 (originalCharacters!1166 (_1!3632 (get!2205 lt!248563)))))))))

(declare-fun b!586556 () Bool)

(assert (=> b!586556 (= e!354519 (contains!1358 rules!3103 (rule!1891 (_1!3632 (get!2205 lt!248563)))))))

(declare-fun bm!40216 () Bool)

(assert (=> bm!40216 (= call!40221 (maxPrefixOneRule!404 thiss!22590 (h!11169 rules!3103) lt!248514))))

(declare-fun b!586557 () Bool)

(declare-fun lt!248566 () Option!1478)

(declare-fun lt!248567 () Option!1478)

(assert (=> b!586557 (= e!354518 (ite (and ((_ is None!1477) lt!248566) ((_ is None!1477) lt!248567)) None!1477 (ite ((_ is None!1477) lt!248567) lt!248566 (ite ((_ is None!1477) lt!248566) lt!248567 (ite (>= (size!4582 (_1!3632 (v!16352 lt!248566))) (size!4582 (_1!3632 (v!16352 lt!248567)))) lt!248566 lt!248567)))))))

(assert (=> b!586557 (= lt!248566 call!40221)))

(assert (=> b!586557 (= lt!248567 (maxPrefix!711 thiss!22590 (t!78585 rules!3103) lt!248514))))

(assert (= (and d!206345 c!109631) b!586549))

(assert (= (and d!206345 (not c!109631)) b!586557))

(assert (= (or b!586549 b!586557) bm!40216))

(assert (= (and d!206345 (not res!252707)) b!586551))

(assert (= (and b!586551 res!252711) b!586552))

(assert (= (and b!586552 res!252708) b!586553))

(assert (= (and b!586553 res!252706) b!586554))

(assert (= (and b!586554 res!252712) b!586555))

(assert (= (and b!586555 res!252709) b!586550))

(assert (= (and b!586550 res!252710) b!586556))

(declare-fun m!846805 () Bool)

(assert (=> b!586550 m!846805))

(declare-fun m!846807 () Bool)

(assert (=> b!586550 m!846807))

(assert (=> b!586550 m!846807))

(declare-fun m!846809 () Bool)

(assert (=> b!586550 m!846809))

(assert (=> b!586550 m!846809))

(declare-fun m!846811 () Bool)

(assert (=> b!586550 m!846811))

(declare-fun m!846813 () Bool)

(assert (=> b!586551 m!846813))

(assert (=> b!586554 m!846805))

(assert (=> b!586554 m!846807))

(assert (=> b!586554 m!846807))

(assert (=> b!586554 m!846809))

(assert (=> b!586554 m!846809))

(declare-fun m!846815 () Bool)

(assert (=> b!586554 m!846815))

(assert (=> b!586552 m!846805))

(assert (=> b!586552 m!846807))

(assert (=> b!586552 m!846807))

(assert (=> b!586552 m!846809))

(declare-fun m!846817 () Bool)

(assert (=> bm!40216 m!846817))

(assert (=> b!586555 m!846805))

(declare-fun m!846819 () Bool)

(assert (=> b!586555 m!846819))

(assert (=> b!586555 m!846819))

(declare-fun m!846821 () Bool)

(assert (=> b!586555 m!846821))

(declare-fun m!846823 () Bool)

(assert (=> b!586557 m!846823))

(assert (=> b!586553 m!846805))

(declare-fun m!846825 () Bool)

(assert (=> b!586553 m!846825))

(declare-fun m!846827 () Bool)

(assert (=> b!586553 m!846827))

(declare-fun m!846829 () Bool)

(assert (=> d!206345 m!846829))

(declare-fun m!846831 () Bool)

(assert (=> d!206345 m!846831))

(declare-fun m!846833 () Bool)

(assert (=> d!206345 m!846833))

(assert (=> d!206345 m!846799))

(assert (=> b!586556 m!846805))

(declare-fun m!846835 () Bool)

(assert (=> b!586556 m!846835))

(assert (=> b!586421 d!206345))

(declare-fun d!206347 () Bool)

(declare-fun e!354522 () Bool)

(assert (=> d!206347 e!354522))

(declare-fun res!252713 () Bool)

(assert (=> d!206347 (=> (not res!252713) (not e!354522))))

(declare-fun lt!248578 () List!5776)

(assert (=> d!206347 (= res!252713 (= (content!1029 lt!248578) ((_ map or) (content!1029 input!2705) (content!1029 suffix!1342))))))

(declare-fun e!354523 () List!5776)

(assert (=> d!206347 (= lt!248578 e!354523)))

(declare-fun c!109634 () Bool)

(assert (=> d!206347 (= c!109634 ((_ is Nil!5766) input!2705))))

(assert (=> d!206347 (= (++!1615 input!2705 suffix!1342) lt!248578)))

(declare-fun b!586563 () Bool)

(assert (=> b!586563 (= e!354523 (Cons!5766 (h!11167 input!2705) (++!1615 (t!78583 input!2705) suffix!1342)))))

(declare-fun b!586564 () Bool)

(declare-fun res!252714 () Bool)

(assert (=> b!586564 (=> (not res!252714) (not e!354522))))

(assert (=> b!586564 (= res!252714 (= (size!4583 lt!248578) (+ (size!4583 input!2705) (size!4583 suffix!1342))))))

(declare-fun b!586565 () Bool)

(assert (=> b!586565 (= e!354522 (or (not (= suffix!1342 Nil!5766)) (= lt!248578 input!2705)))))

(declare-fun b!586562 () Bool)

(assert (=> b!586562 (= e!354523 suffix!1342)))

(assert (= (and d!206347 c!109634) b!586562))

(assert (= (and d!206347 (not c!109634)) b!586563))

(assert (= (and d!206347 res!252713) b!586564))

(assert (= (and b!586564 res!252714) b!586565))

(declare-fun m!846837 () Bool)

(assert (=> d!206347 m!846837))

(declare-fun m!846839 () Bool)

(assert (=> d!206347 m!846839))

(assert (=> d!206347 m!846649))

(declare-fun m!846841 () Bool)

(assert (=> b!586563 m!846841))

(declare-fun m!846843 () Bool)

(assert (=> b!586564 m!846843))

(assert (=> b!586564 m!846791))

(assert (=> b!586564 m!846655))

(assert (=> b!586421 d!206347))

(declare-fun b!586599 () Bool)

(declare-fun e!354538 () Bool)

(declare-fun inv!16 (TokenValue!1151) Bool)

(assert (=> b!586599 (= e!354538 (inv!16 (value!36986 token!491)))))

(declare-fun b!586600 () Bool)

(declare-fun e!354539 () Bool)

(declare-fun inv!17 (TokenValue!1151) Bool)

(assert (=> b!586600 (= e!354539 (inv!17 (value!36986 token!491)))))

(declare-fun b!586602 () Bool)

(declare-fun e!354537 () Bool)

(declare-fun inv!15 (TokenValue!1151) Bool)

(assert (=> b!586602 (= e!354537 (inv!15 (value!36986 token!491)))))

(declare-fun b!586603 () Bool)

(assert (=> b!586603 (= e!354538 e!354539)))

(declare-fun c!109640 () Bool)

(assert (=> b!586603 (= c!109640 ((_ is IntegerValue!3454) (value!36986 token!491)))))

(declare-fun b!586601 () Bool)

(declare-fun res!252738 () Bool)

(assert (=> b!586601 (=> res!252738 e!354537)))

(assert (=> b!586601 (= res!252738 (not ((_ is IntegerValue!3455) (value!36986 token!491))))))

(assert (=> b!586601 (= e!354539 e!354537)))

(declare-fun d!206349 () Bool)

(declare-fun c!109641 () Bool)

(assert (=> d!206349 (= c!109641 ((_ is IntegerValue!3453) (value!36986 token!491)))))

(assert (=> d!206349 (= (inv!21 (value!36986 token!491)) e!354538)))

(assert (= (and d!206349 c!109641) b!586599))

(assert (= (and d!206349 (not c!109641)) b!586603))

(assert (= (and b!586603 c!109640) b!586600))

(assert (= (and b!586603 (not c!109640)) b!586601))

(assert (= (and b!586601 (not res!252738)) b!586602))

(declare-fun m!846845 () Bool)

(assert (=> b!586599 m!846845))

(declare-fun m!846847 () Bool)

(assert (=> b!586600 m!846847))

(declare-fun m!846849 () Bool)

(assert (=> b!586602 m!846849))

(assert (=> b!586423 d!206349))

(declare-fun d!206351 () Bool)

(assert (=> d!206351 (= (isEmpty!4164 rules!3103) ((_ is Nil!5768) rules!3103))))

(assert (=> b!586433 d!206351))

(declare-fun d!206353 () Bool)

(declare-fun e!354540 () Bool)

(assert (=> d!206353 e!354540))

(declare-fun res!252739 () Bool)

(assert (=> d!206353 (=> (not res!252739) (not e!354540))))

(declare-fun lt!248584 () List!5776)

(assert (=> d!206353 (= res!252739 (= (content!1029 lt!248584) ((_ map or) (content!1029 lt!248509) (content!1029 (_2!3632 (v!16352 lt!248517))))))))

(declare-fun e!354541 () List!5776)

(assert (=> d!206353 (= lt!248584 e!354541)))

(declare-fun c!109642 () Bool)

(assert (=> d!206353 (= c!109642 ((_ is Nil!5766) lt!248509))))

(assert (=> d!206353 (= (++!1615 lt!248509 (_2!3632 (v!16352 lt!248517))) lt!248584)))

(declare-fun b!586605 () Bool)

(assert (=> b!586605 (= e!354541 (Cons!5766 (h!11167 lt!248509) (++!1615 (t!78583 lt!248509) (_2!3632 (v!16352 lt!248517)))))))

(declare-fun b!586606 () Bool)

(declare-fun res!252740 () Bool)

(assert (=> b!586606 (=> (not res!252740) (not e!354540))))

(assert (=> b!586606 (= res!252740 (= (size!4583 lt!248584) (+ (size!4583 lt!248509) (size!4583 (_2!3632 (v!16352 lt!248517))))))))

(declare-fun b!586607 () Bool)

(assert (=> b!586607 (= e!354540 (or (not (= (_2!3632 (v!16352 lt!248517)) Nil!5766)) (= lt!248584 lt!248509)))))

(declare-fun b!586604 () Bool)

(assert (=> b!586604 (= e!354541 (_2!3632 (v!16352 lt!248517)))))

(assert (= (and d!206353 c!109642) b!586604))

(assert (= (and d!206353 (not c!109642)) b!586605))

(assert (= (and d!206353 res!252739) b!586606))

(assert (= (and b!586606 res!252740) b!586607))

(declare-fun m!846883 () Bool)

(assert (=> d!206353 m!846883))

(assert (=> d!206353 m!846671))

(declare-fun m!846885 () Bool)

(assert (=> d!206353 m!846885))

(declare-fun m!846887 () Bool)

(assert (=> b!586605 m!846887))

(declare-fun m!846889 () Bool)

(assert (=> b!586606 m!846889))

(assert (=> b!586606 m!846593))

(declare-fun m!846891 () Bool)

(assert (=> b!586606 m!846891))

(assert (=> b!586435 d!206353))

(declare-fun d!206357 () Bool)

(assert (=> d!206357 (and (= lt!248508 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!248592 () Unit!10473)

(declare-fun choose!4210 (List!5776 List!5776 List!5776 List!5776) Unit!10473)

(assert (=> d!206357 (= lt!248592 (choose!4210 lt!248508 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!206357 (= (++!1615 lt!248508 suffix!1342) (++!1615 input!2705 suffix!1342))))

(assert (=> d!206357 (= (lemmaConcatSameAndSameSizesThenSameLists!200 lt!248508 suffix!1342 input!2705 suffix!1342) lt!248592)))

(declare-fun bs!70082 () Bool)

(assert (= bs!70082 d!206357))

(declare-fun m!846905 () Bool)

(assert (=> bs!70082 m!846905))

(assert (=> bs!70082 m!846641))

(assert (=> bs!70082 m!846629))

(assert (=> b!586435 d!206357))

(declare-fun d!206369 () Bool)

(assert (=> d!206369 (= (size!4582 (_1!3632 (v!16352 lt!248517))) (size!4583 (originalCharacters!1166 (_1!3632 (v!16352 lt!248517)))))))

(declare-fun Unit!10479 () Unit!10473)

(assert (=> d!206369 (= (lemmaCharactersSize!186 (_1!3632 (v!16352 lt!248517))) Unit!10479)))

(declare-fun bs!70083 () Bool)

(assert (= bs!70083 d!206369))

(declare-fun m!846933 () Bool)

(assert (=> bs!70083 m!846933))

(assert (=> b!586435 d!206369))

(declare-fun d!206371 () Bool)

(declare-fun lt!248597 () List!5776)

(assert (=> d!206371 (= (++!1615 lt!248509 lt!248597) input!2705)))

(declare-fun e!354582 () List!5776)

(assert (=> d!206371 (= lt!248597 e!354582)))

(declare-fun c!109654 () Bool)

(assert (=> d!206371 (= c!109654 ((_ is Cons!5766) lt!248509))))

(assert (=> d!206371 (>= (size!4583 input!2705) (size!4583 lt!248509))))

(assert (=> d!206371 (= (getSuffix!272 input!2705 lt!248509) lt!248597)))

(declare-fun b!586681 () Bool)

(declare-fun tail!767 (List!5776) List!5776)

(assert (=> b!586681 (= e!354582 (getSuffix!272 (tail!767 input!2705) (t!78583 lt!248509)))))

(declare-fun b!586682 () Bool)

(assert (=> b!586682 (= e!354582 input!2705)))

(assert (= (and d!206371 c!109654) b!586681))

(assert (= (and d!206371 (not c!109654)) b!586682))

(declare-fun m!846965 () Bool)

(assert (=> d!206371 m!846965))

(assert (=> d!206371 m!846791))

(assert (=> d!206371 m!846593))

(declare-fun m!846967 () Bool)

(assert (=> b!586681 m!846967))

(assert (=> b!586681 m!846967))

(declare-fun m!846969 () Bool)

(assert (=> b!586681 m!846969))

(assert (=> b!586435 d!206371))

(declare-fun d!206377 () Bool)

(assert (=> d!206377 (= (size!4582 token!491) (size!4583 (originalCharacters!1166 token!491)))))

(declare-fun Unit!10480 () Unit!10473)

(assert (=> d!206377 (= (lemmaCharactersSize!186 token!491) Unit!10480)))

(declare-fun bs!70084 () Bool)

(assert (= bs!70084 d!206377))

(declare-fun m!846971 () Bool)

(assert (=> bs!70084 m!846971))

(assert (=> b!586435 d!206377))

(declare-fun d!206379 () Bool)

(declare-fun lt!248600 () Int)

(assert (=> d!206379 (>= lt!248600 0)))

(declare-fun e!354585 () Int)

(assert (=> d!206379 (= lt!248600 e!354585)))

(declare-fun c!109657 () Bool)

(assert (=> d!206379 (= c!109657 ((_ is Nil!5766) lt!248509))))

(assert (=> d!206379 (= (size!4583 lt!248509) lt!248600)))

(declare-fun b!586687 () Bool)

(assert (=> b!586687 (= e!354585 0)))

(declare-fun b!586688 () Bool)

(assert (=> b!586688 (= e!354585 (+ 1 (size!4583 (t!78583 lt!248509))))))

(assert (= (and d!206379 c!109657) b!586687))

(assert (= (and d!206379 (not c!109657)) b!586688))

(declare-fun m!846973 () Bool)

(assert (=> b!586688 m!846973))

(assert (=> b!586435 d!206379))

(declare-fun d!206381 () Bool)

(declare-fun lt!248601 () Int)

(assert (=> d!206381 (>= lt!248601 0)))

(declare-fun e!354586 () Int)

(assert (=> d!206381 (= lt!248601 e!354586)))

(declare-fun c!109658 () Bool)

(assert (=> d!206381 (= c!109658 ((_ is Nil!5766) lt!248508))))

(assert (=> d!206381 (= (size!4583 lt!248508) lt!248601)))

(declare-fun b!586689 () Bool)

(assert (=> b!586689 (= e!354586 0)))

(declare-fun b!586690 () Bool)

(assert (=> b!586690 (= e!354586 (+ 1 (size!4583 (t!78583 lt!248508))))))

(assert (= (and d!206381 c!109658) b!586689))

(assert (= (and d!206381 (not c!109658)) b!586690))

(declare-fun m!846975 () Bool)

(assert (=> b!586690 m!846975))

(assert (=> b!586435 d!206381))

(declare-fun d!206383 () Bool)

(declare-fun lt!248604 () BalanceConc!3696)

(assert (=> d!206383 (= (list!2406 lt!248604) (originalCharacters!1166 (_1!3632 (v!16352 lt!248517))))))

(declare-fun dynLambda!3370 (Int TokenValue!1151) BalanceConc!3696)

(assert (=> d!206383 (= lt!248604 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 (_1!3632 (v!16352 lt!248517))))) (value!36986 (_1!3632 (v!16352 lt!248517)))))))

(assert (=> d!206383 (= (charsOf!756 (_1!3632 (v!16352 lt!248517))) lt!248604)))

(declare-fun b_lambda!23107 () Bool)

(assert (=> (not b_lambda!23107) (not d!206383)))

(declare-fun tb!51363 () Bool)

(declare-fun t!78600 () Bool)

(assert (=> (and b!586422 (= (toChars!1865 (transformation!1127 (h!11169 rules!3103))) (toChars!1865 (transformation!1127 (rule!1891 (_1!3632 (v!16352 lt!248517)))))) t!78600) tb!51363))

(declare-fun b!586695 () Bool)

(declare-fun e!354589 () Bool)

(declare-fun tp!182982 () Bool)

(declare-fun inv!7289 (Conc!1844) Bool)

(assert (=> b!586695 (= e!354589 (and (inv!7289 (c!109612 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 (_1!3632 (v!16352 lt!248517))))) (value!36986 (_1!3632 (v!16352 lt!248517)))))) tp!182982))))

(declare-fun result!57538 () Bool)

(declare-fun inv!7290 (BalanceConc!3696) Bool)

(assert (=> tb!51363 (= result!57538 (and (inv!7290 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 (_1!3632 (v!16352 lt!248517))))) (value!36986 (_1!3632 (v!16352 lt!248517))))) e!354589))))

(assert (= tb!51363 b!586695))

(declare-fun m!846977 () Bool)

(assert (=> b!586695 m!846977))

(declare-fun m!846979 () Bool)

(assert (=> tb!51363 m!846979))

(assert (=> d!206383 t!78600))

(declare-fun b_and!57787 () Bool)

(assert (= b_and!57765 (and (=> t!78600 result!57538) b_and!57787)))

(declare-fun t!78602 () Bool)

(declare-fun tb!51365 () Bool)

(assert (=> (and b!586416 (= (toChars!1865 (transformation!1127 (rule!1891 token!491))) (toChars!1865 (transformation!1127 (rule!1891 (_1!3632 (v!16352 lt!248517)))))) t!78602) tb!51365))

(declare-fun result!57542 () Bool)

(assert (= result!57542 result!57538))

(assert (=> d!206383 t!78602))

(declare-fun b_and!57789 () Bool)

(assert (= b_and!57769 (and (=> t!78602 result!57542) b_and!57789)))

(declare-fun m!846981 () Bool)

(assert (=> d!206383 m!846981))

(declare-fun m!846983 () Bool)

(assert (=> d!206383 m!846983))

(assert (=> b!586435 d!206383))

(declare-fun d!206385 () Bool)

(declare-fun list!2408 (Conc!1844) List!5776)

(assert (=> d!206385 (= (list!2406 (charsOf!756 (_1!3632 (v!16352 lt!248517)))) (list!2408 (c!109612 (charsOf!756 (_1!3632 (v!16352 lt!248517))))))))

(declare-fun bs!70085 () Bool)

(assert (= bs!70085 d!206385))

(declare-fun m!846985 () Bool)

(assert (=> bs!70085 m!846985))

(assert (=> b!586435 d!206385))

(declare-fun d!206387 () Bool)

(assert (=> d!206387 (isPrefix!755 lt!248509 (++!1615 lt!248509 (_2!3632 (v!16352 lt!248517))))))

(declare-fun lt!248607 () Unit!10473)

(declare-fun choose!4211 (List!5776 List!5776) Unit!10473)

(assert (=> d!206387 (= lt!248607 (choose!4211 lt!248509 (_2!3632 (v!16352 lt!248517))))))

(assert (=> d!206387 (= (lemmaConcatTwoListThenFirstIsPrefix!600 lt!248509 (_2!3632 (v!16352 lt!248517))) lt!248607)))

(declare-fun bs!70086 () Bool)

(assert (= bs!70086 d!206387))

(assert (=> bs!70086 m!846605))

(assert (=> bs!70086 m!846605))

(declare-fun m!846987 () Bool)

(assert (=> bs!70086 m!846987))

(declare-fun m!846989 () Bool)

(assert (=> bs!70086 m!846989))

(assert (=> b!586435 d!206387))

(declare-fun b!586705 () Bool)

(declare-fun res!252764 () Bool)

(declare-fun e!354597 () Bool)

(assert (=> b!586705 (=> (not res!252764) (not e!354597))))

(declare-fun head!1238 (List!5776) C!3844)

(assert (=> b!586705 (= res!252764 (= (head!1238 lt!248509) (head!1238 lt!248516)))))

(declare-fun b!586706 () Bool)

(assert (=> b!586706 (= e!354597 (isPrefix!755 (tail!767 lt!248509) (tail!767 lt!248516)))))

(declare-fun d!206389 () Bool)

(declare-fun e!354596 () Bool)

(assert (=> d!206389 e!354596))

(declare-fun res!252766 () Bool)

(assert (=> d!206389 (=> res!252766 e!354596)))

(declare-fun lt!248610 () Bool)

(assert (=> d!206389 (= res!252766 (not lt!248610))))

(declare-fun e!354598 () Bool)

(assert (=> d!206389 (= lt!248610 e!354598)))

(declare-fun res!252767 () Bool)

(assert (=> d!206389 (=> res!252767 e!354598)))

(assert (=> d!206389 (= res!252767 ((_ is Nil!5766) lt!248509))))

(assert (=> d!206389 (= (isPrefix!755 lt!248509 lt!248516) lt!248610)))

(declare-fun b!586704 () Bool)

(assert (=> b!586704 (= e!354598 e!354597)))

(declare-fun res!252765 () Bool)

(assert (=> b!586704 (=> (not res!252765) (not e!354597))))

(assert (=> b!586704 (= res!252765 (not ((_ is Nil!5766) lt!248516)))))

(declare-fun b!586707 () Bool)

(assert (=> b!586707 (= e!354596 (>= (size!4583 lt!248516) (size!4583 lt!248509)))))

(assert (= (and d!206389 (not res!252767)) b!586704))

(assert (= (and b!586704 res!252765) b!586705))

(assert (= (and b!586705 res!252764) b!586706))

(assert (= (and d!206389 (not res!252766)) b!586707))

(declare-fun m!846991 () Bool)

(assert (=> b!586705 m!846991))

(declare-fun m!846993 () Bool)

(assert (=> b!586705 m!846993))

(declare-fun m!846995 () Bool)

(assert (=> b!586706 m!846995))

(declare-fun m!846997 () Bool)

(assert (=> b!586706 m!846997))

(assert (=> b!586706 m!846995))

(assert (=> b!586706 m!846997))

(declare-fun m!846999 () Bool)

(assert (=> b!586706 m!846999))

(declare-fun m!847001 () Bool)

(assert (=> b!586707 m!847001))

(assert (=> b!586707 m!846593))

(assert (=> b!586435 d!206389))

(declare-fun b!586709 () Bool)

(declare-fun res!252768 () Bool)

(declare-fun e!354600 () Bool)

(assert (=> b!586709 (=> (not res!252768) (not e!354600))))

(assert (=> b!586709 (= res!252768 (= (head!1238 lt!248509) (head!1238 input!2705)))))

(declare-fun b!586710 () Bool)

(assert (=> b!586710 (= e!354600 (isPrefix!755 (tail!767 lt!248509) (tail!767 input!2705)))))

(declare-fun d!206391 () Bool)

(declare-fun e!354599 () Bool)

(assert (=> d!206391 e!354599))

(declare-fun res!252770 () Bool)

(assert (=> d!206391 (=> res!252770 e!354599)))

(declare-fun lt!248611 () Bool)

(assert (=> d!206391 (= res!252770 (not lt!248611))))

(declare-fun e!354601 () Bool)

(assert (=> d!206391 (= lt!248611 e!354601)))

(declare-fun res!252771 () Bool)

(assert (=> d!206391 (=> res!252771 e!354601)))

(assert (=> d!206391 (= res!252771 ((_ is Nil!5766) lt!248509))))

(assert (=> d!206391 (= (isPrefix!755 lt!248509 input!2705) lt!248611)))

(declare-fun b!586708 () Bool)

(assert (=> b!586708 (= e!354601 e!354600)))

(declare-fun res!252769 () Bool)

(assert (=> b!586708 (=> (not res!252769) (not e!354600))))

(assert (=> b!586708 (= res!252769 (not ((_ is Nil!5766) input!2705)))))

(declare-fun b!586711 () Bool)

(assert (=> b!586711 (= e!354599 (>= (size!4583 input!2705) (size!4583 lt!248509)))))

(assert (= (and d!206391 (not res!252771)) b!586708))

(assert (= (and b!586708 res!252769) b!586709))

(assert (= (and b!586709 res!252768) b!586710))

(assert (= (and d!206391 (not res!252770)) b!586711))

(assert (=> b!586709 m!846991))

(declare-fun m!847003 () Bool)

(assert (=> b!586709 m!847003))

(assert (=> b!586710 m!846995))

(assert (=> b!586710 m!846967))

(assert (=> b!586710 m!846995))

(assert (=> b!586710 m!846967))

(declare-fun m!847005 () Bool)

(assert (=> b!586710 m!847005))

(assert (=> b!586711 m!846791))

(assert (=> b!586711 m!846593))

(assert (=> b!586435 d!206391))

(declare-fun d!206393 () Bool)

(assert (=> d!206393 (= (inv!7282 (tag!1389 (rule!1891 token!491))) (= (mod (str.len (value!36985 (tag!1389 (rule!1891 token!491)))) 2) 0))))

(assert (=> b!586424 d!206393))

(declare-fun d!206395 () Bool)

(declare-fun res!252772 () Bool)

(declare-fun e!354602 () Bool)

(assert (=> d!206395 (=> (not res!252772) (not e!354602))))

(assert (=> d!206395 (= res!252772 (semiInverseModEq!439 (toChars!1865 (transformation!1127 (rule!1891 token!491))) (toValue!2006 (transformation!1127 (rule!1891 token!491)))))))

(assert (=> d!206395 (= (inv!7285 (transformation!1127 (rule!1891 token!491))) e!354602)))

(declare-fun b!586712 () Bool)

(assert (=> b!586712 (= e!354602 (equivClasses!422 (toChars!1865 (transformation!1127 (rule!1891 token!491))) (toValue!2006 (transformation!1127 (rule!1891 token!491)))))))

(assert (= (and d!206395 res!252772) b!586712))

(declare-fun m!847007 () Bool)

(assert (=> d!206395 m!847007))

(declare-fun m!847009 () Bool)

(assert (=> b!586712 m!847009))

(assert (=> b!586424 d!206395))

(declare-fun d!206397 () Bool)

(assert (=> d!206397 (= (list!2406 (charsOf!756 token!491)) (list!2408 (c!109612 (charsOf!756 token!491))))))

(declare-fun bs!70087 () Bool)

(assert (= bs!70087 d!206397))

(declare-fun m!847011 () Bool)

(assert (=> bs!70087 m!847011))

(assert (=> b!586434 d!206397))

(declare-fun d!206399 () Bool)

(declare-fun lt!248612 () BalanceConc!3696)

(assert (=> d!206399 (= (list!2406 lt!248612) (originalCharacters!1166 token!491))))

(assert (=> d!206399 (= lt!248612 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 token!491))) (value!36986 token!491)))))

(assert (=> d!206399 (= (charsOf!756 token!491) lt!248612)))

(declare-fun b_lambda!23109 () Bool)

(assert (=> (not b_lambda!23109) (not d!206399)))

(declare-fun t!78604 () Bool)

(declare-fun tb!51367 () Bool)

(assert (=> (and b!586422 (= (toChars!1865 (transformation!1127 (h!11169 rules!3103))) (toChars!1865 (transformation!1127 (rule!1891 token!491)))) t!78604) tb!51367))

(declare-fun b!586713 () Bool)

(declare-fun e!354603 () Bool)

(declare-fun tp!182983 () Bool)

(assert (=> b!586713 (= e!354603 (and (inv!7289 (c!109612 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 token!491))) (value!36986 token!491)))) tp!182983))))

(declare-fun result!57544 () Bool)

(assert (=> tb!51367 (= result!57544 (and (inv!7290 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 token!491))) (value!36986 token!491))) e!354603))))

(assert (= tb!51367 b!586713))

(declare-fun m!847013 () Bool)

(assert (=> b!586713 m!847013))

(declare-fun m!847015 () Bool)

(assert (=> tb!51367 m!847015))

(assert (=> d!206399 t!78604))

(declare-fun b_and!57791 () Bool)

(assert (= b_and!57787 (and (=> t!78604 result!57544) b_and!57791)))

(declare-fun t!78606 () Bool)

(declare-fun tb!51369 () Bool)

(assert (=> (and b!586416 (= (toChars!1865 (transformation!1127 (rule!1891 token!491))) (toChars!1865 (transformation!1127 (rule!1891 token!491)))) t!78606) tb!51369))

(declare-fun result!57546 () Bool)

(assert (= result!57546 result!57544))

(assert (=> d!206399 t!78606))

(declare-fun b_and!57793 () Bool)

(assert (= b_and!57789 (and (=> t!78606 result!57546) b_and!57793)))

(declare-fun m!847017 () Bool)

(assert (=> d!206399 m!847017))

(declare-fun m!847019 () Bool)

(assert (=> d!206399 m!847019))

(assert (=> b!586434 d!206399))

(declare-fun d!206401 () Bool)

(declare-fun res!252777 () Bool)

(declare-fun e!354606 () Bool)

(assert (=> d!206401 (=> (not res!252777) (not e!354606))))

(assert (=> d!206401 (= res!252777 (not (isEmpty!4163 (originalCharacters!1166 token!491))))))

(assert (=> d!206401 (= (inv!7286 token!491) e!354606)))

(declare-fun b!586718 () Bool)

(declare-fun res!252778 () Bool)

(assert (=> b!586718 (=> (not res!252778) (not e!354606))))

(assert (=> b!586718 (= res!252778 (= (originalCharacters!1166 token!491) (list!2406 (dynLambda!3370 (toChars!1865 (transformation!1127 (rule!1891 token!491))) (value!36986 token!491)))))))

(declare-fun b!586719 () Bool)

(assert (=> b!586719 (= e!354606 (= (size!4582 token!491) (size!4583 (originalCharacters!1166 token!491))))))

(assert (= (and d!206401 res!252777) b!586718))

(assert (= (and b!586718 res!252778) b!586719))

(declare-fun b_lambda!23111 () Bool)

(assert (=> (not b_lambda!23111) (not b!586718)))

(assert (=> b!586718 t!78604))

(declare-fun b_and!57795 () Bool)

(assert (= b_and!57791 (and (=> t!78604 result!57544) b_and!57795)))

(assert (=> b!586718 t!78606))

(declare-fun b_and!57797 () Bool)

(assert (= b_and!57793 (and (=> t!78606 result!57546) b_and!57797)))

(declare-fun m!847021 () Bool)

(assert (=> d!206401 m!847021))

(assert (=> b!586718 m!847019))

(assert (=> b!586718 m!847019))

(declare-fun m!847023 () Bool)

(assert (=> b!586718 m!847023))

(assert (=> b!586719 m!846971))

(assert (=> start!54568 d!206401))

(declare-fun b!586730 () Bool)

(declare-fun b_free!16377 () Bool)

(declare-fun b_next!16393 () Bool)

(assert (=> b!586730 (= b_free!16377 (not b_next!16393))))

(declare-fun tp!182994 () Bool)

(declare-fun b_and!57799 () Bool)

(assert (=> b!586730 (= tp!182994 b_and!57799)))

(declare-fun b_free!16379 () Bool)

(declare-fun b_next!16395 () Bool)

(assert (=> b!586730 (= b_free!16379 (not b_next!16395))))

(declare-fun tb!51371 () Bool)

(declare-fun t!78608 () Bool)

(assert (=> (and b!586730 (= (toChars!1865 (transformation!1127 (h!11169 (t!78585 rules!3103)))) (toChars!1865 (transformation!1127 (rule!1891 (_1!3632 (v!16352 lt!248517)))))) t!78608) tb!51371))

(declare-fun result!57550 () Bool)

(assert (= result!57550 result!57538))

(assert (=> d!206383 t!78608))

(declare-fun t!78610 () Bool)

(declare-fun tb!51373 () Bool)

(assert (=> (and b!586730 (= (toChars!1865 (transformation!1127 (h!11169 (t!78585 rules!3103)))) (toChars!1865 (transformation!1127 (rule!1891 token!491)))) t!78610) tb!51373))

(declare-fun result!57552 () Bool)

(assert (= result!57552 result!57544))

(assert (=> d!206399 t!78610))

(assert (=> b!586718 t!78610))

(declare-fun tp!182993 () Bool)

(declare-fun b_and!57801 () Bool)

(assert (=> b!586730 (= tp!182993 (and (=> t!78608 result!57550) (=> t!78610 result!57552) b_and!57801))))

(declare-fun e!354616 () Bool)

(assert (=> b!586730 (= e!354616 (and tp!182994 tp!182993))))

(declare-fun tp!182992 () Bool)

(declare-fun e!354617 () Bool)

(declare-fun b!586729 () Bool)

(assert (=> b!586729 (= e!354617 (and tp!182992 (inv!7282 (tag!1389 (h!11169 (t!78585 rules!3103)))) (inv!7285 (transformation!1127 (h!11169 (t!78585 rules!3103)))) e!354616))))

(declare-fun b!586728 () Bool)

(declare-fun e!354615 () Bool)

(declare-fun tp!182995 () Bool)

(assert (=> b!586728 (= e!354615 (and e!354617 tp!182995))))

(assert (=> b!586415 (= tp!182938 e!354615)))

(assert (= b!586729 b!586730))

(assert (= b!586728 b!586729))

(assert (= (and b!586415 ((_ is Cons!5768) (t!78585 rules!3103))) b!586728))

(declare-fun m!847025 () Bool)

(assert (=> b!586729 m!847025))

(declare-fun m!847027 () Bool)

(assert (=> b!586729 m!847027))

(declare-fun b!586735 () Bool)

(declare-fun e!354621 () Bool)

(declare-fun tp!182998 () Bool)

(assert (=> b!586735 (= e!354621 (and tp_is_empty!3277 tp!182998))))

(assert (=> b!586426 (= tp!182933 e!354621)))

(assert (= (and b!586426 ((_ is Cons!5766) (t!78583 input!2705))) b!586735))

(declare-fun b!586736 () Bool)

(declare-fun e!354622 () Bool)

(declare-fun tp!182999 () Bool)

(assert (=> b!586736 (= e!354622 (and tp_is_empty!3277 tp!182999))))

(assert (=> b!586423 (= tp!182937 e!354622)))

(assert (= (and b!586423 ((_ is Cons!5766) (originalCharacters!1166 token!491))) b!586736))

(declare-fun e!354625 () Bool)

(assert (=> b!586419 (= tp!182931 e!354625)))

(declare-fun b!586747 () Bool)

(assert (=> b!586747 (= e!354625 tp_is_empty!3277)))

(declare-fun b!586748 () Bool)

(declare-fun tp!183010 () Bool)

(declare-fun tp!183013 () Bool)

(assert (=> b!586748 (= e!354625 (and tp!183010 tp!183013))))

(declare-fun b!586749 () Bool)

(declare-fun tp!183014 () Bool)

(assert (=> b!586749 (= e!354625 tp!183014)))

(declare-fun b!586750 () Bool)

(declare-fun tp!183011 () Bool)

(declare-fun tp!183012 () Bool)

(assert (=> b!586750 (= e!354625 (and tp!183011 tp!183012))))

(assert (= (and b!586419 ((_ is ElementMatch!1461) (regex!1127 (h!11169 rules!3103)))) b!586747))

(assert (= (and b!586419 ((_ is Concat!2612) (regex!1127 (h!11169 rules!3103)))) b!586748))

(assert (= (and b!586419 ((_ is Star!1461) (regex!1127 (h!11169 rules!3103)))) b!586749))

(assert (= (and b!586419 ((_ is Union!1461) (regex!1127 (h!11169 rules!3103)))) b!586750))

(declare-fun e!354626 () Bool)

(assert (=> b!586424 (= tp!182935 e!354626)))

(declare-fun b!586751 () Bool)

(assert (=> b!586751 (= e!354626 tp_is_empty!3277)))

(declare-fun b!586752 () Bool)

(declare-fun tp!183015 () Bool)

(declare-fun tp!183018 () Bool)

(assert (=> b!586752 (= e!354626 (and tp!183015 tp!183018))))

(declare-fun b!586753 () Bool)

(declare-fun tp!183019 () Bool)

(assert (=> b!586753 (= e!354626 tp!183019)))

(declare-fun b!586754 () Bool)

(declare-fun tp!183016 () Bool)

(declare-fun tp!183017 () Bool)

(assert (=> b!586754 (= e!354626 (and tp!183016 tp!183017))))

(assert (= (and b!586424 ((_ is ElementMatch!1461) (regex!1127 (rule!1891 token!491)))) b!586751))

(assert (= (and b!586424 ((_ is Concat!2612) (regex!1127 (rule!1891 token!491)))) b!586752))

(assert (= (and b!586424 ((_ is Star!1461) (regex!1127 (rule!1891 token!491)))) b!586753))

(assert (= (and b!586424 ((_ is Union!1461) (regex!1127 (rule!1891 token!491)))) b!586754))

(declare-fun b!586755 () Bool)

(declare-fun e!354627 () Bool)

(declare-fun tp!183020 () Bool)

(assert (=> b!586755 (= e!354627 (and tp_is_empty!3277 tp!183020))))

(assert (=> b!586418 (= tp!182936 e!354627)))

(assert (= (and b!586418 ((_ is Cons!5766) (t!78583 suffix!1342))) b!586755))

(declare-fun b_lambda!23113 () Bool)

(assert (= b_lambda!23109 (or (and b!586422 b_free!16367 (= (toChars!1865 (transformation!1127 (h!11169 rules!3103))) (toChars!1865 (transformation!1127 (rule!1891 token!491))))) (and b!586416 b_free!16371) (and b!586730 b_free!16379 (= (toChars!1865 (transformation!1127 (h!11169 (t!78585 rules!3103)))) (toChars!1865 (transformation!1127 (rule!1891 token!491))))) b_lambda!23113)))

(declare-fun b_lambda!23115 () Bool)

(assert (= b_lambda!23111 (or (and b!586422 b_free!16367 (= (toChars!1865 (transformation!1127 (h!11169 rules!3103))) (toChars!1865 (transformation!1127 (rule!1891 token!491))))) (and b!586416 b_free!16371) (and b!586730 b_free!16379 (= (toChars!1865 (transformation!1127 (h!11169 (t!78585 rules!3103)))) (toChars!1865 (transformation!1127 (rule!1891 token!491))))) b_lambda!23115)))

(check-sat (not d!206395) (not b!586709) (not b!586707) (not tb!51367) (not b!586728) (not d!206283) (not b!586753) (not b!586548) b_and!57799 (not b_lambda!23107) (not b!586599) (not b!586445) (not b!586710) b_and!57797 (not b!586600) (not b!586713) (not d!206385) (not b!586690) (not b!586563) (not b!586547) (not b!586557) (not d!206371) (not b!586552) b_and!57801 (not b!586542) (not b!586749) (not b_next!16385) (not b!586556) (not d!206357) (not d!206345) (not b!586752) (not b_next!16381) (not b_lambda!23115) (not b!586735) (not b!586541) (not b!586736) (not b!586554) b_and!57795 (not b!586459) (not d!206353) (not b!586555) (not b!586545) (not d!206387) (not b!586458) (not b!586544) (not d!206399) (not d!206383) (not d!206347) (not b!586550) (not d!206369) b_and!57763 (not b!586718) (not d!206343) (not b!586553) (not d!206289) (not d!206377) (not d!206299) (not b!586695) (not bm!40215) (not b_next!16383) (not b!586606) (not b!586446) (not b!586719) b_and!57767 (not b_next!16395) (not b!586681) (not b!586688) (not d!206401) (not b!586755) (not b!586546) (not b!586551) (not b!586605) (not b!586711) (not b_next!16393) (not tb!51363) (not b!586456) (not b!586450) (not d!206303) (not b!586748) (not bm!40216) (not b!586754) (not d!206295) (not b_next!16387) (not b!586705) (not b_lambda!23113) (not b!586712) (not b!586706) (not b!586750) tp_is_empty!3277 (not d!206397) (not b!586564) (not b!586602) (not b!586543) (not b!586729))
(check-sat b_and!57799 b_and!57797 b_and!57801 (not b_next!16385) (not b_next!16381) b_and!57795 b_and!57763 (not b_next!16383) b_and!57767 (not b_next!16395) (not b_next!16393) (not b_next!16387))
