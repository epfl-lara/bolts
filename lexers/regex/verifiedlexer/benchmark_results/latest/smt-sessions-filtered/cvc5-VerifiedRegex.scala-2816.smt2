; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!157220 () Bool)

(assert start!157220)

(declare-fun b!1642444 () Bool)

(declare-fun b_free!44527 () Bool)

(declare-fun b_next!45231 () Bool)

(assert (=> b!1642444 (= b_free!44527 (not b_next!45231))))

(declare-fun tp!475985 () Bool)

(declare-fun b_and!116469 () Bool)

(assert (=> b!1642444 (= tp!475985 b_and!116469)))

(declare-fun b_free!44529 () Bool)

(declare-fun b_next!45233 () Bool)

(assert (=> b!1642444 (= b_free!44529 (not b_next!45233))))

(declare-fun tp!475987 () Bool)

(declare-fun b_and!116471 () Bool)

(assert (=> b!1642444 (= tp!475987 b_and!116471)))

(declare-fun b!1642455 () Bool)

(declare-fun b_free!44531 () Bool)

(declare-fun b_next!45235 () Bool)

(assert (=> b!1642455 (= b_free!44531 (not b_next!45235))))

(declare-fun tp!475983 () Bool)

(declare-fun b_and!116473 () Bool)

(assert (=> b!1642455 (= tp!475983 b_and!116473)))

(declare-fun b_free!44533 () Bool)

(declare-fun b_next!45237 () Bool)

(assert (=> b!1642455 (= b_free!44533 (not b_next!45237))))

(declare-fun tp!475981 () Bool)

(declare-fun b_and!116475 () Bool)

(assert (=> b!1642455 (= tp!475981 b_and!116475)))

(declare-fun e!1053332 () Bool)

(assert (=> b!1642444 (= e!1053332 (and tp!475985 tp!475987))))

(declare-fun b!1642445 () Bool)

(declare-fun e!1053334 () Bool)

(declare-fun e!1053327 () Bool)

(assert (=> b!1642445 (= e!1053334 (not e!1053327))))

(declare-fun res!735843 () Bool)

(assert (=> b!1642445 (=> res!735843 e!1053327)))

(declare-datatypes ((List!18171 0))(
  ( (Nil!18101) (Cons!18101 (h!23502 (_ BitVec 16)) (t!150136 List!18171)) )
))
(declare-datatypes ((TokenValue!3282 0))(
  ( (FloatLiteralValue!6564 (text!23419 List!18171)) (TokenValueExt!3281 (__x!11866 Int)) (Broken!16410 (value!100620 List!18171)) (Object!3351) (End!3282) (Def!3282) (Underscore!3282) (Match!3282) (Else!3282) (Error!3282) (Case!3282) (If!3282) (Extends!3282) (Abstract!3282) (Class!3282) (Val!3282) (DelimiterValue!6564 (del!3342 List!18171)) (KeywordValue!3288 (value!100621 List!18171)) (CommentValue!6564 (value!100622 List!18171)) (WhitespaceValue!6564 (value!100623 List!18171)) (IndentationValue!3282 (value!100624 List!18171)) (String!20743) (Int32!3282) (Broken!16411 (value!100625 List!18171)) (Boolean!3283) (Unit!29836) (OperatorValue!3285 (op!3342 List!18171)) (IdentifierValue!6564 (value!100626 List!18171)) (IdentifierValue!6565 (value!100627 List!18171)) (WhitespaceValue!6565 (value!100628 List!18171)) (True!6564) (False!6564) (Broken!16412 (value!100629 List!18171)) (Broken!16413 (value!100630 List!18171)) (True!6565) (RightBrace!3282) (RightBracket!3282) (Colon!3282) (Null!3282) (Comma!3282) (LeftBracket!3282) (False!6565) (LeftBrace!3282) (ImaginaryLiteralValue!3282 (text!23420 List!18171)) (StringLiteralValue!9846 (value!100631 List!18171)) (EOFValue!3282 (value!100632 List!18171)) (IdentValue!3282 (value!100633 List!18171)) (DelimiterValue!6565 (value!100634 List!18171)) (DedentValue!3282 (value!100635 List!18171)) (NewLineValue!3282 (value!100636 List!18171)) (IntegerValue!9846 (value!100637 (_ BitVec 32)) (text!23421 List!18171)) (IntegerValue!9847 (value!100638 Int) (text!23422 List!18171)) (Times!3282) (Or!3282) (Equal!3282) (Minus!3282) (Broken!16414 (value!100639 List!18171)) (And!3282) (Div!3282) (LessEqual!3282) (Mod!3282) (Concat!7802) (Not!3282) (Plus!3282) (SpaceValue!3282 (value!100640 List!18171)) (IntegerValue!9848 (value!100641 Int) (text!23423 List!18171)) (StringLiteralValue!9847 (text!23424 List!18171)) (FloatLiteralValue!6565 (text!23425 List!18171)) (BytesLiteralValue!3282 (value!100642 List!18171)) (CommentValue!6565 (value!100643 List!18171)) (StringLiteralValue!9848 (value!100644 List!18171)) (ErrorTokenValue!3282 (msg!3343 List!18171)) )
))
(declare-datatypes ((C!9214 0))(
  ( (C!9215 (val!5203 Int)) )
))
(declare-datatypes ((List!18172 0))(
  ( (Nil!18102) (Cons!18102 (h!23503 C!9214) (t!150137 List!18172)) )
))
(declare-datatypes ((IArray!12069 0))(
  ( (IArray!12070 (innerList!6092 List!18172)) )
))
(declare-datatypes ((Conc!6032 0))(
  ( (Node!6032 (left!14514 Conc!6032) (right!14844 Conc!6032) (csize!12294 Int) (cheight!6243 Int)) (Leaf!8849 (xs!8868 IArray!12069) (csize!12295 Int)) (Empty!6032) )
))
(declare-datatypes ((BalanceConc!12008 0))(
  ( (BalanceConc!12009 (c!267127 Conc!6032)) )
))
(declare-datatypes ((Regex!4520 0))(
  ( (ElementMatch!4520 (c!267128 C!9214)) (Concat!7803 (regOne!9552 Regex!4520) (regTwo!9552 Regex!4520)) (EmptyExpr!4520) (Star!4520 (reg!4849 Regex!4520)) (EmptyLang!4520) (Union!4520 (regOne!9553 Regex!4520) (regTwo!9553 Regex!4520)) )
))
(declare-datatypes ((String!20744 0))(
  ( (String!20745 (value!100645 String)) )
))
(declare-datatypes ((TokenValueInjection!6224 0))(
  ( (TokenValueInjection!6225 (toValue!4631 Int) (toChars!4490 Int)) )
))
(declare-datatypes ((Rule!6184 0))(
  ( (Rule!6185 (regex!3192 Regex!4520) (tag!3472 String!20744) (isSeparator!3192 Bool) (transformation!3192 TokenValueInjection!6224)) )
))
(declare-datatypes ((Token!5950 0))(
  ( (Token!5951 (value!100646 TokenValue!3282) (rule!5042 Rule!6184) (size!14419 Int) (originalCharacters!4006 List!18172)) )
))
(declare-datatypes ((List!18173 0))(
  ( (Nil!18103) (Cons!18103 (h!23504 Token!5950) (t!150138 List!18173)) )
))
(declare-fun lt!604664 () List!18173)

(declare-fun tokens!457 () List!18173)

(assert (=> b!1642445 (= res!735843 (not (= lt!604664 (t!150138 tokens!457))))))

(declare-datatypes ((IArray!12071 0))(
  ( (IArray!12072 (innerList!6093 List!18173)) )
))
(declare-datatypes ((Conc!6033 0))(
  ( (Node!6033 (left!14515 Conc!6033) (right!14845 Conc!6033) (csize!12296 Int) (cheight!6244 Int)) (Leaf!8850 (xs!8869 IArray!12071) (csize!12297 Int)) (Empty!6033) )
))
(declare-datatypes ((BalanceConc!12010 0))(
  ( (BalanceConc!12011 (c!267129 Conc!6033)) )
))
(declare-datatypes ((tuple2!17756 0))(
  ( (tuple2!17757 (_1!10280 BalanceConc!12010) (_2!10280 BalanceConc!12008)) )
))
(declare-fun lt!604661 () tuple2!17756)

(declare-fun list!7163 (BalanceConc!12010) List!18173)

(assert (=> b!1642445 (= lt!604664 (list!7163 (_1!10280 lt!604661)))))

(declare-datatypes ((Unit!29837 0))(
  ( (Unit!29838) )
))
(declare-fun lt!604668 () Unit!29837)

(declare-datatypes ((List!18174 0))(
  ( (Nil!18104) (Cons!18104 (h!23505 Rule!6184) (t!150139 List!18174)) )
))
(declare-fun rules!1846 () List!18174)

(declare-datatypes ((LexerInterface!2821 0))(
  ( (LexerInterfaceExt!2818 (__x!11867 Int)) (Lexer!2819) )
))
(declare-fun thiss!17113 () LexerInterface!2821)

(declare-fun theoremInvertabilityWhenTokenListSeparable!264 (LexerInterface!2821 List!18174 List!18173) Unit!29837)

(assert (=> b!1642445 (= lt!604668 (theoremInvertabilityWhenTokenListSeparable!264 thiss!17113 rules!1846 (t!150138 tokens!457)))))

(declare-fun lt!604670 () List!18172)

(declare-fun lt!604672 () List!18172)

(declare-fun isPrefix!1450 (List!18172 List!18172) Bool)

(assert (=> b!1642445 (isPrefix!1450 lt!604670 lt!604672)))

(declare-fun lt!604663 () Unit!29837)

(declare-fun lt!604662 () List!18172)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!975 (List!18172 List!18172) Unit!29837)

(assert (=> b!1642445 (= lt!604663 (lemmaConcatTwoListThenFirstIsPrefix!975 lt!604670 lt!604662))))

(declare-fun b!1642446 () Bool)

(declare-fun res!735838 () Bool)

(declare-fun e!1053326 () Bool)

(assert (=> b!1642446 (=> (not res!735838) (not e!1053326))))

(declare-fun rulesInvariant!2490 (LexerInterface!2821 List!18174) Bool)

(assert (=> b!1642446 (= res!735838 (rulesInvariant!2490 thiss!17113 rules!1846))))

(declare-fun b!1642447 () Bool)

(assert (=> b!1642447 (= e!1053326 e!1053334)))

(declare-fun res!735841 () Bool)

(assert (=> b!1642447 (=> (not res!735841) (not e!1053334))))

(declare-fun lt!604669 () List!18172)

(assert (=> b!1642447 (= res!735841 (= lt!604669 lt!604672))))

(declare-fun ++!4869 (List!18172 List!18172) List!18172)

(assert (=> b!1642447 (= lt!604672 (++!4869 lt!604670 lt!604662))))

(declare-fun lt!604667 () BalanceConc!12008)

(declare-fun list!7164 (BalanceConc!12008) List!18172)

(assert (=> b!1642447 (= lt!604669 (list!7164 lt!604667))))

(declare-fun lt!604665 () BalanceConc!12008)

(assert (=> b!1642447 (= lt!604662 (list!7164 lt!604665))))

(declare-fun charsOf!1841 (Token!5950) BalanceConc!12008)

(assert (=> b!1642447 (= lt!604670 (list!7164 (charsOf!1841 (h!23504 tokens!457))))))

(declare-fun lex!1305 (LexerInterface!2821 List!18174 BalanceConc!12008) tuple2!17756)

(assert (=> b!1642447 (= lt!604661 (lex!1305 thiss!17113 rules!1846 lt!604665))))

