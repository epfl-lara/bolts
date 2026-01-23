; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180494 () Bool)

(assert start!180494)

(declare-fun b!1822630 () Bool)

(declare-fun b_free!50687 () Bool)

(declare-fun b_next!51391 () Bool)

(assert (=> b!1822630 (= b_free!50687 (not b_next!51391))))

(declare-fun tp!515364 () Bool)

(declare-fun b_and!141409 () Bool)

(assert (=> b!1822630 (= tp!515364 b_and!141409)))

(declare-fun b_free!50689 () Bool)

(declare-fun b_next!51393 () Bool)

(assert (=> b!1822630 (= b_free!50689 (not b_next!51393))))

(declare-fun tp!515358 () Bool)

(declare-fun b_and!141411 () Bool)

(assert (=> b!1822630 (= tp!515358 b_and!141411)))

(declare-fun b!1822619 () Bool)

(declare-fun b_free!50691 () Bool)

(declare-fun b_next!51395 () Bool)

(assert (=> b!1822619 (= b_free!50691 (not b_next!51395))))

(declare-fun tp!515356 () Bool)

(declare-fun b_and!141413 () Bool)

(assert (=> b!1822619 (= tp!515356 b_and!141413)))

(declare-fun b_free!50693 () Bool)

(declare-fun b_next!51397 () Bool)

(assert (=> b!1822619 (= b_free!50693 (not b_next!51397))))

(declare-fun tp!515365 () Bool)

(declare-fun b_and!141415 () Bool)

(assert (=> b!1822619 (= tp!515365 b_and!141415)))

(declare-fun b!1822625 () Bool)

(declare-fun b_free!50695 () Bool)

(declare-fun b_next!51399 () Bool)

(assert (=> b!1822625 (= b_free!50695 (not b_next!51399))))

(declare-fun tp!515368 () Bool)

(declare-fun b_and!141417 () Bool)

(assert (=> b!1822625 (= tp!515368 b_and!141417)))

(declare-fun b_free!50697 () Bool)

(declare-fun b_next!51401 () Bool)

(assert (=> b!1822625 (= b_free!50697 (not b_next!51401))))

(declare-fun tp!515359 () Bool)

(declare-fun b_and!141419 () Bool)

(assert (=> b!1822625 (= tp!515359 b_and!141419)))

(declare-fun b!1822632 () Bool)

(assert (=> b!1822632 true))

(declare-fun b!1822616 () Bool)

(declare-fun e!1164962 () Bool)

(declare-fun e!1164945 () Bool)

(declare-fun tp!515357 () Bool)

(assert (=> b!1822616 (= e!1164962 (and e!1164945 tp!515357))))

(declare-fun b!1822617 () Bool)

(declare-fun res!819722 () Bool)

(declare-fun e!1164964 () Bool)

(assert (=> b!1822617 (=> (not res!819722) (not e!1164964))))

(declare-datatypes ((LexerInterface!3236 0))(
  ( (LexerInterfaceExt!3233 (__x!12696 Int)) (Lexer!3234) )
))
(declare-fun thiss!28068 () LexerInterface!3236)

(declare-datatypes ((List!20070 0))(
  ( (Nil!20000) (Cons!20000 (h!25401 (_ BitVec 16)) (t!169979 List!20070)) )
))
(declare-datatypes ((TokenValue!3697 0))(
  ( (FloatLiteralValue!7394 (text!26324 List!20070)) (TokenValueExt!3696 (__x!12697 Int)) (Broken!18485 (value!112440 List!20070)) (Object!3766) (End!3697) (Def!3697) (Underscore!3697) (Match!3697) (Else!3697) (Error!3697) (Case!3697) (If!3697) (Extends!3697) (Abstract!3697) (Class!3697) (Val!3697) (DelimiterValue!7394 (del!3757 List!20070)) (KeywordValue!3703 (value!112441 List!20070)) (CommentValue!7394 (value!112442 List!20070)) (WhitespaceValue!7394 (value!112443 List!20070)) (IndentationValue!3697 (value!112444 List!20070)) (String!22816) (Int32!3697) (Broken!18486 (value!112445 List!20070)) (Boolean!3698) (Unit!34670) (OperatorValue!3700 (op!3757 List!20070)) (IdentifierValue!7394 (value!112446 List!20070)) (IdentifierValue!7395 (value!112447 List!20070)) (WhitespaceValue!7395 (value!112448 List!20070)) (True!7394) (False!7394) (Broken!18487 (value!112449 List!20070)) (Broken!18488 (value!112450 List!20070)) (True!7395) (RightBrace!3697) (RightBracket!3697) (Colon!3697) (Null!3697) (Comma!3697) (LeftBracket!3697) (False!7395) (LeftBrace!3697) (ImaginaryLiteralValue!3697 (text!26325 List!20070)) (StringLiteralValue!11091 (value!112451 List!20070)) (EOFValue!3697 (value!112452 List!20070)) (IdentValue!3697 (value!112453 List!20070)) (DelimiterValue!7395 (value!112454 List!20070)) (DedentValue!3697 (value!112455 List!20070)) (NewLineValue!3697 (value!112456 List!20070)) (IntegerValue!11091 (value!112457 (_ BitVec 32)) (text!26326 List!20070)) (IntegerValue!11092 (value!112458 Int) (text!26327 List!20070)) (Times!3697) (Or!3697) (Equal!3697) (Minus!3697) (Broken!18489 (value!112459 List!20070)) (And!3697) (Div!3697) (LessEqual!3697) (Mod!3697) (Concat!8632) (Not!3697) (Plus!3697) (SpaceValue!3697 (value!112460 List!20070)) (IntegerValue!11093 (value!112461 Int) (text!26328 List!20070)) (StringLiteralValue!11092 (text!26329 List!20070)) (FloatLiteralValue!7395 (text!26330 List!20070)) (BytesLiteralValue!3697 (value!112462 List!20070)) (CommentValue!7395 (value!112463 List!20070)) (StringLiteralValue!11093 (value!112464 List!20070)) (ErrorTokenValue!3697 (msg!3758 List!20070)) )
))
(declare-datatypes ((C!10044 0))(
  ( (C!10045 (val!5618 Int)) )
))
(declare-datatypes ((List!20071 0))(
  ( (Nil!20001) (Cons!20001 (h!25402 C!10044) (t!169980 List!20071)) )
))
(declare-datatypes ((IArray!13283 0))(
  ( (IArray!13284 (innerList!6699 List!20071)) )
))
(declare-datatypes ((Conc!6639 0))(
  ( (Node!6639 (left!16016 Conc!6639) (right!16346 Conc!6639) (csize!13508 Int) (cheight!6850 Int)) (Leaf!9663 (xs!9515 IArray!13283) (csize!13509 Int)) (Empty!6639) )
))
(declare-datatypes ((BalanceConc!13222 0))(
  ( (BalanceConc!13223 (c!297330 Conc!6639)) )
))
(declare-datatypes ((TokenValueInjection!7054 0))(
  ( (TokenValueInjection!7055 (toValue!5142 Int) (toChars!5001 Int)) )
))
(declare-datatypes ((Regex!4935 0))(
  ( (ElementMatch!4935 (c!297331 C!10044)) (Concat!8633 (regOne!10382 Regex!4935) (regTwo!10382 Regex!4935)) (EmptyExpr!4935) (Star!4935 (reg!5264 Regex!4935)) (EmptyLang!4935) (Union!4935 (regOne!10383 Regex!4935) (regTwo!10383 Regex!4935)) )
))
(declare-datatypes ((String!22817 0))(
  ( (String!22818 (value!112465 String)) )
))
(declare-datatypes ((Rule!7014 0))(
  ( (Rule!7015 (regex!3607 Regex!4935) (tag!4021 String!22817) (isSeparator!3607 Bool) (transformation!3607 TokenValueInjection!7054)) )
))
(declare-datatypes ((List!20072 0))(
  ( (Nil!20002) (Cons!20002 (h!25403 Rule!7014) (t!169981 List!20072)) )
))
(declare-fun rules!4538 () List!20072)

(declare-fun rulesInvariant!2905 (LexerInterface!3236 List!20072) Bool)

(assert (=> b!1822617 (= res!819722 (rulesInvariant!2905 thiss!28068 rules!4538))))

(declare-fun b!1822618 () Bool)

(declare-fun res!819732 () Bool)

(declare-fun e!1164956 () Bool)

(assert (=> b!1822618 (=> (not res!819732) (not e!1164956))))

(declare-datatypes ((Token!6768 0))(
  ( (Token!6769 (value!112466 TokenValue!3697) (rule!5743 Rule!7014) (size!15863 Int) (originalCharacters!4415 List!20071)) )
))
(declare-fun token!556 () Token!6768)

(declare-fun rule!559 () Rule!7014)

(assert (=> b!1822618 (= res!819732 (= (rule!5743 token!556) rule!559))))

(declare-fun e!1164958 () Bool)

(assert (=> b!1822619 (= e!1164958 (and tp!515356 tp!515365))))

(declare-fun b!1822620 () Bool)

(declare-fun e!1164960 () Bool)

(declare-fun tp_is_empty!8105 () Bool)

(declare-fun tp!515367 () Bool)

(assert (=> b!1822620 (= e!1164960 (and tp_is_empty!8105 tp!515367))))

(declare-fun b!1822621 () Bool)

(declare-fun e!1164961 () Bool)

(assert (=> b!1822621 (= e!1164956 e!1164961)))

(declare-fun res!819720 () Bool)

(assert (=> b!1822621 (=> (not res!819720) (not e!1164961))))

(declare-fun suffix!1667 () List!20071)

(declare-fun lt!708247 () List!20071)

(declare-fun input!3612 () List!20071)

(declare-fun ++!5431 (List!20071 List!20071) List!20071)

(assert (=> b!1822621 (= res!819720 (= input!3612 (++!5431 lt!708247 suffix!1667)))))

(declare-fun list!8125 (BalanceConc!13222) List!20071)

(declare-fun charsOf!2250 (Token!6768) BalanceConc!13222)

(assert (=> b!1822621 (= lt!708247 (list!8125 (charsOf!2250 token!556)))))

(declare-fun b!1822622 () Bool)

(declare-fun e!1164954 () Bool)

(declare-fun tp!515363 () Bool)

(declare-fun inv!26029 (String!22817) Bool)

(declare-fun inv!26032 (TokenValueInjection!7054) Bool)

(assert (=> b!1822622 (= e!1164954 (and tp!515363 (inv!26029 (tag!4021 (rule!5743 token!556))) (inv!26032 (transformation!3607 (rule!5743 token!556))) e!1164958))))

(declare-fun b!1822624 () Bool)

(declare-fun e!1164963 () Bool)

(declare-fun tp!515360 () Bool)

(assert (=> b!1822624 (= e!1164963 (and tp_is_empty!8105 tp!515360))))

(declare-fun e!1164959 () Bool)

(assert (=> b!1822625 (= e!1164959 (and tp!515368 tp!515359))))

(declare-fun tp!515366 () Bool)

(declare-fun b!1822626 () Bool)

(assert (=> b!1822626 (= e!1164945 (and tp!515366 (inv!26029 (tag!4021 (h!25403 rules!4538))) (inv!26032 (transformation!3607 (h!25403 rules!4538))) e!1164959))))

(declare-fun b!1822627 () Bool)

(declare-fun e!1164953 () Bool)

(declare-fun e!1164955 () Bool)

(assert (=> b!1822627 (= e!1164953 e!1164955)))

(declare-fun res!819724 () Bool)

(assert (=> b!1822627 (=> res!819724 e!1164955)))

(declare-datatypes ((tuple2!19502 0))(
  ( (tuple2!19503 (_1!11153 Token!6768) (_2!11153 List!20071)) )
))
(declare-datatypes ((Option!4187 0))(
  ( (None!4186) (Some!4186 (v!25731 tuple2!19502)) )
))
(declare-fun lt!708246 () Option!4187)

(declare-fun lt!708249 () Option!4187)

(assert (=> b!1822627 (= res!819724 (not (= lt!708246 lt!708249)))))

(declare-fun lt!708254 () Int)

(declare-fun lt!708241 () TokenValue!3697)

(assert (=> b!1822627 (= lt!708246 (Some!4186 (tuple2!19503 (Token!6769 lt!708241 rule!559 lt!708254 lt!708247) suffix!1667)))))

(declare-fun maxPrefixOneRule!1149 (LexerInterface!3236 Rule!7014 List!20071) Option!4187)

(assert (=> b!1822627 (= lt!708246 (maxPrefixOneRule!1149 thiss!28068 rule!559 input!3612))))

(declare-fun size!15864 (List!20071) Int)

(assert (=> b!1822627 (= lt!708254 (size!15864 lt!708247))))

(declare-fun apply!5399 (TokenValueInjection!7054 BalanceConc!13222) TokenValue!3697)

(declare-fun seqFromList!2568 (List!20071) BalanceConc!13222)

(assert (=> b!1822627 (= lt!708241 (apply!5399 (transformation!3607 rule!559) (seqFromList!2568 lt!708247)))))

(declare-datatypes ((Unit!34671 0))(
  ( (Unit!34672) )
))
(declare-fun lt!708244 () Unit!34671)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!525 (LexerInterface!3236 List!20072 List!20071 List!20071 List!20071 Rule!7014) Unit!34671)

(assert (=> b!1822627 (= lt!708244 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!525 thiss!28068 rules!4538 lt!708247 input!3612 suffix!1667 rule!559))))

(declare-fun e!1164966 () Bool)

(declare-fun b!1822628 () Bool)

(declare-fun e!1164946 () Bool)

(declare-fun tp!515361 () Bool)

(assert (=> b!1822628 (= e!1164966 (and tp!515361 (inv!26029 (tag!4021 rule!559)) (inv!26032 (transformation!3607 rule!559)) e!1164946))))

(declare-fun b!1822629 () Bool)

(declare-fun res!819729 () Bool)

(assert (=> b!1822629 (=> (not res!819729) (not e!1164964))))

(declare-fun contains!3662 (List!20072 Rule!7014) Bool)

(assert (=> b!1822629 (= res!819729 (contains!3662 rules!4538 rule!559))))

(assert (=> b!1822630 (= e!1164946 (and tp!515364 tp!515358))))

(declare-fun b!1822631 () Bool)

(declare-fun e!1164965 () Bool)

(declare-fun e!1164947 () Bool)

(assert (=> b!1822631 (= e!1164965 e!1164947)))

(declare-fun res!819725 () Bool)

(assert (=> b!1822631 (=> res!819725 e!1164947)))

(declare-datatypes ((List!20073 0))(
  ( (Nil!20003) (Cons!20003 (h!25404 Regex!4935) (t!169982 List!20073)) )
))
(declare-fun lt!708250 () List!20073)

(declare-fun lambda!71468 () Int)

(declare-fun exists!637 (List!20073 Int) Bool)

(assert (=> b!1822631 (= res!819725 (not (exists!637 lt!708250 lambda!71468)))))

(assert (=> b!1822631 (exists!637 lt!708250 lambda!71468)))

(declare-fun lt!708252 () Unit!34671)

(declare-fun lemmaContainsThenExists!47 (List!20073 Regex!4935 Int) Unit!34671)

(assert (=> b!1822631 (= lt!708252 (lemmaContainsThenExists!47 lt!708250 (regex!3607 rule!559) lambda!71468))))

(declare-fun e!1164944 () Bool)

(assert (=> b!1822632 (= e!1164944 e!1164965)))

(declare-fun res!819726 () Bool)

(assert (=> b!1822632 (=> res!819726 e!1164965)))

(declare-fun validRegex!2005 (Regex!4935) Bool)

(assert (=> b!1822632 (= res!819726 (not (validRegex!2005 (regex!3607 rule!559))))))

(declare-fun lt!708245 () Regex!4935)

(declare-fun matchR!2400 (Regex!4935 List!20071) Bool)

(assert (=> b!1822632 (= (matchR!2400 lt!708245 lt!708247) (exists!637 lt!708250 lambda!71468))))

(declare-fun lt!708243 () Unit!34671)

