; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407462 () Bool)

(assert start!407462)

(declare-fun b!4254384 () Bool)

(declare-fun b_free!126595 () Bool)

(declare-fun b_next!127299 () Bool)

(assert (=> b!4254384 (= b_free!126595 (not b_next!127299))))

(declare-fun tp!1305758 () Bool)

(declare-fun b_and!337413 () Bool)

(assert (=> b!4254384 (= tp!1305758 b_and!337413)))

(declare-fun b_free!126597 () Bool)

(declare-fun b_next!127301 () Bool)

(assert (=> b!4254384 (= b_free!126597 (not b_next!127301))))

(declare-fun tp!1305757 () Bool)

(declare-fun b_and!337415 () Bool)

(assert (=> b!4254384 (= tp!1305757 b_and!337415)))

(declare-fun b!4254382 () Bool)

(declare-fun b_free!126599 () Bool)

(declare-fun b_next!127303 () Bool)

(assert (=> b!4254382 (= b_free!126599 (not b_next!127303))))

(declare-fun tp!1305764 () Bool)

(declare-fun b_and!337417 () Bool)

(assert (=> b!4254382 (= tp!1305764 b_and!337417)))

(declare-fun b_free!126601 () Bool)

(declare-fun b_next!127305 () Bool)

(assert (=> b!4254382 (= b_free!126601 (not b_next!127305))))

(declare-fun tp!1305766 () Bool)

(declare-fun b_and!337419 () Bool)

(assert (=> b!4254382 (= tp!1305766 b_and!337419)))

(declare-datatypes ((List!47294 0))(
  ( (Nil!47170) (Cons!47170 (h!52590 (_ BitVec 16)) (t!352805 List!47294)) )
))
(declare-datatypes ((TokenValue!8218 0))(
  ( (FloatLiteralValue!16436 (text!57971 List!47294)) (TokenValueExt!8217 (__x!28659 Int)) (Broken!41090 (value!248168 List!47294)) (Object!8341) (End!8218) (Def!8218) (Underscore!8218) (Match!8218) (Else!8218) (Error!8218) (Case!8218) (If!8218) (Extends!8218) (Abstract!8218) (Class!8218) (Val!8218) (DelimiterValue!16436 (del!8278 List!47294)) (KeywordValue!8224 (value!248169 List!47294)) (CommentValue!16436 (value!248170 List!47294)) (WhitespaceValue!16436 (value!248171 List!47294)) (IndentationValue!8218 (value!248172 List!47294)) (String!55019) (Int32!8218) (Broken!41091 (value!248173 List!47294)) (Boolean!8219) (Unit!66104) (OperatorValue!8221 (op!8278 List!47294)) (IdentifierValue!16436 (value!248174 List!47294)) (IdentifierValue!16437 (value!248175 List!47294)) (WhitespaceValue!16437 (value!248176 List!47294)) (True!16436) (False!16436) (Broken!41092 (value!248177 List!47294)) (Broken!41093 (value!248178 List!47294)) (True!16437) (RightBrace!8218) (RightBracket!8218) (Colon!8218) (Null!8218) (Comma!8218) (LeftBracket!8218) (False!16437) (LeftBrace!8218) (ImaginaryLiteralValue!8218 (text!57972 List!47294)) (StringLiteralValue!24654 (value!248179 List!47294)) (EOFValue!8218 (value!248180 List!47294)) (IdentValue!8218 (value!248181 List!47294)) (DelimiterValue!16437 (value!248182 List!47294)) (DedentValue!8218 (value!248183 List!47294)) (NewLineValue!8218 (value!248184 List!47294)) (IntegerValue!24654 (value!248185 (_ BitVec 32)) (text!57973 List!47294)) (IntegerValue!24655 (value!248186 Int) (text!57974 List!47294)) (Times!8218) (Or!8218) (Equal!8218) (Minus!8218) (Broken!41094 (value!248187 List!47294)) (And!8218) (Div!8218) (LessEqual!8218) (Mod!8218) (Concat!21111) (Not!8218) (Plus!8218) (SpaceValue!8218 (value!248188 List!47294)) (IntegerValue!24656 (value!248189 Int) (text!57975 List!47294)) (StringLiteralValue!24655 (text!57976 List!47294)) (FloatLiteralValue!16437 (text!57977 List!47294)) (BytesLiteralValue!8218 (value!248190 List!47294)) (CommentValue!16437 (value!248191 List!47294)) (StringLiteralValue!24656 (value!248192 List!47294)) (ErrorTokenValue!8218 (msg!8279 List!47294)) )
))
(declare-datatypes ((C!25984 0))(
  ( (C!25985 (val!15182 Int)) )
))
(declare-datatypes ((List!47295 0))(
  ( (Nil!47171) (Cons!47171 (h!52591 C!25984) (t!352806 List!47295)) )
))
(declare-datatypes ((IArray!28403 0))(
  ( (IArray!28404 (innerList!14259 List!47295)) )
))
(declare-datatypes ((Conc!14199 0))(
  ( (Node!14199 (left!34959 Conc!14199) (right!35289 Conc!14199) (csize!28628 Int) (cheight!14410 Int)) (Leaf!21952 (xs!17505 IArray!28403) (csize!28629 Int)) (Empty!14199) )
))
(declare-datatypes ((BalanceConc!27992 0))(
  ( (BalanceConc!27993 (c!722324 Conc!14199)) )
))
(declare-datatypes ((TokenValueInjection!15864 0))(
  ( (TokenValueInjection!15865 (toValue!10764 Int) (toChars!10623 Int)) )
))
(declare-datatypes ((String!55020 0))(
  ( (String!55021 (value!248193 String)) )
))
(declare-datatypes ((Regex!12893 0))(
  ( (ElementMatch!12893 (c!722325 C!25984)) (Concat!21112 (regOne!26298 Regex!12893) (regTwo!26298 Regex!12893)) (EmptyExpr!12893) (Star!12893 (reg!13222 Regex!12893)) (EmptyLang!12893) (Union!12893 (regOne!26299 Regex!12893) (regTwo!26299 Regex!12893)) )
))
(declare-datatypes ((Rule!15776 0))(
  ( (Rule!15777 (regex!7988 Regex!12893) (tag!8852 String!55020) (isSeparator!7988 Bool) (transformation!7988 TokenValueInjection!15864)) )
))
(declare-datatypes ((Token!14602 0))(
  ( (Token!14603 (value!248194 TokenValue!8218) (rule!11124 Rule!15776) (size!34523 Int) (originalCharacters!8332 List!47295)) )
))
(declare-datatypes ((List!47296 0))(
  ( (Nil!47172) (Cons!47172 (h!52592 Token!14602) (t!352807 List!47296)) )
))
(declare-fun tokens!592 () List!47296)

(declare-fun b!4254370 () Bool)

(declare-fun e!2642582 () Bool)

(declare-fun e!2642584 () Bool)

(declare-fun tp!1305765 () Bool)

(declare-fun inv!21 (TokenValue!8218) Bool)

(assert (=> b!4254370 (= e!2642584 (and (inv!21 (value!248194 (h!52592 tokens!592))) e!2642582 tp!1305765))))

(declare-fun b!4254371 () Bool)

(declare-fun res!1748851 () Bool)

(declare-fun e!2642594 () Bool)

(assert (=> b!4254371 (=> (not res!1748851) (not e!2642594))))

(declare-fun longerInput!62 () List!47295)

(declare-fun shorterInput!62 () List!47295)

(declare-fun size!34524 (List!47295) Int)

(assert (=> b!4254371 (= res!1748851 (> (size!34524 longerInput!62) (size!34524 shorterInput!62)))))

(declare-datatypes ((LexerInterface!7583 0))(
  ( (LexerInterfaceExt!7580 (__x!28660 Int)) (Lexer!7581) )
))
(declare-fun thiss!21641 () LexerInterface!7583)

(declare-datatypes ((tuple2!44722 0))(
  ( (tuple2!44723 (_1!25495 List!47296) (_2!25495 List!47295)) )
))
(declare-fun lt!1509474 () tuple2!44722)

(declare-fun e!2642590 () Bool)

(declare-datatypes ((List!47297 0))(
  ( (Nil!47173) (Cons!47173 (h!52593 Rule!15776) (t!352808 List!47297)) )
))
(declare-fun rules!2971 () List!47297)

(declare-fun b!4254372 () Bool)

