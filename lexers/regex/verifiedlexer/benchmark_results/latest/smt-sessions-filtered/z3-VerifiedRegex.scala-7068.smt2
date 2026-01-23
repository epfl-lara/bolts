; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374844 () Bool)

(assert start!374844)

(declare-fun b!3982493 () Bool)

(declare-fun b_free!110545 () Bool)

(declare-fun b_next!111249 () Bool)

(assert (=> b!3982493 (= b_free!110545 (not b_next!111249))))

(declare-fun tp!1213864 () Bool)

(declare-fun b_and!306095 () Bool)

(assert (=> b!3982493 (= tp!1213864 b_and!306095)))

(declare-fun b_free!110547 () Bool)

(declare-fun b_next!111251 () Bool)

(assert (=> b!3982493 (= b_free!110547 (not b_next!111251))))

(declare-fun tp!1213862 () Bool)

(declare-fun b_and!306097 () Bool)

(assert (=> b!3982493 (= tp!1213862 b_and!306097)))

(declare-fun b!3982476 () Bool)

(declare-fun b_free!110549 () Bool)

(declare-fun b_next!111253 () Bool)

(assert (=> b!3982476 (= b_free!110549 (not b_next!111253))))

(declare-fun tp!1213860 () Bool)

(declare-fun b_and!306099 () Bool)

(assert (=> b!3982476 (= tp!1213860 b_and!306099)))

(declare-fun b_free!110551 () Bool)

(declare-fun b_next!111255 () Bool)

(assert (=> b!3982476 (= b_free!110551 (not b_next!111255))))

(declare-fun tp!1213868 () Bool)

(declare-fun b_and!306101 () Bool)

(assert (=> b!3982476 (= tp!1213868 b_and!306101)))

(declare-fun b!3982473 () Bool)

(declare-fun e!2468077 () Bool)

(declare-datatypes ((C!23444 0))(
  ( (C!23445 (val!13816 Int)) )
))
(declare-datatypes ((List!42700 0))(
  ( (Nil!42576) (Cons!42576 (h!47996 C!23444) (t!331403 List!42700)) )
))
(declare-fun lt!1399533 () List!42700)

(declare-fun lt!1399542 () List!42700)

(declare-fun isPrefix!3811 (List!42700 List!42700) Bool)

(assert (=> b!3982473 (= e!2468077 (isPrefix!3811 lt!1399533 lt!1399542))))

(declare-fun b!3982474 () Bool)

(declare-fun e!2468073 () Bool)

(declare-fun e!2468083 () Bool)

(assert (=> b!3982474 (= e!2468073 e!2468083)))

(declare-fun res!1614304 () Bool)

(assert (=> b!3982474 (=> res!1614304 e!2468083)))

(declare-datatypes ((IArray!25875 0))(
  ( (IArray!25876 (innerList!12995 List!42700)) )
))
(declare-datatypes ((Conc!12935 0))(
  ( (Node!12935 (left!32195 Conc!12935) (right!32525 Conc!12935) (csize!26100 Int) (cheight!13146 Int)) (Leaf!20004 (xs!16241 IArray!25875) (csize!26101 Int)) (Empty!12935) )
))
(declare-datatypes ((BalanceConc!25464 0))(
  ( (BalanceConc!25465 (c!689850 Conc!12935)) )
))
(declare-datatypes ((List!42701 0))(
  ( (Nil!42577) (Cons!42577 (h!47997 (_ BitVec 16)) (t!331404 List!42701)) )
))
(declare-datatypes ((TokenValue!6954 0))(
  ( (FloatLiteralValue!13908 (text!49123 List!42701)) (TokenValueExt!6953 (__x!26125 Int)) (Broken!34770 (value!212242 List!42701)) (Object!7077) (End!6954) (Def!6954) (Underscore!6954) (Match!6954) (Else!6954) (Error!6954) (Case!6954) (If!6954) (Extends!6954) (Abstract!6954) (Class!6954) (Val!6954) (DelimiterValue!13908 (del!7014 List!42701)) (KeywordValue!6960 (value!212243 List!42701)) (CommentValue!13908 (value!212244 List!42701)) (WhitespaceValue!13908 (value!212245 List!42701)) (IndentationValue!6954 (value!212246 List!42701)) (String!48487) (Int32!6954) (Broken!34771 (value!212247 List!42701)) (Boolean!6955) (Unit!61249) (OperatorValue!6957 (op!7014 List!42701)) (IdentifierValue!13908 (value!212248 List!42701)) (IdentifierValue!13909 (value!212249 List!42701)) (WhitespaceValue!13909 (value!212250 List!42701)) (True!13908) (False!13908) (Broken!34772 (value!212251 List!42701)) (Broken!34773 (value!212252 List!42701)) (True!13909) (RightBrace!6954) (RightBracket!6954) (Colon!6954) (Null!6954) (Comma!6954) (LeftBracket!6954) (False!13909) (LeftBrace!6954) (ImaginaryLiteralValue!6954 (text!49124 List!42701)) (StringLiteralValue!20862 (value!212253 List!42701)) (EOFValue!6954 (value!212254 List!42701)) (IdentValue!6954 (value!212255 List!42701)) (DelimiterValue!13909 (value!212256 List!42701)) (DedentValue!6954 (value!212257 List!42701)) (NewLineValue!6954 (value!212258 List!42701)) (IntegerValue!20862 (value!212259 (_ BitVec 32)) (text!49125 List!42701)) (IntegerValue!20863 (value!212260 Int) (text!49126 List!42701)) (Times!6954) (Or!6954) (Equal!6954) (Minus!6954) (Broken!34774 (value!212261 List!42701)) (And!6954) (Div!6954) (LessEqual!6954) (Mod!6954) (Concat!18583) (Not!6954) (Plus!6954) (SpaceValue!6954 (value!212262 List!42701)) (IntegerValue!20864 (value!212263 Int) (text!49127 List!42701)) (StringLiteralValue!20863 (text!49128 List!42701)) (FloatLiteralValue!13909 (text!49129 List!42701)) (BytesLiteralValue!6954 (value!212264 List!42701)) (CommentValue!13909 (value!212265 List!42701)) (StringLiteralValue!20864 (value!212266 List!42701)) (ErrorTokenValue!6954 (msg!7015 List!42701)) )
))
(declare-datatypes ((Regex!11629 0))(
  ( (ElementMatch!11629 (c!689851 C!23444)) (Concat!18584 (regOne!23770 Regex!11629) (regTwo!23770 Regex!11629)) (EmptyExpr!11629) (Star!11629 (reg!11958 Regex!11629)) (EmptyLang!11629) (Union!11629 (regOne!23771 Regex!11629) (regTwo!23771 Regex!11629)) )
))
(declare-datatypes ((String!48488 0))(
  ( (String!48489 (value!212267 String)) )
))
(declare-datatypes ((TokenValueInjection!13336 0))(
  ( (TokenValueInjection!13337 (toValue!9212 Int) (toChars!9071 Int)) )
))
(declare-datatypes ((Rule!13248 0))(
  ( (Rule!13249 (regex!6724 Regex!11629) (tag!7584 String!48488) (isSeparator!6724 Bool) (transformation!6724 TokenValueInjection!13336)) )
))
(declare-datatypes ((Token!12586 0))(
  ( (Token!12587 (value!212268 TokenValue!6954) (rule!9732 Rule!13248) (size!31848 Int) (originalCharacters!7324 List!42700)) )
))
(declare-datatypes ((tuple2!41800 0))(
  ( (tuple2!41801 (_1!24034 Token!12586) (_2!24034 List!42700)) )
))
(declare-datatypes ((Option!9138 0))(
  ( (None!9137) (Some!9137 (v!39485 tuple2!41800)) )
))
(declare-fun lt!1399544 () Option!9138)

