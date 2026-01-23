; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49528 () Bool)

(assert start!49528)

(declare-fun b!536646 () Bool)

(declare-fun b_free!14697 () Bool)

(declare-fun b_next!14713 () Bool)

(assert (=> b!536646 (= b_free!14697 (not b_next!14713))))

(declare-fun tp!171235 () Bool)

(declare-fun b_and!52491 () Bool)

(assert (=> b!536646 (= tp!171235 b_and!52491)))

(declare-fun b_free!14699 () Bool)

(declare-fun b_next!14715 () Bool)

(assert (=> b!536646 (= b_free!14699 (not b_next!14715))))

(declare-fun tp!171240 () Bool)

(declare-fun b_and!52493 () Bool)

(assert (=> b!536646 (= tp!171240 b_and!52493)))

(declare-fun b!536655 () Bool)

(declare-fun b_free!14701 () Bool)

(declare-fun b_next!14717 () Bool)

(assert (=> b!536655 (= b_free!14701 (not b_next!14717))))

(declare-fun tp!171231 () Bool)

(declare-fun b_and!52495 () Bool)

(assert (=> b!536655 (= tp!171231 b_and!52495)))

(declare-fun b_free!14703 () Bool)

(declare-fun b_next!14719 () Bool)

(assert (=> b!536655 (= b_free!14703 (not b_next!14719))))

(declare-fun tp!171234 () Bool)

(declare-fun b_and!52497 () Bool)

(assert (=> b!536655 (= tp!171234 b_and!52497)))

(declare-fun b!536636 () Bool)

(declare-fun res!227201 () Bool)

(declare-fun e!323694 () Bool)

(assert (=> b!536636 (=> (not res!227201) (not e!323694))))

