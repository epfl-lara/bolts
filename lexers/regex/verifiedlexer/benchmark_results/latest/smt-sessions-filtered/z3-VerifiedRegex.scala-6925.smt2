; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!365536 () Bool)

(assert start!365536)

(declare-fun b!3902107 () Bool)

(declare-fun b_free!105737 () Bool)

(declare-fun b_next!106441 () Bool)

(assert (=> b!3902107 (= b_free!105737 (not b_next!106441))))

(declare-fun tp!1187410 () Bool)

(declare-fun b_and!295211 () Bool)

(assert (=> b!3902107 (= tp!1187410 b_and!295211)))

(declare-fun b_free!105739 () Bool)

(declare-fun b_next!106443 () Bool)

(assert (=> b!3902107 (= b_free!105739 (not b_next!106443))))

(declare-fun tp!1187416 () Bool)

(declare-fun b_and!295213 () Bool)

(assert (=> b!3902107 (= tp!1187416 b_and!295213)))

(declare-fun b!3902082 () Bool)

(declare-fun b_free!105741 () Bool)

(declare-fun b_next!106445 () Bool)

(assert (=> b!3902082 (= b_free!105741 (not b_next!106445))))

(declare-fun tp!1187403 () Bool)

(declare-fun b_and!295215 () Bool)

(assert (=> b!3902082 (= tp!1187403 b_and!295215)))

(declare-fun b_free!105743 () Bool)

(declare-fun b_next!106447 () Bool)

(assert (=> b!3902082 (= b_free!105743 (not b_next!106447))))

(declare-fun tp!1187401 () Bool)

(declare-fun b_and!295217 () Bool)

(assert (=> b!3902082 (= tp!1187401 b_and!295217)))

(declare-fun b!3902080 () Bool)

(declare-fun b_free!105745 () Bool)

(declare-fun b_next!106449 () Bool)

(assert (=> b!3902080 (= b_free!105745 (not b_next!106449))))

(declare-fun tp!1187405 () Bool)

(declare-fun b_and!295219 () Bool)

(assert (=> b!3902080 (= tp!1187405 b_and!295219)))

(declare-fun b_free!105747 () Bool)

(declare-fun b_next!106451 () Bool)

(assert (=> b!3902080 (= b_free!105747 (not b_next!106451))))

(declare-fun tp!1187402 () Bool)

(declare-fun b_and!295221 () Bool)

(assert (=> b!3902080 (= tp!1187402 b_and!295221)))

(declare-fun b!3902112 () Bool)

(declare-fun b_free!105749 () Bool)

(declare-fun b_next!106453 () Bool)

(assert (=> b!3902112 (= b_free!105749 (not b_next!106453))))

(declare-fun tp!1187398 () Bool)

(declare-fun b_and!295223 () Bool)

(assert (=> b!3902112 (= tp!1187398 b_and!295223)))

(declare-fun b_free!105751 () Bool)

(declare-fun b_next!106455 () Bool)

(assert (=> b!3902112 (= b_free!105751 (not b_next!106455))))

(declare-fun tp!1187407 () Bool)

(declare-fun b_and!295225 () Bool)

(assert (=> b!3902112 (= tp!1187407 b_and!295225)))

(declare-fun b!3902079 () Bool)

(declare-fun res!1578623 () Bool)

(declare-fun e!2412745 () Bool)

(assert (=> b!3902079 (=> (not res!1578623) (not e!2412745))))

(declare-datatypes ((C!22872 0))(
  ( (C!22873 (val!13530 Int)) )
))
(declare-datatypes ((List!41510 0))(
  ( (Nil!41386) (Cons!41386 (h!46806 C!22872) (t!320219 List!41510)) )
))
(declare-fun suffixResult!91 () List!41510)

(declare-datatypes ((LexerInterface!6027 0))(
  ( (LexerInterfaceExt!6024 (__x!25553 Int)) (Lexer!6025) )
))
(declare-fun thiss!20629 () LexerInterface!6027)

(declare-fun suffix!1176 () List!41510)

(declare-datatypes ((IArray!25303 0))(
  ( (IArray!25304 (innerList!12709 List!41510)) )
))
(declare-datatypes ((Conc!12649 0))(
  ( (Node!12649 (left!31706 Conc!12649) (right!32036 Conc!12649) (csize!25528 Int) (cheight!12860 Int)) (Leaf!19575 (xs!15955 IArray!25303) (csize!25529 Int)) (Empty!12649) )
))
(declare-datatypes ((BalanceConc!24892 0))(
  ( (BalanceConc!24893 (c!678270 Conc!12649)) )
))
(declare-datatypes ((List!41511 0))(
  ( (Nil!41387) (Cons!41387 (h!46807 (_ BitVec 16)) (t!320220 List!41511)) )
))
(declare-datatypes ((TokenValue!6668 0))(
  ( (FloatLiteralValue!13336 (text!47121 List!41511)) (TokenValueExt!6667 (__x!25554 Int)) (Broken!33340 (value!204091 List!41511)) (Object!6791) (End!6668) (Def!6668) (Underscore!6668) (Match!6668) (Else!6668) (Error!6668) (Case!6668) (If!6668) (Extends!6668) (Abstract!6668) (Class!6668) (Val!6668) (DelimiterValue!13336 (del!6728 List!41511)) (KeywordValue!6674 (value!204092 List!41511)) (CommentValue!13336 (value!204093 List!41511)) (WhitespaceValue!13336 (value!204094 List!41511)) (IndentationValue!6668 (value!204095 List!41511)) (String!47057) (Int32!6668) (Broken!33341 (value!204096 List!41511)) (Boolean!6669) (Unit!59505) (OperatorValue!6671 (op!6728 List!41511)) (IdentifierValue!13336 (value!204097 List!41511)) (IdentifierValue!13337 (value!204098 List!41511)) (WhitespaceValue!13337 (value!204099 List!41511)) (True!13336) (False!13336) (Broken!33342 (value!204100 List!41511)) (Broken!33343 (value!204101 List!41511)) (True!13337) (RightBrace!6668) (RightBracket!6668) (Colon!6668) (Null!6668) (Comma!6668) (LeftBracket!6668) (False!13337) (LeftBrace!6668) (ImaginaryLiteralValue!6668 (text!47122 List!41511)) (StringLiteralValue!20004 (value!204102 List!41511)) (EOFValue!6668 (value!204103 List!41511)) (IdentValue!6668 (value!204104 List!41511)) (DelimiterValue!13337 (value!204105 List!41511)) (DedentValue!6668 (value!204106 List!41511)) (NewLineValue!6668 (value!204107 List!41511)) (IntegerValue!20004 (value!204108 (_ BitVec 32)) (text!47123 List!41511)) (IntegerValue!20005 (value!204109 Int) (text!47124 List!41511)) (Times!6668) (Or!6668) (Equal!6668) (Minus!6668) (Broken!33344 (value!204110 List!41511)) (And!6668) (Div!6668) (LessEqual!6668) (Mod!6668) (Concat!18011) (Not!6668) (Plus!6668) (SpaceValue!6668 (value!204111 List!41511)) (IntegerValue!20006 (value!204112 Int) (text!47125 List!41511)) (StringLiteralValue!20005 (text!47126 List!41511)) (FloatLiteralValue!13337 (text!47127 List!41511)) (BytesLiteralValue!6668 (value!204113 List!41511)) (CommentValue!13337 (value!204114 List!41511)) (StringLiteralValue!20006 (value!204115 List!41511)) (ErrorTokenValue!6668 (msg!6729 List!41511)) )
))
(declare-datatypes ((Regex!11343 0))(
  ( (ElementMatch!11343 (c!678271 C!22872)) (Concat!18012 (regOne!23198 Regex!11343) (regTwo!23198 Regex!11343)) (EmptyExpr!11343) (Star!11343 (reg!11672 Regex!11343)) (EmptyLang!11343) (Union!11343 (regOne!23199 Regex!11343) (regTwo!23199 Regex!11343)) )
))
(declare-datatypes ((String!47058 0))(
  ( (String!47059 (value!204116 String)) )
))
(declare-datatypes ((TokenValueInjection!12764 0))(
  ( (TokenValueInjection!12765 (toValue!8878 Int) (toChars!8737 Int)) )
))
(declare-datatypes ((Rule!12676 0))(
  ( (Rule!12677 (regex!6438 Regex!11343) (tag!7298 String!47058) (isSeparator!6438 Bool) (transformation!6438 TokenValueInjection!12764)) )
))
(declare-datatypes ((List!41512 0))(
  ( (Nil!41388) (Cons!41388 (h!46808 Rule!12676) (t!320221 List!41512)) )
))
(declare-fun rules!2768 () List!41512)

(declare-datatypes ((Token!12014 0))(
  ( (Token!12015 (value!204117 TokenValue!6668) (rule!9348 Rule!12676) (size!31075 Int) (originalCharacters!7038 List!41510)) )
))
(declare-datatypes ((List!41513 0))(
  ( (Nil!41389) (Cons!41389 (h!46809 Token!12014) (t!320222 List!41513)) )
))
(declare-fun suffixTokens!72 () List!41513)

(declare-datatypes ((tuple2!40630 0))(
  ( (tuple2!40631 (_1!23449 List!41513) (_2!23449 List!41510)) )
))
(declare-fun lexList!1795 (LexerInterface!6027 List!41512 List!41510) tuple2!40630)

(assert (=> b!3902079 (= res!1578623 (= (lexList!1795 thiss!20629 rules!2768 suffix!1176) (tuple2!40631 suffixTokens!72 suffixResult!91)))))

(declare-fun e!2412755 () Bool)

(assert (=> b!3902080 (= e!2412755 (and tp!1187405 tp!1187402))))

(declare-datatypes ((tuple2!40632 0))(
  ( (tuple2!40633 (_1!23450 Token!12014) (_2!23450 List!41510)) )
))
(declare-datatypes ((Option!8858 0))(
  ( (None!8857) (Some!8857 (v!39171 tuple2!40632)) )
))
(declare-fun err!4401 () Option!8858)

(declare-fun e!2412761 () Bool)

(declare-fun e!2412743 () Bool)

(declare-fun b!3902081 () Bool)

(declare-fun tp!1187409 () Bool)

(declare-fun inv!21 (TokenValue!6668) Bool)

(assert (=> b!3902081 (= e!2412743 (and (inv!21 (value!204117 (_1!23450 (v!39171 err!4401)))) e!2412761 tp!1187409))))

(declare-fun e!2412757 () Bool)

(assert (=> b!3902082 (= e!2412757 (and tp!1187403 tp!1187401))))

(declare-fun b!3902083 () Bool)

(declare-fun res!1578619 () Bool)

(declare-fun e!2412731 () Bool)

(assert (=> b!3902083 (=> (not res!1578619) (not e!2412731))))

(declare-fun isEmpty!24604 (List!41512) Bool)

(assert (=> b!3902083 (= res!1578619 (not (isEmpty!24604 rules!2768)))))

(declare-fun b!3902084 () Bool)

(declare-fun res!1578634 () Bool)

(declare-fun e!2412733 () Bool)

(assert (=> b!3902084 (=> res!1578634 e!2412733)))

(declare-fun isPrefix!3533 (List!41510 List!41510) Bool)

(assert (=> b!3902084 (= res!1578634 (not (isPrefix!3533 Nil!41386 suffix!1176)))))

(declare-fun b!3902085 () Bool)

(declare-fun e!2412752 () Bool)

(declare-fun e!2412728 () Bool)

(assert (=> b!3902085 (= e!2412752 e!2412728)))

(declare-fun res!1578628 () Bool)

(assert (=> b!3902085 (=> res!1578628 e!2412728)))

(declare-fun lt!1359466 () Option!8858)

(declare-fun lt!1359470 () List!41513)

(declare-fun lt!1359475 () tuple2!40630)

(declare-fun lt!1359483 () tuple2!40630)

(assert (=> b!3902085 (= res!1578628 (or (not (= lt!1359475 (tuple2!40631 lt!1359470 (_2!23449 lt!1359483)))) (not (= lt!1359483 (tuple2!40631 (_1!23449 lt!1359483) (_2!23449 lt!1359483)))) (not (= (_2!23450 (v!39171 lt!1359466)) suffix!1176))))))

(declare-fun lt!1359463 () List!41513)

(declare-fun ++!10633 (List!41513 List!41513) List!41513)

(assert (=> b!3902085 (= lt!1359470 (++!10633 lt!1359463 (_1!23449 lt!1359483)))))

(assert (=> b!3902085 (= lt!1359463 (Cons!41389 (_1!23450 (v!39171 lt!1359466)) Nil!41389))))

(declare-fun lt!1359460 () Option!8858)

(declare-fun b!3902086 () Bool)

(declare-fun lt!1359464 () List!41510)

(declare-fun maxPrefix!3331 (LexerInterface!6027 List!41512 List!41510) Option!8858)

(assert (=> b!3902086 (= lt!1359460 (maxPrefix!3331 thiss!20629 (t!320221 rules!2768) lt!1359464))))

(declare-fun lt!1359461 () Option!8858)

(declare-fun call!283880 () Option!8858)

(assert (=> b!3902086 (= lt!1359461 call!283880)))

(declare-fun e!2412753 () Option!8858)

(get-info :version)

(assert (=> b!3902086 (= e!2412753 (ite (and ((_ is None!8857) lt!1359461) ((_ is None!8857) lt!1359460)) None!8857 (ite ((_ is None!8857) lt!1359460) lt!1359461 (ite ((_ is None!8857) lt!1359461) lt!1359460 (ite (>= (size!31075 (_1!23450 (v!39171 lt!1359461))) (size!31075 (_1!23450 (v!39171 lt!1359460)))) (Some!8857 (v!39171 lt!1359461)) lt!1359460)))))))

(declare-fun b!3902087 () Bool)

(declare-fun res!1578629 () Bool)

(assert (=> b!3902087 (=> (not res!1578629) (not e!2412731))))

(declare-fun prefix!426 () List!41510)

(declare-fun isEmpty!24605 (List!41510) Bool)

(assert (=> b!3902087 (= res!1578629 (not (isEmpty!24605 prefix!426)))))

(declare-fun b!3902088 () Bool)

(declare-fun e!2412729 () Option!8858)

(assert (=> b!3902088 (= e!2412729 e!2412753)))

(declare-fun c!678268 () Bool)

(assert (=> b!3902088 (= c!678268 ((_ is Cons!41388) rules!2768))))

(declare-fun e!2412764 () Bool)

(declare-fun tp!1187412 () Bool)

(declare-fun e!2412759 () Bool)

(declare-fun b!3902089 () Bool)

(declare-fun inv!55559 (Token!12014) Bool)

(assert (=> b!3902089 (= e!2412759 (and (inv!55559 (h!46809 suffixTokens!72)) e!2412764 tp!1187412))))

(declare-fun b!3902090 () Bool)

(declare-fun tp!1187400 () Bool)

(declare-fun e!2412742 () Bool)

(declare-fun prefixTokens!80 () List!41513)

(declare-fun e!2412763 () Bool)

(assert (=> b!3902090 (= e!2412763 (and (inv!55559 (h!46809 prefixTokens!80)) e!2412742 tp!1187400))))

(declare-fun b!3902091 () Bool)

(declare-fun e!2412746 () Bool)

(assert (=> b!3902091 (= e!2412746 (= lt!1359466 e!2412729))))

(declare-fun c!678269 () Bool)

(assert (=> b!3902091 (= c!678269 (and ((_ is Cons!41388) rules!2768) ((_ is Nil!41388) (t!320221 rules!2768))))))

(declare-fun e!2412734 () Bool)

(declare-fun tp!1187397 () Bool)

(declare-fun b!3902092 () Bool)

(declare-fun e!2412750 () Bool)

(declare-fun inv!55556 (String!47058) Bool)

(declare-fun inv!55560 (TokenValueInjection!12764) Bool)

(assert (=> b!3902092 (= e!2412734 (and tp!1187397 (inv!55556 (tag!7298 (rule!9348 (h!46809 suffixTokens!72)))) (inv!55560 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) e!2412750))))

(declare-fun tp!1187411 () Bool)

(declare-fun b!3902093 () Bool)

(declare-fun e!2412748 () Bool)

(assert (=> b!3902093 (= e!2412748 (and tp!1187411 (inv!55556 (tag!7298 (rule!9348 (h!46809 prefixTokens!80)))) (inv!55560 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) e!2412755))))

(declare-fun e!2412727 () Bool)

(declare-fun tp!1187406 () Bool)

(declare-fun b!3902094 () Bool)

(assert (=> b!3902094 (= e!2412727 (and (inv!55559 (_1!23450 (v!39171 err!4401))) e!2412743 tp!1187406))))

(declare-fun b!3902095 () Bool)

(declare-fun e!2412760 () Bool)

(declare-fun tp_is_empty!19657 () Bool)

(declare-fun tp!1187413 () Bool)

(assert (=> b!3902095 (= e!2412760 (and tp_is_empty!19657 tp!1187413))))

(declare-fun res!1578625 () Bool)

(assert (=> start!365536 (=> (not res!1578625) (not e!2412731))))

(assert (=> start!365536 (= res!1578625 ((_ is Lexer!6025) thiss!20629))))

(assert (=> start!365536 e!2412731))

(declare-fun e!2412758 () Bool)

(assert (=> start!365536 e!2412758))

(assert (=> start!365536 true))

(assert (=> start!365536 e!2412760))

(declare-fun e!2412737 () Bool)

(assert (=> start!365536 e!2412737))

(assert (=> start!365536 e!2412763))

(assert (=> start!365536 e!2412759))

(declare-fun e!2412740 () Bool)

(assert (=> start!365536 e!2412740))

(declare-fun b!3902096 () Bool)

(declare-fun tp!1187415 () Bool)

(assert (=> b!3902096 (= e!2412758 (and tp_is_empty!19657 tp!1187415))))

(declare-fun b!3902097 () Bool)

(declare-fun e!2412749 () Bool)

(assert (=> b!3902097 (= e!2412749 e!2412733)))

(declare-fun res!1578633 () Bool)

(assert (=> b!3902097 (=> res!1578633 e!2412733)))

(declare-fun lt!1359482 () List!41510)

(declare-fun lt!1359478 () List!41513)

(assert (=> b!3902097 (= res!1578633 (or (not (= lt!1359478 (_1!23449 lt!1359475))) (not (= lt!1359478 lt!1359470)) (not (= prefixTokens!80 lt!1359463)) (not (= prefix!426 lt!1359482))))))

(assert (=> b!3902097 (= lt!1359482 prefix!426)))

(declare-datatypes ((Unit!59506 0))(
  ( (Unit!59507) )
))
(declare-fun lt!1359462 () Unit!59506)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!510 (List!41510 List!41510 List!41510 List!41510) Unit!59506)

(assert (=> b!3902097 (= lt!1359462 (lemmaConcatSameAndSameSizesThenSameLists!510 lt!1359482 (_2!23450 (v!39171 lt!1359466)) prefix!426 suffix!1176))))

(declare-fun tp!1187396 () Bool)

(declare-fun b!3902098 () Bool)

(assert (=> b!3902098 (= e!2412764 (and (inv!21 (value!204117 (h!46809 suffixTokens!72))) e!2412734 tp!1187396))))

(declare-fun b!3902099 () Bool)

(assert (=> b!3902099 (= e!2412728 e!2412749)))

(declare-fun res!1578626 () Bool)

(assert (=> b!3902099 (=> res!1578626 e!2412749)))

(assert (=> b!3902099 (= res!1578626 (not (= lt!1359466 (Some!8857 (tuple2!40633 (_1!23450 (v!39171 lt!1359466)) (_2!23450 (v!39171 lt!1359466)))))))))

(assert (=> b!3902099 e!2412746))

(declare-fun res!1578624 () Bool)

(assert (=> b!3902099 (=> (not res!1578624) (not e!2412746))))

(assert (=> b!3902099 (= res!1578624 (isPrefix!3533 lt!1359464 lt!1359464))))

(declare-fun lt!1359480 () Unit!59506)

(declare-fun lemmaIsPrefixRefl!2240 (List!41510 List!41510) Unit!59506)

(assert (=> b!3902099 (= lt!1359480 (lemmaIsPrefixRefl!2240 lt!1359464 lt!1359464))))

(assert (=> b!3902099 (= lt!1359475 (tuple2!40631 (Cons!41389 (_1!23450 (v!39171 lt!1359466)) (_1!23449 lt!1359483)) (_2!23449 lt!1359483)))))

(declare-fun b!3902100 () Bool)

(declare-fun e!2412735 () Bool)

(declare-fun e!2412751 () Bool)

(assert (=> b!3902100 (= e!2412735 e!2412751)))

(declare-fun res!1578630 () Bool)

(assert (=> b!3902100 (=> res!1578630 e!2412751)))

(declare-fun lt!1359474 () tuple2!40632)

(assert (=> b!3902100 (= res!1578630 (not (= (_1!23450 lt!1359474) (_1!23450 (v!39171 lt!1359466)))))))

(declare-fun lt!1359471 () Option!8858)

(declare-fun get!13683 (Option!8858) tuple2!40632)

(assert (=> b!3902100 (= lt!1359474 (get!13683 lt!1359471))))

(declare-fun b!3902101 () Bool)

(declare-fun e!2412741 () Bool)

(declare-fun tp!1187395 () Bool)

(assert (=> b!3902101 (= e!2412737 (and e!2412741 tp!1187395))))

(declare-fun bm!283875 () Bool)

(declare-fun maxPrefixOneRule!2407 (LexerInterface!6027 Rule!12676 List!41510) Option!8858)

(assert (=> bm!283875 (= call!283880 (maxPrefixOneRule!2407 thiss!20629 (h!46808 rules!2768) lt!1359464))))

(declare-fun b!3902102 () Bool)

(assert (=> b!3902102 (= e!2412733 e!2412735)))

(declare-fun res!1578631 () Bool)

(assert (=> b!3902102 (=> res!1578631 e!2412735)))

(declare-fun isDefined!6909 (Option!8858) Bool)

(assert (=> b!3902102 (= res!1578631 (not (isDefined!6909 lt!1359471)))))

(assert (=> b!3902102 (= lt!1359471 (maxPrefix!3331 thiss!20629 rules!2768 prefix!426))))

(declare-fun lt!1359465 () Option!8858)

(declare-fun ++!10634 (List!41510 List!41510) List!41510)

(assert (=> b!3902102 (= (maxPrefix!3331 thiss!20629 rules!2768 (++!10634 prefix!426 Nil!41386)) lt!1359465)))

(assert (=> b!3902102 (= lt!1359465 (Some!8857 (tuple2!40633 (_1!23450 (v!39171 lt!1359466)) Nil!41386)))))

(declare-fun lt!1359477 () Unit!59506)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!40 (LexerInterface!6027 List!41512 List!41510 List!41510 List!41510 Token!12014 List!41510 List!41510) Unit!59506)

(assert (=> b!3902102 (= lt!1359477 (lemmaMaxPrefixThenWithShorterSuffix!40 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41386 (_1!23450 (v!39171 lt!1359466)) suffix!1176 Nil!41386))))

(declare-fun b!3902103 () Bool)

(declare-fun res!1578620 () Bool)

(assert (=> b!3902103 (=> (not res!1578620) (not e!2412731))))

