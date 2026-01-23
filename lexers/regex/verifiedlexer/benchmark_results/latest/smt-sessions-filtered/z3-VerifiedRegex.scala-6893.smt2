; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!363060 () Bool)

(assert start!363060)

(declare-fun b!3869610 () Bool)

(declare-fun b_free!104437 () Bool)

(declare-fun b_next!105141 () Bool)

(assert (=> b!3869610 (= b_free!104437 (not b_next!105141))))

(declare-fun tp!1173310 () Bool)

(declare-fun b_and!289995 () Bool)

(assert (=> b!3869610 (= tp!1173310 b_and!289995)))

(declare-fun b_free!104439 () Bool)

(declare-fun b_next!105143 () Bool)

(assert (=> b!3869610 (= b_free!104439 (not b_next!105143))))

(declare-fun tp!1173317 () Bool)

(declare-fun b_and!289997 () Bool)

(assert (=> b!3869610 (= tp!1173317 b_and!289997)))

(declare-fun b!3869635 () Bool)

(declare-fun b_free!104441 () Bool)

(declare-fun b_next!105145 () Bool)

(assert (=> b!3869635 (= b_free!104441 (not b_next!105145))))

(declare-fun tp!1173313 () Bool)

(declare-fun b_and!289999 () Bool)

(assert (=> b!3869635 (= tp!1173313 b_and!289999)))

(declare-fun b_free!104443 () Bool)

(declare-fun b_next!105147 () Bool)

(assert (=> b!3869635 (= b_free!104443 (not b_next!105147))))

(declare-fun tp!1173311 () Bool)

(declare-fun b_and!290001 () Bool)

(assert (=> b!3869635 (= tp!1173311 b_and!290001)))

(declare-fun b!3869623 () Bool)

(declare-fun b_free!104445 () Bool)

(declare-fun b_next!105149 () Bool)

(assert (=> b!3869623 (= b_free!104445 (not b_next!105149))))

(declare-fun tp!1173315 () Bool)

(declare-fun b_and!290003 () Bool)

(assert (=> b!3869623 (= tp!1173315 b_and!290003)))

(declare-fun b_free!104447 () Bool)

(declare-fun b_next!105151 () Bool)

(assert (=> b!3869623 (= b_free!104447 (not b_next!105151))))

(declare-fun tp!1173318 () Bool)

(declare-fun b_and!290005 () Bool)

(assert (=> b!3869623 (= tp!1173318 b_and!290005)))

(declare-fun b!3869593 () Bool)

(declare-fun e!2393329 () Bool)

(declare-fun e!2393311 () Bool)

(assert (=> b!3869593 (= e!2393329 e!2393311)))

(declare-fun res!1567299 () Bool)

(assert (=> b!3869593 (=> res!1567299 e!2393311)))

(declare-datatypes ((C!22744 0))(
  ( (C!22745 (val!13466 Int)) )
))
(declare-datatypes ((List!41226 0))(
  ( (Nil!41102) (Cons!41102 (h!46522 C!22744) (t!314293 List!41226)) )
))
(declare-fun lt!1346704 () List!41226)

(declare-fun lt!1346673 () List!41226)

(declare-fun lt!1346695 () List!41226)

(declare-fun lt!1346682 () List!41226)

(assert (=> b!3869593 (= res!1567299 (or (not (= lt!1346682 lt!1346695)) (not (= lt!1346682 lt!1346673)) (not (= lt!1346704 lt!1346673))))))

(assert (=> b!3869593 (= lt!1346695 lt!1346673)))

(declare-fun lt!1346685 () List!41226)

(declare-fun lt!1346668 () List!41226)

(declare-fun ++!10505 (List!41226 List!41226) List!41226)

(assert (=> b!3869593 (= lt!1346673 (++!10505 lt!1346685 lt!1346668))))

(declare-fun lt!1346664 () List!41226)

(declare-fun suffix!1176 () List!41226)

(assert (=> b!3869593 (= lt!1346668 (++!10505 lt!1346664 suffix!1176))))

(declare-datatypes ((Unit!58906 0))(
  ( (Unit!58907) )
))
(declare-fun lt!1346694 () Unit!58906)

(declare-fun lemmaConcatAssociativity!2220 (List!41226 List!41226 List!41226) Unit!58906)

(assert (=> b!3869593 (= lt!1346694 (lemmaConcatAssociativity!2220 lt!1346685 lt!1346664 suffix!1176))))

(declare-fun b!3869594 () Bool)

(declare-fun e!2393346 () Bool)

(declare-fun e!2393336 () Bool)

(assert (=> b!3869594 (= e!2393346 e!2393336)))

(declare-fun res!1567296 () Bool)

(assert (=> b!3869594 (=> res!1567296 e!2393336)))

(declare-fun lt!1346675 () Int)

(declare-fun lt!1346690 () Int)

(assert (=> b!3869594 (= res!1567296 (<= lt!1346675 lt!1346690))))

(declare-fun lt!1346665 () Unit!58906)

(declare-fun e!2393334 () Unit!58906)

(assert (=> b!3869594 (= lt!1346665 e!2393334)))

(declare-fun c!673397 () Bool)

(assert (=> b!3869594 (= c!673397 (= lt!1346675 lt!1346690))))

(declare-fun lt!1346666 () Unit!58906)

(declare-fun e!2393323 () Unit!58906)

(assert (=> b!3869594 (= lt!1346666 e!2393323)))

(declare-fun c!673398 () Bool)

(assert (=> b!3869594 (= c!673398 (< lt!1346675 lt!1346690))))

(declare-fun size!30893 (List!41226) Int)

(assert (=> b!3869594 (= lt!1346690 (size!30893 suffix!1176))))

(declare-datatypes ((String!46737 0))(
  ( (String!46738 (value!202267 String)) )
))
(declare-datatypes ((List!41227 0))(
  ( (Nil!41103) (Cons!41103 (h!46523 (_ BitVec 16)) (t!314294 List!41227)) )
))
(declare-datatypes ((TokenValue!6604 0))(
  ( (FloatLiteralValue!13208 (text!46673 List!41227)) (TokenValueExt!6603 (__x!25425 Int)) (Broken!33020 (value!202268 List!41227)) (Object!6727) (End!6604) (Def!6604) (Underscore!6604) (Match!6604) (Else!6604) (Error!6604) (Case!6604) (If!6604) (Extends!6604) (Abstract!6604) (Class!6604) (Val!6604) (DelimiterValue!13208 (del!6664 List!41227)) (KeywordValue!6610 (value!202269 List!41227)) (CommentValue!13208 (value!202270 List!41227)) (WhitespaceValue!13208 (value!202271 List!41227)) (IndentationValue!6604 (value!202272 List!41227)) (String!46739) (Int32!6604) (Broken!33021 (value!202273 List!41227)) (Boolean!6605) (Unit!58908) (OperatorValue!6607 (op!6664 List!41227)) (IdentifierValue!13208 (value!202274 List!41227)) (IdentifierValue!13209 (value!202275 List!41227)) (WhitespaceValue!13209 (value!202276 List!41227)) (True!13208) (False!13208) (Broken!33022 (value!202277 List!41227)) (Broken!33023 (value!202278 List!41227)) (True!13209) (RightBrace!6604) (RightBracket!6604) (Colon!6604) (Null!6604) (Comma!6604) (LeftBracket!6604) (False!13209) (LeftBrace!6604) (ImaginaryLiteralValue!6604 (text!46674 List!41227)) (StringLiteralValue!19812 (value!202279 List!41227)) (EOFValue!6604 (value!202280 List!41227)) (IdentValue!6604 (value!202281 List!41227)) (DelimiterValue!13209 (value!202282 List!41227)) (DedentValue!6604 (value!202283 List!41227)) (NewLineValue!6604 (value!202284 List!41227)) (IntegerValue!19812 (value!202285 (_ BitVec 32)) (text!46675 List!41227)) (IntegerValue!19813 (value!202286 Int) (text!46676 List!41227)) (Times!6604) (Or!6604) (Equal!6604) (Minus!6604) (Broken!33024 (value!202287 List!41227)) (And!6604) (Div!6604) (LessEqual!6604) (Mod!6604) (Concat!17883) (Not!6604) (Plus!6604) (SpaceValue!6604 (value!202288 List!41227)) (IntegerValue!19814 (value!202289 Int) (text!46677 List!41227)) (StringLiteralValue!19813 (text!46678 List!41227)) (FloatLiteralValue!13209 (text!46679 List!41227)) (BytesLiteralValue!6604 (value!202290 List!41227)) (CommentValue!13209 (value!202291 List!41227)) (StringLiteralValue!19814 (value!202292 List!41227)) (ErrorTokenValue!6604 (msg!6665 List!41227)) )
))
(declare-datatypes ((Regex!11279 0))(
  ( (ElementMatch!11279 (c!673400 C!22744)) (Concat!17884 (regOne!23070 Regex!11279) (regTwo!23070 Regex!11279)) (EmptyExpr!11279) (Star!11279 (reg!11608 Regex!11279)) (EmptyLang!11279) (Union!11279 (regOne!23071 Regex!11279) (regTwo!23071 Regex!11279)) )
))
(declare-datatypes ((IArray!25175 0))(
  ( (IArray!25176 (innerList!12645 List!41226)) )
))
(declare-datatypes ((Conc!12585 0))(
  ( (Node!12585 (left!31590 Conc!12585) (right!31920 Conc!12585) (csize!25400 Int) (cheight!12796 Int)) (Leaf!19479 (xs!15891 IArray!25175) (csize!25401 Int)) (Empty!12585) )
))
(declare-datatypes ((BalanceConc!24764 0))(
  ( (BalanceConc!24765 (c!673401 Conc!12585)) )
))
(declare-datatypes ((TokenValueInjection!12636 0))(
  ( (TokenValueInjection!12637 (toValue!8802 Int) (toChars!8661 Int)) )
))
(declare-datatypes ((Rule!12548 0))(
  ( (Rule!12549 (regex!6374 Regex!11279) (tag!7234 String!46737) (isSeparator!6374 Bool) (transformation!6374 TokenValueInjection!12636)) )
))
(declare-datatypes ((Token!11886 0))(
  ( (Token!11887 (value!202293 TokenValue!6604) (rule!9258 Rule!12548) (size!30894 Int) (originalCharacters!6974 List!41226)) )
))
(declare-datatypes ((tuple2!40322 0))(
  ( (tuple2!40323 (_1!23295 Token!11886) (_2!23295 List!41226)) )
))
(declare-datatypes ((Option!8792 0))(
  ( (None!8791) (Some!8791 (v!39089 tuple2!40322)) )
))
(declare-fun lt!1346683 () Option!8792)

(assert (=> b!3869594 (= lt!1346675 (size!30893 (_2!23295 (v!39089 lt!1346683))))))

(declare-fun b!3869595 () Bool)

(declare-fun e!2393309 () Bool)

(declare-fun tp_is_empty!19529 () Bool)

(declare-fun tp!1173314 () Bool)

(assert (=> b!3869595 (= e!2393309 (and tp_is_empty!19529 tp!1173314))))

(declare-fun b!3869596 () Bool)

(declare-fun e!2393340 () Bool)

(declare-fun e!2393314 () Bool)

(declare-fun tp!1173303 () Bool)

(assert (=> b!3869596 (= e!2393340 (and e!2393314 tp!1173303))))

(declare-fun b!3869597 () Bool)

(declare-fun res!1567300 () Bool)

(assert (=> b!3869597 (=> res!1567300 e!2393346)))

(declare-datatypes ((List!41228 0))(
  ( (Nil!41104) (Cons!41104 (h!46524 Token!11886) (t!314295 List!41228)) )
))
(declare-datatypes ((tuple2!40324 0))(
  ( (tuple2!40325 (_1!23296 List!41228) (_2!23296 List!41226)) )
))
(declare-fun lt!1346696 () tuple2!40324)

(assert (=> b!3869597 (= res!1567300 (or (not (= lt!1346696 (tuple2!40325 (_1!23296 lt!1346696) (_2!23296 lt!1346696)))) (= (_2!23295 (v!39089 lt!1346683)) suffix!1176)))))

(declare-fun b!3869598 () Bool)

(declare-fun e!2393326 () Bool)

(assert (=> b!3869598 (= e!2393336 e!2393326)))

(declare-fun res!1567294 () Bool)

(assert (=> b!3869598 (=> res!1567294 e!2393326)))

(declare-fun lt!1346662 () Int)

(declare-fun prefix!426 () List!41226)

(assert (=> b!3869598 (= res!1567294 (>= lt!1346662 (size!30893 prefix!426)))))

(declare-fun isPrefix!3473 (List!41226 List!41226) Bool)

(assert (=> b!3869598 (isPrefix!3473 lt!1346685 prefix!426)))

(declare-fun lt!1346686 () Unit!58906)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!223 (List!41226 List!41226 List!41226) Unit!58906)

(assert (=> b!3869598 (= lt!1346686 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!223 prefix!426 lt!1346685 lt!1346682))))

(assert (=> b!3869598 (isPrefix!3473 prefix!426 lt!1346682)))

(declare-fun lt!1346677 () Unit!58906)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2336 (List!41226 List!41226) Unit!58906)

(assert (=> b!3869598 (= lt!1346677 (lemmaConcatTwoListThenFirstIsPrefix!2336 prefix!426 suffix!1176))))

(declare-fun tp!1173316 () Bool)

(declare-fun e!2393337 () Bool)

(declare-fun e!2393327 () Bool)

(declare-fun prefixTokens!80 () List!41228)

(declare-fun b!3869599 () Bool)

(declare-fun inv!21 (TokenValue!6604) Bool)

(assert (=> b!3869599 (= e!2393327 (and (inv!21 (value!202293 (h!46524 prefixTokens!80))) e!2393337 tp!1173316))))

(declare-fun b!3869600 () Bool)

(declare-fun e!2393312 () Bool)

(assert (=> b!3869600 (= e!2393312 false)))

(declare-fun b!3869601 () Bool)

(declare-fun e!2393325 () Unit!58906)

(declare-fun Unit!58909 () Unit!58906)

(assert (=> b!3869601 (= e!2393325 Unit!58909)))

(declare-fun suffixResult!91 () List!41226)

(declare-datatypes ((LexerInterface!5963 0))(
  ( (LexerInterfaceExt!5960 (__x!25426 Int)) (Lexer!5961) )
))
(declare-fun thiss!20629 () LexerInterface!5963)

(declare-datatypes ((List!41229 0))(
  ( (Nil!41105) (Cons!41105 (h!46525 Rule!12548) (t!314296 List!41229)) )
))
(declare-fun rules!2768 () List!41229)

(declare-fun lt!1346700 () Unit!58906)

(declare-fun suffixTokens!72 () List!41228)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!34 (LexerInterface!5963 List!41229 List!41226 List!41226 List!41228 List!41226) Unit!58906)

(assert (=> b!3869601 (= lt!1346700 (lemmaLexWithSmallerInputCannotProduceSameResults!34 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346683)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3869601 false))

(declare-fun b!3869603 () Bool)

(declare-fun e!2393344 () Bool)

(assert (=> b!3869603 (= e!2393344 (not (= prefixTokens!80 Nil!41104)))))

(declare-fun lt!1346697 () Unit!58906)

(assert (=> b!3869603 (= lt!1346697 e!2393325)))

(declare-fun c!673395 () Bool)

(declare-fun lt!1346705 () List!41228)

(declare-fun isEmpty!24380 (List!41228) Bool)

(assert (=> b!3869603 (= c!673395 (isEmpty!24380 lt!1346705))))

(declare-fun b!3869604 () Bool)

(declare-fun c!673396 () Bool)

(declare-fun lt!1346701 () List!41228)

(assert (=> b!3869604 (= c!673396 (isEmpty!24380 lt!1346701))))

(declare-fun tail!5905 (List!41228) List!41228)

(assert (=> b!3869604 (= lt!1346701 (tail!5905 prefixTokens!80))))

(declare-fun e!2393345 () Unit!58906)

(declare-fun e!2393324 () Unit!58906)

(assert (=> b!3869604 (= e!2393345 e!2393324)))

(declare-fun b!3869605 () Bool)

(declare-fun res!1567304 () Bool)

(assert (=> b!3869605 (=> res!1567304 e!2393346)))

(declare-fun lt!1346684 () tuple2!40324)

(declare-fun ++!10506 (List!41228 List!41228) List!41228)

(assert (=> b!3869605 (= res!1567304 (not (= lt!1346684 (tuple2!40325 (++!10506 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104) (_1!23296 lt!1346696)) (_2!23296 lt!1346696)))))))

(declare-fun b!3869606 () Bool)

(declare-fun Unit!58910 () Unit!58906)

(assert (=> b!3869606 (= e!2393324 Unit!58910)))

(declare-fun lt!1346667 () tuple2!40322)

(declare-fun lt!1346698 () Unit!58906)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!34 (LexerInterface!5963 List!41229 List!41226 List!41226 List!41228 List!41226 List!41228) Unit!58906)

(assert (=> b!3869606 (= lt!1346698 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!34 thiss!20629 rules!2768 suffix!1176 (_2!23295 lt!1346667) suffixTokens!72 suffixResult!91 lt!1346701))))

(declare-fun res!1567303 () Bool)

(declare-fun call!282708 () tuple2!40324)

(assert (=> b!3869606 (= res!1567303 (not (= call!282708 (tuple2!40325 (++!10506 lt!1346701 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3869606 (=> (not res!1567303) (not e!2393312))))

(assert (=> b!3869606 e!2393312))

(declare-fun b!3869607 () Bool)

(declare-fun e!2393317 () Bool)

(declare-fun tp!1173306 () Bool)

(assert (=> b!3869607 (= e!2393317 (and tp_is_empty!19529 tp!1173306))))

(declare-fun b!3869608 () Bool)

(declare-fun res!1567307 () Bool)

(declare-fun e!2393343 () Bool)

(assert (=> b!3869608 (=> (not res!1567307) (not e!2393343))))

(declare-fun isEmpty!24381 (List!41226) Bool)

(assert (=> b!3869608 (= res!1567307 (not (isEmpty!24381 prefix!426)))))

(declare-fun tp!1173304 () Bool)

(declare-fun e!2393342 () Bool)

(declare-fun e!2393330 () Bool)

(declare-fun b!3869609 () Bool)

(assert (=> b!3869609 (= e!2393330 (and (inv!21 (value!202293 (h!46524 suffixTokens!72))) e!2393342 tp!1173304))))

(declare-fun e!2393318 () Bool)

(assert (=> b!3869610 (= e!2393318 (and tp!1173310 tp!1173317))))

(declare-fun b!3869611 () Bool)

(declare-fun e!2393328 () Bool)

(assert (=> b!3869611 (= e!2393328 false)))

(declare-fun b!3869612 () Bool)

(declare-fun e!2393322 () Bool)

(assert (=> b!3869612 (= e!2393311 e!2393322)))

(declare-fun res!1567305 () Bool)

(assert (=> b!3869612 (=> res!1567305 e!2393322)))

(assert (=> b!3869612 (= res!1567305 (not (= lt!1346668 (_2!23295 (v!39089 lt!1346683)))))))

(assert (=> b!3869612 (= (_2!23295 (v!39089 lt!1346683)) lt!1346668)))

(declare-fun lt!1346703 () Unit!58906)

(declare-fun lemmaSamePrefixThenSameSuffix!1694 (List!41226 List!41226 List!41226 List!41226 List!41226) Unit!58906)

(assert (=> b!3869612 (= lt!1346703 (lemmaSamePrefixThenSameSuffix!1694 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 lt!1346668 lt!1346682))))

(assert (=> b!3869612 (isPrefix!3473 lt!1346685 lt!1346673)))

(declare-fun lt!1346681 () Unit!58906)

(assert (=> b!3869612 (= lt!1346681 (lemmaConcatTwoListThenFirstIsPrefix!2336 lt!1346685 lt!1346668))))

(declare-fun b!3869613 () Bool)

(declare-fun Unit!58911 () Unit!58906)

(assert (=> b!3869613 (= e!2393334 Unit!58911)))

(declare-fun b!3869614 () Bool)

(declare-fun res!1567290 () Bool)

(assert (=> b!3869614 (=> (not res!1567290) (not e!2393343))))

(declare-fun rulesInvariant!5306 (LexerInterface!5963 List!41229) Bool)

(assert (=> b!3869614 (= res!1567290 (rulesInvariant!5306 thiss!20629 rules!2768))))

(declare-fun b!3869615 () Bool)

(declare-fun Unit!58912 () Unit!58906)

(assert (=> b!3869615 (= e!2393345 Unit!58912)))

(declare-fun e!2393319 () Bool)

(declare-fun tp!1173305 () Bool)

(declare-fun b!3869616 () Bool)

(declare-fun inv!55258 (String!46737) Bool)

(declare-fun inv!55261 (TokenValueInjection!12636) Bool)

(assert (=> b!3869616 (= e!2393314 (and tp!1173305 (inv!55258 (tag!7234 (h!46525 rules!2768))) (inv!55261 (transformation!6374 (h!46525 rules!2768))) e!2393319))))

(declare-fun b!3869617 () Bool)

(declare-fun e!2393341 () Bool)

(declare-fun e!2393316 () Bool)

(assert (=> b!3869617 (= e!2393341 e!2393316)))

(declare-fun res!1567308 () Bool)

(assert (=> b!3869617 (=> (not res!1567308) (not e!2393316))))

(get-info :version)

(assert (=> b!3869617 (= res!1567308 ((_ is Some!8791) lt!1346683))))

(declare-fun maxPrefix!3267 (LexerInterface!5963 List!41229 List!41226) Option!8792)

(assert (=> b!3869617 (= lt!1346683 (maxPrefix!3267 thiss!20629 rules!2768 lt!1346682))))

(declare-fun b!3869618 () Bool)

(declare-fun Unit!58913 () Unit!58906)

(assert (=> b!3869618 (= e!2393325 Unit!58913)))

(declare-fun b!3869619 () Bool)

(declare-fun res!1567306 () Bool)

(assert (=> b!3869619 (=> (not res!1567306) (not e!2393343))))

(assert (=> b!3869619 (= res!1567306 (not (isEmpty!24380 prefixTokens!80)))))

(declare-fun b!3869620 () Bool)

(declare-fun e!2393339 () Bool)

(assert (=> b!3869620 (= e!2393339 e!2393329)))

(declare-fun res!1567298 () Bool)

(assert (=> b!3869620 (=> res!1567298 e!2393329)))

(assert (=> b!3869620 (= res!1567298 (or (not (= lt!1346695 lt!1346682)) (not (= lt!1346695 lt!1346704))))))

(declare-fun lt!1346672 () List!41226)

(assert (=> b!3869620 (= lt!1346695 (++!10505 lt!1346672 suffix!1176))))

(declare-fun b!3869621 () Bool)

(declare-fun e!2393338 () Bool)

(declare-fun tp!1173308 () Bool)

(assert (=> b!3869621 (= e!2393338 (and tp_is_empty!19529 tp!1173308))))

(declare-fun e!2393320 () Bool)

(declare-fun b!3869622 () Bool)

(declare-fun tp!1173302 () Bool)

(declare-fun inv!55262 (Token!11886) Bool)

(assert (=> b!3869622 (= e!2393320 (and (inv!55262 (h!46524 prefixTokens!80)) e!2393327 tp!1173302))))

(declare-fun e!2393332 () Bool)

(assert (=> b!3869623 (= e!2393332 (and tp!1173315 tp!1173318))))

(declare-fun b!3869624 () Bool)

(assert (=> b!3869624 (= e!2393326 e!2393339)))

(declare-fun res!1567309 () Bool)

(assert (=> b!3869624 (=> res!1567309 e!2393339)))

(assert (=> b!3869624 (= res!1567309 (not (= lt!1346672 prefix!426)))))

(assert (=> b!3869624 (= lt!1346672 (++!10505 lt!1346685 lt!1346664))))

(declare-fun getSuffix!1928 (List!41226 List!41226) List!41226)

(assert (=> b!3869624 (= lt!1346664 (getSuffix!1928 prefix!426 lt!1346685))))

(declare-fun b!3869625 () Bool)

(declare-fun e!2393333 () Bool)

(assert (=> b!3869625 (= e!2393343 e!2393333)))

(declare-fun res!1567293 () Bool)

(assert (=> b!3869625 (=> (not res!1567293) (not e!2393333))))

(declare-fun lt!1346676 () List!41228)

(assert (=> b!3869625 (= res!1567293 (= lt!1346684 (tuple2!40325 lt!1346676 suffixResult!91)))))

(declare-fun lexList!1731 (LexerInterface!5963 List!41229 List!41226) tuple2!40324)

(assert (=> b!3869625 (= lt!1346684 (lexList!1731 thiss!20629 rules!2768 lt!1346682))))

(assert (=> b!3869625 (= lt!1346676 (++!10506 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3869625 (= lt!1346682 (++!10505 prefix!426 suffix!1176))))

(declare-fun b!3869626 () Bool)

(declare-fun Unit!58914 () Unit!58906)

(assert (=> b!3869626 (= e!2393334 Unit!58914)))

(declare-fun lt!1346669 () Unit!58906)

(assert (=> b!3869626 (= lt!1346669 (lemmaConcatTwoListThenFirstIsPrefix!2336 prefix!426 suffix!1176))))

(assert (=> b!3869626 (isPrefix!3473 prefix!426 lt!1346682)))

(declare-fun lt!1346688 () Unit!58906)

(declare-fun lemmaIsPrefixSameLengthThenSameList!725 (List!41226 List!41226 List!41226) Unit!58906)

(assert (=> b!3869626 (= lt!1346688 (lemmaIsPrefixSameLengthThenSameList!725 lt!1346685 prefix!426 lt!1346682))))

(assert (=> b!3869626 (= lt!1346685 prefix!426)))

(declare-fun lt!1346680 () Unit!58906)

(assert (=> b!3869626 (= lt!1346680 (lemmaSamePrefixThenSameSuffix!1694 lt!1346685 (_2!23295 (v!39089 lt!1346683)) prefix!426 suffix!1176 lt!1346682))))

(assert (=> b!3869626 false))

(declare-fun b!3869627 () Bool)

(assert (=> b!3869627 (= e!2393333 e!2393341)))

(declare-fun res!1567297 () Bool)

(assert (=> b!3869627 (=> (not res!1567297) (not e!2393341))))

(declare-fun lt!1346687 () tuple2!40324)

(assert (=> b!3869627 (= res!1567297 (= (lexList!1731 thiss!20629 rules!2768 suffix!1176) lt!1346687))))

(assert (=> b!3869627 (= lt!1346687 (tuple2!40325 suffixTokens!72 suffixResult!91))))

(declare-fun b!3869628 () Bool)

(declare-fun Unit!58915 () Unit!58906)

(assert (=> b!3869628 (= e!2393324 Unit!58915)))

(declare-fun lt!1346678 () Unit!58906)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!458 (List!41226 List!41226 List!41226 List!41226) Unit!58906)

(assert (=> b!3869628 (= lt!1346678 (lemmaConcatSameAndSameSizesThenSameLists!458 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 (_2!23295 lt!1346667)))))

(assert (=> b!3869628 (= (_2!23295 (v!39089 lt!1346683)) (_2!23295 lt!1346667))))

(declare-fun lt!1346691 () Unit!58906)

(assert (=> b!3869628 (= lt!1346691 (lemmaLexWithSmallerInputCannotProduceSameResults!34 thiss!20629 rules!2768 suffix!1176 (_2!23295 lt!1346667) suffixTokens!72 suffixResult!91))))

(declare-fun res!1567301 () Bool)

(assert (=> b!3869628 (= res!1567301 (not (= call!282708 lt!1346687)))))

(assert (=> b!3869628 (=> (not res!1567301) (not e!2393328))))

(assert (=> b!3869628 e!2393328))

(declare-fun b!3869629 () Bool)

(declare-fun e!2393315 () Bool)

(assert (=> b!3869629 (= e!2393315 (= (size!30894 (_1!23295 (v!39089 lt!1346683))) (size!30893 (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683))))))))

(declare-fun bm!282703 () Bool)

(assert (=> bm!282703 (= call!282708 (lexList!1731 thiss!20629 rules!2768 (_2!23295 lt!1346667)))))

(declare-fun b!3869630 () Bool)

(declare-fun res!1567291 () Bool)

(assert (=> b!3869630 (=> res!1567291 e!2393336)))

(declare-fun head!8188 (List!41228) Token!11886)

(assert (=> b!3869630 (= res!1567291 (not (= (head!8188 prefixTokens!80) (_1!23295 (v!39089 lt!1346683)))))))

(declare-fun b!3869631 () Bool)

(declare-fun e!2393313 () Bool)

(declare-fun tp!1173309 () Bool)

(assert (=> b!3869631 (= e!2393313 (and (inv!55262 (h!46524 suffixTokens!72)) e!2393330 tp!1173309))))

(declare-fun b!3869632 () Bool)

(declare-fun Unit!58916 () Unit!58906)

(assert (=> b!3869632 (= e!2393323 Unit!58916)))

(declare-fun lt!1346699 () Int)

(assert (=> b!3869632 (= lt!1346699 (size!30893 lt!1346682))))

(declare-fun lt!1346689 () Unit!58906)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1247 (LexerInterface!5963 List!41229 List!41226 List!41226 List!41226 Rule!12548) Unit!58906)

(assert (=> b!3869632 (= lt!1346689 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1247 thiss!20629 rules!2768 lt!1346685 lt!1346682 (_2!23295 (v!39089 lt!1346683)) (rule!9258 (_1!23295 (v!39089 lt!1346683)))))))

(declare-fun lt!1346670 () TokenValue!6604)

(declare-fun maxPrefixOneRule!2349 (LexerInterface!5963 Rule!12548 List!41226) Option!8792)

(assert (=> b!3869632 (= (maxPrefixOneRule!2349 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))) lt!1346682) (Some!8791 (tuple2!40323 (Token!11887 lt!1346670 (rule!9258 (_1!23295 (v!39089 lt!1346683))) lt!1346662 lt!1346685) (_2!23295 (v!39089 lt!1346683)))))))