(declare-datatypes ((C!3508 0))(
  ( (C!3509 (val!1980 Int)) )
))
(declare-datatypes ((Regex!1293 0))(
  ( (ElementMatch!1293 (c!102036 C!3508)) (Concat!2276 (regOne!3098 Regex!1293) (regTwo!3098 Regex!1293)) (EmptyExpr!1293) (Star!1293 (reg!1622 Regex!1293)) (EmptyLang!1293) (Union!1293 (regOne!3099 Regex!1293) (regTwo!3099 Regex!1293)) )
))
(declare-datatypes ((List!5213 0))(
  ( (Nil!5203) (Cons!5203 (h!10604 (_ BitVec 16)) (t!74166 List!5213)) )
))
(declare-datatypes ((List!5214 0))(
  ( (Nil!5204) (Cons!5204 (h!10605 C!3508) (t!74167 List!5214)) )
))
(declare-datatypes ((IArray!3353 0))(
  ( (IArray!3354 (innerList!1734 List!5214)) )
))
(declare-datatypes ((Conc!1676 0))(
  ( (Node!1676 (left!4356 Conc!1676) (right!4686 Conc!1676) (csize!3582 Int) (cheight!1887 Int)) (Leaf!2663 (xs!4313 IArray!3353) (csize!3583 Int)) (Empty!1676) )
))
(declare-datatypes ((BalanceConc!3360 0))(
  ( (BalanceConc!3361 (c!102037 Conc!1676)) )
))
(declare-datatypes ((TokenValue!983 0))(
  ( (FloatLiteralValue!1966 (text!7326 List!5213)) (TokenValueExt!982 (__x!3864 Int)) (Broken!4915 (value!32172 List!5213)) (Object!992) (End!983) (Def!983) (Underscore!983) (Match!983) (Else!983) (Error!983) (Case!983) (If!983) (Extends!983) (Abstract!983) (Class!983) (Val!983) (DelimiterValue!1966 (del!1043 List!5213)) (KeywordValue!989 (value!32173 List!5213)) (CommentValue!1966 (value!32174 List!5213)) (WhitespaceValue!1966 (value!32175 List!5213)) (IndentationValue!983 (value!32176 List!5213)) (String!6658) (Int32!983) (Broken!4916 (value!32177 List!5213)) (Boolean!984) (Unit!9086) (OperatorValue!986 (op!1043 List!5213)) (IdentifierValue!1966 (value!32178 List!5213)) (IdentifierValue!1967 (value!32179 List!5213)) (WhitespaceValue!1967 (value!32180 List!5213)) (True!1966) (False!1966) (Broken!4917 (value!32181 List!5213)) (Broken!4918 (value!32182 List!5213)) (True!1967) (RightBrace!983) (RightBracket!983) (Colon!983) (Null!983) (Comma!983) (LeftBracket!983) (False!1967) (LeftBrace!983) (ImaginaryLiteralValue!983 (text!7327 List!5213)) (StringLiteralValue!2949 (value!32183 List!5213)) (EOFValue!983 (value!32184 List!5213)) (IdentValue!983 (value!32185 List!5213)) (DelimiterValue!1967 (value!32186 List!5213)) (DedentValue!983 (value!32187 List!5213)) (NewLineValue!983 (value!32188 List!5213)) (IntegerValue!2949 (value!32189 (_ BitVec 32)) (text!7328 List!5213)) (IntegerValue!2950 (value!32190 Int) (text!7329 List!5213)) (Times!983) (Or!983) (Equal!983) (Minus!983) (Broken!4919 (value!32191 List!5213)) (And!983) (Div!983) (LessEqual!983) (Mod!983) (Concat!2277) (Not!983) (Plus!983) (SpaceValue!983 (value!32192 List!5213)) (IntegerValue!2951 (value!32193 Int) (text!7330 List!5213)) (StringLiteralValue!2950 (text!7331 List!5213)) (FloatLiteralValue!1967 (text!7332 List!5213)) (BytesLiteralValue!983 (value!32194 List!5213)) (CommentValue!1967 (value!32195 List!5213)) (StringLiteralValue!2951 (value!32196 List!5213)) (ErrorTokenValue!983 (msg!1044 List!5213)) )
))
(declare-datatypes ((String!6659 0))(
  ( (String!6660 (value!32197 String)) )
))
(declare-datatypes ((TokenValueInjection!1734 0))(
  ( (TokenValueInjection!1735 (toValue!1806 Int) (toChars!1665 Int)) )
))
(declare-datatypes ((Rule!1718 0))(
  ( (Rule!1719 (regex!959 Regex!1293) (tag!1221 String!6659) (isSeparator!959 Bool) (transformation!959 TokenValueInjection!1734)) )
))
(declare-datatypes ((Token!1654 0))(
  ( (Token!1655 (value!32198 TokenValue!983) (rule!1663 Rule!1718) (size!4190 Int) (originalCharacters!998 List!5214)) )
))
(declare-datatypes ((tuple2!6280 0))(
  ( (tuple2!6281 (_1!3404 Token!1654) (_2!3404 List!5214)) )
))
(declare-datatypes ((Option!1309 0))(
  ( (None!1308) (Some!1308 (v!16115 tuple2!6280)) )
))
(declare-fun lt!222101 () Option!1309)

(declare-fun size!4191 (List!5214) Int)

(assert (=> b!536636 (= res!227201 (= (size!4190 (_1!3404 (v!16115 lt!222101))) (size!4191 (originalCharacters!998 (_1!3404 (v!16115 lt!222101))))))))

(declare-fun b!536637 () Bool)

(declare-fun e!323707 () Bool)

(declare-fun e!323691 () Bool)

(assert (=> b!536637 (= e!323707 (not e!323691))))

(declare-fun res!227211 () Bool)

(assert (=> b!536637 (=> res!227211 e!323691)))

(declare-fun input!2705 () List!5214)

(declare-fun lt!222111 () List!5214)

(declare-fun isPrefix!601 (List!5214 List!5214) Bool)

(assert (=> b!536637 (= res!227211 (not (isPrefix!601 input!2705 lt!222111)))))

(declare-fun lt!222092 () List!5214)

(assert (=> b!536637 (isPrefix!601 lt!222092 lt!222111)))

(declare-datatypes ((Unit!9087 0))(
  ( (Unit!9088) )
))
(declare-fun lt!222099 () Unit!9087)

(declare-fun suffix!1342 () List!5214)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!452 (List!5214 List!5214) Unit!9087)

