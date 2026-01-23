; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!365288 () Bool)

(assert start!365288)

(declare-fun b!3900404 () Bool)

(declare-fun b_free!105625 () Bool)

(declare-fun b_next!106329 () Bool)

(assert (=> b!3900404 (= b_free!105625 (not b_next!106329))))

(declare-fun tp!1186843 () Bool)

(declare-fun b_and!294939 () Bool)

(assert (=> b!3900404 (= tp!1186843 b_and!294939)))

(declare-fun b_free!105627 () Bool)

(declare-fun b_next!106331 () Bool)

(assert (=> b!3900404 (= b_free!105627 (not b_next!106331))))

(declare-fun tp!1186837 () Bool)

(declare-fun b_and!294941 () Bool)

(assert (=> b!3900404 (= tp!1186837 b_and!294941)))

(declare-fun b!3900407 () Bool)

(declare-fun b_free!105629 () Bool)

(declare-fun b_next!106333 () Bool)

(assert (=> b!3900407 (= b_free!105629 (not b_next!106333))))

(declare-fun tp!1186842 () Bool)

(declare-fun b_and!294943 () Bool)

(assert (=> b!3900407 (= tp!1186842 b_and!294943)))

(declare-fun b_free!105631 () Bool)

(declare-fun b_next!106335 () Bool)

(assert (=> b!3900407 (= b_free!105631 (not b_next!106335))))

(declare-fun tp!1186838 () Bool)

(declare-fun b_and!294945 () Bool)

(assert (=> b!3900407 (= tp!1186838 b_and!294945)))

(declare-fun b!3900436 () Bool)

(declare-fun b_free!105633 () Bool)

(declare-fun b_next!106337 () Bool)

(assert (=> b!3900436 (= b_free!105633 (not b_next!106337))))

(declare-fun tp!1186834 () Bool)

(declare-fun b_and!294947 () Bool)

(assert (=> b!3900436 (= tp!1186834 b_and!294947)))

(declare-fun b_free!105635 () Bool)

(declare-fun b_next!106339 () Bool)

(assert (=> b!3900436 (= b_free!105635 (not b_next!106339))))

(declare-fun tp!1186827 () Bool)

(declare-fun b_and!294949 () Bool)

(assert (=> b!3900436 (= tp!1186827 b_and!294949)))

(declare-fun b!3900409 () Bool)

(declare-fun b_free!105637 () Bool)

(declare-fun b_next!106341 () Bool)

(assert (=> b!3900409 (= b_free!105637 (not b_next!106341))))

(declare-fun tp!1186828 () Bool)

(declare-fun b_and!294951 () Bool)

(assert (=> b!3900409 (= tp!1186828 b_and!294951)))

(declare-fun b_free!105639 () Bool)

(declare-fun b_next!106343 () Bool)

(assert (=> b!3900409 (= b_free!105639 (not b_next!106343))))

(declare-fun tp!1186833 () Bool)

(declare-fun b_and!294953 () Bool)

(assert (=> b!3900409 (= tp!1186833 b_and!294953)))

(declare-fun b!3900399 () Bool)

(declare-fun res!1577860 () Bool)

(declare-fun e!2411590 () Bool)

(assert (=> b!3900399 (=> (not res!1577860) (not e!2411590))))

(declare-datatypes ((LexerInterface!6023 0))(
  ( (LexerInterfaceExt!6020 (__x!25545 Int)) (Lexer!6021) )
))
(declare-fun thiss!20629 () LexerInterface!6023)

(declare-datatypes ((String!47037 0))(
  ( (String!47038 (value!203977 String)) )
))
(declare-datatypes ((C!22864 0))(
  ( (C!22865 (val!13526 Int)) )
))
(declare-datatypes ((List!41490 0))(
  ( (Nil!41366) (Cons!41366 (h!46786 C!22864) (t!319919 List!41490)) )
))
(declare-datatypes ((IArray!25295 0))(
  ( (IArray!25296 (innerList!12705 List!41490)) )
))
(declare-datatypes ((Conc!12645 0))(
  ( (Node!12645 (left!31700 Conc!12645) (right!32030 Conc!12645) (csize!25520 Int) (cheight!12856 Int)) (Leaf!19569 (xs!15951 IArray!25295) (csize!25521 Int)) (Empty!12645) )
))
(declare-datatypes ((BalanceConc!24884 0))(
  ( (BalanceConc!24885 (c!678054 Conc!12645)) )
))
(declare-datatypes ((List!41491 0))(
  ( (Nil!41367) (Cons!41367 (h!46787 (_ BitVec 16)) (t!319920 List!41491)) )
))
(declare-datatypes ((TokenValue!6664 0))(
  ( (FloatLiteralValue!13328 (text!47093 List!41491)) (TokenValueExt!6663 (__x!25546 Int)) (Broken!33320 (value!203978 List!41491)) (Object!6787) (End!6664) (Def!6664) (Underscore!6664) (Match!6664) (Else!6664) (Error!6664) (Case!6664) (If!6664) (Extends!6664) (Abstract!6664) (Class!6664) (Val!6664) (DelimiterValue!13328 (del!6724 List!41491)) (KeywordValue!6670 (value!203979 List!41491)) (CommentValue!13328 (value!203980 List!41491)) (WhitespaceValue!13328 (value!203981 List!41491)) (IndentationValue!6664 (value!203982 List!41491)) (String!47039) (Int32!6664) (Broken!33321 (value!203983 List!41491)) (Boolean!6665) (Unit!59489) (OperatorValue!6667 (op!6724 List!41491)) (IdentifierValue!13328 (value!203984 List!41491)) (IdentifierValue!13329 (value!203985 List!41491)) (WhitespaceValue!13329 (value!203986 List!41491)) (True!13328) (False!13328) (Broken!33322 (value!203987 List!41491)) (Broken!33323 (value!203988 List!41491)) (True!13329) (RightBrace!6664) (RightBracket!6664) (Colon!6664) (Null!6664) (Comma!6664) (LeftBracket!6664) (False!13329) (LeftBrace!6664) (ImaginaryLiteralValue!6664 (text!47094 List!41491)) (StringLiteralValue!19992 (value!203989 List!41491)) (EOFValue!6664 (value!203990 List!41491)) (IdentValue!6664 (value!203991 List!41491)) (DelimiterValue!13329 (value!203992 List!41491)) (DedentValue!6664 (value!203993 List!41491)) (NewLineValue!6664 (value!203994 List!41491)) (IntegerValue!19992 (value!203995 (_ BitVec 32)) (text!47095 List!41491)) (IntegerValue!19993 (value!203996 Int) (text!47096 List!41491)) (Times!6664) (Or!6664) (Equal!6664) (Minus!6664) (Broken!33324 (value!203997 List!41491)) (And!6664) (Div!6664) (LessEqual!6664) (Mod!6664) (Concat!18003) (Not!6664) (Plus!6664) (SpaceValue!6664 (value!203998 List!41491)) (IntegerValue!19994 (value!203999 Int) (text!47097 List!41491)) (StringLiteralValue!19993 (text!47098 List!41491)) (FloatLiteralValue!13329 (text!47099 List!41491)) (BytesLiteralValue!6664 (value!204000 List!41491)) (CommentValue!13329 (value!204001 List!41491)) (StringLiteralValue!19994 (value!204002 List!41491)) (ErrorTokenValue!6664 (msg!6725 List!41491)) )
))
(declare-datatypes ((Regex!11339 0))(
  ( (ElementMatch!11339 (c!678055 C!22864)) (Concat!18004 (regOne!23190 Regex!11339) (regTwo!23190 Regex!11339)) (EmptyExpr!11339) (Star!11339 (reg!11668 Regex!11339)) (EmptyLang!11339) (Union!11339 (regOne!23191 Regex!11339) (regTwo!23191 Regex!11339)) )
))
(declare-datatypes ((TokenValueInjection!12756 0))(
  ( (TokenValueInjection!12757 (toValue!8874 Int) (toChars!8733 Int)) )
))
(declare-datatypes ((Rule!12668 0))(
  ( (Rule!12669 (regex!6434 Regex!11339) (tag!7294 String!47037) (isSeparator!6434 Bool) (transformation!6434 TokenValueInjection!12756)) )
))
(declare-datatypes ((List!41492 0))(
  ( (Nil!41368) (Cons!41368 (h!46788 Rule!12668) (t!319921 List!41492)) )
))
(declare-fun rules!2768 () List!41492)

(declare-fun rulesInvariant!5366 (LexerInterface!6023 List!41492) Bool)

(assert (=> b!3900399 (= res!1577860 (rulesInvariant!5366 thiss!20629 rules!2768))))

(declare-fun b!3900400 () Bool)

(declare-fun res!1577853 () Bool)

(assert (=> b!3900400 (=> (not res!1577853) (not e!2411590))))

(declare-fun isEmpty!24588 (List!41492) Bool)

(assert (=> b!3900400 (= res!1577853 (not (isEmpty!24588 rules!2768)))))

(declare-fun b!3900401 () Bool)

(declare-fun e!2411576 () Bool)

(declare-fun e!2411597 () Bool)

(assert (=> b!3900401 (= e!2411576 e!2411597)))

(declare-fun res!1577865 () Bool)

(assert (=> b!3900401 (=> res!1577865 e!2411597)))

(declare-datatypes ((Token!12006 0))(
  ( (Token!12007 (value!204003 TokenValue!6664) (rule!9340 Rule!12668) (size!31059 Int) (originalCharacters!7034 List!41490)) )
))
(declare-datatypes ((List!41493 0))(
  ( (Nil!41369) (Cons!41369 (h!46789 Token!12006) (t!319922 List!41493)) )
))
(declare-fun lt!1358779 () List!41493)

(declare-datatypes ((tuple2!40606 0))(
  ( (tuple2!40607 (_1!23437 List!41493) (_2!23437 List!41490)) )
))
(declare-fun lt!1358781 () tuple2!40606)

(declare-fun prefixTokens!80 () List!41493)

(declare-fun lt!1358777 () List!41493)

(declare-fun lt!1358787 () List!41493)

(declare-fun lt!1358789 () List!41490)

(declare-fun prefix!426 () List!41490)

(assert (=> b!3900401 (= res!1577865 (or (not (= lt!1358777 (_1!23437 lt!1358781))) (not (= lt!1358777 lt!1358779)) (not (= prefixTokens!80 lt!1358787)) (not (= prefix!426 lt!1358789))))))

(assert (=> b!3900401 (= lt!1358789 prefix!426)))

(declare-datatypes ((tuple2!40608 0))(
  ( (tuple2!40609 (_1!23438 Token!12006) (_2!23438 List!41490)) )
))
(declare-datatypes ((Option!8854 0))(
  ( (None!8853) (Some!8853 (v!39167 tuple2!40608)) )
))
(declare-fun lt!1358776 () Option!8854)

(declare-datatypes ((Unit!59490 0))(
  ( (Unit!59491) )
))
(declare-fun lt!1358775 () Unit!59490)

(declare-fun suffix!1176 () List!41490)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!506 (List!41490 List!41490 List!41490 List!41490) Unit!59490)

(assert (=> b!3900401 (= lt!1358775 (lemmaConcatSameAndSameSizesThenSameLists!506 lt!1358789 (_2!23438 (v!39167 lt!1358776)) prefix!426 suffix!1176))))

(declare-fun b!3900402 () Bool)

(declare-fun e!2411589 () Option!8854)

(declare-fun call!283844 () Option!8854)

(assert (=> b!3900402 (= e!2411589 call!283844)))

(declare-fun b!3900403 () Bool)

(declare-fun e!2411582 () Bool)

(declare-fun e!2411570 () Bool)

(declare-fun tp!1186830 () Bool)

(assert (=> b!3900403 (= e!2411582 (and e!2411570 tp!1186830))))

(declare-fun e!2411595 () Bool)

(assert (=> b!3900404 (= e!2411595 (and tp!1186843 tp!1186837))))

(declare-fun e!2411579 () Bool)

(declare-fun tp!1186832 () Bool)

(declare-fun suffixTokens!72 () List!41493)

(declare-fun b!3900405 () Bool)

(declare-fun e!2411564 () Bool)

(declare-fun inv!21 (TokenValue!6664) Bool)

(assert (=> b!3900405 (= e!2411579 (and (inv!21 (value!204003 (h!46789 suffixTokens!72))) e!2411564 tp!1186832))))

(declare-fun e!2411567 () Bool)

(declare-fun tp!1186825 () Bool)

(declare-fun b!3900406 () Bool)

(declare-fun e!2411600 () Bool)

(declare-fun inv!55534 (String!47037) Bool)

(declare-fun inv!55537 (TokenValueInjection!12756) Bool)

(assert (=> b!3900406 (= e!2411600 (and tp!1186825 (inv!55534 (tag!7294 (rule!9340 (h!46789 prefixTokens!80)))) (inv!55537 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) e!2411567))))

(assert (=> b!3900407 (= e!2411567 (and tp!1186842 tp!1186838))))

(declare-fun b!3900408 () Bool)

(declare-fun e!2411577 () Bool)

(declare-fun tp_is_empty!19649 () Bool)

(declare-fun tp!1186841 () Bool)

(assert (=> b!3900408 (= e!2411577 (and tp_is_empty!19649 tp!1186841))))

(declare-fun e!2411591 () Bool)

(assert (=> b!3900409 (= e!2411591 (and tp!1186828 tp!1186833))))

(declare-fun b!3900410 () Bool)

(declare-fun res!1577866 () Bool)

(assert (=> b!3900410 (=> res!1577866 e!2411597)))

(declare-fun isPrefix!3529 (List!41490 List!41490) Bool)

(assert (=> b!3900410 (= res!1577866 (not (isPrefix!3529 Nil!41366 suffix!1176)))))

(declare-fun b!3900411 () Bool)

(declare-fun e!2411583 () Bool)

(declare-fun size!31060 (List!41490) Int)

(assert (=> b!3900411 (= e!2411583 (= (size!31059 (_1!23438 (v!39167 lt!1358776))) (size!31060 (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776))))))))

(declare-fun tp!1186823 () Bool)

(declare-fun e!2411585 () Bool)

(declare-fun b!3900412 () Bool)

(declare-fun err!4385 () Option!8854)

(assert (=> b!3900412 (= e!2411585 (and tp!1186823 (inv!55534 (tag!7294 (rule!9340 (_1!23438 (v!39167 err!4385))))) (inv!55537 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) e!2411591))))

(declare-fun b!3900414 () Bool)

(declare-fun e!2411587 () Bool)

(declare-fun tp!1186844 () Bool)

(assert (=> b!3900414 (= e!2411587 (and tp_is_empty!19649 tp!1186844))))

(declare-fun b!3900415 () Bool)

(declare-fun e!2411581 () Bool)

(declare-fun lt!1358791 () Option!8854)

(declare-fun get!13677 (Option!8854) tuple2!40608)

(assert (=> b!3900415 (= e!2411581 (= (_1!23438 (get!13677 lt!1358791)) (_1!23438 (v!39167 lt!1358776))))))

(declare-fun e!2411566 () Bool)

(declare-fun b!3900416 () Bool)

(declare-fun tp!1186836 () Bool)

(declare-fun e!2411599 () Bool)

(declare-fun inv!55538 (Token!12006) Bool)

(assert (=> b!3900416 (= e!2411566 (and (inv!55538 (_1!23438 (v!39167 err!4385))) e!2411599 tp!1186836))))

(declare-fun b!3900417 () Bool)

(declare-fun e!2411594 () Bool)

(declare-fun e!2411592 () Bool)

(assert (=> b!3900417 (= e!2411594 e!2411592)))

(declare-fun res!1577859 () Bool)

(assert (=> b!3900417 (=> (not res!1577859) (not e!2411592))))

(get-info :version)

(assert (=> b!3900417 (= res!1577859 ((_ is Some!8853) lt!1358776))))

(declare-fun lt!1358783 () List!41490)

(declare-fun maxPrefix!3327 (LexerInterface!6023 List!41492 List!41490) Option!8854)

(assert (=> b!3900417 (= lt!1358776 (maxPrefix!3327 thiss!20629 rules!2768 lt!1358783))))

(declare-fun b!3900418 () Bool)

(declare-fun e!2411573 () Bool)

(assert (=> b!3900418 (= e!2411573 (= lt!1358776 e!2411589))))

(declare-fun c!678053 () Bool)

(assert (=> b!3900418 (= c!678053 (and ((_ is Cons!41368) rules!2768) ((_ is Nil!41368) (t!319921 rules!2768))))))

(declare-fun e!2411586 () Bool)

(declare-fun b!3900419 () Bool)

(declare-fun tp!1186829 () Bool)

(declare-fun e!2411596 () Bool)

(assert (=> b!3900419 (= e!2411596 (and (inv!55538 (h!46789 prefixTokens!80)) e!2411586 tp!1186829))))

(declare-fun b!3900420 () Bool)

(assert (=> b!3900420 (= e!2411597 e!2411581)))

(declare-fun res!1577862 () Bool)

(assert (=> b!3900420 (=> res!1577862 e!2411581)))

(declare-fun isDefined!6905 (Option!8854) Bool)

(assert (=> b!3900420 (= res!1577862 (not (isDefined!6905 lt!1358791)))))

(assert (=> b!3900420 (= lt!1358791 (maxPrefix!3327 thiss!20629 rules!2768 prefix!426))))

(declare-fun ++!10625 (List!41490 List!41490) List!41490)

(assert (=> b!3900420 (= (maxPrefix!3327 thiss!20629 rules!2768 (++!10625 prefix!426 Nil!41366)) (Some!8853 (tuple2!40609 (_1!23438 (v!39167 lt!1358776)) Nil!41366)))))

(declare-fun lt!1358786 () Unit!59490)

(declare-fun lemmaMaxPrefixThenWithShorterSuffix!36 (LexerInterface!6023 List!41492 List!41490 List!41490 List!41490 Token!12006 List!41490 List!41490) Unit!59490)

(assert (=> b!3900420 (= lt!1358786 (lemmaMaxPrefixThenWithShorterSuffix!36 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41366 (_1!23438 (v!39167 lt!1358776)) suffix!1176 Nil!41366))))

(declare-fun b!3900421 () Bool)

(assert (=> b!3900421 true))

(assert (=> b!3900421 e!2411566))

(declare-fun e!2411584 () Option!8854)

(assert (=> b!3900421 (= e!2411584 err!4385)))

(declare-fun b!3900422 () Bool)

(declare-fun e!2411580 () Bool)

(assert (=> b!3900422 (= e!2411580 e!2411576)))

(declare-fun res!1577867 () Bool)

(assert (=> b!3900422 (=> res!1577867 e!2411576)))

(assert (=> b!3900422 (= res!1577867 (not (= lt!1358776 (Some!8853 (tuple2!40609 (_1!23438 (v!39167 lt!1358776)) (_2!23438 (v!39167 lt!1358776)))))))))

(assert (=> b!3900422 e!2411573))

(declare-fun res!1577864 () Bool)

(assert (=> b!3900422 (=> (not res!1577864) (not e!2411573))))

(assert (=> b!3900422 (= res!1577864 (isPrefix!3529 lt!1358783 lt!1358783))))

(declare-fun lt!1358780 () Unit!59490)

(declare-fun lemmaIsPrefixRefl!2236 (List!41490 List!41490) Unit!59490)

(assert (=> b!3900422 (= lt!1358780 (lemmaIsPrefixRefl!2236 lt!1358783 lt!1358783))))

(declare-fun lt!1358773 () tuple2!40606)

(assert (=> b!3900422 (= lt!1358781 (tuple2!40607 (Cons!41369 (_1!23438 (v!39167 lt!1358776)) (_1!23437 lt!1358773)) (_2!23437 lt!1358773)))))

(declare-fun b!3900423 () Bool)

(declare-fun tp!1186835 () Bool)

(assert (=> b!3900423 (= e!2411570 (and tp!1186835 (inv!55534 (tag!7294 (h!46788 rules!2768))) (inv!55537 (transformation!6434 (h!46788 rules!2768))) e!2411595))))

(declare-fun b!3900424 () Bool)

(declare-fun tp!1186840 () Bool)

(assert (=> b!3900424 (= e!2411599 (and (inv!21 (value!204003 (_1!23438 (v!39167 err!4385)))) e!2411585 tp!1186840))))

(declare-fun b!3900425 () Bool)

(declare-fun e!2411572 () Bool)

(declare-fun tp!1186826 () Bool)

(assert (=> b!3900425 (= e!2411564 (and tp!1186826 (inv!55534 (tag!7294 (rule!9340 (h!46789 suffixTokens!72)))) (inv!55537 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) e!2411572))))

(declare-fun b!3900426 () Bool)

(declare-fun lt!1358793 () Option!8854)

(assert (=> b!3900426 (= lt!1358793 (maxPrefix!3327 thiss!20629 (t!319921 rules!2768) lt!1358783))))

(declare-fun lt!1358784 () Option!8854)

(assert (=> b!3900426 (= lt!1358784 call!283844)))

(assert (=> b!3900426 (= e!2411584 (ite (and ((_ is None!8853) lt!1358784) ((_ is None!8853) lt!1358793)) None!8853 (ite ((_ is None!8853) lt!1358793) lt!1358784 (ite ((_ is None!8853) lt!1358784) lt!1358793 (ite (>= (size!31059 (_1!23438 (v!39167 lt!1358784))) (size!31059 (_1!23438 (v!39167 lt!1358793)))) (Some!8853 (v!39167 lt!1358784)) lt!1358793)))))))

(declare-fun b!3900427 () Bool)

(declare-fun e!2411598 () Bool)

(declare-fun tp!1186824 () Bool)

(assert (=> b!3900427 (= e!2411598 (and tp_is_empty!19649 tp!1186824))))

(declare-fun b!3900413 () Bool)

(declare-fun res!1577858 () Bool)

(assert (=> b!3900413 (=> (not res!1577858) (not e!2411590))))

(declare-fun isEmpty!24589 (List!41493) Bool)

(assert (=> b!3900413 (= res!1577858 (not (isEmpty!24589 prefixTokens!80)))))

(declare-fun res!1577868 () Bool)

(assert (=> start!365288 (=> (not res!1577868) (not e!2411590))))

(assert (=> start!365288 (= res!1577868 ((_ is Lexer!6021) thiss!20629))))

(assert (=> start!365288 e!2411590))

(assert (=> start!365288 e!2411598))

(assert (=> start!365288 true))

(assert (=> start!365288 e!2411587))

(assert (=> start!365288 e!2411582))

(assert (=> start!365288 e!2411596))

(declare-fun e!2411578 () Bool)

(assert (=> start!365288 e!2411578))

(assert (=> start!365288 e!2411577))

(declare-fun b!3900428 () Bool)

(declare-fun tp!1186839 () Bool)

(assert (=> b!3900428 (= e!2411586 (and (inv!21 (value!204003 (h!46789 prefixTokens!80))) e!2411600 tp!1186839))))

(declare-fun b!3900429 () Bool)

(declare-fun res!1577861 () Bool)

(assert (=> b!3900429 (=> (not res!1577861) (not e!2411594))))

(declare-fun suffixResult!91 () List!41490)

