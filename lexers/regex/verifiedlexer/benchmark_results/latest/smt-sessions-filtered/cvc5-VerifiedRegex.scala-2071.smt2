; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105276 () Bool)

(assert start!105276)

(declare-fun b!1186518 () Bool)

(declare-fun b_free!28533 () Bool)

(declare-fun b_next!29237 () Bool)

(assert (=> b!1186518 (= b_free!28533 (not b_next!29237))))

(declare-fun tp!338370 () Bool)

(declare-fun b_and!81669 () Bool)

(assert (=> b!1186518 (= tp!338370 b_and!81669)))

(declare-fun b_free!28535 () Bool)

(declare-fun b_next!29239 () Bool)

(assert (=> b!1186518 (= b_free!28535 (not b_next!29239))))

(declare-fun tp!338371 () Bool)

(declare-fun b_and!81671 () Bool)

(assert (=> b!1186518 (= tp!338371 b_and!81671)))

(declare-fun b!1186504 () Bool)

(declare-fun b_free!28537 () Bool)

(declare-fun b_next!29241 () Bool)

(assert (=> b!1186504 (= b_free!28537 (not b_next!29241))))

(declare-fun tp!338374 () Bool)

(declare-fun b_and!81673 () Bool)

(assert (=> b!1186504 (= tp!338374 b_and!81673)))

(declare-fun b_free!28539 () Bool)

(declare-fun b_next!29243 () Bool)

(assert (=> b!1186504 (= b_free!28539 (not b_next!29243))))

(declare-fun tp!338369 () Bool)

(declare-fun b_and!81675 () Bool)

(assert (=> b!1186504 (= tp!338369 b_and!81675)))

(declare-fun b!1186529 () Bool)

(declare-fun e!762321 () Bool)

(assert (=> b!1186529 (= e!762321 true)))

(declare-fun b!1186528 () Bool)

(declare-fun e!762320 () Bool)

(assert (=> b!1186528 (= e!762320 e!762321)))

(declare-fun b!1186527 () Bool)

(declare-fun e!762319 () Bool)

(assert (=> b!1186527 (= e!762319 e!762320)))

(declare-fun b!1186508 () Bool)

(assert (=> b!1186508 e!762319))

(assert (= b!1186528 b!1186529))

(assert (= b!1186527 b!1186528))

(declare-datatypes ((C!7022 0))(
  ( (C!7023 (val!3807 Int)) )
))
(declare-datatypes ((List!11927 0))(
  ( (Nil!11903) (Cons!11903 (h!17304 C!7022) (t!111933 List!11927)) )
))
(declare-datatypes ((IArray!7799 0))(
  ( (IArray!7800 (innerList!3957 List!11927)) )
))
(declare-datatypes ((Conc!3897 0))(
  ( (Node!3897 (left!10362 Conc!3897) (right!10692 Conc!3897) (csize!8024 Int) (cheight!4108 Int)) (Leaf!5969 (xs!6602 IArray!7799) (csize!8025 Int)) (Empty!3897) )
))
(declare-datatypes ((List!11928 0))(
  ( (Nil!11904) (Cons!11904 (h!17305 (_ BitVec 16)) (t!111934 List!11928)) )
))
(declare-datatypes ((BalanceConc!7816 0))(
  ( (BalanceConc!7817 (c!197195 Conc!3897)) )
))
(declare-datatypes ((TokenValue!2148 0))(
  ( (FloatLiteralValue!4296 (text!15481 List!11928)) (TokenValueExt!2147 (__x!8007 Int)) (Broken!10740 (value!67369 List!11928)) (Object!2171) (End!2148) (Def!2148) (Underscore!2148) (Match!2148) (Else!2148) (Error!2148) (Case!2148) (If!2148) (Extends!2148) (Abstract!2148) (Class!2148) (Val!2148) (DelimiterValue!4296 (del!2208 List!11928)) (KeywordValue!2154 (value!67370 List!11928)) (CommentValue!4296 (value!67371 List!11928)) (WhitespaceValue!4296 (value!67372 List!11928)) (IndentationValue!2148 (value!67373 List!11928)) (String!14409) (Int32!2148) (Broken!10741 (value!67374 List!11928)) (Boolean!2149) (Unit!18263) (OperatorValue!2151 (op!2208 List!11928)) (IdentifierValue!4296 (value!67375 List!11928)) (IdentifierValue!4297 (value!67376 List!11928)) (WhitespaceValue!4297 (value!67377 List!11928)) (True!4296) (False!4296) (Broken!10742 (value!67378 List!11928)) (Broken!10743 (value!67379 List!11928)) (True!4297) (RightBrace!2148) (RightBracket!2148) (Colon!2148) (Null!2148) (Comma!2148) (LeftBracket!2148) (False!4297) (LeftBrace!2148) (ImaginaryLiteralValue!2148 (text!15482 List!11928)) (StringLiteralValue!6444 (value!67380 List!11928)) (EOFValue!2148 (value!67381 List!11928)) (IdentValue!2148 (value!67382 List!11928)) (DelimiterValue!4297 (value!67383 List!11928)) (DedentValue!2148 (value!67384 List!11928)) (NewLineValue!2148 (value!67385 List!11928)) (IntegerValue!6444 (value!67386 (_ BitVec 32)) (text!15483 List!11928)) (IntegerValue!6445 (value!67387 Int) (text!15484 List!11928)) (Times!2148) (Or!2148) (Equal!2148) (Minus!2148) (Broken!10744 (value!67388 List!11928)) (And!2148) (Div!2148) (LessEqual!2148) (Mod!2148) (Concat!5500) (Not!2148) (Plus!2148) (SpaceValue!2148 (value!67389 List!11928)) (IntegerValue!6446 (value!67390 Int) (text!15485 List!11928)) (StringLiteralValue!6445 (text!15486 List!11928)) (FloatLiteralValue!4297 (text!15487 List!11928)) (BytesLiteralValue!2148 (value!67391 List!11928)) (CommentValue!4297 (value!67392 List!11928)) (StringLiteralValue!6446 (value!67393 List!11928)) (ErrorTokenValue!2148 (msg!2209 List!11928)) )
))
(declare-datatypes ((Regex!3352 0))(
  ( (ElementMatch!3352 (c!197196 C!7022)) (Concat!5501 (regOne!7216 Regex!3352) (regTwo!7216 Regex!3352)) (EmptyExpr!3352) (Star!3352 (reg!3681 Regex!3352)) (EmptyLang!3352) (Union!3352 (regOne!7217 Regex!3352) (regTwo!7217 Regex!3352)) )
))
(declare-datatypes ((String!14410 0))(
  ( (String!14411 (value!67394 String)) )
))
(declare-datatypes ((TokenValueInjection!3996 0))(
  ( (TokenValueInjection!3997 (toValue!3199 Int) (toChars!3058 Int)) )
))
(declare-datatypes ((Rule!3964 0))(
  ( (Rule!3965 (regex!2082 Regex!3352) (tag!2344 String!14410) (isSeparator!2082 Bool) (transformation!2082 TokenValueInjection!3996)) )
))
(declare-datatypes ((List!11929 0))(
  ( (Nil!11905) (Cons!11905 (h!17306 Rule!3964) (t!111935 List!11929)) )
))
(declare-fun rules!4386 () List!11929)

(assert (= (and b!1186508 (is-Cons!11905 rules!4386)) b!1186527))

(declare-fun lambda!48912 () Int)

(declare-fun order!7405 () Int)

(declare-fun order!7403 () Int)

(declare-fun dynLambda!5311 (Int Int) Int)

(declare-fun dynLambda!5312 (Int Int) Int)

(assert (=> b!1186529 (< (dynLambda!5311 order!7403 (toValue!3199 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48912))))

(declare-fun order!7407 () Int)

(declare-fun dynLambda!5313 (Int Int) Int)

(assert (=> b!1186529 (< (dynLambda!5313 order!7407 (toChars!3058 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48912))))

(declare-fun e!762308 () Bool)

(assert (=> b!1186504 (= e!762308 (and tp!338374 tp!338369))))

(declare-datatypes ((Token!3826 0))(
  ( (Token!3827 (value!67395 TokenValue!2148) (rule!3503 Rule!3964) (size!9382 Int) (originalCharacters!2636 List!11927)) )
))
(declare-datatypes ((List!11930 0))(
  ( (Nil!11906) (Cons!11906 (h!17307 Token!3826) (t!111936 List!11930)) )
))
(declare-fun l!6534 () List!11930)

(declare-fun e!762305 () Bool)

(declare-fun tp!338372 () Bool)

(declare-fun e!762303 () Bool)

(declare-fun b!1186505 () Bool)

(declare-fun inv!15735 (Token!3826) Bool)

(assert (=> b!1186505 (= e!762305 (and (inv!15735 (h!17307 l!6534)) e!762303 tp!338372))))

(declare-fun e!762312 () Bool)

(declare-fun b!1186506 () Bool)

(declare-fun tp!338367 () Bool)

(declare-fun e!762309 () Bool)

(declare-fun inv!15732 (String!14410) Bool)

(declare-fun inv!15736 (TokenValueInjection!3996) Bool)

(assert (=> b!1186506 (= e!762309 (and tp!338367 (inv!15732 (tag!2344 (h!17306 rules!4386))) (inv!15736 (transformation!2082 (h!17306 rules!4386))) e!762312))))

(declare-fun b!1186507 () Bool)

(declare-fun e!762307 () Bool)

(declare-fun e!762311 () Bool)

(assert (=> b!1186507 (= e!762307 e!762311)))

(declare-fun res!536199 () Bool)

(assert (=> b!1186507 (=> (not res!536199) (not e!762311))))

(declare-datatypes ((LexerInterface!1777 0))(
  ( (LexerInterfaceExt!1774 (__x!8008 Int)) (Lexer!1775) )
))
(declare-fun thiss!27592 () LexerInterface!1777)

(declare-fun lt!408201 () List!11930)

(declare-fun rulesProduceIndividualToken!804 (LexerInterface!1777 List!11929 Token!3826) Bool)

(assert (=> b!1186507 (= res!536199 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 lt!408201)))))

