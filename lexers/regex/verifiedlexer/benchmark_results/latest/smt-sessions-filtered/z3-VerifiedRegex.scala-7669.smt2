; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!404278 () Bool)

(assert start!404278)

(declare-fun b!4227569 () Bool)

(declare-fun b_free!124715 () Bool)

(declare-fun b_next!125419 () Bool)

(assert (=> b!4227569 (= b_free!124715 (not b_next!125419))))

(declare-fun tp!1294688 () Bool)

(declare-fun b_and!333949 () Bool)

(assert (=> b!4227569 (= tp!1294688 b_and!333949)))

(declare-fun b_free!124717 () Bool)

(declare-fun b_next!125421 () Bool)

(assert (=> b!4227569 (= b_free!124717 (not b_next!125421))))

(declare-fun tp!1294684 () Bool)

(declare-fun b_and!333951 () Bool)

(assert (=> b!4227569 (= tp!1294684 b_and!333951)))

(declare-fun b!4227568 () Bool)

(declare-fun b_free!124719 () Bool)

(declare-fun b_next!125423 () Bool)

(assert (=> b!4227568 (= b_free!124719 (not b_next!125423))))

(declare-fun tp!1294687 () Bool)

(declare-fun b_and!333953 () Bool)

(assert (=> b!4227568 (= tp!1294687 b_and!333953)))

(declare-fun b_free!124721 () Bool)

(declare-fun b_next!125425 () Bool)

(assert (=> b!4227568 (= b_free!124721 (not b_next!125425))))

(declare-fun tp!1294686 () Bool)

(declare-fun b_and!333955 () Bool)

(assert (=> b!4227568 (= tp!1294686 b_and!333955)))

(declare-fun b!4227567 () Bool)

(declare-fun e!2624920 () Bool)