(assert (=> b!536637 (= lt!222099 (lemmaConcatTwoListThenFirstIsPrefix!452 lt!222092 suffix!1342))))

(declare-fun lt!222086 () List!5214)

(assert (=> b!536637 (isPrefix!601 input!2705 lt!222086)))

(declare-fun lt!222108 () Unit!9087)

(assert (=> b!536637 (= lt!222108 (lemmaConcatTwoListThenFirstIsPrefix!452 input!2705 suffix!1342))))

(assert (=> b!536637 e!323694))

(declare-fun res!227204 () Bool)

(assert (=> b!536637 (=> (not res!227204) (not e!323694))))

(declare-fun lt!222088 () TokenValue!983)

(assert (=> b!536637 (= res!227204 (= (value!32198 (_1!3404 (v!16115 lt!222101))) lt!222088))))

(declare-fun lt!222093 () List!5214)

(declare-fun apply!1234 (TokenValueInjection!1734 BalanceConc!3360) TokenValue!983)

(declare-fun seqFromList!1157 (List!5214) BalanceConc!3360)

(assert (=> b!536637 (= lt!222088 (apply!1234 (transformation!959 (rule!1663 (_1!3404 (v!16115 lt!222101)))) (seqFromList!1157 lt!222093)))))

(declare-fun lt!222094 () Unit!9087)

(declare-fun token!491 () Token!1654)

(declare-fun lemmaInv!107 (TokenValueInjection!1734) Unit!9087)

(assert (=> b!536637 (= lt!222094 (lemmaInv!107 (transformation!959 (rule!1663 token!491))))))

(declare-fun lt!222084 () Unit!9087)

(assert (=> b!536637 (= lt!222084 (lemmaInv!107 (transformation!959 (rule!1663 (_1!3404 (v!16115 lt!222101))))))))

(declare-datatypes ((LexerInterface!845 0))(
  ( (LexerInterfaceExt!842 (__x!3865 Int)) (Lexer!843) )
))
(declare-fun thiss!22590 () LexerInterface!845)

(declare-fun ruleValid!179 (LexerInterface!845 Rule!1718) Bool)

(assert (=> b!536637 (ruleValid!179 thiss!22590 (rule!1663 token!491))))

(declare-datatypes ((List!5215 0))(
  ( (Nil!5205) (Cons!5205 (h!10606 Rule!1718) (t!74168 List!5215)) )
))
(declare-fun rules!3103 () List!5215)

(declare-fun lt!222087 () Unit!9087)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!38 (LexerInterface!845 Rule!1718 List!5215) Unit!9087)

(assert (=> b!536637 (= lt!222087 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!38 thiss!22590 (rule!1663 token!491) rules!3103))))

(assert (=> b!536637 (ruleValid!179 thiss!22590 (rule!1663 (_1!3404 (v!16115 lt!222101))))))

(declare-fun lt!222089 () Unit!9087)

(assert (=> b!536637 (= lt!222089 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!38 thiss!22590 (rule!1663 (_1!3404 (v!16115 lt!222101))) rules!3103))))

(assert (=> b!536637 (isPrefix!601 input!2705 input!2705)))

(declare-fun lt!222100 () Unit!9087)

(declare-fun lemmaIsPrefixRefl!341 (List!5214 List!5214) Unit!9087)

(assert (=> b!536637 (= lt!222100 (lemmaIsPrefixRefl!341 input!2705 input!2705))))

(declare-fun lt!222112 () List!5214)

(assert (=> b!536637 (= (_2!3404 (v!16115 lt!222101)) lt!222112)))

(declare-fun lt!222098 () Unit!9087)

(declare-fun lemmaSamePrefixThenSameSuffix!328 (List!5214 List!5214 List!5214 List!5214 List!5214) Unit!9087)

(assert (=> b!536637 (= lt!222098 (lemmaSamePrefixThenSameSuffix!328 lt!222093 (_2!3404 (v!16115 lt!222101)) lt!222093 lt!222112 input!2705))))

(declare-fun getSuffix!124 (List!5214 List!5214) List!5214)

(assert (=> b!536637 (= lt!222112 (getSuffix!124 input!2705 lt!222093))))

