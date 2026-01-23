; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372180 () Bool)

(assert start!372180)

(declare-fun b!3957301 () Bool)

(declare-fun b_free!109053 () Bool)

(declare-fun b_next!109757 () Bool)

(assert (=> b!3957301 (= b_free!109053 (not b_next!109757))))

(declare-fun tp!1205958 () Bool)

(declare-fun b_and!303679 () Bool)

(assert (=> b!3957301 (= tp!1205958 b_and!303679)))

(declare-fun b_free!109055 () Bool)

(declare-fun b_next!109759 () Bool)

(assert (=> b!3957301 (= b_free!109055 (not b_next!109759))))

(declare-fun tp!1205972 () Bool)

(declare-fun b_and!303681 () Bool)

(assert (=> b!3957301 (= tp!1205972 b_and!303681)))

(declare-fun b!3957296 () Bool)

(declare-fun b_free!109057 () Bool)

(declare-fun b_next!109761 () Bool)

(assert (=> b!3957296 (= b_free!109057 (not b_next!109761))))

(declare-fun tp!1205964 () Bool)

(declare-fun b_and!303683 () Bool)

(assert (=> b!3957296 (= tp!1205964 b_and!303683)))

(declare-fun b_free!109059 () Bool)

(declare-fun b_next!109763 () Bool)

(assert (=> b!3957296 (= b_free!109059 (not b_next!109763))))

(declare-fun tp!1205971 () Bool)

(declare-fun b_and!303685 () Bool)

(assert (=> b!3957296 (= tp!1205971 b_and!303685)))

(declare-fun b!3957291 () Bool)

(declare-fun b_free!109061 () Bool)

(declare-fun b_next!109765 () Bool)

(assert (=> b!3957291 (= b_free!109061 (not b_next!109765))))

(declare-fun tp!1205969 () Bool)

(declare-fun b_and!303687 () Bool)

(assert (=> b!3957291 (= tp!1205969 b_and!303687)))

(declare-fun b_free!109063 () Bool)

(declare-fun b_next!109767 () Bool)

(assert (=> b!3957291 (= b_free!109063 (not b_next!109767))))

(declare-fun tp!1205966 () Bool)

(declare-fun b_and!303689 () Bool)

(assert (=> b!3957291 (= tp!1205966 b_and!303689)))

(declare-fun e!2450003 () Bool)

(declare-fun e!2449995 () Bool)