(declare-datatypes ((C!25708 0))(
  ( (C!25709 (val!15016 Int)) )
))
(declare-datatypes ((List!46759 0))(
  ( (Nil!46635) (Cons!46635 (h!52055 C!25708) (t!349376 List!46759)) )
))
(declare-datatypes ((IArray!28131 0))(
  ( (IArray!28132 (innerList!14123 List!46759)) )
))
(declare-datatypes ((Conc!14063 0))(
  ( (Node!14063 (left!34684 Conc!14063) (right!35014 Conc!14063) (csize!28356 Int) (cheight!14274 Int)) (Leaf!21733 (xs!17369 IArray!28131) (csize!28357 Int)) (Empty!14063) )
))
(declare-datatypes ((List!46760 0))(
  ( (Nil!46636) (Cons!46636 (h!52056 (_ BitVec 16)) (t!349377 List!46760)) )
))
(declare-datatypes ((TokenValue!8082 0))(
  ( (FloatLiteralValue!16164 (text!57019 List!46760)) (TokenValueExt!8081 (__x!28387 Int)) (Broken!40410 (value!244260 List!46760)) (Object!8205) (End!8082) (Def!8082) (Underscore!8082) (Match!8082) (Else!8082) (Error!8082) (Case!8082) (If!8082) (Extends!8082) (Abstract!8082) (Class!8082) (Val!8082) (DelimiterValue!16164 (del!8142 List!46760)) (KeywordValue!8088 (value!244261 List!46760)) (CommentValue!16164 (value!244262 List!46760)) (WhitespaceValue!16164 (value!244263 List!46760)) (IndentationValue!8082 (value!244264 List!46760)) (String!54279) (Int32!8082) (Broken!40411 (value!244265 List!46760)) (Boolean!8083) (Unit!65752) (OperatorValue!8085 (op!8142 List!46760)) (IdentifierValue!16164 (value!244266 List!46760)) (IdentifierValue!16165 (value!244267 List!46760)) (WhitespaceValue!16165 (value!244268 List!46760)) (True!16164) (False!16164) (Broken!40412 (value!244269 List!46760)) (Broken!40413 (value!244270 List!46760)) (True!16165) (RightBrace!8082) (RightBracket!8082) (Colon!8082) (Null!8082) (Comma!8082) (LeftBracket!8082) (False!16165) (LeftBrace!8082) (ImaginaryLiteralValue!8082 (text!57020 List!46760)) (StringLiteralValue!24246 (value!244271 List!46760)) (EOFValue!8082 (value!244272 List!46760)) (IdentValue!8082 (value!244273 List!46760)) (DelimiterValue!16165 (value!244274 List!46760)) (DedentValue!8082 (value!244275 List!46760)) (NewLineValue!8082 (value!244276 List!46760)) (IntegerValue!24246 (value!244277 (_ BitVec 32)) (text!57021 List!46760)) (IntegerValue!24247 (value!244278 Int) (text!57022 List!46760)) (Times!8082) (Or!8082) (Equal!8082) (Minus!8082) (Broken!40414 (value!244279 List!46760)) (And!8082) (Div!8082) (LessEqual!8082) (Mod!8082) (Concat!20839) (Not!8082) (Plus!8082) (SpaceValue!8082 (value!244280 List!46760)) (IntegerValue!24248 (value!244281 Int) (text!57023 List!46760)) (StringLiteralValue!24247 (text!57024 List!46760)) (FloatLiteralValue!16165 (text!57025 List!46760)) (BytesLiteralValue!8082 (value!244282 List!46760)) (CommentValue!16165 (value!244283 List!46760)) (StringLiteralValue!24248 (value!244284 List!46760)) (ErrorTokenValue!8082 (msg!8143 List!46760)) )
))
(declare-datatypes ((BalanceConc!27720 0))(
  ( (BalanceConc!27721 (c!718734 Conc!14063)) )
))
(declare-datatypes ((TokenValueInjection!15592 0))(
  ( (TokenValueInjection!15593 (toValue!10580 Int) (toChars!10439 Int)) )
))
(declare-datatypes ((Regex!12757 0))(
  ( (ElementMatch!12757 (c!718735 C!25708)) (Concat!20840 (regOne!26026 Regex!12757) (regTwo!26026 Regex!12757)) (EmptyExpr!12757) (Star!12757 (reg!13086 Regex!12757)) (EmptyLang!12757) (Union!12757 (regOne!26027 Regex!12757) (regTwo!26027 Regex!12757)) )
))
(declare-datatypes ((String!54280 0))(
  ( (String!54281 (value!244285 String)) )
))
(declare-datatypes ((Rule!15504 0))(
  ( (Rule!15505 (regex!7852 Regex!12757) (tag!8716 String!54280) (isSeparator!7852 Bool) (transformation!7852 TokenValueInjection!15592)) )
))
(declare-datatypes ((List!46761 0))(
  ( (Nil!46637) (Cons!46637 (h!52057 Rule!15504) (t!349378 List!46761)) )
))
(declare-fun rules!4024 () List!46761)

(declare-fun r!4367 () Rule!15504)

(get-info :version)

(assert (=> b!4227567 (= e!2624920 (and (or (not ((_ is Cons!46637) rules!4024)) (not (= (h!52057 rules!4024) r!4367))) (or (not ((_ is Cons!46637) rules!4024)) (= (h!52057 rules!4024) r!4367)) ((_ is Nil!46637) rules!4024)))))

(declare-fun e!2624919 () Bool)

(assert (=> b!4227568 (= e!2624919 (and tp!1294687 tp!1294686))))

(declare-fun e!2624917 () Bool)

(assert (=> b!4227569 (= e!2624917 (and tp!1294688 tp!1294684))))

(declare-fun tp!1294685 () Bool)

(declare-fun b!4227570 () Bool)

(declare-fun e!2624923 () Bool)

(declare-fun inv!61286 (String!54280) Bool)

(declare-fun inv!61288 (TokenValueInjection!15592) Bool)

(assert (=> b!4227570 (= e!2624923 (and tp!1294685 (inv!61286 (tag!8716 (h!52057 rules!4024))) (inv!61288 (transformation!7852 (h!52057 rules!4024))) e!2624919))))