(declare-fun rulesInvariant!5370 (LexerInterface!6027 List!41512) Bool)

(assert (=> b!3902103 (= res!1578620 (rulesInvariant!5370 thiss!20629 rules!2768))))

(declare-fun b!3902104 () Bool)

(declare-fun e!2412754 () Bool)

(assert (=> b!3902104 (= e!2412754 (not e!2412752))))

(declare-fun res!1578627 () Bool)

(assert (=> b!3902104 (=> res!1578627 e!2412752)))

(declare-fun lt!1359467 () List!41510)

(assert (=> b!3902104 (= res!1578627 (not (= lt!1359467 lt!1359464)))))

(assert (=> b!3902104 (= lt!1359483 (lexList!1795 thiss!20629 rules!2768 (_2!23450 (v!39171 lt!1359466))))))

(declare-fun lt!1359481 () List!41510)

(declare-fun lt!1359468 () Int)

(declare-fun lt!1359473 () TokenValue!6668)

(assert (=> b!3902104 (and (= (size!31075 (_1!23450 (v!39171 lt!1359466))) lt!1359468) (= (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466))) lt!1359482) (= (tuple2!40633 (_1!23450 (v!39171 lt!1359466)) (_2!23450 (v!39171 lt!1359466))) (tuple2!40633 (Token!12015 lt!1359473 (rule!9348 (_1!23450 (v!39171 lt!1359466))) lt!1359468 lt!1359482) lt!1359481)))))

(declare-fun size!31076 (List!41510) Int)

(assert (=> b!3902104 (= lt!1359468 (size!31076 lt!1359482))))

(declare-fun e!2412738 () Bool)

(assert (=> b!3902104 e!2412738))

(declare-fun res!1578632 () Bool)

(assert (=> b!3902104 (=> (not res!1578632) (not e!2412738))))

(assert (=> b!3902104 (= res!1578632 (= (value!204117 (_1!23450 (v!39171 lt!1359466))) lt!1359473))))

(declare-fun apply!9677 (TokenValueInjection!12764 BalanceConc!24892) TokenValue!6668)

(declare-fun seqFromList!4705 (List!41510) BalanceConc!24892)

(assert (=> b!3902104 (= lt!1359473 (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))) (seqFromList!4705 lt!1359482)))))

(assert (=> b!3902104 (= (_2!23450 (v!39171 lt!1359466)) lt!1359481)))

(declare-fun lt!1359472 () Unit!59506)

(declare-fun lemmaSamePrefixThenSameSuffix!1754 (List!41510 List!41510 List!41510 List!41510 List!41510) Unit!59506)

(assert (=> b!3902104 (= lt!1359472 (lemmaSamePrefixThenSameSuffix!1754 lt!1359482 (_2!23450 (v!39171 lt!1359466)) lt!1359482 lt!1359481 lt!1359464))))

(declare-fun getSuffix!1988 (List!41510 List!41510) List!41510)

(assert (=> b!3902104 (= lt!1359481 (getSuffix!1988 lt!1359464 lt!1359482))))

(assert (=> b!3902104 (isPrefix!3533 lt!1359482 lt!1359467)))

(assert (=> b!3902104 (= lt!1359467 (++!10634 lt!1359482 (_2!23450 (v!39171 lt!1359466))))))

(declare-fun lt!1359479 () Unit!59506)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2396 (List!41510 List!41510) Unit!59506)

(assert (=> b!3902104 (= lt!1359479 (lemmaConcatTwoListThenFirstIsPrefix!2396 lt!1359482 (_2!23450 (v!39171 lt!1359466))))))

(declare-fun list!15384 (BalanceConc!24892) List!41510)

(declare-fun charsOf!4262 (Token!12014) BalanceConc!24892)

(assert (=> b!3902104 (= lt!1359482 (list!15384 (charsOf!4262 (_1!23450 (v!39171 lt!1359466)))))))

(declare-fun ruleValid!2386 (LexerInterface!6027 Rule!12676) Bool)

(assert (=> b!3902104 (ruleValid!2386 thiss!20629 (rule!9348 (_1!23450 (v!39171 lt!1359466))))))

(declare-fun lt!1359476 () Unit!59506)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1466 (LexerInterface!6027 Rule!12676 List!41512) Unit!59506)

(assert (=> b!3902104 (= lt!1359476 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1466 thiss!20629 (rule!9348 (_1!23450 (v!39171 lt!1359466))) rules!2768))))

(declare-fun lt!1359469 () Unit!59506)

(declare-fun lemmaCharactersSize!1095 (Token!12014) Unit!59506)

(assert (=> b!3902104 (= lt!1359469 (lemmaCharactersSize!1095 (_1!23450 (v!39171 lt!1359466))))))

(declare-fun b!3902105 () Bool)

(assert (=> b!3902105 (= e!2412729 call!283880)))

(declare-fun b!3902106 () Bool)

(assert (=> b!3902106 (= e!2412738 (= (size!31075 (_1!23450 (v!39171 lt!1359466))) (size!31076 (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466))))))))

(declare-fun e!2412744 () Bool)

(assert (=> b!3902107 (= e!2412744 (and tp!1187410 tp!1187416))))

(declare-fun b!3902108 () Bool)

(assert (=> b!3902108 (= e!2412731 e!2412745)))

(declare-fun res!1578636 () Bool)

(assert (=> b!3902108 (=> (not res!1578636) (not e!2412745))))

(assert (=> b!3902108 (= res!1578636 (= lt!1359475 (tuple2!40631 lt!1359478 suffixResult!91)))))

(assert (=> b!3902108 (= lt!1359475 (lexList!1795 thiss!20629 rules!2768 lt!1359464))))

(assert (=> b!3902108 (= lt!1359478 (++!10633 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3902108 (= lt!1359464 (++!10634 prefix!426 suffix!1176))))

(declare-fun tp!1187414 () Bool)

(declare-fun b!3902109 () Bool)

(assert (=> b!3902109 (= e!2412742 (and (inv!21 (value!204117 (h!46809 prefixTokens!80))) e!2412748 tp!1187414))))

(declare-fun b!3902110 () Bool)

(declare-fun res!1578621 () Bool)

(assert (=> b!3902110 (=> (not res!1578621) (not e!2412731))))

(declare-fun isEmpty!24606 (List!41513) Bool)

(assert (=> b!3902110 (= res!1578621 (not (isEmpty!24606 prefixTokens!80)))))

(declare-fun tp!1187408 () Bool)

(declare-fun b!3902111 () Bool)

(assert (=> b!3902111 (= e!2412741 (and tp!1187408 (inv!55556 (tag!7298 (h!46808 rules!2768))) (inv!55560 (transformation!6438 (h!46808 rules!2768))) e!2412757))))

(assert (=> b!3902112 (= e!2412750 (and tp!1187398 tp!1187407))))

(declare-fun tp!1187404 () Bool)

(declare-fun b!3902113 () Bool)

(assert (=> b!3902113 (= e!2412761 (and tp!1187404 (inv!55556 (tag!7298 (rule!9348 (_1!23450 (v!39171 err!4401))))) (inv!55560 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) e!2412744))))

(declare-fun b!3902114 () Bool)

(declare-fun tp!1187399 () Bool)

(assert (=> b!3902114 (= e!2412740 (and tp_is_empty!19657 tp!1187399))))

(declare-fun b!3902115 () Bool)

(declare-fun res!1578622 () Bool)

(assert (=> b!3902115 (=> res!1578622 e!2412751)))

(assert (=> b!3902115 (= res!1578622 (not (isEmpty!24605 (_2!23450 lt!1359474))))))

(declare-fun b!3902116 () Bool)

(assert (=> b!3902116 (= e!2412751 (= lt!1359471 lt!1359465))))

(declare-fun b!3902117 () Bool)

(assert (=> b!3902117 true))

(assert (=> b!3902117 e!2412727))

(assert (=> b!3902117 (= e!2412753 err!4401)))

(declare-fun b!3902118 () Bool)

(assert (=> b!3902118 (= e!2412745 e!2412754)))

(declare-fun res!1578635 () Bool)

(assert (=> b!3902118 (=> (not res!1578635) (not e!2412754))))

(assert (=> b!3902118 (= res!1578635 ((_ is Some!8857) lt!1359466))))

(assert (=> b!3902118 (= lt!1359466 (maxPrefix!3331 thiss!20629 rules!2768 lt!1359464))))

(assert (= (and start!365536 res!1578625) b!3902083))

(assert (= (and b!3902083 res!1578619) b!3902103))

(assert (= (and b!3902103 res!1578620) b!3902110))

(assert (= (and b!3902110 res!1578621) b!3902087))

(assert (= (and b!3902087 res!1578629) b!3902108))

(assert (= (and b!3902108 res!1578636) b!3902079))

(assert (= (and b!3902079 res!1578623) b!3902118))

(assert (= (and b!3902118 res!1578635) b!3902104))

(assert (= (and b!3902104 res!1578632) b!3902106))

(assert (= (and b!3902104 (not res!1578627)) b!3902085))

(assert (= (and b!3902085 (not res!1578628)) b!3902099))

(assert (= (and b!3902099 res!1578624) b!3902091))

(assert (= (and b!3902091 c!678269) b!3902105))

(assert (= (and b!3902091 (not c!678269)) b!3902088))

(assert (= (and b!3902088 c!678268) b!3902086))

(assert (= (and b!3902088 (not c!678268)) b!3902117))

(assert (= b!3902113 b!3902107))

(assert (= b!3902081 b!3902113))

(assert (= b!3902094 b!3902081))

(assert (= (and b!3902117 ((_ is Some!8857) err!4401)) b!3902094))

(assert (= (or b!3902105 b!3902086) bm!283875))

(assert (= (and b!3902099 (not res!1578626)) b!3902097))

(assert (= (and b!3902097 (not res!1578633)) b!3902084))

(assert (= (and b!3902084 (not res!1578634)) b!3902102))

(assert (= (and b!3902102 (not res!1578631)) b!3902100))

(assert (= (and b!3902100 (not res!1578630)) b!3902115))

(assert (= (and b!3902115 (not res!1578622)) b!3902116))

(assert (= (and start!365536 ((_ is Cons!41386) suffixResult!91)) b!3902096))

(assert (= (and start!365536 ((_ is Cons!41386) suffix!1176)) b!3902095))

(assert (= b!3902111 b!3902082))

(assert (= b!3902101 b!3902111))

(assert (= (and start!365536 ((_ is Cons!41388) rules!2768)) b!3902101))

(assert (= b!3902093 b!3902080))

(assert (= b!3902109 b!3902093))

(assert (= b!3902090 b!3902109))

(assert (= (and start!365536 ((_ is Cons!41389) prefixTokens!80)) b!3902090))

(assert (= b!3902092 b!3902112))

(assert (= b!3902098 b!3902092))

(assert (= b!3902089 b!3902098))

(assert (= (and start!365536 ((_ is Cons!41389) suffixTokens!72)) b!3902089))

(assert (= (and start!365536 ((_ is Cons!41386) prefix!426)) b!3902114))

(declare-fun m!4462453 () Bool)

(assert (=> b!3902099 m!4462453))

(declare-fun m!4462455 () Bool)

(assert (=> b!3902099 m!4462455))

(declare-fun m!4462457 () Bool)

(assert (=> b!3902111 m!4462457))

(declare-fun m!4462459 () Bool)

(assert (=> b!3902111 m!4462459))

(declare-fun m!4462461 () Bool)

(assert (=> b!3902083 m!4462461))

(declare-fun m!4462463 () Bool)

(assert (=> b!3902118 m!4462463))

(declare-fun m!4462465 () Bool)

(assert (=> b!3902098 m!4462465))

(declare-fun m!4462467 () Bool)

(assert (=> b!3902079 m!4462467))

(declare-fun m!4462469 () Bool)

(assert (=> b!3902110 m!4462469))

(declare-fun m!4462471 () Bool)

(assert (=> b!3902081 m!4462471))

(declare-fun m!4462473 () Bool)

(assert (=> b!3902093 m!4462473))

(declare-fun m!4462475 () Bool)

(assert (=> b!3902093 m!4462475))

(declare-fun m!4462477 () Bool)

(assert (=> b!3902102 m!4462477))

(declare-fun m!4462479 () Bool)

(assert (=> b!3902102 m!4462479))

(assert (=> b!3902102 m!4462477))

(declare-fun m!4462481 () Bool)

(assert (=> b!3902102 m!4462481))

(declare-fun m!4462483 () Bool)

(assert (=> b!3902102 m!4462483))

(declare-fun m!4462485 () Bool)

(assert (=> b!3902102 m!4462485))

(declare-fun m!4462487 () Bool)

(assert (=> b!3902113 m!4462487))

(declare-fun m!4462489 () Bool)

(assert (=> b!3902113 m!4462489))

(declare-fun m!4462491 () Bool)

(assert (=> b!3902089 m!4462491))

(declare-fun m!4462493 () Bool)

(assert (=> b!3902094 m!4462493))

(declare-fun m!4462495 () Bool)

(assert (=> bm!283875 m!4462495))

(declare-fun m!4462497 () Bool)

(assert (=> b!3902086 m!4462497))

(declare-fun m!4462499 () Bool)

(assert (=> b!3902087 m!4462499))

(declare-fun m!4462501 () Bool)

(assert (=> b!3902100 m!4462501))

(declare-fun m!4462503 () Bool)

(assert (=> b!3902090 m!4462503))

(declare-fun m!4462505 () Bool)

(assert (=> b!3902103 m!4462505))

(declare-fun m!4462507 () Bool)

(assert (=> b!3902092 m!4462507))

(declare-fun m!4462509 () Bool)

(assert (=> b!3902092 m!4462509))

(declare-fun m!4462511 () Bool)

(assert (=> b!3902106 m!4462511))

(declare-fun m!4462513 () Bool)

(assert (=> b!3902115 m!4462513))

(declare-fun m!4462515 () Bool)

(assert (=> b!3902085 m!4462515))

(declare-fun m!4462517 () Bool)

(assert (=> b!3902104 m!4462517))

(declare-fun m!4462519 () Bool)

(assert (=> b!3902104 m!4462519))

(declare-fun m!4462521 () Bool)

(assert (=> b!3902104 m!4462521))

(declare-fun m!4462523 () Bool)

(assert (=> b!3902104 m!4462523))

(declare-fun m!4462525 () Bool)

(assert (=> b!3902104 m!4462525))

(declare-fun m!4462527 () Bool)

(assert (=> b!3902104 m!4462527))

(declare-fun m!4462529 () Bool)

(assert (=> b!3902104 m!4462529))

(declare-fun m!4462531 () Bool)

(assert (=> b!3902104 m!4462531))

(declare-fun m!4462533 () Bool)

(assert (=> b!3902104 m!4462533))

(declare-fun m!4462535 () Bool)

(assert (=> b!3902104 m!4462535))

(declare-fun m!4462537 () Bool)

(assert (=> b!3902104 m!4462537))

(declare-fun m!4462539 () Bool)

(assert (=> b!3902104 m!4462539))

(assert (=> b!3902104 m!4462531))

(assert (=> b!3902104 m!4462535))

(declare-fun m!4462541 () Bool)

(assert (=> b!3902104 m!4462541))

(declare-fun m!4462543 () Bool)

(assert (=> b!3902104 m!4462543))

(declare-fun m!4462545 () Bool)

(assert (=> b!3902097 m!4462545))

(declare-fun m!4462547 () Bool)

(assert (=> b!3902108 m!4462547))

(declare-fun m!4462549 () Bool)

(assert (=> b!3902108 m!4462549))

(declare-fun m!4462551 () Bool)

(assert (=> b!3902108 m!4462551))

(declare-fun m!4462553 () Bool)

(assert (=> b!3902084 m!4462553))

(declare-fun m!4462555 () Bool)

(assert (=> b!3902109 m!4462555))

(check-sat b_and!295213 (not b_next!106447) (not b!3902098) (not b!3902111) (not b!3902110) (not b!3902079) (not b!3902087) (not b!3902085) b_and!295223 (not b!3902108) (not b!3902096) (not b!3902092) b_and!295219 (not b!3902089) b_and!295225 (not b!3902104) (not b!3902103) b_and!295215 (not b!3902081) (not b_next!106449) (not b_next!106443) b_and!295221 (not b!3902084) (not b!3902083) (not b!3902097) b_and!295211 (not b_next!106455) (not b_next!106445) (not b!3902094) (not b!3902113) (not b!3902095) (not b!3902114) (not b!3902106) (not b!3902099) (not bm!283875) (not b!3902102) (not b!3902101) (not b!3902109) (not b!3902118) (not b_next!106451) b_and!295217 (not b!3902090) tp_is_empty!19657 (not b_next!106453) (not b_next!106441) (not b!3902086) (not b!3902115) (not b!3902100) (not b!3902093))
(check-sat b_and!295225 b_and!295213 (not b_next!106447) b_and!295215 b_and!295223 (not b_next!106445) b_and!295219 (not b_next!106449) (not b_next!106443) b_and!295221 b_and!295211 (not b_next!106455) (not b_next!106451) b_and!295217 (not b_next!106453) (not b_next!106441))
(get-model)

(declare-fun b!3902160 () Bool)

(declare-fun e!2412794 () Bool)

(declare-fun e!2412793 () Bool)

(assert (=> b!3902160 (= e!2412794 e!2412793)))

(declare-fun res!1578671 () Bool)

(assert (=> b!3902160 (=> (not res!1578671) (not e!2412793))))

(assert (=> b!3902160 (= res!1578671 (not ((_ is Nil!41386) suffix!1176)))))

(declare-fun d!1156452 () Bool)

(declare-fun e!2412795 () Bool)

(assert (=> d!1156452 e!2412795))

(declare-fun res!1578670 () Bool)

(assert (=> d!1156452 (=> res!1578670 e!2412795)))

(declare-fun lt!1359486 () Bool)

(assert (=> d!1156452 (= res!1578670 (not lt!1359486))))

(assert (=> d!1156452 (= lt!1359486 e!2412794)))

(declare-fun res!1578669 () Bool)

(assert (=> d!1156452 (=> res!1578669 e!2412794)))

(assert (=> d!1156452 (= res!1578669 ((_ is Nil!41386) Nil!41386))))

(assert (=> d!1156452 (= (isPrefix!3533 Nil!41386 suffix!1176) lt!1359486)))

(declare-fun b!3902163 () Bool)

(assert (=> b!3902163 (= e!2412795 (>= (size!31076 suffix!1176) (size!31076 Nil!41386)))))

(declare-fun b!3902162 () Bool)

(declare-fun tail!5969 (List!41510) List!41510)

(assert (=> b!3902162 (= e!2412793 (isPrefix!3533 (tail!5969 Nil!41386) (tail!5969 suffix!1176)))))

(declare-fun b!3902161 () Bool)

(declare-fun res!1578668 () Bool)

(assert (=> b!3902161 (=> (not res!1578668) (not e!2412793))))

(declare-fun head!8252 (List!41510) C!22872)

(assert (=> b!3902161 (= res!1578668 (= (head!8252 Nil!41386) (head!8252 suffix!1176)))))

(assert (= (and d!1156452 (not res!1578669)) b!3902160))

(assert (= (and b!3902160 res!1578671) b!3902161))

(assert (= (and b!3902161 res!1578668) b!3902162))

(assert (= (and d!1156452 (not res!1578670)) b!3902163))

(declare-fun m!4462587 () Bool)

(assert (=> b!3902163 m!4462587))

(declare-fun m!4462589 () Bool)

(assert (=> b!3902163 m!4462589))

(declare-fun m!4462591 () Bool)

(assert (=> b!3902162 m!4462591))

(declare-fun m!4462593 () Bool)

(assert (=> b!3902162 m!4462593))

(assert (=> b!3902162 m!4462591))

(assert (=> b!3902162 m!4462593))

(declare-fun m!4462595 () Bool)

(assert (=> b!3902162 m!4462595))

(declare-fun m!4462597 () Bool)

(assert (=> b!3902161 m!4462597))

(declare-fun m!4462599 () Bool)

(assert (=> b!3902161 m!4462599))

(assert (=> b!3902084 d!1156452))

(declare-fun b!3902174 () Bool)

(declare-fun res!1578676 () Bool)

(declare-fun e!2412801 () Bool)

(assert (=> b!3902174 (=> (not res!1578676) (not e!2412801))))

(declare-fun lt!1359489 () List!41513)

(declare-fun size!31079 (List!41513) Int)

(assert (=> b!3902174 (= res!1578676 (= (size!31079 lt!1359489) (+ (size!31079 lt!1359463) (size!31079 (_1!23449 lt!1359483)))))))

(declare-fun d!1156456 () Bool)

(assert (=> d!1156456 e!2412801))

(declare-fun res!1578677 () Bool)

(assert (=> d!1156456 (=> (not res!1578677) (not e!2412801))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6200 (List!41513) (InoxSet Token!12014))

(assert (=> d!1156456 (= res!1578677 (= (content!6200 lt!1359489) ((_ map or) (content!6200 lt!1359463) (content!6200 (_1!23449 lt!1359483)))))))

(declare-fun e!2412800 () List!41513)

(assert (=> d!1156456 (= lt!1359489 e!2412800)))

(declare-fun c!678280 () Bool)

(assert (=> d!1156456 (= c!678280 ((_ is Nil!41389) lt!1359463))))

(assert (=> d!1156456 (= (++!10633 lt!1359463 (_1!23449 lt!1359483)) lt!1359489)))

(declare-fun b!3902173 () Bool)

(assert (=> b!3902173 (= e!2412800 (Cons!41389 (h!46809 lt!1359463) (++!10633 (t!320222 lt!1359463) (_1!23449 lt!1359483))))))

(declare-fun b!3902172 () Bool)

(assert (=> b!3902172 (= e!2412800 (_1!23449 lt!1359483))))

(declare-fun b!3902175 () Bool)

(assert (=> b!3902175 (= e!2412801 (or (not (= (_1!23449 lt!1359483) Nil!41389)) (= lt!1359489 lt!1359463)))))

(assert (= (and d!1156456 c!678280) b!3902172))

(assert (= (and d!1156456 (not c!678280)) b!3902173))

(assert (= (and d!1156456 res!1578677) b!3902174))

(assert (= (and b!3902174 res!1578676) b!3902175))

(declare-fun m!4462601 () Bool)

(assert (=> b!3902174 m!4462601))

(declare-fun m!4462603 () Bool)

(assert (=> b!3902174 m!4462603))

(declare-fun m!4462605 () Bool)

(assert (=> b!3902174 m!4462605))

(declare-fun m!4462607 () Bool)

(assert (=> d!1156456 m!4462607))

(declare-fun m!4462609 () Bool)

(assert (=> d!1156456 m!4462609))

(declare-fun m!4462611 () Bool)

(assert (=> d!1156456 m!4462611))

(declare-fun m!4462613 () Bool)

(assert (=> b!3902173 m!4462613))

(assert (=> b!3902085 d!1156456))

(declare-fun d!1156458 () Bool)

(declare-fun lt!1359492 () Int)

(assert (=> d!1156458 (>= lt!1359492 0)))

(declare-fun e!2412804 () Int)

(assert (=> d!1156458 (= lt!1359492 e!2412804)))

(declare-fun c!678283 () Bool)

(assert (=> d!1156458 (= c!678283 ((_ is Nil!41386) (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466)))))))

(assert (=> d!1156458 (= (size!31076 (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466)))) lt!1359492)))