(declare-datatypes ((List!42243 0))(
  ( (Nil!42119) (Cons!42119 (h!47539 (_ BitVec 16)) (t!329498 List!42243)) )
))
(declare-datatypes ((TokenValue!6830 0))(
  ( (FloatLiteralValue!13660 (text!48255 List!42243)) (TokenValueExt!6829 (__x!25877 Int)) (Broken!34150 (value!208708 List!42243)) (Object!6953) (End!6830) (Def!6830) (Underscore!6830) (Match!6830) (Else!6830) (Error!6830) (Case!6830) (If!6830) (Extends!6830) (Abstract!6830) (Class!6830) (Val!6830) (DelimiterValue!13660 (del!6890 List!42243)) (KeywordValue!6836 (value!208709 List!42243)) (CommentValue!13660 (value!208710 List!42243)) (WhitespaceValue!13660 (value!208711 List!42243)) (IndentationValue!6830 (value!208712 List!42243)) (String!47867) (Int32!6830) (Broken!34151 (value!208713 List!42243)) (Boolean!6831) (Unit!60609) (OperatorValue!6833 (op!6890 List!42243)) (IdentifierValue!13660 (value!208714 List!42243)) (IdentifierValue!13661 (value!208715 List!42243)) (WhitespaceValue!13661 (value!208716 List!42243)) (True!13660) (False!13660) (Broken!34152 (value!208717 List!42243)) (Broken!34153 (value!208718 List!42243)) (True!13661) (RightBrace!6830) (RightBracket!6830) (Colon!6830) (Null!6830) (Comma!6830) (LeftBracket!6830) (False!13661) (LeftBrace!6830) (ImaginaryLiteralValue!6830 (text!48256 List!42243)) (StringLiteralValue!20490 (value!208719 List!42243)) (EOFValue!6830 (value!208720 List!42243)) (IdentValue!6830 (value!208721 List!42243)) (DelimiterValue!13661 (value!208722 List!42243)) (DedentValue!6830 (value!208723 List!42243)) (NewLineValue!6830 (value!208724 List!42243)) (IntegerValue!20490 (value!208725 (_ BitVec 32)) (text!48257 List!42243)) (IntegerValue!20491 (value!208726 Int) (text!48258 List!42243)) (Times!6830) (Or!6830) (Equal!6830) (Minus!6830) (Broken!34154 (value!208727 List!42243)) (And!6830) (Div!6830) (LessEqual!6830) (Mod!6830) (Concat!18335) (Not!6830) (Plus!6830) (SpaceValue!6830 (value!208728 List!42243)) (IntegerValue!20492 (value!208729 Int) (text!48259 List!42243)) (StringLiteralValue!20491 (text!48260 List!42243)) (FloatLiteralValue!13661 (text!48261 List!42243)) (BytesLiteralValue!6830 (value!208730 List!42243)) (CommentValue!13661 (value!208731 List!42243)) (StringLiteralValue!20492 (value!208732 List!42243)) (ErrorTokenValue!6830 (msg!6891 List!42243)) )
))
(declare-datatypes ((C!23196 0))(
  ( (C!23197 (val!13692 Int)) )
))
(declare-datatypes ((Regex!11505 0))(
  ( (ElementMatch!11505 (c!686856 C!23196)) (Concat!18336 (regOne!23522 Regex!11505) (regTwo!23522 Regex!11505)) (EmptyExpr!11505) (Star!11505 (reg!11834 Regex!11505)) (EmptyLang!11505) (Union!11505 (regOne!23523 Regex!11505) (regTwo!23523 Regex!11505)) )
))
(declare-datatypes ((String!47868 0))(
  ( (String!47869 (value!208733 String)) )
))
(declare-datatypes ((List!42244 0))(
  ( (Nil!42120) (Cons!42120 (h!47540 C!23196) (t!329499 List!42244)) )
))
(declare-datatypes ((IArray!25627 0))(
  ( (IArray!25628 (innerList!12871 List!42244)) )
))
(declare-datatypes ((Conc!12811 0))(
  ( (Node!12811 (left!31993 Conc!12811) (right!32323 Conc!12811) (csize!25852 Int) (cheight!13022 Int)) (Leaf!19818 (xs!16117 IArray!25627) (csize!25853 Int)) (Empty!12811) )
))
(declare-datatypes ((BalanceConc!25216 0))(
  ( (BalanceConc!25217 (c!686857 Conc!12811)) )
))
(declare-datatypes ((TokenValueInjection!13088 0))(
  ( (TokenValueInjection!13089 (toValue!9080 Int) (toChars!8939 Int)) )
))
(declare-datatypes ((Rule!13000 0))(
  ( (Rule!13001 (regex!6600 Regex!11505) (tag!7460 String!47868) (isSeparator!6600 Bool) (transformation!6600 TokenValueInjection!13088)) )
))
(declare-datatypes ((Token!12338 0))(
  ( (Token!12339 (value!208734 TokenValue!6830) (rule!9574 Rule!13000) (size!31550 Int) (originalCharacters!7200 List!42244)) )
))
(declare-datatypes ((List!42245 0))(
  ( (Nil!42121) (Cons!42121 (h!47541 Token!12338) (t!329500 List!42245)) )
))
(declare-fun suffixTokens!72 () List!42245)

(declare-fun b!3957289 () Bool)

(declare-fun tp!1205963 () Bool)

(declare-fun inv!56352 (Token!12338) Bool)

(assert (=> b!3957289 (= e!2450003 (and (inv!56352 (h!47541 suffixTokens!72)) e!2449995 tp!1205963))))

(declare-fun b!3957290 () Bool)

(declare-fun res!1601355 () Bool)

(declare-fun e!2449997 () Bool)

(assert (=> b!3957290 (=> res!1601355 e!2449997)))

(declare-datatypes ((tuple2!41406 0))(
  ( (tuple2!41407 (_1!23837 Token!12338) (_2!23837 List!42244)) )
))
(declare-datatypes ((Option!9020 0))(
  ( (None!9019) (Some!9019 (v!39365 tuple2!41406)) )
))
(declare-fun lt!1383640 () Option!9020)

(declare-datatypes ((tuple2!41408 0))(
  ( (tuple2!41409 (_1!23838 List!42245) (_2!23838 List!42244)) )
))
(declare-fun lt!1383654 () tuple2!41408)

(declare-fun lt!1383657 () tuple2!41408)

(declare-fun ++!10957 (List!42245 List!42245) List!42245)

(assert (=> b!3957290 (= res!1601355 (not (= lt!1383657 (tuple2!41409 (++!10957 (Cons!42121 (_1!23837 (v!39365 lt!1383640)) Nil!42121) (_1!23838 lt!1383654)) (_2!23838 lt!1383654)))))))

(declare-fun e!2450004 () Bool)

(assert (=> b!3957291 (= e!2450004 (and tp!1205969 tp!1205966))))

(declare-fun b!3957292 () Bool)

(declare-fun res!1601354 () Bool)

(declare-fun e!2449990 () Bool)

(assert (=> b!3957292 (=> res!1601354 e!2449990)))

(declare-fun prefixTokens!80 () List!42245)

(declare-fun lt!1383644 () Token!12338)

(assert (=> b!3957292 (= res!1601354 (or (not (= prefixTokens!80 (Cons!42121 lt!1383644 Nil!42121))) (not (= (_1!23837 (v!39365 lt!1383640)) lt!1383644))))))