(declare-fun e!762301 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!171 (LexerInterface!1777 List!11930 List!11929) Bool)

(assert (=> b!1186508 (= e!762301 (not (tokensListTwoByTwoPredicateSeparableList!171 thiss!27592 lt!408201 rules!4386)))))

(declare-fun forall!3153 (List!11930 Int) Bool)

(assert (=> b!1186508 (forall!3153 lt!408201 lambda!48912)))

(declare-datatypes ((Unit!18264 0))(
  ( (Unit!18265) )
))
(declare-fun lt!408202 () Unit!18264)

(declare-fun lemmaForallSubseq!194 (List!11930 List!11930 Int) Unit!18264)

(assert (=> b!1186508 (= lt!408202 (lemmaForallSubseq!194 lt!408201 l!6534 lambda!48912))))

(declare-fun subseq!332 (List!11930 List!11930) Bool)

(assert (=> b!1186508 (subseq!332 lt!408201 l!6534)))

(declare-fun lt!408203 () Unit!18264)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!95 (List!11930 Int) Unit!18264)

(assert (=> b!1186508 (= lt!408203 (lemmaDropSubseq!95 l!6534 i!1621))))

(declare-fun rulesProduceEachTokenIndividuallyList!643 (LexerInterface!1777 List!11929 List!11930) Bool)

(assert (=> b!1186508 (= (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 lt!408201) e!762307)))

(declare-fun res!536197 () Bool)

(assert (=> b!1186508 (=> res!536197 e!762307)))

(assert (=> b!1186508 (= res!536197 (not (is-Cons!11906 lt!408201)))))

(declare-fun drop!556 (List!11930 Int) List!11930)

(assert (=> b!1186508 (= lt!408201 (drop!556 l!6534 i!1621))))

(declare-fun b!1186509 () Bool)

(declare-fun res!536196 () Bool)

(assert (=> b!1186509 (=> (not res!536196) (not e!762301))))

(assert (=> b!1186509 (= res!536196 (is-Nil!11906 l!6534))))

(declare-fun b!1186510 () Bool)

(declare-fun e!762306 () Bool)

(declare-fun tp!338373 () Bool)

(assert (=> b!1186510 (= e!762306 (and e!762309 tp!338373))))

(declare-fun b!1186511 () Bool)

(declare-fun res!536193 () Bool)

(assert (=> b!1186511 (=> (not res!536193) (not e!762301))))

(declare-fun isEmpty!7163 (List!11929) Bool)

(assert (=> b!1186511 (= res!536193 (not (isEmpty!7163 rules!4386)))))

(declare-fun res!536194 () Bool)

(assert (=> start!105276 (=> (not res!536194) (not e!762301))))

(assert (=> start!105276 (= res!536194 (is-Lexer!1775 thiss!27592))))

(assert (=> start!105276 e!762301))

(assert (=> start!105276 true))

(assert (=> start!105276 e!762306))

(assert (=> start!105276 e!762305))

(declare-fun b!1186512 () Bool)

(declare-fun res!536195 () Bool)

(assert (=> b!1186512 (=> (not res!536195) (not e!762301))))

(assert (=> b!1186512 (= res!536195 (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 l!6534))))

(declare-fun e!762300 () Bool)

(declare-fun tp!338375 () Bool)

(declare-fun b!1186513 () Bool)

(assert (=> b!1186513 (= e!762300 (and tp!338375 (inv!15732 (tag!2344 (rule!3503 (h!17307 l!6534)))) (inv!15736 (transformation!2082 (rule!3503 (h!17307 l!6534)))) e!762308))))

(declare-fun b!1186514 () Bool)

(declare-fun tp!338368 () Bool)

(declare-fun inv!21 (TokenValue!2148) Bool)

(assert (=> b!1186514 (= e!762303 (and (inv!21 (value!67395 (h!17307 l!6534))) e!762300 tp!338368))))

(declare-fun b!1186515 () Bool)

(assert (=> b!1186515 (= e!762311 (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 (t!111936 lt!408201)))))

(declare-fun b!1186516 () Bool)

(declare-fun res!536200 () Bool)

(assert (=> b!1186516 (=> (not res!536200) (not e!762301))))

(declare-fun rulesInvariant!1651 (LexerInterface!1777 List!11929) Bool)

(assert (=> b!1186516 (= res!536200 (rulesInvariant!1651 thiss!27592 rules!4386))))

(declare-fun b!1186517 () Bool)

(declare-fun res!536198 () Bool)

(assert (=> b!1186517 (=> (not res!536198) (not e!762301))))

(assert (=> b!1186517 (= res!536198 (tokensListTwoByTwoPredicateSeparableList!171 thiss!27592 l!6534 rules!4386))))

(assert (=> b!1186518 (= e!762312 (and tp!338370 tp!338371))))

(assert (= (and start!105276 res!536194) b!1186511))

(assert (= (and b!1186511 res!536193) b!1186516))

(assert (= (and b!1186516 res!536200) b!1186512))

(assert (= (and b!1186512 res!536195) b!1186517))

(assert (= (and b!1186517 res!536198) b!1186509))

(assert (= (and b!1186509 res!536196) b!1186508))

(assert (= (and b!1186508 (not res!536197)) b!1186507))

(assert (= (and b!1186507 res!536199) b!1186515))

(assert (= b!1186506 b!1186518))

(assert (= b!1186510 b!1186506))

(assert (= (and start!105276 (is-Cons!11905 rules!4386)) b!1186510))

(assert (= b!1186513 b!1186504))

(assert (= b!1186514 b!1186513))

(assert (= b!1186505 b!1186514))

(assert (= (and start!105276 (is-Cons!11906 l!6534)) b!1186505))

(declare-fun m!1362551 () Bool)

(assert (=> b!1186508 m!1362551))

(declare-fun m!1362553 () Bool)

(assert (=> b!1186508 m!1362553))

(declare-fun m!1362555 () Bool)

(assert (=> b!1186508 m!1362555))

(declare-fun m!1362557 () Bool)

(assert (=> b!1186508 m!1362557))

(declare-fun m!1362559 () Bool)

(assert (=> b!1186508 m!1362559))

(declare-fun m!1362561 () Bool)

(assert (=> b!1186508 m!1362561))

(declare-fun m!1362563 () Bool)

(assert (=> b!1186508 m!1362563))

(declare-fun m!1362565 () Bool)

(assert (=> b!1186512 m!1362565))

(declare-fun m!1362567 () Bool)

(assert (=> b!1186507 m!1362567))

(declare-fun m!1362569 () Bool)

(assert (=> b!1186517 m!1362569))

(declare-fun m!1362571 () Bool)

(assert (=> b!1186506 m!1362571))

(declare-fun m!1362573 () Bool)

(assert (=> b!1186506 m!1362573))

(declare-fun m!1362575 () Bool)

(assert (=> b!1186505 m!1362575))

(declare-fun m!1362577 () Bool)

(assert (=> b!1186514 m!1362577))

(declare-fun m!1362579 () Bool)

(assert (=> b!1186513 m!1362579))

(declare-fun m!1362581 () Bool)

(assert (=> b!1186513 m!1362581))

(declare-fun m!1362583 () Bool)

(assert (=> b!1186516 m!1362583))

(declare-fun m!1362585 () Bool)

(assert (=> b!1186511 m!1362585))

(declare-fun m!1362587 () Bool)

(assert (=> b!1186515 m!1362587))

(push 1)

(assert (not b!1186514))

(assert b_and!81671)

(assert (not b!1186511))

(assert (not b!1186505))

(assert (not b!1186516))

(assert (not b!1186510))

(assert b_and!81675)

(assert (not b_next!29241))

(assert (not b!1186513))

(assert (not b!1186527))

(assert (not b!1186507))

(assert (not b!1186512))

(assert (not b!1186508))

(assert b_and!81669)

(assert (not b_next!29243))

(assert (not b_next!29237))

(assert (not b!1186515))

(assert (not b!1186517))

(assert (not b_next!29239))

(assert (not b!1186506))

(assert b_and!81673)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!29237))

(assert (not b_next!29239))

(assert b_and!81671)

(assert b_and!81673)

(assert b_and!81675)

(assert (not b_next!29241))

(assert b_and!81669)

(assert (not b_next!29243))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!339472 () Bool)