(declare-fun lexList!1791 (LexerInterface!6023 List!41492 List!41490) tuple2!40606)

(assert (=> b!3900429 (= res!1577861 (= (lexList!1791 thiss!20629 rules!2768 suffix!1176) (tuple2!40607 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3900430 () Bool)

(assert (=> b!3900430 (= e!2411589 e!2411584)))

(declare-fun c!678052 () Bool)

(assert (=> b!3900430 (= c!678052 ((_ is Cons!41368) rules!2768))))

(declare-fun b!3900431 () Bool)

(assert (=> b!3900431 (= e!2411590 e!2411594)))

(declare-fun res!1577854 () Bool)

(assert (=> b!3900431 (=> (not res!1577854) (not e!2411594))))

(assert (=> b!3900431 (= res!1577854 (= lt!1358781 (tuple2!40607 lt!1358777 suffixResult!91)))))

(assert (=> b!3900431 (= lt!1358781 (lexList!1791 thiss!20629 rules!2768 lt!1358783))))

(declare-fun ++!10626 (List!41493 List!41493) List!41493)

(assert (=> b!3900431 (= lt!1358777 (++!10626 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3900431 (= lt!1358783 (++!10625 prefix!426 suffix!1176))))

(declare-fun b!3900432 () Bool)

(declare-fun e!2411593 () Bool)

(assert (=> b!3900432 (= e!2411593 e!2411580)))

(declare-fun res!1577855 () Bool)

(assert (=> b!3900432 (=> res!1577855 e!2411580)))

(assert (=> b!3900432 (= res!1577855 (or (not (= lt!1358781 (tuple2!40607 lt!1358779 (_2!23437 lt!1358773)))) (not (= lt!1358773 (tuple2!40607 (_1!23437 lt!1358773) (_2!23437 lt!1358773)))) (not (= (_2!23438 (v!39167 lt!1358776)) suffix!1176))))))

(assert (=> b!3900432 (= lt!1358779 (++!10626 lt!1358787 (_1!23437 lt!1358773)))))

(assert (=> b!3900432 (= lt!1358787 (Cons!41369 (_1!23438 (v!39167 lt!1358776)) Nil!41369))))

(declare-fun bm!283839 () Bool)

(declare-fun maxPrefixOneRule!2403 (LexerInterface!6023 Rule!12668 List!41490) Option!8854)

(assert (=> bm!283839 (= call!283844 (maxPrefixOneRule!2403 thiss!20629 (h!46788 rules!2768) lt!1358783))))

(declare-fun b!3900433 () Bool)

(declare-fun tp!1186831 () Bool)

(assert (=> b!3900433 (= e!2411578 (and (inv!55538 (h!46789 suffixTokens!72)) e!2411579 tp!1186831))))

(declare-fun b!3900434 () Bool)

(assert (=> b!3900434 (= e!2411592 (not e!2411593))))

(declare-fun res!1577857 () Bool)

(assert (=> b!3900434 (=> res!1577857 e!2411593)))

(declare-fun lt!1358774 () List!41490)

(assert (=> b!3900434 (= res!1577857 (not (= lt!1358774 lt!1358783)))))

(assert (=> b!3900434 (= lt!1358773 (lexList!1791 thiss!20629 rules!2768 (_2!23438 (v!39167 lt!1358776))))))

(declare-fun lt!1358788 () Int)

(declare-fun lt!1358782 () TokenValue!6664)

(declare-fun lt!1358778 () List!41490)

(assert (=> b!3900434 (and (= (size!31059 (_1!23438 (v!39167 lt!1358776))) lt!1358788) (= (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776))) lt!1358789) (= (tuple2!40609 (_1!23438 (v!39167 lt!1358776)) (_2!23438 (v!39167 lt!1358776))) (tuple2!40609 (Token!12007 lt!1358782 (rule!9340 (_1!23438 (v!39167 lt!1358776))) lt!1358788 lt!1358789) lt!1358778)))))

(assert (=> b!3900434 (= lt!1358788 (size!31060 lt!1358789))))

(assert (=> b!3900434 e!2411583))

(declare-fun res!1577856 () Bool)

(assert (=> b!3900434 (=> (not res!1577856) (not e!2411583))))

(assert (=> b!3900434 (= res!1577856 (= (value!204003 (_1!23438 (v!39167 lt!1358776))) lt!1358782))))

(declare-fun apply!9673 (TokenValueInjection!12756 BalanceConc!24884) TokenValue!6664)

(declare-fun seqFromList!4701 (List!41490) BalanceConc!24884)

(assert (=> b!3900434 (= lt!1358782 (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))) (seqFromList!4701 lt!1358789)))))

(assert (=> b!3900434 (= (_2!23438 (v!39167 lt!1358776)) lt!1358778)))

(declare-fun lt!1358790 () Unit!59490)

(declare-fun lemmaSamePrefixThenSameSuffix!1750 (List!41490 List!41490 List!41490 List!41490 List!41490) Unit!59490)

(assert (=> b!3900434 (= lt!1358790 (lemmaSamePrefixThenSameSuffix!1750 lt!1358789 (_2!23438 (v!39167 lt!1358776)) lt!1358789 lt!1358778 lt!1358783))))

(declare-fun getSuffix!1984 (List!41490 List!41490) List!41490)

(assert (=> b!3900434 (= lt!1358778 (getSuffix!1984 lt!1358783 lt!1358789))))

(assert (=> b!3900434 (isPrefix!3529 lt!1358789 lt!1358774)))

(assert (=> b!3900434 (= lt!1358774 (++!10625 lt!1358789 (_2!23438 (v!39167 lt!1358776))))))

(declare-fun lt!1358792 () Unit!59490)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2392 (List!41490 List!41490) Unit!59490)

(assert (=> b!3900434 (= lt!1358792 (lemmaConcatTwoListThenFirstIsPrefix!2392 lt!1358789 (_2!23438 (v!39167 lt!1358776))))))

(declare-fun list!15376 (BalanceConc!24884) List!41490)

(declare-fun charsOf!4258 (Token!12006) BalanceConc!24884)

(assert (=> b!3900434 (= lt!1358789 (list!15376 (charsOf!4258 (_1!23438 (v!39167 lt!1358776)))))))

(declare-fun ruleValid!2382 (LexerInterface!6023 Rule!12668) Bool)

(assert (=> b!3900434 (ruleValid!2382 thiss!20629 (rule!9340 (_1!23438 (v!39167 lt!1358776))))))

(declare-fun lt!1358772 () Unit!59490)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1462 (LexerInterface!6023 Rule!12668 List!41492) Unit!59490)

(assert (=> b!3900434 (= lt!1358772 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1462 thiss!20629 (rule!9340 (_1!23438 (v!39167 lt!1358776))) rules!2768))))

(declare-fun lt!1358785 () Unit!59490)

(declare-fun lemmaCharactersSize!1091 (Token!12006) Unit!59490)

(assert (=> b!3900434 (= lt!1358785 (lemmaCharactersSize!1091 (_1!23438 (v!39167 lt!1358776))))))

(declare-fun b!3900435 () Bool)

(declare-fun res!1577863 () Bool)

(assert (=> b!3900435 (=> (not res!1577863) (not e!2411590))))

(declare-fun isEmpty!24590 (List!41490) Bool)

(assert (=> b!3900435 (= res!1577863 (not (isEmpty!24590 prefix!426)))))

(assert (=> b!3900436 (= e!2411572 (and tp!1186834 tp!1186827))))

(assert (= (and start!365288 res!1577868) b!3900400))

(assert (= (and b!3900400 res!1577853) b!3900399))

(assert (= (and b!3900399 res!1577860) b!3900413))

(assert (= (and b!3900413 res!1577858) b!3900435))

(assert (= (and b!3900435 res!1577863) b!3900431))

(assert (= (and b!3900431 res!1577854) b!3900429))

(assert (= (and b!3900429 res!1577861) b!3900417))

(assert (= (and b!3900417 res!1577859) b!3900434))

(assert (= (and b!3900434 res!1577856) b!3900411))

(assert (= (and b!3900434 (not res!1577857)) b!3900432))

(assert (= (and b!3900432 (not res!1577855)) b!3900422))

(assert (= (and b!3900422 res!1577864) b!3900418))

(assert (= (and b!3900418 c!678053) b!3900402))

(assert (= (and b!3900418 (not c!678053)) b!3900430))

(assert (= (and b!3900430 c!678052) b!3900426))

(assert (= (and b!3900430 (not c!678052)) b!3900421))

(assert (= b!3900412 b!3900409))

(assert (= b!3900424 b!3900412))

(assert (= b!3900416 b!3900424))

(assert (= (and b!3900421 ((_ is Some!8853) err!4385)) b!3900416))

(assert (= (or b!3900402 b!3900426) bm!283839))

(assert (= (and b!3900422 (not res!1577867)) b!3900401))

(assert (= (and b!3900401 (not res!1577865)) b!3900410))

(assert (= (and b!3900410 (not res!1577866)) b!3900420))

(assert (= (and b!3900420 (not res!1577862)) b!3900415))

(assert (= (and start!365288 ((_ is Cons!41366) suffixResult!91)) b!3900427))

(assert (= (and start!365288 ((_ is Cons!41366) suffix!1176)) b!3900414))

(assert (= b!3900423 b!3900404))

(assert (= b!3900403 b!3900423))

(assert (= (and start!365288 ((_ is Cons!41368) rules!2768)) b!3900403))

(assert (= b!3900406 b!3900407))

(assert (= b!3900428 b!3900406))

(assert (= b!3900419 b!3900428))

(assert (= (and start!365288 ((_ is Cons!41369) prefixTokens!80)) b!3900419))

(assert (= b!3900425 b!3900436))

(assert (= b!3900405 b!3900425))

(assert (= b!3900433 b!3900405))

(assert (= (and start!365288 ((_ is Cons!41369) suffixTokens!72)) b!3900433))

(assert (= (and start!365288 ((_ is Cons!41366) prefix!426)) b!3900408))

(declare-fun m!4460359 () Bool)

(assert (=> b!3900401 m!4460359))

(declare-fun m!4460361 () Bool)

(assert (=> b!3900425 m!4460361))

(declare-fun m!4460363 () Bool)

(assert (=> b!3900425 m!4460363))

(declare-fun m!4460365 () Bool)

(assert (=> b!3900428 m!4460365))

(declare-fun m!4460367 () Bool)

(assert (=> b!3900419 m!4460367))

(declare-fun m!4460369 () Bool)

(assert (=> b!3900423 m!4460369))

(declare-fun m!4460371 () Bool)

(assert (=> b!3900423 m!4460371))

(declare-fun m!4460373 () Bool)

(assert (=> b!3900424 m!4460373))

(declare-fun m!4460375 () Bool)

(assert (=> b!3900405 m!4460375))

(declare-fun m!4460377 () Bool)

(assert (=> b!3900413 m!4460377))

(declare-fun m!4460379 () Bool)

(assert (=> b!3900426 m!4460379))

(declare-fun m!4460381 () Bool)

(assert (=> b!3900429 m!4460381))

(declare-fun m!4460383 () Bool)

(assert (=> b!3900433 m!4460383))

(declare-fun m!4460385 () Bool)

(assert (=> b!3900400 m!4460385))

(declare-fun m!4460387 () Bool)

(assert (=> b!3900412 m!4460387))

(declare-fun m!4460389 () Bool)

(assert (=> b!3900412 m!4460389))

(declare-fun m!4460391 () Bool)

(assert (=> b!3900420 m!4460391))

(declare-fun m!4460393 () Bool)

(assert (=> b!3900420 m!4460393))

(declare-fun m!4460395 () Bool)

(assert (=> b!3900420 m!4460395))

(declare-fun m!4460397 () Bool)

(assert (=> b!3900420 m!4460397))

(assert (=> b!3900420 m!4460393))

(declare-fun m!4460399 () Bool)

(assert (=> b!3900420 m!4460399))

(declare-fun m!4460401 () Bool)

(assert (=> b!3900399 m!4460401))

(declare-fun m!4460403 () Bool)

(assert (=> b!3900417 m!4460403))

(declare-fun m!4460405 () Bool)

(assert (=> b!3900415 m!4460405))

(declare-fun m!4460407 () Bool)

(assert (=> b!3900410 m!4460407))

(declare-fun m!4460409 () Bool)

(assert (=> b!3900416 m!4460409))

(declare-fun m!4460411 () Bool)

(assert (=> bm!283839 m!4460411))

(declare-fun m!4460413 () Bool)

(assert (=> b!3900406 m!4460413))

(declare-fun m!4460415 () Bool)

(assert (=> b!3900406 m!4460415))

(declare-fun m!4460417 () Bool)

(assert (=> b!3900435 m!4460417))

(declare-fun m!4460419 () Bool)

(assert (=> b!3900422 m!4460419))

(declare-fun m!4460421 () Bool)

(assert (=> b!3900422 m!4460421))

(declare-fun m!4460423 () Bool)

(assert (=> b!3900432 m!4460423))

(declare-fun m!4460425 () Bool)

(assert (=> b!3900434 m!4460425))

(declare-fun m!4460427 () Bool)

(assert (=> b!3900434 m!4460427))

(declare-fun m!4460429 () Bool)

(assert (=> b!3900434 m!4460429))

(declare-fun m!4460431 () Bool)

(assert (=> b!3900434 m!4460431))

(declare-fun m!4460433 () Bool)

(assert (=> b!3900434 m!4460433))

(declare-fun m!4460435 () Bool)

(assert (=> b!3900434 m!4460435))

(declare-fun m!4460437 () Bool)

(assert (=> b!3900434 m!4460437))

(assert (=> b!3900434 m!4460437))

(declare-fun m!4460439 () Bool)

(assert (=> b!3900434 m!4460439))

(declare-fun m!4460441 () Bool)

(assert (=> b!3900434 m!4460441))

(declare-fun m!4460443 () Bool)

(assert (=> b!3900434 m!4460443))

(declare-fun m!4460445 () Bool)

(assert (=> b!3900434 m!4460445))

(declare-fun m!4460447 () Bool)

(assert (=> b!3900434 m!4460447))

(assert (=> b!3900434 m!4460443))

(declare-fun m!4460449 () Bool)

(assert (=> b!3900434 m!4460449))

(declare-fun m!4460451 () Bool)

(assert (=> b!3900434 m!4460451))

(declare-fun m!4460453 () Bool)

(assert (=> b!3900431 m!4460453))

(declare-fun m!4460455 () Bool)

(assert (=> b!3900431 m!4460455))

(declare-fun m!4460457 () Bool)

(assert (=> b!3900431 m!4460457))

(declare-fun m!4460459 () Bool)

(assert (=> b!3900411 m!4460459))

(check-sat (not b!3900429) (not b!3900422) (not b!3900432) (not b_next!106343) (not b!3900411) (not b!3900426) b_and!294949 (not b_next!106329) (not b!3900427) (not b!3900406) (not b!3900415) b_and!294941 (not b_next!106333) (not b_next!106341) (not b!3900434) (not b!3900428) (not b!3900420) (not b_next!106337) b_and!294945 (not bm!283839) b_and!294953 (not b!3900433) (not b!3900417) b_and!294943 (not b!3900408) (not b!3900435) tp_is_empty!19649 (not b!3900416) (not b!3900400) (not b_next!106331) (not b!3900425) (not b!3900399) (not b!3900423) (not b!3900414) (not b!3900413) (not b!3900419) b_and!294951 b_and!294947 (not b!3900405) (not b!3900431) (not b!3900403) (not b_next!106339) (not b!3900401) (not b!3900410) (not b!3900412) b_and!294939 (not b_next!106335) (not b!3900424))
(check-sat (not b_next!106341) (not b_next!106337) (not b_next!106343) b_and!294943 (not b_next!106331) b_and!294949 (not b_next!106329) (not b_next!106339) b_and!294939 (not b_next!106335) b_and!294941 (not b_next!106333) b_and!294945 b_and!294953 b_and!294951 b_and!294947)
(get-model)

(declare-fun b!3900519 () Bool)

(declare-fun e!2411639 () Option!8854)

(declare-fun call!283851 () Option!8854)

(assert (=> b!3900519 (= e!2411639 call!283851)))

(declare-fun b!3900520 () Bool)

(declare-fun res!1577932 () Bool)

(declare-fun e!2411637 () Bool)

(assert (=> b!3900520 (=> (not res!1577932) (not e!2411637))))

(declare-fun lt!1358832 () Option!8854)

(declare-fun matchR!5434 (Regex!11339 List!41490) Bool)

(assert (=> b!3900520 (= res!1577932 (matchR!5434 (regex!6434 (rule!9340 (_1!23438 (get!13677 lt!1358832)))) (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358832))))))))

(declare-fun d!1156024 () Bool)

(declare-fun e!2411638 () Bool)

(assert (=> d!1156024 e!2411638))

(declare-fun res!1577937 () Bool)

(assert (=> d!1156024 (=> res!1577937 e!2411638)))

(declare-fun isEmpty!24592 (Option!8854) Bool)

(assert (=> d!1156024 (= res!1577937 (isEmpty!24592 lt!1358832))))

(assert (=> d!1156024 (= lt!1358832 e!2411639)))

(declare-fun c!678066 () Bool)

(assert (=> d!1156024 (= c!678066 (and ((_ is Cons!41368) (t!319921 rules!2768)) ((_ is Nil!41368) (t!319921 (t!319921 rules!2768)))))))

(declare-fun lt!1358831 () Unit!59490)

(declare-fun lt!1358830 () Unit!59490)

(assert (=> d!1156024 (= lt!1358831 lt!1358830)))

(assert (=> d!1156024 (isPrefix!3529 lt!1358783 lt!1358783)))

(assert (=> d!1156024 (= lt!1358830 (lemmaIsPrefixRefl!2236 lt!1358783 lt!1358783))))

(declare-fun rulesValidInductive!2306 (LexerInterface!6023 List!41492) Bool)

(assert (=> d!1156024 (rulesValidInductive!2306 thiss!20629 (t!319921 rules!2768))))

(assert (=> d!1156024 (= (maxPrefix!3327 thiss!20629 (t!319921 rules!2768) lt!1358783) lt!1358832)))

(declare-fun b!3900521 () Bool)

(assert (=> b!3900521 (= e!2411638 e!2411637)))

(declare-fun res!1577934 () Bool)

(assert (=> b!3900521 (=> (not res!1577934) (not e!2411637))))

(assert (=> b!3900521 (= res!1577934 (isDefined!6905 lt!1358832))))

(declare-fun b!3900522 () Bool)

(declare-fun res!1577936 () Bool)

(assert (=> b!3900522 (=> (not res!1577936) (not e!2411637))))

(assert (=> b!3900522 (= res!1577936 (= (value!204003 (_1!23438 (get!13677 lt!1358832))) (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (get!13677 lt!1358832)))) (seqFromList!4701 (originalCharacters!7034 (_1!23438 (get!13677 lt!1358832)))))))))

(declare-fun b!3900523 () Bool)

(declare-fun lt!1358834 () Option!8854)

(declare-fun lt!1358833 () Option!8854)

(assert (=> b!3900523 (= e!2411639 (ite (and ((_ is None!8853) lt!1358834) ((_ is None!8853) lt!1358833)) None!8853 (ite ((_ is None!8853) lt!1358833) lt!1358834 (ite ((_ is None!8853) lt!1358834) lt!1358833 (ite (>= (size!31059 (_1!23438 (v!39167 lt!1358834))) (size!31059 (_1!23438 (v!39167 lt!1358833)))) lt!1358834 lt!1358833)))))))

(assert (=> b!3900523 (= lt!1358834 call!283851)))

(assert (=> b!3900523 (= lt!1358833 (maxPrefix!3327 thiss!20629 (t!319921 (t!319921 rules!2768)) lt!1358783))))

(declare-fun b!3900524 () Bool)

(declare-fun res!1577933 () Bool)

(assert (=> b!3900524 (=> (not res!1577933) (not e!2411637))))

(assert (=> b!3900524 (= res!1577933 (< (size!31060 (_2!23438 (get!13677 lt!1358832))) (size!31060 lt!1358783)))))

(declare-fun bm!283846 () Bool)

(assert (=> bm!283846 (= call!283851 (maxPrefixOneRule!2403 thiss!20629 (h!46788 (t!319921 rules!2768)) lt!1358783))))

(declare-fun b!3900525 () Bool)

(declare-fun contains!8315 (List!41492 Rule!12668) Bool)

(assert (=> b!3900525 (= e!2411637 (contains!8315 (t!319921 rules!2768) (rule!9340 (_1!23438 (get!13677 lt!1358832)))))))

(declare-fun b!3900526 () Bool)

(declare-fun res!1577935 () Bool)

(assert (=> b!3900526 (=> (not res!1577935) (not e!2411637))))

(assert (=> b!3900526 (= res!1577935 (= (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358832)))) (originalCharacters!7034 (_1!23438 (get!13677 lt!1358832)))))))

(declare-fun b!3900527 () Bool)

(declare-fun res!1577938 () Bool)

(assert (=> b!3900527 (=> (not res!1577938) (not e!2411637))))

(assert (=> b!3900527 (= res!1577938 (= (++!10625 (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358832)))) (_2!23438 (get!13677 lt!1358832))) lt!1358783))))

(assert (= (and d!1156024 c!678066) b!3900519))

(assert (= (and d!1156024 (not c!678066)) b!3900523))

(assert (= (or b!3900519 b!3900523) bm!283846))

(assert (= (and d!1156024 (not res!1577937)) b!3900521))

(assert (= (and b!3900521 res!1577934) b!3900526))

(assert (= (and b!3900526 res!1577935) b!3900524))

(assert (= (and b!3900524 res!1577933) b!3900527))

(assert (= (and b!3900527 res!1577938) b!3900522))

(assert (= (and b!3900522 res!1577936) b!3900520))

(assert (= (and b!3900520 res!1577932) b!3900525))

(declare-fun m!4460555 () Bool)

(assert (=> b!3900526 m!4460555))

(declare-fun m!4460557 () Bool)

(assert (=> b!3900526 m!4460557))

(assert (=> b!3900526 m!4460557))

(declare-fun m!4460559 () Bool)

(assert (=> b!3900526 m!4460559))

(assert (=> b!3900522 m!4460555))

(declare-fun m!4460561 () Bool)

(assert (=> b!3900522 m!4460561))

(assert (=> b!3900522 m!4460561))

(declare-fun m!4460563 () Bool)

(assert (=> b!3900522 m!4460563))

(declare-fun m!4460565 () Bool)

(assert (=> b!3900523 m!4460565))

(assert (=> b!3900520 m!4460555))

(assert (=> b!3900520 m!4460557))

(assert (=> b!3900520 m!4460557))

(assert (=> b!3900520 m!4460559))

(assert (=> b!3900520 m!4460559))

(declare-fun m!4460567 () Bool)

(assert (=> b!3900520 m!4460567))

(assert (=> b!3900524 m!4460555))

(declare-fun m!4460569 () Bool)

(assert (=> b!3900524 m!4460569))

(declare-fun m!4460571 () Bool)

(assert (=> b!3900524 m!4460571))

