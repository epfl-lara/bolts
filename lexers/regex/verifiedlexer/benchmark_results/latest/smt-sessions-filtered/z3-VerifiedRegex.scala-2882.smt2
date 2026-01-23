; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168306 () Bool)

(assert start!168306)

(declare-fun b!1718440 () Bool)

(declare-fun b_free!46747 () Bool)

(declare-fun b_next!47451 () Bool)

(assert (=> b!1718440 (= b_free!46747 (not b_next!47451))))

(declare-fun tp!490752 () Bool)

(declare-fun b_and!125107 () Bool)

(assert (=> b!1718440 (= tp!490752 b_and!125107)))

(declare-fun b_free!46749 () Bool)

(declare-fun b_next!47453 () Bool)

(assert (=> b!1718440 (= b_free!46749 (not b_next!47453))))

(declare-fun tp!490759 () Bool)

(declare-fun b_and!125109 () Bool)

(assert (=> b!1718440 (= tp!490759 b_and!125109)))

(declare-fun b!1718458 () Bool)

(declare-fun b_free!46751 () Bool)

(declare-fun b_next!47455 () Bool)

(assert (=> b!1718458 (= b_free!46751 (not b_next!47455))))

(declare-fun tp!490751 () Bool)

(declare-fun b_and!125111 () Bool)

(assert (=> b!1718458 (= tp!490751 b_and!125111)))

(declare-fun b_free!46753 () Bool)

(declare-fun b_next!47457 () Bool)

(assert (=> b!1718458 (= b_free!46753 (not b_next!47457))))

(declare-fun tp!490754 () Bool)

(declare-fun b_and!125113 () Bool)

(assert (=> b!1718458 (= tp!490754 b_and!125113)))

(declare-fun b!1718447 () Bool)

(declare-fun b_free!46755 () Bool)

(declare-fun b_next!47459 () Bool)

(assert (=> b!1718447 (= b_free!46755 (not b_next!47459))))

(declare-fun tp!490753 () Bool)

(declare-fun b_and!125115 () Bool)

(assert (=> b!1718447 (= tp!490753 b_and!125115)))

(declare-fun b_free!46757 () Bool)

(declare-fun b_next!47461 () Bool)

(assert (=> b!1718447 (= b_free!46757 (not b_next!47461))))

(declare-fun tp!490750 () Bool)

(declare-fun b_and!125117 () Bool)

(assert (=> b!1718447 (= tp!490750 b_and!125117)))

(declare-fun b!1718474 () Bool)

(declare-fun e!1099057 () Bool)

(assert (=> b!1718474 (= e!1099057 true)))

(declare-fun b!1718473 () Bool)

(declare-fun e!1099056 () Bool)

(assert (=> b!1718473 (= e!1099056 e!1099057)))

(declare-fun b!1718472 () Bool)

(declare-fun e!1099055 () Bool)

(assert (=> b!1718472 (= e!1099055 e!1099056)))

(declare-fun b!1718439 () Bool)

(assert (=> b!1718439 e!1099055))

(assert (= b!1718473 b!1718474))

(assert (= b!1718472 b!1718473))

(assert (= b!1718439 b!1718472))