(assert (=> d!339472 (= (inv!15732 (tag!2344 (rule!3503 (h!17307 l!6534)))) (= (mod (str.len (value!67394 (tag!2344 (rule!3503 (h!17307 l!6534))))) 2) 0))))

(assert (=> b!1186513 d!339472))

(declare-fun d!339474 () Bool)

(declare-fun res!536231 () Bool)

(declare-fun e!762372 () Bool)

(assert (=> d!339474 (=> (not res!536231) (not e!762372))))

(declare-fun semiInverseModEq!751 (Int Int) Bool)

(assert (=> d!339474 (= res!536231 (semiInverseModEq!751 (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))) (toValue!3199 (transformation!2082 (rule!3503 (h!17307 l!6534))))))))

(assert (=> d!339474 (= (inv!15736 (transformation!2082 (rule!3503 (h!17307 l!6534)))) e!762372)))

(declare-fun b!1186588 () Bool)

(declare-fun equivClasses!718 (Int Int) Bool)

(assert (=> b!1186588 (= e!762372 (equivClasses!718 (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))) (toValue!3199 (transformation!2082 (rule!3503 (h!17307 l!6534))))))))

(assert (= (and d!339474 res!536231) b!1186588))

(declare-fun m!1362627 () Bool)

(assert (=> d!339474 m!1362627))

(declare-fun m!1362629 () Bool)

(assert (=> b!1186588 m!1362629))

(assert (=> b!1186513 d!339474))

(declare-fun d!339476 () Bool)

(assert (=> d!339476 (subseq!332 (drop!556 l!6534 i!1621) l!6534)))

(declare-fun lt!408215 () Unit!18264)

(declare-fun choose!7671 (List!11930 Int) Unit!18264)

(assert (=> d!339476 (= lt!408215 (choose!7671 l!6534 i!1621))))

(assert (=> d!339476 (= (lemmaDropSubseq!95 l!6534 i!1621) lt!408215)))

(declare-fun bs!287629 () Bool)

(assert (= bs!287629 d!339476))

(assert (=> bs!287629 m!1362551))

(assert (=> bs!287629 m!1362551))

(declare-fun m!1362631 () Bool)

(assert (=> bs!287629 m!1362631))

(declare-fun m!1362633 () Bool)

(assert (=> bs!287629 m!1362633))

(assert (=> b!1186508 d!339476))

(declare-fun d!339478 () Bool)

(declare-fun res!536240 () Bool)

(declare-fun e!762387 () Bool)

(assert (=> d!339478 (=> res!536240 e!762387)))

(assert (=> d!339478 (= res!536240 (or (not (is-Cons!11906 lt!408201)) (not (is-Cons!11906 (t!111936 lt!408201)))))))

(assert (=> d!339478 (= (tokensListTwoByTwoPredicateSeparableList!171 thiss!27592 lt!408201 rules!4386) e!762387)))

(declare-fun b!1186608 () Bool)

(declare-fun e!762386 () Bool)

(assert (=> b!1186608 (= e!762387 e!762386)))

(declare-fun res!536239 () Bool)

(assert (=> b!1186608 (=> (not res!536239) (not e!762386))))

(declare-fun separableTokensPredicate!162 (LexerInterface!1777 Token!3826 Token!3826 List!11929) Bool)

(assert (=> b!1186608 (= res!536239 (separableTokensPredicate!162 thiss!27592 (h!17307 lt!408201) (h!17307 (t!111936 lt!408201)) rules!4386))))

(declare-fun lt!408232 () Unit!18264)

(declare-fun Unit!18269 () Unit!18264)

(assert (=> b!1186608 (= lt!408232 Unit!18269)))

(declare-fun size!9384 (BalanceConc!7816) Int)

(declare-fun charsOf!1100 (Token!3826) BalanceConc!7816)

(assert (=> b!1186608 (> (size!9384 (charsOf!1100 (h!17307 (t!111936 lt!408201)))) 0)))

(declare-fun lt!408235 () Unit!18264)

(declare-fun Unit!18270 () Unit!18264)

(assert (=> b!1186608 (= lt!408235 Unit!18270)))

(assert (=> b!1186608 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 (t!111936 lt!408201)))))

(declare-fun lt!408231 () Unit!18264)

(declare-fun Unit!18271 () Unit!18264)

(assert (=> b!1186608 (= lt!408231 Unit!18271)))

(assert (=> b!1186608 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 lt!408201))))

(declare-fun lt!408236 () Unit!18264)

(declare-fun lt!408230 () Unit!18264)

(assert (=> b!1186608 (= lt!408236 lt!408230)))

(assert (=> b!1186608 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 (t!111936 lt!408201)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!321 (LexerInterface!1777 List!11929 List!11930 Token!3826) Unit!18264)

(assert (=> b!1186608 (= lt!408230 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!321 thiss!27592 rules!4386 lt!408201 (h!17307 (t!111936 lt!408201))))))

(declare-fun lt!408234 () Unit!18264)

(declare-fun lt!408233 () Unit!18264)

(assert (=> b!1186608 (= lt!408234 lt!408233)))

(assert (=> b!1186608 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 lt!408201))))

(assert (=> b!1186608 (= lt!408233 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!321 thiss!27592 rules!4386 lt!408201 (h!17307 lt!408201)))))

(declare-fun b!1186609 () Bool)

(assert (=> b!1186609 (= e!762386 (tokensListTwoByTwoPredicateSeparableList!171 thiss!27592 (Cons!11906 (h!17307 (t!111936 lt!408201)) (t!111936 (t!111936 lt!408201))) rules!4386))))

(assert (= (and d!339478 (not res!536240)) b!1186608))

(assert (= (and b!1186608 res!536239) b!1186609))

(declare-fun m!1362641 () Bool)

(assert (=> b!1186608 m!1362641))

(declare-fun m!1362643 () Bool)

(assert (=> b!1186608 m!1362643))

(assert (=> b!1186608 m!1362567))

(assert (=> b!1186608 m!1362641))

(declare-fun m!1362645 () Bool)

(assert (=> b!1186608 m!1362645))

(declare-fun m!1362647 () Bool)

(assert (=> b!1186608 m!1362647))

(declare-fun m!1362649 () Bool)

(assert (=> b!1186608 m!1362649))

(declare-fun m!1362651 () Bool)

(assert (=> b!1186608 m!1362651))

(declare-fun m!1362653 () Bool)

(assert (=> b!1186609 m!1362653))

(assert (=> b!1186508 d!339478))

(declare-fun d!339484 () Bool)

(assert (=> d!339484 (forall!3153 lt!408201 lambda!48912)))

(declare-fun lt!408239 () Unit!18264)

(declare-fun choose!7672 (List!11930 List!11930 Int) Unit!18264)

(assert (=> d!339484 (= lt!408239 (choose!7672 lt!408201 l!6534 lambda!48912))))

(assert (=> d!339484 (forall!3153 l!6534 lambda!48912)))

(assert (=> d!339484 (= (lemmaForallSubseq!194 lt!408201 l!6534 lambda!48912) lt!408239)))

(declare-fun bs!287630 () Bool)

(assert (= bs!287630 d!339484))

(assert (=> bs!287630 m!1362561))

(declare-fun m!1362655 () Bool)

(assert (=> bs!287630 m!1362655))

(declare-fun m!1362657 () Bool)

(assert (=> bs!287630 m!1362657))

(assert (=> b!1186508 d!339484))

(declare-fun d!339486 () Bool)

(declare-fun res!536245 () Bool)

(declare-fun e!762392 () Bool)

(assert (=> d!339486 (=> res!536245 e!762392)))

(assert (=> d!339486 (= res!536245 (is-Nil!11906 lt!408201))))

(assert (=> d!339486 (= (forall!3153 lt!408201 lambda!48912) e!762392)))

(declare-fun b!1186614 () Bool)

(declare-fun e!762393 () Bool)

(assert (=> b!1186614 (= e!762392 e!762393)))

(declare-fun res!536246 () Bool)

(assert (=> b!1186614 (=> (not res!536246) (not e!762393))))

(declare-fun dynLambda!5317 (Int Token!3826) Bool)

(assert (=> b!1186614 (= res!536246 (dynLambda!5317 lambda!48912 (h!17307 lt!408201)))))

(declare-fun b!1186615 () Bool)

(assert (=> b!1186615 (= e!762393 (forall!3153 (t!111936 lt!408201) lambda!48912))))

(assert (= (and d!339486 (not res!536245)) b!1186614))

(assert (= (and b!1186614 res!536246) b!1186615))

(declare-fun b_lambda!35623 () Bool)

(assert (=> (not b_lambda!35623) (not b!1186614)))

(declare-fun m!1362659 () Bool)

(assert (=> b!1186614 m!1362659))

(declare-fun m!1362661 () Bool)

(assert (=> b!1186615 m!1362661))

(assert (=> b!1186508 d!339486))

(declare-fun b!1186625 () Bool)

(declare-fun e!762405 () Bool)

(declare-fun e!762402 () Bool)

(assert (=> b!1186625 (= e!762405 e!762402)))

(declare-fun res!536255 () Bool)

(assert (=> b!1186625 (=> res!536255 e!762402)))

(declare-fun e!762403 () Bool)