(assert (=> b!3900527 m!4460555))

(assert (=> b!3900527 m!4460557))

(assert (=> b!3900527 m!4460557))

(assert (=> b!3900527 m!4460559))

(assert (=> b!3900527 m!4460559))

(declare-fun m!4460573 () Bool)

(assert (=> b!3900527 m!4460573))

(declare-fun m!4460575 () Bool)

(assert (=> d!1156024 m!4460575))

(assert (=> d!1156024 m!4460419))

(assert (=> d!1156024 m!4460421))

(declare-fun m!4460577 () Bool)

(assert (=> d!1156024 m!4460577))

(declare-fun m!4460579 () Bool)

(assert (=> bm!283846 m!4460579))

(declare-fun m!4460581 () Bool)

(assert (=> b!3900521 m!4460581))

(assert (=> b!3900525 m!4460555))

(declare-fun m!4460583 () Bool)

(assert (=> b!3900525 m!4460583))

(assert (=> b!3900426 d!1156024))

(declare-fun d!1156050 () Bool)

(assert (=> d!1156050 (= (inv!55534 (tag!7294 (rule!9340 (h!46789 suffixTokens!72)))) (= (mod (str.len (value!203977 (tag!7294 (rule!9340 (h!46789 suffixTokens!72))))) 2) 0))))

(assert (=> b!3900425 d!1156050))

(declare-fun d!1156054 () Bool)

(declare-fun res!1577954 () Bool)

(declare-fun e!2411657 () Bool)

(assert (=> d!1156054 (=> (not res!1577954) (not e!2411657))))

(declare-fun semiInverseModEq!2757 (Int Int) Bool)

(assert (=> d!1156054 (= res!1577954 (semiInverseModEq!2757 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toValue!8874 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))))))

(assert (=> d!1156054 (= (inv!55537 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) e!2411657)))

(declare-fun b!3900559 () Bool)

(declare-fun equivClasses!2656 (Int Int) Bool)

(assert (=> b!3900559 (= e!2411657 (equivClasses!2656 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toValue!8874 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))))))

(assert (= (and d!1156054 res!1577954) b!3900559))

(declare-fun m!4460613 () Bool)

(assert (=> d!1156054 m!4460613))

(declare-fun m!4460615 () Bool)

(assert (=> b!3900559 m!4460615))

(assert (=> b!3900425 d!1156054))

(declare-fun d!1156058 () Bool)

(assert (=> d!1156058 (= (inv!55534 (tag!7294 (rule!9340 (h!46789 prefixTokens!80)))) (= (mod (str.len (value!203977 (tag!7294 (rule!9340 (h!46789 prefixTokens!80))))) 2) 0))))

(assert (=> b!3900406 d!1156058))

(declare-fun d!1156060 () Bool)

(declare-fun res!1577957 () Bool)

(declare-fun e!2411664 () Bool)

(assert (=> d!1156060 (=> (not res!1577957) (not e!2411664))))

(assert (=> d!1156060 (= res!1577957 (semiInverseModEq!2757 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toValue!8874 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))))))

(assert (=> d!1156060 (= (inv!55537 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) e!2411664)))

(declare-fun b!3900570 () Bool)

(assert (=> b!3900570 (= e!2411664 (equivClasses!2656 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toValue!8874 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))))))

(assert (= (and d!1156060 res!1577957) b!3900570))

(declare-fun m!4460617 () Bool)

(assert (=> d!1156060 m!4460617))

(declare-fun m!4460619 () Bool)

(assert (=> b!3900570 m!4460619))

(assert (=> b!3900406 d!1156060))

(declare-fun b!3900595 () Bool)

(declare-fun res!1577964 () Bool)

(declare-fun e!2411680 () Bool)

(assert (=> b!3900595 (=> res!1577964 e!2411680)))

(assert (=> b!3900595 (= res!1577964 (not ((_ is IntegerValue!19994) (value!204003 (h!46789 suffixTokens!72)))))))

(declare-fun e!2411682 () Bool)

(assert (=> b!3900595 (= e!2411682 e!2411680)))

(declare-fun d!1156062 () Bool)

(declare-fun c!678089 () Bool)

(assert (=> d!1156062 (= c!678089 ((_ is IntegerValue!19992) (value!204003 (h!46789 suffixTokens!72))))))

(declare-fun e!2411681 () Bool)

(assert (=> d!1156062 (= (inv!21 (value!204003 (h!46789 suffixTokens!72))) e!2411681)))

(declare-fun b!3900596 () Bool)

(declare-fun inv!16 (TokenValue!6664) Bool)

(assert (=> b!3900596 (= e!2411681 (inv!16 (value!204003 (h!46789 suffixTokens!72))))))

(declare-fun b!3900597 () Bool)

(declare-fun inv!17 (TokenValue!6664) Bool)

(assert (=> b!3900597 (= e!2411682 (inv!17 (value!204003 (h!46789 suffixTokens!72))))))

(declare-fun b!3900598 () Bool)

(declare-fun inv!15 (TokenValue!6664) Bool)

(assert (=> b!3900598 (= e!2411680 (inv!15 (value!204003 (h!46789 suffixTokens!72))))))

(declare-fun b!3900599 () Bool)

(assert (=> b!3900599 (= e!2411681 e!2411682)))

(declare-fun c!678088 () Bool)

(assert (=> b!3900599 (= c!678088 ((_ is IntegerValue!19993) (value!204003 (h!46789 suffixTokens!72))))))

(assert (= (and d!1156062 c!678089) b!3900596))

(assert (= (and d!1156062 (not c!678089)) b!3900599))

(assert (= (and b!3900599 c!678088) b!3900597))

(assert (= (and b!3900599 (not c!678088)) b!3900595))

(assert (= (and b!3900595 (not res!1577964)) b!3900598))

(declare-fun m!4460639 () Bool)

(assert (=> b!3900596 m!4460639))

(declare-fun m!4460641 () Bool)

(assert (=> b!3900597 m!4460641))

(declare-fun m!4460643 () Bool)

(assert (=> b!3900598 m!4460643))

(assert (=> b!3900405 d!1156062))

(declare-fun d!1156074 () Bool)

(assert (=> d!1156074 (= (inv!55534 (tag!7294 (h!46788 rules!2768))) (= (mod (str.len (value!203977 (tag!7294 (h!46788 rules!2768)))) 2) 0))))

(assert (=> b!3900423 d!1156074))

(declare-fun d!1156076 () Bool)

(declare-fun res!1577966 () Bool)

(declare-fun e!2411686 () Bool)

(assert (=> d!1156076 (=> (not res!1577966) (not e!2411686))))

(assert (=> d!1156076 (= res!1577966 (semiInverseModEq!2757 (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toValue!8874 (transformation!6434 (h!46788 rules!2768)))))))

(assert (=> d!1156076 (= (inv!55537 (transformation!6434 (h!46788 rules!2768))) e!2411686)))

(declare-fun b!3900605 () Bool)

(assert (=> b!3900605 (= e!2411686 (equivClasses!2656 (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toValue!8874 (transformation!6434 (h!46788 rules!2768)))))))

(assert (= (and d!1156076 res!1577966) b!3900605))

(declare-fun m!4460645 () Bool)

(assert (=> d!1156076 m!4460645))

(declare-fun m!4460647 () Bool)

(assert (=> b!3900605 m!4460647))

(assert (=> b!3900423 d!1156076))

(declare-fun d!1156078 () Bool)

(assert (=> d!1156078 (and (= lt!1358789 prefix!426) (= (_2!23438 (v!39167 lt!1358776)) suffix!1176))))

(declare-fun lt!1358856 () Unit!59490)

(declare-fun choose!23070 (List!41490 List!41490 List!41490 List!41490) Unit!59490)

(assert (=> d!1156078 (= lt!1358856 (choose!23070 lt!1358789 (_2!23438 (v!39167 lt!1358776)) prefix!426 suffix!1176))))

(assert (=> d!1156078 (= (++!10625 lt!1358789 (_2!23438 (v!39167 lt!1358776))) (++!10625 prefix!426 suffix!1176))))

(assert (=> d!1156078 (= (lemmaConcatSameAndSameSizesThenSameLists!506 lt!1358789 (_2!23438 (v!39167 lt!1358776)) prefix!426 suffix!1176) lt!1358856)))

(declare-fun bs!584939 () Bool)

(assert (= bs!584939 d!1156078))

(declare-fun m!4460669 () Bool)

(assert (=> bs!584939 m!4460669))

(assert (=> bs!584939 m!4460427))

(assert (=> bs!584939 m!4460457))

(assert (=> b!3900401 d!1156078))

(declare-fun b!3900610 () Bool)

(declare-fun res!1577969 () Bool)

(declare-fun e!2411689 () Bool)

(assert (=> b!3900610 (=> res!1577969 e!2411689)))

(assert (=> b!3900610 (= res!1577969 (not ((_ is IntegerValue!19994) (value!204003 (_1!23438 (v!39167 err!4385))))))))

(declare-fun e!2411691 () Bool)

(assert (=> b!3900610 (= e!2411691 e!2411689)))

(declare-fun d!1156086 () Bool)

(declare-fun c!678094 () Bool)

(assert (=> d!1156086 (= c!678094 ((_ is IntegerValue!19992) (value!204003 (_1!23438 (v!39167 err!4385)))))))

(declare-fun e!2411690 () Bool)

(assert (=> d!1156086 (= (inv!21 (value!204003 (_1!23438 (v!39167 err!4385)))) e!2411690)))

(declare-fun b!3900611 () Bool)

(assert (=> b!3900611 (= e!2411690 (inv!16 (value!204003 (_1!23438 (v!39167 err!4385)))))))

(declare-fun b!3900612 () Bool)

(assert (=> b!3900612 (= e!2411691 (inv!17 (value!204003 (_1!23438 (v!39167 err!4385)))))))

(declare-fun b!3900613 () Bool)

(assert (=> b!3900613 (= e!2411689 (inv!15 (value!204003 (_1!23438 (v!39167 err!4385)))))))

(declare-fun b!3900614 () Bool)

(assert (=> b!3900614 (= e!2411690 e!2411691)))

(declare-fun c!678093 () Bool)

(assert (=> b!3900614 (= c!678093 ((_ is IntegerValue!19993) (value!204003 (_1!23438 (v!39167 err!4385)))))))

(assert (= (and d!1156086 c!678094) b!3900611))

(assert (= (and d!1156086 (not c!678094)) b!3900614))

(assert (= (and b!3900614 c!678093) b!3900612))

(assert (= (and b!3900614 (not c!678093)) b!3900610))

(assert (= (and b!3900610 (not res!1577969)) b!3900613))

(declare-fun m!4460671 () Bool)

(assert (=> b!3900611 m!4460671))

(declare-fun m!4460673 () Bool)

(assert (=> b!3900612 m!4460673))

(declare-fun m!4460675 () Bool)

(assert (=> b!3900613 m!4460675))

(assert (=> b!3900424 d!1156086))

(declare-fun b!3900630 () Bool)

(declare-fun e!2411702 () Bool)

(declare-fun e!2411704 () Bool)

(assert (=> b!3900630 (= e!2411702 e!2411704)))

(declare-fun res!1577979 () Bool)

(assert (=> b!3900630 (=> (not res!1577979) (not e!2411704))))

(assert (=> b!3900630 (= res!1577979 (not ((_ is Nil!41366) suffix!1176)))))

(declare-fun b!3900631 () Bool)

(declare-fun res!1577980 () Bool)

(assert (=> b!3900631 (=> (not res!1577980) (not e!2411704))))

(declare-fun head!8247 (List!41490) C!22864)

(assert (=> b!3900631 (= res!1577980 (= (head!8247 Nil!41366) (head!8247 suffix!1176)))))

(declare-fun d!1156088 () Bool)

(declare-fun e!2411703 () Bool)

(assert (=> d!1156088 e!2411703))

(declare-fun res!1577978 () Bool)

(assert (=> d!1156088 (=> res!1577978 e!2411703)))

(declare-fun lt!1358868 () Bool)

(assert (=> d!1156088 (= res!1577978 (not lt!1358868))))

(assert (=> d!1156088 (= lt!1358868 e!2411702)))

(declare-fun res!1577981 () Bool)

(assert (=> d!1156088 (=> res!1577981 e!2411702)))

(assert (=> d!1156088 (= res!1577981 ((_ is Nil!41366) Nil!41366))))

(assert (=> d!1156088 (= (isPrefix!3529 Nil!41366 suffix!1176) lt!1358868)))

(declare-fun b!3900632 () Bool)

(declare-fun tail!5964 (List!41490) List!41490)

(assert (=> b!3900632 (= e!2411704 (isPrefix!3529 (tail!5964 Nil!41366) (tail!5964 suffix!1176)))))

(declare-fun b!3900633 () Bool)

(assert (=> b!3900633 (= e!2411703 (>= (size!31060 suffix!1176) (size!31060 Nil!41366)))))

(assert (= (and d!1156088 (not res!1577981)) b!3900630))

(assert (= (and b!3900630 res!1577979) b!3900631))

(assert (= (and b!3900631 res!1577980) b!3900632))

(assert (= (and d!1156088 (not res!1577978)) b!3900633))

(declare-fun m!4460697 () Bool)

(assert (=> b!3900631 m!4460697))

(declare-fun m!4460699 () Bool)

(assert (=> b!3900631 m!4460699))

(declare-fun m!4460701 () Bool)

(assert (=> b!3900632 m!4460701))

(declare-fun m!4460703 () Bool)

(assert (=> b!3900632 m!4460703))

(assert (=> b!3900632 m!4460701))

(assert (=> b!3900632 m!4460703))

(declare-fun m!4460705 () Bool)

(assert (=> b!3900632 m!4460705))

(declare-fun m!4460707 () Bool)

(assert (=> b!3900633 m!4460707))

(declare-fun m!4460709 () Bool)

(assert (=> b!3900633 m!4460709))

(assert (=> b!3900410 d!1156088))

(declare-fun b!3900702 () Bool)

(declare-fun e!2411746 () tuple2!40606)

(declare-fun lt!1358899 () Option!8854)

(declare-fun lt!1358901 () tuple2!40606)

(assert (=> b!3900702 (= e!2411746 (tuple2!40607 (Cons!41369 (_1!23438 (v!39167 lt!1358899)) (_1!23437 lt!1358901)) (_2!23437 lt!1358901)))))

(assert (=> b!3900702 (= lt!1358901 (lexList!1791 thiss!20629 rules!2768 (_2!23438 (v!39167 lt!1358899))))))

(declare-fun b!3900703 () Bool)

(declare-fun e!2411745 () Bool)

(declare-fun lt!1358900 () tuple2!40606)

(assert (=> b!3900703 (= e!2411745 (not (isEmpty!24589 (_1!23437 lt!1358900))))))

(declare-fun b!3900704 () Bool)

(assert (=> b!3900704 (= e!2411746 (tuple2!40607 Nil!41369 lt!1358783))))

(declare-fun b!3900705 () Bool)

(declare-fun e!2411747 () Bool)

(assert (=> b!3900705 (= e!2411747 (= (_2!23437 lt!1358900) lt!1358783))))

(declare-fun d!1156098 () Bool)

(assert (=> d!1156098 e!2411747))

(declare-fun c!678110 () Bool)

(declare-fun size!31062 (List!41493) Int)

(assert (=> d!1156098 (= c!678110 (> (size!31062 (_1!23437 lt!1358900)) 0))))

(assert (=> d!1156098 (= lt!1358900 e!2411746)))

(declare-fun c!678109 () Bool)

(assert (=> d!1156098 (= c!678109 ((_ is Some!8853) lt!1358899))))

(assert (=> d!1156098 (= lt!1358899 (maxPrefix!3327 thiss!20629 rules!2768 lt!1358783))))

(assert (=> d!1156098 (= (lexList!1791 thiss!20629 rules!2768 lt!1358783) lt!1358900)))

(declare-fun b!3900706 () Bool)

(assert (=> b!3900706 (= e!2411747 e!2411745)))

(declare-fun res!1578025 () Bool)

(assert (=> b!3900706 (= res!1578025 (< (size!31060 (_2!23437 lt!1358900)) (size!31060 lt!1358783)))))

(assert (=> b!3900706 (=> (not res!1578025) (not e!2411745))))

(assert (= (and d!1156098 c!678109) b!3900702))

(assert (= (and d!1156098 (not c!678109)) b!3900704))

(assert (= (and d!1156098 c!678110) b!3900706))

(assert (= (and d!1156098 (not c!678110)) b!3900705))

(assert (= (and b!3900706 res!1578025) b!3900703))

(declare-fun m!4460841 () Bool)

(assert (=> b!3900702 m!4460841))

(declare-fun m!4460843 () Bool)

(assert (=> b!3900703 m!4460843))

(declare-fun m!4460845 () Bool)

(assert (=> d!1156098 m!4460845))

(assert (=> d!1156098 m!4460403))

(declare-fun m!4460847 () Bool)

(assert (=> b!3900706 m!4460847))

(assert (=> b!3900706 m!4460571))

(assert (=> b!3900431 d!1156098))

(declare-fun b!3900725 () Bool)

(declare-fun res!1578036 () Bool)

(declare-fun e!2411757 () Bool)

(assert (=> b!3900725 (=> (not res!1578036) (not e!2411757))))

(declare-fun lt!1358909 () List!41493)

(assert (=> b!3900725 (= res!1578036 (= (size!31062 lt!1358909) (+ (size!31062 prefixTokens!80) (size!31062 suffixTokens!72))))))

(declare-fun b!3900723 () Bool)

(declare-fun e!2411758 () List!41493)

(assert (=> b!3900723 (= e!2411758 suffixTokens!72)))

(declare-fun b!3900726 () Bool)

(assert (=> b!3900726 (= e!2411757 (or (not (= suffixTokens!72 Nil!41369)) (= lt!1358909 prefixTokens!80)))))

(declare-fun d!1156132 () Bool)

(assert (=> d!1156132 e!2411757))

(declare-fun res!1578037 () Bool)

(assert (=> d!1156132 (=> (not res!1578037) (not e!2411757))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6192 (List!41493) (InoxSet Token!12006))

(assert (=> d!1156132 (= res!1578037 (= (content!6192 lt!1358909) ((_ map or) (content!6192 prefixTokens!80) (content!6192 suffixTokens!72))))))

(assert (=> d!1156132 (= lt!1358909 e!2411758)))

(declare-fun c!678114 () Bool)

(assert (=> d!1156132 (= c!678114 ((_ is Nil!41369) prefixTokens!80))))

(assert (=> d!1156132 (= (++!10626 prefixTokens!80 suffixTokens!72) lt!1358909)))

(declare-fun b!3900724 () Bool)

(assert (=> b!3900724 (= e!2411758 (Cons!41369 (h!46789 prefixTokens!80) (++!10626 (t!319922 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1156132 c!678114) b!3900723))

(assert (= (and d!1156132 (not c!678114)) b!3900724))

(assert (= (and d!1156132 res!1578037) b!3900725))

(assert (= (and b!3900725 res!1578036) b!3900726))

(declare-fun m!4460871 () Bool)

(assert (=> b!3900725 m!4460871))

(declare-fun m!4460873 () Bool)

(assert (=> b!3900725 m!4460873))

(declare-fun m!4460875 () Bool)

(assert (=> b!3900725 m!4460875))

(declare-fun m!4460877 () Bool)

(assert (=> d!1156132 m!4460877))

(declare-fun m!4460879 () Bool)

(assert (=> d!1156132 m!4460879))

(declare-fun m!4460881 () Bool)

(assert (=> d!1156132 m!4460881))

(declare-fun m!4460883 () Bool)

(assert (=> b!3900724 m!4460883))

(assert (=> b!3900431 d!1156132))

(declare-fun lt!1358912 () List!41490)

(declare-fun e!2411763 () Bool)

(declare-fun b!3900738 () Bool)

(assert (=> b!3900738 (= e!2411763 (or (not (= suffix!1176 Nil!41366)) (= lt!1358912 prefix!426)))))

(declare-fun b!3900735 () Bool)

(declare-fun e!2411764 () List!41490)

(assert (=> b!3900735 (= e!2411764 suffix!1176)))

(declare-fun b!3900736 () Bool)

(assert (=> b!3900736 (= e!2411764 (Cons!41366 (h!46786 prefix!426) (++!10625 (t!319919 prefix!426) suffix!1176)))))

(declare-fun b!3900737 () Bool)

(declare-fun res!1578043 () Bool)

(assert (=> b!3900737 (=> (not res!1578043) (not e!2411763))))

(assert (=> b!3900737 (= res!1578043 (= (size!31060 lt!1358912) (+ (size!31060 prefix!426) (size!31060 suffix!1176))))))

(declare-fun d!1156140 () Bool)

(assert (=> d!1156140 e!2411763))

(declare-fun res!1578042 () Bool)

(assert (=> d!1156140 (=> (not res!1578042) (not e!2411763))))

(declare-fun content!6193 (List!41490) (InoxSet C!22864))

(assert (=> d!1156140 (= res!1578042 (= (content!6193 lt!1358912) ((_ map or) (content!6193 prefix!426) (content!6193 suffix!1176))))))

(assert (=> d!1156140 (= lt!1358912 e!2411764)))

(declare-fun c!678117 () Bool)

(assert (=> d!1156140 (= c!678117 ((_ is Nil!41366) prefix!426))))

(assert (=> d!1156140 (= (++!10625 prefix!426 suffix!1176) lt!1358912)))

(assert (= (and d!1156140 c!678117) b!3900735))

(assert (= (and d!1156140 (not c!678117)) b!3900736))

(assert (= (and d!1156140 res!1578042) b!3900737))

(assert (= (and b!3900737 res!1578043) b!3900738))

(declare-fun m!4460885 () Bool)

(assert (=> b!3900736 m!4460885))

(declare-fun m!4460887 () Bool)

(assert (=> b!3900737 m!4460887))

(declare-fun m!4460889 () Bool)

(assert (=> b!3900737 m!4460889))

(assert (=> b!3900737 m!4460707))

(declare-fun m!4460891 () Bool)

(assert (=> d!1156140 m!4460891))

(declare-fun m!4460893 () Bool)

(assert (=> d!1156140 m!4460893))

(declare-fun m!4460895 () Bool)

(assert (=> d!1156140 m!4460895))

(assert (=> b!3900431 d!1156140))

(declare-fun d!1156142 () Bool)

(declare-fun lt!1358915 () Int)

(assert (=> d!1156142 (>= lt!1358915 0)))

(declare-fun e!2411767 () Int)

(assert (=> d!1156142 (= lt!1358915 e!2411767)))

(declare-fun c!678120 () Bool)

(assert (=> d!1156142 (= c!678120 ((_ is Nil!41366) (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776)))))))

(assert (=> d!1156142 (= (size!31060 (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776)))) lt!1358915)))

(declare-fun b!3900743 () Bool)

(assert (=> b!3900743 (= e!2411767 0)))

(declare-fun b!3900744 () Bool)

(assert (=> b!3900744 (= e!2411767 (+ 1 (size!31060 (t!319919 (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776)))))))))