(declare-fun ++!1447 (List!5214 List!5214) List!5214)

(assert (=> b!536637 (isPrefix!601 lt!222093 (++!1447 lt!222093 (_2!3404 (v!16115 lt!222101))))))

(declare-fun lt!222110 () Unit!9087)

(assert (=> b!536637 (= lt!222110 (lemmaConcatTwoListThenFirstIsPrefix!452 lt!222093 (_2!3404 (v!16115 lt!222101))))))

(declare-fun lt!222103 () Unit!9087)

(declare-fun lemmaCharactersSize!38 (Token!1654) Unit!9087)

(assert (=> b!536637 (= lt!222103 (lemmaCharactersSize!38 token!491))))

(declare-fun lt!222109 () Unit!9087)

(assert (=> b!536637 (= lt!222109 (lemmaCharactersSize!38 (_1!3404 (v!16115 lt!222101))))))

(declare-fun lt!222095 () Unit!9087)

(declare-fun e!323692 () Unit!9087)

(assert (=> b!536637 (= lt!222095 e!323692)))

(declare-fun c!102035 () Bool)

(declare-fun lt!222106 () Int)

(declare-fun lt!222107 () Int)

(assert (=> b!536637 (= c!102035 (> lt!222106 lt!222107))))

(assert (=> b!536637 (= lt!222107 (size!4191 lt!222092))))

(assert (=> b!536637 (= lt!222106 (size!4191 lt!222093))))

(declare-fun list!2163 (BalanceConc!3360) List!5214)

(declare-fun charsOf!588 (Token!1654) BalanceConc!3360)

(assert (=> b!536637 (= lt!222093 (list!2163 (charsOf!588 (_1!3404 (v!16115 lt!222101)))))))

(declare-fun lt!222091 () tuple2!6280)

(assert (=> b!536637 (= lt!222101 (Some!1308 lt!222091))))

(assert (=> b!536637 (= lt!222091 (tuple2!6281 (_1!3404 (v!16115 lt!222101)) (_2!3404 (v!16115 lt!222101))))))

(declare-fun lt!222096 () Unit!9087)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!44 (List!5214 List!5214 List!5214 List!5214) Unit!9087)

(assert (=> b!536637 (= lt!222096 (lemmaConcatSameAndSameSizesThenSameLists!44 lt!222092 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!536638 () Bool)

(assert (=> b!536638 (= e!323694 (and (= (size!4190 (_1!3404 (v!16115 lt!222101))) lt!222106) (= (originalCharacters!998 (_1!3404 (v!16115 lt!222101))) lt!222093) (= lt!222091 (tuple2!6281 (Token!1655 lt!222088 (rule!1663 (_1!3404 (v!16115 lt!222101))) lt!222106 lt!222093) lt!222112))))))

(declare-fun b!536639 () Bool)

(declare-fun e!323708 () Bool)

(declare-fun tp_is_empty!2941 () Bool)

(declare-fun tp!171237 () Bool)

(assert (=> b!536639 (= e!323708 (and tp_is_empty!2941 tp!171237))))

(declare-fun b!536640 () Bool)

(assert (=> b!536640 (= e!323691 true)))

(declare-fun e!323687 () Bool)

(assert (=> b!536640 e!323687))

(declare-fun res!227213 () Bool)

(assert (=> b!536640 (=> (not res!227213) (not e!323687))))

(declare-fun lt!222102 () TokenValue!983)

(declare-fun maxPrefixOneRule!258 (LexerInterface!845 Rule!1718 List!5214) Option!1309)

(assert (=> b!536640 (= res!227213 (= (maxPrefixOneRule!258 thiss!22590 (rule!1663 token!491) lt!222086) (Some!1308 (tuple2!6281 (Token!1655 lt!222102 (rule!1663 token!491) lt!222107 lt!222092) suffix!1342))))))

(declare-fun lt!222113 () Unit!9087)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!10 (LexerInterface!845 List!5215 List!5214 List!5214 List!5214 Rule!1718) Unit!9087)

(assert (=> b!536640 (= lt!222113 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!10 thiss!22590 rules!3103 lt!222092 lt!222086 suffix!1342 (rule!1663 token!491)))))

(assert (=> b!536640 (= (maxPrefixOneRule!258 thiss!22590 (rule!1663 (_1!3404 (v!16115 lt!222101))) input!2705) (Some!1308 (tuple2!6281 (Token!1655 lt!222088 (rule!1663 (_1!3404 (v!16115 lt!222101))) lt!222106 lt!222093) (_2!3404 (v!16115 lt!222101)))))))

(declare-fun lt!222104 () Unit!9087)

(assert (=> b!536640 (= lt!222104 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!10 thiss!22590 rules!3103 lt!222093 input!2705 (_2!3404 (v!16115 lt!222101)) (rule!1663 (_1!3404 (v!16115 lt!222101)))))))