(declare-datatypes ((List!18858 0))(
  ( (Nil!18788) (Cons!18788 (h!24189 (_ BitVec 16)) (t!159125 List!18858)) )
))
(declare-datatypes ((TokenValue!3415 0))(
  ( (FloatLiteralValue!6830 (text!24350 List!18858)) (TokenValueExt!3414 (__x!12132 Int)) (Broken!17075 (value!104409 List!18858)) (Object!3484) (End!3415) (Def!3415) (Underscore!3415) (Match!3415) (Else!3415) (Error!3415) (Case!3415) (If!3415) (Extends!3415) (Abstract!3415) (Class!3415) (Val!3415) (DelimiterValue!6830 (del!3475 List!18858)) (KeywordValue!3421 (value!104410 List!18858)) (CommentValue!6830 (value!104411 List!18858)) (WhitespaceValue!6830 (value!104412 List!18858)) (IndentationValue!3415 (value!104413 List!18858)) (String!21406) (Int32!3415) (Broken!17076 (value!104414 List!18858)) (Boolean!3416) (Unit!32624) (OperatorValue!3418 (op!3475 List!18858)) (IdentifierValue!6830 (value!104415 List!18858)) (IdentifierValue!6831 (value!104416 List!18858)) (WhitespaceValue!6831 (value!104417 List!18858)) (True!6830) (False!6830) (Broken!17077 (value!104418 List!18858)) (Broken!17078 (value!104419 List!18858)) (True!6831) (RightBrace!3415) (RightBracket!3415) (Colon!3415) (Null!3415) (Comma!3415) (LeftBracket!3415) (False!6831) (LeftBrace!3415) (ImaginaryLiteralValue!3415 (text!24351 List!18858)) (StringLiteralValue!10245 (value!104420 List!18858)) (EOFValue!3415 (value!104421 List!18858)) (IdentValue!3415 (value!104422 List!18858)) (DelimiterValue!6831 (value!104423 List!18858)) (DedentValue!3415 (value!104424 List!18858)) (NewLineValue!3415 (value!104425 List!18858)) (IntegerValue!10245 (value!104426 (_ BitVec 32)) (text!24352 List!18858)) (IntegerValue!10246 (value!104427 Int) (text!24353 List!18858)) (Times!3415) (Or!3415) (Equal!3415) (Minus!3415) (Broken!17079 (value!104428 List!18858)) (And!3415) (Div!3415) (LessEqual!3415) (Mod!3415) (Concat!8068) (Not!3415) (Plus!3415) (SpaceValue!3415 (value!104429 List!18858)) (IntegerValue!10247 (value!104430 Int) (text!24354 List!18858)) (StringLiteralValue!10246 (text!24355 List!18858)) (FloatLiteralValue!6831 (text!24356 List!18858)) (BytesLiteralValue!3415 (value!104431 List!18858)) (CommentValue!6831 (value!104432 List!18858)) (StringLiteralValue!10247 (value!104433 List!18858)) (ErrorTokenValue!3415 (msg!3476 List!18858)) )
))
(declare-datatypes ((C!9480 0))(
  ( (C!9481 (val!5336 Int)) )
))
(declare-datatypes ((List!18859 0))(
  ( (Nil!18789) (Cons!18789 (h!24190 C!9480) (t!159126 List!18859)) )
))
(declare-datatypes ((IArray!12503 0))(
  ( (IArray!12504 (innerList!6309 List!18859)) )
))
(declare-datatypes ((Conc!6249 0))(
  ( (Node!6249 (left!14985 Conc!6249) (right!15315 Conc!6249) (csize!12728 Int) (cheight!6460 Int)) (Leaf!9132 (xs!9125 IArray!12503) (csize!12729 Int)) (Empty!6249) )
))
(declare-datatypes ((BalanceConc!12442 0))(
  ( (BalanceConc!12443 (c!281342 Conc!6249)) )
))
(declare-datatypes ((TokenValueInjection!6490 0))(
  ( (TokenValueInjection!6491 (toValue!4832 Int) (toChars!4691 Int)) )
))
(declare-datatypes ((Regex!4653 0))(
  ( (ElementMatch!4653 (c!281343 C!9480)) (Concat!8069 (regOne!9818 Regex!4653) (regTwo!9818 Regex!4653)) (EmptyExpr!4653) (Star!4653 (reg!4982 Regex!4653)) (EmptyLang!4653) (Union!4653 (regOne!9819 Regex!4653) (regTwo!9819 Regex!4653)) )
))
(declare-datatypes ((String!21407 0))(
  ( (String!21408 (value!104434 String)) )
))
(declare-datatypes ((Rule!6450 0))(
  ( (Rule!6451 (regex!3325 Regex!4653) (tag!3631 String!21407) (isSeparator!3325 Bool) (transformation!3325 TokenValueInjection!6490)) )
))
(declare-datatypes ((Token!6216 0))(
  ( (Token!6217 (value!104435 TokenValue!3415) (rule!5267 Rule!6450) (size!14928 Int) (originalCharacters!4139 List!18859)) )
))
(declare-datatypes ((tuple2!18490 0))(
  ( (tuple2!18491 (_1!10647 Token!6216) (_2!10647 List!18859)) )
))
(declare-fun lt!656896 () tuple2!18490)

(declare-fun order!11395 () Int)

(declare-fun order!11397 () Int)

(declare-fun lambda!69044 () Int)

(declare-fun dynLambda!8608 (Int Int) Int)

(declare-fun dynLambda!8609 (Int Int) Int)

(assert (=> b!1718474 (< (dynLambda!8608 order!11395 (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) (dynLambda!8609 order!11397 lambda!69044))))

(declare-fun order!11399 () Int)

(declare-fun dynLambda!8610 (Int Int) Int)

(assert (=> b!1718474 (< (dynLambda!8610 order!11399 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) (dynLambda!8609 order!11397 lambda!69044))))

(declare-fun b!1718436 () Bool)

(declare-fun res!770751 () Bool)

(declare-fun e!1099039 () Bool)

(assert (=> b!1718436 (=> (not res!770751) (not e!1099039))))

(declare-datatypes ((List!18860 0))(
  ( (Nil!18790) (Cons!18790 (h!24191 Rule!6450) (t!159127 List!18860)) )
))
(declare-fun rules!3447 () List!18860)

(declare-fun isEmpty!11813 (List!18860) Bool)

(assert (=> b!1718436 (= res!770751 (not (isEmpty!11813 rules!3447)))))

(declare-fun e!1099037 () Bool)

(declare-fun tp!490756 () Bool)

(declare-fun b!1718437 () Bool)

(declare-fun e!1099040 () Bool)

(declare-fun inv!24246 (String!21407) Bool)

(declare-fun inv!24251 (TokenValueInjection!6490) Bool)

(assert (=> b!1718437 (= e!1099040 (and tp!490756 (inv!24246 (tag!3631 (h!24191 rules!3447))) (inv!24251 (transformation!3325 (h!24191 rules!3447))) e!1099037))))

(declare-fun b!1718438 () Bool)

(declare-fun res!770761 () Bool)

(declare-fun e!1099031 () Bool)

(assert (=> b!1718438 (=> res!770761 e!1099031)))

(declare-fun lt!656899 () BalanceConc!12442)

(declare-fun dynLambda!8611 (Int TokenValue!3415) BalanceConc!12442)

(assert (=> b!1718438 (= res!770761 (not (= lt!656899 (dynLambda!8611 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) (value!104435 (_1!10647 lt!656896))))))))

(declare-fun res!770748 () Bool)

(assert (=> start!168306 (=> (not res!770748) (not e!1099039))))

(declare-datatypes ((LexerInterface!2954 0))(
  ( (LexerInterfaceExt!2951 (__x!12133 Int)) (Lexer!2952) )
))
(declare-fun thiss!24550 () LexerInterface!2954)

