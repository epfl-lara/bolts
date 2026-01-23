; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49800 () Bool)

(assert start!49800)

(declare-fun b!539328 () Bool)

(declare-fun b_free!14857 () Bool)

(declare-fun b_next!14873 () Bool)

(assert (=> b!539328 (= b_free!14857 (not b_next!14873))))

(declare-fun tp!171942 () Bool)

(declare-fun b_and!52731 () Bool)

(assert (=> b!539328 (= tp!171942 b_and!52731)))

(declare-fun b_free!14859 () Bool)

(declare-fun b_next!14875 () Bool)

(assert (=> b!539328 (= b_free!14859 (not b_next!14875))))

(declare-fun tp!171940 () Bool)

(declare-fun b_and!52733 () Bool)

(assert (=> b!539328 (= tp!171940 b_and!52733)))

(declare-fun b!539331 () Bool)

(declare-fun b_free!14861 () Bool)

(declare-fun b_next!14877 () Bool)

(assert (=> b!539331 (= b_free!14861 (not b_next!14877))))

(declare-fun tp!171939 () Bool)

(declare-fun b_and!52735 () Bool)

(assert (=> b!539331 (= tp!171939 b_and!52735)))

(declare-fun b_free!14863 () Bool)

(declare-fun b_next!14879 () Bool)

(assert (=> b!539331 (= b_free!14863 (not b_next!14879))))

(declare-fun tp!171941 () Bool)

(declare-fun b_and!52737 () Bool)

(assert (=> b!539331 (= tp!171941 b_and!52737)))

(declare-fun b!539327 () Bool)

(declare-fun e!325610 () Bool)

(declare-datatypes ((C!3544 0))(
  ( (C!3545 (val!1998 Int)) )
))
(declare-datatypes ((Regex!1311 0))(
  ( (ElementMatch!1311 (c!102272 C!3544)) (Concat!2312 (regOne!3134 Regex!1311) (regTwo!3134 Regex!1311)) (EmptyExpr!1311) (Star!1311 (reg!1640 Regex!1311)) (EmptyLang!1311) (Union!1311 (regOne!3135 Regex!1311) (regTwo!3135 Regex!1311)) )
))
(declare-datatypes ((List!5271 0))(
  ( (Nil!5261) (Cons!5261 (h!10662 (_ BitVec 16)) (t!74320 List!5271)) )
))
(declare-datatypes ((List!5272 0))(
  ( (Nil!5262) (Cons!5262 (h!10663 C!3544) (t!74321 List!5272)) )
))
(declare-datatypes ((IArray!3389 0))(
  ( (IArray!3390 (innerList!1752 List!5272)) )
))
(declare-datatypes ((Conc!1694 0))(
  ( (Node!1694 (left!4387 Conc!1694) (right!4717 Conc!1694) (csize!3618 Int) (cheight!1905 Int)) (Leaf!2690 (xs!4331 IArray!3389) (csize!3619 Int)) (Empty!1694) )
))
(declare-datatypes ((BalanceConc!3396 0))(
  ( (BalanceConc!3397 (c!102273 Conc!1694)) )
))
(declare-datatypes ((TokenValue!1001 0))(
  ( (FloatLiteralValue!2002 (text!7452 List!5271)) (TokenValueExt!1000 (__x!3900 Int)) (Broken!5005 (value!32685 List!5271)) (Object!1010) (End!1001) (Def!1001) (Underscore!1001) (Match!1001) (Else!1001) (Error!1001) (Case!1001) (If!1001) (Extends!1001) (Abstract!1001) (Class!1001) (Val!1001) (DelimiterValue!2002 (del!1061 List!5271)) (KeywordValue!1007 (value!32686 List!5271)) (CommentValue!2002 (value!32687 List!5271)) (WhitespaceValue!2002 (value!32688 List!5271)) (IndentationValue!1001 (value!32689 List!5271)) (String!6748) (Int32!1001) (Broken!5006 (value!32690 List!5271)) (Boolean!1002) (Unit!9192) (OperatorValue!1004 (op!1061 List!5271)) (IdentifierValue!2002 (value!32691 List!5271)) (IdentifierValue!2003 (value!32692 List!5271)) (WhitespaceValue!2003 (value!32693 List!5271)) (True!2002) (False!2002) (Broken!5007 (value!32694 List!5271)) (Broken!5008 (value!32695 List!5271)) (True!2003) (RightBrace!1001) (RightBracket!1001) (Colon!1001) (Null!1001) (Comma!1001) (LeftBracket!1001) (False!2003) (LeftBrace!1001) (ImaginaryLiteralValue!1001 (text!7453 List!5271)) (StringLiteralValue!3003 (value!32696 List!5271)) (EOFValue!1001 (value!32697 List!5271)) (IdentValue!1001 (value!32698 List!5271)) (DelimiterValue!2003 (value!32699 List!5271)) (DedentValue!1001 (value!32700 List!5271)) (NewLineValue!1001 (value!32701 List!5271)) (IntegerValue!3003 (value!32702 (_ BitVec 32)) (text!7454 List!5271)) (IntegerValue!3004 (value!32703 Int) (text!7455 List!5271)) (Times!1001) (Or!1001) (Equal!1001) (Minus!1001) (Broken!5009 (value!32704 List!5271)) (And!1001) (Div!1001) (LessEqual!1001) (Mod!1001) (Concat!2313) (Not!1001) (Plus!1001) (SpaceValue!1001 (value!32705 List!5271)) (IntegerValue!3005 (value!32706 Int) (text!7456 List!5271)) (StringLiteralValue!3004 (text!7457 List!5271)) (FloatLiteralValue!2003 (text!7458 List!5271)) (BytesLiteralValue!1001 (value!32707 List!5271)) (CommentValue!2003 (value!32708 List!5271)) (StringLiteralValue!3005 (value!32709 List!5271)) (ErrorTokenValue!1001 (msg!1062 List!5271)) )
))
(declare-datatypes ((String!6749 0))(
  ( (String!6750 (value!32710 String)) )
))
(declare-datatypes ((TokenValueInjection!1770 0))(
  ( (TokenValueInjection!1771 (toValue!1824 Int) (toChars!1683 Int)) )
))
(declare-datatypes ((Rule!1754 0))(
  ( (Rule!1755 (regex!977 Regex!1311) (tag!1239 String!6749) (isSeparator!977 Bool) (transformation!977 TokenValueInjection!1770)) )
))
(declare-datatypes ((Token!1690 0))(
  ( (Token!1691 (value!32711 TokenValue!1001) (rule!1685 Rule!1754) (size!4230 Int) (originalCharacters!1016 List!5272)) )
))
(declare-datatypes ((tuple2!6324 0))(
  ( (tuple2!6325 (_1!3426 Token!1690) (_2!3426 List!5272)) )
))
(declare-datatypes ((Option!1327 0))(
  ( (None!1326) (Some!1326 (v!16135 tuple2!6324)) )
))
(declare-fun lt!224143 () Option!1327)