(declare-fun get!13601 (Option!8792) tuple2!40322)

(assert (=> b!3869632 (= lt!1346667 (get!13601 lt!1346683))))

(declare-fun c!673399 () Bool)

(assert (=> b!3869632 (= c!673399 (< (size!30893 (_2!23295 lt!1346667)) lt!1346690))))

(declare-fun lt!1346679 () Unit!58906)

(assert (=> b!3869632 (= lt!1346679 e!2393345)))

(assert (=> b!3869632 false))

(declare-fun tp!1173312 () Bool)

(declare-fun b!3869633 () Bool)

(assert (=> b!3869633 (= e!2393337 (and tp!1173312 (inv!55258 (tag!7234 (rule!9258 (h!46524 prefixTokens!80)))) (inv!55261 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) e!2393318))))

(declare-fun b!3869634 () Bool)

(assert (=> b!3869634 (= e!2393316 (not e!2393346))))

(declare-fun res!1567295 () Bool)

(assert (=> b!3869634 (=> res!1567295 e!2393346)))

(assert (=> b!3869634 (= res!1567295 (not (= lt!1346704 lt!1346682)))))

(assert (=> b!3869634 (= lt!1346696 (lexList!1731 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346683))))))

(declare-fun lt!1346693 () List!41226)

(assert (=> b!3869634 (and (= (size!30894 (_1!23295 (v!39089 lt!1346683))) lt!1346662) (= (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683))) lt!1346685) (= (v!39089 lt!1346683) (tuple2!40323 (Token!11887 lt!1346670 (rule!9258 (_1!23295 (v!39089 lt!1346683))) lt!1346662 lt!1346685) lt!1346693)))))

(assert (=> b!3869634 (= lt!1346662 (size!30893 lt!1346685))))

(assert (=> b!3869634 e!2393315))

(declare-fun res!1567288 () Bool)

(assert (=> b!3869634 (=> (not res!1567288) (not e!2393315))))

(assert (=> b!3869634 (= res!1567288 (= (value!202293 (_1!23295 (v!39089 lt!1346683))) lt!1346670))))

(declare-fun apply!9617 (TokenValueInjection!12636 BalanceConc!24764) TokenValue!6604)

(declare-fun seqFromList!4645 (List!41226) BalanceConc!24764)

(assert (=> b!3869634 (= lt!1346670 (apply!9617 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (seqFromList!4645 lt!1346685)))))

(assert (=> b!3869634 (= (_2!23295 (v!39089 lt!1346683)) lt!1346693)))

(declare-fun lt!1346671 () Unit!58906)

(assert (=> b!3869634 (= lt!1346671 (lemmaSamePrefixThenSameSuffix!1694 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 lt!1346693 lt!1346682))))

(assert (=> b!3869634 (= lt!1346693 (getSuffix!1928 lt!1346682 lt!1346685))))

(assert (=> b!3869634 (isPrefix!3473 lt!1346685 lt!1346704)))

(assert (=> b!3869634 (= lt!1346704 (++!10505 lt!1346685 (_2!23295 (v!39089 lt!1346683))))))

(declare-fun lt!1346663 () Unit!58906)

(assert (=> b!3869634 (= lt!1346663 (lemmaConcatTwoListThenFirstIsPrefix!2336 lt!1346685 (_2!23295 (v!39089 lt!1346683))))))

(declare-fun list!15290 (BalanceConc!24764) List!41226)

(declare-fun charsOf!4202 (Token!11886) BalanceConc!24764)

(assert (=> b!3869634 (= lt!1346685 (list!15290 (charsOf!4202 (_1!23295 (v!39089 lt!1346683)))))))

(declare-fun ruleValid!2326 (LexerInterface!5963 Rule!12548) Bool)

(assert (=> b!3869634 (ruleValid!2326 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))))))

(declare-fun lt!1346674 () Unit!58906)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1406 (LexerInterface!5963 Rule!12548 List!41229) Unit!58906)

(assert (=> b!3869634 (= lt!1346674 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1406 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))) rules!2768))))

(declare-fun lt!1346702 () Unit!58906)

(declare-fun lemmaCharactersSize!1035 (Token!11886) Unit!58906)

(assert (=> b!3869634 (= lt!1346702 (lemmaCharactersSize!1035 (_1!23295 (v!39089 lt!1346683))))))

(assert (=> b!3869635 (= e!2393319 (and tp!1173313 tp!1173311))))

(declare-fun tp!1173307 () Bool)

(declare-fun b!3869636 () Bool)

(assert (=> b!3869636 (= e!2393342 (and tp!1173307 (inv!55258 (tag!7234 (rule!9258 (h!46524 suffixTokens!72)))) (inv!55261 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) e!2393332))))

(declare-fun b!3869637 () Bool)

(assert (=> b!3869637 (= e!2393322 e!2393344)))

(declare-fun res!1567289 () Bool)

(assert (=> b!3869637 (=> res!1567289 e!2393344)))

(assert (=> b!3869637 (= res!1567289 (not (= lt!1346696 (tuple2!40325 (++!10506 lt!1346705 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3869637 (= lt!1346705 (tail!5905 prefixTokens!80))))

(assert (=> b!3869637 (isPrefix!3473 lt!1346664 lt!1346668)))

(declare-fun lt!1346692 () Unit!58906)

(assert (=> b!3869637 (= lt!1346692 (lemmaConcatTwoListThenFirstIsPrefix!2336 lt!1346664 suffix!1176))))

(declare-fun b!3869638 () Bool)

(declare-fun res!1567292 () Bool)

(assert (=> b!3869638 (=> (not res!1567292) (not e!2393343))))

(declare-fun isEmpty!24382 (List!41229) Bool)

(assert (=> b!3869638 (= res!1567292 (not (isEmpty!24382 rules!2768)))))

(declare-fun b!3869602 () Bool)

(declare-fun Unit!58917 () Unit!58906)

(assert (=> b!3869602 (= e!2393323 Unit!58917)))

(declare-fun res!1567302 () Bool)

(assert (=> start!363060 (=> (not res!1567302) (not e!2393343))))

(assert (=> start!363060 (= res!1567302 ((_ is Lexer!5961) thiss!20629))))

(assert (=> start!363060 e!2393343))

(assert (=> start!363060 e!2393317))

(assert (=> start!363060 true))

(assert (=> start!363060 e!2393338))

(assert (=> start!363060 e!2393340))

(assert (=> start!363060 e!2393320))

(assert (=> start!363060 e!2393313))

(assert (=> start!363060 e!2393309))

(assert (= (and start!363060 res!1567302) b!3869638))

(assert (= (and b!3869638 res!1567292) b!3869614))

(assert (= (and b!3869614 res!1567290) b!3869619))

(assert (= (and b!3869619 res!1567306) b!3869608))

(assert (= (and b!3869608 res!1567307) b!3869625))

(assert (= (and b!3869625 res!1567293) b!3869627))

(assert (= (and b!3869627 res!1567297) b!3869617))

(assert (= (and b!3869617 res!1567308) b!3869634))

(assert (= (and b!3869634 res!1567288) b!3869629))

(assert (= (and b!3869634 (not res!1567295)) b!3869605))

(assert (= (and b!3869605 (not res!1567304)) b!3869597))

(assert (= (and b!3869597 (not res!1567300)) b!3869594))

(assert (= (and b!3869594 c!673398) b!3869632))

(assert (= (and b!3869594 (not c!673398)) b!3869602))

(assert (= (and b!3869632 c!673399) b!3869604))

(assert (= (and b!3869632 (not c!673399)) b!3869615))

(assert (= (and b!3869604 c!673396) b!3869628))

(assert (= (and b!3869604 (not c!673396)) b!3869606))

(assert (= (and b!3869628 res!1567301) b!3869611))

(assert (= (and b!3869606 res!1567303) b!3869600))

(assert (= (or b!3869628 b!3869606) bm!282703))

(assert (= (and b!3869594 c!673397) b!3869626))

(assert (= (and b!3869594 (not c!673397)) b!3869613))

(assert (= (and b!3869594 (not res!1567296)) b!3869630))

(assert (= (and b!3869630 (not res!1567291)) b!3869598))

(assert (= (and b!3869598 (not res!1567294)) b!3869624))

(assert (= (and b!3869624 (not res!1567309)) b!3869620))

(assert (= (and b!3869620 (not res!1567298)) b!3869593))

(assert (= (and b!3869593 (not res!1567299)) b!3869612))

(assert (= (and b!3869612 (not res!1567305)) b!3869637))

(assert (= (and b!3869637 (not res!1567289)) b!3869603))

(assert (= (and b!3869603 c!673395) b!3869601))

(assert (= (and b!3869603 (not c!673395)) b!3869618))

(assert (= (and start!363060 ((_ is Cons!41102) suffixResult!91)) b!3869607))

(assert (= (and start!363060 ((_ is Cons!41102) suffix!1176)) b!3869621))

(assert (= b!3869616 b!3869635))

(assert (= b!3869596 b!3869616))

(assert (= (and start!363060 ((_ is Cons!41105) rules!2768)) b!3869596))

(assert (= b!3869633 b!3869610))

(assert (= b!3869599 b!3869633))

(assert (= b!3869622 b!3869599))

(assert (= (and start!363060 ((_ is Cons!41104) prefixTokens!80)) b!3869622))

(assert (= b!3869636 b!3869623))

(assert (= b!3869609 b!3869636))

(assert (= b!3869631 b!3869609))

(assert (= (and start!363060 ((_ is Cons!41104) suffixTokens!72)) b!3869631))

(assert (= (and start!363060 ((_ is Cons!41102) prefix!426)) b!3869595))

(declare-fun m!4425671 () Bool)

(assert (=> b!3869626 m!4425671))

(declare-fun m!4425673 () Bool)

(assert (=> b!3869626 m!4425673))

(declare-fun m!4425675 () Bool)

(assert (=> b!3869626 m!4425675))

(declare-fun m!4425677 () Bool)

(assert (=> b!3869626 m!4425677))

(declare-fun m!4425679 () Bool)

(assert (=> b!3869604 m!4425679))

(declare-fun m!4425681 () Bool)

(assert (=> b!3869604 m!4425681))

(declare-fun m!4425683 () Bool)

(assert (=> b!3869594 m!4425683))

(declare-fun m!4425685 () Bool)

(assert (=> b!3869594 m!4425685))

(declare-fun m!4425687 () Bool)

(assert (=> b!3869619 m!4425687))

(declare-fun m!4425689 () Bool)

(assert (=> b!3869599 m!4425689))

(declare-fun m!4425691 () Bool)

(assert (=> bm!282703 m!4425691))

(declare-fun m!4425693 () Bool)

(assert (=> b!3869616 m!4425693))

(declare-fun m!4425695 () Bool)

(assert (=> b!3869616 m!4425695))

(declare-fun m!4425697 () Bool)

(assert (=> b!3869601 m!4425697))

(declare-fun m!4425699 () Bool)

(assert (=> b!3869622 m!4425699))

(declare-fun m!4425701 () Bool)

(assert (=> b!3869617 m!4425701))

(declare-fun m!4425703 () Bool)

(assert (=> b!3869598 m!4425703))

(declare-fun m!4425705 () Bool)

(assert (=> b!3869598 m!4425705))

(declare-fun m!4425707 () Bool)

(assert (=> b!3869598 m!4425707))

(assert (=> b!3869598 m!4425671))

(assert (=> b!3869598 m!4425673))

(declare-fun m!4425709 () Bool)

(assert (=> b!3869612 m!4425709))

(declare-fun m!4425711 () Bool)

(assert (=> b!3869612 m!4425711))

(declare-fun m!4425713 () Bool)

(assert (=> b!3869612 m!4425713))

(declare-fun m!4425715 () Bool)

(assert (=> b!3869634 m!4425715))

(declare-fun m!4425717 () Bool)

(assert (=> b!3869634 m!4425717))

(declare-fun m!4425719 () Bool)

(assert (=> b!3869634 m!4425719))

(declare-fun m!4425721 () Bool)

(assert (=> b!3869634 m!4425721))

(declare-fun m!4425723 () Bool)

(assert (=> b!3869634 m!4425723))

(declare-fun m!4425725 () Bool)

(assert (=> b!3869634 m!4425725))

(declare-fun m!4425727 () Bool)

(assert (=> b!3869634 m!4425727))

(declare-fun m!4425729 () Bool)

(assert (=> b!3869634 m!4425729))

(assert (=> b!3869634 m!4425715))

(declare-fun m!4425731 () Bool)

(assert (=> b!3869634 m!4425731))

(declare-fun m!4425733 () Bool)

(assert (=> b!3869634 m!4425733))

(declare-fun m!4425735 () Bool)

(assert (=> b!3869634 m!4425735))

(declare-fun m!4425737 () Bool)

(assert (=> b!3869634 m!4425737))

(declare-fun m!4425739 () Bool)

(assert (=> b!3869634 m!4425739))

(declare-fun m!4425741 () Bool)

(assert (=> b!3869634 m!4425741))

(assert (=> b!3869634 m!4425735))

(declare-fun m!4425743 () Bool)

(assert (=> b!3869633 m!4425743))

(declare-fun m!4425745 () Bool)

(assert (=> b!3869633 m!4425745))

(declare-fun m!4425747 () Bool)

(assert (=> b!3869637 m!4425747))

(assert (=> b!3869637 m!4425681))

(declare-fun m!4425749 () Bool)

(assert (=> b!3869637 m!4425749))

(declare-fun m!4425751 () Bool)

(assert (=> b!3869637 m!4425751))

(declare-fun m!4425753 () Bool)

(assert (=> b!3869627 m!4425753))

(declare-fun m!4425755 () Bool)

(assert (=> b!3869608 m!4425755))

(declare-fun m!4425757 () Bool)

(assert (=> b!3869603 m!4425757))

(declare-fun m!4425759 () Bool)

(assert (=> b!3869638 m!4425759))

(declare-fun m!4425761 () Bool)

(assert (=> b!3869605 m!4425761))

(declare-fun m!4425763 () Bool)

(assert (=> b!3869631 m!4425763))

(declare-fun m!4425765 () Bool)

(assert (=> b!3869593 m!4425765))

(declare-fun m!4425767 () Bool)

(assert (=> b!3869593 m!4425767))

(declare-fun m!4425769 () Bool)

(assert (=> b!3869593 m!4425769))

(declare-fun m!4425771 () Bool)

(assert (=> b!3869620 m!4425771))

(declare-fun m!4425773 () Bool)

(assert (=> b!3869630 m!4425773))

(declare-fun m!4425775 () Bool)

(assert (=> b!3869609 m!4425775))

(declare-fun m!4425777 () Bool)

(assert (=> b!3869625 m!4425777))

(declare-fun m!4425779 () Bool)

(assert (=> b!3869625 m!4425779))

(declare-fun m!4425781 () Bool)

(assert (=> b!3869625 m!4425781))

(declare-fun m!4425783 () Bool)

(assert (=> b!3869606 m!4425783))

(declare-fun m!4425785 () Bool)

(assert (=> b!3869606 m!4425785))

(declare-fun m!4425787 () Bool)

(assert (=> b!3869636 m!4425787))

(declare-fun m!4425789 () Bool)

(assert (=> b!3869636 m!4425789))

(declare-fun m!4425791 () Bool)

(assert (=> b!3869629 m!4425791))

(declare-fun m!4425793 () Bool)

(assert (=> b!3869628 m!4425793))

(declare-fun m!4425795 () Bool)

(assert (=> b!3869628 m!4425795))

(declare-fun m!4425797 () Bool)

(assert (=> b!3869624 m!4425797))

(declare-fun m!4425799 () Bool)

(assert (=> b!3869624 m!4425799))

(declare-fun m!4425801 () Bool)

(assert (=> b!3869632 m!4425801))

(declare-fun m!4425803 () Bool)

(assert (=> b!3869632 m!4425803))

(declare-fun m!4425805 () Bool)

(assert (=> b!3869632 m!4425805))

(declare-fun m!4425807 () Bool)

(assert (=> b!3869632 m!4425807))

(declare-fun m!4425809 () Bool)

(assert (=> b!3869632 m!4425809))

(declare-fun m!4425811 () Bool)

(assert (=> b!3869614 m!4425811))

(check-sat (not b!3869625) b_and!290003 (not b!3869617) (not b_next!105145) (not b!3869604) (not b!3869598) (not b!3869601) (not b!3869620) (not b_next!105147) b_and!289997 (not b!3869599) (not b_next!105141) (not b!3869608) (not b!3869603) b_and!290001 (not b!3869616) (not b!3869628) (not b!3869605) (not b!3869614) (not b!3869593) (not b!3869612) (not b!3869633) (not b!3869638) (not b!3869596) (not b!3869606) (not bm!282703) (not b!3869632) (not b!3869636) (not b_next!105143) (not b!3869627) b_and!289995 (not b!3869634) (not b!3869631) b_and!290005 (not b!3869609) (not b!3869630) tp_is_empty!19529 b_and!289999 (not b_next!105149) (not b!3869624) (not b!3869629) (not b!3869621) (not b!3869626) (not b!3869619) (not b!3869637) (not b!3869595) (not b_next!105151) (not b!3869607) (not b!3869622) (not b!3869594))
(check-sat b_and!289997 (not b_next!105141) b_and!290001 b_and!290003 (not b_next!105143) b_and!289995 (not b_next!105145) b_and!290005 (not b_next!105147) (not b_next!105151) b_and!289999 (not b_next!105149))
(get-model)

(declare-fun d!1146026 () Bool)

(assert (=> d!1146026 (not (= (lexList!1731 thiss!20629 rules!2768 suffix!1176) (tuple2!40325 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1346708 () Unit!58906)

(declare-fun choose!22843 (LexerInterface!5963 List!41229 List!41226 List!41226 List!41228 List!41226) Unit!58906)

(assert (=> d!1146026 (= lt!1346708 (choose!22843 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346683)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1146026 (not (isEmpty!24382 rules!2768))))

(assert (=> d!1146026 (= (lemmaLexWithSmallerInputCannotProduceSameResults!34 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346683)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1346708)))

(declare-fun bs!583397 () Bool)

(assert (= bs!583397 d!1146026))

(assert (=> bs!583397 m!4425753))

(declare-fun m!4425813 () Bool)

(assert (=> bs!583397 m!4425813))

(assert (=> bs!583397 m!4425759))

(assert (=> b!3869601 d!1146026))

(declare-fun d!1146028 () Bool)

(declare-fun res!1567318 () Bool)

(declare-fun e!2393349 () Bool)

(assert (=> d!1146028 (=> (not res!1567318) (not e!2393349))))

(assert (=> d!1146028 (= res!1567318 (not (isEmpty!24381 (originalCharacters!6974 (h!46524 prefixTokens!80)))))))

(assert (=> d!1146028 (= (inv!55262 (h!46524 prefixTokens!80)) e!2393349)))

(declare-fun b!3869643 () Bool)

(declare-fun res!1567319 () Bool)

(assert (=> b!3869643 (=> (not res!1567319) (not e!2393349))))

(declare-fun dynLambda!17687 (Int TokenValue!6604) BalanceConc!24764)

(assert (=> b!3869643 (= res!1567319 (= (originalCharacters!6974 (h!46524 prefixTokens!80)) (list!15290 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (value!202293 (h!46524 prefixTokens!80))))))))

(declare-fun b!3869644 () Bool)

(assert (=> b!3869644 (= e!2393349 (= (size!30894 (h!46524 prefixTokens!80)) (size!30893 (originalCharacters!6974 (h!46524 prefixTokens!80)))))))

(assert (= (and d!1146028 res!1567318) b!3869643))

(assert (= (and b!3869643 res!1567319) b!3869644))

(declare-fun b_lambda!113031 () Bool)

(assert (=> (not b_lambda!113031) (not b!3869643)))

(declare-fun t!314298 () Bool)

(declare-fun tb!224369 () Bool)

(assert (=> (and b!3869610 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))) t!314298) tb!224369))

(declare-fun b!3869649 () Bool)

(declare-fun e!2393352 () Bool)

(declare-fun tp!1173321 () Bool)

(declare-fun inv!55263 (Conc!12585) Bool)

(assert (=> b!3869649 (= e!2393352 (and (inv!55263 (c!673401 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (value!202293 (h!46524 prefixTokens!80))))) tp!1173321))))

(declare-fun result!273274 () Bool)

(declare-fun inv!55264 (BalanceConc!24764) Bool)

(assert (=> tb!224369 (= result!273274 (and (inv!55264 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (value!202293 (h!46524 prefixTokens!80)))) e!2393352))))

(assert (= tb!224369 b!3869649))

(declare-fun m!4425815 () Bool)

(assert (=> b!3869649 m!4425815))

(declare-fun m!4425817 () Bool)

(assert (=> tb!224369 m!4425817))

(assert (=> b!3869643 t!314298))

(declare-fun b_and!290007 () Bool)

(assert (= b_and!289997 (and (=> t!314298 result!273274) b_and!290007)))

(declare-fun t!314300 () Bool)

(declare-fun tb!224371 () Bool)

(assert (=> (and b!3869635 (= (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))) t!314300) tb!224371))

(declare-fun result!273278 () Bool)

(assert (= result!273278 result!273274))

(assert (=> b!3869643 t!314300))

(declare-fun b_and!290009 () Bool)

(assert (= b_and!290001 (and (=> t!314300 result!273278) b_and!290009)))

(declare-fun t!314302 () Bool)

(declare-fun tb!224373 () Bool)

(assert (=> (and b!3869623 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))) t!314302) tb!224373))