(declare-fun lt!1399534 () Option!9138)

(assert (=> b!3982474 (= res!1614304 (not (= lt!1399544 lt!1399534)))))

(declare-fun lt!1399532 () Token!12586)

(declare-fun suffixResult!105 () List!42700)

(assert (=> b!3982474 (= lt!1399544 (Some!9137 (tuple2!41801 lt!1399532 suffixResult!105)))))

(declare-fun token!484 () Token!12586)

(declare-datatypes ((LexerInterface!6313 0))(
  ( (LexerInterfaceExt!6310 (__x!26126 Int)) (Lexer!6311) )
))
(declare-fun thiss!21717 () LexerInterface!6313)

(declare-fun lt!1399562 () List!42700)

(declare-fun maxPrefixOneRule!2645 (LexerInterface!6313 Rule!13248 List!42700) Option!9138)

(assert (=> b!3982474 (= lt!1399544 (maxPrefixOneRule!2645 thiss!21717 (rule!9732 token!484) lt!1399562))))

(declare-fun lt!1399569 () TokenValue!6954)

(declare-fun lt!1399523 () List!42700)

(declare-fun lt!1399538 () Int)

(assert (=> b!3982474 (= lt!1399532 (Token!12587 lt!1399569 (rule!9732 token!484) lt!1399538 lt!1399523))))

(declare-fun apply!9935 (TokenValueInjection!13336 BalanceConc!25464) TokenValue!6954)

(declare-fun seqFromList!4963 (List!42700) BalanceConc!25464)

(assert (=> b!3982474 (= lt!1399569 (apply!9935 (transformation!6724 (rule!9732 token!484)) (seqFromList!4963 lt!1399523)))))

(declare-datatypes ((Unit!61250 0))(
  ( (Unit!61251) )
))
(declare-fun lt!1399515 () Unit!61250)

(declare-datatypes ((List!42702 0))(
  ( (Nil!42578) (Cons!42578 (h!47998 Rule!13248) (t!331405 List!42702)) )
))
(declare-fun rules!2999 () List!42702)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1467 (LexerInterface!6313 List!42702 List!42700 List!42700 List!42700 Rule!13248) Unit!61250)

(assert (=> b!3982474 (= lt!1399515 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1467 thiss!21717 rules!2999 lt!1399523 lt!1399562 suffixResult!105 (rule!9732 token!484)))))

(declare-fun lt!1399567 () List!42700)

(assert (=> b!3982474 (= lt!1399567 suffixResult!105)))

(declare-fun lt!1399541 () Unit!61250)

(declare-fun lemmaSamePrefixThenSameSuffix!1998 (List!42700 List!42700 List!42700 List!42700 List!42700) Unit!61250)

(assert (=> b!3982474 (= lt!1399541 (lemmaSamePrefixThenSameSuffix!1998 lt!1399523 lt!1399567 lt!1399523 suffixResult!105 lt!1399562))))

(declare-fun lt!1399558 () List!42700)

(assert (=> b!3982474 (isPrefix!3811 lt!1399523 lt!1399558)))

(declare-fun lt!1399539 () Unit!61250)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2654 (List!42700 List!42700) Unit!61250)

(assert (=> b!3982474 (= lt!1399539 (lemmaConcatTwoListThenFirstIsPrefix!2654 lt!1399523 lt!1399567))))

(declare-fun b!3982475 () Bool)

(declare-fun e!2468076 () Bool)

(declare-fun tp_is_empty!20229 () Bool)

(declare-fun tp!1213857 () Bool)

(assert (=> b!3982475 (= e!2468076 (and tp_is_empty!20229 tp!1213857))))

(declare-fun e!2468068 () Bool)

(assert (=> b!3982476 (= e!2468068 (and tp!1213860 tp!1213868))))

(declare-fun b!3982477 () Bool)

(declare-fun e!2468072 () Bool)

(declare-fun e!2468070 () Bool)

(assert (=> b!3982477 (= e!2468072 e!2468070)))

(declare-fun res!1614312 () Bool)

(assert (=> b!3982477 (=> res!1614312 e!2468070)))

(assert (=> b!3982477 (= res!1614312 (not (isPrefix!3811 lt!1399523 lt!1399562)))))

(declare-fun prefix!494 () List!42700)