(declare-fun e!323705 () Bool)

(assert (=> b!536640 e!323705))

(declare-fun res!227206 () Bool)

(assert (=> b!536640 (=> (not res!227206) (not e!323705))))

(assert (=> b!536640 (= res!227206 (= (value!32198 token!491) lt!222102))))

(assert (=> b!536640 (= lt!222102 (apply!1234 (transformation!959 (rule!1663 token!491)) (seqFromList!1157 lt!222092)))))

(declare-fun lt!222085 () List!5214)

(assert (=> b!536640 (= suffix!1342 lt!222085)))

(declare-fun lt!222105 () Unit!9087)

(assert (=> b!536640 (= lt!222105 (lemmaSamePrefixThenSameSuffix!328 lt!222092 suffix!1342 lt!222092 lt!222085 lt!222086))))

(assert (=> b!536640 (= lt!222085 (getSuffix!124 lt!222086 lt!222092))))

(declare-fun b!536641 () Bool)

(declare-fun e!323704 () Bool)

(declare-fun tp!171232 () Bool)

(assert (=> b!536641 (= e!323704 (and tp_is_empty!2941 tp!171232))))

(declare-fun b!536642 () Bool)

(declare-fun res!227212 () Bool)

(declare-fun e!323688 () Bool)

(assert (=> b!536642 (=> (not res!227212) (not e!323688))))

(declare-fun isEmpty!3762 (List!5214) Bool)

(assert (=> b!536642 (= res!227212 (not (isEmpty!3762 input!2705)))))

(declare-fun b!536643 () Bool)

(declare-fun res!227205 () Bool)

(assert (=> b!536643 (=> (not res!227205) (not e!323688))))

(declare-fun rulesInvariant!808 (LexerInterface!845 List!5215) Bool)

(assert (=> b!536643 (= res!227205 (rulesInvariant!808 thiss!22590 rules!3103))))

(declare-fun b!536644 () Bool)

(declare-fun res!227207 () Bool)

(assert (=> b!536644 (=> (not res!227207) (not e!323688))))

(declare-fun isEmpty!3763 (List!5215) Bool)

(assert (=> b!536644 (= res!227207 (not (isEmpty!3763 rules!3103)))))

(declare-fun b!536645 () Bool)

(declare-fun e!323696 () Bool)

(assert (=> b!536645 (= e!323688 e!323696)))

(declare-fun res!227216 () Bool)

(assert (=> b!536645 (=> (not res!227216) (not e!323696))))

(assert (=> b!536645 (= res!227216 (= lt!222092 input!2705))))

(assert (=> b!536645 (= lt!222092 (list!2163 (charsOf!588 token!491)))))

(declare-fun e!323700 () Bool)

(assert (=> b!536646 (= e!323700 (and tp!171235 tp!171240))))

(declare-fun b!536647 () Bool)

(declare-fun e!323699 () Bool)

(declare-fun isDefined!1121 (Option!1309) Bool)

(assert (=> b!536647 (= e!323699 (isDefined!1121 lt!222101))))

(declare-fun b!536648 () Bool)

(assert (=> b!536648 (= e!323687 e!323699)))

(declare-fun res!227203 () Bool)

(assert (=> b!536648 (=> res!227203 e!323699)))

(assert (=> b!536648 (= res!227203 (>= lt!222106 lt!222107))))

(declare-fun e!323690 () Bool)

(declare-fun e!323698 () Bool)

(declare-fun b!536649 () Bool)

