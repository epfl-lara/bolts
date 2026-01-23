; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378736 () Bool)

(assert start!378736)

(declare-fun b!4022168 () Bool)

(declare-fun b_free!111889 () Bool)

(declare-fun b_next!112593 () Bool)

(assert (=> b!4022168 (= b_free!111889 (not b_next!112593))))

(declare-fun tp!1222297 () Bool)

(declare-fun b_and!308999 () Bool)

(assert (=> b!4022168 (= tp!1222297 b_and!308999)))

(declare-fun b_free!111891 () Bool)

(declare-fun b_next!112595 () Bool)

(assert (=> b!4022168 (= b_free!111891 (not b_next!112595))))

(declare-fun tp!1222296 () Bool)

(declare-fun b_and!309001 () Bool)

(assert (=> b!4022168 (= tp!1222296 b_and!309001)))

(declare-fun b!4022165 () Bool)

(declare-fun b_free!111893 () Bool)

(declare-fun b_next!112597 () Bool)

(assert (=> b!4022165 (= b_free!111893 (not b_next!112597))))

(declare-fun tp!1222304 () Bool)

(declare-fun b_and!309003 () Bool)

(assert (=> b!4022165 (= tp!1222304 b_and!309003)))

(declare-fun b_free!111895 () Bool)

(declare-fun b_next!112599 () Bool)

(assert (=> b!4022165 (= b_free!111895 (not b_next!112599))))

(declare-fun tp!1222300 () Bool)

(declare-fun b_and!309005 () Bool)

(assert (=> b!4022165 (= tp!1222300 b_and!309005)))

(declare-fun b!4022142 () Bool)

(declare-fun e!2494996 () Bool)

(declare-datatypes ((C!23720 0))(
  ( (C!23721 (val!13954 Int)) )
))
(declare-datatypes ((List!43162 0))(
  ( (Nil!43038) (Cons!43038 (h!48458 C!23720) (t!333753 List!43162)) )
))
(declare-datatypes ((IArray!26151 0))(
  ( (IArray!26152 (innerList!13133 List!43162)) )
))
(declare-datatypes ((Conc!13073 0))(
  ( (Node!13073 (left!32442 Conc!13073) (right!32772 Conc!13073) (csize!26376 Int) (cheight!13284 Int)) (Leaf!20211 (xs!16379 IArray!26151) (csize!26377 Int)) (Empty!13073) )
))
(declare-datatypes ((BalanceConc!25740 0))(
  ( (BalanceConc!25741 (c!695156 Conc!13073)) )
))
(declare-datatypes ((String!49177 0))(
  ( (String!49178 (value!216175 String)) )
))
(declare-datatypes ((List!43163 0))(
  ( (Nil!43039) (Cons!43039 (h!48459 (_ BitVec 16)) (t!333754 List!43163)) )
))
(declare-datatypes ((TokenValue!7092 0))(
  ( (FloatLiteralValue!14184 (text!50089 List!43163)) (TokenValueExt!7091 (__x!26401 Int)) (Broken!35460 (value!216176 List!43163)) (Object!7215) (End!7092) (Def!7092) (Underscore!7092) (Match!7092) (Else!7092) (Error!7092) (Case!7092) (If!7092) (Extends!7092) (Abstract!7092) (Class!7092) (Val!7092) (DelimiterValue!14184 (del!7152 List!43163)) (KeywordValue!7098 (value!216177 List!43163)) (CommentValue!14184 (value!216178 List!43163)) (WhitespaceValue!14184 (value!216179 List!43163)) (IndentationValue!7092 (value!216180 List!43163)) (String!49179) (Int32!7092) (Broken!35461 (value!216181 List!43163)) (Boolean!7093) (Unit!62185) (OperatorValue!7095 (op!7152 List!43163)) (IdentifierValue!14184 (value!216182 List!43163)) (IdentifierValue!14185 (value!216183 List!43163)) (WhitespaceValue!14185 (value!216184 List!43163)) (True!14184) (False!14184) (Broken!35462 (value!216185 List!43163)) (Broken!35463 (value!216186 List!43163)) (True!14185) (RightBrace!7092) (RightBracket!7092) (Colon!7092) (Null!7092) (Comma!7092) (LeftBracket!7092) (False!14185) (LeftBrace!7092) (ImaginaryLiteralValue!7092 (text!50090 List!43163)) (StringLiteralValue!21276 (value!216187 List!43163)) (EOFValue!7092 (value!216188 List!43163)) (IdentValue!7092 (value!216189 List!43163)) (DelimiterValue!14185 (value!216190 List!43163)) (DedentValue!7092 (value!216191 List!43163)) (NewLineValue!7092 (value!216192 List!43163)) (IntegerValue!21276 (value!216193 (_ BitVec 32)) (text!50091 List!43163)) (IntegerValue!21277 (value!216194 Int) (text!50092 List!43163)) (Times!7092) (Or!7092) (Equal!7092) (Minus!7092) (Broken!35464 (value!216195 List!43163)) (And!7092) (Div!7092) (LessEqual!7092) (Mod!7092) (Concat!18859) (Not!7092) (Plus!7092) (SpaceValue!7092 (value!216196 List!43163)) (IntegerValue!21278 (value!216197 Int) (text!50093 List!43163)) (StringLiteralValue!21277 (text!50094 List!43163)) (FloatLiteralValue!14185 (text!50095 List!43163)) (BytesLiteralValue!7092 (value!216198 List!43163)) (CommentValue!14185 (value!216199 List!43163)) (StringLiteralValue!21278 (value!216200 List!43163)) (ErrorTokenValue!7092 (msg!7153 List!43163)) )
))
(declare-datatypes ((Regex!11767 0))(
  ( (ElementMatch!11767 (c!695157 C!23720)) (Concat!18860 (regOne!24046 Regex!11767) (regTwo!24046 Regex!11767)) (EmptyExpr!11767) (Star!11767 (reg!12096 Regex!11767)) (EmptyLang!11767) (Union!11767 (regOne!24047 Regex!11767) (regTwo!24047 Regex!11767)) )
))
(declare-datatypes ((TokenValueInjection!13612 0))(
  ( (TokenValueInjection!13613 (toValue!9374 Int) (toChars!9233 Int)) )
))
(declare-datatypes ((Rule!13524 0))(
  ( (Rule!13525 (regex!6862 Regex!11767) (tag!7722 String!49177) (isSeparator!6862 Bool) (transformation!6862 TokenValueInjection!13612)) )
))
(declare-datatypes ((Token!12862 0))(
  ( (Token!12863 (value!216201 TokenValue!7092) (rule!9916 Rule!13524) (size!32179 Int) (originalCharacters!7462 List!43162)) )
))
(declare-datatypes ((tuple2!42166 0))(
  ( (tuple2!42167 (_1!24217 Token!12862) (_2!24217 List!43162)) )
))
(declare-datatypes ((Option!9276 0))(
  ( (None!9275) (Some!9275 (v!39651 tuple2!42166)) )
))
(declare-fun lt!1428539 () Option!9276)

(declare-fun token!484 () Token!12862)

(assert (=> b!4022142 (= e!2494996 (= (_1!24217 (v!39651 lt!1428539)) token!484))))

