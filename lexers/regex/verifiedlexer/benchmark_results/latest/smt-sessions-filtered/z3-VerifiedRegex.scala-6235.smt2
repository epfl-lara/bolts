; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302646 () Bool)

(assert start!302646)

(declare-fun b!3223245 () Bool)

(declare-fun b_free!85809 () Bool)

(declare-fun b_next!86513 () Bool)

(assert (=> b!3223245 (= b_free!85809 (not b_next!86513))))

(declare-fun tp!1015357 () Bool)

(declare-fun b_and!215511 () Bool)

(assert (=> b!3223245 (= tp!1015357 b_and!215511)))

(declare-fun b_free!85811 () Bool)

(declare-fun b_next!86515 () Bool)

(assert (=> b!3223245 (= b_free!85811 (not b_next!86515))))

(declare-fun tp!1015358 () Bool)

(declare-fun b_and!215513 () Bool)

(assert (=> b!3223245 (= tp!1015358 b_and!215513)))

(declare-fun b!3223214 () Bool)

(declare-fun b_free!85813 () Bool)

(declare-fun b_next!86517 () Bool)

(assert (=> b!3223214 (= b_free!85813 (not b_next!86517))))

(declare-fun tp!1015362 () Bool)

(declare-fun b_and!215515 () Bool)

(assert (=> b!3223214 (= tp!1015362 b_and!215515)))

(declare-fun b_free!85815 () Bool)

(declare-fun b_next!86519 () Bool)

(assert (=> b!3223214 (= b_free!85815 (not b_next!86519))))

(declare-fun tp!1015360 () Bool)

(declare-fun b_and!215517 () Bool)

(assert (=> b!3223214 (= tp!1015360 b_and!215517)))

(declare-fun b!3223239 () Bool)

(declare-fun b_free!85817 () Bool)

(declare-fun b_next!86521 () Bool)

(assert (=> b!3223239 (= b_free!85817 (not b_next!86521))))

(declare-fun tp!1015352 () Bool)

(declare-fun b_and!215519 () Bool)

(assert (=> b!3223239 (= tp!1015352 b_and!215519)))

(declare-fun b_free!85819 () Bool)

(declare-fun b_next!86523 () Bool)

(assert (=> b!3223239 (= b_free!85819 (not b_next!86523))))

(declare-fun tp!1015361 () Bool)

(declare-fun b_and!215521 () Bool)

(assert (=> b!3223239 (= tp!1015361 b_and!215521)))

(declare-fun bs!542635 () Bool)

(declare-fun b!3223243 () Bool)

(declare-fun b!3223233 () Bool)

(assert (= bs!542635 (and b!3223243 b!3223233)))

(declare-fun lambda!117971 () Int)

(declare-fun lambda!117970 () Int)

(assert (=> bs!542635 (not (= lambda!117971 lambda!117970))))

(declare-fun b!3223268 () Bool)

(declare-fun e!2010134 () Bool)

(assert (=> b!3223268 (= e!2010134 true)))

(declare-fun b!3223267 () Bool)

(declare-fun e!2010133 () Bool)

(assert (=> b!3223267 (= e!2010133 e!2010134)))

(declare-fun b!3223266 () Bool)

(declare-fun e!2010132 () Bool)

(assert (=> b!3223266 (= e!2010132 e!2010133)))

(assert (=> b!3223243 e!2010132))

(assert (= b!3223267 b!3223268))

(assert (= b!3223266 b!3223267))

(declare-datatypes ((C!20204 0))(
  ( (C!20205 (val!12150 Int)) )
))
(declare-datatypes ((Regex!10009 0))(
  ( (ElementMatch!10009 (c!541812 C!20204)) (Concat!15489 (regOne!20530 Regex!10009) (regTwo!20530 Regex!10009)) (EmptyExpr!10009) (Star!10009 (reg!10338 Regex!10009)) (EmptyLang!10009) (Union!10009 (regOne!20531 Regex!10009) (regTwo!20531 Regex!10009)) )
))
(declare-datatypes ((List!36410 0))(
  ( (Nil!36286) (Cons!36286 (h!41706 (_ BitVec 16)) (t!240643 List!36410)) )
))
(declare-datatypes ((TokenValue!5480 0))(
  ( (FloatLiteralValue!10960 (text!38805 List!36410)) (TokenValueExt!5479 (__x!23177 Int)) (Broken!27400 (value!170059 List!36410)) (Object!5603) (End!5480) (Def!5480) (Underscore!5480) (Match!5480) (Else!5480) (Error!5480) (Case!5480) (If!5480) (Extends!5480) (Abstract!5480) (Class!5480) (Val!5480) (DelimiterValue!10960 (del!5540 List!36410)) (KeywordValue!5486 (value!170060 List!36410)) (CommentValue!10960 (value!170061 List!36410)) (WhitespaceValue!10960 (value!170062 List!36410)) (IndentationValue!5480 (value!170063 List!36410)) (String!40733) (Int32!5480) (Broken!27401 (value!170064 List!36410)) (Boolean!5481) (Unit!50885) (OperatorValue!5483 (op!5540 List!36410)) (IdentifierValue!10960 (value!170065 List!36410)) (IdentifierValue!10961 (value!170066 List!36410)) (WhitespaceValue!10961 (value!170067 List!36410)) (True!10960) (False!10960) (Broken!27402 (value!170068 List!36410)) (Broken!27403 (value!170069 List!36410)) (True!10961) (RightBrace!5480) (RightBracket!5480) (Colon!5480) (Null!5480) (Comma!5480) (LeftBracket!5480) (False!10961) (LeftBrace!5480) (ImaginaryLiteralValue!5480 (text!38806 List!36410)) (StringLiteralValue!16440 (value!170070 List!36410)) (EOFValue!5480 (value!170071 List!36410)) (IdentValue!5480 (value!170072 List!36410)) (DelimiterValue!10961 (value!170073 List!36410)) (DedentValue!5480 (value!170074 List!36410)) (NewLineValue!5480 (value!170075 List!36410)) (IntegerValue!16440 (value!170076 (_ BitVec 32)) (text!38807 List!36410)) (IntegerValue!16441 (value!170077 Int) (text!38808 List!36410)) (Times!5480) (Or!5480) (Equal!5480) (Minus!5480) (Broken!27404 (value!170078 List!36410)) (And!5480) (Div!5480) (LessEqual!5480) (Mod!5480) (Concat!15490) (Not!5480) (Plus!5480) (SpaceValue!5480 (value!170079 List!36410)) (IntegerValue!16442 (value!170080 Int) (text!38809 List!36410)) (StringLiteralValue!16441 (text!38810 List!36410)) (FloatLiteralValue!10961 (text!38811 List!36410)) (BytesLiteralValue!5480 (value!170081 List!36410)) (CommentValue!10961 (value!170082 List!36410)) (StringLiteralValue!16442 (value!170083 List!36410)) (ErrorTokenValue!5480 (msg!5541 List!36410)) )
))
(declare-datatypes ((List!36411 0))(
  ( (Nil!36287) (Cons!36287 (h!41707 C!20204) (t!240644 List!36411)) )
))
(declare-datatypes ((IArray!21755 0))(
  ( (IArray!21756 (innerList!10935 List!36411)) )
))
(declare-datatypes ((Conc!10875 0))(
  ( (Node!10875 (left!28250 Conc!10875) (right!28580 Conc!10875) (csize!21980 Int) (cheight!11086 Int)) (Leaf!17111 (xs!13993 IArray!21755) (csize!21981 Int)) (Empty!10875) )
))
(declare-datatypes ((BalanceConc!21364 0))(
  ( (BalanceConc!21365 (c!541813 Conc!10875)) )
))
(declare-datatypes ((String!40734 0))(
  ( (String!40735 (value!170084 String)) )
))
(declare-datatypes ((TokenValueInjection!10388 0))(
  ( (TokenValueInjection!10389 (toValue!7346 Int) (toChars!7205 Int)) )
))
(declare-datatypes ((Rule!10300 0))(
  ( (Rule!10301 (regex!5250 Regex!10009) (tag!5782 String!40734) (isSeparator!5250 Bool) (transformation!5250 TokenValueInjection!10388)) )
))
(declare-datatypes ((List!36412 0))(
  ( (Nil!36288) (Cons!36288 (h!41708 Rule!10300) (t!240645 List!36412)) )
))
(declare-fun rules!2135 () List!36412)

