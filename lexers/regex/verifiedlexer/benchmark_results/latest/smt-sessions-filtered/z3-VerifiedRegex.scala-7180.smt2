; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382304 () Bool)

(assert start!382304)

(declare-fun b!4054032 () Bool)

(declare-fun b_free!112809 () Bool)

(declare-fun b_next!113513 () Bool)

(assert (=> b!4054032 (= b_free!112809 (not b_next!113513))))

(declare-fun tp!1229005 () Bool)

(declare-fun b_and!311763 () Bool)

(assert (=> b!4054032 (= tp!1229005 b_and!311763)))

(declare-fun b_free!112811 () Bool)

(declare-fun b_next!113515 () Bool)

(assert (=> b!4054032 (= b_free!112811 (not b_next!113515))))

(declare-fun tp!1229000 () Bool)

(declare-fun b_and!311765 () Bool)

(assert (=> b!4054032 (= tp!1229000 b_and!311765)))

(declare-fun b!4054018 () Bool)

(declare-fun b_free!112813 () Bool)

(declare-fun b_next!113517 () Bool)

(assert (=> b!4054018 (= b_free!112813 (not b_next!113517))))

(declare-fun tp!1229001 () Bool)

(declare-fun b_and!311767 () Bool)

(assert (=> b!4054018 (= tp!1229001 b_and!311767)))

(declare-fun b_free!112815 () Bool)

(declare-fun b_next!113519 () Bool)

(assert (=> b!4054018 (= b_free!112815 (not b_next!113519))))

(declare-fun tp!1229004 () Bool)

(declare-fun b_and!311769 () Bool)

(assert (=> b!4054018 (= tp!1229004 b_and!311769)))

(declare-fun b!4054010 () Bool)

(declare-fun e!2515551 () Bool)

(declare-fun e!2515540 () Bool)

(declare-fun tp!1228999 () Bool)

(assert (=> b!4054010 (= e!2515551 (and e!2515540 tp!1228999))))

(declare-fun b!4054011 () Bool)

(declare-fun e!2515520 () Bool)

(assert (=> b!4054011 (= e!2515520 true)))

(assert (=> b!4054011 false))

(declare-datatypes ((C!23892 0))(
  ( (C!23893 (val!14040 Int)) )
))
(declare-datatypes ((List!43455 0))(
  ( (Nil!43331) (Cons!43331 (h!48751 C!23892) (t!336164 List!43455)) )
))
(declare-datatypes ((IArray!26323 0))(
  ( (IArray!26324 (innerList!13219 List!43455)) )
))
(declare-datatypes ((Conc!13159 0))(
  ( (Node!13159 (left!32623 Conc!13159) (right!32953 Conc!13159) (csize!26548 Int) (cheight!13370 Int)) (Leaf!20340 (xs!16465 IArray!26323) (csize!26549 Int)) (Empty!13159) )
))
(declare-datatypes ((BalanceConc!25912 0))(
  ( (BalanceConc!25913 (c!700282 Conc!13159)) )
))
(declare-datatypes ((List!43456 0))(
  ( (Nil!43332) (Cons!43332 (h!48752 (_ BitVec 16)) (t!336165 List!43456)) )
))
(declare-datatypes ((TokenValue!7178 0))(
  ( (FloatLiteralValue!14356 (text!50691 List!43456)) (TokenValueExt!7177 (__x!26573 Int)) (Broken!35890 (value!218626 List!43456)) (Object!7301) (End!7178) (Def!7178) (Underscore!7178) (Match!7178) (Else!7178) (Error!7178) (Case!7178) (If!7178) (Extends!7178) (Abstract!7178) (Class!7178) (Val!7178) (DelimiterValue!14356 (del!7238 List!43456)) (KeywordValue!7184 (value!218627 List!43456)) (CommentValue!14356 (value!218628 List!43456)) (WhitespaceValue!14356 (value!218629 List!43456)) (IndentationValue!7178 (value!218630 List!43456)) (String!49607) (Int32!7178) (Broken!35891 (value!218631 List!43456)) (Boolean!7179) (Unit!62650) (OperatorValue!7181 (op!7238 List!43456)) (IdentifierValue!14356 (value!218632 List!43456)) (IdentifierValue!14357 (value!218633 List!43456)) (WhitespaceValue!14357 (value!218634 List!43456)) (True!14356) (False!14356) (Broken!35892 (value!218635 List!43456)) (Broken!35893 (value!218636 List!43456)) (True!14357) (RightBrace!7178) (RightBracket!7178) (Colon!7178) (Null!7178) (Comma!7178) (LeftBracket!7178) (False!14357) (LeftBrace!7178) (ImaginaryLiteralValue!7178 (text!50692 List!43456)) (StringLiteralValue!21534 (value!218637 List!43456)) (EOFValue!7178 (value!218638 List!43456)) (IdentValue!7178 (value!218639 List!43456)) (DelimiterValue!14357 (value!218640 List!43456)) (DedentValue!7178 (value!218641 List!43456)) (NewLineValue!7178 (value!218642 List!43456)) (IntegerValue!21534 (value!218643 (_ BitVec 32)) (text!50693 List!43456)) (IntegerValue!21535 (value!218644 Int) (text!50694 List!43456)) (Times!7178) (Or!7178) (Equal!7178) (Minus!7178) (Broken!35894 (value!218645 List!43456)) (And!7178) (Div!7178) (LessEqual!7178) (Mod!7178) (Concat!19031) (Not!7178) (Plus!7178) (SpaceValue!7178 (value!218646 List!43456)) (IntegerValue!21536 (value!218647 Int) (text!50695 List!43456)) (StringLiteralValue!21535 (text!50696 List!43456)) (FloatLiteralValue!14357 (text!50697 List!43456)) (BytesLiteralValue!7178 (value!218648 List!43456)) (CommentValue!14357 (value!218649 List!43456)) (StringLiteralValue!21536 (value!218650 List!43456)) (ErrorTokenValue!7178 (msg!7239 List!43456)) )
))
(declare-datatypes ((Regex!11853 0))(
  ( (ElementMatch!11853 (c!700283 C!23892)) (Concat!19032 (regOne!24218 Regex!11853) (regTwo!24218 Regex!11853)) (EmptyExpr!11853) (Star!11853 (reg!12182 Regex!11853)) (EmptyLang!11853) (Union!11853 (regOne!24219 Regex!11853) (regTwo!24219 Regex!11853)) )
))
(declare-datatypes ((String!49608 0))(
  ( (String!49609 (value!218651 String)) )
))
(declare-datatypes ((TokenValueInjection!13784 0))(
  ( (TokenValueInjection!13785 (toValue!9504 Int) (toChars!9363 Int)) )
))
(declare-datatypes ((Rule!13696 0))(
  ( (Rule!13697 (regex!6948 Regex!11853) (tag!7808 String!49608) (isSeparator!6948 Bool) (transformation!6948 TokenValueInjection!13784)) )
))
(declare-datatypes ((Token!13034 0))(
  ( (Token!13035 (value!218652 TokenValue!7178) (rule!10032 Rule!13696) (size!32397 Int) (originalCharacters!7548 List!43455)) )
))
(declare-fun token!484 () Token!13034)