(declare-fun lexList!2089 (LexerInterface!7583 List!47297 List!47295) tuple2!44722)

(assert (=> b!4254372 (= e!2642590 (= (lexList!2089 thiss!21641 rules!2971 shorterInput!62) lt!1509474))))

(declare-fun b!4254373 () Bool)

(declare-fun res!1748853 () Bool)

(assert (=> b!4254373 (=> (not res!1748853) (not e!2642594))))

(declare-fun isEmpty!27918 (List!47295) Bool)

(assert (=> b!4254373 (= res!1748853 (not (isEmpty!27918 longerInput!62)))))

(declare-fun e!2642579 () Bool)

(declare-fun tp!1305756 () Bool)

(declare-fun b!4254374 () Bool)

(declare-fun inv!61957 (Token!14602) Bool)

(assert (=> b!4254374 (= e!2642579 (and (inv!61957 (h!52592 tokens!592)) e!2642584 tp!1305756))))

(declare-fun res!1748852 () Bool)

(assert (=> start!407462 (=> (not res!1748852) (not e!2642594))))

(get-info :version)

(assert (=> start!407462 (= res!1748852 ((_ is Lexer!7581) thiss!21641))))

(assert (=> start!407462 e!2642594))

(assert (=> start!407462 true))

(declare-fun e!2642583 () Bool)

(assert (=> start!407462 e!2642583))

(declare-fun e!2642585 () Bool)

(assert (=> start!407462 e!2642585))

(assert (=> start!407462 e!2642579))

(declare-fun e!2642586 () Bool)

(assert (=> start!407462 e!2642586))

(declare-fun e!2642592 () Bool)

(assert (=> start!407462 e!2642592))

(declare-fun b!4254375 () Bool)

(declare-fun tp_is_empty!22777 () Bool)

(declare-fun tp!1305762 () Bool)

(assert (=> b!4254375 (= e!2642592 (and tp_is_empty!22777 tp!1305762))))

(declare-fun b!4254376 () Bool)

(declare-fun e!2642588 () Bool)

(declare-fun tp!1305759 () Bool)

(assert (=> b!4254376 (= e!2642586 (and e!2642588 tp!1305759))))

(declare-fun b!4254377 () Bool)

(declare-fun tp!1305763 () Bool)

(assert (=> b!4254377 (= e!2642583 (and tp_is_empty!22777 tp!1305763))))

(declare-fun b!4254378 () Bool)

(declare-fun tp!1305761 () Bool)

(declare-fun e!2642589 () Bool)

(declare-fun inv!61954 (String!55020) Bool)

(declare-fun inv!61958 (TokenValueInjection!15864) Bool)

(assert (=> b!4254378 (= e!2642582 (and tp!1305761 (inv!61954 (tag!8852 (rule!11124 (h!52592 tokens!592)))) (inv!61958 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) e!2642589))))

(declare-fun b!4254379 () Bool)

(declare-fun res!1748850 () Bool)

(assert (=> b!4254379 (=> (not res!1748850) (not e!2642594))))

(declare-fun rulesInvariant!6694 (LexerInterface!7583 List!47297) Bool)

(assert (=> b!4254379 (= res!1748850 (rulesInvariant!6694 thiss!21641 rules!2971))))

(declare-fun b!4254380 () Bool)

(declare-fun e!2642581 () Bool)

(assert (=> b!4254380 (= e!2642594 e!2642581)))

(declare-fun res!1748849 () Bool)

(assert (=> b!4254380 (=> (not res!1748849) (not e!2642581))))

(assert (=> b!4254380 (= res!1748849 (= (lexList!2089 thiss!21641 rules!2971 longerInput!62) lt!1509474))))

(declare-fun suffix!1284 () List!47295)

(assert (=> b!4254380 (= lt!1509474 (tuple2!44723 tokens!592 suffix!1284))))

(declare-fun b!4254381 () Bool)

(declare-fun tp!1305755 () Bool)

(assert (=> b!4254381 (= e!2642585 (and tp_is_empty!22777 tp!1305755))))

(assert (=> b!4254382 (= e!2642589 (and tp!1305764 tp!1305766))))

(declare-fun tp!1305760 () Bool)

(declare-fun e!2642591 () Bool)

(declare-fun b!4254383 () Bool)

(assert (=> b!4254383 (= e!2642588 (and tp!1305760 (inv!61954 (tag!8852 (h!52593 rules!2971))) (inv!61958 (transformation!7988 (h!52593 rules!2971))) e!2642591))))

(assert (=> b!4254384 (= e!2642591 (and tp!1305758 tp!1305757))))

(declare-fun b!4254385 () Bool)

(assert (=> b!4254385 (= e!2642581 e!2642590)))

(declare-fun res!1748855 () Bool)

(assert (=> b!4254385 (=> (not res!1748855) (not e!2642590))))

(declare-datatypes ((tuple2!44724 0))(
  ( (tuple2!44725 (_1!25496 Token!14602) (_2!25496 List!47295)) )
))
(declare-datatypes ((Option!10122 0))(
  ( (None!10121) (Some!10121 (v!41081 tuple2!44724)) )
))
(declare-fun lt!1509476 () Option!10122)

(declare-fun lt!1509475 () Option!10122)

(assert (=> b!4254385 (= res!1748855 (and (or (not ((_ is Some!10121) lt!1509476)) (not ((_ is Some!10121) lt!1509475))) (or (not ((_ is Some!10121) lt!1509476)) (not ((_ is None!10121) lt!1509475))) (or (not ((_ is None!10121) lt!1509476)) (not ((_ is Some!10121) lt!1509475))) ((_ is None!10121) lt!1509476) ((_ is None!10121) lt!1509475)))))

(declare-fun maxPrefix!4539 (LexerInterface!7583 List!47297 List!47295) Option!10122)

