; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25978 () Bool)

(assert start!25978)

(declare-fun b!244258 () Bool)

(declare-fun b_free!8969 () Bool)

(declare-fun b_next!8969 () Bool)

(assert (=> b!244258 (= b_free!8969 (not b_next!8969))))

(declare-fun tp!95728 () Bool)

(declare-fun b_and!18341 () Bool)

(assert (=> b!244258 (= tp!95728 b_and!18341)))

(declare-fun b_free!8971 () Bool)

(declare-fun b_next!8971 () Bool)

(assert (=> b!244258 (= b_free!8971 (not b_next!8971))))

(declare-fun tp!95735 () Bool)

(declare-fun b_and!18343 () Bool)

(assert (=> b!244258 (= tp!95735 b_and!18343)))

(declare-fun b!244272 () Bool)

(declare-fun b_free!8973 () Bool)

(declare-fun b_next!8973 () Bool)

(assert (=> b!244272 (= b_free!8973 (not b_next!8973))))

(declare-fun tp!95729 () Bool)

(declare-fun b_and!18345 () Bool)

(assert (=> b!244272 (= tp!95729 b_and!18345)))

(declare-fun b_free!8975 () Bool)

(declare-fun b_next!8975 () Bool)

(assert (=> b!244272 (= b_free!8975 (not b_next!8975))))

(declare-fun tp!95738 () Bool)

(declare-fun b_and!18347 () Bool)

(assert (=> b!244272 (= tp!95738 b_and!18347)))

(declare-fun b!244260 () Bool)

(declare-fun b_free!8977 () Bool)

(declare-fun b_next!8977 () Bool)

(assert (=> b!244260 (= b_free!8977 (not b_next!8977))))

(declare-fun tp!95733 () Bool)

(declare-fun b_and!18349 () Bool)

(assert (=> b!244260 (= tp!95733 b_and!18349)))

(declare-fun b_free!8979 () Bool)

(declare-fun b_next!8979 () Bool)

(assert (=> b!244260 (= b_free!8979 (not b_next!8979))))

(declare-fun tp!95727 () Bool)

(declare-fun b_and!18351 () Bool)

(assert (=> b!244260 (= tp!95727 b_and!18351)))

(declare-fun bs!26318 () Bool)

(declare-fun b!244259 () Bool)

(declare-fun b!244261 () Bool)

(assert (= bs!26318 (and b!244259 b!244261)))

(declare-fun lambda!7956 () Int)

(declare-fun lambda!7955 () Int)

(assert (=> bs!26318 (not (= lambda!7956 lambda!7955))))

(declare-fun b!244290 () Bool)

(declare-fun e!151246 () Bool)

(assert (=> b!244290 (= e!151246 true)))

(declare-fun b!244289 () Bool)

(declare-fun e!151245 () Bool)

(assert (=> b!244289 (= e!151245 e!151246)))

(declare-fun b!244288 () Bool)

(declare-fun e!151244 () Bool)

(assert (=> b!244288 (= e!151244 e!151245)))

(assert (=> b!244259 e!151244))

(assert (= b!244289 b!244290))

(assert (= b!244288 b!244289))

