; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23518 () Bool)

(assert start!23518)

(declare-fun b!219469 () Bool)

(declare-fun b_free!8281 () Bool)

(declare-fun b_next!8281 () Bool)

(assert (=> b!219469 (= b_free!8281 (not b_next!8281))))

(declare-fun tp!92401 () Bool)

(declare-fun b_and!16153 () Bool)

(assert (=> b!219469 (= tp!92401 b_and!16153)))

(declare-fun b_free!8283 () Bool)

(declare-fun b_next!8283 () Bool)

(assert (=> b!219469 (= b_free!8283 (not b_next!8283))))

(declare-fun tp!92410 () Bool)

(declare-fun b_and!16155 () Bool)

(assert (=> b!219469 (= tp!92410 b_and!16155)))

(declare-fun b!219457 () Bool)

(declare-fun b_free!8285 () Bool)

(declare-fun b_next!8285 () Bool)

(assert (=> b!219457 (= b_free!8285 (not b_next!8285))))

(declare-fun tp!92402 () Bool)

(declare-fun b_and!16157 () Bool)

(assert (=> b!219457 (= tp!92402 b_and!16157)))

(declare-fun b_free!8287 () Bool)

(declare-fun b_next!8287 () Bool)

(assert (=> b!219457 (= b_free!8287 (not b_next!8287))))

(declare-fun tp!92411 () Bool)

(declare-fun b_and!16159 () Bool)

(assert (=> b!219457 (= tp!92411 b_and!16159)))

(declare-fun b!219437 () Bool)

(declare-fun b_free!8289 () Bool)

(declare-fun b_next!8289 () Bool)

(assert (=> b!219437 (= b_free!8289 (not b_next!8289))))

(declare-fun tp!92404 () Bool)

(declare-fun b_and!16161 () Bool)

(assert (=> b!219437 (= tp!92404 b_and!16161)))

(declare-fun b_free!8291 () Bool)

(declare-fun b_next!8291 () Bool)

(assert (=> b!219437 (= b_free!8291 (not b_next!8291))))

(declare-fun tp!92413 () Bool)

(declare-fun b_and!16163 () Bool)

(assert (=> b!219437 (= tp!92413 b_and!16163)))

(declare-fun bs!23092 () Bool)

(declare-fun b!219458 () Bool)

(declare-fun b!219459 () Bool)

(assert (= bs!23092 (and b!219458 b!219459)))

(declare-fun lambda!6800 () Int)

(declare-fun lambda!6799 () Int)

(assert (=> bs!23092 (not (= lambda!6800 lambda!6799))))

(declare-fun b!219496 () Bool)

(declare-fun e!135383 () Bool)

(assert (=> b!219496 (= e!135383 true)))

(declare-fun b!219495 () Bool)

(declare-fun e!135382 () Bool)

(assert (=> b!219495 (= e!135382 e!135383)))

(declare-fun b!219494 () Bool)

(declare-fun e!135381 () Bool)

(assert (=> b!219494 (= e!135381 e!135382)))

(assert (=> b!219458 e!135381))

(assert (= b!219495 b!219496))

(assert (= b!219494 b!219495))

(declare-datatypes ((List!3387 0))(
  ( (Nil!3377) (Cons!3377 (h!8774 (_ BitVec 16)) (t!32499 List!3387)) )
))
(declare-datatypes ((TokenValue!651 0))(
  ( (FloatLiteralValue!1302 (text!5002 List!3387)) (TokenValueExt!650 (__x!2789 Int)) (Broken!3255 (value!22216 List!3387)) (Object!660) (End!651) (Def!651) (Underscore!651) (Match!651) (Else!651) (Error!651) (Case!651) (If!651) (Extends!651) (Abstract!651) (Class!651) (Val!651) (DelimiterValue!1302 (del!711 List!3387)) (KeywordValue!657 (value!22217 List!3387)) (CommentValue!1302 (value!22218 List!3387)) (WhitespaceValue!1302 (value!22219 List!3387)) (IndentationValue!651 (value!22220 List!3387)) (String!4334) (Int32!651) (Broken!3256 (value!22221 List!3387)) (Boolean!652) (Unit!3695) (OperatorValue!654 (op!711 List!3387)) (IdentifierValue!1302 (value!22222 List!3387)) (IdentifierValue!1303 (value!22223 List!3387)) (WhitespaceValue!1303 (value!22224 List!3387)) (True!1302) (False!1302) (Broken!3257 (value!22225 List!3387)) (Broken!3258 (value!22226 List!3387)) (True!1303) (RightBrace!651) (RightBracket!651) (Colon!651) (Null!651) (Comma!651) (LeftBracket!651) (False!1303) (LeftBrace!651) (ImaginaryLiteralValue!651 (text!5003 List!3387)) (StringLiteralValue!1953 (value!22227 List!3387)) (EOFValue!651 (value!22228 List!3387)) (IdentValue!651 (value!22229 List!3387)) (DelimiterValue!1303 (value!22230 List!3387)) (DedentValue!651 (value!22231 List!3387)) (NewLineValue!651 (value!22232 List!3387)) (IntegerValue!1953 (value!22233 (_ BitVec 32)) (text!5004 List!3387)) (IntegerValue!1954 (value!22234 Int) (text!5005 List!3387)) (Times!651) (Or!651) (Equal!651) (Minus!651) (Broken!3259 (value!22235 List!3387)) (And!651) (Div!651) (LessEqual!651) (Mod!651) (Concat!1504) (Not!651) (Plus!651) (SpaceValue!651 (value!22236 List!3387)) (IntegerValue!1955 (value!22237 Int) (text!5006 List!3387)) (StringLiteralValue!1954 (text!5007 List!3387)) (FloatLiteralValue!1303 (text!5008 List!3387)) (BytesLiteralValue!651 (value!22238 List!3387)) (CommentValue!1303 (value!22239 List!3387)) (StringLiteralValue!1955 (value!22240 List!3387)) (ErrorTokenValue!651 (msg!712 List!3387)) )
))
(declare-datatypes ((C!2628 0))(
  ( (C!2629 (val!1200 Int)) )
))
(declare-datatypes ((List!3388 0))(
  ( (Nil!3378) (Cons!3378 (h!8775 C!2628) (t!32500 List!3388)) )
))
(declare-datatypes ((IArray!2161 0))(
  ( (IArray!2162 (innerList!1138 List!3388)) )
))
(declare-datatypes ((Conc!1080 0))(
  ( (Node!1080 (left!2709 Conc!1080) (right!3039 Conc!1080) (csize!2390 Int) (cheight!1291 Int)) (Leaf!1734 (xs!3675 IArray!2161) (csize!2391 Int)) (Empty!1080) )
))
(declare-datatypes ((BalanceConc!2168 0))(
  ( (BalanceConc!2169 (c!42119 Conc!1080)) )
))
(declare-datatypes ((TokenValueInjection!1074 0))(
  ( (TokenValueInjection!1075 (toValue!1320 Int) (toChars!1179 Int)) )
))
(declare-datatypes ((String!4335 0))(
  ( (String!4336 (value!22241 String)) )
))
(declare-datatypes ((Regex!853 0))(
  ( (ElementMatch!853 (c!42120 C!2628)) (Concat!1505 (regOne!2218 Regex!853) (regTwo!2218 Regex!853)) (EmptyExpr!853) (Star!853 (reg!1182 Regex!853)) (EmptyLang!853) (Union!853 (regOne!2219 Regex!853) (regTwo!2219 Regex!853)) )
))
(declare-datatypes ((Rule!1058 0))(
  ( (Rule!1059 (regex!629 Regex!853) (tag!823 String!4335) (isSeparator!629 Bool) (transformation!629 TokenValueInjection!1074)) )
))
(declare-datatypes ((List!3389 0))(
  ( (Nil!3379) (Cons!3379 (h!8776 Rule!1058) (t!32501 List!3389)) )
))
(declare-fun rules!1920 () List!3389)