(declare-fun b!3902180 () Bool)

(assert (=> b!3902180 (= e!2412804 0)))

(declare-fun b!3902181 () Bool)

(assert (=> b!3902181 (= e!2412804 (+ 1 (size!31076 (t!320219 (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466)))))))))

(assert (= (and d!1156458 c!678283) b!3902180))

(assert (= (and d!1156458 (not c!678283)) b!3902181))

(declare-fun m!4462615 () Bool)

(assert (=> b!3902181 m!4462615))

(assert (=> b!3902106 d!1156458))

(declare-fun b!3902272 () Bool)

(declare-fun res!1578746 () Bool)

(declare-fun e!2412842 () Bool)

(assert (=> b!3902272 (=> (not res!1578746) (not e!2412842))))

(declare-fun lt!1359539 () Option!8858)

(assert (=> b!3902272 (= res!1578746 (= (value!204117 (_1!23450 (get!13683 lt!1359539))) (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (get!13683 lt!1359539)))) (seqFromList!4705 (originalCharacters!7038 (_1!23450 (get!13683 lt!1359539)))))))))

(declare-fun b!3902273 () Bool)

(declare-fun e!2412841 () Bool)

(assert (=> b!3902273 (= e!2412841 e!2412842)))

(declare-fun res!1578750 () Bool)

(assert (=> b!3902273 (=> (not res!1578750) (not e!2412842))))

(assert (=> b!3902273 (= res!1578750 (isDefined!6909 lt!1359539))))

(declare-fun b!3902274 () Bool)

(declare-fun res!1578751 () Bool)

(assert (=> b!3902274 (=> (not res!1578751) (not e!2412842))))

(assert (=> b!3902274 (= res!1578751 (= (++!10634 (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359539)))) (_2!23450 (get!13683 lt!1359539))) lt!1359464))))

(declare-fun b!3902275 () Bool)

(declare-fun contains!8319 (List!41512 Rule!12676) Bool)

(assert (=> b!3902275 (= e!2412842 (contains!8319 (t!320221 rules!2768) (rule!9348 (_1!23450 (get!13683 lt!1359539)))))))

(declare-fun b!3902277 () Bool)

(declare-fun res!1578748 () Bool)

(assert (=> b!3902277 (=> (not res!1578748) (not e!2412842))))

(assert (=> b!3902277 (= res!1578748 (< (size!31076 (_2!23450 (get!13683 lt!1359539))) (size!31076 lt!1359464)))))

(declare-fun b!3902276 () Bool)

(declare-fun res!1578749 () Bool)

(assert (=> b!3902276 (=> (not res!1578749) (not e!2412842))))

(declare-fun matchR!5438 (Regex!11343 List!41510) Bool)

(assert (=> b!3902276 (= res!1578749 (matchR!5438 (regex!6438 (rule!9348 (_1!23450 (get!13683 lt!1359539)))) (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359539))))))))

(declare-fun d!1156460 () Bool)

(assert (=> d!1156460 e!2412841))

(declare-fun res!1578752 () Bool)

(assert (=> d!1156460 (=> res!1578752 e!2412841)))

(declare-fun isEmpty!24608 (Option!8858) Bool)

(assert (=> d!1156460 (= res!1578752 (isEmpty!24608 lt!1359539))))

(declare-fun e!2412843 () Option!8858)

(assert (=> d!1156460 (= lt!1359539 e!2412843)))

(declare-fun c!678295 () Bool)

(assert (=> d!1156460 (= c!678295 (and ((_ is Cons!41388) (t!320221 rules!2768)) ((_ is Nil!41388) (t!320221 (t!320221 rules!2768)))))))

(declare-fun lt!1359542 () Unit!59506)

(declare-fun lt!1359543 () Unit!59506)

(assert (=> d!1156460 (= lt!1359542 lt!1359543)))

(assert (=> d!1156460 (isPrefix!3533 lt!1359464 lt!1359464)))

(assert (=> d!1156460 (= lt!1359543 (lemmaIsPrefixRefl!2240 lt!1359464 lt!1359464))))

(declare-fun rulesValidInductive!2310 (LexerInterface!6027 List!41512) Bool)

(assert (=> d!1156460 (rulesValidInductive!2310 thiss!20629 (t!320221 rules!2768))))

(assert (=> d!1156460 (= (maxPrefix!3331 thiss!20629 (t!320221 rules!2768) lt!1359464) lt!1359539)))

(declare-fun b!3902278 () Bool)

(declare-fun call!283886 () Option!8858)

(assert (=> b!3902278 (= e!2412843 call!283886)))

(declare-fun b!3902279 () Bool)

(declare-fun lt!1359541 () Option!8858)

(declare-fun lt!1359540 () Option!8858)

(assert (=> b!3902279 (= e!2412843 (ite (and ((_ is None!8857) lt!1359541) ((_ is None!8857) lt!1359540)) None!8857 (ite ((_ is None!8857) lt!1359540) lt!1359541 (ite ((_ is None!8857) lt!1359541) lt!1359540 (ite (>= (size!31075 (_1!23450 (v!39171 lt!1359541))) (size!31075 (_1!23450 (v!39171 lt!1359540)))) lt!1359541 lt!1359540)))))))

(assert (=> b!3902279 (= lt!1359541 call!283886)))

(assert (=> b!3902279 (= lt!1359540 (maxPrefix!3331 thiss!20629 (t!320221 (t!320221 rules!2768)) lt!1359464))))

(declare-fun bm!283881 () Bool)

(assert (=> bm!283881 (= call!283886 (maxPrefixOneRule!2407 thiss!20629 (h!46808 (t!320221 rules!2768)) lt!1359464))))

(declare-fun b!3902280 () Bool)

(declare-fun res!1578747 () Bool)

(assert (=> b!3902280 (=> (not res!1578747) (not e!2412842))))

(assert (=> b!3902280 (= res!1578747 (= (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359539)))) (originalCharacters!7038 (_1!23450 (get!13683 lt!1359539)))))))

(assert (= (and d!1156460 c!678295) b!3902278))

(assert (= (and d!1156460 (not c!678295)) b!3902279))

(assert (= (or b!3902278 b!3902279) bm!283881))

(assert (= (and d!1156460 (not res!1578752)) b!3902273))

(assert (= (and b!3902273 res!1578750) b!3902280))

(assert (= (and b!3902280 res!1578747) b!3902277))

(assert (= (and b!3902277 res!1578748) b!3902274))

(assert (= (and b!3902274 res!1578751) b!3902272))

(assert (= (and b!3902272 res!1578746) b!3902276))

(assert (= (and b!3902276 res!1578749) b!3902275))

(declare-fun m!4462713 () Bool)

(assert (=> b!3902273 m!4462713))

(declare-fun m!4462715 () Bool)

(assert (=> bm!283881 m!4462715))

(declare-fun m!4462717 () Bool)

(assert (=> b!3902274 m!4462717))

(declare-fun m!4462719 () Bool)

(assert (=> b!3902274 m!4462719))

(assert (=> b!3902274 m!4462719))

(declare-fun m!4462721 () Bool)

(assert (=> b!3902274 m!4462721))

(assert (=> b!3902274 m!4462721))

(declare-fun m!4462723 () Bool)

(assert (=> b!3902274 m!4462723))

(assert (=> b!3902272 m!4462717))

(declare-fun m!4462725 () Bool)

(assert (=> b!3902272 m!4462725))

(assert (=> b!3902272 m!4462725))

(declare-fun m!4462727 () Bool)

(assert (=> b!3902272 m!4462727))

(declare-fun m!4462729 () Bool)

(assert (=> d!1156460 m!4462729))

(assert (=> d!1156460 m!4462453))

(assert (=> d!1156460 m!4462455))

(declare-fun m!4462731 () Bool)

(assert (=> d!1156460 m!4462731))

(assert (=> b!3902280 m!4462717))

(assert (=> b!3902280 m!4462719))

(assert (=> b!3902280 m!4462719))

(assert (=> b!3902280 m!4462721))

(declare-fun m!4462733 () Bool)

(assert (=> b!3902279 m!4462733))

(assert (=> b!3902275 m!4462717))

(declare-fun m!4462735 () Bool)

(assert (=> b!3902275 m!4462735))

(assert (=> b!3902277 m!4462717))

(declare-fun m!4462737 () Bool)

(assert (=> b!3902277 m!4462737))

(declare-fun m!4462739 () Bool)

(assert (=> b!3902277 m!4462739))

(assert (=> b!3902276 m!4462717))

(assert (=> b!3902276 m!4462719))

(assert (=> b!3902276 m!4462719))

(assert (=> b!3902276 m!4462721))

(assert (=> b!3902276 m!4462721))

(declare-fun m!4462753 () Bool)

(assert (=> b!3902276 m!4462753))

(assert (=> b!3902086 d!1156460))

(declare-fun d!1156476 () Bool)

(assert (=> d!1156476 (= (isEmpty!24605 prefix!426) ((_ is Nil!41386) prefix!426))))

(assert (=> b!3902087 d!1156476))

(declare-fun b!3902331 () Bool)

(declare-fun e!2412875 () tuple2!40630)

(declare-fun lt!1359572 () Option!8858)

(declare-fun lt!1359571 () tuple2!40630)

(assert (=> b!3902331 (= e!2412875 (tuple2!40631 (Cons!41389 (_1!23450 (v!39171 lt!1359572)) (_1!23449 lt!1359571)) (_2!23449 lt!1359571)))))

(assert (=> b!3902331 (= lt!1359571 (lexList!1795 thiss!20629 rules!2768 (_2!23450 (v!39171 lt!1359572))))))

(declare-fun b!3902332 () Bool)

(declare-fun e!2412876 () Bool)

(declare-fun e!2412877 () Bool)

(assert (=> b!3902332 (= e!2412876 e!2412877)))

(declare-fun res!1578776 () Bool)

(declare-fun lt!1359573 () tuple2!40630)

(assert (=> b!3902332 (= res!1578776 (< (size!31076 (_2!23449 lt!1359573)) (size!31076 lt!1359464)))))

(assert (=> b!3902332 (=> (not res!1578776) (not e!2412877))))

(declare-fun b!3902333 () Bool)

(assert (=> b!3902333 (= e!2412877 (not (isEmpty!24606 (_1!23449 lt!1359573))))))

(declare-fun b!3902334 () Bool)

(assert (=> b!3902334 (= e!2412875 (tuple2!40631 Nil!41389 lt!1359464))))

(declare-fun d!1156478 () Bool)

(assert (=> d!1156478 e!2412876))

(declare-fun c!678309 () Bool)

(assert (=> d!1156478 (= c!678309 (> (size!31079 (_1!23449 lt!1359573)) 0))))

(assert (=> d!1156478 (= lt!1359573 e!2412875)))

(declare-fun c!678310 () Bool)

(assert (=> d!1156478 (= c!678310 ((_ is Some!8857) lt!1359572))))

(assert (=> d!1156478 (= lt!1359572 (maxPrefix!3331 thiss!20629 rules!2768 lt!1359464))))

(assert (=> d!1156478 (= (lexList!1795 thiss!20629 rules!2768 lt!1359464) lt!1359573)))

(declare-fun b!3902335 () Bool)

(assert (=> b!3902335 (= e!2412876 (= (_2!23449 lt!1359573) lt!1359464))))

(assert (= (and d!1156478 c!678310) b!3902331))

(assert (= (and d!1156478 (not c!678310)) b!3902334))

(assert (= (and d!1156478 c!678309) b!3902332))

(assert (= (and d!1156478 (not c!678309)) b!3902335))

(assert (= (and b!3902332 res!1578776) b!3902333))

(declare-fun m!4462793 () Bool)

(assert (=> b!3902331 m!4462793))

(declare-fun m!4462795 () Bool)

(assert (=> b!3902332 m!4462795))

(assert (=> b!3902332 m!4462739))

(declare-fun m!4462797 () Bool)

(assert (=> b!3902333 m!4462797))

(declare-fun m!4462799 () Bool)

(assert (=> d!1156478 m!4462799))

(assert (=> d!1156478 m!4462463))

(assert (=> b!3902108 d!1156478))

(declare-fun b!3902342 () Bool)

(declare-fun res!1578777 () Bool)

(declare-fun e!2412881 () Bool)

(assert (=> b!3902342 (=> (not res!1578777) (not e!2412881))))

(declare-fun lt!1359576 () List!41513)

(assert (=> b!3902342 (= res!1578777 (= (size!31079 lt!1359576) (+ (size!31079 prefixTokens!80) (size!31079 suffixTokens!72))))))

(declare-fun d!1156494 () Bool)

(assert (=> d!1156494 e!2412881))

(declare-fun res!1578778 () Bool)

(assert (=> d!1156494 (=> (not res!1578778) (not e!2412881))))

(assert (=> d!1156494 (= res!1578778 (= (content!6200 lt!1359576) ((_ map or) (content!6200 prefixTokens!80) (content!6200 suffixTokens!72))))))

(declare-fun e!2412880 () List!41513)

(assert (=> d!1156494 (= lt!1359576 e!2412880)))

(declare-fun c!678313 () Bool)

(assert (=> d!1156494 (= c!678313 ((_ is Nil!41389) prefixTokens!80))))

(assert (=> d!1156494 (= (++!10633 prefixTokens!80 suffixTokens!72) lt!1359576)))

(declare-fun b!3902341 () Bool)

(assert (=> b!3902341 (= e!2412880 (Cons!41389 (h!46809 prefixTokens!80) (++!10633 (t!320222 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3902340 () Bool)

(assert (=> b!3902340 (= e!2412880 suffixTokens!72)))

(declare-fun b!3902343 () Bool)

(assert (=> b!3902343 (= e!2412881 (or (not (= suffixTokens!72 Nil!41389)) (= lt!1359576 prefixTokens!80)))))

(assert (= (and d!1156494 c!678313) b!3902340))

(assert (= (and d!1156494 (not c!678313)) b!3902341))

(assert (= (and d!1156494 res!1578778) b!3902342))

(assert (= (and b!3902342 res!1578777) b!3902343))

(declare-fun m!4462801 () Bool)

(assert (=> b!3902342 m!4462801))

(declare-fun m!4462803 () Bool)

(assert (=> b!3902342 m!4462803))

(declare-fun m!4462805 () Bool)

(assert (=> b!3902342 m!4462805))

(declare-fun m!4462807 () Bool)

(assert (=> d!1156494 m!4462807))

(declare-fun m!4462809 () Bool)

(assert (=> d!1156494 m!4462809))

(declare-fun m!4462811 () Bool)

(assert (=> d!1156494 m!4462811))

(declare-fun m!4462813 () Bool)

(assert (=> b!3902341 m!4462813))

(assert (=> b!3902108 d!1156494))

(declare-fun b!3902367 () Bool)

(declare-fun res!1578786 () Bool)

(declare-fun e!2412896 () Bool)

(assert (=> b!3902367 (=> (not res!1578786) (not e!2412896))))

(declare-fun lt!1359586 () List!41510)

(assert (=> b!3902367 (= res!1578786 (= (size!31076 lt!1359586) (+ (size!31076 prefix!426) (size!31076 suffix!1176))))))

(declare-fun b!3902368 () Bool)

(assert (=> b!3902368 (= e!2412896 (or (not (= suffix!1176 Nil!41386)) (= lt!1359586 prefix!426)))))

(declare-fun b!3902366 () Bool)

(declare-fun e!2412895 () List!41510)

(assert (=> b!3902366 (= e!2412895 (Cons!41386 (h!46806 prefix!426) (++!10634 (t!320219 prefix!426) suffix!1176)))))

(declare-fun d!1156496 () Bool)

(assert (=> d!1156496 e!2412896))

(declare-fun res!1578785 () Bool)

(assert (=> d!1156496 (=> (not res!1578785) (not e!2412896))))

(declare-fun content!6201 (List!41510) (InoxSet C!22872))

(assert (=> d!1156496 (= res!1578785 (= (content!6201 lt!1359586) ((_ map or) (content!6201 prefix!426) (content!6201 suffix!1176))))))

(assert (=> d!1156496 (= lt!1359586 e!2412895)))

(declare-fun c!678320 () Bool)

(assert (=> d!1156496 (= c!678320 ((_ is Nil!41386) prefix!426))))

(assert (=> d!1156496 (= (++!10634 prefix!426 suffix!1176) lt!1359586)))

(declare-fun b!3902365 () Bool)

(assert (=> b!3902365 (= e!2412895 suffix!1176)))

(assert (= (and d!1156496 c!678320) b!3902365))

(assert (= (and d!1156496 (not c!678320)) b!3902366))

(assert (= (and d!1156496 res!1578785) b!3902367))

(assert (= (and b!3902367 res!1578786) b!3902368))

(declare-fun m!4462845 () Bool)

(assert (=> b!3902367 m!4462845))

(declare-fun m!4462849 () Bool)

(assert (=> b!3902367 m!4462849))

(assert (=> b!3902367 m!4462587))

(declare-fun m!4462851 () Bool)

(assert (=> b!3902366 m!4462851))

(declare-fun m!4462853 () Bool)

(assert (=> d!1156496 m!4462853))

(declare-fun m!4462855 () Bool)

(assert (=> d!1156496 m!4462855))

(declare-fun m!4462857 () Bool)

(assert (=> d!1156496 m!4462857))

(assert (=> b!3902108 d!1156496))

(declare-fun d!1156512 () Bool)

(declare-fun res!1578799 () Bool)

(declare-fun e!2412911 () Bool)

(assert (=> d!1156512 (=> (not res!1578799) (not e!2412911))))

(assert (=> d!1156512 (= res!1578799 (not (isEmpty!24605 (originalCharacters!7038 (h!46809 suffixTokens!72)))))))

(assert (=> d!1156512 (= (inv!55559 (h!46809 suffixTokens!72)) e!2412911)))

(declare-fun b!3902391 () Bool)

(declare-fun res!1578800 () Bool)

(assert (=> b!3902391 (=> (not res!1578800) (not e!2412911))))

(declare-fun dynLambda!17773 (Int TokenValue!6668) BalanceConc!24892)

(assert (=> b!3902391 (= res!1578800 (= (originalCharacters!7038 (h!46809 suffixTokens!72)) (list!15384 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (value!204117 (h!46809 suffixTokens!72))))))))

(declare-fun b!3902392 () Bool)

(assert (=> b!3902392 (= e!2412911 (= (size!31075 (h!46809 suffixTokens!72)) (size!31076 (originalCharacters!7038 (h!46809 suffixTokens!72)))))))

(assert (= (and d!1156512 res!1578799) b!3902391))

(assert (= (and b!3902391 res!1578800) b!3902392))

(declare-fun b_lambda!114039 () Bool)

(assert (=> (not b_lambda!114039) (not b!3902391)))

(declare-fun tb!230029 () Bool)

(declare-fun t!320256 () Bool)

(assert (=> (and b!3902107 (= (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320256) tb!230029))

(declare-fun b!3902409 () Bool)

(declare-fun e!2412919 () Bool)

(declare-fun tp!1187425 () Bool)

(declare-fun inv!55563 (Conc!12649) Bool)

(assert (=> b!3902409 (= e!2412919 (and (inv!55563 (c!678270 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (value!204117 (h!46809 suffixTokens!72))))) tp!1187425))))

(declare-fun result!279286 () Bool)

(declare-fun inv!55564 (BalanceConc!24892) Bool)

(assert (=> tb!230029 (= result!279286 (and (inv!55564 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (value!204117 (h!46809 suffixTokens!72)))) e!2412919))))

(assert (= tb!230029 b!3902409))

(declare-fun m!4462901 () Bool)

(assert (=> b!3902409 m!4462901))

(declare-fun m!4462903 () Bool)

(assert (=> tb!230029 m!4462903))

(assert (=> b!3902391 t!320256))

(declare-fun b_and!295267 () Bool)

(assert (= b_and!295213 (and (=> t!320256 result!279286) b_and!295267)))

(declare-fun tb!230039 () Bool)

(declare-fun t!320266 () Bool)

(assert (=> (and b!3902082 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320266) tb!230039))

(declare-fun result!279298 () Bool)

(assert (= result!279298 result!279286))

(assert (=> b!3902391 t!320266))

(declare-fun b_and!295269 () Bool)

(assert (= b_and!295217 (and (=> t!320266 result!279298) b_and!295269)))

(declare-fun t!320268 () Bool)

(declare-fun tb!230041 () Bool)

(assert (=> (and b!3902080 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320268) tb!230041))

(declare-fun result!279300 () Bool)

(assert (= result!279300 result!279286))

(assert (=> b!3902391 t!320268))

(declare-fun b_and!295271 () Bool)

(assert (= b_and!295221 (and (=> t!320268 result!279300) b_and!295271)))

(declare-fun t!320270 () Bool)

(declare-fun tb!230043 () Bool)

(assert (=> (and b!3902112 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320270) tb!230043))

(declare-fun result!279302 () Bool)

(assert (= result!279302 result!279286))

(assert (=> b!3902391 t!320270))

(declare-fun b_and!295273 () Bool)

(assert (= b_and!295225 (and (=> t!320270 result!279302) b_and!295273)))

(declare-fun m!4462905 () Bool)

(assert (=> d!1156512 m!4462905))

(declare-fun m!4462907 () Bool)

(assert (=> b!3902391 m!4462907))

(assert (=> b!3902391 m!4462907))

(declare-fun m!4462909 () Bool)

(assert (=> b!3902391 m!4462909))

(declare-fun m!4462911 () Bool)

(assert (=> b!3902392 m!4462911))

(assert (=> b!3902089 d!1156512))

(declare-fun b!3902420 () Bool)

(declare-fun e!2412926 () Bool)

(declare-fun inv!15 (TokenValue!6668) Bool)

(assert (=> b!3902420 (= e!2412926 (inv!15 (value!204117 (h!46809 prefixTokens!80))))))

(declare-fun b!3902421 () Bool)

(declare-fun e!2412928 () Bool)

(declare-fun e!2412927 () Bool)

(assert (=> b!3902421 (= e!2412928 e!2412927)))

(declare-fun c!678331 () Bool)

(assert (=> b!3902421 (= c!678331 ((_ is IntegerValue!20005) (value!204117 (h!46809 prefixTokens!80))))))

(declare-fun b!3902422 () Bool)

(declare-fun inv!16 (TokenValue!6668) Bool)

(assert (=> b!3902422 (= e!2412928 (inv!16 (value!204117 (h!46809 prefixTokens!80))))))

(declare-fun d!1156532 () Bool)

(declare-fun c!678332 () Bool)

(assert (=> d!1156532 (= c!678332 ((_ is IntegerValue!20004) (value!204117 (h!46809 prefixTokens!80))))))

(assert (=> d!1156532 (= (inv!21 (value!204117 (h!46809 prefixTokens!80))) e!2412928)))

(declare-fun b!3902423 () Bool)

(declare-fun inv!17 (TokenValue!6668) Bool)

(assert (=> b!3902423 (= e!2412927 (inv!17 (value!204117 (h!46809 prefixTokens!80))))))

(declare-fun b!3902424 () Bool)

(declare-fun res!1578812 () Bool)

(assert (=> b!3902424 (=> res!1578812 e!2412926)))

(assert (=> b!3902424 (= res!1578812 (not ((_ is IntegerValue!20006) (value!204117 (h!46809 prefixTokens!80)))))))

(assert (=> b!3902424 (= e!2412927 e!2412926)))

(assert (= (and d!1156532 c!678332) b!3902422))

(assert (= (and d!1156532 (not c!678332)) b!3902421))

(assert (= (and b!3902421 c!678331) b!3902423))

(assert (= (and b!3902421 (not c!678331)) b!3902424))

(assert (= (and b!3902424 (not res!1578812)) b!3902420))

(declare-fun m!4462937 () Bool)

(assert (=> b!3902420 m!4462937))

(declare-fun m!4462939 () Bool)

(assert (=> b!3902422 m!4462939))

(declare-fun m!4462941 () Bool)

(assert (=> b!3902423 m!4462941))

(assert (=> b!3902109 d!1156532))

(declare-fun d!1156538 () Bool)

(assert (=> d!1156538 (= (isEmpty!24606 prefixTokens!80) ((_ is Nil!41389) prefixTokens!80))))

(assert (=> b!3902110 d!1156538))

(declare-fun d!1156540 () Bool)

(declare-fun res!1578813 () Bool)

(declare-fun e!2412929 () Bool)

(assert (=> d!1156540 (=> (not res!1578813) (not e!2412929))))

(assert (=> d!1156540 (= res!1578813 (not (isEmpty!24605 (originalCharacters!7038 (h!46809 prefixTokens!80)))))))

(assert (=> d!1156540 (= (inv!55559 (h!46809 prefixTokens!80)) e!2412929)))

(declare-fun b!3902425 () Bool)

(declare-fun res!1578814 () Bool)

(assert (=> b!3902425 (=> (not res!1578814) (not e!2412929))))

(assert (=> b!3902425 (= res!1578814 (= (originalCharacters!7038 (h!46809 prefixTokens!80)) (list!15384 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (value!204117 (h!46809 prefixTokens!80))))))))

(declare-fun b!3902426 () Bool)

(assert (=> b!3902426 (= e!2412929 (= (size!31075 (h!46809 prefixTokens!80)) (size!31076 (originalCharacters!7038 (h!46809 prefixTokens!80)))))))

(assert (= (and d!1156540 res!1578813) b!3902425))

(assert (= (and b!3902425 res!1578814) b!3902426))

(declare-fun b_lambda!114043 () Bool)

(assert (=> (not b_lambda!114043) (not b!3902425)))

(declare-fun tb!230045 () Bool)

(declare-fun t!320272 () Bool)

(assert (=> (and b!3902107 (= (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320272) tb!230045))

(declare-fun b!3902427 () Bool)

(declare-fun e!2412930 () Bool)

(declare-fun tp!1187426 () Bool)

(assert (=> b!3902427 (= e!2412930 (and (inv!55563 (c!678270 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (value!204117 (h!46809 prefixTokens!80))))) tp!1187426))))

(declare-fun result!279304 () Bool)

(assert (=> tb!230045 (= result!279304 (and (inv!55564 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (value!204117 (h!46809 prefixTokens!80)))) e!2412930))))

(assert (= tb!230045 b!3902427))

(declare-fun m!4462945 () Bool)

(assert (=> b!3902427 m!4462945))

(declare-fun m!4462947 () Bool)

(assert (=> tb!230045 m!4462947))

(assert (=> b!3902425 t!320272))

(declare-fun b_and!295275 () Bool)

(assert (= b_and!295267 (and (=> t!320272 result!279304) b_and!295275)))

(declare-fun tb!230047 () Bool)

(declare-fun t!320274 () Bool)

(assert (=> (and b!3902082 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320274) tb!230047))

(declare-fun result!279306 () Bool)

(assert (= result!279306 result!279304))

(assert (=> b!3902425 t!320274))

(declare-fun b_and!295277 () Bool)

(assert (= b_and!295269 (and (=> t!320274 result!279306) b_and!295277)))

(declare-fun t!320276 () Bool)

(declare-fun tb!230049 () Bool)

(assert (=> (and b!3902080 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320276) tb!230049))

(declare-fun result!279308 () Bool)

(assert (= result!279308 result!279304))

(assert (=> b!3902425 t!320276))

(declare-fun b_and!295279 () Bool)

(assert (= b_and!295271 (and (=> t!320276 result!279308) b_and!295279)))

(declare-fun tb!230051 () Bool)

(declare-fun t!320278 () Bool)

(assert (=> (and b!3902112 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320278) tb!230051))

(declare-fun result!279310 () Bool)

(assert (= result!279310 result!279304))

(assert (=> b!3902425 t!320278))

(declare-fun b_and!295281 () Bool)

(assert (= b_and!295273 (and (=> t!320278 result!279310) b_and!295281)))

(declare-fun m!4462949 () Bool)

(assert (=> d!1156540 m!4462949))

(declare-fun m!4462951 () Bool)

(assert (=> b!3902425 m!4462951))

(assert (=> b!3902425 m!4462951))

(declare-fun m!4462953 () Bool)

(assert (=> b!3902425 m!4462953))

(declare-fun m!4462955 () Bool)

(assert (=> b!3902426 m!4462955))

(assert (=> b!3902090 d!1156540))

(declare-fun d!1156544 () Bool)

(assert (=> d!1156544 (= (inv!55556 (tag!7298 (h!46808 rules!2768))) (= (mod (str.len (value!204116 (tag!7298 (h!46808 rules!2768)))) 2) 0))))

(assert (=> b!3902111 d!1156544))

(declare-fun d!1156548 () Bool)

(declare-fun res!1578826 () Bool)

(declare-fun e!2412943 () Bool)

(assert (=> d!1156548 (=> (not res!1578826) (not e!2412943))))

(declare-fun semiInverseModEq!2761 (Int Int) Bool)

(assert (=> d!1156548 (= res!1578826 (semiInverseModEq!2761 (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toValue!8878 (transformation!6438 (h!46808 rules!2768)))))))

(assert (=> d!1156548 (= (inv!55560 (transformation!6438 (h!46808 rules!2768))) e!2412943)))

(declare-fun b!3902447 () Bool)

(declare-fun equivClasses!2660 (Int Int) Bool)

(assert (=> b!3902447 (= e!2412943 (equivClasses!2660 (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toValue!8878 (transformation!6438 (h!46808 rules!2768)))))))

(assert (= (and d!1156548 res!1578826) b!3902447))

(declare-fun m!4462997 () Bool)

(assert (=> d!1156548 m!4462997))

(declare-fun m!4462999 () Bool)

(assert (=> b!3902447 m!4462999))

(assert (=> b!3902111 d!1156548))

(declare-fun d!1156558 () Bool)

(assert (=> d!1156558 (= (inv!55556 (tag!7298 (rule!9348 (h!46809 suffixTokens!72)))) (= (mod (str.len (value!204116 (tag!7298 (rule!9348 (h!46809 suffixTokens!72))))) 2) 0))))

(assert (=> b!3902092 d!1156558))

(declare-fun d!1156560 () Bool)

(declare-fun res!1578834 () Bool)

(declare-fun e!2412947 () Bool)

(assert (=> d!1156560 (=> (not res!1578834) (not e!2412947))))

(assert (=> d!1156560 (= res!1578834 (semiInverseModEq!2761 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toValue!8878 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))))))

(assert (=> d!1156560 (= (inv!55560 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) e!2412947)))

(declare-fun b!3902457 () Bool)

(assert (=> b!3902457 (= e!2412947 (equivClasses!2660 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toValue!8878 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))))))