(declare-fun result!273280 () Bool)

(assert (= result!273280 result!273274))

(assert (=> b!3869643 t!314302))

(declare-fun b_and!290011 () Bool)

(assert (= b_and!290005 (and (=> t!314302 result!273280) b_and!290011)))

(declare-fun m!4425819 () Bool)

(assert (=> d!1146028 m!4425819))

(declare-fun m!4425821 () Bool)

(assert (=> b!3869643 m!4425821))

(assert (=> b!3869643 m!4425821))

(declare-fun m!4425823 () Bool)

(assert (=> b!3869643 m!4425823))

(declare-fun m!4425825 () Bool)

(assert (=> b!3869644 m!4425825))

(assert (=> b!3869622 d!1146028))

(declare-fun b!3869660 () Bool)

(declare-fun e!2393361 () tuple2!40324)

(assert (=> b!3869660 (= e!2393361 (tuple2!40325 Nil!41104 lt!1346682))))

(declare-fun b!3869661 () Bool)

(declare-fun e!2393360 () Bool)

(declare-fun e!2393359 () Bool)

(assert (=> b!3869661 (= e!2393360 e!2393359)))

(declare-fun res!1567322 () Bool)

(declare-fun lt!1346717 () tuple2!40324)

(assert (=> b!3869661 (= res!1567322 (< (size!30893 (_2!23296 lt!1346717)) (size!30893 lt!1346682)))))

(assert (=> b!3869661 (=> (not res!1567322) (not e!2393359))))

(declare-fun b!3869662 () Bool)

(assert (=> b!3869662 (= e!2393360 (= (_2!23296 lt!1346717) lt!1346682))))

(declare-fun b!3869663 () Bool)

(assert (=> b!3869663 (= e!2393359 (not (isEmpty!24380 (_1!23296 lt!1346717))))))

(declare-fun d!1146030 () Bool)

(assert (=> d!1146030 e!2393360))

(declare-fun c!673407 () Bool)

(declare-fun size!30895 (List!41228) Int)

(assert (=> d!1146030 (= c!673407 (> (size!30895 (_1!23296 lt!1346717)) 0))))

(assert (=> d!1146030 (= lt!1346717 e!2393361)))

(declare-fun c!673406 () Bool)

(declare-fun lt!1346715 () Option!8792)

(assert (=> d!1146030 (= c!673406 ((_ is Some!8791) lt!1346715))))

(assert (=> d!1146030 (= lt!1346715 (maxPrefix!3267 thiss!20629 rules!2768 lt!1346682))))

(assert (=> d!1146030 (= (lexList!1731 thiss!20629 rules!2768 lt!1346682) lt!1346717)))

(declare-fun b!3869664 () Bool)

(declare-fun lt!1346716 () tuple2!40324)

(assert (=> b!3869664 (= e!2393361 (tuple2!40325 (Cons!41104 (_1!23295 (v!39089 lt!1346715)) (_1!23296 lt!1346716)) (_2!23296 lt!1346716)))))

(assert (=> b!3869664 (= lt!1346716 (lexList!1731 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346715))))))

(assert (= (and d!1146030 c!673406) b!3869664))

(assert (= (and d!1146030 (not c!673406)) b!3869660))

(assert (= (and d!1146030 c!673407) b!3869661))

(assert (= (and d!1146030 (not c!673407)) b!3869662))

(assert (= (and b!3869661 res!1567322) b!3869663))

(declare-fun m!4425827 () Bool)

(assert (=> b!3869661 m!4425827))

(assert (=> b!3869661 m!4425809))

(declare-fun m!4425829 () Bool)

(assert (=> b!3869663 m!4425829))

(declare-fun m!4425831 () Bool)

(assert (=> d!1146030 m!4425831))

(assert (=> d!1146030 m!4425701))

(declare-fun m!4425833 () Bool)

(assert (=> b!3869664 m!4425833))

(assert (=> b!3869625 d!1146030))

(declare-fun b!3869675 () Bool)

(declare-fun res!1567328 () Bool)

(declare-fun e!2393367 () Bool)

(assert (=> b!3869675 (=> (not res!1567328) (not e!2393367))))

(declare-fun lt!1346720 () List!41228)

(assert (=> b!3869675 (= res!1567328 (= (size!30895 lt!1346720) (+ (size!30895 prefixTokens!80) (size!30895 suffixTokens!72))))))

(declare-fun d!1146032 () Bool)

(assert (=> d!1146032 e!2393367))

(declare-fun res!1567327 () Bool)

(assert (=> d!1146032 (=> (not res!1567327) (not e!2393367))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6134 (List!41228) (InoxSet Token!11886))

(assert (=> d!1146032 (= res!1567327 (= (content!6134 lt!1346720) ((_ map or) (content!6134 prefixTokens!80) (content!6134 suffixTokens!72))))))

(declare-fun e!2393366 () List!41228)

(assert (=> d!1146032 (= lt!1346720 e!2393366)))

(declare-fun c!673410 () Bool)

(assert (=> d!1146032 (= c!673410 ((_ is Nil!41104) prefixTokens!80))))

(assert (=> d!1146032 (= (++!10506 prefixTokens!80 suffixTokens!72) lt!1346720)))

(declare-fun b!3869674 () Bool)

(assert (=> b!3869674 (= e!2393366 (Cons!41104 (h!46524 prefixTokens!80) (++!10506 (t!314295 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3869673 () Bool)

(assert (=> b!3869673 (= e!2393366 suffixTokens!72)))

(declare-fun b!3869676 () Bool)

(assert (=> b!3869676 (= e!2393367 (or (not (= suffixTokens!72 Nil!41104)) (= lt!1346720 prefixTokens!80)))))

(assert (= (and d!1146032 c!673410) b!3869673))

(assert (= (and d!1146032 (not c!673410)) b!3869674))

(assert (= (and d!1146032 res!1567327) b!3869675))

(assert (= (and b!3869675 res!1567328) b!3869676))

(declare-fun m!4425835 () Bool)

(assert (=> b!3869675 m!4425835))

(declare-fun m!4425837 () Bool)

(assert (=> b!3869675 m!4425837))

(declare-fun m!4425839 () Bool)

(assert (=> b!3869675 m!4425839))

(declare-fun m!4425841 () Bool)

(assert (=> d!1146032 m!4425841))

(declare-fun m!4425843 () Bool)

(assert (=> d!1146032 m!4425843))

(declare-fun m!4425845 () Bool)

(assert (=> d!1146032 m!4425845))

(declare-fun m!4425847 () Bool)

(assert (=> b!3869674 m!4425847))

(assert (=> b!3869625 d!1146032))

(declare-fun b!3869686 () Bool)

(declare-fun e!2393373 () List!41226)

(assert (=> b!3869686 (= e!2393373 (Cons!41102 (h!46522 prefix!426) (++!10505 (t!314293 prefix!426) suffix!1176)))))

(declare-fun lt!1346723 () List!41226)

(declare-fun e!2393372 () Bool)

(declare-fun b!3869688 () Bool)

(assert (=> b!3869688 (= e!2393372 (or (not (= suffix!1176 Nil!41102)) (= lt!1346723 prefix!426)))))

(declare-fun b!3869685 () Bool)

(assert (=> b!3869685 (= e!2393373 suffix!1176)))

(declare-fun b!3869687 () Bool)

(declare-fun res!1567334 () Bool)

(assert (=> b!3869687 (=> (not res!1567334) (not e!2393372))))

(assert (=> b!3869687 (= res!1567334 (= (size!30893 lt!1346723) (+ (size!30893 prefix!426) (size!30893 suffix!1176))))))

(declare-fun d!1146034 () Bool)

(assert (=> d!1146034 e!2393372))

(declare-fun res!1567333 () Bool)

(assert (=> d!1146034 (=> (not res!1567333) (not e!2393372))))

(declare-fun content!6135 (List!41226) (InoxSet C!22744))

(assert (=> d!1146034 (= res!1567333 (= (content!6135 lt!1346723) ((_ map or) (content!6135 prefix!426) (content!6135 suffix!1176))))))

(assert (=> d!1146034 (= lt!1346723 e!2393373)))

(declare-fun c!673413 () Bool)

(assert (=> d!1146034 (= c!673413 ((_ is Nil!41102) prefix!426))))

(assert (=> d!1146034 (= (++!10505 prefix!426 suffix!1176) lt!1346723)))

(assert (= (and d!1146034 c!673413) b!3869685))

(assert (= (and d!1146034 (not c!673413)) b!3869686))

(assert (= (and d!1146034 res!1567333) b!3869687))

(assert (= (and b!3869687 res!1567334) b!3869688))

(declare-fun m!4425849 () Bool)

(assert (=> b!3869686 m!4425849))

(declare-fun m!4425851 () Bool)

(assert (=> b!3869687 m!4425851))

(assert (=> b!3869687 m!4425703))

(assert (=> b!3869687 m!4425683))

(declare-fun m!4425853 () Bool)

(assert (=> d!1146034 m!4425853))

(declare-fun m!4425855 () Bool)

(assert (=> d!1146034 m!4425855))

(declare-fun m!4425857 () Bool)

(assert (=> d!1146034 m!4425857))

(assert (=> b!3869625 d!1146034))

(declare-fun d!1146036 () Bool)

(assert (=> d!1146036 (= (isEmpty!24380 lt!1346705) ((_ is Nil!41104) lt!1346705))))

(assert (=> b!3869603 d!1146036))

(declare-fun b!3869690 () Bool)

(declare-fun e!2393375 () List!41226)

(assert (=> b!3869690 (= e!2393375 (Cons!41102 (h!46522 lt!1346685) (++!10505 (t!314293 lt!1346685) lt!1346664)))))

(declare-fun e!2393374 () Bool)

(declare-fun lt!1346724 () List!41226)

(declare-fun b!3869692 () Bool)

(assert (=> b!3869692 (= e!2393374 (or (not (= lt!1346664 Nil!41102)) (= lt!1346724 lt!1346685)))))

(declare-fun b!3869689 () Bool)

(assert (=> b!3869689 (= e!2393375 lt!1346664)))

(declare-fun b!3869691 () Bool)

(declare-fun res!1567336 () Bool)

(assert (=> b!3869691 (=> (not res!1567336) (not e!2393374))))

(assert (=> b!3869691 (= res!1567336 (= (size!30893 lt!1346724) (+ (size!30893 lt!1346685) (size!30893 lt!1346664))))))

(declare-fun d!1146038 () Bool)

(assert (=> d!1146038 e!2393374))

(declare-fun res!1567335 () Bool)

(assert (=> d!1146038 (=> (not res!1567335) (not e!2393374))))

(assert (=> d!1146038 (= res!1567335 (= (content!6135 lt!1346724) ((_ map or) (content!6135 lt!1346685) (content!6135 lt!1346664))))))

(assert (=> d!1146038 (= lt!1346724 e!2393375)))

(declare-fun c!673414 () Bool)

(assert (=> d!1146038 (= c!673414 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146038 (= (++!10505 lt!1346685 lt!1346664) lt!1346724)))

(assert (= (and d!1146038 c!673414) b!3869689))

(assert (= (and d!1146038 (not c!673414)) b!3869690))

(assert (= (and d!1146038 res!1567335) b!3869691))

(assert (= (and b!3869691 res!1567336) b!3869692))

(declare-fun m!4425859 () Bool)

(assert (=> b!3869690 m!4425859))

(declare-fun m!4425861 () Bool)

(assert (=> b!3869691 m!4425861))

(assert (=> b!3869691 m!4425733))

(declare-fun m!4425863 () Bool)

(assert (=> b!3869691 m!4425863))

(declare-fun m!4425865 () Bool)

(assert (=> d!1146038 m!4425865))

(declare-fun m!4425867 () Bool)

(assert (=> d!1146038 m!4425867))

(declare-fun m!4425869 () Bool)

(assert (=> d!1146038 m!4425869))

(assert (=> b!3869624 d!1146038))

(declare-fun d!1146040 () Bool)

(declare-fun lt!1346727 () List!41226)

(assert (=> d!1146040 (= (++!10505 lt!1346685 lt!1346727) prefix!426)))

(declare-fun e!2393378 () List!41226)

(assert (=> d!1146040 (= lt!1346727 e!2393378)))

(declare-fun c!673417 () Bool)

(assert (=> d!1146040 (= c!673417 ((_ is Cons!41102) lt!1346685))))

(assert (=> d!1146040 (>= (size!30893 prefix!426) (size!30893 lt!1346685))))

(assert (=> d!1146040 (= (getSuffix!1928 prefix!426 lt!1346685) lt!1346727)))

(declare-fun b!3869697 () Bool)

(declare-fun tail!5906 (List!41226) List!41226)

(assert (=> b!3869697 (= e!2393378 (getSuffix!1928 (tail!5906 prefix!426) (t!314293 lt!1346685)))))

(declare-fun b!3869698 () Bool)

(assert (=> b!3869698 (= e!2393378 prefix!426)))

(assert (= (and d!1146040 c!673417) b!3869697))

(assert (= (and d!1146040 (not c!673417)) b!3869698))

(declare-fun m!4425871 () Bool)

(assert (=> d!1146040 m!4425871))

(assert (=> d!1146040 m!4425703))

(assert (=> d!1146040 m!4425733))

(declare-fun m!4425873 () Bool)

(assert (=> b!3869697 m!4425873))

(assert (=> b!3869697 m!4425873))

(declare-fun m!4425875 () Bool)

(assert (=> b!3869697 m!4425875))

(assert (=> b!3869624 d!1146040))

(declare-fun b!3869701 () Bool)

(declare-fun res!1567338 () Bool)

(declare-fun e!2393380 () Bool)

(assert (=> b!3869701 (=> (not res!1567338) (not e!2393380))))

(declare-fun lt!1346728 () List!41228)

(assert (=> b!3869701 (= res!1567338 (= (size!30895 lt!1346728) (+ (size!30895 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104)) (size!30895 (_1!23296 lt!1346696)))))))

(declare-fun d!1146042 () Bool)

(assert (=> d!1146042 e!2393380))

(declare-fun res!1567337 () Bool)

(assert (=> d!1146042 (=> (not res!1567337) (not e!2393380))))

(assert (=> d!1146042 (= res!1567337 (= (content!6134 lt!1346728) ((_ map or) (content!6134 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104)) (content!6134 (_1!23296 lt!1346696)))))))

(declare-fun e!2393379 () List!41228)

(assert (=> d!1146042 (= lt!1346728 e!2393379)))

(declare-fun c!673418 () Bool)

(assert (=> d!1146042 (= c!673418 ((_ is Nil!41104) (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104)))))

(assert (=> d!1146042 (= (++!10506 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104) (_1!23296 lt!1346696)) lt!1346728)))

(declare-fun b!3869700 () Bool)

(assert (=> b!3869700 (= e!2393379 (Cons!41104 (h!46524 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104)) (++!10506 (t!314295 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104)) (_1!23296 lt!1346696))))))

(declare-fun b!3869699 () Bool)

(assert (=> b!3869699 (= e!2393379 (_1!23296 lt!1346696))))

(declare-fun b!3869702 () Bool)

(assert (=> b!3869702 (= e!2393380 (or (not (= (_1!23296 lt!1346696) Nil!41104)) (= lt!1346728 (Cons!41104 (_1!23295 (v!39089 lt!1346683)) Nil!41104))))))

(assert (= (and d!1146042 c!673418) b!3869699))

(assert (= (and d!1146042 (not c!673418)) b!3869700))

(assert (= (and d!1146042 res!1567337) b!3869701))

(assert (= (and b!3869701 res!1567338) b!3869702))

(declare-fun m!4425877 () Bool)

(assert (=> b!3869701 m!4425877))

(declare-fun m!4425879 () Bool)

(assert (=> b!3869701 m!4425879))

(declare-fun m!4425881 () Bool)

(assert (=> b!3869701 m!4425881))

(declare-fun m!4425883 () Bool)

(assert (=> d!1146042 m!4425883))

(declare-fun m!4425885 () Bool)

(assert (=> d!1146042 m!4425885))

(declare-fun m!4425887 () Bool)

(assert (=> d!1146042 m!4425887))

(declare-fun m!4425889 () Bool)

(assert (=> b!3869700 m!4425889))

(assert (=> b!3869605 d!1146042))

(declare-fun d!1146044 () Bool)

(assert (=> d!1146044 (isPrefix!3473 prefix!426 (++!10505 prefix!426 suffix!1176))))

(declare-fun lt!1346731 () Unit!58906)

(declare-fun choose!22844 (List!41226 List!41226) Unit!58906)

(assert (=> d!1146044 (= lt!1346731 (choose!22844 prefix!426 suffix!1176))))

(assert (=> d!1146044 (= (lemmaConcatTwoListThenFirstIsPrefix!2336 prefix!426 suffix!1176) lt!1346731)))

(declare-fun bs!583398 () Bool)

(assert (= bs!583398 d!1146044))

(assert (=> bs!583398 m!4425781))

(assert (=> bs!583398 m!4425781))

(declare-fun m!4425891 () Bool)

(assert (=> bs!583398 m!4425891))

(declare-fun m!4425893 () Bool)

(assert (=> bs!583398 m!4425893))

(assert (=> b!3869626 d!1146044))

(declare-fun d!1146046 () Bool)

(declare-fun e!2393387 () Bool)

(assert (=> d!1146046 e!2393387))

(declare-fun res!1567351 () Bool)

(assert (=> d!1146046 (=> res!1567351 e!2393387)))

(declare-fun lt!1346734 () Bool)

(assert (=> d!1146046 (= res!1567351 (not lt!1346734))))

(declare-fun e!2393388 () Bool)

(assert (=> d!1146046 (= lt!1346734 e!2393388)))

(declare-fun res!1567352 () Bool)

(assert (=> d!1146046 (=> res!1567352 e!2393388)))

(assert (=> d!1146046 (= res!1567352 ((_ is Nil!41102) prefix!426))))

(assert (=> d!1146046 (= (isPrefix!3473 prefix!426 lt!1346682) lt!1346734)))

(declare-fun b!3869712 () Bool)

(declare-fun res!1567353 () Bool)

(declare-fun e!2393389 () Bool)

(assert (=> b!3869712 (=> (not res!1567353) (not e!2393389))))

(declare-fun head!8189 (List!41226) C!22744)

(assert (=> b!3869712 (= res!1567353 (= (head!8189 prefix!426) (head!8189 lt!1346682)))))

(declare-fun b!3869713 () Bool)

(assert (=> b!3869713 (= e!2393389 (isPrefix!3473 (tail!5906 prefix!426) (tail!5906 lt!1346682)))))

(declare-fun b!3869711 () Bool)

(assert (=> b!3869711 (= e!2393388 e!2393389)))

(declare-fun res!1567350 () Bool)

(assert (=> b!3869711 (=> (not res!1567350) (not e!2393389))))

(assert (=> b!3869711 (= res!1567350 (not ((_ is Nil!41102) lt!1346682)))))

(declare-fun b!3869714 () Bool)

(assert (=> b!3869714 (= e!2393387 (>= (size!30893 lt!1346682) (size!30893 prefix!426)))))

(assert (= (and d!1146046 (not res!1567352)) b!3869711))

(assert (= (and b!3869711 res!1567350) b!3869712))

(assert (= (and b!3869712 res!1567353) b!3869713))

(assert (= (and d!1146046 (not res!1567351)) b!3869714))

(declare-fun m!4425895 () Bool)

(assert (=> b!3869712 m!4425895))

(declare-fun m!4425897 () Bool)

(assert (=> b!3869712 m!4425897))

(assert (=> b!3869713 m!4425873))

(declare-fun m!4425899 () Bool)

(assert (=> b!3869713 m!4425899))

(assert (=> b!3869713 m!4425873))

(assert (=> b!3869713 m!4425899))

(declare-fun m!4425901 () Bool)

(assert (=> b!3869713 m!4425901))

(assert (=> b!3869714 m!4425809))

(assert (=> b!3869714 m!4425703))

(assert (=> b!3869626 d!1146046))

(declare-fun d!1146048 () Bool)

(assert (=> d!1146048 (= lt!1346685 prefix!426)))

(declare-fun lt!1346737 () Unit!58906)

(declare-fun choose!22845 (List!41226 List!41226 List!41226) Unit!58906)

(assert (=> d!1146048 (= lt!1346737 (choose!22845 lt!1346685 prefix!426 lt!1346682))))

(assert (=> d!1146048 (isPrefix!3473 lt!1346685 lt!1346682)))

(assert (=> d!1146048 (= (lemmaIsPrefixSameLengthThenSameList!725 lt!1346685 prefix!426 lt!1346682) lt!1346737)))

(declare-fun bs!583399 () Bool)

(assert (= bs!583399 d!1146048))

(declare-fun m!4425903 () Bool)

(assert (=> bs!583399 m!4425903))

(declare-fun m!4425905 () Bool)

(assert (=> bs!583399 m!4425905))

(assert (=> b!3869626 d!1146048))

(declare-fun d!1146050 () Bool)

(assert (=> d!1146050 (= (_2!23295 (v!39089 lt!1346683)) suffix!1176)))

(declare-fun lt!1346740 () Unit!58906)

(declare-fun choose!22846 (List!41226 List!41226 List!41226 List!41226 List!41226) Unit!58906)

(assert (=> d!1146050 (= lt!1346740 (choose!22846 lt!1346685 (_2!23295 (v!39089 lt!1346683)) prefix!426 suffix!1176 lt!1346682))))

(assert (=> d!1146050 (isPrefix!3473 lt!1346685 lt!1346682)))

(assert (=> d!1146050 (= (lemmaSamePrefixThenSameSuffix!1694 lt!1346685 (_2!23295 (v!39089 lt!1346683)) prefix!426 suffix!1176 lt!1346682) lt!1346740)))

(declare-fun bs!583400 () Bool)

(assert (= bs!583400 d!1146050))

(declare-fun m!4425907 () Bool)

(assert (=> bs!583400 m!4425907))

(assert (=> bs!583400 m!4425905))

(assert (=> b!3869626 d!1146050))

(declare-fun d!1146052 () Bool)

(assert (=> d!1146052 (= (isEmpty!24380 lt!1346701) ((_ is Nil!41104) lt!1346701))))

(assert (=> b!3869604 d!1146052))

(declare-fun d!1146054 () Bool)

(assert (=> d!1146054 (= (tail!5905 prefixTokens!80) (t!314295 prefixTokens!80))))

(assert (=> b!3869604 d!1146054))

(declare-fun d!1146056 () Bool)

(assert (=> d!1146056 (not (= (lexList!1731 thiss!20629 rules!2768 (_2!23295 lt!1346667)) (tuple2!40325 (++!10506 lt!1346701 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1346743 () Unit!58906)

(declare-fun choose!22847 (LexerInterface!5963 List!41229 List!41226 List!41226 List!41228 List!41226 List!41228) Unit!58906)

(assert (=> d!1146056 (= lt!1346743 (choose!22847 thiss!20629 rules!2768 suffix!1176 (_2!23295 lt!1346667) suffixTokens!72 suffixResult!91 lt!1346701))))

(assert (=> d!1146056 (not (isEmpty!24382 rules!2768))))

(assert (=> d!1146056 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!34 thiss!20629 rules!2768 suffix!1176 (_2!23295 lt!1346667) suffixTokens!72 suffixResult!91 lt!1346701) lt!1346743)))

(declare-fun bs!583401 () Bool)

(assert (= bs!583401 d!1146056))

(assert (=> bs!583401 m!4425691))

(assert (=> bs!583401 m!4425785))

(declare-fun m!4425925 () Bool)

(assert (=> bs!583401 m!4425925))

(assert (=> bs!583401 m!4425759))

(assert (=> b!3869606 d!1146056))

(declare-fun b!3869746 () Bool)

(declare-fun res!1567368 () Bool)

(declare-fun e!2393409 () Bool)

(assert (=> b!3869746 (=> (not res!1567368) (not e!2393409))))

(declare-fun lt!1346744 () List!41228)

(assert (=> b!3869746 (= res!1567368 (= (size!30895 lt!1346744) (+ (size!30895 lt!1346701) (size!30895 suffixTokens!72))))))

(declare-fun d!1146070 () Bool)

(assert (=> d!1146070 e!2393409))

(declare-fun res!1567367 () Bool)

(assert (=> d!1146070 (=> (not res!1567367) (not e!2393409))))

(assert (=> d!1146070 (= res!1567367 (= (content!6134 lt!1346744) ((_ map or) (content!6134 lt!1346701) (content!6134 suffixTokens!72))))))

(declare-fun e!2393408 () List!41228)

(assert (=> d!1146070 (= lt!1346744 e!2393408)))

(declare-fun c!673427 () Bool)

(assert (=> d!1146070 (= c!673427 ((_ is Nil!41104) lt!1346701))))

(assert (=> d!1146070 (= (++!10506 lt!1346701 suffixTokens!72) lt!1346744)))

(declare-fun b!3869745 () Bool)

(assert (=> b!3869745 (= e!2393408 (Cons!41104 (h!46524 lt!1346701) (++!10506 (t!314295 lt!1346701) suffixTokens!72)))))

(declare-fun b!3869744 () Bool)

(assert (=> b!3869744 (= e!2393408 suffixTokens!72)))

(declare-fun b!3869747 () Bool)

(assert (=> b!3869747 (= e!2393409 (or (not (= suffixTokens!72 Nil!41104)) (= lt!1346744 lt!1346701)))))

(assert (= (and d!1146070 c!673427) b!3869744))

(assert (= (and d!1146070 (not c!673427)) b!3869745))

(assert (= (and d!1146070 res!1567367) b!3869746))

(assert (= (and b!3869746 res!1567368) b!3869747))

(declare-fun m!4425927 () Bool)

(assert (=> b!3869746 m!4425927))

(declare-fun m!4425929 () Bool)

(assert (=> b!3869746 m!4425929))

(assert (=> b!3869746 m!4425839))

(declare-fun m!4425931 () Bool)

(assert (=> d!1146070 m!4425931))

(declare-fun m!4425933 () Bool)

(assert (=> d!1146070 m!4425933))

(assert (=> d!1146070 m!4425845))

(declare-fun m!4425935 () Bool)

(assert (=> b!3869745 m!4425935))

(assert (=> b!3869606 d!1146070))

(declare-fun b!3869752 () Bool)

(declare-fun e!2393414 () tuple2!40324)

(assert (=> b!3869752 (= e!2393414 (tuple2!40325 Nil!41104 suffix!1176))))

(declare-fun b!3869753 () Bool)

(declare-fun e!2393413 () Bool)

(declare-fun e!2393412 () Bool)

(assert (=> b!3869753 (= e!2393413 e!2393412)))

(declare-fun res!1567369 () Bool)

(declare-fun lt!1346747 () tuple2!40324)

(assert (=> b!3869753 (= res!1567369 (< (size!30893 (_2!23296 lt!1346747)) (size!30893 suffix!1176)))))

(assert (=> b!3869753 (=> (not res!1567369) (not e!2393412))))

(declare-fun b!3869754 () Bool)

(assert (=> b!3869754 (= e!2393413 (= (_2!23296 lt!1346747) suffix!1176))))

(declare-fun b!3869755 () Bool)

(assert (=> b!3869755 (= e!2393412 (not (isEmpty!24380 (_1!23296 lt!1346747))))))

(declare-fun d!1146072 () Bool)

(assert (=> d!1146072 e!2393413))

(declare-fun c!673429 () Bool)

(assert (=> d!1146072 (= c!673429 (> (size!30895 (_1!23296 lt!1346747)) 0))))

(assert (=> d!1146072 (= lt!1346747 e!2393414)))

(declare-fun c!673428 () Bool)

(declare-fun lt!1346745 () Option!8792)

(assert (=> d!1146072 (= c!673428 ((_ is Some!8791) lt!1346745))))

(assert (=> d!1146072 (= lt!1346745 (maxPrefix!3267 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1146072 (= (lexList!1731 thiss!20629 rules!2768 suffix!1176) lt!1346747)))

(declare-fun b!3869756 () Bool)

(declare-fun lt!1346746 () tuple2!40324)

(assert (=> b!3869756 (= e!2393414 (tuple2!40325 (Cons!41104 (_1!23295 (v!39089 lt!1346745)) (_1!23296 lt!1346746)) (_2!23296 lt!1346746)))))

(assert (=> b!3869756 (= lt!1346746 (lexList!1731 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346745))))))

(assert (= (and d!1146072 c!673428) b!3869756))

(assert (= (and d!1146072 (not c!673428)) b!3869752))

(assert (= (and d!1146072 c!673429) b!3869753))

(assert (= (and d!1146072 (not c!673429)) b!3869754))

(assert (= (and b!3869753 res!1567369) b!3869755))

(declare-fun m!4425941 () Bool)

(assert (=> b!3869753 m!4425941))

(assert (=> b!3869753 m!4425683))

(declare-fun m!4425943 () Bool)

(assert (=> b!3869755 m!4425943))

(declare-fun m!4425945 () Bool)

(assert (=> d!1146072 m!4425945))

(declare-fun m!4425947 () Bool)

(assert (=> d!1146072 m!4425947))

(declare-fun m!4425949 () Bool)

(assert (=> b!3869756 m!4425949))

(assert (=> b!3869627 d!1146072))

(declare-fun d!1146074 () Bool)

(declare-fun lt!1346750 () Int)

(assert (=> d!1146074 (>= lt!1346750 0)))

(declare-fun e!2393418 () Int)

(assert (=> d!1146074 (= lt!1346750 e!2393418)))

(declare-fun c!673432 () Bool)

(assert (=> d!1146074 (= c!673432 ((_ is Nil!41102) (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683)))))))

(assert (=> d!1146074 (= (size!30893 (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683)))) lt!1346750)))

(declare-fun b!3869762 () Bool)

(assert (=> b!3869762 (= e!2393418 0)))

(declare-fun b!3869763 () Bool)

(assert (=> b!3869763 (= e!2393418 (+ 1 (size!30893 (t!314293 (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683)))))))))