(declare-fun lt!604671 () BalanceConc!12010)

(declare-fun print!1352 (LexerInterface!2821 BalanceConc!12010) BalanceConc!12008)

(assert (=> b!1642447 (= lt!604665 (print!1352 thiss!17113 lt!604671))))

(declare-fun seqFromList!2127 (List!18173) BalanceConc!12010)

(assert (=> b!1642447 (= lt!604671 (seqFromList!2127 (t!150138 tokens!457)))))

(assert (=> b!1642447 (= lt!604667 (print!1352 thiss!17113 (seqFromList!2127 tokens!457)))))

(declare-fun e!1053328 () Bool)

(declare-fun b!1642448 () Bool)

(declare-fun separableTokensPredicate!761 (LexerInterface!2821 Token!5950 Token!5950 List!18174) Bool)

(assert (=> b!1642448 (= e!1053328 (separableTokensPredicate!761 thiss!17113 (h!23504 tokens!457) (h!23504 (t!150138 tokens!457)) rules!1846))))

(declare-fun b!1642449 () Bool)

(declare-fun e!1053331 () Bool)

(declare-fun e!1053336 () Bool)

(declare-fun tp!475988 () Bool)

(declare-fun inv!23460 (Token!5950) Bool)

(assert (=> b!1642449 (= e!1053336 (and (inv!23460 (h!23504 tokens!457)) e!1053331 tp!475988))))

(declare-fun b!1642450 () Bool)

(declare-fun res!735842 () Bool)

(assert (=> b!1642450 (=> (not res!735842) (not e!1053326))))

(assert (=> b!1642450 (= res!735842 (and (not (is-Nil!18103 tokens!457)) (not (is-Nil!18103 (t!150138 tokens!457)))))))

(declare-fun b!1642451 () Bool)

(declare-fun res!735839 () Bool)

(assert (=> b!1642451 (=> (not res!735839) (not e!1053326))))

(declare-fun rulesProduceEachTokenIndividuallyList!1023 (LexerInterface!2821 List!18174 List!18173) Bool)

(assert (=> b!1642451 (= res!735839 (rulesProduceEachTokenIndividuallyList!1023 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1642452 () Bool)

(declare-fun res!735845 () Bool)

(assert (=> b!1642452 (=> (not res!735845) (not e!1053326))))

(declare-fun isEmpty!11132 (List!18174) Bool)

(assert (=> b!1642452 (= res!735845 (not (isEmpty!11132 rules!1846)))))

(declare-fun b!1642453 () Bool)

(declare-fun e!1053337 () Bool)

(declare-fun e!1053329 () Bool)

(declare-fun tp!475986 () Bool)

(assert (=> b!1642453 (= e!1053337 (and e!1053329 tp!475986))))

(declare-fun tp!475984 () Bool)

(declare-fun e!1053325 () Bool)

(declare-fun e!1053333 () Bool)

(declare-fun b!1642443 () Bool)

(declare-fun inv!23457 (String!20744) Bool)

(declare-fun inv!23461 (TokenValueInjection!6224) Bool)

(assert (=> b!1642443 (= e!1053325 (and tp!475984 (inv!23457 (tag!3472 (rule!5042 (h!23504 tokens!457)))) (inv!23461 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) e!1053333))))

(declare-fun res!735846 () Bool)

(assert (=> start!157220 (=> (not res!735846) (not e!1053326))))

(assert (=> start!157220 (= res!735846 (is-Lexer!2819 thiss!17113))))

(assert (=> start!157220 e!1053326))

(assert (=> start!157220 true))

(assert (=> start!157220 e!1053337))

(assert (=> start!157220 e!1053336))

(declare-fun b!1642454 () Bool)

(declare-fun res!735844 () Bool)

(assert (=> b!1642454 (=> (not res!735844) (not e!1053326))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!514 (LexerInterface!2821 List!18173 List!18174) Bool)

(assert (=> b!1642454 (= res!735844 (tokensListTwoByTwoPredicateSeparableList!514 thiss!17113 tokens!457 rules!1846))))

(assert (=> b!1642455 (= e!1053333 (and tp!475983 tp!475981))))

(declare-fun b!1642456 () Bool)

(assert (=> b!1642456 (= e!1053327 e!1053328)))

(declare-fun res!735840 () Bool)

(assert (=> b!1642456 (=> res!735840 e!1053328)))

(declare-fun lt!604666 () List!18173)

(declare-fun lt!604660 () List!18173)

(assert (=> b!1642456 (= res!735840 (or (not (= lt!604664 lt!604666)) (not (= lt!604666 lt!604660))))))

(assert (=> b!1642456 (= lt!604666 (list!7163 lt!604671))))

(assert (=> b!1642456 (= lt!604664 lt!604660)))

(declare-fun prepend!740 (BalanceConc!12010 Token!5950) BalanceConc!12010)

(assert (=> b!1642456 (= lt!604660 (list!7163 (prepend!740 (seqFromList!2127 (t!150138 (t!150138 tokens!457))) (h!23504 (t!150138 tokens!457)))))))

(declare-fun lt!604659 () Unit!29837)

(declare-fun seqFromListBHdTlConstructive!267 (Token!5950 List!18173 BalanceConc!12010) Unit!29837)

(assert (=> b!1642456 (= lt!604659 (seqFromListBHdTlConstructive!267 (h!23504 (t!150138 tokens!457)) (t!150138 (t!150138 tokens!457)) (_1!10280 lt!604661)))))

(declare-fun b!1642457 () Bool)

(declare-fun tp!475989 () Bool)

(declare-fun inv!21 (TokenValue!3282) Bool)

(assert (=> b!1642457 (= e!1053331 (and (inv!21 (value!100646 (h!23504 tokens!457))) e!1053325 tp!475989))))

(declare-fun tp!475982 () Bool)

(declare-fun b!1642458 () Bool)

(assert (=> b!1642458 (= e!1053329 (and tp!475982 (inv!23457 (tag!3472 (h!23505 rules!1846))) (inv!23461 (transformation!3192 (h!23505 rules!1846))) e!1053332))))

(assert (= (and start!157220 res!735846) b!1642452))

(assert (= (and b!1642452 res!735845) b!1642446))

(assert (= (and b!1642446 res!735838) b!1642451))

(assert (= (and b!1642451 res!735839) b!1642454))

(assert (= (and b!1642454 res!735844) b!1642450))

(assert (= (and b!1642450 res!735842) b!1642447))

(assert (= (and b!1642447 res!735841) b!1642445))

(assert (= (and b!1642445 (not res!735843)) b!1642456))

(assert (= (and b!1642456 (not res!735840)) b!1642448))

(assert (= b!1642458 b!1642444))

(assert (= b!1642453 b!1642458))

(assert (= (and start!157220 (is-Cons!18104 rules!1846)) b!1642453))

(assert (= b!1642443 b!1642455))

(assert (= b!1642457 b!1642443))

(assert (= b!1642449 b!1642457))

(assert (= (and start!157220 (is-Cons!18103 tokens!457)) b!1642449))

(declare-fun m!1984193 () Bool)

(assert (=> b!1642452 m!1984193))

(declare-fun m!1984195 () Bool)

(assert (=> b!1642454 m!1984195))

(declare-fun m!1984197 () Bool)

(assert (=> b!1642451 m!1984197))

(declare-fun m!1984199 () Bool)

(assert (=> b!1642457 m!1984199))

(declare-fun m!1984201 () Bool)

(assert (=> b!1642447 m!1984201))

(declare-fun m!1984203 () Bool)

(assert (=> b!1642447 m!1984203))

(declare-fun m!1984205 () Bool)

(assert (=> b!1642447 m!1984205))

(declare-fun m!1984207 () Bool)

(assert (=> b!1642447 m!1984207))

(declare-fun m!1984209 () Bool)

(assert (=> b!1642447 m!1984209))

(declare-fun m!1984211 () Bool)

(assert (=> b!1642447 m!1984211))

(assert (=> b!1642447 m!1984201))

(declare-fun m!1984213 () Bool)

(assert (=> b!1642447 m!1984213))

(declare-fun m!1984215 () Bool)

(assert (=> b!1642447 m!1984215))

(declare-fun m!1984217 () Bool)

(assert (=> b!1642447 m!1984217))

(declare-fun m!1984219 () Bool)

(assert (=> b!1642447 m!1984219))

(assert (=> b!1642447 m!1984205))

(declare-fun m!1984221 () Bool)

(assert (=> b!1642445 m!1984221))

(declare-fun m!1984223 () Bool)

(assert (=> b!1642445 m!1984223))

(declare-fun m!1984225 () Bool)

(assert (=> b!1642445 m!1984225))

(declare-fun m!1984227 () Bool)

(assert (=> b!1642445 m!1984227))

(declare-fun m!1984229 () Bool)

(assert (=> b!1642443 m!1984229))

(declare-fun m!1984231 () Bool)

(assert (=> b!1642443 m!1984231))

(declare-fun m!1984233 () Bool)

(assert (=> b!1642456 m!1984233))

(declare-fun m!1984235 () Bool)

(assert (=> b!1642456 m!1984235))

(declare-fun m!1984237 () Bool)

(assert (=> b!1642456 m!1984237))

(declare-fun m!1984239 () Bool)

(assert (=> b!1642456 m!1984239))

(declare-fun m!1984241 () Bool)

(assert (=> b!1642456 m!1984241))

(assert (=> b!1642456 m!1984237))

(assert (=> b!1642456 m!1984239))

(declare-fun m!1984243 () Bool)

(assert (=> b!1642446 m!1984243))

(declare-fun m!1984245 () Bool)

(assert (=> b!1642458 m!1984245))

(declare-fun m!1984247 () Bool)

(assert (=> b!1642458 m!1984247))

(declare-fun m!1984249 () Bool)

(assert (=> b!1642448 m!1984249))

(declare-fun m!1984251 () Bool)

(assert (=> b!1642449 m!1984251))

(push 1)

(assert (not b!1642449))

(assert (not b_next!45237))

(assert (not b!1642446))

(assert (not b_next!45231))

(assert (not b!1642448))

(assert (not b!1642451))

(assert b_and!116475)

(assert (not b!1642458))

(assert (not b!1642454))

(assert (not b!1642443))

(assert (not b!1642445))

(assert b_and!116473)

(assert (not b_next!45235))

(assert (not b!1642457))

(assert b_and!116471)

(assert (not b!1642447))

(assert (not b_next!45233))

(assert b_and!116469)

(assert (not b!1642456))

(assert (not b!1642452))

(assert (not b!1642453))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!45237))

(assert (not b_next!45231))

(assert b_and!116471)

(assert (not b_next!45233))

(assert b_and!116475)

(assert b_and!116469)

(assert b_and!116473)

(assert (not b_next!45235))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!494527 () Bool)

(declare-fun res!735881 () Bool)

(declare-fun e!1053383 () Bool)

(assert (=> d!494527 (=> (not res!735881) (not e!1053383))))

(declare-fun isEmpty!11134 (List!18172) Bool)

(assert (=> d!494527 (= res!735881 (not (isEmpty!11134 (originalCharacters!4006 (h!23504 tokens!457)))))))

(assert (=> d!494527 (= (inv!23460 (h!23504 tokens!457)) e!1053383)))

(declare-fun b!1642511 () Bool)

(declare-fun res!735882 () Bool)

(assert (=> b!1642511 (=> (not res!735882) (not e!1053383))))

(declare-fun dynLambda!8078 (Int TokenValue!3282) BalanceConc!12008)

(assert (=> b!1642511 (= res!735882 (= (originalCharacters!4006 (h!23504 tokens!457)) (list!7164 (dynLambda!8078 (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (value!100646 (h!23504 tokens!457))))))))

(declare-fun b!1642512 () Bool)

(declare-fun size!14421 (List!18172) Int)

(assert (=> b!1642512 (= e!1053383 (= (size!14419 (h!23504 tokens!457)) (size!14421 (originalCharacters!4006 (h!23504 tokens!457)))))))

(assert (= (and d!494527 res!735881) b!1642511))

(assert (= (and b!1642511 res!735882) b!1642512))

(declare-fun b_lambda!51613 () Bool)

(assert (=> (not b_lambda!51613) (not b!1642511)))

(declare-fun t!150145 () Bool)

(declare-fun tb!94015 () Bool)

(assert (=> (and b!1642444 (= (toChars!4490 (transformation!3192 (h!23505 rules!1846))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457))))) t!150145) tb!94015))