(assert (= (and d!1156560 res!1578834) b!3902457))

(declare-fun m!4463001 () Bool)

(assert (=> d!1156560 m!4463001))

(declare-fun m!4463003 () Bool)

(assert (=> b!3902457 m!4463003))

(assert (=> b!3902092 d!1156560))

(declare-fun d!1156562 () Bool)

(assert (=> d!1156562 (= (inv!55556 (tag!7298 (rule!9348 (h!46809 prefixTokens!80)))) (= (mod (str.len (value!204116 (tag!7298 (rule!9348 (h!46809 prefixTokens!80))))) 2) 0))))

(assert (=> b!3902093 d!1156562))

(declare-fun d!1156564 () Bool)

(declare-fun res!1578835 () Bool)

(declare-fun e!2412948 () Bool)

(assert (=> d!1156564 (=> (not res!1578835) (not e!2412948))))

(assert (=> d!1156564 (= res!1578835 (semiInverseModEq!2761 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toValue!8878 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))))))

(assert (=> d!1156564 (= (inv!55560 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) e!2412948)))

(declare-fun b!3902458 () Bool)

(assert (=> b!3902458 (= e!2412948 (equivClasses!2660 (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toValue!8878 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))))))

(assert (= (and d!1156564 res!1578835) b!3902458))

(declare-fun m!4463005 () Bool)

(assert (=> d!1156564 m!4463005))

(declare-fun m!4463007 () Bool)

(assert (=> b!3902458 m!4463007))

(assert (=> b!3902093 d!1156564))

(declare-fun d!1156566 () Bool)

(assert (=> d!1156566 (= (inv!55556 (tag!7298 (rule!9348 (_1!23450 (v!39171 err!4401))))) (= (mod (str.len (value!204116 (tag!7298 (rule!9348 (_1!23450 (v!39171 err!4401)))))) 2) 0))))

(assert (=> b!3902113 d!1156566))

(declare-fun d!1156568 () Bool)

(declare-fun res!1578836 () Bool)

(declare-fun e!2412949 () Bool)

(assert (=> d!1156568 (=> (not res!1578836) (not e!2412949))))

(assert (=> d!1156568 (= res!1578836 (semiInverseModEq!2761 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))))))

(assert (=> d!1156568 (= (inv!55560 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) e!2412949)))

(declare-fun b!3902459 () Bool)

(assert (=> b!3902459 (= e!2412949 (equivClasses!2660 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))))))

(assert (= (and d!1156568 res!1578836) b!3902459))

(declare-fun m!4463009 () Bool)

(assert (=> d!1156568 m!4463009))

(declare-fun m!4463011 () Bool)

(assert (=> b!3902459 m!4463011))

(assert (=> b!3902113 d!1156568))

(declare-fun d!1156570 () Bool)

(declare-fun res!1578837 () Bool)

(declare-fun e!2412950 () Bool)

(assert (=> d!1156570 (=> (not res!1578837) (not e!2412950))))

(assert (=> d!1156570 (= res!1578837 (not (isEmpty!24605 (originalCharacters!7038 (_1!23450 (v!39171 err!4401))))))))

(assert (=> d!1156570 (= (inv!55559 (_1!23450 (v!39171 err!4401))) e!2412950)))

(declare-fun b!3902460 () Bool)

(declare-fun res!1578838 () Bool)

(assert (=> b!3902460 (=> (not res!1578838) (not e!2412950))))

(assert (=> b!3902460 (= res!1578838 (= (originalCharacters!7038 (_1!23450 (v!39171 err!4401))) (list!15384 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (value!204117 (_1!23450 (v!39171 err!4401)))))))))

(declare-fun b!3902461 () Bool)

(assert (=> b!3902461 (= e!2412950 (= (size!31075 (_1!23450 (v!39171 err!4401))) (size!31076 (originalCharacters!7038 (_1!23450 (v!39171 err!4401))))))))

(assert (= (and d!1156570 res!1578837) b!3902460))

(assert (= (and b!3902460 res!1578838) b!3902461))

(declare-fun b_lambda!114045 () Bool)

(assert (=> (not b_lambda!114045) (not b!3902460)))

(declare-fun t!320280 () Bool)

(declare-fun tb!230053 () Bool)

(assert (=> (and b!3902107 (= (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320280) tb!230053))

(declare-fun b!3902462 () Bool)

(declare-fun e!2412951 () Bool)

(declare-fun tp!1187427 () Bool)

(assert (=> b!3902462 (= e!2412951 (and (inv!55563 (c!678270 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (value!204117 (_1!23450 (v!39171 err!4401)))))) tp!1187427))))

(declare-fun result!279312 () Bool)

(assert (=> tb!230053 (= result!279312 (and (inv!55564 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (value!204117 (_1!23450 (v!39171 err!4401))))) e!2412951))))

(assert (= tb!230053 b!3902462))

(declare-fun m!4463025 () Bool)

(assert (=> b!3902462 m!4463025))

(declare-fun m!4463027 () Bool)

(assert (=> tb!230053 m!4463027))

(assert (=> b!3902460 t!320280))

(declare-fun b_and!295283 () Bool)

(assert (= b_and!295275 (and (=> t!320280 result!279312) b_and!295283)))

(declare-fun t!320282 () Bool)

(declare-fun tb!230055 () Bool)

(assert (=> (and b!3902082 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320282) tb!230055))

(declare-fun result!279314 () Bool)

(assert (= result!279314 result!279312))

(assert (=> b!3902460 t!320282))

(declare-fun b_and!295285 () Bool)

(assert (= b_and!295277 (and (=> t!320282 result!279314) b_and!295285)))

(declare-fun t!320284 () Bool)

(declare-fun tb!230057 () Bool)

(assert (=> (and b!3902080 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320284) tb!230057))

(declare-fun result!279316 () Bool)

(assert (= result!279316 result!279312))

(assert (=> b!3902460 t!320284))

(declare-fun b_and!295287 () Bool)

(assert (= b_and!295279 (and (=> t!320284 result!279316) b_and!295287)))

(declare-fun tb!230059 () Bool)

(declare-fun t!320286 () Bool)

(assert (=> (and b!3902112 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320286) tb!230059))

(declare-fun result!279318 () Bool)

(assert (= result!279318 result!279312))

(assert (=> b!3902460 t!320286))

(declare-fun b_and!295289 () Bool)

(assert (= b_and!295281 (and (=> t!320286 result!279318) b_and!295289)))

(declare-fun m!4463037 () Bool)

(assert (=> d!1156570 m!4463037))

(declare-fun m!4463043 () Bool)

(assert (=> b!3902460 m!4463043))

(assert (=> b!3902460 m!4463043))

(declare-fun m!4463045 () Bool)

(assert (=> b!3902460 m!4463045))

(declare-fun m!4463047 () Bool)

(assert (=> b!3902461 m!4463047))

(assert (=> b!3902094 d!1156570))

(declare-fun d!1156572 () Bool)

(assert (=> d!1156572 (= (isEmpty!24605 (_2!23450 lt!1359474)) ((_ is Nil!41386) (_2!23450 lt!1359474)))))

(assert (=> b!3902115 d!1156572))

(declare-fun d!1156574 () Bool)

(assert (=> d!1156574 (and (= lt!1359482 prefix!426) (= (_2!23450 (v!39171 lt!1359466)) suffix!1176))))

(declare-fun lt!1359619 () Unit!59506)

(declare-fun choose!23097 (List!41510 List!41510 List!41510 List!41510) Unit!59506)

(assert (=> d!1156574 (= lt!1359619 (choose!23097 lt!1359482 (_2!23450 (v!39171 lt!1359466)) prefix!426 suffix!1176))))

(assert (=> d!1156574 (= (++!10634 lt!1359482 (_2!23450 (v!39171 lt!1359466))) (++!10634 prefix!426 suffix!1176))))

(assert (=> d!1156574 (= (lemmaConcatSameAndSameSizesThenSameLists!510 lt!1359482 (_2!23450 (v!39171 lt!1359466)) prefix!426 suffix!1176) lt!1359619)))

(declare-fun bs!584990 () Bool)

(assert (= bs!584990 d!1156574))

(declare-fun m!4463067 () Bool)

(assert (=> bs!584990 m!4463067))

(assert (=> bs!584990 m!4462519))

(assert (=> bs!584990 m!4462551))

(assert (=> b!3902097 d!1156574))

(declare-fun b!3902476 () Bool)

(declare-fun res!1578848 () Bool)

(declare-fun e!2412958 () Bool)

(assert (=> b!3902476 (=> (not res!1578848) (not e!2412958))))

(declare-fun lt!1359620 () Option!8858)

(assert (=> b!3902476 (= res!1578848 (= (value!204117 (_1!23450 (get!13683 lt!1359620))) (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (get!13683 lt!1359620)))) (seqFromList!4705 (originalCharacters!7038 (_1!23450 (get!13683 lt!1359620)))))))))

(declare-fun b!3902477 () Bool)

(declare-fun e!2412957 () Bool)

(assert (=> b!3902477 (= e!2412957 e!2412958)))

(declare-fun res!1578852 () Bool)

(assert (=> b!3902477 (=> (not res!1578852) (not e!2412958))))

(assert (=> b!3902477 (= res!1578852 (isDefined!6909 lt!1359620))))

(declare-fun b!3902478 () Bool)

(declare-fun res!1578853 () Bool)

(assert (=> b!3902478 (=> (not res!1578853) (not e!2412958))))

(assert (=> b!3902478 (= res!1578853 (= (++!10634 (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359620)))) (_2!23450 (get!13683 lt!1359620))) lt!1359464))))

(declare-fun b!3902479 () Bool)

(assert (=> b!3902479 (= e!2412958 (contains!8319 rules!2768 (rule!9348 (_1!23450 (get!13683 lt!1359620)))))))

(declare-fun b!3902481 () Bool)

(declare-fun res!1578850 () Bool)

(assert (=> b!3902481 (=> (not res!1578850) (not e!2412958))))

(assert (=> b!3902481 (= res!1578850 (< (size!31076 (_2!23450 (get!13683 lt!1359620))) (size!31076 lt!1359464)))))

(declare-fun b!3902480 () Bool)

(declare-fun res!1578851 () Bool)

(assert (=> b!3902480 (=> (not res!1578851) (not e!2412958))))

(assert (=> b!3902480 (= res!1578851 (matchR!5438 (regex!6438 (rule!9348 (_1!23450 (get!13683 lt!1359620)))) (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359620))))))))

(declare-fun d!1156582 () Bool)

(assert (=> d!1156582 e!2412957))

(declare-fun res!1578854 () Bool)

(assert (=> d!1156582 (=> res!1578854 e!2412957)))

(assert (=> d!1156582 (= res!1578854 (isEmpty!24608 lt!1359620))))

(declare-fun e!2412959 () Option!8858)

(assert (=> d!1156582 (= lt!1359620 e!2412959)))

(declare-fun c!678340 () Bool)

(assert (=> d!1156582 (= c!678340 (and ((_ is Cons!41388) rules!2768) ((_ is Nil!41388) (t!320221 rules!2768))))))

(declare-fun lt!1359623 () Unit!59506)

(declare-fun lt!1359624 () Unit!59506)

(assert (=> d!1156582 (= lt!1359623 lt!1359624)))

(assert (=> d!1156582 (isPrefix!3533 lt!1359464 lt!1359464)))

(assert (=> d!1156582 (= lt!1359624 (lemmaIsPrefixRefl!2240 lt!1359464 lt!1359464))))

(assert (=> d!1156582 (rulesValidInductive!2310 thiss!20629 rules!2768)))

(assert (=> d!1156582 (= (maxPrefix!3331 thiss!20629 rules!2768 lt!1359464) lt!1359620)))

(declare-fun b!3902482 () Bool)

(declare-fun call!283890 () Option!8858)

(assert (=> b!3902482 (= e!2412959 call!283890)))

(declare-fun b!3902483 () Bool)

(declare-fun lt!1359622 () Option!8858)

(declare-fun lt!1359621 () Option!8858)

(assert (=> b!3902483 (= e!2412959 (ite (and ((_ is None!8857) lt!1359622) ((_ is None!8857) lt!1359621)) None!8857 (ite ((_ is None!8857) lt!1359621) lt!1359622 (ite ((_ is None!8857) lt!1359622) lt!1359621 (ite (>= (size!31075 (_1!23450 (v!39171 lt!1359622))) (size!31075 (_1!23450 (v!39171 lt!1359621)))) lt!1359622 lt!1359621)))))))

(assert (=> b!3902483 (= lt!1359622 call!283890)))

(assert (=> b!3902483 (= lt!1359621 (maxPrefix!3331 thiss!20629 (t!320221 rules!2768) lt!1359464))))

(declare-fun bm!283885 () Bool)

(assert (=> bm!283885 (= call!283890 (maxPrefixOneRule!2407 thiss!20629 (h!46808 rules!2768) lt!1359464))))

(declare-fun b!3902484 () Bool)

(declare-fun res!1578849 () Bool)

(assert (=> b!3902484 (=> (not res!1578849) (not e!2412958))))

(assert (=> b!3902484 (= res!1578849 (= (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359620)))) (originalCharacters!7038 (_1!23450 (get!13683 lt!1359620)))))))

(assert (= (and d!1156582 c!678340) b!3902482))

(assert (= (and d!1156582 (not c!678340)) b!3902483))

(assert (= (or b!3902482 b!3902483) bm!283885))

(assert (= (and d!1156582 (not res!1578854)) b!3902477))

(assert (= (and b!3902477 res!1578852) b!3902484))

(assert (= (and b!3902484 res!1578849) b!3902481))

(assert (= (and b!3902481 res!1578850) b!3902478))

(assert (= (and b!3902478 res!1578853) b!3902476))

(assert (= (and b!3902476 res!1578848) b!3902480))

(assert (= (and b!3902480 res!1578851) b!3902479))

(declare-fun m!4463099 () Bool)

(assert (=> b!3902477 m!4463099))

(assert (=> bm!283885 m!4462495))

(declare-fun m!4463101 () Bool)

(assert (=> b!3902478 m!4463101))

(declare-fun m!4463103 () Bool)

(assert (=> b!3902478 m!4463103))

(assert (=> b!3902478 m!4463103))

(declare-fun m!4463105 () Bool)

(assert (=> b!3902478 m!4463105))

(assert (=> b!3902478 m!4463105))

(declare-fun m!4463107 () Bool)

(assert (=> b!3902478 m!4463107))

(assert (=> b!3902476 m!4463101))

(declare-fun m!4463109 () Bool)

(assert (=> b!3902476 m!4463109))

(assert (=> b!3902476 m!4463109))

(declare-fun m!4463111 () Bool)

(assert (=> b!3902476 m!4463111))

(declare-fun m!4463113 () Bool)

(assert (=> d!1156582 m!4463113))

(assert (=> d!1156582 m!4462453))

(assert (=> d!1156582 m!4462455))

(declare-fun m!4463115 () Bool)

(assert (=> d!1156582 m!4463115))

(assert (=> b!3902484 m!4463101))

(assert (=> b!3902484 m!4463103))

(assert (=> b!3902484 m!4463103))

(assert (=> b!3902484 m!4463105))

(assert (=> b!3902483 m!4462497))

(assert (=> b!3902479 m!4463101))

(declare-fun m!4463117 () Bool)

(assert (=> b!3902479 m!4463117))

(assert (=> b!3902481 m!4463101))

(declare-fun m!4463119 () Bool)

(assert (=> b!3902481 m!4463119))

(assert (=> b!3902481 m!4462739))

(assert (=> b!3902480 m!4463101))

(assert (=> b!3902480 m!4463103))

(assert (=> b!3902480 m!4463103))

(assert (=> b!3902480 m!4463105))

(assert (=> b!3902480 m!4463105))

(declare-fun m!4463121 () Bool)

(assert (=> b!3902480 m!4463121))

(assert (=> b!3902118 d!1156582))

(declare-fun b!3902485 () Bool)

(declare-fun e!2412960 () Bool)

