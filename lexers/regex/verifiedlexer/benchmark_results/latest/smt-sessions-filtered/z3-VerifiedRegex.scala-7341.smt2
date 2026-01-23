; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390310 () Bool)

(assert start!390310)

(declare-fun b!4117630 () Bool)

(declare-fun b_free!116195 () Bool)

(declare-fun b_next!116899 () Bool)

(assert (=> b!4117630 (= b_free!116195 (not b_next!116899))))

(declare-fun tp!1254592 () Bool)

(declare-fun b_and!318277 () Bool)

(assert (=> b!4117630 (= tp!1254592 b_and!318277)))

(declare-fun b_free!116197 () Bool)

(declare-fun b_next!116901 () Bool)

(assert (=> b!4117630 (= b_free!116197 (not b_next!116901))))

(declare-fun tp!1254593 () Bool)

(declare-fun b_and!318279 () Bool)

(assert (=> b!4117630 (= tp!1254593 b_and!318279)))

(declare-fun b!4117622 () Bool)

(declare-fun b_free!116199 () Bool)

(declare-fun b_next!116903 () Bool)

(assert (=> b!4117622 (= b_free!116199 (not b_next!116903))))

(declare-fun tp!1254585 () Bool)

(declare-fun b_and!318281 () Bool)

(assert (=> b!4117622 (= tp!1254585 b_and!318281)))

(declare-fun b_free!116201 () Bool)

(declare-fun b_next!116905 () Bool)

(assert (=> b!4117622 (= b_free!116201 (not b_next!116905))))

(declare-fun tp!1254595 () Bool)

(declare-fun b_and!318283 () Bool)

(assert (=> b!4117622 (= tp!1254595 b_and!318283)))

(declare-fun b!4117631 () Bool)

(declare-fun b_free!116203 () Bool)

(declare-fun b_next!116907 () Bool)

(assert (=> b!4117631 (= b_free!116203 (not b_next!116907))))

(declare-fun tp!1254588 () Bool)

(declare-fun b_and!318285 () Bool)

(assert (=> b!4117631 (= tp!1254588 b_and!318285)))

(declare-fun b_free!116205 () Bool)

(declare-fun b_next!116909 () Bool)

(assert (=> b!4117631 (= b_free!116205 (not b_next!116909))))

(declare-fun tp!1254586 () Bool)

(declare-fun b_and!318287 () Bool)

(assert (=> b!4117631 (= tp!1254586 b_and!318287)))

(declare-fun b!4117615 () Bool)

(declare-fun e!2554924 () Bool)

(declare-fun tp_is_empty!21241 () Bool)

(declare-fun tp!1254589 () Bool)

(assert (=> b!4117615 (= e!2554924 (and tp_is_empty!21241 tp!1254589))))

(declare-fun b!4117616 () Bool)

(declare-fun e!2554930 () Bool)

(declare-fun e!2554927 () Bool)

(assert (=> b!4117616 (= e!2554930 e!2554927)))

(declare-fun res!1681819 () Bool)

(assert (=> b!4117616 (=> (not res!1681819) (not e!2554927))))