(declare-fun get!1980 (Option!1327) tuple2!6324)

(assert (=> b!539327 (= e!325610 (= (_1!3426 (get!1980 lt!224143)) (_1!3426 (v!16135 lt!224143))))))

(declare-fun b!539329 () Bool)

(declare-fun e!325606 () Bool)

(declare-fun e!325588 () Bool)

(assert (=> b!539329 (= e!325606 (not e!325588))))

(declare-fun res!228944 () Bool)

(assert (=> b!539329 (=> res!228944 e!325588)))

(declare-fun input!2705 () List!5272)

(declare-fun lt!224126 () List!5272)

(declare-fun isPrefix!619 (List!5272 List!5272) Bool)

(assert (=> b!539329 (= res!228944 (not (isPrefix!619 input!2705 lt!224126)))))

(declare-fun lt!224129 () List!5272)

(assert (=> b!539329 (isPrefix!619 lt!224129 lt!224126)))

(declare-datatypes ((Unit!9193 0))(
  ( (Unit!9194) )
))
(declare-fun lt!224128 () Unit!9193)

(declare-fun suffix!1342 () List!5272)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!470 (List!5272 List!5272) Unit!9193)

(assert (=> b!539329 (= lt!224128 (lemmaConcatTwoListThenFirstIsPrefix!470 lt!224129 suffix!1342))))

(declare-fun lt!224137 () List!5272)

(assert (=> b!539329 (isPrefix!619 input!2705 lt!224137)))

(declare-fun lt!224146 () Unit!9193)

(assert (=> b!539329 (= lt!224146 (lemmaConcatTwoListThenFirstIsPrefix!470 input!2705 suffix!1342))))

(declare-fun e!325603 () Bool)

(assert (=> b!539329 e!325603))

(declare-fun res!228940 () Bool)

(assert (=> b!539329 (=> (not res!228940) (not e!325603))))

(declare-fun lt!224154 () TokenValue!1001)

(assert (=> b!539329 (= res!228940 (= (value!32711 (_1!3426 (v!16135 lt!224143))) lt!224154))))

(declare-fun lt!224142 () List!5272)

(declare-fun apply!1252 (TokenValueInjection!1770 BalanceConc!3396) TokenValue!1001)

(declare-fun seqFromList!1175 (List!5272) BalanceConc!3396)