(assert (=> b!3902485 (= e!2412960 (inv!15 (value!204117 (h!46809 suffixTokens!72))))))

(declare-fun b!3902486 () Bool)

(declare-fun e!2412962 () Bool)

(declare-fun e!2412961 () Bool)

(assert (=> b!3902486 (= e!2412962 e!2412961)))

(declare-fun c!678341 () Bool)

(assert (=> b!3902486 (= c!678341 ((_ is IntegerValue!20005) (value!204117 (h!46809 suffixTokens!72))))))

(declare-fun b!3902487 () Bool)

(assert (=> b!3902487 (= e!2412962 (inv!16 (value!204117 (h!46809 suffixTokens!72))))))

(declare-fun d!1156586 () Bool)

(declare-fun c!678342 () Bool)

(assert (=> d!1156586 (= c!678342 ((_ is IntegerValue!20004) (value!204117 (h!46809 suffixTokens!72))))))

(assert (=> d!1156586 (= (inv!21 (value!204117 (h!46809 suffixTokens!72))) e!2412962)))

(declare-fun b!3902488 () Bool)

(assert (=> b!3902488 (= e!2412961 (inv!17 (value!204117 (h!46809 suffixTokens!72))))))

(declare-fun b!3902489 () Bool)

(declare-fun res!1578855 () Bool)

(assert (=> b!3902489 (=> res!1578855 e!2412960)))

(assert (=> b!3902489 (= res!1578855 (not ((_ is IntegerValue!20006) (value!204117 (h!46809 suffixTokens!72)))))))

(assert (=> b!3902489 (= e!2412961 e!2412960)))

(assert (= (and d!1156586 c!678342) b!3902487))

(assert (= (and d!1156586 (not c!678342)) b!3902486))

(assert (= (and b!3902486 c!678341) b!3902488))

(assert (= (and b!3902486 (not c!678341)) b!3902489))

(assert (= (and b!3902489 (not res!1578855)) b!3902485))

(declare-fun m!4463123 () Bool)

(assert (=> b!3902485 m!4463123))

(declare-fun m!4463125 () Bool)

(assert (=> b!3902487 m!4463125))

(declare-fun m!4463127 () Bool)

(assert (=> b!3902488 m!4463127))

(assert (=> b!3902098 d!1156586))

(declare-fun b!3902490 () Bool)

(declare-fun e!2412964 () Bool)

(declare-fun e!2412963 () Bool)

(assert (=> b!3902490 (= e!2412964 e!2412963)))

(declare-fun res!1578859 () Bool)

(assert (=> b!3902490 (=> (not res!1578859) (not e!2412963))))

(assert (=> b!3902490 (= res!1578859 (not ((_ is Nil!41386) lt!1359464)))))

(declare-fun d!1156588 () Bool)

(declare-fun e!2412965 () Bool)

(assert (=> d!1156588 e!2412965))

(declare-fun res!1578858 () Bool)

(assert (=> d!1156588 (=> res!1578858 e!2412965)))

(declare-fun lt!1359625 () Bool)

(assert (=> d!1156588 (= res!1578858 (not lt!1359625))))

(assert (=> d!1156588 (= lt!1359625 e!2412964)))

(declare-fun res!1578857 () Bool)

(assert (=> d!1156588 (=> res!1578857 e!2412964)))

(assert (=> d!1156588 (= res!1578857 ((_ is Nil!41386) lt!1359464))))

(assert (=> d!1156588 (= (isPrefix!3533 lt!1359464 lt!1359464) lt!1359625)))

(declare-fun b!3902493 () Bool)

(assert (=> b!3902493 (= e!2412965 (>= (size!31076 lt!1359464) (size!31076 lt!1359464)))))

(declare-fun b!3902492 () Bool)

(assert (=> b!3902492 (= e!2412963 (isPrefix!3533 (tail!5969 lt!1359464) (tail!5969 lt!1359464)))))

(declare-fun b!3902491 () Bool)

(declare-fun res!1578856 () Bool)

(assert (=> b!3902491 (=> (not res!1578856) (not e!2412963))))

(assert (=> b!3902491 (= res!1578856 (= (head!8252 lt!1359464) (head!8252 lt!1359464)))))

(assert (= (and d!1156588 (not res!1578857)) b!3902490))

(assert (= (and b!3902490 res!1578859) b!3902491))

(assert (= (and b!3902491 res!1578856) b!3902492))

(assert (= (and d!1156588 (not res!1578858)) b!3902493))

(assert (=> b!3902493 m!4462739))

(assert (=> b!3902493 m!4462739))

(declare-fun m!4463129 () Bool)

(assert (=> b!3902492 m!4463129))

(assert (=> b!3902492 m!4463129))

(assert (=> b!3902492 m!4463129))

(assert (=> b!3902492 m!4463129))

(declare-fun m!4463131 () Bool)

(assert (=> b!3902492 m!4463131))

(declare-fun m!4463133 () Bool)

(assert (=> b!3902491 m!4463133))

(assert (=> b!3902491 m!4463133))

(assert (=> b!3902099 d!1156588))

(declare-fun d!1156590 () Bool)

(assert (=> d!1156590 (isPrefix!3533 lt!1359464 lt!1359464)))

(declare-fun lt!1359628 () Unit!59506)

(declare-fun choose!23099 (List!41510 List!41510) Unit!59506)

(assert (=> d!1156590 (= lt!1359628 (choose!23099 lt!1359464 lt!1359464))))

(assert (=> d!1156590 (= (lemmaIsPrefixRefl!2240 lt!1359464 lt!1359464) lt!1359628)))

(declare-fun bs!584991 () Bool)

(assert (= bs!584991 d!1156590))

(assert (=> bs!584991 m!4462453))

(declare-fun m!4463135 () Bool)

(assert (=> bs!584991 m!4463135))

(assert (=> b!3902099 d!1156590))

(declare-fun b!3902494 () Bool)

(declare-fun e!2412966 () tuple2!40630)

(declare-fun lt!1359630 () Option!8858)

(declare-fun lt!1359629 () tuple2!40630)

(assert (=> b!3902494 (= e!2412966 (tuple2!40631 (Cons!41389 (_1!23450 (v!39171 lt!1359630)) (_1!23449 lt!1359629)) (_2!23449 lt!1359629)))))

(assert (=> b!3902494 (= lt!1359629 (lexList!1795 thiss!20629 rules!2768 (_2!23450 (v!39171 lt!1359630))))))

(declare-fun b!3902495 () Bool)

(declare-fun e!2412967 () Bool)

(declare-fun e!2412968 () Bool)

(assert (=> b!3902495 (= e!2412967 e!2412968)))

(declare-fun res!1578860 () Bool)

(declare-fun lt!1359631 () tuple2!40630)

(assert (=> b!3902495 (= res!1578860 (< (size!31076 (_2!23449 lt!1359631)) (size!31076 suffix!1176)))))

(assert (=> b!3902495 (=> (not res!1578860) (not e!2412968))))

(declare-fun b!3902496 () Bool)

(assert (=> b!3902496 (= e!2412968 (not (isEmpty!24606 (_1!23449 lt!1359631))))))

(declare-fun b!3902497 () Bool)

(assert (=> b!3902497 (= e!2412966 (tuple2!40631 Nil!41389 suffix!1176))))

(declare-fun d!1156592 () Bool)

(assert (=> d!1156592 e!2412967))

(declare-fun c!678343 () Bool)

(assert (=> d!1156592 (= c!678343 (> (size!31079 (_1!23449 lt!1359631)) 0))))

(assert (=> d!1156592 (= lt!1359631 e!2412966)))

(declare-fun c!678344 () Bool)

(assert (=> d!1156592 (= c!678344 ((_ is Some!8857) lt!1359630))))

(assert (=> d!1156592 (= lt!1359630 (maxPrefix!3331 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1156592 (= (lexList!1795 thiss!20629 rules!2768 suffix!1176) lt!1359631)))

(declare-fun b!3902498 () Bool)

(assert (=> b!3902498 (= e!2412967 (= (_2!23449 lt!1359631) suffix!1176))))

(assert (= (and d!1156592 c!678344) b!3902494))

(assert (= (and d!1156592 (not c!678344)) b!3902497))

(assert (= (and d!1156592 c!678343) b!3902495))

(assert (= (and d!1156592 (not c!678343)) b!3902498))

(assert (= (and b!3902495 res!1578860) b!3902496))

(declare-fun m!4463137 () Bool)

(assert (=> b!3902494 m!4463137))

(declare-fun m!4463139 () Bool)

(assert (=> b!3902495 m!4463139))

(assert (=> b!3902495 m!4462587))

(declare-fun m!4463141 () Bool)

(assert (=> b!3902496 m!4463141))

(declare-fun m!4463143 () Bool)

(assert (=> d!1156592 m!4463143))

(declare-fun m!4463145 () Bool)

(assert (=> d!1156592 m!4463145))

(assert (=> b!3902079 d!1156592))

(declare-fun d!1156594 () Bool)

(assert (=> d!1156594 (= (get!13683 lt!1359471) (v!39171 lt!1359471))))

(assert (=> b!3902100 d!1156594))

(declare-fun b!3902499 () Bool)

(declare-fun e!2412969 () Bool)

(assert (=> b!3902499 (= e!2412969 (inv!15 (value!204117 (_1!23450 (v!39171 err!4401)))))))

(declare-fun b!3902500 () Bool)

(declare-fun e!2412971 () Bool)

(declare-fun e!2412970 () Bool)

(assert (=> b!3902500 (= e!2412971 e!2412970)))

(declare-fun c!678345 () Bool)

(assert (=> b!3902500 (= c!678345 ((_ is IntegerValue!20005) (value!204117 (_1!23450 (v!39171 err!4401)))))))

(declare-fun b!3902501 () Bool)

(assert (=> b!3902501 (= e!2412971 (inv!16 (value!204117 (_1!23450 (v!39171 err!4401)))))))

(declare-fun d!1156596 () Bool)

(declare-fun c!678346 () Bool)

(assert (=> d!1156596 (= c!678346 ((_ is IntegerValue!20004) (value!204117 (_1!23450 (v!39171 err!4401)))))))

(assert (=> d!1156596 (= (inv!21 (value!204117 (_1!23450 (v!39171 err!4401)))) e!2412971)))

(declare-fun b!3902502 () Bool)

(assert (=> b!3902502 (= e!2412970 (inv!17 (value!204117 (_1!23450 (v!39171 err!4401)))))))

(declare-fun b!3902503 () Bool)

(declare-fun res!1578861 () Bool)

(assert (=> b!3902503 (=> res!1578861 e!2412969)))

(assert (=> b!3902503 (= res!1578861 (not ((_ is IntegerValue!20006) (value!204117 (_1!23450 (v!39171 err!4401))))))))

(assert (=> b!3902503 (= e!2412970 e!2412969)))

(assert (= (and d!1156596 c!678346) b!3902501))

(assert (= (and d!1156596 (not c!678346)) b!3902500))

(assert (= (and b!3902500 c!678345) b!3902502))

(assert (= (and b!3902500 (not c!678345)) b!3902503))

(assert (= (and b!3902503 (not res!1578861)) b!3902499))

(declare-fun m!4463147 () Bool)

(assert (=> b!3902499 m!4463147))

(declare-fun m!4463149 () Bool)

(assert (=> b!3902501 m!4463149))

(declare-fun m!4463151 () Bool)

(assert (=> b!3902502 m!4463151))

(assert (=> b!3902081 d!1156596))

(declare-fun b!3902593 () Bool)

(declare-fun res!1578880 () Bool)

(declare-fun e!2413036 () Bool)

(assert (=> b!3902593 (=> (not res!1578880) (not e!2413036))))

(declare-fun lt!1359652 () Option!8858)

(assert (=> b!3902593 (= res!1578880 (= (value!204117 (_1!23450 (get!13683 lt!1359652))) (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (get!13683 lt!1359652)))) (seqFromList!4705 (originalCharacters!7038 (_1!23450 (get!13683 lt!1359652)))))))))

(declare-fun b!3902594 () Bool)

(declare-fun res!1578881 () Bool)

(assert (=> b!3902594 (=> (not res!1578881) (not e!2413036))))

(assert (=> b!3902594 (= res!1578881 (= (rule!9348 (_1!23450 (get!13683 lt!1359652))) (h!46808 rules!2768)))))

(declare-fun b!3902596 () Bool)

(declare-fun res!1578877 () Bool)

(assert (=> b!3902596 (=> (not res!1578877) (not e!2413036))))

(assert (=> b!3902596 (= res!1578877 (= (++!10634 (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359652)))) (_2!23450 (get!13683 lt!1359652))) lt!1359464))))

(declare-fun b!3902597 () Bool)

(declare-fun res!1578879 () Bool)

(assert (=> b!3902597 (=> (not res!1578879) (not e!2413036))))

(assert (=> b!3902597 (= res!1578879 (< (size!31076 (_2!23450 (get!13683 lt!1359652))) (size!31076 lt!1359464)))))

(declare-fun b!3902598 () Bool)

(declare-fun e!2413037 () Bool)

(declare-datatypes ((tuple2!40636 0))(
  ( (tuple2!40637 (_1!23452 List!41510) (_2!23452 List!41510)) )
))
(declare-fun findLongestMatchInner!1226 (Regex!11343 List!41510 Int List!41510 List!41510 Int) tuple2!40636)

(assert (=> b!3902598 (= e!2413037 (matchR!5438 (regex!6438 (h!46808 rules!2768)) (_1!23452 (findLongestMatchInner!1226 (regex!6438 (h!46808 rules!2768)) Nil!41386 (size!31076 Nil!41386) lt!1359464 lt!1359464 (size!31076 lt!1359464)))))))

(declare-fun b!3902599 () Bool)

(assert (=> b!3902599 (= e!2413036 (= (size!31075 (_1!23450 (get!13683 lt!1359652))) (size!31076 (originalCharacters!7038 (_1!23450 (get!13683 lt!1359652))))))))

(declare-fun b!3902600 () Bool)

(declare-fun e!2413035 () Bool)

(assert (=> b!3902600 (= e!2413035 e!2413036)))

(declare-fun res!1578882 () Bool)

(assert (=> b!3902600 (=> (not res!1578882) (not e!2413036))))

(assert (=> b!3902600 (= res!1578882 (matchR!5438 (regex!6438 (h!46808 rules!2768)) (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359652))))))))

(declare-fun b!3902601 () Bool)

(declare-fun e!2413034 () Option!8858)

(assert (=> b!3902601 (= e!2413034 None!8857)))

(declare-fun d!1156598 () Bool)

(assert (=> d!1156598 e!2413035))

(declare-fun res!1578878 () Bool)

(assert (=> d!1156598 (=> res!1578878 e!2413035)))

(assert (=> d!1156598 (= res!1578878 (isEmpty!24608 lt!1359652))))

(assert (=> d!1156598 (= lt!1359652 e!2413034)))

(declare-fun c!678351 () Bool)

(declare-fun lt!1359648 () tuple2!40636)

(assert (=> d!1156598 (= c!678351 (isEmpty!24605 (_1!23452 lt!1359648)))))

(declare-fun findLongestMatch!1139 (Regex!11343 List!41510) tuple2!40636)

(assert (=> d!1156598 (= lt!1359648 (findLongestMatch!1139 (regex!6438 (h!46808 rules!2768)) lt!1359464))))

(assert (=> d!1156598 (ruleValid!2386 thiss!20629 (h!46808 rules!2768))))

(assert (=> d!1156598 (= (maxPrefixOneRule!2407 thiss!20629 (h!46808 rules!2768) lt!1359464) lt!1359652)))

(declare-fun b!3902595 () Bool)

(declare-fun size!31080 (BalanceConc!24892) Int)

(assert (=> b!3902595 (= e!2413034 (Some!8857 (tuple2!40633 (Token!12015 (apply!9677 (transformation!6438 (h!46808 rules!2768)) (seqFromList!4705 (_1!23452 lt!1359648))) (h!46808 rules!2768) (size!31080 (seqFromList!4705 (_1!23452 lt!1359648))) (_1!23452 lt!1359648)) (_2!23452 lt!1359648))))))

(declare-fun lt!1359651 () Unit!59506)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1199 (Regex!11343 List!41510) Unit!59506)

(assert (=> b!3902595 (= lt!1359651 (longestMatchIsAcceptedByMatchOrIsEmpty!1199 (regex!6438 (h!46808 rules!2768)) lt!1359464))))

(declare-fun res!1578883 () Bool)

(assert (=> b!3902595 (= res!1578883 (isEmpty!24605 (_1!23452 (findLongestMatchInner!1226 (regex!6438 (h!46808 rules!2768)) Nil!41386 (size!31076 Nil!41386) lt!1359464 lt!1359464 (size!31076 lt!1359464)))))))

(assert (=> b!3902595 (=> res!1578883 e!2413037)))

(assert (=> b!3902595 e!2413037))

(declare-fun lt!1359650 () Unit!59506)

(assert (=> b!3902595 (= lt!1359650 lt!1359651)))

(declare-fun lt!1359649 () Unit!59506)

(declare-fun lemmaSemiInverse!1732 (TokenValueInjection!12764 BalanceConc!24892) Unit!59506)

(assert (=> b!3902595 (= lt!1359649 (lemmaSemiInverse!1732 (transformation!6438 (h!46808 rules!2768)) (seqFromList!4705 (_1!23452 lt!1359648))))))

(assert (= (and d!1156598 c!678351) b!3902601))

(assert (= (and d!1156598 (not c!678351)) b!3902595))

(assert (= (and b!3902595 (not res!1578883)) b!3902598))

(assert (= (and d!1156598 (not res!1578878)) b!3902600))

(assert (= (and b!3902600 res!1578882) b!3902596))

(assert (= (and b!3902596 res!1578877) b!3902597))

(assert (= (and b!3902597 res!1578879) b!3902594))

(assert (= (and b!3902594 res!1578881) b!3902593))

(assert (= (and b!3902593 res!1578880) b!3902599))

(declare-fun m!4463185 () Bool)

(assert (=> d!1156598 m!4463185))

(declare-fun m!4463187 () Bool)

(assert (=> d!1156598 m!4463187))

(declare-fun m!4463189 () Bool)

(assert (=> d!1156598 m!4463189))

(declare-fun m!4463191 () Bool)

(assert (=> d!1156598 m!4463191))

(declare-fun m!4463193 () Bool)

(assert (=> b!3902594 m!4463193))

(assert (=> b!3902597 m!4463193))

(declare-fun m!4463195 () Bool)

(assert (=> b!3902597 m!4463195))

(assert (=> b!3902597 m!4462739))

(assert (=> b!3902596 m!4463193))

(declare-fun m!4463197 () Bool)

(assert (=> b!3902596 m!4463197))

(assert (=> b!3902596 m!4463197))

(declare-fun m!4463199 () Bool)

(assert (=> b!3902596 m!4463199))

(assert (=> b!3902596 m!4463199))

(declare-fun m!4463201 () Bool)

(assert (=> b!3902596 m!4463201))

(declare-fun m!4463203 () Bool)

(assert (=> b!3902595 m!4463203))

(declare-fun m!4463205 () Bool)

(assert (=> b!3902595 m!4463205))

(declare-fun m!4463207 () Bool)

(assert (=> b!3902595 m!4463207))

(assert (=> b!3902595 m!4462589))

(assert (=> b!3902595 m!4463205))

(assert (=> b!3902595 m!4463205))

(declare-fun m!4463209 () Bool)

(assert (=> b!3902595 m!4463209))

(assert (=> b!3902595 m!4462739))

(assert (=> b!3902595 m!4462589))

(assert (=> b!3902595 m!4462739))

(declare-fun m!4463211 () Bool)

(assert (=> b!3902595 m!4463211))

(assert (=> b!3902595 m!4463205))

(declare-fun m!4463213 () Bool)

(assert (=> b!3902595 m!4463213))

(declare-fun m!4463215 () Bool)

(assert (=> b!3902595 m!4463215))

(assert (=> b!3902593 m!4463193))

(declare-fun m!4463217 () Bool)

(assert (=> b!3902593 m!4463217))

(assert (=> b!3902593 m!4463217))

(declare-fun m!4463219 () Bool)

(assert (=> b!3902593 m!4463219))

(assert (=> b!3902600 m!4463193))

(assert (=> b!3902600 m!4463197))

(assert (=> b!3902600 m!4463197))

(assert (=> b!3902600 m!4463199))

(assert (=> b!3902600 m!4463199))

(declare-fun m!4463221 () Bool)

(assert (=> b!3902600 m!4463221))

(assert (=> b!3902599 m!4463193))

(declare-fun m!4463223 () Bool)

(assert (=> b!3902599 m!4463223))

(assert (=> b!3902598 m!4462589))

(assert (=> b!3902598 m!4462739))

(assert (=> b!3902598 m!4462589))

(assert (=> b!3902598 m!4462739))

(assert (=> b!3902598 m!4463211))

(declare-fun m!4463225 () Bool)

(assert (=> b!3902598 m!4463225))

(assert (=> bm!283875 d!1156598))

(declare-fun b!3902602 () Bool)

(declare-fun res!1578884 () Bool)

(declare-fun e!2413039 () Bool)

(assert (=> b!3902602 (=> (not res!1578884) (not e!2413039))))

(declare-fun lt!1359653 () Option!8858)

(assert (=> b!3902602 (= res!1578884 (= (value!204117 (_1!23450 (get!13683 lt!1359653))) (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (get!13683 lt!1359653)))) (seqFromList!4705 (originalCharacters!7038 (_1!23450 (get!13683 lt!1359653)))))))))

(declare-fun b!3902603 () Bool)

(declare-fun e!2413038 () Bool)

(assert (=> b!3902603 (= e!2413038 e!2413039)))

(declare-fun res!1578888 () Bool)

(assert (=> b!3902603 (=> (not res!1578888) (not e!2413039))))

(assert (=> b!3902603 (= res!1578888 (isDefined!6909 lt!1359653))))

(declare-fun b!3902604 () Bool)

(declare-fun res!1578889 () Bool)

(assert (=> b!3902604 (=> (not res!1578889) (not e!2413039))))

(assert (=> b!3902604 (= res!1578889 (= (++!10634 (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359653)))) (_2!23450 (get!13683 lt!1359653))) (++!10634 prefix!426 Nil!41386)))))

(declare-fun b!3902605 () Bool)

(assert (=> b!3902605 (= e!2413039 (contains!8319 rules!2768 (rule!9348 (_1!23450 (get!13683 lt!1359653)))))))

(declare-fun b!3902607 () Bool)

(declare-fun res!1578886 () Bool)

(assert (=> b!3902607 (=> (not res!1578886) (not e!2413039))))

(assert (=> b!3902607 (= res!1578886 (< (size!31076 (_2!23450 (get!13683 lt!1359653))) (size!31076 (++!10634 prefix!426 Nil!41386))))))

(declare-fun b!3902606 () Bool)

(declare-fun res!1578887 () Bool)

(assert (=> b!3902606 (=> (not res!1578887) (not e!2413039))))

(assert (=> b!3902606 (= res!1578887 (matchR!5438 (regex!6438 (rule!9348 (_1!23450 (get!13683 lt!1359653)))) (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359653))))))))

(declare-fun d!1156604 () Bool)

(assert (=> d!1156604 e!2413038))