(declare-datatypes ((List!3577 0))(
  ( (Nil!3567) (Cons!3567 (h!8964 (_ BitVec 16)) (t!35037 List!3577)) )
))
(declare-datatypes ((TokenValue!695 0))(
  ( (FloatLiteralValue!1390 (text!5310 List!3577)) (TokenValueExt!694 (__x!2877 Int)) (Broken!3475 (value!23470 List!3577)) (Object!704) (End!695) (Def!695) (Underscore!695) (Match!695) (Else!695) (Error!695) (Case!695) (If!695) (Extends!695) (Abstract!695) (Class!695) (Val!695) (DelimiterValue!1390 (del!755 List!3577)) (KeywordValue!701 (value!23471 List!3577)) (CommentValue!1390 (value!23472 List!3577)) (WhitespaceValue!1390 (value!23473 List!3577)) (IndentationValue!695 (value!23474 List!3577)) (String!4554) (Int32!695) (Broken!3476 (value!23475 List!3577)) (Boolean!696) (Unit!4345) (OperatorValue!698 (op!755 List!3577)) (IdentifierValue!1390 (value!23476 List!3577)) (IdentifierValue!1391 (value!23477 List!3577)) (WhitespaceValue!1391 (value!23478 List!3577)) (True!1390) (False!1390) (Broken!3477 (value!23479 List!3577)) (Broken!3478 (value!23480 List!3577)) (True!1391) (RightBrace!695) (RightBracket!695) (Colon!695) (Null!695) (Comma!695) (LeftBracket!695) (False!1391) (LeftBrace!695) (ImaginaryLiteralValue!695 (text!5311 List!3577)) (StringLiteralValue!2085 (value!23481 List!3577)) (EOFValue!695 (value!23482 List!3577)) (IdentValue!695 (value!23483 List!3577)) (DelimiterValue!1391 (value!23484 List!3577)) (DedentValue!695 (value!23485 List!3577)) (NewLineValue!695 (value!23486 List!3577)) (IntegerValue!2085 (value!23487 (_ BitVec 32)) (text!5312 List!3577)) (IntegerValue!2086 (value!23488 Int) (text!5313 List!3577)) (Times!695) (Or!695) (Equal!695) (Minus!695) (Broken!3479 (value!23489 List!3577)) (And!695) (Div!695) (LessEqual!695) (Mod!695) (Concat!1592) (Not!695) (Plus!695) (SpaceValue!695 (value!23490 List!3577)) (IntegerValue!2087 (value!23491 Int) (text!5314 List!3577)) (StringLiteralValue!2086 (text!5315 List!3577)) (FloatLiteralValue!1391 (text!5316 List!3577)) (BytesLiteralValue!695 (value!23492 List!3577)) (CommentValue!1391 (value!23493 List!3577)) (StringLiteralValue!2087 (value!23494 List!3577)) (ErrorTokenValue!695 (msg!756 List!3577)) )
))
(declare-datatypes ((C!2716 0))(
  ( (C!2717 (val!1244 Int)) )
))
(declare-datatypes ((List!3578 0))(
  ( (Nil!3568) (Cons!3568 (h!8965 C!2716) (t!35038 List!3578)) )
))
(declare-datatypes ((IArray!2337 0))(
  ( (IArray!2338 (innerList!1226 List!3578)) )
))
(declare-datatypes ((Conc!1168 0))(
  ( (Node!1168 (left!2907 Conc!1168) (right!3237 Conc!1168) (csize!2566 Int) (cheight!1379 Int)) (Leaf!1844 (xs!3763 IArray!2337) (csize!2567 Int)) (Empty!1168) )
))
(declare-datatypes ((BalanceConc!2344 0))(
  ( (BalanceConc!2345 (c!46860 Conc!1168)) )
))
(declare-datatypes ((String!4555 0))(
  ( (String!4556 (value!23495 String)) )
))
(declare-datatypes ((TokenValueInjection!1162 0))(
  ( (TokenValueInjection!1163 (toValue!1376 Int) (toChars!1235 Int)) )
))
(declare-datatypes ((Regex!897 0))(
  ( (ElementMatch!897 (c!46861 C!2716)) (Concat!1593 (regOne!2306 Regex!897) (regTwo!2306 Regex!897)) (EmptyExpr!897) (Star!897 (reg!1226 Regex!897)) (EmptyLang!897) (Union!897 (regOne!2307 Regex!897) (regTwo!2307 Regex!897)) )
))
(declare-datatypes ((Rule!1146 0))(
  ( (Rule!1147 (regex!673 Regex!897) (tag!881 String!4555) (isSeparator!673 Bool) (transformation!673 TokenValueInjection!1162)) )
))
(declare-datatypes ((List!3579 0))(
  ( (Nil!3569) (Cons!3569 (h!8966 Rule!1146) (t!35039 List!3579)) )
))
(declare-fun rules!1920 () List!3579)

(get-info :version)

(assert (= (and b!244259 ((_ is Cons!3569) rules!1920)) b!244288))

(declare-fun order!2577 () Int)

(declare-fun order!2579 () Int)

(declare-fun dynLambda!1717 (Int Int) Int)

(declare-fun dynLambda!1718 (Int Int) Int)

(assert (=> b!244290 (< (dynLambda!1717 order!2577 (toValue!1376 (transformation!673 (h!8966 rules!1920)))) (dynLambda!1718 order!2579 lambda!7956))))

(declare-fun order!2581 () Int)

(declare-fun dynLambda!1719 (Int Int) Int)

(assert (=> b!244290 (< (dynLambda!1719 order!2581 (toChars!1235 (transformation!673 (h!8966 rules!1920)))) (dynLambda!1718 order!2579 lambda!7956))))

(assert (=> b!244259 true))

(declare-fun b!244247 () Bool)

(declare-fun res!112776 () Bool)

(declare-fun e!151223 () Bool)