(declare-fun lt!1446171 () List!43455)

(declare-datatypes ((Unit!62651 0))(
  ( (Unit!62652) )
))
(declare-fun lt!1446164 () Unit!62651)

(declare-fun lt!1446143 () List!43455)

(declare-datatypes ((LexerInterface!6537 0))(
  ( (LexerInterfaceExt!6534 (__x!26574 Int)) (Lexer!6535) )
))
(declare-fun thiss!21717 () LexerInterface!6537)

(declare-fun lt!1446134 () List!43455)

(declare-datatypes ((List!43457 0))(
  ( (Nil!43333) (Cons!43333 (h!48753 Rule!13696) (t!336166 List!43457)) )
))
(declare-fun rules!2999 () List!43457)

(declare-datatypes ((tuple2!42398 0))(
  ( (tuple2!42399 (_1!24333 Token!13034) (_2!24333 List!43455)) )
))
(declare-datatypes ((Option!9362 0))(
  ( (None!9361) (Some!9361 (v!39773 tuple2!42398)) )
))
(declare-fun lt!1446139 () Option!9362)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!474 (LexerInterface!6537 List!43457 Rule!13696 List!43455 List!43455 List!43455 Rule!13696) Unit!62651)

(assert (=> b!4054011 (= lt!1446164 (lemmaMaxPrefixOutputsMaxPrefix!474 thiss!21717 rules!2999 (rule!10032 (_1!24333 (v!39773 lt!1446139))) lt!1446143 lt!1446134 lt!1446171 (rule!10032 token!484)))))

(declare-fun b!4054012 () Bool)

(declare-fun res!1652563 () Bool)

(declare-fun e!2515534 () Bool)

(assert (=> b!4054012 (=> (not res!1652563) (not e!2515534))))

(declare-fun newSuffix!27 () List!43455)

(declare-fun suffix!1299 () List!43455)

(declare-fun isPrefix!4035 (List!43455 List!43455) Bool)

(assert (=> b!4054012 (= res!1652563 (isPrefix!4035 newSuffix!27 suffix!1299))))

(declare-fun b!4054013 () Bool)

(declare-fun res!1652559 () Bool)

(declare-fun e!2515535 () Bool)

(assert (=> b!4054013 (=> (not res!1652559) (not e!2515535))))

(declare-fun lt!1446125 () TokenValue!7178)

(assert (=> b!4054013 (= res!1652559 (= (value!218652 token!484) lt!1446125))))

(declare-fun b!4054014 () Bool)

(declare-fun e!2515523 () Bool)

(declare-fun e!2515539 () Bool)

(assert (=> b!4054014 (= e!2515523 e!2515539)))

(declare-fun res!1652542 () Bool)

(assert (=> b!4054014 (=> (not res!1652542) (not e!2515539))))

(declare-fun lt!1446170 () List!43455)

(assert (=> b!4054014 (= res!1652542 (= lt!1446170 lt!1446134))))

(declare-fun prefix!494 () List!43455)

(declare-fun ++!11350 (List!43455 List!43455) List!43455)