(get-info :version)

(assert (= (and b!219458 ((_ is Cons!3379) rules!1920)) b!219494))

(declare-fun order!2289 () Int)

(declare-fun order!2291 () Int)

(declare-fun dynLambda!1539 (Int Int) Int)

(declare-fun dynLambda!1540 (Int Int) Int)

(assert (=> b!219496 (< (dynLambda!1539 order!2289 (toValue!1320 (transformation!629 (h!8776 rules!1920)))) (dynLambda!1540 order!2291 lambda!6800))))

(declare-fun order!2293 () Int)

(declare-fun dynLambda!1541 (Int Int) Int)

(assert (=> b!219496 (< (dynLambda!1541 order!2293 (toChars!1179 (transformation!629 (h!8776 rules!1920)))) (dynLambda!1540 order!2291 lambda!6800))))

(assert (=> b!219458 true))

(declare-fun b!219436 () Bool)

(declare-fun res!100833 () Bool)

(declare-fun e!135362 () Bool)

(assert (=> b!219436 (=> (not res!100833) (not e!135362))))

(declare-fun sepAndNonSepRulesDisjointChars!218 (List!3389 List!3389) Bool)

(assert (=> b!219436 (= res!100833 (sepAndNonSepRulesDisjointChars!218 rules!1920 rules!1920))))

(declare-fun e!135351 () Bool)

(assert (=> b!219437 (= e!135351 (and tp!92404 tp!92413))))

(declare-fun b!219438 () Bool)

(declare-fun res!100836 () Bool)

(assert (=> b!219438 (=> (not res!100836) (not e!135362))))

(declare-datatypes ((Token!1002 0))(
  ( (Token!1003 (value!22242 TokenValue!651) (rule!1174 Rule!1058) (size!2708 Int) (originalCharacters!672 List!3388)) )
))
(declare-fun separatorToken!170 () Token!1002)

(assert (=> b!219438 (= res!100836 (isSeparator!629 (rule!1174 separatorToken!170)))))

(declare-fun b!219439 () Bool)

(declare-fun e!135372 () Bool)

(declare-datatypes ((tuple2!3590 0))(
  ( (tuple2!3591 (_1!2011 Token!1002) (_2!2011 List!3388)) )
))
(declare-datatypes ((Option!579 0))(
  ( (None!578) (Some!578 (v!14217 tuple2!3590)) )
))
(declare-fun lt!83012 () Option!579)

(declare-datatypes ((List!3390 0))(
  ( (Nil!3380) (Cons!3380 (h!8777 Token!1002) (t!32502 List!3390)) )
))
(declare-fun tokens!465 () List!3390)

(declare-fun get!1043 (Option!579) tuple2!3590)

(declare-fun head!753 (List!3390) Token!1002)

(assert (=> b!219439 (= e!135372 (= (_1!2011 (get!1043 lt!83012)) (head!753 tokens!465)))))

(declare-fun res!100805 () Bool)

(declare-fun e!135369 () Bool)

(assert (=> start!23518 (=> (not res!100805) (not e!135369))))

(declare-datatypes ((LexerInterface!515 0))(
  ( (LexerInterfaceExt!512 (__x!2790 Int)) (Lexer!513) )
))
(declare-fun thiss!17480 () LexerInterface!515)

(assert (=> start!23518 (= res!100805 ((_ is Lexer!513) thiss!17480))))

(assert (=> start!23518 e!135369))

(assert (=> start!23518 true))

(declare-fun e!135355 () Bool)

(assert (=> start!23518 e!135355))

(declare-fun e!135350 () Bool)

(declare-fun inv!4228 (Token!1002) Bool)

(assert (=> start!23518 (and (inv!4228 separatorToken!170) e!135350)))

(declare-fun e!135371 () Bool)

(assert (=> start!23518 e!135371))

(declare-fun b!219440 () Bool)

(declare-fun e!135345 () Bool)

(declare-fun e!135353 () Bool)

(assert (=> b!219440 (= e!135345 e!135353)))

(declare-fun res!100834 () Bool)

(assert (=> b!219440 (=> (not res!100834) (not e!135353))))

(declare-fun lt!83013 () Rule!1058)

(declare-fun lt!83032 () List!3388)

(declare-fun matchR!191 (Regex!853 List!3388) Bool)

(assert (=> b!219440 (= res!100834 (matchR!191 (regex!629 lt!83013) lt!83032))))

(declare-datatypes ((Option!580 0))(
  ( (None!579) (Some!579 (v!14218 Rule!1058)) )
))
(declare-fun lt!83030 () Option!580)

(declare-fun get!1044 (Option!580) Rule!1058)

(assert (=> b!219440 (= lt!83013 (get!1044 lt!83030))))

(declare-fun e!135337 () Bool)

(declare-fun lt!83009 () List!3388)

(declare-fun b!219441 () Bool)

(declare-fun lt!83007 () List!3388)

(declare-fun lt!83000 () List!3388)

(declare-fun ++!840 (List!3388 List!3388) List!3388)

(assert (=> b!219441 (= e!135337 (not (= lt!83000 (++!840 lt!83009 lt!83007))))))

(declare-fun b!219442 () Bool)

(declare-datatypes ((Unit!3696 0))(
  ( (Unit!3697) )
))
(declare-fun e!135373 () Unit!3696)

(declare-fun Unit!3698 () Unit!3696)

(assert (=> b!219442 (= e!135373 Unit!3698)))

(declare-fun b!219443 () Bool)

(declare-fun res!100823 () Bool)

(declare-fun e!135341 () Bool)

(assert (=> b!219443 (=> (not res!100823) (not e!135341))))

(declare-fun lt!83037 () tuple2!3590)

(declare-fun isEmpty!1868 (List!3388) Bool)

(assert (=> b!219443 (= res!100823 (isEmpty!1868 (_2!2011 lt!83037)))))

(declare-fun b!219444 () Bool)

(declare-fun res!100822 () Bool)

(declare-fun e!135364 () Bool)

(assert (=> b!219444 (=> res!100822 e!135364)))

(declare-fun rulesProduceIndividualToken!264 (LexerInterface!515 List!3389 Token!1002) Bool)

(assert (=> b!219444 (= res!100822 (not (rulesProduceIndividualToken!264 thiss!17480 rules!1920 (h!8777 tokens!465))))))