(assert (=> b!244247 (=> res!112776 e!151223)))

(declare-datatypes ((Token!1090 0))(
  ( (Token!1091 (value!23496 TokenValue!695) (rule!1250 Rule!1146) (size!2855 Int) (originalCharacters!716 List!3578)) )
))
(declare-datatypes ((List!3580 0))(
  ( (Nil!3570) (Cons!3570 (h!8967 Token!1090) (t!35040 List!3580)) )
))
(declare-fun tokens!465 () List!3580)

(declare-fun forall!829 (List!3580 Int) Bool)

(assert (=> b!244247 (= res!112776 (not (forall!829 tokens!465 lambda!7955)))))

(declare-fun b!244248 () Bool)

(declare-fun e!151215 () Bool)

(declare-fun e!151214 () Bool)

(assert (=> b!244248 (= e!151215 e!151214)))

(declare-fun res!112793 () Bool)

(assert (=> b!244248 (=> (not res!112793) (not e!151214))))

(declare-datatypes ((IArray!2339 0))(
  ( (IArray!2340 (innerList!1227 List!3580)) )
))
(declare-datatypes ((Conc!1169 0))(
  ( (Node!1169 (left!2908 Conc!1169) (right!3238 Conc!1169) (csize!2568 Int) (cheight!1380 Int)) (Leaf!1845 (xs!3764 IArray!2339) (csize!2569 Int)) (Empty!1169) )
))
(declare-datatypes ((BalanceConc!2346 0))(
  ( (BalanceConc!2347 (c!46862 Conc!1169)) )
))
(declare-fun lt!98777 () BalanceConc!2346)

(declare-datatypes ((LexerInterface!559 0))(
  ( (LexerInterfaceExt!556 (__x!2878 Int)) (Lexer!557) )
))
(declare-fun thiss!17480 () LexerInterface!559)

(declare-fun rulesProduceEachTokenIndividually!351 (LexerInterface!559 List!3579 BalanceConc!2346) Bool)

(assert (=> b!244248 (= res!112793 (rulesProduceEachTokenIndividually!351 thiss!17480 rules!1920 lt!98777))))

(declare-fun seqFromList!723 (List!3580) BalanceConc!2346)

(assert (=> b!244248 (= lt!98777 (seqFromList!723 tokens!465))))

(declare-fun e!151224 () Bool)

(declare-fun separatorToken!170 () Token!1090)

(declare-fun e!151229 () Bool)

(declare-fun tp!95731 () Bool)

(declare-fun b!244249 () Bool)

(declare-fun inv!21 (TokenValue!695) Bool)

(assert (=> b!244249 (= e!151224 (and (inv!21 (value!23496 separatorToken!170)) e!151229 tp!95731))))

(declare-fun b!244250 () Bool)

(declare-fun res!112784 () Bool)

(assert (=> b!244250 (=> res!112784 e!151223)))

(declare-fun rulesProduceEachTokenIndividuallyList!197 (LexerInterface!559 List!3579 List!3580) Bool)