(declare-fun b!1642517 () Bool)

(declare-fun e!1053386 () Bool)

(declare-fun tp!476019 () Bool)

(declare-fun inv!23464 (Conc!6032) Bool)

(assert (=> b!1642517 (= e!1053386 (and (inv!23464 (c!267127 (dynLambda!8078 (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (value!100646 (h!23504 tokens!457))))) tp!476019))))

(declare-fun result!113510 () Bool)

(declare-fun inv!23465 (BalanceConc!12008) Bool)

(assert (=> tb!94015 (= result!113510 (and (inv!23465 (dynLambda!8078 (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (value!100646 (h!23504 tokens!457)))) e!1053386))))

(assert (= tb!94015 b!1642517))

(declare-fun m!1984313 () Bool)

(assert (=> b!1642517 m!1984313))

(declare-fun m!1984315 () Bool)

(assert (=> tb!94015 m!1984315))

(assert (=> b!1642511 t!150145))

(declare-fun b_and!116485 () Bool)

(assert (= b_and!116471 (and (=> t!150145 result!113510) b_and!116485)))

(declare-fun t!150147 () Bool)

(declare-fun tb!94017 () Bool)

(assert (=> (and b!1642455 (= (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457))))) t!150147) tb!94017))

(declare-fun result!113514 () Bool)

(assert (= result!113514 result!113510))

(assert (=> b!1642511 t!150147))

(declare-fun b_and!116487 () Bool)

(assert (= b_and!116475 (and (=> t!150147 result!113514) b_and!116487)))

(declare-fun m!1984317 () Bool)

(assert (=> d!494527 m!1984317))

(declare-fun m!1984319 () Bool)

(assert (=> b!1642511 m!1984319))

(assert (=> b!1642511 m!1984319))

(declare-fun m!1984321 () Bool)

(assert (=> b!1642511 m!1984321))

(declare-fun m!1984323 () Bool)

(assert (=> b!1642512 m!1984323))

(assert (=> b!1642449 d!494527))

(declare-fun d!494529 () Bool)

(declare-fun prefixMatchZipperSequence!596 (Regex!4520 BalanceConc!12008) Bool)

(declare-fun rulesRegex!578 (LexerInterface!2821 List!18174) Regex!4520)

(declare-fun ++!4871 (BalanceConc!12008 BalanceConc!12008) BalanceConc!12008)

(declare-fun singletonSeq!1658 (C!9214) BalanceConc!12008)

(declare-fun apply!4719 (BalanceConc!12008 Int) C!9214)