(assert (=> b!4022142 (= (rule!9916 (_1!24217 (v!39651 lt!1428539))) (rule!9916 token!484))))

(declare-datatypes ((List!43164 0))(
  ( (Nil!43040) (Cons!43040 (h!48460 Rule!13524) (t!333755 List!43164)) )
))
(declare-fun rules!2999 () List!43164)

(declare-datatypes ((Unit!62186 0))(
  ( (Unit!62187) )
))
(declare-fun lt!1428540 () Unit!62186)

(declare-fun lemmaSameIndexThenSameElement!262 (List!43164 Rule!13524 Rule!13524) Unit!62186)

(assert (=> b!4022142 (= lt!1428540 (lemmaSameIndexThenSameElement!262 rules!2999 (rule!9916 (_1!24217 (v!39651 lt!1428539))) (rule!9916 token!484)))))

(declare-fun lt!1428528 () Unit!62186)

(declare-fun e!2495012 () Unit!62186)

(assert (=> b!4022142 (= lt!1428528 e!2495012)))

(declare-fun c!695153 () Bool)

(declare-fun lt!1428553 () Int)

(declare-fun lt!1428546 () Int)

(assert (=> b!4022142 (= c!695153 (> lt!1428553 lt!1428546))))

(declare-fun lt!1428538 () Unit!62186)

(declare-fun e!2495013 () Unit!62186)

(assert (=> b!4022142 (= lt!1428538 e!2495013)))

(declare-fun c!695154 () Bool)

(assert (=> b!4022142 (= c!695154 (< lt!1428553 lt!1428546))))

(declare-fun getIndex!560 (List!43164 Rule!13524) Int)

(assert (=> b!4022142 (= lt!1428546 (getIndex!560 rules!2999 (rule!9916 token!484)))))

(assert (=> b!4022142 (= lt!1428553 (getIndex!560 rules!2999 (rule!9916 (_1!24217 (v!39651 lt!1428539)))))))

(declare-fun newSuffixResult!27 () List!43162)

(assert (=> b!4022142 (= (_2!24217 (v!39651 lt!1428539)) newSuffixResult!27)))

(declare-fun lt!1428568 () List!43162)

(declare-fun lt!1428534 () List!43162)

(declare-fun lt!1428525 () List!43162)

(declare-fun lt!1428551 () Unit!62186)

(declare-fun lemmaSamePrefixThenSameSuffix!2120 (List!43162 List!43162 List!43162 List!43162 List!43162) Unit!62186)

(assert (=> b!4022142 (= lt!1428551 (lemmaSamePrefixThenSameSuffix!2120 lt!1428525 (_2!24217 (v!39651 lt!1428539)) lt!1428568 newSuffixResult!27 lt!1428534))))

(assert (=> b!4022142 (= lt!1428525 lt!1428568)))

(declare-fun lt!1428507 () Unit!62186)

(declare-fun lemmaIsPrefixSameLengthThenSameList!909 (List!43162 List!43162 List!43162) Unit!62186)

(assert (=> b!4022142 (= lt!1428507 (lemmaIsPrefixSameLengthThenSameList!909 lt!1428525 lt!1428568 lt!1428534))))

(declare-fun b!4022143 () Bool)

(declare-fun e!2495016 () Bool)

(assert (=> b!4022143 (= e!2495016 false)))

(declare-fun b!4022144 () Bool)

(declare-fun e!2494999 () Bool)

(declare-fun e!2494992 () Bool)

(assert (=> b!4022144 (= e!2494999 e!2494992)))

(declare-fun res!1636596 () Bool)

(assert (=> b!4022144 (=> (not res!1636596) (not e!2494992))))

(declare-fun lt!1428536 () Option!9276)

(declare-datatypes ((LexerInterface!6451 0))(
  ( (LexerInterfaceExt!6448 (__x!26402 Int)) (Lexer!6449) )
))
(declare-fun thiss!21717 () LexerInterface!6451)

(declare-fun lt!1428569 () List!43162)

(declare-fun maxPrefix!3749 (LexerInterface!6451 List!43164 List!43162) Option!9276)

(assert (=> b!4022144 (= res!1636596 (= (maxPrefix!3749 thiss!21717 rules!2999 lt!1428569) lt!1428536))))

(declare-fun lt!1428567 () tuple2!42166)

(assert (=> b!4022144 (= lt!1428536 (Some!9275 lt!1428567))))

(declare-fun suffixResult!105 () List!43162)