(declare-fun e!135370 () Bool)

(declare-fun tp!92403 () Bool)

(declare-fun e!135340 () Bool)

(declare-fun b!219445 () Bool)

(declare-fun inv!21 (TokenValue!651) Bool)

(assert (=> b!219445 (= e!135340 (and (inv!21 (value!22242 (h!8777 tokens!465))) e!135370 tp!92403))))

(declare-fun b!219446 () Bool)

(declare-fun tp!92412 () Bool)

(assert (=> b!219446 (= e!135371 (and (inv!4228 (h!8777 tokens!465)) e!135340 tp!92412))))

(declare-fun b!219447 () Bool)

(declare-fun e!135360 () Bool)

(assert (=> b!219447 (= e!135360 e!135372)))

(declare-fun res!100812 () Bool)

(assert (=> b!219447 (=> (not res!100812) (not e!135372))))

(declare-fun isDefined!430 (Option!579) Bool)

(assert (=> b!219447 (= res!100812 (isDefined!430 lt!83012))))

(declare-fun maxPrefix!245 (LexerInterface!515 List!3389 List!3388) Option!579)

(assert (=> b!219447 (= lt!83012 (maxPrefix!245 thiss!17480 rules!1920 lt!83000))))

(declare-fun b!219448 () Bool)

(declare-fun e!135338 () Bool)

(declare-fun e!135354 () Bool)

(assert (=> b!219448 (= e!135338 e!135354)))

(declare-fun res!100827 () Bool)

(assert (=> b!219448 (=> res!100827 e!135354)))

(declare-fun lt!82995 () Bool)

(assert (=> b!219448 (= res!100827 (not lt!82995))))

(assert (=> b!219448 e!135341))

(declare-fun res!100830 () Bool)

(assert (=> b!219448 (=> (not res!100830) (not e!135341))))

(assert (=> b!219448 (= res!100830 (= (_1!2011 lt!83037) (h!8777 tokens!465)))))

(declare-fun lt!83038 () Option!579)

(assert (=> b!219448 (= lt!83037 (get!1043 lt!83038))))

(assert (=> b!219448 (isDefined!430 lt!83038)))

(assert (=> b!219448 (= lt!83038 (maxPrefix!245 thiss!17480 rules!1920 lt!83009))))

(declare-fun b!219449 () Bool)

(declare-fun e!135357 () Bool)

(assert (=> b!219449 (= e!135357 false)))

(declare-fun b!219450 () Bool)

(declare-fun lt!82994 () Token!1002)

(assert (=> b!219450 (= e!135353 (= (rule!1174 lt!82994) lt!83013))))

(declare-fun b!219451 () Bool)

(declare-fun e!135346 () Bool)

(assert (=> b!219451 (= e!135346 true)))

(declare-fun lt!83041 () Bool)

(declare-datatypes ((IArray!2163 0))(
  ( (IArray!2164 (innerList!1139 List!3390)) )
))
(declare-datatypes ((Conc!1081 0))(
  ( (Node!1081 (left!2710 Conc!1081) (right!3040 Conc!1081) (csize!2392 Int) (cheight!1292 Int)) (Leaf!1735 (xs!3676 IArray!2163) (csize!2393 Int)) (Empty!1081) )
))
(declare-datatypes ((BalanceConc!2170 0))(
  ( (BalanceConc!2171 (c!42121 Conc!1081)) )
))
(declare-fun lt!83019 () BalanceConc!2170)

(declare-fun forall!750 (BalanceConc!2170 Int) Bool)

(assert (=> b!219451 (= lt!83041 (forall!750 lt!83019 lambda!6799))))

(declare-fun b!219452 () Bool)

(declare-fun e!135347 () Unit!3696)

(declare-fun Unit!3699 () Unit!3696)

(assert (=> b!219452 (= e!135347 Unit!3699)))

(declare-fun lt!83003 () Unit!3696)

(declare-fun lt!83027 () C!2628)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!22 (LexerInterface!515 List!3389 List!3389 Rule!1058 Rule!1058 C!2628) Unit!3696)

(assert (=> b!219452 (= lt!83003 (lemmaSepRuleNotContainsCharContainedInANonSepRule!22 thiss!17480 rules!1920 rules!1920 (rule!1174 lt!82994) (rule!1174 separatorToken!170) lt!83027))))

(assert (=> b!219452 false))

(declare-fun b!219453 () Bool)

(declare-fun Unit!3700 () Unit!3696)

(assert (=> b!219453 (= e!135373 Unit!3700)))

(assert (=> b!219453 false))

(declare-fun b!219454 () Bool)

(declare-fun e!135359 () Bool)

(assert (=> b!219454 (= e!135359 e!135364)))

(declare-fun res!100809 () Bool)

(assert (=> b!219454 (=> res!100809 e!135364)))

(declare-fun lt!83014 () List!3388)

(declare-fun lt!83021 () List!3388)

(assert (=> b!219454 (= res!100809 (or (not (= lt!83021 lt!83014)) (not (= lt!83014 lt!83009)) (not (= lt!83021 lt!83009))))))

(declare-fun printList!199 (LexerInterface!515 List!3390) List!3388)

(assert (=> b!219454 (= lt!83014 (printList!199 thiss!17480 (Cons!3380 (h!8777 tokens!465) Nil!3380)))))

(declare-fun lt!83022 () BalanceConc!2168)

(declare-fun list!1280 (BalanceConc!2168) List!3388)

(assert (=> b!219454 (= lt!83021 (list!1280 lt!83022))))

(declare-fun lt!83028 () BalanceConc!2170)

(declare-fun printTailRec!209 (LexerInterface!515 BalanceConc!2170 Int BalanceConc!2168) BalanceConc!2168)

(assert (=> b!219454 (= lt!83022 (printTailRec!209 thiss!17480 lt!83028 0 (BalanceConc!2169 Empty!1080)))))

(declare-fun print!246 (LexerInterface!515 BalanceConc!2170) BalanceConc!2168)

(assert (=> b!219454 (= lt!83022 (print!246 thiss!17480 lt!83028))))

(declare-fun singletonSeq!181 (Token!1002) BalanceConc!2170)

(assert (=> b!219454 (= lt!83028 (singletonSeq!181 (h!8777 tokens!465)))))

(declare-fun b!219455 () Bool)

(declare-fun e!135349 () Bool)

(declare-fun tp!92408 () Bool)

(assert (=> b!219455 (= e!135355 (and e!135349 tp!92408))))

(declare-fun b!219456 () Bool)

(declare-fun res!100825 () Bool)

(declare-fun e!135356 () Bool)

(assert (=> b!219456 (=> (not res!100825) (not e!135356))))

(declare-datatypes ((tuple2!3592 0))(
  ( (tuple2!3593 (_1!2012 BalanceConc!2170) (_2!2012 BalanceConc!2168)) )
))
(declare-fun lt!83015 () tuple2!3592)

(declare-fun apply!586 (BalanceConc!2170 Int) Token!1002)

(assert (=> b!219456 (= res!100825 (= (apply!586 (_1!2012 lt!83015) 0) lt!82994))))