(declare-fun b!3957293 () Bool)

(declare-fun tp!1205956 () Bool)

(declare-datatypes ((List!42246 0))(
  ( (Nil!42122) (Cons!42122 (h!47542 Rule!13000) (t!329501 List!42246)) )
))
(declare-fun rules!2768 () List!42246)

(declare-fun e!2450005 () Bool)

(declare-fun inv!56349 (String!47868) Bool)

(declare-fun inv!56353 (TokenValueInjection!13088) Bool)

(assert (=> b!3957293 (= e!2450005 (and tp!1205956 (inv!56349 (tag!7460 (h!47542 rules!2768))) (inv!56353 (transformation!6600 (h!47542 rules!2768))) e!2450004))))

(declare-fun b!3957294 () Bool)

(declare-fun res!1601340 () Bool)

(declare-fun e!2450009 () Bool)

(assert (=> b!3957294 (=> res!1601340 e!2450009)))

(declare-fun suffix!1176 () List!42244)

(declare-fun isEmpty!25176 (List!42244) Bool)

(assert (=> b!3957294 (= res!1601340 (isEmpty!25176 suffix!1176))))

(declare-fun b!3957295 () Bool)

(declare-fun res!1601352 () Bool)

(declare-fun e!2450006 () Bool)

(assert (=> b!3957295 (=> (not res!1601352) (not e!2450006))))

(declare-datatypes ((LexerInterface!6189 0))(
  ( (LexerInterfaceExt!6186 (__x!25878 Int)) (Lexer!6187) )
))
(declare-fun thiss!20629 () LexerInterface!6189)

(declare-fun rulesInvariant!5532 (LexerInterface!6189 List!42246) Bool)

(assert (=> b!3957295 (= res!1601352 (rulesInvariant!5532 thiss!20629 rules!2768))))

(declare-fun e!2449992 () Bool)

(assert (=> b!3957296 (= e!2449992 (and tp!1205964 tp!1205971))))

(declare-fun b!3957297 () Bool)

(declare-fun e!2450007 () Bool)

(declare-fun tp!1205965 () Bool)

(assert (=> b!3957297 (= e!2450007 (and e!2450005 tp!1205965))))

(declare-fun b!3957298 () Bool)

(declare-fun res!1601337 () Bool)

(assert (=> b!3957298 (=> res!1601337 e!2450009)))

(declare-fun lt!1383658 () tuple2!41406)

(declare-fun lt!1383653 () tuple2!41408)

(declare-fun lexList!1957 (LexerInterface!6189 List!42246 List!42244) tuple2!41408)

(assert (=> b!3957298 (= res!1601337 (not (= (lexList!1957 thiss!20629 rules!2768 (_2!23837 lt!1383658)) lt!1383653)))))

(declare-fun b!3957299 () Bool)

(declare-fun e!2450015 () Bool)

(declare-fun e!2450012 () Bool)

(assert (=> b!3957299 (= e!2450015 e!2450012)))

(declare-fun res!1601348 () Bool)

(assert (=> b!3957299 (=> res!1601348 e!2450012)))

(declare-fun lt!1383656 () Int)

(declare-fun lt!1383661 () Int)

(declare-fun lt!1383652 () Int)

(assert (=> b!3957299 (= res!1601348 (not (= (+ lt!1383656 lt!1383652) lt!1383661)))))

(declare-fun lt!1383645 () List!42244)

(declare-fun size!31551 (List!42244) Int)

(assert (=> b!3957299 (= lt!1383661 (size!31551 lt!1383645))))

(declare-fun b!3957300 () Bool)

(declare-fun e!2450008 () Bool)

(declare-fun tp_is_empty!19981 () Bool)

(declare-fun tp!1205962 () Bool)

(assert (=> b!3957300 (= e!2450008 (and tp_is_empty!19981 tp!1205962))))

(declare-fun e!2449987 () Bool)

(assert (=> b!3957301 (= e!2449987 (and tp!1205958 tp!1205972))))

(declare-fun b!3957302 () Bool)

(assert (=> b!3957302 (= e!2449990 e!2450009)))

(declare-fun res!1601350 () Bool)

(assert (=> b!3957302 (=> res!1601350 e!2450009)))

(declare-fun lt!1383647 () Int)

(assert (=> b!3957302 (= res!1601350 (not (= lt!1383652 lt!1383647)))))

(assert (=> b!3957302 (= (_2!23837 (v!39365 lt!1383640)) (_2!23837 lt!1383658))))

(declare-fun lt!1383650 () List!42244)

(declare-datatypes ((Unit!60610 0))(
  ( (Unit!60611) )
))
(declare-fun lt!1383651 () Unit!60610)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!600 (List!42244 List!42244 List!42244 List!42244) Unit!60610)

(assert (=> b!3957302 (= lt!1383651 (lemmaConcatSameAndSameSizesThenSameLists!600 lt!1383650 (_2!23837 (v!39365 lt!1383640)) lt!1383650 (_2!23837 lt!1383658)))))