(get-info :version)

(assert (= (and b!3223243 ((_ is Cons!36288) rules!2135)) b!3223266))

(declare-fun order!18653 () Int)

(declare-fun order!18655 () Int)

(declare-fun dynLambda!14715 (Int Int) Int)

(declare-fun dynLambda!14716 (Int Int) Int)

(assert (=> b!3223268 (< (dynLambda!14715 order!18653 (toValue!7346 (transformation!5250 (h!41708 rules!2135)))) (dynLambda!14716 order!18655 lambda!117971))))

(declare-fun order!18657 () Int)

(declare-fun dynLambda!14717 (Int Int) Int)

(assert (=> b!3223268 (< (dynLambda!14717 order!18657 (toChars!7205 (transformation!5250 (h!41708 rules!2135)))) (dynLambda!14716 order!18655 lambda!117971))))

(assert (=> b!3223243 true))

(declare-fun b!3223212 () Bool)

(declare-fun e!2010099 () Bool)

(declare-datatypes ((Token!9866 0))(
  ( (Token!9867 (value!170085 TokenValue!5480) (rule!7708 Rule!10300) (size!27361 Int) (originalCharacters!5964 List!36411)) )
))
(declare-datatypes ((List!36413 0))(
  ( (Nil!36289) (Cons!36289 (h!41709 Token!9866) (t!240646 List!36413)) )
))
(declare-datatypes ((IArray!21757 0))(
  ( (IArray!21758 (innerList!10936 List!36413)) )
))
(declare-datatypes ((Conc!10876 0))(
  ( (Node!10876 (left!28251 Conc!10876) (right!28581 Conc!10876) (csize!21982 Int) (cheight!11087 Int)) (Leaf!17112 (xs!13994 IArray!21757) (csize!21983 Int)) (Empty!10876) )
))
(declare-datatypes ((BalanceConc!21366 0))(
  ( (BalanceConc!21367 (c!541814 Conc!10876)) )
))
(declare-datatypes ((tuple2!35724 0))(
  ( (tuple2!35725 (_1!20996 BalanceConc!21366) (_2!20996 BalanceConc!21364)) )
))
(declare-fun lt!1093372 () tuple2!35724)

(declare-fun isEmpty!20377 (BalanceConc!21364) Bool)

(assert (=> b!3223212 (= e!2010099 (isEmpty!20377 (_2!20996 lt!1093372)))))

(declare-fun b!3223213 () Bool)

(declare-datatypes ((Unit!50886 0))(
  ( (Unit!50887) )
))
(declare-fun e!2010093 () Unit!50886)

(declare-fun Unit!50888 () Unit!50886)

(assert (=> b!3223213 (= e!2010093 Unit!50888)))

(declare-fun e!2010090 () Bool)

(assert (=> b!3223214 (= e!2010090 (and tp!1015362 tp!1015360))))

(declare-fun b!3223215 () Bool)

(declare-fun res!1312706 () Bool)

(declare-fun e!2010089 () Bool)

(assert (=> b!3223215 (=> res!1312706 e!2010089)))

(declare-datatypes ((LexerInterface!4839 0))(
  ( (LexerInterfaceExt!4836 (__x!23178 Int)) (Lexer!4837) )
))
(declare-fun thiss!18206 () LexerInterface!4839)

(declare-fun tokens!494 () List!36413)

(declare-fun lt!1093328 () List!36411)

(declare-fun filter!518 (List!36413 Int) List!36413)

(declare-datatypes ((tuple2!35726 0))(
  ( (tuple2!35727 (_1!20997 List!36413) (_2!20997 List!36411)) )
))
(declare-fun lexList!1323 (LexerInterface!4839 List!36412 List!36411) tuple2!35726)

(assert (=> b!3223215 (= res!1312706 (not (= (filter!518 (_1!20997 (lexList!1323 thiss!18206 rules!2135 lt!1093328)) lambda!117970) (t!240646 tokens!494))))))

(declare-fun b!3223216 () Bool)

(declare-fun e!2010124 () Bool)

(declare-fun e!2010123 () Bool)

(assert (=> b!3223216 (= e!2010124 e!2010123)))

(declare-fun res!1312698 () Bool)

(assert (=> b!3223216 (=> res!1312698 e!2010123)))

(assert (=> b!3223216 (= res!1312698 (or (isSeparator!5250 (rule!7708 (h!41709 tokens!494))) (isSeparator!5250 (rule!7708 (h!41709 (t!240646 tokens!494))))))))

(declare-fun lt!1093329 () Unit!50886)

(declare-fun forallContained!1221 (List!36413 Int Token!9866) Unit!50886)

(assert (=> b!3223216 (= lt!1093329 (forallContained!1221 tokens!494 lambda!117970 (h!41709 (t!240646 tokens!494))))))

(declare-fun lt!1093332 () Unit!50886)

(assert (=> b!3223216 (= lt!1093332 (forallContained!1221 tokens!494 lambda!117970 (h!41709 tokens!494)))))

(declare-fun res!1312710 () Bool)

(declare-fun e!2010094 () Bool)

(assert (=> start!302646 (=> (not res!1312710) (not e!2010094))))

(assert (=> start!302646 (= res!1312710 ((_ is Lexer!4837) thiss!18206))))

(assert (=> start!302646 e!2010094))

(assert (=> start!302646 true))

(declare-fun e!2010115 () Bool)

(assert (=> start!302646 e!2010115))

(declare-fun separatorToken!241 () Token!9866)

(declare-fun e!2010096 () Bool)

(declare-fun inv!49155 (Token!9866) Bool)

(assert (=> start!302646 (and (inv!49155 separatorToken!241) e!2010096)))

(declare-fun e!2010121 () Bool)

(assert (=> start!302646 e!2010121))

(declare-fun b!3223217 () Bool)

(declare-fun res!1312702 () Bool)

(declare-fun e!2010103 () Bool)

(assert (=> b!3223217 (=> res!1312702 e!2010103)))

(declare-fun lt!1093358 () tuple2!35724)

(declare-fun apply!8267 (BalanceConc!21366 Int) Token!9866)

(assert (=> b!3223217 (= res!1312702 (not (= (apply!8267 (_1!20996 lt!1093358) 0) (h!41709 (t!240646 tokens!494)))))))

(declare-fun b!3223218 () Bool)

(declare-fun e!2010109 () Unit!50886)

(declare-fun Unit!50889 () Unit!50886)

(assert (=> b!3223218 (= e!2010109 Unit!50889)))

(declare-fun b!3223219 () Bool)

(declare-fun e!2010113 () Bool)

(declare-fun e!2010120 () Bool)

(assert (=> b!3223219 (= e!2010113 e!2010120)))

(declare-fun res!1312680 () Bool)

(assert (=> b!3223219 (=> (not res!1312680) (not e!2010120))))

(declare-fun lt!1093368 () Rule!10300)

(declare-fun lt!1093364 () List!36411)