(assert (=> b!539329 (= lt!224154 (apply!1252 (transformation!977 (rule!1685 (_1!3426 (v!16135 lt!224143)))) (seqFromList!1175 lt!224142)))))

(declare-fun lt!224153 () Unit!9193)

(declare-fun token!491 () Token!1690)

(declare-fun lemmaInv!125 (TokenValueInjection!1770) Unit!9193)

(assert (=> b!539329 (= lt!224153 (lemmaInv!125 (transformation!977 (rule!1685 token!491))))))

(declare-fun lt!224131 () Unit!9193)

(assert (=> b!539329 (= lt!224131 (lemmaInv!125 (transformation!977 (rule!1685 (_1!3426 (v!16135 lt!224143))))))))

(declare-datatypes ((LexerInterface!863 0))(
  ( (LexerInterfaceExt!860 (__x!3901 Int)) (Lexer!861) )
))
(declare-fun thiss!22590 () LexerInterface!863)

(declare-fun ruleValid!197 (LexerInterface!863 Rule!1754) Bool)

(assert (=> b!539329 (ruleValid!197 thiss!22590 (rule!1685 token!491))))

(declare-datatypes ((List!5273 0))(
  ( (Nil!5263) (Cons!5263 (h!10664 Rule!1754) (t!74322 List!5273)) )
))
(declare-fun rules!3103 () List!5273)

(declare-fun lt!224141 () Unit!9193)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!56 (LexerInterface!863 Rule!1754 List!5273) Unit!9193)

(assert (=> b!539329 (= lt!224141 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!56 thiss!22590 (rule!1685 token!491) rules!3103))))

(assert (=> b!539329 (ruleValid!197 thiss!22590 (rule!1685 (_1!3426 (v!16135 lt!224143))))))

(declare-fun lt!224127 () Unit!9193)

(assert (=> b!539329 (= lt!224127 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!56 thiss!22590 (rule!1685 (_1!3426 (v!16135 lt!224143))) rules!3103))))

(assert (=> b!539329 (isPrefix!619 input!2705 input!2705)))

(declare-fun lt!224150 () Unit!9193)

(declare-fun lemmaIsPrefixRefl!359 (List!5272 List!5272) Unit!9193)

(assert (=> b!539329 (= lt!224150 (lemmaIsPrefixRefl!359 input!2705 input!2705))))

(declare-fun lt!224149 () List!5272)

(assert (=> b!539329 (= (_2!3426 (v!16135 lt!224143)) lt!224149)))

(declare-fun lt!224132 () Unit!9193)

(declare-fun lemmaSamePrefixThenSameSuffix!346 (List!5272 List!5272 List!5272 List!5272 List!5272) Unit!9193)

(assert (=> b!539329 (= lt!224132 (lemmaSamePrefixThenSameSuffix!346 lt!224142 (_2!3426 (v!16135 lt!224143)) lt!224142 lt!224149 input!2705))))

(declare-fun getSuffix!142 (List!5272 List!5272) List!5272)

(assert (=> b!539329 (= lt!224149 (getSuffix!142 input!2705 lt!224142))))

(declare-fun lt!224125 () List!5272)

(assert (=> b!539329 (isPrefix!619 lt!224142 lt!224125)))

(declare-fun ++!1465 (List!5272 List!5272) List!5272)

(assert (=> b!539329 (= lt!224125 (++!1465 lt!224142 (_2!3426 (v!16135 lt!224143))))))

(declare-fun lt!224144 () Unit!9193)

(assert (=> b!539329 (= lt!224144 (lemmaConcatTwoListThenFirstIsPrefix!470 lt!224142 (_2!3426 (v!16135 lt!224143))))))

(declare-fun lt!224134 () Unit!9193)

(declare-fun lemmaCharactersSize!56 (Token!1690) Unit!9193)

(assert (=> b!539329 (= lt!224134 (lemmaCharactersSize!56 token!491))))

(declare-fun lt!224136 () Unit!9193)

(assert (=> b!539329 (= lt!224136 (lemmaCharactersSize!56 (_1!3426 (v!16135 lt!224143))))))

(declare-fun lt!224139 () Unit!9193)

(declare-fun e!325594 () Unit!9193)

(assert (=> b!539329 (= lt!224139 e!325594)))

(declare-fun c!102271 () Bool)

(declare-fun lt!224133 () Int)

(declare-fun lt!224155 () Int)

(assert (=> b!539329 (= c!102271 (> lt!224133 lt!224155))))

(declare-fun size!4231 (List!5272) Int)

(assert (=> b!539329 (= lt!224155 (size!4231 lt!224129))))

(assert (=> b!539329 (= lt!224133 (size!4231 lt!224142))))

(declare-fun list!2185 (BalanceConc!3396) List!5272)

