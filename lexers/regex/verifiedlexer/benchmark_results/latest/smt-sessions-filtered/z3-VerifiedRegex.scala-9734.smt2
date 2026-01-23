; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!509828 () Bool)

(assert start!509828)

(declare-fun b!4874320 () Bool)

(declare-fun b_free!130795 () Bool)

(declare-fun b_next!131585 () Bool)

(assert (=> b!4874320 (= b_free!130795 (not b_next!131585))))

(declare-fun tp!1371625 () Bool)

(declare-fun b_and!343327 () Bool)

(assert (=> b!4874320 (= tp!1371625 b_and!343327)))

(declare-fun b_free!130797 () Bool)

(declare-fun b_next!131587 () Bool)

(assert (=> b!4874320 (= b_free!130797 (not b_next!131587))))

(declare-fun tp!1371627 () Bool)

(declare-fun b_and!343329 () Bool)

(assert (=> b!4874320 (= tp!1371627 b_and!343329)))

(declare-fun b!4874310 () Bool)

(declare-fun e!3046828 () Bool)

(declare-fun e!3046831 () Bool)

(assert (=> b!4874310 (= e!3046828 e!3046831)))

(declare-fun res!2080705 () Bool)

(assert (=> b!4874310 (=> (not res!2080705) (not e!3046831))))

(declare-datatypes ((List!56130 0))(
  ( (Nil!56006) (Cons!56006 (h!62454 (_ BitVec 16)) (t!364438 List!56130)) )
))
(declare-datatypes ((TokenValue!8358 0))(
  ( (FloatLiteralValue!16716 (text!58951 List!56130)) (TokenValueExt!8357 (__x!34009 Int)) (Broken!41790 (value!258484 List!56130)) (Object!8481) (End!8358) (Def!8358) (Underscore!8358) (Match!8358) (Else!8358) (Error!8358) (Case!8358) (If!8358) (Extends!8358) (Abstract!8358) (Class!8358) (Val!8358) (DelimiterValue!16716 (del!8418 List!56130)) (KeywordValue!8364 (value!258485 List!56130)) (CommentValue!16716 (value!258486 List!56130)) (WhitespaceValue!16716 (value!258487 List!56130)) (IndentationValue!8358 (value!258488 List!56130)) (String!63207) (Int32!8358) (Broken!41791 (value!258489 List!56130)) (Boolean!8359) (Unit!146001) (OperatorValue!8361 (op!8418 List!56130)) (IdentifierValue!16716 (value!258490 List!56130)) (IdentifierValue!16717 (value!258491 List!56130)) (WhitespaceValue!16717 (value!258492 List!56130)) (True!16716) (False!16716) (Broken!41792 (value!258493 List!56130)) (Broken!41793 (value!258494 List!56130)) (True!16717) (RightBrace!8358) (RightBracket!8358) (Colon!8358) (Null!8358) (Comma!8358) (LeftBracket!8358) (False!16717) (LeftBrace!8358) (ImaginaryLiteralValue!8358 (text!58952 List!56130)) (StringLiteralValue!25074 (value!258495 List!56130)) (EOFValue!8358 (value!258496 List!56130)) (IdentValue!8358 (value!258497 List!56130)) (DelimiterValue!16717 (value!258498 List!56130)) (DedentValue!8358 (value!258499 List!56130)) (NewLineValue!8358 (value!258500 List!56130)) (IntegerValue!25074 (value!258501 (_ BitVec 32)) (text!58953 List!56130)) (IntegerValue!25075 (value!258502 Int) (text!58954 List!56130)) (Times!8358) (Or!8358) (Equal!8358) (Minus!8358) (Broken!41794 (value!258503 List!56130)) (And!8358) (Div!8358) (LessEqual!8358) (Mod!8358) (Concat!21481) (Not!8358) (Plus!8358) (SpaceValue!8358 (value!258504 List!56130)) (IntegerValue!25076 (value!258505 Int) (text!58955 List!56130)) (StringLiteralValue!25075 (text!58956 List!56130)) (FloatLiteralValue!16717 (text!58957 List!56130)) (BytesLiteralValue!8358 (value!258506 List!56130)) (CommentValue!16717 (value!258507 List!56130)) (StringLiteralValue!25076 (value!258508 List!56130)) (ErrorTokenValue!8358 (msg!8419 List!56130)) )
))
(declare-datatypes ((C!26444 0))(
  ( (C!26445 (val!22544 Int)) )
))
(declare-datatypes ((List!56131 0))(
  ( (Nil!56007) (Cons!56007 (h!62455 C!26444) (t!364439 List!56131)) )
))
(declare-datatypes ((IArray!29263 0))(
  ( (IArray!29264 (innerList!14689 List!56131)) )
))
(declare-datatypes ((Conc!14601 0))(
  ( (Node!14601 (left!40681 Conc!14601) (right!41011 Conc!14601) (csize!29432 Int) (cheight!14812 Int)) (Leaf!24336 (xs!17909 IArray!29263) (csize!29433 Int)) (Empty!14601) )
))
(declare-datatypes ((Regex!13123 0))(
  ( (ElementMatch!13123 (c!828990 C!26444)) (Concat!21482 (regOne!26758 Regex!13123) (regTwo!26758 Regex!13123)) (EmptyExpr!13123) (Star!13123 (reg!13452 Regex!13123)) (EmptyLang!13123) (Union!13123 (regOne!26759 Regex!13123) (regTwo!26759 Regex!13123)) )
))
(declare-datatypes ((String!63208 0))(
  ( (String!63209 (value!258509 String)) )
))
(declare-datatypes ((BalanceConc!28644 0))(
  ( (BalanceConc!28645 (c!828991 Conc!14601)) )
))
(declare-datatypes ((TokenValueInjection!16024 0))(
  ( (TokenValueInjection!16025 (toValue!10927 Int) (toChars!10786 Int)) )
))
(declare-datatypes ((Rule!15896 0))(
  ( (Rule!15897 (regex!8048 Regex!13123) (tag!8912 String!63208) (isSeparator!8048 Bool) (transformation!8048 TokenValueInjection!16024)) )
))
(declare-datatypes ((Token!14680 0))(
  ( (Token!14681 (value!258510 TokenValue!8358) (rule!11198 Rule!15896) (size!36930 Int) (originalCharacters!8371 List!56131)) )
))
(declare-datatypes ((tuple2!59884 0))(
  ( (tuple2!59885 (_1!33245 Token!14680) (_2!33245 BalanceConc!28644)) )
))
(declare-datatypes ((Option!13801 0))(
  ( (None!13800) (Some!13800 (v!49734 tuple2!59884)) )
))
(declare-fun lt!1997269 () Option!13801)

(get-info :version)

(assert (=> b!4874310 (= res!2080705 ((_ is Some!13800) lt!1997269))))

(declare-datatypes ((List!56132 0))(
  ( (Nil!56008) (Cons!56008 (h!62456 Rule!15896) (t!364440 List!56132)) )
))
(declare-fun rules!1164 () List!56132)

(declare-fun input!585 () BalanceConc!28644)

(declare-datatypes ((LexerInterface!7640 0))(
  ( (LexerInterfaceExt!7637 (__x!34010 Int)) (Lexer!7638) )
))
(declare-fun thiss!11460 () LexerInterface!7640)

(declare-fun maxPrefixZipperSequence!1239 (LexerInterface!7640 List!56132 BalanceConc!28644) Option!13801)

(assert (=> b!4874310 (= lt!1997269 (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 input!585))))

(declare-fun b!4874311 () Bool)

(declare-fun e!3046832 () Bool)

(declare-datatypes ((List!56133 0))(
  ( (Nil!56009) (Cons!56009 (h!62457 Token!14680) (t!364441 List!56133)) )
))
(declare-datatypes ((IArray!29265 0))(
  ( (IArray!29266 (innerList!14690 List!56133)) )
))
(declare-datatypes ((Conc!14602 0))(
  ( (Node!14602 (left!40682 Conc!14602) (right!41012 Conc!14602) (csize!29434 Int) (cheight!14813 Int)) (Leaf!24337 (xs!17910 IArray!29265) (csize!29435 Int)) (Empty!14602) )
))
(declare-datatypes ((BalanceConc!28646 0))(
  ( (BalanceConc!28647 (c!828992 Conc!14602)) )
))
(declare-datatypes ((tuple2!59886 0))(
  ( (tuple2!59887 (_1!33246 BalanceConc!28646) (_2!33246 BalanceConc!28644)) )
))
(declare-fun lt!1997274 () tuple2!59886)

(declare-fun lt!1997273 () List!56131)

(declare-fun list!17533 (BalanceConc!28644) List!56131)

(assert (=> b!4874311 (= e!3046832 (not (= (list!17533 (_2!33246 lt!1997274)) lt!1997273)))))

(declare-fun e!3046824 () Bool)

(declare-fun tp!1371626 () Bool)

(declare-fun b!4874312 () Bool)

(declare-fun e!3046835 () Bool)

(declare-fun inv!71938 (String!63208) Bool)

(declare-fun inv!71942 (TokenValueInjection!16024) Bool)

(assert (=> b!4874312 (= e!3046824 (and tp!1371626 (inv!71938 (tag!8912 (h!62456 rules!1164))) (inv!71942 (transformation!8048 (h!62456 rules!1164))) e!3046835))))

(declare-fun b!4874313 () Bool)

(declare-fun e!3046830 () Bool)

(declare-fun tp!1371629 () Bool)

(declare-fun inv!71943 (Conc!14601) Bool)

(assert (=> b!4874313 (= e!3046830 (and (inv!71943 (c!828991 input!585)) tp!1371629))))

(declare-fun b!4874314 () Bool)

(declare-fun e!3046834 () Bool)

(declare-fun tp!1371628 () Bool)

(assert (=> b!4874314 (= e!3046834 (and e!3046824 tp!1371628))))

(declare-fun b!4874315 () Bool)

(declare-fun e!3046833 () Bool)

(declare-fun lt!1997270 () BalanceConc!28646)

(declare-fun isEmpty!29990 (BalanceConc!28646) Bool)

(assert (=> b!4874315 (= e!3046833 (isEmpty!29990 lt!1997270))))

(declare-fun b!4874316 () Bool)

(declare-fun e!3046826 () Bool)

(assert (=> b!4874316 (= e!3046831 e!3046826)))

(declare-fun res!2080710 () Bool)

(assert (=> b!4874316 (=> (not res!2080710) (not e!3046826))))

(declare-fun lt!1997271 () List!56131)

(assert (=> b!4874316 (= res!2080710 (= lt!1997271 lt!1997273))))

(assert (=> b!4874316 (= lt!1997273 (list!17533 input!585))))

(declare-fun ++!12201 (List!56131 List!56131) List!56131)

(declare-fun charsOf!5347 (Token!14680) BalanceConc!28644)

(assert (=> b!4874316 (= lt!1997271 (++!12201 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun lexRec!853 (LexerInterface!7640 List!56132 BalanceConc!28644) tuple2!59886)

(assert (=> b!4874316 (= lt!1997274 (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4874317 () Bool)

(declare-fun res!2080711 () Bool)

(assert (=> b!4874317 (=> (not res!2080711) (not e!3046828))))

(declare-fun rulesInvariant!6738 (LexerInterface!7640 List!56132) Bool)

(assert (=> b!4874317 (= res!2080711 (rulesInvariant!6738 thiss!11460 rules!1164))))

(declare-fun b!4874318 () Bool)

(declare-fun res!2080707 () Bool)

(assert (=> b!4874318 (=> (not res!2080707) (not e!3046828))))

(declare-fun isEmpty!29991 (List!56132) Bool)

(assert (=> b!4874318 (= res!2080707 (not (isEmpty!29991 rules!1164)))))

(declare-fun b!4874319 () Bool)

(declare-fun e!3046829 () Bool)

(declare-fun e!3046827 () Bool)

(assert (=> b!4874319 (= e!3046829 e!3046827)))

(declare-fun res!2080708 () Bool)

(assert (=> b!4874319 (=> res!2080708 e!3046827)))

(declare-datatypes ((tuple2!59888 0))(
  ( (tuple2!59889 (_1!33247 List!56133) (_2!33247 List!56131)) )
))
(declare-fun lt!1997272 () tuple2!59888)

(declare-fun list!17534 (BalanceConc!28646) List!56133)

(assert (=> b!4874319 (= res!2080708 (not (= (list!17534 lt!1997270) (_1!33247 lt!1997272))))))

(declare-fun lexList!2111 (LexerInterface!7640 List!56132 List!56131) tuple2!59888)

(assert (=> b!4874319 (= lt!1997272 (lexList!2111 thiss!11460 rules!1164 lt!1997273))))

(declare-fun res!2080709 () Bool)

(assert (=> start!509828 (=> (not res!2080709) (not e!3046828))))

(assert (=> start!509828 (= res!2080709 ((_ is Lexer!7638) thiss!11460))))

(assert (=> start!509828 e!3046828))

(assert (=> start!509828 true))

(assert (=> start!509828 e!3046834))

(declare-fun inv!71944 (BalanceConc!28644) Bool)

(assert (=> start!509828 (and (inv!71944 input!585) e!3046830)))

(assert (=> b!4874320 (= e!3046835 (and tp!1371625 tp!1371627))))

(declare-fun b!4874321 () Bool)

(assert (=> b!4874321 (= e!3046832 e!3046833)))

(declare-fun res!2080704 () Bool)

(declare-fun size!36931 (BalanceConc!28644) Int)

(assert (=> b!4874321 (= res!2080704 (>= (size!36931 (_2!33246 lt!1997274)) (size!36931 input!585)))))

(assert (=> b!4874321 (=> res!2080704 e!3046833)))

(declare-fun b!4874322 () Bool)

(assert (=> b!4874322 (= e!3046826 e!3046829)))

(declare-fun res!2080706 () Bool)

(assert (=> b!4874322 (=> res!2080706 e!3046829)))

(assert (=> b!4874322 (= res!2080706 e!3046832)))

(declare-fun c!828989 () Bool)

(declare-fun size!36932 (BalanceConc!28646) Int)

(assert (=> b!4874322 (= c!828989 (> (size!36932 lt!1997270) 0))))

(declare-fun prepend!1404 (BalanceConc!28646 Token!14680) BalanceConc!28646)

(assert (=> b!4874322 (= lt!1997270 (prepend!1404 (_1!33246 lt!1997274) (_1!33245 (v!49734 lt!1997269))))))

(declare-fun b!4874323 () Bool)

(assert (=> b!4874323 (= e!3046827 (not (= (list!17533 (_2!33246 lt!1997274)) (_2!33247 lt!1997272))))))

(assert (= (and start!509828 res!2080709) b!4874318))

(assert (= (and b!4874318 res!2080707) b!4874317))

(assert (= (and b!4874317 res!2080711) b!4874310))

(assert (= (and b!4874310 res!2080705) b!4874316))

(assert (= (and b!4874316 res!2080710) b!4874322))

(assert (= (and b!4874322 c!828989) b!4874321))

(assert (= (and b!4874322 (not c!828989)) b!4874311))

(assert (= (and b!4874321 (not res!2080704)) b!4874315))

(assert (= (and b!4874322 (not res!2080706)) b!4874319))

(assert (= (and b!4874319 (not res!2080708)) b!4874323))

(assert (= b!4874312 b!4874320))

(assert (= b!4874314 b!4874312))

(assert (= (and start!509828 ((_ is Cons!56008) rules!1164)) b!4874314))

(assert (= start!509828 b!4874313))

(declare-fun m!5875494 () Bool)

(assert (=> b!4874323 m!5875494))

(declare-fun m!5875496 () Bool)

(assert (=> b!4874310 m!5875496))

(declare-fun m!5875498 () Bool)

(assert (=> b!4874321 m!5875498))

(declare-fun m!5875500 () Bool)

(assert (=> b!4874321 m!5875500))

(declare-fun m!5875502 () Bool)

(assert (=> b!4874313 m!5875502))

(declare-fun m!5875504 () Bool)

(assert (=> b!4874312 m!5875504))

(declare-fun m!5875506 () Bool)

(assert (=> b!4874312 m!5875506))

(assert (=> b!4874311 m!5875494))

(declare-fun m!5875508 () Bool)

(assert (=> b!4874319 m!5875508))

(declare-fun m!5875510 () Bool)

(assert (=> b!4874319 m!5875510))

(declare-fun m!5875512 () Bool)

(assert (=> b!4874315 m!5875512))

(declare-fun m!5875514 () Bool)

(assert (=> start!509828 m!5875514))

(declare-fun m!5875516 () Bool)

(assert (=> b!4874316 m!5875516))

(declare-fun m!5875518 () Bool)

(assert (=> b!4874316 m!5875518))

(declare-fun m!5875520 () Bool)

(assert (=> b!4874316 m!5875520))

(declare-fun m!5875522 () Bool)

(assert (=> b!4874316 m!5875522))

(declare-fun m!5875524 () Bool)

(assert (=> b!4874316 m!5875524))

(declare-fun m!5875526 () Bool)

(assert (=> b!4874316 m!5875526))

(assert (=> b!4874316 m!5875516))

(assert (=> b!4874316 m!5875520))

(assert (=> b!4874316 m!5875522))

(declare-fun m!5875528 () Bool)

(assert (=> b!4874322 m!5875528))

(declare-fun m!5875530 () Bool)

(assert (=> b!4874322 m!5875530))

(declare-fun m!5875532 () Bool)

(assert (=> b!4874318 m!5875532))

(declare-fun m!5875534 () Bool)

(assert (=> b!4874317 m!5875534))

(check-sat (not b_next!131585) (not b!4874315) (not b!4874311) (not b!4874316) b_and!343327 (not b!4874321) (not b!4874310) (not b!4874319) (not b!4874318) (not b!4874312) b_and!343329 (not b_next!131587) (not start!509828) (not b!4874314) (not b!4874313) (not b!4874323) (not b!4874317) (not b!4874322))
(check-sat b_and!343329 b_and!343327 (not b_next!131585) (not b_next!131587))
(get-model)

(declare-fun d!1565533 () Bool)

(declare-fun list!17535 (Conc!14601) List!56131)

(assert (=> d!1565533 (= (list!17533 (_2!33245 (v!49734 lt!1997269))) (list!17535 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun bs!1174913 () Bool)

(assert (= bs!1174913 d!1565533))

(declare-fun m!5875536 () Bool)

(assert (=> bs!1174913 m!5875536))

(assert (=> b!4874316 d!1565533))

(declare-fun b!4874353 () Bool)

(declare-fun e!3046857 () Bool)

(declare-fun e!3046858 () Bool)

(assert (=> b!4874353 (= e!3046857 e!3046858)))

(declare-fun res!2080732 () Bool)

(declare-fun lt!1997295 () tuple2!59886)

(assert (=> b!4874353 (= res!2080732 (< (size!36931 (_2!33246 lt!1997295)) (size!36931 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> b!4874353 (=> (not res!2080732) (not e!3046858))))

(declare-fun b!4874354 () Bool)

(declare-fun res!2080733 () Bool)

(declare-fun e!3046859 () Bool)

(assert (=> b!4874354 (=> (not res!2080733) (not e!3046859))))

(assert (=> b!4874354 (= res!2080733 (= (list!17534 (_1!33246 lt!1997295)) (_1!33247 (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874355 () Bool)

(declare-fun e!3046856 () tuple2!59886)

(declare-fun lt!1997294 () tuple2!59886)

(declare-fun lt!1997296 () Option!13801)

(assert (=> b!4874355 (= e!3046856 (tuple2!59887 (prepend!1404 (_1!33246 lt!1997294) (_1!33245 (v!49734 lt!1997296))) (_2!33246 lt!1997294)))))

(assert (=> b!4874355 (= lt!1997294 (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997296))))))

(declare-fun b!4874356 () Bool)

(assert (=> b!4874356 (= e!3046857 (= (list!17533 (_2!33246 lt!1997295)) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4874357 () Bool)

(assert (=> b!4874357 (= e!3046856 (tuple2!59887 (BalanceConc!28647 Empty!14602) (_2!33245 (v!49734 lt!1997269))))))

(declare-fun d!1565535 () Bool)

(assert (=> d!1565535 e!3046859))

(declare-fun res!2080731 () Bool)

(assert (=> d!1565535 (=> (not res!2080731) (not e!3046859))))

(assert (=> d!1565535 (= res!2080731 e!3046857)))

(declare-fun c!829001 () Bool)

(assert (=> d!1565535 (= c!829001 (> (size!36932 (_1!33246 lt!1997295)) 0))))

(assert (=> d!1565535 (= lt!1997295 e!3046856)))

(declare-fun c!829002 () Bool)

(assert (=> d!1565535 (= c!829002 ((_ is Some!13800) lt!1997296))))

(assert (=> d!1565535 (= lt!1997296 (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1565535 (= (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997269))) lt!1997295)))

(declare-fun b!4874358 () Bool)

(assert (=> b!4874358 (= e!3046858 (not (isEmpty!29990 (_1!33246 lt!1997295))))))

(declare-fun b!4874359 () Bool)

(assert (=> b!4874359 (= e!3046859 (= (list!17533 (_2!33246 lt!1997295)) (_2!33247 (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (= (and d!1565535 c!829002) b!4874355))

(assert (= (and d!1565535 (not c!829002)) b!4874357))

(assert (= (and d!1565535 c!829001) b!4874353))

(assert (= (and d!1565535 (not c!829001)) b!4874356))

(assert (= (and b!4874353 res!2080732) b!4874358))

(assert (= (and d!1565535 res!2080731) b!4874354))

(assert (= (and b!4874354 res!2080733) b!4874359))

(declare-fun m!5875572 () Bool)

(assert (=> b!4874359 m!5875572))

(assert (=> b!4874359 m!5875522))

(assert (=> b!4874359 m!5875522))

(declare-fun m!5875574 () Bool)

(assert (=> b!4874359 m!5875574))

(declare-fun m!5875576 () Bool)

(assert (=> d!1565535 m!5875576))

(declare-fun m!5875578 () Bool)

(assert (=> d!1565535 m!5875578))

(declare-fun m!5875580 () Bool)

(assert (=> b!4874354 m!5875580))

(assert (=> b!4874354 m!5875522))

(assert (=> b!4874354 m!5875522))

(assert (=> b!4874354 m!5875574))

(declare-fun m!5875582 () Bool)

(assert (=> b!4874355 m!5875582))

(declare-fun m!5875584 () Bool)

(assert (=> b!4874355 m!5875584))

(assert (=> b!4874356 m!5875572))

(assert (=> b!4874356 m!5875522))

(declare-fun m!5875586 () Bool)

(assert (=> b!4874353 m!5875586))

(declare-fun m!5875588 () Bool)

(assert (=> b!4874353 m!5875588))

(declare-fun m!5875590 () Bool)

(assert (=> b!4874358 m!5875590))

(assert (=> b!4874316 d!1565535))

(declare-fun d!1565557 () Bool)

(assert (=> d!1565557 (= (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))) (list!17535 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))

(declare-fun bs!1174919 () Bool)

(assert (= bs!1174919 d!1565557))

(declare-fun m!5875592 () Bool)

(assert (=> bs!1174919 m!5875592))

(assert (=> b!4874316 d!1565557))

(declare-fun b!4874370 () Bool)

(declare-fun res!2080738 () Bool)

(declare-fun e!3046864 () Bool)

(assert (=> b!4874370 (=> (not res!2080738) (not e!3046864))))

(declare-fun lt!1997299 () List!56131)

(declare-fun size!36933 (List!56131) Int)

(assert (=> b!4874370 (= res!2080738 (= (size!36933 lt!1997299) (+ (size!36933 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874368 () Bool)

(declare-fun e!3046865 () List!56131)

(assert (=> b!4874368 (= e!3046865 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4874371 () Bool)

(assert (=> b!4874371 (= e!3046864 (or (not (= (list!17533 (_2!33245 (v!49734 lt!1997269))) Nil!56007)) (= lt!1997299 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874369 () Bool)

(assert (=> b!4874369 (= e!3046865 (Cons!56007 (h!62455 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) (++!12201 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun d!1565559 () Bool)

(assert (=> d!1565559 e!3046864))

(declare-fun res!2080739 () Bool)

(assert (=> d!1565559 (=> (not res!2080739) (not e!3046864))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9993 (List!56131) (InoxSet C!26444))

(assert (=> d!1565559 (= res!2080739 (= (content!9993 lt!1997299) ((_ map or) (content!9993 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) (content!9993 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1565559 (= lt!1997299 e!3046865)))

(declare-fun c!829005 () Bool)

(assert (=> d!1565559 (= c!829005 ((_ is Nil!56007) (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1565559 (= (++!12201 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))) (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1997299)))

(assert (= (and d!1565559 c!829005) b!4874368))

(assert (= (and d!1565559 (not c!829005)) b!4874369))

(assert (= (and d!1565559 res!2080739) b!4874370))

(assert (= (and b!4874370 res!2080738) b!4874371))

(declare-fun m!5875594 () Bool)

(assert (=> b!4874370 m!5875594))

(assert (=> b!4874370 m!5875520))

(declare-fun m!5875596 () Bool)

(assert (=> b!4874370 m!5875596))

(assert (=> b!4874370 m!5875522))

(declare-fun m!5875598 () Bool)

(assert (=> b!4874370 m!5875598))

(assert (=> b!4874369 m!5875522))

(declare-fun m!5875600 () Bool)

(assert (=> b!4874369 m!5875600))

(declare-fun m!5875602 () Bool)

(assert (=> d!1565559 m!5875602))

(assert (=> d!1565559 m!5875520))

(declare-fun m!5875604 () Bool)

(assert (=> d!1565559 m!5875604))

(assert (=> d!1565559 m!5875522))

(declare-fun m!5875606 () Bool)

(assert (=> d!1565559 m!5875606))

(assert (=> b!4874316 d!1565559))

(declare-fun d!1565561 () Bool)

(declare-fun lt!1997302 () BalanceConc!28644)

(assert (=> d!1565561 (= (list!17533 lt!1997302) (originalCharacters!8371 (_1!33245 (v!49734 lt!1997269))))))

(declare-fun dynLambda!22505 (Int TokenValue!8358) BalanceConc!28644)

(assert (=> d!1565561 (= lt!1997302 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565561 (= (charsOf!5347 (_1!33245 (v!49734 lt!1997269))) lt!1997302)))

(declare-fun b_lambda!193841 () Bool)

(assert (=> (not b_lambda!193841) (not d!1565561)))

(declare-fun tb!258171 () Bool)

(declare-fun t!364443 () Bool)

(assert (=> (and b!4874320 (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269)))))) t!364443) tb!258171))

(declare-fun b!4874376 () Bool)

(declare-fun e!3046868 () Bool)

(declare-fun tp!1371632 () Bool)

(assert (=> b!4874376 (= e!3046868 (and (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) tp!1371632))))

(declare-fun result!321378 () Bool)

(assert (=> tb!258171 (= result!321378 (and (inv!71944 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))) e!3046868))))

(assert (= tb!258171 b!4874376))

(declare-fun m!5875608 () Bool)

(assert (=> b!4874376 m!5875608))

(declare-fun m!5875610 () Bool)

(assert (=> tb!258171 m!5875610))

(assert (=> d!1565561 t!364443))

(declare-fun b_and!343331 () Bool)

(assert (= b_and!343329 (and (=> t!364443 result!321378) b_and!343331)))

(declare-fun m!5875612 () Bool)

(assert (=> d!1565561 m!5875612))

(declare-fun m!5875614 () Bool)

(assert (=> d!1565561 m!5875614))

(assert (=> b!4874316 d!1565561))

(declare-fun d!1565563 () Bool)

(assert (=> d!1565563 (= (list!17533 input!585) (list!17535 (c!828991 input!585)))))

(declare-fun bs!1174920 () Bool)

(assert (= bs!1174920 d!1565563))

(declare-fun m!5875616 () Bool)

(assert (=> bs!1174920 m!5875616))

(assert (=> b!4874316 d!1565563))

(declare-fun d!1565565 () Bool)

(declare-fun lt!1997305 () Bool)

(declare-fun isEmpty!29994 (List!56133) Bool)

(assert (=> d!1565565 (= lt!1997305 (isEmpty!29994 (list!17534 lt!1997270)))))

(declare-fun isEmpty!29995 (Conc!14602) Bool)

(assert (=> d!1565565 (= lt!1997305 (isEmpty!29995 (c!828992 lt!1997270)))))

(assert (=> d!1565565 (= (isEmpty!29990 lt!1997270) lt!1997305)))

(declare-fun bs!1174921 () Bool)

(assert (= bs!1174921 d!1565565))

(assert (=> bs!1174921 m!5875508))

(assert (=> bs!1174921 m!5875508))

(declare-fun m!5875618 () Bool)

(assert (=> bs!1174921 m!5875618))

(declare-fun m!5875620 () Bool)

(assert (=> bs!1174921 m!5875620))

(assert (=> b!4874315 d!1565565))

(declare-fun d!1565567 () Bool)

(declare-fun list!17537 (Conc!14602) List!56133)

(assert (=> d!1565567 (= (list!17534 lt!1997270) (list!17537 (c!828992 lt!1997270)))))

(declare-fun bs!1174922 () Bool)

(assert (= bs!1174922 d!1565567))

(declare-fun m!5875622 () Bool)

(assert (=> bs!1174922 m!5875622))

(assert (=> b!4874319 d!1565567))

(declare-fun b!4874387 () Bool)

(declare-fun e!3046877 () Bool)

(declare-fun lt!1997321 () tuple2!59888)

(assert (=> b!4874387 (= e!3046877 (= (_2!33247 lt!1997321) lt!1997273))))

(declare-fun b!4874388 () Bool)

(declare-fun e!3046876 () tuple2!59888)

(assert (=> b!4874388 (= e!3046876 (tuple2!59889 Nil!56009 lt!1997273))))

(declare-fun b!4874389 () Bool)

(declare-fun e!3046875 () Bool)

(assert (=> b!4874389 (= e!3046877 e!3046875)))

(declare-fun res!2080742 () Bool)

(assert (=> b!4874389 (= res!2080742 (< (size!36933 (_2!33247 lt!1997321)) (size!36933 lt!1997273)))))

(assert (=> b!4874389 (=> (not res!2080742) (not e!3046875))))

(declare-fun b!4874390 () Bool)

(assert (=> b!4874390 (= e!3046875 (not (isEmpty!29994 (_1!33247 lt!1997321))))))

(declare-fun b!4874391 () Bool)

(declare-datatypes ((tuple2!59890 0))(
  ( (tuple2!59891 (_1!33248 Token!14680) (_2!33248 List!56131)) )
))
(declare-datatypes ((Option!13802 0))(
  ( (None!13801) (Some!13801 (v!49737 tuple2!59890)) )
))
(declare-fun lt!1997320 () Option!13802)

(declare-fun lt!1997323 () tuple2!59888)

(assert (=> b!4874391 (= e!3046876 (tuple2!59889 (Cons!56009 (_1!33248 (v!49737 lt!1997320)) (_1!33247 lt!1997323)) (_2!33247 lt!1997323)))))

(assert (=> b!4874391 (= lt!1997323 (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997320))))))

(declare-fun d!1565569 () Bool)

(assert (=> d!1565569 e!3046877))

(declare-fun c!829011 () Bool)

(declare-fun size!36938 (List!56133) Int)

(assert (=> d!1565569 (= c!829011 (> (size!36938 (_1!33247 lt!1997321)) 0))))

(assert (=> d!1565569 (= lt!1997321 e!3046876)))

(declare-fun c!829010 () Bool)

(assert (=> d!1565569 (= c!829010 ((_ is Some!13801) lt!1997320))))

(declare-fun maxPrefix!4554 (LexerInterface!7640 List!56132 List!56131) Option!13802)

(assert (=> d!1565569 (= lt!1997320 (maxPrefix!4554 thiss!11460 rules!1164 lt!1997273))))

(assert (=> d!1565569 (= (lexList!2111 thiss!11460 rules!1164 lt!1997273) lt!1997321)))

(assert (= (and d!1565569 c!829010) b!4874391))

(assert (= (and d!1565569 (not c!829010)) b!4874388))

(assert (= (and d!1565569 c!829011) b!4874389))

(assert (= (and d!1565569 (not c!829011)) b!4874387))

(assert (= (and b!4874389 res!2080742) b!4874390))

(declare-fun m!5875624 () Bool)

(assert (=> b!4874389 m!5875624))

(declare-fun m!5875626 () Bool)

(assert (=> b!4874389 m!5875626))

(declare-fun m!5875628 () Bool)

(assert (=> b!4874390 m!5875628))

(declare-fun m!5875630 () Bool)

(assert (=> b!4874391 m!5875630))

(declare-fun m!5875632 () Bool)

(assert (=> d!1565569 m!5875632))

(declare-fun m!5875634 () Bool)

(assert (=> d!1565569 m!5875634))

(assert (=> b!4874319 d!1565569))

(declare-fun d!1565571 () Bool)

(assert (=> d!1565571 (= (isEmpty!29991 rules!1164) ((_ is Nil!56008) rules!1164))))

(assert (=> b!4874318 d!1565571))

(declare-fun d!1565573 () Bool)

(declare-fun res!2080757 () Bool)

(declare-fun e!3046892 () Bool)

(assert (=> d!1565573 (=> (not res!2080757) (not e!3046892))))

(declare-fun rulesValid!3128 (LexerInterface!7640 List!56132) Bool)

(assert (=> d!1565573 (= res!2080757 (rulesValid!3128 thiss!11460 rules!1164))))

(assert (=> d!1565573 (= (rulesInvariant!6738 thiss!11460 rules!1164) e!3046892)))

(declare-fun b!4874410 () Bool)

(declare-datatypes ((List!56135 0))(
  ( (Nil!56011) (Cons!56011 (h!62459 String!63208) (t!364451 List!56135)) )
))
(declare-fun noDuplicateTag!3289 (LexerInterface!7640 List!56132 List!56135) Bool)

(assert (=> b!4874410 (= e!3046892 (noDuplicateTag!3289 thiss!11460 rules!1164 Nil!56011))))

(assert (= (and d!1565573 res!2080757) b!4874410))

(declare-fun m!5875636 () Bool)

(assert (=> d!1565573 m!5875636))

(declare-fun m!5875638 () Bool)

(assert (=> b!4874410 m!5875638))

(assert (=> b!4874317 d!1565573))

(declare-fun d!1565575 () Bool)

(assert (=> d!1565575 (= (list!17533 (_2!33246 lt!1997274)) (list!17535 (c!828991 (_2!33246 lt!1997274))))))

(declare-fun bs!1174923 () Bool)

(assert (= bs!1174923 d!1565575))

(declare-fun m!5875640 () Bool)

(assert (=> bs!1174923 m!5875640))

(assert (=> b!4874311 d!1565575))

(declare-fun b!4874453 () Bool)

(declare-fun e!3046923 () Bool)

(declare-fun e!3046928 () Bool)

(assert (=> b!4874453 (= e!3046923 e!3046928)))

(declare-fun res!2080782 () Bool)

(assert (=> b!4874453 (=> (not res!2080782) (not e!3046928))))

(declare-fun lt!1997360 () Option!13801)

(declare-fun get!19247 (Option!13801) tuple2!59884)

(declare-fun get!19248 (Option!13802) tuple2!59890)

(assert (=> b!4874453 (= res!2080782 (= (_1!33245 (get!19247 lt!1997360)) (_1!33248 (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 input!585))))))))

(declare-fun b!4874454 () Bool)

(declare-fun e!3046925 () Bool)

(declare-fun e!3046924 () Bool)

(assert (=> b!4874454 (= e!3046925 e!3046924)))

(declare-fun res!2080787 () Bool)

(assert (=> b!4874454 (=> (not res!2080787) (not e!3046924))))

(declare-fun maxPrefixZipper!569 (LexerInterface!7640 List!56132 List!56131) Option!13802)

(assert (=> b!4874454 (= res!2080787 (= (_1!33245 (get!19247 lt!1997360)) (_1!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585))))))))

(declare-fun b!4874455 () Bool)

(assert (=> b!4874455 (= e!3046924 (= (list!17533 (_2!33245 (get!19247 lt!1997360))) (_2!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585))))))))

(declare-fun b!4874456 () Bool)

(declare-fun res!2080786 () Bool)

(declare-fun e!3046926 () Bool)

(assert (=> b!4874456 (=> (not res!2080786) (not e!3046926))))

(assert (=> b!4874456 (= res!2080786 e!3046925)))

(declare-fun res!2080783 () Bool)

(assert (=> b!4874456 (=> res!2080783 e!3046925)))

(declare-fun isDefined!10860 (Option!13801) Bool)

(assert (=> b!4874456 (= res!2080783 (not (isDefined!10860 lt!1997360)))))

(declare-fun bm!338385 () Bool)

(declare-fun call!338390 () Option!13801)

(declare-fun maxPrefixOneRuleZipperSequence!582 (LexerInterface!7640 Rule!15896 BalanceConc!28644) Option!13801)

(assert (=> bm!338385 (= call!338390 (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 rules!1164) input!585))))

(declare-fun b!4874457 () Bool)

(assert (=> b!4874457 (= e!3046926 e!3046923)))

(declare-fun res!2080785 () Bool)

(assert (=> b!4874457 (=> res!2080785 e!3046923)))

(assert (=> b!4874457 (= res!2080785 (not (isDefined!10860 lt!1997360)))))

(declare-fun b!4874458 () Bool)

(declare-fun e!3046927 () Option!13801)

(declare-fun lt!1997363 () Option!13801)

(declare-fun lt!1997361 () Option!13801)

(assert (=> b!4874458 (= e!3046927 (ite (and ((_ is None!13800) lt!1997363) ((_ is None!13800) lt!1997361)) None!13800 (ite ((_ is None!13800) lt!1997361) lt!1997363 (ite ((_ is None!13800) lt!1997363) lt!1997361 (ite (>= (size!36930 (_1!33245 (v!49734 lt!1997363))) (size!36930 (_1!33245 (v!49734 lt!1997361)))) lt!1997363 lt!1997361)))))))

(assert (=> b!4874458 (= lt!1997363 call!338390)))

(assert (=> b!4874458 (= lt!1997361 (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 rules!1164) input!585))))

(declare-fun b!4874460 () Bool)

(assert (=> b!4874460 (= e!3046927 call!338390)))

(declare-fun b!4874459 () Bool)

(assert (=> b!4874459 (= e!3046928 (= (list!17533 (_2!33245 (get!19247 lt!1997360))) (_2!33248 (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 input!585))))))))

(declare-fun d!1565577 () Bool)

(assert (=> d!1565577 e!3046926))

(declare-fun res!2080784 () Bool)

(assert (=> d!1565577 (=> (not res!2080784) (not e!3046926))))

(declare-fun isDefined!10861 (Option!13802) Bool)

(assert (=> d!1565577 (= res!2080784 (= (isDefined!10860 lt!1997360) (isDefined!10861 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585)))))))

(assert (=> d!1565577 (= lt!1997360 e!3046927)))

(declare-fun c!829023 () Bool)

(assert (=> d!1565577 (= c!829023 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-datatypes ((Unit!146004 0))(
  ( (Unit!146005) )
))
(declare-fun lt!1997362 () Unit!146004)

(declare-fun lt!1997359 () Unit!146004)

(assert (=> d!1565577 (= lt!1997362 lt!1997359)))

(declare-fun lt!1997365 () List!56131)

(declare-fun lt!1997364 () List!56131)

(declare-fun isPrefix!4772 (List!56131 List!56131) Bool)

(assert (=> d!1565577 (isPrefix!4772 lt!1997365 lt!1997364)))

(declare-fun lemmaIsPrefixRefl!3169 (List!56131 List!56131) Unit!146004)

(assert (=> d!1565577 (= lt!1997359 (lemmaIsPrefixRefl!3169 lt!1997365 lt!1997364))))

(assert (=> d!1565577 (= lt!1997364 (list!17533 input!585))))

(assert (=> d!1565577 (= lt!1997365 (list!17533 input!585))))

(declare-fun rulesValidInductive!3027 (LexerInterface!7640 List!56132) Bool)

(assert (=> d!1565577 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1565577 (= (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 input!585) lt!1997360)))

(assert (= (and d!1565577 c!829023) b!4874460))

(assert (= (and d!1565577 (not c!829023)) b!4874458))

(assert (= (or b!4874460 b!4874458) bm!338385))

(assert (= (and d!1565577 res!2080784) b!4874456))

(assert (= (and b!4874456 (not res!2080783)) b!4874454))

(assert (= (and b!4874454 res!2080787) b!4874455))

(assert (= (and b!4874456 res!2080786) b!4874457))

(assert (= (and b!4874457 (not res!2080785)) b!4874453))

(assert (= (and b!4874453 res!2080782) b!4874459))

(declare-fun m!5875690 () Bool)

(assert (=> b!4874455 m!5875690))

(declare-fun m!5875692 () Bool)

(assert (=> b!4874455 m!5875692))

(declare-fun m!5875694 () Bool)

(assert (=> b!4874455 m!5875694))

(assert (=> b!4874455 m!5875518))

(assert (=> b!4874455 m!5875518))

(assert (=> b!4874455 m!5875692))

(declare-fun m!5875696 () Bool)

(assert (=> b!4874455 m!5875696))

(declare-fun m!5875698 () Bool)

(assert (=> bm!338385 m!5875698))

(assert (=> b!4874453 m!5875690))

(assert (=> b!4874453 m!5875518))

(assert (=> b!4874453 m!5875518))

(declare-fun m!5875700 () Bool)

(assert (=> b!4874453 m!5875700))

(assert (=> b!4874453 m!5875700))

(declare-fun m!5875702 () Bool)

(assert (=> b!4874453 m!5875702))

(declare-fun m!5875704 () Bool)

(assert (=> b!4874457 m!5875704))

(assert (=> b!4874454 m!5875690))

(assert (=> b!4874454 m!5875518))

(assert (=> b!4874454 m!5875518))

(assert (=> b!4874454 m!5875692))

(assert (=> b!4874454 m!5875692))

(assert (=> b!4874454 m!5875694))

(declare-fun m!5875706 () Bool)

(assert (=> b!4874458 m!5875706))

(assert (=> b!4874459 m!5875700))

(assert (=> b!4874459 m!5875702))

(assert (=> b!4874459 m!5875696))

(assert (=> b!4874459 m!5875690))

(assert (=> b!4874459 m!5875518))

(assert (=> b!4874459 m!5875700))

(assert (=> b!4874459 m!5875518))

(declare-fun m!5875708 () Bool)

(assert (=> d!1565577 m!5875708))

(declare-fun m!5875710 () Bool)

(assert (=> d!1565577 m!5875710))

(assert (=> d!1565577 m!5875704))

(assert (=> d!1565577 m!5875692))

(declare-fun m!5875712 () Bool)

(assert (=> d!1565577 m!5875712))

(assert (=> d!1565577 m!5875518))

(assert (=> d!1565577 m!5875518))

(assert (=> d!1565577 m!5875692))

(declare-fun m!5875714 () Bool)

(assert (=> d!1565577 m!5875714))

(assert (=> b!4874456 m!5875704))

(assert (=> b!4874310 d!1565577))

(declare-fun d!1565593 () Bool)

(declare-fun lt!1997368 () Int)

(assert (=> d!1565593 (= lt!1997368 (size!36933 (list!17533 (_2!33246 lt!1997274))))))

(declare-fun size!36939 (Conc!14601) Int)

(assert (=> d!1565593 (= lt!1997368 (size!36939 (c!828991 (_2!33246 lt!1997274))))))

(assert (=> d!1565593 (= (size!36931 (_2!33246 lt!1997274)) lt!1997368)))

(declare-fun bs!1174927 () Bool)

(assert (= bs!1174927 d!1565593))

(assert (=> bs!1174927 m!5875494))

(assert (=> bs!1174927 m!5875494))

(declare-fun m!5875716 () Bool)

(assert (=> bs!1174927 m!5875716))

(declare-fun m!5875718 () Bool)

(assert (=> bs!1174927 m!5875718))

(assert (=> b!4874321 d!1565593))

(declare-fun d!1565595 () Bool)

(declare-fun lt!1997369 () Int)

(assert (=> d!1565595 (= lt!1997369 (size!36933 (list!17533 input!585)))))

(assert (=> d!1565595 (= lt!1997369 (size!36939 (c!828991 input!585)))))

(assert (=> d!1565595 (= (size!36931 input!585) lt!1997369)))

(declare-fun bs!1174928 () Bool)

(assert (= bs!1174928 d!1565595))

(assert (=> bs!1174928 m!5875518))

(assert (=> bs!1174928 m!5875518))

(declare-fun m!5875720 () Bool)

(assert (=> bs!1174928 m!5875720))

(declare-fun m!5875722 () Bool)

(assert (=> bs!1174928 m!5875722))

(assert (=> b!4874321 d!1565595))

(declare-fun d!1565597 () Bool)

(declare-fun c!829026 () Bool)

(assert (=> d!1565597 (= c!829026 ((_ is Node!14601) (c!828991 input!585)))))

(declare-fun e!3046933 () Bool)

(assert (=> d!1565597 (= (inv!71943 (c!828991 input!585)) e!3046933)))

(declare-fun b!4874467 () Bool)

(declare-fun inv!71947 (Conc!14601) Bool)

(assert (=> b!4874467 (= e!3046933 (inv!71947 (c!828991 input!585)))))

(declare-fun b!4874468 () Bool)

(declare-fun e!3046934 () Bool)

(assert (=> b!4874468 (= e!3046933 e!3046934)))

(declare-fun res!2080790 () Bool)

(assert (=> b!4874468 (= res!2080790 (not ((_ is Leaf!24336) (c!828991 input!585))))))

(assert (=> b!4874468 (=> res!2080790 e!3046934)))

(declare-fun b!4874469 () Bool)

(declare-fun inv!71948 (Conc!14601) Bool)

(assert (=> b!4874469 (= e!3046934 (inv!71948 (c!828991 input!585)))))

(assert (= (and d!1565597 c!829026) b!4874467))

(assert (= (and d!1565597 (not c!829026)) b!4874468))

(assert (= (and b!4874468 (not res!2080790)) b!4874469))

(declare-fun m!5875724 () Bool)

(assert (=> b!4874467 m!5875724))

(declare-fun m!5875726 () Bool)

(assert (=> b!4874469 m!5875726))

(assert (=> b!4874313 d!1565597))

(declare-fun d!1565599 () Bool)

(declare-fun isBalanced!3964 (Conc!14601) Bool)

(assert (=> d!1565599 (= (inv!71944 input!585) (isBalanced!3964 (c!828991 input!585)))))

(declare-fun bs!1174929 () Bool)

(assert (= bs!1174929 d!1565599))

(declare-fun m!5875728 () Bool)

(assert (=> bs!1174929 m!5875728))

(assert (=> start!509828 d!1565599))

(declare-fun d!1565601 () Bool)

(assert (=> d!1565601 (= (inv!71938 (tag!8912 (h!62456 rules!1164))) (= (mod (str.len (value!258509 (tag!8912 (h!62456 rules!1164)))) 2) 0))))

(assert (=> b!4874312 d!1565601))

(declare-fun d!1565603 () Bool)

(declare-fun res!2080793 () Bool)

(declare-fun e!3046937 () Bool)

(assert (=> d!1565603 (=> (not res!2080793) (not e!3046937))))

(declare-fun semiInverseModEq!3551 (Int Int) Bool)

(assert (=> d!1565603 (= res!2080793 (semiInverseModEq!3551 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))))))

(assert (=> d!1565603 (= (inv!71942 (transformation!8048 (h!62456 rules!1164))) e!3046937)))

(declare-fun b!4874472 () Bool)

(declare-fun equivClasses!3430 (Int Int) Bool)

(assert (=> b!4874472 (= e!3046937 (equivClasses!3430 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))))))

(assert (= (and d!1565603 res!2080793) b!4874472))

(declare-fun m!5875730 () Bool)

(assert (=> d!1565603 m!5875730))

(declare-fun m!5875732 () Bool)

(assert (=> b!4874472 m!5875732))

(assert (=> b!4874312 d!1565603))

(assert (=> b!4874323 d!1565575))

(declare-fun d!1565605 () Bool)

(declare-fun lt!1997372 () Int)

(assert (=> d!1565605 (= lt!1997372 (size!36938 (list!17534 lt!1997270)))))

(declare-fun size!36940 (Conc!14602) Int)

(assert (=> d!1565605 (= lt!1997372 (size!36940 (c!828992 lt!1997270)))))

(assert (=> d!1565605 (= (size!36932 lt!1997270) lt!1997372)))

(declare-fun bs!1174930 () Bool)

(assert (= bs!1174930 d!1565605))

(assert (=> bs!1174930 m!5875508))

(assert (=> bs!1174930 m!5875508))

(declare-fun m!5875734 () Bool)

(assert (=> bs!1174930 m!5875734))

(declare-fun m!5875736 () Bool)

(assert (=> bs!1174930 m!5875736))

(assert (=> b!4874322 d!1565605))

(declare-fun d!1565607 () Bool)

(declare-fun e!3046948 () Bool)

(assert (=> d!1565607 e!3046948))

(declare-fun res!2080802 () Bool)

(assert (=> d!1565607 (=> (not res!2080802) (not e!3046948))))

(declare-fun isBalanced!3966 (Conc!14602) Bool)

(declare-fun prepend!1406 (Conc!14602 Token!14680) Conc!14602)

(assert (=> d!1565607 (= res!2080802 (isBalanced!3966 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))

(declare-fun lt!1997381 () BalanceConc!28646)

(assert (=> d!1565607 (= lt!1997381 (BalanceConc!28647 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565607 (= (prepend!1404 (_1!33246 lt!1997274) (_1!33245 (v!49734 lt!1997269))) lt!1997381)))

(declare-fun b!4874489 () Bool)

(assert (=> b!4874489 (= e!3046948 (= (list!17534 lt!1997381) (Cons!56009 (_1!33245 (v!49734 lt!1997269)) (list!17534 (_1!33246 lt!1997274)))))))

(assert (= (and d!1565607 res!2080802) b!4874489))

(declare-fun m!5875738 () Bool)

(assert (=> d!1565607 m!5875738))

(assert (=> d!1565607 m!5875738))

(declare-fun m!5875740 () Bool)

(assert (=> d!1565607 m!5875740))

(declare-fun m!5875742 () Bool)

(assert (=> b!4874489 m!5875742))

(declare-fun m!5875744 () Bool)

(assert (=> b!4874489 m!5875744))

(assert (=> b!4874322 d!1565607))

(declare-fun b!4874507 () Bool)

(declare-fun b_free!130799 () Bool)

(declare-fun b_next!131589 () Bool)

(assert (=> b!4874507 (= b_free!130799 (not b_next!131589))))

(declare-fun tp!1371641 () Bool)

(declare-fun b_and!343333 () Bool)

(assert (=> b!4874507 (= tp!1371641 b_and!343333)))

(declare-fun b_free!130801 () Bool)

(declare-fun b_next!131591 () Bool)

(assert (=> b!4874507 (= b_free!130801 (not b_next!131591))))

(declare-fun tb!258173 () Bool)

(declare-fun t!364445 () Bool)

(assert (=> (and b!4874507 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269)))))) t!364445) tb!258173))

(declare-fun result!321384 () Bool)

(assert (= result!321384 result!321378))

(assert (=> d!1565561 t!364445))

(declare-fun tp!1371643 () Bool)

(declare-fun b_and!343335 () Bool)

(assert (=> b!4874507 (= tp!1371643 (and (=> t!364445 result!321384) b_and!343335))))

(declare-fun e!3046963 () Bool)

(assert (=> b!4874507 (= e!3046963 (and tp!1371641 tp!1371643))))

(declare-fun b!4874506 () Bool)

(declare-fun e!3046964 () Bool)

(declare-fun tp!1371642 () Bool)

(assert (=> b!4874506 (= e!3046964 (and tp!1371642 (inv!71938 (tag!8912 (h!62456 (t!364440 rules!1164)))) (inv!71942 (transformation!8048 (h!62456 (t!364440 rules!1164)))) e!3046963))))

(declare-fun b!4874505 () Bool)

(declare-fun e!3046962 () Bool)

(declare-fun tp!1371644 () Bool)

(assert (=> b!4874505 (= e!3046962 (and e!3046964 tp!1371644))))

(assert (=> b!4874314 (= tp!1371628 e!3046962)))

(assert (= b!4874506 b!4874507))

(assert (= b!4874505 b!4874506))

(assert (= (and b!4874314 ((_ is Cons!56008) (t!364440 rules!1164))) b!4874505))

(declare-fun m!5875746 () Bool)

(assert (=> b!4874506 m!5875746))

(declare-fun m!5875748 () Bool)

(assert (=> b!4874506 m!5875748))

(declare-fun tp!1371652 () Bool)

(declare-fun e!3046969 () Bool)

(declare-fun b!4874516 () Bool)

(declare-fun tp!1371653 () Bool)

(assert (=> b!4874516 (= e!3046969 (and (inv!71943 (left!40681 (c!828991 input!585))) tp!1371652 (inv!71943 (right!41011 (c!828991 input!585))) tp!1371653))))

(declare-fun b!4874518 () Bool)

(declare-fun e!3046970 () Bool)

(declare-fun tp!1371651 () Bool)

(assert (=> b!4874518 (= e!3046970 tp!1371651)))

(declare-fun b!4874517 () Bool)

(declare-fun inv!71949 (IArray!29263) Bool)

(assert (=> b!4874517 (= e!3046969 (and (inv!71949 (xs!17909 (c!828991 input!585))) e!3046970))))

(assert (=> b!4874313 (= tp!1371629 (and (inv!71943 (c!828991 input!585)) e!3046969))))

(assert (= (and b!4874313 ((_ is Node!14601) (c!828991 input!585))) b!4874516))

(assert (= b!4874517 b!4874518))

(assert (= (and b!4874313 ((_ is Leaf!24336) (c!828991 input!585))) b!4874517))

(declare-fun m!5875772 () Bool)

(assert (=> b!4874516 m!5875772))

(declare-fun m!5875774 () Bool)

(assert (=> b!4874516 m!5875774))

(declare-fun m!5875776 () Bool)

(assert (=> b!4874517 m!5875776))

(assert (=> b!4874313 m!5875502))

(declare-fun b!4874529 () Bool)

(declare-fun e!3046973 () Bool)

(declare-fun tp_is_empty!35673 () Bool)

(assert (=> b!4874529 (= e!3046973 tp_is_empty!35673)))

(declare-fun b!4874531 () Bool)

(declare-fun tp!1371668 () Bool)

(assert (=> b!4874531 (= e!3046973 tp!1371668)))

(declare-fun b!4874532 () Bool)

(declare-fun tp!1371666 () Bool)

(declare-fun tp!1371667 () Bool)

(assert (=> b!4874532 (= e!3046973 (and tp!1371666 tp!1371667))))

(declare-fun b!4874530 () Bool)

(declare-fun tp!1371665 () Bool)

(declare-fun tp!1371664 () Bool)

(assert (=> b!4874530 (= e!3046973 (and tp!1371665 tp!1371664))))

(assert (=> b!4874312 (= tp!1371626 e!3046973)))

(assert (= (and b!4874312 ((_ is ElementMatch!13123) (regex!8048 (h!62456 rules!1164)))) b!4874529))

(assert (= (and b!4874312 ((_ is Concat!21482) (regex!8048 (h!62456 rules!1164)))) b!4874530))

(assert (= (and b!4874312 ((_ is Star!13123) (regex!8048 (h!62456 rules!1164)))) b!4874531))

(assert (= (and b!4874312 ((_ is Union!13123) (regex!8048 (h!62456 rules!1164)))) b!4874532))

(check-sat (not b_next!131585) (not d!1565565) (not d!1565557) (not b!4874391) (not d!1565595) (not b!4874453) (not b!4874359) (not d!1565603) (not d!1565573) (not b!4874355) (not d!1565567) (not b!4874356) (not b!4874459) b_and!343333 (not b!4874469) (not b!4874472) (not d!1565599) (not b!4874531) (not bm!338385) (not b!4874530) (not b!4874518) (not d!1565559) (not b!4874457) (not b!4874390) (not b!4874454) (not b_next!131591) b_and!343331 (not b!4874532) (not b!4874506) (not b!4874456) b_and!343327 (not b!4874455) (not b!4874389) (not b!4874516) (not b_next!131587) (not b!4874467) (not b!4874489) tp_is_empty!35673 (not d!1565605) (not b!4874313) (not b!4874354) (not d!1565569) (not b!4874410) (not d!1565533) (not b!4874369) (not b!4874376) (not d!1565561) (not d!1565577) (not b!4874353) (not d!1565607) (not d!1565563) (not b!4874517) (not tb!258171) b_and!343335 (not b!4874505) (not b_next!131589) (not d!1565593) (not d!1565575) (not b!4874370) (not d!1565535) (not b!4874358) (not b_lambda!193841) (not b!4874458))
(check-sat b_and!343333 (not b_next!131585) b_and!343327 (not b_next!131587) b_and!343335 (not b_next!131589) (not b_next!131591) b_and!343331)
(get-model)

(declare-fun d!1565617 () Bool)

(declare-fun e!3047004 () Bool)

(assert (=> d!1565617 e!3047004))

(declare-fun res!2080817 () Bool)

(assert (=> d!1565617 (=> (not res!2080817) (not e!3047004))))

(assert (=> d!1565617 (= res!2080817 (isBalanced!3966 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296)))))))

(declare-fun lt!1997391 () BalanceConc!28646)

(assert (=> d!1565617 (= lt!1997391 (BalanceConc!28647 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296)))))))

(assert (=> d!1565617 (= (prepend!1404 (_1!33246 lt!1997294) (_1!33245 (v!49734 lt!1997296))) lt!1997391)))

(declare-fun b!4874586 () Bool)

(assert (=> b!4874586 (= e!3047004 (= (list!17534 lt!1997391) (Cons!56009 (_1!33245 (v!49734 lt!1997296)) (list!17534 (_1!33246 lt!1997294)))))))

(assert (= (and d!1565617 res!2080817) b!4874586))

(declare-fun m!5875812 () Bool)

(assert (=> d!1565617 m!5875812))

(assert (=> d!1565617 m!5875812))

(declare-fun m!5875814 () Bool)

(assert (=> d!1565617 m!5875814))

(declare-fun m!5875816 () Bool)

(assert (=> b!4874586 m!5875816))

(declare-fun m!5875818 () Bool)

(assert (=> b!4874586 m!5875818))

(assert (=> b!4874355 d!1565617))

(declare-fun b!4874587 () Bool)

(declare-fun e!3047006 () Bool)

(declare-fun e!3047007 () Bool)

(assert (=> b!4874587 (= e!3047006 e!3047007)))

(declare-fun res!2080819 () Bool)

(declare-fun lt!1997393 () tuple2!59886)

(assert (=> b!4874587 (= res!2080819 (< (size!36931 (_2!33246 lt!1997393)) (size!36931 (_2!33245 (v!49734 lt!1997296)))))))

(assert (=> b!4874587 (=> (not res!2080819) (not e!3047007))))

(declare-fun b!4874588 () Bool)

(declare-fun res!2080820 () Bool)

(declare-fun e!3047008 () Bool)

(assert (=> b!4874588 (=> (not res!2080820) (not e!3047008))))

(assert (=> b!4874588 (= res!2080820 (= (list!17534 (_1!33246 lt!1997393)) (_1!33247 (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296)))))))))

(declare-fun b!4874589 () Bool)

(declare-fun e!3047005 () tuple2!59886)

(declare-fun lt!1997392 () tuple2!59886)

(declare-fun lt!1997394 () Option!13801)

(assert (=> b!4874589 (= e!3047005 (tuple2!59887 (prepend!1404 (_1!33246 lt!1997392) (_1!33245 (v!49734 lt!1997394))) (_2!33246 lt!1997392)))))

(assert (=> b!4874589 (= lt!1997392 (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997394))))))

(declare-fun b!4874590 () Bool)

(assert (=> b!4874590 (= e!3047006 (= (list!17533 (_2!33246 lt!1997393)) (list!17533 (_2!33245 (v!49734 lt!1997296)))))))

(declare-fun b!4874591 () Bool)

(assert (=> b!4874591 (= e!3047005 (tuple2!59887 (BalanceConc!28647 Empty!14602) (_2!33245 (v!49734 lt!1997296))))))

(declare-fun d!1565619 () Bool)

(assert (=> d!1565619 e!3047008))

(declare-fun res!2080818 () Bool)

(assert (=> d!1565619 (=> (not res!2080818) (not e!3047008))))

(assert (=> d!1565619 (= res!2080818 e!3047006)))

(declare-fun c!829037 () Bool)

(assert (=> d!1565619 (= c!829037 (> (size!36932 (_1!33246 lt!1997393)) 0))))

(assert (=> d!1565619 (= lt!1997393 e!3047005)))

(declare-fun c!829038 () Bool)

(assert (=> d!1565619 (= c!829038 ((_ is Some!13800) lt!1997394))))

(assert (=> d!1565619 (= lt!1997394 (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997296))))))

(assert (=> d!1565619 (= (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997296))) lt!1997393)))

(declare-fun b!4874592 () Bool)

(assert (=> b!4874592 (= e!3047007 (not (isEmpty!29990 (_1!33246 lt!1997393))))))

(declare-fun b!4874593 () Bool)

(assert (=> b!4874593 (= e!3047008 (= (list!17533 (_2!33246 lt!1997393)) (_2!33247 (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296)))))))))

(assert (= (and d!1565619 c!829038) b!4874589))

(assert (= (and d!1565619 (not c!829038)) b!4874591))

(assert (= (and d!1565619 c!829037) b!4874587))

(assert (= (and d!1565619 (not c!829037)) b!4874590))

(assert (= (and b!4874587 res!2080819) b!4874592))

(assert (= (and d!1565619 res!2080818) b!4874588))

(assert (= (and b!4874588 res!2080820) b!4874593))

(declare-fun m!5875820 () Bool)

(assert (=> b!4874593 m!5875820))

(declare-fun m!5875822 () Bool)

(assert (=> b!4874593 m!5875822))

(assert (=> b!4874593 m!5875822))

(declare-fun m!5875824 () Bool)

(assert (=> b!4874593 m!5875824))

(declare-fun m!5875826 () Bool)

(assert (=> d!1565619 m!5875826))

(declare-fun m!5875828 () Bool)

(assert (=> d!1565619 m!5875828))

(declare-fun m!5875830 () Bool)

(assert (=> b!4874588 m!5875830))

(assert (=> b!4874588 m!5875822))

(assert (=> b!4874588 m!5875822))

(assert (=> b!4874588 m!5875824))

(declare-fun m!5875832 () Bool)

(assert (=> b!4874589 m!5875832))

(declare-fun m!5875834 () Bool)

(assert (=> b!4874589 m!5875834))

(assert (=> b!4874590 m!5875820))

(assert (=> b!4874590 m!5875822))

(declare-fun m!5875836 () Bool)

(assert (=> b!4874587 m!5875836))

(declare-fun m!5875838 () Bool)

(assert (=> b!4874587 m!5875838))

(declare-fun m!5875840 () Bool)

(assert (=> b!4874592 m!5875840))

(assert (=> b!4874355 d!1565619))

(declare-fun b!4874606 () Bool)

(declare-fun e!3047014 () Bool)

(declare-fun e!3047013 () Bool)

(assert (=> b!4874606 (= e!3047014 e!3047013)))

(declare-fun res!2080837 () Bool)

(assert (=> b!4874606 (=> (not res!2080837) (not e!3047013))))

(declare-fun height!1936 (Conc!14601) Int)

(assert (=> b!4874606 (= res!2080837 (<= (- 1) (- (height!1936 (left!40681 (c!828991 input!585))) (height!1936 (right!41011 (c!828991 input!585))))))))

(declare-fun b!4874607 () Bool)

(declare-fun res!2080833 () Bool)

(assert (=> b!4874607 (=> (not res!2080833) (not e!3047013))))

(assert (=> b!4874607 (= res!2080833 (<= (- (height!1936 (left!40681 (c!828991 input!585))) (height!1936 (right!41011 (c!828991 input!585)))) 1))))

(declare-fun b!4874608 () Bool)

(declare-fun res!2080835 () Bool)

(assert (=> b!4874608 (=> (not res!2080835) (not e!3047013))))

(assert (=> b!4874608 (= res!2080835 (isBalanced!3964 (right!41011 (c!828991 input!585))))))

(declare-fun b!4874609 () Bool)

(declare-fun res!2080836 () Bool)

(assert (=> b!4874609 (=> (not res!2080836) (not e!3047013))))

(assert (=> b!4874609 (= res!2080836 (isBalanced!3964 (left!40681 (c!828991 input!585))))))

(declare-fun d!1565621 () Bool)

(declare-fun res!2080838 () Bool)

(assert (=> d!1565621 (=> res!2080838 e!3047014)))

(assert (=> d!1565621 (= res!2080838 (not ((_ is Node!14601) (c!828991 input!585))))))

(assert (=> d!1565621 (= (isBalanced!3964 (c!828991 input!585)) e!3047014)))

(declare-fun b!4874610 () Bool)

(declare-fun res!2080834 () Bool)

(assert (=> b!4874610 (=> (not res!2080834) (not e!3047013))))

(declare-fun isEmpty!29996 (Conc!14601) Bool)

(assert (=> b!4874610 (= res!2080834 (not (isEmpty!29996 (left!40681 (c!828991 input!585)))))))

(declare-fun b!4874611 () Bool)

(assert (=> b!4874611 (= e!3047013 (not (isEmpty!29996 (right!41011 (c!828991 input!585)))))))

(assert (= (and d!1565621 (not res!2080838)) b!4874606))

(assert (= (and b!4874606 res!2080837) b!4874607))

(assert (= (and b!4874607 res!2080833) b!4874609))

(assert (= (and b!4874609 res!2080836) b!4874608))

(assert (= (and b!4874608 res!2080835) b!4874610))

(assert (= (and b!4874610 res!2080834) b!4874611))

(declare-fun m!5875842 () Bool)

(assert (=> b!4874606 m!5875842))

(declare-fun m!5875844 () Bool)

(assert (=> b!4874606 m!5875844))

(declare-fun m!5875846 () Bool)

(assert (=> b!4874609 m!5875846))

(assert (=> b!4874607 m!5875842))

(assert (=> b!4874607 m!5875844))

(declare-fun m!5875848 () Bool)

(assert (=> b!4874608 m!5875848))

(declare-fun m!5875850 () Bool)

(assert (=> b!4874611 m!5875850))

(declare-fun m!5875852 () Bool)

(assert (=> b!4874610 m!5875852))

(assert (=> d!1565599 d!1565621))

(declare-fun b!4874622 () Bool)

(declare-fun e!3047020 () List!56131)

(declare-fun list!17539 (IArray!29263) List!56131)

(assert (=> b!4874622 (= e!3047020 (list!17539 (xs!17909 (c!828991 (_2!33246 lt!1997274)))))))

(declare-fun b!4874620 () Bool)

(declare-fun e!3047019 () List!56131)

(assert (=> b!4874620 (= e!3047019 Nil!56007)))

(declare-fun d!1565623 () Bool)

(declare-fun c!829043 () Bool)

(assert (=> d!1565623 (= c!829043 ((_ is Empty!14601) (c!828991 (_2!33246 lt!1997274))))))

(assert (=> d!1565623 (= (list!17535 (c!828991 (_2!33246 lt!1997274))) e!3047019)))

(declare-fun b!4874621 () Bool)

(assert (=> b!4874621 (= e!3047019 e!3047020)))

(declare-fun c!829044 () Bool)

(assert (=> b!4874621 (= c!829044 ((_ is Leaf!24336) (c!828991 (_2!33246 lt!1997274))))))

(declare-fun b!4874623 () Bool)

(assert (=> b!4874623 (= e!3047020 (++!12201 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274)))) (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274))))))))

(assert (= (and d!1565623 c!829043) b!4874620))

(assert (= (and d!1565623 (not c!829043)) b!4874621))

(assert (= (and b!4874621 c!829044) b!4874622))

(assert (= (and b!4874621 (not c!829044)) b!4874623))

(declare-fun m!5875854 () Bool)

(assert (=> b!4874622 m!5875854))

(declare-fun m!5875856 () Bool)

(assert (=> b!4874623 m!5875856))

(declare-fun m!5875858 () Bool)

(assert (=> b!4874623 m!5875858))

(assert (=> b!4874623 m!5875856))

(assert (=> b!4874623 m!5875858))

(declare-fun m!5875860 () Bool)

(assert (=> b!4874623 m!5875860))

(assert (=> d!1565575 d!1565623))

(declare-fun d!1565625 () Bool)

(assert (=> d!1565625 (= (get!19247 lt!1997360) (v!49734 lt!1997360))))

(assert (=> b!4874454 d!1565625))

(declare-fun d!1565627 () Bool)

(assert (=> d!1565627 (= (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585))) (v!49737 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585))))))

(assert (=> b!4874454 d!1565627))

(declare-fun lt!1997406 () Option!13802)

(declare-fun d!1565629 () Bool)

(assert (=> d!1565629 (= lt!1997406 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 input!585)))))

(declare-fun e!3047023 () Option!13802)

(assert (=> d!1565629 (= lt!1997406 e!3047023)))

(declare-fun c!829047 () Bool)

(assert (=> d!1565629 (= c!829047 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1997405 () Unit!146004)

(declare-fun lt!1997409 () Unit!146004)

(assert (=> d!1565629 (= lt!1997405 lt!1997409)))

(assert (=> d!1565629 (isPrefix!4772 (list!17533 input!585) (list!17533 input!585))))

(assert (=> d!1565629 (= lt!1997409 (lemmaIsPrefixRefl!3169 (list!17533 input!585) (list!17533 input!585)))))

(assert (=> d!1565629 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1565629 (= (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585)) lt!1997406)))

(declare-fun call!338393 () Option!13802)

(declare-fun bm!338388 () Bool)

(declare-fun maxPrefixOneRuleZipper!230 (LexerInterface!7640 Rule!15896 List!56131) Option!13802)

(assert (=> bm!338388 (= call!338393 (maxPrefixOneRuleZipper!230 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)))))

(declare-fun b!4874628 () Bool)

(assert (=> b!4874628 (= e!3047023 call!338393)))

(declare-fun b!4874629 () Bool)

(declare-fun lt!1997408 () Option!13802)

(declare-fun lt!1997407 () Option!13802)

(assert (=> b!4874629 (= e!3047023 (ite (and ((_ is None!13801) lt!1997408) ((_ is None!13801) lt!1997407)) None!13801 (ite ((_ is None!13801) lt!1997407) lt!1997408 (ite ((_ is None!13801) lt!1997408) lt!1997407 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1997408))) (size!36930 (_1!33248 (v!49737 lt!1997407)))) lt!1997408 lt!1997407)))))))

(assert (=> b!4874629 (= lt!1997408 call!338393)))

(assert (=> b!4874629 (= lt!1997407 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)))))

(assert (= (and d!1565629 c!829047) b!4874628))

(assert (= (and d!1565629 (not c!829047)) b!4874629))

(assert (= (or b!4874628 b!4874629) bm!338388))

(assert (=> d!1565629 m!5875518))

(assert (=> d!1565629 m!5875700))

(assert (=> d!1565629 m!5875518))

(assert (=> d!1565629 m!5875518))

(declare-fun m!5875862 () Bool)

(assert (=> d!1565629 m!5875862))

(assert (=> d!1565629 m!5875518))

(assert (=> d!1565629 m!5875518))

(declare-fun m!5875864 () Bool)

(assert (=> d!1565629 m!5875864))

(assert (=> d!1565629 m!5875710))

(assert (=> bm!338388 m!5875518))

(declare-fun m!5875866 () Bool)

(assert (=> bm!338388 m!5875866))

(assert (=> b!4874629 m!5875518))

(declare-fun m!5875868 () Bool)

(assert (=> b!4874629 m!5875868))

(assert (=> b!4874454 d!1565629))

(assert (=> b!4874454 d!1565563))

(declare-fun b!4874632 () Bool)

(declare-fun res!2080839 () Bool)

(declare-fun e!3047024 () Bool)

(assert (=> b!4874632 (=> (not res!2080839) (not e!3047024))))

(declare-fun lt!1997410 () List!56131)

(assert (=> b!4874632 (= res!2080839 (= (size!36933 lt!1997410) (+ (size!36933 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874630 () Bool)

(declare-fun e!3047025 () List!56131)

(assert (=> b!4874630 (= e!3047025 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4874633 () Bool)

(assert (=> b!4874633 (= e!3047024 (or (not (= (list!17533 (_2!33245 (v!49734 lt!1997269))) Nil!56007)) (= lt!1997410 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4874631 () Bool)

(assert (=> b!4874631 (= e!3047025 (Cons!56007 (h!62455 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (++!12201 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun d!1565631 () Bool)

(assert (=> d!1565631 e!3047024))

(declare-fun res!2080840 () Bool)

(assert (=> d!1565631 (=> (not res!2080840) (not e!3047024))))

(assert (=> d!1565631 (= res!2080840 (= (content!9993 lt!1997410) ((_ map or) (content!9993 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (content!9993 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1565631 (= lt!1997410 e!3047025)))

(declare-fun c!829048 () Bool)

(assert (=> d!1565631 (= c!829048 ((_ is Nil!56007) (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1565631 (= (++!12201 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1997410)))

(assert (= (and d!1565631 c!829048) b!4874630))

(assert (= (and d!1565631 (not c!829048)) b!4874631))

(assert (= (and d!1565631 res!2080840) b!4874632))

(assert (= (and b!4874632 res!2080839) b!4874633))

(declare-fun m!5875870 () Bool)

(assert (=> b!4874632 m!5875870))

(declare-fun m!5875872 () Bool)

(assert (=> b!4874632 m!5875872))

(assert (=> b!4874632 m!5875522))

(assert (=> b!4874632 m!5875598))

(assert (=> b!4874631 m!5875522))

(declare-fun m!5875874 () Bool)

(assert (=> b!4874631 m!5875874))

(declare-fun m!5875876 () Bool)

(assert (=> d!1565631 m!5875876))

(declare-fun m!5875878 () Bool)

(assert (=> d!1565631 m!5875878))

(assert (=> d!1565631 m!5875522))

(assert (=> d!1565631 m!5875606))

(assert (=> b!4874369 d!1565631))

(declare-fun d!1565633 () Bool)

(declare-fun lt!1997411 () Int)

(assert (=> d!1565633 (= lt!1997411 (size!36938 (list!17534 (_1!33246 lt!1997295))))))

(assert (=> d!1565633 (= lt!1997411 (size!36940 (c!828992 (_1!33246 lt!1997295))))))

(assert (=> d!1565633 (= (size!36932 (_1!33246 lt!1997295)) lt!1997411)))

(declare-fun bs!1174933 () Bool)

(assert (= bs!1174933 d!1565633))

(assert (=> bs!1174933 m!5875580))

(assert (=> bs!1174933 m!5875580))

(declare-fun m!5875880 () Bool)

(assert (=> bs!1174933 m!5875880))

(declare-fun m!5875882 () Bool)

(assert (=> bs!1174933 m!5875882))

(assert (=> d!1565535 d!1565633))

(declare-fun b!4874634 () Bool)

(declare-fun e!3047026 () Bool)

(declare-fun e!3047031 () Bool)

(assert (=> b!4874634 (= e!3047026 e!3047031)))

(declare-fun res!2080841 () Bool)

(assert (=> b!4874634 (=> (not res!2080841) (not e!3047031))))

(declare-fun lt!1997413 () Option!13801)

(assert (=> b!4874634 (= res!2080841 (= (_1!33245 (get!19247 lt!1997413)) (_1!33248 (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4874635 () Bool)

(declare-fun e!3047028 () Bool)

(declare-fun e!3047027 () Bool)

(assert (=> b!4874635 (= e!3047028 e!3047027)))

(declare-fun res!2080846 () Bool)

(assert (=> b!4874635 (=> (not res!2080846) (not e!3047027))))

(assert (=> b!4874635 (= res!2080846 (= (_1!33245 (get!19247 lt!1997413)) (_1!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4874636 () Bool)

(assert (=> b!4874636 (= e!3047027 (= (list!17533 (_2!33245 (get!19247 lt!1997413))) (_2!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4874637 () Bool)

(declare-fun res!2080845 () Bool)

(declare-fun e!3047029 () Bool)

(assert (=> b!4874637 (=> (not res!2080845) (not e!3047029))))

(assert (=> b!4874637 (= res!2080845 e!3047028)))

(declare-fun res!2080842 () Bool)

(assert (=> b!4874637 (=> res!2080842 e!3047028)))

(assert (=> b!4874637 (= res!2080842 (not (isDefined!10860 lt!1997413)))))

(declare-fun bm!338389 () Bool)

(declare-fun call!338394 () Option!13801)

(assert (=> bm!338389 (= call!338394 (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 rules!1164) (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4874638 () Bool)

(assert (=> b!4874638 (= e!3047029 e!3047026)))

(declare-fun res!2080844 () Bool)

(assert (=> b!4874638 (=> res!2080844 e!3047026)))

(assert (=> b!4874638 (= res!2080844 (not (isDefined!10860 lt!1997413)))))

(declare-fun b!4874639 () Bool)

(declare-fun e!3047030 () Option!13801)

(declare-fun lt!1997416 () Option!13801)

(declare-fun lt!1997414 () Option!13801)

(assert (=> b!4874639 (= e!3047030 (ite (and ((_ is None!13800) lt!1997416) ((_ is None!13800) lt!1997414)) None!13800 (ite ((_ is None!13800) lt!1997414) lt!1997416 (ite ((_ is None!13800) lt!1997416) lt!1997414 (ite (>= (size!36930 (_1!33245 (v!49734 lt!1997416))) (size!36930 (_1!33245 (v!49734 lt!1997414)))) lt!1997416 lt!1997414)))))))

(assert (=> b!4874639 (= lt!1997416 call!338394)))

(assert (=> b!4874639 (= lt!1997414 (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 rules!1164) (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4874641 () Bool)

(assert (=> b!4874641 (= e!3047030 call!338394)))

(declare-fun b!4874640 () Bool)

(assert (=> b!4874640 (= e!3047031 (= (list!17533 (_2!33245 (get!19247 lt!1997413))) (_2!33248 (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun d!1565635 () Bool)

(assert (=> d!1565635 e!3047029))

(declare-fun res!2080843 () Bool)

(assert (=> d!1565635 (=> (not res!2080843) (not e!3047029))))

(assert (=> d!1565635 (= res!2080843 (= (isDefined!10860 lt!1997413) (isDefined!10861 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1565635 (= lt!1997413 e!3047030)))

(declare-fun c!829049 () Bool)

(assert (=> d!1565635 (= c!829049 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1997415 () Unit!146004)

(declare-fun lt!1997412 () Unit!146004)

(assert (=> d!1565635 (= lt!1997415 lt!1997412)))

(declare-fun lt!1997418 () List!56131)

(declare-fun lt!1997417 () List!56131)

(assert (=> d!1565635 (isPrefix!4772 lt!1997418 lt!1997417)))

(assert (=> d!1565635 (= lt!1997412 (lemmaIsPrefixRefl!3169 lt!1997418 lt!1997417))))

(assert (=> d!1565635 (= lt!1997417 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1565635 (= lt!1997418 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1565635 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1565635 (= (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997269))) lt!1997413)))

(assert (= (and d!1565635 c!829049) b!4874641))

(assert (= (and d!1565635 (not c!829049)) b!4874639))

(assert (= (or b!4874641 b!4874639) bm!338389))

(assert (= (and d!1565635 res!2080843) b!4874637))

(assert (= (and b!4874637 (not res!2080842)) b!4874635))

(assert (= (and b!4874635 res!2080846) b!4874636))

(assert (= (and b!4874637 res!2080845) b!4874638))

(assert (= (and b!4874638 (not res!2080844)) b!4874634))

(assert (= (and b!4874634 res!2080841) b!4874640))

(declare-fun m!5875884 () Bool)

(assert (=> b!4874636 m!5875884))

(declare-fun m!5875886 () Bool)

(assert (=> b!4874636 m!5875886))

(declare-fun m!5875888 () Bool)

(assert (=> b!4874636 m!5875888))

(assert (=> b!4874636 m!5875522))

(assert (=> b!4874636 m!5875522))

(assert (=> b!4874636 m!5875886))

(declare-fun m!5875890 () Bool)

(assert (=> b!4874636 m!5875890))

(declare-fun m!5875892 () Bool)

(assert (=> bm!338389 m!5875892))

(assert (=> b!4874634 m!5875884))

(assert (=> b!4874634 m!5875522))

(assert (=> b!4874634 m!5875522))

(declare-fun m!5875894 () Bool)

(assert (=> b!4874634 m!5875894))

(assert (=> b!4874634 m!5875894))

(declare-fun m!5875896 () Bool)

(assert (=> b!4874634 m!5875896))

(declare-fun m!5875898 () Bool)

(assert (=> b!4874638 m!5875898))

(assert (=> b!4874635 m!5875884))

(assert (=> b!4874635 m!5875522))

(assert (=> b!4874635 m!5875522))

(assert (=> b!4874635 m!5875886))

(assert (=> b!4874635 m!5875886))

(assert (=> b!4874635 m!5875888))

(declare-fun m!5875900 () Bool)

(assert (=> b!4874639 m!5875900))

(assert (=> b!4874640 m!5875894))

(assert (=> b!4874640 m!5875896))

(assert (=> b!4874640 m!5875890))

(assert (=> b!4874640 m!5875884))

(assert (=> b!4874640 m!5875522))

(assert (=> b!4874640 m!5875894))

(assert (=> b!4874640 m!5875522))

(declare-fun m!5875902 () Bool)

(assert (=> d!1565635 m!5875902))

(assert (=> d!1565635 m!5875710))

(assert (=> d!1565635 m!5875898))

(assert (=> d!1565635 m!5875886))

(declare-fun m!5875904 () Bool)

(assert (=> d!1565635 m!5875904))

(assert (=> d!1565635 m!5875522))

(assert (=> d!1565635 m!5875522))

(assert (=> d!1565635 m!5875886))

(declare-fun m!5875906 () Bool)

(assert (=> d!1565635 m!5875906))

(assert (=> b!4874637 m!5875898))

(assert (=> d!1565535 d!1565635))

(declare-fun d!1565637 () Bool)

(declare-fun isEmpty!29997 (Option!13801) Bool)

(assert (=> d!1565637 (= (isDefined!10860 lt!1997360) (not (isEmpty!29997 lt!1997360)))))

(declare-fun bs!1174934 () Bool)

(assert (= bs!1174934 d!1565637))

(declare-fun m!5875908 () Bool)

(assert (=> bs!1174934 m!5875908))

(assert (=> b!4874457 d!1565637))

(assert (=> b!4874456 d!1565637))

(declare-fun d!1565639 () Bool)

(declare-fun res!2080859 () Bool)

(declare-fun e!3047037 () Bool)

(assert (=> d!1565639 (=> res!2080859 e!3047037)))

(assert (=> d!1565639 (= res!2080859 (not ((_ is Node!14602) (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1565639 (= (isBalanced!3966 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))) e!3047037)))

(declare-fun b!4874654 () Bool)

(declare-fun res!2080864 () Bool)

(declare-fun e!3047036 () Bool)

(assert (=> b!4874654 (=> (not res!2080864) (not e!3047036))))

(assert (=> b!4874654 (= res!2080864 (not (isEmpty!29995 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874655 () Bool)

(declare-fun res!2080862 () Bool)

(assert (=> b!4874655 (=> (not res!2080862) (not e!3047036))))

(declare-fun height!1937 (Conc!14602) Int)

(assert (=> b!4874655 (= res!2080862 (<= (- (height!1937 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) (height!1937 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))) 1))))

(declare-fun b!4874656 () Bool)

(declare-fun res!2080860 () Bool)

(assert (=> b!4874656 (=> (not res!2080860) (not e!3047036))))

(assert (=> b!4874656 (= res!2080860 (isBalanced!3966 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4874657 () Bool)

(assert (=> b!4874657 (= e!3047036 (not (isEmpty!29995 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874658 () Bool)

(declare-fun res!2080861 () Bool)

(assert (=> b!4874658 (=> (not res!2080861) (not e!3047036))))

(assert (=> b!4874658 (= res!2080861 (isBalanced!3966 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4874659 () Bool)

(assert (=> b!4874659 (= e!3047037 e!3047036)))

(declare-fun res!2080863 () Bool)

(assert (=> b!4874659 (=> (not res!2080863) (not e!3047036))))

(assert (=> b!4874659 (= res!2080863 (<= (- 1) (- (height!1937 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) (height!1937 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1565639 (not res!2080859)) b!4874659))

(assert (= (and b!4874659 res!2080863) b!4874655))

(assert (= (and b!4874655 res!2080862) b!4874656))

(assert (= (and b!4874656 res!2080860) b!4874658))

(assert (= (and b!4874658 res!2080861) b!4874654))

(assert (= (and b!4874654 res!2080864) b!4874657))

(declare-fun m!5875910 () Bool)

(assert (=> b!4874659 m!5875910))

(declare-fun m!5875912 () Bool)

(assert (=> b!4874659 m!5875912))

(declare-fun m!5875914 () Bool)

(assert (=> b!4874654 m!5875914))

(assert (=> b!4874655 m!5875910))

(assert (=> b!4874655 m!5875912))

(declare-fun m!5875916 () Bool)

(assert (=> b!4874658 m!5875916))

(declare-fun m!5875918 () Bool)

(assert (=> b!4874657 m!5875918))

(declare-fun m!5875920 () Bool)

(assert (=> b!4874656 m!5875920))

(assert (=> d!1565607 d!1565639))

(declare-fun d!1565641 () Bool)

(declare-fun e!3047040 () Bool)

(assert (=> d!1565641 e!3047040))

(declare-fun res!2080867 () Bool)

(assert (=> d!1565641 (=> (not res!2080867) (not e!3047040))))

(declare-fun lt!1997421 () Conc!14602)

(assert (=> d!1565641 (= res!2080867 (isBalanced!3966 lt!1997421))))

(declare-fun ++!12202 (Conc!14602 Conc!14602) Conc!14602)

(declare-fun fill!226 (Int Token!14680) IArray!29265)

(assert (=> d!1565641 (= lt!1997421 (++!12202 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1) (c!828992 (_1!33246 lt!1997274))))))

(assert (=> d!1565641 (isBalanced!3966 (c!828992 (_1!33246 lt!1997274)))))

(assert (=> d!1565641 (= (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))) lt!1997421)))

(declare-fun b!4874662 () Bool)

(assert (=> b!4874662 (= e!3047040 (= (list!17537 lt!1997421) (Cons!56009 (_1!33245 (v!49734 lt!1997269)) (list!17537 (c!828992 (_1!33246 lt!1997274))))))))

(assert (= (and d!1565641 res!2080867) b!4874662))

(declare-fun m!5875922 () Bool)

(assert (=> d!1565641 m!5875922))

(declare-fun m!5875924 () Bool)

(assert (=> d!1565641 m!5875924))

(declare-fun m!5875926 () Bool)

(assert (=> d!1565641 m!5875926))

(declare-fun m!5875928 () Bool)

(assert (=> d!1565641 m!5875928))

(declare-fun m!5875930 () Bool)

(assert (=> b!4874662 m!5875930))

(declare-fun m!5875932 () Bool)

(assert (=> b!4874662 m!5875932))

(assert (=> d!1565607 d!1565641))

(declare-fun d!1565643 () Bool)

(declare-fun lt!1997424 () Int)

(assert (=> d!1565643 (>= lt!1997424 0)))

(declare-fun e!3047043 () Int)

(assert (=> d!1565643 (= lt!1997424 e!3047043)))

(declare-fun c!829052 () Bool)

(assert (=> d!1565643 (= c!829052 ((_ is Nil!56007) (_2!33247 lt!1997321)))))

(assert (=> d!1565643 (= (size!36933 (_2!33247 lt!1997321)) lt!1997424)))

(declare-fun b!4874667 () Bool)

(assert (=> b!4874667 (= e!3047043 0)))

(declare-fun b!4874668 () Bool)

(assert (=> b!4874668 (= e!3047043 (+ 1 (size!36933 (t!364439 (_2!33247 lt!1997321)))))))

(assert (= (and d!1565643 c!829052) b!4874667))

(assert (= (and d!1565643 (not c!829052)) b!4874668))

(declare-fun m!5875934 () Bool)

(assert (=> b!4874668 m!5875934))

(assert (=> b!4874389 d!1565643))

(declare-fun d!1565645 () Bool)

(declare-fun lt!1997425 () Int)

(assert (=> d!1565645 (>= lt!1997425 0)))

(declare-fun e!3047044 () Int)

(assert (=> d!1565645 (= lt!1997425 e!3047044)))

(declare-fun c!829053 () Bool)

(assert (=> d!1565645 (= c!829053 ((_ is Nil!56007) lt!1997273))))

(assert (=> d!1565645 (= (size!36933 lt!1997273) lt!1997425)))

(declare-fun b!4874669 () Bool)

(assert (=> b!4874669 (= e!3047044 0)))

(declare-fun b!4874670 () Bool)

(assert (=> b!4874670 (= e!3047044 (+ 1 (size!36933 (t!364439 lt!1997273))))))

(assert (= (and d!1565645 c!829053) b!4874669))

(assert (= (and d!1565645 (not c!829053)) b!4874670))

(declare-fun m!5875936 () Bool)

(assert (=> b!4874670 m!5875936))

(assert (=> b!4874389 d!1565645))

(declare-fun b!4874673 () Bool)

(declare-fun e!3047046 () List!56131)

(assert (=> b!4874673 (= e!3047046 (list!17539 (xs!17909 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4874671 () Bool)

(declare-fun e!3047045 () List!56131)

(assert (=> b!4874671 (= e!3047045 Nil!56007)))

(declare-fun d!1565647 () Bool)

(declare-fun c!829054 () Bool)

(assert (=> d!1565647 (= c!829054 ((_ is Empty!14601) (c!828991 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565647 (= (list!17535 (c!828991 (_2!33245 (v!49734 lt!1997269)))) e!3047045)))

(declare-fun b!4874672 () Bool)

(assert (=> b!4874672 (= e!3047045 e!3047046)))

(declare-fun c!829055 () Bool)

(assert (=> b!4874672 (= c!829055 ((_ is Leaf!24336) (c!828991 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4874674 () Bool)

(assert (=> b!4874674 (= e!3047046 (++!12201 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))) (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (= (and d!1565647 c!829054) b!4874671))

(assert (= (and d!1565647 (not c!829054)) b!4874672))

(assert (= (and b!4874672 c!829055) b!4874673))

(assert (= (and b!4874672 (not c!829055)) b!4874674))

(declare-fun m!5875938 () Bool)

(assert (=> b!4874673 m!5875938))

(declare-fun m!5875940 () Bool)

(assert (=> b!4874674 m!5875940))

(declare-fun m!5875942 () Bool)

(assert (=> b!4874674 m!5875942))

(assert (=> b!4874674 m!5875940))

(assert (=> b!4874674 m!5875942))

(declare-fun m!5875944 () Bool)

(assert (=> b!4874674 m!5875944))

(assert (=> d!1565533 d!1565647))

(declare-fun d!1565649 () Bool)

(declare-fun res!2080872 () Bool)

(declare-fun e!3047051 () Bool)

(assert (=> d!1565649 (=> res!2080872 e!3047051)))

(assert (=> d!1565649 (= res!2080872 ((_ is Nil!56008) rules!1164))))

(assert (=> d!1565649 (= (noDuplicateTag!3289 thiss!11460 rules!1164 Nil!56011) e!3047051)))

(declare-fun b!4874679 () Bool)

(declare-fun e!3047052 () Bool)

(assert (=> b!4874679 (= e!3047051 e!3047052)))

(declare-fun res!2080873 () Bool)

(assert (=> b!4874679 (=> (not res!2080873) (not e!3047052))))

(declare-fun contains!19405 (List!56135 String!63208) Bool)

(assert (=> b!4874679 (= res!2080873 (not (contains!19405 Nil!56011 (tag!8912 (h!62456 rules!1164)))))))

(declare-fun b!4874680 () Bool)

(assert (=> b!4874680 (= e!3047052 (noDuplicateTag!3289 thiss!11460 (t!364440 rules!1164) (Cons!56011 (tag!8912 (h!62456 rules!1164)) Nil!56011)))))

(assert (= (and d!1565649 (not res!2080872)) b!4874679))

(assert (= (and b!4874679 res!2080873) b!4874680))

(declare-fun m!5875946 () Bool)

(assert (=> b!4874679 m!5875946))

(declare-fun m!5875948 () Bool)

(assert (=> b!4874680 m!5875948))

(assert (=> b!4874410 d!1565649))

(declare-fun b!4874683 () Bool)

(declare-fun e!3047054 () List!56131)

(assert (=> b!4874683 (= e!3047054 (list!17539 (xs!17909 (c!828991 input!585))))))

(declare-fun b!4874681 () Bool)

(declare-fun e!3047053 () List!56131)

(assert (=> b!4874681 (= e!3047053 Nil!56007)))

(declare-fun d!1565651 () Bool)

(declare-fun c!829056 () Bool)

(assert (=> d!1565651 (= c!829056 ((_ is Empty!14601) (c!828991 input!585)))))

(assert (=> d!1565651 (= (list!17535 (c!828991 input!585)) e!3047053)))

(declare-fun b!4874682 () Bool)

(assert (=> b!4874682 (= e!3047053 e!3047054)))

(declare-fun c!829057 () Bool)

(assert (=> b!4874682 (= c!829057 ((_ is Leaf!24336) (c!828991 input!585)))))

(declare-fun b!4874684 () Bool)

(assert (=> b!4874684 (= e!3047054 (++!12201 (list!17535 (left!40681 (c!828991 input!585))) (list!17535 (right!41011 (c!828991 input!585)))))))

(assert (= (and d!1565651 c!829056) b!4874681))

(assert (= (and d!1565651 (not c!829056)) b!4874682))

(assert (= (and b!4874682 c!829057) b!4874683))

(assert (= (and b!4874682 (not c!829057)) b!4874684))

(declare-fun m!5875950 () Bool)

(assert (=> b!4874683 m!5875950))

(declare-fun m!5875952 () Bool)

(assert (=> b!4874684 m!5875952))

(declare-fun m!5875954 () Bool)

(assert (=> b!4874684 m!5875954))

(assert (=> b!4874684 m!5875952))

(assert (=> b!4874684 m!5875954))

(declare-fun m!5875956 () Bool)

(assert (=> b!4874684 m!5875956))

(assert (=> d!1565563 d!1565651))

(declare-fun d!1565653 () Bool)

(assert (=> d!1565653 (= (inv!71949 (xs!17909 (c!828991 input!585))) (<= (size!36933 (innerList!14689 (xs!17909 (c!828991 input!585)))) 2147483647))))

(declare-fun bs!1174935 () Bool)

(assert (= bs!1174935 d!1565653))

(declare-fun m!5875958 () Bool)

(assert (=> bs!1174935 m!5875958))

(assert (=> b!4874517 d!1565653))

(declare-fun d!1565655 () Bool)

(declare-fun res!2080878 () Bool)

(declare-fun e!3047057 () Bool)

(assert (=> d!1565655 (=> (not res!2080878) (not e!3047057))))

(assert (=> d!1565655 (= res!2080878 (<= (size!36933 (list!17539 (xs!17909 (c!828991 input!585)))) 512))))

(assert (=> d!1565655 (= (inv!71948 (c!828991 input!585)) e!3047057)))

(declare-fun b!4874689 () Bool)

(declare-fun res!2080879 () Bool)

(assert (=> b!4874689 (=> (not res!2080879) (not e!3047057))))

(assert (=> b!4874689 (= res!2080879 (= (csize!29433 (c!828991 input!585)) (size!36933 (list!17539 (xs!17909 (c!828991 input!585))))))))

(declare-fun b!4874690 () Bool)

(assert (=> b!4874690 (= e!3047057 (and (> (csize!29433 (c!828991 input!585)) 0) (<= (csize!29433 (c!828991 input!585)) 512)))))

(assert (= (and d!1565655 res!2080878) b!4874689))

(assert (= (and b!4874689 res!2080879) b!4874690))

(assert (=> d!1565655 m!5875950))

(assert (=> d!1565655 m!5875950))

(declare-fun m!5875960 () Bool)

(assert (=> d!1565655 m!5875960))

(assert (=> b!4874689 m!5875950))

(assert (=> b!4874689 m!5875950))

(assert (=> b!4874689 m!5875960))

(assert (=> b!4874469 d!1565655))

(declare-fun d!1565657 () Bool)

(declare-fun lt!1997426 () Int)

(assert (=> d!1565657 (= lt!1997426 (size!36933 (list!17533 (_2!33246 lt!1997295))))))

(assert (=> d!1565657 (= lt!1997426 (size!36939 (c!828991 (_2!33246 lt!1997295))))))

(assert (=> d!1565657 (= (size!36931 (_2!33246 lt!1997295)) lt!1997426)))

(declare-fun bs!1174936 () Bool)

(assert (= bs!1174936 d!1565657))

(assert (=> bs!1174936 m!5875572))

(assert (=> bs!1174936 m!5875572))

(declare-fun m!5875962 () Bool)

(assert (=> bs!1174936 m!5875962))

(declare-fun m!5875964 () Bool)

(assert (=> bs!1174936 m!5875964))

(assert (=> b!4874353 d!1565657))

(declare-fun d!1565659 () Bool)

(declare-fun lt!1997427 () Int)

(assert (=> d!1565659 (= lt!1997427 (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565659 (= lt!1997427 (size!36939 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565659 (= (size!36931 (_2!33245 (v!49734 lt!1997269))) lt!1997427)))

(declare-fun bs!1174937 () Bool)

(assert (= bs!1174937 d!1565659))

(assert (=> bs!1174937 m!5875522))

(assert (=> bs!1174937 m!5875522))

(assert (=> bs!1174937 m!5875598))

(declare-fun m!5875966 () Bool)

(assert (=> bs!1174937 m!5875966))

(assert (=> b!4874353 d!1565659))

(declare-fun b!4874691 () Bool)

(declare-fun e!3047060 () Bool)

(declare-fun lt!1997429 () tuple2!59888)

(assert (=> b!4874691 (= e!3047060 (= (_2!33247 lt!1997429) (_2!33248 (v!49737 lt!1997320))))))

(declare-fun b!4874692 () Bool)

(declare-fun e!3047059 () tuple2!59888)

(assert (=> b!4874692 (= e!3047059 (tuple2!59889 Nil!56009 (_2!33248 (v!49737 lt!1997320))))))

(declare-fun b!4874693 () Bool)

(declare-fun e!3047058 () Bool)

(assert (=> b!4874693 (= e!3047060 e!3047058)))

(declare-fun res!2080880 () Bool)

(assert (=> b!4874693 (= res!2080880 (< (size!36933 (_2!33247 lt!1997429)) (size!36933 (_2!33248 (v!49737 lt!1997320)))))))

(assert (=> b!4874693 (=> (not res!2080880) (not e!3047058))))

(declare-fun b!4874694 () Bool)

(assert (=> b!4874694 (= e!3047058 (not (isEmpty!29994 (_1!33247 lt!1997429))))))

(declare-fun b!4874695 () Bool)

(declare-fun lt!1997428 () Option!13802)

(declare-fun lt!1997430 () tuple2!59888)

(assert (=> b!4874695 (= e!3047059 (tuple2!59889 (Cons!56009 (_1!33248 (v!49737 lt!1997428)) (_1!33247 lt!1997430)) (_2!33247 lt!1997430)))))

(assert (=> b!4874695 (= lt!1997430 (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997428))))))

(declare-fun d!1565661 () Bool)

(assert (=> d!1565661 e!3047060))

(declare-fun c!829059 () Bool)

(assert (=> d!1565661 (= c!829059 (> (size!36938 (_1!33247 lt!1997429)) 0))))

(assert (=> d!1565661 (= lt!1997429 e!3047059)))

(declare-fun c!829058 () Bool)

(assert (=> d!1565661 (= c!829058 ((_ is Some!13801) lt!1997428))))

(assert (=> d!1565661 (= lt!1997428 (maxPrefix!4554 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997320))))))

(assert (=> d!1565661 (= (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997320))) lt!1997429)))

(assert (= (and d!1565661 c!829058) b!4874695))

(assert (= (and d!1565661 (not c!829058)) b!4874692))

(assert (= (and d!1565661 c!829059) b!4874693))

(assert (= (and d!1565661 (not c!829059)) b!4874691))

(assert (= (and b!4874693 res!2080880) b!4874694))

(declare-fun m!5875968 () Bool)

(assert (=> b!4874693 m!5875968))

(declare-fun m!5875970 () Bool)

(assert (=> b!4874693 m!5875970))

(declare-fun m!5875972 () Bool)

(assert (=> b!4874694 m!5875972))

(declare-fun m!5875974 () Bool)

(assert (=> b!4874695 m!5875974))

(declare-fun m!5875976 () Bool)

(assert (=> d!1565661 m!5875976))

(declare-fun m!5875978 () Bool)

(assert (=> d!1565661 m!5875978))

(assert (=> b!4874391 d!1565661))

(declare-fun d!1565663 () Bool)

(declare-fun res!2080887 () Bool)

(declare-fun e!3047063 () Bool)

(assert (=> d!1565663 (=> (not res!2080887) (not e!3047063))))

(assert (=> d!1565663 (= res!2080887 (= (csize!29432 (c!828991 input!585)) (+ (size!36939 (left!40681 (c!828991 input!585))) (size!36939 (right!41011 (c!828991 input!585))))))))

(assert (=> d!1565663 (= (inv!71947 (c!828991 input!585)) e!3047063)))

(declare-fun b!4874702 () Bool)

(declare-fun res!2080888 () Bool)

(assert (=> b!4874702 (=> (not res!2080888) (not e!3047063))))

(assert (=> b!4874702 (= res!2080888 (and (not (= (left!40681 (c!828991 input!585)) Empty!14601)) (not (= (right!41011 (c!828991 input!585)) Empty!14601))))))

(declare-fun b!4874703 () Bool)

(declare-fun res!2080889 () Bool)

(assert (=> b!4874703 (=> (not res!2080889) (not e!3047063))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4874703 (= res!2080889 (= (cheight!14812 (c!828991 input!585)) (+ (max!0 (height!1936 (left!40681 (c!828991 input!585))) (height!1936 (right!41011 (c!828991 input!585)))) 1)))))

(declare-fun b!4874704 () Bool)

(assert (=> b!4874704 (= e!3047063 (<= 0 (cheight!14812 (c!828991 input!585))))))

(assert (= (and d!1565663 res!2080887) b!4874702))

(assert (= (and b!4874702 res!2080888) b!4874703))

(assert (= (and b!4874703 res!2080889) b!4874704))

(declare-fun m!5875980 () Bool)

(assert (=> d!1565663 m!5875980))

(declare-fun m!5875982 () Bool)

(assert (=> d!1565663 m!5875982))

(assert (=> b!4874703 m!5875842))

(assert (=> b!4874703 m!5875844))

(assert (=> b!4874703 m!5875842))

(assert (=> b!4874703 m!5875844))

(declare-fun m!5875984 () Bool)

(assert (=> b!4874703 m!5875984))

(assert (=> b!4874467 d!1565663))

(declare-fun d!1565665 () Bool)

(assert (=> d!1565665 true))

(declare-fun lambda!243592 () Int)

(declare-fun order!25259 () Int)

(declare-fun order!25261 () Int)

(declare-fun dynLambda!22507 (Int Int) Int)

(declare-fun dynLambda!22508 (Int Int) Int)

(assert (=> d!1565665 (< (dynLambda!22507 order!25259 (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22508 order!25261 lambda!243592))))

(assert (=> d!1565665 true))

(declare-fun order!25263 () Int)

(declare-fun dynLambda!22509 (Int Int) Int)

(assert (=> d!1565665 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22508 order!25261 lambda!243592))))

(declare-fun Forall!1680 (Int) Bool)

(assert (=> d!1565665 (= (semiInverseModEq!3551 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (Forall!1680 lambda!243592))))

(declare-fun bs!1174939 () Bool)

(assert (= bs!1174939 d!1565665))

(declare-fun m!5875998 () Bool)

(assert (=> bs!1174939 m!5875998))

(assert (=> d!1565603 d!1565665))

(declare-fun b!4874729 () Bool)

(declare-fun e!3047074 () List!56131)

(assert (=> b!4874729 (= e!3047074 (list!17539 (xs!17909 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874727 () Bool)

(declare-fun e!3047073 () List!56131)

(assert (=> b!4874727 (= e!3047073 Nil!56007)))

(declare-fun d!1565675 () Bool)

(declare-fun c!829069 () Bool)

(assert (=> d!1565675 (= c!829069 ((_ is Empty!14601) (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1565675 (= (list!17535 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) e!3047073)))

(declare-fun b!4874728 () Bool)

(assert (=> b!4874728 (= e!3047073 e!3047074)))

(declare-fun c!829070 () Bool)

(assert (=> b!4874728 (= c!829070 ((_ is Leaf!24336) (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4874730 () Bool)

(assert (=> b!4874730 (= e!3047074 (++!12201 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1565675 c!829069) b!4874727))

(assert (= (and d!1565675 (not c!829069)) b!4874728))

(assert (= (and b!4874728 c!829070) b!4874729))

(assert (= (and b!4874728 (not c!829070)) b!4874730))

(declare-fun m!5876000 () Bool)

(assert (=> b!4874729 m!5876000))

(declare-fun m!5876002 () Bool)

(assert (=> b!4874730 m!5876002))

(declare-fun m!5876004 () Bool)

(assert (=> b!4874730 m!5876004))

(assert (=> b!4874730 m!5876002))

(assert (=> b!4874730 m!5876004))

(declare-fun m!5876006 () Bool)

(assert (=> b!4874730 m!5876006))

(assert (=> d!1565557 d!1565675))

(assert (=> d!1565577 d!1565637))

(assert (=> d!1565577 d!1565629))

(declare-fun d!1565677 () Bool)

(assert (=> d!1565677 (isPrefix!4772 lt!1997365 lt!1997364)))

(declare-fun lt!1997439 () Unit!146004)

(declare-fun choose!35632 (List!56131 List!56131) Unit!146004)

(assert (=> d!1565677 (= lt!1997439 (choose!35632 lt!1997365 lt!1997364))))

(assert (=> d!1565677 (= (lemmaIsPrefixRefl!3169 lt!1997365 lt!1997364) lt!1997439)))

(declare-fun bs!1174940 () Bool)

(assert (= bs!1174940 d!1565677))

(assert (=> bs!1174940 m!5875714))

(declare-fun m!5876008 () Bool)

(assert (=> bs!1174940 m!5876008))

(assert (=> d!1565577 d!1565677))

(declare-fun d!1565679 () Bool)

(assert (=> d!1565679 true))

(declare-fun lt!1997442 () Bool)

(declare-fun lambda!243595 () Int)

(declare-fun forall!13055 (List!56132 Int) Bool)

(assert (=> d!1565679 (= lt!1997442 (forall!13055 rules!1164 lambda!243595))))

(declare-fun e!3047079 () Bool)

(assert (=> d!1565679 (= lt!1997442 e!3047079)))

(declare-fun res!2080897 () Bool)

(assert (=> d!1565679 (=> res!2080897 e!3047079)))

(assert (=> d!1565679 (= res!2080897 (not ((_ is Cons!56008) rules!1164)))))

(assert (=> d!1565679 (= (rulesValidInductive!3027 thiss!11460 rules!1164) lt!1997442)))

(declare-fun b!4874735 () Bool)

(declare-fun e!3047080 () Bool)

(assert (=> b!4874735 (= e!3047079 e!3047080)))

(declare-fun res!2080898 () Bool)

(assert (=> b!4874735 (=> (not res!2080898) (not e!3047080))))

(declare-fun ruleValid!3635 (LexerInterface!7640 Rule!15896) Bool)

(assert (=> b!4874735 (= res!2080898 (ruleValid!3635 thiss!11460 (h!62456 rules!1164)))))

(declare-fun b!4874736 () Bool)

(assert (=> b!4874736 (= e!3047080 (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164)))))

(assert (= (and d!1565679 (not res!2080897)) b!4874735))

(assert (= (and b!4874735 res!2080898) b!4874736))

(declare-fun m!5876010 () Bool)

(assert (=> d!1565679 m!5876010))

(declare-fun m!5876012 () Bool)

(assert (=> b!4874735 m!5876012))

(declare-fun m!5876014 () Bool)

(assert (=> b!4874736 m!5876014))

(assert (=> d!1565577 d!1565679))

(declare-fun b!4874748 () Bool)

(declare-fun res!2080910 () Bool)

(declare-fun e!3047089 () Bool)

(assert (=> b!4874748 (=> (not res!2080910) (not e!3047089))))

(declare-fun head!10419 (List!56131) C!26444)

(assert (=> b!4874748 (= res!2080910 (= (head!10419 lt!1997365) (head!10419 lt!1997364)))))

(declare-fun b!4874750 () Bool)

(declare-fun e!3047088 () Bool)

(assert (=> b!4874750 (= e!3047088 (>= (size!36933 lt!1997364) (size!36933 lt!1997365)))))

(declare-fun d!1565681 () Bool)

(assert (=> d!1565681 e!3047088))

(declare-fun res!2080908 () Bool)

(assert (=> d!1565681 (=> res!2080908 e!3047088)))

(declare-fun lt!1997445 () Bool)

(assert (=> d!1565681 (= res!2080908 (not lt!1997445))))

(declare-fun e!3047087 () Bool)

(assert (=> d!1565681 (= lt!1997445 e!3047087)))

(declare-fun res!2080907 () Bool)

(assert (=> d!1565681 (=> res!2080907 e!3047087)))

(assert (=> d!1565681 (= res!2080907 ((_ is Nil!56007) lt!1997365))))

(assert (=> d!1565681 (= (isPrefix!4772 lt!1997365 lt!1997364) lt!1997445)))

(declare-fun b!4874747 () Bool)

(assert (=> b!4874747 (= e!3047087 e!3047089)))

(declare-fun res!2080909 () Bool)

(assert (=> b!4874747 (=> (not res!2080909) (not e!3047089))))

(assert (=> b!4874747 (= res!2080909 (not ((_ is Nil!56007) lt!1997364)))))

(declare-fun b!4874749 () Bool)

(declare-fun tail!9565 (List!56131) List!56131)

(assert (=> b!4874749 (= e!3047089 (isPrefix!4772 (tail!9565 lt!1997365) (tail!9565 lt!1997364)))))

(assert (= (and d!1565681 (not res!2080907)) b!4874747))

(assert (= (and b!4874747 res!2080909) b!4874748))

(assert (= (and b!4874748 res!2080910) b!4874749))

(assert (= (and d!1565681 (not res!2080908)) b!4874750))

(declare-fun m!5876016 () Bool)

(assert (=> b!4874748 m!5876016))

(declare-fun m!5876018 () Bool)

(assert (=> b!4874748 m!5876018))

(declare-fun m!5876020 () Bool)

(assert (=> b!4874750 m!5876020))

(declare-fun m!5876022 () Bool)

(assert (=> b!4874750 m!5876022))

(declare-fun m!5876024 () Bool)

(assert (=> b!4874749 m!5876024))

(declare-fun m!5876026 () Bool)

(assert (=> b!4874749 m!5876026))

(assert (=> b!4874749 m!5876024))

(assert (=> b!4874749 m!5876026))

(declare-fun m!5876028 () Bool)

(assert (=> b!4874749 m!5876028))

(assert (=> d!1565577 d!1565681))

(assert (=> d!1565577 d!1565563))

(declare-fun d!1565683 () Bool)

(declare-fun isEmpty!29998 (Option!13802) Bool)

(assert (=> d!1565683 (= (isDefined!10861 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585))) (not (isEmpty!29998 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585)))))))

(declare-fun bs!1174941 () Bool)

(assert (= bs!1174941 d!1565683))

(assert (=> bs!1174941 m!5875692))

(declare-fun m!5876030 () Bool)

(assert (=> bs!1174941 m!5876030))

(assert (=> d!1565577 d!1565683))

(declare-fun b!4874751 () Bool)

(declare-fun e!3047090 () Bool)

(declare-fun e!3047095 () Bool)

(assert (=> b!4874751 (= e!3047090 e!3047095)))

(declare-fun res!2080911 () Bool)

(assert (=> b!4874751 (=> (not res!2080911) (not e!3047095))))

(declare-fun lt!1997447 () Option!13801)

(assert (=> b!4874751 (= res!2080911 (= (_1!33245 (get!19247 lt!1997447)) (_1!33248 (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))))))))

(declare-fun b!4874752 () Bool)

(declare-fun e!3047092 () Bool)

(declare-fun e!3047091 () Bool)

(assert (=> b!4874752 (= e!3047092 e!3047091)))

(declare-fun res!2080916 () Bool)

(assert (=> b!4874752 (=> (not res!2080916) (not e!3047091))))

(assert (=> b!4874752 (= res!2080916 (= (_1!33245 (get!19247 lt!1997447)) (_1!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))))))))

(declare-fun b!4874753 () Bool)

(assert (=> b!4874753 (= e!3047091 (= (list!17533 (_2!33245 (get!19247 lt!1997447))) (_2!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))))))))

(declare-fun b!4874754 () Bool)

(declare-fun res!2080915 () Bool)

(declare-fun e!3047093 () Bool)

(assert (=> b!4874754 (=> (not res!2080915) (not e!3047093))))

(assert (=> b!4874754 (= res!2080915 e!3047092)))

(declare-fun res!2080912 () Bool)

(assert (=> b!4874754 (=> res!2080912 e!3047092)))

(assert (=> b!4874754 (= res!2080912 (not (isDefined!10860 lt!1997447)))))

(declare-fun bm!338390 () Bool)

(declare-fun call!338395 () Option!13801)

(assert (=> bm!338390 (= call!338395 (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 (t!364440 rules!1164)) input!585))))

(declare-fun b!4874755 () Bool)

(assert (=> b!4874755 (= e!3047093 e!3047090)))

(declare-fun res!2080914 () Bool)

(assert (=> b!4874755 (=> res!2080914 e!3047090)))

(assert (=> b!4874755 (= res!2080914 (not (isDefined!10860 lt!1997447)))))

(declare-fun b!4874756 () Bool)

(declare-fun e!3047094 () Option!13801)

(declare-fun lt!1997450 () Option!13801)

(declare-fun lt!1997448 () Option!13801)

(assert (=> b!4874756 (= e!3047094 (ite (and ((_ is None!13800) lt!1997450) ((_ is None!13800) lt!1997448)) None!13800 (ite ((_ is None!13800) lt!1997448) lt!1997450 (ite ((_ is None!13800) lt!1997450) lt!1997448 (ite (>= (size!36930 (_1!33245 (v!49734 lt!1997450))) (size!36930 (_1!33245 (v!49734 lt!1997448)))) lt!1997450 lt!1997448)))))))

(assert (=> b!4874756 (= lt!1997450 call!338395)))

(assert (=> b!4874756 (= lt!1997448 (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 (t!364440 rules!1164)) input!585))))

(declare-fun b!4874758 () Bool)

(assert (=> b!4874758 (= e!3047094 call!338395)))

(declare-fun b!4874757 () Bool)

(assert (=> b!4874757 (= e!3047095 (= (list!17533 (_2!33245 (get!19247 lt!1997447))) (_2!33248 (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))))))))

(declare-fun d!1565685 () Bool)

(assert (=> d!1565685 e!3047093))

(declare-fun res!2080913 () Bool)

(assert (=> d!1565685 (=> (not res!2080913) (not e!3047093))))

(assert (=> d!1565685 (= res!2080913 (= (isDefined!10860 lt!1997447) (isDefined!10861 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)))))))

(assert (=> d!1565685 (= lt!1997447 e!3047094)))

(declare-fun c!829071 () Bool)

(assert (=> d!1565685 (= c!829071 (and ((_ is Cons!56008) (t!364440 rules!1164)) ((_ is Nil!56008) (t!364440 (t!364440 rules!1164)))))))

(declare-fun lt!1997449 () Unit!146004)

(declare-fun lt!1997446 () Unit!146004)

(assert (=> d!1565685 (= lt!1997449 lt!1997446)))

(declare-fun lt!1997452 () List!56131)

(declare-fun lt!1997451 () List!56131)

(assert (=> d!1565685 (isPrefix!4772 lt!1997452 lt!1997451)))

(assert (=> d!1565685 (= lt!1997446 (lemmaIsPrefixRefl!3169 lt!1997452 lt!1997451))))

(assert (=> d!1565685 (= lt!1997451 (list!17533 input!585))))

(assert (=> d!1565685 (= lt!1997452 (list!17533 input!585))))

(assert (=> d!1565685 (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164))))

(assert (=> d!1565685 (= (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 rules!1164) input!585) lt!1997447)))

(assert (= (and d!1565685 c!829071) b!4874758))

(assert (= (and d!1565685 (not c!829071)) b!4874756))

(assert (= (or b!4874758 b!4874756) bm!338390))

(assert (= (and d!1565685 res!2080913) b!4874754))

(assert (= (and b!4874754 (not res!2080912)) b!4874752))

(assert (= (and b!4874752 res!2080916) b!4874753))

(assert (= (and b!4874754 res!2080915) b!4874755))

(assert (= (and b!4874755 (not res!2080914)) b!4874751))

(assert (= (and b!4874751 res!2080911) b!4874757))

(declare-fun m!5876032 () Bool)

(assert (=> b!4874753 m!5876032))

(assert (=> b!4874753 m!5875868))

(declare-fun m!5876034 () Bool)

(assert (=> b!4874753 m!5876034))

(assert (=> b!4874753 m!5875518))

(assert (=> b!4874753 m!5875518))

(assert (=> b!4874753 m!5875868))

(declare-fun m!5876036 () Bool)

(assert (=> b!4874753 m!5876036))

(declare-fun m!5876038 () Bool)

(assert (=> bm!338390 m!5876038))

(assert (=> b!4874751 m!5876032))

(assert (=> b!4874751 m!5875518))

(assert (=> b!4874751 m!5875518))

(declare-fun m!5876040 () Bool)

(assert (=> b!4874751 m!5876040))

(assert (=> b!4874751 m!5876040))

(declare-fun m!5876042 () Bool)

(assert (=> b!4874751 m!5876042))

(declare-fun m!5876044 () Bool)

(assert (=> b!4874755 m!5876044))

(assert (=> b!4874752 m!5876032))

(assert (=> b!4874752 m!5875518))

(assert (=> b!4874752 m!5875518))

(assert (=> b!4874752 m!5875868))

(assert (=> b!4874752 m!5875868))

(assert (=> b!4874752 m!5876034))

(declare-fun m!5876046 () Bool)

(assert (=> b!4874756 m!5876046))

(assert (=> b!4874757 m!5876040))

(assert (=> b!4874757 m!5876042))

(assert (=> b!4874757 m!5876036))

(assert (=> b!4874757 m!5876032))

(assert (=> b!4874757 m!5875518))

(assert (=> b!4874757 m!5876040))

(assert (=> b!4874757 m!5875518))

(declare-fun m!5876048 () Bool)

(assert (=> d!1565685 m!5876048))

(assert (=> d!1565685 m!5876014))

(assert (=> d!1565685 m!5876044))

(assert (=> d!1565685 m!5875868))

(declare-fun m!5876050 () Bool)

(assert (=> d!1565685 m!5876050))

(assert (=> d!1565685 m!5875518))

(assert (=> d!1565685 m!5875518))

(assert (=> d!1565685 m!5875868))

(declare-fun m!5876052 () Bool)

(assert (=> d!1565685 m!5876052))

(assert (=> b!4874754 m!5876044))

(assert (=> b!4874458 d!1565685))

(declare-fun d!1565687 () Bool)

(assert (=> d!1565687 (= (inv!71944 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))) (isBalanced!3964 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun bs!1174942 () Bool)

(assert (= bs!1174942 d!1565687))

(declare-fun m!5876054 () Bool)

(assert (=> bs!1174942 m!5876054))

(assert (=> tb!258171 d!1565687))

(declare-fun d!1565689 () Bool)

(declare-fun lt!1997453 () Int)

(assert (=> d!1565689 (>= lt!1997453 0)))

(declare-fun e!3047096 () Int)

(assert (=> d!1565689 (= lt!1997453 e!3047096)))

(declare-fun c!829072 () Bool)

(assert (=> d!1565689 (= c!829072 ((_ is Nil!56007) lt!1997299))))

(assert (=> d!1565689 (= (size!36933 lt!1997299) lt!1997453)))

(declare-fun b!4874759 () Bool)

(assert (=> b!4874759 (= e!3047096 0)))

(declare-fun b!4874760 () Bool)

(assert (=> b!4874760 (= e!3047096 (+ 1 (size!36933 (t!364439 lt!1997299))))))

(assert (= (and d!1565689 c!829072) b!4874759))

(assert (= (and d!1565689 (not c!829072)) b!4874760))

(declare-fun m!5876056 () Bool)

(assert (=> b!4874760 m!5876056))

(assert (=> b!4874370 d!1565689))

(declare-fun d!1565691 () Bool)

(declare-fun lt!1997454 () Int)

(assert (=> d!1565691 (>= lt!1997454 0)))

(declare-fun e!3047097 () Int)

(assert (=> d!1565691 (= lt!1997454 e!3047097)))

(declare-fun c!829073 () Bool)

(assert (=> d!1565691 (= c!829073 ((_ is Nil!56007) (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1565691 (= (size!36933 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) lt!1997454)))

(declare-fun b!4874761 () Bool)

(assert (=> b!4874761 (= e!3047097 0)))

(declare-fun b!4874762 () Bool)

(assert (=> b!4874762 (= e!3047097 (+ 1 (size!36933 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1565691 c!829073) b!4874761))

(assert (= (and d!1565691 (not c!829073)) b!4874762))

(assert (=> b!4874762 m!5875872))

(assert (=> b!4874370 d!1565691))

(declare-fun d!1565693 () Bool)

(declare-fun lt!1997455 () Int)

(assert (=> d!1565693 (>= lt!1997455 0)))

(declare-fun e!3047098 () Int)

(assert (=> d!1565693 (= lt!1997455 e!3047098)))

(declare-fun c!829074 () Bool)

(assert (=> d!1565693 (= c!829074 ((_ is Nil!56007) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565693 (= (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1997455)))

(declare-fun b!4874763 () Bool)

(assert (=> b!4874763 (= e!3047098 0)))

(declare-fun b!4874764 () Bool)

(assert (=> b!4874764 (= e!3047098 (+ 1 (size!36933 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (= (and d!1565693 c!829074) b!4874763))

(assert (= (and d!1565693 (not c!829074)) b!4874764))

(declare-fun m!5876058 () Bool)

(assert (=> b!4874764 m!5876058))

(assert (=> b!4874370 d!1565693))

(declare-fun d!1565695 () Bool)

(assert (=> d!1565695 (= (inv!71938 (tag!8912 (h!62456 (t!364440 rules!1164)))) (= (mod (str.len (value!258509 (tag!8912 (h!62456 (t!364440 rules!1164))))) 2) 0))))

(assert (=> b!4874506 d!1565695))

(declare-fun d!1565697 () Bool)

(declare-fun res!2080917 () Bool)

(declare-fun e!3047099 () Bool)

(assert (=> d!1565697 (=> (not res!2080917) (not e!3047099))))

(assert (=> d!1565697 (= res!2080917 (semiInverseModEq!3551 (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))))))

(assert (=> d!1565697 (= (inv!71942 (transformation!8048 (h!62456 (t!364440 rules!1164)))) e!3047099)))

(declare-fun b!4874765 () Bool)

(assert (=> b!4874765 (= e!3047099 (equivClasses!3430 (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))))))

(assert (= (and d!1565697 res!2080917) b!4874765))

(declare-fun m!5876060 () Bool)

(assert (=> d!1565697 m!5876060))

(declare-fun m!5876062 () Bool)

(assert (=> b!4874765 m!5876062))

(assert (=> b!4874506 d!1565697))

(assert (=> b!4874455 d!1565629))

(declare-fun d!1565699 () Bool)

(assert (=> d!1565699 (= (list!17533 (_2!33245 (get!19247 lt!1997360))) (list!17535 (c!828991 (_2!33245 (get!19247 lt!1997360)))))))

(declare-fun bs!1174943 () Bool)

(assert (= bs!1174943 d!1565699))

(declare-fun m!5876064 () Bool)

(assert (=> bs!1174943 m!5876064))

(assert (=> b!4874455 d!1565699))

(assert (=> b!4874455 d!1565625))

(assert (=> b!4874455 d!1565627))

(assert (=> b!4874455 d!1565563))

(declare-fun d!1565701 () Bool)

(declare-fun lt!1997458 () Int)

(assert (=> d!1565701 (>= lt!1997458 0)))

(declare-fun e!3047102 () Int)

(assert (=> d!1565701 (= lt!1997458 e!3047102)))

(declare-fun c!829077 () Bool)

(assert (=> d!1565701 (= c!829077 ((_ is Nil!56009) (_1!33247 lt!1997321)))))

(assert (=> d!1565701 (= (size!36938 (_1!33247 lt!1997321)) lt!1997458)))

(declare-fun b!4874770 () Bool)

(assert (=> b!4874770 (= e!3047102 0)))

(declare-fun b!4874771 () Bool)

(assert (=> b!4874771 (= e!3047102 (+ 1 (size!36938 (t!364441 (_1!33247 lt!1997321)))))))

(assert (= (and d!1565701 c!829077) b!4874770))

(assert (= (and d!1565701 (not c!829077)) b!4874771))

(declare-fun m!5876066 () Bool)

(assert (=> b!4874771 m!5876066))

(assert (=> d!1565569 d!1565701))

(declare-fun b!4874809 () Bool)

(declare-fun res!2080946 () Bool)

(declare-fun e!3047123 () Bool)

(assert (=> b!4874809 (=> (not res!2080946) (not e!3047123))))

(declare-fun lt!1997484 () Option!13802)

(declare-fun matchR!6497 (Regex!13123 List!56131) Bool)

(assert (=> b!4874809 (= res!2080946 (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))))))

(declare-fun call!338399 () Option!13802)

(declare-fun bm!338394 () Bool)

(declare-fun maxPrefixOneRule!3496 (LexerInterface!7640 Rule!15896 List!56131) Option!13802)

(assert (=> bm!338394 (= call!338399 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) lt!1997273))))

(declare-fun d!1565703 () Bool)

(declare-fun e!3047122 () Bool)

(assert (=> d!1565703 e!3047122))

(declare-fun res!2080944 () Bool)

(assert (=> d!1565703 (=> res!2080944 e!3047122)))

(assert (=> d!1565703 (= res!2080944 (isEmpty!29998 lt!1997484))))

(declare-fun e!3047121 () Option!13802)

(assert (=> d!1565703 (= lt!1997484 e!3047121)))

(declare-fun c!829084 () Bool)

(assert (=> d!1565703 (= c!829084 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1997485 () Unit!146004)

(declare-fun lt!1997487 () Unit!146004)

(assert (=> d!1565703 (= lt!1997485 lt!1997487)))

(assert (=> d!1565703 (isPrefix!4772 lt!1997273 lt!1997273)))

(assert (=> d!1565703 (= lt!1997487 (lemmaIsPrefixRefl!3169 lt!1997273 lt!1997273))))

(assert (=> d!1565703 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1565703 (= (maxPrefix!4554 thiss!11460 rules!1164 lt!1997273) lt!1997484)))

(declare-fun b!4874810 () Bool)

(assert (=> b!4874810 (= e!3047122 e!3047123)))

(declare-fun res!2080941 () Bool)

(assert (=> b!4874810 (=> (not res!2080941) (not e!3047123))))

(assert (=> b!4874810 (= res!2080941 (isDefined!10861 lt!1997484))))

(declare-fun b!4874811 () Bool)

(declare-fun contains!19406 (List!56132 Rule!15896) Bool)

(assert (=> b!4874811 (= e!3047123 (contains!19406 rules!1164 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))

(declare-fun b!4874812 () Bool)

(declare-fun lt!1997483 () Option!13802)

(declare-fun lt!1997486 () Option!13802)

(assert (=> b!4874812 (= e!3047121 (ite (and ((_ is None!13801) lt!1997483) ((_ is None!13801) lt!1997486)) None!13801 (ite ((_ is None!13801) lt!1997486) lt!1997483 (ite ((_ is None!13801) lt!1997483) lt!1997486 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1997483))) (size!36930 (_1!33248 (v!49737 lt!1997486)))) lt!1997483 lt!1997486)))))))

(assert (=> b!4874812 (= lt!1997483 call!338399)))

(assert (=> b!4874812 (= lt!1997486 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) lt!1997273))))

(declare-fun b!4874813 () Bool)

(declare-fun res!2080947 () Bool)

(assert (=> b!4874813 (=> (not res!2080947) (not e!3047123))))

(assert (=> b!4874813 (= res!2080947 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))) (_2!33248 (get!19248 lt!1997484))) lt!1997273))))

(declare-fun b!4874814 () Bool)

(declare-fun res!2080942 () Bool)

(assert (=> b!4874814 (=> (not res!2080942) (not e!3047123))))

(assert (=> b!4874814 (= res!2080942 (< (size!36933 (_2!33248 (get!19248 lt!1997484))) (size!36933 lt!1997273)))))

(declare-fun b!4874815 () Bool)

(declare-fun res!2080943 () Bool)

(assert (=> b!4874815 (=> (not res!2080943) (not e!3047123))))

(declare-fun apply!13508 (TokenValueInjection!16024 BalanceConc!28644) TokenValue!8358)

(declare-fun seqFromList!5903 (List!56131) BalanceConc!28644)

(assert (=> b!4874815 (= res!2080943 (= (value!258510 (_1!33248 (get!19248 lt!1997484))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484)))))))))

(declare-fun b!4874816 () Bool)

(declare-fun res!2080945 () Bool)

(assert (=> b!4874816 (=> (not res!2080945) (not e!3047123))))

(assert (=> b!4874816 (= res!2080945 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))) (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484)))))))

(declare-fun b!4874817 () Bool)

(assert (=> b!4874817 (= e!3047121 call!338399)))

(assert (= (and d!1565703 c!829084) b!4874817))

(assert (= (and d!1565703 (not c!829084)) b!4874812))

(assert (= (or b!4874817 b!4874812) bm!338394))

(assert (= (and d!1565703 (not res!2080944)) b!4874810))

(assert (= (and b!4874810 res!2080941) b!4874816))

(assert (= (and b!4874816 res!2080945) b!4874814))

(assert (= (and b!4874814 res!2080942) b!4874813))

(assert (= (and b!4874813 res!2080947) b!4874815))

(assert (= (and b!4874815 res!2080943) b!4874809))

(assert (= (and b!4874809 res!2080946) b!4874811))

(declare-fun m!5876108 () Bool)

(assert (=> b!4874813 m!5876108))

(declare-fun m!5876110 () Bool)

(assert (=> b!4874813 m!5876110))

(assert (=> b!4874813 m!5876110))

(declare-fun m!5876112 () Bool)

(assert (=> b!4874813 m!5876112))

(assert (=> b!4874813 m!5876112))

(declare-fun m!5876114 () Bool)

(assert (=> b!4874813 m!5876114))

(declare-fun m!5876116 () Bool)

(assert (=> d!1565703 m!5876116))

(declare-fun m!5876118 () Bool)

(assert (=> d!1565703 m!5876118))

(declare-fun m!5876120 () Bool)

(assert (=> d!1565703 m!5876120))

(assert (=> d!1565703 m!5875710))

(assert (=> b!4874816 m!5876108))

(assert (=> b!4874816 m!5876110))

(assert (=> b!4874816 m!5876110))

(assert (=> b!4874816 m!5876112))

(declare-fun m!5876122 () Bool)

(assert (=> b!4874810 m!5876122))

(assert (=> b!4874815 m!5876108))

(declare-fun m!5876124 () Bool)

(assert (=> b!4874815 m!5876124))

(assert (=> b!4874815 m!5876124))

(declare-fun m!5876126 () Bool)

(assert (=> b!4874815 m!5876126))

(assert (=> b!4874811 m!5876108))

(declare-fun m!5876128 () Bool)

(assert (=> b!4874811 m!5876128))

(declare-fun m!5876130 () Bool)

(assert (=> b!4874812 m!5876130))

(assert (=> b!4874814 m!5876108))

(declare-fun m!5876132 () Bool)

(assert (=> b!4874814 m!5876132))

(assert (=> b!4874814 m!5875626))

(declare-fun m!5876134 () Bool)

(assert (=> bm!338394 m!5876134))

(assert (=> b!4874809 m!5876108))

(assert (=> b!4874809 m!5876110))

(assert (=> b!4874809 m!5876110))

(assert (=> b!4874809 m!5876112))

(assert (=> b!4874809 m!5876112))

(declare-fun m!5876136 () Bool)

(assert (=> b!4874809 m!5876136))

(assert (=> d!1565569 d!1565703))

(assert (=> b!4874453 d!1565625))

(declare-fun d!1565725 () Bool)

(assert (=> d!1565725 (= (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 input!585))) (v!49737 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 input!585))))))

(assert (=> b!4874453 d!1565725))

(declare-fun b!4874818 () Bool)

(declare-fun res!2080953 () Bool)

(declare-fun e!3047126 () Bool)

(assert (=> b!4874818 (=> (not res!2080953) (not e!3047126))))

(declare-fun lt!1997489 () Option!13802)

(assert (=> b!4874818 (= res!2080953 (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))))))

(declare-fun call!338400 () Option!13802)

(declare-fun bm!338395 () Bool)

(assert (=> bm!338395 (= call!338400 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)))))

(declare-fun d!1565727 () Bool)

(declare-fun e!3047125 () Bool)

(assert (=> d!1565727 e!3047125))

(declare-fun res!2080951 () Bool)

(assert (=> d!1565727 (=> res!2080951 e!3047125)))

(assert (=> d!1565727 (= res!2080951 (isEmpty!29998 lt!1997489))))

(declare-fun e!3047124 () Option!13802)

(assert (=> d!1565727 (= lt!1997489 e!3047124)))

(declare-fun c!829085 () Bool)

(assert (=> d!1565727 (= c!829085 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1997490 () Unit!146004)

(declare-fun lt!1997492 () Unit!146004)

(assert (=> d!1565727 (= lt!1997490 lt!1997492)))

(assert (=> d!1565727 (isPrefix!4772 (list!17533 input!585) (list!17533 input!585))))

(assert (=> d!1565727 (= lt!1997492 (lemmaIsPrefixRefl!3169 (list!17533 input!585) (list!17533 input!585)))))

(assert (=> d!1565727 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1565727 (= (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 input!585)) lt!1997489)))

(declare-fun b!4874819 () Bool)

(assert (=> b!4874819 (= e!3047125 e!3047126)))

(declare-fun res!2080948 () Bool)

(assert (=> b!4874819 (=> (not res!2080948) (not e!3047126))))

(assert (=> b!4874819 (= res!2080948 (isDefined!10861 lt!1997489))))

(declare-fun b!4874820 () Bool)

(assert (=> b!4874820 (= e!3047126 (contains!19406 rules!1164 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))

(declare-fun b!4874821 () Bool)

(declare-fun lt!1997488 () Option!13802)

(declare-fun lt!1997491 () Option!13802)

(assert (=> b!4874821 (= e!3047124 (ite (and ((_ is None!13801) lt!1997488) ((_ is None!13801) lt!1997491)) None!13801 (ite ((_ is None!13801) lt!1997491) lt!1997488 (ite ((_ is None!13801) lt!1997488) lt!1997491 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1997488))) (size!36930 (_1!33248 (v!49737 lt!1997491)))) lt!1997488 lt!1997491)))))))

(assert (=> b!4874821 (= lt!1997488 call!338400)))

(assert (=> b!4874821 (= lt!1997491 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)))))

(declare-fun b!4874822 () Bool)

(declare-fun res!2080954 () Bool)

(assert (=> b!4874822 (=> (not res!2080954) (not e!3047126))))

(assert (=> b!4874822 (= res!2080954 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))) (_2!33248 (get!19248 lt!1997489))) (list!17533 input!585)))))

(declare-fun b!4874823 () Bool)

(declare-fun res!2080949 () Bool)

(assert (=> b!4874823 (=> (not res!2080949) (not e!3047126))))

(assert (=> b!4874823 (= res!2080949 (< (size!36933 (_2!33248 (get!19248 lt!1997489))) (size!36933 (list!17533 input!585))))))

(declare-fun b!4874824 () Bool)

(declare-fun res!2080950 () Bool)

(assert (=> b!4874824 (=> (not res!2080950) (not e!3047126))))

(assert (=> b!4874824 (= res!2080950 (= (value!258510 (_1!33248 (get!19248 lt!1997489))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489)))))))))

(declare-fun b!4874825 () Bool)

(declare-fun res!2080952 () Bool)

(assert (=> b!4874825 (=> (not res!2080952) (not e!3047126))))

(assert (=> b!4874825 (= res!2080952 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))) (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489)))))))

(declare-fun b!4874826 () Bool)

(assert (=> b!4874826 (= e!3047124 call!338400)))

(assert (= (and d!1565727 c!829085) b!4874826))

(assert (= (and d!1565727 (not c!829085)) b!4874821))

(assert (= (or b!4874826 b!4874821) bm!338395))

(assert (= (and d!1565727 (not res!2080951)) b!4874819))

(assert (= (and b!4874819 res!2080948) b!4874825))

(assert (= (and b!4874825 res!2080952) b!4874823))

(assert (= (and b!4874823 res!2080949) b!4874822))

(assert (= (and b!4874822 res!2080954) b!4874824))

(assert (= (and b!4874824 res!2080950) b!4874818))

(assert (= (and b!4874818 res!2080953) b!4874820))

(declare-fun m!5876138 () Bool)

(assert (=> b!4874822 m!5876138))

(declare-fun m!5876140 () Bool)

(assert (=> b!4874822 m!5876140))

(assert (=> b!4874822 m!5876140))

(declare-fun m!5876142 () Bool)

(assert (=> b!4874822 m!5876142))

(assert (=> b!4874822 m!5876142))

(declare-fun m!5876144 () Bool)

(assert (=> b!4874822 m!5876144))

(declare-fun m!5876146 () Bool)

(assert (=> d!1565727 m!5876146))

(assert (=> d!1565727 m!5875518))

(assert (=> d!1565727 m!5875518))

(assert (=> d!1565727 m!5875862))

(assert (=> d!1565727 m!5875518))

(assert (=> d!1565727 m!5875518))

(assert (=> d!1565727 m!5875864))

(assert (=> d!1565727 m!5875710))

(assert (=> b!4874825 m!5876138))

(assert (=> b!4874825 m!5876140))

(assert (=> b!4874825 m!5876140))

(assert (=> b!4874825 m!5876142))

(declare-fun m!5876148 () Bool)

(assert (=> b!4874819 m!5876148))

(assert (=> b!4874824 m!5876138))

(declare-fun m!5876150 () Bool)

(assert (=> b!4874824 m!5876150))

(assert (=> b!4874824 m!5876150))

(declare-fun m!5876152 () Bool)

(assert (=> b!4874824 m!5876152))

(assert (=> b!4874820 m!5876138))

(declare-fun m!5876154 () Bool)

(assert (=> b!4874820 m!5876154))

(assert (=> b!4874821 m!5875518))

(assert (=> b!4874821 m!5876040))

(assert (=> b!4874823 m!5876138))

(declare-fun m!5876156 () Bool)

(assert (=> b!4874823 m!5876156))

(assert (=> b!4874823 m!5875518))

(assert (=> b!4874823 m!5875720))

(assert (=> bm!338395 m!5875518))

(declare-fun m!5876158 () Bool)

(assert (=> bm!338395 m!5876158))

(assert (=> b!4874818 m!5876138))

(assert (=> b!4874818 m!5876140))

(assert (=> b!4874818 m!5876140))

(assert (=> b!4874818 m!5876142))

(assert (=> b!4874818 m!5876142))

(declare-fun m!5876160 () Bool)

(assert (=> b!4874818 m!5876160))

(assert (=> b!4874453 d!1565727))

(assert (=> b!4874453 d!1565563))

(declare-fun d!1565729 () Bool)

(assert (=> d!1565729 (= (list!17534 lt!1997381) (list!17537 (c!828992 lt!1997381)))))

(declare-fun bs!1174948 () Bool)

(assert (= bs!1174948 d!1565729))

(declare-fun m!5876162 () Bool)

(assert (=> bs!1174948 m!5876162))

(assert (=> b!4874489 d!1565729))

(declare-fun d!1565731 () Bool)

(assert (=> d!1565731 (= (list!17534 (_1!33246 lt!1997274)) (list!17537 (c!828992 (_1!33246 lt!1997274))))))

(declare-fun bs!1174949 () Bool)

(assert (= bs!1174949 d!1565731))

(assert (=> bs!1174949 m!5875932))

(assert (=> b!4874489 d!1565731))

(declare-fun d!1565733 () Bool)

(assert (=> d!1565733 (= (list!17534 (_1!33246 lt!1997295)) (list!17537 (c!828992 (_1!33246 lt!1997295))))))

(declare-fun bs!1174950 () Bool)

(assert (= bs!1174950 d!1565733))

(declare-fun m!5876164 () Bool)

(assert (=> bs!1174950 m!5876164))

(assert (=> b!4874354 d!1565733))

(declare-fun b!4874827 () Bool)

(declare-fun e!3047129 () Bool)

(declare-fun lt!1997494 () tuple2!59888)

(assert (=> b!4874827 (= e!3047129 (= (_2!33247 lt!1997494) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4874828 () Bool)

(declare-fun e!3047128 () tuple2!59888)

(assert (=> b!4874828 (= e!3047128 (tuple2!59889 Nil!56009 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4874829 () Bool)

(declare-fun e!3047127 () Bool)

(assert (=> b!4874829 (= e!3047129 e!3047127)))

(declare-fun res!2080955 () Bool)

(assert (=> b!4874829 (= res!2080955 (< (size!36933 (_2!33247 lt!1997494)) (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> b!4874829 (=> (not res!2080955) (not e!3047127))))

(declare-fun b!4874830 () Bool)

(assert (=> b!4874830 (= e!3047127 (not (isEmpty!29994 (_1!33247 lt!1997494))))))

(declare-fun b!4874831 () Bool)

(declare-fun lt!1997493 () Option!13802)

(declare-fun lt!1997495 () tuple2!59888)

(assert (=> b!4874831 (= e!3047128 (tuple2!59889 (Cons!56009 (_1!33248 (v!49737 lt!1997493)) (_1!33247 lt!1997495)) (_2!33247 lt!1997495)))))

(assert (=> b!4874831 (= lt!1997495 (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997493))))))

(declare-fun d!1565735 () Bool)

(assert (=> d!1565735 e!3047129))

(declare-fun c!829087 () Bool)

(assert (=> d!1565735 (= c!829087 (> (size!36938 (_1!33247 lt!1997494)) 0))))

(assert (=> d!1565735 (= lt!1997494 e!3047128)))

(declare-fun c!829086 () Bool)

(assert (=> d!1565735 (= c!829086 ((_ is Some!13801) lt!1997493))))

(assert (=> d!1565735 (= lt!1997493 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1565735 (= (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1997494)))

(assert (= (and d!1565735 c!829086) b!4874831))

(assert (= (and d!1565735 (not c!829086)) b!4874828))

(assert (= (and d!1565735 c!829087) b!4874829))

(assert (= (and d!1565735 (not c!829087)) b!4874827))

(assert (= (and b!4874829 res!2080955) b!4874830))

(declare-fun m!5876166 () Bool)

(assert (=> b!4874829 m!5876166))

(assert (=> b!4874829 m!5875522))

(assert (=> b!4874829 m!5875598))

(declare-fun m!5876168 () Bool)

(assert (=> b!4874830 m!5876168))

(declare-fun m!5876170 () Bool)

(assert (=> b!4874831 m!5876170))

(declare-fun m!5876172 () Bool)

(assert (=> d!1565735 m!5876172))

(assert (=> d!1565735 m!5875522))

(assert (=> d!1565735 m!5875894))

(assert (=> b!4874354 d!1565735))

(assert (=> b!4874354 d!1565533))

(declare-fun d!1565737 () Bool)

(assert (=> d!1565737 (= (isEmpty!29994 (list!17534 lt!1997270)) ((_ is Nil!56009) (list!17534 lt!1997270)))))

(assert (=> d!1565565 d!1565737))

(assert (=> d!1565565 d!1565567))

(declare-fun d!1565739 () Bool)

(declare-fun lt!1997498 () Bool)

(assert (=> d!1565739 (= lt!1997498 (isEmpty!29994 (list!17537 (c!828992 lt!1997270))))))

(assert (=> d!1565739 (= lt!1997498 (= (size!36940 (c!828992 lt!1997270)) 0))))

(assert (=> d!1565739 (= (isEmpty!29995 (c!828992 lt!1997270)) lt!1997498)))

(declare-fun bs!1174951 () Bool)

(assert (= bs!1174951 d!1565739))

(assert (=> bs!1174951 m!5875622))

(assert (=> bs!1174951 m!5875622))

(declare-fun m!5876174 () Bool)

(assert (=> bs!1174951 m!5876174))

(assert (=> bs!1174951 m!5875736))

(assert (=> d!1565565 d!1565739))

(declare-fun bs!1174953 () Bool)

(declare-fun b!4874856 () Bool)

(assert (= bs!1174953 (and b!4874856 d!1565665)))

(declare-fun lambda!243603 () Int)

(assert (=> bs!1174953 (= lambda!243603 lambda!243592)))

(declare-fun b!4874869 () Bool)

(declare-fun e!3047157 () Bool)

(assert (=> b!4874869 (= e!3047157 true)))

(declare-fun b!4874868 () Bool)

(declare-fun e!3047156 () Bool)

(assert (=> b!4874868 (= e!3047156 e!3047157)))

(assert (=> b!4874856 e!3047156))

(assert (= b!4874868 b!4874869))

(assert (= b!4874856 b!4874868))

(assert (=> b!4874869 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22508 order!25261 lambda!243603))))

(assert (=> b!4874869 (< (dynLambda!22507 order!25259 (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22508 order!25261 lambda!243603))))

(declare-fun e!3047148 () Option!13801)

(declare-datatypes ((tuple2!59898 0))(
  ( (tuple2!59899 (_1!33252 BalanceConc!28644) (_2!33252 BalanceConc!28644)) )
))
(declare-fun lt!1997541 () tuple2!59898)

(assert (=> b!4874856 (= e!3047148 (Some!13800 (tuple2!59885 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1997541)) (h!62456 rules!1164) (size!36931 (_1!33252 lt!1997541)) (list!17533 (_1!33252 lt!1997541))) (_2!33252 lt!1997541))))))

(declare-fun lt!1997536 () List!56131)

(assert (=> b!4874856 (= lt!1997536 (list!17533 input!585))))

(declare-fun lt!1997534 () Unit!146004)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1690 (Regex!13123 List!56131) Unit!146004)

(assert (=> b!4874856 (= lt!1997534 (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 rules!1164)) lt!1997536))))

(declare-fun res!2080969 () Bool)

(declare-fun isEmpty!30003 (List!56131) Bool)

(declare-datatypes ((tuple2!59900 0))(
  ( (tuple2!59901 (_1!33253 List!56131) (_2!33253 List!56131)) )
))
(declare-fun findLongestMatchInner!1727 (Regex!13123 List!56131 Int List!56131 List!56131 Int) tuple2!59900)

(assert (=> b!4874856 (= res!2080969 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(declare-fun e!3047147 () Bool)

(assert (=> b!4874856 (=> res!2080969 e!3047147)))

(assert (=> b!4874856 e!3047147))

(declare-fun lt!1997535 () Unit!146004)

(assert (=> b!4874856 (= lt!1997535 lt!1997534)))

(declare-fun lt!1997537 () Unit!146004)

(declare-fun lemmaInv!1210 (TokenValueInjection!16024) Unit!146004)

(assert (=> b!4874856 (= lt!1997537 (lemmaInv!1210 (transformation!8048 (h!62456 rules!1164))))))

(declare-fun lt!1997540 () Unit!146004)

(declare-fun ForallOf!1107 (Int BalanceConc!28644) Unit!146004)

(assert (=> b!4874856 (= lt!1997540 (ForallOf!1107 lambda!243603 (_1!33252 lt!1997541)))))

(declare-fun lt!1997542 () Unit!146004)

(assert (=> b!4874856 (= lt!1997542 (ForallOf!1107 lambda!243603 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))))

(declare-fun lt!1997539 () Option!13801)

(assert (=> b!4874856 (= lt!1997539 (Some!13800 (tuple2!59885 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1997541)) (h!62456 rules!1164) (size!36931 (_1!33252 lt!1997541)) (list!17533 (_1!33252 lt!1997541))) (_2!33252 lt!1997541))))))

(declare-fun lt!1997543 () Unit!146004)

(declare-fun lemmaEqSameImage!1064 (TokenValueInjection!16024 BalanceConc!28644 BalanceConc!28644) Unit!146004)

(assert (=> b!4874856 (= lt!1997543 (lemmaEqSameImage!1064 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1997541) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))))

(declare-fun lt!1997538 () Option!13801)

(declare-fun b!4874857 () Bool)

(declare-fun e!3047149 () Bool)

(assert (=> b!4874857 (= e!3047149 (= (list!17533 (_2!33245 (get!19247 lt!1997538))) (_2!33248 (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585))))))))

(declare-fun d!1565741 () Bool)

(declare-fun e!3047150 () Bool)

(assert (=> d!1565741 e!3047150))

(declare-fun res!2080966 () Bool)

(assert (=> d!1565741 (=> (not res!2080966) (not e!3047150))))

(assert (=> d!1565741 (= res!2080966 (= (isDefined!10860 lt!1997538) (isDefined!10861 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)))))))

(assert (=> d!1565741 (= lt!1997538 e!3047148)))

(declare-fun c!829095 () Bool)

(declare-fun isEmpty!30004 (BalanceConc!28644) Bool)

(assert (=> d!1565741 (= c!829095 (isEmpty!30004 (_1!33252 lt!1997541)))))

(declare-fun findLongestMatchWithZipperSequence!242 (Regex!13123 BalanceConc!28644) tuple2!59898)

(assert (=> d!1565741 (= lt!1997541 (findLongestMatchWithZipperSequence!242 (regex!8048 (h!62456 rules!1164)) input!585))))

(assert (=> d!1565741 (ruleValid!3635 thiss!11460 (h!62456 rules!1164))))

(assert (=> d!1565741 (= (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 rules!1164) input!585) lt!1997538)))

(declare-fun b!4874858 () Bool)

(assert (=> b!4874858 (= e!3047147 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(declare-fun b!4874859 () Bool)

(declare-fun e!3047151 () Bool)

(assert (=> b!4874859 (= e!3047151 e!3047149)))

(declare-fun res!2080968 () Bool)

(assert (=> b!4874859 (=> (not res!2080968) (not e!3047149))))

(assert (=> b!4874859 (= res!2080968 (= (_1!33245 (get!19247 lt!1997538)) (_1!33248 (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585))))))))

(declare-fun b!4874860 () Bool)

(assert (=> b!4874860 (= e!3047150 e!3047151)))

(declare-fun res!2080967 () Bool)

(assert (=> b!4874860 (=> res!2080967 e!3047151)))

(assert (=> b!4874860 (= res!2080967 (not (isDefined!10860 lt!1997538)))))

(declare-fun b!4874861 () Bool)

(assert (=> b!4874861 (= e!3047148 None!13800)))

(assert (= (and d!1565741 c!829095) b!4874861))

(assert (= (and d!1565741 (not c!829095)) b!4874856))

(assert (= (and b!4874856 (not res!2080969)) b!4874858))

(assert (= (and d!1565741 res!2080966) b!4874860))

(assert (= (and b!4874860 (not res!2080967)) b!4874859))

(assert (= (and b!4874859 res!2080968) b!4874857))

(declare-fun m!5876194 () Bool)

(assert (=> b!4874857 m!5876194))

(assert (=> b!4874857 m!5876158))

(declare-fun m!5876196 () Bool)

(assert (=> b!4874857 m!5876196))

(assert (=> b!4874857 m!5875518))

(assert (=> b!4874857 m!5875518))

(assert (=> b!4874857 m!5876158))

(declare-fun m!5876198 () Bool)

(assert (=> b!4874857 m!5876198))

(assert (=> d!1565741 m!5876158))

(declare-fun m!5876200 () Bool)

(assert (=> d!1565741 m!5876200))

(assert (=> d!1565741 m!5875518))

(assert (=> d!1565741 m!5876012))

(assert (=> d!1565741 m!5875518))

(assert (=> d!1565741 m!5876158))

(declare-fun m!5876202 () Bool)

(assert (=> d!1565741 m!5876202))

(declare-fun m!5876204 () Bool)

(assert (=> d!1565741 m!5876204))

(declare-fun m!5876206 () Bool)

(assert (=> d!1565741 m!5876206))

(assert (=> b!4874860 m!5876204))

(declare-fun m!5876208 () Bool)

(assert (=> b!4874858 m!5876208))

(declare-fun m!5876210 () Bool)

(assert (=> b!4874858 m!5876210))

(assert (=> b!4874858 m!5876208))

(assert (=> b!4874858 m!5876210))

(declare-fun m!5876212 () Bool)

(assert (=> b!4874858 m!5876212))

(declare-fun m!5876214 () Bool)

(assert (=> b!4874858 m!5876214))

(assert (=> b!4874859 m!5876198))

(assert (=> b!4874859 m!5875518))

(assert (=> b!4874859 m!5875518))

(assert (=> b!4874859 m!5876158))

(assert (=> b!4874859 m!5876158))

(assert (=> b!4874859 m!5876196))

(declare-fun m!5876216 () Bool)

(assert (=> b!4874856 m!5876216))

(declare-fun m!5876218 () Bool)

(assert (=> b!4874856 m!5876218))

(declare-fun m!5876220 () Bool)

(assert (=> b!4874856 m!5876220))

(declare-fun m!5876222 () Bool)

(assert (=> b!4874856 m!5876222))

(declare-fun m!5876224 () Bool)

(assert (=> b!4874856 m!5876224))

(declare-fun m!5876226 () Bool)

(assert (=> b!4874856 m!5876226))

(assert (=> b!4874856 m!5876208))

(assert (=> b!4874856 m!5876210))

(assert (=> b!4874856 m!5876212))

(assert (=> b!4874856 m!5876210))

(assert (=> b!4874856 m!5876220))

(assert (=> b!4874856 m!5875518))

(declare-fun m!5876228 () Bool)

(assert (=> b!4874856 m!5876228))

(assert (=> b!4874856 m!5876208))

(declare-fun m!5876230 () Bool)

(assert (=> b!4874856 m!5876230))

(assert (=> b!4874856 m!5876222))

(declare-fun m!5876232 () Bool)

(assert (=> b!4874856 m!5876232))

(assert (=> b!4874856 m!5876222))

(declare-fun m!5876234 () Bool)

(assert (=> b!4874856 m!5876234))

(assert (=> bm!338385 d!1565741))

(declare-fun d!1565751 () Bool)

(declare-fun c!829096 () Bool)

(assert (=> d!1565751 (= c!829096 ((_ is Node!14601) (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun e!3047158 () Bool)

(assert (=> d!1565751 (= (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) e!3047158)))

(declare-fun b!4874870 () Bool)

(assert (=> b!4874870 (= e!3047158 (inv!71947 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4874871 () Bool)

(declare-fun e!3047159 () Bool)

(assert (=> b!4874871 (= e!3047158 e!3047159)))

(declare-fun res!2080970 () Bool)

(assert (=> b!4874871 (= res!2080970 (not ((_ is Leaf!24336) (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (=> b!4874871 (=> res!2080970 e!3047159)))

(declare-fun b!4874872 () Bool)

(assert (=> b!4874872 (= e!3047159 (inv!71948 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))

(assert (= (and d!1565751 c!829096) b!4874870))

(assert (= (and d!1565751 (not c!829096)) b!4874871))

(assert (= (and b!4874871 (not res!2080970)) b!4874872))

(declare-fun m!5876236 () Bool)

(assert (=> b!4874870 m!5876236))

(declare-fun m!5876238 () Bool)

(assert (=> b!4874872 m!5876238))

(assert (=> b!4874376 d!1565751))

(declare-fun d!1565753 () Bool)

(declare-fun lt!1997544 () Bool)

(assert (=> d!1565753 (= lt!1997544 (isEmpty!29994 (list!17534 (_1!33246 lt!1997295))))))

(assert (=> d!1565753 (= lt!1997544 (isEmpty!29995 (c!828992 (_1!33246 lt!1997295))))))

(assert (=> d!1565753 (= (isEmpty!29990 (_1!33246 lt!1997295)) lt!1997544)))

(declare-fun bs!1174954 () Bool)

(assert (= bs!1174954 d!1565753))

(assert (=> bs!1174954 m!5875580))

(assert (=> bs!1174954 m!5875580))

(declare-fun m!5876240 () Bool)

(assert (=> bs!1174954 m!5876240))

(declare-fun m!5876242 () Bool)

(assert (=> bs!1174954 m!5876242))

(assert (=> b!4874358 d!1565753))

(declare-fun d!1565755 () Bool)

(assert (=> d!1565755 (= (list!17533 (_2!33246 lt!1997295)) (list!17535 (c!828991 (_2!33246 lt!1997295))))))

(declare-fun bs!1174955 () Bool)

(assert (= bs!1174955 d!1565755))

(declare-fun m!5876244 () Bool)

(assert (=> bs!1174955 m!5876244))

(assert (=> b!4874356 d!1565755))

(assert (=> b!4874356 d!1565533))

(declare-fun d!1565757 () Bool)

(declare-fun c!829097 () Bool)

(assert (=> d!1565757 (= c!829097 ((_ is Node!14601) (left!40681 (c!828991 input!585))))))

(declare-fun e!3047160 () Bool)

(assert (=> d!1565757 (= (inv!71943 (left!40681 (c!828991 input!585))) e!3047160)))

(declare-fun b!4874873 () Bool)

(assert (=> b!4874873 (= e!3047160 (inv!71947 (left!40681 (c!828991 input!585))))))

(declare-fun b!4874874 () Bool)

(declare-fun e!3047161 () Bool)

(assert (=> b!4874874 (= e!3047160 e!3047161)))

(declare-fun res!2080971 () Bool)

(assert (=> b!4874874 (= res!2080971 (not ((_ is Leaf!24336) (left!40681 (c!828991 input!585)))))))

(assert (=> b!4874874 (=> res!2080971 e!3047161)))

(declare-fun b!4874875 () Bool)

(assert (=> b!4874875 (= e!3047161 (inv!71948 (left!40681 (c!828991 input!585))))))

(assert (= (and d!1565757 c!829097) b!4874873))

(assert (= (and d!1565757 (not c!829097)) b!4874874))

(assert (= (and b!4874874 (not res!2080971)) b!4874875))

(declare-fun m!5876246 () Bool)

(assert (=> b!4874873 m!5876246))

(declare-fun m!5876248 () Bool)

(assert (=> b!4874875 m!5876248))

(assert (=> b!4874516 d!1565757))

(declare-fun d!1565759 () Bool)

(declare-fun c!829098 () Bool)

(assert (=> d!1565759 (= c!829098 ((_ is Node!14601) (right!41011 (c!828991 input!585))))))

(declare-fun e!3047162 () Bool)

(assert (=> d!1565759 (= (inv!71943 (right!41011 (c!828991 input!585))) e!3047162)))

(declare-fun b!4874876 () Bool)

(assert (=> b!4874876 (= e!3047162 (inv!71947 (right!41011 (c!828991 input!585))))))

(declare-fun b!4874877 () Bool)

(declare-fun e!3047163 () Bool)

(assert (=> b!4874877 (= e!3047162 e!3047163)))

(declare-fun res!2080972 () Bool)

(assert (=> b!4874877 (= res!2080972 (not ((_ is Leaf!24336) (right!41011 (c!828991 input!585)))))))

(assert (=> b!4874877 (=> res!2080972 e!3047163)))

(declare-fun b!4874878 () Bool)

(assert (=> b!4874878 (= e!3047163 (inv!71948 (right!41011 (c!828991 input!585))))))

(assert (= (and d!1565759 c!829098) b!4874876))

(assert (= (and d!1565759 (not c!829098)) b!4874877))

(assert (= (and b!4874877 (not res!2080972)) b!4874878))

(declare-fun m!5876250 () Bool)

(assert (=> b!4874876 m!5876250))

(declare-fun m!5876252 () Bool)

(assert (=> b!4874878 m!5876252))

(assert (=> b!4874516 d!1565759))

(assert (=> b!4874313 d!1565597))

(declare-fun d!1565761 () Bool)

(assert (=> d!1565761 (= (isEmpty!29994 (_1!33247 lt!1997321)) ((_ is Nil!56009) (_1!33247 lt!1997321)))))

(assert (=> b!4874390 d!1565761))

(declare-fun d!1565763 () Bool)

(assert (=> d!1565763 (= (list!17533 lt!1997302) (list!17535 (c!828991 lt!1997302)))))

(declare-fun bs!1174956 () Bool)

(assert (= bs!1174956 d!1565763))

(declare-fun m!5876254 () Bool)

(assert (=> bs!1174956 m!5876254))

(assert (=> d!1565561 d!1565763))

(declare-fun bs!1174957 () Bool)

(declare-fun d!1565765 () Bool)

(assert (= bs!1174957 (and d!1565765 d!1565679)))

(declare-fun lambda!243606 () Int)

(assert (=> bs!1174957 (= lambda!243606 lambda!243595)))

(assert (=> d!1565765 true))

(declare-fun lt!1997547 () Bool)

(assert (=> d!1565765 (= lt!1997547 (rulesValidInductive!3027 thiss!11460 rules!1164))))

(assert (=> d!1565765 (= lt!1997547 (forall!13055 rules!1164 lambda!243606))))

(assert (=> d!1565765 (= (rulesValid!3128 thiss!11460 rules!1164) lt!1997547)))

(declare-fun bs!1174958 () Bool)

(assert (= bs!1174958 d!1565765))

(assert (=> bs!1174958 m!5875710))

(declare-fun m!5876256 () Bool)

(assert (=> bs!1174958 m!5876256))

(assert (=> d!1565573 d!1565765))

(declare-fun d!1565767 () Bool)

(declare-fun c!829101 () Bool)

(assert (=> d!1565767 (= c!829101 ((_ is Nil!56007) lt!1997299))))

(declare-fun e!3047166 () (InoxSet C!26444))

(assert (=> d!1565767 (= (content!9993 lt!1997299) e!3047166)))

(declare-fun b!4874883 () Bool)

(assert (=> b!4874883 (= e!3047166 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4874884 () Bool)

(assert (=> b!4874884 (= e!3047166 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 lt!1997299) true) (content!9993 (t!364439 lt!1997299))))))

(assert (= (and d!1565767 c!829101) b!4874883))

(assert (= (and d!1565767 (not c!829101)) b!4874884))

(declare-fun m!5876258 () Bool)

(assert (=> b!4874884 m!5876258))

(declare-fun m!5876260 () Bool)

(assert (=> b!4874884 m!5876260))

(assert (=> d!1565559 d!1565767))

(declare-fun d!1565769 () Bool)

(declare-fun c!829102 () Bool)

(assert (=> d!1565769 (= c!829102 ((_ is Nil!56007) (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))

(declare-fun e!3047167 () (InoxSet C!26444))

(assert (=> d!1565769 (= (content!9993 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) e!3047167)))

(declare-fun b!4874885 () Bool)

(assert (=> b!4874885 (= e!3047167 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4874886 () Bool)

(assert (=> b!4874886 (= e!3047167 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))) true) (content!9993 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1565769 c!829102) b!4874885))

(assert (= (and d!1565769 (not c!829102)) b!4874886))

(declare-fun m!5876262 () Bool)

(assert (=> b!4874886 m!5876262))

(assert (=> b!4874886 m!5875878))

(assert (=> d!1565559 d!1565769))

(declare-fun d!1565771 () Bool)

(declare-fun c!829103 () Bool)

(assert (=> d!1565771 (= c!829103 ((_ is Nil!56007) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun e!3047168 () (InoxSet C!26444))

(assert (=> d!1565771 (= (content!9993 (list!17533 (_2!33245 (v!49734 lt!1997269)))) e!3047168)))

(declare-fun b!4874887 () Bool)

(assert (=> b!4874887 (= e!3047168 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4874888 () Bool)

(assert (=> b!4874888 (= e!3047168 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 (list!17533 (_2!33245 (v!49734 lt!1997269)))) true) (content!9993 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (= (and d!1565771 c!829103) b!4874887))

(assert (= (and d!1565771 (not c!829103)) b!4874888))

(declare-fun m!5876264 () Bool)

(assert (=> b!4874888 m!5876264))

(declare-fun m!5876266 () Bool)

(assert (=> b!4874888 m!5876266))

(assert (=> d!1565559 d!1565771))

(declare-fun d!1565773 () Bool)

(declare-fun lt!1997548 () Int)

(assert (=> d!1565773 (>= lt!1997548 0)))

(declare-fun e!3047169 () Int)

(assert (=> d!1565773 (= lt!1997548 e!3047169)))

(declare-fun c!829104 () Bool)

(assert (=> d!1565773 (= c!829104 ((_ is Nil!56009) (list!17534 lt!1997270)))))

(assert (=> d!1565773 (= (size!36938 (list!17534 lt!1997270)) lt!1997548)))

(declare-fun b!4874889 () Bool)

(assert (=> b!4874889 (= e!3047169 0)))

(declare-fun b!4874890 () Bool)

(assert (=> b!4874890 (= e!3047169 (+ 1 (size!36938 (t!364441 (list!17534 lt!1997270)))))))

(assert (= (and d!1565773 c!829104) b!4874889))

(assert (= (and d!1565773 (not c!829104)) b!4874890))

(declare-fun m!5876268 () Bool)

(assert (=> b!4874890 m!5876268))

(assert (=> d!1565605 d!1565773))

(assert (=> d!1565605 d!1565567))

(declare-fun d!1565775 () Bool)

(declare-fun lt!1997565 () Int)

(assert (=> d!1565775 (= lt!1997565 (size!36938 (list!17537 (c!828992 lt!1997270))))))

(assert (=> d!1565775 (= lt!1997565 (ite ((_ is Empty!14602) (c!828992 lt!1997270)) 0 (ite ((_ is Leaf!24337) (c!828992 lt!1997270)) (csize!29435 (c!828992 lt!1997270)) (csize!29434 (c!828992 lt!1997270)))))))

(assert (=> d!1565775 (= (size!36940 (c!828992 lt!1997270)) lt!1997565)))

(declare-fun bs!1174959 () Bool)

(assert (= bs!1174959 d!1565775))

(assert (=> bs!1174959 m!5875622))

(assert (=> bs!1174959 m!5875622))

(declare-fun m!5876270 () Bool)

(assert (=> bs!1174959 m!5876270))

(assert (=> d!1565605 d!1565775))

(declare-fun d!1565777 () Bool)

(declare-fun lt!1997566 () Int)

(assert (=> d!1565777 (>= lt!1997566 0)))

(declare-fun e!3047174 () Int)

(assert (=> d!1565777 (= lt!1997566 e!3047174)))

(declare-fun c!829107 () Bool)

(assert (=> d!1565777 (= c!829107 ((_ is Nil!56007) (list!17533 (_2!33246 lt!1997274))))))

(assert (=> d!1565777 (= (size!36933 (list!17533 (_2!33246 lt!1997274))) lt!1997566)))

(declare-fun b!4874897 () Bool)

(assert (=> b!4874897 (= e!3047174 0)))

(declare-fun b!4874898 () Bool)

(assert (=> b!4874898 (= e!3047174 (+ 1 (size!36933 (t!364439 (list!17533 (_2!33246 lt!1997274))))))))

(assert (= (and d!1565777 c!829107) b!4874897))

(assert (= (and d!1565777 (not c!829107)) b!4874898))

(declare-fun m!5876272 () Bool)

(assert (=> b!4874898 m!5876272))

(assert (=> d!1565593 d!1565777))

(assert (=> d!1565593 d!1565575))

(declare-fun d!1565779 () Bool)

(declare-fun lt!1997571 () Int)

(assert (=> d!1565779 (= lt!1997571 (size!36933 (list!17535 (c!828991 (_2!33246 lt!1997274)))))))

(assert (=> d!1565779 (= lt!1997571 (ite ((_ is Empty!14601) (c!828991 (_2!33246 lt!1997274))) 0 (ite ((_ is Leaf!24336) (c!828991 (_2!33246 lt!1997274))) (csize!29433 (c!828991 (_2!33246 lt!1997274))) (csize!29432 (c!828991 (_2!33246 lt!1997274))))))))

(assert (=> d!1565779 (= (size!36939 (c!828991 (_2!33246 lt!1997274))) lt!1997571)))

(declare-fun bs!1174960 () Bool)

(assert (= bs!1174960 d!1565779))

(assert (=> bs!1174960 m!5875640))

(assert (=> bs!1174960 m!5875640))

(declare-fun m!5876274 () Bool)

(assert (=> bs!1174960 m!5876274))

(assert (=> d!1565593 d!1565779))

(declare-fun b!4874914 () Bool)

(declare-fun e!3047185 () List!56133)

(declare-fun e!3047186 () List!56133)

(assert (=> b!4874914 (= e!3047185 e!3047186)))

(declare-fun c!829113 () Bool)

(assert (=> b!4874914 (= c!829113 ((_ is Leaf!24337) (c!828992 lt!1997270)))))

(declare-fun b!4874915 () Bool)

(declare-fun list!17541 (IArray!29265) List!56133)

(assert (=> b!4874915 (= e!3047186 (list!17541 (xs!17910 (c!828992 lt!1997270))))))

(declare-fun d!1565781 () Bool)

(declare-fun c!829112 () Bool)

(assert (=> d!1565781 (= c!829112 ((_ is Empty!14602) (c!828992 lt!1997270)))))

(assert (=> d!1565781 (= (list!17537 (c!828992 lt!1997270)) e!3047185)))

(declare-fun b!4874913 () Bool)

(assert (=> b!4874913 (= e!3047185 Nil!56009)))

(declare-fun b!4874916 () Bool)

(declare-fun ++!12204 (List!56133 List!56133) List!56133)

(assert (=> b!4874916 (= e!3047186 (++!12204 (list!17537 (left!40682 (c!828992 lt!1997270))) (list!17537 (right!41012 (c!828992 lt!1997270)))))))

(assert (= (and d!1565781 c!829112) b!4874913))

(assert (= (and d!1565781 (not c!829112)) b!4874914))

(assert (= (and b!4874914 c!829113) b!4874915))

(assert (= (and b!4874914 (not c!829113)) b!4874916))

(declare-fun m!5876276 () Bool)

(assert (=> b!4874915 m!5876276))

(declare-fun m!5876278 () Bool)

(assert (=> b!4874916 m!5876278))

(declare-fun m!5876280 () Bool)

(assert (=> b!4874916 m!5876280))

(assert (=> b!4874916 m!5876278))

(assert (=> b!4874916 m!5876280))

(declare-fun m!5876282 () Bool)

(assert (=> b!4874916 m!5876282))

(assert (=> d!1565567 d!1565781))

(assert (=> b!4874459 d!1565699))

(assert (=> b!4874459 d!1565725))

(assert (=> b!4874459 d!1565625))

(assert (=> b!4874459 d!1565563))

(assert (=> b!4874459 d!1565727))

(assert (=> b!4874359 d!1565755))

(assert (=> b!4874359 d!1565735))

(assert (=> b!4874359 d!1565533))

(declare-fun d!1565783 () Bool)

(assert (=> d!1565783 true))

(declare-fun lambda!243613 () Int)

(declare-fun order!25269 () Int)

(declare-fun dynLambda!22514 (Int Int) Int)

(assert (=> d!1565783 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22514 order!25269 lambda!243613))))

(declare-fun Forall2!1261 (Int) Bool)

(assert (=> d!1565783 (= (equivClasses!3430 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (Forall2!1261 lambda!243613))))

(declare-fun bs!1174961 () Bool)

(assert (= bs!1174961 d!1565783))

(declare-fun m!5876284 () Bool)

(assert (=> bs!1174961 m!5876284))

(assert (=> b!4874472 d!1565783))

(declare-fun d!1565785 () Bool)

(declare-fun lt!1997586 () Int)

(assert (=> d!1565785 (>= lt!1997586 0)))

(declare-fun e!3047194 () Int)

(assert (=> d!1565785 (= lt!1997586 e!3047194)))

(declare-fun c!829115 () Bool)

(assert (=> d!1565785 (= c!829115 ((_ is Nil!56007) (list!17533 input!585)))))

(assert (=> d!1565785 (= (size!36933 (list!17533 input!585)) lt!1997586)))

(declare-fun b!4874927 () Bool)

(assert (=> b!4874927 (= e!3047194 0)))

(declare-fun b!4874928 () Bool)

(assert (=> b!4874928 (= e!3047194 (+ 1 (size!36933 (t!364439 (list!17533 input!585)))))))

(assert (= (and d!1565785 c!829115) b!4874927))

(assert (= (and d!1565785 (not c!829115)) b!4874928))

(declare-fun m!5876286 () Bool)

(assert (=> b!4874928 m!5876286))

(assert (=> d!1565595 d!1565785))

(assert (=> d!1565595 d!1565563))

(declare-fun d!1565787 () Bool)

(declare-fun lt!1997587 () Int)

(assert (=> d!1565787 (= lt!1997587 (size!36933 (list!17535 (c!828991 input!585))))))

(assert (=> d!1565787 (= lt!1997587 (ite ((_ is Empty!14601) (c!828991 input!585)) 0 (ite ((_ is Leaf!24336) (c!828991 input!585)) (csize!29433 (c!828991 input!585)) (csize!29432 (c!828991 input!585)))))))

(assert (=> d!1565787 (= (size!36939 (c!828991 input!585)) lt!1997587)))

(declare-fun bs!1174962 () Bool)

(assert (= bs!1174962 d!1565787))

(assert (=> bs!1174962 m!5875616))

(assert (=> bs!1174962 m!5875616))

(declare-fun m!5876288 () Bool)

(assert (=> bs!1174962 m!5876288))

(assert (=> d!1565595 d!1565787))

(declare-fun b!4874931 () Bool)

(declare-fun e!3047195 () Bool)

(assert (=> b!4874931 (= e!3047195 tp_is_empty!35673)))

(declare-fun b!4874933 () Bool)

(declare-fun tp!1371712 () Bool)

(assert (=> b!4874933 (= e!3047195 tp!1371712)))

(declare-fun b!4874934 () Bool)

(declare-fun tp!1371710 () Bool)

(declare-fun tp!1371711 () Bool)

(assert (=> b!4874934 (= e!3047195 (and tp!1371710 tp!1371711))))

(declare-fun b!4874932 () Bool)

(declare-fun tp!1371709 () Bool)

(declare-fun tp!1371708 () Bool)

(assert (=> b!4874932 (= e!3047195 (and tp!1371709 tp!1371708))))

(assert (=> b!4874506 (= tp!1371642 e!3047195)))

(assert (= (and b!4874506 ((_ is ElementMatch!13123) (regex!8048 (h!62456 (t!364440 rules!1164))))) b!4874931))

(assert (= (and b!4874506 ((_ is Concat!21482) (regex!8048 (h!62456 (t!364440 rules!1164))))) b!4874932))

(assert (= (and b!4874506 ((_ is Star!13123) (regex!8048 (h!62456 (t!364440 rules!1164))))) b!4874933))

(assert (= (and b!4874506 ((_ is Union!13123) (regex!8048 (h!62456 (t!364440 rules!1164))))) b!4874934))

(declare-fun b!4874943 () Bool)

(declare-fun e!3047202 () Bool)

(declare-fun tp!1371715 () Bool)

(assert (=> b!4874943 (= e!3047202 (and tp_is_empty!35673 tp!1371715))))

(assert (=> b!4874518 (= tp!1371651 e!3047202)))

(assert (= (and b!4874518 ((_ is Cons!56007) (innerList!14689 (xs!17909 (c!828991 input!585))))) b!4874943))

(declare-fun e!3047203 () Bool)

(declare-fun tp!1371718 () Bool)

(declare-fun tp!1371717 () Bool)

(declare-fun b!4874944 () Bool)

(assert (=> b!4874944 (= e!3047203 (and (inv!71943 (left!40681 (left!40681 (c!828991 input!585)))) tp!1371717 (inv!71943 (right!41011 (left!40681 (c!828991 input!585)))) tp!1371718))))

(declare-fun b!4874946 () Bool)

(declare-fun e!3047204 () Bool)

(declare-fun tp!1371716 () Bool)

(assert (=> b!4874946 (= e!3047204 tp!1371716)))

(declare-fun b!4874945 () Bool)

(assert (=> b!4874945 (= e!3047203 (and (inv!71949 (xs!17909 (left!40681 (c!828991 input!585)))) e!3047204))))

(assert (=> b!4874516 (= tp!1371652 (and (inv!71943 (left!40681 (c!828991 input!585))) e!3047203))))

(assert (= (and b!4874516 ((_ is Node!14601) (left!40681 (c!828991 input!585)))) b!4874944))

(assert (= b!4874945 b!4874946))

(assert (= (and b!4874516 ((_ is Leaf!24336) (left!40681 (c!828991 input!585)))) b!4874945))

(declare-fun m!5876290 () Bool)

(assert (=> b!4874944 m!5876290))

(declare-fun m!5876292 () Bool)

(assert (=> b!4874944 m!5876292))

(declare-fun m!5876294 () Bool)

(assert (=> b!4874945 m!5876294))

(assert (=> b!4874516 m!5875772))

(declare-fun b!4874947 () Bool)

(declare-fun tp!1371720 () Bool)

(declare-fun e!3047205 () Bool)

(declare-fun tp!1371721 () Bool)

(assert (=> b!4874947 (= e!3047205 (and (inv!71943 (left!40681 (right!41011 (c!828991 input!585)))) tp!1371720 (inv!71943 (right!41011 (right!41011 (c!828991 input!585)))) tp!1371721))))

(declare-fun b!4874949 () Bool)

(declare-fun e!3047206 () Bool)

(declare-fun tp!1371719 () Bool)

(assert (=> b!4874949 (= e!3047206 tp!1371719)))

(declare-fun b!4874948 () Bool)

(assert (=> b!4874948 (= e!3047205 (and (inv!71949 (xs!17909 (right!41011 (c!828991 input!585)))) e!3047206))))

(assert (=> b!4874516 (= tp!1371653 (and (inv!71943 (right!41011 (c!828991 input!585))) e!3047205))))

(assert (= (and b!4874516 ((_ is Node!14601) (right!41011 (c!828991 input!585)))) b!4874947))

(assert (= b!4874948 b!4874949))

(assert (= (and b!4874516 ((_ is Leaf!24336) (right!41011 (c!828991 input!585)))) b!4874948))

(declare-fun m!5876296 () Bool)

(assert (=> b!4874947 m!5876296))

(declare-fun m!5876298 () Bool)

(assert (=> b!4874947 m!5876298))

(declare-fun m!5876300 () Bool)

(assert (=> b!4874948 m!5876300))

(assert (=> b!4874516 m!5875774))

(declare-fun b!4874954 () Bool)

(declare-fun b_free!130807 () Bool)

(declare-fun b_next!131597 () Bool)

(assert (=> b!4874954 (= b_free!130807 (not b_next!131597))))

(declare-fun tp!1371722 () Bool)

(declare-fun b_and!343343 () Bool)

(assert (=> b!4874954 (= tp!1371722 b_and!343343)))

(declare-fun b_free!130809 () Bool)

(declare-fun b_next!131599 () Bool)

(assert (=> b!4874954 (= b_free!130809 (not b_next!131599))))

(declare-fun t!364464 () Bool)

(declare-fun tb!258179 () Bool)

(assert (=> (and b!4874954 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269)))))) t!364464) tb!258179))

(declare-fun result!321404 () Bool)

(assert (= result!321404 result!321378))

(assert (=> d!1565561 t!364464))

(declare-fun tp!1371724 () Bool)

(declare-fun b_and!343345 () Bool)

(assert (=> b!4874954 (= tp!1371724 (and (=> t!364464 result!321404) b_and!343345))))

(declare-fun e!3047211 () Bool)

(assert (=> b!4874954 (= e!3047211 (and tp!1371722 tp!1371724))))

(declare-fun b!4874953 () Bool)

(declare-fun e!3047212 () Bool)

(declare-fun tp!1371723 () Bool)

(assert (=> b!4874953 (= e!3047212 (and tp!1371723 (inv!71938 (tag!8912 (h!62456 (t!364440 (t!364440 rules!1164))))) (inv!71942 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) e!3047211))))

(declare-fun b!4874952 () Bool)

(declare-fun e!3047210 () Bool)

(declare-fun tp!1371725 () Bool)

(assert (=> b!4874952 (= e!3047210 (and e!3047212 tp!1371725))))

(assert (=> b!4874505 (= tp!1371644 e!3047210)))

(assert (= b!4874953 b!4874954))

(assert (= b!4874952 b!4874953))

(assert (= (and b!4874505 ((_ is Cons!56008) (t!364440 (t!364440 rules!1164)))) b!4874952))

(declare-fun m!5876302 () Bool)

(assert (=> b!4874953 m!5876302))

(declare-fun m!5876304 () Bool)

(assert (=> b!4874953 m!5876304))

(declare-fun b!4874955 () Bool)

(declare-fun e!3047213 () Bool)

(assert (=> b!4874955 (= e!3047213 tp_is_empty!35673)))

(declare-fun b!4874957 () Bool)

(declare-fun tp!1371730 () Bool)

(assert (=> b!4874957 (= e!3047213 tp!1371730)))

(declare-fun b!4874958 () Bool)

(declare-fun tp!1371728 () Bool)

(declare-fun tp!1371729 () Bool)

(assert (=> b!4874958 (= e!3047213 (and tp!1371728 tp!1371729))))

(declare-fun b!4874956 () Bool)

(declare-fun tp!1371727 () Bool)

(declare-fun tp!1371726 () Bool)

(assert (=> b!4874956 (= e!3047213 (and tp!1371727 tp!1371726))))

(assert (=> b!4874532 (= tp!1371666 e!3047213)))

(assert (= (and b!4874532 ((_ is ElementMatch!13123) (regOne!26759 (regex!8048 (h!62456 rules!1164))))) b!4874955))

(assert (= (and b!4874532 ((_ is Concat!21482) (regOne!26759 (regex!8048 (h!62456 rules!1164))))) b!4874956))

(assert (= (and b!4874532 ((_ is Star!13123) (regOne!26759 (regex!8048 (h!62456 rules!1164))))) b!4874957))

(assert (= (and b!4874532 ((_ is Union!13123) (regOne!26759 (regex!8048 (h!62456 rules!1164))))) b!4874958))

(declare-fun b!4874959 () Bool)

(declare-fun e!3047214 () Bool)

(assert (=> b!4874959 (= e!3047214 tp_is_empty!35673)))

(declare-fun b!4874961 () Bool)

(declare-fun tp!1371735 () Bool)

(assert (=> b!4874961 (= e!3047214 tp!1371735)))

(declare-fun b!4874962 () Bool)

(declare-fun tp!1371733 () Bool)

(declare-fun tp!1371734 () Bool)

(assert (=> b!4874962 (= e!3047214 (and tp!1371733 tp!1371734))))

(declare-fun b!4874960 () Bool)

(declare-fun tp!1371732 () Bool)

(declare-fun tp!1371731 () Bool)

(assert (=> b!4874960 (= e!3047214 (and tp!1371732 tp!1371731))))

(assert (=> b!4874532 (= tp!1371667 e!3047214)))

(assert (= (and b!4874532 ((_ is ElementMatch!13123) (regTwo!26759 (regex!8048 (h!62456 rules!1164))))) b!4874959))

(assert (= (and b!4874532 ((_ is Concat!21482) (regTwo!26759 (regex!8048 (h!62456 rules!1164))))) b!4874960))

(assert (= (and b!4874532 ((_ is Star!13123) (regTwo!26759 (regex!8048 (h!62456 rules!1164))))) b!4874961))

(assert (= (and b!4874532 ((_ is Union!13123) (regTwo!26759 (regex!8048 (h!62456 rules!1164))))) b!4874962))

(declare-fun b!4874963 () Bool)

(declare-fun e!3047215 () Bool)

(assert (=> b!4874963 (= e!3047215 tp_is_empty!35673)))

(declare-fun b!4874965 () Bool)

(declare-fun tp!1371740 () Bool)

(assert (=> b!4874965 (= e!3047215 tp!1371740)))

(declare-fun b!4874966 () Bool)

(declare-fun tp!1371738 () Bool)

(declare-fun tp!1371739 () Bool)

(assert (=> b!4874966 (= e!3047215 (and tp!1371738 tp!1371739))))

(declare-fun b!4874964 () Bool)

(declare-fun tp!1371737 () Bool)

(declare-fun tp!1371736 () Bool)

(assert (=> b!4874964 (= e!3047215 (and tp!1371737 tp!1371736))))

(assert (=> b!4874530 (= tp!1371665 e!3047215)))

(assert (= (and b!4874530 ((_ is ElementMatch!13123) (regOne!26758 (regex!8048 (h!62456 rules!1164))))) b!4874963))

(assert (= (and b!4874530 ((_ is Concat!21482) (regOne!26758 (regex!8048 (h!62456 rules!1164))))) b!4874964))

(assert (= (and b!4874530 ((_ is Star!13123) (regOne!26758 (regex!8048 (h!62456 rules!1164))))) b!4874965))

(assert (= (and b!4874530 ((_ is Union!13123) (regOne!26758 (regex!8048 (h!62456 rules!1164))))) b!4874966))

(declare-fun b!4874967 () Bool)

(declare-fun e!3047216 () Bool)

(assert (=> b!4874967 (= e!3047216 tp_is_empty!35673)))

(declare-fun b!4874969 () Bool)

(declare-fun tp!1371745 () Bool)

(assert (=> b!4874969 (= e!3047216 tp!1371745)))

(declare-fun b!4874970 () Bool)

(declare-fun tp!1371743 () Bool)

(declare-fun tp!1371744 () Bool)

(assert (=> b!4874970 (= e!3047216 (and tp!1371743 tp!1371744))))

(declare-fun b!4874968 () Bool)

(declare-fun tp!1371742 () Bool)

(declare-fun tp!1371741 () Bool)

(assert (=> b!4874968 (= e!3047216 (and tp!1371742 tp!1371741))))

(assert (=> b!4874530 (= tp!1371664 e!3047216)))

(assert (= (and b!4874530 ((_ is ElementMatch!13123) (regTwo!26758 (regex!8048 (h!62456 rules!1164))))) b!4874967))

(assert (= (and b!4874530 ((_ is Concat!21482) (regTwo!26758 (regex!8048 (h!62456 rules!1164))))) b!4874968))

(assert (= (and b!4874530 ((_ is Star!13123) (regTwo!26758 (regex!8048 (h!62456 rules!1164))))) b!4874969))

(assert (= (and b!4874530 ((_ is Union!13123) (regTwo!26758 (regex!8048 (h!62456 rules!1164))))) b!4874970))

(declare-fun e!3047217 () Bool)

(declare-fun tp!1371748 () Bool)

(declare-fun tp!1371747 () Bool)

(declare-fun b!4874971 () Bool)

(assert (=> b!4874971 (= e!3047217 (and (inv!71943 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) tp!1371747 (inv!71943 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) tp!1371748))))

(declare-fun b!4874973 () Bool)

(declare-fun e!3047218 () Bool)

(declare-fun tp!1371746 () Bool)

(assert (=> b!4874973 (= e!3047218 tp!1371746)))

(declare-fun b!4874972 () Bool)

(assert (=> b!4874972 (= e!3047217 (and (inv!71949 (xs!17909 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) e!3047218))))

(assert (=> b!4874376 (= tp!1371632 (and (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) e!3047217))))

(assert (= (and b!4874376 ((_ is Node!14601) (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) b!4874971))

(assert (= b!4874972 b!4874973))

(assert (= (and b!4874376 ((_ is Leaf!24336) (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) b!4874972))

(declare-fun m!5876306 () Bool)

(assert (=> b!4874971 m!5876306))

(declare-fun m!5876308 () Bool)

(assert (=> b!4874971 m!5876308))

(declare-fun m!5876310 () Bool)

(assert (=> b!4874972 m!5876310))

(assert (=> b!4874376 m!5875608))

(declare-fun b!4874974 () Bool)

(declare-fun e!3047219 () Bool)

(assert (=> b!4874974 (= e!3047219 tp_is_empty!35673)))

(declare-fun b!4874976 () Bool)

(declare-fun tp!1371753 () Bool)

(assert (=> b!4874976 (= e!3047219 tp!1371753)))

(declare-fun b!4874977 () Bool)

(declare-fun tp!1371751 () Bool)

(declare-fun tp!1371752 () Bool)

(assert (=> b!4874977 (= e!3047219 (and tp!1371751 tp!1371752))))

(declare-fun b!4874975 () Bool)

(declare-fun tp!1371750 () Bool)

(declare-fun tp!1371749 () Bool)

(assert (=> b!4874975 (= e!3047219 (and tp!1371750 tp!1371749))))

(assert (=> b!4874531 (= tp!1371668 e!3047219)))

(assert (= (and b!4874531 ((_ is ElementMatch!13123) (reg!13452 (regex!8048 (h!62456 rules!1164))))) b!4874974))

(assert (= (and b!4874531 ((_ is Concat!21482) (reg!13452 (regex!8048 (h!62456 rules!1164))))) b!4874975))

(assert (= (and b!4874531 ((_ is Star!13123) (reg!13452 (regex!8048 (h!62456 rules!1164))))) b!4874976))

(assert (= (and b!4874531 ((_ is Union!13123) (reg!13452 (regex!8048 (h!62456 rules!1164))))) b!4874977))

(declare-fun b_lambda!193845 () Bool)

(assert (= b_lambda!193841 (or (and b!4874320 b_free!130797 (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))))) (and b!4874507 b_free!130801 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))))) (and b!4874954 b_free!130809 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))))) b_lambda!193845)))

(check-sat (not d!1565679) (not b!4874965) (not b!4874821) (not b!4874623) (not b!4874638) (not b!4874812) (not b!4874749) (not b!4874590) (not d!1565653) b_and!343333 (not b!4874948) (not b!4874916) (not b_next!131585) (not b!4874668) (not b!4874973) (not b!4874586) (not b!4874610) (not b!4874684) (not b!4874825) (not d!1565663) (not d!1565619) (not b!4874971) (not d!1565687) (not b!4874654) (not b!4874898) (not b!4874735) (not d!1565659) (not b!4874760) (not b!4874933) (not d!1565633) (not b!4874592) (not b!4874606) (not b!4874589) (not b!4874693) (not bm!338394) (not b!4874858) (not b!4874873) (not d!1565787) (not b!4874820) (not b!4874811) (not b!4874815) (not b!4874587) (not d!1565635) (not d!1565617) (not d!1565765) (not b!4874634) (not b!4874961) (not b!4874755) (not d!1565703) (not d!1565665) (not b!4874659) (not b!4874694) (not b!4874945) (not bm!338395) (not b!4874611) (not b!4874754) (not b!4874870) (not b!4874809) (not b!4874830) (not d!1565637) (not b!4874952) (not b!4874736) (not b!4874695) (not b!4874658) (not b_next!131591) b_and!343331 (not b!4874823) (not b!4874771) (not b!4874947) (not d!1565755) (not d!1565677) (not bm!338390) (not b!4874680) (not d!1565683) (not b!4874977) (not b!4874888) (not d!1565779) (not b!4874943) (not b_next!131599) b_and!343327 (not d!1565699) (not b!4874886) (not b!4874640) (not d!1565661) (not b!4874934) (not b!4874949) (not d!1565657) (not b!4874813) (not b!4874689) (not b!4874819) (not b!4874622) (not b!4874593) (not b!4874588) (not d!1565763) (not b!4874953) (not b!4874915) (not b!4874516) (not b_next!131587) (not b!4874872) (not d!1565733) (not d!1565655) (not b!4874958) (not b!4874609) (not b!4874632) (not b!4874976) (not b!4874857) tp_is_empty!35673 (not b!4874674) (not b!4874960) (not b!4874655) (not d!1565697) (not b!4874878) (not b!4874932) (not b!4874944) (not d!1565753) (not b!4874969) (not b_lambda!193845) (not b!4874729) (not b!4874751) (not b!4874875) (not d!1565739) (not b!4874636) (not b!4874964) (not b!4874662) (not b!4874810) (not d!1565783) (not b!4874814) (not b!4874657) (not b!4874376) (not bm!338389) (not b!4874818) (not b!4874753) (not b!4874962) (not d!1565735) (not b!4874972) (not b!4874673) (not b!4874968) (not d!1565731) (not d!1565631) (not b!4874750) (not b!4874757) (not b!4874860) (not d!1565629) (not b!4874890) (not b!4874608) (not b_next!131597) (not b!4874670) (not b!4874876) (not b!4874762) (not b!4874683) (not b!4874748) (not b!4874607) (not b!4874856) (not b!4874756) (not b!4874822) (not b!4874637) (not b!4874966) (not b!4874816) (not d!1565741) (not d!1565641) (not b!4874703) (not d!1565729) (not b!4874639) (not b!4874765) (not b!4874859) (not b!4874824) (not b!4874957) b_and!343345 (not b!4874764) (not d!1565685) (not b!4874884) b_and!343343 (not b!4874635) (not b!4874956) (not b!4874829) (not b!4874679) (not b!4874629) (not bm!338388) (not d!1565727) (not d!1565775) b_and!343335 (not b!4874752) (not b!4874730) (not b_next!131589) (not b!4874970) (not b!4874631) (not b!4874928) (not b!4874946) (not b!4874831) (not b!4874656) (not b!4874975))
(check-sat b_and!343333 (not b_next!131585) (not b_next!131587) (not b_next!131597) b_and!343345 (not b_next!131589) (not b_next!131591) b_and!343331 (not b_next!131599) b_and!343327 b_and!343343 b_and!343335)
(get-model)

(declare-fun d!1566035 () Bool)

(assert (=> d!1566035 (= (list!17533 (_2!33246 lt!1997393)) (list!17535 (c!828991 (_2!33246 lt!1997393))))))

(declare-fun bs!1174999 () Bool)

(assert (= bs!1174999 d!1566035))

(declare-fun m!5877224 () Bool)

(assert (=> bs!1174999 m!5877224))

(assert (=> b!4874593 d!1566035))

(declare-fun b!4875483 () Bool)

(declare-fun e!3047487 () Bool)

(declare-fun lt!1997845 () tuple2!59888)

(assert (=> b!4875483 (= e!3047487 (= (_2!33247 lt!1997845) (list!17533 (_2!33245 (v!49734 lt!1997296)))))))

(declare-fun b!4875484 () Bool)

(declare-fun e!3047486 () tuple2!59888)

(assert (=> b!4875484 (= e!3047486 (tuple2!59889 Nil!56009 (list!17533 (_2!33245 (v!49734 lt!1997296)))))))

(declare-fun b!4875485 () Bool)

(declare-fun e!3047485 () Bool)

(assert (=> b!4875485 (= e!3047487 e!3047485)))

(declare-fun res!2081257 () Bool)

(assert (=> b!4875485 (= res!2081257 (< (size!36933 (_2!33247 lt!1997845)) (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997296))))))))

(assert (=> b!4875485 (=> (not res!2081257) (not e!3047485))))

(declare-fun b!4875486 () Bool)

(assert (=> b!4875486 (= e!3047485 (not (isEmpty!29994 (_1!33247 lt!1997845))))))

(declare-fun b!4875487 () Bool)

(declare-fun lt!1997844 () Option!13802)

(declare-fun lt!1997846 () tuple2!59888)

(assert (=> b!4875487 (= e!3047486 (tuple2!59889 (Cons!56009 (_1!33248 (v!49737 lt!1997844)) (_1!33247 lt!1997846)) (_2!33247 lt!1997846)))))

(assert (=> b!4875487 (= lt!1997846 (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997844))))))

(declare-fun d!1566037 () Bool)

(assert (=> d!1566037 e!3047487))

(declare-fun c!829215 () Bool)

(assert (=> d!1566037 (= c!829215 (> (size!36938 (_1!33247 lt!1997845)) 0))))

(assert (=> d!1566037 (= lt!1997845 e!3047486)))

(declare-fun c!829214 () Bool)

(assert (=> d!1566037 (= c!829214 ((_ is Some!13801) lt!1997844))))

(assert (=> d!1566037 (= lt!1997844 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296)))))))

(assert (=> d!1566037 (= (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296)))) lt!1997845)))

(assert (= (and d!1566037 c!829214) b!4875487))

(assert (= (and d!1566037 (not c!829214)) b!4875484))

(assert (= (and d!1566037 c!829215) b!4875485))

(assert (= (and d!1566037 (not c!829215)) b!4875483))

(assert (= (and b!4875485 res!2081257) b!4875486))

(declare-fun m!5877226 () Bool)

(assert (=> b!4875485 m!5877226))

(assert (=> b!4875485 m!5875822))

(declare-fun m!5877228 () Bool)

(assert (=> b!4875485 m!5877228))

(declare-fun m!5877230 () Bool)

(assert (=> b!4875486 m!5877230))

(declare-fun m!5877232 () Bool)

(assert (=> b!4875487 m!5877232))

(declare-fun m!5877234 () Bool)

(assert (=> d!1566037 m!5877234))

(assert (=> d!1566037 m!5875822))

(declare-fun m!5877236 () Bool)

(assert (=> d!1566037 m!5877236))

(assert (=> b!4874593 d!1566037))

(declare-fun d!1566039 () Bool)

(assert (=> d!1566039 (= (list!17533 (_2!33245 (v!49734 lt!1997296))) (list!17535 (c!828991 (_2!33245 (v!49734 lt!1997296)))))))

(declare-fun bs!1175000 () Bool)

(assert (= bs!1175000 d!1566039))

(declare-fun m!5877238 () Bool)

(assert (=> bs!1175000 m!5877238))

(assert (=> b!4874593 d!1566039))

(declare-fun d!1566041 () Bool)

(assert (=> d!1566041 (= (isDefined!10860 lt!1997413) (not (isEmpty!29997 lt!1997413)))))

(declare-fun bs!1175001 () Bool)

(assert (= bs!1175001 d!1566041))

(declare-fun m!5877240 () Bool)

(assert (=> bs!1175001 m!5877240))

(assert (=> b!4874638 d!1566041))

(declare-fun d!1566043 () Bool)

(assert (=> d!1566043 (= (isEmpty!29998 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585))) (not ((_ is Some!13801) (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 input!585)))))))

(assert (=> d!1565683 d!1566043))

(declare-fun d!1566045 () Bool)

(assert (=> d!1566045 (= (isEmpty!29998 lt!1997484) (not ((_ is Some!13801) lt!1997484)))))

(assert (=> d!1565703 d!1566045))

(declare-fun b!4875489 () Bool)

(declare-fun res!2081261 () Bool)

(declare-fun e!3047490 () Bool)

(assert (=> b!4875489 (=> (not res!2081261) (not e!3047490))))

(assert (=> b!4875489 (= res!2081261 (= (head!10419 lt!1997273) (head!10419 lt!1997273)))))

(declare-fun b!4875491 () Bool)

(declare-fun e!3047489 () Bool)

(assert (=> b!4875491 (= e!3047489 (>= (size!36933 lt!1997273) (size!36933 lt!1997273)))))

(declare-fun d!1566047 () Bool)

(assert (=> d!1566047 e!3047489))

(declare-fun res!2081259 () Bool)

(assert (=> d!1566047 (=> res!2081259 e!3047489)))

(declare-fun lt!1997847 () Bool)

(assert (=> d!1566047 (= res!2081259 (not lt!1997847))))

(declare-fun e!3047488 () Bool)

(assert (=> d!1566047 (= lt!1997847 e!3047488)))

(declare-fun res!2081258 () Bool)

(assert (=> d!1566047 (=> res!2081258 e!3047488)))

(assert (=> d!1566047 (= res!2081258 ((_ is Nil!56007) lt!1997273))))

(assert (=> d!1566047 (= (isPrefix!4772 lt!1997273 lt!1997273) lt!1997847)))

(declare-fun b!4875488 () Bool)

(assert (=> b!4875488 (= e!3047488 e!3047490)))

(declare-fun res!2081260 () Bool)

(assert (=> b!4875488 (=> (not res!2081260) (not e!3047490))))

(assert (=> b!4875488 (= res!2081260 (not ((_ is Nil!56007) lt!1997273)))))

(declare-fun b!4875490 () Bool)

(assert (=> b!4875490 (= e!3047490 (isPrefix!4772 (tail!9565 lt!1997273) (tail!9565 lt!1997273)))))

(assert (= (and d!1566047 (not res!2081258)) b!4875488))

(assert (= (and b!4875488 res!2081260) b!4875489))

(assert (= (and b!4875489 res!2081261) b!4875490))

(assert (= (and d!1566047 (not res!2081259)) b!4875491))

(declare-fun m!5877242 () Bool)

(assert (=> b!4875489 m!5877242))

(assert (=> b!4875489 m!5877242))

(assert (=> b!4875491 m!5875626))

(assert (=> b!4875491 m!5875626))

(declare-fun m!5877244 () Bool)

(assert (=> b!4875490 m!5877244))

(assert (=> b!4875490 m!5877244))

(assert (=> b!4875490 m!5877244))

(assert (=> b!4875490 m!5877244))

(declare-fun m!5877246 () Bool)

(assert (=> b!4875490 m!5877246))

(assert (=> d!1565703 d!1566047))

(declare-fun d!1566049 () Bool)

(assert (=> d!1566049 (isPrefix!4772 lt!1997273 lt!1997273)))

(declare-fun lt!1997848 () Unit!146004)

(assert (=> d!1566049 (= lt!1997848 (choose!35632 lt!1997273 lt!1997273))))

(assert (=> d!1566049 (= (lemmaIsPrefixRefl!3169 lt!1997273 lt!1997273) lt!1997848)))

(declare-fun bs!1175002 () Bool)

(assert (= bs!1175002 d!1566049))

(assert (=> bs!1175002 m!5876118))

(declare-fun m!5877248 () Bool)

(assert (=> bs!1175002 m!5877248))

(assert (=> d!1565703 d!1566049))

(assert (=> d!1565703 d!1565679))

(declare-fun d!1566051 () Bool)

(assert (=> d!1566051 (= (inv!71949 (xs!17909 (right!41011 (c!828991 input!585)))) (<= (size!36933 (innerList!14689 (xs!17909 (right!41011 (c!828991 input!585))))) 2147483647))))

(declare-fun bs!1175003 () Bool)

(assert (= bs!1175003 d!1566051))

(declare-fun m!5877250 () Bool)

(assert (=> bs!1175003 m!5877250))

(assert (=> b!4874948 d!1566051))

(declare-fun d!1566053 () Bool)

(declare-fun res!2081266 () Bool)

(declare-fun e!3047495 () Bool)

(assert (=> d!1566053 (=> res!2081266 e!3047495)))

(assert (=> d!1566053 (= res!2081266 ((_ is Nil!56008) rules!1164))))

(assert (=> d!1566053 (= (forall!13055 rules!1164 lambda!243595) e!3047495)))

(declare-fun b!4875496 () Bool)

(declare-fun e!3047496 () Bool)

(assert (=> b!4875496 (= e!3047495 e!3047496)))

(declare-fun res!2081267 () Bool)

(assert (=> b!4875496 (=> (not res!2081267) (not e!3047496))))

(declare-fun dynLambda!22515 (Int Rule!15896) Bool)

(assert (=> b!4875496 (= res!2081267 (dynLambda!22515 lambda!243595 (h!62456 rules!1164)))))

(declare-fun b!4875497 () Bool)

(assert (=> b!4875497 (= e!3047496 (forall!13055 (t!364440 rules!1164) lambda!243595))))

(assert (= (and d!1566053 (not res!2081266)) b!4875496))

(assert (= (and b!4875496 res!2081267) b!4875497))

(declare-fun b_lambda!193853 () Bool)

(assert (=> (not b_lambda!193853) (not b!4875496)))

(declare-fun m!5877252 () Bool)

(assert (=> b!4875496 m!5877252))

(declare-fun m!5877254 () Bool)

(assert (=> b!4875497 m!5877254))

(assert (=> d!1565679 d!1566053))

(declare-fun d!1566055 () Bool)

(assert (=> d!1566055 (= (list!17539 (xs!17909 (c!828991 (_2!33246 lt!1997274)))) (innerList!14689 (xs!17909 (c!828991 (_2!33246 lt!1997274)))))))

(assert (=> b!4874622 d!1566055))

(declare-fun b!4875498 () Bool)

(declare-fun e!3047498 () Bool)

(declare-fun e!3047497 () Bool)

(assert (=> b!4875498 (= e!3047498 e!3047497)))

(declare-fun res!2081272 () Bool)

(assert (=> b!4875498 (=> (not res!2081272) (not e!3047497))))

(assert (=> b!4875498 (= res!2081272 (<= (- 1) (- (height!1936 (left!40681 (left!40681 (c!828991 input!585)))) (height!1936 (right!41011 (left!40681 (c!828991 input!585)))))))))

(declare-fun b!4875499 () Bool)

(declare-fun res!2081268 () Bool)

(assert (=> b!4875499 (=> (not res!2081268) (not e!3047497))))

(assert (=> b!4875499 (= res!2081268 (<= (- (height!1936 (left!40681 (left!40681 (c!828991 input!585)))) (height!1936 (right!41011 (left!40681 (c!828991 input!585))))) 1))))

(declare-fun b!4875500 () Bool)

(declare-fun res!2081270 () Bool)

(assert (=> b!4875500 (=> (not res!2081270) (not e!3047497))))

(assert (=> b!4875500 (= res!2081270 (isBalanced!3964 (right!41011 (left!40681 (c!828991 input!585)))))))

(declare-fun b!4875501 () Bool)

(declare-fun res!2081271 () Bool)

(assert (=> b!4875501 (=> (not res!2081271) (not e!3047497))))

(assert (=> b!4875501 (= res!2081271 (isBalanced!3964 (left!40681 (left!40681 (c!828991 input!585)))))))

(declare-fun d!1566057 () Bool)

(declare-fun res!2081273 () Bool)

(assert (=> d!1566057 (=> res!2081273 e!3047498)))

(assert (=> d!1566057 (= res!2081273 (not ((_ is Node!14601) (left!40681 (c!828991 input!585)))))))

(assert (=> d!1566057 (= (isBalanced!3964 (left!40681 (c!828991 input!585))) e!3047498)))

(declare-fun b!4875502 () Bool)

(declare-fun res!2081269 () Bool)

(assert (=> b!4875502 (=> (not res!2081269) (not e!3047497))))

(assert (=> b!4875502 (= res!2081269 (not (isEmpty!29996 (left!40681 (left!40681 (c!828991 input!585))))))))

(declare-fun b!4875503 () Bool)

(assert (=> b!4875503 (= e!3047497 (not (isEmpty!29996 (right!41011 (left!40681 (c!828991 input!585))))))))

(assert (= (and d!1566057 (not res!2081273)) b!4875498))

(assert (= (and b!4875498 res!2081272) b!4875499))

(assert (= (and b!4875499 res!2081268) b!4875501))

(assert (= (and b!4875501 res!2081271) b!4875500))

(assert (= (and b!4875500 res!2081270) b!4875502))

(assert (= (and b!4875502 res!2081269) b!4875503))

(declare-fun m!5877256 () Bool)

(assert (=> b!4875498 m!5877256))

(declare-fun m!5877258 () Bool)

(assert (=> b!4875498 m!5877258))

(declare-fun m!5877260 () Bool)

(assert (=> b!4875501 m!5877260))

(assert (=> b!4875499 m!5877256))

(assert (=> b!4875499 m!5877258))

(declare-fun m!5877262 () Bool)

(assert (=> b!4875500 m!5877262))

(declare-fun m!5877264 () Bool)

(assert (=> b!4875503 m!5877264))

(declare-fun m!5877266 () Bool)

(assert (=> b!4875502 m!5877266))

(assert (=> b!4874609 d!1566057))

(declare-fun d!1566059 () Bool)

(declare-fun lt!1997849 () Int)

(assert (=> d!1566059 (>= lt!1997849 0)))

(declare-fun e!3047499 () Int)

(assert (=> d!1566059 (= lt!1997849 e!3047499)))

(declare-fun c!829216 () Bool)

(assert (=> d!1566059 (= c!829216 ((_ is Nil!56007) (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1566059 (= (size!36933 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))) lt!1997849)))

(declare-fun b!4875504 () Bool)

(assert (=> b!4875504 (= e!3047499 0)))

(declare-fun b!4875505 () Bool)

(assert (=> b!4875505 (= e!3047499 (+ 1 (size!36933 (t!364439 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566059 c!829216) b!4875504))

(assert (= (and d!1566059 (not c!829216)) b!4875505))

(declare-fun m!5877268 () Bool)

(assert (=> b!4875505 m!5877268))

(assert (=> b!4874764 d!1566059))

(declare-fun b!4875507 () Bool)

(declare-fun res!2081277 () Bool)

(declare-fun e!3047502 () Bool)

(assert (=> b!4875507 (=> (not res!2081277) (not e!3047502))))

(assert (=> b!4875507 (= res!2081277 (= (head!10419 (tail!9565 lt!1997365)) (head!10419 (tail!9565 lt!1997364))))))

(declare-fun b!4875509 () Bool)

(declare-fun e!3047501 () Bool)

(assert (=> b!4875509 (= e!3047501 (>= (size!36933 (tail!9565 lt!1997364)) (size!36933 (tail!9565 lt!1997365))))))

(declare-fun d!1566061 () Bool)

(assert (=> d!1566061 e!3047501))

(declare-fun res!2081275 () Bool)

(assert (=> d!1566061 (=> res!2081275 e!3047501)))

(declare-fun lt!1997850 () Bool)

(assert (=> d!1566061 (= res!2081275 (not lt!1997850))))

(declare-fun e!3047500 () Bool)

(assert (=> d!1566061 (= lt!1997850 e!3047500)))

(declare-fun res!2081274 () Bool)

(assert (=> d!1566061 (=> res!2081274 e!3047500)))

(assert (=> d!1566061 (= res!2081274 ((_ is Nil!56007) (tail!9565 lt!1997365)))))

(assert (=> d!1566061 (= (isPrefix!4772 (tail!9565 lt!1997365) (tail!9565 lt!1997364)) lt!1997850)))

(declare-fun b!4875506 () Bool)

(assert (=> b!4875506 (= e!3047500 e!3047502)))

(declare-fun res!2081276 () Bool)

(assert (=> b!4875506 (=> (not res!2081276) (not e!3047502))))

(assert (=> b!4875506 (= res!2081276 (not ((_ is Nil!56007) (tail!9565 lt!1997364))))))

(declare-fun b!4875508 () Bool)

(assert (=> b!4875508 (= e!3047502 (isPrefix!4772 (tail!9565 (tail!9565 lt!1997365)) (tail!9565 (tail!9565 lt!1997364))))))

(assert (= (and d!1566061 (not res!2081274)) b!4875506))

(assert (= (and b!4875506 res!2081276) b!4875507))

(assert (= (and b!4875507 res!2081277) b!4875508))

(assert (= (and d!1566061 (not res!2081275)) b!4875509))

(assert (=> b!4875507 m!5876024))

(declare-fun m!5877270 () Bool)

(assert (=> b!4875507 m!5877270))

(assert (=> b!4875507 m!5876026))

(declare-fun m!5877272 () Bool)

(assert (=> b!4875507 m!5877272))

(assert (=> b!4875509 m!5876026))

(declare-fun m!5877274 () Bool)

(assert (=> b!4875509 m!5877274))

(assert (=> b!4875509 m!5876024))

(declare-fun m!5877276 () Bool)

(assert (=> b!4875509 m!5877276))

(assert (=> b!4875508 m!5876024))

(declare-fun m!5877278 () Bool)

(assert (=> b!4875508 m!5877278))

(assert (=> b!4875508 m!5876026))

(declare-fun m!5877280 () Bool)

(assert (=> b!4875508 m!5877280))

(assert (=> b!4875508 m!5877278))

(assert (=> b!4875508 m!5877280))

(declare-fun m!5877282 () Bool)

(assert (=> b!4875508 m!5877282))

(assert (=> b!4874749 d!1566061))

(declare-fun d!1566063 () Bool)

(assert (=> d!1566063 (= (tail!9565 lt!1997365) (t!364439 lt!1997365))))

(assert (=> b!4874749 d!1566063))

(declare-fun d!1566065 () Bool)

(assert (=> d!1566065 (= (tail!9565 lt!1997364) (t!364439 lt!1997364))))

(assert (=> b!4874749 d!1566065))

(declare-fun b!4875510 () Bool)

(declare-fun e!3047505 () Bool)

(declare-fun lt!1997852 () tuple2!59888)

(assert (=> b!4875510 (= e!3047505 (= (_2!33247 lt!1997852) (_2!33248 (v!49737 lt!1997493))))))

(declare-fun b!4875511 () Bool)

(declare-fun e!3047504 () tuple2!59888)

(assert (=> b!4875511 (= e!3047504 (tuple2!59889 Nil!56009 (_2!33248 (v!49737 lt!1997493))))))

(declare-fun b!4875512 () Bool)

(declare-fun e!3047503 () Bool)

(assert (=> b!4875512 (= e!3047505 e!3047503)))

(declare-fun res!2081278 () Bool)

(assert (=> b!4875512 (= res!2081278 (< (size!36933 (_2!33247 lt!1997852)) (size!36933 (_2!33248 (v!49737 lt!1997493)))))))

(assert (=> b!4875512 (=> (not res!2081278) (not e!3047503))))

(declare-fun b!4875513 () Bool)

(assert (=> b!4875513 (= e!3047503 (not (isEmpty!29994 (_1!33247 lt!1997852))))))

(declare-fun b!4875514 () Bool)

(declare-fun lt!1997851 () Option!13802)

(declare-fun lt!1997853 () tuple2!59888)

(assert (=> b!4875514 (= e!3047504 (tuple2!59889 (Cons!56009 (_1!33248 (v!49737 lt!1997851)) (_1!33247 lt!1997853)) (_2!33247 lt!1997853)))))

(assert (=> b!4875514 (= lt!1997853 (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997851))))))

(declare-fun d!1566067 () Bool)

(assert (=> d!1566067 e!3047505))

(declare-fun c!829218 () Bool)

(assert (=> d!1566067 (= c!829218 (> (size!36938 (_1!33247 lt!1997852)) 0))))

(assert (=> d!1566067 (= lt!1997852 e!3047504)))

(declare-fun c!829217 () Bool)

(assert (=> d!1566067 (= c!829217 ((_ is Some!13801) lt!1997851))))

(assert (=> d!1566067 (= lt!1997851 (maxPrefix!4554 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997493))))))

(assert (=> d!1566067 (= (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997493))) lt!1997852)))

(assert (= (and d!1566067 c!829217) b!4875514))

(assert (= (and d!1566067 (not c!829217)) b!4875511))

(assert (= (and d!1566067 c!829218) b!4875512))

(assert (= (and d!1566067 (not c!829218)) b!4875510))

(assert (= (and b!4875512 res!2081278) b!4875513))

(declare-fun m!5877284 () Bool)

(assert (=> b!4875512 m!5877284))

(declare-fun m!5877286 () Bool)

(assert (=> b!4875512 m!5877286))

(declare-fun m!5877288 () Bool)

(assert (=> b!4875513 m!5877288))

(declare-fun m!5877290 () Bool)

(assert (=> b!4875514 m!5877290))

(declare-fun m!5877292 () Bool)

(assert (=> d!1566067 m!5877292))

(declare-fun m!5877294 () Bool)

(assert (=> d!1566067 m!5877294))

(assert (=> b!4874831 d!1566067))

(assert (=> d!1565629 d!1565727))

(declare-fun b!4875516 () Bool)

(declare-fun res!2081282 () Bool)

(declare-fun e!3047508 () Bool)

(assert (=> b!4875516 (=> (not res!2081282) (not e!3047508))))

(assert (=> b!4875516 (= res!2081282 (= (head!10419 (list!17533 input!585)) (head!10419 (list!17533 input!585))))))

(declare-fun b!4875518 () Bool)

(declare-fun e!3047507 () Bool)

(assert (=> b!4875518 (= e!3047507 (>= (size!36933 (list!17533 input!585)) (size!36933 (list!17533 input!585))))))

(declare-fun d!1566069 () Bool)

(assert (=> d!1566069 e!3047507))

(declare-fun res!2081280 () Bool)

(assert (=> d!1566069 (=> res!2081280 e!3047507)))

(declare-fun lt!1997854 () Bool)

(assert (=> d!1566069 (= res!2081280 (not lt!1997854))))

(declare-fun e!3047506 () Bool)

(assert (=> d!1566069 (= lt!1997854 e!3047506)))

(declare-fun res!2081279 () Bool)

(assert (=> d!1566069 (=> res!2081279 e!3047506)))

(assert (=> d!1566069 (= res!2081279 ((_ is Nil!56007) (list!17533 input!585)))))

(assert (=> d!1566069 (= (isPrefix!4772 (list!17533 input!585) (list!17533 input!585)) lt!1997854)))

(declare-fun b!4875515 () Bool)

(assert (=> b!4875515 (= e!3047506 e!3047508)))

(declare-fun res!2081281 () Bool)

(assert (=> b!4875515 (=> (not res!2081281) (not e!3047508))))

(assert (=> b!4875515 (= res!2081281 (not ((_ is Nil!56007) (list!17533 input!585))))))

(declare-fun b!4875517 () Bool)

(assert (=> b!4875517 (= e!3047508 (isPrefix!4772 (tail!9565 (list!17533 input!585)) (tail!9565 (list!17533 input!585))))))

(assert (= (and d!1566069 (not res!2081279)) b!4875515))

(assert (= (and b!4875515 res!2081281) b!4875516))

(assert (= (and b!4875516 res!2081282) b!4875517))

(assert (= (and d!1566069 (not res!2081280)) b!4875518))

(assert (=> b!4875516 m!5875518))

(declare-fun m!5877296 () Bool)

(assert (=> b!4875516 m!5877296))

(assert (=> b!4875516 m!5875518))

(assert (=> b!4875516 m!5877296))

(assert (=> b!4875518 m!5875518))

(assert (=> b!4875518 m!5875720))

(assert (=> b!4875518 m!5875518))

(assert (=> b!4875518 m!5875720))

(assert (=> b!4875517 m!5875518))

(declare-fun m!5877298 () Bool)

(assert (=> b!4875517 m!5877298))

(assert (=> b!4875517 m!5875518))

(assert (=> b!4875517 m!5877298))

(assert (=> b!4875517 m!5877298))

(assert (=> b!4875517 m!5877298))

(declare-fun m!5877300 () Bool)

(assert (=> b!4875517 m!5877300))

(assert (=> d!1565629 d!1566069))

(declare-fun d!1566071 () Bool)

(assert (=> d!1566071 (isPrefix!4772 (list!17533 input!585) (list!17533 input!585))))

(declare-fun lt!1997855 () Unit!146004)

(assert (=> d!1566071 (= lt!1997855 (choose!35632 (list!17533 input!585) (list!17533 input!585)))))

(assert (=> d!1566071 (= (lemmaIsPrefixRefl!3169 (list!17533 input!585) (list!17533 input!585)) lt!1997855)))

(declare-fun bs!1175004 () Bool)

(assert (= bs!1175004 d!1566071))

(assert (=> bs!1175004 m!5875518))

(assert (=> bs!1175004 m!5875518))

(assert (=> bs!1175004 m!5875862))

(assert (=> bs!1175004 m!5875518))

(assert (=> bs!1175004 m!5875518))

(declare-fun m!5877302 () Bool)

(assert (=> bs!1175004 m!5877302))

(assert (=> d!1565629 d!1566071))

(assert (=> d!1565629 d!1565679))

(declare-fun d!1566073 () Bool)

(declare-fun res!2081283 () Bool)

(declare-fun e!3047509 () Bool)

(assert (=> d!1566073 (=> (not res!2081283) (not e!3047509))))

(assert (=> d!1566073 (= res!2081283 (= (csize!29432 (left!40681 (c!828991 input!585))) (+ (size!36939 (left!40681 (left!40681 (c!828991 input!585)))) (size!36939 (right!41011 (left!40681 (c!828991 input!585)))))))))

(assert (=> d!1566073 (= (inv!71947 (left!40681 (c!828991 input!585))) e!3047509)))

(declare-fun b!4875519 () Bool)

(declare-fun res!2081284 () Bool)

(assert (=> b!4875519 (=> (not res!2081284) (not e!3047509))))

(assert (=> b!4875519 (= res!2081284 (and (not (= (left!40681 (left!40681 (c!828991 input!585))) Empty!14601)) (not (= (right!41011 (left!40681 (c!828991 input!585))) Empty!14601))))))

(declare-fun b!4875520 () Bool)

(declare-fun res!2081285 () Bool)

(assert (=> b!4875520 (=> (not res!2081285) (not e!3047509))))

(assert (=> b!4875520 (= res!2081285 (= (cheight!14812 (left!40681 (c!828991 input!585))) (+ (max!0 (height!1936 (left!40681 (left!40681 (c!828991 input!585)))) (height!1936 (right!41011 (left!40681 (c!828991 input!585))))) 1)))))

(declare-fun b!4875521 () Bool)

(assert (=> b!4875521 (= e!3047509 (<= 0 (cheight!14812 (left!40681 (c!828991 input!585)))))))

(assert (= (and d!1566073 res!2081283) b!4875519))

(assert (= (and b!4875519 res!2081284) b!4875520))

(assert (= (and b!4875520 res!2081285) b!4875521))

(declare-fun m!5877304 () Bool)

(assert (=> d!1566073 m!5877304))

(declare-fun m!5877306 () Bool)

(assert (=> d!1566073 m!5877306))

(assert (=> b!4875520 m!5877256))

(assert (=> b!4875520 m!5877258))

(assert (=> b!4875520 m!5877256))

(assert (=> b!4875520 m!5877258))

(declare-fun m!5877308 () Bool)

(assert (=> b!4875520 m!5877308))

(assert (=> b!4874873 d!1566073))

(declare-fun d!1566075 () Bool)

(declare-fun res!2081286 () Bool)

(declare-fun e!3047510 () Bool)

(assert (=> d!1566075 (=> (not res!2081286) (not e!3047510))))

(assert (=> d!1566075 (= res!2081286 (= (csize!29432 (right!41011 (c!828991 input!585))) (+ (size!36939 (left!40681 (right!41011 (c!828991 input!585)))) (size!36939 (right!41011 (right!41011 (c!828991 input!585)))))))))

(assert (=> d!1566075 (= (inv!71947 (right!41011 (c!828991 input!585))) e!3047510)))

(declare-fun b!4875522 () Bool)

(declare-fun res!2081287 () Bool)

(assert (=> b!4875522 (=> (not res!2081287) (not e!3047510))))

(assert (=> b!4875522 (= res!2081287 (and (not (= (left!40681 (right!41011 (c!828991 input!585))) Empty!14601)) (not (= (right!41011 (right!41011 (c!828991 input!585))) Empty!14601))))))

(declare-fun b!4875523 () Bool)

(declare-fun res!2081288 () Bool)

(assert (=> b!4875523 (=> (not res!2081288) (not e!3047510))))

(assert (=> b!4875523 (= res!2081288 (= (cheight!14812 (right!41011 (c!828991 input!585))) (+ (max!0 (height!1936 (left!40681 (right!41011 (c!828991 input!585)))) (height!1936 (right!41011 (right!41011 (c!828991 input!585))))) 1)))))

(declare-fun b!4875524 () Bool)

(assert (=> b!4875524 (= e!3047510 (<= 0 (cheight!14812 (right!41011 (c!828991 input!585)))))))

(assert (= (and d!1566075 res!2081286) b!4875522))

(assert (= (and b!4875522 res!2081287) b!4875523))

(assert (= (and b!4875523 res!2081288) b!4875524))

(declare-fun m!5877310 () Bool)

(assert (=> d!1566075 m!5877310))

(declare-fun m!5877312 () Bool)

(assert (=> d!1566075 m!5877312))

(declare-fun m!5877314 () Bool)

(assert (=> b!4875523 m!5877314))

(declare-fun m!5877316 () Bool)

(assert (=> b!4875523 m!5877316))

(assert (=> b!4875523 m!5877314))

(assert (=> b!4875523 m!5877316))

(declare-fun m!5877318 () Bool)

(assert (=> b!4875523 m!5877318))

(assert (=> b!4874876 d!1566075))

(declare-fun d!1566077 () Bool)

(declare-fun lt!1997856 () Bool)

(assert (=> d!1566077 (= lt!1997856 (isEmpty!29994 (list!17537 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566077 (= lt!1997856 (= (size!36940 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) 0))))

(assert (=> d!1566077 (= (isEmpty!29995 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) lt!1997856)))

(declare-fun bs!1175005 () Bool)

(assert (= bs!1175005 d!1566077))

(declare-fun m!5877320 () Bool)

(assert (=> bs!1175005 m!5877320))

(assert (=> bs!1175005 m!5877320))

(declare-fun m!5877322 () Bool)

(assert (=> bs!1175005 m!5877322))

(declare-fun m!5877324 () Bool)

(assert (=> bs!1175005 m!5877324))

(assert (=> b!4874657 d!1566077))

(declare-fun d!1566079 () Bool)

(assert (=> d!1566079 (= (list!17539 (xs!17909 (c!828991 (_2!33245 (v!49734 lt!1997269))))) (innerList!14689 (xs!17909 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> b!4874673 d!1566079))

(declare-fun d!1566081 () Bool)

(declare-fun lt!1997857 () Int)

(assert (=> d!1566081 (>= lt!1997857 0)))

(declare-fun e!3047511 () Int)

(assert (=> d!1566081 (= lt!1997857 e!3047511)))

(declare-fun c!829219 () Bool)

(assert (=> d!1566081 (= c!829219 ((_ is Nil!56009) (t!364441 (_1!33247 lt!1997321))))))

(assert (=> d!1566081 (= (size!36938 (t!364441 (_1!33247 lt!1997321))) lt!1997857)))

(declare-fun b!4875525 () Bool)

(assert (=> b!4875525 (= e!3047511 0)))

(declare-fun b!4875526 () Bool)

(assert (=> b!4875526 (= e!3047511 (+ 1 (size!36938 (t!364441 (t!364441 (_1!33247 lt!1997321))))))))

(assert (= (and d!1566081 c!829219) b!4875525))

(assert (= (and d!1566081 (not c!829219)) b!4875526))

(declare-fun m!5877326 () Bool)

(assert (=> b!4875526 m!5877326))

(assert (=> b!4874771 d!1566081))

(declare-fun lt!1997920 () Option!13802)

(declare-fun d!1566083 () Bool)

(assert (=> d!1566083 (= lt!1997920 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)))))

(declare-fun e!3047562 () Option!13802)

(assert (=> d!1566083 (= lt!1997920 e!3047562)))

(declare-fun c!829245 () Bool)

(declare-fun lt!1997923 () tuple2!59900)

(assert (=> d!1566083 (= c!829245 (isEmpty!30003 (_1!33253 lt!1997923)))))

(declare-fun findLongestMatchWithZipper!75 (Regex!13123 List!56131) tuple2!59900)

(assert (=> d!1566083 (= lt!1997923 (findLongestMatchWithZipper!75 (regex!8048 (h!62456 rules!1164)) (list!17533 input!585)))))

(assert (=> d!1566083 (ruleValid!3635 thiss!11460 (h!62456 rules!1164))))

(assert (=> d!1566083 (= (maxPrefixOneRuleZipper!230 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)) lt!1997920)))

(declare-fun b!4875623 () Bool)

(assert (=> b!4875623 (= e!3047562 None!13801)))

(declare-fun b!4875624 () Bool)

(assert (=> b!4875624 (= e!3047562 (Some!13801 (tuple2!59891 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (seqFromList!5903 (_1!33253 lt!1997923))) (h!62456 rules!1164) (size!36933 (_1!33253 lt!1997923)) (_1!33253 lt!1997923)) (_2!33253 lt!1997923))))))

(declare-fun lt!1997924 () Unit!146004)

(assert (=> b!4875624 (= lt!1997924 (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 rules!1164)) (list!17533 input!585)))))

(declare-fun res!2081334 () Bool)

(assert (=> b!4875624 (= res!2081334 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) (list!17533 input!585) (list!17533 input!585) (size!36933 (list!17533 input!585))))))))

(declare-fun e!3047563 () Bool)

(assert (=> b!4875624 (=> res!2081334 e!3047563)))

(assert (=> b!4875624 e!3047563))

(declare-fun lt!1997921 () Unit!146004)

(assert (=> b!4875624 (= lt!1997921 lt!1997924)))

(declare-fun lt!1997922 () Unit!146004)

(assert (=> b!4875624 (= lt!1997922 (lemmaInv!1210 (transformation!8048 (h!62456 rules!1164))))))

(declare-fun lt!1997925 () Unit!146004)

(declare-fun lemmaSemiInverse!2558 (TokenValueInjection!16024 BalanceConc!28644) Unit!146004)

(assert (=> b!4875624 (= lt!1997925 (lemmaSemiInverse!2558 (transformation!8048 (h!62456 rules!1164)) (seqFromList!5903 (_1!33253 lt!1997923))))))

(declare-fun b!4875625 () Bool)

(assert (=> b!4875625 (= e!3047563 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) (list!17533 input!585) (list!17533 input!585) (size!36933 (list!17533 input!585))))))))

(assert (= (and d!1566083 c!829245) b!4875623))

(assert (= (and d!1566083 (not c!829245)) b!4875624))

(assert (= (and b!4875624 (not res!2081334)) b!4875625))

(assert (=> d!1566083 m!5875518))

(assert (=> d!1566083 m!5876158))

(declare-fun m!5877532 () Bool)

(assert (=> d!1566083 m!5877532))

(assert (=> d!1566083 m!5875518))

(declare-fun m!5877534 () Bool)

(assert (=> d!1566083 m!5877534))

(assert (=> d!1566083 m!5876012))

(declare-fun m!5877536 () Bool)

(assert (=> b!4875624 m!5877536))

(assert (=> b!4875624 m!5875518))

(declare-fun m!5877538 () Bool)

(assert (=> b!4875624 m!5877538))

(declare-fun m!5877540 () Bool)

(assert (=> b!4875624 m!5877540))

(assert (=> b!4875624 m!5876230))

(assert (=> b!4875624 m!5875518))

(assert (=> b!4875624 m!5875720))

(assert (=> b!4875624 m!5877540))

(declare-fun m!5877542 () Bool)

(assert (=> b!4875624 m!5877542))

(assert (=> b!4875624 m!5876208))

(assert (=> b!4875624 m!5875518))

(assert (=> b!4875624 m!5875518))

(assert (=> b!4875624 m!5875720))

(declare-fun m!5877544 () Bool)

(assert (=> b!4875624 m!5877544))

(assert (=> b!4875624 m!5877540))

(declare-fun m!5877546 () Bool)

(assert (=> b!4875624 m!5877546))

(declare-fun m!5877548 () Bool)

(assert (=> b!4875624 m!5877548))

(assert (=> b!4875624 m!5876208))

(assert (=> b!4875625 m!5876208))

(assert (=> b!4875625 m!5875518))

(assert (=> b!4875625 m!5875720))

(assert (=> b!4875625 m!5876208))

(assert (=> b!4875625 m!5875518))

(assert (=> b!4875625 m!5875518))

(assert (=> b!4875625 m!5875720))

(assert (=> b!4875625 m!5877544))

(declare-fun m!5877550 () Bool)

(assert (=> b!4875625 m!5877550))

(assert (=> bm!338388 d!1566083))

(declare-fun d!1566149 () Bool)

(declare-fun lt!1997926 () Int)

(assert (=> d!1566149 (= lt!1997926 (size!36933 (list!17535 (left!40681 (c!828991 input!585)))))))

(assert (=> d!1566149 (= lt!1997926 (ite ((_ is Empty!14601) (left!40681 (c!828991 input!585))) 0 (ite ((_ is Leaf!24336) (left!40681 (c!828991 input!585))) (csize!29433 (left!40681 (c!828991 input!585))) (csize!29432 (left!40681 (c!828991 input!585))))))))

(assert (=> d!1566149 (= (size!36939 (left!40681 (c!828991 input!585))) lt!1997926)))

(declare-fun bs!1175015 () Bool)

(assert (= bs!1175015 d!1566149))

(assert (=> bs!1175015 m!5875952))

(assert (=> bs!1175015 m!5875952))

(declare-fun m!5877552 () Bool)

(assert (=> bs!1175015 m!5877552))

(assert (=> d!1565663 d!1566149))

(declare-fun d!1566151 () Bool)

(declare-fun lt!1997927 () Int)

(assert (=> d!1566151 (= lt!1997927 (size!36933 (list!17535 (right!41011 (c!828991 input!585)))))))

(assert (=> d!1566151 (= lt!1997927 (ite ((_ is Empty!14601) (right!41011 (c!828991 input!585))) 0 (ite ((_ is Leaf!24336) (right!41011 (c!828991 input!585))) (csize!29433 (right!41011 (c!828991 input!585))) (csize!29432 (right!41011 (c!828991 input!585))))))))

(assert (=> d!1566151 (= (size!36939 (right!41011 (c!828991 input!585))) lt!1997927)))

(declare-fun bs!1175016 () Bool)

(assert (= bs!1175016 d!1566151))

(assert (=> bs!1175016 m!5875954))

(assert (=> bs!1175016 m!5875954))

(declare-fun m!5877554 () Bool)

(assert (=> bs!1175016 m!5877554))

(assert (=> d!1565663 d!1566151))

(declare-fun d!1566153 () Bool)

(declare-fun e!3047567 () Bool)

(assert (=> d!1566153 e!3047567))

(declare-fun res!2081341 () Bool)

(assert (=> d!1566153 (=> (not res!2081341) (not e!3047567))))

(assert (=> d!1566153 (= res!2081341 (isBalanced!3966 (prepend!1406 (c!828992 (_1!33246 lt!1997392)) (_1!33245 (v!49734 lt!1997394)))))))

(declare-fun lt!1997928 () BalanceConc!28646)

(assert (=> d!1566153 (= lt!1997928 (BalanceConc!28647 (prepend!1406 (c!828992 (_1!33246 lt!1997392)) (_1!33245 (v!49734 lt!1997394)))))))

(assert (=> d!1566153 (= (prepend!1404 (_1!33246 lt!1997392) (_1!33245 (v!49734 lt!1997394))) lt!1997928)))

(declare-fun b!4875632 () Bool)

(assert (=> b!4875632 (= e!3047567 (= (list!17534 lt!1997928) (Cons!56009 (_1!33245 (v!49734 lt!1997394)) (list!17534 (_1!33246 lt!1997392)))))))

(assert (= (and d!1566153 res!2081341) b!4875632))

(declare-fun m!5877556 () Bool)

(assert (=> d!1566153 m!5877556))

(assert (=> d!1566153 m!5877556))

(declare-fun m!5877558 () Bool)

(assert (=> d!1566153 m!5877558))

(declare-fun m!5877560 () Bool)

(assert (=> b!4875632 m!5877560))

(declare-fun m!5877562 () Bool)

(assert (=> b!4875632 m!5877562))

(assert (=> b!4874589 d!1566153))

(declare-fun b!4875633 () Bool)

(declare-fun e!3047569 () Bool)

(declare-fun e!3047570 () Bool)

(assert (=> b!4875633 (= e!3047569 e!3047570)))

(declare-fun res!2081343 () Bool)

(declare-fun lt!1997930 () tuple2!59886)

(assert (=> b!4875633 (= res!2081343 (< (size!36931 (_2!33246 lt!1997930)) (size!36931 (_2!33245 (v!49734 lt!1997394)))))))

(assert (=> b!4875633 (=> (not res!2081343) (not e!3047570))))

(declare-fun b!4875634 () Bool)

(declare-fun res!2081344 () Bool)

(declare-fun e!3047571 () Bool)

(assert (=> b!4875634 (=> (not res!2081344) (not e!3047571))))

(assert (=> b!4875634 (= res!2081344 (= (list!17534 (_1!33246 lt!1997930)) (_1!33247 (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997394)))))))))

(declare-fun b!4875635 () Bool)

(declare-fun e!3047568 () tuple2!59886)

(declare-fun lt!1997929 () tuple2!59886)

(declare-fun lt!1997931 () Option!13801)

(assert (=> b!4875635 (= e!3047568 (tuple2!59887 (prepend!1404 (_1!33246 lt!1997929) (_1!33245 (v!49734 lt!1997931))) (_2!33246 lt!1997929)))))

(assert (=> b!4875635 (= lt!1997929 (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997931))))))

(declare-fun b!4875636 () Bool)

(assert (=> b!4875636 (= e!3047569 (= (list!17533 (_2!33246 lt!1997930)) (list!17533 (_2!33245 (v!49734 lt!1997394)))))))

(declare-fun b!4875637 () Bool)

(assert (=> b!4875637 (= e!3047568 (tuple2!59887 (BalanceConc!28647 Empty!14602) (_2!33245 (v!49734 lt!1997394))))))

(declare-fun d!1566159 () Bool)

(assert (=> d!1566159 e!3047571))

(declare-fun res!2081342 () Bool)

(assert (=> d!1566159 (=> (not res!2081342) (not e!3047571))))

(assert (=> d!1566159 (= res!2081342 e!3047569)))

(declare-fun c!829246 () Bool)

(assert (=> d!1566159 (= c!829246 (> (size!36932 (_1!33246 lt!1997930)) 0))))

(assert (=> d!1566159 (= lt!1997930 e!3047568)))

(declare-fun c!829247 () Bool)

(assert (=> d!1566159 (= c!829247 ((_ is Some!13800) lt!1997931))))

(assert (=> d!1566159 (= lt!1997931 (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997394))))))

(assert (=> d!1566159 (= (lexRec!853 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997394))) lt!1997930)))

(declare-fun b!4875638 () Bool)

(assert (=> b!4875638 (= e!3047570 (not (isEmpty!29990 (_1!33246 lt!1997930))))))

(declare-fun b!4875639 () Bool)

(assert (=> b!4875639 (= e!3047571 (= (list!17533 (_2!33246 lt!1997930)) (_2!33247 (lexList!2111 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997394)))))))))

(assert (= (and d!1566159 c!829247) b!4875635))

(assert (= (and d!1566159 (not c!829247)) b!4875637))

(assert (= (and d!1566159 c!829246) b!4875633))

(assert (= (and d!1566159 (not c!829246)) b!4875636))

(assert (= (and b!4875633 res!2081343) b!4875638))

(assert (= (and d!1566159 res!2081342) b!4875634))

(assert (= (and b!4875634 res!2081344) b!4875639))

(declare-fun m!5877568 () Bool)

(assert (=> b!4875639 m!5877568))

(declare-fun m!5877570 () Bool)

(assert (=> b!4875639 m!5877570))

(assert (=> b!4875639 m!5877570))

(declare-fun m!5877574 () Bool)

(assert (=> b!4875639 m!5877574))

(declare-fun m!5877576 () Bool)

(assert (=> d!1566159 m!5877576))

(declare-fun m!5877578 () Bool)

(assert (=> d!1566159 m!5877578))

(declare-fun m!5877580 () Bool)

(assert (=> b!4875634 m!5877580))

(assert (=> b!4875634 m!5877570))

(assert (=> b!4875634 m!5877570))

(assert (=> b!4875634 m!5877574))

(declare-fun m!5877582 () Bool)

(assert (=> b!4875635 m!5877582))

(declare-fun m!5877584 () Bool)

(assert (=> b!4875635 m!5877584))

(assert (=> b!4875636 m!5877568))

(assert (=> b!4875636 m!5877570))

(declare-fun m!5877586 () Bool)

(assert (=> b!4875633 m!5877586))

(declare-fun m!5877588 () Bool)

(assert (=> b!4875633 m!5877588))

(declare-fun m!5877590 () Bool)

(assert (=> b!4875638 m!5877590))

(assert (=> b!4874589 d!1566159))

(declare-fun d!1566168 () Bool)

(declare-fun lt!1997933 () Int)

(assert (=> d!1566168 (>= lt!1997933 0)))

(declare-fun e!3047574 () Int)

(assert (=> d!1566168 (= lt!1997933 e!3047574)))

(declare-fun c!829249 () Bool)

(assert (=> d!1566168 (= c!829249 ((_ is Nil!56007) (list!17533 (_2!33246 lt!1997295))))))

(assert (=> d!1566168 (= (size!36933 (list!17533 (_2!33246 lt!1997295))) lt!1997933)))

(declare-fun b!4875642 () Bool)

(assert (=> b!4875642 (= e!3047574 0)))

(declare-fun b!4875643 () Bool)

(assert (=> b!4875643 (= e!3047574 (+ 1 (size!36933 (t!364439 (list!17533 (_2!33246 lt!1997295))))))))

(assert (= (and d!1566168 c!829249) b!4875642))

(assert (= (and d!1566168 (not c!829249)) b!4875643))

(declare-fun m!5877596 () Bool)

(assert (=> b!4875643 m!5877596))

(assert (=> d!1565657 d!1566168))

(assert (=> d!1565657 d!1565755))

(declare-fun d!1566173 () Bool)

(declare-fun lt!1997935 () Int)

(assert (=> d!1566173 (= lt!1997935 (size!36933 (list!17535 (c!828991 (_2!33246 lt!1997295)))))))

(assert (=> d!1566173 (= lt!1997935 (ite ((_ is Empty!14601) (c!828991 (_2!33246 lt!1997295))) 0 (ite ((_ is Leaf!24336) (c!828991 (_2!33246 lt!1997295))) (csize!29433 (c!828991 (_2!33246 lt!1997295))) (csize!29432 (c!828991 (_2!33246 lt!1997295))))))))

(assert (=> d!1566173 (= (size!36939 (c!828991 (_2!33246 lt!1997295))) lt!1997935)))

(declare-fun bs!1175020 () Bool)

(assert (= bs!1175020 d!1566173))

(assert (=> bs!1175020 m!5876244))

(assert (=> bs!1175020 m!5876244))

(declare-fun m!5877598 () Bool)

(assert (=> bs!1175020 m!5877598))

(assert (=> d!1565657 d!1566173))

(declare-fun d!1566175 () Bool)

(assert (=> d!1566175 (= (get!19247 lt!1997413) (v!49734 lt!1997413))))

(assert (=> b!4874635 d!1566175))

(declare-fun d!1566177 () Bool)

(assert (=> d!1566177 (= (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))) (v!49737 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> b!4874635 d!1566177))

(declare-fun lt!1997937 () Option!13802)

(declare-fun d!1566179 () Bool)

(assert (=> d!1566179 (= lt!1997937 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun e!3047578 () Option!13802)

(assert (=> d!1566179 (= lt!1997937 e!3047578)))

(declare-fun c!829250 () Bool)

(assert (=> d!1566179 (= c!829250 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1997936 () Unit!146004)

(declare-fun lt!1997941 () Unit!146004)

(assert (=> d!1566179 (= lt!1997936 lt!1997941)))

(assert (=> d!1566179 (isPrefix!4772 (list!17533 (_2!33245 (v!49734 lt!1997269))) (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1566179 (= lt!1997941 (lemmaIsPrefixRefl!3169 (list!17533 (_2!33245 (v!49734 lt!1997269))) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1566179 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1566179 (= (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1997937)))

(declare-fun call!338446 () Option!13802)

(declare-fun bm!338441 () Bool)

(assert (=> bm!338441 (= call!338446 (maxPrefixOneRuleZipper!230 thiss!11460 (h!62456 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4875648 () Bool)

(assert (=> b!4875648 (= e!3047578 call!338446)))

(declare-fun b!4875649 () Bool)

(declare-fun lt!1997940 () Option!13802)

(declare-fun lt!1997939 () Option!13802)

(assert (=> b!4875649 (= e!3047578 (ite (and ((_ is None!13801) lt!1997940) ((_ is None!13801) lt!1997939)) None!13801 (ite ((_ is None!13801) lt!1997939) lt!1997940 (ite ((_ is None!13801) lt!1997940) lt!1997939 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1997940))) (size!36930 (_1!33248 (v!49737 lt!1997939)))) lt!1997940 lt!1997939)))))))

(assert (=> b!4875649 (= lt!1997940 call!338446)))

(assert (=> b!4875649 (= lt!1997939 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(assert (= (and d!1566179 c!829250) b!4875648))

(assert (= (and d!1566179 (not c!829250)) b!4875649))

(assert (= (or b!4875648 b!4875649) bm!338441))

(assert (=> d!1566179 m!5875522))

(assert (=> d!1566179 m!5875894))

(assert (=> d!1566179 m!5875522))

(assert (=> d!1566179 m!5875522))

(declare-fun m!5877618 () Bool)

(assert (=> d!1566179 m!5877618))

(assert (=> d!1566179 m!5875522))

(assert (=> d!1566179 m!5875522))

(declare-fun m!5877620 () Bool)

(assert (=> d!1566179 m!5877620))

(assert (=> d!1566179 m!5875710))

(assert (=> bm!338441 m!5875522))

(declare-fun m!5877622 () Bool)

(assert (=> bm!338441 m!5877622))

(assert (=> b!4875649 m!5875522))

(declare-fun m!5877624 () Bool)

(assert (=> b!4875649 m!5877624))

(assert (=> b!4874635 d!1566179))

(assert (=> b!4874635 d!1565533))

(declare-fun d!1566187 () Bool)

(declare-fun c!829251 () Bool)

(assert (=> d!1566187 (= c!829251 ((_ is Nil!56007) (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun e!3047581 () (InoxSet C!26444))

(assert (=> d!1566187 (= (content!9993 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))) e!3047581)))

(declare-fun b!4875652 () Bool)

(assert (=> b!4875652 (= e!3047581 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4875653 () Bool)

(assert (=> b!4875653 (= e!3047581 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))) true) (content!9993 (t!364439 (t!364439 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566187 c!829251) b!4875652))

(assert (= (and d!1566187 (not c!829251)) b!4875653))

(declare-fun m!5877628 () Bool)

(assert (=> b!4875653 m!5877628))

(declare-fun m!5877630 () Bool)

(assert (=> b!4875653 m!5877630))

(assert (=> b!4874888 d!1566187))

(declare-fun d!1566189 () Bool)

(assert (=> d!1566189 (= (isDefined!10861 lt!1997484) (not (isEmpty!29998 lt!1997484)))))

(declare-fun bs!1175025 () Bool)

(assert (= bs!1175025 d!1566189))

(assert (=> bs!1175025 m!5876116))

(assert (=> b!4874810 d!1566189))

(assert (=> d!1565677 d!1565681))

(declare-fun d!1566193 () Bool)

(assert (=> d!1566193 (isPrefix!4772 lt!1997365 lt!1997364)))

(assert (=> d!1566193 true))

(declare-fun _$45!2144 () Unit!146004)

(assert (=> d!1566193 (= (choose!35632 lt!1997365 lt!1997364) _$45!2144)))

(declare-fun bs!1175026 () Bool)

(assert (= bs!1175026 d!1566193))

(assert (=> bs!1175026 m!5875714))

(assert (=> d!1565677 d!1566193))

(declare-fun bs!1175032 () Bool)

(declare-fun d!1566195 () Bool)

(assert (= bs!1175032 (and d!1566195 d!1565783)))

(declare-fun lambda!243630 () Int)

(assert (=> bs!1175032 (= lambda!243630 lambda!243613)))

(declare-fun b!4875663 () Bool)

(declare-fun e!3047590 () Bool)

(assert (=> b!4875663 (= e!3047590 true)))

(assert (=> d!1566195 e!3047590))

(assert (= d!1566195 b!4875663))

(assert (=> b!4875663 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22514 order!25269 lambda!243630))))

(assert (=> b!4875663 (< (dynLambda!22507 order!25259 (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22514 order!25269 lambda!243630))))

(declare-fun dynLambda!22517 (Int BalanceConc!28644) TokenValue!8358)

(assert (=> d!1566195 (= (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (_1!33252 lt!1997541)) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))))

(declare-fun lt!1997950 () Unit!146004)

(declare-fun Forall2of!439 (Int BalanceConc!28644 BalanceConc!28644) Unit!146004)

(assert (=> d!1566195 (= lt!1997950 (Forall2of!439 lambda!243630 (_1!33252 lt!1997541) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))))

(assert (=> d!1566195 (= (list!17533 (_1!33252 lt!1997541)) (list!17533 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))))

(assert (=> d!1566195 (= (lemmaEqSameImage!1064 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1997541) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))) lt!1997950)))

(declare-fun b_lambda!193865 () Bool)

(assert (=> (not b_lambda!193865) (not d!1566195)))

(declare-fun t!364506 () Bool)

(declare-fun tb!258213 () Bool)

(assert (=> (and b!4874320 (= (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364506) tb!258213))

(declare-fun result!321442 () Bool)

(declare-fun inv!21 (TokenValue!8358) Bool)

(assert (=> tb!258213 (= result!321442 (inv!21 (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (_1!33252 lt!1997541))))))

(declare-fun m!5877654 () Bool)

(assert (=> tb!258213 m!5877654))

(assert (=> d!1566195 t!364506))

(declare-fun b_and!343381 () Bool)

(assert (= b_and!343327 (and (=> t!364506 result!321442) b_and!343381)))

(declare-fun t!364508 () Bool)

(declare-fun tb!258215 () Bool)

(assert (=> (and b!4874507 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364508) tb!258215))

(declare-fun result!321446 () Bool)

(assert (= result!321446 result!321442))

(assert (=> d!1566195 t!364508))

(declare-fun b_and!343383 () Bool)

(assert (= b_and!343333 (and (=> t!364508 result!321446) b_and!343383)))

(declare-fun t!364510 () Bool)

(declare-fun tb!258217 () Bool)

(assert (=> (and b!4874954 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364510) tb!258217))

(declare-fun result!321448 () Bool)

(assert (= result!321448 result!321442))

(assert (=> d!1566195 t!364510))

(declare-fun b_and!343385 () Bool)

(assert (= b_and!343343 (and (=> t!364510 result!321448) b_and!343385)))

(declare-fun b_lambda!193867 () Bool)

(assert (=> (not b_lambda!193867) (not d!1566195)))

(declare-fun t!364512 () Bool)

(declare-fun tb!258219 () Bool)

(assert (=> (and b!4874320 (= (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364512) tb!258219))

(declare-fun result!321450 () Bool)

(assert (=> tb!258219 (= result!321450 (inv!21 (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541))))))))

(declare-fun m!5877656 () Bool)

(assert (=> tb!258219 m!5877656))

(assert (=> d!1566195 t!364512))

(declare-fun b_and!343387 () Bool)

(assert (= b_and!343381 (and (=> t!364512 result!321450) b_and!343387)))

(declare-fun t!364514 () Bool)

(declare-fun tb!258221 () Bool)

(assert (=> (and b!4874507 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364514) tb!258221))

(declare-fun result!321452 () Bool)

(assert (= result!321452 result!321450))

(assert (=> d!1566195 t!364514))

(declare-fun b_and!343389 () Bool)

(assert (= b_and!343383 (and (=> t!364514 result!321452) b_and!343389)))

(declare-fun t!364516 () Bool)

(declare-fun tb!258223 () Bool)

(assert (=> (and b!4874954 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364516) tb!258223))

(declare-fun result!321454 () Bool)

(assert (= result!321454 result!321450))

(assert (=> d!1566195 t!364516))

(declare-fun b_and!343391 () Bool)

(assert (= b_and!343385 (and (=> t!364516 result!321454) b_and!343391)))

(assert (=> d!1566195 m!5876222))

(declare-fun m!5877658 () Bool)

(assert (=> d!1566195 m!5877658))

(assert (=> d!1566195 m!5876222))

(declare-fun m!5877660 () Bool)

(assert (=> d!1566195 m!5877660))

(declare-fun m!5877662 () Bool)

(assert (=> d!1566195 m!5877662))

(assert (=> d!1566195 m!5876220))

(assert (=> d!1566195 m!5876222))

(declare-fun m!5877664 () Bool)

(assert (=> d!1566195 m!5877664))

(assert (=> b!4874856 d!1566195))

(declare-fun bm!338506 () Bool)

(declare-fun call!338514 () Unit!146004)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1051 (List!56131 List!56131 List!56131) Unit!146004)

(assert (=> bm!338506 (= call!338514 (lemmaIsPrefixSameLengthThenSameList!1051 lt!1997536 Nil!56007 lt!1997536))))

(declare-fun b!4875854 () Bool)

(declare-fun e!3047705 () Unit!146004)

(declare-fun Unit!146009 () Unit!146004)

(assert (=> b!4875854 (= e!3047705 Unit!146009)))

(declare-fun lt!1998063 () Unit!146004)

(declare-fun call!338513 () Unit!146004)

(assert (=> b!4875854 (= lt!1998063 call!338513)))

(declare-fun call!338511 () Bool)

(assert (=> b!4875854 call!338511))

(declare-fun lt!1998065 () Unit!146004)

(assert (=> b!4875854 (= lt!1998065 lt!1998063)))

(declare-fun lt!1998053 () Unit!146004)

(assert (=> b!4875854 (= lt!1998053 call!338514)))

(assert (=> b!4875854 (= lt!1997536 Nil!56007)))

(declare-fun lt!1998059 () Unit!146004)

(assert (=> b!4875854 (= lt!1998059 lt!1998053)))

(assert (=> b!4875854 false))

(declare-fun bm!338507 () Bool)

(assert (=> bm!338507 (= call!338511 (isPrefix!4772 lt!1997536 lt!1997536))))

(declare-fun b!4875855 () Bool)

(declare-fun Unit!146010 () Unit!146004)

(assert (=> b!4875855 (= e!3047705 Unit!146010)))

(declare-fun call!338518 () List!56131)

(declare-fun lt!1998047 () List!56131)

(declare-fun call!338516 () Regex!13123)

(declare-fun bm!338508 () Bool)

(declare-fun call!338515 () tuple2!59900)

(assert (=> bm!338508 (= call!338515 (findLongestMatchInner!1727 call!338516 lt!1998047 (+ (size!36933 Nil!56007) 1) call!338518 lt!1997536 (size!36933 lt!1997536)))))

(declare-fun d!1566213 () Bool)

(declare-fun e!3047701 () Bool)

(assert (=> d!1566213 e!3047701))

(declare-fun res!2081417 () Bool)

(assert (=> d!1566213 (=> (not res!2081417) (not e!3047701))))

(declare-fun lt!1998055 () tuple2!59900)

(assert (=> d!1566213 (= res!2081417 (= (++!12201 (_1!33253 lt!1998055) (_2!33253 lt!1998055)) lt!1997536))))

(declare-fun e!3047706 () tuple2!59900)

(assert (=> d!1566213 (= lt!1998055 e!3047706)))

(declare-fun c!829314 () Bool)

(declare-fun lostCause!1079 (Regex!13123) Bool)

(assert (=> d!1566213 (= c!829314 (lostCause!1079 (regex!8048 (h!62456 rules!1164))))))

(declare-fun lt!1998060 () Unit!146004)

(declare-fun Unit!146011 () Unit!146004)

(assert (=> d!1566213 (= lt!1998060 Unit!146011)))

(declare-fun getSuffix!2880 (List!56131 List!56131) List!56131)

(assert (=> d!1566213 (= (getSuffix!2880 lt!1997536 Nil!56007) lt!1997536)))

(declare-fun lt!1998043 () Unit!146004)

(declare-fun lt!1998052 () Unit!146004)

(assert (=> d!1566213 (= lt!1998043 lt!1998052)))

(declare-fun lt!1998066 () List!56131)

(assert (=> d!1566213 (= lt!1997536 lt!1998066)))

(declare-fun lemmaSamePrefixThenSameSuffix!2296 (List!56131 List!56131 List!56131 List!56131 List!56131) Unit!146004)

(assert (=> d!1566213 (= lt!1998052 (lemmaSamePrefixThenSameSuffix!2296 Nil!56007 lt!1997536 Nil!56007 lt!1998066 lt!1997536))))

(assert (=> d!1566213 (= lt!1998066 (getSuffix!2880 lt!1997536 Nil!56007))))

(declare-fun lt!1998067 () Unit!146004)

(declare-fun lt!1998056 () Unit!146004)

(assert (=> d!1566213 (= lt!1998067 lt!1998056)))

(assert (=> d!1566213 (isPrefix!4772 Nil!56007 (++!12201 Nil!56007 lt!1997536))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3116 (List!56131 List!56131) Unit!146004)

(assert (=> d!1566213 (= lt!1998056 (lemmaConcatTwoListThenFirstIsPrefix!3116 Nil!56007 lt!1997536))))

(declare-fun validRegex!5874 (Regex!13123) Bool)

(assert (=> d!1566213 (validRegex!5874 (regex!8048 (h!62456 rules!1164)))))

(assert (=> d!1566213 (= (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)) lt!1998055)))

(declare-fun b!4875856 () Bool)

(declare-fun e!3047704 () tuple2!59900)

(assert (=> b!4875856 (= e!3047704 (tuple2!59901 Nil!56007 lt!1997536))))

(declare-fun bm!338509 () Bool)

(declare-fun call!338517 () C!26444)

(declare-fun derivativeStep!3871 (Regex!13123 C!26444) Regex!13123)

(assert (=> bm!338509 (= call!338516 (derivativeStep!3871 (regex!8048 (h!62456 rules!1164)) call!338517))))

(declare-fun b!4875857 () Bool)

(declare-fun e!3047699 () tuple2!59900)

(assert (=> b!4875857 (= e!3047706 e!3047699)))

(declare-fun c!829318 () Bool)

(assert (=> b!4875857 (= c!829318 (= (size!36933 Nil!56007) (size!36933 lt!1997536)))))

(declare-fun b!4875858 () Bool)

(declare-fun e!3047702 () Bool)

(assert (=> b!4875858 (= e!3047702 (>= (size!36933 (_1!33253 lt!1998055)) (size!36933 Nil!56007)))))

(declare-fun b!4875859 () Bool)

(declare-fun c!829313 () Bool)

(declare-fun call!338512 () Bool)

(assert (=> b!4875859 (= c!829313 call!338512)))

(declare-fun lt!1998068 () Unit!146004)

(declare-fun lt!1998064 () Unit!146004)

(assert (=> b!4875859 (= lt!1998068 lt!1998064)))

(assert (=> b!4875859 (= lt!1997536 Nil!56007)))

(assert (=> b!4875859 (= lt!1998064 call!338514)))

(declare-fun lt!1998048 () Unit!146004)

(declare-fun lt!1998050 () Unit!146004)

(assert (=> b!4875859 (= lt!1998048 lt!1998050)))

(assert (=> b!4875859 call!338511))

(assert (=> b!4875859 (= lt!1998050 call!338513)))

(assert (=> b!4875859 (= e!3047699 e!3047704)))

(declare-fun b!4875860 () Bool)

(assert (=> b!4875860 (= e!3047706 (tuple2!59901 Nil!56007 lt!1997536))))

(declare-fun b!4875861 () Bool)

(assert (=> b!4875861 (= e!3047701 e!3047702)))

(declare-fun res!2081418 () Bool)

(assert (=> b!4875861 (=> res!2081418 e!3047702)))

(assert (=> b!4875861 (= res!2081418 (isEmpty!30003 (_1!33253 lt!1998055)))))

(declare-fun bm!338510 () Bool)

(assert (=> bm!338510 (= call!338517 (head!10419 lt!1997536))))

(declare-fun b!4875862 () Bool)

(assert (=> b!4875862 (= e!3047704 (tuple2!59901 Nil!56007 Nil!56007))))

(declare-fun bm!338511 () Bool)

(declare-fun nullable!4547 (Regex!13123) Bool)

(assert (=> bm!338511 (= call!338512 (nullable!4547 (regex!8048 (h!62456 rules!1164))))))

(declare-fun b!4875863 () Bool)

(declare-fun c!829316 () Bool)

(assert (=> b!4875863 (= c!829316 call!338512)))

(declare-fun lt!1998069 () Unit!146004)

(declare-fun lt!1998062 () Unit!146004)

(assert (=> b!4875863 (= lt!1998069 lt!1998062)))

(declare-fun lt!1998046 () C!26444)

(declare-fun lt!1998051 () List!56131)

(assert (=> b!4875863 (= (++!12201 (++!12201 Nil!56007 (Cons!56007 lt!1998046 Nil!56007)) lt!1998051) lt!1997536)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1323 (List!56131 C!26444 List!56131 List!56131) Unit!146004)

(assert (=> b!4875863 (= lt!1998062 (lemmaMoveElementToOtherListKeepsConcatEq!1323 Nil!56007 lt!1998046 lt!1998051 lt!1997536))))

(assert (=> b!4875863 (= lt!1998051 (tail!9565 lt!1997536))))

(assert (=> b!4875863 (= lt!1998046 (head!10419 lt!1997536))))

(declare-fun lt!1998070 () Unit!146004)

(declare-fun lt!1998057 () Unit!146004)

(assert (=> b!4875863 (= lt!1998070 lt!1998057)))

(assert (=> b!4875863 (isPrefix!4772 (++!12201 Nil!56007 (Cons!56007 (head!10419 (getSuffix!2880 lt!1997536 Nil!56007)) Nil!56007)) lt!1997536)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!705 (List!56131 List!56131) Unit!146004)

(assert (=> b!4875863 (= lt!1998057 (lemmaAddHeadSuffixToPrefixStillPrefix!705 Nil!56007 lt!1997536))))

(declare-fun lt!1998061 () Unit!146004)

(declare-fun lt!1998044 () Unit!146004)

(assert (=> b!4875863 (= lt!1998061 lt!1998044)))

(assert (=> b!4875863 (= lt!1998044 (lemmaAddHeadSuffixToPrefixStillPrefix!705 Nil!56007 lt!1997536))))

(assert (=> b!4875863 (= lt!1998047 (++!12201 Nil!56007 (Cons!56007 (head!10419 lt!1997536) Nil!56007)))))

(declare-fun lt!1998045 () Unit!146004)

(assert (=> b!4875863 (= lt!1998045 e!3047705)))

(declare-fun c!829315 () Bool)

(assert (=> b!4875863 (= c!829315 (= (size!36933 Nil!56007) (size!36933 lt!1997536)))))

(declare-fun lt!1998049 () Unit!146004)

(declare-fun lt!1998058 () Unit!146004)

(assert (=> b!4875863 (= lt!1998049 lt!1998058)))

(assert (=> b!4875863 (<= (size!36933 Nil!56007) (size!36933 lt!1997536))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!617 (List!56131 List!56131) Unit!146004)

(assert (=> b!4875863 (= lt!1998058 (lemmaIsPrefixThenSmallerEqSize!617 Nil!56007 lt!1997536))))

(declare-fun e!3047703 () tuple2!59900)

(assert (=> b!4875863 (= e!3047699 e!3047703)))

(declare-fun bm!338512 () Bool)

(assert (=> bm!338512 (= call!338513 (lemmaIsPrefixRefl!3169 lt!1997536 lt!1997536))))

(declare-fun b!4875864 () Bool)

(declare-fun e!3047700 () tuple2!59900)

(assert (=> b!4875864 (= e!3047700 (tuple2!59901 Nil!56007 lt!1997536))))

(declare-fun bm!338513 () Bool)

(assert (=> bm!338513 (= call!338518 (tail!9565 lt!1997536))))

(declare-fun b!4875865 () Bool)

(assert (=> b!4875865 (= e!3047703 call!338515)))

(declare-fun b!4875866 () Bool)

(assert (=> b!4875866 (= e!3047703 e!3047700)))

(declare-fun lt!1998054 () tuple2!59900)

(assert (=> b!4875866 (= lt!1998054 call!338515)))

(declare-fun c!829317 () Bool)

(assert (=> b!4875866 (= c!829317 (isEmpty!30003 (_1!33253 lt!1998054)))))

(declare-fun b!4875867 () Bool)

(assert (=> b!4875867 (= e!3047700 lt!1998054)))

(assert (= (and d!1566213 c!829314) b!4875860))

(assert (= (and d!1566213 (not c!829314)) b!4875857))

(assert (= (and b!4875857 c!829318) b!4875859))

(assert (= (and b!4875857 (not c!829318)) b!4875863))

(assert (= (and b!4875859 c!829313) b!4875862))

(assert (= (and b!4875859 (not c!829313)) b!4875856))

(assert (= (and b!4875863 c!829315) b!4875854))

(assert (= (and b!4875863 (not c!829315)) b!4875855))

(assert (= (and b!4875863 c!829316) b!4875866))

(assert (= (and b!4875863 (not c!829316)) b!4875865))

(assert (= (and b!4875866 c!829317) b!4875864))

(assert (= (and b!4875866 (not c!829317)) b!4875867))

(assert (= (or b!4875866 b!4875865) bm!338510))

(assert (= (or b!4875866 b!4875865) bm!338513))

(assert (= (or b!4875866 b!4875865) bm!338509))

(assert (= (or b!4875866 b!4875865) bm!338508))

(assert (= (or b!4875859 b!4875854) bm!338506))

(assert (= (or b!4875859 b!4875854) bm!338507))

(assert (= (or b!4875859 b!4875863) bm!338511))

(assert (= (or b!4875859 b!4875854) bm!338512))

(assert (= (and d!1566213 res!2081417) b!4875861))

(assert (= (and b!4875861 (not res!2081418)) b!4875858))

(declare-fun m!5877876 () Bool)

(assert (=> bm!338510 m!5877876))

(declare-fun m!5877878 () Bool)

(assert (=> bm!338511 m!5877878))

(declare-fun m!5877880 () Bool)

(assert (=> d!1566213 m!5877880))

(declare-fun m!5877882 () Bool)

(assert (=> d!1566213 m!5877882))

(declare-fun m!5877884 () Bool)

(assert (=> d!1566213 m!5877884))

(declare-fun m!5877886 () Bool)

(assert (=> d!1566213 m!5877886))

(declare-fun m!5877888 () Bool)

(assert (=> d!1566213 m!5877888))

(declare-fun m!5877890 () Bool)

(assert (=> d!1566213 m!5877890))

(declare-fun m!5877892 () Bool)

(assert (=> d!1566213 m!5877892))

(assert (=> d!1566213 m!5877886))

(declare-fun m!5877894 () Bool)

(assert (=> d!1566213 m!5877894))

(declare-fun m!5877896 () Bool)

(assert (=> b!4875858 m!5877896))

(assert (=> b!4875858 m!5876208))

(declare-fun m!5877898 () Bool)

(assert (=> bm!338507 m!5877898))

(assert (=> bm!338508 m!5876210))

(declare-fun m!5877900 () Bool)

(assert (=> bm!338508 m!5877900))

(declare-fun m!5877902 () Bool)

(assert (=> bm!338512 m!5877902))

(declare-fun m!5877904 () Bool)

(assert (=> bm!338509 m!5877904))

(declare-fun m!5877906 () Bool)

(assert (=> b!4875861 m!5877906))

(declare-fun m!5877908 () Bool)

(assert (=> b!4875863 m!5877908))

(declare-fun m!5877910 () Bool)

(assert (=> b!4875863 m!5877910))

(declare-fun m!5877912 () Bool)

(assert (=> b!4875863 m!5877912))

(declare-fun m!5877914 () Bool)

(assert (=> b!4875863 m!5877914))

(assert (=> b!4875863 m!5876208))

(assert (=> b!4875863 m!5877892))

(declare-fun m!5877916 () Bool)

(assert (=> b!4875863 m!5877916))

(assert (=> b!4875863 m!5877908))

(declare-fun m!5877918 () Bool)

(assert (=> b!4875863 m!5877918))

(assert (=> b!4875863 m!5877892))

(assert (=> b!4875863 m!5877876))

(declare-fun m!5877920 () Bool)

(assert (=> b!4875863 m!5877920))

(declare-fun m!5877922 () Bool)

(assert (=> b!4875863 m!5877922))

(assert (=> b!4875863 m!5876210))

(declare-fun m!5877924 () Bool)

(assert (=> b!4875863 m!5877924))

(assert (=> b!4875863 m!5877920))

(declare-fun m!5877926 () Bool)

(assert (=> b!4875863 m!5877926))

(declare-fun m!5877928 () Bool)

(assert (=> b!4875866 m!5877928))

(declare-fun m!5877930 () Bool)

(assert (=> bm!338506 m!5877930))

(assert (=> bm!338513 m!5877922))

(assert (=> b!4874856 d!1566213))

(declare-fun d!1566297 () Bool)

(declare-fun lt!1998071 () Int)

(assert (=> d!1566297 (= lt!1998071 (size!36933 (list!17533 (_1!33252 lt!1997541))))))

(assert (=> d!1566297 (= lt!1998071 (size!36939 (c!828991 (_1!33252 lt!1997541))))))

(assert (=> d!1566297 (= (size!36931 (_1!33252 lt!1997541)) lt!1998071)))

(declare-fun bs!1175048 () Bool)

(assert (= bs!1175048 d!1566297))

(assert (=> bs!1175048 m!5876220))

(assert (=> bs!1175048 m!5876220))

(declare-fun m!5877932 () Bool)

(assert (=> bs!1175048 m!5877932))

(declare-fun m!5877934 () Bool)

(assert (=> bs!1175048 m!5877934))

(assert (=> b!4874856 d!1566297))

(declare-fun d!1566299 () Bool)

(declare-fun dynLambda!22518 (Int BalanceConc!28644) Bool)

(assert (=> d!1566299 (dynLambda!22518 lambda!243603 (_1!33252 lt!1997541))))

(declare-fun lt!1998077 () Unit!146004)

(declare-fun choose!35634 (Int BalanceConc!28644) Unit!146004)

(assert (=> d!1566299 (= lt!1998077 (choose!35634 lambda!243603 (_1!33252 lt!1997541)))))

(assert (=> d!1566299 (Forall!1680 lambda!243603)))

(assert (=> d!1566299 (= (ForallOf!1107 lambda!243603 (_1!33252 lt!1997541)) lt!1998077)))

(declare-fun b_lambda!193877 () Bool)

(assert (=> (not b_lambda!193877) (not d!1566299)))

(declare-fun bs!1175050 () Bool)

(assert (= bs!1175050 d!1566299))

(declare-fun m!5877940 () Bool)

(assert (=> bs!1175050 m!5877940))

(declare-fun m!5877942 () Bool)

(assert (=> bs!1175050 m!5877942))

(declare-fun m!5877944 () Bool)

(assert (=> bs!1175050 m!5877944))

(assert (=> b!4874856 d!1566299))

(declare-fun d!1566303 () Bool)

(assert (=> d!1566303 (= (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))) ((_ is Nil!56007) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(assert (=> b!4874856 d!1566303))

(declare-fun d!1566307 () Bool)

(declare-fun lt!1998078 () Int)

(assert (=> d!1566307 (>= lt!1998078 0)))

(declare-fun e!3047709 () Int)

(assert (=> d!1566307 (= lt!1998078 e!3047709)))

(declare-fun c!829319 () Bool)

(assert (=> d!1566307 (= c!829319 ((_ is Nil!56007) lt!1997536))))

(assert (=> d!1566307 (= (size!36933 lt!1997536) lt!1998078)))

(declare-fun b!4875874 () Bool)

(assert (=> b!4875874 (= e!3047709 0)))

(declare-fun b!4875875 () Bool)

(assert (=> b!4875875 (= e!3047709 (+ 1 (size!36933 (t!364439 lt!1997536))))))

(assert (= (and d!1566307 c!829319) b!4875874))

(assert (= (and d!1566307 (not c!829319)) b!4875875))

(declare-fun m!5877958 () Bool)

(assert (=> b!4875875 m!5877958))

(assert (=> b!4874856 d!1566307))

(declare-fun d!1566309 () Bool)

(declare-fun lt!1998079 () Int)

(assert (=> d!1566309 (>= lt!1998079 0)))

(declare-fun e!3047711 () Int)

(assert (=> d!1566309 (= lt!1998079 e!3047711)))

(declare-fun c!829320 () Bool)

(assert (=> d!1566309 (= c!829320 ((_ is Nil!56007) Nil!56007))))

(assert (=> d!1566309 (= (size!36933 Nil!56007) lt!1998079)))

(declare-fun b!4875879 () Bool)

(assert (=> b!4875879 (= e!3047711 0)))

(declare-fun b!4875880 () Bool)

(assert (=> b!4875880 (= e!3047711 (+ 1 (size!36933 (t!364439 Nil!56007))))))

(assert (= (and d!1566309 c!829320) b!4875879))

(assert (= (and d!1566309 (not c!829320)) b!4875880))

(declare-fun m!5877960 () Bool)

(assert (=> b!4875880 m!5877960))

(assert (=> b!4874856 d!1566309))

(declare-fun d!1566313 () Bool)

(declare-fun e!3047714 () Bool)

(assert (=> d!1566313 e!3047714))

(declare-fun res!2081430 () Bool)

(assert (=> d!1566313 (=> (not res!2081430) (not e!3047714))))

(assert (=> d!1566313 (= res!2081430 (semiInverseModEq!3551 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))))))

(declare-fun Unit!146012 () Unit!146004)

(assert (=> d!1566313 (= (lemmaInv!1210 (transformation!8048 (h!62456 rules!1164))) Unit!146012)))

(declare-fun b!4875883 () Bool)

(assert (=> b!4875883 (= e!3047714 (equivClasses!3430 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))))))

(assert (= (and d!1566313 res!2081430) b!4875883))

(assert (=> d!1566313 m!5875730))

(assert (=> b!4875883 m!5875732))

(assert (=> b!4874856 d!1566313))

(declare-fun d!1566319 () Bool)

(assert (=> d!1566319 (= (list!17533 (_1!33252 lt!1997541)) (list!17535 (c!828991 (_1!33252 lt!1997541))))))

(declare-fun bs!1175052 () Bool)

(assert (= bs!1175052 d!1566319))

(declare-fun m!5877970 () Bool)

(assert (=> bs!1175052 m!5877970))

(assert (=> b!4874856 d!1566319))

(declare-fun d!1566321 () Bool)

(assert (=> d!1566321 (dynLambda!22518 lambda!243603 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541))))))

(declare-fun lt!1998080 () Unit!146004)

(assert (=> d!1566321 (= lt!1998080 (choose!35634 lambda!243603 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))))

(assert (=> d!1566321 (Forall!1680 lambda!243603)))

(assert (=> d!1566321 (= (ForallOf!1107 lambda!243603 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))) lt!1998080)))

(declare-fun b_lambda!193879 () Bool)

(assert (=> (not b_lambda!193879) (not d!1566321)))

(declare-fun bs!1175053 () Bool)

(assert (= bs!1175053 d!1566321))

(assert (=> bs!1175053 m!5876222))

(declare-fun m!5877972 () Bool)

(assert (=> bs!1175053 m!5877972))

(assert (=> bs!1175053 m!5876222))

(declare-fun m!5877974 () Bool)

(assert (=> bs!1175053 m!5877974))

(assert (=> bs!1175053 m!5877944))

(assert (=> b!4874856 d!1566321))

(declare-fun d!1566323 () Bool)

(declare-fun e!3047720 () Bool)

(assert (=> d!1566323 e!3047720))

(declare-fun res!2081434 () Bool)

(assert (=> d!1566323 (=> res!2081434 e!3047720)))

(assert (=> d!1566323 (= res!2081434 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(declare-fun lt!1998092 () Unit!146004)

(declare-fun choose!35635 (Regex!13123 List!56131) Unit!146004)

(assert (=> d!1566323 (= lt!1998092 (choose!35635 (regex!8048 (h!62456 rules!1164)) lt!1997536))))

(assert (=> d!1566323 (validRegex!5874 (regex!8048 (h!62456 rules!1164)))))

(assert (=> d!1566323 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 rules!1164)) lt!1997536) lt!1998092)))

(declare-fun b!4875888 () Bool)

(assert (=> b!4875888 (= e!3047720 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(assert (= (and d!1566323 (not res!2081434)) b!4875888))

(assert (=> d!1566323 m!5877890))

(assert (=> d!1566323 m!5876208))

(assert (=> d!1566323 m!5876210))

(assert (=> d!1566323 m!5876212))

(declare-fun m!5877986 () Bool)

(assert (=> d!1566323 m!5877986))

(assert (=> d!1566323 m!5876210))

(assert (=> d!1566323 m!5876208))

(assert (=> d!1566323 m!5876228))

(assert (=> b!4875888 m!5876208))

(assert (=> b!4875888 m!5876210))

(assert (=> b!4875888 m!5876208))

(assert (=> b!4875888 m!5876210))

(assert (=> b!4875888 m!5876212))

(assert (=> b!4875888 m!5876214))

(assert (=> b!4874856 d!1566323))

(assert (=> b!4874856 d!1565563))

(declare-fun d!1566333 () Bool)

(declare-fun fromListB!2685 (List!56131) BalanceConc!28644)

(assert (=> d!1566333 (= (seqFromList!5903 (list!17533 (_1!33252 lt!1997541))) (fromListB!2685 (list!17533 (_1!33252 lt!1997541))))))

(declare-fun bs!1175057 () Bool)

(assert (= bs!1175057 d!1566333))

(assert (=> bs!1175057 m!5876220))

(declare-fun m!5878020 () Bool)

(assert (=> bs!1175057 m!5878020))

(assert (=> b!4874856 d!1566333))

(declare-fun d!1566341 () Bool)

(assert (=> d!1566341 (= (apply!13508 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1997541)) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (_1!33252 lt!1997541)))))

(declare-fun b_lambda!193881 () Bool)

(assert (=> (not b_lambda!193881) (not d!1566341)))

(assert (=> d!1566341 t!364506))

(declare-fun b_and!343405 () Bool)

(assert (= b_and!343387 (and (=> t!364506 result!321442) b_and!343405)))

(assert (=> d!1566341 t!364508))

(declare-fun b_and!343407 () Bool)

(assert (= b_and!343389 (and (=> t!364508 result!321446) b_and!343407)))

(assert (=> d!1566341 t!364510))

(declare-fun b_and!343409 () Bool)

(assert (= b_and!343391 (and (=> t!364510 result!321448) b_and!343409)))

(assert (=> d!1566341 m!5877662))

(assert (=> b!4874856 d!1566341))

(declare-fun b!4875904 () Bool)

(declare-fun res!2081446 () Bool)

(declare-fun e!3047730 () Bool)

(assert (=> b!4875904 (=> (not res!2081446) (not e!3047730))))

(declare-fun lt!1998099 () Option!13802)

(assert (=> b!4875904 (= res!2081446 (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1998099)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998099))))))))

(declare-fun bm!338514 () Bool)

(declare-fun call!338519 () Option!13802)

(assert (=> bm!338514 (= call!338519 (maxPrefixOneRule!3496 thiss!11460 (h!62456 (t!364440 rules!1164)) (list!17533 input!585)))))

(declare-fun d!1566343 () Bool)

(declare-fun e!3047729 () Bool)

(assert (=> d!1566343 e!3047729))

(declare-fun res!2081444 () Bool)

(assert (=> d!1566343 (=> res!2081444 e!3047729)))

(assert (=> d!1566343 (= res!2081444 (isEmpty!29998 lt!1998099))))

(declare-fun e!3047728 () Option!13802)

(assert (=> d!1566343 (= lt!1998099 e!3047728)))

(declare-fun c!829326 () Bool)

(assert (=> d!1566343 (= c!829326 (and ((_ is Cons!56008) (t!364440 rules!1164)) ((_ is Nil!56008) (t!364440 (t!364440 rules!1164)))))))

(declare-fun lt!1998100 () Unit!146004)

(declare-fun lt!1998102 () Unit!146004)

(assert (=> d!1566343 (= lt!1998100 lt!1998102)))

(assert (=> d!1566343 (isPrefix!4772 (list!17533 input!585) (list!17533 input!585))))

(assert (=> d!1566343 (= lt!1998102 (lemmaIsPrefixRefl!3169 (list!17533 input!585) (list!17533 input!585)))))

(assert (=> d!1566343 (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164))))

(assert (=> d!1566343 (= (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)) lt!1998099)))

(declare-fun b!4875905 () Bool)

(assert (=> b!4875905 (= e!3047729 e!3047730)))

(declare-fun res!2081441 () Bool)

(assert (=> b!4875905 (=> (not res!2081441) (not e!3047730))))

(assert (=> b!4875905 (= res!2081441 (isDefined!10861 lt!1998099))))

(declare-fun b!4875906 () Bool)

(assert (=> b!4875906 (= e!3047730 (contains!19406 (t!364440 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1998099)))))))

(declare-fun b!4875907 () Bool)

(declare-fun lt!1998098 () Option!13802)

(declare-fun lt!1998101 () Option!13802)

(assert (=> b!4875907 (= e!3047728 (ite (and ((_ is None!13801) lt!1998098) ((_ is None!13801) lt!1998101)) None!13801 (ite ((_ is None!13801) lt!1998101) lt!1998098 (ite ((_ is None!13801) lt!1998098) lt!1998101 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1998098))) (size!36930 (_1!33248 (v!49737 lt!1998101)))) lt!1998098 lt!1998101)))))))

(assert (=> b!4875907 (= lt!1998098 call!338519)))

(assert (=> b!4875907 (= lt!1998101 (maxPrefix!4554 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585)))))

(declare-fun b!4875908 () Bool)

(declare-fun res!2081447 () Bool)

(assert (=> b!4875908 (=> (not res!2081447) (not e!3047730))))

(assert (=> b!4875908 (= res!2081447 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998099)))) (_2!33248 (get!19248 lt!1998099))) (list!17533 input!585)))))

(declare-fun b!4875909 () Bool)

(declare-fun res!2081442 () Bool)

(assert (=> b!4875909 (=> (not res!2081442) (not e!3047730))))

(assert (=> b!4875909 (= res!2081442 (< (size!36933 (_2!33248 (get!19248 lt!1998099))) (size!36933 (list!17533 input!585))))))

(declare-fun b!4875910 () Bool)

(declare-fun res!2081443 () Bool)

(assert (=> b!4875910 (=> (not res!2081443) (not e!3047730))))

(assert (=> b!4875910 (= res!2081443 (= (value!258510 (_1!33248 (get!19248 lt!1998099))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1998099)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998099)))))))))

(declare-fun b!4875911 () Bool)

(declare-fun res!2081445 () Bool)

(assert (=> b!4875911 (=> (not res!2081445) (not e!3047730))))

(assert (=> b!4875911 (= res!2081445 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998099)))) (originalCharacters!8371 (_1!33248 (get!19248 lt!1998099)))))))

(declare-fun b!4875912 () Bool)

(assert (=> b!4875912 (= e!3047728 call!338519)))

(assert (= (and d!1566343 c!829326) b!4875912))

(assert (= (and d!1566343 (not c!829326)) b!4875907))

(assert (= (or b!4875912 b!4875907) bm!338514))

(assert (= (and d!1566343 (not res!2081444)) b!4875905))

(assert (= (and b!4875905 res!2081441) b!4875911))

(assert (= (and b!4875911 res!2081445) b!4875909))

(assert (= (and b!4875909 res!2081442) b!4875908))

(assert (= (and b!4875908 res!2081447) b!4875910))

(assert (= (and b!4875910 res!2081443) b!4875904))

(assert (= (and b!4875904 res!2081446) b!4875906))

(declare-fun m!5878066 () Bool)

(assert (=> b!4875908 m!5878066))

(declare-fun m!5878068 () Bool)

(assert (=> b!4875908 m!5878068))

(assert (=> b!4875908 m!5878068))

(declare-fun m!5878070 () Bool)

(assert (=> b!4875908 m!5878070))

(assert (=> b!4875908 m!5878070))

(declare-fun m!5878076 () Bool)

(assert (=> b!4875908 m!5878076))

(declare-fun m!5878080 () Bool)

(assert (=> d!1566343 m!5878080))

(assert (=> d!1566343 m!5875518))

(assert (=> d!1566343 m!5875518))

(assert (=> d!1566343 m!5875862))

(assert (=> d!1566343 m!5875518))

(assert (=> d!1566343 m!5875518))

(assert (=> d!1566343 m!5875864))

(assert (=> d!1566343 m!5876014))

(assert (=> b!4875911 m!5878066))

(assert (=> b!4875911 m!5878068))

(assert (=> b!4875911 m!5878068))

(assert (=> b!4875911 m!5878070))

(declare-fun m!5878084 () Bool)

(assert (=> b!4875905 m!5878084))

(assert (=> b!4875910 m!5878066))

(declare-fun m!5878086 () Bool)

(assert (=> b!4875910 m!5878086))

(assert (=> b!4875910 m!5878086))

(declare-fun m!5878092 () Bool)

(assert (=> b!4875910 m!5878092))

(assert (=> b!4875906 m!5878066))

(declare-fun m!5878098 () Bool)

(assert (=> b!4875906 m!5878098))

(assert (=> b!4875907 m!5875518))

(declare-fun m!5878100 () Bool)

(assert (=> b!4875907 m!5878100))

(assert (=> b!4875909 m!5878066))

(declare-fun m!5878102 () Bool)

(assert (=> b!4875909 m!5878102))

(assert (=> b!4875909 m!5875518))

(assert (=> b!4875909 m!5875720))

(assert (=> bm!338514 m!5875518))

(declare-fun m!5878106 () Bool)

(assert (=> bm!338514 m!5878106))

(assert (=> b!4875904 m!5878066))

(assert (=> b!4875904 m!5878068))

(assert (=> b!4875904 m!5878068))

(assert (=> b!4875904 m!5878070))

(assert (=> b!4875904 m!5878070))

(declare-fun m!5878110 () Bool)

(assert (=> b!4875904 m!5878110))

(assert (=> b!4874821 d!1566343))

(declare-fun bs!1175061 () Bool)

(declare-fun b!4875933 () Bool)

(assert (= bs!1175061 (and b!4875933 d!1565665)))

(declare-fun lambda!243635 () Int)

(assert (=> bs!1175061 (= (and (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (= lambda!243635 lambda!243592))))

(declare-fun bs!1175062 () Bool)

(assert (= bs!1175062 (and b!4875933 b!4874856)))

(assert (=> bs!1175062 (= (and (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (= lambda!243635 lambda!243603))))

(declare-fun b!4875946 () Bool)

(declare-fun e!3047750 () Bool)

(assert (=> b!4875946 (= e!3047750 true)))

(declare-fun b!4875945 () Bool)

(declare-fun e!3047749 () Bool)

(assert (=> b!4875945 (= e!3047749 e!3047750)))

(assert (=> b!4875933 e!3047749))

(assert (= b!4875945 b!4875946))

(assert (= b!4875933 b!4875945))

(assert (=> b!4875946 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (dynLambda!22508 order!25261 lambda!243635))))

(assert (=> b!4875946 (< (dynLambda!22507 order!25259 (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (dynLambda!22508 order!25261 lambda!243635))))

(declare-fun e!3047742 () Option!13801)

(declare-fun lt!1998111 () tuple2!59898)

(assert (=> b!4875933 (= e!3047742 (Some!13800 (tuple2!59885 (Token!14681 (apply!13508 (transformation!8048 (h!62456 (t!364440 rules!1164))) (_1!33252 lt!1998111)) (h!62456 (t!364440 rules!1164)) (size!36931 (_1!33252 lt!1998111)) (list!17533 (_1!33252 lt!1998111))) (_2!33252 lt!1998111))))))

(declare-fun lt!1998106 () List!56131)

(assert (=> b!4875933 (= lt!1998106 (list!17533 input!585))))

(declare-fun lt!1998104 () Unit!146004)

(assert (=> b!4875933 (= lt!1998104 (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 (t!364440 rules!1164))) lt!1998106))))

(declare-fun res!2081453 () Bool)

(assert (=> b!4875933 (= res!2081453 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 (t!364440 rules!1164))) Nil!56007 (size!36933 Nil!56007) lt!1998106 lt!1998106 (size!36933 lt!1998106)))))))

(declare-fun e!3047741 () Bool)

(assert (=> b!4875933 (=> res!2081453 e!3047741)))

(assert (=> b!4875933 e!3047741))

(declare-fun lt!1998105 () Unit!146004)

(assert (=> b!4875933 (= lt!1998105 lt!1998104)))

(declare-fun lt!1998107 () Unit!146004)

(assert (=> b!4875933 (= lt!1998107 (lemmaInv!1210 (transformation!8048 (h!62456 (t!364440 rules!1164)))))))

(declare-fun lt!1998110 () Unit!146004)

(assert (=> b!4875933 (= lt!1998110 (ForallOf!1107 lambda!243635 (_1!33252 lt!1998111)))))

(declare-fun lt!1998112 () Unit!146004)

(assert (=> b!4875933 (= lt!1998112 (ForallOf!1107 lambda!243635 (seqFromList!5903 (list!17533 (_1!33252 lt!1998111)))))))

(declare-fun lt!1998109 () Option!13801)

(assert (=> b!4875933 (= lt!1998109 (Some!13800 (tuple2!59885 (Token!14681 (apply!13508 (transformation!8048 (h!62456 (t!364440 rules!1164))) (_1!33252 lt!1998111)) (h!62456 (t!364440 rules!1164)) (size!36931 (_1!33252 lt!1998111)) (list!17533 (_1!33252 lt!1998111))) (_2!33252 lt!1998111))))))

(declare-fun lt!1998113 () Unit!146004)

(assert (=> b!4875933 (= lt!1998113 (lemmaEqSameImage!1064 (transformation!8048 (h!62456 (t!364440 rules!1164))) (_1!33252 lt!1998111) (seqFromList!5903 (list!17533 (_1!33252 lt!1998111)))))))

(declare-fun b!4875934 () Bool)

(declare-fun lt!1998108 () Option!13801)

(declare-fun e!3047743 () Bool)

(assert (=> b!4875934 (= e!3047743 (= (list!17533 (_2!33245 (get!19247 lt!1998108))) (_2!33248 (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 (t!364440 rules!1164)) (list!17533 input!585))))))))

(declare-fun d!1566361 () Bool)

(declare-fun e!3047744 () Bool)

(assert (=> d!1566361 e!3047744))

(declare-fun res!2081450 () Bool)

(assert (=> d!1566361 (=> (not res!2081450) (not e!3047744))))

(assert (=> d!1566361 (= res!2081450 (= (isDefined!10860 lt!1998108) (isDefined!10861 (maxPrefixOneRule!3496 thiss!11460 (h!62456 (t!364440 rules!1164)) (list!17533 input!585)))))))

(assert (=> d!1566361 (= lt!1998108 e!3047742)))

(declare-fun c!829336 () Bool)

(assert (=> d!1566361 (= c!829336 (isEmpty!30004 (_1!33252 lt!1998111)))))

(assert (=> d!1566361 (= lt!1998111 (findLongestMatchWithZipperSequence!242 (regex!8048 (h!62456 (t!364440 rules!1164))) input!585))))

(assert (=> d!1566361 (ruleValid!3635 thiss!11460 (h!62456 (t!364440 rules!1164)))))

(assert (=> d!1566361 (= (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 (t!364440 rules!1164)) input!585) lt!1998108)))

(declare-fun b!4875935 () Bool)

(assert (=> b!4875935 (= e!3047741 (matchR!6497 (regex!8048 (h!62456 (t!364440 rules!1164))) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 (t!364440 rules!1164))) Nil!56007 (size!36933 Nil!56007) lt!1998106 lt!1998106 (size!36933 lt!1998106)))))))

(declare-fun b!4875936 () Bool)

(declare-fun e!3047745 () Bool)

(assert (=> b!4875936 (= e!3047745 e!3047743)))

(declare-fun res!2081452 () Bool)

(assert (=> b!4875936 (=> (not res!2081452) (not e!3047743))))

(assert (=> b!4875936 (= res!2081452 (= (_1!33245 (get!19247 lt!1998108)) (_1!33248 (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 (t!364440 rules!1164)) (list!17533 input!585))))))))

(declare-fun b!4875937 () Bool)

(assert (=> b!4875937 (= e!3047744 e!3047745)))

(declare-fun res!2081451 () Bool)

(assert (=> b!4875937 (=> res!2081451 e!3047745)))

(assert (=> b!4875937 (= res!2081451 (not (isDefined!10860 lt!1998108)))))

(declare-fun b!4875938 () Bool)

(assert (=> b!4875938 (= e!3047742 None!13800)))

(assert (= (and d!1566361 c!829336) b!4875938))

(assert (= (and d!1566361 (not c!829336)) b!4875933))

(assert (= (and b!4875933 (not res!2081453)) b!4875935))

(assert (= (and d!1566361 res!2081450) b!4875937))

(assert (= (and b!4875937 (not res!2081451)) b!4875936))

(assert (= (and b!4875936 res!2081452) b!4875934))

(declare-fun m!5878142 () Bool)

(assert (=> b!4875934 m!5878142))

(assert (=> b!4875934 m!5878106))

(declare-fun m!5878144 () Bool)

(assert (=> b!4875934 m!5878144))

(assert (=> b!4875934 m!5875518))

(assert (=> b!4875934 m!5875518))

(assert (=> b!4875934 m!5878106))

(declare-fun m!5878146 () Bool)

(assert (=> b!4875934 m!5878146))

(assert (=> d!1566361 m!5878106))

(declare-fun m!5878150 () Bool)

(assert (=> d!1566361 m!5878150))

(assert (=> d!1566361 m!5875518))

(declare-fun m!5878154 () Bool)

(assert (=> d!1566361 m!5878154))

(assert (=> d!1566361 m!5875518))

(assert (=> d!1566361 m!5878106))

(declare-fun m!5878158 () Bool)

(assert (=> d!1566361 m!5878158))

(declare-fun m!5878160 () Bool)

(assert (=> d!1566361 m!5878160))

(declare-fun m!5878164 () Bool)

(assert (=> d!1566361 m!5878164))

(assert (=> b!4875937 m!5878160))

(assert (=> b!4875935 m!5876208))

(declare-fun m!5878168 () Bool)

(assert (=> b!4875935 m!5878168))

(assert (=> b!4875935 m!5876208))

(assert (=> b!4875935 m!5878168))

(declare-fun m!5878172 () Bool)

(assert (=> b!4875935 m!5878172))

(declare-fun m!5878174 () Bool)

(assert (=> b!4875935 m!5878174))

(assert (=> b!4875936 m!5878146))

(assert (=> b!4875936 m!5875518))

(assert (=> b!4875936 m!5875518))

(assert (=> b!4875936 m!5878106))

(assert (=> b!4875936 m!5878106))

(assert (=> b!4875936 m!5878144))

(declare-fun m!5878176 () Bool)

(assert (=> b!4875933 m!5878176))

(declare-fun m!5878178 () Bool)

(assert (=> b!4875933 m!5878178))

(declare-fun m!5878180 () Bool)

(assert (=> b!4875933 m!5878180))

(declare-fun m!5878182 () Bool)

(assert (=> b!4875933 m!5878182))

(declare-fun m!5878184 () Bool)

(assert (=> b!4875933 m!5878184))

(declare-fun m!5878186 () Bool)

(assert (=> b!4875933 m!5878186))

(assert (=> b!4875933 m!5876208))

(assert (=> b!4875933 m!5878168))

(assert (=> b!4875933 m!5878172))

(assert (=> b!4875933 m!5878168))

(assert (=> b!4875933 m!5878180))

(assert (=> b!4875933 m!5875518))

(declare-fun m!5878190 () Bool)

(assert (=> b!4875933 m!5878190))

(assert (=> b!4875933 m!5876208))

(declare-fun m!5878194 () Bool)

(assert (=> b!4875933 m!5878194))

(assert (=> b!4875933 m!5878182))

(declare-fun m!5878202 () Bool)

(assert (=> b!4875933 m!5878202))

(assert (=> b!4875933 m!5878182))

(declare-fun m!5878206 () Bool)

(assert (=> b!4875933 m!5878206))

(assert (=> bm!338390 d!1566361))

(declare-fun d!1566383 () Bool)

(declare-fun res!2081467 () Bool)

(declare-fun e!3047762 () Bool)

(assert (=> d!1566383 (=> res!2081467 e!3047762)))

(assert (=> d!1566383 (= res!2081467 (not ((_ is Node!14602) (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))))))))

(assert (=> d!1566383 (= (isBalanced!3966 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296)))) e!3047762)))

(declare-fun b!4875970 () Bool)

(declare-fun res!2081472 () Bool)

(declare-fun e!3047761 () Bool)

(assert (=> b!4875970 (=> (not res!2081472) (not e!3047761))))

(assert (=> b!4875970 (= res!2081472 (not (isEmpty!29995 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296)))))))))

(declare-fun b!4875971 () Bool)

(declare-fun res!2081470 () Bool)

(assert (=> b!4875971 (=> (not res!2081470) (not e!3047761))))

(assert (=> b!4875971 (= res!2081470 (<= (- (height!1937 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))))) (height!1937 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296)))))) 1))))

(declare-fun b!4875972 () Bool)

(declare-fun res!2081468 () Bool)

(assert (=> b!4875972 (=> (not res!2081468) (not e!3047761))))

(assert (=> b!4875972 (= res!2081468 (isBalanced!3966 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))))))))

(declare-fun b!4875973 () Bool)

(assert (=> b!4875973 (= e!3047761 (not (isEmpty!29995 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296)))))))))

(declare-fun b!4875974 () Bool)

(declare-fun res!2081469 () Bool)

(assert (=> b!4875974 (=> (not res!2081469) (not e!3047761))))

(assert (=> b!4875974 (= res!2081469 (isBalanced!3966 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))))))))

(declare-fun b!4875975 () Bool)

(assert (=> b!4875975 (= e!3047762 e!3047761)))

(declare-fun res!2081471 () Bool)

(assert (=> b!4875975 (=> (not res!2081471) (not e!3047761))))

(assert (=> b!4875975 (= res!2081471 (<= (- 1) (- (height!1937 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))))) (height!1937 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))))))))))

(assert (= (and d!1566383 (not res!2081467)) b!4875975))

(assert (= (and b!4875975 res!2081471) b!4875971))

(assert (= (and b!4875971 res!2081470) b!4875972))

(assert (= (and b!4875972 res!2081468) b!4875974))

(assert (= (and b!4875974 res!2081469) b!4875970))

(assert (= (and b!4875970 res!2081472) b!4875973))

(declare-fun m!5878216 () Bool)

(assert (=> b!4875975 m!5878216))

(declare-fun m!5878218 () Bool)

(assert (=> b!4875975 m!5878218))

(declare-fun m!5878220 () Bool)

(assert (=> b!4875970 m!5878220))

(assert (=> b!4875971 m!5878216))

(assert (=> b!4875971 m!5878218))

(declare-fun m!5878222 () Bool)

(assert (=> b!4875974 m!5878222))

(declare-fun m!5878224 () Bool)

(assert (=> b!4875973 m!5878224))

(declare-fun m!5878226 () Bool)

(assert (=> b!4875972 m!5878226))

(assert (=> d!1565617 d!1566383))

(declare-fun d!1566387 () Bool)

(declare-fun e!3047770 () Bool)

(assert (=> d!1566387 e!3047770))

(declare-fun res!2081481 () Bool)

(assert (=> d!1566387 (=> (not res!2081481) (not e!3047770))))

(declare-fun lt!1998119 () Conc!14602)

(assert (=> d!1566387 (= res!2081481 (isBalanced!3966 lt!1998119))))

(assert (=> d!1566387 (= lt!1998119 (++!12202 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997296))) 1) (c!828992 (_1!33246 lt!1997294))))))

(assert (=> d!1566387 (isBalanced!3966 (c!828992 (_1!33246 lt!1997294)))))

(assert (=> d!1566387 (= (prepend!1406 (c!828992 (_1!33246 lt!1997294)) (_1!33245 (v!49734 lt!1997296))) lt!1998119)))

(declare-fun b!4875990 () Bool)

(assert (=> b!4875990 (= e!3047770 (= (list!17537 lt!1998119) (Cons!56009 (_1!33245 (v!49734 lt!1997296)) (list!17537 (c!828992 (_1!33246 lt!1997294))))))))

(assert (= (and d!1566387 res!2081481) b!4875990))

(declare-fun m!5878228 () Bool)

(assert (=> d!1566387 m!5878228))

(declare-fun m!5878230 () Bool)

(assert (=> d!1566387 m!5878230))

(declare-fun m!5878232 () Bool)

(assert (=> d!1566387 m!5878232))

(declare-fun m!5878236 () Bool)

(assert (=> d!1566387 m!5878236))

(declare-fun m!5878240 () Bool)

(assert (=> b!4875990 m!5878240))

(declare-fun m!5878242 () Bool)

(assert (=> b!4875990 m!5878242))

(assert (=> d!1565617 d!1566387))

(declare-fun bs!1175063 () Bool)

(declare-fun d!1566389 () Bool)

(assert (= bs!1175063 (and d!1566389 d!1565783)))

(declare-fun lambda!243636 () Int)

(assert (=> bs!1175063 (= (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (= lambda!243636 lambda!243613))))

(declare-fun bs!1175064 () Bool)

(assert (= bs!1175064 (and d!1566389 d!1566195)))

(assert (=> bs!1175064 (= (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (= lambda!243636 lambda!243630))))

(assert (=> d!1566389 true))

(assert (=> d!1566389 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (dynLambda!22514 order!25269 lambda!243636))))

(assert (=> d!1566389 (= (equivClasses!3430 (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (Forall2!1261 lambda!243636))))

(declare-fun bs!1175065 () Bool)

(assert (= bs!1175065 d!1566389))

(declare-fun m!5878256 () Bool)

(assert (=> bs!1175065 m!5878256))

(assert (=> b!4874765 d!1566389))

(declare-fun d!1566395 () Bool)

(declare-fun c!829348 () Bool)

(assert (=> d!1566395 (= c!829348 ((_ is Nil!56007) (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun e!3047771 () (InoxSet C!26444))

(assert (=> d!1566395 (= (content!9993 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) e!3047771)))

(declare-fun b!4875991 () Bool)

(assert (=> b!4875991 (= e!3047771 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4875992 () Bool)

(assert (=> b!4875992 (= e!3047771 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) true) (content!9993 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566395 c!829348) b!4875991))

(assert (= (and d!1566395 (not c!829348)) b!4875992))

(declare-fun m!5878258 () Bool)

(assert (=> b!4875992 m!5878258))

(declare-fun m!5878260 () Bool)

(assert (=> b!4875992 m!5878260))

(assert (=> b!4874886 d!1566395))

(declare-fun d!1566397 () Bool)

(assert (=> d!1566397 (= (list!17534 lt!1997391) (list!17537 (c!828992 lt!1997391)))))

(declare-fun bs!1175066 () Bool)

(assert (= bs!1175066 d!1566397))

(declare-fun m!5878262 () Bool)

(assert (=> bs!1175066 m!5878262))

(assert (=> b!4874586 d!1566397))

(declare-fun d!1566399 () Bool)

(assert (=> d!1566399 (= (list!17534 (_1!33246 lt!1997294)) (list!17537 (c!828992 (_1!33246 lt!1997294))))))

(declare-fun bs!1175067 () Bool)

(assert (= bs!1175067 d!1566399))

(assert (=> bs!1175067 m!5878242))

(assert (=> b!4874586 d!1566399))

(declare-fun d!1566401 () Bool)

(declare-fun lt!1998120 () Int)

(assert (=> d!1566401 (>= lt!1998120 0)))

(declare-fun e!3047772 () Int)

(assert (=> d!1566401 (= lt!1998120 e!3047772)))

(declare-fun c!829349 () Bool)

(assert (=> d!1566401 (= c!829349 ((_ is Nil!56007) (_2!33248 (get!19248 lt!1997484))))))

(assert (=> d!1566401 (= (size!36933 (_2!33248 (get!19248 lt!1997484))) lt!1998120)))

(declare-fun b!4875993 () Bool)

(assert (=> b!4875993 (= e!3047772 0)))

(declare-fun b!4875994 () Bool)

(assert (=> b!4875994 (= e!3047772 (+ 1 (size!36933 (t!364439 (_2!33248 (get!19248 lt!1997484))))))))

(assert (= (and d!1566401 c!829349) b!4875993))

(assert (= (and d!1566401 (not c!829349)) b!4875994))

(declare-fun m!5878264 () Bool)

(assert (=> b!4875994 m!5878264))

(assert (=> b!4874814 d!1566401))

(declare-fun d!1566403 () Bool)

(assert (=> d!1566403 (= (get!19248 lt!1997484) (v!49737 lt!1997484))))

(assert (=> b!4874814 d!1566403))

(assert (=> b!4874814 d!1565645))

(declare-fun bs!1175068 () Bool)

(declare-fun d!1566405 () Bool)

(assert (= bs!1175068 (and d!1566405 d!1565679)))

(declare-fun lambda!243637 () Int)

(assert (=> bs!1175068 (= lambda!243637 lambda!243595)))

(declare-fun bs!1175069 () Bool)

(assert (= bs!1175069 (and d!1566405 d!1565765)))

(assert (=> bs!1175069 (= lambda!243637 lambda!243606)))

(assert (=> d!1566405 true))

(declare-fun lt!1998121 () Bool)

(assert (=> d!1566405 (= lt!1998121 (forall!13055 (t!364440 rules!1164) lambda!243637))))

(declare-fun e!3047773 () Bool)

(assert (=> d!1566405 (= lt!1998121 e!3047773)))

(declare-fun res!2081482 () Bool)

(assert (=> d!1566405 (=> res!2081482 e!3047773)))

(assert (=> d!1566405 (= res!2081482 (not ((_ is Cons!56008) (t!364440 rules!1164))))))

(assert (=> d!1566405 (= (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164)) lt!1998121)))

(declare-fun b!4875995 () Bool)

(declare-fun e!3047774 () Bool)

(assert (=> b!4875995 (= e!3047773 e!3047774)))

(declare-fun res!2081483 () Bool)

(assert (=> b!4875995 (=> (not res!2081483) (not e!3047774))))

(assert (=> b!4875995 (= res!2081483 (ruleValid!3635 thiss!11460 (h!62456 (t!364440 rules!1164))))))

(declare-fun b!4875996 () Bool)

(assert (=> b!4875996 (= e!3047774 (rulesValidInductive!3027 thiss!11460 (t!364440 (t!364440 rules!1164))))))

(assert (= (and d!1566405 (not res!2081482)) b!4875995))

(assert (= (and b!4875995 res!2081483) b!4875996))

(declare-fun m!5878266 () Bool)

(assert (=> d!1566405 m!5878266))

(assert (=> b!4875995 m!5878154))

(declare-fun m!5878268 () Bool)

(assert (=> b!4875996 m!5878268))

(assert (=> b!4874736 d!1566405))

(declare-fun d!1566407 () Bool)

(assert (=> d!1566407 (= (isDefined!10860 lt!1997538) (not (isEmpty!29997 lt!1997538)))))

(declare-fun bs!1175070 () Bool)

(assert (= bs!1175070 d!1566407))

(declare-fun m!5878270 () Bool)

(assert (=> bs!1175070 m!5878270))

(assert (=> b!4874860 d!1566407))

(declare-fun d!1566409 () Bool)

(assert (=> d!1566409 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))) (list!17535 (c!828991 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))))))

(declare-fun bs!1175071 () Bool)

(assert (= bs!1175071 d!1566409))

(declare-fun m!5878272 () Bool)

(assert (=> bs!1175071 m!5878272))

(assert (=> b!4874825 d!1566409))

(declare-fun d!1566411 () Bool)

(declare-fun lt!1998124 () BalanceConc!28644)

(assert (=> d!1566411 (= (list!17533 lt!1998124) (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489))))))

(assert (=> d!1566411 (= lt!1998124 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))) (value!258510 (_1!33248 (get!19248 lt!1997489)))))))

(assert (=> d!1566411 (= (charsOf!5347 (_1!33248 (get!19248 lt!1997489))) lt!1998124)))

(declare-fun b_lambda!193883 () Bool)

(assert (=> (not b_lambda!193883) (not d!1566411)))

(declare-fun tb!258231 () Bool)

(declare-fun t!364524 () Bool)

(assert (=> (and b!4874320 (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364524) tb!258231))

(declare-fun b!4876001 () Bool)

(declare-fun e!3047780 () Bool)

(declare-fun tp!1371802 () Bool)

(assert (=> b!4876001 (= e!3047780 (and (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))) (value!258510 (_1!33248 (get!19248 lt!1997489)))))) tp!1371802))))

(declare-fun result!321462 () Bool)

(assert (=> tb!258231 (= result!321462 (and (inv!71944 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))) (value!258510 (_1!33248 (get!19248 lt!1997489))))) e!3047780))))

(assert (= tb!258231 b!4876001))

(declare-fun m!5878274 () Bool)

(assert (=> b!4876001 m!5878274))

(declare-fun m!5878278 () Bool)

(assert (=> tb!258231 m!5878278))

(assert (=> d!1566411 t!364524))

(declare-fun b_and!343411 () Bool)

(assert (= b_and!343331 (and (=> t!364524 result!321462) b_and!343411)))

(declare-fun tb!258233 () Bool)

(declare-fun t!364526 () Bool)

(assert (=> (and b!4874507 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364526) tb!258233))

(declare-fun result!321464 () Bool)

(assert (= result!321464 result!321462))

(assert (=> d!1566411 t!364526))

(declare-fun b_and!343413 () Bool)

(assert (= b_and!343335 (and (=> t!364526 result!321464) b_and!343413)))

(declare-fun t!364528 () Bool)

(declare-fun tb!258235 () Bool)

(assert (=> (and b!4874954 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364528) tb!258235))

(declare-fun result!321466 () Bool)

(assert (= result!321466 result!321462))

(assert (=> d!1566411 t!364528))

(declare-fun b_and!343415 () Bool)

(assert (= b_and!343345 (and (=> t!364528 result!321466) b_and!343415)))

(declare-fun m!5878284 () Bool)

(assert (=> d!1566411 m!5878284))

(declare-fun m!5878286 () Bool)

(assert (=> d!1566411 m!5878286))

(assert (=> b!4874825 d!1566411))

(declare-fun d!1566415 () Bool)

(assert (=> d!1566415 (= (get!19248 lt!1997489) (v!49737 lt!1997489))))

(assert (=> b!4874825 d!1566415))

(declare-fun d!1566417 () Bool)

(declare-fun lt!1998126 () Int)

(assert (=> d!1566417 (>= lt!1998126 0)))

(declare-fun e!3047784 () Int)

(assert (=> d!1566417 (= lt!1998126 e!3047784)))

(declare-fun c!829351 () Bool)

(assert (=> d!1566417 (= c!829351 ((_ is Nil!56007) lt!1997364))))

(assert (=> d!1566417 (= (size!36933 lt!1997364) lt!1998126)))

(declare-fun b!4876007 () Bool)

(assert (=> b!4876007 (= e!3047784 0)))

(declare-fun b!4876008 () Bool)

(assert (=> b!4876008 (= e!3047784 (+ 1 (size!36933 (t!364439 lt!1997364))))))

(assert (= (and d!1566417 c!829351) b!4876007))

(assert (= (and d!1566417 (not c!829351)) b!4876008))

(declare-fun m!5878292 () Bool)

(assert (=> b!4876008 m!5878292))

(assert (=> b!4874750 d!1566417))

(declare-fun d!1566421 () Bool)

(declare-fun lt!1998127 () Int)

(assert (=> d!1566421 (>= lt!1998127 0)))

(declare-fun e!3047787 () Int)

(assert (=> d!1566421 (= lt!1998127 e!3047787)))

(declare-fun c!829353 () Bool)

(assert (=> d!1566421 (= c!829353 ((_ is Nil!56007) lt!1997365))))

(assert (=> d!1566421 (= (size!36933 lt!1997365) lt!1998127)))

(declare-fun b!4876012 () Bool)

(assert (=> b!4876012 (= e!3047787 0)))

(declare-fun b!4876013 () Bool)

(assert (=> b!4876013 (= e!3047787 (+ 1 (size!36933 (t!364439 lt!1997365))))))

(assert (= (and d!1566421 c!829353) b!4876012))

(assert (= (and d!1566421 (not c!829353)) b!4876013))

(declare-fun m!5878298 () Bool)

(assert (=> b!4876013 m!5878298))

(assert (=> b!4874750 d!1566421))

(declare-fun d!1566425 () Bool)

(declare-fun choose!35637 (Int) Bool)

(assert (=> d!1566425 (= (Forall2!1261 lambda!243613) (choose!35637 lambda!243613))))

(declare-fun bs!1175072 () Bool)

(assert (= bs!1175072 d!1566425))

(declare-fun m!5878308 () Bool)

(assert (=> bs!1175072 m!5878308))

(assert (=> d!1565783 d!1566425))

(declare-fun d!1566429 () Bool)

(declare-fun lt!1998132 () Bool)

(assert (=> d!1566429 (= lt!1998132 (isEmpty!30003 (list!17535 (left!40681 (c!828991 input!585)))))))

(assert (=> d!1566429 (= lt!1998132 (= (size!36939 (left!40681 (c!828991 input!585))) 0))))

(assert (=> d!1566429 (= (isEmpty!29996 (left!40681 (c!828991 input!585))) lt!1998132)))

(declare-fun bs!1175077 () Bool)

(assert (= bs!1175077 d!1566429))

(assert (=> bs!1175077 m!5875952))

(assert (=> bs!1175077 m!5875952))

(declare-fun m!5878320 () Bool)

(assert (=> bs!1175077 m!5878320))

(assert (=> bs!1175077 m!5875980))

(assert (=> b!4874610 d!1566429))

(declare-fun b!4876183 () Bool)

(declare-fun e!3047855 () Bool)

(assert (=> b!4876183 (= e!3047855 (nullable!4547 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))))))

(declare-fun b!4876184 () Bool)

(declare-fun e!3047858 () Bool)

(declare-fun e!3047857 () Bool)

(assert (=> b!4876184 (= e!3047858 e!3047857)))

(declare-fun res!2081522 () Bool)

(assert (=> b!4876184 (=> res!2081522 e!3047857)))

(declare-fun call!338523 () Bool)

(assert (=> b!4876184 (= res!2081522 call!338523)))

(declare-fun b!4876185 () Bool)

(declare-fun e!3047854 () Bool)

(declare-fun lt!1998140 () Bool)

(assert (=> b!4876185 (= e!3047854 (= lt!1998140 call!338523))))

(declare-fun b!4876186 () Bool)

(declare-fun e!3047860 () Bool)

(assert (=> b!4876186 (= e!3047854 e!3047860)))

(declare-fun c!829364 () Bool)

(assert (=> b!4876186 (= c!829364 ((_ is EmptyLang!13123) (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))))))

(declare-fun b!4876187 () Bool)

(declare-fun res!2081520 () Bool)

(declare-fun e!3047861 () Bool)

(assert (=> b!4876187 (=> res!2081520 e!3047861)))

(assert (=> b!4876187 (= res!2081520 (not ((_ is ElementMatch!13123) (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))))

(assert (=> b!4876187 (= e!3047860 e!3047861)))

(declare-fun b!4876188 () Bool)

(declare-fun e!3047859 () Bool)

(assert (=> b!4876188 (= e!3047859 (= (head!10419 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) (c!828990 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))))

(declare-fun b!4876189 () Bool)

(declare-fun res!2081519 () Bool)

(assert (=> b!4876189 (=> res!2081519 e!3047857)))

(assert (=> b!4876189 (= res!2081519 (not (isEmpty!30003 (tail!9565 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))))))))

(declare-fun b!4876190 () Bool)

(declare-fun res!2081517 () Bool)

(assert (=> b!4876190 (=> (not res!2081517) (not e!3047859))))

(assert (=> b!4876190 (= res!2081517 (not call!338523))))

(declare-fun b!4876191 () Bool)

(assert (=> b!4876191 (= e!3047857 (not (= (head!10419 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) (c!828990 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))))))))

(declare-fun b!4876192 () Bool)

(assert (=> b!4876192 (= e!3047861 e!3047858)))

(declare-fun res!2081518 () Bool)

(assert (=> b!4876192 (=> (not res!2081518) (not e!3047858))))

(assert (=> b!4876192 (= res!2081518 (not lt!1998140))))

(declare-fun b!4876193 () Bool)

(declare-fun res!2081516 () Bool)

(assert (=> b!4876193 (=> res!2081516 e!3047861)))

(assert (=> b!4876193 (= res!2081516 e!3047859)))

(declare-fun res!2081523 () Bool)

(assert (=> b!4876193 (=> (not res!2081523) (not e!3047859))))

(assert (=> b!4876193 (= res!2081523 lt!1998140)))

(declare-fun b!4876194 () Bool)

(assert (=> b!4876194 (= e!3047855 (matchR!6497 (derivativeStep!3871 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))) (head!10419 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))))) (tail!9565 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))))))))

(declare-fun bm!338518 () Bool)

(assert (=> bm!338518 (= call!338523 (isEmpty!30003 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))))))

(declare-fun d!1566443 () Bool)

(assert (=> d!1566443 e!3047854))

(declare-fun c!829365 () Bool)

(assert (=> d!1566443 (= c!829365 ((_ is EmptyExpr!13123) (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))))))

(assert (=> d!1566443 (= lt!1998140 e!3047855)))

(declare-fun c!829366 () Bool)

(assert (=> d!1566443 (= c!829366 (isEmpty!30003 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))))))

(assert (=> d!1566443 (validRegex!5874 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))

(assert (=> d!1566443 (= (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) lt!1998140)))

(declare-fun b!4876195 () Bool)

(declare-fun res!2081521 () Bool)

(assert (=> b!4876195 (=> (not res!2081521) (not e!3047859))))

(assert (=> b!4876195 (= res!2081521 (isEmpty!30003 (tail!9565 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))))))))

(declare-fun b!4876196 () Bool)

(assert (=> b!4876196 (= e!3047860 (not lt!1998140))))

(assert (= (and d!1566443 c!829366) b!4876183))

(assert (= (and d!1566443 (not c!829366)) b!4876194))

(assert (= (and d!1566443 c!829365) b!4876185))

(assert (= (and d!1566443 (not c!829365)) b!4876186))

(assert (= (and b!4876186 c!829364) b!4876196))

(assert (= (and b!4876186 (not c!829364)) b!4876187))

(assert (= (and b!4876187 (not res!2081520)) b!4876193))

(assert (= (and b!4876193 res!2081523) b!4876190))

(assert (= (and b!4876190 res!2081517) b!4876195))

(assert (= (and b!4876195 res!2081521) b!4876188))

(assert (= (and b!4876193 (not res!2081516)) b!4876192))

(assert (= (and b!4876192 res!2081518) b!4876184))

(assert (= (and b!4876184 (not res!2081522)) b!4876189))

(assert (= (and b!4876189 (not res!2081519)) b!4876191))

(assert (= (or b!4876185 b!4876184 b!4876190) bm!338518))

(assert (=> b!4876188 m!5876142))

(declare-fun m!5878376 () Bool)

(assert (=> b!4876188 m!5878376))

(assert (=> b!4876189 m!5876142))

(declare-fun m!5878378 () Bool)

(assert (=> b!4876189 m!5878378))

(assert (=> b!4876189 m!5878378))

(declare-fun m!5878380 () Bool)

(assert (=> b!4876189 m!5878380))

(declare-fun m!5878382 () Bool)

(assert (=> b!4876183 m!5878382))

(assert (=> b!4876191 m!5876142))

(assert (=> b!4876191 m!5878376))

(assert (=> d!1566443 m!5876142))

(declare-fun m!5878384 () Bool)

(assert (=> d!1566443 m!5878384))

(declare-fun m!5878386 () Bool)

(assert (=> d!1566443 m!5878386))

(assert (=> b!4876195 m!5876142))

(assert (=> b!4876195 m!5878378))

(assert (=> b!4876195 m!5878378))

(assert (=> b!4876195 m!5878380))

(assert (=> b!4876194 m!5876142))

(assert (=> b!4876194 m!5878376))

(assert (=> b!4876194 m!5878376))

(declare-fun m!5878388 () Bool)

(assert (=> b!4876194 m!5878388))

(assert (=> b!4876194 m!5876142))

(assert (=> b!4876194 m!5878378))

(assert (=> b!4876194 m!5878388))

(assert (=> b!4876194 m!5878378))

(declare-fun m!5878390 () Bool)

(assert (=> b!4876194 m!5878390))

(assert (=> bm!338518 m!5876142))

(assert (=> bm!338518 m!5878384))

(assert (=> b!4874818 d!1566443))

(assert (=> b!4874818 d!1566415))

(assert (=> b!4874818 d!1566409))

(assert (=> b!4874818 d!1566411))

(declare-fun d!1566455 () Bool)

(assert (=> d!1566455 (= (get!19247 lt!1997447) (v!49734 lt!1997447))))

(assert (=> b!4874751 d!1566455))

(declare-fun d!1566459 () Bool)

(assert (=> d!1566459 (= (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))) (v!49737 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))))))

(assert (=> b!4874751 d!1566459))

(assert (=> b!4874751 d!1566343))

(assert (=> b!4874751 d!1565563))

(declare-fun d!1566461 () Bool)

(declare-fun lt!1998141 () Int)

(assert (=> d!1566461 (>= lt!1998141 0)))

(declare-fun e!3047868 () Int)

(assert (=> d!1566461 (= lt!1998141 e!3047868)))

(declare-fun c!829367 () Bool)

(assert (=> d!1566461 (= c!829367 ((_ is Nil!56007) (t!364439 lt!1997299)))))

(assert (=> d!1566461 (= (size!36933 (t!364439 lt!1997299)) lt!1998141)))

(declare-fun b!4876221 () Bool)

(assert (=> b!4876221 (= e!3047868 0)))

(declare-fun b!4876222 () Bool)

(assert (=> b!4876222 (= e!3047868 (+ 1 (size!36933 (t!364439 (t!364439 lt!1997299)))))))

(assert (= (and d!1566461 c!829367) b!4876221))

(assert (= (and d!1566461 (not c!829367)) b!4876222))

(declare-fun m!5878392 () Bool)

(assert (=> b!4876222 m!5878392))

(assert (=> b!4874760 d!1566461))

(declare-fun d!1566463 () Bool)

(declare-fun res!2081524 () Bool)

(declare-fun e!3047870 () Bool)

(assert (=> d!1566463 (=> res!2081524 e!3047870)))

(assert (=> d!1566463 (= res!2081524 ((_ is Nil!56008) (t!364440 rules!1164)))))

(assert (=> d!1566463 (= (noDuplicateTag!3289 thiss!11460 (t!364440 rules!1164) (Cons!56011 (tag!8912 (h!62456 rules!1164)) Nil!56011)) e!3047870)))

(declare-fun b!4876224 () Bool)

(declare-fun e!3047871 () Bool)

(assert (=> b!4876224 (= e!3047870 e!3047871)))

(declare-fun res!2081525 () Bool)

(assert (=> b!4876224 (=> (not res!2081525) (not e!3047871))))

(assert (=> b!4876224 (= res!2081525 (not (contains!19405 (Cons!56011 (tag!8912 (h!62456 rules!1164)) Nil!56011) (tag!8912 (h!62456 (t!364440 rules!1164))))))))

(declare-fun b!4876225 () Bool)

(assert (=> b!4876225 (= e!3047871 (noDuplicateTag!3289 thiss!11460 (t!364440 (t!364440 rules!1164)) (Cons!56011 (tag!8912 (h!62456 (t!364440 rules!1164))) (Cons!56011 (tag!8912 (h!62456 rules!1164)) Nil!56011))))))

(assert (= (and d!1566463 (not res!2081524)) b!4876224))

(assert (= (and b!4876224 res!2081525) b!4876225))

(declare-fun m!5878398 () Bool)

(assert (=> b!4876224 m!5878398))

(declare-fun m!5878400 () Bool)

(assert (=> b!4876225 m!5878400))

(assert (=> b!4874680 d!1566463))

(declare-fun d!1566465 () Bool)

(declare-fun lt!1998144 () Bool)

(assert (=> d!1566465 (= lt!1998144 (isEmpty!30003 (list!17533 (_1!33252 lt!1997541))))))

(assert (=> d!1566465 (= lt!1998144 (isEmpty!29996 (c!828991 (_1!33252 lt!1997541))))))

(assert (=> d!1566465 (= (isEmpty!30004 (_1!33252 lt!1997541)) lt!1998144)))

(declare-fun bs!1175084 () Bool)

(assert (= bs!1175084 d!1566465))

(assert (=> bs!1175084 m!5876220))

(assert (=> bs!1175084 m!5876220))

(declare-fun m!5878414 () Bool)

(assert (=> bs!1175084 m!5878414))

(declare-fun m!5878416 () Bool)

(assert (=> bs!1175084 m!5878416))

(assert (=> d!1565741 d!1566465))

(declare-fun b!4876245 () Bool)

(declare-fun res!2081545 () Bool)

(declare-fun e!3047882 () Bool)

(assert (=> b!4876245 (=> (not res!2081545) (not e!3047882))))

(declare-fun lt!1998157 () Option!13802)

(assert (=> b!4876245 (= res!2081545 (= (value!258510 (_1!33248 (get!19248 lt!1998157))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1998157)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998157)))))))))

(declare-fun b!4876246 () Bool)

(declare-fun e!3047881 () Bool)

(assert (=> b!4876246 (= e!3047881 e!3047882)))

(declare-fun res!2081542 () Bool)

(assert (=> b!4876246 (=> (not res!2081542) (not e!3047882))))

(assert (=> b!4876246 (= res!2081542 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998157))))))))

(declare-fun d!1566471 () Bool)

(assert (=> d!1566471 e!3047881))

(declare-fun res!2081540 () Bool)

(assert (=> d!1566471 (=> res!2081540 e!3047881)))

(assert (=> d!1566471 (= res!2081540 (isEmpty!29998 lt!1998157))))

(declare-fun e!3047884 () Option!13802)

(assert (=> d!1566471 (= lt!1998157 e!3047884)))

(declare-fun c!829370 () Bool)

(declare-fun lt!1998156 () tuple2!59900)

(assert (=> d!1566471 (= c!829370 (isEmpty!30003 (_1!33253 lt!1998156)))))

(declare-fun findLongestMatch!1641 (Regex!13123 List!56131) tuple2!59900)

(assert (=> d!1566471 (= lt!1998156 (findLongestMatch!1641 (regex!8048 (h!62456 rules!1164)) (list!17533 input!585)))))

(assert (=> d!1566471 (ruleValid!3635 thiss!11460 (h!62456 rules!1164))))

(assert (=> d!1566471 (= (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)) lt!1998157)))

(declare-fun b!4876247 () Bool)

(assert (=> b!4876247 (= e!3047884 (Some!13801 (tuple2!59891 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (seqFromList!5903 (_1!33253 lt!1998156))) (h!62456 rules!1164) (size!36931 (seqFromList!5903 (_1!33253 lt!1998156))) (_1!33253 lt!1998156)) (_2!33253 lt!1998156))))))

(declare-fun lt!1998155 () Unit!146004)

(assert (=> b!4876247 (= lt!1998155 (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 rules!1164)) (list!17533 input!585)))))

(declare-fun res!2081543 () Bool)

(assert (=> b!4876247 (= res!2081543 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) (list!17533 input!585) (list!17533 input!585) (size!36933 (list!17533 input!585))))))))

(declare-fun e!3047883 () Bool)

(assert (=> b!4876247 (=> res!2081543 e!3047883)))

(assert (=> b!4876247 e!3047883))

(declare-fun lt!1998158 () Unit!146004)

(assert (=> b!4876247 (= lt!1998158 lt!1998155)))

(declare-fun lt!1998159 () Unit!146004)

(assert (=> b!4876247 (= lt!1998159 (lemmaSemiInverse!2558 (transformation!8048 (h!62456 rules!1164)) (seqFromList!5903 (_1!33253 lt!1998156))))))

(declare-fun b!4876248 () Bool)

(assert (=> b!4876248 (= e!3047883 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) (list!17533 input!585) (list!17533 input!585) (size!36933 (list!17533 input!585))))))))

(declare-fun b!4876249 () Bool)

(declare-fun res!2081541 () Bool)

(assert (=> b!4876249 (=> (not res!2081541) (not e!3047882))))

(assert (=> b!4876249 (= res!2081541 (< (size!36933 (_2!33248 (get!19248 lt!1998157))) (size!36933 (list!17533 input!585))))))

(declare-fun b!4876250 () Bool)

(assert (=> b!4876250 (= e!3047884 None!13801)))

(declare-fun b!4876251 () Bool)

(declare-fun res!2081544 () Bool)

(assert (=> b!4876251 (=> (not res!2081544) (not e!3047882))))

(assert (=> b!4876251 (= res!2081544 (= (rule!11198 (_1!33248 (get!19248 lt!1998157))) (h!62456 rules!1164)))))

(declare-fun b!4876252 () Bool)

(assert (=> b!4876252 (= e!3047882 (= (size!36930 (_1!33248 (get!19248 lt!1998157))) (size!36933 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998157))))))))

(declare-fun b!4876253 () Bool)

(declare-fun res!2081546 () Bool)

(assert (=> b!4876253 (=> (not res!2081546) (not e!3047882))))

(assert (=> b!4876253 (= res!2081546 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998157)))) (_2!33248 (get!19248 lt!1998157))) (list!17533 input!585)))))

(assert (= (and d!1566471 c!829370) b!4876250))

(assert (= (and d!1566471 (not c!829370)) b!4876247))

(assert (= (and b!4876247 (not res!2081543)) b!4876248))

(assert (= (and d!1566471 (not res!2081540)) b!4876246))

(assert (= (and b!4876246 res!2081542) b!4876253))

(assert (= (and b!4876253 res!2081546) b!4876249))

(assert (= (and b!4876249 res!2081541) b!4876251))

(assert (= (and b!4876251 res!2081544) b!4876245))

(assert (= (and b!4876245 res!2081545) b!4876252))

(declare-fun m!5878418 () Bool)

(assert (=> d!1566471 m!5878418))

(declare-fun m!5878420 () Bool)

(assert (=> d!1566471 m!5878420))

(assert (=> d!1566471 m!5875518))

(declare-fun m!5878422 () Bool)

(assert (=> d!1566471 m!5878422))

(assert (=> d!1566471 m!5876012))

(assert (=> b!4876248 m!5876208))

(assert (=> b!4876248 m!5875518))

(assert (=> b!4876248 m!5875720))

(assert (=> b!4876248 m!5876208))

(assert (=> b!4876248 m!5875518))

(assert (=> b!4876248 m!5875518))

(assert (=> b!4876248 m!5875720))

(assert (=> b!4876248 m!5877544))

(assert (=> b!4876248 m!5877550))

(declare-fun m!5878424 () Bool)

(assert (=> b!4876249 m!5878424))

(declare-fun m!5878426 () Bool)

(assert (=> b!4876249 m!5878426))

(assert (=> b!4876249 m!5875518))

(assert (=> b!4876249 m!5875720))

(assert (=> b!4876246 m!5878424))

(declare-fun m!5878428 () Bool)

(assert (=> b!4876246 m!5878428))

(assert (=> b!4876246 m!5878428))

(declare-fun m!5878430 () Bool)

(assert (=> b!4876246 m!5878430))

(assert (=> b!4876246 m!5878430))

(declare-fun m!5878432 () Bool)

(assert (=> b!4876246 m!5878432))

(assert (=> b!4876252 m!5878424))

(declare-fun m!5878434 () Bool)

(assert (=> b!4876252 m!5878434))

(declare-fun m!5878436 () Bool)

(assert (=> b!4876247 m!5878436))

(declare-fun m!5878438 () Bool)

(assert (=> b!4876247 m!5878438))

(assert (=> b!4876247 m!5875518))

(assert (=> b!4876247 m!5877538))

(assert (=> b!4876247 m!5877536))

(assert (=> b!4876247 m!5878436))

(declare-fun m!5878440 () Bool)

(assert (=> b!4876247 m!5878440))

(assert (=> b!4876247 m!5875518))

(assert (=> b!4876247 m!5875720))

(assert (=> b!4876247 m!5876208))

(assert (=> b!4876247 m!5878436))

(declare-fun m!5878442 () Bool)

(assert (=> b!4876247 m!5878442))

(assert (=> b!4876247 m!5876208))

(assert (=> b!4876247 m!5875518))

(assert (=> b!4876247 m!5875518))

(assert (=> b!4876247 m!5875720))

(assert (=> b!4876247 m!5877544))

(assert (=> b!4876247 m!5878436))

(assert (=> b!4876245 m!5878424))

(declare-fun m!5878444 () Bool)

(assert (=> b!4876245 m!5878444))

(assert (=> b!4876245 m!5878444))

(declare-fun m!5878446 () Bool)

(assert (=> b!4876245 m!5878446))

(assert (=> b!4876251 m!5878424))

(assert (=> b!4876253 m!5878424))

(assert (=> b!4876253 m!5878428))

(assert (=> b!4876253 m!5878428))

(assert (=> b!4876253 m!5878430))

(assert (=> b!4876253 m!5878430))

(declare-fun m!5878448 () Bool)

(assert (=> b!4876253 m!5878448))

(assert (=> d!1565741 d!1566471))

(assert (=> d!1565741 d!1565563))

(declare-fun d!1566473 () Bool)

(declare-fun res!2081551 () Bool)

(declare-fun e!3047887 () Bool)

(assert (=> d!1566473 (=> (not res!2081551) (not e!3047887))))

(assert (=> d!1566473 (= res!2081551 (validRegex!5874 (regex!8048 (h!62456 rules!1164))))))

(assert (=> d!1566473 (= (ruleValid!3635 thiss!11460 (h!62456 rules!1164)) e!3047887)))

(declare-fun b!4876258 () Bool)

(declare-fun res!2081552 () Bool)

(assert (=> b!4876258 (=> (not res!2081552) (not e!3047887))))

(assert (=> b!4876258 (= res!2081552 (not (nullable!4547 (regex!8048 (h!62456 rules!1164)))))))

(declare-fun b!4876259 () Bool)

(assert (=> b!4876259 (= e!3047887 (not (= (tag!8912 (h!62456 rules!1164)) (String!63209 ""))))))

(assert (= (and d!1566473 res!2081551) b!4876258))

(assert (= (and b!4876258 res!2081552) b!4876259))

(assert (=> d!1566473 m!5877890))

(assert (=> b!4876258 m!5877878))

(assert (=> d!1565741 d!1566473))

(declare-fun d!1566475 () Bool)

(assert (=> d!1566475 (= (isDefined!10861 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585))) (not (isEmpty!29998 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585)))))))

(declare-fun bs!1175085 () Bool)

(assert (= bs!1175085 d!1566475))

(assert (=> bs!1175085 m!5876158))

(declare-fun m!5878450 () Bool)

(assert (=> bs!1175085 m!5878450))

(assert (=> d!1565741 d!1566475))

(assert (=> d!1565741 d!1566407))

(declare-fun d!1566477 () Bool)

(declare-fun lt!1998162 () tuple2!59898)

(assert (=> d!1566477 (= (tuple2!59901 (list!17533 (_1!33252 lt!1998162)) (list!17533 (_2!33252 lt!1998162))) (findLongestMatch!1641 (regex!8048 (h!62456 rules!1164)) (list!17533 input!585)))))

(declare-fun choose!35638 (Regex!13123 BalanceConc!28644) tuple2!59898)

(assert (=> d!1566477 (= lt!1998162 (choose!35638 (regex!8048 (h!62456 rules!1164)) input!585))))

(assert (=> d!1566477 (validRegex!5874 (regex!8048 (h!62456 rules!1164)))))

(assert (=> d!1566477 (= (findLongestMatchWithZipperSequence!242 (regex!8048 (h!62456 rules!1164)) input!585) lt!1998162)))

(declare-fun bs!1175086 () Bool)

(assert (= bs!1175086 d!1566477))

(assert (=> bs!1175086 m!5877890))

(declare-fun m!5878452 () Bool)

(assert (=> bs!1175086 m!5878452))

(declare-fun m!5878454 () Bool)

(assert (=> bs!1175086 m!5878454))

(assert (=> bs!1175086 m!5875518))

(declare-fun m!5878456 () Bool)

(assert (=> bs!1175086 m!5878456))

(assert (=> bs!1175086 m!5875518))

(assert (=> bs!1175086 m!5878422))

(assert (=> d!1565741 d!1566477))

(declare-fun d!1566479 () Bool)

(assert (=> d!1566479 (= (height!1936 (left!40681 (c!828991 input!585))) (ite ((_ is Empty!14601) (left!40681 (c!828991 input!585))) 0 (ite ((_ is Leaf!24336) (left!40681 (c!828991 input!585))) 1 (cheight!14812 (left!40681 (c!828991 input!585))))))))

(assert (=> b!4874606 d!1566479))

(declare-fun d!1566481 () Bool)

(assert (=> d!1566481 (= (height!1936 (right!41011 (c!828991 input!585))) (ite ((_ is Empty!14601) (right!41011 (c!828991 input!585))) 0 (ite ((_ is Leaf!24336) (right!41011 (c!828991 input!585))) 1 (cheight!14812 (right!41011 (c!828991 input!585))))))))

(assert (=> b!4874606 d!1566481))

(declare-fun d!1566483 () Bool)

(declare-fun res!2081553 () Bool)

(declare-fun e!3047888 () Bool)

(assert (=> d!1566483 (=> (not res!2081553) (not e!3047888))))

(assert (=> d!1566483 (= res!2081553 (<= (size!36933 (list!17539 (xs!17909 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) 512))))

(assert (=> d!1566483 (= (inv!71948 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) e!3047888)))

(declare-fun b!4876260 () Bool)

(declare-fun res!2081554 () Bool)

(assert (=> b!4876260 (=> (not res!2081554) (not e!3047888))))

(assert (=> b!4876260 (= res!2081554 (= (csize!29433 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) (size!36933 (list!17539 (xs!17909 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))))

(declare-fun b!4876261 () Bool)

(assert (=> b!4876261 (= e!3047888 (and (> (csize!29433 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) 0) (<= (csize!29433 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) 512)))))

(assert (= (and d!1566483 res!2081553) b!4876260))

(assert (= (and b!4876260 res!2081554) b!4876261))

(declare-fun m!5878458 () Bool)

(assert (=> d!1566483 m!5878458))

(assert (=> d!1566483 m!5878458))

(declare-fun m!5878460 () Bool)

(assert (=> d!1566483 m!5878460))

(assert (=> b!4876260 m!5878458))

(assert (=> b!4876260 m!5878458))

(assert (=> b!4876260 m!5878460))

(assert (=> b!4874872 d!1566483))

(declare-fun d!1566485 () Bool)

(declare-fun lt!1998163 () Int)

(assert (=> d!1566485 (>= lt!1998163 0)))

(declare-fun e!3047889 () Int)

(assert (=> d!1566485 (= lt!1998163 e!3047889)))

(declare-fun c!829371 () Bool)

(assert (=> d!1566485 (= c!829371 ((_ is Nil!56007) (t!364439 (list!17533 (_2!33246 lt!1997274)))))))

(assert (=> d!1566485 (= (size!36933 (t!364439 (list!17533 (_2!33246 lt!1997274)))) lt!1998163)))

(declare-fun b!4876262 () Bool)

(assert (=> b!4876262 (= e!3047889 0)))

(declare-fun b!4876263 () Bool)

(assert (=> b!4876263 (= e!3047889 (+ 1 (size!36933 (t!364439 (t!364439 (list!17533 (_2!33246 lt!1997274)))))))))

(assert (= (and d!1566485 c!829371) b!4876262))

(assert (= (and d!1566485 (not c!829371)) b!4876263))

(declare-fun m!5878462 () Bool)

(assert (=> b!4876263 m!5878462))

(assert (=> b!4874898 d!1566485))

(declare-fun b!4876266 () Bool)

(declare-fun res!2081555 () Bool)

(declare-fun e!3047890 () Bool)

(assert (=> b!4876266 (=> (not res!2081555) (not e!3047890))))

(declare-fun lt!1998164 () List!56131)

(assert (=> b!4876266 (= res!2081555 (= (size!36933 lt!1998164) (+ (size!36933 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274))))) (size!36933 (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274))))))))))

(declare-fun b!4876264 () Bool)

(declare-fun e!3047891 () List!56131)

(assert (=> b!4876264 (= e!3047891 (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274)))))))

(declare-fun b!4876267 () Bool)

(assert (=> b!4876267 (= e!3047890 (or (not (= (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274)))) Nil!56007)) (= lt!1998164 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274)))))))))

(declare-fun b!4876265 () Bool)

(assert (=> b!4876265 (= e!3047891 (Cons!56007 (h!62455 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274))))) (++!12201 (t!364439 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274))))) (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274)))))))))

(declare-fun d!1566487 () Bool)

(assert (=> d!1566487 e!3047890))

(declare-fun res!2081556 () Bool)

(assert (=> d!1566487 (=> (not res!2081556) (not e!3047890))))

(assert (=> d!1566487 (= res!2081556 (= (content!9993 lt!1998164) ((_ map or) (content!9993 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274))))) (content!9993 (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274))))))))))

(assert (=> d!1566487 (= lt!1998164 e!3047891)))

(declare-fun c!829372 () Bool)

(assert (=> d!1566487 (= c!829372 ((_ is Nil!56007) (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274))))))))

(assert (=> d!1566487 (= (++!12201 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274)))) (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274))))) lt!1998164)))

(assert (= (and d!1566487 c!829372) b!4876264))

(assert (= (and d!1566487 (not c!829372)) b!4876265))

(assert (= (and d!1566487 res!2081556) b!4876266))

(assert (= (and b!4876266 res!2081555) b!4876267))

(declare-fun m!5878464 () Bool)

(assert (=> b!4876266 m!5878464))

(assert (=> b!4876266 m!5875856))

(declare-fun m!5878466 () Bool)

(assert (=> b!4876266 m!5878466))

(assert (=> b!4876266 m!5875858))

(declare-fun m!5878468 () Bool)

(assert (=> b!4876266 m!5878468))

(assert (=> b!4876265 m!5875858))

(declare-fun m!5878470 () Bool)

(assert (=> b!4876265 m!5878470))

(declare-fun m!5878472 () Bool)

(assert (=> d!1566487 m!5878472))

(assert (=> d!1566487 m!5875856))

(declare-fun m!5878474 () Bool)

(assert (=> d!1566487 m!5878474))

(assert (=> d!1566487 m!5875858))

(declare-fun m!5878476 () Bool)

(assert (=> d!1566487 m!5878476))

(assert (=> b!4874623 d!1566487))

(declare-fun b!4876270 () Bool)

(declare-fun e!3047893 () List!56131)

(assert (=> b!4876270 (= e!3047893 (list!17539 (xs!17909 (left!40681 (c!828991 (_2!33246 lt!1997274))))))))

(declare-fun b!4876268 () Bool)

(declare-fun e!3047892 () List!56131)

(assert (=> b!4876268 (= e!3047892 Nil!56007)))

(declare-fun d!1566489 () Bool)

(declare-fun c!829373 () Bool)

(assert (=> d!1566489 (= c!829373 ((_ is Empty!14601) (left!40681 (c!828991 (_2!33246 lt!1997274)))))))

(assert (=> d!1566489 (= (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997274)))) e!3047892)))

(declare-fun b!4876269 () Bool)

(assert (=> b!4876269 (= e!3047892 e!3047893)))

(declare-fun c!829374 () Bool)

(assert (=> b!4876269 (= c!829374 ((_ is Leaf!24336) (left!40681 (c!828991 (_2!33246 lt!1997274)))))))

(declare-fun b!4876271 () Bool)

(assert (=> b!4876271 (= e!3047893 (++!12201 (list!17535 (left!40681 (left!40681 (c!828991 (_2!33246 lt!1997274))))) (list!17535 (right!41011 (left!40681 (c!828991 (_2!33246 lt!1997274)))))))))

(assert (= (and d!1566489 c!829373) b!4876268))

(assert (= (and d!1566489 (not c!829373)) b!4876269))

(assert (= (and b!4876269 c!829374) b!4876270))

(assert (= (and b!4876269 (not c!829374)) b!4876271))

(declare-fun m!5878478 () Bool)

(assert (=> b!4876270 m!5878478))

(declare-fun m!5878480 () Bool)

(assert (=> b!4876271 m!5878480))

(declare-fun m!5878482 () Bool)

(assert (=> b!4876271 m!5878482))

(assert (=> b!4876271 m!5878480))

(assert (=> b!4876271 m!5878482))

(declare-fun m!5878484 () Bool)

(assert (=> b!4876271 m!5878484))

(assert (=> b!4874623 d!1566489))

(declare-fun b!4876274 () Bool)

(declare-fun e!3047895 () List!56131)

(assert (=> b!4876274 (= e!3047895 (list!17539 (xs!17909 (right!41011 (c!828991 (_2!33246 lt!1997274))))))))

(declare-fun b!4876272 () Bool)

(declare-fun e!3047894 () List!56131)

(assert (=> b!4876272 (= e!3047894 Nil!56007)))

(declare-fun d!1566491 () Bool)

(declare-fun c!829375 () Bool)

(assert (=> d!1566491 (= c!829375 ((_ is Empty!14601) (right!41011 (c!828991 (_2!33246 lt!1997274)))))))

(assert (=> d!1566491 (= (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997274)))) e!3047894)))

(declare-fun b!4876273 () Bool)

(assert (=> b!4876273 (= e!3047894 e!3047895)))

(declare-fun c!829376 () Bool)

(assert (=> b!4876273 (= c!829376 ((_ is Leaf!24336) (right!41011 (c!828991 (_2!33246 lt!1997274)))))))

(declare-fun b!4876275 () Bool)

(assert (=> b!4876275 (= e!3047895 (++!12201 (list!17535 (left!40681 (right!41011 (c!828991 (_2!33246 lt!1997274))))) (list!17535 (right!41011 (right!41011 (c!828991 (_2!33246 lt!1997274)))))))))

(assert (= (and d!1566491 c!829375) b!4876272))

(assert (= (and d!1566491 (not c!829375)) b!4876273))

(assert (= (and b!4876273 c!829376) b!4876274))

(assert (= (and b!4876273 (not c!829376)) b!4876275))

(declare-fun m!5878486 () Bool)

(assert (=> b!4876274 m!5878486))

(declare-fun m!5878488 () Bool)

(assert (=> b!4876275 m!5878488))

(declare-fun m!5878490 () Bool)

(assert (=> b!4876275 m!5878490))

(assert (=> b!4876275 m!5878488))

(assert (=> b!4876275 m!5878490))

(declare-fun m!5878492 () Bool)

(assert (=> b!4876275 m!5878492))

(assert (=> b!4874623 d!1566491))

(declare-fun d!1566493 () Bool)

(declare-fun lt!1998165 () Int)

(assert (=> d!1566493 (>= lt!1998165 0)))

(declare-fun e!3047896 () Int)

(assert (=> d!1566493 (= lt!1998165 e!3047896)))

(declare-fun c!829377 () Bool)

(assert (=> d!1566493 (= c!829377 ((_ is Nil!56007) (_2!33247 lt!1997429)))))

(assert (=> d!1566493 (= (size!36933 (_2!33247 lt!1997429)) lt!1998165)))

(declare-fun b!4876276 () Bool)

(assert (=> b!4876276 (= e!3047896 0)))

(declare-fun b!4876277 () Bool)

(assert (=> b!4876277 (= e!3047896 (+ 1 (size!36933 (t!364439 (_2!33247 lt!1997429)))))))

(assert (= (and d!1566493 c!829377) b!4876276))

(assert (= (and d!1566493 (not c!829377)) b!4876277))

(declare-fun m!5878494 () Bool)

(assert (=> b!4876277 m!5878494))

(assert (=> b!4874693 d!1566493))

(declare-fun d!1566495 () Bool)

(declare-fun lt!1998166 () Int)

(assert (=> d!1566495 (>= lt!1998166 0)))

(declare-fun e!3047897 () Int)

(assert (=> d!1566495 (= lt!1998166 e!3047897)))

(declare-fun c!829378 () Bool)

(assert (=> d!1566495 (= c!829378 ((_ is Nil!56007) (_2!33248 (v!49737 lt!1997320))))))

(assert (=> d!1566495 (= (size!36933 (_2!33248 (v!49737 lt!1997320))) lt!1998166)))

(declare-fun b!4876278 () Bool)

(assert (=> b!4876278 (= e!3047897 0)))

(declare-fun b!4876279 () Bool)

(assert (=> b!4876279 (= e!3047897 (+ 1 (size!36933 (t!364439 (_2!33248 (v!49737 lt!1997320))))))))

(assert (= (and d!1566495 c!829378) b!4876278))

(assert (= (and d!1566495 (not c!829378)) b!4876279))

(declare-fun m!5878496 () Bool)

(assert (=> b!4876279 m!5878496))

(assert (=> b!4874693 d!1566495))

(declare-fun b!4876280 () Bool)

(declare-fun e!3047898 () Bool)

(declare-fun e!3047903 () Bool)

(assert (=> b!4876280 (= e!3047898 e!3047903)))

(declare-fun res!2081557 () Bool)

(assert (=> b!4876280 (=> (not res!2081557) (not e!3047903))))

(declare-fun lt!1998168 () Option!13801)

(assert (=> b!4876280 (= res!2081557 (= (_1!33245 (get!19247 lt!1998168)) (_1!33248 (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876281 () Bool)

(declare-fun e!3047900 () Bool)

(declare-fun e!3047899 () Bool)

(assert (=> b!4876281 (= e!3047900 e!3047899)))

(declare-fun res!2081562 () Bool)

(assert (=> b!4876281 (=> (not res!2081562) (not e!3047899))))

(assert (=> b!4876281 (= res!2081562 (= (_1!33245 (get!19247 lt!1998168)) (_1!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876282 () Bool)

(assert (=> b!4876282 (= e!3047899 (= (list!17533 (_2!33245 (get!19247 lt!1998168))) (_2!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876283 () Bool)

(declare-fun res!2081561 () Bool)

(declare-fun e!3047901 () Bool)

(assert (=> b!4876283 (=> (not res!2081561) (not e!3047901))))

(assert (=> b!4876283 (= res!2081561 e!3047900)))

(declare-fun res!2081558 () Bool)

(assert (=> b!4876283 (=> res!2081558 e!3047900)))

(assert (=> b!4876283 (= res!2081558 (not (isDefined!10860 lt!1998168)))))

(declare-fun bm!338519 () Bool)

(declare-fun call!338524 () Option!13801)

(assert (=> bm!338519 (= call!338524 (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 (t!364440 rules!1164)) (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4876284 () Bool)

(assert (=> b!4876284 (= e!3047901 e!3047898)))

(declare-fun res!2081560 () Bool)

(assert (=> b!4876284 (=> res!2081560 e!3047898)))

(assert (=> b!4876284 (= res!2081560 (not (isDefined!10860 lt!1998168)))))

(declare-fun b!4876285 () Bool)

(declare-fun e!3047902 () Option!13801)

(declare-fun lt!1998171 () Option!13801)

(declare-fun lt!1998169 () Option!13801)

(assert (=> b!4876285 (= e!3047902 (ite (and ((_ is None!13800) lt!1998171) ((_ is None!13800) lt!1998169)) None!13800 (ite ((_ is None!13800) lt!1998169) lt!1998171 (ite ((_ is None!13800) lt!1998171) lt!1998169 (ite (>= (size!36930 (_1!33245 (v!49734 lt!1998171))) (size!36930 (_1!33245 (v!49734 lt!1998169)))) lt!1998171 lt!1998169)))))))

(assert (=> b!4876285 (= lt!1998171 call!338524)))

(assert (=> b!4876285 (= lt!1998169 (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 (t!364440 rules!1164)) (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4876287 () Bool)

(assert (=> b!4876287 (= e!3047902 call!338524)))

(declare-fun b!4876286 () Bool)

(assert (=> b!4876286 (= e!3047903 (= (list!17533 (_2!33245 (get!19247 lt!1998168))) (_2!33248 (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun d!1566497 () Bool)

(assert (=> d!1566497 e!3047901))

(declare-fun res!2081559 () Bool)

(assert (=> d!1566497 (=> (not res!2081559) (not e!3047901))))

(assert (=> d!1566497 (= res!2081559 (= (isDefined!10860 lt!1998168) (isDefined!10861 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566497 (= lt!1998168 e!3047902)))

(declare-fun c!829379 () Bool)

(assert (=> d!1566497 (= c!829379 (and ((_ is Cons!56008) (t!364440 rules!1164)) ((_ is Nil!56008) (t!364440 (t!364440 rules!1164)))))))

(declare-fun lt!1998170 () Unit!146004)

(declare-fun lt!1998167 () Unit!146004)

(assert (=> d!1566497 (= lt!1998170 lt!1998167)))

(declare-fun lt!1998173 () List!56131)

(declare-fun lt!1998172 () List!56131)

(assert (=> d!1566497 (isPrefix!4772 lt!1998173 lt!1998172)))

(assert (=> d!1566497 (= lt!1998167 (lemmaIsPrefixRefl!3169 lt!1998173 lt!1998172))))

(assert (=> d!1566497 (= lt!1998172 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1566497 (= lt!1998173 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1566497 (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164))))

(assert (=> d!1566497 (= (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 rules!1164) (_2!33245 (v!49734 lt!1997269))) lt!1998168)))

(assert (= (and d!1566497 c!829379) b!4876287))

(assert (= (and d!1566497 (not c!829379)) b!4876285))

(assert (= (or b!4876287 b!4876285) bm!338519))

(assert (= (and d!1566497 res!2081559) b!4876283))

(assert (= (and b!4876283 (not res!2081558)) b!4876281))

(assert (= (and b!4876281 res!2081562) b!4876282))

(assert (= (and b!4876283 res!2081561) b!4876284))

(assert (= (and b!4876284 (not res!2081560)) b!4876280))

(assert (= (and b!4876280 res!2081557) b!4876286))

(declare-fun m!5878498 () Bool)

(assert (=> b!4876282 m!5878498))

(assert (=> b!4876282 m!5877624))

(declare-fun m!5878500 () Bool)

(assert (=> b!4876282 m!5878500))

(assert (=> b!4876282 m!5875522))

(assert (=> b!4876282 m!5875522))

(assert (=> b!4876282 m!5877624))

(declare-fun m!5878502 () Bool)

(assert (=> b!4876282 m!5878502))

(declare-fun m!5878504 () Bool)

(assert (=> bm!338519 m!5878504))

(assert (=> b!4876280 m!5878498))

(assert (=> b!4876280 m!5875522))

(assert (=> b!4876280 m!5875522))

(declare-fun m!5878506 () Bool)

(assert (=> b!4876280 m!5878506))

(assert (=> b!4876280 m!5878506))

(declare-fun m!5878508 () Bool)

(assert (=> b!4876280 m!5878508))

(declare-fun m!5878510 () Bool)

(assert (=> b!4876284 m!5878510))

(assert (=> b!4876281 m!5878498))

(assert (=> b!4876281 m!5875522))

(assert (=> b!4876281 m!5875522))

(assert (=> b!4876281 m!5877624))

(assert (=> b!4876281 m!5877624))

(assert (=> b!4876281 m!5878500))

(declare-fun m!5878512 () Bool)

(assert (=> b!4876285 m!5878512))

(assert (=> b!4876286 m!5878506))

(assert (=> b!4876286 m!5878508))

(assert (=> b!4876286 m!5878502))

(assert (=> b!4876286 m!5878498))

(assert (=> b!4876286 m!5875522))

(assert (=> b!4876286 m!5878506))

(assert (=> b!4876286 m!5875522))

(declare-fun m!5878514 () Bool)

(assert (=> d!1566497 m!5878514))

(assert (=> d!1566497 m!5876014))

(assert (=> d!1566497 m!5878510))

(assert (=> d!1566497 m!5877624))

(declare-fun m!5878516 () Bool)

(assert (=> d!1566497 m!5878516))

(assert (=> d!1566497 m!5875522))

(assert (=> d!1566497 m!5875522))

(assert (=> d!1566497 m!5877624))

(declare-fun m!5878518 () Bool)

(assert (=> d!1566497 m!5878518))

(assert (=> b!4876283 m!5878510))

(assert (=> b!4874639 d!1566497))

(declare-fun b!4876290 () Bool)

(declare-fun res!2081563 () Bool)

(declare-fun e!3047904 () Bool)

(assert (=> b!4876290 (=> (not res!2081563) (not e!3047904))))

(declare-fun lt!1998174 () List!56131)

(assert (=> b!4876290 (= res!2081563 (= (size!36933 lt!1998174) (+ (size!36933 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) (size!36933 (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))))

(declare-fun b!4876288 () Bool)

(declare-fun e!3047905 () List!56131)

(assert (=> b!4876288 (= e!3047905 (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4876291 () Bool)

(assert (=> b!4876291 (= e!3047904 (or (not (= (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))) Nil!56007)) (= lt!1998174 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876289 () Bool)

(assert (=> b!4876289 (= e!3047905 (Cons!56007 (h!62455 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) (++!12201 (t!364439 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun d!1566499 () Bool)

(assert (=> d!1566499 e!3047904))

(declare-fun res!2081564 () Bool)

(assert (=> d!1566499 (=> (not res!2081564) (not e!3047904))))

(assert (=> d!1566499 (= res!2081564 (= (content!9993 lt!1998174) ((_ map or) (content!9993 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) (content!9993 (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))))

(assert (=> d!1566499 (= lt!1998174 e!3047905)))

(declare-fun c!829380 () Bool)

(assert (=> d!1566499 (= c!829380 ((_ is Nil!56007) (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566499 (= (++!12201 (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))) (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) lt!1998174)))

(assert (= (and d!1566499 c!829380) b!4876288))

(assert (= (and d!1566499 (not c!829380)) b!4876289))

(assert (= (and d!1566499 res!2081564) b!4876290))

(assert (= (and b!4876290 res!2081563) b!4876291))

(declare-fun m!5878520 () Bool)

(assert (=> b!4876290 m!5878520))

(assert (=> b!4876290 m!5875940))

(declare-fun m!5878522 () Bool)

(assert (=> b!4876290 m!5878522))

(assert (=> b!4876290 m!5875942))

(declare-fun m!5878524 () Bool)

(assert (=> b!4876290 m!5878524))

(assert (=> b!4876289 m!5875942))

(declare-fun m!5878526 () Bool)

(assert (=> b!4876289 m!5878526))

(declare-fun m!5878528 () Bool)

(assert (=> d!1566499 m!5878528))

(assert (=> d!1566499 m!5875940))

(declare-fun m!5878530 () Bool)

(assert (=> d!1566499 m!5878530))

(assert (=> d!1566499 m!5875942))

(declare-fun m!5878532 () Bool)

(assert (=> d!1566499 m!5878532))

(assert (=> b!4874674 d!1566499))

(declare-fun b!4876294 () Bool)

(declare-fun e!3047907 () List!56131)

(assert (=> b!4876294 (= e!3047907 (list!17539 (xs!17909 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876292 () Bool)

(declare-fun e!3047906 () List!56131)

(assert (=> b!4876292 (= e!3047906 Nil!56007)))

(declare-fun d!1566501 () Bool)

(declare-fun c!829381 () Bool)

(assert (=> d!1566501 (= c!829381 ((_ is Empty!14601) (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1566501 (= (list!17535 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))) e!3047906)))

(declare-fun b!4876293 () Bool)

(assert (=> b!4876293 (= e!3047906 e!3047907)))

(declare-fun c!829382 () Bool)

(assert (=> b!4876293 (= c!829382 ((_ is Leaf!24336) (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4876295 () Bool)

(assert (=> b!4876295 (= e!3047907 (++!12201 (list!17535 (left!40681 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) (list!17535 (right!41011 (left!40681 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566501 c!829381) b!4876292))

(assert (= (and d!1566501 (not c!829381)) b!4876293))

(assert (= (and b!4876293 c!829382) b!4876294))

(assert (= (and b!4876293 (not c!829382)) b!4876295))

(declare-fun m!5878534 () Bool)

(assert (=> b!4876294 m!5878534))

(declare-fun m!5878536 () Bool)

(assert (=> b!4876295 m!5878536))

(declare-fun m!5878538 () Bool)

(assert (=> b!4876295 m!5878538))

(assert (=> b!4876295 m!5878536))

(assert (=> b!4876295 m!5878538))

(declare-fun m!5878540 () Bool)

(assert (=> b!4876295 m!5878540))

(assert (=> b!4874674 d!1566501))

(declare-fun b!4876298 () Bool)

(declare-fun e!3047909 () List!56131)

(assert (=> b!4876298 (= e!3047909 (list!17539 (xs!17909 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876296 () Bool)

(declare-fun e!3047908 () List!56131)

(assert (=> b!4876296 (= e!3047908 Nil!56007)))

(declare-fun d!1566503 () Bool)

(declare-fun c!829383 () Bool)

(assert (=> d!1566503 (= c!829383 ((_ is Empty!14601) (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1566503 (= (list!17535 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))) e!3047908)))

(declare-fun b!4876297 () Bool)

(assert (=> b!4876297 (= e!3047908 e!3047909)))

(declare-fun c!829384 () Bool)

(assert (=> b!4876297 (= c!829384 ((_ is Leaf!24336) (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4876299 () Bool)

(assert (=> b!4876299 (= e!3047909 (++!12201 (list!17535 (left!40681 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269)))))) (list!17535 (right!41011 (right!41011 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566503 c!829383) b!4876296))

(assert (= (and d!1566503 (not c!829383)) b!4876297))

(assert (= (and b!4876297 c!829384) b!4876298))

(assert (= (and b!4876297 (not c!829384)) b!4876299))

(declare-fun m!5878542 () Bool)

(assert (=> b!4876298 m!5878542))

(declare-fun m!5878544 () Bool)

(assert (=> b!4876299 m!5878544))

(declare-fun m!5878546 () Bool)

(assert (=> b!4876299 m!5878546))

(assert (=> b!4876299 m!5878544))

(assert (=> b!4876299 m!5878546))

(declare-fun m!5878548 () Bool)

(assert (=> b!4876299 m!5878548))

(assert (=> b!4874674 d!1566503))

(assert (=> b!4874815 d!1566403))

(declare-fun d!1566505 () Bool)

(assert (=> d!1566505 (= (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484))))) (dynLambda!22517 (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484))))))))

(declare-fun b_lambda!193907 () Bool)

(assert (=> (not b_lambda!193907) (not d!1566505)))

(declare-fun t!364562 () Bool)

(declare-fun tb!258267 () Bool)

(assert (=> (and b!4874320 (= (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364562) tb!258267))

(declare-fun result!321498 () Bool)

(assert (=> tb!258267 (= result!321498 (inv!21 (dynLambda!22517 (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484)))))))))

(declare-fun m!5878550 () Bool)

(assert (=> tb!258267 m!5878550))

(assert (=> d!1566505 t!364562))

(declare-fun b_and!343453 () Bool)

(assert (= b_and!343405 (and (=> t!364562 result!321498) b_and!343453)))

(declare-fun tb!258269 () Bool)

(declare-fun t!364564 () Bool)

(assert (=> (and b!4874507 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364564) tb!258269))

(declare-fun result!321500 () Bool)

(assert (= result!321500 result!321498))

(assert (=> d!1566505 t!364564))

(declare-fun b_and!343455 () Bool)

(assert (= b_and!343407 (and (=> t!364564 result!321500) b_and!343455)))

(declare-fun t!364566 () Bool)

(declare-fun tb!258271 () Bool)

(assert (=> (and b!4874954 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364566) tb!258271))

(declare-fun result!321502 () Bool)

(assert (= result!321502 result!321498))

(assert (=> d!1566505 t!364566))

(declare-fun b_and!343457 () Bool)

(assert (= b_and!343409 (and (=> t!364566 result!321502) b_and!343457)))

(assert (=> d!1566505 m!5876124))

(declare-fun m!5878552 () Bool)

(assert (=> d!1566505 m!5878552))

(assert (=> b!4874815 d!1566505))

(declare-fun d!1566507 () Bool)

(assert (=> d!1566507 (= (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484)))) (fromListB!2685 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484)))))))

(declare-fun bs!1175087 () Bool)

(assert (= bs!1175087 d!1566507))

(declare-fun m!5878554 () Bool)

(assert (=> bs!1175087 m!5878554))

(assert (=> b!4874815 d!1566507))

(declare-fun d!1566509 () Bool)

(declare-fun lt!1998175 () Int)

(assert (=> d!1566509 (>= lt!1998175 0)))

(declare-fun e!3047911 () Int)

(assert (=> d!1566509 (= lt!1998175 e!3047911)))

(declare-fun c!829385 () Bool)

(assert (=> d!1566509 (= c!829385 ((_ is Nil!56007) (t!364439 (_2!33247 lt!1997321))))))

(assert (=> d!1566509 (= (size!36933 (t!364439 (_2!33247 lt!1997321))) lt!1998175)))

(declare-fun b!4876300 () Bool)

(assert (=> b!4876300 (= e!3047911 0)))

(declare-fun b!4876301 () Bool)

(assert (=> b!4876301 (= e!3047911 (+ 1 (size!36933 (t!364439 (t!364439 (_2!33247 lt!1997321))))))))

(assert (= (and d!1566509 c!829385) b!4876300))

(assert (= (and d!1566509 (not c!829385)) b!4876301))

(declare-fun m!5878556 () Bool)

(assert (=> b!4876301 m!5878556))

(assert (=> b!4874668 d!1566509))

(assert (=> b!4874516 d!1565757))

(assert (=> b!4874516 d!1565759))

(declare-fun b!4876304 () Bool)

(declare-fun res!2081565 () Bool)

(declare-fun e!3047912 () Bool)

(assert (=> b!4876304 (=> (not res!2081565) (not e!3047912))))

(declare-fun lt!1998176 () List!56131)

(assert (=> b!4876304 (= res!2081565 (= (size!36933 lt!1998176) (+ (size!36933 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876302 () Bool)

(declare-fun e!3047913 () List!56131)

(assert (=> b!4876302 (= e!3047913 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(declare-fun b!4876305 () Bool)

(assert (=> b!4876305 (= e!3047912 (or (not (= (list!17533 (_2!33245 (v!49734 lt!1997269))) Nil!56007)) (= lt!1998176 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(declare-fun b!4876303 () Bool)

(assert (=> b!4876303 (= e!3047913 (Cons!56007 (h!62455 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (++!12201 (t!364439 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun d!1566511 () Bool)

(assert (=> d!1566511 e!3047912))

(declare-fun res!2081566 () Bool)

(assert (=> d!1566511 (=> (not res!2081566) (not e!3047912))))

(assert (=> d!1566511 (= res!2081566 (= (content!9993 lt!1998176) ((_ map or) (content!9993 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (content!9993 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566511 (= lt!1998176 e!3047913)))

(declare-fun c!829386 () Bool)

(assert (=> d!1566511 (= c!829386 ((_ is Nil!56007) (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (=> d!1566511 (= (++!12201 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1998176)))

(assert (= (and d!1566511 c!829386) b!4876302))

(assert (= (and d!1566511 (not c!829386)) b!4876303))

(assert (= (and d!1566511 res!2081566) b!4876304))

(assert (= (and b!4876304 res!2081565) b!4876305))

(declare-fun m!5878558 () Bool)

(assert (=> b!4876304 m!5878558))

(declare-fun m!5878560 () Bool)

(assert (=> b!4876304 m!5878560))

(assert (=> b!4876304 m!5875522))

(assert (=> b!4876304 m!5875598))

(assert (=> b!4876303 m!5875522))

(declare-fun m!5878562 () Bool)

(assert (=> b!4876303 m!5878562))

(declare-fun m!5878564 () Bool)

(assert (=> d!1566511 m!5878564))

(assert (=> d!1566511 m!5878260))

(assert (=> d!1566511 m!5875522))

(assert (=> d!1566511 m!5875606))

(assert (=> b!4874631 d!1566511))

(declare-fun d!1566513 () Bool)

(declare-fun lt!1998177 () Int)

(assert (=> d!1566513 (>= lt!1998177 0)))

(declare-fun e!3047914 () Int)

(assert (=> d!1566513 (= lt!1998177 e!3047914)))

(declare-fun c!829387 () Bool)

(assert (=> d!1566513 (= c!829387 ((_ is Nil!56007) (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566513 (= (size!36933 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) lt!1998177)))

(declare-fun b!4876306 () Bool)

(assert (=> b!4876306 (= e!3047914 0)))

(declare-fun b!4876307 () Bool)

(assert (=> b!4876307 (= e!3047914 (+ 1 (size!36933 (t!364439 (t!364439 (list!17533 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566513 c!829387) b!4876306))

(assert (= (and d!1566513 (not c!829387)) b!4876307))

(assert (=> b!4876307 m!5878560))

(assert (=> b!4874762 d!1566513))

(assert (=> b!4874590 d!1566035))

(assert (=> b!4874590 d!1566039))

(assert (=> b!4874636 d!1566175))

(assert (=> b!4874636 d!1565533))

(assert (=> b!4874636 d!1566179))

(declare-fun d!1566515 () Bool)

(assert (=> d!1566515 (= (list!17533 (_2!33245 (get!19247 lt!1997413))) (list!17535 (c!828991 (_2!33245 (get!19247 lt!1997413)))))))

(declare-fun bs!1175088 () Bool)

(assert (= bs!1175088 d!1566515))

(declare-fun m!5878566 () Bool)

(assert (=> bs!1175088 m!5878566))

(assert (=> b!4874636 d!1566515))

(assert (=> b!4874636 d!1566177))

(declare-fun d!1566517 () Bool)

(assert (=> d!1566517 (= (list!17539 (xs!17909 (c!828991 input!585))) (innerList!14689 (xs!17909 (c!828991 input!585))))))

(assert (=> b!4874683 d!1566517))

(declare-fun d!1566519 () Bool)

(declare-fun res!2081567 () Bool)

(declare-fun e!3047916 () Bool)

(assert (=> d!1566519 (=> res!2081567 e!3047916)))

(assert (=> d!1566519 (= res!2081567 (not ((_ is Node!14602) (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566519 (= (isBalanced!3966 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) e!3047916)))

(declare-fun b!4876308 () Bool)

(declare-fun res!2081572 () Bool)

(declare-fun e!3047915 () Bool)

(assert (=> b!4876308 (=> (not res!2081572) (not e!3047915))))

(assert (=> b!4876308 (= res!2081572 (not (isEmpty!29995 (left!40682 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876309 () Bool)

(declare-fun res!2081570 () Bool)

(assert (=> b!4876309 (=> (not res!2081570) (not e!3047915))))

(assert (=> b!4876309 (= res!2081570 (<= (- (height!1937 (left!40682 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))) (height!1937 (right!41012 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))) 1))))

(declare-fun b!4876310 () Bool)

(declare-fun res!2081568 () Bool)

(assert (=> b!4876310 (=> (not res!2081568) (not e!3047915))))

(assert (=> b!4876310 (= res!2081568 (isBalanced!3966 (left!40682 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876311 () Bool)

(assert (=> b!4876311 (= e!3047915 (not (isEmpty!29995 (right!41012 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876312 () Bool)

(declare-fun res!2081569 () Bool)

(assert (=> b!4876312 (=> (not res!2081569) (not e!3047915))))

(assert (=> b!4876312 (= res!2081569 (isBalanced!3966 (right!41012 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876313 () Bool)

(assert (=> b!4876313 (= e!3047916 e!3047915)))

(declare-fun res!2081571 () Bool)

(assert (=> b!4876313 (=> (not res!2081571) (not e!3047915))))

(assert (=> b!4876313 (= res!2081571 (<= (- 1) (- (height!1937 (left!40682 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))) (height!1937 (right!41012 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566519 (not res!2081567)) b!4876313))

(assert (= (and b!4876313 res!2081571) b!4876309))

(assert (= (and b!4876309 res!2081570) b!4876310))

(assert (= (and b!4876310 res!2081568) b!4876312))

(assert (= (and b!4876312 res!2081569) b!4876308))

(assert (= (and b!4876308 res!2081572) b!4876311))

(declare-fun m!5878568 () Bool)

(assert (=> b!4876313 m!5878568))

(declare-fun m!5878570 () Bool)

(assert (=> b!4876313 m!5878570))

(declare-fun m!5878572 () Bool)

(assert (=> b!4876308 m!5878572))

(assert (=> b!4876309 m!5878568))

(assert (=> b!4876309 m!5878570))

(declare-fun m!5878574 () Bool)

(assert (=> b!4876312 m!5878574))

(declare-fun m!5878576 () Bool)

(assert (=> b!4876311 m!5878576))

(declare-fun m!5878578 () Bool)

(assert (=> b!4876310 m!5878578))

(assert (=> b!4874658 d!1566519))

(declare-fun d!1566521 () Bool)

(declare-fun lt!1998178 () Int)

(assert (=> d!1566521 (>= lt!1998178 0)))

(declare-fun e!3047917 () Int)

(assert (=> d!1566521 (= lt!1998178 e!3047917)))

(declare-fun c!829388 () Bool)

(assert (=> d!1566521 (= c!829388 ((_ is Nil!56009) (_1!33247 lt!1997429)))))

(assert (=> d!1566521 (= (size!36938 (_1!33247 lt!1997429)) lt!1998178)))

(declare-fun b!4876314 () Bool)

(assert (=> b!4876314 (= e!3047917 0)))

(declare-fun b!4876315 () Bool)

(assert (=> b!4876315 (= e!3047917 (+ 1 (size!36938 (t!364441 (_1!33247 lt!1997429)))))))

(assert (= (and d!1566521 c!829388) b!4876314))

(assert (= (and d!1566521 (not c!829388)) b!4876315))

(declare-fun m!5878580 () Bool)

(assert (=> b!4876315 m!5878580))

(assert (=> d!1565661 d!1566521))

(declare-fun b!4876316 () Bool)

(declare-fun res!2081578 () Bool)

(declare-fun e!3047920 () Bool)

(assert (=> b!4876316 (=> (not res!2081578) (not e!3047920))))

(declare-fun lt!1998180 () Option!13802)

(assert (=> b!4876316 (= res!2081578 (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1998180)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998180))))))))

(declare-fun call!338525 () Option!13802)

(declare-fun bm!338520 () Bool)

(assert (=> bm!338520 (= call!338525 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (_2!33248 (v!49737 lt!1997320))))))

(declare-fun d!1566523 () Bool)

(declare-fun e!3047919 () Bool)

(assert (=> d!1566523 e!3047919))

(declare-fun res!2081576 () Bool)

(assert (=> d!1566523 (=> res!2081576 e!3047919)))

(assert (=> d!1566523 (= res!2081576 (isEmpty!29998 lt!1998180))))

(declare-fun e!3047918 () Option!13802)

(assert (=> d!1566523 (= lt!1998180 e!3047918)))

(declare-fun c!829389 () Bool)

(assert (=> d!1566523 (= c!829389 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1998181 () Unit!146004)

(declare-fun lt!1998183 () Unit!146004)

(assert (=> d!1566523 (= lt!1998181 lt!1998183)))

(assert (=> d!1566523 (isPrefix!4772 (_2!33248 (v!49737 lt!1997320)) (_2!33248 (v!49737 lt!1997320)))))

(assert (=> d!1566523 (= lt!1998183 (lemmaIsPrefixRefl!3169 (_2!33248 (v!49737 lt!1997320)) (_2!33248 (v!49737 lt!1997320))))))

(assert (=> d!1566523 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1566523 (= (maxPrefix!4554 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997320))) lt!1998180)))

(declare-fun b!4876317 () Bool)

(assert (=> b!4876317 (= e!3047919 e!3047920)))

(declare-fun res!2081573 () Bool)

(assert (=> b!4876317 (=> (not res!2081573) (not e!3047920))))

(assert (=> b!4876317 (= res!2081573 (isDefined!10861 lt!1998180))))

(declare-fun b!4876318 () Bool)

(assert (=> b!4876318 (= e!3047920 (contains!19406 rules!1164 (rule!11198 (_1!33248 (get!19248 lt!1998180)))))))

(declare-fun b!4876319 () Bool)

(declare-fun lt!1998179 () Option!13802)

(declare-fun lt!1998182 () Option!13802)

(assert (=> b!4876319 (= e!3047918 (ite (and ((_ is None!13801) lt!1998179) ((_ is None!13801) lt!1998182)) None!13801 (ite ((_ is None!13801) lt!1998182) lt!1998179 (ite ((_ is None!13801) lt!1998179) lt!1998182 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1998179))) (size!36930 (_1!33248 (v!49737 lt!1998182)))) lt!1998179 lt!1998182)))))))

(assert (=> b!4876319 (= lt!1998179 call!338525)))

(assert (=> b!4876319 (= lt!1998182 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (_2!33248 (v!49737 lt!1997320))))))

(declare-fun b!4876320 () Bool)

(declare-fun res!2081579 () Bool)

(assert (=> b!4876320 (=> (not res!2081579) (not e!3047920))))

(assert (=> b!4876320 (= res!2081579 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998180)))) (_2!33248 (get!19248 lt!1998180))) (_2!33248 (v!49737 lt!1997320))))))

(declare-fun b!4876321 () Bool)

(declare-fun res!2081574 () Bool)

(assert (=> b!4876321 (=> (not res!2081574) (not e!3047920))))

(assert (=> b!4876321 (= res!2081574 (< (size!36933 (_2!33248 (get!19248 lt!1998180))) (size!36933 (_2!33248 (v!49737 lt!1997320)))))))

(declare-fun b!4876322 () Bool)

(declare-fun res!2081575 () Bool)

(assert (=> b!4876322 (=> (not res!2081575) (not e!3047920))))

(assert (=> b!4876322 (= res!2081575 (= (value!258510 (_1!33248 (get!19248 lt!1998180))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1998180)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998180)))))))))

(declare-fun b!4876323 () Bool)

(declare-fun res!2081577 () Bool)

(assert (=> b!4876323 (=> (not res!2081577) (not e!3047920))))

(assert (=> b!4876323 (= res!2081577 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998180)))) (originalCharacters!8371 (_1!33248 (get!19248 lt!1998180)))))))

(declare-fun b!4876324 () Bool)

(assert (=> b!4876324 (= e!3047918 call!338525)))

(assert (= (and d!1566523 c!829389) b!4876324))

(assert (= (and d!1566523 (not c!829389)) b!4876319))

(assert (= (or b!4876324 b!4876319) bm!338520))

(assert (= (and d!1566523 (not res!2081576)) b!4876317))

(assert (= (and b!4876317 res!2081573) b!4876323))

(assert (= (and b!4876323 res!2081577) b!4876321))

(assert (= (and b!4876321 res!2081574) b!4876320))

(assert (= (and b!4876320 res!2081579) b!4876322))

(assert (= (and b!4876322 res!2081575) b!4876316))

(assert (= (and b!4876316 res!2081578) b!4876318))

(declare-fun m!5878582 () Bool)

(assert (=> b!4876320 m!5878582))

(declare-fun m!5878584 () Bool)

(assert (=> b!4876320 m!5878584))

(assert (=> b!4876320 m!5878584))

(declare-fun m!5878586 () Bool)

(assert (=> b!4876320 m!5878586))

(assert (=> b!4876320 m!5878586))

(declare-fun m!5878588 () Bool)

(assert (=> b!4876320 m!5878588))

(declare-fun m!5878590 () Bool)

(assert (=> d!1566523 m!5878590))

(declare-fun m!5878592 () Bool)

(assert (=> d!1566523 m!5878592))

(declare-fun m!5878594 () Bool)

(assert (=> d!1566523 m!5878594))

(assert (=> d!1566523 m!5875710))

(assert (=> b!4876323 m!5878582))

(assert (=> b!4876323 m!5878584))

(assert (=> b!4876323 m!5878584))

(assert (=> b!4876323 m!5878586))

(declare-fun m!5878596 () Bool)

(assert (=> b!4876317 m!5878596))

(assert (=> b!4876322 m!5878582))

(declare-fun m!5878598 () Bool)

(assert (=> b!4876322 m!5878598))

(assert (=> b!4876322 m!5878598))

(declare-fun m!5878600 () Bool)

(assert (=> b!4876322 m!5878600))

(assert (=> b!4876318 m!5878582))

(declare-fun m!5878602 () Bool)

(assert (=> b!4876318 m!5878602))

(declare-fun m!5878604 () Bool)

(assert (=> b!4876319 m!5878604))

(assert (=> b!4876321 m!5878582))

(declare-fun m!5878606 () Bool)

(assert (=> b!4876321 m!5878606))

(assert (=> b!4876321 m!5875970))

(declare-fun m!5878608 () Bool)

(assert (=> bm!338520 m!5878608))

(assert (=> b!4876316 m!5878582))

(assert (=> b!4876316 m!5878584))

(assert (=> b!4876316 m!5878584))

(assert (=> b!4876316 m!5878586))

(assert (=> b!4876316 m!5878586))

(declare-fun m!5878610 () Bool)

(assert (=> b!4876316 m!5878610))

(assert (=> d!1565661 d!1566523))

(declare-fun d!1566525 () Bool)

(assert (=> d!1566525 (= (list!17533 (_2!33245 (get!19247 lt!1997538))) (list!17535 (c!828991 (_2!33245 (get!19247 lt!1997538)))))))

(declare-fun bs!1175089 () Bool)

(assert (= bs!1175089 d!1566525))

(declare-fun m!5878612 () Bool)

(assert (=> bs!1175089 m!5878612))

(assert (=> b!4874857 d!1566525))

(declare-fun d!1566527 () Bool)

(assert (=> d!1566527 (= (get!19247 lt!1997538) (v!49734 lt!1997538))))

(assert (=> b!4874857 d!1566527))

(assert (=> b!4874857 d!1566471))

(declare-fun d!1566529 () Bool)

(assert (=> d!1566529 (= (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585))) (v!49737 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 input!585))))))

(assert (=> b!4874857 d!1566529))

(assert (=> b!4874857 d!1565563))

(declare-fun b!4876327 () Bool)

(declare-fun res!2081580 () Bool)

(declare-fun e!3047921 () Bool)

(assert (=> b!4876327 (=> (not res!2081580) (not e!3047921))))

(declare-fun lt!1998184 () List!56131)

(assert (=> b!4876327 (= res!2081580 (= (size!36933 lt!1998184) (+ (size!36933 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) (size!36933 (_2!33248 (get!19248 lt!1997489))))))))

(declare-fun b!4876325 () Bool)

(declare-fun e!3047922 () List!56131)

(assert (=> b!4876325 (= e!3047922 (_2!33248 (get!19248 lt!1997489)))))

(declare-fun b!4876328 () Bool)

(assert (=> b!4876328 (= e!3047921 (or (not (= (_2!33248 (get!19248 lt!1997489)) Nil!56007)) (= lt!1998184 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))))))))

(declare-fun b!4876326 () Bool)

(assert (=> b!4876326 (= e!3047922 (Cons!56007 (h!62455 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) (++!12201 (t!364439 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) (_2!33248 (get!19248 lt!1997489)))))))

(declare-fun d!1566531 () Bool)

(assert (=> d!1566531 e!3047921))

(declare-fun res!2081581 () Bool)

(assert (=> d!1566531 (=> (not res!2081581) (not e!3047921))))

(assert (=> d!1566531 (= res!2081581 (= (content!9993 lt!1998184) ((_ map or) (content!9993 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))) (content!9993 (_2!33248 (get!19248 lt!1997489))))))))

(assert (=> d!1566531 (= lt!1998184 e!3047922)))

(declare-fun c!829390 () Bool)

(assert (=> d!1566531 (= c!829390 ((_ is Nil!56007) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489))))))))

(assert (=> d!1566531 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997489)))) (_2!33248 (get!19248 lt!1997489))) lt!1998184)))

(assert (= (and d!1566531 c!829390) b!4876325))

(assert (= (and d!1566531 (not c!829390)) b!4876326))

(assert (= (and d!1566531 res!2081581) b!4876327))

(assert (= (and b!4876327 res!2081580) b!4876328))

(declare-fun m!5878614 () Bool)

(assert (=> b!4876327 m!5878614))

(assert (=> b!4876327 m!5876142))

(declare-fun m!5878616 () Bool)

(assert (=> b!4876327 m!5878616))

(assert (=> b!4876327 m!5876156))

(declare-fun m!5878618 () Bool)

(assert (=> b!4876326 m!5878618))

(declare-fun m!5878620 () Bool)

(assert (=> d!1566531 m!5878620))

(assert (=> d!1566531 m!5876142))

(declare-fun m!5878622 () Bool)

(assert (=> d!1566531 m!5878622))

(declare-fun m!5878624 () Bool)

(assert (=> d!1566531 m!5878624))

(assert (=> b!4874822 d!1566531))

(assert (=> b!4874822 d!1566409))

(assert (=> b!4874822 d!1566411))

(assert (=> b!4874822 d!1566415))

(declare-fun d!1566533 () Bool)

(declare-fun c!829391 () Bool)

(assert (=> d!1566533 (= c!829391 ((_ is Node!14601) (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun e!3047923 () Bool)

(assert (=> d!1566533 (= (inv!71943 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) e!3047923)))

(declare-fun b!4876329 () Bool)

(assert (=> b!4876329 (= e!3047923 (inv!71947 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876330 () Bool)

(declare-fun e!3047924 () Bool)

(assert (=> b!4876330 (= e!3047923 e!3047924)))

(declare-fun res!2081582 () Bool)

(assert (=> b!4876330 (= res!2081582 (not ((_ is Leaf!24336) (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (=> b!4876330 (=> res!2081582 e!3047924)))

(declare-fun b!4876331 () Bool)

(assert (=> b!4876331 (= e!3047924 (inv!71948 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566533 c!829391) b!4876329))

(assert (= (and d!1566533 (not c!829391)) b!4876330))

(assert (= (and b!4876330 (not res!2081582)) b!4876331))

(declare-fun m!5878626 () Bool)

(assert (=> b!4876329 m!5878626))

(declare-fun m!5878628 () Bool)

(assert (=> b!4876331 m!5878628))

(assert (=> b!4874971 d!1566533))

(declare-fun d!1566535 () Bool)

(declare-fun c!829392 () Bool)

(assert (=> d!1566535 (= c!829392 ((_ is Node!14601) (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun e!3047925 () Bool)

(assert (=> d!1566535 (= (inv!71943 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) e!3047925)))

(declare-fun b!4876332 () Bool)

(assert (=> b!4876332 (= e!3047925 (inv!71947 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876333 () Bool)

(declare-fun e!3047926 () Bool)

(assert (=> b!4876333 (= e!3047925 e!3047926)))

(declare-fun res!2081583 () Bool)

(assert (=> b!4876333 (= res!2081583 (not ((_ is Leaf!24336) (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (=> b!4876333 (=> res!2081583 e!3047926)))

(declare-fun b!4876334 () Bool)

(assert (=> b!4876334 (= e!3047926 (inv!71948 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566535 c!829392) b!4876332))

(assert (= (and d!1566535 (not c!829392)) b!4876333))

(assert (= (and b!4876333 (not res!2081583)) b!4876334))

(declare-fun m!5878630 () Bool)

(assert (=> b!4876332 m!5878630))

(declare-fun m!5878632 () Bool)

(assert (=> b!4876334 m!5878632))

(assert (=> b!4874971 d!1566535))

(declare-fun d!1566537 () Bool)

(declare-fun lt!1998187 () Bool)

(declare-fun content!9996 (List!56132) (InoxSet Rule!15896))

(assert (=> d!1566537 (= lt!1998187 (select (content!9996 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))

(declare-fun e!3047932 () Bool)

(assert (=> d!1566537 (= lt!1998187 e!3047932)))

(declare-fun res!2081588 () Bool)

(assert (=> d!1566537 (=> (not res!2081588) (not e!3047932))))

(assert (=> d!1566537 (= res!2081588 ((_ is Cons!56008) rules!1164))))

(assert (=> d!1566537 (= (contains!19406 rules!1164 (rule!11198 (_1!33248 (get!19248 lt!1997484)))) lt!1998187)))

(declare-fun b!4876339 () Bool)

(declare-fun e!3047931 () Bool)

(assert (=> b!4876339 (= e!3047932 e!3047931)))

(declare-fun res!2081589 () Bool)

(assert (=> b!4876339 (=> res!2081589 e!3047931)))

(assert (=> b!4876339 (= res!2081589 (= (h!62456 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))

(declare-fun b!4876340 () Bool)

(assert (=> b!4876340 (= e!3047931 (contains!19406 (t!364440 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))

(assert (= (and d!1566537 res!2081588) b!4876339))

(assert (= (and b!4876339 (not res!2081589)) b!4876340))

(declare-fun m!5878634 () Bool)

(assert (=> d!1566537 m!5878634))

(declare-fun m!5878636 () Bool)

(assert (=> d!1566537 m!5878636))

(declare-fun m!5878638 () Bool)

(assert (=> b!4876340 m!5878638))

(assert (=> b!4874811 d!1566537))

(assert (=> b!4874811 d!1566403))

(declare-fun d!1566539 () Bool)

(declare-fun lt!1998188 () Bool)

(assert (=> d!1566539 (= lt!1998188 (isEmpty!29994 (list!17537 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566539 (= lt!1998188 (= (size!36940 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) 0))))

(assert (=> d!1566539 (= (isEmpty!29995 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) lt!1998188)))

(declare-fun bs!1175090 () Bool)

(assert (= bs!1175090 d!1566539))

(declare-fun m!5878640 () Bool)

(assert (=> bs!1175090 m!5878640))

(assert (=> bs!1175090 m!5878640))

(declare-fun m!5878642 () Bool)

(assert (=> bs!1175090 m!5878642))

(declare-fun m!5878644 () Bool)

(assert (=> bs!1175090 m!5878644))

(assert (=> b!4874654 d!1566539))

(declare-fun d!1566541 () Bool)

(assert (=> d!1566541 (= (isDefined!10860 lt!1997447) (not (isEmpty!29997 lt!1997447)))))

(declare-fun bs!1175091 () Bool)

(assert (= bs!1175091 d!1566541))

(declare-fun m!5878646 () Bool)

(assert (=> bs!1175091 m!5878646))

(assert (=> b!4874755 d!1566541))

(declare-fun d!1566543 () Bool)

(declare-fun lt!1998189 () Bool)

(assert (=> d!1566543 (= lt!1998189 (isEmpty!30003 (list!17535 (right!41011 (c!828991 input!585)))))))

(assert (=> d!1566543 (= lt!1998189 (= (size!36939 (right!41011 (c!828991 input!585))) 0))))

(assert (=> d!1566543 (= (isEmpty!29996 (right!41011 (c!828991 input!585))) lt!1998189)))

(declare-fun bs!1175092 () Bool)

(assert (= bs!1175092 d!1566543))

(assert (=> bs!1175092 m!5875954))

(assert (=> bs!1175092 m!5875954))

(declare-fun m!5878648 () Bool)

(assert (=> bs!1175092 m!5878648))

(assert (=> bs!1175092 m!5875982))

(assert (=> b!4874611 d!1566543))

(declare-fun d!1566545 () Bool)

(declare-fun res!2081590 () Bool)

(declare-fun e!3047933 () Bool)

(assert (=> d!1566545 (=> (not res!2081590) (not e!3047933))))

(assert (=> d!1566545 (= res!2081590 (<= (size!36933 (list!17539 (xs!17909 (left!40681 (c!828991 input!585))))) 512))))

(assert (=> d!1566545 (= (inv!71948 (left!40681 (c!828991 input!585))) e!3047933)))

(declare-fun b!4876341 () Bool)

(declare-fun res!2081591 () Bool)

(assert (=> b!4876341 (=> (not res!2081591) (not e!3047933))))

(assert (=> b!4876341 (= res!2081591 (= (csize!29433 (left!40681 (c!828991 input!585))) (size!36933 (list!17539 (xs!17909 (left!40681 (c!828991 input!585)))))))))

(declare-fun b!4876342 () Bool)

(assert (=> b!4876342 (= e!3047933 (and (> (csize!29433 (left!40681 (c!828991 input!585))) 0) (<= (csize!29433 (left!40681 (c!828991 input!585))) 512)))))

(assert (= (and d!1566545 res!2081590) b!4876341))

(assert (= (and b!4876341 res!2081591) b!4876342))

(declare-fun m!5878650 () Bool)

(assert (=> d!1566545 m!5878650))

(assert (=> d!1566545 m!5878650))

(declare-fun m!5878652 () Bool)

(assert (=> d!1566545 m!5878652))

(assert (=> b!4876341 m!5878650))

(assert (=> b!4876341 m!5878650))

(assert (=> b!4876341 m!5878652))

(assert (=> b!4874875 d!1566545))

(declare-fun b!4876345 () Bool)

(declare-fun e!3047935 () List!56131)

(assert (=> b!4876345 (= e!3047935 (list!17539 (xs!17909 (c!828991 lt!1997302))))))

(declare-fun b!4876343 () Bool)

(declare-fun e!3047934 () List!56131)

(assert (=> b!4876343 (= e!3047934 Nil!56007)))

(declare-fun d!1566547 () Bool)

(declare-fun c!829393 () Bool)

(assert (=> d!1566547 (= c!829393 ((_ is Empty!14601) (c!828991 lt!1997302)))))

(assert (=> d!1566547 (= (list!17535 (c!828991 lt!1997302)) e!3047934)))

(declare-fun b!4876344 () Bool)

(assert (=> b!4876344 (= e!3047934 e!3047935)))

(declare-fun c!829394 () Bool)

(assert (=> b!4876344 (= c!829394 ((_ is Leaf!24336) (c!828991 lt!1997302)))))

(declare-fun b!4876346 () Bool)

(assert (=> b!4876346 (= e!3047935 (++!12201 (list!17535 (left!40681 (c!828991 lt!1997302))) (list!17535 (right!41011 (c!828991 lt!1997302)))))))

(assert (= (and d!1566547 c!829393) b!4876343))

(assert (= (and d!1566547 (not c!829393)) b!4876344))

(assert (= (and b!4876344 c!829394) b!4876345))

(assert (= (and b!4876344 (not c!829394)) b!4876346))

(declare-fun m!5878654 () Bool)

(assert (=> b!4876345 m!5878654))

(declare-fun m!5878656 () Bool)

(assert (=> b!4876346 m!5878656))

(declare-fun m!5878658 () Bool)

(assert (=> b!4876346 m!5878658))

(assert (=> b!4876346 m!5878656))

(assert (=> b!4876346 m!5878658))

(declare-fun m!5878660 () Bool)

(assert (=> b!4876346 m!5878660))

(assert (=> d!1565763 d!1566547))

(assert (=> bm!338395 d!1566471))

(declare-fun d!1566549 () Bool)

(declare-fun lt!1998190 () Int)

(assert (=> d!1566549 (>= lt!1998190 0)))

(declare-fun e!3047936 () Int)

(assert (=> d!1566549 (= lt!1998190 e!3047936)))

(declare-fun c!829395 () Bool)

(assert (=> d!1566549 (= c!829395 ((_ is Nil!56007) (t!364439 lt!1997273)))))

(assert (=> d!1566549 (= (size!36933 (t!364439 lt!1997273)) lt!1998190)))

(declare-fun b!4876347 () Bool)

(assert (=> b!4876347 (= e!3047936 0)))

(declare-fun b!4876348 () Bool)

(assert (=> b!4876348 (= e!3047936 (+ 1 (size!36933 (t!364439 (t!364439 lt!1997273)))))))

(assert (= (and d!1566549 c!829395) b!4876347))

(assert (= (and d!1566549 (not c!829395)) b!4876348))

(declare-fun m!5878662 () Bool)

(assert (=> b!4876348 m!5878662))

(assert (=> b!4874670 d!1566549))

(declare-fun b!4876350 () Bool)

(declare-fun e!3047937 () List!56133)

(declare-fun e!3047938 () List!56133)

(assert (=> b!4876350 (= e!3047937 e!3047938)))

(declare-fun c!829397 () Bool)

(assert (=> b!4876350 (= c!829397 ((_ is Leaf!24337) (c!828992 (_1!33246 lt!1997295))))))

(declare-fun b!4876351 () Bool)

(assert (=> b!4876351 (= e!3047938 (list!17541 (xs!17910 (c!828992 (_1!33246 lt!1997295)))))))

(declare-fun d!1566551 () Bool)

(declare-fun c!829396 () Bool)

(assert (=> d!1566551 (= c!829396 ((_ is Empty!14602) (c!828992 (_1!33246 lt!1997295))))))

(assert (=> d!1566551 (= (list!17537 (c!828992 (_1!33246 lt!1997295))) e!3047937)))

(declare-fun b!4876349 () Bool)

(assert (=> b!4876349 (= e!3047937 Nil!56009)))

(declare-fun b!4876352 () Bool)

(assert (=> b!4876352 (= e!3047938 (++!12204 (list!17537 (left!40682 (c!828992 (_1!33246 lt!1997295)))) (list!17537 (right!41012 (c!828992 (_1!33246 lt!1997295))))))))

(assert (= (and d!1566551 c!829396) b!4876349))

(assert (= (and d!1566551 (not c!829396)) b!4876350))

(assert (= (and b!4876350 c!829397) b!4876351))

(assert (= (and b!4876350 (not c!829397)) b!4876352))

(declare-fun m!5878664 () Bool)

(assert (=> b!4876351 m!5878664))

(declare-fun m!5878666 () Bool)

(assert (=> b!4876352 m!5878666))

(declare-fun m!5878668 () Bool)

(assert (=> b!4876352 m!5878668))

(assert (=> b!4876352 m!5878666))

(assert (=> b!4876352 m!5878668))

(declare-fun m!5878670 () Bool)

(assert (=> b!4876352 m!5878670))

(assert (=> d!1565733 d!1566551))

(declare-fun bs!1175093 () Bool)

(declare-fun d!1566553 () Bool)

(assert (= bs!1175093 (and d!1566553 d!1565665)))

(declare-fun lambda!243638 () Int)

(assert (=> bs!1175093 (= (and (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (= lambda!243638 lambda!243592))))

(declare-fun bs!1175094 () Bool)

(assert (= bs!1175094 (and d!1566553 b!4874856)))

(assert (=> bs!1175094 (= (and (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (= lambda!243638 lambda!243603))))

(declare-fun bs!1175095 () Bool)

(assert (= bs!1175095 (and d!1566553 b!4875933)))

(assert (=> bs!1175095 (= lambda!243638 lambda!243635)))

(assert (=> d!1566553 true))

(assert (=> d!1566553 (< (dynLambda!22507 order!25259 (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (dynLambda!22508 order!25261 lambda!243638))))

(assert (=> d!1566553 true))

(assert (=> d!1566553 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (dynLambda!22508 order!25261 lambda!243638))))

(assert (=> d!1566553 (= (semiInverseModEq!3551 (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (Forall!1680 lambda!243638))))

(declare-fun bs!1175096 () Bool)

(assert (= bs!1175096 d!1566553))

(declare-fun m!5878672 () Bool)

(assert (=> bs!1175096 m!5878672))

(assert (=> d!1565697 d!1566553))

(assert (=> b!4874752 d!1566455))

(declare-fun d!1566555 () Bool)

(assert (=> d!1566555 (= (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))) (v!49737 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))))))

(assert (=> b!4874752 d!1566555))

(declare-fun d!1566557 () Bool)

(declare-fun lt!1998192 () Option!13802)

(assert (=> d!1566557 (= lt!1998192 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)))))

(declare-fun e!3047939 () Option!13802)

(assert (=> d!1566557 (= lt!1998192 e!3047939)))

(declare-fun c!829398 () Bool)

(assert (=> d!1566557 (= c!829398 (and ((_ is Cons!56008) (t!364440 rules!1164)) ((_ is Nil!56008) (t!364440 (t!364440 rules!1164)))))))

(declare-fun lt!1998191 () Unit!146004)

(declare-fun lt!1998195 () Unit!146004)

(assert (=> d!1566557 (= lt!1998191 lt!1998195)))

(assert (=> d!1566557 (isPrefix!4772 (list!17533 input!585) (list!17533 input!585))))

(assert (=> d!1566557 (= lt!1998195 (lemmaIsPrefixRefl!3169 (list!17533 input!585) (list!17533 input!585)))))

(assert (=> d!1566557 (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164))))

(assert (=> d!1566557 (= (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)) lt!1998192)))

(declare-fun bm!338521 () Bool)

(declare-fun call!338526 () Option!13802)

(assert (=> bm!338521 (= call!338526 (maxPrefixOneRuleZipper!230 thiss!11460 (h!62456 (t!364440 rules!1164)) (list!17533 input!585)))))

(declare-fun b!4876353 () Bool)

(assert (=> b!4876353 (= e!3047939 call!338526)))

(declare-fun b!4876354 () Bool)

(declare-fun lt!1998194 () Option!13802)

(declare-fun lt!1998193 () Option!13802)

(assert (=> b!4876354 (= e!3047939 (ite (and ((_ is None!13801) lt!1998194) ((_ is None!13801) lt!1998193)) None!13801 (ite ((_ is None!13801) lt!1998193) lt!1998194 (ite ((_ is None!13801) lt!1998194) lt!1998193 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1998194))) (size!36930 (_1!33248 (v!49737 lt!1998193)))) lt!1998194 lt!1998193)))))))

(assert (=> b!4876354 (= lt!1998194 call!338526)))

(assert (=> b!4876354 (= lt!1998193 (maxPrefixZipper!569 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585)))))

(assert (= (and d!1566557 c!829398) b!4876353))

(assert (= (and d!1566557 (not c!829398)) b!4876354))

(assert (= (or b!4876353 b!4876354) bm!338521))

(assert (=> d!1566557 m!5875518))

(assert (=> d!1566557 m!5876040))

(assert (=> d!1566557 m!5875518))

(assert (=> d!1566557 m!5875518))

(assert (=> d!1566557 m!5875862))

(assert (=> d!1566557 m!5875518))

(assert (=> d!1566557 m!5875518))

(assert (=> d!1566557 m!5875864))

(assert (=> d!1566557 m!5876014))

(assert (=> bm!338521 m!5875518))

(declare-fun m!5878674 () Bool)

(assert (=> bm!338521 m!5878674))

(assert (=> b!4876354 m!5875518))

(declare-fun m!5878676 () Bool)

(assert (=> b!4876354 m!5878676))

(assert (=> b!4874752 d!1566557))

(assert (=> b!4874752 d!1565563))

(declare-fun d!1566559 () Bool)

(declare-fun c!829399 () Bool)

(assert (=> d!1566559 (= c!829399 ((_ is Nil!56007) lt!1997410))))

(declare-fun e!3047940 () (InoxSet C!26444))

(assert (=> d!1566559 (= (content!9993 lt!1997410) e!3047940)))

(declare-fun b!4876355 () Bool)

(assert (=> b!4876355 (= e!3047940 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4876356 () Bool)

(assert (=> b!4876356 (= e!3047940 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 lt!1997410) true) (content!9993 (t!364439 lt!1997410))))))

(assert (= (and d!1566559 c!829399) b!4876355))

(assert (= (and d!1566559 (not c!829399)) b!4876356))

(declare-fun m!5878678 () Bool)

(assert (=> b!4876356 m!5878678))

(declare-fun m!5878680 () Bool)

(assert (=> b!4876356 m!5878680))

(assert (=> d!1565631 d!1566559))

(assert (=> d!1565631 d!1566395))

(assert (=> d!1565631 d!1565771))

(declare-fun d!1566561 () Bool)

(assert (=> d!1566561 (= (list!17539 (xs!17909 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (innerList!14689 (xs!17909 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> b!4874729 d!1566561))

(assert (=> b!4874637 d!1566041))

(declare-fun b!4876359 () Bool)

(declare-fun res!2081592 () Bool)

(declare-fun e!3047941 () Bool)

(assert (=> b!4876359 (=> (not res!2081592) (not e!3047941))))

(declare-fun lt!1998196 () List!56131)

(assert (=> b!4876359 (= res!2081592 (= (size!36933 lt!1998196) (+ (size!36933 (list!17535 (left!40681 (c!828991 input!585)))) (size!36933 (list!17535 (right!41011 (c!828991 input!585)))))))))

(declare-fun b!4876357 () Bool)

(declare-fun e!3047942 () List!56131)

(assert (=> b!4876357 (= e!3047942 (list!17535 (right!41011 (c!828991 input!585))))))

(declare-fun b!4876360 () Bool)

(assert (=> b!4876360 (= e!3047941 (or (not (= (list!17535 (right!41011 (c!828991 input!585))) Nil!56007)) (= lt!1998196 (list!17535 (left!40681 (c!828991 input!585))))))))

(declare-fun b!4876358 () Bool)

(assert (=> b!4876358 (= e!3047942 (Cons!56007 (h!62455 (list!17535 (left!40681 (c!828991 input!585)))) (++!12201 (t!364439 (list!17535 (left!40681 (c!828991 input!585)))) (list!17535 (right!41011 (c!828991 input!585))))))))

(declare-fun d!1566563 () Bool)

(assert (=> d!1566563 e!3047941))

(declare-fun res!2081593 () Bool)

(assert (=> d!1566563 (=> (not res!2081593) (not e!3047941))))

(assert (=> d!1566563 (= res!2081593 (= (content!9993 lt!1998196) ((_ map or) (content!9993 (list!17535 (left!40681 (c!828991 input!585)))) (content!9993 (list!17535 (right!41011 (c!828991 input!585)))))))))

(assert (=> d!1566563 (= lt!1998196 e!3047942)))

(declare-fun c!829400 () Bool)

(assert (=> d!1566563 (= c!829400 ((_ is Nil!56007) (list!17535 (left!40681 (c!828991 input!585)))))))

(assert (=> d!1566563 (= (++!12201 (list!17535 (left!40681 (c!828991 input!585))) (list!17535 (right!41011 (c!828991 input!585)))) lt!1998196)))

(assert (= (and d!1566563 c!829400) b!4876357))

(assert (= (and d!1566563 (not c!829400)) b!4876358))

(assert (= (and d!1566563 res!2081593) b!4876359))

(assert (= (and b!4876359 res!2081592) b!4876360))

(declare-fun m!5878682 () Bool)

(assert (=> b!4876359 m!5878682))

(assert (=> b!4876359 m!5875952))

(assert (=> b!4876359 m!5877552))

(assert (=> b!4876359 m!5875954))

(assert (=> b!4876359 m!5877554))

(assert (=> b!4876358 m!5875954))

(declare-fun m!5878684 () Bool)

(assert (=> b!4876358 m!5878684))

(declare-fun m!5878686 () Bool)

(assert (=> d!1566563 m!5878686))

(assert (=> d!1566563 m!5875952))

(declare-fun m!5878688 () Bool)

(assert (=> d!1566563 m!5878688))

(assert (=> d!1566563 m!5875954))

(declare-fun m!5878690 () Bool)

(assert (=> d!1566563 m!5878690))

(assert (=> b!4874684 d!1566563))

(declare-fun b!4876363 () Bool)

(declare-fun e!3047944 () List!56131)

(assert (=> b!4876363 (= e!3047944 (list!17539 (xs!17909 (left!40681 (c!828991 input!585)))))))

(declare-fun b!4876361 () Bool)

(declare-fun e!3047943 () List!56131)

(assert (=> b!4876361 (= e!3047943 Nil!56007)))

(declare-fun d!1566565 () Bool)

(declare-fun c!829401 () Bool)

(assert (=> d!1566565 (= c!829401 ((_ is Empty!14601) (left!40681 (c!828991 input!585))))))

(assert (=> d!1566565 (= (list!17535 (left!40681 (c!828991 input!585))) e!3047943)))

(declare-fun b!4876362 () Bool)

(assert (=> b!4876362 (= e!3047943 e!3047944)))

(declare-fun c!829402 () Bool)

(assert (=> b!4876362 (= c!829402 ((_ is Leaf!24336) (left!40681 (c!828991 input!585))))))

(declare-fun b!4876364 () Bool)

(assert (=> b!4876364 (= e!3047944 (++!12201 (list!17535 (left!40681 (left!40681 (c!828991 input!585)))) (list!17535 (right!41011 (left!40681 (c!828991 input!585))))))))

(assert (= (and d!1566565 c!829401) b!4876361))

(assert (= (and d!1566565 (not c!829401)) b!4876362))

(assert (= (and b!4876362 c!829402) b!4876363))

(assert (= (and b!4876362 (not c!829402)) b!4876364))

(assert (=> b!4876363 m!5878650))

(declare-fun m!5878692 () Bool)

(assert (=> b!4876364 m!5878692))

(declare-fun m!5878694 () Bool)

(assert (=> b!4876364 m!5878694))

(assert (=> b!4876364 m!5878692))

(assert (=> b!4876364 m!5878694))

(declare-fun m!5878696 () Bool)

(assert (=> b!4876364 m!5878696))

(assert (=> b!4874684 d!1566565))

(declare-fun b!4876367 () Bool)

(declare-fun e!3047946 () List!56131)

(assert (=> b!4876367 (= e!3047946 (list!17539 (xs!17909 (right!41011 (c!828991 input!585)))))))

(declare-fun b!4876365 () Bool)

(declare-fun e!3047945 () List!56131)

(assert (=> b!4876365 (= e!3047945 Nil!56007)))

(declare-fun d!1566567 () Bool)

(declare-fun c!829403 () Bool)

(assert (=> d!1566567 (= c!829403 ((_ is Empty!14601) (right!41011 (c!828991 input!585))))))

(assert (=> d!1566567 (= (list!17535 (right!41011 (c!828991 input!585))) e!3047945)))

(declare-fun b!4876366 () Bool)

(assert (=> b!4876366 (= e!3047945 e!3047946)))

(declare-fun c!829404 () Bool)

(assert (=> b!4876366 (= c!829404 ((_ is Leaf!24336) (right!41011 (c!828991 input!585))))))

(declare-fun b!4876368 () Bool)

(assert (=> b!4876368 (= e!3047946 (++!12201 (list!17535 (left!40681 (right!41011 (c!828991 input!585)))) (list!17535 (right!41011 (right!41011 (c!828991 input!585))))))))

(assert (= (and d!1566567 c!829403) b!4876365))

(assert (= (and d!1566567 (not c!829403)) b!4876366))

(assert (= (and b!4876366 c!829404) b!4876367))

(assert (= (and b!4876366 (not c!829404)) b!4876368))

(declare-fun m!5878698 () Bool)

(assert (=> b!4876367 m!5878698))

(declare-fun m!5878700 () Bool)

(assert (=> b!4876368 m!5878700))

(declare-fun m!5878702 () Bool)

(assert (=> b!4876368 m!5878702))

(assert (=> b!4876368 m!5878700))

(assert (=> b!4876368 m!5878702))

(declare-fun m!5878704 () Bool)

(assert (=> b!4876368 m!5878704))

(assert (=> b!4874684 d!1566567))

(declare-fun d!1566569 () Bool)

(declare-fun lt!1998197 () Int)

(assert (=> d!1566569 (= lt!1998197 (size!36938 (list!17534 (_1!33246 lt!1997393))))))

(assert (=> d!1566569 (= lt!1998197 (size!36940 (c!828992 (_1!33246 lt!1997393))))))

(assert (=> d!1566569 (= (size!36932 (_1!33246 lt!1997393)) lt!1998197)))

(declare-fun bs!1175097 () Bool)

(assert (= bs!1175097 d!1566569))

(assert (=> bs!1175097 m!5875830))

(assert (=> bs!1175097 m!5875830))

(declare-fun m!5878706 () Bool)

(assert (=> bs!1175097 m!5878706))

(declare-fun m!5878708 () Bool)

(assert (=> bs!1175097 m!5878708))

(assert (=> d!1565619 d!1566569))

(declare-fun b!4876369 () Bool)

(declare-fun e!3047947 () Bool)

(declare-fun e!3047952 () Bool)

(assert (=> b!4876369 (= e!3047947 e!3047952)))

(declare-fun res!2081594 () Bool)

(assert (=> b!4876369 (=> (not res!2081594) (not e!3047952))))

(declare-fun lt!1998199 () Option!13801)

(assert (=> b!4876369 (= res!2081594 (= (_1!33245 (get!19247 lt!1998199)) (_1!33248 (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296))))))))))

(declare-fun b!4876370 () Bool)

(declare-fun e!3047949 () Bool)

(declare-fun e!3047948 () Bool)

(assert (=> b!4876370 (= e!3047949 e!3047948)))

(declare-fun res!2081599 () Bool)

(assert (=> b!4876370 (=> (not res!2081599) (not e!3047948))))

(assert (=> b!4876370 (= res!2081599 (= (_1!33245 (get!19247 lt!1998199)) (_1!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296))))))))))

(declare-fun b!4876371 () Bool)

(assert (=> b!4876371 (= e!3047948 (= (list!17533 (_2!33245 (get!19247 lt!1998199))) (_2!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296))))))))))

(declare-fun b!4876372 () Bool)

(declare-fun res!2081598 () Bool)

(declare-fun e!3047950 () Bool)

(assert (=> b!4876372 (=> (not res!2081598) (not e!3047950))))

(assert (=> b!4876372 (= res!2081598 e!3047949)))

(declare-fun res!2081595 () Bool)

(assert (=> b!4876372 (=> res!2081595 e!3047949)))

(assert (=> b!4876372 (= res!2081595 (not (isDefined!10860 lt!1998199)))))

(declare-fun bm!338522 () Bool)

(declare-fun call!338527 () Option!13801)

(assert (=> bm!338522 (= call!338527 (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 rules!1164) (_2!33245 (v!49734 lt!1997296))))))

(declare-fun b!4876373 () Bool)

(assert (=> b!4876373 (= e!3047950 e!3047947)))

(declare-fun res!2081597 () Bool)

(assert (=> b!4876373 (=> res!2081597 e!3047947)))

(assert (=> b!4876373 (= res!2081597 (not (isDefined!10860 lt!1998199)))))

(declare-fun b!4876374 () Bool)

(declare-fun e!3047951 () Option!13801)

(declare-fun lt!1998202 () Option!13801)

(declare-fun lt!1998200 () Option!13801)

(assert (=> b!4876374 (= e!3047951 (ite (and ((_ is None!13800) lt!1998202) ((_ is None!13800) lt!1998200)) None!13800 (ite ((_ is None!13800) lt!1998200) lt!1998202 (ite ((_ is None!13800) lt!1998202) lt!1998200 (ite (>= (size!36930 (_1!33245 (v!49734 lt!1998202))) (size!36930 (_1!33245 (v!49734 lt!1998200)))) lt!1998202 lt!1998200)))))))

(assert (=> b!4876374 (= lt!1998202 call!338527)))

(assert (=> b!4876374 (= lt!1998200 (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 rules!1164) (_2!33245 (v!49734 lt!1997296))))))

(declare-fun b!4876376 () Bool)

(assert (=> b!4876376 (= e!3047951 call!338527)))

(declare-fun b!4876375 () Bool)

(assert (=> b!4876375 (= e!3047952 (= (list!17533 (_2!33245 (get!19247 lt!1998199))) (_2!33248 (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296))))))))))

(declare-fun d!1566571 () Bool)

(assert (=> d!1566571 e!3047950))

(declare-fun res!2081596 () Bool)

(assert (=> d!1566571 (=> (not res!2081596) (not e!3047950))))

(assert (=> d!1566571 (= res!2081596 (= (isDefined!10860 lt!1998199) (isDefined!10861 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997296)))))))))

(assert (=> d!1566571 (= lt!1998199 e!3047951)))

(declare-fun c!829405 () Bool)

(assert (=> d!1566571 (= c!829405 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1998201 () Unit!146004)

(declare-fun lt!1998198 () Unit!146004)

(assert (=> d!1566571 (= lt!1998201 lt!1998198)))

(declare-fun lt!1998204 () List!56131)

(declare-fun lt!1998203 () List!56131)

(assert (=> d!1566571 (isPrefix!4772 lt!1998204 lt!1998203)))

(assert (=> d!1566571 (= lt!1998198 (lemmaIsPrefixRefl!3169 lt!1998204 lt!1998203))))

(assert (=> d!1566571 (= lt!1998203 (list!17533 (_2!33245 (v!49734 lt!1997296))))))

(assert (=> d!1566571 (= lt!1998204 (list!17533 (_2!33245 (v!49734 lt!1997296))))))

(assert (=> d!1566571 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1566571 (= (maxPrefixZipperSequence!1239 thiss!11460 rules!1164 (_2!33245 (v!49734 lt!1997296))) lt!1998199)))

(assert (= (and d!1566571 c!829405) b!4876376))

(assert (= (and d!1566571 (not c!829405)) b!4876374))

(assert (= (or b!4876376 b!4876374) bm!338522))

(assert (= (and d!1566571 res!2081596) b!4876372))

(assert (= (and b!4876372 (not res!2081595)) b!4876370))

(assert (= (and b!4876370 res!2081599) b!4876371))

(assert (= (and b!4876372 res!2081598) b!4876373))

(assert (= (and b!4876373 (not res!2081597)) b!4876369))

(assert (= (and b!4876369 res!2081594) b!4876375))

(declare-fun m!5878710 () Bool)

(assert (=> b!4876371 m!5878710))

(declare-fun m!5878712 () Bool)

(assert (=> b!4876371 m!5878712))

(declare-fun m!5878714 () Bool)

(assert (=> b!4876371 m!5878714))

(assert (=> b!4876371 m!5875822))

(assert (=> b!4876371 m!5875822))

(assert (=> b!4876371 m!5878712))

(declare-fun m!5878716 () Bool)

(assert (=> b!4876371 m!5878716))

(declare-fun m!5878718 () Bool)

(assert (=> bm!338522 m!5878718))

(assert (=> b!4876369 m!5878710))

(assert (=> b!4876369 m!5875822))

(assert (=> b!4876369 m!5875822))

(assert (=> b!4876369 m!5877236))

(assert (=> b!4876369 m!5877236))

(declare-fun m!5878720 () Bool)

(assert (=> b!4876369 m!5878720))

(declare-fun m!5878722 () Bool)

(assert (=> b!4876373 m!5878722))

(assert (=> b!4876370 m!5878710))

(assert (=> b!4876370 m!5875822))

(assert (=> b!4876370 m!5875822))

(assert (=> b!4876370 m!5878712))

(assert (=> b!4876370 m!5878712))

(assert (=> b!4876370 m!5878714))

(declare-fun m!5878724 () Bool)

(assert (=> b!4876374 m!5878724))

(assert (=> b!4876375 m!5877236))

(assert (=> b!4876375 m!5878720))

(assert (=> b!4876375 m!5878716))

(assert (=> b!4876375 m!5878710))

(assert (=> b!4876375 m!5875822))

(assert (=> b!4876375 m!5877236))

(assert (=> b!4876375 m!5875822))

(declare-fun m!5878726 () Bool)

(assert (=> d!1566571 m!5878726))

(assert (=> d!1566571 m!5875710))

(assert (=> d!1566571 m!5878722))

(assert (=> d!1566571 m!5878712))

(declare-fun m!5878728 () Bool)

(assert (=> d!1566571 m!5878728))

(assert (=> d!1566571 m!5875822))

(assert (=> d!1566571 m!5875822))

(assert (=> d!1566571 m!5878712))

(declare-fun m!5878730 () Bool)

(assert (=> d!1566571 m!5878730))

(assert (=> b!4876372 m!5878722))

(assert (=> d!1565619 d!1566571))

(assert (=> b!4874640 d!1566175))

(assert (=> b!4874640 d!1565533))

(assert (=> b!4874640 d!1566515))

(declare-fun d!1566573 () Bool)

(assert (=> d!1566573 (= (get!19248 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))) (v!49737 (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> b!4874640 d!1566573))

(declare-fun b!4876377 () Bool)

(declare-fun res!2081605 () Bool)

(declare-fun e!3047955 () Bool)

(assert (=> b!4876377 (=> (not res!2081605) (not e!3047955))))

(declare-fun lt!1998206 () Option!13802)

(assert (=> b!4876377 (= res!2081605 (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1998206)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998206))))))))

(declare-fun bm!338523 () Bool)

(declare-fun call!338528 () Option!13802)

(assert (=> bm!338523 (= call!338528 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun d!1566575 () Bool)

(declare-fun e!3047954 () Bool)

(assert (=> d!1566575 e!3047954))

(declare-fun res!2081603 () Bool)

(assert (=> d!1566575 (=> res!2081603 e!3047954)))

(assert (=> d!1566575 (= res!2081603 (isEmpty!29998 lt!1998206))))

(declare-fun e!3047953 () Option!13802)

(assert (=> d!1566575 (= lt!1998206 e!3047953)))

(declare-fun c!829406 () Bool)

(assert (=> d!1566575 (= c!829406 (and ((_ is Cons!56008) rules!1164) ((_ is Nil!56008) (t!364440 rules!1164))))))

(declare-fun lt!1998207 () Unit!146004)

(declare-fun lt!1998209 () Unit!146004)

(assert (=> d!1566575 (= lt!1998207 lt!1998209)))

(assert (=> d!1566575 (isPrefix!4772 (list!17533 (_2!33245 (v!49734 lt!1997269))) (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1566575 (= lt!1998209 (lemmaIsPrefixRefl!3169 (list!17533 (_2!33245 (v!49734 lt!1997269))) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(assert (=> d!1566575 (rulesValidInductive!3027 thiss!11460 rules!1164)))

(assert (=> d!1566575 (= (maxPrefix!4554 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))) lt!1998206)))

(declare-fun b!4876378 () Bool)

(assert (=> b!4876378 (= e!3047954 e!3047955)))

(declare-fun res!2081600 () Bool)

(assert (=> b!4876378 (=> (not res!2081600) (not e!3047955))))

(assert (=> b!4876378 (= res!2081600 (isDefined!10861 lt!1998206))))

(declare-fun b!4876379 () Bool)

(assert (=> b!4876379 (= e!3047955 (contains!19406 rules!1164 (rule!11198 (_1!33248 (get!19248 lt!1998206)))))))

(declare-fun b!4876380 () Bool)

(declare-fun lt!1998205 () Option!13802)

(declare-fun lt!1998208 () Option!13802)

(assert (=> b!4876380 (= e!3047953 (ite (and ((_ is None!13801) lt!1998205) ((_ is None!13801) lt!1998208)) None!13801 (ite ((_ is None!13801) lt!1998208) lt!1998205 (ite ((_ is None!13801) lt!1998205) lt!1998208 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1998205))) (size!36930 (_1!33248 (v!49737 lt!1998208)))) lt!1998205 lt!1998208)))))))

(assert (=> b!4876380 (= lt!1998205 call!338528)))

(assert (=> b!4876380 (= lt!1998208 (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4876381 () Bool)

(declare-fun res!2081606 () Bool)

(assert (=> b!4876381 (=> (not res!2081606) (not e!3047955))))

(assert (=> b!4876381 (= res!2081606 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998206)))) (_2!33248 (get!19248 lt!1998206))) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))

(declare-fun b!4876382 () Bool)

(declare-fun res!2081601 () Bool)

(assert (=> b!4876382 (=> (not res!2081601) (not e!3047955))))

(assert (=> b!4876382 (= res!2081601 (< (size!36933 (_2!33248 (get!19248 lt!1998206))) (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997269))))))))

(declare-fun b!4876383 () Bool)

(declare-fun res!2081602 () Bool)

(assert (=> b!4876383 (=> (not res!2081602) (not e!3047955))))

(assert (=> b!4876383 (= res!2081602 (= (value!258510 (_1!33248 (get!19248 lt!1998206))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1998206)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998206)))))))))

(declare-fun b!4876384 () Bool)

(declare-fun res!2081604 () Bool)

(assert (=> b!4876384 (=> (not res!2081604) (not e!3047955))))

(assert (=> b!4876384 (= res!2081604 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998206)))) (originalCharacters!8371 (_1!33248 (get!19248 lt!1998206)))))))

(declare-fun b!4876385 () Bool)

(assert (=> b!4876385 (= e!3047953 call!338528)))

(assert (= (and d!1566575 c!829406) b!4876385))

(assert (= (and d!1566575 (not c!829406)) b!4876380))

(assert (= (or b!4876385 b!4876380) bm!338523))

(assert (= (and d!1566575 (not res!2081603)) b!4876378))

(assert (= (and b!4876378 res!2081600) b!4876384))

(assert (= (and b!4876384 res!2081604) b!4876382))

(assert (= (and b!4876382 res!2081601) b!4876381))

(assert (= (and b!4876381 res!2081606) b!4876383))

(assert (= (and b!4876383 res!2081602) b!4876377))

(assert (= (and b!4876377 res!2081605) b!4876379))

(declare-fun m!5878732 () Bool)

(assert (=> b!4876381 m!5878732))

(declare-fun m!5878734 () Bool)

(assert (=> b!4876381 m!5878734))

(assert (=> b!4876381 m!5878734))

(declare-fun m!5878736 () Bool)

(assert (=> b!4876381 m!5878736))

(assert (=> b!4876381 m!5878736))

(declare-fun m!5878738 () Bool)

(assert (=> b!4876381 m!5878738))

(declare-fun m!5878740 () Bool)

(assert (=> d!1566575 m!5878740))

(assert (=> d!1566575 m!5875522))

(assert (=> d!1566575 m!5875522))

(assert (=> d!1566575 m!5877618))

(assert (=> d!1566575 m!5875522))

(assert (=> d!1566575 m!5875522))

(assert (=> d!1566575 m!5877620))

(assert (=> d!1566575 m!5875710))

(assert (=> b!4876384 m!5878732))

(assert (=> b!4876384 m!5878734))

(assert (=> b!4876384 m!5878734))

(assert (=> b!4876384 m!5878736))

(declare-fun m!5878742 () Bool)

(assert (=> b!4876378 m!5878742))

(assert (=> b!4876383 m!5878732))

(declare-fun m!5878744 () Bool)

(assert (=> b!4876383 m!5878744))

(assert (=> b!4876383 m!5878744))

(declare-fun m!5878746 () Bool)

(assert (=> b!4876383 m!5878746))

(assert (=> b!4876379 m!5878732))

(declare-fun m!5878748 () Bool)

(assert (=> b!4876379 m!5878748))

(assert (=> b!4876380 m!5875522))

(assert (=> b!4876380 m!5878506))

(assert (=> b!4876382 m!5878732))

(declare-fun m!5878750 () Bool)

(assert (=> b!4876382 m!5878750))

(assert (=> b!4876382 m!5875522))

(assert (=> b!4876382 m!5875598))

(assert (=> bm!338523 m!5875522))

(declare-fun m!5878752 () Bool)

(assert (=> bm!338523 m!5878752))

(assert (=> b!4876377 m!5878732))

(assert (=> b!4876377 m!5878734))

(assert (=> b!4876377 m!5878734))

(assert (=> b!4876377 m!5878736))

(assert (=> b!4876377 m!5878736))

(declare-fun m!5878754 () Bool)

(assert (=> b!4876377 m!5878754))

(assert (=> b!4874640 d!1566575))

(declare-fun d!1566577 () Bool)

(declare-fun lt!1998210 () Int)

(assert (=> d!1566577 (>= lt!1998210 0)))

(declare-fun e!3047956 () Int)

(assert (=> d!1566577 (= lt!1998210 e!3047956)))

(declare-fun c!829407 () Bool)

(assert (=> d!1566577 (= c!829407 ((_ is Nil!56007) (_2!33247 lt!1997494)))))

(assert (=> d!1566577 (= (size!36933 (_2!33247 lt!1997494)) lt!1998210)))

(declare-fun b!4876386 () Bool)

(assert (=> b!4876386 (= e!3047956 0)))

(declare-fun b!4876387 () Bool)

(assert (=> b!4876387 (= e!3047956 (+ 1 (size!36933 (t!364439 (_2!33247 lt!1997494)))))))

(assert (= (and d!1566577 c!829407) b!4876386))

(assert (= (and d!1566577 (not c!829407)) b!4876387))

(declare-fun m!5878756 () Bool)

(assert (=> b!4876387 m!5878756))

(assert (=> b!4874829 d!1566577))

(assert (=> b!4874829 d!1565693))

(assert (=> b!4874607 d!1566479))

(assert (=> b!4874607 d!1566481))

(declare-fun d!1566579 () Bool)

(assert (=> d!1566579 (= (isEmpty!29994 (_1!33247 lt!1997429)) ((_ is Nil!56009) (_1!33247 lt!1997429)))))

(assert (=> b!4874694 d!1566579))

(declare-fun d!1566581 () Bool)

(declare-fun c!829408 () Bool)

(assert (=> d!1566581 (= c!829408 ((_ is Node!14601) (left!40681 (left!40681 (c!828991 input!585)))))))

(declare-fun e!3047957 () Bool)

(assert (=> d!1566581 (= (inv!71943 (left!40681 (left!40681 (c!828991 input!585)))) e!3047957)))

(declare-fun b!4876388 () Bool)

(assert (=> b!4876388 (= e!3047957 (inv!71947 (left!40681 (left!40681 (c!828991 input!585)))))))

(declare-fun b!4876389 () Bool)

(declare-fun e!3047958 () Bool)

(assert (=> b!4876389 (= e!3047957 e!3047958)))

(declare-fun res!2081607 () Bool)

(assert (=> b!4876389 (= res!2081607 (not ((_ is Leaf!24336) (left!40681 (left!40681 (c!828991 input!585))))))))

(assert (=> b!4876389 (=> res!2081607 e!3047958)))

(declare-fun b!4876390 () Bool)

(assert (=> b!4876390 (= e!3047958 (inv!71948 (left!40681 (left!40681 (c!828991 input!585)))))))

(assert (= (and d!1566581 c!829408) b!4876388))

(assert (= (and d!1566581 (not c!829408)) b!4876389))

(assert (= (and b!4876389 (not res!2081607)) b!4876390))

(declare-fun m!5878758 () Bool)

(assert (=> b!4876388 m!5878758))

(declare-fun m!5878760 () Bool)

(assert (=> b!4876390 m!5878760))

(assert (=> b!4874944 d!1566581))

(declare-fun d!1566583 () Bool)

(declare-fun c!829409 () Bool)

(assert (=> d!1566583 (= c!829409 ((_ is Node!14601) (right!41011 (left!40681 (c!828991 input!585)))))))

(declare-fun e!3047959 () Bool)

(assert (=> d!1566583 (= (inv!71943 (right!41011 (left!40681 (c!828991 input!585)))) e!3047959)))

(declare-fun b!4876391 () Bool)

(assert (=> b!4876391 (= e!3047959 (inv!71947 (right!41011 (left!40681 (c!828991 input!585)))))))

(declare-fun b!4876392 () Bool)

(declare-fun e!3047960 () Bool)

(assert (=> b!4876392 (= e!3047959 e!3047960)))

(declare-fun res!2081608 () Bool)

(assert (=> b!4876392 (= res!2081608 (not ((_ is Leaf!24336) (right!41011 (left!40681 (c!828991 input!585))))))))

(assert (=> b!4876392 (=> res!2081608 e!3047960)))

(declare-fun b!4876393 () Bool)

(assert (=> b!4876393 (= e!3047960 (inv!71948 (right!41011 (left!40681 (c!828991 input!585)))))))

(assert (= (and d!1566583 c!829409) b!4876391))

(assert (= (and d!1566583 (not c!829409)) b!4876392))

(assert (= (and b!4876392 (not res!2081608)) b!4876393))

(declare-fun m!5878762 () Bool)

(assert (=> b!4876391 m!5878762))

(declare-fun m!5878764 () Bool)

(assert (=> b!4876393 m!5878764))

(assert (=> b!4874944 d!1566583))

(declare-fun b!4876395 () Bool)

(declare-fun res!2081612 () Bool)

(declare-fun e!3047963 () Bool)

(assert (=> b!4876395 (=> (not res!2081612) (not e!3047963))))

(assert (=> b!4876395 (= res!2081612 (= (head!10419 lt!1997418) (head!10419 lt!1997417)))))

(declare-fun b!4876397 () Bool)

(declare-fun e!3047962 () Bool)

(assert (=> b!4876397 (= e!3047962 (>= (size!36933 lt!1997417) (size!36933 lt!1997418)))))

(declare-fun d!1566585 () Bool)

(assert (=> d!1566585 e!3047962))

(declare-fun res!2081610 () Bool)

(assert (=> d!1566585 (=> res!2081610 e!3047962)))

(declare-fun lt!1998211 () Bool)

(assert (=> d!1566585 (= res!2081610 (not lt!1998211))))

(declare-fun e!3047961 () Bool)

(assert (=> d!1566585 (= lt!1998211 e!3047961)))

(declare-fun res!2081609 () Bool)

(assert (=> d!1566585 (=> res!2081609 e!3047961)))

(assert (=> d!1566585 (= res!2081609 ((_ is Nil!56007) lt!1997418))))

(assert (=> d!1566585 (= (isPrefix!4772 lt!1997418 lt!1997417) lt!1998211)))

(declare-fun b!4876394 () Bool)

(assert (=> b!4876394 (= e!3047961 e!3047963)))

(declare-fun res!2081611 () Bool)

(assert (=> b!4876394 (=> (not res!2081611) (not e!3047963))))

(assert (=> b!4876394 (= res!2081611 (not ((_ is Nil!56007) lt!1997417)))))

(declare-fun b!4876396 () Bool)

(assert (=> b!4876396 (= e!3047963 (isPrefix!4772 (tail!9565 lt!1997418) (tail!9565 lt!1997417)))))

(assert (= (and d!1566585 (not res!2081609)) b!4876394))

(assert (= (and b!4876394 res!2081611) b!4876395))

(assert (= (and b!4876395 res!2081612) b!4876396))

(assert (= (and d!1566585 (not res!2081610)) b!4876397))

(declare-fun m!5878766 () Bool)

(assert (=> b!4876395 m!5878766))

(declare-fun m!5878768 () Bool)

(assert (=> b!4876395 m!5878768))

(declare-fun m!5878770 () Bool)

(assert (=> b!4876397 m!5878770))

(declare-fun m!5878772 () Bool)

(assert (=> b!4876397 m!5878772))

(declare-fun m!5878774 () Bool)

(assert (=> b!4876396 m!5878774))

(declare-fun m!5878776 () Bool)

(assert (=> b!4876396 m!5878776))

(assert (=> b!4876396 m!5878774))

(assert (=> b!4876396 m!5878776))

(declare-fun m!5878778 () Bool)

(assert (=> b!4876396 m!5878778))

(assert (=> d!1565635 d!1566585))

(assert (=> d!1565635 d!1565533))

(assert (=> d!1565635 d!1566179))

(declare-fun d!1566587 () Bool)

(assert (=> d!1566587 (isPrefix!4772 lt!1997418 lt!1997417)))

(declare-fun lt!1998212 () Unit!146004)

(assert (=> d!1566587 (= lt!1998212 (choose!35632 lt!1997418 lt!1997417))))

(assert (=> d!1566587 (= (lemmaIsPrefixRefl!3169 lt!1997418 lt!1997417) lt!1998212)))

(declare-fun bs!1175098 () Bool)

(assert (= bs!1175098 d!1566587))

(assert (=> bs!1175098 m!5875906))

(declare-fun m!5878780 () Bool)

(assert (=> bs!1175098 m!5878780))

(assert (=> d!1565635 d!1566587))

(declare-fun d!1566589 () Bool)

(assert (=> d!1566589 (= (isDefined!10861 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269))))) (not (isEmpty!29998 (maxPrefixZipper!569 thiss!11460 rules!1164 (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(declare-fun bs!1175099 () Bool)

(assert (= bs!1175099 d!1566589))

(assert (=> bs!1175099 m!5875886))

(declare-fun m!5878782 () Bool)

(assert (=> bs!1175099 m!5878782))

(assert (=> d!1565635 d!1566589))

(assert (=> d!1565635 d!1565679))

(assert (=> d!1565635 d!1566041))

(declare-fun d!1566591 () Bool)

(declare-fun lt!1998213 () Int)

(assert (=> d!1566591 (>= lt!1998213 0)))

(declare-fun e!3047964 () Int)

(assert (=> d!1566591 (= lt!1998213 e!3047964)))

(declare-fun c!829410 () Bool)

(assert (=> d!1566591 (= c!829410 ((_ is Nil!56007) lt!1997410))))

(assert (=> d!1566591 (= (size!36933 lt!1997410) lt!1998213)))

(declare-fun b!4876398 () Bool)

(assert (=> b!4876398 (= e!3047964 0)))

(declare-fun b!4876399 () Bool)

(assert (=> b!4876399 (= e!3047964 (+ 1 (size!36933 (t!364439 lt!1997410))))))

(assert (= (and d!1566591 c!829410) b!4876398))

(assert (= (and d!1566591 (not c!829410)) b!4876399))

(declare-fun m!5878784 () Bool)

(assert (=> b!4876399 m!5878784))

(assert (=> b!4874632 d!1566591))

(assert (=> b!4874632 d!1566513))

(assert (=> b!4874632 d!1565693))

(declare-fun d!1566593 () Bool)

(assert (=> d!1566593 (= (height!1937 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) (ite ((_ is Empty!14602) (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) 0 (ite ((_ is Leaf!24337) (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) 1 (cheight!14813 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(assert (=> b!4874655 d!1566593))

(declare-fun d!1566595 () Bool)

(assert (=> d!1566595 (= (height!1937 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) (ite ((_ is Empty!14602) (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) 0 (ite ((_ is Leaf!24337) (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) 1 (cheight!14813 (right!41012 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(assert (=> b!4874655 d!1566595))

(declare-fun b!4876402 () Bool)

(declare-fun e!3047966 () List!56131)

(assert (=> b!4876402 (= e!3047966 (list!17539 (xs!17909 (c!828991 (_2!33245 (get!19247 lt!1997360))))))))

(declare-fun b!4876400 () Bool)

(declare-fun e!3047965 () List!56131)

(assert (=> b!4876400 (= e!3047965 Nil!56007)))

(declare-fun d!1566597 () Bool)

(declare-fun c!829411 () Bool)

(assert (=> d!1566597 (= c!829411 ((_ is Empty!14601) (c!828991 (_2!33245 (get!19247 lt!1997360)))))))

(assert (=> d!1566597 (= (list!17535 (c!828991 (_2!33245 (get!19247 lt!1997360)))) e!3047965)))

(declare-fun b!4876401 () Bool)

(assert (=> b!4876401 (= e!3047965 e!3047966)))

(declare-fun c!829412 () Bool)

(assert (=> b!4876401 (= c!829412 ((_ is Leaf!24336) (c!828991 (_2!33245 (get!19247 lt!1997360)))))))

(declare-fun b!4876403 () Bool)

(assert (=> b!4876403 (= e!3047966 (++!12201 (list!17535 (left!40681 (c!828991 (_2!33245 (get!19247 lt!1997360))))) (list!17535 (right!41011 (c!828991 (_2!33245 (get!19247 lt!1997360)))))))))

(assert (= (and d!1566597 c!829411) b!4876400))

(assert (= (and d!1566597 (not c!829411)) b!4876401))

(assert (= (and b!4876401 c!829412) b!4876402))

(assert (= (and b!4876401 (not c!829412)) b!4876403))

(declare-fun m!5878786 () Bool)

(assert (=> b!4876402 m!5878786))

(declare-fun m!5878788 () Bool)

(assert (=> b!4876403 m!5878788))

(declare-fun m!5878790 () Bool)

(assert (=> b!4876403 m!5878790))

(assert (=> b!4876403 m!5878788))

(assert (=> b!4876403 m!5878790))

(declare-fun m!5878792 () Bool)

(assert (=> b!4876403 m!5878792))

(assert (=> d!1565699 d!1566597))

(declare-fun d!1566599 () Bool)

(declare-fun lt!1998214 () Int)

(assert (=> d!1566599 (>= lt!1998214 0)))

(declare-fun e!3047967 () Int)

(assert (=> d!1566599 (= lt!1998214 e!3047967)))

(declare-fun c!829413 () Bool)

(assert (=> d!1566599 (= c!829413 ((_ is Nil!56007) (list!17535 (c!828991 input!585))))))

(assert (=> d!1566599 (= (size!36933 (list!17535 (c!828991 input!585))) lt!1998214)))

(declare-fun b!4876404 () Bool)

(assert (=> b!4876404 (= e!3047967 0)))

(declare-fun b!4876405 () Bool)

(assert (=> b!4876405 (= e!3047967 (+ 1 (size!36933 (t!364439 (list!17535 (c!828991 input!585))))))))

(assert (= (and d!1566599 c!829413) b!4876404))

(assert (= (and d!1566599 (not c!829413)) b!4876405))

(declare-fun m!5878794 () Bool)

(assert (=> b!4876405 m!5878794))

(assert (=> d!1565787 d!1566599))

(assert (=> d!1565787 d!1565651))

(declare-fun d!1566601 () Bool)

(assert (=> d!1566601 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))) (list!17535 (c!828991 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))))))

(declare-fun bs!1175100 () Bool)

(assert (= bs!1175100 d!1566601))

(declare-fun m!5878796 () Bool)

(assert (=> bs!1175100 m!5878796))

(assert (=> b!4874816 d!1566601))

(declare-fun d!1566603 () Bool)

(declare-fun lt!1998215 () BalanceConc!28644)

(assert (=> d!1566603 (= (list!17533 lt!1998215) (originalCharacters!8371 (_1!33248 (get!19248 lt!1997484))))))

(assert (=> d!1566603 (= lt!1998215 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))) (value!258510 (_1!33248 (get!19248 lt!1997484)))))))

(assert (=> d!1566603 (= (charsOf!5347 (_1!33248 (get!19248 lt!1997484))) lt!1998215)))

(declare-fun b_lambda!193909 () Bool)

(assert (=> (not b_lambda!193909) (not d!1566603)))

(declare-fun t!364569 () Bool)

(declare-fun tb!258273 () Bool)

(assert (=> (and b!4874320 (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364569) tb!258273))

(declare-fun b!4876406 () Bool)

(declare-fun e!3047968 () Bool)

(declare-fun tp!1371986 () Bool)

(assert (=> b!4876406 (= e!3047968 (and (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))) (value!258510 (_1!33248 (get!19248 lt!1997484)))))) tp!1371986))))

(declare-fun result!321504 () Bool)

(assert (=> tb!258273 (= result!321504 (and (inv!71944 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))) (value!258510 (_1!33248 (get!19248 lt!1997484))))) e!3047968))))

(assert (= tb!258273 b!4876406))

(declare-fun m!5878798 () Bool)

(assert (=> b!4876406 m!5878798))

(declare-fun m!5878800 () Bool)

(assert (=> tb!258273 m!5878800))

(assert (=> d!1566603 t!364569))

(declare-fun b_and!343459 () Bool)

(assert (= b_and!343411 (and (=> t!364569 result!321504) b_and!343459)))

(declare-fun tb!258275 () Bool)

(declare-fun t!364571 () Bool)

(assert (=> (and b!4874507 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364571) tb!258275))

(declare-fun result!321506 () Bool)

(assert (= result!321506 result!321504))

(assert (=> d!1566603 t!364571))

(declare-fun b_and!343461 () Bool)

(assert (= b_and!343413 (and (=> t!364571 result!321506) b_and!343461)))

(declare-fun t!364573 () Bool)

(declare-fun tb!258277 () Bool)

(assert (=> (and b!4874954 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364573) tb!258277))

(declare-fun result!321508 () Bool)

(assert (= result!321508 result!321504))

(assert (=> d!1566603 t!364573))

(declare-fun b_and!343463 () Bool)

(assert (= b_and!343415 (and (=> t!364573 result!321508) b_and!343463)))

(declare-fun m!5878802 () Bool)

(assert (=> d!1566603 m!5878802))

(declare-fun m!5878804 () Bool)

(assert (=> d!1566603 m!5878804))

(assert (=> b!4874816 d!1566603))

(assert (=> b!4874816 d!1566403))

(declare-fun d!1566605 () Bool)

(declare-fun lt!1998216 () Int)

(assert (=> d!1566605 (= lt!1998216 (size!36933 (list!17533 (_2!33246 lt!1997393))))))

(assert (=> d!1566605 (= lt!1998216 (size!36939 (c!828991 (_2!33246 lt!1997393))))))

(assert (=> d!1566605 (= (size!36931 (_2!33246 lt!1997393)) lt!1998216)))

(declare-fun bs!1175101 () Bool)

(assert (= bs!1175101 d!1566605))

(assert (=> bs!1175101 m!5875820))

(assert (=> bs!1175101 m!5875820))

(declare-fun m!5878806 () Bool)

(assert (=> bs!1175101 m!5878806))

(declare-fun m!5878808 () Bool)

(assert (=> bs!1175101 m!5878808))

(assert (=> b!4874587 d!1566605))

(declare-fun d!1566607 () Bool)

(declare-fun lt!1998217 () Int)

(assert (=> d!1566607 (= lt!1998217 (size!36933 (list!17533 (_2!33245 (v!49734 lt!1997296)))))))

(assert (=> d!1566607 (= lt!1998217 (size!36939 (c!828991 (_2!33245 (v!49734 lt!1997296)))))))

(assert (=> d!1566607 (= (size!36931 (_2!33245 (v!49734 lt!1997296))) lt!1998217)))

(declare-fun bs!1175102 () Bool)

(assert (= bs!1175102 d!1566607))

(assert (=> bs!1175102 m!5875822))

(assert (=> bs!1175102 m!5875822))

(assert (=> bs!1175102 m!5877228))

(declare-fun m!5878810 () Bool)

(assert (=> bs!1175102 m!5878810))

(assert (=> b!4874587 d!1566607))

(assert (=> b!4874659 d!1566593))

(assert (=> b!4874659 d!1566595))

(declare-fun d!1566609 () Bool)

(assert (=> d!1566609 (= (isEmpty!29994 (list!17537 (c!828992 lt!1997270))) ((_ is Nil!56009) (list!17537 (c!828992 lt!1997270))))))

(assert (=> d!1565739 d!1566609))

(assert (=> d!1565739 d!1565781))

(assert (=> d!1565739 d!1565775))

(declare-fun d!1566611 () Bool)

(assert (=> d!1566611 (= (max!0 (height!1936 (left!40681 (c!828991 input!585))) (height!1936 (right!41011 (c!828991 input!585)))) (ite (< (height!1936 (left!40681 (c!828991 input!585))) (height!1936 (right!41011 (c!828991 input!585)))) (height!1936 (right!41011 (c!828991 input!585))) (height!1936 (left!40681 (c!828991 input!585)))))))

(assert (=> b!4874703 d!1566611))

(assert (=> b!4874703 d!1566479))

(assert (=> b!4874703 d!1566481))

(declare-fun d!1566613 () Bool)

(declare-fun res!2081613 () Bool)

(declare-fun e!3047969 () Bool)

(assert (=> d!1566613 (=> (not res!2081613) (not e!3047969))))

(assert (=> d!1566613 (= res!2081613 (<= (size!36933 (list!17539 (xs!17909 (right!41011 (c!828991 input!585))))) 512))))

(assert (=> d!1566613 (= (inv!71948 (right!41011 (c!828991 input!585))) e!3047969)))

(declare-fun b!4876407 () Bool)

(declare-fun res!2081614 () Bool)

(assert (=> b!4876407 (=> (not res!2081614) (not e!3047969))))

(assert (=> b!4876407 (= res!2081614 (= (csize!29433 (right!41011 (c!828991 input!585))) (size!36933 (list!17539 (xs!17909 (right!41011 (c!828991 input!585)))))))))

(declare-fun b!4876408 () Bool)

(assert (=> b!4876408 (= e!3047969 (and (> (csize!29433 (right!41011 (c!828991 input!585))) 0) (<= (csize!29433 (right!41011 (c!828991 input!585))) 512)))))

(assert (= (and d!1566613 res!2081613) b!4876407))

(assert (= (and b!4876407 res!2081614) b!4876408))

(assert (=> d!1566613 m!5878698))

(assert (=> d!1566613 m!5878698))

(declare-fun m!5878812 () Bool)

(assert (=> d!1566613 m!5878812))

(assert (=> b!4876407 m!5878698))

(assert (=> b!4876407 m!5878698))

(assert (=> b!4876407 m!5878812))

(assert (=> b!4874878 d!1566613))

(declare-fun b!4876410 () Bool)

(declare-fun e!3047970 () List!56133)

(declare-fun e!3047971 () List!56133)

(assert (=> b!4876410 (= e!3047970 e!3047971)))

(declare-fun c!829415 () Bool)

(assert (=> b!4876410 (= c!829415 ((_ is Leaf!24337) (c!828992 lt!1997381)))))

(declare-fun b!4876411 () Bool)

(assert (=> b!4876411 (= e!3047971 (list!17541 (xs!17910 (c!828992 lt!1997381))))))

(declare-fun d!1566615 () Bool)

(declare-fun c!829414 () Bool)

(assert (=> d!1566615 (= c!829414 ((_ is Empty!14602) (c!828992 lt!1997381)))))

(assert (=> d!1566615 (= (list!17537 (c!828992 lt!1997381)) e!3047970)))

(declare-fun b!4876409 () Bool)

(assert (=> b!4876409 (= e!3047970 Nil!56009)))

(declare-fun b!4876412 () Bool)

(assert (=> b!4876412 (= e!3047971 (++!12204 (list!17537 (left!40682 (c!828992 lt!1997381))) (list!17537 (right!41012 (c!828992 lt!1997381)))))))

(assert (= (and d!1566615 c!829414) b!4876409))

(assert (= (and d!1566615 (not c!829414)) b!4876410))

(assert (= (and b!4876410 c!829415) b!4876411))

(assert (= (and b!4876410 (not c!829415)) b!4876412))

(declare-fun m!5878814 () Bool)

(assert (=> b!4876411 m!5878814))

(declare-fun m!5878816 () Bool)

(assert (=> b!4876412 m!5878816))

(declare-fun m!5878818 () Bool)

(assert (=> b!4876412 m!5878818))

(assert (=> b!4876412 m!5878816))

(assert (=> b!4876412 m!5878818))

(declare-fun m!5878820 () Bool)

(assert (=> b!4876412 m!5878820))

(assert (=> d!1565729 d!1566615))

(declare-fun d!1566617 () Bool)

(assert (=> d!1566617 (= (inv!71949 (xs!17909 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) (<= (size!36933 (innerList!14689 (xs!17909 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) 2147483647))))

(declare-fun bs!1175103 () Bool)

(assert (= bs!1175103 d!1566617))

(declare-fun m!5878822 () Bool)

(assert (=> bs!1175103 m!5878822))

(assert (=> b!4874972 d!1566617))

(assert (=> b!4874753 d!1566455))

(declare-fun d!1566619 () Bool)

(assert (=> d!1566619 (= (list!17533 (_2!33245 (get!19247 lt!1997447))) (list!17535 (c!828991 (_2!33245 (get!19247 lt!1997447)))))))

(declare-fun bs!1175104 () Bool)

(assert (= bs!1175104 d!1566619))

(declare-fun m!5878824 () Bool)

(assert (=> bs!1175104 m!5878824))

(assert (=> b!4874753 d!1566619))

(assert (=> b!4874753 d!1566557))

(assert (=> b!4874753 d!1565563))

(assert (=> b!4874753 d!1566555))

(assert (=> d!1565765 d!1565679))

(declare-fun d!1566621 () Bool)

(declare-fun res!2081615 () Bool)

(declare-fun e!3047972 () Bool)

(assert (=> d!1566621 (=> res!2081615 e!3047972)))

(assert (=> d!1566621 (= res!2081615 ((_ is Nil!56008) rules!1164))))

(assert (=> d!1566621 (= (forall!13055 rules!1164 lambda!243606) e!3047972)))

(declare-fun b!4876413 () Bool)

(declare-fun e!3047973 () Bool)

(assert (=> b!4876413 (= e!3047972 e!3047973)))

(declare-fun res!2081616 () Bool)

(assert (=> b!4876413 (=> (not res!2081616) (not e!3047973))))

(assert (=> b!4876413 (= res!2081616 (dynLambda!22515 lambda!243606 (h!62456 rules!1164)))))

(declare-fun b!4876414 () Bool)

(assert (=> b!4876414 (= e!3047973 (forall!13055 (t!364440 rules!1164) lambda!243606))))

(assert (= (and d!1566621 (not res!2081615)) b!4876413))

(assert (= (and b!4876413 res!2081616) b!4876414))

(declare-fun b_lambda!193911 () Bool)

(assert (=> (not b_lambda!193911) (not b!4876413)))

(declare-fun m!5878826 () Bool)

(assert (=> b!4876413 m!5878826))

(declare-fun m!5878828 () Bool)

(assert (=> b!4876414 m!5878828))

(assert (=> d!1565765 d!1566621))

(declare-fun d!1566623 () Bool)

(declare-fun lt!1998218 () Int)

(assert (=> d!1566623 (>= lt!1998218 0)))

(declare-fun e!3047974 () Int)

(assert (=> d!1566623 (= lt!1998218 e!3047974)))

(declare-fun c!829416 () Bool)

(assert (=> d!1566623 (= c!829416 ((_ is Nil!56007) (list!17535 (c!828991 (_2!33246 lt!1997274)))))))

(assert (=> d!1566623 (= (size!36933 (list!17535 (c!828991 (_2!33246 lt!1997274)))) lt!1998218)))

(declare-fun b!4876415 () Bool)

(assert (=> b!4876415 (= e!3047974 0)))

(declare-fun b!4876416 () Bool)

(assert (=> b!4876416 (= e!3047974 (+ 1 (size!36933 (t!364439 (list!17535 (c!828991 (_2!33246 lt!1997274)))))))))

(assert (= (and d!1566623 c!829416) b!4876415))

(assert (= (and d!1566623 (not c!829416)) b!4876416))

(declare-fun m!5878830 () Bool)

(assert (=> b!4876416 m!5878830))

(assert (=> d!1565779 d!1566623))

(assert (=> d!1565779 d!1565623))

(declare-fun b!4876417 () Bool)

(declare-fun e!3047976 () Bool)

(assert (=> b!4876417 (= e!3047976 (nullable!4547 (regex!8048 (h!62456 rules!1164))))))

(declare-fun b!4876418 () Bool)

(declare-fun e!3047978 () Bool)

(declare-fun e!3047977 () Bool)

(assert (=> b!4876418 (= e!3047978 e!3047977)))

(declare-fun res!2081623 () Bool)

(assert (=> b!4876418 (=> res!2081623 e!3047977)))

(declare-fun call!338529 () Bool)

(assert (=> b!4876418 (= res!2081623 call!338529)))

(declare-fun b!4876419 () Bool)

(declare-fun e!3047975 () Bool)

(declare-fun lt!1998219 () Bool)

(assert (=> b!4876419 (= e!3047975 (= lt!1998219 call!338529))))

(declare-fun b!4876420 () Bool)

(declare-fun e!3047980 () Bool)

(assert (=> b!4876420 (= e!3047975 e!3047980)))

(declare-fun c!829417 () Bool)

(assert (=> b!4876420 (= c!829417 ((_ is EmptyLang!13123) (regex!8048 (h!62456 rules!1164))))))

(declare-fun b!4876421 () Bool)

(declare-fun res!2081621 () Bool)

(declare-fun e!3047981 () Bool)

(assert (=> b!4876421 (=> res!2081621 e!3047981)))

(assert (=> b!4876421 (= res!2081621 (not ((_ is ElementMatch!13123) (regex!8048 (h!62456 rules!1164)))))))

(assert (=> b!4876421 (= e!3047980 e!3047981)))

(declare-fun b!4876422 () Bool)

(declare-fun e!3047979 () Bool)

(assert (=> b!4876422 (= e!3047979 (= (head!10419 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))) (c!828990 (regex!8048 (h!62456 rules!1164)))))))

(declare-fun b!4876423 () Bool)

(declare-fun res!2081620 () Bool)

(assert (=> b!4876423 (=> res!2081620 e!3047977)))

(assert (=> b!4876423 (= res!2081620 (not (isEmpty!30003 (tail!9565 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))))

(declare-fun b!4876424 () Bool)

(declare-fun res!2081618 () Bool)

(assert (=> b!4876424 (=> (not res!2081618) (not e!3047979))))

(assert (=> b!4876424 (= res!2081618 (not call!338529))))

(declare-fun b!4876425 () Bool)

(assert (=> b!4876425 (= e!3047977 (not (= (head!10419 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))) (c!828990 (regex!8048 (h!62456 rules!1164))))))))

(declare-fun b!4876426 () Bool)

(assert (=> b!4876426 (= e!3047981 e!3047978)))

(declare-fun res!2081619 () Bool)

(assert (=> b!4876426 (=> (not res!2081619) (not e!3047978))))

(assert (=> b!4876426 (= res!2081619 (not lt!1998219))))

(declare-fun b!4876427 () Bool)

(declare-fun res!2081617 () Bool)

(assert (=> b!4876427 (=> res!2081617 e!3047981)))

(assert (=> b!4876427 (= res!2081617 e!3047979)))

(declare-fun res!2081624 () Bool)

(assert (=> b!4876427 (=> (not res!2081624) (not e!3047979))))

(assert (=> b!4876427 (= res!2081624 lt!1998219)))

(declare-fun b!4876428 () Bool)

(assert (=> b!4876428 (= e!3047976 (matchR!6497 (derivativeStep!3871 (regex!8048 (h!62456 rules!1164)) (head!10419 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536))))) (tail!9565 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536))))))))

(declare-fun bm!338524 () Bool)

(assert (=> bm!338524 (= call!338529 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(declare-fun d!1566625 () Bool)

(assert (=> d!1566625 e!3047975))

(declare-fun c!829418 () Bool)

(assert (=> d!1566625 (= c!829418 ((_ is EmptyExpr!13123) (regex!8048 (h!62456 rules!1164))))))

(assert (=> d!1566625 (= lt!1998219 e!3047976)))

(declare-fun c!829419 () Bool)

(assert (=> d!1566625 (= c!829419 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))))))

(assert (=> d!1566625 (validRegex!5874 (regex!8048 (h!62456 rules!1164)))))

(assert (=> d!1566625 (= (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536)))) lt!1998219)))

(declare-fun b!4876429 () Bool)

(declare-fun res!2081622 () Bool)

(assert (=> b!4876429 (=> (not res!2081622) (not e!3047979))))

(assert (=> b!4876429 (= res!2081622 (isEmpty!30003 (tail!9565 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997536 lt!1997536 (size!36933 lt!1997536))))))))

(declare-fun b!4876430 () Bool)

(assert (=> b!4876430 (= e!3047980 (not lt!1998219))))

(assert (= (and d!1566625 c!829419) b!4876417))

(assert (= (and d!1566625 (not c!829419)) b!4876428))

(assert (= (and d!1566625 c!829418) b!4876419))

(assert (= (and d!1566625 (not c!829418)) b!4876420))

(assert (= (and b!4876420 c!829417) b!4876430))

(assert (= (and b!4876420 (not c!829417)) b!4876421))

(assert (= (and b!4876421 (not res!2081621)) b!4876427))

(assert (= (and b!4876427 res!2081624) b!4876424))

(assert (= (and b!4876424 res!2081618) b!4876429))

(assert (= (and b!4876429 res!2081622) b!4876422))

(assert (= (and b!4876427 (not res!2081617)) b!4876426))

(assert (= (and b!4876426 res!2081619) b!4876418))

(assert (= (and b!4876418 (not res!2081623)) b!4876423))

(assert (= (and b!4876423 (not res!2081620)) b!4876425))

(assert (= (or b!4876419 b!4876418 b!4876424) bm!338524))

(declare-fun m!5878832 () Bool)

(assert (=> b!4876422 m!5878832))

(declare-fun m!5878834 () Bool)

(assert (=> b!4876423 m!5878834))

(assert (=> b!4876423 m!5878834))

(declare-fun m!5878836 () Bool)

(assert (=> b!4876423 m!5878836))

(assert (=> b!4876417 m!5877878))

(assert (=> b!4876425 m!5878832))

(assert (=> d!1566625 m!5876228))

(assert (=> d!1566625 m!5877890))

(assert (=> b!4876429 m!5878834))

(assert (=> b!4876429 m!5878834))

(assert (=> b!4876429 m!5878836))

(assert (=> b!4876428 m!5878832))

(assert (=> b!4876428 m!5878832))

(declare-fun m!5878838 () Bool)

(assert (=> b!4876428 m!5878838))

(assert (=> b!4876428 m!5878834))

(assert (=> b!4876428 m!5878838))

(assert (=> b!4876428 m!5878834))

(declare-fun m!5878840 () Bool)

(assert (=> b!4876428 m!5878840))

(assert (=> bm!338524 m!5876228))

(assert (=> b!4874858 d!1566625))

(assert (=> b!4874858 d!1566213))

(assert (=> b!4874858 d!1566309))

(assert (=> b!4874858 d!1566307))

(declare-fun d!1566627 () Bool)

(declare-fun lt!1998220 () Int)

(assert (=> d!1566627 (>= lt!1998220 0)))

(declare-fun e!3047982 () Int)

(assert (=> d!1566627 (= lt!1998220 e!3047982)))

(declare-fun c!829420 () Bool)

(assert (=> d!1566627 (= c!829420 ((_ is Nil!56007) (_2!33248 (get!19248 lt!1997489))))))

(assert (=> d!1566627 (= (size!36933 (_2!33248 (get!19248 lt!1997489))) lt!1998220)))

(declare-fun b!4876431 () Bool)

(assert (=> b!4876431 (= e!3047982 0)))

(declare-fun b!4876432 () Bool)

(assert (=> b!4876432 (= e!3047982 (+ 1 (size!36933 (t!364439 (_2!33248 (get!19248 lt!1997489))))))))

(assert (= (and d!1566627 c!829420) b!4876431))

(assert (= (and d!1566627 (not c!829420)) b!4876432))

(declare-fun m!5878842 () Bool)

(assert (=> b!4876432 m!5878842))

(assert (=> b!4874823 d!1566627))

(assert (=> b!4874823 d!1566415))

(assert (=> b!4874823 d!1565785))

(declare-fun d!1566629 () Bool)

(declare-fun lt!1998221 () Int)

(assert (=> d!1566629 (>= lt!1998221 0)))

(declare-fun e!3047983 () Int)

(assert (=> d!1566629 (= lt!1998221 e!3047983)))

(declare-fun c!829421 () Bool)

(assert (=> d!1566629 (= c!829421 ((_ is Nil!56009) (_1!33247 lt!1997494)))))

(assert (=> d!1566629 (= (size!36938 (_1!33247 lt!1997494)) lt!1998221)))

(declare-fun b!4876433 () Bool)

(assert (=> b!4876433 (= e!3047983 0)))

(declare-fun b!4876434 () Bool)

(assert (=> b!4876434 (= e!3047983 (+ 1 (size!36938 (t!364441 (_1!33247 lt!1997494)))))))

(assert (= (and d!1566629 c!829421) b!4876433))

(assert (= (and d!1566629 (not c!829421)) b!4876434))

(declare-fun m!5878844 () Bool)

(assert (=> b!4876434 m!5878844))

(assert (=> d!1565735 d!1566629))

(assert (=> d!1565735 d!1566575))

(declare-fun d!1566631 () Bool)

(declare-fun lt!1998222 () Int)

(assert (=> d!1566631 (>= lt!1998222 0)))

(declare-fun e!3047984 () Int)

(assert (=> d!1566631 (= lt!1998222 e!3047984)))

(declare-fun c!829422 () Bool)

(assert (=> d!1566631 (= c!829422 ((_ is Nil!56007) (t!364439 (list!17533 input!585))))))

(assert (=> d!1566631 (= (size!36933 (t!364439 (list!17533 input!585))) lt!1998222)))

(declare-fun b!4876435 () Bool)

(assert (=> b!4876435 (= e!3047984 0)))

(declare-fun b!4876436 () Bool)

(assert (=> b!4876436 (= e!3047984 (+ 1 (size!36933 (t!364439 (t!364439 (list!17533 input!585))))))))

(assert (= (and d!1566631 c!829422) b!4876435))

(assert (= (and d!1566631 (not c!829422)) b!4876436))

(declare-fun m!5878846 () Bool)

(assert (=> b!4876436 m!5878846))

(assert (=> b!4874928 d!1566631))

(declare-fun b!4876437 () Bool)

(declare-fun res!2081630 () Bool)

(declare-fun e!3047987 () Bool)

(assert (=> b!4876437 (=> (not res!2081630) (not e!3047987))))

(declare-fun lt!1998224 () Option!13802)

(assert (=> b!4876437 (= res!2081630 (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1998224)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998224))))))))

(declare-fun bm!338525 () Bool)

(declare-fun call!338530 () Option!13802)

(assert (=> bm!338525 (= call!338530 (maxPrefixOneRule!3496 thiss!11460 (h!62456 (t!364440 rules!1164)) lt!1997273))))

(declare-fun d!1566633 () Bool)

(declare-fun e!3047986 () Bool)

(assert (=> d!1566633 e!3047986))

(declare-fun res!2081628 () Bool)

(assert (=> d!1566633 (=> res!2081628 e!3047986)))

(assert (=> d!1566633 (= res!2081628 (isEmpty!29998 lt!1998224))))

(declare-fun e!3047985 () Option!13802)

(assert (=> d!1566633 (= lt!1998224 e!3047985)))

(declare-fun c!829423 () Bool)

(assert (=> d!1566633 (= c!829423 (and ((_ is Cons!56008) (t!364440 rules!1164)) ((_ is Nil!56008) (t!364440 (t!364440 rules!1164)))))))

(declare-fun lt!1998225 () Unit!146004)

(declare-fun lt!1998227 () Unit!146004)

(assert (=> d!1566633 (= lt!1998225 lt!1998227)))

(assert (=> d!1566633 (isPrefix!4772 lt!1997273 lt!1997273)))

(assert (=> d!1566633 (= lt!1998227 (lemmaIsPrefixRefl!3169 lt!1997273 lt!1997273))))

(assert (=> d!1566633 (rulesValidInductive!3027 thiss!11460 (t!364440 rules!1164))))

(assert (=> d!1566633 (= (maxPrefix!4554 thiss!11460 (t!364440 rules!1164) lt!1997273) lt!1998224)))

(declare-fun b!4876438 () Bool)

(assert (=> b!4876438 (= e!3047986 e!3047987)))

(declare-fun res!2081625 () Bool)

(assert (=> b!4876438 (=> (not res!2081625) (not e!3047987))))

(assert (=> b!4876438 (= res!2081625 (isDefined!10861 lt!1998224))))

(declare-fun b!4876439 () Bool)

(assert (=> b!4876439 (= e!3047987 (contains!19406 (t!364440 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1998224)))))))

(declare-fun b!4876440 () Bool)

(declare-fun lt!1998223 () Option!13802)

(declare-fun lt!1998226 () Option!13802)

(assert (=> b!4876440 (= e!3047985 (ite (and ((_ is None!13801) lt!1998223) ((_ is None!13801) lt!1998226)) None!13801 (ite ((_ is None!13801) lt!1998226) lt!1998223 (ite ((_ is None!13801) lt!1998223) lt!1998226 (ite (>= (size!36930 (_1!33248 (v!49737 lt!1998223))) (size!36930 (_1!33248 (v!49737 lt!1998226)))) lt!1998223 lt!1998226)))))))

(assert (=> b!4876440 (= lt!1998223 call!338530)))

(assert (=> b!4876440 (= lt!1998226 (maxPrefix!4554 thiss!11460 (t!364440 (t!364440 rules!1164)) lt!1997273))))

(declare-fun b!4876441 () Bool)

(declare-fun res!2081631 () Bool)

(assert (=> b!4876441 (=> (not res!2081631) (not e!3047987))))

(assert (=> b!4876441 (= res!2081631 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998224)))) (_2!33248 (get!19248 lt!1998224))) lt!1997273))))

(declare-fun b!4876442 () Bool)

(declare-fun res!2081626 () Bool)

(assert (=> b!4876442 (=> (not res!2081626) (not e!3047987))))

(assert (=> b!4876442 (= res!2081626 (< (size!36933 (_2!33248 (get!19248 lt!1998224))) (size!36933 lt!1997273)))))

(declare-fun b!4876443 () Bool)

(declare-fun res!2081627 () Bool)

(assert (=> b!4876443 (=> (not res!2081627) (not e!3047987))))

(assert (=> b!4876443 (= res!2081627 (= (value!258510 (_1!33248 (get!19248 lt!1998224))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1998224)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998224)))))))))

(declare-fun b!4876444 () Bool)

(declare-fun res!2081629 () Bool)

(assert (=> b!4876444 (=> (not res!2081629) (not e!3047987))))

(assert (=> b!4876444 (= res!2081629 (= (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998224)))) (originalCharacters!8371 (_1!33248 (get!19248 lt!1998224)))))))

(declare-fun b!4876445 () Bool)

(assert (=> b!4876445 (= e!3047985 call!338530)))

(assert (= (and d!1566633 c!829423) b!4876445))

(assert (= (and d!1566633 (not c!829423)) b!4876440))

(assert (= (or b!4876445 b!4876440) bm!338525))

(assert (= (and d!1566633 (not res!2081628)) b!4876438))

(assert (= (and b!4876438 res!2081625) b!4876444))

(assert (= (and b!4876444 res!2081629) b!4876442))

(assert (= (and b!4876442 res!2081626) b!4876441))

(assert (= (and b!4876441 res!2081631) b!4876443))

(assert (= (and b!4876443 res!2081627) b!4876437))

(assert (= (and b!4876437 res!2081630) b!4876439))

(declare-fun m!5878848 () Bool)

(assert (=> b!4876441 m!5878848))

(declare-fun m!5878850 () Bool)

(assert (=> b!4876441 m!5878850))

(assert (=> b!4876441 m!5878850))

(declare-fun m!5878852 () Bool)

(assert (=> b!4876441 m!5878852))

(assert (=> b!4876441 m!5878852))

(declare-fun m!5878854 () Bool)

(assert (=> b!4876441 m!5878854))

(declare-fun m!5878856 () Bool)

(assert (=> d!1566633 m!5878856))

(assert (=> d!1566633 m!5876118))

(assert (=> d!1566633 m!5876120))

(assert (=> d!1566633 m!5876014))

(assert (=> b!4876444 m!5878848))

(assert (=> b!4876444 m!5878850))

(assert (=> b!4876444 m!5878850))

(assert (=> b!4876444 m!5878852))

(declare-fun m!5878858 () Bool)

(assert (=> b!4876438 m!5878858))

(assert (=> b!4876443 m!5878848))

(declare-fun m!5878860 () Bool)

(assert (=> b!4876443 m!5878860))

(assert (=> b!4876443 m!5878860))

(declare-fun m!5878862 () Bool)

(assert (=> b!4876443 m!5878862))

(assert (=> b!4876439 m!5878848))

(declare-fun m!5878864 () Bool)

(assert (=> b!4876439 m!5878864))

(declare-fun m!5878866 () Bool)

(assert (=> b!4876440 m!5878866))

(assert (=> b!4876442 m!5878848))

(declare-fun m!5878868 () Bool)

(assert (=> b!4876442 m!5878868))

(assert (=> b!4876442 m!5875626))

(declare-fun m!5878870 () Bool)

(assert (=> bm!338525 m!5878870))

(assert (=> b!4876437 m!5878848))

(assert (=> b!4876437 m!5878850))

(assert (=> b!4876437 m!5878850))

(assert (=> b!4876437 m!5878852))

(assert (=> b!4876437 m!5878852))

(declare-fun m!5878872 () Bool)

(assert (=> b!4876437 m!5878872))

(assert (=> b!4874812 d!1566633))

(declare-fun b!4876448 () Bool)

(declare-fun e!3047989 () List!56131)

(assert (=> b!4876448 (= e!3047989 (list!17539 (xs!17909 (c!828991 (_2!33246 lt!1997295)))))))

(declare-fun b!4876446 () Bool)

(declare-fun e!3047988 () List!56131)

(assert (=> b!4876446 (= e!3047988 Nil!56007)))

(declare-fun d!1566635 () Bool)

(declare-fun c!829424 () Bool)

(assert (=> d!1566635 (= c!829424 ((_ is Empty!14601) (c!828991 (_2!33246 lt!1997295))))))

(assert (=> d!1566635 (= (list!17535 (c!828991 (_2!33246 lt!1997295))) e!3047988)))

(declare-fun b!4876447 () Bool)

(assert (=> b!4876447 (= e!3047988 e!3047989)))

(declare-fun c!829425 () Bool)

(assert (=> b!4876447 (= c!829425 ((_ is Leaf!24336) (c!828991 (_2!33246 lt!1997295))))))

(declare-fun b!4876449 () Bool)

(assert (=> b!4876449 (= e!3047989 (++!12201 (list!17535 (left!40681 (c!828991 (_2!33246 lt!1997295)))) (list!17535 (right!41011 (c!828991 (_2!33246 lt!1997295))))))))

(assert (= (and d!1566635 c!829424) b!4876446))

(assert (= (and d!1566635 (not c!829424)) b!4876447))

(assert (= (and b!4876447 c!829425) b!4876448))

(assert (= (and b!4876447 (not c!829425)) b!4876449))

(declare-fun m!5878874 () Bool)

(assert (=> b!4876448 m!5878874))

(declare-fun m!5878876 () Bool)

(assert (=> b!4876449 m!5878876))

(declare-fun m!5878878 () Bool)

(assert (=> b!4876449 m!5878878))

(assert (=> b!4876449 m!5878876))

(assert (=> b!4876449 m!5878878))

(declare-fun m!5878880 () Bool)

(assert (=> b!4876449 m!5878880))

(assert (=> d!1565755 d!1566635))

(declare-fun d!1566637 () Bool)

(assert (=> d!1566637 (= (list!17541 (xs!17910 (c!828992 lt!1997270))) (innerList!14690 (xs!17910 (c!828992 lt!1997270))))))

(assert (=> b!4874915 d!1566637))

(declare-fun b!4876450 () Bool)

(declare-fun e!3047990 () Bool)

(declare-fun e!3047995 () Bool)

(assert (=> b!4876450 (= e!3047990 e!3047995)))

(declare-fun res!2081632 () Bool)

(assert (=> b!4876450 (=> (not res!2081632) (not e!3047995))))

(declare-fun lt!1998229 () Option!13801)

(assert (=> b!4876450 (= res!2081632 (= (_1!33245 (get!19247 lt!1998229)) (_1!33248 (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585))))))))

(declare-fun b!4876451 () Bool)

(declare-fun e!3047992 () Bool)

(declare-fun e!3047991 () Bool)

(assert (=> b!4876451 (= e!3047992 e!3047991)))

(declare-fun res!2081637 () Bool)

(assert (=> b!4876451 (=> (not res!2081637) (not e!3047991))))

(assert (=> b!4876451 (= res!2081637 (= (_1!33245 (get!19247 lt!1998229)) (_1!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585))))))))

(declare-fun b!4876452 () Bool)

(assert (=> b!4876452 (= e!3047991 (= (list!17533 (_2!33245 (get!19247 lt!1998229))) (_2!33248 (get!19248 (maxPrefixZipper!569 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585))))))))

(declare-fun b!4876453 () Bool)

(declare-fun res!2081636 () Bool)

(declare-fun e!3047993 () Bool)

(assert (=> b!4876453 (=> (not res!2081636) (not e!3047993))))

(assert (=> b!4876453 (= res!2081636 e!3047992)))

(declare-fun res!2081633 () Bool)

(assert (=> b!4876453 (=> res!2081633 e!3047992)))

(assert (=> b!4876453 (= res!2081633 (not (isDefined!10860 lt!1998229)))))

(declare-fun bm!338526 () Bool)

(declare-fun call!338531 () Option!13801)

(assert (=> bm!338526 (= call!338531 (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 (t!364440 (t!364440 rules!1164))) input!585))))

(declare-fun b!4876454 () Bool)

(assert (=> b!4876454 (= e!3047993 e!3047990)))

(declare-fun res!2081635 () Bool)

(assert (=> b!4876454 (=> res!2081635 e!3047990)))

(assert (=> b!4876454 (= res!2081635 (not (isDefined!10860 lt!1998229)))))

(declare-fun b!4876455 () Bool)

(declare-fun e!3047994 () Option!13801)

(declare-fun lt!1998232 () Option!13801)

(declare-fun lt!1998230 () Option!13801)

(assert (=> b!4876455 (= e!3047994 (ite (and ((_ is None!13800) lt!1998232) ((_ is None!13800) lt!1998230)) None!13800 (ite ((_ is None!13800) lt!1998230) lt!1998232 (ite ((_ is None!13800) lt!1998232) lt!1998230 (ite (>= (size!36930 (_1!33245 (v!49734 lt!1998232))) (size!36930 (_1!33245 (v!49734 lt!1998230)))) lt!1998232 lt!1998230)))))))

(assert (=> b!4876455 (= lt!1998232 call!338531)))

(assert (=> b!4876455 (= lt!1998230 (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 (t!364440 (t!364440 rules!1164))) input!585))))

(declare-fun b!4876457 () Bool)

(assert (=> b!4876457 (= e!3047994 call!338531)))

(declare-fun b!4876456 () Bool)

(assert (=> b!4876456 (= e!3047995 (= (list!17533 (_2!33245 (get!19247 lt!1998229))) (_2!33248 (get!19248 (maxPrefix!4554 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585))))))))

(declare-fun d!1566639 () Bool)

(assert (=> d!1566639 e!3047993))

(declare-fun res!2081634 () Bool)

(assert (=> d!1566639 (=> (not res!2081634) (not e!3047993))))

(assert (=> d!1566639 (= res!2081634 (= (isDefined!10860 lt!1998229) (isDefined!10861 (maxPrefixZipper!569 thiss!11460 (t!364440 (t!364440 rules!1164)) (list!17533 input!585)))))))

(assert (=> d!1566639 (= lt!1998229 e!3047994)))

(declare-fun c!829426 () Bool)

(assert (=> d!1566639 (= c!829426 (and ((_ is Cons!56008) (t!364440 (t!364440 rules!1164))) ((_ is Nil!56008) (t!364440 (t!364440 (t!364440 rules!1164))))))))

(declare-fun lt!1998231 () Unit!146004)

(declare-fun lt!1998228 () Unit!146004)

(assert (=> d!1566639 (= lt!1998231 lt!1998228)))

(declare-fun lt!1998234 () List!56131)

(declare-fun lt!1998233 () List!56131)

(assert (=> d!1566639 (isPrefix!4772 lt!1998234 lt!1998233)))

(assert (=> d!1566639 (= lt!1998228 (lemmaIsPrefixRefl!3169 lt!1998234 lt!1998233))))

(assert (=> d!1566639 (= lt!1998233 (list!17533 input!585))))

(assert (=> d!1566639 (= lt!1998234 (list!17533 input!585))))

(assert (=> d!1566639 (rulesValidInductive!3027 thiss!11460 (t!364440 (t!364440 rules!1164)))))

(assert (=> d!1566639 (= (maxPrefixZipperSequence!1239 thiss!11460 (t!364440 (t!364440 rules!1164)) input!585) lt!1998229)))

(assert (= (and d!1566639 c!829426) b!4876457))

(assert (= (and d!1566639 (not c!829426)) b!4876455))

(assert (= (or b!4876457 b!4876455) bm!338526))

(assert (= (and d!1566639 res!2081634) b!4876453))

(assert (= (and b!4876453 (not res!2081633)) b!4876451))

(assert (= (and b!4876451 res!2081637) b!4876452))

(assert (= (and b!4876453 res!2081636) b!4876454))

(assert (= (and b!4876454 (not res!2081635)) b!4876450))

(assert (= (and b!4876450 res!2081632) b!4876456))

(declare-fun m!5878882 () Bool)

(assert (=> b!4876452 m!5878882))

(assert (=> b!4876452 m!5878676))

(declare-fun m!5878884 () Bool)

(assert (=> b!4876452 m!5878884))

(assert (=> b!4876452 m!5875518))

(assert (=> b!4876452 m!5875518))

(assert (=> b!4876452 m!5878676))

(declare-fun m!5878886 () Bool)

(assert (=> b!4876452 m!5878886))

(declare-fun m!5878888 () Bool)

(assert (=> bm!338526 m!5878888))

(assert (=> b!4876450 m!5878882))

(assert (=> b!4876450 m!5875518))

(assert (=> b!4876450 m!5875518))

(assert (=> b!4876450 m!5878100))

(assert (=> b!4876450 m!5878100))

(declare-fun m!5878890 () Bool)

(assert (=> b!4876450 m!5878890))

(declare-fun m!5878892 () Bool)

(assert (=> b!4876454 m!5878892))

(assert (=> b!4876451 m!5878882))

(assert (=> b!4876451 m!5875518))

(assert (=> b!4876451 m!5875518))

(assert (=> b!4876451 m!5878676))

(assert (=> b!4876451 m!5878676))

(assert (=> b!4876451 m!5878884))

(declare-fun m!5878894 () Bool)

(assert (=> b!4876455 m!5878894))

(assert (=> b!4876456 m!5878100))

(assert (=> b!4876456 m!5878890))

(assert (=> b!4876456 m!5878886))

(assert (=> b!4876456 m!5878882))

(assert (=> b!4876456 m!5875518))

(assert (=> b!4876456 m!5878100))

(assert (=> b!4876456 m!5875518))

(declare-fun m!5878896 () Bool)

(assert (=> d!1566639 m!5878896))

(assert (=> d!1566639 m!5878268))

(assert (=> d!1566639 m!5878892))

(assert (=> d!1566639 m!5878676))

(declare-fun m!5878898 () Bool)

(assert (=> d!1566639 m!5878898))

(assert (=> d!1566639 m!5875518))

(assert (=> d!1566639 m!5875518))

(assert (=> d!1566639 m!5878676))

(declare-fun m!5878900 () Bool)

(assert (=> d!1566639 m!5878900))

(assert (=> b!4876453 m!5878892))

(assert (=> b!4874756 d!1566639))

(declare-fun b!4876459 () Bool)

(declare-fun e!3047996 () List!56133)

(declare-fun e!3047997 () List!56133)

(assert (=> b!4876459 (= e!3047996 e!3047997)))

(declare-fun c!829428 () Bool)

(assert (=> b!4876459 (= c!829428 ((_ is Leaf!24337) lt!1997421))))

(declare-fun b!4876460 () Bool)

(assert (=> b!4876460 (= e!3047997 (list!17541 (xs!17910 lt!1997421)))))

(declare-fun d!1566641 () Bool)

(declare-fun c!829427 () Bool)

(assert (=> d!1566641 (= c!829427 ((_ is Empty!14602) lt!1997421))))

(assert (=> d!1566641 (= (list!17537 lt!1997421) e!3047996)))

(declare-fun b!4876458 () Bool)

(assert (=> b!4876458 (= e!3047996 Nil!56009)))

(declare-fun b!4876461 () Bool)

(assert (=> b!4876461 (= e!3047997 (++!12204 (list!17537 (left!40682 lt!1997421)) (list!17537 (right!41012 lt!1997421))))))

(assert (= (and d!1566641 c!829427) b!4876458))

(assert (= (and d!1566641 (not c!829427)) b!4876459))

(assert (= (and b!4876459 c!829428) b!4876460))

(assert (= (and b!4876459 (not c!829428)) b!4876461))

(declare-fun m!5878902 () Bool)

(assert (=> b!4876460 m!5878902))

(declare-fun m!5878904 () Bool)

(assert (=> b!4876461 m!5878904))

(declare-fun m!5878906 () Bool)

(assert (=> b!4876461 m!5878906))

(assert (=> b!4876461 m!5878904))

(assert (=> b!4876461 m!5878906))

(declare-fun m!5878908 () Bool)

(assert (=> b!4876461 m!5878908))

(assert (=> b!4874662 d!1566641))

(declare-fun b!4876463 () Bool)

(declare-fun e!3047998 () List!56133)

(declare-fun e!3047999 () List!56133)

(assert (=> b!4876463 (= e!3047998 e!3047999)))

(declare-fun c!829430 () Bool)

(assert (=> b!4876463 (= c!829430 ((_ is Leaf!24337) (c!828992 (_1!33246 lt!1997274))))))

(declare-fun b!4876464 () Bool)

(assert (=> b!4876464 (= e!3047999 (list!17541 (xs!17910 (c!828992 (_1!33246 lt!1997274)))))))

(declare-fun d!1566643 () Bool)

(declare-fun c!829429 () Bool)

(assert (=> d!1566643 (= c!829429 ((_ is Empty!14602) (c!828992 (_1!33246 lt!1997274))))))

(assert (=> d!1566643 (= (list!17537 (c!828992 (_1!33246 lt!1997274))) e!3047998)))

(declare-fun b!4876462 () Bool)

(assert (=> b!4876462 (= e!3047998 Nil!56009)))

(declare-fun b!4876465 () Bool)

(assert (=> b!4876465 (= e!3047999 (++!12204 (list!17537 (left!40682 (c!828992 (_1!33246 lt!1997274)))) (list!17537 (right!41012 (c!828992 (_1!33246 lt!1997274))))))))

(assert (= (and d!1566643 c!829429) b!4876462))

(assert (= (and d!1566643 (not c!829429)) b!4876463))

(assert (= (and b!4876463 c!829430) b!4876464))

(assert (= (and b!4876463 (not c!829430)) b!4876465))

(declare-fun m!5878910 () Bool)

(assert (=> b!4876464 m!5878910))

(declare-fun m!5878912 () Bool)

(assert (=> b!4876465 m!5878912))

(declare-fun m!5878914 () Bool)

(assert (=> b!4876465 m!5878914))

(assert (=> b!4876465 m!5878912))

(assert (=> b!4876465 m!5878914))

(declare-fun m!5878916 () Bool)

(assert (=> b!4876465 m!5878916))

(assert (=> b!4874662 d!1566643))

(declare-fun d!1566645 () Bool)

(assert (=> d!1566645 (= (inv!71949 (xs!17909 (left!40681 (c!828991 input!585)))) (<= (size!36933 (innerList!14689 (xs!17909 (left!40681 (c!828991 input!585))))) 2147483647))))

(declare-fun bs!1175105 () Bool)

(assert (= bs!1175105 d!1566645))

(declare-fun m!5878918 () Bool)

(assert (=> bs!1175105 m!5878918))

(assert (=> b!4874945 d!1566645))

(declare-fun d!1566647 () Bool)

(assert (=> d!1566647 (= (isEmpty!29994 (list!17534 (_1!33246 lt!1997295))) ((_ is Nil!56009) (list!17534 (_1!33246 lt!1997295))))))

(assert (=> d!1565753 d!1566647))

(assert (=> d!1565753 d!1565733))

(declare-fun d!1566649 () Bool)

(declare-fun lt!1998235 () Bool)

(assert (=> d!1566649 (= lt!1998235 (isEmpty!29994 (list!17537 (c!828992 (_1!33246 lt!1997295)))))))

(assert (=> d!1566649 (= lt!1998235 (= (size!36940 (c!828992 (_1!33246 lt!1997295))) 0))))

(assert (=> d!1566649 (= (isEmpty!29995 (c!828992 (_1!33246 lt!1997295))) lt!1998235)))

(declare-fun bs!1175106 () Bool)

(assert (= bs!1175106 d!1566649))

(assert (=> bs!1175106 m!5876164))

(assert (=> bs!1175106 m!5876164))

(declare-fun m!5878920 () Bool)

(assert (=> bs!1175106 m!5878920))

(assert (=> bs!1175106 m!5875882))

(assert (=> d!1565753 d!1566649))

(declare-fun d!1566651 () Bool)

(declare-fun lt!1998236 () Int)

(assert (=> d!1566651 (>= lt!1998236 0)))

(declare-fun e!3048000 () Int)

(assert (=> d!1566651 (= lt!1998236 e!3048000)))

(declare-fun c!829431 () Bool)

(assert (=> d!1566651 (= c!829431 ((_ is Nil!56009) (list!17534 (_1!33246 lt!1997295))))))

(assert (=> d!1566651 (= (size!36938 (list!17534 (_1!33246 lt!1997295))) lt!1998236)))

(declare-fun b!4876466 () Bool)

(assert (=> b!4876466 (= e!3048000 0)))

(declare-fun b!4876467 () Bool)

(assert (=> b!4876467 (= e!3048000 (+ 1 (size!36938 (t!364441 (list!17534 (_1!33246 lt!1997295))))))))

(assert (= (and d!1566651 c!829431) b!4876466))

(assert (= (and d!1566651 (not c!829431)) b!4876467))

(declare-fun m!5878922 () Bool)

(assert (=> b!4876467 m!5878922))

(assert (=> d!1565633 d!1566651))

(assert (=> d!1565633 d!1565733))

(declare-fun d!1566653 () Bool)

(declare-fun lt!1998237 () Int)

(assert (=> d!1566653 (= lt!1998237 (size!36938 (list!17537 (c!828992 (_1!33246 lt!1997295)))))))

(assert (=> d!1566653 (= lt!1998237 (ite ((_ is Empty!14602) (c!828992 (_1!33246 lt!1997295))) 0 (ite ((_ is Leaf!24337) (c!828992 (_1!33246 lt!1997295))) (csize!29435 (c!828992 (_1!33246 lt!1997295))) (csize!29434 (c!828992 (_1!33246 lt!1997295))))))))

(assert (=> d!1566653 (= (size!36940 (c!828992 (_1!33246 lt!1997295))) lt!1998237)))

(declare-fun bs!1175107 () Bool)

(assert (= bs!1175107 d!1566653))

(assert (=> bs!1175107 m!5876164))

(assert (=> bs!1175107 m!5876164))

(declare-fun m!5878924 () Bool)

(assert (=> bs!1175107 m!5878924))

(assert (=> d!1565633 d!1566653))

(declare-fun d!1566655 () Bool)

(assert (=> d!1566655 (= (isDefined!10861 lt!1997489) (not (isEmpty!29998 lt!1997489)))))

(declare-fun bs!1175108 () Bool)

(assert (= bs!1175108 d!1566655))

(assert (=> bs!1175108 m!5876146))

(assert (=> b!4874819 d!1566655))

(declare-fun d!1566657 () Bool)

(declare-fun choose!35643 (Int) Bool)

(assert (=> d!1566657 (= (Forall!1680 lambda!243592) (choose!35643 lambda!243592))))

(declare-fun bs!1175109 () Bool)

(assert (= bs!1175109 d!1566657))

(declare-fun m!5878926 () Bool)

(assert (=> bs!1175109 m!5878926))

(assert (=> d!1565665 d!1566657))

(declare-fun d!1566659 () Bool)

(declare-fun lt!1998238 () Int)

(assert (=> d!1566659 (>= lt!1998238 0)))

(declare-fun e!3048001 () Int)

(assert (=> d!1566659 (= lt!1998238 e!3048001)))

(declare-fun c!829432 () Bool)

(assert (=> d!1566659 (= c!829432 ((_ is Nil!56009) (t!364441 (list!17534 lt!1997270))))))

(assert (=> d!1566659 (= (size!36938 (t!364441 (list!17534 lt!1997270))) lt!1998238)))

(declare-fun b!4876468 () Bool)

(assert (=> b!4876468 (= e!3048001 0)))

(declare-fun b!4876469 () Bool)

(assert (=> b!4876469 (= e!3048001 (+ 1 (size!36938 (t!364441 (t!364441 (list!17534 lt!1997270))))))))

(assert (= (and d!1566659 c!829432) b!4876468))

(assert (= (and d!1566659 (not c!829432)) b!4876469))

(declare-fun m!5878928 () Bool)

(assert (=> b!4876469 m!5878928))

(assert (=> b!4874890 d!1566659))

(declare-fun b!4876470 () Bool)

(declare-fun e!3048003 () Bool)

(assert (=> b!4876470 (= e!3048003 (nullable!4547 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))))))

(declare-fun b!4876471 () Bool)

(declare-fun e!3048005 () Bool)

(declare-fun e!3048004 () Bool)

(assert (=> b!4876471 (= e!3048005 e!3048004)))

(declare-fun res!2081644 () Bool)

(assert (=> b!4876471 (=> res!2081644 e!3048004)))

(declare-fun call!338532 () Bool)

(assert (=> b!4876471 (= res!2081644 call!338532)))

(declare-fun b!4876472 () Bool)

(declare-fun e!3048002 () Bool)

(declare-fun lt!1998239 () Bool)

(assert (=> b!4876472 (= e!3048002 (= lt!1998239 call!338532))))

(declare-fun b!4876473 () Bool)

(declare-fun e!3048007 () Bool)

(assert (=> b!4876473 (= e!3048002 e!3048007)))

(declare-fun c!829433 () Bool)

(assert (=> b!4876473 (= c!829433 ((_ is EmptyLang!13123) (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))))))

(declare-fun b!4876474 () Bool)

(declare-fun res!2081642 () Bool)

(declare-fun e!3048008 () Bool)

(assert (=> b!4876474 (=> res!2081642 e!3048008)))

(assert (=> b!4876474 (= res!2081642 (not ((_ is ElementMatch!13123) (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))))

(assert (=> b!4876474 (= e!3048007 e!3048008)))

(declare-fun b!4876475 () Bool)

(declare-fun e!3048006 () Bool)

(assert (=> b!4876475 (= e!3048006 (= (head!10419 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) (c!828990 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))))

(declare-fun b!4876476 () Bool)

(declare-fun res!2081641 () Bool)

(assert (=> b!4876476 (=> res!2081641 e!3048004)))

(assert (=> b!4876476 (= res!2081641 (not (isEmpty!30003 (tail!9565 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))))))))

(declare-fun b!4876477 () Bool)

(declare-fun res!2081639 () Bool)

(assert (=> b!4876477 (=> (not res!2081639) (not e!3048006))))

(assert (=> b!4876477 (= res!2081639 (not call!338532))))

(declare-fun b!4876478 () Bool)

(assert (=> b!4876478 (= e!3048004 (not (= (head!10419 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) (c!828990 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))))))))

(declare-fun b!4876479 () Bool)

(assert (=> b!4876479 (= e!3048008 e!3048005)))

(declare-fun res!2081640 () Bool)

(assert (=> b!4876479 (=> (not res!2081640) (not e!3048005))))

(assert (=> b!4876479 (= res!2081640 (not lt!1998239))))

(declare-fun b!4876480 () Bool)

(declare-fun res!2081638 () Bool)

(assert (=> b!4876480 (=> res!2081638 e!3048008)))

(assert (=> b!4876480 (= res!2081638 e!3048006)))

(declare-fun res!2081645 () Bool)

(assert (=> b!4876480 (=> (not res!2081645) (not e!3048006))))

(assert (=> b!4876480 (= res!2081645 lt!1998239)))

(declare-fun b!4876481 () Bool)

(assert (=> b!4876481 (= e!3048003 (matchR!6497 (derivativeStep!3871 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))) (head!10419 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))))) (tail!9565 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))))))))

(declare-fun bm!338527 () Bool)

(assert (=> bm!338527 (= call!338532 (isEmpty!30003 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))))))

(declare-fun d!1566661 () Bool)

(assert (=> d!1566661 e!3048002))

(declare-fun c!829434 () Bool)

(assert (=> d!1566661 (= c!829434 ((_ is EmptyExpr!13123) (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484))))))))

(assert (=> d!1566661 (= lt!1998239 e!3048003)))

(declare-fun c!829435 () Bool)

(assert (=> d!1566661 (= c!829435 (isEmpty!30003 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))))))

(assert (=> d!1566661 (validRegex!5874 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))))

(assert (=> d!1566661 (= (matchR!6497 (regex!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) lt!1998239)))

(declare-fun b!4876482 () Bool)

(declare-fun res!2081643 () Bool)

(assert (=> b!4876482 (=> (not res!2081643) (not e!3048006))))

(assert (=> b!4876482 (= res!2081643 (isEmpty!30003 (tail!9565 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))))))))

(declare-fun b!4876483 () Bool)

(assert (=> b!4876483 (= e!3048007 (not lt!1998239))))

(assert (= (and d!1566661 c!829435) b!4876470))

(assert (= (and d!1566661 (not c!829435)) b!4876481))

(assert (= (and d!1566661 c!829434) b!4876472))

(assert (= (and d!1566661 (not c!829434)) b!4876473))

(assert (= (and b!4876473 c!829433) b!4876483))

(assert (= (and b!4876473 (not c!829433)) b!4876474))

(assert (= (and b!4876474 (not res!2081642)) b!4876480))

(assert (= (and b!4876480 res!2081645) b!4876477))

(assert (= (and b!4876477 res!2081639) b!4876482))

(assert (= (and b!4876482 res!2081643) b!4876475))

(assert (= (and b!4876480 (not res!2081638)) b!4876479))

(assert (= (and b!4876479 res!2081640) b!4876471))

(assert (= (and b!4876471 (not res!2081644)) b!4876476))

(assert (= (and b!4876476 (not res!2081641)) b!4876478))

(assert (= (or b!4876472 b!4876471 b!4876477) bm!338527))

(assert (=> b!4876475 m!5876112))

(declare-fun m!5878930 () Bool)

(assert (=> b!4876475 m!5878930))

(assert (=> b!4876476 m!5876112))

(declare-fun m!5878932 () Bool)

(assert (=> b!4876476 m!5878932))

(assert (=> b!4876476 m!5878932))

(declare-fun m!5878934 () Bool)

(assert (=> b!4876476 m!5878934))

(declare-fun m!5878936 () Bool)

(assert (=> b!4876470 m!5878936))

(assert (=> b!4876478 m!5876112))

(assert (=> b!4876478 m!5878930))

(assert (=> d!1566661 m!5876112))

(declare-fun m!5878938 () Bool)

(assert (=> d!1566661 m!5878938))

(declare-fun m!5878940 () Bool)

(assert (=> d!1566661 m!5878940))

(assert (=> b!4876482 m!5876112))

(assert (=> b!4876482 m!5878932))

(assert (=> b!4876482 m!5878932))

(assert (=> b!4876482 m!5878934))

(assert (=> b!4876481 m!5876112))

(assert (=> b!4876481 m!5878930))

(assert (=> b!4876481 m!5878930))

(declare-fun m!5878942 () Bool)

(assert (=> b!4876481 m!5878942))

(assert (=> b!4876481 m!5876112))

(assert (=> b!4876481 m!5878932))

(assert (=> b!4876481 m!5878942))

(assert (=> b!4876481 m!5878932))

(declare-fun m!5878944 () Bool)

(assert (=> b!4876481 m!5878944))

(assert (=> bm!338527 m!5876112))

(assert (=> bm!338527 m!5878938))

(assert (=> b!4874809 d!1566661))

(assert (=> b!4874809 d!1566403))

(assert (=> b!4874809 d!1566601))

(assert (=> b!4874809 d!1566603))

(declare-fun d!1566663 () Bool)

(declare-fun c!829436 () Bool)

(assert (=> d!1566663 (= c!829436 ((_ is Node!14601) (left!40681 (right!41011 (c!828991 input!585)))))))

(declare-fun e!3048009 () Bool)

(assert (=> d!1566663 (= (inv!71943 (left!40681 (right!41011 (c!828991 input!585)))) e!3048009)))

(declare-fun b!4876484 () Bool)

(assert (=> b!4876484 (= e!3048009 (inv!71947 (left!40681 (right!41011 (c!828991 input!585)))))))

(declare-fun b!4876485 () Bool)

(declare-fun e!3048010 () Bool)

(assert (=> b!4876485 (= e!3048009 e!3048010)))

(declare-fun res!2081646 () Bool)

(assert (=> b!4876485 (= res!2081646 (not ((_ is Leaf!24336) (left!40681 (right!41011 (c!828991 input!585))))))))

(assert (=> b!4876485 (=> res!2081646 e!3048010)))

(declare-fun b!4876486 () Bool)

(assert (=> b!4876486 (= e!3048010 (inv!71948 (left!40681 (right!41011 (c!828991 input!585)))))))

(assert (= (and d!1566663 c!829436) b!4876484))

(assert (= (and d!1566663 (not c!829436)) b!4876485))

(assert (= (and b!4876485 (not res!2081646)) b!4876486))

(declare-fun m!5878946 () Bool)

(assert (=> b!4876484 m!5878946))

(declare-fun m!5878948 () Bool)

(assert (=> b!4876486 m!5878948))

(assert (=> b!4874947 d!1566663))

(declare-fun d!1566665 () Bool)

(declare-fun c!829437 () Bool)

(assert (=> d!1566665 (= c!829437 ((_ is Node!14601) (right!41011 (right!41011 (c!828991 input!585)))))))

(declare-fun e!3048011 () Bool)

(assert (=> d!1566665 (= (inv!71943 (right!41011 (right!41011 (c!828991 input!585)))) e!3048011)))

(declare-fun b!4876487 () Bool)

(assert (=> b!4876487 (= e!3048011 (inv!71947 (right!41011 (right!41011 (c!828991 input!585)))))))

(declare-fun b!4876488 () Bool)

(declare-fun e!3048012 () Bool)

(assert (=> b!4876488 (= e!3048011 e!3048012)))

(declare-fun res!2081647 () Bool)

(assert (=> b!4876488 (= res!2081647 (not ((_ is Leaf!24336) (right!41011 (right!41011 (c!828991 input!585))))))))

(assert (=> b!4876488 (=> res!2081647 e!3048012)))

(declare-fun b!4876489 () Bool)

(assert (=> b!4876489 (= e!3048012 (inv!71948 (right!41011 (right!41011 (c!828991 input!585)))))))

(assert (= (and d!1566665 c!829437) b!4876487))

(assert (= (and d!1566665 (not c!829437)) b!4876488))

(assert (= (and b!4876488 (not res!2081647)) b!4876489))

(declare-fun m!5878950 () Bool)

(assert (=> b!4876487 m!5878950))

(declare-fun m!5878952 () Bool)

(assert (=> b!4876489 m!5878952))

(assert (=> b!4874947 d!1566665))

(declare-fun d!1566667 () Bool)

(declare-fun c!829438 () Bool)

(assert (=> d!1566667 (= c!829438 ((_ is Nil!56007) (t!364439 lt!1997299)))))

(declare-fun e!3048013 () (InoxSet C!26444))

(assert (=> d!1566667 (= (content!9993 (t!364439 lt!1997299)) e!3048013)))

(declare-fun b!4876490 () Bool)

(assert (=> b!4876490 (= e!3048013 ((as const (Array C!26444 Bool)) false))))

(declare-fun b!4876491 () Bool)

(assert (=> b!4876491 (= e!3048013 ((_ map or) (store ((as const (Array C!26444 Bool)) false) (h!62455 (t!364439 lt!1997299)) true) (content!9993 (t!364439 (t!364439 lt!1997299)))))))

(assert (= (and d!1566667 c!829438) b!4876490))

(assert (= (and d!1566667 (not c!829438)) b!4876491))

(declare-fun m!5878954 () Bool)

(assert (=> b!4876491 m!5878954))

(declare-fun m!5878956 () Bool)

(assert (=> b!4876491 m!5878956))

(assert (=> b!4874884 d!1566667))

(declare-fun d!1566669 () Bool)

(declare-fun lt!1998240 () Bool)

(assert (=> d!1566669 (= lt!1998240 (isEmpty!29994 (list!17534 (_1!33246 lt!1997393))))))

(assert (=> d!1566669 (= lt!1998240 (isEmpty!29995 (c!828992 (_1!33246 lt!1997393))))))

(assert (=> d!1566669 (= (isEmpty!29990 (_1!33246 lt!1997393)) lt!1998240)))

(declare-fun bs!1175110 () Bool)

(assert (= bs!1175110 d!1566669))

(assert (=> bs!1175110 m!5875830))

(assert (=> bs!1175110 m!5875830))

(declare-fun m!5878958 () Bool)

(assert (=> bs!1175110 m!5878958))

(declare-fun m!5878960 () Bool)

(assert (=> bs!1175110 m!5878960))

(assert (=> b!4874592 d!1566669))

(declare-fun bs!1175111 () Bool)

(declare-fun b!4876492 () Bool)

(assert (= bs!1175111 (and b!4876492 d!1565665)))

(declare-fun lambda!243639 () Int)

(assert (=> bs!1175111 (= lambda!243639 lambda!243592)))

(declare-fun bs!1175112 () Bool)

(assert (= bs!1175112 (and b!4876492 b!4874856)))

(assert (=> bs!1175112 (= lambda!243639 lambda!243603)))

(declare-fun bs!1175113 () Bool)

(assert (= bs!1175113 (and b!4876492 b!4875933)))

(assert (=> bs!1175113 (= (and (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (= (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))))) (= lambda!243639 lambda!243635))))

(declare-fun bs!1175114 () Bool)

(assert (= bs!1175114 (and b!4876492 d!1566553)))

(assert (=> bs!1175114 (= (and (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164))))) (= (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))))) (= lambda!243639 lambda!243638))))

(declare-fun b!4876499 () Bool)

(declare-fun e!3048020 () Bool)

(assert (=> b!4876499 (= e!3048020 true)))

(declare-fun b!4876498 () Bool)

(declare-fun e!3048019 () Bool)

(assert (=> b!4876498 (= e!3048019 e!3048020)))

(assert (=> b!4876492 e!3048019))

(assert (= b!4876498 b!4876499))

(assert (= b!4876492 b!4876498))

(assert (=> b!4876499 (< (dynLambda!22509 order!25263 (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22508 order!25261 lambda!243639))))

(assert (=> b!4876499 (< (dynLambda!22507 order!25259 (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) (dynLambda!22508 order!25261 lambda!243639))))

(declare-fun e!3048015 () Option!13801)

(declare-fun lt!1998248 () tuple2!59898)

(assert (=> b!4876492 (= e!3048015 (Some!13800 (tuple2!59885 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1998248)) (h!62456 rules!1164) (size!36931 (_1!33252 lt!1998248)) (list!17533 (_1!33252 lt!1998248))) (_2!33252 lt!1998248))))))

(declare-fun lt!1998243 () List!56131)

(assert (=> b!4876492 (= lt!1998243 (list!17533 (_2!33245 (v!49734 lt!1997269))))))

(declare-fun lt!1998241 () Unit!146004)

(assert (=> b!4876492 (= lt!1998241 (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 rules!1164)) lt!1998243))))

(declare-fun res!2081651 () Bool)

(assert (=> b!4876492 (= res!2081651 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1998243 lt!1998243 (size!36933 lt!1998243)))))))

(declare-fun e!3048014 () Bool)

(assert (=> b!4876492 (=> res!2081651 e!3048014)))

(assert (=> b!4876492 e!3048014))

(declare-fun lt!1998242 () Unit!146004)

(assert (=> b!4876492 (= lt!1998242 lt!1998241)))

(declare-fun lt!1998244 () Unit!146004)

(assert (=> b!4876492 (= lt!1998244 (lemmaInv!1210 (transformation!8048 (h!62456 rules!1164))))))

(declare-fun lt!1998247 () Unit!146004)

(assert (=> b!4876492 (= lt!1998247 (ForallOf!1107 lambda!243639 (_1!33252 lt!1998248)))))

(declare-fun lt!1998249 () Unit!146004)

(assert (=> b!4876492 (= lt!1998249 (ForallOf!1107 lambda!243639 (seqFromList!5903 (list!17533 (_1!33252 lt!1998248)))))))

(declare-fun lt!1998246 () Option!13801)

(assert (=> b!4876492 (= lt!1998246 (Some!13800 (tuple2!59885 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1998248)) (h!62456 rules!1164) (size!36931 (_1!33252 lt!1998248)) (list!17533 (_1!33252 lt!1998248))) (_2!33252 lt!1998248))))))

(declare-fun lt!1998250 () Unit!146004)

(assert (=> b!4876492 (= lt!1998250 (lemmaEqSameImage!1064 (transformation!8048 (h!62456 rules!1164)) (_1!33252 lt!1998248) (seqFromList!5903 (list!17533 (_1!33252 lt!1998248)))))))

(declare-fun e!3048016 () Bool)

(declare-fun lt!1998245 () Option!13801)

(declare-fun b!4876493 () Bool)

(assert (=> b!4876493 (= e!3048016 (= (list!17533 (_2!33245 (get!19247 lt!1998245))) (_2!33248 (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun d!1566671 () Bool)

(declare-fun e!3048017 () Bool)

(assert (=> d!1566671 e!3048017))

(declare-fun res!2081648 () Bool)

(assert (=> d!1566671 (=> (not res!2081648) (not e!3048017))))

(assert (=> d!1566671 (= res!2081648 (= (isDefined!10860 lt!1998245) (isDefined!10861 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566671 (= lt!1998245 e!3048015)))

(declare-fun c!829439 () Bool)

(assert (=> d!1566671 (= c!829439 (isEmpty!30004 (_1!33252 lt!1998248)))))

(assert (=> d!1566671 (= lt!1998248 (findLongestMatchWithZipperSequence!242 (regex!8048 (h!62456 rules!1164)) (_2!33245 (v!49734 lt!1997269))))))

(assert (=> d!1566671 (ruleValid!3635 thiss!11460 (h!62456 rules!1164))))

(assert (=> d!1566671 (= (maxPrefixOneRuleZipperSequence!582 thiss!11460 (h!62456 rules!1164) (_2!33245 (v!49734 lt!1997269))) lt!1998245)))

(declare-fun b!4876494 () Bool)

(assert (=> b!4876494 (= e!3048014 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1998243 lt!1998243 (size!36933 lt!1998243)))))))

(declare-fun b!4876495 () Bool)

(declare-fun e!3048018 () Bool)

(assert (=> b!4876495 (= e!3048018 e!3048016)))

(declare-fun res!2081650 () Bool)

(assert (=> b!4876495 (=> (not res!2081650) (not e!3048016))))

(assert (=> b!4876495 (= res!2081650 (= (_1!33245 (get!19247 lt!1998245)) (_1!33248 (get!19248 (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) (list!17533 (_2!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876496 () Bool)

(assert (=> b!4876496 (= e!3048017 e!3048018)))

(declare-fun res!2081649 () Bool)

(assert (=> b!4876496 (=> res!2081649 e!3048018)))

(assert (=> b!4876496 (= res!2081649 (not (isDefined!10860 lt!1998245)))))

(declare-fun b!4876497 () Bool)

(assert (=> b!4876497 (= e!3048015 None!13800)))

(assert (= (and d!1566671 c!829439) b!4876497))

(assert (= (and d!1566671 (not c!829439)) b!4876492))

(assert (= (and b!4876492 (not res!2081651)) b!4876494))

(assert (= (and d!1566671 res!2081648) b!4876496))

(assert (= (and b!4876496 (not res!2081649)) b!4876495))

(assert (= (and b!4876495 res!2081650) b!4876493))

(declare-fun m!5878962 () Bool)

(assert (=> b!4876493 m!5878962))

(assert (=> b!4876493 m!5878752))

(declare-fun m!5878964 () Bool)

(assert (=> b!4876493 m!5878964))

(assert (=> b!4876493 m!5875522))

(assert (=> b!4876493 m!5875522))

(assert (=> b!4876493 m!5878752))

(declare-fun m!5878966 () Bool)

(assert (=> b!4876493 m!5878966))

(assert (=> d!1566671 m!5878752))

(declare-fun m!5878968 () Bool)

(assert (=> d!1566671 m!5878968))

(assert (=> d!1566671 m!5875522))

(assert (=> d!1566671 m!5876012))

(assert (=> d!1566671 m!5875522))

(assert (=> d!1566671 m!5878752))

(declare-fun m!5878970 () Bool)

(assert (=> d!1566671 m!5878970))

(declare-fun m!5878972 () Bool)

(assert (=> d!1566671 m!5878972))

(declare-fun m!5878974 () Bool)

(assert (=> d!1566671 m!5878974))

(assert (=> b!4876496 m!5878972))

(assert (=> b!4876494 m!5876208))

(declare-fun m!5878976 () Bool)

(assert (=> b!4876494 m!5878976))

(assert (=> b!4876494 m!5876208))

(assert (=> b!4876494 m!5878976))

(declare-fun m!5878978 () Bool)

(assert (=> b!4876494 m!5878978))

(declare-fun m!5878980 () Bool)

(assert (=> b!4876494 m!5878980))

(assert (=> b!4876495 m!5878966))

(assert (=> b!4876495 m!5875522))

(assert (=> b!4876495 m!5875522))

(assert (=> b!4876495 m!5878752))

(assert (=> b!4876495 m!5878752))

(assert (=> b!4876495 m!5878964))

(declare-fun m!5878982 () Bool)

(assert (=> b!4876492 m!5878982))

(declare-fun m!5878984 () Bool)

(assert (=> b!4876492 m!5878984))

(declare-fun m!5878986 () Bool)

(assert (=> b!4876492 m!5878986))

(declare-fun m!5878988 () Bool)

(assert (=> b!4876492 m!5878988))

(declare-fun m!5878990 () Bool)

(assert (=> b!4876492 m!5878990))

(declare-fun m!5878992 () Bool)

(assert (=> b!4876492 m!5878992))

(assert (=> b!4876492 m!5876208))

(assert (=> b!4876492 m!5878976))

(assert (=> b!4876492 m!5878978))

(assert (=> b!4876492 m!5878976))

(assert (=> b!4876492 m!5878986))

(assert (=> b!4876492 m!5875522))

(declare-fun m!5878994 () Bool)

(assert (=> b!4876492 m!5878994))

(assert (=> b!4876492 m!5876208))

(assert (=> b!4876492 m!5876230))

(assert (=> b!4876492 m!5878988))

(declare-fun m!5878996 () Bool)

(assert (=> b!4876492 m!5878996))

(assert (=> b!4876492 m!5878988))

(declare-fun m!5878998 () Bool)

(assert (=> b!4876492 m!5878998))

(assert (=> bm!338389 d!1566671))

(declare-fun b!4876502 () Bool)

(declare-fun res!2081652 () Bool)

(declare-fun e!3048021 () Bool)

(assert (=> b!4876502 (=> (not res!2081652) (not e!3048021))))

(declare-fun lt!1998251 () List!56131)

(assert (=> b!4876502 (= res!2081652 (= (size!36933 lt!1998251) (+ (size!36933 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (size!36933 (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))))

(declare-fun b!4876500 () Bool)

(declare-fun e!3048022 () List!56131)

(assert (=> b!4876500 (= e!3048022 (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876503 () Bool)

(assert (=> b!4876503 (= e!3048021 (or (not (= (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) Nil!56007)) (= lt!1998251 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(declare-fun b!4876501 () Bool)

(assert (=> b!4876501 (= e!3048022 (Cons!56007 (h!62455 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (++!12201 (t!364439 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(declare-fun d!1566673 () Bool)

(assert (=> d!1566673 e!3048021))

(declare-fun res!2081653 () Bool)

(assert (=> d!1566673 (=> (not res!2081653) (not e!3048021))))

(assert (=> d!1566673 (= res!2081653 (= (content!9993 lt!1998251) ((_ map or) (content!9993 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (content!9993 (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))))

(assert (=> d!1566673 (= lt!1998251 e!3048022)))

(declare-fun c!829440 () Bool)

(assert (=> d!1566673 (= c!829440 ((_ is Nil!56007) (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (=> d!1566673 (= (++!12201 (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) lt!1998251)))

(assert (= (and d!1566673 c!829440) b!4876500))

(assert (= (and d!1566673 (not c!829440)) b!4876501))

(assert (= (and d!1566673 res!2081653) b!4876502))

(assert (= (and b!4876502 res!2081652) b!4876503))

(declare-fun m!5879000 () Bool)

(assert (=> b!4876502 m!5879000))

(assert (=> b!4876502 m!5876002))

(declare-fun m!5879002 () Bool)

(assert (=> b!4876502 m!5879002))

(assert (=> b!4876502 m!5876004))

(declare-fun m!5879004 () Bool)

(assert (=> b!4876502 m!5879004))

(assert (=> b!4876501 m!5876004))

(declare-fun m!5879006 () Bool)

(assert (=> b!4876501 m!5879006))

(declare-fun m!5879008 () Bool)

(assert (=> d!1566673 m!5879008))

(assert (=> d!1566673 m!5876002))

(declare-fun m!5879010 () Bool)

(assert (=> d!1566673 m!5879010))

(assert (=> d!1566673 m!5876004))

(declare-fun m!5879012 () Bool)

(assert (=> d!1566673 m!5879012))

(assert (=> b!4874730 d!1566673))

(declare-fun b!4876506 () Bool)

(declare-fun e!3048024 () List!56131)

(assert (=> b!4876506 (= e!3048024 (list!17539 (xs!17909 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876504 () Bool)

(declare-fun e!3048023 () List!56131)

(assert (=> b!4876504 (= e!3048023 Nil!56007)))

(declare-fun d!1566675 () Bool)

(declare-fun c!829441 () Bool)

(assert (=> d!1566675 (= c!829441 ((_ is Empty!14601) (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566675 (= (list!17535 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) e!3048023)))

(declare-fun b!4876505 () Bool)

(assert (=> b!4876505 (= e!3048023 e!3048024)))

(declare-fun c!829442 () Bool)

(assert (=> b!4876505 (= c!829442 ((_ is Leaf!24336) (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876507 () Bool)

(assert (=> b!4876507 (= e!3048024 (++!12201 (list!17535 (left!40681 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (list!17535 (right!41011 (left!40681 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566675 c!829441) b!4876504))

(assert (= (and d!1566675 (not c!829441)) b!4876505))

(assert (= (and b!4876505 c!829442) b!4876506))

(assert (= (and b!4876505 (not c!829442)) b!4876507))

(declare-fun m!5879014 () Bool)

(assert (=> b!4876506 m!5879014))

(declare-fun m!5879016 () Bool)

(assert (=> b!4876507 m!5879016))

(declare-fun m!5879018 () Bool)

(assert (=> b!4876507 m!5879018))

(assert (=> b!4876507 m!5879016))

(assert (=> b!4876507 m!5879018))

(declare-fun m!5879020 () Bool)

(assert (=> b!4876507 m!5879020))

(assert (=> b!4874730 d!1566675))

(declare-fun b!4876510 () Bool)

(declare-fun e!3048026 () List!56131)

(assert (=> b!4876510 (= e!3048026 (list!17539 (xs!17909 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876508 () Bool)

(declare-fun e!3048025 () List!56131)

(assert (=> b!4876508 (= e!3048025 Nil!56007)))

(declare-fun d!1566677 () Bool)

(declare-fun c!829443 () Bool)

(assert (=> d!1566677 (= c!829443 ((_ is Empty!14601) (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566677 (= (list!17535 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))) e!3048025)))

(declare-fun b!4876509 () Bool)

(assert (=> b!4876509 (= e!3048025 e!3048026)))

(declare-fun c!829444 () Bool)

(assert (=> b!4876509 (= c!829444 ((_ is Leaf!24336) (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876511 () Bool)

(assert (=> b!4876511 (= e!3048026 (++!12201 (list!17535 (left!40681 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269))))))) (list!17535 (right!41011 (right!41011 (c!828991 (charsOf!5347 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566677 c!829443) b!4876508))

(assert (= (and d!1566677 (not c!829443)) b!4876509))

(assert (= (and b!4876509 c!829444) b!4876510))

(assert (= (and b!4876509 (not c!829444)) b!4876511))

(declare-fun m!5879022 () Bool)

(assert (=> b!4876510 m!5879022))

(declare-fun m!5879024 () Bool)

(assert (=> b!4876511 m!5879024))

(declare-fun m!5879026 () Bool)

(assert (=> b!4876511 m!5879026))

(assert (=> b!4876511 m!5879024))

(assert (=> b!4876511 m!5879026))

(declare-fun m!5879028 () Bool)

(assert (=> b!4876511 m!5879028))

(assert (=> b!4874730 d!1566677))

(declare-fun d!1566679 () Bool)

(declare-fun lt!1998252 () Int)

(assert (=> d!1566679 (>= lt!1998252 0)))

(declare-fun e!3048027 () Int)

(assert (=> d!1566679 (= lt!1998252 e!3048027)))

(declare-fun c!829445 () Bool)

(assert (=> d!1566679 (= c!829445 ((_ is Nil!56009) (list!17537 (c!828992 lt!1997270))))))

(assert (=> d!1566679 (= (size!36938 (list!17537 (c!828992 lt!1997270))) lt!1998252)))

(declare-fun b!4876512 () Bool)

(assert (=> b!4876512 (= e!3048027 0)))

(declare-fun b!4876513 () Bool)

(assert (=> b!4876513 (= e!3048027 (+ 1 (size!36938 (t!364441 (list!17537 (c!828992 lt!1997270))))))))

(assert (= (and d!1566679 c!829445) b!4876512))

(assert (= (and d!1566679 (not c!829445)) b!4876513))

(declare-fun m!5879030 () Bool)

(assert (=> b!4876513 m!5879030))

(assert (=> d!1565775 d!1566679))

(assert (=> d!1565775 d!1565781))

(declare-fun d!1566681 () Bool)

(assert (=> d!1566681 (= (head!10419 lt!1997365) (h!62455 lt!1997365))))

(assert (=> b!4874748 d!1566681))

(declare-fun d!1566683 () Bool)

(assert (=> d!1566683 (= (head!10419 lt!1997364) (h!62455 lt!1997364))))

(assert (=> b!4874748 d!1566683))

(declare-fun d!1566685 () Bool)

(assert (=> d!1566685 (= (isEmpty!29994 (_1!33247 lt!1997494)) ((_ is Nil!56009) (_1!33247 lt!1997494)))))

(assert (=> b!4874830 d!1566685))

(assert (=> b!4874376 d!1565751))

(declare-fun b!4876514 () Bool)

(declare-fun e!3048030 () Bool)

(declare-fun lt!1998254 () tuple2!59888)

(assert (=> b!4876514 (= e!3048030 (= (_2!33247 lt!1998254) (_2!33248 (v!49737 lt!1997428))))))

(declare-fun b!4876515 () Bool)

(declare-fun e!3048029 () tuple2!59888)

(assert (=> b!4876515 (= e!3048029 (tuple2!59889 Nil!56009 (_2!33248 (v!49737 lt!1997428))))))

(declare-fun b!4876516 () Bool)

(declare-fun e!3048028 () Bool)

(assert (=> b!4876516 (= e!3048030 e!3048028)))

(declare-fun res!2081654 () Bool)

(assert (=> b!4876516 (= res!2081654 (< (size!36933 (_2!33247 lt!1998254)) (size!36933 (_2!33248 (v!49737 lt!1997428)))))))

(assert (=> b!4876516 (=> (not res!2081654) (not e!3048028))))

(declare-fun b!4876517 () Bool)

(assert (=> b!4876517 (= e!3048028 (not (isEmpty!29994 (_1!33247 lt!1998254))))))

(declare-fun b!4876518 () Bool)

(declare-fun lt!1998253 () Option!13802)

(declare-fun lt!1998255 () tuple2!59888)

(assert (=> b!4876518 (= e!3048029 (tuple2!59889 (Cons!56009 (_1!33248 (v!49737 lt!1998253)) (_1!33247 lt!1998255)) (_2!33247 lt!1998255)))))

(assert (=> b!4876518 (= lt!1998255 (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1998253))))))

(declare-fun d!1566687 () Bool)

(assert (=> d!1566687 e!3048030))

(declare-fun c!829447 () Bool)

(assert (=> d!1566687 (= c!829447 (> (size!36938 (_1!33247 lt!1998254)) 0))))

(assert (=> d!1566687 (= lt!1998254 e!3048029)))

(declare-fun c!829446 () Bool)

(assert (=> d!1566687 (= c!829446 ((_ is Some!13801) lt!1998253))))

(assert (=> d!1566687 (= lt!1998253 (maxPrefix!4554 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997428))))))

(assert (=> d!1566687 (= (lexList!2111 thiss!11460 rules!1164 (_2!33248 (v!49737 lt!1997428))) lt!1998254)))

(assert (= (and d!1566687 c!829446) b!4876518))

(assert (= (and d!1566687 (not c!829446)) b!4876515))

(assert (= (and d!1566687 c!829447) b!4876516))

(assert (= (and d!1566687 (not c!829447)) b!4876514))

(assert (= (and b!4876516 res!2081654) b!4876517))

(declare-fun m!5879032 () Bool)

(assert (=> b!4876516 m!5879032))

(declare-fun m!5879034 () Bool)

(assert (=> b!4876516 m!5879034))

(declare-fun m!5879036 () Bool)

(assert (=> b!4876517 m!5879036))

(declare-fun m!5879038 () Bool)

(assert (=> b!4876518 m!5879038))

(declare-fun m!5879040 () Bool)

(assert (=> d!1566687 m!5879040))

(declare-fun m!5879042 () Bool)

(assert (=> d!1566687 m!5879042))

(assert (=> b!4874695 d!1566687))

(declare-fun b!4876519 () Bool)

(declare-fun e!3048032 () Bool)

(declare-fun e!3048031 () Bool)

(assert (=> b!4876519 (= e!3048032 e!3048031)))

(declare-fun res!2081659 () Bool)

(assert (=> b!4876519 (=> (not res!2081659) (not e!3048031))))

(assert (=> b!4876519 (= res!2081659 (<= (- 1) (- (height!1936 (left!40681 (right!41011 (c!828991 input!585)))) (height!1936 (right!41011 (right!41011 (c!828991 input!585)))))))))

(declare-fun b!4876520 () Bool)

(declare-fun res!2081655 () Bool)

(assert (=> b!4876520 (=> (not res!2081655) (not e!3048031))))

(assert (=> b!4876520 (= res!2081655 (<= (- (height!1936 (left!40681 (right!41011 (c!828991 input!585)))) (height!1936 (right!41011 (right!41011 (c!828991 input!585))))) 1))))

(declare-fun b!4876521 () Bool)

(declare-fun res!2081657 () Bool)

(assert (=> b!4876521 (=> (not res!2081657) (not e!3048031))))

(assert (=> b!4876521 (= res!2081657 (isBalanced!3964 (right!41011 (right!41011 (c!828991 input!585)))))))

(declare-fun b!4876522 () Bool)

(declare-fun res!2081658 () Bool)

(assert (=> b!4876522 (=> (not res!2081658) (not e!3048031))))

(assert (=> b!4876522 (= res!2081658 (isBalanced!3964 (left!40681 (right!41011 (c!828991 input!585)))))))

(declare-fun d!1566689 () Bool)

(declare-fun res!2081660 () Bool)

(assert (=> d!1566689 (=> res!2081660 e!3048032)))

(assert (=> d!1566689 (= res!2081660 (not ((_ is Node!14601) (right!41011 (c!828991 input!585)))))))

(assert (=> d!1566689 (= (isBalanced!3964 (right!41011 (c!828991 input!585))) e!3048032)))

(declare-fun b!4876523 () Bool)

(declare-fun res!2081656 () Bool)

(assert (=> b!4876523 (=> (not res!2081656) (not e!3048031))))

(assert (=> b!4876523 (= res!2081656 (not (isEmpty!29996 (left!40681 (right!41011 (c!828991 input!585))))))))

(declare-fun b!4876524 () Bool)

(assert (=> b!4876524 (= e!3048031 (not (isEmpty!29996 (right!41011 (right!41011 (c!828991 input!585))))))))

(assert (= (and d!1566689 (not res!2081660)) b!4876519))

(assert (= (and b!4876519 res!2081659) b!4876520))

(assert (= (and b!4876520 res!2081655) b!4876522))

(assert (= (and b!4876522 res!2081658) b!4876521))

(assert (= (and b!4876521 res!2081657) b!4876523))

(assert (= (and b!4876523 res!2081656) b!4876524))

(assert (=> b!4876519 m!5877314))

(assert (=> b!4876519 m!5877316))

(declare-fun m!5879044 () Bool)

(assert (=> b!4876522 m!5879044))

(assert (=> b!4876520 m!5877314))

(assert (=> b!4876520 m!5877316))

(declare-fun m!5879046 () Bool)

(assert (=> b!4876521 m!5879046))

(declare-fun m!5879048 () Bool)

(assert (=> b!4876524 m!5879048))

(declare-fun m!5879050 () Bool)

(assert (=> b!4876523 m!5879050))

(assert (=> b!4874608 d!1566689))

(assert (=> d!1565731 d!1566643))

(declare-fun b!4876536 () Bool)

(declare-fun e!3048037 () Bool)

(declare-fun lt!1998258 () List!56133)

(assert (=> b!4876536 (= e!3048037 (or (not (= (list!17537 (right!41012 (c!828992 lt!1997270))) Nil!56009)) (= lt!1998258 (list!17537 (left!40682 (c!828992 lt!1997270))))))))

(declare-fun b!4876533 () Bool)

(declare-fun e!3048038 () List!56133)

(assert (=> b!4876533 (= e!3048038 (list!17537 (right!41012 (c!828992 lt!1997270))))))

(declare-fun b!4876534 () Bool)

(assert (=> b!4876534 (= e!3048038 (Cons!56009 (h!62457 (list!17537 (left!40682 (c!828992 lt!1997270)))) (++!12204 (t!364441 (list!17537 (left!40682 (c!828992 lt!1997270)))) (list!17537 (right!41012 (c!828992 lt!1997270))))))))

(declare-fun b!4876535 () Bool)

(declare-fun res!2081666 () Bool)

(assert (=> b!4876535 (=> (not res!2081666) (not e!3048037))))

(assert (=> b!4876535 (= res!2081666 (= (size!36938 lt!1998258) (+ (size!36938 (list!17537 (left!40682 (c!828992 lt!1997270)))) (size!36938 (list!17537 (right!41012 (c!828992 lt!1997270)))))))))

(declare-fun d!1566691 () Bool)

(assert (=> d!1566691 e!3048037))

(declare-fun res!2081665 () Bool)

(assert (=> d!1566691 (=> (not res!2081665) (not e!3048037))))

(declare-fun content!9999 (List!56133) (InoxSet Token!14680))

(assert (=> d!1566691 (= res!2081665 (= (content!9999 lt!1998258) ((_ map or) (content!9999 (list!17537 (left!40682 (c!828992 lt!1997270)))) (content!9999 (list!17537 (right!41012 (c!828992 lt!1997270)))))))))

(assert (=> d!1566691 (= lt!1998258 e!3048038)))

(declare-fun c!829450 () Bool)

(assert (=> d!1566691 (= c!829450 ((_ is Nil!56009) (list!17537 (left!40682 (c!828992 lt!1997270)))))))

(assert (=> d!1566691 (= (++!12204 (list!17537 (left!40682 (c!828992 lt!1997270))) (list!17537 (right!41012 (c!828992 lt!1997270)))) lt!1998258)))

(assert (= (and d!1566691 c!829450) b!4876533))

(assert (= (and d!1566691 (not c!829450)) b!4876534))

(assert (= (and d!1566691 res!2081665) b!4876535))

(assert (= (and b!4876535 res!2081666) b!4876536))

(assert (=> b!4876534 m!5876280))

(declare-fun m!5879052 () Bool)

(assert (=> b!4876534 m!5879052))

(declare-fun m!5879054 () Bool)

(assert (=> b!4876535 m!5879054))

(assert (=> b!4876535 m!5876278))

(declare-fun m!5879056 () Bool)

(assert (=> b!4876535 m!5879056))

(assert (=> b!4876535 m!5876280))

(declare-fun m!5879058 () Bool)

(assert (=> b!4876535 m!5879058))

(declare-fun m!5879060 () Bool)

(assert (=> d!1566691 m!5879060))

(assert (=> d!1566691 m!5876278))

(declare-fun m!5879062 () Bool)

(assert (=> d!1566691 m!5879062))

(assert (=> d!1566691 m!5876280))

(declare-fun m!5879064 () Bool)

(assert (=> d!1566691 m!5879064))

(assert (=> b!4874916 d!1566691))

(declare-fun b!4876538 () Bool)

(declare-fun e!3048039 () List!56133)

(declare-fun e!3048040 () List!56133)

(assert (=> b!4876538 (= e!3048039 e!3048040)))

(declare-fun c!829452 () Bool)

(assert (=> b!4876538 (= c!829452 ((_ is Leaf!24337) (left!40682 (c!828992 lt!1997270))))))

(declare-fun b!4876539 () Bool)

(assert (=> b!4876539 (= e!3048040 (list!17541 (xs!17910 (left!40682 (c!828992 lt!1997270)))))))

(declare-fun d!1566693 () Bool)

(declare-fun c!829451 () Bool)

(assert (=> d!1566693 (= c!829451 ((_ is Empty!14602) (left!40682 (c!828992 lt!1997270))))))

(assert (=> d!1566693 (= (list!17537 (left!40682 (c!828992 lt!1997270))) e!3048039)))

(declare-fun b!4876537 () Bool)

(assert (=> b!4876537 (= e!3048039 Nil!56009)))

(declare-fun b!4876540 () Bool)

(assert (=> b!4876540 (= e!3048040 (++!12204 (list!17537 (left!40682 (left!40682 (c!828992 lt!1997270)))) (list!17537 (right!41012 (left!40682 (c!828992 lt!1997270))))))))

(assert (= (and d!1566693 c!829451) b!4876537))

(assert (= (and d!1566693 (not c!829451)) b!4876538))

(assert (= (and b!4876538 c!829452) b!4876539))

(assert (= (and b!4876538 (not c!829452)) b!4876540))

(declare-fun m!5879066 () Bool)

(assert (=> b!4876539 m!5879066))

(declare-fun m!5879068 () Bool)

(assert (=> b!4876540 m!5879068))

(declare-fun m!5879070 () Bool)

(assert (=> b!4876540 m!5879070))

(assert (=> b!4876540 m!5879068))

(assert (=> b!4876540 m!5879070))

(declare-fun m!5879072 () Bool)

(assert (=> b!4876540 m!5879072))

(assert (=> b!4874916 d!1566693))

(declare-fun b!4876542 () Bool)

(declare-fun e!3048041 () List!56133)

(declare-fun e!3048042 () List!56133)

(assert (=> b!4876542 (= e!3048041 e!3048042)))

(declare-fun c!829454 () Bool)

(assert (=> b!4876542 (= c!829454 ((_ is Leaf!24337) (right!41012 (c!828992 lt!1997270))))))

(declare-fun b!4876543 () Bool)

(assert (=> b!4876543 (= e!3048042 (list!17541 (xs!17910 (right!41012 (c!828992 lt!1997270)))))))

(declare-fun d!1566695 () Bool)

(declare-fun c!829453 () Bool)

(assert (=> d!1566695 (= c!829453 ((_ is Empty!14602) (right!41012 (c!828992 lt!1997270))))))

(assert (=> d!1566695 (= (list!17537 (right!41012 (c!828992 lt!1997270))) e!3048041)))

(declare-fun b!4876541 () Bool)

(assert (=> b!4876541 (= e!3048041 Nil!56009)))

(declare-fun b!4876544 () Bool)

(assert (=> b!4876544 (= e!3048042 (++!12204 (list!17537 (left!40682 (right!41012 (c!828992 lt!1997270)))) (list!17537 (right!41012 (right!41012 (c!828992 lt!1997270))))))))

(assert (= (and d!1566695 c!829453) b!4876541))

(assert (= (and d!1566695 (not c!829453)) b!4876542))

(assert (= (and b!4876542 c!829454) b!4876543))

(assert (= (and b!4876542 (not c!829454)) b!4876544))

(declare-fun m!5879074 () Bool)

(assert (=> b!4876543 m!5879074))

(declare-fun m!5879076 () Bool)

(assert (=> b!4876544 m!5879076))

(declare-fun m!5879078 () Bool)

(assert (=> b!4876544 m!5879078))

(assert (=> b!4876544 m!5879076))

(assert (=> b!4876544 m!5879078))

(declare-fun m!5879080 () Bool)

(assert (=> b!4876544 m!5879080))

(assert (=> b!4874916 d!1566695))

(declare-fun d!1566697 () Bool)

(assert (=> d!1566697 (= (list!17534 (_1!33246 lt!1997393)) (list!17537 (c!828992 (_1!33246 lt!1997393))))))

(declare-fun bs!1175115 () Bool)

(assert (= bs!1175115 d!1566697))

(declare-fun m!5879082 () Bool)

(assert (=> bs!1175115 m!5879082))

(assert (=> b!4874588 d!1566697))

(assert (=> b!4874588 d!1566037))

(assert (=> b!4874588 d!1566039))

(assert (=> b!4874634 d!1566175))

(assert (=> b!4874634 d!1566573))

(assert (=> b!4874634 d!1566575))

(assert (=> b!4874634 d!1565533))

(assert (=> b!4874757 d!1566455))

(assert (=> b!4874757 d!1566459))

(assert (=> b!4874757 d!1566619))

(assert (=> b!4874757 d!1565563))

(assert (=> b!4874757 d!1566343))

(declare-fun d!1566699 () Bool)

(declare-fun res!2081667 () Bool)

(declare-fun e!3048044 () Bool)

(assert (=> d!1566699 (=> res!2081667 e!3048044)))

(assert (=> d!1566699 (= res!2081667 (not ((_ is Node!14602) (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566699 (= (isBalanced!3966 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))) e!3048044)))

(declare-fun b!4876545 () Bool)

(declare-fun res!2081672 () Bool)

(declare-fun e!3048043 () Bool)

(assert (=> b!4876545 (=> (not res!2081672) (not e!3048043))))

(assert (=> b!4876545 (= res!2081672 (not (isEmpty!29995 (left!40682 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876546 () Bool)

(declare-fun res!2081670 () Bool)

(assert (=> b!4876546 (=> (not res!2081670) (not e!3048043))))

(assert (=> b!4876546 (= res!2081670 (<= (- (height!1937 (left!40682 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))) (height!1937 (right!41012 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))) 1))))

(declare-fun b!4876547 () Bool)

(declare-fun res!2081668 () Bool)

(assert (=> b!4876547 (=> (not res!2081668) (not e!3048043))))

(assert (=> b!4876547 (= res!2081668 (isBalanced!3966 (left!40682 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876548 () Bool)

(assert (=> b!4876548 (= e!3048043 (not (isEmpty!29995 (right!41012 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876549 () Bool)

(declare-fun res!2081669 () Bool)

(assert (=> b!4876549 (=> (not res!2081669) (not e!3048043))))

(assert (=> b!4876549 (= res!2081669 (isBalanced!3966 (right!41012 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))

(declare-fun b!4876550 () Bool)

(assert (=> b!4876550 (= e!3048044 e!3048043)))

(declare-fun res!2081671 () Bool)

(assert (=> b!4876550 (=> (not res!2081671) (not e!3048043))))

(assert (=> b!4876550 (= res!2081671 (<= (- 1) (- (height!1937 (left!40682 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))) (height!1937 (right!41012 (left!40682 (prepend!1406 (c!828992 (_1!33246 lt!1997274)) (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566699 (not res!2081667)) b!4876550))

(assert (= (and b!4876550 res!2081671) b!4876546))

(assert (= (and b!4876546 res!2081670) b!4876547))

(assert (= (and b!4876547 res!2081668) b!4876549))

(assert (= (and b!4876549 res!2081669) b!4876545))

(assert (= (and b!4876545 res!2081672) b!4876548))

(declare-fun m!5879084 () Bool)

(assert (=> b!4876550 m!5879084))

(declare-fun m!5879086 () Bool)

(assert (=> b!4876550 m!5879086))

(declare-fun m!5879088 () Bool)

(assert (=> b!4876545 m!5879088))

(assert (=> b!4876546 m!5879084))

(assert (=> b!4876546 m!5879086))

(declare-fun m!5879090 () Bool)

(assert (=> b!4876549 m!5879090))

(declare-fun m!5879092 () Bool)

(assert (=> b!4876548 m!5879092))

(declare-fun m!5879094 () Bool)

(assert (=> b!4876547 m!5879094))

(assert (=> b!4874656 d!1566699))

(declare-fun b!4876551 () Bool)

(declare-fun e!3048046 () Bool)

(declare-fun e!3048045 () Bool)

(assert (=> b!4876551 (= e!3048046 e!3048045)))

(declare-fun res!2081677 () Bool)

(assert (=> b!4876551 (=> (not res!2081677) (not e!3048045))))

(assert (=> b!4876551 (= res!2081677 (<= (- 1) (- (height!1936 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) (height!1936 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))))

(declare-fun b!4876552 () Bool)

(declare-fun res!2081673 () Bool)

(assert (=> b!4876552 (=> (not res!2081673) (not e!3048045))))

(assert (=> b!4876552 (= res!2081673 (<= (- (height!1936 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) (height!1936 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) 1))))

(declare-fun b!4876553 () Bool)

(declare-fun res!2081675 () Bool)

(assert (=> b!4876553 (=> (not res!2081675) (not e!3048045))))

(assert (=> b!4876553 (= res!2081675 (isBalanced!3964 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun b!4876554 () Bool)

(declare-fun res!2081676 () Bool)

(assert (=> b!4876554 (=> (not res!2081676) (not e!3048045))))

(assert (=> b!4876554 (= res!2081676 (isBalanced!3964 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(declare-fun d!1566701 () Bool)

(declare-fun res!2081678 () Bool)

(assert (=> d!1566701 (=> res!2081678 e!3048046)))

(assert (=> d!1566701 (= res!2081678 (not ((_ is Node!14601) (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (=> d!1566701 (= (isBalanced!3964 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) e!3048046)))

(declare-fun b!4876555 () Bool)

(declare-fun res!2081674 () Bool)

(assert (=> b!4876555 (=> (not res!2081674) (not e!3048045))))

(assert (=> b!4876555 (= res!2081674 (not (isEmpty!29996 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))))

(declare-fun b!4876556 () Bool)

(assert (=> b!4876556 (= e!3048045 (not (isEmpty!29996 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))))))

(assert (= (and d!1566701 (not res!2081678)) b!4876551))

(assert (= (and b!4876551 res!2081677) b!4876552))

(assert (= (and b!4876552 res!2081673) b!4876554))

(assert (= (and b!4876554 res!2081676) b!4876553))

(assert (= (and b!4876553 res!2081675) b!4876555))

(assert (= (and b!4876555 res!2081674) b!4876556))

(declare-fun m!5879096 () Bool)

(assert (=> b!4876551 m!5879096))

(declare-fun m!5879098 () Bool)

(assert (=> b!4876551 m!5879098))

(declare-fun m!5879100 () Bool)

(assert (=> b!4876554 m!5879100))

(assert (=> b!4876552 m!5879096))

(assert (=> b!4876552 m!5879098))

(declare-fun m!5879102 () Bool)

(assert (=> b!4876553 m!5879102))

(declare-fun m!5879104 () Bool)

(assert (=> b!4876556 m!5879104))

(declare-fun m!5879106 () Bool)

(assert (=> b!4876555 m!5879106))

(assert (=> d!1565687 d!1566701))

(declare-fun d!1566703 () Bool)

(declare-fun lt!1998259 () Int)

(assert (=> d!1566703 (>= lt!1998259 0)))

(declare-fun e!3048047 () Int)

(assert (=> d!1566703 (= lt!1998259 e!3048047)))

(declare-fun c!829455 () Bool)

(assert (=> d!1566703 (= c!829455 ((_ is Nil!56007) (list!17539 (xs!17909 (c!828991 input!585)))))))

(assert (=> d!1566703 (= (size!36933 (list!17539 (xs!17909 (c!828991 input!585)))) lt!1998259)))

(declare-fun b!4876557 () Bool)

(assert (=> b!4876557 (= e!3048047 0)))

(declare-fun b!4876558 () Bool)

(assert (=> b!4876558 (= e!3048047 (+ 1 (size!36933 (t!364439 (list!17539 (xs!17909 (c!828991 input!585)))))))))

(assert (= (and d!1566703 c!829455) b!4876557))

(assert (= (and d!1566703 (not c!829455)) b!4876558))

(declare-fun m!5879108 () Bool)

(assert (=> b!4876558 m!5879108))

(assert (=> d!1565655 d!1566703))

(assert (=> d!1565655 d!1566517))

(declare-fun d!1566705 () Bool)

(declare-fun res!2081679 () Bool)

(declare-fun e!3048048 () Bool)

(assert (=> d!1566705 (=> (not res!2081679) (not e!3048048))))

(assert (=> d!1566705 (= res!2081679 (= (csize!29432 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) (+ (size!36939 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) (size!36939 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))))

(assert (=> d!1566705 (= (inv!71947 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) e!3048048)))

(declare-fun b!4876559 () Bool)

(declare-fun res!2081680 () Bool)

(assert (=> b!4876559 (=> (not res!2081680) (not e!3048048))))

(assert (=> b!4876559 (= res!2081680 (and (not (= (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) Empty!14601)) (not (= (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) Empty!14601))))))

(declare-fun b!4876560 () Bool)

(declare-fun res!2081681 () Bool)

(assert (=> b!4876560 (=> (not res!2081681) (not e!3048048))))

(assert (=> b!4876560 (= res!2081681 (= (cheight!14812 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))) (+ (max!0 (height!1936 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) (height!1936 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) 1)))))

(declare-fun b!4876561 () Bool)

(assert (=> b!4876561 (= e!3048048 (<= 0 (cheight!14812 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))))

(assert (= (and d!1566705 res!2081679) b!4876559))

(assert (= (and b!4876559 res!2081680) b!4876560))

(assert (= (and b!4876560 res!2081681) b!4876561))

(declare-fun m!5879110 () Bool)

(assert (=> d!1566705 m!5879110))

(declare-fun m!5879112 () Bool)

(assert (=> d!1566705 m!5879112))

(assert (=> b!4876560 m!5879096))

(assert (=> b!4876560 m!5879098))

(assert (=> b!4876560 m!5879096))

(assert (=> b!4876560 m!5879098))

(declare-fun m!5879114 () Bool)

(assert (=> b!4876560 m!5879114))

(assert (=> b!4874870 d!1566705))

(assert (=> b!4874629 d!1566557))

(declare-fun d!1566707 () Bool)

(declare-fun res!2081682 () Bool)

(declare-fun e!3048050 () Bool)

(assert (=> d!1566707 (=> res!2081682 e!3048050)))

(assert (=> d!1566707 (= res!2081682 (not ((_ is Node!14602) lt!1997421)))))

(assert (=> d!1566707 (= (isBalanced!3966 lt!1997421) e!3048050)))

(declare-fun b!4876562 () Bool)

(declare-fun res!2081687 () Bool)

(declare-fun e!3048049 () Bool)

(assert (=> b!4876562 (=> (not res!2081687) (not e!3048049))))

(assert (=> b!4876562 (= res!2081687 (not (isEmpty!29995 (left!40682 lt!1997421))))))

(declare-fun b!4876563 () Bool)

(declare-fun res!2081685 () Bool)

(assert (=> b!4876563 (=> (not res!2081685) (not e!3048049))))

(assert (=> b!4876563 (= res!2081685 (<= (- (height!1937 (left!40682 lt!1997421)) (height!1937 (right!41012 lt!1997421))) 1))))

(declare-fun b!4876564 () Bool)

(declare-fun res!2081683 () Bool)

(assert (=> b!4876564 (=> (not res!2081683) (not e!3048049))))

(assert (=> b!4876564 (= res!2081683 (isBalanced!3966 (left!40682 lt!1997421)))))

(declare-fun b!4876565 () Bool)

(assert (=> b!4876565 (= e!3048049 (not (isEmpty!29995 (right!41012 lt!1997421))))))

(declare-fun b!4876566 () Bool)

(declare-fun res!2081684 () Bool)

(assert (=> b!4876566 (=> (not res!2081684) (not e!3048049))))

(assert (=> b!4876566 (= res!2081684 (isBalanced!3966 (right!41012 lt!1997421)))))

(declare-fun b!4876567 () Bool)

(assert (=> b!4876567 (= e!3048050 e!3048049)))

(declare-fun res!2081686 () Bool)

(assert (=> b!4876567 (=> (not res!2081686) (not e!3048049))))

(assert (=> b!4876567 (= res!2081686 (<= (- 1) (- (height!1937 (left!40682 lt!1997421)) (height!1937 (right!41012 lt!1997421)))))))

(assert (= (and d!1566707 (not res!2081682)) b!4876567))

(assert (= (and b!4876567 res!2081686) b!4876563))

(assert (= (and b!4876563 res!2081685) b!4876564))

(assert (= (and b!4876564 res!2081683) b!4876566))

(assert (= (and b!4876566 res!2081684) b!4876562))

(assert (= (and b!4876562 res!2081687) b!4876565))

(declare-fun m!5879116 () Bool)

(assert (=> b!4876567 m!5879116))

(declare-fun m!5879118 () Bool)

(assert (=> b!4876567 m!5879118))

(declare-fun m!5879120 () Bool)

(assert (=> b!4876562 m!5879120))

(assert (=> b!4876563 m!5879116))

(assert (=> b!4876563 m!5879118))

(declare-fun m!5879122 () Bool)

(assert (=> b!4876566 m!5879122))

(declare-fun m!5879124 () Bool)

(assert (=> b!4876565 m!5879124))

(declare-fun m!5879126 () Bool)

(assert (=> b!4876564 m!5879126))

(assert (=> d!1565641 d!1566707))

(declare-fun b!4876610 () Bool)

(declare-fun e!3048079 () Conc!14602)

(declare-fun call!338574 () Conc!14602)

(assert (=> b!4876610 (= e!3048079 call!338574)))

(declare-fun b!4876611 () Bool)

(declare-fun e!3048078 () Bool)

(assert (=> b!4876611 (= e!3048078 (isBalanced!3966 (c!828992 (_1!33246 lt!1997274))))))

(declare-fun c!829478 () Bool)

(declare-fun bm!338560 () Bool)

(declare-fun call!338580 () Int)

(assert (=> bm!338560 (= call!338580 (height!1937 (ite c!829478 (left!40682 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (c!828992 (_1!33246 lt!1997274)))))))

(declare-fun bm!338561 () Bool)

(declare-fun call!338576 () Conc!14602)

(declare-fun call!338572 () Conc!14602)

(assert (=> bm!338561 (= call!338576 call!338572)))

(declare-fun b!4876612 () Bool)

(declare-fun res!2081700 () Bool)

(declare-fun e!3048073 () Bool)

(assert (=> b!4876612 (=> (not res!2081700) (not e!3048073))))

(declare-fun lt!1998268 () Conc!14602)

(assert (=> b!4876612 (= res!2081700 (isBalanced!3966 lt!1998268))))

(declare-fun d!1566709 () Bool)

(assert (=> d!1566709 e!3048073))

(declare-fun res!2081698 () Bool)

(assert (=> d!1566709 (=> (not res!2081698) (not e!3048073))))

(declare-fun appendAssocInst!883 (Conc!14602 Conc!14602) Bool)

(assert (=> d!1566709 (= res!2081698 (appendAssocInst!883 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1) (c!828992 (_1!33246 lt!1997274))))))

(declare-fun e!3048075 () Conc!14602)

(assert (=> d!1566709 (= lt!1998268 e!3048075)))

(declare-fun c!829472 () Bool)

(assert (=> d!1566709 (= c!829472 (= (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1) Empty!14602))))

(assert (=> d!1566709 e!3048078))

(declare-fun res!2081701 () Bool)

(assert (=> d!1566709 (=> (not res!2081701) (not e!3048078))))

(assert (=> d!1566709 (= res!2081701 (isBalanced!3966 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)))))

(assert (=> d!1566709 (= (++!12202 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1) (c!828992 (_1!33246 lt!1997274))) lt!1998268)))

(declare-fun bm!338562 () Bool)

(declare-fun call!338575 () Conc!14602)

(declare-fun call!338568 () Conc!14602)

(assert (=> bm!338562 (= call!338575 call!338568)))

(declare-fun b!4876613 () Bool)

(declare-fun c!829476 () Bool)

(declare-fun call!338573 () Int)

(declare-fun call!338577 () Int)

(assert (=> b!4876613 (= c!829476 (>= call!338573 call!338577))))

(declare-fun e!3048074 () Conc!14602)

(declare-fun e!3048077 () Conc!14602)

(assert (=> b!4876613 (= e!3048074 e!3048077)))

(declare-fun b!4876614 () Bool)

(declare-fun e!3048076 () Conc!14602)

(assert (=> b!4876614 (= e!3048076 e!3048074)))

(declare-fun lt!1998269 () Int)

(assert (=> b!4876614 (= c!829478 (< lt!1998269 (- 1)))))

(declare-fun b!4876615 () Bool)

(declare-fun e!3048080 () Conc!14602)

(declare-fun call!338570 () Conc!14602)

(assert (=> b!4876615 (= e!3048080 call!338570)))

(declare-fun bm!338563 () Bool)

(declare-fun call!338566 () Conc!14602)

(declare-fun call!338578 () Conc!14602)

(assert (=> bm!338563 (= call!338566 call!338578)))

(declare-fun b!4876616 () Bool)

(declare-fun e!3048072 () Conc!14602)

(assert (=> b!4876616 (= e!3048072 call!338566)))

(declare-fun bm!338564 () Bool)

(declare-fun call!338567 () Conc!14602)

(assert (=> bm!338564 (= call!338567 call!338572)))

(declare-fun bm!338565 () Bool)

(declare-fun call!338569 () Conc!14602)

(assert (=> bm!338565 (= call!338570 call!338569)))

(declare-fun b!4876617 () Bool)

(declare-fun res!2081699 () Bool)

(assert (=> b!4876617 (=> (not res!2081699) (not e!3048073))))

(assert (=> b!4876617 (= res!2081699 (>= (height!1937 lt!1998268) (max!0 (height!1937 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (height!1937 (c!828992 (_1!33246 lt!1997274))))))))

(declare-fun c!829475 () Bool)

(declare-fun bm!338566 () Bool)

(assert (=> bm!338566 (= call!338572 (++!12202 (ite c!829478 (ite c!829475 (right!41012 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (right!41012 (right!41012 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)))) (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (ite c!829478 (c!828992 (_1!33246 lt!1997274)) (ite c!829476 (left!40682 (c!828992 (_1!33246 lt!1997274))) (left!40682 (left!40682 (c!828992 (_1!33246 lt!1997274))))))))))

(declare-fun bm!338567 () Bool)

(assert (=> bm!338567 (= call!338574 call!338568)))

(declare-fun b!4876618 () Bool)

(declare-fun res!2081702 () Bool)

(assert (=> b!4876618 (=> (not res!2081702) (not e!3048073))))

(assert (=> b!4876618 (= res!2081702 (<= (height!1937 lt!1998268) (+ (max!0 (height!1937 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (height!1937 (c!828992 (_1!33246 lt!1997274)))) 1)))))

(declare-fun b!4876619 () Bool)

(assert (=> b!4876619 (= e!3048079 e!3048072)))

(declare-fun lt!1998270 () Conc!14602)

(assert (=> b!4876619 (= lt!1998270 call!338576)))

(declare-fun c!829477 () Bool)

(assert (=> b!4876619 (= c!829477 (= call!338577 (- call!338573 3)))))

(declare-fun call!338565 () Conc!14602)

(declare-fun bm!338568 () Bool)

(declare-fun c!829474 () Bool)

(declare-fun lt!1998271 () Conc!14602)

(declare-fun c!829479 () Bool)

(declare-fun <>!373 (Conc!14602 Conc!14602) Conc!14602)

(assert (=> bm!338568 (= call!338565 (<>!373 (ite c!829479 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1) (ite c!829478 (ite c!829475 (left!40682 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (ite c!829477 (left!40682 (right!41012 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1))) (left!40682 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)))) (ite c!829474 lt!1998271 (right!41012 (left!40682 (c!828992 (_1!33246 lt!1997274))))))) (ite c!829479 (c!828992 (_1!33246 lt!1997274)) (ite c!829478 (ite c!829475 call!338576 (ite c!829477 lt!1998270 (left!40682 (right!41012 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1))))) (ite c!829474 (right!41012 (left!40682 (c!828992 (_1!33246 lt!1997274)))) (right!41012 (c!828992 (_1!33246 lt!1997274))))))))))

(declare-fun b!4876620 () Bool)

(assert (=> b!4876620 (= e!3048077 call!338569)))

(declare-fun bm!338569 () Bool)

(assert (=> bm!338569 (= call!338577 (height!1937 (ite c!829478 lt!1998270 (left!40682 (c!828992 (_1!33246 lt!1997274))))))))

(declare-fun b!4876621 () Bool)

(assert (=> b!4876621 (= e!3048076 call!338565)))

(declare-fun b!4876622 () Bool)

(assert (=> b!4876622 (= e!3048077 e!3048080)))

(assert (=> b!4876622 (= lt!1998271 call!338567)))

(declare-fun call!338579 () Int)

(assert (=> b!4876622 (= c!829474 (= call!338579 (- call!338580 3)))))

(declare-fun bm!338570 () Bool)

(assert (=> bm!338570 (= call!338579 (height!1937 (ite c!829478 (right!41012 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) lt!1998271)))))

(declare-fun b!4876623 () Bool)

(assert (=> b!4876623 (= e!3048073 (= (list!17537 lt!1998268) (++!12204 (list!17537 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) (list!17537 (c!828992 (_1!33246 lt!1997274))))))))

(declare-fun call!338571 () Conc!14602)

(declare-fun bm!338571 () Bool)

(assert (=> bm!338571 (= call!338578 (<>!373 (ite c!829478 (ite c!829477 (left!40682 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1)) call!338571) (ite c!829476 call!338567 (ite c!829474 call!338575 lt!1998271))) (ite c!829478 (ite c!829477 call!338571 lt!1998270) (ite (or c!829476 c!829474) (right!41012 (c!828992 (_1!33246 lt!1997274))) call!338575))))))

(declare-fun b!4876624 () Bool)

(assert (=> b!4876624 (= e!3048072 call!338566)))

(declare-fun bm!338572 () Bool)

(assert (=> bm!338572 (= call!338568 call!338565)))

(declare-fun b!4876625 () Bool)

(assert (=> b!4876625 (= e!3048080 call!338570)))

(declare-fun b!4876626 () Bool)

(declare-fun e!3048071 () Conc!14602)

(assert (=> b!4876626 (= e!3048075 e!3048071)))

(declare-fun c!829473 () Bool)

(assert (=> b!4876626 (= c!829473 (= (c!828992 (_1!33246 lt!1997274)) Empty!14602))))

(declare-fun b!4876627 () Bool)

(assert (=> b!4876627 (= c!829479 (and (<= (- 1) lt!1998269) (<= lt!1998269 1)))))

(assert (=> b!4876627 (= lt!1998269 (- (height!1937 (c!828992 (_1!33246 lt!1997274))) (height!1937 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1))))))

(assert (=> b!4876627 (= e!3048071 e!3048076)))

(declare-fun bm!338573 () Bool)

(assert (=> bm!338573 (= call!338569 call!338578)))

(declare-fun b!4876628 () Bool)

(assert (=> b!4876628 (= c!829475 (>= call!338580 call!338579))))

(assert (=> b!4876628 (= e!3048074 e!3048079)))

(declare-fun bm!338574 () Bool)

(assert (=> bm!338574 (= call!338573 (height!1937 (ite c!829478 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1) (right!41012 (c!828992 (_1!33246 lt!1997274))))))))

(declare-fun b!4876629 () Bool)

(assert (=> b!4876629 (= e!3048071 (Leaf!24337 (fill!226 1 (_1!33245 (v!49734 lt!1997269))) 1))))

(declare-fun b!4876630 () Bool)

(assert (=> b!4876630 (= e!3048075 (c!828992 (_1!33246 lt!1997274)))))

(declare-fun bm!338575 () Bool)

(assert (=> bm!338575 (= call!338571 call!338574)))

(assert (= (and d!1566709 res!2081701) b!4876611))

(assert (= (and d!1566709 c!829472) b!4876630))

(assert (= (and d!1566709 (not c!829472)) b!4876626))

(assert (= (and b!4876626 c!829473) b!4876629))

(assert (= (and b!4876626 (not c!829473)) b!4876627))

(assert (= (and b!4876627 c!829479) b!4876621))

(assert (= (and b!4876627 (not c!829479)) b!4876614))

(assert (= (and b!4876614 c!829478) b!4876628))

(assert (= (and b!4876614 (not c!829478)) b!4876613))

(assert (= (and b!4876628 c!829475) b!4876610))

(assert (= (and b!4876628 (not c!829475)) b!4876619))

(assert (= (and b!4876619 c!829477) b!4876624))

(assert (= (and b!4876619 (not c!829477)) b!4876616))

(assert (= (or b!4876624 b!4876616) bm!338575))

(assert (= (or b!4876624 b!4876616) bm!338563))

(assert (= (or b!4876610 b!4876619) bm!338561))

(assert (= (or b!4876610 bm!338575) bm!338567))

(assert (= (and b!4876613 c!829476) b!4876620))

(assert (= (and b!4876613 (not c!829476)) b!4876622))

(assert (= (and b!4876622 c!829474) b!4876615))

(assert (= (and b!4876622 (not c!829474)) b!4876625))

(assert (= (or b!4876615 b!4876625) bm!338562))

(assert (= (or b!4876615 b!4876625) bm!338565))

(assert (= (or b!4876620 b!4876622) bm!338564))

(assert (= (or b!4876620 bm!338565) bm!338573))

(assert (= (or bm!338563 bm!338573) bm!338571))

(assert (= (or b!4876628 b!4876622) bm!338560))

(assert (= (or b!4876619 b!4876613) bm!338574))

(assert (= (or b!4876619 b!4876613) bm!338569))

(assert (= (or b!4876628 b!4876622) bm!338570))

(assert (= (or bm!338561 bm!338564) bm!338566))

(assert (= (or bm!338567 bm!338562) bm!338572))

(assert (= (or b!4876621 bm!338572) bm!338568))

(assert (= (and d!1566709 res!2081698) b!4876612))

(assert (= (and b!4876612 res!2081700) b!4876618))

(assert (= (and b!4876618 res!2081702) b!4876617))

(assert (= (and b!4876617 res!2081699) b!4876623))

(declare-fun m!5879128 () Bool)

(assert (=> bm!338571 m!5879128))

(declare-fun m!5879130 () Bool)

(assert (=> bm!338569 m!5879130))

(declare-fun m!5879132 () Bool)

(assert (=> b!4876618 m!5879132))

(declare-fun m!5879134 () Bool)

(assert (=> b!4876618 m!5879134))

(declare-fun m!5879136 () Bool)

(assert (=> b!4876618 m!5879136))

(assert (=> b!4876618 m!5879134))

(assert (=> b!4876618 m!5879136))

(declare-fun m!5879138 () Bool)

(assert (=> b!4876618 m!5879138))

(declare-fun m!5879140 () Bool)

(assert (=> d!1566709 m!5879140))

(declare-fun m!5879142 () Bool)

(assert (=> d!1566709 m!5879142))

(declare-fun m!5879144 () Bool)

(assert (=> bm!338574 m!5879144))

(declare-fun m!5879146 () Bool)

(assert (=> bm!338568 m!5879146))

(assert (=> b!4876627 m!5879136))

(assert (=> b!4876627 m!5879134))

(declare-fun m!5879148 () Bool)

(assert (=> b!4876623 m!5879148))

(declare-fun m!5879150 () Bool)

(assert (=> b!4876623 m!5879150))

(assert (=> b!4876623 m!5875932))

(assert (=> b!4876623 m!5879150))

(assert (=> b!4876623 m!5875932))

(declare-fun m!5879152 () Bool)

(assert (=> b!4876623 m!5879152))

(declare-fun m!5879154 () Bool)

(assert (=> bm!338560 m!5879154))

(declare-fun m!5879156 () Bool)

(assert (=> bm!338570 m!5879156))

(assert (=> b!4876617 m!5879132))

(assert (=> b!4876617 m!5879134))

(assert (=> b!4876617 m!5879136))

(assert (=> b!4876617 m!5879134))

(assert (=> b!4876617 m!5879136))

(assert (=> b!4876617 m!5879138))

(assert (=> b!4876611 m!5875928))

(declare-fun m!5879158 () Bool)

(assert (=> b!4876612 m!5879158))

(declare-fun m!5879160 () Bool)

(assert (=> bm!338566 m!5879160))

(assert (=> d!1565641 d!1566709))

(declare-fun d!1566711 () Bool)

(declare-fun lt!1998274 () IArray!29265)

(declare-fun fill!229 (Int Token!14680) List!56133)

(assert (=> d!1566711 (= lt!1998274 (IArray!29266 (fill!229 1 (_1!33245 (v!49734 lt!1997269)))))))

(declare-fun choose!35645 (Int Token!14680) IArray!29265)

(assert (=> d!1566711 (= lt!1998274 (choose!35645 1 (_1!33245 (v!49734 lt!1997269))))))

(assert (=> d!1566711 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1566711 (= (fill!226 1 (_1!33245 (v!49734 lt!1997269))) lt!1998274)))

(declare-fun bs!1175116 () Bool)

(assert (= bs!1175116 d!1566711))

(declare-fun m!5879162 () Bool)

(assert (=> bs!1175116 m!5879162))

(declare-fun m!5879164 () Bool)

(assert (=> bs!1175116 m!5879164))

(assert (=> d!1565641 d!1566711))

(declare-fun d!1566713 () Bool)

(declare-fun res!2081703 () Bool)

(declare-fun e!3048082 () Bool)

(assert (=> d!1566713 (=> res!2081703 e!3048082)))

(assert (=> d!1566713 (= res!2081703 (not ((_ is Node!14602) (c!828992 (_1!33246 lt!1997274)))))))

(assert (=> d!1566713 (= (isBalanced!3966 (c!828992 (_1!33246 lt!1997274))) e!3048082)))

(declare-fun b!4876631 () Bool)

(declare-fun res!2081708 () Bool)

(declare-fun e!3048081 () Bool)

(assert (=> b!4876631 (=> (not res!2081708) (not e!3048081))))

(assert (=> b!4876631 (= res!2081708 (not (isEmpty!29995 (left!40682 (c!828992 (_1!33246 lt!1997274))))))))

(declare-fun b!4876632 () Bool)

(declare-fun res!2081706 () Bool)

(assert (=> b!4876632 (=> (not res!2081706) (not e!3048081))))

(assert (=> b!4876632 (= res!2081706 (<= (- (height!1937 (left!40682 (c!828992 (_1!33246 lt!1997274)))) (height!1937 (right!41012 (c!828992 (_1!33246 lt!1997274))))) 1))))

(declare-fun b!4876633 () Bool)

(declare-fun res!2081704 () Bool)

(assert (=> b!4876633 (=> (not res!2081704) (not e!3048081))))

(assert (=> b!4876633 (= res!2081704 (isBalanced!3966 (left!40682 (c!828992 (_1!33246 lt!1997274)))))))

(declare-fun b!4876634 () Bool)

(assert (=> b!4876634 (= e!3048081 (not (isEmpty!29995 (right!41012 (c!828992 (_1!33246 lt!1997274))))))))

(declare-fun b!4876635 () Bool)

(declare-fun res!2081705 () Bool)

(assert (=> b!4876635 (=> (not res!2081705) (not e!3048081))))

(assert (=> b!4876635 (= res!2081705 (isBalanced!3966 (right!41012 (c!828992 (_1!33246 lt!1997274)))))))

(declare-fun b!4876636 () Bool)

(assert (=> b!4876636 (= e!3048082 e!3048081)))

(declare-fun res!2081707 () Bool)

(assert (=> b!4876636 (=> (not res!2081707) (not e!3048081))))

(assert (=> b!4876636 (= res!2081707 (<= (- 1) (- (height!1937 (left!40682 (c!828992 (_1!33246 lt!1997274)))) (height!1937 (right!41012 (c!828992 (_1!33246 lt!1997274)))))))))

(assert (= (and d!1566713 (not res!2081703)) b!4876636))

(assert (= (and b!4876636 res!2081707) b!4876632))

(assert (= (and b!4876632 res!2081706) b!4876633))

(assert (= (and b!4876633 res!2081704) b!4876635))

(assert (= (and b!4876635 res!2081705) b!4876631))

(assert (= (and b!4876631 res!2081708) b!4876634))

(declare-fun m!5879166 () Bool)

(assert (=> b!4876636 m!5879166))

(declare-fun m!5879168 () Bool)

(assert (=> b!4876636 m!5879168))

(declare-fun m!5879170 () Bool)

(assert (=> b!4876631 m!5879170))

(assert (=> b!4876632 m!5879166))

(assert (=> b!4876632 m!5879168))

(declare-fun m!5879172 () Bool)

(assert (=> b!4876635 m!5879172))

(declare-fun m!5879174 () Bool)

(assert (=> b!4876634 m!5879174))

(declare-fun m!5879176 () Bool)

(assert (=> b!4876633 m!5879176))

(assert (=> d!1565641 d!1566713))

(declare-fun b!4876637 () Bool)

(declare-fun res!2081714 () Bool)

(declare-fun e!3048084 () Bool)

(assert (=> b!4876637 (=> (not res!2081714) (not e!3048084))))

(declare-fun lt!1998277 () Option!13802)

(assert (=> b!4876637 (= res!2081714 (= (value!258510 (_1!33248 (get!19248 lt!1998277))) (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1998277)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998277)))))))))

(declare-fun b!4876638 () Bool)

(declare-fun e!3048083 () Bool)

(assert (=> b!4876638 (= e!3048083 e!3048084)))

(declare-fun res!2081711 () Bool)

(assert (=> b!4876638 (=> (not res!2081711) (not e!3048084))))

(assert (=> b!4876638 (= res!2081711 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998277))))))))

(declare-fun d!1566715 () Bool)

(assert (=> d!1566715 e!3048083))

(declare-fun res!2081709 () Bool)

(assert (=> d!1566715 (=> res!2081709 e!3048083)))

(assert (=> d!1566715 (= res!2081709 (isEmpty!29998 lt!1998277))))

(declare-fun e!3048086 () Option!13802)

(assert (=> d!1566715 (= lt!1998277 e!3048086)))

(declare-fun c!829480 () Bool)

(declare-fun lt!1998276 () tuple2!59900)

(assert (=> d!1566715 (= c!829480 (isEmpty!30003 (_1!33253 lt!1998276)))))

(assert (=> d!1566715 (= lt!1998276 (findLongestMatch!1641 (regex!8048 (h!62456 rules!1164)) lt!1997273))))

(assert (=> d!1566715 (ruleValid!3635 thiss!11460 (h!62456 rules!1164))))

(assert (=> d!1566715 (= (maxPrefixOneRule!3496 thiss!11460 (h!62456 rules!1164) lt!1997273) lt!1998277)))

(declare-fun b!4876639 () Bool)

(assert (=> b!4876639 (= e!3048086 (Some!13801 (tuple2!59891 (Token!14681 (apply!13508 (transformation!8048 (h!62456 rules!1164)) (seqFromList!5903 (_1!33253 lt!1998276))) (h!62456 rules!1164) (size!36931 (seqFromList!5903 (_1!33253 lt!1998276))) (_1!33253 lt!1998276)) (_2!33253 lt!1998276))))))

(declare-fun lt!1998275 () Unit!146004)

(assert (=> b!4876639 (= lt!1998275 (longestMatchIsAcceptedByMatchOrIsEmpty!1690 (regex!8048 (h!62456 rules!1164)) lt!1997273))))

(declare-fun res!2081712 () Bool)

(assert (=> b!4876639 (= res!2081712 (isEmpty!30003 (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997273 lt!1997273 (size!36933 lt!1997273)))))))

(declare-fun e!3048085 () Bool)

(assert (=> b!4876639 (=> res!2081712 e!3048085)))

(assert (=> b!4876639 e!3048085))

(declare-fun lt!1998278 () Unit!146004)

(assert (=> b!4876639 (= lt!1998278 lt!1998275)))

(declare-fun lt!1998279 () Unit!146004)

(assert (=> b!4876639 (= lt!1998279 (lemmaSemiInverse!2558 (transformation!8048 (h!62456 rules!1164)) (seqFromList!5903 (_1!33253 lt!1998276))))))

(declare-fun b!4876640 () Bool)

(assert (=> b!4876640 (= e!3048085 (matchR!6497 (regex!8048 (h!62456 rules!1164)) (_1!33253 (findLongestMatchInner!1727 (regex!8048 (h!62456 rules!1164)) Nil!56007 (size!36933 Nil!56007) lt!1997273 lt!1997273 (size!36933 lt!1997273)))))))

(declare-fun b!4876641 () Bool)

(declare-fun res!2081710 () Bool)

(assert (=> b!4876641 (=> (not res!2081710) (not e!3048084))))

(assert (=> b!4876641 (= res!2081710 (< (size!36933 (_2!33248 (get!19248 lt!1998277))) (size!36933 lt!1997273)))))

(declare-fun b!4876642 () Bool)

(assert (=> b!4876642 (= e!3048086 None!13801)))

(declare-fun b!4876643 () Bool)

(declare-fun res!2081713 () Bool)

(assert (=> b!4876643 (=> (not res!2081713) (not e!3048084))))

(assert (=> b!4876643 (= res!2081713 (= (rule!11198 (_1!33248 (get!19248 lt!1998277))) (h!62456 rules!1164)))))

(declare-fun b!4876644 () Bool)

(assert (=> b!4876644 (= e!3048084 (= (size!36930 (_1!33248 (get!19248 lt!1998277))) (size!36933 (originalCharacters!8371 (_1!33248 (get!19248 lt!1998277))))))))

(declare-fun b!4876645 () Bool)

(declare-fun res!2081715 () Bool)

(assert (=> b!4876645 (=> (not res!2081715) (not e!3048084))))

(assert (=> b!4876645 (= res!2081715 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1998277)))) (_2!33248 (get!19248 lt!1998277))) lt!1997273))))

(assert (= (and d!1566715 c!829480) b!4876642))

(assert (= (and d!1566715 (not c!829480)) b!4876639))

(assert (= (and b!4876639 (not res!2081712)) b!4876640))

(assert (= (and d!1566715 (not res!2081709)) b!4876638))

(assert (= (and b!4876638 res!2081711) b!4876645))

(assert (= (and b!4876645 res!2081715) b!4876641))

(assert (= (and b!4876641 res!2081710) b!4876643))

(assert (= (and b!4876643 res!2081713) b!4876637))

(assert (= (and b!4876637 res!2081714) b!4876644))

(declare-fun m!5879178 () Bool)

(assert (=> d!1566715 m!5879178))

(declare-fun m!5879180 () Bool)

(assert (=> d!1566715 m!5879180))

(declare-fun m!5879182 () Bool)

(assert (=> d!1566715 m!5879182))

(assert (=> d!1566715 m!5876012))

(assert (=> b!4876640 m!5876208))

(assert (=> b!4876640 m!5875626))

(assert (=> b!4876640 m!5876208))

(assert (=> b!4876640 m!5875626))

(declare-fun m!5879184 () Bool)

(assert (=> b!4876640 m!5879184))

(declare-fun m!5879186 () Bool)

(assert (=> b!4876640 m!5879186))

(declare-fun m!5879188 () Bool)

(assert (=> b!4876641 m!5879188))

(declare-fun m!5879190 () Bool)

(assert (=> b!4876641 m!5879190))

(assert (=> b!4876641 m!5875626))

(assert (=> b!4876638 m!5879188))

(declare-fun m!5879192 () Bool)

(assert (=> b!4876638 m!5879192))

(assert (=> b!4876638 m!5879192))

(declare-fun m!5879194 () Bool)

(assert (=> b!4876638 m!5879194))

(assert (=> b!4876638 m!5879194))

(declare-fun m!5879196 () Bool)

(assert (=> b!4876638 m!5879196))

(assert (=> b!4876644 m!5879188))

(declare-fun m!5879198 () Bool)

(assert (=> b!4876644 m!5879198))

(declare-fun m!5879200 () Bool)

(assert (=> b!4876639 m!5879200))

(declare-fun m!5879202 () Bool)

(assert (=> b!4876639 m!5879202))

(declare-fun m!5879204 () Bool)

(assert (=> b!4876639 m!5879204))

(declare-fun m!5879206 () Bool)

(assert (=> b!4876639 m!5879206))

(assert (=> b!4876639 m!5879200))

(declare-fun m!5879208 () Bool)

(assert (=> b!4876639 m!5879208))

(assert (=> b!4876639 m!5875626))

(assert (=> b!4876639 m!5876208))

(assert (=> b!4876639 m!5879200))

(declare-fun m!5879210 () Bool)

(assert (=> b!4876639 m!5879210))

(assert (=> b!4876639 m!5876208))

(assert (=> b!4876639 m!5875626))

(assert (=> b!4876639 m!5879184))

(assert (=> b!4876639 m!5879200))

(assert (=> b!4876637 m!5879188))

(declare-fun m!5879212 () Bool)

(assert (=> b!4876637 m!5879212))

(assert (=> b!4876637 m!5879212))

(declare-fun m!5879214 () Bool)

(assert (=> b!4876637 m!5879214))

(assert (=> b!4876643 m!5879188))

(assert (=> b!4876645 m!5879188))

(assert (=> b!4876645 m!5879192))

(assert (=> b!4876645 m!5879192))

(assert (=> b!4876645 m!5879194))

(assert (=> b!4876645 m!5879194))

(declare-fun m!5879216 () Bool)

(assert (=> b!4876645 m!5879216))

(assert (=> bm!338394 d!1566715))

(declare-fun d!1566717 () Bool)

(declare-fun lt!1998280 () Int)

(assert (=> d!1566717 (>= lt!1998280 0)))

(declare-fun e!3048087 () Int)

(assert (=> d!1566717 (= lt!1998280 e!3048087)))

(declare-fun c!829481 () Bool)

(assert (=> d!1566717 (= c!829481 ((_ is Nil!56007) (innerList!14689 (xs!17909 (c!828991 input!585)))))))

(assert (=> d!1566717 (= (size!36933 (innerList!14689 (xs!17909 (c!828991 input!585)))) lt!1998280)))

(declare-fun b!4876646 () Bool)

(assert (=> b!4876646 (= e!3048087 0)))

(declare-fun b!4876647 () Bool)

(assert (=> b!4876647 (= e!3048087 (+ 1 (size!36933 (t!364439 (innerList!14689 (xs!17909 (c!828991 input!585)))))))))

(assert (= (and d!1566717 c!829481) b!4876646))

(assert (= (and d!1566717 (not c!829481)) b!4876647))

(declare-fun m!5879218 () Bool)

(assert (=> b!4876647 m!5879218))

(assert (=> d!1565653 d!1566717))

(assert (=> b!4874754 d!1566541))

(assert (=> b!4874735 d!1566473))

(assert (=> b!4874859 d!1566527))

(assert (=> b!4874859 d!1566529))

(assert (=> b!4874859 d!1566471))

(assert (=> b!4874859 d!1565563))

(assert (=> b!4874824 d!1566415))

(declare-fun d!1566719 () Bool)

(assert (=> d!1566719 (= (apply!13508 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489))))) (dynLambda!22517 (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489))))))))

(declare-fun b_lambda!193913 () Bool)

(assert (=> (not b_lambda!193913) (not d!1566719)))

(declare-fun t!364575 () Bool)

(declare-fun tb!258279 () Bool)

(assert (=> (and b!4874320 (= (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364575) tb!258279))

(declare-fun result!321510 () Bool)

(assert (=> tb!258279 (= result!321510 (inv!21 (dynLambda!22517 (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489))))) (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489)))))))))

(declare-fun m!5879220 () Bool)

(assert (=> tb!258279 m!5879220))

(assert (=> d!1566719 t!364575))

(declare-fun b_and!343465 () Bool)

(assert (= b_and!343453 (and (=> t!364575 result!321510) b_and!343465)))

(declare-fun tb!258281 () Bool)

(declare-fun t!364577 () Bool)

(assert (=> (and b!4874507 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364577) tb!258281))

(declare-fun result!321512 () Bool)

(assert (= result!321512 result!321510))

(assert (=> d!1566719 t!364577))

(declare-fun b_and!343467 () Bool)

(assert (= b_and!343455 (and (=> t!364577 result!321512) b_and!343467)))

(declare-fun tb!258283 () Bool)

(declare-fun t!364579 () Bool)

(assert (=> (and b!4874954 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364579) tb!258283))

(declare-fun result!321514 () Bool)

(assert (= result!321514 result!321510))

(assert (=> d!1566719 t!364579))

(declare-fun b_and!343469 () Bool)

(assert (= b_and!343457 (and (=> t!364579 result!321514) b_and!343469)))

(assert (=> d!1566719 m!5876150))

(declare-fun m!5879222 () Bool)

(assert (=> d!1566719 m!5879222))

(assert (=> b!4874824 d!1566719))

(declare-fun d!1566721 () Bool)

(assert (=> d!1566721 (= (seqFromList!5903 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489)))) (fromListB!2685 (originalCharacters!8371 (_1!33248 (get!19248 lt!1997489)))))))

(declare-fun bs!1175117 () Bool)

(assert (= bs!1175117 d!1566721))

(declare-fun m!5879224 () Bool)

(assert (=> bs!1175117 m!5879224))

(assert (=> b!4874824 d!1566721))

(assert (=> b!4874689 d!1566703))

(assert (=> b!4874689 d!1566517))

(declare-fun b!4876650 () Bool)

(declare-fun res!2081716 () Bool)

(declare-fun e!3048089 () Bool)

(assert (=> b!4876650 (=> (not res!2081716) (not e!3048089))))

(declare-fun lt!1998281 () List!56131)

(assert (=> b!4876650 (= res!2081716 (= (size!36933 lt!1998281) (+ (size!36933 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) (size!36933 (_2!33248 (get!19248 lt!1997484))))))))

(declare-fun b!4876648 () Bool)

(declare-fun e!3048090 () List!56131)

(assert (=> b!4876648 (= e!3048090 (_2!33248 (get!19248 lt!1997484)))))

(declare-fun b!4876651 () Bool)

(assert (=> b!4876651 (= e!3048089 (or (not (= (_2!33248 (get!19248 lt!1997484)) Nil!56007)) (= lt!1998281 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))))))))

(declare-fun b!4876649 () Bool)

(assert (=> b!4876649 (= e!3048090 (Cons!56007 (h!62455 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) (++!12201 (t!364439 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) (_2!33248 (get!19248 lt!1997484)))))))

(declare-fun d!1566723 () Bool)

(assert (=> d!1566723 e!3048089))

(declare-fun res!2081717 () Bool)

(assert (=> d!1566723 (=> (not res!2081717) (not e!3048089))))

(assert (=> d!1566723 (= res!2081717 (= (content!9993 lt!1998281) ((_ map or) (content!9993 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))) (content!9993 (_2!33248 (get!19248 lt!1997484))))))))

(assert (=> d!1566723 (= lt!1998281 e!3048090)))

(declare-fun c!829482 () Bool)

(assert (=> d!1566723 (= c!829482 ((_ is Nil!56007) (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484))))))))

(assert (=> d!1566723 (= (++!12201 (list!17533 (charsOf!5347 (_1!33248 (get!19248 lt!1997484)))) (_2!33248 (get!19248 lt!1997484))) lt!1998281)))

(assert (= (and d!1566723 c!829482) b!4876648))

(assert (= (and d!1566723 (not c!829482)) b!4876649))

(assert (= (and d!1566723 res!2081717) b!4876650))

(assert (= (and b!4876650 res!2081716) b!4876651))

(declare-fun m!5879226 () Bool)

(assert (=> b!4876650 m!5879226))

(assert (=> b!4876650 m!5876112))

(declare-fun m!5879228 () Bool)

(assert (=> b!4876650 m!5879228))

(assert (=> b!4876650 m!5876132))

(declare-fun m!5879230 () Bool)

(assert (=> b!4876649 m!5879230))

(declare-fun m!5879232 () Bool)

(assert (=> d!1566723 m!5879232))

(assert (=> d!1566723 m!5876112))

(declare-fun m!5879234 () Bool)

(assert (=> d!1566723 m!5879234))

(declare-fun m!5879236 () Bool)

(assert (=> d!1566723 m!5879236))

(assert (=> b!4874813 d!1566723))

(assert (=> b!4874813 d!1566601))

(assert (=> b!4874813 d!1566603))

(assert (=> b!4874813 d!1566403))

(declare-fun d!1566725 () Bool)

(declare-fun lt!1998284 () Bool)

(declare-fun content!10000 (List!56135) (InoxSet String!63208))

(assert (=> d!1566725 (= lt!1998284 (select (content!10000 Nil!56011) (tag!8912 (h!62456 rules!1164))))))

(declare-fun e!3048095 () Bool)

(assert (=> d!1566725 (= lt!1998284 e!3048095)))

(declare-fun res!2081722 () Bool)

(assert (=> d!1566725 (=> (not res!2081722) (not e!3048095))))

(assert (=> d!1566725 (= res!2081722 ((_ is Cons!56011) Nil!56011))))

(assert (=> d!1566725 (= (contains!19405 Nil!56011 (tag!8912 (h!62456 rules!1164))) lt!1998284)))

(declare-fun b!4876656 () Bool)

(declare-fun e!3048096 () Bool)

(assert (=> b!4876656 (= e!3048095 e!3048096)))

(declare-fun res!2081723 () Bool)

(assert (=> b!4876656 (=> res!2081723 e!3048096)))

(assert (=> b!4876656 (= res!2081723 (= (h!62459 Nil!56011) (tag!8912 (h!62456 rules!1164))))))

(declare-fun b!4876657 () Bool)

(assert (=> b!4876657 (= e!3048096 (contains!19405 (t!364451 Nil!56011) (tag!8912 (h!62456 rules!1164))))))

(assert (= (and d!1566725 res!2081722) b!4876656))

(assert (= (and b!4876656 (not res!2081723)) b!4876657))

(declare-fun m!5879238 () Bool)

(assert (=> d!1566725 m!5879238))

(declare-fun m!5879240 () Bool)

(assert (=> d!1566725 m!5879240))

(declare-fun m!5879242 () Bool)

(assert (=> b!4876657 m!5879242))

(assert (=> b!4874679 d!1566725))

(declare-fun d!1566727 () Bool)

(assert (=> d!1566727 (= (inv!71938 (tag!8912 (h!62456 (t!364440 (t!364440 rules!1164))))) (= (mod (str.len (value!258509 (tag!8912 (h!62456 (t!364440 (t!364440 rules!1164)))))) 2) 0))))

(assert (=> b!4874953 d!1566727))

(declare-fun d!1566729 () Bool)

(declare-fun res!2081724 () Bool)

(declare-fun e!3048097 () Bool)

(assert (=> d!1566729 (=> (not res!2081724) (not e!3048097))))

(assert (=> d!1566729 (= res!2081724 (semiInverseModEq!3551 (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164)))))))))

(assert (=> d!1566729 (= (inv!71942 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) e!3048097)))

(declare-fun b!4876658 () Bool)

(assert (=> b!4876658 (= e!3048097 (equivClasses!3430 (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164)))))))))

(assert (= (and d!1566729 res!2081724) b!4876658))

(declare-fun m!5879244 () Bool)

(assert (=> d!1566729 m!5879244))

(declare-fun m!5879246 () Bool)

(assert (=> b!4876658 m!5879246))

(assert (=> b!4874953 d!1566729))

(assert (=> d!1565659 d!1565693))

(assert (=> d!1565659 d!1565533))

(declare-fun d!1566731 () Bool)

(declare-fun lt!1998285 () Int)

(assert (=> d!1566731 (= lt!1998285 (size!36933 (list!17535 (c!828991 (_2!33245 (v!49734 lt!1997269))))))))

(assert (=> d!1566731 (= lt!1998285 (ite ((_ is Empty!14601) (c!828991 (_2!33245 (v!49734 lt!1997269)))) 0 (ite ((_ is Leaf!24336) (c!828991 (_2!33245 (v!49734 lt!1997269)))) (csize!29433 (c!828991 (_2!33245 (v!49734 lt!1997269)))) (csize!29432 (c!828991 (_2!33245 (v!49734 lt!1997269)))))))))

(assert (=> d!1566731 (= (size!36939 (c!828991 (_2!33245 (v!49734 lt!1997269)))) lt!1998285)))

(declare-fun bs!1175118 () Bool)

(assert (= bs!1175118 d!1566731))

(assert (=> bs!1175118 m!5875536))

(assert (=> bs!1175118 m!5875536))

(declare-fun m!5879248 () Bool)

(assert (=> bs!1175118 m!5879248))

(assert (=> d!1565659 d!1566731))

(declare-fun d!1566733 () Bool)

(assert (=> d!1566733 (= (isEmpty!29997 lt!1997360) (not ((_ is Some!13800) lt!1997360)))))

(assert (=> d!1565637 d!1566733))

(declare-fun b!4876660 () Bool)

(declare-fun res!2081728 () Bool)

(declare-fun e!3048100 () Bool)

(assert (=> b!4876660 (=> (not res!2081728) (not e!3048100))))

(assert (=> b!4876660 (= res!2081728 (= (head!10419 lt!1997452) (head!10419 lt!1997451)))))

(declare-fun b!4876662 () Bool)

(declare-fun e!3048099 () Bool)

(assert (=> b!4876662 (= e!3048099 (>= (size!36933 lt!1997451) (size!36933 lt!1997452)))))

(declare-fun d!1566735 () Bool)

(assert (=> d!1566735 e!3048099))

(declare-fun res!2081726 () Bool)

(assert (=> d!1566735 (=> res!2081726 e!3048099)))

(declare-fun lt!1998286 () Bool)

(assert (=> d!1566735 (= res!2081726 (not lt!1998286))))

(declare-fun e!3048098 () Bool)

(assert (=> d!1566735 (= lt!1998286 e!3048098)))

(declare-fun res!2081725 () Bool)

(assert (=> d!1566735 (=> res!2081725 e!3048098)))

(assert (=> d!1566735 (= res!2081725 ((_ is Nil!56007) lt!1997452))))

(assert (=> d!1566735 (= (isPrefix!4772 lt!1997452 lt!1997451) lt!1998286)))

(declare-fun b!4876659 () Bool)

(assert (=> b!4876659 (= e!3048098 e!3048100)))

(declare-fun res!2081727 () Bool)

(assert (=> b!4876659 (=> (not res!2081727) (not e!3048100))))

(assert (=> b!4876659 (= res!2081727 (not ((_ is Nil!56007) lt!1997451)))))

(declare-fun b!4876661 () Bool)

(assert (=> b!4876661 (= e!3048100 (isPrefix!4772 (tail!9565 lt!1997452) (tail!9565 lt!1997451)))))

(assert (= (and d!1566735 (not res!2081725)) b!4876659))

(assert (= (and b!4876659 res!2081727) b!4876660))

(assert (= (and b!4876660 res!2081728) b!4876661))

(assert (= (and d!1566735 (not res!2081726)) b!4876662))

(declare-fun m!5879250 () Bool)

(assert (=> b!4876660 m!5879250))

(declare-fun m!5879252 () Bool)

(assert (=> b!4876660 m!5879252))

(declare-fun m!5879254 () Bool)

(assert (=> b!4876662 m!5879254))

(declare-fun m!5879256 () Bool)

(assert (=> b!4876662 m!5879256))

(declare-fun m!5879258 () Bool)

(assert (=> b!4876661 m!5879258))

(declare-fun m!5879260 () Bool)

(assert (=> b!4876661 m!5879260))

(assert (=> b!4876661 m!5879258))

(assert (=> b!4876661 m!5879260))

(declare-fun m!5879262 () Bool)

(assert (=> b!4876661 m!5879262))

(assert (=> d!1565685 d!1566735))

(declare-fun d!1566737 () Bool)

(assert (=> d!1566737 (isPrefix!4772 lt!1997452 lt!1997451)))

(declare-fun lt!1998287 () Unit!146004)

(assert (=> d!1566737 (= lt!1998287 (choose!35632 lt!1997452 lt!1997451))))

(assert (=> d!1566737 (= (lemmaIsPrefixRefl!3169 lt!1997452 lt!1997451) lt!1998287)))

(declare-fun bs!1175119 () Bool)

(assert (= bs!1175119 d!1566737))

(assert (=> bs!1175119 m!5876052))

(declare-fun m!5879264 () Bool)

(assert (=> bs!1175119 m!5879264))

(assert (=> d!1565685 d!1566737))

(declare-fun d!1566739 () Bool)

(assert (=> d!1566739 (= (isDefined!10861 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585))) (not (isEmpty!29998 (maxPrefixZipper!569 thiss!11460 (t!364440 rules!1164) (list!17533 input!585)))))))

(declare-fun bs!1175120 () Bool)

(assert (= bs!1175120 d!1566739))

(assert (=> bs!1175120 m!5875868))

(declare-fun m!5879266 () Bool)

(assert (=> bs!1175120 m!5879266))

(assert (=> d!1565685 d!1566739))

(assert (=> d!1565685 d!1565563))

(assert (=> d!1565685 d!1566541))

(assert (=> d!1565685 d!1566557))

(assert (=> d!1565685 d!1566405))

(declare-fun d!1566741 () Bool)

(assert (=> d!1566741 (= (isEmpty!29998 lt!1997489) (not ((_ is Some!13801) lt!1997489)))))

(assert (=> d!1565727 d!1566741))

(assert (=> d!1565727 d!1566069))

(assert (=> d!1565727 d!1566071))

(assert (=> d!1565727 d!1565679))

(declare-fun d!1566743 () Bool)

(declare-fun lt!1998288 () Bool)

(assert (=> d!1566743 (= lt!1998288 (select (content!9996 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))

(declare-fun e!3048102 () Bool)

(assert (=> d!1566743 (= lt!1998288 e!3048102)))

(declare-fun res!2081729 () Bool)

(assert (=> d!1566743 (=> (not res!2081729) (not e!3048102))))

(assert (=> d!1566743 (= res!2081729 ((_ is Cons!56008) rules!1164))))

(assert (=> d!1566743 (= (contains!19406 rules!1164 (rule!11198 (_1!33248 (get!19248 lt!1997489)))) lt!1998288)))

(declare-fun b!4876663 () Bool)

(declare-fun e!3048101 () Bool)

(assert (=> b!4876663 (= e!3048102 e!3048101)))

(declare-fun res!2081730 () Bool)

(assert (=> b!4876663 (=> res!2081730 e!3048101)))

(assert (=> b!4876663 (= res!2081730 (= (h!62456 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))

(declare-fun b!4876664 () Bool)

(assert (=> b!4876664 (= e!3048101 (contains!19406 (t!364440 rules!1164) (rule!11198 (_1!33248 (get!19248 lt!1997489)))))))

(assert (= (and d!1566743 res!2081729) b!4876663))

(assert (= (and b!4876663 (not res!2081730)) b!4876664))

(assert (=> d!1566743 m!5878634))

(declare-fun m!5879268 () Bool)

(assert (=> d!1566743 m!5879268))

(declare-fun m!5879270 () Bool)

(assert (=> b!4876664 m!5879270))

(assert (=> b!4874820 d!1566743))

(assert (=> b!4874820 d!1566415))

(declare-fun tp!1371989 () Bool)

(declare-fun e!3048103 () Bool)

(declare-fun b!4876665 () Bool)

(declare-fun tp!1371988 () Bool)

(assert (=> b!4876665 (= e!3048103 (and (inv!71943 (left!40681 (left!40681 (right!41011 (c!828991 input!585))))) tp!1371988 (inv!71943 (right!41011 (left!40681 (right!41011 (c!828991 input!585))))) tp!1371989))))

(declare-fun b!4876667 () Bool)

(declare-fun e!3048104 () Bool)

(declare-fun tp!1371987 () Bool)

(assert (=> b!4876667 (= e!3048104 tp!1371987)))

(declare-fun b!4876666 () Bool)

(assert (=> b!4876666 (= e!3048103 (and (inv!71949 (xs!17909 (left!40681 (right!41011 (c!828991 input!585))))) e!3048104))))

(assert (=> b!4874947 (= tp!1371720 (and (inv!71943 (left!40681 (right!41011 (c!828991 input!585)))) e!3048103))))

(assert (= (and b!4874947 ((_ is Node!14601) (left!40681 (right!41011 (c!828991 input!585))))) b!4876665))

(assert (= b!4876666 b!4876667))

(assert (= (and b!4874947 ((_ is Leaf!24336) (left!40681 (right!41011 (c!828991 input!585))))) b!4876666))

(declare-fun m!5879272 () Bool)

(assert (=> b!4876665 m!5879272))

(declare-fun m!5879274 () Bool)

(assert (=> b!4876665 m!5879274))

(declare-fun m!5879276 () Bool)

(assert (=> b!4876666 m!5879276))

(assert (=> b!4874947 m!5876296))

(declare-fun e!3048105 () Bool)

(declare-fun tp!1371991 () Bool)

(declare-fun tp!1371992 () Bool)

(declare-fun b!4876668 () Bool)

(assert (=> b!4876668 (= e!3048105 (and (inv!71943 (left!40681 (right!41011 (right!41011 (c!828991 input!585))))) tp!1371991 (inv!71943 (right!41011 (right!41011 (right!41011 (c!828991 input!585))))) tp!1371992))))

(declare-fun b!4876670 () Bool)

(declare-fun e!3048106 () Bool)

(declare-fun tp!1371990 () Bool)

(assert (=> b!4876670 (= e!3048106 tp!1371990)))

(declare-fun b!4876669 () Bool)

(assert (=> b!4876669 (= e!3048105 (and (inv!71949 (xs!17909 (right!41011 (right!41011 (c!828991 input!585))))) e!3048106))))

(assert (=> b!4874947 (= tp!1371721 (and (inv!71943 (right!41011 (right!41011 (c!828991 input!585)))) e!3048105))))

(assert (= (and b!4874947 ((_ is Node!14601) (right!41011 (right!41011 (c!828991 input!585))))) b!4876668))

(assert (= b!4876669 b!4876670))

(assert (= (and b!4874947 ((_ is Leaf!24336) (right!41011 (right!41011 (c!828991 input!585))))) b!4876669))

(declare-fun m!5879278 () Bool)

(assert (=> b!4876668 m!5879278))

(declare-fun m!5879280 () Bool)

(assert (=> b!4876668 m!5879280))

(declare-fun m!5879282 () Bool)

(assert (=> b!4876669 m!5879282))

(assert (=> b!4874947 m!5876298))

(declare-fun b!4876671 () Bool)

(declare-fun e!3048107 () Bool)

(assert (=> b!4876671 (= e!3048107 tp_is_empty!35673)))

(declare-fun b!4876673 () Bool)

(declare-fun tp!1371997 () Bool)

(assert (=> b!4876673 (= e!3048107 tp!1371997)))

(declare-fun b!4876674 () Bool)

(declare-fun tp!1371995 () Bool)

(declare-fun tp!1371996 () Bool)

(assert (=> b!4876674 (= e!3048107 (and tp!1371995 tp!1371996))))

(declare-fun b!4876672 () Bool)

(declare-fun tp!1371994 () Bool)

(declare-fun tp!1371993 () Bool)

(assert (=> b!4876672 (= e!3048107 (and tp!1371994 tp!1371993))))

(assert (=> b!4874969 (= tp!1371745 e!3048107)))

(assert (= (and b!4874969 ((_ is ElementMatch!13123) (reg!13452 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876671))

(assert (= (and b!4874969 ((_ is Concat!21482) (reg!13452 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876672))

(assert (= (and b!4874969 ((_ is Star!13123) (reg!13452 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876673))

(assert (= (and b!4874969 ((_ is Union!13123) (reg!13452 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876674))

(declare-fun b!4876675 () Bool)

(declare-fun e!3048108 () Bool)

(assert (=> b!4876675 (= e!3048108 tp_is_empty!35673)))

(declare-fun b!4876677 () Bool)

(declare-fun tp!1372002 () Bool)

(assert (=> b!4876677 (= e!3048108 tp!1372002)))

(declare-fun b!4876678 () Bool)

(declare-fun tp!1372000 () Bool)

(declare-fun tp!1372001 () Bool)

(assert (=> b!4876678 (= e!3048108 (and tp!1372000 tp!1372001))))

(declare-fun b!4876676 () Bool)

(declare-fun tp!1371999 () Bool)

(declare-fun tp!1371998 () Bool)

(assert (=> b!4876676 (= e!3048108 (and tp!1371999 tp!1371998))))

(assert (=> b!4874968 (= tp!1371742 e!3048108)))

(assert (= (and b!4874968 ((_ is ElementMatch!13123) (regOne!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876675))

(assert (= (and b!4874968 ((_ is Concat!21482) (regOne!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876676))

(assert (= (and b!4874968 ((_ is Star!13123) (regOne!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876677))

(assert (= (and b!4874968 ((_ is Union!13123) (regOne!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876678))

(declare-fun b!4876679 () Bool)

(declare-fun e!3048109 () Bool)

(assert (=> b!4876679 (= e!3048109 tp_is_empty!35673)))

(declare-fun b!4876681 () Bool)

(declare-fun tp!1372007 () Bool)

(assert (=> b!4876681 (= e!3048109 tp!1372007)))

(declare-fun b!4876682 () Bool)

(declare-fun tp!1372005 () Bool)

(declare-fun tp!1372006 () Bool)

(assert (=> b!4876682 (= e!3048109 (and tp!1372005 tp!1372006))))

(declare-fun b!4876680 () Bool)

(declare-fun tp!1372004 () Bool)

(declare-fun tp!1372003 () Bool)

(assert (=> b!4876680 (= e!3048109 (and tp!1372004 tp!1372003))))

(assert (=> b!4874968 (= tp!1371741 e!3048109)))

(assert (= (and b!4874968 ((_ is ElementMatch!13123) (regTwo!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876679))

(assert (= (and b!4874968 ((_ is Concat!21482) (regTwo!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876680))

(assert (= (and b!4874968 ((_ is Star!13123) (regTwo!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876681))

(assert (= (and b!4874968 ((_ is Union!13123) (regTwo!26758 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876682))

(declare-fun b!4876683 () Bool)

(declare-fun e!3048110 () Bool)

(declare-fun tp!1372008 () Bool)

(assert (=> b!4876683 (= e!3048110 (and tp_is_empty!35673 tp!1372008))))

(assert (=> b!4874949 (= tp!1371719 e!3048110)))

(assert (= (and b!4874949 ((_ is Cons!56007) (innerList!14689 (xs!17909 (right!41011 (c!828991 input!585)))))) b!4876683))

(declare-fun b!4876684 () Bool)

(declare-fun e!3048111 () Bool)

(assert (=> b!4876684 (= e!3048111 tp_is_empty!35673)))

(declare-fun b!4876686 () Bool)

(declare-fun tp!1372013 () Bool)

(assert (=> b!4876686 (= e!3048111 tp!1372013)))

(declare-fun b!4876687 () Bool)

(declare-fun tp!1372011 () Bool)

(declare-fun tp!1372012 () Bool)

(assert (=> b!4876687 (= e!3048111 (and tp!1372011 tp!1372012))))

(declare-fun b!4876685 () Bool)

(declare-fun tp!1372010 () Bool)

(declare-fun tp!1372009 () Bool)

(assert (=> b!4876685 (= e!3048111 (and tp!1372010 tp!1372009))))

(assert (=> b!4874970 (= tp!1371743 e!3048111)))

(assert (= (and b!4874970 ((_ is ElementMatch!13123) (regOne!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876684))

(assert (= (and b!4874970 ((_ is Concat!21482) (regOne!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876685))

(assert (= (and b!4874970 ((_ is Star!13123) (regOne!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876686))

(assert (= (and b!4874970 ((_ is Union!13123) (regOne!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876687))

(declare-fun b!4876688 () Bool)

(declare-fun e!3048112 () Bool)

(assert (=> b!4876688 (= e!3048112 tp_is_empty!35673)))

(declare-fun b!4876690 () Bool)

(declare-fun tp!1372018 () Bool)

(assert (=> b!4876690 (= e!3048112 tp!1372018)))

(declare-fun b!4876691 () Bool)

(declare-fun tp!1372016 () Bool)

(declare-fun tp!1372017 () Bool)

(assert (=> b!4876691 (= e!3048112 (and tp!1372016 tp!1372017))))

(declare-fun b!4876689 () Bool)

(declare-fun tp!1372015 () Bool)

(declare-fun tp!1372014 () Bool)

(assert (=> b!4876689 (= e!3048112 (and tp!1372015 tp!1372014))))

(assert (=> b!4874970 (= tp!1371744 e!3048112)))

(assert (= (and b!4874970 ((_ is ElementMatch!13123) (regTwo!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876688))

(assert (= (and b!4874970 ((_ is Concat!21482) (regTwo!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876689))

(assert (= (and b!4874970 ((_ is Star!13123) (regTwo!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876690))

(assert (= (and b!4874970 ((_ is Union!13123) (regTwo!26759 (regTwo!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876691))

(declare-fun b!4876694 () Bool)

(declare-fun b_free!130819 () Bool)

(declare-fun b_next!131609 () Bool)

(assert (=> b!4876694 (= b_free!130819 (not b_next!131609))))

(declare-fun t!364581 () Bool)

(declare-fun tb!258285 () Bool)

(assert (=> (and b!4876694 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364581) tb!258285))

(declare-fun result!321516 () Bool)

(assert (= result!321516 result!321442))

(assert (=> d!1566195 t!364581))

(declare-fun tb!258287 () Bool)

(declare-fun t!364583 () Bool)

(assert (=> (and b!4876694 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364583) tb!258287))

(declare-fun result!321518 () Bool)

(assert (= result!321518 result!321498))

(assert (=> d!1566505 t!364583))

(declare-fun t!364585 () Bool)

(declare-fun tb!258289 () Bool)

(assert (=> (and b!4876694 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364585) tb!258289))

(declare-fun result!321520 () Bool)

(assert (= result!321520 result!321510))

(assert (=> d!1566719 t!364585))

(declare-fun t!364587 () Bool)

(declare-fun tb!258291 () Bool)

(assert (=> (and b!4876694 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164)))) t!364587) tb!258291))

(declare-fun result!321522 () Bool)

(assert (= result!321522 result!321450))

(assert (=> d!1566195 t!364587))

(assert (=> d!1566341 t!364581))

(declare-fun tp!1372019 () Bool)

(declare-fun b_and!343471 () Bool)

(assert (=> b!4876694 (= tp!1372019 (and (=> t!364587 result!321522) (=> t!364581 result!321516) (=> t!364585 result!321520) (=> t!364583 result!321518) b_and!343471))))

(declare-fun b_free!130821 () Bool)

(declare-fun b_next!131611 () Bool)

(assert (=> b!4876694 (= b_free!130821 (not b_next!131611))))

(declare-fun t!364589 () Bool)

(declare-fun tb!258293 () Bool)

(assert (=> (and b!4876694 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269)))))) t!364589) tb!258293))

(declare-fun result!321524 () Bool)

(assert (= result!321524 result!321378))

(assert (=> d!1565561 t!364589))

(declare-fun t!364591 () Bool)

(declare-fun tb!258295 () Bool)

(assert (=> (and b!4876694 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997489)))))) t!364591) tb!258295))

(declare-fun result!321526 () Bool)

(assert (= result!321526 result!321462))

(assert (=> d!1566411 t!364591))

(declare-fun t!364593 () Bool)

(declare-fun tb!258297 () Bool)

(assert (=> (and b!4876694 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toChars!10786 (transformation!8048 (rule!11198 (_1!33248 (get!19248 lt!1997484)))))) t!364593) tb!258297))

(declare-fun result!321528 () Bool)

(assert (= result!321528 result!321504))

(assert (=> d!1566603 t!364593))

(declare-fun b_and!343473 () Bool)

(declare-fun tp!1372021 () Bool)

(assert (=> b!4876694 (= tp!1372021 (and (=> t!364589 result!321524) (=> t!364591 result!321526) (=> t!364593 result!321528) b_and!343473))))

(declare-fun e!3048115 () Bool)

(assert (=> b!4876694 (= e!3048115 (and tp!1372019 tp!1372021))))

(declare-fun tp!1372020 () Bool)

(declare-fun e!3048116 () Bool)

(declare-fun b!4876693 () Bool)

(assert (=> b!4876693 (= e!3048116 (and tp!1372020 (inv!71938 (tag!8912 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (inv!71942 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) e!3048115))))

(declare-fun b!4876692 () Bool)

(declare-fun e!3048114 () Bool)

(declare-fun tp!1372022 () Bool)

(assert (=> b!4876692 (= e!3048114 (and e!3048116 tp!1372022))))

(assert (=> b!4874952 (= tp!1371725 e!3048114)))

(assert (= b!4876693 b!4876694))

(assert (= b!4876692 b!4876693))

(assert (= (and b!4874952 ((_ is Cons!56008) (t!364440 (t!364440 (t!364440 rules!1164))))) b!4876692))

(declare-fun m!5879284 () Bool)

(assert (=> b!4876693 m!5879284))

(declare-fun m!5879286 () Bool)

(assert (=> b!4876693 m!5879286))

(declare-fun b!4876695 () Bool)

(declare-fun e!3048117 () Bool)

(assert (=> b!4876695 (= e!3048117 tp_is_empty!35673)))

(declare-fun b!4876697 () Bool)

(declare-fun tp!1372027 () Bool)

(assert (=> b!4876697 (= e!3048117 tp!1372027)))

(declare-fun b!4876698 () Bool)

(declare-fun tp!1372025 () Bool)

(declare-fun tp!1372026 () Bool)

(assert (=> b!4876698 (= e!3048117 (and tp!1372025 tp!1372026))))

(declare-fun b!4876696 () Bool)

(declare-fun tp!1372024 () Bool)

(declare-fun tp!1372023 () Bool)

(assert (=> b!4876696 (= e!3048117 (and tp!1372024 tp!1372023))))

(assert (=> b!4874961 (= tp!1371735 e!3048117)))

(assert (= (and b!4874961 ((_ is ElementMatch!13123) (reg!13452 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876695))

(assert (= (and b!4874961 ((_ is Concat!21482) (reg!13452 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876696))

(assert (= (and b!4874961 ((_ is Star!13123) (reg!13452 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876697))

(assert (= (and b!4874961 ((_ is Union!13123) (reg!13452 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876698))

(declare-fun b!4876699 () Bool)

(declare-fun e!3048118 () Bool)

(assert (=> b!4876699 (= e!3048118 tp_is_empty!35673)))

(declare-fun b!4876701 () Bool)

(declare-fun tp!1372032 () Bool)

(assert (=> b!4876701 (= e!3048118 tp!1372032)))

(declare-fun b!4876702 () Bool)

(declare-fun tp!1372030 () Bool)

(declare-fun tp!1372031 () Bool)

(assert (=> b!4876702 (= e!3048118 (and tp!1372030 tp!1372031))))

(declare-fun b!4876700 () Bool)

(declare-fun tp!1372029 () Bool)

(declare-fun tp!1372028 () Bool)

(assert (=> b!4876700 (= e!3048118 (and tp!1372029 tp!1372028))))

(assert (=> b!4874960 (= tp!1371732 e!3048118)))

(assert (= (and b!4874960 ((_ is ElementMatch!13123) (regOne!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876699))

(assert (= (and b!4874960 ((_ is Concat!21482) (regOne!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876700))

(assert (= (and b!4874960 ((_ is Star!13123) (regOne!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876701))

(assert (= (and b!4874960 ((_ is Union!13123) (regOne!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876702))

(declare-fun b!4876703 () Bool)

(declare-fun e!3048119 () Bool)

(assert (=> b!4876703 (= e!3048119 tp_is_empty!35673)))

(declare-fun b!4876705 () Bool)

(declare-fun tp!1372037 () Bool)

(assert (=> b!4876705 (= e!3048119 tp!1372037)))

(declare-fun b!4876706 () Bool)

(declare-fun tp!1372035 () Bool)

(declare-fun tp!1372036 () Bool)

(assert (=> b!4876706 (= e!3048119 (and tp!1372035 tp!1372036))))

(declare-fun b!4876704 () Bool)

(declare-fun tp!1372034 () Bool)

(declare-fun tp!1372033 () Bool)

(assert (=> b!4876704 (= e!3048119 (and tp!1372034 tp!1372033))))

(assert (=> b!4874960 (= tp!1371731 e!3048119)))

(assert (= (and b!4874960 ((_ is ElementMatch!13123) (regTwo!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876703))

(assert (= (and b!4874960 ((_ is Concat!21482) (regTwo!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876704))

(assert (= (and b!4874960 ((_ is Star!13123) (regTwo!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876705))

(assert (= (and b!4874960 ((_ is Union!13123) (regTwo!26758 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876706))

(declare-fun e!3048120 () Bool)

(declare-fun tp!1372040 () Bool)

(declare-fun tp!1372039 () Bool)

(declare-fun b!4876707 () Bool)

(assert (=> b!4876707 (= e!3048120 (and (inv!71943 (left!40681 (left!40681 (left!40681 (c!828991 input!585))))) tp!1372039 (inv!71943 (right!41011 (left!40681 (left!40681 (c!828991 input!585))))) tp!1372040))))

(declare-fun b!4876709 () Bool)

(declare-fun e!3048121 () Bool)

(declare-fun tp!1372038 () Bool)

(assert (=> b!4876709 (= e!3048121 tp!1372038)))

(declare-fun b!4876708 () Bool)

(assert (=> b!4876708 (= e!3048120 (and (inv!71949 (xs!17909 (left!40681 (left!40681 (c!828991 input!585))))) e!3048121))))

(assert (=> b!4874944 (= tp!1371717 (and (inv!71943 (left!40681 (left!40681 (c!828991 input!585)))) e!3048120))))

(assert (= (and b!4874944 ((_ is Node!14601) (left!40681 (left!40681 (c!828991 input!585))))) b!4876707))

(assert (= b!4876708 b!4876709))

(assert (= (and b!4874944 ((_ is Leaf!24336) (left!40681 (left!40681 (c!828991 input!585))))) b!4876708))

(declare-fun m!5879288 () Bool)

(assert (=> b!4876707 m!5879288))

(declare-fun m!5879290 () Bool)

(assert (=> b!4876707 m!5879290))

(declare-fun m!5879292 () Bool)

(assert (=> b!4876708 m!5879292))

(assert (=> b!4874944 m!5876290))

(declare-fun e!3048122 () Bool)

(declare-fun b!4876710 () Bool)

(declare-fun tp!1372043 () Bool)

(declare-fun tp!1372042 () Bool)

(assert (=> b!4876710 (= e!3048122 (and (inv!71943 (left!40681 (right!41011 (left!40681 (c!828991 input!585))))) tp!1372042 (inv!71943 (right!41011 (right!41011 (left!40681 (c!828991 input!585))))) tp!1372043))))

(declare-fun b!4876712 () Bool)

(declare-fun e!3048123 () Bool)

(declare-fun tp!1372041 () Bool)

(assert (=> b!4876712 (= e!3048123 tp!1372041)))

(declare-fun b!4876711 () Bool)

(assert (=> b!4876711 (= e!3048122 (and (inv!71949 (xs!17909 (right!41011 (left!40681 (c!828991 input!585))))) e!3048123))))

(assert (=> b!4874944 (= tp!1371718 (and (inv!71943 (right!41011 (left!40681 (c!828991 input!585)))) e!3048122))))

(assert (= (and b!4874944 ((_ is Node!14601) (right!41011 (left!40681 (c!828991 input!585))))) b!4876710))

(assert (= b!4876711 b!4876712))

(assert (= (and b!4874944 ((_ is Leaf!24336) (right!41011 (left!40681 (c!828991 input!585))))) b!4876711))

(declare-fun m!5879294 () Bool)

(assert (=> b!4876710 m!5879294))

(declare-fun m!5879296 () Bool)

(assert (=> b!4876710 m!5879296))

(declare-fun m!5879298 () Bool)

(assert (=> b!4876711 m!5879298))

(assert (=> b!4874944 m!5876292))

(declare-fun b!4876713 () Bool)

(declare-fun e!3048124 () Bool)

(assert (=> b!4876713 (= e!3048124 tp_is_empty!35673)))

(declare-fun b!4876715 () Bool)

(declare-fun tp!1372048 () Bool)

(assert (=> b!4876715 (= e!3048124 tp!1372048)))

(declare-fun b!4876716 () Bool)

(declare-fun tp!1372046 () Bool)

(declare-fun tp!1372047 () Bool)

(assert (=> b!4876716 (= e!3048124 (and tp!1372046 tp!1372047))))

(declare-fun b!4876714 () Bool)

(declare-fun tp!1372045 () Bool)

(declare-fun tp!1372044 () Bool)

(assert (=> b!4876714 (= e!3048124 (and tp!1372045 tp!1372044))))

(assert (=> b!4874933 (= tp!1371712 e!3048124)))

(assert (= (and b!4874933 ((_ is ElementMatch!13123) (reg!13452 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876713))

(assert (= (and b!4874933 ((_ is Concat!21482) (reg!13452 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876714))

(assert (= (and b!4874933 ((_ is Star!13123) (reg!13452 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876715))

(assert (= (and b!4874933 ((_ is Union!13123) (reg!13452 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876716))

(declare-fun b!4876717 () Bool)

(declare-fun e!3048125 () Bool)

(assert (=> b!4876717 (= e!3048125 tp_is_empty!35673)))

(declare-fun b!4876719 () Bool)

(declare-fun tp!1372053 () Bool)

(assert (=> b!4876719 (= e!3048125 tp!1372053)))

(declare-fun b!4876720 () Bool)

(declare-fun tp!1372051 () Bool)

(declare-fun tp!1372052 () Bool)

(assert (=> b!4876720 (= e!3048125 (and tp!1372051 tp!1372052))))

(declare-fun b!4876718 () Bool)

(declare-fun tp!1372050 () Bool)

(declare-fun tp!1372049 () Bool)

(assert (=> b!4876718 (= e!3048125 (and tp!1372050 tp!1372049))))

(assert (=> b!4874966 (= tp!1371738 e!3048125)))

(assert (= (and b!4874966 ((_ is ElementMatch!13123) (regOne!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876717))

(assert (= (and b!4874966 ((_ is Concat!21482) (regOne!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876718))

(assert (= (and b!4874966 ((_ is Star!13123) (regOne!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876719))

(assert (= (and b!4874966 ((_ is Union!13123) (regOne!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876720))

(declare-fun b!4876721 () Bool)

(declare-fun e!3048126 () Bool)

(assert (=> b!4876721 (= e!3048126 tp_is_empty!35673)))

(declare-fun b!4876723 () Bool)

(declare-fun tp!1372058 () Bool)

(assert (=> b!4876723 (= e!3048126 tp!1372058)))

(declare-fun b!4876724 () Bool)

(declare-fun tp!1372056 () Bool)

(declare-fun tp!1372057 () Bool)

(assert (=> b!4876724 (= e!3048126 (and tp!1372056 tp!1372057))))

(declare-fun b!4876722 () Bool)

(declare-fun tp!1372055 () Bool)

(declare-fun tp!1372054 () Bool)

(assert (=> b!4876722 (= e!3048126 (and tp!1372055 tp!1372054))))

(assert (=> b!4874966 (= tp!1371739 e!3048126)))

(assert (= (and b!4874966 ((_ is ElementMatch!13123) (regTwo!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876721))

(assert (= (and b!4874966 ((_ is Concat!21482) (regTwo!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876722))

(assert (= (and b!4874966 ((_ is Star!13123) (regTwo!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876723))

(assert (= (and b!4874966 ((_ is Union!13123) (regTwo!26759 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876724))

(declare-fun b!4876725 () Bool)

(declare-fun e!3048127 () Bool)

(assert (=> b!4876725 (= e!3048127 tp_is_empty!35673)))

(declare-fun b!4876727 () Bool)

(declare-fun tp!1372063 () Bool)

(assert (=> b!4876727 (= e!3048127 tp!1372063)))

(declare-fun b!4876728 () Bool)

(declare-fun tp!1372061 () Bool)

(declare-fun tp!1372062 () Bool)

(assert (=> b!4876728 (= e!3048127 (and tp!1372061 tp!1372062))))

(declare-fun b!4876726 () Bool)

(declare-fun tp!1372060 () Bool)

(declare-fun tp!1372059 () Bool)

(assert (=> b!4876726 (= e!3048127 (and tp!1372060 tp!1372059))))

(assert (=> b!4874932 (= tp!1371709 e!3048127)))

(assert (= (and b!4874932 ((_ is ElementMatch!13123) (regOne!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876725))

(assert (= (and b!4874932 ((_ is Concat!21482) (regOne!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876726))

(assert (= (and b!4874932 ((_ is Star!13123) (regOne!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876727))

(assert (= (and b!4874932 ((_ is Union!13123) (regOne!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876728))

(declare-fun b!4876729 () Bool)

(declare-fun e!3048128 () Bool)

(assert (=> b!4876729 (= e!3048128 tp_is_empty!35673)))

(declare-fun b!4876731 () Bool)

(declare-fun tp!1372068 () Bool)

(assert (=> b!4876731 (= e!3048128 tp!1372068)))

(declare-fun b!4876732 () Bool)

(declare-fun tp!1372066 () Bool)

(declare-fun tp!1372067 () Bool)

(assert (=> b!4876732 (= e!3048128 (and tp!1372066 tp!1372067))))

(declare-fun b!4876730 () Bool)

(declare-fun tp!1372065 () Bool)

(declare-fun tp!1372064 () Bool)

(assert (=> b!4876730 (= e!3048128 (and tp!1372065 tp!1372064))))

(assert (=> b!4874932 (= tp!1371708 e!3048128)))

(assert (= (and b!4874932 ((_ is ElementMatch!13123) (regTwo!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876729))

(assert (= (and b!4874932 ((_ is Concat!21482) (regTwo!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876730))

(assert (= (and b!4874932 ((_ is Star!13123) (regTwo!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876731))

(assert (= (and b!4874932 ((_ is Union!13123) (regTwo!26758 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876732))

(declare-fun b!4876733 () Bool)

(declare-fun e!3048129 () Bool)

(assert (=> b!4876733 (= e!3048129 tp_is_empty!35673)))

(declare-fun b!4876735 () Bool)

(declare-fun tp!1372073 () Bool)

(assert (=> b!4876735 (= e!3048129 tp!1372073)))

(declare-fun b!4876736 () Bool)

(declare-fun tp!1372071 () Bool)

(declare-fun tp!1372072 () Bool)

(assert (=> b!4876736 (= e!3048129 (and tp!1372071 tp!1372072))))

(declare-fun b!4876734 () Bool)

(declare-fun tp!1372070 () Bool)

(declare-fun tp!1372069 () Bool)

(assert (=> b!4876734 (= e!3048129 (and tp!1372070 tp!1372069))))

(assert (=> b!4874957 (= tp!1371730 e!3048129)))

(assert (= (and b!4874957 ((_ is ElementMatch!13123) (reg!13452 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876733))

(assert (= (and b!4874957 ((_ is Concat!21482) (reg!13452 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876734))

(assert (= (and b!4874957 ((_ is Star!13123) (reg!13452 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876735))

(assert (= (and b!4874957 ((_ is Union!13123) (reg!13452 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876736))

(declare-fun b!4876737 () Bool)

(declare-fun e!3048130 () Bool)

(assert (=> b!4876737 (= e!3048130 tp_is_empty!35673)))

(declare-fun b!4876739 () Bool)

(declare-fun tp!1372078 () Bool)

(assert (=> b!4876739 (= e!3048130 tp!1372078)))

(declare-fun b!4876740 () Bool)

(declare-fun tp!1372076 () Bool)

(declare-fun tp!1372077 () Bool)

(assert (=> b!4876740 (= e!3048130 (and tp!1372076 tp!1372077))))

(declare-fun b!4876738 () Bool)

(declare-fun tp!1372075 () Bool)

(declare-fun tp!1372074 () Bool)

(assert (=> b!4876738 (= e!3048130 (and tp!1372075 tp!1372074))))

(assert (=> b!4874934 (= tp!1371710 e!3048130)))

(assert (= (and b!4874934 ((_ is ElementMatch!13123) (regOne!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876737))

(assert (= (and b!4874934 ((_ is Concat!21482) (regOne!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876738))

(assert (= (and b!4874934 ((_ is Star!13123) (regOne!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876739))

(assert (= (and b!4874934 ((_ is Union!13123) (regOne!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876740))

(declare-fun b!4876741 () Bool)

(declare-fun e!3048131 () Bool)

(assert (=> b!4876741 (= e!3048131 tp_is_empty!35673)))

(declare-fun b!4876743 () Bool)

(declare-fun tp!1372083 () Bool)

(assert (=> b!4876743 (= e!3048131 tp!1372083)))

(declare-fun b!4876744 () Bool)

(declare-fun tp!1372081 () Bool)

(declare-fun tp!1372082 () Bool)

(assert (=> b!4876744 (= e!3048131 (and tp!1372081 tp!1372082))))

(declare-fun b!4876742 () Bool)

(declare-fun tp!1372080 () Bool)

(declare-fun tp!1372079 () Bool)

(assert (=> b!4876742 (= e!3048131 (and tp!1372080 tp!1372079))))

(assert (=> b!4874934 (= tp!1371711 e!3048131)))

(assert (= (and b!4874934 ((_ is ElementMatch!13123) (regTwo!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876741))

(assert (= (and b!4874934 ((_ is Concat!21482) (regTwo!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876742))

(assert (= (and b!4874934 ((_ is Star!13123) (regTwo!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876743))

(assert (= (and b!4874934 ((_ is Union!13123) (regTwo!26759 (regex!8048 (h!62456 (t!364440 rules!1164)))))) b!4876744))

(declare-fun b!4876745 () Bool)

(declare-fun e!3048132 () Bool)

(assert (=> b!4876745 (= e!3048132 tp_is_empty!35673)))

(declare-fun b!4876747 () Bool)

(declare-fun tp!1372088 () Bool)

(assert (=> b!4876747 (= e!3048132 tp!1372088)))

(declare-fun b!4876748 () Bool)

(declare-fun tp!1372086 () Bool)

(declare-fun tp!1372087 () Bool)

(assert (=> b!4876748 (= e!3048132 (and tp!1372086 tp!1372087))))

(declare-fun b!4876746 () Bool)

(declare-fun tp!1372085 () Bool)

(declare-fun tp!1372084 () Bool)

(assert (=> b!4876746 (= e!3048132 (and tp!1372085 tp!1372084))))

(assert (=> b!4874958 (= tp!1371728 e!3048132)))

(assert (= (and b!4874958 ((_ is ElementMatch!13123) (regOne!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876745))

(assert (= (and b!4874958 ((_ is Concat!21482) (regOne!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876746))

(assert (= (and b!4874958 ((_ is Star!13123) (regOne!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876747))

(assert (= (and b!4874958 ((_ is Union!13123) (regOne!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876748))

(declare-fun b!4876749 () Bool)

(declare-fun e!3048133 () Bool)

(assert (=> b!4876749 (= e!3048133 tp_is_empty!35673)))

(declare-fun b!4876751 () Bool)

(declare-fun tp!1372093 () Bool)

(assert (=> b!4876751 (= e!3048133 tp!1372093)))

(declare-fun b!4876752 () Bool)

(declare-fun tp!1372091 () Bool)

(declare-fun tp!1372092 () Bool)

(assert (=> b!4876752 (= e!3048133 (and tp!1372091 tp!1372092))))

(declare-fun b!4876750 () Bool)

(declare-fun tp!1372090 () Bool)

(declare-fun tp!1372089 () Bool)

(assert (=> b!4876750 (= e!3048133 (and tp!1372090 tp!1372089))))

(assert (=> b!4874958 (= tp!1371729 e!3048133)))

(assert (= (and b!4874958 ((_ is ElementMatch!13123) (regTwo!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876749))

(assert (= (and b!4874958 ((_ is Concat!21482) (regTwo!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876750))

(assert (= (and b!4874958 ((_ is Star!13123) (regTwo!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876751))

(assert (= (and b!4874958 ((_ is Union!13123) (regTwo!26759 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876752))

(declare-fun b!4876753 () Bool)

(declare-fun e!3048134 () Bool)

(declare-fun tp!1372094 () Bool)

(assert (=> b!4876753 (= e!3048134 (and tp_is_empty!35673 tp!1372094))))

(assert (=> b!4874943 (= tp!1371715 e!3048134)))

(assert (= (and b!4874943 ((_ is Cons!56007) (t!364439 (innerList!14689 (xs!17909 (c!828991 input!585)))))) b!4876753))

(declare-fun e!3048135 () Bool)

(declare-fun b!4876754 () Bool)

(declare-fun tp!1372097 () Bool)

(declare-fun tp!1372096 () Bool)

(assert (=> b!4876754 (= e!3048135 (and (inv!71943 (left!40681 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) tp!1372096 (inv!71943 (right!41011 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) tp!1372097))))

(declare-fun b!4876756 () Bool)

(declare-fun e!3048136 () Bool)

(declare-fun tp!1372095 () Bool)

(assert (=> b!4876756 (= e!3048136 tp!1372095)))

(declare-fun b!4876755 () Bool)

(assert (=> b!4876755 (= e!3048135 (and (inv!71949 (xs!17909 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) e!3048136))))

(assert (=> b!4874971 (= tp!1371747 (and (inv!71943 (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) e!3048135))))

(assert (= (and b!4874971 ((_ is Node!14601) (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) b!4876754))

(assert (= b!4876755 b!4876756))

(assert (= (and b!4874971 ((_ is Leaf!24336) (left!40681 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) b!4876755))

(declare-fun m!5879300 () Bool)

(assert (=> b!4876754 m!5879300))

(declare-fun m!5879302 () Bool)

(assert (=> b!4876754 m!5879302))

(declare-fun m!5879304 () Bool)

(assert (=> b!4876755 m!5879304))

(assert (=> b!4874971 m!5876306))

(declare-fun b!4876757 () Bool)

(declare-fun e!3048137 () Bool)

(declare-fun tp!1372099 () Bool)

(declare-fun tp!1372100 () Bool)

(assert (=> b!4876757 (= e!3048137 (and (inv!71943 (left!40681 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) tp!1372099 (inv!71943 (right!41011 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) tp!1372100))))

(declare-fun b!4876759 () Bool)

(declare-fun e!3048138 () Bool)

(declare-fun tp!1372098 () Bool)

(assert (=> b!4876759 (= e!3048138 tp!1372098)))

(declare-fun b!4876758 () Bool)

(assert (=> b!4876758 (= e!3048137 (and (inv!71949 (xs!17909 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) e!3048138))))

(assert (=> b!4874971 (= tp!1371748 (and (inv!71943 (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))) e!3048137))))

(assert (= (and b!4874971 ((_ is Node!14601) (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) b!4876757))

(assert (= b!4876758 b!4876759))

(assert (= (and b!4874971 ((_ is Leaf!24336) (right!41011 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269)))))))) b!4876758))

(declare-fun m!5879306 () Bool)

(assert (=> b!4876757 m!5879306))

(declare-fun m!5879308 () Bool)

(assert (=> b!4876757 m!5879308))

(declare-fun m!5879310 () Bool)

(assert (=> b!4876758 m!5879310))

(assert (=> b!4874971 m!5876308))

(declare-fun b!4876760 () Bool)

(declare-fun e!3048139 () Bool)

(declare-fun tp!1372101 () Bool)

(assert (=> b!4876760 (= e!3048139 (and tp_is_empty!35673 tp!1372101))))

(assert (=> b!4874973 (= tp!1371746 e!3048139)))

(assert (= (and b!4874973 ((_ is Cons!56007) (innerList!14689 (xs!17909 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (rule!11198 (_1!33245 (v!49734 lt!1997269))))) (value!258510 (_1!33245 (v!49734 lt!1997269))))))))) b!4876760))

(declare-fun b!4876761 () Bool)

(declare-fun e!3048140 () Bool)

(assert (=> b!4876761 (= e!3048140 tp_is_empty!35673)))

(declare-fun b!4876763 () Bool)

(declare-fun tp!1372106 () Bool)

(assert (=> b!4876763 (= e!3048140 tp!1372106)))

(declare-fun b!4876764 () Bool)

(declare-fun tp!1372104 () Bool)

(declare-fun tp!1372105 () Bool)

(assert (=> b!4876764 (= e!3048140 (and tp!1372104 tp!1372105))))

(declare-fun b!4876762 () Bool)

(declare-fun tp!1372103 () Bool)

(declare-fun tp!1372102 () Bool)

(assert (=> b!4876762 (= e!3048140 (and tp!1372103 tp!1372102))))

(assert (=> b!4874964 (= tp!1371737 e!3048140)))

(assert (= (and b!4874964 ((_ is ElementMatch!13123) (regOne!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876761))

(assert (= (and b!4874964 ((_ is Concat!21482) (regOne!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876762))

(assert (= (and b!4874964 ((_ is Star!13123) (regOne!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876763))

(assert (= (and b!4874964 ((_ is Union!13123) (regOne!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876764))

(declare-fun b!4876765 () Bool)

(declare-fun e!3048141 () Bool)

(assert (=> b!4876765 (= e!3048141 tp_is_empty!35673)))

(declare-fun b!4876767 () Bool)

(declare-fun tp!1372111 () Bool)

(assert (=> b!4876767 (= e!3048141 tp!1372111)))

(declare-fun b!4876768 () Bool)

(declare-fun tp!1372109 () Bool)

(declare-fun tp!1372110 () Bool)

(assert (=> b!4876768 (= e!3048141 (and tp!1372109 tp!1372110))))

(declare-fun b!4876766 () Bool)

(declare-fun tp!1372108 () Bool)

(declare-fun tp!1372107 () Bool)

(assert (=> b!4876766 (= e!3048141 (and tp!1372108 tp!1372107))))

(assert (=> b!4874964 (= tp!1371736 e!3048141)))

(assert (= (and b!4874964 ((_ is ElementMatch!13123) (regTwo!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876765))

(assert (= (and b!4874964 ((_ is Concat!21482) (regTwo!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876766))

(assert (= (and b!4874964 ((_ is Star!13123) (regTwo!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876767))

(assert (= (and b!4874964 ((_ is Union!13123) (regTwo!26758 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876768))

(declare-fun b!4876769 () Bool)

(declare-fun e!3048142 () Bool)

(assert (=> b!4876769 (= e!3048142 tp_is_empty!35673)))

(declare-fun b!4876771 () Bool)

(declare-fun tp!1372116 () Bool)

(assert (=> b!4876771 (= e!3048142 tp!1372116)))

(declare-fun b!4876772 () Bool)

(declare-fun tp!1372114 () Bool)

(declare-fun tp!1372115 () Bool)

(assert (=> b!4876772 (= e!3048142 (and tp!1372114 tp!1372115))))

(declare-fun b!4876770 () Bool)

(declare-fun tp!1372113 () Bool)

(declare-fun tp!1372112 () Bool)

(assert (=> b!4876770 (= e!3048142 (and tp!1372113 tp!1372112))))

(assert (=> b!4874956 (= tp!1371727 e!3048142)))

(assert (= (and b!4874956 ((_ is ElementMatch!13123) (regOne!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876769))

(assert (= (and b!4874956 ((_ is Concat!21482) (regOne!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876770))

(assert (= (and b!4874956 ((_ is Star!13123) (regOne!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876771))

(assert (= (and b!4874956 ((_ is Union!13123) (regOne!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876772))

(declare-fun b!4876773 () Bool)

(declare-fun e!3048143 () Bool)

(assert (=> b!4876773 (= e!3048143 tp_is_empty!35673)))

(declare-fun b!4876775 () Bool)

(declare-fun tp!1372121 () Bool)

(assert (=> b!4876775 (= e!3048143 tp!1372121)))

(declare-fun b!4876776 () Bool)

(declare-fun tp!1372119 () Bool)

(declare-fun tp!1372120 () Bool)

(assert (=> b!4876776 (= e!3048143 (and tp!1372119 tp!1372120))))

(declare-fun b!4876774 () Bool)

(declare-fun tp!1372118 () Bool)

(declare-fun tp!1372117 () Bool)

(assert (=> b!4876774 (= e!3048143 (and tp!1372118 tp!1372117))))

(assert (=> b!4874956 (= tp!1371726 e!3048143)))

(assert (= (and b!4874956 ((_ is ElementMatch!13123) (regTwo!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876773))

(assert (= (and b!4874956 ((_ is Concat!21482) (regTwo!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876774))

(assert (= (and b!4874956 ((_ is Star!13123) (regTwo!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876775))

(assert (= (and b!4874956 ((_ is Union!13123) (regTwo!26758 (regOne!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876776))

(declare-fun b!4876777 () Bool)

(declare-fun e!3048144 () Bool)

(assert (=> b!4876777 (= e!3048144 tp_is_empty!35673)))

(declare-fun b!4876779 () Bool)

(declare-fun tp!1372126 () Bool)

(assert (=> b!4876779 (= e!3048144 tp!1372126)))

(declare-fun b!4876780 () Bool)

(declare-fun tp!1372124 () Bool)

(declare-fun tp!1372125 () Bool)

(assert (=> b!4876780 (= e!3048144 (and tp!1372124 tp!1372125))))

(declare-fun b!4876778 () Bool)

(declare-fun tp!1372123 () Bool)

(declare-fun tp!1372122 () Bool)

(assert (=> b!4876778 (= e!3048144 (and tp!1372123 tp!1372122))))

(assert (=> b!4874965 (= tp!1371740 e!3048144)))

(assert (= (and b!4874965 ((_ is ElementMatch!13123) (reg!13452 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876777))

(assert (= (and b!4874965 ((_ is Concat!21482) (reg!13452 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876778))

(assert (= (and b!4874965 ((_ is Star!13123) (reg!13452 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876779))

(assert (= (and b!4874965 ((_ is Union!13123) (reg!13452 (regOne!26758 (regex!8048 (h!62456 rules!1164)))))) b!4876780))

(declare-fun b!4876781 () Bool)

(declare-fun e!3048145 () Bool)

(assert (=> b!4876781 (= e!3048145 tp_is_empty!35673)))

(declare-fun b!4876783 () Bool)

(declare-fun tp!1372131 () Bool)

(assert (=> b!4876783 (= e!3048145 tp!1372131)))

(declare-fun b!4876784 () Bool)

(declare-fun tp!1372129 () Bool)

(declare-fun tp!1372130 () Bool)

(assert (=> b!4876784 (= e!3048145 (and tp!1372129 tp!1372130))))

(declare-fun b!4876782 () Bool)

(declare-fun tp!1372128 () Bool)

(declare-fun tp!1372127 () Bool)

(assert (=> b!4876782 (= e!3048145 (and tp!1372128 tp!1372127))))

(assert (=> b!4874962 (= tp!1371733 e!3048145)))

(assert (= (and b!4874962 ((_ is ElementMatch!13123) (regOne!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876781))

(assert (= (and b!4874962 ((_ is Concat!21482) (regOne!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876782))

(assert (= (and b!4874962 ((_ is Star!13123) (regOne!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876783))

(assert (= (and b!4874962 ((_ is Union!13123) (regOne!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876784))

(declare-fun b!4876785 () Bool)

(declare-fun e!3048146 () Bool)

(assert (=> b!4876785 (= e!3048146 tp_is_empty!35673)))

(declare-fun b!4876787 () Bool)

(declare-fun tp!1372136 () Bool)

(assert (=> b!4876787 (= e!3048146 tp!1372136)))

(declare-fun b!4876788 () Bool)

(declare-fun tp!1372134 () Bool)

(declare-fun tp!1372135 () Bool)

(assert (=> b!4876788 (= e!3048146 (and tp!1372134 tp!1372135))))

(declare-fun b!4876786 () Bool)

(declare-fun tp!1372133 () Bool)

(declare-fun tp!1372132 () Bool)

(assert (=> b!4876786 (= e!3048146 (and tp!1372133 tp!1372132))))

(assert (=> b!4874962 (= tp!1371734 e!3048146)))

(assert (= (and b!4874962 ((_ is ElementMatch!13123) (regTwo!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876785))

(assert (= (and b!4874962 ((_ is Concat!21482) (regTwo!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876786))

(assert (= (and b!4874962 ((_ is Star!13123) (regTwo!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876787))

(assert (= (and b!4874962 ((_ is Union!13123) (regTwo!26759 (regTwo!26759 (regex!8048 (h!62456 rules!1164)))))) b!4876788))

(declare-fun b!4876789 () Bool)

(declare-fun e!3048147 () Bool)

(assert (=> b!4876789 (= e!3048147 tp_is_empty!35673)))

(declare-fun b!4876791 () Bool)

(declare-fun tp!1372141 () Bool)

(assert (=> b!4876791 (= e!3048147 tp!1372141)))

(declare-fun b!4876792 () Bool)

(declare-fun tp!1372139 () Bool)

(declare-fun tp!1372140 () Bool)

(assert (=> b!4876792 (= e!3048147 (and tp!1372139 tp!1372140))))

(declare-fun b!4876790 () Bool)

(declare-fun tp!1372138 () Bool)

(declare-fun tp!1372137 () Bool)

(assert (=> b!4876790 (= e!3048147 (and tp!1372138 tp!1372137))))

(assert (=> b!4874976 (= tp!1371753 e!3048147)))

(assert (= (and b!4874976 ((_ is ElementMatch!13123) (reg!13452 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876789))

(assert (= (and b!4874976 ((_ is Concat!21482) (reg!13452 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876790))

(assert (= (and b!4874976 ((_ is Star!13123) (reg!13452 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876791))

(assert (= (and b!4874976 ((_ is Union!13123) (reg!13452 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876792))

(declare-fun b!4876793 () Bool)

(declare-fun e!3048148 () Bool)

(declare-fun tp!1372142 () Bool)

(assert (=> b!4876793 (= e!3048148 (and tp_is_empty!35673 tp!1372142))))

(assert (=> b!4874946 (= tp!1371716 e!3048148)))

(assert (= (and b!4874946 ((_ is Cons!56007) (innerList!14689 (xs!17909 (left!40681 (c!828991 input!585)))))) b!4876793))

(declare-fun b!4876794 () Bool)

(declare-fun e!3048149 () Bool)

(assert (=> b!4876794 (= e!3048149 tp_is_empty!35673)))

(declare-fun b!4876796 () Bool)

(declare-fun tp!1372147 () Bool)

(assert (=> b!4876796 (= e!3048149 tp!1372147)))

(declare-fun b!4876797 () Bool)

(declare-fun tp!1372145 () Bool)

(declare-fun tp!1372146 () Bool)

(assert (=> b!4876797 (= e!3048149 (and tp!1372145 tp!1372146))))

(declare-fun b!4876795 () Bool)

(declare-fun tp!1372144 () Bool)

(declare-fun tp!1372143 () Bool)

(assert (=> b!4876795 (= e!3048149 (and tp!1372144 tp!1372143))))

(assert (=> b!4874975 (= tp!1371750 e!3048149)))

(assert (= (and b!4874975 ((_ is ElementMatch!13123) (regOne!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876794))

(assert (= (and b!4874975 ((_ is Concat!21482) (regOne!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876795))

(assert (= (and b!4874975 ((_ is Star!13123) (regOne!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876796))

(assert (= (and b!4874975 ((_ is Union!13123) (regOne!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876797))

(declare-fun b!4876798 () Bool)

(declare-fun e!3048150 () Bool)

(assert (=> b!4876798 (= e!3048150 tp_is_empty!35673)))

(declare-fun b!4876800 () Bool)

(declare-fun tp!1372152 () Bool)

(assert (=> b!4876800 (= e!3048150 tp!1372152)))

(declare-fun b!4876801 () Bool)

(declare-fun tp!1372150 () Bool)

(declare-fun tp!1372151 () Bool)

(assert (=> b!4876801 (= e!3048150 (and tp!1372150 tp!1372151))))

(declare-fun b!4876799 () Bool)

(declare-fun tp!1372149 () Bool)

(declare-fun tp!1372148 () Bool)

(assert (=> b!4876799 (= e!3048150 (and tp!1372149 tp!1372148))))

(assert (=> b!4874975 (= tp!1371749 e!3048150)))

(assert (= (and b!4874975 ((_ is ElementMatch!13123) (regTwo!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876798))

(assert (= (and b!4874975 ((_ is Concat!21482) (regTwo!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876799))

(assert (= (and b!4874975 ((_ is Star!13123) (regTwo!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876800))

(assert (= (and b!4874975 ((_ is Union!13123) (regTwo!26758 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876801))

(declare-fun b!4876802 () Bool)

(declare-fun e!3048151 () Bool)

(assert (=> b!4876802 (= e!3048151 tp_is_empty!35673)))

(declare-fun b!4876804 () Bool)

(declare-fun tp!1372157 () Bool)

(assert (=> b!4876804 (= e!3048151 tp!1372157)))

(declare-fun b!4876805 () Bool)

(declare-fun tp!1372155 () Bool)

(declare-fun tp!1372156 () Bool)

(assert (=> b!4876805 (= e!3048151 (and tp!1372155 tp!1372156))))

(declare-fun b!4876803 () Bool)

(declare-fun tp!1372154 () Bool)

(declare-fun tp!1372153 () Bool)

(assert (=> b!4876803 (= e!3048151 (and tp!1372154 tp!1372153))))

(assert (=> b!4874953 (= tp!1371723 e!3048151)))

(assert (= (and b!4874953 ((_ is ElementMatch!13123) (regex!8048 (h!62456 (t!364440 (t!364440 rules!1164)))))) b!4876802))

(assert (= (and b!4874953 ((_ is Concat!21482) (regex!8048 (h!62456 (t!364440 (t!364440 rules!1164)))))) b!4876803))

(assert (= (and b!4874953 ((_ is Star!13123) (regex!8048 (h!62456 (t!364440 (t!364440 rules!1164)))))) b!4876804))

(assert (= (and b!4874953 ((_ is Union!13123) (regex!8048 (h!62456 (t!364440 (t!364440 rules!1164)))))) b!4876805))

(declare-fun b!4876806 () Bool)

(declare-fun e!3048152 () Bool)

(assert (=> b!4876806 (= e!3048152 tp_is_empty!35673)))

(declare-fun b!4876808 () Bool)

(declare-fun tp!1372162 () Bool)

(assert (=> b!4876808 (= e!3048152 tp!1372162)))

(declare-fun b!4876809 () Bool)

(declare-fun tp!1372160 () Bool)

(declare-fun tp!1372161 () Bool)

(assert (=> b!4876809 (= e!3048152 (and tp!1372160 tp!1372161))))

(declare-fun b!4876807 () Bool)

(declare-fun tp!1372159 () Bool)

(declare-fun tp!1372158 () Bool)

(assert (=> b!4876807 (= e!3048152 (and tp!1372159 tp!1372158))))

(assert (=> b!4874977 (= tp!1371751 e!3048152)))

(assert (= (and b!4874977 ((_ is ElementMatch!13123) (regOne!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876806))

(assert (= (and b!4874977 ((_ is Concat!21482) (regOne!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876807))

(assert (= (and b!4874977 ((_ is Star!13123) (regOne!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876808))

(assert (= (and b!4874977 ((_ is Union!13123) (regOne!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876809))

(declare-fun b!4876810 () Bool)

(declare-fun e!3048153 () Bool)

(assert (=> b!4876810 (= e!3048153 tp_is_empty!35673)))

(declare-fun b!4876812 () Bool)

(declare-fun tp!1372167 () Bool)

(assert (=> b!4876812 (= e!3048153 tp!1372167)))

(declare-fun b!4876813 () Bool)

(declare-fun tp!1372165 () Bool)

(declare-fun tp!1372166 () Bool)

(assert (=> b!4876813 (= e!3048153 (and tp!1372165 tp!1372166))))

(declare-fun b!4876811 () Bool)

(declare-fun tp!1372164 () Bool)

(declare-fun tp!1372163 () Bool)

(assert (=> b!4876811 (= e!3048153 (and tp!1372164 tp!1372163))))

(assert (=> b!4874977 (= tp!1371752 e!3048153)))

(assert (= (and b!4874977 ((_ is ElementMatch!13123) (regTwo!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876810))

(assert (= (and b!4874977 ((_ is Concat!21482) (regTwo!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876811))

(assert (= (and b!4874977 ((_ is Star!13123) (regTwo!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876812))

(assert (= (and b!4874977 ((_ is Union!13123) (regTwo!26759 (reg!13452 (regex!8048 (h!62456 rules!1164)))))) b!4876813))

(declare-fun b_lambda!193915 () Bool)

(assert (= b_lambda!193865 (or (and b!4874320 b_free!130795) (and b!4874507 b_free!130799 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (and b!4874954 b_free!130807 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (and b!4876694 b_free!130819 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) b_lambda!193915)))

(declare-fun b_lambda!193917 () Bool)

(assert (= b_lambda!193881 (or (and b!4874320 b_free!130795) (and b!4874507 b_free!130799 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (and b!4874954 b_free!130807 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (and b!4876694 b_free!130819 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) b_lambda!193917)))

(declare-fun b_lambda!193919 () Bool)

(assert (= b_lambda!193911 (or d!1565765 b_lambda!193919)))

(declare-fun bs!1175121 () Bool)

(declare-fun d!1566745 () Bool)

(assert (= bs!1175121 (and d!1566745 d!1565765)))

(assert (=> bs!1175121 (= (dynLambda!22515 lambda!243606 (h!62456 rules!1164)) (ruleValid!3635 thiss!11460 (h!62456 rules!1164)))))

(assert (=> bs!1175121 m!5876012))

(assert (=> b!4876413 d!1566745))

(declare-fun b_lambda!193921 () Bool)

(assert (= b_lambda!193867 (or (and b!4874320 b_free!130795) (and b!4874507 b_free!130799 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (and b!4874954 b_free!130807 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) (and b!4876694 b_free!130819 (= (toValue!10927 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toValue!10927 (transformation!8048 (h!62456 rules!1164))))) b_lambda!193921)))

(declare-fun b_lambda!193923 () Bool)

(assert (= b_lambda!193877 (or b!4874856 b_lambda!193923)))

(declare-fun bs!1175122 () Bool)

(declare-fun d!1566747 () Bool)

(assert (= bs!1175122 (and d!1566747 b!4874856)))

(assert (=> bs!1175122 (= (dynLambda!22518 lambda!243603 (_1!33252 lt!1997541)) (= (list!17533 (dynLambda!22505 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (_1!33252 lt!1997541)))) (list!17533 (_1!33252 lt!1997541))))))

(declare-fun b_lambda!193929 () Bool)

(assert (=> (not b_lambda!193929) (not bs!1175122)))

(declare-fun t!364595 () Bool)

(declare-fun tb!258299 () Bool)

(assert (=> (and b!4874320 (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364595) tb!258299))

(declare-fun b!4876814 () Bool)

(declare-fun e!3048154 () Bool)

(declare-fun tp!1372168 () Bool)

(assert (=> b!4876814 (= e!3048154 (and (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (_1!33252 lt!1997541))))) tp!1372168))))

(declare-fun result!321530 () Bool)

(assert (=> tb!258299 (= result!321530 (and (inv!71944 (dynLambda!22505 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (_1!33252 lt!1997541)))) e!3048154))))

(assert (= tb!258299 b!4876814))

(declare-fun m!5879312 () Bool)

(assert (=> b!4876814 m!5879312))

(declare-fun m!5879314 () Bool)

(assert (=> tb!258299 m!5879314))

(assert (=> bs!1175122 t!364595))

(declare-fun b_and!343475 () Bool)

(assert (= b_and!343459 (and (=> t!364595 result!321530) b_and!343475)))

(declare-fun t!364597 () Bool)

(declare-fun tb!258301 () Bool)

(assert (=> (and b!4874507 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364597) tb!258301))

(declare-fun result!321532 () Bool)

(assert (= result!321532 result!321530))

(assert (=> bs!1175122 t!364597))

(declare-fun b_and!343477 () Bool)

(assert (= b_and!343461 (and (=> t!364597 result!321532) b_and!343477)))

(declare-fun t!364599 () Bool)

(declare-fun tb!258303 () Bool)

(assert (=> (and b!4874954 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364599) tb!258303))

(declare-fun result!321534 () Bool)

(assert (= result!321534 result!321530))

(assert (=> bs!1175122 t!364599))

(declare-fun b_and!343479 () Bool)

(assert (= b_and!343463 (and (=> t!364599 result!321534) b_and!343479)))

(declare-fun t!364601 () Bool)

(declare-fun tb!258305 () Bool)

(assert (=> (and b!4876694 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364601) tb!258305))

(declare-fun result!321536 () Bool)

(assert (= result!321536 result!321530))

(assert (=> bs!1175122 t!364601))

(declare-fun b_and!343481 () Bool)

(assert (= b_and!343473 (and (=> t!364601 result!321536) b_and!343481)))

(declare-fun b_lambda!193931 () Bool)

(assert (=> (not b_lambda!193931) (not bs!1175122)))

(assert (=> bs!1175122 t!364506))

(declare-fun b_and!343483 () Bool)

(assert (= b_and!343465 (and (=> t!364506 result!321442) b_and!343483)))

(assert (=> bs!1175122 t!364508))

(declare-fun b_and!343485 () Bool)

(assert (= b_and!343467 (and (=> t!364508 result!321446) b_and!343485)))

(assert (=> bs!1175122 t!364510))

(declare-fun b_and!343487 () Bool)

(assert (= b_and!343469 (and (=> t!364510 result!321448) b_and!343487)))

(assert (=> bs!1175122 t!364581))

(declare-fun b_and!343489 () Bool)

(assert (= b_and!343471 (and (=> t!364581 result!321516) b_and!343489)))

(assert (=> bs!1175122 m!5877662))

(declare-fun m!5879316 () Bool)

(assert (=> bs!1175122 m!5879316))

(declare-fun m!5879318 () Bool)

(assert (=> bs!1175122 m!5879318))

(assert (=> bs!1175122 m!5876220))

(assert (=> bs!1175122 m!5877662))

(assert (=> bs!1175122 m!5879316))

(assert (=> d!1566299 d!1566747))

(declare-fun b_lambda!193925 () Bool)

(assert (= b_lambda!193853 (or d!1565679 b_lambda!193925)))

(declare-fun bs!1175123 () Bool)

(declare-fun d!1566749 () Bool)

(assert (= bs!1175123 (and d!1566749 d!1565679)))

(assert (=> bs!1175123 (= (dynLambda!22515 lambda!243595 (h!62456 rules!1164)) (ruleValid!3635 thiss!11460 (h!62456 rules!1164)))))

(assert (=> bs!1175123 m!5876012))

(assert (=> b!4875496 d!1566749))

(declare-fun b_lambda!193927 () Bool)

(assert (= b_lambda!193879 (or b!4874856 b_lambda!193927)))

(declare-fun bs!1175124 () Bool)

(declare-fun d!1566751 () Bool)

(assert (= bs!1175124 (and d!1566751 b!4874856)))

(assert (=> bs!1175124 (= (dynLambda!22518 lambda!243603 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))) (= (list!17533 (dynLambda!22505 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))) (list!17533 (seqFromList!5903 (list!17533 (_1!33252 lt!1997541))))))))

(declare-fun b_lambda!193933 () Bool)

(assert (=> (not b_lambda!193933) (not bs!1175124)))

(declare-fun t!364603 () Bool)

(declare-fun tb!258307 () Bool)

(assert (=> (and b!4874320 (= (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364603) tb!258307))

(declare-fun e!3048155 () Bool)

(declare-fun b!4876815 () Bool)

(declare-fun tp!1372169 () Bool)

(assert (=> b!4876815 (= e!3048155 (and (inv!71943 (c!828991 (dynLambda!22505 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541))))))) tp!1372169))))

(declare-fun result!321538 () Bool)

(assert (=> tb!258307 (= result!321538 (and (inv!71944 (dynLambda!22505 (toChars!10786 (transformation!8048 (h!62456 rules!1164))) (dynLambda!22517 (toValue!10927 (transformation!8048 (h!62456 rules!1164))) (seqFromList!5903 (list!17533 (_1!33252 lt!1997541)))))) e!3048155))))

(assert (= tb!258307 b!4876815))

(declare-fun m!5879320 () Bool)

(assert (=> b!4876815 m!5879320))

(declare-fun m!5879322 () Bool)

(assert (=> tb!258307 m!5879322))

(assert (=> bs!1175124 t!364603))

(declare-fun b_and!343491 () Bool)

(assert (= b_and!343475 (and (=> t!364603 result!321538) b_and!343491)))

(declare-fun t!364605 () Bool)

(declare-fun tb!258309 () Bool)

(assert (=> (and b!4874507 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 rules!1164)))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364605) tb!258309))

(declare-fun result!321540 () Bool)

(assert (= result!321540 result!321538))

(assert (=> bs!1175124 t!364605))

(declare-fun b_and!343493 () Bool)

(assert (= b_and!343477 (and (=> t!364605 result!321540) b_and!343493)))

(declare-fun t!364607 () Bool)

(declare-fun tb!258311 () Bool)

(assert (=> (and b!4874954 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 rules!1164))))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364607) tb!258311))

(declare-fun result!321542 () Bool)

(assert (= result!321542 result!321538))

(assert (=> bs!1175124 t!364607))

(declare-fun b_and!343495 () Bool)

(assert (= b_and!343479 (and (=> t!364607 result!321542) b_and!343495)))

(declare-fun t!364609 () Bool)

(declare-fun tb!258313 () Bool)

(assert (=> (and b!4876694 (= (toChars!10786 (transformation!8048 (h!62456 (t!364440 (t!364440 (t!364440 rules!1164)))))) (toChars!10786 (transformation!8048 (h!62456 rules!1164)))) t!364609) tb!258313))

(declare-fun result!321544 () Bool)

(assert (= result!321544 result!321538))

(assert (=> bs!1175124 t!364609))

(declare-fun b_and!343497 () Bool)

(assert (= b_and!343481 (and (=> t!364609 result!321544) b_and!343497)))

(declare-fun b_lambda!193935 () Bool)

(assert (=> (not b_lambda!193935) (not bs!1175124)))

(assert (=> bs!1175124 t!364512))

(declare-fun b_and!343499 () Bool)

(assert (= b_and!343483 (and (=> t!364512 result!321450) b_and!343499)))

(assert (=> bs!1175124 t!364514))

(declare-fun b_and!343501 () Bool)

(assert (= b_and!343485 (and (=> t!364514 result!321452) b_and!343501)))

(assert (=> bs!1175124 t!364516))

(declare-fun b_and!343503 () Bool)

(assert (= b_and!343487 (and (=> t!364516 result!321454) b_and!343503)))

(assert (=> bs!1175124 t!364587))

(declare-fun b_and!343505 () Bool)

(assert (= b_and!343489 (and (=> t!364587 result!321522) b_and!343505)))

(assert (=> bs!1175124 m!5876222))

(assert (=> bs!1175124 m!5877660))

(declare-fun m!5879324 () Bool)

(assert (=> bs!1175124 m!5879324))

(declare-fun m!5879326 () Bool)

(assert (=> bs!1175124 m!5879326))

(assert (=> bs!1175124 m!5876222))

(assert (=> bs!1175124 m!5877658))

(assert (=> bs!1175124 m!5877660))

(assert (=> bs!1175124 m!5879324))

(assert (=> d!1566321 d!1566751))

(check-sat (not b!4876716) (not b!4875906) (not b!4876411) (not d!1566429) (not bs!1175121) (not d!1566399) (not b_lambda!193923) (not d!1566705) (not d!1566625) (not b!4875489) (not d!1566553) (not b!4876766) (not tb!258231) (not b!4876469) (not b!4876429) (not b!4876681) b_and!343495 (not d!1566603) (not b!4876812) (not b!4876510) (not d!1566537) (not b!4876627) (not bs!1175123) (not b!4876340) (not b!4876555) (not d!1566673) (not b!4875490) (not b!4876662) (not b!4876672) (not b_lambda!193919) (not b!4876454) (not b!4876322) (not b!4876683) (not b!4876767) (not b!4875935) (not b!4876753) (not b_next!131585) (not b!4876778) (not tb!258279) (not b!4876558) (not d!1566731) b_and!343497 (not b!4876696) (not b!4876452) (not b!4876724) (not b!4875653) (not b!4876698) (not b!4876303) (not b!4875636) (not b!4876640) (not b!4876407) (not b!4876673) (not b!4875499) (not d!1566323) (not b!4876470) (not b!4876397) (not b!4876814) (not b_lambda!193883) (not b!4876632) (not b!4876298) (not b!4875507) (not b!4876786) (not b!4875502) (not b!4875635) (not b!4875624) (not d!1566607) (not b!4875995) (not bm!338527) (not d!1566179) (not d!1566159) (not d!1566483) (not b!4876623) (not b!4876317) (not b!4876678) (not b!4876373) (not d!1566083) b_and!343501 (not b!4874971) (not b!4876764) (not b!4876728) (not b!4876511) (not tb!258219) (not d!1566409) (not b!4876489) (not b!4876636) (not bm!338571) (not d!1566531) (not b!4876321) (not b!4876732) (not d!1566073) (not b!4876522) (not b!4876274) (not b!4875520) (not bm!338526) (not b!4876715) (not d!1566497) (not b!4876519) (not b!4876456) (not b!4876183) (not b!4876815) (not b!4876776) (not b!4876502) (not d!1566151) (not b!4876563) (not b!4876451) (not b!4876746) (not b!4876556) (not b!4875485) (not b!4876779) (not b!4876290) (not b!4876520) (not b!4876759) (not bm!338520) (not d!1566743) (not b!4876644) (not b!4876747) (not d!1566499) (not b!4876467) (not b!4876484) (not b!4876634) (not bm!338514) (not b!4875500) (not d!1566605) (not d!1566633) (not b!4875513) (not b!4876795) (not d!1566523) (not b!4876246) (not b!4876311) (not d!1566657) (not b!4876669) (not b!4875491) (not b!4876371) (not b!4875994) (not b!4876380) (not b!4876351) (not b!4876423) (not b_next!131609) (not b!4876225) (not b!4875518) (not b!4876643) (not b!4876645) (not bm!338513) (not b!4876253) (not b!4876434) (not d!1566571) (not bm!338507) (not b!4876507) (not b!4876481) (not b!4876727) (not b!4876791) (not b!4875908) (not b!4876295) (not d!1566589) (not bm!338524) (not b!4876416) (not b!4876318) (not b!4876320) (not bm!338560) (not b!4876738) (not bm!338525) (not b_next!131591) (not b!4876709) (not b!4876323) (not d!1566739) (not b!4876658) (not b!4876450) (not b!4876387) (not b!4876455) (not b!4876788) (not b!4876438) (not b!4874947) (not b!4876395) (not b!4876546) (not b!4875863) (not b!4876562) (not b!4876735) (not d!1566655) (not b!4876390) (not b!4876757) (not b!4876372) (not b!4875933) (not d!1566321) (not b!4876799) (not b!4876441) (not b!4876763) (not b!4875516) (not b!4876393) (not b!4876506) (not b!4876461) (not b!4876770) (not b!4876327) (not b!4876189) (not b!4876375) (not b!4875911) (not b!4875888) (not b!4876792) (not b!4876460) b_and!343499 (not b!4876374) (not b_lambda!193921) (not b!4876775) (not d!1566039) (not b!4876670) (not b_next!131611) (not b!4876363) (not b!4876001) (not d!1566475) (not b!4876666) (not b_next!131599) (not b!4876013) (not b!4876783) (not b!4876329) (not b!4875937) (not b!4875974) (not b!4876369) b_and!343491 (not d!1566319) (not d!1566661) (not b!4876402) (not d!1566407) (not b!4876224) (not b!4876754) (not b!4876383) (not b!4876289) (not b!4875880) (not d!1566443) (not b_lambda!193913) (not b!4876286) (not b!4876222) (not b!4876265) (not b!4876352) (not b!4876756) (not b!4875632) (not b!4875643) (not b!4876280) (not d!1566195) (not b!4876784) (not d!1566569) (not d!1566653) (not b!4875638) (not b!4876382) (not b!4876412) (not b!4876403) (not d!1566721) (not bm!338568) (not b_next!131587) (not b!4876191) (not b!4876707) (not b!4875972) (not b!4876710) (not b!4876513) (not b_lambda!193917) (not d!1566333) (not b!4876319) (not b!4876523) (not b!4876364) (not d!1566077) (not b!4876384) (not tb!258273) (not b!4876356) (not d!1566563) (not b!4876281) (not b!4875503) (not b!4876723) (not d!1566397) (not b!4876381) (not d!1566669) (not b!4876739) (not bm!338510) (not b!4876294) (not b!4876697) (not b!4876554) (not d!1566511) (not b!4876730) (not b!4875858) (not b!4875904) (not b!4875909) (not b!4876367) (not d!1566601) (not b!4876553) (not b!4876378) (not b!4876476) (not d!1566617) (not b!4876714) (not b!4876793) (not b_lambda!193909) (not b!4876704) (not b!4876478) (not b!4876650) (not b!4876260) (not b!4876437) tp_is_empty!35673 (not b!4876341) (not b!4876486) (not bm!338566) (not b!4876368) (not b!4876760) (not b!4876740) (not d!1566709) (not b!4875973) (not b!4876345) (not b!4876750) (not b!4876313) (not d!1566649) (not b!4876396) (not b!4876711) (not b_lambda!193845) (not b!4876307) (not b!4876691) (not b!4876266) (not b!4874944) (not d!1566049) (not b!4876813) (not b!4876249) (not bm!338523) (not b!4876496) (not b!4876566) (not bm!338518) (not b!4876195) (not b!4876449) (not d!1566153) (not b!4876475) (not d!1566729) (not d!1566711) (not d!1566361) (not b!4876639) (not d!1566313) (not b!4876742) (not d!1566051) (not b!4875649) (not d!1566035) (not b!4876304) (not b!4875883) (not bm!338570) (not b!4876428) (not bm!338569) (not d!1566671) (not d!1566687) (not b!4876762) (not b!4876693) (not b!4876772) (not b!4876544) (not b!4876612) (not d!1566037) (not b_lambda!193907) (not b!4875936) (not b!4876618) (not d!1566545) (not b!4875501) (not b!4876379) (not b!4876465) (not b!4876518) (not b!4876258) (not bm!338522) (not b!4876251) (not d!1566723) (not b!4876439) (not b!4875975) (not b!4876448) (not b!4876755) (not b!4875517) (not b!4876774) (not bs!1175122) (not b!4875866) (not b!4876188) (not b!4876706) (not b!4876535) (not b!4876689) (not b!4876752) (not b!4876674) (not b!4875990) (not b!4876432) (not b!4876436) (not d!1566041) (not b!4876444) (not b!4876797) (not b!4876312) (not b!4876787) (not bm!338511) (not bm!338519) (not b!4876539) (not tb!258267) (not b!4876308) (not b!4876440) (not b!4876731) (not b!4876524) (not b!4876807) (not b!4876406) (not b!4876734) (not d!1566343) (not b!4876316) (not d!1566173) (not b!4876560) (not b!4876692) (not b!4876487) (not b!4876796) (not b!4876726) (not tb!258213) (not b!4875625) (not b!4876494) (not b!4876808) (not d!1566525) (not b!4875505) (not b!4876686) (not b!4876517) (not b!4875934) (not b_lambda!193935) (not d!1566149) (not b!4876331) (not b!4876346) (not d!1566193) (not b!4876493) (not b!4876617) (not d!1566471) (not d!1566613) (not b!4876543) (not b!4876687) (not b!4876565) (not b!4876702) (not b!4876194) (not b!4876718) (not b!4876492) (not b!4876790) (not b!4876277) (not b!4876464) (not b!4876665) (not b_next!131597) (not d!1566405) (not b!4875910) b_and!343503 (not b_lambda!193929) (not b!4876275) (not d!1566425) (not b!4876744) (not b!4876811) (not d!1566691) (not bm!338574) (not b!4876310) (not b!4876768) (not b!4876442) (not b!4876245) (not d!1566557) (not b!4876248) (not b!4876309) (not b!4876391) (not b!4876301) (not b!4876701) (not b!4876326) (not b!4875970) (not b!4876550) (not b!4876370) (not b!4876552) (not b!4876780) (not b!4876299) (not b!4876422) (not d!1566507) (not b!4876453) (not tb!258307) (not b!4875992) (not b!4876359) (not d!1566587) (not d!1566071) (not b!4875875) (not b!4875861) (not b!4876263) (not d!1566473) (not tb!258299) (not b!4876491) (not b!4876516) (not b!4876247) (not d!1566725) (not b!4876664) (not b!4876501) (not bm!338512) (not d!1566389) (not bm!338509) (not d!1566715) (not b!4876534) (not b!4876705) (not b!4875971) (not b_lambda!193927) (not b!4876008) (not bm!338441) (not b!4876611) (not b!4876635) (not b!4876657) (not b!4876482) (not b!4876720) (not b!4875633) (not d!1566539) (not b!4876417) b_and!343493 (not b!4876414) (not b!4876405) (not d!1566575) (not b!4875639) (not b!4876660) (not b!4876719) (not d!1566639) (not d!1566189) (not b!4876270) (not b!4876285) (not d!1566515) (not b!4876736) (not b!4876743) (not b!4876377) (not b_lambda!193925) (not b!4875905) (not b!4876800) (not b!4876676) (not b!4876804) (not b_lambda!193931) (not d!1566411) (not d!1566299) (not b!4876748) (not b!4876649) (not b!4876332) (not b!4876708) (not b!4876540) (not bs!1175124) (not d!1566075) (not d!1566697) (not b!4876425) (not b!4876758) (not b!4875512) (not b!4876803) (not b!4876638) (not b!4876809) (not d!1566645) (not b!4876388) (not b!4875526) (not b!4876348) (not b!4875497) (not b!4876443) (not b!4876682) (not b!4876283) (not b_next!131589) (not d!1566067) (not b!4876685) (not d!1566619) (not b!4876631) (not b!4876637) (not b!4875508) (not d!1566213) (not b!4876633) (not b!4876567) (not b!4876647) (not b!4875523) (not b!4876564) (not b!4876252) (not d!1566465) (not b!4875487) (not d!1566477) (not d!1566541) (not b!4876751) (not bm!338506) (not bm!338521) (not b!4876495) (not b!4876771) (not b!4876271) (not d!1566387) (not b!4876782) (not b!4876547) (not b!4876399) (not b!4876677) (not b!4876668) (not b!4875996) (not b!4876641) (not b_lambda!193915) (not b!4876334) (not b!4876700) (not b!4876521) (not b!4876690) (not d!1566543) (not b!4876279) (not b!4876358) (not b!4875514) (not b!4876549) (not b!4875498) (not bm!338508) (not d!1566297) (not b!4876722) (not b!4876661) (not b!4876282) (not b!4876548) (not d!1566737) (not b!4876680) (not b!4876667) (not b!4876551) (not b!4875634) (not b!4876801) (not b!4876712) b_and!343505 (not b!4875509) (not b!4876354) (not b_lambda!193933) (not b!4876545) (not b!4876284) (not d!1566487) (not b!4875907) (not b!4876315) (not b!4876805) (not b!4875486))
(check-sat b_and!343495 b_and!343501 (not b_next!131609) (not b_next!131591) (not b_next!131587) b_and!343493 (not b_next!131589) b_and!343505 (not b_next!131585) b_and!343497 b_and!343499 (not b_next!131611) b_and!343491 (not b_next!131599) (not b_next!131597) b_and!343503)