(declare-fun e!135343 () Bool)

(assert (=> b!219457 (= e!135343 (and tp!92402 tp!92411))))

(assert (=> b!219458 (= e!135364 e!135338)))

(declare-fun res!100819 () Bool)

(assert (=> b!219458 (=> res!100819 e!135338)))

(declare-datatypes ((tuple2!3594 0))(
  ( (tuple2!3595 (_1!2013 Token!1002) (_2!2013 BalanceConc!2168)) )
))
(declare-datatypes ((Option!581 0))(
  ( (None!580) (Some!580 (v!14219 tuple2!3594)) )
))
(declare-fun isDefined!431 (Option!581) Bool)

(declare-fun maxPrefixZipperSequence!208 (LexerInterface!515 List!3389 BalanceConc!2168) Option!581)

(declare-fun seqFromList!635 (List!3388) BalanceConc!2168)

(assert (=> b!219458 (= res!100819 (not (isDefined!431 (maxPrefixZipperSequence!208 thiss!17480 rules!1920 (seqFromList!635 (originalCharacters!672 (h!8777 tokens!465)))))))))

(declare-fun lt!83026 () Unit!3696)

(declare-fun forallContained!196 (List!3390 Int Token!1002) Unit!3696)

(assert (=> b!219458 (= lt!83026 (forallContained!196 tokens!465 lambda!6800 (h!8777 tokens!465)))))

(assert (=> b!219458 (= lt!83009 (originalCharacters!672 (h!8777 tokens!465)))))

(declare-fun res!100813 () Bool)

(assert (=> b!219459 (=> (not res!100813) (not e!135362))))

(declare-fun forall!751 (List!3390 Int) Bool)

(assert (=> b!219459 (= res!100813 (forall!751 tokens!465 lambda!6799))))

(declare-fun b!219460 () Bool)

(declare-fun res!100817 () Bool)

(declare-fun e!135348 () Bool)

(assert (=> b!219460 (=> (not res!100817) (not e!135348))))

(declare-fun lt!83011 () tuple2!3592)

(assert (=> b!219460 (= res!100817 (= (apply!586 (_1!2012 lt!83011) 0) separatorToken!170))))

(declare-fun e!135358 () Bool)

(declare-fun tp!92406 () Bool)

(declare-fun b!219461 () Bool)

(assert (=> b!219461 (= e!135350 (and (inv!21 (value!22242 separatorToken!170)) e!135358 tp!92406))))

(declare-fun b!219462 () Bool)

(declare-fun res!100803 () Bool)

(assert (=> b!219462 (=> (not res!100803) (not e!135362))))