(assert (=> b!4254385 (= lt!1509475 (maxPrefix!4539 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4254385 (= lt!1509476 (maxPrefix!4539 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4254386 () Bool)

(declare-fun res!1748854 () Bool)

(assert (=> b!4254386 (=> (not res!1748854) (not e!2642594))))

(declare-fun isEmpty!27919 (List!47297) Bool)

(assert (=> b!4254386 (= res!1748854 (not (isEmpty!27919 rules!2971)))))

(assert (= (and start!407462 res!1748852) b!4254386))

(assert (= (and b!4254386 res!1748854) b!4254379))

(assert (= (and b!4254379 res!1748850) b!4254373))

(assert (= (and b!4254373 res!1748853) b!4254371))

(assert (= (and b!4254371 res!1748851) b!4254380))

(assert (= (and b!4254380 res!1748849) b!4254385))

(assert (= (and b!4254385 res!1748855) b!4254372))

(assert (= (and start!407462 ((_ is Cons!47171) suffix!1284)) b!4254377))

(assert (= (and start!407462 ((_ is Cons!47171) longerInput!62)) b!4254381))

(assert (= b!4254378 b!4254382))

(assert (= b!4254370 b!4254378))

(assert (= b!4254374 b!4254370))

(assert (= (and start!407462 ((_ is Cons!47172) tokens!592)) b!4254374))

(assert (= b!4254383 b!4254384))

(assert (= b!4254376 b!4254383))

(assert (= (and start!407462 ((_ is Cons!47173) rules!2971)) b!4254376))

(assert (= (and start!407462 ((_ is Cons!47171) shorterInput!62)) b!4254375))

(declare-fun m!4839085 () Bool)

(assert (=> b!4254378 m!4839085))

(declare-fun m!4839087 () Bool)

(assert (=> b!4254378 m!4839087))

(declare-fun m!4839089 () Bool)

(assert (=> b!4254370 m!4839089))

(declare-fun m!4839091 () Bool)

(assert (=> b!4254385 m!4839091))

(declare-fun m!4839093 () Bool)

(assert (=> b!4254385 m!4839093))

(declare-fun m!4839095 () Bool)

(assert (=> b!4254373 m!4839095))

(declare-fun m!4839097 () Bool)

(assert (=> b!4254383 m!4839097))

(declare-fun m!4839099 () Bool)

(assert (=> b!4254383 m!4839099))

(declare-fun m!4839101 () Bool)

(assert (=> b!4254386 m!4839101))

(declare-fun m!4839103 () Bool)

(assert (=> b!4254371 m!4839103))

(declare-fun m!4839105 () Bool)

(assert (=> b!4254371 m!4839105))

(declare-fun m!4839107 () Bool)

(assert (=> b!4254374 m!4839107))

(declare-fun m!4839109 () Bool)

(assert (=> b!4254379 m!4839109))

(declare-fun m!4839111 () Bool)

(assert (=> b!4254372 m!4839111))

(declare-fun m!4839113 () Bool)

(assert (=> b!4254380 m!4839113))

(check-sat (not b!4254383) b_and!337419 (not b!4254376) (not b!4254386) (not b!4254372) (not b!4254375) (not b!4254380) (not b!4254371) b_and!337417 (not b!4254379) (not b_next!127303) (not b!4254373) b_and!337415 (not b!4254381) (not b_next!127305) (not b!4254377) (not b_next!127301) tp_is_empty!22777 b_and!337413 (not b!4254370) (not b!4254378) (not b_next!127299) (not b!4254385) (not b!4254374))
(check-sat (not b_next!127301) b_and!337419 b_and!337413 (not b_next!127299) b_and!337417 (not b_next!127303) b_and!337415 (not b_next!127305))
(get-model)

(declare-fun b!4254401 () Bool)

(declare-fun e!2642605 () tuple2!44722)

(assert (=> b!4254401 (= e!2642605 (tuple2!44723 Nil!47172 longerInput!62))))

(declare-fun b!4254402 () Bool)

(declare-fun e!2642606 () Bool)

(declare-fun e!2642604 () Bool)

(assert (=> b!4254402 (= e!2642606 e!2642604)))

(declare-fun res!1748861 () Bool)

(declare-fun lt!1509483 () tuple2!44722)

(assert (=> b!4254402 (= res!1748861 (< (size!34524 (_2!25495 lt!1509483)) (size!34524 longerInput!62)))))

(assert (=> b!4254402 (=> (not res!1748861) (not e!2642604))))

(declare-fun b!4254403 () Bool)

(declare-fun isEmpty!27921 (List!47296) Bool)

(assert (=> b!4254403 (= e!2642604 (not (isEmpty!27921 (_1!25495 lt!1509483))))))

(declare-fun b!4254404 () Bool)

(assert (=> b!4254404 (= e!2642606 (= (_2!25495 lt!1509483) longerInput!62))))

(declare-fun d!1250881 () Bool)

(assert (=> d!1250881 e!2642606))

(declare-fun c!722331 () Bool)

(declare-fun size!34525 (List!47296) Int)

(assert (=> d!1250881 (= c!722331 (> (size!34525 (_1!25495 lt!1509483)) 0))))

(assert (=> d!1250881 (= lt!1509483 e!2642605)))

(declare-fun c!722330 () Bool)

(declare-fun lt!1509484 () Option!10122)

(assert (=> d!1250881 (= c!722330 ((_ is Some!10121) lt!1509484))))

(assert (=> d!1250881 (= lt!1509484 (maxPrefix!4539 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250881 (= (lexList!2089 thiss!21641 rules!2971 longerInput!62) lt!1509483)))

(declare-fun b!4254400 () Bool)

(declare-fun lt!1509485 () tuple2!44722)

(assert (=> b!4254400 (= e!2642605 (tuple2!44723 (Cons!47172 (_1!25496 (v!41081 lt!1509484)) (_1!25495 lt!1509485)) (_2!25495 lt!1509485)))))

(assert (=> b!4254400 (= lt!1509485 (lexList!2089 thiss!21641 rules!2971 (_2!25496 (v!41081 lt!1509484))))))

(assert (= (and d!1250881 c!722330) b!4254400))

(assert (= (and d!1250881 (not c!722330)) b!4254401))

(assert (= (and d!1250881 c!722331) b!4254402))

(assert (= (and d!1250881 (not c!722331)) b!4254404))

(assert (= (and b!4254402 res!1748861) b!4254403))

(declare-fun m!4839119 () Bool)

(assert (=> b!4254402 m!4839119))

(assert (=> b!4254402 m!4839103))

(declare-fun m!4839121 () Bool)

(assert (=> b!4254403 m!4839121))

(declare-fun m!4839123 () Bool)

(assert (=> d!1250881 m!4839123))

(assert (=> d!1250881 m!4839093))

(declare-fun m!4839125 () Bool)

(assert (=> b!4254400 m!4839125))

(assert (=> b!4254380 d!1250881))

(declare-fun d!1250887 () Bool)

(declare-fun res!1748866 () Bool)

(declare-fun e!2642609 () Bool)

(assert (=> d!1250887 (=> (not res!1748866) (not e!2642609))))

(assert (=> d!1250887 (= res!1748866 (not (isEmpty!27918 (originalCharacters!8332 (h!52592 tokens!592)))))))

(assert (=> d!1250887 (= (inv!61957 (h!52592 tokens!592)) e!2642609)))

(declare-fun b!4254409 () Bool)

(declare-fun res!1748867 () Bool)

(assert (=> b!4254409 (=> (not res!1748867) (not e!2642609))))

(declare-fun list!16993 (BalanceConc!27992) List!47295)

(declare-fun dynLambda!20200 (Int TokenValue!8218) BalanceConc!27992)

(assert (=> b!4254409 (= res!1748867 (= (originalCharacters!8332 (h!52592 tokens!592)) (list!16993 (dynLambda!20200 (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) (value!248194 (h!52592 tokens!592))))))))

(declare-fun b!4254410 () Bool)

(assert (=> b!4254410 (= e!2642609 (= (size!34523 (h!52592 tokens!592)) (size!34524 (originalCharacters!8332 (h!52592 tokens!592)))))))

(assert (= (and d!1250887 res!1748866) b!4254409))

(assert (= (and b!4254409 res!1748867) b!4254410))

(declare-fun b_lambda!125331 () Bool)

(assert (=> (not b_lambda!125331) (not b!4254409)))

(declare-fun t!352810 () Bool)

(declare-fun tb!256691 () Bool)

(assert (=> (and b!4254384 (= (toChars!10623 (transformation!7988 (h!52593 rules!2971))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592))))) t!352810) tb!256691))

(declare-fun b!4254415 () Bool)

(declare-fun e!2642612 () Bool)

(declare-fun tp!1305769 () Bool)

(declare-fun inv!61959 (Conc!14199) Bool)

(assert (=> b!4254415 (= e!2642612 (and (inv!61959 (c!722324 (dynLambda!20200 (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) (value!248194 (h!52592 tokens!592))))) tp!1305769))))

(declare-fun result!313100 () Bool)

(declare-fun inv!61960 (BalanceConc!27992) Bool)

(assert (=> tb!256691 (= result!313100 (and (inv!61960 (dynLambda!20200 (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) (value!248194 (h!52592 tokens!592)))) e!2642612))))

(assert (= tb!256691 b!4254415))

(declare-fun m!4839127 () Bool)

(assert (=> b!4254415 m!4839127))

(declare-fun m!4839129 () Bool)

(assert (=> tb!256691 m!4839129))

(assert (=> b!4254409 t!352810))

(declare-fun b_and!337421 () Bool)

(assert (= b_and!337415 (and (=> t!352810 result!313100) b_and!337421)))

(declare-fun t!352812 () Bool)

(declare-fun tb!256693 () Bool)

(assert (=> (and b!4254382 (= (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592))))) t!352812) tb!256693))

(declare-fun result!313104 () Bool)

(assert (= result!313104 result!313100))

(assert (=> b!4254409 t!352812))

(declare-fun b_and!337423 () Bool)

(assert (= b_and!337419 (and (=> t!352812 result!313104) b_and!337423)))

(declare-fun m!4839131 () Bool)

(assert (=> d!1250887 m!4839131))

(declare-fun m!4839133 () Bool)

(assert (=> b!4254409 m!4839133))

(assert (=> b!4254409 m!4839133))

(declare-fun m!4839135 () Bool)

(assert (=> b!4254409 m!4839135))

(declare-fun m!4839137 () Bool)

(assert (=> b!4254410 m!4839137))

(assert (=> b!4254374 d!1250887))

(declare-fun b!4254482 () Bool)

(declare-fun res!1748917 () Bool)

(declare-fun e!2642641 () Bool)

(assert (=> b!4254482 (=> (not res!1748917) (not e!2642641))))

(declare-fun lt!1509523 () Option!10122)

(declare-fun get!15310 (Option!10122) tuple2!44724)

(declare-fun apply!10785 (TokenValueInjection!15864 BalanceConc!27992) TokenValue!8218)

(declare-fun seqFromList!5845 (List!47295) BalanceConc!27992)

(assert (=> b!4254482 (= res!1748917 (= (value!248194 (_1!25496 (get!15310 lt!1509523))) (apply!10785 (transformation!7988 (rule!11124 (_1!25496 (get!15310 lt!1509523)))) (seqFromList!5845 (originalCharacters!8332 (_1!25496 (get!15310 lt!1509523)))))))))

(declare-fun b!4254483 () Bool)

(declare-fun e!2642639 () Bool)

(assert (=> b!4254483 (= e!2642639 e!2642641)))

(declare-fun res!1748920 () Bool)

(assert (=> b!4254483 (=> (not res!1748920) (not e!2642641))))

(declare-fun isDefined!7473 (Option!10122) Bool)

(assert (=> b!4254483 (= res!1748920 (isDefined!7473 lt!1509523))))

(declare-fun b!4254484 () Bool)

(declare-fun res!1748916 () Bool)

(assert (=> b!4254484 (=> (not res!1748916) (not e!2642641))))

(assert (=> b!4254484 (= res!1748916 (< (size!34524 (_2!25496 (get!15310 lt!1509523))) (size!34524 shorterInput!62)))))

(declare-fun b!4254485 () Bool)

(declare-fun res!1748915 () Bool)

(assert (=> b!4254485 (=> (not res!1748915) (not e!2642641))))

(declare-fun matchR!6481 (Regex!12893 List!47295) Bool)

(declare-fun charsOf!5327 (Token!14602) BalanceConc!27992)

(assert (=> b!4254485 (= res!1748915 (matchR!6481 (regex!7988 (rule!11124 (_1!25496 (get!15310 lt!1509523)))) (list!16993 (charsOf!5327 (_1!25496 (get!15310 lt!1509523))))))))

(declare-fun b!4254486 () Bool)

(declare-fun e!2642640 () Option!10122)

(declare-fun call!294037 () Option!10122)

(assert (=> b!4254486 (= e!2642640 call!294037)))

(declare-fun b!4254487 () Bool)

(declare-fun lt!1509522 () Option!10122)

(declare-fun lt!1509524 () Option!10122)

(assert (=> b!4254487 (= e!2642640 (ite (and ((_ is None!10121) lt!1509522) ((_ is None!10121) lt!1509524)) None!10121 (ite ((_ is None!10121) lt!1509524) lt!1509522 (ite ((_ is None!10121) lt!1509522) lt!1509524 (ite (>= (size!34523 (_1!25496 (v!41081 lt!1509522))) (size!34523 (_1!25496 (v!41081 lt!1509524)))) lt!1509522 lt!1509524)))))))

(assert (=> b!4254487 (= lt!1509522 call!294037)))

(assert (=> b!4254487 (= lt!1509524 (maxPrefix!4539 thiss!21641 (t!352808 rules!2971) shorterInput!62))))

(declare-fun b!4254488 () Bool)

(declare-fun contains!9772 (List!47297 Rule!15776) Bool)

(assert (=> b!4254488 (= e!2642641 (contains!9772 rules!2971 (rule!11124 (_1!25496 (get!15310 lt!1509523)))))))

(declare-fun b!4254489 () Bool)

(declare-fun res!1748914 () Bool)

(assert (=> b!4254489 (=> (not res!1748914) (not e!2642641))))

(assert (=> b!4254489 (= res!1748914 (= (list!16993 (charsOf!5327 (_1!25496 (get!15310 lt!1509523)))) (originalCharacters!8332 (_1!25496 (get!15310 lt!1509523)))))))

(declare-fun b!4254490 () Bool)

(declare-fun res!1748918 () Bool)

(assert (=> b!4254490 (=> (not res!1748918) (not e!2642641))))

(declare-fun ++!11996 (List!47295 List!47295) List!47295)

(assert (=> b!4254490 (= res!1748918 (= (++!11996 (list!16993 (charsOf!5327 (_1!25496 (get!15310 lt!1509523)))) (_2!25496 (get!15310 lt!1509523))) shorterInput!62))))

(declare-fun bm!294032 () Bool)

(declare-fun maxPrefixOneRule!3484 (LexerInterface!7583 Rule!15776 List!47295) Option!10122)

(assert (=> bm!294032 (= call!294037 (maxPrefixOneRule!3484 thiss!21641 (h!52593 rules!2971) shorterInput!62))))

(declare-fun d!1250889 () Bool)

(assert (=> d!1250889 e!2642639))

(declare-fun res!1748919 () Bool)

(assert (=> d!1250889 (=> res!1748919 e!2642639)))

(declare-fun isEmpty!27923 (Option!10122) Bool)

(assert (=> d!1250889 (= res!1748919 (isEmpty!27923 lt!1509523))))

(assert (=> d!1250889 (= lt!1509523 e!2642640)))

(declare-fun c!722342 () Bool)

(assert (=> d!1250889 (= c!722342 (and ((_ is Cons!47173) rules!2971) ((_ is Nil!47173) (t!352808 rules!2971))))))

(declare-datatypes ((Unit!66107 0))(
  ( (Unit!66108) )
))
(declare-fun lt!1509521 () Unit!66107)

(declare-fun lt!1509520 () Unit!66107)

(assert (=> d!1250889 (= lt!1509521 lt!1509520)))

(declare-fun isPrefix!4758 (List!47295 List!47295) Bool)

(assert (=> d!1250889 (isPrefix!4758 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3155 (List!47295 List!47295) Unit!66107)

(assert (=> d!1250889 (= lt!1509520 (lemmaIsPrefixRefl!3155 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3009 (LexerInterface!7583 List!47297) Bool)

(assert (=> d!1250889 (rulesValidInductive!3009 thiss!21641 rules!2971)))

(assert (=> d!1250889 (= (maxPrefix!4539 thiss!21641 rules!2971 shorterInput!62) lt!1509523)))

(assert (= (and d!1250889 c!722342) b!4254486))

(assert (= (and d!1250889 (not c!722342)) b!4254487))

(assert (= (or b!4254486 b!4254487) bm!294032))

(assert (= (and d!1250889 (not res!1748919)) b!4254483))

(assert (= (and b!4254483 res!1748920) b!4254489))

(assert (= (and b!4254489 res!1748914) b!4254484))

(assert (= (and b!4254484 res!1748916) b!4254490))

(assert (= (and b!4254490 res!1748918) b!4254482))

(assert (= (and b!4254482 res!1748917) b!4254485))

(assert (= (and b!4254485 res!1748915) b!4254488))

(declare-fun m!4839213 () Bool)

(assert (=> b!4254483 m!4839213))

(declare-fun m!4839215 () Bool)

(assert (=> d!1250889 m!4839215))

(declare-fun m!4839217 () Bool)

(assert (=> d!1250889 m!4839217))

(declare-fun m!4839219 () Bool)

(assert (=> d!1250889 m!4839219))

(declare-fun m!4839221 () Bool)

(assert (=> d!1250889 m!4839221))

(declare-fun m!4839223 () Bool)

(assert (=> b!4254488 m!4839223))

(declare-fun m!4839225 () Bool)

(assert (=> b!4254488 m!4839225))

(declare-fun m!4839227 () Bool)

(assert (=> bm!294032 m!4839227))

(assert (=> b!4254490 m!4839223))

(declare-fun m!4839229 () Bool)

(assert (=> b!4254490 m!4839229))

(assert (=> b!4254490 m!4839229))

(declare-fun m!4839231 () Bool)

(assert (=> b!4254490 m!4839231))

(assert (=> b!4254490 m!4839231))

(declare-fun m!4839233 () Bool)

(assert (=> b!4254490 m!4839233))

(assert (=> b!4254485 m!4839223))

(assert (=> b!4254485 m!4839229))

(assert (=> b!4254485 m!4839229))

(assert (=> b!4254485 m!4839231))

(assert (=> b!4254485 m!4839231))

(declare-fun m!4839235 () Bool)

(assert (=> b!4254485 m!4839235))

(assert (=> b!4254489 m!4839223))

(assert (=> b!4254489 m!4839229))

(assert (=> b!4254489 m!4839229))

(assert (=> b!4254489 m!4839231))

(declare-fun m!4839237 () Bool)

(assert (=> b!4254487 m!4839237))

(assert (=> b!4254484 m!4839223))

(declare-fun m!4839239 () Bool)

(assert (=> b!4254484 m!4839239))

(assert (=> b!4254484 m!4839105))

(assert (=> b!4254482 m!4839223))

(declare-fun m!4839241 () Bool)

(assert (=> b!4254482 m!4839241))

(assert (=> b!4254482 m!4839241))

(declare-fun m!4839243 () Bool)

(assert (=> b!4254482 m!4839243))

(assert (=> b!4254385 d!1250889))

(declare-fun b!4254501 () Bool)

(declare-fun res!1748926 () Bool)

(declare-fun e!2642650 () Bool)

(assert (=> b!4254501 (=> (not res!1748926) (not e!2642650))))

(declare-fun lt!1509534 () Option!10122)

(assert (=> b!4254501 (= res!1748926 (= (value!248194 (_1!25496 (get!15310 lt!1509534))) (apply!10785 (transformation!7988 (rule!11124 (_1!25496 (get!15310 lt!1509534)))) (seqFromList!5845 (originalCharacters!8332 (_1!25496 (get!15310 lt!1509534)))))))))

(declare-fun b!4254502 () Bool)

(declare-fun e!2642648 () Bool)

(assert (=> b!4254502 (= e!2642648 e!2642650)))

(declare-fun res!1748929 () Bool)

(assert (=> b!4254502 (=> (not res!1748929) (not e!2642650))))

(assert (=> b!4254502 (= res!1748929 (isDefined!7473 lt!1509534))))

(declare-fun b!4254503 () Bool)

(declare-fun res!1748925 () Bool)

(assert (=> b!4254503 (=> (not res!1748925) (not e!2642650))))

(assert (=> b!4254503 (= res!1748925 (< (size!34524 (_2!25496 (get!15310 lt!1509534))) (size!34524 longerInput!62)))))

(declare-fun b!4254504 () Bool)

(declare-fun res!1748924 () Bool)

(assert (=> b!4254504 (=> (not res!1748924) (not e!2642650))))

(assert (=> b!4254504 (= res!1748924 (matchR!6481 (regex!7988 (rule!11124 (_1!25496 (get!15310 lt!1509534)))) (list!16993 (charsOf!5327 (_1!25496 (get!15310 lt!1509534))))))))

(declare-fun b!4254505 () Bool)

(declare-fun e!2642649 () Option!10122)

(declare-fun call!294038 () Option!10122)

(assert (=> b!4254505 (= e!2642649 call!294038)))

(declare-fun b!4254506 () Bool)

(declare-fun lt!1509533 () Option!10122)

(declare-fun lt!1509535 () Option!10122)

(assert (=> b!4254506 (= e!2642649 (ite (and ((_ is None!10121) lt!1509533) ((_ is None!10121) lt!1509535)) None!10121 (ite ((_ is None!10121) lt!1509535) lt!1509533 (ite ((_ is None!10121) lt!1509533) lt!1509535 (ite (>= (size!34523 (_1!25496 (v!41081 lt!1509533))) (size!34523 (_1!25496 (v!41081 lt!1509535)))) lt!1509533 lt!1509535)))))))

(assert (=> b!4254506 (= lt!1509533 call!294038)))

(assert (=> b!4254506 (= lt!1509535 (maxPrefix!4539 thiss!21641 (t!352808 rules!2971) longerInput!62))))

(declare-fun b!4254507 () Bool)

(assert (=> b!4254507 (= e!2642650 (contains!9772 rules!2971 (rule!11124 (_1!25496 (get!15310 lt!1509534)))))))

(declare-fun b!4254508 () Bool)

(declare-fun res!1748923 () Bool)

(assert (=> b!4254508 (=> (not res!1748923) (not e!2642650))))

(assert (=> b!4254508 (= res!1748923 (= (list!16993 (charsOf!5327 (_1!25496 (get!15310 lt!1509534)))) (originalCharacters!8332 (_1!25496 (get!15310 lt!1509534)))))))

(declare-fun b!4254509 () Bool)

(declare-fun res!1748927 () Bool)

(assert (=> b!4254509 (=> (not res!1748927) (not e!2642650))))

(assert (=> b!4254509 (= res!1748927 (= (++!11996 (list!16993 (charsOf!5327 (_1!25496 (get!15310 lt!1509534)))) (_2!25496 (get!15310 lt!1509534))) longerInput!62))))

(declare-fun bm!294033 () Bool)

(assert (=> bm!294033 (= call!294038 (maxPrefixOneRule!3484 thiss!21641 (h!52593 rules!2971) longerInput!62))))

(declare-fun d!1250911 () Bool)

(assert (=> d!1250911 e!2642648))

(declare-fun res!1748928 () Bool)

(assert (=> d!1250911 (=> res!1748928 e!2642648)))

(assert (=> d!1250911 (= res!1748928 (isEmpty!27923 lt!1509534))))

(assert (=> d!1250911 (= lt!1509534 e!2642649)))

(declare-fun c!722347 () Bool)

(assert (=> d!1250911 (= c!722347 (and ((_ is Cons!47173) rules!2971) ((_ is Nil!47173) (t!352808 rules!2971))))))

(declare-fun lt!1509532 () Unit!66107)

(declare-fun lt!1509531 () Unit!66107)

(assert (=> d!1250911 (= lt!1509532 lt!1509531)))

(assert (=> d!1250911 (isPrefix!4758 longerInput!62 longerInput!62)))

(assert (=> d!1250911 (= lt!1509531 (lemmaIsPrefixRefl!3155 longerInput!62 longerInput!62))))

(assert (=> d!1250911 (rulesValidInductive!3009 thiss!21641 rules!2971)))

(assert (=> d!1250911 (= (maxPrefix!4539 thiss!21641 rules!2971 longerInput!62) lt!1509534)))

(assert (= (and d!1250911 c!722347) b!4254505))

(assert (= (and d!1250911 (not c!722347)) b!4254506))

(assert (= (or b!4254505 b!4254506) bm!294033))

(assert (= (and d!1250911 (not res!1748928)) b!4254502))

(assert (= (and b!4254502 res!1748929) b!4254508))

(assert (= (and b!4254508 res!1748923) b!4254503))

(assert (= (and b!4254503 res!1748925) b!4254509))

(assert (= (and b!4254509 res!1748927) b!4254501))

(assert (= (and b!4254501 res!1748926) b!4254504))

(assert (= (and b!4254504 res!1748924) b!4254507))

(declare-fun m!4839261 () Bool)

(assert (=> b!4254502 m!4839261))

(declare-fun m!4839263 () Bool)

(assert (=> d!1250911 m!4839263))

(declare-fun m!4839265 () Bool)

(assert (=> d!1250911 m!4839265))

(declare-fun m!4839267 () Bool)

(assert (=> d!1250911 m!4839267))

(assert (=> d!1250911 m!4839221))

(declare-fun m!4839269 () Bool)

(assert (=> b!4254507 m!4839269))

(declare-fun m!4839271 () Bool)

(assert (=> b!4254507 m!4839271))

(declare-fun m!4839273 () Bool)

(assert (=> bm!294033 m!4839273))

(assert (=> b!4254509 m!4839269))

(declare-fun m!4839275 () Bool)

(assert (=> b!4254509 m!4839275))

(assert (=> b!4254509 m!4839275))

(declare-fun m!4839277 () Bool)

(assert (=> b!4254509 m!4839277))

(assert (=> b!4254509 m!4839277))

(declare-fun m!4839279 () Bool)

(assert (=> b!4254509 m!4839279))

(assert (=> b!4254504 m!4839269))

(assert (=> b!4254504 m!4839275))

(assert (=> b!4254504 m!4839275))

(assert (=> b!4254504 m!4839277))

(assert (=> b!4254504 m!4839277))

(declare-fun m!4839281 () Bool)

(assert (=> b!4254504 m!4839281))

(assert (=> b!4254508 m!4839269))

(assert (=> b!4254508 m!4839275))

(assert (=> b!4254508 m!4839275))

(assert (=> b!4254508 m!4839277))

(declare-fun m!4839283 () Bool)

(assert (=> b!4254506 m!4839283))

(assert (=> b!4254503 m!4839269))

(declare-fun m!4839285 () Bool)

(assert (=> b!4254503 m!4839285))

(assert (=> b!4254503 m!4839103))

(assert (=> b!4254501 m!4839269))

(declare-fun m!4839287 () Bool)

(assert (=> b!4254501 m!4839287))

(assert (=> b!4254501 m!4839287))

(declare-fun m!4839289 () Bool)

(assert (=> b!4254501 m!4839289))

(assert (=> b!4254385 d!1250911))

(declare-fun d!1250917 () Bool)

(declare-fun lt!1509544 () Int)

(assert (=> d!1250917 (>= lt!1509544 0)))

(declare-fun e!2642671 () Int)

(assert (=> d!1250917 (= lt!1509544 e!2642671)))

(declare-fun c!722358 () Bool)

(assert (=> d!1250917 (= c!722358 ((_ is Nil!47171) longerInput!62))))

(assert (=> d!1250917 (= (size!34524 longerInput!62) lt!1509544)))

(declare-fun b!4254545 () Bool)

(assert (=> b!4254545 (= e!2642671 0)))

(declare-fun b!4254546 () Bool)

(assert (=> b!4254546 (= e!2642671 (+ 1 (size!34524 (t!352806 longerInput!62))))))

(assert (= (and d!1250917 c!722358) b!4254545))

(assert (= (and d!1250917 (not c!722358)) b!4254546))

(declare-fun m!4839303 () Bool)

(assert (=> b!4254546 m!4839303))

(assert (=> b!4254371 d!1250917))

(declare-fun d!1250921 () Bool)

(declare-fun lt!1509545 () Int)

(assert (=> d!1250921 (>= lt!1509545 0)))

(declare-fun e!2642672 () Int)

(assert (=> d!1250921 (= lt!1509545 e!2642672)))

(declare-fun c!722359 () Bool)

(assert (=> d!1250921 (= c!722359 ((_ is Nil!47171) shorterInput!62))))

(assert (=> d!1250921 (= (size!34524 shorterInput!62) lt!1509545)))

(declare-fun b!4254547 () Bool)

(assert (=> b!4254547 (= e!2642672 0)))

(declare-fun b!4254548 () Bool)

(assert (=> b!4254548 (= e!2642672 (+ 1 (size!34524 (t!352806 shorterInput!62))))))

(assert (= (and d!1250921 c!722359) b!4254547))

(assert (= (and d!1250921 (not c!722359)) b!4254548))

(declare-fun m!4839305 () Bool)

(assert (=> b!4254548 m!4839305))

(assert (=> b!4254371 d!1250921))

(declare-fun d!1250923 () Bool)

(declare-fun c!722366 () Bool)

(assert (=> d!1250923 (= c!722366 ((_ is IntegerValue!24654) (value!248194 (h!52592 tokens!592))))))

(declare-fun e!2642706 () Bool)

(assert (=> d!1250923 (= (inv!21 (value!248194 (h!52592 tokens!592))) e!2642706)))

(declare-fun b!4254602 () Bool)

(declare-fun e!2642710 () Bool)

(assert (=> b!4254602 (= e!2642706 e!2642710)))

(declare-fun c!722367 () Bool)

(assert (=> b!4254602 (= c!722367 ((_ is IntegerValue!24655) (value!248194 (h!52592 tokens!592))))))

(declare-fun b!4254603 () Bool)

(declare-fun inv!16 (TokenValue!8218) Bool)

(assert (=> b!4254603 (= e!2642706 (inv!16 (value!248194 (h!52592 tokens!592))))))

(declare-fun b!4254604 () Bool)

(declare-fun res!1748943 () Bool)

(declare-fun e!2642709 () Bool)

(assert (=> b!4254604 (=> res!1748943 e!2642709)))

(assert (=> b!4254604 (= res!1748943 (not ((_ is IntegerValue!24656) (value!248194 (h!52592 tokens!592)))))))

(assert (=> b!4254604 (= e!2642710 e!2642709)))

(declare-fun b!4254605 () Bool)

(declare-fun inv!15 (TokenValue!8218) Bool)

(assert (=> b!4254605 (= e!2642709 (inv!15 (value!248194 (h!52592 tokens!592))))))

(declare-fun b!4254606 () Bool)

(declare-fun inv!17 (TokenValue!8218) Bool)

(assert (=> b!4254606 (= e!2642710 (inv!17 (value!248194 (h!52592 tokens!592))))))

(assert (= (and d!1250923 c!722366) b!4254603))

(assert (= (and d!1250923 (not c!722366)) b!4254602))

(assert (= (and b!4254602 c!722367) b!4254606))

(assert (= (and b!4254602 (not c!722367)) b!4254604))

(assert (= (and b!4254604 (not res!1748943)) b!4254605))

(declare-fun m!4839321 () Bool)

(assert (=> b!4254603 m!4839321))

(declare-fun m!4839323 () Bool)

(assert (=> b!4254605 m!4839323))

(declare-fun m!4839325 () Bool)

(assert (=> b!4254606 m!4839325))

(assert (=> b!4254370 d!1250923))

(declare-fun d!1250925 () Bool)

(assert (=> d!1250925 (= (isEmpty!27919 rules!2971) ((_ is Nil!47173) rules!2971))))

(assert (=> b!4254386 d!1250925))

(declare-fun b!4254613 () Bool)

(declare-fun e!2642720 () tuple2!44722)

(assert (=> b!4254613 (= e!2642720 (tuple2!44723 Nil!47172 shorterInput!62))))

(declare-fun b!4254614 () Bool)

(declare-fun e!2642721 () Bool)

(declare-fun e!2642719 () Bool)

(assert (=> b!4254614 (= e!2642721 e!2642719)))

(declare-fun res!1748944 () Bool)

(declare-fun lt!1509546 () tuple2!44722)

(assert (=> b!4254614 (= res!1748944 (< (size!34524 (_2!25495 lt!1509546)) (size!34524 shorterInput!62)))))

(assert (=> b!4254614 (=> (not res!1748944) (not e!2642719))))

(declare-fun b!4254615 () Bool)

(assert (=> b!4254615 (= e!2642719 (not (isEmpty!27921 (_1!25495 lt!1509546))))))

(declare-fun b!4254616 () Bool)

(assert (=> b!4254616 (= e!2642721 (= (_2!25495 lt!1509546) shorterInput!62))))

(declare-fun d!1250927 () Bool)

(assert (=> d!1250927 e!2642721))

(declare-fun c!722369 () Bool)

(assert (=> d!1250927 (= c!722369 (> (size!34525 (_1!25495 lt!1509546)) 0))))

(assert (=> d!1250927 (= lt!1509546 e!2642720)))

(declare-fun c!722368 () Bool)

(declare-fun lt!1509547 () Option!10122)

(assert (=> d!1250927 (= c!722368 ((_ is Some!10121) lt!1509547))))

(assert (=> d!1250927 (= lt!1509547 (maxPrefix!4539 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> d!1250927 (= (lexList!2089 thiss!21641 rules!2971 shorterInput!62) lt!1509546)))

(declare-fun b!4254612 () Bool)

(declare-fun lt!1509548 () tuple2!44722)

(assert (=> b!4254612 (= e!2642720 (tuple2!44723 (Cons!47172 (_1!25496 (v!41081 lt!1509547)) (_1!25495 lt!1509548)) (_2!25495 lt!1509548)))))

(assert (=> b!4254612 (= lt!1509548 (lexList!2089 thiss!21641 rules!2971 (_2!25496 (v!41081 lt!1509547))))))

(assert (= (and d!1250927 c!722368) b!4254612))

(assert (= (and d!1250927 (not c!722368)) b!4254613))

(assert (= (and d!1250927 c!722369) b!4254614))

(assert (= (and d!1250927 (not c!722369)) b!4254616))

(assert (= (and b!4254614 res!1748944) b!4254615))

(declare-fun m!4839331 () Bool)

(assert (=> b!4254614 m!4839331))

(assert (=> b!4254614 m!4839105))

(declare-fun m!4839333 () Bool)

(assert (=> b!4254615 m!4839333))

(declare-fun m!4839335 () Bool)

(assert (=> d!1250927 m!4839335))

(assert (=> d!1250927 m!4839091))

(declare-fun m!4839337 () Bool)

(assert (=> b!4254612 m!4839337))

(assert (=> b!4254372 d!1250927))

(declare-fun d!1250929 () Bool)

(assert (=> d!1250929 (= (inv!61954 (tag!8852 (h!52593 rules!2971))) (= (mod (str.len (value!248193 (tag!8852 (h!52593 rules!2971)))) 2) 0))))

(assert (=> b!4254383 d!1250929))

(declare-fun d!1250931 () Bool)

(declare-fun res!1748947 () Bool)

(declare-fun e!2642730 () Bool)

(assert (=> d!1250931 (=> (not res!1748947) (not e!2642730))))

(declare-fun semiInverseModEq!3490 (Int Int) Bool)

(assert (=> d!1250931 (= res!1748947 (semiInverseModEq!3490 (toChars!10623 (transformation!7988 (h!52593 rules!2971))) (toValue!10764 (transformation!7988 (h!52593 rules!2971)))))))

(assert (=> d!1250931 (= (inv!61958 (transformation!7988 (h!52593 rules!2971))) e!2642730)))

(declare-fun b!4254627 () Bool)

(declare-fun equivClasses!3389 (Int Int) Bool)

(assert (=> b!4254627 (= e!2642730 (equivClasses!3389 (toChars!10623 (transformation!7988 (h!52593 rules!2971))) (toValue!10764 (transformation!7988 (h!52593 rules!2971)))))))

(assert (= (and d!1250931 res!1748947) b!4254627))

(declare-fun m!4839339 () Bool)

(assert (=> d!1250931 m!4839339))

(declare-fun m!4839341 () Bool)

(assert (=> b!4254627 m!4839341))

(assert (=> b!4254383 d!1250931))

(declare-fun d!1250933 () Bool)

(declare-fun res!1748950 () Bool)

(declare-fun e!2642733 () Bool)

(assert (=> d!1250933 (=> (not res!1748950) (not e!2642733))))

(declare-fun rulesValid!3112 (LexerInterface!7583 List!47297) Bool)

(assert (=> d!1250933 (= res!1748950 (rulesValid!3112 thiss!21641 rules!2971))))

(assert (=> d!1250933 (= (rulesInvariant!6694 thiss!21641 rules!2971) e!2642733)))

(declare-fun b!4254630 () Bool)

(declare-datatypes ((List!47299 0))(
  ( (Nil!47175) (Cons!47175 (h!52595 String!55020) (t!352826 List!47299)) )
))
(declare-fun noDuplicateTag!3273 (LexerInterface!7583 List!47297 List!47299) Bool)

(assert (=> b!4254630 (= e!2642733 (noDuplicateTag!3273 thiss!21641 rules!2971 Nil!47175))))

(assert (= (and d!1250933 res!1748950) b!4254630))

(declare-fun m!4839343 () Bool)

(assert (=> d!1250933 m!4839343))

(declare-fun m!4839345 () Bool)

(assert (=> b!4254630 m!4839345))

(assert (=> b!4254379 d!1250933))

(declare-fun d!1250935 () Bool)

(assert (=> d!1250935 (= (inv!61954 (tag!8852 (rule!11124 (h!52592 tokens!592)))) (= (mod (str.len (value!248193 (tag!8852 (rule!11124 (h!52592 tokens!592))))) 2) 0))))

(assert (=> b!4254378 d!1250935))

(declare-fun d!1250937 () Bool)

(declare-fun res!1748951 () Bool)

(declare-fun e!2642734 () Bool)

(assert (=> d!1250937 (=> (not res!1748951) (not e!2642734))))

(assert (=> d!1250937 (= res!1748951 (semiInverseModEq!3490 (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) (toValue!10764 (transformation!7988 (rule!11124 (h!52592 tokens!592))))))))

(assert (=> d!1250937 (= (inv!61958 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) e!2642734)))

(declare-fun b!4254631 () Bool)

(assert (=> b!4254631 (= e!2642734 (equivClasses!3389 (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))) (toValue!10764 (transformation!7988 (rule!11124 (h!52592 tokens!592))))))))

(assert (= (and d!1250937 res!1748951) b!4254631))

(declare-fun m!4839347 () Bool)

(assert (=> d!1250937 m!4839347))

(declare-fun m!4839349 () Bool)

(assert (=> b!4254631 m!4839349))

(assert (=> b!4254378 d!1250937))

(declare-fun d!1250939 () Bool)

(assert (=> d!1250939 (= (isEmpty!27918 longerInput!62) ((_ is Nil!47171) longerInput!62))))

(assert (=> b!4254373 d!1250939))

(declare-fun b!4254636 () Bool)

(declare-fun e!2642737 () Bool)

(declare-fun tp!1305828 () Bool)

(assert (=> b!4254636 (= e!2642737 (and tp_is_empty!22777 tp!1305828))))

(assert (=> b!4254375 (= tp!1305762 e!2642737)))

(assert (= (and b!4254375 ((_ is Cons!47171) (t!352806 shorterInput!62))) b!4254636))

(declare-fun b!4254650 () Bool)

(declare-fun b_free!126611 () Bool)

(declare-fun b_next!127315 () Bool)

(assert (=> b!4254650 (= b_free!126611 (not b_next!127315))))

(declare-fun tp!1305843 () Bool)

(declare-fun b_and!337437 () Bool)

(assert (=> b!4254650 (= tp!1305843 b_and!337437)))

(declare-fun b_free!126613 () Bool)

(declare-fun b_next!127317 () Bool)

(assert (=> b!4254650 (= b_free!126613 (not b_next!127317))))

(declare-fun t!352823 () Bool)

(declare-fun tb!256703 () Bool)

(assert (=> (and b!4254650 (= (toChars!10623 (transformation!7988 (rule!11124 (h!52592 (t!352807 tokens!592))))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592))))) t!352823) tb!256703))

(declare-fun result!313128 () Bool)

(assert (= result!313128 result!313100))

(assert (=> b!4254409 t!352823))

(declare-fun b_and!337439 () Bool)

(declare-fun tp!1305839 () Bool)

(assert (=> b!4254650 (= tp!1305839 (and (=> t!352823 result!313128) b_and!337439))))

(declare-fun e!2642754 () Bool)

(declare-fun tp!1305841 () Bool)

(declare-fun b!4254648 () Bool)

(declare-fun e!2642752 () Bool)

(assert (=> b!4254648 (= e!2642754 (and (inv!21 (value!248194 (h!52592 (t!352807 tokens!592)))) e!2642752 tp!1305841))))

(declare-fun tp!1305840 () Bool)

(declare-fun e!2642750 () Bool)

(declare-fun b!4254647 () Bool)

(assert (=> b!4254647 (= e!2642750 (and (inv!61957 (h!52592 (t!352807 tokens!592))) e!2642754 tp!1305840))))

(declare-fun e!2642755 () Bool)

(assert (=> b!4254650 (= e!2642755 (and tp!1305843 tp!1305839))))

(declare-fun b!4254649 () Bool)

(declare-fun tp!1305842 () Bool)

(assert (=> b!4254649 (= e!2642752 (and tp!1305842 (inv!61954 (tag!8852 (rule!11124 (h!52592 (t!352807 tokens!592))))) (inv!61958 (transformation!7988 (rule!11124 (h!52592 (t!352807 tokens!592))))) e!2642755))))

(assert (=> b!4254374 (= tp!1305756 e!2642750)))

(assert (= b!4254649 b!4254650))

(assert (= b!4254648 b!4254649))

(assert (= b!4254647 b!4254648))

(assert (= (and b!4254374 ((_ is Cons!47172) (t!352807 tokens!592))) b!4254647))

(declare-fun m!4839351 () Bool)

(assert (=> b!4254648 m!4839351))

(declare-fun m!4839353 () Bool)

(assert (=> b!4254647 m!4839353))

(declare-fun m!4839355 () Bool)

(assert (=> b!4254649 m!4839355))

(declare-fun m!4839357 () Bool)

(assert (=> b!4254649 m!4839357))

(declare-fun b!4254661 () Bool)

(declare-fun b_free!126615 () Bool)

(declare-fun b_next!127319 () Bool)

(assert (=> b!4254661 (= b_free!126615 (not b_next!127319))))

(declare-fun tp!1305855 () Bool)

(declare-fun b_and!337441 () Bool)

(assert (=> b!4254661 (= tp!1305855 b_and!337441)))

(declare-fun b_free!126617 () Bool)

(declare-fun b_next!127321 () Bool)

(assert (=> b!4254661 (= b_free!126617 (not b_next!127321))))

(declare-fun t!352825 () Bool)

(declare-fun tb!256705 () Bool)

(assert (=> (and b!4254661 (= (toChars!10623 (transformation!7988 (h!52593 (t!352808 rules!2971)))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592))))) t!352825) tb!256705))