(declare-fun matchR!4643 (Regex!10009 List!36411) Bool)

(assert (=> b!3223219 (= res!1312680 (matchR!4643 (regex!5250 lt!1093368) lt!1093364))))

(declare-datatypes ((Option!7205 0))(
  ( (None!7204) (Some!7204 (v!35784 Rule!10300)) )
))
(declare-fun lt!1093374 () Option!7205)

(declare-fun get!11566 (Option!7205) Rule!10300)

(assert (=> b!3223219 (= lt!1093368 (get!11566 lt!1093374))))

(declare-fun b!3223220 () Bool)

(assert (=> b!3223220 (= e!2010089 true)))

(declare-fun lt!1093342 () BalanceConc!21366)

(declare-fun lt!1093367 () BalanceConc!21364)

(declare-fun printWithSeparatorToken!68 (LexerInterface!4839 BalanceConc!21366 Token!9866) BalanceConc!21364)

(assert (=> b!3223220 (= lt!1093367 (printWithSeparatorToken!68 thiss!18206 lt!1093342 separatorToken!241))))

(declare-fun b!3223221 () Bool)

(declare-fun tp!1015353 () Bool)

(declare-fun e!2010117 () Bool)

(declare-fun e!2010108 () Bool)

(declare-fun inv!49152 (String!40734) Bool)

(declare-fun inv!49156 (TokenValueInjection!10388) Bool)

(assert (=> b!3223221 (= e!2010117 (and tp!1015353 (inv!49152 (tag!5782 (rule!7708 separatorToken!241))) (inv!49156 (transformation!5250 (rule!7708 separatorToken!241))) e!2010108))))

(declare-fun b!3223222 () Bool)

(assert (=> b!3223222 (= e!2010120 (= (rule!7708 separatorToken!241) lt!1093368))))

(declare-fun b!3223223 () Bool)

(declare-fun e!2010101 () Bool)

(declare-fun tp!1015355 () Bool)

(assert (=> b!3223223 (= e!2010115 (and e!2010101 tp!1015355))))

(declare-fun b!3223224 () Bool)

(declare-fun e!2010100 () Bool)

(declare-fun e!2010095 () Bool)

(assert (=> b!3223224 (= e!2010100 e!2010095)))

(declare-fun res!1312709 () Bool)

(assert (=> b!3223224 (=> (not res!1312709) (not e!2010095))))

(declare-fun lt!1093331 () Rule!10300)

(declare-fun lt!1093355 () List!36411)

(assert (=> b!3223224 (= res!1312709 (matchR!4643 (regex!5250 lt!1093331) lt!1093355))))

(declare-fun lt!1093341 () Option!7205)

(assert (=> b!3223224 (= lt!1093331 (get!11566 lt!1093341))))

(declare-fun b!3223225 () Bool)

(declare-fun e!2010104 () Bool)

(declare-fun e!2010110 () Bool)

(assert (=> b!3223225 (= e!2010104 e!2010110)))

(declare-fun res!1312688 () Bool)

(assert (=> b!3223225 (=> res!1312688 e!2010110)))

(declare-fun lt!1093351 () List!36411)

(declare-fun lt!1093346 () List!36411)

(assert (=> b!3223225 (= res!1312688 (not (= lt!1093351 lt!1093346)))))

(declare-fun ++!8724 (List!36411 List!36411) List!36411)

(assert (=> b!3223225 (= lt!1093346 (++!8724 (++!8724 lt!1093355 lt!1093364) lt!1093328))))

(declare-fun tp!1015356 () Bool)

(declare-fun e!2010091 () Bool)

(declare-fun b!3223226 () Bool)

(assert (=> b!3223226 (= e!2010091 (and tp!1015356 (inv!49152 (tag!5782 (rule!7708 (h!41709 tokens!494)))) (inv!49156 (transformation!5250 (rule!7708 (h!41709 tokens!494)))) e!2010090))))

(declare-fun b!3223227 () Bool)

(declare-fun res!1312687 () Bool)

(declare-fun e!2010122 () Bool)

(assert (=> b!3223227 (=> res!1312687 e!2010122)))

(declare-fun rulesProduceIndividualToken!2331 (LexerInterface!4839 List!36412 Token!9866) Bool)

(assert (=> b!3223227 (= res!1312687 (not (rulesProduceIndividualToken!2331 thiss!18206 rules!2135 (h!41709 tokens!494))))))

(declare-fun e!2010106 () Bool)

(declare-fun b!3223228 () Bool)

(declare-fun tp!1015363 () Bool)

(assert (=> b!3223228 (= e!2010121 (and (inv!49155 (h!41709 tokens!494)) e!2010106 tp!1015363))))

(declare-fun b!3223229 () Bool)

(declare-fun e!2010097 () Bool)

(assert (=> b!3223229 (= e!2010097 e!2010122)))

(declare-fun res!1312683 () Bool)

(assert (=> b!3223229 (=> res!1312683 e!2010122)))

(declare-fun lt!1093375 () List!36411)

(declare-fun lt!1093334 () List!36411)

(assert (=> b!3223229 (= res!1312683 (or (not (= lt!1093334 lt!1093355)) (not (= lt!1093375 lt!1093355))))))

(declare-fun list!12924 (BalanceConc!21364) List!36411)

(declare-fun charsOf!3266 (Token!9866) BalanceConc!21364)

(assert (=> b!3223229 (= lt!1093355 (list!12924 (charsOf!3266 (h!41709 tokens!494))))))

(declare-fun b!3223230 () Bool)

(declare-fun res!1312704 () Bool)

(declare-fun e!2010098 () Bool)

(assert (=> b!3223230 (=> (not res!1312704) (not e!2010098))))

(declare-fun sepAndNonSepRulesDisjointChars!1444 (List!36412 List!36412) Bool)

(assert (=> b!3223230 (= res!1312704 (sepAndNonSepRulesDisjointChars!1444 rules!2135 rules!2135))))

(declare-fun b!3223231 () Bool)

(assert (=> b!3223231 (= e!2010123 e!2010104)))

(declare-fun res!1312691 () Bool)

(assert (=> b!3223231 (=> res!1312691 e!2010104)))

(declare-fun lt!1093377 () List!36411)

(declare-fun printWithSeparatorTokenList!184 (LexerInterface!4839 List!36413 Token!9866) List!36411)

(assert (=> b!3223231 (= res!1312691 (not (= lt!1093328 (++!8724 (++!8724 lt!1093377 lt!1093364) (printWithSeparatorTokenList!184 thiss!18206 (t!240646 (t!240646 tokens!494)) separatorToken!241)))))))

(assert (=> b!3223231 (= lt!1093377 (list!12924 (charsOf!3266 (h!41709 (t!240646 tokens!494)))))))

(declare-fun lt!1093366 () List!36411)

(assert (=> b!3223231 (= lt!1093366 (++!8724 lt!1093364 lt!1093328))))

(assert (=> b!3223231 (= lt!1093364 (list!12924 (charsOf!3266 separatorToken!241)))))

(assert (=> b!3223231 (= lt!1093328 (printWithSeparatorTokenList!184 thiss!18206 (t!240646 tokens!494) separatorToken!241))))