(assert (=> b!4022144 (= lt!1428567 (tuple2!42167 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43162)

(declare-fun suffix!1299 () List!43162)

(declare-fun ++!11264 (List!43162 List!43162) List!43162)

(assert (=> b!4022144 (= lt!1428569 (++!11264 prefix!494 suffix!1299))))

(declare-fun b!4022145 () Bool)

(declare-fun e!2495014 () Bool)

(declare-fun tp!1222299 () Bool)

(declare-fun e!2495010 () Bool)

(declare-fun inv!57486 (String!49177) Bool)

(declare-fun inv!57489 (TokenValueInjection!13612) Bool)

(assert (=> b!4022145 (= e!2495010 (and tp!1222299 (inv!57486 (tag!7722 (h!48460 rules!2999))) (inv!57489 (transformation!6862 (h!48460 rules!2999))) e!2495014))))

(declare-fun b!4022146 () Bool)

(declare-fun e!2495000 () Bool)

(declare-fun e!2495011 () Bool)

(assert (=> b!4022146 (= e!2495000 e!2495011)))

(declare-fun res!1636587 () Bool)

(assert (=> b!4022146 (=> res!1636587 e!2495011)))

(declare-fun lt!1428527 () List!43162)

(assert (=> b!4022146 (= res!1636587 (not (= lt!1428527 lt!1428569)))))

(declare-fun lt!1428547 () List!43162)

(assert (=> b!4022146 (= lt!1428527 (++!11264 lt!1428568 lt!1428547))))

(declare-fun getSuffix!2374 (List!43162 List!43162) List!43162)

(assert (=> b!4022146 (= lt!1428547 (getSuffix!2374 lt!1428569 lt!1428568))))

(declare-fun e!2495002 () Bool)

(assert (=> b!4022146 e!2495002))

(declare-fun res!1636586 () Bool)

(assert (=> b!4022146 (=> (not res!1636586) (not e!2495002))))

(declare-fun isPrefix!3949 (List!43162 List!43162) Bool)

(assert (=> b!4022146 (= res!1636586 (isPrefix!3949 lt!1428569 lt!1428569))))

(declare-fun lt!1428545 () Unit!62186)

(declare-fun lemmaIsPrefixRefl!2525 (List!43162 List!43162) Unit!62186)

(assert (=> b!4022146 (= lt!1428545 (lemmaIsPrefixRefl!2525 lt!1428569 lt!1428569))))

(declare-fun b!4022147 () Bool)

(declare-fun e!2495020 () Bool)

(declare-fun tp_is_empty!20505 () Bool)

(declare-fun tp!1222306 () Bool)

(assert (=> b!4022147 (= e!2495020 (and tp_is_empty!20505 tp!1222306))))

(declare-fun b!4022148 () Bool)

(declare-fun e!2495005 () Bool)

(declare-fun e!2494991 () Bool)

(assert (=> b!4022148 (= e!2495005 e!2494991)))

(declare-fun res!1636594 () Bool)

(assert (=> b!4022148 (=> res!1636594 e!2494991)))

(assert (=> b!4022148 (= res!1636594 (not (isPrefix!3949 lt!1428525 lt!1428569)))))

(declare-fun lt!1428542 () List!43162)

(assert (=> b!4022148 (isPrefix!3949 lt!1428525 lt!1428542)))

(declare-fun lt!1428561 () List!43162)

(declare-fun lt!1428533 () Unit!62186)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!762 (List!43162 List!43162 List!43162) Unit!62186)

(assert (=> b!4022148 (= lt!1428533 (lemmaPrefixStaysPrefixWhenAddingToSuffix!762 lt!1428525 lt!1428534 lt!1428561))))

(declare-fun b!4022149 () Bool)

(declare-fun Unit!62188 () Unit!62186)

(assert (=> b!4022149 (= e!2495012 Unit!62188)))

(declare-fun b!4022150 () Bool)

(declare-fun e!2495018 () Bool)

(declare-fun e!2495026 () Bool)

(assert (=> b!4022150 (= e!2495018 e!2495026)))

(declare-fun res!1636602 () Bool)

(assert (=> b!4022150 (=> res!1636602 e!2495026)))

(declare-fun lt!1428563 () List!43162)

(assert (=> b!4022150 (= res!1636602 (not (= lt!1428563 suffix!1299)))))

(declare-fun newSuffix!27 () List!43162)

(assert (=> b!4022150 (= lt!1428563 (++!11264 newSuffix!27 lt!1428561))))

(assert (=> b!4022150 (= lt!1428561 (getSuffix!2374 suffix!1299 newSuffix!27))))

(declare-fun b!4022151 () Bool)

(declare-fun e!2495024 () Bool)

(declare-fun tp!1222298 () Bool)

(declare-fun e!2495028 () Bool)

(assert (=> b!4022151 (= e!2495024 (and tp!1222298 (inv!57486 (tag!7722 (rule!9916 token!484))) (inv!57489 (transformation!6862 (rule!9916 token!484))) e!2495028))))

(declare-fun b!4022152 () Bool)

(declare-fun e!2495006 () Bool)

(declare-fun e!2495001 () Bool)

(assert (=> b!4022152 (= e!2495006 e!2495001)))

(declare-fun res!1636597 () Bool)

(assert (=> b!4022152 (=> (not res!1636597) (not e!2495001))))

(declare-fun lt!1428532 () Int)

(declare-fun lt!1428565 () Int)

(assert (=> b!4022152 (= res!1636597 (>= lt!1428532 lt!1428565))))

(declare-fun size!32180 (List!43162) Int)

(assert (=> b!4022152 (= lt!1428565 (size!32180 lt!1428568))))

(assert (=> b!4022152 (= lt!1428532 (size!32180 prefix!494))))

(declare-fun list!16002 (BalanceConc!25740) List!43162)

(declare-fun charsOf!4678 (Token!12862) BalanceConc!25740)

(assert (=> b!4022152 (= lt!1428568 (list!16002 (charsOf!4678 token!484)))))

(declare-fun b!4022153 () Bool)

(declare-fun res!1636600 () Bool)

(assert (=> b!4022153 (=> res!1636600 e!2494991)))

(declare-fun lt!1428513 () List!43162)

(assert (=> b!4022153 (= res!1636600 (not (= lt!1428513 lt!1428534)))))

(declare-fun b!4022154 () Bool)

(declare-fun e!2495015 () Bool)

(assert (=> b!4022154 (= e!2494992 (not e!2495015))))

(declare-fun res!1636585 () Bool)

(assert (=> b!4022154 (=> res!1636585 e!2495015)))

(declare-fun lt!1428514 () List!43162)

(assert (=> b!4022154 (= res!1636585 (not (= lt!1428514 lt!1428569)))))

(assert (=> b!4022154 (= lt!1428514 (++!11264 lt!1428568 suffixResult!105))))

(declare-fun lt!1428518 () Unit!62186)

(declare-fun lemmaInv!1077 (TokenValueInjection!13612) Unit!62186)

(assert (=> b!4022154 (= lt!1428518 (lemmaInv!1077 (transformation!6862 (rule!9916 token!484))))))

(declare-fun ruleValid!2794 (LexerInterface!6451 Rule!13524) Bool)

(assert (=> b!4022154 (ruleValid!2794 thiss!21717 (rule!9916 token!484))))

(declare-fun lt!1428520 () Unit!62186)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1868 (LexerInterface!6451 Rule!13524 List!43164) Unit!62186)

(assert (=> b!4022154 (= lt!1428520 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1868 thiss!21717 (rule!9916 token!484) rules!2999))))

(declare-fun b!4022155 () Bool)

(declare-fun e!2495008 () Bool)

(assert (=> b!4022155 (= e!2495008 false)))

(declare-fun b!4022156 () Bool)

(assert (=> b!4022156 (= e!2495002 (and (= (size!32179 token!484) lt!1428565) (= (originalCharacters!7462 token!484) lt!1428568)))))

(declare-fun b!4022157 () Bool)

(assert (=> b!4022157 (= e!2495026 e!2495005)))

(declare-fun res!1636584 () Bool)

(assert (=> b!4022157 (=> res!1636584 e!2495005)))

(assert (=> b!4022157 (= res!1636584 (not (= lt!1428542 lt!1428569)))))

(assert (=> b!4022157 (= lt!1428542 (++!11264 prefix!494 lt!1428563))))

(assert (=> b!4022157 (= lt!1428542 (++!11264 lt!1428534 lt!1428561))))

(declare-fun lt!1428573 () Unit!62186)

(declare-fun lemmaConcatAssociativity!2574 (List!43162 List!43162 List!43162) Unit!62186)

(assert (=> b!4022157 (= lt!1428573 (lemmaConcatAssociativity!2574 prefix!494 newSuffix!27 lt!1428561))))

(declare-fun b!4022158 () Bool)

(declare-fun e!2495023 () Bool)

(declare-fun tp!1222303 () Bool)

(assert (=> b!4022158 (= e!2495023 (and tp_is_empty!20505 tp!1222303))))

(declare-fun b!4022159 () Bool)

(declare-fun e!2495021 () Bool)

(declare-fun tp!1222302 () Bool)

(assert (=> b!4022159 (= e!2495021 (and tp_is_empty!20505 tp!1222302))))

(declare-fun b!4022160 () Bool)

(declare-fun res!1636601 () Bool)

(assert (=> b!4022160 (=> res!1636601 e!2494996)))

(assert (=> b!4022160 (= res!1636601 (not (isPrefix!3949 lt!1428525 lt!1428534)))))

(declare-fun b!4022161 () Bool)

(declare-fun Unit!62189 () Unit!62186)

(assert (=> b!4022161 (= e!2495012 Unit!62189)))

(declare-fun lt!1428541 () Unit!62186)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!284 (LexerInterface!6451 List!43164 Rule!13524 List!43162 List!43162 Rule!13524) Unit!62186)

(assert (=> b!4022161 (= lt!1428541 (lemmaMaxPrefNoSmallerRuleMatches!284 thiss!21717 rules!2999 (rule!9916 (_1!24217 (v!39651 lt!1428539))) lt!1428525 lt!1428534 (rule!9916 token!484)))))