(assert (=> b!1186625 (= res!536255 e!762403)))

(declare-fun res!536258 () Bool)

(assert (=> b!1186625 (=> (not res!536258) (not e!762403))))

(assert (=> b!1186625 (= res!536258 (= (h!17307 lt!408201) (h!17307 l!6534)))))

(declare-fun d!339488 () Bool)

(declare-fun res!536257 () Bool)

(declare-fun e!762404 () Bool)

(assert (=> d!339488 (=> res!536257 e!762404)))

(assert (=> d!339488 (= res!536257 (is-Nil!11906 lt!408201))))

(assert (=> d!339488 (= (subseq!332 lt!408201 l!6534) e!762404)))

(declare-fun b!1186627 () Bool)

(assert (=> b!1186627 (= e!762402 (subseq!332 lt!408201 (t!111936 l!6534)))))

(declare-fun b!1186626 () Bool)

(assert (=> b!1186626 (= e!762403 (subseq!332 (t!111936 lt!408201) (t!111936 l!6534)))))

(declare-fun b!1186624 () Bool)

(assert (=> b!1186624 (= e!762404 e!762405)))

(declare-fun res!536256 () Bool)

(assert (=> b!1186624 (=> (not res!536256) (not e!762405))))

(assert (=> b!1186624 (= res!536256 (is-Cons!11906 l!6534))))

(assert (= (and d!339488 (not res!536257)) b!1186624))

(assert (= (and b!1186624 res!536256) b!1186625))

(assert (= (and b!1186625 res!536258) b!1186626))

(assert (= (and b!1186625 (not res!536255)) b!1186627))

(declare-fun m!1362663 () Bool)

(assert (=> b!1186627 m!1362663))

(declare-fun m!1362665 () Bool)

(assert (=> b!1186626 m!1362665))

(assert (=> b!1186508 d!339488))

(declare-fun bs!287631 () Bool)

(declare-fun d!339490 () Bool)

(assert (= bs!287631 (and d!339490 b!1186508)))

(declare-fun lambda!48918 () Int)

(assert (=> bs!287631 (= (= thiss!27592 Lexer!1775) (= lambda!48918 lambda!48912))))

(declare-fun b!1186636 () Bool)

(declare-fun e!762414 () Bool)

(assert (=> b!1186636 (= e!762414 true)))

(declare-fun b!1186635 () Bool)

(declare-fun e!762413 () Bool)

(assert (=> b!1186635 (= e!762413 e!762414)))

(declare-fun b!1186634 () Bool)

(declare-fun e!762412 () Bool)

(assert (=> b!1186634 (= e!762412 e!762413)))

(assert (=> d!339490 e!762412))

(assert (= b!1186635 b!1186636))

(assert (= b!1186634 b!1186635))

(assert (= (and d!339490 (is-Cons!11905 rules!4386)) b!1186634))

(assert (=> b!1186636 (< (dynLambda!5311 order!7403 (toValue!3199 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48918))))

(assert (=> b!1186636 (< (dynLambda!5313 order!7407 (toChars!3058 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48918))))

(assert (=> d!339490 true))

(declare-fun lt!408242 () Bool)

(assert (=> d!339490 (= lt!408242 (forall!3153 lt!408201 lambda!48918))))

(declare-fun e!762411 () Bool)

(assert (=> d!339490 (= lt!408242 e!762411)))

(declare-fun res!536263 () Bool)

(assert (=> d!339490 (=> res!536263 e!762411)))

(assert (=> d!339490 (= res!536263 (not (is-Cons!11906 lt!408201)))))

(assert (=> d!339490 (not (isEmpty!7163 rules!4386))))

(assert (=> d!339490 (= (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 lt!408201) lt!408242)))

(declare-fun b!1186632 () Bool)

(declare-fun e!762410 () Bool)

(assert (=> b!1186632 (= e!762411 e!762410)))

(declare-fun res!536264 () Bool)

(assert (=> b!1186632 (=> (not res!536264) (not e!762410))))

(assert (=> b!1186632 (= res!536264 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 lt!408201)))))

(declare-fun b!1186633 () Bool)

(assert (=> b!1186633 (= e!762410 (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 (t!111936 lt!408201)))))

(assert (= (and d!339490 (not res!536263)) b!1186632))

(assert (= (and b!1186632 res!536264) b!1186633))

(declare-fun m!1362667 () Bool)

(assert (=> d!339490 m!1362667))

(assert (=> d!339490 m!1362585))

(assert (=> b!1186632 m!1362567))

(assert (=> b!1186633 m!1362587))

(assert (=> b!1186508 d!339490))

(declare-fun d!339492 () Bool)

(declare-fun e!762425 () Bool)

(assert (=> d!339492 e!762425))

(declare-fun res!536267 () Bool)

(assert (=> d!339492 (=> (not res!536267) (not e!762425))))

(declare-fun lt!408245 () List!11930)

(declare-fun content!1644 (List!11930) (Set Token!3826))

(assert (=> d!339492 (= res!536267 (set.subset (content!1644 lt!408245) (content!1644 l!6534)))))

(declare-fun e!762427 () List!11930)

(assert (=> d!339492 (= lt!408245 e!762427)))

(declare-fun c!197214 () Bool)

(assert (=> d!339492 (= c!197214 (is-Nil!11906 l!6534))))

(assert (=> d!339492 (= (drop!556 l!6534 i!1621) lt!408245)))

(declare-fun b!1186657 () Bool)

(declare-fun e!762429 () Int)

(declare-fun call!82631 () Int)

(assert (=> b!1186657 (= e!762429 call!82631)))

(declare-fun b!1186658 () Bool)

(declare-fun e!762426 () List!11930)

(assert (=> b!1186658 (= e!762427 e!762426)))

(declare-fun c!197215 () Bool)

(assert (=> b!1186658 (= c!197215 (<= i!1621 0))))

(declare-fun b!1186659 () Bool)

(declare-fun e!762428 () Int)

(assert (=> b!1186659 (= e!762428 (- call!82631 i!1621))))

(declare-fun b!1186660 () Bool)

(assert (=> b!1186660 (= e!762428 0)))

(declare-fun b!1186661 () Bool)

(assert (=> b!1186661 (= e!762426 (drop!556 (t!111936 l!6534) (- i!1621 1)))))

(declare-fun b!1186662 () Bool)

(assert (=> b!1186662 (= e!762427 Nil!11906)))

(declare-fun b!1186663 () Bool)

(assert (=> b!1186663 (= e!762429 e!762428)))

(declare-fun c!197213 () Bool)

(assert (=> b!1186663 (= c!197213 (>= i!1621 call!82631))))

(declare-fun b!1186664 () Bool)

(declare-fun size!9385 (List!11930) Int)

(assert (=> b!1186664 (= e!762425 (= (size!9385 lt!408245) e!762429))))

(declare-fun c!197216 () Bool)

(assert (=> b!1186664 (= c!197216 (<= i!1621 0))))

(declare-fun b!1186665 () Bool)

(assert (=> b!1186665 (= e!762426 l!6534)))

(declare-fun bm!82626 () Bool)

(assert (=> bm!82626 (= call!82631 (size!9385 l!6534))))

(assert (= (and d!339492 c!197214) b!1186662))

(assert (= (and d!339492 (not c!197214)) b!1186658))

(assert (= (and b!1186658 c!197215) b!1186665))

(assert (= (and b!1186658 (not c!197215)) b!1186661))

(assert (= (and d!339492 res!536267) b!1186664))

(assert (= (and b!1186664 c!197216) b!1186657))

(assert (= (and b!1186664 (not c!197216)) b!1186663))

(assert (= (and b!1186663 c!197213) b!1186660))

(assert (= (and b!1186663 (not c!197213)) b!1186659))

(assert (= (or b!1186657 b!1186663 b!1186659) bm!82626))

(declare-fun m!1362669 () Bool)

(assert (=> d!339492 m!1362669))

(declare-fun m!1362671 () Bool)

(assert (=> d!339492 m!1362671))

(declare-fun m!1362673 () Bool)

(assert (=> b!1186661 m!1362673))

(declare-fun m!1362675 () Bool)

(assert (=> b!1186664 m!1362675))

(declare-fun m!1362677 () Bool)

(assert (=> bm!82626 m!1362677))

(assert (=> b!1186508 d!339492))

(declare-fun b!1186676 () Bool)

(declare-fun e!762438 () Bool)

(declare-fun e!762436 () Bool)

(assert (=> b!1186676 (= e!762438 e!762436)))

(declare-fun c!197222 () Bool)

(assert (=> b!1186676 (= c!197222 (is-IntegerValue!6445 (value!67395 (h!17307 l!6534))))))

(declare-fun d!339494 () Bool)

(declare-fun c!197221 () Bool)

(assert (=> d!339494 (= c!197221 (is-IntegerValue!6444 (value!67395 (h!17307 l!6534))))))

(assert (=> d!339494 (= (inv!21 (value!67395 (h!17307 l!6534))) e!762438)))

(declare-fun b!1186677 () Bool)

(declare-fun e!762437 () Bool)

(declare-fun inv!15 (TokenValue!2148) Bool)