(assert (=> b!3982477 (isPrefix!3811 prefix!494 lt!1399562)))

(declare-fun lt!1399540 () Unit!61250)

(declare-fun suffix!1299 () List!42700)

(assert (=> b!3982477 (= lt!1399540 (lemmaConcatTwoListThenFirstIsPrefix!2654 prefix!494 suffix!1299))))

(declare-fun lt!1399563 () List!42700)

(assert (=> b!3982477 (isPrefix!3811 lt!1399523 lt!1399563)))

(declare-fun lt!1399546 () Unit!61250)

(assert (=> b!3982477 (= lt!1399546 (lemmaConcatTwoListThenFirstIsPrefix!2654 lt!1399523 suffixResult!105))))

(declare-fun b!3982478 () Bool)

(declare-fun e!2468079 () Bool)

(declare-fun e!2468071 () Bool)

(assert (=> b!3982478 (= e!2468079 e!2468071)))

(declare-fun res!1614310 () Bool)

(assert (=> b!3982478 (=> res!1614310 e!2468071)))

(declare-fun lt!1399557 () List!42700)

(assert (=> b!3982478 (= res!1614310 (not (= lt!1399557 suffix!1299)))))

(declare-fun newSuffix!27 () List!42700)

(declare-fun lt!1399551 () List!42700)

(declare-fun ++!11126 (List!42700 List!42700) List!42700)

(assert (=> b!3982478 (= lt!1399557 (++!11126 newSuffix!27 lt!1399551))))

(declare-fun getSuffix!2242 (List!42700 List!42700) List!42700)

(assert (=> b!3982478 (= lt!1399551 (getSuffix!2242 suffix!1299 newSuffix!27))))

(declare-fun b!3982472 () Bool)

(declare-fun e!2468085 () Bool)

(assert (=> b!3982472 (= e!2468085 e!2468079)))

(declare-fun res!1614308 () Bool)

(assert (=> b!3982472 (=> res!1614308 e!2468079)))

(declare-fun lt!1399560 () Option!9138)

(declare-fun lt!1399526 () Option!9138)

(assert (=> b!3982472 (= res!1614308 (not (= lt!1399560 (Some!9137 (v!39485 lt!1399526)))))))

(declare-fun newSuffixResult!27 () List!42700)

(assert (=> b!3982472 (isPrefix!3811 lt!1399533 (++!11126 lt!1399533 newSuffixResult!27))))

(declare-fun lt!1399552 () Unit!61250)

(assert (=> b!3982472 (= lt!1399552 (lemmaConcatTwoListThenFirstIsPrefix!2654 lt!1399533 newSuffixResult!27))))

(declare-fun lt!1399528 () List!42700)

(assert (=> b!3982472 (isPrefix!3811 lt!1399533 lt!1399528)))

(assert (=> b!3982472 (= lt!1399528 (++!11126 lt!1399533 (_2!24034 (v!39485 lt!1399526))))))

(declare-fun lt!1399525 () Unit!61250)

(assert (=> b!3982472 (= lt!1399525 (lemmaConcatTwoListThenFirstIsPrefix!2654 lt!1399533 (_2!24034 (v!39485 lt!1399526))))))

(declare-fun lt!1399553 () TokenValue!6954)

(declare-fun lt!1399564 () Int)

(assert (=> b!3982472 (= lt!1399560 (Some!9137 (tuple2!41801 (Token!12587 lt!1399553 (rule!9732 (_1!24034 (v!39485 lt!1399526))) lt!1399564 lt!1399533) (_2!24034 (v!39485 lt!1399526)))))))

(assert (=> b!3982472 (= lt!1399560 (maxPrefixOneRule!2645 thiss!21717 (rule!9732 (_1!24034 (v!39485 lt!1399526))) lt!1399542))))

(declare-fun size!31849 (List!42700) Int)

(assert (=> b!3982472 (= lt!1399564 (size!31849 lt!1399533))))

(assert (=> b!3982472 (= lt!1399553 (apply!9935 (transformation!6724 (rule!9732 (_1!24034 (v!39485 lt!1399526)))) (seqFromList!4963 lt!1399533)))))

(declare-fun lt!1399519 () Unit!61250)

(assert (=> b!3982472 (= lt!1399519 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1467 thiss!21717 rules!2999 lt!1399533 lt!1399542 (_2!24034 (v!39485 lt!1399526)) (rule!9732 (_1!24034 (v!39485 lt!1399526)))))))

(declare-fun list!15804 (BalanceConc!25464) List!42700)

(declare-fun charsOf!4540 (Token!12586) BalanceConc!25464)

(assert (=> b!3982472 (= lt!1399533 (list!15804 (charsOf!4540 (_1!24034 (v!39485 lt!1399526)))))))

(declare-fun lt!1399516 () Unit!61250)

(declare-fun lemmaInv!939 (TokenValueInjection!13336) Unit!61250)

(assert (=> b!3982472 (= lt!1399516 (lemmaInv!939 (transformation!6724 (rule!9732 (_1!24034 (v!39485 lt!1399526))))))))

(declare-fun ruleValid!2656 (LexerInterface!6313 Rule!13248) Bool)

(assert (=> b!3982472 (ruleValid!2656 thiss!21717 (rule!9732 (_1!24034 (v!39485 lt!1399526))))))

(declare-fun lt!1399520 () Unit!61250)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1730 (LexerInterface!6313 Rule!13248 List!42702) Unit!61250)

(assert (=> b!3982472 (= lt!1399520 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1730 thiss!21717 (rule!9732 (_1!24034 (v!39485 lt!1399526))) rules!2999))))

(declare-fun lt!1399545 () Unit!61250)

(declare-fun lemmaCharactersSize!1319 (Token!12586) Unit!61250)

(assert (=> b!3982472 (= lt!1399545 (lemmaCharactersSize!1319 token!484))))

(declare-fun lt!1399565 () Unit!61250)

(assert (=> b!3982472 (= lt!1399565 (lemmaCharactersSize!1319 (_1!24034 (v!39485 lt!1399526))))))

(declare-fun res!1614296 () Bool)