(declare-fun res!1578890 () Bool)

(assert (=> d!1156604 (=> res!1578890 e!2413038)))

(assert (=> d!1156604 (= res!1578890 (isEmpty!24608 lt!1359653))))

(declare-fun e!2413040 () Option!8858)

(assert (=> d!1156604 (= lt!1359653 e!2413040)))

(declare-fun c!678352 () Bool)

(assert (=> d!1156604 (= c!678352 (and ((_ is Cons!41388) rules!2768) ((_ is Nil!41388) (t!320221 rules!2768))))))

(declare-fun lt!1359656 () Unit!59506)

(declare-fun lt!1359657 () Unit!59506)

(assert (=> d!1156604 (= lt!1359656 lt!1359657)))

(assert (=> d!1156604 (isPrefix!3533 (++!10634 prefix!426 Nil!41386) (++!10634 prefix!426 Nil!41386))))

(assert (=> d!1156604 (= lt!1359657 (lemmaIsPrefixRefl!2240 (++!10634 prefix!426 Nil!41386) (++!10634 prefix!426 Nil!41386)))))

(assert (=> d!1156604 (rulesValidInductive!2310 thiss!20629 rules!2768)))

(assert (=> d!1156604 (= (maxPrefix!3331 thiss!20629 rules!2768 (++!10634 prefix!426 Nil!41386)) lt!1359653)))

(declare-fun b!3902608 () Bool)

(declare-fun call!283891 () Option!8858)

(assert (=> b!3902608 (= e!2413040 call!283891)))

(declare-fun b!3902609 () Bool)

(declare-fun lt!1359655 () Option!8858)

(declare-fun lt!1359654 () Option!8858)

(assert (=> b!3902609 (= e!2413040 (ite (and ((_ is None!8857) lt!1359655) ((_ is None!8857) lt!1359654)) None!8857 (ite ((_ is None!8857) lt!1359654) lt!1359655 (ite ((_ is None!8857) lt!1359655) lt!1359654 (ite (>= (size!31075 (_1!23450 (v!39171 lt!1359655))) (size!31075 (_1!23450 (v!39171 lt!1359654)))) lt!1359655 lt!1359654)))))))

(assert (=> b!3902609 (= lt!1359655 call!283891)))

(assert (=> b!3902609 (= lt!1359654 (maxPrefix!3331 thiss!20629 (t!320221 rules!2768) (++!10634 prefix!426 Nil!41386)))))

(declare-fun bm!283886 () Bool)

(assert (=> bm!283886 (= call!283891 (maxPrefixOneRule!2407 thiss!20629 (h!46808 rules!2768) (++!10634 prefix!426 Nil!41386)))))

(declare-fun b!3902610 () Bool)

(declare-fun res!1578885 () Bool)

(assert (=> b!3902610 (=> (not res!1578885) (not e!2413039))))

(assert (=> b!3902610 (= res!1578885 (= (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359653)))) (originalCharacters!7038 (_1!23450 (get!13683 lt!1359653)))))))

(assert (= (and d!1156604 c!678352) b!3902608))

(assert (= (and d!1156604 (not c!678352)) b!3902609))

(assert (= (or b!3902608 b!3902609) bm!283886))

(assert (= (and d!1156604 (not res!1578890)) b!3902603))

(assert (= (and b!3902603 res!1578888) b!3902610))

(assert (= (and b!3902610 res!1578885) b!3902607))

(assert (= (and b!3902607 res!1578886) b!3902604))

(assert (= (and b!3902604 res!1578889) b!3902602))

(assert (= (and b!3902602 res!1578884) b!3902606))

(assert (= (and b!3902606 res!1578887) b!3902605))

(declare-fun m!4463227 () Bool)

(assert (=> b!3902603 m!4463227))

(assert (=> bm!283886 m!4462477))

(declare-fun m!4463229 () Bool)

(assert (=> bm!283886 m!4463229))

(declare-fun m!4463231 () Bool)

(assert (=> b!3902604 m!4463231))

(declare-fun m!4463233 () Bool)

(assert (=> b!3902604 m!4463233))

(assert (=> b!3902604 m!4463233))

(declare-fun m!4463235 () Bool)

(assert (=> b!3902604 m!4463235))

(assert (=> b!3902604 m!4463235))

(declare-fun m!4463237 () Bool)

(assert (=> b!3902604 m!4463237))

(assert (=> b!3902602 m!4463231))

(declare-fun m!4463239 () Bool)

(assert (=> b!3902602 m!4463239))

(assert (=> b!3902602 m!4463239))

(declare-fun m!4463241 () Bool)

(assert (=> b!3902602 m!4463241))

(declare-fun m!4463243 () Bool)

(assert (=> d!1156604 m!4463243))

(assert (=> d!1156604 m!4462477))

(assert (=> d!1156604 m!4462477))

(declare-fun m!4463245 () Bool)

(assert (=> d!1156604 m!4463245))

(assert (=> d!1156604 m!4462477))

(assert (=> d!1156604 m!4462477))

(declare-fun m!4463247 () Bool)

(assert (=> d!1156604 m!4463247))

(assert (=> d!1156604 m!4463115))

(assert (=> b!3902610 m!4463231))

(assert (=> b!3902610 m!4463233))

(assert (=> b!3902610 m!4463233))

(assert (=> b!3902610 m!4463235))

(assert (=> b!3902609 m!4462477))

(declare-fun m!4463249 () Bool)

(assert (=> b!3902609 m!4463249))

(assert (=> b!3902605 m!4463231))

(declare-fun m!4463251 () Bool)

(assert (=> b!3902605 m!4463251))

(assert (=> b!3902607 m!4463231))

(declare-fun m!4463253 () Bool)

(assert (=> b!3902607 m!4463253))

(assert (=> b!3902607 m!4462477))

(declare-fun m!4463255 () Bool)

(assert (=> b!3902607 m!4463255))

(assert (=> b!3902606 m!4463231))

(assert (=> b!3902606 m!4463233))

(assert (=> b!3902606 m!4463233))

(assert (=> b!3902606 m!4463235))

(assert (=> b!3902606 m!4463235))

(declare-fun m!4463257 () Bool)

(assert (=> b!3902606 m!4463257))

(assert (=> b!3902102 d!1156604))

(declare-fun b!3902613 () Bool)

(declare-fun res!1578892 () Bool)

(declare-fun e!2413042 () Bool)

(assert (=> b!3902613 (=> (not res!1578892) (not e!2413042))))

(declare-fun lt!1359658 () List!41510)

(assert (=> b!3902613 (= res!1578892 (= (size!31076 lt!1359658) (+ (size!31076 prefix!426) (size!31076 Nil!41386))))))

(declare-fun b!3902614 () Bool)

(assert (=> b!3902614 (= e!2413042 (or (not (= Nil!41386 Nil!41386)) (= lt!1359658 prefix!426)))))

(declare-fun b!3902612 () Bool)

(declare-fun e!2413041 () List!41510)

(assert (=> b!3902612 (= e!2413041 (Cons!41386 (h!46806 prefix!426) (++!10634 (t!320219 prefix!426) Nil!41386)))))

(declare-fun d!1156606 () Bool)

(assert (=> d!1156606 e!2413042))

(declare-fun res!1578891 () Bool)

(assert (=> d!1156606 (=> (not res!1578891) (not e!2413042))))

(assert (=> d!1156606 (= res!1578891 (= (content!6201 lt!1359658) ((_ map or) (content!6201 prefix!426) (content!6201 Nil!41386))))))

(assert (=> d!1156606 (= lt!1359658 e!2413041)))

(declare-fun c!678353 () Bool)

(assert (=> d!1156606 (= c!678353 ((_ is Nil!41386) prefix!426))))

(assert (=> d!1156606 (= (++!10634 prefix!426 Nil!41386) lt!1359658)))

(declare-fun b!3902611 () Bool)

(assert (=> b!3902611 (= e!2413041 Nil!41386)))

(assert (= (and d!1156606 c!678353) b!3902611))

(assert (= (and d!1156606 (not c!678353)) b!3902612))

(assert (= (and d!1156606 res!1578891) b!3902613))

(assert (= (and b!3902613 res!1578892) b!3902614))

(declare-fun m!4463259 () Bool)

(assert (=> b!3902613 m!4463259))

(assert (=> b!3902613 m!4462849))

(assert (=> b!3902613 m!4462589))

(declare-fun m!4463261 () Bool)

(assert (=> b!3902612 m!4463261))

(declare-fun m!4463263 () Bool)

(assert (=> d!1156606 m!4463263))

(assert (=> d!1156606 m!4462855))

(declare-fun m!4463265 () Bool)

(assert (=> d!1156606 m!4463265))

(assert (=> b!3902102 d!1156606))

(declare-fun b!3902615 () Bool)

(declare-fun res!1578893 () Bool)

(declare-fun e!2413044 () Bool)

(assert (=> b!3902615 (=> (not res!1578893) (not e!2413044))))

(declare-fun lt!1359659 () Option!8858)

(assert (=> b!3902615 (= res!1578893 (= (value!204117 (_1!23450 (get!13683 lt!1359659))) (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (get!13683 lt!1359659)))) (seqFromList!4705 (originalCharacters!7038 (_1!23450 (get!13683 lt!1359659)))))))))

(declare-fun b!3902616 () Bool)

(declare-fun e!2413043 () Bool)

(assert (=> b!3902616 (= e!2413043 e!2413044)))

(declare-fun res!1578897 () Bool)

(assert (=> b!3902616 (=> (not res!1578897) (not e!2413044))))

(assert (=> b!3902616 (= res!1578897 (isDefined!6909 lt!1359659))))

(declare-fun b!3902617 () Bool)

(declare-fun res!1578898 () Bool)

(assert (=> b!3902617 (=> (not res!1578898) (not e!2413044))))

(assert (=> b!3902617 (= res!1578898 (= (++!10634 (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359659)))) (_2!23450 (get!13683 lt!1359659))) prefix!426))))

(declare-fun b!3902618 () Bool)

(assert (=> b!3902618 (= e!2413044 (contains!8319 rules!2768 (rule!9348 (_1!23450 (get!13683 lt!1359659)))))))

(declare-fun b!3902620 () Bool)

(declare-fun res!1578895 () Bool)

(assert (=> b!3902620 (=> (not res!1578895) (not e!2413044))))

(assert (=> b!3902620 (= res!1578895 (< (size!31076 (_2!23450 (get!13683 lt!1359659))) (size!31076 prefix!426)))))

(declare-fun b!3902619 () Bool)

(declare-fun res!1578896 () Bool)

(assert (=> b!3902619 (=> (not res!1578896) (not e!2413044))))

(assert (=> b!3902619 (= res!1578896 (matchR!5438 (regex!6438 (rule!9348 (_1!23450 (get!13683 lt!1359659)))) (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359659))))))))

(declare-fun d!1156608 () Bool)

(assert (=> d!1156608 e!2413043))

(declare-fun res!1578899 () Bool)

(assert (=> d!1156608 (=> res!1578899 e!2413043)))

(assert (=> d!1156608 (= res!1578899 (isEmpty!24608 lt!1359659))))

(declare-fun e!2413045 () Option!8858)

(assert (=> d!1156608 (= lt!1359659 e!2413045)))

(declare-fun c!678354 () Bool)

(assert (=> d!1156608 (= c!678354 (and ((_ is Cons!41388) rules!2768) ((_ is Nil!41388) (t!320221 rules!2768))))))

(declare-fun lt!1359662 () Unit!59506)

(declare-fun lt!1359663 () Unit!59506)

(assert (=> d!1156608 (= lt!1359662 lt!1359663)))

(assert (=> d!1156608 (isPrefix!3533 prefix!426 prefix!426)))

(assert (=> d!1156608 (= lt!1359663 (lemmaIsPrefixRefl!2240 prefix!426 prefix!426))))

(assert (=> d!1156608 (rulesValidInductive!2310 thiss!20629 rules!2768)))

(assert (=> d!1156608 (= (maxPrefix!3331 thiss!20629 rules!2768 prefix!426) lt!1359659)))

(declare-fun b!3902621 () Bool)

(declare-fun call!283892 () Option!8858)

(assert (=> b!3902621 (= e!2413045 call!283892)))

(declare-fun b!3902622 () Bool)

(declare-fun lt!1359661 () Option!8858)

(declare-fun lt!1359660 () Option!8858)

(assert (=> b!3902622 (= e!2413045 (ite (and ((_ is None!8857) lt!1359661) ((_ is None!8857) lt!1359660)) None!8857 (ite ((_ is None!8857) lt!1359660) lt!1359661 (ite ((_ is None!8857) lt!1359661) lt!1359660 (ite (>= (size!31075 (_1!23450 (v!39171 lt!1359661))) (size!31075 (_1!23450 (v!39171 lt!1359660)))) lt!1359661 lt!1359660)))))))

(assert (=> b!3902622 (= lt!1359661 call!283892)))

(assert (=> b!3902622 (= lt!1359660 (maxPrefix!3331 thiss!20629 (t!320221 rules!2768) prefix!426))))

(declare-fun bm!283887 () Bool)

(assert (=> bm!283887 (= call!283892 (maxPrefixOneRule!2407 thiss!20629 (h!46808 rules!2768) prefix!426))))

(declare-fun b!3902623 () Bool)

(declare-fun res!1578894 () Bool)

(assert (=> b!3902623 (=> (not res!1578894) (not e!2413044))))

(assert (=> b!3902623 (= res!1578894 (= (list!15384 (charsOf!4262 (_1!23450 (get!13683 lt!1359659)))) (originalCharacters!7038 (_1!23450 (get!13683 lt!1359659)))))))

(assert (= (and d!1156608 c!678354) b!3902621))

(assert (= (and d!1156608 (not c!678354)) b!3902622))

(assert (= (or b!3902621 b!3902622) bm!283887))

(assert (= (and d!1156608 (not res!1578899)) b!3902616))

(assert (= (and b!3902616 res!1578897) b!3902623))

(assert (= (and b!3902623 res!1578894) b!3902620))

(assert (= (and b!3902620 res!1578895) b!3902617))

(assert (= (and b!3902617 res!1578898) b!3902615))

(assert (= (and b!3902615 res!1578893) b!3902619))

(assert (= (and b!3902619 res!1578896) b!3902618))

(declare-fun m!4463267 () Bool)

(assert (=> b!3902616 m!4463267))

(declare-fun m!4463269 () Bool)

(assert (=> bm!283887 m!4463269))

(declare-fun m!4463271 () Bool)

(assert (=> b!3902617 m!4463271))

(declare-fun m!4463273 () Bool)

(assert (=> b!3902617 m!4463273))

(assert (=> b!3902617 m!4463273))

(declare-fun m!4463275 () Bool)

(assert (=> b!3902617 m!4463275))

(assert (=> b!3902617 m!4463275))

(declare-fun m!4463277 () Bool)

(assert (=> b!3902617 m!4463277))

(assert (=> b!3902615 m!4463271))

(declare-fun m!4463279 () Bool)

(assert (=> b!3902615 m!4463279))

(assert (=> b!3902615 m!4463279))

(declare-fun m!4463281 () Bool)

(assert (=> b!3902615 m!4463281))

(declare-fun m!4463283 () Bool)

(assert (=> d!1156608 m!4463283))

(declare-fun m!4463285 () Bool)

(assert (=> d!1156608 m!4463285))

(declare-fun m!4463287 () Bool)

(assert (=> d!1156608 m!4463287))

(assert (=> d!1156608 m!4463115))

(assert (=> b!3902623 m!4463271))

(assert (=> b!3902623 m!4463273))

(assert (=> b!3902623 m!4463273))

(assert (=> b!3902623 m!4463275))

(declare-fun m!4463289 () Bool)

(assert (=> b!3902622 m!4463289))

(assert (=> b!3902618 m!4463271))

(declare-fun m!4463291 () Bool)

(assert (=> b!3902618 m!4463291))

(assert (=> b!3902620 m!4463271))

(declare-fun m!4463293 () Bool)

(assert (=> b!3902620 m!4463293))

(assert (=> b!3902620 m!4462849))

(assert (=> b!3902619 m!4463271))

(assert (=> b!3902619 m!4463273))

(assert (=> b!3902619 m!4463273))

(assert (=> b!3902619 m!4463275))

(assert (=> b!3902619 m!4463275))

(declare-fun m!4463295 () Bool)

(assert (=> b!3902619 m!4463295))

(assert (=> b!3902102 d!1156608))

(declare-fun d!1156610 () Bool)

(assert (=> d!1156610 (= (isDefined!6909 lt!1359471) (not (isEmpty!24608 lt!1359471)))))

(declare-fun bs!584993 () Bool)

(assert (= bs!584993 d!1156610))

(declare-fun m!4463297 () Bool)

(assert (=> bs!584993 m!4463297))

(assert (=> b!3902102 d!1156610))

(declare-fun d!1156612 () Bool)

(assert (=> d!1156612 (= (maxPrefix!3331 thiss!20629 rules!2768 (++!10634 prefix!426 Nil!41386)) (Some!8857 (tuple2!40633 (_1!23450 (v!39171 lt!1359466)) Nil!41386)))))

(declare-fun lt!1359666 () Unit!59506)

(declare-fun choose!23102 (LexerInterface!6027 List!41512 List!41510 List!41510 List!41510 Token!12014 List!41510 List!41510) Unit!59506)

(assert (=> d!1156612 (= lt!1359666 (choose!23102 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41386 (_1!23450 (v!39171 lt!1359466)) suffix!1176 Nil!41386))))

(assert (=> d!1156612 (not (isEmpty!24604 rules!2768))))

(assert (=> d!1156612 (= (lemmaMaxPrefixThenWithShorterSuffix!40 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41386 (_1!23450 (v!39171 lt!1359466)) suffix!1176 Nil!41386) lt!1359666)))

(declare-fun bs!584994 () Bool)

(assert (= bs!584994 d!1156612))

(assert (=> bs!584994 m!4462477))

(assert (=> bs!584994 m!4462477))

(assert (=> bs!584994 m!4462479))

(declare-fun m!4463299 () Bool)

(assert (=> bs!584994 m!4463299))

(assert (=> bs!584994 m!4462461))

(assert (=> b!3902102 d!1156612))

(declare-fun d!1156614 () Bool)

(assert (=> d!1156614 (= (isEmpty!24604 rules!2768) ((_ is Nil!41388) rules!2768))))

(assert (=> b!3902083 d!1156614))

(declare-fun d!1156616 () Bool)

(declare-fun res!1578902 () Bool)

(declare-fun e!2413048 () Bool)

(assert (=> d!1156616 (=> (not res!1578902) (not e!2413048))))

(declare-fun rulesValid!2496 (LexerInterface!6027 List!41512) Bool)

(assert (=> d!1156616 (= res!1578902 (rulesValid!2496 thiss!20629 rules!2768))))

(assert (=> d!1156616 (= (rulesInvariant!5370 thiss!20629 rules!2768) e!2413048)))

(declare-fun b!3902626 () Bool)

(declare-datatypes ((List!41515 0))(
  ( (Nil!41391) (Cons!41391 (h!46811 String!47058) (t!320364 List!41515)) )
))
(declare-fun noDuplicateTag!2497 (LexerInterface!6027 List!41512 List!41515) Bool)

(assert (=> b!3902626 (= e!2413048 (noDuplicateTag!2497 thiss!20629 rules!2768 Nil!41391))))

(assert (= (and d!1156616 res!1578902) b!3902626))

(declare-fun m!4463301 () Bool)

(assert (=> d!1156616 m!4463301))

(declare-fun m!4463303 () Bool)

(assert (=> b!3902626 m!4463303))

(assert (=> b!3902103 d!1156616))

(declare-fun b!3902627 () Bool)

(declare-fun e!2413049 () tuple2!40630)

(declare-fun lt!1359668 () Option!8858)

(declare-fun lt!1359667 () tuple2!40630)

(assert (=> b!3902627 (= e!2413049 (tuple2!40631 (Cons!41389 (_1!23450 (v!39171 lt!1359668)) (_1!23449 lt!1359667)) (_2!23449 lt!1359667)))))

(assert (=> b!3902627 (= lt!1359667 (lexList!1795 thiss!20629 rules!2768 (_2!23450 (v!39171 lt!1359668))))))

(declare-fun b!3902628 () Bool)

(declare-fun e!2413050 () Bool)

(declare-fun e!2413051 () Bool)

(assert (=> b!3902628 (= e!2413050 e!2413051)))

(declare-fun res!1578903 () Bool)

(declare-fun lt!1359669 () tuple2!40630)

(assert (=> b!3902628 (= res!1578903 (< (size!31076 (_2!23449 lt!1359669)) (size!31076 (_2!23450 (v!39171 lt!1359466)))))))

(assert (=> b!3902628 (=> (not res!1578903) (not e!2413051))))

(declare-fun b!3902629 () Bool)

(assert (=> b!3902629 (= e!2413051 (not (isEmpty!24606 (_1!23449 lt!1359669))))))

(declare-fun b!3902630 () Bool)

(assert (=> b!3902630 (= e!2413049 (tuple2!40631 Nil!41389 (_2!23450 (v!39171 lt!1359466))))))

(declare-fun d!1156618 () Bool)

(assert (=> d!1156618 e!2413050))

(declare-fun c!678355 () Bool)

(assert (=> d!1156618 (= c!678355 (> (size!31079 (_1!23449 lt!1359669)) 0))))

(assert (=> d!1156618 (= lt!1359669 e!2413049)))

(declare-fun c!678356 () Bool)

(assert (=> d!1156618 (= c!678356 ((_ is Some!8857) lt!1359668))))

(assert (=> d!1156618 (= lt!1359668 (maxPrefix!3331 thiss!20629 rules!2768 (_2!23450 (v!39171 lt!1359466))))))

(assert (=> d!1156618 (= (lexList!1795 thiss!20629 rules!2768 (_2!23450 (v!39171 lt!1359466))) lt!1359669)))

(declare-fun b!3902631 () Bool)

(assert (=> b!3902631 (= e!2413050 (= (_2!23449 lt!1359669) (_2!23450 (v!39171 lt!1359466))))))

(assert (= (and d!1156618 c!678356) b!3902627))

(assert (= (and d!1156618 (not c!678356)) b!3902630))

(assert (= (and d!1156618 c!678355) b!3902628))

(assert (= (and d!1156618 (not c!678355)) b!3902631))

(assert (= (and b!3902628 res!1578903) b!3902629))

(declare-fun m!4463305 () Bool)

(assert (=> b!3902627 m!4463305))

(declare-fun m!4463307 () Bool)

(assert (=> b!3902628 m!4463307))

(declare-fun m!4463309 () Bool)

(assert (=> b!3902628 m!4463309))

(declare-fun m!4463311 () Bool)

(assert (=> b!3902629 m!4463311))

(declare-fun m!4463313 () Bool)

(assert (=> d!1156618 m!4463313))

(declare-fun m!4463315 () Bool)

(assert (=> d!1156618 m!4463315))

(assert (=> b!3902104 d!1156618))

(declare-fun d!1156620 () Bool)

(declare-fun list!15386 (Conc!12649) List!41510)

(assert (=> d!1156620 (= (list!15384 (charsOf!4262 (_1!23450 (v!39171 lt!1359466)))) (list!15386 (c!678270 (charsOf!4262 (_1!23450 (v!39171 lt!1359466))))))))