(declare-fun result!313132 () Bool)

(assert (= result!313132 result!313100))

(assert (=> b!4254409 t!352825))

(declare-fun b_and!337443 () Bool)

(declare-fun tp!1305853 () Bool)

(assert (=> b!4254661 (= tp!1305853 (and (=> t!352825 result!313132) b_and!337443))))

(declare-fun e!2642767 () Bool)

(assert (=> b!4254661 (= e!2642767 (and tp!1305855 tp!1305853))))

(declare-fun tp!1305852 () Bool)

(declare-fun b!4254660 () Bool)

(declare-fun e!2642766 () Bool)

(assert (=> b!4254660 (= e!2642766 (and tp!1305852 (inv!61954 (tag!8852 (h!52593 (t!352808 rules!2971)))) (inv!61958 (transformation!7988 (h!52593 (t!352808 rules!2971)))) e!2642767))))

(declare-fun b!4254659 () Bool)

(declare-fun e!2642764 () Bool)

(declare-fun tp!1305854 () Bool)

(assert (=> b!4254659 (= e!2642764 (and e!2642766 tp!1305854))))

(assert (=> b!4254376 (= tp!1305759 e!2642764)))

(assert (= b!4254660 b!4254661))

(assert (= b!4254659 b!4254660))

(assert (= (and b!4254376 ((_ is Cons!47173) (t!352808 rules!2971))) b!4254659))