(declare-fun charsOf!606 (Token!1690) BalanceConc!3396)

(assert (=> b!539329 (= lt!224142 (list!2185 (charsOf!606 (_1!3426 (v!16135 lt!224143)))))))

(declare-fun lt!224151 () tuple2!6324)

(assert (=> b!539329 (= lt!224143 (Some!1326 lt!224151))))

(assert (=> b!539329 (= lt!224151 (tuple2!6325 (_1!3426 (v!16135 lt!224143)) (_2!3426 (v!16135 lt!224143))))))

(declare-fun lt!224140 () Unit!9193)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!62 (List!5272 List!5272 List!5272 List!5272) Unit!9193)

(assert (=> b!539329 (= lt!224140 (lemmaConcatSameAndSameSizesThenSameLists!62 lt!224129 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!539330 () Bool)

(declare-fun e!325608 () Bool)

(assert (=> b!539330 (= e!325608 e!325610)))

(declare-fun res!228946 () Bool)

(assert (=> b!539330 (=> (not res!228946) (not e!325610))))

(declare-fun isDefined!1139 (Option!1327) Bool)

(assert (=> b!539330 (= res!228946 (isDefined!1139 lt!224143))))

(declare-fun e!325602 () Bool)

(assert (=> b!539331 (= e!325602 (and tp!171939 tp!171941))))

(declare-fun b!539332 () Bool)

(declare-fun Unit!9195 () Unit!9193)

(assert (=> b!539332 (= e!325594 Unit!9195)))

(declare-fun b!539333 () Bool)

(declare-fun res!228955 () Bool)

(declare-fun e!325604 () Bool)

(assert (=> b!539333 (=> res!228955 e!325604)))

(assert (=> b!539333 (= res!228955 (not (isPrefix!619 lt!224142 input!2705)))))

(declare-fun b!539334 () Bool)

(assert (=> b!539334 (= e!325588 e!325604)))

(declare-fun res!228947 () Bool)

(assert (=> b!539334 (=> res!228947 e!325604)))

(assert (=> b!539334 (= res!228947 (>= lt!224133 lt!224155))))

(declare-fun e!325589 () Bool)

(assert (=> b!539334 e!325589))

(declare-fun res!228954 () Bool)

(assert (=> b!539334 (=> (not res!228954) (not e!325589))))

(declare-fun lt!224135 () TokenValue!1001)

(declare-fun maxPrefixOneRule!276 (LexerInterface!863 Rule!1754 List!5272) Option!1327)

(assert (=> b!539334 (= res!228954 (= (maxPrefixOneRule!276 thiss!22590 (rule!1685 token!491) lt!224137) (Some!1326 (tuple2!6325 (Token!1691 lt!224135 (rule!1685 token!491) lt!224155 lt!224129) suffix!1342))))))

(declare-fun lt!224147 () Unit!9193)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!28 (LexerInterface!863 List!5273 List!5272 List!5272 List!5272 Rule!1754) Unit!9193)

(assert (=> b!539334 (= lt!224147 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!28 thiss!22590 rules!3103 lt!224129 lt!224137 suffix!1342 (rule!1685 token!491)))))

(assert (=> b!539334 (= (maxPrefixOneRule!276 thiss!22590 (rule!1685 (_1!3426 (v!16135 lt!224143))) input!2705) (Some!1326 (tuple2!6325 (Token!1691 lt!224154 (rule!1685 (_1!3426 (v!16135 lt!224143))) lt!224133 lt!224142) (_2!3426 (v!16135 lt!224143)))))))

(declare-fun lt!224152 () Unit!9193)

(assert (=> b!539334 (= lt!224152 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!28 thiss!22590 rules!3103 lt!224142 input!2705 (_2!3426 (v!16135 lt!224143)) (rule!1685 (_1!3426 (v!16135 lt!224143)))))))

(declare-fun e!325612 () Bool)

(assert (=> b!539334 e!325612))

(declare-fun res!228935 () Bool)

(assert (=> b!539334 (=> (not res!228935) (not e!325612))))

(assert (=> b!539334 (= res!228935 (= (value!32711 token!491) lt!224135))))

(assert (=> b!539334 (= lt!224135 (apply!1252 (transformation!977 (rule!1685 token!491)) (seqFromList!1175 lt!224129)))))

(declare-fun lt!224138 () List!5272)

(assert (=> b!539334 (= suffix!1342 lt!224138)))

(declare-fun lt!224145 () Unit!9193)

(assert (=> b!539334 (= lt!224145 (lemmaSamePrefixThenSameSuffix!346 lt!224129 suffix!1342 lt!224129 lt!224138 lt!224137))))