(assert (=> b!1186677 (= e!762437 (inv!15 (value!67395 (h!17307 l!6534))))))

(declare-fun b!1186678 () Bool)

(declare-fun res!536270 () Bool)

(assert (=> b!1186678 (=> res!536270 e!762437)))

(assert (=> b!1186678 (= res!536270 (not (is-IntegerValue!6446 (value!67395 (h!17307 l!6534)))))))

(assert (=> b!1186678 (= e!762436 e!762437)))

(declare-fun b!1186679 () Bool)

(declare-fun inv!16 (TokenValue!2148) Bool)

(assert (=> b!1186679 (= e!762438 (inv!16 (value!67395 (h!17307 l!6534))))))

(declare-fun b!1186680 () Bool)

(declare-fun inv!17 (TokenValue!2148) Bool)

(assert (=> b!1186680 (= e!762436 (inv!17 (value!67395 (h!17307 l!6534))))))

(assert (= (and d!339494 c!197221) b!1186679))

(assert (= (and d!339494 (not c!197221)) b!1186676))

(assert (= (and b!1186676 c!197222) b!1186680))

(assert (= (and b!1186676 (not c!197222)) b!1186678))

(assert (= (and b!1186678 (not res!536270)) b!1186677))

(declare-fun m!1362679 () Bool)

(assert (=> b!1186677 m!1362679))

(declare-fun m!1362681 () Bool)

(assert (=> b!1186679 m!1362681))

(declare-fun m!1362683 () Bool)

(assert (=> b!1186680 m!1362683))

(assert (=> b!1186514 d!339494))

(declare-fun d!339496 () Bool)

(declare-fun res!536272 () Bool)

(declare-fun e!762440 () Bool)

(assert (=> d!339496 (=> res!536272 e!762440)))

(assert (=> d!339496 (= res!536272 (or (not (is-Cons!11906 l!6534)) (not (is-Cons!11906 (t!111936 l!6534)))))))

(assert (=> d!339496 (= (tokensListTwoByTwoPredicateSeparableList!171 thiss!27592 l!6534 rules!4386) e!762440)))

(declare-fun b!1186681 () Bool)

(declare-fun e!762439 () Bool)

(assert (=> b!1186681 (= e!762440 e!762439)))

(declare-fun res!536271 () Bool)

(assert (=> b!1186681 (=> (not res!536271) (not e!762439))))

(assert (=> b!1186681 (= res!536271 (separableTokensPredicate!162 thiss!27592 (h!17307 l!6534) (h!17307 (t!111936 l!6534)) rules!4386))))

(declare-fun lt!408248 () Unit!18264)

(declare-fun Unit!18272 () Unit!18264)

(assert (=> b!1186681 (= lt!408248 Unit!18272)))

(assert (=> b!1186681 (> (size!9384 (charsOf!1100 (h!17307 (t!111936 l!6534)))) 0)))

(declare-fun lt!408251 () Unit!18264)

(declare-fun Unit!18273 () Unit!18264)

(assert (=> b!1186681 (= lt!408251 Unit!18273)))

(assert (=> b!1186681 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 (t!111936 l!6534)))))

(declare-fun lt!408247 () Unit!18264)

(declare-fun Unit!18274 () Unit!18264)

(assert (=> b!1186681 (= lt!408247 Unit!18274)))

(assert (=> b!1186681 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 l!6534))))

(declare-fun lt!408252 () Unit!18264)

(declare-fun lt!408246 () Unit!18264)

(assert (=> b!1186681 (= lt!408252 lt!408246)))

(assert (=> b!1186681 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 (t!111936 l!6534)))))

(assert (=> b!1186681 (= lt!408246 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!321 thiss!27592 rules!4386 l!6534 (h!17307 (t!111936 l!6534))))))

(declare-fun lt!408250 () Unit!18264)

(declare-fun lt!408249 () Unit!18264)

(assert (=> b!1186681 (= lt!408250 lt!408249)))

(assert (=> b!1186681 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 l!6534))))

(assert (=> b!1186681 (= lt!408249 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!321 thiss!27592 rules!4386 l!6534 (h!17307 l!6534)))))

(declare-fun b!1186682 () Bool)

(assert (=> b!1186682 (= e!762439 (tokensListTwoByTwoPredicateSeparableList!171 thiss!27592 (Cons!11906 (h!17307 (t!111936 l!6534)) (t!111936 (t!111936 l!6534))) rules!4386))))

(assert (= (and d!339496 (not res!536272)) b!1186681))

(assert (= (and b!1186681 res!536271) b!1186682))

(declare-fun m!1362685 () Bool)

(assert (=> b!1186681 m!1362685))

(declare-fun m!1362687 () Bool)

(assert (=> b!1186681 m!1362687))

(declare-fun m!1362689 () Bool)

(assert (=> b!1186681 m!1362689))

(assert (=> b!1186681 m!1362685))

(declare-fun m!1362691 () Bool)

(assert (=> b!1186681 m!1362691))

(declare-fun m!1362693 () Bool)

(assert (=> b!1186681 m!1362693))

(declare-fun m!1362695 () Bool)

(assert (=> b!1186681 m!1362695))

(declare-fun m!1362697 () Bool)

(assert (=> b!1186681 m!1362697))

(declare-fun m!1362699 () Bool)

(assert (=> b!1186682 m!1362699))

(assert (=> b!1186517 d!339496))

(declare-fun bs!287632 () Bool)

(declare-fun d!339498 () Bool)

(assert (= bs!287632 (and d!339498 b!1186508)))

(declare-fun lambda!48919 () Int)

(assert (=> bs!287632 (= (= thiss!27592 Lexer!1775) (= lambda!48919 lambda!48912))))

(declare-fun bs!287633 () Bool)

(assert (= bs!287633 (and d!339498 d!339490)))

(assert (=> bs!287633 (= lambda!48919 lambda!48918)))

(declare-fun b!1186687 () Bool)

(declare-fun e!762445 () Bool)

(assert (=> b!1186687 (= e!762445 true)))

(declare-fun b!1186686 () Bool)

(declare-fun e!762444 () Bool)

(assert (=> b!1186686 (= e!762444 e!762445)))

(declare-fun b!1186685 () Bool)

(declare-fun e!762443 () Bool)

(assert (=> b!1186685 (= e!762443 e!762444)))

(assert (=> d!339498 e!762443))

(assert (= b!1186686 b!1186687))

(assert (= b!1186685 b!1186686))

(assert (= (and d!339498 (is-Cons!11905 rules!4386)) b!1186685))

(assert (=> b!1186687 (< (dynLambda!5311 order!7403 (toValue!3199 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48919))))

(assert (=> b!1186687 (< (dynLambda!5313 order!7407 (toChars!3058 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48919))))

(assert (=> d!339498 true))

(declare-fun lt!408253 () Bool)

(assert (=> d!339498 (= lt!408253 (forall!3153 l!6534 lambda!48919))))

(declare-fun e!762442 () Bool)

(assert (=> d!339498 (= lt!408253 e!762442)))

(declare-fun res!536273 () Bool)

(assert (=> d!339498 (=> res!536273 e!762442)))

(assert (=> d!339498 (= res!536273 (not (is-Cons!11906 l!6534)))))

(assert (=> d!339498 (not (isEmpty!7163 rules!4386))))

(assert (=> d!339498 (= (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 l!6534) lt!408253)))

(declare-fun b!1186683 () Bool)

(declare-fun e!762441 () Bool)

(assert (=> b!1186683 (= e!762442 e!762441)))

(declare-fun res!536274 () Bool)

(assert (=> b!1186683 (=> (not res!536274) (not e!762441))))

(assert (=> b!1186683 (= res!536274 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 l!6534)))))

(declare-fun b!1186684 () Bool)

(assert (=> b!1186684 (= e!762441 (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 (t!111936 l!6534)))))

(assert (= (and d!339498 (not res!536273)) b!1186683))

(assert (= (and b!1186683 res!536274) b!1186684))

(declare-fun m!1362701 () Bool)

(assert (=> d!339498 m!1362701))

(assert (=> d!339498 m!1362585))

(assert (=> b!1186683 m!1362689))

(declare-fun m!1362703 () Bool)

(assert (=> b!1186684 m!1362703))

(assert (=> b!1186512 d!339498))

(declare-fun d!339500 () Bool)

(declare-fun lt!408296 () Bool)

(declare-fun e!762492 () Bool)

(assert (=> d!339500 (= lt!408296 e!762492)))

(declare-fun res!536312 () Bool)

(assert (=> d!339500 (=> (not res!536312) (not e!762492))))

(declare-datatypes ((IArray!7803 0))(
  ( (IArray!7804 (innerList!3959 List!11930)) )
))
(declare-datatypes ((Conc!3899 0))(
  ( (Node!3899 (left!10366 Conc!3899) (right!10696 Conc!3899) (csize!8028 Int) (cheight!4110 Int)) (Leaf!5971 (xs!6604 IArray!7803) (csize!8029 Int)) (Empty!3899) )
))
(declare-datatypes ((BalanceConc!7820 0))(
  ( (BalanceConc!7821 (c!197235 Conc!3899)) )
))
(declare-fun list!4371 (BalanceConc!7820) List!11930)