(declare-fun res!1636590 () Bool)

(declare-fun matchR!5728 (Regex!11767 List!43162) Bool)

(assert (=> b!4022161 (= res!1636590 (not (matchR!5728 (regex!6862 (rule!9916 token!484)) lt!1428525)))))

(assert (=> b!4022161 (=> (not res!1636590) (not e!2495008))))

(assert (=> b!4022161 e!2495008))

(declare-fun b!4022162 () Bool)

(declare-fun res!1636604 () Bool)

(assert (=> b!4022162 (=> (not res!1636604) (not e!2495002))))

(declare-fun lt!1428570 () TokenValue!7092)

(assert (=> b!4022162 (= res!1636604 (= (value!216201 token!484) lt!1428570))))

(declare-fun b!4022163 () Bool)

(declare-fun e!2495017 () Bool)

(declare-fun tp!1222301 () Bool)

(assert (=> b!4022163 (= e!2495017 (and tp_is_empty!20505 tp!1222301))))

(declare-fun b!4022164 () Bool)

(declare-fun Unit!62190 () Unit!62186)

(assert (=> b!4022164 (= e!2495013 Unit!62190)))

(assert (=> b!4022165 (= e!2495014 (and tp!1222304 tp!1222300))))

(declare-fun b!4022166 () Bool)

(declare-fun e!2495022 () Bool)

(assert (=> b!4022166 (= e!2495022 e!2494996)))

(declare-fun res!1636583 () Bool)

(assert (=> b!4022166 (=> res!1636583 e!2494996)))

(declare-fun lt!1428535 () Int)

(assert (=> b!4022166 (= res!1636583 (not (= lt!1428565 lt!1428535)))))

(declare-fun lt!1428555 () Unit!62186)

(declare-fun e!2494989 () Unit!62186)

(assert (=> b!4022166 (= lt!1428555 e!2494989)))

(declare-fun c!695152 () Bool)

(assert (=> b!4022166 (= c!695152 (< lt!1428535 lt!1428565))))

(declare-fun lt!1428512 () Unit!62186)

(declare-fun e!2495009 () Unit!62186)

(assert (=> b!4022166 (= lt!1428512 e!2495009)))

(declare-fun c!695155 () Bool)

(assert (=> b!4022166 (= c!695155 (> lt!1428535 lt!1428565))))

(declare-fun lt!1428560 () List!43162)

(assert (=> b!4022166 (= (_2!24217 (v!39651 lt!1428539)) lt!1428560)))

(declare-fun lt!1428531 () Unit!62186)

(assert (=> b!4022166 (= lt!1428531 (lemmaSamePrefixThenSameSuffix!2120 lt!1428525 (_2!24217 (v!39651 lt!1428539)) lt!1428525 lt!1428560 lt!1428534))))

(declare-fun lt!1428544 () List!43162)

(assert (=> b!4022166 (isPrefix!3949 lt!1428525 lt!1428544)))

(declare-fun lt!1428549 () Unit!62186)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2790 (List!43162 List!43162) Unit!62186)

(assert (=> b!4022166 (= lt!1428549 (lemmaConcatTwoListThenFirstIsPrefix!2790 lt!1428525 lt!1428560))))

(declare-fun res!1636591 () Bool)

(assert (=> start!378736 (=> (not res!1636591) (not e!2495006))))

(get-info :version)

(assert (=> start!378736 (= res!1636591 ((_ is Lexer!6449) thiss!21717))))

(assert (=> start!378736 e!2495006))

(assert (=> start!378736 e!2495023))

(declare-fun e!2495025 () Bool)

(declare-fun inv!57490 (Token!12862) Bool)

(assert (=> start!378736 (and (inv!57490 token!484) e!2495025)))

(declare-fun e!2494997 () Bool)

(assert (=> start!378736 e!2494997))

(assert (=> start!378736 e!2495017))

(assert (=> start!378736 e!2495021))

(assert (=> start!378736 true))

(declare-fun e!2495007 () Bool)

(assert (=> start!378736 e!2495007))

(assert (=> start!378736 e!2495020))

(declare-fun b!4022167 () Bool)

(declare-fun Unit!62191 () Unit!62186)

(assert (=> b!4022167 (= e!2495013 Unit!62191)))

(declare-fun lt!1428566 () Unit!62186)

(assert (=> b!4022167 (= lt!1428566 (lemmaMaxPrefNoSmallerRuleMatches!284 thiss!21717 rules!2999 (rule!9916 token!484) lt!1428568 lt!1428569 (rule!9916 (_1!24217 (v!39651 lt!1428539)))))))

(declare-fun res!1636588 () Bool)

(assert (=> b!4022167 (= res!1636588 (not (matchR!5728 (regex!6862 (rule!9916 (_1!24217 (v!39651 lt!1428539)))) lt!1428568)))))

(assert (=> b!4022167 (=> (not res!1636588) (not e!2495016))))

(assert (=> b!4022167 e!2495016))

(assert (=> b!4022168 (= e!2495028 (and tp!1222297 tp!1222296))))

(declare-fun b!4022169 () Bool)

(declare-fun tp!1222305 () Bool)

(assert (=> b!4022169 (= e!2494997 (and tp_is_empty!20505 tp!1222305))))

(declare-fun b!4022170 () Bool)

(declare-fun Unit!62192 () Unit!62186)

(assert (=> b!4022170 (= e!2495009 Unit!62192)))

(declare-fun lt!1428559 () Unit!62186)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!456 (LexerInterface!6451 List!43164 Rule!13524 List!43162 List!43162 List!43162 Rule!13524) Unit!62186)

(assert (=> b!4022170 (= lt!1428559 (lemmaMaxPrefixOutputsMaxPrefix!456 thiss!21717 rules!2999 (rule!9916 token!484) lt!1428568 lt!1428569 lt!1428525 (rule!9916 (_1!24217 (v!39651 lt!1428539)))))))

(declare-fun res!1636593 () Bool)

(assert (=> b!4022170 (= res!1636593 (not (matchR!5728 (regex!6862 (rule!9916 (_1!24217 (v!39651 lt!1428539)))) lt!1428525)))))

(declare-fun e!2494990 () Bool)

(assert (=> b!4022170 (=> (not res!1636593) (not e!2494990))))

(assert (=> b!4022170 e!2494990))

(declare-fun b!4022171 () Bool)

(declare-fun e!2494994 () Bool)

(assert (=> b!4022171 (= e!2495015 e!2494994)))

(declare-fun res!1636579 () Bool)

(assert (=> b!4022171 (=> res!1636579 e!2494994)))

(assert (=> b!4022171 (= res!1636579 (not (isPrefix!3949 lt!1428568 lt!1428569)))))

(assert (=> b!4022171 (isPrefix!3949 prefix!494 lt!1428569)))

(declare-fun lt!1428562 () Unit!62186)

(assert (=> b!4022171 (= lt!1428562 (lemmaConcatTwoListThenFirstIsPrefix!2790 prefix!494 suffix!1299))))

(assert (=> b!4022171 (isPrefix!3949 lt!1428568 lt!1428514)))

(declare-fun lt!1428522 () Unit!62186)

