; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48860 () Bool)

(assert start!48860)

(declare-fun b!531512 () Bool)

(declare-fun b_free!14345 () Bool)

(declare-fun b_next!14361 () Bool)

(assert (=> b!531512 (= b_free!14345 (not b_next!14361))))

(declare-fun tp!169538 () Bool)

(declare-fun b_and!51923 () Bool)

(assert (=> b!531512 (= tp!169538 b_and!51923)))

(declare-fun b_free!14347 () Bool)

(declare-fun b_next!14363 () Bool)

(assert (=> b!531512 (= b_free!14347 (not b_next!14363))))

(declare-fun tp!169530 () Bool)

(declare-fun b_and!51925 () Bool)

(assert (=> b!531512 (= tp!169530 b_and!51925)))

(declare-fun b!531513 () Bool)

(declare-fun b_free!14349 () Bool)

(declare-fun b_next!14365 () Bool)

(assert (=> b!531513 (= b_free!14349 (not b_next!14365))))

(declare-fun tp!169534 () Bool)

(declare-fun b_and!51927 () Bool)

(assert (=> b!531513 (= tp!169534 b_and!51927)))

(declare-fun b_free!14351 () Bool)

(declare-fun b_next!14367 () Bool)

(assert (=> b!531513 (= b_free!14351 (not b_next!14367))))

(declare-fun tp!169537 () Bool)

(declare-fun b_and!51929 () Bool)

(assert (=> b!531513 (= tp!169537 b_and!51929)))

(declare-fun b!531505 () Bool)

(declare-fun res!224483 () Bool)

(declare-fun e!320023 () Bool)

(assert (=> b!531505 (=> (not res!224483) (not e!320023))))

(declare-datatypes ((C!3432 0))(
  ( (C!3433 (val!1942 Int)) )
))
(declare-datatypes ((Regex!1255 0))(
  ( (ElementMatch!1255 (c!101444 C!3432)) (Concat!2200 (regOne!3022 Regex!1255) (regTwo!3022 Regex!1255)) (EmptyExpr!1255) (Star!1255 (reg!1584 Regex!1255)) (EmptyLang!1255) (Union!1255 (regOne!3023 Regex!1255) (regTwo!3023 Regex!1255)) )
))
(declare-datatypes ((String!6468 0))(
  ( (String!6469 (value!31089 String)) )
))
(declare-datatypes ((List!5089 0))(
  ( (Nil!5079) (Cons!5079 (h!10480 (_ BitVec 16)) (t!73776 List!5089)) )
))
(declare-datatypes ((TokenValue!945 0))(
  ( (FloatLiteralValue!1890 (text!7060 List!5089)) (TokenValueExt!944 (__x!3788 Int)) (Broken!4725 (value!31090 List!5089)) (Object!954) (End!945) (Def!945) (Underscore!945) (Match!945) (Else!945) (Error!945) (Case!945) (If!945) (Extends!945) (Abstract!945) (Class!945) (Val!945) (DelimiterValue!1890 (del!1005 List!5089)) (KeywordValue!951 (value!31091 List!5089)) (CommentValue!1890 (value!31092 List!5089)) (WhitespaceValue!1890 (value!31093 List!5089)) (IndentationValue!945 (value!31094 List!5089)) (String!6470) (Int32!945) (Broken!4726 (value!31095 List!5089)) (Boolean!946) (Unit!8862) (OperatorValue!948 (op!1005 List!5089)) (IdentifierValue!1890 (value!31096 List!5089)) (IdentifierValue!1891 (value!31097 List!5089)) (WhitespaceValue!1891 (value!31098 List!5089)) (True!1890) (False!1890) (Broken!4727 (value!31099 List!5089)) (Broken!4728 (value!31100 List!5089)) (True!1891) (RightBrace!945) (RightBracket!945) (Colon!945) (Null!945) (Comma!945) (LeftBracket!945) (False!1891) (LeftBrace!945) (ImaginaryLiteralValue!945 (text!7061 List!5089)) (StringLiteralValue!2835 (value!31101 List!5089)) (EOFValue!945 (value!31102 List!5089)) (IdentValue!945 (value!31103 List!5089)) (DelimiterValue!1891 (value!31104 List!5089)) (DedentValue!945 (value!31105 List!5089)) (NewLineValue!945 (value!31106 List!5089)) (IntegerValue!2835 (value!31107 (_ BitVec 32)) (text!7062 List!5089)) (IntegerValue!2836 (value!31108 Int) (text!7063 List!5089)) (Times!945) (Or!945) (Equal!945) (Minus!945) (Broken!4729 (value!31109 List!5089)) (And!945) (Div!945) (LessEqual!945) (Mod!945) (Concat!2201) (Not!945) (Plus!945) (SpaceValue!945 (value!31110 List!5089)) (IntegerValue!2837 (value!31111 Int) (text!7064 List!5089)) (StringLiteralValue!2836 (text!7065 List!5089)) (FloatLiteralValue!1891 (text!7066 List!5089)) (BytesLiteralValue!945 (value!31112 List!5089)) (CommentValue!1891 (value!31113 List!5089)) (StringLiteralValue!2837 (value!31114 List!5089)) (ErrorTokenValue!945 (msg!1006 List!5089)) )
))
(declare-datatypes ((List!5090 0))(
  ( (Nil!5080) (Cons!5080 (h!10481 C!3432) (t!73777 List!5090)) )
))
(declare-datatypes ((IArray!3277 0))(
  ( (IArray!3278 (innerList!1696 List!5090)) )
))
(declare-datatypes ((Conc!1638 0))(
  ( (Node!1638 (left!4291 Conc!1638) (right!4621 Conc!1638) (csize!3506 Int) (cheight!1849 Int)) (Leaf!2606 (xs!4275 IArray!3277) (csize!3507 Int)) (Empty!1638) )
))
(declare-datatypes ((BalanceConc!3284 0))(
  ( (BalanceConc!3285 (c!101445 Conc!1638)) )
))
(declare-datatypes ((TokenValueInjection!1658 0))(
  ( (TokenValueInjection!1659 (toValue!1764 Int) (toChars!1623 Int)) )
))
(declare-datatypes ((Rule!1642 0))(
  ( (Rule!1643 (regex!921 Regex!1255) (tag!1183 String!6468) (isSeparator!921 Bool) (transformation!921 TokenValueInjection!1658)) )
))
(declare-datatypes ((List!5091 0))(
  ( (Nil!5081) (Cons!5081 (h!10482 Rule!1642) (t!73778 List!5091)) )
))
(declare-fun rules!3103 () List!5091)