(declare-fun m!4839359 () Bool)

(assert (=> b!4254660 m!4839359))

(declare-fun m!4839361 () Bool)

(assert (=> b!4254660 m!4839361))

(declare-fun b!4254662 () Bool)

(declare-fun e!2642768 () Bool)

(declare-fun tp!1305856 () Bool)

(assert (=> b!4254662 (= e!2642768 (and tp_is_empty!22777 tp!1305856))))

(assert (=> b!4254370 (= tp!1305765 e!2642768)))

(assert (= (and b!4254370 ((_ is Cons!47171) (originalCharacters!8332 (h!52592 tokens!592)))) b!4254662))

(declare-fun b!4254663 () Bool)

(declare-fun e!2642769 () Bool)

(declare-fun tp!1305857 () Bool)

(assert (=> b!4254663 (= e!2642769 (and tp_is_empty!22777 tp!1305857))))

(assert (=> b!4254381 (= tp!1305755 e!2642769)))

(assert (= (and b!4254381 ((_ is Cons!47171) (t!352806 longerInput!62))) b!4254663))

(declare-fun b!4254676 () Bool)

(declare-fun e!2642772 () Bool)

(declare-fun tp!1305869 () Bool)

(assert (=> b!4254676 (= e!2642772 tp!1305869)))