(assert (= (and d!1156142 c!678120) b!3900743))

(assert (= (and d!1156142 (not c!678120)) b!3900744))

(declare-fun m!4460897 () Bool)

(assert (=> b!3900744 m!4460897))

(assert (=> b!3900411 d!1156142))

(declare-fun b!3900747 () Bool)

(declare-fun res!1578044 () Bool)

(declare-fun e!2411768 () Bool)

(assert (=> b!3900747 (=> (not res!1578044) (not e!2411768))))

(declare-fun lt!1358916 () List!41493)

(assert (=> b!3900747 (= res!1578044 (= (size!31062 lt!1358916) (+ (size!31062 lt!1358787) (size!31062 (_1!23437 lt!1358773)))))))

(declare-fun b!3900745 () Bool)

(declare-fun e!2411769 () List!41493)

(assert (=> b!3900745 (= e!2411769 (_1!23437 lt!1358773))))

(declare-fun b!3900748 () Bool)

(assert (=> b!3900748 (= e!2411768 (or (not (= (_1!23437 lt!1358773) Nil!41369)) (= lt!1358916 lt!1358787)))))

(declare-fun d!1156144 () Bool)

(assert (=> d!1156144 e!2411768))

(declare-fun res!1578045 () Bool)

(assert (=> d!1156144 (=> (not res!1578045) (not e!2411768))))

(assert (=> d!1156144 (= res!1578045 (= (content!6192 lt!1358916) ((_ map or) (content!6192 lt!1358787) (content!6192 (_1!23437 lt!1358773)))))))

(assert (=> d!1156144 (= lt!1358916 e!2411769)))

(declare-fun c!678121 () Bool)

(assert (=> d!1156144 (= c!678121 ((_ is Nil!41369) lt!1358787))))

(assert (=> d!1156144 (= (++!10626 lt!1358787 (_1!23437 lt!1358773)) lt!1358916)))

(declare-fun b!3900746 () Bool)

(assert (=> b!3900746 (= e!2411769 (Cons!41369 (h!46789 lt!1358787) (++!10626 (t!319922 lt!1358787) (_1!23437 lt!1358773))))))

(assert (= (and d!1156144 c!678121) b!3900745))

(assert (= (and d!1156144 (not c!678121)) b!3900746))

(assert (= (and d!1156144 res!1578045) b!3900747))

(assert (= (and b!3900747 res!1578044) b!3900748))

(declare-fun m!4460899 () Bool)

(assert (=> b!3900747 m!4460899))

(declare-fun m!4460901 () Bool)

(assert (=> b!3900747 m!4460901))

(declare-fun m!4460903 () Bool)

(assert (=> b!3900747 m!4460903))

(declare-fun m!4460905 () Bool)

(assert (=> d!1156144 m!4460905))

(declare-fun m!4460907 () Bool)

(assert (=> d!1156144 m!4460907))

(declare-fun m!4460909 () Bool)

(assert (=> d!1156144 m!4460909))

(declare-fun m!4460911 () Bool)

(assert (=> b!3900746 m!4460911))

(assert (=> b!3900432 d!1156144))

(declare-fun b!3900749 () Bool)

(declare-fun res!1578046 () Bool)

(declare-fun e!2411770 () Bool)

(assert (=> b!3900749 (=> res!1578046 e!2411770)))

(assert (=> b!3900749 (= res!1578046 (not ((_ is IntegerValue!19994) (value!204003 (h!46789 prefixTokens!80)))))))

(declare-fun e!2411772 () Bool)

(assert (=> b!3900749 (= e!2411772 e!2411770)))

(declare-fun d!1156146 () Bool)

(declare-fun c!678123 () Bool)

(assert (=> d!1156146 (= c!678123 ((_ is IntegerValue!19992) (value!204003 (h!46789 prefixTokens!80))))))

(declare-fun e!2411771 () Bool)

(assert (=> d!1156146 (= (inv!21 (value!204003 (h!46789 prefixTokens!80))) e!2411771)))

(declare-fun b!3900750 () Bool)

(assert (=> b!3900750 (= e!2411771 (inv!16 (value!204003 (h!46789 prefixTokens!80))))))

(declare-fun b!3900751 () Bool)

(assert (=> b!3900751 (= e!2411772 (inv!17 (value!204003 (h!46789 prefixTokens!80))))))

(declare-fun b!3900752 () Bool)

(assert (=> b!3900752 (= e!2411770 (inv!15 (value!204003 (h!46789 prefixTokens!80))))))

(declare-fun b!3900753 () Bool)

(assert (=> b!3900753 (= e!2411771 e!2411772)))

(declare-fun c!678122 () Bool)

(assert (=> b!3900753 (= c!678122 ((_ is IntegerValue!19993) (value!204003 (h!46789 prefixTokens!80))))))

(assert (= (and d!1156146 c!678123) b!3900750))

(assert (= (and d!1156146 (not c!678123)) b!3900753))

(assert (= (and b!3900753 c!678122) b!3900751))

(assert (= (and b!3900753 (not c!678122)) b!3900749))

(assert (= (and b!3900749 (not res!1578046)) b!3900752))

(declare-fun m!4460913 () Bool)

(assert (=> b!3900750 m!4460913))

(declare-fun m!4460915 () Bool)

(assert (=> b!3900751 m!4460915))

(declare-fun m!4460917 () Bool)

(assert (=> b!3900752 m!4460917))

(assert (=> b!3900428 d!1156146))

(declare-fun b!3900754 () Bool)

(declare-fun e!2411774 () tuple2!40606)

(declare-fun lt!1358917 () Option!8854)

(declare-fun lt!1358919 () tuple2!40606)

(assert (=> b!3900754 (= e!2411774 (tuple2!40607 (Cons!41369 (_1!23438 (v!39167 lt!1358917)) (_1!23437 lt!1358919)) (_2!23437 lt!1358919)))))

(assert (=> b!3900754 (= lt!1358919 (lexList!1791 thiss!20629 rules!2768 (_2!23438 (v!39167 lt!1358917))))))

(declare-fun b!3900755 () Bool)

(declare-fun e!2411773 () Bool)

(declare-fun lt!1358918 () tuple2!40606)

(assert (=> b!3900755 (= e!2411773 (not (isEmpty!24589 (_1!23437 lt!1358918))))))

(declare-fun b!3900756 () Bool)

(assert (=> b!3900756 (= e!2411774 (tuple2!40607 Nil!41369 suffix!1176))))

(declare-fun b!3900757 () Bool)

(declare-fun e!2411775 () Bool)

(assert (=> b!3900757 (= e!2411775 (= (_2!23437 lt!1358918) suffix!1176))))

(declare-fun d!1156148 () Bool)

(assert (=> d!1156148 e!2411775))

(declare-fun c!678125 () Bool)

(assert (=> d!1156148 (= c!678125 (> (size!31062 (_1!23437 lt!1358918)) 0))))

(assert (=> d!1156148 (= lt!1358918 e!2411774)))

(declare-fun c!678124 () Bool)

(assert (=> d!1156148 (= c!678124 ((_ is Some!8853) lt!1358917))))

(assert (=> d!1156148 (= lt!1358917 (maxPrefix!3327 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1156148 (= (lexList!1791 thiss!20629 rules!2768 suffix!1176) lt!1358918)))

(declare-fun b!3900758 () Bool)

(assert (=> b!3900758 (= e!2411775 e!2411773)))

(declare-fun res!1578047 () Bool)

(assert (=> b!3900758 (= res!1578047 (< (size!31060 (_2!23437 lt!1358918)) (size!31060 suffix!1176)))))

(assert (=> b!3900758 (=> (not res!1578047) (not e!2411773))))

(assert (= (and d!1156148 c!678124) b!3900754))

(assert (= (and d!1156148 (not c!678124)) b!3900756))

(assert (= (and d!1156148 c!678125) b!3900758))

(assert (= (and d!1156148 (not c!678125)) b!3900757))

(assert (= (and b!3900758 res!1578047) b!3900755))

(declare-fun m!4460919 () Bool)

(assert (=> b!3900754 m!4460919))

(declare-fun m!4460921 () Bool)

(assert (=> b!3900755 m!4460921))

(declare-fun m!4460923 () Bool)

(assert (=> d!1156148 m!4460923))

(declare-fun m!4460925 () Bool)

(assert (=> d!1156148 m!4460925))

(declare-fun m!4460927 () Bool)

(assert (=> b!3900758 m!4460927))

(assert (=> b!3900758 m!4460707))

(assert (=> b!3900429 d!1156148))

(declare-fun d!1156150 () Bool)

(assert (=> d!1156150 (= (get!13677 lt!1358791) (v!39167 lt!1358791))))

(assert (=> b!3900415 d!1156150))

(declare-fun d!1156152 () Bool)

(assert (=> d!1156152 (= (isEmpty!24590 prefix!426) ((_ is Nil!41366) prefix!426))))

(assert (=> b!3900435 d!1156152))

(declare-fun d!1156154 () Bool)

(declare-fun res!1578052 () Bool)

(declare-fun e!2411778 () Bool)

(assert (=> d!1156154 (=> (not res!1578052) (not e!2411778))))

(assert (=> d!1156154 (= res!1578052 (not (isEmpty!24590 (originalCharacters!7034 (_1!23438 (v!39167 err!4385))))))))

(assert (=> d!1156154 (= (inv!55538 (_1!23438 (v!39167 err!4385))) e!2411778)))

(declare-fun b!3900763 () Bool)

(declare-fun res!1578053 () Bool)

(assert (=> b!3900763 (=> (not res!1578053) (not e!2411778))))

(declare-fun dynLambda!17765 (Int TokenValue!6664) BalanceConc!24884)

(assert (=> b!3900763 (= res!1578053 (= (originalCharacters!7034 (_1!23438 (v!39167 err!4385))) (list!15376 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (value!204003 (_1!23438 (v!39167 err!4385)))))))))

(declare-fun b!3900764 () Bool)

(assert (=> b!3900764 (= e!2411778 (= (size!31059 (_1!23438 (v!39167 err!4385))) (size!31060 (originalCharacters!7034 (_1!23438 (v!39167 err!4385))))))))

(assert (= (and d!1156154 res!1578052) b!3900763))

(assert (= (and b!3900763 res!1578053) b!3900764))

(declare-fun b_lambda!113977 () Bool)

(assert (=> (not b_lambda!113977) (not b!3900763)))

(declare-fun t!319964 () Bool)

(declare-fun tb!229757 () Bool)

(assert (=> (and b!3900404 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!319964) tb!229757))

(declare-fun b!3900769 () Bool)

(declare-fun e!2411781 () Bool)

(declare-fun tp!1186853 () Bool)

(declare-fun inv!55541 (Conc!12645) Bool)

(assert (=> b!3900769 (= e!2411781 (and (inv!55541 (c!678054 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (value!204003 (_1!23438 (v!39167 err!4385)))))) tp!1186853))))

(declare-fun result!278966 () Bool)

(declare-fun inv!55542 (BalanceConc!24884) Bool)

(assert (=> tb!229757 (= result!278966 (and (inv!55542 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (value!204003 (_1!23438 (v!39167 err!4385))))) e!2411781))))

(assert (= tb!229757 b!3900769))

(declare-fun m!4460929 () Bool)

(assert (=> b!3900769 m!4460929))

(declare-fun m!4460931 () Bool)

(assert (=> tb!229757 m!4460931))

(assert (=> b!3900763 t!319964))

(declare-fun b_and!294995 () Bool)

(assert (= b_and!294941 (and (=> t!319964 result!278966) b_and!294995)))

(declare-fun tb!229759 () Bool)

(declare-fun t!319966 () Bool)

(assert (=> (and b!3900407 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!319966) tb!229759))

(declare-fun result!278970 () Bool)

(assert (= result!278970 result!278966))

(assert (=> b!3900763 t!319966))

(declare-fun b_and!294997 () Bool)

(assert (= b_and!294945 (and (=> t!319966 result!278970) b_and!294997)))

(declare-fun t!319968 () Bool)

(declare-fun tb!229761 () Bool)

(assert (=> (and b!3900436 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!319968) tb!229761))

(declare-fun result!278972 () Bool)

(assert (= result!278972 result!278966))

(assert (=> b!3900763 t!319968))

(declare-fun b_and!294999 () Bool)

(assert (= b_and!294949 (and (=> t!319968 result!278972) b_and!294999)))

(declare-fun t!319970 () Bool)

(declare-fun tb!229763 () Bool)

(assert (=> (and b!3900409 (= (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!319970) tb!229763))

(declare-fun result!278974 () Bool)

(assert (= result!278974 result!278966))

(assert (=> b!3900763 t!319970))

(declare-fun b_and!295001 () Bool)

(assert (= b_and!294953 (and (=> t!319970 result!278974) b_and!295001)))

(declare-fun m!4460933 () Bool)

(assert (=> d!1156154 m!4460933))

(declare-fun m!4460935 () Bool)

(assert (=> b!3900763 m!4460935))

(assert (=> b!3900763 m!4460935))

(declare-fun m!4460937 () Bool)

(assert (=> b!3900763 m!4460937))

(declare-fun m!4460939 () Bool)

(assert (=> b!3900764 m!4460939))

(assert (=> b!3900416 d!1156154))

(declare-fun d!1156156 () Bool)

(declare-fun res!1578054 () Bool)

(declare-fun e!2411782 () Bool)

(assert (=> d!1156156 (=> (not res!1578054) (not e!2411782))))

(assert (=> d!1156156 (= res!1578054 (not (isEmpty!24590 (originalCharacters!7034 (h!46789 suffixTokens!72)))))))

(assert (=> d!1156156 (= (inv!55538 (h!46789 suffixTokens!72)) e!2411782)))

(declare-fun b!3900770 () Bool)

(declare-fun res!1578055 () Bool)

(assert (=> b!3900770 (=> (not res!1578055) (not e!2411782))))

(assert (=> b!3900770 (= res!1578055 (= (originalCharacters!7034 (h!46789 suffixTokens!72)) (list!15376 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (value!204003 (h!46789 suffixTokens!72))))))))

(declare-fun b!3900771 () Bool)

(assert (=> b!3900771 (= e!2411782 (= (size!31059 (h!46789 suffixTokens!72)) (size!31060 (originalCharacters!7034 (h!46789 suffixTokens!72)))))))

(assert (= (and d!1156156 res!1578054) b!3900770))

(assert (= (and b!3900770 res!1578055) b!3900771))

(declare-fun b_lambda!113979 () Bool)

(assert (=> (not b_lambda!113979) (not b!3900770)))

(declare-fun tb!229765 () Bool)

(declare-fun t!319972 () Bool)

(assert (=> (and b!3900404 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!319972) tb!229765))

(declare-fun b!3900772 () Bool)

(declare-fun e!2411783 () Bool)

(declare-fun tp!1186854 () Bool)

(assert (=> b!3900772 (= e!2411783 (and (inv!55541 (c!678054 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (value!204003 (h!46789 suffixTokens!72))))) tp!1186854))))

(declare-fun result!278976 () Bool)

(assert (=> tb!229765 (= result!278976 (and (inv!55542 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (value!204003 (h!46789 suffixTokens!72)))) e!2411783))))

(assert (= tb!229765 b!3900772))

(declare-fun m!4460941 () Bool)

(assert (=> b!3900772 m!4460941))

(declare-fun m!4460943 () Bool)

(assert (=> tb!229765 m!4460943))

(assert (=> b!3900770 t!319972))

(declare-fun b_and!295003 () Bool)

(assert (= b_and!294995 (and (=> t!319972 result!278976) b_and!295003)))

(declare-fun t!319974 () Bool)

(declare-fun tb!229767 () Bool)

(assert (=> (and b!3900407 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!319974) tb!229767))

(declare-fun result!278978 () Bool)

(assert (= result!278978 result!278976))

(assert (=> b!3900770 t!319974))

(declare-fun b_and!295005 () Bool)

(assert (= b_and!294997 (and (=> t!319974 result!278978) b_and!295005)))

(declare-fun t!319976 () Bool)

(declare-fun tb!229769 () Bool)

(assert (=> (and b!3900436 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!319976) tb!229769))

(declare-fun result!278980 () Bool)

(assert (= result!278980 result!278976))

(assert (=> b!3900770 t!319976))

(declare-fun b_and!295007 () Bool)

(assert (= b_and!294999 (and (=> t!319976 result!278980) b_and!295007)))

(declare-fun t!319978 () Bool)

(declare-fun tb!229771 () Bool)

(assert (=> (and b!3900409 (= (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!319978) tb!229771))

(declare-fun result!278982 () Bool)

(assert (= result!278982 result!278976))

(assert (=> b!3900770 t!319978))

(declare-fun b_and!295009 () Bool)

(assert (= b_and!295001 (and (=> t!319978 result!278982) b_and!295009)))

(declare-fun m!4460945 () Bool)

(assert (=> d!1156156 m!4460945))

(declare-fun m!4460947 () Bool)

(assert (=> b!3900770 m!4460947))

(assert (=> b!3900770 m!4460947))

(declare-fun m!4460949 () Bool)

(assert (=> b!3900770 m!4460949))

(declare-fun m!4460951 () Bool)

(assert (=> b!3900771 m!4460951))

(assert (=> b!3900433 d!1156156))

(declare-fun d!1156158 () Bool)

(assert (=> d!1156158 (= (inv!55534 (tag!7294 (rule!9340 (_1!23438 (v!39167 err!4385))))) (= (mod (str.len (value!203977 (tag!7294 (rule!9340 (_1!23438 (v!39167 err!4385)))))) 2) 0))))

(assert (=> b!3900412 d!1156158))

(declare-fun d!1156160 () Bool)

(declare-fun res!1578056 () Bool)

(declare-fun e!2411784 () Bool)

(assert (=> d!1156160 (=> (not res!1578056) (not e!2411784))))

(assert (=> d!1156160 (= res!1578056 (semiInverseModEq!2757 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))))))

(assert (=> d!1156160 (= (inv!55537 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) e!2411784)))

(declare-fun b!3900773 () Bool)

(assert (=> b!3900773 (= e!2411784 (equivClasses!2656 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))))))

(assert (= (and d!1156160 res!1578056) b!3900773))

(declare-fun m!4460953 () Bool)

(assert (=> d!1156160 m!4460953))

(declare-fun m!4460955 () Bool)

(assert (=> b!3900773 m!4460955))

(assert (=> b!3900412 d!1156160))

(declare-fun b!3900895 () Bool)

(declare-fun e!2411864 () Bool)

(declare-fun e!2411863 () Bool)

(assert (=> b!3900895 (= e!2411864 e!2411863)))

(declare-fun res!1578096 () Bool)

(assert (=> b!3900895 (=> (not res!1578096) (not e!2411863))))

(declare-fun lt!1358949 () Option!8854)

(assert (=> b!3900895 (= res!1578096 (matchR!5434 (regex!6434 (h!46788 rules!2768)) (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358949))))))))

(declare-fun b!3900896 () Bool)

(declare-fun res!1578101 () Bool)

(assert (=> b!3900896 (=> (not res!1578101) (not e!2411863))))

(assert (=> b!3900896 (= res!1578101 (= (++!10625 (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358949)))) (_2!23438 (get!13677 lt!1358949))) lt!1358783))))

(declare-fun b!3900897 () Bool)

(declare-fun res!1578098 () Bool)

(assert (=> b!3900897 (=> (not res!1578098) (not e!2411863))))

(assert (=> b!3900897 (= res!1578098 (= (rule!9340 (_1!23438 (get!13677 lt!1358949))) (h!46788 rules!2768)))))

(declare-fun b!3900898 () Bool)

(declare-fun res!1578100 () Bool)

(assert (=> b!3900898 (=> (not res!1578100) (not e!2411863))))

(assert (=> b!3900898 (= res!1578100 (< (size!31060 (_2!23438 (get!13677 lt!1358949))) (size!31060 lt!1358783)))))

(declare-fun b!3900899 () Bool)

(declare-fun e!2411865 () Bool)

(declare-datatypes ((tuple2!40610 0))(
  ( (tuple2!40611 (_1!23439 List!41490) (_2!23439 List!41490)) )
))
(declare-fun findLongestMatchInner!1221 (Regex!11339 List!41490 Int List!41490 List!41490 Int) tuple2!40610)

(assert (=> b!3900899 (= e!2411865 (matchR!5434 (regex!6434 (h!46788 rules!2768)) (_1!23439 (findLongestMatchInner!1221 (regex!6434 (h!46788 rules!2768)) Nil!41366 (size!31060 Nil!41366) lt!1358783 lt!1358783 (size!31060 lt!1358783)))))))

(declare-fun d!1156162 () Bool)

(assert (=> d!1156162 e!2411864))

(declare-fun res!1578099 () Bool)

(assert (=> d!1156162 (=> res!1578099 e!2411864)))

(assert (=> d!1156162 (= res!1578099 (isEmpty!24592 lt!1358949))))

(declare-fun e!2411862 () Option!8854)

(assert (=> d!1156162 (= lt!1358949 e!2411862)))

(declare-fun c!678134 () Bool)

(declare-fun lt!1358953 () tuple2!40610)

(assert (=> d!1156162 (= c!678134 (isEmpty!24590 (_1!23439 lt!1358953)))))

(declare-fun findLongestMatch!1134 (Regex!11339 List!41490) tuple2!40610)

(assert (=> d!1156162 (= lt!1358953 (findLongestMatch!1134 (regex!6434 (h!46788 rules!2768)) lt!1358783))))

(assert (=> d!1156162 (ruleValid!2382 thiss!20629 (h!46788 rules!2768))))

(assert (=> d!1156162 (= (maxPrefixOneRule!2403 thiss!20629 (h!46788 rules!2768) lt!1358783) lt!1358949)))

(declare-fun b!3900900 () Bool)

(assert (=> b!3900900 (= e!2411863 (= (size!31059 (_1!23438 (get!13677 lt!1358949))) (size!31060 (originalCharacters!7034 (_1!23438 (get!13677 lt!1358949))))))))

(declare-fun b!3900901 () Bool)

(assert (=> b!3900901 (= e!2411862 None!8853)))

(declare-fun b!3900902 () Bool)

(declare-fun size!31063 (BalanceConc!24884) Int)

(assert (=> b!3900902 (= e!2411862 (Some!8853 (tuple2!40609 (Token!12007 (apply!9673 (transformation!6434 (h!46788 rules!2768)) (seqFromList!4701 (_1!23439 lt!1358953))) (h!46788 rules!2768) (size!31063 (seqFromList!4701 (_1!23439 lt!1358953))) (_1!23439 lt!1358953)) (_2!23439 lt!1358953))))))

(declare-fun lt!1358952 () Unit!59490)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1194 (Regex!11339 List!41490) Unit!59490)

(assert (=> b!3900902 (= lt!1358952 (longestMatchIsAcceptedByMatchOrIsEmpty!1194 (regex!6434 (h!46788 rules!2768)) lt!1358783))))

(declare-fun res!1578097 () Bool)

(assert (=> b!3900902 (= res!1578097 (isEmpty!24590 (_1!23439 (findLongestMatchInner!1221 (regex!6434 (h!46788 rules!2768)) Nil!41366 (size!31060 Nil!41366) lt!1358783 lt!1358783 (size!31060 lt!1358783)))))))