(declare-fun e!2624924 () Bool)

(declare-fun b!4227571 () Bool)

(declare-fun tp!1294682 () Bool)

(assert (=> b!4227571 (= e!2624924 (and tp!1294682 (inv!61286 (tag!8716 r!4367)) (inv!61288 (transformation!7852 r!4367)) e!2624917))))

(declare-fun res!1738372 () Bool)

(assert (=> start!404278 (=> (not res!1738372) (not e!2624920))))

(declare-datatypes ((LexerInterface!7447 0))(
  ( (LexerInterfaceExt!7444 (__x!28388 Int)) (Lexer!7445) )
))
(declare-fun thiss!26827 () LexerInterface!7447)

(assert (=> start!404278 (= res!1738372 ((_ is Lexer!7445) thiss!26827))))

(assert (=> start!404278 e!2624920))

(assert (=> start!404278 true))

(declare-fun e!2624922 () Bool)

(assert (=> start!404278 e!2624922))

(assert (=> start!404278 e!2624924))

(declare-fun b!4227572 () Bool)

(declare-fun res!1738371 () Bool)

(assert (=> b!4227572 (=> (not res!1738371) (not e!2624920))))

(declare-fun contains!9675 (List!46761 Rule!15504) Bool)

(assert (=> b!4227572 (= res!1738371 (contains!9675 rules!4024 r!4367))))

(declare-fun b!4227573 () Bool)

(declare-fun res!1738370 () Bool)

(assert (=> b!4227573 (=> (not res!1738370) (not e!2624920))))

(declare-fun rulesValidInductive!2954 (LexerInterface!7447 List!46761) Bool)

(assert (=> b!4227573 (= res!1738370 (rulesValidInductive!2954 thiss!26827 rules!4024))))

(declare-fun b!4227574 () Bool)

(declare-fun tp!1294683 () Bool)

(assert (=> b!4227574 (= e!2624922 (and e!2624923 tp!1294683))))

(assert (= (and start!404278 res!1738372) b!4227572))

(assert (= (and b!4227572 res!1738371) b!4227573))

(assert (= (and b!4227573 res!1738370) b!4227567))

(assert (= b!4227570 b!4227568))

(assert (= b!4227574 b!4227570))

(assert (= (and start!404278 ((_ is Cons!46637) rules!4024)) b!4227574))

(assert (= b!4227571 b!4227569))

(assert (= start!404278 b!4227571))

(declare-fun m!4814975 () Bool)

(assert (=> b!4227570 m!4814975))

(declare-fun m!4814977 () Bool)

(assert (=> b!4227570 m!4814977))

(declare-fun m!4814979 () Bool)

(assert (=> b!4227571 m!4814979))

(declare-fun m!4814981 () Bool)

(assert (=> b!4227571 m!4814981))

(declare-fun m!4814983 () Bool)

(assert (=> b!4227572 m!4814983))

(declare-fun m!4814985 () Bool)

(assert (=> b!4227573 m!4814985))

(check-sat (not b!4227572) (not b!4227571) (not b!4227574) b_and!333951 b_and!333953 (not b_next!125419) (not b!4227573) (not b_next!125423) b_and!333955 b_and!333949 (not b!4227570) (not b_next!125421) (not b_next!125425))
(check-sat b_and!333949 b_and!333951 b_and!333953 (not b_next!125419) (not b_next!125423) b_and!333955 (not b_next!125421) (not b_next!125425))
(get-model)

(declare-fun d!1244514 () Bool)

(assert (=> d!1244514 (= (inv!61286 (tag!8716 (h!52057 rules!4024))) (= (mod (str.len (value!244285 (tag!8716 (h!52057 rules!4024)))) 2) 0))))

(assert (=> b!4227570 d!1244514))

(declare-fun d!1244516 () Bool)

(declare-fun res!1738377 () Bool)

(declare-fun e!2624927 () Bool)