(assert (=> b!4022171 (= lt!1428522 (lemmaConcatTwoListThenFirstIsPrefix!2790 lt!1428568 suffixResult!105))))

(declare-fun b!4022172 () Bool)

(declare-fun tp!1222308 () Bool)

(assert (=> b!4022172 (= e!2495007 (and e!2495010 tp!1222308))))

(declare-fun b!4022173 () Bool)

(declare-fun Unit!62193 () Unit!62186)

(assert (=> b!4022173 (= e!2494989 Unit!62193)))

(declare-fun lt!1428515 () Unit!62186)

(assert (=> b!4022173 (= lt!1428515 (lemmaMaxPrefixOutputsMaxPrefix!456 thiss!21717 rules!2999 (rule!9916 (_1!24217 (v!39651 lt!1428539))) lt!1428525 lt!1428534 lt!1428568 (rule!9916 token!484)))))

(assert (=> b!4022173 false))

(declare-fun b!4022174 () Bool)

(assert (=> b!4022174 (= e!2494990 false)))

(declare-fun b!4022175 () Bool)

(declare-fun e!2494995 () Bool)

(declare-fun e!2495004 () Bool)

(assert (=> b!4022175 (= e!2494995 e!2495004)))

(declare-fun res!1636603 () Bool)

(assert (=> b!4022175 (=> res!1636603 e!2495004)))

(declare-fun lt!1428521 () List!43162)

(declare-fun lt!1428509 () List!43162)

(assert (=> b!4022175 (= res!1636603 (or (not (= lt!1428569 lt!1428521)) (not (= lt!1428569 lt!1428509))))))

(assert (=> b!4022175 (= lt!1428521 lt!1428509)))

(declare-fun lt!1428516 () List!43162)

(assert (=> b!4022175 (= lt!1428509 (++!11264 lt!1428568 lt!1428516))))

(declare-fun lt!1428571 () List!43162)

(assert (=> b!4022175 (= lt!1428521 (++!11264 lt!1428571 suffix!1299))))

(declare-fun lt!1428523 () List!43162)

(assert (=> b!4022175 (= lt!1428516 (++!11264 lt!1428523 suffix!1299))))

(declare-fun lt!1428530 () Unit!62186)

(assert (=> b!4022175 (= lt!1428530 (lemmaConcatAssociativity!2574 lt!1428568 lt!1428523 suffix!1299))))

(declare-fun b!4022176 () Bool)

(declare-fun Unit!62194 () Unit!62186)

(assert (=> b!4022176 (= e!2494989 Unit!62194)))

(declare-fun b!4022177 () Bool)

(declare-fun res!1636582 () Bool)

(assert (=> b!4022177 (=> (not res!1636582) (not e!2495006))))

(declare-fun isEmpty!25698 (List!43164) Bool)

(assert (=> b!4022177 (= res!1636582 (not (isEmpty!25698 rules!2999)))))

(declare-fun b!4022178 () Bool)

(assert (=> b!4022178 (= e!2494991 e!2495022)))

(declare-fun res!1636580 () Bool)

(assert (=> b!4022178 (=> res!1636580 e!2495022)))

(assert (=> b!4022178 (= res!1636580 (not (= lt!1428544 lt!1428534)))))

(assert (=> b!4022178 (= lt!1428544 (++!11264 lt!1428525 lt!1428560))))

(assert (=> b!4022178 (= lt!1428560 (getSuffix!2374 lt!1428534 lt!1428525))))

(declare-fun b!4022179 () Bool)

(declare-fun res!1636606 () Bool)

(assert (=> b!4022179 (=> (not res!1636606) (not e!2495006))))

(assert (=> b!4022179 (= res!1636606 (>= (size!32180 suffix!1299) (size!32180 newSuffix!27)))))

(declare-fun b!4022180 () Bool)

(assert (=> b!4022180 (= e!2494994 e!2494995)))

(declare-fun res!1636578 () Bool)

(assert (=> b!4022180 (=> res!1636578 e!2494995)))

(assert (=> b!4022180 (= res!1636578 (not (= lt!1428571 prefix!494)))))

(assert (=> b!4022180 (= lt!1428571 (++!11264 lt!1428568 lt!1428523))))

(assert (=> b!4022180 (= lt!1428523 (getSuffix!2374 prefix!494 lt!1428568))))

(assert (=> b!4022180 (isPrefix!3949 lt!1428568 prefix!494)))

(declare-fun lt!1428564 () Unit!62186)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!521 (List!43162 List!43162 List!43162) Unit!62186)

(assert (=> b!4022180 (= lt!1428564 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!521 prefix!494 lt!1428568 lt!1428569))))

(declare-fun b!4022181 () Bool)

(declare-fun e!2495019 () Bool)

(assert (=> b!4022181 (= e!2495019 e!2495000)))

(declare-fun res!1636598 () Bool)

(assert (=> b!4022181 (=> res!1636598 e!2495000)))

(assert (=> b!4022181 (= res!1636598 (not (matchR!5728 (regex!6862 (rule!9916 token!484)) lt!1428568)))))

(assert (=> b!4022181 (isPrefix!3949 lt!1428568 lt!1428534)))

(declare-fun lt!1428517 () Unit!62186)

(assert (=> b!4022181 (= lt!1428517 (lemmaPrefixStaysPrefixWhenAddingToSuffix!762 lt!1428568 prefix!494 newSuffix!27))))

(declare-fun lt!1428524 () Unit!62186)

(assert (=> b!4022181 (= lt!1428524 (lemmaPrefixStaysPrefixWhenAddingToSuffix!762 lt!1428568 prefix!494 suffix!1299))))

(declare-fun b!4022182 () Bool)

(declare-fun e!2495003 () Bool)

(assert (=> b!4022182 (= e!2495003 e!2495018)))

(declare-fun res!1636595 () Bool)

(assert (=> b!4022182 (=> res!1636595 e!2495018)))

(declare-fun lt!1428556 () Option!9276)

(assert (=> b!4022182 (= res!1636595 (not (= lt!1428556 (Some!9275 (v!39651 lt!1428539)))))))

(assert (=> b!4022182 (isPrefix!3949 lt!1428525 (++!11264 lt!1428525 newSuffixResult!27))))

(declare-fun lt!1428511 () Unit!62186)

(assert (=> b!4022182 (= lt!1428511 (lemmaConcatTwoListThenFirstIsPrefix!2790 lt!1428525 newSuffixResult!27))))

(assert (=> b!4022182 (isPrefix!3949 lt!1428525 lt!1428513)))

(assert (=> b!4022182 (= lt!1428513 (++!11264 lt!1428525 (_2!24217 (v!39651 lt!1428539))))))

(declare-fun lt!1428550 () Unit!62186)

(assert (=> b!4022182 (= lt!1428550 (lemmaConcatTwoListThenFirstIsPrefix!2790 lt!1428525 (_2!24217 (v!39651 lt!1428539))))))

(declare-fun lt!1428548 () TokenValue!7092)

(assert (=> b!4022182 (= lt!1428556 (Some!9275 (tuple2!42167 (Token!12863 lt!1428548 (rule!9916 (_1!24217 (v!39651 lt!1428539))) lt!1428535 lt!1428525) (_2!24217 (v!39651 lt!1428539)))))))