(assert (=> b!3900902 (=> res!1578097 e!2411865)))

(assert (=> b!3900902 e!2411865))

(declare-fun lt!1358950 () Unit!59490)

(assert (=> b!3900902 (= lt!1358950 lt!1358952)))

(declare-fun lt!1358951 () Unit!59490)

(declare-fun lemmaSemiInverse!1727 (TokenValueInjection!12756 BalanceConc!24884) Unit!59490)

(assert (=> b!3900902 (= lt!1358951 (lemmaSemiInverse!1727 (transformation!6434 (h!46788 rules!2768)) (seqFromList!4701 (_1!23439 lt!1358953))))))

(declare-fun b!3900903 () Bool)

(declare-fun res!1578102 () Bool)

(assert (=> b!3900903 (=> (not res!1578102) (not e!2411863))))

(assert (=> b!3900903 (= res!1578102 (= (value!204003 (_1!23438 (get!13677 lt!1358949))) (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (get!13677 lt!1358949)))) (seqFromList!4701 (originalCharacters!7034 (_1!23438 (get!13677 lt!1358949)))))))))

(assert (= (and d!1156162 c!678134) b!3900901))

(assert (= (and d!1156162 (not c!678134)) b!3900902))

(assert (= (and b!3900902 (not res!1578097)) b!3900899))

(assert (= (and d!1156162 (not res!1578099)) b!3900895))

(assert (= (and b!3900895 res!1578096) b!3900896))

(assert (= (and b!3900896 res!1578101) b!3900898))

(assert (= (and b!3900898 res!1578100) b!3900897))

(assert (= (and b!3900897 res!1578098) b!3900903))

(assert (= (and b!3900903 res!1578102) b!3900900))

(declare-fun m!4461045 () Bool)

(assert (=> b!3900895 m!4461045))

(declare-fun m!4461047 () Bool)

(assert (=> b!3900895 m!4461047))

(assert (=> b!3900895 m!4461047))

(declare-fun m!4461049 () Bool)

(assert (=> b!3900895 m!4461049))

(assert (=> b!3900895 m!4461049))

(declare-fun m!4461051 () Bool)

(assert (=> b!3900895 m!4461051))

(assert (=> b!3900898 m!4461045))

(declare-fun m!4461053 () Bool)

(assert (=> b!3900898 m!4461053))

(assert (=> b!3900898 m!4460571))

(assert (=> b!3900897 m!4461045))

(assert (=> b!3900903 m!4461045))

(declare-fun m!4461055 () Bool)

(assert (=> b!3900903 m!4461055))

(assert (=> b!3900903 m!4461055))

(declare-fun m!4461057 () Bool)

(assert (=> b!3900903 m!4461057))

(assert (=> b!3900902 m!4460709))

(declare-fun m!4461059 () Bool)

(assert (=> b!3900902 m!4461059))

(declare-fun m!4461061 () Bool)

(assert (=> b!3900902 m!4461061))

(assert (=> b!3900902 m!4460709))

(assert (=> b!3900902 m!4460571))

(declare-fun m!4461063 () Bool)

(assert (=> b!3900902 m!4461063))

(assert (=> b!3900902 m!4461059))

(declare-fun m!4461065 () Bool)

(assert (=> b!3900902 m!4461065))

(declare-fun m!4461067 () Bool)

(assert (=> b!3900902 m!4461067))

(assert (=> b!3900902 m!4461059))

(assert (=> b!3900902 m!4460571))

(assert (=> b!3900902 m!4461059))

(declare-fun m!4461069 () Bool)

(assert (=> b!3900902 m!4461069))

(declare-fun m!4461071 () Bool)

(assert (=> b!3900902 m!4461071))

(assert (=> b!3900900 m!4461045))

(declare-fun m!4461073 () Bool)

(assert (=> b!3900900 m!4461073))

(assert (=> b!3900899 m!4460709))

(assert (=> b!3900899 m!4460571))

(assert (=> b!3900899 m!4460709))

(assert (=> b!3900899 m!4460571))

(assert (=> b!3900899 m!4461063))

(declare-fun m!4461075 () Bool)

(assert (=> b!3900899 m!4461075))

(declare-fun m!4461077 () Bool)

(assert (=> d!1156162 m!4461077))

(declare-fun m!4461079 () Bool)

(assert (=> d!1156162 m!4461079))

(declare-fun m!4461081 () Bool)

(assert (=> d!1156162 m!4461081))

(declare-fun m!4461083 () Bool)

(assert (=> d!1156162 m!4461083))

(assert (=> b!3900896 m!4461045))

(assert (=> b!3900896 m!4461047))

(assert (=> b!3900896 m!4461047))

(assert (=> b!3900896 m!4461049))

(assert (=> b!3900896 m!4461049))

(declare-fun m!4461085 () Bool)

(assert (=> b!3900896 m!4461085))

(assert (=> bm!283839 d!1156162))

(declare-fun d!1156176 () Bool)

(declare-fun lt!1358956 () BalanceConc!24884)

(assert (=> d!1156176 (= (list!15376 lt!1358956) (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776))))))

(assert (=> d!1156176 (= lt!1358956 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776))))) (value!204003 (_1!23438 (v!39167 lt!1358776)))))))

(assert (=> d!1156176 (= (charsOf!4258 (_1!23438 (v!39167 lt!1358776))) lt!1358956)))

(declare-fun b_lambda!113987 () Bool)

(assert (=> (not b_lambda!113987) (not d!1156176)))

(declare-fun tb!229803 () Bool)

(declare-fun t!320010 () Bool)

(assert (=> (and b!3900404 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320010) tb!229803))

(declare-fun b!3900904 () Bool)

(declare-fun e!2411866 () Bool)

(declare-fun tp!1186926 () Bool)

(assert (=> b!3900904 (= e!2411866 (and (inv!55541 (c!678054 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776))))) (value!204003 (_1!23438 (v!39167 lt!1358776)))))) tp!1186926))))

(declare-fun result!279022 () Bool)

(assert (=> tb!229803 (= result!279022 (and (inv!55542 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776))))) (value!204003 (_1!23438 (v!39167 lt!1358776))))) e!2411866))))

(assert (= tb!229803 b!3900904))

(declare-fun m!4461087 () Bool)

(assert (=> b!3900904 m!4461087))

(declare-fun m!4461089 () Bool)

(assert (=> tb!229803 m!4461089))

(assert (=> d!1156176 t!320010))

(declare-fun b_and!295023 () Bool)

(assert (= b_and!295003 (and (=> t!320010 result!279022) b_and!295023)))

(declare-fun tb!229805 () Bool)

(declare-fun t!320012 () Bool)

(assert (=> (and b!3900407 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320012) tb!229805))

(declare-fun result!279024 () Bool)

(assert (= result!279024 result!279022))

(assert (=> d!1156176 t!320012))

(declare-fun b_and!295025 () Bool)

(assert (= b_and!295005 (and (=> t!320012 result!279024) b_and!295025)))

(declare-fun t!320014 () Bool)

(declare-fun tb!229807 () Bool)

(assert (=> (and b!3900436 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320014) tb!229807))

(declare-fun result!279026 () Bool)

(assert (= result!279026 result!279022))

(assert (=> d!1156176 t!320014))

(declare-fun b_and!295027 () Bool)

(assert (= b_and!295007 (and (=> t!320014 result!279026) b_and!295027)))

(declare-fun tb!229809 () Bool)

(declare-fun t!320016 () Bool)

(assert (=> (and b!3900409 (= (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320016) tb!229809))

(declare-fun result!279028 () Bool)

(assert (= result!279028 result!279022))

(assert (=> d!1156176 t!320016))

(declare-fun b_and!295029 () Bool)

(assert (= b_and!295009 (and (=> t!320016 result!279028) b_and!295029)))

(declare-fun m!4461091 () Bool)

(assert (=> d!1156176 m!4461091))

(declare-fun m!4461093 () Bool)

(assert (=> d!1156176 m!4461093))

(assert (=> b!3900434 d!1156176))

(declare-fun d!1156178 () Bool)

(declare-fun dynLambda!17766 (Int BalanceConc!24884) TokenValue!6664)

(assert (=> d!1156178 (= (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))) (seqFromList!4701 lt!1358789)) (dynLambda!17766 (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776))))) (seqFromList!4701 lt!1358789)))))

(declare-fun b_lambda!113989 () Bool)

(assert (=> (not b_lambda!113989) (not d!1156178)))

(declare-fun t!320018 () Bool)

(declare-fun tb!229811 () Bool)

(assert (=> (and b!3900404 (= (toValue!8874 (transformation!6434 (h!46788 rules!2768))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320018) tb!229811))

(declare-fun result!279030 () Bool)

(assert (=> tb!229811 (= result!279030 (inv!21 (dynLambda!17766 (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776))))) (seqFromList!4701 lt!1358789))))))

(declare-fun m!4461095 () Bool)

(assert (=> tb!229811 m!4461095))

(assert (=> d!1156178 t!320018))

(declare-fun b_and!295031 () Bool)

(assert (= b_and!294939 (and (=> t!320018 result!279030) b_and!295031)))

(declare-fun t!320020 () Bool)

(declare-fun tb!229813 () Bool)

(assert (=> (and b!3900407 (= (toValue!8874 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320020) tb!229813))

(declare-fun result!279034 () Bool)

(assert (= result!279034 result!279030))

(assert (=> d!1156178 t!320020))

(declare-fun b_and!295033 () Bool)

(assert (= b_and!294943 (and (=> t!320020 result!279034) b_and!295033)))

(declare-fun tb!229815 () Bool)

(declare-fun t!320022 () Bool)

(assert (=> (and b!3900436 (= (toValue!8874 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320022) tb!229815))

(declare-fun result!279036 () Bool)

(assert (= result!279036 result!279030))

(assert (=> d!1156178 t!320022))

(declare-fun b_and!295035 () Bool)

(assert (= b_and!294947 (and (=> t!320022 result!279036) b_and!295035)))

(declare-fun t!320024 () Bool)

(declare-fun tb!229817 () Bool)

(assert (=> (and b!3900409 (= (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320024) tb!229817))

(declare-fun result!279038 () Bool)

(assert (= result!279038 result!279030))

(assert (=> d!1156178 t!320024))

(declare-fun b_and!295037 () Bool)

(assert (= b_and!294951 (and (=> t!320024 result!279038) b_and!295037)))

(assert (=> d!1156178 m!4460443))

(declare-fun m!4461097 () Bool)

(assert (=> d!1156178 m!4461097))

(assert (=> b!3900434 d!1156178))

(declare-fun b!3900907 () Bool)

(declare-fun e!2411870 () Bool)

(declare-fun e!2411872 () Bool)

(assert (=> b!3900907 (= e!2411870 e!2411872)))

(declare-fun res!1578104 () Bool)

(assert (=> b!3900907 (=> (not res!1578104) (not e!2411872))))

(assert (=> b!3900907 (= res!1578104 (not ((_ is Nil!41366) lt!1358774)))))

(declare-fun b!3900908 () Bool)

(declare-fun res!1578105 () Bool)

(assert (=> b!3900908 (=> (not res!1578105) (not e!2411872))))

(assert (=> b!3900908 (= res!1578105 (= (head!8247 lt!1358789) (head!8247 lt!1358774)))))

(declare-fun d!1156180 () Bool)

(declare-fun e!2411871 () Bool)

(assert (=> d!1156180 e!2411871))

(declare-fun res!1578103 () Bool)

(assert (=> d!1156180 (=> res!1578103 e!2411871)))

(declare-fun lt!1358957 () Bool)

(assert (=> d!1156180 (= res!1578103 (not lt!1358957))))

(assert (=> d!1156180 (= lt!1358957 e!2411870)))

(declare-fun res!1578106 () Bool)

(assert (=> d!1156180 (=> res!1578106 e!2411870)))

(assert (=> d!1156180 (= res!1578106 ((_ is Nil!41366) lt!1358789))))

(assert (=> d!1156180 (= (isPrefix!3529 lt!1358789 lt!1358774) lt!1358957)))

(declare-fun b!3900909 () Bool)

(assert (=> b!3900909 (= e!2411872 (isPrefix!3529 (tail!5964 lt!1358789) (tail!5964 lt!1358774)))))

(declare-fun b!3900910 () Bool)

(assert (=> b!3900910 (= e!2411871 (>= (size!31060 lt!1358774) (size!31060 lt!1358789)))))

(assert (= (and d!1156180 (not res!1578106)) b!3900907))

(assert (= (and b!3900907 res!1578104) b!3900908))

(assert (= (and b!3900908 res!1578105) b!3900909))

(assert (= (and d!1156180 (not res!1578103)) b!3900910))

(declare-fun m!4461099 () Bool)

(assert (=> b!3900908 m!4461099))

(declare-fun m!4461101 () Bool)

(assert (=> b!3900908 m!4461101))

(declare-fun m!4461103 () Bool)

(assert (=> b!3900909 m!4461103))

(declare-fun m!4461105 () Bool)

(assert (=> b!3900909 m!4461105))

(assert (=> b!3900909 m!4461103))

(assert (=> b!3900909 m!4461105))

(declare-fun m!4461107 () Bool)

(assert (=> b!3900909 m!4461107))

(declare-fun m!4461109 () Bool)

(assert (=> b!3900910 m!4461109))

(assert (=> b!3900910 m!4460429))

(assert (=> b!3900434 d!1156180))

(declare-fun d!1156182 () Bool)

(declare-fun fromListB!2167 (List!41490) BalanceConc!24884)

(assert (=> d!1156182 (= (seqFromList!4701 lt!1358789) (fromListB!2167 lt!1358789))))

(declare-fun bs!584948 () Bool)

(assert (= bs!584948 d!1156182))

(declare-fun m!4461111 () Bool)

(assert (=> bs!584948 m!4461111))

(assert (=> b!3900434 d!1156182))

(declare-fun d!1156184 () Bool)

(declare-fun lt!1358958 () Int)

(assert (=> d!1156184 (>= lt!1358958 0)))

(declare-fun e!2411873 () Int)

(assert (=> d!1156184 (= lt!1358958 e!2411873)))

(declare-fun c!678135 () Bool)

(assert (=> d!1156184 (= c!678135 ((_ is Nil!41366) lt!1358789))))

(assert (=> d!1156184 (= (size!31060 lt!1358789) lt!1358958)))

(declare-fun b!3900911 () Bool)

(assert (=> b!3900911 (= e!2411873 0)))

(declare-fun b!3900912 () Bool)

(assert (=> b!3900912 (= e!2411873 (+ 1 (size!31060 (t!319919 lt!1358789))))))

(assert (= (and d!1156184 c!678135) b!3900911))

(assert (= (and d!1156184 (not c!678135)) b!3900912))

(declare-fun m!4461113 () Bool)

(assert (=> b!3900912 m!4461113))

(assert (=> b!3900434 d!1156184))

(declare-fun d!1156186 () Bool)

(assert (=> d!1156186 (isPrefix!3529 lt!1358789 (++!10625 lt!1358789 (_2!23438 (v!39167 lt!1358776))))))

(declare-fun lt!1358961 () Unit!59490)

(declare-fun choose!23075 (List!41490 List!41490) Unit!59490)

(assert (=> d!1156186 (= lt!1358961 (choose!23075 lt!1358789 (_2!23438 (v!39167 lt!1358776))))))

(assert (=> d!1156186 (= (lemmaConcatTwoListThenFirstIsPrefix!2392 lt!1358789 (_2!23438 (v!39167 lt!1358776))) lt!1358961)))

(declare-fun bs!584949 () Bool)

(assert (= bs!584949 d!1156186))

(assert (=> bs!584949 m!4460427))

(assert (=> bs!584949 m!4460427))

(declare-fun m!4461115 () Bool)

(assert (=> bs!584949 m!4461115))

(declare-fun m!4461117 () Bool)

(assert (=> bs!584949 m!4461117))

(assert (=> b!3900434 d!1156186))

(declare-fun b!3900913 () Bool)

(declare-fun e!2411875 () tuple2!40606)

(declare-fun lt!1358962 () Option!8854)

(declare-fun lt!1358964 () tuple2!40606)

(assert (=> b!3900913 (= e!2411875 (tuple2!40607 (Cons!41369 (_1!23438 (v!39167 lt!1358962)) (_1!23437 lt!1358964)) (_2!23437 lt!1358964)))))

(assert (=> b!3900913 (= lt!1358964 (lexList!1791 thiss!20629 rules!2768 (_2!23438 (v!39167 lt!1358962))))))

(declare-fun b!3900914 () Bool)

(declare-fun e!2411874 () Bool)

(declare-fun lt!1358963 () tuple2!40606)

(assert (=> b!3900914 (= e!2411874 (not (isEmpty!24589 (_1!23437 lt!1358963))))))

(declare-fun b!3900915 () Bool)

(assert (=> b!3900915 (= e!2411875 (tuple2!40607 Nil!41369 (_2!23438 (v!39167 lt!1358776))))))

(declare-fun b!3900916 () Bool)

(declare-fun e!2411876 () Bool)

(assert (=> b!3900916 (= e!2411876 (= (_2!23437 lt!1358963) (_2!23438 (v!39167 lt!1358776))))))

(declare-fun d!1156188 () Bool)

(assert (=> d!1156188 e!2411876))

(declare-fun c!678137 () Bool)

(assert (=> d!1156188 (= c!678137 (> (size!31062 (_1!23437 lt!1358963)) 0))))

(assert (=> d!1156188 (= lt!1358963 e!2411875)))

(declare-fun c!678136 () Bool)

(assert (=> d!1156188 (= c!678136 ((_ is Some!8853) lt!1358962))))

(assert (=> d!1156188 (= lt!1358962 (maxPrefix!3327 thiss!20629 rules!2768 (_2!23438 (v!39167 lt!1358776))))))

(assert (=> d!1156188 (= (lexList!1791 thiss!20629 rules!2768 (_2!23438 (v!39167 lt!1358776))) lt!1358963)))

(declare-fun b!3900917 () Bool)

(assert (=> b!3900917 (= e!2411876 e!2411874)))

(declare-fun res!1578107 () Bool)

(assert (=> b!3900917 (= res!1578107 (< (size!31060 (_2!23437 lt!1358963)) (size!31060 (_2!23438 (v!39167 lt!1358776)))))))

(assert (=> b!3900917 (=> (not res!1578107) (not e!2411874))))

(assert (= (and d!1156188 c!678136) b!3900913))

(assert (= (and d!1156188 (not c!678136)) b!3900915))

(assert (= (and d!1156188 c!678137) b!3900917))

(assert (= (and d!1156188 (not c!678137)) b!3900916))

(assert (= (and b!3900917 res!1578107) b!3900914))

(declare-fun m!4461119 () Bool)

(assert (=> b!3900913 m!4461119))

(declare-fun m!4461121 () Bool)

(assert (=> b!3900914 m!4461121))

(declare-fun m!4461123 () Bool)

(assert (=> d!1156188 m!4461123))

(declare-fun m!4461125 () Bool)

(assert (=> d!1156188 m!4461125))

(declare-fun m!4461127 () Bool)

(assert (=> b!3900917 m!4461127))

(declare-fun m!4461129 () Bool)

(assert (=> b!3900917 m!4461129))

(assert (=> b!3900434 d!1156188))

(declare-fun d!1156190 () Bool)

(declare-fun lt!1358967 () List!41490)

(assert (=> d!1156190 (= (++!10625 lt!1358789 lt!1358967) lt!1358783)))

(declare-fun e!2411879 () List!41490)

(assert (=> d!1156190 (= lt!1358967 e!2411879)))

(declare-fun c!678140 () Bool)

(assert (=> d!1156190 (= c!678140 ((_ is Cons!41366) lt!1358789))))

(assert (=> d!1156190 (>= (size!31060 lt!1358783) (size!31060 lt!1358789))))

(assert (=> d!1156190 (= (getSuffix!1984 lt!1358783 lt!1358789) lt!1358967)))

(declare-fun b!3900922 () Bool)

(assert (=> b!3900922 (= e!2411879 (getSuffix!1984 (tail!5964 lt!1358783) (t!319919 lt!1358789)))))

(declare-fun b!3900923 () Bool)

(assert (=> b!3900923 (= e!2411879 lt!1358783)))

(assert (= (and d!1156190 c!678140) b!3900922))

(assert (= (and d!1156190 (not c!678140)) b!3900923))

(declare-fun m!4461131 () Bool)

(assert (=> d!1156190 m!4461131))

(assert (=> d!1156190 m!4460571))

(assert (=> d!1156190 m!4460429))

(declare-fun m!4461133 () Bool)

(assert (=> b!3900922 m!4461133))

(assert (=> b!3900922 m!4461133))

(declare-fun m!4461135 () Bool)

(assert (=> b!3900922 m!4461135))

(assert (=> b!3900434 d!1156190))

(declare-fun d!1156192 () Bool)

(assert (=> d!1156192 (ruleValid!2382 thiss!20629 (rule!9340 (_1!23438 (v!39167 lt!1358776))))))

(declare-fun lt!1358970 () Unit!59490)

(declare-fun choose!23077 (LexerInterface!6023 Rule!12668 List!41492) Unit!59490)

(assert (=> d!1156192 (= lt!1358970 (choose!23077 thiss!20629 (rule!9340 (_1!23438 (v!39167 lt!1358776))) rules!2768))))

(assert (=> d!1156192 (contains!8315 rules!2768 (rule!9340 (_1!23438 (v!39167 lt!1358776))))))

(assert (=> d!1156192 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1462 thiss!20629 (rule!9340 (_1!23438 (v!39167 lt!1358776))) rules!2768) lt!1358970)))

(declare-fun bs!584950 () Bool)

(assert (= bs!584950 d!1156192))

(assert (=> bs!584950 m!4460447))

(declare-fun m!4461137 () Bool)

(assert (=> bs!584950 m!4461137))

(declare-fun m!4461139 () Bool)

(assert (=> bs!584950 m!4461139))

(assert (=> b!3900434 d!1156192))

(declare-fun e!2411880 () Bool)

(declare-fun lt!1358971 () List!41490)

(declare-fun b!3900927 () Bool)

(assert (=> b!3900927 (= e!2411880 (or (not (= (_2!23438 (v!39167 lt!1358776)) Nil!41366)) (= lt!1358971 lt!1358789)))))

(declare-fun b!3900924 () Bool)

(declare-fun e!2411881 () List!41490)

(assert (=> b!3900924 (= e!2411881 (_2!23438 (v!39167 lt!1358776)))))

(declare-fun b!3900925 () Bool)

(assert (=> b!3900925 (= e!2411881 (Cons!41366 (h!46786 lt!1358789) (++!10625 (t!319919 lt!1358789) (_2!23438 (v!39167 lt!1358776)))))))

(declare-fun b!3900926 () Bool)

(declare-fun res!1578109 () Bool)

(assert (=> b!3900926 (=> (not res!1578109) (not e!2411880))))

(assert (=> b!3900926 (= res!1578109 (= (size!31060 lt!1358971) (+ (size!31060 lt!1358789) (size!31060 (_2!23438 (v!39167 lt!1358776))))))))

(declare-fun d!1156194 () Bool)

(assert (=> d!1156194 e!2411880))

(declare-fun res!1578108 () Bool)

(assert (=> d!1156194 (=> (not res!1578108) (not e!2411880))))

(assert (=> d!1156194 (= res!1578108 (= (content!6193 lt!1358971) ((_ map or) (content!6193 lt!1358789) (content!6193 (_2!23438 (v!39167 lt!1358776))))))))

(assert (=> d!1156194 (= lt!1358971 e!2411881)))

(declare-fun c!678141 () Bool)

(assert (=> d!1156194 (= c!678141 ((_ is Nil!41366) lt!1358789))))

(assert (=> d!1156194 (= (++!10625 lt!1358789 (_2!23438 (v!39167 lt!1358776))) lt!1358971)))

(assert (= (and d!1156194 c!678141) b!3900924))

(assert (= (and d!1156194 (not c!678141)) b!3900925))

(assert (= (and d!1156194 res!1578108) b!3900926))

(assert (= (and b!3900926 res!1578109) b!3900927))

(declare-fun m!4461141 () Bool)

(assert (=> b!3900925 m!4461141))

(declare-fun m!4461143 () Bool)

(assert (=> b!3900926 m!4461143))

(assert (=> b!3900926 m!4460429))

(assert (=> b!3900926 m!4461129))

(declare-fun m!4461145 () Bool)

(assert (=> d!1156194 m!4461145))

(declare-fun m!4461147 () Bool)

(assert (=> d!1156194 m!4461147))

(declare-fun m!4461149 () Bool)

(assert (=> d!1156194 m!4461149))

(assert (=> b!3900434 d!1156194))

(declare-fun d!1156196 () Bool)

(declare-fun list!15378 (Conc!12645) List!41490)

(assert (=> d!1156196 (= (list!15376 (charsOf!4258 (_1!23438 (v!39167 lt!1358776)))) (list!15378 (c!678054 (charsOf!4258 (_1!23438 (v!39167 lt!1358776))))))))

(declare-fun bs!584951 () Bool)

(assert (= bs!584951 d!1156196))

(declare-fun m!4461151 () Bool)

(assert (=> bs!584951 m!4461151))

(assert (=> b!3900434 d!1156196))

(declare-fun d!1156198 () Bool)

(assert (=> d!1156198 (= (_2!23438 (v!39167 lt!1358776)) lt!1358778)))

(declare-fun lt!1358974 () Unit!59490)

(declare-fun choose!23078 (List!41490 List!41490 List!41490 List!41490 List!41490) Unit!59490)

(assert (=> d!1156198 (= lt!1358974 (choose!23078 lt!1358789 (_2!23438 (v!39167 lt!1358776)) lt!1358789 lt!1358778 lt!1358783))))

(assert (=> d!1156198 (isPrefix!3529 lt!1358789 lt!1358783)))

(assert (=> d!1156198 (= (lemmaSamePrefixThenSameSuffix!1750 lt!1358789 (_2!23438 (v!39167 lt!1358776)) lt!1358789 lt!1358778 lt!1358783) lt!1358974)))

(declare-fun bs!584952 () Bool)

(assert (= bs!584952 d!1156198))

(declare-fun m!4461153 () Bool)

(assert (=> bs!584952 m!4461153))

(declare-fun m!4461155 () Bool)

(assert (=> bs!584952 m!4461155))

(assert (=> b!3900434 d!1156198))

(declare-fun d!1156200 () Bool)

(assert (=> d!1156200 (= (size!31059 (_1!23438 (v!39167 lt!1358776))) (size!31060 (originalCharacters!7034 (_1!23438 (v!39167 lt!1358776)))))))

(declare-fun Unit!59493 () Unit!59490)

(assert (=> d!1156200 (= (lemmaCharactersSize!1091 (_1!23438 (v!39167 lt!1358776))) Unit!59493)))

(declare-fun bs!584953 () Bool)

(assert (= bs!584953 d!1156200))

(assert (=> bs!584953 m!4460459))

(assert (=> b!3900434 d!1156200))

(declare-fun d!1156202 () Bool)

(declare-fun res!1578114 () Bool)

(declare-fun e!2411884 () Bool)

(assert (=> d!1156202 (=> (not res!1578114) (not e!2411884))))

(declare-fun validRegex!5156 (Regex!11339) Bool)

(assert (=> d!1156202 (= res!1578114 (validRegex!5156 (regex!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776))))))))

(assert (=> d!1156202 (= (ruleValid!2382 thiss!20629 (rule!9340 (_1!23438 (v!39167 lt!1358776)))) e!2411884)))

(declare-fun b!3900932 () Bool)

(declare-fun res!1578115 () Bool)

(assert (=> b!3900932 (=> (not res!1578115) (not e!2411884))))

(declare-fun nullable!3957 (Regex!11339) Bool)

(assert (=> b!3900932 (= res!1578115 (not (nullable!3957 (regex!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))))))

(declare-fun b!3900933 () Bool)

(assert (=> b!3900933 (= e!2411884 (not (= (tag!7294 (rule!9340 (_1!23438 (v!39167 lt!1358776)))) (String!47038 ""))))))

(assert (= (and d!1156202 res!1578114) b!3900932))

(assert (= (and b!3900932 res!1578115) b!3900933))

(declare-fun m!4461157 () Bool)

(assert (=> d!1156202 m!4461157))

(declare-fun m!4461159 () Bool)

(assert (=> b!3900932 m!4461159))

(assert (=> b!3900434 d!1156202))

(declare-fun d!1156204 () Bool)

(assert (=> d!1156204 (= (isEmpty!24589 prefixTokens!80) ((_ is Nil!41369) prefixTokens!80))))

(assert (=> b!3900413 d!1156204))

(declare-fun d!1156206 () Bool)

(declare-fun res!1578118 () Bool)

(declare-fun e!2411887 () Bool)

(assert (=> d!1156206 (=> (not res!1578118) (not e!2411887))))

(declare-fun rulesValid!2492 (LexerInterface!6023 List!41492) Bool)

(assert (=> d!1156206 (= res!1578118 (rulesValid!2492 thiss!20629 rules!2768))))

(assert (=> d!1156206 (= (rulesInvariant!5366 thiss!20629 rules!2768) e!2411887)))

(declare-fun b!3900936 () Bool)

(declare-datatypes ((List!41495 0))(
  ( (Nil!41371) (Cons!41371 (h!46791 String!47037) (t!320064 List!41495)) )
))
(declare-fun noDuplicateTag!2493 (LexerInterface!6023 List!41492 List!41495) Bool)

(assert (=> b!3900936 (= e!2411887 (noDuplicateTag!2493 thiss!20629 rules!2768 Nil!41371))))

(assert (= (and d!1156206 res!1578118) b!3900936))

(declare-fun m!4461161 () Bool)

(assert (=> d!1156206 m!4461161))

(declare-fun m!4461163 () Bool)

(assert (=> b!3900936 m!4461163))

(assert (=> b!3900399 d!1156206))

(declare-fun b!3900937 () Bool)

(declare-fun e!2411890 () Option!8854)

(declare-fun call!283854 () Option!8854)

(assert (=> b!3900937 (= e!2411890 call!283854)))

(declare-fun b!3900938 () Bool)

(declare-fun res!1578119 () Bool)

(declare-fun e!2411888 () Bool)

(assert (=> b!3900938 (=> (not res!1578119) (not e!2411888))))

(declare-fun lt!1358977 () Option!8854)

(assert (=> b!3900938 (= res!1578119 (matchR!5434 (regex!6434 (rule!9340 (_1!23438 (get!13677 lt!1358977)))) (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358977))))))))