(declare-datatypes ((tuple2!12112 0))(
  ( (tuple2!12113 (_1!6903 BalanceConc!7820) (_2!6903 BalanceConc!7816)) )
))
(declare-fun lex!738 (LexerInterface!1777 List!11929 BalanceConc!7816) tuple2!12112)

(declare-fun print!675 (LexerInterface!1777 BalanceConc!7820) BalanceConc!7816)

(declare-fun singletonSeq!723 (Token!3826) BalanceConc!7820)

(assert (=> d!339500 (= res!536312 (= (list!4371 (_1!6903 (lex!738 thiss!27592 rules!4386 (print!675 thiss!27592 (singletonSeq!723 (h!17307 lt!408201)))))) (list!4371 (singletonSeq!723 (h!17307 lt!408201)))))))

(declare-fun e!762491 () Bool)

(assert (=> d!339500 (= lt!408296 e!762491)))

(declare-fun res!536310 () Bool)

(assert (=> d!339500 (=> (not res!536310) (not e!762491))))

(declare-fun lt!408295 () tuple2!12112)

(declare-fun size!9386 (BalanceConc!7820) Int)

(assert (=> d!339500 (= res!536310 (= (size!9386 (_1!6903 lt!408295)) 1))))

(assert (=> d!339500 (= lt!408295 (lex!738 thiss!27592 rules!4386 (print!675 thiss!27592 (singletonSeq!723 (h!17307 lt!408201)))))))

(assert (=> d!339500 (not (isEmpty!7163 rules!4386))))

(assert (=> d!339500 (= (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 lt!408201)) lt!408296)))

(declare-fun b!1186747 () Bool)

(declare-fun res!536311 () Bool)

(assert (=> b!1186747 (=> (not res!536311) (not e!762491))))

(declare-fun apply!2594 (BalanceConc!7820 Int) Token!3826)

(assert (=> b!1186747 (= res!536311 (= (apply!2594 (_1!6903 lt!408295) 0) (h!17307 lt!408201)))))

(declare-fun b!1186748 () Bool)

(declare-fun isEmpty!7165 (BalanceConc!7816) Bool)

(assert (=> b!1186748 (= e!762491 (isEmpty!7165 (_2!6903 lt!408295)))))

(declare-fun b!1186749 () Bool)

(assert (=> b!1186749 (= e!762492 (isEmpty!7165 (_2!6903 (lex!738 thiss!27592 rules!4386 (print!675 thiss!27592 (singletonSeq!723 (h!17307 lt!408201)))))))))

(assert (= (and d!339500 res!536310) b!1186747))

(assert (= (and b!1186747 res!536311) b!1186748))

(assert (= (and d!339500 res!536312) b!1186749))

(declare-fun m!1362761 () Bool)

(assert (=> d!339500 m!1362761))

(declare-fun m!1362763 () Bool)

(assert (=> d!339500 m!1362763))

(declare-fun m!1362765 () Bool)

(assert (=> d!339500 m!1362765))

(declare-fun m!1362767 () Bool)

(assert (=> d!339500 m!1362767))

(assert (=> d!339500 m!1362585))

(declare-fun m!1362769 () Bool)

(assert (=> d!339500 m!1362769))

(declare-fun m!1362771 () Bool)

(assert (=> d!339500 m!1362771))

(assert (=> d!339500 m!1362765))

(assert (=> d!339500 m!1362765))

(assert (=> d!339500 m!1362769))

(declare-fun m!1362773 () Bool)

(assert (=> b!1186747 m!1362773))

(declare-fun m!1362775 () Bool)

(assert (=> b!1186748 m!1362775))

(assert (=> b!1186749 m!1362765))

(assert (=> b!1186749 m!1362765))

(assert (=> b!1186749 m!1362769))

(assert (=> b!1186749 m!1362769))

(assert (=> b!1186749 m!1362771))

(declare-fun m!1362777 () Bool)

(assert (=> b!1186749 m!1362777))

(assert (=> b!1186507 d!339500))

(declare-fun d!339516 () Bool)

(declare-fun res!536317 () Bool)

(declare-fun e!762495 () Bool)

(assert (=> d!339516 (=> (not res!536317) (not e!762495))))

(declare-fun isEmpty!7166 (List!11927) Bool)

(assert (=> d!339516 (= res!536317 (not (isEmpty!7166 (originalCharacters!2636 (h!17307 l!6534)))))))

(assert (=> d!339516 (= (inv!15735 (h!17307 l!6534)) e!762495)))

(declare-fun b!1186754 () Bool)

(declare-fun res!536318 () Bool)

(assert (=> b!1186754 (=> (not res!536318) (not e!762495))))

(declare-fun list!4372 (BalanceConc!7816) List!11927)

(declare-fun dynLambda!5318 (Int TokenValue!2148) BalanceConc!7816)

(assert (=> b!1186754 (= res!536318 (= (originalCharacters!2636 (h!17307 l!6534)) (list!4372 (dynLambda!5318 (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))) (value!67395 (h!17307 l!6534))))))))

(declare-fun b!1186755 () Bool)

(declare-fun size!9387 (List!11927) Int)

(assert (=> b!1186755 (= e!762495 (= (size!9382 (h!17307 l!6534)) (size!9387 (originalCharacters!2636 (h!17307 l!6534)))))))

(assert (= (and d!339516 res!536317) b!1186754))

(assert (= (and b!1186754 res!536318) b!1186755))

(declare-fun b_lambda!35627 () Bool)

(assert (=> (not b_lambda!35627) (not b!1186754)))

(declare-fun tb!66349 () Bool)

(declare-fun t!111947 () Bool)

(assert (=> (and b!1186518 (= (toChars!3058 (transformation!2082 (h!17306 rules!4386))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534))))) t!111947) tb!66349))

(declare-fun b!1186760 () Bool)

(declare-fun e!762498 () Bool)

(declare-fun tp!338405 () Bool)

(declare-fun inv!15739 (Conc!3897) Bool)

(assert (=> b!1186760 (= e!762498 (and (inv!15739 (c!197195 (dynLambda!5318 (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))) (value!67395 (h!17307 l!6534))))) tp!338405))))

(declare-fun result!79694 () Bool)

(declare-fun inv!15740 (BalanceConc!7816) Bool)

(assert (=> tb!66349 (= result!79694 (and (inv!15740 (dynLambda!5318 (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))) (value!67395 (h!17307 l!6534)))) e!762498))))

(assert (= tb!66349 b!1186760))

(declare-fun m!1362779 () Bool)

(assert (=> b!1186760 m!1362779))

(declare-fun m!1362781 () Bool)

(assert (=> tb!66349 m!1362781))

(assert (=> b!1186754 t!111947))

(declare-fun b_and!81685 () Bool)

(assert (= b_and!81671 (and (=> t!111947 result!79694) b_and!81685)))

(declare-fun t!111949 () Bool)

(declare-fun tb!66351 () Bool)

(assert (=> (and b!1186504 (= (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534))))) t!111949) tb!66351))

(declare-fun result!79698 () Bool)

(assert (= result!79698 result!79694))

(assert (=> b!1186754 t!111949))

(declare-fun b_and!81687 () Bool)

(assert (= b_and!81675 (and (=> t!111949 result!79698) b_and!81687)))

(declare-fun m!1362783 () Bool)

(assert (=> d!339516 m!1362783))

(declare-fun m!1362785 () Bool)

(assert (=> b!1186754 m!1362785))

(assert (=> b!1186754 m!1362785))

(declare-fun m!1362787 () Bool)

(assert (=> b!1186754 m!1362787))

(declare-fun m!1362789 () Bool)

(assert (=> b!1186755 m!1362789))

(assert (=> b!1186505 d!339516))

(declare-fun d!339518 () Bool)

(declare-fun res!536321 () Bool)

(declare-fun e!762501 () Bool)

(assert (=> d!339518 (=> (not res!536321) (not e!762501))))

(declare-fun rulesValid!739 (LexerInterface!1777 List!11929) Bool)

(assert (=> d!339518 (= res!536321 (rulesValid!739 thiss!27592 rules!4386))))

(assert (=> d!339518 (= (rulesInvariant!1651 thiss!27592 rules!4386) e!762501)))

(declare-fun b!1186763 () Bool)

(declare-datatypes ((List!11935 0))(
  ( (Nil!11911) (Cons!11911 (h!17312 String!14410) (t!111956 List!11935)) )
))
(declare-fun noDuplicateTag!739 (LexerInterface!1777 List!11929 List!11935) Bool)

(assert (=> b!1186763 (= e!762501 (noDuplicateTag!739 thiss!27592 rules!4386 Nil!11911))))

(assert (= (and d!339518 res!536321) b!1186763))

(declare-fun m!1362791 () Bool)

(assert (=> d!339518 m!1362791))

(declare-fun m!1362793 () Bool)

(assert (=> b!1186763 m!1362793))

(assert (=> b!1186516 d!339518))

(declare-fun d!339520 () Bool)

(assert (=> d!339520 (= (isEmpty!7163 rules!4386) (is-Nil!11905 rules!4386))))

(assert (=> b!1186511 d!339520))

(declare-fun d!339522 () Bool)