(declare-datatypes ((List!44603 0))(
  ( (Nil!44479) (Cons!44479 (h!49899 (_ BitVec 16)) (t!340506 List!44603)) )
))
(declare-datatypes ((TokenValue!7484 0))(
  ( (FloatLiteralValue!14968 (text!52833 List!44603)) (TokenValueExt!7483 (__x!27185 Int)) (Broken!37420 (value!227267 List!44603)) (Object!7607) (End!7484) (Def!7484) (Underscore!7484) (Match!7484) (Else!7484) (Error!7484) (Case!7484) (If!7484) (Extends!7484) (Abstract!7484) (Class!7484) (Val!7484) (DelimiterValue!14968 (del!7544 List!44603)) (KeywordValue!7490 (value!227268 List!44603)) (CommentValue!14968 (value!227269 List!44603)) (WhitespaceValue!14968 (value!227270 List!44603)) (IndentationValue!7484 (value!227271 List!44603)) (String!51169) (Int32!7484) (Broken!37421 (value!227272 List!44603)) (Boolean!7485) (Unit!63838) (OperatorValue!7487 (op!7544 List!44603)) (IdentifierValue!14968 (value!227273 List!44603)) (IdentifierValue!14969 (value!227274 List!44603)) (WhitespaceValue!14969 (value!227275 List!44603)) (True!14968) (False!14968) (Broken!37422 (value!227276 List!44603)) (Broken!37423 (value!227277 List!44603)) (True!14969) (RightBrace!7484) (RightBracket!7484) (Colon!7484) (Null!7484) (Comma!7484) (LeftBracket!7484) (False!14969) (LeftBrace!7484) (ImaginaryLiteralValue!7484 (text!52834 List!44603)) (StringLiteralValue!22452 (value!227278 List!44603)) (EOFValue!7484 (value!227279 List!44603)) (IdentValue!7484 (value!227280 List!44603)) (DelimiterValue!14969 (value!227281 List!44603)) (DedentValue!7484 (value!227282 List!44603)) (NewLineValue!7484 (value!227283 List!44603)) (IntegerValue!22452 (value!227284 (_ BitVec 32)) (text!52835 List!44603)) (IntegerValue!22453 (value!227285 Int) (text!52836 List!44603)) (Times!7484) (Or!7484) (Equal!7484) (Minus!7484) (Broken!37424 (value!227286 List!44603)) (And!7484) (Div!7484) (LessEqual!7484) (Mod!7484) (Concat!19643) (Not!7484) (Plus!7484) (SpaceValue!7484 (value!227287 List!44603)) (IntegerValue!22454 (value!227288 Int) (text!52837 List!44603)) (StringLiteralValue!22453 (text!52838 List!44603)) (FloatLiteralValue!14969 (text!52839 List!44603)) (BytesLiteralValue!7484 (value!227289 List!44603)) (CommentValue!14969 (value!227290 List!44603)) (StringLiteralValue!22454 (value!227291 List!44603)) (ErrorTokenValue!7484 (msg!7545 List!44603)) )
))
(declare-datatypes ((C!24504 0))(
  ( (C!24505 (val!14362 Int)) )
))
(declare-datatypes ((List!44604 0))(
  ( (Nil!44480) (Cons!44480 (h!49900 C!24504) (t!340507 List!44604)) )
))
(declare-datatypes ((IArray!26935 0))(
  ( (IArray!26936 (innerList!13525 List!44604)) )
))
(declare-datatypes ((Conc!13465 0))(
  ( (Node!13465 (left!33326 Conc!13465) (right!33656 Conc!13465) (csize!27160 Int) (cheight!13676 Int)) (Leaf!20807 (xs!16771 IArray!26935) (csize!27161 Int)) (Empty!13465) )
))
(declare-datatypes ((BalanceConc!26524 0))(
  ( (BalanceConc!26525 (c!707272 Conc!13465)) )
))
(declare-datatypes ((Regex!12159 0))(
  ( (ElementMatch!12159 (c!707273 C!24504)) (Concat!19644 (regOne!24830 Regex!12159) (regTwo!24830 Regex!12159)) (EmptyExpr!12159) (Star!12159 (reg!12488 Regex!12159)) (EmptyLang!12159) (Union!12159 (regOne!24831 Regex!12159) (regTwo!24831 Regex!12159)) )
))
(declare-datatypes ((String!51170 0))(
  ( (String!51171 (value!227292 String)) )
))
(declare-datatypes ((TokenValueInjection!14396 0))(
  ( (TokenValueInjection!14397 (toValue!9906 Int) (toChars!9765 Int)) )
))
(declare-datatypes ((Rule!14308 0))(
  ( (Rule!14309 (regex!7254 Regex!12159) (tag!8114 String!51170) (isSeparator!7254 Bool) (transformation!7254 TokenValueInjection!14396)) )
))
(declare-datatypes ((List!44605 0))(
  ( (Nil!44481) (Cons!44481 (h!49901 Rule!14308) (t!340508 List!44605)) )
))
(declare-fun rules!3756 () List!44605)

(declare-fun input!3238 () List!44604)

(declare-fun p!2912 () List!44604)

(declare-fun lt!1469057 () BalanceConc!26524)