(declare-fun bs!584995 () Bool)

(assert (= bs!584995 d!1156620))

(declare-fun m!4463317 () Bool)

(assert (=> bs!584995 m!4463317))

(assert (=> b!3902104 d!1156620))

(declare-fun d!1156622 () Bool)

(assert (=> d!1156622 (isPrefix!3533 lt!1359482 (++!10634 lt!1359482 (_2!23450 (v!39171 lt!1359466))))))

(declare-fun lt!1359672 () Unit!59506)

(declare-fun choose!23103 (List!41510 List!41510) Unit!59506)

(assert (=> d!1156622 (= lt!1359672 (choose!23103 lt!1359482 (_2!23450 (v!39171 lt!1359466))))))

(assert (=> d!1156622 (= (lemmaConcatTwoListThenFirstIsPrefix!2396 lt!1359482 (_2!23450 (v!39171 lt!1359466))) lt!1359672)))

(declare-fun bs!584996 () Bool)

(assert (= bs!584996 d!1156622))

(assert (=> bs!584996 m!4462519))

(assert (=> bs!584996 m!4462519))

(declare-fun m!4463319 () Bool)

(assert (=> bs!584996 m!4463319))

(declare-fun m!4463321 () Bool)

(assert (=> bs!584996 m!4463321))

(assert (=> b!3902104 d!1156622))

(declare-fun d!1156624 () Bool)

(assert (=> d!1156624 (ruleValid!2386 thiss!20629 (rule!9348 (_1!23450 (v!39171 lt!1359466))))))

(declare-fun lt!1359675 () Unit!59506)

(declare-fun choose!23104 (LexerInterface!6027 Rule!12676 List!41512) Unit!59506)

(assert (=> d!1156624 (= lt!1359675 (choose!23104 thiss!20629 (rule!9348 (_1!23450 (v!39171 lt!1359466))) rules!2768))))

(assert (=> d!1156624 (contains!8319 rules!2768 (rule!9348 (_1!23450 (v!39171 lt!1359466))))))

(assert (=> d!1156624 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1466 thiss!20629 (rule!9348 (_1!23450 (v!39171 lt!1359466))) rules!2768) lt!1359675)))

(declare-fun bs!584997 () Bool)

(assert (= bs!584997 d!1156624))

(assert (=> bs!584997 m!4462523))

(declare-fun m!4463323 () Bool)

(assert (=> bs!584997 m!4463323))

(declare-fun m!4463325 () Bool)

(assert (=> bs!584997 m!4463325))

(assert (=> b!3902104 d!1156624))

(declare-fun d!1156626 () Bool)

(declare-fun dynLambda!17774 (Int BalanceConc!24892) TokenValue!6668)

(assert (=> d!1156626 (= (apply!9677 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))) (seqFromList!4705 lt!1359482)) (dynLambda!17774 (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466))))) (seqFromList!4705 lt!1359482)))))

(declare-fun b_lambda!114053 () Bool)

(assert (=> (not b_lambda!114053) (not d!1156626)))

(declare-fun t!320319 () Bool)

(declare-fun tb!230091 () Bool)

(assert (=> (and b!3902107 (= (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320319) tb!230091))

(declare-fun result!279358 () Bool)

(assert (=> tb!230091 (= result!279358 (inv!21 (dynLambda!17774 (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466))))) (seqFromList!4705 lt!1359482))))))

(declare-fun m!4463327 () Bool)

(assert (=> tb!230091 m!4463327))

(assert (=> d!1156626 t!320319))

(declare-fun b_and!295303 () Bool)

(assert (= b_and!295211 (and (=> t!320319 result!279358) b_and!295303)))

(declare-fun t!320321 () Bool)

(declare-fun tb!230093 () Bool)

(assert (=> (and b!3902082 (= (toValue!8878 (transformation!6438 (h!46808 rules!2768))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320321) tb!230093))

(declare-fun result!279362 () Bool)

(assert (= result!279362 result!279358))

(assert (=> d!1156626 t!320321))

(declare-fun b_and!295305 () Bool)

(assert (= b_and!295215 (and (=> t!320321 result!279362) b_and!295305)))

(declare-fun t!320323 () Bool)

(declare-fun tb!230095 () Bool)

(assert (=> (and b!3902080 (= (toValue!8878 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320323) tb!230095))

(declare-fun result!279364 () Bool)

(assert (= result!279364 result!279358))

(assert (=> d!1156626 t!320323))

(declare-fun b_and!295307 () Bool)

(assert (= b_and!295219 (and (=> t!320323 result!279364) b_and!295307)))

(declare-fun t!320325 () Bool)

(declare-fun tb!230097 () Bool)

(assert (=> (and b!3902112 (= (toValue!8878 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320325) tb!230097))

(declare-fun result!279366 () Bool)

(assert (= result!279366 result!279358))

(assert (=> d!1156626 t!320325))

(declare-fun b_and!295309 () Bool)

(assert (= b_and!295223 (and (=> t!320325 result!279366) b_and!295309)))

(assert (=> d!1156626 m!4462535))

(declare-fun m!4463329 () Bool)

(assert (=> d!1156626 m!4463329))

(assert (=> b!3902104 d!1156626))

(declare-fun b!3902634 () Bool)

(declare-fun e!2413056 () Bool)

(declare-fun e!2413055 () Bool)

(assert (=> b!3902634 (= e!2413056 e!2413055)))

(declare-fun res!1578907 () Bool)

(assert (=> b!3902634 (=> (not res!1578907) (not e!2413055))))

(assert (=> b!3902634 (= res!1578907 (not ((_ is Nil!41386) lt!1359467)))))

(declare-fun d!1156628 () Bool)

(declare-fun e!2413057 () Bool)

(assert (=> d!1156628 e!2413057))

(declare-fun res!1578906 () Bool)

(assert (=> d!1156628 (=> res!1578906 e!2413057)))

(declare-fun lt!1359676 () Bool)

(assert (=> d!1156628 (= res!1578906 (not lt!1359676))))

(assert (=> d!1156628 (= lt!1359676 e!2413056)))

(declare-fun res!1578905 () Bool)

(assert (=> d!1156628 (=> res!1578905 e!2413056)))

(assert (=> d!1156628 (= res!1578905 ((_ is Nil!41386) lt!1359482))))

(assert (=> d!1156628 (= (isPrefix!3533 lt!1359482 lt!1359467) lt!1359676)))

(declare-fun b!3902637 () Bool)

(assert (=> b!3902637 (= e!2413057 (>= (size!31076 lt!1359467) (size!31076 lt!1359482)))))

(declare-fun b!3902636 () Bool)

(assert (=> b!3902636 (= e!2413055 (isPrefix!3533 (tail!5969 lt!1359482) (tail!5969 lt!1359467)))))

(declare-fun b!3902635 () Bool)

(declare-fun res!1578904 () Bool)

(assert (=> b!3902635 (=> (not res!1578904) (not e!2413055))))

(assert (=> b!3902635 (= res!1578904 (= (head!8252 lt!1359482) (head!8252 lt!1359467)))))

(assert (= (and d!1156628 (not res!1578905)) b!3902634))

(assert (= (and b!3902634 res!1578907) b!3902635))

(assert (= (and b!3902635 res!1578904) b!3902636))

(assert (= (and d!1156628 (not res!1578906)) b!3902637))

(declare-fun m!4463331 () Bool)

(assert (=> b!3902637 m!4463331))

(assert (=> b!3902637 m!4462527))

(declare-fun m!4463333 () Bool)

(assert (=> b!3902636 m!4463333))

(declare-fun m!4463335 () Bool)

(assert (=> b!3902636 m!4463335))

(assert (=> b!3902636 m!4463333))

(assert (=> b!3902636 m!4463335))

(declare-fun m!4463337 () Bool)

(assert (=> b!3902636 m!4463337))

(declare-fun m!4463339 () Bool)

(assert (=> b!3902635 m!4463339))

(declare-fun m!4463341 () Bool)

(assert (=> b!3902635 m!4463341))

(assert (=> b!3902104 d!1156628))

(declare-fun d!1156630 () Bool)

(declare-fun fromListB!2171 (List!41510) BalanceConc!24892)

(assert (=> d!1156630 (= (seqFromList!4705 lt!1359482) (fromListB!2171 lt!1359482))))

(declare-fun bs!584998 () Bool)

(assert (= bs!584998 d!1156630))

(declare-fun m!4463343 () Bool)

(assert (=> bs!584998 m!4463343))

(assert (=> b!3902104 d!1156630))

(declare-fun d!1156632 () Bool)

(declare-fun lt!1359677 () Int)

(assert (=> d!1156632 (>= lt!1359677 0)))

(declare-fun e!2413058 () Int)

(assert (=> d!1156632 (= lt!1359677 e!2413058)))

(declare-fun c!678357 () Bool)

(assert (=> d!1156632 (= c!678357 ((_ is Nil!41386) lt!1359482))))

(assert (=> d!1156632 (= (size!31076 lt!1359482) lt!1359677)))

(declare-fun b!3902638 () Bool)

(assert (=> b!3902638 (= e!2413058 0)))

(declare-fun b!3902639 () Bool)

(assert (=> b!3902639 (= e!2413058 (+ 1 (size!31076 (t!320219 lt!1359482))))))

(assert (= (and d!1156632 c!678357) b!3902638))

(assert (= (and d!1156632 (not c!678357)) b!3902639))

(declare-fun m!4463345 () Bool)

(assert (=> b!3902639 m!4463345))

(assert (=> b!3902104 d!1156632))

(declare-fun d!1156634 () Bool)

(declare-fun lt!1359680 () BalanceConc!24892)

(assert (=> d!1156634 (= (list!15384 lt!1359680) (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466))))))

(assert (=> d!1156634 (= lt!1359680 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466))))) (value!204117 (_1!23450 (v!39171 lt!1359466)))))))

(assert (=> d!1156634 (= (charsOf!4262 (_1!23450 (v!39171 lt!1359466))) lt!1359680)))

(declare-fun b_lambda!114055 () Bool)

(assert (=> (not b_lambda!114055) (not d!1156634)))

(declare-fun t!320327 () Bool)

(declare-fun tb!230099 () Bool)

(assert (=> (and b!3902107 (= (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320327) tb!230099))

(declare-fun b!3902640 () Bool)

(declare-fun e!2413059 () Bool)

(declare-fun tp!1187499 () Bool)

(assert (=> b!3902640 (= e!2413059 (and (inv!55563 (c!678270 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466))))) (value!204117 (_1!23450 (v!39171 lt!1359466)))))) tp!1187499))))

(declare-fun result!279368 () Bool)

(assert (=> tb!230099 (= result!279368 (and (inv!55564 (dynLambda!17773 (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466))))) (value!204117 (_1!23450 (v!39171 lt!1359466))))) e!2413059))))

(assert (= tb!230099 b!3902640))

(declare-fun m!4463347 () Bool)

(assert (=> b!3902640 m!4463347))

(declare-fun m!4463349 () Bool)

(assert (=> tb!230099 m!4463349))

(assert (=> d!1156634 t!320327))

(declare-fun b_and!295311 () Bool)

(assert (= b_and!295283 (and (=> t!320327 result!279368) b_and!295311)))

(declare-fun tb!230101 () Bool)

(declare-fun t!320329 () Bool)

(assert (=> (and b!3902082 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320329) tb!230101))

(declare-fun result!279370 () Bool)

(assert (= result!279370 result!279368))

(assert (=> d!1156634 t!320329))

(declare-fun b_and!295313 () Bool)

(assert (= b_and!295285 (and (=> t!320329 result!279370) b_and!295313)))

(declare-fun tb!230103 () Bool)

(declare-fun t!320331 () Bool)

(assert (=> (and b!3902080 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320331) tb!230103))

(declare-fun result!279372 () Bool)

(assert (= result!279372 result!279368))

(assert (=> d!1156634 t!320331))

(declare-fun b_and!295315 () Bool)

(assert (= b_and!295287 (and (=> t!320331 result!279372) b_and!295315)))

(declare-fun t!320333 () Bool)

(declare-fun tb!230105 () Bool)

(assert (=> (and b!3902112 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320333) tb!230105))

(declare-fun result!279374 () Bool)

(assert (= result!279374 result!279368))

(assert (=> d!1156634 t!320333))

(declare-fun b_and!295317 () Bool)

(assert (= b_and!295289 (and (=> t!320333 result!279374) b_and!295317)))

(declare-fun m!4463351 () Bool)

(assert (=> d!1156634 m!4463351))

(declare-fun m!4463353 () Bool)

(assert (=> d!1156634 m!4463353))

(assert (=> b!3902104 d!1156634))

(declare-fun d!1156636 () Bool)

(assert (=> d!1156636 (= (_2!23450 (v!39171 lt!1359466)) lt!1359481)))

(declare-fun lt!1359683 () Unit!59506)

(declare-fun choose!23105 (List!41510 List!41510 List!41510 List!41510 List!41510) Unit!59506)

(assert (=> d!1156636 (= lt!1359683 (choose!23105 lt!1359482 (_2!23450 (v!39171 lt!1359466)) lt!1359482 lt!1359481 lt!1359464))))

(assert (=> d!1156636 (isPrefix!3533 lt!1359482 lt!1359464)))

(assert (=> d!1156636 (= (lemmaSamePrefixThenSameSuffix!1754 lt!1359482 (_2!23450 (v!39171 lt!1359466)) lt!1359482 lt!1359481 lt!1359464) lt!1359683)))

(declare-fun bs!584999 () Bool)

(assert (= bs!584999 d!1156636))

(declare-fun m!4463355 () Bool)

(assert (=> bs!584999 m!4463355))

(declare-fun m!4463357 () Bool)

(assert (=> bs!584999 m!4463357))

(assert (=> b!3902104 d!1156636))

(declare-fun d!1156638 () Bool)

(declare-fun res!1578912 () Bool)

(declare-fun e!2413062 () Bool)

(assert (=> d!1156638 (=> (not res!1578912) (not e!2413062))))

(declare-fun validRegex!5160 (Regex!11343) Bool)

(assert (=> d!1156638 (= res!1578912 (validRegex!5160 (regex!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466))))))))

(assert (=> d!1156638 (= (ruleValid!2386 thiss!20629 (rule!9348 (_1!23450 (v!39171 lt!1359466)))) e!2413062)))

(declare-fun b!3902645 () Bool)

(declare-fun res!1578913 () Bool)

(assert (=> b!3902645 (=> (not res!1578913) (not e!2413062))))

(declare-fun nullable!3961 (Regex!11343) Bool)

(assert (=> b!3902645 (= res!1578913 (not (nullable!3961 (regex!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))))))

(declare-fun b!3902646 () Bool)

(assert (=> b!3902646 (= e!2413062 (not (= (tag!7298 (rule!9348 (_1!23450 (v!39171 lt!1359466)))) (String!47059 ""))))))

(assert (= (and d!1156638 res!1578912) b!3902645))

(assert (= (and b!3902645 res!1578913) b!3902646))

(declare-fun m!4463359 () Bool)

(assert (=> d!1156638 m!4463359))

(declare-fun m!4463361 () Bool)

(assert (=> b!3902645 m!4463361))

(assert (=> b!3902104 d!1156638))

(declare-fun d!1156640 () Bool)

(declare-fun lt!1359686 () List!41510)

(assert (=> d!1156640 (= (++!10634 lt!1359482 lt!1359686) lt!1359464)))

(declare-fun e!2413065 () List!41510)

(assert (=> d!1156640 (= lt!1359686 e!2413065)))

(declare-fun c!678360 () Bool)

(assert (=> d!1156640 (= c!678360 ((_ is Cons!41386) lt!1359482))))

(assert (=> d!1156640 (>= (size!31076 lt!1359464) (size!31076 lt!1359482))))

(assert (=> d!1156640 (= (getSuffix!1988 lt!1359464 lt!1359482) lt!1359686)))

(declare-fun b!3902651 () Bool)

(assert (=> b!3902651 (= e!2413065 (getSuffix!1988 (tail!5969 lt!1359464) (t!320219 lt!1359482)))))

(declare-fun b!3902652 () Bool)

(assert (=> b!3902652 (= e!2413065 lt!1359464)))

(assert (= (and d!1156640 c!678360) b!3902651))

(assert (= (and d!1156640 (not c!678360)) b!3902652))

(declare-fun m!4463363 () Bool)

(assert (=> d!1156640 m!4463363))

(assert (=> d!1156640 m!4462739))

(assert (=> d!1156640 m!4462527))

(assert (=> b!3902651 m!4463129))

(assert (=> b!3902651 m!4463129))

(declare-fun m!4463365 () Bool)

(assert (=> b!3902651 m!4463365))

(assert (=> b!3902104 d!1156640))

(declare-fun b!3902655 () Bool)

(declare-fun res!1578915 () Bool)

(declare-fun e!2413067 () Bool)

(assert (=> b!3902655 (=> (not res!1578915) (not e!2413067))))

(declare-fun lt!1359687 () List!41510)

(assert (=> b!3902655 (= res!1578915 (= (size!31076 lt!1359687) (+ (size!31076 lt!1359482) (size!31076 (_2!23450 (v!39171 lt!1359466))))))))

(declare-fun b!3902656 () Bool)

(assert (=> b!3902656 (= e!2413067 (or (not (= (_2!23450 (v!39171 lt!1359466)) Nil!41386)) (= lt!1359687 lt!1359482)))))

(declare-fun b!3902654 () Bool)

(declare-fun e!2413066 () List!41510)

(assert (=> b!3902654 (= e!2413066 (Cons!41386 (h!46806 lt!1359482) (++!10634 (t!320219 lt!1359482) (_2!23450 (v!39171 lt!1359466)))))))

(declare-fun d!1156642 () Bool)

(assert (=> d!1156642 e!2413067))

(declare-fun res!1578914 () Bool)

(assert (=> d!1156642 (=> (not res!1578914) (not e!2413067))))

(assert (=> d!1156642 (= res!1578914 (= (content!6201 lt!1359687) ((_ map or) (content!6201 lt!1359482) (content!6201 (_2!23450 (v!39171 lt!1359466))))))))

(assert (=> d!1156642 (= lt!1359687 e!2413066)))

(declare-fun c!678361 () Bool)

(assert (=> d!1156642 (= c!678361 ((_ is Nil!41386) lt!1359482))))

(assert (=> d!1156642 (= (++!10634 lt!1359482 (_2!23450 (v!39171 lt!1359466))) lt!1359687)))

(declare-fun b!3902653 () Bool)

(assert (=> b!3902653 (= e!2413066 (_2!23450 (v!39171 lt!1359466)))))

(assert (= (and d!1156642 c!678361) b!3902653))

(assert (= (and d!1156642 (not c!678361)) b!3902654))

(assert (= (and d!1156642 res!1578914) b!3902655))

(assert (= (and b!3902655 res!1578915) b!3902656))

(declare-fun m!4463367 () Bool)

(assert (=> b!3902655 m!4463367))

(assert (=> b!3902655 m!4462527))

(assert (=> b!3902655 m!4463309))

(declare-fun m!4463369 () Bool)

(assert (=> b!3902654 m!4463369))

(declare-fun m!4463371 () Bool)

(assert (=> d!1156642 m!4463371))

(declare-fun m!4463373 () Bool)

(assert (=> d!1156642 m!4463373))

(declare-fun m!4463375 () Bool)

(assert (=> d!1156642 m!4463375))

(assert (=> b!3902104 d!1156642))

(declare-fun d!1156644 () Bool)

(assert (=> d!1156644 (= (size!31075 (_1!23450 (v!39171 lt!1359466))) (size!31076 (originalCharacters!7038 (_1!23450 (v!39171 lt!1359466)))))))

(declare-fun Unit!59509 () Unit!59506)

(assert (=> d!1156644 (= (lemmaCharactersSize!1095 (_1!23450 (v!39171 lt!1359466))) Unit!59509)))

(declare-fun bs!585000 () Bool)

(assert (= bs!585000 d!1156644))

(assert (=> bs!585000 m!4462511))

(assert (=> b!3902104 d!1156644))

(declare-fun b!3902661 () Bool)

(declare-fun e!2413070 () Bool)

(declare-fun tp!1187502 () Bool)

(assert (=> b!3902661 (= e!2413070 (and tp_is_empty!19657 tp!1187502))))

(assert (=> b!3902095 (= tp!1187413 e!2413070)))

(assert (= (and b!3902095 ((_ is Cons!41386) (t!320219 suffix!1176))) b!3902661))

(declare-fun b!3902662 () Bool)

(declare-fun e!2413071 () Bool)

(declare-fun tp!1187503 () Bool)

(assert (=> b!3902662 (= e!2413071 (and tp_is_empty!19657 tp!1187503))))

(assert (=> b!3902096 (= tp!1187415 e!2413071)))

(assert (= (and b!3902096 ((_ is Cons!41386) (t!320219 suffixResult!91))) b!3902662))

(declare-fun b!3902663 () Bool)

(declare-fun e!2413072 () Bool)

(declare-fun tp!1187504 () Bool)

(assert (=> b!3902663 (= e!2413072 (and tp_is_empty!19657 tp!1187504))))

(assert (=> b!3902098 (= tp!1187396 e!2413072)))

(assert (= (and b!3902098 ((_ is Cons!41386) (originalCharacters!7038 (h!46809 suffixTokens!72)))) b!3902663))

(declare-fun b!3902677 () Bool)

(declare-fun b_free!105765 () Bool)

(declare-fun b_next!106469 () Bool)

(assert (=> b!3902677 (= b_free!105765 (not b_next!106469))))

(declare-fun t!320335 () Bool)

(declare-fun tb!230107 () Bool)