(assert (= (and d!1146074 c!673432) b!3869762))

(assert (= (and d!1146074 (not c!673432)) b!3869763))

(declare-fun m!4425959 () Bool)

(assert (=> b!3869763 m!4425959))

(assert (=> b!3869629 d!1146074))

(declare-fun d!1146078 () Bool)

(assert (=> d!1146078 (and (= lt!1346685 lt!1346685) (= (_2!23295 (v!39089 lt!1346683)) (_2!23295 lt!1346667)))))

(declare-fun lt!1346755 () Unit!58906)

(declare-fun choose!22848 (List!41226 List!41226 List!41226 List!41226) Unit!58906)

(assert (=> d!1146078 (= lt!1346755 (choose!22848 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 (_2!23295 lt!1346667)))))

(assert (=> d!1146078 (= (++!10505 lt!1346685 (_2!23295 (v!39089 lt!1346683))) (++!10505 lt!1346685 (_2!23295 lt!1346667)))))

(assert (=> d!1146078 (= (lemmaConcatSameAndSameSizesThenSameLists!458 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 (_2!23295 lt!1346667)) lt!1346755)))

(declare-fun bs!583402 () Bool)

(assert (= bs!583402 d!1146078))

(declare-fun m!4425961 () Bool)

(assert (=> bs!583402 m!4425961))

(assert (=> bs!583402 m!4425731))

(declare-fun m!4425963 () Bool)

(assert (=> bs!583402 m!4425963))

(assert (=> b!3869628 d!1146078))

(declare-fun d!1146080 () Bool)

(assert (=> d!1146080 (not (= (lexList!1731 thiss!20629 rules!2768 (_2!23295 lt!1346667)) (tuple2!40325 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1346757 () Unit!58906)

(assert (=> d!1146080 (= lt!1346757 (choose!22843 thiss!20629 rules!2768 suffix!1176 (_2!23295 lt!1346667) suffixTokens!72 suffixResult!91))))

(assert (=> d!1146080 (not (isEmpty!24382 rules!2768))))

(assert (=> d!1146080 (= (lemmaLexWithSmallerInputCannotProduceSameResults!34 thiss!20629 rules!2768 suffix!1176 (_2!23295 lt!1346667) suffixTokens!72 suffixResult!91) lt!1346757)))

(declare-fun bs!583403 () Bool)

(assert (= bs!583403 d!1146080))

(assert (=> bs!583403 m!4425691))

(declare-fun m!4425977 () Bool)

(assert (=> bs!583403 m!4425977))

(assert (=> bs!583403 m!4425759))

(assert (=> b!3869628 d!1146080))

(declare-fun b!3869790 () Bool)

(declare-fun e!2393434 () Bool)

(declare-fun e!2393433 () Bool)

(assert (=> b!3869790 (= e!2393434 e!2393433)))

(declare-fun c!673442 () Bool)

(assert (=> b!3869790 (= c!673442 ((_ is IntegerValue!19813) (value!202293 (h!46524 suffixTokens!72))))))

(declare-fun b!3869792 () Bool)

(declare-fun inv!16 (TokenValue!6604) Bool)

(assert (=> b!3869792 (= e!2393434 (inv!16 (value!202293 (h!46524 suffixTokens!72))))))

(declare-fun b!3869793 () Bool)

(declare-fun e!2393435 () Bool)

(declare-fun inv!15 (TokenValue!6604) Bool)

(assert (=> b!3869793 (= e!2393435 (inv!15 (value!202293 (h!46524 suffixTokens!72))))))

(declare-fun b!3869794 () Bool)

(declare-fun res!1567380 () Bool)

(assert (=> b!3869794 (=> res!1567380 e!2393435)))

(assert (=> b!3869794 (= res!1567380 (not ((_ is IntegerValue!19814) (value!202293 (h!46524 suffixTokens!72)))))))

(assert (=> b!3869794 (= e!2393433 e!2393435)))

(declare-fun b!3869791 () Bool)

(declare-fun inv!17 (TokenValue!6604) Bool)

(assert (=> b!3869791 (= e!2393433 (inv!17 (value!202293 (h!46524 suffixTokens!72))))))

(declare-fun d!1146084 () Bool)

(declare-fun c!673441 () Bool)

(assert (=> d!1146084 (= c!673441 ((_ is IntegerValue!19812) (value!202293 (h!46524 suffixTokens!72))))))

(assert (=> d!1146084 (= (inv!21 (value!202293 (h!46524 suffixTokens!72))) e!2393434)))

(assert (= (and d!1146084 c!673441) b!3869792))

(assert (= (and d!1146084 (not c!673441)) b!3869790))

(assert (= (and b!3869790 c!673442) b!3869791))

(assert (= (and b!3869790 (not c!673442)) b!3869794))

(assert (= (and b!3869794 (not res!1567380)) b!3869793))

(declare-fun m!4425997 () Bool)

(assert (=> b!3869792 m!4425997))

(declare-fun m!4425999 () Bool)

(assert (=> b!3869793 m!4425999))

(declare-fun m!4426001 () Bool)

(assert (=> b!3869791 m!4426001))

(assert (=> b!3869609 d!1146084))

(declare-fun b!3869795 () Bool)

(declare-fun e!2393438 () tuple2!40324)

(assert (=> b!3869795 (= e!2393438 (tuple2!40325 Nil!41104 (_2!23295 lt!1346667)))))

(declare-fun b!3869796 () Bool)

(declare-fun e!2393437 () Bool)

(declare-fun e!2393436 () Bool)

(assert (=> b!3869796 (= e!2393437 e!2393436)))

(declare-fun res!1567381 () Bool)

(declare-fun lt!1346764 () tuple2!40324)

(assert (=> b!3869796 (= res!1567381 (< (size!30893 (_2!23296 lt!1346764)) (size!30893 (_2!23295 lt!1346667))))))

(assert (=> b!3869796 (=> (not res!1567381) (not e!2393436))))

(declare-fun b!3869797 () Bool)

(assert (=> b!3869797 (= e!2393437 (= (_2!23296 lt!1346764) (_2!23295 lt!1346667)))))

(declare-fun b!3869798 () Bool)

(assert (=> b!3869798 (= e!2393436 (not (isEmpty!24380 (_1!23296 lt!1346764))))))

(declare-fun d!1146090 () Bool)

(assert (=> d!1146090 e!2393437))

(declare-fun c!673444 () Bool)

(assert (=> d!1146090 (= c!673444 (> (size!30895 (_1!23296 lt!1346764)) 0))))

(assert (=> d!1146090 (= lt!1346764 e!2393438)))

(declare-fun c!673443 () Bool)

(declare-fun lt!1346762 () Option!8792)

(assert (=> d!1146090 (= c!673443 ((_ is Some!8791) lt!1346762))))

(assert (=> d!1146090 (= lt!1346762 (maxPrefix!3267 thiss!20629 rules!2768 (_2!23295 lt!1346667)))))

(assert (=> d!1146090 (= (lexList!1731 thiss!20629 rules!2768 (_2!23295 lt!1346667)) lt!1346764)))

(declare-fun b!3869799 () Bool)

(declare-fun lt!1346763 () tuple2!40324)

(assert (=> b!3869799 (= e!2393438 (tuple2!40325 (Cons!41104 (_1!23295 (v!39089 lt!1346762)) (_1!23296 lt!1346763)) (_2!23296 lt!1346763)))))

(assert (=> b!3869799 (= lt!1346763 (lexList!1731 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346762))))))

(assert (= (and d!1146090 c!673443) b!3869799))

(assert (= (and d!1146090 (not c!673443)) b!3869795))

(assert (= (and d!1146090 c!673444) b!3869796))

(assert (= (and d!1146090 (not c!673444)) b!3869797))

(assert (= (and b!3869796 res!1567381) b!3869798))

(declare-fun m!4426003 () Bool)

(assert (=> b!3869796 m!4426003))

(assert (=> b!3869796 m!4425801))

(declare-fun m!4426005 () Bool)

(assert (=> b!3869798 m!4426005))

(declare-fun m!4426007 () Bool)

(assert (=> d!1146090 m!4426007))

(declare-fun m!4426009 () Bool)

(assert (=> d!1146090 m!4426009))

(declare-fun m!4426011 () Bool)

(assert (=> b!3869799 m!4426011))

(assert (=> bm!282703 d!1146090))

(declare-fun d!1146092 () Bool)

(assert (=> d!1146092 (= (isEmpty!24381 prefix!426) ((_ is Nil!41102) prefix!426))))

(assert (=> b!3869608 d!1146092))

(declare-fun d!1146094 () Bool)

(assert (=> d!1146094 (= (head!8188 prefixTokens!80) (h!46524 prefixTokens!80))))

(assert (=> b!3869630 d!1146094))

(declare-fun d!1146098 () Bool)

(declare-fun lt!1346768 () Int)

(assert (=> d!1146098 (>= lt!1346768 0)))

(declare-fun e!2393439 () Int)

(assert (=> d!1146098 (= lt!1346768 e!2393439)))

(declare-fun c!673445 () Bool)

(assert (=> d!1146098 (= c!673445 ((_ is Nil!41102) (_2!23295 lt!1346667)))))

(assert (=> d!1146098 (= (size!30893 (_2!23295 lt!1346667)) lt!1346768)))

(declare-fun b!3869800 () Bool)

(assert (=> b!3869800 (= e!2393439 0)))

(declare-fun b!3869801 () Bool)

(assert (=> b!3869801 (= e!2393439 (+ 1 (size!30893 (t!314293 (_2!23295 lt!1346667)))))))

(assert (= (and d!1146098 c!673445) b!3869800))

(assert (= (and d!1146098 (not c!673445)) b!3869801))

(declare-fun m!4426017 () Bool)

(assert (=> b!3869801 m!4426017))

(assert (=> b!3869632 d!1146098))

(declare-fun d!1146100 () Bool)

(assert (=> d!1146100 (= (get!13601 lt!1346683) (v!39089 lt!1346683))))

(assert (=> b!3869632 d!1146100))

(declare-fun d!1146102 () Bool)

(assert (=> d!1146102 (= (maxPrefixOneRule!2349 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))) lt!1346682) (Some!8791 (tuple2!40323 (Token!11887 (apply!9617 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (seqFromList!4645 lt!1346685)) (rule!9258 (_1!23295 (v!39089 lt!1346683))) (size!30893 lt!1346685) lt!1346685) (_2!23295 (v!39089 lt!1346683)))))))

(declare-fun lt!1346777 () Unit!58906)

(declare-fun choose!22849 (LexerInterface!5963 List!41229 List!41226 List!41226 List!41226 Rule!12548) Unit!58906)

(assert (=> d!1146102 (= lt!1346777 (choose!22849 thiss!20629 rules!2768 lt!1346685 lt!1346682 (_2!23295 (v!39089 lt!1346683)) (rule!9258 (_1!23295 (v!39089 lt!1346683)))))))

(assert (=> d!1146102 (not (isEmpty!24382 rules!2768))))

(assert (=> d!1146102 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1247 thiss!20629 rules!2768 lt!1346685 lt!1346682 (_2!23295 (v!39089 lt!1346683)) (rule!9258 (_1!23295 (v!39089 lt!1346683)))) lt!1346777)))

(declare-fun bs!583408 () Bool)

(assert (= bs!583408 d!1146102))

(assert (=> bs!583408 m!4425735))

(assert (=> bs!583408 m!4425737))

(assert (=> bs!583408 m!4425733))

(assert (=> bs!583408 m!4425735))

(assert (=> bs!583408 m!4425803))

(declare-fun m!4426027 () Bool)

(assert (=> bs!583408 m!4426027))

(assert (=> bs!583408 m!4425759))

(assert (=> b!3869632 d!1146102))

(declare-fun d!1146110 () Bool)

(declare-fun lt!1346778 () Int)

(assert (=> d!1146110 (>= lt!1346778 0)))

(declare-fun e!2393443 () Int)

(assert (=> d!1146110 (= lt!1346778 e!2393443)))

(declare-fun c!673449 () Bool)

(assert (=> d!1146110 (= c!673449 ((_ is Nil!41102) lt!1346682))))

(assert (=> d!1146110 (= (size!30893 lt!1346682) lt!1346778)))

(declare-fun b!3869808 () Bool)

(assert (=> b!3869808 (= e!2393443 0)))

(declare-fun b!3869809 () Bool)

(assert (=> b!3869809 (= e!2393443 (+ 1 (size!30893 (t!314293 lt!1346682))))))

(assert (= (and d!1146110 c!673449) b!3869808))

(assert (= (and d!1146110 (not c!673449)) b!3869809))

(declare-fun m!4426029 () Bool)

(assert (=> b!3869809 m!4426029))

(assert (=> b!3869632 d!1146110))

(declare-fun b!3869888 () Bool)

(declare-fun res!1567429 () Bool)

(declare-fun e!2393492 () Bool)

(assert (=> b!3869888 (=> (not res!1567429) (not e!2393492))))

(declare-fun lt!1346824 () Option!8792)

(assert (=> b!3869888 (= res!1567429 (= (value!202293 (_1!23295 (get!13601 lt!1346824))) (apply!9617 (transformation!6374 (rule!9258 (_1!23295 (get!13601 lt!1346824)))) (seqFromList!4645 (originalCharacters!6974 (_1!23295 (get!13601 lt!1346824)))))))))

(declare-fun b!3869889 () Bool)

(declare-fun e!2393491 () Bool)

(declare-fun matchR!5409 (Regex!11279 List!41226) Bool)

(declare-datatypes ((tuple2!40326 0))(
  ( (tuple2!40327 (_1!23297 List!41226) (_2!23297 List!41226)) )
))
(declare-fun findLongestMatchInner!1199 (Regex!11279 List!41226 Int List!41226 List!41226 Int) tuple2!40326)

(assert (=> b!3869889 (= e!2393491 (matchR!5409 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (_1!23297 (findLongestMatchInner!1199 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) Nil!41102 (size!30893 Nil!41102) lt!1346682 lt!1346682 (size!30893 lt!1346682)))))))

(declare-fun b!3869890 () Bool)

(declare-fun res!1567433 () Bool)

(assert (=> b!3869890 (=> (not res!1567433) (not e!2393492))))

(assert (=> b!3869890 (= res!1567433 (= (rule!9258 (_1!23295 (get!13601 lt!1346824))) (rule!9258 (_1!23295 (v!39089 lt!1346683)))))))

(declare-fun b!3869891 () Bool)

(declare-fun res!1567430 () Bool)

(assert (=> b!3869891 (=> (not res!1567430) (not e!2393492))))

(assert (=> b!3869891 (= res!1567430 (< (size!30893 (_2!23295 (get!13601 lt!1346824))) (size!30893 lt!1346682)))))

(declare-fun b!3869892 () Bool)

(declare-fun e!2393493 () Option!8792)

(assert (=> b!3869892 (= e!2393493 None!8791)))

(declare-fun b!3869893 () Bool)

(declare-fun e!2393494 () Bool)

(assert (=> b!3869893 (= e!2393494 e!2393492)))

(declare-fun res!1567432 () Bool)

(assert (=> b!3869893 (=> (not res!1567432) (not e!2393492))))

(assert (=> b!3869893 (= res!1567432 (matchR!5409 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (list!15290 (charsOf!4202 (_1!23295 (get!13601 lt!1346824))))))))

(declare-fun d!1146112 () Bool)

(assert (=> d!1146112 e!2393494))

(declare-fun res!1567428 () Bool)

(assert (=> d!1146112 (=> res!1567428 e!2393494)))

(declare-fun isEmpty!24383 (Option!8792) Bool)

(assert (=> d!1146112 (= res!1567428 (isEmpty!24383 lt!1346824))))

(assert (=> d!1146112 (= lt!1346824 e!2393493)))

(declare-fun c!673465 () Bool)

(declare-fun lt!1346828 () tuple2!40326)