(declare-fun b!4254677 () Bool)

(declare-fun tp!1305872 () Bool)

(declare-fun tp!1305868 () Bool)

(assert (=> b!4254677 (= e!2642772 (and tp!1305872 tp!1305868))))

(declare-fun b!4254675 () Bool)

(declare-fun tp!1305870 () Bool)

(declare-fun tp!1305871 () Bool)

(assert (=> b!4254675 (= e!2642772 (and tp!1305870 tp!1305871))))

(declare-fun b!4254674 () Bool)

(assert (=> b!4254674 (= e!2642772 tp_is_empty!22777)))

(assert (=> b!4254383 (= tp!1305760 e!2642772)))

(assert (= (and b!4254383 ((_ is ElementMatch!12893) (regex!7988 (h!52593 rules!2971)))) b!4254674))

(assert (= (and b!4254383 ((_ is Concat!21112) (regex!7988 (h!52593 rules!2971)))) b!4254675))

(assert (= (and b!4254383 ((_ is Star!12893) (regex!7988 (h!52593 rules!2971)))) b!4254676))

(assert (= (and b!4254383 ((_ is Union!12893) (regex!7988 (h!52593 rules!2971)))) b!4254677))

(declare-fun b!4254678 () Bool)

(declare-fun e!2642773 () Bool)