(assert (=> b!539334 (= lt!224138 (getSuffix!142 lt!224137 lt!224129))))

(declare-fun b!539335 () Bool)

(declare-fun e!325599 () Bool)

(declare-fun tp_is_empty!2977 () Bool)

(declare-fun tp!171943 () Bool)

(assert (=> b!539335 (= e!325599 (and tp_is_empty!2977 tp!171943))))

(declare-fun b!539336 () Bool)

(declare-fun e!325601 () Bool)

(declare-fun e!325596 () Bool)

(assert (=> b!539336 (= e!325601 e!325596)))

(declare-fun res!228933 () Bool)

(assert (=> b!539336 (=> (not res!228933) (not e!325596))))

(declare-fun lt!224148 () tuple2!6324)

(assert (=> b!539336 (= res!228933 (and (= (_1!3426 lt!224148) token!491) (= (_2!3426 lt!224148) suffix!1342)))))

(declare-fun lt!224130 () Option!1327)

(assert (=> b!539336 (= lt!224148 (get!1980 lt!224130))))

(declare-fun b!539337 () Bool)

(declare-fun e!325607 () Bool)

(declare-fun tp!171937 () Bool)

(declare-fun e!325600 () Bool)

(declare-fun inv!6600 (String!6749) Bool)

(declare-fun inv!6603 (TokenValueInjection!1770) Bool)

(assert (=> b!539337 (= e!325607 (and tp!171937 (inv!6600 (tag!1239 (rule!1685 token!491))) (inv!6603 (transformation!977 (rule!1685 token!491))) e!325600))))

(declare-fun b!539338 () Bool)

(declare-fun e!325609 () Bool)

(assert (=> b!539338 (= e!325609 e!325601)))

(declare-fun res!228938 () Bool)

(assert (=> b!539338 (=> (not res!228938) (not e!325601))))

(assert (=> b!539338 (= res!228938 (isDefined!1139 lt!224130))))

(declare-fun maxPrefix!561 (LexerInterface!863 List!5273 List!5272) Option!1327)

(assert (=> b!539338 (= lt!224130 (maxPrefix!561 thiss!22590 rules!3103 lt!224137))))

(assert (=> b!539338 (= lt!224137 (++!1465 input!2705 suffix!1342))))

(declare-fun b!539339 () Bool)

(declare-fun res!228952 () Bool)

(assert (=> b!539339 (=> res!228952 e!325604)))

(assert (=> b!539339 (= res!228952 (not (= lt!224125 input!2705)))))

(declare-fun b!539340 () Bool)

(declare-fun res!228941 () Bool)

(assert (=> b!539340 (=> res!228941 e!325604)))

(assert (=> b!539340 (= res!228941 (not (isPrefix!619 lt!224129 input!2705)))))

(declare-fun b!539341 () Bool)

(declare-fun e!325605 () Bool)

(declare-fun e!325598 () Bool)

(declare-fun tp!171936 () Bool)

(assert (=> b!539341 (= e!325605 (and e!325598 tp!171936))))

(declare-fun b!539342 () Bool)

(assert (=> b!539342 (= e!325589 e!325608)))

(declare-fun res!228939 () Bool)

(assert (=> b!539342 (=> res!228939 e!325608)))

(assert (=> b!539342 (= res!228939 (>= lt!224133 lt!224155))))

(declare-fun b!539343 () Bool)

(declare-fun res!228949 () Bool)

(declare-fun e!325597 () Bool)

(assert (=> b!539343 (=> (not res!228949) (not e!325597))))

(declare-fun isEmpty!3802 (List!5273) Bool)

(assert (=> b!539343 (= res!228949 (not (isEmpty!3802 rules!3103)))))

(assert (=> b!539328 (= e!325600 (and tp!171942 tp!171940))))

(declare-fun res!228956 () Bool)

(assert (=> start!49800 (=> (not res!228956) (not e!325597))))

(get-info :version)

(assert (=> start!49800 (= res!228956 ((_ is Lexer!861) thiss!22590))))

(assert (=> start!49800 e!325597))

(assert (=> start!49800 e!325599))

(assert (=> start!49800 e!325605))

(declare-fun e!325591 () Bool)

(declare-fun inv!6604 (Token!1690) Bool)

(assert (=> start!49800 (and (inv!6604 token!491) e!325591)))

(assert (=> start!49800 true))

(declare-fun e!325590 () Bool)

(assert (=> start!49800 e!325590))

(declare-fun b!539344 () Bool)

(declare-fun res!228945 () Bool)

(assert (=> b!539344 (=> res!228945 e!325604)))

(declare-fun contains!1221 (List!5273 Rule!1754) Bool)

(assert (=> b!539344 (= res!228945 (not (contains!1221 rules!3103 (rule!1685 token!491))))))