(declare-fun isEmpty!3676 (List!5091) Bool)

(assert (=> b!531505 (= res!224483 (not (isEmpty!3676 rules!3103)))))

(declare-fun b!531506 () Bool)

(declare-fun e!320010 () Bool)

(declare-fun tp_is_empty!2865 () Bool)

(declare-fun tp!169536 () Bool)

(assert (=> b!531506 (= e!320010 (and tp_is_empty!2865 tp!169536))))

(declare-fun e!320014 () Bool)

(declare-fun e!320022 () Bool)

(declare-fun b!531508 () Bool)

(declare-fun tp!169532 () Bool)

(declare-fun inv!6370 (String!6468) Bool)

(declare-fun inv!6373 (TokenValueInjection!1658) Bool)

(assert (=> b!531508 (= e!320014 (and tp!169532 (inv!6370 (tag!1183 (h!10482 rules!3103))) (inv!6373 (transformation!921 (h!10482 rules!3103))) e!320022))))

(declare-fun e!320013 () Bool)

(declare-fun tp!169529 () Bool)

(declare-fun b!531509 () Bool)

(declare-datatypes ((Token!1578 0))(
  ( (Token!1579 (value!31115 TokenValue!945) (rule!1621 Rule!1642) (size!4111 Int) (originalCharacters!960 List!5090)) )
))
(declare-fun token!491 () Token!1578)

(declare-fun e!320012 () Bool)

(assert (=> b!531509 (= e!320012 (and tp!169529 (inv!6370 (tag!1183 (rule!1621 token!491))) (inv!6373 (transformation!921 (rule!1621 token!491))) e!320013))))

(declare-fun b!531510 () Bool)

(declare-fun res!224482 () Bool)

(assert (=> b!531510 (=> (not res!224482) (not e!320023))))

(declare-datatypes ((LexerInterface!807 0))(
  ( (LexerInterfaceExt!804 (__x!3789 Int)) (Lexer!805) )
))
(declare-fun thiss!22590 () LexerInterface!807)

(declare-fun rulesInvariant!770 (LexerInterface!807 List!5091) Bool)

(assert (=> b!531510 (= res!224482 (rulesInvariant!770 thiss!22590 rules!3103))))

(declare-fun b!531511 () Bool)

(declare-fun res!224488 () Bool)