(declare-fun e!2468067 () Bool)

(assert (=> start!374844 (=> (not res!1614296) (not e!2468067))))

(get-info :version)

(assert (=> start!374844 (= res!1614296 ((_ is Lexer!6311) thiss!21717))))

(assert (=> start!374844 e!2468067))

(declare-fun e!2468069 () Bool)

(assert (=> start!374844 e!2468069))

(declare-fun e!2468080 () Bool)

(declare-fun inv!56877 (Token!12586) Bool)

(assert (=> start!374844 (and (inv!56877 token!484) e!2468080)))

(declare-fun e!2468082 () Bool)

(assert (=> start!374844 e!2468082))

(assert (=> start!374844 e!2468076))

(declare-fun e!2468084 () Bool)

(assert (=> start!374844 e!2468084))

(assert (=> start!374844 true))

(declare-fun e!2468094 () Bool)

(assert (=> start!374844 e!2468094))

(declare-fun e!2468089 () Bool)

(assert (=> start!374844 e!2468089))

(declare-fun b!3982479 () Bool)

(declare-fun tp!1213859 () Bool)

(assert (=> b!3982479 (= e!2468084 (and tp_is_empty!20229 tp!1213859))))

(declare-fun b!3982480 () Bool)

(declare-fun e!2468066 () Bool)

(assert (=> b!3982480 (= e!2468066 e!2468077)))

(declare-fun res!1614305 () Bool)

(assert (=> b!3982480 (=> res!1614305 e!2468077)))

(assert (=> b!3982480 (= res!1614305 (< (size!31849 lt!1399542) lt!1399564))))

(declare-fun lt!1399547 () List!42700)

(assert (=> b!3982480 (= (_2!24034 (v!39485 lt!1399526)) lt!1399547)))

(declare-fun lt!1399561 () Unit!61250)

(assert (=> b!3982480 (= lt!1399561 (lemmaSamePrefixThenSameSuffix!1998 lt!1399533 (_2!24034 (v!39485 lt!1399526)) lt!1399533 lt!1399547 lt!1399542))))

(declare-fun lt!1399524 () List!42700)

(assert (=> b!3982480 (isPrefix!3811 lt!1399533 lt!1399524)))

(declare-fun lt!1399518 () Unit!61250)

(assert (=> b!3982480 (= lt!1399518 (lemmaConcatTwoListThenFirstIsPrefix!2654 lt!1399533 lt!1399547))))

(declare-fun b!3982481 () Bool)

(declare-fun e!2468074 () Bool)

(declare-fun e!2468088 () Bool)

(assert (=> b!3982481 (= e!2468074 e!2468088)))

(declare-fun res!1614297 () Bool)

(assert (=> b!3982481 (=> (not res!1614297) (not e!2468088))))

(declare-fun lt!1399530 () List!42700)

(assert (=> b!3982481 (= res!1614297 (= lt!1399530 lt!1399542))))

(assert (=> b!3982481 (= lt!1399542 (++!11126 prefix!494 newSuffix!27))))

(assert (=> b!3982481 (= lt!1399530 (++!11126 lt!1399523 newSuffixResult!27))))

(declare-fun b!3982482 () Bool)

(declare-fun e!2468093 () Bool)

(declare-fun e!2468092 () Bool)

(assert (=> b!3982482 (= e!2468093 e!2468092)))

(declare-fun res!1614302 () Bool)

(assert (=> b!3982482 (=> res!1614302 e!2468092)))

(assert (=> b!3982482 (= res!1614302 (not (isPrefix!3811 lt!1399533 lt!1399562)))))

(declare-fun lt!1399549 () List!42700)

(assert (=> b!3982482 (isPrefix!3811 lt!1399533 lt!1399549)))

(declare-fun lt!1399555 () Unit!61250)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!644 (List!42700 List!42700 List!42700) Unit!61250)

(assert (=> b!3982482 (= lt!1399555 (lemmaPrefixStaysPrefixWhenAddingToSuffix!644 lt!1399533 lt!1399542 lt!1399551))))

(declare-fun b!3982483 () Bool)

(assert (=> b!3982483 (= e!2468067 e!2468074)))

(declare-fun res!1614309 () Bool)

(assert (=> b!3982483 (=> (not res!1614309) (not e!2468074))))

(declare-fun lt!1399559 () Int)

(assert (=> b!3982483 (= res!1614309 (>= lt!1399559 lt!1399538))))

(assert (=> b!3982483 (= lt!1399538 (size!31849 lt!1399523))))

(assert (=> b!3982483 (= lt!1399559 (size!31849 prefix!494))))

(assert (=> b!3982483 (= lt!1399523 (list!15804 (charsOf!4540 token!484)))))

(declare-fun tp!1213856 () Bool)

(declare-fun e!2468090 () Bool)

(declare-fun b!3982484 () Bool)

(declare-fun inv!56874 (String!48488) Bool)

(declare-fun inv!56878 (TokenValueInjection!13336) Bool)

(assert (=> b!3982484 (= e!2468090 (and tp!1213856 (inv!56874 (tag!7584 (h!47998 rules!2999))) (inv!56878 (transformation!6724 (h!47998 rules!2999))) e!2468068))))

(declare-fun b!3982485 () Bool)

(declare-fun res!1614317 () Bool)

(declare-fun e!2468064 () Bool)

(assert (=> b!3982485 (=> (not res!1614317) (not e!2468064))))

(assert (=> b!3982485 (= res!1614317 (= (size!31848 token!484) (size!31849 (originalCharacters!7324 token!484))))))

(declare-fun b!3982486 () Bool)

(declare-fun res!1614299 () Bool)

(assert (=> b!3982486 (=> (not res!1614299) (not e!2468067))))

(declare-fun isEmpty!25456 (List!42702) Bool)

(assert (=> b!3982486 (= res!1614299 (not (isEmpty!25456 rules!2999)))))

(declare-fun b!3982487 () Bool)

(declare-fun e!2468078 () Bool)

(assert (=> b!3982487 (= e!2468078 e!2468073)))