(declare-fun b!3957303 () Bool)

(declare-fun res!1601346 () Bool)

(assert (=> b!3957303 (=> (not res!1601346) (not e!2450006))))

(declare-fun isEmpty!25177 (List!42245) Bool)

(assert (=> b!3957303 (= res!1601346 (not (isEmpty!25177 prefixTokens!80)))))

(declare-fun res!1601338 () Bool)

(assert (=> start!372180 (=> (not res!1601338) (not e!2450006))))

(get-info :version)

(assert (=> start!372180 (= res!1601338 ((_ is Lexer!6187) thiss!20629))))

(assert (=> start!372180 e!2450006))

(declare-fun e!2450000 () Bool)

(assert (=> start!372180 e!2450000))

(assert (=> start!372180 true))

(declare-fun e!2449996 () Bool)

(assert (=> start!372180 e!2449996))

(assert (=> start!372180 e!2450007))

(declare-fun e!2450002 () Bool)

(assert (=> start!372180 e!2450002))

(assert (=> start!372180 e!2450003))

(assert (=> start!372180 e!2450008))

(declare-fun tp!1205967 () Bool)

(declare-fun b!3957304 () Bool)

(declare-fun e!2449998 () Bool)

(assert (=> b!3957304 (= e!2449998 (and tp!1205967 (inv!56349 (tag!7460 (rule!9574 (h!47541 suffixTokens!72)))) (inv!56353 (transformation!6600 (rule!9574 (h!47541 suffixTokens!72)))) e!2449992))))

(declare-fun b!3957305 () Bool)

(declare-fun e!2450010 () Bool)

(declare-fun e!2449991 () Bool)

(assert (=> b!3957305 (= e!2450010 e!2449991)))

(declare-fun res!1601341 () Bool)

(assert (=> b!3957305 (=> (not res!1601341) (not e!2449991))))

(assert (=> b!3957305 (= res!1601341 ((_ is Some!9019) lt!1383640))))

(declare-fun maxPrefix!3493 (LexerInterface!6189 List!42246 List!42244) Option!9020)

(assert (=> b!3957305 (= lt!1383640 (maxPrefix!3493 thiss!20629 rules!2768 lt!1383645))))

(declare-fun b!3957306 () Bool)

(assert (=> b!3957306 (= e!2449991 (not e!2449997))))

(declare-fun res!1601358 () Bool)

(assert (=> b!3957306 (=> res!1601358 e!2449997)))

(declare-fun lt!1383642 () List!42244)

(assert (=> b!3957306 (= res!1601358 (not (= lt!1383642 lt!1383645)))))

(assert (=> b!3957306 (= lt!1383654 (lexList!1957 thiss!20629 rules!2768 (_2!23837 (v!39365 lt!1383640))))))

(declare-fun lt!1383660 () List!42244)

(declare-fun lt!1383646 () TokenValue!6830)

(assert (=> b!3957306 (and (= (size!31550 (_1!23837 (v!39365 lt!1383640))) lt!1383656) (= (originalCharacters!7200 (_1!23837 (v!39365 lt!1383640))) lt!1383650) (= (v!39365 lt!1383640) (tuple2!41407 (Token!12339 lt!1383646 (rule!9574 (_1!23837 (v!39365 lt!1383640))) lt!1383656 lt!1383650) lt!1383660)))))

(assert (=> b!3957306 (= lt!1383656 (size!31551 lt!1383650))))

(declare-fun e!2450013 () Bool)

(assert (=> b!3957306 e!2450013))

(declare-fun res!1601353 () Bool)

(assert (=> b!3957306 (=> (not res!1601353) (not e!2450013))))

(assert (=> b!3957306 (= res!1601353 (= (value!208734 (_1!23837 (v!39365 lt!1383640))) lt!1383646))))

(declare-fun apply!9831 (TokenValueInjection!13088 BalanceConc!25216) TokenValue!6830)

(declare-fun seqFromList!4859 (List!42244) BalanceConc!25216)

(assert (=> b!3957306 (= lt!1383646 (apply!9831 (transformation!6600 (rule!9574 (_1!23837 (v!39365 lt!1383640)))) (seqFromList!4859 lt!1383650)))))

(assert (=> b!3957306 (= (_2!23837 (v!39365 lt!1383640)) lt!1383660)))

(declare-fun lt!1383641 () Unit!60610)

(declare-fun lemmaSamePrefixThenSameSuffix!1898 (List!42244 List!42244 List!42244 List!42244 List!42244) Unit!60610)

(assert (=> b!3957306 (= lt!1383641 (lemmaSamePrefixThenSameSuffix!1898 lt!1383650 (_2!23837 (v!39365 lt!1383640)) lt!1383650 lt!1383660 lt!1383645))))

(declare-fun getSuffix!2140 (List!42244 List!42244) List!42244)

