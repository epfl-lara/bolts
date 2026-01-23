; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401486 () Bool)

(assert start!401486)

(declare-fun b!4202564 () Bool)

(declare-fun b_free!122707 () Bool)

(declare-fun b_next!123411 () Bool)

(assert (=> b!4202564 (= b_free!122707 (not b_next!123411))))

(declare-fun tp!1284272 () Bool)

(declare-fun b_and!329949 () Bool)

(assert (=> b!4202564 (= tp!1284272 b_and!329949)))

(declare-fun b_free!122709 () Bool)

(declare-fun b_next!123413 () Bool)

(assert (=> b!4202564 (= b_free!122709 (not b_next!123413))))

(declare-fun tp!1284267 () Bool)

(declare-fun b_and!329951 () Bool)

(assert (=> b!4202564 (= tp!1284267 b_and!329951)))

(declare-fun b!4202575 () Bool)

(declare-fun b_free!122711 () Bool)

(declare-fun b_next!123415 () Bool)

(assert (=> b!4202575 (= b_free!122711 (not b_next!123415))))

(declare-fun tp!1284268 () Bool)

(declare-fun b_and!329953 () Bool)

(assert (=> b!4202575 (= tp!1284268 b_and!329953)))

(declare-fun b_free!122713 () Bool)

(declare-fun b_next!123417 () Bool)

(assert (=> b!4202575 (= b_free!122713 (not b_next!123417))))

(declare-fun tp!1284282 () Bool)

(declare-fun b_and!329955 () Bool)

(assert (=> b!4202575 (= tp!1284282 b_and!329955)))

(declare-fun b!4202573 () Bool)

(declare-fun b_free!122715 () Bool)

(declare-fun b_next!123419 () Bool)

(assert (=> b!4202573 (= b_free!122715 (not b_next!123419))))

(declare-fun tp!1284281 () Bool)

(declare-fun b_and!329957 () Bool)

(assert (=> b!4202573 (= tp!1284281 b_and!329957)))

(declare-fun b_free!122717 () Bool)

(declare-fun b_next!123421 () Bool)

(assert (=> b!4202573 (= b_free!122717 (not b_next!123421))))

(declare-fun tp!1284269 () Bool)

(declare-fun b_and!329959 () Bool)

(assert (=> b!4202573 (= tp!1284269 b_and!329959)))

(declare-fun b!4202568 () Bool)

(declare-fun b_free!122719 () Bool)

(declare-fun b_next!123423 () Bool)

(assert (=> b!4202568 (= b_free!122719 (not b_next!123423))))

(declare-fun tp!1284284 () Bool)

(declare-fun b_and!329961 () Bool)

(assert (=> b!4202568 (= tp!1284284 b_and!329961)))

(declare-fun b_free!122721 () Bool)

(declare-fun b_next!123425 () Bool)

(assert (=> b!4202568 (= b_free!122721 (not b_next!123425))))

(declare-fun tp!1284276 () Bool)

(declare-fun b_and!329963 () Bool)

(assert (=> b!4202568 (= tp!1284276 b_and!329963)))

(declare-fun b!4202548 () Bool)

(declare-fun res!1725894 () Bool)

(declare-fun e!2608801 () Bool)

(assert (=> b!4202548 (=> (not res!1725894) (not e!2608801))))

(declare-datatypes ((C!25444 0))(
  ( (C!25445 (val!14884 Int)) )
))
(declare-datatypes ((List!46319 0))(
  ( (Nil!46195) (Cons!46195 (h!51615 C!25444) (t!347018 List!46319)) )
))
(declare-fun pBis!121 () List!46319)

(declare-fun input!3517 () List!46319)

(declare-fun isPrefix!4579 (List!46319 List!46319) Bool)

(assert (=> b!4202548 (= res!1725894 (isPrefix!4579 pBis!121 input!3517))))

(declare-fun b!4202549 () Bool)

(declare-fun res!1725896 () Bool)

(assert (=> b!4202549 (=> (not res!1725896) (not e!2608801))))

(declare-fun p!3001 () List!46319)

(declare-fun suffix!1557 () List!46319)

(declare-fun ++!11794 (List!46319 List!46319) List!46319)

(assert (=> b!4202549 (= res!1725896 (= (++!11794 p!3001 suffix!1557) input!3517))))

(declare-fun b!4202550 () Bool)

(declare-fun res!1725888 () Bool)

(declare-fun e!2608819 () Bool)

(assert (=> b!4202550 (=> res!1725888 e!2608819)))

(declare-datatypes ((List!46320 0))(
  ( (Nil!46196) (Cons!46196 (h!51616 (_ BitVec 16)) (t!347019 List!46320)) )
))
(declare-datatypes ((TokenValue!7950 0))(
  ( (FloatLiteralValue!15900 (text!56095 List!46320)) (TokenValueExt!7949 (__x!28123 Int)) (Broken!39750 (value!240523 List!46320)) (Object!8073) (End!7950) (Def!7950) (Underscore!7950) (Match!7950) (Else!7950) (Error!7950) (Case!7950) (If!7950) (Extends!7950) (Abstract!7950) (Class!7950) (Val!7950) (DelimiterValue!15900 (del!8010 List!46320)) (KeywordValue!7956 (value!240524 List!46320)) (CommentValue!15900 (value!240525 List!46320)) (WhitespaceValue!15900 (value!240526 List!46320)) (IndentationValue!7950 (value!240527 List!46320)) (String!53619) (Int32!7950) (Broken!39751 (value!240528 List!46320)) (Boolean!7951) (Unit!65288) (OperatorValue!7953 (op!8010 List!46320)) (IdentifierValue!15900 (value!240529 List!46320)) (IdentifierValue!15901 (value!240530 List!46320)) (WhitespaceValue!15901 (value!240531 List!46320)) (True!15900) (False!15900) (Broken!39752 (value!240532 List!46320)) (Broken!39753 (value!240533 List!46320)) (True!15901) (RightBrace!7950) (RightBracket!7950) (Colon!7950) (Null!7950) (Comma!7950) (LeftBracket!7950) (False!15901) (LeftBrace!7950) (ImaginaryLiteralValue!7950 (text!56096 List!46320)) (StringLiteralValue!23850 (value!240534 List!46320)) (EOFValue!7950 (value!240535 List!46320)) (IdentValue!7950 (value!240536 List!46320)) (DelimiterValue!15901 (value!240537 List!46320)) (DedentValue!7950 (value!240538 List!46320)) (NewLineValue!7950 (value!240539 List!46320)) (IntegerValue!23850 (value!240540 (_ BitVec 32)) (text!56097 List!46320)) (IntegerValue!23851 (value!240541 Int) (text!56098 List!46320)) (Times!7950) (Or!7950) (Equal!7950) (Minus!7950) (Broken!39754 (value!240542 List!46320)) (And!7950) (Div!7950) (LessEqual!7950) (Mod!7950) (Concat!20575) (Not!7950) (Plus!7950) (SpaceValue!7950 (value!240543 List!46320)) (IntegerValue!23852 (value!240544 Int) (text!56099 List!46320)) (StringLiteralValue!23851 (text!56100 List!46320)) (FloatLiteralValue!15901 (text!56101 List!46320)) (BytesLiteralValue!7950 (value!240545 List!46320)) (CommentValue!15901 (value!240546 List!46320)) (StringLiteralValue!23852 (value!240547 List!46320)) (ErrorTokenValue!7950 (msg!8011 List!46320)) )
))
(declare-datatypes ((IArray!27867 0))(
  ( (IArray!27868 (innerList!13991 List!46319)) )
))
(declare-datatypes ((Conc!13931 0))(
  ( (Node!13931 (left!34406 Conc!13931) (right!34736 Conc!13931) (csize!28092 Int) (cheight!14142 Int)) (Leaf!21535 (xs!17237 IArray!27867) (csize!28093 Int)) (Empty!13931) )
))
(declare-datatypes ((BalanceConc!27456 0))(
  ( (BalanceConc!27457 (c!716444 Conc!13931)) )
))
(declare-datatypes ((Regex!12625 0))(
  ( (ElementMatch!12625 (c!716445 C!25444)) (Concat!20576 (regOne!25762 Regex!12625) (regTwo!25762 Regex!12625)) (EmptyExpr!12625) (Star!12625 (reg!12954 Regex!12625)) (EmptyLang!12625) (Union!12625 (regOne!25763 Regex!12625) (regTwo!25763 Regex!12625)) )
))
(declare-datatypes ((String!53620 0))(
  ( (String!53621 (value!240548 String)) )
))
(declare-datatypes ((TokenValueInjection!15328 0))(
  ( (TokenValueInjection!15329 (toValue!10428 Int) (toChars!10287 Int)) )
))
(declare-datatypes ((Rule!15240 0))(
  ( (Rule!15241 (regex!7720 Regex!12625) (tag!8584 String!53620) (isSeparator!7720 Bool) (transformation!7720 TokenValueInjection!15328)) )
))
(declare-datatypes ((Token!14142 0))(
  ( (Token!14143 (value!240549 TokenValue!7950) (rule!10818 Rule!15240) (size!33941 Int) (originalCharacters!8102 List!46319)) )
))
(declare-fun tBis!41 () Token!14142)

(declare-fun rBis!178 () Rule!15240)

(assert (=> b!4202550 (= res!1725888 (not (= (rule!10818 tBis!41) rBis!178)))))

(declare-fun tp!1284279 () Bool)

(declare-fun e!2608816 () Bool)

(declare-fun b!4202551 () Bool)

(declare-fun e!2608820 () Bool)

(declare-fun inv!21 (TokenValue!7950) Bool)

(assert (=> b!4202551 (= e!2608816 (and (inv!21 (value!240549 tBis!41)) e!2608820 tp!1284279))))

(declare-fun b!4202552 () Bool)

(declare-fun res!1725895 () Bool)

(assert (=> b!4202552 (=> res!1725895 e!2608819)))

(declare-fun suffixBis!41 () List!46319)

(assert (=> b!4202552 (= res!1725895 (not (= (++!11794 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4202553 () Bool)

(declare-fun res!1725890 () Bool)

(assert (=> b!4202553 (=> (not res!1725890) (not e!2608801))))

(assert (=> b!4202553 (= res!1725890 (isPrefix!4579 p!3001 input!3517))))

(declare-fun b!4202554 () Bool)

(declare-fun res!1725891 () Bool)

(assert (=> b!4202554 (=> (not res!1725891) (not e!2608801))))

(declare-datatypes ((List!46321 0))(
  ( (Nil!46197) (Cons!46197 (h!51617 Rule!15240) (t!347020 List!46321)) )
))
(declare-fun rules!3967 () List!46321)

(declare-fun isEmpty!27349 (List!46321) Bool)

(assert (=> b!4202554 (= res!1725891 (not (isEmpty!27349 rules!3967)))))

(declare-fun e!2608809 () Bool)

(declare-fun tp!1284275 () Bool)

(declare-fun t!8364 () Token!14142)

(declare-fun e!2608818 () Bool)

(declare-fun b!4202556 () Bool)

(declare-fun inv!60761 (String!53620) Bool)

(declare-fun inv!60764 (TokenValueInjection!15328) Bool)

(assert (=> b!4202556 (= e!2608809 (and tp!1284275 (inv!60761 (tag!8584 (rule!10818 t!8364))) (inv!60764 (transformation!7720 (rule!10818 t!8364))) e!2608818))))

(declare-fun e!2608814 () Bool)

(declare-fun tp!1284285 () Bool)

(declare-fun b!4202557 () Bool)

(assert (=> b!4202557 (= e!2608814 (and (inv!21 (value!240549 t!8364)) e!2608809 tp!1284285))))

(declare-fun b!4202558 () Bool)

(declare-fun e!2608810 () Bool)

(declare-fun tp_is_empty!22217 () Bool)

(declare-fun tp!1284277 () Bool)

(assert (=> b!4202558 (= e!2608810 (and tp_is_empty!22217 tp!1284277))))

(declare-fun b!4202559 () Bool)

(declare-fun res!1725892 () Bool)

(declare-fun e!2608799 () Bool)

(assert (=> b!4202559 (=> (not res!1725892) (not e!2608799))))

(declare-datatypes ((LexerInterface!7315 0))(
  ( (LexerInterfaceExt!7312 (__x!28124 Int)) (Lexer!7313) )
))
(declare-fun thiss!26544 () LexerInterface!7315)

(declare-fun ruleValid!3432 (LexerInterface!7315 Rule!15240) Bool)

(assert (=> b!4202559 (= res!1725892 (ruleValid!3432 thiss!26544 rBis!178))))

(declare-fun b!4202560 () Bool)

(declare-fun res!1725886 () Bool)

(assert (=> b!4202560 (=> res!1725886 e!2608819)))

(declare-datatypes ((tuple2!43950 0))(
  ( (tuple2!43951 (_1!25109 Token!14142) (_2!25109 List!46319)) )
))
(declare-datatypes ((Option!9908 0))(
  ( (None!9907) (Some!9907 (v!40761 tuple2!43950)) )
))
(declare-fun lt!1496777 () Option!9908)

(declare-fun maxPrefixOneRule!3310 (LexerInterface!7315 Rule!15240 List!46319) Option!9908)

(assert (=> b!4202560 (= res!1725886 (not (= (maxPrefixOneRule!3310 thiss!26544 (h!51617 rules!3967) input!3517) lt!1496777)))))

(declare-fun b!4202561 () Bool)

(declare-fun res!1725893 () Bool)

(assert (=> b!4202561 (=> res!1725893 e!2608819)))

(get-info :version)

(assert (=> b!4202561 (= res!1725893 (or (and ((_ is Cons!46197) rules!3967) ((_ is Nil!46197) (t!347020 rules!3967))) (not ((_ is Cons!46197) rules!3967)) (= (h!51617 rules!3967) rBis!178)))))

(declare-fun b!4202562 () Bool)

(declare-fun res!1725899 () Bool)

(assert (=> b!4202562 (=> (not res!1725899) (not e!2608801))))

(declare-fun contains!9535 (List!46321 Rule!15240) Bool)

(assert (=> b!4202562 (= res!1725899 (contains!9535 rules!3967 rBis!178))))

(declare-fun e!2608805 () Bool)

(declare-fun tp!1284278 () Bool)

(declare-fun b!4202563 () Bool)

(declare-fun e!2608806 () Bool)

(assert (=> b!4202563 (= e!2608806 (and tp!1284278 (inv!60761 (tag!8584 (h!51617 rules!3967))) (inv!60764 (transformation!7720 (h!51617 rules!3967))) e!2608805))))

(assert (=> b!4202564 (= e!2608805 (and tp!1284272 tp!1284267))))

(declare-fun b!4202565 () Bool)

(assert (=> b!4202565 (= e!2608799 (not e!2608819))))

(declare-fun res!1725897 () Bool)

(assert (=> b!4202565 (=> res!1725897 e!2608819)))

(assert (=> b!4202565 (= res!1725897 (not (= (maxPrefixOneRule!3310 thiss!26544 rBis!178 input!3517) (Some!9907 (tuple2!43951 tBis!41 suffixBis!41)))))))

(assert (=> b!4202565 (isPrefix!4579 input!3517 input!3517)))

(declare-datatypes ((Unit!65289 0))(
  ( (Unit!65290) )
))
(declare-fun lt!1496778 () Unit!65289)

(declare-fun lemmaIsPrefixRefl!2996 (List!46319 List!46319) Unit!65289)

(assert (=> b!4202565 (= lt!1496778 (lemmaIsPrefixRefl!2996 input!3517 input!3517))))

(declare-fun b!4202566 () Bool)

(declare-fun res!1725898 () Bool)

(assert (=> b!4202566 (=> res!1725898 e!2608819)))

(declare-fun list!16691 (BalanceConc!27456) List!46319)

(declare-fun charsOf!5143 (Token!14142) BalanceConc!27456)

(assert (=> b!4202566 (= res!1725898 (not (= (list!16691 (charsOf!5143 tBis!41)) pBis!121)))))

(declare-fun b!4202567 () Bool)

(assert (=> b!4202567 (= e!2608801 e!2608799)))

(declare-fun res!1725887 () Bool)

(assert (=> b!4202567 (=> (not res!1725887) (not e!2608799))))

(declare-fun maxPrefix!4355 (LexerInterface!7315 List!46321 List!46319) Option!9908)

(assert (=> b!4202567 (= res!1725887 (= (maxPrefix!4355 thiss!26544 rules!3967 input!3517) lt!1496777))))

(assert (=> b!4202567 (= lt!1496777 (Some!9907 (tuple2!43951 t!8364 suffix!1557)))))

(declare-fun e!2608811 () Bool)

(assert (=> b!4202568 (= e!2608811 (and tp!1284284 tp!1284276))))

(declare-fun b!4202569 () Bool)

(declare-fun tp!1284271 () Bool)

(declare-fun e!2608798 () Bool)

(assert (=> b!4202569 (= e!2608820 (and tp!1284271 (inv!60761 (tag!8584 (rule!10818 tBis!41))) (inv!60764 (transformation!7720 (rule!10818 tBis!41))) e!2608798))))

(declare-fun b!4202570 () Bool)

(declare-fun e!2608808 () Bool)

(declare-fun tp!1284280 () Bool)

(assert (=> b!4202570 (= e!2608808 (and tp_is_empty!22217 tp!1284280))))

(declare-fun tp!1284283 () Bool)

(declare-fun b!4202571 () Bool)

(declare-fun e!2608815 () Bool)

(assert (=> b!4202571 (= e!2608815 (and tp!1284283 (inv!60761 (tag!8584 rBis!178)) (inv!60764 (transformation!7720 rBis!178)) e!2608811))))

(declare-fun b!4202572 () Bool)

(declare-fun e!2608803 () Bool)

(declare-fun tp!1284270 () Bool)

(assert (=> b!4202572 (= e!2608803 (and e!2608806 tp!1284270))))

(assert (=> b!4202573 (= e!2608798 (and tp!1284281 tp!1284269))))

(declare-fun b!4202574 () Bool)

(declare-fun e!2608812 () Bool)

(declare-fun tp!1284274 () Bool)

(assert (=> b!4202574 (= e!2608812 (and tp_is_empty!22217 tp!1284274))))

(assert (=> b!4202575 (= e!2608818 (and tp!1284268 tp!1284282))))

(declare-fun b!4202576 () Bool)

(declare-fun rulesValidInductive!2858 (LexerInterface!7315 List!46321) Bool)

(assert (=> b!4202576 (= e!2608819 (rulesValidInductive!2858 thiss!26544 (t!347020 rules!3967)))))

(declare-fun res!1725889 () Bool)

(assert (=> start!401486 (=> (not res!1725889) (not e!2608801))))

(assert (=> start!401486 (= res!1725889 ((_ is Lexer!7313) thiss!26544))))

(assert (=> start!401486 e!2608801))

(declare-fun inv!60765 (Token!14142) Bool)

(assert (=> start!401486 (and (inv!60765 tBis!41) e!2608816)))

(assert (=> start!401486 true))

(assert (=> start!401486 e!2608815))

(declare-fun e!2608813 () Bool)

(assert (=> start!401486 e!2608813))

(assert (=> start!401486 e!2608803))

(assert (=> start!401486 e!2608812))

(assert (=> start!401486 (and (inv!60765 t!8364) e!2608814)))

(assert (=> start!401486 e!2608810))

(assert (=> start!401486 e!2608808))

(declare-fun e!2608817 () Bool)

(assert (=> start!401486 e!2608817))

(declare-fun b!4202555 () Bool)

(declare-fun tp!1284286 () Bool)

(assert (=> b!4202555 (= e!2608817 (and tp_is_empty!22217 tp!1284286))))

(declare-fun b!4202577 () Bool)

(declare-fun tp!1284273 () Bool)

(assert (=> b!4202577 (= e!2608813 (and tp_is_empty!22217 tp!1284273))))

(declare-fun b!4202578 () Bool)

(declare-fun res!1725885 () Bool)

(assert (=> b!4202578 (=> (not res!1725885) (not e!2608801))))

(declare-fun rulesInvariant!6526 (LexerInterface!7315 List!46321) Bool)

(assert (=> b!4202578 (= res!1725885 (rulesInvariant!6526 thiss!26544 rules!3967))))

(assert (= (and start!401486 res!1725889) b!4202549))

(assert (= (and b!4202549 res!1725896) b!4202553))

(assert (= (and b!4202553 res!1725890) b!4202548))

(assert (= (and b!4202548 res!1725894) b!4202554))

(assert (= (and b!4202554 res!1725891) b!4202578))

(assert (= (and b!4202578 res!1725885) b!4202562))

(assert (= (and b!4202562 res!1725899) b!4202567))

(assert (= (and b!4202567 res!1725887) b!4202559))

(assert (= (and b!4202559 res!1725892) b!4202565))

(assert (= (and b!4202565 (not res!1725897)) b!4202550))

(assert (= (and b!4202550 (not res!1725888)) b!4202566))

(assert (= (and b!4202566 (not res!1725898)) b!4202552))

(assert (= (and b!4202552 (not res!1725895)) b!4202561))

(assert (= (and b!4202561 (not res!1725893)) b!4202560))

(assert (= (and b!4202560 (not res!1725886)) b!4202576))

(assert (= b!4202569 b!4202573))

(assert (= b!4202551 b!4202569))

(assert (= start!401486 b!4202551))

(assert (= b!4202571 b!4202568))

(assert (= start!401486 b!4202571))

(assert (= (and start!401486 ((_ is Cons!46195) p!3001)) b!4202577))

(assert (= b!4202563 b!4202564))

(assert (= b!4202572 b!4202563))

(assert (= (and start!401486 ((_ is Cons!46197) rules!3967)) b!4202572))

(assert (= (and start!401486 ((_ is Cons!46195) input!3517)) b!4202574))

(assert (= b!4202556 b!4202575))

(assert (= b!4202557 b!4202556))

(assert (= start!401486 b!4202557))

(assert (= (and start!401486 ((_ is Cons!46195) pBis!121)) b!4202558))

(assert (= (and start!401486 ((_ is Cons!46195) suffix!1557)) b!4202570))

(assert (= (and start!401486 ((_ is Cons!46195) suffixBis!41)) b!4202555))

(declare-fun m!4790631 () Bool)

(assert (=> b!4202562 m!4790631))

(declare-fun m!4790633 () Bool)

(assert (=> b!4202548 m!4790633))

(declare-fun m!4790635 () Bool)

(assert (=> b!4202567 m!4790635))

(declare-fun m!4790637 () Bool)

(assert (=> b!4202551 m!4790637))

(declare-fun m!4790639 () Bool)

(assert (=> b!4202557 m!4790639))

(declare-fun m!4790641 () Bool)

(assert (=> b!4202552 m!4790641))

(declare-fun m!4790643 () Bool)

(assert (=> b!4202571 m!4790643))

(declare-fun m!4790645 () Bool)

(assert (=> b!4202571 m!4790645))

(declare-fun m!4790647 () Bool)

(assert (=> b!4202566 m!4790647))

(assert (=> b!4202566 m!4790647))

(declare-fun m!4790649 () Bool)

(assert (=> b!4202566 m!4790649))

(declare-fun m!4790651 () Bool)

(assert (=> b!4202565 m!4790651))

(declare-fun m!4790653 () Bool)

(assert (=> b!4202565 m!4790653))

(declare-fun m!4790655 () Bool)

(assert (=> b!4202565 m!4790655))

(declare-fun m!4790657 () Bool)

(assert (=> b!4202549 m!4790657))

(declare-fun m!4790659 () Bool)

(assert (=> b!4202559 m!4790659))

(declare-fun m!4790661 () Bool)

(assert (=> b!4202560 m!4790661))

(declare-fun m!4790663 () Bool)

(assert (=> b!4202553 m!4790663))

(declare-fun m!4790665 () Bool)

(assert (=> start!401486 m!4790665))

(declare-fun m!4790667 () Bool)

(assert (=> start!401486 m!4790667))

(declare-fun m!4790669 () Bool)

(assert (=> b!4202578 m!4790669))

(declare-fun m!4790671 () Bool)

(assert (=> b!4202554 m!4790671))

(declare-fun m!4790673 () Bool)

(assert (=> b!4202556 m!4790673))

(declare-fun m!4790675 () Bool)

(assert (=> b!4202556 m!4790675))

(declare-fun m!4790677 () Bool)

(assert (=> b!4202576 m!4790677))

(declare-fun m!4790679 () Bool)

(assert (=> b!4202563 m!4790679))

(declare-fun m!4790681 () Bool)

(assert (=> b!4202563 m!4790681))

(declare-fun m!4790683 () Bool)

(assert (=> b!4202569 m!4790683))

(declare-fun m!4790685 () Bool)

(assert (=> b!4202569 m!4790685))

(check-sat (not b!4202569) (not b_next!123421) b_and!329961 (not b!4202549) (not b_next!123425) (not b!4202559) b_and!329951 b_and!329953 b_and!329963 (not b_next!123417) b_and!329959 (not b!4202572) (not b!4202566) (not b!4202552) (not b!4202565) (not b!4202576) (not b!4202556) (not b!4202563) b_and!329957 tp_is_empty!22217 (not b!4202570) (not b!4202555) (not b!4202558) (not b!4202574) (not b_next!123413) (not b!4202562) (not b!4202551) (not b_next!123419) (not b!4202557) (not b!4202548) (not b_next!123411) (not b!4202578) (not b_next!123415) (not b!4202571) b_and!329949 (not b_next!123423) (not b!4202577) (not b!4202567) b_and!329955 (not start!401486) (not b!4202553) (not b!4202554) (not b!4202560))
(check-sat b_and!329957 (not b_next!123421) b_and!329961 (not b_next!123413) (not b_next!123425) b_and!329951 (not b_next!123419) (not b_next!123411) b_and!329953 (not b_next!123415) b_and!329963 (not b_next!123417) b_and!329959 b_and!329955 b_and!329949 (not b_next!123423))
(get-model)

(declare-fun b!4202733 () Bool)

(declare-fun res!1726031 () Bool)

(declare-fun e!2608907 () Bool)

(assert (=> b!4202733 (=> (not res!1726031) (not e!2608907))))

(declare-fun lt!1496842 () Option!9908)

(declare-fun get!15024 (Option!9908) tuple2!43950)

(assert (=> b!4202733 (= res!1726031 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))) (_2!25109 (get!15024 lt!1496842))) input!3517))))

(declare-fun b!4202734 () Bool)

(declare-fun res!1726032 () Bool)

(assert (=> b!4202734 (=> (not res!1726032) (not e!2608907))))

(declare-fun apply!10669 (TokenValueInjection!15328 BalanceConc!27456) TokenValue!7950)

(declare-fun seqFromList!5729 (List!46319) BalanceConc!27456)

(assert (=> b!4202734 (= res!1726032 (= (value!240549 (_1!25109 (get!15024 lt!1496842))) (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))))))))

(declare-fun b!4202735 () Bool)

(declare-fun size!33944 (List!46319) Int)

(assert (=> b!4202735 (= e!2608907 (= (size!33941 (_1!25109 (get!15024 lt!1496842))) (size!33944 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842))))))))

(declare-fun b!4202736 () Bool)

(declare-fun e!2608909 () Bool)

(declare-fun matchR!6348 (Regex!12625 List!46319) Bool)

(declare-datatypes ((tuple2!43954 0))(
  ( (tuple2!43955 (_1!25111 List!46319) (_2!25111 List!46319)) )
))
(declare-fun findLongestMatchInner!1629 (Regex!12625 List!46319 Int List!46319 List!46319 Int) tuple2!43954)

(assert (=> b!4202736 (= e!2608909 (matchR!6348 (regex!7720 (h!51617 rules!3967)) (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(declare-fun b!4202737 () Bool)

(declare-fun e!2608910 () Option!9908)

(assert (=> b!4202737 (= e!2608910 None!9907)))

(declare-fun b!4202738 () Bool)

(declare-fun res!1726028 () Bool)

(assert (=> b!4202738 (=> (not res!1726028) (not e!2608907))))

(assert (=> b!4202738 (= res!1726028 (< (size!33944 (_2!25109 (get!15024 lt!1496842))) (size!33944 input!3517)))))

(declare-fun b!4202739 () Bool)

(declare-fun e!2608908 () Bool)

(assert (=> b!4202739 (= e!2608908 e!2608907)))

(declare-fun res!1726029 () Bool)

(assert (=> b!4202739 (=> (not res!1726029) (not e!2608907))))

(assert (=> b!4202739 (= res!1726029 (matchR!6348 (regex!7720 (h!51617 rules!3967)) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))))))

(declare-fun d!1238942 () Bool)

(assert (=> d!1238942 e!2608908))

(declare-fun res!1726026 () Bool)

(assert (=> d!1238942 (=> res!1726026 e!2608908)))

(declare-fun isEmpty!27352 (Option!9908) Bool)

(assert (=> d!1238942 (= res!1726026 (isEmpty!27352 lt!1496842))))

(assert (=> d!1238942 (= lt!1496842 e!2608910)))

(declare-fun c!716463 () Bool)

(declare-fun lt!1496841 () tuple2!43954)

(declare-fun isEmpty!27353 (List!46319) Bool)

(assert (=> d!1238942 (= c!716463 (isEmpty!27353 (_1!25111 lt!1496841)))))

(declare-fun findLongestMatch!1542 (Regex!12625 List!46319) tuple2!43954)

(assert (=> d!1238942 (= lt!1496841 (findLongestMatch!1542 (regex!7720 (h!51617 rules!3967)) input!3517))))

(assert (=> d!1238942 (ruleValid!3432 thiss!26544 (h!51617 rules!3967))))

(assert (=> d!1238942 (= (maxPrefixOneRule!3310 thiss!26544 (h!51617 rules!3967) input!3517) lt!1496842)))

(declare-fun b!4202740 () Bool)

(declare-fun res!1726030 () Bool)

(assert (=> b!4202740 (=> (not res!1726030) (not e!2608907))))

(assert (=> b!4202740 (= res!1726030 (= (rule!10818 (_1!25109 (get!15024 lt!1496842))) (h!51617 rules!3967)))))

(declare-fun b!4202741 () Bool)

(declare-fun size!33945 (BalanceConc!27456) Int)

(assert (=> b!4202741 (= e!2608910 (Some!9907 (tuple2!43951 (Token!14143 (apply!10669 (transformation!7720 (h!51617 rules!3967)) (seqFromList!5729 (_1!25111 lt!1496841))) (h!51617 rules!3967) (size!33945 (seqFromList!5729 (_1!25111 lt!1496841))) (_1!25111 lt!1496841)) (_2!25111 lt!1496841))))))

(declare-fun lt!1496840 () Unit!65289)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1602 (Regex!12625 List!46319) Unit!65289)

(assert (=> b!4202741 (= lt!1496840 (longestMatchIsAcceptedByMatchOrIsEmpty!1602 (regex!7720 (h!51617 rules!3967)) input!3517))))

(declare-fun res!1726027 () Bool)

(assert (=> b!4202741 (= res!1726027 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (=> b!4202741 (=> res!1726027 e!2608909)))

(assert (=> b!4202741 e!2608909))

(declare-fun lt!1496838 () Unit!65289)

(assert (=> b!4202741 (= lt!1496838 lt!1496840)))

(declare-fun lt!1496839 () Unit!65289)

(declare-fun lemmaSemiInverse!2470 (TokenValueInjection!15328 BalanceConc!27456) Unit!65289)

(assert (=> b!4202741 (= lt!1496839 (lemmaSemiInverse!2470 (transformation!7720 (h!51617 rules!3967)) (seqFromList!5729 (_1!25111 lt!1496841))))))

(assert (= (and d!1238942 c!716463) b!4202737))

(assert (= (and d!1238942 (not c!716463)) b!4202741))

(assert (= (and b!4202741 (not res!1726027)) b!4202736))

(assert (= (and d!1238942 (not res!1726026)) b!4202739))

(assert (= (and b!4202739 res!1726029) b!4202733))

(assert (= (and b!4202733 res!1726031) b!4202738))

(assert (= (and b!4202738 res!1726028) b!4202740))

(assert (= (and b!4202740 res!1726030) b!4202734))

(assert (= (and b!4202734 res!1726032) b!4202735))

(declare-fun m!4790897 () Bool)

(assert (=> b!4202738 m!4790897))

(declare-fun m!4790899 () Bool)

(assert (=> b!4202738 m!4790899))

(declare-fun m!4790901 () Bool)

(assert (=> b!4202738 m!4790901))

(assert (=> b!4202739 m!4790897))

(declare-fun m!4790903 () Bool)

(assert (=> b!4202739 m!4790903))

(assert (=> b!4202739 m!4790903))

(declare-fun m!4790905 () Bool)

(assert (=> b!4202739 m!4790905))

(assert (=> b!4202739 m!4790905))

(declare-fun m!4790907 () Bool)

(assert (=> b!4202739 m!4790907))

(declare-fun m!4790909 () Bool)

(assert (=> d!1238942 m!4790909))

(declare-fun m!4790911 () Bool)

(assert (=> d!1238942 m!4790911))

(declare-fun m!4790913 () Bool)

(assert (=> d!1238942 m!4790913))

(declare-fun m!4790915 () Bool)

(assert (=> d!1238942 m!4790915))

(assert (=> b!4202733 m!4790897))

(assert (=> b!4202733 m!4790903))

(assert (=> b!4202733 m!4790903))

(assert (=> b!4202733 m!4790905))

(assert (=> b!4202733 m!4790905))

(declare-fun m!4790917 () Bool)

(assert (=> b!4202733 m!4790917))

(declare-fun m!4790919 () Bool)

(assert (=> b!4202736 m!4790919))

(assert (=> b!4202736 m!4790901))

(assert (=> b!4202736 m!4790919))

(assert (=> b!4202736 m!4790901))

(declare-fun m!4790921 () Bool)

(assert (=> b!4202736 m!4790921))

(declare-fun m!4790923 () Bool)

(assert (=> b!4202736 m!4790923))

(assert (=> b!4202735 m!4790897))

(declare-fun m!4790925 () Bool)

(assert (=> b!4202735 m!4790925))

(assert (=> b!4202734 m!4790897))

(declare-fun m!4790927 () Bool)

(assert (=> b!4202734 m!4790927))

(assert (=> b!4202734 m!4790927))

(declare-fun m!4790929 () Bool)

(assert (=> b!4202734 m!4790929))

(declare-fun m!4790931 () Bool)

(assert (=> b!4202741 m!4790931))

(assert (=> b!4202741 m!4790919))

(assert (=> b!4202741 m!4790901))

(assert (=> b!4202741 m!4790921))

(assert (=> b!4202741 m!4790901))

(declare-fun m!4790933 () Bool)

(assert (=> b!4202741 m!4790933))

(declare-fun m!4790935 () Bool)

(assert (=> b!4202741 m!4790935))

(assert (=> b!4202741 m!4790919))

(assert (=> b!4202741 m!4790933))

(declare-fun m!4790937 () Bool)

(assert (=> b!4202741 m!4790937))

(declare-fun m!4790939 () Bool)

(assert (=> b!4202741 m!4790939))

(assert (=> b!4202741 m!4790933))

(assert (=> b!4202741 m!4790933))

(declare-fun m!4790941 () Bool)

(assert (=> b!4202741 m!4790941))

(assert (=> b!4202740 m!4790897))

(assert (=> b!4202560 d!1238942))

(declare-fun d!1238980 () Bool)

(declare-fun e!2608926 () Bool)

(assert (=> d!1238980 e!2608926))

(declare-fun res!1726048 () Bool)

(assert (=> d!1238980 (=> (not res!1726048) (not e!2608926))))

(declare-fun lt!1496850 () List!46319)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7215 (List!46319) (InoxSet C!25444))

(assert (=> d!1238980 (= res!1726048 (= (content!7215 lt!1496850) ((_ map or) (content!7215 p!3001) (content!7215 suffix!1557))))))

(declare-fun e!2608925 () List!46319)

(assert (=> d!1238980 (= lt!1496850 e!2608925)))

(declare-fun c!716469 () Bool)

(assert (=> d!1238980 (= c!716469 ((_ is Nil!46195) p!3001))))

(assert (=> d!1238980 (= (++!11794 p!3001 suffix!1557) lt!1496850)))

(declare-fun b!4202766 () Bool)

(assert (=> b!4202766 (= e!2608925 suffix!1557)))

(declare-fun b!4202768 () Bool)

(declare-fun res!1726047 () Bool)

(assert (=> b!4202768 (=> (not res!1726047) (not e!2608926))))

(assert (=> b!4202768 (= res!1726047 (= (size!33944 lt!1496850) (+ (size!33944 p!3001) (size!33944 suffix!1557))))))

(declare-fun b!4202769 () Bool)

(assert (=> b!4202769 (= e!2608926 (or (not (= suffix!1557 Nil!46195)) (= lt!1496850 p!3001)))))

(declare-fun b!4202767 () Bool)

(assert (=> b!4202767 (= e!2608925 (Cons!46195 (h!51615 p!3001) (++!11794 (t!347018 p!3001) suffix!1557)))))

(assert (= (and d!1238980 c!716469) b!4202766))

(assert (= (and d!1238980 (not c!716469)) b!4202767))

(assert (= (and d!1238980 res!1726048) b!4202768))

(assert (= (and b!4202768 res!1726047) b!4202769))

(declare-fun m!4790943 () Bool)

(assert (=> d!1238980 m!4790943))

(declare-fun m!4790945 () Bool)

(assert (=> d!1238980 m!4790945))

(declare-fun m!4790947 () Bool)

(assert (=> d!1238980 m!4790947))

(declare-fun m!4790949 () Bool)

(assert (=> b!4202768 m!4790949))

(declare-fun m!4790951 () Bool)

(assert (=> b!4202768 m!4790951))

(declare-fun m!4790953 () Bool)

(assert (=> b!4202768 m!4790953))

(declare-fun m!4790955 () Bool)

(assert (=> b!4202767 m!4790955))

(assert (=> b!4202549 d!1238980))

(declare-fun d!1238982 () Bool)

(assert (=> d!1238982 (= (inv!60761 (tag!8584 rBis!178)) (= (mod (str.len (value!240548 (tag!8584 rBis!178))) 2) 0))))

(assert (=> b!4202571 d!1238982))

(declare-fun d!1238984 () Bool)

(declare-fun res!1726051 () Bool)

(declare-fun e!2608929 () Bool)

(assert (=> d!1238984 (=> (not res!1726051) (not e!2608929))))

(declare-fun semiInverseModEq!3350 (Int Int) Bool)

(assert (=> d!1238984 (= res!1726051 (semiInverseModEq!3350 (toChars!10287 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 rBis!178))))))

(assert (=> d!1238984 (= (inv!60764 (transformation!7720 rBis!178)) e!2608929)))

(declare-fun b!4202772 () Bool)

(declare-fun equivClasses!3249 (Int Int) Bool)

(assert (=> b!4202772 (= e!2608929 (equivClasses!3249 (toChars!10287 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 rBis!178))))))

(assert (= (and d!1238984 res!1726051) b!4202772))

(declare-fun m!4790957 () Bool)

(assert (=> d!1238984 m!4790957))

(declare-fun m!4790959 () Bool)

(assert (=> b!4202772 m!4790959))

(assert (=> b!4202571 d!1238984))

(declare-fun b!4202781 () Bool)

(declare-fun e!2608936 () Bool)

(declare-fun e!2608938 () Bool)

(assert (=> b!4202781 (= e!2608936 e!2608938)))

(declare-fun res!1726061 () Bool)

(assert (=> b!4202781 (=> (not res!1726061) (not e!2608938))))

(assert (=> b!4202781 (= res!1726061 (not ((_ is Nil!46195) input!3517)))))

(declare-fun b!4202782 () Bool)

(declare-fun res!1726063 () Bool)

(assert (=> b!4202782 (=> (not res!1726063) (not e!2608938))))

(declare-fun head!8918 (List!46319) C!25444)

(assert (=> b!4202782 (= res!1726063 (= (head!8918 pBis!121) (head!8918 input!3517)))))

(declare-fun b!4202784 () Bool)

(declare-fun e!2608937 () Bool)

(assert (=> b!4202784 (= e!2608937 (>= (size!33944 input!3517) (size!33944 pBis!121)))))

(declare-fun b!4202783 () Bool)

(declare-fun tail!6765 (List!46319) List!46319)

(assert (=> b!4202783 (= e!2608938 (isPrefix!4579 (tail!6765 pBis!121) (tail!6765 input!3517)))))

(declare-fun d!1238986 () Bool)

(assert (=> d!1238986 e!2608937))

(declare-fun res!1726060 () Bool)

(assert (=> d!1238986 (=> res!1726060 e!2608937)))

(declare-fun lt!1496853 () Bool)

(assert (=> d!1238986 (= res!1726060 (not lt!1496853))))

(assert (=> d!1238986 (= lt!1496853 e!2608936)))

(declare-fun res!1726062 () Bool)

(assert (=> d!1238986 (=> res!1726062 e!2608936)))

(assert (=> d!1238986 (= res!1726062 ((_ is Nil!46195) pBis!121))))

(assert (=> d!1238986 (= (isPrefix!4579 pBis!121 input!3517) lt!1496853)))

(assert (= (and d!1238986 (not res!1726062)) b!4202781))

(assert (= (and b!4202781 res!1726061) b!4202782))

(assert (= (and b!4202782 res!1726063) b!4202783))

(assert (= (and d!1238986 (not res!1726060)) b!4202784))

(declare-fun m!4790961 () Bool)

(assert (=> b!4202782 m!4790961))

(declare-fun m!4790963 () Bool)

(assert (=> b!4202782 m!4790963))

(assert (=> b!4202784 m!4790901))

(declare-fun m!4790965 () Bool)

(assert (=> b!4202784 m!4790965))

(declare-fun m!4790967 () Bool)

(assert (=> b!4202783 m!4790967))

(declare-fun m!4790969 () Bool)

(assert (=> b!4202783 m!4790969))

(assert (=> b!4202783 m!4790967))

(assert (=> b!4202783 m!4790969))

(declare-fun m!4790971 () Bool)

(assert (=> b!4202783 m!4790971))

(assert (=> b!4202548 d!1238986))

(declare-fun d!1238988 () Bool)

(assert (=> d!1238988 (= (inv!60761 (tag!8584 (rule!10818 tBis!41))) (= (mod (str.len (value!240548 (tag!8584 (rule!10818 tBis!41)))) 2) 0))))

(assert (=> b!4202569 d!1238988))

(declare-fun d!1238990 () Bool)

(declare-fun res!1726064 () Bool)

(declare-fun e!2608939 () Bool)

(assert (=> d!1238990 (=> (not res!1726064) (not e!2608939))))

(assert (=> d!1238990 (= res!1726064 (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))))))

(assert (=> d!1238990 (= (inv!60764 (transformation!7720 (rule!10818 tBis!41))) e!2608939)))

(declare-fun b!4202785 () Bool)

(assert (=> b!4202785 (= e!2608939 (equivClasses!3249 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))))))

(assert (= (and d!1238990 res!1726064) b!4202785))

(declare-fun m!4790973 () Bool)

(assert (=> d!1238990 m!4790973))

(declare-fun m!4790975 () Bool)

(assert (=> b!4202785 m!4790975))

(assert (=> b!4202569 d!1238990))

(declare-fun d!1238992 () Bool)

(declare-fun res!1726069 () Bool)

(declare-fun e!2608942 () Bool)

(assert (=> d!1238992 (=> (not res!1726069) (not e!2608942))))

(declare-fun validRegex!5728 (Regex!12625) Bool)

(assert (=> d!1238992 (= res!1726069 (validRegex!5728 (regex!7720 rBis!178)))))

(assert (=> d!1238992 (= (ruleValid!3432 thiss!26544 rBis!178) e!2608942)))

(declare-fun b!4202790 () Bool)

(declare-fun res!1726070 () Bool)

(assert (=> b!4202790 (=> (not res!1726070) (not e!2608942))))

(declare-fun nullable!4441 (Regex!12625) Bool)

(assert (=> b!4202790 (= res!1726070 (not (nullable!4441 (regex!7720 rBis!178))))))

(declare-fun b!4202791 () Bool)

(assert (=> b!4202791 (= e!2608942 (not (= (tag!8584 rBis!178) (String!53621 ""))))))

(assert (= (and d!1238992 res!1726069) b!4202790))

(assert (= (and b!4202790 res!1726070) b!4202791))

(declare-fun m!4790977 () Bool)

(assert (=> d!1238992 m!4790977))

(declare-fun m!4790979 () Bool)

(assert (=> b!4202790 m!4790979))

(assert (=> b!4202559 d!1238992))

(declare-fun d!1238994 () Bool)

(declare-fun e!2608944 () Bool)

(assert (=> d!1238994 e!2608944))

(declare-fun res!1726072 () Bool)

(assert (=> d!1238994 (=> (not res!1726072) (not e!2608944))))

(declare-fun lt!1496854 () List!46319)

(assert (=> d!1238994 (= res!1726072 (= (content!7215 lt!1496854) ((_ map or) (content!7215 pBis!121) (content!7215 suffixBis!41))))))

(declare-fun e!2608943 () List!46319)

(assert (=> d!1238994 (= lt!1496854 e!2608943)))

(declare-fun c!716470 () Bool)

(assert (=> d!1238994 (= c!716470 ((_ is Nil!46195) pBis!121))))

(assert (=> d!1238994 (= (++!11794 pBis!121 suffixBis!41) lt!1496854)))

(declare-fun b!4202792 () Bool)

(assert (=> b!4202792 (= e!2608943 suffixBis!41)))

(declare-fun b!4202794 () Bool)

(declare-fun res!1726071 () Bool)

(assert (=> b!4202794 (=> (not res!1726071) (not e!2608944))))

(assert (=> b!4202794 (= res!1726071 (= (size!33944 lt!1496854) (+ (size!33944 pBis!121) (size!33944 suffixBis!41))))))

(declare-fun b!4202795 () Bool)

(assert (=> b!4202795 (= e!2608944 (or (not (= suffixBis!41 Nil!46195)) (= lt!1496854 pBis!121)))))

(declare-fun b!4202793 () Bool)

(assert (=> b!4202793 (= e!2608943 (Cons!46195 (h!51615 pBis!121) (++!11794 (t!347018 pBis!121) suffixBis!41)))))

(assert (= (and d!1238994 c!716470) b!4202792))

(assert (= (and d!1238994 (not c!716470)) b!4202793))

(assert (= (and d!1238994 res!1726072) b!4202794))

(assert (= (and b!4202794 res!1726071) b!4202795))

(declare-fun m!4790981 () Bool)

(assert (=> d!1238994 m!4790981))

(declare-fun m!4790983 () Bool)

(assert (=> d!1238994 m!4790983))

(declare-fun m!4790985 () Bool)

(assert (=> d!1238994 m!4790985))

(declare-fun m!4790987 () Bool)

(assert (=> b!4202794 m!4790987))

(assert (=> b!4202794 m!4790965))

(declare-fun m!4790989 () Bool)

(assert (=> b!4202794 m!4790989))

(declare-fun m!4790991 () Bool)

(assert (=> b!4202793 m!4790991))

(assert (=> b!4202552 d!1238994))

(declare-fun d!1238996 () Bool)

(declare-fun res!1726077 () Bool)

(declare-fun e!2608947 () Bool)

(assert (=> d!1238996 (=> (not res!1726077) (not e!2608947))))

(assert (=> d!1238996 (= res!1726077 (not (isEmpty!27353 (originalCharacters!8102 tBis!41))))))

(assert (=> d!1238996 (= (inv!60765 tBis!41) e!2608947)))

(declare-fun b!4202800 () Bool)

(declare-fun res!1726078 () Bool)

(assert (=> b!4202800 (=> (not res!1726078) (not e!2608947))))

(declare-fun dynLambda!19922 (Int TokenValue!7950) BalanceConc!27456)

(assert (=> b!4202800 (= res!1726078 (= (originalCharacters!8102 tBis!41) (list!16691 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))))

(declare-fun b!4202801 () Bool)

(assert (=> b!4202801 (= e!2608947 (= (size!33941 tBis!41) (size!33944 (originalCharacters!8102 tBis!41))))))

(assert (= (and d!1238996 res!1726077) b!4202800))

(assert (= (and b!4202800 res!1726078) b!4202801))

(declare-fun b_lambda!123697 () Bool)

(assert (=> (not b_lambda!123697) (not b!4202800)))

(declare-fun tb!251923 () Bool)

(declare-fun t!347038 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) t!347038) tb!251923))

(declare-fun b!4202806 () Bool)

(declare-fun e!2608950 () Bool)

(declare-fun tp!1284293 () Bool)

(declare-fun inv!60768 (Conc!13931) Bool)

(assert (=> b!4202806 (= e!2608950 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))) tp!1284293))))

(declare-fun result!307070 () Bool)

(declare-fun inv!60769 (BalanceConc!27456) Bool)

(assert (=> tb!251923 (= result!307070 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))) e!2608950))))

(assert (= tb!251923 b!4202806))

(declare-fun m!4790993 () Bool)

(assert (=> b!4202806 m!4790993))

(declare-fun m!4790995 () Bool)

(assert (=> tb!251923 m!4790995))

(assert (=> b!4202800 t!347038))

(declare-fun b_and!329989 () Bool)

(assert (= b_and!329951 (and (=> t!347038 result!307070) b_and!329989)))

(declare-fun tb!251925 () Bool)

(declare-fun t!347040 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) t!347040) tb!251925))

(declare-fun result!307074 () Bool)

(assert (= result!307074 result!307070))

(assert (=> b!4202800 t!347040))

(declare-fun b_and!329991 () Bool)

(assert (= b_and!329955 (and (=> t!347040 result!307074) b_and!329991)))

(declare-fun t!347042 () Bool)

(declare-fun tb!251927 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) t!347042) tb!251927))

(declare-fun result!307076 () Bool)

(assert (= result!307076 result!307070))

(assert (=> b!4202800 t!347042))

(declare-fun b_and!329993 () Bool)

(assert (= b_and!329959 (and (=> t!347042 result!307076) b_and!329993)))

(declare-fun tb!251929 () Bool)

(declare-fun t!347044 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) t!347044) tb!251929))

(declare-fun result!307078 () Bool)

(assert (= result!307078 result!307070))

(assert (=> b!4202800 t!347044))

(declare-fun b_and!329995 () Bool)

(assert (= b_and!329963 (and (=> t!347044 result!307078) b_and!329995)))

(declare-fun m!4790997 () Bool)

(assert (=> d!1238996 m!4790997))

(declare-fun m!4790999 () Bool)

(assert (=> b!4202800 m!4790999))

(assert (=> b!4202800 m!4790999))

(declare-fun m!4791001 () Bool)

(assert (=> b!4202800 m!4791001))

(declare-fun m!4791003 () Bool)

(assert (=> b!4202801 m!4791003))

(assert (=> start!401486 d!1238996))

(declare-fun d!1238998 () Bool)

(declare-fun res!1726079 () Bool)

(declare-fun e!2608951 () Bool)

(assert (=> d!1238998 (=> (not res!1726079) (not e!2608951))))

(assert (=> d!1238998 (= res!1726079 (not (isEmpty!27353 (originalCharacters!8102 t!8364))))))

(assert (=> d!1238998 (= (inv!60765 t!8364) e!2608951)))

(declare-fun b!4202807 () Bool)

(declare-fun res!1726080 () Bool)

(assert (=> b!4202807 (=> (not res!1726080) (not e!2608951))))

(assert (=> b!4202807 (= res!1726080 (= (originalCharacters!8102 t!8364) (list!16691 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))))))

(declare-fun b!4202808 () Bool)

(assert (=> b!4202808 (= e!2608951 (= (size!33941 t!8364) (size!33944 (originalCharacters!8102 t!8364))))))

(assert (= (and d!1238998 res!1726079) b!4202807))

(assert (= (and b!4202807 res!1726080) b!4202808))

(declare-fun b_lambda!123699 () Bool)

(assert (=> (not b_lambda!123699) (not b!4202807)))

(declare-fun t!347046 () Bool)

(declare-fun tb!251931 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) t!347046) tb!251931))

(declare-fun b!4202809 () Bool)

(declare-fun e!2608952 () Bool)

(declare-fun tp!1284294 () Bool)

(assert (=> b!4202809 (= e!2608952 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))) tp!1284294))))

(declare-fun result!307080 () Bool)

(assert (=> tb!251931 (= result!307080 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))) e!2608952))))

(assert (= tb!251931 b!4202809))

(declare-fun m!4791005 () Bool)

(assert (=> b!4202809 m!4791005))

(declare-fun m!4791007 () Bool)

(assert (=> tb!251931 m!4791007))

(assert (=> b!4202807 t!347046))

(declare-fun b_and!329997 () Bool)

(assert (= b_and!329989 (and (=> t!347046 result!307080) b_and!329997)))

(declare-fun t!347048 () Bool)

(declare-fun tb!251933 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) t!347048) tb!251933))

(declare-fun result!307082 () Bool)

(assert (= result!307082 result!307080))

(assert (=> b!4202807 t!347048))

(declare-fun b_and!329999 () Bool)

(assert (= b_and!329991 (and (=> t!347048 result!307082) b_and!329999)))

(declare-fun tb!251935 () Bool)

(declare-fun t!347050 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) t!347050) tb!251935))

(declare-fun result!307084 () Bool)

(assert (= result!307084 result!307080))

(assert (=> b!4202807 t!347050))

(declare-fun b_and!330001 () Bool)

(assert (= b_and!329993 (and (=> t!347050 result!307084) b_and!330001)))

(declare-fun tb!251937 () Bool)

(declare-fun t!347052 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) t!347052) tb!251937))

(declare-fun result!307086 () Bool)

(assert (= result!307086 result!307080))

(assert (=> b!4202807 t!347052))

(declare-fun b_and!330003 () Bool)

(assert (= b_and!329995 (and (=> t!347052 result!307086) b_and!330003)))

(declare-fun m!4791009 () Bool)

(assert (=> d!1238998 m!4791009))

(declare-fun m!4791011 () Bool)

(assert (=> b!4202807 m!4791011))

(assert (=> b!4202807 m!4791011))

(declare-fun m!4791013 () Bool)

(assert (=> b!4202807 m!4791013))

(declare-fun m!4791015 () Bool)

(assert (=> b!4202808 m!4791015))

(assert (=> start!401486 d!1238998))

(declare-fun d!1239000 () Bool)

(assert (=> d!1239000 (= (inv!60761 (tag!8584 (h!51617 rules!3967))) (= (mod (str.len (value!240548 (tag!8584 (h!51617 rules!3967)))) 2) 0))))

(assert (=> b!4202563 d!1239000))

(declare-fun d!1239002 () Bool)

(declare-fun res!1726081 () Bool)

(declare-fun e!2608953 () Bool)

(assert (=> d!1239002 (=> (not res!1726081) (not e!2608953))))

(assert (=> d!1239002 (= res!1726081 (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))))))

(assert (=> d!1239002 (= (inv!60764 (transformation!7720 (h!51617 rules!3967))) e!2608953)))

(declare-fun b!4202810 () Bool)

(assert (=> b!4202810 (= e!2608953 (equivClasses!3249 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))))))

(assert (= (and d!1239002 res!1726081) b!4202810))

(declare-fun m!4791017 () Bool)

(assert (=> d!1239002 m!4791017))

(declare-fun m!4791019 () Bool)

(assert (=> b!4202810 m!4791019))

(assert (=> b!4202563 d!1239002))

(declare-fun d!1239004 () Bool)

(declare-fun lt!1496857 () Bool)

(declare-fun content!7217 (List!46321) (InoxSet Rule!15240))

(assert (=> d!1239004 (= lt!1496857 (select (content!7217 rules!3967) rBis!178))))

(declare-fun e!2608959 () Bool)

(assert (=> d!1239004 (= lt!1496857 e!2608959)))

(declare-fun res!1726086 () Bool)

(assert (=> d!1239004 (=> (not res!1726086) (not e!2608959))))

(assert (=> d!1239004 (= res!1726086 ((_ is Cons!46197) rules!3967))))

(assert (=> d!1239004 (= (contains!9535 rules!3967 rBis!178) lt!1496857)))

(declare-fun b!4202815 () Bool)

(declare-fun e!2608958 () Bool)

(assert (=> b!4202815 (= e!2608959 e!2608958)))

(declare-fun res!1726087 () Bool)

(assert (=> b!4202815 (=> res!1726087 e!2608958)))

(assert (=> b!4202815 (= res!1726087 (= (h!51617 rules!3967) rBis!178))))

(declare-fun b!4202816 () Bool)

(assert (=> b!4202816 (= e!2608958 (contains!9535 (t!347020 rules!3967) rBis!178))))

(assert (= (and d!1239004 res!1726086) b!4202815))

(assert (= (and b!4202815 (not res!1726087)) b!4202816))

(declare-fun m!4791021 () Bool)

(assert (=> d!1239004 m!4791021))

(declare-fun m!4791023 () Bool)

(assert (=> d!1239004 m!4791023))

(declare-fun m!4791025 () Bool)

(assert (=> b!4202816 m!4791025))

(assert (=> b!4202562 d!1239004))

(declare-fun b!4202827 () Bool)

(declare-fun e!2608968 () Bool)

(declare-fun e!2608967 () Bool)

(assert (=> b!4202827 (= e!2608968 e!2608967)))

(declare-fun c!716476 () Bool)

(assert (=> b!4202827 (= c!716476 ((_ is IntegerValue!23851) (value!240549 tBis!41)))))

(declare-fun b!4202828 () Bool)

(declare-fun inv!16 (TokenValue!7950) Bool)

(assert (=> b!4202828 (= e!2608968 (inv!16 (value!240549 tBis!41)))))

(declare-fun d!1239006 () Bool)

(declare-fun c!716475 () Bool)

(assert (=> d!1239006 (= c!716475 ((_ is IntegerValue!23850) (value!240549 tBis!41)))))

(assert (=> d!1239006 (= (inv!21 (value!240549 tBis!41)) e!2608968)))

(declare-fun b!4202829 () Bool)

(declare-fun e!2608966 () Bool)

(declare-fun inv!15 (TokenValue!7950) Bool)

(assert (=> b!4202829 (= e!2608966 (inv!15 (value!240549 tBis!41)))))

(declare-fun b!4202830 () Bool)

(declare-fun res!1726090 () Bool)

(assert (=> b!4202830 (=> res!1726090 e!2608966)))

(assert (=> b!4202830 (= res!1726090 (not ((_ is IntegerValue!23852) (value!240549 tBis!41))))))

(assert (=> b!4202830 (= e!2608967 e!2608966)))

(declare-fun b!4202831 () Bool)

(declare-fun inv!17 (TokenValue!7950) Bool)

(assert (=> b!4202831 (= e!2608967 (inv!17 (value!240549 tBis!41)))))

(assert (= (and d!1239006 c!716475) b!4202828))

(assert (= (and d!1239006 (not c!716475)) b!4202827))

(assert (= (and b!4202827 c!716476) b!4202831))

(assert (= (and b!4202827 (not c!716476)) b!4202830))

(assert (= (and b!4202830 (not res!1726090)) b!4202829))

(declare-fun m!4791027 () Bool)

(assert (=> b!4202828 m!4791027))

(declare-fun m!4791029 () Bool)

(assert (=> b!4202829 m!4791029))

(declare-fun m!4791031 () Bool)

(assert (=> b!4202831 m!4791031))

(assert (=> b!4202551 d!1239006))

(declare-fun d!1239008 () Bool)

(assert (=> d!1239008 true))

(declare-fun lt!1496862 () Bool)

(declare-fun lambda!129649 () Int)

(declare-fun forall!8486 (List!46321 Int) Bool)

(assert (=> d!1239008 (= lt!1496862 (forall!8486 (t!347020 rules!3967) lambda!129649))))

(declare-fun e!2609007 () Bool)

(assert (=> d!1239008 (= lt!1496862 e!2609007)))

(declare-fun res!1726101 () Bool)

(assert (=> d!1239008 (=> res!1726101 e!2609007)))

(assert (=> d!1239008 (= res!1726101 (not ((_ is Cons!46197) (t!347020 rules!3967))))))

(assert (=> d!1239008 (= (rulesValidInductive!2858 thiss!26544 (t!347020 rules!3967)) lt!1496862)))

(declare-fun b!4202894 () Bool)

(declare-fun e!2609006 () Bool)

(assert (=> b!4202894 (= e!2609007 e!2609006)))

(declare-fun res!1726102 () Bool)

(assert (=> b!4202894 (=> (not res!1726102) (not e!2609006))))

(assert (=> b!4202894 (= res!1726102 (ruleValid!3432 thiss!26544 (h!51617 (t!347020 rules!3967))))))

(declare-fun b!4202895 () Bool)

(assert (=> b!4202895 (= e!2609006 (rulesValidInductive!2858 thiss!26544 (t!347020 (t!347020 rules!3967))))))

(assert (= (and d!1239008 (not res!1726101)) b!4202894))

(assert (= (and b!4202894 res!1726102) b!4202895))

(declare-fun m!4791063 () Bool)

(assert (=> d!1239008 m!4791063))

(declare-fun m!4791065 () Bool)

(assert (=> b!4202894 m!4791065))

(declare-fun m!4791067 () Bool)

(assert (=> b!4202895 m!4791067))

(assert (=> b!4202576 d!1239008))

(declare-fun b!4202898 () Bool)

(declare-fun res!1726108 () Bool)

(declare-fun e!2609008 () Bool)

(assert (=> b!4202898 (=> (not res!1726108) (not e!2609008))))

(declare-fun lt!1496867 () Option!9908)

(assert (=> b!4202898 (= res!1726108 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))) (_2!25109 (get!15024 lt!1496867))) input!3517))))

(declare-fun b!4202899 () Bool)

(declare-fun res!1726109 () Bool)

(assert (=> b!4202899 (=> (not res!1726109) (not e!2609008))))

(assert (=> b!4202899 (= res!1726109 (= (value!240549 (_1!25109 (get!15024 lt!1496867))) (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))))))))

(declare-fun b!4202900 () Bool)

(assert (=> b!4202900 (= e!2609008 (= (size!33941 (_1!25109 (get!15024 lt!1496867))) (size!33944 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867))))))))

(declare-fun b!4202901 () Bool)

(declare-fun e!2609010 () Bool)

(assert (=> b!4202901 (= e!2609010 (matchR!6348 (regex!7720 rBis!178) (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(declare-fun b!4202902 () Bool)

(declare-fun e!2609011 () Option!9908)

(assert (=> b!4202902 (= e!2609011 None!9907)))

(declare-fun b!4202903 () Bool)

(declare-fun res!1726105 () Bool)

(assert (=> b!4202903 (=> (not res!1726105) (not e!2609008))))

(assert (=> b!4202903 (= res!1726105 (< (size!33944 (_2!25109 (get!15024 lt!1496867))) (size!33944 input!3517)))))

(declare-fun b!4202904 () Bool)

(declare-fun e!2609009 () Bool)

(assert (=> b!4202904 (= e!2609009 e!2609008)))

(declare-fun res!1726106 () Bool)

(assert (=> b!4202904 (=> (not res!1726106) (not e!2609008))))

(assert (=> b!4202904 (= res!1726106 (matchR!6348 (regex!7720 rBis!178) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))))))

(declare-fun d!1239020 () Bool)

(assert (=> d!1239020 e!2609009))

(declare-fun res!1726103 () Bool)

(assert (=> d!1239020 (=> res!1726103 e!2609009)))

(assert (=> d!1239020 (= res!1726103 (isEmpty!27352 lt!1496867))))

(assert (=> d!1239020 (= lt!1496867 e!2609011)))

(declare-fun c!716478 () Bool)

(declare-fun lt!1496866 () tuple2!43954)

(assert (=> d!1239020 (= c!716478 (isEmpty!27353 (_1!25111 lt!1496866)))))

(assert (=> d!1239020 (= lt!1496866 (findLongestMatch!1542 (regex!7720 rBis!178) input!3517))))

(assert (=> d!1239020 (ruleValid!3432 thiss!26544 rBis!178)))

(assert (=> d!1239020 (= (maxPrefixOneRule!3310 thiss!26544 rBis!178 input!3517) lt!1496867)))

(declare-fun b!4202905 () Bool)

(declare-fun res!1726107 () Bool)

(assert (=> b!4202905 (=> (not res!1726107) (not e!2609008))))

(assert (=> b!4202905 (= res!1726107 (= (rule!10818 (_1!25109 (get!15024 lt!1496867))) rBis!178))))

(declare-fun b!4202906 () Bool)

(assert (=> b!4202906 (= e!2609011 (Some!9907 (tuple2!43951 (Token!14143 (apply!10669 (transformation!7720 rBis!178) (seqFromList!5729 (_1!25111 lt!1496866))) rBis!178 (size!33945 (seqFromList!5729 (_1!25111 lt!1496866))) (_1!25111 lt!1496866)) (_2!25111 lt!1496866))))))

(declare-fun lt!1496865 () Unit!65289)

(assert (=> b!4202906 (= lt!1496865 (longestMatchIsAcceptedByMatchOrIsEmpty!1602 (regex!7720 rBis!178) input!3517))))

(declare-fun res!1726104 () Bool)

(assert (=> b!4202906 (= res!1726104 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (=> b!4202906 (=> res!1726104 e!2609010)))

(assert (=> b!4202906 e!2609010))

(declare-fun lt!1496863 () Unit!65289)

(assert (=> b!4202906 (= lt!1496863 lt!1496865)))

(declare-fun lt!1496864 () Unit!65289)

(assert (=> b!4202906 (= lt!1496864 (lemmaSemiInverse!2470 (transformation!7720 rBis!178) (seqFromList!5729 (_1!25111 lt!1496866))))))

(assert (= (and d!1239020 c!716478) b!4202902))

(assert (= (and d!1239020 (not c!716478)) b!4202906))

(assert (= (and b!4202906 (not res!1726104)) b!4202901))

(assert (= (and d!1239020 (not res!1726103)) b!4202904))

(assert (= (and b!4202904 res!1726106) b!4202898))

(assert (= (and b!4202898 res!1726108) b!4202903))

(assert (= (and b!4202903 res!1726105) b!4202905))

(assert (= (and b!4202905 res!1726107) b!4202899))

(assert (= (and b!4202899 res!1726109) b!4202900))

(declare-fun m!4791069 () Bool)

(assert (=> b!4202903 m!4791069))

(declare-fun m!4791071 () Bool)

(assert (=> b!4202903 m!4791071))

(assert (=> b!4202903 m!4790901))

(assert (=> b!4202904 m!4791069))

(declare-fun m!4791073 () Bool)

(assert (=> b!4202904 m!4791073))

(assert (=> b!4202904 m!4791073))

(declare-fun m!4791075 () Bool)

(assert (=> b!4202904 m!4791075))

(assert (=> b!4202904 m!4791075))

(declare-fun m!4791077 () Bool)

(assert (=> b!4202904 m!4791077))

(declare-fun m!4791079 () Bool)

(assert (=> d!1239020 m!4791079))

(declare-fun m!4791081 () Bool)

(assert (=> d!1239020 m!4791081))

(declare-fun m!4791083 () Bool)

(assert (=> d!1239020 m!4791083))

(assert (=> d!1239020 m!4790659))

(assert (=> b!4202898 m!4791069))

(assert (=> b!4202898 m!4791073))

(assert (=> b!4202898 m!4791073))

(assert (=> b!4202898 m!4791075))

(assert (=> b!4202898 m!4791075))

(declare-fun m!4791085 () Bool)

(assert (=> b!4202898 m!4791085))

(assert (=> b!4202901 m!4790919))

(assert (=> b!4202901 m!4790901))

(assert (=> b!4202901 m!4790919))

(assert (=> b!4202901 m!4790901))

(declare-fun m!4791087 () Bool)

(assert (=> b!4202901 m!4791087))

(declare-fun m!4791089 () Bool)

(assert (=> b!4202901 m!4791089))

(assert (=> b!4202900 m!4791069))

(declare-fun m!4791091 () Bool)

(assert (=> b!4202900 m!4791091))

(assert (=> b!4202899 m!4791069))

(declare-fun m!4791093 () Bool)

(assert (=> b!4202899 m!4791093))

(assert (=> b!4202899 m!4791093))

(declare-fun m!4791095 () Bool)

(assert (=> b!4202899 m!4791095))

(declare-fun m!4791097 () Bool)

(assert (=> b!4202906 m!4791097))

(assert (=> b!4202906 m!4790919))

(assert (=> b!4202906 m!4790901))

(assert (=> b!4202906 m!4791087))

(assert (=> b!4202906 m!4790901))

(declare-fun m!4791099 () Bool)

(assert (=> b!4202906 m!4791099))

(declare-fun m!4791101 () Bool)

(assert (=> b!4202906 m!4791101))

(assert (=> b!4202906 m!4790919))

(assert (=> b!4202906 m!4791099))

(declare-fun m!4791103 () Bool)

(assert (=> b!4202906 m!4791103))

(declare-fun m!4791105 () Bool)

(assert (=> b!4202906 m!4791105))

(assert (=> b!4202906 m!4791099))

(assert (=> b!4202906 m!4791099))

(declare-fun m!4791107 () Bool)

(assert (=> b!4202906 m!4791107))

(assert (=> b!4202905 m!4791069))

(assert (=> b!4202565 d!1239020))

(declare-fun b!4202907 () Bool)

(declare-fun e!2609012 () Bool)

(declare-fun e!2609014 () Bool)

(assert (=> b!4202907 (= e!2609012 e!2609014)))

(declare-fun res!1726111 () Bool)

(assert (=> b!4202907 (=> (not res!1726111) (not e!2609014))))

(assert (=> b!4202907 (= res!1726111 (not ((_ is Nil!46195) input!3517)))))

(declare-fun b!4202908 () Bool)

(declare-fun res!1726113 () Bool)

(assert (=> b!4202908 (=> (not res!1726113) (not e!2609014))))

(assert (=> b!4202908 (= res!1726113 (= (head!8918 input!3517) (head!8918 input!3517)))))

(declare-fun b!4202910 () Bool)

(declare-fun e!2609013 () Bool)

(assert (=> b!4202910 (= e!2609013 (>= (size!33944 input!3517) (size!33944 input!3517)))))

(declare-fun b!4202909 () Bool)

(assert (=> b!4202909 (= e!2609014 (isPrefix!4579 (tail!6765 input!3517) (tail!6765 input!3517)))))

(declare-fun d!1239022 () Bool)

(assert (=> d!1239022 e!2609013))

(declare-fun res!1726110 () Bool)

(assert (=> d!1239022 (=> res!1726110 e!2609013)))

(declare-fun lt!1496868 () Bool)

(assert (=> d!1239022 (= res!1726110 (not lt!1496868))))

(assert (=> d!1239022 (= lt!1496868 e!2609012)))

(declare-fun res!1726112 () Bool)

(assert (=> d!1239022 (=> res!1726112 e!2609012)))

(assert (=> d!1239022 (= res!1726112 ((_ is Nil!46195) input!3517))))

(assert (=> d!1239022 (= (isPrefix!4579 input!3517 input!3517) lt!1496868)))

(assert (= (and d!1239022 (not res!1726112)) b!4202907))

(assert (= (and b!4202907 res!1726111) b!4202908))

(assert (= (and b!4202908 res!1726113) b!4202909))

(assert (= (and d!1239022 (not res!1726110)) b!4202910))

(assert (=> b!4202908 m!4790963))

(assert (=> b!4202908 m!4790963))

(assert (=> b!4202910 m!4790901))

(assert (=> b!4202910 m!4790901))

(assert (=> b!4202909 m!4790969))

(assert (=> b!4202909 m!4790969))

(assert (=> b!4202909 m!4790969))

(assert (=> b!4202909 m!4790969))

(declare-fun m!4791109 () Bool)

(assert (=> b!4202909 m!4791109))

(assert (=> b!4202565 d!1239022))

(declare-fun d!1239024 () Bool)

(assert (=> d!1239024 (isPrefix!4579 input!3517 input!3517)))

(declare-fun lt!1496871 () Unit!65289)

(declare-fun choose!25770 (List!46319 List!46319) Unit!65289)

(assert (=> d!1239024 (= lt!1496871 (choose!25770 input!3517 input!3517))))

(assert (=> d!1239024 (= (lemmaIsPrefixRefl!2996 input!3517 input!3517) lt!1496871)))

(declare-fun bs!597056 () Bool)

(assert (= bs!597056 d!1239024))

(assert (=> bs!597056 m!4790653))

(declare-fun m!4791111 () Bool)

(assert (=> bs!597056 m!4791111))

(assert (=> b!4202565 d!1239024))

(declare-fun d!1239026 () Bool)

(declare-fun list!16693 (Conc!13931) List!46319)

(assert (=> d!1239026 (= (list!16691 (charsOf!5143 tBis!41)) (list!16693 (c!716444 (charsOf!5143 tBis!41))))))

(declare-fun bs!597057 () Bool)

(assert (= bs!597057 d!1239026))

(declare-fun m!4791113 () Bool)

(assert (=> bs!597057 m!4791113))

(assert (=> b!4202566 d!1239026))

(declare-fun d!1239028 () Bool)

(declare-fun lt!1496874 () BalanceConc!27456)

(assert (=> d!1239028 (= (list!16691 lt!1496874) (originalCharacters!8102 tBis!41))))

(assert (=> d!1239028 (= lt!1496874 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))

(assert (=> d!1239028 (= (charsOf!5143 tBis!41) lt!1496874)))

(declare-fun b_lambda!123707 () Bool)

(assert (=> (not b_lambda!123707) (not d!1239028)))

(assert (=> d!1239028 t!347038))

(declare-fun b_and!330009 () Bool)

(assert (= b_and!329997 (and (=> t!347038 result!307070) b_and!330009)))

(assert (=> d!1239028 t!347040))

(declare-fun b_and!330011 () Bool)

(assert (= b_and!329999 (and (=> t!347040 result!307074) b_and!330011)))

(assert (=> d!1239028 t!347042))

(declare-fun b_and!330013 () Bool)

(assert (= b_and!330001 (and (=> t!347042 result!307076) b_and!330013)))

(assert (=> d!1239028 t!347044))

(declare-fun b_and!330015 () Bool)

(assert (= b_and!330003 (and (=> t!347044 result!307078) b_and!330015)))

(declare-fun m!4791115 () Bool)

(assert (=> d!1239028 m!4791115))

(assert (=> d!1239028 m!4790999))

(assert (=> b!4202566 d!1239028))

(declare-fun b!4202911 () Bool)

(declare-fun e!2609015 () Bool)

(declare-fun e!2609017 () Bool)

(assert (=> b!4202911 (= e!2609015 e!2609017)))

(declare-fun res!1726115 () Bool)

(assert (=> b!4202911 (=> (not res!1726115) (not e!2609017))))

(assert (=> b!4202911 (= res!1726115 (not ((_ is Nil!46195) input!3517)))))

(declare-fun b!4202912 () Bool)

(declare-fun res!1726117 () Bool)

(assert (=> b!4202912 (=> (not res!1726117) (not e!2609017))))

(assert (=> b!4202912 (= res!1726117 (= (head!8918 p!3001) (head!8918 input!3517)))))

(declare-fun b!4202914 () Bool)

(declare-fun e!2609016 () Bool)

(assert (=> b!4202914 (= e!2609016 (>= (size!33944 input!3517) (size!33944 p!3001)))))

(declare-fun b!4202913 () Bool)

(assert (=> b!4202913 (= e!2609017 (isPrefix!4579 (tail!6765 p!3001) (tail!6765 input!3517)))))

(declare-fun d!1239030 () Bool)

(assert (=> d!1239030 e!2609016))

(declare-fun res!1726114 () Bool)

(assert (=> d!1239030 (=> res!1726114 e!2609016)))

(declare-fun lt!1496875 () Bool)

(assert (=> d!1239030 (= res!1726114 (not lt!1496875))))

(assert (=> d!1239030 (= lt!1496875 e!2609015)))

(declare-fun res!1726116 () Bool)

(assert (=> d!1239030 (=> res!1726116 e!2609015)))

(assert (=> d!1239030 (= res!1726116 ((_ is Nil!46195) p!3001))))

(assert (=> d!1239030 (= (isPrefix!4579 p!3001 input!3517) lt!1496875)))

(assert (= (and d!1239030 (not res!1726116)) b!4202911))

(assert (= (and b!4202911 res!1726115) b!4202912))

(assert (= (and b!4202912 res!1726117) b!4202913))

(assert (= (and d!1239030 (not res!1726114)) b!4202914))

(declare-fun m!4791117 () Bool)

(assert (=> b!4202912 m!4791117))

(assert (=> b!4202912 m!4790963))

(assert (=> b!4202914 m!4790901))

(assert (=> b!4202914 m!4790951))

(declare-fun m!4791119 () Bool)

(assert (=> b!4202913 m!4791119))

(assert (=> b!4202913 m!4790969))

(assert (=> b!4202913 m!4791119))

(assert (=> b!4202913 m!4790969))

(declare-fun m!4791121 () Bool)

(assert (=> b!4202913 m!4791121))

(assert (=> b!4202553 d!1239030))

(declare-fun d!1239032 () Bool)

(assert (=> d!1239032 (= (isEmpty!27349 rules!3967) ((_ is Nil!46197) rules!3967))))

(assert (=> b!4202554 d!1239032))

(declare-fun b!4202915 () Bool)

(declare-fun e!2609020 () Bool)

(declare-fun e!2609019 () Bool)

(assert (=> b!4202915 (= e!2609020 e!2609019)))

(declare-fun c!716480 () Bool)

(assert (=> b!4202915 (= c!716480 ((_ is IntegerValue!23851) (value!240549 t!8364)))))

(declare-fun b!4202916 () Bool)

(assert (=> b!4202916 (= e!2609020 (inv!16 (value!240549 t!8364)))))

(declare-fun d!1239034 () Bool)

(declare-fun c!716479 () Bool)

(assert (=> d!1239034 (= c!716479 ((_ is IntegerValue!23850) (value!240549 t!8364)))))

(assert (=> d!1239034 (= (inv!21 (value!240549 t!8364)) e!2609020)))

(declare-fun b!4202917 () Bool)

(declare-fun e!2609018 () Bool)

(assert (=> b!4202917 (= e!2609018 (inv!15 (value!240549 t!8364)))))

(declare-fun b!4202918 () Bool)

(declare-fun res!1726118 () Bool)

(assert (=> b!4202918 (=> res!1726118 e!2609018)))

(assert (=> b!4202918 (= res!1726118 (not ((_ is IntegerValue!23852) (value!240549 t!8364))))))

(assert (=> b!4202918 (= e!2609019 e!2609018)))

(declare-fun b!4202919 () Bool)

(assert (=> b!4202919 (= e!2609019 (inv!17 (value!240549 t!8364)))))

(assert (= (and d!1239034 c!716479) b!4202916))

(assert (= (and d!1239034 (not c!716479)) b!4202915))

(assert (= (and b!4202915 c!716480) b!4202919))

(assert (= (and b!4202915 (not c!716480)) b!4202918))

(assert (= (and b!4202918 (not res!1726118)) b!4202917))

(declare-fun m!4791123 () Bool)

(assert (=> b!4202916 m!4791123))

(declare-fun m!4791125 () Bool)

(assert (=> b!4202917 m!4791125))

(declare-fun m!4791127 () Bool)

(assert (=> b!4202919 m!4791127))

(assert (=> b!4202557 d!1239034))

(declare-fun d!1239036 () Bool)

(assert (=> d!1239036 (= (inv!60761 (tag!8584 (rule!10818 t!8364))) (= (mod (str.len (value!240548 (tag!8584 (rule!10818 t!8364)))) 2) 0))))

(assert (=> b!4202556 d!1239036))

(declare-fun d!1239038 () Bool)

(declare-fun res!1726119 () Bool)

(declare-fun e!2609021 () Bool)

(assert (=> d!1239038 (=> (not res!1726119) (not e!2609021))))

(assert (=> d!1239038 (= res!1726119 (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 t!8364)))))))

(assert (=> d!1239038 (= (inv!60764 (transformation!7720 (rule!10818 t!8364))) e!2609021)))

(declare-fun b!4202920 () Bool)

(assert (=> b!4202920 (= e!2609021 (equivClasses!3249 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 t!8364)))))))

(assert (= (and d!1239038 res!1726119) b!4202920))

(declare-fun m!4791129 () Bool)

(assert (=> d!1239038 m!4791129))

(declare-fun m!4791131 () Bool)

(assert (=> b!4202920 m!4791131))

(assert (=> b!4202556 d!1239038))

(declare-fun d!1239040 () Bool)

(declare-fun res!1726122 () Bool)

(declare-fun e!2609024 () Bool)

(assert (=> d!1239040 (=> (not res!1726122) (not e!2609024))))

(declare-fun rulesValid!3018 (LexerInterface!7315 List!46321) Bool)

(assert (=> d!1239040 (= res!1726122 (rulesValid!3018 thiss!26544 rules!3967))))

(assert (=> d!1239040 (= (rulesInvariant!6526 thiss!26544 rules!3967) e!2609024)))

(declare-fun b!4202923 () Bool)

(declare-datatypes ((List!46323 0))(
  ( (Nil!46199) (Cons!46199 (h!51619 String!53620) (t!347062 List!46323)) )
))
(declare-fun noDuplicateTag!3179 (LexerInterface!7315 List!46321 List!46323) Bool)

(assert (=> b!4202923 (= e!2609024 (noDuplicateTag!3179 thiss!26544 rules!3967 Nil!46199))))

(assert (= (and d!1239040 res!1726122) b!4202923))

(declare-fun m!4791133 () Bool)

(assert (=> d!1239040 m!4791133))

(declare-fun m!4791135 () Bool)

(assert (=> b!4202923 m!4791135))

(assert (=> b!4202578 d!1239040))

(declare-fun b!4202942 () Bool)

(declare-fun res!1726139 () Bool)

(declare-fun e!2609031 () Bool)

(assert (=> b!4202942 (=> (not res!1726139) (not e!2609031))))

(declare-fun lt!1496890 () Option!9908)

(assert (=> b!4202942 (= res!1726139 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))) (_2!25109 (get!15024 lt!1496890))) input!3517))))

(declare-fun bm!292659 () Bool)

(declare-fun call!292664 () Option!9908)

(assert (=> bm!292659 (= call!292664 (maxPrefixOneRule!3310 thiss!26544 (h!51617 rules!3967) input!3517))))

(declare-fun b!4202943 () Bool)

(assert (=> b!4202943 (= e!2609031 (contains!9535 rules!3967 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))

(declare-fun b!4202944 () Bool)

(declare-fun res!1726137 () Bool)

(assert (=> b!4202944 (=> (not res!1726137) (not e!2609031))))

(assert (=> b!4202944 (= res!1726137 (< (size!33944 (_2!25109 (get!15024 lt!1496890))) (size!33944 input!3517)))))

(declare-fun b!4202946 () Bool)

(declare-fun e!2609032 () Option!9908)

(assert (=> b!4202946 (= e!2609032 call!292664)))

(declare-fun b!4202947 () Bool)

(declare-fun e!2609033 () Bool)

(assert (=> b!4202947 (= e!2609033 e!2609031)))

(declare-fun res!1726140 () Bool)

(assert (=> b!4202947 (=> (not res!1726140) (not e!2609031))))

(declare-fun isDefined!7370 (Option!9908) Bool)

(assert (=> b!4202947 (= res!1726140 (isDefined!7370 lt!1496890))))

(declare-fun b!4202948 () Bool)

(declare-fun res!1726141 () Bool)

(assert (=> b!4202948 (=> (not res!1726141) (not e!2609031))))

(assert (=> b!4202948 (= res!1726141 (matchR!6348 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))))))

(declare-fun b!4202949 () Bool)

(declare-fun res!1726142 () Bool)

(assert (=> b!4202949 (=> (not res!1726142) (not e!2609031))))

(assert (=> b!4202949 (= res!1726142 (= (value!240549 (_1!25109 (get!15024 lt!1496890))) (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890)))))))))

(declare-fun b!4202950 () Bool)

(declare-fun res!1726143 () Bool)

(assert (=> b!4202950 (=> (not res!1726143) (not e!2609031))))

(assert (=> b!4202950 (= res!1726143 (= (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))) (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890)))))))

(declare-fun d!1239042 () Bool)

(assert (=> d!1239042 e!2609033))

(declare-fun res!1726138 () Bool)

(assert (=> d!1239042 (=> res!1726138 e!2609033)))

(assert (=> d!1239042 (= res!1726138 (isEmpty!27352 lt!1496890))))

(assert (=> d!1239042 (= lt!1496890 e!2609032)))

(declare-fun c!716483 () Bool)

(assert (=> d!1239042 (= c!716483 (and ((_ is Cons!46197) rules!3967) ((_ is Nil!46197) (t!347020 rules!3967))))))

(declare-fun lt!1496886 () Unit!65289)

(declare-fun lt!1496888 () Unit!65289)

(assert (=> d!1239042 (= lt!1496886 lt!1496888)))

(assert (=> d!1239042 (isPrefix!4579 input!3517 input!3517)))

(assert (=> d!1239042 (= lt!1496888 (lemmaIsPrefixRefl!2996 input!3517 input!3517))))

(assert (=> d!1239042 (rulesValidInductive!2858 thiss!26544 rules!3967)))

(assert (=> d!1239042 (= (maxPrefix!4355 thiss!26544 rules!3967 input!3517) lt!1496890)))

(declare-fun b!4202945 () Bool)

(declare-fun lt!1496887 () Option!9908)

(declare-fun lt!1496889 () Option!9908)

(assert (=> b!4202945 (= e!2609032 (ite (and ((_ is None!9907) lt!1496887) ((_ is None!9907) lt!1496889)) None!9907 (ite ((_ is None!9907) lt!1496889) lt!1496887 (ite ((_ is None!9907) lt!1496887) lt!1496889 (ite (>= (size!33941 (_1!25109 (v!40761 lt!1496887))) (size!33941 (_1!25109 (v!40761 lt!1496889)))) lt!1496887 lt!1496889)))))))

(assert (=> b!4202945 (= lt!1496887 call!292664)))

(assert (=> b!4202945 (= lt!1496889 (maxPrefix!4355 thiss!26544 (t!347020 rules!3967) input!3517))))

(assert (= (and d!1239042 c!716483) b!4202946))

(assert (= (and d!1239042 (not c!716483)) b!4202945))

(assert (= (or b!4202946 b!4202945) bm!292659))

(assert (= (and d!1239042 (not res!1726138)) b!4202947))

(assert (= (and b!4202947 res!1726140) b!4202950))

(assert (= (and b!4202950 res!1726143) b!4202944))

(assert (= (and b!4202944 res!1726137) b!4202942))

(assert (= (and b!4202942 res!1726139) b!4202949))

(assert (= (and b!4202949 res!1726142) b!4202948))

(assert (= (and b!4202948 res!1726141) b!4202943))

(declare-fun m!4791137 () Bool)

(assert (=> b!4202950 m!4791137))

(declare-fun m!4791139 () Bool)

(assert (=> b!4202950 m!4791139))

(assert (=> b!4202950 m!4791139))

(declare-fun m!4791141 () Bool)

(assert (=> b!4202950 m!4791141))

(assert (=> b!4202949 m!4791137))

(declare-fun m!4791143 () Bool)

(assert (=> b!4202949 m!4791143))

(assert (=> b!4202949 m!4791143))

(declare-fun m!4791145 () Bool)

(assert (=> b!4202949 m!4791145))

(assert (=> b!4202942 m!4791137))

(assert (=> b!4202942 m!4791139))

(assert (=> b!4202942 m!4791139))

(assert (=> b!4202942 m!4791141))

(assert (=> b!4202942 m!4791141))

(declare-fun m!4791147 () Bool)

(assert (=> b!4202942 m!4791147))

(declare-fun m!4791149 () Bool)

(assert (=> d!1239042 m!4791149))

(assert (=> d!1239042 m!4790653))

(assert (=> d!1239042 m!4790655))

(declare-fun m!4791151 () Bool)

(assert (=> d!1239042 m!4791151))

(assert (=> bm!292659 m!4790661))

(assert (=> b!4202948 m!4791137))

(assert (=> b!4202948 m!4791139))

(assert (=> b!4202948 m!4791139))

(assert (=> b!4202948 m!4791141))

(assert (=> b!4202948 m!4791141))

(declare-fun m!4791153 () Bool)

(assert (=> b!4202948 m!4791153))

(declare-fun m!4791155 () Bool)

(assert (=> b!4202945 m!4791155))

(assert (=> b!4202943 m!4791137))

(declare-fun m!4791157 () Bool)

(assert (=> b!4202943 m!4791157))

(declare-fun m!4791159 () Bool)

(assert (=> b!4202947 m!4791159))

(assert (=> b!4202944 m!4791137))

(declare-fun m!4791161 () Bool)

(assert (=> b!4202944 m!4791161))

(assert (=> b!4202944 m!4790901))

(assert (=> b!4202567 d!1239042))

(declare-fun b!4202964 () Bool)

(declare-fun e!2609036 () Bool)

(declare-fun tp!1284357 () Bool)

(declare-fun tp!1284359 () Bool)

(assert (=> b!4202964 (= e!2609036 (and tp!1284357 tp!1284359))))

(declare-fun b!4202963 () Bool)

(declare-fun tp!1284358 () Bool)

(assert (=> b!4202963 (= e!2609036 tp!1284358)))

(declare-fun b!4202962 () Bool)

(declare-fun tp!1284360 () Bool)

(declare-fun tp!1284356 () Bool)

(assert (=> b!4202962 (= e!2609036 (and tp!1284360 tp!1284356))))

(declare-fun b!4202961 () Bool)

(assert (=> b!4202961 (= e!2609036 tp_is_empty!22217)))

(assert (=> b!4202571 (= tp!1284283 e!2609036)))

(assert (= (and b!4202571 ((_ is ElementMatch!12625) (regex!7720 rBis!178))) b!4202961))

(assert (= (and b!4202571 ((_ is Concat!20576) (regex!7720 rBis!178))) b!4202962))

(assert (= (and b!4202571 ((_ is Star!12625) (regex!7720 rBis!178))) b!4202963))

(assert (= (and b!4202571 ((_ is Union!12625) (regex!7720 rBis!178))) b!4202964))

(declare-fun b!4202968 () Bool)

(declare-fun e!2609037 () Bool)

(declare-fun tp!1284362 () Bool)

(declare-fun tp!1284364 () Bool)

(assert (=> b!4202968 (= e!2609037 (and tp!1284362 tp!1284364))))

(declare-fun b!4202967 () Bool)

(declare-fun tp!1284363 () Bool)

(assert (=> b!4202967 (= e!2609037 tp!1284363)))

(declare-fun b!4202966 () Bool)

(declare-fun tp!1284365 () Bool)

(declare-fun tp!1284361 () Bool)

(assert (=> b!4202966 (= e!2609037 (and tp!1284365 tp!1284361))))

(declare-fun b!4202965 () Bool)

(assert (=> b!4202965 (= e!2609037 tp_is_empty!22217)))

(assert (=> b!4202569 (= tp!1284271 e!2609037)))

(assert (= (and b!4202569 ((_ is ElementMatch!12625) (regex!7720 (rule!10818 tBis!41)))) b!4202965))

(assert (= (and b!4202569 ((_ is Concat!20576) (regex!7720 (rule!10818 tBis!41)))) b!4202966))

(assert (= (and b!4202569 ((_ is Star!12625) (regex!7720 (rule!10818 tBis!41)))) b!4202967))

(assert (= (and b!4202569 ((_ is Union!12625) (regex!7720 (rule!10818 tBis!41)))) b!4202968))

(declare-fun b!4202973 () Bool)

(declare-fun e!2609040 () Bool)

(declare-fun tp!1284368 () Bool)

(assert (=> b!4202973 (= e!2609040 (and tp_is_empty!22217 tp!1284368))))

(assert (=> b!4202570 (= tp!1284280 e!2609040)))

(assert (= (and b!4202570 ((_ is Cons!46195) (t!347018 suffix!1557))) b!4202973))

(declare-fun b!4202974 () Bool)

(declare-fun e!2609041 () Bool)

(declare-fun tp!1284369 () Bool)

(assert (=> b!4202974 (= e!2609041 (and tp_is_empty!22217 tp!1284369))))

(assert (=> b!4202574 (= tp!1284274 e!2609041)))

(assert (= (and b!4202574 ((_ is Cons!46195) (t!347018 input!3517))) b!4202974))

(declare-fun b!4202978 () Bool)

(declare-fun e!2609042 () Bool)

(declare-fun tp!1284371 () Bool)

(declare-fun tp!1284373 () Bool)

(assert (=> b!4202978 (= e!2609042 (and tp!1284371 tp!1284373))))

(declare-fun b!4202977 () Bool)

(declare-fun tp!1284372 () Bool)

(assert (=> b!4202977 (= e!2609042 tp!1284372)))

(declare-fun b!4202976 () Bool)

(declare-fun tp!1284374 () Bool)

(declare-fun tp!1284370 () Bool)

(assert (=> b!4202976 (= e!2609042 (and tp!1284374 tp!1284370))))

(declare-fun b!4202975 () Bool)

(assert (=> b!4202975 (= e!2609042 tp_is_empty!22217)))

(assert (=> b!4202563 (= tp!1284278 e!2609042)))

(assert (= (and b!4202563 ((_ is ElementMatch!12625) (regex!7720 (h!51617 rules!3967)))) b!4202975))

(assert (= (and b!4202563 ((_ is Concat!20576) (regex!7720 (h!51617 rules!3967)))) b!4202976))

(assert (= (and b!4202563 ((_ is Star!12625) (regex!7720 (h!51617 rules!3967)))) b!4202977))

(assert (= (and b!4202563 ((_ is Union!12625) (regex!7720 (h!51617 rules!3967)))) b!4202978))

(declare-fun b!4202989 () Bool)

(declare-fun b_free!122727 () Bool)

(declare-fun b_next!123431 () Bool)

(assert (=> b!4202989 (= b_free!122727 (not b_next!123431))))

(declare-fun tp!1284386 () Bool)

(declare-fun b_and!330017 () Bool)

(assert (=> b!4202989 (= tp!1284386 b_and!330017)))

(declare-fun b_free!122729 () Bool)

(declare-fun b_next!123433 () Bool)

(assert (=> b!4202989 (= b_free!122729 (not b_next!123433))))

(declare-fun t!347058 () Bool)

(declare-fun tb!251943 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) t!347058) tb!251943))

(declare-fun result!307104 () Bool)

(assert (= result!307104 result!307070))

(assert (=> b!4202800 t!347058))

(declare-fun tb!251945 () Bool)

(declare-fun t!347060 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) t!347060) tb!251945))

(declare-fun result!307106 () Bool)

(assert (= result!307106 result!307080))

(assert (=> b!4202807 t!347060))

(assert (=> d!1239028 t!347058))

(declare-fun b_and!330019 () Bool)

(declare-fun tp!1284383 () Bool)

(assert (=> b!4202989 (= tp!1284383 (and (=> t!347058 result!307104) (=> t!347060 result!307106) b_and!330019))))

(declare-fun e!2609052 () Bool)

(assert (=> b!4202989 (= e!2609052 (and tp!1284386 tp!1284383))))

(declare-fun tp!1284384 () Bool)

(declare-fun e!2609051 () Bool)

(declare-fun b!4202988 () Bool)

(assert (=> b!4202988 (= e!2609051 (and tp!1284384 (inv!60761 (tag!8584 (h!51617 (t!347020 rules!3967)))) (inv!60764 (transformation!7720 (h!51617 (t!347020 rules!3967)))) e!2609052))))

(declare-fun b!4202987 () Bool)

(declare-fun e!2609054 () Bool)

(declare-fun tp!1284385 () Bool)

(assert (=> b!4202987 (= e!2609054 (and e!2609051 tp!1284385))))

(assert (=> b!4202572 (= tp!1284270 e!2609054)))

(assert (= b!4202988 b!4202989))

(assert (= b!4202987 b!4202988))

(assert (= (and b!4202572 ((_ is Cons!46197) (t!347020 rules!3967))) b!4202987))

(declare-fun m!4791163 () Bool)

(assert (=> b!4202988 m!4791163))

(declare-fun m!4791165 () Bool)

(assert (=> b!4202988 m!4791165))

(declare-fun b!4202990 () Bool)

(declare-fun e!2609055 () Bool)

(declare-fun tp!1284387 () Bool)

(assert (=> b!4202990 (= e!2609055 (and tp_is_empty!22217 tp!1284387))))

(assert (=> b!4202551 (= tp!1284279 e!2609055)))

(assert (= (and b!4202551 ((_ is Cons!46195) (originalCharacters!8102 tBis!41))) b!4202990))

(declare-fun b!4202991 () Bool)

(declare-fun e!2609056 () Bool)

(declare-fun tp!1284388 () Bool)

(assert (=> b!4202991 (= e!2609056 (and tp_is_empty!22217 tp!1284388))))

(assert (=> b!4202555 (= tp!1284286 e!2609056)))

(assert (= (and b!4202555 ((_ is Cons!46195) (t!347018 suffixBis!41))) b!4202991))

(declare-fun b!4202992 () Bool)

(declare-fun e!2609057 () Bool)

(declare-fun tp!1284389 () Bool)

(assert (=> b!4202992 (= e!2609057 (and tp_is_empty!22217 tp!1284389))))

(assert (=> b!4202557 (= tp!1284285 e!2609057)))

(assert (= (and b!4202557 ((_ is Cons!46195) (originalCharacters!8102 t!8364))) b!4202992))

(declare-fun b!4202993 () Bool)

(declare-fun e!2609058 () Bool)

(declare-fun tp!1284390 () Bool)

(assert (=> b!4202993 (= e!2609058 (and tp_is_empty!22217 tp!1284390))))

(assert (=> b!4202558 (= tp!1284277 e!2609058)))

(assert (= (and b!4202558 ((_ is Cons!46195) (t!347018 pBis!121))) b!4202993))

(declare-fun b!4202997 () Bool)

(declare-fun e!2609059 () Bool)

(declare-fun tp!1284392 () Bool)

(declare-fun tp!1284394 () Bool)

(assert (=> b!4202997 (= e!2609059 (and tp!1284392 tp!1284394))))

(declare-fun b!4202996 () Bool)

(declare-fun tp!1284393 () Bool)

(assert (=> b!4202996 (= e!2609059 tp!1284393)))

(declare-fun b!4202995 () Bool)

(declare-fun tp!1284395 () Bool)

(declare-fun tp!1284391 () Bool)

(assert (=> b!4202995 (= e!2609059 (and tp!1284395 tp!1284391))))

(declare-fun b!4202994 () Bool)

(assert (=> b!4202994 (= e!2609059 tp_is_empty!22217)))

(assert (=> b!4202556 (= tp!1284275 e!2609059)))

(assert (= (and b!4202556 ((_ is ElementMatch!12625) (regex!7720 (rule!10818 t!8364)))) b!4202994))

(assert (= (and b!4202556 ((_ is Concat!20576) (regex!7720 (rule!10818 t!8364)))) b!4202995))

(assert (= (and b!4202556 ((_ is Star!12625) (regex!7720 (rule!10818 t!8364)))) b!4202996))

(assert (= (and b!4202556 ((_ is Union!12625) (regex!7720 (rule!10818 t!8364)))) b!4202997))

(declare-fun b!4202998 () Bool)

(declare-fun e!2609060 () Bool)

(declare-fun tp!1284396 () Bool)

(assert (=> b!4202998 (= e!2609060 (and tp_is_empty!22217 tp!1284396))))

(assert (=> b!4202577 (= tp!1284273 e!2609060)))

(assert (= (and b!4202577 ((_ is Cons!46195) (t!347018 p!3001))) b!4202998))

(declare-fun b_lambda!123709 () Bool)

(assert (= b_lambda!123707 (or (and b!4202568 b_free!122721 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) (and b!4202575 b_free!122713 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) (and b!4202564 b_free!122709 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) (and b!4202573 b_free!122717) (and b!4202989 b_free!122729 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) b_lambda!123709)))

(declare-fun b_lambda!123711 () Bool)

(assert (= b_lambda!123697 (or (and b!4202568 b_free!122721 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) (and b!4202575 b_free!122713 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) (and b!4202564 b_free!122709 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) (and b!4202573 b_free!122717) (and b!4202989 b_free!122729 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41))))) b_lambda!123711)))

(declare-fun b_lambda!123713 () Bool)

(assert (= b_lambda!123699 (or (and b!4202564 b_free!122709 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 t!8364))))) (and b!4202989 b_free!122729 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 t!8364))))) (and b!4202568 b_free!122721 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 t!8364))))) (and b!4202575 b_free!122713) (and b!4202573 b_free!122717 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 t!8364))))) b_lambda!123713)))

(check-sat (not b!4202912) (not d!1239008) (not b!4202967) (not b!4202794) (not b!4202784) (not b!4202919) (not d!1239020) (not b!4202920) (not b!4202945) (not b!4202816) b_and!329957 (not b!4202806) (not b!4202944) tp_is_empty!22217 (not d!1239038) b_and!330017 (not b!4202991) (not b!4202962) (not b!4202913) (not b!4202899) (not b!4202995) (not b!4202908) (not b!4202734) (not d!1238992) (not b!4202968) (not b_next!123421) (not b!4202963) (not b!4202800) (not b!4202894) (not d!1238942) b_and!330011 b_and!329961 (not b!4202895) b_and!330013 (not b!4202942) (not b!4202735) (not b!4202923) b_and!330015 (not b!4202903) (not b!4202950) (not b_next!123413) (not b!4202738) (not b!4202990) (not b!4202767) b_and!330009 (not b!4202900) (not b_lambda!123713) (not b!4202793) (not b_next!123425) (not b!4202809) (not b!4202808) (not b!4202739) (not d!1239028) (not b!4202807) (not b_lambda!123711) (not b!4202976) (not b!4202898) (not b!4202828) (not b_next!123419) (not b!4202988) (not b!4202785) (not d!1239026) (not b!4202998) (not b!4202909) (not b!4202993) (not b!4202997) (not b!4202916) (not b_next!123411) (not b!4202947) b_and!329953 (not bm!292659) (not d!1239024) (not b!4202740) (not b!4202943) (not b!4202987) (not b!4202772) (not b!4202996) (not b!4202910) (not b_next!123415) (not b!4202829) (not b_next!123431) (not b!4202831) (not b!4202901) (not b!4202992) (not b!4202917) (not b_next!123423) (not b!4202733) (not b!4202949) b_and!329949 (not d!1239004) (not tb!251931) (not b!4202801) (not d!1238994) (not d!1239002) (not b!4202906) (not b_next!123417) (not b!4202966) (not d!1238990) (not b!4202783) (not d!1238996) (not b!4202974) (not b!4202978) (not b!4202782) (not b!4202905) (not b!4202964) (not b!4202977) (not b!4202948) (not b!4202904) (not b!4202914) (not b!4202810) (not b_lambda!123709) (not b_next!123433) (not tb!251923) (not d!1238998) b_and!330019 (not b!4202973) (not d!1239042) (not b!4202736) (not b!4202741) (not d!1238984) (not d!1239040) (not b!4202790) (not d!1238980) (not b!4202768))
(check-sat b_and!329957 b_and!330017 (not b_next!123421) (not b_next!123425) (not b_next!123419) (not b_next!123411) b_and!329953 (not b_next!123417) (not b_next!123433) b_and!330019 b_and!330011 b_and!329961 b_and!330015 b_and!330013 (not b_next!123413) b_and!330009 (not b_next!123415) (not b_next!123431) b_and!329949 (not b_next!123423))
(get-model)

(declare-fun d!1239074 () Bool)

(declare-fun lt!1496921 () Int)

(assert (=> d!1239074 (>= lt!1496921 0)))

(declare-fun e!2609083 () Int)

(assert (=> d!1239074 (= lt!1496921 e!2609083)))

(declare-fun c!716493 () Bool)

(assert (=> d!1239074 (= c!716493 ((_ is Nil!46195) (_2!25109 (get!15024 lt!1496842))))))

(assert (=> d!1239074 (= (size!33944 (_2!25109 (get!15024 lt!1496842))) lt!1496921)))

(declare-fun b!4203036 () Bool)

(assert (=> b!4203036 (= e!2609083 0)))

(declare-fun b!4203037 () Bool)

(assert (=> b!4203037 (= e!2609083 (+ 1 (size!33944 (t!347018 (_2!25109 (get!15024 lt!1496842))))))))

(assert (= (and d!1239074 c!716493) b!4203036))

(assert (= (and d!1239074 (not c!716493)) b!4203037))

(declare-fun m!4791229 () Bool)

(assert (=> b!4203037 m!4791229))

(assert (=> b!4202738 d!1239074))

(declare-fun d!1239076 () Bool)

(assert (=> d!1239076 (= (get!15024 lt!1496842) (v!40761 lt!1496842))))

(assert (=> b!4202738 d!1239076))

(declare-fun d!1239078 () Bool)

(declare-fun lt!1496922 () Int)

(assert (=> d!1239078 (>= lt!1496922 0)))

(declare-fun e!2609084 () Int)

(assert (=> d!1239078 (= lt!1496922 e!2609084)))

(declare-fun c!716494 () Bool)

(assert (=> d!1239078 (= c!716494 ((_ is Nil!46195) input!3517))))

(assert (=> d!1239078 (= (size!33944 input!3517) lt!1496922)))

(declare-fun b!4203038 () Bool)

(assert (=> b!4203038 (= e!2609084 0)))

(declare-fun b!4203039 () Bool)

(assert (=> b!4203039 (= e!2609084 (+ 1 (size!33944 (t!347018 input!3517))))))

(assert (= (and d!1239078 c!716494) b!4203038))

(assert (= (and d!1239078 (not c!716494)) b!4203039))

(declare-fun m!4791231 () Bool)

(assert (=> b!4203039 m!4791231))

(assert (=> b!4202738 d!1239078))

(declare-fun d!1239080 () Bool)

(assert (=> d!1239080 (= (head!8918 p!3001) (h!51615 p!3001))))

(assert (=> b!4202912 d!1239080))

(declare-fun d!1239082 () Bool)

(assert (=> d!1239082 (= (head!8918 input!3517) (h!51615 input!3517))))

(assert (=> b!4202912 d!1239082))

(declare-fun d!1239084 () Bool)

(declare-fun charsToInt!0 (List!46320) (_ BitVec 32))

(assert (=> d!1239084 (= (inv!16 (value!240549 t!8364)) (= (charsToInt!0 (text!56097 (value!240549 t!8364))) (value!240540 (value!240549 t!8364))))))

(declare-fun bs!597062 () Bool)

(assert (= bs!597062 d!1239084))

(declare-fun m!4791233 () Bool)

(assert (=> bs!597062 m!4791233))

(assert (=> b!4202916 d!1239084))

(assert (=> bm!292659 d!1238942))

(assert (=> b!4202914 d!1239078))

(declare-fun d!1239086 () Bool)

(declare-fun lt!1496923 () Int)

(assert (=> d!1239086 (>= lt!1496923 0)))

(declare-fun e!2609085 () Int)

(assert (=> d!1239086 (= lt!1496923 e!2609085)))

(declare-fun c!716495 () Bool)

(assert (=> d!1239086 (= c!716495 ((_ is Nil!46195) p!3001))))

(assert (=> d!1239086 (= (size!33944 p!3001) lt!1496923)))

(declare-fun b!4203040 () Bool)

(assert (=> b!4203040 (= e!2609085 0)))

(declare-fun b!4203041 () Bool)

(assert (=> b!4203041 (= e!2609085 (+ 1 (size!33944 (t!347018 p!3001))))))

(assert (= (and d!1239086 c!716495) b!4203040))

(assert (= (and d!1239086 (not c!716495)) b!4203041))

(declare-fun m!4791235 () Bool)

(assert (=> b!4203041 m!4791235))

(assert (=> b!4202914 d!1239086))

(assert (=> b!4202740 d!1239076))

(declare-fun d!1239088 () Bool)

(declare-fun e!2609087 () Bool)

(assert (=> d!1239088 e!2609087))

(declare-fun res!1726160 () Bool)

(assert (=> d!1239088 (=> (not res!1726160) (not e!2609087))))

(declare-fun lt!1496924 () List!46319)

(assert (=> d!1239088 (= res!1726160 (= (content!7215 lt!1496924) ((_ map or) (content!7215 (t!347018 p!3001)) (content!7215 suffix!1557))))))

(declare-fun e!2609086 () List!46319)

(assert (=> d!1239088 (= lt!1496924 e!2609086)))

(declare-fun c!716496 () Bool)

(assert (=> d!1239088 (= c!716496 ((_ is Nil!46195) (t!347018 p!3001)))))

(assert (=> d!1239088 (= (++!11794 (t!347018 p!3001) suffix!1557) lt!1496924)))

(declare-fun b!4203042 () Bool)

(assert (=> b!4203042 (= e!2609086 suffix!1557)))

(declare-fun b!4203044 () Bool)

(declare-fun res!1726159 () Bool)

(assert (=> b!4203044 (=> (not res!1726159) (not e!2609087))))

(assert (=> b!4203044 (= res!1726159 (= (size!33944 lt!1496924) (+ (size!33944 (t!347018 p!3001)) (size!33944 suffix!1557))))))

(declare-fun b!4203045 () Bool)

(assert (=> b!4203045 (= e!2609087 (or (not (= suffix!1557 Nil!46195)) (= lt!1496924 (t!347018 p!3001))))))

(declare-fun b!4203043 () Bool)

(assert (=> b!4203043 (= e!2609086 (Cons!46195 (h!51615 (t!347018 p!3001)) (++!11794 (t!347018 (t!347018 p!3001)) suffix!1557)))))

(assert (= (and d!1239088 c!716496) b!4203042))

(assert (= (and d!1239088 (not c!716496)) b!4203043))

(assert (= (and d!1239088 res!1726160) b!4203044))

(assert (= (and b!4203044 res!1726159) b!4203045))

(declare-fun m!4791237 () Bool)

(assert (=> d!1239088 m!4791237))

(declare-fun m!4791239 () Bool)

(assert (=> d!1239088 m!4791239))

(assert (=> d!1239088 m!4790947))

(declare-fun m!4791241 () Bool)

(assert (=> b!4203044 m!4791241))

(assert (=> b!4203044 m!4791235))

(assert (=> b!4203044 m!4790953))

(declare-fun m!4791243 () Bool)

(assert (=> b!4203043 m!4791243))

(assert (=> b!4202767 d!1239088))

(declare-fun d!1239090 () Bool)

(assert (=> d!1239090 true))

(declare-fun lambda!129658 () Int)

(declare-fun order!24507 () Int)

(declare-fun order!24505 () Int)

(declare-fun dynLambda!19927 (Int Int) Int)

(declare-fun dynLambda!19928 (Int Int) Int)

(assert (=> d!1239090 (< (dynLambda!19927 order!24505 (toChars!10287 (transformation!7720 rBis!178))) (dynLambda!19928 order!24507 lambda!129658))))

(assert (=> d!1239090 true))

(declare-fun order!24509 () Int)

(declare-fun dynLambda!19929 (Int Int) Int)

(assert (=> d!1239090 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 rBis!178))) (dynLambda!19928 order!24507 lambda!129658))))

(declare-fun Forall!1574 (Int) Bool)

(assert (=> d!1239090 (= (semiInverseModEq!3350 (toChars!10287 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 rBis!178))) (Forall!1574 lambda!129658))))

(declare-fun bs!597063 () Bool)

(assert (= bs!597063 d!1239090))

(declare-fun m!4791245 () Bool)

(assert (=> bs!597063 m!4791245))

(assert (=> d!1238984 d!1239090))

(declare-fun d!1239092 () Bool)

(assert (=> d!1239092 (= (list!16691 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))) (list!16693 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))))

(declare-fun bs!597064 () Bool)

(assert (= bs!597064 d!1239092))

(declare-fun m!4791247 () Bool)

(assert (=> bs!597064 m!4791247))

(assert (=> b!4202800 d!1239092))

(declare-fun d!1239094 () Bool)

(declare-fun lt!1496927 () Int)

(assert (=> d!1239094 (>= lt!1496927 0)))

(declare-fun e!2609090 () Int)

(assert (=> d!1239094 (= lt!1496927 e!2609090)))

(declare-fun c!716497 () Bool)

(assert (=> d!1239094 (= c!716497 ((_ is Nil!46195) (_2!25109 (get!15024 lt!1496867))))))

(assert (=> d!1239094 (= (size!33944 (_2!25109 (get!15024 lt!1496867))) lt!1496927)))

(declare-fun b!4203052 () Bool)

(assert (=> b!4203052 (= e!2609090 0)))

(declare-fun b!4203053 () Bool)

(assert (=> b!4203053 (= e!2609090 (+ 1 (size!33944 (t!347018 (_2!25109 (get!15024 lt!1496867))))))))

(assert (= (and d!1239094 c!716497) b!4203052))

(assert (= (and d!1239094 (not c!716497)) b!4203053))

(declare-fun m!4791249 () Bool)

(assert (=> b!4203053 m!4791249))

(assert (=> b!4202903 d!1239094))

(declare-fun d!1239096 () Bool)

(assert (=> d!1239096 (= (get!15024 lt!1496867) (v!40761 lt!1496867))))

(assert (=> b!4202903 d!1239096))

(assert (=> b!4202903 d!1239078))

(declare-fun bs!597065 () Bool)

(declare-fun d!1239098 () Bool)

(assert (= bs!597065 (and d!1239098 d!1239090)))

(declare-fun lambda!129659 () Int)

(assert (=> bs!597065 (= (and (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 rBis!178))) (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 rBis!178)))) (= lambda!129659 lambda!129658))))

(assert (=> d!1239098 true))

(assert (=> d!1239098 (< (dynLambda!19927 order!24505 (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) (dynLambda!19928 order!24507 lambda!129659))))

(assert (=> d!1239098 true))

(assert (=> d!1239098 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (rule!10818 t!8364)))) (dynLambda!19928 order!24507 lambda!129659))))

(assert (=> d!1239098 (= (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 t!8364)))) (Forall!1574 lambda!129659))))

(declare-fun bs!597066 () Bool)

(assert (= bs!597066 d!1239098))

(declare-fun m!4791253 () Bool)

(assert (=> bs!597066 m!4791253))

(assert (=> d!1239038 d!1239098))

(assert (=> b!4202734 d!1239076))

(declare-fun d!1239100 () Bool)

(declare-fun dynLambda!19930 (Int BalanceConc!27456) TokenValue!7950)

(assert (=> d!1239100 (= (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842))))) (dynLambda!19930 (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842))))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842))))))))

(declare-fun b_lambda!123719 () Bool)

(assert (=> (not b_lambda!123719) (not d!1239100)))

(declare-fun t!347084 () Bool)

(declare-fun tb!251967 () Bool)

(assert (=> (and b!4202575 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347084) tb!251967))

(declare-fun result!307130 () Bool)

(assert (=> tb!251967 (= result!307130 (inv!21 (dynLambda!19930 (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842))))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))))))))

(declare-fun m!4791255 () Bool)

(assert (=> tb!251967 m!4791255))

(assert (=> d!1239100 t!347084))

(declare-fun b_and!330041 () Bool)

(assert (= b_and!329953 (and (=> t!347084 result!307130) b_and!330041)))

(declare-fun t!347086 () Bool)

(declare-fun tb!251969 () Bool)

(assert (=> (and b!4202568 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347086) tb!251969))

(declare-fun result!307134 () Bool)

(assert (= result!307134 result!307130))

(assert (=> d!1239100 t!347086))

(declare-fun b_and!330043 () Bool)

(assert (= b_and!329961 (and (=> t!347086 result!307134) b_and!330043)))

(declare-fun tb!251971 () Bool)

(declare-fun t!347088 () Bool)

(assert (=> (and b!4202989 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347088) tb!251971))

(declare-fun result!307136 () Bool)

(assert (= result!307136 result!307130))

(assert (=> d!1239100 t!347088))

(declare-fun b_and!330045 () Bool)

(assert (= b_and!330017 (and (=> t!347088 result!307136) b_and!330045)))

(declare-fun tb!251973 () Bool)

(declare-fun t!347090 () Bool)

(assert (=> (and b!4202573 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347090) tb!251973))

(declare-fun result!307138 () Bool)

(assert (= result!307138 result!307130))

(assert (=> d!1239100 t!347090))

(declare-fun b_and!330047 () Bool)

(assert (= b_and!329957 (and (=> t!347090 result!307138) b_and!330047)))

(declare-fun tb!251975 () Bool)

(declare-fun t!347092 () Bool)

(assert (=> (and b!4202564 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347092) tb!251975))

(declare-fun result!307140 () Bool)

(assert (= result!307140 result!307130))

(assert (=> d!1239100 t!347092))

(declare-fun b_and!330049 () Bool)

(assert (= b_and!329949 (and (=> t!347092 result!307140) b_and!330049)))

(assert (=> d!1239100 m!4790927))

(declare-fun m!4791259 () Bool)

(assert (=> d!1239100 m!4791259))

(assert (=> b!4202734 d!1239100))

(declare-fun d!1239106 () Bool)

(declare-fun fromListB!2630 (List!46319) BalanceConc!27456)

(assert (=> d!1239106 (= (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))) (fromListB!2630 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))))))

(declare-fun bs!597068 () Bool)

(assert (= bs!597068 d!1239106))

(declare-fun m!4791265 () Bool)

(assert (=> bs!597068 m!4791265))

(assert (=> b!4202734 d!1239106))

(declare-fun bs!597069 () Bool)

(declare-fun d!1239110 () Bool)

(assert (= bs!597069 (and d!1239110 d!1239008)))

(declare-fun lambda!129660 () Int)

(assert (=> bs!597069 (= lambda!129660 lambda!129649)))

(assert (=> d!1239110 true))

(declare-fun lt!1496935 () Bool)

(assert (=> d!1239110 (= lt!1496935 (forall!8486 (t!347020 (t!347020 rules!3967)) lambda!129660))))

(declare-fun e!2609099 () Bool)

(assert (=> d!1239110 (= lt!1496935 e!2609099)))

(declare-fun res!1726164 () Bool)

(assert (=> d!1239110 (=> res!1726164 e!2609099)))

(assert (=> d!1239110 (= res!1726164 (not ((_ is Cons!46197) (t!347020 (t!347020 rules!3967)))))))

(assert (=> d!1239110 (= (rulesValidInductive!2858 thiss!26544 (t!347020 (t!347020 rules!3967))) lt!1496935)))

(declare-fun b!4203063 () Bool)

(declare-fun e!2609098 () Bool)

(assert (=> b!4203063 (= e!2609099 e!2609098)))

(declare-fun res!1726165 () Bool)

(assert (=> b!4203063 (=> (not res!1726165) (not e!2609098))))

(assert (=> b!4203063 (= res!1726165 (ruleValid!3432 thiss!26544 (h!51617 (t!347020 (t!347020 rules!3967)))))))

(declare-fun b!4203064 () Bool)

(assert (=> b!4203064 (= e!2609098 (rulesValidInductive!2858 thiss!26544 (t!347020 (t!347020 (t!347020 rules!3967)))))))

(assert (= (and d!1239110 (not res!1726164)) b!4203063))

(assert (= (and b!4203063 res!1726165) b!4203064))

(declare-fun m!4791267 () Bool)

(assert (=> d!1239110 m!4791267))

(declare-fun m!4791269 () Bool)

(assert (=> b!4203063 m!4791269))

(declare-fun m!4791271 () Bool)

(assert (=> b!4203064 m!4791271))

(assert (=> b!4202895 d!1239110))

(declare-fun bs!597070 () Bool)

(declare-fun d!1239112 () Bool)

(assert (= bs!597070 (and d!1239112 d!1239090)))

(declare-fun lambda!129661 () Int)

(assert (=> bs!597070 (= (and (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 rBis!178))) (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 rBis!178)))) (= lambda!129661 lambda!129658))))

(declare-fun bs!597072 () Bool)

(assert (= bs!597072 (and d!1239112 d!1239098)))

(assert (=> bs!597072 (= (and (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (rule!10818 t!8364))))) (= lambda!129661 lambda!129659))))

(assert (=> d!1239112 true))

(assert (=> d!1239112 (< (dynLambda!19927 order!24505 (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) (dynLambda!19928 order!24507 lambda!129661))))

(assert (=> d!1239112 true))

(assert (=> d!1239112 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (dynLambda!19928 order!24507 lambda!129661))))

(assert (=> d!1239112 (= (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (Forall!1574 lambda!129661))))

(declare-fun bs!597073 () Bool)

(assert (= bs!597073 d!1239112))

(declare-fun m!4791275 () Bool)

(assert (=> bs!597073 m!4791275))

(assert (=> d!1239002 d!1239112))

(declare-fun b!4203067 () Bool)

(declare-fun e!2609101 () Bool)

(declare-fun e!2609103 () Bool)

(assert (=> b!4203067 (= e!2609101 e!2609103)))

(declare-fun res!1726167 () Bool)

(assert (=> b!4203067 (=> (not res!1726167) (not e!2609103))))

(assert (=> b!4203067 (= res!1726167 (not ((_ is Nil!46195) (tail!6765 input!3517))))))

(declare-fun b!4203068 () Bool)

(declare-fun res!1726169 () Bool)

(assert (=> b!4203068 (=> (not res!1726169) (not e!2609103))))

(assert (=> b!4203068 (= res!1726169 (= (head!8918 (tail!6765 pBis!121)) (head!8918 (tail!6765 input!3517))))))

(declare-fun b!4203070 () Bool)

(declare-fun e!2609102 () Bool)

(assert (=> b!4203070 (= e!2609102 (>= (size!33944 (tail!6765 input!3517)) (size!33944 (tail!6765 pBis!121))))))

(declare-fun b!4203069 () Bool)

(assert (=> b!4203069 (= e!2609103 (isPrefix!4579 (tail!6765 (tail!6765 pBis!121)) (tail!6765 (tail!6765 input!3517))))))

(declare-fun d!1239116 () Bool)

(assert (=> d!1239116 e!2609102))

(declare-fun res!1726166 () Bool)

(assert (=> d!1239116 (=> res!1726166 e!2609102)))

(declare-fun lt!1496937 () Bool)

(assert (=> d!1239116 (= res!1726166 (not lt!1496937))))

(assert (=> d!1239116 (= lt!1496937 e!2609101)))

(declare-fun res!1726168 () Bool)

(assert (=> d!1239116 (=> res!1726168 e!2609101)))

(assert (=> d!1239116 (= res!1726168 ((_ is Nil!46195) (tail!6765 pBis!121)))))

(assert (=> d!1239116 (= (isPrefix!4579 (tail!6765 pBis!121) (tail!6765 input!3517)) lt!1496937)))

(assert (= (and d!1239116 (not res!1726168)) b!4203067))

(assert (= (and b!4203067 res!1726167) b!4203068))

(assert (= (and b!4203068 res!1726169) b!4203069))

(assert (= (and d!1239116 (not res!1726166)) b!4203070))

(assert (=> b!4203068 m!4790967))

(declare-fun m!4791279 () Bool)

(assert (=> b!4203068 m!4791279))

(assert (=> b!4203068 m!4790969))

(declare-fun m!4791281 () Bool)

(assert (=> b!4203068 m!4791281))

(assert (=> b!4203070 m!4790969))

(declare-fun m!4791283 () Bool)

(assert (=> b!4203070 m!4791283))

(assert (=> b!4203070 m!4790967))

(declare-fun m!4791285 () Bool)

(assert (=> b!4203070 m!4791285))

(assert (=> b!4203069 m!4790967))

(declare-fun m!4791287 () Bool)

(assert (=> b!4203069 m!4791287))

(assert (=> b!4203069 m!4790969))

(declare-fun m!4791289 () Bool)

(assert (=> b!4203069 m!4791289))

(assert (=> b!4203069 m!4791287))

(assert (=> b!4203069 m!4791289))

(declare-fun m!4791291 () Bool)

(assert (=> b!4203069 m!4791291))

(assert (=> b!4202783 d!1239116))

(declare-fun d!1239120 () Bool)

(assert (=> d!1239120 (= (tail!6765 pBis!121) (t!347018 pBis!121))))

(assert (=> b!4202783 d!1239120))

(declare-fun d!1239122 () Bool)

(assert (=> d!1239122 (= (tail!6765 input!3517) (t!347018 input!3517))))

(assert (=> b!4202783 d!1239122))

(assert (=> b!4202905 d!1239096))

(declare-fun b!4203099 () Bool)

(declare-fun e!2609121 () Bool)

(assert (=> b!4203099 (= e!2609121 (= (head!8918 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) (c!716445 (regex!7720 (h!51617 rules!3967)))))))

(declare-fun b!4203100 () Bool)

(declare-fun e!2609122 () Bool)

(declare-fun lt!1496940 () Bool)

(assert (=> b!4203100 (= e!2609122 (not lt!1496940))))

(declare-fun b!4203101 () Bool)

(declare-fun res!1726193 () Bool)

(assert (=> b!4203101 (=> (not res!1726193) (not e!2609121))))

(declare-fun call!292667 () Bool)

(assert (=> b!4203101 (= res!1726193 (not call!292667))))

(declare-fun b!4203102 () Bool)

(declare-fun e!2609123 () Bool)

(assert (=> b!4203102 (= e!2609123 e!2609122)))

(declare-fun c!716508 () Bool)

(assert (=> b!4203102 (= c!716508 ((_ is EmptyLang!12625) (regex!7720 (h!51617 rules!3967))))))

(declare-fun b!4203103 () Bool)

(declare-fun e!2609120 () Bool)

(declare-fun derivativeStep!3829 (Regex!12625 C!25444) Regex!12625)

(assert (=> b!4203103 (= e!2609120 (matchR!6348 (derivativeStep!3829 (regex!7720 (h!51617 rules!3967)) (head!8918 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517))))) (tail!6765 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517))))))))

(declare-fun bm!292662 () Bool)

(assert (=> bm!292662 (= call!292667 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(declare-fun b!4203104 () Bool)

(declare-fun res!1726189 () Bool)

(declare-fun e!2609118 () Bool)

(assert (=> b!4203104 (=> res!1726189 e!2609118)))

(assert (=> b!4203104 (= res!1726189 e!2609121)))

(declare-fun res!1726190 () Bool)

(assert (=> b!4203104 (=> (not res!1726190) (not e!2609121))))

(assert (=> b!4203104 (= res!1726190 lt!1496940)))

(declare-fun b!4203105 () Bool)

(declare-fun e!2609124 () Bool)

(assert (=> b!4203105 (= e!2609124 (not (= (head!8918 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) (c!716445 (regex!7720 (h!51617 rules!3967))))))))

(declare-fun d!1239124 () Bool)

(assert (=> d!1239124 e!2609123))

(declare-fun c!716509 () Bool)

(assert (=> d!1239124 (= c!716509 ((_ is EmptyExpr!12625) (regex!7720 (h!51617 rules!3967))))))

(assert (=> d!1239124 (= lt!1496940 e!2609120)))

(declare-fun c!716510 () Bool)

(assert (=> d!1239124 (= c!716510 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (=> d!1239124 (validRegex!5728 (regex!7720 (h!51617 rules!3967)))))

(assert (=> d!1239124 (= (matchR!6348 (regex!7720 (h!51617 rules!3967)) (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) lt!1496940)))

(declare-fun b!4203106 () Bool)

(declare-fun e!2609119 () Bool)

(assert (=> b!4203106 (= e!2609118 e!2609119)))

(declare-fun res!1726191 () Bool)

(assert (=> b!4203106 (=> (not res!1726191) (not e!2609119))))

(assert (=> b!4203106 (= res!1726191 (not lt!1496940))))

(declare-fun b!4203107 () Bool)

(assert (=> b!4203107 (= e!2609120 (nullable!4441 (regex!7720 (h!51617 rules!3967))))))

(declare-fun b!4203108 () Bool)

(declare-fun res!1726188 () Bool)

(assert (=> b!4203108 (=> res!1726188 e!2609124)))

(assert (=> b!4203108 (= res!1726188 (not (isEmpty!27353 (tail!6765 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))))

(declare-fun b!4203109 () Bool)

(assert (=> b!4203109 (= e!2609123 (= lt!1496940 call!292667))))

(declare-fun b!4203110 () Bool)

(assert (=> b!4203110 (= e!2609119 e!2609124)))

(declare-fun res!1726186 () Bool)

(assert (=> b!4203110 (=> res!1726186 e!2609124)))

(assert (=> b!4203110 (= res!1726186 call!292667)))

(declare-fun b!4203111 () Bool)

(declare-fun res!1726187 () Bool)

(assert (=> b!4203111 (=> res!1726187 e!2609118)))

(assert (=> b!4203111 (= res!1726187 (not ((_ is ElementMatch!12625) (regex!7720 (h!51617 rules!3967)))))))

(assert (=> b!4203111 (= e!2609122 e!2609118)))

(declare-fun b!4203112 () Bool)

(declare-fun res!1726192 () Bool)

(assert (=> b!4203112 (=> (not res!1726192) (not e!2609121))))

(assert (=> b!4203112 (= res!1726192 (isEmpty!27353 (tail!6765 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517))))))))

(assert (= (and d!1239124 c!716510) b!4203107))

(assert (= (and d!1239124 (not c!716510)) b!4203103))

(assert (= (and d!1239124 c!716509) b!4203109))

(assert (= (and d!1239124 (not c!716509)) b!4203102))

(assert (= (and b!4203102 c!716508) b!4203100))

(assert (= (and b!4203102 (not c!716508)) b!4203111))

(assert (= (and b!4203111 (not res!1726187)) b!4203104))

(assert (= (and b!4203104 res!1726190) b!4203101))

(assert (= (and b!4203101 res!1726193) b!4203112))

(assert (= (and b!4203112 res!1726192) b!4203099))

(assert (= (and b!4203104 (not res!1726189)) b!4203106))

(assert (= (and b!4203106 res!1726191) b!4203110))

(assert (= (and b!4203110 (not res!1726186)) b!4203108))

(assert (= (and b!4203108 (not res!1726188)) b!4203105))

(assert (= (or b!4203109 b!4203101 b!4203110) bm!292662))

(declare-fun m!4791293 () Bool)

(assert (=> b!4203108 m!4791293))

(assert (=> b!4203108 m!4791293))

(declare-fun m!4791295 () Bool)

(assert (=> b!4203108 m!4791295))

(assert (=> bm!292662 m!4790931))

(assert (=> d!1239124 m!4790931))

(declare-fun m!4791297 () Bool)

(assert (=> d!1239124 m!4791297))

(assert (=> b!4203112 m!4791293))

(assert (=> b!4203112 m!4791293))

(assert (=> b!4203112 m!4791295))

(declare-fun m!4791299 () Bool)

(assert (=> b!4203103 m!4791299))

(assert (=> b!4203103 m!4791299))

(declare-fun m!4791301 () Bool)

(assert (=> b!4203103 m!4791301))

(assert (=> b!4203103 m!4791293))

(assert (=> b!4203103 m!4791301))

(assert (=> b!4203103 m!4791293))

(declare-fun m!4791303 () Bool)

(assert (=> b!4203103 m!4791303))

(assert (=> b!4203105 m!4791299))

(assert (=> b!4203099 m!4791299))

(declare-fun m!4791305 () Bool)

(assert (=> b!4203107 m!4791305))

(assert (=> b!4202736 d!1239124))

(declare-fun call!292722 () tuple2!43954)

(declare-fun lt!1497102 () List!46319)

(declare-fun bm!292712 () Bool)

(declare-fun call!292724 () Regex!12625)

(declare-fun call!292721 () List!46319)

(assert (=> bm!292712 (= call!292722 (findLongestMatchInner!1629 call!292724 lt!1497102 (+ (size!33944 Nil!46195) 1) call!292721 input!3517 (size!33944 input!3517)))))

(declare-fun bm!292713 () Bool)

(declare-fun call!292719 () C!25444)

(assert (=> bm!292713 (= call!292724 (derivativeStep!3829 (regex!7720 (h!51617 rules!3967)) call!292719))))

(declare-fun b!4203229 () Bool)

(declare-fun e!2609200 () tuple2!43954)

(declare-fun e!2609202 () tuple2!43954)

(assert (=> b!4203229 (= e!2609200 e!2609202)))

(declare-fun lt!1497119 () tuple2!43954)

(assert (=> b!4203229 (= lt!1497119 call!292722)))

(declare-fun c!716555 () Bool)

(assert (=> b!4203229 (= c!716555 (isEmpty!27353 (_1!25111 lt!1497119)))))

(declare-fun bm!292714 () Bool)

(declare-fun call!292718 () Bool)

(assert (=> bm!292714 (= call!292718 (isPrefix!4579 input!3517 input!3517))))

(declare-fun bm!292715 () Bool)

(assert (=> bm!292715 (= call!292721 (tail!6765 input!3517))))

(declare-fun b!4203230 () Bool)

(declare-fun e!2609197 () Unit!65289)

(declare-fun Unit!65294 () Unit!65289)

(assert (=> b!4203230 (= e!2609197 Unit!65294)))

(declare-fun lt!1497098 () Unit!65289)

(declare-fun call!292717 () Unit!65289)

(assert (=> b!4203230 (= lt!1497098 call!292717)))

(assert (=> b!4203230 call!292718))

(declare-fun lt!1497113 () Unit!65289)

(assert (=> b!4203230 (= lt!1497113 lt!1497098)))

(declare-fun lt!1497109 () Unit!65289)

(declare-fun call!292723 () Unit!65289)

(assert (=> b!4203230 (= lt!1497109 call!292723)))

(assert (=> b!4203230 (= input!3517 Nil!46195)))

(declare-fun lt!1497101 () Unit!65289)

(assert (=> b!4203230 (= lt!1497101 lt!1497109)))

(assert (=> b!4203230 false))

(declare-fun bm!292716 () Bool)

(assert (=> bm!292716 (= call!292717 (lemmaIsPrefixRefl!2996 input!3517 input!3517))))

(declare-fun b!4203231 () Bool)

(declare-fun Unit!65295 () Unit!65289)

(assert (=> b!4203231 (= e!2609197 Unit!65295)))

(declare-fun b!4203232 () Bool)

(declare-fun c!716557 () Bool)

(declare-fun call!292720 () Bool)

(assert (=> b!4203232 (= c!716557 call!292720)))

(declare-fun lt!1497118 () Unit!65289)

(declare-fun lt!1497110 () Unit!65289)

(assert (=> b!4203232 (= lt!1497118 lt!1497110)))

(declare-fun lt!1497104 () C!25444)

(declare-fun lt!1497108 () List!46319)

(assert (=> b!4203232 (= (++!11794 (++!11794 Nil!46195 (Cons!46195 lt!1497104 Nil!46195)) lt!1497108) input!3517)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1297 (List!46319 C!25444 List!46319 List!46319) Unit!65289)

(assert (=> b!4203232 (= lt!1497110 (lemmaMoveElementToOtherListKeepsConcatEq!1297 Nil!46195 lt!1497104 lt!1497108 input!3517))))

(assert (=> b!4203232 (= lt!1497108 (tail!6765 input!3517))))

(assert (=> b!4203232 (= lt!1497104 (head!8918 input!3517))))

(declare-fun lt!1497120 () Unit!65289)

(declare-fun lt!1497107 () Unit!65289)

(assert (=> b!4203232 (= lt!1497120 lt!1497107)))

(declare-fun getSuffix!2854 (List!46319 List!46319) List!46319)

(assert (=> b!4203232 (isPrefix!4579 (++!11794 Nil!46195 (Cons!46195 (head!8918 (getSuffix!2854 input!3517 Nil!46195)) Nil!46195)) input!3517)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!679 (List!46319 List!46319) Unit!65289)

(assert (=> b!4203232 (= lt!1497107 (lemmaAddHeadSuffixToPrefixStillPrefix!679 Nil!46195 input!3517))))

(declare-fun lt!1497095 () Unit!65289)

(declare-fun lt!1497114 () Unit!65289)

(assert (=> b!4203232 (= lt!1497095 lt!1497114)))

(assert (=> b!4203232 (= lt!1497114 (lemmaAddHeadSuffixToPrefixStillPrefix!679 Nil!46195 input!3517))))

(assert (=> b!4203232 (= lt!1497102 (++!11794 Nil!46195 (Cons!46195 (head!8918 input!3517) Nil!46195)))))

(declare-fun lt!1497115 () Unit!65289)

(assert (=> b!4203232 (= lt!1497115 e!2609197)))

(declare-fun c!716558 () Bool)

(assert (=> b!4203232 (= c!716558 (= (size!33944 Nil!46195) (size!33944 input!3517)))))

(declare-fun lt!1497105 () Unit!65289)

(declare-fun lt!1497112 () Unit!65289)

(assert (=> b!4203232 (= lt!1497105 lt!1497112)))

(assert (=> b!4203232 (<= (size!33944 Nil!46195) (size!33944 input!3517))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!591 (List!46319 List!46319) Unit!65289)

(assert (=> b!4203232 (= lt!1497112 (lemmaIsPrefixThenSmallerEqSize!591 Nil!46195 input!3517))))

(declare-fun e!2609203 () tuple2!43954)

(assert (=> b!4203232 (= e!2609203 e!2609200)))

(declare-fun bm!292717 () Bool)

(assert (=> bm!292717 (= call!292719 (head!8918 input!3517))))

(declare-fun b!4203234 () Bool)

(declare-fun c!716556 () Bool)

(assert (=> b!4203234 (= c!716556 call!292720)))

(declare-fun lt!1497099 () Unit!65289)

(declare-fun lt!1497117 () Unit!65289)

(assert (=> b!4203234 (= lt!1497099 lt!1497117)))

(assert (=> b!4203234 (= input!3517 Nil!46195)))

(assert (=> b!4203234 (= lt!1497117 call!292723)))

(declare-fun lt!1497094 () Unit!65289)

(declare-fun lt!1497103 () Unit!65289)

(assert (=> b!4203234 (= lt!1497094 lt!1497103)))

(assert (=> b!4203234 call!292718))

(assert (=> b!4203234 (= lt!1497103 call!292717)))

(declare-fun e!2609201 () tuple2!43954)

(assert (=> b!4203234 (= e!2609203 e!2609201)))

(declare-fun b!4203235 () Bool)

(declare-fun e!2609198 () tuple2!43954)

(assert (=> b!4203235 (= e!2609198 e!2609203)))

(declare-fun c!716554 () Bool)

(assert (=> b!4203235 (= c!716554 (= (size!33944 Nil!46195) (size!33944 input!3517)))))

(declare-fun b!4203236 () Bool)

(assert (=> b!4203236 (= e!2609198 (tuple2!43955 Nil!46195 input!3517))))

(declare-fun b!4203237 () Bool)

(assert (=> b!4203237 (= e!2609201 (tuple2!43955 Nil!46195 input!3517))))

(declare-fun b!4203238 () Bool)

(assert (=> b!4203238 (= e!2609200 call!292722)))

(declare-fun b!4203239 () Bool)

(assert (=> b!4203239 (= e!2609202 (tuple2!43955 Nil!46195 input!3517))))

(declare-fun bm!292718 () Bool)

(assert (=> bm!292718 (= call!292720 (nullable!4441 (regex!7720 (h!51617 rules!3967))))))

(declare-fun bm!292719 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1025 (List!46319 List!46319 List!46319) Unit!65289)

(assert (=> bm!292719 (= call!292723 (lemmaIsPrefixSameLengthThenSameList!1025 input!3517 Nil!46195 input!3517))))

(declare-fun b!4203240 () Bool)

(declare-fun e!2609204 () Bool)

(declare-fun e!2609199 () Bool)

(assert (=> b!4203240 (= e!2609204 e!2609199)))

(declare-fun res!1726224 () Bool)

(assert (=> b!4203240 (=> res!1726224 e!2609199)))

(declare-fun lt!1497111 () tuple2!43954)

(assert (=> b!4203240 (= res!1726224 (isEmpty!27353 (_1!25111 lt!1497111)))))

(declare-fun b!4203233 () Bool)

(assert (=> b!4203233 (= e!2609199 (>= (size!33944 (_1!25111 lt!1497111)) (size!33944 Nil!46195)))))

(declare-fun d!1239126 () Bool)

(assert (=> d!1239126 e!2609204))

(declare-fun res!1726223 () Bool)

(assert (=> d!1239126 (=> (not res!1726223) (not e!2609204))))

(assert (=> d!1239126 (= res!1726223 (= (++!11794 (_1!25111 lt!1497111) (_2!25111 lt!1497111)) input!3517))))

(assert (=> d!1239126 (= lt!1497111 e!2609198)))

(declare-fun c!716559 () Bool)

(declare-fun lostCause!1053 (Regex!12625) Bool)

(assert (=> d!1239126 (= c!716559 (lostCause!1053 (regex!7720 (h!51617 rules!3967))))))

(declare-fun lt!1497097 () Unit!65289)

(declare-fun Unit!65296 () Unit!65289)

(assert (=> d!1239126 (= lt!1497097 Unit!65296)))

(assert (=> d!1239126 (= (getSuffix!2854 input!3517 Nil!46195) input!3517)))

(declare-fun lt!1497106 () Unit!65289)

(declare-fun lt!1497096 () Unit!65289)

(assert (=> d!1239126 (= lt!1497106 lt!1497096)))

(declare-fun lt!1497100 () List!46319)

(assert (=> d!1239126 (= input!3517 lt!1497100)))

(declare-fun lemmaSamePrefixThenSameSuffix!2270 (List!46319 List!46319 List!46319 List!46319 List!46319) Unit!65289)

(assert (=> d!1239126 (= lt!1497096 (lemmaSamePrefixThenSameSuffix!2270 Nil!46195 input!3517 Nil!46195 lt!1497100 input!3517))))

(assert (=> d!1239126 (= lt!1497100 (getSuffix!2854 input!3517 Nil!46195))))

(declare-fun lt!1497093 () Unit!65289)

(declare-fun lt!1497116 () Unit!65289)

(assert (=> d!1239126 (= lt!1497093 lt!1497116)))

(assert (=> d!1239126 (isPrefix!4579 Nil!46195 (++!11794 Nil!46195 input!3517))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3058 (List!46319 List!46319) Unit!65289)

(assert (=> d!1239126 (= lt!1497116 (lemmaConcatTwoListThenFirstIsPrefix!3058 Nil!46195 input!3517))))

(assert (=> d!1239126 (validRegex!5728 (regex!7720 (h!51617 rules!3967)))))

(assert (=> d!1239126 (= (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)) lt!1497111)))

(declare-fun b!4203241 () Bool)

(assert (=> b!4203241 (= e!2609202 lt!1497119)))

(declare-fun b!4203242 () Bool)

(assert (=> b!4203242 (= e!2609201 (tuple2!43955 Nil!46195 Nil!46195))))

(assert (= (and d!1239126 c!716559) b!4203236))

(assert (= (and d!1239126 (not c!716559)) b!4203235))

(assert (= (and b!4203235 c!716554) b!4203234))

(assert (= (and b!4203235 (not c!716554)) b!4203232))

(assert (= (and b!4203234 c!716556) b!4203242))

(assert (= (and b!4203234 (not c!716556)) b!4203237))

(assert (= (and b!4203232 c!716558) b!4203230))

(assert (= (and b!4203232 (not c!716558)) b!4203231))

(assert (= (and b!4203232 c!716557) b!4203229))

(assert (= (and b!4203232 (not c!716557)) b!4203238))

(assert (= (and b!4203229 c!716555) b!4203239))

(assert (= (and b!4203229 (not c!716555)) b!4203241))

(assert (= (or b!4203229 b!4203238) bm!292717))

(assert (= (or b!4203229 b!4203238) bm!292715))

(assert (= (or b!4203229 b!4203238) bm!292713))

(assert (= (or b!4203229 b!4203238) bm!292712))

(assert (= (or b!4203234 b!4203230) bm!292716))

(assert (= (or b!4203234 b!4203232) bm!292718))

(assert (= (or b!4203234 b!4203230) bm!292714))

(assert (= (or b!4203234 b!4203230) bm!292719))

(assert (= (and d!1239126 res!1726223) b!4203240))

(assert (= (and b!4203240 (not res!1726224)) b!4203233))

(declare-fun m!4791415 () Bool)

(assert (=> b!4203233 m!4791415))

(assert (=> b!4203233 m!4790919))

(declare-fun m!4791417 () Bool)

(assert (=> b!4203229 m!4791417))

(assert (=> bm!292714 m!4790653))

(declare-fun m!4791419 () Bool)

(assert (=> bm!292719 m!4791419))

(declare-fun m!4791421 () Bool)

(assert (=> d!1239126 m!4791421))

(declare-fun m!4791423 () Bool)

(assert (=> d!1239126 m!4791423))

(declare-fun m!4791425 () Bool)

(assert (=> d!1239126 m!4791425))

(declare-fun m!4791427 () Bool)

(assert (=> d!1239126 m!4791427))

(declare-fun m!4791429 () Bool)

(assert (=> d!1239126 m!4791429))

(assert (=> d!1239126 m!4791425))

(declare-fun m!4791431 () Bool)

(assert (=> d!1239126 m!4791431))

(declare-fun m!4791433 () Bool)

(assert (=> d!1239126 m!4791433))

(assert (=> d!1239126 m!4791297))

(assert (=> bm!292712 m!4790901))

(declare-fun m!4791435 () Bool)

(assert (=> bm!292712 m!4791435))

(assert (=> bm!292718 m!4791305))

(assert (=> b!4203232 m!4791421))

(declare-fun m!4791437 () Bool)

(assert (=> b!4203232 m!4791437))

(declare-fun m!4791439 () Bool)

(assert (=> b!4203232 m!4791439))

(assert (=> b!4203232 m!4791421))

(declare-fun m!4791441 () Bool)

(assert (=> b!4203232 m!4791441))

(declare-fun m!4791443 () Bool)

(assert (=> b!4203232 m!4791443))

(declare-fun m!4791445 () Bool)

(assert (=> b!4203232 m!4791445))

(declare-fun m!4791447 () Bool)

(assert (=> b!4203232 m!4791447))

(assert (=> b!4203232 m!4790901))

(assert (=> b!4203232 m!4790963))

(declare-fun m!4791449 () Bool)

(assert (=> b!4203232 m!4791449))

(assert (=> b!4203232 m!4791437))

(assert (=> b!4203232 m!4790969))

(assert (=> b!4203232 m!4790919))

(declare-fun m!4791451 () Bool)

(assert (=> b!4203232 m!4791451))

(assert (=> b!4203232 m!4791443))

(declare-fun m!4791453 () Bool)

(assert (=> b!4203232 m!4791453))

(assert (=> bm!292716 m!4790655))

(declare-fun m!4791455 () Bool)

(assert (=> bm!292713 m!4791455))

(assert (=> bm!292715 m!4790969))

(assert (=> bm!292717 m!4790963))

(declare-fun m!4791457 () Bool)

(assert (=> b!4203240 m!4791457))

(assert (=> b!4202736 d!1239126))

(declare-fun d!1239166 () Bool)

(declare-fun lt!1497121 () Int)

(assert (=> d!1239166 (>= lt!1497121 0)))

(declare-fun e!2609205 () Int)

(assert (=> d!1239166 (= lt!1497121 e!2609205)))

(declare-fun c!716560 () Bool)

(assert (=> d!1239166 (= c!716560 ((_ is Nil!46195) Nil!46195))))

(assert (=> d!1239166 (= (size!33944 Nil!46195) lt!1497121)))

(declare-fun b!4203243 () Bool)

(assert (=> b!4203243 (= e!2609205 0)))

(declare-fun b!4203244 () Bool)

(assert (=> b!4203244 (= e!2609205 (+ 1 (size!33944 (t!347018 Nil!46195))))))

(assert (= (and d!1239166 c!716560) b!4203243))

(assert (= (and d!1239166 (not c!716560)) b!4203244))

(declare-fun m!4791459 () Bool)

(assert (=> b!4203244 m!4791459))

(assert (=> b!4202736 d!1239166))

(assert (=> b!4202736 d!1239078))

(declare-fun d!1239168 () Bool)

(declare-fun nullableFct!1221 (Regex!12625) Bool)

(assert (=> d!1239168 (= (nullable!4441 (regex!7720 rBis!178)) (nullableFct!1221 (regex!7720 rBis!178)))))

(declare-fun bs!597082 () Bool)

(assert (= bs!597082 d!1239168))

(declare-fun m!4791461 () Bool)

(assert (=> bs!597082 m!4791461))

(assert (=> b!4202790 d!1239168))

(declare-fun d!1239170 () Bool)

(declare-fun c!716569 () Bool)

(assert (=> d!1239170 (= c!716569 ((_ is Node!13931) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))))))

(declare-fun e!2609224 () Bool)

(assert (=> d!1239170 (= (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))) e!2609224)))

(declare-fun b!4203279 () Bool)

(declare-fun inv!60772 (Conc!13931) Bool)

(assert (=> b!4203279 (= e!2609224 (inv!60772 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))))))

(declare-fun b!4203280 () Bool)

(declare-fun e!2609225 () Bool)

(assert (=> b!4203280 (= e!2609224 e!2609225)))

(declare-fun res!1726243 () Bool)

(assert (=> b!4203280 (= res!1726243 (not ((_ is Leaf!21535) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))))))))

(assert (=> b!4203280 (=> res!1726243 e!2609225)))

(declare-fun b!4203281 () Bool)

(declare-fun inv!60773 (Conc!13931) Bool)

(assert (=> b!4203281 (= e!2609225 (inv!60773 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))))))

(assert (= (and d!1239170 c!716569) b!4203279))

(assert (= (and d!1239170 (not c!716569)) b!4203280))

(assert (= (and b!4203280 (not res!1726243)) b!4203281))

(declare-fun m!4791463 () Bool)

(assert (=> b!4203279 m!4791463))

(declare-fun m!4791465 () Bool)

(assert (=> b!4203281 m!4791465))

(assert (=> b!4202809 d!1239170))

(declare-fun d!1239172 () Bool)

(declare-fun res!1726248 () Bool)

(declare-fun e!2609230 () Bool)

(assert (=> d!1239172 (=> res!1726248 e!2609230)))

(assert (=> d!1239172 (= res!1726248 ((_ is Nil!46197) (t!347020 rules!3967)))))

(assert (=> d!1239172 (= (forall!8486 (t!347020 rules!3967) lambda!129649) e!2609230)))

(declare-fun b!4203286 () Bool)

(declare-fun e!2609231 () Bool)

(assert (=> b!4203286 (= e!2609230 e!2609231)))

(declare-fun res!1726249 () Bool)

(assert (=> b!4203286 (=> (not res!1726249) (not e!2609231))))

(declare-fun dynLambda!19931 (Int Rule!15240) Bool)

(assert (=> b!4203286 (= res!1726249 (dynLambda!19931 lambda!129649 (h!51617 (t!347020 rules!3967))))))

(declare-fun b!4203287 () Bool)

(assert (=> b!4203287 (= e!2609231 (forall!8486 (t!347020 (t!347020 rules!3967)) lambda!129649))))

(assert (= (and d!1239172 (not res!1726248)) b!4203286))

(assert (= (and b!4203286 res!1726249) b!4203287))

(declare-fun b_lambda!123725 () Bool)

(assert (=> (not b_lambda!123725) (not b!4203286)))

(declare-fun m!4791467 () Bool)

(assert (=> b!4203286 m!4791467))

(declare-fun m!4791469 () Bool)

(assert (=> b!4203287 m!4791469))

(assert (=> d!1239008 d!1239172))

(declare-fun d!1239174 () Bool)

(declare-fun e!2609233 () Bool)

(assert (=> d!1239174 e!2609233))

(declare-fun res!1726251 () Bool)

(assert (=> d!1239174 (=> (not res!1726251) (not e!2609233))))

(declare-fun lt!1497124 () List!46319)

(assert (=> d!1239174 (= res!1726251 (= (content!7215 lt!1497124) ((_ map or) (content!7215 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) (content!7215 (_2!25109 (get!15024 lt!1496867))))))))

(declare-fun e!2609232 () List!46319)

(assert (=> d!1239174 (= lt!1497124 e!2609232)))

(declare-fun c!716570 () Bool)

(assert (=> d!1239174 (= c!716570 ((_ is Nil!46195) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))))))

(assert (=> d!1239174 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))) (_2!25109 (get!15024 lt!1496867))) lt!1497124)))

(declare-fun b!4203288 () Bool)

(assert (=> b!4203288 (= e!2609232 (_2!25109 (get!15024 lt!1496867)))))

(declare-fun b!4203290 () Bool)

(declare-fun res!1726250 () Bool)

(assert (=> b!4203290 (=> (not res!1726250) (not e!2609233))))

(assert (=> b!4203290 (= res!1726250 (= (size!33944 lt!1497124) (+ (size!33944 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) (size!33944 (_2!25109 (get!15024 lt!1496867))))))))

(declare-fun b!4203291 () Bool)

(assert (=> b!4203291 (= e!2609233 (or (not (= (_2!25109 (get!15024 lt!1496867)) Nil!46195)) (= lt!1497124 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))))))))

(declare-fun b!4203289 () Bool)

(assert (=> b!4203289 (= e!2609232 (Cons!46195 (h!51615 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) (++!11794 (t!347018 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) (_2!25109 (get!15024 lt!1496867)))))))

(assert (= (and d!1239174 c!716570) b!4203288))

(assert (= (and d!1239174 (not c!716570)) b!4203289))

(assert (= (and d!1239174 res!1726251) b!4203290))

(assert (= (and b!4203290 res!1726250) b!4203291))

(declare-fun m!4791471 () Bool)

(assert (=> d!1239174 m!4791471))

(assert (=> d!1239174 m!4791075))

(declare-fun m!4791473 () Bool)

(assert (=> d!1239174 m!4791473))

(declare-fun m!4791475 () Bool)

(assert (=> d!1239174 m!4791475))

(declare-fun m!4791477 () Bool)

(assert (=> b!4203290 m!4791477))

(assert (=> b!4203290 m!4791075))

(declare-fun m!4791479 () Bool)

(assert (=> b!4203290 m!4791479))

(assert (=> b!4203290 m!4791071))

(declare-fun m!4791481 () Bool)

(assert (=> b!4203289 m!4791481))

(assert (=> b!4202898 d!1239174))

(declare-fun d!1239176 () Bool)

(assert (=> d!1239176 (= (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))) (list!16693 (c!716444 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))))))

(declare-fun bs!597083 () Bool)

(assert (= bs!597083 d!1239176))

(declare-fun m!4791483 () Bool)

(assert (=> bs!597083 m!4791483))

(assert (=> b!4202898 d!1239176))

(declare-fun d!1239178 () Bool)

(declare-fun lt!1497126 () BalanceConc!27456)

(assert (=> d!1239178 (= (list!16691 lt!1497126) (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867))))))

(assert (=> d!1239178 (= lt!1497126 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867))))) (value!240549 (_1!25109 (get!15024 lt!1496867)))))))

(assert (=> d!1239178 (= (charsOf!5143 (_1!25109 (get!15024 lt!1496867))) lt!1497126)))

(declare-fun b_lambda!123727 () Bool)

(assert (=> (not b_lambda!123727) (not d!1239178)))

(declare-fun tb!251987 () Bool)

(declare-fun t!347104 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347104) tb!251987))

(declare-fun b!4203306 () Bool)

(declare-fun e!2609241 () Bool)

(declare-fun tp!1284399 () Bool)

(assert (=> b!4203306 (= e!2609241 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867))))) (value!240549 (_1!25109 (get!15024 lt!1496867)))))) tp!1284399))))

(declare-fun result!307152 () Bool)

(assert (=> tb!251987 (= result!307152 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867))))) (value!240549 (_1!25109 (get!15024 lt!1496867))))) e!2609241))))

(assert (= tb!251987 b!4203306))

(declare-fun m!4791495 () Bool)

(assert (=> b!4203306 m!4791495))

(declare-fun m!4791499 () Bool)

(assert (=> tb!251987 m!4791499))

(assert (=> d!1239178 t!347104))

(declare-fun b_and!330071 () Bool)

(assert (= b_and!330015 (and (=> t!347104 result!307152) b_and!330071)))

(declare-fun tb!251989 () Bool)

(declare-fun t!347106 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347106) tb!251989))

(declare-fun result!307154 () Bool)

(assert (= result!307154 result!307152))

(assert (=> d!1239178 t!347106))

(declare-fun b_and!330073 () Bool)

(assert (= b_and!330013 (and (=> t!347106 result!307154) b_and!330073)))

(declare-fun tb!251991 () Bool)

(declare-fun t!347108 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347108) tb!251991))

(declare-fun result!307156 () Bool)

(assert (= result!307156 result!307152))

(assert (=> d!1239178 t!347108))

(declare-fun b_and!330075 () Bool)

(assert (= b_and!330009 (and (=> t!347108 result!307156) b_and!330075)))

(declare-fun t!347110 () Bool)

(declare-fun tb!251993 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347110) tb!251993))

(declare-fun result!307158 () Bool)

(assert (= result!307158 result!307152))

(assert (=> d!1239178 t!347110))

(declare-fun b_and!330077 () Bool)

(assert (= b_and!330011 (and (=> t!347110 result!307158) b_and!330077)))

(declare-fun t!347112 () Bool)

(declare-fun tb!251995 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347112) tb!251995))

(declare-fun result!307160 () Bool)

(assert (= result!307160 result!307152))

(assert (=> d!1239178 t!347112))

(declare-fun b_and!330079 () Bool)

(assert (= b_and!330019 (and (=> t!347112 result!307160) b_and!330079)))

(declare-fun m!4791505 () Bool)

(assert (=> d!1239178 m!4791505))

(declare-fun m!4791507 () Bool)

(assert (=> d!1239178 m!4791507))

(assert (=> b!4202898 d!1239178))

(assert (=> b!4202898 d!1239096))

(declare-fun d!1239182 () Bool)

(assert (=> d!1239182 (= (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))) (list!16693 (c!716444 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))))))

(declare-fun bs!597084 () Bool)

(assert (= bs!597084 d!1239182))

(declare-fun m!4791509 () Bool)

(assert (=> bs!597084 m!4791509))

(assert (=> b!4202950 d!1239182))

(declare-fun d!1239186 () Bool)

(declare-fun lt!1497127 () BalanceConc!27456)

(assert (=> d!1239186 (= (list!16691 lt!1497127) (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890))))))

(assert (=> d!1239186 (= lt!1497127 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))) (value!240549 (_1!25109 (get!15024 lt!1496890)))))))

(assert (=> d!1239186 (= (charsOf!5143 (_1!25109 (get!15024 lt!1496890))) lt!1497127)))

(declare-fun b_lambda!123729 () Bool)

(assert (=> (not b_lambda!123729) (not d!1239186)))

(declare-fun t!347114 () Bool)

(declare-fun tb!251997 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347114) tb!251997))

(declare-fun b!4203307 () Bool)

(declare-fun e!2609242 () Bool)

(declare-fun tp!1284400 () Bool)

(assert (=> b!4203307 (= e!2609242 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))) (value!240549 (_1!25109 (get!15024 lt!1496890)))))) tp!1284400))))

(declare-fun result!307162 () Bool)

(assert (=> tb!251997 (= result!307162 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))) (value!240549 (_1!25109 (get!15024 lt!1496890))))) e!2609242))))

(assert (= tb!251997 b!4203307))

(declare-fun m!4791513 () Bool)

(assert (=> b!4203307 m!4791513))

(declare-fun m!4791515 () Bool)

(assert (=> tb!251997 m!4791515))

(assert (=> d!1239186 t!347114))

(declare-fun b_and!330081 () Bool)

(assert (= b_and!330075 (and (=> t!347114 result!307162) b_and!330081)))

(declare-fun tb!252001 () Bool)

(declare-fun t!347118 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347118) tb!252001))

(declare-fun result!307166 () Bool)

(assert (= result!307166 result!307162))

(assert (=> d!1239186 t!347118))

(declare-fun b_and!330083 () Bool)

(assert (= b_and!330073 (and (=> t!347118 result!307166) b_and!330083)))

(declare-fun t!347120 () Bool)

(declare-fun tb!252003 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347120) tb!252003))

(declare-fun result!307168 () Bool)

(assert (= result!307168 result!307162))

(assert (=> d!1239186 t!347120))

(declare-fun b_and!330087 () Bool)

(assert (= b_and!330079 (and (=> t!347120 result!307168) b_and!330087)))

(declare-fun t!347124 () Bool)

(declare-fun tb!252007 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347124) tb!252007))

(declare-fun result!307172 () Bool)

(assert (= result!307172 result!307162))

(assert (=> d!1239186 t!347124))

(declare-fun b_and!330091 () Bool)

(assert (= b_and!330077 (and (=> t!347124 result!307172) b_and!330091)))

(declare-fun t!347128 () Bool)

(declare-fun tb!252011 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347128) tb!252011))

(declare-fun result!307176 () Bool)

(assert (= result!307176 result!307162))

(assert (=> d!1239186 t!347128))

(declare-fun b_and!330095 () Bool)

(assert (= b_and!330071 (and (=> t!347128 result!307176) b_and!330095)))

(declare-fun m!4791521 () Bool)

(assert (=> d!1239186 m!4791521))

(declare-fun m!4791523 () Bool)

(assert (=> d!1239186 m!4791523))

(assert (=> b!4202950 d!1239186))

(declare-fun d!1239190 () Bool)

(assert (=> d!1239190 (= (get!15024 lt!1496890) (v!40761 lt!1496890))))

(assert (=> b!4202950 d!1239190))

(assert (=> b!4202900 d!1239096))

(declare-fun d!1239192 () Bool)

(declare-fun lt!1497129 () Int)

(assert (=> d!1239192 (>= lt!1497129 0)))

(declare-fun e!2609244 () Int)

(assert (=> d!1239192 (= lt!1497129 e!2609244)))

(declare-fun c!716574 () Bool)

(assert (=> d!1239192 (= c!716574 ((_ is Nil!46195) (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))))))

(assert (=> d!1239192 (= (size!33944 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))) lt!1497129)))

(declare-fun b!4203309 () Bool)

(assert (=> b!4203309 (= e!2609244 0)))

(declare-fun b!4203310 () Bool)

(assert (=> b!4203310 (= e!2609244 (+ 1 (size!33944 (t!347018 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))))))))

(assert (= (and d!1239192 c!716574) b!4203309))

(assert (= (and d!1239192 (not c!716574)) b!4203310))

(declare-fun m!4791531 () Bool)

(assert (=> b!4203310 m!4791531))

(assert (=> b!4202900 d!1239192))

(declare-fun d!1239198 () Bool)

(assert (=> d!1239198 (= (isEmpty!27352 lt!1496842) (not ((_ is Some!9907) lt!1496842)))))

(assert (=> d!1238942 d!1239198))

(declare-fun d!1239200 () Bool)

(assert (=> d!1239200 (= (isEmpty!27353 (_1!25111 lt!1496841)) ((_ is Nil!46195) (_1!25111 lt!1496841)))))

(assert (=> d!1238942 d!1239200))

(declare-fun d!1239202 () Bool)

(declare-fun lt!1497165 () tuple2!43954)

(assert (=> d!1239202 (= (++!11794 (_1!25111 lt!1497165) (_2!25111 lt!1497165)) input!3517)))

(declare-fun sizeTr!316 (List!46319 Int) Int)

(assert (=> d!1239202 (= lt!1497165 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 0 input!3517 input!3517 (sizeTr!316 input!3517 0)))))

(declare-fun lt!1497162 () Unit!65289)

(declare-fun lt!1497164 () Unit!65289)

(assert (=> d!1239202 (= lt!1497162 lt!1497164)))

(declare-fun lt!1497160 () List!46319)

(declare-fun lt!1497161 () Int)

(assert (=> d!1239202 (= (sizeTr!316 lt!1497160 lt!1497161) (+ (size!33944 lt!1497160) lt!1497161))))

(declare-fun lemmaSizeTrEqualsSize!315 (List!46319 Int) Unit!65289)

(assert (=> d!1239202 (= lt!1497164 (lemmaSizeTrEqualsSize!315 lt!1497160 lt!1497161))))

(assert (=> d!1239202 (= lt!1497161 0)))

(assert (=> d!1239202 (= lt!1497160 Nil!46195)))

(declare-fun lt!1497167 () Unit!65289)

(declare-fun lt!1497166 () Unit!65289)

(assert (=> d!1239202 (= lt!1497167 lt!1497166)))

(declare-fun lt!1497163 () Int)

(assert (=> d!1239202 (= (sizeTr!316 input!3517 lt!1497163) (+ (size!33944 input!3517) lt!1497163))))

(assert (=> d!1239202 (= lt!1497166 (lemmaSizeTrEqualsSize!315 input!3517 lt!1497163))))

(assert (=> d!1239202 (= lt!1497163 0)))

(assert (=> d!1239202 (validRegex!5728 (regex!7720 (h!51617 rules!3967)))))

(assert (=> d!1239202 (= (findLongestMatch!1542 (regex!7720 (h!51617 rules!3967)) input!3517) lt!1497165)))

(declare-fun bs!597091 () Bool)

(assert (= bs!597091 d!1239202))

(declare-fun m!4791617 () Bool)

(assert (=> bs!597091 m!4791617))

(assert (=> bs!597091 m!4790901))

(declare-fun m!4791619 () Bool)

(assert (=> bs!597091 m!4791619))

(declare-fun m!4791621 () Bool)

(assert (=> bs!597091 m!4791621))

(declare-fun m!4791623 () Bool)

(assert (=> bs!597091 m!4791623))

(declare-fun m!4791625 () Bool)

(assert (=> bs!597091 m!4791625))

(declare-fun m!4791627 () Bool)

(assert (=> bs!597091 m!4791627))

(assert (=> bs!597091 m!4791619))

(declare-fun m!4791629 () Bool)

(assert (=> bs!597091 m!4791629))

(declare-fun m!4791631 () Bool)

(assert (=> bs!597091 m!4791631))

(assert (=> bs!597091 m!4791297))

(assert (=> d!1238942 d!1239202))

(declare-fun d!1239234 () Bool)

(declare-fun res!1726291 () Bool)

(declare-fun e!2609273 () Bool)

(assert (=> d!1239234 (=> (not res!1726291) (not e!2609273))))

(assert (=> d!1239234 (= res!1726291 (validRegex!5728 (regex!7720 (h!51617 rules!3967))))))

(assert (=> d!1239234 (= (ruleValid!3432 thiss!26544 (h!51617 rules!3967)) e!2609273)))

(declare-fun b!4203363 () Bool)

(declare-fun res!1726292 () Bool)

(assert (=> b!4203363 (=> (not res!1726292) (not e!2609273))))

(assert (=> b!4203363 (= res!1726292 (not (nullable!4441 (regex!7720 (h!51617 rules!3967)))))))

(declare-fun b!4203364 () Bool)

(assert (=> b!4203364 (= e!2609273 (not (= (tag!8584 (h!51617 rules!3967)) (String!53621 ""))))))

(assert (= (and d!1239234 res!1726291) b!4203363))

(assert (= (and b!4203363 res!1726292) b!4203364))

(assert (=> d!1239234 m!4791297))

(assert (=> b!4203363 m!4791305))

(assert (=> d!1238942 d!1239234))

(declare-fun d!1239240 () Bool)

(declare-fun c!716593 () Bool)

(assert (=> d!1239240 (= c!716593 ((_ is Nil!46195) lt!1496850))))

(declare-fun e!2609284 () (InoxSet C!25444))

(assert (=> d!1239240 (= (content!7215 lt!1496850) e!2609284)))

(declare-fun b!4203383 () Bool)

(assert (=> b!4203383 (= e!2609284 ((as const (Array C!25444 Bool)) false))))

(declare-fun b!4203384 () Bool)

(assert (=> b!4203384 (= e!2609284 ((_ map or) (store ((as const (Array C!25444 Bool)) false) (h!51615 lt!1496850) true) (content!7215 (t!347018 lt!1496850))))))

(assert (= (and d!1239240 c!716593) b!4203383))

(assert (= (and d!1239240 (not c!716593)) b!4203384))

(declare-fun m!4791651 () Bool)

(assert (=> b!4203384 m!4791651))

(declare-fun m!4791653 () Bool)

(assert (=> b!4203384 m!4791653))

(assert (=> d!1238980 d!1239240))

(declare-fun d!1239244 () Bool)

(declare-fun c!716596 () Bool)

(assert (=> d!1239244 (= c!716596 ((_ is Nil!46195) p!3001))))

(declare-fun e!2609292 () (InoxSet C!25444))

(assert (=> d!1239244 (= (content!7215 p!3001) e!2609292)))

(declare-fun b!4203399 () Bool)

(assert (=> b!4203399 (= e!2609292 ((as const (Array C!25444 Bool)) false))))

(declare-fun b!4203400 () Bool)

(assert (=> b!4203400 (= e!2609292 ((_ map or) (store ((as const (Array C!25444 Bool)) false) (h!51615 p!3001) true) (content!7215 (t!347018 p!3001))))))

(assert (= (and d!1239244 c!716596) b!4203399))

(assert (= (and d!1239244 (not c!716596)) b!4203400))

(declare-fun m!4791655 () Bool)

(assert (=> b!4203400 m!4791655))

(assert (=> b!4203400 m!4791239))

(assert (=> d!1238980 d!1239244))

(declare-fun d!1239246 () Bool)

(declare-fun c!716597 () Bool)

(assert (=> d!1239246 (= c!716597 ((_ is Nil!46195) suffix!1557))))

(declare-fun e!2609293 () (InoxSet C!25444))

(assert (=> d!1239246 (= (content!7215 suffix!1557) e!2609293)))

(declare-fun b!4203401 () Bool)

(assert (=> b!4203401 (= e!2609293 ((as const (Array C!25444 Bool)) false))))

(declare-fun b!4203402 () Bool)

(assert (=> b!4203402 (= e!2609293 ((_ map or) (store ((as const (Array C!25444 Bool)) false) (h!51615 suffix!1557) true) (content!7215 (t!347018 suffix!1557))))))

(assert (= (and d!1239246 c!716597) b!4203401))

(assert (= (and d!1239246 (not c!716597)) b!4203402))

(declare-fun m!4791657 () Bool)

(assert (=> b!4203402 m!4791657))

(declare-fun m!4791659 () Bool)

(assert (=> b!4203402 m!4791659))

(assert (=> d!1238980 d!1239246))

(declare-fun d!1239248 () Bool)

(declare-fun isBalanced!3742 (Conc!13931) Bool)

(assert (=> d!1239248 (= (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))) (isBalanced!3742 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))))))

(declare-fun bs!597092 () Bool)

(assert (= bs!597092 d!1239248))

(declare-fun m!4791667 () Bool)

(assert (=> bs!597092 m!4791667))

(assert (=> tb!251931 d!1239248))

(assert (=> d!1239024 d!1239022))

(declare-fun d!1239250 () Bool)

(assert (=> d!1239250 (isPrefix!4579 input!3517 input!3517)))

(assert (=> d!1239250 true))

(declare-fun _$45!2078 () Unit!65289)

(assert (=> d!1239250 (= (choose!25770 input!3517 input!3517) _$45!2078)))

(declare-fun bs!597093 () Bool)

(assert (= bs!597093 d!1239250))

(assert (=> bs!597093 m!4790653))

(assert (=> d!1239024 d!1239250))

(declare-fun d!1239256 () Bool)

(declare-fun lt!1497199 () Int)

(assert (=> d!1239256 (>= lt!1497199 0)))

(declare-fun e!2609297 () Int)

(assert (=> d!1239256 (= lt!1497199 e!2609297)))

(declare-fun c!716599 () Bool)

(assert (=> d!1239256 (= c!716599 ((_ is Nil!46195) lt!1496854))))

(assert (=> d!1239256 (= (size!33944 lt!1496854) lt!1497199)))

(declare-fun b!4203409 () Bool)

(assert (=> b!4203409 (= e!2609297 0)))

(declare-fun b!4203410 () Bool)

(assert (=> b!4203410 (= e!2609297 (+ 1 (size!33944 (t!347018 lt!1496854))))))

(assert (= (and d!1239256 c!716599) b!4203409))

(assert (= (and d!1239256 (not c!716599)) b!4203410))

(declare-fun m!4791689 () Bool)

(assert (=> b!4203410 m!4791689))

(assert (=> b!4202794 d!1239256))

(declare-fun d!1239258 () Bool)

(declare-fun lt!1497200 () Int)

(assert (=> d!1239258 (>= lt!1497200 0)))

(declare-fun e!2609298 () Int)

(assert (=> d!1239258 (= lt!1497200 e!2609298)))

(declare-fun c!716600 () Bool)

(assert (=> d!1239258 (= c!716600 ((_ is Nil!46195) pBis!121))))

(assert (=> d!1239258 (= (size!33944 pBis!121) lt!1497200)))

(declare-fun b!4203411 () Bool)

(assert (=> b!4203411 (= e!2609298 0)))

(declare-fun b!4203412 () Bool)

(assert (=> b!4203412 (= e!2609298 (+ 1 (size!33944 (t!347018 pBis!121))))))

(assert (= (and d!1239258 c!716600) b!4203411))

(assert (= (and d!1239258 (not c!716600)) b!4203412))

(declare-fun m!4791693 () Bool)

(assert (=> b!4203412 m!4791693))

(assert (=> b!4202794 d!1239258))

(declare-fun d!1239260 () Bool)

(declare-fun lt!1497201 () Int)

(assert (=> d!1239260 (>= lt!1497201 0)))

(declare-fun e!2609299 () Int)

(assert (=> d!1239260 (= lt!1497201 e!2609299)))

(declare-fun c!716601 () Bool)

(assert (=> d!1239260 (= c!716601 ((_ is Nil!46195) suffixBis!41))))

(assert (=> d!1239260 (= (size!33944 suffixBis!41) lt!1497201)))

(declare-fun b!4203413 () Bool)

(assert (=> b!4203413 (= e!2609299 0)))

(declare-fun b!4203414 () Bool)

(assert (=> b!4203414 (= e!2609299 (+ 1 (size!33944 (t!347018 suffixBis!41))))))

(assert (= (and d!1239260 c!716601) b!4203413))

(assert (= (and d!1239260 (not c!716601)) b!4203414))

(declare-fun m!4791705 () Bool)

(assert (=> b!4203414 m!4791705))

(assert (=> b!4202794 d!1239260))

(declare-fun d!1239264 () Bool)

(declare-fun lt!1497202 () Int)

(assert (=> d!1239264 (>= lt!1497202 0)))

(declare-fun e!2609300 () Int)

(assert (=> d!1239264 (= lt!1497202 e!2609300)))

(declare-fun c!716602 () Bool)

(assert (=> d!1239264 (= c!716602 ((_ is Nil!46195) (_2!25109 (get!15024 lt!1496890))))))

(assert (=> d!1239264 (= (size!33944 (_2!25109 (get!15024 lt!1496890))) lt!1497202)))

(declare-fun b!4203415 () Bool)

(assert (=> b!4203415 (= e!2609300 0)))

(declare-fun b!4203416 () Bool)

(assert (=> b!4203416 (= e!2609300 (+ 1 (size!33944 (t!347018 (_2!25109 (get!15024 lt!1496890))))))))

(assert (= (and d!1239264 c!716602) b!4203415))

(assert (= (and d!1239264 (not c!716602)) b!4203416))

(declare-fun m!4791709 () Bool)

(assert (=> b!4203416 m!4791709))

(assert (=> b!4202944 d!1239264))

(assert (=> b!4202944 d!1239190))

(assert (=> b!4202944 d!1239078))

(declare-fun d!1239268 () Bool)

(declare-fun lt!1497203 () Int)

(assert (=> d!1239268 (>= lt!1497203 0)))

(declare-fun e!2609301 () Int)

(assert (=> d!1239268 (= lt!1497203 e!2609301)))

(declare-fun c!716603 () Bool)

(assert (=> d!1239268 (= c!716603 ((_ is Nil!46195) (originalCharacters!8102 t!8364)))))

(assert (=> d!1239268 (= (size!33944 (originalCharacters!8102 t!8364)) lt!1497203)))

(declare-fun b!4203417 () Bool)

(assert (=> b!4203417 (= e!2609301 0)))

(declare-fun b!4203418 () Bool)

(assert (=> b!4203418 (= e!2609301 (+ 1 (size!33944 (t!347018 (originalCharacters!8102 t!8364)))))))

(assert (= (and d!1239268 c!716603) b!4203417))

(assert (= (and d!1239268 (not c!716603)) b!4203418))

(declare-fun m!4791711 () Bool)

(assert (=> b!4203418 m!4791711))

(assert (=> b!4202808 d!1239268))

(declare-fun d!1239270 () Bool)

(assert (=> d!1239270 (= (inv!16 (value!240549 tBis!41)) (= (charsToInt!0 (text!56097 (value!240549 tBis!41))) (value!240540 (value!240549 tBis!41))))))

(declare-fun bs!597095 () Bool)

(assert (= bs!597095 d!1239270))

(declare-fun m!4791713 () Bool)

(assert (=> bs!597095 m!4791713))

(assert (=> b!4202828 d!1239270))

(declare-fun b!4203419 () Bool)

(declare-fun e!2609302 () Bool)

(declare-fun e!2609304 () Bool)

(assert (=> b!4203419 (= e!2609302 e!2609304)))

(declare-fun res!1726308 () Bool)

(assert (=> b!4203419 (=> (not res!1726308) (not e!2609304))))

(assert (=> b!4203419 (= res!1726308 (not ((_ is Nil!46195) (tail!6765 input!3517))))))

(declare-fun b!4203420 () Bool)

(declare-fun res!1726310 () Bool)

(assert (=> b!4203420 (=> (not res!1726310) (not e!2609304))))

(assert (=> b!4203420 (= res!1726310 (= (head!8918 (tail!6765 input!3517)) (head!8918 (tail!6765 input!3517))))))

(declare-fun b!4203422 () Bool)

(declare-fun e!2609303 () Bool)

(assert (=> b!4203422 (= e!2609303 (>= (size!33944 (tail!6765 input!3517)) (size!33944 (tail!6765 input!3517))))))

(declare-fun b!4203421 () Bool)

(assert (=> b!4203421 (= e!2609304 (isPrefix!4579 (tail!6765 (tail!6765 input!3517)) (tail!6765 (tail!6765 input!3517))))))

(declare-fun d!1239272 () Bool)

(assert (=> d!1239272 e!2609303))

(declare-fun res!1726307 () Bool)

(assert (=> d!1239272 (=> res!1726307 e!2609303)))

(declare-fun lt!1497204 () Bool)

(assert (=> d!1239272 (= res!1726307 (not lt!1497204))))

(assert (=> d!1239272 (= lt!1497204 e!2609302)))

(declare-fun res!1726309 () Bool)

(assert (=> d!1239272 (=> res!1726309 e!2609302)))

(assert (=> d!1239272 (= res!1726309 ((_ is Nil!46195) (tail!6765 input!3517)))))

(assert (=> d!1239272 (= (isPrefix!4579 (tail!6765 input!3517) (tail!6765 input!3517)) lt!1497204)))

(assert (= (and d!1239272 (not res!1726309)) b!4203419))

(assert (= (and b!4203419 res!1726308) b!4203420))

(assert (= (and b!4203420 res!1726310) b!4203421))

(assert (= (and d!1239272 (not res!1726307)) b!4203422))

(assert (=> b!4203420 m!4790969))

(assert (=> b!4203420 m!4791281))

(assert (=> b!4203420 m!4790969))

(assert (=> b!4203420 m!4791281))

(assert (=> b!4203422 m!4790969))

(assert (=> b!4203422 m!4791283))

(assert (=> b!4203422 m!4790969))

(assert (=> b!4203422 m!4791283))

(assert (=> b!4203421 m!4790969))

(assert (=> b!4203421 m!4791289))

(assert (=> b!4203421 m!4790969))

(assert (=> b!4203421 m!4791289))

(assert (=> b!4203421 m!4791289))

(assert (=> b!4203421 m!4791289))

(declare-fun m!4791715 () Bool)

(assert (=> b!4203421 m!4791715))

(assert (=> b!4202909 d!1239272))

(assert (=> b!4202909 d!1239122))

(declare-fun d!1239274 () Bool)

(assert (=> d!1239274 (= (isEmpty!27353 (originalCharacters!8102 tBis!41)) ((_ is Nil!46195) (originalCharacters!8102 tBis!41)))))

(assert (=> d!1238996 d!1239274))

(declare-fun b!4203423 () Bool)

(declare-fun e!2609308 () Bool)

(assert (=> b!4203423 (= e!2609308 (= (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) (c!716445 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))))

(declare-fun b!4203424 () Bool)

(declare-fun e!2609309 () Bool)

(declare-fun lt!1497205 () Bool)

(assert (=> b!4203424 (= e!2609309 (not lt!1497205))))

(declare-fun b!4203425 () Bool)

(declare-fun res!1726318 () Bool)

(assert (=> b!4203425 (=> (not res!1726318) (not e!2609308))))

(declare-fun call!292739 () Bool)

(assert (=> b!4203425 (= res!1726318 (not call!292739))))

(declare-fun b!4203426 () Bool)

(declare-fun e!2609310 () Bool)

(assert (=> b!4203426 (= e!2609310 e!2609309)))

(declare-fun c!716604 () Bool)

(assert (=> b!4203426 (= c!716604 ((_ is EmptyLang!12625) (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))))))

(declare-fun b!4203427 () Bool)

(declare-fun e!2609307 () Bool)

(assert (=> b!4203427 (= e!2609307 (matchR!6348 (derivativeStep!3829 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))) (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))))) (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))))))))

(declare-fun bm!292734 () Bool)

(assert (=> bm!292734 (= call!292739 (isEmpty!27353 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))))))

(declare-fun b!4203428 () Bool)

(declare-fun res!1726314 () Bool)

(declare-fun e!2609305 () Bool)

(assert (=> b!4203428 (=> res!1726314 e!2609305)))

(assert (=> b!4203428 (= res!1726314 e!2609308)))

(declare-fun res!1726315 () Bool)

(assert (=> b!4203428 (=> (not res!1726315) (not e!2609308))))

(assert (=> b!4203428 (= res!1726315 lt!1497205)))

(declare-fun b!4203429 () Bool)

(declare-fun e!2609311 () Bool)

(assert (=> b!4203429 (= e!2609311 (not (= (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) (c!716445 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))))))))

(declare-fun d!1239276 () Bool)

(assert (=> d!1239276 e!2609310))

(declare-fun c!716605 () Bool)

(assert (=> d!1239276 (= c!716605 ((_ is EmptyExpr!12625) (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))))))

(assert (=> d!1239276 (= lt!1497205 e!2609307)))

(declare-fun c!716606 () Bool)

(assert (=> d!1239276 (= c!716606 (isEmpty!27353 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))))))

(assert (=> d!1239276 (validRegex!5728 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))

(assert (=> d!1239276 (= (matchR!6348 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) lt!1497205)))

(declare-fun b!4203430 () Bool)

(declare-fun e!2609306 () Bool)

(assert (=> b!4203430 (= e!2609305 e!2609306)))

(declare-fun res!1726316 () Bool)

(assert (=> b!4203430 (=> (not res!1726316) (not e!2609306))))

(assert (=> b!4203430 (= res!1726316 (not lt!1497205))))

(declare-fun b!4203431 () Bool)

(assert (=> b!4203431 (= e!2609307 (nullable!4441 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))))))

(declare-fun b!4203432 () Bool)

(declare-fun res!1726313 () Bool)

(assert (=> b!4203432 (=> res!1726313 e!2609311)))

(assert (=> b!4203432 (= res!1726313 (not (isEmpty!27353 (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))))))))

(declare-fun b!4203433 () Bool)

(assert (=> b!4203433 (= e!2609310 (= lt!1497205 call!292739))))

(declare-fun b!4203434 () Bool)

(assert (=> b!4203434 (= e!2609306 e!2609311)))

(declare-fun res!1726311 () Bool)

(assert (=> b!4203434 (=> res!1726311 e!2609311)))

(assert (=> b!4203434 (= res!1726311 call!292739)))

(declare-fun b!4203435 () Bool)

(declare-fun res!1726312 () Bool)

(assert (=> b!4203435 (=> res!1726312 e!2609305)))

(assert (=> b!4203435 (= res!1726312 (not ((_ is ElementMatch!12625) (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))))

(assert (=> b!4203435 (= e!2609309 e!2609305)))

(declare-fun b!4203436 () Bool)

(declare-fun res!1726317 () Bool)

(assert (=> b!4203436 (=> (not res!1726317) (not e!2609308))))

(assert (=> b!4203436 (= res!1726317 (isEmpty!27353 (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))))))))

(assert (= (and d!1239276 c!716606) b!4203431))

(assert (= (and d!1239276 (not c!716606)) b!4203427))

(assert (= (and d!1239276 c!716605) b!4203433))

(assert (= (and d!1239276 (not c!716605)) b!4203426))

(assert (= (and b!4203426 c!716604) b!4203424))

(assert (= (and b!4203426 (not c!716604)) b!4203435))

(assert (= (and b!4203435 (not res!1726312)) b!4203428))

(assert (= (and b!4203428 res!1726315) b!4203425))

(assert (= (and b!4203425 res!1726318) b!4203436))

(assert (= (and b!4203436 res!1726317) b!4203423))

(assert (= (and b!4203428 (not res!1726314)) b!4203430))

(assert (= (and b!4203430 res!1726316) b!4203434))

(assert (= (and b!4203434 (not res!1726311)) b!4203432))

(assert (= (and b!4203432 (not res!1726313)) b!4203429))

(assert (= (or b!4203433 b!4203425 b!4203434) bm!292734))

(assert (=> b!4203432 m!4791141))

(declare-fun m!4791717 () Bool)

(assert (=> b!4203432 m!4791717))

(assert (=> b!4203432 m!4791717))

(declare-fun m!4791719 () Bool)

(assert (=> b!4203432 m!4791719))

(assert (=> bm!292734 m!4791141))

(declare-fun m!4791721 () Bool)

(assert (=> bm!292734 m!4791721))

(assert (=> d!1239276 m!4791141))

(assert (=> d!1239276 m!4791721))

(declare-fun m!4791723 () Bool)

(assert (=> d!1239276 m!4791723))

(assert (=> b!4203436 m!4791141))

(assert (=> b!4203436 m!4791717))

(assert (=> b!4203436 m!4791717))

(assert (=> b!4203436 m!4791719))

(assert (=> b!4203427 m!4791141))

(declare-fun m!4791725 () Bool)

(assert (=> b!4203427 m!4791725))

(assert (=> b!4203427 m!4791725))

(declare-fun m!4791727 () Bool)

(assert (=> b!4203427 m!4791727))

(assert (=> b!4203427 m!4791141))

(assert (=> b!4203427 m!4791717))

(assert (=> b!4203427 m!4791727))

(assert (=> b!4203427 m!4791717))

(declare-fun m!4791729 () Bool)

(assert (=> b!4203427 m!4791729))

(assert (=> b!4203429 m!4791141))

(assert (=> b!4203429 m!4791725))

(assert (=> b!4203423 m!4791141))

(assert (=> b!4203423 m!4791725))

(declare-fun m!4791731 () Bool)

(assert (=> b!4203431 m!4791731))

(assert (=> b!4202948 d!1239276))

(assert (=> b!4202948 d!1239190))

(assert (=> b!4202948 d!1239182))

(assert (=> b!4202948 d!1239186))

(declare-fun d!1239278 () Bool)

(assert (=> d!1239278 true))

(declare-fun order!24513 () Int)

(declare-fun lambda!129670 () Int)

(declare-fun dynLambda!19933 (Int Int) Int)

(assert (=> d!1239278 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (dynLambda!19933 order!24513 lambda!129670))))

(declare-fun Forall2!1173 (Int) Bool)

(assert (=> d!1239278 (= (equivClasses!3249 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (Forall2!1173 lambda!129670))))

(declare-fun bs!597098 () Bool)

(assert (= bs!597098 d!1239278))

(declare-fun m!4791755 () Bool)

(assert (=> bs!597098 m!4791755))

(assert (=> b!4202810 d!1239278))

(declare-fun d!1239290 () Bool)

(assert (=> d!1239290 (= (inv!60761 (tag!8584 (h!51617 (t!347020 rules!3967)))) (= (mod (str.len (value!240548 (tag!8584 (h!51617 (t!347020 rules!3967))))) 2) 0))))

(assert (=> b!4202988 d!1239290))

(declare-fun d!1239292 () Bool)

(declare-fun res!1726336 () Bool)

(declare-fun e!2609329 () Bool)

(assert (=> d!1239292 (=> (not res!1726336) (not e!2609329))))

(assert (=> d!1239292 (= res!1726336 (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967))))))))

(assert (=> d!1239292 (= (inv!60764 (transformation!7720 (h!51617 (t!347020 rules!3967)))) e!2609329)))

(declare-fun b!4203464 () Bool)

(assert (=> b!4203464 (= e!2609329 (equivClasses!3249 (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967))))))))

(assert (= (and d!1239292 res!1726336) b!4203464))

(declare-fun m!4791757 () Bool)

(assert (=> d!1239292 m!4791757))

(declare-fun m!4791759 () Bool)

(assert (=> b!4203464 m!4791759))

(assert (=> b!4202988 d!1239292))

(declare-fun b!4203501 () Bool)

(declare-fun e!2609355 () Bool)

(declare-fun e!2609360 () Bool)

(assert (=> b!4203501 (= e!2609355 e!2609360)))

(declare-fun res!1726356 () Bool)

(assert (=> b!4203501 (= res!1726356 (not (nullable!4441 (reg!12954 (regex!7720 rBis!178)))))))

(assert (=> b!4203501 (=> (not res!1726356) (not e!2609360))))

(declare-fun b!4203502 () Bool)

(declare-fun res!1726359 () Bool)

(declare-fun e!2609354 () Bool)

(assert (=> b!4203502 (=> res!1726359 e!2609354)))

(assert (=> b!4203502 (= res!1726359 (not ((_ is Concat!20576) (regex!7720 rBis!178))))))

(declare-fun e!2609359 () Bool)

(assert (=> b!4203502 (= e!2609359 e!2609354)))

(declare-fun b!4203503 () Bool)

(declare-fun e!2609356 () Bool)

(assert (=> b!4203503 (= e!2609356 e!2609355)))

(declare-fun c!716621 () Bool)

(assert (=> b!4203503 (= c!716621 ((_ is Star!12625) (regex!7720 rBis!178)))))

(declare-fun b!4203504 () Bool)

(declare-fun res!1726358 () Bool)

(declare-fun e!2609357 () Bool)

(assert (=> b!4203504 (=> (not res!1726358) (not e!2609357))))

(declare-fun call!292748 () Bool)

(assert (=> b!4203504 (= res!1726358 call!292748)))

(assert (=> b!4203504 (= e!2609359 e!2609357)))

(declare-fun call!292750 () Bool)

(declare-fun c!716620 () Bool)

(declare-fun bm!292743 () Bool)

(assert (=> bm!292743 (= call!292750 (validRegex!5728 (ite c!716621 (reg!12954 (regex!7720 rBis!178)) (ite c!716620 (regTwo!25763 (regex!7720 rBis!178)) (regTwo!25762 (regex!7720 rBis!178))))))))

(declare-fun bm!292744 () Bool)

(assert (=> bm!292744 (= call!292748 (validRegex!5728 (ite c!716620 (regOne!25763 (regex!7720 rBis!178)) (regOne!25762 (regex!7720 rBis!178)))))))

(declare-fun b!4203505 () Bool)

(declare-fun call!292749 () Bool)

(assert (=> b!4203505 (= e!2609357 call!292749)))

(declare-fun b!4203506 () Bool)

(assert (=> b!4203506 (= e!2609360 call!292750)))

(declare-fun b!4203507 () Bool)

(assert (=> b!4203507 (= e!2609355 e!2609359)))

(assert (=> b!4203507 (= c!716620 ((_ is Union!12625) (regex!7720 rBis!178)))))

(declare-fun bm!292745 () Bool)

(assert (=> bm!292745 (= call!292749 call!292750)))

(declare-fun d!1239294 () Bool)

(declare-fun res!1726355 () Bool)

(assert (=> d!1239294 (=> res!1726355 e!2609356)))

(assert (=> d!1239294 (= res!1726355 ((_ is ElementMatch!12625) (regex!7720 rBis!178)))))

(assert (=> d!1239294 (= (validRegex!5728 (regex!7720 rBis!178)) e!2609356)))

(declare-fun b!4203508 () Bool)

(declare-fun e!2609358 () Bool)

(assert (=> b!4203508 (= e!2609358 call!292749)))

(declare-fun b!4203509 () Bool)

(assert (=> b!4203509 (= e!2609354 e!2609358)))

(declare-fun res!1726357 () Bool)

(assert (=> b!4203509 (=> (not res!1726357) (not e!2609358))))

(assert (=> b!4203509 (= res!1726357 call!292748)))

(assert (= (and d!1239294 (not res!1726355)) b!4203503))

(assert (= (and b!4203503 c!716621) b!4203501))

(assert (= (and b!4203503 (not c!716621)) b!4203507))

(assert (= (and b!4203501 res!1726356) b!4203506))

(assert (= (and b!4203507 c!716620) b!4203504))

(assert (= (and b!4203507 (not c!716620)) b!4203502))

(assert (= (and b!4203504 res!1726358) b!4203505))

(assert (= (and b!4203502 (not res!1726359)) b!4203509))

(assert (= (and b!4203509 res!1726357) b!4203508))

(assert (= (or b!4203505 b!4203508) bm!292745))

(assert (= (or b!4203504 b!4203509) bm!292744))

(assert (= (or b!4203506 bm!292745) bm!292743))

(declare-fun m!4791785 () Bool)

(assert (=> b!4203501 m!4791785))

(declare-fun m!4791787 () Bool)

(assert (=> bm!292743 m!4791787))

(declare-fun m!4791789 () Bool)

(assert (=> bm!292744 m!4791789))

(assert (=> d!1238992 d!1239294))

(declare-fun b!4203510 () Bool)

(declare-fun e!2609364 () Bool)

(assert (=> b!4203510 (= e!2609364 (= (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) (c!716445 (regex!7720 (h!51617 rules!3967)))))))

(declare-fun b!4203511 () Bool)

(declare-fun e!2609365 () Bool)

(declare-fun lt!1497213 () Bool)

(assert (=> b!4203511 (= e!2609365 (not lt!1497213))))

(declare-fun b!4203512 () Bool)

(declare-fun res!1726367 () Bool)

(assert (=> b!4203512 (=> (not res!1726367) (not e!2609364))))

(declare-fun call!292751 () Bool)

(assert (=> b!4203512 (= res!1726367 (not call!292751))))

(declare-fun b!4203513 () Bool)

(declare-fun e!2609366 () Bool)

(assert (=> b!4203513 (= e!2609366 e!2609365)))

(declare-fun c!716622 () Bool)

(assert (=> b!4203513 (= c!716622 ((_ is EmptyLang!12625) (regex!7720 (h!51617 rules!3967))))))

(declare-fun b!4203514 () Bool)

(declare-fun e!2609363 () Bool)

(assert (=> b!4203514 (= e!2609363 (matchR!6348 (derivativeStep!3829 (regex!7720 (h!51617 rules!3967)) (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))))) (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))))))))

(declare-fun bm!292746 () Bool)

(assert (=> bm!292746 (= call!292751 (isEmpty!27353 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))))))

(declare-fun b!4203515 () Bool)

(declare-fun res!1726363 () Bool)

(declare-fun e!2609361 () Bool)

(assert (=> b!4203515 (=> res!1726363 e!2609361)))

(assert (=> b!4203515 (= res!1726363 e!2609364)))

(declare-fun res!1726364 () Bool)

(assert (=> b!4203515 (=> (not res!1726364) (not e!2609364))))

(assert (=> b!4203515 (= res!1726364 lt!1497213)))

(declare-fun b!4203516 () Bool)

(declare-fun e!2609367 () Bool)

(assert (=> b!4203516 (= e!2609367 (not (= (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) (c!716445 (regex!7720 (h!51617 rules!3967))))))))

(declare-fun d!1239312 () Bool)

(assert (=> d!1239312 e!2609366))

(declare-fun c!716623 () Bool)

(assert (=> d!1239312 (= c!716623 ((_ is EmptyExpr!12625) (regex!7720 (h!51617 rules!3967))))))

(assert (=> d!1239312 (= lt!1497213 e!2609363)))

(declare-fun c!716624 () Bool)

(assert (=> d!1239312 (= c!716624 (isEmpty!27353 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))))))

(assert (=> d!1239312 (validRegex!5728 (regex!7720 (h!51617 rules!3967)))))

(assert (=> d!1239312 (= (matchR!6348 (regex!7720 (h!51617 rules!3967)) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) lt!1497213)))

(declare-fun b!4203517 () Bool)

(declare-fun e!2609362 () Bool)

(assert (=> b!4203517 (= e!2609361 e!2609362)))

(declare-fun res!1726365 () Bool)

(assert (=> b!4203517 (=> (not res!1726365) (not e!2609362))))

(assert (=> b!4203517 (= res!1726365 (not lt!1497213))))

(declare-fun b!4203518 () Bool)

(assert (=> b!4203518 (= e!2609363 (nullable!4441 (regex!7720 (h!51617 rules!3967))))))

(declare-fun b!4203519 () Bool)

(declare-fun res!1726362 () Bool)

(assert (=> b!4203519 (=> res!1726362 e!2609367)))

(assert (=> b!4203519 (= res!1726362 (not (isEmpty!27353 (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))))))))

(declare-fun b!4203520 () Bool)

(assert (=> b!4203520 (= e!2609366 (= lt!1497213 call!292751))))

(declare-fun b!4203521 () Bool)

(assert (=> b!4203521 (= e!2609362 e!2609367)))

(declare-fun res!1726360 () Bool)

(assert (=> b!4203521 (=> res!1726360 e!2609367)))

(assert (=> b!4203521 (= res!1726360 call!292751)))

(declare-fun b!4203522 () Bool)

(declare-fun res!1726361 () Bool)

(assert (=> b!4203522 (=> res!1726361 e!2609361)))

(assert (=> b!4203522 (= res!1726361 (not ((_ is ElementMatch!12625) (regex!7720 (h!51617 rules!3967)))))))

(assert (=> b!4203522 (= e!2609365 e!2609361)))

(declare-fun b!4203523 () Bool)

(declare-fun res!1726366 () Bool)

(assert (=> b!4203523 (=> (not res!1726366) (not e!2609364))))

(assert (=> b!4203523 (= res!1726366 (isEmpty!27353 (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))))))))

(assert (= (and d!1239312 c!716624) b!4203518))

(assert (= (and d!1239312 (not c!716624)) b!4203514))

(assert (= (and d!1239312 c!716623) b!4203520))

(assert (= (and d!1239312 (not c!716623)) b!4203513))

(assert (= (and b!4203513 c!716622) b!4203511))

(assert (= (and b!4203513 (not c!716622)) b!4203522))

(assert (= (and b!4203522 (not res!1726361)) b!4203515))

(assert (= (and b!4203515 res!1726364) b!4203512))

(assert (= (and b!4203512 res!1726367) b!4203523))

(assert (= (and b!4203523 res!1726366) b!4203510))

(assert (= (and b!4203515 (not res!1726363)) b!4203517))

(assert (= (and b!4203517 res!1726365) b!4203521))

(assert (= (and b!4203521 (not res!1726360)) b!4203519))

(assert (= (and b!4203519 (not res!1726362)) b!4203516))

(assert (= (or b!4203520 b!4203512 b!4203521) bm!292746))

(assert (=> b!4203519 m!4790905))

(declare-fun m!4791795 () Bool)

(assert (=> b!4203519 m!4791795))

(assert (=> b!4203519 m!4791795))

(declare-fun m!4791797 () Bool)

(assert (=> b!4203519 m!4791797))

(assert (=> bm!292746 m!4790905))

(declare-fun m!4791799 () Bool)

(assert (=> bm!292746 m!4791799))

(assert (=> d!1239312 m!4790905))

(assert (=> d!1239312 m!4791799))

(assert (=> d!1239312 m!4791297))

(assert (=> b!4203523 m!4790905))

(assert (=> b!4203523 m!4791795))

(assert (=> b!4203523 m!4791795))

(assert (=> b!4203523 m!4791797))

(assert (=> b!4203514 m!4790905))

(declare-fun m!4791805 () Bool)

(assert (=> b!4203514 m!4791805))

(assert (=> b!4203514 m!4791805))

(declare-fun m!4791807 () Bool)

(assert (=> b!4203514 m!4791807))

(assert (=> b!4203514 m!4790905))

(assert (=> b!4203514 m!4791795))

(assert (=> b!4203514 m!4791807))

(assert (=> b!4203514 m!4791795))

(declare-fun m!4791811 () Bool)

(assert (=> b!4203514 m!4791811))

(assert (=> b!4203516 m!4790905))

(assert (=> b!4203516 m!4791805))

(assert (=> b!4203510 m!4790905))

(assert (=> b!4203510 m!4791805))

(assert (=> b!4203518 m!4791305))

(assert (=> b!4202739 d!1239312))

(declare-fun d!1239324 () Bool)

(assert (=> d!1239324 (= (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))) (list!16693 (c!716444 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))))))

(declare-fun bs!597105 () Bool)

(assert (= bs!597105 d!1239324))

(declare-fun m!4791819 () Bool)

(assert (=> bs!597105 m!4791819))

(assert (=> b!4202739 d!1239324))

(declare-fun d!1239328 () Bool)

(declare-fun lt!1497214 () BalanceConc!27456)

(assert (=> d!1239328 (= (list!16691 lt!1497214) (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842))))))

(assert (=> d!1239328 (= lt!1497214 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842))))) (value!240549 (_1!25109 (get!15024 lt!1496842)))))))

(assert (=> d!1239328 (= (charsOf!5143 (_1!25109 (get!15024 lt!1496842))) lt!1497214)))

(declare-fun b_lambda!123737 () Bool)

(assert (=> (not b_lambda!123737) (not d!1239328)))

(declare-fun t!347154 () Bool)

(declare-fun tb!252037 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347154) tb!252037))

(declare-fun b!4203531 () Bool)

(declare-fun e!2609372 () Bool)

(declare-fun tp!1284403 () Bool)

(assert (=> b!4203531 (= e!2609372 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842))))) (value!240549 (_1!25109 (get!15024 lt!1496842)))))) tp!1284403))))

(declare-fun result!307202 () Bool)

(assert (=> tb!252037 (= result!307202 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842))))) (value!240549 (_1!25109 (get!15024 lt!1496842))))) e!2609372))))

(assert (= tb!252037 b!4203531))

(declare-fun m!4791825 () Bool)

(assert (=> b!4203531 m!4791825))

(declare-fun m!4791827 () Bool)

(assert (=> tb!252037 m!4791827))

(assert (=> d!1239328 t!347154))

(declare-fun b_and!330121 () Bool)

(assert (= b_and!330087 (and (=> t!347154 result!307202) b_and!330121)))

(declare-fun t!347156 () Bool)

(declare-fun tb!252039 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347156) tb!252039))

(declare-fun result!307204 () Bool)

(assert (= result!307204 result!307202))

(assert (=> d!1239328 t!347156))

(declare-fun b_and!330123 () Bool)

(assert (= b_and!330081 (and (=> t!347156 result!307204) b_and!330123)))

(declare-fun t!347158 () Bool)

(declare-fun tb!252041 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347158) tb!252041))

(declare-fun result!307206 () Bool)

(assert (= result!307206 result!307202))

(assert (=> d!1239328 t!347158))

(declare-fun b_and!330125 () Bool)

(assert (= b_and!330095 (and (=> t!347158 result!307206) b_and!330125)))

(declare-fun t!347160 () Bool)

(declare-fun tb!252043 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347160) tb!252043))

(declare-fun result!307208 () Bool)

(assert (= result!307208 result!307202))

(assert (=> d!1239328 t!347160))

(declare-fun b_and!330127 () Bool)

(assert (= b_and!330091 (and (=> t!347160 result!307208) b_and!330127)))

(declare-fun t!347162 () Bool)

(declare-fun tb!252045 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347162) tb!252045))

(declare-fun result!307210 () Bool)

(assert (= result!307210 result!307202))

(assert (=> d!1239328 t!347162))

(declare-fun b_and!330129 () Bool)

(assert (= b_and!330083 (and (=> t!347162 result!307210) b_and!330129)))

(declare-fun m!4791829 () Bool)

(assert (=> d!1239328 m!4791829))

(declare-fun m!4791831 () Bool)

(assert (=> d!1239328 m!4791831))

(assert (=> b!4202739 d!1239328))

(assert (=> b!4202739 d!1239076))

(declare-fun d!1239332 () Bool)

(declare-fun e!2609374 () Bool)

(assert (=> d!1239332 e!2609374))

(declare-fun res!1726370 () Bool)

(assert (=> d!1239332 (=> (not res!1726370) (not e!2609374))))

(declare-fun lt!1497215 () List!46319)

(assert (=> d!1239332 (= res!1726370 (= (content!7215 lt!1497215) ((_ map or) (content!7215 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) (content!7215 (_2!25109 (get!15024 lt!1496890))))))))

(declare-fun e!2609373 () List!46319)

(assert (=> d!1239332 (= lt!1497215 e!2609373)))

(declare-fun c!716628 () Bool)

(assert (=> d!1239332 (= c!716628 ((_ is Nil!46195) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))))))

(assert (=> d!1239332 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))) (_2!25109 (get!15024 lt!1496890))) lt!1497215)))

(declare-fun b!4203532 () Bool)

(assert (=> b!4203532 (= e!2609373 (_2!25109 (get!15024 lt!1496890)))))

(declare-fun b!4203534 () Bool)

(declare-fun res!1726369 () Bool)

(assert (=> b!4203534 (=> (not res!1726369) (not e!2609374))))

(assert (=> b!4203534 (= res!1726369 (= (size!33944 lt!1497215) (+ (size!33944 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) (size!33944 (_2!25109 (get!15024 lt!1496890))))))))

(declare-fun b!4203535 () Bool)

(assert (=> b!4203535 (= e!2609374 (or (not (= (_2!25109 (get!15024 lt!1496890)) Nil!46195)) (= lt!1497215 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890)))))))))

(declare-fun b!4203533 () Bool)

(assert (=> b!4203533 (= e!2609373 (Cons!46195 (h!51615 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) (++!11794 (t!347018 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496890))))) (_2!25109 (get!15024 lt!1496890)))))))

(assert (= (and d!1239332 c!716628) b!4203532))

(assert (= (and d!1239332 (not c!716628)) b!4203533))

(assert (= (and d!1239332 res!1726370) b!4203534))

(assert (= (and b!4203534 res!1726369) b!4203535))

(declare-fun m!4791835 () Bool)

(assert (=> d!1239332 m!4791835))

(assert (=> d!1239332 m!4791141))

(declare-fun m!4791837 () Bool)

(assert (=> d!1239332 m!4791837))

(declare-fun m!4791839 () Bool)

(assert (=> d!1239332 m!4791839))

(declare-fun m!4791841 () Bool)

(assert (=> b!4203534 m!4791841))

(assert (=> b!4203534 m!4791141))

(declare-fun m!4791843 () Bool)

(assert (=> b!4203534 m!4791843))

(assert (=> b!4203534 m!4791161))

(declare-fun m!4791845 () Bool)

(assert (=> b!4203533 m!4791845))

(assert (=> b!4202942 d!1239332))

(assert (=> b!4202942 d!1239182))

(assert (=> b!4202942 d!1239186))

(assert (=> b!4202942 d!1239190))

(declare-fun d!1239336 () Bool)

(assert (=> d!1239336 (= (isEmpty!27352 lt!1496890) (not ((_ is Some!9907) lt!1496890)))))

(assert (=> d!1239042 d!1239336))

(assert (=> d!1239042 d!1239022))

(assert (=> d!1239042 d!1239024))

(declare-fun bs!597113 () Bool)

(declare-fun d!1239338 () Bool)

(assert (= bs!597113 (and d!1239338 d!1239008)))

(declare-fun lambda!129676 () Int)

(assert (=> bs!597113 (= lambda!129676 lambda!129649)))

(declare-fun bs!597114 () Bool)

(assert (= bs!597114 (and d!1239338 d!1239110)))

(assert (=> bs!597114 (= lambda!129676 lambda!129660)))

(assert (=> d!1239338 true))

(declare-fun lt!1497217 () Bool)

(assert (=> d!1239338 (= lt!1497217 (forall!8486 rules!3967 lambda!129676))))

(declare-fun e!2609378 () Bool)

(assert (=> d!1239338 (= lt!1497217 e!2609378)))

(declare-fun res!1726373 () Bool)

(assert (=> d!1239338 (=> res!1726373 e!2609378)))

(assert (=> d!1239338 (= res!1726373 (not ((_ is Cons!46197) rules!3967)))))

(assert (=> d!1239338 (= (rulesValidInductive!2858 thiss!26544 rules!3967) lt!1497217)))

(declare-fun b!4203538 () Bool)

(declare-fun e!2609377 () Bool)

(assert (=> b!4203538 (= e!2609378 e!2609377)))

(declare-fun res!1726374 () Bool)

(assert (=> b!4203538 (=> (not res!1726374) (not e!2609377))))

(assert (=> b!4203538 (= res!1726374 (ruleValid!3432 thiss!26544 (h!51617 rules!3967)))))

(declare-fun b!4203539 () Bool)

(assert (=> b!4203539 (= e!2609377 (rulesValidInductive!2858 thiss!26544 (t!347020 rules!3967)))))

(assert (= (and d!1239338 (not res!1726373)) b!4203538))

(assert (= (and b!4203538 res!1726374) b!4203539))

(declare-fun m!4791853 () Bool)

(assert (=> d!1239338 m!4791853))

(assert (=> b!4203538 m!4790915))

(assert (=> b!4203539 m!4790677))

(assert (=> d!1239042 d!1239338))

(declare-fun d!1239342 () Bool)

(declare-fun lt!1497218 () Int)

(assert (=> d!1239342 (>= lt!1497218 0)))

(declare-fun e!2609379 () Int)

(assert (=> d!1239342 (= lt!1497218 e!2609379)))

(declare-fun c!716629 () Bool)

(assert (=> d!1239342 (= c!716629 ((_ is Nil!46195) lt!1496850))))

(assert (=> d!1239342 (= (size!33944 lt!1496850) lt!1497218)))

(declare-fun b!4203540 () Bool)

(assert (=> b!4203540 (= e!2609379 0)))

(declare-fun b!4203541 () Bool)

(assert (=> b!4203541 (= e!2609379 (+ 1 (size!33944 (t!347018 lt!1496850))))))

(assert (= (and d!1239342 c!716629) b!4203540))

(assert (= (and d!1239342 (not c!716629)) b!4203541))

(declare-fun m!4791855 () Bool)

(assert (=> b!4203541 m!4791855))

(assert (=> b!4202768 d!1239342))

(assert (=> b!4202768 d!1239086))

(declare-fun d!1239344 () Bool)

(declare-fun lt!1497219 () Int)

(assert (=> d!1239344 (>= lt!1497219 0)))

(declare-fun e!2609380 () Int)

(assert (=> d!1239344 (= lt!1497219 e!2609380)))

(declare-fun c!716630 () Bool)

(assert (=> d!1239344 (= c!716630 ((_ is Nil!46195) suffix!1557))))

(assert (=> d!1239344 (= (size!33944 suffix!1557) lt!1497219)))

(declare-fun b!4203542 () Bool)

(assert (=> b!4203542 (= e!2609380 0)))

(declare-fun b!4203543 () Bool)

(assert (=> b!4203543 (= e!2609380 (+ 1 (size!33944 (t!347018 suffix!1557))))))

(assert (= (and d!1239344 c!716630) b!4203542))

(assert (= (and d!1239344 (not c!716630)) b!4203543))

(declare-fun m!4791857 () Bool)

(assert (=> b!4203543 m!4791857))

(assert (=> b!4202768 d!1239344))

(declare-fun b!4203544 () Bool)

(declare-fun e!2609381 () Bool)

(declare-fun e!2609383 () Bool)

(assert (=> b!4203544 (= e!2609381 e!2609383)))

(declare-fun res!1726376 () Bool)

(assert (=> b!4203544 (=> (not res!1726376) (not e!2609383))))

(assert (=> b!4203544 (= res!1726376 (not ((_ is Nil!46195) (tail!6765 input!3517))))))

(declare-fun b!4203545 () Bool)

(declare-fun res!1726378 () Bool)

(assert (=> b!4203545 (=> (not res!1726378) (not e!2609383))))

(assert (=> b!4203545 (= res!1726378 (= (head!8918 (tail!6765 p!3001)) (head!8918 (tail!6765 input!3517))))))

(declare-fun b!4203547 () Bool)

(declare-fun e!2609382 () Bool)

(assert (=> b!4203547 (= e!2609382 (>= (size!33944 (tail!6765 input!3517)) (size!33944 (tail!6765 p!3001))))))

(declare-fun b!4203546 () Bool)

(assert (=> b!4203546 (= e!2609383 (isPrefix!4579 (tail!6765 (tail!6765 p!3001)) (tail!6765 (tail!6765 input!3517))))))

(declare-fun d!1239346 () Bool)

(assert (=> d!1239346 e!2609382))

(declare-fun res!1726375 () Bool)

(assert (=> d!1239346 (=> res!1726375 e!2609382)))

(declare-fun lt!1497220 () Bool)

(assert (=> d!1239346 (= res!1726375 (not lt!1497220))))

(assert (=> d!1239346 (= lt!1497220 e!2609381)))

(declare-fun res!1726377 () Bool)

(assert (=> d!1239346 (=> res!1726377 e!2609381)))

(assert (=> d!1239346 (= res!1726377 ((_ is Nil!46195) (tail!6765 p!3001)))))

(assert (=> d!1239346 (= (isPrefix!4579 (tail!6765 p!3001) (tail!6765 input!3517)) lt!1497220)))

(assert (= (and d!1239346 (not res!1726377)) b!4203544))

(assert (= (and b!4203544 res!1726376) b!4203545))

(assert (= (and b!4203545 res!1726378) b!4203546))

(assert (= (and d!1239346 (not res!1726375)) b!4203547))

(assert (=> b!4203545 m!4791119))

(declare-fun m!4791861 () Bool)

(assert (=> b!4203545 m!4791861))

(assert (=> b!4203545 m!4790969))

(assert (=> b!4203545 m!4791281))

(assert (=> b!4203547 m!4790969))

(assert (=> b!4203547 m!4791283))

(assert (=> b!4203547 m!4791119))

(declare-fun m!4791863 () Bool)

(assert (=> b!4203547 m!4791863))

(assert (=> b!4203546 m!4791119))

(declare-fun m!4791865 () Bool)

(assert (=> b!4203546 m!4791865))

(assert (=> b!4203546 m!4790969))

(assert (=> b!4203546 m!4791289))

(assert (=> b!4203546 m!4791865))

(assert (=> b!4203546 m!4791289))

(declare-fun m!4791867 () Bool)

(assert (=> b!4203546 m!4791867))

(assert (=> b!4202913 d!1239346))

(declare-fun d!1239352 () Bool)

(assert (=> d!1239352 (= (tail!6765 p!3001) (t!347018 p!3001))))

(assert (=> b!4202913 d!1239352))

(assert (=> b!4202913 d!1239122))

(declare-fun d!1239354 () Bool)

(declare-fun lt!1497223 () Int)

(assert (=> d!1239354 (>= lt!1497223 0)))

(declare-fun e!2609386 () Int)

(assert (=> d!1239354 (= lt!1497223 e!2609386)))

(declare-fun c!716633 () Bool)

(assert (=> d!1239354 (= c!716633 ((_ is Nil!46195) (originalCharacters!8102 tBis!41)))))

(assert (=> d!1239354 (= (size!33944 (originalCharacters!8102 tBis!41)) lt!1497223)))

(declare-fun b!4203552 () Bool)

(assert (=> b!4203552 (= e!2609386 0)))

(declare-fun b!4203553 () Bool)

(assert (=> b!4203553 (= e!2609386 (+ 1 (size!33944 (t!347018 (originalCharacters!8102 tBis!41)))))))

(assert (= (and d!1239354 c!716633) b!4203552))

(assert (= (and d!1239354 (not c!716633)) b!4203553))

(declare-fun m!4791871 () Bool)

(assert (=> b!4203553 m!4791871))

(assert (=> b!4202801 d!1239354))

(declare-fun bs!597121 () Bool)

(declare-fun d!1239358 () Bool)

(assert (= bs!597121 (and d!1239358 d!1239008)))

(declare-fun lambda!129680 () Int)

(assert (=> bs!597121 (= lambda!129680 lambda!129649)))

(declare-fun bs!597122 () Bool)

(assert (= bs!597122 (and d!1239358 d!1239110)))

(assert (=> bs!597122 (= lambda!129680 lambda!129660)))

(declare-fun bs!597123 () Bool)

(assert (= bs!597123 (and d!1239358 d!1239338)))

(assert (=> bs!597123 (= lambda!129680 lambda!129676)))

(assert (=> d!1239358 true))

(declare-fun lt!1497229 () Bool)

(assert (=> d!1239358 (= lt!1497229 (rulesValidInductive!2858 thiss!26544 rules!3967))))

(assert (=> d!1239358 (= lt!1497229 (forall!8486 rules!3967 lambda!129680))))

(assert (=> d!1239358 (= (rulesValid!3018 thiss!26544 rules!3967) lt!1497229)))

(declare-fun bs!597125 () Bool)

(assert (= bs!597125 d!1239358))

(assert (=> bs!597125 m!4791151))

(declare-fun m!4791883 () Bool)

(assert (=> bs!597125 m!4791883))

(assert (=> d!1239040 d!1239358))

(declare-fun d!1239370 () Bool)

(assert (=> d!1239370 (= (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) ((_ is Nil!46195) (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (=> b!4202741 d!1239370))

(declare-fun d!1239372 () Bool)

(declare-fun e!2609400 () Bool)

(assert (=> d!1239372 e!2609400))

(declare-fun res!1726384 () Bool)

(assert (=> d!1239372 (=> res!1726384 e!2609400)))

(assert (=> d!1239372 (= res!1726384 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(declare-fun lt!1497237 () Unit!65289)

(declare-fun choose!25772 (Regex!12625 List!46319) Unit!65289)

(assert (=> d!1239372 (= lt!1497237 (choose!25772 (regex!7720 (h!51617 rules!3967)) input!3517))))

(assert (=> d!1239372 (validRegex!5728 (regex!7720 (h!51617 rules!3967)))))

(assert (=> d!1239372 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1602 (regex!7720 (h!51617 rules!3967)) input!3517) lt!1497237)))

(declare-fun b!4203569 () Bool)

(assert (=> b!4203569 (= e!2609400 (matchR!6348 (regex!7720 (h!51617 rules!3967)) (_1!25111 (findLongestMatchInner!1629 (regex!7720 (h!51617 rules!3967)) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (= (and d!1239372 (not res!1726384)) b!4203569))

(declare-fun m!4791923 () Bool)

(assert (=> d!1239372 m!4791923))

(assert (=> d!1239372 m!4790919))

(assert (=> d!1239372 m!4790919))

(assert (=> d!1239372 m!4790901))

(assert (=> d!1239372 m!4790921))

(assert (=> d!1239372 m!4791297))

(assert (=> d!1239372 m!4790931))

(assert (=> d!1239372 m!4790901))

(assert (=> b!4203569 m!4790919))

(assert (=> b!4203569 m!4790901))

(assert (=> b!4203569 m!4790919))

(assert (=> b!4203569 m!4790901))

(assert (=> b!4203569 m!4790921))

(assert (=> b!4203569 m!4790923))

(assert (=> b!4202741 d!1239372))

(assert (=> b!4202741 d!1239078))

(assert (=> b!4202741 d!1239126))

(declare-fun d!1239398 () Bool)

(assert (=> d!1239398 (= (apply!10669 (transformation!7720 (h!51617 rules!3967)) (seqFromList!5729 (_1!25111 lt!1496841))) (dynLambda!19930 (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (seqFromList!5729 (_1!25111 lt!1496841))))))

(declare-fun b_lambda!123747 () Bool)

(assert (=> (not b_lambda!123747) (not d!1239398)))

(declare-fun t!347195 () Bool)

(declare-fun tb!252077 () Bool)

(assert (=> (and b!4202564 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) t!347195) tb!252077))

(declare-fun result!307242 () Bool)

(assert (=> tb!252077 (= result!307242 (inv!21 (dynLambda!19930 (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (seqFromList!5729 (_1!25111 lt!1496841)))))))

(declare-fun m!4791925 () Bool)

(assert (=> tb!252077 m!4791925))

(assert (=> d!1239398 t!347195))

(declare-fun b_and!330171 () Bool)

(assert (= b_and!330049 (and (=> t!347195 result!307242) b_and!330171)))

(declare-fun tb!252079 () Bool)

(declare-fun t!347197 () Bool)

(assert (=> (and b!4202575 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) t!347197) tb!252079))

(declare-fun result!307244 () Bool)

(assert (= result!307244 result!307242))

(assert (=> d!1239398 t!347197))

(declare-fun b_and!330173 () Bool)

(assert (= b_and!330041 (and (=> t!347197 result!307244) b_and!330173)))

(declare-fun t!347199 () Bool)

(declare-fun tb!252081 () Bool)

(assert (=> (and b!4202989 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) t!347199) tb!252081))

(declare-fun result!307246 () Bool)

(assert (= result!307246 result!307242))

(assert (=> d!1239398 t!347199))

(declare-fun b_and!330175 () Bool)

(assert (= b_and!330045 (and (=> t!347199 result!307246) b_and!330175)))

(declare-fun tb!252083 () Bool)

(declare-fun t!347201 () Bool)

(assert (=> (and b!4202573 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) t!347201) tb!252083))

(declare-fun result!307248 () Bool)

(assert (= result!307248 result!307242))

(assert (=> d!1239398 t!347201))

(declare-fun b_and!330177 () Bool)

(assert (= b_and!330047 (and (=> t!347201 result!307248) b_and!330177)))

(declare-fun t!347203 () Bool)

(declare-fun tb!252085 () Bool)

(assert (=> (and b!4202568 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) t!347203) tb!252085))

(declare-fun result!307250 () Bool)

(assert (= result!307250 result!307242))

(assert (=> d!1239398 t!347203))

(declare-fun b_and!330179 () Bool)

(assert (= b_and!330043 (and (=> t!347203 result!307250) b_and!330179)))

(assert (=> d!1239398 m!4790933))

(declare-fun m!4791927 () Bool)

(assert (=> d!1239398 m!4791927))

(assert (=> b!4202741 d!1239398))

(declare-fun bs!597145 () Bool)

(declare-fun d!1239400 () Bool)

(assert (= bs!597145 (and d!1239400 d!1239090)))

(declare-fun lambda!129686 () Int)

(assert (=> bs!597145 (= (and (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 rBis!178))) (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 rBis!178)))) (= lambda!129686 lambda!129658))))

(declare-fun bs!597146 () Bool)

(assert (= bs!597146 (and d!1239400 d!1239098)))

(assert (=> bs!597146 (= (and (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (rule!10818 t!8364))))) (= lambda!129686 lambda!129659))))

(declare-fun bs!597147 () Bool)

(assert (= bs!597147 (and d!1239400 d!1239112)))

(assert (=> bs!597147 (= lambda!129686 lambda!129661)))

(declare-fun b!4203598 () Bool)

(declare-fun e!2609420 () Bool)

(assert (=> b!4203598 (= e!2609420 true)))

(assert (=> d!1239400 e!2609420))

(assert (= d!1239400 b!4203598))

(assert (=> b!4203598 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (dynLambda!19928 order!24507 lambda!129686))))

(assert (=> b!4203598 (< (dynLambda!19927 order!24505 (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) (dynLambda!19928 order!24507 lambda!129686))))

(assert (=> d!1239400 (= (list!16691 (dynLambda!19922 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (dynLambda!19930 (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (seqFromList!5729 (_1!25111 lt!1496841))))) (list!16691 (seqFromList!5729 (_1!25111 lt!1496841))))))

(declare-fun lt!1497242 () Unit!65289)

(declare-fun ForallOf!1081 (Int BalanceConc!27456) Unit!65289)

(assert (=> d!1239400 (= lt!1497242 (ForallOf!1081 lambda!129686 (seqFromList!5729 (_1!25111 lt!1496841))))))

(assert (=> d!1239400 (= (lemmaSemiInverse!2470 (transformation!7720 (h!51617 rules!3967)) (seqFromList!5729 (_1!25111 lt!1496841))) lt!1497242)))

(declare-fun b_lambda!123753 () Bool)

(assert (=> (not b_lambda!123753) (not d!1239400)))

(declare-fun t!347215 () Bool)

(declare-fun tb!252097 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) t!347215) tb!252097))

(declare-fun tp!1284411 () Bool)

(declare-fun e!2609425 () Bool)

(declare-fun b!4203607 () Bool)

(assert (=> b!4203607 (= e!2609425 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (dynLambda!19930 (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (seqFromList!5729 (_1!25111 lt!1496841)))))) tp!1284411))))

(declare-fun result!307264 () Bool)

(assert (=> tb!252097 (= result!307264 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (dynLambda!19930 (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (seqFromList!5729 (_1!25111 lt!1496841))))) e!2609425))))

(assert (= tb!252097 b!4203607))

(declare-fun m!4791959 () Bool)

(assert (=> b!4203607 m!4791959))

(declare-fun m!4791961 () Bool)

(assert (=> tb!252097 m!4791961))

(assert (=> d!1239400 t!347215))

(declare-fun b_and!330191 () Bool)

(assert (= b_and!330127 (and (=> t!347215 result!307264) b_and!330191)))

(declare-fun t!347217 () Bool)

(declare-fun tb!252099 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) t!347217) tb!252099))

(declare-fun result!307266 () Bool)

(assert (= result!307266 result!307264))

(assert (=> d!1239400 t!347217))

(declare-fun b_and!330193 () Bool)

(assert (= b_and!330121 (and (=> t!347217 result!307266) b_and!330193)))

(declare-fun tb!252101 () Bool)

(declare-fun t!347219 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) t!347219) tb!252101))

(declare-fun result!307268 () Bool)

(assert (= result!307268 result!307264))

(assert (=> d!1239400 t!347219))

(declare-fun b_and!330195 () Bool)

(assert (= b_and!330125 (and (=> t!347219 result!307268) b_and!330195)))

(declare-fun t!347221 () Bool)

(declare-fun tb!252103 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) t!347221) tb!252103))

(declare-fun result!307270 () Bool)

(assert (= result!307270 result!307264))

(assert (=> d!1239400 t!347221))

(declare-fun b_and!330197 () Bool)

(assert (= b_and!330129 (and (=> t!347221 result!307270) b_and!330197)))

(declare-fun t!347223 () Bool)

(declare-fun tb!252105 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) t!347223) tb!252105))

(declare-fun result!307272 () Bool)

(assert (= result!307272 result!307264))

(assert (=> d!1239400 t!347223))

(declare-fun b_and!330199 () Bool)

(assert (= b_and!330123 (and (=> t!347223 result!307272) b_and!330199)))

(declare-fun b_lambda!123755 () Bool)

(assert (=> (not b_lambda!123755) (not d!1239400)))

(assert (=> d!1239400 t!347197))

(declare-fun b_and!330201 () Bool)

(assert (= b_and!330173 (and (=> t!347197 result!307244) b_and!330201)))

(assert (=> d!1239400 t!347199))

(declare-fun b_and!330203 () Bool)

(assert (= b_and!330175 (and (=> t!347199 result!307246) b_and!330203)))

(assert (=> d!1239400 t!347201))

(declare-fun b_and!330205 () Bool)

(assert (= b_and!330177 (and (=> t!347201 result!307248) b_and!330205)))

(assert (=> d!1239400 t!347203))

(declare-fun b_and!330207 () Bool)

(assert (= b_and!330179 (and (=> t!347203 result!307250) b_and!330207)))

(assert (=> d!1239400 t!347195))

(declare-fun b_and!330209 () Bool)

(assert (= b_and!330171 (and (=> t!347195 result!307242) b_and!330209)))

(assert (=> d!1239400 m!4790933))

(declare-fun m!4791963 () Bool)

(assert (=> d!1239400 m!4791963))

(declare-fun m!4791965 () Bool)

(assert (=> d!1239400 m!4791965))

(declare-fun m!4791967 () Bool)

(assert (=> d!1239400 m!4791967))

(assert (=> d!1239400 m!4790933))

(assert (=> d!1239400 m!4791927))

(assert (=> d!1239400 m!4790933))

(declare-fun m!4791969 () Bool)

(assert (=> d!1239400 m!4791969))

(assert (=> d!1239400 m!4791927))

(assert (=> d!1239400 m!4791965))

(assert (=> b!4202741 d!1239400))

(declare-fun d!1239420 () Bool)

(declare-fun lt!1497245 () Int)

(assert (=> d!1239420 (= lt!1497245 (size!33944 (list!16691 (seqFromList!5729 (_1!25111 lt!1496841)))))))

(declare-fun size!33947 (Conc!13931) Int)

(assert (=> d!1239420 (= lt!1497245 (size!33947 (c!716444 (seqFromList!5729 (_1!25111 lt!1496841)))))))

(assert (=> d!1239420 (= (size!33945 (seqFromList!5729 (_1!25111 lt!1496841))) lt!1497245)))

(declare-fun bs!597148 () Bool)

(assert (= bs!597148 d!1239420))

(assert (=> bs!597148 m!4790933))

(assert (=> bs!597148 m!4791969))

(assert (=> bs!597148 m!4791969))

(declare-fun m!4791983 () Bool)

(assert (=> bs!597148 m!4791983))

(declare-fun m!4791985 () Bool)

(assert (=> bs!597148 m!4791985))

(assert (=> b!4202741 d!1239420))

(declare-fun d!1239422 () Bool)

(assert (=> d!1239422 (= (seqFromList!5729 (_1!25111 lt!1496841)) (fromListB!2630 (_1!25111 lt!1496841)))))

(declare-fun bs!597149 () Bool)

(assert (= bs!597149 d!1239422))

(declare-fun m!4791987 () Bool)

(assert (=> bs!597149 m!4791987))

(assert (=> b!4202741 d!1239422))

(assert (=> b!4202741 d!1239166))

(declare-fun d!1239424 () Bool)

(assert (=> d!1239424 (= (isEmpty!27353 (originalCharacters!8102 t!8364)) ((_ is Nil!46195) (originalCharacters!8102 t!8364)))))

(assert (=> d!1238998 d!1239424))

(declare-fun d!1239426 () Bool)

(declare-fun charsToBigInt!0 (List!46320 Int) Int)

(assert (=> d!1239426 (= (inv!15 (value!240549 t!8364)) (= (charsToBigInt!0 (text!56099 (value!240549 t!8364)) 0) (value!240544 (value!240549 t!8364))))))

(declare-fun bs!597150 () Bool)

(assert (= bs!597150 d!1239426))

(declare-fun m!4791989 () Bool)

(assert (=> bs!597150 m!4791989))

(assert (=> b!4202917 d!1239426))

(declare-fun d!1239428 () Bool)

(declare-fun lt!1497246 () Bool)

(assert (=> d!1239428 (= lt!1497246 (select (content!7217 rules!3967) (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))

(declare-fun e!2609447 () Bool)

(assert (=> d!1239428 (= lt!1497246 e!2609447)))

(declare-fun res!1726393 () Bool)

(assert (=> d!1239428 (=> (not res!1726393) (not e!2609447))))

(assert (=> d!1239428 (= res!1726393 ((_ is Cons!46197) rules!3967))))

(assert (=> d!1239428 (= (contains!9535 rules!3967 (rule!10818 (_1!25109 (get!15024 lt!1496890)))) lt!1497246)))

(declare-fun b!4203650 () Bool)

(declare-fun e!2609446 () Bool)

(assert (=> b!4203650 (= e!2609447 e!2609446)))

(declare-fun res!1726394 () Bool)

(assert (=> b!4203650 (=> res!1726394 e!2609446)))

(assert (=> b!4203650 (= res!1726394 (= (h!51617 rules!3967) (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))

(declare-fun b!4203651 () Bool)

(assert (=> b!4203651 (= e!2609446 (contains!9535 (t!347020 rules!3967) (rule!10818 (_1!25109 (get!15024 lt!1496890)))))))

(assert (= (and d!1239428 res!1726393) b!4203650))

(assert (= (and b!4203650 (not res!1726394)) b!4203651))

(assert (=> d!1239428 m!4791021))

(declare-fun m!4791995 () Bool)

(assert (=> d!1239428 m!4791995))

(declare-fun m!4791997 () Bool)

(assert (=> b!4203651 m!4791997))

(assert (=> b!4202943 d!1239428))

(assert (=> b!4202943 d!1239190))

(declare-fun d!1239430 () Bool)

(declare-fun res!1726399 () Bool)

(declare-fun e!2609468 () Bool)

(assert (=> d!1239430 (=> res!1726399 e!2609468)))

(assert (=> d!1239430 (= res!1726399 ((_ is Nil!46197) rules!3967))))

(assert (=> d!1239430 (= (noDuplicateTag!3179 thiss!26544 rules!3967 Nil!46199) e!2609468)))

(declare-fun b!4203714 () Bool)

(declare-fun e!2609469 () Bool)

(assert (=> b!4203714 (= e!2609468 e!2609469)))

(declare-fun res!1726400 () Bool)

(assert (=> b!4203714 (=> (not res!1726400) (not e!2609469))))

(declare-fun contains!9537 (List!46323 String!53620) Bool)

(assert (=> b!4203714 (= res!1726400 (not (contains!9537 Nil!46199 (tag!8584 (h!51617 rules!3967)))))))

(declare-fun b!4203715 () Bool)

(assert (=> b!4203715 (= e!2609469 (noDuplicateTag!3179 thiss!26544 (t!347020 rules!3967) (Cons!46199 (tag!8584 (h!51617 rules!3967)) Nil!46199)))))

(assert (= (and d!1239430 (not res!1726399)) b!4203714))

(assert (= (and b!4203714 res!1726400) b!4203715))

(declare-fun m!4791999 () Bool)

(assert (=> b!4203714 m!4791999))

(declare-fun m!4792001 () Bool)

(assert (=> b!4203715 m!4792001))

(assert (=> b!4202923 d!1239430))

(declare-fun bs!597152 () Bool)

(declare-fun d!1239434 () Bool)

(assert (= bs!597152 (and d!1239434 d!1239278)))

(declare-fun lambda!129687 () Int)

(assert (=> bs!597152 (= (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (= lambda!129687 lambda!129670))))

(assert (=> d!1239434 true))

(assert (=> d!1239434 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 rBis!178))) (dynLambda!19933 order!24513 lambda!129687))))

(assert (=> d!1239434 (= (equivClasses!3249 (toChars!10287 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 rBis!178))) (Forall2!1173 lambda!129687))))

(declare-fun bs!597153 () Bool)

(assert (= bs!597153 d!1239434))

(declare-fun m!4792003 () Bool)

(assert (=> bs!597153 m!4792003))

(assert (=> b!4202772 d!1239434))

(declare-fun d!1239436 () Bool)

(declare-fun res!1726401 () Bool)

(declare-fun e!2609470 () Bool)

(assert (=> d!1239436 (=> (not res!1726401) (not e!2609470))))

(assert (=> d!1239436 (= res!1726401 (validRegex!5728 (regex!7720 (h!51617 (t!347020 rules!3967)))))))

(assert (=> d!1239436 (= (ruleValid!3432 thiss!26544 (h!51617 (t!347020 rules!3967))) e!2609470)))

(declare-fun b!4203716 () Bool)

(declare-fun res!1726402 () Bool)

(assert (=> b!4203716 (=> (not res!1726402) (not e!2609470))))

(assert (=> b!4203716 (= res!1726402 (not (nullable!4441 (regex!7720 (h!51617 (t!347020 rules!3967))))))))

(declare-fun b!4203717 () Bool)

(assert (=> b!4203717 (= e!2609470 (not (= (tag!8584 (h!51617 (t!347020 rules!3967))) (String!53621 ""))))))

(assert (= (and d!1239436 res!1726401) b!4203716))

(assert (= (and b!4203716 res!1726402) b!4203717))

(declare-fun m!4792005 () Bool)

(assert (=> d!1239436 m!4792005))

(declare-fun m!4792007 () Bool)

(assert (=> b!4203716 m!4792007))

(assert (=> b!4202894 d!1239436))

(declare-fun d!1239438 () Bool)

(assert (=> d!1239438 (= (head!8918 pBis!121) (h!51615 pBis!121))))

(assert (=> b!4202782 d!1239438))

(assert (=> b!4202782 d!1239082))

(declare-fun b!4203718 () Bool)

(declare-fun e!2609474 () Bool)

(assert (=> b!4203718 (= e!2609474 (= (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) (c!716445 (regex!7720 rBis!178))))))

(declare-fun b!4203719 () Bool)

(declare-fun e!2609475 () Bool)

(declare-fun lt!1497247 () Bool)

(assert (=> b!4203719 (= e!2609475 (not lt!1497247))))

(declare-fun b!4203720 () Bool)

(declare-fun res!1726410 () Bool)

(assert (=> b!4203720 (=> (not res!1726410) (not e!2609474))))

(declare-fun call!292752 () Bool)

(assert (=> b!4203720 (= res!1726410 (not call!292752))))

(declare-fun b!4203721 () Bool)

(declare-fun e!2609476 () Bool)

(assert (=> b!4203721 (= e!2609476 e!2609475)))

(declare-fun c!716647 () Bool)

(assert (=> b!4203721 (= c!716647 ((_ is EmptyLang!12625) (regex!7720 rBis!178)))))

(declare-fun b!4203722 () Bool)

(declare-fun e!2609473 () Bool)

(assert (=> b!4203722 (= e!2609473 (matchR!6348 (derivativeStep!3829 (regex!7720 rBis!178) (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))))) (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))))))))

(declare-fun bm!292747 () Bool)

(assert (=> bm!292747 (= call!292752 (isEmpty!27353 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))))))

(declare-fun b!4203723 () Bool)

(declare-fun res!1726406 () Bool)

(declare-fun e!2609471 () Bool)

(assert (=> b!4203723 (=> res!1726406 e!2609471)))

(assert (=> b!4203723 (= res!1726406 e!2609474)))

(declare-fun res!1726407 () Bool)

(assert (=> b!4203723 (=> (not res!1726407) (not e!2609474))))

(assert (=> b!4203723 (= res!1726407 lt!1497247)))

(declare-fun b!4203724 () Bool)

(declare-fun e!2609477 () Bool)

(assert (=> b!4203724 (= e!2609477 (not (= (head!8918 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) (c!716445 (regex!7720 rBis!178)))))))

(declare-fun d!1239440 () Bool)

(assert (=> d!1239440 e!2609476))

(declare-fun c!716648 () Bool)

(assert (=> d!1239440 (= c!716648 ((_ is EmptyExpr!12625) (regex!7720 rBis!178)))))

(assert (=> d!1239440 (= lt!1497247 e!2609473)))

(declare-fun c!716649 () Bool)

(assert (=> d!1239440 (= c!716649 (isEmpty!27353 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))))))

(assert (=> d!1239440 (validRegex!5728 (regex!7720 rBis!178))))

(assert (=> d!1239440 (= (matchR!6348 (regex!7720 rBis!178) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))) lt!1497247)))

(declare-fun b!4203725 () Bool)

(declare-fun e!2609472 () Bool)

(assert (=> b!4203725 (= e!2609471 e!2609472)))

(declare-fun res!1726408 () Bool)

(assert (=> b!4203725 (=> (not res!1726408) (not e!2609472))))

(assert (=> b!4203725 (= res!1726408 (not lt!1497247))))

(declare-fun b!4203726 () Bool)

(assert (=> b!4203726 (= e!2609473 (nullable!4441 (regex!7720 rBis!178)))))

(declare-fun b!4203727 () Bool)

(declare-fun res!1726405 () Bool)

(assert (=> b!4203727 (=> res!1726405 e!2609477)))

(assert (=> b!4203727 (= res!1726405 (not (isEmpty!27353 (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867))))))))))

(declare-fun b!4203728 () Bool)

(assert (=> b!4203728 (= e!2609476 (= lt!1497247 call!292752))))

(declare-fun b!4203729 () Bool)

(assert (=> b!4203729 (= e!2609472 e!2609477)))

(declare-fun res!1726403 () Bool)

(assert (=> b!4203729 (=> res!1726403 e!2609477)))

(assert (=> b!4203729 (= res!1726403 call!292752)))

(declare-fun b!4203730 () Bool)

(declare-fun res!1726404 () Bool)

(assert (=> b!4203730 (=> res!1726404 e!2609471)))

(assert (=> b!4203730 (= res!1726404 (not ((_ is ElementMatch!12625) (regex!7720 rBis!178))))))

(assert (=> b!4203730 (= e!2609475 e!2609471)))

(declare-fun b!4203731 () Bool)

(declare-fun res!1726409 () Bool)

(assert (=> b!4203731 (=> (not res!1726409) (not e!2609474))))

(assert (=> b!4203731 (= res!1726409 (isEmpty!27353 (tail!6765 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496867)))))))))

(assert (= (and d!1239440 c!716649) b!4203726))

(assert (= (and d!1239440 (not c!716649)) b!4203722))

(assert (= (and d!1239440 c!716648) b!4203728))

(assert (= (and d!1239440 (not c!716648)) b!4203721))

(assert (= (and b!4203721 c!716647) b!4203719))

(assert (= (and b!4203721 (not c!716647)) b!4203730))

(assert (= (and b!4203730 (not res!1726404)) b!4203723))

(assert (= (and b!4203723 res!1726407) b!4203720))

(assert (= (and b!4203720 res!1726410) b!4203731))

(assert (= (and b!4203731 res!1726409) b!4203718))

(assert (= (and b!4203723 (not res!1726406)) b!4203725))

(assert (= (and b!4203725 res!1726408) b!4203729))

(assert (= (and b!4203729 (not res!1726403)) b!4203727))

(assert (= (and b!4203727 (not res!1726405)) b!4203724))

(assert (= (or b!4203728 b!4203720 b!4203729) bm!292747))

(assert (=> b!4203727 m!4791075))

(declare-fun m!4792009 () Bool)

(assert (=> b!4203727 m!4792009))

(assert (=> b!4203727 m!4792009))

(declare-fun m!4792011 () Bool)

(assert (=> b!4203727 m!4792011))

(assert (=> bm!292747 m!4791075))

(declare-fun m!4792013 () Bool)

(assert (=> bm!292747 m!4792013))

(assert (=> d!1239440 m!4791075))

(assert (=> d!1239440 m!4792013))

(assert (=> d!1239440 m!4790977))

(assert (=> b!4203731 m!4791075))

(assert (=> b!4203731 m!4792009))

(assert (=> b!4203731 m!4792009))

(assert (=> b!4203731 m!4792011))

(assert (=> b!4203722 m!4791075))

(declare-fun m!4792015 () Bool)

(assert (=> b!4203722 m!4792015))

(assert (=> b!4203722 m!4792015))

(declare-fun m!4792017 () Bool)

(assert (=> b!4203722 m!4792017))

(assert (=> b!4203722 m!4791075))

(assert (=> b!4203722 m!4792009))

(assert (=> b!4203722 m!4792017))

(assert (=> b!4203722 m!4792009))

(declare-fun m!4792019 () Bool)

(assert (=> b!4203722 m!4792019))

(assert (=> b!4203724 m!4791075))

(assert (=> b!4203724 m!4792015))

(assert (=> b!4203718 m!4791075))

(assert (=> b!4203718 m!4792015))

(assert (=> b!4203726 m!4790979))

(assert (=> b!4202904 d!1239440))

(assert (=> b!4202904 d!1239176))

(assert (=> b!4202904 d!1239178))

(assert (=> b!4202904 d!1239096))

(declare-fun bs!597154 () Bool)

(declare-fun d!1239442 () Bool)

(assert (= bs!597154 (and d!1239442 d!1239278)))

(declare-fun lambda!129688 () Int)

(assert (=> bs!597154 (= (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (= lambda!129688 lambda!129670))))

(declare-fun bs!597155 () Bool)

(assert (= bs!597155 (and d!1239442 d!1239434)))

(assert (=> bs!597155 (= (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 rBis!178))) (= lambda!129688 lambda!129687))))

(assert (=> d!1239442 true))

(assert (=> d!1239442 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))) (dynLambda!19933 order!24513 lambda!129688))))

(assert (=> d!1239442 (= (equivClasses!3249 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))) (Forall2!1173 lambda!129688))))

(declare-fun bs!597156 () Bool)

(assert (= bs!597156 d!1239442))

(declare-fun m!4792021 () Bool)

(assert (=> bs!597156 m!4792021))

(assert (=> b!4202785 d!1239442))

(declare-fun d!1239444 () Bool)

(declare-fun e!2609479 () Bool)

(assert (=> d!1239444 e!2609479))

(declare-fun res!1726412 () Bool)

(assert (=> d!1239444 (=> (not res!1726412) (not e!2609479))))

(declare-fun lt!1497248 () List!46319)

(assert (=> d!1239444 (= res!1726412 (= (content!7215 lt!1497248) ((_ map or) (content!7215 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) (content!7215 (_2!25109 (get!15024 lt!1496842))))))))

(declare-fun e!2609478 () List!46319)

(assert (=> d!1239444 (= lt!1497248 e!2609478)))

(declare-fun c!716650 () Bool)

(assert (=> d!1239444 (= c!716650 ((_ is Nil!46195) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))))))

(assert (=> d!1239444 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))) (_2!25109 (get!15024 lt!1496842))) lt!1497248)))

(declare-fun b!4203732 () Bool)

(assert (=> b!4203732 (= e!2609478 (_2!25109 (get!15024 lt!1496842)))))

(declare-fun b!4203734 () Bool)

(declare-fun res!1726411 () Bool)

(assert (=> b!4203734 (=> (not res!1726411) (not e!2609479))))

(assert (=> b!4203734 (= res!1726411 (= (size!33944 lt!1497248) (+ (size!33944 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) (size!33944 (_2!25109 (get!15024 lt!1496842))))))))

(declare-fun b!4203735 () Bool)

(assert (=> b!4203735 (= e!2609479 (or (not (= (_2!25109 (get!15024 lt!1496842)) Nil!46195)) (= lt!1497248 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842)))))))))

(declare-fun b!4203733 () Bool)

(assert (=> b!4203733 (= e!2609478 (Cons!46195 (h!51615 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) (++!11794 (t!347018 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1496842))))) (_2!25109 (get!15024 lt!1496842)))))))

(assert (= (and d!1239444 c!716650) b!4203732))

(assert (= (and d!1239444 (not c!716650)) b!4203733))

(assert (= (and d!1239444 res!1726412) b!4203734))

(assert (= (and b!4203734 res!1726411) b!4203735))

(declare-fun m!4792023 () Bool)

(assert (=> d!1239444 m!4792023))

(assert (=> d!1239444 m!4790905))

(declare-fun m!4792025 () Bool)

(assert (=> d!1239444 m!4792025))

(declare-fun m!4792027 () Bool)

(assert (=> d!1239444 m!4792027))

(declare-fun m!4792029 () Bool)

(assert (=> b!4203734 m!4792029))

(assert (=> b!4203734 m!4790905))

(declare-fun m!4792031 () Bool)

(assert (=> b!4203734 m!4792031))

(assert (=> b!4203734 m!4790899))

(declare-fun m!4792033 () Bool)

(assert (=> b!4203733 m!4792033))

(assert (=> b!4202733 d!1239444))

(assert (=> b!4202733 d!1239324))

(assert (=> b!4202733 d!1239328))

(assert (=> b!4202733 d!1239076))

(assert (=> b!4202784 d!1239078))

(assert (=> b!4202784 d!1239258))

(declare-fun d!1239446 () Bool)

(declare-fun lt!1497249 () Int)

(assert (=> d!1239446 (= lt!1497249 (size!33944 (list!16691 (seqFromList!5729 (_1!25111 lt!1496866)))))))

(assert (=> d!1239446 (= lt!1497249 (size!33947 (c!716444 (seqFromList!5729 (_1!25111 lt!1496866)))))))

(assert (=> d!1239446 (= (size!33945 (seqFromList!5729 (_1!25111 lt!1496866))) lt!1497249)))

(declare-fun bs!597157 () Bool)

(assert (= bs!597157 d!1239446))

(assert (=> bs!597157 m!4791099))

(declare-fun m!4792035 () Bool)

(assert (=> bs!597157 m!4792035))

(assert (=> bs!597157 m!4792035))

(declare-fun m!4792037 () Bool)

(assert (=> bs!597157 m!4792037))

(declare-fun m!4792039 () Bool)

(assert (=> bs!597157 m!4792039))

(assert (=> b!4202906 d!1239446))

(assert (=> b!4202906 d!1239078))

(declare-fun d!1239448 () Bool)

(declare-fun e!2609480 () Bool)

(assert (=> d!1239448 e!2609480))

(declare-fun res!1726413 () Bool)

(assert (=> d!1239448 (=> res!1726413 e!2609480)))

(assert (=> d!1239448 (= res!1726413 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(declare-fun lt!1497250 () Unit!65289)

(assert (=> d!1239448 (= lt!1497250 (choose!25772 (regex!7720 rBis!178) input!3517))))

(assert (=> d!1239448 (validRegex!5728 (regex!7720 rBis!178))))

(assert (=> d!1239448 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1602 (regex!7720 rBis!178) input!3517) lt!1497250)))

(declare-fun b!4203736 () Bool)

(assert (=> b!4203736 (= e!2609480 (matchR!6348 (regex!7720 rBis!178) (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (= (and d!1239448 (not res!1726413)) b!4203736))

(declare-fun m!4792041 () Bool)

(assert (=> d!1239448 m!4792041))

(assert (=> d!1239448 m!4790919))

(assert (=> d!1239448 m!4790919))

(assert (=> d!1239448 m!4790901))

(assert (=> d!1239448 m!4791087))

(assert (=> d!1239448 m!4790977))

(assert (=> d!1239448 m!4791097))

(assert (=> d!1239448 m!4790901))

(assert (=> b!4203736 m!4790919))

(assert (=> b!4203736 m!4790901))

(assert (=> b!4203736 m!4790919))

(assert (=> b!4203736 m!4790901))

(assert (=> b!4203736 m!4791087))

(assert (=> b!4203736 m!4791089))

(assert (=> b!4202906 d!1239448))

(declare-fun d!1239450 () Bool)

(assert (=> d!1239450 (= (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) ((_ is Nil!46195) (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (=> b!4202906 d!1239450))

(assert (=> b!4202906 d!1239166))

(declare-fun lt!1497260 () List!46319)

(declare-fun call!292760 () Regex!12625)

(declare-fun bm!292748 () Bool)

(declare-fun call!292758 () tuple2!43954)

(declare-fun call!292757 () List!46319)

(assert (=> bm!292748 (= call!292758 (findLongestMatchInner!1629 call!292760 lt!1497260 (+ (size!33944 Nil!46195) 1) call!292757 input!3517 (size!33944 input!3517)))))

(declare-fun bm!292749 () Bool)

(declare-fun call!292755 () C!25444)

(assert (=> bm!292749 (= call!292760 (derivativeStep!3829 (regex!7720 rBis!178) call!292755))))

(declare-fun b!4203737 () Bool)

(declare-fun e!2609484 () tuple2!43954)

(declare-fun e!2609486 () tuple2!43954)

(assert (=> b!4203737 (= e!2609484 e!2609486)))

(declare-fun lt!1497277 () tuple2!43954)

(assert (=> b!4203737 (= lt!1497277 call!292758)))

(declare-fun c!716652 () Bool)

(assert (=> b!4203737 (= c!716652 (isEmpty!27353 (_1!25111 lt!1497277)))))

(declare-fun bm!292750 () Bool)

(declare-fun call!292754 () Bool)

(assert (=> bm!292750 (= call!292754 (isPrefix!4579 input!3517 input!3517))))

(declare-fun bm!292751 () Bool)

(assert (=> bm!292751 (= call!292757 (tail!6765 input!3517))))

(declare-fun b!4203738 () Bool)

(declare-fun e!2609481 () Unit!65289)

(declare-fun Unit!65300 () Unit!65289)

(assert (=> b!4203738 (= e!2609481 Unit!65300)))

(declare-fun lt!1497256 () Unit!65289)

(declare-fun call!292753 () Unit!65289)

(assert (=> b!4203738 (= lt!1497256 call!292753)))

(assert (=> b!4203738 call!292754))

(declare-fun lt!1497271 () Unit!65289)

(assert (=> b!4203738 (= lt!1497271 lt!1497256)))

(declare-fun lt!1497267 () Unit!65289)

(declare-fun call!292759 () Unit!65289)

(assert (=> b!4203738 (= lt!1497267 call!292759)))

(assert (=> b!4203738 (= input!3517 Nil!46195)))

(declare-fun lt!1497259 () Unit!65289)

(assert (=> b!4203738 (= lt!1497259 lt!1497267)))

(assert (=> b!4203738 false))

(declare-fun bm!292752 () Bool)

(assert (=> bm!292752 (= call!292753 (lemmaIsPrefixRefl!2996 input!3517 input!3517))))

(declare-fun b!4203739 () Bool)

(declare-fun Unit!65301 () Unit!65289)

(assert (=> b!4203739 (= e!2609481 Unit!65301)))

(declare-fun b!4203740 () Bool)

(declare-fun c!716654 () Bool)

(declare-fun call!292756 () Bool)

(assert (=> b!4203740 (= c!716654 call!292756)))

(declare-fun lt!1497276 () Unit!65289)

(declare-fun lt!1497268 () Unit!65289)

(assert (=> b!4203740 (= lt!1497276 lt!1497268)))

(declare-fun lt!1497262 () C!25444)

(declare-fun lt!1497266 () List!46319)

(assert (=> b!4203740 (= (++!11794 (++!11794 Nil!46195 (Cons!46195 lt!1497262 Nil!46195)) lt!1497266) input!3517)))

(assert (=> b!4203740 (= lt!1497268 (lemmaMoveElementToOtherListKeepsConcatEq!1297 Nil!46195 lt!1497262 lt!1497266 input!3517))))

(assert (=> b!4203740 (= lt!1497266 (tail!6765 input!3517))))

(assert (=> b!4203740 (= lt!1497262 (head!8918 input!3517))))

(declare-fun lt!1497278 () Unit!65289)

(declare-fun lt!1497265 () Unit!65289)

(assert (=> b!4203740 (= lt!1497278 lt!1497265)))

(assert (=> b!4203740 (isPrefix!4579 (++!11794 Nil!46195 (Cons!46195 (head!8918 (getSuffix!2854 input!3517 Nil!46195)) Nil!46195)) input!3517)))

(assert (=> b!4203740 (= lt!1497265 (lemmaAddHeadSuffixToPrefixStillPrefix!679 Nil!46195 input!3517))))

(declare-fun lt!1497253 () Unit!65289)

(declare-fun lt!1497272 () Unit!65289)

(assert (=> b!4203740 (= lt!1497253 lt!1497272)))

(assert (=> b!4203740 (= lt!1497272 (lemmaAddHeadSuffixToPrefixStillPrefix!679 Nil!46195 input!3517))))

(assert (=> b!4203740 (= lt!1497260 (++!11794 Nil!46195 (Cons!46195 (head!8918 input!3517) Nil!46195)))))

(declare-fun lt!1497273 () Unit!65289)

(assert (=> b!4203740 (= lt!1497273 e!2609481)))

(declare-fun c!716655 () Bool)

(assert (=> b!4203740 (= c!716655 (= (size!33944 Nil!46195) (size!33944 input!3517)))))

(declare-fun lt!1497263 () Unit!65289)

(declare-fun lt!1497270 () Unit!65289)

(assert (=> b!4203740 (= lt!1497263 lt!1497270)))

(assert (=> b!4203740 (<= (size!33944 Nil!46195) (size!33944 input!3517))))

(assert (=> b!4203740 (= lt!1497270 (lemmaIsPrefixThenSmallerEqSize!591 Nil!46195 input!3517))))

(declare-fun e!2609487 () tuple2!43954)

(assert (=> b!4203740 (= e!2609487 e!2609484)))

(declare-fun bm!292753 () Bool)

(assert (=> bm!292753 (= call!292755 (head!8918 input!3517))))

(declare-fun b!4203742 () Bool)

(declare-fun c!716653 () Bool)

(assert (=> b!4203742 (= c!716653 call!292756)))

(declare-fun lt!1497257 () Unit!65289)

(declare-fun lt!1497275 () Unit!65289)

(assert (=> b!4203742 (= lt!1497257 lt!1497275)))

(assert (=> b!4203742 (= input!3517 Nil!46195)))

(assert (=> b!4203742 (= lt!1497275 call!292759)))

(declare-fun lt!1497252 () Unit!65289)

(declare-fun lt!1497261 () Unit!65289)

(assert (=> b!4203742 (= lt!1497252 lt!1497261)))

(assert (=> b!4203742 call!292754))

(assert (=> b!4203742 (= lt!1497261 call!292753)))

(declare-fun e!2609485 () tuple2!43954)

(assert (=> b!4203742 (= e!2609487 e!2609485)))

(declare-fun b!4203743 () Bool)

(declare-fun e!2609482 () tuple2!43954)

(assert (=> b!4203743 (= e!2609482 e!2609487)))

(declare-fun c!716651 () Bool)

(assert (=> b!4203743 (= c!716651 (= (size!33944 Nil!46195) (size!33944 input!3517)))))

(declare-fun b!4203744 () Bool)

(assert (=> b!4203744 (= e!2609482 (tuple2!43955 Nil!46195 input!3517))))

(declare-fun b!4203745 () Bool)

(assert (=> b!4203745 (= e!2609485 (tuple2!43955 Nil!46195 input!3517))))

(declare-fun b!4203746 () Bool)

(assert (=> b!4203746 (= e!2609484 call!292758)))

(declare-fun b!4203747 () Bool)

(assert (=> b!4203747 (= e!2609486 (tuple2!43955 Nil!46195 input!3517))))

(declare-fun bm!292754 () Bool)

(assert (=> bm!292754 (= call!292756 (nullable!4441 (regex!7720 rBis!178)))))

(declare-fun bm!292755 () Bool)

(assert (=> bm!292755 (= call!292759 (lemmaIsPrefixSameLengthThenSameList!1025 input!3517 Nil!46195 input!3517))))

(declare-fun b!4203748 () Bool)

(declare-fun e!2609488 () Bool)

(declare-fun e!2609483 () Bool)

(assert (=> b!4203748 (= e!2609488 e!2609483)))

(declare-fun res!1726415 () Bool)

(assert (=> b!4203748 (=> res!1726415 e!2609483)))

(declare-fun lt!1497269 () tuple2!43954)

(assert (=> b!4203748 (= res!1726415 (isEmpty!27353 (_1!25111 lt!1497269)))))

(declare-fun b!4203741 () Bool)

(assert (=> b!4203741 (= e!2609483 (>= (size!33944 (_1!25111 lt!1497269)) (size!33944 Nil!46195)))))

(declare-fun d!1239452 () Bool)

(assert (=> d!1239452 e!2609488))

(declare-fun res!1726414 () Bool)

(assert (=> d!1239452 (=> (not res!1726414) (not e!2609488))))

(assert (=> d!1239452 (= res!1726414 (= (++!11794 (_1!25111 lt!1497269) (_2!25111 lt!1497269)) input!3517))))

(assert (=> d!1239452 (= lt!1497269 e!2609482)))

(declare-fun c!716656 () Bool)

(assert (=> d!1239452 (= c!716656 (lostCause!1053 (regex!7720 rBis!178)))))

(declare-fun lt!1497255 () Unit!65289)

(declare-fun Unit!65302 () Unit!65289)

(assert (=> d!1239452 (= lt!1497255 Unit!65302)))

(assert (=> d!1239452 (= (getSuffix!2854 input!3517 Nil!46195) input!3517)))

(declare-fun lt!1497264 () Unit!65289)

(declare-fun lt!1497254 () Unit!65289)

(assert (=> d!1239452 (= lt!1497264 lt!1497254)))

(declare-fun lt!1497258 () List!46319)

(assert (=> d!1239452 (= input!3517 lt!1497258)))

(assert (=> d!1239452 (= lt!1497254 (lemmaSamePrefixThenSameSuffix!2270 Nil!46195 input!3517 Nil!46195 lt!1497258 input!3517))))

(assert (=> d!1239452 (= lt!1497258 (getSuffix!2854 input!3517 Nil!46195))))

(declare-fun lt!1497251 () Unit!65289)

(declare-fun lt!1497274 () Unit!65289)

(assert (=> d!1239452 (= lt!1497251 lt!1497274)))

(assert (=> d!1239452 (isPrefix!4579 Nil!46195 (++!11794 Nil!46195 input!3517))))

(assert (=> d!1239452 (= lt!1497274 (lemmaConcatTwoListThenFirstIsPrefix!3058 Nil!46195 input!3517))))

(assert (=> d!1239452 (validRegex!5728 (regex!7720 rBis!178))))

(assert (=> d!1239452 (= (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)) lt!1497269)))

(declare-fun b!4203749 () Bool)

(assert (=> b!4203749 (= e!2609486 lt!1497277)))

(declare-fun b!4203750 () Bool)

(assert (=> b!4203750 (= e!2609485 (tuple2!43955 Nil!46195 Nil!46195))))

(assert (= (and d!1239452 c!716656) b!4203744))

(assert (= (and d!1239452 (not c!716656)) b!4203743))

(assert (= (and b!4203743 c!716651) b!4203742))

(assert (= (and b!4203743 (not c!716651)) b!4203740))

(assert (= (and b!4203742 c!716653) b!4203750))

(assert (= (and b!4203742 (not c!716653)) b!4203745))

(assert (= (and b!4203740 c!716655) b!4203738))

(assert (= (and b!4203740 (not c!716655)) b!4203739))

(assert (= (and b!4203740 c!716654) b!4203737))

(assert (= (and b!4203740 (not c!716654)) b!4203746))

(assert (= (and b!4203737 c!716652) b!4203747))

(assert (= (and b!4203737 (not c!716652)) b!4203749))

(assert (= (or b!4203737 b!4203746) bm!292753))

(assert (= (or b!4203737 b!4203746) bm!292751))

(assert (= (or b!4203737 b!4203746) bm!292749))

(assert (= (or b!4203737 b!4203746) bm!292748))

(assert (= (or b!4203742 b!4203738) bm!292752))

(assert (= (or b!4203742 b!4203740) bm!292754))

(assert (= (or b!4203742 b!4203738) bm!292750))

(assert (= (or b!4203742 b!4203738) bm!292755))

(assert (= (and d!1239452 res!1726414) b!4203748))

(assert (= (and b!4203748 (not res!1726415)) b!4203741))

(declare-fun m!4792043 () Bool)

(assert (=> b!4203741 m!4792043))

(assert (=> b!4203741 m!4790919))

(declare-fun m!4792045 () Bool)

(assert (=> b!4203737 m!4792045))

(assert (=> bm!292750 m!4790653))

(assert (=> bm!292755 m!4791419))

(assert (=> d!1239452 m!4791421))

(declare-fun m!4792047 () Bool)

(assert (=> d!1239452 m!4792047))

(assert (=> d!1239452 m!4791425))

(assert (=> d!1239452 m!4791427))

(declare-fun m!4792049 () Bool)

(assert (=> d!1239452 m!4792049))

(assert (=> d!1239452 m!4791425))

(assert (=> d!1239452 m!4791431))

(declare-fun m!4792051 () Bool)

(assert (=> d!1239452 m!4792051))

(assert (=> d!1239452 m!4790977))

(assert (=> bm!292748 m!4790901))

(declare-fun m!4792053 () Bool)

(assert (=> bm!292748 m!4792053))

(assert (=> bm!292754 m!4790979))

(assert (=> b!4203740 m!4791421))

(declare-fun m!4792055 () Bool)

(assert (=> b!4203740 m!4792055))

(declare-fun m!4792057 () Bool)

(assert (=> b!4203740 m!4792057))

(assert (=> b!4203740 m!4791421))

(assert (=> b!4203740 m!4791441))

(assert (=> b!4203740 m!4791443))

(assert (=> b!4203740 m!4791445))

(declare-fun m!4792059 () Bool)

(assert (=> b!4203740 m!4792059))

(assert (=> b!4203740 m!4790901))

(assert (=> b!4203740 m!4790963))

(assert (=> b!4203740 m!4791449))

(assert (=> b!4203740 m!4792055))

(assert (=> b!4203740 m!4790969))

(assert (=> b!4203740 m!4790919))

(assert (=> b!4203740 m!4791451))

(assert (=> b!4203740 m!4791443))

(assert (=> b!4203740 m!4791453))

(assert (=> bm!292752 m!4790655))

(declare-fun m!4792061 () Bool)

(assert (=> bm!292749 m!4792061))

(assert (=> bm!292751 m!4790969))

(assert (=> bm!292753 m!4790963))

(declare-fun m!4792063 () Bool)

(assert (=> b!4203748 m!4792063))

(assert (=> b!4202906 d!1239452))

(declare-fun bs!597158 () Bool)

(declare-fun d!1239454 () Bool)

(assert (= bs!597158 (and d!1239454 d!1239090)))

(declare-fun lambda!129689 () Int)

(assert (=> bs!597158 (= lambda!129689 lambda!129658)))

(declare-fun bs!597159 () Bool)

(assert (= bs!597159 (and d!1239454 d!1239098)))

(assert (=> bs!597159 (= (and (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (rule!10818 t!8364))))) (= lambda!129689 lambda!129659))))

(declare-fun bs!597160 () Bool)

(assert (= bs!597160 (and d!1239454 d!1239112)))

(assert (=> bs!597160 (= (and (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (= lambda!129689 lambda!129661))))

(declare-fun bs!597161 () Bool)

(assert (= bs!597161 (and d!1239454 d!1239400)))

(assert (=> bs!597161 (= (and (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (= lambda!129689 lambda!129686))))

(declare-fun b!4203751 () Bool)

(declare-fun e!2609489 () Bool)

(assert (=> b!4203751 (= e!2609489 true)))

(assert (=> d!1239454 e!2609489))

(assert (= d!1239454 b!4203751))

(assert (=> b!4203751 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 rBis!178))) (dynLambda!19928 order!24507 lambda!129689))))

(assert (=> b!4203751 (< (dynLambda!19927 order!24505 (toChars!10287 (transformation!7720 rBis!178))) (dynLambda!19928 order!24507 lambda!129689))))

(assert (=> d!1239454 (= (list!16691 (dynLambda!19922 (toChars!10287 (transformation!7720 rBis!178)) (dynLambda!19930 (toValue!10428 (transformation!7720 rBis!178)) (seqFromList!5729 (_1!25111 lt!1496866))))) (list!16691 (seqFromList!5729 (_1!25111 lt!1496866))))))

(declare-fun lt!1497279 () Unit!65289)

(assert (=> d!1239454 (= lt!1497279 (ForallOf!1081 lambda!129689 (seqFromList!5729 (_1!25111 lt!1496866))))))

(assert (=> d!1239454 (= (lemmaSemiInverse!2470 (transformation!7720 rBis!178) (seqFromList!5729 (_1!25111 lt!1496866))) lt!1497279)))

(declare-fun b_lambda!123771 () Bool)

(assert (=> (not b_lambda!123771) (not d!1239454)))

(declare-fun tb!252131 () Bool)

(declare-fun t!347249 () Bool)

(assert (=> (and b!4202989 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 rBis!178))) t!347249) tb!252131))

(declare-fun tp!1284534 () Bool)

(declare-fun b!4203752 () Bool)

(declare-fun e!2609490 () Bool)

(assert (=> b!4203752 (= e!2609490 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 rBis!178)) (dynLambda!19930 (toValue!10428 (transformation!7720 rBis!178)) (seqFromList!5729 (_1!25111 lt!1496866)))))) tp!1284534))))

(declare-fun result!307298 () Bool)

(assert (=> tb!252131 (= result!307298 (and (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 rBis!178)) (dynLambda!19930 (toValue!10428 (transformation!7720 rBis!178)) (seqFromList!5729 (_1!25111 lt!1496866))))) e!2609490))))

(assert (= tb!252131 b!4203752))

(declare-fun m!4792065 () Bool)

(assert (=> b!4203752 m!4792065))

(declare-fun m!4792067 () Bool)

(assert (=> tb!252131 m!4792067))

(assert (=> d!1239454 t!347249))

(declare-fun b_and!330215 () Bool)

(assert (= b_and!330193 (and (=> t!347249 result!307298) b_and!330215)))

(declare-fun tb!252133 () Bool)

(declare-fun t!347251 () Bool)

(assert (=> (and b!4202575 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 rBis!178))) t!347251) tb!252133))

(declare-fun result!307300 () Bool)

(assert (= result!307300 result!307298))

(assert (=> d!1239454 t!347251))

(declare-fun b_and!330217 () Bool)

(assert (= b_and!330191 (and (=> t!347251 result!307300) b_and!330217)))

(declare-fun t!347253 () Bool)

(declare-fun tb!252135 () Bool)

(assert (=> (and b!4202564 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 rBis!178))) t!347253) tb!252135))

(declare-fun result!307302 () Bool)

(assert (= result!307302 result!307298))

(assert (=> d!1239454 t!347253))

(declare-fun b_and!330219 () Bool)

(assert (= b_and!330199 (and (=> t!347253 result!307302) b_and!330219)))

(declare-fun t!347255 () Bool)

(declare-fun tb!252137 () Bool)

(assert (=> (and b!4202568 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 rBis!178))) t!347255) tb!252137))

(declare-fun result!307304 () Bool)

(assert (= result!307304 result!307298))

(assert (=> d!1239454 t!347255))

(declare-fun b_and!330221 () Bool)

(assert (= b_and!330195 (and (=> t!347255 result!307304) b_and!330221)))

(declare-fun tb!252139 () Bool)

(declare-fun t!347257 () Bool)

(assert (=> (and b!4202573 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 rBis!178))) t!347257) tb!252139))

(declare-fun result!307306 () Bool)

(assert (= result!307306 result!307298))

(assert (=> d!1239454 t!347257))

(declare-fun b_and!330223 () Bool)

(assert (= b_and!330197 (and (=> t!347257 result!307306) b_and!330223)))

(declare-fun b_lambda!123773 () Bool)

(assert (=> (not b_lambda!123773) (not d!1239454)))

(declare-fun t!347259 () Bool)

(declare-fun tb!252141 () Bool)

(assert (=> (and b!4202568 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 rBis!178))) t!347259) tb!252141))

(declare-fun result!307308 () Bool)

(assert (=> tb!252141 (= result!307308 (inv!21 (dynLambda!19930 (toValue!10428 (transformation!7720 rBis!178)) (seqFromList!5729 (_1!25111 lt!1496866)))))))

(declare-fun m!4792069 () Bool)

(assert (=> tb!252141 m!4792069))

(assert (=> d!1239454 t!347259))

(declare-fun b_and!330225 () Bool)

(assert (= b_and!330207 (and (=> t!347259 result!307308) b_and!330225)))

(declare-fun t!347261 () Bool)

(declare-fun tb!252143 () Bool)

(assert (=> (and b!4202564 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 rBis!178))) t!347261) tb!252143))

(declare-fun result!307310 () Bool)

(assert (= result!307310 result!307308))

(assert (=> d!1239454 t!347261))

(declare-fun b_and!330227 () Bool)

(assert (= b_and!330209 (and (=> t!347261 result!307310) b_and!330227)))

(declare-fun t!347263 () Bool)

(declare-fun tb!252145 () Bool)

(assert (=> (and b!4202989 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 rBis!178))) t!347263) tb!252145))

(declare-fun result!307312 () Bool)

(assert (= result!307312 result!307308))

(assert (=> d!1239454 t!347263))

(declare-fun b_and!330229 () Bool)

(assert (= b_and!330203 (and (=> t!347263 result!307312) b_and!330229)))

(declare-fun t!347265 () Bool)

(declare-fun tb!252147 () Bool)

(assert (=> (and b!4202573 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 rBis!178))) t!347265) tb!252147))

(declare-fun result!307314 () Bool)

(assert (= result!307314 result!307308))

(assert (=> d!1239454 t!347265))

(declare-fun b_and!330231 () Bool)

(assert (= b_and!330205 (and (=> t!347265 result!307314) b_and!330231)))

(declare-fun tb!252149 () Bool)

(declare-fun t!347267 () Bool)

(assert (=> (and b!4202575 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 rBis!178))) t!347267) tb!252149))

(declare-fun result!307316 () Bool)

(assert (= result!307316 result!307308))

(assert (=> d!1239454 t!347267))

(declare-fun b_and!330233 () Bool)

(assert (= b_and!330201 (and (=> t!347267 result!307316) b_and!330233)))

(assert (=> d!1239454 m!4791099))

(declare-fun m!4792071 () Bool)

(assert (=> d!1239454 m!4792071))

(declare-fun m!4792073 () Bool)

(assert (=> d!1239454 m!4792073))

(declare-fun m!4792075 () Bool)

(assert (=> d!1239454 m!4792075))

(assert (=> d!1239454 m!4791099))

(declare-fun m!4792077 () Bool)

(assert (=> d!1239454 m!4792077))

(assert (=> d!1239454 m!4791099))

(assert (=> d!1239454 m!4792035))

(assert (=> d!1239454 m!4792077))

(assert (=> d!1239454 m!4792073))

(assert (=> b!4202906 d!1239454))

(declare-fun d!1239456 () Bool)

(assert (=> d!1239456 (= (apply!10669 (transformation!7720 rBis!178) (seqFromList!5729 (_1!25111 lt!1496866))) (dynLambda!19930 (toValue!10428 (transformation!7720 rBis!178)) (seqFromList!5729 (_1!25111 lt!1496866))))))

(declare-fun b_lambda!123775 () Bool)

(assert (=> (not b_lambda!123775) (not d!1239456)))

(assert (=> d!1239456 t!347261))

(declare-fun b_and!330235 () Bool)

(assert (= b_and!330227 (and (=> t!347261 result!307310) b_and!330235)))

(assert (=> d!1239456 t!347259))

(declare-fun b_and!330237 () Bool)

(assert (= b_and!330225 (and (=> t!347259 result!307308) b_and!330237)))

(assert (=> d!1239456 t!347263))

(declare-fun b_and!330239 () Bool)

(assert (= b_and!330229 (and (=> t!347263 result!307312) b_and!330239)))

(assert (=> d!1239456 t!347267))

(declare-fun b_and!330241 () Bool)

(assert (= b_and!330233 (and (=> t!347267 result!307316) b_and!330241)))

(assert (=> d!1239456 t!347265))

(declare-fun b_and!330243 () Bool)

(assert (= b_and!330231 (and (=> t!347265 result!307314) b_and!330243)))

(assert (=> d!1239456 m!4791099))

(assert (=> d!1239456 m!4792077))

(assert (=> b!4202906 d!1239456))

(declare-fun d!1239458 () Bool)

(assert (=> d!1239458 (= (seqFromList!5729 (_1!25111 lt!1496866)) (fromListB!2630 (_1!25111 lt!1496866)))))

(declare-fun bs!597162 () Bool)

(assert (= bs!597162 d!1239458))

(declare-fun m!4792079 () Bool)

(assert (=> bs!597162 m!4792079))

(assert (=> b!4202906 d!1239458))

(declare-fun bs!597163 () Bool)

(declare-fun d!1239460 () Bool)

(assert (= bs!597163 (and d!1239460 d!1239278)))

(declare-fun lambda!129690 () Int)

(assert (=> bs!597163 (= (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) (= lambda!129690 lambda!129670))))

(declare-fun bs!597164 () Bool)

(assert (= bs!597164 (and d!1239460 d!1239434)))

(assert (=> bs!597164 (= (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 rBis!178))) (= lambda!129690 lambda!129687))))

(declare-fun bs!597165 () Bool)

(assert (= bs!597165 (and d!1239460 d!1239442)))

(assert (=> bs!597165 (= (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))) (= lambda!129690 lambda!129688))))

(assert (=> d!1239460 true))

(assert (=> d!1239460 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (rule!10818 t!8364)))) (dynLambda!19933 order!24513 lambda!129690))))

(assert (=> d!1239460 (= (equivClasses!3249 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 t!8364)))) (Forall2!1173 lambda!129690))))

(declare-fun bs!597166 () Bool)

(assert (= bs!597166 d!1239460))

(declare-fun m!4792081 () Bool)

(assert (=> bs!597166 m!4792081))

(assert (=> b!4202920 d!1239460))

(assert (=> b!4202735 d!1239076))

(declare-fun d!1239462 () Bool)

(declare-fun lt!1497280 () Int)

(assert (=> d!1239462 (>= lt!1497280 0)))

(declare-fun e!2609492 () Int)

(assert (=> d!1239462 (= lt!1497280 e!2609492)))

(declare-fun c!716657 () Bool)

(assert (=> d!1239462 (= c!716657 ((_ is Nil!46195) (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))))))

(assert (=> d!1239462 (= (size!33944 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))) lt!1497280)))

(declare-fun b!4203753 () Bool)

(assert (=> b!4203753 (= e!2609492 0)))

(declare-fun b!4203754 () Bool)

(assert (=> b!4203754 (= e!2609492 (+ 1 (size!33944 (t!347018 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496842)))))))))

(assert (= (and d!1239462 c!716657) b!4203753))

(assert (= (and d!1239462 (not c!716657)) b!4203754))

(declare-fun m!4792083 () Bool)

(assert (=> b!4203754 m!4792083))

(assert (=> b!4202735 d!1239462))

(declare-fun d!1239464 () Bool)

(assert (=> d!1239464 (= (inv!60769 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))) (isBalanced!3742 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))))

(declare-fun bs!597167 () Bool)

(assert (= bs!597167 d!1239464))

(declare-fun m!4792085 () Bool)

(assert (=> bs!597167 m!4792085))

(assert (=> tb!251923 d!1239464))

(declare-fun d!1239466 () Bool)

(declare-fun lt!1497281 () Bool)

(assert (=> d!1239466 (= lt!1497281 (select (content!7217 (t!347020 rules!3967)) rBis!178))))

(declare-fun e!2609494 () Bool)

(assert (=> d!1239466 (= lt!1497281 e!2609494)))

(declare-fun res!1726416 () Bool)

(assert (=> d!1239466 (=> (not res!1726416) (not e!2609494))))

(assert (=> d!1239466 (= res!1726416 ((_ is Cons!46197) (t!347020 rules!3967)))))

(assert (=> d!1239466 (= (contains!9535 (t!347020 rules!3967) rBis!178) lt!1497281)))

(declare-fun b!4203755 () Bool)

(declare-fun e!2609493 () Bool)

(assert (=> b!4203755 (= e!2609494 e!2609493)))

(declare-fun res!1726417 () Bool)

(assert (=> b!4203755 (=> res!1726417 e!2609493)))

(assert (=> b!4203755 (= res!1726417 (= (h!51617 (t!347020 rules!3967)) rBis!178))))

(declare-fun b!4203756 () Bool)

(assert (=> b!4203756 (= e!2609493 (contains!9535 (t!347020 (t!347020 rules!3967)) rBis!178))))

(assert (= (and d!1239466 res!1726416) b!4203755))

(assert (= (and b!4203755 (not res!1726417)) b!4203756))

(declare-fun m!4792087 () Bool)

(assert (=> d!1239466 m!4792087))

(declare-fun m!4792089 () Bool)

(assert (=> d!1239466 m!4792089))

(declare-fun m!4792091 () Bool)

(assert (=> b!4203756 m!4792091))

(assert (=> b!4202816 d!1239466))

(assert (=> b!4202899 d!1239096))

(declare-fun d!1239468 () Bool)

(assert (=> d!1239468 (= (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867))))) (dynLambda!19930 (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867))))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867))))))))

(declare-fun b_lambda!123777 () Bool)

(assert (=> (not b_lambda!123777) (not d!1239468)))

(declare-fun tb!252151 () Bool)

(declare-fun t!347269 () Bool)

(assert (=> (and b!4202568 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347269) tb!252151))

(declare-fun result!307318 () Bool)

(assert (=> tb!252151 (= result!307318 (inv!21 (dynLambda!19930 (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867))))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))))))))

(declare-fun m!4792093 () Bool)

(assert (=> tb!252151 m!4792093))

(assert (=> d!1239468 t!347269))

(declare-fun b_and!330245 () Bool)

(assert (= b_and!330237 (and (=> t!347269 result!307318) b_and!330245)))

(declare-fun t!347271 () Bool)

(declare-fun tb!252153 () Bool)

(assert (=> (and b!4202989 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347271) tb!252153))

(declare-fun result!307320 () Bool)

(assert (= result!307320 result!307318))

(assert (=> d!1239468 t!347271))

(declare-fun b_and!330247 () Bool)

(assert (= b_and!330239 (and (=> t!347271 result!307320) b_and!330247)))

(declare-fun t!347273 () Bool)

(declare-fun tb!252155 () Bool)

(assert (=> (and b!4202564 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347273) tb!252155))

(declare-fun result!307322 () Bool)

(assert (= result!307322 result!307318))

(assert (=> d!1239468 t!347273))

(declare-fun b_and!330249 () Bool)

(assert (= b_and!330235 (and (=> t!347273 result!307322) b_and!330249)))

(declare-fun t!347275 () Bool)

(declare-fun tb!252157 () Bool)

(assert (=> (and b!4202575 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347275) tb!252157))

(declare-fun result!307324 () Bool)

(assert (= result!307324 result!307318))

(assert (=> d!1239468 t!347275))

(declare-fun b_and!330251 () Bool)

(assert (= b_and!330241 (and (=> t!347275 result!307324) b_and!330251)))

(declare-fun tb!252159 () Bool)

(declare-fun t!347277 () Bool)

(assert (=> (and b!4202573 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347277) tb!252159))

(declare-fun result!307326 () Bool)

(assert (= result!307326 result!307318))

(assert (=> d!1239468 t!347277))

(declare-fun b_and!330253 () Bool)

(assert (= b_and!330243 (and (=> t!347277 result!307326) b_and!330253)))

(assert (=> d!1239468 m!4791093))

(declare-fun m!4792095 () Bool)

(assert (=> d!1239468 m!4792095))

(assert (=> b!4202899 d!1239468))

(declare-fun d!1239470 () Bool)

(assert (=> d!1239470 (= (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))) (fromListB!2630 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496867)))))))

(declare-fun bs!597168 () Bool)

(assert (= bs!597168 d!1239470))

(declare-fun m!4792097 () Bool)

(assert (=> bs!597168 m!4792097))

(assert (=> b!4202899 d!1239470))

(declare-fun d!1239472 () Bool)

(declare-fun charsToBigInt!1 (List!46320) Int)

(assert (=> d!1239472 (= (inv!17 (value!240549 tBis!41)) (= (charsToBigInt!1 (text!56098 (value!240549 tBis!41))) (value!240541 (value!240549 tBis!41))))))

(declare-fun bs!597169 () Bool)

(assert (= bs!597169 d!1239472))

(declare-fun m!4792099 () Bool)

(assert (=> bs!597169 m!4792099))

(assert (=> b!4202831 d!1239472))

(declare-fun bs!597170 () Bool)

(declare-fun d!1239474 () Bool)

(assert (= bs!597170 (and d!1239474 d!1239112)))

(declare-fun lambda!129691 () Int)

(assert (=> bs!597170 (= (and (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (= lambda!129691 lambda!129661))))

(declare-fun bs!597171 () Bool)

(assert (= bs!597171 (and d!1239474 d!1239454)))

(assert (=> bs!597171 (= (and (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 rBis!178))) (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 rBis!178)))) (= lambda!129691 lambda!129689))))

(declare-fun bs!597172 () Bool)

(assert (= bs!597172 (and d!1239474 d!1239090)))

(assert (=> bs!597172 (= (and (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 rBis!178))) (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 rBis!178)))) (= lambda!129691 lambda!129658))))

(declare-fun bs!597173 () Bool)

(assert (= bs!597173 (and d!1239474 d!1239400)))

(assert (=> bs!597173 (= (and (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (= lambda!129691 lambda!129686))))

(declare-fun bs!597174 () Bool)

(assert (= bs!597174 (and d!1239474 d!1239098)))

(assert (=> bs!597174 (= (and (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 t!8364))))) (= lambda!129691 lambda!129659))))

(assert (=> d!1239474 true))

(assert (=> d!1239474 (< (dynLambda!19927 order!24505 (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) (dynLambda!19928 order!24507 lambda!129691))))

(assert (=> d!1239474 true))

(assert (=> d!1239474 (< (dynLambda!19929 order!24509 (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))) (dynLambda!19928 order!24507 lambda!129691))))

(assert (=> d!1239474 (= (semiInverseModEq!3350 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 tBis!41)))) (Forall!1574 lambda!129691))))

(declare-fun bs!597175 () Bool)

(assert (= bs!597175 d!1239474))

(declare-fun m!4792101 () Bool)

(assert (=> bs!597175 m!4792101))

(assert (=> d!1238990 d!1239474))

(declare-fun d!1239476 () Bool)

(declare-fun e!2609497 () Bool)

(assert (=> d!1239476 e!2609497))

(declare-fun res!1726419 () Bool)

(assert (=> d!1239476 (=> (not res!1726419) (not e!2609497))))

(declare-fun lt!1497282 () List!46319)

(assert (=> d!1239476 (= res!1726419 (= (content!7215 lt!1497282) ((_ map or) (content!7215 (t!347018 pBis!121)) (content!7215 suffixBis!41))))))

(declare-fun e!2609496 () List!46319)

(assert (=> d!1239476 (= lt!1497282 e!2609496)))

(declare-fun c!716658 () Bool)

(assert (=> d!1239476 (= c!716658 ((_ is Nil!46195) (t!347018 pBis!121)))))

(assert (=> d!1239476 (= (++!11794 (t!347018 pBis!121) suffixBis!41) lt!1497282)))

(declare-fun b!4203757 () Bool)

(assert (=> b!4203757 (= e!2609496 suffixBis!41)))

(declare-fun b!4203759 () Bool)

(declare-fun res!1726418 () Bool)

(assert (=> b!4203759 (=> (not res!1726418) (not e!2609497))))

(assert (=> b!4203759 (= res!1726418 (= (size!33944 lt!1497282) (+ (size!33944 (t!347018 pBis!121)) (size!33944 suffixBis!41))))))

(declare-fun b!4203760 () Bool)

(assert (=> b!4203760 (= e!2609497 (or (not (= suffixBis!41 Nil!46195)) (= lt!1497282 (t!347018 pBis!121))))))

(declare-fun b!4203758 () Bool)

(assert (=> b!4203758 (= e!2609496 (Cons!46195 (h!51615 (t!347018 pBis!121)) (++!11794 (t!347018 (t!347018 pBis!121)) suffixBis!41)))))

(assert (= (and d!1239476 c!716658) b!4203757))

(assert (= (and d!1239476 (not c!716658)) b!4203758))

(assert (= (and d!1239476 res!1726419) b!4203759))

(assert (= (and b!4203759 res!1726418) b!4203760))

(declare-fun m!4792103 () Bool)

(assert (=> d!1239476 m!4792103))

(declare-fun m!4792105 () Bool)

(assert (=> d!1239476 m!4792105))

(assert (=> d!1239476 m!4790985))

(declare-fun m!4792107 () Bool)

(assert (=> b!4203759 m!4792107))

(assert (=> b!4203759 m!4791693))

(assert (=> b!4203759 m!4790989))

(declare-fun m!4792109 () Bool)

(assert (=> b!4203758 m!4792109))

(assert (=> b!4202793 d!1239476))

(declare-fun d!1239478 () Bool)

(assert (=> d!1239478 (= (list!16691 lt!1496874) (list!16693 (c!716444 lt!1496874)))))

(declare-fun bs!597176 () Bool)

(assert (= bs!597176 d!1239478))

(declare-fun m!4792111 () Bool)

(assert (=> bs!597176 m!4792111))

(assert (=> d!1239028 d!1239478))

(declare-fun d!1239480 () Bool)

(assert (=> d!1239480 (= (isEmpty!27352 lt!1496867) (not ((_ is Some!9907) lt!1496867)))))

(assert (=> d!1239020 d!1239480))

(declare-fun d!1239482 () Bool)

(assert (=> d!1239482 (= (isEmpty!27353 (_1!25111 lt!1496866)) ((_ is Nil!46195) (_1!25111 lt!1496866)))))

(assert (=> d!1239020 d!1239482))

(declare-fun d!1239484 () Bool)

(declare-fun lt!1497288 () tuple2!43954)

(assert (=> d!1239484 (= (++!11794 (_1!25111 lt!1497288) (_2!25111 lt!1497288)) input!3517)))

(assert (=> d!1239484 (= lt!1497288 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 0 input!3517 input!3517 (sizeTr!316 input!3517 0)))))

(declare-fun lt!1497285 () Unit!65289)

(declare-fun lt!1497287 () Unit!65289)

(assert (=> d!1239484 (= lt!1497285 lt!1497287)))

(declare-fun lt!1497283 () List!46319)

(declare-fun lt!1497284 () Int)

(assert (=> d!1239484 (= (sizeTr!316 lt!1497283 lt!1497284) (+ (size!33944 lt!1497283) lt!1497284))))

(assert (=> d!1239484 (= lt!1497287 (lemmaSizeTrEqualsSize!315 lt!1497283 lt!1497284))))

(assert (=> d!1239484 (= lt!1497284 0)))

(assert (=> d!1239484 (= lt!1497283 Nil!46195)))

(declare-fun lt!1497290 () Unit!65289)

(declare-fun lt!1497289 () Unit!65289)

(assert (=> d!1239484 (= lt!1497290 lt!1497289)))

(declare-fun lt!1497286 () Int)

(assert (=> d!1239484 (= (sizeTr!316 input!3517 lt!1497286) (+ (size!33944 input!3517) lt!1497286))))

(assert (=> d!1239484 (= lt!1497289 (lemmaSizeTrEqualsSize!315 input!3517 lt!1497286))))

(assert (=> d!1239484 (= lt!1497286 0)))

(assert (=> d!1239484 (validRegex!5728 (regex!7720 rBis!178))))

(assert (=> d!1239484 (= (findLongestMatch!1542 (regex!7720 rBis!178) input!3517) lt!1497288)))

(declare-fun bs!597177 () Bool)

(assert (= bs!597177 d!1239484))

(declare-fun m!4792113 () Bool)

(assert (=> bs!597177 m!4792113))

(assert (=> bs!597177 m!4790901))

(assert (=> bs!597177 m!4791619))

(declare-fun m!4792115 () Bool)

(assert (=> bs!597177 m!4792115))

(declare-fun m!4792117 () Bool)

(assert (=> bs!597177 m!4792117))

(declare-fun m!4792119 () Bool)

(assert (=> bs!597177 m!4792119))

(declare-fun m!4792121 () Bool)

(assert (=> bs!597177 m!4792121))

(assert (=> bs!597177 m!4791619))

(declare-fun m!4792123 () Bool)

(assert (=> bs!597177 m!4792123))

(declare-fun m!4792125 () Bool)

(assert (=> bs!597177 m!4792125))

(assert (=> bs!597177 m!4790977))

(assert (=> d!1239020 d!1239484))

(assert (=> d!1239020 d!1238992))

(declare-fun b!4203761 () Bool)

(declare-fun e!2609501 () Bool)

(assert (=> b!4203761 (= e!2609501 (= (head!8918 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) (c!716445 (regex!7720 rBis!178))))))

(declare-fun b!4203762 () Bool)

(declare-fun e!2609502 () Bool)

(declare-fun lt!1497291 () Bool)

(assert (=> b!4203762 (= e!2609502 (not lt!1497291))))

(declare-fun b!4203763 () Bool)

(declare-fun res!1726427 () Bool)

(assert (=> b!4203763 (=> (not res!1726427) (not e!2609501))))

(declare-fun call!292761 () Bool)

(assert (=> b!4203763 (= res!1726427 (not call!292761))))

(declare-fun b!4203764 () Bool)

(declare-fun e!2609503 () Bool)

(assert (=> b!4203764 (= e!2609503 e!2609502)))

(declare-fun c!716659 () Bool)

(assert (=> b!4203764 (= c!716659 ((_ is EmptyLang!12625) (regex!7720 rBis!178)))))

(declare-fun b!4203765 () Bool)

(declare-fun e!2609500 () Bool)

(assert (=> b!4203765 (= e!2609500 (matchR!6348 (derivativeStep!3829 (regex!7720 rBis!178) (head!8918 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517))))) (tail!6765 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517))))))))

(declare-fun bm!292756 () Bool)

(assert (=> bm!292756 (= call!292761 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(declare-fun b!4203766 () Bool)

(declare-fun res!1726423 () Bool)

(declare-fun e!2609498 () Bool)

(assert (=> b!4203766 (=> res!1726423 e!2609498)))

(assert (=> b!4203766 (= res!1726423 e!2609501)))

(declare-fun res!1726424 () Bool)

(assert (=> b!4203766 (=> (not res!1726424) (not e!2609501))))

(assert (=> b!4203766 (= res!1726424 lt!1497291)))

(declare-fun b!4203767 () Bool)

(declare-fun e!2609504 () Bool)

(assert (=> b!4203767 (= e!2609504 (not (= (head!8918 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) (c!716445 (regex!7720 rBis!178)))))))

(declare-fun d!1239486 () Bool)

(assert (=> d!1239486 e!2609503))

(declare-fun c!716660 () Bool)

(assert (=> d!1239486 (= c!716660 ((_ is EmptyExpr!12625) (regex!7720 rBis!178)))))

(assert (=> d!1239486 (= lt!1497291 e!2609500)))

(declare-fun c!716661 () Bool)

(assert (=> d!1239486 (= c!716661 (isEmpty!27353 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))

(assert (=> d!1239486 (validRegex!5728 (regex!7720 rBis!178))))

(assert (=> d!1239486 (= (matchR!6348 (regex!7720 rBis!178) (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))) lt!1497291)))

(declare-fun b!4203768 () Bool)

(declare-fun e!2609499 () Bool)

(assert (=> b!4203768 (= e!2609498 e!2609499)))

(declare-fun res!1726425 () Bool)

(assert (=> b!4203768 (=> (not res!1726425) (not e!2609499))))

(assert (=> b!4203768 (= res!1726425 (not lt!1497291))))

(declare-fun b!4203769 () Bool)

(assert (=> b!4203769 (= e!2609500 (nullable!4441 (regex!7720 rBis!178)))))

(declare-fun b!4203770 () Bool)

(declare-fun res!1726422 () Bool)

(assert (=> b!4203770 (=> res!1726422 e!2609504)))

(assert (=> b!4203770 (= res!1726422 (not (isEmpty!27353 (tail!6765 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517)))))))))

(declare-fun b!4203771 () Bool)

(assert (=> b!4203771 (= e!2609503 (= lt!1497291 call!292761))))

(declare-fun b!4203772 () Bool)

(assert (=> b!4203772 (= e!2609499 e!2609504)))

(declare-fun res!1726420 () Bool)

(assert (=> b!4203772 (=> res!1726420 e!2609504)))

(assert (=> b!4203772 (= res!1726420 call!292761)))

(declare-fun b!4203773 () Bool)

(declare-fun res!1726421 () Bool)

(assert (=> b!4203773 (=> res!1726421 e!2609498)))

(assert (=> b!4203773 (= res!1726421 (not ((_ is ElementMatch!12625) (regex!7720 rBis!178))))))

(assert (=> b!4203773 (= e!2609502 e!2609498)))

(declare-fun b!4203774 () Bool)

(declare-fun res!1726426 () Bool)

(assert (=> b!4203774 (=> (not res!1726426) (not e!2609501))))

(assert (=> b!4203774 (= res!1726426 (isEmpty!27353 (tail!6765 (_1!25111 (findLongestMatchInner!1629 (regex!7720 rBis!178) Nil!46195 (size!33944 Nil!46195) input!3517 input!3517 (size!33944 input!3517))))))))

(assert (= (and d!1239486 c!716661) b!4203769))

(assert (= (and d!1239486 (not c!716661)) b!4203765))

(assert (= (and d!1239486 c!716660) b!4203771))

(assert (= (and d!1239486 (not c!716660)) b!4203764))

(assert (= (and b!4203764 c!716659) b!4203762))

(assert (= (and b!4203764 (not c!716659)) b!4203773))

(assert (= (and b!4203773 (not res!1726421)) b!4203766))

(assert (= (and b!4203766 res!1726424) b!4203763))

(assert (= (and b!4203763 res!1726427) b!4203774))

(assert (= (and b!4203774 res!1726426) b!4203761))

(assert (= (and b!4203766 (not res!1726423)) b!4203768))

(assert (= (and b!4203768 res!1726425) b!4203772))

(assert (= (and b!4203772 (not res!1726420)) b!4203770))

(assert (= (and b!4203770 (not res!1726422)) b!4203767))

(assert (= (or b!4203771 b!4203763 b!4203772) bm!292756))

(declare-fun m!4792127 () Bool)

(assert (=> b!4203770 m!4792127))

(assert (=> b!4203770 m!4792127))

(declare-fun m!4792129 () Bool)

(assert (=> b!4203770 m!4792129))

(assert (=> bm!292756 m!4791097))

(assert (=> d!1239486 m!4791097))

(assert (=> d!1239486 m!4790977))

(assert (=> b!4203774 m!4792127))

(assert (=> b!4203774 m!4792127))

(assert (=> b!4203774 m!4792129))

(declare-fun m!4792131 () Bool)

(assert (=> b!4203765 m!4792131))

(assert (=> b!4203765 m!4792131))

(declare-fun m!4792133 () Bool)

(assert (=> b!4203765 m!4792133))

(assert (=> b!4203765 m!4792127))

(assert (=> b!4203765 m!4792133))

(assert (=> b!4203765 m!4792127))

(declare-fun m!4792135 () Bool)

(assert (=> b!4203765 m!4792135))

(assert (=> b!4203767 m!4792131))

(assert (=> b!4203761 m!4792131))

(assert (=> b!4203769 m!4790979))

(assert (=> b!4202901 d!1239486))

(assert (=> b!4202901 d!1239452))

(assert (=> b!4202901 d!1239166))

(assert (=> b!4202901 d!1239078))

(declare-fun d!1239488 () Bool)

(assert (=> d!1239488 (= (inv!17 (value!240549 t!8364)) (= (charsToBigInt!1 (text!56098 (value!240549 t!8364))) (value!240541 (value!240549 t!8364))))))

(declare-fun bs!597178 () Bool)

(assert (= bs!597178 d!1239488))

(declare-fun m!4792137 () Bool)

(assert (=> bs!597178 m!4792137))

(assert (=> b!4202919 d!1239488))

(declare-fun b!4203775 () Bool)

(declare-fun res!1726430 () Bool)

(declare-fun e!2609505 () Bool)

(assert (=> b!4203775 (=> (not res!1726430) (not e!2609505))))

(declare-fun lt!1497296 () Option!9908)

(assert (=> b!4203775 (= res!1726430 (= (++!11794 (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1497296)))) (_2!25109 (get!15024 lt!1497296))) input!3517))))

(declare-fun bm!292757 () Bool)

(declare-fun call!292762 () Option!9908)

(assert (=> bm!292757 (= call!292762 (maxPrefixOneRule!3310 thiss!26544 (h!51617 (t!347020 rules!3967)) input!3517))))

(declare-fun b!4203776 () Bool)

(assert (=> b!4203776 (= e!2609505 (contains!9535 (t!347020 rules!3967) (rule!10818 (_1!25109 (get!15024 lt!1497296)))))))

(declare-fun b!4203777 () Bool)

(declare-fun res!1726428 () Bool)

(assert (=> b!4203777 (=> (not res!1726428) (not e!2609505))))

(assert (=> b!4203777 (= res!1726428 (< (size!33944 (_2!25109 (get!15024 lt!1497296))) (size!33944 input!3517)))))

(declare-fun b!4203779 () Bool)

(declare-fun e!2609506 () Option!9908)

(assert (=> b!4203779 (= e!2609506 call!292762)))

(declare-fun b!4203780 () Bool)

(declare-fun e!2609507 () Bool)

(assert (=> b!4203780 (= e!2609507 e!2609505)))

(declare-fun res!1726431 () Bool)

(assert (=> b!4203780 (=> (not res!1726431) (not e!2609505))))

(assert (=> b!4203780 (= res!1726431 (isDefined!7370 lt!1497296))))

(declare-fun b!4203781 () Bool)

(declare-fun res!1726432 () Bool)

(assert (=> b!4203781 (=> (not res!1726432) (not e!2609505))))

(assert (=> b!4203781 (= res!1726432 (matchR!6348 (regex!7720 (rule!10818 (_1!25109 (get!15024 lt!1497296)))) (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1497296))))))))

(declare-fun b!4203782 () Bool)

(declare-fun res!1726433 () Bool)

(assert (=> b!4203782 (=> (not res!1726433) (not e!2609505))))

(assert (=> b!4203782 (= res!1726433 (= (value!240549 (_1!25109 (get!15024 lt!1497296))) (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1497296)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1497296)))))))))

(declare-fun b!4203783 () Bool)

(declare-fun res!1726434 () Bool)

(assert (=> b!4203783 (=> (not res!1726434) (not e!2609505))))

(assert (=> b!4203783 (= res!1726434 (= (list!16691 (charsOf!5143 (_1!25109 (get!15024 lt!1497296)))) (originalCharacters!8102 (_1!25109 (get!15024 lt!1497296)))))))

(declare-fun d!1239490 () Bool)

(assert (=> d!1239490 e!2609507))

(declare-fun res!1726429 () Bool)

(assert (=> d!1239490 (=> res!1726429 e!2609507)))

(assert (=> d!1239490 (= res!1726429 (isEmpty!27352 lt!1497296))))

(assert (=> d!1239490 (= lt!1497296 e!2609506)))

(declare-fun c!716662 () Bool)

(assert (=> d!1239490 (= c!716662 (and ((_ is Cons!46197) (t!347020 rules!3967)) ((_ is Nil!46197) (t!347020 (t!347020 rules!3967)))))))

(declare-fun lt!1497292 () Unit!65289)

(declare-fun lt!1497294 () Unit!65289)

(assert (=> d!1239490 (= lt!1497292 lt!1497294)))

(assert (=> d!1239490 (isPrefix!4579 input!3517 input!3517)))

(assert (=> d!1239490 (= lt!1497294 (lemmaIsPrefixRefl!2996 input!3517 input!3517))))

(assert (=> d!1239490 (rulesValidInductive!2858 thiss!26544 (t!347020 rules!3967))))

(assert (=> d!1239490 (= (maxPrefix!4355 thiss!26544 (t!347020 rules!3967) input!3517) lt!1497296)))

(declare-fun b!4203778 () Bool)

(declare-fun lt!1497293 () Option!9908)

(declare-fun lt!1497295 () Option!9908)

(assert (=> b!4203778 (= e!2609506 (ite (and ((_ is None!9907) lt!1497293) ((_ is None!9907) lt!1497295)) None!9907 (ite ((_ is None!9907) lt!1497295) lt!1497293 (ite ((_ is None!9907) lt!1497293) lt!1497295 (ite (>= (size!33941 (_1!25109 (v!40761 lt!1497293))) (size!33941 (_1!25109 (v!40761 lt!1497295)))) lt!1497293 lt!1497295)))))))

(assert (=> b!4203778 (= lt!1497293 call!292762)))

(assert (=> b!4203778 (= lt!1497295 (maxPrefix!4355 thiss!26544 (t!347020 (t!347020 rules!3967)) input!3517))))

(assert (= (and d!1239490 c!716662) b!4203779))

(assert (= (and d!1239490 (not c!716662)) b!4203778))

(assert (= (or b!4203779 b!4203778) bm!292757))

(assert (= (and d!1239490 (not res!1726429)) b!4203780))

(assert (= (and b!4203780 res!1726431) b!4203783))

(assert (= (and b!4203783 res!1726434) b!4203777))

(assert (= (and b!4203777 res!1726428) b!4203775))

(assert (= (and b!4203775 res!1726430) b!4203782))

(assert (= (and b!4203782 res!1726433) b!4203781))

(assert (= (and b!4203781 res!1726432) b!4203776))

(declare-fun m!4792139 () Bool)

(assert (=> b!4203783 m!4792139))

(declare-fun m!4792141 () Bool)

(assert (=> b!4203783 m!4792141))

(assert (=> b!4203783 m!4792141))

(declare-fun m!4792143 () Bool)

(assert (=> b!4203783 m!4792143))

(assert (=> b!4203782 m!4792139))

(declare-fun m!4792145 () Bool)

(assert (=> b!4203782 m!4792145))

(assert (=> b!4203782 m!4792145))

(declare-fun m!4792147 () Bool)

(assert (=> b!4203782 m!4792147))

(assert (=> b!4203775 m!4792139))

(assert (=> b!4203775 m!4792141))

(assert (=> b!4203775 m!4792141))

(assert (=> b!4203775 m!4792143))

(assert (=> b!4203775 m!4792143))

(declare-fun m!4792149 () Bool)

(assert (=> b!4203775 m!4792149))

(declare-fun m!4792151 () Bool)

(assert (=> d!1239490 m!4792151))

(assert (=> d!1239490 m!4790653))

(assert (=> d!1239490 m!4790655))

(assert (=> d!1239490 m!4790677))

(declare-fun m!4792153 () Bool)

(assert (=> bm!292757 m!4792153))

(assert (=> b!4203781 m!4792139))

(assert (=> b!4203781 m!4792141))

(assert (=> b!4203781 m!4792141))

(assert (=> b!4203781 m!4792143))

(assert (=> b!4203781 m!4792143))

(declare-fun m!4792155 () Bool)

(assert (=> b!4203781 m!4792155))

(declare-fun m!4792157 () Bool)

(assert (=> b!4203778 m!4792157))

(assert (=> b!4203776 m!4792139))

(declare-fun m!4792159 () Bool)

(assert (=> b!4203776 m!4792159))

(declare-fun m!4792161 () Bool)

(assert (=> b!4203780 m!4792161))

(assert (=> b!4203777 m!4792139))

(declare-fun m!4792163 () Bool)

(assert (=> b!4203777 m!4792163))

(assert (=> b!4203777 m!4790901))

(assert (=> b!4202945 d!1239490))

(declare-fun d!1239492 () Bool)

(declare-fun c!716663 () Bool)

(assert (=> d!1239492 (= c!716663 ((_ is Nil!46195) lt!1496854))))

(declare-fun e!2609508 () (InoxSet C!25444))

(assert (=> d!1239492 (= (content!7215 lt!1496854) e!2609508)))

(declare-fun b!4203784 () Bool)

(assert (=> b!4203784 (= e!2609508 ((as const (Array C!25444 Bool)) false))))

(declare-fun b!4203785 () Bool)

(assert (=> b!4203785 (= e!2609508 ((_ map or) (store ((as const (Array C!25444 Bool)) false) (h!51615 lt!1496854) true) (content!7215 (t!347018 lt!1496854))))))

(assert (= (and d!1239492 c!716663) b!4203784))

(assert (= (and d!1239492 (not c!716663)) b!4203785))

(declare-fun m!4792165 () Bool)

(assert (=> b!4203785 m!4792165))

(declare-fun m!4792167 () Bool)

(assert (=> b!4203785 m!4792167))

(assert (=> d!1238994 d!1239492))

(declare-fun d!1239494 () Bool)

(declare-fun c!716664 () Bool)

(assert (=> d!1239494 (= c!716664 ((_ is Nil!46195) pBis!121))))

(declare-fun e!2609509 () (InoxSet C!25444))

(assert (=> d!1239494 (= (content!7215 pBis!121) e!2609509)))

(declare-fun b!4203786 () Bool)

(assert (=> b!4203786 (= e!2609509 ((as const (Array C!25444 Bool)) false))))

(declare-fun b!4203787 () Bool)

(assert (=> b!4203787 (= e!2609509 ((_ map or) (store ((as const (Array C!25444 Bool)) false) (h!51615 pBis!121) true) (content!7215 (t!347018 pBis!121))))))

(assert (= (and d!1239494 c!716664) b!4203786))

(assert (= (and d!1239494 (not c!716664)) b!4203787))

(declare-fun m!4792169 () Bool)

(assert (=> b!4203787 m!4792169))

(assert (=> b!4203787 m!4792105))

(assert (=> d!1238994 d!1239494))

(declare-fun d!1239496 () Bool)

(declare-fun c!716665 () Bool)

(assert (=> d!1239496 (= c!716665 ((_ is Nil!46195) suffixBis!41))))

(declare-fun e!2609510 () (InoxSet C!25444))

(assert (=> d!1239496 (= (content!7215 suffixBis!41) e!2609510)))

(declare-fun b!4203788 () Bool)

(assert (=> b!4203788 (= e!2609510 ((as const (Array C!25444 Bool)) false))))

(declare-fun b!4203789 () Bool)

(assert (=> b!4203789 (= e!2609510 ((_ map or) (store ((as const (Array C!25444 Bool)) false) (h!51615 suffixBis!41) true) (content!7215 (t!347018 suffixBis!41))))))

(assert (= (and d!1239496 c!716665) b!4203788))

(assert (= (and d!1239496 (not c!716665)) b!4203789))

(declare-fun m!4792171 () Bool)

(assert (=> b!4203789 m!4792171))

(declare-fun m!4792173 () Bool)

(assert (=> b!4203789 m!4792173))

(assert (=> d!1238994 d!1239496))

(declare-fun b!4203799 () Bool)

(declare-fun e!2609515 () List!46319)

(declare-fun e!2609516 () List!46319)

(assert (=> b!4203799 (= e!2609515 e!2609516)))

(declare-fun c!716671 () Bool)

(assert (=> b!4203799 (= c!716671 ((_ is Leaf!21535) (c!716444 (charsOf!5143 tBis!41))))))

(declare-fun b!4203801 () Bool)

(assert (=> b!4203801 (= e!2609516 (++!11794 (list!16693 (left!34406 (c!716444 (charsOf!5143 tBis!41)))) (list!16693 (right!34736 (c!716444 (charsOf!5143 tBis!41))))))))

(declare-fun b!4203800 () Bool)

(declare-fun list!16695 (IArray!27867) List!46319)

(assert (=> b!4203800 (= e!2609516 (list!16695 (xs!17237 (c!716444 (charsOf!5143 tBis!41)))))))

(declare-fun d!1239498 () Bool)

(declare-fun c!716670 () Bool)

(assert (=> d!1239498 (= c!716670 ((_ is Empty!13931) (c!716444 (charsOf!5143 tBis!41))))))

(assert (=> d!1239498 (= (list!16693 (c!716444 (charsOf!5143 tBis!41))) e!2609515)))

(declare-fun b!4203798 () Bool)

(assert (=> b!4203798 (= e!2609515 Nil!46195)))

(assert (= (and d!1239498 c!716670) b!4203798))

(assert (= (and d!1239498 (not c!716670)) b!4203799))

(assert (= (and b!4203799 c!716671) b!4203800))

(assert (= (and b!4203799 (not c!716671)) b!4203801))

(declare-fun m!4792175 () Bool)

(assert (=> b!4203801 m!4792175))

(declare-fun m!4792177 () Bool)

(assert (=> b!4203801 m!4792177))

(assert (=> b!4203801 m!4792175))

(assert (=> b!4203801 m!4792177))

(declare-fun m!4792179 () Bool)

(assert (=> b!4203801 m!4792179))

(declare-fun m!4792181 () Bool)

(assert (=> b!4203800 m!4792181))

(assert (=> d!1239026 d!1239498))

(assert (=> b!4202908 d!1239082))

(declare-fun d!1239500 () Bool)

(declare-fun c!716674 () Bool)

(assert (=> d!1239500 (= c!716674 ((_ is Nil!46197) rules!3967))))

(declare-fun e!2609519 () (InoxSet Rule!15240))

(assert (=> d!1239500 (= (content!7217 rules!3967) e!2609519)))

(declare-fun b!4203806 () Bool)

(assert (=> b!4203806 (= e!2609519 ((as const (Array Rule!15240 Bool)) false))))

(declare-fun b!4203807 () Bool)

(assert (=> b!4203807 (= e!2609519 ((_ map or) (store ((as const (Array Rule!15240 Bool)) false) (h!51617 rules!3967) true) (content!7217 (t!347020 rules!3967))))))

(assert (= (and d!1239500 c!716674) b!4203806))

(assert (= (and d!1239500 (not c!716674)) b!4203807))

(declare-fun m!4792183 () Bool)

(assert (=> b!4203807 m!4792183))

(assert (=> b!4203807 m!4792087))

(assert (=> d!1239004 d!1239500))

(declare-fun d!1239502 () Bool)

(declare-fun c!716675 () Bool)

(assert (=> d!1239502 (= c!716675 ((_ is Node!13931) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))))

(declare-fun e!2609520 () Bool)

(assert (=> d!1239502 (= (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))) e!2609520)))

(declare-fun b!4203808 () Bool)

(assert (=> b!4203808 (= e!2609520 (inv!60772 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))))

(declare-fun b!4203809 () Bool)

(declare-fun e!2609521 () Bool)

(assert (=> b!4203809 (= e!2609520 e!2609521)))

(declare-fun res!1726435 () Bool)

(assert (=> b!4203809 (= res!1726435 (not ((_ is Leaf!21535) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))))))))

(assert (=> b!4203809 (=> res!1726435 e!2609521)))

(declare-fun b!4203810 () Bool)

(assert (=> b!4203810 (= e!2609521 (inv!60773 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))))))

(assert (= (and d!1239502 c!716675) b!4203808))

(assert (= (and d!1239502 (not c!716675)) b!4203809))

(assert (= (and b!4203809 (not res!1726435)) b!4203810))

(declare-fun m!4792185 () Bool)

(assert (=> b!4203808 m!4792185))

(declare-fun m!4792187 () Bool)

(assert (=> b!4203810 m!4792187))

(assert (=> b!4202806 d!1239502))

(declare-fun d!1239504 () Bool)

(assert (=> d!1239504 (= (list!16691 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))) (list!16693 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))))))

(declare-fun bs!597179 () Bool)

(assert (= bs!597179 d!1239504))

(declare-fun m!4792189 () Bool)

(assert (=> bs!597179 m!4792189))

(assert (=> b!4202807 d!1239504))

(declare-fun d!1239506 () Bool)

(assert (=> d!1239506 (= (isDefined!7370 lt!1496890) (not (isEmpty!27352 lt!1496890)))))

(declare-fun bs!597180 () Bool)

(assert (= bs!597180 d!1239506))

(assert (=> bs!597180 m!4791149))

(assert (=> b!4202947 d!1239506))

(declare-fun d!1239508 () Bool)

(assert (=> d!1239508 (= (inv!15 (value!240549 tBis!41)) (= (charsToBigInt!0 (text!56099 (value!240549 tBis!41)) 0) (value!240544 (value!240549 tBis!41))))))

(declare-fun bs!597181 () Bool)

(assert (= bs!597181 d!1239508))

(declare-fun m!4792191 () Bool)

(assert (=> bs!597181 m!4792191))

(assert (=> b!4202829 d!1239508))

(assert (=> b!4202949 d!1239190))

(declare-fun d!1239510 () Bool)

(assert (=> d!1239510 (= (apply!10669 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890))))) (dynLambda!19930 (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890))))))))

(declare-fun b_lambda!123779 () Bool)

(assert (=> (not b_lambda!123779) (not d!1239510)))

(declare-fun tb!252161 () Bool)

(declare-fun t!347280 () Bool)

(assert (=> (and b!4202568 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347280) tb!252161))

(declare-fun result!307328 () Bool)

(assert (=> tb!252161 (= result!307328 (inv!21 (dynLambda!19930 (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890))))) (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890)))))))))

(declare-fun m!4792193 () Bool)

(assert (=> tb!252161 m!4792193))

(assert (=> d!1239510 t!347280))

(declare-fun b_and!330255 () Bool)

(assert (= b_and!330245 (and (=> t!347280 result!307328) b_and!330255)))

(declare-fun tb!252163 () Bool)

(declare-fun t!347282 () Bool)

(assert (=> (and b!4202989 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347282) tb!252163))

(declare-fun result!307330 () Bool)

(assert (= result!307330 result!307328))

(assert (=> d!1239510 t!347282))

(declare-fun b_and!330257 () Bool)

(assert (= b_and!330247 (and (=> t!347282 result!307330) b_and!330257)))

(declare-fun tb!252165 () Bool)

(declare-fun t!347284 () Bool)

(assert (=> (and b!4202573 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347284) tb!252165))

(declare-fun result!307332 () Bool)

(assert (= result!307332 result!307328))

(assert (=> d!1239510 t!347284))

(declare-fun b_and!330259 () Bool)

(assert (= b_and!330253 (and (=> t!347284 result!307332) b_and!330259)))

(declare-fun t!347286 () Bool)

(declare-fun tb!252167 () Bool)

(assert (=> (and b!4202575 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347286) tb!252167))

(declare-fun result!307334 () Bool)

(assert (= result!307334 result!307328))

(assert (=> d!1239510 t!347286))

(declare-fun b_and!330261 () Bool)

(assert (= b_and!330251 (and (=> t!347286 result!307334) b_and!330261)))

(declare-fun tb!252169 () Bool)

(declare-fun t!347288 () Bool)

(assert (=> (and b!4202564 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347288) tb!252169))

(declare-fun result!307336 () Bool)

(assert (= result!307336 result!307328))

(assert (=> d!1239510 t!347288))

(declare-fun b_and!330263 () Bool)

(assert (= b_and!330249 (and (=> t!347288 result!307336) b_and!330263)))

(assert (=> d!1239510 m!4791143))

(declare-fun m!4792195 () Bool)

(assert (=> d!1239510 m!4792195))

(assert (=> b!4202949 d!1239510))

(declare-fun d!1239512 () Bool)

(assert (=> d!1239512 (= (seqFromList!5729 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890)))) (fromListB!2630 (originalCharacters!8102 (_1!25109 (get!15024 lt!1496890)))))))

(declare-fun bs!597182 () Bool)

(assert (= bs!597182 d!1239512))

(declare-fun m!4792197 () Bool)

(assert (=> bs!597182 m!4792197))

(assert (=> b!4202949 d!1239512))

(assert (=> b!4202910 d!1239078))

(declare-fun b!4203814 () Bool)

(declare-fun e!2609523 () Bool)

(declare-fun tp!1284536 () Bool)

(declare-fun tp!1284538 () Bool)

(assert (=> b!4203814 (= e!2609523 (and tp!1284536 tp!1284538))))

(declare-fun b!4203813 () Bool)

(declare-fun tp!1284537 () Bool)

(assert (=> b!4203813 (= e!2609523 tp!1284537)))

(declare-fun b!4203812 () Bool)

(declare-fun tp!1284539 () Bool)

(declare-fun tp!1284535 () Bool)

(assert (=> b!4203812 (= e!2609523 (and tp!1284539 tp!1284535))))

(declare-fun b!4203811 () Bool)

(assert (=> b!4203811 (= e!2609523 tp_is_empty!22217)))

(assert (=> b!4202988 (= tp!1284384 e!2609523)))

(assert (= (and b!4202988 ((_ is ElementMatch!12625) (regex!7720 (h!51617 (t!347020 rules!3967))))) b!4203811))

(assert (= (and b!4202988 ((_ is Concat!20576) (regex!7720 (h!51617 (t!347020 rules!3967))))) b!4203812))

(assert (= (and b!4202988 ((_ is Star!12625) (regex!7720 (h!51617 (t!347020 rules!3967))))) b!4203813))

(assert (= (and b!4202988 ((_ is Union!12625) (regex!7720 (h!51617 (t!347020 rules!3967))))) b!4203814))

(declare-fun b!4203818 () Bool)

(declare-fun e!2609524 () Bool)

(declare-fun tp!1284541 () Bool)

(declare-fun tp!1284543 () Bool)

(assert (=> b!4203818 (= e!2609524 (and tp!1284541 tp!1284543))))

(declare-fun b!4203817 () Bool)

(declare-fun tp!1284542 () Bool)

(assert (=> b!4203817 (= e!2609524 tp!1284542)))

(declare-fun b!4203816 () Bool)

(declare-fun tp!1284544 () Bool)

(declare-fun tp!1284540 () Bool)

(assert (=> b!4203816 (= e!2609524 (and tp!1284544 tp!1284540))))

(declare-fun b!4203815 () Bool)

(assert (=> b!4203815 (= e!2609524 tp_is_empty!22217)))

(assert (=> b!4202977 (= tp!1284372 e!2609524)))

(assert (= (and b!4202977 ((_ is ElementMatch!12625) (reg!12954 (regex!7720 (h!51617 rules!3967))))) b!4203815))

(assert (= (and b!4202977 ((_ is Concat!20576) (reg!12954 (regex!7720 (h!51617 rules!3967))))) b!4203816))

(assert (= (and b!4202977 ((_ is Star!12625) (reg!12954 (regex!7720 (h!51617 rules!3967))))) b!4203817))

(assert (= (and b!4202977 ((_ is Union!12625) (reg!12954 (regex!7720 (h!51617 rules!3967))))) b!4203818))

(declare-fun b!4203822 () Bool)

(declare-fun e!2609525 () Bool)

(declare-fun tp!1284546 () Bool)

(declare-fun tp!1284548 () Bool)

(assert (=> b!4203822 (= e!2609525 (and tp!1284546 tp!1284548))))

(declare-fun b!4203821 () Bool)

(declare-fun tp!1284547 () Bool)

(assert (=> b!4203821 (= e!2609525 tp!1284547)))

(declare-fun b!4203820 () Bool)

(declare-fun tp!1284549 () Bool)

(declare-fun tp!1284545 () Bool)

(assert (=> b!4203820 (= e!2609525 (and tp!1284549 tp!1284545))))

(declare-fun b!4203819 () Bool)

(assert (=> b!4203819 (= e!2609525 tp_is_empty!22217)))

(assert (=> b!4202976 (= tp!1284374 e!2609525)))

(assert (= (and b!4202976 ((_ is ElementMatch!12625) (regOne!25762 (regex!7720 (h!51617 rules!3967))))) b!4203819))

(assert (= (and b!4202976 ((_ is Concat!20576) (regOne!25762 (regex!7720 (h!51617 rules!3967))))) b!4203820))

(assert (= (and b!4202976 ((_ is Star!12625) (regOne!25762 (regex!7720 (h!51617 rules!3967))))) b!4203821))

(assert (= (and b!4202976 ((_ is Union!12625) (regOne!25762 (regex!7720 (h!51617 rules!3967))))) b!4203822))

(declare-fun b!4203826 () Bool)

(declare-fun e!2609526 () Bool)

(declare-fun tp!1284551 () Bool)

(declare-fun tp!1284553 () Bool)

(assert (=> b!4203826 (= e!2609526 (and tp!1284551 tp!1284553))))

(declare-fun b!4203825 () Bool)

(declare-fun tp!1284552 () Bool)

(assert (=> b!4203825 (= e!2609526 tp!1284552)))

(declare-fun b!4203824 () Bool)

(declare-fun tp!1284554 () Bool)

(declare-fun tp!1284550 () Bool)

(assert (=> b!4203824 (= e!2609526 (and tp!1284554 tp!1284550))))

(declare-fun b!4203823 () Bool)

(assert (=> b!4203823 (= e!2609526 tp_is_empty!22217)))

(assert (=> b!4202976 (= tp!1284370 e!2609526)))

(assert (= (and b!4202976 ((_ is ElementMatch!12625) (regTwo!25762 (regex!7720 (h!51617 rules!3967))))) b!4203823))

(assert (= (and b!4202976 ((_ is Concat!20576) (regTwo!25762 (regex!7720 (h!51617 rules!3967))))) b!4203824))

(assert (= (and b!4202976 ((_ is Star!12625) (regTwo!25762 (regex!7720 (h!51617 rules!3967))))) b!4203825))

(assert (= (and b!4202976 ((_ is Union!12625) (regTwo!25762 (regex!7720 (h!51617 rules!3967))))) b!4203826))

(declare-fun b!4203830 () Bool)

(declare-fun e!2609527 () Bool)

(declare-fun tp!1284556 () Bool)

(declare-fun tp!1284558 () Bool)

(assert (=> b!4203830 (= e!2609527 (and tp!1284556 tp!1284558))))

(declare-fun b!4203829 () Bool)

(declare-fun tp!1284557 () Bool)

(assert (=> b!4203829 (= e!2609527 tp!1284557)))

(declare-fun b!4203828 () Bool)

(declare-fun tp!1284559 () Bool)

(declare-fun tp!1284555 () Bool)

(assert (=> b!4203828 (= e!2609527 (and tp!1284559 tp!1284555))))

(declare-fun b!4203827 () Bool)

(assert (=> b!4203827 (= e!2609527 tp_is_empty!22217)))

(assert (=> b!4202978 (= tp!1284371 e!2609527)))

(assert (= (and b!4202978 ((_ is ElementMatch!12625) (regOne!25763 (regex!7720 (h!51617 rules!3967))))) b!4203827))

(assert (= (and b!4202978 ((_ is Concat!20576) (regOne!25763 (regex!7720 (h!51617 rules!3967))))) b!4203828))

(assert (= (and b!4202978 ((_ is Star!12625) (regOne!25763 (regex!7720 (h!51617 rules!3967))))) b!4203829))

(assert (= (and b!4202978 ((_ is Union!12625) (regOne!25763 (regex!7720 (h!51617 rules!3967))))) b!4203830))

(declare-fun b!4203834 () Bool)

(declare-fun e!2609528 () Bool)

(declare-fun tp!1284561 () Bool)

(declare-fun tp!1284563 () Bool)

(assert (=> b!4203834 (= e!2609528 (and tp!1284561 tp!1284563))))

(declare-fun b!4203833 () Bool)

(declare-fun tp!1284562 () Bool)

(assert (=> b!4203833 (= e!2609528 tp!1284562)))

(declare-fun b!4203832 () Bool)

(declare-fun tp!1284564 () Bool)

(declare-fun tp!1284560 () Bool)

(assert (=> b!4203832 (= e!2609528 (and tp!1284564 tp!1284560))))

(declare-fun b!4203831 () Bool)

(assert (=> b!4203831 (= e!2609528 tp_is_empty!22217)))

(assert (=> b!4202978 (= tp!1284373 e!2609528)))

(assert (= (and b!4202978 ((_ is ElementMatch!12625) (regTwo!25763 (regex!7720 (h!51617 rules!3967))))) b!4203831))

(assert (= (and b!4202978 ((_ is Concat!20576) (regTwo!25763 (regex!7720 (h!51617 rules!3967))))) b!4203832))

(assert (= (and b!4202978 ((_ is Star!12625) (regTwo!25763 (regex!7720 (h!51617 rules!3967))))) b!4203833))

(assert (= (and b!4202978 ((_ is Union!12625) (regTwo!25763 (regex!7720 (h!51617 rules!3967))))) b!4203834))

(declare-fun b!4203835 () Bool)

(declare-fun e!2609529 () Bool)

(declare-fun tp!1284565 () Bool)

(assert (=> b!4203835 (= e!2609529 (and tp_is_empty!22217 tp!1284565))))

(assert (=> b!4202992 (= tp!1284389 e!2609529)))

(assert (= (and b!4202992 ((_ is Cons!46195) (t!347018 (originalCharacters!8102 t!8364)))) b!4203835))

(declare-fun b!4203836 () Bool)

(declare-fun e!2609530 () Bool)

(declare-fun tp!1284566 () Bool)

(assert (=> b!4203836 (= e!2609530 (and tp_is_empty!22217 tp!1284566))))

(assert (=> b!4202974 (= tp!1284369 e!2609530)))

(assert (= (and b!4202974 ((_ is Cons!46195) (t!347018 (t!347018 input!3517)))) b!4203836))

(declare-fun b!4203840 () Bool)

(declare-fun e!2609531 () Bool)

(declare-fun tp!1284568 () Bool)

(declare-fun tp!1284570 () Bool)

(assert (=> b!4203840 (= e!2609531 (and tp!1284568 tp!1284570))))

(declare-fun b!4203839 () Bool)

(declare-fun tp!1284569 () Bool)

(assert (=> b!4203839 (= e!2609531 tp!1284569)))

(declare-fun b!4203838 () Bool)

(declare-fun tp!1284571 () Bool)

(declare-fun tp!1284567 () Bool)

(assert (=> b!4203838 (= e!2609531 (and tp!1284571 tp!1284567))))

(declare-fun b!4203837 () Bool)

(assert (=> b!4203837 (= e!2609531 tp_is_empty!22217)))

(assert (=> b!4202967 (= tp!1284363 e!2609531)))

(assert (= (and b!4202967 ((_ is ElementMatch!12625) (reg!12954 (regex!7720 (rule!10818 tBis!41))))) b!4203837))

(assert (= (and b!4202967 ((_ is Concat!20576) (reg!12954 (regex!7720 (rule!10818 tBis!41))))) b!4203838))

(assert (= (and b!4202967 ((_ is Star!12625) (reg!12954 (regex!7720 (rule!10818 tBis!41))))) b!4203839))

(assert (= (and b!4202967 ((_ is Union!12625) (reg!12954 (regex!7720 (rule!10818 tBis!41))))) b!4203840))

(declare-fun b!4203844 () Bool)

(declare-fun e!2609532 () Bool)

(declare-fun tp!1284573 () Bool)

(declare-fun tp!1284575 () Bool)

(assert (=> b!4203844 (= e!2609532 (and tp!1284573 tp!1284575))))

(declare-fun b!4203843 () Bool)

(declare-fun tp!1284574 () Bool)

(assert (=> b!4203843 (= e!2609532 tp!1284574)))

(declare-fun b!4203842 () Bool)

(declare-fun tp!1284576 () Bool)

(declare-fun tp!1284572 () Bool)

(assert (=> b!4203842 (= e!2609532 (and tp!1284576 tp!1284572))))

(declare-fun b!4203841 () Bool)

(assert (=> b!4203841 (= e!2609532 tp_is_empty!22217)))

(assert (=> b!4202966 (= tp!1284365 e!2609532)))

(assert (= (and b!4202966 ((_ is ElementMatch!12625) (regOne!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203841))

(assert (= (and b!4202966 ((_ is Concat!20576) (regOne!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203842))

(assert (= (and b!4202966 ((_ is Star!12625) (regOne!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203843))

(assert (= (and b!4202966 ((_ is Union!12625) (regOne!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203844))

(declare-fun b!4203848 () Bool)

(declare-fun e!2609533 () Bool)

(declare-fun tp!1284578 () Bool)

(declare-fun tp!1284580 () Bool)

(assert (=> b!4203848 (= e!2609533 (and tp!1284578 tp!1284580))))

(declare-fun b!4203847 () Bool)

(declare-fun tp!1284579 () Bool)

(assert (=> b!4203847 (= e!2609533 tp!1284579)))

(declare-fun b!4203846 () Bool)

(declare-fun tp!1284581 () Bool)

(declare-fun tp!1284577 () Bool)

(assert (=> b!4203846 (= e!2609533 (and tp!1284581 tp!1284577))))

(declare-fun b!4203845 () Bool)

(assert (=> b!4203845 (= e!2609533 tp_is_empty!22217)))

(assert (=> b!4202966 (= tp!1284361 e!2609533)))

(assert (= (and b!4202966 ((_ is ElementMatch!12625) (regTwo!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203845))

(assert (= (and b!4202966 ((_ is Concat!20576) (regTwo!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203846))

(assert (= (and b!4202966 ((_ is Star!12625) (regTwo!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203847))

(assert (= (and b!4202966 ((_ is Union!12625) (regTwo!25762 (regex!7720 (rule!10818 tBis!41))))) b!4203848))

(declare-fun b!4203852 () Bool)

(declare-fun e!2609534 () Bool)

(declare-fun tp!1284583 () Bool)

(declare-fun tp!1284585 () Bool)

(assert (=> b!4203852 (= e!2609534 (and tp!1284583 tp!1284585))))

(declare-fun b!4203851 () Bool)

(declare-fun tp!1284584 () Bool)

(assert (=> b!4203851 (= e!2609534 tp!1284584)))

(declare-fun b!4203850 () Bool)

(declare-fun tp!1284586 () Bool)

(declare-fun tp!1284582 () Bool)

(assert (=> b!4203850 (= e!2609534 (and tp!1284586 tp!1284582))))

(declare-fun b!4203849 () Bool)

(assert (=> b!4203849 (= e!2609534 tp_is_empty!22217)))

(assert (=> b!4202968 (= tp!1284362 e!2609534)))

(assert (= (and b!4202968 ((_ is ElementMatch!12625) (regOne!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203849))

(assert (= (and b!4202968 ((_ is Concat!20576) (regOne!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203850))

(assert (= (and b!4202968 ((_ is Star!12625) (regOne!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203851))

(assert (= (and b!4202968 ((_ is Union!12625) (regOne!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203852))

(declare-fun b!4203856 () Bool)

(declare-fun e!2609535 () Bool)

(declare-fun tp!1284588 () Bool)

(declare-fun tp!1284590 () Bool)

(assert (=> b!4203856 (= e!2609535 (and tp!1284588 tp!1284590))))

(declare-fun b!4203855 () Bool)

(declare-fun tp!1284589 () Bool)

(assert (=> b!4203855 (= e!2609535 tp!1284589)))

(declare-fun b!4203854 () Bool)

(declare-fun tp!1284591 () Bool)

(declare-fun tp!1284587 () Bool)

(assert (=> b!4203854 (= e!2609535 (and tp!1284591 tp!1284587))))

(declare-fun b!4203853 () Bool)

(assert (=> b!4203853 (= e!2609535 tp_is_empty!22217)))

(assert (=> b!4202968 (= tp!1284364 e!2609535)))

(assert (= (and b!4202968 ((_ is ElementMatch!12625) (regTwo!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203853))

(assert (= (and b!4202968 ((_ is Concat!20576) (regTwo!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203854))

(assert (= (and b!4202968 ((_ is Star!12625) (regTwo!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203855))

(assert (= (and b!4202968 ((_ is Union!12625) (regTwo!25763 (regex!7720 (rule!10818 tBis!41))))) b!4203856))

(declare-fun b!4203857 () Bool)

(declare-fun e!2609536 () Bool)

(declare-fun tp!1284592 () Bool)

(assert (=> b!4203857 (= e!2609536 (and tp_is_empty!22217 tp!1284592))))

(assert (=> b!4202993 (= tp!1284390 e!2609536)))

(assert (= (and b!4202993 ((_ is Cons!46195) (t!347018 (t!347018 pBis!121)))) b!4203857))

(declare-fun tp!1284600 () Bool)

(declare-fun e!2609541 () Bool)

(declare-fun b!4203866 () Bool)

(declare-fun tp!1284601 () Bool)

(assert (=> b!4203866 (= e!2609541 (and (inv!60768 (left!34406 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))))) tp!1284600 (inv!60768 (right!34736 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))))) tp!1284601))))

(declare-fun b!4203868 () Bool)

(declare-fun e!2609542 () Bool)

(declare-fun tp!1284599 () Bool)

(assert (=> b!4203868 (= e!2609542 tp!1284599)))

(declare-fun b!4203867 () Bool)

(declare-fun inv!60775 (IArray!27867) Bool)

(assert (=> b!4203867 (= e!2609541 (and (inv!60775 (xs!17237 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))))) e!2609542))))

(assert (=> b!4202809 (= tp!1284294 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364)))) e!2609541))))

(assert (= (and b!4202809 ((_ is Node!13931) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))))) b!4203866))

(assert (= b!4203867 b!4203868))

(assert (= (and b!4202809 ((_ is Leaf!21535) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (value!240549 t!8364))))) b!4203867))

(declare-fun m!4792199 () Bool)

(assert (=> b!4203866 m!4792199))

(declare-fun m!4792201 () Bool)

(assert (=> b!4203866 m!4792201))

(declare-fun m!4792203 () Bool)

(assert (=> b!4203867 m!4792203))

(assert (=> b!4202809 m!4791005))

(declare-fun b!4203871 () Bool)

(declare-fun b_free!122735 () Bool)

(declare-fun b_next!123439 () Bool)

(assert (=> b!4203871 (= b_free!122735 (not b_next!123439))))

(declare-fun t!347290 () Bool)

(declare-fun tb!252171 () Bool)

(assert (=> (and b!4203871 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 rBis!178))) t!347290) tb!252171))

(declare-fun result!307340 () Bool)

(assert (= result!307340 result!307308))

(assert (=> d!1239456 t!347290))

(declare-fun t!347292 () Bool)

(declare-fun tb!252173 () Bool)

(assert (=> (and b!4203871 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 (h!51617 rules!3967)))) t!347292) tb!252173))

(declare-fun result!307342 () Bool)

(assert (= result!307342 result!307242))

(assert (=> d!1239398 t!347292))

(declare-fun tb!252175 () Bool)

(declare-fun t!347294 () Bool)

(assert (=> (and b!4203871 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347294) tb!252175))

(declare-fun result!307344 () Bool)

(assert (= result!307344 result!307318))

(assert (=> d!1239468 t!347294))

(declare-fun tb!252177 () Bool)

(declare-fun t!347296 () Bool)

(assert (=> (and b!4203871 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347296) tb!252177))

(declare-fun result!307346 () Bool)

(assert (= result!307346 result!307130))

(assert (=> d!1239100 t!347296))

(assert (=> d!1239400 t!347292))

(assert (=> d!1239454 t!347290))

(declare-fun t!347298 () Bool)

(declare-fun tb!252179 () Bool)

(assert (=> (and b!4203871 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347298) tb!252179))

(declare-fun result!307348 () Bool)

(assert (= result!307348 result!307328))

(assert (=> d!1239510 t!347298))

(declare-fun b_and!330265 () Bool)

(declare-fun tp!1284605 () Bool)

(assert (=> b!4203871 (= tp!1284605 (and (=> t!347292 result!307342) (=> t!347296 result!307346) (=> t!347294 result!307344) (=> t!347290 result!307340) (=> t!347298 result!307348) b_and!330265))))

(declare-fun b_free!122737 () Bool)

(declare-fun b_next!123441 () Bool)

(assert (=> b!4203871 (= b_free!122737 (not b_next!123441))))

(declare-fun t!347300 () Bool)

(declare-fun tb!252181 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (h!51617 rules!3967)))) t!347300) tb!252181))

(declare-fun result!307350 () Bool)

(assert (= result!307350 result!307264))

(assert (=> d!1239400 t!347300))

(declare-fun t!347302 () Bool)

(declare-fun tb!252183 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496867)))))) t!347302) tb!252183))

(declare-fun result!307352 () Bool)

(assert (= result!307352 result!307152))

(assert (=> d!1239178 t!347302))

(declare-fun tb!252185 () Bool)

(declare-fun t!347304 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 rBis!178))) t!347304) tb!252185))

(declare-fun result!307354 () Bool)

(assert (= result!307354 result!307298))

(assert (=> d!1239454 t!347304))

(declare-fun tb!252187 () Bool)

(declare-fun t!347306 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496842)))))) t!347306) tb!252187))

(declare-fun result!307356 () Bool)

(assert (= result!307356 result!307202))

(assert (=> d!1239328 t!347306))

(declare-fun t!347308 () Bool)

(declare-fun tb!252189 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (rule!10818 t!8364)))) t!347308) tb!252189))

(declare-fun result!307358 () Bool)

(assert (= result!307358 result!307080))

(assert (=> b!4202807 t!347308))

(declare-fun tb!252191 () Bool)

(declare-fun t!347310 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (rule!10818 tBis!41)))) t!347310) tb!252191))

(declare-fun result!307360 () Bool)

(assert (= result!307360 result!307070))

(assert (=> b!4202800 t!347310))

(assert (=> d!1239028 t!347310))

(declare-fun tb!252193 () Bool)

(declare-fun t!347312 () Bool)

(assert (=> (and b!4203871 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (rule!10818 (_1!25109 (get!15024 lt!1496890)))))) t!347312) tb!252193))

(declare-fun result!307362 () Bool)

(assert (= result!307362 result!307162))

(assert (=> d!1239186 t!347312))

(declare-fun b_and!330267 () Bool)

(declare-fun tp!1284602 () Bool)

(assert (=> b!4203871 (= tp!1284602 (and (=> t!347312 result!307362) (=> t!347302 result!307352) (=> t!347304 result!307354) (=> t!347306 result!307356) (=> t!347308 result!307358) (=> t!347310 result!307360) (=> t!347300 result!307350) b_and!330267))))

(declare-fun e!2609544 () Bool)

(assert (=> b!4203871 (= e!2609544 (and tp!1284605 tp!1284602))))

(declare-fun b!4203870 () Bool)

(declare-fun e!2609543 () Bool)

(declare-fun tp!1284603 () Bool)

(assert (=> b!4203870 (= e!2609543 (and tp!1284603 (inv!60761 (tag!8584 (h!51617 (t!347020 (t!347020 rules!3967))))) (inv!60764 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) e!2609544))))

(declare-fun b!4203869 () Bool)

(declare-fun e!2609546 () Bool)

(declare-fun tp!1284604 () Bool)

(assert (=> b!4203869 (= e!2609546 (and e!2609543 tp!1284604))))

(assert (=> b!4202987 (= tp!1284385 e!2609546)))

(assert (= b!4203870 b!4203871))

(assert (= b!4203869 b!4203870))

(assert (= (and b!4202987 ((_ is Cons!46197) (t!347020 (t!347020 rules!3967)))) b!4203869))

(declare-fun m!4792205 () Bool)

(assert (=> b!4203870 m!4792205))

(declare-fun m!4792207 () Bool)

(assert (=> b!4203870 m!4792207))

(declare-fun b!4203872 () Bool)

(declare-fun e!2609547 () Bool)

(declare-fun tp!1284606 () Bool)

(assert (=> b!4203872 (= e!2609547 (and tp_is_empty!22217 tp!1284606))))

(assert (=> b!4202998 (= tp!1284396 e!2609547)))

(assert (= (and b!4202998 ((_ is Cons!46195) (t!347018 (t!347018 p!3001)))) b!4203872))

(declare-fun b!4203873 () Bool)

(declare-fun e!2609548 () Bool)

(declare-fun tp!1284607 () Bool)

(assert (=> b!4203873 (= e!2609548 (and tp_is_empty!22217 tp!1284607))))

(assert (=> b!4202990 (= tp!1284387 e!2609548)))

(assert (= (and b!4202990 ((_ is Cons!46195) (t!347018 (originalCharacters!8102 tBis!41)))) b!4203873))

(declare-fun b!4203874 () Bool)

(declare-fun e!2609549 () Bool)

(declare-fun tp!1284608 () Bool)

(assert (=> b!4203874 (= e!2609549 (and tp_is_empty!22217 tp!1284608))))

(assert (=> b!4202973 (= tp!1284368 e!2609549)))

(assert (= (and b!4202973 ((_ is Cons!46195) (t!347018 (t!347018 suffix!1557)))) b!4203874))

(declare-fun b!4203875 () Bool)

(declare-fun e!2609550 () Bool)

(declare-fun tp!1284609 () Bool)

(assert (=> b!4203875 (= e!2609550 (and tp_is_empty!22217 tp!1284609))))

(assert (=> b!4202991 (= tp!1284388 e!2609550)))

(assert (= (and b!4202991 ((_ is Cons!46195) (t!347018 (t!347018 suffixBis!41)))) b!4203875))

(declare-fun b!4203879 () Bool)

(declare-fun e!2609551 () Bool)

(declare-fun tp!1284611 () Bool)

(declare-fun tp!1284613 () Bool)

(assert (=> b!4203879 (= e!2609551 (and tp!1284611 tp!1284613))))

(declare-fun b!4203878 () Bool)

(declare-fun tp!1284612 () Bool)

(assert (=> b!4203878 (= e!2609551 tp!1284612)))

(declare-fun b!4203877 () Bool)

(declare-fun tp!1284614 () Bool)

(declare-fun tp!1284610 () Bool)

(assert (=> b!4203877 (= e!2609551 (and tp!1284614 tp!1284610))))

(declare-fun b!4203876 () Bool)

(assert (=> b!4203876 (= e!2609551 tp_is_empty!22217)))

(assert (=> b!4202995 (= tp!1284395 e!2609551)))

(assert (= (and b!4202995 ((_ is ElementMatch!12625) (regOne!25762 (regex!7720 (rule!10818 t!8364))))) b!4203876))

(assert (= (and b!4202995 ((_ is Concat!20576) (regOne!25762 (regex!7720 (rule!10818 t!8364))))) b!4203877))

(assert (= (and b!4202995 ((_ is Star!12625) (regOne!25762 (regex!7720 (rule!10818 t!8364))))) b!4203878))

(assert (= (and b!4202995 ((_ is Union!12625) (regOne!25762 (regex!7720 (rule!10818 t!8364))))) b!4203879))

(declare-fun b!4203883 () Bool)

(declare-fun e!2609552 () Bool)

(declare-fun tp!1284616 () Bool)

(declare-fun tp!1284618 () Bool)

(assert (=> b!4203883 (= e!2609552 (and tp!1284616 tp!1284618))))

(declare-fun b!4203882 () Bool)

(declare-fun tp!1284617 () Bool)

(assert (=> b!4203882 (= e!2609552 tp!1284617)))

(declare-fun b!4203881 () Bool)

(declare-fun tp!1284619 () Bool)

(declare-fun tp!1284615 () Bool)

(assert (=> b!4203881 (= e!2609552 (and tp!1284619 tp!1284615))))

(declare-fun b!4203880 () Bool)

(assert (=> b!4203880 (= e!2609552 tp_is_empty!22217)))

(assert (=> b!4202995 (= tp!1284391 e!2609552)))

(assert (= (and b!4202995 ((_ is ElementMatch!12625) (regTwo!25762 (regex!7720 (rule!10818 t!8364))))) b!4203880))

(assert (= (and b!4202995 ((_ is Concat!20576) (regTwo!25762 (regex!7720 (rule!10818 t!8364))))) b!4203881))

(assert (= (and b!4202995 ((_ is Star!12625) (regTwo!25762 (regex!7720 (rule!10818 t!8364))))) b!4203882))

(assert (= (and b!4202995 ((_ is Union!12625) (regTwo!25762 (regex!7720 (rule!10818 t!8364))))) b!4203883))

(declare-fun b!4203887 () Bool)

(declare-fun e!2609553 () Bool)

(declare-fun tp!1284621 () Bool)

(declare-fun tp!1284623 () Bool)

(assert (=> b!4203887 (= e!2609553 (and tp!1284621 tp!1284623))))

(declare-fun b!4203886 () Bool)

(declare-fun tp!1284622 () Bool)

(assert (=> b!4203886 (= e!2609553 tp!1284622)))

(declare-fun b!4203885 () Bool)

(declare-fun tp!1284624 () Bool)

(declare-fun tp!1284620 () Bool)

(assert (=> b!4203885 (= e!2609553 (and tp!1284624 tp!1284620))))

(declare-fun b!4203884 () Bool)

(assert (=> b!4203884 (= e!2609553 tp_is_empty!22217)))

(assert (=> b!4202962 (= tp!1284360 e!2609553)))

(assert (= (and b!4202962 ((_ is ElementMatch!12625) (regOne!25762 (regex!7720 rBis!178)))) b!4203884))

(assert (= (and b!4202962 ((_ is Concat!20576) (regOne!25762 (regex!7720 rBis!178)))) b!4203885))

(assert (= (and b!4202962 ((_ is Star!12625) (regOne!25762 (regex!7720 rBis!178)))) b!4203886))

(assert (= (and b!4202962 ((_ is Union!12625) (regOne!25762 (regex!7720 rBis!178)))) b!4203887))

(declare-fun b!4203891 () Bool)

(declare-fun e!2609554 () Bool)

(declare-fun tp!1284626 () Bool)

(declare-fun tp!1284628 () Bool)

(assert (=> b!4203891 (= e!2609554 (and tp!1284626 tp!1284628))))

(declare-fun b!4203890 () Bool)

(declare-fun tp!1284627 () Bool)

(assert (=> b!4203890 (= e!2609554 tp!1284627)))

(declare-fun b!4203889 () Bool)

(declare-fun tp!1284629 () Bool)

(declare-fun tp!1284625 () Bool)

(assert (=> b!4203889 (= e!2609554 (and tp!1284629 tp!1284625))))

(declare-fun b!4203888 () Bool)

(assert (=> b!4203888 (= e!2609554 tp_is_empty!22217)))

(assert (=> b!4202962 (= tp!1284356 e!2609554)))

(assert (= (and b!4202962 ((_ is ElementMatch!12625) (regTwo!25762 (regex!7720 rBis!178)))) b!4203888))

(assert (= (and b!4202962 ((_ is Concat!20576) (regTwo!25762 (regex!7720 rBis!178)))) b!4203889))

(assert (= (and b!4202962 ((_ is Star!12625) (regTwo!25762 (regex!7720 rBis!178)))) b!4203890))

(assert (= (and b!4202962 ((_ is Union!12625) (regTwo!25762 (regex!7720 rBis!178)))) b!4203891))

(declare-fun b!4203895 () Bool)

(declare-fun e!2609555 () Bool)

(declare-fun tp!1284631 () Bool)

(declare-fun tp!1284633 () Bool)

(assert (=> b!4203895 (= e!2609555 (and tp!1284631 tp!1284633))))

(declare-fun b!4203894 () Bool)

(declare-fun tp!1284632 () Bool)

(assert (=> b!4203894 (= e!2609555 tp!1284632)))

(declare-fun b!4203893 () Bool)

(declare-fun tp!1284634 () Bool)

(declare-fun tp!1284630 () Bool)

(assert (=> b!4203893 (= e!2609555 (and tp!1284634 tp!1284630))))

(declare-fun b!4203892 () Bool)

(assert (=> b!4203892 (= e!2609555 tp_is_empty!22217)))

(assert (=> b!4202996 (= tp!1284393 e!2609555)))

(assert (= (and b!4202996 ((_ is ElementMatch!12625) (reg!12954 (regex!7720 (rule!10818 t!8364))))) b!4203892))

(assert (= (and b!4202996 ((_ is Concat!20576) (reg!12954 (regex!7720 (rule!10818 t!8364))))) b!4203893))

(assert (= (and b!4202996 ((_ is Star!12625) (reg!12954 (regex!7720 (rule!10818 t!8364))))) b!4203894))

(assert (= (and b!4202996 ((_ is Union!12625) (reg!12954 (regex!7720 (rule!10818 t!8364))))) b!4203895))

(declare-fun b!4203896 () Bool)

(declare-fun e!2609556 () Bool)

(declare-fun tp!1284636 () Bool)

(declare-fun tp!1284637 () Bool)

(assert (=> b!4203896 (= e!2609556 (and (inv!60768 (left!34406 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))))) tp!1284636 (inv!60768 (right!34736 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))))) tp!1284637))))

(declare-fun b!4203898 () Bool)

(declare-fun e!2609557 () Bool)

(declare-fun tp!1284635 () Bool)

(assert (=> b!4203898 (= e!2609557 tp!1284635)))

(declare-fun b!4203897 () Bool)

(assert (=> b!4203897 (= e!2609556 (and (inv!60775 (xs!17237 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))))) e!2609557))))

(assert (=> b!4202806 (= tp!1284293 (and (inv!60768 (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41)))) e!2609556))))

(assert (= (and b!4202806 ((_ is Node!13931) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))))) b!4203896))

(assert (= b!4203897 b!4203898))

(assert (= (and b!4202806 ((_ is Leaf!21535) (c!716444 (dynLambda!19922 (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (value!240549 tBis!41))))) b!4203897))

(declare-fun m!4792209 () Bool)

(assert (=> b!4203896 m!4792209))

(declare-fun m!4792211 () Bool)

(assert (=> b!4203896 m!4792211))

(declare-fun m!4792213 () Bool)

(assert (=> b!4203897 m!4792213))

(assert (=> b!4202806 m!4790993))

(declare-fun b!4203902 () Bool)

(declare-fun e!2609558 () Bool)

(declare-fun tp!1284639 () Bool)

(declare-fun tp!1284641 () Bool)

(assert (=> b!4203902 (= e!2609558 (and tp!1284639 tp!1284641))))

(declare-fun b!4203901 () Bool)

(declare-fun tp!1284640 () Bool)

(assert (=> b!4203901 (= e!2609558 tp!1284640)))

(declare-fun b!4203900 () Bool)

(declare-fun tp!1284642 () Bool)

(declare-fun tp!1284638 () Bool)

(assert (=> b!4203900 (= e!2609558 (and tp!1284642 tp!1284638))))

(declare-fun b!4203899 () Bool)

(assert (=> b!4203899 (= e!2609558 tp_is_empty!22217)))

(assert (=> b!4202963 (= tp!1284358 e!2609558)))

(assert (= (and b!4202963 ((_ is ElementMatch!12625) (reg!12954 (regex!7720 rBis!178)))) b!4203899))

(assert (= (and b!4202963 ((_ is Concat!20576) (reg!12954 (regex!7720 rBis!178)))) b!4203900))

(assert (= (and b!4202963 ((_ is Star!12625) (reg!12954 (regex!7720 rBis!178)))) b!4203901))

(assert (= (and b!4202963 ((_ is Union!12625) (reg!12954 (regex!7720 rBis!178)))) b!4203902))

(declare-fun b!4203906 () Bool)

(declare-fun e!2609559 () Bool)

(declare-fun tp!1284644 () Bool)

(declare-fun tp!1284646 () Bool)

(assert (=> b!4203906 (= e!2609559 (and tp!1284644 tp!1284646))))

(declare-fun b!4203905 () Bool)

(declare-fun tp!1284645 () Bool)

(assert (=> b!4203905 (= e!2609559 tp!1284645)))

(declare-fun b!4203904 () Bool)

(declare-fun tp!1284647 () Bool)

(declare-fun tp!1284643 () Bool)

(assert (=> b!4203904 (= e!2609559 (and tp!1284647 tp!1284643))))

(declare-fun b!4203903 () Bool)

(assert (=> b!4203903 (= e!2609559 tp_is_empty!22217)))

(assert (=> b!4202997 (= tp!1284392 e!2609559)))

(assert (= (and b!4202997 ((_ is ElementMatch!12625) (regOne!25763 (regex!7720 (rule!10818 t!8364))))) b!4203903))

(assert (= (and b!4202997 ((_ is Concat!20576) (regOne!25763 (regex!7720 (rule!10818 t!8364))))) b!4203904))

(assert (= (and b!4202997 ((_ is Star!12625) (regOne!25763 (regex!7720 (rule!10818 t!8364))))) b!4203905))

(assert (= (and b!4202997 ((_ is Union!12625) (regOne!25763 (regex!7720 (rule!10818 t!8364))))) b!4203906))

(declare-fun b!4203910 () Bool)

(declare-fun e!2609560 () Bool)

(declare-fun tp!1284649 () Bool)

(declare-fun tp!1284651 () Bool)

(assert (=> b!4203910 (= e!2609560 (and tp!1284649 tp!1284651))))

(declare-fun b!4203909 () Bool)

(declare-fun tp!1284650 () Bool)

(assert (=> b!4203909 (= e!2609560 tp!1284650)))

(declare-fun b!4203908 () Bool)

(declare-fun tp!1284652 () Bool)

(declare-fun tp!1284648 () Bool)

(assert (=> b!4203908 (= e!2609560 (and tp!1284652 tp!1284648))))

(declare-fun b!4203907 () Bool)

(assert (=> b!4203907 (= e!2609560 tp_is_empty!22217)))

(assert (=> b!4202997 (= tp!1284394 e!2609560)))

(assert (= (and b!4202997 ((_ is ElementMatch!12625) (regTwo!25763 (regex!7720 (rule!10818 t!8364))))) b!4203907))

(assert (= (and b!4202997 ((_ is Concat!20576) (regTwo!25763 (regex!7720 (rule!10818 t!8364))))) b!4203908))

(assert (= (and b!4202997 ((_ is Star!12625) (regTwo!25763 (regex!7720 (rule!10818 t!8364))))) b!4203909))

(assert (= (and b!4202997 ((_ is Union!12625) (regTwo!25763 (regex!7720 (rule!10818 t!8364))))) b!4203910))

(declare-fun b!4203914 () Bool)

(declare-fun e!2609561 () Bool)

(declare-fun tp!1284654 () Bool)

(declare-fun tp!1284656 () Bool)

(assert (=> b!4203914 (= e!2609561 (and tp!1284654 tp!1284656))))

(declare-fun b!4203913 () Bool)

(declare-fun tp!1284655 () Bool)

(assert (=> b!4203913 (= e!2609561 tp!1284655)))

(declare-fun b!4203912 () Bool)

(declare-fun tp!1284657 () Bool)

(declare-fun tp!1284653 () Bool)

(assert (=> b!4203912 (= e!2609561 (and tp!1284657 tp!1284653))))

(declare-fun b!4203911 () Bool)

(assert (=> b!4203911 (= e!2609561 tp_is_empty!22217)))

(assert (=> b!4202964 (= tp!1284357 e!2609561)))

(assert (= (and b!4202964 ((_ is ElementMatch!12625) (regOne!25763 (regex!7720 rBis!178)))) b!4203911))

(assert (= (and b!4202964 ((_ is Concat!20576) (regOne!25763 (regex!7720 rBis!178)))) b!4203912))

(assert (= (and b!4202964 ((_ is Star!12625) (regOne!25763 (regex!7720 rBis!178)))) b!4203913))

(assert (= (and b!4202964 ((_ is Union!12625) (regOne!25763 (regex!7720 rBis!178)))) b!4203914))

(declare-fun b!4203918 () Bool)

(declare-fun e!2609562 () Bool)

(declare-fun tp!1284659 () Bool)

(declare-fun tp!1284661 () Bool)

(assert (=> b!4203918 (= e!2609562 (and tp!1284659 tp!1284661))))

(declare-fun b!4203917 () Bool)

(declare-fun tp!1284660 () Bool)

(assert (=> b!4203917 (= e!2609562 tp!1284660)))

(declare-fun b!4203916 () Bool)

(declare-fun tp!1284662 () Bool)

(declare-fun tp!1284658 () Bool)

(assert (=> b!4203916 (= e!2609562 (and tp!1284662 tp!1284658))))

(declare-fun b!4203915 () Bool)

(assert (=> b!4203915 (= e!2609562 tp_is_empty!22217)))

(assert (=> b!4202964 (= tp!1284359 e!2609562)))

(assert (= (and b!4202964 ((_ is ElementMatch!12625) (regTwo!25763 (regex!7720 rBis!178)))) b!4203915))

(assert (= (and b!4202964 ((_ is Concat!20576) (regTwo!25763 (regex!7720 rBis!178)))) b!4203916))

(assert (= (and b!4202964 ((_ is Star!12625) (regTwo!25763 (regex!7720 rBis!178)))) b!4203917))

(assert (= (and b!4202964 ((_ is Union!12625) (regTwo!25763 (regex!7720 rBis!178)))) b!4203918))

(declare-fun b_lambda!123781 () Bool)

(assert (= b_lambda!123771 (or (and b!4202575 b_free!122713 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 rBis!178)))) (and b!4202989 b_free!122729 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 rBis!178)))) (and b!4202573 b_free!122717 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 rBis!178)))) (and b!4203871 b_free!122737 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 rBis!178)))) (and b!4202568 b_free!122721) (and b!4202564 b_free!122709 (= (toChars!10287 (transformation!7720 (h!51617 rules!3967))) (toChars!10287 (transformation!7720 rBis!178)))) b_lambda!123781)))

(declare-fun b_lambda!123783 () Bool)

(assert (= b_lambda!123753 (or (and b!4202989 b_free!122729 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toChars!10287 (transformation!7720 (h!51617 rules!3967))))) (and b!4202575 b_free!122713 (= (toChars!10287 (transformation!7720 (rule!10818 t!8364))) (toChars!10287 (transformation!7720 (h!51617 rules!3967))))) (and b!4203871 b_free!122737 (= (toChars!10287 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toChars!10287 (transformation!7720 (h!51617 rules!3967))))) (and b!4202568 b_free!122721 (= (toChars!10287 (transformation!7720 rBis!178)) (toChars!10287 (transformation!7720 (h!51617 rules!3967))))) (and b!4202564 b_free!122709) (and b!4202573 b_free!122717 (= (toChars!10287 (transformation!7720 (rule!10818 tBis!41))) (toChars!10287 (transformation!7720 (h!51617 rules!3967))))) b_lambda!123783)))

(declare-fun b_lambda!123785 () Bool)

(assert (= b_lambda!123775 (or (and b!4202564 b_free!122707 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4202573 b_free!122715 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4202575 b_free!122711 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4202568 b_free!122719) (and b!4202989 b_free!122727 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4203871 b_free!122735 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 rBis!178)))) b_lambda!123785)))

(declare-fun b_lambda!123787 () Bool)

(assert (= b_lambda!123755 (or (and b!4202575 b_free!122711 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4202989 b_free!122727 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4202573 b_free!122715 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4203871 b_free!122735 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4202564 b_free!122707) (and b!4202568 b_free!122719 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) b_lambda!123787)))

(declare-fun b_lambda!123789 () Bool)

(assert (= b_lambda!123725 (or d!1239008 b_lambda!123789)))

(declare-fun bs!597183 () Bool)

(declare-fun d!1239514 () Bool)

(assert (= bs!597183 (and d!1239514 d!1239008)))

(assert (=> bs!597183 (= (dynLambda!19931 lambda!129649 (h!51617 (t!347020 rules!3967))) (ruleValid!3432 thiss!26544 (h!51617 (t!347020 rules!3967))))))

(assert (=> bs!597183 m!4791065))

(assert (=> b!4203286 d!1239514))

(declare-fun b_lambda!123791 () Bool)

(assert (= b_lambda!123773 (or (and b!4202564 b_free!122707 (= (toValue!10428 (transformation!7720 (h!51617 rules!3967))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4202573 b_free!122715 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4202575 b_free!122711 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4202568 b_free!122719) (and b!4202989 b_free!122727 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 rBis!178)))) (and b!4203871 b_free!122735 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 rBis!178)))) b_lambda!123791)))

(declare-fun b_lambda!123793 () Bool)

(assert (= b_lambda!123747 (or (and b!4202575 b_free!122711 (= (toValue!10428 (transformation!7720 (rule!10818 t!8364))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4202989 b_free!122727 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 rules!3967)))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4202573 b_free!122715 (= (toValue!10428 (transformation!7720 (rule!10818 tBis!41))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4203871 b_free!122735 (= (toValue!10428 (transformation!7720 (h!51617 (t!347020 (t!347020 rules!3967))))) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) (and b!4202564 b_free!122707) (and b!4202568 b_free!122719 (= (toValue!10428 (transformation!7720 rBis!178)) (toValue!10428 (transformation!7720 (h!51617 rules!3967))))) b_lambda!123793)))

(check-sat b_and!330223 b_and!330263 (not b!4203874) (not b!4203099) (not d!1239292) (not b!4203912) (not b!4202806) (not b!4203883) tp_is_empty!22217 (not b!4203545) (not d!1239168) (not bm!292718) (not b!4203872) (not d!1239472) (not bm!292755) (not d!1239484) (not bm!292743) (not b!4203891) (not b!4203363) (not b!4203722) (not b!4203431) (not b!4203850) (not bm!292753) (not b!4203043) (not d!1239234) (not b!4203855) (not b!4203041) (not b!4203838) (not b!4203852) (not b!4203543) (not b!4203878) (not b!4203844) (not b!4203896) (not d!1239458) (not b!4203813) (not d!1239486) (not b!4203840) (not b!4203741) (not b!4203817) (not b_lambda!123789) (not b!4203856) (not b!4203279) (not b!4203064) (not b!4203539) b_and!330215 (not d!1239276) (not b!4203731) (not b_next!123439) (not tb!252161) (not d!1239460) (not b!4203893) (not b!4203107) (not b!4203877) (not b!4203569) (not b!4203857) (not b!4203714) (not b_lambda!123781) (not b!4203914) (not b!4203775) (not d!1239248) (not b!4203240) (not b!4203910) (not b!4203918) (not b_lambda!123783) (not b!4203718) (not bm!292750) (not b!4203782) (not b!4203547) (not b!4203724) (not b_lambda!123729) (not d!1239508) (not b!4203839) (not b!4203781) (not bm!292715) (not b!4203754) (not b!4203787) (not d!1239176) (not b!4203306) (not b!4203881) (not tb!251997) (not d!1239126) (not b!4203758) (not b_next!123421) (not b!4203785) (not d!1239452) (not bm!292662) (not d!1239202) (not tb!252131) (not b!4203244) (not d!1239448) (not b!4203789) (not b!4203879) (not b!4203812) (not d!1239278) (not d!1239182) (not b_lambda!123779) (not d!1239112) (not bm!292749) (not bs!597183) (not b!4203232) (not d!1239098) (not b!4203810) (not b!4203412) (not b!4203894) (not b!4203886) (not b!4203068) (not b_next!123413) (not d!1239504) b_and!330259 b_and!330261 (not bm!292719) (not b!4203890) (not b!4203821) (not b!4203882) (not b!4203909) (not b!4203774) (not b_lambda!123713) (not b!4203780) (not bm!292751) (not b!4203917) (not b!4203848) (not bm!292747) (not b_next!123425) (not b!4202809) (not b!4203410) (not b!4203801) (not b!4203715) (not b!4203898) (not b!4203516) (not b!4203875) (not tb!252141) (not b!4203836) (not tb!252077) (not b!4203501) (not b_lambda!123791) (not b!4203904) (not d!1239178) (not b!4203553) (not d!1239338) (not b!4203436) (not d!1239474) (not d!1239250) (not b_lambda!123711) (not b!4203847) (not b!4203835) (not b!4203826) (not d!1239332) (not b!4203432) (not b!4203833) (not d!1239400) (not d!1239372) (not d!1239476) (not b_next!123419) (not b!4203822) b_and!330255 (not d!1239512) (not b!4203289) (not b!4203776) (not bm!292734) (not b!4203607) (not b_lambda!123793) (not d!1239092) (not d!1239328) (not d!1239270) (not b!4203651) (not b!4203287) (not b!4203069) (not b!4203807) (not bm!292754) b_and!330217 (not b!4203546) (not b!4203820) (not b!4203783) (not d!1239434) (not b!4203870) (not bm!292752) (not b!4203868) (not b!4203873) (not b!4203808) (not b_next!123411) (not b!4203889) (not b_lambda!123777) (not bm!292746) (not d!1239110) (not b!4203233) (not b!4203418) (not b!4203538) (not b!4203310) (not b!4203464) (not b!4203843) (not b!4203039) (not b!4203866) (not b!4203830) (not bm!292714) (not bm!292716) (not b!4203818) (not tb!252037) (not b!4203421) (not b!4203834) (not b!4203414) (not b_lambda!123737) (not b!4203770) (not b!4203733) (not b!4203846) (not b!4203716) (not b!4203416) (not b!4203765) (not b_next!123431) (not d!1239358) (not b!4203756) (not tb!251967) (not b_next!123415) (not b!4203737) (not b!4203429) (not bm!292744) (not b!4203533) b_and!330265 (not b!4203902) (not d!1239186) (not b!4203842) (not b_next!123423) (not b!4203828) (not b!4203384) (not b!4203229) (not d!1239506) (not b!4203829) (not d!1239440) (not d!1239444) (not b!4203816) (not d!1239446) (not b_next!123417) (not d!1239084) (not bm!292756) (not b!4203534) (not b_lambda!123785) (not b!4203905) (not b!4203112) (not b!4203824) (not b!4203108) (not d!1239490) (not b_lambda!123787) (not b_lambda!123727) (not b_lambda!123719) (not b!4203895) (not d!1239088) (not b_lambda!123709) (not b!4203734) (not d!1239174) (not b!4203541) (not b!4203726) (not d!1239454) (not b!4203281) (not bm!292748) (not b!4203800) (not b!4203510) (not b!4203523) b_and!330221 (not b_next!123433) (not b!4203105) (not d!1239466) (not b!4203897) (not bm!292712) (not b!4203400) (not d!1239478) (not b!4203740) (not b!4203908) (not b!4203736) (not b!4203885) (not b!4203423) (not d!1239442) (not tb!252097) (not b!4203832) (not d!1239422) (not b!4203814) (not bm!292757) (not b!4203752) (not b!4203103) (not b!4203901) (not b!4203748) (not d!1239324) (not b!4203514) b_and!330257 (not d!1239106) (not b!4203767) (not d!1239428) b_and!330219 (not b!4203290) (not b!4203761) (not b!4203307) (not b!4203851) (not d!1239124) (not b!4203777) (not b!4203402) (not d!1239312) (not b!4203519) (not d!1239470) (not b!4203913) (not b!4203070) (not tb!251987) (not d!1239090) (not b!4203427) (not d!1239426) (not b!4203420) (not tb!252151) (not b!4203518) (not b!4203778) b_and!330267 (not b!4203900) (not b!4203867) (not b!4203887) (not b!4203727) (not b!4203854) (not b!4203869) (not b!4203053) (not d!1239464) (not b!4203759) (not b!4203769) (not b!4203906) (not bm!292713) (not d!1239420) (not b!4203037) (not d!1239436) (not b!4203044) (not b!4203916) (not b!4203063) (not d!1239488) (not b!4203825) (not b_next!123441) (not b!4203531) (not b!4203422) (not bm!292717))
(check-sat (not b_next!123421) (not b_next!123425) b_and!330217 (not b_next!123411) (not b_next!123417) b_and!330257 b_and!330219 b_and!330267 (not b_next!123441) b_and!330223 b_and!330263 b_and!330215 (not b_next!123439) (not b_next!123413) b_and!330259 b_and!330261 (not b_next!123419) b_and!330255 (not b_next!123415) (not b_next!123431) b_and!330265 (not b_next!123423) b_and!330221 (not b_next!123433))