(declare-datatypes ((LexerInterface!6843 0))(
  ( (LexerInterfaceExt!6840 (__x!27186 Int)) (Lexer!6841) )
))
(declare-fun thiss!25645 () LexerInterface!6843)

(declare-fun r!4008 () Rule!14308)

(declare-datatypes ((Token!13438 0))(
  ( (Token!13439 (value!227293 TokenValue!7484) (rule!10320 Rule!14308) (size!32917 Int) (originalCharacters!7750 List!44604)) )
))
(declare-datatypes ((tuple2!42966 0))(
  ( (tuple2!42967 (_1!24617 Token!13438) (_2!24617 List!44604)) )
))
(declare-datatypes ((Option!9562 0))(
  ( (None!9561) (Some!9561 (v!40139 tuple2!42966)) )
))
(declare-fun maxPrefix!4035 (LexerInterface!6843 List!44605 List!44604) Option!9562)

(declare-fun apply!10327 (TokenValueInjection!14396 BalanceConc!26524) TokenValue!7484)

(declare-fun size!32918 (List!44604) Int)

(declare-fun getSuffix!2518 (List!44604 List!44604) List!44604)

(assert (=> b!4117616 (= res!1681819 (= (maxPrefix!4035 thiss!25645 rules!3756 input!3238) (Some!9561 (tuple2!42967 (Token!13439 (apply!10327 (transformation!7254 r!4008) lt!1469057) r!4008 (size!32918 p!2912) p!2912) (getSuffix!2518 input!3238 p!2912)))))))

(declare-datatypes ((Unit!63839 0))(
  ( (Unit!63840) )
))
(declare-fun lt!1469056 () Unit!63839)

(declare-fun lemmaSemiInverse!2112 (TokenValueInjection!14396 BalanceConc!26524) Unit!63839)

(assert (=> b!4117616 (= lt!1469056 (lemmaSemiInverse!2112 (transformation!7254 r!4008) lt!1469057))))

(declare-fun seqFromList!5371 (List!44604) BalanceConc!26524)

(assert (=> b!4117616 (= lt!1469057 (seqFromList!5371 p!2912))))

(declare-fun b!4117618 () Bool)

(declare-fun res!1681820 () Bool)

(assert (=> b!4117618 (=> (not res!1681820) (not e!2554930))))

(declare-fun isEmpty!26447 (List!44605) Bool)

(assert (=> b!4117618 (= res!1681820 (not (isEmpty!26447 rules!3756)))))

(declare-fun e!2554920 () Bool)

(declare-fun tp!1254591 () Bool)

(declare-fun e!2554921 () Bool)

(declare-fun b!4117619 () Bool)

(declare-fun rBis!149 () Rule!14308)

(declare-fun inv!59068 (String!51170) Bool)

(declare-fun inv!59070 (TokenValueInjection!14396) Bool)

(assert (=> b!4117619 (= e!2554921 (and tp!1254591 (inv!59068 (tag!8114 rBis!149)) (inv!59070 (transformation!7254 rBis!149)) e!2554920))))

(declare-fun b!4117620 () Bool)

(assert (=> b!4117620 (= e!2554927 false)))

(declare-fun lt!1469058 () Bool)

(declare-fun rulesValidInductive!2675 (LexerInterface!6843 List!44605) Bool)

(assert (=> b!4117620 (= lt!1469058 (rulesValidInductive!2675 thiss!25645 rules!3756))))

(declare-fun b!4117621 () Bool)

(declare-fun res!1681817 () Bool)

(assert (=> b!4117621 (=> (not res!1681817) (not e!2554930))))

(declare-fun rulesInvariant!6140 (LexerInterface!6843 List!44605) Bool)

(assert (=> b!4117621 (= res!1681817 (rulesInvariant!6140 thiss!25645 rules!3756))))

(assert (=> b!4117622 (= e!2554920 (and tp!1254585 tp!1254595))))

(declare-fun b!4117623 () Bool)

(declare-fun res!1681821 () Bool)

(assert (=> b!4117623 (=> (not res!1681821) (not e!2554930))))

(declare-fun isPrefix!4189 (List!44604 List!44604) Bool)

(assert (=> b!4117623 (= res!1681821 (isPrefix!4189 p!2912 input!3238))))

(declare-fun b!4117624 () Bool)