(assert (=> d!494529 (= (separableTokensPredicate!761 thiss!17113 (h!23504 tokens!457) (h!23504 (t!150138 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!596 (rulesRegex!578 thiss!17113 rules!1846) (++!4871 (charsOf!1841 (h!23504 tokens!457)) (singletonSeq!1658 (apply!4719 (charsOf!1841 (h!23504 (t!150138 tokens!457))) 0))))))))

(declare-fun bs!395798 () Bool)

(assert (= bs!395798 d!494529))

(declare-fun m!1984325 () Bool)

(assert (=> bs!395798 m!1984325))

(declare-fun m!1984327 () Bool)

(assert (=> bs!395798 m!1984327))

(declare-fun m!1984329 () Bool)

(assert (=> bs!395798 m!1984329))

(assert (=> bs!395798 m!1984201))

(declare-fun m!1984331 () Bool)

(assert (=> bs!395798 m!1984331))

(assert (=> bs!395798 m!1984327))

(assert (=> bs!395798 m!1984201))

(declare-fun m!1984333 () Bool)

(assert (=> bs!395798 m!1984333))

(assert (=> bs!395798 m!1984331))

(declare-fun m!1984335 () Bool)

(assert (=> bs!395798 m!1984335))

(assert (=> bs!395798 m!1984335))

(assert (=> bs!395798 m!1984333))

(assert (=> bs!395798 m!1984325))

(assert (=> b!1642448 d!494529))

(declare-fun d!494531 () Bool)

(declare-fun lt!604717 () BalanceConc!12008)

(declare-fun printList!934 (LexerInterface!2821 List!18173) List!18172)

(assert (=> d!494531 (= (list!7164 lt!604717) (printList!934 thiss!17113 (list!7163 (seqFromList!2127 tokens!457))))))

(declare-fun printTailRec!872 (LexerInterface!2821 BalanceConc!12010 Int BalanceConc!12008) BalanceConc!12008)

(assert (=> d!494531 (= lt!604717 (printTailRec!872 thiss!17113 (seqFromList!2127 tokens!457) 0 (BalanceConc!12009 Empty!6032)))))

(assert (=> d!494531 (= (print!1352 thiss!17113 (seqFromList!2127 tokens!457)) lt!604717)))

(declare-fun bs!395799 () Bool)

(assert (= bs!395799 d!494531))

(declare-fun m!1984337 () Bool)

(assert (=> bs!395799 m!1984337))

(assert (=> bs!395799 m!1984205))

(declare-fun m!1984339 () Bool)

(assert (=> bs!395799 m!1984339))

(assert (=> bs!395799 m!1984339))

(declare-fun m!1984341 () Bool)

(assert (=> bs!395799 m!1984341))

(assert (=> bs!395799 m!1984205))

(declare-fun m!1984343 () Bool)

(assert (=> bs!395799 m!1984343))

(assert (=> b!1642447 d!494531))

(declare-fun d!494533 () Bool)

(declare-fun lt!604718 () BalanceConc!12008)

(assert (=> d!494533 (= (list!7164 lt!604718) (printList!934 thiss!17113 (list!7163 lt!604671)))))

(assert (=> d!494533 (= lt!604718 (printTailRec!872 thiss!17113 lt!604671 0 (BalanceConc!12009 Empty!6032)))))

(assert (=> d!494533 (= (print!1352 thiss!17113 lt!604671) lt!604718)))

(declare-fun bs!395800 () Bool)

(assert (= bs!395800 d!494533))

(declare-fun m!1984345 () Bool)

(assert (=> bs!395800 m!1984345))

(assert (=> bs!395800 m!1984235))

(assert (=> bs!395800 m!1984235))

(declare-fun m!1984347 () Bool)

(assert (=> bs!395800 m!1984347))

(declare-fun m!1984349 () Bool)

(assert (=> bs!395800 m!1984349))

(assert (=> b!1642447 d!494533))

(declare-fun b!1642539 () Bool)

(declare-fun e!1053399 () Bool)

(declare-fun lt!604721 () tuple2!17756)

(assert (=> b!1642539 (= e!1053399 (= (_2!10280 lt!604721) lt!604665))))

(declare-fun b!1642540 () Bool)

(declare-fun e!1053401 () Bool)

(declare-fun isEmpty!11135 (BalanceConc!12010) Bool)

(assert (=> b!1642540 (= e!1053401 (not (isEmpty!11135 (_1!10280 lt!604721))))))

(declare-fun d!494535 () Bool)

(declare-fun e!1053400 () Bool)

(assert (=> d!494535 e!1053400))

(declare-fun res!735899 () Bool)

(assert (=> d!494535 (=> (not res!735899) (not e!1053400))))

(assert (=> d!494535 (= res!735899 e!1053399)))

(declare-fun c!267136 () Bool)

(declare-fun size!14422 (BalanceConc!12010) Int)

(assert (=> d!494535 (= c!267136 (> (size!14422 (_1!10280 lt!604721)) 0))))

(declare-fun lexTailRecV2!577 (LexerInterface!2821 List!18174 BalanceConc!12008 BalanceConc!12008 BalanceConc!12008 BalanceConc!12010) tuple2!17756)

(assert (=> d!494535 (= lt!604721 (lexTailRecV2!577 thiss!17113 rules!1846 lt!604665 (BalanceConc!12009 Empty!6032) lt!604665 (BalanceConc!12011 Empty!6033)))))

(assert (=> d!494535 (= (lex!1305 thiss!17113 rules!1846 lt!604665) lt!604721)))

(declare-fun b!1642541 () Bool)

(declare-datatypes ((tuple2!17760 0))(
  ( (tuple2!17761 (_1!10282 List!18173) (_2!10282 List!18172)) )
))
(declare-fun lexList!854 (LexerInterface!2821 List!18174 List!18172) tuple2!17760)

(assert (=> b!1642541 (= e!1053400 (= (list!7164 (_2!10280 lt!604721)) (_2!10282 (lexList!854 thiss!17113 rules!1846 (list!7164 lt!604665)))))))

(declare-fun b!1642542 () Bool)

(declare-fun res!735900 () Bool)

(assert (=> b!1642542 (=> (not res!735900) (not e!1053400))))

(assert (=> b!1642542 (= res!735900 (= (list!7163 (_1!10280 lt!604721)) (_1!10282 (lexList!854 thiss!17113 rules!1846 (list!7164 lt!604665)))))))

(declare-fun b!1642543 () Bool)

(assert (=> b!1642543 (= e!1053399 e!1053401)))

(declare-fun res!735901 () Bool)

(declare-fun size!14423 (BalanceConc!12008) Int)

(assert (=> b!1642543 (= res!735901 (< (size!14423 (_2!10280 lt!604721)) (size!14423 lt!604665)))))

(assert (=> b!1642543 (=> (not res!735901) (not e!1053401))))

(assert (= (and d!494535 c!267136) b!1642543))

(assert (= (and d!494535 (not c!267136)) b!1642539))

(assert (= (and b!1642543 res!735901) b!1642540))

(assert (= (and d!494535 res!735899) b!1642542))

(assert (= (and b!1642542 res!735900) b!1642541))

(declare-fun m!1984365 () Bool)

(assert (=> b!1642542 m!1984365))

(assert (=> b!1642542 m!1984219))

(assert (=> b!1642542 m!1984219))

(declare-fun m!1984367 () Bool)

(assert (=> b!1642542 m!1984367))

(declare-fun m!1984369 () Bool)

(assert (=> b!1642543 m!1984369))

(declare-fun m!1984371 () Bool)

(assert (=> b!1642543 m!1984371))

(declare-fun m!1984373 () Bool)

(assert (=> d!494535 m!1984373))

(declare-fun m!1984375 () Bool)

(assert (=> d!494535 m!1984375))

(declare-fun m!1984377 () Bool)

(assert (=> b!1642540 m!1984377))

(declare-fun m!1984379 () Bool)

(assert (=> b!1642541 m!1984379))

(assert (=> b!1642541 m!1984219))

(assert (=> b!1642541 m!1984219))

(assert (=> b!1642541 m!1984367))

(assert (=> b!1642447 d!494535))

(declare-fun d!494543 () Bool)

(declare-fun list!7167 (Conc!6032) List!18172)

(assert (=> d!494543 (= (list!7164 lt!604667) (list!7167 (c!267127 lt!604667)))))

(declare-fun bs!395802 () Bool)

(assert (= bs!395802 d!494543))

(declare-fun m!1984381 () Bool)

(assert (=> bs!395802 m!1984381))

(assert (=> b!1642447 d!494543))

(declare-fun d!494545 () Bool)

(assert (=> d!494545 (= (list!7164 lt!604665) (list!7167 (c!267127 lt!604665)))))

(declare-fun bs!395803 () Bool)

(assert (= bs!395803 d!494545))

(declare-fun m!1984383 () Bool)

(assert (=> bs!395803 m!1984383))

(assert (=> b!1642447 d!494545))

(declare-fun d!494547 () Bool)

(declare-fun fromListB!938 (List!18173) BalanceConc!12010)

(assert (=> d!494547 (= (seqFromList!2127 tokens!457) (fromListB!938 tokens!457))))

(declare-fun bs!395804 () Bool)

(assert (= bs!395804 d!494547))

(declare-fun m!1984385 () Bool)

(assert (=> bs!395804 m!1984385))

(assert (=> b!1642447 d!494547))

(declare-fun d!494549 () Bool)

(declare-fun lt!604724 () BalanceConc!12008)

(assert (=> d!494549 (= (list!7164 lt!604724) (originalCharacters!4006 (h!23504 tokens!457)))))

(assert (=> d!494549 (= lt!604724 (dynLambda!8078 (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (value!100646 (h!23504 tokens!457))))))

(assert (=> d!494549 (= (charsOf!1841 (h!23504 tokens!457)) lt!604724)))

(declare-fun b_lambda!51617 () Bool)

(assert (=> (not b_lambda!51617) (not d!494549)))

(assert (=> d!494549 t!150145))

(declare-fun b_and!116493 () Bool)

(assert (= b_and!116485 (and (=> t!150145 result!113510) b_and!116493)))

(assert (=> d!494549 t!150147))

(declare-fun b_and!116495 () Bool)

(assert (= b_and!116487 (and (=> t!150147 result!113514) b_and!116495)))

(declare-fun m!1984387 () Bool)

(assert (=> d!494549 m!1984387))

(assert (=> d!494549 m!1984319))

(assert (=> b!1642447 d!494549))

(declare-fun d!494551 () Bool)

(assert (=> d!494551 (= (list!7164 (charsOf!1841 (h!23504 tokens!457))) (list!7167 (c!267127 (charsOf!1841 (h!23504 tokens!457)))))))

(declare-fun bs!395805 () Bool)

(assert (= bs!395805 d!494551))

(declare-fun m!1984389 () Bool)

(assert (=> bs!395805 m!1984389))

(assert (=> b!1642447 d!494551))

(declare-fun d!494553 () Bool)

(assert (=> d!494553 (= (seqFromList!2127 (t!150138 tokens!457)) (fromListB!938 (t!150138 tokens!457)))))

(declare-fun bs!395806 () Bool)

(assert (= bs!395806 d!494553))

(declare-fun m!1984391 () Bool)

(assert (=> bs!395806 m!1984391))

(assert (=> b!1642447 d!494553))

(declare-fun d!494555 () Bool)

(declare-fun e!1053406 () Bool)

(assert (=> d!494555 e!1053406))

(declare-fun res!735906 () Bool)

(assert (=> d!494555 (=> (not res!735906) (not e!1053406))))

(declare-fun lt!604727 () List!18172)

(declare-fun content!2504 (List!18172) (Set C!9214))

(assert (=> d!494555 (= res!735906 (= (content!2504 lt!604727) (set.union (content!2504 lt!604670) (content!2504 lt!604662))))))

(declare-fun e!1053407 () List!18172)

(assert (=> d!494555 (= lt!604727 e!1053407)))

(declare-fun c!267139 () Bool)

(assert (=> d!494555 (= c!267139 (is-Nil!18102 lt!604670))))

(assert (=> d!494555 (= (++!4869 lt!604670 lt!604662) lt!604727)))

(declare-fun b!1642553 () Bool)

(assert (=> b!1642553 (= e!1053407 (Cons!18102 (h!23503 lt!604670) (++!4869 (t!150137 lt!604670) lt!604662)))))

(declare-fun b!1642554 () Bool)

(declare-fun res!735907 () Bool)

(assert (=> b!1642554 (=> (not res!735907) (not e!1053406))))

(assert (=> b!1642554 (= res!735907 (= (size!14421 lt!604727) (+ (size!14421 lt!604670) (size!14421 lt!604662))))))

(declare-fun b!1642555 () Bool)

(assert (=> b!1642555 (= e!1053406 (or (not (= lt!604662 Nil!18102)) (= lt!604727 lt!604670)))))

(declare-fun b!1642552 () Bool)

(assert (=> b!1642552 (= e!1053407 lt!604662)))

(assert (= (and d!494555 c!267139) b!1642552))

(assert (= (and d!494555 (not c!267139)) b!1642553))

(assert (= (and d!494555 res!735906) b!1642554))

(assert (= (and b!1642554 res!735907) b!1642555))

(declare-fun m!1984393 () Bool)

(assert (=> d!494555 m!1984393))

(declare-fun m!1984395 () Bool)

(assert (=> d!494555 m!1984395))

(declare-fun m!1984397 () Bool)

(assert (=> d!494555 m!1984397))

(declare-fun m!1984399 () Bool)

(assert (=> b!1642553 m!1984399))

(declare-fun m!1984401 () Bool)

(assert (=> b!1642554 m!1984401))

(declare-fun m!1984403 () Bool)

(assert (=> b!1642554 m!1984403))

(declare-fun m!1984405 () Bool)

(assert (=> b!1642554 m!1984405))

(assert (=> b!1642447 d!494555))

(declare-fun d!494557 () Bool)

(assert (=> d!494557 (= (inv!23457 (tag!3472 (h!23505 rules!1846))) (= (mod (str.len (value!100645 (tag!3472 (h!23505 rules!1846)))) 2) 0))))

(assert (=> b!1642458 d!494557))

(declare-fun d!494559 () Bool)

(declare-fun res!735910 () Bool)

(declare-fun e!1053410 () Bool)

(assert (=> d!494559 (=> (not res!735910) (not e!1053410))))

(declare-fun semiInverseModEq!1225 (Int Int) Bool)

(assert (=> d!494559 (= res!735910 (semiInverseModEq!1225 (toChars!4490 (transformation!3192 (h!23505 rules!1846))) (toValue!4631 (transformation!3192 (h!23505 rules!1846)))))))

(assert (=> d!494559 (= (inv!23461 (transformation!3192 (h!23505 rules!1846))) e!1053410)))

(declare-fun b!1642558 () Bool)

(declare-fun equivClasses!1166 (Int Int) Bool)

(assert (=> b!1642558 (= e!1053410 (equivClasses!1166 (toChars!4490 (transformation!3192 (h!23505 rules!1846))) (toValue!4631 (transformation!3192 (h!23505 rules!1846)))))))

(assert (= (and d!494559 res!735910) b!1642558))

(declare-fun m!1984407 () Bool)

(assert (=> d!494559 m!1984407))

(declare-fun m!1984409 () Bool)

(assert (=> b!1642558 m!1984409))

(assert (=> b!1642458 d!494559))

(declare-fun d!494561 () Bool)

(assert (=> d!494561 (= (isEmpty!11132 rules!1846) (is-Nil!18104 rules!1846))))

(assert (=> b!1642452 d!494561))

(declare-fun b!1642611 () Bool)

(declare-fun e!1053449 () Bool)

(assert (=> b!1642611 (= e!1053449 true)))

(declare-fun b!1642610 () Bool)

(declare-fun e!1053448 () Bool)

(assert (=> b!1642610 (= e!1053448 e!1053449)))

(declare-fun b!1642609 () Bool)

(declare-fun e!1053447 () Bool)

(assert (=> b!1642609 (= e!1053447 e!1053448)))

(declare-fun d!494563 () Bool)

(assert (=> d!494563 e!1053447))

(assert (= b!1642610 b!1642611))

(assert (= b!1642609 b!1642610))

(assert (= (and d!494563 (is-Cons!18104 rules!1846)) b!1642609))

(declare-fun lambda!67523 () Int)

(declare-fun order!10755 () Int)

(declare-fun order!10753 () Int)

(declare-fun dynLambda!8079 (Int Int) Int)

(declare-fun dynLambda!8080 (Int Int) Int)

(assert (=> b!1642611 (< (dynLambda!8079 order!10753 (toValue!4631 (transformation!3192 (h!23505 rules!1846)))) (dynLambda!8080 order!10755 lambda!67523))))

(declare-fun order!10757 () Int)

(declare-fun dynLambda!8081 (Int Int) Int)

(assert (=> b!1642611 (< (dynLambda!8081 order!10757 (toChars!4490 (transformation!3192 (h!23505 rules!1846)))) (dynLambda!8080 order!10755 lambda!67523))))

(assert (=> d!494563 true))

(declare-fun lt!604814 () Bool)

(declare-fun forall!4125 (List!18173 Int) Bool)

(assert (=> d!494563 (= lt!604814 (forall!4125 tokens!457 lambda!67523))))

(declare-fun e!1053437 () Bool)

(assert (=> d!494563 (= lt!604814 e!1053437)))

(declare-fun res!735932 () Bool)

(assert (=> d!494563 (=> res!735932 e!1053437)))

(assert (=> d!494563 (= res!735932 (not (is-Cons!18103 tokens!457)))))

(assert (=> d!494563 (not (isEmpty!11132 rules!1846))))

(assert (=> d!494563 (= (rulesProduceEachTokenIndividuallyList!1023 thiss!17113 rules!1846 tokens!457) lt!604814)))

(declare-fun b!1642594 () Bool)

(declare-fun e!1053436 () Bool)

(assert (=> b!1642594 (= e!1053437 e!1053436)))

(declare-fun res!735933 () Bool)

(assert (=> b!1642594 (=> (not res!735933) (not e!1053436))))

(declare-fun rulesProduceIndividualToken!1471 (LexerInterface!2821 List!18174 Token!5950) Bool)

(assert (=> b!1642594 (= res!735933 (rulesProduceIndividualToken!1471 thiss!17113 rules!1846 (h!23504 tokens!457)))))

(declare-fun b!1642595 () Bool)

(assert (=> b!1642595 (= e!1053436 (rulesProduceEachTokenIndividuallyList!1023 thiss!17113 rules!1846 (t!150138 tokens!457)))))

(assert (= (and d!494563 (not res!735932)) b!1642594))

(assert (= (and b!1642594 res!735933) b!1642595))

(declare-fun m!1984513 () Bool)

(assert (=> d!494563 m!1984513))

(assert (=> d!494563 m!1984193))

(declare-fun m!1984515 () Bool)

(assert (=> b!1642594 m!1984515))

(declare-fun m!1984517 () Bool)

(assert (=> b!1642595 m!1984517))

(assert (=> b!1642451 d!494563))

(declare-fun d!494575 () Bool)

(assert (=> d!494575 (= (inv!23457 (tag!3472 (rule!5042 (h!23504 tokens!457)))) (= (mod (str.len (value!100645 (tag!3472 (rule!5042 (h!23504 tokens!457))))) 2) 0))))

(assert (=> b!1642443 d!494575))

(declare-fun d!494577 () Bool)

(declare-fun res!735937 () Bool)

(declare-fun e!1053452 () Bool)

(assert (=> d!494577 (=> (not res!735937) (not e!1053452))))

(assert (=> d!494577 (= res!735937 (semiInverseModEq!1225 (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (toValue!4631 (transformation!3192 (rule!5042 (h!23504 tokens!457))))))))

(assert (=> d!494577 (= (inv!23461 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) e!1053452)))

(declare-fun b!1642616 () Bool)

(assert (=> b!1642616 (= e!1053452 (equivClasses!1166 (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))) (toValue!4631 (transformation!3192 (rule!5042 (h!23504 tokens!457))))))))

(assert (= (and d!494577 res!735937) b!1642616))

(declare-fun m!1984519 () Bool)

(assert (=> d!494577 m!1984519))

(declare-fun m!1984521 () Bool)

(assert (=> b!1642616 m!1984521))

(assert (=> b!1642443 d!494577))

(declare-fun d!494579 () Bool)

(declare-fun res!735951 () Bool)

(declare-fun e!1053466 () Bool)

(assert (=> d!494579 (=> res!735951 e!1053466)))

(assert (=> d!494579 (= res!735951 (or (not (is-Cons!18103 tokens!457)) (not (is-Cons!18103 (t!150138 tokens!457)))))))

(assert (=> d!494579 (= (tokensListTwoByTwoPredicateSeparableList!514 thiss!17113 tokens!457 rules!1846) e!1053466)))

(declare-fun b!1642629 () Bool)

(declare-fun e!1053465 () Bool)

(assert (=> b!1642629 (= e!1053466 e!1053465)))

(declare-fun res!735950 () Bool)

(assert (=> b!1642629 (=> (not res!735950) (not e!1053465))))

(assert (=> b!1642629 (= res!735950 (separableTokensPredicate!761 thiss!17113 (h!23504 tokens!457) (h!23504 (t!150138 tokens!457)) rules!1846))))

(declare-fun lt!604831 () Unit!29837)

(declare-fun Unit!29842 () Unit!29837)

(assert (=> b!1642629 (= lt!604831 Unit!29842)))

(assert (=> b!1642629 (> (size!14423 (charsOf!1841 (h!23504 (t!150138 tokens!457)))) 0)))

(declare-fun lt!604837 () Unit!29837)

(declare-fun Unit!29843 () Unit!29837)

(assert (=> b!1642629 (= lt!604837 Unit!29843)))

(assert (=> b!1642629 (rulesProduceIndividualToken!1471 thiss!17113 rules!1846 (h!23504 (t!150138 tokens!457)))))

(declare-fun lt!604836 () Unit!29837)

(declare-fun Unit!29844 () Unit!29837)

(assert (=> b!1642629 (= lt!604836 Unit!29844)))

(assert (=> b!1642629 (rulesProduceIndividualToken!1471 thiss!17113 rules!1846 (h!23504 tokens!457))))

(declare-fun lt!604833 () Unit!29837)

(declare-fun lt!604834 () Unit!29837)

(assert (=> b!1642629 (= lt!604833 lt!604834)))

(assert (=> b!1642629 (rulesProduceIndividualToken!1471 thiss!17113 rules!1846 (h!23504 (t!150138 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!590 (LexerInterface!2821 List!18174 List!18173 Token!5950) Unit!29837)

(assert (=> b!1642629 (= lt!604834 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!590 thiss!17113 rules!1846 tokens!457 (h!23504 (t!150138 tokens!457))))))

(declare-fun lt!604835 () Unit!29837)

(declare-fun lt!604832 () Unit!29837)

(assert (=> b!1642629 (= lt!604835 lt!604832)))

(assert (=> b!1642629 (rulesProduceIndividualToken!1471 thiss!17113 rules!1846 (h!23504 tokens!457))))

(assert (=> b!1642629 (= lt!604832 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!590 thiss!17113 rules!1846 tokens!457 (h!23504 tokens!457)))))

(declare-fun b!1642630 () Bool)

(assert (=> b!1642630 (= e!1053465 (tokensListTwoByTwoPredicateSeparableList!514 thiss!17113 (Cons!18103 (h!23504 (t!150138 tokens!457)) (t!150138 (t!150138 tokens!457))) rules!1846))))

(assert (= (and d!494579 (not res!735951)) b!1642629))

(assert (= (and b!1642629 res!735950) b!1642630))

(declare-fun m!1984531 () Bool)

(assert (=> b!1642629 m!1984531))

(assert (=> b!1642629 m!1984249))

(assert (=> b!1642629 m!1984335))

(assert (=> b!1642629 m!1984515))

(assert (=> b!1642629 m!1984335))

(declare-fun m!1984533 () Bool)

(assert (=> b!1642629 m!1984533))

(declare-fun m!1984535 () Bool)

(assert (=> b!1642629 m!1984535))

(declare-fun m!1984537 () Bool)

(assert (=> b!1642629 m!1984537))

(declare-fun m!1984539 () Bool)

(assert (=> b!1642630 m!1984539))

(assert (=> b!1642454 d!494579))

(declare-fun b!1642641 () Bool)

(declare-fun e!1053475 () Bool)

(declare-fun inv!16 (TokenValue!3282) Bool)

(assert (=> b!1642641 (= e!1053475 (inv!16 (value!100646 (h!23504 tokens!457))))))

(declare-fun d!494587 () Bool)

(declare-fun c!267154 () Bool)

(assert (=> d!494587 (= c!267154 (is-IntegerValue!9846 (value!100646 (h!23504 tokens!457))))))

(assert (=> d!494587 (= (inv!21 (value!100646 (h!23504 tokens!457))) e!1053475)))

(declare-fun b!1642642 () Bool)

(declare-fun e!1053474 () Bool)

(declare-fun inv!15 (TokenValue!3282) Bool)

(assert (=> b!1642642 (= e!1053474 (inv!15 (value!100646 (h!23504 tokens!457))))))

(declare-fun b!1642643 () Bool)

(declare-fun e!1053473 () Bool)

(assert (=> b!1642643 (= e!1053475 e!1053473)))

(declare-fun c!267153 () Bool)

(assert (=> b!1642643 (= c!267153 (is-IntegerValue!9847 (value!100646 (h!23504 tokens!457))))))

(declare-fun b!1642644 () Bool)

(declare-fun inv!17 (TokenValue!3282) Bool)

(assert (=> b!1642644 (= e!1053473 (inv!17 (value!100646 (h!23504 tokens!457))))))

(declare-fun b!1642645 () Bool)

(declare-fun res!735954 () Bool)

(assert (=> b!1642645 (=> res!735954 e!1053474)))

(assert (=> b!1642645 (= res!735954 (not (is-IntegerValue!9848 (value!100646 (h!23504 tokens!457)))))))

(assert (=> b!1642645 (= e!1053473 e!1053474)))

(assert (= (and d!494587 c!267154) b!1642641))

(assert (= (and d!494587 (not c!267154)) b!1642643))

(assert (= (and b!1642643 c!267153) b!1642644))

(assert (= (and b!1642643 (not c!267153)) b!1642645))

(assert (= (and b!1642645 (not res!735954)) b!1642642))

(declare-fun m!1984541 () Bool)

(assert (=> b!1642641 m!1984541))

(declare-fun m!1984543 () Bool)

(assert (=> b!1642642 m!1984543))

(declare-fun m!1984545 () Bool)

(assert (=> b!1642644 m!1984545))

(assert (=> b!1642457 d!494587))

(declare-fun d!494589 () Bool)

(declare-fun res!735957 () Bool)

(declare-fun e!1053478 () Bool)

(assert (=> d!494589 (=> (not res!735957) (not e!1053478))))

(declare-fun rulesValid!1153 (LexerInterface!2821 List!18174) Bool)

(assert (=> d!494589 (= res!735957 (rulesValid!1153 thiss!17113 rules!1846))))

(assert (=> d!494589 (= (rulesInvariant!2490 thiss!17113 rules!1846) e!1053478)))

(declare-fun b!1642648 () Bool)

(declare-datatypes ((List!18179 0))(
  ( (Nil!18109) (Cons!18109 (h!23510 String!20744) (t!150160 List!18179)) )
))
(declare-fun noDuplicateTag!1153 (LexerInterface!2821 List!18174 List!18179) Bool)

(assert (=> b!1642648 (= e!1053478 (noDuplicateTag!1153 thiss!17113 rules!1846 Nil!18109))))

(assert (= (and d!494589 res!735957) b!1642648))

(declare-fun m!1984547 () Bool)

(assert (=> d!494589 m!1984547))

(declare-fun m!1984549 () Bool)

(assert (=> b!1642648 m!1984549))

(assert (=> b!1642446 d!494589))

(declare-fun d!494591 () Bool)

(declare-fun list!7168 (Conc!6033) List!18173)

(assert (=> d!494591 (= (list!7163 (_1!10280 lt!604661)) (list!7168 (c!267129 (_1!10280 lt!604661))))))

(declare-fun bs!395808 () Bool)

(assert (= bs!395808 d!494591))

(declare-fun m!1984551 () Bool)

(assert (=> bs!395808 m!1984551))

(assert (=> b!1642445 d!494591))

(declare-fun d!494593 () Bool)

(declare-fun e!1053501 () Bool)

(assert (=> d!494593 e!1053501))

(declare-fun res!735968 () Bool)

(assert (=> d!494593 (=> (not res!735968) (not e!1053501))))

(assert (=> d!494593 (= res!735968 (= (list!7163 (_1!10280 (lex!1305 thiss!17113 rules!1846 (print!1352 thiss!17113 (seqFromList!2127 (t!150138 tokens!457)))))) (t!150138 tokens!457)))))

(declare-fun lt!604917 () Unit!29837)

(declare-fun e!1053500 () Unit!29837)

(assert (=> d!494593 (= lt!604917 e!1053500)))

(declare-fun c!267160 () Bool)

(assert (=> d!494593 (= c!267160 (or (is-Nil!18103 (t!150138 tokens!457)) (is-Nil!18103 (t!150138 (t!150138 tokens!457)))))))

(assert (=> d!494593 (not (isEmpty!11132 rules!1846))))

(assert (=> d!494593 (= (theoremInvertabilityWhenTokenListSeparable!264 thiss!17113 rules!1846 (t!150138 tokens!457)) lt!604917)))

(declare-fun b!1642682 () Bool)

(declare-fun Unit!29845 () Unit!29837)

(assert (=> b!1642682 (= e!1053500 Unit!29845)))

(declare-fun b!1642683 () Bool)

(declare-fun Unit!29846 () Unit!29837)

(assert (=> b!1642683 (= e!1053500 Unit!29846)))

(declare-fun lt!604914 () BalanceConc!12008)

(assert (=> b!1642683 (= lt!604914 (print!1352 thiss!17113 (seqFromList!2127 (t!150138 tokens!457))))))

(declare-fun lt!604916 () BalanceConc!12008)

(assert (=> b!1642683 (= lt!604916 (print!1352 thiss!17113 (seqFromList!2127 (t!150138 (t!150138 tokens!457)))))))

(declare-fun lt!604913 () tuple2!17756)

(assert (=> b!1642683 (= lt!604913 (lex!1305 thiss!17113 rules!1846 lt!604916))))

(declare-fun lt!604900 () List!18172)

(assert (=> b!1642683 (= lt!604900 (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457)))))))