(assert (=> b!3223231 (= lt!1093351 (printWithSeparatorTokenList!184 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3223232 () Bool)

(declare-fun res!1312681 () Bool)

(assert (=> b!3223232 (=> (not res!1312681) (not e!2010098))))

(assert (=> b!3223232 (= res!1312681 (isSeparator!5250 (rule!7708 separatorToken!241)))))

(declare-fun res!1312694 () Bool)

(assert (=> b!3223233 (=> (not res!1312694) (not e!2010098))))

(declare-fun forall!7432 (List!36413 Int) Bool)

(assert (=> b!3223233 (= res!1312694 (forall!7432 tokens!494 lambda!117970))))

(declare-fun b!3223234 () Bool)

(assert (=> b!3223234 (= e!2010098 (not e!2010097))))

(declare-fun res!1312708 () Bool)

(assert (=> b!3223234 (=> res!1312708 e!2010097)))

(assert (=> b!3223234 (= res!1312708 (not (= lt!1093375 lt!1093334)))))

(declare-fun printList!1389 (LexerInterface!4839 List!36413) List!36411)

(assert (=> b!3223234 (= lt!1093334 (printList!1389 thiss!18206 (Cons!36289 (h!41709 tokens!494) Nil!36289)))))

(declare-fun lt!1093340 () BalanceConc!21364)

(assert (=> b!3223234 (= lt!1093375 (list!12924 lt!1093340))))

(declare-fun lt!1093337 () BalanceConc!21366)

(declare-fun printTailRec!1336 (LexerInterface!4839 BalanceConc!21366 Int BalanceConc!21364) BalanceConc!21364)

(assert (=> b!3223234 (= lt!1093340 (printTailRec!1336 thiss!18206 lt!1093337 0 (BalanceConc!21365 Empty!10875)))))

(declare-fun print!1904 (LexerInterface!4839 BalanceConc!21366) BalanceConc!21364)

(assert (=> b!3223234 (= lt!1093340 (print!1904 thiss!18206 lt!1093337))))

(declare-fun singletonSeq!2346 (Token!9866) BalanceConc!21366)

(assert (=> b!3223234 (= lt!1093337 (singletonSeq!2346 (h!41709 tokens!494)))))

(declare-fun b!3223235 () Bool)

(assert (=> b!3223235 (= e!2010095 (= (rule!7708 (h!41709 tokens!494)) lt!1093331))))

(declare-fun b!3223236 () Bool)

(declare-fun e!2010114 () Bool)

(declare-fun tp!1015354 () Bool)

(assert (=> b!3223236 (= e!2010101 (and tp!1015354 (inv!49152 (tag!5782 (h!41708 rules!2135))) (inv!49156 (transformation!5250 (h!41708 rules!2135))) e!2010114))))

(declare-fun b!3223237 () Bool)

(declare-fun Unit!50890 () Unit!50886)

(assert (=> b!3223237 (= e!2010093 Unit!50890)))

(declare-fun lt!1093365 () Unit!50886)

(declare-fun lt!1093333 () C!20204)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!414 (Regex!10009 List!36411 C!20204) Unit!50886)

(assert (=> b!3223237 (= lt!1093365 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!414 (regex!5250 (rule!7708 separatorToken!241)) lt!1093364 lt!1093333))))

(declare-fun res!1312697 () Bool)

(assert (=> b!3223237 (= res!1312697 (not (matchR!4643 (regex!5250 (rule!7708 separatorToken!241)) lt!1093364)))))

(declare-fun e!2010107 () Bool)

(assert (=> b!3223237 (=> (not res!1312697) (not e!2010107))))

(assert (=> b!3223237 e!2010107))

(declare-fun tp!1015359 () Bool)

(declare-fun b!3223238 () Bool)

(declare-fun inv!21 (TokenValue!5480) Bool)

(assert (=> b!3223238 (= e!2010106 (and (inv!21 (value!170085 (h!41709 tokens!494))) e!2010091 tp!1015359))))

(assert (=> b!3223239 (= e!2010108 (and tp!1015352 tp!1015361))))

(declare-fun b!3223240 () Bool)

(assert (=> b!3223240 (= e!2010094 e!2010098)))

(declare-fun res!1312699 () Bool)

(assert (=> b!3223240 (=> (not res!1312699) (not e!2010098))))

(declare-fun rulesProduceEachTokenIndividually!1290 (LexerInterface!4839 List!36412 BalanceConc!21366) Bool)

(assert (=> b!3223240 (= res!1312699 (rulesProduceEachTokenIndividually!1290 thiss!18206 rules!2135 lt!1093342))))

(declare-fun seqFromList!3571 (List!36413) BalanceConc!21366)

(assert (=> b!3223240 (= lt!1093342 (seqFromList!3571 tokens!494))))

(declare-fun b!3223241 () Bool)

(declare-fun e!2010118 () Bool)

(declare-fun lt!1093359 () Rule!10300)

(assert (=> b!3223241 (= e!2010118 (= (rule!7708 (h!41709 (t!240646 tokens!494))) lt!1093359))))

(declare-fun b!3223242 () Bool)

(declare-fun res!1312700 () Bool)

(assert (=> b!3223242 (=> (not res!1312700) (not e!2010098))))

(assert (=> b!3223242 (= res!1312700 (rulesProduceIndividualToken!2331 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!2010112 () Bool)

(assert (=> b!3223243 (= e!2010112 e!2010089)))

(declare-fun res!1312707 () Bool)

(assert (=> b!3223243 (=> res!1312707 e!2010089)))

(declare-fun lt!1093330 () List!36413)

(assert (=> b!3223243 (= res!1312707 (not (= (filter!518 lt!1093330 lambda!117970) (t!240646 tokens!494))))))

(assert (=> b!3223243 (= (filter!518 lt!1093330 lambda!117970) (t!240646 tokens!494))))

(declare-fun list!12925 (BalanceConc!21366) List!36413)

(declare-fun lex!2169 (LexerInterface!4839 List!36412 BalanceConc!21364) tuple2!35724)

(assert (=> b!3223243 (= lt!1093330 (list!12925 (_1!20996 (lex!2169 thiss!18206 rules!2135 (printWithSeparatorToken!68 thiss!18206 (seqFromList!3571 (t!240646 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1093354 () Unit!50886)

(declare-fun theoremInvertFromTokensSepTokenBetweenEach!10 (LexerInterface!4839 List!36412 List!36413 Token!9866) Unit!50886)

(assert (=> b!3223243 (= lt!1093354 (theoremInvertFromTokensSepTokenBetweenEach!10 thiss!18206 rules!2135 (t!240646 tokens!494) separatorToken!241))))

(declare-datatypes ((tuple2!35728 0))(
  ( (tuple2!35729 (_1!20998 Token!9866) (_2!20998 List!36411)) )
))
(declare-datatypes ((Option!7206 0))(
  ( (None!7205) (Some!7205 (v!35785 tuple2!35728)) )
))
(declare-fun maxPrefix!2481 (LexerInterface!4839 List!36412 List!36411) Option!7206)

(assert (=> b!3223243 (= (maxPrefix!2481 thiss!18206 rules!2135 lt!1093366) (Some!7205 (tuple2!35729 separatorToken!241 lt!1093328)))))

(declare-fun lt!1093370 () Unit!50886)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!174 (LexerInterface!4839 List!36412 Token!9866 Rule!10300 List!36411 Rule!10300) Unit!50886)

(assert (=> b!3223243 (= lt!1093370 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!174 thiss!18206 rules!2135 separatorToken!241 (rule!7708 separatorToken!241) lt!1093328 (rule!7708 (h!41709 (t!240646 tokens!494)))))))

(declare-fun lt!1093379 () List!36411)

(declare-fun lt!1093352 () C!20204)

(declare-fun contains!6509 (List!36411 C!20204) Bool)

(assert (=> b!3223243 (not (contains!6509 lt!1093379 lt!1093352))))

(declare-fun lt!1093373 () Unit!50886)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!158 (LexerInterface!4839 List!36412 List!36412 Rule!10300 Rule!10300 C!20204) Unit!50886)

(assert (=> b!3223243 (= lt!1093373 (lemmaSepRuleNotContainsCharContainedInANonSepRule!158 thiss!18206 rules!2135 rules!2135 (rule!7708 (h!41709 (t!240646 tokens!494))) (rule!7708 separatorToken!241) lt!1093352))))

(declare-fun lt!1093353 () Unit!50886)

(assert (=> b!3223243 (= lt!1093353 e!2010109)))

(declare-fun c!541810 () Bool)

(declare-fun usedCharacters!566 (Regex!10009) List!36411)

(assert (=> b!3223243 (= c!541810 (not (contains!6509 (usedCharacters!566 (regex!5250 (rule!7708 (h!41709 (t!240646 tokens!494))))) lt!1093352)))))

(declare-fun head!7075 (List!36411) C!20204)

(assert (=> b!3223243 (= lt!1093352 (head!7075 lt!1093377))))

(declare-fun maxPrefixOneRule!1618 (LexerInterface!4839 Rule!10300 List!36411) Option!7206)

(declare-fun apply!8268 (TokenValueInjection!10388 BalanceConc!21364) TokenValue!5480)

(declare-fun seqFromList!3572 (List!36411) BalanceConc!21364)

(declare-fun size!27362 (List!36411) Int)

(assert (=> b!3223243 (= (maxPrefixOneRule!1618 thiss!18206 (rule!7708 (h!41709 (t!240646 tokens!494))) lt!1093377) (Some!7205 (tuple2!35729 (Token!9867 (apply!8268 (transformation!5250 (rule!7708 (h!41709 (t!240646 tokens!494)))) (seqFromList!3572 lt!1093377)) (rule!7708 (h!41709 (t!240646 tokens!494))) (size!27362 lt!1093377) lt!1093377) Nil!36287)))))

(declare-fun lt!1093336 () Unit!50886)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!731 (LexerInterface!4839 List!36412 List!36411 List!36411 List!36411 Rule!10300) Unit!50886)

(assert (=> b!3223243 (= lt!1093336 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!731 thiss!18206 rules!2135 lt!1093377 lt!1093377 Nil!36287 (rule!7708 (h!41709 (t!240646 tokens!494)))))))

(declare-fun e!2010092 () Bool)

(assert (=> b!3223243 e!2010092))

(declare-fun res!1312689 () Bool)

(assert (=> b!3223243 (=> (not res!1312689) (not e!2010092))))

(declare-fun lt!1093361 () Option!7205)

(declare-fun isDefined!5588 (Option!7205) Bool)

(assert (=> b!3223243 (= res!1312689 (isDefined!5588 lt!1093361))))

(declare-fun getRuleFromTag!955 (LexerInterface!4839 List!36412 String!40734) Option!7205)

(assert (=> b!3223243 (= lt!1093361 (getRuleFromTag!955 thiss!18206 rules!2135 (tag!5782 (rule!7708 (h!41709 (t!240646 tokens!494))))))))

(declare-fun lt!1093378 () Unit!50886)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!955 (LexerInterface!4839 List!36412 List!36411 Token!9866) Unit!50886)

(assert (=> b!3223243 (= lt!1093378 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!955 thiss!18206 rules!2135 lt!1093377 (h!41709 (t!240646 tokens!494))))))

(declare-fun lt!1093376 () Bool)

(assert (=> b!3223243 lt!1093376))

(declare-fun lt!1093380 () Unit!50886)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!878 (LexerInterface!4839 List!36412 List!36413 Token!9866) Unit!50886)

(assert (=> b!3223243 (= lt!1093380 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!878 thiss!18206 rules!2135 tokens!494 (h!41709 (t!240646 tokens!494))))))

(declare-fun lt!1093357 () List!36411)

(assert (=> b!3223243 (= (maxPrefix!2481 thiss!18206 rules!2135 lt!1093357) (Some!7205 (tuple2!35729 (h!41709 tokens!494) lt!1093366)))))

(declare-fun lt!1093356 () Unit!50886)

(assert (=> b!3223243 (= lt!1093356 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!174 thiss!18206 rules!2135 (h!41709 tokens!494) (rule!7708 (h!41709 tokens!494)) lt!1093366 (rule!7708 separatorToken!241)))))

(assert (=> b!3223243 (not (contains!6509 (usedCharacters!566 (regex!5250 (rule!7708 (h!41709 tokens!494)))) lt!1093333))))

(declare-fun lt!1093347 () Unit!50886)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!174 (LexerInterface!4839 List!36412 List!36412 Rule!10300 Rule!10300 C!20204) Unit!50886)

(assert (=> b!3223243 (= lt!1093347 (lemmaNonSepRuleNotContainsCharContainedInASepRule!174 thiss!18206 rules!2135 rules!2135 (rule!7708 (h!41709 tokens!494)) (rule!7708 separatorToken!241) lt!1093333))))

(declare-fun lt!1093343 () Unit!50886)

(assert (=> b!3223243 (= lt!1093343 (forallContained!1221 tokens!494 lambda!117971 (h!41709 (t!240646 tokens!494))))))

(declare-fun lt!1093339 () Bool)

(assert (=> b!3223243 (= lt!1093376 (not lt!1093339))))

(assert (=> b!3223243 (= lt!1093376 (rulesProduceIndividualToken!2331 thiss!18206 rules!2135 (h!41709 (t!240646 tokens!494))))))

(assert (=> b!3223243 (= lt!1093339 e!2010103)))

(declare-fun res!1312679 () Bool)

(assert (=> b!3223243 (=> res!1312679 e!2010103)))

(declare-fun size!27363 (BalanceConc!21366) Int)

(assert (=> b!3223243 (= res!1312679 (not (= (size!27363 (_1!20996 lt!1093358)) 1)))))

(declare-fun lt!1093360 () BalanceConc!21364)

(assert (=> b!3223243 (= lt!1093358 (lex!2169 thiss!18206 rules!2135 lt!1093360))))

(declare-fun lt!1093348 () BalanceConc!21366)

(assert (=> b!3223243 (= lt!1093360 (printTailRec!1336 thiss!18206 lt!1093348 0 (BalanceConc!21365 Empty!10875)))))

(assert (=> b!3223243 (= lt!1093360 (print!1904 thiss!18206 lt!1093348))))

(assert (=> b!3223243 (= lt!1093348 (singletonSeq!2346 (h!41709 (t!240646 tokens!494))))))

(assert (=> b!3223243 e!2010099))

(declare-fun res!1312692 () Bool)

(assert (=> b!3223243 (=> (not res!1312692) (not e!2010099))))

(assert (=> b!3223243 (= res!1312692 (= (size!27363 (_1!20996 lt!1093372)) 1))))

(declare-fun lt!1093349 () BalanceConc!21364)

(assert (=> b!3223243 (= lt!1093372 (lex!2169 thiss!18206 rules!2135 lt!1093349))))

(declare-fun lt!1093338 () BalanceConc!21366)

(assert (=> b!3223243 (= lt!1093349 (printTailRec!1336 thiss!18206 lt!1093338 0 (BalanceConc!21365 Empty!10875)))))

(assert (=> b!3223243 (= lt!1093349 (print!1904 thiss!18206 lt!1093338))))

(assert (=> b!3223243 (= lt!1093338 (singletonSeq!2346 separatorToken!241))))

(declare-fun lt!1093350 () Unit!50886)

(assert (=> b!3223243 (= lt!1093350 e!2010093)))

(declare-fun c!541811 () Bool)

(assert (=> b!3223243 (= c!541811 (not (contains!6509 lt!1093379 lt!1093333)))))

(assert (=> b!3223243 (= lt!1093333 (head!7075 lt!1093364))))

(assert (=> b!3223243 (= lt!1093379 (usedCharacters!566 (regex!5250 (rule!7708 separatorToken!241))))))

(assert (=> b!3223243 e!2010113))

(declare-fun res!1312703 () Bool)

(assert (=> b!3223243 (=> (not res!1312703) (not e!2010113))))

(assert (=> b!3223243 (= res!1312703 (isDefined!5588 lt!1093374))))

(assert (=> b!3223243 (= lt!1093374 (getRuleFromTag!955 thiss!18206 rules!2135 (tag!5782 (rule!7708 separatorToken!241))))))

(declare-fun lt!1093344 () Unit!50886)

(assert (=> b!3223243 (= lt!1093344 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!955 thiss!18206 rules!2135 lt!1093364 separatorToken!241))))