(declare-fun res!1681824 () Bool)

(assert (=> b!4117624 (=> (not res!1681824) (not e!2554930))))

(declare-fun contains!8926 (List!44605 Rule!14308) Bool)

(assert (=> b!4117624 (= res!1681824 (contains!8926 rules!3756 r!4008))))

(declare-fun tp!1254596 () Bool)

(declare-fun e!2554919 () Bool)

(declare-fun b!4117625 () Bool)

(declare-fun e!2554929 () Bool)

(assert (=> b!4117625 (= e!2554919 (and tp!1254596 (inv!59068 (tag!8114 r!4008)) (inv!59070 (transformation!7254 r!4008)) e!2554929))))

(declare-fun res!1681822 () Bool)

(assert (=> start!390310 (=> (not res!1681822) (not e!2554930))))

(get-info :version)

(assert (=> start!390310 (= res!1681822 ((_ is Lexer!6841) thiss!25645))))

(assert (=> start!390310 e!2554930))

(declare-fun e!2554922 () Bool)

(assert (=> start!390310 e!2554922))

(declare-fun e!2554932 () Bool)

(assert (=> start!390310 e!2554932))

(assert (=> start!390310 true))

(assert (=> start!390310 e!2554919))

(assert (=> start!390310 e!2554924))

(assert (=> start!390310 e!2554921))

(declare-fun b!4117617 () Bool)

(declare-fun res!1681815 () Bool)

(assert (=> b!4117617 (=> (not res!1681815) (not e!2554927))))

(declare-fun getIndex!602 (List!44605 Rule!14308) Int)

(assert (=> b!4117617 (= res!1681815 (< (getIndex!602 rules!3756 rBis!149) (getIndex!602 rules!3756 r!4008)))))

(declare-fun b!4117626 () Bool)

(declare-fun tp!1254594 () Bool)

(assert (=> b!4117626 (= e!2554932 (and tp_is_empty!21241 tp!1254594))))

(declare-fun b!4117627 () Bool)

(declare-fun res!1681823 () Bool)

(assert (=> b!4117627 (=> (not res!1681823) (not e!2554927))))

(declare-fun ruleValid!3062 (LexerInterface!6843 Rule!14308) Bool)

(assert (=> b!4117627 (= res!1681823 (ruleValid!3062 thiss!25645 r!4008))))

(declare-fun b!4117628 () Bool)

(declare-fun res!1681825 () Bool)

(assert (=> b!4117628 (=> (not res!1681825) (not e!2554927))))

(declare-fun matchR!5990 (Regex!12159 List!44604) Bool)

(assert (=> b!4117628 (= res!1681825 (matchR!5990 (regex!7254 r!4008) p!2912))))

(declare-fun b!4117629 () Bool)

(declare-fun e!2554925 () Bool)

(declare-fun e!2554923 () Bool)

(declare-fun tp!1254587 () Bool)

(assert (=> b!4117629 (= e!2554923 (and tp!1254587 (inv!59068 (tag!8114 (h!49901 rules!3756))) (inv!59070 (transformation!7254 (h!49901 rules!3756))) e!2554925))))

(assert (=> b!4117630 (= e!2554929 (and tp!1254592 tp!1254593))))

(assert (=> b!4117631 (= e!2554925 (and tp!1254588 tp!1254586))))

(declare-fun b!4117632 () Bool)

(declare-fun tp!1254590 () Bool)

(assert (=> b!4117632 (= e!2554922 (and e!2554923 tp!1254590))))

(declare-fun b!4117633 () Bool)

(declare-fun res!1681818 () Bool)

(assert (=> b!4117633 (=> (not res!1681818) (not e!2554930))))

(assert (=> b!4117633 (= res!1681818 (contains!8926 rules!3756 rBis!149))))

(declare-fun b!4117634 () Bool)

(declare-fun res!1681816 () Bool)

(assert (=> b!4117634 (=> (not res!1681816) (not e!2554930))))

(declare-fun isEmpty!26448 (List!44604) Bool)

(assert (=> b!4117634 (= res!1681816 (not (isEmpty!26448 p!2912)))))

(assert (= (and start!390310 res!1681822) b!4117623))