(declare-fun d!1156208 () Bool)

(declare-fun e!2411889 () Bool)

(assert (=> d!1156208 e!2411889))

(declare-fun res!1578124 () Bool)

(assert (=> d!1156208 (=> res!1578124 e!2411889)))

(assert (=> d!1156208 (= res!1578124 (isEmpty!24592 lt!1358977))))

(assert (=> d!1156208 (= lt!1358977 e!2411890)))

(declare-fun c!678142 () Bool)

(assert (=> d!1156208 (= c!678142 (and ((_ is Cons!41368) rules!2768) ((_ is Nil!41368) (t!319921 rules!2768))))))

(declare-fun lt!1358976 () Unit!59490)

(declare-fun lt!1358975 () Unit!59490)

(assert (=> d!1156208 (= lt!1358976 lt!1358975)))

(assert (=> d!1156208 (isPrefix!3529 (++!10625 prefix!426 Nil!41366) (++!10625 prefix!426 Nil!41366))))

(assert (=> d!1156208 (= lt!1358975 (lemmaIsPrefixRefl!2236 (++!10625 prefix!426 Nil!41366) (++!10625 prefix!426 Nil!41366)))))

(assert (=> d!1156208 (rulesValidInductive!2306 thiss!20629 rules!2768)))

(assert (=> d!1156208 (= (maxPrefix!3327 thiss!20629 rules!2768 (++!10625 prefix!426 Nil!41366)) lt!1358977)))

(declare-fun b!3900939 () Bool)

(assert (=> b!3900939 (= e!2411889 e!2411888)))

(declare-fun res!1578121 () Bool)

(assert (=> b!3900939 (=> (not res!1578121) (not e!2411888))))

(assert (=> b!3900939 (= res!1578121 (isDefined!6905 lt!1358977))))

(declare-fun b!3900940 () Bool)

(declare-fun res!1578123 () Bool)

(assert (=> b!3900940 (=> (not res!1578123) (not e!2411888))))

(assert (=> b!3900940 (= res!1578123 (= (value!204003 (_1!23438 (get!13677 lt!1358977))) (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (get!13677 lt!1358977)))) (seqFromList!4701 (originalCharacters!7034 (_1!23438 (get!13677 lt!1358977)))))))))

(declare-fun b!3900941 () Bool)

(declare-fun lt!1358979 () Option!8854)

(declare-fun lt!1358978 () Option!8854)

(assert (=> b!3900941 (= e!2411890 (ite (and ((_ is None!8853) lt!1358979) ((_ is None!8853) lt!1358978)) None!8853 (ite ((_ is None!8853) lt!1358978) lt!1358979 (ite ((_ is None!8853) lt!1358979) lt!1358978 (ite (>= (size!31059 (_1!23438 (v!39167 lt!1358979))) (size!31059 (_1!23438 (v!39167 lt!1358978)))) lt!1358979 lt!1358978)))))))

(assert (=> b!3900941 (= lt!1358979 call!283854)))

(assert (=> b!3900941 (= lt!1358978 (maxPrefix!3327 thiss!20629 (t!319921 rules!2768) (++!10625 prefix!426 Nil!41366)))))

(declare-fun b!3900942 () Bool)

(declare-fun res!1578120 () Bool)

(assert (=> b!3900942 (=> (not res!1578120) (not e!2411888))))

(assert (=> b!3900942 (= res!1578120 (< (size!31060 (_2!23438 (get!13677 lt!1358977))) (size!31060 (++!10625 prefix!426 Nil!41366))))))

(declare-fun bm!283849 () Bool)

(assert (=> bm!283849 (= call!283854 (maxPrefixOneRule!2403 thiss!20629 (h!46788 rules!2768) (++!10625 prefix!426 Nil!41366)))))

(declare-fun b!3900943 () Bool)

(assert (=> b!3900943 (= e!2411888 (contains!8315 rules!2768 (rule!9340 (_1!23438 (get!13677 lt!1358977)))))))

(declare-fun b!3900944 () Bool)

(declare-fun res!1578122 () Bool)

(assert (=> b!3900944 (=> (not res!1578122) (not e!2411888))))

(assert (=> b!3900944 (= res!1578122 (= (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358977)))) (originalCharacters!7034 (_1!23438 (get!13677 lt!1358977)))))))

(declare-fun b!3900945 () Bool)

(declare-fun res!1578125 () Bool)

(assert (=> b!3900945 (=> (not res!1578125) (not e!2411888))))

(assert (=> b!3900945 (= res!1578125 (= (++!10625 (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358977)))) (_2!23438 (get!13677 lt!1358977))) (++!10625 prefix!426 Nil!41366)))))

(assert (= (and d!1156208 c!678142) b!3900937))

(assert (= (and d!1156208 (not c!678142)) b!3900941))

(assert (= (or b!3900937 b!3900941) bm!283849))

(assert (= (and d!1156208 (not res!1578124)) b!3900939))

(assert (= (and b!3900939 res!1578121) b!3900944))

(assert (= (and b!3900944 res!1578122) b!3900942))

(assert (= (and b!3900942 res!1578120) b!3900945))

(assert (= (and b!3900945 res!1578125) b!3900940))

(assert (= (and b!3900940 res!1578123) b!3900938))

(assert (= (and b!3900938 res!1578119) b!3900943))

(declare-fun m!4461165 () Bool)

(assert (=> b!3900944 m!4461165))

(declare-fun m!4461167 () Bool)

(assert (=> b!3900944 m!4461167))

(assert (=> b!3900944 m!4461167))

(declare-fun m!4461169 () Bool)

(assert (=> b!3900944 m!4461169))

(assert (=> b!3900940 m!4461165))

(declare-fun m!4461171 () Bool)

(assert (=> b!3900940 m!4461171))

(assert (=> b!3900940 m!4461171))

(declare-fun m!4461173 () Bool)

(assert (=> b!3900940 m!4461173))

(assert (=> b!3900941 m!4460393))

(declare-fun m!4461175 () Bool)

(assert (=> b!3900941 m!4461175))

(assert (=> b!3900938 m!4461165))

(assert (=> b!3900938 m!4461167))

(assert (=> b!3900938 m!4461167))

(assert (=> b!3900938 m!4461169))

(assert (=> b!3900938 m!4461169))

(declare-fun m!4461177 () Bool)

(assert (=> b!3900938 m!4461177))

(assert (=> b!3900942 m!4461165))

(declare-fun m!4461179 () Bool)

(assert (=> b!3900942 m!4461179))

(assert (=> b!3900942 m!4460393))

(declare-fun m!4461181 () Bool)

(assert (=> b!3900942 m!4461181))

(assert (=> b!3900945 m!4461165))

(assert (=> b!3900945 m!4461167))

(assert (=> b!3900945 m!4461167))

(assert (=> b!3900945 m!4461169))

(assert (=> b!3900945 m!4461169))

(declare-fun m!4461183 () Bool)

(assert (=> b!3900945 m!4461183))

(declare-fun m!4461185 () Bool)

(assert (=> d!1156208 m!4461185))

(assert (=> d!1156208 m!4460393))

(assert (=> d!1156208 m!4460393))

(declare-fun m!4461187 () Bool)

(assert (=> d!1156208 m!4461187))

(assert (=> d!1156208 m!4460393))

(assert (=> d!1156208 m!4460393))

(declare-fun m!4461189 () Bool)

(assert (=> d!1156208 m!4461189))

(declare-fun m!4461191 () Bool)

(assert (=> d!1156208 m!4461191))

(assert (=> bm!283849 m!4460393))

(declare-fun m!4461193 () Bool)

(assert (=> bm!283849 m!4461193))

(declare-fun m!4461195 () Bool)

(assert (=> b!3900939 m!4461195))

(assert (=> b!3900943 m!4461165))

(declare-fun m!4461197 () Bool)

(assert (=> b!3900943 m!4461197))

(assert (=> b!3900420 d!1156208))

(declare-fun d!1156210 () Bool)

(assert (=> d!1156210 (= (isDefined!6905 lt!1358791) (not (isEmpty!24592 lt!1358791)))))

(declare-fun bs!584954 () Bool)

(assert (= bs!584954 d!1156210))

(declare-fun m!4461199 () Bool)

(assert (=> bs!584954 m!4461199))

(assert (=> b!3900420 d!1156210))

(declare-fun b!3900949 () Bool)

(declare-fun e!2411891 () Bool)

(declare-fun lt!1358980 () List!41490)

(assert (=> b!3900949 (= e!2411891 (or (not (= Nil!41366 Nil!41366)) (= lt!1358980 prefix!426)))))

(declare-fun b!3900946 () Bool)

(declare-fun e!2411892 () List!41490)

(assert (=> b!3900946 (= e!2411892 Nil!41366)))

(declare-fun b!3900947 () Bool)

(assert (=> b!3900947 (= e!2411892 (Cons!41366 (h!46786 prefix!426) (++!10625 (t!319919 prefix!426) Nil!41366)))))

(declare-fun b!3900948 () Bool)

(declare-fun res!1578127 () Bool)

(assert (=> b!3900948 (=> (not res!1578127) (not e!2411891))))

(assert (=> b!3900948 (= res!1578127 (= (size!31060 lt!1358980) (+ (size!31060 prefix!426) (size!31060 Nil!41366))))))

(declare-fun d!1156212 () Bool)

(assert (=> d!1156212 e!2411891))

(declare-fun res!1578126 () Bool)

(assert (=> d!1156212 (=> (not res!1578126) (not e!2411891))))

(assert (=> d!1156212 (= res!1578126 (= (content!6193 lt!1358980) ((_ map or) (content!6193 prefix!426) (content!6193 Nil!41366))))))

(assert (=> d!1156212 (= lt!1358980 e!2411892)))

(declare-fun c!678143 () Bool)

(assert (=> d!1156212 (= c!678143 ((_ is Nil!41366) prefix!426))))

(assert (=> d!1156212 (= (++!10625 prefix!426 Nil!41366) lt!1358980)))

(assert (= (and d!1156212 c!678143) b!3900946))

(assert (= (and d!1156212 (not c!678143)) b!3900947))

(assert (= (and d!1156212 res!1578126) b!3900948))

(assert (= (and b!3900948 res!1578127) b!3900949))

(declare-fun m!4461201 () Bool)

(assert (=> b!3900947 m!4461201))

(declare-fun m!4461203 () Bool)

(assert (=> b!3900948 m!4461203))

(assert (=> b!3900948 m!4460889))

(assert (=> b!3900948 m!4460709))

(declare-fun m!4461205 () Bool)

(assert (=> d!1156212 m!4461205))

(assert (=> d!1156212 m!4460893))

(declare-fun m!4461207 () Bool)

(assert (=> d!1156212 m!4461207))

(assert (=> b!3900420 d!1156212))

(declare-fun d!1156214 () Bool)

(assert (=> d!1156214 (= (maxPrefix!3327 thiss!20629 rules!2768 (++!10625 prefix!426 Nil!41366)) (Some!8853 (tuple2!40609 (_1!23438 (v!39167 lt!1358776)) Nil!41366)))))

(declare-fun lt!1358983 () Unit!59490)

(declare-fun choose!23080 (LexerInterface!6023 List!41492 List!41490 List!41490 List!41490 Token!12006 List!41490 List!41490) Unit!59490)

(assert (=> d!1156214 (= lt!1358983 (choose!23080 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41366 (_1!23438 (v!39167 lt!1358776)) suffix!1176 Nil!41366))))

(assert (=> d!1156214 (not (isEmpty!24588 rules!2768))))

(assert (=> d!1156214 (= (lemmaMaxPrefixThenWithShorterSuffix!36 thiss!20629 rules!2768 prefix!426 suffix!1176 Nil!41366 (_1!23438 (v!39167 lt!1358776)) suffix!1176 Nil!41366) lt!1358983)))

(declare-fun bs!584955 () Bool)

(assert (= bs!584955 d!1156214))

(assert (=> bs!584955 m!4460393))

(assert (=> bs!584955 m!4460393))

(assert (=> bs!584955 m!4460395))

(declare-fun m!4461209 () Bool)

(assert (=> bs!584955 m!4461209))

(assert (=> bs!584955 m!4460385))

(assert (=> b!3900420 d!1156214))

(declare-fun b!3900950 () Bool)

(declare-fun e!2411895 () Option!8854)

(declare-fun call!283855 () Option!8854)

(assert (=> b!3900950 (= e!2411895 call!283855)))

(declare-fun b!3900951 () Bool)

(declare-fun res!1578128 () Bool)

(declare-fun e!2411893 () Bool)

(assert (=> b!3900951 (=> (not res!1578128) (not e!2411893))))

(declare-fun lt!1358986 () Option!8854)

(assert (=> b!3900951 (= res!1578128 (matchR!5434 (regex!6434 (rule!9340 (_1!23438 (get!13677 lt!1358986)))) (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358986))))))))

(declare-fun d!1156216 () Bool)

(declare-fun e!2411894 () Bool)

(assert (=> d!1156216 e!2411894))

(declare-fun res!1578133 () Bool)

(assert (=> d!1156216 (=> res!1578133 e!2411894)))

(assert (=> d!1156216 (= res!1578133 (isEmpty!24592 lt!1358986))))

(assert (=> d!1156216 (= lt!1358986 e!2411895)))

(declare-fun c!678144 () Bool)

(assert (=> d!1156216 (= c!678144 (and ((_ is Cons!41368) rules!2768) ((_ is Nil!41368) (t!319921 rules!2768))))))

(declare-fun lt!1358985 () Unit!59490)

(declare-fun lt!1358984 () Unit!59490)

(assert (=> d!1156216 (= lt!1358985 lt!1358984)))

(assert (=> d!1156216 (isPrefix!3529 prefix!426 prefix!426)))

(assert (=> d!1156216 (= lt!1358984 (lemmaIsPrefixRefl!2236 prefix!426 prefix!426))))

(assert (=> d!1156216 (rulesValidInductive!2306 thiss!20629 rules!2768)))

(assert (=> d!1156216 (= (maxPrefix!3327 thiss!20629 rules!2768 prefix!426) lt!1358986)))

(declare-fun b!3900952 () Bool)

(assert (=> b!3900952 (= e!2411894 e!2411893)))

(declare-fun res!1578130 () Bool)

(assert (=> b!3900952 (=> (not res!1578130) (not e!2411893))))

(assert (=> b!3900952 (= res!1578130 (isDefined!6905 lt!1358986))))

(declare-fun b!3900953 () Bool)

(declare-fun res!1578132 () Bool)

(assert (=> b!3900953 (=> (not res!1578132) (not e!2411893))))

(assert (=> b!3900953 (= res!1578132 (= (value!204003 (_1!23438 (get!13677 lt!1358986))) (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (get!13677 lt!1358986)))) (seqFromList!4701 (originalCharacters!7034 (_1!23438 (get!13677 lt!1358986)))))))))

(declare-fun b!3900954 () Bool)

(declare-fun lt!1358988 () Option!8854)

(declare-fun lt!1358987 () Option!8854)

(assert (=> b!3900954 (= e!2411895 (ite (and ((_ is None!8853) lt!1358988) ((_ is None!8853) lt!1358987)) None!8853 (ite ((_ is None!8853) lt!1358987) lt!1358988 (ite ((_ is None!8853) lt!1358988) lt!1358987 (ite (>= (size!31059 (_1!23438 (v!39167 lt!1358988))) (size!31059 (_1!23438 (v!39167 lt!1358987)))) lt!1358988 lt!1358987)))))))

(assert (=> b!3900954 (= lt!1358988 call!283855)))