(assert (=> d!1146112 (= c!673465 (isEmpty!24381 (_1!23297 lt!1346828)))))

(declare-fun findLongestMatch!1112 (Regex!11279 List!41226) tuple2!40326)

(assert (=> d!1146112 (= lt!1346828 (findLongestMatch!1112 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) lt!1346682))))

(assert (=> d!1146112 (ruleValid!2326 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))))))

(assert (=> d!1146112 (= (maxPrefixOneRule!2349 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))) lt!1346682) lt!1346824)))

(declare-fun b!3869894 () Bool)

(declare-fun size!30896 (BalanceConc!24764) Int)

(assert (=> b!3869894 (= e!2393493 (Some!8791 (tuple2!40323 (Token!11887 (apply!9617 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (seqFromList!4645 (_1!23297 lt!1346828))) (rule!9258 (_1!23295 (v!39089 lt!1346683))) (size!30896 (seqFromList!4645 (_1!23297 lt!1346828))) (_1!23297 lt!1346828)) (_2!23297 lt!1346828))))))

(declare-fun lt!1346826 () Unit!58906)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1172 (Regex!11279 List!41226) Unit!58906)

(assert (=> b!3869894 (= lt!1346826 (longestMatchIsAcceptedByMatchOrIsEmpty!1172 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) lt!1346682))))

(declare-fun res!1567431 () Bool)

(assert (=> b!3869894 (= res!1567431 (isEmpty!24381 (_1!23297 (findLongestMatchInner!1199 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) Nil!41102 (size!30893 Nil!41102) lt!1346682 lt!1346682 (size!30893 lt!1346682)))))))

(assert (=> b!3869894 (=> res!1567431 e!2393491)))

(assert (=> b!3869894 e!2393491))

(declare-fun lt!1346825 () Unit!58906)

(assert (=> b!3869894 (= lt!1346825 lt!1346826)))

(declare-fun lt!1346827 () Unit!58906)

(declare-fun lemmaSemiInverse!1705 (TokenValueInjection!12636 BalanceConc!24764) Unit!58906)

(assert (=> b!3869894 (= lt!1346827 (lemmaSemiInverse!1705 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (seqFromList!4645 (_1!23297 lt!1346828))))))

(declare-fun b!3869895 () Bool)

(assert (=> b!3869895 (= e!2393492 (= (size!30894 (_1!23295 (get!13601 lt!1346824))) (size!30893 (originalCharacters!6974 (_1!23295 (get!13601 lt!1346824))))))))

(declare-fun b!3869896 () Bool)

(declare-fun res!1567427 () Bool)

(assert (=> b!3869896 (=> (not res!1567427) (not e!2393492))))

(assert (=> b!3869896 (= res!1567427 (= (++!10505 (list!15290 (charsOf!4202 (_1!23295 (get!13601 lt!1346824)))) (_2!23295 (get!13601 lt!1346824))) lt!1346682))))

(assert (= (and d!1146112 c!673465) b!3869892))

(assert (= (and d!1146112 (not c!673465)) b!3869894))

(assert (= (and b!3869894 (not res!1567431)) b!3869889))

(assert (= (and d!1146112 (not res!1567428)) b!3869893))

(assert (= (and b!3869893 res!1567432) b!3869896))

(assert (= (and b!3869896 res!1567427) b!3869891))

(assert (= (and b!3869891 res!1567430) b!3869890))

(assert (= (and b!3869890 res!1567433) b!3869888))

(assert (= (and b!3869888 res!1567429) b!3869895))

(declare-fun m!4426131 () Bool)

(assert (=> b!3869891 m!4426131))

(declare-fun m!4426133 () Bool)

(assert (=> b!3869891 m!4426133))

(assert (=> b!3869891 m!4425809))

(assert (=> b!3869896 m!4426131))

(declare-fun m!4426135 () Bool)

(assert (=> b!3869896 m!4426135))

(assert (=> b!3869896 m!4426135))

(declare-fun m!4426137 () Bool)

(assert (=> b!3869896 m!4426137))

(assert (=> b!3869896 m!4426137))

(declare-fun m!4426139 () Bool)

(assert (=> b!3869896 m!4426139))

(assert (=> b!3869895 m!4426131))

(declare-fun m!4426141 () Bool)

(assert (=> b!3869895 m!4426141))

(assert (=> b!3869890 m!4426131))

(assert (=> b!3869888 m!4426131))

(declare-fun m!4426143 () Bool)

(assert (=> b!3869888 m!4426143))

(assert (=> b!3869888 m!4426143))

(declare-fun m!4426145 () Bool)

(assert (=> b!3869888 m!4426145))

(declare-fun m!4426147 () Bool)

(assert (=> b!3869894 m!4426147))

(assert (=> b!3869894 m!4425809))

(declare-fun m!4426149 () Bool)

(assert (=> b!3869894 m!4426149))

(declare-fun m!4426151 () Bool)

(assert (=> b!3869894 m!4426151))

(assert (=> b!3869894 m!4425809))

(declare-fun m!4426153 () Bool)

(assert (=> b!3869894 m!4426153))

(declare-fun m!4426155 () Bool)

(assert (=> b!3869894 m!4426155))

(assert (=> b!3869894 m!4426153))

(assert (=> b!3869894 m!4426147))

(declare-fun m!4426157 () Bool)

(assert (=> b!3869894 m!4426157))

(assert (=> b!3869894 m!4426153))

(declare-fun m!4426159 () Bool)

(assert (=> b!3869894 m!4426159))

(assert (=> b!3869894 m!4426153))

(declare-fun m!4426161 () Bool)

(assert (=> b!3869894 m!4426161))

(assert (=> b!3869889 m!4426147))

(assert (=> b!3869889 m!4425809))

(assert (=> b!3869889 m!4426147))

(assert (=> b!3869889 m!4425809))

(assert (=> b!3869889 m!4426149))

(declare-fun m!4426163 () Bool)

(assert (=> b!3869889 m!4426163))

(assert (=> b!3869893 m!4426131))

(assert (=> b!3869893 m!4426135))

(assert (=> b!3869893 m!4426135))

(assert (=> b!3869893 m!4426137))

(assert (=> b!3869893 m!4426137))

(declare-fun m!4426165 () Bool)

(assert (=> b!3869893 m!4426165))

(declare-fun m!4426167 () Bool)

(assert (=> d!1146112 m!4426167))

(declare-fun m!4426169 () Bool)

(assert (=> d!1146112 m!4426169))

(declare-fun m!4426171 () Bool)

(assert (=> d!1146112 m!4426171))

(assert (=> d!1146112 m!4425739))

(assert (=> b!3869632 d!1146112))

(declare-fun d!1146152 () Bool)

(declare-fun res!1567438 () Bool)

(declare-fun e!2393499 () Bool)

(assert (=> d!1146152 (=> (not res!1567438) (not e!2393499))))

(assert (=> d!1146152 (= res!1567438 (not (isEmpty!24381 (originalCharacters!6974 (h!46524 suffixTokens!72)))))))

(assert (=> d!1146152 (= (inv!55262 (h!46524 suffixTokens!72)) e!2393499)))

(declare-fun b!3869905 () Bool)

(declare-fun res!1567439 () Bool)

(assert (=> b!3869905 (=> (not res!1567439) (not e!2393499))))

(assert (=> b!3869905 (= res!1567439 (= (originalCharacters!6974 (h!46524 suffixTokens!72)) (list!15290 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (value!202293 (h!46524 suffixTokens!72))))))))

(declare-fun b!3869906 () Bool)

(assert (=> b!3869906 (= e!2393499 (= (size!30894 (h!46524 suffixTokens!72)) (size!30893 (originalCharacters!6974 (h!46524 suffixTokens!72)))))))

(assert (= (and d!1146152 res!1567438) b!3869905))

(assert (= (and b!3869905 res!1567439) b!3869906))

(declare-fun b_lambda!113039 () Bool)

(assert (=> (not b_lambda!113039) (not b!3869905)))

(declare-fun t!314322 () Bool)

(declare-fun tb!224393 () Bool)

(assert (=> (and b!3869610 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))) t!314322) tb!224393))

(declare-fun b!3869911 () Bool)

(declare-fun e!2393502 () Bool)

(declare-fun tp!1173326 () Bool)

(assert (=> b!3869911 (= e!2393502 (and (inv!55263 (c!673401 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (value!202293 (h!46524 suffixTokens!72))))) tp!1173326))))

(declare-fun result!273304 () Bool)

(assert (=> tb!224393 (= result!273304 (and (inv!55264 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (value!202293 (h!46524 suffixTokens!72)))) e!2393502))))

(assert (= tb!224393 b!3869911))

(declare-fun m!4426187 () Bool)

(assert (=> b!3869911 m!4426187))

(declare-fun m!4426189 () Bool)

(assert (=> tb!224393 m!4426189))

(assert (=> b!3869905 t!314322))

(declare-fun b_and!290031 () Bool)

(assert (= b_and!290007 (and (=> t!314322 result!273304) b_and!290031)))

(declare-fun t!314324 () Bool)

(declare-fun tb!224395 () Bool)

(assert (=> (and b!3869635 (= (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))) t!314324) tb!224395))

(declare-fun result!273306 () Bool)

(assert (= result!273306 result!273304))

(assert (=> b!3869905 t!314324))

(declare-fun b_and!290033 () Bool)

(assert (= b_and!290009 (and (=> t!314324 result!273306) b_and!290033)))

(declare-fun t!314326 () Bool)

(declare-fun tb!224397 () Bool)

(assert (=> (and b!3869623 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))) t!314326) tb!224397))

(declare-fun result!273308 () Bool)

(assert (= result!273308 result!273304))

(assert (=> b!3869905 t!314326))

(declare-fun b_and!290035 () Bool)

(assert (= b_and!290011 (and (=> t!314326 result!273308) b_and!290035)))

(declare-fun m!4426191 () Bool)

(assert (=> d!1146152 m!4426191))

(declare-fun m!4426193 () Bool)

(assert (=> b!3869905 m!4426193))

(assert (=> b!3869905 m!4426193))

(declare-fun m!4426195 () Bool)

(assert (=> b!3869905 m!4426195))

(declare-fun m!4426197 () Bool)

(assert (=> b!3869906 m!4426197))

(assert (=> b!3869631 d!1146152))

(declare-fun d!1146158 () Bool)

(assert (=> d!1146158 (= (inv!55258 (tag!7234 (rule!9258 (h!46524 prefixTokens!80)))) (= (mod (str.len (value!202267 (tag!7234 (rule!9258 (h!46524 prefixTokens!80))))) 2) 0))))

(assert (=> b!3869633 d!1146158))

(declare-fun d!1146164 () Bool)

(declare-fun res!1567448 () Bool)

(declare-fun e!2393508 () Bool)

(assert (=> d!1146164 (=> (not res!1567448) (not e!2393508))))

(declare-fun semiInverseModEq!2733 (Int Int) Bool)

(assert (=> d!1146164 (= res!1567448 (semiInverseModEq!2733 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toValue!8802 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))))))

(assert (=> d!1146164 (= (inv!55261 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) e!2393508)))

(declare-fun b!3869918 () Bool)

(declare-fun equivClasses!2632 (Int Int) Bool)

(assert (=> b!3869918 (= e!2393508 (equivClasses!2632 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toValue!8802 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))))))

(assert (= (and d!1146164 res!1567448) b!3869918))

(declare-fun m!4426213 () Bool)

(assert (=> d!1146164 m!4426213))

(declare-fun m!4426215 () Bool)

(assert (=> b!3869918 m!4426215))

(assert (=> b!3869633 d!1146164))

(declare-fun d!1146168 () Bool)

(assert (=> d!1146168 (= (_2!23295 (v!39089 lt!1346683)) lt!1346668)))

(declare-fun lt!1346834 () Unit!58906)

(assert (=> d!1146168 (= lt!1346834 (choose!22846 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 lt!1346668 lt!1346682))))

(assert (=> d!1146168 (isPrefix!3473 lt!1346685 lt!1346682)))

(assert (=> d!1146168 (= (lemmaSamePrefixThenSameSuffix!1694 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 lt!1346668 lt!1346682) lt!1346834)))

(declare-fun bs!583417 () Bool)

(assert (= bs!583417 d!1146168))

(declare-fun m!4426217 () Bool)

(assert (=> bs!583417 m!4426217))

(assert (=> bs!583417 m!4425905))

(assert (=> b!3869612 d!1146168))

(declare-fun d!1146170 () Bool)

(declare-fun e!2393509 () Bool)

(assert (=> d!1146170 e!2393509))

(declare-fun res!1567450 () Bool)

(assert (=> d!1146170 (=> res!1567450 e!2393509)))

(declare-fun lt!1346835 () Bool)

(assert (=> d!1146170 (= res!1567450 (not lt!1346835))))

(declare-fun e!2393510 () Bool)

(assert (=> d!1146170 (= lt!1346835 e!2393510)))

(declare-fun res!1567451 () Bool)

(assert (=> d!1146170 (=> res!1567451 e!2393510)))

(assert (=> d!1146170 (= res!1567451 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146170 (= (isPrefix!3473 lt!1346685 lt!1346673) lt!1346835)))

(declare-fun b!3869920 () Bool)

(declare-fun res!1567452 () Bool)

(declare-fun e!2393511 () Bool)

(assert (=> b!3869920 (=> (not res!1567452) (not e!2393511))))

(assert (=> b!3869920 (= res!1567452 (= (head!8189 lt!1346685) (head!8189 lt!1346673)))))

(declare-fun b!3869921 () Bool)

(assert (=> b!3869921 (= e!2393511 (isPrefix!3473 (tail!5906 lt!1346685) (tail!5906 lt!1346673)))))

(declare-fun b!3869919 () Bool)

(assert (=> b!3869919 (= e!2393510 e!2393511)))

(declare-fun res!1567449 () Bool)

(assert (=> b!3869919 (=> (not res!1567449) (not e!2393511))))

(assert (=> b!3869919 (= res!1567449 (not ((_ is Nil!41102) lt!1346673)))))

(declare-fun b!3869922 () Bool)

(assert (=> b!3869922 (= e!2393509 (>= (size!30893 lt!1346673) (size!30893 lt!1346685)))))

(assert (= (and d!1146170 (not res!1567451)) b!3869919))

(assert (= (and b!3869919 res!1567449) b!3869920))

(assert (= (and b!3869920 res!1567452) b!3869921))

(assert (= (and d!1146170 (not res!1567450)) b!3869922))

(declare-fun m!4426219 () Bool)

(assert (=> b!3869920 m!4426219))

(declare-fun m!4426221 () Bool)

(assert (=> b!3869920 m!4426221))

(declare-fun m!4426223 () Bool)

(assert (=> b!3869921 m!4426223))

(declare-fun m!4426225 () Bool)

(assert (=> b!3869921 m!4426225))

(assert (=> b!3869921 m!4426223))

(assert (=> b!3869921 m!4426225))

(declare-fun m!4426227 () Bool)

(assert (=> b!3869921 m!4426227))

(declare-fun m!4426229 () Bool)

(assert (=> b!3869922 m!4426229))

(assert (=> b!3869922 m!4425733))

(assert (=> b!3869612 d!1146170))

(declare-fun d!1146172 () Bool)

(assert (=> d!1146172 (isPrefix!3473 lt!1346685 (++!10505 lt!1346685 lt!1346668))))

(declare-fun lt!1346836 () Unit!58906)

(assert (=> d!1146172 (= lt!1346836 (choose!22844 lt!1346685 lt!1346668))))

(assert (=> d!1146172 (= (lemmaConcatTwoListThenFirstIsPrefix!2336 lt!1346685 lt!1346668) lt!1346836)))

(declare-fun bs!583418 () Bool)

(assert (= bs!583418 d!1146172))

(assert (=> bs!583418 m!4425765))

(assert (=> bs!583418 m!4425765))

(declare-fun m!4426231 () Bool)

(assert (=> bs!583418 m!4426231))

(declare-fun m!4426233 () Bool)

(assert (=> bs!583418 m!4426233))

(assert (=> b!3869612 d!1146172))

(declare-fun b!3869924 () Bool)

(declare-fun e!2393513 () List!41226)

(assert (=> b!3869924 (= e!2393513 (Cons!41102 (h!46522 lt!1346685) (++!10505 (t!314293 lt!1346685) lt!1346668)))))

(declare-fun lt!1346837 () List!41226)

(declare-fun e!2393512 () Bool)

(declare-fun b!3869926 () Bool)

(assert (=> b!3869926 (= e!2393512 (or (not (= lt!1346668 Nil!41102)) (= lt!1346837 lt!1346685)))))

(declare-fun b!3869923 () Bool)

(assert (=> b!3869923 (= e!2393513 lt!1346668)))

(declare-fun b!3869925 () Bool)

(declare-fun res!1567454 () Bool)

(assert (=> b!3869925 (=> (not res!1567454) (not e!2393512))))

(assert (=> b!3869925 (= res!1567454 (= (size!30893 lt!1346837) (+ (size!30893 lt!1346685) (size!30893 lt!1346668))))))

(declare-fun d!1146174 () Bool)

(assert (=> d!1146174 e!2393512))

(declare-fun res!1567453 () Bool)

(assert (=> d!1146174 (=> (not res!1567453) (not e!2393512))))

(assert (=> d!1146174 (= res!1567453 (= (content!6135 lt!1346837) ((_ map or) (content!6135 lt!1346685) (content!6135 lt!1346668))))))

(assert (=> d!1146174 (= lt!1346837 e!2393513)))

(declare-fun c!673469 () Bool)

(assert (=> d!1146174 (= c!673469 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146174 (= (++!10505 lt!1346685 lt!1346668) lt!1346837)))

(assert (= (and d!1146174 c!673469) b!3869923))

(assert (= (and d!1146174 (not c!673469)) b!3869924))

(assert (= (and d!1146174 res!1567453) b!3869925))

(assert (= (and b!3869925 res!1567454) b!3869926))

(declare-fun m!4426235 () Bool)

(assert (=> b!3869924 m!4426235))

(declare-fun m!4426237 () Bool)

(assert (=> b!3869925 m!4426237))

(assert (=> b!3869925 m!4425733))

(declare-fun m!4426239 () Bool)

(assert (=> b!3869925 m!4426239))

(declare-fun m!4426241 () Bool)

(assert (=> d!1146174 m!4426241))

(assert (=> d!1146174 m!4425867))

(declare-fun m!4426243 () Bool)

(assert (=> d!1146174 m!4426243))

(assert (=> b!3869593 d!1146174))

(declare-fun b!3869928 () Bool)

(declare-fun e!2393515 () List!41226)

(assert (=> b!3869928 (= e!2393515 (Cons!41102 (h!46522 lt!1346664) (++!10505 (t!314293 lt!1346664) suffix!1176)))))

(declare-fun b!3869930 () Bool)

(declare-fun lt!1346838 () List!41226)

(declare-fun e!2393514 () Bool)

(assert (=> b!3869930 (= e!2393514 (or (not (= suffix!1176 Nil!41102)) (= lt!1346838 lt!1346664)))))

(declare-fun b!3869927 () Bool)

(assert (=> b!3869927 (= e!2393515 suffix!1176)))

(declare-fun b!3869929 () Bool)

(declare-fun res!1567456 () Bool)

(assert (=> b!3869929 (=> (not res!1567456) (not e!2393514))))

(assert (=> b!3869929 (= res!1567456 (= (size!30893 lt!1346838) (+ (size!30893 lt!1346664) (size!30893 suffix!1176))))))

(declare-fun d!1146176 () Bool)

(assert (=> d!1146176 e!2393514))

(declare-fun res!1567455 () Bool)

(assert (=> d!1146176 (=> (not res!1567455) (not e!2393514))))

(assert (=> d!1146176 (= res!1567455 (= (content!6135 lt!1346838) ((_ map or) (content!6135 lt!1346664) (content!6135 suffix!1176))))))

(assert (=> d!1146176 (= lt!1346838 e!2393515)))

(declare-fun c!673470 () Bool)

(assert (=> d!1146176 (= c!673470 ((_ is Nil!41102) lt!1346664))))

(assert (=> d!1146176 (= (++!10505 lt!1346664 suffix!1176) lt!1346838)))

(assert (= (and d!1146176 c!673470) b!3869927))

(assert (= (and d!1146176 (not c!673470)) b!3869928))

(assert (= (and d!1146176 res!1567455) b!3869929))

(assert (= (and b!3869929 res!1567456) b!3869930))

(declare-fun m!4426245 () Bool)

(assert (=> b!3869928 m!4426245))

(declare-fun m!4426247 () Bool)

(assert (=> b!3869929 m!4426247))

(assert (=> b!3869929 m!4425863))

(assert (=> b!3869929 m!4425683))

(declare-fun m!4426249 () Bool)

(assert (=> d!1146176 m!4426249))

(assert (=> d!1146176 m!4425869))

(assert (=> d!1146176 m!4425857))

(assert (=> b!3869593 d!1146176))

(declare-fun d!1146178 () Bool)

(assert (=> d!1146178 (= (++!10505 (++!10505 lt!1346685 lt!1346664) suffix!1176) (++!10505 lt!1346685 (++!10505 lt!1346664 suffix!1176)))))

(declare-fun lt!1346841 () Unit!58906)

(declare-fun choose!22854 (List!41226 List!41226 List!41226) Unit!58906)

(assert (=> d!1146178 (= lt!1346841 (choose!22854 lt!1346685 lt!1346664 suffix!1176))))

(assert (=> d!1146178 (= (lemmaConcatAssociativity!2220 lt!1346685 lt!1346664 suffix!1176) lt!1346841)))

(declare-fun bs!583419 () Bool)

(assert (= bs!583419 d!1146178))

(assert (=> bs!583419 m!4425797))

(assert (=> bs!583419 m!4425767))

(declare-fun m!4426251 () Bool)

(assert (=> bs!583419 m!4426251))

(assert (=> bs!583419 m!4425797))

(declare-fun m!4426253 () Bool)

(assert (=> bs!583419 m!4426253))

(assert (=> bs!583419 m!4425767))

(declare-fun m!4426255 () Bool)

(assert (=> bs!583419 m!4426255))

(assert (=> b!3869593 d!1146178))

(declare-fun d!1146180 () Bool)

(declare-fun res!1567459 () Bool)

(declare-fun e!2393518 () Bool)

(assert (=> d!1146180 (=> (not res!1567459) (not e!2393518))))

(declare-fun rulesValid!2467 (LexerInterface!5963 List!41229) Bool)

(assert (=> d!1146180 (= res!1567459 (rulesValid!2467 thiss!20629 rules!2768))))

(assert (=> d!1146180 (= (rulesInvariant!5306 thiss!20629 rules!2768) e!2393518)))

(declare-fun b!3869933 () Bool)

(declare-datatypes ((List!41230 0))(
  ( (Nil!41106) (Cons!41106 (h!46526 String!46737) (t!314393 List!41230)) )
))
(declare-fun noDuplicateTag!2468 (LexerInterface!5963 List!41229 List!41230) Bool)

(assert (=> b!3869933 (= e!2393518 (noDuplicateTag!2468 thiss!20629 rules!2768 Nil!41106))))

(assert (= (and d!1146180 res!1567459) b!3869933))

(declare-fun m!4426257 () Bool)

(assert (=> d!1146180 m!4426257))

(declare-fun m!4426259 () Bool)

(assert (=> b!3869933 m!4426259))

(assert (=> b!3869614 d!1146180))

(declare-fun d!1146182 () Bool)

(declare-fun dynLambda!17690 (Int BalanceConc!24764) TokenValue!6604)

(assert (=> d!1146182 (= (apply!9617 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (seqFromList!4645 lt!1346685)) (dynLambda!17690 (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683))))) (seqFromList!4645 lt!1346685)))))

(declare-fun b_lambda!113041 () Bool)

(assert (=> (not b_lambda!113041) (not d!1146182)))

(declare-fun tb!224399 () Bool)

(declare-fun t!314328 () Bool)

(assert (=> (and b!3869610 (= (toValue!8802 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314328) tb!224399))

(declare-fun result!273310 () Bool)

(assert (=> tb!224399 (= result!273310 (inv!21 (dynLambda!17690 (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683))))) (seqFromList!4645 lt!1346685))))))

(declare-fun m!4426261 () Bool)

(assert (=> tb!224399 m!4426261))

(assert (=> d!1146182 t!314328))

(declare-fun b_and!290037 () Bool)