(assert (=> b!219462 (= res!100803 (rulesProduceIndividualToken!264 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!219463 () Bool)

(declare-fun e!135361 () Bool)

(declare-fun lt!83008 () Rule!1058)

(assert (=> b!219463 (= e!135361 (= (rule!1174 separatorToken!170) lt!83008))))

(declare-fun b!219464 () Bool)

(declare-fun res!100828 () Bool)

(assert (=> b!219464 (=> (not res!100828) (not e!135369))))

(declare-fun isEmpty!1869 (List!3389) Bool)

(assert (=> b!219464 (= res!100828 (not (isEmpty!1869 rules!1920)))))

(declare-fun b!219465 () Bool)

(declare-fun e!135368 () Bool)

(assert (=> b!219465 (= e!135368 e!135361)))

(declare-fun res!100816 () Bool)

(assert (=> b!219465 (=> (not res!100816) (not e!135361))))

(declare-fun lt!83044 () List!3388)

(assert (=> b!219465 (= res!100816 (matchR!191 (regex!629 lt!83008) lt!83044))))

(declare-fun lt!83042 () Option!580)

(assert (=> b!219465 (= lt!83008 (get!1044 lt!83042))))

(declare-fun b!219466 () Bool)

(assert (=> b!219466 (= e!135369 e!135362)))

(declare-fun res!100815 () Bool)

(assert (=> b!219466 (=> (not res!100815) (not e!135362))))

(declare-fun lt!82997 () BalanceConc!2170)

(declare-fun rulesProduceEachTokenIndividually!307 (LexerInterface!515 List!3389 BalanceConc!2170) Bool)

(assert (=> b!219466 (= res!100815 (rulesProduceEachTokenIndividually!307 thiss!17480 rules!1920 lt!82997))))

(declare-fun seqFromList!636 (List!3390) BalanceConc!2170)

(assert (=> b!219466 (= lt!82997 (seqFromList!636 tokens!465))))

(declare-fun b!219467 () Bool)

(declare-fun e!135339 () Bool)

(assert (=> b!219467 (= e!135339 e!135359)))

(declare-fun res!100804 () Bool)

(assert (=> b!219467 (=> res!100804 e!135359)))

(assert (=> b!219467 (= res!100804 e!135337)))

(declare-fun res!100835 () Bool)

(assert (=> b!219467 (=> (not res!100835) (not e!135337))))

(assert (=> b!219467 (= res!100835 (not lt!82995))))

(declare-fun lt!83025 () List!3388)

(assert (=> b!219467 (= lt!82995 (= lt!83000 lt!83025))))

(declare-fun b!219468 () Bool)

(declare-fun isEmpty!1870 (BalanceConc!2168) Bool)

(assert (=> b!219468 (= e!135348 (isEmpty!1870 (_2!2012 lt!83011)))))

(declare-fun e!135363 () Bool)

(assert (=> b!219469 (= e!135363 (and tp!92401 tp!92410))))

(declare-fun b!219470 () Bool)

(declare-fun res!100818 () Bool)

(declare-fun e!135365 () Bool)

(assert (=> b!219470 (=> (not res!100818) (not e!135365))))

(declare-fun lt!83010 () List!3388)

(assert (=> b!219470 (= res!100818 (= (list!1280 (seqFromList!635 lt!83000)) lt!83010))))

(declare-fun b!219471 () Bool)

(assert (=> b!219471 (= e!135362 e!135365)))

(declare-fun res!100810 () Bool)

(assert (=> b!219471 (=> (not res!100810) (not e!135365))))

(assert (=> b!219471 (= res!100810 (= lt!83000 lt!83010))))

(declare-fun printWithSeparatorTokenWhenNeededRec!198 (LexerInterface!515 List!3389 BalanceConc!2170 Token!1002 Int) BalanceConc!2168)

(assert (=> b!219471 (= lt!83010 (list!1280 (printWithSeparatorTokenWhenNeededRec!198 thiss!17480 rules!1920 lt!82997 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!208 (LexerInterface!515 List!3389 List!3390 Token!1002) List!3388)

(assert (=> b!219471 (= lt!83000 (printWithSeparatorTokenWhenNeededList!208 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!219472 () Bool)

(assert (=> b!219472 (= e!135341 (matchR!191 (regex!629 (rule!1174 (h!8777 tokens!465))) lt!83009))))

(declare-fun b!219473 () Bool)

(assert (=> b!219473 (= e!135354 e!135346)))

(declare-fun res!100806 () Bool)

(assert (=> b!219473 (=> res!100806 e!135346)))

(declare-fun size!2709 (BalanceConc!2170) Int)

(assert (=> b!219473 (= res!100806 (> 0 (size!2709 lt!83019)))))

(declare-fun lt!83006 () BalanceConc!2168)

(declare-fun filter!23 (List!3390 Int) List!3390)

(declare-fun list!1281 (BalanceConc!2170) List!3390)

(declare-fun lex!315 (LexerInterface!515 List!3389 BalanceConc!2168) tuple2!3592)

(assert (=> b!219473 (= (filter!23 (list!1281 (_1!2012 (lex!315 thiss!17480 rules!1920 lt!83006))) lambda!6799) (t!32502 tokens!465))))

(declare-fun lt!83043 () Unit!3696)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!14 (LexerInterface!515 List!3389 List!3390 Token!1002) Unit!3696)

(assert (=> b!219473 (= lt!83043 (theoremInvertabilityFromTokensSepTokenWhenNeeded!14 thiss!17480 rules!1920 (t!32502 tokens!465) separatorToken!170))))

(declare-fun lt!83020 () Option!579)

(assert (=> b!219473 (= lt!83020 (Some!578 (tuple2!3591 separatorToken!170 lt!83007)))))

(declare-fun lt!83002 () Unit!3696)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!20 (LexerInterface!515 List!3389 Token!1002 Rule!1058 List!3388 Rule!1058) Unit!3696)

(assert (=> b!219473 (= lt!83002 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!20 thiss!17480 rules!1920 separatorToken!170 (rule!1174 separatorToken!170) lt!83007 (rule!1174 lt!82994)))))

(declare-fun lt!83035 () Unit!3696)

(assert (=> b!219473 (= lt!83035 e!135347)))

(declare-fun c!42116 () Bool)

(declare-fun contains!590 (List!3388 C!2628) Bool)

(declare-fun usedCharacters!34 (Regex!853) List!3388)

(assert (=> b!219473 (= c!42116 (contains!590 (usedCharacters!34 (regex!629 (rule!1174 separatorToken!170))) lt!83027))))

(declare-fun head!754 (List!3388) C!2628)

(assert (=> b!219473 (= lt!83027 (head!754 lt!83007))))

(declare-fun lt!83016 () Unit!3696)

(declare-fun e!135342 () Unit!3696)

(assert (=> b!219473 (= lt!83016 e!135342)))

(declare-fun c!42118 () Bool)

(declare-fun lt!82999 () C!2628)

(assert (=> b!219473 (= c!42118 (not (contains!590 (usedCharacters!34 (regex!629 (rule!1174 lt!82994))) lt!82999)))))

(assert (=> b!219473 (= lt!82999 (head!754 lt!83032))))

(assert (=> b!219473 e!135345))

(declare-fun res!100832 () Bool)

(assert (=> b!219473 (=> (not res!100832) (not e!135345))))

(declare-fun isDefined!432 (Option!580) Bool)

(assert (=> b!219473 (= res!100832 (isDefined!432 lt!83030))))

(declare-fun getRuleFromTag!70 (LexerInterface!515 List!3389 String!4335) Option!580)

(assert (=> b!219473 (= lt!83030 (getRuleFromTag!70 thiss!17480 rules!1920 (tag!823 (rule!1174 lt!82994))))))

(declare-fun lt!83040 () Unit!3696)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!70 (LexerInterface!515 List!3389 List!3388 Token!1002) Unit!3696)

(assert (=> b!219473 (= lt!83040 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!70 thiss!17480 rules!1920 lt!83032 lt!82994))))

(declare-fun charsOf!284 (Token!1002) BalanceConc!2168)

(assert (=> b!219473 (= lt!83032 (list!1280 (charsOf!284 lt!82994)))))

(declare-fun lt!83031 () Unit!3696)

(assert (=> b!219473 (= lt!83031 (forallContained!196 tokens!465 lambda!6800 lt!82994))))

(assert (=> b!219473 e!135356))

(declare-fun res!100808 () Bool)

(assert (=> b!219473 (=> (not res!100808) (not e!135356))))

(assert (=> b!219473 (= res!100808 (= (size!2709 (_1!2012 lt!83015)) 1))))

(declare-fun lt!83001 () BalanceConc!2168)

(assert (=> b!219473 (= lt!83015 (lex!315 thiss!17480 rules!1920 lt!83001))))

(declare-fun lt!83023 () BalanceConc!2170)

(assert (=> b!219473 (= lt!83001 (printTailRec!209 thiss!17480 lt!83023 0 (BalanceConc!2169 Empty!1080)))))

(assert (=> b!219473 (= lt!83001 (print!246 thiss!17480 lt!83023))))

(assert (=> b!219473 (= lt!83023 (singletonSeq!181 lt!82994))))

(assert (=> b!219473 e!135368))

(declare-fun res!100820 () Bool)

(assert (=> b!219473 (=> (not res!100820) (not e!135368))))

(assert (=> b!219473 (= res!100820 (isDefined!432 lt!83042))))

(assert (=> b!219473 (= lt!83042 (getRuleFromTag!70 thiss!17480 rules!1920 (tag!823 (rule!1174 separatorToken!170))))))

(declare-fun lt!82993 () Unit!3696)

(assert (=> b!219473 (= lt!82993 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!70 thiss!17480 rules!1920 lt!83044 separatorToken!170))))

(assert (=> b!219473 e!135348))

(declare-fun res!100829 () Bool)

(assert (=> b!219473 (=> (not res!100829) (not e!135348))))

(assert (=> b!219473 (= res!100829 (= (size!2709 (_1!2012 lt!83011)) 1))))

(declare-fun lt!83024 () BalanceConc!2168)

(assert (=> b!219473 (= lt!83011 (lex!315 thiss!17480 rules!1920 lt!83024))))

(declare-fun lt!83039 () BalanceConc!2170)

(assert (=> b!219473 (= lt!83024 (printTailRec!209 thiss!17480 lt!83039 0 (BalanceConc!2169 Empty!1080)))))

(assert (=> b!219473 (= lt!83024 (print!246 thiss!17480 lt!83039))))

(assert (=> b!219473 (= lt!83039 (singletonSeq!181 separatorToken!170))))

(assert (=> b!219473 (rulesProduceIndividualToken!264 thiss!17480 rules!1920 lt!82994)))

(declare-fun lt!83018 () Unit!3696)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!82 (LexerInterface!515 List!3389 List!3390 Token!1002) Unit!3696)

(assert (=> b!219473 (= lt!83018 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!82 thiss!17480 rules!1920 tokens!465 lt!82994))))

(assert (=> b!219473 (= lt!82994 (head!753 (t!32502 tokens!465)))))

(declare-fun lt!82996 () Unit!3696)

(assert (=> b!219473 (= lt!82996 e!135373)))

(declare-fun c!42117 () Bool)

(declare-fun isEmpty!1871 (List!3390) Bool)

(assert (=> b!219473 (= c!42117 (isEmpty!1871 (t!32502 tokens!465)))))

(declare-fun lt!83033 () List!3388)

(assert (=> b!219473 (= lt!83020 (maxPrefix!245 thiss!17480 rules!1920 lt!83033))))

(declare-fun lt!83005 () tuple2!3590)

(assert (=> b!219473 (= lt!83033 (_2!2011 lt!83005))))

(declare-fun lt!82998 () Unit!3696)

(declare-fun lemmaSamePrefixThenSameSuffix!150 (List!3388 List!3388 List!3388 List!3388 List!3388) Unit!3696)

(assert (=> b!219473 (= lt!82998 (lemmaSamePrefixThenSameSuffix!150 lt!83009 lt!83033 lt!83009 (_2!2011 lt!83005) lt!83000))))

(assert (=> b!219473 (= lt!83005 (get!1043 (maxPrefix!245 thiss!17480 rules!1920 lt!83000)))))

(declare-fun isPrefix!325 (List!3388 List!3388) Bool)

(assert (=> b!219473 (isPrefix!325 lt!83009 lt!83025)))

(declare-fun lt!83004 () Unit!3696)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!220 (List!3388 List!3388) Unit!3696)

(assert (=> b!219473 (= lt!83004 (lemmaConcatTwoListThenFirstIsPrefix!220 lt!83009 lt!83033))))

(assert (=> b!219473 e!135360))

(declare-fun res!100824 () Bool)

(assert (=> b!219473 (=> res!100824 e!135360)))

(assert (=> b!219473 (= res!100824 (isEmpty!1871 tokens!465))))

(declare-fun lt!83036 () Unit!3696)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!90 (LexerInterface!515 List!3389 List!3390 Token!1002) Unit!3696)