(declare-fun lt!1093371 () BalanceConc!21364)

(assert (=> b!3223243 (= (maxPrefixOneRule!1618 thiss!18206 (rule!7708 (h!41709 tokens!494)) lt!1093355) (Some!7205 (tuple2!35729 (Token!9867 (apply!8268 (transformation!5250 (rule!7708 (h!41709 tokens!494))) lt!1093371) (rule!7708 (h!41709 tokens!494)) (size!27362 lt!1093355) lt!1093355) Nil!36287)))))

(declare-fun lt!1093363 () Unit!50886)

(assert (=> b!3223243 (= lt!1093363 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!731 thiss!18206 rules!2135 lt!1093355 lt!1093355 Nil!36287 (rule!7708 (h!41709 tokens!494))))))

(assert (=> b!3223243 e!2010100))

(declare-fun res!1312685 () Bool)

(assert (=> b!3223243 (=> (not res!1312685) (not e!2010100))))

(assert (=> b!3223243 (= res!1312685 (isDefined!5588 lt!1093341))))

(assert (=> b!3223243 (= lt!1093341 (getRuleFromTag!955 thiss!18206 rules!2135 (tag!5782 (rule!7708 (h!41709 tokens!494)))))))

(declare-fun lt!1093345 () Unit!50886)