(declare-fun res!1614295 () Bool)

(assert (=> b!3982487 (=> res!1614295 e!2468073)))

(declare-fun lt!1399522 () List!42700)

(assert (=> b!3982487 (= res!1614295 (or (not (= lt!1399562 lt!1399522)) (not (= lt!1399562 lt!1399558))))))

(assert (=> b!3982487 (= lt!1399522 lt!1399558)))

(assert (=> b!3982487 (= lt!1399558 (++!11126 lt!1399523 lt!1399567))))

(declare-fun lt!1399529 () List!42700)

(assert (=> b!3982487 (= lt!1399522 (++!11126 lt!1399529 suffix!1299))))

(declare-fun lt!1399537 () List!42700)

(assert (=> b!3982487 (= lt!1399567 (++!11126 lt!1399537 suffix!1299))))

(declare-fun lt!1399548 () Unit!61250)

(declare-fun lemmaConcatAssociativity!2446 (List!42700 List!42700 List!42700) Unit!61250)

(assert (=> b!3982487 (= lt!1399548 (lemmaConcatAssociativity!2446 lt!1399523 lt!1399537 suffix!1299))))

(declare-fun b!3982488 () Bool)

(declare-fun res!1614316 () Bool)

(assert (=> b!3982488 (=> (not res!1614316) (not e!2468067))))

(assert (=> b!3982488 (= res!1614316 (isPrefix!3811 newSuffix!27 suffix!1299))))

(declare-fun b!3982489 () Bool)

(assert (=> b!3982489 (= e!2468071 e!2468093)))

(declare-fun res!1614306 () Bool)

(assert (=> b!3982489 (=> res!1614306 e!2468093)))

(assert (=> b!3982489 (= res!1614306 (not (= lt!1399549 lt!1399562)))))

(assert (=> b!3982489 (= lt!1399549 (++!11126 prefix!494 lt!1399557))))

(assert (=> b!3982489 (= lt!1399549 (++!11126 lt!1399542 lt!1399551))))

(declare-fun lt!1399566 () Unit!61250)

(assert (=> b!3982489 (= lt!1399566 (lemmaConcatAssociativity!2446 prefix!494 newSuffix!27 lt!1399551))))

(declare-fun tp!1213866 () Bool)

(declare-fun b!3982490 () Bool)

(declare-fun e!2468086 () Bool)

(declare-fun e!2468096 () Bool)

(assert (=> b!3982490 (= e!2468096 (and tp!1213866 (inv!56874 (tag!7584 (rule!9732 token!484))) (inv!56878 (transformation!6724 (rule!9732 token!484))) e!2468086))))

(declare-fun b!3982491 () Bool)

(declare-fun e!2468065 () Bool)

(declare-fun e!2468091 () Bool)

(assert (=> b!3982491 (= e!2468065 e!2468091)))

(declare-fun res!1614303 () Bool)

(assert (=> b!3982491 (=> res!1614303 e!2468091)))

(declare-fun lt!1399521 () List!42700)

(assert (=> b!3982491 (= res!1614303 (not (= lt!1399521 lt!1399562)))))

(declare-fun lt!1399517 () List!42700)

(assert (=> b!3982491 (= lt!1399521 (++!11126 lt!1399523 lt!1399517))))

(assert (=> b!3982491 (= lt!1399517 (getSuffix!2242 lt!1399562 lt!1399523))))

(assert (=> b!3982491 e!2468064))

(declare-fun res!1614313 () Bool)

(assert (=> b!3982491 (=> (not res!1614313) (not e!2468064))))

(assert (=> b!3982491 (= res!1614313 (isPrefix!3811 lt!1399562 lt!1399562))))

(declare-fun lt!1399527 () Unit!61250)

(declare-fun lemmaIsPrefixRefl!2403 (List!42700 List!42700) Unit!61250)

(assert (=> b!3982491 (= lt!1399527 (lemmaIsPrefixRefl!2403 lt!1399562 lt!1399562))))

(declare-fun b!3982492 () Bool)

(declare-fun e!2468087 () Bool)

(assert (=> b!3982492 (= e!2468087 (not e!2468072))))

(declare-fun res!1614298 () Bool)

(assert (=> b!3982492 (=> res!1614298 e!2468072)))

(assert (=> b!3982492 (= res!1614298 (not (= lt!1399563 lt!1399562)))))

(assert (=> b!3982492 (= lt!1399563 (++!11126 lt!1399523 suffixResult!105))))

(declare-fun lt!1399568 () Unit!61250)

(assert (=> b!3982492 (= lt!1399568 (lemmaInv!939 (transformation!6724 (rule!9732 token!484))))))

(assert (=> b!3982492 (ruleValid!2656 thiss!21717 (rule!9732 token!484))))

(declare-fun lt!1399536 () Unit!61250)

(assert (=> b!3982492 (= lt!1399536 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1730 thiss!21717 (rule!9732 token!484) rules!2999))))

(assert (=> b!3982493 (= e!2468086 (and tp!1213864 tp!1213862))))

(declare-fun b!3982494 () Bool)

(declare-fun tp!1213867 () Bool)

(assert (=> b!3982494 (= e!2468089 (and tp_is_empty!20229 tp!1213867))))

(declare-fun b!3982495 () Bool)

(declare-fun tp!1213863 () Bool)

(assert (=> b!3982495 (= e!2468082 (and tp_is_empty!20229 tp!1213863))))

(declare-fun b!3982496 () Bool)

(declare-fun res!1614301 () Bool)

(assert (=> b!3982496 (=> res!1614301 e!2468092)))

(assert (=> b!3982496 (= res!1614301 (not (= lt!1399528 lt!1399542)))))

(declare-fun b!3982497 () Bool)

(declare-fun tp!1213861 () Bool)

(assert (=> b!3982497 (= e!2468094 (and e!2468090 tp!1213861))))

(declare-fun b!3982498 () Bool)

(assert (=> b!3982498 (= e!2468092 e!2468066)))

(declare-fun res!1614311 () Bool)

(assert (=> b!3982498 (=> res!1614311 e!2468066)))