(assert (=> (and b!3902677 (= (toValue!8878 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320335) tb!230107))

(declare-fun result!279380 () Bool)

(assert (= result!279380 result!279358))

(assert (=> d!1156626 t!320335))

(declare-fun tp!1187518 () Bool)

(declare-fun b_and!295319 () Bool)

(assert (=> b!3902677 (= tp!1187518 (and (=> t!320335 result!279380) b_and!295319))))

(declare-fun b_free!105767 () Bool)

(declare-fun b_next!106471 () Bool)

(assert (=> b!3902677 (= b_free!105767 (not b_next!106471))))

(declare-fun t!320337 () Bool)

(declare-fun tb!230109 () Bool)

(assert (=> (and b!3902677 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320337) tb!230109))

(declare-fun result!279382 () Bool)

(assert (= result!279382 result!279286))

(assert (=> b!3902391 t!320337))

(declare-fun t!320339 () Bool)

(declare-fun tb!230111 () Bool)

(assert (=> (and b!3902677 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320339) tb!230111))

(declare-fun result!279384 () Bool)

(assert (= result!279384 result!279304))

(assert (=> b!3902425 t!320339))

(declare-fun t!320341 () Bool)

(declare-fun tb!230113 () Bool)

(assert (=> (and b!3902677 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320341) tb!230113))

(declare-fun result!279386 () Bool)

(assert (= result!279386 result!279312))

(assert (=> b!3902460 t!320341))

(declare-fun t!320343 () Bool)

(declare-fun tb!230115 () Bool)

(assert (=> (and b!3902677 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320343) tb!230115))

(declare-fun result!279388 () Bool)

(assert (= result!279388 result!279368))

(assert (=> d!1156634 t!320343))

(declare-fun b_and!295321 () Bool)

(declare-fun tp!1187515 () Bool)

(assert (=> b!3902677 (= tp!1187515 (and (=> t!320337 result!279382) (=> t!320339 result!279384) (=> t!320341 result!279386) (=> t!320343 result!279388) b_and!295321))))

(declare-fun tp!1187516 () Bool)

(declare-fun e!2413087 () Bool)

(declare-fun b!3902676 () Bool)

(declare-fun e!2413085 () Bool)

(assert (=> b!3902676 (= e!2413085 (and tp!1187516 (inv!55556 (tag!7298 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (inv!55560 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) e!2413087))))

(declare-fun e!2413088 () Bool)

(assert (=> b!3902089 (= tp!1187412 e!2413088)))

(assert (=> b!3902677 (= e!2413087 (and tp!1187518 tp!1187515))))

(declare-fun e!2413089 () Bool)

(declare-fun b!3902675 () Bool)

(declare-fun tp!1187517 () Bool)

(assert (=> b!3902675 (= e!2413089 (and (inv!21 (value!204117 (h!46809 (t!320222 suffixTokens!72)))) e!2413085 tp!1187517))))

(declare-fun tp!1187519 () Bool)

(declare-fun b!3902674 () Bool)

(assert (=> b!3902674 (= e!2413088 (and (inv!55559 (h!46809 (t!320222 suffixTokens!72))) e!2413089 tp!1187519))))

(assert (= b!3902676 b!3902677))

(assert (= b!3902675 b!3902676))

(assert (= b!3902674 b!3902675))

(assert (= (and b!3902089 ((_ is Cons!41389) (t!320222 suffixTokens!72))) b!3902674))

(declare-fun m!4463377 () Bool)

(assert (=> b!3902676 m!4463377))

(declare-fun m!4463379 () Bool)

(assert (=> b!3902676 m!4463379))

(declare-fun m!4463381 () Bool)

(assert (=> b!3902675 m!4463381))

(declare-fun m!4463383 () Bool)

(assert (=> b!3902674 m!4463383))

(declare-fun b!3902678 () Bool)

(declare-fun e!2413091 () Bool)

(declare-fun tp!1187520 () Bool)

(assert (=> b!3902678 (= e!2413091 (and tp_is_empty!19657 tp!1187520))))

(assert (=> b!3902109 (= tp!1187414 e!2413091)))

(assert (= (and b!3902109 ((_ is Cons!41386) (originalCharacters!7038 (h!46809 prefixTokens!80)))) b!3902678))

(declare-fun b!3902689 () Bool)

(declare-fun b_free!105769 () Bool)

(declare-fun b_next!106473 () Bool)

(assert (=> b!3902689 (= b_free!105769 (not b_next!106473))))

(declare-fun t!320345 () Bool)

(declare-fun tb!230117 () Bool)

(assert (=> (and b!3902689 (= (toValue!8878 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320345) tb!230117))

(declare-fun result!279392 () Bool)

(assert (= result!279392 result!279358))

(assert (=> d!1156626 t!320345))

(declare-fun tp!1187530 () Bool)

(declare-fun b_and!295323 () Bool)

(assert (=> b!3902689 (= tp!1187530 (and (=> t!320345 result!279392) b_and!295323))))

(declare-fun b_free!105771 () Bool)

(declare-fun b_next!106475 () Bool)

(assert (=> b!3902689 (= b_free!105771 (not b_next!106475))))

(declare-fun t!320347 () Bool)

(declare-fun tb!230119 () Bool)

(assert (=> (and b!3902689 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320347) tb!230119))

(declare-fun result!279394 () Bool)

(assert (= result!279394 result!279286))

(assert (=> b!3902391 t!320347))

(declare-fun tb!230121 () Bool)

(declare-fun t!320349 () Bool)

(assert (=> (and b!3902689 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320349) tb!230121))

(declare-fun result!279396 () Bool)

(assert (= result!279396 result!279304))

(assert (=> b!3902425 t!320349))

(declare-fun t!320351 () Bool)

(declare-fun tb!230123 () Bool)

(assert (=> (and b!3902689 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320351) tb!230123))

(declare-fun result!279398 () Bool)

(assert (= result!279398 result!279312))

(assert (=> b!3902460 t!320351))

(declare-fun t!320353 () Bool)

(declare-fun tb!230125 () Bool)

(assert (=> (and b!3902689 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320353) tb!230125))

(declare-fun result!279400 () Bool)

(assert (= result!279400 result!279368))

(assert (=> d!1156634 t!320353))

(declare-fun b_and!295325 () Bool)

(declare-fun tp!1187532 () Bool)

(assert (=> b!3902689 (= tp!1187532 (and (=> t!320347 result!279394) (=> t!320349 result!279396) (=> t!320351 result!279398) (=> t!320353 result!279400) b_and!295325))))

(declare-fun e!2413102 () Bool)

(assert (=> b!3902689 (= e!2413102 (and tp!1187530 tp!1187532))))

(declare-fun tp!1187531 () Bool)

(declare-fun b!3902688 () Bool)

(declare-fun e!2413100 () Bool)

(assert (=> b!3902688 (= e!2413100 (and tp!1187531 (inv!55556 (tag!7298 (h!46808 (t!320221 rules!2768)))) (inv!55560 (transformation!6438 (h!46808 (t!320221 rules!2768)))) e!2413102))))

(declare-fun b!3902687 () Bool)

(declare-fun e!2413103 () Bool)

(declare-fun tp!1187529 () Bool)

(assert (=> b!3902687 (= e!2413103 (and e!2413100 tp!1187529))))

(assert (=> b!3902101 (= tp!1187395 e!2413103)))

(assert (= b!3902688 b!3902689))

(assert (= b!3902687 b!3902688))

(assert (= (and b!3902101 ((_ is Cons!41388) (t!320221 rules!2768))) b!3902687))

(declare-fun m!4463385 () Bool)

(assert (=> b!3902688 m!4463385))

(declare-fun m!4463387 () Bool)

(assert (=> b!3902688 m!4463387))

(declare-fun b!3902693 () Bool)

(declare-fun b_free!105773 () Bool)

(declare-fun b_next!106477 () Bool)

(assert (=> b!3902693 (= b_free!105773 (not b_next!106477))))

(declare-fun t!320355 () Bool)

(declare-fun tb!230127 () Bool)

(assert (=> (and b!3902693 (= (toValue!8878 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toValue!8878 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320355) tb!230127))

(declare-fun result!279402 () Bool)

(assert (= result!279402 result!279358))

(assert (=> d!1156626 t!320355))

(declare-fun tp!1187536 () Bool)

(declare-fun b_and!295327 () Bool)

(assert (=> b!3902693 (= tp!1187536 (and (=> t!320355 result!279402) b_and!295327))))

(declare-fun b_free!105775 () Bool)

(declare-fun b_next!106479 () Bool)

(assert (=> b!3902693 (= b_free!105775 (not b_next!106479))))

(declare-fun t!320357 () Bool)

(declare-fun tb!230129 () Bool)

(assert (=> (and b!3902693 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72))))) t!320357) tb!230129))

(declare-fun result!279404 () Bool)

(assert (= result!279404 result!279286))

(assert (=> b!3902391 t!320357))

(declare-fun t!320359 () Bool)

(declare-fun tb!230131 () Bool)

(assert (=> (and b!3902693 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80))))) t!320359) tb!230131))

(declare-fun result!279406 () Bool)

(assert (= result!279406 result!279304))

(assert (=> b!3902425 t!320359))

(declare-fun t!320361 () Bool)

(declare-fun tb!230133 () Bool)

(assert (=> (and b!3902693 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) t!320361) tb!230133))

(declare-fun result!279408 () Bool)

(assert (= result!279408 result!279312))

(assert (=> b!3902460 t!320361))

(declare-fun tb!230135 () Bool)

(declare-fun t!320363 () Bool)

(assert (=> (and b!3902693 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 lt!1359466)))))) t!320363) tb!230135))

(declare-fun result!279410 () Bool)

(assert (= result!279410 result!279368))

(assert (=> d!1156634 t!320363))

(declare-fun tp!1187533 () Bool)

(declare-fun b_and!295329 () Bool)

(assert (=> b!3902693 (= tp!1187533 (and (=> t!320357 result!279404) (=> t!320359 result!279406) (=> t!320361 result!279408) (=> t!320363 result!279410) b_and!295329))))

(declare-fun e!2413106 () Bool)

(declare-fun b!3902692 () Bool)

(declare-fun e!2413104 () Bool)

(declare-fun tp!1187534 () Bool)

(assert (=> b!3902692 (= e!2413104 (and tp!1187534 (inv!55556 (tag!7298 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (inv!55560 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) e!2413106))))

(declare-fun e!2413107 () Bool)

(assert (=> b!3902090 (= tp!1187400 e!2413107)))

(assert (=> b!3902693 (= e!2413106 (and tp!1187536 tp!1187533))))

(declare-fun b!3902691 () Bool)

(declare-fun tp!1187535 () Bool)

(declare-fun e!2413108 () Bool)

(assert (=> b!3902691 (= e!2413108 (and (inv!21 (value!204117 (h!46809 (t!320222 prefixTokens!80)))) e!2413104 tp!1187535))))

(declare-fun tp!1187537 () Bool)

(declare-fun b!3902690 () Bool)

(assert (=> b!3902690 (= e!2413107 (and (inv!55559 (h!46809 (t!320222 prefixTokens!80))) e!2413108 tp!1187537))))

(assert (= b!3902692 b!3902693))

(assert (= b!3902691 b!3902692))

(assert (= b!3902690 b!3902691))

(assert (= (and b!3902090 ((_ is Cons!41389) (t!320222 prefixTokens!80))) b!3902690))

(declare-fun m!4463389 () Bool)

(assert (=> b!3902692 m!4463389))

(declare-fun m!4463391 () Bool)

(assert (=> b!3902692 m!4463391))

(declare-fun m!4463393 () Bool)

(assert (=> b!3902691 m!4463393))

(declare-fun m!4463395 () Bool)

(assert (=> b!3902690 m!4463395))

(declare-fun b!3902707 () Bool)

(declare-fun e!2413112 () Bool)

(declare-fun tp!1187550 () Bool)

(declare-fun tp!1187551 () Bool)

(assert (=> b!3902707 (= e!2413112 (and tp!1187550 tp!1187551))))

(assert (=> b!3902111 (= tp!1187408 e!2413112)))

(declare-fun b!3902705 () Bool)

(declare-fun tp!1187549 () Bool)

(declare-fun tp!1187548 () Bool)

(assert (=> b!3902705 (= e!2413112 (and tp!1187549 tp!1187548))))

(declare-fun b!3902704 () Bool)

(assert (=> b!3902704 (= e!2413112 tp_is_empty!19657)))

(declare-fun b!3902706 () Bool)

(declare-fun tp!1187552 () Bool)

(assert (=> b!3902706 (= e!2413112 tp!1187552)))

(assert (= (and b!3902111 ((_ is ElementMatch!11343) (regex!6438 (h!46808 rules!2768)))) b!3902704))

(assert (= (and b!3902111 ((_ is Concat!18012) (regex!6438 (h!46808 rules!2768)))) b!3902705))

(assert (= (and b!3902111 ((_ is Star!11343) (regex!6438 (h!46808 rules!2768)))) b!3902706))

(assert (= (and b!3902111 ((_ is Union!11343) (regex!6438 (h!46808 rules!2768)))) b!3902707))

(declare-fun b!3902708 () Bool)

(declare-fun e!2413113 () Bool)

(declare-fun tp!1187553 () Bool)

(assert (=> b!3902708 (= e!2413113 (and tp_is_empty!19657 tp!1187553))))

(assert (=> b!3902081 (= tp!1187409 e!2413113)))

(assert (= (and b!3902081 ((_ is Cons!41386) (originalCharacters!7038 (_1!23450 (v!39171 err!4401))))) b!3902708))

(declare-fun b!3902712 () Bool)

(declare-fun e!2413114 () Bool)

(declare-fun tp!1187556 () Bool)

(declare-fun tp!1187557 () Bool)

(assert (=> b!3902712 (= e!2413114 (and tp!1187556 tp!1187557))))

(assert (=> b!3902092 (= tp!1187397 e!2413114)))

(declare-fun b!3902710 () Bool)

(declare-fun tp!1187555 () Bool)

(declare-fun tp!1187554 () Bool)

(assert (=> b!3902710 (= e!2413114 (and tp!1187555 tp!1187554))))

(declare-fun b!3902709 () Bool)

(assert (=> b!3902709 (= e!2413114 tp_is_empty!19657)))

(declare-fun b!3902711 () Bool)

(declare-fun tp!1187558 () Bool)

(assert (=> b!3902711 (= e!2413114 tp!1187558)))

(assert (= (and b!3902092 ((_ is ElementMatch!11343) (regex!6438 (rule!9348 (h!46809 suffixTokens!72))))) b!3902709))

(assert (= (and b!3902092 ((_ is Concat!18012) (regex!6438 (rule!9348 (h!46809 suffixTokens!72))))) b!3902710))

(assert (= (and b!3902092 ((_ is Star!11343) (regex!6438 (rule!9348 (h!46809 suffixTokens!72))))) b!3902711))

(assert (= (and b!3902092 ((_ is Union!11343) (regex!6438 (rule!9348 (h!46809 suffixTokens!72))))) b!3902712))

(declare-fun b!3902716 () Bool)

(declare-fun e!2413115 () Bool)

(declare-fun tp!1187561 () Bool)

(declare-fun tp!1187562 () Bool)

(assert (=> b!3902716 (= e!2413115 (and tp!1187561 tp!1187562))))

(assert (=> b!3902093 (= tp!1187411 e!2413115)))

(declare-fun b!3902714 () Bool)

(declare-fun tp!1187560 () Bool)

(declare-fun tp!1187559 () Bool)

(assert (=> b!3902714 (= e!2413115 (and tp!1187560 tp!1187559))))

(declare-fun b!3902713 () Bool)

(assert (=> b!3902713 (= e!2413115 tp_is_empty!19657)))

(declare-fun b!3902715 () Bool)

(declare-fun tp!1187563 () Bool)

(assert (=> b!3902715 (= e!2413115 tp!1187563)))

(assert (= (and b!3902093 ((_ is ElementMatch!11343) (regex!6438 (rule!9348 (h!46809 prefixTokens!80))))) b!3902713))

(assert (= (and b!3902093 ((_ is Concat!18012) (regex!6438 (rule!9348 (h!46809 prefixTokens!80))))) b!3902714))

(assert (= (and b!3902093 ((_ is Star!11343) (regex!6438 (rule!9348 (h!46809 prefixTokens!80))))) b!3902715))

(assert (= (and b!3902093 ((_ is Union!11343) (regex!6438 (rule!9348 (h!46809 prefixTokens!80))))) b!3902716))

(declare-fun b!3902720 () Bool)

(declare-fun e!2413116 () Bool)

(declare-fun tp!1187566 () Bool)

(declare-fun tp!1187567 () Bool)

(assert (=> b!3902720 (= e!2413116 (and tp!1187566 tp!1187567))))

(assert (=> b!3902113 (= tp!1187404 e!2413116)))

(declare-fun b!3902718 () Bool)

(declare-fun tp!1187565 () Bool)

(declare-fun tp!1187564 () Bool)

(assert (=> b!3902718 (= e!2413116 (and tp!1187565 tp!1187564))))

(declare-fun b!3902717 () Bool)

(assert (=> b!3902717 (= e!2413116 tp_is_empty!19657)))

(declare-fun b!3902719 () Bool)

(declare-fun tp!1187568 () Bool)

(assert (=> b!3902719 (= e!2413116 tp!1187568)))

(assert (= (and b!3902113 ((_ is ElementMatch!11343) (regex!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) b!3902717))

(assert (= (and b!3902113 ((_ is Concat!18012) (regex!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) b!3902718))

(assert (= (and b!3902113 ((_ is Star!11343) (regex!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) b!3902719))

(assert (= (and b!3902113 ((_ is Union!11343) (regex!6438 (rule!9348 (_1!23450 (v!39171 err!4401)))))) b!3902720))

(declare-fun b!3902721 () Bool)

(declare-fun e!2413117 () Bool)

(declare-fun tp!1187569 () Bool)

(assert (=> b!3902721 (= e!2413117 (and tp_is_empty!19657 tp!1187569))))

(assert (=> b!3902114 (= tp!1187399 e!2413117)))

(assert (= (and b!3902114 ((_ is Cons!41386) (t!320219 prefix!426))) b!3902721))

(declare-fun b!3902722 () Bool)

(declare-fun e!2413118 () Bool)

(declare-fun tp!1187570 () Bool)

(assert (=> b!3902722 (= e!2413118 (and tp_is_empty!19657 tp!1187570))))

(assert (=> b!3902094 (= tp!1187406 e!2413118)))

(assert (= (and b!3902094 ((_ is Cons!41386) (_2!23450 (v!39171 err!4401)))) b!3902722))

(declare-fun b_lambda!114057 () Bool)

(assert (= b_lambda!114045 (or (and b!3902689 b_free!105771 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))))) (and b!3902107 b_free!105739) (and b!3902693 b_free!105775 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))))) (and b!3902080 b_free!105747 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))))) (and b!3902677 b_free!105767 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))))) (and b!3902082 b_free!105743 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))))) (and b!3902112 b_free!105751 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))))) b_lambda!114057)))

(declare-fun b_lambda!114059 () Bool)

(assert (= b_lambda!114039 (or (and b!3902107 b_free!105739 (= (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))))) (and b!3902689 b_free!105771 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))))) (and b!3902693 b_free!105775 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))))) (and b!3902112 b_free!105751) (and b!3902082 b_free!105743 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))))) (and b!3902677 b_free!105767 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))))) (and b!3902080 b_free!105747 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))))) b_lambda!114059)))

(declare-fun b_lambda!114061 () Bool)

(assert (= b_lambda!114043 (or (and b!3902677 b_free!105767 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 suffixTokens!72))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))))) (and b!3902080 b_free!105747) (and b!3902082 b_free!105743 (= (toChars!8737 (transformation!6438 (h!46808 rules!2768))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))))) (and b!3902107 b_free!105739 (= (toChars!8737 (transformation!6438 (rule!9348 (_1!23450 (v!39171 err!4401))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))))) (and b!3902693 b_free!105775 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 (t!320222 prefixTokens!80))))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))))) (and b!3902689 b_free!105771 (= (toChars!8737 (transformation!6438 (h!46808 (t!320221 rules!2768)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))))) (and b!3902112 b_free!105751 (= (toChars!8737 (transformation!6438 (rule!9348 (h!46809 suffixTokens!72)))) (toChars!8737 (transformation!6438 (rule!9348 (h!46809 prefixTokens!80)))))) b_lambda!114061)))

(check-sat (not b!3902602) (not d!1156478) b_and!295319 b_and!295325 (not b!3902645) (not b!3902476) (not b!3902600) (not b!3902707) (not b!3902478) (not tb!230029) (not b!3902615) b_and!295303 (not b!3902391) b_and!295307 (not d!1156640) (not b_next!106469) (not d!1156496) (not b_lambda!114053) (not b_lambda!114059) (not b!3902654) (not b!3902593) (not b!3902447) (not b!3902708) (not b!3902181) (not d!1156638) (not b_next!106447) (not d!1156624) (not b!3902422) (not b!3902651) b_and!295313 (not b_lambda!114055) (not b!3902688) (not b!3902661) (not d!1156548) (not b!3902617) (not bm!283885) (not b!3902484) (not d!1156636) (not b!3902342) (not b!3902687) (not b!3902628) (not b!3902459) (not b!3902485) (not b!3902499) (not b!3902276) (not b!3902332) (not b!3902366) (not b_next!106473) (not b!3902618) (not d!1156616) (not tb!230099) (not tb!230045) (not b!3902627) (not b!3902716) (not b!3902619) b_and!295315 (not b!3902603) (not d!1156642) (not d!1156598) (not d!1156460) (not b!3902492) (not b!3902635) (not b!3902691) b_and!295323 (not b!3902480) (not b!3902718) (not b!3902599) (not b!3902675) (not b!3902720) (not b!3902277) (not b!3902662) (not b!3902461) (not bm!283881) (not b!3902705) (not b_next!106449) (not b!3902487) (not b_next!106443) (not bm!283886) (not b!3902163) (not b!3902676) (not b!3902711) (not b!3902341) (not b_next!106479) (not b!3902488) (not b!3902622) (not d!1156540) b_and!295309 (not b!3902639) (not d!1156610) (not b!3902692) (not b!3902458) (not b!3902460) (not b!3902674) (not b!3902616) (not b!3902623) (not b!3902710) (not b!3902162) (not b_next!106455) (not d!1156568) (not b!3902606) (not b!3902715) (not b!3902712) (not b!3902613) (not b!3902274) (not b!3902333) (not d!1156618) (not d!1156590) (not b_next!106471) (not tb!230091) b_and!295321 (not b!3902604) (not b!3902367) (not b!3902426) (not b!3902595) (not b!3902392) (not b!3902596) (not b!3902502) (not b_next!106445) (not d!1156456) (not b!3902637) (not b!3902663) (not b!3902409) (not b!3902423) (not b!3902655) (not d!1156644) (not b_lambda!114057) (not b!3902626) (not b!3902620) (not d!1156622) (not b!3902714) (not b!3902629) (not b!3902273) (not d!1156494) (not b!3902610) (not b!3902501) (not b!3902279) b_and!295327 (not b!3902272) (not b!3902495) b_and!295305 (not b!3902706) (not b!3902425) (not b!3902607) (not tb!230053) (not b!3902609) (not d!1156564) b_and!295329 b_and!295311 (not b_next!106451) (not b!3902427) (not b!3902722) (not b!3902491) (not b!3902481) (not d!1156574) (not b!3902493) (not d!1156634) (not b!3902479) (not d!1156560) (not b!3902640) (not b!3902420) (not b!3902721) (not d!1156592) (not d!1156604) (not b!3902597) tp_is_empty!19657 (not b_next!106453) (not b_next!106441) (not b_next!106477) (not b!3902174) (not b!3902457) (not b!3902161) (not b!3902275) (not b!3902612) (not b!3902605) (not b!3902636) (not b!3902678) (not d!1156606) (not b_lambda!114061) (not b!3902494) (not d!1156612) (not d!1156570) (not b_next!106475) (not d!1156582) (not bm!283887) (not b!3902690) (not d!1156608) (not b!3902598) (not b!3902173) (not b!3902477) (not d!1156512) (not b!3902496) (not d!1156620) (not d!1156630) b_and!295317 (not b!3902331) (not b!3902483) (not b!3902594) (not b!3902719) (not b!3902462) (not b!3902280))
(check-sat b_and!295303 (not b_next!106473) b_and!295315 b_and!295323 (not b_next!106479) b_and!295309 (not b_next!106455) (not b_next!106471) b_and!295321 (not b_next!106445) b_and!295327 b_and!295305 (not b_next!106475) b_and!295317 b_and!295319 b_and!295325 b_and!295307 (not b_next!106469) b_and!295313 (not b_next!106447) (not b_next!106449) (not b_next!106443) b_and!295329 b_and!295311 (not b_next!106451) (not b_next!106453) (not b_next!106441) (not b_next!106477))