(assert (=> d!339522 (= (inv!15732 (tag!2344 (h!17306 rules!4386))) (= (mod (str.len (value!67394 (tag!2344 (h!17306 rules!4386)))) 2) 0))))

(assert (=> b!1186506 d!339522))

(declare-fun d!339524 () Bool)

(declare-fun res!536322 () Bool)

(declare-fun e!762502 () Bool)

(assert (=> d!339524 (=> (not res!536322) (not e!762502))))

(assert (=> d!339524 (= res!536322 (semiInverseModEq!751 (toChars!3058 (transformation!2082 (h!17306 rules!4386))) (toValue!3199 (transformation!2082 (h!17306 rules!4386)))))))

(assert (=> d!339524 (= (inv!15736 (transformation!2082 (h!17306 rules!4386))) e!762502)))

(declare-fun b!1186764 () Bool)

(assert (=> b!1186764 (= e!762502 (equivClasses!718 (toChars!3058 (transformation!2082 (h!17306 rules!4386))) (toValue!3199 (transformation!2082 (h!17306 rules!4386)))))))

(assert (= (and d!339524 res!536322) b!1186764))

(declare-fun m!1362795 () Bool)

(assert (=> d!339524 m!1362795))

(declare-fun m!1362797 () Bool)

(assert (=> b!1186764 m!1362797))

(assert (=> b!1186506 d!339524))

(declare-fun bs!287636 () Bool)

(declare-fun d!339526 () Bool)

(assert (= bs!287636 (and d!339526 b!1186508)))

(declare-fun lambda!48920 () Int)

(assert (=> bs!287636 (= (= thiss!27592 Lexer!1775) (= lambda!48920 lambda!48912))))

(declare-fun bs!287637 () Bool)

(assert (= bs!287637 (and d!339526 d!339490)))

(assert (=> bs!287637 (= lambda!48920 lambda!48918)))

(declare-fun bs!287638 () Bool)

(assert (= bs!287638 (and d!339526 d!339498)))

(assert (=> bs!287638 (= lambda!48920 lambda!48919)))

(declare-fun b!1186769 () Bool)

(declare-fun e!762507 () Bool)

(assert (=> b!1186769 (= e!762507 true)))

(declare-fun b!1186768 () Bool)

(declare-fun e!762506 () Bool)

(assert (=> b!1186768 (= e!762506 e!762507)))

(declare-fun b!1186767 () Bool)

(declare-fun e!762505 () Bool)

(assert (=> b!1186767 (= e!762505 e!762506)))

(assert (=> d!339526 e!762505))

(assert (= b!1186768 b!1186769))

(assert (= b!1186767 b!1186768))

(assert (= (and d!339526 (is-Cons!11905 rules!4386)) b!1186767))

(assert (=> b!1186769 (< (dynLambda!5311 order!7403 (toValue!3199 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48920))))

(assert (=> b!1186769 (< (dynLambda!5313 order!7407 (toChars!3058 (transformation!2082 (h!17306 rules!4386)))) (dynLambda!5312 order!7405 lambda!48920))))

(assert (=> d!339526 true))

(declare-fun lt!408297 () Bool)

(assert (=> d!339526 (= lt!408297 (forall!3153 (t!111936 lt!408201) lambda!48920))))

(declare-fun e!762504 () Bool)

(assert (=> d!339526 (= lt!408297 e!762504)))

(declare-fun res!536323 () Bool)

(assert (=> d!339526 (=> res!536323 e!762504)))

(assert (=> d!339526 (= res!536323 (not (is-Cons!11906 (t!111936 lt!408201))))))

(assert (=> d!339526 (not (isEmpty!7163 rules!4386))))

(assert (=> d!339526 (= (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 (t!111936 lt!408201)) lt!408297)))

(declare-fun b!1186765 () Bool)

(declare-fun e!762503 () Bool)

(assert (=> b!1186765 (= e!762504 e!762503)))

(declare-fun res!536324 () Bool)

(assert (=> b!1186765 (=> (not res!536324) (not e!762503))))

(assert (=> b!1186765 (= res!536324 (rulesProduceIndividualToken!804 thiss!27592 rules!4386 (h!17307 (t!111936 lt!408201))))))

(declare-fun b!1186766 () Bool)

(assert (=> b!1186766 (= e!762503 (rulesProduceEachTokenIndividuallyList!643 thiss!27592 rules!4386 (t!111936 (t!111936 lt!408201))))))

(assert (= (and d!339526 (not res!536323)) b!1186765))

(assert (= (and b!1186765 res!536324) b!1186766))

(declare-fun m!1362799 () Bool)

(assert (=> d!339526 m!1362799))

(assert (=> d!339526 m!1362585))

(assert (=> b!1186765 m!1362645))

(declare-fun m!1362801 () Bool)

(assert (=> b!1186766 m!1362801))

(assert (=> b!1186515 d!339526))

(declare-fun b!1186780 () Bool)

(declare-fun e!762510 () Bool)

(declare-fun tp_is_empty!5833 () Bool)

(assert (=> b!1186780 (= e!762510 tp_is_empty!5833)))

(declare-fun b!1186783 () Bool)

(declare-fun tp!338420 () Bool)

(declare-fun tp!338418 () Bool)

(assert (=> b!1186783 (= e!762510 (and tp!338420 tp!338418))))

(declare-fun b!1186781 () Bool)

(declare-fun tp!338416 () Bool)

(declare-fun tp!338417 () Bool)

(assert (=> b!1186781 (= e!762510 (and tp!338416 tp!338417))))

(declare-fun b!1186782 () Bool)

(declare-fun tp!338419 () Bool)

(assert (=> b!1186782 (= e!762510 tp!338419)))

(assert (=> b!1186513 (= tp!338375 e!762510)))

(assert (= (and b!1186513 (is-ElementMatch!3352 (regex!2082 (rule!3503 (h!17307 l!6534))))) b!1186780))

(assert (= (and b!1186513 (is-Concat!5501 (regex!2082 (rule!3503 (h!17307 l!6534))))) b!1186781))

(assert (= (and b!1186513 (is-Star!3352 (regex!2082 (rule!3503 (h!17307 l!6534))))) b!1186782))

(assert (= (and b!1186513 (is-Union!3352 (regex!2082 (rule!3503 (h!17307 l!6534))))) b!1186783))

(declare-fun b!1186788 () Bool)

(declare-fun e!762513 () Bool)

(declare-fun tp!338423 () Bool)

(assert (=> b!1186788 (= e!762513 (and tp_is_empty!5833 tp!338423))))

(assert (=> b!1186514 (= tp!338368 e!762513)))

(assert (= (and b!1186514 (is-Cons!11903 (originalCharacters!2636 (h!17307 l!6534)))) b!1186788))

(declare-fun b!1186791 () Bool)

(declare-fun e!762516 () Bool)

(assert (=> b!1186791 (= e!762516 true)))

(declare-fun b!1186790 () Bool)

(declare-fun e!762515 () Bool)

(assert (=> b!1186790 (= e!762515 e!762516)))

(declare-fun b!1186789 () Bool)

(declare-fun e!762514 () Bool)

(assert (=> b!1186789 (= e!762514 e!762515)))

(assert (=> b!1186527 e!762514))

(assert (= b!1186790 b!1186791))

(assert (= b!1186789 b!1186790))

(assert (= (and b!1186527 (is-Cons!11905 (t!111935 rules!4386))) b!1186789))

(assert (=> b!1186791 (< (dynLambda!5311 order!7403 (toValue!3199 (transformation!2082 (h!17306 (t!111935 rules!4386))))) (dynLambda!5312 order!7405 lambda!48912))))

(assert (=> b!1186791 (< (dynLambda!5313 order!7407 (toChars!3058 (transformation!2082 (h!17306 (t!111935 rules!4386))))) (dynLambda!5312 order!7405 lambda!48912))))

(declare-fun b!1186805 () Bool)

(declare-fun b_free!28549 () Bool)

(declare-fun b_next!29253 () Bool)

(assert (=> b!1186805 (= b_free!28549 (not b_next!29253))))

(declare-fun tp!338437 () Bool)

(declare-fun b_and!81689 () Bool)

(assert (=> b!1186805 (= tp!338437 b_and!81689)))

(declare-fun b_free!28551 () Bool)

(declare-fun b_next!29255 () Bool)

(assert (=> b!1186805 (= b_free!28551 (not b_next!29255))))

(declare-fun t!111951 () Bool)

(declare-fun tb!66353 () Bool)

(assert (=> (and b!1186805 (= (toChars!3058 (transformation!2082 (rule!3503 (h!17307 (t!111936 l!6534))))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534))))) t!111951) tb!66353))

(declare-fun result!79706 () Bool)

(assert (= result!79706 result!79694))

(assert (=> b!1186754 t!111951))

(declare-fun tp!338434 () Bool)

(declare-fun b_and!81691 () Bool)

(assert (=> b!1186805 (= tp!338434 (and (=> t!111951 result!79706) b_and!81691))))

(declare-fun e!762533 () Bool)

(declare-fun e!762529 () Bool)

(declare-fun b!1186804 () Bool)

(declare-fun tp!338435 () Bool)