(assert (=> d!1244516 (=> (not res!1738377) (not e!2624927))))

(declare-fun semiInverseModEq!3419 (Int Int) Bool)

(assert (=> d!1244516 (= res!1738377 (semiInverseModEq!3419 (toChars!10439 (transformation!7852 (h!52057 rules!4024))) (toValue!10580 (transformation!7852 (h!52057 rules!4024)))))))

(assert (=> d!1244516 (= (inv!61288 (transformation!7852 (h!52057 rules!4024))) e!2624927)))

(declare-fun b!4227577 () Bool)

(declare-fun equivClasses!3318 (Int Int) Bool)

(assert (=> b!4227577 (= e!2624927 (equivClasses!3318 (toChars!10439 (transformation!7852 (h!52057 rules!4024))) (toValue!10580 (transformation!7852 (h!52057 rules!4024)))))))

(assert (= (and d!1244516 res!1738377) b!4227577))

(declare-fun m!4814987 () Bool)

(assert (=> d!1244516 m!4814987))

(declare-fun m!4814989 () Bool)

(assert (=> b!4227577 m!4814989))

(assert (=> b!4227570 d!1244516))

(declare-fun d!1244518 () Bool)

(assert (=> d!1244518 (= (inv!61286 (tag!8716 r!4367)) (= (mod (str.len (value!244285 (tag!8716 r!4367))) 2) 0))))

(assert (=> b!4227571 d!1244518))

(declare-fun d!1244520 () Bool)

(declare-fun res!1738379 () Bool)

(declare-fun e!2624928 () Bool)

(assert (=> d!1244520 (=> (not res!1738379) (not e!2624928))))

(assert (=> d!1244520 (= res!1738379 (semiInverseModEq!3419 (toChars!10439 (transformation!7852 r!4367)) (toValue!10580 (transformation!7852 r!4367))))))

(assert (=> d!1244520 (= (inv!61288 (transformation!7852 r!4367)) e!2624928)))

(declare-fun b!4227578 () Bool)

(assert (=> b!4227578 (= e!2624928 (equivClasses!3318 (toChars!10439 (transformation!7852 r!4367)) (toValue!10580 (transformation!7852 r!4367))))))

(assert (= (and d!1244520 res!1738379) b!4227578))

(declare-fun m!4814991 () Bool)

(assert (=> d!1244520 m!4814991))

(declare-fun m!4814993 () Bool)

(assert (=> b!4227578 m!4814993))

(assert (=> b!4227571 d!1244520))

(declare-fun d!1244522 () Bool)

(assert (=> d!1244522 true))

(declare-fun lt!1503289 () Bool)

(declare-fun lambda!129955 () Int)

(declare-fun forall!8526 (List!46761 Int) Bool)

(assert (=> d!1244522 (= lt!1503289 (forall!8526 rules!4024 lambda!129955))))

(declare-fun e!2624965 () Bool)

(assert (=> d!1244522 (= lt!1503289 e!2624965)))

(declare-fun res!1738401 () Bool)

(assert (=> d!1244522 (=> res!1738401 e!2624965)))

(assert (=> d!1244522 (= res!1738401 (not ((_ is Cons!46637) rules!4024)))))

(assert (=> d!1244522 (= (rulesValidInductive!2954 thiss!26827 rules!4024) lt!1503289)))

(declare-fun b!4227630 () Bool)

(declare-fun e!2624966 () Bool)

(assert (=> b!4227630 (= e!2624965 e!2624966)))

(declare-fun res!1738402 () Bool)

(assert (=> b!4227630 (=> (not res!1738402) (not e!2624966))))

(declare-fun ruleValid!3552 (LexerInterface!7447 Rule!15504) Bool)

(assert (=> b!4227630 (= res!1738402 (ruleValid!3552 thiss!26827 (h!52057 rules!4024)))))

(declare-fun b!4227631 () Bool)

(assert (=> b!4227631 (= e!2624966 (rulesValidInductive!2954 thiss!26827 (t!349378 rules!4024)))))