(declare-fun maxPrefixOneRule!2769 (LexerInterface!6451 Rule!13524 List!43162) Option!9276)

(assert (=> b!4022182 (= lt!1428556 (maxPrefixOneRule!2769 thiss!21717 (rule!9916 (_1!24217 (v!39651 lt!1428539))) lt!1428534))))

(assert (=> b!4022182 (= lt!1428535 (size!32180 lt!1428525))))

(declare-fun apply!10059 (TokenValueInjection!13612 BalanceConc!25740) TokenValue!7092)

(declare-fun seqFromList!5087 (List!43162) BalanceConc!25740)

(assert (=> b!4022182 (= lt!1428548 (apply!10059 (transformation!6862 (rule!9916 (_1!24217 (v!39651 lt!1428539)))) (seqFromList!5087 lt!1428525)))))

(declare-fun lt!1428543 () Unit!62186)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1587 (LexerInterface!6451 List!43164 List!43162 List!43162 List!43162 Rule!13524) Unit!62186)

(assert (=> b!4022182 (= lt!1428543 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1587 thiss!21717 rules!2999 lt!1428525 lt!1428534 (_2!24217 (v!39651 lt!1428539)) (rule!9916 (_1!24217 (v!39651 lt!1428539)))))))

(assert (=> b!4022182 (= lt!1428525 (list!16002 (charsOf!4678 (_1!24217 (v!39651 lt!1428539)))))))

(declare-fun lt!1428510 () Unit!62186)

(assert (=> b!4022182 (= lt!1428510 (lemmaInv!1077 (transformation!6862 (rule!9916 (_1!24217 (v!39651 lt!1428539))))))))

(assert (=> b!4022182 (ruleValid!2794 thiss!21717 (rule!9916 (_1!24217 (v!39651 lt!1428539))))))

(declare-fun lt!1428554 () Unit!62186)

(assert (=> b!4022182 (= lt!1428554 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1868 thiss!21717 (rule!9916 (_1!24217 (v!39651 lt!1428539))) rules!2999))))

(declare-fun lt!1428552 () Unit!62186)

(declare-fun lemmaCharactersSize!1421 (Token!12862) Unit!62186)

(assert (=> b!4022182 (= lt!1428552 (lemmaCharactersSize!1421 token!484))))

(declare-fun lt!1428506 () Unit!62186)

(assert (=> b!4022182 (= lt!1428506 (lemmaCharactersSize!1421 (_1!24217 (v!39651 lt!1428539))))))

(declare-fun b!4022183 () Bool)

(assert (=> b!4022183 (= e!2495001 e!2494999)))

(declare-fun res!1636605 () Bool)

(assert (=> b!4022183 (=> (not res!1636605) (not e!2494999))))

(declare-fun lt!1428529 () List!43162)

(assert (=> b!4022183 (= res!1636605 (= lt!1428529 lt!1428534))))

(assert (=> b!4022183 (= lt!1428534 (++!11264 prefix!494 newSuffix!27))))

(assert (=> b!4022183 (= lt!1428529 (++!11264 lt!1428568 newSuffixResult!27))))

(declare-fun b!4022184 () Bool)

(declare-fun res!1636581 () Bool)

(assert (=> b!4022184 (=> (not res!1636581) (not e!2495006))))

(declare-fun rulesInvariant!5794 (LexerInterface!6451 List!43164) Bool)

(assert (=> b!4022184 (= res!1636581 (rulesInvariant!5794 thiss!21717 rules!2999))))

(declare-fun b!4022185 () Bool)

(declare-fun res!1636599 () Bool)

(assert (=> b!4022185 (=> (not res!1636599) (not e!2495006))))

(assert (=> b!4022185 (= res!1636599 (isPrefix!3949 newSuffix!27 suffix!1299))))

(declare-fun b!4022186 () Bool)

(assert (=> b!4022186 (= e!2495011 e!2495003)))

(declare-fun res!1636592 () Bool)

(assert (=> b!4022186 (=> res!1636592 e!2495003)))

(assert (=> b!4022186 (= res!1636592 (not ((_ is Some!9275) lt!1428539)))))

(assert (=> b!4022186 (= lt!1428539 (maxPrefix!3749 thiss!21717 rules!2999 lt!1428534))))

(declare-fun lt!1428572 () Token!12862)

(assert (=> b!4022186 (and (= suffixResult!105 lt!1428547) (= lt!1428567 (tuple2!42167 lt!1428572 lt!1428547)))))

(declare-fun lt!1428537 () Unit!62186)

(assert (=> b!4022186 (= lt!1428537 (lemmaSamePrefixThenSameSuffix!2120 lt!1428568 suffixResult!105 lt!1428568 lt!1428547 lt!1428569))))

(assert (=> b!4022186 (isPrefix!3949 lt!1428568 lt!1428527)))

(declare-fun lt!1428557 () Unit!62186)

(assert (=> b!4022186 (= lt!1428557 (lemmaConcatTwoListThenFirstIsPrefix!2790 lt!1428568 lt!1428547))))

(declare-fun b!4022187 () Bool)

(declare-fun Unit!62195 () Unit!62186)

(assert (=> b!4022187 (= e!2495009 Unit!62195)))

(declare-fun b!4022188 () Bool)

(declare-fun tp!1222307 () Bool)

(declare-fun inv!21 (TokenValue!7092) Bool)

(assert (=> b!4022188 (= e!2495025 (and (inv!21 (value!216201 token!484)) e!2495024 tp!1222307))))

(declare-fun b!4022189 () Bool)

(declare-fun res!1636607 () Bool)

(assert (=> b!4022189 (=> (not res!1636607) (not e!2495002))))

(assert (=> b!4022189 (= res!1636607 (= (size!32179 token!484) (size!32180 (originalCharacters!7462 token!484))))))

(declare-fun b!4022190 () Bool)

(assert (=> b!4022190 (= e!2495004 e!2495019)))

(declare-fun res!1636589 () Bool)

(assert (=> b!4022190 (=> res!1636589 e!2495019)))

(declare-fun lt!1428519 () Option!9276)

(assert (=> b!4022190 (= res!1636589 (not (= lt!1428519 lt!1428536)))))

(assert (=> b!4022190 (= lt!1428519 (Some!9275 (tuple2!42167 lt!1428572 suffixResult!105)))))

(assert (=> b!4022190 (= lt!1428519 (maxPrefixOneRule!2769 thiss!21717 (rule!9916 token!484) lt!1428569))))

(assert (=> b!4022190 (= lt!1428572 (Token!12863 lt!1428570 (rule!9916 token!484) lt!1428565 lt!1428568))))

(assert (=> b!4022190 (= lt!1428570 (apply!10059 (transformation!6862 (rule!9916 token!484)) (seqFromList!5087 lt!1428568)))))

(declare-fun lt!1428558 () Unit!62186)

(assert (=> b!4022190 (= lt!1428558 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1587 thiss!21717 rules!2999 lt!1428568 lt!1428569 suffixResult!105 (rule!9916 token!484)))))

(assert (=> b!4022190 (= lt!1428516 suffixResult!105)))

(declare-fun lt!1428526 () Unit!62186)