(assert (=> b!3957306 (= lt!1383660 (getSuffix!2140 lt!1383645 lt!1383650))))

(declare-fun isPrefix!3689 (List!42244 List!42244) Bool)

(assert (=> b!3957306 (isPrefix!3689 lt!1383650 lt!1383642)))

(declare-fun ++!10958 (List!42244 List!42244) List!42244)

(assert (=> b!3957306 (= lt!1383642 (++!10958 lt!1383650 (_2!23837 (v!39365 lt!1383640))))))

(declare-fun lt!1383648 () Unit!60610)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2548 (List!42244 List!42244) Unit!60610)

(assert (=> b!3957306 (= lt!1383648 (lemmaConcatTwoListThenFirstIsPrefix!2548 lt!1383650 (_2!23837 (v!39365 lt!1383640))))))

(declare-fun list!15640 (BalanceConc!25216) List!42244)

(declare-fun charsOf!4418 (Token!12338) BalanceConc!25216)

(assert (=> b!3957306 (= lt!1383650 (list!15640 (charsOf!4418 (_1!23837 (v!39365 lt!1383640)))))))

(declare-fun ruleValid!2542 (LexerInterface!6189 Rule!13000) Bool)

(assert (=> b!3957306 (ruleValid!2542 thiss!20629 (rule!9574 (_1!23837 (v!39365 lt!1383640))))))

(declare-fun lt!1383659 () Unit!60610)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1618 (LexerInterface!6189 Rule!13000 List!42246) Unit!60610)

(assert (=> b!3957306 (= lt!1383659 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1618 thiss!20629 (rule!9574 (_1!23837 (v!39365 lt!1383640))) rules!2768))))

(declare-fun lt!1383643 () Unit!60610)

(declare-fun lemmaCharactersSize!1253 (Token!12338) Unit!60610)

(assert (=> b!3957306 (= lt!1383643 (lemmaCharactersSize!1253 (_1!23837 (v!39365 lt!1383640))))))

(declare-fun b!3957307 () Bool)

(declare-fun res!1601342 () Bool)

(assert (=> b!3957307 (=> (not res!1601342) (not e!2450006))))

(declare-fun prefix!426 () List!42244)

(assert (=> b!3957307 (= res!1601342 (not (isEmpty!25176 prefix!426)))))

(declare-fun b!3957308 () Bool)

(declare-fun res!1601345 () Bool)

(assert (=> b!3957308 (=> res!1601345 e!2449997)))

(assert (=> b!3957308 (= res!1601345 (or (not (= lt!1383654 (tuple2!41409 (_1!23838 lt!1383654) (_2!23838 lt!1383654)))) (= (_2!23837 (v!39365 lt!1383640)) suffix!1176)))))

(declare-fun b!3957309 () Bool)

(declare-fun e!2449993 () Bool)

(assert (=> b!3957309 (= e!2450006 e!2449993)))

(declare-fun res!1601360 () Bool)

(assert (=> b!3957309 (=> (not res!1601360) (not e!2449993))))

(declare-fun suffixResult!91 () List!42244)

(declare-fun lt!1383662 () List!42245)

(assert (=> b!3957309 (= res!1601360 (= lt!1383657 (tuple2!41409 lt!1383662 suffixResult!91)))))

(assert (=> b!3957309 (= lt!1383657 (lexList!1957 thiss!20629 rules!2768 lt!1383645))))

(assert (=> b!3957309 (= lt!1383662 (++!10957 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3957309 (= lt!1383645 (++!10958 prefix!426 suffix!1176))))

(declare-fun e!2449999 () Bool)

(declare-fun tp!1205959 () Bool)

(declare-fun b!3957310 () Bool)

(assert (=> b!3957310 (= e!2449999 (and tp!1205959 (inv!56349 (tag!7460 (rule!9574 (h!47541 prefixTokens!80)))) (inv!56353 (transformation!6600 (rule!9574 (h!47541 prefixTokens!80)))) e!2449987))))

(declare-fun b!3957311 () Bool)

(declare-fun tp!1205970 () Bool)

(declare-fun inv!21 (TokenValue!6830) Bool)

(assert (=> b!3957311 (= e!2449995 (and (inv!21 (value!208734 (h!47541 suffixTokens!72))) e!2449998 tp!1205970))))

(declare-fun b!3957312 () Bool)

(declare-fun e!2450011 () Bool)

(assert (=> b!3957312 (= e!2450012 e!2450011)))

(declare-fun res!1601344 () Bool)

(assert (=> b!3957312 (=> res!1601344 e!2450011)))

(declare-fun lt!1383655 () Int)

(declare-fun lt!1383649 () Int)

(assert (=> b!3957312 (= res!1601344 (or (not (= (+ lt!1383655 lt!1383649) lt!1383661)) (<= lt!1383656 lt!1383655)))))

(assert (=> b!3957312 (= lt!1383655 (size!31551 prefix!426))))

(declare-fun b!3957313 () Bool)

(declare-fun e!2449994 () Bool)

(assert (=> b!3957313 (= e!2450011 e!2449994)))

(declare-fun res!1601339 () Bool)

(assert (=> b!3957313 (=> res!1601339 e!2449994)))

(declare-fun matchR!5526 (Regex!11505 List!42244) Bool)

(assert (=> b!3957313 (= res!1601339 (not (matchR!5526 (regex!6600 (rule!9574 (_1!23837 (v!39365 lt!1383640)))) lt!1383650)))))

(declare-fun maxPrefixOneRule!2543 (LexerInterface!6189 Rule!13000 List!42244) Option!9020)

(assert (=> b!3957313 (= (maxPrefixOneRule!2543 thiss!20629 (rule!9574 (_1!23837 (v!39365 lt!1383640))) lt!1383645) (Some!9019 (tuple2!41407 (Token!12339 lt!1383646 (rule!9574 (_1!23837 (v!39365 lt!1383640))) lt!1383656 lt!1383650) (_2!23837 (v!39365 lt!1383640)))))))

(declare-fun lt!1383663 () Unit!60610)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1369 (LexerInterface!6189 List!42246 List!42244 List!42244 List!42244 Rule!13000) Unit!60610)

(assert (=> b!3957313 (= lt!1383663 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1369 thiss!20629 rules!2768 lt!1383650 lt!1383645 (_2!23837 (v!39365 lt!1383640)) (rule!9574 (_1!23837 (v!39365 lt!1383640)))))))