(get-info :version)

(assert (=> start!168306 (= res!770748 ((_ is Lexer!2952) thiss!24550))))

(assert (=> start!168306 e!1099039))

(declare-fun e!1099044 () Bool)

(assert (=> start!168306 e!1099044))

(declare-fun e!1099036 () Bool)

(assert (=> start!168306 e!1099036))

(assert (=> start!168306 true))

(declare-fun token!523 () Token!6216)

(declare-fun e!1099027 () Bool)

(declare-fun inv!24252 (Token!6216) Bool)

(assert (=> start!168306 (and (inv!24252 token!523) e!1099027)))

(declare-fun e!1099045 () Bool)

(assert (=> start!168306 e!1099045))

(declare-fun e!1099047 () Bool)

(declare-fun e!1099028 () Bool)

(assert (=> b!1718439 (= e!1099047 e!1099028)))

(declare-fun res!770747 () Bool)

(assert (=> b!1718439 (=> res!770747 e!1099028)))

(declare-fun Forall!700 (Int) Bool)

(assert (=> b!1718439 (= res!770747 (not (Forall!700 lambda!69044)))))

(declare-datatypes ((Unit!32625 0))(
  ( (Unit!32626) )
))
(declare-fun lt!656892 () Unit!32625)

(declare-fun lemmaInv!532 (TokenValueInjection!6490) Unit!32625)

(assert (=> b!1718439 (= lt!656892 (lemmaInv!532 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))))))

(assert (=> b!1718440 (= e!1099037 (and tp!490752 tp!490759))))

(declare-fun b!1718441 () Bool)

(declare-fun e!1099034 () Bool)

(declare-fun e!1099032 () Bool)

(assert (=> b!1718441 (= e!1099034 e!1099032)))

(declare-fun res!770754 () Bool)

(assert (=> b!1718441 (=> (not res!770754) (not e!1099032))))

(declare-fun lt!656900 () tuple2!18490)

(assert (=> b!1718441 (= res!770754 (= (_1!10647 lt!656900) token!523))))

(declare-datatypes ((Option!3674 0))(
  ( (None!3673) (Some!3673 (v!25072 tuple2!18490)) )
))
(declare-fun lt!656912 () Option!3674)

(declare-fun get!5554 (Option!3674) tuple2!18490)

(assert (=> b!1718441 (= lt!656900 (get!5554 lt!656912))))

(declare-fun b!1718442 () Bool)

(declare-fun tp!490758 () Bool)

(declare-fun e!1099033 () Bool)

(declare-fun e!1099035 () Bool)

(assert (=> b!1718442 (= e!1099033 (and tp!490758 (inv!24246 (tag!3631 (rule!5267 token!523))) (inv!24251 (transformation!3325 (rule!5267 token!523))) e!1099035))))

(declare-fun b!1718443 () Bool)

(declare-fun e!1099042 () Bool)

(assert (=> b!1718443 (= e!1099042 e!1099047)))

(declare-fun res!770750 () Bool)

(assert (=> b!1718443 (=> res!770750 e!1099047)))

(declare-fun lt!656901 () List!18859)

(declare-fun lt!656906 () List!18859)

(declare-fun isPrefix!1566 (List!18859 List!18859) Bool)

(assert (=> b!1718443 (= res!770750 (not (isPrefix!1566 lt!656901 lt!656906)))))

(declare-fun ++!5150 (List!18859 List!18859) List!18859)

(assert (=> b!1718443 (isPrefix!1566 lt!656901 (++!5150 lt!656901 (_2!10647 lt!656896)))))

(declare-fun lt!656898 () Unit!32625)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1076 (List!18859 List!18859) Unit!32625)

(assert (=> b!1718443 (= lt!656898 (lemmaConcatTwoListThenFirstIsPrefix!1076 lt!656901 (_2!10647 lt!656896)))))

(declare-fun list!7590 (BalanceConc!12442) List!18859)

(assert (=> b!1718443 (= lt!656901 (list!7590 lt!656899))))

(declare-fun charsOf!1974 (Token!6216) BalanceConc!12442)

(assert (=> b!1718443 (= lt!656899 (charsOf!1974 (_1!10647 lt!656896)))))

(declare-fun e!1099043 () Bool)

(assert (=> b!1718443 e!1099043))

(declare-fun res!770746 () Bool)

(assert (=> b!1718443 (=> (not res!770746) (not e!1099043))))

(declare-datatypes ((Option!3675 0))(
  ( (None!3674) (Some!3674 (v!25073 Rule!6450)) )
))
(declare-fun lt!656908 () Option!3675)

(declare-fun isDefined!3017 (Option!3675) Bool)

(assert (=> b!1718443 (= res!770746 (isDefined!3017 lt!656908))))

(declare-fun getRuleFromTag!375 (LexerInterface!2954 List!18860 String!21407) Option!3675)

(assert (=> b!1718443 (= lt!656908 (getRuleFromTag!375 thiss!24550 rules!3447 (tag!3631 (rule!5267 (_1!10647 lt!656896)))))))

(declare-fun lt!656907 () Unit!32625)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!375 (LexerInterface!2954 List!18860 List!18859 Token!6216) Unit!32625)

(assert (=> b!1718443 (= lt!656907 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!375 thiss!24550 rules!3447 lt!656906 (_1!10647 lt!656896)))))

(declare-fun lt!656909 () Option!3674)

(assert (=> b!1718443 (= lt!656896 (get!5554 lt!656909))))

(declare-fun suffix!1421 () List!18859)