(assert (=> b!219473 (= lt!83036 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!90 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!219474 () Bool)

(declare-fun Unit!3701 () Unit!3696)

(assert (=> b!219474 (= e!135342 Unit!3701)))

(declare-fun lt!83017 () Unit!3696)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!28 (Regex!853 List!3388 C!2628) Unit!3696)

(assert (=> b!219474 (= lt!83017 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!28 (regex!629 (rule!1174 lt!82994)) lt!83032 lt!82999))))

(declare-fun res!100831 () Bool)

(assert (=> b!219474 (= res!100831 (not (matchR!191 (regex!629 (rule!1174 lt!82994)) lt!83032)))))

(assert (=> b!219474 (=> (not res!100831) (not e!135357))))

(assert (=> b!219474 e!135357))

(declare-fun tp!92407 () Bool)

(declare-fun b!219475 () Bool)

(declare-fun inv!4225 (String!4335) Bool)

(declare-fun inv!4229 (TokenValueInjection!1074) Bool)

(assert (=> b!219475 (= e!135349 (and tp!92407 (inv!4225 (tag!823 (h!8776 rules!1920))) (inv!4229 (transformation!629 (h!8776 rules!1920))) e!135363))))

(declare-fun tp!92409 () Bool)

(declare-fun b!219476 () Bool)

(assert (=> b!219476 (= e!135370 (and tp!92409 (inv!4225 (tag!823 (rule!1174 (h!8777 tokens!465)))) (inv!4229 (transformation!629 (rule!1174 (h!8777 tokens!465)))) e!135343))))

(declare-fun b!219477 () Bool)

(declare-fun res!100814 () Bool)

(assert (=> b!219477 (=> res!100814 e!135346)))

(assert (=> b!219477 (= res!100814 (not (rulesProduceEachTokenIndividually!307 thiss!17480 rules!1920 lt!83019)))))

(declare-fun b!219478 () Bool)

(declare-fun res!100807 () Bool)

(assert (=> b!219478 (=> (not res!100807) (not e!135369))))

(declare-fun rulesInvariant!481 (LexerInterface!515 List!3389) Bool)

(assert (=> b!219478 (= res!100807 (rulesInvariant!481 thiss!17480 rules!1920))))

(declare-fun b!219479 () Bool)

(declare-fun Unit!3702 () Unit!3696)

(assert (=> b!219479 (= e!135347 Unit!3702)))

(declare-fun b!219480 () Bool)

(declare-fun Unit!3703 () Unit!3696)

(assert (=> b!219480 (= e!135342 Unit!3703)))

(declare-fun b!219481 () Bool)

(declare-fun res!100821 () Bool)

(assert (=> b!219481 (=> res!100821 e!135364)))

(declare-fun isEmpty!1872 (BalanceConc!2170) Bool)

(assert (=> b!219481 (= res!100821 (isEmpty!1872 (_1!2012 (lex!315 thiss!17480 rules!1920 (seqFromList!635 lt!83009)))))))

(declare-fun b!219482 () Bool)

(declare-fun tp!92405 () Bool)

(assert (=> b!219482 (= e!135358 (and tp!92405 (inv!4225 (tag!823 (rule!1174 separatorToken!170))) (inv!4229 (transformation!629 (rule!1174 separatorToken!170))) e!135351))))

(declare-fun b!219483 () Bool)

(declare-fun res!100811 () Bool)

(assert (=> b!219483 (=> (not res!100811) (not e!135362))))

(assert (=> b!219483 (= res!100811 ((_ is Cons!3380) tokens!465))))

(declare-fun b!219484 () Bool)

(assert (=> b!219484 (= e!135356 (isEmpty!1870 (_2!2012 lt!83015)))))

(declare-fun b!219485 () Bool)

(assert (=> b!219485 (= e!135365 (not e!135339))))

(declare-fun res!100826 () Bool)

(assert (=> b!219485 (=> res!100826 e!135339)))

(assert (=> b!219485 (= res!100826 (not (= lt!83007 (list!1280 lt!83006))))))

(assert (=> b!219485 (= lt!83006 (printWithSeparatorTokenWhenNeededRec!198 thiss!17480 rules!1920 lt!83019 separatorToken!170 0))))

(assert (=> b!219485 (= lt!83019 (seqFromList!636 (t!32502 tokens!465)))))

(declare-fun lt!83029 () List!3388)

(assert (=> b!219485 (= lt!83029 lt!83025)))

(assert (=> b!219485 (= lt!83025 (++!840 lt!83009 lt!83033))))

(assert (=> b!219485 (= lt!83029 (++!840 (++!840 lt!83009 lt!83044) lt!83007))))

(declare-fun lt!83034 () Unit!3696)

(declare-fun lemmaConcatAssociativity!328 (List!3388 List!3388 List!3388) Unit!3696)

(assert (=> b!219485 (= lt!83034 (lemmaConcatAssociativity!328 lt!83009 lt!83044 lt!83007))))

(assert (=> b!219485 (= lt!83009 (list!1280 (charsOf!284 (h!8777 tokens!465))))))

(assert (=> b!219485 (= lt!83033 (++!840 lt!83044 lt!83007))))

(assert (=> b!219485 (= lt!83007 (printWithSeparatorTokenWhenNeededList!208 thiss!17480 rules!1920 (t!32502 tokens!465) separatorToken!170))))

(assert (=> b!219485 (= lt!83044 (list!1280 (charsOf!284 separatorToken!170)))))

(assert (= (and start!23518 res!100805) b!219464))