(assert (=> b!3223243 (= lt!1093345 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!955 thiss!18206 rules!2135 lt!1093355 (h!41709 tokens!494)))))

(declare-fun lt!1093369 () Unit!50886)

(assert (=> b!3223243 (= lt!1093369 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!878 thiss!18206 rules!2135 tokens!494 (h!41709 tokens!494)))))

(declare-fun b!3223244 () Bool)

(declare-fun res!1312682 () Bool)

(assert (=> b!3223244 (=> (not res!1312682) (not e!2010098))))

(assert (=> b!3223244 (= res!1312682 (and (not ((_ is Nil!36289) tokens!494)) (not ((_ is Nil!36289) (t!240646 tokens!494)))))))

(assert (=> b!3223245 (= e!2010114 (and tp!1015357 tp!1015358))))

(declare-fun b!3223246 () Bool)

(assert (=> b!3223246 (= e!2010110 e!2010112)))

(declare-fun res!1312684 () Bool)

(assert (=> b!3223246 (=> res!1312684 e!2010112)))

(assert (=> b!3223246 (= res!1312684 (not (= lt!1093351 lt!1093357)))))

(assert (=> b!3223246 (= lt!1093346 lt!1093357)))

(assert (=> b!3223246 (= lt!1093357 (++!8724 lt!1093355 lt!1093366))))

(declare-fun lt!1093362 () Unit!50886)

(declare-fun lemmaConcatAssociativity!1778 (List!36411 List!36411 List!36411) Unit!50886)

(assert (=> b!3223246 (= lt!1093362 (lemmaConcatAssociativity!1778 lt!1093355 lt!1093364 lt!1093328))))

(declare-fun tp!1015364 () Bool)

(declare-fun b!3223247 () Bool)

(assert (=> b!3223247 (= e!2010096 (and (inv!21 (value!170085 separatorToken!241)) e!2010117 tp!1015364))))

(declare-fun b!3223248 () Bool)

(declare-fun e!2010119 () Bool)

(assert (=> b!3223248 (= e!2010119 false)))

(declare-fun b!3223249 () Bool)

(assert (=> b!3223249 (= e!2010092 e!2010118)))

(declare-fun res!1312690 () Bool)

(assert (=> b!3223249 (=> (not res!1312690) (not e!2010118))))

(assert (=> b!3223249 (= res!1312690 (matchR!4643 (regex!5250 lt!1093359) lt!1093377))))

(assert (=> b!3223249 (= lt!1093359 (get!11566 lt!1093361))))

(declare-fun b!3223250 () Bool)

(assert (=> b!3223250 (= e!2010122 e!2010124)))

(declare-fun res!1312695 () Bool)

(assert (=> b!3223250 (=> res!1312695 e!2010124)))

(declare-fun isEmpty!20378 (BalanceConc!21366) Bool)

(assert (=> b!3223250 (= res!1312695 (isEmpty!20378 (_1!20996 (lex!2169 thiss!18206 rules!2135 lt!1093371))))))

(assert (=> b!3223250 (= lt!1093371 (seqFromList!3572 lt!1093355))))

(declare-fun b!3223251 () Bool)

(declare-fun Unit!50891 () Unit!50886)

(assert (=> b!3223251 (= e!2010109 Unit!50891)))

(declare-fun lt!1093335 () Unit!50886)

(assert (=> b!3223251 (= lt!1093335 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!414 (regex!5250 (rule!7708 (h!41709 (t!240646 tokens!494)))) lt!1093377 lt!1093352))))

(declare-fun res!1312693 () Bool)

(assert (=> b!3223251 (= res!1312693 (not (matchR!4643 (regex!5250 (rule!7708 (h!41709 (t!240646 tokens!494)))) lt!1093377)))))

(assert (=> b!3223251 (=> (not res!1312693) (not e!2010119))))

(assert (=> b!3223251 e!2010119))

(declare-fun b!3223252 () Bool)

(assert (=> b!3223252 (= e!2010107 false)))

(declare-fun b!3223253 () Bool)

(declare-fun res!1312705 () Bool)

(assert (=> b!3223253 (=> (not res!1312705) (not e!2010094))))

(declare-fun rulesInvariant!4236 (LexerInterface!4839 List!36412) Bool)

(assert (=> b!3223253 (= res!1312705 (rulesInvariant!4236 thiss!18206 rules!2135))))

(declare-fun b!3223254 () Bool)

(declare-fun res!1312696 () Bool)

(assert (=> b!3223254 (=> (not res!1312696) (not e!2010099))))

(assert (=> b!3223254 (= res!1312696 (= (apply!8267 (_1!20996 lt!1093372) 0) separatorToken!241))))

(declare-fun b!3223255 () Bool)

(assert (=> b!3223255 (= e!2010103 (not (isEmpty!20377 (_2!20996 lt!1093358))))))

(declare-fun b!3223256 () Bool)

(declare-fun res!1312701 () Bool)

(assert (=> b!3223256 (=> (not res!1312701) (not e!2010094))))

(declare-fun isEmpty!20379 (List!36412) Bool)

(assert (=> b!3223256 (= res!1312701 (not (isEmpty!20379 rules!2135)))))

(declare-fun b!3223257 () Bool)

(declare-fun res!1312686 () Bool)

(assert (=> b!3223257 (=> res!1312686 e!2010089)))

(assert (=> b!3223257 (= res!1312686 (not (= (filter!518 (_1!20997 (lexList!1323 thiss!18206 rules!2135 lt!1093351)) lambda!117970) tokens!494)))))

(assert (= (and start!302646 res!1312710) b!3223256))

(assert (= (and b!3223256 res!1312701) b!3223253))