(assert (=> b!4054014 (= lt!1446134 (++!11350 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43455)

(assert (=> b!4054014 (= lt!1446170 (++!11350 lt!1446171 newSuffixResult!27))))

(declare-fun b!4054015 () Bool)

(declare-fun res!1652547 () Bool)

(assert (=> b!4054015 (=> (not res!1652547) (not e!2515535))))

(declare-fun size!32398 (List!43455) Int)

(assert (=> b!4054015 (= res!1652547 (= (size!32397 token!484) (size!32398 (originalCharacters!7548 token!484))))))

(declare-fun b!4054016 () Bool)

(declare-fun e!2515524 () Unit!62651)

(declare-fun Unit!62653 () Unit!62651)

(assert (=> b!4054016 (= e!2515524 Unit!62653)))

(declare-fun lt!1446162 () Unit!62651)

(declare-fun lt!1446124 () List!43455)

(assert (=> b!4054016 (= lt!1446162 (lemmaMaxPrefixOutputsMaxPrefix!474 thiss!21717 rules!2999 (rule!10032 token!484) lt!1446171 lt!1446124 lt!1446143 (rule!10032 (_1!24333 (v!39773 lt!1446139)))))))

(declare-fun res!1652548 () Bool)

(declare-fun matchR!5806 (Regex!11853 List!43455) Bool)

(assert (=> b!4054016 (= res!1652548 (not (matchR!5806 (regex!6948 (rule!10032 (_1!24333 (v!39773 lt!1446139)))) lt!1446143)))))

(declare-fun e!2515546 () Bool)

(assert (=> b!4054016 (=> (not res!1652548) (not e!2515546))))

(assert (=> b!4054016 e!2515546))

(declare-fun b!4054017 () Bool)

(declare-fun res!1652565 () Bool)

(assert (=> b!4054017 (=> res!1652565 e!2515520)))

(assert (=> b!4054017 (= res!1652565 (not (isPrefix!4035 lt!1446143 lt!1446134)))))

(declare-fun e!2515530 () Bool)

(assert (=> b!4054018 (= e!2515530 (and tp!1229001 tp!1229004))))

(declare-fun b!4054019 () Bool)

(declare-fun e!2515519 () Bool)

(declare-fun e!2515522 () Bool)

(assert (=> b!4054019 (= e!2515519 e!2515522)))

(declare-fun res!1652555 () Bool)

(assert (=> b!4054019 (=> res!1652555 e!2515522)))

(get-info :version)

(assert (=> b!4054019 (= res!1652555 (not ((_ is Some!9361) lt!1446139)))))

(declare-fun maxPrefix!3835 (LexerInterface!6537 List!43457 List!43455) Option!9362)

(assert (=> b!4054019 (= lt!1446139 (maxPrefix!3835 thiss!21717 rules!2999 lt!1446134))))

(declare-fun lt!1446169 () List!43455)

(declare-fun lt!1446165 () Token!13034)

(declare-fun suffixResult!105 () List!43455)

(declare-fun lt!1446158 () tuple2!42398)

(assert (=> b!4054019 (and (= suffixResult!105 lt!1446169) (= lt!1446158 (tuple2!42399 lt!1446165 lt!1446169)))))

(declare-fun lt!1446145 () Unit!62651)

(declare-fun lemmaSamePrefixThenSameSuffix!2196 (List!43455 List!43455 List!43455 List!43455 List!43455) Unit!62651)

(assert (=> b!4054019 (= lt!1446145 (lemmaSamePrefixThenSameSuffix!2196 lt!1446171 suffixResult!105 lt!1446171 lt!1446169 lt!1446124))))

(declare-fun lt!1446137 () List!43455)

(assert (=> b!4054019 (isPrefix!4035 lt!1446171 lt!1446137)))

(declare-fun lt!1446160 () Unit!62651)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2870 (List!43455 List!43455) Unit!62651)

(assert (=> b!4054019 (= lt!1446160 (lemmaConcatTwoListThenFirstIsPrefix!2870 lt!1446171 lt!1446169))))

(declare-fun b!4054020 () Bool)

(declare-fun e!2515544 () Bool)

(declare-fun tp_is_empty!20677 () Bool)

(declare-fun tp!1228998 () Bool)

(assert (=> b!4054020 (= e!2515544 (and tp_is_empty!20677 tp!1228998))))

(declare-fun b!4054021 () Bool)

(declare-fun e!2515525 () Bool)

(declare-fun tp!1228996 () Bool)

(assert (=> b!4054021 (= e!2515525 (and tp_is_empty!20677 tp!1228996))))

(declare-fun b!4054022 () Bool)

(declare-fun e!2515529 () Bool)

(declare-fun e!2515541 () Bool)

(assert (=> b!4054022 (= e!2515529 e!2515541)))

(declare-fun res!1652556 () Bool)

(assert (=> b!4054022 (=> res!1652556 e!2515541)))

(declare-fun lt!1446157 () List!43455)

(assert (=> b!4054022 (= res!1652556 (not (= lt!1446157 lt!1446124)))))

(declare-fun lt!1446123 () List!43455)

(assert (=> b!4054022 (= lt!1446157 (++!11350 prefix!494 lt!1446123))))

(declare-fun lt!1446138 () List!43455)

(assert (=> b!4054022 (= lt!1446157 (++!11350 lt!1446134 lt!1446138))))

(declare-fun lt!1446147 () Unit!62651)

(declare-fun lemmaConcatAssociativity!2652 (List!43455 List!43455 List!43455) Unit!62651)

(assert (=> b!4054022 (= lt!1446147 (lemmaConcatAssociativity!2652 prefix!494 newSuffix!27 lt!1446138))))

(declare-fun b!4054023 () Bool)

(declare-fun e!2515545 () Bool)

(assert (=> b!4054023 (= e!2515545 e!2515519)))

(declare-fun res!1652541 () Bool)

(assert (=> b!4054023 (=> res!1652541 e!2515519)))

(assert (=> b!4054023 (= res!1652541 (not (= lt!1446137 lt!1446124)))))

(assert (=> b!4054023 (= lt!1446137 (++!11350 lt!1446171 lt!1446169))))

(declare-fun getSuffix!2452 (List!43455 List!43455) List!43455)

(assert (=> b!4054023 (= lt!1446169 (getSuffix!2452 lt!1446124 lt!1446171))))

(assert (=> b!4054023 e!2515535))

(declare-fun res!1652561 () Bool)

(assert (=> b!4054023 (=> (not res!1652561) (not e!2515535))))

(assert (=> b!4054023 (= res!1652561 (isPrefix!4035 lt!1446124 lt!1446124))))

(declare-fun lt!1446131 () Unit!62651)

(declare-fun lemmaIsPrefixRefl!2602 (List!43455 List!43455) Unit!62651)

(assert (=> b!4054023 (= lt!1446131 (lemmaIsPrefixRefl!2602 lt!1446124 lt!1446124))))

(declare-fun b!4054024 () Bool)

(declare-fun e!2515526 () Bool)

(declare-fun tp!1229008 () Bool)

(assert (=> b!4054024 (= e!2515526 (and tp_is_empty!20677 tp!1229008))))

(declare-fun b!4054025 () Bool)

(declare-fun e!2515527 () Bool)

(declare-fun tp!1229007 () Bool)

(assert (=> b!4054025 (= e!2515527 (and tp_is_empty!20677 tp!1229007))))

(declare-fun b!4054026 () Bool)

(assert (=> b!4054026 (= e!2515546 false)))

(declare-fun b!4054027 () Bool)

(declare-fun res!1652557 () Bool)

(assert (=> b!4054027 (=> (not res!1652557) (not e!2515534))))

(declare-fun isEmpty!25857 (List!43457) Bool)

(assert (=> b!4054027 (= res!1652557 (not (isEmpty!25857 rules!2999)))))

(declare-fun e!2515542 () Bool)

(declare-fun e!2515533 () Bool)

(declare-fun tp!1229002 () Bool)

(declare-fun b!4054028 () Bool)

(declare-fun inv!21 (TokenValue!7178) Bool)

(assert (=> b!4054028 (= e!2515533 (and (inv!21 (value!218652 token!484)) e!2515542 tp!1229002))))

(declare-fun b!4054029 () Bool)

(declare-fun e!2515521 () Bool)

(declare-fun e!2515528 () Bool)

(assert (=> b!4054029 (= e!2515521 (not e!2515528))))

(declare-fun res!1652554 () Bool)

(assert (=> b!4054029 (=> res!1652554 e!2515528)))

(declare-fun lt!1446146 () List!43455)

(assert (=> b!4054029 (= res!1652554 (not (= lt!1446146 lt!1446124)))))

(assert (=> b!4054029 (= lt!1446146 (++!11350 lt!1446171 suffixResult!105))))

(declare-fun lt!1446133 () Unit!62651)

(declare-fun lemmaInv!1157 (TokenValueInjection!13784) Unit!62651)

(assert (=> b!4054029 (= lt!1446133 (lemmaInv!1157 (transformation!6948 (rule!10032 token!484))))))

(declare-fun ruleValid!2878 (LexerInterface!6537 Rule!13696) Bool)

(assert (=> b!4054029 (ruleValid!2878 thiss!21717 (rule!10032 token!484))))

(declare-fun lt!1446163 () Unit!62651)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1948 (LexerInterface!6537 Rule!13696 List!43457) Unit!62651)

(assert (=> b!4054029 (= lt!1446163 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1948 thiss!21717 (rule!10032 token!484) rules!2999))))