(declare-fun tp!171233 () Bool)

(declare-fun inv!6529 (String!6659) Bool)

(declare-fun inv!6532 (TokenValueInjection!1734) Bool)

(assert (=> b!536649 (= e!323690 (and tp!171233 (inv!6529 (tag!1221 (h!10606 rules!3103))) (inv!6532 (transformation!959 (h!10606 rules!3103))) e!323698))))

(declare-fun b!536650 () Bool)

(declare-fun e!323689 () Bool)

(declare-fun tp!171238 () Bool)

(assert (=> b!536650 (= e!323689 (and e!323690 tp!171238))))

(declare-fun b!536651 () Bool)

(declare-fun res!227208 () Bool)

(assert (=> b!536651 (=> (not res!227208) (not e!323705))))

(assert (=> b!536651 (= res!227208 (= (size!4190 token!491) (size!4191 (originalCharacters!998 token!491))))))

(declare-fun b!536652 () Bool)

(declare-fun e!323697 () Bool)

(assert (=> b!536652 (= e!323696 e!323697)))

(declare-fun res!227214 () Bool)

(assert (=> b!536652 (=> (not res!227214) (not e!323697))))

(declare-fun lt!222090 () Option!1309)

(assert (=> b!536652 (= res!227214 (isDefined!1121 lt!222090))))

(declare-fun maxPrefix!543 (LexerInterface!845 List!5215 List!5214) Option!1309)

(assert (=> b!536652 (= lt!222090 (maxPrefix!543 thiss!22590 rules!3103 lt!222086))))

(assert (=> b!536652 (= lt!222086 (++!1447 input!2705 suffix!1342))))

(declare-fun b!536653 () Bool)

(declare-fun tp!171236 () Bool)

(declare-fun e!323702 () Bool)

(declare-fun e!323686 () Bool)

(declare-fun inv!21 (TokenValue!983) Bool)

(assert (=> b!536653 (= e!323686 (and (inv!21 (value!32198 token!491)) e!323702 tp!171236))))

(assert (=> b!536655 (= e!323698 (and tp!171231 tp!171234))))

(declare-fun res!227210 () Bool)

(assert (=> start!49528 (=> (not res!227210) (not e!323688))))

(get-info :version)

(assert (=> start!49528 (= res!227210 ((_ is Lexer!843) thiss!22590))))

(assert (=> start!49528 e!323688))

(assert (=> start!49528 e!323708))

(assert (=> start!49528 e!323689))

(declare-fun inv!6533 (Token!1654) Bool)

(assert (=> start!49528 (and (inv!6533 token!491) e!323686)))

(assert (=> start!49528 true))

(assert (=> start!49528 e!323704))

(declare-fun b!536654 () Bool)

(declare-fun Unit!9089 () Unit!9087)

(assert (=> b!536654 (= e!323692 Unit!9089)))

(assert (=> b!536654 false))

(declare-fun b!536656 () Bool)

(declare-fun e!323703 () Bool)

(assert (=> b!536656 (= e!323703 e!323707)))

(declare-fun res!227209 () Bool)

(assert (=> b!536656 (=> (not res!227209) (not e!323707))))

(assert (=> b!536656 (= res!227209 (= lt!222111 lt!222086))))

(assert (=> b!536656 (= lt!222111 (++!1447 lt!222092 suffix!1342))))

(declare-fun b!536657 () Bool)

(declare-fun tp!171239 () Bool)

(assert (=> b!536657 (= e!323702 (and tp!171239 (inv!6529 (tag!1221 (rule!1663 token!491))) (inv!6532 (transformation!959 (rule!1663 token!491))) e!323700))))

(declare-fun b!536658 () Bool)

(declare-fun Unit!9090 () Unit!9087)

(assert (=> b!536658 (= e!323692 Unit!9090)))

(declare-fun b!536659 () Bool)

(declare-fun e!323693 () Bool)

(assert (=> b!536659 (= e!323697 e!323693)))

(declare-fun res!227202 () Bool)

(assert (=> b!536659 (=> (not res!227202) (not e!323693))))

(declare-fun lt!222097 () tuple2!6280)