(assert (= (and b!3223253 res!1312705) b!3223240))

(assert (= (and b!3223240 res!1312699) b!3223242))

(assert (= (and b!3223242 res!1312700) b!3223232))

(assert (= (and b!3223232 res!1312681) b!3223233))

(assert (= (and b!3223233 res!1312694) b!3223230))

(assert (= (and b!3223230 res!1312704) b!3223244))

(assert (= (and b!3223244 res!1312682) b!3223234))

(assert (= (and b!3223234 (not res!1312708)) b!3223229))

(assert (= (and b!3223229 (not res!1312683)) b!3223227))

(assert (= (and b!3223227 (not res!1312687)) b!3223250))

(assert (= (and b!3223250 (not res!1312695)) b!3223216))

(assert (= (and b!3223216 (not res!1312698)) b!3223231))

(assert (= (and b!3223231 (not res!1312691)) b!3223225))

(assert (= (and b!3223225 (not res!1312688)) b!3223246))

(assert (= (and b!3223246 (not res!1312684)) b!3223243))

(assert (= (and b!3223243 res!1312685) b!3223224))

(assert (= (and b!3223224 res!1312709) b!3223235))

(assert (= (and b!3223243 res!1312703) b!3223219))

(assert (= (and b!3223219 res!1312680) b!3223222))

(assert (= (and b!3223243 c!541811) b!3223237))

(assert (= (and b!3223243 (not c!541811)) b!3223213))

(assert (= (and b!3223237 res!1312697) b!3223252))

(assert (= (and b!3223243 res!1312692) b!3223254))

(assert (= (and b!3223254 res!1312696) b!3223212))

(assert (= (and b!3223243 (not res!1312679)) b!3223217))

(assert (= (and b!3223217 (not res!1312702)) b!3223255))

(assert (= (and b!3223243 res!1312689) b!3223249))

(assert (= (and b!3223249 res!1312690) b!3223241))

(assert (= (and b!3223243 c!541810) b!3223251))

(assert (= (and b!3223243 (not c!541810)) b!3223218))

(assert (= (and b!3223251 res!1312693) b!3223248))

(assert (= (and b!3223243 (not res!1312707)) b!3223215))

(assert (= (and b!3223215 (not res!1312706)) b!3223257))

(assert (= (and b!3223257 (not res!1312686)) b!3223220))

(assert (= b!3223236 b!3223245))

(assert (= b!3223223 b!3223236))

(assert (= (and start!302646 ((_ is Cons!36288) rules!2135)) b!3223223))

(assert (= b!3223221 b!3223239))

(assert (= b!3223247 b!3223221))

(assert (= start!302646 b!3223247))

(assert (= b!3223226 b!3223214))

(assert (= b!3223238 b!3223226))

(assert (= b!3223228 b!3223238))

(assert (= (and start!302646 ((_ is Cons!36289) tokens!494)) b!3223228))

(declare-fun m!3501011 () Bool)

(assert (=> b!3223226 m!3501011))

(declare-fun m!3501013 () Bool)

(assert (=> b!3223226 m!3501013))

(declare-fun m!3501015 () Bool)

(assert (=> b!3223221 m!3501015))

(declare-fun m!3501017 () Bool)

(assert (=> b!3223221 m!3501017))

(declare-fun m!3501019 () Bool)

(assert (=> b!3223217 m!3501019))

(declare-fun m!3501021 () Bool)

(assert (=> b!3223234 m!3501021))

(declare-fun m!3501023 () Bool)

(assert (=> b!3223234 m!3501023))

(declare-fun m!3501025 () Bool)

(assert (=> b!3223234 m!3501025))

(declare-fun m!3501027 () Bool)

(assert (=> b!3223234 m!3501027))

(declare-fun m!3501029 () Bool)

(assert (=> b!3223234 m!3501029))

(declare-fun m!3501031 () Bool)

(assert (=> b!3223243 m!3501031))

(declare-fun m!3501033 () Bool)

(assert (=> b!3223243 m!3501033))

(declare-fun m!3501035 () Bool)

(assert (=> b!3223243 m!3501035))

(declare-fun m!3501037 () Bool)

(assert (=> b!3223243 m!3501037))

(declare-fun m!3501039 () Bool)

(assert (=> b!3223243 m!3501039))

(declare-fun m!3501041 () Bool)

(assert (=> b!3223243 m!3501041))

(declare-fun m!3501043 () Bool)

(assert (=> b!3223243 m!3501043))

(declare-fun m!3501045 () Bool)

(assert (=> b!3223243 m!3501045))

(declare-fun m!3501047 () Bool)

(assert (=> b!3223243 m!3501047))

(declare-fun m!3501049 () Bool)

(assert (=> b!3223243 m!3501049))

(declare-fun m!3501051 () Bool)

(assert (=> b!3223243 m!3501051))

(declare-fun m!3501053 () Bool)

(assert (=> b!3223243 m!3501053))

(declare-fun m!3501055 () Bool)

(assert (=> b!3223243 m!3501055))

(declare-fun m!3501057 () Bool)

(assert (=> b!3223243 m!3501057))

(declare-fun m!3501059 () Bool)

(assert (=> b!3223243 m!3501059))

(declare-fun m!3501061 () Bool)

(assert (=> b!3223243 m!3501061))

(declare-fun m!3501063 () Bool)

(assert (=> b!3223243 m!3501063))

(declare-fun m!3501065 () Bool)

(assert (=> b!3223243 m!3501065))

(declare-fun m!3501067 () Bool)

(assert (=> b!3223243 m!3501067))

(declare-fun m!3501069 () Bool)

(assert (=> b!3223243 m!3501069))

(assert (=> b!3223243 m!3501035))

(declare-fun m!3501071 () Bool)

(assert (=> b!3223243 m!3501071))

(declare-fun m!3501073 () Bool)

(assert (=> b!3223243 m!3501073))

(declare-fun m!3501075 () Bool)

(assert (=> b!3223243 m!3501075))

(declare-fun m!3501077 () Bool)

(assert (=> b!3223243 m!3501077))

(declare-fun m!3501079 () Bool)

(assert (=> b!3223243 m!3501079))

(declare-fun m!3501081 () Bool)

(assert (=> b!3223243 m!3501081))

(declare-fun m!3501083 () Bool)

(assert (=> b!3223243 m!3501083))

(declare-fun m!3501085 () Bool)

(assert (=> b!3223243 m!3501085))

(declare-fun m!3501087 () Bool)

(assert (=> b!3223243 m!3501087))

(assert (=> b!3223243 m!3501049))

(declare-fun m!3501089 () Bool)

(assert (=> b!3223243 m!3501089))

(declare-fun m!3501091 () Bool)

(assert (=> b!3223243 m!3501091))

(declare-fun m!3501093 () Bool)

(assert (=> b!3223243 m!3501093))

(declare-fun m!3501095 () Bool)

(assert (=> b!3223243 m!3501095))

(declare-fun m!3501097 () Bool)

(assert (=> b!3223243 m!3501097))

(assert (=> b!3223243 m!3501067))

(assert (=> b!3223243 m!3501081))

(declare-fun m!3501099 () Bool)

(assert (=> b!3223243 m!3501099))

(declare-fun m!3501101 () Bool)

(assert (=> b!3223243 m!3501101))

(declare-fun m!3501103 () Bool)

(assert (=> b!3223243 m!3501103))

(declare-fun m!3501105 () Bool)

(assert (=> b!3223243 m!3501105))

(declare-fun m!3501107 () Bool)

(assert (=> b!3223243 m!3501107))

(declare-fun m!3501109 () Bool)

(assert (=> b!3223243 m!3501109))