(assert (=> b!1186804 (= e!762533 (and tp!338435 (inv!15732 (tag!2344 (rule!3503 (h!17307 (t!111936 l!6534))))) (inv!15736 (transformation!2082 (rule!3503 (h!17307 (t!111936 l!6534))))) e!762529))))

(assert (=> b!1186805 (= e!762529 (and tp!338437 tp!338434))))

(declare-fun e!762534 () Bool)

(declare-fun tp!338436 () Bool)

(declare-fun b!1186803 () Bool)

(assert (=> b!1186803 (= e!762534 (and (inv!21 (value!67395 (h!17307 (t!111936 l!6534)))) e!762533 tp!338436))))

(declare-fun e!762532 () Bool)

(assert (=> b!1186505 (= tp!338372 e!762532)))

(declare-fun tp!338438 () Bool)

(declare-fun b!1186802 () Bool)

(assert (=> b!1186802 (= e!762532 (and (inv!15735 (h!17307 (t!111936 l!6534))) e!762534 tp!338438))))

(assert (= b!1186804 b!1186805))

(assert (= b!1186803 b!1186804))

(assert (= b!1186802 b!1186803))

(assert (= (and b!1186505 (is-Cons!11906 (t!111936 l!6534))) b!1186802))

(declare-fun m!1362803 () Bool)

(assert (=> b!1186804 m!1362803))

(declare-fun m!1362805 () Bool)

(assert (=> b!1186804 m!1362805))

(declare-fun m!1362807 () Bool)

(assert (=> b!1186803 m!1362807))

(declare-fun m!1362809 () Bool)

(assert (=> b!1186802 m!1362809))

(declare-fun b!1186806 () Bool)

(declare-fun e!762535 () Bool)

(assert (=> b!1186806 (= e!762535 tp_is_empty!5833)))

(declare-fun b!1186809 () Bool)

(declare-fun tp!338443 () Bool)

(declare-fun tp!338441 () Bool)

(assert (=> b!1186809 (= e!762535 (and tp!338443 tp!338441))))

(declare-fun b!1186807 () Bool)

(declare-fun tp!338439 () Bool)

(declare-fun tp!338440 () Bool)

(assert (=> b!1186807 (= e!762535 (and tp!338439 tp!338440))))

(declare-fun b!1186808 () Bool)

(declare-fun tp!338442 () Bool)

(assert (=> b!1186808 (= e!762535 tp!338442)))

(assert (=> b!1186506 (= tp!338367 e!762535)))

(assert (= (and b!1186506 (is-ElementMatch!3352 (regex!2082 (h!17306 rules!4386)))) b!1186806))

(assert (= (and b!1186506 (is-Concat!5501 (regex!2082 (h!17306 rules!4386)))) b!1186807))

(assert (= (and b!1186506 (is-Star!3352 (regex!2082 (h!17306 rules!4386)))) b!1186808))

(assert (= (and b!1186506 (is-Union!3352 (regex!2082 (h!17306 rules!4386)))) b!1186809))

(declare-fun b!1186820 () Bool)

(declare-fun b_free!28553 () Bool)

(declare-fun b_next!29257 () Bool)

(assert (=> b!1186820 (= b_free!28553 (not b_next!29257))))

(declare-fun tp!338454 () Bool)

(declare-fun b_and!81693 () Bool)

(assert (=> b!1186820 (= tp!338454 b_and!81693)))

(declare-fun b_free!28555 () Bool)

(declare-fun b_next!29259 () Bool)

(assert (=> b!1186820 (= b_free!28555 (not b_next!29259))))

(declare-fun t!111953 () Bool)

(declare-fun tb!66355 () Bool)

(assert (=> (and b!1186820 (= (toChars!3058 (transformation!2082 (h!17306 (t!111935 rules!4386)))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534))))) t!111953) tb!66355))

(declare-fun result!79710 () Bool)

(assert (= result!79710 result!79694))

(assert (=> b!1186754 t!111953))

(declare-fun b_and!81695 () Bool)

(declare-fun tp!338453 () Bool)

(assert (=> b!1186820 (= tp!338453 (and (=> t!111953 result!79710) b_and!81695))))

(declare-fun e!762544 () Bool)

(assert (=> b!1186820 (= e!762544 (and tp!338454 tp!338453))))

(declare-fun e!762546 () Bool)

(declare-fun b!1186819 () Bool)

(declare-fun tp!338455 () Bool)

(assert (=> b!1186819 (= e!762546 (and tp!338455 (inv!15732 (tag!2344 (h!17306 (t!111935 rules!4386)))) (inv!15736 (transformation!2082 (h!17306 (t!111935 rules!4386)))) e!762544))))

(declare-fun b!1186818 () Bool)

(declare-fun e!762545 () Bool)

(declare-fun tp!338452 () Bool)

(assert (=> b!1186818 (= e!762545 (and e!762546 tp!338452))))

(assert (=> b!1186510 (= tp!338373 e!762545)))

(assert (= b!1186819 b!1186820))

(assert (= b!1186818 b!1186819))

(assert (= (and b!1186510 (is-Cons!11905 (t!111935 rules!4386))) b!1186818))

(declare-fun m!1362811 () Bool)

(assert (=> b!1186819 m!1362811))

(declare-fun m!1362813 () Bool)

(assert (=> b!1186819 m!1362813))

(declare-fun b_lambda!35629 () Bool)

(assert (= b_lambda!35623 (or b!1186508 b_lambda!35629)))

(declare-fun bs!287639 () Bool)

(declare-fun d!339528 () Bool)

(assert (= bs!287639 (and d!339528 b!1186508)))

(assert (=> bs!287639 (= (dynLambda!5317 lambda!48912 (h!17307 lt!408201)) (rulesProduceIndividualToken!804 Lexer!1775 rules!4386 (h!17307 lt!408201)))))

(declare-fun m!1362815 () Bool)

(assert (=> bs!287639 m!1362815))

(assert (=> b!1186614 d!339528))

(declare-fun b_lambda!35631 () Bool)

(assert (= b_lambda!35627 (or (and b!1186518 b_free!28535 (= (toChars!3058 (transformation!2082 (h!17306 rules!4386))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))))) (and b!1186504 b_free!28539) (and b!1186805 b_free!28551 (= (toChars!3058 (transformation!2082 (rule!3503 (h!17307 (t!111936 l!6534))))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))))) (and b!1186820 b_free!28555 (= (toChars!3058 (transformation!2082 (h!17306 (t!111935 rules!4386)))) (toChars!3058 (transformation!2082 (rule!3503 (h!17307 l!6534)))))) b_lambda!35631)))

(push 1)

(assert (not b_next!29257))

(assert (not b!1186760))

(assert (not b_lambda!35629))

(assert (not d!339526))

(assert b_and!81673)

(assert (not b!1186627))

(assert (not b!1186626))

(assert (not b!1186685))

(assert (not b!1186679))

(assert (not b!1186754))

(assert (not b!1186588))

(assert (not b_next!29253))

(assert (not d!339484))

(assert (not b!1186802))

(assert tp_is_empty!5833)

(assert b_and!81685)

(assert (not b!1186767))

(assert b_and!81669)

(assert (not b_next!29243))

(assert (not b!1186763))

(assert (not b!1186633))

(assert (not b_next!29255))

(assert (not b!1186682))

(assert (not b_next!29237))

(assert b_and!81693)

(assert (not d!339516))

(assert (not b_next!29259))

(assert (not b_next!29239))

(assert (not b!1186783))

(assert (not b!1186632))

(assert (not b!1186807))

(assert (not b!1186749))

(assert b_and!81689)

(assert (not b!1186681))

(assert (not b!1186664))

(assert (not b!1186680))

(assert b_and!81687)

(assert (not b!1186788))

(assert (not b!1186661))

(assert (not d!339498))

(assert (not b!1186765))

(assert (not b!1186747))

(assert (not d!339490))

(assert (not b!1186684))

(assert (not b!1186782))

(assert (not tb!66349))

(assert (not b!1186683))

(assert (not b!1186748))

(assert (not b!1186818))

(assert (not b!1186804))

(assert b_and!81695)

(assert (not b!1186781))

(assert (not b_next!29241))

(assert (not bs!287639))

(assert (not b!1186803))

(assert (not d!339518))

(assert (not d!339500))

(assert (not b_lambda!35631))

(assert (not b!1186766))

(assert (not b!1186819))

(assert (not b!1186677))

(assert (not d!339524))

(assert (not b!1186615))

(assert (not b!1186755))

(assert (not b!1186634))

(assert (not bm!82626))

(assert (not b!1186764))

(assert (not b!1186808))

(assert (not d!339476))

(assert (not d!339474))

(assert (not b!1186608))

(assert (not b!1186789))

(assert b_and!81691)

(assert (not b!1186809))

(assert (not b!1186609))

(assert (not d!339492))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81685)

(assert (not b_next!29257))

(assert b_and!81689)

(assert b_and!81673)

(assert b_and!81687)

(assert b_and!81695)

(assert (not b_next!29241))

(assert b_and!81691)

(assert (not b_next!29253))

(assert b_and!81669)

(assert (not b_next!29243))

(assert b_and!81693)

(assert (not b_next!29255))

(assert (not b_next!29237))

(assert (not b_next!29259))

(assert (not b_next!29239))

(check-sat)

(pop 1)