(declare-fun e!2515532 () Bool)

(declare-fun b!4054030 () Bool)

(declare-fun tp!1229003 () Bool)

(declare-fun inv!57924 (String!49608) Bool)

(declare-fun inv!57927 (TokenValueInjection!13784) Bool)

(assert (=> b!4054030 (= e!2515540 (and tp!1229003 (inv!57924 (tag!7808 (h!48753 rules!2999))) (inv!57927 (transformation!6948 (h!48753 rules!2999))) e!2515532))))

(declare-fun b!4054031 () Bool)

(declare-fun e!2515536 () Bool)

(declare-fun e!2515531 () Bool)

(assert (=> b!4054031 (= e!2515536 e!2515531)))

(declare-fun res!1652550 () Bool)

(assert (=> b!4054031 (=> res!1652550 e!2515531)))

(declare-fun lt!1446149 () List!43455)

(assert (=> b!4054031 (= res!1652550 (not (= lt!1446149 prefix!494)))))

(declare-fun lt!1446140 () List!43455)

(assert (=> b!4054031 (= lt!1446149 (++!11350 lt!1446171 lt!1446140))))

(assert (=> b!4054031 (= lt!1446140 (getSuffix!2452 prefix!494 lt!1446171))))

(assert (=> b!4054031 (isPrefix!4035 lt!1446171 prefix!494)))

(declare-fun lt!1446154 () Unit!62651)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!599 (List!43455 List!43455 List!43455) Unit!62651)

(assert (=> b!4054031 (= lt!1446154 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!599 prefix!494 lt!1446171 lt!1446124))))

(assert (=> b!4054032 (= e!2515532 (and tp!1229005 tp!1229000))))

(declare-fun b!4054033 () Bool)

(declare-fun res!1652543 () Bool)

(assert (=> b!4054033 (=> (not res!1652543) (not e!2515534))))

(assert (=> b!4054033 (= res!1652543 (>= (size!32398 suffix!1299) (size!32398 newSuffix!27)))))

(declare-fun b!4054034 () Bool)

(assert (=> b!4054034 (= e!2515534 e!2515523)))

(declare-fun res!1652566 () Bool)

(assert (=> b!4054034 (=> (not res!1652566) (not e!2515523))))

(declare-fun lt!1446150 () Int)

(declare-fun lt!1446118 () Int)

(assert (=> b!4054034 (= res!1652566 (>= lt!1446150 lt!1446118))))

(assert (=> b!4054034 (= lt!1446118 (size!32398 lt!1446171))))

(assert (=> b!4054034 (= lt!1446150 (size!32398 prefix!494))))

(declare-fun list!16146 (BalanceConc!25912) List!43455)

(declare-fun charsOf!4764 (Token!13034) BalanceConc!25912)

(assert (=> b!4054034 (= lt!1446171 (list!16146 (charsOf!4764 token!484)))))

(declare-fun b!4054035 () Bool)

(declare-fun e!2515538 () Bool)

(declare-fun tp!1228997 () Bool)

(assert (=> b!4054035 (= e!2515538 (and tp_is_empty!20677 tp!1228997))))

(declare-fun b!4054036 () Bool)

(declare-fun e!2515518 () Bool)

(assert (=> b!4054036 (= e!2515518 e!2515545)))

(declare-fun res!1652553 () Bool)

(assert (=> b!4054036 (=> res!1652553 e!2515545)))

(assert (=> b!4054036 (= res!1652553 (not (matchR!5806 (regex!6948 (rule!10032 token!484)) lt!1446171)))))

(assert (=> b!4054036 (isPrefix!4035 lt!1446171 lt!1446134)))

(declare-fun lt!1446141 () Unit!62651)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!828 (List!43455 List!43455 List!43455) Unit!62651)

(assert (=> b!4054036 (= lt!1446141 (lemmaPrefixStaysPrefixWhenAddingToSuffix!828 lt!1446171 prefix!494 newSuffix!27))))

(declare-fun lt!1446126 () Unit!62651)

(assert (=> b!4054036 (= lt!1446126 (lemmaPrefixStaysPrefixWhenAddingToSuffix!828 lt!1446171 prefix!494 suffix!1299))))

(declare-fun b!4054037 () Bool)

(declare-fun e!2515547 () Bool)

(assert (=> b!4054037 (= e!2515522 e!2515547)))

(declare-fun res!1652564 () Bool)

(assert (=> b!4054037 (=> res!1652564 e!2515547)))

(declare-fun lt!1446166 () Option!9362)

(assert (=> b!4054037 (= res!1652564 (not (= lt!1446166 (Some!9361 (v!39773 lt!1446139)))))))

(assert (=> b!4054037 (isPrefix!4035 lt!1446143 (++!11350 lt!1446143 newSuffixResult!27))))

(declare-fun lt!1446116 () Unit!62651)

(assert (=> b!4054037 (= lt!1446116 (lemmaConcatTwoListThenFirstIsPrefix!2870 lt!1446143 newSuffixResult!27))))

(declare-fun lt!1446119 () List!43455)

(assert (=> b!4054037 (isPrefix!4035 lt!1446143 lt!1446119)))

(assert (=> b!4054037 (= lt!1446119 (++!11350 lt!1446143 (_2!24333 (v!39773 lt!1446139))))))

(declare-fun lt!1446130 () Unit!62651)

(assert (=> b!4054037 (= lt!1446130 (lemmaConcatTwoListThenFirstIsPrefix!2870 lt!1446143 (_2!24333 (v!39773 lt!1446139))))))

(declare-fun lt!1446121 () Int)

(declare-fun lt!1446156 () TokenValue!7178)