(assert (=> b!3900954 (= lt!1358987 (maxPrefix!3327 thiss!20629 (t!319921 rules!2768) prefix!426))))

(declare-fun b!3900955 () Bool)

(declare-fun res!1578129 () Bool)

(assert (=> b!3900955 (=> (not res!1578129) (not e!2411893))))

(assert (=> b!3900955 (= res!1578129 (< (size!31060 (_2!23438 (get!13677 lt!1358986))) (size!31060 prefix!426)))))

(declare-fun bm!283850 () Bool)

(assert (=> bm!283850 (= call!283855 (maxPrefixOneRule!2403 thiss!20629 (h!46788 rules!2768) prefix!426))))

(declare-fun b!3900956 () Bool)

(assert (=> b!3900956 (= e!2411893 (contains!8315 rules!2768 (rule!9340 (_1!23438 (get!13677 lt!1358986)))))))

(declare-fun b!3900957 () Bool)

(declare-fun res!1578131 () Bool)

(assert (=> b!3900957 (=> (not res!1578131) (not e!2411893))))

(assert (=> b!3900957 (= res!1578131 (= (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358986)))) (originalCharacters!7034 (_1!23438 (get!13677 lt!1358986)))))))

(declare-fun b!3900958 () Bool)

(declare-fun res!1578134 () Bool)

(assert (=> b!3900958 (=> (not res!1578134) (not e!2411893))))

(assert (=> b!3900958 (= res!1578134 (= (++!10625 (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358986)))) (_2!23438 (get!13677 lt!1358986))) prefix!426))))

(assert (= (and d!1156216 c!678144) b!3900950))

(assert (= (and d!1156216 (not c!678144)) b!3900954))

(assert (= (or b!3900950 b!3900954) bm!283850))

(assert (= (and d!1156216 (not res!1578133)) b!3900952))

(assert (= (and b!3900952 res!1578130) b!3900957))

(assert (= (and b!3900957 res!1578131) b!3900955))

(assert (= (and b!3900955 res!1578129) b!3900958))

(assert (= (and b!3900958 res!1578134) b!3900953))

(assert (= (and b!3900953 res!1578132) b!3900951))

(assert (= (and b!3900951 res!1578128) b!3900956))

(declare-fun m!4461211 () Bool)

(assert (=> b!3900957 m!4461211))

(declare-fun m!4461213 () Bool)

(assert (=> b!3900957 m!4461213))

(assert (=> b!3900957 m!4461213))

(declare-fun m!4461215 () Bool)

(assert (=> b!3900957 m!4461215))

(assert (=> b!3900953 m!4461211))

(declare-fun m!4461217 () Bool)

(assert (=> b!3900953 m!4461217))

(assert (=> b!3900953 m!4461217))

(declare-fun m!4461219 () Bool)

(assert (=> b!3900953 m!4461219))

(declare-fun m!4461221 () Bool)

(assert (=> b!3900954 m!4461221))

(assert (=> b!3900951 m!4461211))

(assert (=> b!3900951 m!4461213))

(assert (=> b!3900951 m!4461213))

(assert (=> b!3900951 m!4461215))

(assert (=> b!3900951 m!4461215))

(declare-fun m!4461223 () Bool)

(assert (=> b!3900951 m!4461223))

(assert (=> b!3900955 m!4461211))

(declare-fun m!4461225 () Bool)

(assert (=> b!3900955 m!4461225))

(assert (=> b!3900955 m!4460889))

(assert (=> b!3900958 m!4461211))

(assert (=> b!3900958 m!4461213))

(assert (=> b!3900958 m!4461213))

(assert (=> b!3900958 m!4461215))

(assert (=> b!3900958 m!4461215))

(declare-fun m!4461227 () Bool)

(assert (=> b!3900958 m!4461227))

(declare-fun m!4461229 () Bool)

(assert (=> d!1156216 m!4461229))

(declare-fun m!4461231 () Bool)

(assert (=> d!1156216 m!4461231))

(declare-fun m!4461233 () Bool)

(assert (=> d!1156216 m!4461233))

(assert (=> d!1156216 m!4461191))

(declare-fun m!4461235 () Bool)

(assert (=> bm!283850 m!4461235))

(declare-fun m!4461237 () Bool)

(assert (=> b!3900952 m!4461237))

(assert (=> b!3900956 m!4461211))

(declare-fun m!4461239 () Bool)

(assert (=> b!3900956 m!4461239))

(assert (=> b!3900420 d!1156216))

(declare-fun b!3900959 () Bool)

(declare-fun e!2411896 () Bool)

(declare-fun e!2411898 () Bool)

(assert (=> b!3900959 (= e!2411896 e!2411898)))

(declare-fun res!1578136 () Bool)

(assert (=> b!3900959 (=> (not res!1578136) (not e!2411898))))

(assert (=> b!3900959 (= res!1578136 (not ((_ is Nil!41366) lt!1358783)))))

(declare-fun b!3900960 () Bool)

(declare-fun res!1578137 () Bool)

(assert (=> b!3900960 (=> (not res!1578137) (not e!2411898))))

(assert (=> b!3900960 (= res!1578137 (= (head!8247 lt!1358783) (head!8247 lt!1358783)))))

(declare-fun d!1156218 () Bool)

(declare-fun e!2411897 () Bool)

(assert (=> d!1156218 e!2411897))

(declare-fun res!1578135 () Bool)

(assert (=> d!1156218 (=> res!1578135 e!2411897)))

(declare-fun lt!1358989 () Bool)

(assert (=> d!1156218 (= res!1578135 (not lt!1358989))))

(assert (=> d!1156218 (= lt!1358989 e!2411896)))

(declare-fun res!1578138 () Bool)

(assert (=> d!1156218 (=> res!1578138 e!2411896)))

(assert (=> d!1156218 (= res!1578138 ((_ is Nil!41366) lt!1358783))))

(assert (=> d!1156218 (= (isPrefix!3529 lt!1358783 lt!1358783) lt!1358989)))

(declare-fun b!3900961 () Bool)

(assert (=> b!3900961 (= e!2411898 (isPrefix!3529 (tail!5964 lt!1358783) (tail!5964 lt!1358783)))))

(declare-fun b!3900962 () Bool)

(assert (=> b!3900962 (= e!2411897 (>= (size!31060 lt!1358783) (size!31060 lt!1358783)))))

(assert (= (and d!1156218 (not res!1578138)) b!3900959))

(assert (= (and b!3900959 res!1578136) b!3900960))

(assert (= (and b!3900960 res!1578137) b!3900961))

(assert (= (and d!1156218 (not res!1578135)) b!3900962))

(declare-fun m!4461241 () Bool)

(assert (=> b!3900960 m!4461241))

(assert (=> b!3900960 m!4461241))

(assert (=> b!3900961 m!4461133))

(assert (=> b!3900961 m!4461133))

(assert (=> b!3900961 m!4461133))

(assert (=> b!3900961 m!4461133))

(declare-fun m!4461243 () Bool)

(assert (=> b!3900961 m!4461243))

(assert (=> b!3900962 m!4460571))

(assert (=> b!3900962 m!4460571))

(assert (=> b!3900422 d!1156218))

(declare-fun d!1156220 () Bool)

(assert (=> d!1156220 (isPrefix!3529 lt!1358783 lt!1358783)))

(declare-fun lt!1358992 () Unit!59490)

(declare-fun choose!23081 (List!41490 List!41490) Unit!59490)

(assert (=> d!1156220 (= lt!1358992 (choose!23081 lt!1358783 lt!1358783))))

(assert (=> d!1156220 (= (lemmaIsPrefixRefl!2236 lt!1358783 lt!1358783) lt!1358992)))

(declare-fun bs!584956 () Bool)

(assert (= bs!584956 d!1156220))

(assert (=> bs!584956 m!4460419))

(declare-fun m!4461245 () Bool)

(assert (=> bs!584956 m!4461245))

(assert (=> b!3900422 d!1156220))

(declare-fun d!1156222 () Bool)

(assert (=> d!1156222 (= (isEmpty!24588 rules!2768) ((_ is Nil!41368) rules!2768))))

(assert (=> b!3900400 d!1156222))

(declare-fun b!3900963 () Bool)

(declare-fun e!2411901 () Option!8854)

(declare-fun call!283856 () Option!8854)

(assert (=> b!3900963 (= e!2411901 call!283856)))

(declare-fun b!3900964 () Bool)

(declare-fun res!1578139 () Bool)

(declare-fun e!2411899 () Bool)

(assert (=> b!3900964 (=> (not res!1578139) (not e!2411899))))

(declare-fun lt!1358995 () Option!8854)

(assert (=> b!3900964 (= res!1578139 (matchR!5434 (regex!6434 (rule!9340 (_1!23438 (get!13677 lt!1358995)))) (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358995))))))))

(declare-fun d!1156224 () Bool)

(declare-fun e!2411900 () Bool)

(assert (=> d!1156224 e!2411900))

(declare-fun res!1578144 () Bool)

(assert (=> d!1156224 (=> res!1578144 e!2411900)))

(assert (=> d!1156224 (= res!1578144 (isEmpty!24592 lt!1358995))))

(assert (=> d!1156224 (= lt!1358995 e!2411901)))

(declare-fun c!678145 () Bool)

(assert (=> d!1156224 (= c!678145 (and ((_ is Cons!41368) rules!2768) ((_ is Nil!41368) (t!319921 rules!2768))))))

(declare-fun lt!1358994 () Unit!59490)

(declare-fun lt!1358993 () Unit!59490)

(assert (=> d!1156224 (= lt!1358994 lt!1358993)))

(assert (=> d!1156224 (isPrefix!3529 lt!1358783 lt!1358783)))

(assert (=> d!1156224 (= lt!1358993 (lemmaIsPrefixRefl!2236 lt!1358783 lt!1358783))))

(assert (=> d!1156224 (rulesValidInductive!2306 thiss!20629 rules!2768)))

(assert (=> d!1156224 (= (maxPrefix!3327 thiss!20629 rules!2768 lt!1358783) lt!1358995)))

(declare-fun b!3900965 () Bool)

(assert (=> b!3900965 (= e!2411900 e!2411899)))

(declare-fun res!1578141 () Bool)

(assert (=> b!3900965 (=> (not res!1578141) (not e!2411899))))

(assert (=> b!3900965 (= res!1578141 (isDefined!6905 lt!1358995))))

(declare-fun b!3900966 () Bool)

(declare-fun res!1578143 () Bool)

(assert (=> b!3900966 (=> (not res!1578143) (not e!2411899))))

(assert (=> b!3900966 (= res!1578143 (= (value!204003 (_1!23438 (get!13677 lt!1358995))) (apply!9673 (transformation!6434 (rule!9340 (_1!23438 (get!13677 lt!1358995)))) (seqFromList!4701 (originalCharacters!7034 (_1!23438 (get!13677 lt!1358995)))))))))

(declare-fun b!3900967 () Bool)

(declare-fun lt!1358997 () Option!8854)

(declare-fun lt!1358996 () Option!8854)

(assert (=> b!3900967 (= e!2411901 (ite (and ((_ is None!8853) lt!1358997) ((_ is None!8853) lt!1358996)) None!8853 (ite ((_ is None!8853) lt!1358996) lt!1358997 (ite ((_ is None!8853) lt!1358997) lt!1358996 (ite (>= (size!31059 (_1!23438 (v!39167 lt!1358997))) (size!31059 (_1!23438 (v!39167 lt!1358996)))) lt!1358997 lt!1358996)))))))

(assert (=> b!3900967 (= lt!1358997 call!283856)))

(assert (=> b!3900967 (= lt!1358996 (maxPrefix!3327 thiss!20629 (t!319921 rules!2768) lt!1358783))))

(declare-fun b!3900968 () Bool)

(declare-fun res!1578140 () Bool)

(assert (=> b!3900968 (=> (not res!1578140) (not e!2411899))))

(assert (=> b!3900968 (= res!1578140 (< (size!31060 (_2!23438 (get!13677 lt!1358995))) (size!31060 lt!1358783)))))

(declare-fun bm!283851 () Bool)

(assert (=> bm!283851 (= call!283856 (maxPrefixOneRule!2403 thiss!20629 (h!46788 rules!2768) lt!1358783))))

(declare-fun b!3900969 () Bool)

(assert (=> b!3900969 (= e!2411899 (contains!8315 rules!2768 (rule!9340 (_1!23438 (get!13677 lt!1358995)))))))

(declare-fun b!3900970 () Bool)

(declare-fun res!1578142 () Bool)

(assert (=> b!3900970 (=> (not res!1578142) (not e!2411899))))

(assert (=> b!3900970 (= res!1578142 (= (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358995)))) (originalCharacters!7034 (_1!23438 (get!13677 lt!1358995)))))))

(declare-fun b!3900971 () Bool)

(declare-fun res!1578145 () Bool)

(assert (=> b!3900971 (=> (not res!1578145) (not e!2411899))))

(assert (=> b!3900971 (= res!1578145 (= (++!10625 (list!15376 (charsOf!4258 (_1!23438 (get!13677 lt!1358995)))) (_2!23438 (get!13677 lt!1358995))) lt!1358783))))

(assert (= (and d!1156224 c!678145) b!3900963))

(assert (= (and d!1156224 (not c!678145)) b!3900967))

(assert (= (or b!3900963 b!3900967) bm!283851))

(assert (= (and d!1156224 (not res!1578144)) b!3900965))

(assert (= (and b!3900965 res!1578141) b!3900970))

(assert (= (and b!3900970 res!1578142) b!3900968))

(assert (= (and b!3900968 res!1578140) b!3900971))

(assert (= (and b!3900971 res!1578145) b!3900966))

(assert (= (and b!3900966 res!1578143) b!3900964))

(assert (= (and b!3900964 res!1578139) b!3900969))

(declare-fun m!4461247 () Bool)

(assert (=> b!3900970 m!4461247))

(declare-fun m!4461249 () Bool)

(assert (=> b!3900970 m!4461249))

(assert (=> b!3900970 m!4461249))

(declare-fun m!4461251 () Bool)

(assert (=> b!3900970 m!4461251))

(assert (=> b!3900966 m!4461247))

(declare-fun m!4461253 () Bool)

(assert (=> b!3900966 m!4461253))

(assert (=> b!3900966 m!4461253))

(declare-fun m!4461255 () Bool)

(assert (=> b!3900966 m!4461255))

(assert (=> b!3900967 m!4460379))

(assert (=> b!3900964 m!4461247))

(assert (=> b!3900964 m!4461249))

(assert (=> b!3900964 m!4461249))

(assert (=> b!3900964 m!4461251))

(assert (=> b!3900964 m!4461251))

(declare-fun m!4461257 () Bool)

(assert (=> b!3900964 m!4461257))

(assert (=> b!3900968 m!4461247))

(declare-fun m!4461259 () Bool)

(assert (=> b!3900968 m!4461259))

(assert (=> b!3900968 m!4460571))

(assert (=> b!3900971 m!4461247))

(assert (=> b!3900971 m!4461249))

(assert (=> b!3900971 m!4461249))

(assert (=> b!3900971 m!4461251))

(assert (=> b!3900971 m!4461251))

(declare-fun m!4461261 () Bool)

(assert (=> b!3900971 m!4461261))

(declare-fun m!4461263 () Bool)

(assert (=> d!1156224 m!4461263))

(assert (=> d!1156224 m!4460419))

(assert (=> d!1156224 m!4460421))

(assert (=> d!1156224 m!4461191))

(assert (=> bm!283851 m!4460411))

(declare-fun m!4461265 () Bool)

(assert (=> b!3900965 m!4461265))

(assert (=> b!3900969 m!4461247))

(declare-fun m!4461267 () Bool)

(assert (=> b!3900969 m!4461267))

(assert (=> b!3900417 d!1156224))

(declare-fun d!1156226 () Bool)

(declare-fun res!1578146 () Bool)

(declare-fun e!2411902 () Bool)

(assert (=> d!1156226 (=> (not res!1578146) (not e!2411902))))

(assert (=> d!1156226 (= res!1578146 (not (isEmpty!24590 (originalCharacters!7034 (h!46789 prefixTokens!80)))))))

(assert (=> d!1156226 (= (inv!55538 (h!46789 prefixTokens!80)) e!2411902)))

(declare-fun b!3900972 () Bool)

(declare-fun res!1578147 () Bool)

(assert (=> b!3900972 (=> (not res!1578147) (not e!2411902))))

(assert (=> b!3900972 (= res!1578147 (= (originalCharacters!7034 (h!46789 prefixTokens!80)) (list!15376 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (value!204003 (h!46789 prefixTokens!80))))))))

(declare-fun b!3900973 () Bool)

(assert (=> b!3900973 (= e!2411902 (= (size!31059 (h!46789 prefixTokens!80)) (size!31060 (originalCharacters!7034 (h!46789 prefixTokens!80)))))))

(assert (= (and d!1156226 res!1578146) b!3900972))

(assert (= (and b!3900972 res!1578147) b!3900973))

(declare-fun b_lambda!113991 () Bool)

(assert (=> (not b_lambda!113991) (not b!3900972)))

(declare-fun t!320026 () Bool)

(declare-fun tb!229819 () Bool)

(assert (=> (and b!3900404 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320026) tb!229819))

(declare-fun b!3900974 () Bool)

(declare-fun e!2411903 () Bool)

(declare-fun tp!1186927 () Bool)

(assert (=> b!3900974 (= e!2411903 (and (inv!55541 (c!678054 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (value!204003 (h!46789 prefixTokens!80))))) tp!1186927))))

(declare-fun result!279040 () Bool)