(assert (= b_and!289995 (and (=> t!314328 result!273310) b_and!290037)))

(declare-fun t!314330 () Bool)

(declare-fun tb!224401 () Bool)

(assert (=> (and b!3869635 (= (toValue!8802 (transformation!6374 (h!46525 rules!2768))) (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314330) tb!224401))

(declare-fun result!273314 () Bool)

(assert (= result!273314 result!273310))

(assert (=> d!1146182 t!314330))

(declare-fun b_and!290039 () Bool)

(assert (= b_and!289999 (and (=> t!314330 result!273314) b_and!290039)))

(declare-fun t!314332 () Bool)

(declare-fun tb!224403 () Bool)

(assert (=> (and b!3869623 (= (toValue!8802 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314332) tb!224403))

(declare-fun result!273316 () Bool)

(assert (= result!273316 result!273310))

(assert (=> d!1146182 t!314332))

(declare-fun b_and!290041 () Bool)

(assert (= b_and!290003 (and (=> t!314332 result!273316) b_and!290041)))

(assert (=> d!1146182 m!4425735))

(declare-fun m!4426263 () Bool)

(assert (=> d!1146182 m!4426263))

(assert (=> b!3869634 d!1146182))

(declare-fun b!3869936 () Bool)

(declare-fun e!2393524 () tuple2!40324)

(assert (=> b!3869936 (= e!2393524 (tuple2!40325 Nil!41104 (_2!23295 (v!39089 lt!1346683))))))

(declare-fun b!3869937 () Bool)

(declare-fun e!2393523 () Bool)

(declare-fun e!2393522 () Bool)

(assert (=> b!3869937 (= e!2393523 e!2393522)))

(declare-fun res!1567460 () Bool)

(declare-fun lt!1346844 () tuple2!40324)

(assert (=> b!3869937 (= res!1567460 (< (size!30893 (_2!23296 lt!1346844)) (size!30893 (_2!23295 (v!39089 lt!1346683)))))))

(assert (=> b!3869937 (=> (not res!1567460) (not e!2393522))))

(declare-fun b!3869938 () Bool)

(assert (=> b!3869938 (= e!2393523 (= (_2!23296 lt!1346844) (_2!23295 (v!39089 lt!1346683))))))

(declare-fun b!3869939 () Bool)

(assert (=> b!3869939 (= e!2393522 (not (isEmpty!24380 (_1!23296 lt!1346844))))))

(declare-fun d!1146184 () Bool)

(assert (=> d!1146184 e!2393523))

(declare-fun c!673472 () Bool)

(assert (=> d!1146184 (= c!673472 (> (size!30895 (_1!23296 lt!1346844)) 0))))

(assert (=> d!1146184 (= lt!1346844 e!2393524)))

(declare-fun c!673471 () Bool)

(declare-fun lt!1346842 () Option!8792)

(assert (=> d!1146184 (= c!673471 ((_ is Some!8791) lt!1346842))))

(assert (=> d!1146184 (= lt!1346842 (maxPrefix!3267 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346683))))))

(assert (=> d!1146184 (= (lexList!1731 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346683))) lt!1346844)))

(declare-fun b!3869940 () Bool)

(declare-fun lt!1346843 () tuple2!40324)

(assert (=> b!3869940 (= e!2393524 (tuple2!40325 (Cons!41104 (_1!23295 (v!39089 lt!1346842)) (_1!23296 lt!1346843)) (_2!23296 lt!1346843)))))

(assert (=> b!3869940 (= lt!1346843 (lexList!1731 thiss!20629 rules!2768 (_2!23295 (v!39089 lt!1346842))))))

(assert (= (and d!1146184 c!673471) b!3869940))

(assert (= (and d!1146184 (not c!673471)) b!3869936))

(assert (= (and d!1146184 c!673472) b!3869937))

(assert (= (and d!1146184 (not c!673472)) b!3869938))

(assert (= (and b!3869937 res!1567460) b!3869939))

(declare-fun m!4426265 () Bool)

(assert (=> b!3869937 m!4426265))

(assert (=> b!3869937 m!4425685))

(declare-fun m!4426267 () Bool)

(assert (=> b!3869939 m!4426267))

(declare-fun m!4426269 () Bool)

(assert (=> d!1146184 m!4426269))

(declare-fun m!4426271 () Bool)

(assert (=> d!1146184 m!4426271))

(declare-fun m!4426273 () Bool)

(assert (=> b!3869940 m!4426273))

(assert (=> b!3869634 d!1146184))

(declare-fun d!1146186 () Bool)

(assert (=> d!1146186 (= (_2!23295 (v!39089 lt!1346683)) lt!1346693)))

(declare-fun lt!1346845 () Unit!58906)

(assert (=> d!1146186 (= lt!1346845 (choose!22846 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 lt!1346693 lt!1346682))))

(assert (=> d!1146186 (isPrefix!3473 lt!1346685 lt!1346682)))

(assert (=> d!1146186 (= (lemmaSamePrefixThenSameSuffix!1694 lt!1346685 (_2!23295 (v!39089 lt!1346683)) lt!1346685 lt!1346693 lt!1346682) lt!1346845)))

(declare-fun bs!583420 () Bool)

(assert (= bs!583420 d!1146186))

(declare-fun m!4426275 () Bool)

(assert (=> bs!583420 m!4426275))

(assert (=> bs!583420 m!4425905))

(assert (=> b!3869634 d!1146186))

(declare-fun d!1146188 () Bool)

(assert (=> d!1146188 (isPrefix!3473 lt!1346685 (++!10505 lt!1346685 (_2!23295 (v!39089 lt!1346683))))))

(declare-fun lt!1346846 () Unit!58906)

(assert (=> d!1146188 (= lt!1346846 (choose!22844 lt!1346685 (_2!23295 (v!39089 lt!1346683))))))

(assert (=> d!1146188 (= (lemmaConcatTwoListThenFirstIsPrefix!2336 lt!1346685 (_2!23295 (v!39089 lt!1346683))) lt!1346846)))

(declare-fun bs!583421 () Bool)

(assert (= bs!583421 d!1146188))

(assert (=> bs!583421 m!4425731))

(assert (=> bs!583421 m!4425731))

(declare-fun m!4426277 () Bool)

(assert (=> bs!583421 m!4426277))

(declare-fun m!4426279 () Bool)

(assert (=> bs!583421 m!4426279))

(assert (=> b!3869634 d!1146188))

(declare-fun b!3869942 () Bool)

(declare-fun e!2393526 () List!41226)

(assert (=> b!3869942 (= e!2393526 (Cons!41102 (h!46522 lt!1346685) (++!10505 (t!314293 lt!1346685) (_2!23295 (v!39089 lt!1346683)))))))

(declare-fun e!2393525 () Bool)

(declare-fun b!3869944 () Bool)

(declare-fun lt!1346847 () List!41226)

(assert (=> b!3869944 (= e!2393525 (or (not (= (_2!23295 (v!39089 lt!1346683)) Nil!41102)) (= lt!1346847 lt!1346685)))))

(declare-fun b!3869941 () Bool)

(assert (=> b!3869941 (= e!2393526 (_2!23295 (v!39089 lt!1346683)))))

(declare-fun b!3869943 () Bool)

(declare-fun res!1567462 () Bool)

(assert (=> b!3869943 (=> (not res!1567462) (not e!2393525))))

(assert (=> b!3869943 (= res!1567462 (= (size!30893 lt!1346847) (+ (size!30893 lt!1346685) (size!30893 (_2!23295 (v!39089 lt!1346683))))))))

(declare-fun d!1146190 () Bool)

(assert (=> d!1146190 e!2393525))

(declare-fun res!1567461 () Bool)

(assert (=> d!1146190 (=> (not res!1567461) (not e!2393525))))

(assert (=> d!1146190 (= res!1567461 (= (content!6135 lt!1346847) ((_ map or) (content!6135 lt!1346685) (content!6135 (_2!23295 (v!39089 lt!1346683))))))))

(assert (=> d!1146190 (= lt!1346847 e!2393526)))

(declare-fun c!673473 () Bool)

(assert (=> d!1146190 (= c!673473 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146190 (= (++!10505 lt!1346685 (_2!23295 (v!39089 lt!1346683))) lt!1346847)))

(assert (= (and d!1146190 c!673473) b!3869941))

(assert (= (and d!1146190 (not c!673473)) b!3869942))

(assert (= (and d!1146190 res!1567461) b!3869943))

(assert (= (and b!3869943 res!1567462) b!3869944))

(declare-fun m!4426281 () Bool)

(assert (=> b!3869942 m!4426281))

(declare-fun m!4426283 () Bool)

(assert (=> b!3869943 m!4426283))

(assert (=> b!3869943 m!4425733))

(assert (=> b!3869943 m!4425685))

(declare-fun m!4426285 () Bool)

(assert (=> d!1146190 m!4426285))

(assert (=> d!1146190 m!4425867))

(declare-fun m!4426287 () Bool)

(assert (=> d!1146190 m!4426287))

(assert (=> b!3869634 d!1146190))

(declare-fun d!1146192 () Bool)

(assert (=> d!1146192 (ruleValid!2326 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))))))

(declare-fun lt!1346850 () Unit!58906)

(declare-fun choose!22857 (LexerInterface!5963 Rule!12548 List!41229) Unit!58906)

(assert (=> d!1146192 (= lt!1346850 (choose!22857 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))) rules!2768))))

(declare-fun contains!8285 (List!41229 Rule!12548) Bool)

(assert (=> d!1146192 (contains!8285 rules!2768 (rule!9258 (_1!23295 (v!39089 lt!1346683))))))

(assert (=> d!1146192 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1406 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683))) rules!2768) lt!1346850)))

(declare-fun bs!583422 () Bool)

(assert (= bs!583422 d!1146192))

(assert (=> bs!583422 m!4425739))

(declare-fun m!4426289 () Bool)

(assert (=> bs!583422 m!4426289))

(declare-fun m!4426291 () Bool)

(assert (=> bs!583422 m!4426291))

(assert (=> b!3869634 d!1146192))

(declare-fun d!1146194 () Bool)

(declare-fun lt!1346851 () List!41226)

(assert (=> d!1146194 (= (++!10505 lt!1346685 lt!1346851) lt!1346682)))

(declare-fun e!2393527 () List!41226)

(assert (=> d!1146194 (= lt!1346851 e!2393527)))

(declare-fun c!673474 () Bool)

(assert (=> d!1146194 (= c!673474 ((_ is Cons!41102) lt!1346685))))

(assert (=> d!1146194 (>= (size!30893 lt!1346682) (size!30893 lt!1346685))))

(assert (=> d!1146194 (= (getSuffix!1928 lt!1346682 lt!1346685) lt!1346851)))

(declare-fun b!3869945 () Bool)

(assert (=> b!3869945 (= e!2393527 (getSuffix!1928 (tail!5906 lt!1346682) (t!314293 lt!1346685)))))

(declare-fun b!3869946 () Bool)

(assert (=> b!3869946 (= e!2393527 lt!1346682)))

(assert (= (and d!1146194 c!673474) b!3869945))

(assert (= (and d!1146194 (not c!673474)) b!3869946))

(declare-fun m!4426293 () Bool)

(assert (=> d!1146194 m!4426293))

(assert (=> d!1146194 m!4425809))

(assert (=> d!1146194 m!4425733))

(assert (=> b!3869945 m!4425899))

(assert (=> b!3869945 m!4425899))

(declare-fun m!4426295 () Bool)

(assert (=> b!3869945 m!4426295))

(assert (=> b!3869634 d!1146194))

(declare-fun d!1146196 () Bool)

(declare-fun fromListB!2143 (List!41226) BalanceConc!24764)

(assert (=> d!1146196 (= (seqFromList!4645 lt!1346685) (fromListB!2143 lt!1346685))))

(declare-fun bs!583423 () Bool)

(assert (= bs!583423 d!1146196))

(declare-fun m!4426297 () Bool)

(assert (=> bs!583423 m!4426297))

(assert (=> b!3869634 d!1146196))

(declare-fun d!1146198 () Bool)

(declare-fun list!15292 (Conc!12585) List!41226)

(assert (=> d!1146198 (= (list!15290 (charsOf!4202 (_1!23295 (v!39089 lt!1346683)))) (list!15292 (c!673401 (charsOf!4202 (_1!23295 (v!39089 lt!1346683))))))))

(declare-fun bs!583424 () Bool)

(assert (= bs!583424 d!1146198))

(declare-fun m!4426299 () Bool)

(assert (=> bs!583424 m!4426299))

(assert (=> b!3869634 d!1146198))

(declare-fun d!1146200 () Bool)

(declare-fun lt!1346854 () BalanceConc!24764)

(assert (=> d!1146200 (= (list!15290 lt!1346854) (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683))))))

(assert (=> d!1146200 (= lt!1346854 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683))))) (value!202293 (_1!23295 (v!39089 lt!1346683)))))))

(assert (=> d!1146200 (= (charsOf!4202 (_1!23295 (v!39089 lt!1346683))) lt!1346854)))

(declare-fun b_lambda!113043 () Bool)

(assert (=> (not b_lambda!113043) (not d!1146200)))

(declare-fun t!314334 () Bool)

(declare-fun tb!224405 () Bool)

(assert (=> (and b!3869610 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314334) tb!224405))

(declare-fun b!3869947 () Bool)

(declare-fun e!2393528 () Bool)

(declare-fun tp!1173327 () Bool)

(assert (=> b!3869947 (= e!2393528 (and (inv!55263 (c!673401 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683))))) (value!202293 (_1!23295 (v!39089 lt!1346683)))))) tp!1173327))))

(declare-fun result!273318 () Bool)

(assert (=> tb!224405 (= result!273318 (and (inv!55264 (dynLambda!17687 (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683))))) (value!202293 (_1!23295 (v!39089 lt!1346683))))) e!2393528))))

(assert (= tb!224405 b!3869947))

(declare-fun m!4426301 () Bool)

(assert (=> b!3869947 m!4426301))

(declare-fun m!4426303 () Bool)

(assert (=> tb!224405 m!4426303))

(assert (=> d!1146200 t!314334))

(declare-fun b_and!290043 () Bool)

(assert (= b_and!290031 (and (=> t!314334 result!273318) b_and!290043)))

(declare-fun tb!224407 () Bool)

(declare-fun t!314336 () Bool)

(assert (=> (and b!3869635 (= (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314336) tb!224407))

(declare-fun result!273320 () Bool)

(assert (= result!273320 result!273318))

(assert (=> d!1146200 t!314336))

(declare-fun b_and!290045 () Bool)

(assert (= b_and!290033 (and (=> t!314336 result!273320) b_and!290045)))

(declare-fun t!314338 () Bool)

(declare-fun tb!224409 () Bool)

(assert (=> (and b!3869623 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314338) tb!224409))

(declare-fun result!273322 () Bool)

(assert (= result!273322 result!273318))

(assert (=> d!1146200 t!314338))

(declare-fun b_and!290047 () Bool)

(assert (= b_and!290035 (and (=> t!314338 result!273322) b_and!290047)))

(declare-fun m!4426305 () Bool)

(assert (=> d!1146200 m!4426305))

(declare-fun m!4426307 () Bool)

(assert (=> d!1146200 m!4426307))

(assert (=> b!3869634 d!1146200))

(declare-fun d!1146202 () Bool)

(assert (=> d!1146202 (= (size!30894 (_1!23295 (v!39089 lt!1346683))) (size!30893 (originalCharacters!6974 (_1!23295 (v!39089 lt!1346683)))))))

(declare-fun Unit!58919 () Unit!58906)

(assert (=> d!1146202 (= (lemmaCharactersSize!1035 (_1!23295 (v!39089 lt!1346683))) Unit!58919)))

(declare-fun bs!583425 () Bool)

(assert (= bs!583425 d!1146202))

(assert (=> bs!583425 m!4425791))

(assert (=> b!3869634 d!1146202))

(declare-fun d!1146204 () Bool)

(declare-fun e!2393529 () Bool)

(assert (=> d!1146204 e!2393529))

(declare-fun res!1567464 () Bool)

(assert (=> d!1146204 (=> res!1567464 e!2393529)))

(declare-fun lt!1346855 () Bool)

(assert (=> d!1146204 (= res!1567464 (not lt!1346855))))

(declare-fun e!2393530 () Bool)

(assert (=> d!1146204 (= lt!1346855 e!2393530)))

(declare-fun res!1567465 () Bool)

(assert (=> d!1146204 (=> res!1567465 e!2393530)))

(assert (=> d!1146204 (= res!1567465 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146204 (= (isPrefix!3473 lt!1346685 lt!1346704) lt!1346855)))

(declare-fun b!3869949 () Bool)

(declare-fun res!1567466 () Bool)

(declare-fun e!2393531 () Bool)

(assert (=> b!3869949 (=> (not res!1567466) (not e!2393531))))

(assert (=> b!3869949 (= res!1567466 (= (head!8189 lt!1346685) (head!8189 lt!1346704)))))

(declare-fun b!3869950 () Bool)

(assert (=> b!3869950 (= e!2393531 (isPrefix!3473 (tail!5906 lt!1346685) (tail!5906 lt!1346704)))))

(declare-fun b!3869948 () Bool)

(assert (=> b!3869948 (= e!2393530 e!2393531)))

(declare-fun res!1567463 () Bool)

(assert (=> b!3869948 (=> (not res!1567463) (not e!2393531))))

(assert (=> b!3869948 (= res!1567463 (not ((_ is Nil!41102) lt!1346704)))))

(declare-fun b!3869951 () Bool)

(assert (=> b!3869951 (= e!2393529 (>= (size!30893 lt!1346704) (size!30893 lt!1346685)))))

(assert (= (and d!1146204 (not res!1567465)) b!3869948))

(assert (= (and b!3869948 res!1567463) b!3869949))

(assert (= (and b!3869949 res!1567466) b!3869950))

(assert (= (and d!1146204 (not res!1567464)) b!3869951))

(assert (=> b!3869949 m!4426219))

(declare-fun m!4426309 () Bool)

(assert (=> b!3869949 m!4426309))

(assert (=> b!3869950 m!4426223))

(declare-fun m!4426311 () Bool)

(assert (=> b!3869950 m!4426311))

(assert (=> b!3869950 m!4426223))

(assert (=> b!3869950 m!4426311))

(declare-fun m!4426313 () Bool)

(assert (=> b!3869950 m!4426313))

(declare-fun m!4426315 () Bool)

(assert (=> b!3869951 m!4426315))

(assert (=> b!3869951 m!4425733))

(assert (=> b!3869634 d!1146204))

(declare-fun d!1146206 () Bool)

(declare-fun res!1567471 () Bool)

(declare-fun e!2393534 () Bool)

(assert (=> d!1146206 (=> (not res!1567471) (not e!2393534))))

(declare-fun validRegex!5132 (Regex!11279) Bool)

(assert (=> d!1146206 (= res!1567471 (validRegex!5132 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683))))))))

(assert (=> d!1146206 (= (ruleValid!2326 thiss!20629 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) e!2393534)))

(declare-fun b!3869956 () Bool)

(declare-fun res!1567472 () Bool)

(assert (=> b!3869956 (=> (not res!1567472) (not e!2393534))))

(declare-fun nullable!3933 (Regex!11279) Bool)

(assert (=> b!3869956 (= res!1567472 (not (nullable!3933 (regex!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))))))

(declare-fun b!3869957 () Bool)

(assert (=> b!3869957 (= e!2393534 (not (= (tag!7234 (rule!9258 (_1!23295 (v!39089 lt!1346683)))) (String!46738 ""))))))

(assert (= (and d!1146206 res!1567471) b!3869956))

(assert (= (and b!3869956 res!1567472) b!3869957))

(declare-fun m!4426317 () Bool)

(assert (=> d!1146206 m!4426317))

(declare-fun m!4426319 () Bool)

(assert (=> b!3869956 m!4426319))

(assert (=> b!3869634 d!1146206))

(declare-fun d!1146208 () Bool)

(declare-fun lt!1346856 () Int)

(assert (=> d!1146208 (>= lt!1346856 0)))

(declare-fun e!2393535 () Int)

(assert (=> d!1146208 (= lt!1346856 e!2393535)))

(declare-fun c!673475 () Bool)

(assert (=> d!1146208 (= c!673475 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146208 (= (size!30893 lt!1346685) lt!1346856)))

(declare-fun b!3869958 () Bool)

(assert (=> b!3869958 (= e!2393535 0)))

(declare-fun b!3869959 () Bool)

(assert (=> b!3869959 (= e!2393535 (+ 1 (size!30893 (t!314293 lt!1346685))))))

(assert (= (and d!1146208 c!673475) b!3869958))

(assert (= (and d!1146208 (not c!673475)) b!3869959))

(declare-fun m!4426321 () Bool)

(assert (=> b!3869959 m!4426321))

(assert (=> b!3869634 d!1146208))

(declare-fun d!1146210 () Bool)

(assert (=> d!1146210 (= (inv!55258 (tag!7234 (rule!9258 (h!46524 suffixTokens!72)))) (= (mod (str.len (value!202267 (tag!7234 (rule!9258 (h!46524 suffixTokens!72))))) 2) 0))))

(assert (=> b!3869636 d!1146210))

(declare-fun d!1146212 () Bool)

(declare-fun res!1567473 () Bool)

(declare-fun e!2393536 () Bool)

(assert (=> d!1146212 (=> (not res!1567473) (not e!2393536))))

(assert (=> d!1146212 (= res!1567473 (semiInverseModEq!2733 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toValue!8802 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))))))

(assert (=> d!1146212 (= (inv!55261 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) e!2393536)))

(declare-fun b!3869960 () Bool)

(assert (=> b!3869960 (= e!2393536 (equivClasses!2632 (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toValue!8802 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))))))

(assert (= (and d!1146212 res!1567473) b!3869960))

(declare-fun m!4426323 () Bool)

(assert (=> d!1146212 m!4426323))

(declare-fun m!4426325 () Bool)

(assert (=> b!3869960 m!4426325))

(assert (=> b!3869636 d!1146212))

(declare-fun d!1146214 () Bool)

(declare-fun lt!1346857 () Int)

(assert (=> d!1146214 (>= lt!1346857 0)))

(declare-fun e!2393537 () Int)

(assert (=> d!1146214 (= lt!1346857 e!2393537)))

(declare-fun c!673476 () Bool)

(assert (=> d!1146214 (= c!673476 ((_ is Nil!41102) suffix!1176))))

(assert (=> d!1146214 (= (size!30893 suffix!1176) lt!1346857)))

(declare-fun b!3869961 () Bool)

(assert (=> b!3869961 (= e!2393537 0)))

(declare-fun b!3869962 () Bool)

(assert (=> b!3869962 (= e!2393537 (+ 1 (size!30893 (t!314293 suffix!1176))))))

(assert (= (and d!1146214 c!673476) b!3869961))

(assert (= (and d!1146214 (not c!673476)) b!3869962))

(declare-fun m!4426327 () Bool)

(assert (=> b!3869962 m!4426327))

(assert (=> b!3869594 d!1146214))

(declare-fun d!1146216 () Bool)

(declare-fun lt!1346858 () Int)

(assert (=> d!1146216 (>= lt!1346858 0)))

(declare-fun e!2393538 () Int)

(assert (=> d!1146216 (= lt!1346858 e!2393538)))

(declare-fun c!673477 () Bool)

(assert (=> d!1146216 (= c!673477 ((_ is Nil!41102) (_2!23295 (v!39089 lt!1346683))))))

(assert (=> d!1146216 (= (size!30893 (_2!23295 (v!39089 lt!1346683))) lt!1346858)))

(declare-fun b!3869963 () Bool)

(assert (=> b!3869963 (= e!2393538 0)))

(declare-fun b!3869964 () Bool)

(assert (=> b!3869964 (= e!2393538 (+ 1 (size!30893 (t!314293 (_2!23295 (v!39089 lt!1346683))))))))

(assert (= (and d!1146216 c!673477) b!3869963))

(assert (= (and d!1146216 (not c!673477)) b!3869964))

(declare-fun m!4426329 () Bool)

(assert (=> b!3869964 m!4426329))

(assert (=> b!3869594 d!1146216))

(declare-fun b!3870010 () Bool)

(declare-fun e!2393559 () Option!8792)

(declare-fun call!282711 () Option!8792)

(assert (=> b!3870010 (= e!2393559 call!282711)))