(assert (= (and d!1244522 (not res!1738401)) b!4227630))

(assert (= (and b!4227630 res!1738402) b!4227631))

(declare-fun m!4815019 () Bool)

(assert (=> d!1244522 m!4815019))

(declare-fun m!4815021 () Bool)

(assert (=> b!4227630 m!4815021))

(declare-fun m!4815023 () Bool)

(assert (=> b!4227631 m!4815023))

(assert (=> b!4227573 d!1244522))

(declare-fun d!1244536 () Bool)

(declare-fun lt!1503292 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7331 (List!46761) (InoxSet Rule!15504))

(assert (=> d!1244536 (= lt!1503292 (select (content!7331 rules!4024) r!4367))))

(declare-fun e!2624971 () Bool)

(assert (=> d!1244536 (= lt!1503292 e!2624971)))

(declare-fun res!1738408 () Bool)

(assert (=> d!1244536 (=> (not res!1738408) (not e!2624971))))

(assert (=> d!1244536 (= res!1738408 ((_ is Cons!46637) rules!4024))))

(assert (=> d!1244536 (= (contains!9675 rules!4024 r!4367) lt!1503292)))

(declare-fun b!4227638 () Bool)

(declare-fun e!2624972 () Bool)

(assert (=> b!4227638 (= e!2624971 e!2624972)))

(declare-fun res!1738407 () Bool)

(assert (=> b!4227638 (=> res!1738407 e!2624972)))

(assert (=> b!4227638 (= res!1738407 (= (h!52057 rules!4024) r!4367))))

(declare-fun b!4227639 () Bool)

(assert (=> b!4227639 (= e!2624972 (contains!9675 (t!349378 rules!4024) r!4367))))

(assert (= (and d!1244536 res!1738408) b!4227638))

(assert (= (and b!4227638 (not res!1738407)) b!4227639))

(declare-fun m!4815025 () Bool)

(assert (=> d!1244536 m!4815025))

(declare-fun m!4815027 () Bool)

(assert (=> d!1244536 m!4815027))

(declare-fun m!4815029 () Bool)

(assert (=> b!4227639 m!4815029))

(assert (=> b!4227572 d!1244536))

(declare-fun b!4227653 () Bool)

(declare-fun e!2624975 () Bool)

(declare-fun tp!1294731 () Bool)

(declare-fun tp!1294734 () Bool)

(assert (=> b!4227653 (= e!2624975 (and tp!1294731 tp!1294734))))

(assert (=> b!4227570 (= tp!1294685 e!2624975)))

(declare-fun b!4227652 () Bool)

(declare-fun tp!1294733 () Bool)

(assert (=> b!4227652 (= e!2624975 tp!1294733)))

(declare-fun b!4227650 () Bool)

(declare-fun tp_is_empty!22453 () Bool)

(assert (=> b!4227650 (= e!2624975 tp_is_empty!22453)))

(declare-fun b!4227651 () Bool)

(declare-fun tp!1294735 () Bool)

(declare-fun tp!1294732 () Bool)

(assert (=> b!4227651 (= e!2624975 (and tp!1294735 tp!1294732))))

(assert (= (and b!4227570 ((_ is ElementMatch!12757) (regex!7852 (h!52057 rules!4024)))) b!4227650))

(assert (= (and b!4227570 ((_ is Concat!20840) (regex!7852 (h!52057 rules!4024)))) b!4227651))

(assert (= (and b!4227570 ((_ is Star!12757) (regex!7852 (h!52057 rules!4024)))) b!4227652))

(assert (= (and b!4227570 ((_ is Union!12757) (regex!7852 (h!52057 rules!4024)))) b!4227653))

(declare-fun b!4227657 () Bool)

(declare-fun e!2624976 () Bool)

(declare-fun tp!1294736 () Bool)

(declare-fun tp!1294739 () Bool)

(assert (=> b!4227657 (= e!2624976 (and tp!1294736 tp!1294739))))