(declare-fun b!3957314 () Bool)

(declare-fun e!2450001 () Bool)

(declare-fun tp!1205961 () Bool)

(assert (=> b!3957314 (= e!2450002 (and (inv!56352 (h!47541 prefixTokens!80)) e!2450001 tp!1205961))))

(declare-fun b!3957315 () Bool)

(assert (=> b!3957315 (= e!2450013 (= (size!31550 (_1!23837 (v!39365 lt!1383640))) (size!31551 (originalCharacters!7200 (_1!23837 (v!39365 lt!1383640))))))))

(declare-fun b!3957316 () Bool)

(assert (=> b!3957316 (= e!2449993 e!2450010)))

(declare-fun res!1601359 () Bool)

(assert (=> b!3957316 (=> (not res!1601359) (not e!2450010))))

(assert (=> b!3957316 (= res!1601359 (= (lexList!1957 thiss!20629 rules!2768 suffix!1176) lt!1383653))))

(assert (=> b!3957316 (= lt!1383653 (tuple2!41409 suffixTokens!72 suffixResult!91))))

(declare-fun b!3957317 () Bool)

(assert (=> b!3957317 (= e!2450009 (> lt!1383649 lt!1383647))))

(declare-fun b!3957318 () Bool)

(declare-fun res!1601357 () Bool)

(assert (=> b!3957318 (=> res!1601357 e!2449990)))

(declare-fun tail!6133 (List!42245) List!42245)

(assert (=> b!3957318 (= res!1601357 (not (isEmpty!25177 (tail!6133 prefixTokens!80))))))

(declare-fun b!3957319 () Bool)

(declare-fun tp!1205960 () Bool)

(assert (=> b!3957319 (= e!2450000 (and tp_is_empty!19981 tp!1205960))))

(declare-fun b!3957320 () Bool)

(declare-fun e!2449986 () Bool)

(assert (=> b!3957320 (= e!2449986 e!2449990)))

(declare-fun res!1601343 () Bool)

(assert (=> b!3957320 (=> res!1601343 e!2449990)))

(assert (=> b!3957320 (= res!1601343 (>= lt!1383647 lt!1383649))))

(assert (=> b!3957320 (= lt!1383647 (size!31551 (_2!23837 lt!1383658)))))

(declare-fun b!3957321 () Bool)

(declare-fun tp!1205957 () Bool)

(assert (=> b!3957321 (= e!2450001 (and (inv!21 (value!208734 (h!47541 prefixTokens!80))) e!2449999 tp!1205957))))

(declare-fun b!3957322 () Bool)

(declare-fun res!1601356 () Bool)

(assert (=> b!3957322 (=> (not res!1601356) (not e!2450006))))

(declare-fun isEmpty!25178 (List!42246) Bool)

(assert (=> b!3957322 (= res!1601356 (not (isEmpty!25178 rules!2768)))))

(declare-fun b!3957323 () Bool)

(assert (=> b!3957323 (= e!2449997 e!2450015)))

(declare-fun res!1601351 () Bool)

(assert (=> b!3957323 (=> res!1601351 e!2450015)))

(assert (=> b!3957323 (= res!1601351 (>= lt!1383652 lt!1383649))))

(assert (=> b!3957323 (= lt!1383649 (size!31551 suffix!1176))))

(assert (=> b!3957323 (= lt!1383652 (size!31551 (_2!23837 (v!39365 lt!1383640))))))

(declare-fun b!3957324 () Bool)