(assert (=> b!3982498 (= res!1614311 (not (= lt!1399524 lt!1399542)))))

(assert (=> b!3982498 (= lt!1399524 (++!11126 lt!1399533 lt!1399547))))

(assert (=> b!3982498 (= lt!1399547 (getSuffix!2242 lt!1399542 lt!1399533))))

(declare-fun b!3982499 () Bool)

(assert (=> b!3982499 (= e!2468064 (and (= (size!31848 token!484) lt!1399538) (= (originalCharacters!7324 token!484) lt!1399523)))))

(declare-fun b!3982500 () Bool)

(declare-fun tp!1213858 () Bool)

(declare-fun inv!21 (TokenValue!6954) Bool)

(assert (=> b!3982500 (= e!2468080 (and (inv!21 (value!212268 token!484)) e!2468096 tp!1213858))))

(declare-fun b!3982501 () Bool)

(assert (=> b!3982501 (= e!2468083 e!2468065)))

(declare-fun res!1614307 () Bool)

(assert (=> b!3982501 (=> res!1614307 e!2468065)))

(declare-fun matchR!5606 (Regex!11629 List!42700) Bool)

(assert (=> b!3982501 (= res!1614307 (not (matchR!5606 (regex!6724 (rule!9732 token!484)) lt!1399523)))))

(assert (=> b!3982501 (isPrefix!3811 lt!1399523 lt!1399542)))

(declare-fun lt!1399543 () Unit!61250)

(assert (=> b!3982501 (= lt!1399543 (lemmaPrefixStaysPrefixWhenAddingToSuffix!644 lt!1399523 prefix!494 newSuffix!27))))

(declare-fun lt!1399554 () Unit!61250)

(assert (=> b!3982501 (= lt!1399554 (lemmaPrefixStaysPrefixWhenAddingToSuffix!644 lt!1399523 prefix!494 suffix!1299))))

(declare-fun b!3982502 () Bool)

(declare-fun res!1614319 () Bool)

(assert (=> b!3982502 (=> (not res!1614319) (not e!2468067))))

(declare-fun rulesInvariant!5656 (LexerInterface!6313 List!42702) Bool)

(assert (=> b!3982502 (= res!1614319 (rulesInvariant!5656 thiss!21717 rules!2999))))

(declare-fun b!3982503 () Bool)

(assert (=> b!3982503 (= e!2468091 e!2468085)))

(declare-fun res!1614320 () Bool)

(assert (=> b!3982503 (=> res!1614320 e!2468085)))

(assert (=> b!3982503 (= res!1614320 (not ((_ is Some!9137) lt!1399526)))))

(declare-fun maxPrefix!3611 (LexerInterface!6313 List!42702 List!42700) Option!9138)

(assert (=> b!3982503 (= lt!1399526 (maxPrefix!3611 thiss!21717 rules!2999 lt!1399542))))

(declare-fun lt!1399556 () tuple2!41800)

(assert (=> b!3982503 (and (= suffixResult!105 lt!1399517) (= lt!1399556 (tuple2!41801 lt!1399532 lt!1399517)))))

(declare-fun lt!1399550 () Unit!61250)

(assert (=> b!3982503 (= lt!1399550 (lemmaSamePrefixThenSameSuffix!1998 lt!1399523 suffixResult!105 lt!1399523 lt!1399517 lt!1399562))))

(assert (=> b!3982503 (isPrefix!3811 lt!1399523 lt!1399521)))

(declare-fun lt!1399531 () Unit!61250)

(assert (=> b!3982503 (= lt!1399531 (lemmaConcatTwoListThenFirstIsPrefix!2654 lt!1399523 lt!1399517))))

(declare-fun b!3982504 () Bool)

(assert (=> b!3982504 (= e!2468070 e!2468078)))

(declare-fun res!1614314 () Bool)

(assert (=> b!3982504 (=> res!1614314 e!2468078)))

(assert (=> b!3982504 (= res!1614314 (not (= lt!1399529 prefix!494)))))

(assert (=> b!3982504 (= lt!1399529 (++!11126 lt!1399523 lt!1399537))))

(assert (=> b!3982504 (= lt!1399537 (getSuffix!2242 prefix!494 lt!1399523))))

(assert (=> b!3982504 (isPrefix!3811 lt!1399523 prefix!494)))

(declare-fun lt!1399535 () Unit!61250)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!389 (List!42700 List!42700 List!42700) Unit!61250)

(assert (=> b!3982504 (= lt!1399535 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!389 prefix!494 lt!1399523 lt!1399562))))

(declare-fun b!3982505 () Bool)

(declare-fun tp!1213865 () Bool)

(assert (=> b!3982505 (= e!2468069 (and tp_is_empty!20229 tp!1213865))))

(declare-fun b!3982506 () Bool)

(declare-fun res!1614318 () Bool)

(assert (=> b!3982506 (=> (not res!1614318) (not e!2468064))))

(assert (=> b!3982506 (= res!1614318 (= (value!212268 token!484) lt!1399569))))

(declare-fun b!3982507 () Bool)

(assert (=> b!3982507 (= e!2468088 e!2468087)))

(declare-fun res!1614300 () Bool)

(assert (=> b!3982507 (=> (not res!1614300) (not e!2468087))))

(assert (=> b!3982507 (= res!1614300 (= (maxPrefix!3611 thiss!21717 rules!2999 lt!1399562) lt!1399534))))

(assert (=> b!3982507 (= lt!1399534 (Some!9137 lt!1399556))))

(assert (=> b!3982507 (= lt!1399556 (tuple2!41801 token!484 suffixResult!105))))

(assert (=> b!3982507 (= lt!1399562 (++!11126 prefix!494 suffix!1299))))

(declare-fun b!3982508 () Bool)

(declare-fun res!1614315 () Bool)

(assert (=> b!3982508 (=> (not res!1614315) (not e!2468067))))

(assert (=> b!3982508 (= res!1614315 (>= (size!31849 suffix!1299) (size!31849 newSuffix!27)))))