(assert (=> b!4022190 (= lt!1428526 (lemmaSamePrefixThenSameSuffix!2120 lt!1428568 lt!1428516 lt!1428568 suffixResult!105 lt!1428569))))

(assert (=> b!4022190 (isPrefix!3949 lt!1428568 lt!1428509)))

(declare-fun lt!1428508 () Unit!62186)

(assert (=> b!4022190 (= lt!1428508 (lemmaConcatTwoListThenFirstIsPrefix!2790 lt!1428568 lt!1428516))))

(assert (= (and start!378736 res!1636591) b!4022177))

(assert (= (and b!4022177 res!1636582) b!4022184))

(assert (= (and b!4022184 res!1636581) b!4022179))

(assert (= (and b!4022179 res!1636606) b!4022185))

(assert (= (and b!4022185 res!1636599) b!4022152))

(assert (= (and b!4022152 res!1636597) b!4022183))

(assert (= (and b!4022183 res!1636605) b!4022144))

(assert (= (and b!4022144 res!1636596) b!4022154))

(assert (= (and b!4022154 (not res!1636585)) b!4022171))

(assert (= (and b!4022171 (not res!1636579)) b!4022180))

(assert (= (and b!4022180 (not res!1636578)) b!4022175))

(assert (= (and b!4022175 (not res!1636603)) b!4022190))

(assert (= (and b!4022190 (not res!1636589)) b!4022181))

(assert (= (and b!4022181 (not res!1636598)) b!4022146))

(assert (= (and b!4022146 res!1636586) b!4022162))

(assert (= (and b!4022162 res!1636604) b!4022189))

(assert (= (and b!4022189 res!1636607) b!4022156))

(assert (= (and b!4022146 (not res!1636587)) b!4022186))

(assert (= (and b!4022186 (not res!1636592)) b!4022182))

(assert (= (and b!4022182 (not res!1636595)) b!4022150))

(assert (= (and b!4022150 (not res!1636602)) b!4022157))

(assert (= (and b!4022157 (not res!1636584)) b!4022148))

(assert (= (and b!4022148 (not res!1636594)) b!4022153))

(assert (= (and b!4022153 (not res!1636600)) b!4022178))

(assert (= (and b!4022178 (not res!1636580)) b!4022166))

(assert (= (and b!4022166 c!695155) b!4022170))

(assert (= (and b!4022166 (not c!695155)) b!4022187))

(assert (= (and b!4022170 res!1636593) b!4022174))

(assert (= (and b!4022166 c!695152) b!4022173))

(assert (= (and b!4022166 (not c!695152)) b!4022176))

(assert (= (and b!4022166 (not res!1636583)) b!4022160))

(assert (= (and b!4022160 (not res!1636601)) b!4022142))

(assert (= (and b!4022142 c!695154) b!4022167))

(assert (= (and b!4022142 (not c!695154)) b!4022164))

(assert (= (and b!4022167 res!1636588) b!4022143))

(assert (= (and b!4022142 c!695153) b!4022161))

(assert (= (and b!4022142 (not c!695153)) b!4022149))

(assert (= (and b!4022161 res!1636590) b!4022155))

(assert (= (and start!378736 ((_ is Cons!43038) prefix!494)) b!4022158))

(assert (= b!4022151 b!4022168))

(assert (= b!4022188 b!4022151))

(assert (= start!378736 b!4022188))

(assert (= (and start!378736 ((_ is Cons!43038) suffixResult!105)) b!4022169))

(assert (= (and start!378736 ((_ is Cons!43038) suffix!1299)) b!4022163))

(assert (= (and start!378736 ((_ is Cons!43038) newSuffix!27)) b!4022159))

(assert (= b!4022145 b!4022165))

(assert (= b!4022172 b!4022145))

(assert (= (and start!378736 ((_ is Cons!43040) rules!2999)) b!4022172))

(assert (= (and start!378736 ((_ is Cons!43038) newSuffixResult!27)) b!4022147))

(declare-fun m!4613021 () Bool)

(assert (=> b!4022161 m!4613021))

(declare-fun m!4613023 () Bool)

(assert (=> b!4022161 m!4613023))

(declare-fun m!4613025 () Bool)

(assert (=> b!4022150 m!4613025))

(declare-fun m!4613027 () Bool)

(assert (=> b!4022150 m!4613027))

(declare-fun m!4613029 () Bool)

(assert (=> b!4022145 m!4613029))

(declare-fun m!4613031 () Bool)

(assert (=> b!4022145 m!4613031))

(declare-fun m!4613033 () Bool)

(assert (=> b!4022160 m!4613033))

(declare-fun m!4613035 () Bool)

(assert (=> b!4022181 m!4613035))

(declare-fun m!4613037 () Bool)

(assert (=> b!4022181 m!4613037))

(declare-fun m!4613039 () Bool)

(assert (=> b!4022181 m!4613039))

(declare-fun m!4613041 () Bool)

(assert (=> b!4022181 m!4613041))

(declare-fun m!4613043 () Bool)

(assert (=> b!4022178 m!4613043))

(declare-fun m!4613045 () Bool)

(assert (=> b!4022178 m!4613045))

(declare-fun m!4613047 () Bool)

(assert (=> b!4022167 m!4613047))

(declare-fun m!4613049 () Bool)

(assert (=> b!4022167 m!4613049))

(declare-fun m!4613051 () Bool)

(assert (=> b!4022166 m!4613051))

(declare-fun m!4613053 () Bool)

(assert (=> b!4022166 m!4613053))

(declare-fun m!4613055 () Bool)

(assert (=> b!4022166 m!4613055))

(declare-fun m!4613057 () Bool)

(assert (=> b!4022189 m!4613057))

(declare-fun m!4613059 () Bool)

(assert (=> b!4022154 m!4613059))

(declare-fun m!4613061 () Bool)

(assert (=> b!4022154 m!4613061))

(declare-fun m!4613063 () Bool)

(assert (=> b!4022154 m!4613063))

(declare-fun m!4613065 () Bool)

(assert (=> b!4022154 m!4613065))

(declare-fun m!4613067 () Bool)

(assert (=> b!4022182 m!4613067))

(declare-fun m!4613069 () Bool)

(assert (=> b!4022182 m!4613069))

(declare-fun m!4613071 () Bool)

(assert (=> b!4022182 m!4613071))

(declare-fun m!4613073 () Bool)

(assert (=> b!4022182 m!4613073))

(declare-fun m!4613075 () Bool)

(assert (=> b!4022182 m!4613075))

(declare-fun m!4613077 () Bool)

(assert (=> b!4022182 m!4613077))

(declare-fun m!4613079 () Bool)

(assert (=> b!4022182 m!4613079))

(assert (=> b!4022182 m!4613075))

(declare-fun m!4613081 () Bool)

(assert (=> b!4022182 m!4613081))

(assert (=> b!4022182 m!4613073))

(declare-fun m!4613083 () Bool)

(assert (=> b!4022182 m!4613083))

(declare-fun m!4613085 () Bool)

(assert (=> b!4022182 m!4613085))

(declare-fun m!4613087 () Bool)

(assert (=> b!4022182 m!4613087))

(declare-fun m!4613089 () Bool)

(assert (=> b!4022182 m!4613089))

(assert (=> b!4022182 m!4613077))