(declare-fun b!539345 () Bool)

(declare-fun res!228936 () Bool)

(assert (=> b!539345 (=> (not res!228936) (not e!325597))))

(declare-fun isEmpty!3803 (List!5272) Bool)

(assert (=> b!539345 (= res!228936 (not (isEmpty!3803 input!2705)))))

(declare-fun b!539346 () Bool)

(declare-fun tp!171935 () Bool)

(assert (=> b!539346 (= e!325598 (and tp!171935 (inv!6600 (tag!1239 (h!10664 rules!3103))) (inv!6603 (transformation!977 (h!10664 rules!3103))) e!325602))))

(declare-fun b!539347 () Bool)

(assert (=> b!539347 (= e!325612 (and (= (size!4230 token!491) lt!224155) (= (originalCharacters!1016 token!491) lt!224129) (= (tuple2!6325 token!491 suffix!1342) (tuple2!6325 (Token!1691 lt!224135 (rule!1685 token!491) lt!224155 lt!224129) lt!224138))))))

(declare-fun b!539348 () Bool)

(declare-fun res!228937 () Bool)

(assert (=> b!539348 (=> res!228937 e!325604)))

(declare-fun matchR!470 (Regex!1311 List!5272) Bool)

(assert (=> b!539348 (= res!228937 (not (matchR!470 (regex!977 (rule!1685 token!491)) input!2705)))))

(declare-fun b!539349 () Bool)

(declare-fun res!228951 () Bool)

(assert (=> b!539349 (=> (not res!228951) (not e!325612))))

(assert (=> b!539349 (= res!228951 (= (size!4230 token!491) (size!4231 (originalCharacters!1016 token!491))))))

(declare-fun b!539350 () Bool)

(declare-fun tp!171938 () Bool)

(assert (=> b!539350 (= e!325590 (and tp_is_empty!2977 tp!171938))))

(declare-fun tp!171944 () Bool)

(declare-fun b!539351 () Bool)

(declare-fun inv!21 (TokenValue!1001) Bool)

(assert (=> b!539351 (= e!325591 (and (inv!21 (value!32711 token!491)) e!325607 tp!171944))))

(declare-fun b!539352 () Bool)

(declare-fun e!325593 () Bool)

(assert (=> b!539352 (= e!325593 e!325606)))

(declare-fun res!228953 () Bool)

(assert (=> b!539352 (=> (not res!228953) (not e!325606))))

(assert (=> b!539352 (= res!228953 (= lt!224126 lt!224137))))

(assert (=> b!539352 (= lt!224126 (++!1465 lt!224129 suffix!1342))))

(declare-fun b!539353 () Bool)

(assert (=> b!539353 (= e!325604 true)))

(assert (=> b!539353 (= lt!224149 (_2!3426 (v!16135 lt!224143)))))

(declare-fun b!539354 () Bool)

(declare-fun Unit!9196 () Unit!9193)

(assert (=> b!539354 (= e!325594 Unit!9196)))

(assert (=> b!539354 false))

(declare-fun b!539355 () Bool)

(declare-fun res!228943 () Bool)

(assert (=> b!539355 (=> (not res!228943) (not e!325597))))

(declare-fun rulesInvariant!826 (LexerInterface!863 List!5273) Bool)

(assert (=> b!539355 (= res!228943 (rulesInvariant!826 thiss!22590 rules!3103))))

(declare-fun b!539356 () Bool)

(declare-fun res!228932 () Bool)

(assert (=> b!539356 (=> (not res!228932) (not e!325603))))

(assert (=> b!539356 (= res!228932 (= (size!4230 (_1!3426 (v!16135 lt!224143))) (size!4231 (originalCharacters!1016 (_1!3426 (v!16135 lt!224143))))))))

(declare-fun b!539357 () Bool)

(assert (=> b!539357 (= e!325596 e!325593)))

(declare-fun res!228950 () Bool)

(assert (=> b!539357 (=> (not res!228950) (not e!325593))))

(assert (=> b!539357 (= res!228950 ((_ is Some!1326) lt!224143))))

(assert (=> b!539357 (= lt!224143 (maxPrefix!561 thiss!22590 rules!3103 input!2705))))

(declare-fun b!539358 () Bool)

(declare-fun res!228934 () Bool)

(assert (=> b!539358 (=> res!228934 e!325604)))

(assert (=> b!539358 (= res!228934 (not (= (++!1465 lt!224142 lt!224149) input!2705)))))

(declare-fun b!539359 () Bool)

(declare-fun res!228942 () Bool)

(assert (=> b!539359 (=> res!228942 e!325604)))

(assert (=> b!539359 (= res!228942 (not (= (getSuffix!142 input!2705 input!2705) Nil!5262)))))