(assert (=> b!4227571 (= tp!1294682 e!2624976)))

(declare-fun b!4227656 () Bool)

(declare-fun tp!1294738 () Bool)

(assert (=> b!4227656 (= e!2624976 tp!1294738)))

(declare-fun b!4227654 () Bool)

(assert (=> b!4227654 (= e!2624976 tp_is_empty!22453)))

(declare-fun b!4227655 () Bool)

(declare-fun tp!1294740 () Bool)

(declare-fun tp!1294737 () Bool)

(assert (=> b!4227655 (= e!2624976 (and tp!1294740 tp!1294737))))

(assert (= (and b!4227571 ((_ is ElementMatch!12757) (regex!7852 r!4367))) b!4227654))

(assert (= (and b!4227571 ((_ is Concat!20840) (regex!7852 r!4367))) b!4227655))

(assert (= (and b!4227571 ((_ is Star!12757) (regex!7852 r!4367))) b!4227656))

(assert (= (and b!4227571 ((_ is Union!12757) (regex!7852 r!4367))) b!4227657))

(declare-fun b!4227668 () Bool)

(declare-fun b_free!124727 () Bool)

(declare-fun b_next!125431 () Bool)

(assert (=> b!4227668 (= b_free!124727 (not b_next!125431))))

(declare-fun tp!1294752 () Bool)

(declare-fun b_and!333961 () Bool)

(assert (=> b!4227668 (= tp!1294752 b_and!333961)))

(declare-fun b_free!124729 () Bool)

(declare-fun b_next!125433 () Bool)

(assert (=> b!4227668 (= b_free!124729 (not b_next!125433))))

(declare-fun tp!1294751 () Bool)

(declare-fun b_and!333963 () Bool)

(assert (=> b!4227668 (= tp!1294751 b_and!333963)))

(declare-fun e!2624986 () Bool)

(assert (=> b!4227668 (= e!2624986 (and tp!1294752 tp!1294751))))

(declare-fun e!2624985 () Bool)

(declare-fun tp!1294750 () Bool)

(declare-fun b!4227667 () Bool)

(assert (=> b!4227667 (= e!2624985 (and tp!1294750 (inv!61286 (tag!8716 (h!52057 (t!349378 rules!4024)))) (inv!61288 (transformation!7852 (h!52057 (t!349378 rules!4024)))) e!2624986))))

(declare-fun b!4227666 () Bool)

(declare-fun e!2624988 () Bool)

(declare-fun tp!1294749 () Bool)

(assert (=> b!4227666 (= e!2624988 (and e!2624985 tp!1294749))))

(assert (=> b!4227574 (= tp!1294683 e!2624988)))

(assert (= b!4227667 b!4227668))

(assert (= b!4227666 b!4227667))

(assert (= (and b!4227574 ((_ is Cons!46637) (t!349378 rules!4024))) b!4227666))

(declare-fun m!4815031 () Bool)

(assert (=> b!4227667 m!4815031))

(declare-fun m!4815033 () Bool)

(assert (=> b!4227667 m!4815033))

(check-sat (not b!4227631) (not b!4227639) (not b!4227578) b_and!333949 b_and!333951 b_and!333953 (not b_next!125433) b_and!333961 (not d!1244522) (not d!1244520) (not b!4227653) b_and!333955 (not d!1244536) (not b!4227651) (not b!4227652) (not d!1244516) (not b!4227666) (not b_next!125431) (not b!4227655) (not b!4227656) (not b_next!125419) (not b!4227577) (not b_next!125425) (not b_next!125421) (not b!4227630) tp_is_empty!22453 b_and!333963 (not b!4227657) (not b!4227667) (not b_next!125423))
(check-sat (not b_next!125431) b_and!333949 b_and!333951 b_and!333953 (not b_next!125433) (not b_next!125419) b_and!333961 b_and!333963 (not b_next!125423) b_and!333955 (not b_next!125421) (not b_next!125425))