(assert (= (and b!219464 res!100828) b!219478))

(assert (= (and b!219478 res!100807) b!219466))

(assert (= (and b!219466 res!100815) b!219462))

(assert (= (and b!219462 res!100803) b!219438))

(assert (= (and b!219438 res!100836) b!219459))

(assert (= (and b!219459 res!100813) b!219436))

(assert (= (and b!219436 res!100833) b!219483))

(assert (= (and b!219483 res!100811) b!219471))

(assert (= (and b!219471 res!100810) b!219470))

(assert (= (and b!219470 res!100818) b!219485))

(assert (= (and b!219485 (not res!100826)) b!219467))

(assert (= (and b!219467 res!100835) b!219441))

(assert (= (and b!219467 (not res!100804)) b!219454))

(assert (= (and b!219454 (not res!100809)) b!219444))

(assert (= (and b!219444 (not res!100822)) b!219481))

(assert (= (and b!219481 (not res!100821)) b!219458))

(assert (= (and b!219458 (not res!100819)) b!219448))

(assert (= (and b!219448 res!100830) b!219443))

(assert (= (and b!219443 res!100823) b!219472))

(assert (= (and b!219448 (not res!100827)) b!219473))

(assert (= (and b!219473 (not res!100824)) b!219447))

(assert (= (and b!219447 res!100812) b!219439))

(assert (= (and b!219473 c!42117) b!219453))

(assert (= (and b!219473 (not c!42117)) b!219442))

(assert (= (and b!219473 res!100829) b!219460))

(assert (= (and b!219460 res!100817) b!219468))

(assert (= (and b!219473 res!100820) b!219465))

(assert (= (and b!219465 res!100816) b!219463))

(assert (= (and b!219473 res!100808) b!219456))

(assert (= (and b!219456 res!100825) b!219484))

(assert (= (and b!219473 res!100832) b!219440))

(assert (= (and b!219440 res!100834) b!219450))

(assert (= (and b!219473 c!42118) b!219474))

(assert (= (and b!219473 (not c!42118)) b!219480))

(assert (= (and b!219474 res!100831) b!219449))

(assert (= (and b!219473 c!42116) b!219452))

(assert (= (and b!219473 (not c!42116)) b!219479))

(assert (= (and b!219473 (not res!100806)) b!219477))

(assert (= (and b!219477 (not res!100814)) b!219451))

(assert (= b!219475 b!219469))

(assert (= b!219455 b!219475))

(assert (= (and start!23518 ((_ is Cons!3379) rules!1920)) b!219455))

(assert (= b!219482 b!219437))

(assert (= b!219461 b!219482))

(assert (= start!23518 b!219461))

(assert (= b!219476 b!219457))

(assert (= b!219445 b!219476))

(assert (= b!219446 b!219445))

(assert (= (and start!23518 ((_ is Cons!3380) tokens!465)) b!219446))

(declare-fun m!252849 () Bool)

(assert (=> b!219460 m!252849))

(declare-fun m!252851 () Bool)

(assert (=> b!219439 m!252851))

(declare-fun m!252853 () Bool)

(assert (=> b!219439 m!252853))

(declare-fun m!252855 () Bool)

(assert (=> b!219441 m!252855))

(declare-fun m!252857 () Bool)

(assert (=> b!219485 m!252857))

(declare-fun m!252859 () Bool)

(assert (=> b!219485 m!252859))

(declare-fun m!252861 () Bool)

(assert (=> b!219485 m!252861))

(declare-fun m!252863 () Bool)

(assert (=> b!219485 m!252863))

(declare-fun m!252865 () Bool)

(assert (=> b!219485 m!252865))

(declare-fun m!252867 () Bool)

(assert (=> b!219485 m!252867))

(declare-fun m!252869 () Bool)

(assert (=> b!219485 m!252869))

(declare-fun m!252871 () Bool)

(assert (=> b!219485 m!252871))

(assert (=> b!219485 m!252869))

(declare-fun m!252873 () Bool)

(assert (=> b!219485 m!252873))

(declare-fun m!252875 () Bool)

(assert (=> b!219485 m!252875))

(declare-fun m!252877 () Bool)

(assert (=> b!219485 m!252877))

(declare-fun m!252879 () Bool)

(assert (=> b!219485 m!252879))

(assert (=> b!219485 m!252879))

(declare-fun m!252881 () Bool)

(assert (=> b!219485 m!252881))

(assert (=> b!219485 m!252859))

(declare-fun m!252883 () Bool)

(assert (=> b!219445 m!252883))

(declare-fun m!252885 () Bool)

(assert (=> b!219481 m!252885))

(assert (=> b!219481 m!252885))

(declare-fun m!252887 () Bool)

(assert (=> b!219481 m!252887))

(declare-fun m!252889 () Bool)

(assert (=> b!219481 m!252889))

(declare-fun m!252891 () Bool)

(assert (=> b!219471 m!252891))

(assert (=> b!219471 m!252891))

(declare-fun m!252893 () Bool)

(assert (=> b!219471 m!252893))

(declare-fun m!252895 () Bool)

(assert (=> b!219471 m!252895))

(declare-fun m!252897 () Bool)

(assert (=> b!219436 m!252897))

(declare-fun m!252899 () Bool)

(assert (=> b!219468 m!252899))

(declare-fun m!252901 () Bool)

(assert (=> b!219448 m!252901))

(declare-fun m!252903 () Bool)

(assert (=> b!219448 m!252903))

(declare-fun m!252905 () Bool)

(assert (=> b!219448 m!252905))

(declare-fun m!252907 () Bool)

(assert (=> b!219477 m!252907))

(declare-fun m!252909 () Bool)

(assert (=> b!219458 m!252909))

(assert (=> b!219458 m!252909))

(declare-fun m!252911 () Bool)

(assert (=> b!219458 m!252911))

(assert (=> b!219458 m!252911))

(declare-fun m!252913 () Bool)

(assert (=> b!219458 m!252913))

(declare-fun m!252915 () Bool)

(assert (=> b!219458 m!252915))

(declare-fun m!252917 () Bool)

(assert (=> b!219478 m!252917))

(declare-fun m!252919 () Bool)

(assert (=> b!219473 m!252919))

(declare-fun m!252921 () Bool)

(assert (=> b!219473 m!252921))

(declare-fun m!252923 () Bool)

(assert (=> b!219473 m!252923))

(declare-fun m!252925 () Bool)

(assert (=> b!219473 m!252925))

(declare-fun m!252927 () Bool)

(assert (=> b!219473 m!252927))

(declare-fun m!252929 () Bool)

(assert (=> b!219473 m!252929))

(declare-fun m!252931 () Bool)

(assert (=> b!219473 m!252931))

(declare-fun m!252933 () Bool)

(assert (=> b!219473 m!252933))

(declare-fun m!252935 () Bool)

(assert (=> b!219473 m!252935))

(declare-fun m!252937 () Bool)

(assert (=> b!219473 m!252937))

(declare-fun m!252939 () Bool)

(assert (=> b!219473 m!252939))

(declare-fun m!252941 () Bool)

(assert (=> b!219473 m!252941))