(assert (=> tb!229819 (= result!279040 (and (inv!55542 (dynLambda!17765 (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (value!204003 (h!46789 prefixTokens!80)))) e!2411903))))

(assert (= tb!229819 b!3900974))

(declare-fun m!4461269 () Bool)

(assert (=> b!3900974 m!4461269))

(declare-fun m!4461271 () Bool)

(assert (=> tb!229819 m!4461271))

(assert (=> b!3900972 t!320026))

(declare-fun b_and!295039 () Bool)

(assert (= b_and!295023 (and (=> t!320026 result!279040) b_and!295039)))

(declare-fun t!320028 () Bool)

(declare-fun tb!229821 () Bool)

(assert (=> (and b!3900407 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320028) tb!229821))

(declare-fun result!279042 () Bool)

(assert (= result!279042 result!279040))

(assert (=> b!3900972 t!320028))

(declare-fun b_and!295041 () Bool)

(assert (= b_and!295025 (and (=> t!320028 result!279042) b_and!295041)))

(declare-fun t!320030 () Bool)

(declare-fun tb!229823 () Bool)

(assert (=> (and b!3900436 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320030) tb!229823))

(declare-fun result!279044 () Bool)

(assert (= result!279044 result!279040))

(assert (=> b!3900972 t!320030))

(declare-fun b_and!295043 () Bool)

(assert (= b_and!295027 (and (=> t!320030 result!279044) b_and!295043)))

(declare-fun t!320032 () Bool)

(declare-fun tb!229825 () Bool)

(assert (=> (and b!3900409 (= (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320032) tb!229825))

(declare-fun result!279046 () Bool)

(assert (= result!279046 result!279040))

(assert (=> b!3900972 t!320032))

(declare-fun b_and!295045 () Bool)

(assert (= b_and!295029 (and (=> t!320032 result!279046) b_and!295045)))

(declare-fun m!4461273 () Bool)

(assert (=> d!1156226 m!4461273))

(declare-fun m!4461275 () Bool)

(assert (=> b!3900972 m!4461275))

(assert (=> b!3900972 m!4461275))

(declare-fun m!4461277 () Bool)

(assert (=> b!3900972 m!4461277))

(declare-fun m!4461279 () Bool)

(assert (=> b!3900973 m!4461279))

(assert (=> b!3900419 d!1156226))

(declare-fun b!3900987 () Bool)

(declare-fun e!2411906 () Bool)

(declare-fun tp!1186942 () Bool)

(assert (=> b!3900987 (= e!2411906 tp!1186942)))

(declare-fun b!3900985 () Bool)

(assert (=> b!3900985 (= e!2411906 tp_is_empty!19649)))

(assert (=> b!3900425 (= tp!1186826 e!2411906)))

(declare-fun b!3900986 () Bool)

(declare-fun tp!1186940 () Bool)

(declare-fun tp!1186939 () Bool)

(assert (=> b!3900986 (= e!2411906 (and tp!1186940 tp!1186939))))

(declare-fun b!3900988 () Bool)

(declare-fun tp!1186938 () Bool)

(declare-fun tp!1186941 () Bool)

(assert (=> b!3900988 (= e!2411906 (and tp!1186938 tp!1186941))))

(assert (= (and b!3900425 ((_ is ElementMatch!11339) (regex!6434 (rule!9340 (h!46789 suffixTokens!72))))) b!3900985))

(assert (= (and b!3900425 ((_ is Concat!18004) (regex!6434 (rule!9340 (h!46789 suffixTokens!72))))) b!3900986))

(assert (= (and b!3900425 ((_ is Star!11339) (regex!6434 (rule!9340 (h!46789 suffixTokens!72))))) b!3900987))

(assert (= (and b!3900425 ((_ is Union!11339) (regex!6434 (rule!9340 (h!46789 suffixTokens!72))))) b!3900988))

(declare-fun b!3900991 () Bool)

(declare-fun e!2411907 () Bool)

(declare-fun tp!1186947 () Bool)

(assert (=> b!3900991 (= e!2411907 tp!1186947)))

(declare-fun b!3900989 () Bool)

(assert (=> b!3900989 (= e!2411907 tp_is_empty!19649)))

(assert (=> b!3900406 (= tp!1186825 e!2411907)))

(declare-fun b!3900990 () Bool)

(declare-fun tp!1186945 () Bool)

(declare-fun tp!1186944 () Bool)

(assert (=> b!3900990 (= e!2411907 (and tp!1186945 tp!1186944))))

(declare-fun b!3900992 () Bool)

(declare-fun tp!1186943 () Bool)

(declare-fun tp!1186946 () Bool)

(assert (=> b!3900992 (= e!2411907 (and tp!1186943 tp!1186946))))

(assert (= (and b!3900406 ((_ is ElementMatch!11339) (regex!6434 (rule!9340 (h!46789 prefixTokens!80))))) b!3900989))

(assert (= (and b!3900406 ((_ is Concat!18004) (regex!6434 (rule!9340 (h!46789 prefixTokens!80))))) b!3900990))

(assert (= (and b!3900406 ((_ is Star!11339) (regex!6434 (rule!9340 (h!46789 prefixTokens!80))))) b!3900991))

(assert (= (and b!3900406 ((_ is Union!11339) (regex!6434 (rule!9340 (h!46789 prefixTokens!80))))) b!3900992))

(declare-fun b!3900997 () Bool)

(declare-fun e!2411910 () Bool)

(declare-fun tp!1186950 () Bool)

(assert (=> b!3900997 (= e!2411910 (and tp_is_empty!19649 tp!1186950))))

(assert (=> b!3900427 (= tp!1186824 e!2411910)))

(assert (= (and b!3900427 ((_ is Cons!41366) (t!319919 suffixResult!91))) b!3900997))

(declare-fun b!3900998 () Bool)

(declare-fun e!2411911 () Bool)

(declare-fun tp!1186951 () Bool)

(assert (=> b!3900998 (= e!2411911 (and tp_is_empty!19649 tp!1186951))))

(assert (=> b!3900416 (= tp!1186836 e!2411911)))

(assert (= (and b!3900416 ((_ is Cons!41366) (_2!23438 (v!39167 err!4385)))) b!3900998))

(declare-fun b!3900999 () Bool)

(declare-fun e!2411912 () Bool)

(declare-fun tp!1186952 () Bool)

(assert (=> b!3900999 (= e!2411912 (and tp_is_empty!19649 tp!1186952))))

(assert (=> b!3900405 (= tp!1186832 e!2411912)))

(assert (= (and b!3900405 ((_ is Cons!41366) (originalCharacters!7034 (h!46789 suffixTokens!72)))) b!3900999))

(declare-fun b!3901013 () Bool)

(declare-fun b_free!105653 () Bool)

(declare-fun b_next!106357 () Bool)

(assert (=> b!3901013 (= b_free!105653 (not b_next!106357))))

(declare-fun t!320034 () Bool)

(declare-fun tb!229827 () Bool)

(assert (=> (and b!3901013 (= (toValue!8874 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320034) tb!229827))

(declare-fun result!279054 () Bool)

(assert (= result!279054 result!279030))

(assert (=> d!1156178 t!320034))

(declare-fun b_and!295047 () Bool)

(declare-fun tp!1186965 () Bool)

(assert (=> b!3901013 (= tp!1186965 (and (=> t!320034 result!279054) b_and!295047))))

(declare-fun b_free!105655 () Bool)

(declare-fun b_next!106359 () Bool)

(assert (=> b!3901013 (= b_free!105655 (not b_next!106359))))

(declare-fun t!320036 () Bool)

(declare-fun tb!229829 () Bool)

(assert (=> (and b!3901013 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!320036) tb!229829))

(declare-fun result!279056 () Bool)

(assert (= result!279056 result!278966))

(assert (=> b!3900763 t!320036))

(declare-fun t!320038 () Bool)

(declare-fun tb!229831 () Bool)

(assert (=> (and b!3901013 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!320038) tb!229831))

(declare-fun result!279058 () Bool)

(assert (= result!279058 result!278976))

(assert (=> b!3900770 t!320038))

(declare-fun tb!229833 () Bool)

(declare-fun t!320040 () Bool)

(assert (=> (and b!3901013 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320040) tb!229833))

(declare-fun result!279060 () Bool)

(assert (= result!279060 result!279022))

(assert (=> d!1156176 t!320040))

(declare-fun tb!229835 () Bool)

(declare-fun t!320042 () Bool)

(assert (=> (and b!3901013 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320042) tb!229835))

(declare-fun result!279062 () Bool)

(assert (= result!279062 result!279040))

(assert (=> b!3900972 t!320042))

(declare-fun tp!1186964 () Bool)

(declare-fun b_and!295049 () Bool)

(assert (=> b!3901013 (= tp!1186964 (and (=> t!320036 result!279056) (=> t!320038 result!279058) (=> t!320040 result!279060) (=> t!320042 result!279062) b_and!295049))))

(declare-fun e!2411930 () Bool)

(assert (=> b!3900433 (= tp!1186831 e!2411930)))

(declare-fun e!2411925 () Bool)

(declare-fun e!2411928 () Bool)

(declare-fun tp!1186966 () Bool)

(declare-fun b!3901011 () Bool)

(assert (=> b!3901011 (= e!2411925 (and (inv!21 (value!204003 (h!46789 (t!319922 suffixTokens!72)))) e!2411928 tp!1186966))))

(declare-fun b!3901012 () Bool)

(declare-fun e!2411927 () Bool)

(declare-fun tp!1186963 () Bool)

(assert (=> b!3901012 (= e!2411928 (and tp!1186963 (inv!55534 (tag!7294 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (inv!55537 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) e!2411927))))

(declare-fun tp!1186967 () Bool)

(declare-fun b!3901010 () Bool)

(assert (=> b!3901010 (= e!2411930 (and (inv!55538 (h!46789 (t!319922 suffixTokens!72))) e!2411925 tp!1186967))))

(assert (=> b!3901013 (= e!2411927 (and tp!1186965 tp!1186964))))

(assert (= b!3901012 b!3901013))

(assert (= b!3901011 b!3901012))

(assert (= b!3901010 b!3901011))

(assert (= (and b!3900433 ((_ is Cons!41369) (t!319922 suffixTokens!72))) b!3901010))

(declare-fun m!4461281 () Bool)

(assert (=> b!3901011 m!4461281))

(declare-fun m!4461283 () Bool)

(assert (=> b!3901012 m!4461283))

(declare-fun m!4461285 () Bool)

(assert (=> b!3901012 m!4461285))

(declare-fun m!4461287 () Bool)

(assert (=> b!3901010 m!4461287))

(declare-fun b!3901016 () Bool)

(declare-fun e!2411931 () Bool)

(declare-fun tp!1186972 () Bool)

(assert (=> b!3901016 (= e!2411931 tp!1186972)))

(declare-fun b!3901014 () Bool)

(assert (=> b!3901014 (= e!2411931 tp_is_empty!19649)))

(assert (=> b!3900423 (= tp!1186835 e!2411931)))

(declare-fun b!3901015 () Bool)

(declare-fun tp!1186970 () Bool)

(declare-fun tp!1186969 () Bool)

(assert (=> b!3901015 (= e!2411931 (and tp!1186970 tp!1186969))))

(declare-fun b!3901017 () Bool)

(declare-fun tp!1186968 () Bool)

(declare-fun tp!1186971 () Bool)

(assert (=> b!3901017 (= e!2411931 (and tp!1186968 tp!1186971))))

(assert (= (and b!3900423 ((_ is ElementMatch!11339) (regex!6434 (h!46788 rules!2768)))) b!3901014))

(assert (= (and b!3900423 ((_ is Concat!18004) (regex!6434 (h!46788 rules!2768)))) b!3901015))

(assert (= (and b!3900423 ((_ is Star!11339) (regex!6434 (h!46788 rules!2768)))) b!3901016))

(assert (= (and b!3900423 ((_ is Union!11339) (regex!6434 (h!46788 rules!2768)))) b!3901017))

(declare-fun b!3901020 () Bool)

(declare-fun e!2411932 () Bool)

(declare-fun tp!1186977 () Bool)

(assert (=> b!3901020 (= e!2411932 tp!1186977)))

(declare-fun b!3901018 () Bool)

(assert (=> b!3901018 (= e!2411932 tp_is_empty!19649)))

(assert (=> b!3900412 (= tp!1186823 e!2411932)))

(declare-fun b!3901019 () Bool)

(declare-fun tp!1186975 () Bool)

(declare-fun tp!1186974 () Bool)

(assert (=> b!3901019 (= e!2411932 (and tp!1186975 tp!1186974))))

(declare-fun b!3901021 () Bool)

(declare-fun tp!1186973 () Bool)

(declare-fun tp!1186976 () Bool)

(assert (=> b!3901021 (= e!2411932 (and tp!1186973 tp!1186976))))

(assert (= (and b!3900412 ((_ is ElementMatch!11339) (regex!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) b!3901018))

(assert (= (and b!3900412 ((_ is Concat!18004) (regex!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) b!3901019))

(assert (= (and b!3900412 ((_ is Star!11339) (regex!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) b!3901020))

(assert (= (and b!3900412 ((_ is Union!11339) (regex!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) b!3901021))

(declare-fun b!3901022 () Bool)

(declare-fun e!2411933 () Bool)

(declare-fun tp!1186978 () Bool)

(assert (=> b!3901022 (= e!2411933 (and tp_is_empty!19649 tp!1186978))))

(assert (=> b!3900414 (= tp!1186844 e!2411933)))

(assert (= (and b!3900414 ((_ is Cons!41366) (t!319919 suffix!1176))) b!3901022))

(declare-fun b!3901033 () Bool)

(declare-fun b_free!105657 () Bool)

(declare-fun b_next!106361 () Bool)

(assert (=> b!3901033 (= b_free!105657 (not b_next!106361))))

(declare-fun tb!229837 () Bool)

(declare-fun t!320044 () Bool)

(assert (=> (and b!3901033 (= (toValue!8874 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320044) tb!229837))

(declare-fun result!279066 () Bool)

(assert (= result!279066 result!279030))

(assert (=> d!1156178 t!320044))

(declare-fun b_and!295051 () Bool)

(declare-fun tp!1186988 () Bool)

(assert (=> b!3901033 (= tp!1186988 (and (=> t!320044 result!279066) b_and!295051))))

(declare-fun b_free!105659 () Bool)

(declare-fun b_next!106363 () Bool)

(assert (=> b!3901033 (= b_free!105659 (not b_next!106363))))

(declare-fun t!320046 () Bool)

(declare-fun tb!229839 () Bool)

(assert (=> (and b!3901033 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!320046) tb!229839))

(declare-fun result!279068 () Bool)

(assert (= result!279068 result!278966))

(assert (=> b!3900763 t!320046))

(declare-fun t!320048 () Bool)

(declare-fun tb!229841 () Bool)

(assert (=> (and b!3901033 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!320048) tb!229841))

(declare-fun result!279070 () Bool)

(assert (= result!279070 result!278976))

(assert (=> b!3900770 t!320048))

(declare-fun tb!229843 () Bool)

(declare-fun t!320050 () Bool)

(assert (=> (and b!3901033 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320050) tb!229843))

(declare-fun result!279072 () Bool)

(assert (= result!279072 result!279022))

(assert (=> d!1156176 t!320050))

(declare-fun tb!229845 () Bool)

(declare-fun t!320052 () Bool)

(assert (=> (and b!3901033 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320052) tb!229845))

(declare-fun result!279074 () Bool)

(assert (= result!279074 result!279040))

(assert (=> b!3900972 t!320052))

(declare-fun tp!1186987 () Bool)

(declare-fun b_and!295053 () Bool)

(assert (=> b!3901033 (= tp!1186987 (and (=> t!320046 result!279068) (=> t!320048 result!279070) (=> t!320050 result!279072) (=> t!320052 result!279074) b_and!295053))))

(declare-fun e!2411945 () Bool)

(assert (=> b!3901033 (= e!2411945 (and tp!1186988 tp!1186987))))

(declare-fun e!2411943 () Bool)

(declare-fun b!3901032 () Bool)

(declare-fun tp!1186989 () Bool)

(assert (=> b!3901032 (= e!2411943 (and tp!1186989 (inv!55534 (tag!7294 (h!46788 (t!319921 rules!2768)))) (inv!55537 (transformation!6434 (h!46788 (t!319921 rules!2768)))) e!2411945))))

(declare-fun b!3901031 () Bool)

(declare-fun e!2411942 () Bool)

(declare-fun tp!1186990 () Bool)

(assert (=> b!3901031 (= e!2411942 (and e!2411943 tp!1186990))))

(assert (=> b!3900403 (= tp!1186830 e!2411942)))

(assert (= b!3901032 b!3901033))

(assert (= b!3901031 b!3901032))

(assert (= (and b!3900403 ((_ is Cons!41368) (t!319921 rules!2768))) b!3901031))

(declare-fun m!4461289 () Bool)

(assert (=> b!3901032 m!4461289))

(declare-fun m!4461291 () Bool)

(assert (=> b!3901032 m!4461291))

(declare-fun b!3901034 () Bool)

(declare-fun e!2411946 () Bool)

(declare-fun tp!1186991 () Bool)

(assert (=> b!3901034 (= e!2411946 (and tp_is_empty!19649 tp!1186991))))

(assert (=> b!3900424 (= tp!1186840 e!2411946)))

(assert (= (and b!3900424 ((_ is Cons!41366) (originalCharacters!7034 (_1!23438 (v!39167 err!4385))))) b!3901034))

(declare-fun b!3901035 () Bool)

(declare-fun e!2411947 () Bool)

(declare-fun tp!1186992 () Bool)

(assert (=> b!3901035 (= e!2411947 (and tp_is_empty!19649 tp!1186992))))

(assert (=> b!3900428 (= tp!1186839 e!2411947)))

(assert (= (and b!3900428 ((_ is Cons!41366) (originalCharacters!7034 (h!46789 prefixTokens!80)))) b!3901035))

(declare-fun b!3901039 () Bool)

(declare-fun b_free!105661 () Bool)

(declare-fun b_next!106365 () Bool)

(assert (=> b!3901039 (= b_free!105661 (not b_next!106365))))

(declare-fun tb!229847 () Bool)

(declare-fun t!320054 () Bool)

(assert (=> (and b!3901039 (= (toValue!8874 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toValue!8874 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320054) tb!229847))

(declare-fun result!279076 () Bool)

(assert (= result!279076 result!279030))

(assert (=> d!1156178 t!320054))

(declare-fun b_and!295055 () Bool)

(declare-fun tp!1186995 () Bool)

(assert (=> b!3901039 (= tp!1186995 (and (=> t!320054 result!279076) b_and!295055))))

(declare-fun b_free!105663 () Bool)

(declare-fun b_next!106367 () Bool)

(assert (=> b!3901039 (= b_free!105663 (not b_next!106367))))

(declare-fun t!320056 () Bool)

(declare-fun tb!229849 () Bool)

(assert (=> (and b!3901039 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385)))))) t!320056) tb!229849))

(declare-fun result!279078 () Bool)

(assert (= result!279078 result!278966))

(assert (=> b!3900763 t!320056))

(declare-fun t!320058 () Bool)

(declare-fun tb!229851 () Bool)

(assert (=> (and b!3901039 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72))))) t!320058) tb!229851))

(declare-fun result!279080 () Bool)

(assert (= result!279080 result!278976))

(assert (=> b!3900770 t!320058))

(declare-fun tb!229853 () Bool)

(declare-fun t!320060 () Bool)

(assert (=> (and b!3901039 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 lt!1358776)))))) t!320060) tb!229853))

(declare-fun result!279082 () Bool)

(assert (= result!279082 result!279022))

(assert (=> d!1156176 t!320060))

(declare-fun t!320062 () Bool)

(declare-fun tb!229855 () Bool)

(assert (=> (and b!3901039 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80))))) t!320062) tb!229855))

(declare-fun result!279084 () Bool)

(assert (= result!279084 result!279040))

(assert (=> b!3900972 t!320062))

(declare-fun tp!1186994 () Bool)

(declare-fun b_and!295057 () Bool)

(assert (=> b!3901039 (= tp!1186994 (and (=> t!320056 result!279078) (=> t!320058 result!279080) (=> t!320060 result!279082) (=> t!320062 result!279084) b_and!295057))))

(declare-fun e!2411953 () Bool)

(assert (=> b!3900419 (= tp!1186829 e!2411953)))

(declare-fun b!3901037 () Bool)

(declare-fun e!2411951 () Bool)

(declare-fun e!2411948 () Bool)

(declare-fun tp!1186996 () Bool)

(assert (=> b!3901037 (= e!2411948 (and (inv!21 (value!204003 (h!46789 (t!319922 prefixTokens!80)))) e!2411951 tp!1186996))))

(declare-fun tp!1186993 () Bool)

(declare-fun e!2411950 () Bool)

(declare-fun b!3901038 () Bool)

(assert (=> b!3901038 (= e!2411951 (and tp!1186993 (inv!55534 (tag!7294 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (inv!55537 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) e!2411950))))

(declare-fun tp!1186997 () Bool)

(declare-fun b!3901036 () Bool)

(assert (=> b!3901036 (= e!2411953 (and (inv!55538 (h!46789 (t!319922 prefixTokens!80))) e!2411948 tp!1186997))))

(assert (=> b!3901039 (= e!2411950 (and tp!1186995 tp!1186994))))

(assert (= b!3901038 b!3901039))

(assert (= b!3901037 b!3901038))

(assert (= b!3901036 b!3901037))

(assert (= (and b!3900419 ((_ is Cons!41369) (t!319922 prefixTokens!80))) b!3901036))

(declare-fun m!4461293 () Bool)

(assert (=> b!3901037 m!4461293))

(declare-fun m!4461295 () Bool)

(assert (=> b!3901038 m!4461295))

(declare-fun m!4461297 () Bool)

(assert (=> b!3901038 m!4461297))

(declare-fun m!4461299 () Bool)

(assert (=> b!3901036 m!4461299))

(declare-fun b!3901040 () Bool)

(declare-fun e!2411954 () Bool)

(declare-fun tp!1186998 () Bool)

(assert (=> b!3901040 (= e!2411954 (and tp_is_empty!19649 tp!1186998))))

(assert (=> b!3900408 (= tp!1186841 e!2411954)))

(assert (= (and b!3900408 ((_ is Cons!41366) (t!319919 prefix!426))) b!3901040))

(declare-fun b_lambda!113993 () Bool)

(assert (= b_lambda!113991 (or (and b!3901039 b_free!105663 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))))) (and b!3900407 b_free!105631) (and b!3901013 b_free!105655 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))))) (and b!3900409 b_free!105639 (= (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))))) (and b!3900404 b_free!105627 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))))) (and b!3901033 b_free!105659 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))))) (and b!3900436 b_free!105635 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))))) b_lambda!113993)))

(declare-fun b_lambda!113995 () Bool)

(assert (= b_lambda!113979 (or (and b!3901033 b_free!105659 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))))) (and b!3900407 b_free!105631 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))))) (and b!3901039 b_free!105663 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))))) (and b!3900409 b_free!105639 (= (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))))) (and b!3901013 b_free!105655 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))))) (and b!3900436 b_free!105635) (and b!3900404 b_free!105627 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))))) b_lambda!113995)))

(declare-fun b_lambda!113997 () Bool)

(assert (= b_lambda!113977 (or (and b!3901033 b_free!105659 (= (toChars!8733 (transformation!6434 (h!46788 (t!319921 rules!2768)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))))) (and b!3900407 b_free!105631 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 prefixTokens!80)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))))) (and b!3900436 b_free!105635 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 suffixTokens!72)))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))))) (and b!3901039 b_free!105663 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 prefixTokens!80))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))))) (and b!3900409 b_free!105639) (and b!3900404 b_free!105627 (= (toChars!8733 (transformation!6434 (h!46788 rules!2768))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))))) (and b!3901013 b_free!105655 (= (toChars!8733 (transformation!6434 (rule!9340 (h!46789 (t!319922 suffixTokens!72))))) (toChars!8733 (transformation!6434 (rule!9340 (_1!23438 (v!39167 err!4385))))))) b_lambda!113997)))

(check-sat (not tb!229765) (not b!3900932) (not b_lambda!113987) (not d!1156188) (not b!3900632) (not d!1156132) (not b!3900611) (not b_lambda!113993) (not d!1156212) (not b!3900952) (not b!3900605) (not b!3900998) (not b!3900702) (not d!1156196) (not b!3900986) (not b!3900992) (not b!3900936) (not b!3900758) (not b!3900926) (not b!3900596) (not b!3900910) (not b!3900752) (not b!3900706) (not bm!283851) (not b!3900961) (not b!3900925) (not b!3900772) (not b!3900523) (not b!3900971) (not b!3900751) (not bm!283849) (not b!3900744) (not b!3900899) (not b!3900769) (not b_next!106333) (not b!3900973) (not b!3900964) (not d!1156176) (not b!3900974) (not b!3900902) (not b!3901015) (not b!3901020) (not b!3900747) b_and!295057 (not b_lambda!113989) (not b!3900951) (not b!3900526) (not b_next!106341) (not d!1156206) (not b!3900968) (not b_next!106337) b_and!295041 (not d!1156210) (not b!3900771) (not b!3901034) (not b!3900970) (not b!3900525) (not b!3900956) (not b!3900922) b_and!295055 (not d!1156208) (not b!3900896) b_and!295033 (not d!1156194) (not b!3900947) (not b!3900520) (not d!1156182) (not b!3900943) (not b!3900904) (not d!1156226) (not b!3900987) (not bm!283846) (not b!3900944) (not b!3900570) (not b!3900955) (not b_next!106343) (not b!3900631) (not d!1156154) (not b!3900898) (not b!3900941) (not b!3900703) b_and!295047 (not b!3900750) (not b!3900522) (not b!3900725) (not b!3900770) (not b!3901036) b_and!295039 (not d!1156076) (not d!1156216) (not d!1156144) (not b!3901010) (not b_next!106365) (not b!3900773) (not b!3900897) (not bm!283850) (not b!3900960) (not d!1156060) (not b!3900900) (not b!3900633) (not b!3900613) tp_is_empty!19649 (not tb!229803) (not b!3900990) (not b!3901021) (not b!3900755) b_and!295051 (not b!3901016) (not b!3901022) (not b!3900598) (not b!3901019) (not b!3900999) (not b_next!106331) (not b!3900737) (not b!3900997) b_and!295043 (not b!3900724) (not b_lambda!113997) (not d!1156054) (not b!3900908) (not b!3900527) (not d!1156148) (not d!1156192) (not b_next!106357) (not d!1156220) b_and!295037 (not b_next!106361) (not d!1156200) (not b!3901031) (not b!3900912) (not tb!229819) (not b!3900764) (not b!3901011) (not b!3900914) (not b!3900966) (not d!1156160) (not b!3900940) (not b!3900988) (not b!3901012) (not b!3900612) (not d!1156156) (not b!3901037) (not b!3900521) (not b!3900953) (not b!3900969) (not b_next!106367) (not b!3900913) (not d!1156078) (not b!3900903) (not b!3900597) (not b!3900962) (not d!1156024) (not b!3900736) (not b!3900967) (not b!3900895) (not b!3900909) (not b_next!106329) (not b!3900524) (not tb!229757) (not d!1156140) (not b!3900559) (not b!3901032) (not b_next!106363) (not b!3900957) (not d!1156190) (not b!3900958) (not b!3901040) (not tb!229811) (not d!1156214) (not d!1156162) (not b!3900917) (not b_lambda!113995) (not d!1156198) (not d!1156224) (not b_next!106339) (not d!1156202) (not b!3900954) (not b!3900939) (not b!3900965) (not d!1156186) b_and!295049 (not b!3900972) (not b!3900763) b_and!295053 (not b_next!106359) (not b!3901017) (not b!3900938) (not d!1156098) (not b!3900746) (not b!3901035) b_and!295035 (not b!3901038) (not b!3900948) b_and!295045 (not b!3900991) (not b!3900942) (not b_next!106335) b_and!295031 (not b!3900754) (not b!3900945))
(check-sat (not b_next!106333) b_and!295057 (not b_next!106341) b_and!295055 b_and!295033 (not b_next!106343) b_and!295047 b_and!295043 (not b_next!106367) (not b_next!106329) (not b_next!106363) (not b_next!106339) b_and!295049 b_and!295045 (not b_next!106337) b_and!295041 b_and!295039 (not b_next!106365) b_and!295051 (not b_next!106331) (not b_next!106357) b_and!295037 (not b_next!106361) b_and!295053 (not b_next!106359) b_and!295035 (not b_next!106335) b_and!295031)