(assert (= (and b!4117623 res!1681821) b!4117618))

(assert (= (and b!4117618 res!1681820) b!4117621))

(assert (= (and b!4117621 res!1681817) b!4117624))

(assert (= (and b!4117624 res!1681824) b!4117633))

(assert (= (and b!4117633 res!1681818) b!4117634))

(assert (= (and b!4117634 res!1681816) b!4117616))

(assert (= (and b!4117616 res!1681819) b!4117628))

(assert (= (and b!4117628 res!1681825) b!4117617))

(assert (= (and b!4117617 res!1681815) b!4117627))

(assert (= (and b!4117627 res!1681823) b!4117620))

(assert (= b!4117629 b!4117631))

(assert (= b!4117632 b!4117629))

(assert (= (and start!390310 ((_ is Cons!44481) rules!3756)) b!4117632))

(assert (= (and start!390310 ((_ is Cons!44480) p!2912)) b!4117626))

(assert (= b!4117625 b!4117630))

(assert (= start!390310 b!4117625))

(assert (= (and start!390310 ((_ is Cons!44480) input!3238)) b!4117615))

(assert (= b!4117619 b!4117622))

(assert (= start!390310 b!4117619))

(declare-fun m!4717195 () Bool)

(assert (=> b!4117623 m!4717195))

(declare-fun m!4717197 () Bool)

(assert (=> b!4117621 m!4717197))

(declare-fun m!4717199 () Bool)

(assert (=> b!4117625 m!4717199))

(declare-fun m!4717201 () Bool)

(assert (=> b!4117625 m!4717201))

(declare-fun m!4717203 () Bool)

(assert (=> b!4117634 m!4717203))

(declare-fun m!4717205 () Bool)

(assert (=> b!4117624 m!4717205))

(declare-fun m!4717207 () Bool)

(assert (=> b!4117633 m!4717207))

(declare-fun m!4717209 () Bool)

(assert (=> b!4117618 m!4717209))

(declare-fun m!4717211 () Bool)

(assert (=> b!4117617 m!4717211))

(declare-fun m!4717213 () Bool)

(assert (=> b!4117617 m!4717213))

(declare-fun m!4717215 () Bool)

(assert (=> b!4117619 m!4717215))

(declare-fun m!4717217 () Bool)

(assert (=> b!4117619 m!4717217))

(declare-fun m!4717219 () Bool)

(assert (=> b!4117616 m!4717219))

(declare-fun m!4717221 () Bool)

(assert (=> b!4117616 m!4717221))

(declare-fun m!4717223 () Bool)

(assert (=> b!4117616 m!4717223))

(declare-fun m!4717225 () Bool)

(assert (=> b!4117616 m!4717225))

(declare-fun m!4717227 () Bool)

(assert (=> b!4117616 m!4717227))

(declare-fun m!4717229 () Bool)

(assert (=> b!4117616 m!4717229))

(declare-fun m!4717231 () Bool)

(assert (=> b!4117620 m!4717231))

(declare-fun m!4717233 () Bool)

(assert (=> b!4117629 m!4717233))

(declare-fun m!4717235 () Bool)

(assert (=> b!4117629 m!4717235))

(declare-fun m!4717237 () Bool)

(assert (=> b!4117627 m!4717237))

(declare-fun m!4717239 () Bool)

(assert (=> b!4117628 m!4717239))

(check-sat (not b!4117632) (not b!4117633) (not b_next!116899) tp_is_empty!21241 b_and!318285 (not b_next!116907) (not b!4117618) (not b!4117616) (not b!4117629) (not b!4117625) (not b_next!116909) b_and!318287 (not b!4117634) (not b!4117620) b_and!318283 (not b!4117619) (not b!4117621) (not b_next!116905) b_and!318277 (not b!4117623) (not b!4117626) b_and!318281 (not b!4117617) (not b!4117624) (not b!4117628) (not b_next!116903) (not b_next!116901) b_and!318279 (not b!4117627) (not b!4117615))
(check-sat b_and!318283 (not b_next!116905) b_and!318277 b_and!318281 (not b_next!116899) b_and!318285 (not b_next!116907) (not b_next!116909) b_and!318287 (not b_next!116903) (not b_next!116901) b_and!318279)