(declare-fun b!3870011 () Bool)

(declare-fun res!1567509 () Bool)

(declare-fun e!2393558 () Bool)

(assert (=> b!3870011 (=> (not res!1567509) (not e!2393558))))

(declare-fun lt!1346887 () Option!8792)

(assert (=> b!3870011 (= res!1567509 (= (value!202293 (_1!23295 (get!13601 lt!1346887))) (apply!9617 (transformation!6374 (rule!9258 (_1!23295 (get!13601 lt!1346887)))) (seqFromList!4645 (originalCharacters!6974 (_1!23295 (get!13601 lt!1346887)))))))))

(declare-fun b!3870012 () Bool)

(assert (=> b!3870012 (= e!2393558 (contains!8285 rules!2768 (rule!9258 (_1!23295 (get!13601 lt!1346887)))))))

(declare-fun b!3870013 () Bool)

(declare-fun res!1567511 () Bool)

(assert (=> b!3870013 (=> (not res!1567511) (not e!2393558))))

(assert (=> b!3870013 (= res!1567511 (matchR!5409 (regex!6374 (rule!9258 (_1!23295 (get!13601 lt!1346887)))) (list!15290 (charsOf!4202 (_1!23295 (get!13601 lt!1346887))))))))

(declare-fun bm!282706 () Bool)

(assert (=> bm!282706 (= call!282711 (maxPrefixOneRule!2349 thiss!20629 (h!46525 rules!2768) lt!1346682))))

(declare-fun d!1146218 () Bool)

(declare-fun e!2393557 () Bool)

(assert (=> d!1146218 e!2393557))

(declare-fun res!1567513 () Bool)

(assert (=> d!1146218 (=> res!1567513 e!2393557)))

(assert (=> d!1146218 (= res!1567513 (isEmpty!24383 lt!1346887))))

(assert (=> d!1146218 (= lt!1346887 e!2393559)))

(declare-fun c!673483 () Bool)

(assert (=> d!1146218 (= c!673483 (and ((_ is Cons!41105) rules!2768) ((_ is Nil!41105) (t!314296 rules!2768))))))

(declare-fun lt!1346888 () Unit!58906)

(declare-fun lt!1346885 () Unit!58906)

(assert (=> d!1146218 (= lt!1346888 lt!1346885)))

(assert (=> d!1146218 (isPrefix!3473 lt!1346682 lt!1346682)))

(declare-fun lemmaIsPrefixRefl!2203 (List!41226 List!41226) Unit!58906)

(assert (=> d!1146218 (= lt!1346885 (lemmaIsPrefixRefl!2203 lt!1346682 lt!1346682))))

(declare-fun rulesValidInductive!2277 (LexerInterface!5963 List!41229) Bool)

(assert (=> d!1146218 (rulesValidInductive!2277 thiss!20629 rules!2768)))

(assert (=> d!1146218 (= (maxPrefix!3267 thiss!20629 rules!2768 lt!1346682) lt!1346887)))

(declare-fun b!3870014 () Bool)

(declare-fun res!1567515 () Bool)

(assert (=> b!3870014 (=> (not res!1567515) (not e!2393558))))

(assert (=> b!3870014 (= res!1567515 (= (++!10505 (list!15290 (charsOf!4202 (_1!23295 (get!13601 lt!1346887)))) (_2!23295 (get!13601 lt!1346887))) lt!1346682))))

(declare-fun b!3870015 () Bool)

(declare-fun res!1567512 () Bool)

(assert (=> b!3870015 (=> (not res!1567512) (not e!2393558))))

(assert (=> b!3870015 (= res!1567512 (= (list!15290 (charsOf!4202 (_1!23295 (get!13601 lt!1346887)))) (originalCharacters!6974 (_1!23295 (get!13601 lt!1346887)))))))

(declare-fun b!3870016 () Bool)

(declare-fun lt!1346886 () Option!8792)

(declare-fun lt!1346884 () Option!8792)

(assert (=> b!3870016 (= e!2393559 (ite (and ((_ is None!8791) lt!1346886) ((_ is None!8791) lt!1346884)) None!8791 (ite ((_ is None!8791) lt!1346884) lt!1346886 (ite ((_ is None!8791) lt!1346886) lt!1346884 (ite (>= (size!30894 (_1!23295 (v!39089 lt!1346886))) (size!30894 (_1!23295 (v!39089 lt!1346884)))) lt!1346886 lt!1346884)))))))

(assert (=> b!3870016 (= lt!1346886 call!282711)))

(assert (=> b!3870016 (= lt!1346884 (maxPrefix!3267 thiss!20629 (t!314296 rules!2768) lt!1346682))))

(declare-fun b!3870017 () Bool)

(declare-fun res!1567514 () Bool)

(assert (=> b!3870017 (=> (not res!1567514) (not e!2393558))))

(assert (=> b!3870017 (= res!1567514 (< (size!30893 (_2!23295 (get!13601 lt!1346887))) (size!30893 lt!1346682)))))

(declare-fun b!3870018 () Bool)

(assert (=> b!3870018 (= e!2393557 e!2393558)))

(declare-fun res!1567510 () Bool)

(assert (=> b!3870018 (=> (not res!1567510) (not e!2393558))))

(declare-fun isDefined!6880 (Option!8792) Bool)

(assert (=> b!3870018 (= res!1567510 (isDefined!6880 lt!1346887))))

(assert (= (and d!1146218 c!673483) b!3870010))

(assert (= (and d!1146218 (not c!673483)) b!3870016))

(assert (= (or b!3870010 b!3870016) bm!282706))

(assert (= (and d!1146218 (not res!1567513)) b!3870018))

(assert (= (and b!3870018 res!1567510) b!3870015))

(assert (= (and b!3870015 res!1567512) b!3870017))

(assert (= (and b!3870017 res!1567514) b!3870014))

(assert (= (and b!3870014 res!1567515) b!3870011))

(assert (= (and b!3870011 res!1567509) b!3870013))

(assert (= (and b!3870013 res!1567511) b!3870012))

(declare-fun m!4426373 () Bool)

(assert (=> bm!282706 m!4426373))

(declare-fun m!4426375 () Bool)

(assert (=> b!3870014 m!4426375))

(declare-fun m!4426377 () Bool)

(assert (=> b!3870014 m!4426377))

(assert (=> b!3870014 m!4426377))

(declare-fun m!4426379 () Bool)

(assert (=> b!3870014 m!4426379))

(assert (=> b!3870014 m!4426379))

(declare-fun m!4426381 () Bool)

(assert (=> b!3870014 m!4426381))

(declare-fun m!4426383 () Bool)

(assert (=> d!1146218 m!4426383))

(declare-fun m!4426385 () Bool)

(assert (=> d!1146218 m!4426385))

(declare-fun m!4426387 () Bool)

(assert (=> d!1146218 m!4426387))

(declare-fun m!4426389 () Bool)

(assert (=> d!1146218 m!4426389))

(assert (=> b!3870011 m!4426375))

(declare-fun m!4426391 () Bool)

(assert (=> b!3870011 m!4426391))

(assert (=> b!3870011 m!4426391))

(declare-fun m!4426393 () Bool)

(assert (=> b!3870011 m!4426393))

(assert (=> b!3870015 m!4426375))

(assert (=> b!3870015 m!4426377))

(assert (=> b!3870015 m!4426377))

(assert (=> b!3870015 m!4426379))

(assert (=> b!3870017 m!4426375))

(declare-fun m!4426395 () Bool)

(assert (=> b!3870017 m!4426395))

(assert (=> b!3870017 m!4425809))

(declare-fun m!4426397 () Bool)

(assert (=> b!3870016 m!4426397))

(assert (=> b!3870013 m!4426375))

(assert (=> b!3870013 m!4426377))

(assert (=> b!3870013 m!4426377))

(assert (=> b!3870013 m!4426379))

(assert (=> b!3870013 m!4426379))

(declare-fun m!4426399 () Bool)

(assert (=> b!3870013 m!4426399))

(assert (=> b!3870012 m!4426375))

(declare-fun m!4426401 () Bool)

(assert (=> b!3870012 m!4426401))

(declare-fun m!4426403 () Bool)

(assert (=> b!3870018 m!4426403))

(assert (=> b!3869617 d!1146218))

(declare-fun b!3870021 () Bool)

(declare-fun res!1567517 () Bool)

(declare-fun e!2393561 () Bool)

(assert (=> b!3870021 (=> (not res!1567517) (not e!2393561))))

(declare-fun lt!1346889 () List!41228)

(assert (=> b!3870021 (= res!1567517 (= (size!30895 lt!1346889) (+ (size!30895 lt!1346705) (size!30895 suffixTokens!72))))))

(declare-fun d!1146222 () Bool)

(assert (=> d!1146222 e!2393561))

(declare-fun res!1567516 () Bool)

(assert (=> d!1146222 (=> (not res!1567516) (not e!2393561))))

(assert (=> d!1146222 (= res!1567516 (= (content!6134 lt!1346889) ((_ map or) (content!6134 lt!1346705) (content!6134 suffixTokens!72))))))

(declare-fun e!2393560 () List!41228)

(assert (=> d!1146222 (= lt!1346889 e!2393560)))

(declare-fun c!673484 () Bool)

(assert (=> d!1146222 (= c!673484 ((_ is Nil!41104) lt!1346705))))

(assert (=> d!1146222 (= (++!10506 lt!1346705 suffixTokens!72) lt!1346889)))

(declare-fun b!3870020 () Bool)

(assert (=> b!3870020 (= e!2393560 (Cons!41104 (h!46524 lt!1346705) (++!10506 (t!314295 lt!1346705) suffixTokens!72)))))

(declare-fun b!3870019 () Bool)

(assert (=> b!3870019 (= e!2393560 suffixTokens!72)))

(declare-fun b!3870022 () Bool)

(assert (=> b!3870022 (= e!2393561 (or (not (= suffixTokens!72 Nil!41104)) (= lt!1346889 lt!1346705)))))

(assert (= (and d!1146222 c!673484) b!3870019))

(assert (= (and d!1146222 (not c!673484)) b!3870020))

(assert (= (and d!1146222 res!1567516) b!3870021))

(assert (= (and b!3870021 res!1567517) b!3870022))

(declare-fun m!4426405 () Bool)

(assert (=> b!3870021 m!4426405))

(declare-fun m!4426407 () Bool)

(assert (=> b!3870021 m!4426407))

(assert (=> b!3870021 m!4425839))

(declare-fun m!4426409 () Bool)

(assert (=> d!1146222 m!4426409))

(declare-fun m!4426411 () Bool)

(assert (=> d!1146222 m!4426411))

(assert (=> d!1146222 m!4425845))

(declare-fun m!4426413 () Bool)

(assert (=> b!3870020 m!4426413))

(assert (=> b!3869637 d!1146222))

(assert (=> b!3869637 d!1146054))

(declare-fun d!1146224 () Bool)

(declare-fun e!2393562 () Bool)

(assert (=> d!1146224 e!2393562))

(declare-fun res!1567519 () Bool)

(assert (=> d!1146224 (=> res!1567519 e!2393562)))

(declare-fun lt!1346890 () Bool)

(assert (=> d!1146224 (= res!1567519 (not lt!1346890))))

(declare-fun e!2393563 () Bool)

(assert (=> d!1146224 (= lt!1346890 e!2393563)))

(declare-fun res!1567520 () Bool)

(assert (=> d!1146224 (=> res!1567520 e!2393563)))

(assert (=> d!1146224 (= res!1567520 ((_ is Nil!41102) lt!1346664))))

(assert (=> d!1146224 (= (isPrefix!3473 lt!1346664 lt!1346668) lt!1346890)))

(declare-fun b!3870024 () Bool)

(declare-fun res!1567521 () Bool)

(declare-fun e!2393564 () Bool)

(assert (=> b!3870024 (=> (not res!1567521) (not e!2393564))))

(assert (=> b!3870024 (= res!1567521 (= (head!8189 lt!1346664) (head!8189 lt!1346668)))))

(declare-fun b!3870025 () Bool)

(assert (=> b!3870025 (= e!2393564 (isPrefix!3473 (tail!5906 lt!1346664) (tail!5906 lt!1346668)))))

(declare-fun b!3870023 () Bool)

(assert (=> b!3870023 (= e!2393563 e!2393564)))

(declare-fun res!1567518 () Bool)

(assert (=> b!3870023 (=> (not res!1567518) (not e!2393564))))

(assert (=> b!3870023 (= res!1567518 (not ((_ is Nil!41102) lt!1346668)))))

(declare-fun b!3870026 () Bool)

(assert (=> b!3870026 (= e!2393562 (>= (size!30893 lt!1346668) (size!30893 lt!1346664)))))

(assert (= (and d!1146224 (not res!1567520)) b!3870023))

(assert (= (and b!3870023 res!1567518) b!3870024))

(assert (= (and b!3870024 res!1567521) b!3870025))

(assert (= (and d!1146224 (not res!1567519)) b!3870026))

(declare-fun m!4426415 () Bool)

(assert (=> b!3870024 m!4426415))

(declare-fun m!4426417 () Bool)

(assert (=> b!3870024 m!4426417))

(declare-fun m!4426419 () Bool)

(assert (=> b!3870025 m!4426419))

(declare-fun m!4426421 () Bool)

(assert (=> b!3870025 m!4426421))

(assert (=> b!3870025 m!4426419))

(assert (=> b!3870025 m!4426421))

(declare-fun m!4426423 () Bool)

(assert (=> b!3870025 m!4426423))

(assert (=> b!3870026 m!4426239))

(assert (=> b!3870026 m!4425863))

(assert (=> b!3869637 d!1146224))

(declare-fun d!1146226 () Bool)

(assert (=> d!1146226 (isPrefix!3473 lt!1346664 (++!10505 lt!1346664 suffix!1176))))

(declare-fun lt!1346891 () Unit!58906)

(assert (=> d!1146226 (= lt!1346891 (choose!22844 lt!1346664 suffix!1176))))

(assert (=> d!1146226 (= (lemmaConcatTwoListThenFirstIsPrefix!2336 lt!1346664 suffix!1176) lt!1346891)))

(declare-fun bs!583426 () Bool)

(assert (= bs!583426 d!1146226))

(assert (=> bs!583426 m!4425767))

(assert (=> bs!583426 m!4425767))

(declare-fun m!4426425 () Bool)

(assert (=> bs!583426 m!4426425))

(declare-fun m!4426427 () Bool)

(assert (=> bs!583426 m!4426427))

(assert (=> b!3869637 d!1146226))

(declare-fun d!1146228 () Bool)

(assert (=> d!1146228 (= (inv!55258 (tag!7234 (h!46525 rules!2768))) (= (mod (str.len (value!202267 (tag!7234 (h!46525 rules!2768)))) 2) 0))))

(assert (=> b!3869616 d!1146228))

(declare-fun d!1146230 () Bool)

(declare-fun res!1567522 () Bool)

(declare-fun e!2393565 () Bool)

(assert (=> d!1146230 (=> (not res!1567522) (not e!2393565))))

(assert (=> d!1146230 (= res!1567522 (semiInverseModEq!2733 (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toValue!8802 (transformation!6374 (h!46525 rules!2768)))))))

(assert (=> d!1146230 (= (inv!55261 (transformation!6374 (h!46525 rules!2768))) e!2393565)))

(declare-fun b!3870027 () Bool)

(assert (=> b!3870027 (= e!2393565 (equivClasses!2632 (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toValue!8802 (transformation!6374 (h!46525 rules!2768)))))))

(assert (= (and d!1146230 res!1567522) b!3870027))

(declare-fun m!4426429 () Bool)

(assert (=> d!1146230 m!4426429))

(declare-fun m!4426431 () Bool)

(assert (=> b!3870027 m!4426431))

(assert (=> b!3869616 d!1146230))

(declare-fun d!1146232 () Bool)

(assert (=> d!1146232 (= (isEmpty!24382 rules!2768) ((_ is Nil!41105) rules!2768))))

(assert (=> b!3869638 d!1146232))

(declare-fun d!1146234 () Bool)

(declare-fun e!2393566 () Bool)

(assert (=> d!1146234 e!2393566))

(declare-fun res!1567524 () Bool)

(assert (=> d!1146234 (=> res!1567524 e!2393566)))

(declare-fun lt!1346892 () Bool)

(assert (=> d!1146234 (= res!1567524 (not lt!1346892))))

(declare-fun e!2393567 () Bool)

(assert (=> d!1146234 (= lt!1346892 e!2393567)))

(declare-fun res!1567525 () Bool)

(assert (=> d!1146234 (=> res!1567525 e!2393567)))

(assert (=> d!1146234 (= res!1567525 ((_ is Nil!41102) lt!1346685))))

(assert (=> d!1146234 (= (isPrefix!3473 lt!1346685 prefix!426) lt!1346892)))

(declare-fun b!3870029 () Bool)

(declare-fun res!1567526 () Bool)

(declare-fun e!2393568 () Bool)

(assert (=> b!3870029 (=> (not res!1567526) (not e!2393568))))

(assert (=> b!3870029 (= res!1567526 (= (head!8189 lt!1346685) (head!8189 prefix!426)))))

(declare-fun b!3870030 () Bool)

(assert (=> b!3870030 (= e!2393568 (isPrefix!3473 (tail!5906 lt!1346685) (tail!5906 prefix!426)))))

(declare-fun b!3870028 () Bool)

(assert (=> b!3870028 (= e!2393567 e!2393568)))

(declare-fun res!1567523 () Bool)

(assert (=> b!3870028 (=> (not res!1567523) (not e!2393568))))

(assert (=> b!3870028 (= res!1567523 (not ((_ is Nil!41102) prefix!426)))))

(declare-fun b!3870031 () Bool)

(assert (=> b!3870031 (= e!2393566 (>= (size!30893 prefix!426) (size!30893 lt!1346685)))))

(assert (= (and d!1146234 (not res!1567525)) b!3870028))

(assert (= (and b!3870028 res!1567523) b!3870029))

(assert (= (and b!3870029 res!1567526) b!3870030))

(assert (= (and d!1146234 (not res!1567524)) b!3870031))

(assert (=> b!3870029 m!4426219))

(assert (=> b!3870029 m!4425895))

(assert (=> b!3870030 m!4426223))

(assert (=> b!3870030 m!4425873))

(assert (=> b!3870030 m!4426223))

(assert (=> b!3870030 m!4425873))

(declare-fun m!4426433 () Bool)

(assert (=> b!3870030 m!4426433))

(assert (=> b!3870031 m!4425703))

(assert (=> b!3870031 m!4425733))

(assert (=> b!3869598 d!1146234))

(assert (=> b!3869598 d!1146044))

(declare-fun d!1146236 () Bool)

(assert (=> d!1146236 (isPrefix!3473 lt!1346685 prefix!426)))

(declare-fun lt!1346895 () Unit!58906)

(declare-fun choose!22860 (List!41226 List!41226 List!41226) Unit!58906)

(assert (=> d!1146236 (= lt!1346895 (choose!22860 prefix!426 lt!1346685 lt!1346682))))

(assert (=> d!1146236 (isPrefix!3473 prefix!426 lt!1346682)))

(assert (=> d!1146236 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!223 prefix!426 lt!1346685 lt!1346682) lt!1346895)))

(declare-fun bs!583427 () Bool)

(assert (= bs!583427 d!1146236))

(assert (=> bs!583427 m!4425705))

(declare-fun m!4426435 () Bool)

(assert (=> bs!583427 m!4426435))

(assert (=> bs!583427 m!4425673))

(assert (=> b!3869598 d!1146236))

(assert (=> b!3869598 d!1146046))

(declare-fun d!1146238 () Bool)

(declare-fun lt!1346896 () Int)

(assert (=> d!1146238 (>= lt!1346896 0)))

(declare-fun e!2393569 () Int)

(assert (=> d!1146238 (= lt!1346896 e!2393569)))

(declare-fun c!673485 () Bool)

(assert (=> d!1146238 (= c!673485 ((_ is Nil!41102) prefix!426))))

(assert (=> d!1146238 (= (size!30893 prefix!426) lt!1346896)))

(declare-fun b!3870032 () Bool)

(assert (=> b!3870032 (= e!2393569 0)))

(declare-fun b!3870033 () Bool)

(assert (=> b!3870033 (= e!2393569 (+ 1 (size!30893 (t!314293 prefix!426))))))

(assert (= (and d!1146238 c!673485) b!3870032))

(assert (= (and d!1146238 (not c!673485)) b!3870033))

(declare-fun m!4426437 () Bool)

(assert (=> b!3870033 m!4426437))

(assert (=> b!3869598 d!1146238))

(declare-fun d!1146240 () Bool)

(assert (=> d!1146240 (= (isEmpty!24380 prefixTokens!80) ((_ is Nil!41104) prefixTokens!80))))

(assert (=> b!3869619 d!1146240))

(declare-fun b!3870034 () Bool)

(declare-fun e!2393571 () Bool)

(declare-fun e!2393570 () Bool)

(assert (=> b!3870034 (= e!2393571 e!2393570)))

(declare-fun c!673487 () Bool)

(assert (=> b!3870034 (= c!673487 ((_ is IntegerValue!19813) (value!202293 (h!46524 prefixTokens!80))))))

(declare-fun b!3870036 () Bool)

(assert (=> b!3870036 (= e!2393571 (inv!16 (value!202293 (h!46524 prefixTokens!80))))))

(declare-fun b!3870037 () Bool)

(declare-fun e!2393572 () Bool)

(assert (=> b!3870037 (= e!2393572 (inv!15 (value!202293 (h!46524 prefixTokens!80))))))

(declare-fun b!3870038 () Bool)

(declare-fun res!1567527 () Bool)

(assert (=> b!3870038 (=> res!1567527 e!2393572)))

(assert (=> b!3870038 (= res!1567527 (not ((_ is IntegerValue!19814) (value!202293 (h!46524 prefixTokens!80)))))))

(assert (=> b!3870038 (= e!2393570 e!2393572)))

(declare-fun b!3870035 () Bool)

(assert (=> b!3870035 (= e!2393570 (inv!17 (value!202293 (h!46524 prefixTokens!80))))))

(declare-fun d!1146242 () Bool)

(declare-fun c!673486 () Bool)

(assert (=> d!1146242 (= c!673486 ((_ is IntegerValue!19812) (value!202293 (h!46524 prefixTokens!80))))))

(assert (=> d!1146242 (= (inv!21 (value!202293 (h!46524 prefixTokens!80))) e!2393571)))

(assert (= (and d!1146242 c!673486) b!3870036))

(assert (= (and d!1146242 (not c!673486)) b!3870034))

(assert (= (and b!3870034 c!673487) b!3870035))

(assert (= (and b!3870034 (not c!673487)) b!3870038))

(assert (= (and b!3870038 (not res!1567527)) b!3870037))

(declare-fun m!4426439 () Bool)

(assert (=> b!3870036 m!4426439))

(declare-fun m!4426441 () Bool)

(assert (=> b!3870037 m!4426441))

(declare-fun m!4426443 () Bool)

(assert (=> b!3870035 m!4426443))

(assert (=> b!3869599 d!1146242))

(declare-fun b!3870040 () Bool)

(declare-fun e!2393574 () List!41226)

(assert (=> b!3870040 (= e!2393574 (Cons!41102 (h!46522 lt!1346672) (++!10505 (t!314293 lt!1346672) suffix!1176)))))

(declare-fun lt!1346897 () List!41226)

(declare-fun e!2393573 () Bool)

(declare-fun b!3870042 () Bool)

(assert (=> b!3870042 (= e!2393573 (or (not (= suffix!1176 Nil!41102)) (= lt!1346897 lt!1346672)))))

(declare-fun b!3870039 () Bool)

(assert (=> b!3870039 (= e!2393574 suffix!1176)))

(declare-fun b!3870041 () Bool)

(declare-fun res!1567529 () Bool)

(assert (=> b!3870041 (=> (not res!1567529) (not e!2393573))))

(assert (=> b!3870041 (= res!1567529 (= (size!30893 lt!1346897) (+ (size!30893 lt!1346672) (size!30893 suffix!1176))))))

(declare-fun d!1146244 () Bool)

(assert (=> d!1146244 e!2393573))

(declare-fun res!1567528 () Bool)

(assert (=> d!1146244 (=> (not res!1567528) (not e!2393573))))