(declare-fun m!4613091 () Bool)

(assert (=> b!4022182 m!4613091))

(declare-fun m!4613093 () Bool)

(assert (=> b!4022182 m!4613093))

(declare-fun m!4613095 () Bool)

(assert (=> b!4022182 m!4613095))

(declare-fun m!4613097 () Bool)

(assert (=> b!4022182 m!4613097))

(declare-fun m!4613099 () Bool)

(assert (=> b!4022182 m!4613099))

(declare-fun m!4613101 () Bool)

(assert (=> b!4022182 m!4613101))

(declare-fun m!4613103 () Bool)

(assert (=> b!4022148 m!4613103))

(declare-fun m!4613105 () Bool)

(assert (=> b!4022148 m!4613105))

(declare-fun m!4613107 () Bool)

(assert (=> b!4022148 m!4613107))

(declare-fun m!4613109 () Bool)

(assert (=> b!4022186 m!4613109))

(declare-fun m!4613111 () Bool)

(assert (=> b!4022186 m!4613111))

(declare-fun m!4613113 () Bool)

(assert (=> b!4022186 m!4613113))

(declare-fun m!4613115 () Bool)

(assert (=> b!4022186 m!4613115))

(declare-fun m!4613117 () Bool)

(assert (=> b!4022151 m!4613117))

(declare-fun m!4613119 () Bool)

(assert (=> b!4022151 m!4613119))

(declare-fun m!4613121 () Bool)

(assert (=> b!4022177 m!4613121))

(declare-fun m!4613123 () Bool)

(assert (=> b!4022152 m!4613123))

(declare-fun m!4613125 () Bool)

(assert (=> b!4022152 m!4613125))

(declare-fun m!4613127 () Bool)

(assert (=> b!4022152 m!4613127))

(assert (=> b!4022152 m!4613127))

(declare-fun m!4613129 () Bool)

(assert (=> b!4022152 m!4613129))

(declare-fun m!4613131 () Bool)

(assert (=> b!4022146 m!4613131))

(declare-fun m!4613133 () Bool)

(assert (=> b!4022146 m!4613133))

(declare-fun m!4613135 () Bool)

(assert (=> b!4022146 m!4613135))

(declare-fun m!4613137 () Bool)

(assert (=> b!4022146 m!4613137))

(declare-fun m!4613139 () Bool)

(assert (=> b!4022157 m!4613139))

(declare-fun m!4613141 () Bool)

(assert (=> b!4022157 m!4613141))

(declare-fun m!4613143 () Bool)

(assert (=> b!4022157 m!4613143))

(declare-fun m!4613145 () Bool)

(assert (=> b!4022142 m!4613145))

(declare-fun m!4613147 () Bool)

(assert (=> b!4022142 m!4613147))

(declare-fun m!4613149 () Bool)

(assert (=> b!4022142 m!4613149))

(declare-fun m!4613151 () Bool)

(assert (=> b!4022142 m!4613151))

(declare-fun m!4613153 () Bool)

(assert (=> b!4022142 m!4613153))

(declare-fun m!4613155 () Bool)

(assert (=> start!378736 m!4613155))

(declare-fun m!4613157 () Bool)

(assert (=> b!4022175 m!4613157))

(declare-fun m!4613159 () Bool)

(assert (=> b!4022175 m!4613159))

(declare-fun m!4613161 () Bool)

(assert (=> b!4022175 m!4613161))

(declare-fun m!4613163 () Bool)

(assert (=> b!4022175 m!4613163))

(declare-fun m!4613165 () Bool)

(assert (=> b!4022180 m!4613165))

(declare-fun m!4613167 () Bool)

(assert (=> b!4022180 m!4613167))

(declare-fun m!4613169 () Bool)

(assert (=> b!4022180 m!4613169))

(declare-fun m!4613171 () Bool)

(assert (=> b!4022180 m!4613171))

(declare-fun m!4613173 () Bool)

(assert (=> b!4022184 m!4613173))

(declare-fun m!4613175 () Bool)

(assert (=> b!4022190 m!4613175))

(declare-fun m!4613177 () Bool)

(assert (=> b!4022190 m!4613177))

(declare-fun m!4613179 () Bool)

(assert (=> b!4022190 m!4613179))

(declare-fun m!4613181 () Bool)

(assert (=> b!4022190 m!4613181))

(declare-fun m!4613183 () Bool)

(assert (=> b!4022190 m!4613183))

(declare-fun m!4613185 () Bool)

(assert (=> b!4022190 m!4613185))

(declare-fun m!4613187 () Bool)

(assert (=> b!4022190 m!4613187))

(assert (=> b!4022190 m!4613181))

(declare-fun m!4613189 () Bool)

(assert (=> b!4022188 m!4613189))

(declare-fun m!4613191 () Bool)

(assert (=> b!4022144 m!4613191))

(declare-fun m!4613193 () Bool)

(assert (=> b!4022144 m!4613193))

(declare-fun m!4613195 () Bool)

(assert (=> b!4022170 m!4613195))

(declare-fun m!4613197 () Bool)

(assert (=> b!4022170 m!4613197))

(declare-fun m!4613199 () Bool)

(assert (=> b!4022183 m!4613199))

(declare-fun m!4613201 () Bool)

(assert (=> b!4022183 m!4613201))

(declare-fun m!4613203 () Bool)

(assert (=> b!4022185 m!4613203))

(declare-fun m!4613205 () Bool)

(assert (=> b!4022171 m!4613205))

(declare-fun m!4613207 () Bool)

(assert (=> b!4022171 m!4613207))

(declare-fun m!4613209 () Bool)

(assert (=> b!4022171 m!4613209))

(declare-fun m!4613211 () Bool)

(assert (=> b!4022171 m!4613211))

(declare-fun m!4613213 () Bool)

(assert (=> b!4022171 m!4613213))

(declare-fun m!4613215 () Bool)

(assert (=> b!4022173 m!4613215))

(declare-fun m!4613217 () Bool)

(assert (=> b!4022179 m!4613217))

(declare-fun m!4613219 () Bool)

(assert (=> b!4022179 m!4613219))

(check-sat (not b!4022183) (not b!4022142) (not b!4022161) (not b_next!112593) (not start!378736) (not b!4022178) (not b!4022177) b_and!308999 (not b!4022151) (not b!4022145) tp_is_empty!20505 (not b!4022185) (not b!4022175) (not b!4022190) (not b!4022182) (not b!4022159) (not b!4022148) (not b!4022163) (not b!4022188) (not b!4022160) (not b!4022157) (not b!4022166) b_and!309003 (not b!4022152) b_and!309001 (not b!4022173) (not b!4022180) (not b!4022172) (not b!4022189) (not b!4022186) (not b!4022170) b_and!309005 (not b!4022171) (not b!4022146) (not b!4022169) (not b!4022167) (not b!4022144) (not b!4022158) (not b!4022154) (not b!4022184) (not b!4022181) (not b_next!112597) (not b!4022147) (not b_next!112595) (not b!4022150) (not b_next!112599) (not b!4022179))
(check-sat (not b_next!112593) b_and!309005 b_and!308999 (not b_next!112597) b_and!309003 b_and!309001 (not b_next!112595) (not b_next!112599))