(declare-fun lt!604903 () List!18172)

(assert (=> b!1642683 (= lt!604903 (list!7164 lt!604916))))

(declare-fun lt!604899 () Unit!29837)

(assert (=> b!1642683 (= lt!604899 (lemmaConcatTwoListThenFirstIsPrefix!975 lt!604900 lt!604903))))

(assert (=> b!1642683 (isPrefix!1450 lt!604900 (++!4869 lt!604900 lt!604903))))

(declare-fun lt!604915 () Unit!29837)

(assert (=> b!1642683 (= lt!604915 lt!604899)))

(declare-fun lt!604901 () Unit!29837)

(assert (=> b!1642683 (= lt!604901 (theoremInvertabilityWhenTokenListSeparable!264 thiss!17113 rules!1846 (t!150138 (t!150138 tokens!457))))))

(declare-fun lt!604912 () Unit!29837)

(assert (=> b!1642683 (= lt!604912 (seqFromListBHdTlConstructive!267 (h!23504 (t!150138 (t!150138 tokens!457))) (t!150138 (t!150138 (t!150138 tokens!457))) (_1!10280 lt!604913)))))

(assert (=> b!1642683 (= (list!7163 (_1!10280 lt!604913)) (list!7163 (prepend!740 (seqFromList!2127 (t!150138 (t!150138 (t!150138 tokens!457)))) (h!23504 (t!150138 (t!150138 tokens!457))))))))

