; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!161370 () Bool)

(assert start!161370)

(declare-fun b!1666187 () Bool)

(declare-fun b_free!45271 () Bool)

(declare-fun b_next!45975 () Bool)

(assert (=> b!1666187 (= b_free!45271 (not b_next!45975))))

(declare-fun tp!480664 () Bool)

(declare-fun b_and!118365 () Bool)

(assert (=> b!1666187 (= tp!480664 b_and!118365)))

(declare-fun b_free!45273 () Bool)

(declare-fun b_next!45977 () Bool)

(assert (=> b!1666187 (= b_free!45273 (not b_next!45977))))

(declare-fun tp!480662 () Bool)

(declare-fun b_and!118367 () Bool)

(assert (=> b!1666187 (= tp!480662 b_and!118367)))

(declare-fun b!1666178 () Bool)

(declare-fun b_free!45275 () Bool)

(declare-fun b_next!45979 () Bool)

(assert (=> b!1666178 (= b_free!45275 (not b_next!45979))))

(declare-fun tp!480665 () Bool)

(declare-fun b_and!118369 () Bool)

(assert (=> b!1666178 (= tp!480665 b_and!118369)))

(declare-fun b_free!45277 () Bool)

(declare-fun b_next!45981 () Bool)

(assert (=> b!1666178 (= b_free!45277 (not b_next!45981))))

(declare-fun tp!480663 () Bool)

(declare-fun b_and!118371 () Bool)

(assert (=> b!1666178 (= tp!480663 b_and!118371)))

(declare-fun tp!480667 () Bool)

(declare-datatypes ((List!18443 0))(
  ( (Nil!18373) (Cons!18373 (h!23774 (_ BitVec 16)) (t!152188 List!18443)) )
))
(declare-datatypes ((TokenValue!3327 0))(
  ( (FloatLiteralValue!6654 (text!23734 List!18443)) (TokenValueExt!3326 (__x!11956 Int)) (Broken!16635 (value!101901 List!18443)) (Object!3396) (End!3327) (Def!3327) (Underscore!3327) (Match!3327) (Else!3327) (Error!3327) (Case!3327) (If!3327) (Extends!3327) (Abstract!3327) (Class!3327) (Val!3327) (DelimiterValue!6654 (del!3387 List!18443)) (KeywordValue!3333 (value!101902 List!18443)) (CommentValue!6654 (value!101903 List!18443)) (WhitespaceValue!6654 (value!101904 List!18443)) (IndentationValue!3327 (value!101905 List!18443)) (String!20966) (Int32!3327) (Broken!16636 (value!101906 List!18443)) (Boolean!3328) (Unit!31130) (OperatorValue!3330 (op!3387 List!18443)) (IdentifierValue!6654 (value!101907 List!18443)) (IdentifierValue!6655 (value!101908 List!18443)) (WhitespaceValue!6655 (value!101909 List!18443)) (True!6654) (False!6654) (Broken!16637 (value!101910 List!18443)) (Broken!16638 (value!101911 List!18443)) (True!6655) (RightBrace!3327) (RightBracket!3327) (Colon!3327) (Null!3327) (Comma!3327) (LeftBracket!3327) (False!6655) (LeftBrace!3327) (ImaginaryLiteralValue!3327 (text!23735 List!18443)) (StringLiteralValue!9981 (value!101912 List!18443)) (EOFValue!3327 (value!101913 List!18443)) (IdentValue!3327 (value!101914 List!18443)) (DelimiterValue!6655 (value!101915 List!18443)) (DedentValue!3327 (value!101916 List!18443)) (NewLineValue!3327 (value!101917 List!18443)) (IntegerValue!9981 (value!101918 (_ BitVec 32)) (text!23736 List!18443)) (IntegerValue!9982 (value!101919 Int) (text!23737 List!18443)) (Times!3327) (Or!3327) (Equal!3327) (Minus!3327) (Broken!16639 (value!101920 List!18443)) (And!3327) (Div!3327) (LessEqual!3327) (Mod!3327) (Concat!7892) (Not!3327) (Plus!3327) (SpaceValue!3327 (value!101921 List!18443)) (IntegerValue!9983 (value!101922 Int) (text!23738 List!18443)) (StringLiteralValue!9982 (text!23739 List!18443)) (FloatLiteralValue!6655 (text!23740 List!18443)) (BytesLiteralValue!3327 (value!101923 List!18443)) (CommentValue!6655 (value!101924 List!18443)) (StringLiteralValue!9983 (value!101925 List!18443)) (ErrorTokenValue!3327 (msg!3388 List!18443)) )
))
(declare-datatypes ((C!9304 0))(
  ( (C!9305 (val!5248 Int)) )
))
(declare-datatypes ((List!18444 0))(
  ( (Nil!18374) (Cons!18374 (h!23775 C!9304) (t!152189 List!18444)) )
))
(declare-datatypes ((IArray!12249 0))(
  ( (IArray!12250 (innerList!6182 List!18444)) )
))
(declare-datatypes ((Conc!6122 0))(
  ( (Node!6122 (left!14698 Conc!6122) (right!15028 Conc!6122) (csize!12474 Int) (cheight!6333 Int)) (Leaf!8961 (xs!8966 IArray!12249) (csize!12475 Int)) (Empty!6122) )
))
(declare-datatypes ((BalanceConc!12188 0))(
  ( (BalanceConc!12189 (c!271171 Conc!6122)) )
))
(declare-datatypes ((Regex!4565 0))(
  ( (ElementMatch!4565 (c!271172 C!9304)) (Concat!7893 (regOne!9642 Regex!4565) (regTwo!9642 Regex!4565)) (EmptyExpr!4565) (Star!4565 (reg!4894 Regex!4565)) (EmptyLang!4565) (Union!4565 (regOne!9643 Regex!4565) (regTwo!9643 Regex!4565)) )
))
(declare-datatypes ((String!20967 0))(
  ( (String!20968 (value!101926 String)) )
))
(declare-datatypes ((TokenValueInjection!6314 0))(
  ( (TokenValueInjection!6315 (toValue!4696 Int) (toChars!4555 Int)) )
))
(declare-datatypes ((Rule!6274 0))(
  ( (Rule!6275 (regex!3237 Regex!4565) (tag!3521 String!20967) (isSeparator!3237 Bool) (transformation!3237 TokenValueInjection!6314)) )
))
(declare-datatypes ((Token!6040 0))(
  ( (Token!6041 (value!101927 TokenValue!3327) (rule!5125 Rule!6274) (size!14610 Int) (originalCharacters!4051 List!18444)) )
))
(declare-datatypes ((List!18445 0))(
  ( (Nil!18375) (Cons!18375 (h!23776 Token!6040) (t!152190 List!18445)) )
))
(declare-fun tokens!457 () List!18445)

(declare-fun b!1666177 () Bool)

(declare-fun e!1067921 () Bool)

(declare-fun e!1067920 () Bool)

(declare-fun inv!23715 (String!20967) Bool)

(declare-fun inv!23718 (TokenValueInjection!6314) Bool)

(assert (=> b!1666177 (= e!1067920 (and tp!480667 (inv!23715 (tag!3521 (rule!5125 (h!23776 tokens!457)))) (inv!23718 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) e!1067921))))

(declare-fun e!1067915 () Bool)

(assert (=> b!1666178 (= e!1067915 (and tp!480665 tp!480663))))

(declare-fun b!1666179 () Bool)

(declare-fun res!747458 () Bool)

(declare-fun e!1067918 () Bool)

(assert (=> b!1666179 (=> (not res!747458) (not e!1067918))))

(declare-datatypes ((LexerInterface!2866 0))(
  ( (LexerInterfaceExt!2863 (__x!11957 Int)) (Lexer!2864) )
))
(declare-fun thiss!17113 () LexerInterface!2866)

(declare-datatypes ((List!18446 0))(
  ( (Nil!18376) (Cons!18376 (h!23777 Rule!6274) (t!152191 List!18446)) )
))
(declare-fun rules!1846 () List!18446)

(declare-fun rulesInvariant!2535 (LexerInterface!2866 List!18446) Bool)

(assert (=> b!1666179 (= res!747458 (rulesInvariant!2535 thiss!17113 rules!1846))))

(declare-fun b!1666180 () Bool)

(declare-fun res!747454 () Bool)

(assert (=> b!1666180 (=> (not res!747454) (not e!1067918))))

(declare-fun rulesProduceEachTokenIndividuallyList!1068 (LexerInterface!2866 List!18446 List!18445) Bool)

(assert (=> b!1666180 (= res!747454 (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1666181 () Bool)

(declare-fun res!747456 () Bool)

(assert (=> b!1666181 (=> (not res!747456) (not e!1067918))))

(declare-fun isEmpty!11428 (List!18446) Bool)

(assert (=> b!1666181 (= res!747456 (not (isEmpty!11428 rules!1846)))))

(declare-fun res!747453 () Bool)

(assert (=> start!161370 (=> (not res!747453) (not e!1067918))))

(get-info :version)

(assert (=> start!161370 (= res!747453 ((_ is Lexer!2864) thiss!17113))))

(assert (=> start!161370 e!1067918))

(assert (=> start!161370 true))

(declare-fun e!1067926 () Bool)

(assert (=> start!161370 e!1067926))

(declare-fun e!1067922 () Bool)

(assert (=> start!161370 e!1067922))

(declare-fun b!1666182 () Bool)

(declare-fun e!1067919 () Bool)

(declare-fun tp!480670 () Bool)

(assert (=> b!1666182 (= e!1067926 (and e!1067919 tp!480670))))

(declare-fun b!1666183 () Bool)

(declare-fun res!747455 () Bool)

(assert (=> b!1666183 (=> (not res!747455) (not e!1067918))))

(assert (=> b!1666183 (= res!747455 (and (not ((_ is Nil!18375) tokens!457)) ((_ is Nil!18375) (t!152190 tokens!457))))))

(declare-fun b!1666184 () Bool)

(declare-fun e!1067925 () Bool)

(declare-datatypes ((IArray!12251 0))(
  ( (IArray!12252 (innerList!6183 List!18445)) )
))
(declare-datatypes ((Conc!6123 0))(
  ( (Node!6123 (left!14699 Conc!6123) (right!15029 Conc!6123) (csize!12476 Int) (cheight!6334 Int)) (Leaf!8962 (xs!8967 IArray!12251) (csize!12477 Int)) (Empty!6123) )
))
(declare-datatypes ((BalanceConc!12190 0))(
  ( (BalanceConc!12191 (c!271173 Conc!6123)) )
))
(declare-datatypes ((tuple2!18090 0))(
  ( (tuple2!18091 (_1!10447 BalanceConc!12190) (_2!10447 BalanceConc!12188)) )
))
(declare-fun lt!627160 () tuple2!18090)

(declare-fun isEmpty!11429 (BalanceConc!12188) Bool)

(assert (=> b!1666184 (= e!1067925 (not (isEmpty!11429 (_2!10447 lt!627160))))))

(declare-fun b!1666185 () Bool)

(declare-fun res!747457 () Bool)

(assert (=> b!1666185 (=> (not res!747457) (not e!1067918))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!559 (LexerInterface!2866 List!18445 List!18446) Bool)

(assert (=> b!1666185 (= res!747457 (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1067916 () Bool)

(declare-fun tp!480669 () Bool)

(declare-fun b!1666186 () Bool)

(declare-fun inv!21 (TokenValue!3327) Bool)

(assert (=> b!1666186 (= e!1067916 (and (inv!21 (value!101927 (h!23776 tokens!457))) e!1067920 tp!480669))))

(assert (=> b!1666187 (= e!1067921 (and tp!480664 tp!480662))))

(declare-fun b!1666188 () Bool)

(declare-fun tp!480666 () Bool)

(assert (=> b!1666188 (= e!1067919 (and tp!480666 (inv!23715 (tag!3521 (h!23777 rules!1846))) (inv!23718 (transformation!3237 (h!23777 rules!1846))) e!1067915))))

(declare-fun b!1666189 () Bool)

(assert (=> b!1666189 (= e!1067918 e!1067925)))

(declare-fun res!747452 () Bool)

(assert (=> b!1666189 (=> res!747452 e!1067925)))

(declare-fun list!7344 (BalanceConc!12190) List!18445)

(assert (=> b!1666189 (= res!747452 (not (= (list!7344 (_1!10447 lt!627160)) tokens!457)))))

(declare-fun lex!1350 (LexerInterface!2866 List!18446 BalanceConc!12188) tuple2!18090)

(declare-fun print!1397 (LexerInterface!2866 BalanceConc!12190) BalanceConc!12188)

(declare-fun seqFromList!2212 (List!18445) BalanceConc!12190)

(assert (=> b!1666189 (= lt!627160 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun b!1666190 () Bool)

(declare-fun tp!480668 () Bool)

(declare-fun inv!23719 (Token!6040) Bool)

(assert (=> b!1666190 (= e!1067922 (and (inv!23719 (h!23776 tokens!457)) e!1067916 tp!480668))))

(assert (= (and start!161370 res!747453) b!1666181))

(assert (= (and b!1666181 res!747456) b!1666179))

(assert (= (and b!1666179 res!747458) b!1666180))

(assert (= (and b!1666180 res!747454) b!1666185))

(assert (= (and b!1666185 res!747457) b!1666183))

(assert (= (and b!1666183 res!747455) b!1666189))

(assert (= (and b!1666189 (not res!747452)) b!1666184))

(assert (= b!1666188 b!1666178))

(assert (= b!1666182 b!1666188))

(assert (= (and start!161370 ((_ is Cons!18376) rules!1846)) b!1666182))

(assert (= b!1666177 b!1666187))

(assert (= b!1666186 b!1666177))

(assert (= b!1666190 b!1666186))

(assert (= (and start!161370 ((_ is Cons!18375) tokens!457)) b!1666190))

(declare-fun m!2029519 () Bool)

(assert (=> b!1666181 m!2029519))

(declare-fun m!2029521 () Bool)

(assert (=> b!1666180 m!2029521))

(declare-fun m!2029523 () Bool)

(assert (=> b!1666179 m!2029523))

(declare-fun m!2029525 () Bool)

(assert (=> b!1666190 m!2029525))

(declare-fun m!2029527 () Bool)

(assert (=> b!1666189 m!2029527))

(declare-fun m!2029529 () Bool)

(assert (=> b!1666189 m!2029529))

(assert (=> b!1666189 m!2029529))

(declare-fun m!2029531 () Bool)

(assert (=> b!1666189 m!2029531))

(assert (=> b!1666189 m!2029531))

(declare-fun m!2029533 () Bool)

(assert (=> b!1666189 m!2029533))

(declare-fun m!2029535 () Bool)

(assert (=> b!1666188 m!2029535))

(declare-fun m!2029537 () Bool)

(assert (=> b!1666188 m!2029537))

(declare-fun m!2029539 () Bool)

(assert (=> b!1666186 m!2029539))

(declare-fun m!2029541 () Bool)

(assert (=> b!1666177 m!2029541))

(declare-fun m!2029543 () Bool)

(assert (=> b!1666177 m!2029543))

(declare-fun m!2029545 () Bool)

(assert (=> b!1666185 m!2029545))

(declare-fun m!2029547 () Bool)

(assert (=> b!1666184 m!2029547))

(check-sat b_and!118365 (not b!1666184) (not b_next!45979) b_and!118369 b_and!118371 (not b_next!45975) (not b!1666182) (not b!1666181) (not b_next!45981) (not b!1666189) (not b!1666185) (not b_next!45977) b_and!118367 (not b!1666190) (not b!1666177) (not b!1666186) (not b!1666179) (not b!1666180) (not b!1666188))
(check-sat b_and!118365 b_and!118367 (not b_next!45979) b_and!118369 b_and!118371 (not b_next!45975) (not b_next!45981) (not b_next!45977))
(get-model)

(declare-fun d!503561 () Bool)

(assert (=> d!503561 (= (inv!23715 (tag!3521 (rule!5125 (h!23776 tokens!457)))) (= (mod (str.len (value!101926 (tag!3521 (rule!5125 (h!23776 tokens!457))))) 2) 0))))

(assert (=> b!1666177 d!503561))

(declare-fun d!503563 () Bool)

(declare-fun res!747465 () Bool)

(declare-fun e!1067929 () Bool)

(assert (=> d!503563 (=> (not res!747465) (not e!1067929))))

(declare-fun semiInverseModEq!1262 (Int Int) Bool)

(assert (=> d!503563 (= res!747465 (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))))))

(assert (=> d!503563 (= (inv!23718 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) e!1067929)))

(declare-fun b!1666193 () Bool)

(declare-fun equivClasses!1203 (Int Int) Bool)

(assert (=> b!1666193 (= e!1067929 (equivClasses!1203 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))))))

(assert (= (and d!503563 res!747465) b!1666193))

(declare-fun m!2029549 () Bool)

(assert (=> d!503563 m!2029549))

(declare-fun m!2029551 () Bool)

(assert (=> b!1666193 m!2029551))

(assert (=> b!1666177 d!503563))

(declare-fun d!503565 () Bool)

(assert (=> d!503565 (= (inv!23715 (tag!3521 (h!23777 rules!1846))) (= (mod (str.len (value!101926 (tag!3521 (h!23777 rules!1846)))) 2) 0))))

(assert (=> b!1666188 d!503565))

(declare-fun d!503567 () Bool)

(declare-fun res!747466 () Bool)

(declare-fun e!1067930 () Bool)

(assert (=> d!503567 (=> (not res!747466) (not e!1067930))))

(assert (=> d!503567 (= res!747466 (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toValue!4696 (transformation!3237 (h!23777 rules!1846)))))))

(assert (=> d!503567 (= (inv!23718 (transformation!3237 (h!23777 rules!1846))) e!1067930)))

(declare-fun b!1666194 () Bool)

(assert (=> b!1666194 (= e!1067930 (equivClasses!1203 (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toValue!4696 (transformation!3237 (h!23777 rules!1846)))))))

(assert (= (and d!503567 res!747466) b!1666194))

(declare-fun m!2029553 () Bool)

(assert (=> d!503567 m!2029553))

(declare-fun m!2029555 () Bool)

(assert (=> b!1666194 m!2029555))

(assert (=> b!1666188 d!503567))

(declare-fun d!503569 () Bool)

(assert (=> d!503569 (= (isEmpty!11428 rules!1846) ((_ is Nil!18376) rules!1846))))

(assert (=> b!1666181 d!503569))

(declare-fun b!1666208 () Bool)

(declare-fun e!1067940 () Bool)

(declare-fun inv!17 (TokenValue!3327) Bool)

(assert (=> b!1666208 (= e!1067940 (inv!17 (value!101927 (h!23776 tokens!457))))))

(declare-fun b!1666209 () Bool)

(declare-fun res!747472 () Bool)

(declare-fun e!1067942 () Bool)

(assert (=> b!1666209 (=> res!747472 e!1067942)))

(assert (=> b!1666209 (= res!747472 (not ((_ is IntegerValue!9983) (value!101927 (h!23776 tokens!457)))))))

(assert (=> b!1666209 (= e!1067940 e!1067942)))

(declare-fun d!503571 () Bool)

(declare-fun c!271178 () Bool)

(assert (=> d!503571 (= c!271178 ((_ is IntegerValue!9981) (value!101927 (h!23776 tokens!457))))))

(declare-fun e!1067941 () Bool)

(assert (=> d!503571 (= (inv!21 (value!101927 (h!23776 tokens!457))) e!1067941)))

(declare-fun b!1666210 () Bool)

(declare-fun inv!16 (TokenValue!3327) Bool)

(assert (=> b!1666210 (= e!1067941 (inv!16 (value!101927 (h!23776 tokens!457))))))

(declare-fun b!1666211 () Bool)

(assert (=> b!1666211 (= e!1067941 e!1067940)))

(declare-fun c!271179 () Bool)

(assert (=> b!1666211 (= c!271179 ((_ is IntegerValue!9982) (value!101927 (h!23776 tokens!457))))))

(declare-fun b!1666212 () Bool)

(declare-fun inv!15 (TokenValue!3327) Bool)

(assert (=> b!1666212 (= e!1067942 (inv!15 (value!101927 (h!23776 tokens!457))))))

(assert (= (and d!503571 c!271178) b!1666210))

(assert (= (and d!503571 (not c!271178)) b!1666211))

(assert (= (and b!1666211 c!271179) b!1666208))

(assert (= (and b!1666211 (not c!271179)) b!1666209))

(assert (= (and b!1666209 (not res!747472)) b!1666212))

(declare-fun m!2029561 () Bool)

(assert (=> b!1666208 m!2029561))

(declare-fun m!2029563 () Bool)

(assert (=> b!1666210 m!2029563))

(declare-fun m!2029565 () Bool)

(assert (=> b!1666212 m!2029565))

(assert (=> b!1666186 d!503571))

(declare-fun d!503577 () Bool)

(declare-fun res!747486 () Bool)

(declare-fun e!1067955 () Bool)

(assert (=> d!503577 (=> res!747486 e!1067955)))

(assert (=> d!503577 (= res!747486 (or (not ((_ is Cons!18375) tokens!457)) (not ((_ is Cons!18375) (t!152190 tokens!457)))))))

(assert (=> d!503577 (= (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 tokens!457 rules!1846) e!1067955)))

(declare-fun b!1666225 () Bool)

(declare-fun e!1067956 () Bool)

(assert (=> b!1666225 (= e!1067955 e!1067956)))

(declare-fun res!747485 () Bool)

(assert (=> b!1666225 (=> (not res!747485) (not e!1067956))))

(declare-fun separableTokensPredicate!806 (LexerInterface!2866 Token!6040 Token!6040 List!18446) Bool)

(assert (=> b!1666225 (= res!747485 (separableTokensPredicate!806 thiss!17113 (h!23776 tokens!457) (h!23776 (t!152190 tokens!457)) rules!1846))))

(declare-datatypes ((Unit!31136 0))(
  ( (Unit!31137) )
))
(declare-fun lt!627178 () Unit!31136)

(declare-fun Unit!31138 () Unit!31136)

(assert (=> b!1666225 (= lt!627178 Unit!31138)))

(declare-fun size!14614 (BalanceConc!12188) Int)

(declare-fun charsOf!1886 (Token!6040) BalanceConc!12188)

(assert (=> b!1666225 (> (size!14614 (charsOf!1886 (h!23776 (t!152190 tokens!457)))) 0)))

(declare-fun lt!627177 () Unit!31136)

(declare-fun Unit!31139 () Unit!31136)

(assert (=> b!1666225 (= lt!627177 Unit!31139)))

(declare-fun rulesProduceIndividualToken!1514 (LexerInterface!2866 List!18446 Token!6040) Bool)

(assert (=> b!1666225 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457)))))

(declare-fun lt!627179 () Unit!31136)

(declare-fun Unit!31140 () Unit!31136)

(assert (=> b!1666225 (= lt!627179 Unit!31140)))

(assert (=> b!1666225 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457))))

(declare-fun lt!627183 () Unit!31136)

(declare-fun lt!627180 () Unit!31136)

(assert (=> b!1666225 (= lt!627183 lt!627180)))

(assert (=> b!1666225 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 (LexerInterface!2866 List!18446 List!18445 Token!6040) Unit!31136)

(assert (=> b!1666225 (= lt!627180 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 tokens!457 (h!23776 (t!152190 tokens!457))))))

(declare-fun lt!627182 () Unit!31136)

(declare-fun lt!627181 () Unit!31136)

(assert (=> b!1666225 (= lt!627182 lt!627181)))

(assert (=> b!1666225 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457))))

(assert (=> b!1666225 (= lt!627181 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 tokens!457 (h!23776 tokens!457)))))

(declare-fun b!1666226 () Bool)

(assert (=> b!1666226 (= e!1067956 (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) rules!1846))))

(assert (= (and d!503577 (not res!747486)) b!1666225))

(assert (= (and b!1666225 res!747485) b!1666226))

(declare-fun m!2029575 () Bool)

(assert (=> b!1666225 m!2029575))

(declare-fun m!2029577 () Bool)

(assert (=> b!1666225 m!2029577))

(declare-fun m!2029579 () Bool)

(assert (=> b!1666225 m!2029579))

(declare-fun m!2029581 () Bool)

(assert (=> b!1666225 m!2029581))

(assert (=> b!1666225 m!2029575))

(declare-fun m!2029583 () Bool)

(assert (=> b!1666225 m!2029583))

(declare-fun m!2029585 () Bool)

(assert (=> b!1666225 m!2029585))

(declare-fun m!2029587 () Bool)

(assert (=> b!1666225 m!2029587))

(declare-fun m!2029589 () Bool)

(assert (=> b!1666226 m!2029589))

(assert (=> b!1666185 d!503577))

(declare-fun d!503587 () Bool)

(declare-fun res!747491 () Bool)

(declare-fun e!1067959 () Bool)

(assert (=> d!503587 (=> (not res!747491) (not e!1067959))))

(declare-fun isEmpty!11433 (List!18444) Bool)

(assert (=> d!503587 (= res!747491 (not (isEmpty!11433 (originalCharacters!4051 (h!23776 tokens!457)))))))

(assert (=> d!503587 (= (inv!23719 (h!23776 tokens!457)) e!1067959)))

(declare-fun b!1666231 () Bool)

(declare-fun res!747492 () Bool)

(assert (=> b!1666231 (=> (not res!747492) (not e!1067959))))

(declare-fun list!7347 (BalanceConc!12188) List!18444)

(declare-fun dynLambda!8270 (Int TokenValue!3327) BalanceConc!12188)

(assert (=> b!1666231 (= res!747492 (= (originalCharacters!4051 (h!23776 tokens!457)) (list!7347 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(declare-fun b!1666232 () Bool)

(declare-fun size!14615 (List!18444) Int)

(assert (=> b!1666232 (= e!1067959 (= (size!14610 (h!23776 tokens!457)) (size!14615 (originalCharacters!4051 (h!23776 tokens!457)))))))

(assert (= (and d!503587 res!747491) b!1666231))

(assert (= (and b!1666231 res!747492) b!1666232))

(declare-fun b_lambda!52305 () Bool)

(assert (=> (not b_lambda!52305) (not b!1666231)))

(declare-fun t!152195 () Bool)

(declare-fun tb!95527 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152195) tb!95527))

(declare-fun b!1666237 () Bool)

(declare-fun e!1067962 () Bool)

(declare-fun tp!480673 () Bool)

(declare-fun inv!23722 (Conc!6122) Bool)

(assert (=> b!1666237 (= e!1067962 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) tp!480673))))

(declare-fun result!115418 () Bool)

(declare-fun inv!23723 (BalanceConc!12188) Bool)

(assert (=> tb!95527 (= result!115418 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))) e!1067962))))

(assert (= tb!95527 b!1666237))

(declare-fun m!2029591 () Bool)

(assert (=> b!1666237 m!2029591))

(declare-fun m!2029593 () Bool)

(assert (=> tb!95527 m!2029593))

(assert (=> b!1666231 t!152195))

(declare-fun b_and!118373 () Bool)

(assert (= b_and!118367 (and (=> t!152195 result!115418) b_and!118373)))

(declare-fun t!152197 () Bool)

(declare-fun tb!95529 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152197) tb!95529))

(declare-fun result!115422 () Bool)

(assert (= result!115422 result!115418))

(assert (=> b!1666231 t!152197))

(declare-fun b_and!118375 () Bool)

(assert (= b_and!118371 (and (=> t!152197 result!115422) b_and!118375)))

(declare-fun m!2029595 () Bool)

(assert (=> d!503587 m!2029595))

(declare-fun m!2029597 () Bool)

(assert (=> b!1666231 m!2029597))

(assert (=> b!1666231 m!2029597))

(declare-fun m!2029599 () Bool)

(assert (=> b!1666231 m!2029599))

(declare-fun m!2029601 () Bool)

(assert (=> b!1666232 m!2029601))

(assert (=> b!1666190 d!503587))

(declare-fun b!1666290 () Bool)

(declare-fun e!1068003 () Bool)

(assert (=> b!1666290 (= e!1068003 true)))

(declare-fun b!1666289 () Bool)

(declare-fun e!1068002 () Bool)

(assert (=> b!1666289 (= e!1068002 e!1068003)))

(declare-fun b!1666288 () Bool)

(declare-fun e!1068001 () Bool)

(assert (=> b!1666288 (= e!1068001 e!1068002)))

(declare-fun d!503589 () Bool)

(assert (=> d!503589 e!1068001))

(assert (= b!1666289 b!1666290))

(assert (= b!1666288 b!1666289))

(assert (= (and d!503589 ((_ is Cons!18376) rules!1846)) b!1666288))

(declare-fun lambda!67948 () Int)

(declare-fun order!11015 () Int)

(declare-fun order!11017 () Int)

(declare-fun dynLambda!8271 (Int Int) Int)

(declare-fun dynLambda!8272 (Int Int) Int)

(assert (=> b!1666290 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8272 order!11017 lambda!67948))))

(declare-fun order!11019 () Int)

(declare-fun dynLambda!8273 (Int Int) Int)

(assert (=> b!1666290 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8272 order!11017 lambda!67948))))

(assert (=> d!503589 true))

(declare-fun lt!627211 () Bool)

(declare-fun forall!4176 (List!18445 Int) Bool)

(assert (=> d!503589 (= lt!627211 (forall!4176 tokens!457 lambda!67948))))

(declare-fun e!1067994 () Bool)

(assert (=> d!503589 (= lt!627211 e!1067994)))

(declare-fun res!747514 () Bool)

(assert (=> d!503589 (=> res!747514 e!1067994)))

(assert (=> d!503589 (= res!747514 (not ((_ is Cons!18375) tokens!457)))))

(assert (=> d!503589 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503589 (= (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 tokens!457) lt!627211)))

(declare-fun b!1666278 () Bool)

(declare-fun e!1067993 () Bool)

(assert (=> b!1666278 (= e!1067994 e!1067993)))

(declare-fun res!747515 () Bool)

(assert (=> b!1666278 (=> (not res!747515) (not e!1067993))))

(assert (=> b!1666278 (= res!747515 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457)))))

(declare-fun b!1666279 () Bool)

(assert (=> b!1666279 (= e!1067993 (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 (t!152190 tokens!457)))))

(assert (= (and d!503589 (not res!747514)) b!1666278))

(assert (= (and b!1666278 res!747515) b!1666279))

(declare-fun m!2029651 () Bool)

(assert (=> d!503589 m!2029651))

(assert (=> d!503589 m!2029519))

(assert (=> b!1666278 m!2029587))

(declare-fun m!2029653 () Bool)

(assert (=> b!1666279 m!2029653))

(assert (=> b!1666180 d!503589))

(declare-fun d!503601 () Bool)

(declare-fun list!7348 (Conc!6123) List!18445)

(assert (=> d!503601 (= (list!7344 (_1!10447 lt!627160)) (list!7348 (c!271173 (_1!10447 lt!627160))))))

(declare-fun bs!397681 () Bool)

(assert (= bs!397681 d!503601))

(declare-fun m!2029657 () Bool)

(assert (=> bs!397681 m!2029657))

(assert (=> b!1666189 d!503601))

(declare-fun lt!627220 () tuple2!18090)

(declare-fun b!1666377 () Bool)

(declare-fun e!1068064 () Bool)

(declare-datatypes ((tuple2!18094 0))(
  ( (tuple2!18095 (_1!10449 List!18445) (_2!10449 List!18444)) )
))
(declare-fun lexList!891 (LexerInterface!2866 List!18446 List!18444) tuple2!18094)

(assert (=> b!1666377 (= e!1068064 (= (list!7347 (_2!10447 lt!627220)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun b!1666378 () Bool)

(declare-fun e!1068063 () Bool)

(declare-fun e!1068062 () Bool)

(assert (=> b!1666378 (= e!1068063 e!1068062)))

(declare-fun res!747533 () Bool)

(assert (=> b!1666378 (= res!747533 (< (size!14614 (_2!10447 lt!627220)) (size!14614 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> b!1666378 (=> (not res!747533) (not e!1068062))))

(declare-fun b!1666379 () Bool)

(declare-fun isEmpty!11434 (BalanceConc!12190) Bool)

(assert (=> b!1666379 (= e!1068062 (not (isEmpty!11434 (_1!10447 lt!627220))))))

(declare-fun b!1666380 () Bool)

(assert (=> b!1666380 (= e!1068063 (= (_2!10447 lt!627220) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun d!503605 () Bool)

(assert (=> d!503605 e!1068064))

(declare-fun res!747532 () Bool)

(assert (=> d!503605 (=> (not res!747532) (not e!1068064))))

(assert (=> d!503605 (= res!747532 e!1068063)))

(declare-fun c!271191 () Bool)

(declare-fun size!14616 (BalanceConc!12190) Int)

(assert (=> d!503605 (= c!271191 (> (size!14616 (_1!10447 lt!627220)) 0))))

(declare-fun lexTailRecV2!614 (LexerInterface!2866 List!18446 BalanceConc!12188 BalanceConc!12188 BalanceConc!12188 BalanceConc!12190) tuple2!18090)

(assert (=> d!503605 (= lt!627220 (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (BalanceConc!12189 Empty!6122) (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (BalanceConc!12191 Empty!6123)))))

(assert (=> d!503605 (= (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) lt!627220)))

(declare-fun b!1666381 () Bool)

(declare-fun res!747531 () Bool)

(assert (=> b!1666381 (=> (not res!747531) (not e!1068064))))

(assert (=> b!1666381 (= res!747531 (= (list!7344 (_1!10447 lt!627220)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (= (and d!503605 c!271191) b!1666378))

(assert (= (and d!503605 (not c!271191)) b!1666380))

(assert (= (and b!1666378 res!747533) b!1666379))

(assert (= (and d!503605 res!747532) b!1666381))

(assert (= (and b!1666381 res!747531) b!1666377))

(declare-fun m!2029695 () Bool)

(assert (=> b!1666378 m!2029695))

(assert (=> b!1666378 m!2029531))

(declare-fun m!2029697 () Bool)

(assert (=> b!1666378 m!2029697))

(declare-fun m!2029699 () Bool)

(assert (=> d!503605 m!2029699))

(assert (=> d!503605 m!2029531))

(assert (=> d!503605 m!2029531))

(declare-fun m!2029701 () Bool)

(assert (=> d!503605 m!2029701))

(declare-fun m!2029703 () Bool)

(assert (=> b!1666381 m!2029703))

(assert (=> b!1666381 m!2029531))

(declare-fun m!2029705 () Bool)

(assert (=> b!1666381 m!2029705))

(assert (=> b!1666381 m!2029705))

(declare-fun m!2029707 () Bool)

(assert (=> b!1666381 m!2029707))

(declare-fun m!2029709 () Bool)

(assert (=> b!1666379 m!2029709))

(declare-fun m!2029711 () Bool)

(assert (=> b!1666377 m!2029711))

(assert (=> b!1666377 m!2029531))

(assert (=> b!1666377 m!2029705))

(assert (=> b!1666377 m!2029705))

(assert (=> b!1666377 m!2029707))

(assert (=> b!1666189 d!503605))

(declare-fun d!503613 () Bool)

(declare-fun lt!627223 () BalanceConc!12188)

(declare-fun printList!979 (LexerInterface!2866 List!18445) List!18444)

(assert (=> d!503613 (= (list!7347 lt!627223) (printList!979 thiss!17113 (list!7344 (seqFromList!2212 tokens!457))))))

(declare-fun printTailRec!917 (LexerInterface!2866 BalanceConc!12190 Int BalanceConc!12188) BalanceConc!12188)

(assert (=> d!503613 (= lt!627223 (printTailRec!917 thiss!17113 (seqFromList!2212 tokens!457) 0 (BalanceConc!12189 Empty!6122)))))

(assert (=> d!503613 (= (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) lt!627223)))

(declare-fun bs!397683 () Bool)

(assert (= bs!397683 d!503613))

(declare-fun m!2029713 () Bool)

(assert (=> bs!397683 m!2029713))

(assert (=> bs!397683 m!2029529))

(declare-fun m!2029715 () Bool)

(assert (=> bs!397683 m!2029715))

(assert (=> bs!397683 m!2029715))

(declare-fun m!2029717 () Bool)

(assert (=> bs!397683 m!2029717))

(assert (=> bs!397683 m!2029529))

(declare-fun m!2029719 () Bool)

(assert (=> bs!397683 m!2029719))

(assert (=> b!1666189 d!503613))

(declare-fun d!503615 () Bool)

(declare-fun fromListB!1003 (List!18445) BalanceConc!12190)

(assert (=> d!503615 (= (seqFromList!2212 tokens!457) (fromListB!1003 tokens!457))))

(declare-fun bs!397684 () Bool)

(assert (= bs!397684 d!503615))

(declare-fun m!2029721 () Bool)

(assert (=> bs!397684 m!2029721))

(assert (=> b!1666189 d!503615))

(declare-fun d!503617 () Bool)

(declare-fun res!747536 () Bool)

(declare-fun e!1068067 () Bool)

(assert (=> d!503617 (=> (not res!747536) (not e!1068067))))

(declare-fun rulesValid!1190 (LexerInterface!2866 List!18446) Bool)

(assert (=> d!503617 (= res!747536 (rulesValid!1190 thiss!17113 rules!1846))))

(assert (=> d!503617 (= (rulesInvariant!2535 thiss!17113 rules!1846) e!1068067)))

(declare-fun b!1666384 () Bool)

(declare-datatypes ((List!18448 0))(
  ( (Nil!18378) (Cons!18378 (h!23779 String!20967) (t!152213 List!18448)) )
))
(declare-fun noDuplicateTag!1190 (LexerInterface!2866 List!18446 List!18448) Bool)

(assert (=> b!1666384 (= e!1068067 (noDuplicateTag!1190 thiss!17113 rules!1846 Nil!18378))))

(assert (= (and d!503617 res!747536) b!1666384))

(declare-fun m!2029723 () Bool)

(assert (=> d!503617 m!2029723))

(declare-fun m!2029725 () Bool)

(assert (=> b!1666384 m!2029725))

(assert (=> b!1666179 d!503617))

(declare-fun d!503619 () Bool)

(declare-fun lt!627226 () Bool)

(assert (=> d!503619 (= lt!627226 (isEmpty!11433 (list!7347 (_2!10447 lt!627160))))))

(declare-fun isEmpty!11435 (Conc!6122) Bool)

(assert (=> d!503619 (= lt!627226 (isEmpty!11435 (c!271171 (_2!10447 lt!627160))))))

(assert (=> d!503619 (= (isEmpty!11429 (_2!10447 lt!627160)) lt!627226)))

(declare-fun bs!397685 () Bool)

(assert (= bs!397685 d!503619))

(declare-fun m!2029727 () Bool)

(assert (=> bs!397685 m!2029727))

(assert (=> bs!397685 m!2029727))

(declare-fun m!2029729 () Bool)

(assert (=> bs!397685 m!2029729))

(declare-fun m!2029731 () Bool)

(assert (=> bs!397685 m!2029731))

(assert (=> b!1666184 d!503619))

(declare-fun b!1666396 () Bool)

(declare-fun e!1068070 () Bool)

(declare-fun tp!480741 () Bool)

(declare-fun tp!480738 () Bool)

(assert (=> b!1666396 (= e!1068070 (and tp!480741 tp!480738))))

(declare-fun b!1666398 () Bool)

(declare-fun tp!480739 () Bool)

(declare-fun tp!480740 () Bool)

(assert (=> b!1666398 (= e!1068070 (and tp!480739 tp!480740))))

(assert (=> b!1666177 (= tp!480667 e!1068070)))

(declare-fun b!1666397 () Bool)

(declare-fun tp!480737 () Bool)

(assert (=> b!1666397 (= e!1068070 tp!480737)))

(declare-fun b!1666395 () Bool)

(declare-fun tp_is_empty!7405 () Bool)

(assert (=> b!1666395 (= e!1068070 tp_is_empty!7405)))

(assert (= (and b!1666177 ((_ is ElementMatch!4565) (regex!3237 (rule!5125 (h!23776 tokens!457))))) b!1666395))

(assert (= (and b!1666177 ((_ is Concat!7893) (regex!3237 (rule!5125 (h!23776 tokens!457))))) b!1666396))

(assert (= (and b!1666177 ((_ is Star!4565) (regex!3237 (rule!5125 (h!23776 tokens!457))))) b!1666397))

(assert (= (and b!1666177 ((_ is Union!4565) (regex!3237 (rule!5125 (h!23776 tokens!457))))) b!1666398))

(declare-fun b!1666409 () Bool)

(declare-fun b_free!45287 () Bool)

(declare-fun b_next!45991 () Bool)

(assert (=> b!1666409 (= b_free!45287 (not b_next!45991))))

(declare-fun tp!480751 () Bool)

(declare-fun b_and!118389 () Bool)

(assert (=> b!1666409 (= tp!480751 b_and!118389)))

(declare-fun b_free!45289 () Bool)

(declare-fun b_next!45993 () Bool)

(assert (=> b!1666409 (= b_free!45289 (not b_next!45993))))

(declare-fun tb!95539 () Bool)

(declare-fun t!152210 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152210) tb!95539))

(declare-fun result!115446 () Bool)

(assert (= result!115446 result!115418))

(assert (=> b!1666231 t!152210))

(declare-fun tp!480752 () Bool)

(declare-fun b_and!118391 () Bool)

(assert (=> b!1666409 (= tp!480752 (and (=> t!152210 result!115446) b_and!118391))))

(declare-fun e!1068079 () Bool)

(assert (=> b!1666409 (= e!1068079 (and tp!480751 tp!480752))))

(declare-fun tp!480750 () Bool)

(declare-fun b!1666408 () Bool)

(declare-fun e!1068081 () Bool)

(assert (=> b!1666408 (= e!1068081 (and tp!480750 (inv!23715 (tag!3521 (h!23777 (t!152191 rules!1846)))) (inv!23718 (transformation!3237 (h!23777 (t!152191 rules!1846)))) e!1068079))))

(declare-fun b!1666407 () Bool)

(declare-fun e!1068082 () Bool)

(declare-fun tp!480753 () Bool)

(assert (=> b!1666407 (= e!1068082 (and e!1068081 tp!480753))))

(assert (=> b!1666182 (= tp!480670 e!1068082)))

(assert (= b!1666408 b!1666409))

(assert (= b!1666407 b!1666408))

(assert (= (and b!1666182 ((_ is Cons!18376) (t!152191 rules!1846))) b!1666407))

(declare-fun m!2029733 () Bool)

(assert (=> b!1666408 m!2029733))

(declare-fun m!2029735 () Bool)

(assert (=> b!1666408 m!2029735))

(declare-fun b!1666411 () Bool)

(declare-fun e!1068083 () Bool)

(declare-fun tp!480758 () Bool)

(declare-fun tp!480755 () Bool)

(assert (=> b!1666411 (= e!1068083 (and tp!480758 tp!480755))))

(declare-fun b!1666413 () Bool)

(declare-fun tp!480756 () Bool)

(declare-fun tp!480757 () Bool)

(assert (=> b!1666413 (= e!1068083 (and tp!480756 tp!480757))))

(assert (=> b!1666188 (= tp!480666 e!1068083)))

(declare-fun b!1666412 () Bool)

(declare-fun tp!480754 () Bool)

(assert (=> b!1666412 (= e!1068083 tp!480754)))

(declare-fun b!1666410 () Bool)

(assert (=> b!1666410 (= e!1068083 tp_is_empty!7405)))

(assert (= (and b!1666188 ((_ is ElementMatch!4565) (regex!3237 (h!23777 rules!1846)))) b!1666410))

(assert (= (and b!1666188 ((_ is Concat!7893) (regex!3237 (h!23777 rules!1846)))) b!1666411))

(assert (= (and b!1666188 ((_ is Star!4565) (regex!3237 (h!23777 rules!1846)))) b!1666412))

(assert (= (and b!1666188 ((_ is Union!4565) (regex!3237 (h!23777 rules!1846)))) b!1666413))

(declare-fun b!1666418 () Bool)

(declare-fun e!1068086 () Bool)

(declare-fun tp!480761 () Bool)

(assert (=> b!1666418 (= e!1068086 (and tp_is_empty!7405 tp!480761))))

(assert (=> b!1666186 (= tp!480669 e!1068086)))

(assert (= (and b!1666186 ((_ is Cons!18374) (originalCharacters!4051 (h!23776 tokens!457)))) b!1666418))

(declare-fun b!1666432 () Bool)

(declare-fun b_free!45291 () Bool)

(declare-fun b_next!45995 () Bool)

(assert (=> b!1666432 (= b_free!45291 (not b_next!45995))))

(declare-fun tp!480774 () Bool)

(declare-fun b_and!118393 () Bool)

(assert (=> b!1666432 (= tp!480774 b_and!118393)))

(declare-fun b_free!45293 () Bool)

(declare-fun b_next!45997 () Bool)

(assert (=> b!1666432 (= b_free!45293 (not b_next!45997))))

(declare-fun t!152212 () Bool)

(declare-fun tb!95541 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152212) tb!95541))

(declare-fun result!115452 () Bool)

(assert (= result!115452 result!115418))

(assert (=> b!1666231 t!152212))

(declare-fun b_and!118395 () Bool)

(declare-fun tp!480776 () Bool)

(assert (=> b!1666432 (= tp!480776 (and (=> t!152212 result!115452) b_and!118395))))

(declare-fun e!1068099 () Bool)

(assert (=> b!1666432 (= e!1068099 (and tp!480774 tp!480776))))

(declare-fun e!1068104 () Bool)

(assert (=> b!1666190 (= tp!480668 e!1068104)))

(declare-fun e!1068103 () Bool)

(declare-fun tp!480772 () Bool)

(declare-fun b!1666431 () Bool)

(assert (=> b!1666431 (= e!1068103 (and tp!480772 (inv!23715 (tag!3521 (rule!5125 (h!23776 (t!152190 tokens!457))))) (inv!23718 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) e!1068099))))

(declare-fun e!1068101 () Bool)

(declare-fun b!1666429 () Bool)

(declare-fun tp!480775 () Bool)

(assert (=> b!1666429 (= e!1068104 (and (inv!23719 (h!23776 (t!152190 tokens!457))) e!1068101 tp!480775))))

(declare-fun b!1666430 () Bool)

(declare-fun tp!480773 () Bool)

(assert (=> b!1666430 (= e!1068101 (and (inv!21 (value!101927 (h!23776 (t!152190 tokens!457)))) e!1068103 tp!480773))))

(assert (= b!1666431 b!1666432))

(assert (= b!1666430 b!1666431))

(assert (= b!1666429 b!1666430))

(assert (= (and b!1666190 ((_ is Cons!18375) (t!152190 tokens!457))) b!1666429))

(declare-fun m!2029737 () Bool)

(assert (=> b!1666431 m!2029737))

(declare-fun m!2029739 () Bool)

(assert (=> b!1666431 m!2029739))

(declare-fun m!2029741 () Bool)

(assert (=> b!1666429 m!2029741))

(declare-fun m!2029743 () Bool)

(assert (=> b!1666430 m!2029743))

(declare-fun b_lambda!52311 () Bool)

(assert (= b_lambda!52305 (or (and b!1666187 b_free!45273) (and b!1666178 b_free!45277 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666409 b_free!45289 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666432 b_free!45293 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) b_lambda!52311)))

(check-sat (not b!1666279) (not d!503617) (not b!1666210) (not b!1666237) b_and!118375 (not b!1666212) (not d!503567) (not b!1666225) b_and!118365 (not b!1666396) (not b!1666378) tp_is_empty!7405 (not b!1666397) b_and!118395 (not b_next!45997) (not d!503563) (not b!1666418) (not b_next!45979) (not b!1666413) (not d!503605) (not b!1666226) (not d!503613) b_and!118369 (not d!503619) b_and!118393 (not tb!95527) b_and!118389 (not b!1666430) (not b_next!45975) (not b!1666194) (not b_next!45995) (not b!1666408) (not b!1666208) (not b!1666429) (not b!1666411) (not b!1666377) b_and!118373 (not b!1666193) (not d!503587) (not b!1666407) (not b!1666381) (not b!1666431) (not b_next!45981) (not d!503615) (not d!503601) (not b_next!45993) (not b!1666398) (not b_next!45991) (not b!1666278) (not b!1666379) (not b!1666288) b_and!118391 (not b!1666412) (not b!1666231) (not b_lambda!52311) (not b_next!45977) (not d!503589) (not b!1666232) (not b!1666384))
(check-sat b_and!118365 (not b_next!45979) b_and!118369 (not b_next!45975) (not b_next!45995) b_and!118373 (not b_next!45981) b_and!118391 b_and!118375 (not b_next!45977) b_and!118395 (not b_next!45997) b_and!118393 b_and!118389 (not b_next!45993) (not b_next!45991))
(get-model)

(declare-fun d!503621 () Bool)

(assert (=> d!503621 true))

(declare-fun order!11021 () Int)

(declare-fun lambda!67951 () Int)

(declare-fun dynLambda!8274 (Int Int) Int)

(assert (=> d!503621 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (dynLambda!8274 order!11021 lambda!67951))))

(assert (=> d!503621 true))

(assert (=> d!503621 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (dynLambda!8274 order!11021 lambda!67951))))

(declare-fun Forall!659 (Int) Bool)

(assert (=> d!503621 (= (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (Forall!659 lambda!67951))))

(declare-fun bs!397686 () Bool)

(assert (= bs!397686 d!503621))

(declare-fun m!2029745 () Bool)

(assert (=> bs!397686 m!2029745))

(assert (=> d!503563 d!503621))

(declare-fun d!503623 () Bool)

(declare-fun lt!627232 () Bool)

(declare-fun e!1068112 () Bool)

(assert (=> d!503623 (= lt!627232 e!1068112)))

(declare-fun res!747550 () Bool)

(assert (=> d!503623 (=> (not res!747550) (not e!1068112))))

(declare-fun singletonSeq!1744 (Token!6040) BalanceConc!12190)

(assert (=> d!503623 (= res!747550 (= (list!7344 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))))) (list!7344 (singletonSeq!1744 (h!23776 tokens!457)))))))

(declare-fun e!1068111 () Bool)

(assert (=> d!503623 (= lt!627232 e!1068111)))

(declare-fun res!747549 () Bool)

(assert (=> d!503623 (=> (not res!747549) (not e!1068111))))

(declare-fun lt!627231 () tuple2!18090)

(assert (=> d!503623 (= res!747549 (= (size!14616 (_1!10447 lt!627231)) 1))))

(assert (=> d!503623 (= lt!627231 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))))))

(assert (=> d!503623 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503623 (= (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457)) lt!627232)))

(declare-fun b!1666447 () Bool)

(declare-fun res!747548 () Bool)

(assert (=> b!1666447 (=> (not res!747548) (not e!1068111))))

(declare-fun apply!4933 (BalanceConc!12190 Int) Token!6040)

(assert (=> b!1666447 (= res!747548 (= (apply!4933 (_1!10447 lt!627231) 0) (h!23776 tokens!457)))))

(declare-fun b!1666448 () Bool)

(assert (=> b!1666448 (= e!1068111 (isEmpty!11429 (_2!10447 lt!627231)))))

(declare-fun b!1666449 () Bool)

(assert (=> b!1666449 (= e!1068112 (isEmpty!11429 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))))))))

(assert (= (and d!503623 res!747549) b!1666447))

(assert (= (and b!1666447 res!747548) b!1666448))

(assert (= (and d!503623 res!747550) b!1666449))

(declare-fun m!2029749 () Bool)

(assert (=> d!503623 m!2029749))

(declare-fun m!2029751 () Bool)

(assert (=> d!503623 m!2029751))

(assert (=> d!503623 m!2029749))

(declare-fun m!2029753 () Bool)

(assert (=> d!503623 m!2029753))

(assert (=> d!503623 m!2029749))

(declare-fun m!2029755 () Bool)

(assert (=> d!503623 m!2029755))

(assert (=> d!503623 m!2029519))

(declare-fun m!2029757 () Bool)

(assert (=> d!503623 m!2029757))

(assert (=> d!503623 m!2029755))

(declare-fun m!2029759 () Bool)

(assert (=> d!503623 m!2029759))

(declare-fun m!2029761 () Bool)

(assert (=> b!1666447 m!2029761))

(declare-fun m!2029763 () Bool)

(assert (=> b!1666448 m!2029763))

(assert (=> b!1666449 m!2029749))

(assert (=> b!1666449 m!2029749))

(assert (=> b!1666449 m!2029755))

(assert (=> b!1666449 m!2029755))

(assert (=> b!1666449 m!2029759))

(declare-fun m!2029765 () Bool)

(assert (=> b!1666449 m!2029765))

(assert (=> b!1666278 d!503623))

(declare-fun d!503629 () Bool)

(assert (=> d!503629 (= (inv!23715 (tag!3521 (rule!5125 (h!23776 (t!152190 tokens!457))))) (= (mod (str.len (value!101926 (tag!3521 (rule!5125 (h!23776 (t!152190 tokens!457)))))) 2) 0))))

(assert (=> b!1666431 d!503629))

(declare-fun d!503631 () Bool)

(declare-fun res!747551 () Bool)

(declare-fun e!1068113 () Bool)

(assert (=> d!503631 (=> (not res!747551) (not e!1068113))))

(assert (=> d!503631 (= res!747551 (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))))))

(assert (=> d!503631 (= (inv!23718 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) e!1068113)))

(declare-fun b!1666450 () Bool)

(assert (=> b!1666450 (= e!1068113 (equivClasses!1203 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))))))

(assert (= (and d!503631 res!747551) b!1666450))

(declare-fun m!2029767 () Bool)

(assert (=> d!503631 m!2029767))

(declare-fun m!2029769 () Bool)

(assert (=> b!1666450 m!2029769))

(assert (=> b!1666431 d!503631))

(declare-fun d!503633 () Bool)

(declare-fun isBalanced!1899 (Conc!6122) Bool)

(assert (=> d!503633 (= (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))) (isBalanced!1899 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(declare-fun bs!397688 () Bool)

(assert (= bs!397688 d!503633))

(declare-fun m!2029771 () Bool)

(assert (=> bs!397688 m!2029771))

(assert (=> tb!95527 d!503633))

(declare-fun d!503635 () Bool)

(declare-fun e!1068116 () Bool)

(assert (=> d!503635 e!1068116))

(declare-fun res!747554 () Bool)

(assert (=> d!503635 (=> (not res!747554) (not e!1068116))))

(declare-fun lt!627235 () BalanceConc!12190)

(assert (=> d!503635 (= res!747554 (= (list!7344 lt!627235) tokens!457))))

(declare-fun fromList!407 (List!18445) Conc!6123)

(assert (=> d!503635 (= lt!627235 (BalanceConc!12191 (fromList!407 tokens!457)))))

(assert (=> d!503635 (= (fromListB!1003 tokens!457) lt!627235)))

(declare-fun b!1666453 () Bool)

(declare-fun isBalanced!1900 (Conc!6123) Bool)

(assert (=> b!1666453 (= e!1068116 (isBalanced!1900 (fromList!407 tokens!457)))))

(assert (= (and d!503635 res!747554) b!1666453))

(declare-fun m!2029773 () Bool)

(assert (=> d!503635 m!2029773))

(declare-fun m!2029775 () Bool)

(assert (=> d!503635 m!2029775))

(assert (=> b!1666453 m!2029775))

(assert (=> b!1666453 m!2029775))

(declare-fun m!2029777 () Bool)

(assert (=> b!1666453 m!2029777))

(assert (=> d!503615 d!503635))

(declare-fun d!503637 () Bool)

(declare-fun charsToBigInt!0 (List!18443 Int) Int)

(assert (=> d!503637 (= (inv!15 (value!101927 (h!23776 tokens!457))) (= (charsToBigInt!0 (text!23738 (value!101927 (h!23776 tokens!457))) 0) (value!101922 (value!101927 (h!23776 tokens!457)))))))

(declare-fun bs!397689 () Bool)

(assert (= bs!397689 d!503637))

(declare-fun m!2029779 () Bool)

(assert (=> bs!397689 m!2029779))

(assert (=> b!1666212 d!503637))

(declare-fun d!503639 () Bool)

(declare-fun list!7349 (Conc!6122) List!18444)

(assert (=> d!503639 (= (list!7347 lt!627223) (list!7349 (c!271171 lt!627223)))))

(declare-fun bs!397690 () Bool)

(assert (= bs!397690 d!503639))

(declare-fun m!2029781 () Bool)

(assert (=> bs!397690 m!2029781))

(assert (=> d!503613 d!503639))

(declare-fun d!503641 () Bool)

(declare-fun c!271195 () Bool)

(assert (=> d!503641 (= c!271195 ((_ is Cons!18375) (list!7344 (seqFromList!2212 tokens!457))))))

(declare-fun e!1068125 () List!18444)

(assert (=> d!503641 (= (printList!979 thiss!17113 (list!7344 (seqFromList!2212 tokens!457))) e!1068125)))

(declare-fun b!1666467 () Bool)

(declare-fun ++!5002 (List!18444 List!18444) List!18444)

(assert (=> b!1666467 (= e!1068125 (++!5002 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))) (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457))))))))

(declare-fun b!1666468 () Bool)

(assert (=> b!1666468 (= e!1068125 Nil!18374)))

(assert (= (and d!503641 c!271195) b!1666467))

(assert (= (and d!503641 (not c!271195)) b!1666468))

(declare-fun m!2029801 () Bool)

(assert (=> b!1666467 m!2029801))

(assert (=> b!1666467 m!2029801))

(declare-fun m!2029803 () Bool)

(assert (=> b!1666467 m!2029803))

(declare-fun m!2029805 () Bool)

(assert (=> b!1666467 m!2029805))

(assert (=> b!1666467 m!2029803))

(assert (=> b!1666467 m!2029805))

(declare-fun m!2029807 () Bool)

(assert (=> b!1666467 m!2029807))

(assert (=> d!503613 d!503641))

(declare-fun d!503645 () Bool)

(assert (=> d!503645 (= (list!7344 (seqFromList!2212 tokens!457)) (list!7348 (c!271173 (seqFromList!2212 tokens!457))))))

(declare-fun bs!397691 () Bool)

(assert (= bs!397691 d!503645))

(declare-fun m!2029809 () Bool)

(assert (=> bs!397691 m!2029809))

(assert (=> d!503613 d!503645))

(declare-fun d!503647 () Bool)

(declare-fun lt!627265 () BalanceConc!12188)

(declare-fun printListTailRec!412 (LexerInterface!2866 List!18445 List!18444) List!18444)

(declare-fun dropList!711 (BalanceConc!12190 Int) List!18445)

(assert (=> d!503647 (= (list!7347 lt!627265) (printListTailRec!412 thiss!17113 (dropList!711 (seqFromList!2212 tokens!457) 0) (list!7347 (BalanceConc!12189 Empty!6122))))))

(declare-fun e!1068131 () BalanceConc!12188)

(assert (=> d!503647 (= lt!627265 e!1068131)))

(declare-fun c!271198 () Bool)

(assert (=> d!503647 (= c!271198 (>= 0 (size!14616 (seqFromList!2212 tokens!457))))))

(declare-fun e!1068130 () Bool)

(assert (=> d!503647 e!1068130))

(declare-fun res!747566 () Bool)

(assert (=> d!503647 (=> (not res!747566) (not e!1068130))))

(assert (=> d!503647 (= res!747566 (>= 0 0))))

(assert (=> d!503647 (= (printTailRec!917 thiss!17113 (seqFromList!2212 tokens!457) 0 (BalanceConc!12189 Empty!6122)) lt!627265)))

(declare-fun b!1666475 () Bool)

(assert (=> b!1666475 (= e!1068130 (<= 0 (size!14616 (seqFromList!2212 tokens!457))))))

(declare-fun b!1666476 () Bool)

(assert (=> b!1666476 (= e!1068131 (BalanceConc!12189 Empty!6122))))

(declare-fun b!1666477 () Bool)

(declare-fun ++!5003 (BalanceConc!12188 BalanceConc!12188) BalanceConc!12188)

(assert (=> b!1666477 (= e!1068131 (printTailRec!917 thiss!17113 (seqFromList!2212 tokens!457) (+ 0 1) (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0)))))))

(declare-fun lt!627260 () List!18445)

(assert (=> b!1666477 (= lt!627260 (list!7344 (seqFromList!2212 tokens!457)))))

(declare-fun lt!627264 () Unit!31136)

(declare-fun lemmaDropApply!619 (List!18445 Int) Unit!31136)

(assert (=> b!1666477 (= lt!627264 (lemmaDropApply!619 lt!627260 0))))

(declare-fun head!3718 (List!18445) Token!6040)

(declare-fun drop!937 (List!18445 Int) List!18445)

(declare-fun apply!4936 (List!18445 Int) Token!6040)

(assert (=> b!1666477 (= (head!3718 (drop!937 lt!627260 0)) (apply!4936 lt!627260 0))))

(declare-fun lt!627262 () Unit!31136)

(assert (=> b!1666477 (= lt!627262 lt!627264)))

(declare-fun lt!627263 () List!18445)

(assert (=> b!1666477 (= lt!627263 (list!7344 (seqFromList!2212 tokens!457)))))

(declare-fun lt!627261 () Unit!31136)

(declare-fun lemmaDropTail!599 (List!18445 Int) Unit!31136)

(assert (=> b!1666477 (= lt!627261 (lemmaDropTail!599 lt!627263 0))))

(declare-fun tail!2483 (List!18445) List!18445)

(assert (=> b!1666477 (= (tail!2483 (drop!937 lt!627263 0)) (drop!937 lt!627263 (+ 0 1)))))

(declare-fun lt!627259 () Unit!31136)

(assert (=> b!1666477 (= lt!627259 lt!627261)))

(assert (= (and d!503647 res!747566) b!1666475))

(assert (= (and d!503647 c!271198) b!1666476))

(assert (= (and d!503647 (not c!271198)) b!1666477))

(assert (=> d!503647 m!2029529))

(declare-fun m!2029829 () Bool)

(assert (=> d!503647 m!2029829))

(declare-fun m!2029831 () Bool)

(assert (=> d!503647 m!2029831))

(assert (=> d!503647 m!2029829))

(assert (=> d!503647 m!2029831))

(declare-fun m!2029833 () Bool)

(assert (=> d!503647 m!2029833))

(declare-fun m!2029835 () Bool)

(assert (=> d!503647 m!2029835))

(assert (=> d!503647 m!2029529))

(declare-fun m!2029837 () Bool)

(assert (=> d!503647 m!2029837))

(assert (=> b!1666475 m!2029529))

(assert (=> b!1666475 m!2029837))

(declare-fun m!2029839 () Bool)

(assert (=> b!1666477 m!2029839))

(declare-fun m!2029841 () Bool)

(assert (=> b!1666477 m!2029841))

(declare-fun m!2029843 () Bool)

(assert (=> b!1666477 m!2029843))

(declare-fun m!2029845 () Bool)

(assert (=> b!1666477 m!2029845))

(assert (=> b!1666477 m!2029529))

(declare-fun m!2029847 () Bool)

(assert (=> b!1666477 m!2029847))

(declare-fun m!2029849 () Bool)

(assert (=> b!1666477 m!2029849))

(assert (=> b!1666477 m!2029529))

(assert (=> b!1666477 m!2029715))

(declare-fun m!2029851 () Bool)

(assert (=> b!1666477 m!2029851))

(assert (=> b!1666477 m!2029847))

(declare-fun m!2029853 () Bool)

(assert (=> b!1666477 m!2029853))

(declare-fun m!2029855 () Bool)

(assert (=> b!1666477 m!2029855))

(assert (=> b!1666477 m!2029529))

(declare-fun m!2029857 () Bool)

(assert (=> b!1666477 m!2029857))

(declare-fun m!2029859 () Bool)

(assert (=> b!1666477 m!2029859))

(assert (=> b!1666477 m!2029843))

(assert (=> b!1666477 m!2029853))

(assert (=> b!1666477 m!2029857))

(assert (=> b!1666477 m!2029841))

(declare-fun m!2029861 () Bool)

(assert (=> b!1666477 m!2029861))

(assert (=> d!503613 d!503647))

(declare-fun d!503653 () Bool)

(declare-fun res!747568 () Bool)

(declare-fun e!1068132 () Bool)

(assert (=> d!503653 (=> res!747568 e!1068132)))

(assert (=> d!503653 (= res!747568 (or (not ((_ is Cons!18375) (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (not ((_ is Cons!18375) (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))

(assert (=> d!503653 (= (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) rules!1846) e!1068132)))

(declare-fun b!1666478 () Bool)

(declare-fun e!1068133 () Bool)

(assert (=> b!1666478 (= e!1068132 e!1068133)))

(declare-fun res!747567 () Bool)

(assert (=> b!1666478 (=> (not res!747567) (not e!1068133))))

(assert (=> b!1666478 (= res!747567 (separableTokensPredicate!806 thiss!17113 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) rules!1846))))

(declare-fun lt!627267 () Unit!31136)

(declare-fun Unit!31141 () Unit!31136)

(assert (=> b!1666478 (= lt!627267 Unit!31141)))

(assert (=> b!1666478 (> (size!14614 (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))) 0)))

(declare-fun lt!627266 () Unit!31136)

(declare-fun Unit!31142 () Unit!31136)

(assert (=> b!1666478 (= lt!627266 Unit!31142)))

(assert (=> b!1666478 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))

(declare-fun lt!627268 () Unit!31136)

(declare-fun Unit!31143 () Unit!31136)

(assert (=> b!1666478 (= lt!627268 Unit!31143)))

(assert (=> b!1666478 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))

(declare-fun lt!627272 () Unit!31136)

(declare-fun lt!627269 () Unit!31136)

(assert (=> b!1666478 (= lt!627272 lt!627269)))

(assert (=> b!1666478 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))

(assert (=> b!1666478 (= lt!627269 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))

(declare-fun lt!627271 () Unit!31136)

(declare-fun lt!627270 () Unit!31136)

(assert (=> b!1666478 (= lt!627271 lt!627270)))

(assert (=> b!1666478 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))

(assert (=> b!1666478 (= lt!627270 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))

(declare-fun b!1666479 () Bool)

(assert (=> b!1666479 (= e!1068133 (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) rules!1846))))

(assert (= (and d!503653 (not res!747568)) b!1666478))

(assert (= (and b!1666478 res!747567) b!1666479))

(declare-fun m!2029863 () Bool)

(assert (=> b!1666478 m!2029863))

(declare-fun m!2029865 () Bool)

(assert (=> b!1666478 m!2029865))

(declare-fun m!2029867 () Bool)

(assert (=> b!1666478 m!2029867))

(declare-fun m!2029869 () Bool)

(assert (=> b!1666478 m!2029869))

(assert (=> b!1666478 m!2029863))

(declare-fun m!2029871 () Bool)

(assert (=> b!1666478 m!2029871))

(declare-fun m!2029873 () Bool)

(assert (=> b!1666478 m!2029873))

(declare-fun m!2029875 () Bool)

(assert (=> b!1666478 m!2029875))

(declare-fun m!2029877 () Bool)

(assert (=> b!1666479 m!2029877))

(assert (=> b!1666226 d!503653))

(declare-fun d!503655 () Bool)

(assert (=> d!503655 (= (list!7344 (_1!10447 lt!627220)) (list!7348 (c!271173 (_1!10447 lt!627220))))))

(declare-fun bs!397694 () Bool)

(assert (= bs!397694 d!503655))

(declare-fun m!2029879 () Bool)

(assert (=> bs!397694 m!2029879))

(assert (=> b!1666381 d!503655))

(declare-fun d!503657 () Bool)

(declare-fun e!1068141 () Bool)

(assert (=> d!503657 e!1068141))

(declare-fun c!271203 () Bool)

(declare-fun lt!627281 () tuple2!18094)

(declare-fun size!14618 (List!18445) Int)

(assert (=> d!503657 (= c!271203 (> (size!14618 (_1!10449 lt!627281)) 0))))

(declare-fun e!1068140 () tuple2!18094)

(assert (=> d!503657 (= lt!627281 e!1068140)))

(declare-fun c!271204 () Bool)

(declare-datatypes ((tuple2!18096 0))(
  ( (tuple2!18097 (_1!10450 Token!6040) (_2!10450 List!18444)) )
))
(declare-datatypes ((Option!3525 0))(
  ( (None!3524) (Some!3524 (v!24773 tuple2!18096)) )
))
(declare-fun lt!627280 () Option!3525)

(assert (=> d!503657 (= c!271204 ((_ is Some!3524) lt!627280))))

(declare-fun maxPrefix!1427 (LexerInterface!2866 List!18446 List!18444) Option!3525)

(assert (=> d!503657 (= lt!627280 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> d!503657 (= (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) lt!627281)))

(declare-fun b!1666490 () Bool)

(declare-fun lt!627279 () tuple2!18094)

(assert (=> b!1666490 (= e!1068140 (tuple2!18095 (Cons!18375 (_1!10450 (v!24773 lt!627280)) (_1!10449 lt!627279)) (_2!10449 lt!627279)))))

(assert (=> b!1666490 (= lt!627279 (lexList!891 thiss!17113 rules!1846 (_2!10450 (v!24773 lt!627280))))))

(declare-fun b!1666491 () Bool)

(declare-fun e!1068142 () Bool)

(declare-fun isEmpty!11436 (List!18445) Bool)

(assert (=> b!1666491 (= e!1068142 (not (isEmpty!11436 (_1!10449 lt!627281))))))

(declare-fun b!1666492 () Bool)

(assert (=> b!1666492 (= e!1068141 e!1068142)))

(declare-fun res!747571 () Bool)

(assert (=> b!1666492 (= res!747571 (< (size!14615 (_2!10449 lt!627281)) (size!14615 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))

(assert (=> b!1666492 (=> (not res!747571) (not e!1068142))))

(declare-fun b!1666493 () Bool)

(assert (=> b!1666493 (= e!1068140 (tuple2!18095 Nil!18375 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(declare-fun b!1666494 () Bool)

(assert (=> b!1666494 (= e!1068141 (= (_2!10449 lt!627281) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (= (and d!503657 c!271204) b!1666490))

(assert (= (and d!503657 (not c!271204)) b!1666493))

(assert (= (and d!503657 c!271203) b!1666492))

(assert (= (and d!503657 (not c!271203)) b!1666494))

(assert (= (and b!1666492 res!747571) b!1666491))

(declare-fun m!2029881 () Bool)

(assert (=> d!503657 m!2029881))

(assert (=> d!503657 m!2029705))

(declare-fun m!2029883 () Bool)

(assert (=> d!503657 m!2029883))

(declare-fun m!2029885 () Bool)

(assert (=> b!1666490 m!2029885))

(declare-fun m!2029887 () Bool)

(assert (=> b!1666491 m!2029887))

(declare-fun m!2029889 () Bool)

(assert (=> b!1666492 m!2029889))

(assert (=> b!1666492 m!2029705))

(declare-fun m!2029891 () Bool)

(assert (=> b!1666492 m!2029891))

(assert (=> b!1666381 d!503657))

(declare-fun d!503659 () Bool)

(assert (=> d!503659 (= (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) (list!7349 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(declare-fun bs!397695 () Bool)

(assert (= bs!397695 d!503659))

(declare-fun m!2029893 () Bool)

(assert (=> bs!397695 m!2029893))

(assert (=> b!1666381 d!503659))

(declare-fun d!503661 () Bool)

(declare-fun lt!627284 () Int)

(assert (=> d!503661 (= lt!627284 (size!14618 (list!7344 (_1!10447 lt!627220))))))

(declare-fun size!14619 (Conc!6123) Int)

(assert (=> d!503661 (= lt!627284 (size!14619 (c!271173 (_1!10447 lt!627220))))))

(assert (=> d!503661 (= (size!14616 (_1!10447 lt!627220)) lt!627284)))

(declare-fun bs!397696 () Bool)

(assert (= bs!397696 d!503661))

(assert (=> bs!397696 m!2029703))

(assert (=> bs!397696 m!2029703))

(declare-fun m!2029895 () Bool)

(assert (=> bs!397696 m!2029895))

(declare-fun m!2029897 () Bool)

(assert (=> bs!397696 m!2029897))

(assert (=> d!503605 d!503661))

(declare-fun b!1666550 () Bool)

(declare-fun e!1068177 () Bool)

(declare-fun lt!627407 () tuple2!18090)

(declare-fun lexRec!380 (LexerInterface!2866 List!18446 BalanceConc!12188) tuple2!18090)

(assert (=> b!1666550 (= e!1068177 (= (list!7347 (_2!10447 lt!627407)) (list!7347 (_2!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun b!1666551 () Bool)

(declare-fun lt!627382 () tuple2!18090)

(declare-datatypes ((tuple2!18098 0))(
  ( (tuple2!18099 (_1!10451 Token!6040) (_2!10451 BalanceConc!12188)) )
))
(declare-datatypes ((Option!3526 0))(
  ( (None!3525) (Some!3525 (v!24774 tuple2!18098)) )
))
(declare-fun lt!627392 () Option!3526)

(assert (=> b!1666551 (= lt!627382 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627392))))))

(declare-fun e!1068176 () tuple2!18090)

(declare-fun prepend!820 (BalanceConc!12190 Token!6040) BalanceConc!12190)

(assert (=> b!1666551 (= e!1068176 (tuple2!18091 (prepend!820 (_1!10447 lt!627382) (_1!10451 (v!24774 lt!627392))) (_2!10447 lt!627382)))))

(declare-fun b!1666552 () Bool)

(declare-fun lt!627395 () Option!3526)

(declare-fun lt!627415 () tuple2!18090)

(assert (=> b!1666552 (= lt!627415 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627395))))))

(declare-fun e!1068179 () tuple2!18090)

(assert (=> b!1666552 (= e!1068179 (tuple2!18091 (prepend!820 (_1!10447 lt!627415) (_1!10451 (v!24774 lt!627395))) (_2!10447 lt!627415)))))

(declare-fun b!1666553 () Bool)

(declare-fun lt!627413 () BalanceConc!12188)

(assert (=> b!1666553 (= e!1068179 (tuple2!18091 (BalanceConc!12191 Empty!6123) lt!627413))))

(declare-fun b!1666554 () Bool)

(declare-fun lt!627412 () Option!3526)

(declare-fun e!1068178 () tuple2!18090)

(declare-fun lt!627394 () BalanceConc!12188)

(declare-fun append!565 (BalanceConc!12190 Token!6040) BalanceConc!12190)

(assert (=> b!1666554 (= e!1068178 (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) lt!627394 (_2!10451 (v!24774 lt!627412)) (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412)))))))

(declare-fun lt!627410 () tuple2!18090)

(assert (=> b!1666554 (= lt!627410 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627412))))))

(declare-fun lt!627405 () List!18444)

(assert (=> b!1666554 (= lt!627405 (list!7347 (BalanceConc!12189 Empty!6122)))))

(declare-fun lt!627404 () List!18444)

(assert (=> b!1666554 (= lt!627404 (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))

(declare-fun lt!627396 () List!18444)

(assert (=> b!1666554 (= lt!627396 (list!7347 (_2!10451 (v!24774 lt!627412))))))

(declare-fun lt!627389 () Unit!31136)

(declare-fun lemmaConcatAssociativity!1036 (List!18444 List!18444 List!18444) Unit!31136)

(assert (=> b!1666554 (= lt!627389 (lemmaConcatAssociativity!1036 lt!627405 lt!627404 lt!627396))))

(assert (=> b!1666554 (= (++!5002 (++!5002 lt!627405 lt!627404) lt!627396) (++!5002 lt!627405 (++!5002 lt!627404 lt!627396)))))

(declare-fun lt!627397 () Unit!31136)

(assert (=> b!1666554 (= lt!627397 lt!627389)))

(declare-fun maxPrefixZipperSequence!742 (LexerInterface!2866 List!18446 BalanceConc!12188) Option!3526)

(assert (=> b!1666554 (= lt!627392 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun c!271224 () Bool)

(assert (=> b!1666554 (= c!271224 ((_ is Some!3525) lt!627392))))

(assert (=> b!1666554 (= (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) e!1068176)))

(declare-fun lt!627409 () Unit!31136)

(declare-fun Unit!31144 () Unit!31136)

(assert (=> b!1666554 (= lt!627409 Unit!31144)))

(declare-fun lt!627414 () List!18445)

(assert (=> b!1666554 (= lt!627414 (list!7344 (BalanceConc!12191 Empty!6123)))))

(declare-fun lt!627393 () List!18445)

(assert (=> b!1666554 (= lt!627393 (Cons!18375 (_1!10451 (v!24774 lt!627412)) Nil!18375))))

(declare-fun lt!627402 () List!18445)

(assert (=> b!1666554 (= lt!627402 (list!7344 (_1!10447 lt!627410)))))

(declare-fun lt!627385 () Unit!31136)

(declare-fun lemmaConcatAssociativity!1037 (List!18445 List!18445 List!18445) Unit!31136)

(assert (=> b!1666554 (= lt!627385 (lemmaConcatAssociativity!1037 lt!627414 lt!627393 lt!627402))))

(declare-fun ++!5005 (List!18445 List!18445) List!18445)

(assert (=> b!1666554 (= (++!5005 (++!5005 lt!627414 lt!627393) lt!627402) (++!5005 lt!627414 (++!5005 lt!627393 lt!627402)))))

(declare-fun lt!627398 () Unit!31136)

(assert (=> b!1666554 (= lt!627398 lt!627385)))

(declare-fun lt!627386 () List!18444)

(assert (=> b!1666554 (= lt!627386 (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))

(declare-fun lt!627384 () List!18444)

(assert (=> b!1666554 (= lt!627384 (list!7347 (_2!10451 (v!24774 lt!627412))))))

(declare-fun lt!627406 () List!18445)

(assert (=> b!1666554 (= lt!627406 (list!7344 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412)))))))

(declare-fun lt!627391 () Unit!31136)

(declare-fun lemmaLexThenLexPrefix!268 (LexerInterface!2866 List!18446 List!18444 List!18444 List!18445 List!18445 List!18444) Unit!31136)

(assert (=> b!1666554 (= lt!627391 (lemmaLexThenLexPrefix!268 thiss!17113 rules!1846 lt!627386 lt!627384 lt!627406 (list!7344 (_1!10447 lt!627410)) (list!7347 (_2!10447 lt!627410))))))

(assert (=> b!1666554 (= (lexList!891 thiss!17113 rules!1846 lt!627386) (tuple2!18095 lt!627406 Nil!18374))))

(declare-fun lt!627388 () Unit!31136)

(assert (=> b!1666554 (= lt!627388 lt!627391)))

(assert (=> b!1666554 (= lt!627413 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))

(assert (=> b!1666554 (= lt!627395 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 lt!627413))))

(declare-fun c!271225 () Bool)

(assert (=> b!1666554 (= c!271225 ((_ is Some!3525) lt!627395))))

(assert (=> b!1666554 (= (lexRec!380 thiss!17113 rules!1846 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412))))) e!1068179)))

(declare-fun lt!627403 () Unit!31136)

(declare-fun Unit!31145 () Unit!31136)

(assert (=> b!1666554 (= lt!627403 Unit!31145)))

(assert (=> b!1666554 (= lt!627394 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))

(declare-fun lt!627399 () List!18444)

(assert (=> b!1666554 (= lt!627399 (list!7347 lt!627394))))

(declare-fun lt!627387 () List!18444)

(assert (=> b!1666554 (= lt!627387 (list!7347 (_2!10451 (v!24774 lt!627412))))))

(declare-fun lt!627400 () Unit!31136)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!327 (List!18444 List!18444) Unit!31136)

(assert (=> b!1666554 (= lt!627400 (lemmaConcatTwoListThenFSndIsSuffix!327 lt!627399 lt!627387))))

(declare-fun isSuffix!426 (List!18444 List!18444) Bool)

(assert (=> b!1666554 (isSuffix!426 lt!627387 (++!5002 lt!627399 lt!627387))))

(declare-fun lt!627411 () Unit!31136)

(assert (=> b!1666554 (= lt!627411 lt!627400)))

(declare-fun b!1666555 () Bool)

(assert (=> b!1666555 (= e!1068178 (tuple2!18091 (BalanceConc!12191 Empty!6123) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun d!503663 () Bool)

(assert (=> d!503663 e!1068177))

(declare-fun res!747588 () Bool)

(assert (=> d!503663 (=> (not res!747588) (not e!1068177))))

(assert (=> d!503663 (= res!747588 (= (list!7344 (_1!10447 lt!627407)) (list!7344 (_1!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (=> d!503663 (= lt!627407 e!1068178)))

(declare-fun c!271223 () Bool)

(assert (=> d!503663 (= c!271223 ((_ is Some!3525) lt!627412))))

(declare-fun maxPrefixZipperSequenceV2!275 (LexerInterface!2866 List!18446 BalanceConc!12188 BalanceConc!12188) Option!3526)

(assert (=> d!503663 (= lt!627412 (maxPrefixZipperSequenceV2!275 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun lt!627390 () Unit!31136)

(declare-fun lt!627383 () Unit!31136)

(assert (=> d!503663 (= lt!627390 lt!627383)))

(declare-fun lt!627408 () List!18444)

(declare-fun lt!627401 () List!18444)

(assert (=> d!503663 (isSuffix!426 lt!627408 (++!5002 lt!627401 lt!627408))))

(assert (=> d!503663 (= lt!627383 (lemmaConcatTwoListThenFSndIsSuffix!327 lt!627401 lt!627408))))

(assert (=> d!503663 (= lt!627408 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!503663 (= lt!627401 (list!7347 (BalanceConc!12189 Empty!6122)))))

(assert (=> d!503663 (= (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (BalanceConc!12189 Empty!6122) (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (BalanceConc!12191 Empty!6123)) lt!627407)))

(declare-fun b!1666556 () Bool)

(assert (=> b!1666556 (= e!1068176 (tuple2!18091 (BalanceConc!12191 Empty!6123) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (= (and d!503663 c!271223) b!1666554))

(assert (= (and d!503663 (not c!271223)) b!1666555))

(assert (= (and b!1666554 c!271224) b!1666551))

(assert (= (and b!1666554 (not c!271224)) b!1666556))

(assert (= (and b!1666554 c!271225) b!1666552))

(assert (= (and b!1666554 (not c!271225)) b!1666553))

(assert (= (and d!503663 res!747588) b!1666550))

(declare-fun m!2029987 () Bool)

(assert (=> b!1666552 m!2029987))

(declare-fun m!2029989 () Bool)

(assert (=> b!1666552 m!2029989))

(declare-fun m!2029991 () Bool)

(assert (=> b!1666554 m!2029991))

(declare-fun m!2029993 () Bool)

(assert (=> b!1666554 m!2029993))

(declare-fun m!2029995 () Bool)

(assert (=> b!1666554 m!2029995))

(assert (=> b!1666554 m!2029991))

(declare-fun m!2029997 () Bool)

(assert (=> b!1666554 m!2029997))

(declare-fun m!2029999 () Bool)

(assert (=> b!1666554 m!2029999))

(declare-fun m!2030001 () Bool)

(assert (=> b!1666554 m!2030001))

(declare-fun m!2030003 () Bool)

(assert (=> b!1666554 m!2030003))

(assert (=> b!1666554 m!2029531))

(declare-fun m!2030005 () Bool)

(assert (=> b!1666554 m!2030005))

(declare-fun m!2030007 () Bool)

(assert (=> b!1666554 m!2030007))

(declare-fun m!2030009 () Bool)

(assert (=> b!1666554 m!2030009))

(declare-fun m!2030011 () Bool)

(assert (=> b!1666554 m!2030011))

(assert (=> b!1666554 m!2029531))

(assert (=> b!1666554 m!2030011))

(declare-fun m!2030013 () Bool)

(assert (=> b!1666554 m!2030013))

(declare-fun m!2030015 () Bool)

(assert (=> b!1666554 m!2030015))

(assert (=> b!1666554 m!2030009))

(declare-fun m!2030017 () Bool)

(assert (=> b!1666554 m!2030017))

(assert (=> b!1666554 m!2029997))

(declare-fun m!2030019 () Bool)

(assert (=> b!1666554 m!2030019))

(assert (=> b!1666554 m!2029531))

(declare-fun m!2030021 () Bool)

(assert (=> b!1666554 m!2030021))

(declare-fun m!2030023 () Bool)

(assert (=> b!1666554 m!2030023))

(declare-fun m!2030025 () Bool)

(assert (=> b!1666554 m!2030025))

(declare-fun m!2030027 () Bool)

(assert (=> b!1666554 m!2030027))

(declare-fun m!2030029 () Bool)

(assert (=> b!1666554 m!2030029))

(declare-fun m!2030031 () Bool)

(assert (=> b!1666554 m!2030031))

(assert (=> b!1666554 m!2030023))

(declare-fun m!2030033 () Bool)

(assert (=> b!1666554 m!2030033))

(declare-fun m!2030035 () Bool)

(assert (=> b!1666554 m!2030035))

(assert (=> b!1666554 m!2029831))

(assert (=> b!1666554 m!2030025))

(declare-fun m!2030037 () Bool)

(assert (=> b!1666554 m!2030037))

(assert (=> b!1666554 m!2030033))

(assert (=> b!1666554 m!2030029))

(assert (=> b!1666554 m!2029995))

(declare-fun m!2030039 () Bool)

(assert (=> b!1666554 m!2030039))

(assert (=> b!1666554 m!2029831))

(assert (=> b!1666554 m!2029993))

(declare-fun m!2030041 () Bool)

(assert (=> b!1666554 m!2030041))

(assert (=> b!1666554 m!2029991))

(declare-fun m!2030043 () Bool)

(assert (=> b!1666554 m!2030043))

(assert (=> b!1666554 m!2030011))

(declare-fun m!2030045 () Bool)

(assert (=> b!1666554 m!2030045))

(assert (=> b!1666554 m!2029999))

(declare-fun m!2030047 () Bool)

(assert (=> b!1666554 m!2030047))

(declare-fun m!2030049 () Bool)

(assert (=> b!1666554 m!2030049))

(declare-fun m!2030051 () Bool)

(assert (=> b!1666554 m!2030051))

(declare-fun m!2030053 () Bool)

(assert (=> b!1666554 m!2030053))

(declare-fun m!2030055 () Bool)

(assert (=> d!503663 m!2030055))

(declare-fun m!2030057 () Bool)

(assert (=> d!503663 m!2030057))

(assert (=> d!503663 m!2029831))

(declare-fun m!2030059 () Bool)

(assert (=> d!503663 m!2030059))

(declare-fun m!2030061 () Bool)

(assert (=> d!503663 m!2030061))

(declare-fun m!2030063 () Bool)

(assert (=> d!503663 m!2030063))

(assert (=> d!503663 m!2030055))

(assert (=> d!503663 m!2029531))

(assert (=> d!503663 m!2029705))

(assert (=> d!503663 m!2029531))

(assert (=> d!503663 m!2029531))

(declare-fun m!2030065 () Bool)

(assert (=> d!503663 m!2030065))

(assert (=> d!503663 m!2029531))

(assert (=> d!503663 m!2030021))

(declare-fun m!2030067 () Bool)

(assert (=> b!1666551 m!2030067))

(declare-fun m!2030069 () Bool)

(assert (=> b!1666551 m!2030069))

(declare-fun m!2030071 () Bool)

(assert (=> b!1666550 m!2030071))

(assert (=> b!1666550 m!2029531))

(assert (=> b!1666550 m!2030021))

(declare-fun m!2030073 () Bool)

(assert (=> b!1666550 m!2030073))

(assert (=> d!503605 d!503663))

(declare-fun d!503705 () Bool)

(assert (=> d!503705 true))

(declare-fun lt!627418 () Bool)

(declare-fun rulesValidInductive!1038 (LexerInterface!2866 List!18446) Bool)

(assert (=> d!503705 (= lt!627418 (rulesValidInductive!1038 thiss!17113 rules!1846))))

(declare-fun lambda!67960 () Int)

(declare-fun forall!4178 (List!18446 Int) Bool)

(assert (=> d!503705 (= lt!627418 (forall!4178 rules!1846 lambda!67960))))

(assert (=> d!503705 (= (rulesValid!1190 thiss!17113 rules!1846) lt!627418)))

(declare-fun bs!397709 () Bool)

(assert (= bs!397709 d!503705))

(declare-fun m!2030075 () Bool)

(assert (=> bs!397709 m!2030075))

(declare-fun m!2030077 () Bool)

(assert (=> bs!397709 m!2030077))

(assert (=> d!503617 d!503705))

(declare-fun d!503707 () Bool)

(assert (=> d!503707 (= (inv!23715 (tag!3521 (h!23777 (t!152191 rules!1846)))) (= (mod (str.len (value!101926 (tag!3521 (h!23777 (t!152191 rules!1846))))) 2) 0))))

(assert (=> b!1666408 d!503707))

(declare-fun d!503709 () Bool)

(declare-fun res!747589 () Bool)

(declare-fun e!1068180 () Bool)

(assert (=> d!503709 (=> (not res!747589) (not e!1068180))))

(assert (=> d!503709 (= res!747589 (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))))))

(assert (=> d!503709 (= (inv!23718 (transformation!3237 (h!23777 (t!152191 rules!1846)))) e!1068180)))

(declare-fun b!1666559 () Bool)

(assert (=> b!1666559 (= e!1068180 (equivClasses!1203 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))))))

(assert (= (and d!503709 res!747589) b!1666559))

(declare-fun m!2030079 () Bool)

(assert (=> d!503709 m!2030079))

(declare-fun m!2030081 () Bool)

(assert (=> b!1666559 m!2030081))

(assert (=> b!1666408 d!503709))

(declare-fun d!503711 () Bool)

(assert (=> d!503711 true))

(declare-fun lambda!67963 () Int)

(declare-fun order!11025 () Int)

(declare-fun dynLambda!8276 (Int Int) Int)

(assert (=> d!503711 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (dynLambda!8276 order!11025 lambda!67963))))

(declare-fun Forall2!531 (Int) Bool)

(assert (=> d!503711 (= (equivClasses!1203 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (Forall2!531 lambda!67963))))

(declare-fun bs!397710 () Bool)

(assert (= bs!397710 d!503711))

(declare-fun m!2030083 () Bool)

(assert (=> bs!397710 m!2030083))

(assert (=> b!1666193 d!503711))

(declare-fun d!503713 () Bool)

(assert (=> d!503713 (= (isEmpty!11433 (list!7347 (_2!10447 lt!627160))) ((_ is Nil!18374) (list!7347 (_2!10447 lt!627160))))))

(assert (=> d!503619 d!503713))

(declare-fun d!503715 () Bool)

(assert (=> d!503715 (= (list!7347 (_2!10447 lt!627160)) (list!7349 (c!271171 (_2!10447 lt!627160))))))

(declare-fun bs!397711 () Bool)

(assert (= bs!397711 d!503715))

(declare-fun m!2030085 () Bool)

(assert (=> bs!397711 m!2030085))

(assert (=> d!503619 d!503715))

(declare-fun d!503717 () Bool)

(declare-fun lt!627421 () Bool)

(assert (=> d!503717 (= lt!627421 (isEmpty!11433 (list!7349 (c!271171 (_2!10447 lt!627160)))))))

(declare-fun size!14622 (Conc!6122) Int)

(assert (=> d!503717 (= lt!627421 (= (size!14622 (c!271171 (_2!10447 lt!627160))) 0))))

(assert (=> d!503717 (= (isEmpty!11435 (c!271171 (_2!10447 lt!627160))) lt!627421)))

(declare-fun bs!397712 () Bool)

(assert (= bs!397712 d!503717))

(assert (=> bs!397712 m!2030085))

(assert (=> bs!397712 m!2030085))

(declare-fun m!2030087 () Bool)

(assert (=> bs!397712 m!2030087))

(declare-fun m!2030089 () Bool)

(assert (=> bs!397712 m!2030089))

(assert (=> d!503619 d!503717))

(declare-fun bs!397713 () Bool)

(declare-fun d!503719 () Bool)

(assert (= bs!397713 (and d!503719 d!503589)))

(declare-fun lambda!67964 () Int)

(assert (=> bs!397713 (= lambda!67964 lambda!67948)))

(declare-fun b!1666568 () Bool)

(declare-fun e!1068187 () Bool)

(assert (=> b!1666568 (= e!1068187 true)))

(declare-fun b!1666567 () Bool)

(declare-fun e!1068186 () Bool)

(assert (=> b!1666567 (= e!1068186 e!1068187)))

(declare-fun b!1666566 () Bool)

(declare-fun e!1068185 () Bool)

(assert (=> b!1666566 (= e!1068185 e!1068186)))

(assert (=> d!503719 e!1068185))

(assert (= b!1666567 b!1666568))

(assert (= b!1666566 b!1666567))

(assert (= (and d!503719 ((_ is Cons!18376) rules!1846)) b!1666566))

(assert (=> b!1666568 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8272 order!11017 lambda!67964))))

(assert (=> b!1666568 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8272 order!11017 lambda!67964))))

(assert (=> d!503719 true))

(declare-fun lt!627422 () Bool)

(assert (=> d!503719 (= lt!627422 (forall!4176 (t!152190 tokens!457) lambda!67964))))

(declare-fun e!1068184 () Bool)

(assert (=> d!503719 (= lt!627422 e!1068184)))

(declare-fun res!747592 () Bool)

(assert (=> d!503719 (=> res!747592 e!1068184)))

(assert (=> d!503719 (= res!747592 (not ((_ is Cons!18375) (t!152190 tokens!457))))))

(assert (=> d!503719 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503719 (= (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 (t!152190 tokens!457)) lt!627422)))

(declare-fun b!1666564 () Bool)

(declare-fun e!1068183 () Bool)

(assert (=> b!1666564 (= e!1068184 e!1068183)))

(declare-fun res!747593 () Bool)

(assert (=> b!1666564 (=> (not res!747593) (not e!1068183))))

(assert (=> b!1666564 (= res!747593 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457))))))

(declare-fun b!1666565 () Bool)

(assert (=> b!1666565 (= e!1068183 (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 (t!152190 (t!152190 tokens!457))))))

(assert (= (and d!503719 (not res!747592)) b!1666564))

(assert (= (and b!1666564 res!747593) b!1666565))

(declare-fun m!2030091 () Bool)

(assert (=> d!503719 m!2030091))

(assert (=> d!503719 m!2029519))

(assert (=> b!1666564 m!2029581))

(declare-fun m!2030093 () Bool)

(assert (=> b!1666565 m!2030093))

(assert (=> b!1666279 d!503719))

(declare-fun d!503721 () Bool)

(declare-fun c!271230 () Bool)

(assert (=> d!503721 (= c!271230 ((_ is Empty!6123) (c!271173 (_1!10447 lt!627160))))))

(declare-fun e!1068192 () List!18445)

(assert (=> d!503721 (= (list!7348 (c!271173 (_1!10447 lt!627160))) e!1068192)))

(declare-fun b!1666578 () Bool)

(declare-fun e!1068193 () List!18445)

(assert (=> b!1666578 (= e!1068192 e!1068193)))

(declare-fun c!271231 () Bool)

(assert (=> b!1666578 (= c!271231 ((_ is Leaf!8962) (c!271173 (_1!10447 lt!627160))))))

(declare-fun b!1666580 () Bool)

(assert (=> b!1666580 (= e!1068193 (++!5005 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160)))) (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160))))))))

(declare-fun b!1666579 () Bool)

(declare-fun list!7352 (IArray!12251) List!18445)

(assert (=> b!1666579 (= e!1068193 (list!7352 (xs!8967 (c!271173 (_1!10447 lt!627160)))))))

(declare-fun b!1666577 () Bool)

(assert (=> b!1666577 (= e!1068192 Nil!18375)))

(assert (= (and d!503721 c!271230) b!1666577))

(assert (= (and d!503721 (not c!271230)) b!1666578))

(assert (= (and b!1666578 c!271231) b!1666579))

(assert (= (and b!1666578 (not c!271231)) b!1666580))

(declare-fun m!2030095 () Bool)

(assert (=> b!1666580 m!2030095))

(declare-fun m!2030097 () Bool)

(assert (=> b!1666580 m!2030097))

(assert (=> b!1666580 m!2030095))

(assert (=> b!1666580 m!2030097))

(declare-fun m!2030099 () Bool)

(assert (=> b!1666580 m!2030099))

(declare-fun m!2030101 () Bool)

(assert (=> b!1666579 m!2030101))

(assert (=> d!503601 d!503721))

(declare-fun bs!397714 () Bool)

(declare-fun d!503723 () Bool)

(assert (= bs!397714 (and d!503723 d!503621)))

(declare-fun lambda!67965 () Int)

(assert (=> bs!397714 (= (and (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (= (toValue!4696 (transformation!3237 (h!23777 rules!1846))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (= lambda!67965 lambda!67951))))

(assert (=> d!503723 true))

(assert (=> d!503723 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8274 order!11021 lambda!67965))))

(assert (=> d!503723 true))

(assert (=> d!503723 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8274 order!11021 lambda!67965))))

(assert (=> d!503723 (= (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (Forall!659 lambda!67965))))

(declare-fun bs!397715 () Bool)

(assert (= bs!397715 d!503723))

(declare-fun m!2030103 () Bool)

(assert (=> bs!397715 m!2030103))

(assert (=> d!503567 d!503723))

(declare-fun d!503725 () Bool)

(declare-fun lt!627425 () Int)

(assert (=> d!503725 (>= lt!627425 0)))

(declare-fun e!1068196 () Int)

(assert (=> d!503725 (= lt!627425 e!1068196)))

(declare-fun c!271234 () Bool)

(assert (=> d!503725 (= c!271234 ((_ is Nil!18374) (originalCharacters!4051 (h!23776 tokens!457))))))

(assert (=> d!503725 (= (size!14615 (originalCharacters!4051 (h!23776 tokens!457))) lt!627425)))

(declare-fun b!1666585 () Bool)

(assert (=> b!1666585 (= e!1068196 0)))

(declare-fun b!1666586 () Bool)

(assert (=> b!1666586 (= e!1068196 (+ 1 (size!14615 (t!152189 (originalCharacters!4051 (h!23776 tokens!457))))))))

(assert (= (and d!503725 c!271234) b!1666585))

(assert (= (and d!503725 (not c!271234)) b!1666586))

(declare-fun m!2030105 () Bool)

(assert (=> b!1666586 m!2030105))

(assert (=> b!1666232 d!503725))

(declare-fun d!503727 () Bool)

(assert (=> d!503727 (= (list!7347 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))) (list!7349 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(declare-fun bs!397716 () Bool)

(assert (= bs!397716 d!503727))

(declare-fun m!2030107 () Bool)

(assert (=> bs!397716 m!2030107))

(assert (=> b!1666231 d!503727))

(declare-fun d!503729 () Bool)

(declare-fun lt!627428 () Bool)

(assert (=> d!503729 (= lt!627428 (isEmpty!11436 (list!7344 (_1!10447 lt!627220))))))

(declare-fun isEmpty!11438 (Conc!6123) Bool)

(assert (=> d!503729 (= lt!627428 (isEmpty!11438 (c!271173 (_1!10447 lt!627220))))))

(assert (=> d!503729 (= (isEmpty!11434 (_1!10447 lt!627220)) lt!627428)))

(declare-fun bs!397717 () Bool)

(assert (= bs!397717 d!503729))

(assert (=> bs!397717 m!2029703))

(assert (=> bs!397717 m!2029703))

(declare-fun m!2030109 () Bool)

(assert (=> bs!397717 m!2030109))

(declare-fun m!2030111 () Bool)

(assert (=> bs!397717 m!2030111))

(assert (=> b!1666379 d!503729))

(assert (=> b!1666225 d!503623))

(declare-fun d!503731 () Bool)

(declare-fun prefixMatchZipperSequence!667 (Regex!4565 BalanceConc!12188) Bool)

(declare-fun rulesRegex!621 (LexerInterface!2866 List!18446) Regex!4565)

(declare-fun singletonSeq!1747 (C!9304) BalanceConc!12188)

(declare-fun apply!4937 (BalanceConc!12188 Int) C!9304)

(assert (=> d!503731 (= (separableTokensPredicate!806 thiss!17113 (h!23776 tokens!457) (h!23776 (t!152190 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!667 (rulesRegex!621 thiss!17113 rules!1846) (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))))))

(declare-fun bs!397718 () Bool)

(assert (= bs!397718 d!503731))

(declare-fun m!2030113 () Bool)

(assert (=> bs!397718 m!2030113))

(declare-fun m!2030115 () Bool)

(assert (=> bs!397718 m!2030115))

(assert (=> bs!397718 m!2030113))

(declare-fun m!2030117 () Bool)

(assert (=> bs!397718 m!2030117))

(declare-fun m!2030119 () Bool)

(assert (=> bs!397718 m!2030119))

(declare-fun m!2030121 () Bool)

(assert (=> bs!397718 m!2030121))

(assert (=> bs!397718 m!2030117))

(assert (=> bs!397718 m!2029575))

(assert (=> bs!397718 m!2029575))

(assert (=> bs!397718 m!2030121))

(assert (=> bs!397718 m!2030115))

(assert (=> bs!397718 m!2030119))

(declare-fun m!2030123 () Bool)

(assert (=> bs!397718 m!2030123))

(assert (=> b!1666225 d!503731))

(declare-fun d!503733 () Bool)

(declare-fun lt!627431 () Int)

(assert (=> d!503733 (= lt!627431 (size!14615 (list!7347 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))

(assert (=> d!503733 (= lt!627431 (size!14622 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))

(assert (=> d!503733 (= (size!14614 (charsOf!1886 (h!23776 (t!152190 tokens!457)))) lt!627431)))

(declare-fun bs!397719 () Bool)

(assert (= bs!397719 d!503733))

(assert (=> bs!397719 m!2029575))

(declare-fun m!2030125 () Bool)

(assert (=> bs!397719 m!2030125))

(assert (=> bs!397719 m!2030125))

(declare-fun m!2030127 () Bool)

(assert (=> bs!397719 m!2030127))

(declare-fun m!2030129 () Bool)

(assert (=> bs!397719 m!2030129))

(assert (=> b!1666225 d!503733))

(declare-fun d!503735 () Bool)

(assert (=> d!503735 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457))))

(declare-fun lt!627546 () Unit!31136)

(declare-fun choose!10031 (LexerInterface!2866 List!18446 List!18445 Token!6040) Unit!31136)

(assert (=> d!503735 (= lt!627546 (choose!10031 thiss!17113 rules!1846 tokens!457 (h!23776 tokens!457)))))

(assert (=> d!503735 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503735 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 tokens!457 (h!23776 tokens!457)) lt!627546)))

(declare-fun bs!397728 () Bool)

(assert (= bs!397728 d!503735))

(assert (=> bs!397728 m!2029587))

(declare-fun m!2030267 () Bool)

(assert (=> bs!397728 m!2030267))

(assert (=> bs!397728 m!2029519))

(assert (=> b!1666225 d!503735))

(declare-fun d!503763 () Bool)

(declare-fun lt!627549 () BalanceConc!12188)

(assert (=> d!503763 (= (list!7347 lt!627549) (originalCharacters!4051 (h!23776 (t!152190 tokens!457))))))

(assert (=> d!503763 (= lt!627549 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))

(assert (=> d!503763 (= (charsOf!1886 (h!23776 (t!152190 tokens!457))) lt!627549)))

(declare-fun b_lambda!52317 () Bool)

(assert (=> (not b_lambda!52317) (not d!503763)))

(declare-fun t!152231 () Bool)

(declare-fun tb!95551 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152231) tb!95551))

(declare-fun b!1666636 () Bool)

(declare-fun e!1068224 () Bool)

(declare-fun tp!480778 () Bool)

(assert (=> b!1666636 (= e!1068224 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))) tp!480778))))

(declare-fun result!115462 () Bool)

(assert (=> tb!95551 (= result!115462 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))) e!1068224))))

(assert (= tb!95551 b!1666636))

(declare-fun m!2030269 () Bool)

(assert (=> b!1666636 m!2030269))

(declare-fun m!2030271 () Bool)

(assert (=> tb!95551 m!2030271))

(assert (=> d!503763 t!152231))

(declare-fun b_and!118413 () Bool)

(assert (= b_and!118373 (and (=> t!152231 result!115462) b_and!118413)))

(declare-fun tb!95553 () Bool)

(declare-fun t!152233 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152233) tb!95553))

(declare-fun result!115464 () Bool)

(assert (= result!115464 result!115462))

(assert (=> d!503763 t!152233))

(declare-fun b_and!118415 () Bool)

(assert (= b_and!118375 (and (=> t!152233 result!115464) b_and!118415)))

(declare-fun t!152235 () Bool)

(declare-fun tb!95555 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152235) tb!95555))

(declare-fun result!115466 () Bool)

(assert (= result!115466 result!115462))

(assert (=> d!503763 t!152235))

(declare-fun b_and!118417 () Bool)

(assert (= b_and!118391 (and (=> t!152235 result!115466) b_and!118417)))

(declare-fun t!152237 () Bool)

(declare-fun tb!95557 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152237) tb!95557))

(declare-fun result!115468 () Bool)

(assert (= result!115468 result!115462))

(assert (=> d!503763 t!152237))

(declare-fun b_and!118419 () Bool)

(assert (= b_and!118395 (and (=> t!152237 result!115468) b_and!118419)))

(declare-fun m!2030273 () Bool)

(assert (=> d!503763 m!2030273))

(declare-fun m!2030275 () Bool)

(assert (=> d!503763 m!2030275))

(assert (=> b!1666225 d!503763))

(declare-fun d!503765 () Bool)

(declare-fun lt!627551 () Bool)

(declare-fun e!1068226 () Bool)

(assert (=> d!503765 (= lt!627551 e!1068226)))

(declare-fun res!747605 () Bool)

(assert (=> d!503765 (=> (not res!747605) (not e!1068226))))

(assert (=> d!503765 (= res!747605 (= (list!7344 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))) (list!7344 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))))

(declare-fun e!1068225 () Bool)

(assert (=> d!503765 (= lt!627551 e!1068225)))

(declare-fun res!747604 () Bool)

(assert (=> d!503765 (=> (not res!747604) (not e!1068225))))

(declare-fun lt!627550 () tuple2!18090)

(assert (=> d!503765 (= res!747604 (= (size!14616 (_1!10447 lt!627550)) 1))))

(assert (=> d!503765 (= lt!627550 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))))

(assert (=> d!503765 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503765 (= (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457))) lt!627551)))

(declare-fun b!1666637 () Bool)

(declare-fun res!747603 () Bool)

(assert (=> b!1666637 (=> (not res!747603) (not e!1068225))))

(assert (=> b!1666637 (= res!747603 (= (apply!4933 (_1!10447 lt!627550) 0) (h!23776 (t!152190 tokens!457))))))

(declare-fun b!1666638 () Bool)

(assert (=> b!1666638 (= e!1068225 (isEmpty!11429 (_2!10447 lt!627550)))))

(declare-fun b!1666639 () Bool)

(assert (=> b!1666639 (= e!1068226 (isEmpty!11429 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))))))

(assert (= (and d!503765 res!747604) b!1666637))

(assert (= (and b!1666637 res!747603) b!1666638))

(assert (= (and d!503765 res!747605) b!1666639))

(declare-fun m!2030277 () Bool)

(assert (=> d!503765 m!2030277))

(declare-fun m!2030279 () Bool)

(assert (=> d!503765 m!2030279))

(assert (=> d!503765 m!2030277))

(declare-fun m!2030281 () Bool)

(assert (=> d!503765 m!2030281))

(assert (=> d!503765 m!2030277))

(declare-fun m!2030283 () Bool)

(assert (=> d!503765 m!2030283))

(assert (=> d!503765 m!2029519))

(declare-fun m!2030285 () Bool)

(assert (=> d!503765 m!2030285))

(assert (=> d!503765 m!2030283))

(declare-fun m!2030287 () Bool)

(assert (=> d!503765 m!2030287))

(declare-fun m!2030289 () Bool)

(assert (=> b!1666637 m!2030289))

(declare-fun m!2030291 () Bool)

(assert (=> b!1666638 m!2030291))

(assert (=> b!1666639 m!2030277))

(assert (=> b!1666639 m!2030277))

(assert (=> b!1666639 m!2030283))

(assert (=> b!1666639 m!2030283))

(assert (=> b!1666639 m!2030287))

(declare-fun m!2030293 () Bool)

(assert (=> b!1666639 m!2030293))

(assert (=> b!1666225 d!503765))

(declare-fun d!503767 () Bool)

(assert (=> d!503767 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457)))))

(declare-fun lt!627552 () Unit!31136)

(assert (=> d!503767 (= lt!627552 (choose!10031 thiss!17113 rules!1846 tokens!457 (h!23776 (t!152190 tokens!457))))))

(assert (=> d!503767 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503767 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 tokens!457 (h!23776 (t!152190 tokens!457))) lt!627552)))

(declare-fun bs!397729 () Bool)

(assert (= bs!397729 d!503767))

(assert (=> bs!397729 m!2029581))

(declare-fun m!2030295 () Bool)

(assert (=> bs!397729 m!2030295))

(assert (=> bs!397729 m!2029519))

(assert (=> b!1666225 d!503767))

(declare-fun d!503769 () Bool)

(declare-fun res!747612 () Bool)

(declare-fun e!1068235 () Bool)

(assert (=> d!503769 (=> res!747612 e!1068235)))

(assert (=> d!503769 (= res!747612 ((_ is Nil!18376) rules!1846))))

(assert (=> d!503769 (= (noDuplicateTag!1190 thiss!17113 rules!1846 Nil!18378) e!1068235)))

(declare-fun b!1666650 () Bool)

(declare-fun e!1068236 () Bool)

(assert (=> b!1666650 (= e!1068235 e!1068236)))

(declare-fun res!747613 () Bool)

(assert (=> b!1666650 (=> (not res!747613) (not e!1068236))))

(declare-fun contains!3210 (List!18448 String!20967) Bool)

(assert (=> b!1666650 (= res!747613 (not (contains!3210 Nil!18378 (tag!3521 (h!23777 rules!1846)))))))

(declare-fun b!1666651 () Bool)

(assert (=> b!1666651 (= e!1068236 (noDuplicateTag!1190 thiss!17113 (t!152191 rules!1846) (Cons!18378 (tag!3521 (h!23777 rules!1846)) Nil!18378)))))

(assert (= (and d!503769 (not res!747612)) b!1666650))

(assert (= (and b!1666650 res!747613) b!1666651))

(declare-fun m!2030297 () Bool)

(assert (=> b!1666650 m!2030297))

(declare-fun m!2030299 () Bool)

(assert (=> b!1666651 m!2030299))

(assert (=> b!1666384 d!503769))

(declare-fun d!503771 () Bool)

(assert (=> d!503771 (= (isEmpty!11433 (originalCharacters!4051 (h!23776 tokens!457))) ((_ is Nil!18374) (originalCharacters!4051 (h!23776 tokens!457))))))

(assert (=> d!503587 d!503771))

(declare-fun b!1666652 () Bool)

(declare-fun e!1068237 () Bool)

(assert (=> b!1666652 (= e!1068237 (inv!17 (value!101927 (h!23776 (t!152190 tokens!457)))))))

(declare-fun b!1666653 () Bool)

(declare-fun res!747614 () Bool)

(declare-fun e!1068240 () Bool)

(assert (=> b!1666653 (=> res!747614 e!1068240)))

(assert (=> b!1666653 (= res!747614 (not ((_ is IntegerValue!9983) (value!101927 (h!23776 (t!152190 tokens!457))))))))

(assert (=> b!1666653 (= e!1068237 e!1068240)))

(declare-fun d!503773 () Bool)

(declare-fun c!271255 () Bool)

(assert (=> d!503773 (= c!271255 ((_ is IntegerValue!9981) (value!101927 (h!23776 (t!152190 tokens!457)))))))

(declare-fun e!1068238 () Bool)

(assert (=> d!503773 (= (inv!21 (value!101927 (h!23776 (t!152190 tokens!457)))) e!1068238)))

(declare-fun b!1666654 () Bool)

(assert (=> b!1666654 (= e!1068238 (inv!16 (value!101927 (h!23776 (t!152190 tokens!457)))))))

(declare-fun b!1666655 () Bool)

(assert (=> b!1666655 (= e!1068238 e!1068237)))

(declare-fun c!271256 () Bool)

(assert (=> b!1666655 (= c!271256 ((_ is IntegerValue!9982) (value!101927 (h!23776 (t!152190 tokens!457)))))))

(declare-fun b!1666656 () Bool)

(assert (=> b!1666656 (= e!1068240 (inv!15 (value!101927 (h!23776 (t!152190 tokens!457)))))))

(assert (= (and d!503773 c!271255) b!1666654))

(assert (= (and d!503773 (not c!271255)) b!1666655))

(assert (= (and b!1666655 c!271256) b!1666652))

(assert (= (and b!1666655 (not c!271256)) b!1666653))

(assert (= (and b!1666653 (not res!747614)) b!1666656))

(declare-fun m!2030301 () Bool)

(assert (=> b!1666652 m!2030301))

(declare-fun m!2030303 () Bool)

(assert (=> b!1666654 m!2030303))

(declare-fun m!2030305 () Bool)

(assert (=> b!1666656 m!2030305))

(assert (=> b!1666430 d!503773))

(declare-fun d!503775 () Bool)

(declare-fun lt!627574 () Int)

(assert (=> d!503775 (= lt!627574 (size!14615 (list!7347 (_2!10447 lt!627220))))))

(assert (=> d!503775 (= lt!627574 (size!14622 (c!271171 (_2!10447 lt!627220))))))

(assert (=> d!503775 (= (size!14614 (_2!10447 lt!627220)) lt!627574)))

(declare-fun bs!397730 () Bool)

(assert (= bs!397730 d!503775))

(assert (=> bs!397730 m!2029711))

(assert (=> bs!397730 m!2029711))

(declare-fun m!2030307 () Bool)

(assert (=> bs!397730 m!2030307))

(declare-fun m!2030309 () Bool)

(assert (=> bs!397730 m!2030309))

(assert (=> b!1666378 d!503775))

(declare-fun d!503777 () Bool)

(declare-fun lt!627575 () Int)

(assert (=> d!503777 (= lt!627575 (size!14615 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> d!503777 (= lt!627575 (size!14622 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> d!503777 (= (size!14614 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) lt!627575)))

(declare-fun bs!397731 () Bool)

(assert (= bs!397731 d!503777))

(assert (=> bs!397731 m!2029531))

(assert (=> bs!397731 m!2029705))

(assert (=> bs!397731 m!2029705))

(assert (=> bs!397731 m!2029891))

(declare-fun m!2030313 () Bool)

(assert (=> bs!397731 m!2030313))

(assert (=> b!1666378 d!503777))

(declare-fun d!503779 () Bool)

(declare-fun charsToInt!0 (List!18443) (_ BitVec 32))

(assert (=> d!503779 (= (inv!16 (value!101927 (h!23776 tokens!457))) (= (charsToInt!0 (text!23736 (value!101927 (h!23776 tokens!457)))) (value!101918 (value!101927 (h!23776 tokens!457)))))))

(declare-fun bs!397732 () Bool)

(assert (= bs!397732 d!503779))

(declare-fun m!2030345 () Bool)

(assert (=> bs!397732 m!2030345))

(assert (=> b!1666210 d!503779))

(declare-fun d!503783 () Bool)

(declare-fun res!747622 () Bool)

(declare-fun e!1068251 () Bool)

(assert (=> d!503783 (=> res!747622 e!1068251)))

(assert (=> d!503783 (= res!747622 ((_ is Nil!18375) tokens!457))))

(assert (=> d!503783 (= (forall!4176 tokens!457 lambda!67948) e!1068251)))

(declare-fun b!1666669 () Bool)

(declare-fun e!1068252 () Bool)

(assert (=> b!1666669 (= e!1068251 e!1068252)))

(declare-fun res!747623 () Bool)

(assert (=> b!1666669 (=> (not res!747623) (not e!1068252))))

(declare-fun dynLambda!8278 (Int Token!6040) Bool)

(assert (=> b!1666669 (= res!747623 (dynLambda!8278 lambda!67948 (h!23776 tokens!457)))))

(declare-fun b!1666670 () Bool)

(assert (=> b!1666670 (= e!1068252 (forall!4176 (t!152190 tokens!457) lambda!67948))))

(assert (= (and d!503783 (not res!747622)) b!1666669))

(assert (= (and b!1666669 res!747623) b!1666670))

(declare-fun b_lambda!52319 () Bool)

(assert (=> (not b_lambda!52319) (not b!1666669)))

(declare-fun m!2030349 () Bool)

(assert (=> b!1666669 m!2030349))

(declare-fun m!2030351 () Bool)

(assert (=> b!1666670 m!2030351))

(assert (=> d!503589 d!503783))

(assert (=> d!503589 d!503569))

(declare-fun d!503787 () Bool)

(declare-fun res!747624 () Bool)

(declare-fun e!1068253 () Bool)

(assert (=> d!503787 (=> (not res!747624) (not e!1068253))))

(assert (=> d!503787 (= res!747624 (not (isEmpty!11433 (originalCharacters!4051 (h!23776 (t!152190 tokens!457))))))))

(assert (=> d!503787 (= (inv!23719 (h!23776 (t!152190 tokens!457))) e!1068253)))

(declare-fun b!1666671 () Bool)

(declare-fun res!747625 () Bool)

(assert (=> b!1666671 (=> (not res!747625) (not e!1068253))))

(assert (=> b!1666671 (= res!747625 (= (originalCharacters!4051 (h!23776 (t!152190 tokens!457))) (list!7347 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))))

(declare-fun b!1666672 () Bool)

(assert (=> b!1666672 (= e!1068253 (= (size!14610 (h!23776 (t!152190 tokens!457))) (size!14615 (originalCharacters!4051 (h!23776 (t!152190 tokens!457))))))))

(assert (= (and d!503787 res!747624) b!1666671))

(assert (= (and b!1666671 res!747625) b!1666672))

(declare-fun b_lambda!52321 () Bool)

(assert (=> (not b_lambda!52321) (not b!1666671)))

(assert (=> b!1666671 t!152231))

(declare-fun b_and!118421 () Bool)

(assert (= b_and!118413 (and (=> t!152231 result!115462) b_and!118421)))

(assert (=> b!1666671 t!152233))

(declare-fun b_and!118423 () Bool)

(assert (= b_and!118415 (and (=> t!152233 result!115464) b_and!118423)))

(assert (=> b!1666671 t!152235))

(declare-fun b_and!118425 () Bool)

(assert (= b_and!118417 (and (=> t!152235 result!115466) b_and!118425)))

(assert (=> b!1666671 t!152237))

(declare-fun b_and!118427 () Bool)

(assert (= b_and!118419 (and (=> t!152237 result!115468) b_and!118427)))

(declare-fun m!2030357 () Bool)

(assert (=> d!503787 m!2030357))

(assert (=> b!1666671 m!2030275))

(assert (=> b!1666671 m!2030275))

(declare-fun m!2030365 () Bool)

(assert (=> b!1666671 m!2030365))

(declare-fun m!2030367 () Bool)

(assert (=> b!1666672 m!2030367))

(assert (=> b!1666429 d!503787))

(declare-fun bs!397735 () Bool)

(declare-fun d!503793 () Bool)

(assert (= bs!397735 (and d!503793 d!503711)))

(declare-fun lambda!67972 () Int)

(assert (=> bs!397735 (= (= (toValue!4696 (transformation!3237 (h!23777 rules!1846))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (= lambda!67972 lambda!67963))))

(assert (=> d!503793 true))

(assert (=> d!503793 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8276 order!11025 lambda!67972))))

(assert (=> d!503793 (= (equivClasses!1203 (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (Forall2!531 lambda!67972))))

(declare-fun bs!397736 () Bool)

(assert (= bs!397736 d!503793))

(declare-fun m!2030369 () Bool)

(assert (=> bs!397736 m!2030369))

(assert (=> b!1666194 d!503793))

(declare-fun d!503795 () Bool)

(declare-fun charsToBigInt!1 (List!18443) Int)

(assert (=> d!503795 (= (inv!17 (value!101927 (h!23776 tokens!457))) (= (charsToBigInt!1 (text!23737 (value!101927 (h!23776 tokens!457)))) (value!101919 (value!101927 (h!23776 tokens!457)))))))

(declare-fun bs!397737 () Bool)

(assert (= bs!397737 d!503795))

(declare-fun m!2030371 () Bool)

(assert (=> bs!397737 m!2030371))

(assert (=> b!1666208 d!503795))

(declare-fun d!503797 () Bool)

(assert (=> d!503797 (= (list!7347 (_2!10447 lt!627220)) (list!7349 (c!271171 (_2!10447 lt!627220))))))

(declare-fun bs!397739 () Bool)

(assert (= bs!397739 d!503797))

(declare-fun m!2030373 () Bool)

(assert (=> bs!397739 m!2030373))

(assert (=> b!1666377 d!503797))

(assert (=> b!1666377 d!503657))

(assert (=> b!1666377 d!503659))

(declare-fun d!503799 () Bool)

(declare-fun c!271262 () Bool)

(assert (=> d!503799 (= c!271262 ((_ is Node!6122) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(declare-fun e!1068268 () Bool)

(assert (=> d!503799 (= (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) e!1068268)))

(declare-fun b!1666691 () Bool)

(declare-fun inv!23726 (Conc!6122) Bool)

(assert (=> b!1666691 (= e!1068268 (inv!23726 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(declare-fun b!1666692 () Bool)

(declare-fun e!1068269 () Bool)

(assert (=> b!1666692 (= e!1068268 e!1068269)))

(declare-fun res!747636 () Bool)

(assert (=> b!1666692 (= res!747636 (not ((_ is Leaf!8961) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(assert (=> b!1666692 (=> res!747636 e!1068269)))

(declare-fun b!1666693 () Bool)

(declare-fun inv!23727 (Conc!6122) Bool)

(assert (=> b!1666693 (= e!1068269 (inv!23727 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(assert (= (and d!503799 c!271262) b!1666691))

(assert (= (and d!503799 (not c!271262)) b!1666692))

(assert (= (and b!1666692 (not res!747636)) b!1666693))

(declare-fun m!2030387 () Bool)

(assert (=> b!1666691 m!2030387))

(declare-fun m!2030389 () Bool)

(assert (=> b!1666693 m!2030389))

(assert (=> b!1666237 d!503799))

(declare-fun b!1666695 () Bool)

(declare-fun e!1068270 () Bool)

(declare-fun tp!480783 () Bool)

(declare-fun tp!480780 () Bool)

(assert (=> b!1666695 (= e!1068270 (and tp!480783 tp!480780))))

(declare-fun b!1666697 () Bool)

(declare-fun tp!480781 () Bool)

(declare-fun tp!480782 () Bool)

(assert (=> b!1666697 (= e!1068270 (and tp!480781 tp!480782))))

(assert (=> b!1666398 (= tp!480739 e!1068270)))

(declare-fun b!1666696 () Bool)

(declare-fun tp!480779 () Bool)

(assert (=> b!1666696 (= e!1068270 tp!480779)))

(declare-fun b!1666694 () Bool)

(assert (=> b!1666694 (= e!1068270 tp_is_empty!7405)))

(assert (= (and b!1666398 ((_ is ElementMatch!4565) (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666694))

(assert (= (and b!1666398 ((_ is Concat!7893) (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666695))

(assert (= (and b!1666398 ((_ is Star!4565) (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666696))

(assert (= (and b!1666398 ((_ is Union!4565) (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666697))

(declare-fun b!1666699 () Bool)

(declare-fun e!1068271 () Bool)

(declare-fun tp!480788 () Bool)

(declare-fun tp!480785 () Bool)

(assert (=> b!1666699 (= e!1068271 (and tp!480788 tp!480785))))

(declare-fun b!1666701 () Bool)

(declare-fun tp!480786 () Bool)

(declare-fun tp!480787 () Bool)

(assert (=> b!1666701 (= e!1068271 (and tp!480786 tp!480787))))

(assert (=> b!1666398 (= tp!480740 e!1068271)))

(declare-fun b!1666700 () Bool)

(declare-fun tp!480784 () Bool)

(assert (=> b!1666700 (= e!1068271 tp!480784)))

(declare-fun b!1666698 () Bool)

(assert (=> b!1666698 (= e!1068271 tp_is_empty!7405)))

(assert (= (and b!1666398 ((_ is ElementMatch!4565) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666698))

(assert (= (and b!1666398 ((_ is Concat!7893) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666699))

(assert (= (and b!1666398 ((_ is Star!4565) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666700))

(assert (= (and b!1666398 ((_ is Union!4565) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666701))

(declare-fun b!1666702 () Bool)

(declare-fun e!1068272 () Bool)

(declare-fun tp!480789 () Bool)

(assert (=> b!1666702 (= e!1068272 (and tp_is_empty!7405 tp!480789))))

(assert (=> b!1666418 (= tp!480761 e!1068272)))

(assert (= (and b!1666418 ((_ is Cons!18374) (t!152189 (originalCharacters!4051 (h!23776 tokens!457))))) b!1666702))

(declare-fun b!1666704 () Bool)

(declare-fun e!1068273 () Bool)

(declare-fun tp!480794 () Bool)

(declare-fun tp!480791 () Bool)

(assert (=> b!1666704 (= e!1068273 (and tp!480794 tp!480791))))

(declare-fun b!1666706 () Bool)

(declare-fun tp!480792 () Bool)

(declare-fun tp!480793 () Bool)

(assert (=> b!1666706 (= e!1068273 (and tp!480792 tp!480793))))

(assert (=> b!1666431 (= tp!480772 e!1068273)))

(declare-fun b!1666705 () Bool)

(declare-fun tp!480790 () Bool)

(assert (=> b!1666705 (= e!1068273 tp!480790)))

(declare-fun b!1666703 () Bool)

(assert (=> b!1666703 (= e!1068273 tp_is_empty!7405)))

(assert (= (and b!1666431 ((_ is ElementMatch!4565) (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) b!1666703))

(assert (= (and b!1666431 ((_ is Concat!7893) (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) b!1666704))

(assert (= (and b!1666431 ((_ is Star!4565) (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) b!1666705))

(assert (= (and b!1666431 ((_ is Union!4565) (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) b!1666706))

(declare-fun b!1666708 () Bool)

(declare-fun e!1068274 () Bool)

(declare-fun tp!480799 () Bool)

(declare-fun tp!480796 () Bool)

(assert (=> b!1666708 (= e!1068274 (and tp!480799 tp!480796))))

(declare-fun b!1666710 () Bool)

(declare-fun tp!480797 () Bool)

(declare-fun tp!480798 () Bool)

(assert (=> b!1666710 (= e!1068274 (and tp!480797 tp!480798))))

(assert (=> b!1666397 (= tp!480737 e!1068274)))

(declare-fun b!1666709 () Bool)

(declare-fun tp!480795 () Bool)

(assert (=> b!1666709 (= e!1068274 tp!480795)))

(declare-fun b!1666707 () Bool)

(assert (=> b!1666707 (= e!1068274 tp_is_empty!7405)))

(assert (= (and b!1666397 ((_ is ElementMatch!4565) (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666707))

(assert (= (and b!1666397 ((_ is Concat!7893) (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666708))

(assert (= (and b!1666397 ((_ is Star!4565) (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666709))

(assert (= (and b!1666397 ((_ is Union!4565) (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666710))

(declare-fun b!1666713 () Bool)

(declare-fun e!1068277 () Bool)

(assert (=> b!1666713 (= e!1068277 true)))

(declare-fun b!1666712 () Bool)

(declare-fun e!1068276 () Bool)

(assert (=> b!1666712 (= e!1068276 e!1068277)))

(declare-fun b!1666711 () Bool)

(declare-fun e!1068275 () Bool)

(assert (=> b!1666711 (= e!1068275 e!1068276)))

(assert (=> b!1666288 e!1068275))

(assert (= b!1666712 b!1666713))

(assert (= b!1666711 b!1666712))

(assert (= (and b!1666288 ((_ is Cons!18376) (t!152191 rules!1846))) b!1666711))

(assert (=> b!1666713 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8272 order!11017 lambda!67948))))

(assert (=> b!1666713 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8272 order!11017 lambda!67948))))

(declare-fun b!1666715 () Bool)

(declare-fun e!1068278 () Bool)

(declare-fun tp!480804 () Bool)

(declare-fun tp!480801 () Bool)

(assert (=> b!1666715 (= e!1068278 (and tp!480804 tp!480801))))

(declare-fun b!1666717 () Bool)

(declare-fun tp!480802 () Bool)

(declare-fun tp!480803 () Bool)

(assert (=> b!1666717 (= e!1068278 (and tp!480802 tp!480803))))

(assert (=> b!1666396 (= tp!480741 e!1068278)))

(declare-fun b!1666716 () Bool)

(declare-fun tp!480800 () Bool)

(assert (=> b!1666716 (= e!1068278 tp!480800)))

(declare-fun b!1666714 () Bool)

(assert (=> b!1666714 (= e!1068278 tp_is_empty!7405)))

(assert (= (and b!1666396 ((_ is ElementMatch!4565) (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666714))

(assert (= (and b!1666396 ((_ is Concat!7893) (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666715))

(assert (= (and b!1666396 ((_ is Star!4565) (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666716))

(assert (= (and b!1666396 ((_ is Union!4565) (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666717))

(declare-fun b!1666719 () Bool)

(declare-fun e!1068279 () Bool)

(declare-fun tp!480809 () Bool)

(declare-fun tp!480806 () Bool)

(assert (=> b!1666719 (= e!1068279 (and tp!480809 tp!480806))))

(declare-fun b!1666721 () Bool)

(declare-fun tp!480807 () Bool)

(declare-fun tp!480808 () Bool)

(assert (=> b!1666721 (= e!1068279 (and tp!480807 tp!480808))))

(assert (=> b!1666396 (= tp!480738 e!1068279)))

(declare-fun b!1666720 () Bool)

(declare-fun tp!480805 () Bool)

(assert (=> b!1666720 (= e!1068279 tp!480805)))

(declare-fun b!1666718 () Bool)

(assert (=> b!1666718 (= e!1068279 tp_is_empty!7405)))

(assert (= (and b!1666396 ((_ is ElementMatch!4565) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666718))

(assert (= (and b!1666396 ((_ is Concat!7893) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666719))

(assert (= (and b!1666396 ((_ is Star!4565) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666720))

(assert (= (and b!1666396 ((_ is Union!4565) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457)))))) b!1666721))

(declare-fun b!1666724 () Bool)

(declare-fun b_free!45295 () Bool)

(declare-fun b_next!45999 () Bool)

(assert (=> b!1666724 (= b_free!45295 (not b_next!45999))))

(declare-fun tp!480811 () Bool)

(declare-fun b_and!118429 () Bool)

(assert (=> b!1666724 (= tp!480811 b_and!118429)))

(declare-fun b_free!45297 () Bool)

(declare-fun b_next!46001 () Bool)

(assert (=> b!1666724 (= b_free!45297 (not b_next!46001))))

(declare-fun tb!95559 () Bool)

(declare-fun t!152239 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152239) tb!95559))

(declare-fun result!115470 () Bool)

(assert (= result!115470 result!115418))

(assert (=> b!1666231 t!152239))

(declare-fun tb!95561 () Bool)

(declare-fun t!152241 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152241) tb!95561))

(declare-fun result!115472 () Bool)

(assert (= result!115472 result!115462))

(assert (=> d!503763 t!152241))

(assert (=> b!1666671 t!152241))

(declare-fun b_and!118431 () Bool)

(declare-fun tp!480812 () Bool)

(assert (=> b!1666724 (= tp!480812 (and (=> t!152239 result!115470) (=> t!152241 result!115472) b_and!118431))))

(declare-fun e!1068280 () Bool)

(assert (=> b!1666724 (= e!1068280 (and tp!480811 tp!480812))))

(declare-fun tp!480810 () Bool)

(declare-fun b!1666723 () Bool)

(declare-fun e!1068282 () Bool)

(assert (=> b!1666723 (= e!1068282 (and tp!480810 (inv!23715 (tag!3521 (h!23777 (t!152191 (t!152191 rules!1846))))) (inv!23718 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) e!1068280))))

(declare-fun b!1666722 () Bool)

(declare-fun e!1068283 () Bool)

(declare-fun tp!480813 () Bool)

(assert (=> b!1666722 (= e!1068283 (and e!1068282 tp!480813))))

(assert (=> b!1666407 (= tp!480753 e!1068283)))

(assert (= b!1666723 b!1666724))

(assert (= b!1666722 b!1666723))

(assert (= (and b!1666407 ((_ is Cons!18376) (t!152191 (t!152191 rules!1846)))) b!1666722))

(declare-fun m!2030395 () Bool)

(assert (=> b!1666723 m!2030395))

(declare-fun m!2030397 () Bool)

(assert (=> b!1666723 m!2030397))

(declare-fun b!1666726 () Bool)

(declare-fun e!1068284 () Bool)

(declare-fun tp!480818 () Bool)

(declare-fun tp!480815 () Bool)

(assert (=> b!1666726 (= e!1068284 (and tp!480818 tp!480815))))

(declare-fun b!1666728 () Bool)

(declare-fun tp!480816 () Bool)

(declare-fun tp!480817 () Bool)

(assert (=> b!1666728 (= e!1068284 (and tp!480816 tp!480817))))

(assert (=> b!1666411 (= tp!480758 e!1068284)))

(declare-fun b!1666727 () Bool)

(declare-fun tp!480814 () Bool)

(assert (=> b!1666727 (= e!1068284 tp!480814)))

(declare-fun b!1666725 () Bool)

(assert (=> b!1666725 (= e!1068284 tp_is_empty!7405)))

(assert (= (and b!1666411 ((_ is ElementMatch!4565) (regOne!9642 (regex!3237 (h!23777 rules!1846))))) b!1666725))

(assert (= (and b!1666411 ((_ is Concat!7893) (regOne!9642 (regex!3237 (h!23777 rules!1846))))) b!1666726))

(assert (= (and b!1666411 ((_ is Star!4565) (regOne!9642 (regex!3237 (h!23777 rules!1846))))) b!1666727))

(assert (= (and b!1666411 ((_ is Union!4565) (regOne!9642 (regex!3237 (h!23777 rules!1846))))) b!1666728))

(declare-fun b!1666730 () Bool)

(declare-fun e!1068285 () Bool)

(declare-fun tp!480823 () Bool)

(declare-fun tp!480820 () Bool)

(assert (=> b!1666730 (= e!1068285 (and tp!480823 tp!480820))))

(declare-fun b!1666732 () Bool)

(declare-fun tp!480821 () Bool)

(declare-fun tp!480822 () Bool)

(assert (=> b!1666732 (= e!1068285 (and tp!480821 tp!480822))))

(assert (=> b!1666411 (= tp!480755 e!1068285)))

(declare-fun b!1666731 () Bool)

(declare-fun tp!480819 () Bool)

(assert (=> b!1666731 (= e!1068285 tp!480819)))

(declare-fun b!1666729 () Bool)

(assert (=> b!1666729 (= e!1068285 tp_is_empty!7405)))

(assert (= (and b!1666411 ((_ is ElementMatch!4565) (regTwo!9642 (regex!3237 (h!23777 rules!1846))))) b!1666729))

(assert (= (and b!1666411 ((_ is Concat!7893) (regTwo!9642 (regex!3237 (h!23777 rules!1846))))) b!1666730))

(assert (= (and b!1666411 ((_ is Star!4565) (regTwo!9642 (regex!3237 (h!23777 rules!1846))))) b!1666731))

(assert (= (and b!1666411 ((_ is Union!4565) (regTwo!9642 (regex!3237 (h!23777 rules!1846))))) b!1666732))

(declare-fun b!1666734 () Bool)

(declare-fun e!1068286 () Bool)

(declare-fun tp!480828 () Bool)

(declare-fun tp!480825 () Bool)

(assert (=> b!1666734 (= e!1068286 (and tp!480828 tp!480825))))

(declare-fun b!1666736 () Bool)

(declare-fun tp!480826 () Bool)

(declare-fun tp!480827 () Bool)

(assert (=> b!1666736 (= e!1068286 (and tp!480826 tp!480827))))

(assert (=> b!1666413 (= tp!480756 e!1068286)))

(declare-fun b!1666735 () Bool)

(declare-fun tp!480824 () Bool)

(assert (=> b!1666735 (= e!1068286 tp!480824)))

(declare-fun b!1666733 () Bool)

(assert (=> b!1666733 (= e!1068286 tp_is_empty!7405)))

(assert (= (and b!1666413 ((_ is ElementMatch!4565) (regOne!9643 (regex!3237 (h!23777 rules!1846))))) b!1666733))

(assert (= (and b!1666413 ((_ is Concat!7893) (regOne!9643 (regex!3237 (h!23777 rules!1846))))) b!1666734))

(assert (= (and b!1666413 ((_ is Star!4565) (regOne!9643 (regex!3237 (h!23777 rules!1846))))) b!1666735))

(assert (= (and b!1666413 ((_ is Union!4565) (regOne!9643 (regex!3237 (h!23777 rules!1846))))) b!1666736))

(declare-fun b!1666738 () Bool)

(declare-fun e!1068287 () Bool)

(declare-fun tp!480833 () Bool)

(declare-fun tp!480830 () Bool)

(assert (=> b!1666738 (= e!1068287 (and tp!480833 tp!480830))))

(declare-fun b!1666740 () Bool)

(declare-fun tp!480831 () Bool)

(declare-fun tp!480832 () Bool)

(assert (=> b!1666740 (= e!1068287 (and tp!480831 tp!480832))))

(assert (=> b!1666413 (= tp!480757 e!1068287)))

(declare-fun b!1666739 () Bool)

(declare-fun tp!480829 () Bool)

(assert (=> b!1666739 (= e!1068287 tp!480829)))

(declare-fun b!1666737 () Bool)

(assert (=> b!1666737 (= e!1068287 tp_is_empty!7405)))

(assert (= (and b!1666413 ((_ is ElementMatch!4565) (regTwo!9643 (regex!3237 (h!23777 rules!1846))))) b!1666737))

(assert (= (and b!1666413 ((_ is Concat!7893) (regTwo!9643 (regex!3237 (h!23777 rules!1846))))) b!1666738))

(assert (= (and b!1666413 ((_ is Star!4565) (regTwo!9643 (regex!3237 (h!23777 rules!1846))))) b!1666739))

(assert (= (and b!1666413 ((_ is Union!4565) (regTwo!9643 (regex!3237 (h!23777 rules!1846))))) b!1666740))

(declare-fun b!1666741 () Bool)

(declare-fun e!1068288 () Bool)

(declare-fun tp!480834 () Bool)

(assert (=> b!1666741 (= e!1068288 (and tp_is_empty!7405 tp!480834))))

(assert (=> b!1666430 (= tp!480773 e!1068288)))

(assert (= (and b!1666430 ((_ is Cons!18374) (originalCharacters!4051 (h!23776 (t!152190 tokens!457))))) b!1666741))

(declare-fun b!1666743 () Bool)

(declare-fun e!1068289 () Bool)

(declare-fun tp!480839 () Bool)

(declare-fun tp!480836 () Bool)

(assert (=> b!1666743 (= e!1068289 (and tp!480839 tp!480836))))

(declare-fun b!1666745 () Bool)

(declare-fun tp!480837 () Bool)

(declare-fun tp!480838 () Bool)

(assert (=> b!1666745 (= e!1068289 (and tp!480837 tp!480838))))

(assert (=> b!1666408 (= tp!480750 e!1068289)))

(declare-fun b!1666744 () Bool)

(declare-fun tp!480835 () Bool)

(assert (=> b!1666744 (= e!1068289 tp!480835)))

(declare-fun b!1666742 () Bool)

(assert (=> b!1666742 (= e!1068289 tp_is_empty!7405)))

(assert (= (and b!1666408 ((_ is ElementMatch!4565) (regex!3237 (h!23777 (t!152191 rules!1846))))) b!1666742))

(assert (= (and b!1666408 ((_ is Concat!7893) (regex!3237 (h!23777 (t!152191 rules!1846))))) b!1666743))

(assert (= (and b!1666408 ((_ is Star!4565) (regex!3237 (h!23777 (t!152191 rules!1846))))) b!1666744))

(assert (= (and b!1666408 ((_ is Union!4565) (regex!3237 (h!23777 (t!152191 rules!1846))))) b!1666745))

(declare-fun b!1666747 () Bool)

(declare-fun e!1068290 () Bool)

(declare-fun tp!480844 () Bool)

(declare-fun tp!480841 () Bool)

(assert (=> b!1666747 (= e!1068290 (and tp!480844 tp!480841))))

(declare-fun b!1666749 () Bool)

(declare-fun tp!480842 () Bool)

(declare-fun tp!480843 () Bool)

(assert (=> b!1666749 (= e!1068290 (and tp!480842 tp!480843))))

(assert (=> b!1666412 (= tp!480754 e!1068290)))

(declare-fun b!1666748 () Bool)

(declare-fun tp!480840 () Bool)

(assert (=> b!1666748 (= e!1068290 tp!480840)))

(declare-fun b!1666746 () Bool)

(assert (=> b!1666746 (= e!1068290 tp_is_empty!7405)))

(assert (= (and b!1666412 ((_ is ElementMatch!4565) (reg!4894 (regex!3237 (h!23777 rules!1846))))) b!1666746))

(assert (= (and b!1666412 ((_ is Concat!7893) (reg!4894 (regex!3237 (h!23777 rules!1846))))) b!1666747))

(assert (= (and b!1666412 ((_ is Star!4565) (reg!4894 (regex!3237 (h!23777 rules!1846))))) b!1666748))

(assert (= (and b!1666412 ((_ is Union!4565) (reg!4894 (regex!3237 (h!23777 rules!1846))))) b!1666749))

(declare-fun b!1666753 () Bool)

(declare-fun b_free!45299 () Bool)

(declare-fun b_next!46003 () Bool)

(assert (=> b!1666753 (= b_free!45299 (not b_next!46003))))

(declare-fun tp!480847 () Bool)

(declare-fun b_and!118433 () Bool)

(assert (=> b!1666753 (= tp!480847 b_and!118433)))

(declare-fun b_free!45301 () Bool)

(declare-fun b_next!46005 () Bool)

(assert (=> b!1666753 (= b_free!45301 (not b_next!46005))))

(declare-fun t!152243 () Bool)

(declare-fun tb!95563 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152243) tb!95563))

(declare-fun result!115474 () Bool)

(assert (= result!115474 result!115418))

(assert (=> b!1666231 t!152243))

(declare-fun t!152245 () Bool)

(declare-fun tb!95565 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152245) tb!95565))

(declare-fun result!115476 () Bool)

(assert (= result!115476 result!115462))

(assert (=> d!503763 t!152245))

(assert (=> b!1666671 t!152245))

(declare-fun tp!480849 () Bool)

(declare-fun b_and!118435 () Bool)

(assert (=> b!1666753 (= tp!480849 (and (=> t!152243 result!115474) (=> t!152245 result!115476) b_and!118435))))

(declare-fun e!1068291 () Bool)

(assert (=> b!1666753 (= e!1068291 (and tp!480847 tp!480849))))

(declare-fun e!1068296 () Bool)

(assert (=> b!1666429 (= tp!480775 e!1068296)))

(declare-fun tp!480845 () Bool)

(declare-fun e!1068295 () Bool)

(declare-fun b!1666752 () Bool)

(assert (=> b!1666752 (= e!1068295 (and tp!480845 (inv!23715 (tag!3521 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (inv!23718 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) e!1068291))))

(declare-fun e!1068293 () Bool)

(declare-fun b!1666750 () Bool)

(declare-fun tp!480848 () Bool)

(assert (=> b!1666750 (= e!1068296 (and (inv!23719 (h!23776 (t!152190 (t!152190 tokens!457)))) e!1068293 tp!480848))))

(declare-fun b!1666751 () Bool)

(declare-fun tp!480846 () Bool)

(assert (=> b!1666751 (= e!1068293 (and (inv!21 (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))) e!1068295 tp!480846))))

(assert (= b!1666752 b!1666753))

(assert (= b!1666751 b!1666752))

(assert (= b!1666750 b!1666751))

(assert (= (and b!1666429 ((_ is Cons!18375) (t!152190 (t!152190 tokens!457)))) b!1666750))

(declare-fun m!2030399 () Bool)

(assert (=> b!1666752 m!2030399))

(declare-fun m!2030401 () Bool)

(assert (=> b!1666752 m!2030401))

(declare-fun m!2030403 () Bool)

(assert (=> b!1666750 m!2030403))

(declare-fun m!2030405 () Bool)

(assert (=> b!1666751 m!2030405))

(declare-fun tp!480864 () Bool)

(declare-fun tp!480863 () Bool)

(declare-fun e!1068307 () Bool)

(declare-fun b!1666770 () Bool)

(assert (=> b!1666770 (= e!1068307 (and (inv!23722 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) tp!480864 (inv!23722 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) tp!480863))))

(declare-fun b!1666772 () Bool)

(declare-fun e!1068306 () Bool)

(declare-fun tp!480862 () Bool)

(assert (=> b!1666772 (= e!1068306 tp!480862)))

(declare-fun b!1666771 () Bool)

(declare-fun inv!23728 (IArray!12249) Bool)

(assert (=> b!1666771 (= e!1068307 (and (inv!23728 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) e!1068306))))

(assert (=> b!1666237 (= tp!480673 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) e!1068307))))

(assert (= (and b!1666237 ((_ is Node!6122) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) b!1666770))

(assert (= b!1666771 b!1666772))

(assert (= (and b!1666237 ((_ is Leaf!8961) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) b!1666771))

(declare-fun m!2030413 () Bool)

(assert (=> b!1666770 m!2030413))

(declare-fun m!2030415 () Bool)

(assert (=> b!1666770 m!2030415))

(declare-fun m!2030417 () Bool)

(assert (=> b!1666771 m!2030417))

(assert (=> b!1666237 m!2029591))

(declare-fun b_lambda!52325 () Bool)

(assert (= b_lambda!52321 (or (and b!1666187 b_free!45273 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666178 b_free!45277 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666409 b_free!45289 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666753 b_free!45301 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666724 b_free!45297 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666432 b_free!45293) b_lambda!52325)))

(declare-fun b_lambda!52327 () Bool)

(assert (= b_lambda!52317 (or (and b!1666187 b_free!45273 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666178 b_free!45277 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666409 b_free!45289 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666753 b_free!45301 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666724 b_free!45297 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (and b!1666432 b_free!45293) b_lambda!52327)))

(declare-fun b_lambda!52329 () Bool)

(assert (= b_lambda!52319 (or d!503589 b_lambda!52329)))

(declare-fun bs!397742 () Bool)

(declare-fun d!503813 () Bool)

(assert (= bs!397742 (and d!503813 d!503589)))

(assert (=> bs!397742 (= (dynLambda!8278 lambda!67948 (h!23776 tokens!457)) (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457)))))

(assert (=> bs!397742 m!2029587))

(assert (=> b!1666669 d!503813))

(check-sat (not d!503715) (not d!503639) (not d!503663) b_and!118365 (not tb!95551) (not b!1666708) b_and!118421 (not b!1666735) (not d!503709) (not d!503637) (not b_next!46001) (not b!1666672) (not d!503763) tp_is_empty!7405 (not b!1666696) (not b!1666477) (not b_lambda!52327) (not b!1666637) (not d!503645) (not b_next!45997) (not b!1666448) (not b!1666639) (not b!1666490) (not d!503793) (not b!1666475) b_and!118423 (not b!1666654) (not d!503657) (not b!1666731) (not b_next!45979) (not b!1666697) (not b!1666717) (not d!503797) (not b!1666552) (not b!1666741) (not d!503655) (not d!503777) (not d!503731) (not b!1666706) (not b!1666722) (not d!503705) (not d!503719) (not b!1666693) (not bs!397742) (not b!1666770) (not b!1666743) b_and!118369 (not d!503717) (not b_next!46005) (not b!1666566) (not b!1666564) (not b!1666747) b_and!118393 (not d!503733) (not b!1666752) (not d!503631) b_and!118389 (not d!503767) (not d!503735) (not b!1666699) (not b_next!45975) (not b!1666705) (not b!1666710) (not b!1666727) (not b_next!45999) (not b_next!45995) (not b!1666447) (not b!1666449) (not b!1666670) b_and!118431 (not b!1666453) (not b!1666450) (not b!1666736) (not d!503775) (not d!503765) b_and!118425 (not b!1666732) (not b!1666636) (not d!503621) (not b!1666749) (not d!503723) (not d!503795) (not d!503779) (not b!1666738) (not d!503659) (not b!1666730) (not b!1666652) (not b_next!45981) (not b_next!45993) (not b!1666720) (not b!1666580) (not b!1666638) (not b!1666716) (not b_next!45991) b_and!118435 (not b!1666702) (not b!1666711) (not b!1666691) (not d!503635) (not b!1666467) (not b!1666478) (not b!1666709) (not b!1666671) (not b!1666715) b_and!118433 (not d!503727) (not b!1666723) (not d!503661) (not b!1666237) (not b!1666734) (not b!1666551) (not b!1666491) (not d!503633) (not b!1666751) (not b_lambda!52325) b_and!118427 (not b!1666492) (not b!1666650) (not b!1666586) (not b!1666656) (not b!1666772) (not b!1666719) (not b!1666565) (not b!1666479) (not d!503623) b_and!118429 (not b_lambda!52329) (not b!1666559) (not b!1666739) (not b!1666728) (not b_lambda!52311) (not b_next!45977) (not b!1666554) (not d!503787) (not d!503647) (not b_next!46003) (not d!503729) (not b!1666700) (not b!1666651) (not b!1666695) (not d!503711) (not b!1666745) (not b!1666579) (not b!1666721) (not b!1666701) (not b!1666748) (not b!1666750) (not b!1666704) (not b!1666771) (not b!1666744) (not b!1666726) (not b!1666550) (not b!1666740))
(check-sat (not b_next!46001) (not b_next!45997) b_and!118423 (not b_next!45979) (not b_next!45975) b_and!118431 b_and!118425 (not b_next!45981) b_and!118429 (not b_next!45977) (not b_next!46003) b_and!118365 b_and!118421 b_and!118369 (not b_next!46005) b_and!118393 b_and!118389 (not b_next!45999) (not b_next!45995) (not b_next!45993) (not b_next!45991) b_and!118435 b_and!118433 b_and!118427)
(get-model)

(declare-fun d!503845 () Bool)

(declare-fun c!271270 () Bool)

(assert (=> d!503845 (= c!271270 ((_ is Empty!6123) (c!271173 (seqFromList!2212 tokens!457))))))

(declare-fun e!1068355 () List!18445)

(assert (=> d!503845 (= (list!7348 (c!271173 (seqFromList!2212 tokens!457))) e!1068355)))

(declare-fun b!1666863 () Bool)

(declare-fun e!1068356 () List!18445)

(assert (=> b!1666863 (= e!1068355 e!1068356)))

(declare-fun c!271271 () Bool)

(assert (=> b!1666863 (= c!271271 ((_ is Leaf!8962) (c!271173 (seqFromList!2212 tokens!457))))))

(declare-fun b!1666865 () Bool)

(assert (=> b!1666865 (= e!1068356 (++!5005 (list!7348 (left!14699 (c!271173 (seqFromList!2212 tokens!457)))) (list!7348 (right!15029 (c!271173 (seqFromList!2212 tokens!457))))))))

(declare-fun b!1666864 () Bool)

(assert (=> b!1666864 (= e!1068356 (list!7352 (xs!8967 (c!271173 (seqFromList!2212 tokens!457)))))))

(declare-fun b!1666862 () Bool)

(assert (=> b!1666862 (= e!1068355 Nil!18375)))

(assert (= (and d!503845 c!271270) b!1666862))

(assert (= (and d!503845 (not c!271270)) b!1666863))

(assert (= (and b!1666863 c!271271) b!1666864))

(assert (= (and b!1666863 (not c!271271)) b!1666865))

(declare-fun m!2030509 () Bool)

(assert (=> b!1666865 m!2030509))

(declare-fun m!2030511 () Bool)

(assert (=> b!1666865 m!2030511))

(assert (=> b!1666865 m!2030509))

(assert (=> b!1666865 m!2030511))

(declare-fun m!2030513 () Bool)

(assert (=> b!1666865 m!2030513))

(declare-fun m!2030515 () Bool)

(assert (=> b!1666864 m!2030515))

(assert (=> d!503645 d!503845))

(declare-fun d!503849 () Bool)

(assert (=> d!503849 (= (lexList!891 thiss!17113 rules!1846 lt!627386) (tuple2!18095 lt!627406 Nil!18374))))

(declare-fun lt!627610 () Unit!31136)

(declare-fun choose!10032 (LexerInterface!2866 List!18446 List!18444 List!18444 List!18445 List!18445 List!18444) Unit!31136)

(assert (=> d!503849 (= lt!627610 (choose!10032 thiss!17113 rules!1846 lt!627386 lt!627384 lt!627406 (list!7344 (_1!10447 lt!627410)) (list!7347 (_2!10447 lt!627410))))))

(assert (=> d!503849 (not (isEmpty!11428 rules!1846))))

(assert (=> d!503849 (= (lemmaLexThenLexPrefix!268 thiss!17113 rules!1846 lt!627386 lt!627384 lt!627406 (list!7344 (_1!10447 lt!627410)) (list!7347 (_2!10447 lt!627410))) lt!627610)))

(declare-fun bs!397760 () Bool)

(assert (= bs!397760 d!503849))

(assert (=> bs!397760 m!2030007))

(assert (=> bs!397760 m!2030023))

(assert (=> bs!397760 m!2030033))

(declare-fun m!2030539 () Bool)

(assert (=> bs!397760 m!2030539))

(assert (=> bs!397760 m!2029519))

(assert (=> b!1666554 d!503849))

(declare-fun lt!627625 () Option!3526)

(declare-fun e!1068378 () Bool)

(declare-fun b!1666890 () Bool)

(declare-fun get!5379 (Option!3526) tuple2!18098)

(declare-fun get!5380 (Option!3525) tuple2!18096)

(declare-fun maxPrefixZipper!363 (LexerInterface!2866 List!18446 List!18444) Option!3525)

(assert (=> b!1666890 (= e!1068378 (= (list!7347 (_2!10451 (get!5379 lt!627625))) (_2!10450 (get!5380 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 lt!627413))))))))

(declare-fun b!1666891 () Bool)

(declare-fun e!1068375 () Bool)

(assert (=> b!1666891 (= e!1068375 e!1068378)))

(declare-fun res!747671 () Bool)

(assert (=> b!1666891 (=> (not res!747671) (not e!1068378))))

(assert (=> b!1666891 (= res!747671 (= (_1!10451 (get!5379 lt!627625)) (_1!10450 (get!5380 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 lt!627413))))))))

(declare-fun bm!106530 () Bool)

(declare-fun call!106535 () Option!3526)

(declare-fun maxPrefixOneRuleZipperSequence!355 (LexerInterface!2866 Rule!6274 BalanceConc!12188) Option!3526)

(assert (=> bm!106530 (= call!106535 (maxPrefixOneRuleZipperSequence!355 thiss!17113 (h!23777 rules!1846) lt!627413))))

(declare-fun b!1666892 () Bool)

(declare-fun e!1068374 () Option!3526)

(declare-fun lt!627627 () Option!3526)

(declare-fun lt!627629 () Option!3526)

(assert (=> b!1666892 (= e!1068374 (ite (and ((_ is None!3525) lt!627627) ((_ is None!3525) lt!627629)) None!3525 (ite ((_ is None!3525) lt!627629) lt!627627 (ite ((_ is None!3525) lt!627627) lt!627629 (ite (>= (size!14610 (_1!10451 (v!24774 lt!627627))) (size!14610 (_1!10451 (v!24774 lt!627629)))) lt!627627 lt!627629)))))))

(assert (=> b!1666892 (= lt!627627 call!106535)))

(assert (=> b!1666892 (= lt!627629 (maxPrefixZipperSequence!742 thiss!17113 (t!152191 rules!1846) lt!627413))))

(declare-fun b!1666893 () Bool)

(declare-fun res!747670 () Bool)

(declare-fun e!1068377 () Bool)

(assert (=> b!1666893 (=> (not res!747670) (not e!1068377))))

(assert (=> b!1666893 (= res!747670 e!1068375)))

(declare-fun res!747673 () Bool)

(assert (=> b!1666893 (=> res!747673 e!1068375)))

(declare-fun isDefined!2880 (Option!3526) Bool)

(assert (=> b!1666893 (= res!747673 (not (isDefined!2880 lt!627625)))))

(declare-fun b!1666894 () Bool)

(declare-fun e!1068373 () Bool)

(declare-fun e!1068376 () Bool)

(assert (=> b!1666894 (= e!1068373 e!1068376)))

(declare-fun res!747669 () Bool)

(assert (=> b!1666894 (=> (not res!747669) (not e!1068376))))

(assert (=> b!1666894 (= res!747669 (= (_1!10451 (get!5379 lt!627625)) (_1!10450 (get!5380 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 lt!627413))))))))

(declare-fun b!1666895 () Bool)

(assert (=> b!1666895 (= e!1068376 (= (list!7347 (_2!10451 (get!5379 lt!627625))) (_2!10450 (get!5380 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 lt!627413))))))))

(declare-fun b!1666896 () Bool)

(assert (=> b!1666896 (= e!1068374 call!106535)))

(declare-fun d!503871 () Bool)

(assert (=> d!503871 e!1068377))

(declare-fun res!747668 () Bool)

(assert (=> d!503871 (=> (not res!747668) (not e!1068377))))

(declare-fun isDefined!2881 (Option!3525) Bool)

(assert (=> d!503871 (= res!747668 (= (isDefined!2880 lt!627625) (isDefined!2881 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 lt!627413)))))))

(assert (=> d!503871 (= lt!627625 e!1068374)))

(declare-fun c!271278 () Bool)

(assert (=> d!503871 (= c!271278 (and ((_ is Cons!18376) rules!1846) ((_ is Nil!18376) (t!152191 rules!1846))))))

(declare-fun lt!627626 () Unit!31136)

(declare-fun lt!627631 () Unit!31136)

(assert (=> d!503871 (= lt!627626 lt!627631)))

(declare-fun lt!627630 () List!18444)

(declare-fun lt!627628 () List!18444)

(declare-fun isPrefix!1494 (List!18444 List!18444) Bool)

(assert (=> d!503871 (isPrefix!1494 lt!627630 lt!627628)))

(declare-fun lemmaIsPrefixRefl!1015 (List!18444 List!18444) Unit!31136)

(assert (=> d!503871 (= lt!627631 (lemmaIsPrefixRefl!1015 lt!627630 lt!627628))))

(assert (=> d!503871 (= lt!627628 (list!7347 lt!627413))))

(assert (=> d!503871 (= lt!627630 (list!7347 lt!627413))))

(assert (=> d!503871 (rulesValidInductive!1038 thiss!17113 rules!1846)))

(assert (=> d!503871 (= (maxPrefixZipperSequence!742 thiss!17113 rules!1846 lt!627413) lt!627625)))

(declare-fun b!1666897 () Bool)

(assert (=> b!1666897 (= e!1068377 e!1068373)))

(declare-fun res!747672 () Bool)

(assert (=> b!1666897 (=> res!747672 e!1068373)))

(assert (=> b!1666897 (= res!747672 (not (isDefined!2880 lt!627625)))))

(assert (= (and d!503871 c!271278) b!1666896))

(assert (= (and d!503871 (not c!271278)) b!1666892))

(assert (= (or b!1666896 b!1666892) bm!106530))

(assert (= (and d!503871 res!747668) b!1666893))

(assert (= (and b!1666893 (not res!747673)) b!1666891))

(assert (= (and b!1666891 res!747671) b!1666890))

(assert (= (and b!1666893 res!747670) b!1666897))

(assert (= (and b!1666897 (not res!747672)) b!1666894))

(assert (= (and b!1666894 res!747669) b!1666895))

(declare-fun m!2030541 () Bool)

(assert (=> b!1666893 m!2030541))

(declare-fun m!2030543 () Bool)

(assert (=> b!1666890 m!2030543))

(declare-fun m!2030545 () Bool)

(assert (=> b!1666890 m!2030545))

(declare-fun m!2030547 () Bool)

(assert (=> b!1666890 m!2030547))

(assert (=> b!1666890 m!2030545))

(assert (=> b!1666890 m!2030547))

(declare-fun m!2030549 () Bool)

(assert (=> b!1666890 m!2030549))

(declare-fun m!2030551 () Bool)

(assert (=> b!1666890 m!2030551))

(assert (=> b!1666894 m!2030551))

(assert (=> b!1666894 m!2030545))

(assert (=> b!1666894 m!2030545))

(declare-fun m!2030553 () Bool)

(assert (=> b!1666894 m!2030553))

(assert (=> b!1666894 m!2030553))

(declare-fun m!2030555 () Bool)

(assert (=> b!1666894 m!2030555))

(assert (=> d!503871 m!2030541))

(assert (=> d!503871 m!2030547))

(declare-fun m!2030557 () Bool)

(assert (=> d!503871 m!2030557))

(assert (=> d!503871 m!2030545))

(declare-fun m!2030559 () Bool)

(assert (=> d!503871 m!2030559))

(assert (=> d!503871 m!2030545))

(assert (=> d!503871 m!2030547))

(declare-fun m!2030561 () Bool)

(assert (=> d!503871 m!2030561))

(assert (=> d!503871 m!2030075))

(assert (=> b!1666895 m!2030543))

(assert (=> b!1666895 m!2030551))

(assert (=> b!1666895 m!2030545))

(assert (=> b!1666895 m!2030553))

(assert (=> b!1666895 m!2030545))

(assert (=> b!1666895 m!2030553))

(assert (=> b!1666895 m!2030555))

(declare-fun m!2030563 () Bool)

(assert (=> b!1666892 m!2030563))

(declare-fun m!2030565 () Bool)

(assert (=> bm!106530 m!2030565))

(assert (=> b!1666897 m!2030541))

(assert (=> b!1666891 m!2030551))

(assert (=> b!1666891 m!2030545))

(assert (=> b!1666891 m!2030545))

(assert (=> b!1666891 m!2030547))

(assert (=> b!1666891 m!2030547))

(assert (=> b!1666891 m!2030549))

(assert (=> b!1666554 d!503871))

(declare-fun d!503873 () Bool)

(assert (=> d!503873 (= (list!7347 (_2!10451 (v!24774 lt!627412))) (list!7349 (c!271171 (_2!10451 (v!24774 lt!627412)))))))

(declare-fun bs!397761 () Bool)

(assert (= bs!397761 d!503873))

(declare-fun m!2030567 () Bool)

(assert (=> bs!397761 m!2030567))

(assert (=> b!1666554 d!503873))

(declare-fun b!1666898 () Bool)

(declare-fun lt!627657 () tuple2!18090)

(declare-fun e!1068380 () Bool)

(assert (=> b!1666898 (= e!1068380 (= (list!7347 (_2!10447 lt!627657)) (list!7347 (_2!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun lt!627642 () Option!3526)

(declare-fun lt!627632 () tuple2!18090)

(declare-fun b!1666899 () Bool)

(assert (=> b!1666899 (= lt!627632 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627642))))))

(declare-fun e!1068379 () tuple2!18090)

(assert (=> b!1666899 (= e!1068379 (tuple2!18091 (prepend!820 (_1!10447 lt!627632) (_1!10451 (v!24774 lt!627642))) (_2!10447 lt!627632)))))

(declare-fun lt!627645 () Option!3526)

(declare-fun lt!627665 () tuple2!18090)

(declare-fun b!1666900 () Bool)

(assert (=> b!1666900 (= lt!627665 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627645))))))

(declare-fun e!1068382 () tuple2!18090)

(assert (=> b!1666900 (= e!1068382 (tuple2!18091 (prepend!820 (_1!10447 lt!627665) (_1!10451 (v!24774 lt!627645))) (_2!10447 lt!627665)))))

(declare-fun b!1666901 () Bool)

(declare-fun lt!627663 () BalanceConc!12188)

(assert (=> b!1666901 (= e!1068382 (tuple2!18091 (BalanceConc!12191 Empty!6123) lt!627663))))

(declare-fun b!1666902 () Bool)

(declare-fun lt!627662 () Option!3526)

(declare-fun lt!627644 () BalanceConc!12188)

(declare-fun e!1068381 () tuple2!18090)

(assert (=> b!1666902 (= e!1068381 (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) lt!627644 (_2!10451 (v!24774 lt!627662)) (append!565 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412))) (_1!10451 (v!24774 lt!627662)))))))

(declare-fun lt!627660 () tuple2!18090)

(assert (=> b!1666902 (= lt!627660 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627662))))))

(declare-fun lt!627655 () List!18444)

(assert (=> b!1666902 (= lt!627655 (list!7347 lt!627394))))

(declare-fun lt!627654 () List!18444)

(assert (=> b!1666902 (= lt!627654 (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627662)))))))

(declare-fun lt!627646 () List!18444)

(assert (=> b!1666902 (= lt!627646 (list!7347 (_2!10451 (v!24774 lt!627662))))))

(declare-fun lt!627639 () Unit!31136)

(assert (=> b!1666902 (= lt!627639 (lemmaConcatAssociativity!1036 lt!627655 lt!627654 lt!627646))))

(assert (=> b!1666902 (= (++!5002 (++!5002 lt!627655 lt!627654) lt!627646) (++!5002 lt!627655 (++!5002 lt!627654 lt!627646)))))

(declare-fun lt!627647 () Unit!31136)

(assert (=> b!1666902 (= lt!627647 lt!627639)))

(assert (=> b!1666902 (= lt!627642 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627412))))))

(declare-fun c!271280 () Bool)

(assert (=> b!1666902 (= c!271280 ((_ is Some!3525) lt!627642))))

(assert (=> b!1666902 (= (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627412))) e!1068379)))

(declare-fun lt!627659 () Unit!31136)

(declare-fun Unit!31151 () Unit!31136)

(assert (=> b!1666902 (= lt!627659 Unit!31151)))

(declare-fun lt!627664 () List!18445)

(assert (=> b!1666902 (= lt!627664 (list!7344 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412)))))))

(declare-fun lt!627643 () List!18445)

(assert (=> b!1666902 (= lt!627643 (Cons!18375 (_1!10451 (v!24774 lt!627662)) Nil!18375))))

(declare-fun lt!627652 () List!18445)

(assert (=> b!1666902 (= lt!627652 (list!7344 (_1!10447 lt!627660)))))

(declare-fun lt!627635 () Unit!31136)

(assert (=> b!1666902 (= lt!627635 (lemmaConcatAssociativity!1037 lt!627664 lt!627643 lt!627652))))

(assert (=> b!1666902 (= (++!5005 (++!5005 lt!627664 lt!627643) lt!627652) (++!5005 lt!627664 (++!5005 lt!627643 lt!627652)))))

(declare-fun lt!627648 () Unit!31136)

(assert (=> b!1666902 (= lt!627648 lt!627635)))

(declare-fun lt!627636 () List!18444)

(assert (=> b!1666902 (= lt!627636 (++!5002 (list!7347 lt!627394) (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627662))))))))

(declare-fun lt!627634 () List!18444)

(assert (=> b!1666902 (= lt!627634 (list!7347 (_2!10451 (v!24774 lt!627662))))))

(declare-fun lt!627656 () List!18445)

(assert (=> b!1666902 (= lt!627656 (list!7344 (append!565 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412))) (_1!10451 (v!24774 lt!627662)))))))

(declare-fun lt!627641 () Unit!31136)

(assert (=> b!1666902 (= lt!627641 (lemmaLexThenLexPrefix!268 thiss!17113 rules!1846 lt!627636 lt!627634 lt!627656 (list!7344 (_1!10447 lt!627660)) (list!7347 (_2!10447 lt!627660))))))

(assert (=> b!1666902 (= (lexList!891 thiss!17113 rules!1846 lt!627636) (tuple2!18095 lt!627656 Nil!18374))))

(declare-fun lt!627638 () Unit!31136)

(assert (=> b!1666902 (= lt!627638 lt!627641)))

(assert (=> b!1666902 (= lt!627663 (++!5003 lt!627394 (charsOf!1886 (_1!10451 (v!24774 lt!627662)))))))

(assert (=> b!1666902 (= lt!627645 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 lt!627663))))

(declare-fun c!271281 () Bool)

(assert (=> b!1666902 (= c!271281 ((_ is Some!3525) lt!627645))))

(assert (=> b!1666902 (= (lexRec!380 thiss!17113 rules!1846 (++!5003 lt!627394 (charsOf!1886 (_1!10451 (v!24774 lt!627662))))) e!1068382)))

(declare-fun lt!627653 () Unit!31136)

(declare-fun Unit!31152 () Unit!31136)

(assert (=> b!1666902 (= lt!627653 Unit!31152)))

(assert (=> b!1666902 (= lt!627644 (++!5003 lt!627394 (charsOf!1886 (_1!10451 (v!24774 lt!627662)))))))

(declare-fun lt!627649 () List!18444)

(assert (=> b!1666902 (= lt!627649 (list!7347 lt!627644))))

(declare-fun lt!627637 () List!18444)

(assert (=> b!1666902 (= lt!627637 (list!7347 (_2!10451 (v!24774 lt!627662))))))

(declare-fun lt!627650 () Unit!31136)

(assert (=> b!1666902 (= lt!627650 (lemmaConcatTwoListThenFSndIsSuffix!327 lt!627649 lt!627637))))

(assert (=> b!1666902 (isSuffix!426 lt!627637 (++!5002 lt!627649 lt!627637))))

(declare-fun lt!627661 () Unit!31136)

(assert (=> b!1666902 (= lt!627661 lt!627650)))

(declare-fun b!1666903 () Bool)

(assert (=> b!1666903 (= e!1068381 (tuple2!18091 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412))) (_2!10451 (v!24774 lt!627412))))))

(declare-fun d!503875 () Bool)

(assert (=> d!503875 e!1068380))

(declare-fun res!747674 () Bool)

(assert (=> d!503875 (=> (not res!747674) (not e!1068380))))

(assert (=> d!503875 (= res!747674 (= (list!7344 (_1!10447 lt!627657)) (list!7344 (_1!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (=> d!503875 (= lt!627657 e!1068381)))

(declare-fun c!271279 () Bool)

(assert (=> d!503875 (= c!271279 ((_ is Some!3525) lt!627662))))

(assert (=> d!503875 (= lt!627662 (maxPrefixZipperSequenceV2!275 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627412)) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun lt!627640 () Unit!31136)

(declare-fun lt!627633 () Unit!31136)

(assert (=> d!503875 (= lt!627640 lt!627633)))

(declare-fun lt!627658 () List!18444)

(declare-fun lt!627651 () List!18444)

(assert (=> d!503875 (isSuffix!426 lt!627658 (++!5002 lt!627651 lt!627658))))

(assert (=> d!503875 (= lt!627633 (lemmaConcatTwoListThenFSndIsSuffix!327 lt!627651 lt!627658))))

(assert (=> d!503875 (= lt!627658 (list!7347 (_2!10451 (v!24774 lt!627412))))))

(assert (=> d!503875 (= lt!627651 (list!7347 lt!627394))))

(assert (=> d!503875 (= (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) lt!627394 (_2!10451 (v!24774 lt!627412)) (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412)))) lt!627657)))

(declare-fun b!1666904 () Bool)

(assert (=> b!1666904 (= e!1068379 (tuple2!18091 (BalanceConc!12191 Empty!6123) (_2!10451 (v!24774 lt!627412))))))

(assert (= (and d!503875 c!271279) b!1666902))

(assert (= (and d!503875 (not c!271279)) b!1666903))

(assert (= (and b!1666902 c!271280) b!1666899))

(assert (= (and b!1666902 (not c!271280)) b!1666904))

(assert (= (and b!1666902 c!271281) b!1666900))

(assert (= (and b!1666902 (not c!271281)) b!1666901))

(assert (= (and d!503875 res!747674) b!1666898))

(declare-fun m!2030569 () Bool)

(assert (=> b!1666900 m!2030569))

(declare-fun m!2030571 () Bool)

(assert (=> b!1666900 m!2030571))

(declare-fun m!2030573 () Bool)

(assert (=> b!1666902 m!2030573))

(declare-fun m!2030575 () Bool)

(assert (=> b!1666902 m!2030575))

(declare-fun m!2030577 () Bool)

(assert (=> b!1666902 m!2030577))

(assert (=> b!1666902 m!2030573))

(declare-fun m!2030579 () Bool)

(assert (=> b!1666902 m!2030579))

(declare-fun m!2030581 () Bool)

(assert (=> b!1666902 m!2030581))

(assert (=> b!1666902 m!2030011))

(assert (=> b!1666902 m!2030045))

(declare-fun m!2030583 () Bool)

(assert (=> b!1666902 m!2030583))

(declare-fun m!2030585 () Bool)

(assert (=> b!1666902 m!2030585))

(declare-fun m!2030587 () Bool)

(assert (=> b!1666902 m!2030587))

(declare-fun m!2030589 () Bool)

(assert (=> b!1666902 m!2030589))

(assert (=> b!1666902 m!2030011))

(declare-fun m!2030591 () Bool)

(assert (=> b!1666902 m!2030591))

(assert (=> b!1666902 m!2029531))

(assert (=> b!1666902 m!2030591))

(declare-fun m!2030593 () Bool)

(assert (=> b!1666902 m!2030593))

(declare-fun m!2030595 () Bool)

(assert (=> b!1666902 m!2030595))

(assert (=> b!1666902 m!2030589))

(declare-fun m!2030597 () Bool)

(assert (=> b!1666902 m!2030597))

(assert (=> b!1666902 m!2030579))

(declare-fun m!2030599 () Bool)

(assert (=> b!1666902 m!2030599))

(assert (=> b!1666902 m!2030049))

(declare-fun m!2030601 () Bool)

(assert (=> b!1666902 m!2030601))

(declare-fun m!2030603 () Bool)

(assert (=> b!1666902 m!2030603))

(declare-fun m!2030605 () Bool)

(assert (=> b!1666902 m!2030605))

(declare-fun m!2030607 () Bool)

(assert (=> b!1666902 m!2030607))

(declare-fun m!2030609 () Bool)

(assert (=> b!1666902 m!2030609))

(assert (=> b!1666902 m!2030601))

(declare-fun m!2030611 () Bool)

(assert (=> b!1666902 m!2030611))

(declare-fun m!2030613 () Bool)

(assert (=> b!1666902 m!2030613))

(assert (=> b!1666902 m!2030051))

(assert (=> b!1666902 m!2030603))

(declare-fun m!2030615 () Bool)

(assert (=> b!1666902 m!2030615))

(assert (=> b!1666902 m!2030611))

(assert (=> b!1666902 m!2030607))

(assert (=> b!1666902 m!2030577))

(declare-fun m!2030617 () Bool)

(assert (=> b!1666902 m!2030617))

(assert (=> b!1666902 m!2030051))

(assert (=> b!1666902 m!2030575))

(declare-fun m!2030619 () Bool)

(assert (=> b!1666902 m!2030619))

(assert (=> b!1666902 m!2030573))

(declare-fun m!2030621 () Bool)

(assert (=> b!1666902 m!2030621))

(assert (=> b!1666902 m!2030591))

(declare-fun m!2030623 () Bool)

(assert (=> b!1666902 m!2030623))

(assert (=> b!1666902 m!2030581))

(declare-fun m!2030625 () Bool)

(assert (=> b!1666902 m!2030625))

(declare-fun m!2030627 () Bool)

(assert (=> b!1666902 m!2030627))

(declare-fun m!2030629 () Bool)

(assert (=> b!1666902 m!2030629))

(declare-fun m!2030631 () Bool)

(assert (=> b!1666902 m!2030631))

(declare-fun m!2030633 () Bool)

(assert (=> d!503875 m!2030633))

(declare-fun m!2030635 () Bool)

(assert (=> d!503875 m!2030635))

(assert (=> d!503875 m!2030051))

(declare-fun m!2030637 () Bool)

(assert (=> d!503875 m!2030637))

(assert (=> d!503875 m!2030061))

(declare-fun m!2030639 () Bool)

(assert (=> d!503875 m!2030639))

(assert (=> d!503875 m!2030633))

(assert (=> d!503875 m!2030043))

(assert (=> d!503875 m!2029531))

(declare-fun m!2030641 () Bool)

(assert (=> d!503875 m!2030641))

(assert (=> d!503875 m!2029531))

(assert (=> d!503875 m!2030021))

(declare-fun m!2030643 () Bool)

(assert (=> b!1666899 m!2030643))

(declare-fun m!2030645 () Bool)

(assert (=> b!1666899 m!2030645))

(declare-fun m!2030647 () Bool)

(assert (=> b!1666898 m!2030647))

(assert (=> b!1666898 m!2029531))

(assert (=> b!1666898 m!2030021))

(assert (=> b!1666898 m!2030073))

(assert (=> b!1666554 d!503875))

(declare-fun d!503877 () Bool)

(assert (=> d!503877 (= (++!5002 (++!5002 lt!627405 lt!627404) lt!627396) (++!5002 lt!627405 (++!5002 lt!627404 lt!627396)))))

(declare-fun lt!627674 () Unit!31136)

(declare-fun choose!10034 (List!18444 List!18444 List!18444) Unit!31136)

(assert (=> d!503877 (= lt!627674 (choose!10034 lt!627405 lt!627404 lt!627396))))

(assert (=> d!503877 (= (lemmaConcatAssociativity!1036 lt!627405 lt!627404 lt!627396) lt!627674)))

(declare-fun bs!397762 () Bool)

(assert (= bs!397762 d!503877))

(assert (=> bs!397762 m!2030009))

(assert (=> bs!397762 m!2029995))

(assert (=> bs!397762 m!2030039))

(declare-fun m!2030649 () Bool)

(assert (=> bs!397762 m!2030649))

(assert (=> bs!397762 m!2029995))

(assert (=> bs!397762 m!2030009))

(assert (=> bs!397762 m!2030017))

(assert (=> b!1666554 d!503877))

(declare-fun d!503879 () Bool)

(declare-fun e!1068400 () Bool)

(assert (=> d!503879 e!1068400))

(declare-fun res!747695 () Bool)

(assert (=> d!503879 (=> (not res!747695) (not e!1068400))))

(declare-fun append!567 (Conc!6123 Token!6040) Conc!6123)

(assert (=> d!503879 (= res!747695 (isBalanced!1900 (append!567 (c!271173 (BalanceConc!12191 Empty!6123)) (_1!10451 (v!24774 lt!627412)))))))

(declare-fun lt!627680 () BalanceConc!12190)

(assert (=> d!503879 (= lt!627680 (BalanceConc!12191 (append!567 (c!271173 (BalanceConc!12191 Empty!6123)) (_1!10451 (v!24774 lt!627412)))))))

(assert (=> d!503879 (= (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412))) lt!627680)))

(declare-fun b!1666937 () Bool)

(declare-fun $colon+!122 (List!18445 Token!6040) List!18445)

(assert (=> b!1666937 (= e!1068400 (= (list!7344 lt!627680) ($colon+!122 (list!7344 (BalanceConc!12191 Empty!6123)) (_1!10451 (v!24774 lt!627412)))))))

(assert (= (and d!503879 res!747695) b!1666937))

(declare-fun m!2030665 () Bool)

(assert (=> d!503879 m!2030665))

(assert (=> d!503879 m!2030665))

(declare-fun m!2030667 () Bool)

(assert (=> d!503879 m!2030667))

(declare-fun m!2030671 () Bool)

(assert (=> b!1666937 m!2030671))

(assert (=> b!1666937 m!2030001))

(assert (=> b!1666937 m!2030001))

(declare-fun m!2030677 () Bool)

(assert (=> b!1666937 m!2030677))

(assert (=> b!1666554 d!503879))

(declare-fun d!503883 () Bool)

(assert (=> d!503883 (= (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))) (list!7349 (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))

(declare-fun bs!397763 () Bool)

(assert (= bs!397763 d!503883))

(declare-fun m!2030683 () Bool)

(assert (=> bs!397763 m!2030683))

(assert (=> b!1666554 d!503883))

(declare-fun b!1666956 () Bool)

(declare-fun e!1068410 () Bool)

(declare-fun lt!627686 () List!18445)

(assert (=> b!1666956 (= e!1068410 (or (not (= lt!627393 Nil!18375)) (= lt!627686 lt!627414)))))

(declare-fun b!1666953 () Bool)

(declare-fun e!1068409 () List!18445)

(assert (=> b!1666953 (= e!1068409 lt!627393)))

(declare-fun b!1666954 () Bool)

(assert (=> b!1666954 (= e!1068409 (Cons!18375 (h!23776 lt!627414) (++!5005 (t!152190 lt!627414) lt!627393)))))

(declare-fun b!1666955 () Bool)

(declare-fun res!747704 () Bool)

(assert (=> b!1666955 (=> (not res!747704) (not e!1068410))))

(assert (=> b!1666955 (= res!747704 (= (size!14618 lt!627686) (+ (size!14618 lt!627414) (size!14618 lt!627393))))))

(declare-fun d!503887 () Bool)

(assert (=> d!503887 e!1068410))

(declare-fun res!747703 () Bool)

(assert (=> d!503887 (=> (not res!747703) (not e!1068410))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2564 (List!18445) (InoxSet Token!6040))

(assert (=> d!503887 (= res!747703 (= (content!2564 lt!627686) ((_ map or) (content!2564 lt!627414) (content!2564 lt!627393))))))

(assert (=> d!503887 (= lt!627686 e!1068409)))

(declare-fun c!271293 () Bool)

(assert (=> d!503887 (= c!271293 ((_ is Nil!18375) lt!627414))))

(assert (=> d!503887 (= (++!5005 lt!627414 lt!627393) lt!627686)))

(assert (= (and d!503887 c!271293) b!1666953))

(assert (= (and d!503887 (not c!271293)) b!1666954))

(assert (= (and d!503887 res!747703) b!1666955))

(assert (= (and b!1666955 res!747704) b!1666956))

(declare-fun m!2030707 () Bool)

(assert (=> b!1666954 m!2030707))

(declare-fun m!2030709 () Bool)

(assert (=> b!1666955 m!2030709))

(declare-fun m!2030711 () Bool)

(assert (=> b!1666955 m!2030711))

(declare-fun m!2030713 () Bool)

(assert (=> b!1666955 m!2030713))

(declare-fun m!2030715 () Bool)

(assert (=> d!503887 m!2030715))

(declare-fun m!2030717 () Bool)

(assert (=> d!503887 m!2030717))

(declare-fun m!2030719 () Bool)

(assert (=> d!503887 m!2030719))

(assert (=> b!1666554 d!503887))

(declare-fun d!503891 () Bool)

(assert (=> d!503891 (= (++!5005 (++!5005 lt!627414 lt!627393) lt!627402) (++!5005 lt!627414 (++!5005 lt!627393 lt!627402)))))

(declare-fun lt!627692 () Unit!31136)

(declare-fun choose!10035 (List!18445 List!18445 List!18445) Unit!31136)

(assert (=> d!503891 (= lt!627692 (choose!10035 lt!627414 lt!627393 lt!627402))))

(assert (=> d!503891 (= (lemmaConcatAssociativity!1037 lt!627414 lt!627393 lt!627402) lt!627692)))

(declare-fun bs!397764 () Bool)

(assert (= bs!397764 d!503891))

(declare-fun m!2030729 () Bool)

(assert (=> bs!397764 m!2030729))

(assert (=> bs!397764 m!2029999))

(assert (=> bs!397764 m!2029999))

(assert (=> bs!397764 m!2030047))

(assert (=> bs!397764 m!2030025))

(assert (=> bs!397764 m!2030025))

(assert (=> bs!397764 m!2030027))

(assert (=> b!1666554 d!503891))

(declare-fun b!1666975 () Bool)

(declare-fun e!1068421 () List!18444)

(assert (=> b!1666975 (= e!1068421 (Cons!18374 (h!23775 (list!7347 (BalanceConc!12189 Empty!6122))) (++!5002 (t!152189 (list!7347 (BalanceConc!12189 Empty!6122))) (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))

(declare-fun b!1666976 () Bool)

(declare-fun res!747719 () Bool)

(declare-fun e!1068422 () Bool)

(assert (=> b!1666976 (=> (not res!747719) (not e!1068422))))

(declare-fun lt!627695 () List!18444)

(assert (=> b!1666976 (= res!747719 (= (size!14615 lt!627695) (+ (size!14615 (list!7347 (BalanceConc!12189 Empty!6122))) (size!14615 (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))))

(declare-fun d!503895 () Bool)

(assert (=> d!503895 e!1068422))

(declare-fun res!747718 () Bool)

(assert (=> d!503895 (=> (not res!747718) (not e!1068422))))

(declare-fun content!2565 (List!18444) (InoxSet C!9304))

(assert (=> d!503895 (= res!747718 (= (content!2565 lt!627695) ((_ map or) (content!2565 (list!7347 (BalanceConc!12189 Empty!6122))) (content!2565 (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))))

(assert (=> d!503895 (= lt!627695 e!1068421)))

(declare-fun c!271297 () Bool)

(assert (=> d!503895 (= c!271297 ((_ is Nil!18374) (list!7347 (BalanceConc!12189 Empty!6122))))))

(assert (=> d!503895 (= (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))) lt!627695)))

(declare-fun b!1666977 () Bool)

(assert (=> b!1666977 (= e!1068422 (or (not (= (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))) Nil!18374)) (= lt!627695 (list!7347 (BalanceConc!12189 Empty!6122)))))))

(declare-fun b!1666974 () Bool)

(assert (=> b!1666974 (= e!1068421 (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))

(assert (= (and d!503895 c!271297) b!1666974))

(assert (= (and d!503895 (not c!271297)) b!1666975))

(assert (= (and d!503895 res!747718) b!1666976))

(assert (= (and b!1666976 res!747719) b!1666977))

(assert (=> b!1666975 m!2029993))

(declare-fun m!2030737 () Bool)

(assert (=> b!1666975 m!2030737))

(declare-fun m!2030739 () Bool)

(assert (=> b!1666976 m!2030739))

(assert (=> b!1666976 m!2029831))

(declare-fun m!2030741 () Bool)

(assert (=> b!1666976 m!2030741))

(assert (=> b!1666976 m!2029993))

(declare-fun m!2030743 () Bool)

(assert (=> b!1666976 m!2030743))

(declare-fun m!2030745 () Bool)

(assert (=> d!503895 m!2030745))

(assert (=> d!503895 m!2029831))

(declare-fun m!2030747 () Bool)

(assert (=> d!503895 m!2030747))

(assert (=> d!503895 m!2029993))

(declare-fun m!2030749 () Bool)

(assert (=> d!503895 m!2030749))

(assert (=> b!1666554 d!503895))

(declare-fun lt!627696 () List!18445)

(declare-fun b!1666981 () Bool)

(declare-fun e!1068424 () Bool)

(assert (=> b!1666981 (= e!1068424 (or (not (= (++!5005 lt!627393 lt!627402) Nil!18375)) (= lt!627696 lt!627414)))))

(declare-fun b!1666978 () Bool)

(declare-fun e!1068423 () List!18445)

(assert (=> b!1666978 (= e!1068423 (++!5005 lt!627393 lt!627402))))

(declare-fun b!1666979 () Bool)

(assert (=> b!1666979 (= e!1068423 (Cons!18375 (h!23776 lt!627414) (++!5005 (t!152190 lt!627414) (++!5005 lt!627393 lt!627402))))))

(declare-fun b!1666980 () Bool)

(declare-fun res!747721 () Bool)

(assert (=> b!1666980 (=> (not res!747721) (not e!1068424))))

(assert (=> b!1666980 (= res!747721 (= (size!14618 lt!627696) (+ (size!14618 lt!627414) (size!14618 (++!5005 lt!627393 lt!627402)))))))

(declare-fun d!503901 () Bool)

(assert (=> d!503901 e!1068424))

(declare-fun res!747720 () Bool)

(assert (=> d!503901 (=> (not res!747720) (not e!1068424))))

(assert (=> d!503901 (= res!747720 (= (content!2564 lt!627696) ((_ map or) (content!2564 lt!627414) (content!2564 (++!5005 lt!627393 lt!627402)))))))

(assert (=> d!503901 (= lt!627696 e!1068423)))

(declare-fun c!271298 () Bool)

(assert (=> d!503901 (= c!271298 ((_ is Nil!18375) lt!627414))))

(assert (=> d!503901 (= (++!5005 lt!627414 (++!5005 lt!627393 lt!627402)) lt!627696)))

(assert (= (and d!503901 c!271298) b!1666978))

(assert (= (and d!503901 (not c!271298)) b!1666979))

(assert (= (and d!503901 res!747720) b!1666980))

(assert (= (and b!1666980 res!747721) b!1666981))

(assert (=> b!1666979 m!2029999))

(declare-fun m!2030751 () Bool)

(assert (=> b!1666979 m!2030751))

(declare-fun m!2030753 () Bool)

(assert (=> b!1666980 m!2030753))

(assert (=> b!1666980 m!2030711))

(assert (=> b!1666980 m!2029999))

(declare-fun m!2030755 () Bool)

(assert (=> b!1666980 m!2030755))

(declare-fun m!2030757 () Bool)

(assert (=> d!503901 m!2030757))

(assert (=> d!503901 m!2030717))

(assert (=> d!503901 m!2029999))

(declare-fun m!2030759 () Bool)

(assert (=> d!503901 m!2030759))

(assert (=> b!1666554 d!503901))

(declare-fun d!503903 () Bool)

(declare-fun e!1068444 () Bool)

(assert (=> d!503903 e!1068444))

(declare-fun res!747747 () Bool)

(assert (=> d!503903 (=> (not res!747747) (not e!1068444))))

(declare-fun appendAssocInst!482 (Conc!6122 Conc!6122) Bool)

(assert (=> d!503903 (= res!747747 (appendAssocInst!482 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))

(declare-fun lt!627741 () BalanceConc!12188)

(declare-fun ++!5007 (Conc!6122 Conc!6122) Conc!6122)

(assert (=> d!503903 (= lt!627741 (BalanceConc!12189 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))

(assert (=> d!503903 (= (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))) lt!627741)))

(declare-fun b!1667021 () Bool)

(declare-fun res!747744 () Bool)

(assert (=> b!1667021 (=> (not res!747744) (not e!1068444))))

(declare-fun height!967 (Conc!6122) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1667021 (= res!747744 (<= (height!967 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))) (+ (max!0 (height!967 (c!271171 (BalanceConc!12189 Empty!6122))) (height!967 (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))) 1)))))

(declare-fun b!1667023 () Bool)

(assert (=> b!1667023 (= e!1068444 (= (list!7347 lt!627741) (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (list!7347 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))

(declare-fun b!1667022 () Bool)

(declare-fun res!747745 () Bool)

(assert (=> b!1667022 (=> (not res!747745) (not e!1068444))))

(assert (=> b!1667022 (= res!747745 (>= (height!967 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))) (max!0 (height!967 (c!271171 (BalanceConc!12189 Empty!6122))) (height!967 (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))))

(declare-fun b!1667020 () Bool)

(declare-fun res!747746 () Bool)

(assert (=> b!1667020 (=> (not res!747746) (not e!1068444))))

(assert (=> b!1667020 (= res!747746 (isBalanced!1899 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))

(assert (= (and d!503903 res!747747) b!1667020))

(assert (= (and b!1667020 res!747746) b!1667021))

(assert (= (and b!1667021 res!747744) b!1667022))

(assert (= (and b!1667022 res!747745) b!1667023))

(declare-fun m!2030877 () Bool)

(assert (=> b!1667021 m!2030877))

(declare-fun m!2030881 () Bool)

(assert (=> b!1667021 m!2030881))

(declare-fun m!2030885 () Bool)

(assert (=> b!1667021 m!2030885))

(declare-fun m!2030889 () Bool)

(assert (=> b!1667021 m!2030889))

(declare-fun m!2030891 () Bool)

(assert (=> b!1667021 m!2030891))

(assert (=> b!1667021 m!2030877))

(assert (=> b!1667021 m!2030889))

(assert (=> b!1667021 m!2030885))

(declare-fun m!2030895 () Bool)

(assert (=> d!503903 m!2030895))

(assert (=> d!503903 m!2030877))

(declare-fun m!2030899 () Bool)

(assert (=> b!1667023 m!2030899))

(assert (=> b!1667023 m!2029831))

(assert (=> b!1667023 m!2029991))

(assert (=> b!1667023 m!2029993))

(assert (=> b!1667023 m!2029831))

(assert (=> b!1667023 m!2029993))

(assert (=> b!1667023 m!2030041))

(assert (=> b!1667020 m!2030877))

(assert (=> b!1667020 m!2030877))

(declare-fun m!2030901 () Bool)

(assert (=> b!1667020 m!2030901))

(assert (=> b!1667022 m!2030877))

(assert (=> b!1667022 m!2030881))

(assert (=> b!1667022 m!2030885))

(assert (=> b!1667022 m!2030889))

(assert (=> b!1667022 m!2030891))

(assert (=> b!1667022 m!2030877))

(assert (=> b!1667022 m!2030889))

(assert (=> b!1667022 m!2030885))

(assert (=> b!1666554 d!503903))

(declare-fun e!1068450 () Bool)

(declare-fun b!1667034 () Bool)

(declare-fun lt!627745 () List!18445)

(assert (=> b!1667034 (= e!1068450 (or (not (= lt!627402 Nil!18375)) (= lt!627745 lt!627393)))))

(declare-fun b!1667031 () Bool)

(declare-fun e!1068449 () List!18445)

(assert (=> b!1667031 (= e!1068449 lt!627402)))

(declare-fun b!1667032 () Bool)

(assert (=> b!1667032 (= e!1068449 (Cons!18375 (h!23776 lt!627393) (++!5005 (t!152190 lt!627393) lt!627402)))))

(declare-fun b!1667033 () Bool)

(declare-fun res!747752 () Bool)

(assert (=> b!1667033 (=> (not res!747752) (not e!1068450))))

(assert (=> b!1667033 (= res!747752 (= (size!14618 lt!627745) (+ (size!14618 lt!627393) (size!14618 lt!627402))))))

(declare-fun d!503915 () Bool)

(assert (=> d!503915 e!1068450))

(declare-fun res!747751 () Bool)

(assert (=> d!503915 (=> (not res!747751) (not e!1068450))))

(assert (=> d!503915 (= res!747751 (= (content!2564 lt!627745) ((_ map or) (content!2564 lt!627393) (content!2564 lt!627402))))))

(assert (=> d!503915 (= lt!627745 e!1068449)))

(declare-fun c!271312 () Bool)

(assert (=> d!503915 (= c!271312 ((_ is Nil!18375) lt!627393))))

(assert (=> d!503915 (= (++!5005 lt!627393 lt!627402) lt!627745)))

(assert (= (and d!503915 c!271312) b!1667031))

(assert (= (and d!503915 (not c!271312)) b!1667032))

(assert (= (and d!503915 res!747751) b!1667033))

(assert (= (and b!1667033 res!747752) b!1667034))

(declare-fun m!2030903 () Bool)

(assert (=> b!1667032 m!2030903))

(declare-fun m!2030907 () Bool)

(assert (=> b!1667033 m!2030907))

(assert (=> b!1667033 m!2030713))

(declare-fun m!2030909 () Bool)

(assert (=> b!1667033 m!2030909))

(declare-fun m!2030911 () Bool)

(assert (=> d!503915 m!2030911))

(assert (=> d!503915 m!2030719))

(declare-fun m!2030913 () Bool)

(assert (=> d!503915 m!2030913))

(assert (=> b!1666554 d!503915))

(declare-fun d!503917 () Bool)

(assert (=> d!503917 (= (list!7347 lt!627394) (list!7349 (c!271171 lt!627394)))))

(declare-fun bs!397766 () Bool)

(assert (= bs!397766 d!503917))

(declare-fun m!2030923 () Bool)

(assert (=> bs!397766 m!2030923))

(assert (=> b!1666554 d!503917))

(declare-fun lt!627746 () List!18445)

(declare-fun e!1068452 () Bool)

(declare-fun b!1667038 () Bool)

(assert (=> b!1667038 (= e!1068452 (or (not (= lt!627402 Nil!18375)) (= lt!627746 (++!5005 lt!627414 lt!627393))))))

(declare-fun b!1667035 () Bool)

(declare-fun e!1068451 () List!18445)

(assert (=> b!1667035 (= e!1068451 lt!627402)))

(declare-fun b!1667036 () Bool)

(assert (=> b!1667036 (= e!1068451 (Cons!18375 (h!23776 (++!5005 lt!627414 lt!627393)) (++!5005 (t!152190 (++!5005 lt!627414 lt!627393)) lt!627402)))))

(declare-fun b!1667037 () Bool)

(declare-fun res!747754 () Bool)

(assert (=> b!1667037 (=> (not res!747754) (not e!1068452))))

(assert (=> b!1667037 (= res!747754 (= (size!14618 lt!627746) (+ (size!14618 (++!5005 lt!627414 lt!627393)) (size!14618 lt!627402))))))

(declare-fun d!503919 () Bool)

(assert (=> d!503919 e!1068452))

(declare-fun res!747753 () Bool)

(assert (=> d!503919 (=> (not res!747753) (not e!1068452))))

(assert (=> d!503919 (= res!747753 (= (content!2564 lt!627746) ((_ map or) (content!2564 (++!5005 lt!627414 lt!627393)) (content!2564 lt!627402))))))

(assert (=> d!503919 (= lt!627746 e!1068451)))

(declare-fun c!271313 () Bool)

(assert (=> d!503919 (= c!271313 ((_ is Nil!18375) (++!5005 lt!627414 lt!627393)))))

(assert (=> d!503919 (= (++!5005 (++!5005 lt!627414 lt!627393) lt!627402) lt!627746)))

(assert (= (and d!503919 c!271313) b!1667035))

(assert (= (and d!503919 (not c!271313)) b!1667036))

(assert (= (and d!503919 res!747753) b!1667037))

(assert (= (and b!1667037 res!747754) b!1667038))

(declare-fun m!2030935 () Bool)

(assert (=> b!1667036 m!2030935))

(declare-fun m!2030937 () Bool)

(assert (=> b!1667037 m!2030937))

(assert (=> b!1667037 m!2030025))

(declare-fun m!2030939 () Bool)

(assert (=> b!1667037 m!2030939))

(assert (=> b!1667037 m!2030909))

(declare-fun m!2030941 () Bool)

(assert (=> d!503919 m!2030941))

(assert (=> d!503919 m!2030025))

(declare-fun m!2030943 () Bool)

(assert (=> d!503919 m!2030943))

(assert (=> d!503919 m!2030913))

(assert (=> b!1666554 d!503919))

(declare-fun b!1667085 () Bool)

(declare-fun e!1068476 () Bool)

(declare-fun lt!627762 () tuple2!18090)

(assert (=> b!1667085 (= e!1068476 (= (list!7347 (_2!10447 lt!627762)) (list!7347 (_2!10451 (v!24774 lt!627412)))))))

(declare-fun b!1667086 () Bool)

(declare-fun e!1068477 () tuple2!18090)

(assert (=> b!1667086 (= e!1068477 (tuple2!18091 (BalanceConc!12191 Empty!6123) (_2!10451 (v!24774 lt!627412))))))

(declare-fun b!1667087 () Bool)

(declare-fun e!1068474 () Bool)

(assert (=> b!1667087 (= e!1068474 (not (isEmpty!11434 (_1!10447 lt!627762))))))

(declare-fun b!1667088 () Bool)

(assert (=> b!1667088 (= e!1068476 e!1068474)))

(declare-fun res!747783 () Bool)

(assert (=> b!1667088 (= res!747783 (< (size!14614 (_2!10447 lt!627762)) (size!14614 (_2!10451 (v!24774 lt!627412)))))))

(assert (=> b!1667088 (=> (not res!747783) (not e!1068474))))

(declare-fun b!1667089 () Bool)

(declare-fun res!747785 () Bool)

(declare-fun e!1068475 () Bool)

(assert (=> b!1667089 (=> (not res!747785) (not e!1068475))))

(assert (=> b!1667089 (= res!747785 (= (list!7344 (_1!10447 lt!627762)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (_2!10451 (v!24774 lt!627412)))))))))

(declare-fun b!1667090 () Bool)

(declare-fun lt!627763 () tuple2!18090)

(declare-fun lt!627761 () Option!3526)

(assert (=> b!1667090 (= e!1068477 (tuple2!18091 (prepend!820 (_1!10447 lt!627763) (_1!10451 (v!24774 lt!627761))) (_2!10447 lt!627763)))))

(assert (=> b!1667090 (= lt!627763 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627761))))))

(declare-fun d!503925 () Bool)

(assert (=> d!503925 e!1068475))

(declare-fun res!747784 () Bool)

(assert (=> d!503925 (=> (not res!747784) (not e!1068475))))

(assert (=> d!503925 (= res!747784 e!1068476)))

(declare-fun c!271326 () Bool)

(assert (=> d!503925 (= c!271326 (> (size!14616 (_1!10447 lt!627762)) 0))))

(assert (=> d!503925 (= lt!627762 e!1068477)))

(declare-fun c!271327 () Bool)

(assert (=> d!503925 (= c!271327 ((_ is Some!3525) lt!627761))))

(assert (=> d!503925 (= lt!627761 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627412))))))

(assert (=> d!503925 (= (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627412))) lt!627762)))

(declare-fun b!1667091 () Bool)

(assert (=> b!1667091 (= e!1068475 (= (list!7347 (_2!10447 lt!627762)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (_2!10451 (v!24774 lt!627412)))))))))

(assert (= (and d!503925 c!271327) b!1667090))

(assert (= (and d!503925 (not c!271327)) b!1667086))

(assert (= (and d!503925 c!271326) b!1667088))

(assert (= (and d!503925 (not c!271326)) b!1667085))

(assert (= (and b!1667088 res!747783) b!1667087))

(assert (= (and d!503925 res!747784) b!1667089))

(assert (= (and b!1667089 res!747785) b!1667091))

(declare-fun m!2030999 () Bool)

(assert (=> b!1667091 m!2030999))

(assert (=> b!1667091 m!2030043))

(assert (=> b!1667091 m!2030043))

(declare-fun m!2031001 () Bool)

(assert (=> b!1667091 m!2031001))

(assert (=> b!1667085 m!2030999))

(assert (=> b!1667085 m!2030043))

(declare-fun m!2031003 () Bool)

(assert (=> b!1667089 m!2031003))

(assert (=> b!1667089 m!2030043))

(assert (=> b!1667089 m!2030043))

(assert (=> b!1667089 m!2031001))

(declare-fun m!2031005 () Bool)

(assert (=> b!1667090 m!2031005))

(declare-fun m!2031007 () Bool)

(assert (=> b!1667090 m!2031007))

(declare-fun m!2031009 () Bool)

(assert (=> b!1667088 m!2031009))

(declare-fun m!2031011 () Bool)

(assert (=> b!1667088 m!2031011))

(declare-fun m!2031013 () Bool)

(assert (=> b!1667087 m!2031013))

(declare-fun m!2031015 () Bool)

(assert (=> d!503925 m!2031015))

(assert (=> d!503925 m!2030585))

(assert (=> b!1666554 d!503925))

(declare-fun d!503935 () Bool)

(declare-fun lt!627764 () BalanceConc!12188)

(assert (=> d!503935 (= (list!7347 lt!627764) (originalCharacters!4051 (_1!10451 (v!24774 lt!627412))))))

(assert (=> d!503935 (= lt!627764 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412))))) (value!101927 (_1!10451 (v!24774 lt!627412)))))))

(assert (=> d!503935 (= (charsOf!1886 (_1!10451 (v!24774 lt!627412))) lt!627764)))

(declare-fun b_lambda!52337 () Bool)

(assert (=> (not b_lambda!52337) (not d!503935)))

(declare-fun t!152258 () Bool)

(declare-fun tb!95575 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152258) tb!95575))

(declare-fun b!1667092 () Bool)

(declare-fun e!1068478 () Bool)

(declare-fun tp!480939 () Bool)

(assert (=> b!1667092 (= e!1068478 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412))))) (value!101927 (_1!10451 (v!24774 lt!627412)))))) tp!480939))))

(declare-fun result!115490 () Bool)

(assert (=> tb!95575 (= result!115490 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412))))) (value!101927 (_1!10451 (v!24774 lt!627412))))) e!1068478))))

(assert (= tb!95575 b!1667092))

(declare-fun m!2031017 () Bool)

(assert (=> b!1667092 m!2031017))

(declare-fun m!2031019 () Bool)

(assert (=> tb!95575 m!2031019))

(assert (=> d!503935 t!152258))

(declare-fun b_and!118445 () Bool)

(assert (= b_and!118421 (and (=> t!152258 result!115490) b_and!118445)))

(declare-fun tb!95577 () Bool)

(declare-fun t!152260 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152260) tb!95577))

(declare-fun result!115492 () Bool)

(assert (= result!115492 result!115490))

(assert (=> d!503935 t!152260))

(declare-fun b_and!118447 () Bool)

(assert (= b_and!118435 (and (=> t!152260 result!115492) b_and!118447)))

(declare-fun t!152262 () Bool)

(declare-fun tb!95579 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152262) tb!95579))

(declare-fun result!115494 () Bool)

(assert (= result!115494 result!115490))

(assert (=> d!503935 t!152262))

(declare-fun b_and!118449 () Bool)

(assert (= b_and!118431 (and (=> t!152262 result!115494) b_and!118449)))

(declare-fun tb!95581 () Bool)

(declare-fun t!152264 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152264) tb!95581))

(declare-fun result!115496 () Bool)

(assert (= result!115496 result!115490))

(assert (=> d!503935 t!152264))

(declare-fun b_and!118451 () Bool)

(assert (= b_and!118423 (and (=> t!152264 result!115496) b_and!118451)))

(declare-fun tb!95583 () Bool)

(declare-fun t!152266 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152266) tb!95583))

(declare-fun result!115498 () Bool)

(assert (= result!115498 result!115490))

(assert (=> d!503935 t!152266))

(declare-fun b_and!118453 () Bool)

(assert (= b_and!118425 (and (=> t!152266 result!115498) b_and!118453)))

(declare-fun tb!95585 () Bool)

(declare-fun t!152268 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152268) tb!95585))

(declare-fun result!115500 () Bool)

(assert (= result!115500 result!115490))

(assert (=> d!503935 t!152268))

(declare-fun b_and!118455 () Bool)

(assert (= b_and!118427 (and (=> t!152268 result!115500) b_and!118455)))

(declare-fun m!2031021 () Bool)

(assert (=> d!503935 m!2031021))

(declare-fun m!2031023 () Bool)

(assert (=> d!503935 m!2031023))

(assert (=> b!1666554 d!503935))

(declare-fun b!1667094 () Bool)

(declare-fun e!1068479 () List!18444)

(assert (=> b!1667094 (= e!1068479 (Cons!18374 (h!23775 (++!5002 lt!627405 lt!627404)) (++!5002 (t!152189 (++!5002 lt!627405 lt!627404)) lt!627396)))))

(declare-fun b!1667095 () Bool)

(declare-fun res!747787 () Bool)

(declare-fun e!1068480 () Bool)

(assert (=> b!1667095 (=> (not res!747787) (not e!1068480))))

(declare-fun lt!627765 () List!18444)

(assert (=> b!1667095 (= res!747787 (= (size!14615 lt!627765) (+ (size!14615 (++!5002 lt!627405 lt!627404)) (size!14615 lt!627396))))))

(declare-fun d!503937 () Bool)

(assert (=> d!503937 e!1068480))

(declare-fun res!747786 () Bool)

(assert (=> d!503937 (=> (not res!747786) (not e!1068480))))

(assert (=> d!503937 (= res!747786 (= (content!2565 lt!627765) ((_ map or) (content!2565 (++!5002 lt!627405 lt!627404)) (content!2565 lt!627396))))))

(assert (=> d!503937 (= lt!627765 e!1068479)))

(declare-fun c!271328 () Bool)

(assert (=> d!503937 (= c!271328 ((_ is Nil!18374) (++!5002 lt!627405 lt!627404)))))

(assert (=> d!503937 (= (++!5002 (++!5002 lt!627405 lt!627404) lt!627396) lt!627765)))

(declare-fun b!1667096 () Bool)

(assert (=> b!1667096 (= e!1068480 (or (not (= lt!627396 Nil!18374)) (= lt!627765 (++!5002 lt!627405 lt!627404))))))

(declare-fun b!1667093 () Bool)

(assert (=> b!1667093 (= e!1068479 lt!627396)))

(assert (= (and d!503937 c!271328) b!1667093))

(assert (= (and d!503937 (not c!271328)) b!1667094))

(assert (= (and d!503937 res!747786) b!1667095))

(assert (= (and b!1667095 res!747787) b!1667096))

(declare-fun m!2031025 () Bool)

(assert (=> b!1667094 m!2031025))

(declare-fun m!2031027 () Bool)

(assert (=> b!1667095 m!2031027))

(assert (=> b!1667095 m!2030009))

(declare-fun m!2031029 () Bool)

(assert (=> b!1667095 m!2031029))

(declare-fun m!2031031 () Bool)

(assert (=> b!1667095 m!2031031))

(declare-fun m!2031033 () Bool)

(assert (=> d!503937 m!2031033))

(assert (=> d!503937 m!2030009))

(declare-fun m!2031035 () Bool)

(assert (=> d!503937 m!2031035))

(declare-fun m!2031037 () Bool)

(assert (=> d!503937 m!2031037))

(assert (=> b!1666554 d!503937))

(declare-fun b!1667097 () Bool)

(declare-fun e!1068483 () Bool)

(declare-fun lt!627767 () tuple2!18090)

(assert (=> b!1667097 (= e!1068483 (= (list!7347 (_2!10447 lt!627767)) (list!7347 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))

(declare-fun b!1667098 () Bool)

(declare-fun e!1068484 () tuple2!18090)

(assert (=> b!1667098 (= e!1068484 (tuple2!18091 (BalanceConc!12191 Empty!6123) (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))

(declare-fun b!1667099 () Bool)

(declare-fun e!1068481 () Bool)

(assert (=> b!1667099 (= e!1068481 (not (isEmpty!11434 (_1!10447 lt!627767))))))

(declare-fun b!1667100 () Bool)

(assert (=> b!1667100 (= e!1068483 e!1068481)))

(declare-fun res!747788 () Bool)

(assert (=> b!1667100 (= res!747788 (< (size!14614 (_2!10447 lt!627767)) (size!14614 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))

(assert (=> b!1667100 (=> (not res!747788) (not e!1068481))))

(declare-fun b!1667101 () Bool)

(declare-fun res!747790 () Bool)

(declare-fun e!1068482 () Bool)

(assert (=> b!1667101 (=> (not res!747790) (not e!1068482))))

(assert (=> b!1667101 (= res!747790 (= (list!7344 (_1!10447 lt!627767)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))))

(declare-fun b!1667102 () Bool)

(declare-fun lt!627768 () tuple2!18090)

(declare-fun lt!627766 () Option!3526)

(assert (=> b!1667102 (= e!1068484 (tuple2!18091 (prepend!820 (_1!10447 lt!627768) (_1!10451 (v!24774 lt!627766))) (_2!10447 lt!627768)))))

(assert (=> b!1667102 (= lt!627768 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627766))))))

(declare-fun d!503939 () Bool)

(assert (=> d!503939 e!1068482))

(declare-fun res!747789 () Bool)

(assert (=> d!503939 (=> (not res!747789) (not e!1068482))))

(assert (=> d!503939 (= res!747789 e!1068483)))

(declare-fun c!271329 () Bool)

(assert (=> d!503939 (= c!271329 (> (size!14616 (_1!10447 lt!627767)) 0))))

(assert (=> d!503939 (= lt!627767 e!1068484)))

(declare-fun c!271330 () Bool)

(assert (=> d!503939 (= c!271330 ((_ is Some!3525) lt!627766))))

(assert (=> d!503939 (= lt!627766 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412))))))))

(assert (=> d!503939 (= (lexRec!380 thiss!17113 rules!1846 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412))))) lt!627767)))

(declare-fun b!1667103 () Bool)

(assert (=> b!1667103 (= e!1068482 (= (list!7347 (_2!10447 lt!627767)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (_1!10451 (v!24774 lt!627412)))))))))))

(assert (= (and d!503939 c!271330) b!1667102))

(assert (= (and d!503939 (not c!271330)) b!1667098))

(assert (= (and d!503939 c!271329) b!1667100))

(assert (= (and d!503939 (not c!271329)) b!1667097))

(assert (= (and b!1667100 res!747788) b!1667099))

(assert (= (and d!503939 res!747789) b!1667101))

(assert (= (and b!1667101 res!747790) b!1667103))

(declare-fun m!2031039 () Bool)

(assert (=> b!1667103 m!2031039))

(assert (=> b!1667103 m!2029997))

(declare-fun m!2031041 () Bool)

(assert (=> b!1667103 m!2031041))

(assert (=> b!1667103 m!2031041))

(declare-fun m!2031043 () Bool)

(assert (=> b!1667103 m!2031043))

(assert (=> b!1667097 m!2031039))

(assert (=> b!1667097 m!2029997))

(assert (=> b!1667097 m!2031041))

(declare-fun m!2031045 () Bool)

(assert (=> b!1667101 m!2031045))

(assert (=> b!1667101 m!2029997))

(assert (=> b!1667101 m!2031041))

(assert (=> b!1667101 m!2031041))

(assert (=> b!1667101 m!2031043))

(declare-fun m!2031047 () Bool)

(assert (=> b!1667102 m!2031047))

(declare-fun m!2031049 () Bool)

(assert (=> b!1667102 m!2031049))

(declare-fun m!2031051 () Bool)

(assert (=> b!1667100 m!2031051))

(assert (=> b!1667100 m!2029997))

(declare-fun m!2031053 () Bool)

(assert (=> b!1667100 m!2031053))

(declare-fun m!2031055 () Bool)

(assert (=> b!1667099 m!2031055))

(declare-fun m!2031057 () Bool)

(assert (=> d!503939 m!2031057))

(assert (=> d!503939 m!2029997))

(declare-fun m!2031059 () Bool)

(assert (=> d!503939 m!2031059))

(assert (=> b!1666554 d!503939))

(declare-fun b!1667105 () Bool)

(declare-fun e!1068485 () List!18444)

(assert (=> b!1667105 (= e!1068485 (Cons!18374 (h!23775 lt!627405) (++!5002 (t!152189 lt!627405) lt!627404)))))

(declare-fun b!1667106 () Bool)

(declare-fun res!747792 () Bool)

(declare-fun e!1068486 () Bool)

(assert (=> b!1667106 (=> (not res!747792) (not e!1068486))))

(declare-fun lt!627769 () List!18444)

(assert (=> b!1667106 (= res!747792 (= (size!14615 lt!627769) (+ (size!14615 lt!627405) (size!14615 lt!627404))))))

(declare-fun d!503941 () Bool)

(assert (=> d!503941 e!1068486))

(declare-fun res!747791 () Bool)

(assert (=> d!503941 (=> (not res!747791) (not e!1068486))))

(assert (=> d!503941 (= res!747791 (= (content!2565 lt!627769) ((_ map or) (content!2565 lt!627405) (content!2565 lt!627404))))))

(assert (=> d!503941 (= lt!627769 e!1068485)))

(declare-fun c!271331 () Bool)

(assert (=> d!503941 (= c!271331 ((_ is Nil!18374) lt!627405))))

(assert (=> d!503941 (= (++!5002 lt!627405 lt!627404) lt!627769)))

(declare-fun b!1667107 () Bool)

(assert (=> b!1667107 (= e!1068486 (or (not (= lt!627404 Nil!18374)) (= lt!627769 lt!627405)))))

(declare-fun b!1667104 () Bool)

(assert (=> b!1667104 (= e!1068485 lt!627404)))

(assert (= (and d!503941 c!271331) b!1667104))

(assert (= (and d!503941 (not c!271331)) b!1667105))

(assert (= (and d!503941 res!747791) b!1667106))

(assert (= (and b!1667106 res!747792) b!1667107))

(declare-fun m!2031061 () Bool)

(assert (=> b!1667105 m!2031061))

(declare-fun m!2031063 () Bool)

(assert (=> b!1667106 m!2031063))

(declare-fun m!2031065 () Bool)

(assert (=> b!1667106 m!2031065))

(declare-fun m!2031067 () Bool)

(assert (=> b!1667106 m!2031067))

(declare-fun m!2031069 () Bool)

(assert (=> d!503941 m!2031069))

(declare-fun m!2031071 () Bool)

(assert (=> d!503941 m!2031071))

(declare-fun m!2031073 () Bool)

(assert (=> d!503941 m!2031073))

(assert (=> b!1666554 d!503941))

(declare-fun d!503943 () Bool)

(declare-fun e!1068489 () Bool)

(assert (=> d!503943 e!1068489))

(declare-fun res!747795 () Bool)

(assert (=> d!503943 (=> res!747795 e!1068489)))

(declare-fun lt!627772 () Bool)

(assert (=> d!503943 (= res!747795 (not lt!627772))))

(declare-fun drop!940 (List!18444 Int) List!18444)

(assert (=> d!503943 (= lt!627772 (= lt!627387 (drop!940 (++!5002 lt!627399 lt!627387) (- (size!14615 (++!5002 lt!627399 lt!627387)) (size!14615 lt!627387)))))))

(assert (=> d!503943 (= (isSuffix!426 lt!627387 (++!5002 lt!627399 lt!627387)) lt!627772)))

(declare-fun b!1667110 () Bool)

(assert (=> b!1667110 (= e!1068489 (>= (size!14615 (++!5002 lt!627399 lt!627387)) (size!14615 lt!627387)))))

(assert (= (and d!503943 (not res!747795)) b!1667110))

(assert (=> d!503943 m!2030029))

(declare-fun m!2031075 () Bool)

(assert (=> d!503943 m!2031075))

(declare-fun m!2031077 () Bool)

(assert (=> d!503943 m!2031077))

(assert (=> d!503943 m!2030029))

(declare-fun m!2031079 () Bool)

(assert (=> d!503943 m!2031079))

(assert (=> b!1667110 m!2030029))

(assert (=> b!1667110 m!2031075))

(assert (=> b!1667110 m!2031077))

(assert (=> b!1666554 d!503943))

(declare-fun d!503945 () Bool)

(assert (=> d!503945 (= (list!7344 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412)))) (list!7348 (c!271173 (append!565 (BalanceConc!12191 Empty!6123) (_1!10451 (v!24774 lt!627412))))))))

(declare-fun bs!397768 () Bool)

(assert (= bs!397768 d!503945))

(declare-fun m!2031081 () Bool)

(assert (=> bs!397768 m!2031081))

(assert (=> b!1666554 d!503945))

(declare-fun d!503947 () Bool)

(assert (=> d!503947 (= (list!7347 (_2!10447 lt!627410)) (list!7349 (c!271171 (_2!10447 lt!627410))))))

(declare-fun bs!397769 () Bool)

(assert (= bs!397769 d!503947))

(declare-fun m!2031083 () Bool)

(assert (=> bs!397769 m!2031083))

(assert (=> b!1666554 d!503947))

(declare-fun b!1667112 () Bool)

(declare-fun e!1068490 () List!18444)

(assert (=> b!1667112 (= e!1068490 (Cons!18374 (h!23775 lt!627399) (++!5002 (t!152189 lt!627399) lt!627387)))))

(declare-fun b!1667113 () Bool)

(declare-fun res!747797 () Bool)

(declare-fun e!1068491 () Bool)

(assert (=> b!1667113 (=> (not res!747797) (not e!1068491))))

(declare-fun lt!627773 () List!18444)

(assert (=> b!1667113 (= res!747797 (= (size!14615 lt!627773) (+ (size!14615 lt!627399) (size!14615 lt!627387))))))

(declare-fun d!503949 () Bool)

(assert (=> d!503949 e!1068491))

(declare-fun res!747796 () Bool)

(assert (=> d!503949 (=> (not res!747796) (not e!1068491))))

(assert (=> d!503949 (= res!747796 (= (content!2565 lt!627773) ((_ map or) (content!2565 lt!627399) (content!2565 lt!627387))))))

(assert (=> d!503949 (= lt!627773 e!1068490)))

(declare-fun c!271332 () Bool)

(assert (=> d!503949 (= c!271332 ((_ is Nil!18374) lt!627399))))

(assert (=> d!503949 (= (++!5002 lt!627399 lt!627387) lt!627773)))

(declare-fun b!1667114 () Bool)

(assert (=> b!1667114 (= e!1068491 (or (not (= lt!627387 Nil!18374)) (= lt!627773 lt!627399)))))

(declare-fun b!1667111 () Bool)

(assert (=> b!1667111 (= e!1068490 lt!627387)))

(assert (= (and d!503949 c!271332) b!1667111))

(assert (= (and d!503949 (not c!271332)) b!1667112))

(assert (= (and d!503949 res!747796) b!1667113))

(assert (= (and b!1667113 res!747797) b!1667114))

(declare-fun m!2031085 () Bool)

(assert (=> b!1667112 m!2031085))

(declare-fun m!2031087 () Bool)

(assert (=> b!1667113 m!2031087))

(declare-fun m!2031089 () Bool)

(assert (=> b!1667113 m!2031089))

(assert (=> b!1667113 m!2031077))

(declare-fun m!2031091 () Bool)

(assert (=> d!503949 m!2031091))

(declare-fun m!2031093 () Bool)

(assert (=> d!503949 m!2031093))

(declare-fun m!2031095 () Bool)

(assert (=> d!503949 m!2031095))

(assert (=> b!1666554 d!503949))

(declare-fun e!1068494 () Bool)

(declare-fun lt!627775 () tuple2!18090)

(declare-fun b!1667115 () Bool)

(assert (=> b!1667115 (= e!1068494 (= (list!7347 (_2!10447 lt!627775)) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(declare-fun b!1667116 () Bool)

(declare-fun e!1068495 () tuple2!18090)

(assert (=> b!1667116 (= e!1068495 (tuple2!18091 (BalanceConc!12191 Empty!6123) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun b!1667117 () Bool)

(declare-fun e!1068492 () Bool)

(assert (=> b!1667117 (= e!1068492 (not (isEmpty!11434 (_1!10447 lt!627775))))))

(declare-fun b!1667118 () Bool)

(assert (=> b!1667118 (= e!1068494 e!1068492)))

(declare-fun res!747798 () Bool)

(assert (=> b!1667118 (= res!747798 (< (size!14614 (_2!10447 lt!627775)) (size!14614 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> b!1667118 (=> (not res!747798) (not e!1068492))))

(declare-fun b!1667119 () Bool)

(declare-fun res!747800 () Bool)

(declare-fun e!1068493 () Bool)

(assert (=> b!1667119 (=> (not res!747800) (not e!1068493))))

(assert (=> b!1667119 (= res!747800 (= (list!7344 (_1!10447 lt!627775)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun b!1667120 () Bool)

(declare-fun lt!627776 () tuple2!18090)

(declare-fun lt!627774 () Option!3526)

(assert (=> b!1667120 (= e!1068495 (tuple2!18091 (prepend!820 (_1!10447 lt!627776) (_1!10451 (v!24774 lt!627774))) (_2!10447 lt!627776)))))

(assert (=> b!1667120 (= lt!627776 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627774))))))

(declare-fun d!503951 () Bool)

(assert (=> d!503951 e!1068493))

(declare-fun res!747799 () Bool)

(assert (=> d!503951 (=> (not res!747799) (not e!1068493))))

(assert (=> d!503951 (= res!747799 e!1068494)))

(declare-fun c!271333 () Bool)

(assert (=> d!503951 (= c!271333 (> (size!14616 (_1!10447 lt!627775)) 0))))

(assert (=> d!503951 (= lt!627775 e!1068495)))

(declare-fun c!271334 () Bool)

(assert (=> d!503951 (= c!271334 ((_ is Some!3525) lt!627774))))

(assert (=> d!503951 (= lt!627774 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!503951 (= (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) lt!627775)))

(declare-fun b!1667121 () Bool)

(assert (=> b!1667121 (= e!1068493 (= (list!7347 (_2!10447 lt!627775)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (= (and d!503951 c!271334) b!1667120))

(assert (= (and d!503951 (not c!271334)) b!1667116))

(assert (= (and d!503951 c!271333) b!1667118))

(assert (= (and d!503951 (not c!271333)) b!1667115))

(assert (= (and b!1667118 res!747798) b!1667117))

(assert (= (and d!503951 res!747799) b!1667119))

(assert (= (and b!1667119 res!747800) b!1667121))

(declare-fun m!2031097 () Bool)

(assert (=> b!1667121 m!2031097))

(assert (=> b!1667121 m!2029531))

(assert (=> b!1667121 m!2029705))

(assert (=> b!1667121 m!2029705))

(assert (=> b!1667121 m!2029707))

(assert (=> b!1667115 m!2031097))

(assert (=> b!1667115 m!2029531))

(assert (=> b!1667115 m!2029705))

(declare-fun m!2031099 () Bool)

(assert (=> b!1667119 m!2031099))

(assert (=> b!1667119 m!2029531))

(assert (=> b!1667119 m!2029705))

(assert (=> b!1667119 m!2029705))

(assert (=> b!1667119 m!2029707))

(declare-fun m!2031101 () Bool)

(assert (=> b!1667120 m!2031101))

(declare-fun m!2031103 () Bool)

(assert (=> b!1667120 m!2031103))

(declare-fun m!2031105 () Bool)

(assert (=> b!1667118 m!2031105))

(assert (=> b!1667118 m!2029531))

(assert (=> b!1667118 m!2029697))

(declare-fun m!2031107 () Bool)

(assert (=> b!1667117 m!2031107))

(declare-fun m!2031109 () Bool)

(assert (=> d!503951 m!2031109))

(assert (=> d!503951 m!2029531))

(assert (=> d!503951 m!2030005))

(assert (=> b!1666554 d!503951))

(declare-fun b!1667123 () Bool)

(declare-fun e!1068496 () List!18444)

(assert (=> b!1667123 (= e!1068496 (Cons!18374 (h!23775 lt!627405) (++!5002 (t!152189 lt!627405) (++!5002 lt!627404 lt!627396))))))

(declare-fun b!1667124 () Bool)

(declare-fun res!747802 () Bool)

(declare-fun e!1068497 () Bool)

(assert (=> b!1667124 (=> (not res!747802) (not e!1068497))))

(declare-fun lt!627777 () List!18444)

(assert (=> b!1667124 (= res!747802 (= (size!14615 lt!627777) (+ (size!14615 lt!627405) (size!14615 (++!5002 lt!627404 lt!627396)))))))

(declare-fun d!503953 () Bool)

(assert (=> d!503953 e!1068497))

(declare-fun res!747801 () Bool)

(assert (=> d!503953 (=> (not res!747801) (not e!1068497))))

(assert (=> d!503953 (= res!747801 (= (content!2565 lt!627777) ((_ map or) (content!2565 lt!627405) (content!2565 (++!5002 lt!627404 lt!627396)))))))

(assert (=> d!503953 (= lt!627777 e!1068496)))

(declare-fun c!271335 () Bool)

(assert (=> d!503953 (= c!271335 ((_ is Nil!18374) lt!627405))))

(assert (=> d!503953 (= (++!5002 lt!627405 (++!5002 lt!627404 lt!627396)) lt!627777)))

(declare-fun b!1667125 () Bool)

(assert (=> b!1667125 (= e!1068497 (or (not (= (++!5002 lt!627404 lt!627396) Nil!18374)) (= lt!627777 lt!627405)))))

(declare-fun b!1667122 () Bool)

(assert (=> b!1667122 (= e!1068496 (++!5002 lt!627404 lt!627396))))

(assert (= (and d!503953 c!271335) b!1667122))

(assert (= (and d!503953 (not c!271335)) b!1667123))

(assert (= (and d!503953 res!747801) b!1667124))

(assert (= (and b!1667124 res!747802) b!1667125))

(assert (=> b!1667123 m!2029995))

(declare-fun m!2031111 () Bool)

(assert (=> b!1667123 m!2031111))

(declare-fun m!2031113 () Bool)

(assert (=> b!1667124 m!2031113))

(assert (=> b!1667124 m!2031065))

(assert (=> b!1667124 m!2029995))

(declare-fun m!2031115 () Bool)

(assert (=> b!1667124 m!2031115))

(declare-fun m!2031117 () Bool)

(assert (=> d!503953 m!2031117))

(assert (=> d!503953 m!2031071))

(assert (=> d!503953 m!2029995))

(declare-fun m!2031119 () Bool)

(assert (=> d!503953 m!2031119))

(assert (=> b!1666554 d!503953))

(declare-fun b!1667126 () Bool)

(declare-fun lt!627778 () Option!3526)

(declare-fun e!1068503 () Bool)

(assert (=> b!1667126 (= e!1068503 (= (list!7347 (_2!10451 (get!5379 lt!627778))) (_2!10450 (get!5380 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667127 () Bool)

(declare-fun e!1068500 () Bool)

(assert (=> b!1667127 (= e!1068500 e!1068503)))

(declare-fun res!747806 () Bool)

(assert (=> b!1667127 (=> (not res!747806) (not e!1068503))))

(assert (=> b!1667127 (= res!747806 (= (_1!10451 (get!5379 lt!627778)) (_1!10450 (get!5380 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun call!106536 () Option!3526)

(declare-fun bm!106531 () Bool)

(assert (=> bm!106531 (= call!106536 (maxPrefixOneRuleZipperSequence!355 thiss!17113 (h!23777 rules!1846) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun b!1667128 () Bool)

(declare-fun e!1068499 () Option!3526)

(declare-fun lt!627780 () Option!3526)

(declare-fun lt!627782 () Option!3526)

(assert (=> b!1667128 (= e!1068499 (ite (and ((_ is None!3525) lt!627780) ((_ is None!3525) lt!627782)) None!3525 (ite ((_ is None!3525) lt!627782) lt!627780 (ite ((_ is None!3525) lt!627780) lt!627782 (ite (>= (size!14610 (_1!10451 (v!24774 lt!627780))) (size!14610 (_1!10451 (v!24774 lt!627782)))) lt!627780 lt!627782)))))))

(assert (=> b!1667128 (= lt!627780 call!106536)))

(assert (=> b!1667128 (= lt!627782 (maxPrefixZipperSequence!742 thiss!17113 (t!152191 rules!1846) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun b!1667129 () Bool)

(declare-fun res!747805 () Bool)

(declare-fun e!1068502 () Bool)

(assert (=> b!1667129 (=> (not res!747805) (not e!1068502))))

(assert (=> b!1667129 (= res!747805 e!1068500)))

(declare-fun res!747808 () Bool)

(assert (=> b!1667129 (=> res!747808 e!1068500)))

(assert (=> b!1667129 (= res!747808 (not (isDefined!2880 lt!627778)))))

(declare-fun b!1667130 () Bool)

(declare-fun e!1068498 () Bool)

(declare-fun e!1068501 () Bool)

(assert (=> b!1667130 (= e!1068498 e!1068501)))

(declare-fun res!747804 () Bool)

(assert (=> b!1667130 (=> (not res!747804) (not e!1068501))))

(assert (=> b!1667130 (= res!747804 (= (_1!10451 (get!5379 lt!627778)) (_1!10450 (get!5380 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667131 () Bool)

(assert (=> b!1667131 (= e!1068501 (= (list!7347 (_2!10451 (get!5379 lt!627778))) (_2!10450 (get!5380 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667132 () Bool)

(assert (=> b!1667132 (= e!1068499 call!106536)))

(declare-fun d!503955 () Bool)

(assert (=> d!503955 e!1068502))

(declare-fun res!747803 () Bool)

(assert (=> d!503955 (=> (not res!747803) (not e!1068502))))

(assert (=> d!503955 (= res!747803 (= (isDefined!2880 lt!627778) (isDefined!2881 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (=> d!503955 (= lt!627778 e!1068499)))

(declare-fun c!271336 () Bool)

(assert (=> d!503955 (= c!271336 (and ((_ is Cons!18376) rules!1846) ((_ is Nil!18376) (t!152191 rules!1846))))))

(declare-fun lt!627779 () Unit!31136)

(declare-fun lt!627784 () Unit!31136)

(assert (=> d!503955 (= lt!627779 lt!627784)))

(declare-fun lt!627783 () List!18444)

(declare-fun lt!627781 () List!18444)

(assert (=> d!503955 (isPrefix!1494 lt!627783 lt!627781)))

(assert (=> d!503955 (= lt!627784 (lemmaIsPrefixRefl!1015 lt!627783 lt!627781))))

(assert (=> d!503955 (= lt!627781 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!503955 (= lt!627783 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!503955 (rulesValidInductive!1038 thiss!17113 rules!1846)))

(assert (=> d!503955 (= (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) lt!627778)))

(declare-fun b!1667133 () Bool)

(assert (=> b!1667133 (= e!1068502 e!1068498)))

(declare-fun res!747807 () Bool)

(assert (=> b!1667133 (=> res!747807 e!1068498)))

(assert (=> b!1667133 (= res!747807 (not (isDefined!2880 lt!627778)))))

(assert (= (and d!503955 c!271336) b!1667132))

(assert (= (and d!503955 (not c!271336)) b!1667128))

(assert (= (or b!1667132 b!1667128) bm!106531))

(assert (= (and d!503955 res!747803) b!1667129))

(assert (= (and b!1667129 (not res!747808)) b!1667127))

(assert (= (and b!1667127 res!747806) b!1667126))

(assert (= (and b!1667129 res!747805) b!1667133))

(assert (= (and b!1667133 (not res!747807)) b!1667130))

(assert (= (and b!1667130 res!747804) b!1667131))

(declare-fun m!2031121 () Bool)

(assert (=> b!1667129 m!2031121))

(declare-fun m!2031123 () Bool)

(assert (=> b!1667126 m!2031123))

(assert (=> b!1667126 m!2029705))

(declare-fun m!2031125 () Bool)

(assert (=> b!1667126 m!2031125))

(assert (=> b!1667126 m!2029531))

(assert (=> b!1667126 m!2029705))

(assert (=> b!1667126 m!2031125))

(declare-fun m!2031127 () Bool)

(assert (=> b!1667126 m!2031127))

(declare-fun m!2031129 () Bool)

(assert (=> b!1667126 m!2031129))

(assert (=> b!1667130 m!2031129))

(assert (=> b!1667130 m!2029531))

(assert (=> b!1667130 m!2029705))

(assert (=> b!1667130 m!2029705))

(assert (=> b!1667130 m!2029883))

(assert (=> b!1667130 m!2029883))

(declare-fun m!2031131 () Bool)

(assert (=> b!1667130 m!2031131))

(assert (=> d!503955 m!2031121))

(assert (=> d!503955 m!2031125))

(declare-fun m!2031133 () Bool)

(assert (=> d!503955 m!2031133))

(assert (=> d!503955 m!2029531))

(assert (=> d!503955 m!2029705))

(declare-fun m!2031135 () Bool)

(assert (=> d!503955 m!2031135))

(assert (=> d!503955 m!2029705))

(assert (=> d!503955 m!2031125))

(declare-fun m!2031137 () Bool)

(assert (=> d!503955 m!2031137))

(assert (=> d!503955 m!2030075))

(assert (=> b!1667131 m!2031123))

(assert (=> b!1667131 m!2031129))

(assert (=> b!1667131 m!2029705))

(assert (=> b!1667131 m!2029883))

(assert (=> b!1667131 m!2029531))

(assert (=> b!1667131 m!2029705))

(assert (=> b!1667131 m!2029883))

(assert (=> b!1667131 m!2031131))

(assert (=> b!1667128 m!2029531))

(declare-fun m!2031139 () Bool)

(assert (=> b!1667128 m!2031139))

(assert (=> bm!106531 m!2029531))

(declare-fun m!2031141 () Bool)

(assert (=> bm!106531 m!2031141))

(assert (=> b!1667133 m!2031121))

(assert (=> b!1667127 m!2031129))

(assert (=> b!1667127 m!2029531))

(assert (=> b!1667127 m!2029705))

(assert (=> b!1667127 m!2029705))

(assert (=> b!1667127 m!2031125))

(assert (=> b!1667127 m!2031125))

(assert (=> b!1667127 m!2031127))

(assert (=> b!1666554 d!503955))

(declare-fun d!503957 () Bool)

(declare-fun e!1068505 () Bool)

(assert (=> d!503957 e!1068505))

(declare-fun c!271337 () Bool)

(declare-fun lt!627787 () tuple2!18094)

(assert (=> d!503957 (= c!271337 (> (size!14618 (_1!10449 lt!627787)) 0))))

(declare-fun e!1068504 () tuple2!18094)

(assert (=> d!503957 (= lt!627787 e!1068504)))

(declare-fun c!271338 () Bool)

(declare-fun lt!627786 () Option!3525)

(assert (=> d!503957 (= c!271338 ((_ is Some!3524) lt!627786))))

(assert (=> d!503957 (= lt!627786 (maxPrefix!1427 thiss!17113 rules!1846 lt!627386))))

(assert (=> d!503957 (= (lexList!891 thiss!17113 rules!1846 lt!627386) lt!627787)))

(declare-fun b!1667134 () Bool)

(declare-fun lt!627785 () tuple2!18094)

(assert (=> b!1667134 (= e!1068504 (tuple2!18095 (Cons!18375 (_1!10450 (v!24773 lt!627786)) (_1!10449 lt!627785)) (_2!10449 lt!627785)))))

(assert (=> b!1667134 (= lt!627785 (lexList!891 thiss!17113 rules!1846 (_2!10450 (v!24773 lt!627786))))))

(declare-fun b!1667135 () Bool)

(declare-fun e!1068506 () Bool)

(assert (=> b!1667135 (= e!1068506 (not (isEmpty!11436 (_1!10449 lt!627787))))))

(declare-fun b!1667136 () Bool)

(assert (=> b!1667136 (= e!1068505 e!1068506)))

(declare-fun res!747809 () Bool)

(assert (=> b!1667136 (= res!747809 (< (size!14615 (_2!10449 lt!627787)) (size!14615 lt!627386)))))

(assert (=> b!1667136 (=> (not res!747809) (not e!1068506))))

(declare-fun b!1667137 () Bool)

(assert (=> b!1667137 (= e!1068504 (tuple2!18095 Nil!18375 lt!627386))))

(declare-fun b!1667138 () Bool)

(assert (=> b!1667138 (= e!1068505 (= (_2!10449 lt!627787) lt!627386))))

(assert (= (and d!503957 c!271338) b!1667134))

(assert (= (and d!503957 (not c!271338)) b!1667137))

(assert (= (and d!503957 c!271337) b!1667136))

(assert (= (and d!503957 (not c!271337)) b!1667138))

(assert (= (and b!1667136 res!747809) b!1667135))

(declare-fun m!2031143 () Bool)

(assert (=> d!503957 m!2031143))

(declare-fun m!2031145 () Bool)

(assert (=> d!503957 m!2031145))

(declare-fun m!2031147 () Bool)

(assert (=> b!1667134 m!2031147))

(declare-fun m!2031149 () Bool)

(assert (=> b!1667135 m!2031149))

(declare-fun m!2031151 () Bool)

(assert (=> b!1667136 m!2031151))

(declare-fun m!2031153 () Bool)

(assert (=> b!1667136 m!2031153))

(assert (=> b!1666554 d!503957))

(declare-fun d!503959 () Bool)

(assert (=> d!503959 (= (list!7347 (BalanceConc!12189 Empty!6122)) (list!7349 (c!271171 (BalanceConc!12189 Empty!6122))))))

(declare-fun bs!397770 () Bool)

(assert (= bs!397770 d!503959))

(declare-fun m!2031155 () Bool)

(assert (=> bs!397770 m!2031155))

(assert (=> b!1666554 d!503959))

(declare-fun d!503961 () Bool)

(assert (=> d!503961 (= (list!7344 (BalanceConc!12191 Empty!6123)) (list!7348 (c!271173 (BalanceConc!12191 Empty!6123))))))

(declare-fun bs!397771 () Bool)

(assert (= bs!397771 d!503961))

(declare-fun m!2031157 () Bool)

(assert (=> bs!397771 m!2031157))

(assert (=> b!1666554 d!503961))

(declare-fun d!503963 () Bool)

(assert (=> d!503963 (= (list!7344 (_1!10447 lt!627410)) (list!7348 (c!271173 (_1!10447 lt!627410))))))

(declare-fun bs!397772 () Bool)

(assert (= bs!397772 d!503963))

(declare-fun m!2031159 () Bool)

(assert (=> bs!397772 m!2031159))

(assert (=> b!1666554 d!503963))

(declare-fun d!503965 () Bool)

(assert (=> d!503965 (isSuffix!426 lt!627387 (++!5002 lt!627399 lt!627387))))

(declare-fun lt!627804 () Unit!31136)

(declare-fun choose!10037 (List!18444 List!18444) Unit!31136)

(assert (=> d!503965 (= lt!627804 (choose!10037 lt!627399 lt!627387))))

(assert (=> d!503965 (= (lemmaConcatTwoListThenFSndIsSuffix!327 lt!627399 lt!627387) lt!627804)))

(declare-fun bs!397773 () Bool)

(assert (= bs!397773 d!503965))

(assert (=> bs!397773 m!2030029))

(assert (=> bs!397773 m!2030029))

(assert (=> bs!397773 m!2030031))

(declare-fun m!2031161 () Bool)

(assert (=> bs!397773 m!2031161))

(assert (=> b!1666554 d!503965))

(declare-fun b!1667148 () Bool)

(declare-fun e!1068513 () List!18444)

(assert (=> b!1667148 (= e!1068513 (Cons!18374 (h!23775 lt!627404) (++!5002 (t!152189 lt!627404) lt!627396)))))

(declare-fun b!1667149 () Bool)

(declare-fun res!747819 () Bool)

(declare-fun e!1068516 () Bool)

(assert (=> b!1667149 (=> (not res!747819) (not e!1068516))))

(declare-fun lt!627805 () List!18444)

(assert (=> b!1667149 (= res!747819 (= (size!14615 lt!627805) (+ (size!14615 lt!627404) (size!14615 lt!627396))))))

(declare-fun d!503967 () Bool)

(assert (=> d!503967 e!1068516))

(declare-fun res!747816 () Bool)

(assert (=> d!503967 (=> (not res!747816) (not e!1068516))))

(assert (=> d!503967 (= res!747816 (= (content!2565 lt!627805) ((_ map or) (content!2565 lt!627404) (content!2565 lt!627396))))))

(assert (=> d!503967 (= lt!627805 e!1068513)))

(declare-fun c!271341 () Bool)

(assert (=> d!503967 (= c!271341 ((_ is Nil!18374) lt!627404))))

(assert (=> d!503967 (= (++!5002 lt!627404 lt!627396) lt!627805)))

(declare-fun b!1667150 () Bool)

(assert (=> b!1667150 (= e!1068516 (or (not (= lt!627396 Nil!18374)) (= lt!627805 lt!627404)))))

(declare-fun b!1667147 () Bool)

(assert (=> b!1667147 (= e!1068513 lt!627396)))

(assert (= (and d!503967 c!271341) b!1667147))

(assert (= (and d!503967 (not c!271341)) b!1667148))

(assert (= (and d!503967 res!747816) b!1667149))

(assert (= (and b!1667149 res!747819) b!1667150))

(declare-fun m!2031163 () Bool)

(assert (=> b!1667148 m!2031163))

(declare-fun m!2031165 () Bool)

(assert (=> b!1667149 m!2031165))

(assert (=> b!1667149 m!2031067))

(assert (=> b!1667149 m!2031031))

(declare-fun m!2031167 () Bool)

(assert (=> d!503967 m!2031167))

(assert (=> d!503967 m!2031073))

(assert (=> d!503967 m!2031037))

(assert (=> b!1666554 d!503967))

(declare-fun d!503969 () Bool)

(declare-fun choose!10038 (Int) Bool)

(assert (=> d!503969 (= (Forall!659 lambda!67965) (choose!10038 lambda!67965))))

(declare-fun bs!397774 () Bool)

(assert (= bs!397774 d!503969))

(declare-fun m!2031169 () Bool)

(assert (=> bs!397774 m!2031169))

(assert (=> d!503723 d!503969))

(declare-fun d!503971 () Bool)

(assert (=> d!503971 (= (isEmpty!11433 (originalCharacters!4051 (h!23776 (t!152190 tokens!457)))) ((_ is Nil!18374) (originalCharacters!4051 (h!23776 (t!152190 tokens!457)))))))

(assert (=> d!503787 d!503971))

(declare-fun d!503973 () Bool)

(declare-fun lt!627806 () Bool)

(assert (=> d!503973 (= lt!627806 (isEmpty!11433 (list!7347 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))))))))))

(assert (=> d!503973 (= lt!627806 (isEmpty!11435 (c!271171 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))))))))))

(assert (=> d!503973 (= (isEmpty!11429 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))) lt!627806)))

(declare-fun bs!397775 () Bool)

(assert (= bs!397775 d!503973))

(declare-fun m!2031171 () Bool)

(assert (=> bs!397775 m!2031171))

(assert (=> bs!397775 m!2031171))

(declare-fun m!2031173 () Bool)

(assert (=> bs!397775 m!2031173))

(declare-fun m!2031175 () Bool)

(assert (=> bs!397775 m!2031175))

(assert (=> b!1666639 d!503973))

(declare-fun lt!627807 () tuple2!18090)

(declare-fun e!1068523 () Bool)

(declare-fun b!1667159 () Bool)

(assert (=> b!1667159 (= e!1068523 (= (list!7347 (_2!10447 lt!627807)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))))))))))

(declare-fun b!1667160 () Bool)

(declare-fun e!1068522 () Bool)

(declare-fun e!1068521 () Bool)

(assert (=> b!1667160 (= e!1068522 e!1068521)))

(declare-fun res!747826 () Bool)

(assert (=> b!1667160 (= res!747826 (< (size!14614 (_2!10447 lt!627807)) (size!14614 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))))))))

(assert (=> b!1667160 (=> (not res!747826) (not e!1068521))))

(declare-fun b!1667161 () Bool)

(assert (=> b!1667161 (= e!1068521 (not (isEmpty!11434 (_1!10447 lt!627807))))))

(declare-fun b!1667162 () Bool)

(assert (=> b!1667162 (= e!1068522 (= (_2!10447 lt!627807) (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))))

(declare-fun d!503975 () Bool)

(assert (=> d!503975 e!1068523))

(declare-fun res!747825 () Bool)

(assert (=> d!503975 (=> (not res!747825) (not e!1068523))))

(assert (=> d!503975 (= res!747825 e!1068522)))

(declare-fun c!271342 () Bool)

(assert (=> d!503975 (= c!271342 (> (size!14616 (_1!10447 lt!627807)) 0))))

(assert (=> d!503975 (= lt!627807 (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))) (BalanceConc!12189 Empty!6122) (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))) (BalanceConc!12191 Empty!6123)))))

(assert (=> d!503975 (= (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))) lt!627807)))

(declare-fun b!1667163 () Bool)

(declare-fun res!747824 () Bool)

(assert (=> b!1667163 (=> (not res!747824) (not e!1068523))))

(assert (=> b!1667163 (= res!747824 (= (list!7344 (_1!10447 lt!627807)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))))))))))

(assert (= (and d!503975 c!271342) b!1667160))

(assert (= (and d!503975 (not c!271342)) b!1667162))

(assert (= (and b!1667160 res!747826) b!1667161))

(assert (= (and d!503975 res!747825) b!1667163))

(assert (= (and b!1667163 res!747824) b!1667159))

(declare-fun m!2031177 () Bool)

(assert (=> b!1667160 m!2031177))

(assert (=> b!1667160 m!2030283))

(declare-fun m!2031179 () Bool)

(assert (=> b!1667160 m!2031179))

(declare-fun m!2031181 () Bool)

(assert (=> d!503975 m!2031181))

(assert (=> d!503975 m!2030283))

(assert (=> d!503975 m!2030283))

(declare-fun m!2031183 () Bool)

(assert (=> d!503975 m!2031183))

(declare-fun m!2031185 () Bool)

(assert (=> b!1667163 m!2031185))

(assert (=> b!1667163 m!2030283))

(declare-fun m!2031187 () Bool)

(assert (=> b!1667163 m!2031187))

(assert (=> b!1667163 m!2031187))

(declare-fun m!2031189 () Bool)

(assert (=> b!1667163 m!2031189))

(declare-fun m!2031191 () Bool)

(assert (=> b!1667161 m!2031191))

(declare-fun m!2031193 () Bool)

(assert (=> b!1667159 m!2031193))

(assert (=> b!1667159 m!2030283))

(assert (=> b!1667159 m!2031187))

(assert (=> b!1667159 m!2031187))

(assert (=> b!1667159 m!2031189))

(assert (=> b!1666639 d!503975))

(declare-fun d!503977 () Bool)

(declare-fun lt!627808 () BalanceConc!12188)

(assert (=> d!503977 (= (list!7347 lt!627808) (printList!979 thiss!17113 (list!7344 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))))

(assert (=> d!503977 (= lt!627808 (printTailRec!917 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))) 0 (BalanceConc!12189 Empty!6122)))))

(assert (=> d!503977 (= (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))) lt!627808)))

(declare-fun bs!397776 () Bool)

(assert (= bs!397776 d!503977))

(declare-fun m!2031195 () Bool)

(assert (=> bs!397776 m!2031195))

(assert (=> bs!397776 m!2030277))

(assert (=> bs!397776 m!2030279))

(assert (=> bs!397776 m!2030279))

(declare-fun m!2031197 () Bool)

(assert (=> bs!397776 m!2031197))

(assert (=> bs!397776 m!2030277))

(declare-fun m!2031199 () Bool)

(assert (=> bs!397776 m!2031199))

(assert (=> b!1666639 d!503977))

(declare-fun d!503979 () Bool)

(declare-fun e!1068532 () Bool)

(assert (=> d!503979 e!1068532))

(declare-fun res!747835 () Bool)

(assert (=> d!503979 (=> (not res!747835) (not e!1068532))))

(declare-fun lt!627818 () BalanceConc!12190)

(assert (=> d!503979 (= res!747835 (= (list!7344 lt!627818) (Cons!18375 (h!23776 (t!152190 tokens!457)) Nil!18375)))))

(declare-fun singleton!774 (Token!6040) BalanceConc!12190)

(assert (=> d!503979 (= lt!627818 (singleton!774 (h!23776 (t!152190 tokens!457))))))

(assert (=> d!503979 (= (singletonSeq!1744 (h!23776 (t!152190 tokens!457))) lt!627818)))

(declare-fun b!1667174 () Bool)

(assert (=> b!1667174 (= e!1068532 (isBalanced!1900 (c!271173 lt!627818)))))

(assert (= (and d!503979 res!747835) b!1667174))

(declare-fun m!2031201 () Bool)

(assert (=> d!503979 m!2031201))

(declare-fun m!2031203 () Bool)

(assert (=> d!503979 m!2031203))

(declare-fun m!2031205 () Bool)

(assert (=> b!1667174 m!2031205))

(assert (=> b!1666639 d!503979))

(declare-fun d!503981 () Bool)

(declare-fun lt!627819 () Int)

(assert (=> d!503981 (>= lt!627819 0)))

(declare-fun e!1068533 () Int)

(assert (=> d!503981 (= lt!627819 e!1068533)))

(declare-fun c!271344 () Bool)

(assert (=> d!503981 (= c!271344 ((_ is Nil!18374) (list!7347 (_2!10447 lt!627220))))))

(assert (=> d!503981 (= (size!14615 (list!7347 (_2!10447 lt!627220))) lt!627819)))

(declare-fun b!1667175 () Bool)

(assert (=> b!1667175 (= e!1068533 0)))

(declare-fun b!1667176 () Bool)

(assert (=> b!1667176 (= e!1068533 (+ 1 (size!14615 (t!152189 (list!7347 (_2!10447 lt!627220))))))))

(assert (= (and d!503981 c!271344) b!1667175))

(assert (= (and d!503981 (not c!271344)) b!1667176))

(declare-fun m!2031215 () Bool)

(assert (=> b!1667176 m!2031215))

(assert (=> d!503775 d!503981))

(assert (=> d!503775 d!503797))

(declare-fun d!503983 () Bool)

(declare-fun lt!627822 () Int)

(assert (=> d!503983 (= lt!627822 (size!14615 (list!7349 (c!271171 (_2!10447 lt!627220)))))))

(assert (=> d!503983 (= lt!627822 (ite ((_ is Empty!6122) (c!271171 (_2!10447 lt!627220))) 0 (ite ((_ is Leaf!8961) (c!271171 (_2!10447 lt!627220))) (csize!12475 (c!271171 (_2!10447 lt!627220))) (csize!12474 (c!271171 (_2!10447 lt!627220))))))))

(assert (=> d!503983 (= (size!14622 (c!271171 (_2!10447 lt!627220))) lt!627822)))

(declare-fun bs!397777 () Bool)

(assert (= bs!397777 d!503983))

(assert (=> bs!397777 m!2030373))

(assert (=> bs!397777 m!2030373))

(declare-fun m!2031235 () Bool)

(assert (=> bs!397777 m!2031235))

(assert (=> d!503775 d!503983))

(declare-fun d!503987 () Bool)

(declare-fun c!271345 () Bool)

(assert (=> d!503987 (= c!271345 ((_ is Node!6122) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))))

(declare-fun e!1068534 () Bool)

(assert (=> d!503987 (= (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))) e!1068534)))

(declare-fun b!1667177 () Bool)

(assert (=> b!1667177 (= e!1068534 (inv!23726 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))))

(declare-fun b!1667178 () Bool)

(declare-fun e!1068535 () Bool)

(assert (=> b!1667178 (= e!1068534 e!1068535)))

(declare-fun res!747836 () Bool)

(assert (=> b!1667178 (= res!747836 (not ((_ is Leaf!8961) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))))))))

(assert (=> b!1667178 (=> res!747836 e!1068535)))

(declare-fun b!1667179 () Bool)

(assert (=> b!1667179 (= e!1068535 (inv!23727 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))))

(assert (= (and d!503987 c!271345) b!1667177))

(assert (= (and d!503987 (not c!271345)) b!1667178))

(assert (= (and b!1667178 (not res!747836)) b!1667179))

(declare-fun m!2031237 () Bool)

(assert (=> b!1667177 m!2031237))

(declare-fun m!2031239 () Bool)

(assert (=> b!1667179 m!2031239))

(assert (=> b!1666636 d!503987))

(declare-fun d!503989 () Bool)

(declare-fun lt!627825 () Bool)

(declare-fun content!2568 (List!18448) (InoxSet String!20967))

(assert (=> d!503989 (= lt!627825 (select (content!2568 Nil!18378) (tag!3521 (h!23777 rules!1846))))))

(declare-fun e!1068541 () Bool)

(assert (=> d!503989 (= lt!627825 e!1068541)))

(declare-fun res!747841 () Bool)

(assert (=> d!503989 (=> (not res!747841) (not e!1068541))))

(assert (=> d!503989 (= res!747841 ((_ is Cons!18378) Nil!18378))))

(assert (=> d!503989 (= (contains!3210 Nil!18378 (tag!3521 (h!23777 rules!1846))) lt!627825)))

(declare-fun b!1667184 () Bool)

(declare-fun e!1068540 () Bool)

(assert (=> b!1667184 (= e!1068541 e!1068540)))

(declare-fun res!747842 () Bool)

(assert (=> b!1667184 (=> res!747842 e!1068540)))

(assert (=> b!1667184 (= res!747842 (= (h!23779 Nil!18378) (tag!3521 (h!23777 rules!1846))))))

(declare-fun b!1667185 () Bool)

(assert (=> b!1667185 (= e!1068540 (contains!3210 (t!152213 Nil!18378) (tag!3521 (h!23777 rules!1846))))))

(assert (= (and d!503989 res!747841) b!1667184))

(assert (= (and b!1667184 (not res!747842)) b!1667185))

(declare-fun m!2031241 () Bool)

(assert (=> d!503989 m!2031241))

(declare-fun m!2031243 () Bool)

(assert (=> d!503989 m!2031243))

(declare-fun m!2031245 () Bool)

(assert (=> b!1667185 m!2031245))

(assert (=> b!1666650 d!503989))

(declare-fun d!503991 () Bool)

(declare-fun c!271346 () Bool)

(assert (=> d!503991 (= c!271346 ((_ is Node!6122) (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun e!1068542 () Bool)

(assert (=> d!503991 (= (inv!23722 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) e!1068542)))

(declare-fun b!1667186 () Bool)

(assert (=> b!1667186 (= e!1068542 (inv!23726 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun b!1667187 () Bool)

(declare-fun e!1068543 () Bool)

(assert (=> b!1667187 (= e!1068542 e!1068543)))

(declare-fun res!747843 () Bool)

(assert (=> b!1667187 (= res!747843 (not ((_ is Leaf!8961) (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))))

(assert (=> b!1667187 (=> res!747843 e!1068543)))

(declare-fun b!1667188 () Bool)

(assert (=> b!1667188 (= e!1068543 (inv!23727 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(assert (= (and d!503991 c!271346) b!1667186))

(assert (= (and d!503991 (not c!271346)) b!1667187))

(assert (= (and b!1667187 (not res!747843)) b!1667188))

(declare-fun m!2031247 () Bool)

(assert (=> b!1667186 m!2031247))

(declare-fun m!2031249 () Bool)

(assert (=> b!1667188 m!2031249))

(assert (=> b!1666770 d!503991))

(declare-fun d!503993 () Bool)

(declare-fun c!271347 () Bool)

(assert (=> d!503993 (= c!271347 ((_ is Node!6122) (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun e!1068544 () Bool)

(assert (=> d!503993 (= (inv!23722 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) e!1068544)))

(declare-fun b!1667189 () Bool)

(assert (=> b!1667189 (= e!1068544 (inv!23726 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun b!1667190 () Bool)

(declare-fun e!1068545 () Bool)

(assert (=> b!1667190 (= e!1068544 e!1068545)))

(declare-fun res!747844 () Bool)

(assert (=> b!1667190 (= res!747844 (not ((_ is Leaf!8961) (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))))

(assert (=> b!1667190 (=> res!747844 e!1068545)))

(declare-fun b!1667191 () Bool)

(assert (=> b!1667191 (= e!1068545 (inv!23727 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(assert (= (and d!503993 c!271347) b!1667189))

(assert (= (and d!503993 (not c!271347)) b!1667190))

(assert (= (and b!1667190 (not res!747844)) b!1667191))

(declare-fun m!2031251 () Bool)

(assert (=> b!1667189 m!2031251))

(declare-fun m!2031253 () Bool)

(assert (=> b!1667191 m!2031253))

(assert (=> b!1666770 d!503993))

(declare-fun d!503995 () Bool)

(declare-fun lt!627828 () Token!6040)

(assert (=> d!503995 (= lt!627828 (apply!4936 (list!7344 (_1!10447 lt!627550)) 0))))

(declare-fun apply!4940 (Conc!6123 Int) Token!6040)

(assert (=> d!503995 (= lt!627828 (apply!4940 (c!271173 (_1!10447 lt!627550)) 0))))

(declare-fun e!1068548 () Bool)

(assert (=> d!503995 e!1068548))

(declare-fun res!747847 () Bool)

(assert (=> d!503995 (=> (not res!747847) (not e!1068548))))

(assert (=> d!503995 (= res!747847 (<= 0 0))))

(assert (=> d!503995 (= (apply!4933 (_1!10447 lt!627550) 0) lt!627828)))

(declare-fun b!1667194 () Bool)

(assert (=> b!1667194 (= e!1068548 (< 0 (size!14616 (_1!10447 lt!627550))))))

(assert (= (and d!503995 res!747847) b!1667194))

(declare-fun m!2031255 () Bool)

(assert (=> d!503995 m!2031255))

(assert (=> d!503995 m!2031255))

(declare-fun m!2031257 () Bool)

(assert (=> d!503995 m!2031257))

(declare-fun m!2031259 () Bool)

(assert (=> d!503995 m!2031259))

(assert (=> b!1667194 m!2030281))

(assert (=> b!1666637 d!503995))

(declare-fun b!1667195 () Bool)

(declare-fun e!1068551 () Bool)

(declare-fun lt!627830 () tuple2!18090)

(assert (=> b!1667195 (= e!1068551 (= (list!7347 (_2!10447 lt!627830)) (list!7347 (_2!10451 (v!24774 lt!627395)))))))

(declare-fun b!1667196 () Bool)

(declare-fun e!1068552 () tuple2!18090)

(assert (=> b!1667196 (= e!1068552 (tuple2!18091 (BalanceConc!12191 Empty!6123) (_2!10451 (v!24774 lt!627395))))))

(declare-fun b!1667197 () Bool)

(declare-fun e!1068549 () Bool)

(assert (=> b!1667197 (= e!1068549 (not (isEmpty!11434 (_1!10447 lt!627830))))))

(declare-fun b!1667198 () Bool)

(assert (=> b!1667198 (= e!1068551 e!1068549)))

(declare-fun res!747848 () Bool)

(assert (=> b!1667198 (= res!747848 (< (size!14614 (_2!10447 lt!627830)) (size!14614 (_2!10451 (v!24774 lt!627395)))))))

(assert (=> b!1667198 (=> (not res!747848) (not e!1068549))))

(declare-fun b!1667199 () Bool)

(declare-fun res!747850 () Bool)

(declare-fun e!1068550 () Bool)

(assert (=> b!1667199 (=> (not res!747850) (not e!1068550))))

(assert (=> b!1667199 (= res!747850 (= (list!7344 (_1!10447 lt!627830)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (_2!10451 (v!24774 lt!627395)))))))))

(declare-fun b!1667200 () Bool)

(declare-fun lt!627831 () tuple2!18090)

(declare-fun lt!627829 () Option!3526)

(assert (=> b!1667200 (= e!1068552 (tuple2!18091 (prepend!820 (_1!10447 lt!627831) (_1!10451 (v!24774 lt!627829))) (_2!10447 lt!627831)))))

(assert (=> b!1667200 (= lt!627831 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627829))))))

(declare-fun d!503997 () Bool)

(assert (=> d!503997 e!1068550))

(declare-fun res!747849 () Bool)

(assert (=> d!503997 (=> (not res!747849) (not e!1068550))))

(assert (=> d!503997 (= res!747849 e!1068551)))

(declare-fun c!271348 () Bool)

(assert (=> d!503997 (= c!271348 (> (size!14616 (_1!10447 lt!627830)) 0))))

(assert (=> d!503997 (= lt!627830 e!1068552)))

(declare-fun c!271349 () Bool)

(assert (=> d!503997 (= c!271349 ((_ is Some!3525) lt!627829))))

(assert (=> d!503997 (= lt!627829 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627395))))))

(assert (=> d!503997 (= (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627395))) lt!627830)))

(declare-fun b!1667201 () Bool)

(assert (=> b!1667201 (= e!1068550 (= (list!7347 (_2!10447 lt!627830)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (_2!10451 (v!24774 lt!627395)))))))))

(assert (= (and d!503997 c!271349) b!1667200))

(assert (= (and d!503997 (not c!271349)) b!1667196))

(assert (= (and d!503997 c!271348) b!1667198))

(assert (= (and d!503997 (not c!271348)) b!1667195))

(assert (= (and b!1667198 res!747848) b!1667197))

(assert (= (and d!503997 res!747849) b!1667199))

(assert (= (and b!1667199 res!747850) b!1667201))

(declare-fun m!2031261 () Bool)

(assert (=> b!1667201 m!2031261))

(declare-fun m!2031263 () Bool)

(assert (=> b!1667201 m!2031263))

(assert (=> b!1667201 m!2031263))

(declare-fun m!2031265 () Bool)

(assert (=> b!1667201 m!2031265))

(assert (=> b!1667195 m!2031261))

(assert (=> b!1667195 m!2031263))

(declare-fun m!2031267 () Bool)

(assert (=> b!1667199 m!2031267))

(assert (=> b!1667199 m!2031263))

(assert (=> b!1667199 m!2031263))

(assert (=> b!1667199 m!2031265))

(declare-fun m!2031269 () Bool)

(assert (=> b!1667200 m!2031269))

(declare-fun m!2031271 () Bool)

(assert (=> b!1667200 m!2031271))

(declare-fun m!2031273 () Bool)

(assert (=> b!1667198 m!2031273))

(declare-fun m!2031275 () Bool)

(assert (=> b!1667198 m!2031275))

(declare-fun m!2031277 () Bool)

(assert (=> b!1667197 m!2031277))

(declare-fun m!2031279 () Bool)

(assert (=> d!503997 m!2031279))

(declare-fun m!2031281 () Bool)

(assert (=> d!503997 m!2031281))

(assert (=> b!1666552 d!503997))

(declare-fun d!503999 () Bool)

(declare-fun e!1068557 () Bool)

(assert (=> d!503999 e!1068557))

(declare-fun res!747855 () Bool)

(assert (=> d!503999 (=> (not res!747855) (not e!1068557))))

(declare-fun prepend!823 (Conc!6123 Token!6040) Conc!6123)

(assert (=> d!503999 (= res!747855 (isBalanced!1900 (prepend!823 (c!271173 (_1!10447 lt!627415)) (_1!10451 (v!24774 lt!627395)))))))

(declare-fun lt!627838 () BalanceConc!12190)

(assert (=> d!503999 (= lt!627838 (BalanceConc!12191 (prepend!823 (c!271173 (_1!10447 lt!627415)) (_1!10451 (v!24774 lt!627395)))))))

(assert (=> d!503999 (= (prepend!820 (_1!10447 lt!627415) (_1!10451 (v!24774 lt!627395))) lt!627838)))

(declare-fun b!1667208 () Bool)

(assert (=> b!1667208 (= e!1068557 (= (list!7344 lt!627838) (Cons!18375 (_1!10451 (v!24774 lt!627395)) (list!7344 (_1!10447 lt!627415)))))))

(assert (= (and d!503999 res!747855) b!1667208))

(declare-fun m!2031297 () Bool)

(assert (=> d!503999 m!2031297))

(assert (=> d!503999 m!2031297))

(declare-fun m!2031299 () Bool)

(assert (=> d!503999 m!2031299))

(declare-fun m!2031301 () Bool)

(assert (=> b!1667208 m!2031301))

(declare-fun m!2031303 () Bool)

(assert (=> b!1667208 m!2031303))

(assert (=> b!1666552 d!503999))

(declare-fun d!504007 () Bool)

(declare-fun lt!627839 () Int)

(assert (=> d!504007 (>= lt!627839 0)))

(declare-fun e!1068558 () Int)

(assert (=> d!504007 (= lt!627839 e!1068558)))

(declare-fun c!271352 () Bool)

(assert (=> d!504007 (= c!271352 ((_ is Nil!18374) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> d!504007 (= (size!14615 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) lt!627839)))

(declare-fun b!1667209 () Bool)

(assert (=> b!1667209 (= e!1068558 0)))

(declare-fun b!1667210 () Bool)

(assert (=> b!1667210 (= e!1068558 (+ 1 (size!14615 (t!152189 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (= (and d!504007 c!271352) b!1667209))

(assert (= (and d!504007 (not c!271352)) b!1667210))

(declare-fun m!2031305 () Bool)

(assert (=> b!1667210 m!2031305))

(assert (=> d!503777 d!504007))

(assert (=> d!503777 d!503659))

(declare-fun d!504009 () Bool)

(declare-fun lt!627840 () Int)

(assert (=> d!504009 (= lt!627840 (size!14615 (list!7349 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))

(assert (=> d!504009 (= lt!627840 (ite ((_ is Empty!6122) (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) 0 (ite ((_ is Leaf!8961) (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) (csize!12475 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) (csize!12474 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (=> d!504009 (= (size!14622 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) lt!627840)))

(declare-fun bs!397780 () Bool)

(assert (= bs!397780 d!504009))

(assert (=> bs!397780 m!2029893))

(assert (=> bs!397780 m!2029893))

(declare-fun m!2031307 () Bool)

(assert (=> bs!397780 m!2031307))

(assert (=> d!503777 d!504009))

(declare-fun d!504011 () Bool)

(declare-fun choose!10041 (Int) Bool)

(assert (=> d!504011 (= (Forall2!531 lambda!67972) (choose!10041 lambda!67972))))

(declare-fun bs!397781 () Bool)

(assert (= bs!397781 d!504011))

(declare-fun m!2031309 () Bool)

(assert (=> bs!397781 m!2031309))

(assert (=> d!503793 d!504011))

(declare-fun d!504013 () Bool)

(assert (=> d!504013 (= (Forall!659 lambda!67951) (choose!10038 lambda!67951))))

(declare-fun bs!397782 () Bool)

(assert (= bs!397782 d!504013))

(declare-fun m!2031311 () Bool)

(assert (=> bs!397782 m!2031311))

(assert (=> d!503621 d!504013))

(declare-fun bs!397783 () Bool)

(declare-fun d!504015 () Bool)

(assert (= bs!397783 (and d!504015 d!503705)))

(declare-fun lambda!67976 () Int)

(assert (=> bs!397783 (= lambda!67976 lambda!67960)))

(assert (=> d!504015 true))

(declare-fun lt!627845 () Bool)

(assert (=> d!504015 (= lt!627845 (forall!4178 rules!1846 lambda!67976))))

(declare-fun e!1068565 () Bool)

(assert (=> d!504015 (= lt!627845 e!1068565)))

(declare-fun res!747862 () Bool)

(assert (=> d!504015 (=> res!747862 e!1068565)))

(assert (=> d!504015 (= res!747862 (not ((_ is Cons!18376) rules!1846)))))

(assert (=> d!504015 (= (rulesValidInductive!1038 thiss!17113 rules!1846) lt!627845)))

(declare-fun b!1667217 () Bool)

(declare-fun e!1068566 () Bool)

(assert (=> b!1667217 (= e!1068565 e!1068566)))

(declare-fun res!747863 () Bool)

(assert (=> b!1667217 (=> (not res!747863) (not e!1068566))))

(declare-fun ruleValid!760 (LexerInterface!2866 Rule!6274) Bool)

(assert (=> b!1667217 (= res!747863 (ruleValid!760 thiss!17113 (h!23777 rules!1846)))))

(declare-fun b!1667218 () Bool)

(assert (=> b!1667218 (= e!1068566 (rulesValidInductive!1038 thiss!17113 (t!152191 rules!1846)))))

(assert (= (and d!504015 (not res!747862)) b!1667217))

(assert (= (and b!1667217 res!747863) b!1667218))

(declare-fun m!2031321 () Bool)

(assert (=> d!504015 m!2031321))

(declare-fun m!2031323 () Bool)

(assert (=> b!1667217 m!2031323))

(declare-fun m!2031325 () Bool)

(assert (=> b!1667218 m!2031325))

(assert (=> d!503705 d!504015))

(declare-fun d!504019 () Bool)

(declare-fun res!747872 () Bool)

(declare-fun e!1068576 () Bool)

(assert (=> d!504019 (=> res!747872 e!1068576)))

(assert (=> d!504019 (= res!747872 ((_ is Nil!18376) rules!1846))))

(assert (=> d!504019 (= (forall!4178 rules!1846 lambda!67960) e!1068576)))

(declare-fun b!1667231 () Bool)

(declare-fun e!1068577 () Bool)

(assert (=> b!1667231 (= e!1068576 e!1068577)))

(declare-fun res!747873 () Bool)

(assert (=> b!1667231 (=> (not res!747873) (not e!1068577))))

(declare-fun dynLambda!8280 (Int Rule!6274) Bool)

(assert (=> b!1667231 (= res!747873 (dynLambda!8280 lambda!67960 (h!23777 rules!1846)))))

(declare-fun b!1667232 () Bool)

(assert (=> b!1667232 (= e!1068577 (forall!4178 (t!152191 rules!1846) lambda!67960))))

(assert (= (and d!504019 (not res!747872)) b!1667231))

(assert (= (and b!1667231 res!747873) b!1667232))

(declare-fun b_lambda!52339 () Bool)

(assert (=> (not b_lambda!52339) (not b!1667231)))

(declare-fun m!2031351 () Bool)

(assert (=> b!1667231 m!2031351))

(declare-fun m!2031353 () Bool)

(assert (=> b!1667232 m!2031353))

(assert (=> d!503705 d!504019))

(declare-fun d!504025 () Bool)

(assert (=> d!504025 (= (list!7347 lt!627549) (list!7349 (c!271171 lt!627549)))))

(declare-fun bs!397785 () Bool)

(assert (= bs!397785 d!504025))

(declare-fun m!2031355 () Bool)

(assert (=> bs!397785 m!2031355))

(assert (=> d!503763 d!504025))

(declare-fun b!1667260 () Bool)

(declare-fun e!1068592 () Bool)

(assert (=> b!1667260 (= e!1068592 (not (isEmpty!11438 (right!15029 (fromList!407 tokens!457)))))))

(declare-fun b!1667261 () Bool)

(declare-fun e!1068593 () Bool)

(assert (=> b!1667261 (= e!1068593 e!1068592)))

(declare-fun res!747895 () Bool)

(assert (=> b!1667261 (=> (not res!747895) (not e!1068592))))

(declare-fun height!968 (Conc!6123) Int)

(assert (=> b!1667261 (= res!747895 (<= (- 1) (- (height!968 (left!14699 (fromList!407 tokens!457))) (height!968 (right!15029 (fromList!407 tokens!457))))))))

(declare-fun b!1667262 () Bool)

(declare-fun res!747893 () Bool)

(assert (=> b!1667262 (=> (not res!747893) (not e!1068592))))

(assert (=> b!1667262 (= res!747893 (isBalanced!1900 (right!15029 (fromList!407 tokens!457))))))

(declare-fun b!1667263 () Bool)

(declare-fun res!747896 () Bool)

(assert (=> b!1667263 (=> (not res!747896) (not e!1068592))))

(assert (=> b!1667263 (= res!747896 (not (isEmpty!11438 (left!14699 (fromList!407 tokens!457)))))))

(declare-fun b!1667264 () Bool)

(declare-fun res!747894 () Bool)

(assert (=> b!1667264 (=> (not res!747894) (not e!1068592))))

(assert (=> b!1667264 (= res!747894 (isBalanced!1900 (left!14699 (fromList!407 tokens!457))))))

(declare-fun d!504027 () Bool)

(declare-fun res!747897 () Bool)

(assert (=> d!504027 (=> res!747897 e!1068593)))

(assert (=> d!504027 (= res!747897 (not ((_ is Node!6123) (fromList!407 tokens!457))))))

(assert (=> d!504027 (= (isBalanced!1900 (fromList!407 tokens!457)) e!1068593)))

(declare-fun b!1667259 () Bool)

(declare-fun res!747898 () Bool)

(assert (=> b!1667259 (=> (not res!747898) (not e!1068592))))

(assert (=> b!1667259 (= res!747898 (<= (- (height!968 (left!14699 (fromList!407 tokens!457))) (height!968 (right!15029 (fromList!407 tokens!457)))) 1))))

(assert (= (and d!504027 (not res!747897)) b!1667261))

(assert (= (and b!1667261 res!747895) b!1667259))

(assert (= (and b!1667259 res!747898) b!1667264))

(assert (= (and b!1667264 res!747894) b!1667262))

(assert (= (and b!1667262 res!747893) b!1667263))

(assert (= (and b!1667263 res!747896) b!1667260))

(declare-fun m!2031399 () Bool)

(assert (=> b!1667259 m!2031399))

(declare-fun m!2031401 () Bool)

(assert (=> b!1667259 m!2031401))

(declare-fun m!2031405 () Bool)

(assert (=> b!1667263 m!2031405))

(declare-fun m!2031407 () Bool)

(assert (=> b!1667262 m!2031407))

(assert (=> b!1667261 m!2031399))

(assert (=> b!1667261 m!2031401))

(declare-fun m!2031411 () Bool)

(assert (=> b!1667264 m!2031411))

(declare-fun m!2031413 () Bool)

(assert (=> b!1667260 m!2031413))

(assert (=> b!1666453 d!504027))

(declare-fun d!504039 () Bool)

(declare-fun e!1068596 () Bool)

(assert (=> d!504039 e!1068596))

(declare-fun res!747901 () Bool)

(assert (=> d!504039 (=> (not res!747901) (not e!1068596))))

(declare-fun lt!627868 () Conc!6123)

(assert (=> d!504039 (= res!747901 (= (list!7348 lt!627868) tokens!457))))

(declare-fun choose!10042 (List!18445) Conc!6123)

(assert (=> d!504039 (= lt!627868 (choose!10042 tokens!457))))

(assert (=> d!504039 (= (fromList!407 tokens!457) lt!627868)))

(declare-fun b!1667267 () Bool)

(assert (=> b!1667267 (= e!1068596 (isBalanced!1900 lt!627868))))

(assert (= (and d!504039 res!747901) b!1667267))

(declare-fun m!2031419 () Bool)

(assert (=> d!504039 m!2031419))

(declare-fun m!2031421 () Bool)

(assert (=> d!504039 m!2031421))

(declare-fun m!2031423 () Bool)

(assert (=> b!1667267 m!2031423))

(assert (=> b!1666453 d!504039))

(declare-fun d!504045 () Bool)

(declare-fun lt!627869 () Int)

(assert (=> d!504045 (>= lt!627869 0)))

(declare-fun e!1068597 () Int)

(assert (=> d!504045 (= lt!627869 e!1068597)))

(declare-fun c!271359 () Bool)

(assert (=> d!504045 (= c!271359 ((_ is Nil!18374) (t!152189 (originalCharacters!4051 (h!23776 tokens!457)))))))

(assert (=> d!504045 (= (size!14615 (t!152189 (originalCharacters!4051 (h!23776 tokens!457)))) lt!627869)))

(declare-fun b!1667268 () Bool)

(assert (=> b!1667268 (= e!1068597 0)))

(declare-fun b!1667269 () Bool)

(assert (=> b!1667269 (= e!1068597 (+ 1 (size!14615 (t!152189 (t!152189 (originalCharacters!4051 (h!23776 tokens!457)))))))))

(assert (= (and d!504045 c!271359) b!1667268))

(assert (= (and d!504045 (not c!271359)) b!1667269))

(declare-fun m!2031425 () Bool)

(assert (=> b!1667269 m!2031425))

(assert (=> b!1666586 d!504045))

(declare-fun d!504047 () Bool)

(assert (=> d!504047 (= (list!7347 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))) (list!7349 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))))

(declare-fun bs!397791 () Bool)

(assert (= bs!397791 d!504047))

(declare-fun m!2031427 () Bool)

(assert (=> bs!397791 m!2031427))

(assert (=> b!1666671 d!504047))

(declare-fun b!1667289 () Bool)

(declare-fun e!1068607 () List!18444)

(assert (=> b!1667289 (= e!1068607 (++!5002 (list!7349 (left!14698 (c!271171 (_2!10447 lt!627220)))) (list!7349 (right!15028 (c!271171 (_2!10447 lt!627220))))))))

(declare-fun b!1667287 () Bool)

(declare-fun e!1068606 () List!18444)

(assert (=> b!1667287 (= e!1068606 e!1068607)))

(declare-fun c!271367 () Bool)

(assert (=> b!1667287 (= c!271367 ((_ is Leaf!8961) (c!271171 (_2!10447 lt!627220))))))

(declare-fun b!1667288 () Bool)

(declare-fun list!7354 (IArray!12249) List!18444)

(assert (=> b!1667288 (= e!1068607 (list!7354 (xs!8966 (c!271171 (_2!10447 lt!627220)))))))

(declare-fun d!504049 () Bool)

(declare-fun c!271366 () Bool)

(assert (=> d!504049 (= c!271366 ((_ is Empty!6122) (c!271171 (_2!10447 lt!627220))))))

(assert (=> d!504049 (= (list!7349 (c!271171 (_2!10447 lt!627220))) e!1068606)))

(declare-fun b!1667286 () Bool)

(assert (=> b!1667286 (= e!1068606 Nil!18374)))

(assert (= (and d!504049 c!271366) b!1667286))

(assert (= (and d!504049 (not c!271366)) b!1667287))

(assert (= (and b!1667287 c!271367) b!1667288))

(assert (= (and b!1667287 (not c!271367)) b!1667289))

(declare-fun m!2031453 () Bool)

(assert (=> b!1667289 m!2031453))

(declare-fun m!2031455 () Bool)

(assert (=> b!1667289 m!2031455))

(assert (=> b!1667289 m!2031453))

(assert (=> b!1667289 m!2031455))

(declare-fun m!2031457 () Bool)

(assert (=> b!1667289 m!2031457))

(declare-fun m!2031459 () Bool)

(assert (=> b!1667288 m!2031459))

(assert (=> d!503797 d!504049))

(declare-fun lt!627875 () Bool)

(declare-fun d!504059 () Bool)

(assert (=> d!504059 (= lt!627875 (isEmpty!11433 (list!7347 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))))))))))

(assert (=> d!504059 (= lt!627875 (isEmpty!11435 (c!271171 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))))))))))

(assert (=> d!504059 (= (isEmpty!11429 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))))) lt!627875)))

(declare-fun bs!397793 () Bool)

(assert (= bs!397793 d!504059))

(declare-fun m!2031461 () Bool)

(assert (=> bs!397793 m!2031461))

(assert (=> bs!397793 m!2031461))

(declare-fun m!2031463 () Bool)

(assert (=> bs!397793 m!2031463))

(declare-fun m!2031465 () Bool)

(assert (=> bs!397793 m!2031465))

(assert (=> b!1666449 d!504059))

(declare-fun lt!627877 () tuple2!18090)

(declare-fun e!1068610 () Bool)

(declare-fun b!1667290 () Bool)

(assert (=> b!1667290 (= e!1068610 (= (list!7347 (_2!10447 lt!627877)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))))))))))

(declare-fun b!1667291 () Bool)

(declare-fun e!1068609 () Bool)

(declare-fun e!1068608 () Bool)

(assert (=> b!1667291 (= e!1068609 e!1068608)))

(declare-fun res!747908 () Bool)

(assert (=> b!1667291 (= res!747908 (< (size!14614 (_2!10447 lt!627877)) (size!14614 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))))))))

(assert (=> b!1667291 (=> (not res!747908) (not e!1068608))))

(declare-fun b!1667292 () Bool)

(assert (=> b!1667292 (= e!1068608 (not (isEmpty!11434 (_1!10447 lt!627877))))))

(declare-fun b!1667293 () Bool)

(assert (=> b!1667293 (= e!1068609 (= (_2!10447 lt!627877) (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))))))

(declare-fun d!504061 () Bool)

(assert (=> d!504061 e!1068610))

(declare-fun res!747907 () Bool)

(assert (=> d!504061 (=> (not res!747907) (not e!1068610))))

(assert (=> d!504061 (= res!747907 e!1068609)))

(declare-fun c!271368 () Bool)

(assert (=> d!504061 (= c!271368 (> (size!14616 (_1!10447 lt!627877)) 0))))

(assert (=> d!504061 (= lt!627877 (lexTailRecV2!614 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))) (BalanceConc!12189 Empty!6122) (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))) (BalanceConc!12191 Empty!6123)))))

(assert (=> d!504061 (= (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))) lt!627877)))

(declare-fun b!1667294 () Bool)

(declare-fun res!747906 () Bool)

(assert (=> b!1667294 (=> (not res!747906) (not e!1068610))))

(assert (=> b!1667294 (= res!747906 (= (list!7344 (_1!10447 lt!627877)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))))))))))

(assert (= (and d!504061 c!271368) b!1667291))

(assert (= (and d!504061 (not c!271368)) b!1667293))

(assert (= (and b!1667291 res!747908) b!1667292))

(assert (= (and d!504061 res!747907) b!1667294))

(assert (= (and b!1667294 res!747906) b!1667290))

(declare-fun m!2031471 () Bool)

(assert (=> b!1667291 m!2031471))

(assert (=> b!1667291 m!2029755))

(declare-fun m!2031473 () Bool)

(assert (=> b!1667291 m!2031473))

(declare-fun m!2031475 () Bool)

(assert (=> d!504061 m!2031475))

(assert (=> d!504061 m!2029755))

(assert (=> d!504061 m!2029755))

(declare-fun m!2031477 () Bool)

(assert (=> d!504061 m!2031477))

(declare-fun m!2031479 () Bool)

(assert (=> b!1667294 m!2031479))

(assert (=> b!1667294 m!2029755))

(declare-fun m!2031481 () Bool)

(assert (=> b!1667294 m!2031481))

(assert (=> b!1667294 m!2031481))

(declare-fun m!2031483 () Bool)

(assert (=> b!1667294 m!2031483))

(declare-fun m!2031487 () Bool)

(assert (=> b!1667292 m!2031487))

(declare-fun m!2031489 () Bool)

(assert (=> b!1667290 m!2031489))

(assert (=> b!1667290 m!2029755))

(assert (=> b!1667290 m!2031481))

(assert (=> b!1667290 m!2031481))

(assert (=> b!1667290 m!2031483))

(assert (=> b!1666449 d!504061))

(declare-fun d!504067 () Bool)

(declare-fun lt!627879 () BalanceConc!12188)

(assert (=> d!504067 (= (list!7347 lt!627879) (printList!979 thiss!17113 (list!7344 (singletonSeq!1744 (h!23776 tokens!457)))))))

(assert (=> d!504067 (= lt!627879 (printTailRec!917 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)) 0 (BalanceConc!12189 Empty!6122)))))

(assert (=> d!504067 (= (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))) lt!627879)))

(declare-fun bs!397796 () Bool)

(assert (= bs!397796 d!504067))

(declare-fun m!2031495 () Bool)

(assert (=> bs!397796 m!2031495))

(assert (=> bs!397796 m!2029749))

(assert (=> bs!397796 m!2029751))

(assert (=> bs!397796 m!2029751))

(declare-fun m!2031497 () Bool)

(assert (=> bs!397796 m!2031497))

(assert (=> bs!397796 m!2029749))

(declare-fun m!2031499 () Bool)

(assert (=> bs!397796 m!2031499))

(assert (=> b!1666449 d!504067))

(declare-fun d!504071 () Bool)

(declare-fun e!1068615 () Bool)

(assert (=> d!504071 e!1068615))

(declare-fun res!747911 () Bool)

(assert (=> d!504071 (=> (not res!747911) (not e!1068615))))

(declare-fun lt!627880 () BalanceConc!12190)

(assert (=> d!504071 (= res!747911 (= (list!7344 lt!627880) (Cons!18375 (h!23776 tokens!457) Nil!18375)))))

(assert (=> d!504071 (= lt!627880 (singleton!774 (h!23776 tokens!457)))))

(assert (=> d!504071 (= (singletonSeq!1744 (h!23776 tokens!457)) lt!627880)))

(declare-fun b!1667303 () Bool)

(assert (=> b!1667303 (= e!1068615 (isBalanced!1900 (c!271173 lt!627880)))))

(assert (= (and d!504071 res!747911) b!1667303))

(declare-fun m!2031507 () Bool)

(assert (=> d!504071 m!2031507))

(declare-fun m!2031511 () Bool)

(assert (=> d!504071 m!2031511))

(declare-fun m!2031513 () Bool)

(assert (=> b!1667303 m!2031513))

(assert (=> b!1666449 d!504071))

(declare-fun b!1667307 () Bool)

(declare-fun e!1068617 () List!18444)

(assert (=> b!1667307 (= e!1068617 (++!5002 (list!7349 (left!14698 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))) (list!7349 (right!15028 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun b!1667305 () Bool)

(declare-fun e!1068616 () List!18444)

(assert (=> b!1667305 (= e!1068616 e!1068617)))

(declare-fun c!271373 () Bool)

(assert (=> b!1667305 (= c!271373 ((_ is Leaf!8961) (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(declare-fun b!1667306 () Bool)

(assert (=> b!1667306 (= e!1068617 (list!7354 (xs!8966 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))

(declare-fun d!504075 () Bool)

(declare-fun c!271372 () Bool)

(assert (=> d!504075 (= c!271372 ((_ is Empty!6122) (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> d!504075 (= (list!7349 (c!271171 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) e!1068616)))

(declare-fun b!1667304 () Bool)

(assert (=> b!1667304 (= e!1068616 Nil!18374)))

(assert (= (and d!504075 c!271372) b!1667304))

(assert (= (and d!504075 (not c!271372)) b!1667305))

(assert (= (and b!1667305 c!271373) b!1667306))

(assert (= (and b!1667305 (not c!271373)) b!1667307))

(declare-fun m!2031517 () Bool)

(assert (=> b!1667307 m!2031517))

(declare-fun m!2031519 () Bool)

(assert (=> b!1667307 m!2031519))

(assert (=> b!1667307 m!2031517))

(assert (=> b!1667307 m!2031519))

(declare-fun m!2031521 () Bool)

(assert (=> b!1667307 m!2031521))

(declare-fun m!2031523 () Bool)

(assert (=> b!1667306 m!2031523))

(assert (=> d!503659 d!504075))

(declare-fun d!504079 () Bool)

(assert (=> d!504079 (= (list!7352 (xs!8967 (c!271173 (_1!10447 lt!627160)))) (innerList!6183 (xs!8967 (c!271173 (_1!10447 lt!627160)))))))

(assert (=> b!1666579 d!504079))

(declare-fun b!1667311 () Bool)

(declare-fun e!1068620 () List!18444)

(assert (=> b!1667311 (= e!1068620 (Cons!18374 (h!23775 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (++!5002 (t!152189 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457)))))))))

(declare-fun b!1667312 () Bool)

(declare-fun res!747915 () Bool)

(declare-fun e!1068621 () Bool)

(assert (=> b!1667312 (=> (not res!747915) (not e!1068621))))

(declare-fun lt!627888 () List!18444)

(assert (=> b!1667312 (= res!747915 (= (size!14615 lt!627888) (+ (size!14615 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (size!14615 (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457))))))))))

(declare-fun d!504081 () Bool)

(assert (=> d!504081 e!1068621))

(declare-fun res!747914 () Bool)

(assert (=> d!504081 (=> (not res!747914) (not e!1068621))))

(assert (=> d!504081 (= res!747914 (= (content!2565 lt!627888) ((_ map or) (content!2565 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (content!2565 (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457))))))))))

(assert (=> d!504081 (= lt!627888 e!1068620)))

(declare-fun c!271374 () Bool)

(assert (=> d!504081 (= c!271374 ((_ is Nil!18374) (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))))))

(assert (=> d!504081 (= (++!5002 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))) (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457))))) lt!627888)))

(declare-fun b!1667313 () Bool)

(assert (=> b!1667313 (= e!1068621 (or (not (= (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457)))) Nil!18374)) (= lt!627888 (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667310 () Bool)

(assert (=> b!1667310 (= e!1068620 (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457)))))))

(assert (= (and d!504081 c!271374) b!1667310))

(assert (= (and d!504081 (not c!271374)) b!1667311))

(assert (= (and d!504081 res!747914) b!1667312))

(assert (= (and b!1667312 res!747915) b!1667313))

(assert (=> b!1667311 m!2029805))

(declare-fun m!2031535 () Bool)

(assert (=> b!1667311 m!2031535))

(declare-fun m!2031539 () Bool)

(assert (=> b!1667312 m!2031539))

(assert (=> b!1667312 m!2029803))

(declare-fun m!2031543 () Bool)

(assert (=> b!1667312 m!2031543))

(assert (=> b!1667312 m!2029805))

(declare-fun m!2031545 () Bool)

(assert (=> b!1667312 m!2031545))

(declare-fun m!2031547 () Bool)

(assert (=> d!504081 m!2031547))

(assert (=> d!504081 m!2029803))

(declare-fun m!2031549 () Bool)

(assert (=> d!504081 m!2031549))

(assert (=> d!504081 m!2029805))

(declare-fun m!2031553 () Bool)

(assert (=> d!504081 m!2031553))

(assert (=> b!1666467 d!504081))

(declare-fun d!504085 () Bool)

(assert (=> d!504085 (= (list!7347 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))) (list!7349 (c!271171 (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))))))

(declare-fun bs!397798 () Bool)

(assert (= bs!397798 d!504085))

(declare-fun m!2031555 () Bool)

(assert (=> bs!397798 m!2031555))

(assert (=> b!1666467 d!504085))

(declare-fun d!504087 () Bool)

(declare-fun lt!627890 () BalanceConc!12188)

(assert (=> d!504087 (= (list!7347 lt!627890) (originalCharacters!4051 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))))

(assert (=> d!504087 (= lt!627890 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (value!101927 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))))

(assert (=> d!504087 (= (charsOf!1886 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))) lt!627890)))

(declare-fun b_lambda!52343 () Bool)

(assert (=> (not b_lambda!52343) (not d!504087)))

(declare-fun tb!95599 () Bool)

(declare-fun t!152286 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152286) tb!95599))

(declare-fun b!1667319 () Bool)

(declare-fun e!1068625 () Bool)

(declare-fun tp!480941 () Bool)

(assert (=> b!1667319 (= e!1068625 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (value!101927 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) tp!480941))))

(declare-fun result!115514 () Bool)

(assert (=> tb!95599 (= result!115514 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) (value!101927 (h!23776 (list!7344 (seqFromList!2212 tokens!457)))))) e!1068625))))

(assert (= tb!95599 b!1667319))

(declare-fun m!2031563 () Bool)

(assert (=> b!1667319 m!2031563))

(declare-fun m!2031565 () Bool)

(assert (=> tb!95599 m!2031565))

(assert (=> d!504087 t!152286))

(declare-fun b_and!118469 () Bool)

(assert (= b_and!118449 (and (=> t!152286 result!115514) b_and!118469)))

(declare-fun t!152288 () Bool)

(declare-fun tb!95601 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152288) tb!95601))

(declare-fun result!115516 () Bool)

(assert (= result!115516 result!115514))

(assert (=> d!504087 t!152288))

(declare-fun b_and!118471 () Bool)

(assert (= b_and!118455 (and (=> t!152288 result!115516) b_and!118471)))

(declare-fun t!152290 () Bool)

(declare-fun tb!95603 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152290) tb!95603))

(declare-fun result!115518 () Bool)

(assert (= result!115518 result!115514))

(assert (=> d!504087 t!152290))

(declare-fun b_and!118473 () Bool)

(assert (= b_and!118445 (and (=> t!152290 result!115518) b_and!118473)))

(declare-fun t!152292 () Bool)

(declare-fun tb!95605 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152292) tb!95605))

(declare-fun result!115520 () Bool)

(assert (= result!115520 result!115514))

(assert (=> d!504087 t!152292))

(declare-fun b_and!118475 () Bool)

(assert (= b_and!118447 (and (=> t!152292 result!115520) b_and!118475)))

(declare-fun t!152294 () Bool)

(declare-fun tb!95607 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152294) tb!95607))

(declare-fun result!115522 () Bool)

(assert (= result!115522 result!115514))

(assert (=> d!504087 t!152294))

(declare-fun b_and!118477 () Bool)

(assert (= b_and!118453 (and (=> t!152294 result!115522) b_and!118477)))

(declare-fun tb!95609 () Bool)

(declare-fun t!152296 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152296) tb!95609))

(declare-fun result!115524 () Bool)

(assert (= result!115524 result!115514))

(assert (=> d!504087 t!152296))

(declare-fun b_and!118479 () Bool)

(assert (= b_and!118451 (and (=> t!152296 result!115524) b_and!118479)))

(declare-fun m!2031579 () Bool)

(assert (=> d!504087 m!2031579))

(declare-fun m!2031583 () Bool)

(assert (=> d!504087 m!2031583))

(assert (=> b!1666467 d!504087))

(declare-fun d!504091 () Bool)

(declare-fun c!271376 () Bool)

(assert (=> d!504091 (= c!271376 ((_ is Cons!18375) (t!152190 (list!7344 (seqFromList!2212 tokens!457)))))))

(declare-fun e!1068626 () List!18444)

(assert (=> d!504091 (= (printList!979 thiss!17113 (t!152190 (list!7344 (seqFromList!2212 tokens!457)))) e!1068626)))

(declare-fun b!1667320 () Bool)

(assert (=> b!1667320 (= e!1068626 (++!5002 (list!7347 (charsOf!1886 (h!23776 (t!152190 (list!7344 (seqFromList!2212 tokens!457)))))) (printList!979 thiss!17113 (t!152190 (t!152190 (list!7344 (seqFromList!2212 tokens!457)))))))))

(declare-fun b!1667321 () Bool)

(assert (=> b!1667321 (= e!1068626 Nil!18374)))

(assert (= (and d!504091 c!271376) b!1667320))

(assert (= (and d!504091 (not c!271376)) b!1667321))

(declare-fun m!2031593 () Bool)

(assert (=> b!1667320 m!2031593))

(assert (=> b!1667320 m!2031593))

(declare-fun m!2031597 () Bool)

(assert (=> b!1667320 m!2031597))

(declare-fun m!2031599 () Bool)

(assert (=> b!1667320 m!2031599))

(assert (=> b!1667320 m!2031597))

(assert (=> b!1667320 m!2031599))

(declare-fun m!2031601 () Bool)

(assert (=> b!1667320 m!2031601))

(assert (=> b!1666467 d!504091))

(declare-fun d!504097 () Bool)

(declare-fun c!271383 () Bool)

(assert (=> d!504097 (= c!271383 ((_ is Nil!18373) (text!23738 (value!101927 (h!23776 tokens!457)))))))

(declare-fun e!1068635 () Int)

(assert (=> d!504097 (= (charsToBigInt!0 (text!23738 (value!101927 (h!23776 tokens!457))) 0) e!1068635)))

(declare-fun b!1667336 () Bool)

(assert (=> b!1667336 (= e!1068635 0)))

(declare-fun b!1667337 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!1667337 (= e!1068635 (charsToBigInt!0 (t!152188 (text!23738 (value!101927 (h!23776 tokens!457)))) (+ (* 0 10) (charToBigInt!0 (h!23774 (text!23738 (value!101927 (h!23776 tokens!457))))))))))

(assert (= (and d!504097 c!271383) b!1667336))

(assert (= (and d!504097 (not c!271383)) b!1667337))

(declare-fun m!2031613 () Bool)

(assert (=> b!1667337 m!2031613))

(declare-fun m!2031615 () Bool)

(assert (=> b!1667337 m!2031615))

(assert (=> d!503637 d!504097))

(declare-fun d!504107 () Bool)

(declare-fun res!747922 () Bool)

(declare-fun e!1068636 () Bool)

(assert (=> d!504107 (=> res!747922 e!1068636)))

(assert (=> d!504107 (= res!747922 (or (not ((_ is Cons!18375) (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) (not ((_ is Cons!18375) (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))))

(assert (=> d!504107 (= (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) rules!1846) e!1068636)))

(declare-fun b!1667338 () Bool)

(declare-fun e!1068637 () Bool)

(assert (=> b!1667338 (= e!1068636 e!1068637)))

(declare-fun res!747921 () Bool)

(assert (=> b!1667338 (=> (not res!747921) (not e!1068637))))

(assert (=> b!1667338 (= res!747921 (separableTokensPredicate!806 thiss!17113 (h!23776 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) rules!1846))))

(declare-fun lt!627895 () Unit!31136)

(declare-fun Unit!31158 () Unit!31136)

(assert (=> b!1667338 (= lt!627895 Unit!31158)))

(assert (=> b!1667338 (> (size!14614 (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))) 0)))

(declare-fun lt!627894 () Unit!31136)

(declare-fun Unit!31159 () Unit!31136)

(assert (=> b!1667338 (= lt!627894 Unit!31159)))

(assert (=> b!1667338 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(declare-fun lt!627896 () Unit!31136)

(declare-fun Unit!31160 () Unit!31136)

(assert (=> b!1667338 (= lt!627896 Unit!31160)))

(assert (=> b!1667338 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))

(declare-fun lt!627900 () Unit!31136)

(declare-fun lt!627897 () Unit!31136)

(assert (=> b!1667338 (= lt!627900 lt!627897)))

(assert (=> b!1667338 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(assert (=> b!1667338 (= lt!627897 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))))

(declare-fun lt!627899 () Unit!31136)

(declare-fun lt!627898 () Unit!31136)

(assert (=> b!1667338 (= lt!627899 lt!627898)))

(assert (=> b!1667338 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))

(assert (=> b!1667338 (= lt!627898 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) (h!23776 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(declare-fun b!1667339 () Bool)

(assert (=> b!1667339 (= e!1068637 (tokensListTwoByTwoPredicateSeparableList!559 thiss!17113 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (t!152190 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) rules!1846))))

(assert (= (and d!504107 (not res!747922)) b!1667338))

(assert (= (and b!1667338 res!747921) b!1667339))

(declare-fun m!2031617 () Bool)

(assert (=> b!1667338 m!2031617))

(declare-fun m!2031619 () Bool)

(assert (=> b!1667338 m!2031619))

(declare-fun m!2031621 () Bool)

(assert (=> b!1667338 m!2031621))

(declare-fun m!2031627 () Bool)

(assert (=> b!1667338 m!2031627))

(assert (=> b!1667338 m!2031617))

(declare-fun m!2031633 () Bool)

(assert (=> b!1667338 m!2031633))

(declare-fun m!2031635 () Bool)

(assert (=> b!1667338 m!2031635))

(declare-fun m!2031637 () Bool)

(assert (=> b!1667338 m!2031637))

(declare-fun m!2031639 () Bool)

(assert (=> b!1667339 m!2031639))

(assert (=> b!1666479 d!504107))

(declare-fun d!504111 () Bool)

(declare-fun res!747923 () Bool)

(declare-fun e!1068640 () Bool)

(assert (=> d!504111 (=> res!747923 e!1068640)))

(assert (=> d!504111 (= res!747923 ((_ is Nil!18375) (t!152190 tokens!457)))))

(assert (=> d!504111 (= (forall!4176 (t!152190 tokens!457) lambda!67948) e!1068640)))

(declare-fun b!1667344 () Bool)

(declare-fun e!1068641 () Bool)

(assert (=> b!1667344 (= e!1068640 e!1068641)))

(declare-fun res!747924 () Bool)

(assert (=> b!1667344 (=> (not res!747924) (not e!1068641))))

(assert (=> b!1667344 (= res!747924 (dynLambda!8278 lambda!67948 (h!23776 (t!152190 tokens!457))))))

(declare-fun b!1667345 () Bool)

(assert (=> b!1667345 (= e!1068641 (forall!4176 (t!152190 (t!152190 tokens!457)) lambda!67948))))

(assert (= (and d!504111 (not res!747923)) b!1667344))

(assert (= (and b!1667344 res!747924) b!1667345))

(declare-fun b_lambda!52345 () Bool)

(assert (=> (not b_lambda!52345) (not b!1667344)))

(declare-fun m!2031641 () Bool)

(assert (=> b!1667344 m!2031641))

(declare-fun m!2031643 () Bool)

(assert (=> b!1667345 m!2031643))

(assert (=> b!1666670 d!504111))

(declare-fun b!1667349 () Bool)

(declare-fun e!1068643 () List!18444)

(assert (=> b!1667349 (= e!1068643 (++!5002 (list!7349 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) (list!7349 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))))

(declare-fun b!1667347 () Bool)

(declare-fun e!1068642 () List!18444)

(assert (=> b!1667347 (= e!1068642 e!1068643)))

(declare-fun c!271387 () Bool)

(assert (=> b!1667347 (= c!271387 ((_ is Leaf!8961) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(declare-fun b!1667348 () Bool)

(assert (=> b!1667348 (= e!1068643 (list!7354 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun d!504113 () Bool)

(declare-fun c!271386 () Bool)

(assert (=> d!504113 (= c!271386 ((_ is Empty!6122) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))

(assert (=> d!504113 (= (list!7349 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) e!1068642)))

(declare-fun b!1667346 () Bool)

(assert (=> b!1667346 (= e!1068642 Nil!18374)))

(assert (= (and d!504113 c!271386) b!1667346))

(assert (= (and d!504113 (not c!271386)) b!1667347))

(assert (= (and b!1667347 c!271387) b!1667348))

(assert (= (and b!1667347 (not c!271387)) b!1667349))

(declare-fun m!2031645 () Bool)

(assert (=> b!1667349 m!2031645))

(declare-fun m!2031647 () Bool)

(assert (=> b!1667349 m!2031647))

(assert (=> b!1667349 m!2031645))

(assert (=> b!1667349 m!2031647))

(declare-fun m!2031649 () Bool)

(assert (=> b!1667349 m!2031649))

(declare-fun m!2031651 () Bool)

(assert (=> b!1667348 m!2031651))

(assert (=> d!503727 d!504113))

(declare-fun b!1667350 () Bool)

(declare-fun e!1068644 () Bool)

(assert (=> b!1667350 (= e!1068644 (inv!17 (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))))

(declare-fun b!1667351 () Bool)

(declare-fun res!747925 () Bool)

(declare-fun e!1068646 () Bool)

(assert (=> b!1667351 (=> res!747925 e!1068646)))

(assert (=> b!1667351 (= res!747925 (not ((_ is IntegerValue!9983) (value!101927 (h!23776 (t!152190 (t!152190 tokens!457)))))))))

(assert (=> b!1667351 (= e!1068644 e!1068646)))

(declare-fun d!504115 () Bool)

(declare-fun c!271388 () Bool)

(assert (=> d!504115 (= c!271388 ((_ is IntegerValue!9981) (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))))

(declare-fun e!1068645 () Bool)

(assert (=> d!504115 (= (inv!21 (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))) e!1068645)))

(declare-fun b!1667352 () Bool)

(assert (=> b!1667352 (= e!1068645 (inv!16 (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))))

(declare-fun b!1667353 () Bool)

(assert (=> b!1667353 (= e!1068645 e!1068644)))

(declare-fun c!271389 () Bool)

(assert (=> b!1667353 (= c!271389 ((_ is IntegerValue!9982) (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))))

(declare-fun b!1667354 () Bool)

(assert (=> b!1667354 (= e!1068646 (inv!15 (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))))

(assert (= (and d!504115 c!271388) b!1667352))

(assert (= (and d!504115 (not c!271388)) b!1667353))

(assert (= (and b!1667353 c!271389) b!1667350))

(assert (= (and b!1667353 (not c!271389)) b!1667351))

(assert (= (and b!1667351 (not res!747925)) b!1667354))

(declare-fun m!2031653 () Bool)

(assert (=> b!1667350 m!2031653))

(declare-fun m!2031655 () Bool)

(assert (=> b!1667352 m!2031655))

(declare-fun m!2031657 () Bool)

(assert (=> b!1667354 m!2031657))

(assert (=> b!1666751 d!504115))

(declare-fun b!1667358 () Bool)

(declare-fun e!1068648 () List!18444)

(assert (=> b!1667358 (= e!1068648 (++!5002 (list!7349 (left!14698 (c!271171 (_2!10447 lt!627160)))) (list!7349 (right!15028 (c!271171 (_2!10447 lt!627160))))))))

(declare-fun b!1667356 () Bool)

(declare-fun e!1068647 () List!18444)

(assert (=> b!1667356 (= e!1068647 e!1068648)))

(declare-fun c!271391 () Bool)

(assert (=> b!1667356 (= c!271391 ((_ is Leaf!8961) (c!271171 (_2!10447 lt!627160))))))

(declare-fun b!1667357 () Bool)

(assert (=> b!1667357 (= e!1068648 (list!7354 (xs!8966 (c!271171 (_2!10447 lt!627160)))))))

(declare-fun d!504117 () Bool)

(declare-fun c!271390 () Bool)

(assert (=> d!504117 (= c!271390 ((_ is Empty!6122) (c!271171 (_2!10447 lt!627160))))))

(assert (=> d!504117 (= (list!7349 (c!271171 (_2!10447 lt!627160))) e!1068647)))

(declare-fun b!1667355 () Bool)

(assert (=> b!1667355 (= e!1068647 Nil!18374)))

(assert (= (and d!504117 c!271390) b!1667355))

(assert (= (and d!504117 (not c!271390)) b!1667356))

(assert (= (and b!1667356 c!271391) b!1667357))

(assert (= (and b!1667356 (not c!271391)) b!1667358))

(declare-fun m!2031661 () Bool)

(assert (=> b!1667358 m!2031661))

(declare-fun m!2031663 () Bool)

(assert (=> b!1667358 m!2031663))

(assert (=> b!1667358 m!2031661))

(assert (=> b!1667358 m!2031663))

(declare-fun m!2031665 () Bool)

(assert (=> b!1667358 m!2031665))

(declare-fun m!2031667 () Bool)

(assert (=> b!1667357 m!2031667))

(assert (=> d!503715 d!504117))

(declare-fun d!504123 () Bool)

(declare-fun lt!627904 () Token!6040)

(assert (=> d!504123 (= lt!627904 (apply!4936 (list!7344 (_1!10447 lt!627231)) 0))))

(assert (=> d!504123 (= lt!627904 (apply!4940 (c!271173 (_1!10447 lt!627231)) 0))))

(declare-fun e!1068650 () Bool)

(assert (=> d!504123 e!1068650))

(declare-fun res!747927 () Bool)

(assert (=> d!504123 (=> (not res!747927) (not e!1068650))))

(assert (=> d!504123 (= res!747927 (<= 0 0))))

(assert (=> d!504123 (= (apply!4933 (_1!10447 lt!627231) 0) lt!627904)))

(declare-fun b!1667360 () Bool)

(assert (=> b!1667360 (= e!1068650 (< 0 (size!14616 (_1!10447 lt!627231))))))

(assert (= (and d!504123 res!747927) b!1667360))

(declare-fun m!2031673 () Bool)

(assert (=> d!504123 m!2031673))

(assert (=> d!504123 m!2031673))

(declare-fun m!2031677 () Bool)

(assert (=> d!504123 m!2031677))

(declare-fun m!2031679 () Bool)

(assert (=> d!504123 m!2031679))

(assert (=> b!1667360 m!2029753))

(assert (=> b!1666447 d!504123))

(declare-fun d!504129 () Bool)

(declare-fun res!747939 () Bool)

(declare-fun e!1068658 () Bool)

(assert (=> d!504129 (=> (not res!747939) (not e!1068658))))

(assert (=> d!504129 (= res!747939 (= (csize!12474 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) (+ (size!14622 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) (size!14622 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))))

(assert (=> d!504129 (= (inv!23726 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) e!1068658)))

(declare-fun b!1667373 () Bool)

(declare-fun res!747940 () Bool)

(assert (=> b!1667373 (=> (not res!747940) (not e!1068658))))

(assert (=> b!1667373 (= res!747940 (and (not (= (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) Empty!6122)) (not (= (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) Empty!6122))))))

(declare-fun b!1667374 () Bool)

(declare-fun res!747941 () Bool)

(assert (=> b!1667374 (=> (not res!747941) (not e!1068658))))

(assert (=> b!1667374 (= res!747941 (= (cheight!6333 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) (+ (max!0 (height!967 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) (height!967 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) 1)))))

(declare-fun b!1667375 () Bool)

(assert (=> b!1667375 (= e!1068658 (<= 0 (cheight!6333 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(assert (= (and d!504129 res!747939) b!1667373))

(assert (= (and b!1667373 res!747940) b!1667374))

(assert (= (and b!1667374 res!747941) b!1667375))

(declare-fun m!2031699 () Bool)

(assert (=> d!504129 m!2031699))

(declare-fun m!2031701 () Bool)

(assert (=> d!504129 m!2031701))

(declare-fun m!2031703 () Bool)

(assert (=> b!1667374 m!2031703))

(declare-fun m!2031705 () Bool)

(assert (=> b!1667374 m!2031705))

(assert (=> b!1667374 m!2031703))

(assert (=> b!1667374 m!2031705))

(declare-fun m!2031707 () Bool)

(assert (=> b!1667374 m!2031707))

(assert (=> b!1666691 d!504129))

(declare-fun d!504135 () Bool)

(assert (=> d!504135 (= (isEmpty!11436 (_1!10449 lt!627281)) ((_ is Nil!18375) (_1!10449 lt!627281)))))

(assert (=> b!1666491 d!504135))

(declare-fun d!504139 () Bool)

(assert (=> d!504139 (= (inv!17 (value!101927 (h!23776 (t!152190 tokens!457)))) (= (charsToBigInt!1 (text!23737 (value!101927 (h!23776 (t!152190 tokens!457))))) (value!101919 (value!101927 (h!23776 (t!152190 tokens!457))))))))

(declare-fun bs!397803 () Bool)

(assert (= bs!397803 d!504139))

(declare-fun m!2031723 () Bool)

(assert (=> bs!397803 m!2031723))

(assert (=> b!1666652 d!504139))

(declare-fun d!504141 () Bool)

(declare-fun res!747948 () Bool)

(declare-fun e!1068667 () Bool)

(assert (=> d!504141 (=> (not res!747948) (not e!1068667))))

(assert (=> d!504141 (= res!747948 (<= (size!14615 (list!7354 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) 512))))

(assert (=> d!504141 (= (inv!23727 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) e!1068667)))

(declare-fun b!1667392 () Bool)

(declare-fun res!747949 () Bool)

(assert (=> b!1667392 (=> (not res!747949) (not e!1068667))))

(assert (=> b!1667392 (= res!747949 (= (csize!12475 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) (size!14615 (list!7354 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))))

(declare-fun b!1667393 () Bool)

(assert (=> b!1667393 (= e!1068667 (and (> (csize!12475 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) 0) (<= (csize!12475 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) 512)))))

(assert (= (and d!504141 res!747948) b!1667392))

(assert (= (and b!1667392 res!747949) b!1667393))

(assert (=> d!504141 m!2031651))

(assert (=> d!504141 m!2031651))

(declare-fun m!2031741 () Bool)

(assert (=> d!504141 m!2031741))

(assert (=> b!1667392 m!2031651))

(assert (=> b!1667392 m!2031651))

(assert (=> b!1667392 m!2031741))

(assert (=> b!1666693 d!504141))

(declare-fun bs!397804 () Bool)

(declare-fun d!504147 () Bool)

(assert (= bs!397804 (and d!504147 d!503589)))

(declare-fun lambda!67977 () Int)

(assert (=> bs!397804 (= lambda!67977 lambda!67948)))

(declare-fun bs!397805 () Bool)

(assert (= bs!397805 (and d!504147 d!503719)))

(assert (=> bs!397805 (= lambda!67977 lambda!67964)))

(declare-fun b!1667402 () Bool)

(declare-fun e!1068676 () Bool)

(assert (=> b!1667402 (= e!1068676 true)))

(declare-fun b!1667401 () Bool)

(declare-fun e!1068675 () Bool)

(assert (=> b!1667401 (= e!1068675 e!1068676)))

(declare-fun b!1667400 () Bool)

(declare-fun e!1068674 () Bool)

(assert (=> b!1667400 (= e!1068674 e!1068675)))

(assert (=> d!504147 e!1068674))

(assert (= b!1667401 b!1667402))

(assert (= b!1667400 b!1667401))

(assert (= (and d!504147 ((_ is Cons!18376) rules!1846)) b!1667400))

(assert (=> b!1667402 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8272 order!11017 lambda!67977))))

(assert (=> b!1667402 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 rules!1846)))) (dynLambda!8272 order!11017 lambda!67977))))

(assert (=> d!504147 true))

(declare-fun lt!627911 () Bool)

(assert (=> d!504147 (= lt!627911 (forall!4176 (t!152190 (t!152190 tokens!457)) lambda!67977))))

(declare-fun e!1068673 () Bool)

(assert (=> d!504147 (= lt!627911 e!1068673)))

(declare-fun res!747954 () Bool)

(assert (=> d!504147 (=> res!747954 e!1068673)))

(assert (=> d!504147 (= res!747954 (not ((_ is Cons!18375) (t!152190 (t!152190 tokens!457)))))))

(assert (=> d!504147 (not (isEmpty!11428 rules!1846))))

(assert (=> d!504147 (= (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 (t!152190 (t!152190 tokens!457))) lt!627911)))

(declare-fun b!1667398 () Bool)

(declare-fun e!1068672 () Bool)

(assert (=> b!1667398 (= e!1068673 e!1068672)))

(declare-fun res!747955 () Bool)

(assert (=> b!1667398 (=> (not res!747955) (not e!1068672))))

(assert (=> b!1667398 (= res!747955 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (t!152190 tokens!457)))))))

(declare-fun b!1667399 () Bool)

(assert (=> b!1667399 (= e!1068672 (rulesProduceEachTokenIndividuallyList!1068 thiss!17113 rules!1846 (t!152190 (t!152190 (t!152190 tokens!457)))))))

(assert (= (and d!504147 (not res!747954)) b!1667398))

(assert (= (and b!1667398 res!747955) b!1667399))

(declare-fun m!2031749 () Bool)

(assert (=> d!504147 m!2031749))

(assert (=> d!504147 m!2029519))

(declare-fun m!2031751 () Bool)

(assert (=> b!1667398 m!2031751))

(declare-fun m!2031755 () Bool)

(assert (=> b!1667399 m!2031755))

(assert (=> b!1666565 d!504147))

(declare-fun bs!397808 () Bool)

(declare-fun d!504151 () Bool)

(assert (= bs!397808 (and d!504151 d!503711)))

(declare-fun lambda!67978 () Int)

(assert (=> bs!397808 (= (= (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (= lambda!67978 lambda!67963))))

(declare-fun bs!397809 () Bool)

(assert (= bs!397809 (and d!504151 d!503793)))

(assert (=> bs!397809 (= (= (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (= lambda!67978 lambda!67972))))

(assert (=> d!504151 true))

(assert (=> d!504151 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (dynLambda!8276 order!11025 lambda!67978))))

(assert (=> d!504151 (= (equivClasses!1203 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (Forall2!531 lambda!67978))))

(declare-fun bs!397810 () Bool)

(assert (= bs!397810 d!504151))

(declare-fun m!2031763 () Bool)

(assert (=> bs!397810 m!2031763))

(assert (=> b!1666450 d!504151))

(declare-fun d!504157 () Bool)

(assert (=> d!504157 (= (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))) (isBalanced!1899 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))))))

(declare-fun bs!397812 () Bool)

(assert (= bs!397812 d!504157))

(declare-fun m!2031767 () Bool)

(assert (=> bs!397812 m!2031767))

(assert (=> tb!95551 d!504157))

(declare-fun d!504161 () Bool)

(declare-fun choose!625 (List!18443) (_ BitVec 32))

(assert (=> d!504161 (= (charsToInt!0 (text!23736 (value!101927 (h!23776 tokens!457)))) (choose!625 (text!23736 (value!101927 (h!23776 tokens!457)))))))

(declare-fun bs!397813 () Bool)

(assert (= bs!397813 d!504161))

(declare-fun m!2031771 () Bool)

(assert (=> bs!397813 m!2031771))

(assert (=> d!503779 d!504161))

(assert (=> b!1666237 d!503799))

(declare-fun d!504167 () Bool)

(declare-fun lt!627917 () Int)

(assert (=> d!504167 (>= lt!627917 0)))

(declare-fun e!1068686 () Int)

(assert (=> d!504167 (= lt!627917 e!1068686)))

(declare-fun c!271402 () Bool)

(assert (=> d!504167 (= c!271402 ((_ is Nil!18375) (_1!10449 lt!627281)))))

(assert (=> d!504167 (= (size!14618 (_1!10449 lt!627281)) lt!627917)))

(declare-fun b!1667417 () Bool)

(assert (=> b!1667417 (= e!1068686 0)))

(declare-fun b!1667418 () Bool)

(assert (=> b!1667418 (= e!1068686 (+ 1 (size!14618 (t!152190 (_1!10449 lt!627281)))))))

(assert (= (and d!504167 c!271402) b!1667417))

(assert (= (and d!504167 (not c!271402)) b!1667418))

(declare-fun m!2031787 () Bool)

(assert (=> b!1667418 m!2031787))

(assert (=> d!503657 d!504167))

(declare-fun call!106543 () Option!3525)

(declare-fun bm!106538 () Bool)

(declare-fun maxPrefixOneRule!830 (LexerInterface!2866 Rule!6274 List!18444) Option!3525)

(assert (=> bm!106538 (= call!106543 (maxPrefixOneRule!830 thiss!17113 (h!23777 rules!1846) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(declare-fun b!1667437 () Bool)

(declare-fun res!747977 () Bool)

(declare-fun e!1068694 () Bool)

(assert (=> b!1667437 (=> (not res!747977) (not e!1068694))))

(declare-fun lt!627930 () Option!3525)

(declare-fun apply!4941 (TokenValueInjection!6314 BalanceConc!12188) TokenValue!3327)

(declare-fun seqFromList!2213 (List!18444) BalanceConc!12188)

(assert (=> b!1667437 (= res!747977 (= (value!101927 (_1!10450 (get!5380 lt!627930))) (apply!4941 (transformation!3237 (rule!5125 (_1!10450 (get!5380 lt!627930)))) (seqFromList!2213 (originalCharacters!4051 (_1!10450 (get!5380 lt!627930)))))))))

(declare-fun b!1667438 () Bool)

(declare-fun e!1068695 () Bool)

(assert (=> b!1667438 (= e!1068695 e!1068694)))

(declare-fun res!747976 () Bool)

(assert (=> b!1667438 (=> (not res!747976) (not e!1068694))))

(assert (=> b!1667438 (= res!747976 (isDefined!2881 lt!627930))))

(declare-fun b!1667439 () Bool)

(declare-fun contains!3211 (List!18446 Rule!6274) Bool)

(assert (=> b!1667439 (= e!1068694 (contains!3211 rules!1846 (rule!5125 (_1!10450 (get!5380 lt!627930)))))))

(declare-fun b!1667440 () Bool)

(declare-fun res!747978 () Bool)

(assert (=> b!1667440 (=> (not res!747978) (not e!1068694))))

(assert (=> b!1667440 (= res!747978 (= (list!7347 (charsOf!1886 (_1!10450 (get!5380 lt!627930)))) (originalCharacters!4051 (_1!10450 (get!5380 lt!627930)))))))

(declare-fun b!1667441 () Bool)

(declare-fun e!1068693 () Option!3525)

(assert (=> b!1667441 (= e!1068693 call!106543)))

(declare-fun b!1667442 () Bool)

(declare-fun res!747975 () Bool)

(assert (=> b!1667442 (=> (not res!747975) (not e!1068694))))

(declare-fun matchR!2057 (Regex!4565 List!18444) Bool)

(assert (=> b!1667442 (= res!747975 (matchR!2057 (regex!3237 (rule!5125 (_1!10450 (get!5380 lt!627930)))) (list!7347 (charsOf!1886 (_1!10450 (get!5380 lt!627930))))))))

(declare-fun b!1667443 () Bool)

(declare-fun res!747980 () Bool)

(assert (=> b!1667443 (=> (not res!747980) (not e!1068694))))

(assert (=> b!1667443 (= res!747980 (= (++!5002 (list!7347 (charsOf!1886 (_1!10450 (get!5380 lt!627930)))) (_2!10450 (get!5380 lt!627930))) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(declare-fun d!504173 () Bool)

(assert (=> d!504173 e!1068695))

(declare-fun res!747974 () Bool)

(assert (=> d!504173 (=> res!747974 e!1068695)))

(declare-fun isEmpty!11440 (Option!3525) Bool)

(assert (=> d!504173 (= res!747974 (isEmpty!11440 lt!627930))))

(assert (=> d!504173 (= lt!627930 e!1068693)))

(declare-fun c!271405 () Bool)

(assert (=> d!504173 (= c!271405 (and ((_ is Cons!18376) rules!1846) ((_ is Nil!18376) (t!152191 rules!1846))))))

(declare-fun lt!627929 () Unit!31136)

(declare-fun lt!627931 () Unit!31136)

(assert (=> d!504173 (= lt!627929 lt!627931)))

(assert (=> d!504173 (isPrefix!1494 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!504173 (= lt!627931 (lemmaIsPrefixRefl!1015 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (=> d!504173 (rulesValidInductive!1038 thiss!17113 rules!1846)))

(assert (=> d!504173 (= (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))) lt!627930)))

(declare-fun b!1667444 () Bool)

(declare-fun res!747979 () Bool)

(assert (=> b!1667444 (=> (not res!747979) (not e!1068694))))

(assert (=> b!1667444 (= res!747979 (< (size!14615 (_2!10450 (get!5380 lt!627930))) (size!14615 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))

(declare-fun b!1667445 () Bool)

(declare-fun lt!627928 () Option!3525)

(declare-fun lt!627932 () Option!3525)

(assert (=> b!1667445 (= e!1068693 (ite (and ((_ is None!3524) lt!627928) ((_ is None!3524) lt!627932)) None!3524 (ite ((_ is None!3524) lt!627932) lt!627928 (ite ((_ is None!3524) lt!627928) lt!627932 (ite (>= (size!14610 (_1!10450 (v!24773 lt!627928))) (size!14610 (_1!10450 (v!24773 lt!627932)))) lt!627928 lt!627932)))))))

(assert (=> b!1667445 (= lt!627928 call!106543)))

(assert (=> b!1667445 (= lt!627932 (maxPrefix!1427 thiss!17113 (t!152191 rules!1846) (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))

(assert (= (and d!504173 c!271405) b!1667441))

(assert (= (and d!504173 (not c!271405)) b!1667445))

(assert (= (or b!1667441 b!1667445) bm!106538))

(assert (= (and d!504173 (not res!747974)) b!1667438))

(assert (= (and b!1667438 res!747976) b!1667440))

(assert (= (and b!1667440 res!747978) b!1667444))

(assert (= (and b!1667444 res!747979) b!1667443))

(assert (= (and b!1667443 res!747980) b!1667437))

(assert (= (and b!1667437 res!747977) b!1667442))

(assert (= (and b!1667442 res!747975) b!1667439))

(declare-fun m!2031789 () Bool)

(assert (=> b!1667438 m!2031789))

(assert (=> bm!106538 m!2029705))

(declare-fun m!2031791 () Bool)

(assert (=> bm!106538 m!2031791))

(declare-fun m!2031793 () Bool)

(assert (=> b!1667439 m!2031793))

(declare-fun m!2031795 () Bool)

(assert (=> b!1667439 m!2031795))

(declare-fun m!2031797 () Bool)

(assert (=> d!504173 m!2031797))

(assert (=> d!504173 m!2029705))

(assert (=> d!504173 m!2029705))

(declare-fun m!2031799 () Bool)

(assert (=> d!504173 m!2031799))

(assert (=> d!504173 m!2029705))

(assert (=> d!504173 m!2029705))

(declare-fun m!2031801 () Bool)

(assert (=> d!504173 m!2031801))

(assert (=> d!504173 m!2030075))

(assert (=> b!1667437 m!2031793))

(declare-fun m!2031803 () Bool)

(assert (=> b!1667437 m!2031803))

(assert (=> b!1667437 m!2031803))

(declare-fun m!2031805 () Bool)

(assert (=> b!1667437 m!2031805))

(assert (=> b!1667443 m!2031793))

(declare-fun m!2031807 () Bool)

(assert (=> b!1667443 m!2031807))

(assert (=> b!1667443 m!2031807))

(declare-fun m!2031809 () Bool)

(assert (=> b!1667443 m!2031809))

(assert (=> b!1667443 m!2031809))

(declare-fun m!2031811 () Bool)

(assert (=> b!1667443 m!2031811))

(assert (=> b!1667440 m!2031793))

(assert (=> b!1667440 m!2031807))

(assert (=> b!1667440 m!2031807))

(assert (=> b!1667440 m!2031809))

(assert (=> b!1667442 m!2031793))

(assert (=> b!1667442 m!2031807))

(assert (=> b!1667442 m!2031807))

(assert (=> b!1667442 m!2031809))

(assert (=> b!1667442 m!2031809))

(declare-fun m!2031813 () Bool)

(assert (=> b!1667442 m!2031813))

(assert (=> b!1667445 m!2029705))

(declare-fun m!2031815 () Bool)

(assert (=> b!1667445 m!2031815))

(assert (=> b!1667444 m!2031793))

(declare-fun m!2031817 () Bool)

(assert (=> b!1667444 m!2031817))

(assert (=> b!1667444 m!2029705))

(assert (=> b!1667444 m!2029891))

(assert (=> d!503657 d!504173))

(declare-fun b!1667449 () Bool)

(declare-fun e!1068697 () List!18444)

(assert (=> b!1667449 (= e!1068697 (++!5002 (list!7349 (left!14698 (c!271171 lt!627223))) (list!7349 (right!15028 (c!271171 lt!627223)))))))

(declare-fun b!1667447 () Bool)

(declare-fun e!1068696 () List!18444)

(assert (=> b!1667447 (= e!1068696 e!1068697)))

(declare-fun c!271407 () Bool)

(assert (=> b!1667447 (= c!271407 ((_ is Leaf!8961) (c!271171 lt!627223)))))

(declare-fun b!1667448 () Bool)

(assert (=> b!1667448 (= e!1068697 (list!7354 (xs!8966 (c!271171 lt!627223))))))

(declare-fun d!504175 () Bool)

(declare-fun c!271406 () Bool)

(assert (=> d!504175 (= c!271406 ((_ is Empty!6122) (c!271171 lt!627223)))))

(assert (=> d!504175 (= (list!7349 (c!271171 lt!627223)) e!1068696)))

(declare-fun b!1667446 () Bool)

(assert (=> b!1667446 (= e!1068696 Nil!18374)))

(assert (= (and d!504175 c!271406) b!1667446))

(assert (= (and d!504175 (not c!271406)) b!1667447))

(assert (= (and b!1667447 c!271407) b!1667448))

(assert (= (and b!1667447 (not c!271407)) b!1667449))

(declare-fun m!2031819 () Bool)

(assert (=> b!1667449 m!2031819))

(declare-fun m!2031821 () Bool)

(assert (=> b!1667449 m!2031821))

(assert (=> b!1667449 m!2031819))

(assert (=> b!1667449 m!2031821))

(declare-fun m!2031823 () Bool)

(assert (=> b!1667449 m!2031823))

(declare-fun m!2031825 () Bool)

(assert (=> b!1667448 m!2031825))

(assert (=> d!503639 d!504175))

(declare-fun d!504177 () Bool)

(assert (=> d!504177 (= (inv!23728 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) (<= (size!14615 (innerList!6182 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) 2147483647))))

(declare-fun bs!397815 () Bool)

(assert (= bs!397815 d!504177))

(declare-fun m!2031827 () Bool)

(assert (=> bs!397815 m!2031827))

(assert (=> b!1666771 d!504177))

(declare-fun bs!397816 () Bool)

(declare-fun d!504179 () Bool)

(assert (= bs!397816 (and d!504179 d!503711)))

(declare-fun lambda!67979 () Int)

(assert (=> bs!397816 (= (= (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (= lambda!67979 lambda!67963))))

(declare-fun bs!397817 () Bool)

(assert (= bs!397817 (and d!504179 d!503793)))

(assert (=> bs!397817 (= (= (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (h!23777 rules!1846)))) (= lambda!67979 lambda!67972))))

(declare-fun bs!397818 () Bool)

(assert (= bs!397818 (and d!504179 d!504151)))

(assert (=> bs!397818 (= (= (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (= lambda!67979 lambda!67978))))

(assert (=> d!504179 true))

(assert (=> d!504179 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8276 order!11025 lambda!67979))))

(assert (=> d!504179 (= (equivClasses!1203 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (Forall2!531 lambda!67979))))

(declare-fun bs!397819 () Bool)

(assert (= bs!397819 d!504179))

(declare-fun m!2031829 () Bool)

(assert (=> bs!397819 m!2031829))

(assert (=> b!1666559 d!504179))

(declare-fun d!504181 () Bool)

(assert (=> d!504181 (= (inv!16 (value!101927 (h!23776 (t!152190 tokens!457)))) (= (charsToInt!0 (text!23736 (value!101927 (h!23776 (t!152190 tokens!457))))) (value!101918 (value!101927 (h!23776 (t!152190 tokens!457))))))))

(declare-fun bs!397820 () Bool)

(assert (= bs!397820 d!504181))

(declare-fun m!2031831 () Bool)

(assert (=> bs!397820 m!2031831))

(assert (=> b!1666654 d!504181))

(declare-fun b!1667462 () Bool)

(declare-fun res!747996 () Bool)

(declare-fun e!1068703 () Bool)

(assert (=> b!1667462 (=> (not res!747996) (not e!1068703))))

(assert (=> b!1667462 (= res!747996 (not (isEmpty!11435 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))))

(declare-fun b!1667463 () Bool)

(declare-fun res!747998 () Bool)

(assert (=> b!1667463 (=> (not res!747998) (not e!1068703))))

(assert (=> b!1667463 (= res!747998 (isBalanced!1899 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun d!504183 () Bool)

(declare-fun res!747995 () Bool)

(declare-fun e!1068702 () Bool)

(assert (=> d!504183 (=> res!747995 e!1068702)))

(assert (=> d!504183 (= res!747995 (not ((_ is Node!6122) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(assert (=> d!504183 (= (isBalanced!1899 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))) e!1068702)))

(declare-fun b!1667464 () Bool)

(assert (=> b!1667464 (= e!1068703 (not (isEmpty!11435 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))))))

(declare-fun b!1667465 () Bool)

(declare-fun res!747994 () Bool)

(assert (=> b!1667465 (=> (not res!747994) (not e!1068703))))

(assert (=> b!1667465 (= res!747994 (isBalanced!1899 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))

(declare-fun b!1667466 () Bool)

(assert (=> b!1667466 (= e!1068702 e!1068703)))

(declare-fun res!747997 () Bool)

(assert (=> b!1667466 (=> (not res!747997) (not e!1068703))))

(assert (=> b!1667466 (= res!747997 (<= (- 1) (- (height!967 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) (height!967 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))))))

(declare-fun b!1667467 () Bool)

(declare-fun res!747993 () Bool)

(assert (=> b!1667467 (=> (not res!747993) (not e!1068703))))

(assert (=> b!1667467 (= res!747993 (<= (- (height!967 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) (height!967 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) 1))))

(assert (= (and d!504183 (not res!747995)) b!1667466))

(assert (= (and b!1667466 res!747997) b!1667467))

(assert (= (and b!1667467 res!747993) b!1667465))

(assert (= (and b!1667465 res!747994) b!1667463))

(assert (= (and b!1667463 res!747998) b!1667462))

(assert (= (and b!1667462 res!747996) b!1667464))

(declare-fun m!2031833 () Bool)

(assert (=> b!1667462 m!2031833))

(declare-fun m!2031835 () Bool)

(assert (=> b!1667465 m!2031835))

(assert (=> b!1667467 m!2031703))

(assert (=> b!1667467 m!2031705))

(declare-fun m!2031837 () Bool)

(assert (=> b!1667464 m!2031837))

(assert (=> b!1667466 m!2031703))

(assert (=> b!1667466 m!2031705))

(declare-fun m!2031839 () Bool)

(assert (=> b!1667463 m!2031839))

(assert (=> d!503633 d!504183))

(declare-fun d!504185 () Bool)

(declare-fun lt!627933 () Bool)

(assert (=> d!504185 (= lt!627933 (isEmpty!11433 (list!7347 (_2!10447 lt!627550))))))

(assert (=> d!504185 (= lt!627933 (isEmpty!11435 (c!271171 (_2!10447 lt!627550))))))

(assert (=> d!504185 (= (isEmpty!11429 (_2!10447 lt!627550)) lt!627933)))

(declare-fun bs!397821 () Bool)

(assert (= bs!397821 d!504185))

(declare-fun m!2031841 () Bool)

(assert (=> bs!397821 m!2031841))

(assert (=> bs!397821 m!2031841))

(declare-fun m!2031843 () Bool)

(assert (=> bs!397821 m!2031843))

(declare-fun m!2031845 () Bool)

(assert (=> bs!397821 m!2031845))

(assert (=> b!1666638 d!504185))

(declare-fun b!1667468 () Bool)

(declare-fun e!1068706 () Bool)

(declare-fun lt!627935 () tuple2!18090)

(assert (=> b!1667468 (= e!1068706 (= (list!7347 (_2!10447 lt!627935)) (list!7347 (_2!10451 (v!24774 lt!627392)))))))

(declare-fun b!1667469 () Bool)

(declare-fun e!1068707 () tuple2!18090)

(assert (=> b!1667469 (= e!1068707 (tuple2!18091 (BalanceConc!12191 Empty!6123) (_2!10451 (v!24774 lt!627392))))))

(declare-fun b!1667470 () Bool)

(declare-fun e!1068704 () Bool)

(assert (=> b!1667470 (= e!1068704 (not (isEmpty!11434 (_1!10447 lt!627935))))))

(declare-fun b!1667471 () Bool)

(assert (=> b!1667471 (= e!1068706 e!1068704)))

(declare-fun res!747999 () Bool)

(assert (=> b!1667471 (= res!747999 (< (size!14614 (_2!10447 lt!627935)) (size!14614 (_2!10451 (v!24774 lt!627392)))))))

(assert (=> b!1667471 (=> (not res!747999) (not e!1068704))))

(declare-fun b!1667472 () Bool)

(declare-fun res!748001 () Bool)

(declare-fun e!1068705 () Bool)

(assert (=> b!1667472 (=> (not res!748001) (not e!1068705))))

(assert (=> b!1667472 (= res!748001 (= (list!7344 (_1!10447 lt!627935)) (_1!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (_2!10451 (v!24774 lt!627392)))))))))

(declare-fun b!1667473 () Bool)

(declare-fun lt!627936 () tuple2!18090)

(declare-fun lt!627934 () Option!3526)

(assert (=> b!1667473 (= e!1068707 (tuple2!18091 (prepend!820 (_1!10447 lt!627936) (_1!10451 (v!24774 lt!627934))) (_2!10447 lt!627936)))))

(assert (=> b!1667473 (= lt!627936 (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627934))))))

(declare-fun d!504187 () Bool)

(assert (=> d!504187 e!1068705))

(declare-fun res!748000 () Bool)

(assert (=> d!504187 (=> (not res!748000) (not e!1068705))))

(assert (=> d!504187 (= res!748000 e!1068706)))

(declare-fun c!271408 () Bool)

(assert (=> d!504187 (= c!271408 (> (size!14616 (_1!10447 lt!627935)) 0))))

(assert (=> d!504187 (= lt!627935 e!1068707)))

(declare-fun c!271409 () Bool)

(assert (=> d!504187 (= c!271409 ((_ is Some!3525) lt!627934))))

(assert (=> d!504187 (= lt!627934 (maxPrefixZipperSequence!742 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627392))))))

(assert (=> d!504187 (= (lexRec!380 thiss!17113 rules!1846 (_2!10451 (v!24774 lt!627392))) lt!627935)))

(declare-fun b!1667474 () Bool)

(assert (=> b!1667474 (= e!1068705 (= (list!7347 (_2!10447 lt!627935)) (_2!10449 (lexList!891 thiss!17113 rules!1846 (list!7347 (_2!10451 (v!24774 lt!627392)))))))))

(assert (= (and d!504187 c!271409) b!1667473))

(assert (= (and d!504187 (not c!271409)) b!1667469))

(assert (= (and d!504187 c!271408) b!1667471))

(assert (= (and d!504187 (not c!271408)) b!1667468))

(assert (= (and b!1667471 res!747999) b!1667470))

(assert (= (and d!504187 res!748000) b!1667472))

(assert (= (and b!1667472 res!748001) b!1667474))

(declare-fun m!2031847 () Bool)

(assert (=> b!1667474 m!2031847))

(declare-fun m!2031849 () Bool)

(assert (=> b!1667474 m!2031849))

(assert (=> b!1667474 m!2031849))

(declare-fun m!2031851 () Bool)

(assert (=> b!1667474 m!2031851))

(assert (=> b!1667468 m!2031847))

(assert (=> b!1667468 m!2031849))

(declare-fun m!2031853 () Bool)

(assert (=> b!1667472 m!2031853))

(assert (=> b!1667472 m!2031849))

(assert (=> b!1667472 m!2031849))

(assert (=> b!1667472 m!2031851))

(declare-fun m!2031855 () Bool)

(assert (=> b!1667473 m!2031855))

(declare-fun m!2031857 () Bool)

(assert (=> b!1667473 m!2031857))

(declare-fun m!2031859 () Bool)

(assert (=> b!1667471 m!2031859))

(declare-fun m!2031861 () Bool)

(assert (=> b!1667471 m!2031861))

(declare-fun m!2031863 () Bool)

(assert (=> b!1667470 m!2031863))

(declare-fun m!2031865 () Bool)

(assert (=> d!504187 m!2031865))

(declare-fun m!2031867 () Bool)

(assert (=> d!504187 m!2031867))

(assert (=> b!1666551 d!504187))

(declare-fun d!504189 () Bool)

(declare-fun e!1068708 () Bool)

(assert (=> d!504189 e!1068708))

(declare-fun res!748002 () Bool)

(assert (=> d!504189 (=> (not res!748002) (not e!1068708))))

(assert (=> d!504189 (= res!748002 (isBalanced!1900 (prepend!823 (c!271173 (_1!10447 lt!627382)) (_1!10451 (v!24774 lt!627392)))))))

(declare-fun lt!627937 () BalanceConc!12190)

(assert (=> d!504189 (= lt!627937 (BalanceConc!12191 (prepend!823 (c!271173 (_1!10447 lt!627382)) (_1!10451 (v!24774 lt!627392)))))))

(assert (=> d!504189 (= (prepend!820 (_1!10447 lt!627382) (_1!10451 (v!24774 lt!627392))) lt!627937)))

(declare-fun b!1667475 () Bool)

(assert (=> b!1667475 (= e!1068708 (= (list!7344 lt!627937) (Cons!18375 (_1!10451 (v!24774 lt!627392)) (list!7344 (_1!10447 lt!627382)))))))

(assert (= (and d!504189 res!748002) b!1667475))

(declare-fun m!2031869 () Bool)

(assert (=> d!504189 m!2031869))

(assert (=> d!504189 m!2031869))

(declare-fun m!2031871 () Bool)

(assert (=> d!504189 m!2031871))

(declare-fun m!2031873 () Bool)

(assert (=> b!1667475 m!2031873))

(declare-fun m!2031875 () Bool)

(assert (=> b!1667475 m!2031875))

(assert (=> b!1666551 d!504189))

(assert (=> d!503735 d!503623))

(declare-fun d!504191 () Bool)

(assert (=> d!504191 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 tokens!457))))

(assert (=> d!504191 true))

(declare-fun _$77!698 () Unit!31136)

(assert (=> d!504191 (= (choose!10031 thiss!17113 rules!1846 tokens!457 (h!23776 tokens!457)) _$77!698)))

(declare-fun bs!397839 () Bool)

(assert (= bs!397839 d!504191))

(assert (=> bs!397839 m!2029587))

(assert (=> d!503735 d!504191))

(assert (=> d!503735 d!503569))

(declare-fun d!504231 () Bool)

(declare-fun res!748040 () Bool)

(declare-fun e!1068734 () Bool)

(assert (=> d!504231 (=> res!748040 e!1068734)))

(assert (=> d!504231 (= res!748040 ((_ is Nil!18376) (t!152191 rules!1846)))))

(assert (=> d!504231 (= (noDuplicateTag!1190 thiss!17113 (t!152191 rules!1846) (Cons!18378 (tag!3521 (h!23777 rules!1846)) Nil!18378)) e!1068734)))

(declare-fun b!1667533 () Bool)

(declare-fun e!1068735 () Bool)

(assert (=> b!1667533 (= e!1068734 e!1068735)))

(declare-fun res!748041 () Bool)

(assert (=> b!1667533 (=> (not res!748041) (not e!1068735))))

(assert (=> b!1667533 (= res!748041 (not (contains!3210 (Cons!18378 (tag!3521 (h!23777 rules!1846)) Nil!18378) (tag!3521 (h!23777 (t!152191 rules!1846))))))))

(declare-fun b!1667534 () Bool)

(assert (=> b!1667534 (= e!1068735 (noDuplicateTag!1190 thiss!17113 (t!152191 (t!152191 rules!1846)) (Cons!18378 (tag!3521 (h!23777 (t!152191 rules!1846))) (Cons!18378 (tag!3521 (h!23777 rules!1846)) Nil!18378))))))

(assert (= (and d!504231 (not res!748040)) b!1667533))

(assert (= (and b!1667533 res!748041) b!1667534))

(declare-fun m!2031967 () Bool)

(assert (=> b!1667533 m!2031967))

(declare-fun m!2031969 () Bool)

(assert (=> b!1667534 m!2031969))

(assert (=> b!1666651 d!504231))

(declare-fun d!504233 () Bool)

(assert (=> d!504233 (= (Forall2!531 lambda!67963) (choose!10041 lambda!67963))))

(declare-fun bs!397840 () Bool)

(assert (= bs!397840 d!504233))

(declare-fun m!2031971 () Bool)

(assert (=> bs!397840 m!2031971))

(assert (=> d!503711 d!504233))

(declare-fun d!504235 () Bool)

(declare-fun lt!627976 () List!18444)

(assert (=> d!504235 (= lt!627976 (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (printList!979 thiss!17113 (dropList!711 (seqFromList!2212 tokens!457) 0))))))

(declare-fun e!1068746 () List!18444)

(assert (=> d!504235 (= lt!627976 e!1068746)))

(declare-fun c!271420 () Bool)

(assert (=> d!504235 (= c!271420 ((_ is Cons!18375) (dropList!711 (seqFromList!2212 tokens!457) 0)))))

(assert (=> d!504235 (= (printListTailRec!412 thiss!17113 (dropList!711 (seqFromList!2212 tokens!457) 0) (list!7347 (BalanceConc!12189 Empty!6122))) lt!627976)))

(declare-fun b!1667551 () Bool)

(assert (=> b!1667551 (= e!1068746 (printListTailRec!412 thiss!17113 (t!152190 (dropList!711 (seqFromList!2212 tokens!457) 0)) (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (list!7347 (charsOf!1886 (h!23776 (dropList!711 (seqFromList!2212 tokens!457) 0)))))))))

(declare-fun lt!627978 () List!18444)

(assert (=> b!1667551 (= lt!627978 (list!7347 (charsOf!1886 (h!23776 (dropList!711 (seqFromList!2212 tokens!457) 0)))))))

(declare-fun lt!627979 () List!18444)

(assert (=> b!1667551 (= lt!627979 (printList!979 thiss!17113 (t!152190 (dropList!711 (seqFromList!2212 tokens!457) 0))))))

(declare-fun lt!627975 () Unit!31136)

(assert (=> b!1667551 (= lt!627975 (lemmaConcatAssociativity!1036 (list!7347 (BalanceConc!12189 Empty!6122)) lt!627978 lt!627979))))

(assert (=> b!1667551 (= (++!5002 (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) lt!627978) lt!627979) (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (++!5002 lt!627978 lt!627979)))))

(declare-fun lt!627977 () Unit!31136)

(assert (=> b!1667551 (= lt!627977 lt!627975)))

(declare-fun b!1667552 () Bool)

(assert (=> b!1667552 (= e!1068746 (list!7347 (BalanceConc!12189 Empty!6122)))))

(assert (= (and d!504235 c!271420) b!1667551))

(assert (= (and d!504235 (not c!271420)) b!1667552))

(assert (=> d!504235 m!2029829))

(declare-fun m!2031987 () Bool)

(assert (=> d!504235 m!2031987))

(assert (=> d!504235 m!2029831))

(assert (=> d!504235 m!2031987))

(declare-fun m!2031989 () Bool)

(assert (=> d!504235 m!2031989))

(declare-fun m!2031991 () Bool)

(assert (=> b!1667551 m!2031991))

(declare-fun m!2031993 () Bool)

(assert (=> b!1667551 m!2031993))

(declare-fun m!2031995 () Bool)

(assert (=> b!1667551 m!2031995))

(assert (=> b!1667551 m!2029831))

(declare-fun m!2031997 () Bool)

(assert (=> b!1667551 m!2031997))

(assert (=> b!1667551 m!2031993))

(assert (=> b!1667551 m!2029831))

(declare-fun m!2031999 () Bool)

(assert (=> b!1667551 m!2031999))

(declare-fun m!2032001 () Bool)

(assert (=> b!1667551 m!2032001))

(assert (=> b!1667551 m!2029831))

(declare-fun m!2032003 () Bool)

(assert (=> b!1667551 m!2032003))

(declare-fun m!2032005 () Bool)

(assert (=> b!1667551 m!2032005))

(declare-fun m!2032007 () Bool)

(assert (=> b!1667551 m!2032007))

(assert (=> b!1667551 m!2029831))

(assert (=> b!1667551 m!2031995))

(assert (=> b!1667551 m!2032005))

(assert (=> b!1667551 m!2032003))

(declare-fun m!2032009 () Bool)

(assert (=> b!1667551 m!2032009))

(assert (=> b!1667551 m!2031999))

(assert (=> d!503647 d!504235))

(declare-fun d!504241 () Bool)

(assert (=> d!504241 (= (dropList!711 (seqFromList!2212 tokens!457) 0) (drop!937 (list!7348 (c!271173 (seqFromList!2212 tokens!457))) 0))))

(declare-fun bs!397843 () Bool)

(assert (= bs!397843 d!504241))

(assert (=> bs!397843 m!2029809))

(assert (=> bs!397843 m!2029809))

(declare-fun m!2032029 () Bool)

(assert (=> bs!397843 m!2032029))

(assert (=> d!503647 d!504241))

(declare-fun d!504249 () Bool)

(declare-fun lt!627981 () Int)

(assert (=> d!504249 (= lt!627981 (size!14618 (list!7344 (seqFromList!2212 tokens!457))))))

(assert (=> d!504249 (= lt!627981 (size!14619 (c!271173 (seqFromList!2212 tokens!457))))))

(assert (=> d!504249 (= (size!14616 (seqFromList!2212 tokens!457)) lt!627981)))

(declare-fun bs!397845 () Bool)

(assert (= bs!397845 d!504249))

(assert (=> bs!397845 m!2029529))

(assert (=> bs!397845 m!2029715))

(assert (=> bs!397845 m!2029715))

(declare-fun m!2032031 () Bool)

(assert (=> bs!397845 m!2032031))

(declare-fun m!2032033 () Bool)

(assert (=> bs!397845 m!2032033))

(assert (=> d!503647 d!504249))

(declare-fun d!504253 () Bool)

(assert (=> d!504253 (= (list!7347 lt!627265) (list!7349 (c!271171 lt!627265)))))

(declare-fun bs!397846 () Bool)

(assert (= bs!397846 d!504253))

(declare-fun m!2032035 () Bool)

(assert (=> bs!397846 m!2032035))

(assert (=> d!503647 d!504253))

(assert (=> d!503647 d!503959))

(declare-fun d!504255 () Bool)

(assert (=> d!504255 (= (inv!23715 (tag!3521 (h!23777 (t!152191 (t!152191 rules!1846))))) (= (mod (str.len (value!101926 (tag!3521 (h!23777 (t!152191 (t!152191 rules!1846)))))) 2) 0))))

(assert (=> b!1666723 d!504255))

(declare-fun d!504257 () Bool)

(declare-fun res!748063 () Bool)

(declare-fun e!1068757 () Bool)

(assert (=> d!504257 (=> (not res!748063) (not e!1068757))))

(assert (=> d!504257 (= res!748063 (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toValue!4696 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))))))

(assert (=> d!504257 (= (inv!23718 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) e!1068757)))

(declare-fun b!1667566 () Bool)

(assert (=> b!1667566 (= e!1068757 (equivClasses!1203 (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toValue!4696 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))))))

(assert (= (and d!504257 res!748063) b!1667566))

(declare-fun m!2032037 () Bool)

(assert (=> d!504257 m!2032037))

(declare-fun m!2032039 () Bool)

(assert (=> b!1667566 m!2032039))

(assert (=> b!1666723 d!504257))

(declare-fun d!504259 () Bool)

(declare-fun e!1068763 () Bool)

(assert (=> d!504259 e!1068763))

(declare-fun res!748069 () Bool)

(assert (=> d!504259 (=> (not res!748069) (not e!1068763))))

(declare-fun lt!627992 () BalanceConc!12188)

(assert (=> d!504259 (= res!748069 (= (list!7347 lt!627992) (Cons!18374 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0) Nil!18374)))))

(declare-fun singleton!775 (C!9304) BalanceConc!12188)

(assert (=> d!504259 (= lt!627992 (singleton!775 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0)))))

(assert (=> d!504259 (= (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0)) lt!627992)))

(declare-fun b!1667573 () Bool)

(assert (=> b!1667573 (= e!1068763 (isBalanced!1899 (c!271171 lt!627992)))))

(assert (= (and d!504259 res!748069) b!1667573))

(declare-fun m!2032077 () Bool)

(assert (=> d!504259 m!2032077))

(assert (=> d!504259 m!2030121))

(declare-fun m!2032079 () Bool)

(assert (=> d!504259 m!2032079))

(declare-fun m!2032081 () Bool)

(assert (=> b!1667573 m!2032081))

(assert (=> d!503731 d!504259))

(declare-fun lt!628040 () Bool)

(declare-fun d!504271 () Bool)

(declare-fun prefixMatch!481 (Regex!4565 List!18444) Bool)

(assert (=> d!504271 (= lt!628040 (prefixMatch!481 (rulesRegex!621 thiss!17113 rules!1846) (list!7347 (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))))))

(declare-datatypes ((List!18449 0))(
  ( (Nil!18379) (Cons!18379 (h!23780 Regex!4565) (t!152448 List!18449)) )
))
(declare-datatypes ((Context!1828 0))(
  ( (Context!1829 (exprs!1414 List!18449)) )
))
(declare-fun prefixMatchZipperSequence!668 ((InoxSet Context!1828) BalanceConc!12188 Int) Bool)

(declare-fun focus!220 (Regex!4565) (InoxSet Context!1828))

(assert (=> d!504271 (= lt!628040 (prefixMatchZipperSequence!668 (focus!220 (rulesRegex!621 thiss!17113 rules!1846)) (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))) 0))))

(declare-fun lt!628046 () Unit!31136)

(declare-fun lt!628041 () Unit!31136)

(assert (=> d!504271 (= lt!628046 lt!628041)))

(declare-fun lt!628039 () List!18444)

(declare-fun lt!628037 () (InoxSet Context!1828))

(declare-fun prefixMatchZipper!199 ((InoxSet Context!1828) List!18444) Bool)

(assert (=> d!504271 (= (prefixMatch!481 (rulesRegex!621 thiss!17113 rules!1846) lt!628039) (prefixMatchZipper!199 lt!628037 lt!628039))))

(declare-datatypes ((List!18450 0))(
  ( (Nil!18380) (Cons!18380 (h!23781 Context!1828) (t!152449 List!18450)) )
))
(declare-fun lt!628042 () List!18450)

(declare-fun prefixMatchZipperRegexEquiv!199 ((InoxSet Context!1828) List!18450 Regex!4565 List!18444) Unit!31136)

(assert (=> d!504271 (= lt!628041 (prefixMatchZipperRegexEquiv!199 lt!628037 lt!628042 (rulesRegex!621 thiss!17113 rules!1846) lt!628039))))

(assert (=> d!504271 (= lt!628039 (list!7347 (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0)))))))

(declare-fun toList!960 ((InoxSet Context!1828)) List!18450)

(assert (=> d!504271 (= lt!628042 (toList!960 (focus!220 (rulesRegex!621 thiss!17113 rules!1846))))))

(assert (=> d!504271 (= lt!628037 (focus!220 (rulesRegex!621 thiss!17113 rules!1846)))))

(declare-fun lt!628045 () Unit!31136)

(declare-fun lt!628038 () Unit!31136)

(assert (=> d!504271 (= lt!628045 lt!628038)))

(declare-fun lt!628043 () (InoxSet Context!1828))

(declare-fun lt!628044 () Int)

(declare-fun dropList!713 (BalanceConc!12188 Int) List!18444)

(assert (=> d!504271 (= (prefixMatchZipper!199 lt!628043 (dropList!713 (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))) lt!628044)) (prefixMatchZipperSequence!668 lt!628043 (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))) lt!628044))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!199 ((InoxSet Context!1828) BalanceConc!12188 Int) Unit!31136)

(assert (=> d!504271 (= lt!628038 (lemmaprefixMatchZipperSequenceEquivalent!199 lt!628043 (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))) lt!628044))))

(assert (=> d!504271 (= lt!628044 0)))

(assert (=> d!504271 (= lt!628043 (focus!220 (rulesRegex!621 thiss!17113 rules!1846)))))

(declare-fun validRegex!1827 (Regex!4565) Bool)

(assert (=> d!504271 (validRegex!1827 (rulesRegex!621 thiss!17113 rules!1846))))

(assert (=> d!504271 (= (prefixMatchZipperSequence!667 (rulesRegex!621 thiss!17113 rules!1846) (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0)))) lt!628040)))

(declare-fun bs!397851 () Bool)

(assert (= bs!397851 d!504271))

(assert (=> bs!397851 m!2030119))

(declare-fun m!2032211 () Bool)

(assert (=> bs!397851 m!2032211))

(assert (=> bs!397851 m!2030115))

(declare-fun m!2032213 () Bool)

(assert (=> bs!397851 m!2032213))

(assert (=> bs!397851 m!2030115))

(declare-fun m!2032215 () Bool)

(assert (=> bs!397851 m!2032215))

(declare-fun m!2032217 () Bool)

(assert (=> bs!397851 m!2032217))

(declare-fun m!2032219 () Bool)

(assert (=> bs!397851 m!2032219))

(assert (=> bs!397851 m!2030119))

(declare-fun m!2032221 () Bool)

(assert (=> bs!397851 m!2032221))

(assert (=> bs!397851 m!2030115))

(assert (=> bs!397851 m!2032217))

(assert (=> bs!397851 m!2032221))

(declare-fun m!2032223 () Bool)

(assert (=> bs!397851 m!2032223))

(assert (=> bs!397851 m!2030119))

(declare-fun m!2032227 () Bool)

(assert (=> bs!397851 m!2032227))

(assert (=> bs!397851 m!2030115))

(declare-fun m!2032229 () Bool)

(assert (=> bs!397851 m!2032229))

(assert (=> bs!397851 m!2032217))

(assert (=> bs!397851 m!2030119))

(declare-fun m!2032233 () Bool)

(assert (=> bs!397851 m!2032233))

(declare-fun m!2032235 () Bool)

(assert (=> bs!397851 m!2032235))

(assert (=> bs!397851 m!2030115))

(assert (=> bs!397851 m!2032211))

(declare-fun m!2032239 () Bool)

(assert (=> bs!397851 m!2032239))

(assert (=> bs!397851 m!2030119))

(declare-fun m!2032241 () Bool)

(assert (=> bs!397851 m!2032241))

(assert (=> d!503731 d!504271))

(declare-fun d!504305 () Bool)

(declare-fun e!1068810 () Bool)

(assert (=> d!504305 e!1068810))

(declare-fun res!748094 () Bool)

(assert (=> d!504305 (=> (not res!748094) (not e!1068810))))

(assert (=> d!504305 (= res!748094 (appendAssocInst!482 (c!271171 (charsOf!1886 (h!23776 tokens!457))) (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0)))))))

(declare-fun lt!628048 () BalanceConc!12188)

(assert (=> d!504305 (= lt!628048 (BalanceConc!12189 (++!5007 (c!271171 (charsOf!1886 (h!23776 tokens!457))) (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))))))

(assert (=> d!504305 (= (++!5003 (charsOf!1886 (h!23776 tokens!457)) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))) lt!628048)))

(declare-fun b!1667651 () Bool)

(declare-fun res!748091 () Bool)

(assert (=> b!1667651 (=> (not res!748091) (not e!1068810))))

(assert (=> b!1667651 (= res!748091 (<= (height!967 (++!5007 (c!271171 (charsOf!1886 (h!23776 tokens!457))) (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))) (+ (max!0 (height!967 (c!271171 (charsOf!1886 (h!23776 tokens!457)))) (height!967 (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))) 1)))))

(declare-fun b!1667653 () Bool)

(assert (=> b!1667653 (= e!1068810 (= (list!7347 lt!628048) (++!5002 (list!7347 (charsOf!1886 (h!23776 tokens!457))) (list!7347 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))))))

(declare-fun b!1667652 () Bool)

(declare-fun res!748092 () Bool)

(assert (=> b!1667652 (=> (not res!748092) (not e!1068810))))

(assert (=> b!1667652 (= res!748092 (>= (height!967 (++!5007 (c!271171 (charsOf!1886 (h!23776 tokens!457))) (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))) (max!0 (height!967 (c!271171 (charsOf!1886 (h!23776 tokens!457)))) (height!967 (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0)))))))))

(declare-fun b!1667650 () Bool)

(declare-fun res!748093 () Bool)

(assert (=> b!1667650 (=> (not res!748093) (not e!1068810))))

(assert (=> b!1667650 (= res!748093 (isBalanced!1899 (++!5007 (c!271171 (charsOf!1886 (h!23776 tokens!457))) (c!271171 (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0))))))))

(assert (= (and d!504305 res!748094) b!1667650))

(assert (= (and b!1667650 res!748093) b!1667651))

(assert (= (and b!1667651 res!748091) b!1667652))

(assert (= (and b!1667652 res!748092) b!1667653))

(declare-fun m!2032253 () Bool)

(assert (=> b!1667651 m!2032253))

(declare-fun m!2032255 () Bool)

(assert (=> b!1667651 m!2032255))

(declare-fun m!2032263 () Bool)

(assert (=> b!1667651 m!2032263))

(declare-fun m!2032265 () Bool)

(assert (=> b!1667651 m!2032265))

(declare-fun m!2032269 () Bool)

(assert (=> b!1667651 m!2032269))

(assert (=> b!1667651 m!2032253))

(assert (=> b!1667651 m!2032265))

(assert (=> b!1667651 m!2032263))

(declare-fun m!2032275 () Bool)

(assert (=> d!504305 m!2032275))

(assert (=> d!504305 m!2032253))

(declare-fun m!2032277 () Bool)

(assert (=> b!1667653 m!2032277))

(assert (=> b!1667653 m!2030113))

(declare-fun m!2032279 () Bool)

(assert (=> b!1667653 m!2032279))

(assert (=> b!1667653 m!2030117))

(declare-fun m!2032281 () Bool)

(assert (=> b!1667653 m!2032281))

(assert (=> b!1667653 m!2032279))

(assert (=> b!1667653 m!2032281))

(declare-fun m!2032283 () Bool)

(assert (=> b!1667653 m!2032283))

(assert (=> b!1667650 m!2032253))

(assert (=> b!1667650 m!2032253))

(declare-fun m!2032285 () Bool)

(assert (=> b!1667650 m!2032285))

(assert (=> b!1667652 m!2032253))

(assert (=> b!1667652 m!2032255))

(assert (=> b!1667652 m!2032263))

(assert (=> b!1667652 m!2032265))

(assert (=> b!1667652 m!2032269))

(assert (=> b!1667652 m!2032253))

(assert (=> b!1667652 m!2032265))

(assert (=> b!1667652 m!2032263))

(assert (=> d!503731 d!504305))

(declare-fun d!504315 () Bool)

(declare-fun lt!628051 () BalanceConc!12188)

(assert (=> d!504315 (= (list!7347 lt!628051) (originalCharacters!4051 (h!23776 tokens!457)))))

(assert (=> d!504315 (= lt!628051 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))

(assert (=> d!504315 (= (charsOf!1886 (h!23776 tokens!457)) lt!628051)))

(declare-fun b_lambda!52359 () Bool)

(assert (=> (not b_lambda!52359) (not d!504315)))

(assert (=> d!504315 t!152212))

(declare-fun b_and!118529 () Bool)

(assert (= b_and!118471 (and (=> t!152212 result!115452) b_and!118529)))

(assert (=> d!504315 t!152197))

(declare-fun b_and!118531 () Bool)

(assert (= b_and!118479 (and (=> t!152197 result!115422) b_and!118531)))

(assert (=> d!504315 t!152195))

(declare-fun b_and!118533 () Bool)

(assert (= b_and!118473 (and (=> t!152195 result!115418) b_and!118533)))

(assert (=> d!504315 t!152210))

(declare-fun b_and!118535 () Bool)

(assert (= b_and!118477 (and (=> t!152210 result!115446) b_and!118535)))

(assert (=> d!504315 t!152243))

(declare-fun b_and!118537 () Bool)

(assert (= b_and!118475 (and (=> t!152243 result!115474) b_and!118537)))

(assert (=> d!504315 t!152239))

(declare-fun b_and!118539 () Bool)

(assert (= b_and!118469 (and (=> t!152239 result!115470) b_and!118539)))

(declare-fun m!2032287 () Bool)

(assert (=> d!504315 m!2032287))

(assert (=> d!504315 m!2029597))

(assert (=> d!503731 d!504315))

(declare-fun d!504317 () Bool)

(declare-fun lt!628054 () C!9304)

(declare-fun apply!4943 (List!18444 Int) C!9304)

(assert (=> d!504317 (= lt!628054 (apply!4943 (list!7347 (charsOf!1886 (h!23776 (t!152190 tokens!457)))) 0))))

(declare-fun apply!4944 (Conc!6122 Int) C!9304)

(assert (=> d!504317 (= lt!628054 (apply!4944 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457)))) 0))))

(declare-fun e!1068815 () Bool)

(assert (=> d!504317 e!1068815))

(declare-fun res!748099 () Bool)

(assert (=> d!504317 (=> (not res!748099) (not e!1068815))))

(assert (=> d!504317 (= res!748099 (<= 0 0))))

(assert (=> d!504317 (= (apply!4937 (charsOf!1886 (h!23776 (t!152190 tokens!457))) 0) lt!628054)))

(declare-fun b!1667660 () Bool)

(assert (=> b!1667660 (= e!1068815 (< 0 (size!14614 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))

(assert (= (and d!504317 res!748099) b!1667660))

(assert (=> d!504317 m!2029575))

(assert (=> d!504317 m!2030125))

(assert (=> d!504317 m!2030125))

(declare-fun m!2032289 () Bool)

(assert (=> d!504317 m!2032289))

(declare-fun m!2032291 () Bool)

(assert (=> d!504317 m!2032291))

(assert (=> b!1667660 m!2029575))

(assert (=> b!1667660 m!2029577))

(assert (=> d!503731 d!504317))

(declare-fun d!504319 () Bool)

(declare-fun lt!628057 () Unit!31136)

(declare-fun lemma!285 (List!18446 LexerInterface!2866 List!18446) Unit!31136)

(assert (=> d!504319 (= lt!628057 (lemma!285 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67988 () Int)

(declare-fun generalisedUnion!293 (List!18449) Regex!4565)

(declare-fun map!3783 (List!18446 Int) List!18449)

(assert (=> d!504319 (= (rulesRegex!621 thiss!17113 rules!1846) (generalisedUnion!293 (map!3783 rules!1846 lambda!67988)))))

(declare-fun bs!397855 () Bool)

(assert (= bs!397855 d!504319))

(declare-fun m!2032293 () Bool)

(assert (=> bs!397855 m!2032293))

(declare-fun m!2032295 () Bool)

(assert (=> bs!397855 m!2032295))

(assert (=> bs!397855 m!2032295))

(declare-fun m!2032297 () Bool)

(assert (=> bs!397855 m!2032297))

(assert (=> d!503731 d!504319))

(assert (=> d!503731 d!503763))

(assert (=> d!503767 d!503765))

(declare-fun d!504321 () Bool)

(assert (=> d!504321 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457)))))

(assert (=> d!504321 true))

(declare-fun _$77!700 () Unit!31136)

(assert (=> d!504321 (= (choose!10031 thiss!17113 rules!1846 tokens!457 (h!23776 (t!152190 tokens!457))) _$77!700)))

(declare-fun bs!397856 () Bool)

(assert (= bs!397856 d!504321))

(assert (=> bs!397856 m!2029581))

(assert (=> d!503767 d!504321))

(assert (=> d!503767 d!503569))

(declare-fun d!504323 () Bool)

(declare-fun res!748100 () Bool)

(declare-fun e!1068816 () Bool)

(assert (=> d!504323 (=> (not res!748100) (not e!1068816))))

(assert (=> d!504323 (= res!748100 (not (isEmpty!11433 (originalCharacters!4051 (h!23776 (t!152190 (t!152190 tokens!457)))))))))

(assert (=> d!504323 (= (inv!23719 (h!23776 (t!152190 (t!152190 tokens!457)))) e!1068816)))

(declare-fun b!1667661 () Bool)

(declare-fun res!748101 () Bool)

(assert (=> b!1667661 (=> (not res!748101) (not e!1068816))))

(assert (=> b!1667661 (= res!748101 (= (originalCharacters!4051 (h!23776 (t!152190 (t!152190 tokens!457)))) (list!7347 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))))))

(declare-fun b!1667662 () Bool)

(assert (=> b!1667662 (= e!1068816 (= (size!14610 (h!23776 (t!152190 (t!152190 tokens!457)))) (size!14615 (originalCharacters!4051 (h!23776 (t!152190 (t!152190 tokens!457)))))))))

(assert (= (and d!504323 res!748100) b!1667661))

(assert (= (and b!1667661 res!748101) b!1667662))

(declare-fun b_lambda!52361 () Bool)

(assert (=> (not b_lambda!52361) (not b!1667661)))

(declare-fun t!152353 () Bool)

(declare-fun tb!95659 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152353) tb!95659))

(declare-fun b!1667663 () Bool)

(declare-fun e!1068817 () Bool)

(declare-fun tp!480946 () Bool)

(assert (=> b!1667663 (= e!1068817 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (value!101927 (h!23776 (t!152190 (t!152190 tokens!457))))))) tp!480946))))

(declare-fun result!115574 () Bool)

(assert (=> tb!95659 (= result!115574 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (value!101927 (h!23776 (t!152190 (t!152190 tokens!457)))))) e!1068817))))

(assert (= tb!95659 b!1667663))

(declare-fun m!2032299 () Bool)

(assert (=> b!1667663 m!2032299))

(declare-fun m!2032301 () Bool)

(assert (=> tb!95659 m!2032301))

(assert (=> b!1667661 t!152353))

(declare-fun b_and!118541 () Bool)

(assert (= b_and!118535 (and (=> t!152353 result!115574) b_and!118541)))

(declare-fun t!152355 () Bool)

(declare-fun tb!95661 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152355) tb!95661))

(declare-fun result!115576 () Bool)

(assert (= result!115576 result!115574))

(assert (=> b!1667661 t!152355))

(declare-fun b_and!118543 () Bool)

(assert (= b_and!118537 (and (=> t!152355 result!115576) b_and!118543)))

(declare-fun t!152357 () Bool)

(declare-fun tb!95663 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152357) tb!95663))

(declare-fun result!115578 () Bool)

(assert (= result!115578 result!115574))

(assert (=> b!1667661 t!152357))

(declare-fun b_and!118545 () Bool)

(assert (= b_and!118533 (and (=> t!152357 result!115578) b_and!118545)))

(declare-fun t!152359 () Bool)

(declare-fun tb!95665 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152359) tb!95665))

(declare-fun result!115580 () Bool)

(assert (= result!115580 result!115574))

(assert (=> b!1667661 t!152359))

(declare-fun b_and!118547 () Bool)

(assert (= b_and!118529 (and (=> t!152359 result!115580) b_and!118547)))

(declare-fun t!152361 () Bool)

(declare-fun tb!95667 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152361) tb!95667))

(declare-fun result!115582 () Bool)

(assert (= result!115582 result!115574))

(assert (=> b!1667661 t!152361))

(declare-fun b_and!118549 () Bool)

(assert (= b_and!118539 (and (=> t!152361 result!115582) b_and!118549)))

(declare-fun tb!95669 () Bool)

(declare-fun t!152363 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152363) tb!95669))

(declare-fun result!115584 () Bool)

(assert (= result!115584 result!115574))

(assert (=> b!1667661 t!152363))

(declare-fun b_and!118551 () Bool)

(assert (= b_and!118531 (and (=> t!152363 result!115584) b_and!118551)))

(declare-fun m!2032303 () Bool)

(assert (=> d!504323 m!2032303))

(declare-fun m!2032305 () Bool)

(assert (=> b!1667661 m!2032305))

(assert (=> b!1667661 m!2032305))

(declare-fun m!2032307 () Bool)

(assert (=> b!1667661 m!2032307))

(declare-fun m!2032309 () Bool)

(assert (=> b!1667662 m!2032309))

(assert (=> b!1666750 d!504323))

(declare-fun b!1667682 () Bool)

(declare-fun e!1068828 () List!18445)

(declare-fun e!1068829 () List!18445)

(assert (=> b!1667682 (= e!1068828 e!1068829)))

(declare-fun c!271460 () Bool)

(assert (=> b!1667682 (= c!271460 (<= 0 0))))

(declare-fun b!1667683 () Bool)

(declare-fun e!1068830 () Int)

(declare-fun e!1068832 () Int)

(assert (=> b!1667683 (= e!1068830 e!1068832)))

(declare-fun c!271459 () Bool)

(declare-fun call!106554 () Int)

(assert (=> b!1667683 (= c!271459 (>= 0 call!106554))))

(declare-fun b!1667684 () Bool)

(assert (=> b!1667684 (= e!1068832 0)))

(declare-fun b!1667685 () Bool)

(assert (=> b!1667685 (= e!1068829 lt!627260)))

(declare-fun b!1667686 () Bool)

(assert (=> b!1667686 (= e!1068829 (drop!937 (t!152190 lt!627260) (- 0 1)))))

(declare-fun d!504325 () Bool)

(declare-fun e!1068831 () Bool)

(assert (=> d!504325 e!1068831))

(declare-fun res!748104 () Bool)

(assert (=> d!504325 (=> (not res!748104) (not e!1068831))))

(declare-fun lt!628060 () List!18445)

(assert (=> d!504325 (= res!748104 (= ((_ map implies) (content!2564 lt!628060) (content!2564 lt!627260)) ((as const (InoxSet Token!6040)) true)))))

(assert (=> d!504325 (= lt!628060 e!1068828)))

(declare-fun c!271462 () Bool)

(assert (=> d!504325 (= c!271462 ((_ is Nil!18375) lt!627260))))

(assert (=> d!504325 (= (drop!937 lt!627260 0) lt!628060)))

(declare-fun bm!106549 () Bool)

(assert (=> bm!106549 (= call!106554 (size!14618 lt!627260))))

(declare-fun b!1667687 () Bool)

(assert (=> b!1667687 (= e!1068830 call!106554)))

(declare-fun b!1667688 () Bool)

(assert (=> b!1667688 (= e!1068832 (- call!106554 0))))

(declare-fun b!1667689 () Bool)

(assert (=> b!1667689 (= e!1068831 (= (size!14618 lt!628060) e!1068830))))

(declare-fun c!271461 () Bool)

(assert (=> b!1667689 (= c!271461 (<= 0 0))))

(declare-fun b!1667690 () Bool)

(assert (=> b!1667690 (= e!1068828 Nil!18375)))

(assert (= (and d!504325 c!271462) b!1667690))

(assert (= (and d!504325 (not c!271462)) b!1667682))

(assert (= (and b!1667682 c!271460) b!1667685))

(assert (= (and b!1667682 (not c!271460)) b!1667686))

(assert (= (and d!504325 res!748104) b!1667689))

(assert (= (and b!1667689 c!271461) b!1667687))

(assert (= (and b!1667689 (not c!271461)) b!1667683))

(assert (= (and b!1667683 c!271459) b!1667684))

(assert (= (and b!1667683 (not c!271459)) b!1667688))

(assert (= (or b!1667687 b!1667683 b!1667688) bm!106549))

(declare-fun m!2032311 () Bool)

(assert (=> b!1667686 m!2032311))

(declare-fun m!2032313 () Bool)

(assert (=> d!504325 m!2032313))

(declare-fun m!2032315 () Bool)

(assert (=> d!504325 m!2032315))

(declare-fun m!2032317 () Bool)

(assert (=> bm!106549 m!2032317))

(declare-fun m!2032319 () Bool)

(assert (=> b!1667689 m!2032319))

(assert (=> b!1666477 d!504325))

(declare-fun d!504327 () Bool)

(declare-fun e!1068833 () Bool)

(assert (=> d!504327 e!1068833))

(declare-fun res!748108 () Bool)

(assert (=> d!504327 (=> (not res!748108) (not e!1068833))))

(assert (=> d!504327 (= res!748108 (appendAssocInst!482 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0)))))))

(declare-fun lt!628061 () BalanceConc!12188)

(assert (=> d!504327 (= lt!628061 (BalanceConc!12189 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))))))

(assert (=> d!504327 (= (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))) lt!628061)))

(declare-fun b!1667692 () Bool)

(declare-fun res!748105 () Bool)

(assert (=> b!1667692 (=> (not res!748105) (not e!1068833))))

(assert (=> b!1667692 (= res!748105 (<= (height!967 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))) (+ (max!0 (height!967 (c!271171 (BalanceConc!12189 Empty!6122))) (height!967 (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))) 1)))))

(declare-fun b!1667694 () Bool)

(assert (=> b!1667694 (= e!1068833 (= (list!7347 lt!628061) (++!5002 (list!7347 (BalanceConc!12189 Empty!6122)) (list!7347 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))))))

(declare-fun b!1667693 () Bool)

(declare-fun res!748106 () Bool)

(assert (=> b!1667693 (=> (not res!748106) (not e!1068833))))

(assert (=> b!1667693 (= res!748106 (>= (height!967 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))) (max!0 (height!967 (c!271171 (BalanceConc!12189 Empty!6122))) (height!967 (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0)))))))))

(declare-fun b!1667691 () Bool)

(declare-fun res!748107 () Bool)

(assert (=> b!1667691 (=> (not res!748107) (not e!1068833))))

(assert (=> b!1667691 (= res!748107 (isBalanced!1899 (++!5007 (c!271171 (BalanceConc!12189 Empty!6122)) (c!271171 (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))))))

(assert (= (and d!504327 res!748108) b!1667691))

(assert (= (and b!1667691 res!748107) b!1667692))

(assert (= (and b!1667692 res!748105) b!1667693))

(assert (= (and b!1667693 res!748106) b!1667694))

(declare-fun m!2032321 () Bool)

(assert (=> b!1667692 m!2032321))

(declare-fun m!2032323 () Bool)

(assert (=> b!1667692 m!2032323))

(assert (=> b!1667692 m!2030885))

(declare-fun m!2032325 () Bool)

(assert (=> b!1667692 m!2032325))

(declare-fun m!2032327 () Bool)

(assert (=> b!1667692 m!2032327))

(assert (=> b!1667692 m!2032321))

(assert (=> b!1667692 m!2032325))

(assert (=> b!1667692 m!2030885))

(declare-fun m!2032329 () Bool)

(assert (=> d!504327 m!2032329))

(assert (=> d!504327 m!2032321))

(declare-fun m!2032331 () Bool)

(assert (=> b!1667694 m!2032331))

(assert (=> b!1667694 m!2029831))

(assert (=> b!1667694 m!2029853))

(declare-fun m!2032333 () Bool)

(assert (=> b!1667694 m!2032333))

(assert (=> b!1667694 m!2029831))

(assert (=> b!1667694 m!2032333))

(declare-fun m!2032335 () Bool)

(assert (=> b!1667694 m!2032335))

(assert (=> b!1667691 m!2032321))

(assert (=> b!1667691 m!2032321))

(declare-fun m!2032337 () Bool)

(assert (=> b!1667691 m!2032337))

(assert (=> b!1667693 m!2032321))

(assert (=> b!1667693 m!2032323))

(assert (=> b!1667693 m!2030885))

(assert (=> b!1667693 m!2032325))

(assert (=> b!1667693 m!2032327))

(assert (=> b!1667693 m!2032321))

(assert (=> b!1667693 m!2032325))

(assert (=> b!1667693 m!2030885))

(assert (=> b!1666477 d!504327))

(declare-fun d!504329 () Bool)

(assert (=> d!504329 (= (head!3718 (drop!937 lt!627260 0)) (h!23776 (drop!937 lt!627260 0)))))

(assert (=> b!1666477 d!504329))

(declare-fun d!504331 () Bool)

(declare-fun lt!628062 () Token!6040)

(assert (=> d!504331 (= lt!628062 (apply!4936 (list!7344 (seqFromList!2212 tokens!457)) 0))))

(assert (=> d!504331 (= lt!628062 (apply!4940 (c!271173 (seqFromList!2212 tokens!457)) 0))))

(declare-fun e!1068834 () Bool)

(assert (=> d!504331 e!1068834))

(declare-fun res!748109 () Bool)

(assert (=> d!504331 (=> (not res!748109) (not e!1068834))))

(assert (=> d!504331 (= res!748109 (<= 0 0))))

(assert (=> d!504331 (= (apply!4933 (seqFromList!2212 tokens!457) 0) lt!628062)))

(declare-fun b!1667695 () Bool)

(assert (=> b!1667695 (= e!1068834 (< 0 (size!14616 (seqFromList!2212 tokens!457))))))

(assert (= (and d!504331 res!748109) b!1667695))

(assert (=> d!504331 m!2029529))

(assert (=> d!504331 m!2029715))

(assert (=> d!504331 m!2029715))

(declare-fun m!2032339 () Bool)

(assert (=> d!504331 m!2032339))

(declare-fun m!2032341 () Bool)

(assert (=> d!504331 m!2032341))

(assert (=> b!1667695 m!2029529))

(assert (=> b!1667695 m!2029837))

(assert (=> b!1666477 d!504331))

(declare-fun d!504333 () Bool)

(declare-fun lt!628069 () BalanceConc!12188)

(assert (=> d!504333 (= (list!7347 lt!628069) (printListTailRec!412 thiss!17113 (dropList!711 (seqFromList!2212 tokens!457) (+ 0 1)) (list!7347 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))))))

(declare-fun e!1068836 () BalanceConc!12188)

(assert (=> d!504333 (= lt!628069 e!1068836)))

(declare-fun c!271463 () Bool)

(assert (=> d!504333 (= c!271463 (>= (+ 0 1) (size!14616 (seqFromList!2212 tokens!457))))))

(declare-fun e!1068835 () Bool)

(assert (=> d!504333 e!1068835))

(declare-fun res!748110 () Bool)

(assert (=> d!504333 (=> (not res!748110) (not e!1068835))))

(assert (=> d!504333 (= res!748110 (>= (+ 0 1) 0))))

(assert (=> d!504333 (= (printTailRec!917 thiss!17113 (seqFromList!2212 tokens!457) (+ 0 1) (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0)))) lt!628069)))

(declare-fun b!1667696 () Bool)

(assert (=> b!1667696 (= e!1068835 (<= (+ 0 1) (size!14616 (seqFromList!2212 tokens!457))))))

(declare-fun b!1667697 () Bool)

(assert (=> b!1667697 (= e!1068836 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))))))

(declare-fun b!1667698 () Bool)

(assert (=> b!1667698 (= e!1068836 (printTailRec!917 thiss!17113 (seqFromList!2212 tokens!457) (+ 0 1 1) (++!5003 (++!5003 (BalanceConc!12189 Empty!6122) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0))) (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) (+ 0 1))))))))

(declare-fun lt!628064 () List!18445)

(assert (=> b!1667698 (= lt!628064 (list!7344 (seqFromList!2212 tokens!457)))))

(declare-fun lt!628068 () Unit!31136)

(assert (=> b!1667698 (= lt!628068 (lemmaDropApply!619 lt!628064 (+ 0 1)))))

(assert (=> b!1667698 (= (head!3718 (drop!937 lt!628064 (+ 0 1))) (apply!4936 lt!628064 (+ 0 1)))))

(declare-fun lt!628066 () Unit!31136)

(assert (=> b!1667698 (= lt!628066 lt!628068)))

(declare-fun lt!628067 () List!18445)

(assert (=> b!1667698 (= lt!628067 (list!7344 (seqFromList!2212 tokens!457)))))

(declare-fun lt!628065 () Unit!31136)

(assert (=> b!1667698 (= lt!628065 (lemmaDropTail!599 lt!628067 (+ 0 1)))))

(assert (=> b!1667698 (= (tail!2483 (drop!937 lt!628067 (+ 0 1))) (drop!937 lt!628067 (+ 0 1 1)))))

(declare-fun lt!628063 () Unit!31136)

(assert (=> b!1667698 (= lt!628063 lt!628065)))

(assert (= (and d!504333 res!748110) b!1667696))

(assert (= (and d!504333 c!271463) b!1667697))

(assert (= (and d!504333 (not c!271463)) b!1667698))

(assert (=> d!504333 m!2029529))

(declare-fun m!2032343 () Bool)

(assert (=> d!504333 m!2032343))

(assert (=> d!504333 m!2029857))

(declare-fun m!2032345 () Bool)

(assert (=> d!504333 m!2032345))

(assert (=> d!504333 m!2032343))

(assert (=> d!504333 m!2032345))

(declare-fun m!2032347 () Bool)

(assert (=> d!504333 m!2032347))

(declare-fun m!2032349 () Bool)

(assert (=> d!504333 m!2032349))

(assert (=> d!504333 m!2029529))

(assert (=> d!504333 m!2029837))

(assert (=> b!1667696 m!2029529))

(assert (=> b!1667696 m!2029837))

(declare-fun m!2032351 () Bool)

(assert (=> b!1667698 m!2032351))

(declare-fun m!2032353 () Bool)

(assert (=> b!1667698 m!2032353))

(declare-fun m!2032355 () Bool)

(assert (=> b!1667698 m!2032355))

(declare-fun m!2032357 () Bool)

(assert (=> b!1667698 m!2032357))

(assert (=> b!1667698 m!2029529))

(declare-fun m!2032359 () Bool)

(assert (=> b!1667698 m!2032359))

(declare-fun m!2032361 () Bool)

(assert (=> b!1667698 m!2032361))

(assert (=> b!1667698 m!2029529))

(assert (=> b!1667698 m!2029715))

(declare-fun m!2032363 () Bool)

(assert (=> b!1667698 m!2032363))

(assert (=> b!1667698 m!2032359))

(declare-fun m!2032365 () Bool)

(assert (=> b!1667698 m!2032365))

(declare-fun m!2032367 () Bool)

(assert (=> b!1667698 m!2032367))

(assert (=> b!1667698 m!2029529))

(declare-fun m!2032369 () Bool)

(assert (=> b!1667698 m!2032369))

(declare-fun m!2032371 () Bool)

(assert (=> b!1667698 m!2032371))

(assert (=> b!1667698 m!2032355))

(assert (=> b!1667698 m!2029857))

(assert (=> b!1667698 m!2032365))

(assert (=> b!1667698 m!2032369))

(assert (=> b!1667698 m!2032353))

(declare-fun m!2032373 () Bool)

(assert (=> b!1667698 m!2032373))

(assert (=> b!1666477 d!504333))

(declare-fun d!504335 () Bool)

(declare-fun lt!628072 () Token!6040)

(declare-fun contains!3213 (List!18445 Token!6040) Bool)

(assert (=> d!504335 (contains!3213 lt!627260 lt!628072)))

(declare-fun e!1068842 () Token!6040)

(assert (=> d!504335 (= lt!628072 e!1068842)))

(declare-fun c!271466 () Bool)

(assert (=> d!504335 (= c!271466 (= 0 0))))

(declare-fun e!1068841 () Bool)

(assert (=> d!504335 e!1068841))

(declare-fun res!748113 () Bool)

(assert (=> d!504335 (=> (not res!748113) (not e!1068841))))

(assert (=> d!504335 (= res!748113 (<= 0 0))))

(assert (=> d!504335 (= (apply!4936 lt!627260 0) lt!628072)))

(declare-fun b!1667705 () Bool)

(assert (=> b!1667705 (= e!1068841 (< 0 (size!14618 lt!627260)))))

(declare-fun b!1667706 () Bool)

(assert (=> b!1667706 (= e!1068842 (head!3718 lt!627260))))

(declare-fun b!1667707 () Bool)

(assert (=> b!1667707 (= e!1068842 (apply!4936 (tail!2483 lt!627260) (- 0 1)))))

(assert (= (and d!504335 res!748113) b!1667705))

(assert (= (and d!504335 c!271466) b!1667706))

(assert (= (and d!504335 (not c!271466)) b!1667707))

(declare-fun m!2032375 () Bool)

(assert (=> d!504335 m!2032375))

(assert (=> b!1667705 m!2032317))

(declare-fun m!2032377 () Bool)

(assert (=> b!1667706 m!2032377))

(declare-fun m!2032379 () Bool)

(assert (=> b!1667707 m!2032379))

(assert (=> b!1667707 m!2032379))

(declare-fun m!2032381 () Bool)

(assert (=> b!1667707 m!2032381))

(assert (=> b!1666477 d!504335))

(assert (=> b!1666477 d!503645))

(declare-fun b!1667708 () Bool)

(declare-fun e!1068843 () List!18445)

(declare-fun e!1068844 () List!18445)

(assert (=> b!1667708 (= e!1068843 e!1068844)))

(declare-fun c!271468 () Bool)

(assert (=> b!1667708 (= c!271468 (<= 0 0))))

(declare-fun b!1667709 () Bool)

(declare-fun e!1068845 () Int)

(declare-fun e!1068847 () Int)

(assert (=> b!1667709 (= e!1068845 e!1068847)))

(declare-fun c!271467 () Bool)

(declare-fun call!106555 () Int)

(assert (=> b!1667709 (= c!271467 (>= 0 call!106555))))

(declare-fun b!1667710 () Bool)

(assert (=> b!1667710 (= e!1068847 0)))

(declare-fun b!1667711 () Bool)

(assert (=> b!1667711 (= e!1068844 lt!627263)))

(declare-fun b!1667712 () Bool)

(assert (=> b!1667712 (= e!1068844 (drop!937 (t!152190 lt!627263) (- 0 1)))))

(declare-fun d!504337 () Bool)

(declare-fun e!1068846 () Bool)

(assert (=> d!504337 e!1068846))

(declare-fun res!748114 () Bool)

(assert (=> d!504337 (=> (not res!748114) (not e!1068846))))

(declare-fun lt!628073 () List!18445)

(assert (=> d!504337 (= res!748114 (= ((_ map implies) (content!2564 lt!628073) (content!2564 lt!627263)) ((as const (InoxSet Token!6040)) true)))))

(assert (=> d!504337 (= lt!628073 e!1068843)))

(declare-fun c!271470 () Bool)

(assert (=> d!504337 (= c!271470 ((_ is Nil!18375) lt!627263))))

(assert (=> d!504337 (= (drop!937 lt!627263 0) lt!628073)))

(declare-fun bm!106550 () Bool)

(assert (=> bm!106550 (= call!106555 (size!14618 lt!627263))))

(declare-fun b!1667713 () Bool)

(assert (=> b!1667713 (= e!1068845 call!106555)))

(declare-fun b!1667714 () Bool)

(assert (=> b!1667714 (= e!1068847 (- call!106555 0))))

(declare-fun b!1667715 () Bool)

(assert (=> b!1667715 (= e!1068846 (= (size!14618 lt!628073) e!1068845))))

(declare-fun c!271469 () Bool)

(assert (=> b!1667715 (= c!271469 (<= 0 0))))

(declare-fun b!1667716 () Bool)

(assert (=> b!1667716 (= e!1068843 Nil!18375)))

(assert (= (and d!504337 c!271470) b!1667716))

(assert (= (and d!504337 (not c!271470)) b!1667708))

(assert (= (and b!1667708 c!271468) b!1667711))

(assert (= (and b!1667708 (not c!271468)) b!1667712))

(assert (= (and d!504337 res!748114) b!1667715))

(assert (= (and b!1667715 c!271469) b!1667713))

(assert (= (and b!1667715 (not c!271469)) b!1667709))

(assert (= (and b!1667709 c!271467) b!1667710))

(assert (= (and b!1667709 (not c!271467)) b!1667714))

(assert (= (or b!1667713 b!1667709 b!1667714) bm!106550))

(declare-fun m!2032383 () Bool)

(assert (=> b!1667712 m!2032383))

(declare-fun m!2032385 () Bool)

(assert (=> d!504337 m!2032385))

(declare-fun m!2032387 () Bool)

(assert (=> d!504337 m!2032387))

(declare-fun m!2032389 () Bool)

(assert (=> bm!106550 m!2032389))

(declare-fun m!2032391 () Bool)

(assert (=> b!1667715 m!2032391))

(assert (=> b!1666477 d!504337))

(declare-fun d!504339 () Bool)

(assert (=> d!504339 (= (tail!2483 (drop!937 lt!627263 0)) (t!152190 (drop!937 lt!627263 0)))))

(assert (=> b!1666477 d!504339))

(declare-fun d!504341 () Bool)

(assert (=> d!504341 (= (head!3718 (drop!937 lt!627260 0)) (apply!4936 lt!627260 0))))

(declare-fun lt!628076 () Unit!31136)

(declare-fun choose!10046 (List!18445 Int) Unit!31136)

(assert (=> d!504341 (= lt!628076 (choose!10046 lt!627260 0))))

(declare-fun e!1068850 () Bool)

(assert (=> d!504341 e!1068850))

(declare-fun res!748117 () Bool)

(assert (=> d!504341 (=> (not res!748117) (not e!1068850))))

(assert (=> d!504341 (= res!748117 (>= 0 0))))

(assert (=> d!504341 (= (lemmaDropApply!619 lt!627260 0) lt!628076)))

(declare-fun b!1667719 () Bool)

(assert (=> b!1667719 (= e!1068850 (< 0 (size!14618 lt!627260)))))

(assert (= (and d!504341 res!748117) b!1667719))

(assert (=> d!504341 m!2029843))

(assert (=> d!504341 m!2029843))

(assert (=> d!504341 m!2029845))

(assert (=> d!504341 m!2029855))

(declare-fun m!2032393 () Bool)

(assert (=> d!504341 m!2032393))

(assert (=> b!1667719 m!2032317))

(assert (=> b!1666477 d!504341))

(declare-fun d!504343 () Bool)

(declare-fun lt!628077 () BalanceConc!12188)

(assert (=> d!504343 (= (list!7347 lt!628077) (originalCharacters!4051 (apply!4933 (seqFromList!2212 tokens!457) 0)))))

(assert (=> d!504343 (= lt!628077 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0)))) (value!101927 (apply!4933 (seqFromList!2212 tokens!457) 0))))))

(assert (=> d!504343 (= (charsOf!1886 (apply!4933 (seqFromList!2212 tokens!457) 0)) lt!628077)))

(declare-fun b_lambda!52363 () Bool)

(assert (=> (not b_lambda!52363) (not d!504343)))

(declare-fun t!152365 () Bool)

(declare-fun tb!95671 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152365) tb!95671))

(declare-fun b!1667720 () Bool)

(declare-fun e!1068851 () Bool)

(declare-fun tp!480947 () Bool)

(assert (=> b!1667720 (= e!1068851 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0)))) (value!101927 (apply!4933 (seqFromList!2212 tokens!457) 0))))) tp!480947))))

(declare-fun result!115586 () Bool)

(assert (=> tb!95671 (= result!115586 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0)))) (value!101927 (apply!4933 (seqFromList!2212 tokens!457) 0)))) e!1068851))))

(assert (= tb!95671 b!1667720))

(declare-fun m!2032395 () Bool)

(assert (=> b!1667720 m!2032395))

(declare-fun m!2032397 () Bool)

(assert (=> tb!95671 m!2032397))

(assert (=> d!504343 t!152365))

(declare-fun b_and!118553 () Bool)

(assert (= b_and!118543 (and (=> t!152365 result!115586) b_and!118553)))

(declare-fun t!152367 () Bool)

(declare-fun tb!95673 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152367) tb!95673))

(declare-fun result!115588 () Bool)

(assert (= result!115588 result!115586))

(assert (=> d!504343 t!152367))

(declare-fun b_and!118555 () Bool)

(assert (= b_and!118545 (and (=> t!152367 result!115588) b_and!118555)))

(declare-fun t!152369 () Bool)

(declare-fun tb!95675 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152369) tb!95675))

(declare-fun result!115590 () Bool)

(assert (= result!115590 result!115586))

(assert (=> d!504343 t!152369))

(declare-fun b_and!118557 () Bool)

(assert (= b_and!118551 (and (=> t!152369 result!115590) b_and!118557)))

(declare-fun tb!95677 () Bool)

(declare-fun t!152371 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152371) tb!95677))

(declare-fun result!115592 () Bool)

(assert (= result!115592 result!115586))

(assert (=> d!504343 t!152371))

(declare-fun b_and!118559 () Bool)

(assert (= b_and!118549 (and (=> t!152371 result!115592) b_and!118559)))

(declare-fun tb!95679 () Bool)

(declare-fun t!152373 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152373) tb!95679))

(declare-fun result!115594 () Bool)

(assert (= result!115594 result!115586))

(assert (=> d!504343 t!152373))

(declare-fun b_and!118561 () Bool)

(assert (= b_and!118541 (and (=> t!152373 result!115594) b_and!118561)))

(declare-fun t!152375 () Bool)

(declare-fun tb!95681 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152375) tb!95681))

(declare-fun result!115596 () Bool)

(assert (= result!115596 result!115586))

(assert (=> d!504343 t!152375))

(declare-fun b_and!118563 () Bool)

(assert (= b_and!118547 (and (=> t!152375 result!115596) b_and!118563)))

(declare-fun m!2032399 () Bool)

(assert (=> d!504343 m!2032399))

(declare-fun m!2032401 () Bool)

(assert (=> d!504343 m!2032401))

(assert (=> b!1666477 d!504343))

(declare-fun b!1667721 () Bool)

(declare-fun e!1068852 () List!18445)

(declare-fun e!1068853 () List!18445)

(assert (=> b!1667721 (= e!1068852 e!1068853)))

(declare-fun c!271472 () Bool)

(assert (=> b!1667721 (= c!271472 (<= (+ 0 1) 0))))

(declare-fun b!1667722 () Bool)

(declare-fun e!1068854 () Int)

(declare-fun e!1068856 () Int)

(assert (=> b!1667722 (= e!1068854 e!1068856)))

(declare-fun c!271471 () Bool)

(declare-fun call!106556 () Int)

(assert (=> b!1667722 (= c!271471 (>= (+ 0 1) call!106556))))

(declare-fun b!1667723 () Bool)

(assert (=> b!1667723 (= e!1068856 0)))

(declare-fun b!1667724 () Bool)

(assert (=> b!1667724 (= e!1068853 lt!627263)))

(declare-fun b!1667725 () Bool)

(assert (=> b!1667725 (= e!1068853 (drop!937 (t!152190 lt!627263) (- (+ 0 1) 1)))))

(declare-fun d!504345 () Bool)

(declare-fun e!1068855 () Bool)

(assert (=> d!504345 e!1068855))

(declare-fun res!748118 () Bool)

(assert (=> d!504345 (=> (not res!748118) (not e!1068855))))

(declare-fun lt!628078 () List!18445)

(assert (=> d!504345 (= res!748118 (= ((_ map implies) (content!2564 lt!628078) (content!2564 lt!627263)) ((as const (InoxSet Token!6040)) true)))))

(assert (=> d!504345 (= lt!628078 e!1068852)))

(declare-fun c!271474 () Bool)

(assert (=> d!504345 (= c!271474 ((_ is Nil!18375) lt!627263))))

(assert (=> d!504345 (= (drop!937 lt!627263 (+ 0 1)) lt!628078)))

(declare-fun bm!106551 () Bool)

(assert (=> bm!106551 (= call!106556 (size!14618 lt!627263))))

(declare-fun b!1667726 () Bool)

(assert (=> b!1667726 (= e!1068854 call!106556)))

(declare-fun b!1667727 () Bool)

(assert (=> b!1667727 (= e!1068856 (- call!106556 (+ 0 1)))))

(declare-fun b!1667728 () Bool)

(assert (=> b!1667728 (= e!1068855 (= (size!14618 lt!628078) e!1068854))))

(declare-fun c!271473 () Bool)

(assert (=> b!1667728 (= c!271473 (<= (+ 0 1) 0))))

(declare-fun b!1667729 () Bool)

(assert (=> b!1667729 (= e!1068852 Nil!18375)))

(assert (= (and d!504345 c!271474) b!1667729))

(assert (= (and d!504345 (not c!271474)) b!1667721))

(assert (= (and b!1667721 c!271472) b!1667724))

(assert (= (and b!1667721 (not c!271472)) b!1667725))

(assert (= (and d!504345 res!748118) b!1667728))

(assert (= (and b!1667728 c!271473) b!1667726))

(assert (= (and b!1667728 (not c!271473)) b!1667722))

(assert (= (and b!1667722 c!271471) b!1667723))

(assert (= (and b!1667722 (not c!271471)) b!1667727))

(assert (= (or b!1667726 b!1667722 b!1667727) bm!106551))

(declare-fun m!2032403 () Bool)

(assert (=> b!1667725 m!2032403))

(declare-fun m!2032405 () Bool)

(assert (=> d!504345 m!2032405))

(assert (=> d!504345 m!2032387))

(assert (=> bm!106551 m!2032389))

(declare-fun m!2032407 () Bool)

(assert (=> b!1667728 m!2032407))

(assert (=> b!1666477 d!504345))

(declare-fun d!504347 () Bool)

(assert (=> d!504347 (= (tail!2483 (drop!937 lt!627263 0)) (drop!937 lt!627263 (+ 0 1)))))

(declare-fun lt!628081 () Unit!31136)

(declare-fun choose!10047 (List!18445 Int) Unit!31136)

(assert (=> d!504347 (= lt!628081 (choose!10047 lt!627263 0))))

(declare-fun e!1068859 () Bool)

(assert (=> d!504347 e!1068859))

(declare-fun res!748121 () Bool)

(assert (=> d!504347 (=> (not res!748121) (not e!1068859))))

(assert (=> d!504347 (= res!748121 (>= 0 0))))

(assert (=> d!504347 (= (lemmaDropTail!599 lt!627263 0) lt!628081)))

(declare-fun b!1667732 () Bool)

(assert (=> b!1667732 (= e!1068859 (< 0 (size!14618 lt!627263)))))

(assert (= (and d!504347 res!748121) b!1667732))

(assert (=> d!504347 m!2029841))

(assert (=> d!504347 m!2029841))

(assert (=> d!504347 m!2029861))

(assert (=> d!504347 m!2029849))

(declare-fun m!2032409 () Bool)

(assert (=> d!504347 m!2032409))

(assert (=> b!1667732 m!2032389))

(assert (=> b!1666477 d!504347))

(declare-fun d!504349 () Bool)

(declare-fun res!748122 () Bool)

(declare-fun e!1068860 () Bool)

(assert (=> d!504349 (=> res!748122 e!1068860)))

(assert (=> d!504349 (= res!748122 ((_ is Nil!18375) (t!152190 tokens!457)))))

(assert (=> d!504349 (= (forall!4176 (t!152190 tokens!457) lambda!67964) e!1068860)))

(declare-fun b!1667733 () Bool)

(declare-fun e!1068861 () Bool)

(assert (=> b!1667733 (= e!1068860 e!1068861)))

(declare-fun res!748123 () Bool)

(assert (=> b!1667733 (=> (not res!748123) (not e!1068861))))

(assert (=> b!1667733 (= res!748123 (dynLambda!8278 lambda!67964 (h!23776 (t!152190 tokens!457))))))

(declare-fun b!1667734 () Bool)

(assert (=> b!1667734 (= e!1068861 (forall!4176 (t!152190 (t!152190 tokens!457)) lambda!67964))))

(assert (= (and d!504349 (not res!748122)) b!1667733))

(assert (= (and b!1667733 res!748123) b!1667734))

(declare-fun b_lambda!52365 () Bool)

(assert (=> (not b_lambda!52365) (not b!1667733)))

(declare-fun m!2032411 () Bool)

(assert (=> b!1667733 m!2032411))

(declare-fun m!2032413 () Bool)

(assert (=> b!1667734 m!2032413))

(assert (=> d!503719 d!504349))

(assert (=> d!503719 d!503569))

(assert (=> bs!397742 d!503623))

(assert (=> b!1666475 d!504249))

(declare-fun d!504351 () Bool)

(declare-fun lt!628082 () Int)

(assert (=> d!504351 (>= lt!628082 0)))

(declare-fun e!1068862 () Int)

(assert (=> d!504351 (= lt!628082 e!1068862)))

(declare-fun c!271475 () Bool)

(assert (=> d!504351 (= c!271475 ((_ is Nil!18374) (list!7347 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))

(assert (=> d!504351 (= (size!14615 (list!7347 (charsOf!1886 (h!23776 (t!152190 tokens!457))))) lt!628082)))

(declare-fun b!1667735 () Bool)

(assert (=> b!1667735 (= e!1068862 0)))

(declare-fun b!1667736 () Bool)

(assert (=> b!1667736 (= e!1068862 (+ 1 (size!14615 (t!152189 (list!7347 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))))

(assert (= (and d!504351 c!271475) b!1667735))

(assert (= (and d!504351 (not c!271475)) b!1667736))

(declare-fun m!2032415 () Bool)

(assert (=> b!1667736 m!2032415))

(assert (=> d!503733 d!504351))

(declare-fun d!504353 () Bool)

(assert (=> d!504353 (= (list!7347 (charsOf!1886 (h!23776 (t!152190 tokens!457)))) (list!7349 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))

(declare-fun bs!397857 () Bool)

(assert (= bs!397857 d!504353))

(declare-fun m!2032417 () Bool)

(assert (=> bs!397857 m!2032417))

(assert (=> d!503733 d!504353))

(declare-fun d!504355 () Bool)

(declare-fun lt!628083 () Int)

(assert (=> d!504355 (= lt!628083 (size!14615 (list!7349 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457)))))))))

(assert (=> d!504355 (= lt!628083 (ite ((_ is Empty!6122) (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))) 0 (ite ((_ is Leaf!8961) (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))) (csize!12475 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))) (csize!12474 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))))))))

(assert (=> d!504355 (= (size!14622 (c!271171 (charsOf!1886 (h!23776 (t!152190 tokens!457))))) lt!628083)))

(declare-fun bs!397858 () Bool)

(assert (= bs!397858 d!504355))

(assert (=> bs!397858 m!2032417))

(assert (=> bs!397858 m!2032417))

(declare-fun m!2032419 () Bool)

(assert (=> bs!397858 m!2032419))

(assert (=> d!503733 d!504355))

(declare-fun d!504357 () Bool)

(assert (=> d!504357 (= (inv!15 (value!101927 (h!23776 (t!152190 tokens!457)))) (= (charsToBigInt!0 (text!23738 (value!101927 (h!23776 (t!152190 tokens!457)))) 0) (value!101922 (value!101927 (h!23776 (t!152190 tokens!457))))))))

(declare-fun bs!397859 () Bool)

(assert (= bs!397859 d!504357))

(declare-fun m!2032421 () Bool)

(assert (=> bs!397859 m!2032421))

(assert (=> b!1666656 d!504357))

(declare-fun d!504359 () Bool)

(declare-fun lt!628084 () Int)

(assert (=> d!504359 (>= lt!628084 0)))

(declare-fun e!1068863 () Int)

(assert (=> d!504359 (= lt!628084 e!1068863)))

(declare-fun c!271476 () Bool)

(assert (=> d!504359 (= c!271476 ((_ is Nil!18374) (originalCharacters!4051 (h!23776 (t!152190 tokens!457)))))))

(assert (=> d!504359 (= (size!14615 (originalCharacters!4051 (h!23776 (t!152190 tokens!457)))) lt!628084)))

(declare-fun b!1667737 () Bool)

(assert (=> b!1667737 (= e!1068863 0)))

(declare-fun b!1667738 () Bool)

(assert (=> b!1667738 (= e!1068863 (+ 1 (size!14615 (t!152189 (originalCharacters!4051 (h!23776 (t!152190 tokens!457)))))))))

(assert (= (and d!504359 c!271476) b!1667737))

(assert (= (and d!504359 (not c!271476)) b!1667738))

(declare-fun m!2032423 () Bool)

(assert (=> b!1667738 m!2032423))

(assert (=> b!1666672 d!504359))

(declare-fun d!504361 () Bool)

(declare-fun lt!628085 () Bool)

(assert (=> d!504361 (= lt!628085 (isEmpty!11433 (list!7347 (_2!10447 lt!627231))))))

(assert (=> d!504361 (= lt!628085 (isEmpty!11435 (c!271171 (_2!10447 lt!627231))))))

(assert (=> d!504361 (= (isEmpty!11429 (_2!10447 lt!627231)) lt!628085)))

(declare-fun bs!397860 () Bool)

(assert (= bs!397860 d!504361))

(declare-fun m!2032425 () Bool)

(assert (=> bs!397860 m!2032425))

(assert (=> bs!397860 m!2032425))

(declare-fun m!2032427 () Bool)

(assert (=> bs!397860 m!2032427))

(declare-fun m!2032429 () Bool)

(assert (=> bs!397860 m!2032429))

(assert (=> b!1666448 d!504361))

(declare-fun d!504363 () Bool)

(declare-fun choose!644 (List!18443) Int)

(assert (=> d!504363 (= (charsToBigInt!1 (text!23737 (value!101927 (h!23776 tokens!457)))) (choose!644 (text!23737 (value!101927 (h!23776 tokens!457)))))))

(declare-fun bs!397861 () Bool)

(assert (= bs!397861 d!504363))

(declare-fun m!2032431 () Bool)

(assert (=> bs!397861 m!2032431))

(assert (=> d!503795 d!504363))

(assert (=> b!1666564 d!503765))

(declare-fun bs!397862 () Bool)

(declare-fun d!504365 () Bool)

(assert (= bs!397862 (and d!504365 d!503621)))

(declare-fun lambda!67989 () Int)

(assert (=> bs!397862 (= (and (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (= (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (= lambda!67989 lambda!67951))))

(declare-fun bs!397863 () Bool)

(assert (= bs!397863 (and d!504365 d!503723)))

(assert (=> bs!397863 (= (and (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (h!23777 rules!1846)))) (= (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (h!23777 rules!1846))))) (= lambda!67989 lambda!67965))))

(assert (=> d!504365 true))

(assert (=> d!504365 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (dynLambda!8274 order!11021 lambda!67989))))

(assert (=> d!504365 true))

(assert (=> d!504365 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (dynLambda!8274 order!11021 lambda!67989))))

(assert (=> d!504365 (= (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (Forall!659 lambda!67989))))

(declare-fun bs!397864 () Bool)

(assert (= bs!397864 d!504365))

(declare-fun m!2032433 () Bool)

(assert (=> bs!397864 m!2032433))

(assert (=> d!503631 d!504365))

(declare-fun d!504367 () Bool)

(assert (=> d!504367 (= (list!7344 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))) (list!7348 (c!271173 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))))))))))

(declare-fun bs!397865 () Bool)

(assert (= bs!397865 d!504367))

(declare-fun m!2032435 () Bool)

(assert (=> bs!397865 m!2032435))

(assert (=> d!503765 d!504367))

(assert (=> d!503765 d!503979))

(declare-fun d!504369 () Bool)

(assert (=> d!504369 (= (list!7344 (singletonSeq!1744 (h!23776 (t!152190 tokens!457)))) (list!7348 (c!271173 (singletonSeq!1744 (h!23776 (t!152190 tokens!457))))))))

(declare-fun bs!397866 () Bool)

(assert (= bs!397866 d!504369))

(declare-fun m!2032437 () Bool)

(assert (=> bs!397866 m!2032437))

(assert (=> d!503765 d!504369))

(assert (=> d!503765 d!503977))

(assert (=> d!503765 d!503975))

(assert (=> d!503765 d!503569))

(declare-fun d!504371 () Bool)

(declare-fun lt!628086 () Int)

(assert (=> d!504371 (= lt!628086 (size!14618 (list!7344 (_1!10447 lt!627550))))))

(assert (=> d!504371 (= lt!628086 (size!14619 (c!271173 (_1!10447 lt!627550))))))

(assert (=> d!504371 (= (size!14616 (_1!10447 lt!627550)) lt!628086)))

(declare-fun bs!397867 () Bool)

(assert (= bs!397867 d!504371))

(assert (=> bs!397867 m!2031255))

(assert (=> bs!397867 m!2031255))

(declare-fun m!2032439 () Bool)

(assert (=> bs!397867 m!2032439))

(declare-fun m!2032441 () Bool)

(assert (=> bs!397867 m!2032441))

(assert (=> d!503765 d!504371))

(declare-fun d!504373 () Bool)

(declare-fun lt!628088 () Bool)

(declare-fun e!1068865 () Bool)

(assert (=> d!504373 (= lt!628088 e!1068865)))

(declare-fun res!748126 () Bool)

(assert (=> d!504373 (=> (not res!748126) (not e!1068865))))

(assert (=> d!504373 (= res!748126 (= (list!7344 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) (list!7344 (singletonSeq!1744 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))

(declare-fun e!1068864 () Bool)

(assert (=> d!504373 (= lt!628088 e!1068864)))

(declare-fun res!748125 () Bool)

(assert (=> d!504373 (=> (not res!748125) (not e!1068864))))

(declare-fun lt!628087 () tuple2!18090)

(assert (=> d!504373 (= res!748125 (= (size!14616 (_1!10447 lt!628087)) 1))))

(assert (=> d!504373 (= lt!628087 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))

(assert (=> d!504373 (not (isEmpty!11428 rules!1846))))

(assert (=> d!504373 (= (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) lt!628088)))

(declare-fun b!1667739 () Bool)

(declare-fun res!748124 () Bool)

(assert (=> b!1667739 (=> (not res!748124) (not e!1068864))))

(assert (=> b!1667739 (= res!748124 (= (apply!4933 (_1!10447 lt!628087) 0) (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))

(declare-fun b!1667740 () Bool)

(assert (=> b!1667740 (= e!1068864 (isEmpty!11429 (_2!10447 lt!628087)))))

(declare-fun b!1667741 () Bool)

(assert (=> b!1667741 (= e!1068865 (isEmpty!11429 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))))

(assert (= (and d!504373 res!748125) b!1667739))

(assert (= (and b!1667739 res!748124) b!1667740))

(assert (= (and d!504373 res!748126) b!1667741))

(declare-fun m!2032443 () Bool)

(assert (=> d!504373 m!2032443))

(declare-fun m!2032445 () Bool)

(assert (=> d!504373 m!2032445))

(assert (=> d!504373 m!2032443))

(declare-fun m!2032447 () Bool)

(assert (=> d!504373 m!2032447))

(assert (=> d!504373 m!2032443))

(declare-fun m!2032449 () Bool)

(assert (=> d!504373 m!2032449))

(assert (=> d!504373 m!2029519))

(declare-fun m!2032451 () Bool)

(assert (=> d!504373 m!2032451))

(assert (=> d!504373 m!2032449))

(declare-fun m!2032453 () Bool)

(assert (=> d!504373 m!2032453))

(declare-fun m!2032455 () Bool)

(assert (=> b!1667739 m!2032455))

(declare-fun m!2032457 () Bool)

(assert (=> b!1667740 m!2032457))

(assert (=> b!1667741 m!2032443))

(assert (=> b!1667741 m!2032443))

(assert (=> b!1667741 m!2032449))

(assert (=> b!1667741 m!2032449))

(assert (=> b!1667741 m!2032453))

(declare-fun m!2032459 () Bool)

(assert (=> b!1667741 m!2032459))

(assert (=> b!1666478 d!504373))

(declare-fun d!504375 () Bool)

(assert (=> d!504375 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))

(declare-fun lt!628089 () Unit!31136)

(assert (=> d!504375 (= lt!628089 (choose!10031 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))

(assert (=> d!504375 (not (isEmpty!11428 rules!1846))))

(assert (=> d!504375 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) lt!628089)))

(declare-fun bs!397868 () Bool)

(assert (= bs!397868 d!504375))

(assert (=> bs!397868 m!2029875))

(declare-fun m!2032461 () Bool)

(assert (=> bs!397868 m!2032461))

(assert (=> bs!397868 m!2029519))

(assert (=> b!1666478 d!504375))

(declare-fun d!504377 () Bool)

(assert (=> d!504377 (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))

(declare-fun lt!628090 () Unit!31136)

(assert (=> d!504377 (= lt!628090 (choose!10031 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))

(assert (=> d!504377 (not (isEmpty!11428 rules!1846))))

(assert (=> d!504377 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!626 thiss!17113 rules!1846 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) lt!628090)))

(declare-fun bs!397869 () Bool)

(assert (= bs!397869 d!504377))

(assert (=> bs!397869 m!2029869))

(declare-fun m!2032463 () Bool)

(assert (=> bs!397869 m!2032463))

(assert (=> bs!397869 m!2029519))

(assert (=> b!1666478 d!504377))

(declare-fun d!504379 () Bool)

(declare-fun lt!628101 () Int)

(assert (=> d!504379 (= lt!628101 (size!14615 (list!7347 (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(assert (=> d!504379 (= lt!628101 (size!14622 (c!271171 (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(assert (=> d!504379 (= (size!14614 (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))) lt!628101)))

(declare-fun bs!397870 () Bool)

(assert (= bs!397870 d!504379))

(assert (=> bs!397870 m!2029863))

(declare-fun m!2032465 () Bool)

(assert (=> bs!397870 m!2032465))

(assert (=> bs!397870 m!2032465))

(declare-fun m!2032467 () Bool)

(assert (=> bs!397870 m!2032467))

(declare-fun m!2032469 () Bool)

(assert (=> bs!397870 m!2032469))

(assert (=> b!1666478 d!504379))

(declare-fun d!504381 () Bool)

(declare-fun lt!628106 () BalanceConc!12188)

(assert (=> d!504381 (= (list!7347 lt!628106) (originalCharacters!4051 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))

(assert (=> d!504381 (= lt!628106 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) (value!101927 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))))

(assert (=> d!504381 (= (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) lt!628106)))

(declare-fun b_lambda!52367 () Bool)

(assert (=> (not b_lambda!52367) (not d!504381)))

(declare-fun tb!95683 () Bool)

(declare-fun t!152377 () Bool)

(assert (=> (and b!1666724 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152377) tb!95683))

(declare-fun b!1667746 () Bool)

(declare-fun e!1068868 () Bool)

(declare-fun tp!480948 () Bool)

(assert (=> b!1667746 (= e!1068868 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) (value!101927 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) tp!480948))))

(declare-fun result!115598 () Bool)

(assert (=> tb!95683 (= result!115598 (and (inv!23723 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) (value!101927 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))) e!1068868))))

(assert (= tb!95683 b!1667746))

(declare-fun m!2032471 () Bool)

(assert (=> b!1667746 m!2032471))

(declare-fun m!2032473 () Bool)

(assert (=> tb!95683 m!2032473))

(assert (=> d!504381 t!152377))

(declare-fun b_and!118565 () Bool)

(assert (= b_and!118559 (and (=> t!152377 result!115598) b_and!118565)))

(declare-fun tb!95685 () Bool)

(declare-fun t!152379 () Bool)

(assert (=> (and b!1666178 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152379) tb!95685))

(declare-fun result!115600 () Bool)

(assert (= result!115600 result!115598))

(assert (=> d!504381 t!152379))

(declare-fun b_and!118567 () Bool)

(assert (= b_and!118557 (and (=> t!152379 result!115600) b_and!118567)))

(declare-fun t!152381 () Bool)

(declare-fun tb!95687 () Bool)

(assert (=> (and b!1666187 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152381) tb!95687))

(declare-fun result!115602 () Bool)

(assert (= result!115602 result!115598))

(assert (=> d!504381 t!152381))

(declare-fun b_and!118569 () Bool)

(assert (= b_and!118555 (and (=> t!152381 result!115602) b_and!118569)))

(declare-fun t!152383 () Bool)

(declare-fun tb!95689 () Bool)

(assert (=> (and b!1666753 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152383) tb!95689))

(declare-fun result!115604 () Bool)

(assert (= result!115604 result!115598))

(assert (=> d!504381 t!152383))

(declare-fun b_and!118571 () Bool)

(assert (= b_and!118553 (and (=> t!152383 result!115604) b_and!118571)))

(declare-fun t!152385 () Bool)

(declare-fun tb!95691 () Bool)

(assert (=> (and b!1666432 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152385) tb!95691))

(declare-fun result!115606 () Bool)

(assert (= result!115606 result!115598))

(assert (=> d!504381 t!152385))

(declare-fun b_and!118573 () Bool)

(assert (= b_and!118563 (and (=> t!152385 result!115606) b_and!118573)))

(declare-fun tb!95693 () Bool)

(declare-fun t!152387 () Bool)

(assert (=> (and b!1666409 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152387) tb!95693))

(declare-fun result!115608 () Bool)

(assert (= result!115608 result!115598))

(assert (=> d!504381 t!152387))

(declare-fun b_and!118575 () Bool)

(assert (= b_and!118561 (and (=> t!152387 result!115608) b_and!118575)))

(declare-fun m!2032475 () Bool)

(assert (=> d!504381 m!2032475))

(declare-fun m!2032477 () Bool)

(assert (=> d!504381 m!2032477))

(assert (=> b!1666478 d!504381))

(declare-fun d!504383 () Bool)

(declare-fun lt!628108 () Bool)

(declare-fun e!1068880 () Bool)

(assert (=> d!504383 (= lt!628108 e!1068880)))

(declare-fun res!748141 () Bool)

(assert (=> d!504383 (=> (not res!748141) (not e!1068880))))

(assert (=> d!504383 (= res!748141 (= (list!7344 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))) (list!7344 (singletonSeq!1744 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(declare-fun e!1068879 () Bool)

(assert (=> d!504383 (= lt!628108 e!1068879)))

(declare-fun res!748140 () Bool)

(assert (=> d!504383 (=> (not res!748140) (not e!1068879))))

(declare-fun lt!628107 () tuple2!18090)

(assert (=> d!504383 (= res!748140 (= (size!14616 (_1!10447 lt!628107)) 1))))

(assert (=> d!504383 (= lt!628107 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))

(assert (=> d!504383 (not (isEmpty!11428 rules!1846))))

(assert (=> d!504383 (= (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) lt!628108)))

(declare-fun b!1667759 () Bool)

(declare-fun res!748139 () Bool)

(assert (=> b!1667759 (=> (not res!748139) (not e!1068879))))

(assert (=> b!1667759 (= res!748139 (= (apply!4933 (_1!10447 lt!628107) 0) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))

(declare-fun b!1667760 () Bool)

(assert (=> b!1667760 (= e!1068879 (isEmpty!11429 (_2!10447 lt!628107)))))

(declare-fun b!1667761 () Bool)

(assert (=> b!1667761 (= e!1068880 (isEmpty!11429 (_2!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))))))))))

(assert (= (and d!504383 res!748140) b!1667759))

(assert (= (and b!1667759 res!748139) b!1667760))

(assert (= (and d!504383 res!748141) b!1667761))

(declare-fun m!2032479 () Bool)

(assert (=> d!504383 m!2032479))

(declare-fun m!2032481 () Bool)

(assert (=> d!504383 m!2032481))

(assert (=> d!504383 m!2032479))

(declare-fun m!2032483 () Bool)

(assert (=> d!504383 m!2032483))

(assert (=> d!504383 m!2032479))

(declare-fun m!2032485 () Bool)

(assert (=> d!504383 m!2032485))

(assert (=> d!504383 m!2029519))

(declare-fun m!2032487 () Bool)

(assert (=> d!504383 m!2032487))

(assert (=> d!504383 m!2032485))

(declare-fun m!2032489 () Bool)

(assert (=> d!504383 m!2032489))

(declare-fun m!2032491 () Bool)

(assert (=> b!1667759 m!2032491))

(declare-fun m!2032493 () Bool)

(assert (=> b!1667760 m!2032493))

(assert (=> b!1667761 m!2032479))

(assert (=> b!1667761 m!2032479))

(assert (=> b!1667761 m!2032485))

(assert (=> b!1667761 m!2032485))

(assert (=> b!1667761 m!2032489))

(declare-fun m!2032495 () Bool)

(assert (=> b!1667761 m!2032495))

(assert (=> b!1666478 d!504383))

(declare-fun d!504385 () Bool)

(assert (=> d!504385 (= (separableTokensPredicate!806 thiss!17113 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))) (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) rules!1846) (not (prefixMatchZipperSequence!667 (rulesRegex!621 thiss!17113 rules!1846) (++!5003 (charsOf!1886 (h!23776 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))) (singletonSeq!1747 (apply!4937 (charsOf!1886 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457)))))) 0))))))))

(declare-fun bs!397871 () Bool)

(assert (= bs!397871 d!504385))

(declare-fun m!2032497 () Bool)

(assert (=> bs!397871 m!2032497))

(assert (=> bs!397871 m!2030115))

(assert (=> bs!397871 m!2032497))

(declare-fun m!2032499 () Bool)

(assert (=> bs!397871 m!2032499))

(declare-fun m!2032501 () Bool)

(assert (=> bs!397871 m!2032501))

(declare-fun m!2032503 () Bool)

(assert (=> bs!397871 m!2032503))

(assert (=> bs!397871 m!2032499))

(assert (=> bs!397871 m!2029863))

(assert (=> bs!397871 m!2029863))

(assert (=> bs!397871 m!2032503))

(assert (=> bs!397871 m!2030115))

(assert (=> bs!397871 m!2032501))

(declare-fun m!2032505 () Bool)

(assert (=> bs!397871 m!2032505))

(assert (=> b!1666478 d!504385))

(declare-fun b!1667765 () Bool)

(declare-fun e!1068882 () Bool)

(declare-fun lt!628109 () List!18445)

(assert (=> b!1667765 (= e!1068882 (or (not (= (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160)))) Nil!18375)) (= lt!628109 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160)))))))))

(declare-fun b!1667762 () Bool)

(declare-fun e!1068881 () List!18445)

(assert (=> b!1667762 (= e!1068881 (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160)))))))

(declare-fun b!1667763 () Bool)

(assert (=> b!1667763 (= e!1068881 (Cons!18375 (h!23776 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160))))) (++!5005 (t!152190 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160))))) (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160)))))))))

(declare-fun b!1667764 () Bool)

(declare-fun res!748143 () Bool)

(assert (=> b!1667764 (=> (not res!748143) (not e!1068882))))

(assert (=> b!1667764 (= res!748143 (= (size!14618 lt!628109) (+ (size!14618 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160))))) (size!14618 (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160))))))))))

(declare-fun d!504387 () Bool)

(assert (=> d!504387 e!1068882))

(declare-fun res!748142 () Bool)

(assert (=> d!504387 (=> (not res!748142) (not e!1068882))))

(assert (=> d!504387 (= res!748142 (= (content!2564 lt!628109) ((_ map or) (content!2564 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160))))) (content!2564 (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160))))))))))

(assert (=> d!504387 (= lt!628109 e!1068881)))

(declare-fun c!271479 () Bool)

(assert (=> d!504387 (= c!271479 ((_ is Nil!18375) (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160))))))))

(assert (=> d!504387 (= (++!5005 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160)))) (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160))))) lt!628109)))

(assert (= (and d!504387 c!271479) b!1667762))

(assert (= (and d!504387 (not c!271479)) b!1667763))

(assert (= (and d!504387 res!748142) b!1667764))

(assert (= (and b!1667764 res!748143) b!1667765))

(assert (=> b!1667763 m!2030097))

(declare-fun m!2032507 () Bool)

(assert (=> b!1667763 m!2032507))

(declare-fun m!2032509 () Bool)

(assert (=> b!1667764 m!2032509))

(assert (=> b!1667764 m!2030095))

(declare-fun m!2032511 () Bool)

(assert (=> b!1667764 m!2032511))

(assert (=> b!1667764 m!2030097))

(declare-fun m!2032513 () Bool)

(assert (=> b!1667764 m!2032513))

(declare-fun m!2032515 () Bool)

(assert (=> d!504387 m!2032515))

(assert (=> d!504387 m!2030095))

(declare-fun m!2032517 () Bool)

(assert (=> d!504387 m!2032517))

(assert (=> d!504387 m!2030097))

(declare-fun m!2032519 () Bool)

(assert (=> d!504387 m!2032519))

(assert (=> b!1666580 d!504387))

(declare-fun d!504389 () Bool)

(declare-fun c!271480 () Bool)

(assert (=> d!504389 (= c!271480 ((_ is Empty!6123) (left!14699 (c!271173 (_1!10447 lt!627160)))))))

(declare-fun e!1068883 () List!18445)

(assert (=> d!504389 (= (list!7348 (left!14699 (c!271173 (_1!10447 lt!627160)))) e!1068883)))

(declare-fun b!1667767 () Bool)

(declare-fun e!1068884 () List!18445)

(assert (=> b!1667767 (= e!1068883 e!1068884)))

(declare-fun c!271481 () Bool)

(assert (=> b!1667767 (= c!271481 ((_ is Leaf!8962) (left!14699 (c!271173 (_1!10447 lt!627160)))))))

(declare-fun b!1667769 () Bool)

(assert (=> b!1667769 (= e!1068884 (++!5005 (list!7348 (left!14699 (left!14699 (c!271173 (_1!10447 lt!627160))))) (list!7348 (right!15029 (left!14699 (c!271173 (_1!10447 lt!627160)))))))))

(declare-fun b!1667768 () Bool)

(assert (=> b!1667768 (= e!1068884 (list!7352 (xs!8967 (left!14699 (c!271173 (_1!10447 lt!627160))))))))

(declare-fun b!1667766 () Bool)

(assert (=> b!1667766 (= e!1068883 Nil!18375)))

(assert (= (and d!504389 c!271480) b!1667766))

(assert (= (and d!504389 (not c!271480)) b!1667767))

(assert (= (and b!1667767 c!271481) b!1667768))

(assert (= (and b!1667767 (not c!271481)) b!1667769))

(declare-fun m!2032521 () Bool)

(assert (=> b!1667769 m!2032521))

(declare-fun m!2032523 () Bool)

(assert (=> b!1667769 m!2032523))

(assert (=> b!1667769 m!2032521))

(assert (=> b!1667769 m!2032523))

(declare-fun m!2032525 () Bool)

(assert (=> b!1667769 m!2032525))

(declare-fun m!2032527 () Bool)

(assert (=> b!1667768 m!2032527))

(assert (=> b!1666580 d!504389))

(declare-fun d!504391 () Bool)

(declare-fun c!271482 () Bool)

(assert (=> d!504391 (= c!271482 ((_ is Empty!6123) (right!15029 (c!271173 (_1!10447 lt!627160)))))))

(declare-fun e!1068885 () List!18445)

(assert (=> d!504391 (= (list!7348 (right!15029 (c!271173 (_1!10447 lt!627160)))) e!1068885)))

(declare-fun b!1667771 () Bool)

(declare-fun e!1068886 () List!18445)

(assert (=> b!1667771 (= e!1068885 e!1068886)))

(declare-fun c!271483 () Bool)

(assert (=> b!1667771 (= c!271483 ((_ is Leaf!8962) (right!15029 (c!271173 (_1!10447 lt!627160)))))))

(declare-fun b!1667773 () Bool)

(assert (=> b!1667773 (= e!1068886 (++!5005 (list!7348 (left!14699 (right!15029 (c!271173 (_1!10447 lt!627160))))) (list!7348 (right!15029 (right!15029 (c!271173 (_1!10447 lt!627160)))))))))

(declare-fun b!1667772 () Bool)

(assert (=> b!1667772 (= e!1068886 (list!7352 (xs!8967 (right!15029 (c!271173 (_1!10447 lt!627160))))))))

(declare-fun b!1667770 () Bool)

(assert (=> b!1667770 (= e!1068885 Nil!18375)))

(assert (= (and d!504391 c!271482) b!1667770))

(assert (= (and d!504391 (not c!271482)) b!1667771))

(assert (= (and b!1667771 c!271483) b!1667772))

(assert (= (and b!1667771 (not c!271483)) b!1667773))

(declare-fun m!2032529 () Bool)

(assert (=> b!1667773 m!2032529))

(declare-fun m!2032531 () Bool)

(assert (=> b!1667773 m!2032531))

(assert (=> b!1667773 m!2032529))

(assert (=> b!1667773 m!2032531))

(declare-fun m!2032533 () Bool)

(assert (=> b!1667773 m!2032533))

(declare-fun m!2032535 () Bool)

(assert (=> b!1667772 m!2032535))

(assert (=> b!1666580 d!504391))

(declare-fun b!1667775 () Bool)

(declare-fun e!1068887 () List!18444)

(assert (=> b!1667775 (= e!1068887 (Cons!18374 (h!23775 lt!627401) (++!5002 (t!152189 lt!627401) lt!627408)))))

(declare-fun b!1667776 () Bool)

(declare-fun res!748145 () Bool)

(declare-fun e!1068888 () Bool)

(assert (=> b!1667776 (=> (not res!748145) (not e!1068888))))

(declare-fun lt!628110 () List!18444)

(assert (=> b!1667776 (= res!748145 (= (size!14615 lt!628110) (+ (size!14615 lt!627401) (size!14615 lt!627408))))))

(declare-fun d!504393 () Bool)

(assert (=> d!504393 e!1068888))

(declare-fun res!748144 () Bool)

(assert (=> d!504393 (=> (not res!748144) (not e!1068888))))

(assert (=> d!504393 (= res!748144 (= (content!2565 lt!628110) ((_ map or) (content!2565 lt!627401) (content!2565 lt!627408))))))

(assert (=> d!504393 (= lt!628110 e!1068887)))

(declare-fun c!271484 () Bool)

(assert (=> d!504393 (= c!271484 ((_ is Nil!18374) lt!627401))))

(assert (=> d!504393 (= (++!5002 lt!627401 lt!627408) lt!628110)))

(declare-fun b!1667777 () Bool)

(assert (=> b!1667777 (= e!1068888 (or (not (= lt!627408 Nil!18374)) (= lt!628110 lt!627401)))))

(declare-fun b!1667774 () Bool)

(assert (=> b!1667774 (= e!1068887 lt!627408)))

(assert (= (and d!504393 c!271484) b!1667774))

(assert (= (and d!504393 (not c!271484)) b!1667775))

(assert (= (and d!504393 res!748144) b!1667776))

(assert (= (and b!1667776 res!748145) b!1667777))

(declare-fun m!2032537 () Bool)

(assert (=> b!1667775 m!2032537))

(declare-fun m!2032539 () Bool)

(assert (=> b!1667776 m!2032539))

(declare-fun m!2032541 () Bool)

(assert (=> b!1667776 m!2032541))

(declare-fun m!2032543 () Bool)

(assert (=> b!1667776 m!2032543))

(declare-fun m!2032545 () Bool)

(assert (=> d!504393 m!2032545))

(declare-fun m!2032547 () Bool)

(assert (=> d!504393 m!2032547))

(declare-fun m!2032549 () Bool)

(assert (=> d!504393 m!2032549))

(assert (=> d!503663 d!504393))

(declare-fun d!504395 () Bool)

(assert (=> d!504395 (isSuffix!426 lt!627408 (++!5002 lt!627401 lt!627408))))

(declare-fun lt!628118 () Unit!31136)

(assert (=> d!504395 (= lt!628118 (choose!10037 lt!627401 lt!627408))))

(assert (=> d!504395 (= (lemmaConcatTwoListThenFSndIsSuffix!327 lt!627401 lt!627408) lt!628118)))

(declare-fun bs!397872 () Bool)

(assert (= bs!397872 d!504395))

(assert (=> bs!397872 m!2030055))

(assert (=> bs!397872 m!2030055))

(assert (=> bs!397872 m!2030057))

(declare-fun m!2032551 () Bool)

(assert (=> bs!397872 m!2032551))

(assert (=> d!503663 d!504395))

(declare-fun bm!106557 () Bool)

(declare-fun call!106562 () Option!3526)

(declare-fun maxPrefixOneRuleZipperSequenceV2!103 (LexerInterface!2866 Rule!6274 BalanceConc!12188 BalanceConc!12188) Option!3526)

(assert (=> bm!106557 (= call!106562 (maxPrefixOneRuleZipperSequenceV2!103 thiss!17113 (h!23777 rules!1846) (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun b!1667815 () Bool)

(declare-fun e!1068917 () Bool)

(declare-fun e!1068918 () Bool)

(assert (=> b!1667815 (= e!1068917 e!1068918)))

(declare-fun res!748176 () Bool)

(assert (=> b!1667815 (=> (not res!748176) (not e!1068918))))

(declare-fun lt!628188 () Option!3526)

(assert (=> b!1667815 (= res!748176 (= (_1!10451 (get!5379 lt!628188)) (_1!10450 (get!5380 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667816 () Bool)

(declare-fun e!1068914 () Option!3526)

(declare-fun lt!628185 () Option!3526)

(declare-fun lt!628190 () Option!3526)

(assert (=> b!1667816 (= e!1068914 (ite (and ((_ is None!3525) lt!628185) ((_ is None!3525) lt!628190)) None!3525 (ite ((_ is None!3525) lt!628190) lt!628185 (ite ((_ is None!3525) lt!628185) lt!628190 (ite (>= (size!14610 (_1!10451 (v!24774 lt!628185))) (size!14610 (_1!10451 (v!24774 lt!628190)))) lt!628185 lt!628190)))))))

(assert (=> b!1667816 (= lt!628185 call!106562)))

(assert (=> b!1667816 (= lt!628190 (maxPrefixZipperSequenceV2!275 thiss!17113 (t!152191 rules!1846) (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(declare-fun b!1667817 () Bool)

(assert (=> b!1667817 (= e!1068914 call!106562)))

(declare-fun b!1667818 () Bool)

(assert (=> b!1667818 (= e!1068918 (= (list!7347 (_2!10451 (get!5379 lt!628188))) (_2!10450 (get!5380 (maxPrefix!1427 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667819 () Bool)

(declare-fun res!748175 () Bool)

(declare-fun e!1068919 () Bool)

(assert (=> b!1667819 (=> (not res!748175) (not e!1068919))))

(declare-fun e!1068916 () Bool)

(assert (=> b!1667819 (= res!748175 e!1068916)))

(declare-fun res!748171 () Bool)

(assert (=> b!1667819 (=> res!748171 e!1068916)))

(assert (=> b!1667819 (= res!748171 (not (isDefined!2880 lt!628188)))))

(declare-fun b!1667820 () Bool)

(assert (=> b!1667820 (= e!1068919 e!1068917)))

(declare-fun res!748173 () Bool)

(assert (=> b!1667820 (=> res!748173 e!1068917)))

(assert (=> b!1667820 (= res!748173 (not (isDefined!2880 lt!628188)))))

(declare-fun d!504397 () Bool)

(assert (=> d!504397 e!1068919))

(declare-fun res!748174 () Bool)

(assert (=> d!504397 (=> (not res!748174) (not e!1068919))))

(assert (=> d!504397 (= res!748174 (= (isDefined!2880 lt!628188) (isDefined!2881 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(assert (=> d!504397 (= lt!628188 e!1068914)))

(declare-fun c!271491 () Bool)

(assert (=> d!504397 (= c!271491 (and ((_ is Cons!18376) rules!1846) ((_ is Nil!18376) (t!152191 rules!1846))))))

(declare-fun lt!628186 () Unit!31136)

(declare-fun lt!628184 () Unit!31136)

(assert (=> d!504397 (= lt!628186 lt!628184)))

(declare-fun lt!628187 () List!18444)

(declare-fun lt!628189 () List!18444)

(assert (=> d!504397 (isPrefix!1494 lt!628187 lt!628189)))

(assert (=> d!504397 (= lt!628184 (lemmaIsPrefixRefl!1015 lt!628187 lt!628189))))

(assert (=> d!504397 (= lt!628189 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!504397 (= lt!628187 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))

(assert (=> d!504397 (rulesValidInductive!1038 thiss!17113 rules!1846)))

(assert (=> d!504397 (= (maxPrefixZipperSequenceV2!275 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)) (print!1397 thiss!17113 (seqFromList!2212 tokens!457))) lt!628188)))

(declare-fun b!1667821 () Bool)

(declare-fun e!1068915 () Bool)

(assert (=> b!1667821 (= e!1068916 e!1068915)))

(declare-fun res!748172 () Bool)

(assert (=> b!1667821 (=> (not res!748172) (not e!1068915))))

(assert (=> b!1667821 (= res!748172 (= (_1!10451 (get!5379 lt!628188)) (_1!10450 (get!5380 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(declare-fun b!1667822 () Bool)

(assert (=> b!1667822 (= e!1068915 (= (list!7347 (_2!10451 (get!5379 lt!628188))) (_2!10450 (get!5380 (maxPrefixZipper!363 thiss!17113 rules!1846 (list!7347 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))))))))

(assert (= (and d!504397 c!271491) b!1667817))

(assert (= (and d!504397 (not c!271491)) b!1667816))

(assert (= (or b!1667817 b!1667816) bm!106557))

(assert (= (and d!504397 res!748174) b!1667819))

(assert (= (and b!1667819 (not res!748171)) b!1667821))

(assert (= (and b!1667821 res!748172) b!1667822))

(assert (= (and b!1667819 res!748175) b!1667820))

(assert (= (and b!1667820 (not res!748173)) b!1667815))

(assert (= (and b!1667815 res!748176) b!1667818))

(declare-fun m!2032655 () Bool)

(assert (=> b!1667815 m!2032655))

(assert (=> b!1667815 m!2029531))

(assert (=> b!1667815 m!2029705))

(assert (=> b!1667815 m!2029705))

(assert (=> b!1667815 m!2029883))

(assert (=> b!1667815 m!2029883))

(assert (=> b!1667815 m!2031131))

(declare-fun m!2032657 () Bool)

(assert (=> b!1667820 m!2032657))

(declare-fun m!2032659 () Bool)

(assert (=> b!1667818 m!2032659))

(assert (=> b!1667818 m!2029883))

(assert (=> b!1667818 m!2031131))

(assert (=> b!1667818 m!2032655))

(assert (=> b!1667818 m!2029705))

(assert (=> b!1667818 m!2029883))

(assert (=> b!1667818 m!2029531))

(assert (=> b!1667818 m!2029705))

(assert (=> d!504397 m!2032657))

(declare-fun m!2032661 () Bool)

(assert (=> d!504397 m!2032661))

(assert (=> d!504397 m!2029531))

(assert (=> d!504397 m!2029705))

(assert (=> d!504397 m!2031125))

(assert (=> d!504397 m!2031133))

(assert (=> d!504397 m!2030075))

(assert (=> d!504397 m!2029705))

(assert (=> d!504397 m!2031125))

(declare-fun m!2032663 () Bool)

(assert (=> d!504397 m!2032663))

(assert (=> b!1667819 m!2032657))

(assert (=> b!1667816 m!2029531))

(assert (=> b!1667816 m!2029531))

(declare-fun m!2032665 () Bool)

(assert (=> b!1667816 m!2032665))

(assert (=> b!1667822 m!2032659))

(assert (=> b!1667822 m!2029531))

(assert (=> b!1667822 m!2029705))

(assert (=> b!1667822 m!2029705))

(assert (=> b!1667822 m!2031125))

(assert (=> b!1667822 m!2031125))

(assert (=> b!1667822 m!2031127))

(assert (=> b!1667822 m!2032655))

(assert (=> bm!106557 m!2029531))

(assert (=> bm!106557 m!2029531))

(declare-fun m!2032671 () Bool)

(assert (=> bm!106557 m!2032671))

(assert (=> b!1667821 m!2032655))

(assert (=> b!1667821 m!2029531))

(assert (=> b!1667821 m!2029705))

(assert (=> b!1667821 m!2029705))

(assert (=> b!1667821 m!2031125))

(assert (=> b!1667821 m!2031125))

(assert (=> b!1667821 m!2031127))

(assert (=> d!503663 d!504397))

(assert (=> d!503663 d!503659))

(declare-fun d!504421 () Bool)

(assert (=> d!504421 (= (list!7344 (_1!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))) (list!7348 (c!271173 (_1!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun bs!397877 () Bool)

(assert (= bs!397877 d!504421))

(declare-fun m!2032673 () Bool)

(assert (=> bs!397877 m!2032673))

(assert (=> d!503663 d!504421))

(assert (=> d!503663 d!503959))

(declare-fun d!504423 () Bool)

(declare-fun e!1068923 () Bool)

(assert (=> d!504423 e!1068923))

(declare-fun res!748180 () Bool)

(assert (=> d!504423 (=> res!748180 e!1068923)))

(declare-fun lt!628194 () Bool)

(assert (=> d!504423 (= res!748180 (not lt!628194))))

(assert (=> d!504423 (= lt!628194 (= lt!627408 (drop!940 (++!5002 lt!627401 lt!627408) (- (size!14615 (++!5002 lt!627401 lt!627408)) (size!14615 lt!627408)))))))

(assert (=> d!504423 (= (isSuffix!426 lt!627408 (++!5002 lt!627401 lt!627408)) lt!628194)))

(declare-fun b!1667826 () Bool)

(assert (=> b!1667826 (= e!1068923 (>= (size!14615 (++!5002 lt!627401 lt!627408)) (size!14615 lt!627408)))))

(assert (= (and d!504423 (not res!748180)) b!1667826))

(assert (=> d!504423 m!2030055))

(declare-fun m!2032675 () Bool)

(assert (=> d!504423 m!2032675))

(assert (=> d!504423 m!2032543))

(assert (=> d!504423 m!2030055))

(declare-fun m!2032677 () Bool)

(assert (=> d!504423 m!2032677))

(assert (=> b!1667826 m!2030055))

(assert (=> b!1667826 m!2032675))

(assert (=> b!1667826 m!2032543))

(assert (=> d!503663 d!504423))

(declare-fun d!504425 () Bool)

(assert (=> d!504425 (= (list!7344 (_1!10447 lt!627407)) (list!7348 (c!271173 (_1!10447 lt!627407))))))

(declare-fun bs!397878 () Bool)

(assert (= bs!397878 d!504425))

(declare-fun m!2032679 () Bool)

(assert (=> bs!397878 m!2032679))

(assert (=> d!503663 d!504425))

(assert (=> d!503663 d!503951))

(declare-fun d!504427 () Bool)

(assert (=> d!504427 (= (list!7344 lt!627235) (list!7348 (c!271173 lt!627235)))))

(declare-fun bs!397879 () Bool)

(assert (= bs!397879 d!504427))

(declare-fun m!2032681 () Bool)

(assert (=> bs!397879 m!2032681))

(assert (=> d!503635 d!504427))

(assert (=> d!503635 d!504039))

(declare-fun d!504429 () Bool)

(assert (=> d!504429 (= (inv!23715 (tag!3521 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (= (mod (str.len (value!101926 (tag!3521 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) 2) 0))))

(assert (=> b!1666752 d!504429))

(declare-fun d!504431 () Bool)

(declare-fun res!748181 () Bool)

(declare-fun e!1068924 () Bool)

(assert (=> d!504431 (=> (not res!748181) (not e!1068924))))

(assert (=> d!504431 (= res!748181 (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))))))

(assert (=> d!504431 (= (inv!23718 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) e!1068924)))

(declare-fun b!1667827 () Bool)

(assert (=> b!1667827 (= e!1068924 (equivClasses!1203 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))))))

(assert (= (and d!504431 res!748181) b!1667827))

(declare-fun m!2032683 () Bool)

(assert (=> d!504431 m!2032683))

(declare-fun m!2032685 () Bool)

(assert (=> b!1667827 m!2032685))

(assert (=> b!1666752 d!504431))

(declare-fun d!504433 () Bool)

(declare-fun c!271492 () Bool)

(assert (=> d!504433 (= c!271492 ((_ is Empty!6123) (c!271173 (_1!10447 lt!627220))))))

(declare-fun e!1068925 () List!18445)

(assert (=> d!504433 (= (list!7348 (c!271173 (_1!10447 lt!627220))) e!1068925)))

(declare-fun b!1667829 () Bool)

(declare-fun e!1068926 () List!18445)

(assert (=> b!1667829 (= e!1068925 e!1068926)))

(declare-fun c!271493 () Bool)

(assert (=> b!1667829 (= c!271493 ((_ is Leaf!8962) (c!271173 (_1!10447 lt!627220))))))

(declare-fun b!1667831 () Bool)

(assert (=> b!1667831 (= e!1068926 (++!5005 (list!7348 (left!14699 (c!271173 (_1!10447 lt!627220)))) (list!7348 (right!15029 (c!271173 (_1!10447 lt!627220))))))))

(declare-fun b!1667830 () Bool)

(assert (=> b!1667830 (= e!1068926 (list!7352 (xs!8967 (c!271173 (_1!10447 lt!627220)))))))

(declare-fun b!1667828 () Bool)

(assert (=> b!1667828 (= e!1068925 Nil!18375)))

(assert (= (and d!504433 c!271492) b!1667828))

(assert (= (and d!504433 (not c!271492)) b!1667829))

(assert (= (and b!1667829 c!271493) b!1667830))

(assert (= (and b!1667829 (not c!271493)) b!1667831))

(declare-fun m!2032687 () Bool)

(assert (=> b!1667831 m!2032687))

(declare-fun m!2032689 () Bool)

(assert (=> b!1667831 m!2032689))

(assert (=> b!1667831 m!2032687))

(assert (=> b!1667831 m!2032689))

(declare-fun m!2032691 () Bool)

(assert (=> b!1667831 m!2032691))

(declare-fun m!2032693 () Bool)

(assert (=> b!1667830 m!2032693))

(assert (=> d!503655 d!504433))

(declare-fun d!504435 () Bool)

(declare-fun lt!628197 () Int)

(assert (=> d!504435 (>= lt!628197 0)))

(declare-fun e!1068927 () Int)

(assert (=> d!504435 (= lt!628197 e!1068927)))

(declare-fun c!271494 () Bool)

(assert (=> d!504435 (= c!271494 ((_ is Nil!18374) (_2!10449 lt!627281)))))

(assert (=> d!504435 (= (size!14615 (_2!10449 lt!627281)) lt!628197)))

(declare-fun b!1667832 () Bool)

(assert (=> b!1667832 (= e!1068927 0)))

(declare-fun b!1667833 () Bool)

(assert (=> b!1667833 (= e!1068927 (+ 1 (size!14615 (t!152189 (_2!10449 lt!627281)))))))

(assert (= (and d!504435 c!271494) b!1667832))

(assert (= (and d!504435 (not c!271494)) b!1667833))

(declare-fun m!2032695 () Bool)

(assert (=> b!1667833 m!2032695))

(assert (=> b!1666492 d!504435))

(assert (=> b!1666492 d!504007))

(declare-fun d!504437 () Bool)

(declare-fun lt!628198 () Int)

(assert (=> d!504437 (>= lt!628198 0)))

(declare-fun e!1068928 () Int)

(assert (=> d!504437 (= lt!628198 e!1068928)))

(declare-fun c!271495 () Bool)

(assert (=> d!504437 (= c!271495 ((_ is Nil!18375) (list!7344 (_1!10447 lt!627220))))))

(assert (=> d!504437 (= (size!14618 (list!7344 (_1!10447 lt!627220))) lt!628198)))

(declare-fun b!1667834 () Bool)

(assert (=> b!1667834 (= e!1068928 0)))

(declare-fun b!1667835 () Bool)

(assert (=> b!1667835 (= e!1068928 (+ 1 (size!14618 (t!152190 (list!7344 (_1!10447 lt!627220))))))))

(assert (= (and d!504437 c!271495) b!1667834))

(assert (= (and d!504437 (not c!271495)) b!1667835))

(declare-fun m!2032697 () Bool)

(assert (=> b!1667835 m!2032697))

(assert (=> d!503661 d!504437))

(assert (=> d!503661 d!503655))

(declare-fun d!504439 () Bool)

(declare-fun lt!628205 () Int)

(assert (=> d!504439 (= lt!628205 (size!14618 (list!7348 (c!271173 (_1!10447 lt!627220)))))))

(assert (=> d!504439 (= lt!628205 (ite ((_ is Empty!6123) (c!271173 (_1!10447 lt!627220))) 0 (ite ((_ is Leaf!8962) (c!271173 (_1!10447 lt!627220))) (csize!12477 (c!271173 (_1!10447 lt!627220))) (csize!12476 (c!271173 (_1!10447 lt!627220))))))))

(assert (=> d!504439 (= (size!14619 (c!271173 (_1!10447 lt!627220))) lt!628205)))

(declare-fun bs!397881 () Bool)

(assert (= bs!397881 d!504439))

(assert (=> bs!397881 m!2029879))

(assert (=> bs!397881 m!2029879))

(declare-fun m!2032721 () Bool)

(assert (=> bs!397881 m!2032721))

(assert (=> d!503661 d!504439))

(assert (=> d!503623 d!504067))

(declare-fun d!504443 () Bool)

(declare-fun lt!628206 () Int)

(assert (=> d!504443 (= lt!628206 (size!14618 (list!7344 (_1!10447 lt!627231))))))

(assert (=> d!504443 (= lt!628206 (size!14619 (c!271173 (_1!10447 lt!627231))))))

(assert (=> d!504443 (= (size!14616 (_1!10447 lt!627231)) lt!628206)))

(declare-fun bs!397882 () Bool)

(assert (= bs!397882 d!504443))

(assert (=> bs!397882 m!2031673))

(assert (=> bs!397882 m!2031673))

(declare-fun m!2032729 () Bool)

(assert (=> bs!397882 m!2032729))

(declare-fun m!2032731 () Bool)

(assert (=> bs!397882 m!2032731))

(assert (=> d!503623 d!504443))

(assert (=> d!503623 d!503569))

(assert (=> d!503623 d!504061))

(declare-fun d!504447 () Bool)

(assert (=> d!504447 (= (list!7344 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457)))))) (list!7348 (c!271173 (_1!10447 (lex!1350 thiss!17113 rules!1846 (print!1397 thiss!17113 (singletonSeq!1744 (h!23776 tokens!457))))))))))

(declare-fun bs!397883 () Bool)

(assert (= bs!397883 d!504447))

(declare-fun m!2032733 () Bool)

(assert (=> bs!397883 m!2032733))

(assert (=> d!503623 d!504447))

(declare-fun d!504449 () Bool)

(assert (=> d!504449 (= (list!7344 (singletonSeq!1744 (h!23776 tokens!457))) (list!7348 (c!271173 (singletonSeq!1744 (h!23776 tokens!457)))))))

(declare-fun bs!397884 () Bool)

(assert (= bs!397884 d!504449))

(declare-fun m!2032741 () Bool)

(assert (=> bs!397884 m!2032741))

(assert (=> d!503623 d!504449))

(assert (=> d!503623 d!504071))

(declare-fun d!504453 () Bool)

(assert (=> d!504453 (= (list!7347 (_2!10447 lt!627407)) (list!7349 (c!271171 (_2!10447 lt!627407))))))

(declare-fun bs!397885 () Bool)

(assert (= bs!397885 d!504453))

(declare-fun m!2032745 () Bool)

(assert (=> bs!397885 m!2032745))

(assert (=> b!1666550 d!504453))

(declare-fun d!504455 () Bool)

(assert (=> d!504455 (= (list!7347 (_2!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457))))) (list!7349 (c!271171 (_2!10447 (lexRec!380 thiss!17113 rules!1846 (print!1397 thiss!17113 (seqFromList!2212 tokens!457)))))))))

(declare-fun bs!397886 () Bool)

(assert (= bs!397886 d!504455))

(declare-fun m!2032747 () Bool)

(assert (=> bs!397886 m!2032747))

(assert (=> b!1666550 d!504455))

(assert (=> b!1666550 d!503951))

(declare-fun bs!397887 () Bool)

(declare-fun d!504457 () Bool)

(assert (= bs!397887 (and d!504457 d!503621)))

(declare-fun lambda!67993 () Int)

(assert (=> bs!397887 (= (and (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) (= (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (= lambda!67993 lambda!67951))))

(declare-fun bs!397888 () Bool)

(assert (= bs!397888 (and d!504457 d!503723)))

(assert (=> bs!397888 (= (and (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (h!23777 rules!1846)))) (= (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (h!23777 rules!1846))))) (= lambda!67993 lambda!67965))))

(declare-fun bs!397890 () Bool)

(assert (= bs!397890 (and d!504457 d!504365)))

(assert (=> bs!397890 (= (and (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) (= (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) (= lambda!67993 lambda!67989))))

(assert (=> d!504457 true))

(assert (=> d!504457 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8274 order!11021 lambda!67993))))

(assert (=> d!504457 true))

(assert (=> d!504457 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8274 order!11021 lambda!67993))))

(assert (=> d!504457 (= (semiInverseModEq!1262 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (Forall!659 lambda!67993))))

(declare-fun bs!397891 () Bool)

(assert (= bs!397891 d!504457))

(declare-fun m!2032755 () Bool)

(assert (=> bs!397891 m!2032755))

(assert (=> d!503709 d!504457))

(declare-fun d!504465 () Bool)

(assert (=> d!504465 (= (isEmpty!11436 (list!7344 (_1!10447 lt!627220))) ((_ is Nil!18375) (list!7344 (_1!10447 lt!627220))))))

(assert (=> d!503729 d!504465))

(assert (=> d!503729 d!503655))

(declare-fun d!504467 () Bool)

(declare-fun lt!628211 () Bool)

(assert (=> d!504467 (= lt!628211 (isEmpty!11436 (list!7348 (c!271173 (_1!10447 lt!627220)))))))

(assert (=> d!504467 (= lt!628211 (= (size!14619 (c!271173 (_1!10447 lt!627220))) 0))))

(assert (=> d!504467 (= (isEmpty!11438 (c!271173 (_1!10447 lt!627220))) lt!628211)))

(declare-fun bs!397892 () Bool)

(assert (= bs!397892 d!504467))

(assert (=> bs!397892 m!2029879))

(assert (=> bs!397892 m!2029879))

(declare-fun m!2032775 () Bool)

(assert (=> bs!397892 m!2032775))

(assert (=> bs!397892 m!2029897))

(assert (=> d!503729 d!504467))

(declare-fun d!504477 () Bool)

(assert (=> d!504477 (= (isEmpty!11433 (list!7349 (c!271171 (_2!10447 lt!627160)))) ((_ is Nil!18374) (list!7349 (c!271171 (_2!10447 lt!627160)))))))

(assert (=> d!503717 d!504477))

(assert (=> d!503717 d!504117))

(declare-fun d!504479 () Bool)

(declare-fun lt!628212 () Int)

(assert (=> d!504479 (= lt!628212 (size!14615 (list!7349 (c!271171 (_2!10447 lt!627160)))))))

(assert (=> d!504479 (= lt!628212 (ite ((_ is Empty!6122) (c!271171 (_2!10447 lt!627160))) 0 (ite ((_ is Leaf!8961) (c!271171 (_2!10447 lt!627160))) (csize!12475 (c!271171 (_2!10447 lt!627160))) (csize!12474 (c!271171 (_2!10447 lt!627160))))))))

(assert (=> d!504479 (= (size!14622 (c!271171 (_2!10447 lt!627160))) lt!628212)))

(declare-fun bs!397895 () Bool)

(assert (= bs!397895 d!504479))

(assert (=> bs!397895 m!2030085))

(assert (=> bs!397895 m!2030085))

(declare-fun m!2032777 () Bool)

(assert (=> bs!397895 m!2032777))

(assert (=> d!503717 d!504479))

(declare-fun d!504481 () Bool)

(declare-fun e!1068945 () Bool)

(assert (=> d!504481 e!1068945))

(declare-fun c!271502 () Bool)

(declare-fun lt!628215 () tuple2!18094)

(assert (=> d!504481 (= c!271502 (> (size!14618 (_1!10449 lt!628215)) 0))))

(declare-fun e!1068944 () tuple2!18094)

(assert (=> d!504481 (= lt!628215 e!1068944)))

(declare-fun c!271503 () Bool)

(declare-fun lt!628214 () Option!3525)

(assert (=> d!504481 (= c!271503 ((_ is Some!3524) lt!628214))))

(assert (=> d!504481 (= lt!628214 (maxPrefix!1427 thiss!17113 rules!1846 (_2!10450 (v!24773 lt!627280))))))

(assert (=> d!504481 (= (lexList!891 thiss!17113 rules!1846 (_2!10450 (v!24773 lt!627280))) lt!628215)))

(declare-fun b!1667858 () Bool)

(declare-fun lt!628213 () tuple2!18094)

(assert (=> b!1667858 (= e!1068944 (tuple2!18095 (Cons!18375 (_1!10450 (v!24773 lt!628214)) (_1!10449 lt!628213)) (_2!10449 lt!628213)))))

(assert (=> b!1667858 (= lt!628213 (lexList!891 thiss!17113 rules!1846 (_2!10450 (v!24773 lt!628214))))))

(declare-fun b!1667859 () Bool)

(declare-fun e!1068946 () Bool)

(assert (=> b!1667859 (= e!1068946 (not (isEmpty!11436 (_1!10449 lt!628215))))))

(declare-fun b!1667860 () Bool)

(assert (=> b!1667860 (= e!1068945 e!1068946)))

(declare-fun res!748192 () Bool)

(assert (=> b!1667860 (= res!748192 (< (size!14615 (_2!10449 lt!628215)) (size!14615 (_2!10450 (v!24773 lt!627280)))))))

(assert (=> b!1667860 (=> (not res!748192) (not e!1068946))))

(declare-fun b!1667861 () Bool)

(assert (=> b!1667861 (= e!1068944 (tuple2!18095 Nil!18375 (_2!10450 (v!24773 lt!627280))))))

(declare-fun b!1667862 () Bool)

(assert (=> b!1667862 (= e!1068945 (= (_2!10449 lt!628215) (_2!10450 (v!24773 lt!627280))))))

(assert (= (and d!504481 c!271503) b!1667858))

(assert (= (and d!504481 (not c!271503)) b!1667861))

(assert (= (and d!504481 c!271502) b!1667860))

(assert (= (and d!504481 (not c!271502)) b!1667862))

(assert (= (and b!1667860 res!748192) b!1667859))

(declare-fun m!2032787 () Bool)

(assert (=> d!504481 m!2032787))

(declare-fun m!2032789 () Bool)

(assert (=> d!504481 m!2032789))

(declare-fun m!2032791 () Bool)

(assert (=> b!1667858 m!2032791))

(declare-fun m!2032793 () Bool)

(assert (=> b!1667859 m!2032793))

(declare-fun m!2032795 () Bool)

(assert (=> b!1667860 m!2032795))

(declare-fun m!2032797 () Bool)

(assert (=> b!1667860 m!2032797))

(assert (=> b!1666490 d!504481))

(declare-fun b!1667867 () Bool)

(declare-fun e!1068949 () Bool)

(declare-fun tp!480949 () Bool)

(assert (=> b!1667867 (= e!1068949 (and tp_is_empty!7405 tp!480949))))

(assert (=> b!1666772 (= tp!480862 e!1068949)))

(assert (= (and b!1666772 ((_ is Cons!18374) (innerList!6182 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))))) b!1667867))

(declare-fun b!1667869 () Bool)

(declare-fun e!1068950 () Bool)

(declare-fun tp!480954 () Bool)

(declare-fun tp!480951 () Bool)

(assert (=> b!1667869 (= e!1068950 (and tp!480954 tp!480951))))

(declare-fun b!1667871 () Bool)

(declare-fun tp!480952 () Bool)

(declare-fun tp!480953 () Bool)

(assert (=> b!1667871 (= e!1068950 (and tp!480952 tp!480953))))

(assert (=> b!1666699 (= tp!480788 e!1068950)))

(declare-fun b!1667870 () Bool)

(declare-fun tp!480950 () Bool)

(assert (=> b!1667870 (= e!1068950 tp!480950)))

(declare-fun b!1667868 () Bool)

(assert (=> b!1667868 (= e!1068950 tp_is_empty!7405)))

(assert (= (and b!1666699 ((_ is ElementMatch!4565) (regOne!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667868))

(assert (= (and b!1666699 ((_ is Concat!7893) (regOne!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667869))

(assert (= (and b!1666699 ((_ is Star!4565) (regOne!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667870))

(assert (= (and b!1666699 ((_ is Union!4565) (regOne!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667871))

(declare-fun b!1667873 () Bool)

(declare-fun e!1068951 () Bool)

(declare-fun tp!480959 () Bool)

(declare-fun tp!480956 () Bool)

(assert (=> b!1667873 (= e!1068951 (and tp!480959 tp!480956))))

(declare-fun b!1667875 () Bool)

(declare-fun tp!480957 () Bool)

(declare-fun tp!480958 () Bool)

(assert (=> b!1667875 (= e!1068951 (and tp!480957 tp!480958))))

(assert (=> b!1666699 (= tp!480785 e!1068951)))

(declare-fun b!1667874 () Bool)

(declare-fun tp!480955 () Bool)

(assert (=> b!1667874 (= e!1068951 tp!480955)))

(declare-fun b!1667872 () Bool)

(assert (=> b!1667872 (= e!1068951 tp_is_empty!7405)))

(assert (= (and b!1666699 ((_ is ElementMatch!4565) (regTwo!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667872))

(assert (= (and b!1666699 ((_ is Concat!7893) (regTwo!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667873))

(assert (= (and b!1666699 ((_ is Star!4565) (regTwo!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667874))

(assert (= (and b!1666699 ((_ is Union!4565) (regTwo!9642 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667875))

(declare-fun tp!480961 () Bool)

(declare-fun b!1667876 () Bool)

(declare-fun e!1068953 () Bool)

(declare-fun tp!480962 () Bool)

(assert (=> b!1667876 (= e!1068953 (and (inv!23722 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))))) tp!480962 (inv!23722 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))))) tp!480961))))

(declare-fun b!1667878 () Bool)

(declare-fun e!1068952 () Bool)

(declare-fun tp!480960 () Bool)

(assert (=> b!1667878 (= e!1068952 tp!480960)))

(declare-fun b!1667877 () Bool)

(assert (=> b!1667877 (= e!1068953 (and (inv!23728 (xs!8966 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))))) e!1068952))))

(assert (=> b!1666636 (= tp!480778 (and (inv!23722 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457)))))) e!1068953))))

(assert (= (and b!1666636 ((_ is Node!6122) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))))) b!1667876))

(assert (= b!1667877 b!1667878))

(assert (= (and b!1666636 ((_ is Leaf!8961) (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (value!101927 (h!23776 (t!152190 tokens!457))))))) b!1667877))

(declare-fun m!2032801 () Bool)

(assert (=> b!1667876 m!2032801))

(declare-fun m!2032803 () Bool)

(assert (=> b!1667876 m!2032803))

(declare-fun m!2032805 () Bool)

(assert (=> b!1667877 m!2032805))

(assert (=> b!1666636 m!2030269))

(declare-fun b!1667881 () Bool)

(declare-fun e!1068956 () Bool)

(assert (=> b!1667881 (= e!1068956 true)))

(declare-fun b!1667880 () Bool)

(declare-fun e!1068955 () Bool)

(assert (=> b!1667880 (= e!1068955 e!1068956)))

(declare-fun b!1667879 () Bool)

(declare-fun e!1068954 () Bool)

(assert (=> b!1667879 (= e!1068954 e!1068955)))

(assert (=> b!1666566 e!1068954))

(assert (= b!1667880 b!1667881))

(assert (= b!1667879 b!1667880))

(assert (= (and b!1666566 ((_ is Cons!18376) (t!152191 rules!1846))) b!1667879))

(assert (=> b!1667881 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8272 order!11017 lambda!67964))))

(assert (=> b!1667881 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846))))) (dynLambda!8272 order!11017 lambda!67964))))

(declare-fun b!1667882 () Bool)

(declare-fun tp!480964 () Bool)

(declare-fun tp!480965 () Bool)

(declare-fun e!1068958 () Bool)

(assert (=> b!1667882 (= e!1068958 (and (inv!23722 (left!14698 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) tp!480965 (inv!23722 (right!15028 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) tp!480964))))

(declare-fun b!1667884 () Bool)

(declare-fun e!1068957 () Bool)

(declare-fun tp!480963 () Bool)

(assert (=> b!1667884 (= e!1068957 tp!480963)))

(declare-fun b!1667883 () Bool)

(assert (=> b!1667883 (= e!1068958 (and (inv!23728 (xs!8966 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) e!1068957))))

(assert (=> b!1666770 (= tp!480864 (and (inv!23722 (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) e!1068958))))

(assert (= (and b!1666770 ((_ is Node!6122) (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) b!1667882))

(assert (= b!1667883 b!1667884))

(assert (= (and b!1666770 ((_ is Leaf!8961) (left!14698 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) b!1667883))

(declare-fun m!2032807 () Bool)

(assert (=> b!1667882 m!2032807))

(declare-fun m!2032809 () Bool)

(assert (=> b!1667882 m!2032809))

(declare-fun m!2032811 () Bool)

(assert (=> b!1667883 m!2032811))

(assert (=> b!1666770 m!2030413))

(declare-fun b!1667885 () Bool)

(declare-fun tp!480967 () Bool)

(declare-fun e!1068960 () Bool)

(declare-fun tp!480968 () Bool)

(assert (=> b!1667885 (= e!1068960 (and (inv!23722 (left!14698 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) tp!480968 (inv!23722 (right!15028 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) tp!480967))))

(declare-fun b!1667887 () Bool)

(declare-fun e!1068959 () Bool)

(declare-fun tp!480966 () Bool)

(assert (=> b!1667887 (= e!1068959 tp!480966)))

(declare-fun b!1667886 () Bool)

(assert (=> b!1667886 (= e!1068960 (and (inv!23728 (xs!8966 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) e!1068959))))

(assert (=> b!1666770 (= tp!480863 (and (inv!23722 (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457)))))) e!1068960))))

(assert (= (and b!1666770 ((_ is Node!6122) (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) b!1667885))

(assert (= b!1667886 b!1667887))

(assert (= (and b!1666770 ((_ is Leaf!8961) (right!15028 (c!271171 (dynLambda!8270 (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (value!101927 (h!23776 tokens!457))))))) b!1667886))

(declare-fun m!2032813 () Bool)

(assert (=> b!1667885 m!2032813))

(declare-fun m!2032815 () Bool)

(assert (=> b!1667885 m!2032815))

(declare-fun m!2032817 () Bool)

(assert (=> b!1667886 m!2032817))

(assert (=> b!1666770 m!2030415))

(declare-fun b!1667889 () Bool)

(declare-fun e!1068961 () Bool)

(declare-fun tp!480973 () Bool)

(declare-fun tp!480970 () Bool)

(assert (=> b!1667889 (= e!1068961 (and tp!480973 tp!480970))))

(declare-fun b!1667891 () Bool)

(declare-fun tp!480971 () Bool)

(declare-fun tp!480972 () Bool)

(assert (=> b!1667891 (= e!1068961 (and tp!480971 tp!480972))))

(assert (=> b!1666701 (= tp!480786 e!1068961)))

(declare-fun b!1667890 () Bool)

(declare-fun tp!480969 () Bool)

(assert (=> b!1667890 (= e!1068961 tp!480969)))

(declare-fun b!1667888 () Bool)

(assert (=> b!1667888 (= e!1068961 tp_is_empty!7405)))

(assert (= (and b!1666701 ((_ is ElementMatch!4565) (regOne!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667888))

(assert (= (and b!1666701 ((_ is Concat!7893) (regOne!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667889))

(assert (= (and b!1666701 ((_ is Star!4565) (regOne!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667890))

(assert (= (and b!1666701 ((_ is Union!4565) (regOne!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667891))

(declare-fun b!1667893 () Bool)

(declare-fun e!1068962 () Bool)

(declare-fun tp!480978 () Bool)

(declare-fun tp!480975 () Bool)

(assert (=> b!1667893 (= e!1068962 (and tp!480978 tp!480975))))

(declare-fun b!1667895 () Bool)

(declare-fun tp!480976 () Bool)

(declare-fun tp!480977 () Bool)

(assert (=> b!1667895 (= e!1068962 (and tp!480976 tp!480977))))

(assert (=> b!1666701 (= tp!480787 e!1068962)))

(declare-fun b!1667894 () Bool)

(declare-fun tp!480974 () Bool)

(assert (=> b!1667894 (= e!1068962 tp!480974)))

(declare-fun b!1667892 () Bool)

(assert (=> b!1667892 (= e!1068962 tp_is_empty!7405)))

(assert (= (and b!1666701 ((_ is ElementMatch!4565) (regTwo!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667892))

(assert (= (and b!1666701 ((_ is Concat!7893) (regTwo!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667893))

(assert (= (and b!1666701 ((_ is Star!4565) (regTwo!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667894))

(assert (= (and b!1666701 ((_ is Union!4565) (regTwo!9643 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667895))

(declare-fun b!1667899 () Bool)

(declare-fun e!1068965 () Bool)

(declare-fun tp!480983 () Bool)

(declare-fun tp!480980 () Bool)

(assert (=> b!1667899 (= e!1068965 (and tp!480983 tp!480980))))

(declare-fun b!1667901 () Bool)

(declare-fun tp!480981 () Bool)

(declare-fun tp!480982 () Bool)

(assert (=> b!1667901 (= e!1068965 (and tp!480981 tp!480982))))

(assert (=> b!1666727 (= tp!480814 e!1068965)))

(declare-fun b!1667900 () Bool)

(declare-fun tp!480979 () Bool)

(assert (=> b!1667900 (= e!1068965 tp!480979)))

(declare-fun b!1667898 () Bool)

(assert (=> b!1667898 (= e!1068965 tp_is_empty!7405)))

(assert (= (and b!1666727 ((_ is ElementMatch!4565) (reg!4894 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1667898))

(assert (= (and b!1666727 ((_ is Concat!7893) (reg!4894 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1667899))

(assert (= (and b!1666727 ((_ is Star!4565) (reg!4894 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1667900))

(assert (= (and b!1666727 ((_ is Union!4565) (reg!4894 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1667901))

(declare-fun b!1667910 () Bool)

(declare-fun e!1068968 () Bool)

(declare-fun tp!480984 () Bool)

(assert (=> b!1667910 (= e!1068968 (and tp_is_empty!7405 tp!480984))))

(assert (=> b!1666702 (= tp!480789 e!1068968)))

(assert (= (and b!1666702 ((_ is Cons!18374) (t!152189 (t!152189 (originalCharacters!4051 (h!23776 tokens!457)))))) b!1667910))

(declare-fun b!1667914 () Bool)

(declare-fun e!1068969 () Bool)

(declare-fun tp!480989 () Bool)

(declare-fun tp!480986 () Bool)

(assert (=> b!1667914 (= e!1068969 (and tp!480989 tp!480986))))

(declare-fun b!1667916 () Bool)

(declare-fun tp!480987 () Bool)

(declare-fun tp!480988 () Bool)

(assert (=> b!1667916 (= e!1068969 (and tp!480987 tp!480988))))

(assert (=> b!1666736 (= tp!480826 e!1068969)))

(declare-fun b!1667915 () Bool)

(declare-fun tp!480985 () Bool)

(assert (=> b!1667915 (= e!1068969 tp!480985)))

(declare-fun b!1667913 () Bool)

(assert (=> b!1667913 (= e!1068969 tp_is_empty!7405)))

(assert (= (and b!1666736 ((_ is ElementMatch!4565) (regOne!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667913))

(assert (= (and b!1666736 ((_ is Concat!7893) (regOne!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667914))

(assert (= (and b!1666736 ((_ is Star!4565) (regOne!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667915))

(assert (= (and b!1666736 ((_ is Union!4565) (regOne!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667916))

(declare-fun b!1667918 () Bool)

(declare-fun e!1068970 () Bool)

(declare-fun tp!480994 () Bool)

(declare-fun tp!480991 () Bool)

(assert (=> b!1667918 (= e!1068970 (and tp!480994 tp!480991))))

(declare-fun b!1667920 () Bool)

(declare-fun tp!480992 () Bool)

(declare-fun tp!480993 () Bool)

(assert (=> b!1667920 (= e!1068970 (and tp!480992 tp!480993))))

(assert (=> b!1666736 (= tp!480827 e!1068970)))

(declare-fun b!1667919 () Bool)

(declare-fun tp!480990 () Bool)

(assert (=> b!1667919 (= e!1068970 tp!480990)))

(declare-fun b!1667917 () Bool)

(assert (=> b!1667917 (= e!1068970 tp_is_empty!7405)))

(assert (= (and b!1666736 ((_ is ElementMatch!4565) (regTwo!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667917))

(assert (= (and b!1666736 ((_ is Concat!7893) (regTwo!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667918))

(assert (= (and b!1666736 ((_ is Star!4565) (regTwo!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667919))

(assert (= (and b!1666736 ((_ is Union!4565) (regTwo!9643 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667920))

(declare-fun b!1667922 () Bool)

(declare-fun e!1068971 () Bool)

(declare-fun tp!480999 () Bool)

(declare-fun tp!480996 () Bool)

(assert (=> b!1667922 (= e!1068971 (and tp!480999 tp!480996))))

(declare-fun b!1667924 () Bool)

(declare-fun tp!480997 () Bool)

(declare-fun tp!480998 () Bool)

(assert (=> b!1667924 (= e!1068971 (and tp!480997 tp!480998))))

(assert (=> b!1666745 (= tp!480837 e!1068971)))

(declare-fun b!1667923 () Bool)

(declare-fun tp!480995 () Bool)

(assert (=> b!1667923 (= e!1068971 tp!480995)))

(declare-fun b!1667921 () Bool)

(assert (=> b!1667921 (= e!1068971 tp_is_empty!7405)))

(assert (= (and b!1666745 ((_ is ElementMatch!4565) (regOne!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667921))

(assert (= (and b!1666745 ((_ is Concat!7893) (regOne!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667922))

(assert (= (and b!1666745 ((_ is Star!4565) (regOne!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667923))

(assert (= (and b!1666745 ((_ is Union!4565) (regOne!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667924))

(declare-fun b!1667926 () Bool)

(declare-fun e!1068972 () Bool)

(declare-fun tp!481004 () Bool)

(declare-fun tp!481001 () Bool)

(assert (=> b!1667926 (= e!1068972 (and tp!481004 tp!481001))))

(declare-fun b!1667928 () Bool)

(declare-fun tp!481002 () Bool)

(declare-fun tp!481003 () Bool)

(assert (=> b!1667928 (= e!1068972 (and tp!481002 tp!481003))))

(assert (=> b!1666745 (= tp!480838 e!1068972)))

(declare-fun b!1667927 () Bool)

(declare-fun tp!481000 () Bool)

(assert (=> b!1667927 (= e!1068972 tp!481000)))

(declare-fun b!1667925 () Bool)

(assert (=> b!1667925 (= e!1068972 tp_is_empty!7405)))

(assert (= (and b!1666745 ((_ is ElementMatch!4565) (regTwo!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667925))

(assert (= (and b!1666745 ((_ is Concat!7893) (regTwo!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667926))

(assert (= (and b!1666745 ((_ is Star!4565) (regTwo!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667927))

(assert (= (and b!1666745 ((_ is Union!4565) (regTwo!9643 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667928))

(declare-fun b!1667930 () Bool)

(declare-fun e!1068973 () Bool)

(declare-fun tp!481009 () Bool)

(declare-fun tp!481006 () Bool)

(assert (=> b!1667930 (= e!1068973 (and tp!481009 tp!481006))))

(declare-fun b!1667932 () Bool)

(declare-fun tp!481007 () Bool)

(declare-fun tp!481008 () Bool)

(assert (=> b!1667932 (= e!1068973 (and tp!481007 tp!481008))))

(assert (=> b!1666709 (= tp!480795 e!1068973)))

(declare-fun b!1667931 () Bool)

(declare-fun tp!481005 () Bool)

(assert (=> b!1667931 (= e!1068973 tp!481005)))

(declare-fun b!1667929 () Bool)

(assert (=> b!1667929 (= e!1068973 tp_is_empty!7405)))

(assert (= (and b!1666709 ((_ is ElementMatch!4565) (reg!4894 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667929))

(assert (= (and b!1666709 ((_ is Concat!7893) (reg!4894 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667930))

(assert (= (and b!1666709 ((_ is Star!4565) (reg!4894 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667931))

(assert (= (and b!1666709 ((_ is Union!4565) (reg!4894 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667932))

(declare-fun b!1667934 () Bool)

(declare-fun e!1068974 () Bool)

(declare-fun tp!481014 () Bool)

(declare-fun tp!481011 () Bool)

(assert (=> b!1667934 (= e!1068974 (and tp!481014 tp!481011))))

(declare-fun b!1667936 () Bool)

(declare-fun tp!481012 () Bool)

(declare-fun tp!481013 () Bool)

(assert (=> b!1667936 (= e!1068974 (and tp!481012 tp!481013))))

(assert (=> b!1666716 (= tp!480800 e!1068974)))

(declare-fun b!1667935 () Bool)

(declare-fun tp!481010 () Bool)

(assert (=> b!1667935 (= e!1068974 tp!481010)))

(declare-fun b!1667933 () Bool)

(assert (=> b!1667933 (= e!1068974 tp_is_empty!7405)))

(assert (= (and b!1666716 ((_ is ElementMatch!4565) (reg!4894 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667933))

(assert (= (and b!1666716 ((_ is Concat!7893) (reg!4894 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667934))

(assert (= (and b!1666716 ((_ is Star!4565) (reg!4894 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667935))

(assert (= (and b!1666716 ((_ is Union!4565) (reg!4894 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667936))

(declare-fun b!1667938 () Bool)

(declare-fun e!1068975 () Bool)

(declare-fun tp!481019 () Bool)

(declare-fun tp!481016 () Bool)

(assert (=> b!1667938 (= e!1068975 (and tp!481019 tp!481016))))

(declare-fun b!1667940 () Bool)

(declare-fun tp!481017 () Bool)

(declare-fun tp!481018 () Bool)

(assert (=> b!1667940 (= e!1068975 (and tp!481017 tp!481018))))

(assert (=> b!1666734 (= tp!480828 e!1068975)))

(declare-fun b!1667939 () Bool)

(declare-fun tp!481015 () Bool)

(assert (=> b!1667939 (= e!1068975 tp!481015)))

(declare-fun b!1667937 () Bool)

(assert (=> b!1667937 (= e!1068975 tp_is_empty!7405)))

(assert (= (and b!1666734 ((_ is ElementMatch!4565) (regOne!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667937))

(assert (= (and b!1666734 ((_ is Concat!7893) (regOne!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667938))

(assert (= (and b!1666734 ((_ is Star!4565) (regOne!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667939))

(assert (= (and b!1666734 ((_ is Union!4565) (regOne!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667940))

(declare-fun b!1667942 () Bool)

(declare-fun e!1068976 () Bool)

(declare-fun tp!481024 () Bool)

(declare-fun tp!481021 () Bool)

(assert (=> b!1667942 (= e!1068976 (and tp!481024 tp!481021))))

(declare-fun b!1667944 () Bool)

(declare-fun tp!481022 () Bool)

(declare-fun tp!481023 () Bool)

(assert (=> b!1667944 (= e!1068976 (and tp!481022 tp!481023))))

(assert (=> b!1666734 (= tp!480825 e!1068976)))

(declare-fun b!1667943 () Bool)

(declare-fun tp!481020 () Bool)

(assert (=> b!1667943 (= e!1068976 tp!481020)))

(declare-fun b!1667941 () Bool)

(assert (=> b!1667941 (= e!1068976 tp_is_empty!7405)))

(assert (= (and b!1666734 ((_ is ElementMatch!4565) (regTwo!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667941))

(assert (= (and b!1666734 ((_ is Concat!7893) (regTwo!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667942))

(assert (= (and b!1666734 ((_ is Star!4565) (regTwo!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667943))

(assert (= (and b!1666734 ((_ is Union!4565) (regTwo!9642 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667944))

(declare-fun b!1667947 () Bool)

(declare-fun b_free!45311 () Bool)

(declare-fun b_next!46015 () Bool)

(assert (=> b!1667947 (= b_free!45311 (not b_next!46015))))

(declare-fun tp!481026 () Bool)

(declare-fun b_and!118589 () Bool)

(assert (=> b!1667947 (= tp!481026 b_and!118589)))

(declare-fun b_free!45313 () Bool)

(declare-fun b_next!46017 () Bool)

(assert (=> b!1667947 (= b_free!45313 (not b_next!46017))))

(declare-fun t!152393 () Bool)

(declare-fun tb!95695 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152393) tb!95695))

(declare-fun result!115610 () Bool)

(assert (= result!115610 result!115514))

(assert (=> d!504087 t!152393))

(declare-fun tb!95697 () Bool)

(declare-fun t!152395 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152395) tb!95697))

(declare-fun result!115612 () Bool)

(assert (= result!115612 result!115490))

(assert (=> d!503935 t!152395))

(declare-fun tb!95699 () Bool)

(declare-fun t!152397 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152397) tb!95699))

(declare-fun result!115614 () Bool)

(assert (= result!115614 result!115574))

(assert (=> b!1667661 t!152397))

(declare-fun t!152399 () Bool)

(declare-fun tb!95701 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152399) tb!95701))

(declare-fun result!115616 () Bool)

(assert (= result!115616 result!115418))

(assert (=> d!504315 t!152399))

(declare-fun t!152401 () Bool)

(declare-fun tb!95703 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152401) tb!95703))

(declare-fun result!115618 () Bool)

(assert (= result!115618 result!115462))

(assert (=> d!503763 t!152401))

(declare-fun t!152403 () Bool)

(declare-fun tb!95705 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152403) tb!95705))

(declare-fun result!115620 () Bool)

(assert (= result!115620 result!115586))

(assert (=> d!504343 t!152403))

(declare-fun t!152405 () Bool)

(declare-fun tb!95707 () Bool)

(assert (=> (and b!1667947 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152405) tb!95707))

(declare-fun result!115622 () Bool)

(assert (= result!115622 result!115598))

(assert (=> d!504381 t!152405))

(assert (=> b!1666671 t!152401))

(assert (=> b!1666231 t!152399))

(declare-fun tp!481027 () Bool)

(declare-fun b_and!118591 () Bool)

(assert (=> b!1667947 (= tp!481027 (and (=> t!152405 result!115622) (=> t!152399 result!115616) (=> t!152395 result!115612) (=> t!152393 result!115610) (=> t!152403 result!115620) (=> t!152401 result!115618) (=> t!152397 result!115614) b_and!118591))))

(declare-fun e!1068977 () Bool)

(assert (=> b!1667947 (= e!1068977 (and tp!481026 tp!481027))))

(declare-fun tp!481025 () Bool)

(declare-fun e!1068979 () Bool)

(declare-fun b!1667946 () Bool)

(assert (=> b!1667946 (= e!1068979 (and tp!481025 (inv!23715 (tag!3521 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (inv!23718 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) e!1068977))))

(declare-fun b!1667945 () Bool)

(declare-fun e!1068980 () Bool)

(declare-fun tp!481028 () Bool)

(assert (=> b!1667945 (= e!1068980 (and e!1068979 tp!481028))))

(assert (=> b!1666722 (= tp!480813 e!1068980)))

(assert (= b!1667946 b!1667947))

(assert (= b!1667945 b!1667946))

(assert (= (and b!1666722 ((_ is Cons!18376) (t!152191 (t!152191 (t!152191 rules!1846))))) b!1667945))

(declare-fun m!2032819 () Bool)

(assert (=> b!1667946 m!2032819))

(declare-fun m!2032821 () Bool)

(assert (=> b!1667946 m!2032821))

(declare-fun b!1667955 () Bool)

(declare-fun e!1068983 () Bool)

(declare-fun tp!481033 () Bool)

(declare-fun tp!481030 () Bool)

(assert (=> b!1667955 (= e!1068983 (and tp!481033 tp!481030))))

(declare-fun b!1667957 () Bool)

(declare-fun tp!481031 () Bool)

(declare-fun tp!481032 () Bool)

(assert (=> b!1667957 (= e!1068983 (and tp!481031 tp!481032))))

(assert (=> b!1666743 (= tp!480839 e!1068983)))

(declare-fun b!1667956 () Bool)

(declare-fun tp!481029 () Bool)

(assert (=> b!1667956 (= e!1068983 tp!481029)))

(declare-fun b!1667954 () Bool)

(assert (=> b!1667954 (= e!1068983 tp_is_empty!7405)))

(assert (= (and b!1666743 ((_ is ElementMatch!4565) (regOne!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667954))

(assert (= (and b!1666743 ((_ is Concat!7893) (regOne!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667955))

(assert (= (and b!1666743 ((_ is Star!4565) (regOne!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667956))

(assert (= (and b!1666743 ((_ is Union!4565) (regOne!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667957))

(declare-fun b!1667959 () Bool)

(declare-fun e!1068984 () Bool)

(declare-fun tp!481038 () Bool)

(declare-fun tp!481035 () Bool)

(assert (=> b!1667959 (= e!1068984 (and tp!481038 tp!481035))))

(declare-fun b!1667961 () Bool)

(declare-fun tp!481036 () Bool)

(declare-fun tp!481037 () Bool)

(assert (=> b!1667961 (= e!1068984 (and tp!481036 tp!481037))))

(assert (=> b!1666743 (= tp!480836 e!1068984)))

(declare-fun b!1667960 () Bool)

(declare-fun tp!481034 () Bool)

(assert (=> b!1667960 (= e!1068984 tp!481034)))

(declare-fun b!1667958 () Bool)

(assert (=> b!1667958 (= e!1068984 tp_is_empty!7405)))

(assert (= (and b!1666743 ((_ is ElementMatch!4565) (regTwo!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667958))

(assert (= (and b!1666743 ((_ is Concat!7893) (regTwo!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667959))

(assert (= (and b!1666743 ((_ is Star!4565) (regTwo!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667960))

(assert (= (and b!1666743 ((_ is Union!4565) (regTwo!9642 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1667961))

(declare-fun b!1667964 () Bool)

(declare-fun e!1068987 () Bool)

(assert (=> b!1667964 (= e!1068987 true)))

(declare-fun b!1667963 () Bool)

(declare-fun e!1068986 () Bool)

(assert (=> b!1667963 (= e!1068986 e!1068987)))

(declare-fun b!1667962 () Bool)

(declare-fun e!1068985 () Bool)

(assert (=> b!1667962 (= e!1068985 e!1068986)))

(assert (=> b!1666711 e!1068985))

(assert (= b!1667963 b!1667964))

(assert (= b!1667962 b!1667963))

(assert (= (and b!1666711 ((_ is Cons!18376) (t!152191 (t!152191 rules!1846)))) b!1667962))

(assert (=> b!1667964 (< (dynLambda!8271 order!11015 (toValue!4696 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))) (dynLambda!8272 order!11017 lambda!67948))))

(assert (=> b!1667964 (< (dynLambda!8273 order!11019 (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))) (dynLambda!8272 order!11017 lambda!67948))))

(declare-fun b!1667970 () Bool)

(declare-fun e!1068990 () Bool)

(declare-fun tp!481043 () Bool)

(declare-fun tp!481040 () Bool)

(assert (=> b!1667970 (= e!1068990 (and tp!481043 tp!481040))))

(declare-fun b!1667972 () Bool)

(declare-fun tp!481041 () Bool)

(declare-fun tp!481042 () Bool)

(assert (=> b!1667972 (= e!1068990 (and tp!481041 tp!481042))))

(assert (=> b!1666720 (= tp!480805 e!1068990)))

(declare-fun b!1667971 () Bool)

(declare-fun tp!481039 () Bool)

(assert (=> b!1667971 (= e!1068990 tp!481039)))

(declare-fun b!1667969 () Bool)

(assert (=> b!1667969 (= e!1068990 tp_is_empty!7405)))

(assert (= (and b!1666720 ((_ is ElementMatch!4565) (reg!4894 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667969))

(assert (= (and b!1666720 ((_ is Concat!7893) (reg!4894 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667970))

(assert (= (and b!1666720 ((_ is Star!4565) (reg!4894 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667971))

(assert (= (and b!1666720 ((_ is Union!4565) (reg!4894 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667972))

(declare-fun b!1667973 () Bool)

(declare-fun e!1068991 () Bool)

(declare-fun tp!481044 () Bool)

(assert (=> b!1667973 (= e!1068991 (and tp_is_empty!7405 tp!481044))))

(assert (=> b!1666751 (= tp!480846 e!1068991)))

(assert (= (and b!1666751 ((_ is Cons!18374) (originalCharacters!4051 (h!23776 (t!152190 (t!152190 tokens!457)))))) b!1667973))

(declare-fun b!1667975 () Bool)

(declare-fun e!1068992 () Bool)

(declare-fun tp!481049 () Bool)

(declare-fun tp!481046 () Bool)

(assert (=> b!1667975 (= e!1068992 (and tp!481049 tp!481046))))

(declare-fun b!1667977 () Bool)

(declare-fun tp!481047 () Bool)

(declare-fun tp!481048 () Bool)

(assert (=> b!1667977 (= e!1068992 (and tp!481047 tp!481048))))

(assert (=> b!1666696 (= tp!480779 e!1068992)))

(declare-fun b!1667976 () Bool)

(declare-fun tp!481045 () Bool)

(assert (=> b!1667976 (= e!1068992 tp!481045)))

(declare-fun b!1667974 () Bool)

(assert (=> b!1667974 (= e!1068992 tp_is_empty!7405)))

(assert (= (and b!1666696 ((_ is ElementMatch!4565) (reg!4894 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667974))

(assert (= (and b!1666696 ((_ is Concat!7893) (reg!4894 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667975))

(assert (= (and b!1666696 ((_ is Star!4565) (reg!4894 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667976))

(assert (= (and b!1666696 ((_ is Union!4565) (reg!4894 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1667977))

(declare-fun b!1667981 () Bool)

(declare-fun e!1068995 () Bool)

(declare-fun tp!481054 () Bool)

(declare-fun tp!481051 () Bool)

(assert (=> b!1667981 (= e!1068995 (and tp!481054 tp!481051))))

(declare-fun b!1667983 () Bool)

(declare-fun tp!481052 () Bool)

(declare-fun tp!481053 () Bool)

(assert (=> b!1667983 (= e!1068995 (and tp!481052 tp!481053))))

(assert (=> b!1666749 (= tp!480842 e!1068995)))

(declare-fun b!1667982 () Bool)

(declare-fun tp!481050 () Bool)

(assert (=> b!1667982 (= e!1068995 tp!481050)))

(declare-fun b!1667980 () Bool)

(assert (=> b!1667980 (= e!1068995 tp_is_empty!7405)))

(assert (= (and b!1666749 ((_ is ElementMatch!4565) (regOne!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667980))

(assert (= (and b!1666749 ((_ is Concat!7893) (regOne!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667981))

(assert (= (and b!1666749 ((_ is Star!4565) (regOne!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667982))

(assert (= (and b!1666749 ((_ is Union!4565) (regOne!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667983))

(declare-fun b!1667985 () Bool)

(declare-fun e!1068996 () Bool)

(declare-fun tp!481059 () Bool)

(declare-fun tp!481056 () Bool)

(assert (=> b!1667985 (= e!1068996 (and tp!481059 tp!481056))))

(declare-fun b!1667987 () Bool)

(declare-fun tp!481057 () Bool)

(declare-fun tp!481058 () Bool)

(assert (=> b!1667987 (= e!1068996 (and tp!481057 tp!481058))))

(assert (=> b!1666749 (= tp!480843 e!1068996)))

(declare-fun b!1667986 () Bool)

(declare-fun tp!481055 () Bool)

(assert (=> b!1667986 (= e!1068996 tp!481055)))

(declare-fun b!1667984 () Bool)

(assert (=> b!1667984 (= e!1068996 tp_is_empty!7405)))

(assert (= (and b!1666749 ((_ is ElementMatch!4565) (regTwo!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667984))

(assert (= (and b!1666749 ((_ is Concat!7893) (regTwo!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667985))

(assert (= (and b!1666749 ((_ is Star!4565) (regTwo!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667986))

(assert (= (and b!1666749 ((_ is Union!4565) (regTwo!9643 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1667987))

(declare-fun b!1667989 () Bool)

(declare-fun e!1068997 () Bool)

(declare-fun tp!481064 () Bool)

(declare-fun tp!481061 () Bool)

(assert (=> b!1667989 (= e!1068997 (and tp!481064 tp!481061))))

(declare-fun b!1667991 () Bool)

(declare-fun tp!481062 () Bool)

(declare-fun tp!481063 () Bool)

(assert (=> b!1667991 (= e!1068997 (and tp!481062 tp!481063))))

(assert (=> b!1666704 (= tp!480794 e!1068997)))

(declare-fun b!1667990 () Bool)

(declare-fun tp!481060 () Bool)

(assert (=> b!1667990 (= e!1068997 tp!481060)))

(declare-fun b!1667988 () Bool)

(assert (=> b!1667988 (= e!1068997 tp_is_empty!7405)))

(assert (= (and b!1666704 ((_ is ElementMatch!4565) (regOne!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667988))

(assert (= (and b!1666704 ((_ is Concat!7893) (regOne!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667989))

(assert (= (and b!1666704 ((_ is Star!4565) (regOne!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667990))

(assert (= (and b!1666704 ((_ is Union!4565) (regOne!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667991))

(declare-fun b!1667993 () Bool)

(declare-fun e!1068998 () Bool)

(declare-fun tp!481069 () Bool)

(declare-fun tp!481066 () Bool)

(assert (=> b!1667993 (= e!1068998 (and tp!481069 tp!481066))))

(declare-fun b!1667995 () Bool)

(declare-fun tp!481067 () Bool)

(declare-fun tp!481068 () Bool)

(assert (=> b!1667995 (= e!1068998 (and tp!481067 tp!481068))))

(assert (=> b!1666704 (= tp!480791 e!1068998)))

(declare-fun b!1667994 () Bool)

(declare-fun tp!481065 () Bool)

(assert (=> b!1667994 (= e!1068998 tp!481065)))

(declare-fun b!1667992 () Bool)

(assert (=> b!1667992 (= e!1068998 tp_is_empty!7405)))

(assert (= (and b!1666704 ((_ is ElementMatch!4565) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667992))

(assert (= (and b!1666704 ((_ is Concat!7893) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667993))

(assert (= (and b!1666704 ((_ is Star!4565) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667994))

(assert (= (and b!1666704 ((_ is Union!4565) (regTwo!9642 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1667995))

(declare-fun b!1667997 () Bool)

(declare-fun e!1068999 () Bool)

(declare-fun tp!481074 () Bool)

(declare-fun tp!481071 () Bool)

(assert (=> b!1667997 (= e!1068999 (and tp!481074 tp!481071))))

(declare-fun b!1667999 () Bool)

(declare-fun tp!481072 () Bool)

(declare-fun tp!481073 () Bool)

(assert (=> b!1667999 (= e!1068999 (and tp!481072 tp!481073))))

(assert (=> b!1666738 (= tp!480833 e!1068999)))

(declare-fun b!1667998 () Bool)

(declare-fun tp!481070 () Bool)

(assert (=> b!1667998 (= e!1068999 tp!481070)))

(declare-fun b!1667996 () Bool)

(assert (=> b!1667996 (= e!1068999 tp_is_empty!7405)))

(assert (= (and b!1666738 ((_ is ElementMatch!4565) (regOne!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667996))

(assert (= (and b!1666738 ((_ is Concat!7893) (regOne!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667997))

(assert (= (and b!1666738 ((_ is Star!4565) (regOne!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667998))

(assert (= (and b!1666738 ((_ is Union!4565) (regOne!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1667999))

(declare-fun b!1668001 () Bool)

(declare-fun e!1069000 () Bool)

(declare-fun tp!481079 () Bool)

(declare-fun tp!481076 () Bool)

(assert (=> b!1668001 (= e!1069000 (and tp!481079 tp!481076))))

(declare-fun b!1668003 () Bool)

(declare-fun tp!481077 () Bool)

(declare-fun tp!481078 () Bool)

(assert (=> b!1668003 (= e!1069000 (and tp!481077 tp!481078))))

(assert (=> b!1666738 (= tp!480830 e!1069000)))

(declare-fun b!1668002 () Bool)

(declare-fun tp!481075 () Bool)

(assert (=> b!1668002 (= e!1069000 tp!481075)))

(declare-fun b!1668000 () Bool)

(assert (=> b!1668000 (= e!1069000 tp_is_empty!7405)))

(assert (= (and b!1666738 ((_ is ElementMatch!4565) (regTwo!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668000))

(assert (= (and b!1666738 ((_ is Concat!7893) (regTwo!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668001))

(assert (= (and b!1666738 ((_ is Star!4565) (regTwo!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668002))

(assert (= (and b!1666738 ((_ is Union!4565) (regTwo!9642 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668003))

(declare-fun b!1668009 () Bool)

(declare-fun e!1069003 () Bool)

(declare-fun tp!481084 () Bool)

(declare-fun tp!481081 () Bool)

(assert (=> b!1668009 (= e!1069003 (and tp!481084 tp!481081))))

(declare-fun b!1668011 () Bool)

(declare-fun tp!481082 () Bool)

(declare-fun tp!481083 () Bool)

(assert (=> b!1668011 (= e!1069003 (and tp!481082 tp!481083))))

(assert (=> b!1666747 (= tp!480844 e!1069003)))

(declare-fun b!1668010 () Bool)

(declare-fun tp!481080 () Bool)

(assert (=> b!1668010 (= e!1069003 tp!481080)))

(declare-fun b!1668008 () Bool)

(assert (=> b!1668008 (= e!1069003 tp_is_empty!7405)))

(assert (= (and b!1666747 ((_ is ElementMatch!4565) (regOne!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668008))

(assert (= (and b!1666747 ((_ is Concat!7893) (regOne!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668009))

(assert (= (and b!1666747 ((_ is Star!4565) (regOne!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668010))

(assert (= (and b!1666747 ((_ is Union!4565) (regOne!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668011))

(declare-fun b!1668013 () Bool)

(declare-fun e!1069004 () Bool)

(declare-fun tp!481089 () Bool)

(declare-fun tp!481086 () Bool)

(assert (=> b!1668013 (= e!1069004 (and tp!481089 tp!481086))))

(declare-fun b!1668015 () Bool)

(declare-fun tp!481087 () Bool)

(declare-fun tp!481088 () Bool)

(assert (=> b!1668015 (= e!1069004 (and tp!481087 tp!481088))))

(assert (=> b!1666747 (= tp!480841 e!1069004)))

(declare-fun b!1668014 () Bool)

(declare-fun tp!481085 () Bool)

(assert (=> b!1668014 (= e!1069004 tp!481085)))

(declare-fun b!1668012 () Bool)

(assert (=> b!1668012 (= e!1069004 tp_is_empty!7405)))

(assert (= (and b!1666747 ((_ is ElementMatch!4565) (regTwo!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668012))

(assert (= (and b!1666747 ((_ is Concat!7893) (regTwo!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668013))

(assert (= (and b!1666747 ((_ is Star!4565) (regTwo!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668014))

(assert (= (and b!1666747 ((_ is Union!4565) (regTwo!9642 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668015))

(declare-fun b!1668017 () Bool)

(declare-fun e!1069005 () Bool)

(declare-fun tp!481094 () Bool)

(declare-fun tp!481091 () Bool)

(assert (=> b!1668017 (= e!1069005 (and tp!481094 tp!481091))))

(declare-fun b!1668019 () Bool)

(declare-fun tp!481092 () Bool)

(declare-fun tp!481093 () Bool)

(assert (=> b!1668019 (= e!1069005 (and tp!481092 tp!481093))))

(assert (=> b!1666731 (= tp!480819 e!1069005)))

(declare-fun b!1668018 () Bool)

(declare-fun tp!481090 () Bool)

(assert (=> b!1668018 (= e!1069005 tp!481090)))

(declare-fun b!1668016 () Bool)

(assert (=> b!1668016 (= e!1069005 tp_is_empty!7405)))

(assert (= (and b!1666731 ((_ is ElementMatch!4565) (reg!4894 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668016))

(assert (= (and b!1666731 ((_ is Concat!7893) (reg!4894 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668017))

(assert (= (and b!1666731 ((_ is Star!4565) (reg!4894 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668018))

(assert (= (and b!1666731 ((_ is Union!4565) (reg!4894 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668019))

(declare-fun b!1668021 () Bool)

(declare-fun e!1069006 () Bool)

(declare-fun tp!481099 () Bool)

(declare-fun tp!481096 () Bool)

(assert (=> b!1668021 (= e!1069006 (and tp!481099 tp!481096))))

(declare-fun b!1668023 () Bool)

(declare-fun tp!481097 () Bool)

(declare-fun tp!481098 () Bool)

(assert (=> b!1668023 (= e!1069006 (and tp!481097 tp!481098))))

(assert (=> b!1666706 (= tp!480792 e!1069006)))

(declare-fun b!1668022 () Bool)

(declare-fun tp!481095 () Bool)

(assert (=> b!1668022 (= e!1069006 tp!481095)))

(declare-fun b!1668020 () Bool)

(assert (=> b!1668020 (= e!1069006 tp_is_empty!7405)))

(assert (= (and b!1666706 ((_ is ElementMatch!4565) (regOne!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668020))

(assert (= (and b!1666706 ((_ is Concat!7893) (regOne!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668021))

(assert (= (and b!1666706 ((_ is Star!4565) (regOne!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668022))

(assert (= (and b!1666706 ((_ is Union!4565) (regOne!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668023))

(declare-fun b!1668027 () Bool)

(declare-fun e!1069008 () Bool)

(declare-fun tp!481109 () Bool)

(declare-fun tp!481105 () Bool)

(assert (=> b!1668027 (= e!1069008 (and tp!481109 tp!481105))))

(declare-fun b!1668029 () Bool)

(declare-fun tp!481107 () Bool)

(declare-fun tp!481108 () Bool)

(assert (=> b!1668029 (= e!1069008 (and tp!481107 tp!481108))))

(assert (=> b!1666706 (= tp!480793 e!1069008)))

(declare-fun b!1668028 () Bool)

(declare-fun tp!481103 () Bool)

(assert (=> b!1668028 (= e!1069008 tp!481103)))

(declare-fun b!1668026 () Bool)

(assert (=> b!1668026 (= e!1069008 tp_is_empty!7405)))

(assert (= (and b!1666706 ((_ is ElementMatch!4565) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668026))

(assert (= (and b!1666706 ((_ is Concat!7893) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668027))

(assert (= (and b!1666706 ((_ is Star!4565) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668028))

(assert (= (and b!1666706 ((_ is Union!4565) (regTwo!9643 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668029))

(declare-fun b!1668033 () Bool)

(declare-fun e!1069009 () Bool)

(declare-fun tp!481114 () Bool)

(declare-fun tp!481111 () Bool)

(assert (=> b!1668033 (= e!1069009 (and tp!481114 tp!481111))))

(declare-fun b!1668035 () Bool)

(declare-fun tp!481112 () Bool)

(declare-fun tp!481113 () Bool)

(assert (=> b!1668035 (= e!1069009 (and tp!481112 tp!481113))))

(assert (=> b!1666740 (= tp!480831 e!1069009)))

(declare-fun b!1668034 () Bool)

(declare-fun tp!481110 () Bool)

(assert (=> b!1668034 (= e!1069009 tp!481110)))

(declare-fun b!1668032 () Bool)

(assert (=> b!1668032 (= e!1069009 tp_is_empty!7405)))

(assert (= (and b!1666740 ((_ is ElementMatch!4565) (regOne!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668032))

(assert (= (and b!1666740 ((_ is Concat!7893) (regOne!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668033))

(assert (= (and b!1666740 ((_ is Star!4565) (regOne!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668034))

(assert (= (and b!1666740 ((_ is Union!4565) (regOne!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668035))

(declare-fun b!1668041 () Bool)

(declare-fun e!1069011 () Bool)

(declare-fun tp!481124 () Bool)

(declare-fun tp!481121 () Bool)

(assert (=> b!1668041 (= e!1069011 (and tp!481124 tp!481121))))

(declare-fun b!1668043 () Bool)

(declare-fun tp!481122 () Bool)

(declare-fun tp!481123 () Bool)

(assert (=> b!1668043 (= e!1069011 (and tp!481122 tp!481123))))

(assert (=> b!1666740 (= tp!480832 e!1069011)))

(declare-fun b!1668042 () Bool)

(declare-fun tp!481120 () Bool)

(assert (=> b!1668042 (= e!1069011 tp!481120)))

(declare-fun b!1668040 () Bool)

(assert (=> b!1668040 (= e!1069011 tp_is_empty!7405)))

(assert (= (and b!1666740 ((_ is ElementMatch!4565) (regTwo!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668040))

(assert (= (and b!1666740 ((_ is Concat!7893) (regTwo!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668041))

(assert (= (and b!1666740 ((_ is Star!4565) (regTwo!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668042))

(assert (= (and b!1666740 ((_ is Union!4565) (regTwo!9643 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668043))

(declare-fun b!1668048 () Bool)

(declare-fun e!1069014 () Bool)

(declare-fun tp!481132 () Bool)

(declare-fun tp!481129 () Bool)

(assert (=> b!1668048 (= e!1069014 (and tp!481132 tp!481129))))

(declare-fun b!1668050 () Bool)

(declare-fun tp!481130 () Bool)

(declare-fun tp!481131 () Bool)

(assert (=> b!1668050 (= e!1069014 (and tp!481130 tp!481131))))

(assert (=> b!1666715 (= tp!480804 e!1069014)))

(declare-fun b!1668049 () Bool)

(declare-fun tp!481128 () Bool)

(assert (=> b!1668049 (= e!1069014 tp!481128)))

(declare-fun b!1668047 () Bool)

(assert (=> b!1668047 (= e!1069014 tp_is_empty!7405)))

(assert (= (and b!1666715 ((_ is ElementMatch!4565) (regOne!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668047))

(assert (= (and b!1666715 ((_ is Concat!7893) (regOne!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668048))

(assert (= (and b!1666715 ((_ is Star!4565) (regOne!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668049))

(assert (= (and b!1666715 ((_ is Union!4565) (regOne!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668050))

(declare-fun b!1668052 () Bool)

(declare-fun e!1069015 () Bool)

(declare-fun tp!481137 () Bool)

(declare-fun tp!481134 () Bool)

(assert (=> b!1668052 (= e!1069015 (and tp!481137 tp!481134))))

(declare-fun b!1668054 () Bool)

(declare-fun tp!481135 () Bool)

(declare-fun tp!481136 () Bool)

(assert (=> b!1668054 (= e!1069015 (and tp!481135 tp!481136))))

(assert (=> b!1666715 (= tp!480801 e!1069015)))

(declare-fun b!1668053 () Bool)

(declare-fun tp!481133 () Bool)

(assert (=> b!1668053 (= e!1069015 tp!481133)))

(declare-fun b!1668051 () Bool)

(assert (=> b!1668051 (= e!1069015 tp_is_empty!7405)))

(assert (= (and b!1666715 ((_ is ElementMatch!4565) (regTwo!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668051))

(assert (= (and b!1666715 ((_ is Concat!7893) (regTwo!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668052))

(assert (= (and b!1666715 ((_ is Star!4565) (regTwo!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668053))

(assert (= (and b!1666715 ((_ is Union!4565) (regTwo!9642 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668054))

(declare-fun b!1668059 () Bool)

(declare-fun e!1069017 () Bool)

(declare-fun tp!481147 () Bool)

(declare-fun tp!481142 () Bool)

(assert (=> b!1668059 (= e!1069017 (and tp!481147 tp!481142))))

(declare-fun b!1668062 () Bool)

(declare-fun tp!481144 () Bool)

(declare-fun tp!481146 () Bool)

(assert (=> b!1668062 (= e!1069017 (and tp!481144 tp!481146))))

(assert (=> b!1666708 (= tp!480799 e!1069017)))

(declare-fun b!1668061 () Bool)

(declare-fun tp!481140 () Bool)

(assert (=> b!1668061 (= e!1069017 tp!481140)))

(declare-fun b!1668057 () Bool)

(assert (=> b!1668057 (= e!1069017 tp_is_empty!7405)))

(assert (= (and b!1666708 ((_ is ElementMatch!4565) (regOne!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668057))

(assert (= (and b!1666708 ((_ is Concat!7893) (regOne!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668059))

(assert (= (and b!1666708 ((_ is Star!4565) (regOne!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668061))

(assert (= (and b!1666708 ((_ is Union!4565) (regOne!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668062))

(declare-fun b!1668064 () Bool)

(declare-fun e!1069018 () Bool)

(declare-fun tp!481155 () Bool)

(declare-fun tp!481149 () Bool)

(assert (=> b!1668064 (= e!1069018 (and tp!481155 tp!481149))))

(declare-fun b!1668067 () Bool)

(declare-fun tp!481151 () Bool)

(declare-fun tp!481153 () Bool)

(assert (=> b!1668067 (= e!1069018 (and tp!481151 tp!481153))))

(assert (=> b!1666708 (= tp!480796 e!1069018)))

(declare-fun b!1668065 () Bool)

(declare-fun tp!481148 () Bool)

(assert (=> b!1668065 (= e!1069018 tp!481148)))

(declare-fun b!1668063 () Bool)

(assert (=> b!1668063 (= e!1069018 tp_is_empty!7405)))

(assert (= (and b!1666708 ((_ is ElementMatch!4565) (regTwo!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668063))

(assert (= (and b!1666708 ((_ is Concat!7893) (regTwo!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668064))

(assert (= (and b!1666708 ((_ is Star!4565) (regTwo!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668065))

(assert (= (and b!1666708 ((_ is Union!4565) (regTwo!9642 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668067))

(declare-fun b!1668072 () Bool)

(declare-fun e!1069020 () Bool)

(declare-fun tp!481162 () Bool)

(declare-fun tp!481159 () Bool)

(assert (=> b!1668072 (= e!1069020 (and tp!481162 tp!481159))))

(declare-fun b!1668074 () Bool)

(declare-fun tp!481160 () Bool)

(declare-fun tp!481161 () Bool)

(assert (=> b!1668074 (= e!1069020 (and tp!481160 tp!481161))))

(assert (=> b!1666700 (= tp!480784 e!1069020)))

(declare-fun b!1668073 () Bool)

(declare-fun tp!481158 () Bool)

(assert (=> b!1668073 (= e!1069020 tp!481158)))

(declare-fun b!1668071 () Bool)

(assert (=> b!1668071 (= e!1069020 tp_is_empty!7405)))

(assert (= (and b!1666700 ((_ is ElementMatch!4565) (reg!4894 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668071))

(assert (= (and b!1666700 ((_ is Concat!7893) (reg!4894 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668072))

(assert (= (and b!1666700 ((_ is Star!4565) (reg!4894 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668073))

(assert (= (and b!1666700 ((_ is Union!4565) (reg!4894 (regTwo!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668074))

(declare-fun b!1668080 () Bool)

(declare-fun e!1069022 () Bool)

(declare-fun tp!481172 () Bool)

(declare-fun tp!481169 () Bool)

(assert (=> b!1668080 (= e!1069022 (and tp!481172 tp!481169))))

(declare-fun b!1668082 () Bool)

(declare-fun tp!481170 () Bool)

(declare-fun tp!481171 () Bool)

(assert (=> b!1668082 (= e!1069022 (and tp!481170 tp!481171))))

(assert (=> b!1666723 (= tp!480810 e!1069022)))

(declare-fun b!1668081 () Bool)

(declare-fun tp!481168 () Bool)

(assert (=> b!1668081 (= e!1069022 tp!481168)))

(declare-fun b!1668079 () Bool)

(assert (=> b!1668079 (= e!1069022 tp_is_empty!7405)))

(assert (= (and b!1666723 ((_ is ElementMatch!4565) (regex!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))) b!1668079))

(assert (= (and b!1666723 ((_ is Concat!7893) (regex!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))) b!1668080))

(assert (= (and b!1666723 ((_ is Star!4565) (regex!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))) b!1668081))

(assert (= (and b!1666723 ((_ is Union!4565) (regex!3237 (h!23777 (t!152191 (t!152191 rules!1846)))))) b!1668082))

(declare-fun b!1668088 () Bool)

(declare-fun e!1069024 () Bool)

(declare-fun tp!481182 () Bool)

(declare-fun tp!481179 () Bool)

(assert (=> b!1668088 (= e!1069024 (and tp!481182 tp!481179))))

(declare-fun b!1668090 () Bool)

(declare-fun tp!481180 () Bool)

(declare-fun tp!481181 () Bool)

(assert (=> b!1668090 (= e!1069024 (and tp!481180 tp!481181))))

(assert (=> b!1666744 (= tp!480835 e!1069024)))

(declare-fun b!1668089 () Bool)

(declare-fun tp!481178 () Bool)

(assert (=> b!1668089 (= e!1069024 tp!481178)))

(declare-fun b!1668087 () Bool)

(assert (=> b!1668087 (= e!1069024 tp_is_empty!7405)))

(assert (= (and b!1666744 ((_ is ElementMatch!4565) (reg!4894 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1668087))

(assert (= (and b!1666744 ((_ is Concat!7893) (reg!4894 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1668088))

(assert (= (and b!1666744 ((_ is Star!4565) (reg!4894 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1668089))

(assert (= (and b!1666744 ((_ is Union!4565) (reg!4894 (regex!3237 (h!23777 (t!152191 rules!1846)))))) b!1668090))

(declare-fun b!1668096 () Bool)

(declare-fun e!1069026 () Bool)

(declare-fun tp!481192 () Bool)

(declare-fun tp!481189 () Bool)

(assert (=> b!1668096 (= e!1069026 (and tp!481192 tp!481189))))

(declare-fun b!1668098 () Bool)

(declare-fun tp!481190 () Bool)

(declare-fun tp!481191 () Bool)

(assert (=> b!1668098 (= e!1069026 (and tp!481190 tp!481191))))

(assert (=> b!1666728 (= tp!480816 e!1069026)))

(declare-fun b!1668097 () Bool)

(declare-fun tp!481188 () Bool)

(assert (=> b!1668097 (= e!1069026 tp!481188)))

(declare-fun b!1668095 () Bool)

(assert (=> b!1668095 (= e!1069026 tp_is_empty!7405)))

(assert (= (and b!1666728 ((_ is ElementMatch!4565) (regOne!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668095))

(assert (= (and b!1666728 ((_ is Concat!7893) (regOne!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668096))

(assert (= (and b!1666728 ((_ is Star!4565) (regOne!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668097))

(assert (= (and b!1666728 ((_ is Union!4565) (regOne!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668098))

(declare-fun b!1668104 () Bool)

(declare-fun e!1069028 () Bool)

(declare-fun tp!481202 () Bool)

(declare-fun tp!481199 () Bool)

(assert (=> b!1668104 (= e!1069028 (and tp!481202 tp!481199))))

(declare-fun b!1668106 () Bool)

(declare-fun tp!481200 () Bool)

(declare-fun tp!481201 () Bool)

(assert (=> b!1668106 (= e!1069028 (and tp!481200 tp!481201))))

(assert (=> b!1666728 (= tp!480817 e!1069028)))

(declare-fun b!1668105 () Bool)

(declare-fun tp!481198 () Bool)

(assert (=> b!1668105 (= e!1069028 tp!481198)))

(declare-fun b!1668103 () Bool)

(assert (=> b!1668103 (= e!1069028 tp_is_empty!7405)))

(assert (= (and b!1666728 ((_ is ElementMatch!4565) (regTwo!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668103))

(assert (= (and b!1666728 ((_ is Concat!7893) (regTwo!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668104))

(assert (= (and b!1666728 ((_ is Star!4565) (regTwo!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668105))

(assert (= (and b!1666728 ((_ is Union!4565) (regTwo!9643 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668106))

(declare-fun b!1668118 () Bool)

(declare-fun b_free!45315 () Bool)

(declare-fun b_next!46019 () Bool)

(assert (=> b!1668118 (= b_free!45315 (not b_next!46019))))

(declare-fun tp!481215 () Bool)

(declare-fun b_and!118593 () Bool)

(assert (=> b!1668118 (= tp!481215 b_and!118593)))

(declare-fun b_free!45317 () Bool)

(declare-fun b_next!46021 () Bool)

(assert (=> b!1668118 (= b_free!45317 (not b_next!46021))))

(declare-fun t!152407 () Bool)

(declare-fun tb!95709 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (list!7344 (seqFromList!2212 tokens!457))))))) t!152407) tb!95709))

(declare-fun result!115624 () Bool)

(assert (= result!115624 result!115514))

(assert (=> d!504087 t!152407))

(declare-fun tb!95711 () Bool)

(declare-fun t!152409 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (_1!10451 (v!24774 lt!627412)))))) t!152409) tb!95711))

(declare-fun result!115626 () Bool)

(assert (= result!115626 result!115490))

(assert (=> d!503935 t!152409))

(declare-fun t!152411 () Bool)

(declare-fun tb!95713 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) t!152411) tb!95713))

(declare-fun result!115628 () Bool)

(assert (= result!115628 result!115574))

(assert (=> b!1667661 t!152411))

(declare-fun t!152413 () Bool)

(declare-fun tb!95715 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457))))) t!152413) tb!95715))

(declare-fun result!115630 () Bool)

(assert (= result!115630 result!115418))

(assert (=> d!504315 t!152413))

(declare-fun t!152415 () Bool)

(declare-fun tb!95717 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457)))))) t!152415) tb!95717))

(declare-fun result!115632 () Bool)

(assert (= result!115632 result!115462))

(assert (=> d!503763 t!152415))

(declare-fun t!152417 () Bool)

(declare-fun tb!95719 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (apply!4933 (seqFromList!2212 tokens!457) 0))))) t!152417) tb!95719))

(declare-fun result!115634 () Bool)

(assert (= result!115634 result!115586))

(assert (=> d!504343 t!152417))

(declare-fun t!152419 () Bool)

(declare-fun tb!95721 () Bool)

(assert (=> (and b!1668118 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (Cons!18375 (h!23776 (t!152190 tokens!457)) (t!152190 (t!152190 tokens!457))))))))) t!152419) tb!95721))

(declare-fun result!115636 () Bool)

(assert (= result!115636 result!115598))

(assert (=> d!504381 t!152419))

(assert (=> b!1666671 t!152415))

(assert (=> b!1666231 t!152413))

(declare-fun tp!481217 () Bool)

(declare-fun b_and!118595 () Bool)

(assert (=> b!1668118 (= tp!481217 (and (=> t!152411 result!115628) (=> t!152407 result!115624) (=> t!152419 result!115636) (=> t!152417 result!115634) (=> t!152415 result!115632) (=> t!152409 result!115626) (=> t!152413 result!115630) b_and!118595))))

(declare-fun e!1069030 () Bool)

(assert (=> b!1668118 (= e!1069030 (and tp!481215 tp!481217))))

(declare-fun e!1069036 () Bool)

(assert (=> b!1666750 (= tp!480848 e!1069036)))

(declare-fun tp!481208 () Bool)

(declare-fun e!1069035 () Bool)

(declare-fun b!1668117 () Bool)

(assert (=> b!1668117 (= e!1069035 (and tp!481208 (inv!23715 (tag!3521 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (inv!23718 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) e!1069030))))

(declare-fun e!1069032 () Bool)

(declare-fun tp!481216 () Bool)

(declare-fun b!1668115 () Bool)

(assert (=> b!1668115 (= e!1069036 (and (inv!23719 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))) e!1069032 tp!481216))))

(declare-fun tp!481214 () Bool)

(declare-fun b!1668116 () Bool)

(assert (=> b!1668116 (= e!1069032 (and (inv!21 (value!101927 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457)))))) e!1069035 tp!481214))))

(assert (= b!1668117 b!1668118))

(assert (= b!1668116 b!1668117))

(assert (= b!1668115 b!1668116))

(assert (= (and b!1666750 ((_ is Cons!18375) (t!152190 (t!152190 (t!152190 tokens!457))))) b!1668115))

(declare-fun m!2032869 () Bool)

(assert (=> b!1668117 m!2032869))

(declare-fun m!2032871 () Bool)

(assert (=> b!1668117 m!2032871))

(declare-fun m!2032873 () Bool)

(assert (=> b!1668115 m!2032873))

(declare-fun m!2032875 () Bool)

(assert (=> b!1668116 m!2032875))

(declare-fun b!1668140 () Bool)

(declare-fun e!1069045 () Bool)

(declare-fun tp!481243 () Bool)

(declare-fun tp!481240 () Bool)

(assert (=> b!1668140 (= e!1069045 (and tp!481243 tp!481240))))

(declare-fun b!1668142 () Bool)

(declare-fun tp!481241 () Bool)

(declare-fun tp!481242 () Bool)

(assert (=> b!1668142 (= e!1069045 (and tp!481241 tp!481242))))

(assert (=> b!1666717 (= tp!480802 e!1069045)))

(declare-fun b!1668141 () Bool)

(declare-fun tp!481239 () Bool)

(assert (=> b!1668141 (= e!1069045 tp!481239)))

(declare-fun b!1668139 () Bool)

(assert (=> b!1668139 (= e!1069045 tp_is_empty!7405)))

(assert (= (and b!1666717 ((_ is ElementMatch!4565) (regOne!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668139))

(assert (= (and b!1666717 ((_ is Concat!7893) (regOne!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668140))

(assert (= (and b!1666717 ((_ is Star!4565) (regOne!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668141))

(assert (= (and b!1666717 ((_ is Union!4565) (regOne!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668142))

(declare-fun b!1668148 () Bool)

(declare-fun e!1069047 () Bool)

(declare-fun tp!481253 () Bool)

(declare-fun tp!481250 () Bool)

(assert (=> b!1668148 (= e!1069047 (and tp!481253 tp!481250))))

(declare-fun b!1668150 () Bool)

(declare-fun tp!481251 () Bool)

(declare-fun tp!481252 () Bool)

(assert (=> b!1668150 (= e!1069047 (and tp!481251 tp!481252))))

(assert (=> b!1666717 (= tp!480803 e!1069047)))

(declare-fun b!1668149 () Bool)

(declare-fun tp!481249 () Bool)

(assert (=> b!1668149 (= e!1069047 tp!481249)))

(declare-fun b!1668147 () Bool)

(assert (=> b!1668147 (= e!1069047 tp_is_empty!7405)))

(assert (= (and b!1666717 ((_ is ElementMatch!4565) (regTwo!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668147))

(assert (= (and b!1666717 ((_ is Concat!7893) (regTwo!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668148))

(assert (= (and b!1666717 ((_ is Star!4565) (regTwo!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668149))

(assert (= (and b!1666717 ((_ is Union!4565) (regTwo!9643 (regOne!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668150))

(declare-fun b!1668157 () Bool)

(declare-fun e!1069049 () Bool)

(declare-fun tp!481267 () Bool)

(declare-fun tp!481261 () Bool)

(assert (=> b!1668157 (= e!1069049 (and tp!481267 tp!481261))))

(declare-fun b!1668161 () Bool)

(declare-fun tp!481263 () Bool)

(declare-fun tp!481265 () Bool)

(assert (=> b!1668161 (= e!1069049 (and tp!481263 tp!481265))))

(assert (=> b!1666735 (= tp!480824 e!1069049)))

(declare-fun b!1668159 () Bool)

(declare-fun tp!481259 () Bool)

(assert (=> b!1668159 (= e!1069049 tp!481259)))

(declare-fun b!1668155 () Bool)

(assert (=> b!1668155 (= e!1069049 tp_is_empty!7405)))

(assert (= (and b!1666735 ((_ is ElementMatch!4565) (reg!4894 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668155))

(assert (= (and b!1666735 ((_ is Concat!7893) (reg!4894 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668157))

(assert (= (and b!1666735 ((_ is Star!4565) (reg!4894 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668159))

(assert (= (and b!1666735 ((_ is Union!4565) (reg!4894 (regOne!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668161))

(declare-fun b!1668168 () Bool)

(declare-fun e!1069052 () Bool)

(declare-fun tp!481278 () Bool)

(declare-fun tp!481275 () Bool)

(assert (=> b!1668168 (= e!1069052 (and tp!481278 tp!481275))))

(declare-fun b!1668170 () Bool)

(declare-fun tp!481276 () Bool)

(declare-fun tp!481277 () Bool)

(assert (=> b!1668170 (= e!1069052 (and tp!481276 tp!481277))))

(assert (=> b!1666710 (= tp!480797 e!1069052)))

(declare-fun b!1668169 () Bool)

(declare-fun tp!481274 () Bool)

(assert (=> b!1668169 (= e!1069052 tp!481274)))

(declare-fun b!1668167 () Bool)

(assert (=> b!1668167 (= e!1069052 tp_is_empty!7405)))

(assert (= (and b!1666710 ((_ is ElementMatch!4565) (regOne!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668167))

(assert (= (and b!1666710 ((_ is Concat!7893) (regOne!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668168))

(assert (= (and b!1666710 ((_ is Star!4565) (regOne!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668169))

(assert (= (and b!1666710 ((_ is Union!4565) (regOne!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668170))

(declare-fun b!1668176 () Bool)

(declare-fun e!1069054 () Bool)

(declare-fun tp!481288 () Bool)

(declare-fun tp!481285 () Bool)

(assert (=> b!1668176 (= e!1069054 (and tp!481288 tp!481285))))

(declare-fun b!1668178 () Bool)

(declare-fun tp!481286 () Bool)

(declare-fun tp!481287 () Bool)

(assert (=> b!1668178 (= e!1069054 (and tp!481286 tp!481287))))

(assert (=> b!1666710 (= tp!480798 e!1069054)))

(declare-fun b!1668177 () Bool)

(declare-fun tp!481284 () Bool)

(assert (=> b!1668177 (= e!1069054 tp!481284)))

(declare-fun b!1668175 () Bool)

(assert (=> b!1668175 (= e!1069054 tp_is_empty!7405)))

(assert (= (and b!1666710 ((_ is ElementMatch!4565) (regTwo!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668175))

(assert (= (and b!1666710 ((_ is Concat!7893) (regTwo!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668176))

(assert (= (and b!1666710 ((_ is Star!4565) (regTwo!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668177))

(assert (= (and b!1666710 ((_ is Union!4565) (regTwo!9643 (reg!4894 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668178))

(declare-fun b!1668184 () Bool)

(declare-fun e!1069056 () Bool)

(declare-fun tp!481298 () Bool)

(declare-fun tp!481295 () Bool)

(assert (=> b!1668184 (= e!1069056 (and tp!481298 tp!481295))))

(declare-fun b!1668186 () Bool)

(declare-fun tp!481296 () Bool)

(declare-fun tp!481297 () Bool)

(assert (=> b!1668186 (= e!1069056 (and tp!481296 tp!481297))))

(assert (=> b!1666726 (= tp!480818 e!1069056)))

(declare-fun b!1668185 () Bool)

(declare-fun tp!481294 () Bool)

(assert (=> b!1668185 (= e!1069056 tp!481294)))

(declare-fun b!1668183 () Bool)

(assert (=> b!1668183 (= e!1069056 tp_is_empty!7405)))

(assert (= (and b!1666726 ((_ is ElementMatch!4565) (regOne!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668183))

(assert (= (and b!1666726 ((_ is Concat!7893) (regOne!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668184))

(assert (= (and b!1666726 ((_ is Star!4565) (regOne!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668185))

(assert (= (and b!1666726 ((_ is Union!4565) (regOne!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668186))

(declare-fun b!1668192 () Bool)

(declare-fun e!1069058 () Bool)

(declare-fun tp!481308 () Bool)

(declare-fun tp!481305 () Bool)

(assert (=> b!1668192 (= e!1069058 (and tp!481308 tp!481305))))

(declare-fun b!1668194 () Bool)

(declare-fun tp!481306 () Bool)

(declare-fun tp!481307 () Bool)

(assert (=> b!1668194 (= e!1069058 (and tp!481306 tp!481307))))

(assert (=> b!1666726 (= tp!480815 e!1069058)))

(declare-fun b!1668193 () Bool)

(declare-fun tp!481304 () Bool)

(assert (=> b!1668193 (= e!1069058 tp!481304)))

(declare-fun b!1668191 () Bool)

(assert (=> b!1668191 (= e!1069058 tp_is_empty!7405)))

(assert (= (and b!1666726 ((_ is ElementMatch!4565) (regTwo!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668191))

(assert (= (and b!1666726 ((_ is Concat!7893) (regTwo!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668192))

(assert (= (and b!1666726 ((_ is Star!4565) (regTwo!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668193))

(assert (= (and b!1666726 ((_ is Union!4565) (regTwo!9642 (regOne!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668194))

(declare-fun b!1668200 () Bool)

(declare-fun e!1069060 () Bool)

(declare-fun tp!481318 () Bool)

(declare-fun tp!481315 () Bool)

(assert (=> b!1668200 (= e!1069060 (and tp!481318 tp!481315))))

(declare-fun b!1668202 () Bool)

(declare-fun tp!481316 () Bool)

(declare-fun tp!481317 () Bool)

(assert (=> b!1668202 (= e!1069060 (and tp!481316 tp!481317))))

(assert (=> b!1666697 (= tp!480781 e!1069060)))

(declare-fun b!1668201 () Bool)

(declare-fun tp!481314 () Bool)

(assert (=> b!1668201 (= e!1069060 tp!481314)))

(declare-fun b!1668199 () Bool)

(assert (=> b!1668199 (= e!1069060 tp_is_empty!7405)))

(assert (= (and b!1666697 ((_ is ElementMatch!4565) (regOne!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668199))

(assert (= (and b!1666697 ((_ is Concat!7893) (regOne!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668200))

(assert (= (and b!1666697 ((_ is Star!4565) (regOne!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668201))

(assert (= (and b!1666697 ((_ is Union!4565) (regOne!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668202))

(declare-fun b!1668208 () Bool)

(declare-fun e!1069062 () Bool)

(declare-fun tp!481328 () Bool)

(declare-fun tp!481325 () Bool)

(assert (=> b!1668208 (= e!1069062 (and tp!481328 tp!481325))))

(declare-fun b!1668210 () Bool)

(declare-fun tp!481326 () Bool)

(declare-fun tp!481327 () Bool)

(assert (=> b!1668210 (= e!1069062 (and tp!481326 tp!481327))))

(assert (=> b!1666697 (= tp!480782 e!1069062)))

(declare-fun b!1668209 () Bool)

(declare-fun tp!481324 () Bool)

(assert (=> b!1668209 (= e!1069062 tp!481324)))

(declare-fun b!1668207 () Bool)

(assert (=> b!1668207 (= e!1069062 tp_is_empty!7405)))

(assert (= (and b!1666697 ((_ is ElementMatch!4565) (regTwo!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668207))

(assert (= (and b!1666697 ((_ is Concat!7893) (regTwo!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668208))

(assert (= (and b!1666697 ((_ is Star!4565) (regTwo!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668209))

(assert (= (and b!1666697 ((_ is Union!4565) (regTwo!9643 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668210))

(declare-fun b!1668216 () Bool)

(declare-fun e!1069064 () Bool)

(declare-fun tp!481338 () Bool)

(declare-fun tp!481335 () Bool)

(assert (=> b!1668216 (= e!1069064 (and tp!481338 tp!481335))))

(declare-fun b!1668218 () Bool)

(declare-fun tp!481336 () Bool)

(declare-fun tp!481337 () Bool)

(assert (=> b!1668218 (= e!1069064 (and tp!481336 tp!481337))))

(assert (=> b!1666719 (= tp!480809 e!1069064)))

(declare-fun b!1668217 () Bool)

(declare-fun tp!481334 () Bool)

(assert (=> b!1668217 (= e!1069064 tp!481334)))

(declare-fun b!1668215 () Bool)

(assert (=> b!1668215 (= e!1069064 tp_is_empty!7405)))

(assert (= (and b!1666719 ((_ is ElementMatch!4565) (regOne!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668215))

(assert (= (and b!1666719 ((_ is Concat!7893) (regOne!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668216))

(assert (= (and b!1666719 ((_ is Star!4565) (regOne!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668217))

(assert (= (and b!1666719 ((_ is Union!4565) (regOne!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668218))

(declare-fun b!1668220 () Bool)

(declare-fun e!1069070 () Bool)

(declare-fun tp!481347 () Bool)

(declare-fun tp!481344 () Bool)

(assert (=> b!1668220 (= e!1069070 (and tp!481347 tp!481344))))

(declare-fun b!1668223 () Bool)

(declare-fun tp!481345 () Bool)

(declare-fun tp!481346 () Bool)

(assert (=> b!1668223 (= e!1069070 (and tp!481345 tp!481346))))

(assert (=> b!1666719 (= tp!480806 e!1069070)))

(declare-fun b!1668221 () Bool)

(declare-fun tp!481343 () Bool)

(assert (=> b!1668221 (= e!1069070 tp!481343)))

(declare-fun b!1668219 () Bool)

(assert (=> b!1668219 (= e!1069070 tp_is_empty!7405)))

(assert (= (and b!1666719 ((_ is ElementMatch!4565) (regTwo!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668219))

(assert (= (and b!1666719 ((_ is Concat!7893) (regTwo!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668220))

(assert (= (and b!1666719 ((_ is Star!4565) (regTwo!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668221))

(assert (= (and b!1666719 ((_ is Union!4565) (regTwo!9642 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668223))

(declare-fun b!1668228 () Bool)

(declare-fun e!1069072 () Bool)

(declare-fun tp!481353 () Bool)

(declare-fun tp!481350 () Bool)

(assert (=> b!1668228 (= e!1069072 (and tp!481353 tp!481350))))

(declare-fun b!1668230 () Bool)

(declare-fun tp!481351 () Bool)

(declare-fun tp!481352 () Bool)

(assert (=> b!1668230 (= e!1069072 (and tp!481351 tp!481352))))

(assert (=> b!1666695 (= tp!480783 e!1069072)))

(declare-fun b!1668229 () Bool)

(declare-fun tp!481349 () Bool)

(assert (=> b!1668229 (= e!1069072 tp!481349)))

(declare-fun b!1668227 () Bool)

(assert (=> b!1668227 (= e!1069072 tp_is_empty!7405)))

(assert (= (and b!1666695 ((_ is ElementMatch!4565) (regOne!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668227))

(assert (= (and b!1666695 ((_ is Concat!7893) (regOne!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668228))

(assert (= (and b!1666695 ((_ is Star!4565) (regOne!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668229))

(assert (= (and b!1666695 ((_ is Union!4565) (regOne!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668230))

(declare-fun b!1668232 () Bool)

(declare-fun e!1069073 () Bool)

(declare-fun tp!481358 () Bool)

(declare-fun tp!481355 () Bool)

(assert (=> b!1668232 (= e!1069073 (and tp!481358 tp!481355))))

(declare-fun b!1668234 () Bool)

(declare-fun tp!481356 () Bool)

(declare-fun tp!481357 () Bool)

(assert (=> b!1668234 (= e!1069073 (and tp!481356 tp!481357))))

(assert (=> b!1666695 (= tp!480780 e!1069073)))

(declare-fun b!1668233 () Bool)

(declare-fun tp!481354 () Bool)

(assert (=> b!1668233 (= e!1069073 tp!481354)))

(declare-fun b!1668231 () Bool)

(assert (=> b!1668231 (= e!1069073 tp_is_empty!7405)))

(assert (= (and b!1666695 ((_ is ElementMatch!4565) (regTwo!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668231))

(assert (= (and b!1666695 ((_ is Concat!7893) (regTwo!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668232))

(assert (= (and b!1666695 ((_ is Star!4565) (regTwo!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668233))

(assert (= (and b!1666695 ((_ is Union!4565) (regTwo!9642 (regOne!9643 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668234))

(declare-fun b!1668236 () Bool)

(declare-fun e!1069074 () Bool)

(declare-fun tp!481363 () Bool)

(declare-fun tp!481360 () Bool)

(assert (=> b!1668236 (= e!1069074 (and tp!481363 tp!481360))))

(declare-fun b!1668238 () Bool)

(declare-fun tp!481361 () Bool)

(declare-fun tp!481362 () Bool)

(assert (=> b!1668238 (= e!1069074 (and tp!481361 tp!481362))))

(assert (=> b!1666752 (= tp!480845 e!1069074)))

(declare-fun b!1668237 () Bool)

(declare-fun tp!481359 () Bool)

(assert (=> b!1668237 (= e!1069074 tp!481359)))

(declare-fun b!1668235 () Bool)

(assert (=> b!1668235 (= e!1069074 tp_is_empty!7405)))

(assert (= (and b!1666752 ((_ is ElementMatch!4565) (regex!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) b!1668235))

(assert (= (and b!1666752 ((_ is Concat!7893) (regex!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) b!1668236))

(assert (= (and b!1666752 ((_ is Star!4565) (regex!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) b!1668237))

(assert (= (and b!1666752 ((_ is Union!4565) (regex!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457))))))) b!1668238))

(declare-fun b!1668240 () Bool)

(declare-fun e!1069075 () Bool)

(declare-fun tp!481368 () Bool)

(declare-fun tp!481365 () Bool)

(assert (=> b!1668240 (= e!1069075 (and tp!481368 tp!481365))))

(declare-fun b!1668242 () Bool)

(declare-fun tp!481366 () Bool)

(declare-fun tp!481367 () Bool)

(assert (=> b!1668242 (= e!1069075 (and tp!481366 tp!481367))))

(assert (=> b!1666748 (= tp!480840 e!1069075)))

(declare-fun b!1668241 () Bool)

(declare-fun tp!481364 () Bool)

(assert (=> b!1668241 (= e!1069075 tp!481364)))

(declare-fun b!1668239 () Bool)

(assert (=> b!1668239 (= e!1069075 tp_is_empty!7405)))

(assert (= (and b!1666748 ((_ is ElementMatch!4565) (reg!4894 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668239))

(assert (= (and b!1666748 ((_ is Concat!7893) (reg!4894 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668240))

(assert (= (and b!1666748 ((_ is Star!4565) (reg!4894 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668241))

(assert (= (and b!1666748 ((_ is Union!4565) (reg!4894 (reg!4894 (regex!3237 (h!23777 rules!1846)))))) b!1668242))

(declare-fun b!1668244 () Bool)

(declare-fun e!1069076 () Bool)

(declare-fun tp!481373 () Bool)

(declare-fun tp!481370 () Bool)

(assert (=> b!1668244 (= e!1069076 (and tp!481373 tp!481370))))

(declare-fun b!1668246 () Bool)

(declare-fun tp!481371 () Bool)

(declare-fun tp!481372 () Bool)

(assert (=> b!1668246 (= e!1069076 (and tp!481371 tp!481372))))

(assert (=> b!1666732 (= tp!480821 e!1069076)))

(declare-fun b!1668245 () Bool)

(declare-fun tp!481369 () Bool)

(assert (=> b!1668245 (= e!1069076 tp!481369)))

(declare-fun b!1668243 () Bool)

(assert (=> b!1668243 (= e!1069076 tp_is_empty!7405)))

(assert (= (and b!1666732 ((_ is ElementMatch!4565) (regOne!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668243))

(assert (= (and b!1666732 ((_ is Concat!7893) (regOne!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668244))

(assert (= (and b!1666732 ((_ is Star!4565) (regOne!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668245))

(assert (= (and b!1666732 ((_ is Union!4565) (regOne!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668246))

(declare-fun b!1668248 () Bool)

(declare-fun e!1069077 () Bool)

(declare-fun tp!481378 () Bool)

(declare-fun tp!481375 () Bool)

(assert (=> b!1668248 (= e!1069077 (and tp!481378 tp!481375))))

(declare-fun b!1668250 () Bool)

(declare-fun tp!481376 () Bool)

(declare-fun tp!481377 () Bool)

(assert (=> b!1668250 (= e!1069077 (and tp!481376 tp!481377))))

(assert (=> b!1666732 (= tp!480822 e!1069077)))

(declare-fun b!1668249 () Bool)

(declare-fun tp!481374 () Bool)

(assert (=> b!1668249 (= e!1069077 tp!481374)))

(declare-fun b!1668247 () Bool)

(assert (=> b!1668247 (= e!1069077 tp_is_empty!7405)))

(assert (= (and b!1666732 ((_ is ElementMatch!4565) (regTwo!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668247))

(assert (= (and b!1666732 ((_ is Concat!7893) (regTwo!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668248))

(assert (= (and b!1666732 ((_ is Star!4565) (regTwo!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668249))

(assert (= (and b!1666732 ((_ is Union!4565) (regTwo!9643 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668250))

(declare-fun b!1668251 () Bool)

(declare-fun e!1069078 () Bool)

(declare-fun tp!481379 () Bool)

(assert (=> b!1668251 (= e!1069078 (and tp_is_empty!7405 tp!481379))))

(assert (=> b!1666741 (= tp!480834 e!1069078)))

(assert (= (and b!1666741 ((_ is Cons!18374) (t!152189 (originalCharacters!4051 (h!23776 (t!152190 tokens!457)))))) b!1668251))

(declare-fun b!1668257 () Bool)

(declare-fun e!1069080 () Bool)

(declare-fun tp!481389 () Bool)

(declare-fun tp!481386 () Bool)

(assert (=> b!1668257 (= e!1069080 (and tp!481389 tp!481386))))

(declare-fun b!1668259 () Bool)

(declare-fun tp!481387 () Bool)

(declare-fun tp!481388 () Bool)

(assert (=> b!1668259 (= e!1069080 (and tp!481387 tp!481388))))

(assert (=> b!1666721 (= tp!480807 e!1069080)))

(declare-fun b!1668258 () Bool)

(declare-fun tp!481385 () Bool)

(assert (=> b!1668258 (= e!1069080 tp!481385)))

(declare-fun b!1668256 () Bool)

(assert (=> b!1668256 (= e!1069080 tp_is_empty!7405)))

(assert (= (and b!1666721 ((_ is ElementMatch!4565) (regOne!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668256))

(assert (= (and b!1666721 ((_ is Concat!7893) (regOne!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668257))

(assert (= (and b!1666721 ((_ is Star!4565) (regOne!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668258))

(assert (= (and b!1666721 ((_ is Union!4565) (regOne!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668259))

(declare-fun b!1668265 () Bool)

(declare-fun e!1069082 () Bool)

(declare-fun tp!481399 () Bool)

(declare-fun tp!481396 () Bool)

(assert (=> b!1668265 (= e!1069082 (and tp!481399 tp!481396))))

(declare-fun b!1668267 () Bool)

(declare-fun tp!481397 () Bool)

(declare-fun tp!481398 () Bool)

(assert (=> b!1668267 (= e!1069082 (and tp!481397 tp!481398))))

(assert (=> b!1666721 (= tp!480808 e!1069082)))

(declare-fun b!1668266 () Bool)

(declare-fun tp!481395 () Bool)

(assert (=> b!1668266 (= e!1069082 tp!481395)))

(declare-fun b!1668264 () Bool)

(assert (=> b!1668264 (= e!1069082 tp_is_empty!7405)))

(assert (= (and b!1666721 ((_ is ElementMatch!4565) (regTwo!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668264))

(assert (= (and b!1666721 ((_ is Concat!7893) (regTwo!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668265))

(assert (= (and b!1666721 ((_ is Star!4565) (regTwo!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668266))

(assert (= (and b!1666721 ((_ is Union!4565) (regTwo!9643 (regTwo!9642 (regex!3237 (rule!5125 (h!23776 tokens!457))))))) b!1668267))

(declare-fun b!1668273 () Bool)

(declare-fun e!1069084 () Bool)

(declare-fun tp!481409 () Bool)

(declare-fun tp!481406 () Bool)

(assert (=> b!1668273 (= e!1069084 (and tp!481409 tp!481406))))

(declare-fun b!1668275 () Bool)

(declare-fun tp!481407 () Bool)

(declare-fun tp!481408 () Bool)

(assert (=> b!1668275 (= e!1069084 (and tp!481407 tp!481408))))

(assert (=> b!1666705 (= tp!480790 e!1069084)))

(declare-fun b!1668274 () Bool)

(declare-fun tp!481405 () Bool)

(assert (=> b!1668274 (= e!1069084 tp!481405)))

(declare-fun b!1668272 () Bool)

(assert (=> b!1668272 (= e!1069084 tp_is_empty!7405)))

(assert (= (and b!1666705 ((_ is ElementMatch!4565) (reg!4894 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668272))

(assert (= (and b!1666705 ((_ is Concat!7893) (reg!4894 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668273))

(assert (= (and b!1666705 ((_ is Star!4565) (reg!4894 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668274))

(assert (= (and b!1666705 ((_ is Union!4565) (reg!4894 (regex!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))))) b!1668275))

(declare-fun b!1668281 () Bool)

(declare-fun e!1069086 () Bool)

(declare-fun tp!481419 () Bool)

(declare-fun tp!481416 () Bool)

(assert (=> b!1668281 (= e!1069086 (and tp!481419 tp!481416))))

(declare-fun b!1668283 () Bool)

(declare-fun tp!481417 () Bool)

(declare-fun tp!481418 () Bool)

(assert (=> b!1668283 (= e!1069086 (and tp!481417 tp!481418))))

(assert (=> b!1666739 (= tp!480829 e!1069086)))

(declare-fun b!1668282 () Bool)

(declare-fun tp!481415 () Bool)

(assert (=> b!1668282 (= e!1069086 tp!481415)))

(declare-fun b!1668280 () Bool)

(assert (=> b!1668280 (= e!1069086 tp_is_empty!7405)))

(assert (= (and b!1666739 ((_ is ElementMatch!4565) (reg!4894 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668280))

(assert (= (and b!1666739 ((_ is Concat!7893) (reg!4894 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668281))

(assert (= (and b!1666739 ((_ is Star!4565) (reg!4894 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668282))

(assert (= (and b!1666739 ((_ is Union!4565) (reg!4894 (regTwo!9643 (regex!3237 (h!23777 rules!1846)))))) b!1668283))

(declare-fun b!1668292 () Bool)

(declare-fun e!1069089 () Bool)

(declare-fun tp!481434 () Bool)

(declare-fun tp!481426 () Bool)

(assert (=> b!1668292 (= e!1069089 (and tp!481434 tp!481426))))

(declare-fun b!1668295 () Bool)

(declare-fun tp!481428 () Bool)

(declare-fun tp!481433 () Bool)

(assert (=> b!1668295 (= e!1069089 (and tp!481428 tp!481433))))

(assert (=> b!1666730 (= tp!480823 e!1069089)))

(declare-fun b!1668294 () Bool)

(declare-fun tp!481425 () Bool)

(assert (=> b!1668294 (= e!1069089 tp!481425)))

(declare-fun b!1668290 () Bool)

(assert (=> b!1668290 (= e!1069089 tp_is_empty!7405)))

(assert (= (and b!1666730 ((_ is ElementMatch!4565) (regOne!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668290))

(assert (= (and b!1666730 ((_ is Concat!7893) (regOne!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668292))

(assert (= (and b!1666730 ((_ is Star!4565) (regOne!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668294))

(assert (= (and b!1666730 ((_ is Union!4565) (regOne!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668295))

(declare-fun b!1668300 () Bool)

(declare-fun e!1069091 () Bool)

(declare-fun tp!481444 () Bool)

(declare-fun tp!481441 () Bool)

(assert (=> b!1668300 (= e!1069091 (and tp!481444 tp!481441))))

(declare-fun b!1668303 () Bool)

(declare-fun tp!481442 () Bool)

(declare-fun tp!481443 () Bool)

(assert (=> b!1668303 (= e!1069091 (and tp!481442 tp!481443))))

(assert (=> b!1666730 (= tp!480820 e!1069091)))

(declare-fun b!1668302 () Bool)

(declare-fun tp!481439 () Bool)

(assert (=> b!1668302 (= e!1069091 tp!481439)))

(declare-fun b!1668298 () Bool)

(assert (=> b!1668298 (= e!1069091 tp_is_empty!7405)))

(assert (= (and b!1666730 ((_ is ElementMatch!4565) (regTwo!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668298))

(assert (= (and b!1666730 ((_ is Concat!7893) (regTwo!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668300))

(assert (= (and b!1666730 ((_ is Star!4565) (regTwo!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668302))

(assert (= (and b!1666730 ((_ is Union!4565) (regTwo!9642 (regTwo!9642 (regex!3237 (h!23777 rules!1846)))))) b!1668303))

(declare-fun b_lambda!52373 () Bool)

(assert (= b_lambda!52365 (or d!503719 b_lambda!52373)))

(declare-fun bs!397902 () Bool)

(declare-fun d!504501 () Bool)

(assert (= bs!397902 (and d!504501 d!503719)))

(assert (=> bs!397902 (= (dynLambda!8278 lambda!67964 (h!23776 (t!152190 tokens!457))) (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457))))))

(assert (=> bs!397902 m!2029581))

(assert (=> b!1667733 d!504501))

(declare-fun b_lambda!52375 () Bool)

(assert (= b_lambda!52339 (or d!503705 b_lambda!52375)))

(declare-fun bs!397903 () Bool)

(declare-fun d!504503 () Bool)

(assert (= bs!397903 (and d!504503 d!503705)))

(assert (=> bs!397903 (= (dynLambda!8280 lambda!67960 (h!23777 rules!1846)) (ruleValid!760 thiss!17113 (h!23777 rules!1846)))))

(assert (=> bs!397903 m!2031323))

(assert (=> b!1667231 d!504503))

(declare-fun b_lambda!52377 () Bool)

(assert (= b_lambda!52345 (or d!503589 b_lambda!52377)))

(declare-fun bs!397904 () Bool)

(declare-fun d!504505 () Bool)

(assert (= bs!397904 (and d!504505 d!503589)))

(assert (=> bs!397904 (= (dynLambda!8278 lambda!67948 (h!23776 (t!152190 tokens!457))) (rulesProduceIndividualToken!1514 thiss!17113 rules!1846 (h!23776 (t!152190 tokens!457))))))

(assert (=> bs!397904 m!2029581))

(assert (=> b!1667344 d!504505))

(declare-fun b_lambda!52379 () Bool)

(assert (= b_lambda!52361 (or (and b!1666187 b_free!45273 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) (and b!1666432 b_free!45293 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) (and b!1668118 b_free!45317 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) (and b!1666409 b_free!45289 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) (and b!1666753 b_free!45301) (and b!1666724 b_free!45297 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) (and b!1667947 b_free!45313 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) (and b!1666178 b_free!45277 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))))) b_lambda!52379)))

(declare-fun b_lambda!52381 () Bool)

(assert (= b_lambda!52359 (or (and b!1666178 b_free!45277 (= (toChars!4555 (transformation!3237 (h!23777 rules!1846))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1668118 b_free!45317 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1667947 b_free!45313 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666187 b_free!45273) (and b!1666409 b_free!45289 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 rules!1846)))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666753 b_free!45301 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666724 b_free!45297 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666432 b_free!45293 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 tokens!457))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) b_lambda!52381)))

(declare-fun b_lambda!52383 () Bool)

(assert (= b_lambda!52311 (or (and b!1666724 b_free!45297 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 rules!1846))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1666753 b_free!45301 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 tokens!457)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1667947 b_free!45313 (= (toChars!4555 (transformation!3237 (h!23777 (t!152191 (t!152191 (t!152191 rules!1846)))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) (and b!1668118 b_free!45317 (= (toChars!4555 (transformation!3237 (rule!5125 (h!23776 (t!152190 (t!152190 (t!152190 tokens!457))))))) (toChars!4555 (transformation!3237 (rule!5125 (h!23776 tokens!457)))))) b_lambda!52383)))

(check-sat (not b!1667760) (not b!1666900) (not b!1667831) (not d!504381) (not b!1668003) (not b!1667136) (not b!1667129) (not b!1667551) (not d!504353) (not b!1668251) (not b!1667232) (not b!1667473) b_and!118569 (not b!1667981) (not d!503891) (not d!503955) (not b!1667734) (not b!1668218) (not b!1667307) (not d!504013) b_and!118365 (not b!1666899) (not b!1667534) (not b!1668234) (not b!1668098) (not d!503975) (not b!1668054) (not b!1667885) (not b!1668177) (not b!1668259) (not b!1667199) (not b!1667960) (not b!1667939) (not b!1667188) (not b!1667720) (not b!1667959) (not d!504249) (not b!1667997) (not b!1668201) (not b_next!46001) (not b!1667195) b_and!118589 (not d!504319) (not bm!106550) (not bm!106538) (not b!1668238) (not d!504331) (not b!1666979) (not b!1667651) b_and!118593 tp_is_empty!7405 (not b!1667198) (not b!1668157) (not b!1668050) (not b!1667439) (not b!1668257) (not d!504323) (not b!1667022) (not b!1667901) (not d!504187) (not b!1667833) (not b!1667822) b_and!118573 (not d!504341) (not b!1667972) (not b!1667859) (not b_lambda!52327) (not d!503915) (not tb!95671) (not d!504379) (not d!504317) (not b_next!45997) (not bm!106551) (not b!1667826) (not b!1667931) (not b!1667738) (not b!1667210) (not b!1668258) (not b!1667830) (not b!1667900) (not b!1667686) (not d!504257) (not b!1668001) (not b!1667943) (not b!1667652) (not b!1667218) (not d!503875) (not d!503979) (not b!1667200) (not b!1667991) (not b!1667999) (not b!1666894) (not d!504315) (not b!1667533) (not b!1668210) (not d!504161) (not b!1667354) (not b!1667977) (not b!1668009) (not b!1667993) (not b!1667819) (not d!504271) (not b!1667126) (not b!1668248) (not d!503963) (not b!1667705) (not b!1667736) (not b!1668002) (not b!1667089) (not b!1667288) (not d!504397) (not b!1667087) (not b_lambda!52363) (not d!503999) (not b_next!45979) (not b!1667715) (not d!504191) (not d!503977) (not b!1667113) (not b!1666893) (not b!1667883) (not b!1667311) (not b!1668202) (not d!504479) (not b!1668193) (not b!1668275) (not d!504425) (not b!1668176) (not b!1667928) (not b!1667732) (not d!503951) (not d!504371) (not d!504147) (not b!1667023) (not b_next!46015) (not b!1667761) (not d!503939) (not b!1667289) (not b!1668142) (not b!1667719) (not b!1667161) (not bs!397902) (not d!504325) (not b!1667117) (not b!1666891) (not d!503945) (not b!1667135) (not b!1667131) (not bs!397904) (not b!1667818) (not b!1668228) (not b_next!46021) (not b!1666898) (not d!504343) (not b!1667267) (not b!1667264) (not b!1668274) (not b!1666897) (not b!1668140) (not b!1666770) (not b!1667970) (not d!503941) (not d!504361) (not d!504357) (not d!503943) b_and!118369 (not b!1668017) (not b_next!46005) (not b!1667815) (not b!1667882) (not b!1668266) (not b!1667440) (not b!1667179) (not b!1667124) (not d!503969) (not b!1667095) (not b!1668178) (not b!1667886) (not b!1667893) (not d!503925) (not b!1667915) (not b!1668115) (not b!1667987) (not b!1667867) (not b!1667259) (not b!1668082) (not b!1667290) (not b!1666865) (not tb!95683) (not d!504321) (not b!1667163) (not b!1668010) (not b!1668282) (not b_lambda!52375) (not b!1668294) (not b!1667920) (not b!1667712) b_and!118393 (not b!1667097) (not b!1667891) (not b!1667936) (not d!504141) (not d!504241) (not b!1667934) b_and!118389 (not b!1667036) (not d!504455) (not b!1667973) (not b!1667418) (not b!1668242) (not b!1668184) (not b!1667472) (not b!1667263) (not b!1667197) (not b!1668029) (not b!1667468) (not b_next!45975) (not b!1667772) (not d!504395) (not d!504369) (not d!504157) (not b!1667692) (not b!1667128) (not b!1667986) (not b!1668237) (not b!1667130) (not b_next!46017) (not d!503871) (not b!1667106) (not d!504449) (not b_next!45999) (not d!504071) (not b!1667746) (not b!1667663) (not d!504393) (not b!1667292) (not bm!106557) (not b!1667189) (not d!503967) (not b!1667890) (not d!503883) (not b!1667875) (not d!504253) (not b!1667662) (not b_next!45995) (not b!1667445) (not b!1667339) (not d!504423) (not b!1667874) (not b!1668096) (not d!503849) (not d!503937) (not d!503959) (not b!1667816) (not b!1667021) (not b!1667725) (not b!1667827) (not b!1667092) (not b!1668049) (not b!1667442) (not b!1667444) (not d!504333) (not d!503873) (not b_lambda!52381) (not b!1668028) (not d!504439) (not b!1667217) (not b!1667463) (not d!504443) (not b!1668034) (not d!504365) (not b!1667149) (not d!503953) (not b!1668246) (not d!504421) (not b!1667462) (not b!1668116) (not d!504259) (not b!1666892) (not b!1668230) (not b!1667914) (not bm!106531) (not b!1667946) (not b!1668141) (not b!1667573) (not b!1668014) (not d!503895) (not tb!95659) (not d!504373) (not b!1667306) (not b!1667360) (not b!1667860) (not b!1667398) (not b!1668033) (not b!1668232) (not b!1668104) (not b!1668105) (not b!1668216) (not b!1668229) (not d!504185) (not b!1666636) (not b!1667878) b_and!118571 (not d!504011) (not b!1667438) (not b!1667759) (not d!503919) (not b!1667650) (not b!1667020) (not b!1667927) (not b!1668185) (not b!1668168) (not b!1667088) (not b!1667942) (not b!1667338) (not b!1667148) (not d!504151) (not b!1668265) (not b!1667127) (not b!1668072) (not d!504453) (not d!504177) (not b!1668097) (not b!1667873) (not bm!106530) (not d!504481) (not b!1667474) (not b!1668059) (not b!1667105) (not b!1667971) (not b!1667976) (not b_lambda!52373) (not b!1668302) (not d!503903) (not b!1667938) (not b!1668240) (not d!504173) (not b!1668013) (not d!504427) (not d!504387) (not b!1667940) (not b!1667357) (not b!1667995) (not b_next!45981) (not b!1667191) (not b!1668022) (not b!1668170) (not b!1667475) (not d!503935) (not b!1666864) (not b!1667358) (not b_next!45991) (not tb!95599) (not b!1667924) (not b!1668273) (not b_next!45993) (not b!1667099) (not b!1668027) (not b!1667740) (not d!504327) (not b!1666895) (not b!1668295) (not d!503997) (not b!1667566) (not b!1667294) (not b_lambda!52343) (not b!1667448) (not b!1667115) (not d!504047) (not b!1668023) (not d!504123) (not b!1667955) (not b_lambda!52377) (not d!504383) (not b!1666975) (not b!1668223) (not b!1667982) (not b!1668200) (not b!1668300) (not b!1667471) (not b!1666976) (not d!503879) (not b!1667930) (not b!1666980) (not b!1667694) (not b!1667449) (not b!1667262) (not tb!95575) (not b!1668303) (not d!504009) (not b!1668090) (not b!1667094) (not d!503995) (not b!1667884) (not b_lambda!52379) (not b!1667876) (not d!504457) (not b!1667728) (not b!1667698) (not b!1667348) (not b!1667695) (not b!1668292) (not b!1668064) (not b!1667120) (not b!1668019) (not b!1667820) (not b_lambda!52367) b_and!118591 (not d!503887) (not b!1667033) (not b!1667443) (not b!1667194) (not b!1667919) (not b!1667177) (not b!1668021) (not b!1667260) (not b!1668283) (not d!504081) (not d!504467) (not b!1667261) (not b!1667776) (not b_lambda!52383) (not b!1667091) (not b!1668267) (not b!1667464) (not b!1668220) (not b!1667392) (not b!1667101) (not b!1667775) (not b!1667961) (not b_lambda!52325) (not d!504367) (not b!1668281) (not b!1667926) (not d!504181) (not b!1668217) (not b!1667764) (not d!504431) b_and!118433 (not b!1668192) (not b!1667998) (not b!1667877) (not d!504039) (not d!504375) (not b!1666954) (not b!1667374) (not b!1667660) (not b!1667975) (not b!1668018) (not b!1667312) (not b!1668208) (not b!1667037) (not d!504377) (not b!1668011) (not d!503989) (not b!1667661) (not b!1667090) (not b!1667994) (not d!503901) (not b!1667201) (not b!1668062) (not b!1668245) (not d!504235) (not b!1668041) (not b!1668148) (not b!1667118) (not d!504347) (not b!1667320) (not d!503877) (not b!1667689) (not b!1667102) (not b!1668081) (not d!504345) (not b!1667345) (not b!1667899) (not b!1667437) b_and!118429 (not b!1667176) (not b!1667895) (not b!1668159) (not b!1667466) (not b!1667269) (not b!1667879) (not b_lambda!52329) (not b!1668067) (not d!503973) (not b!1666890) (not b!1667768) (not b!1668186) (not b!1667352) (not b!1668089) (not b!1668241) (not b!1668249) (not b!1667932) (not d!504061) (not d!503917) (not d!504447) (not b!1667119) (not b!1668088) (not b!1666955) (not b!1668015) (not d!504335) (not b!1668053) (not b!1667821) (not b!1667112) (not d!504085) (not b!1667706) (not b_next!45977) (not b!1667870) (not b!1668052) (not b!1667989) (not b!1667467) (not b!1668043) (not b!1667337) (not d!504233) (not b!1667887) (not b!1667869) (not d!504305) (not b!1667208) (not b!1668106) (not b!1667858) (not b!1667032) (not b!1667133) (not b!1667769) (not b!1667739) (not bm!106549) (not b!1666937) (not d!504385) (not b!1667691) (not b!1667945) (not d!504139) (not b!1668073) (not d!503957) (not b!1668194) (not b!1667962) (not b_next!46003) (not b!1667707) (not b!1667185) (not b!1667944) (not b!1667399) (not b!1667763) (not b!1668150) (not b!1668236) (not b!1668042) (not d!503965) b_and!118575 (not d!503947) (not b!1667910) (not d!504355) (not d!503961) (not b!1667956) (not b!1668209) (not b!1667696) (not b!1667835) (not b!1667985) (not b!1668048) b_and!118567 (not b!1667350) (not b!1667121) (not b_lambda!52337) (not b!1668080) (not b!1667894) (not b!1668117) (not b!1668035) (not b_next!46019) (not d!503949) (not d!504179) (not b!1668233) (not b!1667741) (not d!504025) (not b!1667918) (not b!1667319) (not b!1667174) (not b!1667100) (not b!1667110) (not b!1668149) (not b!1666902) (not d!504129) (not b!1667349) (not b!1667291) (not b!1667773) (not d!504087) (not b!1667990) (not d!504363) (not b!1667470) (not b!1667935) b_and!118595 (not b!1667916) (not b!1667186) (not b!1667160) (not d!504189) (not b!1667465) (not b!1667159) b_and!118565 (not b!1667123) (not b!1668250) (not b!1667693) (not b!1667103) (not b!1668244) (not b!1668074) (not d!503983) (not d!504067) (not b!1667134) (not b!1668061) (not b!1667400) (not d!504015) (not b!1668065) (not b!1667983) (not d!504059) (not b!1668169) (not b!1667303) (not b!1667923) (not b!1667957) (not b!1668221) (not b!1667653) (not d!504337) (not bs!397903) (not b!1667871) (not b!1667889) (not b!1668161) (not b!1667922) (not b!1667085))
(check-sat b_and!118569 b_and!118365 (not b_next!45979) (not b_next!46015) (not b_next!46021) b_and!118571 (not b_next!45981) b_and!118591 b_and!118433 b_and!118429 (not b_next!45977) (not b_next!46003) (not b_next!46019) (not b_next!46001) b_and!118593 b_and!118589 (not b_next!45997) b_and!118573 b_and!118369 (not b_next!46005) b_and!118393 b_and!118389 (not b_next!45975) (not b_next!46017) (not b_next!45999) (not b_next!45995) (not b_next!45993) (not b_next!45991) b_and!118575 b_and!118567 b_and!118595 b_and!118565)