(declare-fun tp!1305873 () Bool)

(assert (=> b!4254678 (= e!2642773 (and tp_is_empty!22777 tp!1305873))))

(assert (=> b!4254377 (= tp!1305763 e!2642773)))

(assert (= (and b!4254377 ((_ is Cons!47171) (t!352806 suffix!1284))) b!4254678))

(declare-fun b!4254681 () Bool)

(declare-fun e!2642774 () Bool)

(declare-fun tp!1305875 () Bool)

(assert (=> b!4254681 (= e!2642774 tp!1305875)))

(declare-fun b!4254682 () Bool)

(declare-fun tp!1305878 () Bool)

(declare-fun tp!1305874 () Bool)

(assert (=> b!4254682 (= e!2642774 (and tp!1305878 tp!1305874))))

(declare-fun b!4254680 () Bool)

(declare-fun tp!1305876 () Bool)

(declare-fun tp!1305877 () Bool)

(assert (=> b!4254680 (= e!2642774 (and tp!1305876 tp!1305877))))

(declare-fun b!4254679 () Bool)

(assert (=> b!4254679 (= e!2642774 tp_is_empty!22777)))

(assert (=> b!4254378 (= tp!1305761 e!2642774)))

(assert (= (and b!4254378 ((_ is ElementMatch!12893) (regex!7988 (rule!11124 (h!52592 tokens!592))))) b!4254679))