(assert (= (and start!374844 res!1614296) b!3982486))

(assert (= (and b!3982486 res!1614299) b!3982502))

(assert (= (and b!3982502 res!1614319) b!3982508))

(assert (= (and b!3982508 res!1614315) b!3982488))

(assert (= (and b!3982488 res!1614316) b!3982483))

(assert (= (and b!3982483 res!1614309) b!3982481))

(assert (= (and b!3982481 res!1614297) b!3982507))

(assert (= (and b!3982507 res!1614300) b!3982492))

(assert (= (and b!3982492 (not res!1614298)) b!3982477))

(assert (= (and b!3982477 (not res!1614312)) b!3982504))

(assert (= (and b!3982504 (not res!1614314)) b!3982487))

(assert (= (and b!3982487 (not res!1614295)) b!3982474))

(assert (= (and b!3982474 (not res!1614304)) b!3982501))

(assert (= (and b!3982501 (not res!1614307)) b!3982491))

(assert (= (and b!3982491 res!1614313) b!3982506))

(assert (= (and b!3982506 res!1614318) b!3982485))

(assert (= (and b!3982485 res!1614317) b!3982499))

(assert (= (and b!3982491 (not res!1614303)) b!3982503))

(assert (= (and b!3982503 (not res!1614320)) b!3982472))

(assert (= (and b!3982472 (not res!1614308)) b!3982478))

(assert (= (and b!3982478 (not res!1614310)) b!3982489))

(assert (= (and b!3982489 (not res!1614306)) b!3982482))

(assert (= (and b!3982482 (not res!1614302)) b!3982496))

(assert (= (and b!3982496 (not res!1614301)) b!3982498))

(assert (= (and b!3982498 (not res!1614311)) b!3982480))

(assert (= (and b!3982480 (not res!1614305)) b!3982473))

(assert (= (and start!374844 ((_ is Cons!42576) prefix!494)) b!3982505))

(assert (= b!3982490 b!3982493))

(assert (= b!3982500 b!3982490))

(assert (= start!374844 b!3982500))

(assert (= (and start!374844 ((_ is Cons!42576) suffixResult!105)) b!3982495))

(assert (= (and start!374844 ((_ is Cons!42576) suffix!1299)) b!3982475))

(assert (= (and start!374844 ((_ is Cons!42576) newSuffix!27)) b!3982479))

(assert (= b!3982484 b!3982476))

(assert (= b!3982497 b!3982484))

(assert (= (and start!374844 ((_ is Cons!42578) rules!2999)) b!3982497))

(assert (= (and start!374844 ((_ is Cons!42576) newSuffixResult!27)) b!3982494))

(declare-fun m!4556783 () Bool)

(assert (=> b!3982480 m!4556783))

(declare-fun m!4556785 () Bool)

(assert (=> b!3982480 m!4556785))

(declare-fun m!4556787 () Bool)

(assert (=> b!3982480 m!4556787))

(declare-fun m!4556789 () Bool)

(assert (=> b!3982480 m!4556789))

(declare-fun m!4556791 () Bool)

(assert (=> b!3982502 m!4556791))

(declare-fun m!4556793 () Bool)

(assert (=> b!3982473 m!4556793))

(declare-fun m!4556795 () Bool)

(assert (=> b!3982503 m!4556795))

(declare-fun m!4556797 () Bool)

(assert (=> b!3982503 m!4556797))

(declare-fun m!4556799 () Bool)

(assert (=> b!3982503 m!4556799))

(declare-fun m!4556801 () Bool)

(assert (=> b!3982503 m!4556801))

(declare-fun m!4556803 () Bool)

(assert (=> b!3982482 m!4556803))

(declare-fun m!4556805 () Bool)

(assert (=> b!3982482 m!4556805))

(declare-fun m!4556807 () Bool)

(assert (=> b!3982482 m!4556807))

(declare-fun m!4556809 () Bool)

(assert (=> b!3982507 m!4556809))

(declare-fun m!4556811 () Bool)

(assert (=> b!3982507 m!4556811))

(declare-fun m!4556813 () Bool)

(assert (=> b!3982484 m!4556813))

(declare-fun m!4556815 () Bool)

(assert (=> b!3982484 m!4556815))

(declare-fun m!4556817 () Bool)

(assert (=> b!3982478 m!4556817))

(declare-fun m!4556819 () Bool)

(assert (=> b!3982478 m!4556819))

(declare-fun m!4556821 () Bool)

(assert (=> b!3982492 m!4556821))

(declare-fun m!4556823 () Bool)

(assert (=> b!3982492 m!4556823))

(declare-fun m!4556825 () Bool)

(assert (=> b!3982492 m!4556825))

(declare-fun m!4556827 () Bool)

(assert (=> b!3982492 m!4556827))

(declare-fun m!4556829 () Bool)

(assert (=> b!3982486 m!4556829))

(declare-fun m!4556831 () Bool)

(assert (=> b!3982477 m!4556831))

(declare-fun m!4556833 () Bool)

(assert (=> b!3982477 m!4556833))

(declare-fun m!4556835 () Bool)

(assert (=> b!3982477 m!4556835))

(declare-fun m!4556837 () Bool)

(assert (=> b!3982477 m!4556837))

(declare-fun m!4556839 () Bool)

(assert (=> b!3982477 m!4556839))

(declare-fun m!4556841 () Bool)

(assert (=> start!374844 m!4556841))

(declare-fun m!4556843 () Bool)

(assert (=> b!3982490 m!4556843))

(declare-fun m!4556845 () Bool)

(assert (=> b!3982490 m!4556845))

(declare-fun m!4556847 () Bool)

(assert (=> b!3982472 m!4556847))

(declare-fun m!4556849 () Bool)

(assert (=> b!3982472 m!4556849))

(declare-fun m!4556851 () Bool)

(assert (=> b!3982472 m!4556851))

(declare-fun m!4556853 () Bool)

(assert (=> b!3982472 m!4556853))

(declare-fun m!4556855 () Bool)

(assert (=> b!3982472 m!4556855))

(declare-fun m!4556857 () Bool)