(assert (=> b!531511 (=> (not res!224488) (not e!320023))))

(declare-fun input!2705 () List!5090)

(declare-fun isEmpty!3677 (List!5090) Bool)

(assert (=> b!531511 (= res!224488 (not (isEmpty!3677 input!2705)))))

(assert (=> b!531512 (= e!320013 (and tp!169538 tp!169530))))

(assert (=> b!531513 (= e!320022 (and tp!169534 tp!169537))))

(declare-fun b!531514 () Bool)

(declare-fun e!320015 () Bool)

(declare-fun tp!169531 () Bool)

(assert (=> b!531514 (= e!320015 (and tp_is_empty!2865 tp!169531))))

(declare-fun b!531515 () Bool)

(declare-fun e!320024 () Bool)

(declare-fun e!320016 () Bool)

(assert (=> b!531515 (= e!320024 e!320016)))

(declare-fun res!224481 () Bool)

(assert (=> b!531515 (=> (not res!224481) (not e!320016))))

(declare-datatypes ((tuple2!6196 0))(
  ( (tuple2!6197 (_1!3362 Token!1578) (_2!3362 List!5090)) )
))
(declare-fun lt!218758 () tuple2!6196)

(declare-fun suffix!1342 () List!5090)

(assert (=> b!531515 (= res!224481 (and (= (_1!3362 lt!218758) token!491) (= (_2!3362 lt!218758) suffix!1342)))))

(declare-datatypes ((Option!1271 0))(
  ( (None!1270) (Some!1270 (v!16075 tuple2!6196)) )
))
(declare-fun lt!218759 () Option!1271)

(declare-fun get!1896 (Option!1271) tuple2!6196)

(assert (=> b!531515 (= lt!218758 (get!1896 lt!218759))))

(declare-fun b!531507 () Bool)

(declare-fun res!224487 () Bool)

(assert (=> b!531507 (=> (not res!224487) (not e!320016))))

(get-info :version)

(declare-fun maxPrefix!505 (LexerInterface!807 List!5091 List!5090) Option!1271)

(assert (=> b!531507 (= res!224487 ((_ is Some!1270) (maxPrefix!505 thiss!22590 rules!3103 input!2705)))))

(declare-fun res!224484 () Bool)

(assert (=> start!48860 (=> (not res!224484) (not e!320023))))

(assert (=> start!48860 (= res!224484 ((_ is Lexer!805) thiss!22590))))

(assert (=> start!48860 e!320023))

(assert (=> start!48860 e!320015))

(declare-fun e!320017 () Bool)

(assert (=> start!48860 e!320017))

(declare-fun e!320021 () Bool)

(declare-fun inv!6374 (Token!1578) Bool)

(assert (=> start!48860 (and (inv!6374 token!491) e!320021)))

(assert (=> start!48860 true))

(assert (=> start!48860 e!320010))

(declare-fun b!531516 () Bool)

(declare-fun tp!169535 () Bool)

(declare-fun inv!21 (TokenValue!945) Bool)

(assert (=> b!531516 (= e!320021 (and (inv!21 (value!31115 token!491)) e!320012 tp!169535))))

(declare-fun b!531517 () Bool)

(assert (=> b!531517 (= e!320016 false)))

(declare-fun lt!218760 () Bool)

(declare-fun rulesValidInductive!318 (LexerInterface!807 List!5091) Bool)

(assert (=> b!531517 (= lt!218760 (rulesValidInductive!318 thiss!22590 rules!3103))))

(declare-datatypes ((Unit!8863 0))(
  ( (Unit!8864) )
))
(declare-fun lt!218761 () Unit!8863)

(declare-fun lt!218762 () List!5090)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!6 (List!5090 List!5090 List!5090 List!5090) Unit!8863)