(assert (= (and b!4254378 ((_ is Concat!21112) (regex!7988 (rule!11124 (h!52592 tokens!592))))) b!4254680))

(assert (= (and b!4254378 ((_ is Star!12893) (regex!7988 (rule!11124 (h!52592 tokens!592))))) b!4254681))

(assert (= (and b!4254378 ((_ is Union!12893) (regex!7988 (rule!11124 (h!52592 tokens!592))))) b!4254682))

(declare-fun b_lambda!125337 () Bool)

(assert (= b_lambda!125331 (or (and b!4254384 b_free!126597 (= (toChars!10623 (transformation!7988 (h!52593 rules!2971))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))))) (and b!4254382 b_free!126601) (and b!4254650 b_free!126613 (= (toChars!10623 (transformation!7988 (rule!11124 (h!52592 (t!352807 tokens!592))))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))))) (and b!4254661 b_free!126617 (= (toChars!10623 (transformation!7988 (h!52593 (t!352808 rules!2971)))) (toChars!10623 (transformation!7988 (rule!11124 (h!52592 tokens!592)))))) b_lambda!125337)))

(check-sat (not bm!294033) (not b!4254606) (not d!1250933) (not b!4254630) (not b!4254489) (not b!4254507) (not b_next!127301) (not b!4254502) tp_is_empty!22777 (not b!4254508) (not d!1250911) (not b!4254503) (not b!4254612) (not bm!294032) (not b!4254681) (not b!4254627) (not b_next!127317) (not b_next!127319) (not b_next!127315) (not b!4254548) (not b_lambda!125337) b_and!337413 b_and!337421 (not d!1250889) (not b!4254675) (not d!1250887) (not b!4254485) (not b!4254484) (not b!4254402) (not b!4254662) (not b!4254660) b_and!337439 (not b!4254410) (not b!4254680) (not b!4254415) b_and!337423 (not b!4254659) (not b!4254663) (not b_next!127299) (not d!1250931) (not b!4254678) (not b!4254504) (not b!4254506) (not b!4254649) b_and!337417 (not d!1250937) (not b!4254636) (not b!4254682) (not tb!256691) (not b!4254615) (not d!1250881) (not b!4254482) (not b!4254400) (not b!4254603) (not b!4254509) (not b_next!127303) (not b!4254605) (not b!4254676) (not b!4254614) (not b!4254490) (not b!4254647) (not b!4254631) b_and!337443 (not b!4254648) (not b!4254488) (not b!4254409) (not b_next!127321) (not b!4254487) (not b!4254501) b_and!337441 (not b!4254483) (not b!4254677) b_and!337437 (not d!1250927) (not b!4254403) (not b!4254546) (not b_next!127305))
(check-sat (not b_next!127301) b_and!337439 b_and!337423 (not b_next!127299) b_and!337417 (not b_next!127303) b_and!337443 (not b_next!127321) b_and!337441 b_and!337437 (not b_next!127305) (not b_next!127317) (not b_next!127319) (not b_next!127315) b_and!337413 b_and!337421)