(declare-fun lt!656910 () Unit!32625)

(declare-fun lt!656914 () List!18859)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!478 (LexerInterface!2954 List!18860 List!18859 List!18859) Unit!32625)

(assert (=> b!1718443 (= lt!656910 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!478 thiss!24550 rules!3447 lt!656914 suffix!1421))))

(declare-fun maxPrefix!1508 (LexerInterface!2954 List!18860 List!18859) Option!3674)

(assert (=> b!1718443 (= lt!656909 (maxPrefix!1508 thiss!24550 rules!3447 lt!656906))))

(assert (=> b!1718443 (isPrefix!1566 lt!656914 lt!656906)))

(declare-fun lt!656903 () Unit!32625)

(assert (=> b!1718443 (= lt!656903 (lemmaConcatTwoListThenFirstIsPrefix!1076 lt!656914 suffix!1421))))

(assert (=> b!1718443 (= lt!656906 (++!5150 lt!656914 suffix!1421))))

(declare-fun b!1718444 () Bool)

(assert (=> b!1718444 (= e!1099028 e!1099031)))

(declare-fun res!770758 () Bool)

(assert (=> b!1718444 (=> res!770758 e!1099031)))

(declare-fun dynLambda!8612 (Int BalanceConc!12442) TokenValue!3415)

(assert (=> b!1718444 (= res!770758 (not (= (list!7590 (dynLambda!8611 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) (dynLambda!8612 (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) lt!656899))) lt!656901)))))

(declare-fun lt!656902 () Unit!32625)

(declare-fun lemmaSemiInverse!471 (TokenValueInjection!6490 BalanceConc!12442) Unit!32625)

(assert (=> b!1718444 (= lt!656902 (lemmaSemiInverse!471 (transformation!3325 (rule!5267 (_1!10647 lt!656896))) lt!656899))))

(declare-fun b!1718445 () Bool)

(declare-fun res!770752 () Bool)

(assert (=> b!1718445 (=> (not res!770752) (not e!1099039))))

(declare-fun rule!422 () Rule!6450)

(declare-fun contains!3347 (List!18860 Rule!6450) Bool)

(assert (=> b!1718445 (= res!770752 (contains!3347 rules!3447 rule!422))))

(declare-fun b!1718446 () Bool)

(declare-fun tp!490749 () Bool)

(assert (=> b!1718446 (= e!1099045 (and e!1099040 tp!490749))))

(declare-fun e!1099048 () Bool)

(assert (=> b!1718447 (= e!1099048 (and tp!490753 tp!490750))))

(declare-fun b!1718448 () Bool)

(declare-fun res!770760 () Bool)

(assert (=> b!1718448 (=> res!770760 e!1099042)))

(declare-fun prefixMatch!538 (Regex!4653 List!18859) Bool)

(declare-fun rulesRegex!683 (LexerInterface!2954 List!18860) Regex!4653)

(declare-fun head!3874 (List!18859) C!9480)

(assert (=> b!1718448 (= res!770760 (prefixMatch!538 (rulesRegex!683 thiss!24550 rules!3447) (++!5150 lt!656914 (Cons!18789 (head!3874 suffix!1421) Nil!18789))))))

(declare-fun b!1718449 () Bool)

(declare-fun tp!490757 () Bool)

(assert (=> b!1718449 (= e!1099036 (and tp!490757 (inv!24246 (tag!3631 rule!422)) (inv!24251 (transformation!3325 rule!422)) e!1099048))))

(declare-fun b!1718450 () Bool)

(declare-fun res!770759 () Bool)

(assert (=> b!1718450 (=> (not res!770759) (not e!1099032))))

(assert (=> b!1718450 (= res!770759 (= (rule!5267 token!523) rule!422))))

(declare-fun b!1718451 () Bool)

(declare-fun e!1099029 () Bool)

(assert (=> b!1718451 (= e!1099029 true)))

(declare-fun lt!656894 () Int)

(declare-fun size!14929 (List!18859) Int)

(assert (=> b!1718451 (= lt!656894 (size!14929 lt!656906))))

(declare-fun lt!656913 () List!18859)

(assert (=> b!1718451 (= (_2!10647 lt!656896) lt!656913)))

(declare-fun lt!656904 () Unit!32625)

(declare-fun lemmaSamePrefixThenSameSuffix!710 (List!18859 List!18859 List!18859 List!18859 List!18859) Unit!32625)

(assert (=> b!1718451 (= lt!656904 (lemmaSamePrefixThenSameSuffix!710 lt!656901 (_2!10647 lt!656896) lt!656901 lt!656913 lt!656906))))

(declare-fun getSuffix!760 (List!18859 List!18859) List!18859)

(assert (=> b!1718451 (= lt!656913 (getSuffix!760 lt!656906 lt!656901))))

(declare-fun maxPrefixOneRule!884 (LexerInterface!2954 Rule!6450 List!18859) Option!3674)

(declare-fun apply!5130 (TokenValueInjection!6490 BalanceConc!12442) TokenValue!3415)

(declare-fun seqFromList!2299 (List!18859) BalanceConc!12442)

(assert (=> b!1718451 (= (maxPrefixOneRule!884 thiss!24550 (rule!5267 (_1!10647 lt!656896)) lt!656906) (Some!3673 (tuple2!18491 (Token!6217 (apply!5130 (transformation!3325 (rule!5267 (_1!10647 lt!656896))) (seqFromList!2299 lt!656901)) (rule!5267 (_1!10647 lt!656896)) (size!14929 lt!656901) lt!656901) (_2!10647 lt!656896))))))