(assert (=> b!3982472 m!4556857))

(declare-fun m!4556859 () Bool)

(assert (=> b!3982472 m!4556859))

(assert (=> b!3982472 m!4556851))

(declare-fun m!4556861 () Bool)

(assert (=> b!3982472 m!4556861))

(declare-fun m!4556863 () Bool)

(assert (=> b!3982472 m!4556863))

(declare-fun m!4556865 () Bool)

(assert (=> b!3982472 m!4556865))

(declare-fun m!4556867 () Bool)

(assert (=> b!3982472 m!4556867))

(declare-fun m!4556869 () Bool)

(assert (=> b!3982472 m!4556869))

(declare-fun m!4556871 () Bool)

(assert (=> b!3982472 m!4556871))

(declare-fun m!4556873 () Bool)

(assert (=> b!3982472 m!4556873))

(declare-fun m!4556875 () Bool)

(assert (=> b!3982472 m!4556875))

(declare-fun m!4556877 () Bool)

(assert (=> b!3982472 m!4556877))

(assert (=> b!3982472 m!4556873))

(declare-fun m!4556879 () Bool)

(assert (=> b!3982472 m!4556879))

(assert (=> b!3982472 m!4556875))

(declare-fun m!4556881 () Bool)

(assert (=> b!3982472 m!4556881))

(declare-fun m!4556883 () Bool)

(assert (=> b!3982487 m!4556883))

(declare-fun m!4556885 () Bool)

(assert (=> b!3982487 m!4556885))

(declare-fun m!4556887 () Bool)

(assert (=> b!3982487 m!4556887))

(declare-fun m!4556889 () Bool)

(assert (=> b!3982487 m!4556889))

(declare-fun m!4556891 () Bool)

(assert (=> b!3982500 m!4556891))

(declare-fun m!4556893 () Bool)

(assert (=> b!3982488 m!4556893))

(declare-fun m!4556895 () Bool)

(assert (=> b!3982489 m!4556895))

(declare-fun m!4556897 () Bool)

(assert (=> b!3982489 m!4556897))

(declare-fun m!4556899 () Bool)

(assert (=> b!3982489 m!4556899))

(declare-fun m!4556901 () Bool)

(assert (=> b!3982504 m!4556901))

(declare-fun m!4556903 () Bool)

(assert (=> b!3982504 m!4556903))

(declare-fun m!4556905 () Bool)

(assert (=> b!3982504 m!4556905))

(declare-fun m!4556907 () Bool)

(assert (=> b!3982504 m!4556907))

(declare-fun m!4556909 () Bool)

(assert (=> b!3982498 m!4556909))

(declare-fun m!4556911 () Bool)

(assert (=> b!3982498 m!4556911))

(declare-fun m!4556913 () Bool)

(assert (=> b!3982501 m!4556913))

(declare-fun m!4556915 () Bool)

(assert (=> b!3982501 m!4556915))

(declare-fun m!4556917 () Bool)

(assert (=> b!3982501 m!4556917))

(declare-fun m!4556919 () Bool)

(assert (=> b!3982501 m!4556919))

(declare-fun m!4556921 () Bool)

(assert (=> b!3982483 m!4556921))

(declare-fun m!4556923 () Bool)

(assert (=> b!3982483 m!4556923))

(declare-fun m!4556925 () Bool)

(assert (=> b!3982483 m!4556925))

(assert (=> b!3982483 m!4556925))

(declare-fun m!4556927 () Bool)

(assert (=> b!3982483 m!4556927))

(declare-fun m!4556929 () Bool)

(assert (=> b!3982508 m!4556929))

(declare-fun m!4556931 () Bool)

(assert (=> b!3982508 m!4556931))

(declare-fun m!4556933 () Bool)

(assert (=> b!3982481 m!4556933))

(declare-fun m!4556935 () Bool)

(assert (=> b!3982481 m!4556935))

(declare-fun m!4556937 () Bool)

(assert (=> b!3982491 m!4556937))

(declare-fun m!4556939 () Bool)

(assert (=> b!3982491 m!4556939))

(declare-fun m!4556941 () Bool)

(assert (=> b!3982491 m!4556941))

(declare-fun m!4556943 () Bool)

(assert (=> b!3982491 m!4556943))

(declare-fun m!4556945 () Bool)

(assert (=> b!3982485 m!4556945))

(declare-fun m!4556947 () Bool)

(assert (=> b!3982474 m!4556947))

(declare-fun m!4556949 () Bool)

(assert (=> b!3982474 m!4556949))

(declare-fun m!4556951 () Bool)

(assert (=> b!3982474 m!4556951))

(declare-fun m!4556953 () Bool)

(assert (=> b!3982474 m!4556953))

(declare-fun m!4556955 () Bool)

(assert (=> b!3982474 m!4556955))

(assert (=> b!3982474 m!4556949))

(declare-fun m!4556957 () Bool)

(assert (=> b!3982474 m!4556957))

(declare-fun m!4556959 () Bool)

(assert (=> b!3982474 m!4556959))

(check-sat tp_is_empty!20229 (not b!3982501) (not b!3982500) (not b!3982491) (not b!3982488) (not b!3982495) (not b!3982502) (not b!3982494) (not b!3982489) (not b!3982505) (not b!3982479) (not start!374844) (not b!3982484) (not b!3982473) (not b!3982508) (not b!3982475) (not b!3982507) b_and!306095 (not b!3982503) (not b!3982490) (not b_next!111255) (not b!3982486) (not b!3982482) (not b!3982480) (not b!3982477) b_and!306099 (not b!3982487) (not b!3982481) (not b!3982504) (not b!3982483) (not b!3982492) (not b!3982498) b_and!306101 (not b_next!111249) (not b_next!111253) (not b!3982472) (not b!3982497) (not b!3982478) b_and!306097 (not b_next!111251) (not b!3982474) (not b!3982485))
(check-sat b_and!306095 (not b_next!111255) b_and!306099 b_and!306101 b_and!306097 (not b_next!111251) (not b_next!111249) (not b_next!111253))