(declare-fun lt!604904 () Unit!29837)

(assert (=> b!1642683 (= lt!604904 lt!604912)))

(declare-datatypes ((tuple2!17762 0))(
  ( (tuple2!17763 (_1!10283 Token!5950) (_2!10283 List!18172)) )
))
(declare-datatypes ((Option!3423 0))(
  ( (None!3422) (Some!3422 (v!24541 tuple2!17762)) )
))
(declare-fun lt!604906 () Option!3423)

(declare-fun maxPrefix!1383 (LexerInterface!2821 List!18174 List!18172) Option!3423)

(assert (=> b!1642683 (= lt!604906 (maxPrefix!1383 thiss!17113 rules!1846 (list!7164 lt!604914)))))

(declare-fun singletonSeq!1659 (Token!5950) BalanceConc!12010)

(assert (=> b!1642683 (= (print!1352 thiss!17113 (singletonSeq!1659 (h!23504 (t!150138 tokens!457)))) (printTailRec!872 thiss!17113 (singletonSeq!1659 (h!23504 (t!150138 tokens!457))) 0 (BalanceConc!12009 Empty!6032)))))

(declare-fun lt!604919 () Unit!29837)

(declare-fun Unit!29847 () Unit!29837)

(assert (=> b!1642683 (= lt!604919 Unit!29847)))

(declare-fun lt!604918 () Unit!29837)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!391 (LexerInterface!2821 List!18174 List!18172 List!18172) Unit!29837)

(assert (=> b!1642683 (= lt!604918 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!391 thiss!17113 rules!1846 (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457)))) (list!7164 lt!604916)))))

(assert (=> b!1642683 (= (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457)))) (originalCharacters!4006 (h!23504 (t!150138 tokens!457))))))

(declare-fun lt!604921 () Unit!29837)

(declare-fun Unit!29848 () Unit!29837)

(assert (=> b!1642683 (= lt!604921 Unit!29848)))

(declare-fun head!3578 (List!18172) C!9214)

(assert (=> b!1642683 (= (list!7164 (singletonSeq!1658 (apply!4719 (charsOf!1841 (h!23504 (t!150138 (t!150138 tokens!457)))) 0))) (Cons!18102 (head!3578 (originalCharacters!4006 (h!23504 (t!150138 (t!150138 tokens!457))))) Nil!18102))))

(declare-fun lt!604897 () Unit!29837)

(declare-fun Unit!29849 () Unit!29837)

(assert (=> b!1642683 (= lt!604897 Unit!29849)))

(assert (=> b!1642683 (= (list!7164 (singletonSeq!1658 (apply!4719 (charsOf!1841 (h!23504 (t!150138 (t!150138 tokens!457)))) 0))) (Cons!18102 (head!3578 (list!7164 lt!604916)) Nil!18102))))

(declare-fun lt!604910 () Unit!29837)

(declare-fun Unit!29850 () Unit!29837)

(assert (=> b!1642683 (= lt!604910 Unit!29850)))

(declare-fun head!3579 (BalanceConc!12008) C!9214)

(assert (=> b!1642683 (= (list!7164 (singletonSeq!1658 (apply!4719 (charsOf!1841 (h!23504 (t!150138 (t!150138 tokens!457)))) 0))) (Cons!18102 (head!3579 lt!604916) Nil!18102))))

(declare-fun lt!604920 () Unit!29837)

(declare-fun Unit!29851 () Unit!29837)

(assert (=> b!1642683 (= lt!604920 Unit!29851)))

(declare-fun isDefined!2784 (Option!3423) Bool)

(assert (=> b!1642683 (isDefined!2784 (maxPrefix!1383 thiss!17113 rules!1846 (originalCharacters!4006 (h!23504 (t!150138 tokens!457)))))))

(declare-fun lt!604909 () Unit!29837)

(declare-fun Unit!29852 () Unit!29837)

(assert (=> b!1642683 (= lt!604909 Unit!29852)))

(assert (=> b!1642683 (isDefined!2784 (maxPrefix!1383 thiss!17113 rules!1846 (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457))))))))

(declare-fun lt!604922 () Unit!29837)

(declare-fun Unit!29853 () Unit!29837)

(assert (=> b!1642683 (= lt!604922 Unit!29853)))

(declare-fun lt!604902 () Unit!29837)

(declare-fun Unit!29854 () Unit!29837)

(assert (=> b!1642683 (= lt!604902 Unit!29854)))

(declare-fun get!5265 (Option!3423) tuple2!17762)

(assert (=> b!1642683 (= (_1!10283 (get!5265 (maxPrefix!1383 thiss!17113 rules!1846 (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457))))))) (h!23504 (t!150138 tokens!457)))))

(declare-fun lt!604908 () Unit!29837)

(declare-fun Unit!29855 () Unit!29837)

(assert (=> b!1642683 (= lt!604908 Unit!29855)))

(assert (=> b!1642683 (isEmpty!11134 (_2!10283 (get!5265 (maxPrefix!1383 thiss!17113 rules!1846 (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457))))))))))

(declare-fun lt!604898 () Unit!29837)

(declare-fun Unit!29856 () Unit!29837)

(assert (=> b!1642683 (= lt!604898 Unit!29856)))

(declare-fun matchR!2015 (Regex!4520 List!18172) Bool)

(assert (=> b!1642683 (matchR!2015 (regex!3192 (rule!5042 (h!23504 (t!150138 tokens!457)))) (list!7164 (charsOf!1841 (h!23504 (t!150138 tokens!457)))))))

(declare-fun lt!604907 () Unit!29837)

(declare-fun Unit!29857 () Unit!29837)

(assert (=> b!1642683 (= lt!604907 Unit!29857)))

(assert (=> b!1642683 (= (rule!5042 (h!23504 (t!150138 tokens!457))) (rule!5042 (h!23504 (t!150138 tokens!457))))))

(declare-fun lt!604911 () Unit!29837)

(declare-fun Unit!29858 () Unit!29837)

(assert (=> b!1642683 (= lt!604911 Unit!29858)))

(declare-fun lt!604905 () Unit!29837)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!153 (LexerInterface!2821 List!18174 Token!5950 Rule!6184 List!18172) Unit!29837)

(assert (=> b!1642683 (= lt!604905 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!153 thiss!17113 rules!1846 (h!23504 (t!150138 tokens!457)) (rule!5042 (h!23504 (t!150138 tokens!457))) (list!7164 lt!604916)))))

(declare-fun b!1642684 () Bool)

(declare-fun isEmpty!11136 (BalanceConc!12008) Bool)

(assert (=> b!1642684 (= e!1053501 (isEmpty!11136 (_2!10280 (lex!1305 thiss!17113 rules!1846 (print!1352 thiss!17113 (seqFromList!2127 (t!150138 tokens!457)))))))))

(assert (= (and d!494593 c!267160) b!1642682))

(assert (= (and d!494593 (not c!267160)) b!1642683))

(assert (= (and d!494593 res!735968) b!1642684))

(declare-fun m!1984589 () Bool)

(assert (=> d!494593 m!1984589))

(declare-fun m!1984591 () Bool)

(assert (=> d!494593 m!1984591))

(assert (=> d!494593 m!1984193))

(assert (=> d!494593 m!1984203))

(assert (=> d!494593 m!1984203))

(assert (=> d!494593 m!1984589))

(declare-fun m!1984593 () Bool)

(assert (=> d!494593 m!1984593))

(assert (=> b!1642683 m!1984237))

(declare-fun m!1984595 () Bool)

(assert (=> b!1642683 m!1984595))

(declare-fun m!1984597 () Bool)

(assert (=> b!1642683 m!1984597))

(declare-fun m!1984599 () Bool)

(assert (=> b!1642683 m!1984599))

(declare-fun m!1984601 () Bool)

(assert (=> b!1642683 m!1984601))

(declare-fun m!1984603 () Bool)

(assert (=> b!1642683 m!1984603))

(declare-fun m!1984605 () Bool)

(assert (=> b!1642683 m!1984605))

(declare-fun m!1984607 () Bool)

(assert (=> b!1642683 m!1984607))

(declare-fun m!1984609 () Bool)

(assert (=> b!1642683 m!1984609))

(declare-fun m!1984611 () Bool)

(assert (=> b!1642683 m!1984611))

(declare-fun m!1984613 () Bool)

(assert (=> b!1642683 m!1984613))

(declare-fun m!1984615 () Bool)

(assert (=> b!1642683 m!1984615))

(declare-fun m!1984617 () Bool)

(assert (=> b!1642683 m!1984617))

(declare-fun m!1984619 () Bool)

(assert (=> b!1642683 m!1984619))

(declare-fun m!1984621 () Bool)

(assert (=> b!1642683 m!1984621))

(assert (=> b!1642683 m!1984601))

(declare-fun m!1984623 () Bool)

(assert (=> b!1642683 m!1984623))

(declare-fun m!1984625 () Bool)

(assert (=> b!1642683 m!1984625))

(declare-fun m!1984627 () Bool)

(assert (=> b!1642683 m!1984627))

(declare-fun m!1984629 () Bool)

(assert (=> b!1642683 m!1984629))

(declare-fun m!1984631 () Bool)

(assert (=> b!1642683 m!1984631))

(declare-fun m!1984633 () Bool)

(assert (=> b!1642683 m!1984633))

(assert (=> b!1642683 m!1984611))

(declare-fun m!1984635 () Bool)

(assert (=> b!1642683 m!1984635))

(declare-fun m!1984637 () Bool)

(assert (=> b!1642683 m!1984637))

(assert (=> b!1642683 m!1984335))

(declare-fun m!1984639 () Bool)

(assert (=> b!1642683 m!1984639))

(assert (=> b!1642683 m!1984631))

(assert (=> b!1642683 m!1984619))

(declare-fun m!1984641 () Bool)

(assert (=> b!1642683 m!1984641))

(assert (=> b!1642683 m!1984335))

(assert (=> b!1642683 m!1984639))

(declare-fun m!1984643 () Bool)

(assert (=> b!1642683 m!1984643))

(declare-fun m!1984645 () Bool)

(assert (=> b!1642683 m!1984645))

(assert (=> b!1642683 m!1984597))

(assert (=> b!1642683 m!1984615))

(declare-fun m!1984647 () Bool)

(assert (=> b!1642683 m!1984647))

(assert (=> b!1642683 m!1984237))

(assert (=> b!1642683 m!1984601))

(assert (=> b!1642683 m!1984643))

(declare-fun m!1984649 () Bool)

(assert (=> b!1642683 m!1984649))

(assert (=> b!1642683 m!1984629))

(assert (=> b!1642683 m!1984639))

(declare-fun m!1984651 () Bool)

(assert (=> b!1642683 m!1984651))

(assert (=> b!1642683 m!1984203))