(declare-fun lt!656893 () Unit!32625)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!283 (LexerInterface!2954 List!18860 List!18859 List!18859 List!18859 Rule!6450) Unit!32625)

(assert (=> b!1718451 (= lt!656893 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!283 thiss!24550 rules!3447 lt!656901 lt!656906 (_2!10647 lt!656896) (rule!5267 (_1!10647 lt!656896))))))

(declare-fun b!1718452 () Bool)

(declare-fun res!770745 () Bool)

(assert (=> b!1718452 (=> (not res!770745) (not e!1099032))))

(declare-fun isEmpty!11814 (List!18859) Bool)

(assert (=> b!1718452 (= res!770745 (isEmpty!11814 (_2!10647 lt!656900)))))

(declare-fun b!1718453 () Bool)

(assert (=> b!1718453 (= e!1099039 e!1099034)))

(declare-fun res!770757 () Bool)

(assert (=> b!1718453 (=> (not res!770757) (not e!1099034))))

(declare-fun isDefined!3018 (Option!3674) Bool)

(assert (=> b!1718453 (= res!770757 (isDefined!3018 lt!656912))))

(assert (=> b!1718453 (= lt!656912 (maxPrefix!1508 thiss!24550 rules!3447 lt!656914))))

(assert (=> b!1718453 (= lt!656914 (list!7590 (charsOf!1974 token!523)))))

(declare-fun b!1718454 () Bool)

(declare-fun e!1099041 () Bool)

(assert (=> b!1718454 (= e!1099043 e!1099041)))

(declare-fun res!770756 () Bool)

(assert (=> b!1718454 (=> (not res!770756) (not e!1099041))))

(declare-fun lt!656911 () Rule!6450)

(declare-fun matchR!2127 (Regex!4653 List!18859) Bool)

(assert (=> b!1718454 (= res!770756 (matchR!2127 (regex!3325 lt!656911) (list!7590 (charsOf!1974 (_1!10647 lt!656896)))))))

(declare-fun get!5555 (Option!3675) Rule!6450)

(assert (=> b!1718454 (= lt!656911 (get!5555 lt!656908))))

(declare-fun b!1718455 () Bool)

(declare-fun res!770755 () Bool)

(assert (=> b!1718455 (=> res!770755 e!1099042)))

(assert (=> b!1718455 (= res!770755 (isEmpty!11814 suffix!1421))))

(declare-fun b!1718456 () Bool)

(declare-fun tp_is_empty!7549 () Bool)

(declare-fun tp!490760 () Bool)

(assert (=> b!1718456 (= e!1099044 (and tp_is_empty!7549 tp!490760))))

(declare-fun b!1718457 () Bool)

(declare-fun res!770762 () Bool)

(assert (=> b!1718457 (=> res!770762 e!1099047)))

(assert (=> b!1718457 (= res!770762 (not (matchR!2127 (regex!3325 (rule!5267 (_1!10647 lt!656896))) lt!656901)))))

(assert (=> b!1718458 (= e!1099035 (and tp!490751 tp!490754))))

(declare-fun tp!490755 () Bool)

(declare-fun b!1718459 () Bool)

(declare-fun inv!21 (TokenValue!3415) Bool)

(assert (=> b!1718459 (= e!1099027 (and (inv!21 (value!104435 token!523)) e!1099033 tp!490755))))

(declare-fun b!1718460 () Bool)

(declare-fun res!770744 () Bool)

(assert (=> b!1718460 (=> (not res!770744) (not e!1099039))))

(declare-fun rulesInvariant!2623 (LexerInterface!2954 List!18860) Bool)

(assert (=> b!1718460 (= res!770744 (rulesInvariant!2623 thiss!24550 rules!3447))))

(declare-fun b!1718461 () Bool)

(assert (=> b!1718461 (= e!1099032 (not e!1099042))))

(declare-fun res!770749 () Bool)

(assert (=> b!1718461 (=> res!770749 e!1099042)))

(assert (=> b!1718461 (= res!770749 (not (matchR!2127 (regex!3325 rule!422) lt!656914)))))

(declare-fun ruleValid!824 (LexerInterface!2954 Rule!6450) Bool)

(assert (=> b!1718461 (ruleValid!824 thiss!24550 rule!422)))

(declare-fun lt!656897 () Unit!32625)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!348 (LexerInterface!2954 Rule!6450 List!18860) Unit!32625)