(assert (=> b!531517 (= lt!218761 (lemmaConcatSameAndSameSizesThenSameLists!6 lt!218762 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!531518 () Bool)

(declare-fun e!320011 () Bool)

(assert (=> b!531518 (= e!320011 e!320024)))

(declare-fun res!224485 () Bool)

(assert (=> b!531518 (=> (not res!224485) (not e!320024))))

(declare-fun isDefined!1083 (Option!1271) Bool)

(assert (=> b!531518 (= res!224485 (isDefined!1083 lt!218759))))

(declare-fun lt!218763 () List!5090)

(assert (=> b!531518 (= lt!218759 (maxPrefix!505 thiss!22590 rules!3103 lt!218763))))

(declare-fun ++!1409 (List!5090 List!5090) List!5090)

(assert (=> b!531518 (= lt!218763 (++!1409 input!2705 suffix!1342))))

(declare-fun b!531519 () Bool)

(declare-fun tp!169533 () Bool)

(assert (=> b!531519 (= e!320017 (and e!320014 tp!169533))))

(declare-fun b!531520 () Bool)

(declare-fun res!224489 () Bool)

(assert (=> b!531520 (=> (not res!224489) (not e!320016))))

(assert (=> b!531520 (= res!224489 (= (++!1409 lt!218762 suffix!1342) lt!218763))))

(declare-fun b!531521 () Bool)

(assert (=> b!531521 (= e!320023 e!320011)))

(declare-fun res!224486 () Bool)

(assert (=> b!531521 (=> (not res!224486) (not e!320011))))

(assert (=> b!531521 (= res!224486 (= lt!218762 input!2705))))

(declare-fun list!2113 (BalanceConc!3284) List!5090)

(declare-fun charsOf!550 (Token!1578) BalanceConc!3284)

(assert (=> b!531521 (= lt!218762 (list!2113 (charsOf!550 token!491)))))

(assert (= (and start!48860 res!224484) b!531505))

(assert (= (and b!531505 res!224483) b!531510))

(assert (= (and b!531510 res!224482) b!531511))

(assert (= (and b!531511 res!224488) b!531521))

(assert (= (and b!531521 res!224486) b!531518))

(assert (= (and b!531518 res!224485) b!531515))

(assert (= (and b!531515 res!224481) b!531507))

(assert (= (and b!531507 res!224487) b!531520))

(assert (= (and b!531520 res!224489) b!531517))

(assert (= (and start!48860 ((_ is Cons!5080) suffix!1342)) b!531514))

(assert (= b!531508 b!531513))

(assert (= b!531519 b!531508))

(assert (= (and start!48860 ((_ is Cons!5081) rules!3103)) b!531519))

(assert (= b!531509 b!531512))

(assert (= b!531516 b!531509))

(assert (= start!48860 b!531516))

(assert (= (and start!48860 ((_ is Cons!5080) input!2705)) b!531506))

(declare-fun m!776565 () Bool)

(assert (=> b!531509 m!776565))

(declare-fun m!776567 () Bool)

(assert (=> b!531509 m!776567))

(declare-fun m!776569 () Bool)

(assert (=> b!531517 m!776569))

(declare-fun m!776571 () Bool)

(assert (=> b!531517 m!776571))

(declare-fun m!776573 () Bool)

(assert (=> start!48860 m!776573))

(declare-fun m!776575 () Bool)

(assert (=> b!531508 m!776575))

(declare-fun m!776577 () Bool)

(assert (=> b!531508 m!776577))

(declare-fun m!776579 () Bool)

(assert (=> b!531516 m!776579))

(declare-fun m!776581 () Bool)

(assert (=> b!531511 m!776581))

(declare-fun m!776583 () Bool)

(assert (=> b!531505 m!776583))

(declare-fun m!776585 () Bool)

(assert (=> b!531515 m!776585))

(declare-fun m!776587 () Bool)

(assert (=> b!531520 m!776587))

(declare-fun m!776589 () Bool)

(assert (=> b!531507 m!776589))

(declare-fun m!776591 () Bool)

(assert (=> b!531518 m!776591))

(declare-fun m!776593 () Bool)

(assert (=> b!531518 m!776593))

(declare-fun m!776595 () Bool)

(assert (=> b!531518 m!776595))

(declare-fun m!776597 () Bool)

(assert (=> b!531521 m!776597))

(assert (=> b!531521 m!776597))

(declare-fun m!776599 () Bool)

(assert (=> b!531521 m!776599))

(declare-fun m!776601 () Bool)

(assert (=> b!531510 m!776601))

(check-sat (not b!531510) b_and!51923 (not b!531521) (not b!531518) (not b_next!14361) tp_is_empty!2865 b_and!51925 (not start!48860) (not b!531519) (not b!531517) (not b!531520) (not b!531508) (not b!531509) (not b!531514) (not b_next!14367) b_and!51927 (not b!531516) (not b_next!14363) b_and!51929 (not b_next!14365) (not b!531507) (not b!531506) (not b!531515) (not b!531511) (not b!531505))
(check-sat b_and!51927 b_and!51923 (not b_next!14365) (not b_next!14361) b_and!51925 (not b_next!14367) (not b_next!14363) b_and!51929)