(assert (=> d!1146244 (= res!1567528 (= (content!6135 lt!1346897) ((_ map or) (content!6135 lt!1346672) (content!6135 suffix!1176))))))

(assert (=> d!1146244 (= lt!1346897 e!2393574)))

(declare-fun c!673488 () Bool)

(assert (=> d!1146244 (= c!673488 ((_ is Nil!41102) lt!1346672))))

(assert (=> d!1146244 (= (++!10505 lt!1346672 suffix!1176) lt!1346897)))

(assert (= (and d!1146244 c!673488) b!3870039))

(assert (= (and d!1146244 (not c!673488)) b!3870040))

(assert (= (and d!1146244 res!1567528) b!3870041))

(assert (= (and b!3870041 res!1567529) b!3870042))

(declare-fun m!4426445 () Bool)

(assert (=> b!3870040 m!4426445))

(declare-fun m!4426447 () Bool)

(assert (=> b!3870041 m!4426447))

(declare-fun m!4426449 () Bool)

(assert (=> b!3870041 m!4426449))

(assert (=> b!3870041 m!4425683))

(declare-fun m!4426451 () Bool)

(assert (=> d!1146244 m!4426451))

(declare-fun m!4426453 () Bool)

(assert (=> d!1146244 m!4426453))

(assert (=> d!1146244 m!4425857))

(assert (=> b!3869620 d!1146244))

(declare-fun b!3870065 () Bool)

(declare-fun b_free!104449 () Bool)

(declare-fun b_next!105153 () Bool)

(assert (=> b!3870065 (= b_free!104449 (not b_next!105153))))

(declare-fun t!314340 () Bool)

(declare-fun tb!224411 () Bool)

(assert (=> (and b!3870065 (= (toValue!8802 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314340) tb!224411))

(declare-fun result!273326 () Bool)

(assert (= result!273326 result!273310))

(assert (=> d!1146182 t!314340))

(declare-fun tp!1173338 () Bool)

(declare-fun b_and!290049 () Bool)

(assert (=> b!3870065 (= tp!1173338 (and (=> t!314340 result!273326) b_and!290049))))

(declare-fun b_free!104451 () Bool)

(declare-fun b_next!105155 () Bool)

(assert (=> b!3870065 (= b_free!104451 (not b_next!105155))))

(declare-fun t!314342 () Bool)

(declare-fun tb!224413 () Bool)

(assert (=> (and b!3870065 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))) t!314342) tb!224413))

(declare-fun result!273328 () Bool)

(assert (= result!273328 result!273274))

(assert (=> b!3869643 t!314342))

(declare-fun tb!224415 () Bool)

(declare-fun t!314344 () Bool)

(assert (=> (and b!3870065 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))) t!314344) tb!224415))

(declare-fun result!273330 () Bool)

(assert (= result!273330 result!273304))

(assert (=> b!3869905 t!314344))

(declare-fun tb!224417 () Bool)

(declare-fun t!314346 () Bool)

(assert (=> (and b!3870065 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314346) tb!224417))

(declare-fun result!273332 () Bool)

(assert (= result!273332 result!273318))

(assert (=> d!1146200 t!314346))

(declare-fun tp!1173339 () Bool)

(declare-fun b_and!290051 () Bool)

(assert (=> b!3870065 (= tp!1173339 (and (=> t!314342 result!273328) (=> t!314344 result!273330) (=> t!314346 result!273332) b_and!290051))))

(declare-fun b!3870063 () Bool)

(declare-fun e!2393592 () Bool)

(declare-fun tp!1173340 () Bool)

(declare-fun e!2393593 () Bool)

(assert (=> b!3870063 (= e!2393592 (and (inv!21 (value!202293 (h!46524 (t!314295 prefixTokens!80)))) e!2393593 tp!1173340))))

(declare-fun e!2393597 () Bool)

(assert (=> b!3869622 (= tp!1173302 e!2393597)))

(declare-fun tp!1173341 () Bool)

(declare-fun b!3870064 () Bool)

(declare-fun e!2393594 () Bool)

(assert (=> b!3870064 (= e!2393593 (and tp!1173341 (inv!55258 (tag!7234 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (inv!55261 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) e!2393594))))

(assert (=> b!3870065 (= e!2393594 (and tp!1173338 tp!1173339))))

(declare-fun b!3870062 () Bool)

(declare-fun tp!1173342 () Bool)

(assert (=> b!3870062 (= e!2393597 (and (inv!55262 (h!46524 (t!314295 prefixTokens!80))) e!2393592 tp!1173342))))

(assert (= b!3870064 b!3870065))

(assert (= b!3870063 b!3870064))

(assert (= b!3870062 b!3870063))

(assert (= (and b!3869622 ((_ is Cons!41104) (t!314295 prefixTokens!80))) b!3870062))

(declare-fun m!4426471 () Bool)

(assert (=> b!3870063 m!4426471))

(declare-fun m!4426473 () Bool)

(assert (=> b!3870064 m!4426473))

(declare-fun m!4426475 () Bool)

(assert (=> b!3870064 m!4426475))

(declare-fun m!4426477 () Bool)

(assert (=> b!3870062 m!4426477))

(declare-fun b!3870069 () Bool)

(declare-fun b_free!104453 () Bool)

(declare-fun b_next!105157 () Bool)

(assert (=> b!3870069 (= b_free!104453 (not b_next!105157))))

(declare-fun t!314348 () Bool)

(declare-fun tb!224419 () Bool)

(assert (=> (and b!3870069 (= (toValue!8802 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314348) tb!224419))

(declare-fun result!273334 () Bool)

(assert (= result!273334 result!273310))

(assert (=> d!1146182 t!314348))

(declare-fun tp!1173343 () Bool)

(declare-fun b_and!290053 () Bool)

(assert (=> b!3870069 (= tp!1173343 (and (=> t!314348 result!273334) b_and!290053))))

(declare-fun b_free!104455 () Bool)

(declare-fun b_next!105159 () Bool)

(assert (=> b!3870069 (= b_free!104455 (not b_next!105159))))

(declare-fun t!314350 () Bool)

(declare-fun tb!224421 () Bool)

(assert (=> (and b!3870069 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))) t!314350) tb!224421))

(declare-fun result!273336 () Bool)

(assert (= result!273336 result!273274))

(assert (=> b!3869643 t!314350))

(declare-fun t!314352 () Bool)

(declare-fun tb!224423 () Bool)

(assert (=> (and b!3870069 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))) t!314352) tb!224423))

(declare-fun result!273338 () Bool)

(assert (= result!273338 result!273304))

(assert (=> b!3869905 t!314352))

(declare-fun t!314354 () Bool)

(declare-fun tb!224425 () Bool)

(assert (=> (and b!3870069 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314354) tb!224425))

(declare-fun result!273340 () Bool)

(assert (= result!273340 result!273318))

(assert (=> d!1146200 t!314354))

(declare-fun b_and!290055 () Bool)

(declare-fun tp!1173344 () Bool)

(assert (=> b!3870069 (= tp!1173344 (and (=> t!314350 result!273336) (=> t!314352 result!273338) (=> t!314354 result!273340) b_and!290055))))

(declare-fun e!2393599 () Bool)

(declare-fun b!3870067 () Bool)

(declare-fun e!2393598 () Bool)

(declare-fun tp!1173345 () Bool)

(assert (=> b!3870067 (= e!2393598 (and (inv!21 (value!202293 (h!46524 (t!314295 suffixTokens!72)))) e!2393599 tp!1173345))))

(declare-fun e!2393603 () Bool)

(assert (=> b!3869631 (= tp!1173309 e!2393603)))

(declare-fun tp!1173346 () Bool)

(declare-fun b!3870068 () Bool)

(declare-fun e!2393600 () Bool)

(assert (=> b!3870068 (= e!2393599 (and tp!1173346 (inv!55258 (tag!7234 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (inv!55261 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) e!2393600))))

(assert (=> b!3870069 (= e!2393600 (and tp!1173343 tp!1173344))))

(declare-fun b!3870066 () Bool)

(declare-fun tp!1173347 () Bool)

(assert (=> b!3870066 (= e!2393603 (and (inv!55262 (h!46524 (t!314295 suffixTokens!72))) e!2393598 tp!1173347))))

(assert (= b!3870068 b!3870069))

(assert (= b!3870067 b!3870068))

(assert (= b!3870066 b!3870067))

(assert (= (and b!3869631 ((_ is Cons!41104) (t!314295 suffixTokens!72))) b!3870066))

(declare-fun m!4426479 () Bool)

(assert (=> b!3870067 m!4426479))

(declare-fun m!4426481 () Bool)

(assert (=> b!3870068 m!4426481))

(declare-fun m!4426483 () Bool)

(assert (=> b!3870068 m!4426483))

(declare-fun m!4426485 () Bool)

(assert (=> b!3870066 m!4426485))

(declare-fun b!3870083 () Bool)

(declare-fun e!2393606 () Bool)

(declare-fun tp!1173360 () Bool)

(declare-fun tp!1173358 () Bool)

(assert (=> b!3870083 (= e!2393606 (and tp!1173360 tp!1173358))))

(declare-fun b!3870080 () Bool)

(assert (=> b!3870080 (= e!2393606 tp_is_empty!19529)))

(declare-fun b!3870082 () Bool)

(declare-fun tp!1173362 () Bool)

(assert (=> b!3870082 (= e!2393606 tp!1173362)))

(assert (=> b!3869633 (= tp!1173312 e!2393606)))

(declare-fun b!3870081 () Bool)

(declare-fun tp!1173359 () Bool)

(declare-fun tp!1173361 () Bool)

(assert (=> b!3870081 (= e!2393606 (and tp!1173359 tp!1173361))))

(assert (= (and b!3869633 ((_ is ElementMatch!11279) (regex!6374 (rule!9258 (h!46524 prefixTokens!80))))) b!3870080))

(assert (= (and b!3869633 ((_ is Concat!17884) (regex!6374 (rule!9258 (h!46524 prefixTokens!80))))) b!3870081))

(assert (= (and b!3869633 ((_ is Star!11279) (regex!6374 (rule!9258 (h!46524 prefixTokens!80))))) b!3870082))

(assert (= (and b!3869633 ((_ is Union!11279) (regex!6374 (rule!9258 (h!46524 prefixTokens!80))))) b!3870083))

(declare-fun b!3870087 () Bool)

(declare-fun e!2393607 () Bool)

(declare-fun tp!1173365 () Bool)

(declare-fun tp!1173363 () Bool)

(assert (=> b!3870087 (= e!2393607 (and tp!1173365 tp!1173363))))

(declare-fun b!3870084 () Bool)

(assert (=> b!3870084 (= e!2393607 tp_is_empty!19529)))

(declare-fun b!3870086 () Bool)

(declare-fun tp!1173367 () Bool)

(assert (=> b!3870086 (= e!2393607 tp!1173367)))

(assert (=> b!3869636 (= tp!1173307 e!2393607)))

(declare-fun b!3870085 () Bool)

(declare-fun tp!1173364 () Bool)

(declare-fun tp!1173366 () Bool)

(assert (=> b!3870085 (= e!2393607 (and tp!1173364 tp!1173366))))

(assert (= (and b!3869636 ((_ is ElementMatch!11279) (regex!6374 (rule!9258 (h!46524 suffixTokens!72))))) b!3870084))

(assert (= (and b!3869636 ((_ is Concat!17884) (regex!6374 (rule!9258 (h!46524 suffixTokens!72))))) b!3870085))

(assert (= (and b!3869636 ((_ is Star!11279) (regex!6374 (rule!9258 (h!46524 suffixTokens!72))))) b!3870086))

(assert (= (and b!3869636 ((_ is Union!11279) (regex!6374 (rule!9258 (h!46524 suffixTokens!72))))) b!3870087))

(declare-fun b!3870092 () Bool)

(declare-fun e!2393610 () Bool)

(declare-fun tp!1173370 () Bool)

(assert (=> b!3870092 (= e!2393610 (and tp_is_empty!19529 tp!1173370))))

(assert (=> b!3869595 (= tp!1173314 e!2393610)))

(assert (= (and b!3869595 ((_ is Cons!41102) (t!314293 prefix!426))) b!3870092))

(declare-fun b!3870096 () Bool)

(declare-fun e!2393611 () Bool)

(declare-fun tp!1173373 () Bool)

(declare-fun tp!1173371 () Bool)

(assert (=> b!3870096 (= e!2393611 (and tp!1173373 tp!1173371))))

(declare-fun b!3870093 () Bool)

(assert (=> b!3870093 (= e!2393611 tp_is_empty!19529)))

(declare-fun b!3870095 () Bool)

(declare-fun tp!1173375 () Bool)

(assert (=> b!3870095 (= e!2393611 tp!1173375)))

(assert (=> b!3869616 (= tp!1173305 e!2393611)))

(declare-fun b!3870094 () Bool)

(declare-fun tp!1173372 () Bool)

(declare-fun tp!1173374 () Bool)

(assert (=> b!3870094 (= e!2393611 (and tp!1173372 tp!1173374))))

(assert (= (and b!3869616 ((_ is ElementMatch!11279) (regex!6374 (h!46525 rules!2768)))) b!3870093))

(assert (= (and b!3869616 ((_ is Concat!17884) (regex!6374 (h!46525 rules!2768)))) b!3870094))

(assert (= (and b!3869616 ((_ is Star!11279) (regex!6374 (h!46525 rules!2768)))) b!3870095))

(assert (= (and b!3869616 ((_ is Union!11279) (regex!6374 (h!46525 rules!2768)))) b!3870096))

(declare-fun b!3870097 () Bool)

(declare-fun e!2393612 () Bool)

(declare-fun tp!1173376 () Bool)

(assert (=> b!3870097 (= e!2393612 (and tp_is_empty!19529 tp!1173376))))

(assert (=> b!3869607 (= tp!1173306 e!2393612)))

(assert (= (and b!3869607 ((_ is Cons!41102) (t!314293 suffixResult!91))) b!3870097))

(declare-fun b!3870108 () Bool)

(declare-fun b_free!104457 () Bool)

(declare-fun b_next!105161 () Bool)

(assert (=> b!3870108 (= b_free!104457 (not b_next!105161))))

(declare-fun t!314356 () Bool)

(declare-fun tb!224427 () Bool)

(assert (=> (and b!3870108 (= (toValue!8802 (transformation!6374 (h!46525 (t!314296 rules!2768)))) (toValue!8802 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314356) tb!224427))

(declare-fun result!273348 () Bool)

(assert (= result!273348 result!273310))

(assert (=> d!1146182 t!314356))

(declare-fun tp!1173387 () Bool)

(declare-fun b_and!290057 () Bool)

(assert (=> b!3870108 (= tp!1173387 (and (=> t!314356 result!273348) b_and!290057))))

(declare-fun b_free!104459 () Bool)

(declare-fun b_next!105163 () Bool)

(assert (=> b!3870108 (= b_free!104459 (not b_next!105163))))

(declare-fun t!314358 () Bool)

(declare-fun tb!224429 () Bool)

(assert (=> (and b!3870108 (= (toChars!8661 (transformation!6374 (h!46525 (t!314296 rules!2768)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80))))) t!314358) tb!224429))

(declare-fun result!273350 () Bool)

(assert (= result!273350 result!273274))

(assert (=> b!3869643 t!314358))

(declare-fun tb!224431 () Bool)

(declare-fun t!314360 () Bool)

(assert (=> (and b!3870108 (= (toChars!8661 (transformation!6374 (h!46525 (t!314296 rules!2768)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72))))) t!314360) tb!224431))

(declare-fun result!273352 () Bool)

(assert (= result!273352 result!273304))

(assert (=> b!3869905 t!314360))

(declare-fun t!314362 () Bool)

(declare-fun tb!224433 () Bool)

(assert (=> (and b!3870108 (= (toChars!8661 (transformation!6374 (h!46525 (t!314296 rules!2768)))) (toChars!8661 (transformation!6374 (rule!9258 (_1!23295 (v!39089 lt!1346683)))))) t!314362) tb!224433))

(declare-fun result!273354 () Bool)

(assert (= result!273354 result!273318))

(assert (=> d!1146200 t!314362))

(declare-fun b_and!290059 () Bool)

(declare-fun tp!1173386 () Bool)

(assert (=> b!3870108 (= tp!1173386 (and (=> t!314358 result!273350) (=> t!314360 result!273352) (=> t!314362 result!273354) b_and!290059))))

(declare-fun e!2393622 () Bool)

(assert (=> b!3870108 (= e!2393622 (and tp!1173387 tp!1173386))))

(declare-fun tp!1173388 () Bool)

(declare-fun e!2393621 () Bool)

(declare-fun b!3870107 () Bool)

(assert (=> b!3870107 (= e!2393621 (and tp!1173388 (inv!55258 (tag!7234 (h!46525 (t!314296 rules!2768)))) (inv!55261 (transformation!6374 (h!46525 (t!314296 rules!2768)))) e!2393622))))

(declare-fun b!3870106 () Bool)

(declare-fun e!2393624 () Bool)

(declare-fun tp!1173385 () Bool)

(assert (=> b!3870106 (= e!2393624 (and e!2393621 tp!1173385))))

(assert (=> b!3869596 (= tp!1173303 e!2393624)))

(assert (= b!3870107 b!3870108))

(assert (= b!3870106 b!3870107))

(assert (= (and b!3869596 ((_ is Cons!41105) (t!314296 rules!2768))) b!3870106))

(declare-fun m!4426487 () Bool)

(assert (=> b!3870107 m!4426487))

(declare-fun m!4426489 () Bool)

(assert (=> b!3870107 m!4426489))

(declare-fun b!3870109 () Bool)

(declare-fun e!2393625 () Bool)

(declare-fun tp!1173389 () Bool)

(assert (=> b!3870109 (= e!2393625 (and tp_is_empty!19529 tp!1173389))))

(assert (=> b!3869609 (= tp!1173304 e!2393625)))

(assert (= (and b!3869609 ((_ is Cons!41102) (originalCharacters!6974 (h!46524 suffixTokens!72)))) b!3870109))

(declare-fun b!3870110 () Bool)

(declare-fun e!2393626 () Bool)

(declare-fun tp!1173390 () Bool)

(assert (=> b!3870110 (= e!2393626 (and tp_is_empty!19529 tp!1173390))))

(assert (=> b!3869621 (= tp!1173308 e!2393626)))

(assert (= (and b!3869621 ((_ is Cons!41102) (t!314293 suffix!1176))) b!3870110))

(declare-fun b!3870111 () Bool)

(declare-fun e!2393627 () Bool)

(declare-fun tp!1173391 () Bool)

(assert (=> b!3870111 (= e!2393627 (and tp_is_empty!19529 tp!1173391))))

(assert (=> b!3869599 (= tp!1173316 e!2393627)))

(assert (= (and b!3869599 ((_ is Cons!41102) (originalCharacters!6974 (h!46524 prefixTokens!80)))) b!3870111))

(declare-fun b_lambda!113045 () Bool)

(assert (= b_lambda!113039 (or (and b!3870108 b_free!104459 (= (toChars!8661 (transformation!6374 (h!46525 (t!314296 rules!2768)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))))) (and b!3869610 b_free!104439 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))))) (and b!3870069 b_free!104455 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))))) (and b!3869623 b_free!104447) (and b!3870065 b_free!104451 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))))) (and b!3869635 b_free!104443 (= (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))))) b_lambda!113045)))

(declare-fun b_lambda!113047 () Bool)

(assert (= b_lambda!113031 (or (and b!3869623 b_free!104447 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 suffixTokens!72)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))))) (and b!3869610 b_free!104439) (and b!3870065 b_free!104451 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 prefixTokens!80))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))))) (and b!3870069 b_free!104455 (= (toChars!8661 (transformation!6374 (rule!9258 (h!46524 (t!314295 suffixTokens!72))))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))))) (and b!3869635 b_free!104443 (= (toChars!8661 (transformation!6374 (h!46525 rules!2768))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))))) (and b!3870108 b_free!104459 (= (toChars!8661 (transformation!6374 (h!46525 (t!314296 rules!2768)))) (toChars!8661 (transformation!6374 (rule!9258 (h!46524 prefixTokens!80)))))) b_lambda!113047)))

(check-sat (not b!3870026) b_and!290039 (not b_next!105141) (not b!3869925) (not b!3869661) (not d!1146176) (not b!3870036) (not b!3869674) (not b!3870018) (not b!3870064) (not b!3870012) (not b!3870081) (not b!3870016) (not b!3869905) (not b!3869896) (not d!1146044) (not d!1146188) (not b!3869746) (not d!1146178) (not b!3869888) (not d!1146164) (not d!1146202) (not b!3870041) (not d!1146218) (not b_lambda!113045) (not d!1146056) (not b!3869895) (not b!3869889) (not d!1146090) (not b!3869947) (not d!1146112) (not b!3869700) (not b_next!105153) (not b!3870011) (not d!1146168) (not d!1146180) (not b!3869945) (not b!3869964) (not b!3869939) (not b!3869649) (not d!1146172) (not d!1146174) (not b!3869714) b_and!290041 (not d!1146028) b_and!290059 (not b!3870094) b_and!290055 (not b_next!105159) (not d!1146080) b_and!290043 (not b!3870082) (not b!3869697) (not b!3870014) (not b!3870083) (not b!3870035) (not b!3869753) (not d!1146042) (not b_next!105143) (not b!3869956) (not b!3869894) (not b!3870066) (not d!1146198) (not b!3869690) (not b!3869918) (not b!3870040) (not b!3869687) (not b_next!105157) (not b!3870030) (not b!3870033) (not b!3869922) (not tb!224405) (not b!3869755) (not b!3869713) (not b!3870107) (not d!1146236) (not b!3870017) (not d!1146194) (not b!3870068) (not b!3869942) (not b_next!105161) (not b!3870111) (not b!3869763) (not b!3869951) (not b!3869959) (not b!3869962) (not b!3869791) (not b!3870095) (not b!3869691) (not d!1146226) (not b!3870025) (not d!1146200) (not b!3869796) (not d!1146072) (not b!3869943) (not d!1146196) (not b_next!105145) (not b!3869929) (not b!3870106) (not b!3869809) (not b!3869940) (not b!3869643) (not d!1146034) (not tb!224369) (not b!3870092) (not d!1146050) (not b_next!105163) (not tb!224399) tp_is_empty!19529 (not b!3869801) (not b!3869756) (not d!1146206) (not d!1146184) (not b!3870021) (not b!3869686) (not b!3869893) (not b!3869664) (not b!3869949) (not b!3869792) (not b!3869924) (not b_next!105149) (not b!3869920) (not b!3870037) (not b!3869701) (not b!3870109) (not b!3869745) (not b!3869960) (not d!1146026) b_and!290037 (not d!1146078) (not b!3869798) (not b!3870087) b_and!290049 (not d!1146038) (not d!1146040) (not b!3870086) (not b!3869933) (not b!3870029) (not b!3869937) (not b!3869921) (not b!3870024) (not b!3870031) (not d!1146032) (not d!1146192) (not b!3870085) b_and!290051 (not b!3869911) (not b!3870015) b_and!290047 (not b!3870027) (not b!3869950) (not d!1146152) (not b!3869891) (not b!3870013) (not d!1146222) (not d!1146030) (not b!3869906) (not b!3870096) (not b!3869799) (not b!3870063) (not b_next!105147) (not b!3869890) (not b!3869793) b_and!290053 (not d!1146212) (not d!1146244) (not d!1146190) (not d!1146070) (not b!3869712) (not tb!224393) b_and!290057 (not bm!282706) (not b!3870062) (not d!1146048) (not b_next!105155) (not b_lambda!113041) (not b_next!105151) (not b!3870110) (not b!3869663) (not b!3870067) (not b!3870020) (not d!1146186) b_and!290045 (not b!3869928) (not b_lambda!113047) (not b!3869644) (not b!3869675) (not b_lambda!113043) (not b!3870097) (not d!1146230) (not d!1146102))
(check-sat b_and!290039 (not b_next!105141) (not b_next!105153) b_and!290041 (not b_next!105143) (not b_next!105157) (not b_next!105161) (not b_next!105145) (not b_next!105163) (not b_next!105149) b_and!290037 b_and!290049 b_and!290051 b_and!290047 b_and!290057 b_and!290045 b_and!290059 b_and!290055 (not b_next!105159) b_and!290043 b_and!290053 (not b_next!105147) (not b_next!105151) (not b_next!105155))