(assert (=> b!1718461 (= lt!656897 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!348 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1718462 () Bool)

(assert (=> b!1718462 (= e!1099041 (= (rule!5267 (_1!10647 lt!656896)) lt!656911))))

(declare-fun b!1718463 () Bool)

(assert (=> b!1718463 (= e!1099031 e!1099029)))

(declare-fun res!770753 () Bool)

(assert (=> b!1718463 (=> res!770753 e!1099029)))

(declare-fun size!14930 (BalanceConc!12442) Int)

(assert (=> b!1718463 (= res!770753 (not (= lt!656909 (Some!3673 (tuple2!18491 (Token!6217 (apply!5130 (transformation!3325 (rule!5267 (_1!10647 lt!656896))) lt!656899) (rule!5267 (_1!10647 lt!656896)) (size!14930 lt!656899) lt!656901) (_2!10647 lt!656896))))))))

(declare-fun lt!656905 () Unit!32625)

(declare-fun lemmaCharactersSize!397 (Token!6216) Unit!32625)

(assert (=> b!1718463 (= lt!656905 (lemmaCharactersSize!397 (_1!10647 lt!656896)))))

(declare-fun lt!656895 () Unit!32625)

(declare-fun lemmaEqSameImage!250 (TokenValueInjection!6490 BalanceConc!12442 BalanceConc!12442) Unit!32625)

(assert (=> b!1718463 (= lt!656895 (lemmaEqSameImage!250 (transformation!3325 (rule!5267 (_1!10647 lt!656896))) lt!656899 (seqFromList!2299 (originalCharacters!4139 (_1!10647 lt!656896)))))))

(assert (= (and start!168306 res!770748) b!1718436))

(assert (= (and b!1718436 res!770751) b!1718460))

(assert (= (and b!1718460 res!770744) b!1718445))

(assert (= (and b!1718445 res!770752) b!1718453))

(assert (= (and b!1718453 res!770757) b!1718441))

(assert (= (and b!1718441 res!770754) b!1718452))

(assert (= (and b!1718452 res!770745) b!1718450))

(assert (= (and b!1718450 res!770759) b!1718461))

(assert (= (and b!1718461 (not res!770749)) b!1718455))

(assert (= (and b!1718455 (not res!770755)) b!1718448))

(assert (= (and b!1718448 (not res!770760)) b!1718443))

(assert (= (and b!1718443 res!770746) b!1718454))

(assert (= (and b!1718454 res!770756) b!1718462))

(assert (= (and b!1718443 (not res!770750)) b!1718457))

(assert (= (and b!1718457 (not res!770762)) b!1718439))

(assert (= (and b!1718439 (not res!770747)) b!1718444))

(assert (= (and b!1718444 (not res!770758)) b!1718438))

(assert (= (and b!1718438 (not res!770761)) b!1718463))

(assert (= (and b!1718463 (not res!770753)) b!1718451))

(assert (= (and start!168306 ((_ is Cons!18789) suffix!1421)) b!1718456))

(assert (= b!1718449 b!1718447))

(assert (= start!168306 b!1718449))

(assert (= b!1718442 b!1718458))

(assert (= b!1718459 b!1718442))

(assert (= start!168306 b!1718459))

(assert (= b!1718437 b!1718440))

(assert (= b!1718446 b!1718437))

(assert (= (and start!168306 ((_ is Cons!18790) rules!3447)) b!1718446))

(declare-fun b_lambda!54395 () Bool)

(assert (=> (not b_lambda!54395) (not b!1718438)))

(declare-fun t!159108 () Bool)

(declare-fun tb!101685 () Bool)

(assert (=> (and b!1718440 (= (toChars!4691 (transformation!3325 (h!24191 rules!3447))) (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159108) tb!101685))

(declare-fun b!1718479 () Bool)

(declare-fun e!1099060 () Bool)

(declare-fun tp!490763 () Bool)

(declare-fun inv!24253 (Conc!6249) Bool)

(assert (=> b!1718479 (= e!1099060 (and (inv!24253 (c!281342 (dynLambda!8611 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) (value!104435 (_1!10647 lt!656896))))) tp!490763))))

(declare-fun result!122208 () Bool)

(declare-fun inv!24254 (BalanceConc!12442) Bool)

(assert (=> tb!101685 (= result!122208 (and (inv!24254 (dynLambda!8611 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) (value!104435 (_1!10647 lt!656896)))) e!1099060))))

(assert (= tb!101685 b!1718479))

(declare-fun m!2123383 () Bool)

(assert (=> b!1718479 m!2123383))

(declare-fun m!2123385 () Bool)

(assert (=> tb!101685 m!2123385))

(assert (=> b!1718438 t!159108))

(declare-fun b_and!125119 () Bool)

(assert (= b_and!125109 (and (=> t!159108 result!122208) b_and!125119)))

(declare-fun t!159110 () Bool)

(declare-fun tb!101687 () Bool)

(assert (=> (and b!1718458 (= (toChars!4691 (transformation!3325 (rule!5267 token!523))) (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159110) tb!101687))

(declare-fun result!122212 () Bool)

(assert (= result!122212 result!122208))

(assert (=> b!1718438 t!159110))

(declare-fun b_and!125121 () Bool)

(assert (= b_and!125113 (and (=> t!159110 result!122212) b_and!125121)))

(declare-fun tb!101689 () Bool)

(declare-fun t!159112 () Bool)

(assert (=> (and b!1718447 (= (toChars!4691 (transformation!3325 rule!422)) (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159112) tb!101689))

(declare-fun result!122214 () Bool)

(assert (= result!122214 result!122208))

(assert (=> b!1718438 t!159112))

(declare-fun b_and!125123 () Bool)

(assert (= b_and!125117 (and (=> t!159112 result!122214) b_and!125123)))

(declare-fun b_lambda!54397 () Bool)

(assert (=> (not b_lambda!54397) (not b!1718444)))

(declare-fun t!159114 () Bool)

(declare-fun tb!101691 () Bool)

(assert (=> (and b!1718440 (= (toChars!4691 (transformation!3325 (h!24191 rules!3447))) (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159114) tb!101691))

(declare-fun e!1099061 () Bool)

(declare-fun tp!490764 () Bool)

(declare-fun b!1718480 () Bool)

(assert (=> b!1718480 (= e!1099061 (and (inv!24253 (c!281342 (dynLambda!8611 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) (dynLambda!8612 (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) lt!656899)))) tp!490764))))

(declare-fun result!122216 () Bool)

(assert (=> tb!101691 (= result!122216 (and (inv!24254 (dynLambda!8611 (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) (dynLambda!8612 (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) lt!656899))) e!1099061))))

(assert (= tb!101691 b!1718480))

(declare-fun m!2123387 () Bool)

(assert (=> b!1718480 m!2123387))

(declare-fun m!2123389 () Bool)

(assert (=> tb!101691 m!2123389))

(assert (=> b!1718444 t!159114))

(declare-fun b_and!125125 () Bool)

(assert (= b_and!125119 (and (=> t!159114 result!122216) b_and!125125)))

(declare-fun tb!101693 () Bool)

(declare-fun t!159116 () Bool)

(assert (=> (and b!1718458 (= (toChars!4691 (transformation!3325 (rule!5267 token!523))) (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159116) tb!101693))

(declare-fun result!122218 () Bool)

(assert (= result!122218 result!122216))

(assert (=> b!1718444 t!159116))

(declare-fun b_and!125127 () Bool)

(assert (= b_and!125121 (and (=> t!159116 result!122218) b_and!125127)))

(declare-fun t!159118 () Bool)

(declare-fun tb!101695 () Bool)

(assert (=> (and b!1718447 (= (toChars!4691 (transformation!3325 rule!422)) (toChars!4691 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159118) tb!101695))

(declare-fun result!122220 () Bool)

(assert (= result!122220 result!122216))

(assert (=> b!1718444 t!159118))

(declare-fun b_and!125129 () Bool)

(assert (= b_and!125123 (and (=> t!159118 result!122220) b_and!125129)))

(declare-fun b_lambda!54399 () Bool)

(assert (=> (not b_lambda!54399) (not b!1718444)))

(declare-fun tb!101697 () Bool)

(declare-fun t!159120 () Bool)

(assert (=> (and b!1718440 (= (toValue!4832 (transformation!3325 (h!24191 rules!3447))) (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159120) tb!101697))

(declare-fun result!122222 () Bool)

(assert (=> tb!101697 (= result!122222 (inv!21 (dynLambda!8612 (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896)))) lt!656899)))))

(declare-fun m!2123391 () Bool)

(assert (=> tb!101697 m!2123391))

(assert (=> b!1718444 t!159120))

(declare-fun b_and!125131 () Bool)

(assert (= b_and!125107 (and (=> t!159120 result!122222) b_and!125131)))

(declare-fun tb!101699 () Bool)

(declare-fun t!159122 () Bool)

(assert (=> (and b!1718458 (= (toValue!4832 (transformation!3325 (rule!5267 token!523))) (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159122) tb!101699))

(declare-fun result!122226 () Bool)

(assert (= result!122226 result!122222))

(assert (=> b!1718444 t!159122))

(declare-fun b_and!125133 () Bool)

(assert (= b_and!125111 (and (=> t!159122 result!122226) b_and!125133)))

(declare-fun tb!101701 () Bool)

(declare-fun t!159124 () Bool)

(assert (=> (and b!1718447 (= (toValue!4832 (transformation!3325 rule!422)) (toValue!4832 (transformation!3325 (rule!5267 (_1!10647 lt!656896))))) t!159124) tb!101701))

(declare-fun result!122228 () Bool)

(assert (= result!122228 result!122222))

(assert (=> b!1718444 t!159124))

(declare-fun b_and!125135 () Bool)

(assert (= b_and!125115 (and (=> t!159124 result!122228) b_and!125135)))

(declare-fun m!2123393 () Bool)

(assert (=> b!1718461 m!2123393))

(declare-fun m!2123395 () Bool)

(assert (=> b!1718461 m!2123395))

(declare-fun m!2123397 () Bool)

(assert (=> b!1718461 m!2123397))

(declare-fun m!2123399 () Bool)

(assert (=> b!1718438 m!2123399))

(declare-fun m!2123401 () Bool)

(assert (=> b!1718455 m!2123401))

(declare-fun m!2123403 () Bool)

(assert (=> b!1718445 m!2123403))

(declare-fun m!2123405 () Bool)

(assert (=> b!1718437 m!2123405))

(declare-fun m!2123407 () Bool)

(assert (=> b!1718437 m!2123407))

(declare-fun m!2123409 () Bool)

(assert (=> b!1718453 m!2123409))

(declare-fun m!2123411 () Bool)

(assert (=> b!1718453 m!2123411))

(declare-fun m!2123413 () Bool)

(assert (=> b!1718453 m!2123413))

(assert (=> b!1718453 m!2123413))

(declare-fun m!2123415 () Bool)

(assert (=> b!1718453 m!2123415))

(declare-fun m!2123417 () Bool)

(assert (=> b!1718459 m!2123417))

(declare-fun m!2123419 () Bool)

(assert (=> start!168306 m!2123419))

(declare-fun m!2123421 () Bool)

(assert (=> b!1718451 m!2123421))

(declare-fun m!2123423 () Bool)

(assert (=> b!1718451 m!2123423))

(declare-fun m!2123425 () Bool)

(assert (=> b!1718451 m!2123425))

(assert (=> b!1718451 m!2123425))

(declare-fun m!2123427 () Bool)

(assert (=> b!1718451 m!2123427))

(declare-fun m!2123429 () Bool)

(assert (=> b!1718451 m!2123429))

(declare-fun m!2123431 () Bool)

(assert (=> b!1718451 m!2123431))

(declare-fun m!2123433 () Bool)

(assert (=> b!1718451 m!2123433))

(declare-fun m!2123435 () Bool)

(assert (=> b!1718451 m!2123435))

(declare-fun m!2123437 () Bool)

(assert (=> b!1718441 m!2123437))

(declare-fun m!2123439 () Bool)

(assert (=> b!1718457 m!2123439))

(declare-fun m!2123441 () Bool)

(assert (=> b!1718444 m!2123441))

(assert (=> b!1718444 m!2123441))

(declare-fun m!2123443 () Bool)

(assert (=> b!1718444 m!2123443))

(assert (=> b!1718444 m!2123443))

(declare-fun m!2123445 () Bool)

(assert (=> b!1718444 m!2123445))

(declare-fun m!2123447 () Bool)

(assert (=> b!1718444 m!2123447))

(declare-fun m!2123449 () Bool)

(assert (=> b!1718454 m!2123449))

(assert (=> b!1718454 m!2123449))

(declare-fun m!2123451 () Bool)

(assert (=> b!1718454 m!2123451))

(assert (=> b!1718454 m!2123451))

(declare-fun m!2123453 () Bool)

(assert (=> b!1718454 m!2123453))

(declare-fun m!2123455 () Bool)

(assert (=> b!1718454 m!2123455))

(declare-fun m!2123457 () Bool)

(assert (=> b!1718463 m!2123457))

(declare-fun m!2123459 () Bool)

(assert (=> b!1718463 m!2123459))

(declare-fun m!2123461 () Bool)

(assert (=> b!1718463 m!2123461))

(assert (=> b!1718463 m!2123457))

(declare-fun m!2123463 () Bool)

(assert (=> b!1718463 m!2123463))

(declare-fun m!2123465 () Bool)

(assert (=> b!1718463 m!2123465))

(declare-fun m!2123467 () Bool)

(assert (=> b!1718448 m!2123467))

(declare-fun m!2123469 () Bool)

(assert (=> b!1718448 m!2123469))

(declare-fun m!2123471 () Bool)

(assert (=> b!1718448 m!2123471))

(assert (=> b!1718448 m!2123467))

(assert (=> b!1718448 m!2123471))

(declare-fun m!2123473 () Bool)

(assert (=> b!1718448 m!2123473))

(declare-fun m!2123475 () Bool)

(assert (=> b!1718452 m!2123475))

(declare-fun m!2123477 () Bool)

(assert (=> b!1718449 m!2123477))

(declare-fun m!2123479 () Bool)

(assert (=> b!1718449 m!2123479))

(declare-fun m!2123481 () Bool)

(assert (=> b!1718436 m!2123481))

(declare-fun m!2123483 () Bool)

(assert (=> b!1718460 m!2123483))

(declare-fun m!2123485 () Bool)

(assert (=> b!1718439 m!2123485))

(declare-fun m!2123487 () Bool)

(assert (=> b!1718439 m!2123487))

(declare-fun m!2123489 () Bool)

(assert (=> b!1718443 m!2123489))

(declare-fun m!2123491 () Bool)

(assert (=> b!1718443 m!2123491))

(declare-fun m!2123493 () Bool)

(assert (=> b!1718443 m!2123493))

(declare-fun m!2123495 () Bool)

(assert (=> b!1718443 m!2123495))

(declare-fun m!2123497 () Bool)

(assert (=> b!1718443 m!2123497))

(declare-fun m!2123499 () Bool)

(assert (=> b!1718443 m!2123499))

(declare-fun m!2123501 () Bool)

(assert (=> b!1718443 m!2123501))

(declare-fun m!2123503 () Bool)

(assert (=> b!1718443 m!2123503))

(assert (=> b!1718443 m!2123449))

(assert (=> b!1718443 m!2123489))

(declare-fun m!2123505 () Bool)

(assert (=> b!1718443 m!2123505))

(declare-fun m!2123507 () Bool)

(assert (=> b!1718443 m!2123507))

(declare-fun m!2123509 () Bool)

(assert (=> b!1718443 m!2123509))

(declare-fun m!2123511 () Bool)

(assert (=> b!1718443 m!2123511))

(declare-fun m!2123513 () Bool)

(assert (=> b!1718443 m!2123513))

(declare-fun m!2123515 () Bool)

(assert (=> b!1718443 m!2123515))

(declare-fun m!2123517 () Bool)

(assert (=> b!1718442 m!2123517))

(declare-fun m!2123519 () Bool)

(assert (=> b!1718442 m!2123519))

(check-sat (not b!1718441) (not b!1718436) (not b!1718442) b_and!125129 (not b_next!47457) tp_is_empty!7549 b_and!125135 (not b!1718439) (not b_lambda!54397) (not b!1718459) (not tb!101691) (not tb!101697) (not b_next!47455) (not b!1718437) (not b_next!47451) (not tb!101685) (not b!1718455) (not b!1718460) b_and!125127 b_and!125131 (not b_lambda!54399) (not b!1718457) (not b!1718461) b_and!125133 (not b!1718454) (not b_next!47461) (not b!1718446) (not b!1718443) (not b!1718444) (not b!1718456) (not b!1718463) (not b!1718451) (not b!1718480) (not b_next!47453) (not b!1718452) (not b!1718449) (not start!168306) (not b!1718453) (not b!1718479) (not b_lambda!54395) b_and!125125 (not b!1718448) (not b_next!47459) (not b!1718445))
(check-sat (not b_next!47451) b_and!125129 (not b_next!47457) (not b_next!47453) b_and!125135 b_and!125125 (not b_next!47459) (not b_next!47455) b_and!125127 b_and!125131 b_and!125133 (not b_next!47461))