(assert (=> b!1642683 m!1984599))

(declare-fun m!1984653 () Bool)

(assert (=> b!1642683 m!1984653))

(assert (=> b!1642683 m!1984203))

(assert (=> b!1642683 m!1984589))

(assert (=> b!1642683 m!1984625))

(assert (=> b!1642683 m!1984643))

(assert (=> b!1642683 m!1984643))

(declare-fun m!1984655 () Bool)

(assert (=> b!1642683 m!1984655))

(assert (=> b!1642683 m!1984607))

(declare-fun m!1984657 () Bool)

(assert (=> b!1642683 m!1984657))

(declare-fun m!1984659 () Bool)

(assert (=> b!1642683 m!1984659))

(declare-fun m!1984661 () Bool)

(assert (=> b!1642683 m!1984661))

(assert (=> b!1642683 m!1984639))

(assert (=> b!1642683 m!1984611))

(assert (=> b!1642684 m!1984203))

(assert (=> b!1642684 m!1984203))

(assert (=> b!1642684 m!1984589))

(assert (=> b!1642684 m!1984589))

(assert (=> b!1642684 m!1984591))

(declare-fun m!1984663 () Bool)

(assert (=> b!1642684 m!1984663))

(assert (=> b!1642445 d!494593))

(declare-fun b!1642695 () Bool)

(declare-fun e!1053510 () Bool)

(declare-fun tail!2411 (List!18172) List!18172)

(assert (=> b!1642695 (= e!1053510 (isPrefix!1450 (tail!2411 lt!604670) (tail!2411 lt!604672)))))

(declare-fun b!1642693 () Bool)

(declare-fun e!1053509 () Bool)

(assert (=> b!1642693 (= e!1053509 e!1053510)))

(declare-fun res!735980 () Bool)

(assert (=> b!1642693 (=> (not res!735980) (not e!1053510))))

(assert (=> b!1642693 (= res!735980 (not (is-Nil!18102 lt!604672)))))

(declare-fun b!1642696 () Bool)

(declare-fun e!1053508 () Bool)

(assert (=> b!1642696 (= e!1053508 (>= (size!14421 lt!604672) (size!14421 lt!604670)))))

(declare-fun d!494603 () Bool)

(assert (=> d!494603 e!1053508))

(declare-fun res!735978 () Bool)

(assert (=> d!494603 (=> res!735978 e!1053508)))

(declare-fun lt!604925 () Bool)

(assert (=> d!494603 (= res!735978 (not lt!604925))))

(assert (=> d!494603 (= lt!604925 e!1053509)))

(declare-fun res!735979 () Bool)

(assert (=> d!494603 (=> res!735979 e!1053509)))

(assert (=> d!494603 (= res!735979 (is-Nil!18102 lt!604670))))

(assert (=> d!494603 (= (isPrefix!1450 lt!604670 lt!604672) lt!604925)))

(declare-fun b!1642694 () Bool)

(declare-fun res!735977 () Bool)

(assert (=> b!1642694 (=> (not res!735977) (not e!1053510))))

(assert (=> b!1642694 (= res!735977 (= (head!3578 lt!604670) (head!3578 lt!604672)))))

(assert (= (and d!494603 (not res!735979)) b!1642693))

(assert (= (and b!1642693 res!735980) b!1642694))

(assert (= (and b!1642694 res!735977) b!1642695))

(assert (= (and d!494603 (not res!735978)) b!1642696))

(declare-fun m!1984665 () Bool)

(assert (=> b!1642695 m!1984665))

(declare-fun m!1984667 () Bool)

(assert (=> b!1642695 m!1984667))

(assert (=> b!1642695 m!1984665))

(assert (=> b!1642695 m!1984667))

(declare-fun m!1984669 () Bool)

(assert (=> b!1642695 m!1984669))

(declare-fun m!1984671 () Bool)

(assert (=> b!1642696 m!1984671))

(assert (=> b!1642696 m!1984403))

(declare-fun m!1984673 () Bool)

(assert (=> b!1642694 m!1984673))

(declare-fun m!1984675 () Bool)

(assert (=> b!1642694 m!1984675))

(assert (=> b!1642445 d!494603))

(declare-fun d!494605 () Bool)

(assert (=> d!494605 (isPrefix!1450 lt!604670 (++!4869 lt!604670 lt!604662))))

(declare-fun lt!604928 () Unit!29837)

(declare-fun choose!9851 (List!18172 List!18172) Unit!29837)

(assert (=> d!494605 (= lt!604928 (choose!9851 lt!604670 lt!604662))))

(assert (=> d!494605 (= (lemmaConcatTwoListThenFirstIsPrefix!975 lt!604670 lt!604662) lt!604928)))

(declare-fun bs!395811 () Bool)

(assert (= bs!395811 d!494605))

(assert (=> bs!395811 m!1984217))

(assert (=> bs!395811 m!1984217))

(declare-fun m!1984677 () Bool)

(assert (=> bs!395811 m!1984677))

(declare-fun m!1984679 () Bool)

(assert (=> bs!395811 m!1984679))

(assert (=> b!1642445 d!494605))

(declare-fun d!494607 () Bool)

(assert (=> d!494607 (= (list!7163 lt!604671) (list!7168 (c!267129 lt!604671)))))

(declare-fun bs!395812 () Bool)

(assert (= bs!395812 d!494607))

(declare-fun m!1984681 () Bool)

(assert (=> bs!395812 m!1984681))

(assert (=> b!1642456 d!494607))

(declare-fun d!494609 () Bool)

(declare-fun e!1053513 () Bool)

(assert (=> d!494609 e!1053513))

(declare-fun res!735983 () Bool)

(assert (=> d!494609 (=> (not res!735983) (not e!1053513))))

(declare-fun isBalanced!1835 (Conc!6033) Bool)

(declare-fun prepend!742 (Conc!6033 Token!5950) Conc!6033)

(assert (=> d!494609 (= res!735983 (isBalanced!1835 (prepend!742 (c!267129 (seqFromList!2127 (t!150138 (t!150138 tokens!457)))) (h!23504 (t!150138 tokens!457)))))))

(declare-fun lt!604931 () BalanceConc!12010)

(assert (=> d!494609 (= lt!604931 (BalanceConc!12011 (prepend!742 (c!267129 (seqFromList!2127 (t!150138 (t!150138 tokens!457)))) (h!23504 (t!150138 tokens!457)))))))

(assert (=> d!494609 (= (prepend!740 (seqFromList!2127 (t!150138 (t!150138 tokens!457))) (h!23504 (t!150138 tokens!457))) lt!604931)))

(declare-fun b!1642699 () Bool)

(assert (=> b!1642699 (= e!1053513 (= (list!7163 lt!604931) (Cons!18103 (h!23504 (t!150138 tokens!457)) (list!7163 (seqFromList!2127 (t!150138 (t!150138 tokens!457)))))))))

(assert (= (and d!494609 res!735983) b!1642699))

(declare-fun m!1984683 () Bool)

(assert (=> d!494609 m!1984683))

(assert (=> d!494609 m!1984683))

(declare-fun m!1984685 () Bool)

(assert (=> d!494609 m!1984685))

(declare-fun m!1984687 () Bool)

(assert (=> b!1642699 m!1984687))

(assert (=> b!1642699 m!1984237))

(declare-fun m!1984689 () Bool)

(assert (=> b!1642699 m!1984689))

(assert (=> b!1642456 d!494609))

(declare-fun d!494611 () Bool)

(assert (=> d!494611 (= (list!7163 (prepend!740 (seqFromList!2127 (t!150138 (t!150138 tokens!457))) (h!23504 (t!150138 tokens!457)))) (list!7168 (c!267129 (prepend!740 (seqFromList!2127 (t!150138 (t!150138 tokens!457))) (h!23504 (t!150138 tokens!457))))))))

(declare-fun bs!395813 () Bool)

(assert (= bs!395813 d!494611))

(declare-fun m!1984691 () Bool)

(assert (=> bs!395813 m!1984691))

(assert (=> b!1642456 d!494611))

(declare-fun d!494613 () Bool)

(assert (=> d!494613 (= (seqFromList!2127 (t!150138 (t!150138 tokens!457))) (fromListB!938 (t!150138 (t!150138 tokens!457))))))

(declare-fun bs!395814 () Bool)

(assert (= bs!395814 d!494613))

(declare-fun m!1984693 () Bool)

(assert (=> bs!395814 m!1984693))

(assert (=> b!1642456 d!494613))

(declare-fun d!494615 () Bool)

(assert (=> d!494615 (= (list!7163 (_1!10280 lt!604661)) (list!7163 (prepend!740 (seqFromList!2127 (t!150138 (t!150138 tokens!457))) (h!23504 (t!150138 tokens!457)))))))

(declare-fun lt!604934 () Unit!29837)

(declare-fun choose!9852 (Token!5950 List!18173 BalanceConc!12010) Unit!29837)

(assert (=> d!494615 (= lt!604934 (choose!9852 (h!23504 (t!150138 tokens!457)) (t!150138 (t!150138 tokens!457)) (_1!10280 lt!604661)))))

(declare-fun $colon$colon!352 (List!18173 Token!5950) List!18173)

(assert (=> d!494615 (= (list!7163 (_1!10280 lt!604661)) (list!7163 (seqFromList!2127 ($colon$colon!352 (t!150138 (t!150138 tokens!457)) (h!23504 (t!150138 tokens!457))))))))

(assert (=> d!494615 (= (seqFromListBHdTlConstructive!267 (h!23504 (t!150138 tokens!457)) (t!150138 (t!150138 tokens!457)) (_1!10280 lt!604661)) lt!604934)))

(declare-fun bs!395815 () Bool)

(assert (= bs!395815 d!494615))

(assert (=> bs!395815 m!1984221))

(declare-fun m!1984695 () Bool)

(assert (=> bs!395815 m!1984695))

(assert (=> bs!395815 m!1984237))

(declare-fun m!1984697 () Bool)

(assert (=> bs!395815 m!1984697))

(declare-fun m!1984699 () Bool)

(assert (=> bs!395815 m!1984699))

(declare-fun m!1984701 () Bool)

(assert (=> bs!395815 m!1984701))

(assert (=> bs!395815 m!1984697))

(assert (=> bs!395815 m!1984239))

(assert (=> bs!395815 m!1984241))

(assert (=> bs!395815 m!1984237))

(assert (=> bs!395815 m!1984239))

(assert (=> bs!395815 m!1984701))

(assert (=> b!1642456 d!494615))

(declare-fun b!1642713 () Bool)

(declare-fun b_free!44543 () Bool)

(declare-fun b_next!45247 () Bool)

(assert (=> b!1642713 (= b_free!44543 (not b_next!45247))))

(declare-fun tp!476035 () Bool)

(declare-fun b_and!116497 () Bool)

(assert (=> b!1642713 (= tp!476035 b_and!116497)))

(declare-fun b_free!44545 () Bool)

(declare-fun b_next!45249 () Bool)

(assert (=> b!1642713 (= b_free!44545 (not b_next!45249))))

(declare-fun t!150157 () Bool)

(declare-fun tb!94023 () Bool)

(assert (=> (and b!1642713 (= (toChars!4490 (transformation!3192 (rule!5042 (h!23504 (t!150138 tokens!457))))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457))))) t!150157) tb!94023))

(declare-fun result!113524 () Bool)

(assert (= result!113524 result!113510))

(assert (=> b!1642511 t!150157))

(assert (=> d!494549 t!150157))

(declare-fun tp!476037 () Bool)

(declare-fun b_and!116499 () Bool)

(assert (=> b!1642713 (= tp!476037 (and (=> t!150157 result!113524) b_and!116499))))