(assert (=> b!4054037 (= lt!1446166 (Some!9361 (tuple2!42399 (Token!13035 lt!1446156 (rule!10032 (_1!24333 (v!39773 lt!1446139))) lt!1446121 lt!1446143) (_2!24333 (v!39773 lt!1446139)))))))

(declare-fun maxPrefixOneRule!2847 (LexerInterface!6537 Rule!13696 List!43455) Option!9362)

(assert (=> b!4054037 (= lt!1446166 (maxPrefixOneRule!2847 thiss!21717 (rule!10032 (_1!24333 (v!39773 lt!1446139))) lt!1446134))))

(assert (=> b!4054037 (= lt!1446121 (size!32398 lt!1446143))))

(declare-fun apply!10137 (TokenValueInjection!13784 BalanceConc!25912) TokenValue!7178)

(declare-fun seqFromList!5165 (List!43455) BalanceConc!25912)

(assert (=> b!4054037 (= lt!1446156 (apply!10137 (transformation!6948 (rule!10032 (_1!24333 (v!39773 lt!1446139)))) (seqFromList!5165 lt!1446143)))))

(declare-fun lt!1446148 () Unit!62651)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1653 (LexerInterface!6537 List!43457 List!43455 List!43455 List!43455 Rule!13696) Unit!62651)

(assert (=> b!4054037 (= lt!1446148 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1653 thiss!21717 rules!2999 lt!1446143 lt!1446134 (_2!24333 (v!39773 lt!1446139)) (rule!10032 (_1!24333 (v!39773 lt!1446139)))))))

(assert (=> b!4054037 (= lt!1446143 (list!16146 (charsOf!4764 (_1!24333 (v!39773 lt!1446139)))))))

(declare-fun lt!1446167 () Unit!62651)

(assert (=> b!4054037 (= lt!1446167 (lemmaInv!1157 (transformation!6948 (rule!10032 (_1!24333 (v!39773 lt!1446139))))))))

(assert (=> b!4054037 (ruleValid!2878 thiss!21717 (rule!10032 (_1!24333 (v!39773 lt!1446139))))))

(declare-fun lt!1446120 () Unit!62651)

(assert (=> b!4054037 (= lt!1446120 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1948 thiss!21717 (rule!10032 (_1!24333 (v!39773 lt!1446139))) rules!2999))))

(declare-fun lt!1446155 () Unit!62651)

(declare-fun lemmaCharactersSize!1467 (Token!13034) Unit!62651)

(assert (=> b!4054037 (= lt!1446155 (lemmaCharactersSize!1467 token!484))))

(declare-fun lt!1446128 () Unit!62651)

(assert (=> b!4054037 (= lt!1446128 (lemmaCharactersSize!1467 (_1!24333 (v!39773 lt!1446139))))))

(declare-fun tp!1229006 () Bool)

(declare-fun b!4054038 () Bool)

(assert (=> b!4054038 (= e!2515542 (and tp!1229006 (inv!57924 (tag!7808 (rule!10032 token!484))) (inv!57927 (transformation!6948 (rule!10032 token!484))) e!2515530))))

(declare-fun b!4054039 () Bool)

(declare-fun res!1652549 () Bool)

(declare-fun e!2515537 () Bool)

(assert (=> b!4054039 (=> res!1652549 e!2515537)))

(assert (=> b!4054039 (= res!1652549 (not (= lt!1446119 lt!1446134)))))

(declare-fun b!4054040 () Bool)

(declare-fun e!2515543 () Bool)

(assert (=> b!4054040 (= e!2515531 e!2515543)))

(declare-fun res!1652546 () Bool)

(assert (=> b!4054040 (=> res!1652546 e!2515543)))

(declare-fun lt!1446161 () List!43455)

(declare-fun lt!1446168 () List!43455)

(assert (=> b!4054040 (= res!1652546 (or (not (= lt!1446124 lt!1446168)) (not (= lt!1446124 lt!1446161))))))

(assert (=> b!4054040 (= lt!1446168 lt!1446161)))

(declare-fun lt!1446122 () List!43455)

(assert (=> b!4054040 (= lt!1446161 (++!11350 lt!1446171 lt!1446122))))

(assert (=> b!4054040 (= lt!1446168 (++!11350 lt!1446149 suffix!1299))))

(assert (=> b!4054040 (= lt!1446122 (++!11350 lt!1446140 suffix!1299))))

(declare-fun lt!1446136 () Unit!62651)

(assert (=> b!4054040 (= lt!1446136 (lemmaConcatAssociativity!2652 lt!1446171 lt!1446140 suffix!1299))))

(declare-fun b!4054041 () Bool)

(declare-fun e!2515548 () Bool)

(assert (=> b!4054041 (= e!2515537 e!2515548)))

(declare-fun res!1652540 () Bool)

(assert (=> b!4054041 (=> res!1652540 e!2515548)))

(declare-fun lt!1446129 () List!43455)

(assert (=> b!4054041 (= res!1652540 (not (= lt!1446129 lt!1446134)))))

(declare-fun lt!1446142 () List!43455)

(assert (=> b!4054041 (= lt!1446129 (++!11350 lt!1446143 lt!1446142))))

(assert (=> b!4054041 (= lt!1446142 (getSuffix!2452 lt!1446134 lt!1446143))))

(declare-fun b!4054042 () Bool)

(assert (=> b!4054042 (= e!2515547 e!2515529)))

(declare-fun res!1652558 () Bool)

(assert (=> b!4054042 (=> res!1652558 e!2515529)))

(assert (=> b!4054042 (= res!1652558 (not (= lt!1446123 suffix!1299)))))

(assert (=> b!4054042 (= lt!1446123 (++!11350 newSuffix!27 lt!1446138))))

(assert (=> b!4054042 (= lt!1446138 (getSuffix!2452 suffix!1299 newSuffix!27))))

(declare-fun b!4054043 () Bool)

(assert (=> b!4054043 (= e!2515535 (and (= (size!32397 token!484) lt!1446118) (= (originalCharacters!7548 token!484) lt!1446171)))))

(declare-fun b!4054044 () Bool)

(assert (=> b!4054044 (= e!2515541 e!2515537)))

(declare-fun res!1652545 () Bool)

(assert (=> b!4054044 (=> res!1652545 e!2515537)))

(assert (=> b!4054044 (= res!1652545 (not (isPrefix!4035 lt!1446143 lt!1446124)))))