(declare-fun tp!1205968 () Bool)

(assert (=> b!3957324 (= e!2449996 (and tp_is_empty!19981 tp!1205968))))

(declare-fun b!3957325 () Bool)

(assert (=> b!3957325 (= e!2449994 e!2449986)))

(declare-fun res!1601349 () Bool)

(assert (=> b!3957325 (=> res!1601349 e!2449986)))

(assert (=> b!3957325 (= res!1601349 (not (= (_1!23837 lt!1383658) lt!1383644)))))

(declare-fun head!8407 (List!42245) Token!12338)

(assert (=> b!3957325 (= lt!1383644 (head!8407 prefixTokens!80))))

(declare-fun get!13890 (Option!9020) tuple2!41406)

(assert (=> b!3957325 (= lt!1383658 (get!13890 lt!1383640))))

(declare-fun b!3957326 () Bool)

(declare-fun res!1601347 () Bool)

(assert (=> b!3957326 (=> res!1601347 e!2449990)))

(assert (=> b!3957326 (= res!1601347 (not (= lt!1383642 (++!10958 lt!1383650 (_2!23837 lt!1383658)))))))

(assert (= (and start!372180 res!1601338) b!3957322))

(assert (= (and b!3957322 res!1601356) b!3957295))

(assert (= (and b!3957295 res!1601352) b!3957303))

(assert (= (and b!3957303 res!1601346) b!3957307))

(assert (= (and b!3957307 res!1601342) b!3957309))

(assert (= (and b!3957309 res!1601360) b!3957316))

(assert (= (and b!3957316 res!1601359) b!3957305))

(assert (= (and b!3957305 res!1601341) b!3957306))

(assert (= (and b!3957306 res!1601353) b!3957315))

(assert (= (and b!3957306 (not res!1601358)) b!3957290))

(assert (= (and b!3957290 (not res!1601355)) b!3957308))

(assert (= (and b!3957308 (not res!1601345)) b!3957323))

(assert (= (and b!3957323 (not res!1601351)) b!3957299))

(assert (= (and b!3957299 (not res!1601348)) b!3957312))

(assert (= (and b!3957312 (not res!1601344)) b!3957313))

(assert (= (and b!3957313 (not res!1601339)) b!3957325))

(assert (= (and b!3957325 (not res!1601349)) b!3957320))

(assert (= (and b!3957320 (not res!1601343)) b!3957318))

(assert (= (and b!3957318 (not res!1601357)) b!3957292))

(assert (= (and b!3957292 (not res!1601354)) b!3957326))

(assert (= (and b!3957326 (not res!1601347)) b!3957302))

(assert (= (and b!3957302 (not res!1601350)) b!3957298))

(assert (= (and b!3957298 (not res!1601337)) b!3957294))

(assert (= (and b!3957294 (not res!1601340)) b!3957317))

(assert (= (and start!372180 ((_ is Cons!42120) suffixResult!91)) b!3957319))

(assert (= (and start!372180 ((_ is Cons!42120) suffix!1176)) b!3957324))

(assert (= b!3957293 b!3957291))

(assert (= b!3957297 b!3957293))

(assert (= (and start!372180 ((_ is Cons!42122) rules!2768)) b!3957297))

(assert (= b!3957310 b!3957301))

(assert (= b!3957321 b!3957310))

(assert (= b!3957314 b!3957321))

(assert (= (and start!372180 ((_ is Cons!42121) prefixTokens!80)) b!3957314))

(assert (= b!3957304 b!3957296))

(assert (= b!3957311 b!3957304))

(assert (= b!3957289 b!3957311))

(assert (= (and start!372180 ((_ is Cons!42121) suffixTokens!72)) b!3957289))

(assert (= (and start!372180 ((_ is Cons!42120) prefix!426)) b!3957300))

(declare-fun m!4526167 () Bool)

(assert (=> b!3957299 m!4526167))

(declare-fun m!4526169 () Bool)

(assert (=> b!3957321 m!4526169))

(declare-fun m!4526171 () Bool)

(assert (=> b!3957310 m!4526171))

(declare-fun m!4526173 () Bool)

(assert (=> b!3957310 m!4526173))

(declare-fun m!4526175 () Bool)

(assert (=> b!3957311 m!4526175))

(declare-fun m!4526177 () Bool)

(assert (=> b!3957326 m!4526177))

(declare-fun m!4526179 () Bool)

(assert (=> b!3957314 m!4526179))

(declare-fun m!4526181 () Bool)

(assert (=> b!3957315 m!4526181))

(declare-fun m!4526183 () Bool)

(assert (=> b!3957305 m!4526183))

(declare-fun m!4526185 () Bool)

(assert (=> b!3957316 m!4526185))

(declare-fun m!4526187 () Bool)

(assert (=> b!3957325 m!4526187))

(declare-fun m!4526189 () Bool)

(assert (=> b!3957325 m!4526189))

(declare-fun m!4526191 () Bool)