(declare-fun m!3501111 () Bool)

(assert (=> b!3223243 m!3501111))

(declare-fun m!3501113 () Bool)

(assert (=> b!3223243 m!3501113))

(declare-fun m!3501115 () Bool)

(assert (=> b!3223243 m!3501115))

(declare-fun m!3501117 () Bool)

(assert (=> b!3223243 m!3501117))

(declare-fun m!3501119 () Bool)

(assert (=> b!3223243 m!3501119))

(declare-fun m!3501121 () Bool)

(assert (=> b!3223243 m!3501121))

(declare-fun m!3501123 () Bool)

(assert (=> b!3223243 m!3501123))

(declare-fun m!3501125 () Bool)

(assert (=> b!3223243 m!3501125))

(declare-fun m!3501127 () Bool)

(assert (=> b!3223243 m!3501127))

(assert (=> b!3223243 m!3501115))

(declare-fun m!3501129 () Bool)

(assert (=> b!3223243 m!3501129))

(declare-fun m!3501131 () Bool)

(assert (=> b!3223243 m!3501131))

(declare-fun m!3501133 () Bool)

(assert (=> b!3223243 m!3501133))

(declare-fun m!3501135 () Bool)

(assert (=> b!3223243 m!3501135))

(assert (=> b!3223243 m!3501133))

(declare-fun m!3501137 () Bool)

(assert (=> b!3223250 m!3501137))

(declare-fun m!3501139 () Bool)

(assert (=> b!3223250 m!3501139))

(declare-fun m!3501141 () Bool)

(assert (=> b!3223250 m!3501141))

(declare-fun m!3501143 () Bool)

(assert (=> b!3223238 m!3501143))

(declare-fun m!3501145 () Bool)

(assert (=> b!3223236 m!3501145))

(declare-fun m!3501147 () Bool)

(assert (=> b!3223236 m!3501147))

(declare-fun m!3501149 () Bool)

(assert (=> start!302646 m!3501149))

(declare-fun m!3501151 () Bool)

(assert (=> b!3223231 m!3501151))

(declare-fun m!3501153 () Bool)

(assert (=> b!3223231 m!3501153))

(declare-fun m!3501155 () Bool)

(assert (=> b!3223231 m!3501155))

(declare-fun m!3501157 () Bool)

(assert (=> b!3223231 m!3501157))

(assert (=> b!3223231 m!3501151))

(declare-fun m!3501159 () Bool)

(assert (=> b!3223231 m!3501159))

(declare-fun m!3501161 () Bool)

(assert (=> b!3223231 m!3501161))

(declare-fun m!3501163 () Bool)

(assert (=> b!3223231 m!3501163))

(declare-fun m!3501165 () Bool)

(assert (=> b!3223231 m!3501165))

(declare-fun m!3501167 () Bool)

(assert (=> b!3223231 m!3501167))

(assert (=> b!3223231 m!3501163))

(assert (=> b!3223231 m!3501161))

(declare-fun m!3501169 () Bool)

(assert (=> b!3223231 m!3501169))

(assert (=> b!3223231 m!3501165))

(declare-fun m!3501171 () Bool)

(assert (=> b!3223225 m!3501171))

(assert (=> b!3223225 m!3501171))

(declare-fun m!3501173 () Bool)

(assert (=> b!3223225 m!3501173))

(declare-fun m!3501175 () Bool)

(assert (=> b!3223230 m!3501175))

(declare-fun m!3501177 () Bool)

(assert (=> b!3223224 m!3501177))

(declare-fun m!3501179 () Bool)

(assert (=> b!3223224 m!3501179))

(declare-fun m!3501181 () Bool)

(assert (=> b!3223233 m!3501181))

(declare-fun m!3501183 () Bool)

(assert (=> b!3223237 m!3501183))

(declare-fun m!3501185 () Bool)

(assert (=> b!3223237 m!3501185))

(declare-fun m!3501187 () Bool)

(assert (=> b!3223215 m!3501187))

(declare-fun m!3501189 () Bool)

(assert (=> b!3223215 m!3501189))

(declare-fun m!3501191 () Bool)

(assert (=> b!3223219 m!3501191))

(declare-fun m!3501193 () Bool)

(assert (=> b!3223219 m!3501193))

(declare-fun m!3501195 () Bool)

(assert (=> b!3223212 m!3501195))

(declare-fun m!3501197 () Bool)

(assert (=> b!3223254 m!3501197))

(declare-fun m!3501199 () Bool)

(assert (=> b!3223255 m!3501199))

(declare-fun m!3501201 () Bool)

(assert (=> b!3223251 m!3501201))

(declare-fun m!3501203 () Bool)

(assert (=> b!3223251 m!3501203))

(declare-fun m!3501205 () Bool)

(assert (=> b!3223249 m!3501205))

(declare-fun m!3501207 () Bool)

(assert (=> b!3223249 m!3501207))

(declare-fun m!3501209 () Bool)

(assert (=> b!3223220 m!3501209))

(declare-fun m!3501211 () Bool)

(assert (=> b!3223229 m!3501211))

(assert (=> b!3223229 m!3501211))

(declare-fun m!3501213 () Bool)

(assert (=> b!3223229 m!3501213))

(declare-fun m!3501215 () Bool)

(assert (=> b!3223253 m!3501215))

(declare-fun m!3501217 () Bool)

(assert (=> b!3223216 m!3501217))

(declare-fun m!3501219 () Bool)

(assert (=> b!3223216 m!3501219))

(declare-fun m!3501221 () Bool)

(assert (=> b!3223228 m!3501221))

(declare-fun m!3501223 () Bool)

(assert (=> b!3223256 m!3501223))

(declare-fun m!3501225 () Bool)

(assert (=> b!3223227 m!3501225))

(declare-fun m!3501227 () Bool)

(assert (=> b!3223240 m!3501227))

(declare-fun m!3501229 () Bool)

(assert (=> b!3223240 m!3501229))

(declare-fun m!3501231 () Bool)

(assert (=> b!3223247 m!3501231))

(declare-fun m!3501233 () Bool)

(assert (=> b!3223242 m!3501233))

(declare-fun m!3501235 () Bool)

(assert (=> b!3223257 m!3501235))

(declare-fun m!3501237 () Bool)

(assert (=> b!3223257 m!3501237))

(declare-fun m!3501239 () Bool)

(assert (=> b!3223246 m!3501239))

(declare-fun m!3501241 () Bool)

(assert (=> b!3223246 m!3501241))

(check-sat (not b!3223231) (not b!3223256) (not b!3223224) (not b!3223226) (not b!3223234) (not b!3223212) b_and!215513 (not b!3223237) (not b!3223254) (not b!3223227) (not b!3223230) (not b!3223225) (not b!3223242) (not b!3223238) (not b!3223253) (not b!3223250) (not b!3223246) (not b_next!86521) b_and!215515 (not b!3223223) (not b!3223255) (not b_next!86513) (not b!3223221) (not b!3223216) (not b!3223249) (not b!3223219) (not b_next!86515) (not b!3223229) (not b_next!86519) b_and!215521 (not b!3223228) (not b!3223215) (not b!3223233) b_and!215511 (not b!3223251) (not b_next!86523) b_and!215519 (not b!3223236) (not b!3223257) (not b!3223240) (not b!3223217) b_and!215517 (not b!3223266) (not b!3223220) (not start!302646) (not b_next!86517) (not b!3223243) (not b!3223247))
(check-sat (not b_next!86513) (not b_next!86515) b_and!215511 b_and!215513 b_and!215517 (not b_next!86517) (not b_next!86521) b_and!215515 (not b_next!86519) b_and!215521 (not b_next!86523) b_and!215519)