(assert (=> b!4054044 (isPrefix!4035 lt!1446143 lt!1446157)))

(declare-fun lt!1446117 () Unit!62651)

(assert (=> b!4054044 (= lt!1446117 (lemmaPrefixStaysPrefixWhenAddingToSuffix!828 lt!1446143 lt!1446134 lt!1446138))))

(declare-fun b!4054045 () Bool)

(assert (=> b!4054045 (= e!2515543 e!2515518)))

(declare-fun res!1652551 () Bool)

(assert (=> b!4054045 (=> res!1652551 e!2515518)))

(declare-fun lt!1446132 () Option!9362)

(declare-fun lt!1446152 () Option!9362)

(assert (=> b!4054045 (= res!1652551 (not (= lt!1446132 lt!1446152)))))

(assert (=> b!4054045 (= lt!1446132 (Some!9361 (tuple2!42399 lt!1446165 suffixResult!105)))))

(assert (=> b!4054045 (= lt!1446132 (maxPrefixOneRule!2847 thiss!21717 (rule!10032 token!484) lt!1446124))))

(assert (=> b!4054045 (= lt!1446165 (Token!13035 lt!1446125 (rule!10032 token!484) lt!1446118 lt!1446171))))

(assert (=> b!4054045 (= lt!1446125 (apply!10137 (transformation!6948 (rule!10032 token!484)) (seqFromList!5165 lt!1446171)))))

(declare-fun lt!1446153 () Unit!62651)

(assert (=> b!4054045 (= lt!1446153 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1653 thiss!21717 rules!2999 lt!1446171 lt!1446124 suffixResult!105 (rule!10032 token!484)))))

(assert (=> b!4054045 (= lt!1446122 suffixResult!105)))

(declare-fun lt!1446135 () Unit!62651)

(assert (=> b!4054045 (= lt!1446135 (lemmaSamePrefixThenSameSuffix!2196 lt!1446171 lt!1446122 lt!1446171 suffixResult!105 lt!1446124))))

(assert (=> b!4054045 (isPrefix!4035 lt!1446171 lt!1446161)))

(declare-fun lt!1446151 () Unit!62651)

(assert (=> b!4054045 (= lt!1446151 (lemmaConcatTwoListThenFirstIsPrefix!2870 lt!1446171 lt!1446122))))

(declare-fun b!4054046 () Bool)

(assert (=> b!4054046 (= e!2515539 e!2515521)))

(declare-fun res!1652552 () Bool)

(assert (=> b!4054046 (=> (not res!1652552) (not e!2515521))))

(assert (=> b!4054046 (= res!1652552 (= (maxPrefix!3835 thiss!21717 rules!2999 lt!1446124) lt!1446152))))

(assert (=> b!4054046 (= lt!1446152 (Some!9361 lt!1446158))))

(assert (=> b!4054046 (= lt!1446158 (tuple2!42399 token!484 suffixResult!105))))

(assert (=> b!4054046 (= lt!1446124 (++!11350 prefix!494 suffix!1299))))

(declare-fun b!4054047 () Bool)

(assert (=> b!4054047 (= e!2515528 e!2515536)))

(declare-fun res!1652562 () Bool)

(assert (=> b!4054047 (=> res!1652562 e!2515536)))

(assert (=> b!4054047 (= res!1652562 (not (isPrefix!4035 lt!1446171 lt!1446124)))))

(assert (=> b!4054047 (isPrefix!4035 prefix!494 lt!1446124)))

(declare-fun lt!1446127 () Unit!62651)

(assert (=> b!4054047 (= lt!1446127 (lemmaConcatTwoListThenFirstIsPrefix!2870 prefix!494 suffix!1299))))

(assert (=> b!4054047 (isPrefix!4035 lt!1446171 lt!1446146)))

(declare-fun lt!1446144 () Unit!62651)

(assert (=> b!4054047 (= lt!1446144 (lemmaConcatTwoListThenFirstIsPrefix!2870 lt!1446171 suffixResult!105))))

(declare-fun b!4054048 () Bool)

(assert (=> b!4054048 (= e!2515548 e!2515520)))

(declare-fun res!1652567 () Bool)

(assert (=> b!4054048 (=> res!1652567 e!2515520)))

(assert (=> b!4054048 (= res!1652567 (>= lt!1446121 lt!1446118))))

(declare-fun lt!1446159 () Unit!62651)

(assert (=> b!4054048 (= lt!1446159 e!2515524)))

(declare-fun c!700281 () Bool)

(assert (=> b!4054048 (= c!700281 (> lt!1446121 lt!1446118))))

(assert (=> b!4054048 (= (_2!24333 (v!39773 lt!1446139)) lt!1446142)))

(declare-fun lt!1446173 () Unit!62651)

(assert (=> b!4054048 (= lt!1446173 (lemmaSamePrefixThenSameSuffix!2196 lt!1446143 (_2!24333 (v!39773 lt!1446139)) lt!1446143 lt!1446142 lt!1446134))))

(assert (=> b!4054048 (isPrefix!4035 lt!1446143 lt!1446129)))

(declare-fun lt!1446172 () Unit!62651)

(assert (=> b!4054048 (= lt!1446172 (lemmaConcatTwoListThenFirstIsPrefix!2870 lt!1446143 lt!1446142))))

(declare-fun res!1652560 () Bool)

(assert (=> start!382304 (=> (not res!1652560) (not e!2515534))))

(assert (=> start!382304 (= res!1652560 ((_ is Lexer!6535) thiss!21717))))

(assert (=> start!382304 e!2515534))

(assert (=> start!382304 e!2515526))

(declare-fun inv!57928 (Token!13034) Bool)

(assert (=> start!382304 (and (inv!57928 token!484) e!2515533)))

(assert (=> start!382304 e!2515544))

(assert (=> start!382304 e!2515525))

(assert (=> start!382304 e!2515538))

(assert (=> start!382304 true))

(assert (=> start!382304 e!2515551))

(assert (=> start!382304 e!2515527))

(declare-fun b!4054049 () Bool)

(declare-fun res!1652544 () Bool)

(assert (=> b!4054049 (=> (not res!1652544) (not e!2515534))))

(declare-fun rulesInvariant!5880 (LexerInterface!6537 List!43457) Bool)

(assert (=> b!4054049 (= res!1652544 (rulesInvariant!5880 thiss!21717 rules!2999))))

(declare-fun b!4054050 () Bool)