(assert (=> b!3957306 m!4526191))

(declare-fun m!4526193 () Bool)

(assert (=> b!3957306 m!4526193))

(declare-fun m!4526195 () Bool)

(assert (=> b!3957306 m!4526195))

(declare-fun m!4526197 () Bool)

(assert (=> b!3957306 m!4526197))

(declare-fun m!4526199 () Bool)

(assert (=> b!3957306 m!4526199))

(declare-fun m!4526201 () Bool)

(assert (=> b!3957306 m!4526201))

(declare-fun m!4526203 () Bool)

(assert (=> b!3957306 m!4526203))

(declare-fun m!4526205 () Bool)

(assert (=> b!3957306 m!4526205))

(declare-fun m!4526207 () Bool)

(assert (=> b!3957306 m!4526207))

(assert (=> b!3957306 m!4526203))

(declare-fun m!4526209 () Bool)

(assert (=> b!3957306 m!4526209))

(declare-fun m!4526211 () Bool)

(assert (=> b!3957306 m!4526211))

(assert (=> b!3957306 m!4526199))

(declare-fun m!4526213 () Bool)

(assert (=> b!3957306 m!4526213))

(declare-fun m!4526215 () Bool)

(assert (=> b!3957306 m!4526215))

(declare-fun m!4526217 () Bool)

(assert (=> b!3957306 m!4526217))

(declare-fun m!4526219 () Bool)

(assert (=> b!3957320 m!4526219))

(declare-fun m!4526221 () Bool)

(assert (=> b!3957294 m!4526221))

(declare-fun m!4526223 () Bool)

(assert (=> b!3957295 m!4526223))

(declare-fun m!4526225 () Bool)

(assert (=> b!3957322 m!4526225))

(declare-fun m!4526227 () Bool)

(assert (=> b!3957304 m!4526227))

(declare-fun m!4526229 () Bool)

(assert (=> b!3957304 m!4526229))

(declare-fun m!4526231 () Bool)

(assert (=> b!3957318 m!4526231))

(assert (=> b!3957318 m!4526231))

(declare-fun m!4526233 () Bool)

(assert (=> b!3957318 m!4526233))

(declare-fun m!4526235 () Bool)

(assert (=> b!3957323 m!4526235))

(declare-fun m!4526237 () Bool)

(assert (=> b!3957323 m!4526237))

(declare-fun m!4526239 () Bool)

(assert (=> b!3957312 m!4526239))

(declare-fun m!4526241 () Bool)

(assert (=> b!3957289 m!4526241))

(declare-fun m!4526243 () Bool)

(assert (=> b!3957290 m!4526243))

(declare-fun m!4526245 () Bool)

(assert (=> b!3957293 m!4526245))

(declare-fun m!4526247 () Bool)

(assert (=> b!3957293 m!4526247))

(declare-fun m!4526249 () Bool)

(assert (=> b!3957302 m!4526249))

(declare-fun m!4526251 () Bool)

(assert (=> b!3957309 m!4526251))

(declare-fun m!4526253 () Bool)

(assert (=> b!3957309 m!4526253))

(declare-fun m!4526255 () Bool)

(assert (=> b!3957309 m!4526255))

(declare-fun m!4526257 () Bool)

(assert (=> b!3957307 m!4526257))

(declare-fun m!4526259 () Bool)

(assert (=> b!3957313 m!4526259))

(declare-fun m!4526261 () Bool)

(assert (=> b!3957313 m!4526261))

(declare-fun m!4526263 () Bool)

(assert (=> b!3957313 m!4526263))

(declare-fun m!4526265 () Bool)

(assert (=> b!3957303 m!4526265))

(declare-fun m!4526267 () Bool)

(assert (=> b!3957298 m!4526267))

(check-sat (not b!3957312) b_and!303681 (not b!3957307) b_and!303685 (not b!3957295) (not b_next!109763) (not b!3957324) (not b!3957304) (not b!3957310) (not b!3957306) (not b!3957311) (not b!3957300) (not b!3957323) (not b!3957299) (not b!3957315) b_and!303687 (not b!3957303) (not b!3957325) (not b!3957321) b_and!303679 (not b!3957322) (not b!3957305) (not b_next!109761) (not b!3957316) (not b!3957290) (not b!3957298) (not b!3957320) (not b!3957319) b_and!303689 (not b!3957313) (not b!3957309) (not b!3957297) (not b!3957289) b_and!303683 (not b!3957293) (not b_next!109757) (not b!3957326) (not b_next!109767) (not b!3957314) (not b_next!109759) (not b_next!109765) tp_is_empty!19981 (not b!3957302) (not b!3957294) (not b!3957318))
(check-sat b_and!303687 b_and!303681 b_and!303689 b_and!303685 (not b_next!109763) b_and!303683 (not b_next!109757) (not b_next!109767) b_and!303679 (not b_next!109761) (not b_next!109759) (not b_next!109765))