(assert (=> b!536659 (= res!227202 (and (= (_1!3404 lt!222097) token!491) (= (_2!3404 lt!222097) suffix!1342)))))

(declare-fun get!1953 (Option!1309) tuple2!6280)

(assert (=> b!536659 (= lt!222097 (get!1953 lt!222090))))

(declare-fun b!536660 () Bool)

(assert (=> b!536660 (= e!323693 e!323703)))

(declare-fun res!227215 () Bool)

(assert (=> b!536660 (=> (not res!227215) (not e!323703))))

(assert (=> b!536660 (= res!227215 ((_ is Some!1308) lt!222101))))

(assert (=> b!536660 (= lt!222101 (maxPrefix!543 thiss!22590 rules!3103 input!2705))))

(declare-fun b!536661 () Bool)

(assert (=> b!536661 (= e!323705 (and (= (size!4190 token!491) lt!222107) (= (originalCharacters!998 token!491) lt!222092) (= (tuple2!6281 token!491 suffix!1342) (tuple2!6281 (Token!1655 lt!222102 (rule!1663 token!491) lt!222107 lt!222092) lt!222085))))))

(assert (= (and start!49528 res!227210) b!536644))

(assert (= (and b!536644 res!227207) b!536643))

(assert (= (and b!536643 res!227205) b!536642))

(assert (= (and b!536642 res!227212) b!536645))

(assert (= (and b!536645 res!227216) b!536652))

(assert (= (and b!536652 res!227214) b!536659))

(assert (= (and b!536659 res!227202) b!536660))

(assert (= (and b!536660 res!227215) b!536656))

(assert (= (and b!536656 res!227209) b!536637))

(assert (= (and b!536637 c!102035) b!536654))

(assert (= (and b!536637 (not c!102035)) b!536658))

(assert (= (and b!536637 res!227204) b!536636))

(assert (= (and b!536636 res!227201) b!536638))

(assert (= (and b!536637 (not res!227211)) b!536640))

(assert (= (and b!536640 res!227206) b!536651))

(assert (= (and b!536651 res!227208) b!536661))

(assert (= (and b!536640 res!227213) b!536648))

(assert (= (and b!536648 (not res!227203)) b!536647))

(assert (= (and start!49528 ((_ is Cons!5204) suffix!1342)) b!536639))

(assert (= b!536649 b!536655))

(assert (= b!536650 b!536649))

(assert (= (and start!49528 ((_ is Cons!5205) rules!3103)) b!536650))

(assert (= b!536657 b!536646))

(assert (= b!536653 b!536657))

(assert (= start!49528 b!536653))

(assert (= (and start!49528 ((_ is Cons!5204) input!2705)) b!536641))

(declare-fun m!783121 () Bool)

(assert (=> b!536640 m!783121))

(declare-fun m!783123 () Bool)

(assert (=> b!536640 m!783123))

(declare-fun m!783125 () Bool)

(assert (=> b!536640 m!783125))

(declare-fun m!783127 () Bool)

(assert (=> b!536640 m!783127))

(declare-fun m!783129 () Bool)

(assert (=> b!536640 m!783129))

(declare-fun m!783131 () Bool)

(assert (=> b!536640 m!783131))

(assert (=> b!536640 m!783123))

(declare-fun m!783133 () Bool)

(assert (=> b!536640 m!783133))

(declare-fun m!783135 () Bool)

(assert (=> b!536640 m!783135))

(declare-fun m!783137 () Bool)

(assert (=> b!536660 m!783137))

(declare-fun m!783139 () Bool)

(assert (=> b!536656 m!783139))

(declare-fun m!783141 () Bool)

(assert (=> b!536636 m!783141))

(declare-fun m!783143 () Bool)

(assert (=> b!536647 m!783143))

(declare-fun m!783145 () Bool)

(assert (=> b!536645 m!783145))

(assert (=> b!536645 m!783145))

(declare-fun m!783147 () Bool)

(assert (=> b!536645 m!783147))

(declare-fun m!783149 () Bool)

(assert (=> b!536651 m!783149))

(declare-fun m!783151 () Bool)

(assert (=> b!536644 m!783151))

(declare-fun m!783153 () Bool)