(declare-fun matchRGenUnionSpec!222 (Regex!4935 List!20073 List!20071) Unit!34671)

(assert (=> b!1822632 (= lt!708243 (matchRGenUnionSpec!222 lt!708245 lt!708250 lt!708247))))

(declare-fun b!1822633 () Bool)

(assert (=> b!1822633 (= e!1164947 (validRegex!2005 lt!708245))))

(declare-fun b!1822634 () Bool)

(assert (=> b!1822634 (= e!1164961 (not e!1164953))))

(declare-fun res!819730 () Bool)

(assert (=> b!1822634 (=> res!819730 e!1164953)))

(assert (=> b!1822634 (= res!819730 (not (matchR!2400 (regex!3607 rule!559) lt!708247)))))

(declare-fun ruleValid!1099 (LexerInterface!3236 Rule!7014) Bool)

(assert (=> b!1822634 (ruleValid!1099 thiss!28068 rule!559)))

(declare-fun lt!708253 () Unit!34671)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!620 (LexerInterface!3236 Rule!7014 List!20072) Unit!34671)

(assert (=> b!1822634 (= lt!708253 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!620 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1822635 () Bool)

(assert (=> b!1822635 (= e!1164964 e!1164956)))

(declare-fun res!819723 () Bool)

(assert (=> b!1822635 (=> (not res!819723) (not e!1164956))))

(declare-fun maxPrefix!1784 (LexerInterface!3236 List!20072 List!20071) Option!4187)

(assert (=> b!1822635 (= res!819723 (= (maxPrefix!1784 thiss!28068 rules!4538 input!3612) lt!708249))))

(assert (=> b!1822635 (= lt!708249 (Some!4186 (tuple2!19503 token!556 suffix!1667)))))

(declare-fun b!1822636 () Bool)

(declare-fun res!819721 () Bool)

(assert (=> b!1822636 (=> (not res!819721) (not e!1164964))))

(declare-fun isEmpty!12627 (List!20072) Bool)

(assert (=> b!1822636 (= res!819721 (not (isEmpty!12627 rules!4538)))))

(declare-fun b!1822637 () Bool)

(declare-fun e!1164957 () Bool)

(assert (=> b!1822637 (= e!1164955 e!1164957)))

(declare-fun res!819731 () Bool)

(assert (=> b!1822637 (=> res!819731 e!1164957)))

(declare-fun lt!708248 () List!20073)

(declare-fun generalisedUnion!462 (List!20073) Regex!4935)

(assert (=> b!1822637 (= res!819731 (not (= lt!708245 (generalisedUnion!462 lt!708248))))))

(declare-fun rulesRegex!939 (LexerInterface!3236 List!20072) Regex!4935)

(assert (=> b!1822637 (= lt!708245 (rulesRegex!939 thiss!28068 rules!4538))))

(declare-fun lambda!71467 () Int)

(declare-fun map!4141 (List!20072 Int) List!20073)

(assert (=> b!1822637 (= lt!708248 (map!4141 rules!4538 lambda!71467))))

(declare-fun lt!708251 () Unit!34671)

(declare-fun lemma!485 (List!20071 Rule!7014 List!20072 List!20071 LexerInterface!3236 Token!6768 List!20072) Unit!34671)

(assert (=> b!1822637 (= lt!708251 (lemma!485 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1822638 () Bool)

(assert (=> b!1822638 (= e!1164957 e!1164944)))

(declare-fun res!819728 () Bool)

(assert (=> b!1822638 (=> res!819728 e!1164944)))

(declare-fun contains!3663 (List!20073 Regex!4935) Bool)

(assert (=> b!1822638 (= res!819728 (not (contains!3663 lt!708250 (regex!3607 rule!559))))))

(assert (=> b!1822638 (= lt!708250 (map!4141 rules!4538 lambda!71467))))

(declare-fun lt!708242 () Unit!34671)

(declare-fun lemma!486 (List!20071 Rule!7014 List!20072 List!20071 LexerInterface!3236 Token!6768 List!20072) Unit!34671)

(assert (=> b!1822638 (= lt!708242 (lemma!486 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun res!819727 () Bool)

(assert (=> start!180494 (=> (not res!819727) (not e!1164964))))

(get-info :version)

(assert (=> start!180494 (= res!819727 ((_ is Lexer!3234) thiss!28068))))

(assert (=> start!180494 e!1164964))

(assert (=> start!180494 e!1164960))

(assert (=> start!180494 true))

(assert (=> start!180494 e!1164962))

(declare-fun e!1164950 () Bool)

(declare-fun inv!26033 (Token!6768) Bool)

(assert (=> start!180494 (and (inv!26033 token!556) e!1164950)))

(assert (=> start!180494 e!1164966))

(assert (=> start!180494 e!1164963))

(declare-fun b!1822623 () Bool)

(declare-fun tp!515362 () Bool)

(declare-fun inv!21 (TokenValue!3697) Bool)

(assert (=> b!1822623 (= e!1164950 (and (inv!21 (value!112466 token!556)) e!1164954 tp!515362))))

(assert (= (and start!180494 res!819727) b!1822636))

(assert (= (and b!1822636 res!819721) b!1822617))

(assert (= (and b!1822617 res!819722) b!1822629))

(assert (= (and b!1822629 res!819729) b!1822635))

(assert (= (and b!1822635 res!819723) b!1822618))

(assert (= (and b!1822618 res!819732) b!1822621))

(assert (= (and b!1822621 res!819720) b!1822634))

(assert (= (and b!1822634 (not res!819730)) b!1822627))

(assert (= (and b!1822627 (not res!819724)) b!1822637))

(assert (= (and b!1822637 (not res!819731)) b!1822638))

(assert (= (and b!1822638 (not res!819728)) b!1822632))

(assert (= (and b!1822632 (not res!819726)) b!1822631))

(assert (= (and b!1822631 (not res!819725)) b!1822633))

(assert (= (and start!180494 ((_ is Cons!20001) suffix!1667)) b!1822620))

(assert (= b!1822626 b!1822625))

(assert (= b!1822616 b!1822626))

(assert (= (and start!180494 ((_ is Cons!20002) rules!4538)) b!1822616))

(assert (= b!1822622 b!1822619))

(assert (= b!1822623 b!1822622))

(assert (= start!180494 b!1822623))

(assert (= b!1822628 b!1822630))

(assert (= start!180494 b!1822628))

(assert (= (and start!180494 ((_ is Cons!20001) input!3612)) b!1822624))

(declare-fun m!2251279 () Bool)

(assert (=> b!1822636 m!2251279))

(declare-fun m!2251281 () Bool)

(assert (=> b!1822617 m!2251281))

(declare-fun m!2251283 () Bool)

(assert (=> b!1822632 m!2251283))

(declare-fun m!2251285 () Bool)

(assert (=> b!1822632 m!2251285))

(declare-fun m!2251287 () Bool)

(assert (=> b!1822632 m!2251287))

(declare-fun m!2251289 () Bool)

(assert (=> b!1822632 m!2251289))

(declare-fun m!2251291 () Bool)

(assert (=> b!1822629 m!2251291))

(declare-fun m!2251293 () Bool)

(assert (=> b!1822637 m!2251293))

(declare-fun m!2251295 () Bool)

(assert (=> b!1822637 m!2251295))

(declare-fun m!2251297 () Bool)

(assert (=> b!1822637 m!2251297))

(declare-fun m!2251299 () Bool)

(assert (=> b!1822637 m!2251299))

(declare-fun m!2251301 () Bool)

(assert (=> b!1822627 m!2251301))

(declare-fun m!2251303 () Bool)

(assert (=> b!1822627 m!2251303))

(declare-fun m!2251305 () Bool)

(assert (=> b!1822627 m!2251305))

(declare-fun m!2251307 () Bool)

(assert (=> b!1822627 m!2251307))

(declare-fun m!2251309 () Bool)

(assert (=> b!1822627 m!2251309))

(assert (=> b!1822627 m!2251305))

(assert (=> b!1822631 m!2251287))

(assert (=> b!1822631 m!2251287))

(declare-fun m!2251311 () Bool)

(assert (=> b!1822631 m!2251311))

(declare-fun m!2251313 () Bool)

(assert (=> b!1822628 m!2251313))

(declare-fun m!2251315 () Bool)

(assert (=> b!1822628 m!2251315))

(declare-fun m!2251317 () Bool)

(assert (=> b!1822623 m!2251317))

(declare-fun m!2251319 () Bool)

(assert (=> b!1822626 m!2251319))

(declare-fun m!2251321 () Bool)

(assert (=> b!1822626 m!2251321))

(declare-fun m!2251323 () Bool)

(assert (=> b!1822638 m!2251323))

(assert (=> b!1822638 m!2251297))

(declare-fun m!2251325 () Bool)

(assert (=> b!1822638 m!2251325))

(declare-fun m!2251327 () Bool)

(assert (=> b!1822635 m!2251327))

(declare-fun m!2251329 () Bool)

(assert (=> b!1822634 m!2251329))

(declare-fun m!2251331 () Bool)

(assert (=> b!1822634 m!2251331))

(declare-fun m!2251333 () Bool)

(assert (=> b!1822634 m!2251333))

(declare-fun m!2251335 () Bool)

(assert (=> b!1822633 m!2251335))

(declare-fun m!2251337 () Bool)

(assert (=> b!1822621 m!2251337))

(declare-fun m!2251339 () Bool)

(assert (=> b!1822621 m!2251339))

(assert (=> b!1822621 m!2251339))

(declare-fun m!2251341 () Bool)

(assert (=> b!1822621 m!2251341))

(declare-fun m!2251343 () Bool)

(assert (=> b!1822622 m!2251343))

(declare-fun m!2251345 () Bool)

(assert (=> b!1822622 m!2251345))

(declare-fun m!2251347 () Bool)

(assert (=> start!180494 m!2251347))

(check-sat (not b!1822638) (not b_next!51397) (not b!1822631) (not b!1822627) (not b!1822633) (not b!1822616) (not b!1822621) (not b_next!51399) (not b!1822620) b_and!141413 (not b!1822636) b_and!141417 (not b!1822634) (not b!1822635) b_and!141419 (not b!1822617) (not b!1822629) (not b!1822623) (not b!1822637) (not b!1822622) (not b!1822626) (not b_next!51401) (not b_next!51395) (not b!1822624) tp_is_empty!8105 (not b!1822632) (not b_next!51391) b_and!141411 (not b_next!51393) b_and!141409 (not start!180494) (not b!1822628) b_and!141415)
(check-sat b_and!141419 (not b_next!51397) (not b_next!51401) (not b_next!51395) (not b_next!51399) (not b_next!51391) b_and!141413 b_and!141417 b_and!141409 b_and!141415 b_and!141411 (not b_next!51393))
(get-model)

(declare-fun d!557934 () Bool)

(assert (=> d!557934 (= (inv!26029 (tag!4021 rule!559)) (= (mod (str.len (value!112465 (tag!4021 rule!559))) 2) 0))))

(assert (=> b!1822628 d!557934))

(declare-fun d!557936 () Bool)

(declare-fun res!819739 () Bool)

(declare-fun e!1164976 () Bool)

(assert (=> d!557936 (=> (not res!819739) (not e!1164976))))

(declare-fun semiInverseModEq!1442 (Int Int) Bool)

(assert (=> d!557936 (= res!819739 (semiInverseModEq!1442 (toChars!5001 (transformation!3607 rule!559)) (toValue!5142 (transformation!3607 rule!559))))))

(assert (=> d!557936 (= (inv!26032 (transformation!3607 rule!559)) e!1164976)))

(declare-fun b!1822653 () Bool)

(declare-fun equivClasses!1383 (Int Int) Bool)

(assert (=> b!1822653 (= e!1164976 (equivClasses!1383 (toChars!5001 (transformation!3607 rule!559)) (toValue!5142 (transformation!3607 rule!559))))))

(assert (= (and d!557936 res!819739) b!1822653))

(declare-fun m!2251363 () Bool)

(assert (=> d!557936 m!2251363))

(declare-fun m!2251365 () Bool)

(assert (=> b!1822653 m!2251365))

(assert (=> b!1822628 d!557936))

(declare-fun d!557946 () Bool)

(declare-fun lt!708266 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2934 (List!20072) (InoxSet Rule!7014))

(assert (=> d!557946 (= lt!708266 (select (content!2934 rules!4538) rule!559))))

(declare-fun e!1164981 () Bool)

(assert (=> d!557946 (= lt!708266 e!1164981)))

(declare-fun res!819744 () Bool)

(assert (=> d!557946 (=> (not res!819744) (not e!1164981))))

(assert (=> d!557946 (= res!819744 ((_ is Cons!20002) rules!4538))))

(assert (=> d!557946 (= (contains!3662 rules!4538 rule!559) lt!708266)))

(declare-fun b!1822658 () Bool)

(declare-fun e!1164982 () Bool)

(assert (=> b!1822658 (= e!1164981 e!1164982)))

(declare-fun res!819745 () Bool)

(assert (=> b!1822658 (=> res!819745 e!1164982)))

(assert (=> b!1822658 (= res!819745 (= (h!25403 rules!4538) rule!559))))

(declare-fun b!1822659 () Bool)

(assert (=> b!1822659 (= e!1164982 (contains!3662 (t!169981 rules!4538) rule!559))))

(assert (= (and d!557946 res!819744) b!1822658))

(assert (= (and b!1822658 (not res!819745)) b!1822659))

(declare-fun m!2251367 () Bool)

(assert (=> d!557946 m!2251367))

(declare-fun m!2251369 () Bool)

(assert (=> d!557946 m!2251369))

(declare-fun m!2251371 () Bool)

(assert (=> b!1822659 m!2251371))

(assert (=> b!1822629 d!557946))

(declare-fun d!557948 () Bool)

(assert (=> d!557948 (= (isEmpty!12627 rules!4538) ((_ is Nil!20002) rules!4538))))

(assert (=> b!1822636 d!557948))

(declare-fun bs!407407 () Bool)

(declare-fun d!557950 () Bool)

(assert (= bs!407407 (and d!557950 b!1822632)))

(declare-fun lambda!71474 () Int)

(assert (=> bs!407407 (not (= lambda!71474 lambda!71468))))

(declare-fun b!1822680 () Bool)

(declare-fun e!1164996 () Bool)

(declare-fun e!1165000 () Bool)

(assert (=> b!1822680 (= e!1164996 e!1165000)))

(declare-fun c!297344 () Bool)

(declare-fun isEmpty!12630 (List!20073) Bool)

(declare-fun tail!2707 (List!20073) List!20073)

(assert (=> b!1822680 (= c!297344 (isEmpty!12630 (tail!2707 lt!708248)))))

(declare-fun e!1164998 () Bool)

(assert (=> d!557950 e!1164998))

(declare-fun res!819750 () Bool)

(assert (=> d!557950 (=> (not res!819750) (not e!1164998))))

(declare-fun lt!708269 () Regex!4935)

(assert (=> d!557950 (= res!819750 (validRegex!2005 lt!708269))))

(declare-fun e!1164995 () Regex!4935)

(assert (=> d!557950 (= lt!708269 e!1164995)))

(declare-fun c!297345 () Bool)

(declare-fun e!1164997 () Bool)

(assert (=> d!557950 (= c!297345 e!1164997)))

(declare-fun res!819751 () Bool)

(assert (=> d!557950 (=> (not res!819751) (not e!1164997))))

(assert (=> d!557950 (= res!819751 ((_ is Cons!20003) lt!708248))))

(declare-fun forall!4313 (List!20073 Int) Bool)

(assert (=> d!557950 (forall!4313 lt!708248 lambda!71474)))

(assert (=> d!557950 (= (generalisedUnion!462 lt!708248) lt!708269)))

(declare-fun b!1822681 () Bool)

(declare-fun e!1164999 () Regex!4935)

(assert (=> b!1822681 (= e!1164995 e!1164999)))

(declare-fun c!297343 () Bool)

(assert (=> b!1822681 (= c!297343 ((_ is Cons!20003) lt!708248))))

(declare-fun b!1822682 () Bool)

(assert (=> b!1822682 (= e!1164999 EmptyLang!4935)))

(declare-fun b!1822683 () Bool)

(declare-fun head!4248 (List!20073) Regex!4935)

(assert (=> b!1822683 (= e!1165000 (= lt!708269 (head!4248 lt!708248)))))

(declare-fun b!1822684 () Bool)

(declare-fun isUnion!114 (Regex!4935) Bool)

(assert (=> b!1822684 (= e!1165000 (isUnion!114 lt!708269))))

(declare-fun b!1822685 () Bool)

(assert (=> b!1822685 (= e!1164999 (Union!4935 (h!25404 lt!708248) (generalisedUnion!462 (t!169982 lt!708248))))))

(declare-fun b!1822686 () Bool)

(assert (=> b!1822686 (= e!1164995 (h!25404 lt!708248))))

(declare-fun b!1822687 () Bool)

(assert (=> b!1822687 (= e!1164998 e!1164996)))

(declare-fun c!297346 () Bool)

(assert (=> b!1822687 (= c!297346 (isEmpty!12630 lt!708248))))

(declare-fun b!1822688 () Bool)

(assert (=> b!1822688 (= e!1164997 (isEmpty!12630 (t!169982 lt!708248)))))

(declare-fun b!1822689 () Bool)

(declare-fun isEmptyLang!114 (Regex!4935) Bool)

(assert (=> b!1822689 (= e!1164996 (isEmptyLang!114 lt!708269))))

(assert (= (and d!557950 res!819751) b!1822688))

(assert (= (and d!557950 c!297345) b!1822686))

(assert (= (and d!557950 (not c!297345)) b!1822681))

(assert (= (and b!1822681 c!297343) b!1822685))

(assert (= (and b!1822681 (not c!297343)) b!1822682))

(assert (= (and d!557950 res!819750) b!1822687))

(assert (= (and b!1822687 c!297346) b!1822689))

(assert (= (and b!1822687 (not c!297346)) b!1822680))

(assert (= (and b!1822680 c!297344) b!1822683))

(assert (= (and b!1822680 (not c!297344)) b!1822684))

(declare-fun m!2251373 () Bool)

(assert (=> b!1822684 m!2251373))

(declare-fun m!2251375 () Bool)

(assert (=> b!1822680 m!2251375))

(assert (=> b!1822680 m!2251375))

(declare-fun m!2251377 () Bool)

(assert (=> b!1822680 m!2251377))

(declare-fun m!2251379 () Bool)

(assert (=> b!1822683 m!2251379))

(declare-fun m!2251381 () Bool)

(assert (=> b!1822688 m!2251381))

(declare-fun m!2251383 () Bool)

(assert (=> b!1822687 m!2251383))

(declare-fun m!2251385 () Bool)

(assert (=> b!1822685 m!2251385))

(declare-fun m!2251387 () Bool)

(assert (=> d!557950 m!2251387))

(declare-fun m!2251389 () Bool)

(assert (=> d!557950 m!2251389))

(declare-fun m!2251391 () Bool)

(assert (=> b!1822689 m!2251391))

(assert (=> b!1822637 d!557950))

(declare-fun bs!407408 () Bool)

(declare-fun d!557952 () Bool)

(assert (= bs!407408 (and d!557952 b!1822637)))

(declare-fun lambda!71477 () Int)

(assert (=> bs!407408 (= lambda!71477 lambda!71467)))

(declare-fun lt!708282 () Unit!34671)

(declare-fun lemma!487 (List!20072 LexerInterface!3236 List!20072) Unit!34671)

(assert (=> d!557952 (= lt!708282 (lemma!487 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!557952 (= (rulesRegex!939 thiss!28068 rules!4538) (generalisedUnion!462 (map!4141 rules!4538 lambda!71477)))))

(declare-fun bs!407409 () Bool)

(assert (= bs!407409 d!557952))

(declare-fun m!2251393 () Bool)

(assert (=> bs!407409 m!2251393))

(declare-fun m!2251395 () Bool)

(assert (=> bs!407409 m!2251395))

(assert (=> bs!407409 m!2251395))

(declare-fun m!2251397 () Bool)

(assert (=> bs!407409 m!2251397))

(assert (=> b!1822637 d!557952))

(declare-fun d!557954 () Bool)

(declare-fun lt!708290 () List!20073)

(declare-fun size!15866 (List!20073) Int)

(declare-fun size!15867 (List!20072) Int)

(assert (=> d!557954 (= (size!15866 lt!708290) (size!15867 rules!4538))))

(declare-fun e!1165015 () List!20073)

(assert (=> d!557954 (= lt!708290 e!1165015)))

(declare-fun c!297352 () Bool)

(assert (=> d!557954 (= c!297352 ((_ is Nil!20002) rules!4538))))

(assert (=> d!557954 (= (map!4141 rules!4538 lambda!71467) lt!708290)))

(declare-fun b!1822721 () Bool)

(assert (=> b!1822721 (= e!1165015 Nil!20003)))

(declare-fun b!1822722 () Bool)

(declare-fun $colon$colon!447 (List!20073 Regex!4935) List!20073)

(declare-fun dynLambda!9937 (Int Rule!7014) Regex!4935)

(assert (=> b!1822722 (= e!1165015 ($colon$colon!447 (map!4141 (t!169981 rules!4538) lambda!71467) (dynLambda!9937 lambda!71467 (h!25403 rules!4538))))))

(assert (= (and d!557954 c!297352) b!1822721))

(assert (= (and d!557954 (not c!297352)) b!1822722))

(declare-fun b_lambda!60163 () Bool)

(assert (=> (not b_lambda!60163) (not b!1822722)))

(declare-fun m!2251443 () Bool)

(assert (=> d!557954 m!2251443))

(declare-fun m!2251445 () Bool)

(assert (=> d!557954 m!2251445))

(declare-fun m!2251447 () Bool)

(assert (=> b!1822722 m!2251447))

(declare-fun m!2251449 () Bool)

(assert (=> b!1822722 m!2251449))

(assert (=> b!1822722 m!2251447))

(assert (=> b!1822722 m!2251449))

(declare-fun m!2251451 () Bool)

(assert (=> b!1822722 m!2251451))

(assert (=> b!1822637 d!557954))

(declare-fun bs!407414 () Bool)

(declare-fun d!557958 () Bool)

(assert (= bs!407414 (and d!557958 b!1822637)))

(declare-fun lambda!71488 () Int)

(assert (=> bs!407414 (= lambda!71488 lambda!71467)))

(declare-fun bs!407415 () Bool)

(assert (= bs!407415 (and d!557958 d!557952)))

(assert (=> bs!407415 (= lambda!71488 lambda!71477)))

(declare-fun bs!407416 () Bool)

(assert (= bs!407416 (and d!557958 b!1822632)))

(declare-fun lambda!71489 () Int)

(assert (=> bs!407416 (not (= lambda!71489 lambda!71468))))

(declare-fun bs!407417 () Bool)

(assert (= bs!407417 (and d!557958 d!557950)))

(assert (=> bs!407417 (= lambda!71489 lambda!71474)))

(assert (=> d!557958 (forall!4313 (map!4141 rules!4538 lambda!71488) lambda!71489)))

(declare-fun lt!708311 () Unit!34671)

(declare-fun e!1165100 () Unit!34671)

(assert (=> d!557958 (= lt!708311 e!1165100)))

(declare-fun c!297381 () Bool)

(assert (=> d!557958 (= c!297381 ((_ is Nil!20002) rules!4538))))

(declare-fun rulesValid!1369 (LexerInterface!3236 List!20072) Bool)

(assert (=> d!557958 (rulesValid!1369 thiss!28068 rules!4538)))

(declare-fun lt!708315 () Unit!34671)

(declare-fun lt!708313 () Unit!34671)

(assert (=> d!557958 (= lt!708315 lt!708313)))

(declare-fun lt!708312 () List!20071)

(assert (=> d!557958 (= (maxPrefixOneRule!1149 thiss!28068 rule!559 input!3612) (Some!4186 (tuple2!19503 (Token!6769 (apply!5399 (transformation!3607 rule!559) (seqFromList!2568 lt!708312)) rule!559 (size!15864 lt!708312) lt!708312) suffix!1667)))))

(assert (=> d!557958 (= lt!708313 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!525 thiss!28068 rules!4538 lt!708312 input!3612 suffix!1667 rule!559))))

(assert (=> d!557958 (= lt!708312 (list!8125 (charsOf!2250 token!556)))))

(assert (=> d!557958 (= (lemma!485 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!708311)))

(declare-fun b!1822859 () Bool)

(declare-fun Unit!34673 () Unit!34671)

(assert (=> b!1822859 (= e!1165100 Unit!34673)))

(declare-fun b!1822860 () Bool)

(declare-fun Unit!34674 () Unit!34671)

(assert (=> b!1822860 (= e!1165100 Unit!34674)))

(declare-fun lt!708314 () Unit!34671)

(assert (=> b!1822860 (= lt!708314 (lemma!485 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169981 rules!4538)))))

(assert (= (and d!557958 c!297381) b!1822859))

(assert (= (and d!557958 (not c!297381)) b!1822860))

(declare-fun m!2251519 () Bool)

(assert (=> d!557958 m!2251519))

(declare-fun m!2251521 () Bool)

(assert (=> d!557958 m!2251521))

(declare-fun m!2251523 () Bool)

(assert (=> d!557958 m!2251523))

(declare-fun m!2251525 () Bool)

(assert (=> d!557958 m!2251525))

(assert (=> d!557958 m!2251309))

(assert (=> d!557958 m!2251339))

(assert (=> d!557958 m!2251341))

(assert (=> d!557958 m!2251519))

(declare-fun m!2251527 () Bool)

(assert (=> d!557958 m!2251527))

(assert (=> d!557958 m!2251339))

(assert (=> d!557958 m!2251525))

(declare-fun m!2251529 () Bool)

(assert (=> d!557958 m!2251529))

(declare-fun m!2251533 () Bool)

(assert (=> d!557958 m!2251533))

(declare-fun m!2251541 () Bool)

(assert (=> b!1822860 m!2251541))

(assert (=> b!1822637 d!557958))

(declare-fun d!557984 () Bool)

(assert (=> d!557984 (= (inv!26029 (tag!4021 (h!25403 rules!4538))) (= (mod (str.len (value!112465 (tag!4021 (h!25403 rules!4538)))) 2) 0))))

(assert (=> b!1822626 d!557984))

(declare-fun d!557988 () Bool)

(declare-fun res!819854 () Bool)

(declare-fun e!1165107 () Bool)

(assert (=> d!557988 (=> (not res!819854) (not e!1165107))))

(assert (=> d!557988 (= res!819854 (semiInverseModEq!1442 (toChars!5001 (transformation!3607 (h!25403 rules!4538))) (toValue!5142 (transformation!3607 (h!25403 rules!4538)))))))

(assert (=> d!557988 (= (inv!26032 (transformation!3607 (h!25403 rules!4538))) e!1165107)))

(declare-fun b!1822873 () Bool)

(assert (=> b!1822873 (= e!1165107 (equivClasses!1383 (toChars!5001 (transformation!3607 (h!25403 rules!4538))) (toValue!5142 (transformation!3607 (h!25403 rules!4538)))))))

(assert (= (and d!557988 res!819854) b!1822873))

(declare-fun m!2251547 () Bool)

(assert (=> d!557988 m!2251547))

(declare-fun m!2251549 () Bool)

(assert (=> b!1822873 m!2251549))

(assert (=> b!1822626 d!557988))

(declare-fun b!1822969 () Bool)

(declare-fun res!819906 () Bool)

(declare-fun e!1165157 () Bool)

(assert (=> b!1822969 (=> (not res!819906) (not e!1165157))))

(declare-fun lt!708374 () Option!4187)

(declare-fun get!6182 (Option!4187) tuple2!19502)

(assert (=> b!1822969 (= res!819906 (< (size!15864 (_2!11153 (get!6182 lt!708374))) (size!15864 input!3612)))))

(declare-fun b!1822970 () Bool)

(declare-fun res!819905 () Bool)

(assert (=> b!1822970 (=> (not res!819905) (not e!1165157))))

(assert (=> b!1822970 (= res!819905 (= (rule!5743 (_1!11153 (get!6182 lt!708374))) rule!559))))

(declare-fun b!1822971 () Bool)

(assert (=> b!1822971 (= e!1165157 (= (size!15863 (_1!11153 (get!6182 lt!708374))) (size!15864 (originalCharacters!4415 (_1!11153 (get!6182 lt!708374))))))))

(declare-fun b!1822972 () Bool)

(declare-fun e!1165159 () Option!4187)

(declare-datatypes ((tuple2!19506 0))(
  ( (tuple2!19507 (_1!11155 List!20071) (_2!11155 List!20071)) )
))
(declare-fun lt!708378 () tuple2!19506)

(declare-fun size!15868 (BalanceConc!13222) Int)

(assert (=> b!1822972 (= e!1165159 (Some!4186 (tuple2!19503 (Token!6769 (apply!5399 (transformation!3607 rule!559) (seqFromList!2568 (_1!11155 lt!708378))) rule!559 (size!15868 (seqFromList!2568 (_1!11155 lt!708378))) (_1!11155 lt!708378)) (_2!11155 lt!708378))))))

(declare-fun lt!708376 () Unit!34671)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!485 (Regex!4935 List!20071) Unit!34671)

(assert (=> b!1822972 (= lt!708376 (longestMatchIsAcceptedByMatchOrIsEmpty!485 (regex!3607 rule!559) input!3612))))

(declare-fun res!819908 () Bool)

(declare-fun isEmpty!12631 (List!20071) Bool)

(declare-fun findLongestMatchInner!501 (Regex!4935 List!20071 Int List!20071 List!20071 Int) tuple2!19506)

(assert (=> b!1822972 (= res!819908 (isEmpty!12631 (_1!11155 (findLongestMatchInner!501 (regex!3607 rule!559) Nil!20001 (size!15864 Nil!20001) input!3612 input!3612 (size!15864 input!3612)))))))

(declare-fun e!1165158 () Bool)

(assert (=> b!1822972 (=> res!819908 e!1165158)))

(assert (=> b!1822972 e!1165158))

(declare-fun lt!708375 () Unit!34671)

(assert (=> b!1822972 (= lt!708375 lt!708376)))

(declare-fun lt!708377 () Unit!34671)

(declare-fun lemmaSemiInverse!715 (TokenValueInjection!7054 BalanceConc!13222) Unit!34671)

(assert (=> b!1822972 (= lt!708377 (lemmaSemiInverse!715 (transformation!3607 rule!559) (seqFromList!2568 (_1!11155 lt!708378))))))

(declare-fun b!1822973 () Bool)

(assert (=> b!1822973 (= e!1165158 (matchR!2400 (regex!3607 rule!559) (_1!11155 (findLongestMatchInner!501 (regex!3607 rule!559) Nil!20001 (size!15864 Nil!20001) input!3612 input!3612 (size!15864 input!3612)))))))

(declare-fun b!1822974 () Bool)

(declare-fun e!1165160 () Bool)

(assert (=> b!1822974 (= e!1165160 e!1165157)))

(declare-fun res!819904 () Bool)

(assert (=> b!1822974 (=> (not res!819904) (not e!1165157))))

(assert (=> b!1822974 (= res!819904 (matchR!2400 (regex!3607 rule!559) (list!8125 (charsOf!2250 (_1!11153 (get!6182 lt!708374))))))))

(declare-fun b!1822975 () Bool)

(declare-fun res!819907 () Bool)

(assert (=> b!1822975 (=> (not res!819907) (not e!1165157))))

(assert (=> b!1822975 (= res!819907 (= (value!112466 (_1!11153 (get!6182 lt!708374))) (apply!5399 (transformation!3607 (rule!5743 (_1!11153 (get!6182 lt!708374)))) (seqFromList!2568 (originalCharacters!4415 (_1!11153 (get!6182 lt!708374)))))))))

(declare-fun b!1822976 () Bool)

(declare-fun res!819910 () Bool)

(assert (=> b!1822976 (=> (not res!819910) (not e!1165157))))

(assert (=> b!1822976 (= res!819910 (= (++!5431 (list!8125 (charsOf!2250 (_1!11153 (get!6182 lt!708374)))) (_2!11153 (get!6182 lt!708374))) input!3612))))

(declare-fun d!557990 () Bool)

(assert (=> d!557990 e!1165160))

(declare-fun res!819909 () Bool)

(assert (=> d!557990 (=> res!819909 e!1165160)))

(declare-fun isEmpty!12632 (Option!4187) Bool)

(assert (=> d!557990 (= res!819909 (isEmpty!12632 lt!708374))))

(assert (=> d!557990 (= lt!708374 e!1165159)))

(declare-fun c!297408 () Bool)

(assert (=> d!557990 (= c!297408 (isEmpty!12631 (_1!11155 lt!708378)))))

(declare-fun findLongestMatch!428 (Regex!4935 List!20071) tuple2!19506)

(assert (=> d!557990 (= lt!708378 (findLongestMatch!428 (regex!3607 rule!559) input!3612))))

(assert (=> d!557990 (ruleValid!1099 thiss!28068 rule!559)))

(assert (=> d!557990 (= (maxPrefixOneRule!1149 thiss!28068 rule!559 input!3612) lt!708374)))

(declare-fun b!1822977 () Bool)

(assert (=> b!1822977 (= e!1165159 None!4186)))

(assert (= (and d!557990 c!297408) b!1822977))

(assert (= (and d!557990 (not c!297408)) b!1822972))

(assert (= (and b!1822972 (not res!819908)) b!1822973))

(assert (= (and d!557990 (not res!819909)) b!1822974))

(assert (= (and b!1822974 res!819904) b!1822976))

(assert (= (and b!1822976 res!819910) b!1822969))

(assert (= (and b!1822969 res!819906) b!1822970))

(assert (= (and b!1822970 res!819905) b!1822975))

(assert (= (and b!1822975 res!819907) b!1822971))

(declare-fun m!2251651 () Bool)

(assert (=> b!1822975 m!2251651))

(declare-fun m!2251653 () Bool)

(assert (=> b!1822975 m!2251653))

(assert (=> b!1822975 m!2251653))

(declare-fun m!2251655 () Bool)

(assert (=> b!1822975 m!2251655))

(assert (=> b!1822971 m!2251651))

(declare-fun m!2251657 () Bool)

(assert (=> b!1822971 m!2251657))

(assert (=> b!1822969 m!2251651))

(declare-fun m!2251659 () Bool)

(assert (=> b!1822969 m!2251659))

(declare-fun m!2251661 () Bool)

(assert (=> b!1822969 m!2251661))

(assert (=> b!1822970 m!2251651))

(declare-fun m!2251663 () Bool)

(assert (=> d!557990 m!2251663))

(declare-fun m!2251665 () Bool)

(assert (=> d!557990 m!2251665))

(declare-fun m!2251667 () Bool)

(assert (=> d!557990 m!2251667))

(assert (=> d!557990 m!2251331))

(declare-fun m!2251669 () Bool)

(assert (=> b!1822972 m!2251669))

(declare-fun m!2251671 () Bool)

(assert (=> b!1822972 m!2251671))

(assert (=> b!1822972 m!2251661))

(declare-fun m!2251673 () Bool)

(assert (=> b!1822972 m!2251673))

(assert (=> b!1822972 m!2251671))

(declare-fun m!2251675 () Bool)

(assert (=> b!1822972 m!2251675))

(assert (=> b!1822972 m!2251673))

(assert (=> b!1822972 m!2251661))

(declare-fun m!2251677 () Bool)

(assert (=> b!1822972 m!2251677))

(declare-fun m!2251679 () Bool)

(assert (=> b!1822972 m!2251679))

(assert (=> b!1822972 m!2251671))

(declare-fun m!2251681 () Bool)

(assert (=> b!1822972 m!2251681))

(assert (=> b!1822972 m!2251671))

(declare-fun m!2251683 () Bool)

(assert (=> b!1822972 m!2251683))

(assert (=> b!1822974 m!2251651))

(declare-fun m!2251685 () Bool)

(assert (=> b!1822974 m!2251685))

(assert (=> b!1822974 m!2251685))

(declare-fun m!2251687 () Bool)

(assert (=> b!1822974 m!2251687))

(assert (=> b!1822974 m!2251687))

(declare-fun m!2251689 () Bool)

(assert (=> b!1822974 m!2251689))

(assert (=> b!1822973 m!2251673))

(assert (=> b!1822973 m!2251661))

(assert (=> b!1822973 m!2251673))

(assert (=> b!1822973 m!2251661))

(assert (=> b!1822973 m!2251677))

(declare-fun m!2251691 () Bool)

(assert (=> b!1822973 m!2251691))

(assert (=> b!1822976 m!2251651))

(assert (=> b!1822976 m!2251685))

(assert (=> b!1822976 m!2251685))

(assert (=> b!1822976 m!2251687))

(assert (=> b!1822976 m!2251687))

(declare-fun m!2251693 () Bool)

(assert (=> b!1822976 m!2251693))

(assert (=> b!1822627 d!557990))

(declare-fun d!558016 () Bool)

(assert (=> d!558016 (= (maxPrefixOneRule!1149 thiss!28068 rule!559 input!3612) (Some!4186 (tuple2!19503 (Token!6769 (apply!5399 (transformation!3607 rule!559) (seqFromList!2568 lt!708247)) rule!559 (size!15864 lt!708247) lt!708247) suffix!1667)))))

(declare-fun lt!708384 () Unit!34671)

(declare-fun choose!11488 (LexerInterface!3236 List!20072 List!20071 List!20071 List!20071 Rule!7014) Unit!34671)

(assert (=> d!558016 (= lt!708384 (choose!11488 thiss!28068 rules!4538 lt!708247 input!3612 suffix!1667 rule!559))))

(assert (=> d!558016 (not (isEmpty!12627 rules!4538))))

(assert (=> d!558016 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!525 thiss!28068 rules!4538 lt!708247 input!3612 suffix!1667 rule!559) lt!708384)))

(declare-fun bs!407430 () Bool)

(assert (= bs!407430 d!558016))

(assert (=> bs!407430 m!2251305))

(assert (=> bs!407430 m!2251279))

(assert (=> bs!407430 m!2251309))

(assert (=> bs!407430 m!2251303))

(assert (=> bs!407430 m!2251305))

(assert (=> bs!407430 m!2251307))

(declare-fun m!2251701 () Bool)

(assert (=> bs!407430 m!2251701))

(assert (=> b!1822627 d!558016))

(declare-fun d!558020 () Bool)

(declare-fun lt!708387 () Int)

(assert (=> d!558020 (>= lt!708387 0)))

(declare-fun e!1165169 () Int)

(assert (=> d!558020 (= lt!708387 e!1165169)))

(declare-fun c!297411 () Bool)

(assert (=> d!558020 (= c!297411 ((_ is Nil!20001) lt!708247))))

(assert (=> d!558020 (= (size!15864 lt!708247) lt!708387)))

(declare-fun b!1822988 () Bool)

(assert (=> b!1822988 (= e!1165169 0)))

(declare-fun b!1822989 () Bool)

(assert (=> b!1822989 (= e!1165169 (+ 1 (size!15864 (t!169980 lt!708247))))))

(assert (= (and d!558020 c!297411) b!1822988))

(assert (= (and d!558020 (not c!297411)) b!1822989))

(declare-fun m!2251703 () Bool)

(assert (=> b!1822989 m!2251703))

(assert (=> b!1822627 d!558020))

(declare-fun d!558022 () Bool)

(declare-fun fromListB!1172 (List!20071) BalanceConc!13222)

(assert (=> d!558022 (= (seqFromList!2568 lt!708247) (fromListB!1172 lt!708247))))

(declare-fun bs!407431 () Bool)

(assert (= bs!407431 d!558022))

(declare-fun m!2251705 () Bool)

(assert (=> bs!407431 m!2251705))

(assert (=> b!1822627 d!558022))

(declare-fun d!558024 () Bool)

(declare-fun dynLambda!9938 (Int BalanceConc!13222) TokenValue!3697)

(assert (=> d!558024 (= (apply!5399 (transformation!3607 rule!559) (seqFromList!2568 lt!708247)) (dynLambda!9938 (toValue!5142 (transformation!3607 rule!559)) (seqFromList!2568 lt!708247)))))

(declare-fun b_lambda!60171 () Bool)

(assert (=> (not b_lambda!60171) (not d!558024)))

(declare-fun t!169996 () Bool)

(declare-fun tb!111313 () Bool)

(assert (=> (and b!1822630 (= (toValue!5142 (transformation!3607 rule!559)) (toValue!5142 (transformation!3607 rule!559))) t!169996) tb!111313))

(declare-fun result!133792 () Bool)

(assert (=> tb!111313 (= result!133792 (inv!21 (dynLambda!9938 (toValue!5142 (transformation!3607 rule!559)) (seqFromList!2568 lt!708247))))))

(declare-fun m!2251707 () Bool)

(assert (=> tb!111313 m!2251707))

(assert (=> d!558024 t!169996))

(declare-fun b_and!141439 () Bool)

(assert (= b_and!141409 (and (=> t!169996 result!133792) b_and!141439)))

(declare-fun t!169998 () Bool)

(declare-fun tb!111315 () Bool)

(assert (=> (and b!1822619 (= (toValue!5142 (transformation!3607 (rule!5743 token!556))) (toValue!5142 (transformation!3607 rule!559))) t!169998) tb!111315))

(declare-fun result!133796 () Bool)

(assert (= result!133796 result!133792))

(assert (=> d!558024 t!169998))

(declare-fun b_and!141441 () Bool)

(assert (= b_and!141413 (and (=> t!169998 result!133796) b_and!141441)))

(declare-fun t!170000 () Bool)

(declare-fun tb!111317 () Bool)

(assert (=> (and b!1822625 (= (toValue!5142 (transformation!3607 (h!25403 rules!4538))) (toValue!5142 (transformation!3607 rule!559))) t!170000) tb!111317))

(declare-fun result!133798 () Bool)

(assert (= result!133798 result!133792))

(assert (=> d!558024 t!170000))

(declare-fun b_and!141443 () Bool)

(assert (= b_and!141417 (and (=> t!170000 result!133798) b_and!141443)))

(assert (=> d!558024 m!2251305))

(declare-fun m!2251709 () Bool)

(assert (=> d!558024 m!2251709))

(assert (=> b!1822627 d!558024))

(declare-fun d!558026 () Bool)

(declare-fun res!819921 () Bool)

(declare-fun e!1165178 () Bool)

(assert (=> d!558026 (=> (not res!819921) (not e!1165178))))

(assert (=> d!558026 (= res!819921 (not (isEmpty!12631 (originalCharacters!4415 token!556))))))

(assert (=> d!558026 (= (inv!26033 token!556) e!1165178)))

(declare-fun b!1823002 () Bool)

(declare-fun res!819922 () Bool)

(assert (=> b!1823002 (=> (not res!819922) (not e!1165178))))

(declare-fun dynLambda!9939 (Int TokenValue!3697) BalanceConc!13222)

(assert (=> b!1823002 (= res!819922 (= (originalCharacters!4415 token!556) (list!8125 (dynLambda!9939 (toChars!5001 (transformation!3607 (rule!5743 token!556))) (value!112466 token!556)))))))

(declare-fun b!1823003 () Bool)

(assert (=> b!1823003 (= e!1165178 (= (size!15863 token!556) (size!15864 (originalCharacters!4415 token!556))))))

(assert (= (and d!558026 res!819921) b!1823002))

(assert (= (and b!1823002 res!819922) b!1823003))

(declare-fun b_lambda!60173 () Bool)

(assert (=> (not b_lambda!60173) (not b!1823002)))

(declare-fun t!170002 () Bool)

(declare-fun tb!111319 () Bool)

(assert (=> (and b!1822630 (= (toChars!5001 (transformation!3607 rule!559)) (toChars!5001 (transformation!3607 (rule!5743 token!556)))) t!170002) tb!111319))

(declare-fun b!1823016 () Bool)

(declare-fun e!1165183 () Bool)

(declare-fun tp!515378 () Bool)

(declare-fun inv!26036 (Conc!6639) Bool)

(assert (=> b!1823016 (= e!1165183 (and (inv!26036 (c!297330 (dynLambda!9939 (toChars!5001 (transformation!3607 (rule!5743 token!556))) (value!112466 token!556)))) tp!515378))))

(declare-fun result!133800 () Bool)

(declare-fun inv!26037 (BalanceConc!13222) Bool)

(assert (=> tb!111319 (= result!133800 (and (inv!26037 (dynLambda!9939 (toChars!5001 (transformation!3607 (rule!5743 token!556))) (value!112466 token!556))) e!1165183))))

(assert (= tb!111319 b!1823016))

(declare-fun m!2251725 () Bool)

(assert (=> b!1823016 m!2251725))

(declare-fun m!2251727 () Bool)

(assert (=> tb!111319 m!2251727))

(assert (=> b!1823002 t!170002))

(declare-fun b_and!141445 () Bool)

(assert (= b_and!141411 (and (=> t!170002 result!133800) b_and!141445)))

(declare-fun t!170004 () Bool)

(declare-fun tb!111321 () Bool)

(assert (=> (and b!1822619 (= (toChars!5001 (transformation!3607 (rule!5743 token!556))) (toChars!5001 (transformation!3607 (rule!5743 token!556)))) t!170004) tb!111321))

(declare-fun result!133806 () Bool)

(assert (= result!133806 result!133800))

(assert (=> b!1823002 t!170004))

(declare-fun b_and!141447 () Bool)

(assert (= b_and!141415 (and (=> t!170004 result!133806) b_and!141447)))

(declare-fun t!170006 () Bool)

(declare-fun tb!111323 () Bool)

(assert (=> (and b!1822625 (= (toChars!5001 (transformation!3607 (h!25403 rules!4538))) (toChars!5001 (transformation!3607 (rule!5743 token!556)))) t!170006) tb!111323))

(declare-fun result!133808 () Bool)

(assert (= result!133808 result!133800))

(assert (=> b!1823002 t!170006))

(declare-fun b_and!141449 () Bool)

(assert (= b_and!141419 (and (=> t!170006 result!133808) b_and!141449)))

(declare-fun m!2251729 () Bool)

(assert (=> d!558026 m!2251729))

(declare-fun m!2251731 () Bool)

(assert (=> b!1823002 m!2251731))

(assert (=> b!1823002 m!2251731))

(declare-fun m!2251733 () Bool)

(assert (=> b!1823002 m!2251733))

(declare-fun m!2251735 () Bool)

(assert (=> b!1823003 m!2251735))

(assert (=> start!180494 d!558026))

(declare-fun d!558028 () Bool)

(declare-fun res!819925 () Bool)

(declare-fun e!1165199 () Bool)

(assert (=> d!558028 (=> (not res!819925) (not e!1165199))))

(assert (=> d!558028 (= res!819925 (rulesValid!1369 thiss!28068 rules!4538))))

(assert (=> d!558028 (= (rulesInvariant!2905 thiss!28068 rules!4538) e!1165199)))

(declare-fun b!1823039 () Bool)

(declare-datatypes ((List!20075 0))(
  ( (Nil!20005) (Cons!20005 (h!25406 String!22817) (t!170016 List!20075)) )
))
(declare-fun noDuplicateTag!1367 (LexerInterface!3236 List!20072 List!20075) Bool)

(assert (=> b!1823039 (= e!1165199 (noDuplicateTag!1367 thiss!28068 rules!4538 Nil!20005))))

(assert (= (and d!558028 res!819925) b!1823039))

(assert (=> d!558028 m!2251523))

(declare-fun m!2251737 () Bool)

(assert (=> b!1823039 m!2251737))

(assert (=> b!1822617 d!558028))

(declare-fun d!558030 () Bool)

(declare-fun lt!708405 () Bool)

(declare-fun content!2937 (List!20073) (InoxSet Regex!4935))

(assert (=> d!558030 (= lt!708405 (select (content!2937 lt!708250) (regex!3607 rule!559)))))

(declare-fun e!1165211 () Bool)

(assert (=> d!558030 (= lt!708405 e!1165211)))

(declare-fun res!819931 () Bool)

(assert (=> d!558030 (=> (not res!819931) (not e!1165211))))

(assert (=> d!558030 (= res!819931 ((_ is Cons!20003) lt!708250))))

(assert (=> d!558030 (= (contains!3663 lt!708250 (regex!3607 rule!559)) lt!708405)))

(declare-fun b!1823056 () Bool)

(declare-fun e!1165212 () Bool)

(assert (=> b!1823056 (= e!1165211 e!1165212)))

(declare-fun res!819930 () Bool)

(assert (=> b!1823056 (=> res!819930 e!1165212)))

(assert (=> b!1823056 (= res!819930 (= (h!25404 lt!708250) (regex!3607 rule!559)))))

(declare-fun b!1823057 () Bool)

(assert (=> b!1823057 (= e!1165212 (contains!3663 (t!169982 lt!708250) (regex!3607 rule!559)))))

(assert (= (and d!558030 res!819931) b!1823056))

(assert (= (and b!1823056 (not res!819930)) b!1823057))

(declare-fun m!2251743 () Bool)

(assert (=> d!558030 m!2251743))

(declare-fun m!2251745 () Bool)

(assert (=> d!558030 m!2251745))

(declare-fun m!2251747 () Bool)

(assert (=> b!1823057 m!2251747))

(assert (=> b!1822638 d!558030))

(assert (=> b!1822638 d!557954))

(declare-fun bs!407436 () Bool)

(declare-fun d!558034 () Bool)

(assert (= bs!407436 (and d!558034 b!1822637)))

(declare-fun lambda!71507 () Int)

(assert (=> bs!407436 (= lambda!71507 lambda!71467)))

(declare-fun bs!407437 () Bool)

(assert (= bs!407437 (and d!558034 d!557952)))

(assert (=> bs!407437 (= lambda!71507 lambda!71477)))

(declare-fun bs!407438 () Bool)

(assert (= bs!407438 (and d!558034 d!557958)))

(assert (=> bs!407438 (= lambda!71507 lambda!71488)))

(assert (=> d!558034 (contains!3663 (map!4141 rules!4538 lambda!71507) (regex!3607 rule!559))))

(declare-fun lt!708417 () Unit!34671)

(declare-fun e!1165215 () Unit!34671)

(assert (=> d!558034 (= lt!708417 e!1165215)))

(declare-fun c!297417 () Bool)

(assert (=> d!558034 (= c!297417 (and ((_ is Cons!20002) rules!4538) (not (= (h!25403 rules!4538) rule!559))))))

(assert (=> d!558034 (rulesValid!1369 thiss!28068 rules!4538)))

(declare-fun lt!708420 () Unit!34671)

(assert (=> d!558034 (= lt!708420 (lemma!485 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun lt!708418 () Unit!34671)

(declare-fun lt!708416 () Unit!34671)

(assert (=> d!558034 (= lt!708418 lt!708416)))

(declare-fun lt!708419 () List!20071)

(assert (=> d!558034 (= (maxPrefixOneRule!1149 thiss!28068 rule!559 input!3612) (Some!4186 (tuple2!19503 (Token!6769 (apply!5399 (transformation!3607 rule!559) (seqFromList!2568 lt!708419)) rule!559 (size!15864 lt!708419) lt!708419) suffix!1667)))))

(assert (=> d!558034 (= lt!708416 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!525 thiss!28068 rules!4538 lt!708419 input!3612 suffix!1667 rule!559))))

(assert (=> d!558034 (= lt!708419 (list!8125 (charsOf!2250 token!556)))))

(assert (=> d!558034 (= (lemma!486 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!708417)))

(declare-fun b!1823062 () Bool)

(assert (=> b!1823062 (= e!1165215 (lemma!486 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169981 rules!4538)))))

(declare-fun b!1823063 () Bool)

(declare-fun Unit!34677 () Unit!34671)

(assert (=> b!1823063 (= e!1165215 Unit!34677)))

(assert (= (and d!558034 c!297417) b!1823062))

(assert (= (and d!558034 (not c!297417)) b!1823063))

(assert (=> d!558034 m!2251299))

(assert (=> d!558034 m!2251309))

(assert (=> d!558034 m!2251339))

(assert (=> d!558034 m!2251341))

(assert (=> d!558034 m!2251523))

(declare-fun m!2251749 () Bool)

(assert (=> d!558034 m!2251749))

(assert (=> d!558034 m!2251749))

(declare-fun m!2251751 () Bool)

(assert (=> d!558034 m!2251751))

(assert (=> d!558034 m!2251339))

(declare-fun m!2251753 () Bool)

(assert (=> d!558034 m!2251753))

(declare-fun m!2251755 () Bool)

(assert (=> d!558034 m!2251755))

(declare-fun m!2251757 () Bool)

(assert (=> d!558034 m!2251757))

(declare-fun m!2251759 () Bool)

(assert (=> d!558034 m!2251759))

(assert (=> d!558034 m!2251757))

(declare-fun m!2251761 () Bool)

(assert (=> b!1823062 m!2251761))

(assert (=> b!1822638 d!558034))

(declare-fun b!1823075 () Bool)

(declare-fun e!1165222 () Bool)

(declare-fun inv!17 (TokenValue!3697) Bool)

(assert (=> b!1823075 (= e!1165222 (inv!17 (value!112466 token!556)))))

(declare-fun b!1823076 () Bool)

(declare-fun e!1165223 () Bool)

(assert (=> b!1823076 (= e!1165223 e!1165222)))

(declare-fun c!297422 () Bool)

(assert (=> b!1823076 (= c!297422 ((_ is IntegerValue!11092) (value!112466 token!556)))))

(declare-fun b!1823077 () Bool)

(declare-fun res!819934 () Bool)

(declare-fun e!1165224 () Bool)

(assert (=> b!1823077 (=> res!819934 e!1165224)))

(assert (=> b!1823077 (= res!819934 (not ((_ is IntegerValue!11093) (value!112466 token!556))))))

(assert (=> b!1823077 (= e!1165222 e!1165224)))

(declare-fun b!1823078 () Bool)

(declare-fun inv!16 (TokenValue!3697) Bool)

(assert (=> b!1823078 (= e!1165223 (inv!16 (value!112466 token!556)))))

(declare-fun d!558036 () Bool)

(declare-fun c!297423 () Bool)

(assert (=> d!558036 (= c!297423 ((_ is IntegerValue!11091) (value!112466 token!556)))))

(assert (=> d!558036 (= (inv!21 (value!112466 token!556)) e!1165223)))

(declare-fun b!1823074 () Bool)

(declare-fun inv!15 (TokenValue!3697) Bool)

(assert (=> b!1823074 (= e!1165224 (inv!15 (value!112466 token!556)))))

(assert (= (and d!558036 c!297423) b!1823078))

(assert (= (and d!558036 (not c!297423)) b!1823076))

(assert (= (and b!1823076 c!297422) b!1823075))

(assert (= (and b!1823076 (not c!297422)) b!1823077))

(assert (= (and b!1823077 (not res!819934)) b!1823074))

(declare-fun m!2251763 () Bool)

(assert (=> b!1823075 m!2251763))

(declare-fun m!2251765 () Bool)

(assert (=> b!1823078 m!2251765))

(declare-fun m!2251767 () Bool)

(assert (=> b!1823074 m!2251767))

(assert (=> b!1822623 d!558036))

(declare-fun b!1823107 () Bool)

(declare-fun res!819956 () Bool)

(declare-fun e!1165245 () Bool)

(assert (=> b!1823107 (=> (not res!819956) (not e!1165245))))

(declare-fun tail!2709 (List!20071) List!20071)

(assert (=> b!1823107 (= res!819956 (isEmpty!12631 (tail!2709 lt!708247)))))

(declare-fun b!1823108 () Bool)

(declare-fun e!1165244 () Bool)

(declare-fun e!1165241 () Bool)

(assert (=> b!1823108 (= e!1165244 e!1165241)))

(declare-fun res!819955 () Bool)

(assert (=> b!1823108 (=> res!819955 e!1165241)))

(declare-fun call!114360 () Bool)

(assert (=> b!1823108 (= res!819955 call!114360)))

(declare-fun b!1823109 () Bool)

(declare-fun e!1165242 () Bool)

(declare-fun derivativeStep!1292 (Regex!4935 C!10044) Regex!4935)

(declare-fun head!4250 (List!20071) C!10044)

(assert (=> b!1823109 (= e!1165242 (matchR!2400 (derivativeStep!1292 (regex!3607 rule!559) (head!4250 lt!708247)) (tail!2709 lt!708247)))))

(declare-fun b!1823110 () Bool)

(declare-fun nullable!1527 (Regex!4935) Bool)

(assert (=> b!1823110 (= e!1165242 (nullable!1527 (regex!3607 rule!559)))))

(declare-fun b!1823111 () Bool)

(declare-fun e!1165240 () Bool)

(declare-fun lt!708423 () Bool)

(assert (=> b!1823111 (= e!1165240 (= lt!708423 call!114360))))

(declare-fun b!1823113 () Bool)

(declare-fun e!1165239 () Bool)

(assert (=> b!1823113 (= e!1165239 e!1165244)))

(declare-fun res!819954 () Bool)

(assert (=> b!1823113 (=> (not res!819954) (not e!1165244))))

(assert (=> b!1823113 (= res!819954 (not lt!708423))))

(declare-fun bm!114355 () Bool)

(assert (=> bm!114355 (= call!114360 (isEmpty!12631 lt!708247))))

(declare-fun b!1823114 () Bool)

(declare-fun res!819951 () Bool)

(assert (=> b!1823114 (=> (not res!819951) (not e!1165245))))

(assert (=> b!1823114 (= res!819951 (not call!114360))))

(declare-fun b!1823115 () Bool)

(declare-fun res!819958 () Bool)

(assert (=> b!1823115 (=> res!819958 e!1165239)))

(assert (=> b!1823115 (= res!819958 e!1165245)))

(declare-fun res!819957 () Bool)

(assert (=> b!1823115 (=> (not res!819957) (not e!1165245))))

(assert (=> b!1823115 (= res!819957 lt!708423)))

(declare-fun b!1823116 () Bool)

(declare-fun res!819952 () Bool)

(assert (=> b!1823116 (=> res!819952 e!1165241)))

(assert (=> b!1823116 (= res!819952 (not (isEmpty!12631 (tail!2709 lt!708247))))))

(declare-fun b!1823117 () Bool)

(assert (=> b!1823117 (= e!1165241 (not (= (head!4250 lt!708247) (c!297331 (regex!3607 rule!559)))))))

(declare-fun b!1823118 () Bool)

(declare-fun e!1165243 () Bool)

(assert (=> b!1823118 (= e!1165243 (not lt!708423))))

(declare-fun d!558038 () Bool)

(assert (=> d!558038 e!1165240))

(declare-fun c!297431 () Bool)

(assert (=> d!558038 (= c!297431 ((_ is EmptyExpr!4935) (regex!3607 rule!559)))))

(assert (=> d!558038 (= lt!708423 e!1165242)))

(declare-fun c!297432 () Bool)

(assert (=> d!558038 (= c!297432 (isEmpty!12631 lt!708247))))

(assert (=> d!558038 (validRegex!2005 (regex!3607 rule!559))))

(assert (=> d!558038 (= (matchR!2400 (regex!3607 rule!559) lt!708247) lt!708423)))

(declare-fun b!1823112 () Bool)

(assert (=> b!1823112 (= e!1165240 e!1165243)))

(declare-fun c!297430 () Bool)

(assert (=> b!1823112 (= c!297430 ((_ is EmptyLang!4935) (regex!3607 rule!559)))))

(declare-fun b!1823119 () Bool)

(declare-fun res!819953 () Bool)

(assert (=> b!1823119 (=> res!819953 e!1165239)))

(assert (=> b!1823119 (= res!819953 (not ((_ is ElementMatch!4935) (regex!3607 rule!559))))))

(assert (=> b!1823119 (= e!1165243 e!1165239)))

(declare-fun b!1823120 () Bool)

(assert (=> b!1823120 (= e!1165245 (= (head!4250 lt!708247) (c!297331 (regex!3607 rule!559))))))

(assert (= (and d!558038 c!297432) b!1823110))

(assert (= (and d!558038 (not c!297432)) b!1823109))

(assert (= (and d!558038 c!297431) b!1823111))

(assert (= (and d!558038 (not c!297431)) b!1823112))

(assert (= (and b!1823112 c!297430) b!1823118))

(assert (= (and b!1823112 (not c!297430)) b!1823119))

(assert (= (and b!1823119 (not res!819953)) b!1823115))

(assert (= (and b!1823115 res!819957) b!1823114))

(assert (= (and b!1823114 res!819951) b!1823107))

(assert (= (and b!1823107 res!819956) b!1823120))

(assert (= (and b!1823115 (not res!819958)) b!1823113))

(assert (= (and b!1823113 res!819954) b!1823108))

(assert (= (and b!1823108 (not res!819955)) b!1823116))

(assert (= (and b!1823116 (not res!819952)) b!1823117))

(assert (= (or b!1823111 b!1823108 b!1823114) bm!114355))

(declare-fun m!2251769 () Bool)

(assert (=> b!1823120 m!2251769))

(declare-fun m!2251771 () Bool)

(assert (=> b!1823116 m!2251771))

(assert (=> b!1823116 m!2251771))

(declare-fun m!2251773 () Bool)

(assert (=> b!1823116 m!2251773))

(declare-fun m!2251775 () Bool)

(assert (=> d!558038 m!2251775))

(assert (=> d!558038 m!2251283))

(assert (=> b!1823107 m!2251771))

(assert (=> b!1823107 m!2251771))

(assert (=> b!1823107 m!2251773))

(assert (=> bm!114355 m!2251775))

(assert (=> b!1823117 m!2251769))

(declare-fun m!2251777 () Bool)

(assert (=> b!1823110 m!2251777))

(assert (=> b!1823109 m!2251769))

(assert (=> b!1823109 m!2251769))

(declare-fun m!2251779 () Bool)

(assert (=> b!1823109 m!2251779))

(assert (=> b!1823109 m!2251771))

(assert (=> b!1823109 m!2251779))

(assert (=> b!1823109 m!2251771))

(declare-fun m!2251781 () Bool)

(assert (=> b!1823109 m!2251781))

(assert (=> b!1822634 d!558038))

(declare-fun d!558040 () Bool)

(declare-fun res!819963 () Bool)

(declare-fun e!1165248 () Bool)

(assert (=> d!558040 (=> (not res!819963) (not e!1165248))))

(assert (=> d!558040 (= res!819963 (validRegex!2005 (regex!3607 rule!559)))))

(assert (=> d!558040 (= (ruleValid!1099 thiss!28068 rule!559) e!1165248)))

(declare-fun b!1823125 () Bool)

(declare-fun res!819964 () Bool)

(assert (=> b!1823125 (=> (not res!819964) (not e!1165248))))

(assert (=> b!1823125 (= res!819964 (not (nullable!1527 (regex!3607 rule!559))))))

(declare-fun b!1823126 () Bool)

(assert (=> b!1823126 (= e!1165248 (not (= (tag!4021 rule!559) (String!22818 ""))))))

(assert (= (and d!558040 res!819963) b!1823125))

(assert (= (and b!1823125 res!819964) b!1823126))

(assert (=> d!558040 m!2251283))

(assert (=> b!1823125 m!2251777))

(assert (=> b!1822634 d!558040))

(declare-fun d!558042 () Bool)

(assert (=> d!558042 (ruleValid!1099 thiss!28068 rule!559)))

(declare-fun lt!708426 () Unit!34671)

(declare-fun choose!11489 (LexerInterface!3236 Rule!7014 List!20072) Unit!34671)

(assert (=> d!558042 (= lt!708426 (choose!11489 thiss!28068 rule!559 rules!4538))))

(assert (=> d!558042 (contains!3662 rules!4538 rule!559)))

(assert (=> d!558042 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!620 thiss!28068 rule!559 rules!4538) lt!708426)))

(declare-fun bs!407439 () Bool)

(assert (= bs!407439 d!558042))

(assert (=> bs!407439 m!2251331))

(declare-fun m!2251783 () Bool)

(assert (=> bs!407439 m!2251783))

(assert (=> bs!407439 m!2251291))

(assert (=> b!1822634 d!558042))

(declare-fun b!1823145 () Bool)

(declare-fun e!1165256 () Bool)

(declare-fun e!1165255 () Bool)

(assert (=> b!1823145 (= e!1165256 e!1165255)))

(declare-fun res!819983 () Bool)

(assert (=> b!1823145 (=> (not res!819983) (not e!1165255))))

(declare-fun lt!708439 () Option!4187)

(declare-fun isDefined!3504 (Option!4187) Bool)

(assert (=> b!1823145 (= res!819983 (isDefined!3504 lt!708439))))

(declare-fun b!1823146 () Bool)

(declare-fun res!819980 () Bool)

(assert (=> b!1823146 (=> (not res!819980) (not e!1165255))))

(assert (=> b!1823146 (= res!819980 (< (size!15864 (_2!11153 (get!6182 lt!708439))) (size!15864 input!3612)))))

(declare-fun b!1823147 () Bool)

(declare-fun res!819982 () Bool)

(assert (=> b!1823147 (=> (not res!819982) (not e!1165255))))

(assert (=> b!1823147 (= res!819982 (matchR!2400 (regex!3607 (rule!5743 (_1!11153 (get!6182 lt!708439)))) (list!8125 (charsOf!2250 (_1!11153 (get!6182 lt!708439))))))))

(declare-fun b!1823148 () Bool)

(declare-fun res!819984 () Bool)

(assert (=> b!1823148 (=> (not res!819984) (not e!1165255))))

(assert (=> b!1823148 (= res!819984 (= (list!8125 (charsOf!2250 (_1!11153 (get!6182 lt!708439)))) (originalCharacters!4415 (_1!11153 (get!6182 lt!708439)))))))

(declare-fun call!114363 () Option!4187)

(declare-fun bm!114358 () Bool)

(assert (=> bm!114358 (= call!114363 (maxPrefixOneRule!1149 thiss!28068 (h!25403 rules!4538) input!3612))))

(declare-fun b!1823149 () Bool)

(assert (=> b!1823149 (= e!1165255 (contains!3662 rules!4538 (rule!5743 (_1!11153 (get!6182 lt!708439)))))))

(declare-fun b!1823150 () Bool)

(declare-fun res!819981 () Bool)

(assert (=> b!1823150 (=> (not res!819981) (not e!1165255))))

(assert (=> b!1823150 (= res!819981 (= (value!112466 (_1!11153 (get!6182 lt!708439))) (apply!5399 (transformation!3607 (rule!5743 (_1!11153 (get!6182 lt!708439)))) (seqFromList!2568 (originalCharacters!4415 (_1!11153 (get!6182 lt!708439)))))))))

(declare-fun b!1823151 () Bool)

(declare-fun e!1165257 () Option!4187)

(assert (=> b!1823151 (= e!1165257 call!114363)))

(declare-fun d!558044 () Bool)

(assert (=> d!558044 e!1165256))

(declare-fun res!819979 () Bool)

(assert (=> d!558044 (=> res!819979 e!1165256)))

(assert (=> d!558044 (= res!819979 (isEmpty!12632 lt!708439))))

(assert (=> d!558044 (= lt!708439 e!1165257)))

(declare-fun c!297435 () Bool)

(assert (=> d!558044 (= c!297435 (and ((_ is Cons!20002) rules!4538) ((_ is Nil!20002) (t!169981 rules!4538))))))

(declare-fun lt!708440 () Unit!34671)

(declare-fun lt!708441 () Unit!34671)

(assert (=> d!558044 (= lt!708440 lt!708441)))

(declare-fun isPrefix!1817 (List!20071 List!20071) Bool)

(assert (=> d!558044 (isPrefix!1817 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1194 (List!20071 List!20071) Unit!34671)

(assert (=> d!558044 (= lt!708441 (lemmaIsPrefixRefl!1194 input!3612 input!3612))))

(declare-fun rulesValidInductive!1236 (LexerInterface!3236 List!20072) Bool)

(assert (=> d!558044 (rulesValidInductive!1236 thiss!28068 rules!4538)))

(assert (=> d!558044 (= (maxPrefix!1784 thiss!28068 rules!4538 input!3612) lt!708439)))

(declare-fun b!1823152 () Bool)

(declare-fun lt!708437 () Option!4187)

(declare-fun lt!708438 () Option!4187)

(assert (=> b!1823152 (= e!1165257 (ite (and ((_ is None!4186) lt!708437) ((_ is None!4186) lt!708438)) None!4186 (ite ((_ is None!4186) lt!708438) lt!708437 (ite ((_ is None!4186) lt!708437) lt!708438 (ite (>= (size!15863 (_1!11153 (v!25731 lt!708437))) (size!15863 (_1!11153 (v!25731 lt!708438)))) lt!708437 lt!708438)))))))

(assert (=> b!1823152 (= lt!708437 call!114363)))

(assert (=> b!1823152 (= lt!708438 (maxPrefix!1784 thiss!28068 (t!169981 rules!4538) input!3612))))

(declare-fun b!1823153 () Bool)

(declare-fun res!819985 () Bool)

(assert (=> b!1823153 (=> (not res!819985) (not e!1165255))))

(assert (=> b!1823153 (= res!819985 (= (++!5431 (list!8125 (charsOf!2250 (_1!11153 (get!6182 lt!708439)))) (_2!11153 (get!6182 lt!708439))) input!3612))))

(assert (= (and d!558044 c!297435) b!1823151))

(assert (= (and d!558044 (not c!297435)) b!1823152))

(assert (= (or b!1823151 b!1823152) bm!114358))

(assert (= (and d!558044 (not res!819979)) b!1823145))

(assert (= (and b!1823145 res!819983) b!1823148))

(assert (= (and b!1823148 res!819984) b!1823146))

(assert (= (and b!1823146 res!819980) b!1823153))

(assert (= (and b!1823153 res!819985) b!1823150))

(assert (= (and b!1823150 res!819981) b!1823147))

(assert (= (and b!1823147 res!819982) b!1823149))

(declare-fun m!2251785 () Bool)

(assert (=> b!1823146 m!2251785))

(declare-fun m!2251787 () Bool)

(assert (=> b!1823146 m!2251787))

(assert (=> b!1823146 m!2251661))

(assert (=> b!1823149 m!2251785))

(declare-fun m!2251789 () Bool)

(assert (=> b!1823149 m!2251789))

(declare-fun m!2251791 () Bool)

(assert (=> b!1823152 m!2251791))

(declare-fun m!2251793 () Bool)

(assert (=> b!1823145 m!2251793))

(assert (=> b!1823153 m!2251785))

(declare-fun m!2251795 () Bool)

(assert (=> b!1823153 m!2251795))

(assert (=> b!1823153 m!2251795))

(declare-fun m!2251797 () Bool)

(assert (=> b!1823153 m!2251797))

(assert (=> b!1823153 m!2251797))

(declare-fun m!2251799 () Bool)

(assert (=> b!1823153 m!2251799))

(assert (=> b!1823148 m!2251785))

(assert (=> b!1823148 m!2251795))

(assert (=> b!1823148 m!2251795))

(assert (=> b!1823148 m!2251797))

(assert (=> b!1823150 m!2251785))

(declare-fun m!2251801 () Bool)

(assert (=> b!1823150 m!2251801))

(assert (=> b!1823150 m!2251801))

(declare-fun m!2251803 () Bool)

(assert (=> b!1823150 m!2251803))

(declare-fun m!2251805 () Bool)

(assert (=> d!558044 m!2251805))

(declare-fun m!2251807 () Bool)

(assert (=> d!558044 m!2251807))

(declare-fun m!2251809 () Bool)

(assert (=> d!558044 m!2251809))

(declare-fun m!2251811 () Bool)

(assert (=> d!558044 m!2251811))

(declare-fun m!2251813 () Bool)

(assert (=> bm!114358 m!2251813))

(assert (=> b!1823147 m!2251785))

(assert (=> b!1823147 m!2251795))

(assert (=> b!1823147 m!2251795))

(assert (=> b!1823147 m!2251797))

(assert (=> b!1823147 m!2251797))

(declare-fun m!2251815 () Bool)

(assert (=> b!1823147 m!2251815))

(assert (=> b!1822635 d!558044))

(declare-fun bs!407440 () Bool)

(declare-fun d!558046 () Bool)

(assert (= bs!407440 (and d!558046 b!1822632)))

(declare-fun lambda!71510 () Int)

(assert (=> bs!407440 (not (= lambda!71510 lambda!71468))))

(declare-fun bs!407441 () Bool)

(assert (= bs!407441 (and d!558046 d!557950)))

(assert (=> bs!407441 (not (= lambda!71510 lambda!71474))))

(declare-fun bs!407442 () Bool)

(assert (= bs!407442 (and d!558046 d!557958)))

(assert (=> bs!407442 (not (= lambda!71510 lambda!71489))))

(assert (=> d!558046 true))

(declare-fun order!12983 () Int)

(declare-fun dynLambda!9941 (Int Int) Int)

(assert (=> d!558046 (< (dynLambda!9941 order!12983 lambda!71468) (dynLambda!9941 order!12983 lambda!71510))))

(assert (=> d!558046 (= (exists!637 lt!708250 lambda!71468) (not (forall!4313 lt!708250 lambda!71510)))))

(declare-fun bs!407443 () Bool)

(assert (= bs!407443 d!558046))

(declare-fun m!2251817 () Bool)

(assert (=> bs!407443 m!2251817))

(assert (=> b!1822631 d!558046))

(declare-fun d!558048 () Bool)

(assert (=> d!558048 (exists!637 lt!708250 lambda!71468)))

(declare-fun lt!708444 () Unit!34671)

(declare-fun choose!11490 (List!20073 Regex!4935 Int) Unit!34671)

(assert (=> d!558048 (= lt!708444 (choose!11490 lt!708250 (regex!3607 rule!559) lambda!71468))))

(assert (=> d!558048 (contains!3663 lt!708250 (regex!3607 rule!559))))

(assert (=> d!558048 (= (lemmaContainsThenExists!47 lt!708250 (regex!3607 rule!559) lambda!71468) lt!708444)))

(declare-fun bs!407444 () Bool)

(assert (= bs!407444 d!558048))

(assert (=> bs!407444 m!2251287))

(declare-fun m!2251819 () Bool)

(assert (=> bs!407444 m!2251819))

(assert (=> bs!407444 m!2251323))

(assert (=> b!1822631 d!558048))

(declare-fun b!1823164 () Bool)

(declare-fun e!1165264 () List!20071)

(assert (=> b!1823164 (= e!1165264 suffix!1667)))

(declare-fun b!1823166 () Bool)

(declare-fun res!819991 () Bool)

(declare-fun e!1165263 () Bool)

(assert (=> b!1823166 (=> (not res!819991) (not e!1165263))))

(declare-fun lt!708447 () List!20071)

(assert (=> b!1823166 (= res!819991 (= (size!15864 lt!708447) (+ (size!15864 lt!708247) (size!15864 suffix!1667))))))

(declare-fun b!1823167 () Bool)

(assert (=> b!1823167 (= e!1165263 (or (not (= suffix!1667 Nil!20001)) (= lt!708447 lt!708247)))))

(declare-fun b!1823165 () Bool)

(assert (=> b!1823165 (= e!1165264 (Cons!20001 (h!25402 lt!708247) (++!5431 (t!169980 lt!708247) suffix!1667)))))

(declare-fun d!558050 () Bool)

(assert (=> d!558050 e!1165263))

(declare-fun res!819990 () Bool)

(assert (=> d!558050 (=> (not res!819990) (not e!1165263))))

(declare-fun content!2939 (List!20071) (InoxSet C!10044))

(assert (=> d!558050 (= res!819990 (= (content!2939 lt!708447) ((_ map or) (content!2939 lt!708247) (content!2939 suffix!1667))))))

(assert (=> d!558050 (= lt!708447 e!1165264)))

(declare-fun c!297438 () Bool)

(assert (=> d!558050 (= c!297438 ((_ is Nil!20001) lt!708247))))

(assert (=> d!558050 (= (++!5431 lt!708247 suffix!1667) lt!708447)))

(assert (= (and d!558050 c!297438) b!1823164))

(assert (= (and d!558050 (not c!297438)) b!1823165))

(assert (= (and d!558050 res!819990) b!1823166))

(assert (= (and b!1823166 res!819991) b!1823167))

(declare-fun m!2251821 () Bool)

(assert (=> b!1823166 m!2251821))

(assert (=> b!1823166 m!2251303))

(declare-fun m!2251823 () Bool)

(assert (=> b!1823166 m!2251823))

(declare-fun m!2251825 () Bool)

(assert (=> b!1823165 m!2251825))

(declare-fun m!2251827 () Bool)

(assert (=> d!558050 m!2251827))

(declare-fun m!2251829 () Bool)

(assert (=> d!558050 m!2251829))

(declare-fun m!2251831 () Bool)

(assert (=> d!558050 m!2251831))

(assert (=> b!1822621 d!558050))

(declare-fun d!558052 () Bool)

(declare-fun list!8127 (Conc!6639) List!20071)

(assert (=> d!558052 (= (list!8125 (charsOf!2250 token!556)) (list!8127 (c!297330 (charsOf!2250 token!556))))))

(declare-fun bs!407445 () Bool)

(assert (= bs!407445 d!558052))

(declare-fun m!2251833 () Bool)

(assert (=> bs!407445 m!2251833))

(assert (=> b!1822621 d!558052))

(declare-fun d!558054 () Bool)

(declare-fun lt!708450 () BalanceConc!13222)

(assert (=> d!558054 (= (list!8125 lt!708450) (originalCharacters!4415 token!556))))

(assert (=> d!558054 (= lt!708450 (dynLambda!9939 (toChars!5001 (transformation!3607 (rule!5743 token!556))) (value!112466 token!556)))))

(assert (=> d!558054 (= (charsOf!2250 token!556) lt!708450)))

(declare-fun b_lambda!60183 () Bool)

(assert (=> (not b_lambda!60183) (not d!558054)))

(assert (=> d!558054 t!170002))

(declare-fun b_and!141455 () Bool)

(assert (= b_and!141445 (and (=> t!170002 result!133800) b_and!141455)))

(assert (=> d!558054 t!170004))

(declare-fun b_and!141457 () Bool)

(assert (= b_and!141447 (and (=> t!170004 result!133806) b_and!141457)))

(assert (=> d!558054 t!170006))

(declare-fun b_and!141459 () Bool)

(assert (= b_and!141449 (and (=> t!170006 result!133808) b_and!141459)))

(declare-fun m!2251835 () Bool)

(assert (=> d!558054 m!2251835))

(assert (=> d!558054 m!2251731))

(assert (=> b!1822621 d!558054))

(declare-fun b!1823186 () Bool)

(declare-fun e!1165284 () Bool)

(declare-fun call!114371 () Bool)

(assert (=> b!1823186 (= e!1165284 call!114371)))

(declare-fun b!1823187 () Bool)

(declare-fun res!820003 () Bool)

(declare-fun e!1165281 () Bool)

(assert (=> b!1823187 (=> res!820003 e!1165281)))

(assert (=> b!1823187 (= res!820003 (not ((_ is Concat!8633) (regex!3607 rule!559))))))

(declare-fun e!1165279 () Bool)

(assert (=> b!1823187 (= e!1165279 e!1165281)))

(declare-fun b!1823188 () Bool)

(declare-fun e!1165282 () Bool)

(declare-fun e!1165285 () Bool)

(assert (=> b!1823188 (= e!1165282 e!1165285)))

(declare-fun res!820002 () Bool)

(assert (=> b!1823188 (= res!820002 (not (nullable!1527 (reg!5264 (regex!3607 rule!559)))))))

(assert (=> b!1823188 (=> (not res!820002) (not e!1165285))))

(declare-fun bm!114365 () Bool)

(declare-fun call!114370 () Bool)

(declare-fun c!297444 () Bool)

(assert (=> bm!114365 (= call!114370 (validRegex!2005 (ite c!297444 (regOne!10383 (regex!3607 rule!559)) (regOne!10382 (regex!3607 rule!559)))))))

(declare-fun b!1823189 () Bool)

(declare-fun e!1165283 () Bool)

(assert (=> b!1823189 (= e!1165283 call!114371)))

(declare-fun b!1823190 () Bool)

(declare-fun call!114372 () Bool)

(assert (=> b!1823190 (= e!1165285 call!114372)))

(declare-fun b!1823191 () Bool)

(declare-fun e!1165280 () Bool)

(assert (=> b!1823191 (= e!1165280 e!1165282)))

(declare-fun c!297443 () Bool)

(assert (=> b!1823191 (= c!297443 ((_ is Star!4935) (regex!3607 rule!559)))))

(declare-fun d!558056 () Bool)

(declare-fun res!820006 () Bool)

(assert (=> d!558056 (=> res!820006 e!1165280)))

(assert (=> d!558056 (= res!820006 ((_ is ElementMatch!4935) (regex!3607 rule!559)))))

(assert (=> d!558056 (= (validRegex!2005 (regex!3607 rule!559)) e!1165280)))

(declare-fun b!1823192 () Bool)

(assert (=> b!1823192 (= e!1165281 e!1165284)))

(declare-fun res!820004 () Bool)

(assert (=> b!1823192 (=> (not res!820004) (not e!1165284))))

(assert (=> b!1823192 (= res!820004 call!114370)))

(declare-fun bm!114366 () Bool)

(assert (=> bm!114366 (= call!114371 call!114372)))

(declare-fun b!1823193 () Bool)

(declare-fun res!820005 () Bool)

(assert (=> b!1823193 (=> (not res!820005) (not e!1165283))))

(assert (=> b!1823193 (= res!820005 call!114370)))

(assert (=> b!1823193 (= e!1165279 e!1165283)))

(declare-fun b!1823194 () Bool)

(assert (=> b!1823194 (= e!1165282 e!1165279)))

(assert (=> b!1823194 (= c!297444 ((_ is Union!4935) (regex!3607 rule!559)))))

(declare-fun bm!114367 () Bool)

(assert (=> bm!114367 (= call!114372 (validRegex!2005 (ite c!297443 (reg!5264 (regex!3607 rule!559)) (ite c!297444 (regTwo!10383 (regex!3607 rule!559)) (regTwo!10382 (regex!3607 rule!559))))))))

(assert (= (and d!558056 (not res!820006)) b!1823191))

(assert (= (and b!1823191 c!297443) b!1823188))

(assert (= (and b!1823191 (not c!297443)) b!1823194))

(assert (= (and b!1823188 res!820002) b!1823190))

(assert (= (and b!1823194 c!297444) b!1823193))

(assert (= (and b!1823194 (not c!297444)) b!1823187))

(assert (= (and b!1823193 res!820005) b!1823189))

(assert (= (and b!1823187 (not res!820003)) b!1823192))

(assert (= (and b!1823192 res!820004) b!1823186))

(assert (= (or b!1823189 b!1823186) bm!114366))

(assert (= (or b!1823193 b!1823192) bm!114365))

(assert (= (or b!1823190 bm!114366) bm!114367))

(declare-fun m!2251837 () Bool)

(assert (=> b!1823188 m!2251837))

(declare-fun m!2251839 () Bool)

(assert (=> bm!114365 m!2251839))

(declare-fun m!2251841 () Bool)

(assert (=> bm!114367 m!2251841))

(assert (=> b!1822632 d!558056))

(declare-fun b!1823195 () Bool)

(declare-fun res!820012 () Bool)

(declare-fun e!1165292 () Bool)

(assert (=> b!1823195 (=> (not res!820012) (not e!1165292))))

(assert (=> b!1823195 (= res!820012 (isEmpty!12631 (tail!2709 lt!708247)))))

(declare-fun b!1823196 () Bool)

(declare-fun e!1165291 () Bool)

(declare-fun e!1165288 () Bool)

(assert (=> b!1823196 (= e!1165291 e!1165288)))

(declare-fun res!820011 () Bool)

(assert (=> b!1823196 (=> res!820011 e!1165288)))

(declare-fun call!114373 () Bool)

(assert (=> b!1823196 (= res!820011 call!114373)))

(declare-fun b!1823197 () Bool)

(declare-fun e!1165289 () Bool)

(assert (=> b!1823197 (= e!1165289 (matchR!2400 (derivativeStep!1292 lt!708245 (head!4250 lt!708247)) (tail!2709 lt!708247)))))

(declare-fun b!1823198 () Bool)

(assert (=> b!1823198 (= e!1165289 (nullable!1527 lt!708245))))

(declare-fun b!1823199 () Bool)

(declare-fun e!1165287 () Bool)

(declare-fun lt!708451 () Bool)

(assert (=> b!1823199 (= e!1165287 (= lt!708451 call!114373))))

(declare-fun b!1823201 () Bool)

(declare-fun e!1165286 () Bool)

(assert (=> b!1823201 (= e!1165286 e!1165291)))

(declare-fun res!820010 () Bool)

(assert (=> b!1823201 (=> (not res!820010) (not e!1165291))))

(assert (=> b!1823201 (= res!820010 (not lt!708451))))

(declare-fun bm!114368 () Bool)

(assert (=> bm!114368 (= call!114373 (isEmpty!12631 lt!708247))))

(declare-fun b!1823202 () Bool)

(declare-fun res!820007 () Bool)

(assert (=> b!1823202 (=> (not res!820007) (not e!1165292))))

(assert (=> b!1823202 (= res!820007 (not call!114373))))

(declare-fun b!1823203 () Bool)

(declare-fun res!820014 () Bool)

(assert (=> b!1823203 (=> res!820014 e!1165286)))

(assert (=> b!1823203 (= res!820014 e!1165292)))

(declare-fun res!820013 () Bool)

(assert (=> b!1823203 (=> (not res!820013) (not e!1165292))))

(assert (=> b!1823203 (= res!820013 lt!708451)))

(declare-fun b!1823204 () Bool)

(declare-fun res!820008 () Bool)

(assert (=> b!1823204 (=> res!820008 e!1165288)))

(assert (=> b!1823204 (= res!820008 (not (isEmpty!12631 (tail!2709 lt!708247))))))

(declare-fun b!1823205 () Bool)

(assert (=> b!1823205 (= e!1165288 (not (= (head!4250 lt!708247) (c!297331 lt!708245))))))

(declare-fun b!1823206 () Bool)

(declare-fun e!1165290 () Bool)

(assert (=> b!1823206 (= e!1165290 (not lt!708451))))

(declare-fun d!558058 () Bool)

(assert (=> d!558058 e!1165287))

(declare-fun c!297446 () Bool)

(assert (=> d!558058 (= c!297446 ((_ is EmptyExpr!4935) lt!708245))))

(assert (=> d!558058 (= lt!708451 e!1165289)))

(declare-fun c!297447 () Bool)

(assert (=> d!558058 (= c!297447 (isEmpty!12631 lt!708247))))

(assert (=> d!558058 (validRegex!2005 lt!708245)))

(assert (=> d!558058 (= (matchR!2400 lt!708245 lt!708247) lt!708451)))

(declare-fun b!1823200 () Bool)

(assert (=> b!1823200 (= e!1165287 e!1165290)))

(declare-fun c!297445 () Bool)

(assert (=> b!1823200 (= c!297445 ((_ is EmptyLang!4935) lt!708245))))

(declare-fun b!1823207 () Bool)

(declare-fun res!820009 () Bool)

(assert (=> b!1823207 (=> res!820009 e!1165286)))

(assert (=> b!1823207 (= res!820009 (not ((_ is ElementMatch!4935) lt!708245)))))

(assert (=> b!1823207 (= e!1165290 e!1165286)))

(declare-fun b!1823208 () Bool)

(assert (=> b!1823208 (= e!1165292 (= (head!4250 lt!708247) (c!297331 lt!708245)))))

(assert (= (and d!558058 c!297447) b!1823198))

(assert (= (and d!558058 (not c!297447)) b!1823197))

(assert (= (and d!558058 c!297446) b!1823199))

(assert (= (and d!558058 (not c!297446)) b!1823200))

(assert (= (and b!1823200 c!297445) b!1823206))

(assert (= (and b!1823200 (not c!297445)) b!1823207))

(assert (= (and b!1823207 (not res!820009)) b!1823203))

(assert (= (and b!1823203 res!820013) b!1823202))

(assert (= (and b!1823202 res!820007) b!1823195))

(assert (= (and b!1823195 res!820012) b!1823208))

(assert (= (and b!1823203 (not res!820014)) b!1823201))

(assert (= (and b!1823201 res!820010) b!1823196))

(assert (= (and b!1823196 (not res!820011)) b!1823204))

(assert (= (and b!1823204 (not res!820008)) b!1823205))

(assert (= (or b!1823199 b!1823196 b!1823202) bm!114368))

(assert (=> b!1823208 m!2251769))

(assert (=> b!1823204 m!2251771))

(assert (=> b!1823204 m!2251771))

(assert (=> b!1823204 m!2251773))

(assert (=> d!558058 m!2251775))

(assert (=> d!558058 m!2251335))

(assert (=> b!1823195 m!2251771))

(assert (=> b!1823195 m!2251771))

(assert (=> b!1823195 m!2251773))

(assert (=> bm!114368 m!2251775))

(assert (=> b!1823205 m!2251769))

(declare-fun m!2251843 () Bool)

(assert (=> b!1823198 m!2251843))

(assert (=> b!1823197 m!2251769))

(assert (=> b!1823197 m!2251769))

(declare-fun m!2251845 () Bool)

(assert (=> b!1823197 m!2251845))

(assert (=> b!1823197 m!2251771))

(assert (=> b!1823197 m!2251845))

(assert (=> b!1823197 m!2251771))

(declare-fun m!2251847 () Bool)

(assert (=> b!1823197 m!2251847))

(assert (=> b!1822632 d!558058))

(assert (=> b!1822632 d!558046))

(declare-fun bs!407446 () Bool)

(declare-fun d!558060 () Bool)

(assert (= bs!407446 (and d!558060 b!1822632)))

(declare-fun lambda!71515 () Int)

(assert (=> bs!407446 (not (= lambda!71515 lambda!71468))))

(declare-fun bs!407447 () Bool)

(assert (= bs!407447 (and d!558060 d!557950)))

(assert (=> bs!407447 (= lambda!71515 lambda!71474)))

(declare-fun bs!407448 () Bool)

(assert (= bs!407448 (and d!558060 d!557958)))

(assert (=> bs!407448 (= lambda!71515 lambda!71489)))

(declare-fun bs!407449 () Bool)

(assert (= bs!407449 (and d!558060 d!558046)))

(assert (=> bs!407449 (not (= lambda!71515 lambda!71510))))

(declare-fun lambda!71516 () Int)

(assert (=> bs!407446 (= lambda!71516 lambda!71468)))

(assert (=> bs!407449 (not (= lambda!71516 lambda!71510))))

(assert (=> bs!407447 (not (= lambda!71516 lambda!71474))))

(assert (=> bs!407448 (not (= lambda!71516 lambda!71489))))

(declare-fun bs!407450 () Bool)

(assert (= bs!407450 d!558060))

(assert (=> bs!407450 (not (= lambda!71516 lambda!71515))))

(assert (=> d!558060 true))

(assert (=> d!558060 (= (matchR!2400 lt!708245 lt!708247) (exists!637 lt!708250 lambda!71516))))

(declare-fun lt!708454 () Unit!34671)

(declare-fun choose!11491 (Regex!4935 List!20073 List!20071) Unit!34671)

(assert (=> d!558060 (= lt!708454 (choose!11491 lt!708245 lt!708250 lt!708247))))

(assert (=> d!558060 (forall!4313 lt!708250 lambda!71515)))

(assert (=> d!558060 (= (matchRGenUnionSpec!222 lt!708245 lt!708250 lt!708247) lt!708454)))

(assert (=> bs!407450 m!2251285))

(declare-fun m!2251849 () Bool)

(assert (=> bs!407450 m!2251849))

(declare-fun m!2251851 () Bool)

(assert (=> bs!407450 m!2251851))

(declare-fun m!2251853 () Bool)

(assert (=> bs!407450 m!2251853))

(assert (=> b!1822632 d!558060))

(declare-fun b!1823211 () Bool)

(declare-fun e!1165300 () Bool)

(declare-fun call!114375 () Bool)

(assert (=> b!1823211 (= e!1165300 call!114375)))

(declare-fun b!1823212 () Bool)

(declare-fun res!820018 () Bool)

(declare-fun e!1165297 () Bool)

(assert (=> b!1823212 (=> res!820018 e!1165297)))

(assert (=> b!1823212 (= res!820018 (not ((_ is Concat!8633) lt!708245)))))

(declare-fun e!1165295 () Bool)

(assert (=> b!1823212 (= e!1165295 e!1165297)))

(declare-fun b!1823213 () Bool)

(declare-fun e!1165298 () Bool)

(declare-fun e!1165301 () Bool)

(assert (=> b!1823213 (= e!1165298 e!1165301)))

(declare-fun res!820017 () Bool)

(assert (=> b!1823213 (= res!820017 (not (nullable!1527 (reg!5264 lt!708245))))))

(assert (=> b!1823213 (=> (not res!820017) (not e!1165301))))

(declare-fun bm!114369 () Bool)

(declare-fun call!114374 () Bool)

(declare-fun c!297449 () Bool)

(assert (=> bm!114369 (= call!114374 (validRegex!2005 (ite c!297449 (regOne!10383 lt!708245) (regOne!10382 lt!708245))))))

(declare-fun b!1823214 () Bool)

(declare-fun e!1165299 () Bool)

(assert (=> b!1823214 (= e!1165299 call!114375)))

(declare-fun b!1823215 () Bool)

(declare-fun call!114376 () Bool)

(assert (=> b!1823215 (= e!1165301 call!114376)))

(declare-fun b!1823216 () Bool)

(declare-fun e!1165296 () Bool)

(assert (=> b!1823216 (= e!1165296 e!1165298)))

(declare-fun c!297448 () Bool)

(assert (=> b!1823216 (= c!297448 ((_ is Star!4935) lt!708245))))

(declare-fun d!558062 () Bool)

(declare-fun res!820021 () Bool)

(assert (=> d!558062 (=> res!820021 e!1165296)))

(assert (=> d!558062 (= res!820021 ((_ is ElementMatch!4935) lt!708245))))

(assert (=> d!558062 (= (validRegex!2005 lt!708245) e!1165296)))

(declare-fun b!1823217 () Bool)

(assert (=> b!1823217 (= e!1165297 e!1165300)))

(declare-fun res!820019 () Bool)

(assert (=> b!1823217 (=> (not res!820019) (not e!1165300))))

(assert (=> b!1823217 (= res!820019 call!114374)))

(declare-fun bm!114370 () Bool)

(assert (=> bm!114370 (= call!114375 call!114376)))

(declare-fun b!1823218 () Bool)

(declare-fun res!820020 () Bool)

(assert (=> b!1823218 (=> (not res!820020) (not e!1165299))))

(assert (=> b!1823218 (= res!820020 call!114374)))

(assert (=> b!1823218 (= e!1165295 e!1165299)))

(declare-fun b!1823219 () Bool)

(assert (=> b!1823219 (= e!1165298 e!1165295)))

(assert (=> b!1823219 (= c!297449 ((_ is Union!4935) lt!708245))))

(declare-fun bm!114371 () Bool)

(assert (=> bm!114371 (= call!114376 (validRegex!2005 (ite c!297448 (reg!5264 lt!708245) (ite c!297449 (regTwo!10383 lt!708245) (regTwo!10382 lt!708245)))))))

(assert (= (and d!558062 (not res!820021)) b!1823216))

(assert (= (and b!1823216 c!297448) b!1823213))

(assert (= (and b!1823216 (not c!297448)) b!1823219))

(assert (= (and b!1823213 res!820017) b!1823215))

(assert (= (and b!1823219 c!297449) b!1823218))

(assert (= (and b!1823219 (not c!297449)) b!1823212))

(assert (= (and b!1823218 res!820020) b!1823214))

(assert (= (and b!1823212 (not res!820018)) b!1823217))

(assert (= (and b!1823217 res!820019) b!1823211))

(assert (= (or b!1823214 b!1823211) bm!114370))

(assert (= (or b!1823218 b!1823217) bm!114369))

(assert (= (or b!1823215 bm!114370) bm!114371))

(declare-fun m!2251855 () Bool)

(assert (=> b!1823213 m!2251855))

(declare-fun m!2251857 () Bool)

(assert (=> bm!114369 m!2251857))

(declare-fun m!2251859 () Bool)

(assert (=> bm!114371 m!2251859))

(assert (=> b!1822633 d!558062))

(declare-fun d!558064 () Bool)

(assert (=> d!558064 (= (inv!26029 (tag!4021 (rule!5743 token!556))) (= (mod (str.len (value!112465 (tag!4021 (rule!5743 token!556)))) 2) 0))))

(assert (=> b!1822622 d!558064))

(declare-fun d!558066 () Bool)

(declare-fun res!820022 () Bool)

(declare-fun e!1165302 () Bool)

(assert (=> d!558066 (=> (not res!820022) (not e!1165302))))

(assert (=> d!558066 (= res!820022 (semiInverseModEq!1442 (toChars!5001 (transformation!3607 (rule!5743 token!556))) (toValue!5142 (transformation!3607 (rule!5743 token!556)))))))

(assert (=> d!558066 (= (inv!26032 (transformation!3607 (rule!5743 token!556))) e!1165302)))

(declare-fun b!1823220 () Bool)

(assert (=> b!1823220 (= e!1165302 (equivClasses!1383 (toChars!5001 (transformation!3607 (rule!5743 token!556))) (toValue!5142 (transformation!3607 (rule!5743 token!556)))))))

(assert (= (and d!558066 res!820022) b!1823220))

(declare-fun m!2251861 () Bool)

(assert (=> d!558066 m!2251861))

(declare-fun m!2251863 () Bool)

(assert (=> b!1823220 m!2251863))

(assert (=> b!1822622 d!558066))

(declare-fun b!1823225 () Bool)

(declare-fun e!1165305 () Bool)

(declare-fun tp!515419 () Bool)

(assert (=> b!1823225 (= e!1165305 (and tp_is_empty!8105 tp!515419))))

(assert (=> b!1822623 (= tp!515362 e!1165305)))

(assert (= (and b!1822623 ((_ is Cons!20001) (originalCharacters!4415 token!556))) b!1823225))

(declare-fun b!1823239 () Bool)

(declare-fun e!1165308 () Bool)

(declare-fun tp!515434 () Bool)

(declare-fun tp!515430 () Bool)

(assert (=> b!1823239 (= e!1165308 (and tp!515434 tp!515430))))

(declare-fun b!1823237 () Bool)

(declare-fun tp!515432 () Bool)

(declare-fun tp!515431 () Bool)

(assert (=> b!1823237 (= e!1165308 (and tp!515432 tp!515431))))

(declare-fun b!1823236 () Bool)

(assert (=> b!1823236 (= e!1165308 tp_is_empty!8105)))

(assert (=> b!1822628 (= tp!515361 e!1165308)))

(declare-fun b!1823238 () Bool)

(declare-fun tp!515433 () Bool)

(assert (=> b!1823238 (= e!1165308 tp!515433)))

(assert (= (and b!1822628 ((_ is ElementMatch!4935) (regex!3607 rule!559))) b!1823236))

(assert (= (and b!1822628 ((_ is Concat!8633) (regex!3607 rule!559))) b!1823237))

(assert (= (and b!1822628 ((_ is Star!4935) (regex!3607 rule!559))) b!1823238))

(assert (= (and b!1822628 ((_ is Union!4935) (regex!3607 rule!559))) b!1823239))

(declare-fun b!1823240 () Bool)

(declare-fun e!1165309 () Bool)

(declare-fun tp!515435 () Bool)

(assert (=> b!1823240 (= e!1165309 (and tp_is_empty!8105 tp!515435))))

(assert (=> b!1822624 (= tp!515360 e!1165309)))

(assert (= (and b!1822624 ((_ is Cons!20001) (t!169980 input!3612))) b!1823240))

(declare-fun b!1823241 () Bool)

(declare-fun e!1165310 () Bool)

(declare-fun tp!515436 () Bool)

(assert (=> b!1823241 (= e!1165310 (and tp_is_empty!8105 tp!515436))))

(assert (=> b!1822620 (= tp!515367 e!1165310)))

(assert (= (and b!1822620 ((_ is Cons!20001) (t!169980 suffix!1667))) b!1823241))

(declare-fun b!1823245 () Bool)

(declare-fun e!1165311 () Bool)

(declare-fun tp!515441 () Bool)

(declare-fun tp!515437 () Bool)

(assert (=> b!1823245 (= e!1165311 (and tp!515441 tp!515437))))

(declare-fun b!1823243 () Bool)

(declare-fun tp!515439 () Bool)

(declare-fun tp!515438 () Bool)

(assert (=> b!1823243 (= e!1165311 (and tp!515439 tp!515438))))

(declare-fun b!1823242 () Bool)

(assert (=> b!1823242 (= e!1165311 tp_is_empty!8105)))

(assert (=> b!1822626 (= tp!515366 e!1165311)))

(declare-fun b!1823244 () Bool)

(declare-fun tp!515440 () Bool)

(assert (=> b!1823244 (= e!1165311 tp!515440)))

(assert (= (and b!1822626 ((_ is ElementMatch!4935) (regex!3607 (h!25403 rules!4538)))) b!1823242))

(assert (= (and b!1822626 ((_ is Concat!8633) (regex!3607 (h!25403 rules!4538)))) b!1823243))

(assert (= (and b!1822626 ((_ is Star!4935) (regex!3607 (h!25403 rules!4538)))) b!1823244))

(assert (= (and b!1822626 ((_ is Union!4935) (regex!3607 (h!25403 rules!4538)))) b!1823245))

(declare-fun b!1823256 () Bool)

(declare-fun b_free!50703 () Bool)

(declare-fun b_next!51407 () Bool)

(assert (=> b!1823256 (= b_free!50703 (not b_next!51407))))

(declare-fun t!170013 () Bool)

(declare-fun tb!111329 () Bool)

(assert (=> (and b!1823256 (= (toValue!5142 (transformation!3607 (h!25403 (t!169981 rules!4538)))) (toValue!5142 (transformation!3607 rule!559))) t!170013) tb!111329))

(declare-fun result!133824 () Bool)

(assert (= result!133824 result!133792))

(assert (=> d!558024 t!170013))

(declare-fun b_and!141461 () Bool)

(declare-fun tp!515451 () Bool)

(assert (=> b!1823256 (= tp!515451 (and (=> t!170013 result!133824) b_and!141461))))

(declare-fun b_free!50705 () Bool)

(declare-fun b_next!51409 () Bool)

(assert (=> b!1823256 (= b_free!50705 (not b_next!51409))))

(declare-fun tb!111331 () Bool)

(declare-fun t!170015 () Bool)

(assert (=> (and b!1823256 (= (toChars!5001 (transformation!3607 (h!25403 (t!169981 rules!4538)))) (toChars!5001 (transformation!3607 (rule!5743 token!556)))) t!170015) tb!111331))

(declare-fun result!133826 () Bool)

(assert (= result!133826 result!133800))

(assert (=> b!1823002 t!170015))

(assert (=> d!558054 t!170015))

(declare-fun b_and!141463 () Bool)

(declare-fun tp!515450 () Bool)

(assert (=> b!1823256 (= tp!515450 (and (=> t!170015 result!133826) b_and!141463))))

(declare-fun e!1165320 () Bool)

(assert (=> b!1823256 (= e!1165320 (and tp!515451 tp!515450))))

(declare-fun tp!515452 () Bool)

(declare-fun b!1823255 () Bool)

(declare-fun e!1165323 () Bool)

(assert (=> b!1823255 (= e!1165323 (and tp!515452 (inv!26029 (tag!4021 (h!25403 (t!169981 rules!4538)))) (inv!26032 (transformation!3607 (h!25403 (t!169981 rules!4538)))) e!1165320))))

(declare-fun b!1823254 () Bool)

(declare-fun e!1165321 () Bool)

(declare-fun tp!515453 () Bool)

(assert (=> b!1823254 (= e!1165321 (and e!1165323 tp!515453))))

(assert (=> b!1822616 (= tp!515357 e!1165321)))

(assert (= b!1823255 b!1823256))

(assert (= b!1823254 b!1823255))

(assert (= (and b!1822616 ((_ is Cons!20002) (t!169981 rules!4538))) b!1823254))

(declare-fun m!2251865 () Bool)

(assert (=> b!1823255 m!2251865))

(declare-fun m!2251867 () Bool)

(assert (=> b!1823255 m!2251867))

(declare-fun b!1823260 () Bool)

(declare-fun e!1165324 () Bool)

(declare-fun tp!515458 () Bool)

(declare-fun tp!515454 () Bool)

(assert (=> b!1823260 (= e!1165324 (and tp!515458 tp!515454))))

(declare-fun b!1823258 () Bool)

(declare-fun tp!515456 () Bool)

(declare-fun tp!515455 () Bool)

(assert (=> b!1823258 (= e!1165324 (and tp!515456 tp!515455))))

(declare-fun b!1823257 () Bool)

(assert (=> b!1823257 (= e!1165324 tp_is_empty!8105)))

(assert (=> b!1822622 (= tp!515363 e!1165324)))

(declare-fun b!1823259 () Bool)

(declare-fun tp!515457 () Bool)

(assert (=> b!1823259 (= e!1165324 tp!515457)))

(assert (= (and b!1822622 ((_ is ElementMatch!4935) (regex!3607 (rule!5743 token!556)))) b!1823257))

(assert (= (and b!1822622 ((_ is Concat!8633) (regex!3607 (rule!5743 token!556)))) b!1823258))

(assert (= (and b!1822622 ((_ is Star!4935) (regex!3607 (rule!5743 token!556)))) b!1823259))

(assert (= (and b!1822622 ((_ is Union!4935) (regex!3607 (rule!5743 token!556)))) b!1823260))

(declare-fun b_lambda!60185 () Bool)

(assert (= b_lambda!60163 (or b!1822637 b_lambda!60185)))

(declare-fun bs!407451 () Bool)

(declare-fun d!558068 () Bool)

(assert (= bs!407451 (and d!558068 b!1822637)))

(assert (=> bs!407451 (= (dynLambda!9937 lambda!71467 (h!25403 rules!4538)) (regex!3607 (h!25403 rules!4538)))))

(assert (=> b!1822722 d!558068))

(declare-fun b_lambda!60187 () Bool)

(assert (= b_lambda!60183 (or (and b!1822630 b_free!50689 (= (toChars!5001 (transformation!3607 rule!559)) (toChars!5001 (transformation!3607 (rule!5743 token!556))))) (and b!1822619 b_free!50693) (and b!1822625 b_free!50697 (= (toChars!5001 (transformation!3607 (h!25403 rules!4538))) (toChars!5001 (transformation!3607 (rule!5743 token!556))))) (and b!1823256 b_free!50705 (= (toChars!5001 (transformation!3607 (h!25403 (t!169981 rules!4538)))) (toChars!5001 (transformation!3607 (rule!5743 token!556))))) b_lambda!60187)))

(declare-fun b_lambda!60189 () Bool)

(assert (= b_lambda!60171 (or (and b!1822630 b_free!50687) (and b!1822619 b_free!50691 (= (toValue!5142 (transformation!3607 (rule!5743 token!556))) (toValue!5142 (transformation!3607 rule!559)))) (and b!1822625 b_free!50695 (= (toValue!5142 (transformation!3607 (h!25403 rules!4538))) (toValue!5142 (transformation!3607 rule!559)))) (and b!1823256 b_free!50703 (= (toValue!5142 (transformation!3607 (h!25403 (t!169981 rules!4538)))) (toValue!5142 (transformation!3607 rule!559)))) b_lambda!60189)))

(declare-fun b_lambda!60191 () Bool)

(assert (= b_lambda!60173 (or (and b!1822630 b_free!50689 (= (toChars!5001 (transformation!3607 rule!559)) (toChars!5001 (transformation!3607 (rule!5743 token!556))))) (and b!1822619 b_free!50693) (and b!1822625 b_free!50697 (= (toChars!5001 (transformation!3607 (h!25403 rules!4538))) (toChars!5001 (transformation!3607 (rule!5743 token!556))))) (and b!1823256 b_free!50705 (= (toChars!5001 (transformation!3607 (h!25403 (t!169981 rules!4538)))) (toChars!5001 (transformation!3607 (rule!5743 token!556))))) b_lambda!60191)))

(check-sat (not b!1823240) (not d!557946) (not b_lambda!60185) (not b!1823116) (not b_next!51407) (not d!558054) (not b!1823197) (not d!558050) (not d!558046) (not b_next!51397) (not b!1823198) (not d!558030) (not b!1823204) (not b!1822653) (not b!1822860) (not bm!114355) (not b!1823148) (not b!1823241) (not bm!114365) (not b!1823258) (not d!558040) (not b!1822683) (not b!1823147) (not b_next!51409) (not b!1822722) (not b!1823259) (not d!557936) b_and!141457 (not b!1823244) (not b!1823225) (not b!1822684) (not d!558028) (not b!1822974) (not b!1823238) b_and!141463 (not b!1823243) (not b!1823075) (not b!1822689) b_and!141461 (not d!557950) (not b_next!51401) (not d!558042) (not b!1823152) (not d!558022) (not b!1822970) (not b!1823166) (not bm!114368) (not b!1823002) (not b!1822659) (not bm!114369) (not b!1823237) (not b!1822971) (not b!1823255) (not b!1822973) (not d!557988) (not b!1823239) (not d!557954) (not b!1822680) (not b!1823003) (not b!1822969) (not b_lambda!60191) (not b!1823107) (not b!1823254) (not d!558026) (not d!558034) (not b!1823039) (not b!1822873) (not b!1823208) (not b_lambda!60187) (not tb!111319) (not b_next!51395) tp_is_empty!8105 (not b_lambda!60189) (not d!558048) (not b!1822685) b_and!141443 (not b!1823057) (not b!1823153) (not bm!114358) (not b!1823165) (not d!558038) (not b!1822688) (not b!1823150) (not b!1823146) (not b!1823062) b_and!141439 (not d!558058) (not b!1823074) (not b_next!51399) (not bm!114367) (not b!1823149) (not b_next!51391) (not b!1822687) (not b!1823117) (not d!558066) (not b!1823145) (not b!1823205) (not d!558044) (not b_next!51393) (not d!557952) b_and!141459 (not tb!111313) (not b!1823016) (not b!1823078) (not b!1823220) (not b!1823245) (not d!557958) b_and!141441 (not b!1823188) (not bm!114371) (not b!1823109) (not b!1823110) (not d!558060) (not b!1822976) b_and!141455 (not b!1823125) (not b!1822972) (not b!1822989) (not b!1823260) (not d!558016) (not b!1823120) (not d!558052) (not b!1823213) (not b!1822975) (not b!1823195) (not d!557990))
(check-sat (not b_next!51407) (not b_next!51397) b_and!141463 (not b_next!51395) b_and!141443 (not b_next!51391) b_and!141441 b_and!141455 (not b_next!51409) b_and!141457 b_and!141461 (not b_next!51401) b_and!141439 (not b_next!51399) (not b_next!51393) b_and!141459)