(declare-fun Unit!62654 () Unit!62651)

(assert (=> b!4054050 (= e!2515524 Unit!62654)))

(assert (= (and start!382304 res!1652560) b!4054027))

(assert (= (and b!4054027 res!1652557) b!4054049))

(assert (= (and b!4054049 res!1652544) b!4054033))

(assert (= (and b!4054033 res!1652543) b!4054012))

(assert (= (and b!4054012 res!1652563) b!4054034))

(assert (= (and b!4054034 res!1652566) b!4054014))

(assert (= (and b!4054014 res!1652542) b!4054046))

(assert (= (and b!4054046 res!1652552) b!4054029))

(assert (= (and b!4054029 (not res!1652554)) b!4054047))

(assert (= (and b!4054047 (not res!1652562)) b!4054031))

(assert (= (and b!4054031 (not res!1652550)) b!4054040))

(assert (= (and b!4054040 (not res!1652546)) b!4054045))

(assert (= (and b!4054045 (not res!1652551)) b!4054036))

(assert (= (and b!4054036 (not res!1652553)) b!4054023))

(assert (= (and b!4054023 res!1652561) b!4054013))

(assert (= (and b!4054013 res!1652559) b!4054015))

(assert (= (and b!4054015 res!1652547) b!4054043))

(assert (= (and b!4054023 (not res!1652541)) b!4054019))

(assert (= (and b!4054019 (not res!1652555)) b!4054037))

(assert (= (and b!4054037 (not res!1652564)) b!4054042))

(assert (= (and b!4054042 (not res!1652558)) b!4054022))

(assert (= (and b!4054022 (not res!1652556)) b!4054044))

(assert (= (and b!4054044 (not res!1652545)) b!4054039))

(assert (= (and b!4054039 (not res!1652549)) b!4054041))

(assert (= (and b!4054041 (not res!1652540)) b!4054048))

(assert (= (and b!4054048 c!700281) b!4054016))

(assert (= (and b!4054048 (not c!700281)) b!4054050))

(assert (= (and b!4054016 res!1652548) b!4054026))

(assert (= (and b!4054048 (not res!1652567)) b!4054017))

(assert (= (and b!4054017 (not res!1652565)) b!4054011))

(assert (= (and start!382304 ((_ is Cons!43331) prefix!494)) b!4054024))

(assert (= b!4054038 b!4054018))

(assert (= b!4054028 b!4054038))

(assert (= start!382304 b!4054028))

(assert (= (and start!382304 ((_ is Cons!43331) suffixResult!105)) b!4054020))

(assert (= (and start!382304 ((_ is Cons!43331) suffix!1299)) b!4054021))

(assert (= (and start!382304 ((_ is Cons!43331) newSuffix!27)) b!4054035))

(assert (= b!4054030 b!4054032))

(assert (= b!4054010 b!4054030))

(assert (= (and start!382304 ((_ is Cons!43333) rules!2999)) b!4054010))

(assert (= (and start!382304 ((_ is Cons!43331) newSuffixResult!27)) b!4054025))

(declare-fun m!4656595 () Bool)

(assert (=> b!4054030 m!4656595))

(declare-fun m!4656597 () Bool)

(assert (=> b!4054030 m!4656597))

(declare-fun m!4656599 () Bool)

(assert (=> b!4054047 m!4656599))

(declare-fun m!4656601 () Bool)

(assert (=> b!4054047 m!4656601))

(declare-fun m!4656603 () Bool)

(assert (=> b!4054047 m!4656603))

(declare-fun m!4656605 () Bool)

(assert (=> b!4054047 m!4656605))

(declare-fun m!4656607 () Bool)

(assert (=> b!4054047 m!4656607))

(declare-fun m!4656609 () Bool)

(assert (=> b!4054037 m!4656609))

(declare-fun m!4656611 () Bool)

(assert (=> b!4054037 m!4656611))

(declare-fun m!4656613 () Bool)

(assert (=> b!4054037 m!4656613))

(declare-fun m!4656615 () Bool)

(assert (=> b!4054037 m!4656615))

(declare-fun m!4656617 () Bool)

(assert (=> b!4054037 m!4656617))

(declare-fun m!4656619 () Bool)

(assert (=> b!4054037 m!4656619))

(declare-fun m!4656621 () Bool)

(assert (=> b!4054037 m!4656621))

(declare-fun m!4656623 () Bool)

(assert (=> b!4054037 m!4656623))

(declare-fun m!4656625 () Bool)

(assert (=> b!4054037 m!4656625))

(declare-fun m!4656627 () Bool)

(assert (=> b!4054037 m!4656627))

(assert (=> b!4054037 m!4656627))

(declare-fun m!4656629 () Bool)

(assert (=> b!4054037 m!4656629))

(declare-fun m!4656631 () Bool)

(assert (=> b!4054037 m!4656631))

(declare-fun m!4656633 () Bool)

(assert (=> b!4054037 m!4656633))

(assert (=> b!4054037 m!4656617))

(declare-fun m!4656635 () Bool)

(assert (=> b!4054037 m!4656635))

(declare-fun m!4656637 () Bool)

(assert (=> b!4054037 m!4656637))

(declare-fun m!4656639 () Bool)

(assert (=> b!4054037 m!4656639))

(declare-fun m!4656641 () Bool)

(assert (=> b!4054037 m!4656641))

(assert (=> b!4054037 m!4656641))

(declare-fun m!4656643 () Bool)

(assert (=> b!4054037 m!4656643))

(declare-fun m!4656645 () Bool)

(assert (=> b!4054049 m!4656645))

(declare-fun m!4656647 () Bool)

(assert (=> b!4054042 m!4656647))

(declare-fun m!4656649 () Bool)

(assert (=> b!4054042 m!4656649))

(declare-fun m!4656651 () Bool)

(assert (=> b!4054041 m!4656651))

(declare-fun m!4656653 () Bool)

(assert (=> b!4054041 m!4656653))

(declare-fun m!4656655 () Bool)

(assert (=> b!4054019 m!4656655))

(declare-fun m!4656657 () Bool)

(assert (=> b!4054019 m!4656657))

(declare-fun m!4656659 () Bool)

(assert (=> b!4054019 m!4656659))

(declare-fun m!4656661 () Bool)

(assert (=> b!4054019 m!4656661))

(declare-fun m!4656663 () Bool)