(assert (=> b!244250 (= res!112784 (not (rulesProduceEachTokenIndividuallyList!197 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!244251 () Bool)

(declare-fun e!151216 () Bool)

(declare-fun e!151218 () Bool)

(assert (=> b!244251 (= e!151216 (not e!151218))))

(declare-fun res!112792 () Bool)

(assert (=> b!244251 (=> res!112792 e!151218)))

(declare-fun lt!98789 () List!3578)

(declare-fun list!1405 (BalanceConc!2344) List!3578)

(declare-fun printWithSeparatorTokenWhenNeededRec!242 (LexerInterface!559 List!3579 BalanceConc!2346 Token!1090 Int) BalanceConc!2344)

(assert (=> b!244251 (= res!112792 (not (= lt!98789 (list!1405 (printWithSeparatorTokenWhenNeededRec!242 thiss!17480 rules!1920 (seqFromList!723 (t!35040 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!98782 () List!3578)

(declare-fun lt!98775 () List!3578)

(assert (=> b!244251 (= lt!98782 lt!98775)))

(declare-fun lt!98785 () List!3578)

(declare-fun lt!98773 () List!3578)

(declare-fun ++!910 (List!3578 List!3578) List!3578)

(assert (=> b!244251 (= lt!98775 (++!910 lt!98785 lt!98773))))

(declare-fun lt!98783 () List!3578)

(assert (=> b!244251 (= lt!98782 (++!910 (++!910 lt!98785 lt!98783) lt!98789))))

(declare-datatypes ((Unit!4346 0))(
  ( (Unit!4347) )
))
(declare-fun lt!98787 () Unit!4346)

(declare-fun lemmaConcatAssociativity!378 (List!3578 List!3578 List!3578) Unit!4346)

(assert (=> b!244251 (= lt!98787 (lemmaConcatAssociativity!378 lt!98785 lt!98783 lt!98789))))

(declare-fun charsOf!328 (Token!1090) BalanceConc!2344)

(assert (=> b!244251 (= lt!98785 (list!1405 (charsOf!328 (h!8967 tokens!465))))))

(assert (=> b!244251 (= lt!98773 (++!910 lt!98783 lt!98789))))

(declare-fun printWithSeparatorTokenWhenNeededList!252 (LexerInterface!559 List!3579 List!3580 Token!1090) List!3578)

(assert (=> b!244251 (= lt!98789 (printWithSeparatorTokenWhenNeededList!252 thiss!17480 rules!1920 (t!35040 tokens!465) separatorToken!170))))

(assert (=> b!244251 (= lt!98783 (list!1405 (charsOf!328 separatorToken!170)))))

(declare-fun b!244252 () Bool)

(declare-fun res!112779 () Bool)

(assert (=> b!244252 (=> (not res!112779) (not e!151214))))

(assert (=> b!244252 (= res!112779 ((_ is Cons!3570) tokens!465))))

(declare-fun res!112783 () Bool)

(assert (=> start!25978 (=> (not res!112783) (not e!151215))))

(assert (=> start!25978 (= res!112783 ((_ is Lexer!557) thiss!17480))))

(assert (=> start!25978 e!151215))

(assert (=> start!25978 true))

(declare-fun e!151233 () Bool)

(assert (=> start!25978 e!151233))

(declare-fun inv!4427 (Token!1090) Bool)

(assert (=> start!25978 (and (inv!4427 separatorToken!170) e!151224)))

(declare-fun e!151217 () Bool)

(assert (=> start!25978 e!151217))

(declare-fun b!244253 () Bool)

(declare-fun e!151232 () Bool)

(assert (=> b!244253 (= e!151218 e!151232)))

(declare-fun res!112782 () Bool)

(assert (=> b!244253 (=> res!112782 e!151232)))

(declare-fun e!151220 () Bool)

(assert (=> b!244253 (= res!112782 e!151220)))

(declare-fun res!112789 () Bool)

(assert (=> b!244253 (=> (not res!112789) (not e!151220))))

(declare-fun lt!98778 () Bool)

(assert (=> b!244253 (= res!112789 (not lt!98778))))

(declare-fun lt!98786 () List!3578)

(assert (=> b!244253 (= lt!98778 (= lt!98786 lt!98775))))

(declare-fun b!244254 () Bool)

(assert (=> b!244254 (= e!151223 (forall!829 tokens!465 lambda!7955))))

(declare-fun b!244255 () Bool)

(declare-fun res!112772 () Bool)

(assert (=> b!244255 (=> (not res!112772) (not e!151214))))

(assert (=> b!244255 (= res!112772 (isSeparator!673 (rule!1250 separatorToken!170)))))

(declare-fun b!244256 () Bool)

(declare-fun tp!95736 () Bool)

(declare-fun e!151222 () Bool)

(declare-fun e!151219 () Bool)

(assert (=> b!244256 (= e!151219 (and (inv!21 (value!23496 (h!8967 tokens!465))) e!151222 tp!95736))))

(declare-fun b!244257 () Bool)

(declare-fun res!112778 () Bool)

(assert (=> b!244257 (=> (not res!112778) (not e!151216))))

(declare-fun lt!98780 () List!3578)

(declare-fun seqFromList!724 (List!3578) BalanceConc!2344)

(assert (=> b!244257 (= res!112778 (= (list!1405 (seqFromList!724 lt!98786)) lt!98780))))

(declare-fun e!151234 () Bool)

(assert (=> b!244258 (= e!151234 (and tp!95728 tp!95735))))

(declare-fun e!151225 () Bool)

(declare-fun e!151228 () Bool)

(assert (=> b!244259 (= e!151225 e!151228)))

(declare-fun res!112786 () Bool)

(assert (=> b!244259 (=> res!112786 e!151228)))

(declare-datatypes ((tuple2!3946 0))(
  ( (tuple2!3947 (_1!2189 Token!1090) (_2!2189 BalanceConc!2344)) )
))
(declare-datatypes ((Option!708 0))(
  ( (None!707) (Some!707 (v!14468 tuple2!3946)) )
))
(declare-fun isDefined!559 (Option!708) Bool)

(declare-fun maxPrefixZipperSequence!252 (LexerInterface!559 List!3579 BalanceConc!2344) Option!708)

(assert (=> b!244259 (= res!112786 (not (isDefined!559 (maxPrefixZipperSequence!252 thiss!17480 rules!1920 (seqFromList!724 (originalCharacters!716 (h!8967 tokens!465)))))))))

(declare-fun lt!98774 () Unit!4346)

(declare-fun forallContained!240 (List!3580 Int Token!1090) Unit!4346)

(assert (=> b!244259 (= lt!98774 (forallContained!240 tokens!465 lambda!7956 (h!8967 tokens!465)))))

(assert (=> b!244259 (= lt!98785 (originalCharacters!716 (h!8967 tokens!465)))))

(declare-fun e!151231 () Bool)

(assert (=> b!244260 (= e!151231 (and tp!95733 tp!95727))))

(declare-fun res!112790 () Bool)

(assert (=> b!244261 (=> (not res!112790) (not e!151214))))

(assert (=> b!244261 (= res!112790 (forall!829 tokens!465 lambda!7955))))

(declare-fun b!244262 () Bool)

(declare-fun res!112777 () Bool)

(assert (=> b!244262 (=> (not res!112777) (not e!151215))))

(declare-fun isEmpty!2152 (List!3579) Bool)

(assert (=> b!244262 (= res!112777 (not (isEmpty!2152 rules!1920)))))

(declare-fun b!244263 () Bool)

(declare-fun res!112775 () Bool)

(assert (=> b!244263 (=> (not res!112775) (not e!151214))))

(declare-fun rulesProduceIndividualToken!308 (LexerInterface!559 List!3579 Token!1090) Bool)

(assert (=> b!244263 (= res!112775 (rulesProduceIndividualToken!308 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!244264 () Bool)

(declare-fun e!151230 () Bool)

(declare-fun matchR!235 (Regex!897 List!3578) Bool)

(assert (=> b!244264 (= e!151230 (matchR!235 (regex!673 (rule!1250 (h!8967 tokens!465))) lt!98785))))

(declare-fun b!244265 () Bool)

(declare-fun tp!95739 () Bool)

(declare-fun e!151226 () Bool)

(declare-fun inv!4424 (String!4555) Bool)

(declare-fun inv!4428 (TokenValueInjection!1162) Bool)

(assert (=> b!244265 (= e!151229 (and tp!95739 (inv!4424 (tag!881 (rule!1250 separatorToken!170))) (inv!4428 (transformation!673 (rule!1250 separatorToken!170))) e!151226))))

(declare-fun b!244266 () Bool)

(assert (=> b!244266 (= e!151220 (not (= lt!98786 (++!910 lt!98785 lt!98789))))))

(declare-fun b!244267 () Bool)

(assert (=> b!244267 (= e!151228 e!151223)))

(declare-fun res!112781 () Bool)

(assert (=> b!244267 (=> res!112781 e!151223)))

(assert (=> b!244267 (= res!112781 lt!98778)))

(assert (=> b!244267 e!151230))

(declare-fun res!112791 () Bool)

(assert (=> b!244267 (=> (not res!112791) (not e!151230))))

(declare-datatypes ((tuple2!3948 0))(
  ( (tuple2!3949 (_1!2190 Token!1090) (_2!2190 List!3578)) )
))
(declare-fun lt!98781 () tuple2!3948)

(assert (=> b!244267 (= res!112791 (= (_1!2190 lt!98781) (h!8967 tokens!465)))))

(declare-datatypes ((Option!709 0))(
  ( (None!708) (Some!708 (v!14469 tuple2!3948)) )
))
(declare-fun lt!98788 () Option!709)

(declare-fun get!1164 (Option!709) tuple2!3948)

(assert (=> b!244267 (= lt!98781 (get!1164 lt!98788))))

(declare-fun isDefined!560 (Option!709) Bool)

(assert (=> b!244267 (isDefined!560 lt!98788)))

(declare-fun maxPrefix!289 (LexerInterface!559 List!3579 List!3578) Option!709)

(assert (=> b!244267 (= lt!98788 (maxPrefix!289 thiss!17480 rules!1920 lt!98785))))

(declare-fun b!244268 () Bool)

(declare-fun res!112794 () Bool)

(assert (=> b!244268 (=> res!112794 e!151225)))

(declare-fun isEmpty!2153 (BalanceConc!2346) Bool)

(declare-datatypes ((tuple2!3950 0))(
  ( (tuple2!3951 (_1!2191 BalanceConc!2346) (_2!2191 BalanceConc!2344)) )
))
(declare-fun lex!359 (LexerInterface!559 List!3579 BalanceConc!2344) tuple2!3950)

(assert (=> b!244268 (= res!112794 (isEmpty!2153 (_1!2191 (lex!359 thiss!17480 rules!1920 (seqFromList!724 lt!98785)))))))

(declare-fun b!244269 () Bool)

(declare-fun res!112785 () Bool)

(assert (=> b!244269 (=> (not res!112785) (not e!151230))))

(declare-fun isEmpty!2154 (List!3578) Bool)

(assert (=> b!244269 (= res!112785 (isEmpty!2154 (_2!2190 lt!98781)))))

(declare-fun b!244270 () Bool)

(declare-fun tp!95732 () Bool)

(assert (=> b!244270 (= e!151222 (and tp!95732 (inv!4424 (tag!881 (rule!1250 (h!8967 tokens!465)))) (inv!4428 (transformation!673 (rule!1250 (h!8967 tokens!465)))) e!151234))))

(declare-fun b!244271 () Bool)

(declare-fun e!151237 () Bool)

(declare-fun tp!95734 () Bool)

(assert (=> b!244271 (= e!151233 (and e!151237 tp!95734))))

(assert (=> b!244272 (= e!151226 (and tp!95729 tp!95738))))

(declare-fun b!244273 () Bool)

(declare-fun res!112774 () Bool)

(assert (=> b!244273 (=> res!112774 e!151225)))

(assert (=> b!244273 (= res!112774 (not (rulesProduceIndividualToken!308 thiss!17480 rules!1920 (h!8967 tokens!465))))))

(declare-fun b!244274 () Bool)

(declare-fun res!112788 () Bool)

(assert (=> b!244274 (=> (not res!112788) (not e!151215))))

(declare-fun rulesInvariant!525 (LexerInterface!559 List!3579) Bool)

(assert (=> b!244274 (= res!112788 (rulesInvariant!525 thiss!17480 rules!1920))))

(declare-fun tp!95737 () Bool)

(declare-fun b!244275 () Bool)

(assert (=> b!244275 (= e!151217 (and (inv!4427 (h!8967 tokens!465)) e!151219 tp!95737))))

(declare-fun b!244276 () Bool)

(assert (=> b!244276 (= e!151214 e!151216)))

(declare-fun res!112780 () Bool)

(assert (=> b!244276 (=> (not res!112780) (not e!151216))))

(assert (=> b!244276 (= res!112780 (= lt!98786 lt!98780))))

(assert (=> b!244276 (= lt!98780 (list!1405 (printWithSeparatorTokenWhenNeededRec!242 thiss!17480 rules!1920 lt!98777 separatorToken!170 0)))))

(assert (=> b!244276 (= lt!98786 (printWithSeparatorTokenWhenNeededList!252 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!244277 () Bool)

(assert (=> b!244277 (= e!151232 e!151225)))

(declare-fun res!112787 () Bool)

(assert (=> b!244277 (=> res!112787 e!151225)))

(declare-fun lt!98790 () List!3578)

(declare-fun lt!98784 () List!3578)

(assert (=> b!244277 (= res!112787 (or (not (= lt!98790 lt!98784)) (not (= lt!98784 lt!98785)) (not (= lt!98790 lt!98785))))))

(declare-fun printList!243 (LexerInterface!559 List!3580) List!3578)

(assert (=> b!244277 (= lt!98784 (printList!243 thiss!17480 (Cons!3570 (h!8967 tokens!465) Nil!3570)))))

(declare-fun lt!98779 () BalanceConc!2344)

(assert (=> b!244277 (= lt!98790 (list!1405 lt!98779))))

(declare-fun lt!98776 () BalanceConc!2346)

(declare-fun printTailRec!253 (LexerInterface!559 BalanceConc!2346 Int BalanceConc!2344) BalanceConc!2344)

(assert (=> b!244277 (= lt!98779 (printTailRec!253 thiss!17480 lt!98776 0 (BalanceConc!2345 Empty!1168)))))

(declare-fun print!290 (LexerInterface!559 BalanceConc!2346) BalanceConc!2344)

(assert (=> b!244277 (= lt!98779 (print!290 thiss!17480 lt!98776))))

(declare-fun singletonSeq!225 (Token!1090) BalanceConc!2346)

(assert (=> b!244277 (= lt!98776 (singletonSeq!225 (h!8967 tokens!465)))))

(declare-fun tp!95730 () Bool)

(declare-fun b!244278 () Bool)

(assert (=> b!244278 (= e!151237 (and tp!95730 (inv!4424 (tag!881 (h!8966 rules!1920))) (inv!4428 (transformation!673 (h!8966 rules!1920))) e!151231))))

(declare-fun b!244279 () Bool)

(declare-fun res!112773 () Bool)

(assert (=> b!244279 (=> (not res!112773) (not e!151214))))

(declare-fun sepAndNonSepRulesDisjointChars!262 (List!3579 List!3579) Bool)

(assert (=> b!244279 (= res!112773 (sepAndNonSepRulesDisjointChars!262 rules!1920 rules!1920))))

(assert (= (and start!25978 res!112783) b!244262))

(assert (= (and b!244262 res!112777) b!244274))

(assert (= (and b!244274 res!112788) b!244248))

(assert (= (and b!244248 res!112793) b!244263))

(assert (= (and b!244263 res!112775) b!244255))

(assert (= (and b!244255 res!112772) b!244261))

(assert (= (and b!244261 res!112790) b!244279))

(assert (= (and b!244279 res!112773) b!244252))

(assert (= (and b!244252 res!112779) b!244276))

(assert (= (and b!244276 res!112780) b!244257))

(assert (= (and b!244257 res!112778) b!244251))

(assert (= (and b!244251 (not res!112792)) b!244253))

(assert (= (and b!244253 res!112789) b!244266))

(assert (= (and b!244253 (not res!112782)) b!244277))

(assert (= (and b!244277 (not res!112787)) b!244273))

(assert (= (and b!244273 (not res!112774)) b!244268))

(assert (= (and b!244268 (not res!112794)) b!244259))

(assert (= (and b!244259 (not res!112786)) b!244267))

(assert (= (and b!244267 res!112791) b!244269))

(assert (= (and b!244269 res!112785) b!244264))

(assert (= (and b!244267 (not res!112781)) b!244250))

(assert (= (and b!244250 (not res!112784)) b!244247))

(assert (= (and b!244247 (not res!112776)) b!244254))

(assert (= b!244278 b!244260))

(assert (= b!244271 b!244278))

(assert (= (and start!25978 ((_ is Cons!3569) rules!1920)) b!244271))

(assert (= b!244265 b!244272))

(assert (= b!244249 b!244265))

(assert (= start!25978 b!244249))

(assert (= b!244270 b!244258))

(assert (= b!244256 b!244270))

(assert (= b!244275 b!244256))

(assert (= (and start!25978 ((_ is Cons!3570) tokens!465)) b!244275))

(declare-fun m!298881 () Bool)

(assert (=> b!244273 m!298881))

(declare-fun m!298883 () Bool)

(assert (=> b!244250 m!298883))

(declare-fun m!298885 () Bool)

(assert (=> b!244267 m!298885))

(declare-fun m!298887 () Bool)

(assert (=> b!244267 m!298887))

(declare-fun m!298889 () Bool)

(assert (=> b!244267 m!298889))

(declare-fun m!298891 () Bool)

(assert (=> b!244257 m!298891))

(assert (=> b!244257 m!298891))

(declare-fun m!298893 () Bool)

(assert (=> b!244257 m!298893))

(declare-fun m!298895 () Bool)

(assert (=> b!244279 m!298895))

(declare-fun m!298897 () Bool)

(assert (=> b!244254 m!298897))

(assert (=> b!244247 m!298897))

(declare-fun m!298899 () Bool)

(assert (=> b!244277 m!298899))

(declare-fun m!298901 () Bool)

(assert (=> b!244277 m!298901))

(declare-fun m!298903 () Bool)

(assert (=> b!244277 m!298903))

(declare-fun m!298905 () Bool)

(assert (=> b!244277 m!298905))

(declare-fun m!298907 () Bool)

(assert (=> b!244277 m!298907))

(declare-fun m!298909 () Bool)

(assert (=> b!244262 m!298909))

(declare-fun m!298911 () Bool)

(assert (=> b!244256 m!298911))

(declare-fun m!298913 () Bool)

(assert (=> b!244268 m!298913))

(assert (=> b!244268 m!298913))

(declare-fun m!298915 () Bool)

(assert (=> b!244268 m!298915))

(declare-fun m!298917 () Bool)

(assert (=> b!244268 m!298917))

(declare-fun m!298919 () Bool)

(assert (=> b!244249 m!298919))

(declare-fun m!298921 () Bool)

(assert (=> b!244269 m!298921))

(declare-fun m!298923 () Bool)

(assert (=> b!244266 m!298923))

(declare-fun m!298925 () Bool)

(assert (=> b!244270 m!298925))

(declare-fun m!298927 () Bool)

(assert (=> b!244270 m!298927))

(declare-fun m!298929 () Bool)

(assert (=> start!25978 m!298929))

(declare-fun m!298931 () Bool)

(assert (=> b!244264 m!298931))

(declare-fun m!298933 () Bool)

(assert (=> b!244263 m!298933))

(declare-fun m!298935 () Bool)

(assert (=> b!244265 m!298935))

(declare-fun m!298937 () Bool)

(assert (=> b!244265 m!298937))

(declare-fun m!298939 () Bool)

(assert (=> b!244259 m!298939))

(assert (=> b!244259 m!298939))

(declare-fun m!298941 () Bool)

(assert (=> b!244259 m!298941))

(assert (=> b!244259 m!298941))

(declare-fun m!298943 () Bool)

(assert (=> b!244259 m!298943))

(declare-fun m!298945 () Bool)

(assert (=> b!244259 m!298945))

(declare-fun m!298947 () Bool)

(assert (=> b!244251 m!298947))

(declare-fun m!298949 () Bool)

(assert (=> b!244251 m!298949))

(declare-fun m!298951 () Bool)

(assert (=> b!244251 m!298951))

(declare-fun m!298953 () Bool)

(assert (=> b!244251 m!298953))

(declare-fun m!298955 () Bool)

(assert (=> b!244251 m!298955))

(assert (=> b!244251 m!298953))

(assert (=> b!244251 m!298947))

(declare-fun m!298957 () Bool)

(assert (=> b!244251 m!298957))

(declare-fun m!298959 () Bool)

(assert (=> b!244251 m!298959))

(declare-fun m!298961 () Bool)

(assert (=> b!244251 m!298961))

(declare-fun m!298963 () Bool)

(assert (=> b!244251 m!298963))

(assert (=> b!244251 m!298957))

(assert (=> b!244251 m!298961))

(declare-fun m!298965 () Bool)

(assert (=> b!244251 m!298965))

(assert (=> b!244251 m!298959))

(declare-fun m!298967 () Bool)

(assert (=> b!244251 m!298967))

(declare-fun m!298969 () Bool)

(assert (=> b!244251 m!298969))

(declare-fun m!298971 () Bool)

(assert (=> b!244251 m!298971))

(declare-fun m!298973 () Bool)

(assert (=> b!244275 m!298973))

(declare-fun m!298975 () Bool)

(assert (=> b!244274 m!298975))

(declare-fun m!298977 () Bool)

(assert (=> b!244276 m!298977))

(assert (=> b!244276 m!298977))

(declare-fun m!298979 () Bool)

(assert (=> b!244276 m!298979))

(declare-fun m!298981 () Bool)

(assert (=> b!244276 m!298981))

(declare-fun m!298983 () Bool)

(assert (=> b!244248 m!298983))

(declare-fun m!298985 () Bool)

(assert (=> b!244248 m!298985))

(assert (=> b!244261 m!298897))

(declare-fun m!298987 () Bool)

(assert (=> b!244278 m!298987))

(declare-fun m!298989 () Bool)

(assert (=> b!244278 m!298989))

(check-sat (not b!244262) b_and!18341 (not b!244266) b_and!18347 (not b!244256) (not b!244269) (not b!244254) (not b!244265) (not b!244264) (not b!244288) (not b_next!8979) (not b!244274) b_and!18351 (not b_next!8977) (not b!244248) (not b!244275) (not b!244250) (not b_next!8975) b_and!18349 (not b!244273) (not b!244277) (not b!244259) (not b!244257) (not b!244270) (not b!244267) (not b!244249) (not b!244268) (not start!25978) (not b!244278) (not b!244271) (not b_next!8969) (not b!244261) b_and!18345 (not b!244247) (not b!244251) (not b_next!8973) (not b!244263) b_and!18343 (not b_next!8971) (not b!244276) (not b!244279))
(check-sat b_and!18341 b_and!18347 (not b_next!8969) b_and!18345 (not b_next!8979) b_and!18351 (not b_next!8977) (not b_next!8975) b_and!18349 (not b_next!8973) b_and!18343 (not b_next!8971))