(declare-fun e!1053529 () Bool)

(assert (=> b!1642713 (= e!1053529 (and tp!476035 tp!476037))))

(declare-fun b!1642711 () Bool)

(declare-fun e!1053526 () Bool)

(declare-fun tp!476036 () Bool)

(declare-fun e!1053530 () Bool)

(assert (=> b!1642711 (= e!1053526 (and (inv!21 (value!100646 (h!23504 (t!150138 tokens!457)))) e!1053530 tp!476036))))

(declare-fun tp!476033 () Bool)

(declare-fun b!1642712 () Bool)

(assert (=> b!1642712 (= e!1053530 (and tp!476033 (inv!23457 (tag!3472 (rule!5042 (h!23504 (t!150138 tokens!457))))) (inv!23461 (transformation!3192 (rule!5042 (h!23504 (t!150138 tokens!457))))) e!1053529))))

(declare-fun b!1642710 () Bool)

(declare-fun tp!476034 () Bool)

(declare-fun e!1053531 () Bool)

(assert (=> b!1642710 (= e!1053531 (and (inv!23460 (h!23504 (t!150138 tokens!457))) e!1053526 tp!476034))))

(assert (=> b!1642449 (= tp!475988 e!1053531)))

(assert (= b!1642712 b!1642713))

(assert (= b!1642711 b!1642712))

(assert (= b!1642710 b!1642711))

(assert (= (and b!1642449 (is-Cons!18103 (t!150138 tokens!457))) b!1642710))

(declare-fun m!1984703 () Bool)

(assert (=> b!1642711 m!1984703))

(declare-fun m!1984705 () Bool)

(assert (=> b!1642712 m!1984705))

(declare-fun m!1984707 () Bool)

(assert (=> b!1642712 m!1984707))

(declare-fun m!1984709 () Bool)

(assert (=> b!1642710 m!1984709))

(declare-fun e!1053534 () Bool)

(assert (=> b!1642443 (= tp!475984 e!1053534)))

(declare-fun b!1642727 () Bool)

(declare-fun tp!476052 () Bool)

(declare-fun tp!476051 () Bool)

(assert (=> b!1642727 (= e!1053534 (and tp!476052 tp!476051))))

(declare-fun b!1642726 () Bool)

(declare-fun tp!476048 () Bool)

(assert (=> b!1642726 (= e!1053534 tp!476048)))

(declare-fun b!1642725 () Bool)

(declare-fun tp!476049 () Bool)

(declare-fun tp!476050 () Bool)

(assert (=> b!1642725 (= e!1053534 (and tp!476049 tp!476050))))

(declare-fun b!1642724 () Bool)

(declare-fun tp_is_empty!7331 () Bool)

(assert (=> b!1642724 (= e!1053534 tp_is_empty!7331)))

(assert (= (and b!1642443 (is-ElementMatch!4520 (regex!3192 (rule!5042 (h!23504 tokens!457))))) b!1642724))

(assert (= (and b!1642443 (is-Concat!7803 (regex!3192 (rule!5042 (h!23504 tokens!457))))) b!1642725))

(assert (= (and b!1642443 (is-Star!4520 (regex!3192 (rule!5042 (h!23504 tokens!457))))) b!1642726))

(assert (= (and b!1642443 (is-Union!4520 (regex!3192 (rule!5042 (h!23504 tokens!457))))) b!1642727))

(declare-fun b!1642738 () Bool)

(declare-fun b_free!44547 () Bool)

(declare-fun b_next!45251 () Bool)

(assert (=> b!1642738 (= b_free!44547 (not b_next!45251))))

(declare-fun tp!476061 () Bool)

(declare-fun b_and!116501 () Bool)

(assert (=> b!1642738 (= tp!476061 b_and!116501)))

(declare-fun b_free!44549 () Bool)

(declare-fun b_next!45253 () Bool)

(assert (=> b!1642738 (= b_free!44549 (not b_next!45253))))

(declare-fun t!150159 () Bool)

(declare-fun tb!94025 () Bool)

(assert (=> (and b!1642738 (= (toChars!4490 (transformation!3192 (h!23505 (t!150139 rules!1846)))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457))))) t!150159) tb!94025))

(declare-fun result!113530 () Bool)

(assert (= result!113530 result!113510))

(assert (=> b!1642511 t!150159))

(assert (=> d!494549 t!150159))

(declare-fun b_and!116503 () Bool)

(declare-fun tp!476064 () Bool)

(assert (=> b!1642738 (= tp!476064 (and (=> t!150159 result!113530) b_and!116503))))

(declare-fun e!1053546 () Bool)

(assert (=> b!1642738 (= e!1053546 (and tp!476061 tp!476064))))

(declare-fun e!1053543 () Bool)

(declare-fun tp!476062 () Bool)

(declare-fun b!1642737 () Bool)

(assert (=> b!1642737 (= e!1053543 (and tp!476062 (inv!23457 (tag!3472 (h!23505 (t!150139 rules!1846)))) (inv!23461 (transformation!3192 (h!23505 (t!150139 rules!1846)))) e!1053546))))

(declare-fun b!1642736 () Bool)

(declare-fun e!1053544 () Bool)

(declare-fun tp!476063 () Bool)

(assert (=> b!1642736 (= e!1053544 (and e!1053543 tp!476063))))

(assert (=> b!1642453 (= tp!475986 e!1053544)))

(assert (= b!1642737 b!1642738))

(assert (= b!1642736 b!1642737))

(assert (= (and b!1642453 (is-Cons!18104 (t!150139 rules!1846))) b!1642736))

(declare-fun m!1984711 () Bool)

(assert (=> b!1642737 m!1984711))

(declare-fun m!1984713 () Bool)

(assert (=> b!1642737 m!1984713))

(declare-fun e!1053547 () Bool)

(assert (=> b!1642458 (= tp!475982 e!1053547)))

(declare-fun b!1642742 () Bool)

(declare-fun tp!476069 () Bool)

(declare-fun tp!476068 () Bool)

(assert (=> b!1642742 (= e!1053547 (and tp!476069 tp!476068))))

(declare-fun b!1642741 () Bool)

(declare-fun tp!476065 () Bool)

(assert (=> b!1642741 (= e!1053547 tp!476065)))

(declare-fun b!1642740 () Bool)

(declare-fun tp!476066 () Bool)

(declare-fun tp!476067 () Bool)

(assert (=> b!1642740 (= e!1053547 (and tp!476066 tp!476067))))

(declare-fun b!1642739 () Bool)

(assert (=> b!1642739 (= e!1053547 tp_is_empty!7331)))

(assert (= (and b!1642458 (is-ElementMatch!4520 (regex!3192 (h!23505 rules!1846)))) b!1642739))

(assert (= (and b!1642458 (is-Concat!7803 (regex!3192 (h!23505 rules!1846)))) b!1642740))

(assert (= (and b!1642458 (is-Star!4520 (regex!3192 (h!23505 rules!1846)))) b!1642741))

(assert (= (and b!1642458 (is-Union!4520 (regex!3192 (h!23505 rules!1846)))) b!1642742))

(declare-fun b!1642747 () Bool)

(declare-fun e!1053550 () Bool)

(declare-fun tp!476072 () Bool)

(assert (=> b!1642747 (= e!1053550 (and tp_is_empty!7331 tp!476072))))

(assert (=> b!1642457 (= tp!475989 e!1053550)))

(assert (= (and b!1642457 (is-Cons!18102 (originalCharacters!4006 (h!23504 tokens!457)))) b!1642747))

(declare-fun b_lambda!51619 () Bool)

(assert (= b_lambda!51613 (or (and b!1642444 b_free!44529 (= (toChars!4490 (transformation!3192 (h!23505 rules!1846))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))))) (and b!1642455 b_free!44533) (and b!1642713 b_free!44545 (= (toChars!4490 (transformation!3192 (rule!5042 (h!23504 (t!150138 tokens!457))))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))))) (and b!1642738 b_free!44549 (= (toChars!4490 (transformation!3192 (h!23505 (t!150139 rules!1846)))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))))) b_lambda!51619)))

(declare-fun b_lambda!51621 () Bool)

(assert (= b_lambda!51617 (or (and b!1642444 b_free!44529 (= (toChars!4490 (transformation!3192 (h!23505 rules!1846))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))))) (and b!1642455 b_free!44533) (and b!1642713 b_free!44545 (= (toChars!4490 (transformation!3192 (rule!5042 (h!23504 (t!150138 tokens!457))))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))))) (and b!1642738 b_free!44549 (= (toChars!4490 (transformation!3192 (h!23505 (t!150139 rules!1846)))) (toChars!4490 (transformation!3192 (rule!5042 (h!23504 tokens!457)))))) b_lambda!51621)))

(push 1)

(assert (not b!1642727))

(assert (not b_next!45237))

(assert (not d!494533))

(assert (not d!494605))

(assert (not d!494607))

(assert (not b!1642594))

(assert (not b!1642542))

(assert (not d!494543))

(assert (not b!1642595))

(assert (not b!1642512))

(assert (not d!494529))

(assert (not b!1642684))

(assert (not d!494591))

(assert (not d!494559))

(assert b_and!116473)

(assert (not b!1642541))

(assert (not b_next!45235))

(assert (not b_lambda!51621))

(assert (not b_lambda!51619))

(assert (not b!1642696))

(assert (not b!1642554))

(assert (not d!494549))

(assert (not d!494613))

(assert b_and!116503)

(assert (not b_next!45231))

(assert (not d!494555))

(assert (not b!1642694))

(assert (not b!1642725))

(assert (not d!494609))

(assert (not b!1642699))

(assert (not b!1642737))

(assert (not b!1642712))

(assert (not d!494577))

(assert b_and!116495)

(assert (not b!1642540))

(assert (not b!1642711))

(assert (not tb!94015))

(assert (not b!1642740))

(assert (not d!494535))

(assert (not d!494611))

(assert (not b!1642553))

(assert (not b!1642683))

(assert (not b!1642641))

(assert (not b!1642710))

(assert (not d!494531))

(assert (not d!494593))

(assert (not d!494545))

(assert (not d!494547))

(assert (not b!1642736))

(assert (not b!1642616))

(assert (not b_next!45233))

(assert (not d!494527))

(assert b_and!116493)

(assert (not b!1642543))

(assert (not b!1642644))

(assert (not b!1642630))

(assert (not b!1642747))

(assert (not b!1642517))

(assert b_and!116469)

(assert (not b!1642629))

(assert (not b!1642648))

(assert b_and!116497)

(assert (not b_next!45247))

(assert tp_is_empty!7331)

(assert (not b!1642609))

(assert b_and!116501)

(assert (not b!1642558))

(assert (not d!494551))

(assert (not d!494563))

(assert (not b!1642695))

(assert (not b!1642511))

(assert (not d!494615))

(assert (not b!1642742))

(assert (not b!1642642))

(assert b_and!116499)

(assert (not d!494553))

(assert (not b_next!45249))

(assert (not b_next!45253))

(assert (not d!494589))

(assert (not b_next!45251))

(assert (not b!1642741))

(assert (not b!1642726))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!45237))

(assert b_and!116503)

(assert (not b_next!45231))

(assert b_and!116495)

(assert (not b_next!45233))

(assert b_and!116493)

(assert b_and!116469)

(assert b_and!116501)

(assert b_and!116499)

(assert (not b_next!45251))

(assert b_and!116473)

(assert (not b_next!45235))

(assert b_and!116497)

(assert (not b_next!45247))

(assert (not b_next!45249))

(assert (not b_next!45253))

(check-sat)

(pop 1)