(assert (=> b!4054011 m!4656663))

(declare-fun m!4656665 () Bool)

(assert (=> b!4054028 m!4656665))

(declare-fun m!4656667 () Bool)

(assert (=> b!4054022 m!4656667))

(declare-fun m!4656669 () Bool)

(assert (=> b!4054022 m!4656669))

(declare-fun m!4656671 () Bool)

(assert (=> b!4054022 m!4656671))

(declare-fun m!4656673 () Bool)

(assert (=> b!4054012 m!4656673))

(declare-fun m!4656675 () Bool)

(assert (=> b!4054027 m!4656675))

(declare-fun m!4656677 () Bool)

(assert (=> b!4054014 m!4656677))

(declare-fun m!4656679 () Bool)

(assert (=> b!4054014 m!4656679))

(declare-fun m!4656681 () Bool)

(assert (=> b!4054029 m!4656681))

(declare-fun m!4656683 () Bool)

(assert (=> b!4054029 m!4656683))

(declare-fun m!4656685 () Bool)

(assert (=> b!4054029 m!4656685))

(declare-fun m!4656687 () Bool)

(assert (=> b!4054029 m!4656687))

(declare-fun m!4656689 () Bool)

(assert (=> b!4054033 m!4656689))

(declare-fun m!4656691 () Bool)

(assert (=> b!4054033 m!4656691))

(declare-fun m!4656693 () Bool)

(assert (=> b!4054031 m!4656693))

(declare-fun m!4656695 () Bool)

(assert (=> b!4054031 m!4656695))

(declare-fun m!4656697 () Bool)

(assert (=> b!4054031 m!4656697))

(declare-fun m!4656699 () Bool)

(assert (=> b!4054031 m!4656699))

(declare-fun m!4656701 () Bool)

(assert (=> b!4054038 m!4656701))

(declare-fun m!4656703 () Bool)

(assert (=> b!4054038 m!4656703))

(declare-fun m!4656705 () Bool)

(assert (=> b!4054034 m!4656705))

(declare-fun m!4656707 () Bool)

(assert (=> b!4054034 m!4656707))

(declare-fun m!4656709 () Bool)

(assert (=> b!4054034 m!4656709))

(assert (=> b!4054034 m!4656709))

(declare-fun m!4656711 () Bool)

(assert (=> b!4054034 m!4656711))

(declare-fun m!4656713 () Bool)

(assert (=> b!4054016 m!4656713))

(declare-fun m!4656715 () Bool)

(assert (=> b!4054016 m!4656715))

(declare-fun m!4656717 () Bool)

(assert (=> b!4054044 m!4656717))

(declare-fun m!4656719 () Bool)

(assert (=> b!4054044 m!4656719))

(declare-fun m!4656721 () Bool)

(assert (=> b!4054044 m!4656721))

(declare-fun m!4656723 () Bool)

(assert (=> b!4054015 m!4656723))

(declare-fun m!4656725 () Bool)

(assert (=> b!4054046 m!4656725))

(declare-fun m!4656727 () Bool)

(assert (=> b!4054046 m!4656727))

(declare-fun m!4656729 () Bool)

(assert (=> b!4054040 m!4656729))

(declare-fun m!4656731 () Bool)

(assert (=> b!4054040 m!4656731))

(declare-fun m!4656733 () Bool)

(assert (=> b!4054040 m!4656733))

(declare-fun m!4656735 () Bool)

(assert (=> b!4054040 m!4656735))

(declare-fun m!4656737 () Bool)

(assert (=> start!382304 m!4656737))

(declare-fun m!4656739 () Bool)

(assert (=> b!4054048 m!4656739))

(declare-fun m!4656741 () Bool)

(assert (=> b!4054048 m!4656741))

(declare-fun m!4656743 () Bool)

(assert (=> b!4054048 m!4656743))

(declare-fun m!4656745 () Bool)

(assert (=> b!4054017 m!4656745))

(declare-fun m!4656747 () Bool)

(assert (=> b!4054045 m!4656747))

(declare-fun m!4656749 () Bool)

(assert (=> b!4054045 m!4656749))

(declare-fun m!4656751 () Bool)

(assert (=> b!4054045 m!4656751))

(declare-fun m!4656753 () Bool)

(assert (=> b!4054045 m!4656753))

(declare-fun m!4656755 () Bool)

(assert (=> b!4054045 m!4656755))

(declare-fun m!4656757 () Bool)

(assert (=> b!4054045 m!4656757))

(assert (=> b!4054045 m!4656747))

(declare-fun m!4656759 () Bool)

(assert (=> b!4054045 m!4656759))

(declare-fun m!4656761 () Bool)

(assert (=> b!4054023 m!4656761))

(declare-fun m!4656763 () Bool)

(assert (=> b!4054023 m!4656763))

(declare-fun m!4656765 () Bool)

(assert (=> b!4054023 m!4656765))

(declare-fun m!4656767 () Bool)

(assert (=> b!4054023 m!4656767))

(declare-fun m!4656769 () Bool)

(assert (=> b!4054036 m!4656769))

(declare-fun m!4656771 () Bool)

(assert (=> b!4054036 m!4656771))

(declare-fun m!4656773 () Bool)

(assert (=> b!4054036 m!4656773))

(declare-fun m!4656775 () Bool)

(assert (=> b!4054036 m!4656775))

(check-sat (not start!382304) tp_is_empty!20677 (not b!4054049) (not b!4054010) (not b!4054017) (not b!4054038) (not b!4054034) (not b!4054028) (not b!4054042) (not b_next!113513) (not b!4054012) (not b!4054047) (not b!4054021) (not b!4054044) (not b!4054027) (not b!4054031) (not b!4054041) (not b!4054024) (not b!4054036) (not b!4054035) (not b!4054025) (not b!4054023) (not b!4054020) b_and!311765 b_and!311763 b_and!311767 (not b!4054015) (not b!4054016) (not b!4054030) (not b!4054019) (not b!4054037) (not b!4054014) (not b!4054033) (not b_next!113517) (not b_next!113515) (not b_next!113519) (not b!4054022) (not b!4054029) (not b!4054046) (not b!4054048) (not b!4054011) b_and!311769 (not b!4054040) (not b!4054045))
(check-sat (not b_next!113519) b_and!311769 (not b_next!113513) b_and!311765 b_and!311763 b_and!311767 (not b_next!113517) (not b_next!113515))