(declare-fun b!539360 () Bool)

(assert (=> b!539360 (= e!325603 (and (= (size!4230 (_1!3426 (v!16135 lt!224143))) lt!224133) (= (originalCharacters!1016 (_1!3426 (v!16135 lt!224143))) lt!224142) (= lt!224151 (tuple2!6325 (Token!1691 lt!224154 (rule!1685 (_1!3426 (v!16135 lt!224143))) lt!224133 lt!224142) lt!224149))))))

(declare-fun b!539361 () Bool)

(assert (=> b!539361 (= e!325597 e!325609)))

(declare-fun res!228948 () Bool)

(assert (=> b!539361 (=> (not res!228948) (not e!325609))))

(assert (=> b!539361 (= res!228948 (= lt!224129 input!2705))))

(assert (=> b!539361 (= lt!224129 (list!2185 (charsOf!606 token!491)))))

(assert (= (and start!49800 res!228956) b!539343))

(assert (= (and b!539343 res!228949) b!539355))

(assert (= (and b!539355 res!228943) b!539345))

(assert (= (and b!539345 res!228936) b!539361))

(assert (= (and b!539361 res!228948) b!539338))

(assert (= (and b!539338 res!228938) b!539336))

(assert (= (and b!539336 res!228933) b!539357))

(assert (= (and b!539357 res!228950) b!539352))

(assert (= (and b!539352 res!228953) b!539329))

(assert (= (and b!539329 c!102271) b!539354))

(assert (= (and b!539329 (not c!102271)) b!539332))

(assert (= (and b!539329 res!228940) b!539356))

(assert (= (and b!539356 res!228932) b!539360))

(assert (= (and b!539329 (not res!228944)) b!539334))

(assert (= (and b!539334 res!228935) b!539349))

(assert (= (and b!539349 res!228951) b!539347))

(assert (= (and b!539334 res!228954) b!539342))

(assert (= (and b!539342 (not res!228939)) b!539330))

(assert (= (and b!539330 res!228946) b!539327))

(assert (= (and b!539334 (not res!228947)) b!539344))

(assert (= (and b!539344 (not res!228945)) b!539348))

(assert (= (and b!539348 (not res!228937)) b!539340))

(assert (= (and b!539340 (not res!228941)) b!539359))

(assert (= (and b!539359 (not res!228942)) b!539339))

(assert (= (and b!539339 (not res!228952)) b!539333))

(assert (= (and b!539333 (not res!228955)) b!539358))

(assert (= (and b!539358 (not res!228934)) b!539353))

(assert (= (and start!49800 ((_ is Cons!5262) suffix!1342)) b!539335))

(assert (= b!539346 b!539331))

(assert (= b!539341 b!539346))

(assert (= (and start!49800 ((_ is Cons!5263) rules!3103)) b!539341))

(assert (= b!539337 b!539328))

(assert (= b!539351 b!539337))

(assert (= start!49800 b!539351))

(assert (= (and start!49800 ((_ is Cons!5262) input!2705)) b!539350))

(declare-fun m!786651 () Bool)

(assert (=> b!539352 m!786651))

(declare-fun m!786653 () Bool)

(assert (=> b!539351 m!786653))

(declare-fun m!786655 () Bool)

(assert (=> start!49800 m!786655))

(declare-fun m!786657 () Bool)

(assert (=> b!539330 m!786657))

(declare-fun m!786659 () Bool)

(assert (=> b!539346 m!786659))

(declare-fun m!786661 () Bool)

(assert (=> b!539346 m!786661))

(declare-fun m!786663 () Bool)

(assert (=> b!539343 m!786663))

(declare-fun m!786665 () Bool)

(assert (=> b!539348 m!786665))

(declare-fun m!786667 () Bool)

(assert (=> b!539340 m!786667))

(declare-fun m!786669 () Bool)

(assert (=> b!539359 m!786669))

(declare-fun m!786671 () Bool)

(assert (=> b!539334 m!786671))

(declare-fun m!786673 () Bool)

(assert (=> b!539334 m!786673))

(declare-fun m!786675 () Bool)

(assert (=> b!539334 m!786675))

(declare-fun m!786677 () Bool)

(assert (=> b!539334 m!786677))

(declare-fun m!786679 () Bool)

(assert (=> b!539334 m!786679))

(declare-fun m!786681 () Bool)

(assert (=> b!539334 m!786681))

(declare-fun m!786683 () Bool)

(assert (=> b!539334 m!786683))

(assert (=> b!539334 m!786681))

(declare-fun m!786685 () Bool)

(assert (=> b!539334 m!786685))

(declare-fun m!786687 () Bool)