(declare-fun m!252943 () Bool)

(assert (=> b!219473 m!252943))

(assert (=> b!219473 m!252921))

(declare-fun m!252945 () Bool)

(assert (=> b!219473 m!252945))

(declare-fun m!252947 () Bool)

(assert (=> b!219473 m!252947))

(declare-fun m!252949 () Bool)

(assert (=> b!219473 m!252949))

(declare-fun m!252951 () Bool)

(assert (=> b!219473 m!252951))

(declare-fun m!252953 () Bool)

(assert (=> b!219473 m!252953))

(declare-fun m!252955 () Bool)

(assert (=> b!219473 m!252955))

(declare-fun m!252957 () Bool)

(assert (=> b!219473 m!252957))

(declare-fun m!252959 () Bool)

(assert (=> b!219473 m!252959))

(declare-fun m!252961 () Bool)

(assert (=> b!219473 m!252961))

(declare-fun m!252963 () Bool)

(assert (=> b!219473 m!252963))

(declare-fun m!252965 () Bool)

(assert (=> b!219473 m!252965))

(declare-fun m!252967 () Bool)

(assert (=> b!219473 m!252967))

(assert (=> b!219473 m!252961))

(declare-fun m!252969 () Bool)

(assert (=> b!219473 m!252969))

(declare-fun m!252971 () Bool)

(assert (=> b!219473 m!252971))

(declare-fun m!252973 () Bool)

(assert (=> b!219473 m!252973))

(declare-fun m!252975 () Bool)

(assert (=> b!219473 m!252975))

(declare-fun m!252977 () Bool)

(assert (=> b!219473 m!252977))

(declare-fun m!252979 () Bool)

(assert (=> b!219473 m!252979))

(declare-fun m!252981 () Bool)

(assert (=> b!219473 m!252981))

(declare-fun m!252983 () Bool)

(assert (=> b!219473 m!252983))

(declare-fun m!252985 () Bool)

(assert (=> b!219473 m!252985))

(declare-fun m!252987 () Bool)

(assert (=> b!219473 m!252987))

(declare-fun m!252989 () Bool)

(assert (=> b!219473 m!252989))

(declare-fun m!252991 () Bool)

(assert (=> b!219473 m!252991))

(declare-fun m!252993 () Bool)

(assert (=> b!219473 m!252993))

(declare-fun m!252995 () Bool)

(assert (=> b!219473 m!252995))

(declare-fun m!252997 () Bool)

(assert (=> b!219473 m!252997))

(assert (=> b!219473 m!252975))

(declare-fun m!252999 () Bool)

(assert (=> b!219473 m!252999))

(declare-fun m!253001 () Bool)

(assert (=> b!219473 m!253001))

(assert (=> b!219473 m!252987))

(declare-fun m!253003 () Bool)

(assert (=> b!219473 m!253003))

(assert (=> b!219473 m!252993))

(declare-fun m!253005 () Bool)

(assert (=> b!219443 m!253005))

(declare-fun m!253007 () Bool)

(assert (=> b!219484 m!253007))

(declare-fun m!253009 () Bool)

(assert (=> b!219464 m!253009))

(declare-fun m!253011 () Bool)

(assert (=> b!219451 m!253011))

(declare-fun m!253013 () Bool)

(assert (=> b!219452 m!253013))

(declare-fun m!253015 () Bool)

(assert (=> b!219446 m!253015))

(declare-fun m!253017 () Bool)

(assert (=> b!219465 m!253017))

(declare-fun m!253019 () Bool)

(assert (=> b!219465 m!253019))

(declare-fun m!253021 () Bool)

(assert (=> b!219472 m!253021))

(declare-fun m!253023 () Bool)

(assert (=> b!219440 m!253023))

(declare-fun m!253025 () Bool)

(assert (=> b!219440 m!253025))

(declare-fun m!253027 () Bool)

(assert (=> b!219475 m!253027))

(declare-fun m!253029 () Bool)

(assert (=> b!219475 m!253029))

(declare-fun m!253031 () Bool)

(assert (=> b!219444 m!253031))

(declare-fun m!253033 () Bool)

(assert (=> b!219462 m!253033))

(declare-fun m!253035 () Bool)

(assert (=> b!219474 m!253035))

(declare-fun m!253037 () Bool)

(assert (=> b!219474 m!253037))

(declare-fun m!253039 () Bool)

(assert (=> start!23518 m!253039))

(declare-fun m!253041 () Bool)

(assert (=> b!219461 m!253041))

(declare-fun m!253043 () Bool)

(assert (=> b!219470 m!253043))

(assert (=> b!219470 m!253043))

(declare-fun m!253045 () Bool)

(assert (=> b!219470 m!253045))

(declare-fun m!253047 () Bool)

(assert (=> b!219447 m!253047))

(assert (=> b!219447 m!252921))

(declare-fun m!253049 () Bool)

(assert (=> b!219456 m!253049))

(declare-fun m!253051 () Bool)

(assert (=> b!219476 m!253051))

(declare-fun m!253053 () Bool)

(assert (=> b!219476 m!253053))

(declare-fun m!253055 () Bool)

(assert (=> b!219482 m!253055))

(declare-fun m!253057 () Bool)

(assert (=> b!219482 m!253057))

(declare-fun m!253059 () Bool)

(assert (=> b!219466 m!253059))

(declare-fun m!253061 () Bool)

(assert (=> b!219466 m!253061))

(declare-fun m!253063 () Bool)

(assert (=> b!219459 m!253063))

(declare-fun m!253065 () Bool)

(assert (=> b!219454 m!253065))

(declare-fun m!253067 () Bool)

(assert (=> b!219454 m!253067))

(declare-fun m!253069 () Bool)

(assert (=> b!219454 m!253069))

(declare-fun m!253071 () Bool)

(assert (=> b!219454 m!253071))

(declare-fun m!253073 () Bool)

(assert (=> b!219454 m!253073))

(check-sat (not b!219481) (not b!219470) (not b!219455) (not b_next!8281) (not b_next!8283) (not b!219465) (not b!219446) (not b!219477) b_and!16155 (not b!219447) (not b!219459) (not b!219460) (not b!219464) (not b!219494) (not b!219482) (not b!219436) b_and!16157 (not b!219471) (not b!219456) b_and!16163 (not b!219440) (not b!219473) b_and!16161 (not b_next!8287) (not b!219476) (not b!219484) (not start!23518) (not b_next!8289) (not b_next!8285) (not b!219439) (not b!219475) b_and!16153 (not b!219468) (not b!219474) (not b!219452) (not b!219461) (not b!219472) (not b!219454) (not b!219444) (not b_next!8291) (not b!219451) (not b!219443) (not b!219445) (not b!219458) (not b!219485) (not b!219448) b_and!16159 (not b!219441) (not b!219462) (not b!219466) (not b!219478))
(check-sat b_and!16155 (not b_next!8281) b_and!16157 b_and!16163 b_and!16153 (not b_next!8291) (not b_next!8283) b_and!16159 b_and!16161 (not b_next!8287) (not b_next!8289) (not b_next!8285))