(assert (=> b!536643 m!783153))

(declare-fun m!783155 () Bool)

(assert (=> b!536637 m!783155))

(declare-fun m!783157 () Bool)

(assert (=> b!536637 m!783157))

(declare-fun m!783159 () Bool)

(assert (=> b!536637 m!783159))

(declare-fun m!783161 () Bool)

(assert (=> b!536637 m!783161))

(declare-fun m!783163 () Bool)

(assert (=> b!536637 m!783163))

(declare-fun m!783165 () Bool)

(assert (=> b!536637 m!783165))

(declare-fun m!783167 () Bool)

(assert (=> b!536637 m!783167))

(declare-fun m!783169 () Bool)

(assert (=> b!536637 m!783169))

(declare-fun m!783171 () Bool)

(assert (=> b!536637 m!783171))

(declare-fun m!783173 () Bool)

(assert (=> b!536637 m!783173))

(assert (=> b!536637 m!783167))

(declare-fun m!783175 () Bool)

(assert (=> b!536637 m!783175))

(declare-fun m!783177 () Bool)

(assert (=> b!536637 m!783177))

(declare-fun m!783179 () Bool)

(assert (=> b!536637 m!783179))

(declare-fun m!783181 () Bool)

(assert (=> b!536637 m!783181))

(assert (=> b!536637 m!783169))

(declare-fun m!783183 () Bool)

(assert (=> b!536637 m!783183))

(declare-fun m!783185 () Bool)

(assert (=> b!536637 m!783185))

(declare-fun m!783187 () Bool)

(assert (=> b!536637 m!783187))

(declare-fun m!783189 () Bool)

(assert (=> b!536637 m!783189))

(declare-fun m!783191 () Bool)

(assert (=> b!536637 m!783191))

(declare-fun m!783193 () Bool)

(assert (=> b!536637 m!783193))

(declare-fun m!783195 () Bool)

(assert (=> b!536637 m!783195))

(declare-fun m!783197 () Bool)

(assert (=> b!536637 m!783197))

(assert (=> b!536637 m!783191))

(declare-fun m!783199 () Bool)

(assert (=> b!536637 m!783199))

(declare-fun m!783201 () Bool)

(assert (=> b!536637 m!783201))

(declare-fun m!783203 () Bool)

(assert (=> b!536637 m!783203))

(declare-fun m!783205 () Bool)

(assert (=> b!536637 m!783205))

(declare-fun m!783207 () Bool)

(assert (=> b!536637 m!783207))

(declare-fun m!783209 () Bool)

(assert (=> start!49528 m!783209))

(declare-fun m!783211 () Bool)

(assert (=> b!536657 m!783211))

(declare-fun m!783213 () Bool)

(assert (=> b!536657 m!783213))

(declare-fun m!783215 () Bool)

(assert (=> b!536653 m!783215))

(declare-fun m!783217 () Bool)

(assert (=> b!536642 m!783217))

(declare-fun m!783219 () Bool)

(assert (=> b!536652 m!783219))

(declare-fun m!783221 () Bool)

(assert (=> b!536652 m!783221))

(declare-fun m!783223 () Bool)

(assert (=> b!536652 m!783223))

(declare-fun m!783225 () Bool)

(assert (=> b!536659 m!783225))

(declare-fun m!783227 () Bool)

(assert (=> b!536649 m!783227))

(declare-fun m!783229 () Bool)

(assert (=> b!536649 m!783229))

(check-sat (not b!536659) (not b!536644) (not b!536652) b_and!52497 (not b!536660) (not b!536656) b_and!52493 (not b!536637) (not b!536653) (not b!536650) (not b!536657) (not b!536641) (not b!536647) b_and!52495 (not b!536640) (not b_next!14719) (not b!536651) (not b!536645) b_and!52491 (not b!536642) (not b_next!14715) (not start!49528) (not b!536636) (not b_next!14713) (not b!536643) tp_is_empty!2941 (not b_next!14717) (not b!536649) (not b!536639))
(check-sat b_and!52495 (not b_next!14719) b_and!52497 b_and!52491 b_and!52493 (not b_next!14715) (not b_next!14713) (not b_next!14717))