(assert (=> b!539356 m!786687))

(declare-fun m!786689 () Bool)

(assert (=> b!539327 m!786689))

(declare-fun m!786691 () Bool)

(assert (=> b!539336 m!786691))

(declare-fun m!786693 () Bool)

(assert (=> b!539337 m!786693))

(declare-fun m!786695 () Bool)

(assert (=> b!539337 m!786695))

(declare-fun m!786697 () Bool)

(assert (=> b!539333 m!786697))

(declare-fun m!786699 () Bool)

(assert (=> b!539357 m!786699))

(declare-fun m!786701 () Bool)

(assert (=> b!539355 m!786701))

(declare-fun m!786703 () Bool)

(assert (=> b!539361 m!786703))

(assert (=> b!539361 m!786703))

(declare-fun m!786705 () Bool)

(assert (=> b!539361 m!786705))

(declare-fun m!786707 () Bool)

(assert (=> b!539329 m!786707))

(declare-fun m!786709 () Bool)

(assert (=> b!539329 m!786709))

(declare-fun m!786711 () Bool)

(assert (=> b!539329 m!786711))

(declare-fun m!786713 () Bool)

(assert (=> b!539329 m!786713))

(declare-fun m!786715 () Bool)

(assert (=> b!539329 m!786715))

(declare-fun m!786717 () Bool)

(assert (=> b!539329 m!786717))

(declare-fun m!786719 () Bool)

(assert (=> b!539329 m!786719))

(declare-fun m!786721 () Bool)

(assert (=> b!539329 m!786721))

(declare-fun m!786723 () Bool)

(assert (=> b!539329 m!786723))

(declare-fun m!786725 () Bool)

(assert (=> b!539329 m!786725))

(declare-fun m!786727 () Bool)

(assert (=> b!539329 m!786727))

(declare-fun m!786729 () Bool)

(assert (=> b!539329 m!786729))

(declare-fun m!786731 () Bool)

(assert (=> b!539329 m!786731))

(declare-fun m!786733 () Bool)

(assert (=> b!539329 m!786733))

(declare-fun m!786735 () Bool)

(assert (=> b!539329 m!786735))

(declare-fun m!786737 () Bool)

(assert (=> b!539329 m!786737))

(declare-fun m!786739 () Bool)

(assert (=> b!539329 m!786739))

(declare-fun m!786741 () Bool)

(assert (=> b!539329 m!786741))

(assert (=> b!539329 m!786709))

(declare-fun m!786743 () Bool)

(assert (=> b!539329 m!786743))

(declare-fun m!786745 () Bool)

(assert (=> b!539329 m!786745))

(declare-fun m!786747 () Bool)

(assert (=> b!539329 m!786747))

(declare-fun m!786749 () Bool)

(assert (=> b!539329 m!786749))

(declare-fun m!786751 () Bool)

(assert (=> b!539329 m!786751))

(declare-fun m!786753 () Bool)

(assert (=> b!539329 m!786753))

(assert (=> b!539329 m!786707))

(declare-fun m!786755 () Bool)

(assert (=> b!539329 m!786755))

(declare-fun m!786757 () Bool)

(assert (=> b!539329 m!786757))

(declare-fun m!786759 () Bool)

(assert (=> b!539329 m!786759))

(declare-fun m!786761 () Bool)

(assert (=> b!539345 m!786761))

(declare-fun m!786763 () Bool)

(assert (=> b!539358 m!786763))

(declare-fun m!786765 () Bool)

(assert (=> b!539338 m!786765))

(declare-fun m!786767 () Bool)

(assert (=> b!539338 m!786767))

(declare-fun m!786769 () Bool)

(assert (=> b!539338 m!786769))

(declare-fun m!786771 () Bool)

(assert (=> b!539349 m!786771))

(declare-fun m!786773 () Bool)

(assert (=> b!539344 m!786773))

(check-sat (not b!539346) (not b!539356) (not b!539329) (not b!539338) b_and!52737 (not b!539333) (not b!539340) (not b!539352) (not b!539330) b_and!52733 (not b!539337) (not b!539361) (not b!539343) (not b_next!14873) (not b!539345) (not b!539348) b_and!52735 (not b!539359) (not b!539327) tp_is_empty!2977 (not b_next!14875) (not b!539357) (not b!539351) (not b_next!14877) (not b!539358) (not b_next!14879) (not start!49800) b_and!52731 (not b!539334) (not b!539355) (not b!539341) (not b!539350) (not b!539344) (not b!539335) (not b!539336) (not b!539349))
(check-sat b_and!52737 b_and!52735 (not b_next!14875) b_and!52731 b_and!52733 (not b_next!14873) (not b_next!14877) (not b_next!14879))
