; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57284 () Bool)

(assert start!57284)

(declare-fun b!602830 () Bool)

(declare-fun b_free!17173 () Bool)

(declare-fun b_next!17189 () Bool)

(assert (=> b!602830 (= b_free!17173 (not b_next!17189))))

(declare-fun tp!187628 () Bool)

(declare-fun b_and!59539 () Bool)

(assert (=> b!602830 (= tp!187628 b_and!59539)))

(declare-fun b_free!17175 () Bool)

(declare-fun b_next!17191 () Bool)

(assert (=> b!602830 (= b_free!17175 (not b_next!17191))))

(declare-fun tp!187629 () Bool)

(declare-fun b_and!59541 () Bool)

(assert (=> b!602830 (= tp!187629 b_and!59541)))

(declare-fun b!602815 () Bool)

(declare-fun b_free!17177 () Bool)

(declare-fun b_next!17193 () Bool)

(assert (=> b!602815 (= b_free!17177 (not b_next!17193))))

(declare-fun tp!187631 () Bool)

(declare-fun b_and!59543 () Bool)

(assert (=> b!602815 (= tp!187631 b_and!59543)))

(declare-fun b_free!17179 () Bool)

(declare-fun b_next!17195 () Bool)

(assert (=> b!602815 (= b_free!17179 (not b_next!17195))))

(declare-fun tp!187633 () Bool)

(declare-fun b_and!59545 () Bool)

(assert (=> b!602815 (= tp!187633 b_and!59545)))

(declare-datatypes ((C!3996 0))(
  ( (C!3997 (val!2224 Int)) )
))
(declare-datatypes ((List!6044 0))(
  ( (Nil!6034) (Cons!6034 (h!11435 C!3996) (t!80045 List!6044)) )
))
(declare-fun suffix!1342 () List!6044)

(declare-fun e!365321 () Bool)

(declare-datatypes ((Regex!1537 0))(
  ( (ElementMatch!1537 (c!111807 C!3996)) (Concat!2764 (regOne!3586 Regex!1537) (regTwo!3586 Regex!1537)) (EmptyExpr!1537) (Star!1537 (reg!1866 Regex!1537)) (EmptyLang!1537) (Union!1537 (regOne!3587 Regex!1537) (regTwo!3587 Regex!1537)) )
))
(declare-datatypes ((List!6045 0))(
  ( (Nil!6035) (Cons!6035 (h!11436 (_ BitVec 16)) (t!80046 List!6045)) )
))
(declare-datatypes ((TokenValue!1227 0))(
  ( (FloatLiteralValue!2454 (text!9034 List!6045)) (TokenValueExt!1226 (__x!4352 Int)) (Broken!6135 (value!39126 List!6045)) (Object!1236) (End!1227) (Def!1227) (Underscore!1227) (Match!1227) (Else!1227) (Error!1227) (Case!1227) (If!1227) (Extends!1227) (Abstract!1227) (Class!1227) (Val!1227) (DelimiterValue!2454 (del!1287 List!6045)) (KeywordValue!1233 (value!39127 List!6045)) (CommentValue!2454 (value!39128 List!6045)) (WhitespaceValue!2454 (value!39129 List!6045)) (IndentationValue!1227 (value!39130 List!6045)) (String!7878) (Int32!1227) (Broken!6136 (value!39131 List!6045)) (Boolean!1228) (Unit!10987) (OperatorValue!1230 (op!1287 List!6045)) (IdentifierValue!2454 (value!39132 List!6045)) (IdentifierValue!2455 (value!39133 List!6045)) (WhitespaceValue!2455 (value!39134 List!6045)) (True!2454) (False!2454) (Broken!6137 (value!39135 List!6045)) (Broken!6138 (value!39136 List!6045)) (True!2455) (RightBrace!1227) (RightBracket!1227) (Colon!1227) (Null!1227) (Comma!1227) (LeftBracket!1227) (False!2455) (LeftBrace!1227) (ImaginaryLiteralValue!1227 (text!9035 List!6045)) (StringLiteralValue!3681 (value!39137 List!6045)) (EOFValue!1227 (value!39138 List!6045)) (IdentValue!1227 (value!39139 List!6045)) (DelimiterValue!2455 (value!39140 List!6045)) (DedentValue!1227 (value!39141 List!6045)) (NewLineValue!1227 (value!39142 List!6045)) (IntegerValue!3681 (value!39143 (_ BitVec 32)) (text!9036 List!6045)) (IntegerValue!3682 (value!39144 Int) (text!9037 List!6045)) (Times!1227) (Or!1227) (Equal!1227) (Minus!1227) (Broken!6139 (value!39145 List!6045)) (And!1227) (Div!1227) (LessEqual!1227) (Mod!1227) (Concat!2765) (Not!1227) (Plus!1227) (SpaceValue!1227 (value!39146 List!6045)) (IntegerValue!3683 (value!39147 Int) (text!9038 List!6045)) (StringLiteralValue!3682 (text!9039 List!6045)) (FloatLiteralValue!2455 (text!9040 List!6045)) (BytesLiteralValue!1227 (value!39148 List!6045)) (CommentValue!2455 (value!39149 List!6045)) (StringLiteralValue!3683 (value!39150 List!6045)) (ErrorTokenValue!1227 (msg!1288 List!6045)) )
))
(declare-datatypes ((String!7879 0))(
  ( (String!7880 (value!39151 String)) )
))
(declare-datatypes ((IArray!3841 0))(
  ( (IArray!3842 (innerList!1978 List!6044)) )
))
(declare-datatypes ((Conc!1920 0))(
  ( (Node!1920 (left!4842 Conc!1920) (right!5172 Conc!1920) (csize!4070 Int) (cheight!2131 Int)) (Leaf!3029 (xs!4557 IArray!3841) (csize!4071 Int)) (Empty!1920) )
))
(declare-datatypes ((BalanceConc!3848 0))(
  ( (BalanceConc!3849 (c!111808 Conc!1920)) )
))
(declare-datatypes ((TokenValueInjection!2222 0))(
  ( (TokenValueInjection!2223 (toValue!2102 Int) (toChars!1961 Int)) )
))
(declare-datatypes ((Rule!2206 0))(
  ( (Rule!2207 (regex!1203 Regex!1537) (tag!1465 String!7879) (isSeparator!1203 Bool) (transformation!1203 TokenValueInjection!2222)) )
))
(declare-datatypes ((Token!2142 0))(
  ( (Token!2143 (value!39152 TokenValue!1227) (rule!1979 Rule!2206) (size!4746 Int) (originalCharacters!1242 List!6044)) )
))
(declare-fun token!491 () Token!2142)

(declare-datatypes ((tuple2!6912 0))(
  ( (tuple2!6913 (_1!3720 Token!2142) (_2!3720 List!6044)) )
))
(declare-datatypes ((Option!1554 0))(
  ( (None!1553) (Some!1553 (v!16450 tuple2!6912)) )
))
(declare-fun lt!257072 () Option!1554)

(declare-fun lt!257075 () Int)

(declare-fun lt!257057 () TokenValue!1227)

(declare-fun b!602811 () Bool)

(declare-fun lt!257067 () List!6044)

(assert (=> b!602811 (= e!365321 (= lt!257072 (Some!1553 (tuple2!6913 (Token!2143 lt!257057 (rule!1979 token!491) lt!257075 lt!257067) suffix!1342))))))

(declare-datatypes ((Unit!10988 0))(
  ( (Unit!10989) )
))
(declare-fun lt!257058 () Unit!10988)

(declare-fun lt!257076 () BalanceConc!3848)

(declare-fun lemmaSemiInverse!236 (TokenValueInjection!2222 BalanceConc!3848) Unit!10988)

(assert (=> b!602811 (= lt!257058 (lemmaSemiInverse!236 (transformation!1203 (rule!1979 token!491)) lt!257076))))

(declare-fun b!602812 () Bool)

(declare-fun e!365309 () Bool)

(declare-fun e!365316 () Bool)

(assert (=> b!602812 (= e!365309 e!365316)))

(declare-fun res!260930 () Bool)

(assert (=> b!602812 (=> (not res!260930) (not e!365316))))

(declare-fun lt!257061 () Option!1554)

(get-info :version)

(assert (=> b!602812 (= res!260930 ((_ is Some!1553) lt!257061))))

(declare-datatypes ((List!6046 0))(
  ( (Nil!6036) (Cons!6036 (h!11437 Rule!2206) (t!80047 List!6046)) )
))
(declare-fun rules!3103 () List!6046)

(declare-datatypes ((LexerInterface!1089 0))(
  ( (LexerInterfaceExt!1086 (__x!4353 Int)) (Lexer!1087) )
))
(declare-fun thiss!22590 () LexerInterface!1089)

(declare-fun input!2705 () List!6044)

(declare-fun maxPrefix!787 (LexerInterface!1089 List!6046 List!6044) Option!1554)

(assert (=> b!602812 (= lt!257061 (maxPrefix!787 thiss!22590 rules!3103 input!2705))))

(declare-fun b!602813 () Bool)

(declare-fun res!260922 () Bool)

(assert (=> b!602813 (=> res!260922 e!365321)))

(declare-fun isEmpty!4355 (List!6044) Bool)

(assert (=> b!602813 (= res!260922 (isEmpty!4355 lt!257067))))

(declare-fun b!602814 () Bool)

(declare-fun lt!257060 () List!6044)

(declare-fun e!365308 () Bool)

(assert (=> b!602814 (= e!365308 (and (= (size!4746 token!491) lt!257075) (= (originalCharacters!1242 token!491) lt!257067) (= (tuple2!6913 token!491 suffix!1342) (tuple2!6913 (Token!2143 lt!257057 (rule!1979 token!491) lt!257075 lt!257067) lt!257060))))))

(declare-fun e!365322 () Bool)

(assert (=> b!602815 (= e!365322 (and tp!187631 tp!187633))))

(declare-fun b!602816 () Bool)

(declare-fun res!260927 () Bool)

(declare-fun e!365304 () Bool)

(assert (=> b!602816 (=> (not res!260927) (not e!365304))))

(declare-fun rulesInvariant!1052 (LexerInterface!1089 List!6046) Bool)

(assert (=> b!602816 (= res!260927 (rulesInvariant!1052 thiss!22590 rules!3103))))

(declare-fun b!602817 () Bool)

(declare-fun e!365323 () Unit!10988)

(declare-fun Unit!10990 () Unit!10988)

(assert (=> b!602817 (= e!365323 Unit!10990)))

(declare-fun e!365303 () Bool)

(declare-fun lt!257065 () Int)

(declare-fun lt!257068 () List!6044)

(declare-fun b!602818 () Bool)

(declare-fun lt!257064 () List!6044)

(declare-fun lt!257056 () TokenValue!1227)

(assert (=> b!602818 (= e!365303 (and (= (size!4746 (_1!3720 (v!16450 lt!257061))) lt!257065) (= (originalCharacters!1242 (_1!3720 (v!16450 lt!257061))) lt!257064) (= (v!16450 lt!257061) (tuple2!6913 (Token!2143 lt!257056 (rule!1979 (_1!3720 (v!16450 lt!257061))) lt!257065 lt!257064) lt!257068))))))

(declare-fun b!602819 () Bool)

(declare-fun e!365315 () Bool)

(declare-fun tp_is_empty!3429 () Bool)

(declare-fun tp!187627 () Bool)

(assert (=> b!602819 (= e!365315 (and tp_is_empty!3429 tp!187627))))

(declare-fun res!260921 () Bool)

(assert (=> start!57284 (=> (not res!260921) (not e!365304))))

(assert (=> start!57284 (= res!260921 ((_ is Lexer!1087) thiss!22590))))

(assert (=> start!57284 e!365304))

(declare-fun e!365320 () Bool)

(assert (=> start!57284 e!365320))

(declare-fun e!365319 () Bool)

(assert (=> start!57284 e!365319))

(declare-fun e!365312 () Bool)

(declare-fun inv!7661 (Token!2142) Bool)

(assert (=> start!57284 (and (inv!7661 token!491) e!365312)))

(assert (=> start!57284 true))

(assert (=> start!57284 e!365315))

(declare-fun b!602820 () Bool)

(declare-fun e!365302 () Bool)

(assert (=> b!602820 (= e!365302 e!365321)))

(declare-fun res!260925 () Bool)

(assert (=> b!602820 (=> res!260925 e!365321)))

(declare-fun contains!1415 (List!6046 Rule!2206) Bool)

(assert (=> b!602820 (= res!260925 (not (contains!1415 rules!3103 (rule!1979 token!491))))))

(declare-fun maxPrefixOneRule!450 (LexerInterface!1089 Rule!2206 List!6044) Option!1554)

(assert (=> b!602820 (= (maxPrefixOneRule!450 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) input!2705) (Some!1553 (tuple2!6913 (Token!2143 lt!257056 (rule!1979 (_1!3720 (v!16450 lt!257061))) lt!257065 lt!257064) (_2!3720 (v!16450 lt!257061)))))))

(declare-fun lt!257054 () Unit!10988)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!156 (LexerInterface!1089 List!6046 List!6044 List!6044 List!6044 Rule!2206) Unit!10988)

(assert (=> b!602820 (= lt!257054 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!156 thiss!22590 rules!3103 lt!257064 input!2705 (_2!3720 (v!16450 lt!257061)) (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> b!602820 e!365308))

(declare-fun res!260926 () Bool)

(assert (=> b!602820 (=> (not res!260926) (not e!365308))))

(assert (=> b!602820 (= res!260926 (= (value!39152 token!491) lt!257057))))

(declare-fun apply!1456 (TokenValueInjection!2222 BalanceConc!3848) TokenValue!1227)

(assert (=> b!602820 (= lt!257057 (apply!1456 (transformation!1203 (rule!1979 token!491)) lt!257076))))

(declare-fun seqFromList!1379 (List!6044) BalanceConc!3848)

(assert (=> b!602820 (= lt!257076 (seqFromList!1379 lt!257067))))

(assert (=> b!602820 (= suffix!1342 lt!257060)))

(declare-fun lt!257052 () List!6044)

(declare-fun lt!257047 () Unit!10988)

(declare-fun lemmaSamePrefixThenSameSuffix!544 (List!6044 List!6044 List!6044 List!6044 List!6044) Unit!10988)

(assert (=> b!602820 (= lt!257047 (lemmaSamePrefixThenSameSuffix!544 lt!257067 suffix!1342 lt!257067 lt!257060 lt!257052))))

(declare-fun getSuffix!348 (List!6044 List!6044) List!6044)

(assert (=> b!602820 (= lt!257060 (getSuffix!348 lt!257052 lt!257067))))

(declare-fun tp!187630 () Bool)

(declare-fun b!602821 () Bool)

(declare-fun e!365318 () Bool)

(declare-fun e!365313 () Bool)

(declare-fun inv!7658 (String!7879) Bool)

(declare-fun inv!7662 (TokenValueInjection!2222) Bool)

(assert (=> b!602821 (= e!365313 (and tp!187630 (inv!7658 (tag!1465 (rule!1979 token!491))) (inv!7662 (transformation!1203 (rule!1979 token!491))) e!365318))))

(declare-fun b!602822 () Bool)

(declare-fun res!260934 () Bool)

(assert (=> b!602822 (=> (not res!260934) (not e!365308))))

(declare-fun size!4747 (List!6044) Int)

(assert (=> b!602822 (= res!260934 (= (size!4746 token!491) (size!4747 (originalCharacters!1242 token!491))))))

(declare-fun b!602823 () Bool)

(declare-fun res!260924 () Bool)

(assert (=> b!602823 (=> (not res!260924) (not e!365304))))

(declare-fun isEmpty!4356 (List!6046) Bool)

(assert (=> b!602823 (= res!260924 (not (isEmpty!4356 rules!3103)))))

(declare-fun b!602824 () Bool)

(declare-fun e!365317 () Bool)

(declare-fun tp!187632 () Bool)

(assert (=> b!602824 (= e!365317 (and tp!187632 (inv!7658 (tag!1465 (h!11437 rules!3103))) (inv!7662 (transformation!1203 (h!11437 rules!3103))) e!365322))))

(declare-fun b!602825 () Bool)

(declare-fun tp!187625 () Bool)

(assert (=> b!602825 (= e!365319 (and e!365317 tp!187625))))

(declare-fun b!602826 () Bool)

(declare-fun res!260928 () Bool)

(assert (=> b!602826 (=> (not res!260928) (not e!365303))))

(assert (=> b!602826 (= res!260928 (= (size!4746 (_1!3720 (v!16450 lt!257061))) (size!4747 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!602827 () Bool)

(declare-fun e!365305 () Bool)

(declare-fun e!365314 () Bool)

(assert (=> b!602827 (= e!365305 e!365314)))

(declare-fun res!260931 () Bool)

(assert (=> b!602827 (=> (not res!260931) (not e!365314))))

(declare-fun isDefined!1365 (Option!1554) Bool)

(assert (=> b!602827 (= res!260931 (isDefined!1365 lt!257072))))

(assert (=> b!602827 (= lt!257072 (maxPrefix!787 thiss!22590 rules!3103 lt!257052))))

(declare-fun ++!1691 (List!6044 List!6044) List!6044)

(assert (=> b!602827 (= lt!257052 (++!1691 input!2705 suffix!1342))))

(declare-fun b!602828 () Bool)

(declare-fun tp!187626 () Bool)

(assert (=> b!602828 (= e!365320 (and tp_is_empty!3429 tp!187626))))

(declare-fun b!602829 () Bool)

(declare-fun e!365311 () Bool)

(assert (=> b!602829 (= e!365316 e!365311)))

(declare-fun res!260932 () Bool)

(assert (=> b!602829 (=> (not res!260932) (not e!365311))))

(declare-fun lt!257055 () List!6044)

(assert (=> b!602829 (= res!260932 (= lt!257055 lt!257052))))

(assert (=> b!602829 (= lt!257055 (++!1691 lt!257067 suffix!1342))))

(assert (=> b!602830 (= e!365318 (and tp!187628 tp!187629))))

(declare-fun b!602831 () Bool)

(declare-fun res!260929 () Bool)

(assert (=> b!602831 (=> res!260929 e!365321)))

(assert (=> b!602831 (= res!260929 (not (= lt!257052 lt!257055)))))

(declare-fun b!602832 () Bool)

(declare-fun Unit!10991 () Unit!10988)

(assert (=> b!602832 (= e!365323 Unit!10991)))

(assert (=> b!602832 false))

(declare-fun tp!187634 () Bool)

(declare-fun b!602833 () Bool)

(declare-fun inv!21 (TokenValue!1227) Bool)

(assert (=> b!602833 (= e!365312 (and (inv!21 (value!39152 token!491)) e!365313 tp!187634))))

(declare-fun b!602834 () Bool)

(assert (=> b!602834 (= e!365304 e!365305)))

(declare-fun res!260933 () Bool)

(assert (=> b!602834 (=> (not res!260933) (not e!365305))))

(assert (=> b!602834 (= res!260933 (= lt!257067 input!2705))))

(declare-fun list!2532 (BalanceConc!3848) List!6044)

(declare-fun charsOf!832 (Token!2142) BalanceConc!3848)

(assert (=> b!602834 (= lt!257067 (list!2532 (charsOf!832 token!491)))))

(declare-fun b!602835 () Bool)

(declare-fun res!260919 () Bool)

(assert (=> b!602835 (=> (not res!260919) (not e!365304))))

(assert (=> b!602835 (= res!260919 (not (isEmpty!4355 input!2705)))))

(declare-fun b!602836 () Bool)

(assert (=> b!602836 (= e!365314 e!365309)))

(declare-fun res!260920 () Bool)

(assert (=> b!602836 (=> (not res!260920) (not e!365309))))

(declare-fun lt!257063 () tuple2!6912)

(assert (=> b!602836 (= res!260920 (and (= (_1!3720 lt!257063) token!491) (= (_2!3720 lt!257063) suffix!1342)))))

(declare-fun get!2319 (Option!1554) tuple2!6912)

(assert (=> b!602836 (= lt!257063 (get!2319 lt!257072))))

(declare-fun b!602837 () Bool)

(assert (=> b!602837 (= e!365311 (not e!365302))))

(declare-fun res!260918 () Bool)

(assert (=> b!602837 (=> res!260918 e!365302)))

(declare-fun isPrefix!831 (List!6044 List!6044) Bool)

(assert (=> b!602837 (= res!260918 (not (isPrefix!831 input!2705 lt!257055)))))

(assert (=> b!602837 (isPrefix!831 lt!257067 lt!257055)))

(declare-fun lt!257048 () Unit!10988)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!676 (List!6044 List!6044) Unit!10988)

(assert (=> b!602837 (= lt!257048 (lemmaConcatTwoListThenFirstIsPrefix!676 lt!257067 suffix!1342))))

(assert (=> b!602837 (isPrefix!831 input!2705 lt!257052)))

(declare-fun lt!257071 () Unit!10988)

(assert (=> b!602837 (= lt!257071 (lemmaConcatTwoListThenFirstIsPrefix!676 input!2705 suffix!1342))))

(assert (=> b!602837 e!365303))

(declare-fun res!260923 () Bool)

(assert (=> b!602837 (=> (not res!260923) (not e!365303))))

(assert (=> b!602837 (= res!260923 (= (value!39152 (_1!3720 (v!16450 lt!257061))) lt!257056))))

(assert (=> b!602837 (= lt!257056 (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 lt!257064)))))

(declare-fun lt!257053 () Unit!10988)

(declare-fun lemmaInv!311 (TokenValueInjection!2222) Unit!10988)

(assert (=> b!602837 (= lt!257053 (lemmaInv!311 (transformation!1203 (rule!1979 token!491))))))

(declare-fun lt!257049 () Unit!10988)

(assert (=> b!602837 (= lt!257049 (lemmaInv!311 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun ruleValid!401 (LexerInterface!1089 Rule!2206) Bool)

(assert (=> b!602837 (ruleValid!401 thiss!22590 (rule!1979 token!491))))

(declare-fun lt!257059 () Unit!10988)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!248 (LexerInterface!1089 Rule!2206 List!6046) Unit!10988)

(assert (=> b!602837 (= lt!257059 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!248 thiss!22590 (rule!1979 token!491) rules!3103))))

(assert (=> b!602837 (ruleValid!401 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))))))

(declare-fun lt!257069 () Unit!10988)

(assert (=> b!602837 (= lt!257069 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!248 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) rules!3103))))

(assert (=> b!602837 (isPrefix!831 input!2705 input!2705)))

(declare-fun lt!257062 () Unit!10988)

(declare-fun lemmaIsPrefixRefl!567 (List!6044 List!6044) Unit!10988)

(assert (=> b!602837 (= lt!257062 (lemmaIsPrefixRefl!567 input!2705 input!2705))))

(assert (=> b!602837 (= (_2!3720 (v!16450 lt!257061)) lt!257068)))

(declare-fun lt!257070 () Unit!10988)

(assert (=> b!602837 (= lt!257070 (lemmaSamePrefixThenSameSuffix!544 lt!257064 (_2!3720 (v!16450 lt!257061)) lt!257064 lt!257068 input!2705))))

(assert (=> b!602837 (= lt!257068 (getSuffix!348 input!2705 lt!257064))))

(assert (=> b!602837 (isPrefix!831 lt!257064 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))))

(declare-fun lt!257066 () Unit!10988)

(assert (=> b!602837 (= lt!257066 (lemmaConcatTwoListThenFirstIsPrefix!676 lt!257064 (_2!3720 (v!16450 lt!257061))))))

(declare-fun lt!257073 () Unit!10988)

(declare-fun lemmaCharactersSize!262 (Token!2142) Unit!10988)

(assert (=> b!602837 (= lt!257073 (lemmaCharactersSize!262 token!491))))

(declare-fun lt!257074 () Unit!10988)

(assert (=> b!602837 (= lt!257074 (lemmaCharactersSize!262 (_1!3720 (v!16450 lt!257061))))))

(declare-fun lt!257051 () Unit!10988)

(assert (=> b!602837 (= lt!257051 e!365323)))

(declare-fun c!111806 () Bool)

(assert (=> b!602837 (= c!111806 (> lt!257065 lt!257075))))

(assert (=> b!602837 (= lt!257075 (size!4747 lt!257067))))

(assert (=> b!602837 (= lt!257065 (size!4747 lt!257064))))

(assert (=> b!602837 (= lt!257064 (list!2532 (charsOf!832 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> b!602837 (= lt!257061 (Some!1553 (v!16450 lt!257061)))))

(declare-fun lt!257050 () Unit!10988)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!276 (List!6044 List!6044 List!6044 List!6044) Unit!10988)

(assert (=> b!602837 (= lt!257050 (lemmaConcatSameAndSameSizesThenSameLists!276 lt!257067 suffix!1342 input!2705 suffix!1342))))

(assert (= (and start!57284 res!260921) b!602823))

(assert (= (and b!602823 res!260924) b!602816))

(assert (= (and b!602816 res!260927) b!602835))

(assert (= (and b!602835 res!260919) b!602834))

(assert (= (and b!602834 res!260933) b!602827))

(assert (= (and b!602827 res!260931) b!602836))

(assert (= (and b!602836 res!260920) b!602812))

(assert (= (and b!602812 res!260930) b!602829))

(assert (= (and b!602829 res!260932) b!602837))

(assert (= (and b!602837 c!111806) b!602832))

(assert (= (and b!602837 (not c!111806)) b!602817))

(assert (= (and b!602837 res!260923) b!602826))

(assert (= (and b!602826 res!260928) b!602818))

(assert (= (and b!602837 (not res!260918)) b!602820))

(assert (= (and b!602820 res!260926) b!602822))

(assert (= (and b!602822 res!260934) b!602814))

(assert (= (and b!602820 (not res!260925)) b!602831))

(assert (= (and b!602831 (not res!260929)) b!602813))

(assert (= (and b!602813 (not res!260922)) b!602811))

(assert (= (and start!57284 ((_ is Cons!6034) suffix!1342)) b!602828))

(assert (= b!602824 b!602815))

(assert (= b!602825 b!602824))

(assert (= (and start!57284 ((_ is Cons!6036) rules!3103)) b!602825))

(assert (= b!602821 b!602830))

(assert (= b!602833 b!602821))

(assert (= start!57284 b!602833))

(assert (= (and start!57284 ((_ is Cons!6034) input!2705)) b!602819))

(declare-fun m!867767 () Bool)

(assert (=> b!602820 m!867767))

(declare-fun m!867769 () Bool)

(assert (=> b!602820 m!867769))

(declare-fun m!867771 () Bool)

(assert (=> b!602820 m!867771))

(declare-fun m!867773 () Bool)

(assert (=> b!602820 m!867773))

(declare-fun m!867775 () Bool)

(assert (=> b!602820 m!867775))

(declare-fun m!867777 () Bool)

(assert (=> b!602820 m!867777))

(declare-fun m!867779 () Bool)

(assert (=> b!602820 m!867779))

(declare-fun m!867781 () Bool)

(assert (=> b!602827 m!867781))

(declare-fun m!867783 () Bool)

(assert (=> b!602827 m!867783))

(declare-fun m!867785 () Bool)

(assert (=> b!602827 m!867785))

(declare-fun m!867787 () Bool)

(assert (=> start!57284 m!867787))

(declare-fun m!867789 () Bool)

(assert (=> b!602812 m!867789))

(declare-fun m!867791 () Bool)

(assert (=> b!602833 m!867791))

(declare-fun m!867793 () Bool)

(assert (=> b!602836 m!867793))

(declare-fun m!867795 () Bool)

(assert (=> b!602835 m!867795))

(declare-fun m!867797 () Bool)

(assert (=> b!602821 m!867797))

(declare-fun m!867799 () Bool)

(assert (=> b!602821 m!867799))

(declare-fun m!867801 () Bool)

(assert (=> b!602811 m!867801))

(declare-fun m!867803 () Bool)

(assert (=> b!602823 m!867803))

(declare-fun m!867805 () Bool)

(assert (=> b!602822 m!867805))

(declare-fun m!867807 () Bool)

(assert (=> b!602837 m!867807))

(declare-fun m!867809 () Bool)

(assert (=> b!602837 m!867809))

(declare-fun m!867811 () Bool)

(assert (=> b!602837 m!867811))

(declare-fun m!867813 () Bool)

(assert (=> b!602837 m!867813))

(declare-fun m!867815 () Bool)

(assert (=> b!602837 m!867815))

(declare-fun m!867817 () Bool)

(assert (=> b!602837 m!867817))

(declare-fun m!867819 () Bool)

(assert (=> b!602837 m!867819))

(declare-fun m!867821 () Bool)

(assert (=> b!602837 m!867821))

(declare-fun m!867823 () Bool)

(assert (=> b!602837 m!867823))

(declare-fun m!867825 () Bool)

(assert (=> b!602837 m!867825))

(declare-fun m!867827 () Bool)

(assert (=> b!602837 m!867827))

(declare-fun m!867829 () Bool)

(assert (=> b!602837 m!867829))

(declare-fun m!867831 () Bool)

(assert (=> b!602837 m!867831))

(declare-fun m!867833 () Bool)

(assert (=> b!602837 m!867833))

(declare-fun m!867835 () Bool)

(assert (=> b!602837 m!867835))

(declare-fun m!867837 () Bool)

(assert (=> b!602837 m!867837))

(declare-fun m!867839 () Bool)

(assert (=> b!602837 m!867839))

(declare-fun m!867841 () Bool)

(assert (=> b!602837 m!867841))

(assert (=> b!602837 m!867829))

(declare-fun m!867843 () Bool)

(assert (=> b!602837 m!867843))

(declare-fun m!867845 () Bool)

(assert (=> b!602837 m!867845))

(declare-fun m!867847 () Bool)

(assert (=> b!602837 m!867847))

(declare-fun m!867849 () Bool)

(assert (=> b!602837 m!867849))

(declare-fun m!867851 () Bool)

(assert (=> b!602837 m!867851))

(declare-fun m!867853 () Bool)

(assert (=> b!602837 m!867853))

(declare-fun m!867855 () Bool)

(assert (=> b!602837 m!867855))

(assert (=> b!602837 m!867851))

(declare-fun m!867857 () Bool)

(assert (=> b!602837 m!867857))

(assert (=> b!602837 m!867831))

(declare-fun m!867859 () Bool)

(assert (=> b!602837 m!867859))

(declare-fun m!867861 () Bool)

(assert (=> b!602816 m!867861))

(declare-fun m!867863 () Bool)

(assert (=> b!602829 m!867863))

(declare-fun m!867865 () Bool)

(assert (=> b!602834 m!867865))

(assert (=> b!602834 m!867865))

(declare-fun m!867867 () Bool)

(assert (=> b!602834 m!867867))

(declare-fun m!867869 () Bool)

(assert (=> b!602813 m!867869))

(declare-fun m!867871 () Bool)

(assert (=> b!602826 m!867871))

(declare-fun m!867873 () Bool)

(assert (=> b!602824 m!867873))

(declare-fun m!867875 () Bool)

(assert (=> b!602824 m!867875))

(check-sat b_and!59545 (not b!602837) (not b!602824) (not b!602825) (not b!602812) (not b!602833) (not b!602821) b_and!59541 b_and!59539 (not b!602826) (not b!602823) (not b!602822) (not b!602827) (not b!602828) (not b!602834) (not b!602829) (not b!602811) (not b!602820) (not b_next!17189) (not b!602836) (not b_next!17191) (not start!57284) (not b!602816) (not b!602819) (not b_next!17195) tp_is_empty!3429 (not b_next!17193) (not b!602813) (not b!602835) b_and!59543)
(check-sat b_and!59545 (not b_next!17189) (not b_next!17191) b_and!59541 (not b_next!17195) (not b_next!17193) b_and!59539 b_and!59543)
(get-model)

(declare-fun d!212021 () Bool)

(declare-fun lt!257079 () Int)

(assert (=> d!212021 (>= lt!257079 0)))

(declare-fun e!365326 () Int)

(assert (=> d!212021 (= lt!257079 e!365326)))

(declare-fun c!111811 () Bool)

(assert (=> d!212021 (= c!111811 ((_ is Nil!6034) (originalCharacters!1242 token!491)))))

(assert (=> d!212021 (= (size!4747 (originalCharacters!1242 token!491)) lt!257079)))

(declare-fun b!602842 () Bool)

(assert (=> b!602842 (= e!365326 0)))

(declare-fun b!602843 () Bool)

(assert (=> b!602843 (= e!365326 (+ 1 (size!4747 (t!80045 (originalCharacters!1242 token!491)))))))

(assert (= (and d!212021 c!111811) b!602842))

(assert (= (and d!212021 (not c!111811)) b!602843))

(declare-fun m!867877 () Bool)

(assert (=> b!602843 m!867877))

(assert (=> b!602822 d!212021))

(declare-fun b!602982 () Bool)

(declare-fun e!365399 () Bool)

(assert (=> b!602982 (= e!365399 true)))

(declare-fun d!212023 () Bool)

(assert (=> d!212023 e!365399))

(assert (= d!212023 b!602982))

(declare-fun order!4803 () Int)

(declare-fun lambda!16071 () Int)

(declare-fun order!4805 () Int)

(declare-fun dynLambda!3483 (Int Int) Int)

(declare-fun dynLambda!3484 (Int Int) Int)

(assert (=> b!602982 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (rule!1979 token!491)))) (dynLambda!3484 order!4805 lambda!16071))))

(declare-fun order!4807 () Int)

(declare-fun dynLambda!3485 (Int Int) Int)

(assert (=> b!602982 (< (dynLambda!3485 order!4807 (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (dynLambda!3484 order!4805 lambda!16071))))

(declare-fun dynLambda!3486 (Int TokenValue!1227) BalanceConc!3848)

(declare-fun dynLambda!3487 (Int BalanceConc!3848) TokenValue!1227)

(assert (=> d!212023 (= (list!2532 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))) (list!2532 lt!257076))))

(declare-fun lt!257142 () Unit!10988)

(declare-fun ForallOf!117 (Int BalanceConc!3848) Unit!10988)

(assert (=> d!212023 (= lt!257142 (ForallOf!117 lambda!16071 lt!257076))))

(assert (=> d!212023 (= (lemmaSemiInverse!236 (transformation!1203 (rule!1979 token!491)) lt!257076) lt!257142)))

(declare-fun b_lambda!23791 () Bool)

(assert (=> (not b_lambda!23791) (not d!212023)))

(declare-fun t!80057 () Bool)

(declare-fun tb!52543 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80057) tb!52543))

(declare-fun e!365402 () Bool)

(declare-fun b!602987 () Bool)

(declare-fun tp!187640 () Bool)

(declare-fun inv!7663 (Conc!1920) Bool)

(assert (=> b!602987 (= e!365402 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))) tp!187640))))

(declare-fun result!59118 () Bool)

(declare-fun inv!7664 (BalanceConc!3848) Bool)

(assert (=> tb!52543 (= result!59118 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))) e!365402))))

(assert (= tb!52543 b!602987))

(declare-fun m!868065 () Bool)

(assert (=> b!602987 m!868065))

(declare-fun m!868067 () Bool)

(assert (=> tb!52543 m!868067))

(assert (=> d!212023 t!80057))

(declare-fun b_and!59559 () Bool)

(assert (= b_and!59541 (and (=> t!80057 result!59118) b_and!59559)))

(declare-fun tb!52545 () Bool)

(declare-fun t!80059 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80059) tb!52545))

(declare-fun result!59122 () Bool)

(assert (= result!59122 result!59118))

(assert (=> d!212023 t!80059))

(declare-fun b_and!59561 () Bool)

(assert (= b_and!59545 (and (=> t!80059 result!59122) b_and!59561)))

(declare-fun b_lambda!23793 () Bool)

(assert (=> (not b_lambda!23793) (not d!212023)))

(declare-fun t!80061 () Bool)

(declare-fun tb!52547 () Bool)

(assert (=> (and b!602830 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) t!80061) tb!52547))

(declare-fun result!59124 () Bool)

(assert (=> tb!52547 (= result!59124 (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))

(declare-fun m!868069 () Bool)

(assert (=> tb!52547 m!868069))

(assert (=> d!212023 t!80061))

(declare-fun b_and!59563 () Bool)

(assert (= b_and!59539 (and (=> t!80061 result!59124) b_and!59563)))

(declare-fun t!80063 () Bool)

(declare-fun tb!52549 () Bool)

(assert (=> (and b!602815 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) t!80063) tb!52549))

(declare-fun result!59128 () Bool)

(assert (= result!59128 result!59124))

(assert (=> d!212023 t!80063))

(declare-fun b_and!59565 () Bool)

(assert (= b_and!59543 (and (=> t!80063 result!59128) b_and!59565)))

(declare-fun m!868071 () Bool)

(assert (=> d!212023 m!868071))

(declare-fun m!868073 () Bool)

(assert (=> d!212023 m!868073))

(declare-fun m!868075 () Bool)

(assert (=> d!212023 m!868075))

(declare-fun m!868077 () Bool)

(assert (=> d!212023 m!868077))

(declare-fun m!868079 () Bool)

(assert (=> d!212023 m!868079))

(assert (=> d!212023 m!868077))

(assert (=> d!212023 m!868073))

(assert (=> b!602811 d!212023))

(declare-fun b!603008 () Bool)

(declare-fun res!261036 () Bool)

(declare-fun e!365412 () Bool)

(assert (=> b!603008 (=> (not res!261036) (not e!365412))))

(declare-fun lt!257153 () Option!1554)

(assert (=> b!603008 (= res!261036 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))) (_2!3720 (get!2319 lt!257153))) input!2705))))

(declare-fun b!603009 () Bool)

(declare-fun e!365413 () Option!1554)

(declare-fun lt!257156 () Option!1554)

(declare-fun lt!257154 () Option!1554)

(assert (=> b!603009 (= e!365413 (ite (and ((_ is None!1553) lt!257156) ((_ is None!1553) lt!257154)) None!1553 (ite ((_ is None!1553) lt!257154) lt!257156 (ite ((_ is None!1553) lt!257156) lt!257154 (ite (>= (size!4746 (_1!3720 (v!16450 lt!257156))) (size!4746 (_1!3720 (v!16450 lt!257154)))) lt!257156 lt!257154)))))))

(declare-fun call!40568 () Option!1554)

(assert (=> b!603009 (= lt!257156 call!40568)))

(assert (=> b!603009 (= lt!257154 (maxPrefix!787 thiss!22590 (t!80047 rules!3103) input!2705))))

(declare-fun b!603010 () Bool)

(declare-fun res!261038 () Bool)

(assert (=> b!603010 (=> (not res!261038) (not e!365412))))

(declare-fun matchR!639 (Regex!1537 List!6044) Bool)

(assert (=> b!603010 (= res!261038 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun b!603011 () Bool)

(declare-fun e!365414 () Bool)

(assert (=> b!603011 (= e!365414 e!365412)))

(declare-fun res!261037 () Bool)

(assert (=> b!603011 (=> (not res!261037) (not e!365412))))

(assert (=> b!603011 (= res!261037 (isDefined!1365 lt!257153))))

(declare-fun d!212081 () Bool)

(assert (=> d!212081 e!365414))

(declare-fun res!261042 () Bool)

(assert (=> d!212081 (=> res!261042 e!365414)))

(declare-fun isEmpty!4357 (Option!1554) Bool)

(assert (=> d!212081 (= res!261042 (isEmpty!4357 lt!257153))))

(assert (=> d!212081 (= lt!257153 e!365413)))

(declare-fun c!111840 () Bool)

(assert (=> d!212081 (= c!111840 (and ((_ is Cons!6036) rules!3103) ((_ is Nil!6036) (t!80047 rules!3103))))))

(declare-fun lt!257155 () Unit!10988)

(declare-fun lt!257157 () Unit!10988)

(assert (=> d!212081 (= lt!257155 lt!257157)))

(assert (=> d!212081 (isPrefix!831 input!2705 input!2705)))

(assert (=> d!212081 (= lt!257157 (lemmaIsPrefixRefl!567 input!2705 input!2705))))

(declare-fun rulesValidInductive!447 (LexerInterface!1089 List!6046) Bool)

(assert (=> d!212081 (rulesValidInductive!447 thiss!22590 rules!3103)))

(assert (=> d!212081 (= (maxPrefix!787 thiss!22590 rules!3103 input!2705) lt!257153)))

(declare-fun b!603012 () Bool)

(assert (=> b!603012 (= e!365413 call!40568)))

(declare-fun b!603013 () Bool)

(declare-fun res!261040 () Bool)

(assert (=> b!603013 (=> (not res!261040) (not e!365412))))

(assert (=> b!603013 (= res!261040 (= (value!39152 (_1!3720 (get!2319 lt!257153))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257153)))))))))

(declare-fun b!603014 () Bool)

(assert (=> b!603014 (= e!365412 (contains!1415 rules!3103 (rule!1979 (_1!3720 (get!2319 lt!257153)))))))

(declare-fun bm!40563 () Bool)

(assert (=> bm!40563 (= call!40568 (maxPrefixOneRule!450 thiss!22590 (h!11437 rules!3103) input!2705))))

(declare-fun b!603015 () Bool)

(declare-fun res!261039 () Bool)

(assert (=> b!603015 (=> (not res!261039) (not e!365412))))

(assert (=> b!603015 (= res!261039 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))) (originalCharacters!1242 (_1!3720 (get!2319 lt!257153)))))))

(declare-fun b!603016 () Bool)

(declare-fun res!261041 () Bool)

(assert (=> b!603016 (=> (not res!261041) (not e!365412))))

(assert (=> b!603016 (= res!261041 (< (size!4747 (_2!3720 (get!2319 lt!257153))) (size!4747 input!2705)))))

(assert (= (and d!212081 c!111840) b!603012))

(assert (= (and d!212081 (not c!111840)) b!603009))

(assert (= (or b!603012 b!603009) bm!40563))

(assert (= (and d!212081 (not res!261042)) b!603011))

(assert (= (and b!603011 res!261037) b!603015))

(assert (= (and b!603015 res!261039) b!603016))

(assert (= (and b!603016 res!261041) b!603008))

(assert (= (and b!603008 res!261036) b!603013))

(assert (= (and b!603013 res!261040) b!603010))

(assert (= (and b!603010 res!261038) b!603014))

(declare-fun m!868081 () Bool)

(assert (=> b!603008 m!868081))

(declare-fun m!868083 () Bool)

(assert (=> b!603008 m!868083))

(assert (=> b!603008 m!868083))

(declare-fun m!868085 () Bool)

(assert (=> b!603008 m!868085))

(assert (=> b!603008 m!868085))

(declare-fun m!868087 () Bool)

(assert (=> b!603008 m!868087))

(assert (=> b!603013 m!868081))

(declare-fun m!868089 () Bool)

(assert (=> b!603013 m!868089))

(assert (=> b!603013 m!868089))

(declare-fun m!868091 () Bool)

(assert (=> b!603013 m!868091))

(assert (=> b!603015 m!868081))

(assert (=> b!603015 m!868083))

(assert (=> b!603015 m!868083))

(assert (=> b!603015 m!868085))

(declare-fun m!868093 () Bool)

(assert (=> b!603011 m!868093))

(declare-fun m!868095 () Bool)

(assert (=> b!603009 m!868095))

(assert (=> b!603010 m!868081))

(assert (=> b!603010 m!868083))

(assert (=> b!603010 m!868083))

(assert (=> b!603010 m!868085))

(assert (=> b!603010 m!868085))

(declare-fun m!868097 () Bool)

(assert (=> b!603010 m!868097))

(declare-fun m!868099 () Bool)

(assert (=> d!212081 m!868099))

(assert (=> d!212081 m!867827))

(assert (=> d!212081 m!867821))

(declare-fun m!868101 () Bool)

(assert (=> d!212081 m!868101))

(assert (=> b!603016 m!868081))

(declare-fun m!868103 () Bool)

(assert (=> b!603016 m!868103))

(declare-fun m!868105 () Bool)

(assert (=> b!603016 m!868105))

(assert (=> b!603014 m!868081))

(declare-fun m!868107 () Bool)

(assert (=> b!603014 m!868107))

(declare-fun m!868109 () Bool)

(assert (=> bm!40563 m!868109))

(assert (=> b!602812 d!212081))

(declare-fun b!603027 () Bool)

(declare-fun e!365422 () Bool)

(declare-fun e!365421 () Bool)

(assert (=> b!603027 (= e!365422 e!365421)))

(declare-fun c!111846 () Bool)

(assert (=> b!603027 (= c!111846 ((_ is IntegerValue!3682) (value!39152 token!491)))))

(declare-fun b!603028 () Bool)

(declare-fun inv!17 (TokenValue!1227) Bool)

(assert (=> b!603028 (= e!365421 (inv!17 (value!39152 token!491)))))

(declare-fun b!603029 () Bool)

(declare-fun e!365423 () Bool)

(declare-fun inv!15 (TokenValue!1227) Bool)

(assert (=> b!603029 (= e!365423 (inv!15 (value!39152 token!491)))))

(declare-fun b!603030 () Bool)

(declare-fun res!261045 () Bool)

(assert (=> b!603030 (=> res!261045 e!365423)))

(assert (=> b!603030 (= res!261045 (not ((_ is IntegerValue!3683) (value!39152 token!491))))))

(assert (=> b!603030 (= e!365421 e!365423)))

(declare-fun b!603031 () Bool)

(declare-fun inv!16 (TokenValue!1227) Bool)

(assert (=> b!603031 (= e!365422 (inv!16 (value!39152 token!491)))))

(declare-fun d!212083 () Bool)

(declare-fun c!111845 () Bool)

(assert (=> d!212083 (= c!111845 ((_ is IntegerValue!3681) (value!39152 token!491)))))

(assert (=> d!212083 (= (inv!21 (value!39152 token!491)) e!365422)))

(assert (= (and d!212083 c!111845) b!603031))

(assert (= (and d!212083 (not c!111845)) b!603027))

(assert (= (and b!603027 c!111846) b!603028))

(assert (= (and b!603027 (not c!111846)) b!603030))

(assert (= (and b!603030 (not res!261045)) b!603029))

(declare-fun m!868111 () Bool)

(assert (=> b!603028 m!868111))

(declare-fun m!868113 () Bool)

(assert (=> b!603029 m!868113))

(declare-fun m!868115 () Bool)

(assert (=> b!603031 m!868115))

(assert (=> b!602833 d!212083))

(declare-fun d!212085 () Bool)

(assert (=> d!212085 (= (inv!7658 (tag!1465 (rule!1979 token!491))) (= (mod (str.len (value!39151 (tag!1465 (rule!1979 token!491)))) 2) 0))))

(assert (=> b!602821 d!212085))

(declare-fun d!212087 () Bool)

(declare-fun res!261048 () Bool)

(declare-fun e!365426 () Bool)

(assert (=> d!212087 (=> (not res!261048) (not e!365426))))

(declare-fun semiInverseModEq!478 (Int Int) Bool)

(assert (=> d!212087 (= res!261048 (semiInverseModEq!478 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))))))

(assert (=> d!212087 (= (inv!7662 (transformation!1203 (rule!1979 token!491))) e!365426)))

(declare-fun b!603034 () Bool)

(declare-fun equivClasses!461 (Int Int) Bool)

(assert (=> b!603034 (= e!365426 (equivClasses!461 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))))))

(assert (= (and d!212087 res!261048) b!603034))

(declare-fun m!868117 () Bool)

(assert (=> d!212087 m!868117))

(declare-fun m!868119 () Bool)

(assert (=> b!603034 m!868119))

(assert (=> b!602821 d!212087))

(declare-fun d!212089 () Bool)

(assert (=> d!212089 (= (isEmpty!4355 input!2705) ((_ is Nil!6034) input!2705))))

(assert (=> b!602835 d!212089))

(declare-fun d!212091 () Bool)

(assert (=> d!212091 (= (get!2319 lt!257072) (v!16450 lt!257072))))

(assert (=> b!602836 d!212091))

(declare-fun d!212093 () Bool)

(declare-fun res!261053 () Bool)

(declare-fun e!365429 () Bool)

(assert (=> d!212093 (=> (not res!261053) (not e!365429))))

(assert (=> d!212093 (= res!261053 (not (isEmpty!4355 (originalCharacters!1242 token!491))))))

(assert (=> d!212093 (= (inv!7661 token!491) e!365429)))

(declare-fun b!603039 () Bool)

(declare-fun res!261054 () Bool)

(assert (=> b!603039 (=> (not res!261054) (not e!365429))))

(assert (=> b!603039 (= res!261054 (= (originalCharacters!1242 token!491) (list!2532 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))))

(declare-fun b!603040 () Bool)

(assert (=> b!603040 (= e!365429 (= (size!4746 token!491) (size!4747 (originalCharacters!1242 token!491))))))

(assert (= (and d!212093 res!261053) b!603039))

(assert (= (and b!603039 res!261054) b!603040))

(declare-fun b_lambda!23795 () Bool)

(assert (=> (not b_lambda!23795) (not b!603039)))

(declare-fun t!80065 () Bool)

(declare-fun tb!52551 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80065) tb!52551))

(declare-fun b!603041 () Bool)

(declare-fun e!365430 () Bool)

(declare-fun tp!187641 () Bool)

(assert (=> b!603041 (= e!365430 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))) tp!187641))))

(declare-fun result!59130 () Bool)

(assert (=> tb!52551 (= result!59130 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))) e!365430))))

(assert (= tb!52551 b!603041))

(declare-fun m!868121 () Bool)

(assert (=> b!603041 m!868121))

(declare-fun m!868123 () Bool)

(assert (=> tb!52551 m!868123))

(assert (=> b!603039 t!80065))

(declare-fun b_and!59567 () Bool)

(assert (= b_and!59559 (and (=> t!80065 result!59130) b_and!59567)))

(declare-fun tb!52553 () Bool)

(declare-fun t!80067 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80067) tb!52553))

(declare-fun result!59132 () Bool)

(assert (= result!59132 result!59130))

(assert (=> b!603039 t!80067))

(declare-fun b_and!59569 () Bool)

(assert (= b_and!59561 (and (=> t!80067 result!59132) b_and!59569)))

(declare-fun m!868125 () Bool)

(assert (=> d!212093 m!868125))

(declare-fun m!868127 () Bool)

(assert (=> b!603039 m!868127))

(assert (=> b!603039 m!868127))

(declare-fun m!868129 () Bool)

(assert (=> b!603039 m!868129))

(assert (=> b!603040 m!867805))

(assert (=> start!57284 d!212093))

(declare-fun d!212095 () Bool)

(declare-fun list!2533 (Conc!1920) List!6044)

(assert (=> d!212095 (= (list!2532 (charsOf!832 token!491)) (list!2533 (c!111808 (charsOf!832 token!491))))))

(declare-fun bs!71041 () Bool)

(assert (= bs!71041 d!212095))

(declare-fun m!868131 () Bool)

(assert (=> bs!71041 m!868131))

(assert (=> b!602834 d!212095))

(declare-fun d!212097 () Bool)

(declare-fun lt!257160 () BalanceConc!3848)

(assert (=> d!212097 (= (list!2532 lt!257160) (originalCharacters!1242 token!491))))

(assert (=> d!212097 (= lt!257160 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))

(assert (=> d!212097 (= (charsOf!832 token!491) lt!257160)))

(declare-fun b_lambda!23797 () Bool)

(assert (=> (not b_lambda!23797) (not d!212097)))

(assert (=> d!212097 t!80065))

(declare-fun b_and!59571 () Bool)

(assert (= b_and!59567 (and (=> t!80065 result!59130) b_and!59571)))

(assert (=> d!212097 t!80067))

(declare-fun b_and!59573 () Bool)

(assert (= b_and!59569 (and (=> t!80067 result!59132) b_and!59573)))

(declare-fun m!868133 () Bool)

(assert (=> d!212097 m!868133))

(assert (=> d!212097 m!868127))

(assert (=> b!602834 d!212097))

(declare-fun d!212099 () Bool)

(assert (=> d!212099 (= (isEmpty!4356 rules!3103) ((_ is Nil!6036) rules!3103))))

(assert (=> b!602823 d!212099))

(declare-fun d!212101 () Bool)

(assert (=> d!212101 (= (inv!7658 (tag!1465 (h!11437 rules!3103))) (= (mod (str.len (value!39151 (tag!1465 (h!11437 rules!3103)))) 2) 0))))

(assert (=> b!602824 d!212101))

(declare-fun d!212103 () Bool)

(declare-fun res!261055 () Bool)

(declare-fun e!365431 () Bool)

(assert (=> d!212103 (=> (not res!261055) (not e!365431))))

(assert (=> d!212103 (= res!261055 (semiInverseModEq!478 (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (h!11437 rules!3103)))))))

(assert (=> d!212103 (= (inv!7662 (transformation!1203 (h!11437 rules!3103))) e!365431)))

(declare-fun b!603042 () Bool)

(assert (=> b!603042 (= e!365431 (equivClasses!461 (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (h!11437 rules!3103)))))))

(assert (= (and d!212103 res!261055) b!603042))

(declare-fun m!868135 () Bool)

(assert (=> d!212103 m!868135))

(declare-fun m!868137 () Bool)

(assert (=> b!603042 m!868137))

(assert (=> b!602824 d!212103))

(declare-fun d!212105 () Bool)

(assert (=> d!212105 (= (isEmpty!4355 lt!257067) ((_ is Nil!6034) lt!257067))))

(assert (=> b!602813 d!212105))

(declare-fun d!212107 () Bool)

(assert (=> d!212107 (= (isDefined!1365 lt!257072) (not (isEmpty!4357 lt!257072)))))

(declare-fun bs!71042 () Bool)

(assert (= bs!71042 d!212107))

(declare-fun m!868139 () Bool)

(assert (=> bs!71042 m!868139))

(assert (=> b!602827 d!212107))

(declare-fun b!603043 () Bool)

(declare-fun res!261056 () Bool)

(declare-fun e!365432 () Bool)

(assert (=> b!603043 (=> (not res!261056) (not e!365432))))

(declare-fun lt!257161 () Option!1554)

(assert (=> b!603043 (= res!261056 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))) (_2!3720 (get!2319 lt!257161))) lt!257052))))

(declare-fun b!603044 () Bool)

(declare-fun e!365433 () Option!1554)

(declare-fun lt!257164 () Option!1554)

(declare-fun lt!257162 () Option!1554)

(assert (=> b!603044 (= e!365433 (ite (and ((_ is None!1553) lt!257164) ((_ is None!1553) lt!257162)) None!1553 (ite ((_ is None!1553) lt!257162) lt!257164 (ite ((_ is None!1553) lt!257164) lt!257162 (ite (>= (size!4746 (_1!3720 (v!16450 lt!257164))) (size!4746 (_1!3720 (v!16450 lt!257162)))) lt!257164 lt!257162)))))))

(declare-fun call!40569 () Option!1554)

(assert (=> b!603044 (= lt!257164 call!40569)))

(assert (=> b!603044 (= lt!257162 (maxPrefix!787 thiss!22590 (t!80047 rules!3103) lt!257052))))

(declare-fun b!603045 () Bool)

(declare-fun res!261058 () Bool)

(assert (=> b!603045 (=> (not res!261058) (not e!365432))))

(assert (=> b!603045 (= res!261058 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun b!603046 () Bool)

(declare-fun e!365434 () Bool)

(assert (=> b!603046 (= e!365434 e!365432)))

(declare-fun res!261057 () Bool)

(assert (=> b!603046 (=> (not res!261057) (not e!365432))))

(assert (=> b!603046 (= res!261057 (isDefined!1365 lt!257161))))

(declare-fun d!212109 () Bool)

(assert (=> d!212109 e!365434))

(declare-fun res!261062 () Bool)

(assert (=> d!212109 (=> res!261062 e!365434)))

(assert (=> d!212109 (= res!261062 (isEmpty!4357 lt!257161))))

(assert (=> d!212109 (= lt!257161 e!365433)))

(declare-fun c!111847 () Bool)

(assert (=> d!212109 (= c!111847 (and ((_ is Cons!6036) rules!3103) ((_ is Nil!6036) (t!80047 rules!3103))))))

(declare-fun lt!257163 () Unit!10988)

(declare-fun lt!257165 () Unit!10988)

(assert (=> d!212109 (= lt!257163 lt!257165)))

(assert (=> d!212109 (isPrefix!831 lt!257052 lt!257052)))

(assert (=> d!212109 (= lt!257165 (lemmaIsPrefixRefl!567 lt!257052 lt!257052))))

(assert (=> d!212109 (rulesValidInductive!447 thiss!22590 rules!3103)))

(assert (=> d!212109 (= (maxPrefix!787 thiss!22590 rules!3103 lt!257052) lt!257161)))

(declare-fun b!603047 () Bool)

(assert (=> b!603047 (= e!365433 call!40569)))

(declare-fun b!603048 () Bool)

(declare-fun res!261060 () Bool)

(assert (=> b!603048 (=> (not res!261060) (not e!365432))))

(assert (=> b!603048 (= res!261060 (= (value!39152 (_1!3720 (get!2319 lt!257161))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257161)))))))))

(declare-fun b!603049 () Bool)

(assert (=> b!603049 (= e!365432 (contains!1415 rules!3103 (rule!1979 (_1!3720 (get!2319 lt!257161)))))))

(declare-fun bm!40564 () Bool)

(assert (=> bm!40564 (= call!40569 (maxPrefixOneRule!450 thiss!22590 (h!11437 rules!3103) lt!257052))))

(declare-fun b!603050 () Bool)

(declare-fun res!261059 () Bool)

(assert (=> b!603050 (=> (not res!261059) (not e!365432))))

(assert (=> b!603050 (= res!261059 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))) (originalCharacters!1242 (_1!3720 (get!2319 lt!257161)))))))

(declare-fun b!603051 () Bool)

(declare-fun res!261061 () Bool)

(assert (=> b!603051 (=> (not res!261061) (not e!365432))))

(assert (=> b!603051 (= res!261061 (< (size!4747 (_2!3720 (get!2319 lt!257161))) (size!4747 lt!257052)))))

(assert (= (and d!212109 c!111847) b!603047))

(assert (= (and d!212109 (not c!111847)) b!603044))

(assert (= (or b!603047 b!603044) bm!40564))

(assert (= (and d!212109 (not res!261062)) b!603046))

(assert (= (and b!603046 res!261057) b!603050))

(assert (= (and b!603050 res!261059) b!603051))

(assert (= (and b!603051 res!261061) b!603043))

(assert (= (and b!603043 res!261056) b!603048))

(assert (= (and b!603048 res!261060) b!603045))

(assert (= (and b!603045 res!261058) b!603049))

(declare-fun m!868141 () Bool)

(assert (=> b!603043 m!868141))

(declare-fun m!868143 () Bool)

(assert (=> b!603043 m!868143))

(assert (=> b!603043 m!868143))

(declare-fun m!868145 () Bool)

(assert (=> b!603043 m!868145))

(assert (=> b!603043 m!868145))

(declare-fun m!868147 () Bool)

(assert (=> b!603043 m!868147))

(assert (=> b!603048 m!868141))

(declare-fun m!868149 () Bool)

(assert (=> b!603048 m!868149))

(assert (=> b!603048 m!868149))

(declare-fun m!868151 () Bool)

(assert (=> b!603048 m!868151))

(assert (=> b!603050 m!868141))

(assert (=> b!603050 m!868143))

(assert (=> b!603050 m!868143))

(assert (=> b!603050 m!868145))

(declare-fun m!868153 () Bool)

(assert (=> b!603046 m!868153))

(declare-fun m!868155 () Bool)

(assert (=> b!603044 m!868155))

(assert (=> b!603045 m!868141))

(assert (=> b!603045 m!868143))

(assert (=> b!603045 m!868143))

(assert (=> b!603045 m!868145))

(assert (=> b!603045 m!868145))

(declare-fun m!868157 () Bool)

(assert (=> b!603045 m!868157))

(declare-fun m!868159 () Bool)

(assert (=> d!212109 m!868159))

(declare-fun m!868161 () Bool)

(assert (=> d!212109 m!868161))

(declare-fun m!868163 () Bool)

(assert (=> d!212109 m!868163))

(assert (=> d!212109 m!868101))

(assert (=> b!603051 m!868141))

(declare-fun m!868165 () Bool)

(assert (=> b!603051 m!868165))

(declare-fun m!868167 () Bool)

(assert (=> b!603051 m!868167))

(assert (=> b!603049 m!868141))

(declare-fun m!868169 () Bool)

(assert (=> b!603049 m!868169))

(declare-fun m!868171 () Bool)

(assert (=> bm!40564 m!868171))

(assert (=> b!602827 d!212109))

(declare-fun b!603060 () Bool)

(declare-fun e!365440 () List!6044)

(assert (=> b!603060 (= e!365440 suffix!1342)))

(declare-fun d!212111 () Bool)

(declare-fun e!365439 () Bool)

(assert (=> d!212111 e!365439))

(declare-fun res!261068 () Bool)

(assert (=> d!212111 (=> (not res!261068) (not e!365439))))

(declare-fun lt!257168 () List!6044)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1089 (List!6044) (InoxSet C!3996))

(assert (=> d!212111 (= res!261068 (= (content!1089 lt!257168) ((_ map or) (content!1089 input!2705) (content!1089 suffix!1342))))))

(assert (=> d!212111 (= lt!257168 e!365440)))

(declare-fun c!111850 () Bool)

(assert (=> d!212111 (= c!111850 ((_ is Nil!6034) input!2705))))

(assert (=> d!212111 (= (++!1691 input!2705 suffix!1342) lt!257168)))

(declare-fun b!603062 () Bool)

(declare-fun res!261067 () Bool)

(assert (=> b!603062 (=> (not res!261067) (not e!365439))))

(assert (=> b!603062 (= res!261067 (= (size!4747 lt!257168) (+ (size!4747 input!2705) (size!4747 suffix!1342))))))

(declare-fun b!603061 () Bool)

(assert (=> b!603061 (= e!365440 (Cons!6034 (h!11435 input!2705) (++!1691 (t!80045 input!2705) suffix!1342)))))

(declare-fun b!603063 () Bool)

(assert (=> b!603063 (= e!365439 (or (not (= suffix!1342 Nil!6034)) (= lt!257168 input!2705)))))

(assert (= (and d!212111 c!111850) b!603060))

(assert (= (and d!212111 (not c!111850)) b!603061))

(assert (= (and d!212111 res!261068) b!603062))

(assert (= (and b!603062 res!261067) b!603063))

(declare-fun m!868173 () Bool)

(assert (=> d!212111 m!868173))

(declare-fun m!868175 () Bool)

(assert (=> d!212111 m!868175))

(declare-fun m!868177 () Bool)

(assert (=> d!212111 m!868177))

(declare-fun m!868179 () Bool)

(assert (=> b!603062 m!868179))

(assert (=> b!603062 m!868105))

(declare-fun m!868181 () Bool)

(assert (=> b!603062 m!868181))

(declare-fun m!868183 () Bool)

(assert (=> b!603061 m!868183))

(assert (=> b!602827 d!212111))

(declare-fun d!212113 () Bool)

(declare-fun lt!257169 () Int)

(assert (=> d!212113 (>= lt!257169 0)))

(declare-fun e!365441 () Int)

(assert (=> d!212113 (= lt!257169 e!365441)))

(declare-fun c!111851 () Bool)

(assert (=> d!212113 (= c!111851 ((_ is Nil!6034) (originalCharacters!1242 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212113 (= (size!4747 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061)))) lt!257169)))

(declare-fun b!603064 () Bool)

(assert (=> b!603064 (= e!365441 0)))

(declare-fun b!603065 () Bool)

(assert (=> b!603065 (= e!365441 (+ 1 (size!4747 (t!80045 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061)))))))))

(assert (= (and d!212113 c!111851) b!603064))

(assert (= (and d!212113 (not c!111851)) b!603065))

(declare-fun m!868185 () Bool)

(assert (=> b!603065 m!868185))

(assert (=> b!602826 d!212113))

(declare-fun d!212115 () Bool)

(declare-fun res!261071 () Bool)

(declare-fun e!365444 () Bool)

(assert (=> d!212115 (=> (not res!261071) (not e!365444))))

(declare-fun rulesValid!443 (LexerInterface!1089 List!6046) Bool)

(assert (=> d!212115 (= res!261071 (rulesValid!443 thiss!22590 rules!3103))))

(assert (=> d!212115 (= (rulesInvariant!1052 thiss!22590 rules!3103) e!365444)))

(declare-fun b!603068 () Bool)

(declare-datatypes ((List!6048 0))(
  ( (Nil!6038) (Cons!6038 (h!11439 String!7879) (t!80109 List!6048)) )
))
(declare-fun noDuplicateTag!443 (LexerInterface!1089 List!6046 List!6048) Bool)

(assert (=> b!603068 (= e!365444 (noDuplicateTag!443 thiss!22590 rules!3103 Nil!6038))))

(assert (= (and d!212115 res!261071) b!603068))

(declare-fun m!868187 () Bool)

(assert (=> d!212115 m!868187))

(declare-fun m!868189 () Bool)

(assert (=> b!603068 m!868189))

(assert (=> b!602816 d!212115))

(declare-fun b!603079 () Bool)

(declare-fun e!365452 () Bool)

(declare-fun tail!807 (List!6044) List!6044)

(assert (=> b!603079 (= e!365452 (isPrefix!831 (tail!807 lt!257067) (tail!807 lt!257055)))))

(declare-fun d!212117 () Bool)

(declare-fun e!365451 () Bool)

(assert (=> d!212117 e!365451))

(declare-fun res!261081 () Bool)

(assert (=> d!212117 (=> res!261081 e!365451)))

(declare-fun lt!257172 () Bool)

(assert (=> d!212117 (= res!261081 (not lt!257172))))

(declare-fun e!365453 () Bool)

(assert (=> d!212117 (= lt!257172 e!365453)))

(declare-fun res!261083 () Bool)

(assert (=> d!212117 (=> res!261083 e!365453)))

(assert (=> d!212117 (= res!261083 ((_ is Nil!6034) lt!257067))))

(assert (=> d!212117 (= (isPrefix!831 lt!257067 lt!257055) lt!257172)))

(declare-fun b!603078 () Bool)

(declare-fun res!261082 () Bool)

(assert (=> b!603078 (=> (not res!261082) (not e!365452))))

(declare-fun head!1277 (List!6044) C!3996)

(assert (=> b!603078 (= res!261082 (= (head!1277 lt!257067) (head!1277 lt!257055)))))

(declare-fun b!603077 () Bool)

(assert (=> b!603077 (= e!365453 e!365452)))

(declare-fun res!261080 () Bool)

(assert (=> b!603077 (=> (not res!261080) (not e!365452))))

(assert (=> b!603077 (= res!261080 (not ((_ is Nil!6034) lt!257055)))))

(declare-fun b!603080 () Bool)

(assert (=> b!603080 (= e!365451 (>= (size!4747 lt!257055) (size!4747 lt!257067)))))

(assert (= (and d!212117 (not res!261083)) b!603077))

(assert (= (and b!603077 res!261080) b!603078))

(assert (= (and b!603078 res!261082) b!603079))

(assert (= (and d!212117 (not res!261081)) b!603080))

(declare-fun m!868191 () Bool)

(assert (=> b!603079 m!868191))

(declare-fun m!868193 () Bool)

(assert (=> b!603079 m!868193))

(assert (=> b!603079 m!868191))

(assert (=> b!603079 m!868193))

(declare-fun m!868195 () Bool)

(assert (=> b!603079 m!868195))

(declare-fun m!868197 () Bool)

(assert (=> b!603078 m!868197))

(declare-fun m!868199 () Bool)

(assert (=> b!603078 m!868199))

(declare-fun m!868201 () Bool)

(assert (=> b!603080 m!868201))

(assert (=> b!603080 m!867833))

(assert (=> b!602837 d!212117))

(declare-fun d!212119 () Bool)

(assert (=> d!212119 (= (size!4746 (_1!3720 (v!16450 lt!257061))) (size!4747 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061)))))))

(declare-fun Unit!10992 () Unit!10988)

(assert (=> d!212119 (= (lemmaCharactersSize!262 (_1!3720 (v!16450 lt!257061))) Unit!10992)))

(declare-fun bs!71043 () Bool)

(assert (= bs!71043 d!212119))

(assert (=> bs!71043 m!867871))

(assert (=> b!602837 d!212119))

(declare-fun d!212121 () Bool)

(declare-fun res!261088 () Bool)

(declare-fun e!365456 () Bool)

(assert (=> d!212121 (=> (not res!261088) (not e!365456))))

(declare-fun validRegex!531 (Regex!1537) Bool)

(assert (=> d!212121 (= res!261088 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(assert (=> d!212121 (= (ruleValid!401 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061)))) e!365456)))

(declare-fun b!603085 () Bool)

(declare-fun res!261089 () Bool)

(assert (=> b!603085 (=> (not res!261089) (not e!365456))))

(declare-fun nullable!436 (Regex!1537) Bool)

(assert (=> b!603085 (= res!261089 (not (nullable!436 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun b!603086 () Bool)

(assert (=> b!603086 (= e!365456 (not (= (tag!1465 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (String!7880 ""))))))

(assert (= (and d!212121 res!261088) b!603085))

(assert (= (and b!603085 res!261089) b!603086))

(declare-fun m!868203 () Bool)

(assert (=> d!212121 m!868203))

(declare-fun m!868205 () Bool)

(assert (=> b!603085 m!868205))

(assert (=> b!602837 d!212121))

(declare-fun d!212123 () Bool)

(declare-fun e!365459 () Bool)

(assert (=> d!212123 e!365459))

(declare-fun res!261092 () Bool)

(assert (=> d!212123 (=> (not res!261092) (not e!365459))))

(assert (=> d!212123 (= res!261092 (semiInverseModEq!478 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun Unit!10993 () Unit!10988)

(assert (=> d!212123 (= (lemmaInv!311 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) Unit!10993)))

(declare-fun b!603089 () Bool)

(assert (=> b!603089 (= e!365459 (equivClasses!461 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(assert (= (and d!212123 res!261092) b!603089))

(declare-fun m!868207 () Bool)

(assert (=> d!212123 m!868207))

(declare-fun m!868209 () Bool)

(assert (=> b!603089 m!868209))

(assert (=> b!602837 d!212123))

(declare-fun d!212125 () Bool)

(assert (=> d!212125 (isPrefix!831 lt!257064 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))))

(declare-fun lt!257175 () Unit!10988)

(declare-fun choose!4402 (List!6044 List!6044) Unit!10988)

(assert (=> d!212125 (= lt!257175 (choose!4402 lt!257064 (_2!3720 (v!16450 lt!257061))))))

(assert (=> d!212125 (= (lemmaConcatTwoListThenFirstIsPrefix!676 lt!257064 (_2!3720 (v!16450 lt!257061))) lt!257175)))

(declare-fun bs!71044 () Bool)

(assert (= bs!71044 d!212125))

(assert (=> bs!71044 m!867829))

(assert (=> bs!71044 m!867829))

(assert (=> bs!71044 m!867843))

(declare-fun m!868211 () Bool)

(assert (=> bs!71044 m!868211))

(assert (=> b!602837 d!212125))

(declare-fun b!603090 () Bool)

(declare-fun e!365461 () List!6044)

(assert (=> b!603090 (= e!365461 (_2!3720 (v!16450 lt!257061)))))

(declare-fun d!212127 () Bool)

(declare-fun e!365460 () Bool)

(assert (=> d!212127 e!365460))

(declare-fun res!261094 () Bool)

(assert (=> d!212127 (=> (not res!261094) (not e!365460))))

(declare-fun lt!257176 () List!6044)

(assert (=> d!212127 (= res!261094 (= (content!1089 lt!257176) ((_ map or) (content!1089 lt!257064) (content!1089 (_2!3720 (v!16450 lt!257061))))))))

(assert (=> d!212127 (= lt!257176 e!365461)))

(declare-fun c!111852 () Bool)

(assert (=> d!212127 (= c!111852 ((_ is Nil!6034) lt!257064))))

(assert (=> d!212127 (= (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))) lt!257176)))

(declare-fun b!603092 () Bool)

(declare-fun res!261093 () Bool)

(assert (=> b!603092 (=> (not res!261093) (not e!365460))))

(assert (=> b!603092 (= res!261093 (= (size!4747 lt!257176) (+ (size!4747 lt!257064) (size!4747 (_2!3720 (v!16450 lt!257061))))))))

(declare-fun b!603091 () Bool)

(assert (=> b!603091 (= e!365461 (Cons!6034 (h!11435 lt!257064) (++!1691 (t!80045 lt!257064) (_2!3720 (v!16450 lt!257061)))))))

(declare-fun b!603093 () Bool)

(assert (=> b!603093 (= e!365460 (or (not (= (_2!3720 (v!16450 lt!257061)) Nil!6034)) (= lt!257176 lt!257064)))))

(assert (= (and d!212127 c!111852) b!603090))

(assert (= (and d!212127 (not c!111852)) b!603091))

(assert (= (and d!212127 res!261094) b!603092))

(assert (= (and b!603092 res!261093) b!603093))

(declare-fun m!868213 () Bool)

(assert (=> d!212127 m!868213))

(declare-fun m!868215 () Bool)

(assert (=> d!212127 m!868215))

(declare-fun m!868217 () Bool)

(assert (=> d!212127 m!868217))

(declare-fun m!868219 () Bool)

(assert (=> b!603092 m!868219))

(assert (=> b!603092 m!867819))

(declare-fun m!868221 () Bool)

(assert (=> b!603092 m!868221))

(declare-fun m!868223 () Bool)

(assert (=> b!603091 m!868223))

(assert (=> b!602837 d!212127))

(declare-fun d!212129 () Bool)

(declare-fun res!261095 () Bool)

(declare-fun e!365462 () Bool)

(assert (=> d!212129 (=> (not res!261095) (not e!365462))))

(assert (=> d!212129 (= res!261095 (validRegex!531 (regex!1203 (rule!1979 token!491))))))

(assert (=> d!212129 (= (ruleValid!401 thiss!22590 (rule!1979 token!491)) e!365462)))

(declare-fun b!603094 () Bool)

(declare-fun res!261096 () Bool)

(assert (=> b!603094 (=> (not res!261096) (not e!365462))))

(assert (=> b!603094 (= res!261096 (not (nullable!436 (regex!1203 (rule!1979 token!491)))))))

(declare-fun b!603095 () Bool)

(assert (=> b!603095 (= e!365462 (not (= (tag!1465 (rule!1979 token!491)) (String!7880 ""))))))

(assert (= (and d!212129 res!261095) b!603094))

(assert (= (and b!603094 res!261096) b!603095))

(declare-fun m!868225 () Bool)

(assert (=> d!212129 m!868225))

(declare-fun m!868227 () Bool)

(assert (=> b!603094 m!868227))

(assert (=> b!602837 d!212129))

(declare-fun b!603098 () Bool)

(declare-fun e!365464 () Bool)

(assert (=> b!603098 (= e!365464 (isPrefix!831 (tail!807 lt!257064) (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))))))

(declare-fun d!212131 () Bool)

(declare-fun e!365463 () Bool)

(assert (=> d!212131 e!365463))

(declare-fun res!261098 () Bool)

(assert (=> d!212131 (=> res!261098 e!365463)))

(declare-fun lt!257177 () Bool)

(assert (=> d!212131 (= res!261098 (not lt!257177))))

(declare-fun e!365465 () Bool)

(assert (=> d!212131 (= lt!257177 e!365465)))

(declare-fun res!261100 () Bool)

(assert (=> d!212131 (=> res!261100 e!365465)))

(assert (=> d!212131 (= res!261100 ((_ is Nil!6034) lt!257064))))

(assert (=> d!212131 (= (isPrefix!831 lt!257064 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))) lt!257177)))

(declare-fun b!603097 () Bool)

(declare-fun res!261099 () Bool)

(assert (=> b!603097 (=> (not res!261099) (not e!365464))))

(assert (=> b!603097 (= res!261099 (= (head!1277 lt!257064) (head!1277 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))))))

(declare-fun b!603096 () Bool)

(assert (=> b!603096 (= e!365465 e!365464)))

(declare-fun res!261097 () Bool)

(assert (=> b!603096 (=> (not res!261097) (not e!365464))))

(assert (=> b!603096 (= res!261097 (not ((_ is Nil!6034) (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))))))

(declare-fun b!603099 () Bool)

(assert (=> b!603099 (= e!365463 (>= (size!4747 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))) (size!4747 lt!257064)))))

(assert (= (and d!212131 (not res!261100)) b!603096))

(assert (= (and b!603096 res!261097) b!603097))

(assert (= (and b!603097 res!261099) b!603098))

(assert (= (and d!212131 (not res!261098)) b!603099))

(declare-fun m!868229 () Bool)

(assert (=> b!603098 m!868229))

(assert (=> b!603098 m!867829))

(declare-fun m!868231 () Bool)

(assert (=> b!603098 m!868231))

(assert (=> b!603098 m!868229))

(assert (=> b!603098 m!868231))

(declare-fun m!868233 () Bool)

(assert (=> b!603098 m!868233))

(declare-fun m!868235 () Bool)

(assert (=> b!603097 m!868235))

(assert (=> b!603097 m!867829))

(declare-fun m!868237 () Bool)

(assert (=> b!603097 m!868237))

(assert (=> b!603099 m!867829))

(declare-fun m!868239 () Bool)

(assert (=> b!603099 m!868239))

(assert (=> b!603099 m!867819))

(assert (=> b!602837 d!212131))

(declare-fun d!212133 () Bool)

(assert (=> d!212133 (= (_2!3720 (v!16450 lt!257061)) lt!257068)))

(declare-fun lt!257180 () Unit!10988)

(declare-fun choose!4403 (List!6044 List!6044 List!6044 List!6044 List!6044) Unit!10988)

(assert (=> d!212133 (= lt!257180 (choose!4403 lt!257064 (_2!3720 (v!16450 lt!257061)) lt!257064 lt!257068 input!2705))))

(assert (=> d!212133 (isPrefix!831 lt!257064 input!2705)))

(assert (=> d!212133 (= (lemmaSamePrefixThenSameSuffix!544 lt!257064 (_2!3720 (v!16450 lt!257061)) lt!257064 lt!257068 input!2705) lt!257180)))

(declare-fun bs!71045 () Bool)

(assert (= bs!71045 d!212133))

(declare-fun m!868241 () Bool)

(assert (=> bs!71045 m!868241))

(declare-fun m!868243 () Bool)

(assert (=> bs!71045 m!868243))

(assert (=> b!602837 d!212133))

(declare-fun d!212135 () Bool)

(assert (=> d!212135 (and (= lt!257067 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!257183 () Unit!10988)

(declare-fun choose!4404 (List!6044 List!6044 List!6044 List!6044) Unit!10988)

(assert (=> d!212135 (= lt!257183 (choose!4404 lt!257067 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!212135 (= (++!1691 lt!257067 suffix!1342) (++!1691 input!2705 suffix!1342))))

(assert (=> d!212135 (= (lemmaConcatSameAndSameSizesThenSameLists!276 lt!257067 suffix!1342 input!2705 suffix!1342) lt!257183)))

(declare-fun bs!71046 () Bool)

(assert (= bs!71046 d!212135))

(declare-fun m!868245 () Bool)

(assert (=> bs!71046 m!868245))

(assert (=> bs!71046 m!867863))

(assert (=> bs!71046 m!867785))

(assert (=> b!602837 d!212135))

(declare-fun d!212137 () Bool)

(assert (=> d!212137 (isPrefix!831 lt!257067 (++!1691 lt!257067 suffix!1342))))

(declare-fun lt!257184 () Unit!10988)

(assert (=> d!212137 (= lt!257184 (choose!4402 lt!257067 suffix!1342))))

(assert (=> d!212137 (= (lemmaConcatTwoListThenFirstIsPrefix!676 lt!257067 suffix!1342) lt!257184)))

(declare-fun bs!71047 () Bool)

(assert (= bs!71047 d!212137))

(assert (=> bs!71047 m!867863))

(assert (=> bs!71047 m!867863))

(declare-fun m!868247 () Bool)

(assert (=> bs!71047 m!868247))

(declare-fun m!868249 () Bool)

(assert (=> bs!71047 m!868249))

(assert (=> b!602837 d!212137))

(declare-fun d!212139 () Bool)

(declare-fun lt!257185 () Int)

(assert (=> d!212139 (>= lt!257185 0)))

(declare-fun e!365466 () Int)

(assert (=> d!212139 (= lt!257185 e!365466)))

(declare-fun c!111853 () Bool)

(assert (=> d!212139 (= c!111853 ((_ is Nil!6034) lt!257064))))

(assert (=> d!212139 (= (size!4747 lt!257064) lt!257185)))

(declare-fun b!603100 () Bool)

(assert (=> b!603100 (= e!365466 0)))

(declare-fun b!603101 () Bool)

(assert (=> b!603101 (= e!365466 (+ 1 (size!4747 (t!80045 lt!257064))))))

(assert (= (and d!212139 c!111853) b!603100))

(assert (= (and d!212139 (not c!111853)) b!603101))

(declare-fun m!868251 () Bool)

(assert (=> b!603101 m!868251))

(assert (=> b!602837 d!212139))

(declare-fun b!603104 () Bool)

(declare-fun e!365468 () Bool)

(assert (=> b!603104 (= e!365468 (isPrefix!831 (tail!807 input!2705) (tail!807 input!2705)))))

(declare-fun d!212141 () Bool)

(declare-fun e!365467 () Bool)

(assert (=> d!212141 e!365467))

(declare-fun res!261102 () Bool)

(assert (=> d!212141 (=> res!261102 e!365467)))

(declare-fun lt!257186 () Bool)

(assert (=> d!212141 (= res!261102 (not lt!257186))))

(declare-fun e!365469 () Bool)

(assert (=> d!212141 (= lt!257186 e!365469)))

(declare-fun res!261104 () Bool)

(assert (=> d!212141 (=> res!261104 e!365469)))

(assert (=> d!212141 (= res!261104 ((_ is Nil!6034) input!2705))))

(assert (=> d!212141 (= (isPrefix!831 input!2705 input!2705) lt!257186)))

(declare-fun b!603103 () Bool)

(declare-fun res!261103 () Bool)

(assert (=> b!603103 (=> (not res!261103) (not e!365468))))

(assert (=> b!603103 (= res!261103 (= (head!1277 input!2705) (head!1277 input!2705)))))

(declare-fun b!603102 () Bool)

(assert (=> b!603102 (= e!365469 e!365468)))

(declare-fun res!261101 () Bool)

(assert (=> b!603102 (=> (not res!261101) (not e!365468))))

(assert (=> b!603102 (= res!261101 (not ((_ is Nil!6034) input!2705)))))

(declare-fun b!603105 () Bool)

(assert (=> b!603105 (= e!365467 (>= (size!4747 input!2705) (size!4747 input!2705)))))

(assert (= (and d!212141 (not res!261104)) b!603102))

(assert (= (and b!603102 res!261101) b!603103))

(assert (= (and b!603103 res!261103) b!603104))

(assert (= (and d!212141 (not res!261102)) b!603105))

(declare-fun m!868253 () Bool)

(assert (=> b!603104 m!868253))

(assert (=> b!603104 m!868253))

(assert (=> b!603104 m!868253))

(assert (=> b!603104 m!868253))

(declare-fun m!868255 () Bool)

(assert (=> b!603104 m!868255))

(declare-fun m!868257 () Bool)

(assert (=> b!603103 m!868257))

(assert (=> b!603103 m!868257))

(assert (=> b!603105 m!868105))

(assert (=> b!603105 m!868105))

(assert (=> b!602837 d!212141))

(declare-fun d!212143 () Bool)

(declare-fun fromListB!606 (List!6044) BalanceConc!3848)

(assert (=> d!212143 (= (seqFromList!1379 lt!257064) (fromListB!606 lt!257064))))

(declare-fun bs!71048 () Bool)

(assert (= bs!71048 d!212143))

(declare-fun m!868259 () Bool)

(assert (=> bs!71048 m!868259))

(assert (=> b!602837 d!212143))

(declare-fun d!212145 () Bool)

(declare-fun lt!257187 () BalanceConc!3848)

(assert (=> d!212145 (= (list!2532 lt!257187) (originalCharacters!1242 (_1!3720 (v!16450 lt!257061))))))

(assert (=> d!212145 (= lt!257187 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212145 (= (charsOf!832 (_1!3720 (v!16450 lt!257061))) lt!257187)))

(declare-fun b_lambda!23799 () Bool)

(assert (=> (not b_lambda!23799) (not d!212145)))

(declare-fun tb!52555 () Bool)

(declare-fun t!80069 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80069) tb!52555))

(declare-fun b!603106 () Bool)

(declare-fun e!365470 () Bool)

(declare-fun tp!187642 () Bool)

(assert (=> b!603106 (= e!365470 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))) tp!187642))))

(declare-fun result!59134 () Bool)

(assert (=> tb!52555 (= result!59134 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))) e!365470))))

(assert (= tb!52555 b!603106))

(declare-fun m!868261 () Bool)

(assert (=> b!603106 m!868261))

(declare-fun m!868263 () Bool)

(assert (=> tb!52555 m!868263))

(assert (=> d!212145 t!80069))

(declare-fun b_and!59575 () Bool)

(assert (= b_and!59571 (and (=> t!80069 result!59134) b_and!59575)))

(declare-fun t!80071 () Bool)

(declare-fun tb!52557 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80071) tb!52557))

(declare-fun result!59136 () Bool)

(assert (= result!59136 result!59134))

(assert (=> d!212145 t!80071))

(declare-fun b_and!59577 () Bool)

(assert (= b_and!59573 (and (=> t!80071 result!59136) b_and!59577)))

(declare-fun m!868265 () Bool)

(assert (=> d!212145 m!868265))

(declare-fun m!868267 () Bool)

(assert (=> d!212145 m!868267))

(assert (=> b!602837 d!212145))

(declare-fun d!212147 () Bool)

(assert (=> d!212147 (ruleValid!401 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))))))

(declare-fun lt!257190 () Unit!10988)

(declare-fun choose!4405 (LexerInterface!1089 Rule!2206 List!6046) Unit!10988)

(assert (=> d!212147 (= lt!257190 (choose!4405 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) rules!3103))))

(assert (=> d!212147 (contains!1415 rules!3103 (rule!1979 (_1!3720 (v!16450 lt!257061))))))

(assert (=> d!212147 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!248 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) rules!3103) lt!257190)))

(declare-fun bs!71049 () Bool)

(assert (= bs!71049 d!212147))

(assert (=> bs!71049 m!867835))

(declare-fun m!868269 () Bool)

(assert (=> bs!71049 m!868269))

(declare-fun m!868271 () Bool)

(assert (=> bs!71049 m!868271))

(assert (=> b!602837 d!212147))

(declare-fun d!212149 () Bool)

(assert (=> d!212149 (ruleValid!401 thiss!22590 (rule!1979 token!491))))

(declare-fun lt!257191 () Unit!10988)

(assert (=> d!212149 (= lt!257191 (choose!4405 thiss!22590 (rule!1979 token!491) rules!3103))))

(assert (=> d!212149 (contains!1415 rules!3103 (rule!1979 token!491))))

(assert (=> d!212149 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!248 thiss!22590 (rule!1979 token!491) rules!3103) lt!257191)))

(declare-fun bs!71050 () Bool)

(assert (= bs!71050 d!212149))

(assert (=> bs!71050 m!867811))

(declare-fun m!868273 () Bool)

(assert (=> bs!71050 m!868273))

(assert (=> bs!71050 m!867777))

(assert (=> b!602837 d!212149))

(declare-fun d!212151 () Bool)

(assert (=> d!212151 (isPrefix!831 input!2705 (++!1691 input!2705 suffix!1342))))

(declare-fun lt!257192 () Unit!10988)

(assert (=> d!212151 (= lt!257192 (choose!4402 input!2705 suffix!1342))))

(assert (=> d!212151 (= (lemmaConcatTwoListThenFirstIsPrefix!676 input!2705 suffix!1342) lt!257192)))

(declare-fun bs!71051 () Bool)

(assert (= bs!71051 d!212151))

(assert (=> bs!71051 m!867785))

(assert (=> bs!71051 m!867785))

(declare-fun m!868275 () Bool)

(assert (=> bs!71051 m!868275))

(declare-fun m!868277 () Bool)

(assert (=> bs!71051 m!868277))

(assert (=> b!602837 d!212151))

(declare-fun b!603109 () Bool)

(declare-fun e!365472 () Bool)

(assert (=> b!603109 (= e!365472 (isPrefix!831 (tail!807 input!2705) (tail!807 lt!257055)))))

(declare-fun d!212153 () Bool)

(declare-fun e!365471 () Bool)

(assert (=> d!212153 e!365471))

(declare-fun res!261106 () Bool)

(assert (=> d!212153 (=> res!261106 e!365471)))

(declare-fun lt!257193 () Bool)

(assert (=> d!212153 (= res!261106 (not lt!257193))))

(declare-fun e!365473 () Bool)

(assert (=> d!212153 (= lt!257193 e!365473)))

(declare-fun res!261108 () Bool)

(assert (=> d!212153 (=> res!261108 e!365473)))

(assert (=> d!212153 (= res!261108 ((_ is Nil!6034) input!2705))))

(assert (=> d!212153 (= (isPrefix!831 input!2705 lt!257055) lt!257193)))

(declare-fun b!603108 () Bool)

(declare-fun res!261107 () Bool)

(assert (=> b!603108 (=> (not res!261107) (not e!365472))))

(assert (=> b!603108 (= res!261107 (= (head!1277 input!2705) (head!1277 lt!257055)))))

(declare-fun b!603107 () Bool)

(assert (=> b!603107 (= e!365473 e!365472)))

(declare-fun res!261105 () Bool)

(assert (=> b!603107 (=> (not res!261105) (not e!365472))))

(assert (=> b!603107 (= res!261105 (not ((_ is Nil!6034) lt!257055)))))

(declare-fun b!603110 () Bool)

(assert (=> b!603110 (= e!365471 (>= (size!4747 lt!257055) (size!4747 input!2705)))))

(assert (= (and d!212153 (not res!261108)) b!603107))

(assert (= (and b!603107 res!261105) b!603108))

(assert (= (and b!603108 res!261107) b!603109))

(assert (= (and d!212153 (not res!261106)) b!603110))

(assert (=> b!603109 m!868253))

(assert (=> b!603109 m!868193))

(assert (=> b!603109 m!868253))

(assert (=> b!603109 m!868193))

(declare-fun m!868279 () Bool)

(assert (=> b!603109 m!868279))

(assert (=> b!603108 m!868257))

(assert (=> b!603108 m!868199))

(assert (=> b!603110 m!868201))

(assert (=> b!603110 m!868105))

(assert (=> b!602837 d!212153))

(declare-fun d!212155 () Bool)

(declare-fun lt!257196 () List!6044)

(assert (=> d!212155 (= (++!1691 lt!257064 lt!257196) input!2705)))

(declare-fun e!365476 () List!6044)

(assert (=> d!212155 (= lt!257196 e!365476)))

(declare-fun c!111856 () Bool)

(assert (=> d!212155 (= c!111856 ((_ is Cons!6034) lt!257064))))

(assert (=> d!212155 (>= (size!4747 input!2705) (size!4747 lt!257064))))

(assert (=> d!212155 (= (getSuffix!348 input!2705 lt!257064) lt!257196)))

(declare-fun b!603115 () Bool)

(assert (=> b!603115 (= e!365476 (getSuffix!348 (tail!807 input!2705) (t!80045 lt!257064)))))

(declare-fun b!603116 () Bool)

(assert (=> b!603116 (= e!365476 input!2705)))

(assert (= (and d!212155 c!111856) b!603115))

(assert (= (and d!212155 (not c!111856)) b!603116))

(declare-fun m!868281 () Bool)

(assert (=> d!212155 m!868281))

(assert (=> d!212155 m!868105))

(assert (=> d!212155 m!867819))

(assert (=> b!603115 m!868253))

(assert (=> b!603115 m!868253))

(declare-fun m!868283 () Bool)

(assert (=> b!603115 m!868283))

(assert (=> b!602837 d!212155))

(declare-fun d!212157 () Bool)

(assert (=> d!212157 (isPrefix!831 input!2705 input!2705)))

(declare-fun lt!257199 () Unit!10988)

(declare-fun choose!4406 (List!6044 List!6044) Unit!10988)

(assert (=> d!212157 (= lt!257199 (choose!4406 input!2705 input!2705))))

(assert (=> d!212157 (= (lemmaIsPrefixRefl!567 input!2705 input!2705) lt!257199)))

(declare-fun bs!71052 () Bool)

(assert (= bs!71052 d!212157))

(assert (=> bs!71052 m!867827))

(declare-fun m!868285 () Bool)

(assert (=> bs!71052 m!868285))

(assert (=> b!602837 d!212157))

(declare-fun d!212159 () Bool)

(assert (=> d!212159 (= (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 lt!257064)) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064)))))

(declare-fun b_lambda!23801 () Bool)

(assert (=> (not b_lambda!23801) (not d!212159)))

(declare-fun t!80073 () Bool)

(declare-fun tb!52559 () Bool)

(assert (=> (and b!602830 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80073) tb!52559))

(declare-fun result!59138 () Bool)

(assert (=> tb!52559 (= result!59138 (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))))))

(declare-fun m!868287 () Bool)

(assert (=> tb!52559 m!868287))

(assert (=> d!212159 t!80073))

(declare-fun b_and!59579 () Bool)

(assert (= b_and!59563 (and (=> t!80073 result!59138) b_and!59579)))

(declare-fun tb!52561 () Bool)

(declare-fun t!80075 () Bool)

(assert (=> (and b!602815 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80075) tb!52561))

(declare-fun result!59140 () Bool)

(assert (= result!59140 result!59138))

(assert (=> d!212159 t!80075))

(declare-fun b_and!59581 () Bool)

(assert (= b_and!59565 (and (=> t!80075 result!59140) b_and!59581)))

(assert (=> d!212159 m!867831))

(declare-fun m!868289 () Bool)

(assert (=> d!212159 m!868289))

(assert (=> b!602837 d!212159))

(declare-fun d!212161 () Bool)

(declare-fun lt!257200 () Int)

(assert (=> d!212161 (>= lt!257200 0)))

(declare-fun e!365478 () Int)

(assert (=> d!212161 (= lt!257200 e!365478)))

(declare-fun c!111857 () Bool)

(assert (=> d!212161 (= c!111857 ((_ is Nil!6034) lt!257067))))

(assert (=> d!212161 (= (size!4747 lt!257067) lt!257200)))

(declare-fun b!603117 () Bool)

(assert (=> b!603117 (= e!365478 0)))

(declare-fun b!603118 () Bool)

(assert (=> b!603118 (= e!365478 (+ 1 (size!4747 (t!80045 lt!257067))))))

(assert (= (and d!212161 c!111857) b!603117))

(assert (= (and d!212161 (not c!111857)) b!603118))

(declare-fun m!868291 () Bool)

(assert (=> b!603118 m!868291))

(assert (=> b!602837 d!212161))

(declare-fun b!603121 () Bool)

(declare-fun e!365480 () Bool)

(assert (=> b!603121 (= e!365480 (isPrefix!831 (tail!807 input!2705) (tail!807 lt!257052)))))

(declare-fun d!212163 () Bool)

(declare-fun e!365479 () Bool)

(assert (=> d!212163 e!365479))

(declare-fun res!261110 () Bool)

(assert (=> d!212163 (=> res!261110 e!365479)))

(declare-fun lt!257201 () Bool)

(assert (=> d!212163 (= res!261110 (not lt!257201))))

(declare-fun e!365481 () Bool)

(assert (=> d!212163 (= lt!257201 e!365481)))

(declare-fun res!261112 () Bool)

(assert (=> d!212163 (=> res!261112 e!365481)))

(assert (=> d!212163 (= res!261112 ((_ is Nil!6034) input!2705))))

(assert (=> d!212163 (= (isPrefix!831 input!2705 lt!257052) lt!257201)))

(declare-fun b!603120 () Bool)

(declare-fun res!261111 () Bool)

(assert (=> b!603120 (=> (not res!261111) (not e!365480))))

(assert (=> b!603120 (= res!261111 (= (head!1277 input!2705) (head!1277 lt!257052)))))

(declare-fun b!603119 () Bool)

(assert (=> b!603119 (= e!365481 e!365480)))

(declare-fun res!261109 () Bool)

(assert (=> b!603119 (=> (not res!261109) (not e!365480))))

(assert (=> b!603119 (= res!261109 (not ((_ is Nil!6034) lt!257052)))))

(declare-fun b!603122 () Bool)

(assert (=> b!603122 (= e!365479 (>= (size!4747 lt!257052) (size!4747 input!2705)))))

(assert (= (and d!212163 (not res!261112)) b!603119))

(assert (= (and b!603119 res!261109) b!603120))

(assert (= (and b!603120 res!261111) b!603121))

(assert (= (and d!212163 (not res!261110)) b!603122))

(assert (=> b!603121 m!868253))

(declare-fun m!868293 () Bool)

(assert (=> b!603121 m!868293))

(assert (=> b!603121 m!868253))

(assert (=> b!603121 m!868293))

(declare-fun m!868295 () Bool)

(assert (=> b!603121 m!868295))

(assert (=> b!603120 m!868257))

(declare-fun m!868297 () Bool)

(assert (=> b!603120 m!868297))

(assert (=> b!603122 m!868167))

(assert (=> b!603122 m!868105))

(assert (=> b!602837 d!212163))

(declare-fun d!212165 () Bool)

(declare-fun e!365482 () Bool)

(assert (=> d!212165 e!365482))

(declare-fun res!261113 () Bool)

(assert (=> d!212165 (=> (not res!261113) (not e!365482))))

(assert (=> d!212165 (= res!261113 (semiInverseModEq!478 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))))))

(declare-fun Unit!10994 () Unit!10988)

(assert (=> d!212165 (= (lemmaInv!311 (transformation!1203 (rule!1979 token!491))) Unit!10994)))

(declare-fun b!603123 () Bool)

(assert (=> b!603123 (= e!365482 (equivClasses!461 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))))))

(assert (= (and d!212165 res!261113) b!603123))

(assert (=> d!212165 m!868117))

(assert (=> b!603123 m!868119))

(assert (=> b!602837 d!212165))

(declare-fun d!212167 () Bool)

(assert (=> d!212167 (= (size!4746 token!491) (size!4747 (originalCharacters!1242 token!491)))))

(declare-fun Unit!10995 () Unit!10988)

(assert (=> d!212167 (= (lemmaCharactersSize!262 token!491) Unit!10995)))

(declare-fun bs!71053 () Bool)

(assert (= bs!71053 d!212167))

(assert (=> bs!71053 m!867805))

(assert (=> b!602837 d!212167))

(declare-fun d!212169 () Bool)

(assert (=> d!212169 (= (list!2532 (charsOf!832 (_1!3720 (v!16450 lt!257061)))) (list!2533 (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun bs!71054 () Bool)

(assert (= bs!71054 d!212169))

(declare-fun m!868299 () Bool)

(assert (=> bs!71054 m!868299))

(assert (=> b!602837 d!212169))

(declare-fun d!212171 () Bool)

(assert (=> d!212171 (= (maxPrefixOneRule!450 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) input!2705) (Some!1553 (tuple2!6913 (Token!2143 (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 lt!257064)) (rule!1979 (_1!3720 (v!16450 lt!257061))) (size!4747 lt!257064) lt!257064) (_2!3720 (v!16450 lt!257061)))))))

(declare-fun lt!257204 () Unit!10988)

(declare-fun choose!4408 (LexerInterface!1089 List!6046 List!6044 List!6044 List!6044 Rule!2206) Unit!10988)

(assert (=> d!212171 (= lt!257204 (choose!4408 thiss!22590 rules!3103 lt!257064 input!2705 (_2!3720 (v!16450 lt!257061)) (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212171 (not (isEmpty!4356 rules!3103))))

(assert (=> d!212171 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!156 thiss!22590 rules!3103 lt!257064 input!2705 (_2!3720 (v!16450 lt!257061)) (rule!1979 (_1!3720 (v!16450 lt!257061)))) lt!257204)))

(declare-fun bs!71055 () Bool)

(assert (= bs!71055 d!212171))

(assert (=> bs!71055 m!867819))

(assert (=> bs!71055 m!867831))

(assert (=> bs!71055 m!867859))

(assert (=> bs!71055 m!867803))

(assert (=> bs!71055 m!867773))

(assert (=> bs!71055 m!867831))

(declare-fun m!868301 () Bool)

(assert (=> bs!71055 m!868301))

(assert (=> b!602820 d!212171))

(declare-fun d!212173 () Bool)

(assert (=> d!212173 (= (apply!1456 (transformation!1203 (rule!1979 token!491)) lt!257076) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))

(declare-fun b_lambda!23803 () Bool)

(assert (=> (not b_lambda!23803) (not d!212173)))

(assert (=> d!212173 t!80061))

(declare-fun b_and!59583 () Bool)

(assert (= b_and!59579 (and (=> t!80061 result!59124) b_and!59583)))

(assert (=> d!212173 t!80063))

(declare-fun b_and!59585 () Bool)

(assert (= b_and!59581 (and (=> t!80063 result!59128) b_and!59585)))

(assert (=> d!212173 m!868077))

(assert (=> b!602820 d!212173))

(declare-fun d!212175 () Bool)

(declare-fun lt!257207 () Bool)

(declare-fun content!1092 (List!6046) (InoxSet Rule!2206))

(assert (=> d!212175 (= lt!257207 (select (content!1092 rules!3103) (rule!1979 token!491)))))

(declare-fun e!365487 () Bool)

(assert (=> d!212175 (= lt!257207 e!365487)))

(declare-fun res!261118 () Bool)

(assert (=> d!212175 (=> (not res!261118) (not e!365487))))

(assert (=> d!212175 (= res!261118 ((_ is Cons!6036) rules!3103))))

(assert (=> d!212175 (= (contains!1415 rules!3103 (rule!1979 token!491)) lt!257207)))

(declare-fun b!603128 () Bool)

(declare-fun e!365488 () Bool)

(assert (=> b!603128 (= e!365487 e!365488)))

(declare-fun res!261119 () Bool)

(assert (=> b!603128 (=> res!261119 e!365488)))

(assert (=> b!603128 (= res!261119 (= (h!11437 rules!3103) (rule!1979 token!491)))))

(declare-fun b!603129 () Bool)

(assert (=> b!603129 (= e!365488 (contains!1415 (t!80047 rules!3103) (rule!1979 token!491)))))

(assert (= (and d!212175 res!261118) b!603128))

(assert (= (and b!603128 (not res!261119)) b!603129))

(declare-fun m!868303 () Bool)

(assert (=> d!212175 m!868303))

(declare-fun m!868305 () Bool)

(assert (=> d!212175 m!868305))

(declare-fun m!868307 () Bool)

(assert (=> b!603129 m!868307))

(assert (=> b!602820 d!212175))

(declare-fun b!603148 () Bool)

(declare-fun e!365498 () Bool)

(declare-fun lt!257219 () Option!1554)

(assert (=> b!603148 (= e!365498 (= (size!4746 (_1!3720 (get!2319 lt!257219))) (size!4747 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219))))))))

(declare-fun b!603149 () Bool)

(declare-fun e!365500 () Bool)

(declare-datatypes ((tuple2!6916 0))(
  ( (tuple2!6917 (_1!3722 List!6044) (_2!3722 List!6044)) )
))
(declare-fun findLongestMatchInner!197 (Regex!1537 List!6044 Int List!6044 List!6044 Int) tuple2!6916)

(assert (=> b!603149 (= e!365500 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(declare-fun d!212177 () Bool)

(declare-fun e!365499 () Bool)

(assert (=> d!212177 e!365499))

(declare-fun res!261137 () Bool)

(assert (=> d!212177 (=> res!261137 e!365499)))

(assert (=> d!212177 (= res!261137 (isEmpty!4357 lt!257219))))

(declare-fun e!365497 () Option!1554)

(assert (=> d!212177 (= lt!257219 e!365497)))

(declare-fun c!111860 () Bool)

(declare-fun lt!257218 () tuple2!6916)

(assert (=> d!212177 (= c!111860 (isEmpty!4355 (_1!3722 lt!257218)))))

(declare-fun findLongestMatch!176 (Regex!1537 List!6044) tuple2!6916)

(assert (=> d!212177 (= lt!257218 (findLongestMatch!176 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) input!2705))))

(assert (=> d!212177 (ruleValid!401 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))))))

(assert (=> d!212177 (= (maxPrefixOneRule!450 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) input!2705) lt!257219)))

(declare-fun b!603150 () Bool)

(declare-fun res!261140 () Bool)

(assert (=> b!603150 (=> (not res!261140) (not e!365498))))

(assert (=> b!603150 (= res!261140 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))) (_2!3720 (get!2319 lt!257219))) input!2705))))

(declare-fun b!603151 () Bool)

(assert (=> b!603151 (= e!365499 e!365498)))

(declare-fun res!261135 () Bool)

(assert (=> b!603151 (=> (not res!261135) (not e!365498))))

(assert (=> b!603151 (= res!261135 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))))))

(declare-fun b!603152 () Bool)

(declare-fun res!261139 () Bool)

(assert (=> b!603152 (=> (not res!261139) (not e!365498))))

(assert (=> b!603152 (= res!261139 (= (rule!1979 (_1!3720 (get!2319 lt!257219))) (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(declare-fun b!603153 () Bool)

(assert (=> b!603153 (= e!365497 None!1553)))

(declare-fun b!603154 () Bool)

(declare-fun res!261136 () Bool)

(assert (=> b!603154 (=> (not res!261136) (not e!365498))))

(assert (=> b!603154 (= res!261136 (< (size!4747 (_2!3720 (get!2319 lt!257219))) (size!4747 input!2705)))))

(declare-fun b!603155 () Bool)

(declare-fun res!261134 () Bool)

(assert (=> b!603155 (=> (not res!261134) (not e!365498))))

(assert (=> b!603155 (= res!261134 (= (value!39152 (_1!3720 (get!2319 lt!257219))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))))))))

(declare-fun b!603156 () Bool)

(declare-fun size!4749 (BalanceConc!3848) Int)

(assert (=> b!603156 (= e!365497 (Some!1553 (tuple2!6913 (Token!2143 (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 (_1!3722 lt!257218))) (rule!1979 (_1!3720 (v!16450 lt!257061))) (size!4749 (seqFromList!1379 (_1!3722 lt!257218))) (_1!3722 lt!257218)) (_2!3722 lt!257218))))))

(declare-fun lt!257220 () Unit!10988)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!181 (Regex!1537 List!6044) Unit!10988)

(assert (=> b!603156 (= lt!257220 (longestMatchIsAcceptedByMatchOrIsEmpty!181 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) input!2705))))

(declare-fun res!261138 () Bool)

(assert (=> b!603156 (= res!261138 (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(assert (=> b!603156 (=> res!261138 e!365500)))

(assert (=> b!603156 e!365500))

(declare-fun lt!257222 () Unit!10988)

(assert (=> b!603156 (= lt!257222 lt!257220)))

(declare-fun lt!257221 () Unit!10988)

(assert (=> b!603156 (= lt!257221 (lemmaSemiInverse!236 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 (_1!3722 lt!257218))))))

(assert (= (and d!212177 c!111860) b!603153))

(assert (= (and d!212177 (not c!111860)) b!603156))

(assert (= (and b!603156 (not res!261138)) b!603149))

(assert (= (and d!212177 (not res!261137)) b!603151))

(assert (= (and b!603151 res!261135) b!603150))

(assert (= (and b!603150 res!261140) b!603154))

(assert (= (and b!603154 res!261136) b!603152))

(assert (= (and b!603152 res!261139) b!603155))

(assert (= (and b!603155 res!261134) b!603148))

(declare-fun m!868309 () Bool)

(assert (=> b!603148 m!868309))

(declare-fun m!868311 () Bool)

(assert (=> b!603148 m!868311))

(assert (=> b!603154 m!868309))

(declare-fun m!868313 () Bool)

(assert (=> b!603154 m!868313))

(assert (=> b!603154 m!868105))

(declare-fun m!868315 () Bool)

(assert (=> d!212177 m!868315))

(declare-fun m!868317 () Bool)

(assert (=> d!212177 m!868317))

(declare-fun m!868319 () Bool)

(assert (=> d!212177 m!868319))

(assert (=> d!212177 m!867835))

(assert (=> b!603152 m!868309))

(assert (=> b!603151 m!868309))

(declare-fun m!868321 () Bool)

(assert (=> b!603151 m!868321))

(assert (=> b!603151 m!868321))

(declare-fun m!868323 () Bool)

(assert (=> b!603151 m!868323))

(assert (=> b!603151 m!868323))

(declare-fun m!868325 () Bool)

(assert (=> b!603151 m!868325))

(declare-fun m!868327 () Bool)

(assert (=> b!603149 m!868327))

(assert (=> b!603149 m!868105))

(assert (=> b!603149 m!868327))

(assert (=> b!603149 m!868105))

(declare-fun m!868329 () Bool)

(assert (=> b!603149 m!868329))

(declare-fun m!868331 () Bool)

(assert (=> b!603149 m!868331))

(assert (=> b!603150 m!868309))

(assert (=> b!603150 m!868321))

(assert (=> b!603150 m!868321))

(assert (=> b!603150 m!868323))

(assert (=> b!603150 m!868323))

(declare-fun m!868333 () Bool)

(assert (=> b!603150 m!868333))

(assert (=> b!603155 m!868309))

(declare-fun m!868339 () Bool)

(assert (=> b!603155 m!868339))

(assert (=> b!603155 m!868339))

(declare-fun m!868341 () Bool)

(assert (=> b!603155 m!868341))

(declare-fun m!868343 () Bool)

(assert (=> b!603156 m!868343))

(declare-fun m!868345 () Bool)

(assert (=> b!603156 m!868345))

(declare-fun m!868347 () Bool)

(assert (=> b!603156 m!868347))

(assert (=> b!603156 m!868105))

(assert (=> b!603156 m!868345))

(assert (=> b!603156 m!868345))

(declare-fun m!868351 () Bool)

(assert (=> b!603156 m!868351))

(assert (=> b!603156 m!868327))

(declare-fun m!868355 () Bool)

(assert (=> b!603156 m!868355))

(assert (=> b!603156 m!868327))

(assert (=> b!603156 m!868105))

(assert (=> b!603156 m!868329))

(assert (=> b!603156 m!868345))

(declare-fun m!868361 () Bool)

(assert (=> b!603156 m!868361))

(assert (=> b!602820 d!212177))

(declare-fun d!212179 () Bool)

(declare-fun lt!257224 () List!6044)

(assert (=> d!212179 (= (++!1691 lt!257067 lt!257224) lt!257052)))

(declare-fun e!365505 () List!6044)

(assert (=> d!212179 (= lt!257224 e!365505)))

(declare-fun c!111861 () Bool)

(assert (=> d!212179 (= c!111861 ((_ is Cons!6034) lt!257067))))

(assert (=> d!212179 (>= (size!4747 lt!257052) (size!4747 lt!257067))))

(assert (=> d!212179 (= (getSuffix!348 lt!257052 lt!257067) lt!257224)))

(declare-fun b!603163 () Bool)

(assert (=> b!603163 (= e!365505 (getSuffix!348 (tail!807 lt!257052) (t!80045 lt!257067)))))

(declare-fun b!603164 () Bool)

(assert (=> b!603164 (= e!365505 lt!257052)))

(assert (= (and d!212179 c!111861) b!603163))

(assert (= (and d!212179 (not c!111861)) b!603164))

(declare-fun m!868365 () Bool)

(assert (=> d!212179 m!868365))

(assert (=> d!212179 m!868167))

(assert (=> d!212179 m!867833))

(assert (=> b!603163 m!868293))

(assert (=> b!603163 m!868293))

(declare-fun m!868367 () Bool)

(assert (=> b!603163 m!868367))

(assert (=> b!602820 d!212179))

(declare-fun d!212185 () Bool)

(assert (=> d!212185 (= suffix!1342 lt!257060)))

(declare-fun lt!257225 () Unit!10988)

(assert (=> d!212185 (= lt!257225 (choose!4403 lt!257067 suffix!1342 lt!257067 lt!257060 lt!257052))))

(assert (=> d!212185 (isPrefix!831 lt!257067 lt!257052)))

(assert (=> d!212185 (= (lemmaSamePrefixThenSameSuffix!544 lt!257067 suffix!1342 lt!257067 lt!257060 lt!257052) lt!257225)))

(declare-fun bs!71057 () Bool)

(assert (= bs!71057 d!212185))

(declare-fun m!868369 () Bool)

(assert (=> bs!71057 m!868369))

(declare-fun m!868371 () Bool)

(assert (=> bs!71057 m!868371))

(assert (=> b!602820 d!212185))

(declare-fun d!212187 () Bool)

(assert (=> d!212187 (= (seqFromList!1379 lt!257067) (fromListB!606 lt!257067))))

(declare-fun bs!71058 () Bool)

(assert (= bs!71058 d!212187))

(declare-fun m!868373 () Bool)

(assert (=> bs!71058 m!868373))

(assert (=> b!602820 d!212187))

(declare-fun b!603165 () Bool)

(declare-fun e!365507 () List!6044)

(assert (=> b!603165 (= e!365507 suffix!1342)))

(declare-fun d!212189 () Bool)

(declare-fun e!365506 () Bool)

(assert (=> d!212189 e!365506))

(declare-fun res!261142 () Bool)

(assert (=> d!212189 (=> (not res!261142) (not e!365506))))

(declare-fun lt!257226 () List!6044)

(assert (=> d!212189 (= res!261142 (= (content!1089 lt!257226) ((_ map or) (content!1089 lt!257067) (content!1089 suffix!1342))))))

(assert (=> d!212189 (= lt!257226 e!365507)))

(declare-fun c!111862 () Bool)

(assert (=> d!212189 (= c!111862 ((_ is Nil!6034) lt!257067))))

(assert (=> d!212189 (= (++!1691 lt!257067 suffix!1342) lt!257226)))

(declare-fun b!603167 () Bool)

(declare-fun res!261141 () Bool)

(assert (=> b!603167 (=> (not res!261141) (not e!365506))))

(assert (=> b!603167 (= res!261141 (= (size!4747 lt!257226) (+ (size!4747 lt!257067) (size!4747 suffix!1342))))))

(declare-fun b!603166 () Bool)

(assert (=> b!603166 (= e!365507 (Cons!6034 (h!11435 lt!257067) (++!1691 (t!80045 lt!257067) suffix!1342)))))

(declare-fun b!603168 () Bool)

(assert (=> b!603168 (= e!365506 (or (not (= suffix!1342 Nil!6034)) (= lt!257226 lt!257067)))))

(assert (= (and d!212189 c!111862) b!603165))

(assert (= (and d!212189 (not c!111862)) b!603166))

(assert (= (and d!212189 res!261142) b!603167))

(assert (= (and b!603167 res!261141) b!603168))

(declare-fun m!868375 () Bool)

(assert (=> d!212189 m!868375))

(declare-fun m!868377 () Bool)

(assert (=> d!212189 m!868377))

(assert (=> d!212189 m!868177))

(declare-fun m!868379 () Bool)

(assert (=> b!603167 m!868379))

(assert (=> b!603167 m!867833))

(assert (=> b!603167 m!868181))

(declare-fun m!868381 () Bool)

(assert (=> b!603166 m!868381))

(assert (=> b!602829 d!212189))

(declare-fun b!603173 () Bool)

(declare-fun e!365510 () Bool)

(declare-fun tp!187646 () Bool)

(assert (=> b!603173 (= e!365510 (and tp_is_empty!3429 tp!187646))))

(assert (=> b!602828 (= tp!187626 e!365510)))

(assert (= (and b!602828 ((_ is Cons!6034) (t!80045 suffix!1342))) b!603173))

(declare-fun b!603174 () Bool)

(declare-fun e!365511 () Bool)

(declare-fun tp!187647 () Bool)

(assert (=> b!603174 (= e!365511 (and tp_is_empty!3429 tp!187647))))

(assert (=> b!602833 (= tp!187634 e!365511)))

(assert (= (and b!602833 ((_ is Cons!6034) (originalCharacters!1242 token!491))) b!603174))

(declare-fun b!603192 () Bool)

(declare-fun e!365518 () Bool)

(declare-fun tp!187659 () Bool)

(assert (=> b!603192 (= e!365518 tp!187659)))

(declare-fun b!603194 () Bool)

(declare-fun tp!187661 () Bool)

(declare-fun tp!187658 () Bool)

(assert (=> b!603194 (= e!365518 (and tp!187661 tp!187658))))

(assert (=> b!602821 (= tp!187630 e!365518)))

(declare-fun b!603190 () Bool)

(declare-fun tp!187662 () Bool)

(declare-fun tp!187660 () Bool)

(assert (=> b!603190 (= e!365518 (and tp!187662 tp!187660))))

(declare-fun b!603189 () Bool)

(assert (=> b!603189 (= e!365518 tp_is_empty!3429)))

(assert (= (and b!602821 ((_ is ElementMatch!1537) (regex!1203 (rule!1979 token!491)))) b!603189))

(assert (= (and b!602821 ((_ is Concat!2764) (regex!1203 (rule!1979 token!491)))) b!603190))

(assert (= (and b!602821 ((_ is Star!1537) (regex!1203 (rule!1979 token!491)))) b!603192))

(assert (= (and b!602821 ((_ is Union!1537) (regex!1203 (rule!1979 token!491)))) b!603194))

(declare-fun b!603197 () Bool)

(declare-fun e!365521 () Bool)

(declare-fun tp!187663 () Bool)

(assert (=> b!603197 (= e!365521 (and tp_is_empty!3429 tp!187663))))

(assert (=> b!602819 (= tp!187627 e!365521)))

(assert (= (and b!602819 ((_ is Cons!6034) (t!80045 input!2705))) b!603197))

(declare-fun b!603212 () Bool)

(declare-fun b_free!17181 () Bool)

(declare-fun b_next!17197 () Bool)

(assert (=> b!603212 (= b_free!17181 (not b_next!17197))))

(declare-fun tb!52567 () Bool)

(declare-fun t!80081 () Bool)

(assert (=> (and b!603212 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) t!80081) tb!52567))

(declare-fun result!59152 () Bool)

(assert (= result!59152 result!59124))

(assert (=> d!212023 t!80081))

(declare-fun t!80083 () Bool)

(declare-fun tb!52569 () Bool)

(assert (=> (and b!603212 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80083) tb!52569))

(declare-fun result!59154 () Bool)

(assert (= result!59154 result!59138))

(assert (=> d!212159 t!80083))

(assert (=> d!212173 t!80081))

(declare-fun b_and!59595 () Bool)

(declare-fun tp!187672 () Bool)

(assert (=> b!603212 (= tp!187672 (and (=> t!80081 result!59152) (=> t!80083 result!59154) b_and!59595))))

(declare-fun b_free!17183 () Bool)

(declare-fun b_next!17199 () Bool)

(assert (=> b!603212 (= b_free!17183 (not b_next!17199))))

(declare-fun tb!52571 () Bool)

(declare-fun t!80085 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80085) tb!52571))

(declare-fun result!59156 () Bool)

(assert (= result!59156 result!59118))

(assert (=> d!212023 t!80085))

(declare-fun tb!52573 () Bool)

(declare-fun t!80087 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80087) tb!52573))

(declare-fun result!59158 () Bool)

(assert (= result!59158 result!59130))

(assert (=> b!603039 t!80087))

(assert (=> d!212097 t!80087))

(declare-fun tb!52575 () Bool)

(declare-fun t!80089 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80089) tb!52575))

(declare-fun result!59160 () Bool)

(assert (= result!59160 result!59134))

(assert (=> d!212145 t!80089))

(declare-fun tp!187675 () Bool)

(declare-fun b_and!59597 () Bool)

(assert (=> b!603212 (= tp!187675 (and (=> t!80085 result!59156) (=> t!80087 result!59158) (=> t!80089 result!59160) b_and!59597))))

(declare-fun e!365536 () Bool)

(assert (=> b!603212 (= e!365536 (and tp!187672 tp!187675))))

(declare-fun b!603211 () Bool)

(declare-fun e!365533 () Bool)

(declare-fun tp!187673 () Bool)

(assert (=> b!603211 (= e!365533 (and tp!187673 (inv!7658 (tag!1465 (h!11437 (t!80047 rules!3103)))) (inv!7662 (transformation!1203 (h!11437 (t!80047 rules!3103)))) e!365536))))

(declare-fun b!603210 () Bool)

(declare-fun e!365534 () Bool)

(declare-fun tp!187674 () Bool)

(assert (=> b!603210 (= e!365534 (and e!365533 tp!187674))))

(assert (=> b!602825 (= tp!187625 e!365534)))

(assert (= b!603211 b!603212))

(assert (= b!603210 b!603211))

(assert (= (and b!602825 ((_ is Cons!6036) (t!80047 rules!3103))) b!603210))

(declare-fun m!868397 () Bool)

(assert (=> b!603211 m!868397))

(declare-fun m!868399 () Bool)

(assert (=> b!603211 m!868399))

(declare-fun b!603215 () Bool)

(declare-fun e!365537 () Bool)

(declare-fun tp!187677 () Bool)

(assert (=> b!603215 (= e!365537 tp!187677)))

(declare-fun b!603216 () Bool)

(declare-fun tp!187679 () Bool)

(declare-fun tp!187676 () Bool)

(assert (=> b!603216 (= e!365537 (and tp!187679 tp!187676))))

(assert (=> b!602824 (= tp!187632 e!365537)))

(declare-fun b!603214 () Bool)

(declare-fun tp!187680 () Bool)

(declare-fun tp!187678 () Bool)

(assert (=> b!603214 (= e!365537 (and tp!187680 tp!187678))))

(declare-fun b!603213 () Bool)

(assert (=> b!603213 (= e!365537 tp_is_empty!3429)))

(assert (= (and b!602824 ((_ is ElementMatch!1537) (regex!1203 (h!11437 rules!3103)))) b!603213))

(assert (= (and b!602824 ((_ is Concat!2764) (regex!1203 (h!11437 rules!3103)))) b!603214))

(assert (= (and b!602824 ((_ is Star!1537) (regex!1203 (h!11437 rules!3103)))) b!603215))

(assert (= (and b!602824 ((_ is Union!1537) (regex!1203 (h!11437 rules!3103)))) b!603216))

(declare-fun b_lambda!23809 () Bool)

(assert (= b_lambda!23793 (or (and b!602830 b_free!17173) (and b!602815 b_free!17177 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (and b!603212 b_free!17181 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) b_lambda!23809)))

(declare-fun b_lambda!23811 () Bool)

(assert (= b_lambda!23791 (or (and b!602830 b_free!17175) (and b!602815 b_free!17179 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491))))) (and b!603212 b_free!17183 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 token!491))))) b_lambda!23811)))

(declare-fun b_lambda!23813 () Bool)

(assert (= b_lambda!23797 (or (and b!602830 b_free!17175) (and b!602815 b_free!17179 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491))))) (and b!603212 b_free!17183 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 token!491))))) b_lambda!23813)))

(declare-fun b_lambda!23815 () Bool)

(assert (= b_lambda!23803 (or (and b!602830 b_free!17173) (and b!602815 b_free!17177 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (and b!603212 b_free!17181 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) b_lambda!23815)))

(declare-fun b_lambda!23817 () Bool)

(assert (= b_lambda!23795 (or (and b!602830 b_free!17175) (and b!602815 b_free!17179 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491))))) (and b!603212 b_free!17183 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 token!491))))) b_lambda!23817)))

(check-sat (not tb!52551) (not b!603115) (not d!212097) (not b!603210) (not b_lambda!23799) (not tb!52547) (not b!603122) (not tb!52559) (not b!603089) (not b!603040) (not b!603041) (not d!212093) (not b!603149) (not d!212125) (not d!212167) (not b!603091) (not b_lambda!23813) (not b!603194) (not d!212179) (not b!603154) (not b!603120) (not b!603110) (not d!212087) (not b!603152) (not b!603016) (not b_next!17199) (not b!603192) (not b!603163) (not b!603050) (not b!603046) (not d!212123) (not b!603190) (not d!212081) (not b!603215) (not b!603014) (not b!603045) b_and!59577 (not b!603105) (not b!603123) (not d!212155) (not b!603042) (not d!212109) (not b!603129) (not b!603106) (not b_next!17189) (not d!212023) (not b_next!17191) (not b!603034) (not bm!40564) (not b!603216) (not b!603043) (not d!212135) (not b!603173) (not b!603051) (not b!603098) (not b!603011) (not b!603028) (not b!603101) (not d!212133) (not b_lambda!23815) (not b!603008) (not d!212189) (not tb!52555) (not d!212137) b_and!59585 (not b!603015) (not d!212177) (not b!603151) (not b!603118) (not b!603155) (not b!603079) (not b!603108) (not d!212121) (not b!603031) (not d!212169) (not d!212119) (not b!603148) (not b!603211) (not b_lambda!23801) (not b!603049) (not b!603103) (not d!212175) b_and!59583 (not d!212145) (not d!212107) (not b!603099) (not d!212165) (not b_lambda!23817) (not b!603174) (not d!212115) (not b_next!17195) (not b!603121) (not b!603048) (not b!603068) (not bm!40563) b_and!59597 (not d!212149) (not b_lambda!23809) (not b!603092) (not b!603104) (not b!603013) b_and!59595 (not b!603062) (not b!603078) (not d!212185) tp_is_empty!3429 (not b_next!17193) (not d!212103) (not b!603214) (not b!603167) (not d!212111) (not b!603166) (not b!603029) (not d!212147) (not d!212157) (not b!603156) (not b!603065) (not b!603097) (not b!603039) (not d!212127) (not b!603010) (not b!603109) (not b!603085) (not d!212171) (not b!602843) b_and!59575 (not d!212187) (not b!603150) (not d!212129) (not b!603080) (not b!603094) (not d!212151) (not b!603044) (not b!603061) (not tb!52543) (not b_lambda!23811) (not d!212143) (not b_next!17197) (not d!212095) (not b!603009) (not b!602987) (not b!603197))
(check-sat (not b_next!17199) b_and!59577 (not b_next!17189) (not b_next!17191) b_and!59585 b_and!59583 (not b_next!17195) b_and!59597 b_and!59595 (not b_next!17193) b_and!59575 (not b_next!17197))
(get-model)

(declare-fun bs!71070 () Bool)

(declare-fun d!212241 () Bool)

(assert (= bs!71070 (and d!212241 d!212023)))

(declare-fun lambda!16077 () Int)

(assert (=> bs!71070 (= lambda!16077 lambda!16071)))

(assert (=> d!212241 true))

(assert (=> d!212241 (< (dynLambda!3485 order!4807 (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (dynLambda!3484 order!4805 lambda!16077))))

(assert (=> d!212241 true))

(assert (=> d!212241 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (rule!1979 token!491)))) (dynLambda!3484 order!4805 lambda!16077))))

(declare-fun Forall!303 (Int) Bool)

(assert (=> d!212241 (= (semiInverseModEq!478 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) (Forall!303 lambda!16077))))

(declare-fun bs!71071 () Bool)

(assert (= bs!71071 d!212241))

(declare-fun m!868497 () Bool)

(assert (=> bs!71071 m!868497))

(assert (=> d!212165 d!212241))

(declare-fun d!212243 () Bool)

(declare-fun lt!257255 () Int)

(assert (=> d!212243 (>= lt!257255 0)))

(declare-fun e!365586 () Int)

(assert (=> d!212243 (= lt!257255 e!365586)))

(declare-fun c!111867 () Bool)

(assert (=> d!212243 (= c!111867 ((_ is Nil!6034) (t!80045 (originalCharacters!1242 token!491))))))

(assert (=> d!212243 (= (size!4747 (t!80045 (originalCharacters!1242 token!491))) lt!257255)))

(declare-fun b!603296 () Bool)

(assert (=> b!603296 (= e!365586 0)))

(declare-fun b!603297 () Bool)

(assert (=> b!603297 (= e!365586 (+ 1 (size!4747 (t!80045 (t!80045 (originalCharacters!1242 token!491))))))))

(assert (= (and d!212243 c!111867) b!603296))

(assert (= (and d!212243 (not c!111867)) b!603297))

(declare-fun m!868499 () Bool)

(assert (=> b!603297 m!868499))

(assert (=> b!602843 d!212243))

(declare-fun d!212245 () Bool)

(assert (=> d!212245 (= (list!2532 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))) (list!2533 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))))

(declare-fun bs!71072 () Bool)

(assert (= bs!71072 d!212245))

(declare-fun m!868501 () Bool)

(assert (=> bs!71072 m!868501))

(assert (=> d!212023 d!212245))

(declare-fun d!212247 () Bool)

(assert (=> d!212247 (= (list!2532 lt!257076) (list!2533 (c!111808 lt!257076)))))

(declare-fun bs!71073 () Bool)

(assert (= bs!71073 d!212247))

(declare-fun m!868503 () Bool)

(assert (=> bs!71073 m!868503))

(assert (=> d!212023 d!212247))

(declare-fun d!212249 () Bool)

(declare-fun dynLambda!3493 (Int BalanceConc!3848) Bool)

(assert (=> d!212249 (dynLambda!3493 lambda!16071 lt!257076)))

(declare-fun lt!257258 () Unit!10988)

(declare-fun choose!4412 (Int BalanceConc!3848) Unit!10988)

(assert (=> d!212249 (= lt!257258 (choose!4412 lambda!16071 lt!257076))))

(assert (=> d!212249 (Forall!303 lambda!16071)))

(assert (=> d!212249 (= (ForallOf!117 lambda!16071 lt!257076) lt!257258)))

(declare-fun b_lambda!23833 () Bool)

(assert (=> (not b_lambda!23833) (not d!212249)))

(declare-fun bs!71074 () Bool)

(assert (= bs!71074 d!212249))

(declare-fun m!868505 () Bool)

(assert (=> bs!71074 m!868505))

(declare-fun m!868507 () Bool)

(assert (=> bs!71074 m!868507))

(declare-fun m!868509 () Bool)

(assert (=> bs!71074 m!868509))

(assert (=> d!212023 d!212249))

(declare-fun b!603300 () Bool)

(declare-fun e!365588 () Bool)

(assert (=> b!603300 (= e!365588 (isPrefix!831 (tail!807 (tail!807 input!2705)) (tail!807 (tail!807 input!2705))))))

(declare-fun d!212251 () Bool)

(declare-fun e!365587 () Bool)

(assert (=> d!212251 e!365587))

(declare-fun res!261186 () Bool)

(assert (=> d!212251 (=> res!261186 e!365587)))

(declare-fun lt!257259 () Bool)

(assert (=> d!212251 (= res!261186 (not lt!257259))))

(declare-fun e!365589 () Bool)

(assert (=> d!212251 (= lt!257259 e!365589)))

(declare-fun res!261188 () Bool)

(assert (=> d!212251 (=> res!261188 e!365589)))

(assert (=> d!212251 (= res!261188 ((_ is Nil!6034) (tail!807 input!2705)))))

(assert (=> d!212251 (= (isPrefix!831 (tail!807 input!2705) (tail!807 input!2705)) lt!257259)))

(declare-fun b!603299 () Bool)

(declare-fun res!261187 () Bool)

(assert (=> b!603299 (=> (not res!261187) (not e!365588))))

(assert (=> b!603299 (= res!261187 (= (head!1277 (tail!807 input!2705)) (head!1277 (tail!807 input!2705))))))

(declare-fun b!603298 () Bool)

(assert (=> b!603298 (= e!365589 e!365588)))

(declare-fun res!261185 () Bool)

(assert (=> b!603298 (=> (not res!261185) (not e!365588))))

(assert (=> b!603298 (= res!261185 (not ((_ is Nil!6034) (tail!807 input!2705))))))

(declare-fun b!603301 () Bool)

(assert (=> b!603301 (= e!365587 (>= (size!4747 (tail!807 input!2705)) (size!4747 (tail!807 input!2705))))))

(assert (= (and d!212251 (not res!261188)) b!603298))

(assert (= (and b!603298 res!261185) b!603299))

(assert (= (and b!603299 res!261187) b!603300))

(assert (= (and d!212251 (not res!261186)) b!603301))

(assert (=> b!603300 m!868253))

(declare-fun m!868511 () Bool)

(assert (=> b!603300 m!868511))

(assert (=> b!603300 m!868253))

(assert (=> b!603300 m!868511))

(assert (=> b!603300 m!868511))

(assert (=> b!603300 m!868511))

(declare-fun m!868513 () Bool)

(assert (=> b!603300 m!868513))

(assert (=> b!603299 m!868253))

(declare-fun m!868515 () Bool)

(assert (=> b!603299 m!868515))

(assert (=> b!603299 m!868253))

(assert (=> b!603299 m!868515))

(assert (=> b!603301 m!868253))

(declare-fun m!868517 () Bool)

(assert (=> b!603301 m!868517))

(assert (=> b!603301 m!868253))

(assert (=> b!603301 m!868517))

(assert (=> b!603104 d!212251))

(declare-fun d!212253 () Bool)

(assert (=> d!212253 (= (tail!807 input!2705) (t!80045 input!2705))))

(assert (=> b!603104 d!212253))

(declare-fun d!212257 () Bool)

(declare-fun isBalanced!529 (Conc!1920) Bool)

(assert (=> d!212257 (= (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))) (isBalanced!529 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))))

(declare-fun bs!71075 () Bool)

(assert (= bs!71075 d!212257))

(declare-fun m!868527 () Bool)

(assert (=> bs!71075 m!868527))

(assert (=> tb!52551 d!212257))

(declare-fun d!212261 () Bool)

(assert (=> d!212261 (and (= lt!257067 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!212261 true))

(declare-fun _$50!283 () Unit!10988)

(assert (=> d!212261 (= (choose!4404 lt!257067 suffix!1342 input!2705 suffix!1342) _$50!283)))

(assert (=> d!212135 d!212261))

(assert (=> d!212135 d!212189))

(assert (=> d!212135 d!212111))

(declare-fun d!212263 () Bool)

(assert (=> d!212263 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))) (list!2533 (c!111808 (charsOf!832 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun bs!71076 () Bool)

(assert (= bs!71076 d!212263))

(declare-fun m!868541 () Bool)

(assert (=> bs!71076 m!868541))

(assert (=> b!603015 d!212263))

(declare-fun d!212265 () Bool)

(declare-fun lt!257262 () BalanceConc!3848)

(assert (=> d!212265 (= (list!2532 lt!257262) (originalCharacters!1242 (_1!3720 (get!2319 lt!257153))))))

(assert (=> d!212265 (= lt!257262 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))) (value!39152 (_1!3720 (get!2319 lt!257153)))))))

(assert (=> d!212265 (= (charsOf!832 (_1!3720 (get!2319 lt!257153))) lt!257262)))

(declare-fun b_lambda!23835 () Bool)

(assert (=> (not b_lambda!23835) (not d!212265)))

(declare-fun t!80111 () Bool)

(declare-fun tb!52595 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80111) tb!52595))

(declare-fun b!603310 () Bool)

(declare-fun e!365595 () Bool)

(declare-fun tp!187719 () Bool)

(assert (=> b!603310 (= e!365595 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))) (value!39152 (_1!3720 (get!2319 lt!257153)))))) tp!187719))))

(declare-fun result!59186 () Bool)

(assert (=> tb!52595 (= result!59186 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))) (value!39152 (_1!3720 (get!2319 lt!257153))))) e!365595))))

(assert (= tb!52595 b!603310))

(declare-fun m!868545 () Bool)

(assert (=> b!603310 m!868545))

(declare-fun m!868547 () Bool)

(assert (=> tb!52595 m!868547))

(assert (=> d!212265 t!80111))

(declare-fun b_and!59611 () Bool)

(assert (= b_and!59575 (and (=> t!80111 result!59186) b_and!59611)))

(declare-fun tb!52597 () Bool)

(declare-fun t!80113 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80113) tb!52597))

(declare-fun result!59188 () Bool)

(assert (= result!59188 result!59186))

(assert (=> d!212265 t!80113))

(declare-fun b_and!59613 () Bool)

(assert (= b_and!59577 (and (=> t!80113 result!59188) b_and!59613)))

(declare-fun t!80115 () Bool)

(declare-fun tb!52599 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80115) tb!52599))

(declare-fun result!59190 () Bool)

(assert (= result!59190 result!59186))

(assert (=> d!212265 t!80115))

(declare-fun b_and!59615 () Bool)

(assert (= b_and!59597 (and (=> t!80115 result!59190) b_and!59615)))

(declare-fun m!868549 () Bool)

(assert (=> d!212265 m!868549))

(declare-fun m!868551 () Bool)

(assert (=> d!212265 m!868551))

(assert (=> b!603015 d!212265))

(declare-fun d!212269 () Bool)

(assert (=> d!212269 (= (get!2319 lt!257153) (v!16450 lt!257153))))

(assert (=> b!603015 d!212269))

(declare-fun d!212271 () Bool)

(declare-fun lt!257263 () Bool)

(assert (=> d!212271 (= lt!257263 (select (content!1092 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257161)))))))

(declare-fun e!365596 () Bool)

(assert (=> d!212271 (= lt!257263 e!365596)))

(declare-fun res!261195 () Bool)

(assert (=> d!212271 (=> (not res!261195) (not e!365596))))

(assert (=> d!212271 (= res!261195 ((_ is Cons!6036) rules!3103))))

(assert (=> d!212271 (= (contains!1415 rules!3103 (rule!1979 (_1!3720 (get!2319 lt!257161)))) lt!257263)))

(declare-fun b!603311 () Bool)

(declare-fun e!365597 () Bool)

(assert (=> b!603311 (= e!365596 e!365597)))

(declare-fun res!261196 () Bool)

(assert (=> b!603311 (=> res!261196 e!365597)))

(assert (=> b!603311 (= res!261196 (= (h!11437 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257161)))))))

(declare-fun b!603312 () Bool)

(assert (=> b!603312 (= e!365597 (contains!1415 (t!80047 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257161)))))))

(assert (= (and d!212271 res!261195) b!603311))

(assert (= (and b!603311 (not res!261196)) b!603312))

(assert (=> d!212271 m!868303))

(declare-fun m!868553 () Bool)

(assert (=> d!212271 m!868553))

(declare-fun m!868555 () Bool)

(assert (=> b!603312 m!868555))

(assert (=> b!603049 d!212271))

(declare-fun d!212277 () Bool)

(assert (=> d!212277 (= (get!2319 lt!257161) (v!16450 lt!257161))))

(assert (=> b!603049 d!212277))

(declare-fun d!212279 () Bool)

(declare-fun nullableFct!144 (Regex!1537) Bool)

(assert (=> d!212279 (= (nullable!436 (regex!1203 (rule!1979 token!491))) (nullableFct!144 (regex!1203 (rule!1979 token!491))))))

(declare-fun bs!71077 () Bool)

(assert (= bs!71077 d!212279))

(declare-fun m!868557 () Bool)

(assert (=> bs!71077 m!868557))

(assert (=> b!603094 d!212279))

(declare-fun d!212285 () Bool)

(declare-fun charsToBigInt!0 (List!6045 Int) Int)

(assert (=> d!212285 (= (inv!15 (value!39152 token!491)) (= (charsToBigInt!0 (text!9038 (value!39152 token!491)) 0) (value!39147 (value!39152 token!491))))))

(declare-fun bs!71078 () Bool)

(assert (= bs!71078 d!212285))

(declare-fun m!868563 () Bool)

(assert (=> bs!71078 m!868563))

(assert (=> b!603029 d!212285))

(declare-fun d!212293 () Bool)

(assert (=> d!212293 (= (list!2532 lt!257187) (list!2533 (c!111808 lt!257187)))))

(declare-fun bs!71079 () Bool)

(assert (= bs!71079 d!212293))

(declare-fun m!868565 () Bool)

(assert (=> bs!71079 m!868565))

(assert (=> d!212145 d!212293))

(declare-fun d!212295 () Bool)

(assert (=> d!212295 (= (head!1277 lt!257067) (h!11435 lt!257067))))

(assert (=> b!603078 d!212295))

(declare-fun d!212297 () Bool)

(assert (=> d!212297 (= (head!1277 lt!257055) (h!11435 lt!257055))))

(assert (=> b!603078 d!212297))

(declare-fun d!212299 () Bool)

(assert (=> d!212299 (= (get!2319 lt!257219) (v!16450 lt!257219))))

(assert (=> b!603155 d!212299))

(declare-fun d!212301 () Bool)

(assert (=> d!212301 (= (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219))))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219))))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219))))))))

(declare-fun b_lambda!23837 () Bool)

(assert (=> (not b_lambda!23837) (not d!212301)))

(declare-fun tb!52601 () Bool)

(declare-fun t!80117 () Bool)

(assert (=> (and b!602830 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80117) tb!52601))

(declare-fun result!59192 () Bool)

(assert (=> tb!52601 (= result!59192 (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219))))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))))))))

(declare-fun m!868567 () Bool)

(assert (=> tb!52601 m!868567))

(assert (=> d!212301 t!80117))

(declare-fun b_and!59617 () Bool)

(assert (= b_and!59583 (and (=> t!80117 result!59192) b_and!59617)))

(declare-fun t!80119 () Bool)

(declare-fun tb!52603 () Bool)

(assert (=> (and b!602815 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80119) tb!52603))

(declare-fun result!59194 () Bool)

(assert (= result!59194 result!59192))

(assert (=> d!212301 t!80119))

(declare-fun b_and!59619 () Bool)

(assert (= b_and!59585 (and (=> t!80119 result!59194) b_and!59619)))

(declare-fun tb!52605 () Bool)

(declare-fun t!80121 () Bool)

(assert (=> (and b!603212 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80121) tb!52605))

(declare-fun result!59196 () Bool)

(assert (= result!59196 result!59192))

(assert (=> d!212301 t!80121))

(declare-fun b_and!59621 () Bool)

(assert (= b_and!59595 (and (=> t!80121 result!59196) b_and!59621)))

(assert (=> d!212301 m!868339))

(declare-fun m!868569 () Bool)

(assert (=> d!212301 m!868569))

(assert (=> b!603155 d!212301))

(declare-fun d!212303 () Bool)

(assert (=> d!212303 (= (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))) (fromListB!606 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))))))

(declare-fun bs!71080 () Bool)

(assert (= bs!71080 d!212303))

(declare-fun m!868571 () Bool)

(assert (=> bs!71080 m!868571))

(assert (=> b!603155 d!212303))

(declare-fun d!212305 () Bool)

(declare-fun e!365610 () Bool)

(assert (=> d!212305 e!365610))

(declare-fun res!261201 () Bool)

(assert (=> d!212305 (=> (not res!261201) (not e!365610))))

(declare-fun lt!257269 () BalanceConc!3848)

(assert (=> d!212305 (= res!261201 (= (list!2532 lt!257269) lt!257064))))

(declare-fun fromList!280 (List!6044) Conc!1920)

(assert (=> d!212305 (= lt!257269 (BalanceConc!3849 (fromList!280 lt!257064)))))

(assert (=> d!212305 (= (fromListB!606 lt!257064) lt!257269)))

(declare-fun b!603333 () Bool)

(assert (=> b!603333 (= e!365610 (isBalanced!529 (fromList!280 lt!257064)))))

(assert (= (and d!212305 res!261201) b!603333))

(declare-fun m!868591 () Bool)

(assert (=> d!212305 m!868591))

(declare-fun m!868593 () Bool)

(assert (=> d!212305 m!868593))

(assert (=> b!603333 m!868593))

(assert (=> b!603333 m!868593))

(declare-fun m!868595 () Bool)

(assert (=> b!603333 m!868595))

(assert (=> d!212143 d!212305))

(declare-fun bm!40571 () Bool)

(declare-fun call!40577 () Bool)

(declare-fun call!40576 () Bool)

(assert (=> bm!40571 (= call!40577 call!40576)))

(declare-fun b!603361 () Bool)

(declare-fun e!365634 () Bool)

(declare-fun e!365635 () Bool)

(assert (=> b!603361 (= e!365634 e!365635)))

(declare-fun res!261222 () Bool)

(assert (=> b!603361 (=> (not res!261222) (not e!365635))))

(declare-fun call!40578 () Bool)

(assert (=> b!603361 (= res!261222 call!40578)))

(declare-fun b!603362 () Bool)

(declare-fun res!261219 () Bool)

(declare-fun e!365629 () Bool)

(assert (=> b!603362 (=> (not res!261219) (not e!365629))))

(assert (=> b!603362 (= res!261219 call!40577)))

(declare-fun e!365632 () Bool)

(assert (=> b!603362 (= e!365632 e!365629)))

(declare-fun b!603363 () Bool)

(declare-fun res!261221 () Bool)

(assert (=> b!603363 (=> res!261221 e!365634)))

(assert (=> b!603363 (= res!261221 (not ((_ is Concat!2764) (regex!1203 (rule!1979 token!491)))))))

(assert (=> b!603363 (= e!365632 e!365634)))

(declare-fun b!603364 () Bool)

(assert (=> b!603364 (= e!365629 call!40578)))

(declare-fun d!212315 () Bool)

(declare-fun res!261223 () Bool)

(declare-fun e!365633 () Bool)

(assert (=> d!212315 (=> res!261223 e!365633)))

(assert (=> d!212315 (= res!261223 ((_ is ElementMatch!1537) (regex!1203 (rule!1979 token!491))))))

(assert (=> d!212315 (= (validRegex!531 (regex!1203 (rule!1979 token!491))) e!365633)))

(declare-fun bm!40572 () Bool)

(declare-fun c!111884 () Bool)

(assert (=> bm!40572 (= call!40578 (validRegex!531 (ite c!111884 (regTwo!3587 (regex!1203 (rule!1979 token!491))) (regOne!3586 (regex!1203 (rule!1979 token!491))))))))

(declare-fun b!603365 () Bool)

(assert (=> b!603365 (= e!365635 call!40577)))

(declare-fun b!603366 () Bool)

(declare-fun e!365630 () Bool)

(assert (=> b!603366 (= e!365630 e!365632)))

(assert (=> b!603366 (= c!111884 ((_ is Union!1537) (regex!1203 (rule!1979 token!491))))))

(declare-fun b!603367 () Bool)

(assert (=> b!603367 (= e!365633 e!365630)))

(declare-fun c!111883 () Bool)

(assert (=> b!603367 (= c!111883 ((_ is Star!1537) (regex!1203 (rule!1979 token!491))))))

(declare-fun b!603368 () Bool)

(declare-fun e!365631 () Bool)

(assert (=> b!603368 (= e!365631 call!40576)))

(declare-fun bm!40573 () Bool)

(assert (=> bm!40573 (= call!40576 (validRegex!531 (ite c!111883 (reg!1866 (regex!1203 (rule!1979 token!491))) (ite c!111884 (regOne!3587 (regex!1203 (rule!1979 token!491))) (regTwo!3586 (regex!1203 (rule!1979 token!491)))))))))

(declare-fun b!603369 () Bool)

(assert (=> b!603369 (= e!365630 e!365631)))

(declare-fun res!261220 () Bool)

(assert (=> b!603369 (= res!261220 (not (nullable!436 (reg!1866 (regex!1203 (rule!1979 token!491))))))))

(assert (=> b!603369 (=> (not res!261220) (not e!365631))))

(assert (= (and d!212315 (not res!261223)) b!603367))

(assert (= (and b!603367 c!111883) b!603369))

(assert (= (and b!603367 (not c!111883)) b!603366))

(assert (= (and b!603369 res!261220) b!603368))

(assert (= (and b!603366 c!111884) b!603362))

(assert (= (and b!603366 (not c!111884)) b!603363))

(assert (= (and b!603362 res!261219) b!603364))

(assert (= (and b!603363 (not res!261221)) b!603361))

(assert (= (and b!603361 res!261222) b!603365))

(assert (= (or b!603362 b!603365) bm!40571))

(assert (= (or b!603364 b!603361) bm!40572))

(assert (= (or b!603368 bm!40571) bm!40573))

(declare-fun m!868625 () Bool)

(assert (=> bm!40572 m!868625))

(declare-fun m!868629 () Bool)

(assert (=> bm!40573 m!868629))

(declare-fun m!868631 () Bool)

(assert (=> b!603369 m!868631))

(assert (=> d!212129 d!212315))

(declare-fun d!212321 () Bool)

(declare-fun lt!257275 () Int)

(assert (=> d!212321 (>= lt!257275 0)))

(declare-fun e!365636 () Int)

(assert (=> d!212321 (= lt!257275 e!365636)))

(declare-fun c!111885 () Bool)

(assert (=> d!212321 (= c!111885 ((_ is Nil!6034) lt!257052))))

(assert (=> d!212321 (= (size!4747 lt!257052) lt!257275)))

(declare-fun b!603370 () Bool)

(assert (=> b!603370 (= e!365636 0)))

(declare-fun b!603371 () Bool)

(assert (=> b!603371 (= e!365636 (+ 1 (size!4747 (t!80045 lt!257052))))))

(assert (= (and d!212321 c!111885) b!603370))

(assert (= (and d!212321 (not c!111885)) b!603371))

(declare-fun m!868635 () Bool)

(assert (=> b!603371 m!868635))

(assert (=> b!603122 d!212321))

(declare-fun d!212323 () Bool)

(declare-fun lt!257276 () Int)

(assert (=> d!212323 (>= lt!257276 0)))

(declare-fun e!365637 () Int)

(assert (=> d!212323 (= lt!257276 e!365637)))

(declare-fun c!111886 () Bool)

(assert (=> d!212323 (= c!111886 ((_ is Nil!6034) input!2705))))

(assert (=> d!212323 (= (size!4747 input!2705) lt!257276)))

(declare-fun b!603372 () Bool)

(assert (=> b!603372 (= e!365637 0)))

(declare-fun b!603373 () Bool)

(assert (=> b!603373 (= e!365637 (+ 1 (size!4747 (t!80045 input!2705))))))

(assert (= (and d!212323 c!111886) b!603372))

(assert (= (and d!212323 (not c!111886)) b!603373))

(declare-fun m!868639 () Bool)

(assert (=> b!603373 m!868639))

(assert (=> b!603122 d!212323))

(declare-fun d!212325 () Bool)

(assert (=> d!212325 (= (head!1277 lt!257064) (h!11435 lt!257064))))

(assert (=> b!603097 d!212325))

(declare-fun d!212327 () Bool)

(assert (=> d!212327 (= (head!1277 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))) (h!11435 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))

(assert (=> b!603097 d!212327))

(assert (=> d!212171 d!212139))

(assert (=> d!212171 d!212159))

(assert (=> d!212171 d!212099))

(assert (=> d!212171 d!212143))

(assert (=> d!212171 d!212177))

(declare-fun d!212329 () Bool)

(assert (=> d!212329 (= (maxPrefixOneRule!450 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) input!2705) (Some!1553 (tuple2!6913 (Token!2143 (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 lt!257064)) (rule!1979 (_1!3720 (v!16450 lt!257061))) (size!4747 lt!257064) lt!257064) (_2!3720 (v!16450 lt!257061)))))))

(assert (=> d!212329 true))

(declare-fun _$59!262 () Unit!10988)

(assert (=> d!212329 (= (choose!4408 thiss!22590 rules!3103 lt!257064 input!2705 (_2!3720 (v!16450 lt!257061)) (rule!1979 (_1!3720 (v!16450 lt!257061)))) _$59!262)))

(declare-fun bs!71083 () Bool)

(assert (= bs!71083 d!212329))

(assert (=> bs!71083 m!867773))

(assert (=> bs!71083 m!867831))

(assert (=> bs!71083 m!867831))

(assert (=> bs!71083 m!867859))

(assert (=> bs!71083 m!867819))

(assert (=> d!212171 d!212329))

(declare-fun d!212343 () Bool)

(assert (=> d!212343 true))

(declare-fun lambda!16080 () Int)

(declare-fun order!4815 () Int)

(declare-fun dynLambda!3494 (Int Int) Int)

(assert (=> d!212343 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (dynLambda!3494 order!4815 lambda!16080))))

(declare-fun Forall2!229 (Int) Bool)

(assert (=> d!212343 (= (equivClasses!461 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (Forall2!229 lambda!16080))))

(declare-fun bs!71084 () Bool)

(assert (= bs!71084 d!212343))

(declare-fun m!868659 () Bool)

(assert (=> bs!71084 m!868659))

(assert (=> b!603089 d!212343))

(declare-fun b!603434 () Bool)

(declare-fun res!261256 () Bool)

(declare-fun e!365679 () Bool)

(assert (=> b!603434 (=> res!261256 e!365679)))

(assert (=> b!603434 (= res!261256 (not ((_ is ElementMatch!1537) (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))))))

(declare-fun e!365676 () Bool)

(assert (=> b!603434 (= e!365676 e!365679)))

(declare-fun d!212345 () Bool)

(declare-fun e!365678 () Bool)

(assert (=> d!212345 e!365678))

(declare-fun c!111901 () Bool)

(assert (=> d!212345 (= c!111901 ((_ is EmptyExpr!1537) (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun lt!257288 () Bool)

(declare-fun e!365674 () Bool)

(assert (=> d!212345 (= lt!257288 e!365674)))

(declare-fun c!111903 () Bool)

(assert (=> d!212345 (= c!111903 (isEmpty!4355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))))))

(assert (=> d!212345 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))))

(assert (=> d!212345 (= (matchR!639 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) lt!257288)))

(declare-fun b!603435 () Bool)

(assert (=> b!603435 (= e!365674 (nullable!436 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun b!603436 () Bool)

(assert (=> b!603436 (= e!365676 (not lt!257288))))

(declare-fun b!603437 () Bool)

(declare-fun e!365675 () Bool)

(declare-fun e!365673 () Bool)

(assert (=> b!603437 (= e!365675 e!365673)))

(declare-fun res!261257 () Bool)

(assert (=> b!603437 (=> res!261257 e!365673)))

(declare-fun call!40581 () Bool)

(assert (=> b!603437 (= res!261257 call!40581)))

(declare-fun b!603438 () Bool)

(assert (=> b!603438 (= e!365679 e!365675)))

(declare-fun res!261258 () Bool)

(assert (=> b!603438 (=> (not res!261258) (not e!365675))))

(assert (=> b!603438 (= res!261258 (not lt!257288))))

(declare-fun b!603439 () Bool)

(declare-fun derivativeStep!323 (Regex!1537 C!3996) Regex!1537)

(assert (=> b!603439 (= e!365674 (matchR!639 (derivativeStep!323 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))) (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))))) (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))))))))

(declare-fun b!603440 () Bool)

(declare-fun res!261260 () Bool)

(assert (=> b!603440 (=> res!261260 e!365679)))

(declare-fun e!365677 () Bool)

(assert (=> b!603440 (= res!261260 e!365677)))

(declare-fun res!261263 () Bool)

(assert (=> b!603440 (=> (not res!261263) (not e!365677))))

(assert (=> b!603440 (= res!261263 lt!257288)))

(declare-fun bm!40576 () Bool)

(assert (=> bm!40576 (= call!40581 (isEmpty!4355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun b!603441 () Bool)

(declare-fun res!261261 () Bool)

(assert (=> b!603441 (=> res!261261 e!365673)))

(assert (=> b!603441 (= res!261261 (not (isEmpty!4355 (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))))))))

(declare-fun b!603442 () Bool)

(assert (=> b!603442 (= e!365678 e!365676)))

(declare-fun c!111902 () Bool)

(assert (=> b!603442 (= c!111902 ((_ is EmptyLang!1537) (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun b!603443 () Bool)

(declare-fun res!261262 () Bool)

(assert (=> b!603443 (=> (not res!261262) (not e!365677))))

(assert (=> b!603443 (= res!261262 (not call!40581))))

(declare-fun b!603444 () Bool)

(assert (=> b!603444 (= e!365678 (= lt!257288 call!40581))))

(declare-fun b!603445 () Bool)

(declare-fun res!261259 () Bool)

(assert (=> b!603445 (=> (not res!261259) (not e!365677))))

(assert (=> b!603445 (= res!261259 (isEmpty!4355 (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))))))))

(declare-fun b!603446 () Bool)

(assert (=> b!603446 (= e!365673 (not (= (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))))))))

(declare-fun b!603447 () Bool)

(assert (=> b!603447 (= e!365677 (= (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))))))

(assert (= (and d!212345 c!111903) b!603435))

(assert (= (and d!212345 (not c!111903)) b!603439))

(assert (= (and d!212345 c!111901) b!603444))

(assert (= (and d!212345 (not c!111901)) b!603442))

(assert (= (and b!603442 c!111902) b!603436))

(assert (= (and b!603442 (not c!111902)) b!603434))

(assert (= (and b!603434 (not res!261256)) b!603440))

(assert (= (and b!603440 res!261263) b!603443))

(assert (= (and b!603443 res!261262) b!603445))

(assert (= (and b!603445 res!261259) b!603447))

(assert (= (and b!603440 (not res!261260)) b!603438))

(assert (= (and b!603438 res!261258) b!603437))

(assert (= (and b!603437 (not res!261257)) b!603441))

(assert (= (and b!603441 (not res!261261)) b!603446))

(assert (= (or b!603444 b!603437 b!603443) bm!40576))

(assert (=> d!212345 m!868145))

(declare-fun m!868685 () Bool)

(assert (=> d!212345 m!868685))

(declare-fun m!868687 () Bool)

(assert (=> d!212345 m!868687))

(assert (=> b!603439 m!868145))

(declare-fun m!868689 () Bool)

(assert (=> b!603439 m!868689))

(assert (=> b!603439 m!868689))

(declare-fun m!868691 () Bool)

(assert (=> b!603439 m!868691))

(assert (=> b!603439 m!868145))

(declare-fun m!868693 () Bool)

(assert (=> b!603439 m!868693))

(assert (=> b!603439 m!868691))

(assert (=> b!603439 m!868693))

(declare-fun m!868695 () Bool)

(assert (=> b!603439 m!868695))

(declare-fun m!868697 () Bool)

(assert (=> b!603435 m!868697))

(assert (=> b!603445 m!868145))

(assert (=> b!603445 m!868693))

(assert (=> b!603445 m!868693))

(declare-fun m!868699 () Bool)

(assert (=> b!603445 m!868699))

(assert (=> b!603447 m!868145))

(assert (=> b!603447 m!868689))

(assert (=> bm!40576 m!868145))

(assert (=> bm!40576 m!868685))

(assert (=> b!603446 m!868145))

(assert (=> b!603446 m!868689))

(assert (=> b!603441 m!868145))

(assert (=> b!603441 m!868693))

(assert (=> b!603441 m!868693))

(assert (=> b!603441 m!868699))

(assert (=> b!603045 d!212345))

(assert (=> b!603045 d!212277))

(declare-fun d!212361 () Bool)

(assert (=> d!212361 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))) (list!2533 (c!111808 (charsOf!832 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun bs!71086 () Bool)

(assert (= bs!71086 d!212361))

(declare-fun m!868701 () Bool)

(assert (=> bs!71086 m!868701))

(assert (=> b!603045 d!212361))

(declare-fun d!212363 () Bool)

(declare-fun lt!257289 () BalanceConc!3848)

(assert (=> d!212363 (= (list!2532 lt!257289) (originalCharacters!1242 (_1!3720 (get!2319 lt!257161))))))

(assert (=> d!212363 (= lt!257289 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))) (value!39152 (_1!3720 (get!2319 lt!257161)))))))

(assert (=> d!212363 (= (charsOf!832 (_1!3720 (get!2319 lt!257161))) lt!257289)))

(declare-fun b_lambda!23839 () Bool)

(assert (=> (not b_lambda!23839) (not d!212363)))

(declare-fun t!80123 () Bool)

(declare-fun tb!52607 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80123) tb!52607))

(declare-fun b!603450 () Bool)

(declare-fun e!365680 () Bool)

(declare-fun tp!187720 () Bool)

(assert (=> b!603450 (= e!365680 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))) (value!39152 (_1!3720 (get!2319 lt!257161)))))) tp!187720))))

(declare-fun result!59198 () Bool)

(assert (=> tb!52607 (= result!59198 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))) (value!39152 (_1!3720 (get!2319 lt!257161))))) e!365680))))

(assert (= tb!52607 b!603450))

(declare-fun m!868703 () Bool)

(assert (=> b!603450 m!868703))

(declare-fun m!868705 () Bool)

(assert (=> tb!52607 m!868705))

(assert (=> d!212363 t!80123))

(declare-fun b_and!59623 () Bool)

(assert (= b_and!59611 (and (=> t!80123 result!59198) b_and!59623)))

(declare-fun t!80125 () Bool)

(declare-fun tb!52609 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80125) tb!52609))

(declare-fun result!59200 () Bool)

(assert (= result!59200 result!59198))

(assert (=> d!212363 t!80125))

(declare-fun b_and!59625 () Bool)

(assert (= b_and!59613 (and (=> t!80125 result!59200) b_and!59625)))

(declare-fun t!80127 () Bool)

(declare-fun tb!52611 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80127) tb!52611))

(declare-fun result!59202 () Bool)

(assert (= result!59202 result!59198))

(assert (=> d!212363 t!80127))

(declare-fun b_and!59627 () Bool)

(assert (= b_and!59615 (and (=> t!80127 result!59202) b_and!59627)))

(declare-fun m!868707 () Bool)

(assert (=> d!212363 m!868707))

(declare-fun m!868709 () Bool)

(assert (=> d!212363 m!868709))

(assert (=> b!603045 d!212363))

(declare-fun d!212365 () Bool)

(assert (=> d!212365 (= (inv!7658 (tag!1465 (h!11437 (t!80047 rules!3103)))) (= (mod (str.len (value!39151 (tag!1465 (h!11437 (t!80047 rules!3103))))) 2) 0))))

(assert (=> b!603211 d!212365))

(declare-fun d!212367 () Bool)

(declare-fun res!261264 () Bool)

(declare-fun e!365681 () Bool)

(assert (=> d!212367 (=> (not res!261264) (not e!365681))))

(assert (=> d!212367 (= res!261264 (semiInverseModEq!478 (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103))))))))

(assert (=> d!212367 (= (inv!7662 (transformation!1203 (h!11437 (t!80047 rules!3103)))) e!365681)))

(declare-fun b!603453 () Bool)

(assert (=> b!603453 (= e!365681 (equivClasses!461 (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103))))))))

(assert (= (and d!212367 res!261264) b!603453))

(declare-fun m!868713 () Bool)

(assert (=> d!212367 m!868713))

(declare-fun m!868715 () Bool)

(assert (=> b!603453 m!868715))

(assert (=> b!603211 d!212367))

(assert (=> d!212167 d!212021))

(declare-fun d!212371 () Bool)

(declare-fun c!111908 () Bool)

(assert (=> d!212371 (= c!111908 ((_ is Node!1920) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))))

(declare-fun e!365688 () Bool)

(assert (=> d!212371 (= (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))) e!365688)))

(declare-fun b!603464 () Bool)

(declare-fun inv!7667 (Conc!1920) Bool)

(assert (=> b!603464 (= e!365688 (inv!7667 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))))

(declare-fun b!603465 () Bool)

(declare-fun e!365689 () Bool)

(assert (=> b!603465 (= e!365688 e!365689)))

(declare-fun res!261267 () Bool)

(assert (=> b!603465 (= res!261267 (not ((_ is Leaf!3029) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))))))))

(assert (=> b!603465 (=> res!261267 e!365689)))

(declare-fun b!603466 () Bool)

(declare-fun inv!7668 (Conc!1920) Bool)

(assert (=> b!603466 (= e!365689 (inv!7668 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))))

(assert (= (and d!212371 c!111908) b!603464))

(assert (= (and d!212371 (not c!111908)) b!603465))

(assert (= (and b!603465 (not res!261267)) b!603466))

(declare-fun m!868727 () Bool)

(assert (=> b!603464 m!868727))

(declare-fun m!868729 () Bool)

(assert (=> b!603466 m!868729))

(assert (=> b!603041 d!212371))

(declare-fun b!603467 () Bool)

(declare-fun res!261268 () Bool)

(declare-fun e!365696 () Bool)

(assert (=> b!603467 (=> res!261268 e!365696)))

(assert (=> b!603467 (= res!261268 (not ((_ is ElementMatch!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun e!365693 () Bool)

(assert (=> b!603467 (= e!365693 e!365696)))

(declare-fun d!212381 () Bool)

(declare-fun e!365695 () Bool)

(assert (=> d!212381 e!365695))

(declare-fun c!111909 () Bool)

(assert (=> d!212381 (= c!111909 ((_ is EmptyExpr!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun lt!257292 () Bool)

(declare-fun e!365691 () Bool)

(assert (=> d!212381 (= lt!257292 e!365691)))

(declare-fun c!111911 () Bool)

(assert (=> d!212381 (= c!111911 (isEmpty!4355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))))))

(assert (=> d!212381 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212381 (= (matchR!639 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) lt!257292)))

(declare-fun b!603468 () Bool)

(assert (=> b!603468 (= e!365691 (nullable!436 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!603469 () Bool)

(assert (=> b!603469 (= e!365693 (not lt!257292))))

(declare-fun b!603470 () Bool)

(declare-fun e!365692 () Bool)

(declare-fun e!365690 () Bool)

(assert (=> b!603470 (= e!365692 e!365690)))

(declare-fun res!261269 () Bool)

(assert (=> b!603470 (=> res!261269 e!365690)))

(declare-fun call!40582 () Bool)

(assert (=> b!603470 (= res!261269 call!40582)))

(declare-fun b!603471 () Bool)

(assert (=> b!603471 (= e!365696 e!365692)))

(declare-fun res!261270 () Bool)

(assert (=> b!603471 (=> (not res!261270) (not e!365692))))

(assert (=> b!603471 (= res!261270 (not lt!257292))))

(declare-fun b!603472 () Bool)

(assert (=> b!603472 (= e!365691 (matchR!639 (derivativeStep!323 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))))) (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))))))))

(declare-fun b!603473 () Bool)

(declare-fun res!261272 () Bool)

(assert (=> b!603473 (=> res!261272 e!365696)))

(declare-fun e!365694 () Bool)

(assert (=> b!603473 (= res!261272 e!365694)))

(declare-fun res!261275 () Bool)

(assert (=> b!603473 (=> (not res!261275) (not e!365694))))

(assert (=> b!603473 (= res!261275 lt!257292)))

(declare-fun bm!40577 () Bool)

(assert (=> bm!40577 (= call!40582 (isEmpty!4355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))))))

(declare-fun b!603474 () Bool)

(declare-fun res!261273 () Bool)

(assert (=> b!603474 (=> res!261273 e!365690)))

(assert (=> b!603474 (= res!261273 (not (isEmpty!4355 (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))))))))

(declare-fun b!603475 () Bool)

(assert (=> b!603475 (= e!365695 e!365693)))

(declare-fun c!111910 () Bool)

(assert (=> b!603475 (= c!111910 ((_ is EmptyLang!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!603476 () Bool)

(declare-fun res!261274 () Bool)

(assert (=> b!603476 (=> (not res!261274) (not e!365694))))

(assert (=> b!603476 (= res!261274 (not call!40582))))

(declare-fun b!603477 () Bool)

(assert (=> b!603477 (= e!365695 (= lt!257292 call!40582))))

(declare-fun b!603478 () Bool)

(declare-fun res!261271 () Bool)

(assert (=> b!603478 (=> (not res!261271) (not e!365694))))

(assert (=> b!603478 (= res!261271 (isEmpty!4355 (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))))))))

(declare-fun b!603479 () Bool)

(assert (=> b!603479 (= e!365690 (not (= (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))))

(declare-fun b!603480 () Bool)

(assert (=> b!603480 (= e!365694 (= (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(assert (= (and d!212381 c!111911) b!603468))

(assert (= (and d!212381 (not c!111911)) b!603472))

(assert (= (and d!212381 c!111909) b!603477))

(assert (= (and d!212381 (not c!111909)) b!603475))

(assert (= (and b!603475 c!111910) b!603469))

(assert (= (and b!603475 (not c!111910)) b!603467))

(assert (= (and b!603467 (not res!261268)) b!603473))

(assert (= (and b!603473 res!261275) b!603476))

(assert (= (and b!603476 res!261274) b!603478))

(assert (= (and b!603478 res!261271) b!603480))

(assert (= (and b!603473 (not res!261272)) b!603471))

(assert (= (and b!603471 res!261270) b!603470))

(assert (= (and b!603470 (not res!261269)) b!603474))

(assert (= (and b!603474 (not res!261273)) b!603479))

(assert (= (or b!603477 b!603470 b!603476) bm!40577))

(assert (=> d!212381 m!868323))

(declare-fun m!868731 () Bool)

(assert (=> d!212381 m!868731))

(assert (=> d!212381 m!868203))

(assert (=> b!603472 m!868323))

(declare-fun m!868733 () Bool)

(assert (=> b!603472 m!868733))

(assert (=> b!603472 m!868733))

(declare-fun m!868735 () Bool)

(assert (=> b!603472 m!868735))

(assert (=> b!603472 m!868323))

(declare-fun m!868737 () Bool)

(assert (=> b!603472 m!868737))

(assert (=> b!603472 m!868735))

(assert (=> b!603472 m!868737))

(declare-fun m!868739 () Bool)

(assert (=> b!603472 m!868739))

(assert (=> b!603468 m!868205))

(assert (=> b!603478 m!868323))

(assert (=> b!603478 m!868737))

(assert (=> b!603478 m!868737))

(declare-fun m!868741 () Bool)

(assert (=> b!603478 m!868741))

(assert (=> b!603480 m!868323))

(assert (=> b!603480 m!868733))

(assert (=> bm!40577 m!868323))

(assert (=> bm!40577 m!868731))

(assert (=> b!603479 m!868323))

(assert (=> b!603479 m!868733))

(assert (=> b!603474 m!868323))

(assert (=> b!603474 m!868737))

(assert (=> b!603474 m!868737))

(assert (=> b!603474 m!868741))

(assert (=> b!603151 d!212381))

(declare-fun d!212383 () Bool)

(assert (=> d!212383 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))) (list!2533 (c!111808 (charsOf!832 (_1!3720 (get!2319 lt!257219))))))))

(declare-fun bs!71090 () Bool)

(assert (= bs!71090 d!212383))

(declare-fun m!868743 () Bool)

(assert (=> bs!71090 m!868743))

(assert (=> b!603151 d!212383))

(declare-fun d!212385 () Bool)

(declare-fun lt!257293 () BalanceConc!3848)

(assert (=> d!212385 (= (list!2532 lt!257293) (originalCharacters!1242 (_1!3720 (get!2319 lt!257219))))))

(assert (=> d!212385 (= lt!257293 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219))))) (value!39152 (_1!3720 (get!2319 lt!257219)))))))

(assert (=> d!212385 (= (charsOf!832 (_1!3720 (get!2319 lt!257219))) lt!257293)))

(declare-fun b_lambda!23841 () Bool)

(assert (=> (not b_lambda!23841) (not d!212385)))

(declare-fun tb!52613 () Bool)

(declare-fun t!80129 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80129) tb!52613))

(declare-fun b!603483 () Bool)

(declare-fun e!365699 () Bool)

(declare-fun tp!187721 () Bool)

(assert (=> b!603483 (= e!365699 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219))))) (value!39152 (_1!3720 (get!2319 lt!257219)))))) tp!187721))))

(declare-fun result!59204 () Bool)

(assert (=> tb!52613 (= result!59204 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219))))) (value!39152 (_1!3720 (get!2319 lt!257219))))) e!365699))))

(assert (= tb!52613 b!603483))

(declare-fun m!868745 () Bool)

(assert (=> b!603483 m!868745))

(declare-fun m!868747 () Bool)

(assert (=> tb!52613 m!868747))

(assert (=> d!212385 t!80129))

(declare-fun b_and!59629 () Bool)

(assert (= b_and!59623 (and (=> t!80129 result!59204) b_and!59629)))

(declare-fun t!80131 () Bool)

(declare-fun tb!52615 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80131) tb!52615))

(declare-fun result!59206 () Bool)

(assert (= result!59206 result!59204))

(assert (=> d!212385 t!80131))

(declare-fun b_and!59631 () Bool)

(assert (= b_and!59625 (and (=> t!80131 result!59206) b_and!59631)))

(declare-fun tb!52617 () Bool)

(declare-fun t!80133 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80133) tb!52617))

(declare-fun result!59208 () Bool)

(assert (= result!59208 result!59204))

(assert (=> d!212385 t!80133))

(declare-fun b_and!59633 () Bool)

(assert (= b_and!59627 (and (=> t!80133 result!59208) b_and!59633)))

(declare-fun m!868749 () Bool)

(assert (=> d!212385 m!868749))

(declare-fun m!868751 () Bool)

(assert (=> d!212385 m!868751))

(assert (=> b!603151 d!212385))

(assert (=> b!603151 d!212299))

(declare-fun b!603486 () Bool)

(declare-fun e!365701 () Bool)

(assert (=> b!603486 (= e!365701 (isPrefix!831 (tail!807 (tail!807 input!2705)) (tail!807 (tail!807 lt!257055))))))

(declare-fun d!212387 () Bool)

(declare-fun e!365700 () Bool)

(assert (=> d!212387 e!365700))

(declare-fun res!261279 () Bool)

(assert (=> d!212387 (=> res!261279 e!365700)))

(declare-fun lt!257294 () Bool)

(assert (=> d!212387 (= res!261279 (not lt!257294))))

(declare-fun e!365702 () Bool)

(assert (=> d!212387 (= lt!257294 e!365702)))

(declare-fun res!261281 () Bool)

(assert (=> d!212387 (=> res!261281 e!365702)))

(assert (=> d!212387 (= res!261281 ((_ is Nil!6034) (tail!807 input!2705)))))

(assert (=> d!212387 (= (isPrefix!831 (tail!807 input!2705) (tail!807 lt!257055)) lt!257294)))

(declare-fun b!603485 () Bool)

(declare-fun res!261280 () Bool)

(assert (=> b!603485 (=> (not res!261280) (not e!365701))))

(assert (=> b!603485 (= res!261280 (= (head!1277 (tail!807 input!2705)) (head!1277 (tail!807 lt!257055))))))

(declare-fun b!603484 () Bool)

(assert (=> b!603484 (= e!365702 e!365701)))

(declare-fun res!261278 () Bool)

(assert (=> b!603484 (=> (not res!261278) (not e!365701))))

(assert (=> b!603484 (= res!261278 (not ((_ is Nil!6034) (tail!807 lt!257055))))))

(declare-fun b!603487 () Bool)

(assert (=> b!603487 (= e!365700 (>= (size!4747 (tail!807 lt!257055)) (size!4747 (tail!807 input!2705))))))

(assert (= (and d!212387 (not res!261281)) b!603484))

(assert (= (and b!603484 res!261278) b!603485))

(assert (= (and b!603485 res!261280) b!603486))

(assert (= (and d!212387 (not res!261279)) b!603487))

(assert (=> b!603486 m!868253))

(assert (=> b!603486 m!868511))

(assert (=> b!603486 m!868193))

(declare-fun m!868753 () Bool)

(assert (=> b!603486 m!868753))

(assert (=> b!603486 m!868511))

(assert (=> b!603486 m!868753))

(declare-fun m!868755 () Bool)

(assert (=> b!603486 m!868755))

(assert (=> b!603485 m!868253))

(assert (=> b!603485 m!868515))

(assert (=> b!603485 m!868193))

(declare-fun m!868757 () Bool)

(assert (=> b!603485 m!868757))

(assert (=> b!603487 m!868193))

(declare-fun m!868759 () Bool)

(assert (=> b!603487 m!868759))

(assert (=> b!603487 m!868253))

(assert (=> b!603487 m!868517))

(assert (=> b!603109 d!212387))

(assert (=> b!603109 d!212253))

(declare-fun d!212389 () Bool)

(assert (=> d!212389 (= (tail!807 lt!257055) (t!80045 lt!257055))))

(assert (=> b!603109 d!212389))

(declare-fun b!603488 () Bool)

(declare-fun e!365704 () List!6044)

(assert (=> b!603488 (= e!365704 (_2!3720 (get!2319 lt!257153)))))

(declare-fun d!212391 () Bool)

(declare-fun e!365703 () Bool)

(assert (=> d!212391 e!365703))

(declare-fun res!261283 () Bool)

(assert (=> d!212391 (=> (not res!261283) (not e!365703))))

(declare-fun lt!257295 () List!6044)

(assert (=> d!212391 (= res!261283 (= (content!1089 lt!257295) ((_ map or) (content!1089 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) (content!1089 (_2!3720 (get!2319 lt!257153))))))))

(assert (=> d!212391 (= lt!257295 e!365704)))

(declare-fun c!111912 () Bool)

(assert (=> d!212391 (= c!111912 ((_ is Nil!6034) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))))))

(assert (=> d!212391 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))) (_2!3720 (get!2319 lt!257153))) lt!257295)))

(declare-fun b!603490 () Bool)

(declare-fun res!261282 () Bool)

(assert (=> b!603490 (=> (not res!261282) (not e!365703))))

(assert (=> b!603490 (= res!261282 (= (size!4747 lt!257295) (+ (size!4747 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) (size!4747 (_2!3720 (get!2319 lt!257153))))))))

(declare-fun b!603489 () Bool)

(assert (=> b!603489 (= e!365704 (Cons!6034 (h!11435 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) (++!1691 (t!80045 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) (_2!3720 (get!2319 lt!257153)))))))

(declare-fun b!603491 () Bool)

(assert (=> b!603491 (= e!365703 (or (not (= (_2!3720 (get!2319 lt!257153)) Nil!6034)) (= lt!257295 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))))))))

(assert (= (and d!212391 c!111912) b!603488))

(assert (= (and d!212391 (not c!111912)) b!603489))

(assert (= (and d!212391 res!261283) b!603490))

(assert (= (and b!603490 res!261282) b!603491))

(declare-fun m!868761 () Bool)

(assert (=> d!212391 m!868761))

(assert (=> d!212391 m!868085))

(declare-fun m!868763 () Bool)

(assert (=> d!212391 m!868763))

(declare-fun m!868765 () Bool)

(assert (=> d!212391 m!868765))

(declare-fun m!868767 () Bool)

(assert (=> b!603490 m!868767))

(assert (=> b!603490 m!868085))

(declare-fun m!868769 () Bool)

(assert (=> b!603490 m!868769))

(assert (=> b!603490 m!868103))

(declare-fun m!868771 () Bool)

(assert (=> b!603489 m!868771))

(assert (=> b!603008 d!212391))

(assert (=> b!603008 d!212263))

(assert (=> b!603008 d!212265))

(assert (=> b!603008 d!212269))

(declare-fun d!212393 () Bool)

(declare-fun lt!257296 () Int)

(assert (=> d!212393 (>= lt!257296 0)))

(declare-fun e!365705 () Int)

(assert (=> d!212393 (= lt!257296 e!365705)))

(declare-fun c!111913 () Bool)

(assert (=> d!212393 (= c!111913 ((_ is Nil!6034) (_2!3720 (get!2319 lt!257161))))))

(assert (=> d!212393 (= (size!4747 (_2!3720 (get!2319 lt!257161))) lt!257296)))

(declare-fun b!603492 () Bool)

(assert (=> b!603492 (= e!365705 0)))

(declare-fun b!603493 () Bool)

(assert (=> b!603493 (= e!365705 (+ 1 (size!4747 (t!80045 (_2!3720 (get!2319 lt!257161))))))))

(assert (= (and d!212393 c!111913) b!603492))

(assert (= (and d!212393 (not c!111913)) b!603493))

(declare-fun m!868773 () Bool)

(assert (=> b!603493 m!868773))

(assert (=> b!603051 d!212393))

(assert (=> b!603051 d!212277))

(assert (=> b!603051 d!212321))

(declare-fun bs!71091 () Bool)

(declare-fun d!212395 () Bool)

(assert (= bs!71091 (and d!212395 d!212343)))

(declare-fun lambda!16087 () Int)

(assert (=> bs!71091 (= (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (= lambda!16087 lambda!16080))))

(assert (=> d!212395 true))

(assert (=> d!212395 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (rule!1979 token!491)))) (dynLambda!3494 order!4815 lambda!16087))))

(assert (=> d!212395 (= (equivClasses!461 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) (Forall2!229 lambda!16087))))

(declare-fun bs!71092 () Bool)

(assert (= bs!71092 d!212395))

(declare-fun m!868775 () Bool)

(assert (=> bs!71092 m!868775))

(assert (=> b!603123 d!212395))

(declare-fun d!212397 () Bool)

(declare-fun lt!257297 () List!6044)

(assert (=> d!212397 (= (++!1691 (t!80045 lt!257067) lt!257297) (tail!807 lt!257052))))

(declare-fun e!365706 () List!6044)

(assert (=> d!212397 (= lt!257297 e!365706)))

(declare-fun c!111914 () Bool)

(assert (=> d!212397 (= c!111914 ((_ is Cons!6034) (t!80045 lt!257067)))))

(assert (=> d!212397 (>= (size!4747 (tail!807 lt!257052)) (size!4747 (t!80045 lt!257067)))))

(assert (=> d!212397 (= (getSuffix!348 (tail!807 lt!257052) (t!80045 lt!257067)) lt!257297)))

(declare-fun b!603496 () Bool)

(assert (=> b!603496 (= e!365706 (getSuffix!348 (tail!807 (tail!807 lt!257052)) (t!80045 (t!80045 lt!257067))))))

(declare-fun b!603497 () Bool)

(assert (=> b!603497 (= e!365706 (tail!807 lt!257052))))

(assert (= (and d!212397 c!111914) b!603496))

(assert (= (and d!212397 (not c!111914)) b!603497))

(declare-fun m!868777 () Bool)

(assert (=> d!212397 m!868777))

(assert (=> d!212397 m!868293))

(declare-fun m!868779 () Bool)

(assert (=> d!212397 m!868779))

(assert (=> d!212397 m!868291))

(assert (=> b!603496 m!868293))

(declare-fun m!868783 () Bool)

(assert (=> b!603496 m!868783))

(assert (=> b!603496 m!868783))

(declare-fun m!868785 () Bool)

(assert (=> b!603496 m!868785))

(assert (=> b!603163 d!212397))

(declare-fun d!212399 () Bool)

(assert (=> d!212399 (= (tail!807 lt!257052) (t!80045 lt!257052))))

(assert (=> b!603163 d!212399))

(declare-fun d!212403 () Bool)

(declare-fun lt!257298 () Int)

(assert (=> d!212403 (>= lt!257298 0)))

(declare-fun e!365707 () Int)

(assert (=> d!212403 (= lt!257298 e!365707)))

(declare-fun c!111915 () Bool)

(assert (=> d!212403 (= c!111915 ((_ is Nil!6034) lt!257168))))

(assert (=> d!212403 (= (size!4747 lt!257168) lt!257298)))

(declare-fun b!603498 () Bool)

(assert (=> b!603498 (= e!365707 0)))

(declare-fun b!603499 () Bool)

(assert (=> b!603499 (= e!365707 (+ 1 (size!4747 (t!80045 lt!257168))))))

(assert (= (and d!212403 c!111915) b!603498))

(assert (= (and d!212403 (not c!111915)) b!603499))

(declare-fun m!868787 () Bool)

(assert (=> b!603499 m!868787))

(assert (=> b!603062 d!212403))

(assert (=> b!603062 d!212323))

(declare-fun d!212405 () Bool)

(declare-fun lt!257299 () Int)

(assert (=> d!212405 (>= lt!257299 0)))

(declare-fun e!365709 () Int)

(assert (=> d!212405 (= lt!257299 e!365709)))

(declare-fun c!111917 () Bool)

(assert (=> d!212405 (= c!111917 ((_ is Nil!6034) suffix!1342))))

(assert (=> d!212405 (= (size!4747 suffix!1342) lt!257299)))

(declare-fun b!603502 () Bool)

(assert (=> b!603502 (= e!365709 0)))

(declare-fun b!603503 () Bool)

(assert (=> b!603503 (= e!365709 (+ 1 (size!4747 (t!80045 suffix!1342))))))

(assert (= (and d!212405 c!111917) b!603502))

(assert (= (and d!212405 (not c!111917)) b!603503))

(declare-fun m!868789 () Bool)

(assert (=> b!603503 m!868789))

(assert (=> b!603062 d!212405))

(declare-fun d!212407 () Bool)

(assert (=> d!212407 (= (head!1277 input!2705) (h!11435 input!2705))))

(assert (=> b!603103 d!212407))

(assert (=> b!603048 d!212277))

(declare-fun d!212409 () Bool)

(assert (=> d!212409 (= (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257161))))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257161))))))))

(declare-fun b_lambda!23843 () Bool)

(assert (=> (not b_lambda!23843) (not d!212409)))

(declare-fun t!80135 () Bool)

(declare-fun tb!52619 () Bool)

(assert (=> (and b!602830 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80135) tb!52619))

(declare-fun result!59210 () Bool)

(assert (=> tb!52619 (= result!59210 (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161))))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257161)))))))))

(declare-fun m!868797 () Bool)

(assert (=> tb!52619 m!868797))

(assert (=> d!212409 t!80135))

(declare-fun b_and!59635 () Bool)

(assert (= b_and!59617 (and (=> t!80135 result!59210) b_and!59635)))

(declare-fun tb!52621 () Bool)

(declare-fun t!80137 () Bool)

(assert (=> (and b!602815 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80137) tb!52621))

(declare-fun result!59212 () Bool)

(assert (= result!59212 result!59210))

(assert (=> d!212409 t!80137))

(declare-fun b_and!59637 () Bool)

(assert (= b_and!59619 (and (=> t!80137 result!59212) b_and!59637)))

(declare-fun t!80139 () Bool)

(declare-fun tb!52623 () Bool)

(assert (=> (and b!603212 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80139) tb!52623))

(declare-fun result!59214 () Bool)

(assert (= result!59214 result!59210))

(assert (=> d!212409 t!80139))

(declare-fun b_and!59639 () Bool)

(assert (= b_and!59621 (and (=> t!80139 result!59214) b_and!59639)))

(assert (=> d!212409 m!868149))

(declare-fun m!868803 () Bool)

(assert (=> d!212409 m!868803))

(assert (=> b!603048 d!212409))

(declare-fun d!212417 () Bool)

(assert (=> d!212417 (= (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257161)))) (fromListB!606 (originalCharacters!1242 (_1!3720 (get!2319 lt!257161)))))))

(declare-fun bs!71094 () Bool)

(assert (= bs!71094 d!212417))

(declare-fun m!868805 () Bool)

(assert (=> bs!71094 m!868805))

(assert (=> b!603048 d!212417))

(declare-fun bs!71095 () Bool)

(declare-fun d!212419 () Bool)

(assert (= bs!71095 (and d!212419 d!212023)))

(declare-fun lambda!16088 () Int)

(assert (=> bs!71095 (= (and (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (= lambda!16088 lambda!16071))))

(declare-fun bs!71096 () Bool)

(assert (= bs!71096 (and d!212419 d!212241)))

(assert (=> bs!71096 (= (and (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (= lambda!16088 lambda!16077))))

(assert (=> d!212419 true))

(assert (=> d!212419 (< (dynLambda!3485 order!4807 (toChars!1961 (transformation!1203 (h!11437 rules!3103)))) (dynLambda!3484 order!4805 lambda!16088))))

(assert (=> d!212419 true))

(assert (=> d!212419 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (h!11437 rules!3103)))) (dynLambda!3484 order!4805 lambda!16088))))

(assert (=> d!212419 (= (semiInverseModEq!478 (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (h!11437 rules!3103)))) (Forall!303 lambda!16088))))

(declare-fun bs!71097 () Bool)

(assert (= bs!71097 d!212419))

(declare-fun m!868807 () Bool)

(assert (=> bs!71097 m!868807))

(assert (=> d!212103 d!212419))

(declare-fun d!212425 () Bool)

(declare-fun c!111922 () Bool)

(assert (=> d!212425 (= c!111922 ((_ is Nil!6036) rules!3103))))

(declare-fun e!365715 () (InoxSet Rule!2206))

(assert (=> d!212425 (= (content!1092 rules!3103) e!365715)))

(declare-fun b!603512 () Bool)

(assert (=> b!603512 (= e!365715 ((as const (Array Rule!2206 Bool)) false))))

(declare-fun b!603513 () Bool)

(assert (=> b!603513 (= e!365715 ((_ map or) (store ((as const (Array Rule!2206 Bool)) false) (h!11437 rules!3103) true) (content!1092 (t!80047 rules!3103))))))

(assert (= (and d!212425 c!111922) b!603512))

(assert (= (and d!212425 (not c!111922)) b!603513))

(declare-fun m!868809 () Bool)

(assert (=> b!603513 m!868809))

(declare-fun m!868811 () Bool)

(assert (=> b!603513 m!868811))

(assert (=> d!212175 d!212425))

(declare-fun d!212427 () Bool)

(assert (=> d!212427 (= (isEmpty!4357 lt!257153) (not ((_ is Some!1553) lt!257153)))))

(assert (=> d!212081 d!212427))

(assert (=> d!212081 d!212141))

(assert (=> d!212081 d!212157))

(declare-fun d!212429 () Bool)

(assert (=> d!212429 true))

(declare-fun lt!257302 () Bool)

(declare-fun lambda!16091 () Int)

(declare-fun forall!1559 (List!6046 Int) Bool)

(assert (=> d!212429 (= lt!257302 (forall!1559 rules!3103 lambda!16091))))

(declare-fun e!365720 () Bool)

(assert (=> d!212429 (= lt!257302 e!365720)))

(declare-fun res!261288 () Bool)

(assert (=> d!212429 (=> res!261288 e!365720)))

(assert (=> d!212429 (= res!261288 (not ((_ is Cons!6036) rules!3103)))))

(assert (=> d!212429 (= (rulesValidInductive!447 thiss!22590 rules!3103) lt!257302)))

(declare-fun b!603518 () Bool)

(declare-fun e!365721 () Bool)

(assert (=> b!603518 (= e!365720 e!365721)))

(declare-fun res!261289 () Bool)

(assert (=> b!603518 (=> (not res!261289) (not e!365721))))

(assert (=> b!603518 (= res!261289 (ruleValid!401 thiss!22590 (h!11437 rules!3103)))))

(declare-fun b!603519 () Bool)

(assert (=> b!603519 (= e!365721 (rulesValidInductive!447 thiss!22590 (t!80047 rules!3103)))))

(assert (= (and d!212429 (not res!261288)) b!603518))

(assert (= (and b!603518 res!261289) b!603519))

(declare-fun m!868813 () Bool)

(assert (=> d!212429 m!868813))

(declare-fun m!868815 () Bool)

(assert (=> b!603518 m!868815))

(declare-fun m!868817 () Bool)

(assert (=> b!603519 m!868817))

(assert (=> d!212081 d!212429))

(declare-fun d!212431 () Bool)

(declare-fun lt!257303 () Int)

(assert (=> d!212431 (>= lt!257303 0)))

(declare-fun e!365722 () Int)

(assert (=> d!212431 (= lt!257303 e!365722)))

(declare-fun c!111923 () Bool)

(assert (=> d!212431 (= c!111923 ((_ is Nil!6034) lt!257226))))

(assert (=> d!212431 (= (size!4747 lt!257226) lt!257303)))

(declare-fun b!603522 () Bool)

(assert (=> b!603522 (= e!365722 0)))

(declare-fun b!603523 () Bool)

(assert (=> b!603523 (= e!365722 (+ 1 (size!4747 (t!80045 lt!257226))))))

(assert (= (and d!212431 c!111923) b!603522))

(assert (= (and d!212431 (not c!111923)) b!603523))

(declare-fun m!868819 () Bool)

(assert (=> b!603523 m!868819))

(assert (=> b!603167 d!212431))

(assert (=> b!603167 d!212161))

(assert (=> b!603167 d!212405))

(declare-fun b!603524 () Bool)

(declare-fun e!365724 () Bool)

(declare-fun lt!257305 () Option!1554)

(assert (=> b!603524 (= e!365724 (= (size!4746 (_1!3720 (get!2319 lt!257305))) (size!4747 (originalCharacters!1242 (_1!3720 (get!2319 lt!257305))))))))

(declare-fun b!603525 () Bool)

(declare-fun e!365726 () Bool)

(assert (=> b!603525 (= e!365726 (matchR!639 (regex!1203 (h!11437 rules!3103)) (_1!3722 (findLongestMatchInner!197 (regex!1203 (h!11437 rules!3103)) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(declare-fun d!212433 () Bool)

(declare-fun e!365725 () Bool)

(assert (=> d!212433 e!365725))

(declare-fun res!261293 () Bool)

(assert (=> d!212433 (=> res!261293 e!365725)))

(assert (=> d!212433 (= res!261293 (isEmpty!4357 lt!257305))))

(declare-fun e!365723 () Option!1554)

(assert (=> d!212433 (= lt!257305 e!365723)))

(declare-fun c!111924 () Bool)

(declare-fun lt!257304 () tuple2!6916)

(assert (=> d!212433 (= c!111924 (isEmpty!4355 (_1!3722 lt!257304)))))

(assert (=> d!212433 (= lt!257304 (findLongestMatch!176 (regex!1203 (h!11437 rules!3103)) input!2705))))

(assert (=> d!212433 (ruleValid!401 thiss!22590 (h!11437 rules!3103))))

(assert (=> d!212433 (= (maxPrefixOneRule!450 thiss!22590 (h!11437 rules!3103) input!2705) lt!257305)))

(declare-fun b!603526 () Bool)

(declare-fun res!261296 () Bool)

(assert (=> b!603526 (=> (not res!261296) (not e!365724))))

(assert (=> b!603526 (= res!261296 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257305)))) (_2!3720 (get!2319 lt!257305))) input!2705))))

(declare-fun b!603527 () Bool)

(assert (=> b!603527 (= e!365725 e!365724)))

(declare-fun res!261291 () Bool)

(assert (=> b!603527 (=> (not res!261291) (not e!365724))))

(assert (=> b!603527 (= res!261291 (matchR!639 (regex!1203 (h!11437 rules!3103)) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257305))))))))

(declare-fun b!603528 () Bool)

(declare-fun res!261295 () Bool)

(assert (=> b!603528 (=> (not res!261295) (not e!365724))))

(assert (=> b!603528 (= res!261295 (= (rule!1979 (_1!3720 (get!2319 lt!257305))) (h!11437 rules!3103)))))

(declare-fun b!603529 () Bool)

(assert (=> b!603529 (= e!365723 None!1553)))

(declare-fun b!603530 () Bool)

(declare-fun res!261292 () Bool)

(assert (=> b!603530 (=> (not res!261292) (not e!365724))))

(assert (=> b!603530 (= res!261292 (< (size!4747 (_2!3720 (get!2319 lt!257305))) (size!4747 input!2705)))))

(declare-fun b!603531 () Bool)

(declare-fun res!261290 () Bool)

(assert (=> b!603531 (=> (not res!261290) (not e!365724))))

(assert (=> b!603531 (= res!261290 (= (value!39152 (_1!3720 (get!2319 lt!257305))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257305)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257305)))))))))

(declare-fun b!603532 () Bool)

(assert (=> b!603532 (= e!365723 (Some!1553 (tuple2!6913 (Token!2143 (apply!1456 (transformation!1203 (h!11437 rules!3103)) (seqFromList!1379 (_1!3722 lt!257304))) (h!11437 rules!3103) (size!4749 (seqFromList!1379 (_1!3722 lt!257304))) (_1!3722 lt!257304)) (_2!3722 lt!257304))))))

(declare-fun lt!257306 () Unit!10988)

(assert (=> b!603532 (= lt!257306 (longestMatchIsAcceptedByMatchOrIsEmpty!181 (regex!1203 (h!11437 rules!3103)) input!2705))))

(declare-fun res!261294 () Bool)

(assert (=> b!603532 (= res!261294 (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (h!11437 rules!3103)) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(assert (=> b!603532 (=> res!261294 e!365726)))

(assert (=> b!603532 e!365726))

(declare-fun lt!257308 () Unit!10988)

(assert (=> b!603532 (= lt!257308 lt!257306)))

(declare-fun lt!257307 () Unit!10988)

(assert (=> b!603532 (= lt!257307 (lemmaSemiInverse!236 (transformation!1203 (h!11437 rules!3103)) (seqFromList!1379 (_1!3722 lt!257304))))))

(assert (= (and d!212433 c!111924) b!603529))

(assert (= (and d!212433 (not c!111924)) b!603532))

(assert (= (and b!603532 (not res!261294)) b!603525))

(assert (= (and d!212433 (not res!261293)) b!603527))

(assert (= (and b!603527 res!261291) b!603526))

(assert (= (and b!603526 res!261296) b!603530))

(assert (= (and b!603530 res!261292) b!603528))

(assert (= (and b!603528 res!261295) b!603531))

(assert (= (and b!603531 res!261290) b!603524))

(declare-fun m!868821 () Bool)

(assert (=> b!603524 m!868821))

(declare-fun m!868823 () Bool)

(assert (=> b!603524 m!868823))

(assert (=> b!603530 m!868821))

(declare-fun m!868825 () Bool)

(assert (=> b!603530 m!868825))

(assert (=> b!603530 m!868105))

(declare-fun m!868827 () Bool)

(assert (=> d!212433 m!868827))

(declare-fun m!868829 () Bool)

(assert (=> d!212433 m!868829))

(declare-fun m!868831 () Bool)

(assert (=> d!212433 m!868831))

(assert (=> d!212433 m!868815))

(assert (=> b!603528 m!868821))

(assert (=> b!603527 m!868821))

(declare-fun m!868833 () Bool)

(assert (=> b!603527 m!868833))

(assert (=> b!603527 m!868833))

(declare-fun m!868835 () Bool)

(assert (=> b!603527 m!868835))

(assert (=> b!603527 m!868835))

(declare-fun m!868837 () Bool)

(assert (=> b!603527 m!868837))

(assert (=> b!603525 m!868327))

(assert (=> b!603525 m!868105))

(assert (=> b!603525 m!868327))

(assert (=> b!603525 m!868105))

(declare-fun m!868839 () Bool)

(assert (=> b!603525 m!868839))

(declare-fun m!868841 () Bool)

(assert (=> b!603525 m!868841))

(assert (=> b!603526 m!868821))

(assert (=> b!603526 m!868833))

(assert (=> b!603526 m!868833))

(assert (=> b!603526 m!868835))

(assert (=> b!603526 m!868835))

(declare-fun m!868843 () Bool)

(assert (=> b!603526 m!868843))

(assert (=> b!603531 m!868821))

(declare-fun m!868845 () Bool)

(assert (=> b!603531 m!868845))

(assert (=> b!603531 m!868845))

(declare-fun m!868847 () Bool)

(assert (=> b!603531 m!868847))

(declare-fun m!868849 () Bool)

(assert (=> b!603532 m!868849))

(declare-fun m!868851 () Bool)

(assert (=> b!603532 m!868851))

(declare-fun m!868853 () Bool)

(assert (=> b!603532 m!868853))

(assert (=> b!603532 m!868105))

(assert (=> b!603532 m!868851))

(assert (=> b!603532 m!868851))

(declare-fun m!868855 () Bool)

(assert (=> b!603532 m!868855))

(assert (=> b!603532 m!868327))

(declare-fun m!868857 () Bool)

(assert (=> b!603532 m!868857))

(assert (=> b!603532 m!868327))

(assert (=> b!603532 m!868105))

(assert (=> b!603532 m!868839))

(assert (=> b!603532 m!868851))

(declare-fun m!868859 () Bool)

(assert (=> b!603532 m!868859))

(assert (=> bm!40563 d!212433))

(declare-fun d!212435 () Bool)

(declare-fun charsToBigInt!1 (List!6045) Int)

(assert (=> d!212435 (= (inv!17 (value!39152 token!491)) (= (charsToBigInt!1 (text!9037 (value!39152 token!491))) (value!39144 (value!39152 token!491))))))

(declare-fun bs!71098 () Bool)

(assert (= bs!71098 d!212435))

(declare-fun m!868861 () Bool)

(assert (=> bs!71098 m!868861))

(assert (=> b!603028 d!212435))

(declare-fun d!212437 () Bool)

(declare-fun lt!257309 () Bool)

(assert (=> d!212437 (= lt!257309 (select (content!1092 (t!80047 rules!3103)) (rule!1979 token!491)))))

(declare-fun e!365727 () Bool)

(assert (=> d!212437 (= lt!257309 e!365727)))

(declare-fun res!261297 () Bool)

(assert (=> d!212437 (=> (not res!261297) (not e!365727))))

(assert (=> d!212437 (= res!261297 ((_ is Cons!6036) (t!80047 rules!3103)))))

(assert (=> d!212437 (= (contains!1415 (t!80047 rules!3103) (rule!1979 token!491)) lt!257309)))

(declare-fun b!603533 () Bool)

(declare-fun e!365728 () Bool)

(assert (=> b!603533 (= e!365727 e!365728)))

(declare-fun res!261298 () Bool)

(assert (=> b!603533 (=> res!261298 e!365728)))

(assert (=> b!603533 (= res!261298 (= (h!11437 (t!80047 rules!3103)) (rule!1979 token!491)))))

(declare-fun b!603534 () Bool)

(assert (=> b!603534 (= e!365728 (contains!1415 (t!80047 (t!80047 rules!3103)) (rule!1979 token!491)))))

(assert (= (and d!212437 res!261297) b!603533))

(assert (= (and b!603533 (not res!261298)) b!603534))

(assert (=> d!212437 m!868811))

(declare-fun m!868863 () Bool)

(assert (=> d!212437 m!868863))

(declare-fun m!868865 () Bool)

(assert (=> b!603534 m!868865))

(assert (=> b!603129 d!212437))

(declare-fun d!212439 () Bool)

(declare-fun c!111925 () Bool)

(assert (=> d!212439 (= c!111925 ((_ is Node!1920) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun e!365729 () Bool)

(assert (=> d!212439 (= (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))) e!365729)))

(declare-fun b!603535 () Bool)

(assert (=> b!603535 (= e!365729 (inv!7667 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun b!603536 () Bool)

(declare-fun e!365730 () Bool)

(assert (=> b!603536 (= e!365729 e!365730)))

(declare-fun res!261299 () Bool)

(assert (=> b!603536 (= res!261299 (not ((_ is Leaf!3029) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))))))))

(assert (=> b!603536 (=> res!261299 e!365730)))

(declare-fun b!603537 () Bool)

(assert (=> b!603537 (= e!365730 (inv!7668 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))))))

(assert (= (and d!212439 c!111925) b!603535))

(assert (= (and d!212439 (not c!111925)) b!603536))

(assert (= (and b!603536 (not res!261299)) b!603537))

(declare-fun m!868867 () Bool)

(assert (=> b!603535 m!868867))

(declare-fun m!868869 () Bool)

(assert (=> b!603537 m!868869))

(assert (=> b!603106 d!212439))

(declare-fun d!212441 () Bool)

(assert (=> d!212441 (= (isDefined!1365 lt!257153) (not (isEmpty!4357 lt!257153)))))

(declare-fun bs!71099 () Bool)

(assert (= bs!71099 d!212441))

(assert (=> bs!71099 m!868099))

(assert (=> b!603011 d!212441))

(declare-fun b!603540 () Bool)

(declare-fun e!365732 () Bool)

(assert (=> b!603540 (= e!365732 (isPrefix!831 (tail!807 (tail!807 input!2705)) (tail!807 (tail!807 lt!257052))))))

(declare-fun d!212443 () Bool)

(declare-fun e!365731 () Bool)

(assert (=> d!212443 e!365731))

(declare-fun res!261301 () Bool)

(assert (=> d!212443 (=> res!261301 e!365731)))

(declare-fun lt!257310 () Bool)

(assert (=> d!212443 (= res!261301 (not lt!257310))))

(declare-fun e!365733 () Bool)

(assert (=> d!212443 (= lt!257310 e!365733)))

(declare-fun res!261303 () Bool)

(assert (=> d!212443 (=> res!261303 e!365733)))

(assert (=> d!212443 (= res!261303 ((_ is Nil!6034) (tail!807 input!2705)))))

(assert (=> d!212443 (= (isPrefix!831 (tail!807 input!2705) (tail!807 lt!257052)) lt!257310)))

(declare-fun b!603539 () Bool)

(declare-fun res!261302 () Bool)

(assert (=> b!603539 (=> (not res!261302) (not e!365732))))

(assert (=> b!603539 (= res!261302 (= (head!1277 (tail!807 input!2705)) (head!1277 (tail!807 lt!257052))))))

(declare-fun b!603538 () Bool)

(assert (=> b!603538 (= e!365733 e!365732)))

(declare-fun res!261300 () Bool)

(assert (=> b!603538 (=> (not res!261300) (not e!365732))))

(assert (=> b!603538 (= res!261300 (not ((_ is Nil!6034) (tail!807 lt!257052))))))

(declare-fun b!603541 () Bool)

(assert (=> b!603541 (= e!365731 (>= (size!4747 (tail!807 lt!257052)) (size!4747 (tail!807 input!2705))))))

(assert (= (and d!212443 (not res!261303)) b!603538))

(assert (= (and b!603538 res!261300) b!603539))

(assert (= (and b!603539 res!261302) b!603540))

(assert (= (and d!212443 (not res!261301)) b!603541))

(assert (=> b!603540 m!868253))

(assert (=> b!603540 m!868511))

(assert (=> b!603540 m!868293))

(assert (=> b!603540 m!868783))

(assert (=> b!603540 m!868511))

(assert (=> b!603540 m!868783))

(declare-fun m!868871 () Bool)

(assert (=> b!603540 m!868871))

(assert (=> b!603539 m!868253))

(assert (=> b!603539 m!868515))

(assert (=> b!603539 m!868293))

(declare-fun m!868873 () Bool)

(assert (=> b!603539 m!868873))

(assert (=> b!603541 m!868293))

(assert (=> b!603541 m!868779))

(assert (=> b!603541 m!868253))

(assert (=> b!603541 m!868517))

(assert (=> b!603121 d!212443))

(assert (=> b!603121 d!212253))

(assert (=> b!603121 d!212399))

(declare-fun d!212445 () Bool)

(declare-fun c!111928 () Bool)

(assert (=> d!212445 (= c!111928 ((_ is Nil!6034) lt!257168))))

(declare-fun e!365736 () (InoxSet C!3996))

(assert (=> d!212445 (= (content!1089 lt!257168) e!365736)))

(declare-fun b!603546 () Bool)

(assert (=> b!603546 (= e!365736 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603547 () Bool)

(assert (=> b!603547 (= e!365736 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 lt!257168) true) (content!1089 (t!80045 lt!257168))))))

(assert (= (and d!212445 c!111928) b!603546))

(assert (= (and d!212445 (not c!111928)) b!603547))

(declare-fun m!868875 () Bool)

(assert (=> b!603547 m!868875))

(declare-fun m!868877 () Bool)

(assert (=> b!603547 m!868877))

(assert (=> d!212111 d!212445))

(declare-fun d!212447 () Bool)

(declare-fun c!111929 () Bool)

(assert (=> d!212447 (= c!111929 ((_ is Nil!6034) input!2705))))

(declare-fun e!365737 () (InoxSet C!3996))

(assert (=> d!212447 (= (content!1089 input!2705) e!365737)))

(declare-fun b!603548 () Bool)

(assert (=> b!603548 (= e!365737 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603549 () Bool)

(assert (=> b!603549 (= e!365737 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 input!2705) true) (content!1089 (t!80045 input!2705))))))

(assert (= (and d!212447 c!111929) b!603548))

(assert (= (and d!212447 (not c!111929)) b!603549))

(declare-fun m!868879 () Bool)

(assert (=> b!603549 m!868879))

(declare-fun m!868881 () Bool)

(assert (=> b!603549 m!868881))

(assert (=> d!212111 d!212447))

(declare-fun d!212449 () Bool)

(declare-fun c!111930 () Bool)

(assert (=> d!212449 (= c!111930 ((_ is Nil!6034) suffix!1342))))

(declare-fun e!365738 () (InoxSet C!3996))

(assert (=> d!212449 (= (content!1089 suffix!1342) e!365738)))

(declare-fun b!603550 () Bool)

(assert (=> b!603550 (= e!365738 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603551 () Bool)

(assert (=> b!603551 (= e!365738 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 suffix!1342) true) (content!1089 (t!80045 suffix!1342))))))

(assert (= (and d!212449 c!111930) b!603550))

(assert (= (and d!212449 (not c!111930)) b!603551))

(declare-fun m!868883 () Bool)

(assert (=> b!603551 m!868883))

(declare-fun m!868885 () Bool)

(assert (=> b!603551 m!868885))

(assert (=> d!212111 d!212449))

(declare-fun b!603552 () Bool)

(declare-fun res!261304 () Bool)

(declare-fun e!365739 () Bool)

(assert (=> b!603552 (=> (not res!261304) (not e!365739))))

(declare-fun lt!257311 () Option!1554)

(assert (=> b!603552 (= res!261304 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257311)))) (_2!3720 (get!2319 lt!257311))) lt!257052))))

(declare-fun b!603553 () Bool)

(declare-fun e!365740 () Option!1554)

(declare-fun lt!257314 () Option!1554)

(declare-fun lt!257312 () Option!1554)

(assert (=> b!603553 (= e!365740 (ite (and ((_ is None!1553) lt!257314) ((_ is None!1553) lt!257312)) None!1553 (ite ((_ is None!1553) lt!257312) lt!257314 (ite ((_ is None!1553) lt!257314) lt!257312 (ite (>= (size!4746 (_1!3720 (v!16450 lt!257314))) (size!4746 (_1!3720 (v!16450 lt!257312)))) lt!257314 lt!257312)))))))

(declare-fun call!40583 () Option!1554)

(assert (=> b!603553 (= lt!257314 call!40583)))

(assert (=> b!603553 (= lt!257312 (maxPrefix!787 thiss!22590 (t!80047 (t!80047 rules!3103)) lt!257052))))

(declare-fun b!603554 () Bool)

(declare-fun res!261306 () Bool)

(assert (=> b!603554 (=> (not res!261306) (not e!365739))))

(assert (=> b!603554 (= res!261306 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257311)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257311))))))))

(declare-fun b!603555 () Bool)

(declare-fun e!365741 () Bool)

(assert (=> b!603555 (= e!365741 e!365739)))

(declare-fun res!261305 () Bool)

(assert (=> b!603555 (=> (not res!261305) (not e!365739))))

(assert (=> b!603555 (= res!261305 (isDefined!1365 lt!257311))))

(declare-fun d!212451 () Bool)

(assert (=> d!212451 e!365741))

(declare-fun res!261310 () Bool)

(assert (=> d!212451 (=> res!261310 e!365741)))

(assert (=> d!212451 (= res!261310 (isEmpty!4357 lt!257311))))

(assert (=> d!212451 (= lt!257311 e!365740)))

(declare-fun c!111931 () Bool)

(assert (=> d!212451 (= c!111931 (and ((_ is Cons!6036) (t!80047 rules!3103)) ((_ is Nil!6036) (t!80047 (t!80047 rules!3103)))))))

(declare-fun lt!257313 () Unit!10988)

(declare-fun lt!257315 () Unit!10988)

(assert (=> d!212451 (= lt!257313 lt!257315)))

(assert (=> d!212451 (isPrefix!831 lt!257052 lt!257052)))

(assert (=> d!212451 (= lt!257315 (lemmaIsPrefixRefl!567 lt!257052 lt!257052))))

(assert (=> d!212451 (rulesValidInductive!447 thiss!22590 (t!80047 rules!3103))))

(assert (=> d!212451 (= (maxPrefix!787 thiss!22590 (t!80047 rules!3103) lt!257052) lt!257311)))

(declare-fun b!603556 () Bool)

(assert (=> b!603556 (= e!365740 call!40583)))

(declare-fun b!603557 () Bool)

(declare-fun res!261308 () Bool)

(assert (=> b!603557 (=> (not res!261308) (not e!365739))))

(assert (=> b!603557 (= res!261308 (= (value!39152 (_1!3720 (get!2319 lt!257311))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257311)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257311)))))))))

(declare-fun b!603558 () Bool)

(assert (=> b!603558 (= e!365739 (contains!1415 (t!80047 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257311)))))))

(declare-fun bm!40578 () Bool)

(assert (=> bm!40578 (= call!40583 (maxPrefixOneRule!450 thiss!22590 (h!11437 (t!80047 rules!3103)) lt!257052))))

(declare-fun b!603559 () Bool)

(declare-fun res!261307 () Bool)

(assert (=> b!603559 (=> (not res!261307) (not e!365739))))

(assert (=> b!603559 (= res!261307 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257311)))) (originalCharacters!1242 (_1!3720 (get!2319 lt!257311)))))))

(declare-fun b!603560 () Bool)

(declare-fun res!261309 () Bool)

(assert (=> b!603560 (=> (not res!261309) (not e!365739))))

(assert (=> b!603560 (= res!261309 (< (size!4747 (_2!3720 (get!2319 lt!257311))) (size!4747 lt!257052)))))

(assert (= (and d!212451 c!111931) b!603556))

(assert (= (and d!212451 (not c!111931)) b!603553))

(assert (= (or b!603556 b!603553) bm!40578))

(assert (= (and d!212451 (not res!261310)) b!603555))

(assert (= (and b!603555 res!261305) b!603559))

(assert (= (and b!603559 res!261307) b!603560))

(assert (= (and b!603560 res!261309) b!603552))

(assert (= (and b!603552 res!261304) b!603557))

(assert (= (and b!603557 res!261308) b!603554))

(assert (= (and b!603554 res!261306) b!603558))

(declare-fun m!868887 () Bool)

(assert (=> b!603552 m!868887))

(declare-fun m!868889 () Bool)

(assert (=> b!603552 m!868889))

(assert (=> b!603552 m!868889))

(declare-fun m!868891 () Bool)

(assert (=> b!603552 m!868891))

(assert (=> b!603552 m!868891))

(declare-fun m!868893 () Bool)

(assert (=> b!603552 m!868893))

(assert (=> b!603557 m!868887))

(declare-fun m!868895 () Bool)

(assert (=> b!603557 m!868895))

(assert (=> b!603557 m!868895))

(declare-fun m!868897 () Bool)

(assert (=> b!603557 m!868897))

(assert (=> b!603559 m!868887))

(assert (=> b!603559 m!868889))

(assert (=> b!603559 m!868889))

(assert (=> b!603559 m!868891))

(declare-fun m!868899 () Bool)

(assert (=> b!603555 m!868899))

(declare-fun m!868901 () Bool)

(assert (=> b!603553 m!868901))

(assert (=> b!603554 m!868887))

(assert (=> b!603554 m!868889))

(assert (=> b!603554 m!868889))

(assert (=> b!603554 m!868891))

(assert (=> b!603554 m!868891))

(declare-fun m!868903 () Bool)

(assert (=> b!603554 m!868903))

(declare-fun m!868905 () Bool)

(assert (=> d!212451 m!868905))

(assert (=> d!212451 m!868161))

(assert (=> d!212451 m!868163))

(assert (=> d!212451 m!868817))

(assert (=> b!603560 m!868887))

(declare-fun m!868907 () Bool)

(assert (=> b!603560 m!868907))

(assert (=> b!603560 m!868167))

(assert (=> b!603558 m!868887))

(declare-fun m!868909 () Bool)

(assert (=> b!603558 m!868909))

(declare-fun m!868911 () Bool)

(assert (=> bm!40578 m!868911))

(assert (=> b!603044 d!212451))

(assert (=> d!212119 d!212113))

(declare-fun b!603561 () Bool)

(declare-fun e!365743 () List!6044)

(assert (=> b!603561 (= e!365743 (_2!3720 (get!2319 lt!257219)))))

(declare-fun d!212453 () Bool)

(declare-fun e!365742 () Bool)

(assert (=> d!212453 e!365742))

(declare-fun res!261312 () Bool)

(assert (=> d!212453 (=> (not res!261312) (not e!365742))))

(declare-fun lt!257332 () List!6044)

(assert (=> d!212453 (= res!261312 (= (content!1089 lt!257332) ((_ map or) (content!1089 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) (content!1089 (_2!3720 (get!2319 lt!257219))))))))

(assert (=> d!212453 (= lt!257332 e!365743)))

(declare-fun c!111932 () Bool)

(assert (=> d!212453 (= c!111932 ((_ is Nil!6034) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))))))

(assert (=> d!212453 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))) (_2!3720 (get!2319 lt!257219))) lt!257332)))

(declare-fun b!603563 () Bool)

(declare-fun res!261311 () Bool)

(assert (=> b!603563 (=> (not res!261311) (not e!365742))))

(assert (=> b!603563 (= res!261311 (= (size!4747 lt!257332) (+ (size!4747 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) (size!4747 (_2!3720 (get!2319 lt!257219))))))))

(declare-fun b!603562 () Bool)

(assert (=> b!603562 (= e!365743 (Cons!6034 (h!11435 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) (++!1691 (t!80045 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219))))) (_2!3720 (get!2319 lt!257219)))))))

(declare-fun b!603564 () Bool)

(assert (=> b!603564 (= e!365742 (or (not (= (_2!3720 (get!2319 lt!257219)) Nil!6034)) (= lt!257332 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257219)))))))))

(assert (= (and d!212453 c!111932) b!603561))

(assert (= (and d!212453 (not c!111932)) b!603562))

(assert (= (and d!212453 res!261312) b!603563))

(assert (= (and b!603563 res!261311) b!603564))

(declare-fun m!868913 () Bool)

(assert (=> d!212453 m!868913))

(assert (=> d!212453 m!868323))

(declare-fun m!868915 () Bool)

(assert (=> d!212453 m!868915))

(declare-fun m!868917 () Bool)

(assert (=> d!212453 m!868917))

(declare-fun m!868919 () Bool)

(assert (=> b!603563 m!868919))

(assert (=> b!603563 m!868323))

(declare-fun m!868921 () Bool)

(assert (=> b!603563 m!868921))

(assert (=> b!603563 m!868313))

(declare-fun m!868923 () Bool)

(assert (=> b!603562 m!868923))

(assert (=> b!603150 d!212453))

(assert (=> b!603150 d!212383))

(assert (=> b!603150 d!212385))

(assert (=> b!603150 d!212299))

(assert (=> b!603108 d!212407))

(assert (=> b!603108 d!212297))

(declare-fun b!603575 () Bool)

(declare-fun e!365749 () List!6044)

(assert (=> b!603575 (= e!365749 Nil!6034)))

(declare-fun b!603577 () Bool)

(declare-fun e!365750 () List!6044)

(declare-fun list!2535 (IArray!3841) List!6044)

(assert (=> b!603577 (= e!365750 (list!2535 (xs!4557 (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun b!603578 () Bool)

(assert (=> b!603578 (= e!365750 (++!1691 (list!2533 (left!4842 (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061)))))) (list!2533 (right!5172 (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061))))))))))

(declare-fun b!603576 () Bool)

(assert (=> b!603576 (= e!365749 e!365750)))

(declare-fun c!111939 () Bool)

(assert (=> b!603576 (= c!111939 ((_ is Leaf!3029) (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun d!212455 () Bool)

(declare-fun c!111938 () Bool)

(assert (=> d!212455 (= c!111938 ((_ is Empty!1920) (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061))))))))

(assert (=> d!212455 (= (list!2533 (c!111808 (charsOf!832 (_1!3720 (v!16450 lt!257061))))) e!365749)))

(assert (= (and d!212455 c!111938) b!603575))

(assert (= (and d!212455 (not c!111938)) b!603576))

(assert (= (and b!603576 c!111939) b!603577))

(assert (= (and b!603576 (not c!111939)) b!603578))

(declare-fun m!868945 () Bool)

(assert (=> b!603577 m!868945))

(declare-fun m!868947 () Bool)

(assert (=> b!603578 m!868947))

(declare-fun m!868949 () Bool)

(assert (=> b!603578 m!868949))

(assert (=> b!603578 m!868947))

(assert (=> b!603578 m!868949))

(declare-fun m!868951 () Bool)

(assert (=> b!603578 m!868951))

(assert (=> d!212169 d!212455))

(declare-fun d!212469 () Bool)

(assert (=> d!212469 (= (_2!3720 (v!16450 lt!257061)) lt!257068)))

(assert (=> d!212469 true))

(declare-fun _$63!749 () Unit!10988)

(assert (=> d!212469 (= (choose!4403 lt!257064 (_2!3720 (v!16450 lt!257061)) lt!257064 lt!257068 input!2705) _$63!749)))

(assert (=> d!212133 d!212469))

(declare-fun b!603581 () Bool)

(declare-fun e!365752 () Bool)

(assert (=> b!603581 (= e!365752 (isPrefix!831 (tail!807 lt!257064) (tail!807 input!2705)))))

(declare-fun d!212471 () Bool)

(declare-fun e!365751 () Bool)

(assert (=> d!212471 e!365751))

(declare-fun res!261314 () Bool)

(assert (=> d!212471 (=> res!261314 e!365751)))

(declare-fun lt!257342 () Bool)

(assert (=> d!212471 (= res!261314 (not lt!257342))))

(declare-fun e!365753 () Bool)

(assert (=> d!212471 (= lt!257342 e!365753)))

(declare-fun res!261316 () Bool)

(assert (=> d!212471 (=> res!261316 e!365753)))

(assert (=> d!212471 (= res!261316 ((_ is Nil!6034) lt!257064))))

(assert (=> d!212471 (= (isPrefix!831 lt!257064 input!2705) lt!257342)))

(declare-fun b!603580 () Bool)

(declare-fun res!261315 () Bool)

(assert (=> b!603580 (=> (not res!261315) (not e!365752))))

(assert (=> b!603580 (= res!261315 (= (head!1277 lt!257064) (head!1277 input!2705)))))

(declare-fun b!603579 () Bool)

(assert (=> b!603579 (= e!365753 e!365752)))

(declare-fun res!261313 () Bool)

(assert (=> b!603579 (=> (not res!261313) (not e!365752))))

(assert (=> b!603579 (= res!261313 (not ((_ is Nil!6034) input!2705)))))

(declare-fun b!603582 () Bool)

(assert (=> b!603582 (= e!365751 (>= (size!4747 input!2705) (size!4747 lt!257064)))))

(assert (= (and d!212471 (not res!261316)) b!603579))

(assert (= (and b!603579 res!261313) b!603580))

(assert (= (and b!603580 res!261315) b!603581))

(assert (= (and d!212471 (not res!261314)) b!603582))

(assert (=> b!603581 m!868229))

(assert (=> b!603581 m!868253))

(assert (=> b!603581 m!868229))

(assert (=> b!603581 m!868253))

(declare-fun m!868953 () Bool)

(assert (=> b!603581 m!868953))

(assert (=> b!603580 m!868235))

(assert (=> b!603580 m!868257))

(assert (=> b!603582 m!868105))

(assert (=> b!603582 m!867819))

(assert (=> d!212133 d!212471))

(declare-fun d!212473 () Bool)

(declare-fun lt!257343 () Int)

(assert (=> d!212473 (>= lt!257343 0)))

(declare-fun e!365764 () Int)

(assert (=> d!212473 (= lt!257343 e!365764)))

(declare-fun c!111944 () Bool)

(assert (=> d!212473 (= c!111944 ((_ is Nil!6034) (_2!3720 (get!2319 lt!257219))))))

(assert (=> d!212473 (= (size!4747 (_2!3720 (get!2319 lt!257219))) lt!257343)))

(declare-fun b!603597 () Bool)

(assert (=> b!603597 (= e!365764 0)))

(declare-fun b!603598 () Bool)

(assert (=> b!603598 (= e!365764 (+ 1 (size!4747 (t!80045 (_2!3720 (get!2319 lt!257219))))))))

(assert (= (and d!212473 c!111944) b!603597))

(assert (= (and d!212473 (not c!111944)) b!603598))

(declare-fun m!868955 () Bool)

(assert (=> b!603598 m!868955))

(assert (=> b!603154 d!212473))

(assert (=> b!603154 d!212299))

(assert (=> b!603154 d!212323))

(declare-fun d!212475 () Bool)

(declare-fun charsToInt!0 (List!6045) (_ BitVec 32))

(assert (=> d!212475 (= (inv!16 (value!39152 token!491)) (= (charsToInt!0 (text!9036 (value!39152 token!491))) (value!39143 (value!39152 token!491))))))

(declare-fun bs!71102 () Bool)

(assert (= bs!71102 d!212475))

(declare-fun m!868957 () Bool)

(assert (=> bs!71102 m!868957))

(assert (=> b!603031 d!212475))

(declare-fun d!212477 () Bool)

(declare-fun lt!257344 () Int)

(assert (=> d!212477 (>= lt!257344 0)))

(declare-fun e!365769 () Int)

(assert (=> d!212477 (= lt!257344 e!365769)))

(declare-fun c!111945 () Bool)

(assert (=> d!212477 (= c!111945 ((_ is Nil!6034) lt!257055))))

(assert (=> d!212477 (= (size!4747 lt!257055) lt!257344)))

(declare-fun b!603603 () Bool)

(assert (=> b!603603 (= e!365769 0)))

(declare-fun b!603604 () Bool)

(assert (=> b!603604 (= e!365769 (+ 1 (size!4747 (t!80045 lt!257055))))))

(assert (= (and d!212477 c!111945) b!603603))

(assert (= (and d!212477 (not c!111945)) b!603604))

(declare-fun m!868959 () Bool)

(assert (=> b!603604 m!868959))

(assert (=> b!603080 d!212477))

(assert (=> b!603080 d!212161))

(declare-fun d!212479 () Bool)

(declare-fun e!365770 () Bool)

(assert (=> d!212479 e!365770))

(declare-fun res!261327 () Bool)

(assert (=> d!212479 (=> (not res!261327) (not e!365770))))

(declare-fun lt!257345 () BalanceConc!3848)

(assert (=> d!212479 (= res!261327 (= (list!2532 lt!257345) lt!257067))))

(assert (=> d!212479 (= lt!257345 (BalanceConc!3849 (fromList!280 lt!257067)))))

(assert (=> d!212479 (= (fromListB!606 lt!257067) lt!257345)))

(declare-fun b!603605 () Bool)

(assert (=> b!603605 (= e!365770 (isBalanced!529 (fromList!280 lt!257067)))))

(assert (= (and d!212479 res!261327) b!603605))

(declare-fun m!868961 () Bool)

(assert (=> d!212479 m!868961))

(declare-fun m!868963 () Bool)

(assert (=> d!212479 m!868963))

(assert (=> b!603605 m!868963))

(assert (=> b!603605 m!868963))

(declare-fun m!868965 () Bool)

(assert (=> b!603605 m!868965))

(assert (=> d!212187 d!212479))

(declare-fun b!603606 () Bool)

(declare-fun e!365772 () List!6044)

(assert (=> b!603606 (= e!365772 suffix!1342)))

(declare-fun d!212481 () Bool)

(declare-fun e!365771 () Bool)

(assert (=> d!212481 e!365771))

(declare-fun res!261329 () Bool)

(assert (=> d!212481 (=> (not res!261329) (not e!365771))))

(declare-fun lt!257346 () List!6044)

(assert (=> d!212481 (= res!261329 (= (content!1089 lt!257346) ((_ map or) (content!1089 (t!80045 input!2705)) (content!1089 suffix!1342))))))

(assert (=> d!212481 (= lt!257346 e!365772)))

(declare-fun c!111946 () Bool)

(assert (=> d!212481 (= c!111946 ((_ is Nil!6034) (t!80045 input!2705)))))

(assert (=> d!212481 (= (++!1691 (t!80045 input!2705) suffix!1342) lt!257346)))

(declare-fun b!603608 () Bool)

(declare-fun res!261328 () Bool)

(assert (=> b!603608 (=> (not res!261328) (not e!365771))))

(assert (=> b!603608 (= res!261328 (= (size!4747 lt!257346) (+ (size!4747 (t!80045 input!2705)) (size!4747 suffix!1342))))))

(declare-fun b!603607 () Bool)

(assert (=> b!603607 (= e!365772 (Cons!6034 (h!11435 (t!80045 input!2705)) (++!1691 (t!80045 (t!80045 input!2705)) suffix!1342)))))

(declare-fun b!603609 () Bool)

(assert (=> b!603609 (= e!365771 (or (not (= suffix!1342 Nil!6034)) (= lt!257346 (t!80045 input!2705))))))

(assert (= (and d!212481 c!111946) b!603606))

(assert (= (and d!212481 (not c!111946)) b!603607))

(assert (= (and d!212481 res!261329) b!603608))

(assert (= (and b!603608 res!261328) b!603609))

(declare-fun m!868967 () Bool)

(assert (=> d!212481 m!868967))

(assert (=> d!212481 m!868881))

(assert (=> d!212481 m!868177))

(declare-fun m!868969 () Bool)

(assert (=> b!603608 m!868969))

(assert (=> b!603608 m!868639))

(assert (=> b!603608 m!868181))

(declare-fun m!868971 () Bool)

(assert (=> b!603607 m!868971))

(assert (=> b!603061 d!212481))

(declare-fun d!212483 () Bool)

(declare-fun lt!257347 () Int)

(assert (=> d!212483 (>= lt!257347 0)))

(declare-fun e!365773 () Int)

(assert (=> d!212483 (= lt!257347 e!365773)))

(declare-fun c!111947 () Bool)

(assert (=> d!212483 (= c!111947 ((_ is Nil!6034) (t!80045 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061))))))))

(assert (=> d!212483 (= (size!4747 (t!80045 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061))))) lt!257347)))

(declare-fun b!603610 () Bool)

(assert (=> b!603610 (= e!365773 0)))

(declare-fun b!603611 () Bool)

(assert (=> b!603611 (= e!365773 (+ 1 (size!4747 (t!80045 (t!80045 (originalCharacters!1242 (_1!3720 (v!16450 lt!257061))))))))))

(assert (= (and d!212483 c!111947) b!603610))

(assert (= (and d!212483 (not c!111947)) b!603611))

(declare-fun m!868973 () Bool)

(assert (=> b!603611 m!868973))

(assert (=> b!603065 d!212483))

(declare-fun b!603612 () Bool)

(declare-fun e!365775 () Bool)

(declare-fun e!365774 () Bool)

(assert (=> b!603612 (= e!365775 e!365774)))

(declare-fun c!111949 () Bool)

(assert (=> b!603612 (= c!111949 ((_ is IntegerValue!3682) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))

(declare-fun b!603613 () Bool)

(assert (=> b!603613 (= e!365774 (inv!17 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))

(declare-fun b!603614 () Bool)

(declare-fun e!365776 () Bool)

(assert (=> b!603614 (= e!365776 (inv!15 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))

(declare-fun b!603615 () Bool)

(declare-fun res!261330 () Bool)

(assert (=> b!603615 (=> res!261330 e!365776)))

(assert (=> b!603615 (= res!261330 (not ((_ is IntegerValue!3683) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))))

(assert (=> b!603615 (= e!365774 e!365776)))

(declare-fun b!603616 () Bool)

(assert (=> b!603616 (= e!365775 (inv!16 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))

(declare-fun d!212485 () Bool)

(declare-fun c!111948 () Bool)

(assert (=> d!212485 (= c!111948 ((_ is IntegerValue!3681) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))

(assert (=> d!212485 (= (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)) e!365775)))

(assert (= (and d!212485 c!111948) b!603616))

(assert (= (and d!212485 (not c!111948)) b!603612))

(assert (= (and b!603612 c!111949) b!603613))

(assert (= (and b!603612 (not c!111949)) b!603615))

(assert (= (and b!603615 (not res!261330)) b!603614))

(declare-fun m!868975 () Bool)

(assert (=> b!603613 m!868975))

(declare-fun m!868977 () Bool)

(assert (=> b!603614 m!868977))

(declare-fun m!868979 () Bool)

(assert (=> b!603616 m!868979))

(assert (=> tb!52547 d!212485))

(assert (=> b!603148 d!212299))

(declare-fun d!212487 () Bool)

(declare-fun lt!257348 () Int)

(assert (=> d!212487 (>= lt!257348 0)))

(declare-fun e!365777 () Int)

(assert (=> d!212487 (= lt!257348 e!365777)))

(declare-fun c!111950 () Bool)

(assert (=> d!212487 (= c!111950 ((_ is Nil!6034) (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))))))

(assert (=> d!212487 (= (size!4747 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))) lt!257348)))

(declare-fun b!603617 () Bool)

(assert (=> b!603617 (= e!365777 0)))

(declare-fun b!603618 () Bool)

(assert (=> b!603618 (= e!365777 (+ 1 (size!4747 (t!80045 (originalCharacters!1242 (_1!3720 (get!2319 lt!257219)))))))))

(assert (= (and d!212487 c!111950) b!603617))

(assert (= (and d!212487 (not c!111950)) b!603618))

(declare-fun m!868981 () Bool)

(assert (=> b!603618 m!868981))

(assert (=> b!603148 d!212487))

(declare-fun b!603619 () Bool)

(declare-fun e!365779 () Bool)

(declare-fun e!365778 () Bool)

(assert (=> b!603619 (= e!365779 e!365778)))

(declare-fun c!111952 () Bool)

(assert (=> b!603619 (= c!111952 ((_ is IntegerValue!3682) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))))))

(declare-fun b!603620 () Bool)

(assert (=> b!603620 (= e!365778 (inv!17 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))))))

(declare-fun b!603621 () Bool)

(declare-fun e!365780 () Bool)

(assert (=> b!603621 (= e!365780 (inv!15 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))))))

(declare-fun b!603622 () Bool)

(declare-fun res!261331 () Bool)

(assert (=> b!603622 (=> res!261331 e!365780)))

(assert (=> b!603622 (= res!261331 (not ((_ is IntegerValue!3683) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064)))))))

(assert (=> b!603622 (= e!365778 e!365780)))

(declare-fun b!603623 () Bool)

(assert (=> b!603623 (= e!365779 (inv!16 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))))))

(declare-fun d!212489 () Bool)

(declare-fun c!111951 () Bool)

(assert (=> d!212489 (= c!111951 ((_ is IntegerValue!3681) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))))))

(assert (=> d!212489 (= (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 lt!257064))) e!365779)))

(assert (= (and d!212489 c!111951) b!603623))

(assert (= (and d!212489 (not c!111951)) b!603619))

(assert (= (and b!603619 c!111952) b!603620))

(assert (= (and b!603619 (not c!111952)) b!603622))

(assert (= (and b!603622 (not res!261331)) b!603621))

(declare-fun m!868983 () Bool)

(assert (=> b!603620 m!868983))

(declare-fun m!868985 () Bool)

(assert (=> b!603621 m!868985))

(declare-fun m!868987 () Bool)

(assert (=> b!603623 m!868987))

(assert (=> tb!52559 d!212489))

(assert (=> b!603040 d!212021))

(declare-fun d!212491 () Bool)

(declare-fun lt!257349 () Int)

(assert (=> d!212491 (>= lt!257349 0)))

(declare-fun e!365781 () Int)

(assert (=> d!212491 (= lt!257349 e!365781)))

(declare-fun c!111953 () Bool)

(assert (=> d!212491 (= c!111953 ((_ is Nil!6034) (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))

(assert (=> d!212491 (= (size!4747 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))) lt!257349)))

(declare-fun b!603624 () Bool)

(assert (=> b!603624 (= e!365781 0)))

(declare-fun b!603625 () Bool)

(assert (=> b!603625 (= e!365781 (+ 1 (size!4747 (t!80045 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))))

(assert (= (and d!212491 c!111953) b!603624))

(assert (= (and d!212491 (not c!111953)) b!603625))

(declare-fun m!868989 () Bool)

(assert (=> b!603625 m!868989))

(assert (=> b!603099 d!212491))

(assert (=> b!603099 d!212139))

(declare-fun d!212493 () Bool)

(declare-fun lt!257350 () Bool)

(assert (=> d!212493 (= lt!257350 (select (content!1092 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257153)))))))

(declare-fun e!365789 () Bool)

(assert (=> d!212493 (= lt!257350 e!365789)))

(declare-fun res!261337 () Bool)

(assert (=> d!212493 (=> (not res!261337) (not e!365789))))

(assert (=> d!212493 (= res!261337 ((_ is Cons!6036) rules!3103))))

(assert (=> d!212493 (= (contains!1415 rules!3103 (rule!1979 (_1!3720 (get!2319 lt!257153)))) lt!257350)))

(declare-fun b!603635 () Bool)

(declare-fun e!365790 () Bool)

(assert (=> b!603635 (= e!365789 e!365790)))

(declare-fun res!261338 () Bool)

(assert (=> b!603635 (=> res!261338 e!365790)))

(assert (=> b!603635 (= res!261338 (= (h!11437 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257153)))))))

(declare-fun b!603636 () Bool)

(assert (=> b!603636 (= e!365790 (contains!1415 (t!80047 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257153)))))))

(assert (= (and d!212493 res!261337) b!603635))

(assert (= (and b!603635 (not res!261338)) b!603636))

(assert (=> d!212493 m!868303))

(declare-fun m!868991 () Bool)

(assert (=> d!212493 m!868991))

(declare-fun m!868993 () Bool)

(assert (=> b!603636 m!868993))

(assert (=> b!603014 d!212493))

(assert (=> b!603014 d!212269))

(declare-fun d!212495 () Bool)

(assert (=> d!212495 (= (nullable!436 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (nullableFct!144 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun bs!71103 () Bool)

(assert (= bs!71103 d!212495))

(declare-fun m!868995 () Bool)

(assert (=> bs!71103 m!868995))

(assert (=> b!603085 d!212495))

(assert (=> b!603050 d!212361))

(assert (=> b!603050 d!212363))

(assert (=> b!603050 d!212277))

(declare-fun bs!71104 () Bool)

(declare-fun d!212497 () Bool)

(assert (= bs!71104 (and d!212497 d!212343)))

(declare-fun lambda!16092 () Int)

(assert (=> bs!71104 (= (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (= lambda!16092 lambda!16080))))

(declare-fun bs!71105 () Bool)

(assert (= bs!71105 (and d!212497 d!212395)))

(assert (=> bs!71105 (= (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) (= lambda!16092 lambda!16087))))

(assert (=> d!212497 true))

(assert (=> d!212497 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (h!11437 rules!3103)))) (dynLambda!3494 order!4815 lambda!16092))))

(assert (=> d!212497 (= (equivClasses!461 (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (h!11437 rules!3103)))) (Forall2!229 lambda!16092))))

(declare-fun bs!71106 () Bool)

(assert (= bs!71106 d!212497))

(declare-fun m!869007 () Bool)

(assert (=> bs!71106 m!869007))

(assert (=> b!603042 d!212497))

(declare-fun d!212505 () Bool)

(declare-fun res!261348 () Bool)

(declare-fun e!365801 () Bool)

(assert (=> d!212505 (=> res!261348 e!365801)))

(assert (=> d!212505 (= res!261348 ((_ is Nil!6036) rules!3103))))

(assert (=> d!212505 (= (noDuplicateTag!443 thiss!22590 rules!3103 Nil!6038) e!365801)))

(declare-fun b!603650 () Bool)

(declare-fun e!365802 () Bool)

(assert (=> b!603650 (= e!365801 e!365802)))

(declare-fun res!261349 () Bool)

(assert (=> b!603650 (=> (not res!261349) (not e!365802))))

(declare-fun contains!1416 (List!6048 String!7879) Bool)

(assert (=> b!603650 (= res!261349 (not (contains!1416 Nil!6038 (tag!1465 (h!11437 rules!3103)))))))

(declare-fun b!603651 () Bool)

(assert (=> b!603651 (= e!365802 (noDuplicateTag!443 thiss!22590 (t!80047 rules!3103) (Cons!6038 (tag!1465 (h!11437 rules!3103)) Nil!6038)))))

(assert (= (and d!212505 (not res!261348)) b!603650))

(assert (= (and b!603650 res!261349) b!603651))

(declare-fun m!869025 () Bool)

(assert (=> b!603650 m!869025))

(declare-fun m!869027 () Bool)

(assert (=> b!603651 m!869027))

(assert (=> b!603068 d!212505))

(assert (=> d!212125 d!212131))

(assert (=> d!212125 d!212127))

(declare-fun d!212519 () Bool)

(assert (=> d!212519 (isPrefix!831 lt!257064 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))))

(assert (=> d!212519 true))

(declare-fun _$46!991 () Unit!10988)

(assert (=> d!212519 (= (choose!4402 lt!257064 (_2!3720 (v!16450 lt!257061))) _$46!991)))

(declare-fun bs!71108 () Bool)

(assert (= bs!71108 d!212519))

(assert (=> bs!71108 m!867829))

(assert (=> bs!71108 m!867829))

(assert (=> bs!71108 m!867843))

(assert (=> d!212125 d!212519))

(declare-fun d!212521 () Bool)

(declare-fun lt!257352 () Int)

(assert (=> d!212521 (>= lt!257352 0)))

(declare-fun e!365803 () Int)

(assert (=> d!212521 (= lt!257352 e!365803)))

(declare-fun c!111958 () Bool)

(assert (=> d!212521 (= c!111958 ((_ is Nil!6034) lt!257176))))

(assert (=> d!212521 (= (size!4747 lt!257176) lt!257352)))

(declare-fun b!603652 () Bool)

(assert (=> b!603652 (= e!365803 0)))

(declare-fun b!603653 () Bool)

(assert (=> b!603653 (= e!365803 (+ 1 (size!4747 (t!80045 lt!257176))))))

(assert (= (and d!212521 c!111958) b!603652))

(assert (= (and d!212521 (not c!111958)) b!603653))

(declare-fun m!869029 () Bool)

(assert (=> b!603653 m!869029))

(assert (=> b!603092 d!212521))

(assert (=> b!603092 d!212139))

(declare-fun d!212523 () Bool)

(declare-fun lt!257353 () Int)

(assert (=> d!212523 (>= lt!257353 0)))

(declare-fun e!365804 () Int)

(assert (=> d!212523 (= lt!257353 e!365804)))

(declare-fun c!111959 () Bool)

(assert (=> d!212523 (= c!111959 ((_ is Nil!6034) (_2!3720 (v!16450 lt!257061))))))

(assert (=> d!212523 (= (size!4747 (_2!3720 (v!16450 lt!257061))) lt!257353)))

(declare-fun b!603654 () Bool)

(assert (=> b!603654 (= e!365804 0)))

(declare-fun b!603655 () Bool)

(assert (=> b!603655 (= e!365804 (+ 1 (size!4747 (t!80045 (_2!3720 (v!16450 lt!257061))))))))

(assert (= (and d!212523 c!111959) b!603654))

(assert (= (and d!212523 (not c!111959)) b!603655))

(declare-fun m!869031 () Bool)

(assert (=> b!603655 m!869031))

(assert (=> b!603092 d!212523))

(declare-fun b!603656 () Bool)

(declare-fun res!261350 () Bool)

(declare-fun e!365811 () Bool)

(assert (=> b!603656 (=> res!261350 e!365811)))

(assert (=> b!603656 (= res!261350 (not ((_ is ElementMatch!1537) (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))))))

(declare-fun e!365808 () Bool)

(assert (=> b!603656 (= e!365808 e!365811)))

(declare-fun d!212525 () Bool)

(declare-fun e!365810 () Bool)

(assert (=> d!212525 e!365810))

(declare-fun c!111960 () Bool)

(assert (=> d!212525 (= c!111960 ((_ is EmptyExpr!1537) (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun lt!257354 () Bool)

(declare-fun e!365806 () Bool)

(assert (=> d!212525 (= lt!257354 e!365806)))

(declare-fun c!111962 () Bool)

(assert (=> d!212525 (= c!111962 (isEmpty!4355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))))))

(assert (=> d!212525 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))))

(assert (=> d!212525 (= (matchR!639 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) lt!257354)))

(declare-fun b!603657 () Bool)

(assert (=> b!603657 (= e!365806 (nullable!436 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun b!603658 () Bool)

(assert (=> b!603658 (= e!365808 (not lt!257354))))

(declare-fun b!603659 () Bool)

(declare-fun e!365807 () Bool)

(declare-fun e!365805 () Bool)

(assert (=> b!603659 (= e!365807 e!365805)))

(declare-fun res!261351 () Bool)

(assert (=> b!603659 (=> res!261351 e!365805)))

(declare-fun call!40593 () Bool)

(assert (=> b!603659 (= res!261351 call!40593)))

(declare-fun b!603660 () Bool)

(assert (=> b!603660 (= e!365811 e!365807)))

(declare-fun res!261352 () Bool)

(assert (=> b!603660 (=> (not res!261352) (not e!365807))))

(assert (=> b!603660 (= res!261352 (not lt!257354))))

(declare-fun b!603661 () Bool)

(assert (=> b!603661 (= e!365806 (matchR!639 (derivativeStep!323 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))) (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))))) (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))))))))

(declare-fun b!603662 () Bool)

(declare-fun res!261354 () Bool)

(assert (=> b!603662 (=> res!261354 e!365811)))

(declare-fun e!365809 () Bool)

(assert (=> b!603662 (= res!261354 e!365809)))

(declare-fun res!261357 () Bool)

(assert (=> b!603662 (=> (not res!261357) (not e!365809))))

(assert (=> b!603662 (= res!261357 lt!257354)))

(declare-fun bm!40588 () Bool)

(assert (=> bm!40588 (= call!40593 (isEmpty!4355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun b!603663 () Bool)

(declare-fun res!261355 () Bool)

(assert (=> b!603663 (=> res!261355 e!365805)))

(assert (=> b!603663 (= res!261355 (not (isEmpty!4355 (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))))))))

(declare-fun b!603664 () Bool)

(assert (=> b!603664 (= e!365810 e!365808)))

(declare-fun c!111961 () Bool)

(assert (=> b!603664 (= c!111961 ((_ is EmptyLang!1537) (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun b!603665 () Bool)

(declare-fun res!261356 () Bool)

(assert (=> b!603665 (=> (not res!261356) (not e!365809))))

(assert (=> b!603665 (= res!261356 (not call!40593))))

(declare-fun b!603666 () Bool)

(assert (=> b!603666 (= e!365810 (= lt!257354 call!40593))))

(declare-fun b!603667 () Bool)

(declare-fun res!261353 () Bool)

(assert (=> b!603667 (=> (not res!261353) (not e!365809))))

(assert (=> b!603667 (= res!261353 (isEmpty!4355 (tail!807 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153)))))))))

(declare-fun b!603668 () Bool)

(assert (=> b!603668 (= e!365805 (not (= (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))))))))

(declare-fun b!603669 () Bool)

(assert (=> b!603669 (= e!365809 (= (head!1277 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257153))))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))))))

(assert (= (and d!212525 c!111962) b!603657))

(assert (= (and d!212525 (not c!111962)) b!603661))

(assert (= (and d!212525 c!111960) b!603666))

(assert (= (and d!212525 (not c!111960)) b!603664))

(assert (= (and b!603664 c!111961) b!603658))

(assert (= (and b!603664 (not c!111961)) b!603656))

(assert (= (and b!603656 (not res!261350)) b!603662))

(assert (= (and b!603662 res!261357) b!603665))

(assert (= (and b!603665 res!261356) b!603667))

(assert (= (and b!603667 res!261353) b!603669))

(assert (= (and b!603662 (not res!261354)) b!603660))

(assert (= (and b!603660 res!261352) b!603659))

(assert (= (and b!603659 (not res!261351)) b!603663))

(assert (= (and b!603663 (not res!261355)) b!603668))

(assert (= (or b!603666 b!603659 b!603665) bm!40588))

(assert (=> d!212525 m!868085))

(declare-fun m!869033 () Bool)

(assert (=> d!212525 m!869033))

(declare-fun m!869035 () Bool)

(assert (=> d!212525 m!869035))

(assert (=> b!603661 m!868085))

(declare-fun m!869037 () Bool)

(assert (=> b!603661 m!869037))

(assert (=> b!603661 m!869037))

(declare-fun m!869039 () Bool)

(assert (=> b!603661 m!869039))

(assert (=> b!603661 m!868085))

(declare-fun m!869041 () Bool)

(assert (=> b!603661 m!869041))

(assert (=> b!603661 m!869039))

(assert (=> b!603661 m!869041))

(declare-fun m!869043 () Bool)

(assert (=> b!603661 m!869043))

(declare-fun m!869045 () Bool)

(assert (=> b!603657 m!869045))

(assert (=> b!603667 m!868085))

(assert (=> b!603667 m!869041))

(assert (=> b!603667 m!869041))

(declare-fun m!869047 () Bool)

(assert (=> b!603667 m!869047))

(assert (=> b!603669 m!868085))

(assert (=> b!603669 m!869037))

(assert (=> bm!40588 m!868085))

(assert (=> bm!40588 m!869033))

(assert (=> b!603668 m!868085))

(assert (=> b!603668 m!869037))

(assert (=> b!603663 m!868085))

(assert (=> b!603663 m!869041))

(assert (=> b!603663 m!869041))

(assert (=> b!603663 m!869047))

(assert (=> b!603010 d!212525))

(assert (=> b!603010 d!212269))

(assert (=> b!603010 d!212263))

(assert (=> b!603010 d!212265))

(declare-fun b!603670 () Bool)

(declare-fun e!365813 () List!6044)

(assert (=> b!603670 (= e!365813 (_2!3720 (get!2319 lt!257161)))))

(declare-fun d!212527 () Bool)

(declare-fun e!365812 () Bool)

(assert (=> d!212527 e!365812))

(declare-fun res!261359 () Bool)

(assert (=> d!212527 (=> (not res!261359) (not e!365812))))

(declare-fun lt!257355 () List!6044)

(assert (=> d!212527 (= res!261359 (= (content!1089 lt!257355) ((_ map or) (content!1089 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) (content!1089 (_2!3720 (get!2319 lt!257161))))))))

(assert (=> d!212527 (= lt!257355 e!365813)))

(declare-fun c!111963 () Bool)

(assert (=> d!212527 (= c!111963 ((_ is Nil!6034) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))))))

(assert (=> d!212527 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))) (_2!3720 (get!2319 lt!257161))) lt!257355)))

(declare-fun b!603672 () Bool)

(declare-fun res!261358 () Bool)

(assert (=> b!603672 (=> (not res!261358) (not e!365812))))

(assert (=> b!603672 (= res!261358 (= (size!4747 lt!257355) (+ (size!4747 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) (size!4747 (_2!3720 (get!2319 lt!257161))))))))

(declare-fun b!603671 () Bool)

(assert (=> b!603671 (= e!365813 (Cons!6034 (h!11435 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) (++!1691 (t!80045 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161))))) (_2!3720 (get!2319 lt!257161)))))))

(declare-fun b!603673 () Bool)

(assert (=> b!603673 (= e!365812 (or (not (= (_2!3720 (get!2319 lt!257161)) Nil!6034)) (= lt!257355 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257161)))))))))

(assert (= (and d!212527 c!111963) b!603670))

(assert (= (and d!212527 (not c!111963)) b!603671))

(assert (= (and d!212527 res!261359) b!603672))

(assert (= (and b!603672 res!261358) b!603673))

(declare-fun m!869049 () Bool)

(assert (=> d!212527 m!869049))

(assert (=> d!212527 m!868145))

(declare-fun m!869051 () Bool)

(assert (=> d!212527 m!869051))

(declare-fun m!869053 () Bool)

(assert (=> d!212527 m!869053))

(declare-fun m!869055 () Bool)

(assert (=> b!603672 m!869055))

(assert (=> b!603672 m!868145))

(declare-fun m!869057 () Bool)

(assert (=> b!603672 m!869057))

(assert (=> b!603672 m!868165))

(declare-fun m!869059 () Bool)

(assert (=> b!603671 m!869059))

(assert (=> b!603043 d!212527))

(assert (=> b!603043 d!212361))

(assert (=> b!603043 d!212363))

(assert (=> b!603043 d!212277))

(assert (=> b!603120 d!212407))

(declare-fun d!212529 () Bool)

(assert (=> d!212529 (= (head!1277 lt!257052) (h!11435 lt!257052))))

(assert (=> b!603120 d!212529))

(assert (=> d!212087 d!212241))

(declare-fun d!212531 () Bool)

(assert (=> d!212531 (= suffix!1342 lt!257060)))

(assert (=> d!212531 true))

(declare-fun _$63!750 () Unit!10988)

(assert (=> d!212531 (= (choose!4403 lt!257067 suffix!1342 lt!257067 lt!257060 lt!257052) _$63!750)))

(assert (=> d!212185 d!212531))

(declare-fun b!603682 () Bool)

(declare-fun e!365817 () Bool)

(assert (=> b!603682 (= e!365817 (isPrefix!831 (tail!807 lt!257067) (tail!807 lt!257052)))))

(declare-fun d!212533 () Bool)

(declare-fun e!365816 () Bool)

(assert (=> d!212533 e!365816))

(declare-fun res!261361 () Bool)

(assert (=> d!212533 (=> res!261361 e!365816)))

(declare-fun lt!257358 () Bool)

(assert (=> d!212533 (= res!261361 (not lt!257358))))

(declare-fun e!365818 () Bool)

(assert (=> d!212533 (= lt!257358 e!365818)))

(declare-fun res!261363 () Bool)

(assert (=> d!212533 (=> res!261363 e!365818)))

(assert (=> d!212533 (= res!261363 ((_ is Nil!6034) lt!257067))))

(assert (=> d!212533 (= (isPrefix!831 lt!257067 lt!257052) lt!257358)))

(declare-fun b!603681 () Bool)

(declare-fun res!261362 () Bool)

(assert (=> b!603681 (=> (not res!261362) (not e!365817))))

(assert (=> b!603681 (= res!261362 (= (head!1277 lt!257067) (head!1277 lt!257052)))))

(declare-fun b!603680 () Bool)

(assert (=> b!603680 (= e!365818 e!365817)))

(declare-fun res!261360 () Bool)

(assert (=> b!603680 (=> (not res!261360) (not e!365817))))

(assert (=> b!603680 (= res!261360 (not ((_ is Nil!6034) lt!257052)))))

(declare-fun b!603683 () Bool)

(assert (=> b!603683 (= e!365816 (>= (size!4747 lt!257052) (size!4747 lt!257067)))))

(assert (= (and d!212533 (not res!261363)) b!603680))

(assert (= (and b!603680 res!261360) b!603681))

(assert (= (and b!603681 res!261362) b!603682))

(assert (= (and d!212533 (not res!261361)) b!603683))

(assert (=> b!603682 m!868191))

(assert (=> b!603682 m!868293))

(assert (=> b!603682 m!868191))

(assert (=> b!603682 m!868293))

(declare-fun m!869061 () Bool)

(assert (=> b!603682 m!869061))

(assert (=> b!603681 m!868197))

(assert (=> b!603681 m!868297))

(assert (=> b!603683 m!868167))

(assert (=> b!603683 m!867833))

(assert (=> d!212185 d!212533))

(declare-fun b!603702 () Bool)

(declare-fun e!365830 () List!6044)

(assert (=> b!603702 (= e!365830 suffix!1342)))

(declare-fun d!212535 () Bool)

(declare-fun e!365829 () Bool)

(assert (=> d!212535 e!365829))

(declare-fun res!261377 () Bool)

(assert (=> d!212535 (=> (not res!261377) (not e!365829))))

(declare-fun lt!257359 () List!6044)

(assert (=> d!212535 (= res!261377 (= (content!1089 lt!257359) ((_ map or) (content!1089 (t!80045 lt!257067)) (content!1089 suffix!1342))))))

(assert (=> d!212535 (= lt!257359 e!365830)))

(declare-fun c!111970 () Bool)

(assert (=> d!212535 (= c!111970 ((_ is Nil!6034) (t!80045 lt!257067)))))

(assert (=> d!212535 (= (++!1691 (t!80045 lt!257067) suffix!1342) lt!257359)))

(declare-fun b!603704 () Bool)

(declare-fun res!261376 () Bool)

(assert (=> b!603704 (=> (not res!261376) (not e!365829))))

(assert (=> b!603704 (= res!261376 (= (size!4747 lt!257359) (+ (size!4747 (t!80045 lt!257067)) (size!4747 suffix!1342))))))

(declare-fun b!603703 () Bool)

(assert (=> b!603703 (= e!365830 (Cons!6034 (h!11435 (t!80045 lt!257067)) (++!1691 (t!80045 (t!80045 lt!257067)) suffix!1342)))))

(declare-fun b!603705 () Bool)

(assert (=> b!603705 (= e!365829 (or (not (= suffix!1342 Nil!6034)) (= lt!257359 (t!80045 lt!257067))))))

(assert (= (and d!212535 c!111970) b!603702))

(assert (= (and d!212535 (not c!111970)) b!603703))

(assert (= (and d!212535 res!261377) b!603704))

(assert (= (and b!603704 res!261376) b!603705))

(declare-fun m!869063 () Bool)

(assert (=> d!212535 m!869063))

(declare-fun m!869065 () Bool)

(assert (=> d!212535 m!869065))

(assert (=> d!212535 m!868177))

(declare-fun m!869067 () Bool)

(assert (=> b!603704 m!869067))

(assert (=> b!603704 m!868291))

(assert (=> b!603704 m!868181))

(declare-fun m!869069 () Bool)

(assert (=> b!603703 m!869069))

(assert (=> b!603166 d!212535))

(declare-fun d!212537 () Bool)

(assert (=> d!212537 (= (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))) (isBalanced!529 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun bs!71109 () Bool)

(assert (= bs!71109 d!212537))

(declare-fun m!869071 () Bool)

(assert (=> bs!71109 m!869071))

(assert (=> tb!52555 d!212537))

(declare-fun b!603710 () Bool)

(declare-fun res!261382 () Bool)

(declare-fun e!365839 () Bool)

(assert (=> b!603710 (=> res!261382 e!365839)))

(assert (=> b!603710 (= res!261382 (not ((_ is ElementMatch!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(declare-fun e!365836 () Bool)

(assert (=> b!603710 (= e!365836 e!365839)))

(declare-fun d!212539 () Bool)

(declare-fun e!365838 () Bool)

(assert (=> d!212539 e!365838))

(declare-fun c!111971 () Bool)

(assert (=> d!212539 (= c!111971 ((_ is EmptyExpr!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun lt!257360 () Bool)

(declare-fun e!365834 () Bool)

(assert (=> d!212539 (= lt!257360 e!365834)))

(declare-fun c!111973 () Bool)

(assert (=> d!212539 (= c!111973 (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(assert (=> d!212539 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212539 (= (matchR!639 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))) lt!257360)))

(declare-fun b!603711 () Bool)

(assert (=> b!603711 (= e!365834 (nullable!436 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!603712 () Bool)

(assert (=> b!603712 (= e!365836 (not lt!257360))))

(declare-fun b!603713 () Bool)

(declare-fun e!365835 () Bool)

(declare-fun e!365833 () Bool)

(assert (=> b!603713 (= e!365835 e!365833)))

(declare-fun res!261383 () Bool)

(assert (=> b!603713 (=> res!261383 e!365833)))

(declare-fun call!40594 () Bool)

(assert (=> b!603713 (= res!261383 call!40594)))

(declare-fun b!603714 () Bool)

(assert (=> b!603714 (= e!365839 e!365835)))

(declare-fun res!261384 () Bool)

(assert (=> b!603714 (=> (not res!261384) (not e!365835))))

(assert (=> b!603714 (= res!261384 (not lt!257360))))

(declare-fun b!603715 () Bool)

(assert (=> b!603715 (= e!365834 (matchR!639 (derivativeStep!323 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (head!1277 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705))))) (tail!807 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705))))))))

(declare-fun b!603716 () Bool)

(declare-fun res!261386 () Bool)

(assert (=> b!603716 (=> res!261386 e!365839)))

(declare-fun e!365837 () Bool)

(assert (=> b!603716 (= res!261386 e!365837)))

(declare-fun res!261389 () Bool)

(assert (=> b!603716 (=> (not res!261389) (not e!365837))))

(assert (=> b!603716 (= res!261389 lt!257360)))

(declare-fun bm!40589 () Bool)

(assert (=> bm!40589 (= call!40594 (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(declare-fun b!603717 () Bool)

(declare-fun res!261387 () Bool)

(assert (=> b!603717 (=> res!261387 e!365833)))

(assert (=> b!603717 (= res!261387 (not (isEmpty!4355 (tail!807 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))))

(declare-fun b!603718 () Bool)

(assert (=> b!603718 (= e!365838 e!365836)))

(declare-fun c!111972 () Bool)

(assert (=> b!603718 (= c!111972 ((_ is EmptyLang!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!603719 () Bool)

(declare-fun res!261388 () Bool)

(assert (=> b!603719 (=> (not res!261388) (not e!365837))))

(assert (=> b!603719 (= res!261388 (not call!40594))))

(declare-fun b!603720 () Bool)

(assert (=> b!603720 (= e!365838 (= lt!257360 call!40594))))

(declare-fun b!603721 () Bool)

(declare-fun res!261385 () Bool)

(assert (=> b!603721 (=> (not res!261385) (not e!365837))))

(assert (=> b!603721 (= res!261385 (isEmpty!4355 (tail!807 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705))))))))

(declare-fun b!603722 () Bool)

(assert (=> b!603722 (= e!365833 (not (= (head!1277 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))))

(declare-fun b!603723 () Bool)

(assert (=> b!603723 (= e!365837 (= (head!1277 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))) (c!111807 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(assert (= (and d!212539 c!111973) b!603711))

(assert (= (and d!212539 (not c!111973)) b!603715))

(assert (= (and d!212539 c!111971) b!603720))

(assert (= (and d!212539 (not c!111971)) b!603718))

(assert (= (and b!603718 c!111972) b!603712))

(assert (= (and b!603718 (not c!111972)) b!603710))

(assert (= (and b!603710 (not res!261382)) b!603716))

(assert (= (and b!603716 res!261389) b!603719))

(assert (= (and b!603719 res!261388) b!603721))

(assert (= (and b!603721 res!261385) b!603723))

(assert (= (and b!603716 (not res!261386)) b!603714))

(assert (= (and b!603714 res!261384) b!603713))

(assert (= (and b!603713 (not res!261383)) b!603717))

(assert (= (and b!603717 (not res!261387)) b!603722))

(assert (= (or b!603720 b!603713 b!603719) bm!40589))

(assert (=> d!212539 m!868355))

(assert (=> d!212539 m!868203))

(declare-fun m!869073 () Bool)

(assert (=> b!603715 m!869073))

(assert (=> b!603715 m!869073))

(declare-fun m!869075 () Bool)

(assert (=> b!603715 m!869075))

(declare-fun m!869077 () Bool)

(assert (=> b!603715 m!869077))

(assert (=> b!603715 m!869075))

(assert (=> b!603715 m!869077))

(declare-fun m!869079 () Bool)

(assert (=> b!603715 m!869079))

(assert (=> b!603711 m!868205))

(assert (=> b!603721 m!869077))

(assert (=> b!603721 m!869077))

(declare-fun m!869081 () Bool)

(assert (=> b!603721 m!869081))

(assert (=> b!603723 m!869073))

(assert (=> bm!40589 m!868355))

(assert (=> b!603722 m!869073))

(assert (=> b!603717 m!869077))

(assert (=> b!603717 m!869077))

(assert (=> b!603717 m!869081))

(assert (=> b!603149 d!212539))

(declare-fun b!603913 () Bool)

(declare-fun e!365957 () tuple2!6916)

(assert (=> b!603913 (= e!365957 (tuple2!6917 Nil!6034 input!2705))))

(declare-fun b!603914 () Bool)

(declare-fun e!365952 () tuple2!6916)

(assert (=> b!603914 (= e!365952 (tuple2!6917 Nil!6034 Nil!6034))))

(declare-fun b!603915 () Bool)

(declare-fun e!365951 () Bool)

(declare-fun e!365954 () Bool)

(assert (=> b!603915 (= e!365951 e!365954)))

(declare-fun res!261478 () Bool)

(assert (=> b!603915 (=> res!261478 e!365954)))

(declare-fun lt!257458 () tuple2!6916)

(assert (=> b!603915 (= res!261478 (isEmpty!4355 (_1!3722 lt!257458)))))

(declare-fun b!603916 () Bool)

(declare-fun e!365956 () tuple2!6916)

(assert (=> b!603916 (= e!365956 e!365957)))

(declare-fun lt!257483 () tuple2!6916)

(declare-fun call!40628 () tuple2!6916)

(assert (=> b!603916 (= lt!257483 call!40628)))

(declare-fun c!112024 () Bool)

(assert (=> b!603916 (= c!112024 (isEmpty!4355 (_1!3722 lt!257483)))))

(declare-fun b!603917 () Bool)

(assert (=> b!603917 (= e!365952 (tuple2!6917 Nil!6034 input!2705))))

(declare-fun bm!40616 () Bool)

(declare-fun call!40623 () Unit!10988)

(declare-fun lemmaIsPrefixSameLengthThenSameList!75 (List!6044 List!6044 List!6044) Unit!10988)

(assert (=> bm!40616 (= call!40623 (lemmaIsPrefixSameLengthThenSameList!75 input!2705 Nil!6034 input!2705))))

(declare-fun bm!40618 () Bool)

(declare-fun call!40622 () List!6044)

(assert (=> bm!40618 (= call!40622 (tail!807 input!2705))))

(declare-fun bm!40619 () Bool)

(declare-fun call!40625 () Regex!1537)

(declare-fun call!40626 () C!3996)

(assert (=> bm!40619 (= call!40625 (derivativeStep!323 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) call!40626))))

(declare-fun b!603918 () Bool)

(assert (=> b!603918 (= e!365954 (>= (size!4747 (_1!3722 lt!257458)) (size!4747 Nil!6034)))))

(declare-fun b!603919 () Bool)

(declare-fun e!365958 () Unit!10988)

(declare-fun Unit!11000 () Unit!10988)

(assert (=> b!603919 (= e!365958 Unit!11000)))

(declare-fun lt!257479 () Unit!10988)

(declare-fun call!40624 () Unit!10988)

(assert (=> b!603919 (= lt!257479 call!40624)))

(declare-fun call!40627 () Bool)

(assert (=> b!603919 call!40627))

(declare-fun lt!257457 () Unit!10988)

(assert (=> b!603919 (= lt!257457 lt!257479)))

(declare-fun lt!257466 () Unit!10988)

(assert (=> b!603919 (= lt!257466 call!40623)))

(assert (=> b!603919 (= input!2705 Nil!6034)))

(declare-fun lt!257462 () Unit!10988)

(assert (=> b!603919 (= lt!257462 lt!257466)))

(assert (=> b!603919 false))

(declare-fun b!603920 () Bool)

(assert (=> b!603920 (= e!365957 lt!257483)))

(declare-fun b!603921 () Bool)

(declare-fun e!365953 () tuple2!6916)

(assert (=> b!603921 (= e!365953 (tuple2!6917 Nil!6034 input!2705))))

(declare-fun b!603922 () Bool)

(declare-fun c!112025 () Bool)

(declare-fun call!40621 () Bool)

(assert (=> b!603922 (= c!112025 call!40621)))

(declare-fun lt!257463 () Unit!10988)

(declare-fun lt!257478 () Unit!10988)

(assert (=> b!603922 (= lt!257463 lt!257478)))

(assert (=> b!603922 (= input!2705 Nil!6034)))

(assert (=> b!603922 (= lt!257478 call!40623)))

(declare-fun lt!257468 () Unit!10988)

(declare-fun lt!257470 () Unit!10988)

(assert (=> b!603922 (= lt!257468 lt!257470)))

(assert (=> b!603922 call!40627))

(assert (=> b!603922 (= lt!257470 call!40624)))

(declare-fun e!365955 () tuple2!6916)

(assert (=> b!603922 (= e!365955 e!365952)))

(declare-fun d!212541 () Bool)

(assert (=> d!212541 e!365951))

(declare-fun res!261479 () Bool)

(assert (=> d!212541 (=> (not res!261479) (not e!365951))))

(assert (=> d!212541 (= res!261479 (= (++!1691 (_1!3722 lt!257458) (_2!3722 lt!257458)) input!2705))))

(assert (=> d!212541 (= lt!257458 e!365953)))

(declare-fun c!112027 () Bool)

(declare-fun lostCause!190 (Regex!1537) Bool)

(assert (=> d!212541 (= c!112027 (lostCause!190 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun lt!257464 () Unit!10988)

(declare-fun Unit!11001 () Unit!10988)

(assert (=> d!212541 (= lt!257464 Unit!11001)))

(assert (=> d!212541 (= (getSuffix!348 input!2705 Nil!6034) input!2705)))

(declare-fun lt!257467 () Unit!10988)

(declare-fun lt!257460 () Unit!10988)

(assert (=> d!212541 (= lt!257467 lt!257460)))

(declare-fun lt!257480 () List!6044)

(assert (=> d!212541 (= input!2705 lt!257480)))

(assert (=> d!212541 (= lt!257460 (lemmaSamePrefixThenSameSuffix!544 Nil!6034 input!2705 Nil!6034 lt!257480 input!2705))))

(assert (=> d!212541 (= lt!257480 (getSuffix!348 input!2705 Nil!6034))))

(declare-fun lt!257472 () Unit!10988)

(declare-fun lt!257471 () Unit!10988)

(assert (=> d!212541 (= lt!257472 lt!257471)))

(assert (=> d!212541 (isPrefix!831 Nil!6034 (++!1691 Nil!6034 input!2705))))

(assert (=> d!212541 (= lt!257471 (lemmaConcatTwoListThenFirstIsPrefix!676 Nil!6034 input!2705))))

(assert (=> d!212541 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212541 (= (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)) lt!257458)))

(declare-fun bm!40617 () Bool)

(assert (=> bm!40617 (= call!40627 (isPrefix!831 input!2705 input!2705))))

(declare-fun b!603923 () Bool)

(assert (=> b!603923 (= e!365956 call!40628)))

(declare-fun b!603924 () Bool)

(assert (=> b!603924 (= e!365953 e!365955)))

(declare-fun c!112022 () Bool)

(assert (=> b!603924 (= c!112022 (= (size!4747 Nil!6034) (size!4747 input!2705)))))

(declare-fun bm!40620 () Bool)

(assert (=> bm!40620 (= call!40624 (lemmaIsPrefixRefl!567 input!2705 input!2705))))

(declare-fun b!603925 () Bool)

(declare-fun c!112026 () Bool)

(assert (=> b!603925 (= c!112026 call!40621)))

(declare-fun lt!257474 () Unit!10988)

(declare-fun lt!257476 () Unit!10988)

(assert (=> b!603925 (= lt!257474 lt!257476)))

(declare-fun lt!257477 () C!3996)

(declare-fun lt!257484 () List!6044)

(assert (=> b!603925 (= (++!1691 (++!1691 Nil!6034 (Cons!6034 lt!257477 Nil!6034)) lt!257484) input!2705)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!58 (List!6044 C!3996 List!6044 List!6044) Unit!10988)

(assert (=> b!603925 (= lt!257476 (lemmaMoveElementToOtherListKeepsConcatEq!58 Nil!6034 lt!257477 lt!257484 input!2705))))

(assert (=> b!603925 (= lt!257484 (tail!807 input!2705))))

(assert (=> b!603925 (= lt!257477 (head!1277 input!2705))))

(declare-fun lt!257482 () Unit!10988)

(declare-fun lt!257459 () Unit!10988)

(assert (=> b!603925 (= lt!257482 lt!257459)))

(assert (=> b!603925 (isPrefix!831 (++!1691 Nil!6034 (Cons!6034 (head!1277 (getSuffix!348 input!2705 Nil!6034)) Nil!6034)) input!2705)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!64 (List!6044 List!6044) Unit!10988)

(assert (=> b!603925 (= lt!257459 (lemmaAddHeadSuffixToPrefixStillPrefix!64 Nil!6034 input!2705))))

(declare-fun lt!257473 () Unit!10988)

(declare-fun lt!257469 () Unit!10988)

(assert (=> b!603925 (= lt!257473 lt!257469)))

(assert (=> b!603925 (= lt!257469 (lemmaAddHeadSuffixToPrefixStillPrefix!64 Nil!6034 input!2705))))

(declare-fun lt!257481 () List!6044)

(assert (=> b!603925 (= lt!257481 (++!1691 Nil!6034 (Cons!6034 (head!1277 input!2705) Nil!6034)))))

(declare-fun lt!257461 () Unit!10988)

(assert (=> b!603925 (= lt!257461 e!365958)))

(declare-fun c!112023 () Bool)

(assert (=> b!603925 (= c!112023 (= (size!4747 Nil!6034) (size!4747 input!2705)))))

(declare-fun lt!257465 () Unit!10988)

(declare-fun lt!257475 () Unit!10988)

(assert (=> b!603925 (= lt!257465 lt!257475)))

(assert (=> b!603925 (<= (size!4747 Nil!6034) (size!4747 input!2705))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!75 (List!6044 List!6044) Unit!10988)

(assert (=> b!603925 (= lt!257475 (lemmaIsPrefixThenSmallerEqSize!75 Nil!6034 input!2705))))

(assert (=> b!603925 (= e!365955 e!365956)))

(declare-fun bm!40621 () Bool)

(assert (=> bm!40621 (= call!40626 (head!1277 input!2705))))

(declare-fun bm!40622 () Bool)

(assert (=> bm!40622 (= call!40628 (findLongestMatchInner!197 call!40625 lt!257481 (+ (size!4747 Nil!6034) 1) call!40622 input!2705 (size!4747 input!2705)))))

(declare-fun b!603926 () Bool)

(declare-fun Unit!11002 () Unit!10988)

(assert (=> b!603926 (= e!365958 Unit!11002)))

(declare-fun bm!40623 () Bool)

(assert (=> bm!40623 (= call!40621 (nullable!436 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(assert (= (and d!212541 c!112027) b!603921))

(assert (= (and d!212541 (not c!112027)) b!603924))

(assert (= (and b!603924 c!112022) b!603922))

(assert (= (and b!603924 (not c!112022)) b!603925))

(assert (= (and b!603922 c!112025) b!603914))

(assert (= (and b!603922 (not c!112025)) b!603917))

(assert (= (and b!603925 c!112023) b!603919))

(assert (= (and b!603925 (not c!112023)) b!603926))

(assert (= (and b!603925 c!112026) b!603916))

(assert (= (and b!603925 (not c!112026)) b!603923))

(assert (= (and b!603916 c!112024) b!603913))

(assert (= (and b!603916 (not c!112024)) b!603920))

(assert (= (or b!603916 b!603923) bm!40621))

(assert (= (or b!603916 b!603923) bm!40618))

(assert (= (or b!603916 b!603923) bm!40619))

(assert (= (or b!603916 b!603923) bm!40622))

(assert (= (or b!603922 b!603919) bm!40617))

(assert (= (or b!603922 b!603919) bm!40616))

(assert (= (or b!603922 b!603925) bm!40623))

(assert (= (or b!603922 b!603919) bm!40620))

(assert (= (and d!212541 res!261479) b!603915))

(assert (= (and b!603915 (not res!261478)) b!603918))

(declare-fun m!869387 () Bool)

(assert (=> b!603925 m!869387))

(declare-fun m!869389 () Bool)

(assert (=> b!603925 m!869389))

(assert (=> b!603925 m!868327))

(declare-fun m!869391 () Bool)

(assert (=> b!603925 m!869391))

(assert (=> b!603925 m!868105))

(declare-fun m!869393 () Bool)

(assert (=> b!603925 m!869393))

(declare-fun m!869395 () Bool)

(assert (=> b!603925 m!869395))

(assert (=> b!603925 m!868257))

(declare-fun m!869397 () Bool)

(assert (=> b!603925 m!869397))

(declare-fun m!869399 () Bool)

(assert (=> b!603925 m!869399))

(assert (=> b!603925 m!868253))

(assert (=> b!603925 m!869391))

(declare-fun m!869401 () Bool)

(assert (=> b!603925 m!869401))

(assert (=> b!603925 m!869393))

(declare-fun m!869403 () Bool)

(assert (=> b!603925 m!869403))

(assert (=> b!603925 m!869397))

(declare-fun m!869405 () Bool)

(assert (=> b!603925 m!869405))

(assert (=> bm!40617 m!867827))

(assert (=> bm!40623 m!868205))

(assert (=> bm!40621 m!868257))

(assert (=> d!212541 m!868203))

(declare-fun m!869407 () Bool)

(assert (=> d!212541 m!869407))

(declare-fun m!869409 () Bool)

(assert (=> d!212541 m!869409))

(declare-fun m!869411 () Bool)

(assert (=> d!212541 m!869411))

(declare-fun m!869413 () Bool)

(assert (=> d!212541 m!869413))

(assert (=> d!212541 m!869411))

(declare-fun m!869415 () Bool)

(assert (=> d!212541 m!869415))

(assert (=> d!212541 m!869393))

(declare-fun m!869417 () Bool)

(assert (=> d!212541 m!869417))

(assert (=> bm!40622 m!868105))

(declare-fun m!869419 () Bool)

(assert (=> bm!40622 m!869419))

(declare-fun m!869421 () Bool)

(assert (=> b!603918 m!869421))

(assert (=> b!603918 m!868327))

(declare-fun m!869423 () Bool)

(assert (=> b!603916 m!869423))

(declare-fun m!869425 () Bool)

(assert (=> b!603915 m!869425))

(assert (=> bm!40620 m!867821))

(declare-fun m!869427 () Bool)

(assert (=> bm!40616 m!869427))

(assert (=> bm!40618 m!868253))

(declare-fun m!869429 () Bool)

(assert (=> bm!40619 m!869429))

(assert (=> b!603149 d!212541))

(declare-fun d!212661 () Bool)

(declare-fun lt!257485 () Int)

(assert (=> d!212661 (>= lt!257485 0)))

(declare-fun e!365959 () Int)

(assert (=> d!212661 (= lt!257485 e!365959)))

(declare-fun c!112028 () Bool)

(assert (=> d!212661 (= c!112028 ((_ is Nil!6034) Nil!6034))))

(assert (=> d!212661 (= (size!4747 Nil!6034) lt!257485)))

(declare-fun b!603927 () Bool)

(assert (=> b!603927 (= e!365959 0)))

(declare-fun b!603928 () Bool)

(assert (=> b!603928 (= e!365959 (+ 1 (size!4747 (t!80045 Nil!6034))))))

(assert (= (and d!212661 c!112028) b!603927))

(assert (= (and d!212661 (not c!112028)) b!603928))

(declare-fun m!869431 () Bool)

(assert (=> b!603928 m!869431))

(assert (=> b!603149 d!212661))

(assert (=> b!603149 d!212323))

(declare-fun d!212663 () Bool)

(declare-fun c!112029 () Bool)

(assert (=> d!212663 (= c!112029 ((_ is Node!1920) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))))

(declare-fun e!365960 () Bool)

(assert (=> d!212663 (= (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))) e!365960)))

(declare-fun b!603929 () Bool)

(assert (=> b!603929 (= e!365960 (inv!7667 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))))

(declare-fun b!603930 () Bool)

(declare-fun e!365961 () Bool)

(assert (=> b!603930 (= e!365960 e!365961)))

(declare-fun res!261480 () Bool)

(assert (=> b!603930 (= res!261480 (not ((_ is Leaf!3029) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))))))

(assert (=> b!603930 (=> res!261480 e!365961)))

(declare-fun b!603931 () Bool)

(assert (=> b!603931 (= e!365961 (inv!7668 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))))

(assert (= (and d!212663 c!112029) b!603929))

(assert (= (and d!212663 (not c!112029)) b!603930))

(assert (= (and b!603930 (not res!261480)) b!603931))

(declare-fun m!869433 () Bool)

(assert (=> b!603929 m!869433))

(declare-fun m!869435 () Bool)

(assert (=> b!603931 m!869435))

(assert (=> b!602987 d!212663))

(declare-fun d!212665 () Bool)

(declare-fun c!112030 () Bool)

(assert (=> d!212665 (= c!112030 ((_ is Nil!6034) lt!257226))))

(declare-fun e!365962 () (InoxSet C!3996))

(assert (=> d!212665 (= (content!1089 lt!257226) e!365962)))

(declare-fun b!603932 () Bool)

(assert (=> b!603932 (= e!365962 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603933 () Bool)

(assert (=> b!603933 (= e!365962 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 lt!257226) true) (content!1089 (t!80045 lt!257226))))))

(assert (= (and d!212665 c!112030) b!603932))

(assert (= (and d!212665 (not c!112030)) b!603933))

(declare-fun m!869437 () Bool)

(assert (=> b!603933 m!869437))

(declare-fun m!869439 () Bool)

(assert (=> b!603933 m!869439))

(assert (=> d!212189 d!212665))

(declare-fun d!212667 () Bool)

(declare-fun c!112031 () Bool)

(assert (=> d!212667 (= c!112031 ((_ is Nil!6034) lt!257067))))

(declare-fun e!365963 () (InoxSet C!3996))

(assert (=> d!212667 (= (content!1089 lt!257067) e!365963)))

(declare-fun b!603934 () Bool)

(assert (=> b!603934 (= e!365963 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603935 () Bool)

(assert (=> b!603935 (= e!365963 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 lt!257067) true) (content!1089 (t!80045 lt!257067))))))

(assert (= (and d!212667 c!112031) b!603934))

(assert (= (and d!212667 (not c!112031)) b!603935))

(declare-fun m!869441 () Bool)

(assert (=> b!603935 m!869441))

(assert (=> b!603935 m!869065))

(assert (=> d!212189 d!212667))

(assert (=> d!212189 d!212449))

(declare-fun d!212669 () Bool)

(assert (=> d!212669 (= (isEmpty!4357 lt!257219) (not ((_ is Some!1553) lt!257219)))))

(assert (=> d!212177 d!212669))

(declare-fun d!212671 () Bool)

(assert (=> d!212671 (= (isEmpty!4355 (_1!3722 lt!257218)) ((_ is Nil!6034) (_1!3722 lt!257218)))))

(assert (=> d!212177 d!212671))

(declare-fun d!212673 () Bool)

(declare-fun lt!257504 () tuple2!6916)

(assert (=> d!212673 (= (++!1691 (_1!3722 lt!257504) (_2!3722 lt!257504)) input!2705)))

(declare-fun sizeTr!37 (List!6044 Int) Int)

(assert (=> d!212673 (= lt!257504 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 0 input!2705 input!2705 (sizeTr!37 input!2705 0)))))

(declare-fun lt!257507 () Unit!10988)

(declare-fun lt!257505 () Unit!10988)

(assert (=> d!212673 (= lt!257507 lt!257505)))

(declare-fun lt!257503 () List!6044)

(declare-fun lt!257502 () Int)

(assert (=> d!212673 (= (sizeTr!37 lt!257503 lt!257502) (+ (size!4747 lt!257503) lt!257502))))

(declare-fun lemmaSizeTrEqualsSize!37 (List!6044 Int) Unit!10988)

(assert (=> d!212673 (= lt!257505 (lemmaSizeTrEqualsSize!37 lt!257503 lt!257502))))

(assert (=> d!212673 (= lt!257502 0)))

(assert (=> d!212673 (= lt!257503 Nil!6034)))

(declare-fun lt!257509 () Unit!10988)

(declare-fun lt!257508 () Unit!10988)

(assert (=> d!212673 (= lt!257509 lt!257508)))

(declare-fun lt!257506 () Int)

(assert (=> d!212673 (= (sizeTr!37 input!2705 lt!257506) (+ (size!4747 input!2705) lt!257506))))

(assert (=> d!212673 (= lt!257508 (lemmaSizeTrEqualsSize!37 input!2705 lt!257506))))

(assert (=> d!212673 (= lt!257506 0)))

(assert (=> d!212673 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212673 (= (findLongestMatch!176 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) input!2705) lt!257504)))

(declare-fun bs!71136 () Bool)

(assert (= bs!71136 d!212673))

(declare-fun m!869443 () Bool)

(assert (=> bs!71136 m!869443))

(declare-fun m!869445 () Bool)

(assert (=> bs!71136 m!869445))

(declare-fun m!869447 () Bool)

(assert (=> bs!71136 m!869447))

(assert (=> bs!71136 m!868105))

(assert (=> bs!71136 m!869445))

(declare-fun m!869449 () Bool)

(assert (=> bs!71136 m!869449))

(declare-fun m!869451 () Bool)

(assert (=> bs!71136 m!869451))

(declare-fun m!869453 () Bool)

(assert (=> bs!71136 m!869453))

(declare-fun m!869455 () Bool)

(assert (=> bs!71136 m!869455))

(declare-fun m!869457 () Bool)

(assert (=> bs!71136 m!869457))

(assert (=> bs!71136 m!868203))

(assert (=> d!212177 d!212673))

(assert (=> d!212177 d!212121))

(declare-fun d!212675 () Bool)

(declare-fun lt!257510 () List!6044)

(assert (=> d!212675 (= (++!1691 (t!80045 lt!257064) lt!257510) (tail!807 input!2705))))

(declare-fun e!365964 () List!6044)

(assert (=> d!212675 (= lt!257510 e!365964)))

(declare-fun c!112032 () Bool)

(assert (=> d!212675 (= c!112032 ((_ is Cons!6034) (t!80045 lt!257064)))))

(assert (=> d!212675 (>= (size!4747 (tail!807 input!2705)) (size!4747 (t!80045 lt!257064)))))

(assert (=> d!212675 (= (getSuffix!348 (tail!807 input!2705) (t!80045 lt!257064)) lt!257510)))

(declare-fun b!603936 () Bool)

(assert (=> b!603936 (= e!365964 (getSuffix!348 (tail!807 (tail!807 input!2705)) (t!80045 (t!80045 lt!257064))))))

(declare-fun b!603937 () Bool)

(assert (=> b!603937 (= e!365964 (tail!807 input!2705))))

(assert (= (and d!212675 c!112032) b!603936))

(assert (= (and d!212675 (not c!112032)) b!603937))

(declare-fun m!869459 () Bool)

(assert (=> d!212675 m!869459))

(assert (=> d!212675 m!868253))

(assert (=> d!212675 m!868517))

(assert (=> d!212675 m!868251))

(assert (=> b!603936 m!868253))

(assert (=> b!603936 m!868511))

(assert (=> b!603936 m!868511))

(declare-fun m!869461 () Bool)

(assert (=> b!603936 m!869461))

(assert (=> b!603115 d!212675))

(assert (=> b!603115 d!212253))

(declare-fun d!212677 () Bool)

(assert (=> d!212677 (= (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))) (isBalanced!529 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))))))

(declare-fun bs!71137 () Bool)

(assert (= bs!71137 d!212677))

(declare-fun m!869463 () Bool)

(assert (=> bs!71137 m!869463))

(assert (=> tb!52543 d!212677))

(assert (=> d!212147 d!212121))

(declare-fun d!212679 () Bool)

(assert (=> d!212679 (ruleValid!401 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))))))

(assert (=> d!212679 true))

(declare-fun _$65!880 () Unit!10988)

(assert (=> d!212679 (= (choose!4405 thiss!22590 (rule!1979 (_1!3720 (v!16450 lt!257061))) rules!3103) _$65!880)))

(declare-fun bs!71138 () Bool)

(assert (= bs!71138 d!212679))

(assert (=> bs!71138 m!867835))

(assert (=> d!212147 d!212679))

(declare-fun d!212681 () Bool)

(declare-fun lt!257511 () Bool)

(assert (=> d!212681 (= lt!257511 (select (content!1092 rules!3103) (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(declare-fun e!365965 () Bool)

(assert (=> d!212681 (= lt!257511 e!365965)))

(declare-fun res!261481 () Bool)

(assert (=> d!212681 (=> (not res!261481) (not e!365965))))

(assert (=> d!212681 (= res!261481 ((_ is Cons!6036) rules!3103))))

(assert (=> d!212681 (= (contains!1415 rules!3103 (rule!1979 (_1!3720 (v!16450 lt!257061)))) lt!257511)))

(declare-fun b!603938 () Bool)

(declare-fun e!365966 () Bool)

(assert (=> b!603938 (= e!365965 e!365966)))

(declare-fun res!261482 () Bool)

(assert (=> b!603938 (=> res!261482 e!365966)))

(assert (=> b!603938 (= res!261482 (= (h!11437 rules!3103) (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(declare-fun b!603939 () Bool)

(assert (=> b!603939 (= e!365966 (contains!1415 (t!80047 rules!3103) (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (= (and d!212681 res!261481) b!603938))

(assert (= (and b!603938 (not res!261482)) b!603939))

(assert (=> d!212681 m!868303))

(declare-fun m!869465 () Bool)

(assert (=> d!212681 m!869465))

(declare-fun m!869467 () Bool)

(assert (=> b!603939 m!869467))

(assert (=> d!212147 d!212681))

(declare-fun b!603942 () Bool)

(declare-fun e!365968 () Bool)

(assert (=> b!603942 (= e!365968 (isPrefix!831 (tail!807 input!2705) (tail!807 (++!1691 input!2705 suffix!1342))))))

(declare-fun d!212683 () Bool)

(declare-fun e!365967 () Bool)

(assert (=> d!212683 e!365967))

(declare-fun res!261484 () Bool)

(assert (=> d!212683 (=> res!261484 e!365967)))

(declare-fun lt!257512 () Bool)

(assert (=> d!212683 (= res!261484 (not lt!257512))))

(declare-fun e!365969 () Bool)

(assert (=> d!212683 (= lt!257512 e!365969)))

(declare-fun res!261486 () Bool)

(assert (=> d!212683 (=> res!261486 e!365969)))

(assert (=> d!212683 (= res!261486 ((_ is Nil!6034) input!2705))))

(assert (=> d!212683 (= (isPrefix!831 input!2705 (++!1691 input!2705 suffix!1342)) lt!257512)))

(declare-fun b!603941 () Bool)

(declare-fun res!261485 () Bool)

(assert (=> b!603941 (=> (not res!261485) (not e!365968))))

(assert (=> b!603941 (= res!261485 (= (head!1277 input!2705) (head!1277 (++!1691 input!2705 suffix!1342))))))

(declare-fun b!603940 () Bool)

(assert (=> b!603940 (= e!365969 e!365968)))

(declare-fun res!261483 () Bool)

(assert (=> b!603940 (=> (not res!261483) (not e!365968))))

(assert (=> b!603940 (= res!261483 (not ((_ is Nil!6034) (++!1691 input!2705 suffix!1342))))))

(declare-fun b!603943 () Bool)

(assert (=> b!603943 (= e!365967 (>= (size!4747 (++!1691 input!2705 suffix!1342)) (size!4747 input!2705)))))

(assert (= (and d!212683 (not res!261486)) b!603940))

(assert (= (and b!603940 res!261483) b!603941))

(assert (= (and b!603941 res!261485) b!603942))

(assert (= (and d!212683 (not res!261484)) b!603943))

(assert (=> b!603942 m!868253))

(assert (=> b!603942 m!867785))

(declare-fun m!869469 () Bool)

(assert (=> b!603942 m!869469))

(assert (=> b!603942 m!868253))

(assert (=> b!603942 m!869469))

(declare-fun m!869471 () Bool)

(assert (=> b!603942 m!869471))

(assert (=> b!603941 m!868257))

(assert (=> b!603941 m!867785))

(declare-fun m!869473 () Bool)

(assert (=> b!603941 m!869473))

(assert (=> b!603943 m!867785))

(declare-fun m!869475 () Bool)

(assert (=> b!603943 m!869475))

(assert (=> b!603943 m!868105))

(assert (=> d!212151 d!212683))

(assert (=> d!212151 d!212111))

(declare-fun d!212685 () Bool)

(assert (=> d!212685 (isPrefix!831 input!2705 (++!1691 input!2705 suffix!1342))))

(assert (=> d!212685 true))

(declare-fun _$46!994 () Unit!10988)

(assert (=> d!212685 (= (choose!4402 input!2705 suffix!1342) _$46!994)))

(declare-fun bs!71139 () Bool)

(assert (= bs!71139 d!212685))

(assert (=> bs!71139 m!867785))

(assert (=> bs!71139 m!867785))

(assert (=> bs!71139 m!868275))

(assert (=> d!212151 d!212685))

(declare-fun d!212687 () Bool)

(assert (=> d!212687 (= (isEmpty!4355 (originalCharacters!1242 token!491)) ((_ is Nil!6034) (originalCharacters!1242 token!491)))))

(assert (=> d!212093 d!212687))

(assert (=> d!212149 d!212129))

(declare-fun d!212689 () Bool)

(assert (=> d!212689 (ruleValid!401 thiss!22590 (rule!1979 token!491))))

(assert (=> d!212689 true))

(declare-fun _$65!881 () Unit!10988)

(assert (=> d!212689 (= (choose!4405 thiss!22590 (rule!1979 token!491) rules!3103) _$65!881)))

(declare-fun bs!71140 () Bool)

(assert (= bs!71140 d!212689))

(assert (=> bs!71140 m!867811))

(assert (=> d!212149 d!212689))

(assert (=> d!212149 d!212175))

(declare-fun bs!71141 () Bool)

(declare-fun d!212691 () Bool)

(assert (= bs!71141 (and d!212691 d!212023)))

(declare-fun lambda!16099 () Int)

(assert (=> bs!71141 (= (and (= (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (= (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (= lambda!16099 lambda!16071))))

(declare-fun bs!71142 () Bool)

(assert (= bs!71142 (and d!212691 d!212241)))

(assert (=> bs!71142 (= (and (= (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (= (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (= lambda!16099 lambda!16077))))

(declare-fun bs!71143 () Bool)

(assert (= bs!71143 (and d!212691 d!212419)))

(assert (=> bs!71143 (= (and (= (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toChars!1961 (transformation!1203 (h!11437 rules!3103)))) (= (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (h!11437 rules!3103))))) (= lambda!16099 lambda!16088))))

(assert (=> d!212691 true))

(assert (=> d!212691 (< (dynLambda!3485 order!4807 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (dynLambda!3484 order!4805 lambda!16099))))

(assert (=> d!212691 true))

(assert (=> d!212691 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (dynLambda!3484 order!4805 lambda!16099))))

(assert (=> d!212691 (= (semiInverseModEq!478 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (Forall!303 lambda!16099))))

(declare-fun bs!71144 () Bool)

(assert (= bs!71144 d!212691))

(declare-fun m!869477 () Bool)

(assert (=> bs!71144 m!869477))

(assert (=> d!212123 d!212691))

(assert (=> b!603105 d!212323))

(assert (=> d!212157 d!212141))

(declare-fun d!212693 () Bool)

(assert (=> d!212693 (isPrefix!831 input!2705 input!2705)))

(assert (=> d!212693 true))

(declare-fun _$45!1324 () Unit!10988)

(assert (=> d!212693 (= (choose!4406 input!2705 input!2705) _$45!1324)))

(declare-fun bs!71145 () Bool)

(assert (= bs!71145 d!212693))

(assert (=> bs!71145 m!867827))

(assert (=> d!212157 d!212693))

(declare-fun b!603946 () Bool)

(declare-fun e!365971 () Bool)

(assert (=> b!603946 (= e!365971 (isPrefix!831 (tail!807 lt!257067) (tail!807 (++!1691 lt!257067 suffix!1342))))))

(declare-fun d!212695 () Bool)

(declare-fun e!365970 () Bool)

(assert (=> d!212695 e!365970))

(declare-fun res!261488 () Bool)

(assert (=> d!212695 (=> res!261488 e!365970)))

(declare-fun lt!257513 () Bool)

(assert (=> d!212695 (= res!261488 (not lt!257513))))

(declare-fun e!365972 () Bool)

(assert (=> d!212695 (= lt!257513 e!365972)))

(declare-fun res!261490 () Bool)

(assert (=> d!212695 (=> res!261490 e!365972)))

(assert (=> d!212695 (= res!261490 ((_ is Nil!6034) lt!257067))))

(assert (=> d!212695 (= (isPrefix!831 lt!257067 (++!1691 lt!257067 suffix!1342)) lt!257513)))

(declare-fun b!603945 () Bool)

(declare-fun res!261489 () Bool)

(assert (=> b!603945 (=> (not res!261489) (not e!365971))))

(assert (=> b!603945 (= res!261489 (= (head!1277 lt!257067) (head!1277 (++!1691 lt!257067 suffix!1342))))))

(declare-fun b!603944 () Bool)

(assert (=> b!603944 (= e!365972 e!365971)))

(declare-fun res!261487 () Bool)

(assert (=> b!603944 (=> (not res!261487) (not e!365971))))

(assert (=> b!603944 (= res!261487 (not ((_ is Nil!6034) (++!1691 lt!257067 suffix!1342))))))

(declare-fun b!603947 () Bool)

(assert (=> b!603947 (= e!365970 (>= (size!4747 (++!1691 lt!257067 suffix!1342)) (size!4747 lt!257067)))))

(assert (= (and d!212695 (not res!261490)) b!603944))

(assert (= (and b!603944 res!261487) b!603945))

(assert (= (and b!603945 res!261489) b!603946))

(assert (= (and d!212695 (not res!261488)) b!603947))

(assert (=> b!603946 m!868191))

(assert (=> b!603946 m!867863))

(declare-fun m!869479 () Bool)

(assert (=> b!603946 m!869479))

(assert (=> b!603946 m!868191))

(assert (=> b!603946 m!869479))

(declare-fun m!869481 () Bool)

(assert (=> b!603946 m!869481))

(assert (=> b!603945 m!868197))

(assert (=> b!603945 m!867863))

(declare-fun m!869483 () Bool)

(assert (=> b!603945 m!869483))

(assert (=> b!603947 m!867863))

(declare-fun m!869485 () Bool)

(assert (=> b!603947 m!869485))

(assert (=> b!603947 m!867833))

(assert (=> d!212137 d!212695))

(assert (=> d!212137 d!212189))

(declare-fun d!212697 () Bool)

(assert (=> d!212697 (isPrefix!831 lt!257067 (++!1691 lt!257067 suffix!1342))))

(assert (=> d!212697 true))

(declare-fun _$46!995 () Unit!10988)

(assert (=> d!212697 (= (choose!4402 lt!257067 suffix!1342) _$46!995)))

(declare-fun bs!71146 () Bool)

(assert (= bs!71146 d!212697))

(assert (=> bs!71146 m!867863))

(assert (=> bs!71146 m!867863))

(assert (=> bs!71146 m!868247))

(assert (=> d!212137 d!212697))

(declare-fun d!212699 () Bool)

(assert (=> d!212699 (= (list!2532 lt!257160) (list!2533 (c!111808 lt!257160)))))

(declare-fun bs!71147 () Bool)

(assert (= bs!71147 d!212699))

(declare-fun m!869487 () Bool)

(assert (=> bs!71147 m!869487))

(assert (=> d!212097 d!212699))

(declare-fun d!212701 () Bool)

(assert (=> d!212701 (= (list!2532 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))) (list!2533 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))))))

(declare-fun bs!71148 () Bool)

(assert (= bs!71148 d!212701))

(declare-fun m!869489 () Bool)

(assert (=> bs!71148 m!869489))

(assert (=> b!603039 d!212701))

(declare-fun b!603948 () Bool)

(declare-fun e!365974 () List!6044)

(assert (=> b!603948 (= e!365974 (_2!3720 (v!16450 lt!257061)))))

(declare-fun d!212703 () Bool)

(declare-fun e!365973 () Bool)

(assert (=> d!212703 e!365973))

(declare-fun res!261492 () Bool)

(assert (=> d!212703 (=> (not res!261492) (not e!365973))))

(declare-fun lt!257514 () List!6044)

(assert (=> d!212703 (= res!261492 (= (content!1089 lt!257514) ((_ map or) (content!1089 (t!80045 lt!257064)) (content!1089 (_2!3720 (v!16450 lt!257061))))))))

(assert (=> d!212703 (= lt!257514 e!365974)))

(declare-fun c!112033 () Bool)

(assert (=> d!212703 (= c!112033 ((_ is Nil!6034) (t!80045 lt!257064)))))

(assert (=> d!212703 (= (++!1691 (t!80045 lt!257064) (_2!3720 (v!16450 lt!257061))) lt!257514)))

(declare-fun b!603950 () Bool)

(declare-fun res!261491 () Bool)

(assert (=> b!603950 (=> (not res!261491) (not e!365973))))

(assert (=> b!603950 (= res!261491 (= (size!4747 lt!257514) (+ (size!4747 (t!80045 lt!257064)) (size!4747 (_2!3720 (v!16450 lt!257061))))))))

(declare-fun b!603949 () Bool)

(assert (=> b!603949 (= e!365974 (Cons!6034 (h!11435 (t!80045 lt!257064)) (++!1691 (t!80045 (t!80045 lt!257064)) (_2!3720 (v!16450 lt!257061)))))))

(declare-fun b!603951 () Bool)

(assert (=> b!603951 (= e!365973 (or (not (= (_2!3720 (v!16450 lt!257061)) Nil!6034)) (= lt!257514 (t!80045 lt!257064))))))

(assert (= (and d!212703 c!112033) b!603948))

(assert (= (and d!212703 (not c!112033)) b!603949))

(assert (= (and d!212703 res!261492) b!603950))

(assert (= (and b!603950 res!261491) b!603951))

(declare-fun m!869491 () Bool)

(assert (=> d!212703 m!869491))

(declare-fun m!869493 () Bool)

(assert (=> d!212703 m!869493))

(assert (=> d!212703 m!868217))

(declare-fun m!869495 () Bool)

(assert (=> b!603950 m!869495))

(assert (=> b!603950 m!868251))

(assert (=> b!603950 m!868221))

(declare-fun m!869497 () Bool)

(assert (=> b!603949 m!869497))

(assert (=> b!603091 d!212703))

(declare-fun d!212705 () Bool)

(declare-fun lt!257515 () Int)

(assert (=> d!212705 (>= lt!257515 0)))

(declare-fun e!365975 () Int)

(assert (=> d!212705 (= lt!257515 e!365975)))

(declare-fun c!112034 () Bool)

(assert (=> d!212705 (= c!112034 ((_ is Nil!6034) (t!80045 lt!257067)))))

(assert (=> d!212705 (= (size!4747 (t!80045 lt!257067)) lt!257515)))

(declare-fun b!603952 () Bool)

(assert (=> b!603952 (= e!365975 0)))

(declare-fun b!603953 () Bool)

(assert (=> b!603953 (= e!365975 (+ 1 (size!4747 (t!80045 (t!80045 lt!257067)))))))

(assert (= (and d!212705 c!112034) b!603952))

(assert (= (and d!212705 (not c!112034)) b!603953))

(declare-fun m!869499 () Bool)

(assert (=> b!603953 m!869499))

(assert (=> b!603118 d!212705))

(declare-fun b!603954 () Bool)

(declare-fun e!365977 () List!6044)

(assert (=> b!603954 (= e!365977 lt!257224)))

(declare-fun d!212707 () Bool)

(declare-fun e!365976 () Bool)

(assert (=> d!212707 e!365976))

(declare-fun res!261494 () Bool)

(assert (=> d!212707 (=> (not res!261494) (not e!365976))))

(declare-fun lt!257516 () List!6044)

(assert (=> d!212707 (= res!261494 (= (content!1089 lt!257516) ((_ map or) (content!1089 lt!257067) (content!1089 lt!257224))))))

(assert (=> d!212707 (= lt!257516 e!365977)))

(declare-fun c!112035 () Bool)

(assert (=> d!212707 (= c!112035 ((_ is Nil!6034) lt!257067))))

(assert (=> d!212707 (= (++!1691 lt!257067 lt!257224) lt!257516)))

(declare-fun b!603956 () Bool)

(declare-fun res!261493 () Bool)

(assert (=> b!603956 (=> (not res!261493) (not e!365976))))

(assert (=> b!603956 (= res!261493 (= (size!4747 lt!257516) (+ (size!4747 lt!257067) (size!4747 lt!257224))))))

(declare-fun b!603955 () Bool)

(assert (=> b!603955 (= e!365977 (Cons!6034 (h!11435 lt!257067) (++!1691 (t!80045 lt!257067) lt!257224)))))

(declare-fun b!603957 () Bool)

(assert (=> b!603957 (= e!365976 (or (not (= lt!257224 Nil!6034)) (= lt!257516 lt!257067)))))

(assert (= (and d!212707 c!112035) b!603954))

(assert (= (and d!212707 (not c!112035)) b!603955))

(assert (= (and d!212707 res!261494) b!603956))

(assert (= (and b!603956 res!261493) b!603957))

(declare-fun m!869501 () Bool)

(assert (=> d!212707 m!869501))

(assert (=> d!212707 m!868377))

(declare-fun m!869503 () Bool)

(assert (=> d!212707 m!869503))

(declare-fun m!869505 () Bool)

(assert (=> b!603956 m!869505))

(assert (=> b!603956 m!867833))

(declare-fun m!869507 () Bool)

(assert (=> b!603956 m!869507))

(declare-fun m!869509 () Bool)

(assert (=> b!603955 m!869509))

(assert (=> d!212179 d!212707))

(assert (=> d!212179 d!212321))

(assert (=> d!212179 d!212161))

(declare-fun b!603960 () Bool)

(declare-fun e!365979 () Bool)

(assert (=> b!603960 (= e!365979 (isPrefix!831 (tail!807 (tail!807 lt!257067)) (tail!807 (tail!807 lt!257055))))))

(declare-fun d!212709 () Bool)

(declare-fun e!365978 () Bool)

(assert (=> d!212709 e!365978))

(declare-fun res!261496 () Bool)

(assert (=> d!212709 (=> res!261496 e!365978)))

(declare-fun lt!257517 () Bool)

(assert (=> d!212709 (= res!261496 (not lt!257517))))

(declare-fun e!365980 () Bool)

(assert (=> d!212709 (= lt!257517 e!365980)))

(declare-fun res!261498 () Bool)

(assert (=> d!212709 (=> res!261498 e!365980)))

(assert (=> d!212709 (= res!261498 ((_ is Nil!6034) (tail!807 lt!257067)))))

(assert (=> d!212709 (= (isPrefix!831 (tail!807 lt!257067) (tail!807 lt!257055)) lt!257517)))

(declare-fun b!603959 () Bool)

(declare-fun res!261497 () Bool)

(assert (=> b!603959 (=> (not res!261497) (not e!365979))))

(assert (=> b!603959 (= res!261497 (= (head!1277 (tail!807 lt!257067)) (head!1277 (tail!807 lt!257055))))))

(declare-fun b!603958 () Bool)

(assert (=> b!603958 (= e!365980 e!365979)))

(declare-fun res!261495 () Bool)

(assert (=> b!603958 (=> (not res!261495) (not e!365979))))

(assert (=> b!603958 (= res!261495 (not ((_ is Nil!6034) (tail!807 lt!257055))))))

(declare-fun b!603961 () Bool)

(assert (=> b!603961 (= e!365978 (>= (size!4747 (tail!807 lt!257055)) (size!4747 (tail!807 lt!257067))))))

(assert (= (and d!212709 (not res!261498)) b!603958))

(assert (= (and b!603958 res!261495) b!603959))

(assert (= (and b!603959 res!261497) b!603960))

(assert (= (and d!212709 (not res!261496)) b!603961))

(assert (=> b!603960 m!868191))

(declare-fun m!869511 () Bool)

(assert (=> b!603960 m!869511))

(assert (=> b!603960 m!868193))

(assert (=> b!603960 m!868753))

(assert (=> b!603960 m!869511))

(assert (=> b!603960 m!868753))

(declare-fun m!869513 () Bool)

(assert (=> b!603960 m!869513))

(assert (=> b!603959 m!868191))

(declare-fun m!869515 () Bool)

(assert (=> b!603959 m!869515))

(assert (=> b!603959 m!868193))

(assert (=> b!603959 m!868757))

(assert (=> b!603961 m!868193))

(assert (=> b!603961 m!868759))

(assert (=> b!603961 m!868191))

(declare-fun m!869517 () Bool)

(assert (=> b!603961 m!869517))

(assert (=> b!603079 d!212709))

(declare-fun d!212711 () Bool)

(assert (=> d!212711 (= (tail!807 lt!257067) (t!80045 lt!257067))))

(assert (=> b!603079 d!212711))

(assert (=> b!603079 d!212389))

(declare-fun d!212713 () Bool)

(declare-fun lt!257518 () Int)

(assert (=> d!212713 (>= lt!257518 0)))

(declare-fun e!365981 () Int)

(assert (=> d!212713 (= lt!257518 e!365981)))

(declare-fun c!112036 () Bool)

(assert (=> d!212713 (= c!112036 ((_ is Nil!6034) (_2!3720 (get!2319 lt!257153))))))

(assert (=> d!212713 (= (size!4747 (_2!3720 (get!2319 lt!257153))) lt!257518)))

(declare-fun b!603962 () Bool)

(assert (=> b!603962 (= e!365981 0)))

(declare-fun b!603963 () Bool)

(assert (=> b!603963 (= e!365981 (+ 1 (size!4747 (t!80045 (_2!3720 (get!2319 lt!257153))))))))

(assert (= (and d!212713 c!112036) b!603962))

(assert (= (and d!212713 (not c!112036)) b!603963))

(declare-fun m!869519 () Bool)

(assert (=> b!603963 m!869519))

(assert (=> b!603016 d!212713))

(assert (=> b!603016 d!212269))

(assert (=> b!603016 d!212323))

(declare-fun bm!40624 () Bool)

(declare-fun call!40630 () Bool)

(declare-fun call!40629 () Bool)

(assert (=> bm!40624 (= call!40630 call!40629)))

(declare-fun b!603964 () Bool)

(declare-fun e!365987 () Bool)

(declare-fun e!365988 () Bool)

(assert (=> b!603964 (= e!365987 e!365988)))

(declare-fun res!261502 () Bool)

(assert (=> b!603964 (=> (not res!261502) (not e!365988))))

(declare-fun call!40631 () Bool)

(assert (=> b!603964 (= res!261502 call!40631)))

(declare-fun b!603965 () Bool)

(declare-fun res!261499 () Bool)

(declare-fun e!365982 () Bool)

(assert (=> b!603965 (=> (not res!261499) (not e!365982))))

(assert (=> b!603965 (= res!261499 call!40630)))

(declare-fun e!365985 () Bool)

(assert (=> b!603965 (= e!365985 e!365982)))

(declare-fun b!603966 () Bool)

(declare-fun res!261501 () Bool)

(assert (=> b!603966 (=> res!261501 e!365987)))

(assert (=> b!603966 (= res!261501 (not ((_ is Concat!2764) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))

(assert (=> b!603966 (= e!365985 e!365987)))

(declare-fun b!603967 () Bool)

(assert (=> b!603967 (= e!365982 call!40631)))

(declare-fun d!212715 () Bool)

(declare-fun res!261503 () Bool)

(declare-fun e!365986 () Bool)

(assert (=> d!212715 (=> res!261503 e!365986)))

(assert (=> d!212715 (= res!261503 ((_ is ElementMatch!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(assert (=> d!212715 (= (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) e!365986)))

(declare-fun bm!40625 () Bool)

(declare-fun c!112038 () Bool)

(assert (=> bm!40625 (= call!40631 (validRegex!531 (ite c!112038 (regTwo!3587 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (regOne!3586 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))))

(declare-fun b!603968 () Bool)

(assert (=> b!603968 (= e!365988 call!40630)))

(declare-fun b!603969 () Bool)

(declare-fun e!365983 () Bool)

(assert (=> b!603969 (= e!365983 e!365985)))

(assert (=> b!603969 (= c!112038 ((_ is Union!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!603970 () Bool)

(assert (=> b!603970 (= e!365986 e!365983)))

(declare-fun c!112037 () Bool)

(assert (=> b!603970 (= c!112037 ((_ is Star!1537) (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))

(declare-fun b!603971 () Bool)

(declare-fun e!365984 () Bool)

(assert (=> b!603971 (= e!365984 call!40629)))

(declare-fun bm!40626 () Bool)

(assert (=> bm!40626 (= call!40629 (validRegex!531 (ite c!112037 (reg!1866 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (ite c!112038 (regOne!3587 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (regTwo!3586 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))))))

(declare-fun b!603972 () Bool)

(assert (=> b!603972 (= e!365983 e!365984)))

(declare-fun res!261500 () Bool)

(assert (=> b!603972 (= res!261500 (not (nullable!436 (reg!1866 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))))))

(assert (=> b!603972 (=> (not res!261500) (not e!365984))))

(assert (= (and d!212715 (not res!261503)) b!603970))

(assert (= (and b!603970 c!112037) b!603972))

(assert (= (and b!603970 (not c!112037)) b!603969))

(assert (= (and b!603972 res!261500) b!603971))

(assert (= (and b!603969 c!112038) b!603965))

(assert (= (and b!603969 (not c!112038)) b!603966))

(assert (= (and b!603965 res!261499) b!603967))

(assert (= (and b!603966 (not res!261501)) b!603964))

(assert (= (and b!603964 res!261502) b!603968))

(assert (= (or b!603965 b!603968) bm!40624))

(assert (= (or b!603967 b!603964) bm!40625))

(assert (= (or b!603971 bm!40624) bm!40626))

(declare-fun m!869521 () Bool)

(assert (=> bm!40625 m!869521))

(declare-fun m!869523 () Bool)

(assert (=> bm!40626 m!869523))

(declare-fun m!869525 () Bool)

(assert (=> b!603972 m!869525))

(assert (=> d!212121 d!212715))

(declare-fun b!603973 () Bool)

(declare-fun e!365990 () Bool)

(declare-fun lt!257520 () Option!1554)

(assert (=> b!603973 (= e!365990 (= (size!4746 (_1!3720 (get!2319 lt!257520))) (size!4747 (originalCharacters!1242 (_1!3720 (get!2319 lt!257520))))))))

(declare-fun b!603974 () Bool)

(declare-fun e!365992 () Bool)

(assert (=> b!603974 (= e!365992 (matchR!639 (regex!1203 (h!11437 rules!3103)) (_1!3722 (findLongestMatchInner!197 (regex!1203 (h!11437 rules!3103)) Nil!6034 (size!4747 Nil!6034) lt!257052 lt!257052 (size!4747 lt!257052)))))))

(declare-fun d!212717 () Bool)

(declare-fun e!365991 () Bool)

(assert (=> d!212717 e!365991))

(declare-fun res!261507 () Bool)

(assert (=> d!212717 (=> res!261507 e!365991)))

(assert (=> d!212717 (= res!261507 (isEmpty!4357 lt!257520))))

(declare-fun e!365989 () Option!1554)

(assert (=> d!212717 (= lt!257520 e!365989)))

(declare-fun c!112039 () Bool)

(declare-fun lt!257519 () tuple2!6916)

(assert (=> d!212717 (= c!112039 (isEmpty!4355 (_1!3722 lt!257519)))))

(assert (=> d!212717 (= lt!257519 (findLongestMatch!176 (regex!1203 (h!11437 rules!3103)) lt!257052))))

(assert (=> d!212717 (ruleValid!401 thiss!22590 (h!11437 rules!3103))))

(assert (=> d!212717 (= (maxPrefixOneRule!450 thiss!22590 (h!11437 rules!3103) lt!257052) lt!257520)))

(declare-fun b!603975 () Bool)

(declare-fun res!261510 () Bool)

(assert (=> b!603975 (=> (not res!261510) (not e!365990))))

(assert (=> b!603975 (= res!261510 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257520)))) (_2!3720 (get!2319 lt!257520))) lt!257052))))

(declare-fun b!603976 () Bool)

(assert (=> b!603976 (= e!365991 e!365990)))

(declare-fun res!261505 () Bool)

(assert (=> b!603976 (=> (not res!261505) (not e!365990))))

(assert (=> b!603976 (= res!261505 (matchR!639 (regex!1203 (h!11437 rules!3103)) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257520))))))))

(declare-fun b!603977 () Bool)

(declare-fun res!261509 () Bool)

(assert (=> b!603977 (=> (not res!261509) (not e!365990))))

(assert (=> b!603977 (= res!261509 (= (rule!1979 (_1!3720 (get!2319 lt!257520))) (h!11437 rules!3103)))))

(declare-fun b!603978 () Bool)

(assert (=> b!603978 (= e!365989 None!1553)))

(declare-fun b!603979 () Bool)

(declare-fun res!261506 () Bool)

(assert (=> b!603979 (=> (not res!261506) (not e!365990))))

(assert (=> b!603979 (= res!261506 (< (size!4747 (_2!3720 (get!2319 lt!257520))) (size!4747 lt!257052)))))

(declare-fun b!603980 () Bool)

(declare-fun res!261504 () Bool)

(assert (=> b!603980 (=> (not res!261504) (not e!365990))))

(assert (=> b!603980 (= res!261504 (= (value!39152 (_1!3720 (get!2319 lt!257520))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257520)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257520)))))))))

(declare-fun b!603981 () Bool)

(assert (=> b!603981 (= e!365989 (Some!1553 (tuple2!6913 (Token!2143 (apply!1456 (transformation!1203 (h!11437 rules!3103)) (seqFromList!1379 (_1!3722 lt!257519))) (h!11437 rules!3103) (size!4749 (seqFromList!1379 (_1!3722 lt!257519))) (_1!3722 lt!257519)) (_2!3722 lt!257519))))))

(declare-fun lt!257521 () Unit!10988)

(assert (=> b!603981 (= lt!257521 (longestMatchIsAcceptedByMatchOrIsEmpty!181 (regex!1203 (h!11437 rules!3103)) lt!257052))))

(declare-fun res!261508 () Bool)

(assert (=> b!603981 (= res!261508 (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (h!11437 rules!3103)) Nil!6034 (size!4747 Nil!6034) lt!257052 lt!257052 (size!4747 lt!257052)))))))

(assert (=> b!603981 (=> res!261508 e!365992)))

(assert (=> b!603981 e!365992))

(declare-fun lt!257523 () Unit!10988)

(assert (=> b!603981 (= lt!257523 lt!257521)))

(declare-fun lt!257522 () Unit!10988)

(assert (=> b!603981 (= lt!257522 (lemmaSemiInverse!236 (transformation!1203 (h!11437 rules!3103)) (seqFromList!1379 (_1!3722 lt!257519))))))

(assert (= (and d!212717 c!112039) b!603978))

(assert (= (and d!212717 (not c!112039)) b!603981))

(assert (= (and b!603981 (not res!261508)) b!603974))

(assert (= (and d!212717 (not res!261507)) b!603976))

(assert (= (and b!603976 res!261505) b!603975))

(assert (= (and b!603975 res!261510) b!603979))

(assert (= (and b!603979 res!261506) b!603977))

(assert (= (and b!603977 res!261509) b!603980))

(assert (= (and b!603980 res!261504) b!603973))

(declare-fun m!869527 () Bool)

(assert (=> b!603973 m!869527))

(declare-fun m!869529 () Bool)

(assert (=> b!603973 m!869529))

(assert (=> b!603979 m!869527))

(declare-fun m!869531 () Bool)

(assert (=> b!603979 m!869531))

(assert (=> b!603979 m!868167))

(declare-fun m!869533 () Bool)

(assert (=> d!212717 m!869533))

(declare-fun m!869535 () Bool)

(assert (=> d!212717 m!869535))

(declare-fun m!869537 () Bool)

(assert (=> d!212717 m!869537))

(assert (=> d!212717 m!868815))

(assert (=> b!603977 m!869527))

(assert (=> b!603976 m!869527))

(declare-fun m!869539 () Bool)

(assert (=> b!603976 m!869539))

(assert (=> b!603976 m!869539))

(declare-fun m!869541 () Bool)

(assert (=> b!603976 m!869541))

(assert (=> b!603976 m!869541))

(declare-fun m!869543 () Bool)

(assert (=> b!603976 m!869543))

(assert (=> b!603974 m!868327))

(assert (=> b!603974 m!868167))

(assert (=> b!603974 m!868327))

(assert (=> b!603974 m!868167))

(declare-fun m!869545 () Bool)

(assert (=> b!603974 m!869545))

(declare-fun m!869547 () Bool)

(assert (=> b!603974 m!869547))

(assert (=> b!603975 m!869527))

(assert (=> b!603975 m!869539))

(assert (=> b!603975 m!869539))

(assert (=> b!603975 m!869541))

(assert (=> b!603975 m!869541))

(declare-fun m!869549 () Bool)

(assert (=> b!603975 m!869549))

(assert (=> b!603980 m!869527))

(declare-fun m!869551 () Bool)

(assert (=> b!603980 m!869551))

(assert (=> b!603980 m!869551))

(declare-fun m!869553 () Bool)

(assert (=> b!603980 m!869553))

(declare-fun m!869555 () Bool)

(assert (=> b!603981 m!869555))

(declare-fun m!869557 () Bool)

(assert (=> b!603981 m!869557))

(declare-fun m!869559 () Bool)

(assert (=> b!603981 m!869559))

(assert (=> b!603981 m!868167))

(assert (=> b!603981 m!869557))

(assert (=> b!603981 m!869557))

(declare-fun m!869561 () Bool)

(assert (=> b!603981 m!869561))

(assert (=> b!603981 m!868327))

(declare-fun m!869563 () Bool)

(assert (=> b!603981 m!869563))

(assert (=> b!603981 m!868327))

(assert (=> b!603981 m!868167))

(assert (=> b!603981 m!869545))

(assert (=> b!603981 m!869557))

(declare-fun m!869565 () Bool)

(assert (=> b!603981 m!869565))

(assert (=> bm!40564 d!212717))

(declare-fun d!212719 () Bool)

(declare-fun c!112040 () Bool)

(assert (=> d!212719 (= c!112040 ((_ is Nil!6034) lt!257176))))

(declare-fun e!365993 () (InoxSet C!3996))

(assert (=> d!212719 (= (content!1089 lt!257176) e!365993)))

(declare-fun b!603982 () Bool)

(assert (=> b!603982 (= e!365993 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603983 () Bool)

(assert (=> b!603983 (= e!365993 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 lt!257176) true) (content!1089 (t!80045 lt!257176))))))

(assert (= (and d!212719 c!112040) b!603982))

(assert (= (and d!212719 (not c!112040)) b!603983))

(declare-fun m!869567 () Bool)

(assert (=> b!603983 m!869567))

(declare-fun m!869569 () Bool)

(assert (=> b!603983 m!869569))

(assert (=> d!212127 d!212719))

(declare-fun d!212721 () Bool)

(declare-fun c!112041 () Bool)

(assert (=> d!212721 (= c!112041 ((_ is Nil!6034) lt!257064))))

(declare-fun e!365994 () (InoxSet C!3996))

(assert (=> d!212721 (= (content!1089 lt!257064) e!365994)))

(declare-fun b!603984 () Bool)

(assert (=> b!603984 (= e!365994 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603985 () Bool)

(assert (=> b!603985 (= e!365994 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 lt!257064) true) (content!1089 (t!80045 lt!257064))))))

(assert (= (and d!212721 c!112041) b!603984))

(assert (= (and d!212721 (not c!112041)) b!603985))

(declare-fun m!869571 () Bool)

(assert (=> b!603985 m!869571))

(assert (=> b!603985 m!869493))

(assert (=> d!212127 d!212721))

(declare-fun d!212723 () Bool)

(declare-fun c!112042 () Bool)

(assert (=> d!212723 (= c!112042 ((_ is Nil!6034) (_2!3720 (v!16450 lt!257061))))))

(declare-fun e!365995 () (InoxSet C!3996))

(assert (=> d!212723 (= (content!1089 (_2!3720 (v!16450 lt!257061))) e!365995)))

(declare-fun b!603986 () Bool)

(assert (=> b!603986 (= e!365995 ((as const (Array C!3996 Bool)) false))))

(declare-fun b!603987 () Bool)

(assert (=> b!603987 (= e!365995 ((_ map or) (store ((as const (Array C!3996 Bool)) false) (h!11435 (_2!3720 (v!16450 lt!257061))) true) (content!1089 (t!80045 (_2!3720 (v!16450 lt!257061))))))))

(assert (= (and d!212723 c!112042) b!603986))

(assert (= (and d!212723 (not c!112042)) b!603987))

(declare-fun m!869573 () Bool)

(assert (=> b!603987 m!869573))

(declare-fun m!869575 () Bool)

(assert (=> b!603987 m!869575))

(assert (=> d!212127 d!212723))

(declare-fun b!603988 () Bool)

(declare-fun res!261511 () Bool)

(declare-fun e!365996 () Bool)

(assert (=> b!603988 (=> (not res!261511) (not e!365996))))

(declare-fun lt!257524 () Option!1554)

(assert (=> b!603988 (= res!261511 (= (++!1691 (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257524)))) (_2!3720 (get!2319 lt!257524))) input!2705))))

(declare-fun b!603989 () Bool)

(declare-fun e!365997 () Option!1554)

(declare-fun lt!257527 () Option!1554)

(declare-fun lt!257525 () Option!1554)

(assert (=> b!603989 (= e!365997 (ite (and ((_ is None!1553) lt!257527) ((_ is None!1553) lt!257525)) None!1553 (ite ((_ is None!1553) lt!257525) lt!257527 (ite ((_ is None!1553) lt!257527) lt!257525 (ite (>= (size!4746 (_1!3720 (v!16450 lt!257527))) (size!4746 (_1!3720 (v!16450 lt!257525)))) lt!257527 lt!257525)))))))

(declare-fun call!40632 () Option!1554)

(assert (=> b!603989 (= lt!257527 call!40632)))

(assert (=> b!603989 (= lt!257525 (maxPrefix!787 thiss!22590 (t!80047 (t!80047 rules!3103)) input!2705))))

(declare-fun b!603990 () Bool)

(declare-fun res!261513 () Bool)

(assert (=> b!603990 (=> (not res!261513) (not e!365996))))

(assert (=> b!603990 (= res!261513 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (get!2319 lt!257524)))) (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257524))))))))

(declare-fun b!603991 () Bool)

(declare-fun e!365998 () Bool)

(assert (=> b!603991 (= e!365998 e!365996)))

(declare-fun res!261512 () Bool)

(assert (=> b!603991 (=> (not res!261512) (not e!365996))))

(assert (=> b!603991 (= res!261512 (isDefined!1365 lt!257524))))

(declare-fun d!212725 () Bool)

(assert (=> d!212725 e!365998))

(declare-fun res!261517 () Bool)

(assert (=> d!212725 (=> res!261517 e!365998)))

(assert (=> d!212725 (= res!261517 (isEmpty!4357 lt!257524))))

(assert (=> d!212725 (= lt!257524 e!365997)))

(declare-fun c!112043 () Bool)

(assert (=> d!212725 (= c!112043 (and ((_ is Cons!6036) (t!80047 rules!3103)) ((_ is Nil!6036) (t!80047 (t!80047 rules!3103)))))))

(declare-fun lt!257526 () Unit!10988)

(declare-fun lt!257528 () Unit!10988)

(assert (=> d!212725 (= lt!257526 lt!257528)))

(assert (=> d!212725 (isPrefix!831 input!2705 input!2705)))

(assert (=> d!212725 (= lt!257528 (lemmaIsPrefixRefl!567 input!2705 input!2705))))

(assert (=> d!212725 (rulesValidInductive!447 thiss!22590 (t!80047 rules!3103))))

(assert (=> d!212725 (= (maxPrefix!787 thiss!22590 (t!80047 rules!3103) input!2705) lt!257524)))

(declare-fun b!603992 () Bool)

(assert (=> b!603992 (= e!365997 call!40632)))

(declare-fun b!603993 () Bool)

(declare-fun res!261515 () Bool)

(assert (=> b!603993 (=> (not res!261515) (not e!365996))))

(assert (=> b!603993 (= res!261515 (= (value!39152 (_1!3720 (get!2319 lt!257524))) (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257524)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257524)))))))))

(declare-fun b!603994 () Bool)

(assert (=> b!603994 (= e!365996 (contains!1415 (t!80047 rules!3103) (rule!1979 (_1!3720 (get!2319 lt!257524)))))))

(declare-fun bm!40627 () Bool)

(assert (=> bm!40627 (= call!40632 (maxPrefixOneRule!450 thiss!22590 (h!11437 (t!80047 rules!3103)) input!2705))))

(declare-fun b!603995 () Bool)

(declare-fun res!261514 () Bool)

(assert (=> b!603995 (=> (not res!261514) (not e!365996))))

(assert (=> b!603995 (= res!261514 (= (list!2532 (charsOf!832 (_1!3720 (get!2319 lt!257524)))) (originalCharacters!1242 (_1!3720 (get!2319 lt!257524)))))))

(declare-fun b!603996 () Bool)

(declare-fun res!261516 () Bool)

(assert (=> b!603996 (=> (not res!261516) (not e!365996))))

(assert (=> b!603996 (= res!261516 (< (size!4747 (_2!3720 (get!2319 lt!257524))) (size!4747 input!2705)))))

(assert (= (and d!212725 c!112043) b!603992))

(assert (= (and d!212725 (not c!112043)) b!603989))

(assert (= (or b!603992 b!603989) bm!40627))

(assert (= (and d!212725 (not res!261517)) b!603991))

(assert (= (and b!603991 res!261512) b!603995))

(assert (= (and b!603995 res!261514) b!603996))

(assert (= (and b!603996 res!261516) b!603988))

(assert (= (and b!603988 res!261511) b!603993))

(assert (= (and b!603993 res!261515) b!603990))

(assert (= (and b!603990 res!261513) b!603994))

(declare-fun m!869577 () Bool)

(assert (=> b!603988 m!869577))

(declare-fun m!869579 () Bool)

(assert (=> b!603988 m!869579))

(assert (=> b!603988 m!869579))

(declare-fun m!869581 () Bool)

(assert (=> b!603988 m!869581))

(assert (=> b!603988 m!869581))

(declare-fun m!869583 () Bool)

(assert (=> b!603988 m!869583))

(assert (=> b!603993 m!869577))

(declare-fun m!869585 () Bool)

(assert (=> b!603993 m!869585))

(assert (=> b!603993 m!869585))

(declare-fun m!869587 () Bool)

(assert (=> b!603993 m!869587))

(assert (=> b!603995 m!869577))

(assert (=> b!603995 m!869579))

(assert (=> b!603995 m!869579))

(assert (=> b!603995 m!869581))

(declare-fun m!869589 () Bool)

(assert (=> b!603991 m!869589))

(declare-fun m!869591 () Bool)

(assert (=> b!603989 m!869591))

(assert (=> b!603990 m!869577))

(assert (=> b!603990 m!869579))

(assert (=> b!603990 m!869579))

(assert (=> b!603990 m!869581))

(assert (=> b!603990 m!869581))

(declare-fun m!869593 () Bool)

(assert (=> b!603990 m!869593))

(declare-fun m!869595 () Bool)

(assert (=> d!212725 m!869595))

(assert (=> d!212725 m!867827))

(assert (=> d!212725 m!867821))

(assert (=> d!212725 m!868817))

(assert (=> b!603996 m!869577))

(declare-fun m!869597 () Bool)

(assert (=> b!603996 m!869597))

(assert (=> b!603996 m!868105))

(assert (=> b!603994 m!869577))

(declare-fun m!869599 () Bool)

(assert (=> b!603994 m!869599))

(declare-fun m!869601 () Bool)

(assert (=> bm!40627 m!869601))

(assert (=> b!603009 d!212725))

(declare-fun d!212727 () Bool)

(assert (=> d!212727 (= (seqFromList!1379 (_1!3722 lt!257218)) (fromListB!606 (_1!3722 lt!257218)))))

(declare-fun bs!71149 () Bool)

(assert (= bs!71149 d!212727))

(declare-fun m!869603 () Bool)

(assert (=> bs!71149 m!869603))

(assert (=> b!603156 d!212727))

(declare-fun d!212729 () Bool)

(assert (=> d!212729 (= (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))) ((_ is Nil!6034) (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(assert (=> b!603156 d!212729))

(declare-fun d!212731 () Bool)

(assert (=> d!212731 (= (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 (_1!3722 lt!257218))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 (_1!3722 lt!257218))))))

(declare-fun b_lambda!23855 () Bool)

(assert (=> (not b_lambda!23855) (not d!212731)))

(declare-fun tb!52655 () Bool)

(declare-fun t!80173 () Bool)

(assert (=> (and b!602830 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80173) tb!52655))

(declare-fun result!59246 () Bool)

(assert (=> tb!52655 (= result!59246 (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 (_1!3722 lt!257218)))))))

(declare-fun m!869605 () Bool)

(assert (=> tb!52655 m!869605))

(assert (=> d!212731 t!80173))

(declare-fun b_and!59671 () Bool)

(assert (= b_and!59635 (and (=> t!80173 result!59246) b_and!59671)))

(declare-fun t!80175 () Bool)

(declare-fun tb!52657 () Bool)

(assert (=> (and b!602815 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80175) tb!52657))

(declare-fun result!59248 () Bool)

(assert (= result!59248 result!59246))

(assert (=> d!212731 t!80175))

(declare-fun b_and!59673 () Bool)

(assert (= b_and!59637 (and (=> t!80175 result!59248) b_and!59673)))

(declare-fun t!80177 () Bool)

(declare-fun tb!52659 () Bool)

(assert (=> (and b!603212 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80177) tb!52659))

(declare-fun result!59250 () Bool)

(assert (= result!59250 result!59246))

(assert (=> d!212731 t!80177))

(declare-fun b_and!59675 () Bool)

(assert (= b_and!59639 (and (=> t!80177 result!59250) b_and!59675)))

(assert (=> d!212731 m!868345))

(declare-fun m!869607 () Bool)

(assert (=> d!212731 m!869607))

(assert (=> b!603156 d!212731))

(assert (=> b!603156 d!212541))

(assert (=> b!603156 d!212323))

(declare-fun d!212733 () Bool)

(declare-fun e!366002 () Bool)

(assert (=> d!212733 e!366002))

(declare-fun res!261520 () Bool)

(assert (=> d!212733 (=> res!261520 e!366002)))

(assert (=> d!212733 (= res!261520 (isEmpty!4355 (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(declare-fun lt!257531 () Unit!10988)

(declare-fun choose!4414 (Regex!1537 List!6044) Unit!10988)

(assert (=> d!212733 (= lt!257531 (choose!4414 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) input!2705))))

(assert (=> d!212733 (validRegex!531 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))))

(assert (=> d!212733 (= (longestMatchIsAcceptedByMatchOrIsEmpty!181 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) input!2705) lt!257531)))

(declare-fun b!603999 () Bool)

(assert (=> b!603999 (= e!366002 (matchR!639 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (_1!3722 (findLongestMatchInner!197 (regex!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) Nil!6034 (size!4747 Nil!6034) input!2705 input!2705 (size!4747 input!2705)))))))

(assert (= (and d!212733 (not res!261520)) b!603999))

(assert (=> d!212733 m!868355))

(assert (=> d!212733 m!868327))

(assert (=> d!212733 m!868105))

(assert (=> d!212733 m!868329))

(declare-fun m!869609 () Bool)

(assert (=> d!212733 m!869609))

(assert (=> d!212733 m!868327))

(assert (=> d!212733 m!868203))

(assert (=> d!212733 m!868105))

(assert (=> b!603999 m!868327))

(assert (=> b!603999 m!868105))

(assert (=> b!603999 m!868327))

(assert (=> b!603999 m!868105))

(assert (=> b!603999 m!868329))

(assert (=> b!603999 m!868331))

(assert (=> b!603156 d!212733))

(declare-fun d!212735 () Bool)

(declare-fun lt!257534 () Int)

(assert (=> d!212735 (= lt!257534 (size!4747 (list!2532 (seqFromList!1379 (_1!3722 lt!257218)))))))

(declare-fun size!4750 (Conc!1920) Int)

(assert (=> d!212735 (= lt!257534 (size!4750 (c!111808 (seqFromList!1379 (_1!3722 lt!257218)))))))

(assert (=> d!212735 (= (size!4749 (seqFromList!1379 (_1!3722 lt!257218))) lt!257534)))

(declare-fun bs!71150 () Bool)

(assert (= bs!71150 d!212735))

(assert (=> bs!71150 m!868345))

(declare-fun m!869611 () Bool)

(assert (=> bs!71150 m!869611))

(assert (=> bs!71150 m!869611))

(declare-fun m!869613 () Bool)

(assert (=> bs!71150 m!869613))

(declare-fun m!869615 () Bool)

(assert (=> bs!71150 m!869615))

(assert (=> b!603156 d!212735))

(assert (=> b!603156 d!212661))

(declare-fun bs!71151 () Bool)

(declare-fun d!212737 () Bool)

(assert (= bs!71151 (and d!212737 d!212023)))

(declare-fun lambda!16100 () Int)

(assert (=> bs!71151 (= (and (= (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (= (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (= lambda!16100 lambda!16071))))

(declare-fun bs!71152 () Bool)

(assert (= bs!71152 (and d!212737 d!212241)))

(assert (=> bs!71152 (= (and (= (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) (= (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (rule!1979 token!491))))) (= lambda!16100 lambda!16077))))

(declare-fun bs!71153 () Bool)

(assert (= bs!71153 (and d!212737 d!212419)))

(assert (=> bs!71153 (= (and (= (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toChars!1961 (transformation!1203 (h!11437 rules!3103)))) (= (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (toValue!2102 (transformation!1203 (h!11437 rules!3103))))) (= lambda!16100 lambda!16088))))

(declare-fun bs!71154 () Bool)

(assert (= bs!71154 (and d!212737 d!212691)))

(assert (=> bs!71154 (= lambda!16100 lambda!16099)))

(declare-fun b!604000 () Bool)

(declare-fun e!366003 () Bool)

(assert (=> b!604000 (= e!366003 true)))

(assert (=> d!212737 e!366003))

(assert (= d!212737 b!604000))

(assert (=> b!604000 (< (dynLambda!3483 order!4803 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (dynLambda!3484 order!4805 lambda!16100))))

(assert (=> b!604000 (< (dynLambda!3485 order!4807 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) (dynLambda!3484 order!4805 lambda!16100))))

(assert (=> d!212737 (= (list!2532 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 (_1!3722 lt!257218))))) (list!2532 (seqFromList!1379 (_1!3722 lt!257218))))))

(declare-fun lt!257535 () Unit!10988)

(assert (=> d!212737 (= lt!257535 (ForallOf!117 lambda!16100 (seqFromList!1379 (_1!3722 lt!257218))))))

(assert (=> d!212737 (= (lemmaSemiInverse!236 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))) (seqFromList!1379 (_1!3722 lt!257218))) lt!257535)))

(declare-fun b_lambda!23857 () Bool)

(assert (=> (not b_lambda!23857) (not d!212737)))

(declare-fun tb!52661 () Bool)

(declare-fun t!80179 () Bool)

(assert (=> (and b!602830 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80179) tb!52661))

(declare-fun b!604001 () Bool)

(declare-fun e!366004 () Bool)

(declare-fun tp!187725 () Bool)

(assert (=> b!604001 (= e!366004 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 (_1!3722 lt!257218)))))) tp!187725))))

(declare-fun result!59252 () Bool)

(assert (=> tb!52661 (= result!59252 (and (inv!7664 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (seqFromList!1379 (_1!3722 lt!257218))))) e!366004))))

(assert (= tb!52661 b!604001))

(declare-fun m!869617 () Bool)

(assert (=> b!604001 m!869617))

(declare-fun m!869619 () Bool)

(assert (=> tb!52661 m!869619))

(assert (=> d!212737 t!80179))

(declare-fun b_and!59677 () Bool)

(assert (= b_and!59629 (and (=> t!80179 result!59252) b_and!59677)))

(declare-fun tb!52663 () Bool)

(declare-fun t!80181 () Bool)

(assert (=> (and b!602815 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80181) tb!52663))

(declare-fun result!59254 () Bool)

(assert (= result!59254 result!59252))

(assert (=> d!212737 t!80181))

(declare-fun b_and!59679 () Bool)

(assert (= b_and!59631 (and (=> t!80181 result!59254) b_and!59679)))

(declare-fun t!80183 () Bool)

(declare-fun tb!52665 () Bool)

(assert (=> (and b!603212 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80183) tb!52665))

(declare-fun result!59256 () Bool)

(assert (= result!59256 result!59252))

(assert (=> d!212737 t!80183))

(declare-fun b_and!59681 () Bool)

(assert (= b_and!59633 (and (=> t!80183 result!59256) b_and!59681)))

(declare-fun b_lambda!23859 () Bool)

(assert (=> (not b_lambda!23859) (not d!212737)))

(assert (=> d!212737 t!80173))

(declare-fun b_and!59683 () Bool)

(assert (= b_and!59671 (and (=> t!80173 result!59246) b_and!59683)))

(assert (=> d!212737 t!80175))

(declare-fun b_and!59685 () Bool)

(assert (= b_and!59673 (and (=> t!80175 result!59248) b_and!59685)))

(assert (=> d!212737 t!80177))

(declare-fun b_and!59687 () Bool)

(assert (= b_and!59675 (and (=> t!80177 result!59250) b_and!59687)))

(assert (=> d!212737 m!868345))

(assert (=> d!212737 m!869611))

(declare-fun m!869621 () Bool)

(assert (=> d!212737 m!869621))

(declare-fun m!869623 () Bool)

(assert (=> d!212737 m!869623))

(assert (=> d!212737 m!868345))

(assert (=> d!212737 m!869607))

(assert (=> d!212737 m!868345))

(declare-fun m!869625 () Bool)

(assert (=> d!212737 m!869625))

(assert (=> d!212737 m!869607))

(assert (=> d!212737 m!869621))

(assert (=> b!603156 d!212737))

(declare-fun b!604014 () Bool)

(declare-fun e!366012 () List!6044)

(assert (=> b!604014 (= e!366012 lt!257196)))

(declare-fun d!212739 () Bool)

(declare-fun e!366011 () Bool)

(assert (=> d!212739 e!366011))

(declare-fun res!261522 () Bool)

(assert (=> d!212739 (=> (not res!261522) (not e!366011))))

(declare-fun lt!257558 () List!6044)

(assert (=> d!212739 (= res!261522 (= (content!1089 lt!257558) ((_ map or) (content!1089 lt!257064) (content!1089 lt!257196))))))

(assert (=> d!212739 (= lt!257558 e!366012)))

(declare-fun c!112050 () Bool)

(assert (=> d!212739 (= c!112050 ((_ is Nil!6034) lt!257064))))

(assert (=> d!212739 (= (++!1691 lt!257064 lt!257196) lt!257558)))

(declare-fun b!604016 () Bool)

(declare-fun res!261521 () Bool)

(assert (=> b!604016 (=> (not res!261521) (not e!366011))))

(assert (=> b!604016 (= res!261521 (= (size!4747 lt!257558) (+ (size!4747 lt!257064) (size!4747 lt!257196))))))

(declare-fun b!604015 () Bool)

(assert (=> b!604015 (= e!366012 (Cons!6034 (h!11435 lt!257064) (++!1691 (t!80045 lt!257064) lt!257196)))))

(declare-fun b!604017 () Bool)

(assert (=> b!604017 (= e!366011 (or (not (= lt!257196 Nil!6034)) (= lt!257558 lt!257064)))))

(assert (= (and d!212739 c!112050) b!604014))

(assert (= (and d!212739 (not c!112050)) b!604015))

(assert (= (and d!212739 res!261522) b!604016))

(assert (= (and b!604016 res!261521) b!604017))

(declare-fun m!869627 () Bool)

(assert (=> d!212739 m!869627))

(assert (=> d!212739 m!868215))

(declare-fun m!869629 () Bool)

(assert (=> d!212739 m!869629))

(declare-fun m!869631 () Bool)

(assert (=> b!604016 m!869631))

(assert (=> b!604016 m!867819))

(declare-fun m!869633 () Bool)

(assert (=> b!604016 m!869633))

(declare-fun m!869635 () Bool)

(assert (=> b!604015 m!869635))

(assert (=> d!212155 d!212739))

(assert (=> d!212155 d!212323))

(assert (=> d!212155 d!212139))

(assert (=> b!603013 d!212269))

(declare-fun d!212741 () Bool)

(assert (=> d!212741 (= (apply!1456 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257153))))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257153))))))))

(declare-fun b_lambda!23861 () Bool)

(assert (=> (not b_lambda!23861) (not d!212741)))

(declare-fun tb!52667 () Bool)

(declare-fun t!80185 () Bool)

(assert (=> (and b!602830 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80185) tb!52667))

(declare-fun result!59258 () Bool)

(assert (=> tb!52667 (= result!59258 (inv!21 (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153))))) (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257153)))))))))

(declare-fun m!869637 () Bool)

(assert (=> tb!52667 m!869637))

(assert (=> d!212741 t!80185))

(declare-fun b_and!59689 () Bool)

(assert (= b_and!59683 (and (=> t!80185 result!59258) b_and!59689)))

(declare-fun tb!52669 () Bool)

(declare-fun t!80187 () Bool)

(assert (=> (and b!602815 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80187) tb!52669))

(declare-fun result!59260 () Bool)

(assert (= result!59260 result!59258))

(assert (=> d!212741 t!80187))

(declare-fun b_and!59691 () Bool)

(assert (= b_and!59685 (and (=> t!80187 result!59260) b_and!59691)))

(declare-fun t!80189 () Bool)

(declare-fun tb!52671 () Bool)

(assert (=> (and b!603212 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80189) tb!52671))

(declare-fun result!59262 () Bool)

(assert (= result!59262 result!59258))

(assert (=> d!212741 t!80189))

(declare-fun b_and!59693 () Bool)

(assert (= b_and!59687 (and (=> t!80189 result!59262) b_and!59693)))

(assert (=> d!212741 m!868089))

(declare-fun m!869639 () Bool)

(assert (=> d!212741 m!869639))

(assert (=> b!603013 d!212741))

(declare-fun d!212743 () Bool)

(assert (=> d!212743 (= (seqFromList!1379 (originalCharacters!1242 (_1!3720 (get!2319 lt!257153)))) (fromListB!606 (originalCharacters!1242 (_1!3720 (get!2319 lt!257153)))))))

(declare-fun bs!71155 () Bool)

(assert (= bs!71155 d!212743))

(declare-fun m!869641 () Bool)

(assert (=> bs!71155 m!869641))

(assert (=> b!603013 d!212743))

(declare-fun d!212745 () Bool)

(assert (=> d!212745 (= (isDefined!1365 lt!257161) (not (isEmpty!4357 lt!257161)))))

(declare-fun bs!71156 () Bool)

(assert (= bs!71156 d!212745))

(assert (=> bs!71156 m!868159))

(assert (=> b!603046 d!212745))

(declare-fun d!212747 () Bool)

(assert (=> d!212747 (= (isEmpty!4357 lt!257161) (not ((_ is Some!1553) lt!257161)))))

(assert (=> d!212109 d!212747))

(declare-fun b!604032 () Bool)

(declare-fun e!366021 () Bool)

(assert (=> b!604032 (= e!366021 (isPrefix!831 (tail!807 lt!257052) (tail!807 lt!257052)))))

(declare-fun d!212749 () Bool)

(declare-fun e!366020 () Bool)

(assert (=> d!212749 e!366020))

(declare-fun res!261524 () Bool)

(assert (=> d!212749 (=> res!261524 e!366020)))

(declare-fun lt!257593 () Bool)

(assert (=> d!212749 (= res!261524 (not lt!257593))))

(declare-fun e!366022 () Bool)

(assert (=> d!212749 (= lt!257593 e!366022)))

(declare-fun res!261526 () Bool)

(assert (=> d!212749 (=> res!261526 e!366022)))

(assert (=> d!212749 (= res!261526 ((_ is Nil!6034) lt!257052))))

(assert (=> d!212749 (= (isPrefix!831 lt!257052 lt!257052) lt!257593)))

(declare-fun b!604031 () Bool)

(declare-fun res!261525 () Bool)

(assert (=> b!604031 (=> (not res!261525) (not e!366021))))

(assert (=> b!604031 (= res!261525 (= (head!1277 lt!257052) (head!1277 lt!257052)))))

(declare-fun b!604030 () Bool)

(assert (=> b!604030 (= e!366022 e!366021)))

(declare-fun res!261523 () Bool)

(assert (=> b!604030 (=> (not res!261523) (not e!366021))))

(assert (=> b!604030 (= res!261523 (not ((_ is Nil!6034) lt!257052)))))

(declare-fun b!604033 () Bool)

(assert (=> b!604033 (= e!366020 (>= (size!4747 lt!257052) (size!4747 lt!257052)))))

(assert (= (and d!212749 (not res!261526)) b!604030))

(assert (= (and b!604030 res!261523) b!604031))

(assert (= (and b!604031 res!261525) b!604032))

(assert (= (and d!212749 (not res!261524)) b!604033))

(assert (=> b!604032 m!868293))

(assert (=> b!604032 m!868293))

(assert (=> b!604032 m!868293))

(assert (=> b!604032 m!868293))

(declare-fun m!869643 () Bool)

(assert (=> b!604032 m!869643))

(assert (=> b!604031 m!868297))

(assert (=> b!604031 m!868297))

(assert (=> b!604033 m!868167))

(assert (=> b!604033 m!868167))

(assert (=> d!212109 d!212749))

(declare-fun d!212751 () Bool)

(assert (=> d!212751 (isPrefix!831 lt!257052 lt!257052)))

(declare-fun lt!257594 () Unit!10988)

(assert (=> d!212751 (= lt!257594 (choose!4406 lt!257052 lt!257052))))

(assert (=> d!212751 (= (lemmaIsPrefixRefl!567 lt!257052 lt!257052) lt!257594)))

(declare-fun bs!71157 () Bool)

(assert (= bs!71157 d!212751))

(assert (=> bs!71157 m!868161))

(declare-fun m!869645 () Bool)

(assert (=> bs!71157 m!869645))

(assert (=> d!212109 d!212751))

(assert (=> d!212109 d!212429))

(declare-fun b!604036 () Bool)

(declare-fun e!366024 () Bool)

(assert (=> b!604036 (= e!366024 (isPrefix!831 (tail!807 (tail!807 lt!257064)) (tail!807 (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))))

(declare-fun d!212753 () Bool)

(declare-fun e!366023 () Bool)

(assert (=> d!212753 e!366023))

(declare-fun res!261528 () Bool)

(assert (=> d!212753 (=> res!261528 e!366023)))

(declare-fun lt!257595 () Bool)

(assert (=> d!212753 (= res!261528 (not lt!257595))))

(declare-fun e!366025 () Bool)

(assert (=> d!212753 (= lt!257595 e!366025)))

(declare-fun res!261530 () Bool)

(assert (=> d!212753 (=> res!261530 e!366025)))

(assert (=> d!212753 (= res!261530 ((_ is Nil!6034) (tail!807 lt!257064)))))

(assert (=> d!212753 (= (isPrefix!831 (tail!807 lt!257064) (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))) lt!257595)))

(declare-fun b!604035 () Bool)

(declare-fun res!261529 () Bool)

(assert (=> b!604035 (=> (not res!261529) (not e!366024))))

(assert (=> b!604035 (= res!261529 (= (head!1277 (tail!807 lt!257064)) (head!1277 (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))))

(declare-fun b!604034 () Bool)

(assert (=> b!604034 (= e!366025 e!366024)))

(declare-fun res!261527 () Bool)

(assert (=> b!604034 (=> (not res!261527) (not e!366024))))

(assert (=> b!604034 (= res!261527 (not ((_ is Nil!6034) (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))))

(declare-fun b!604037 () Bool)

(assert (=> b!604037 (= e!366023 (>= (size!4747 (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061))))) (size!4747 (tail!807 lt!257064))))))

(assert (= (and d!212753 (not res!261530)) b!604034))

(assert (= (and b!604034 res!261527) b!604035))

(assert (= (and b!604035 res!261529) b!604036))

(assert (= (and d!212753 (not res!261528)) b!604037))

(assert (=> b!604036 m!868229))

(declare-fun m!869647 () Bool)

(assert (=> b!604036 m!869647))

(assert (=> b!604036 m!868231))

(declare-fun m!869649 () Bool)

(assert (=> b!604036 m!869649))

(assert (=> b!604036 m!869647))

(assert (=> b!604036 m!869649))

(declare-fun m!869651 () Bool)

(assert (=> b!604036 m!869651))

(assert (=> b!604035 m!868229))

(declare-fun m!869653 () Bool)

(assert (=> b!604035 m!869653))

(assert (=> b!604035 m!868231))

(declare-fun m!869655 () Bool)

(assert (=> b!604035 m!869655))

(assert (=> b!604037 m!868231))

(declare-fun m!869657 () Bool)

(assert (=> b!604037 m!869657))

(assert (=> b!604037 m!868229))

(declare-fun m!869659 () Bool)

(assert (=> b!604037 m!869659))

(assert (=> b!603098 d!212753))

(declare-fun d!212755 () Bool)

(assert (=> d!212755 (= (tail!807 lt!257064) (t!80045 lt!257064))))

(assert (=> b!603098 d!212755))

(declare-fun d!212757 () Bool)

(assert (=> d!212757 (= (tail!807 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))) (t!80045 (++!1691 lt!257064 (_2!3720 (v!16450 lt!257061)))))))

(assert (=> b!603098 d!212757))

(declare-fun bs!71158 () Bool)

(declare-fun d!212759 () Bool)

(assert (= bs!71158 (and d!212759 d!212429)))

(declare-fun lambda!16103 () Int)

(assert (=> bs!71158 (= lambda!16103 lambda!16091)))

(assert (=> d!212759 true))

(declare-fun lt!257598 () Bool)

(assert (=> d!212759 (= lt!257598 (rulesValidInductive!447 thiss!22590 rules!3103))))

(assert (=> d!212759 (= lt!257598 (forall!1559 rules!3103 lambda!16103))))

(assert (=> d!212759 (= (rulesValid!443 thiss!22590 rules!3103) lt!257598)))

(declare-fun bs!71159 () Bool)

(assert (= bs!71159 d!212759))

(assert (=> bs!71159 m!868101))

(declare-fun m!869661 () Bool)

(assert (=> bs!71159 m!869661))

(assert (=> d!212115 d!212759))

(declare-fun d!212761 () Bool)

(assert (=> d!212761 (= (isEmpty!4357 lt!257072) (not ((_ is Some!1553) lt!257072)))))

(assert (=> d!212107 d!212761))

(assert (=> b!603034 d!212395))

(assert (=> b!603152 d!212299))

(assert (=> b!603110 d!212477))

(assert (=> b!603110 d!212323))

(declare-fun b!604038 () Bool)

(declare-fun e!366026 () List!6044)

(assert (=> b!604038 (= e!366026 Nil!6034)))

(declare-fun b!604040 () Bool)

(declare-fun e!366027 () List!6044)

(assert (=> b!604040 (= e!366027 (list!2535 (xs!4557 (c!111808 (charsOf!832 token!491)))))))

(declare-fun b!604041 () Bool)

(assert (=> b!604041 (= e!366027 (++!1691 (list!2533 (left!4842 (c!111808 (charsOf!832 token!491)))) (list!2533 (right!5172 (c!111808 (charsOf!832 token!491))))))))

(declare-fun b!604039 () Bool)

(assert (=> b!604039 (= e!366026 e!366027)))

(declare-fun c!112058 () Bool)

(assert (=> b!604039 (= c!112058 ((_ is Leaf!3029) (c!111808 (charsOf!832 token!491))))))

(declare-fun d!212763 () Bool)

(declare-fun c!112057 () Bool)

(assert (=> d!212763 (= c!112057 ((_ is Empty!1920) (c!111808 (charsOf!832 token!491))))))

(assert (=> d!212763 (= (list!2533 (c!111808 (charsOf!832 token!491))) e!366026)))

(assert (= (and d!212763 c!112057) b!604038))

(assert (= (and d!212763 (not c!112057)) b!604039))

(assert (= (and b!604039 c!112058) b!604040))

(assert (= (and b!604039 (not c!112058)) b!604041))

(declare-fun m!869663 () Bool)

(assert (=> b!604040 m!869663))

(declare-fun m!869665 () Bool)

(assert (=> b!604041 m!869665))

(declare-fun m!869667 () Bool)

(assert (=> b!604041 m!869667))

(assert (=> b!604041 m!869665))

(assert (=> b!604041 m!869667))

(declare-fun m!869669 () Bool)

(assert (=> b!604041 m!869669))

(assert (=> d!212095 d!212763))

(declare-fun d!212765 () Bool)

(declare-fun lt!257599 () Int)

(assert (=> d!212765 (>= lt!257599 0)))

(declare-fun e!366032 () Int)

(assert (=> d!212765 (= lt!257599 e!366032)))

(declare-fun c!112059 () Bool)

(assert (=> d!212765 (= c!112059 ((_ is Nil!6034) (t!80045 lt!257064)))))

(assert (=> d!212765 (= (size!4747 (t!80045 lt!257064)) lt!257599)))

(declare-fun b!604046 () Bool)

(assert (=> b!604046 (= e!366032 0)))

(declare-fun b!604047 () Bool)

(assert (=> b!604047 (= e!366032 (+ 1 (size!4747 (t!80045 (t!80045 lt!257064)))))))

(assert (= (and d!212765 c!112059) b!604046))

(assert (= (and d!212765 (not c!112059)) b!604047))

(declare-fun m!869671 () Bool)

(assert (=> b!604047 m!869671))

(assert (=> b!603101 d!212765))

(declare-fun b!604050 () Bool)

(declare-fun e!366033 () Bool)

(declare-fun tp!187727 () Bool)

(assert (=> b!604050 (= e!366033 tp!187727)))

(declare-fun b!604051 () Bool)

(declare-fun tp!187729 () Bool)

(declare-fun tp!187726 () Bool)

(assert (=> b!604051 (= e!366033 (and tp!187729 tp!187726))))

(assert (=> b!603190 (= tp!187662 e!366033)))

(declare-fun b!604049 () Bool)

(declare-fun tp!187730 () Bool)

(declare-fun tp!187728 () Bool)

(assert (=> b!604049 (= e!366033 (and tp!187730 tp!187728))))

(declare-fun b!604048 () Bool)

(assert (=> b!604048 (= e!366033 tp_is_empty!3429)))

(assert (= (and b!603190 ((_ is ElementMatch!1537) (regOne!3586 (regex!1203 (rule!1979 token!491))))) b!604048))

(assert (= (and b!603190 ((_ is Concat!2764) (regOne!3586 (regex!1203 (rule!1979 token!491))))) b!604049))

(assert (= (and b!603190 ((_ is Star!1537) (regOne!3586 (regex!1203 (rule!1979 token!491))))) b!604050))

(assert (= (and b!603190 ((_ is Union!1537) (regOne!3586 (regex!1203 (rule!1979 token!491))))) b!604051))

(declare-fun b!604054 () Bool)

(declare-fun e!366034 () Bool)

(declare-fun tp!187732 () Bool)

(assert (=> b!604054 (= e!366034 tp!187732)))

(declare-fun b!604055 () Bool)

(declare-fun tp!187734 () Bool)

(declare-fun tp!187731 () Bool)

(assert (=> b!604055 (= e!366034 (and tp!187734 tp!187731))))

(assert (=> b!603190 (= tp!187660 e!366034)))

(declare-fun b!604053 () Bool)

(declare-fun tp!187735 () Bool)

(declare-fun tp!187733 () Bool)

(assert (=> b!604053 (= e!366034 (and tp!187735 tp!187733))))

(declare-fun b!604052 () Bool)

(assert (=> b!604052 (= e!366034 tp_is_empty!3429)))

(assert (= (and b!603190 ((_ is ElementMatch!1537) (regTwo!3586 (regex!1203 (rule!1979 token!491))))) b!604052))

(assert (= (and b!603190 ((_ is Concat!2764) (regTwo!3586 (regex!1203 (rule!1979 token!491))))) b!604053))

(assert (= (and b!603190 ((_ is Star!1537) (regTwo!3586 (regex!1203 (rule!1979 token!491))))) b!604054))

(assert (= (and b!603190 ((_ is Union!1537) (regTwo!3586 (regex!1203 (rule!1979 token!491))))) b!604055))

(declare-fun tp!187743 () Bool)

(declare-fun e!366040 () Bool)

(declare-fun b!604064 () Bool)

(declare-fun tp!187742 () Bool)

(assert (=> b!604064 (= e!366040 (and (inv!7663 (left!4842 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))))) tp!187742 (inv!7663 (right!5172 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))))) tp!187743))))

(declare-fun b!604066 () Bool)

(declare-fun e!366039 () Bool)

(declare-fun tp!187744 () Bool)

(assert (=> b!604066 (= e!366039 tp!187744)))

(declare-fun b!604065 () Bool)

(declare-fun inv!7671 (IArray!3841) Bool)

(assert (=> b!604065 (= e!366040 (and (inv!7671 (xs!4557 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))))) e!366039))))

(assert (=> b!603106 (= tp!187642 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061)))))) e!366040))))

(assert (= (and b!603106 ((_ is Node!1920) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))))) b!604064))

(assert (= b!604065 b!604066))

(assert (= (and b!603106 ((_ is Leaf!3029) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))) (value!39152 (_1!3720 (v!16450 lt!257061))))))) b!604065))

(declare-fun m!869673 () Bool)

(assert (=> b!604064 m!869673))

(declare-fun m!869675 () Bool)

(assert (=> b!604064 m!869675))

(declare-fun m!869677 () Bool)

(assert (=> b!604065 m!869677))

(assert (=> b!603106 m!868261))

(declare-fun b!604069 () Bool)

(declare-fun e!366041 () Bool)

(declare-fun tp!187746 () Bool)

(assert (=> b!604069 (= e!366041 tp!187746)))

(declare-fun b!604070 () Bool)

(declare-fun tp!187748 () Bool)

(declare-fun tp!187745 () Bool)

(assert (=> b!604070 (= e!366041 (and tp!187748 tp!187745))))

(assert (=> b!603215 (= tp!187677 e!366041)))

(declare-fun b!604068 () Bool)

(declare-fun tp!187749 () Bool)

(declare-fun tp!187747 () Bool)

(assert (=> b!604068 (= e!366041 (and tp!187749 tp!187747))))

(declare-fun b!604067 () Bool)

(assert (=> b!604067 (= e!366041 tp_is_empty!3429)))

(assert (= (and b!603215 ((_ is ElementMatch!1537) (reg!1866 (regex!1203 (h!11437 rules!3103))))) b!604067))

(assert (= (and b!603215 ((_ is Concat!2764) (reg!1866 (regex!1203 (h!11437 rules!3103))))) b!604068))

(assert (= (and b!603215 ((_ is Star!1537) (reg!1866 (regex!1203 (h!11437 rules!3103))))) b!604069))

(assert (= (and b!603215 ((_ is Union!1537) (reg!1866 (regex!1203 (h!11437 rules!3103))))) b!604070))

(declare-fun b!604071 () Bool)

(declare-fun e!366042 () Bool)

(declare-fun tp!187750 () Bool)

(assert (=> b!604071 (= e!366042 (and tp_is_empty!3429 tp!187750))))

(assert (=> b!603174 (= tp!187647 e!366042)))

(assert (= (and b!603174 ((_ is Cons!6034) (t!80045 (originalCharacters!1242 token!491)))) b!604071))

(declare-fun b!604074 () Bool)

(declare-fun e!366043 () Bool)

(declare-fun tp!187752 () Bool)

(assert (=> b!604074 (= e!366043 tp!187752)))

(declare-fun b!604075 () Bool)

(declare-fun tp!187754 () Bool)

(declare-fun tp!187751 () Bool)

(assert (=> b!604075 (= e!366043 (and tp!187754 tp!187751))))

(assert (=> b!603216 (= tp!187679 e!366043)))

(declare-fun b!604073 () Bool)

(declare-fun tp!187755 () Bool)

(declare-fun tp!187753 () Bool)

(assert (=> b!604073 (= e!366043 (and tp!187755 tp!187753))))

(declare-fun b!604072 () Bool)

(assert (=> b!604072 (= e!366043 tp_is_empty!3429)))

(assert (= (and b!603216 ((_ is ElementMatch!1537) (regOne!3587 (regex!1203 (h!11437 rules!3103))))) b!604072))

(assert (= (and b!603216 ((_ is Concat!2764) (regOne!3587 (regex!1203 (h!11437 rules!3103))))) b!604073))

(assert (= (and b!603216 ((_ is Star!1537) (regOne!3587 (regex!1203 (h!11437 rules!3103))))) b!604074))

(assert (= (and b!603216 ((_ is Union!1537) (regOne!3587 (regex!1203 (h!11437 rules!3103))))) b!604075))

(declare-fun b!604078 () Bool)

(declare-fun e!366044 () Bool)

(declare-fun tp!187757 () Bool)

(assert (=> b!604078 (= e!366044 tp!187757)))

(declare-fun b!604079 () Bool)

(declare-fun tp!187759 () Bool)

(declare-fun tp!187756 () Bool)

(assert (=> b!604079 (= e!366044 (and tp!187759 tp!187756))))

(assert (=> b!603216 (= tp!187676 e!366044)))

(declare-fun b!604077 () Bool)

(declare-fun tp!187760 () Bool)

(declare-fun tp!187758 () Bool)

(assert (=> b!604077 (= e!366044 (and tp!187760 tp!187758))))

(declare-fun b!604076 () Bool)

(assert (=> b!604076 (= e!366044 tp_is_empty!3429)))

(assert (= (and b!603216 ((_ is ElementMatch!1537) (regTwo!3587 (regex!1203 (h!11437 rules!3103))))) b!604076))

(assert (= (and b!603216 ((_ is Concat!2764) (regTwo!3587 (regex!1203 (h!11437 rules!3103))))) b!604077))

(assert (= (and b!603216 ((_ is Star!1537) (regTwo!3587 (regex!1203 (h!11437 rules!3103))))) b!604078))

(assert (= (and b!603216 ((_ is Union!1537) (regTwo!3587 (regex!1203 (h!11437 rules!3103))))) b!604079))

(declare-fun b!604080 () Bool)

(declare-fun e!366045 () Bool)

(declare-fun tp!187761 () Bool)

(assert (=> b!604080 (= e!366045 (and tp_is_empty!3429 tp!187761))))

(assert (=> b!603197 (= tp!187663 e!366045)))

(assert (= (and b!603197 ((_ is Cons!6034) (t!80045 (t!80045 input!2705)))) b!604080))

(declare-fun b!604083 () Bool)

(declare-fun b_free!17189 () Bool)

(declare-fun b_next!17205 () Bool)

(assert (=> b!604083 (= b_free!17189 (not b_next!17205))))

(declare-fun t!80191 () Bool)

(declare-fun tb!52673 () Bool)

(assert (=> (and b!604083 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80191) tb!52673))

(declare-fun result!59266 () Bool)

(assert (= result!59266 result!59246))

(assert (=> d!212737 t!80191))

(declare-fun t!80193 () Bool)

(declare-fun tb!52675 () Bool)

(assert (=> (and b!604083 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80193) tb!52675))

(declare-fun result!59268 () Bool)

(assert (= result!59268 result!59210))

(assert (=> d!212409 t!80193))

(declare-fun tb!52677 () Bool)

(declare-fun t!80195 () Bool)

(assert (=> (and b!604083 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 token!491)))) t!80195) tb!52677))

(declare-fun result!59270 () Bool)

(assert (= result!59270 result!59124))

(assert (=> d!212023 t!80195))

(assert (=> d!212173 t!80195))

(declare-fun t!80197 () Bool)

(declare-fun tb!52679 () Bool)

(assert (=> (and b!604083 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80197) tb!52679))

(declare-fun result!59272 () Bool)

(assert (= result!59272 result!59258))

(assert (=> d!212741 t!80197))

(declare-fun t!80199 () Bool)

(declare-fun tb!52681 () Bool)

(assert (=> (and b!604083 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80199) tb!52681))

(declare-fun result!59274 () Bool)

(assert (= result!59274 result!59138))

(assert (=> d!212159 t!80199))

(assert (=> d!212731 t!80191))

(declare-fun t!80201 () Bool)

(declare-fun tb!52683 () Bool)

(assert (=> (and b!604083 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80201) tb!52683))

(declare-fun result!59276 () Bool)

(assert (= result!59276 result!59192))

(assert (=> d!212301 t!80201))

(declare-fun tp!187762 () Bool)

(declare-fun b_and!59695 () Bool)

(assert (=> b!604083 (= tp!187762 (and (=> t!80193 result!59268) (=> t!80201 result!59276) (=> t!80199 result!59274) (=> t!80195 result!59270) (=> t!80197 result!59272) (=> t!80191 result!59266) b_and!59695))))

(declare-fun b_free!17191 () Bool)

(declare-fun b_next!17207 () Bool)

(assert (=> b!604083 (= b_free!17191 (not b_next!17207))))

(declare-fun tb!52685 () Bool)

(declare-fun t!80203 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80203) tb!52685))

(declare-fun result!59278 () Bool)

(assert (= result!59278 result!59252))

(assert (=> d!212737 t!80203))

(declare-fun t!80205 () Bool)

(declare-fun tb!52687 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257161)))))) t!80205) tb!52687))

(declare-fun result!59280 () Bool)

(assert (= result!59280 result!59198))

(assert (=> d!212363 t!80205))

(declare-fun t!80207 () Bool)

(declare-fun tb!52689 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061)))))) t!80207) tb!52689))

(declare-fun result!59282 () Bool)

(assert (= result!59282 result!59134))

(assert (=> d!212145 t!80207))

(declare-fun tb!52691 () Bool)

(declare-fun t!80209 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257219)))))) t!80209) tb!52691))

(declare-fun result!59284 () Bool)

(assert (= result!59284 result!59204))

(assert (=> d!212385 t!80209))

(declare-fun tb!52693 () Bool)

(declare-fun t!80211 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80211) tb!52693))

(declare-fun result!59286 () Bool)

(assert (= result!59286 result!59118))

(assert (=> d!212023 t!80211))

(declare-fun tb!52695 () Bool)

(declare-fun t!80213 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (get!2319 lt!257153)))))) t!80213) tb!52695))

(declare-fun result!59288 () Bool)

(assert (= result!59288 result!59186))

(assert (=> d!212265 t!80213))

(declare-fun t!80215 () Bool)

(declare-fun tb!52697 () Bool)

(assert (=> (and b!604083 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 token!491)))) t!80215) tb!52697))

(declare-fun result!59290 () Bool)

(assert (= result!59290 result!59130))

(assert (=> d!212097 t!80215))

(assert (=> b!603039 t!80215))

(declare-fun tp!187765 () Bool)

(declare-fun b_and!59697 () Bool)

(assert (=> b!604083 (= tp!187765 (and (=> t!80211 result!59286) (=> t!80213 result!59288) (=> t!80207 result!59282) (=> t!80215 result!59290) (=> t!80209 result!59284) (=> t!80203 result!59278) (=> t!80205 result!59280) b_and!59697))))

(declare-fun e!366049 () Bool)

(assert (=> b!604083 (= e!366049 (and tp!187762 tp!187765))))

(declare-fun tp!187763 () Bool)

(declare-fun e!366046 () Bool)

(declare-fun b!604082 () Bool)

(assert (=> b!604082 (= e!366046 (and tp!187763 (inv!7658 (tag!1465 (h!11437 (t!80047 (t!80047 rules!3103))))) (inv!7662 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) e!366049))))

(declare-fun b!604081 () Bool)

(declare-fun e!366047 () Bool)

(declare-fun tp!187764 () Bool)

(assert (=> b!604081 (= e!366047 (and e!366046 tp!187764))))

(assert (=> b!603210 (= tp!187674 e!366047)))

(assert (= b!604082 b!604083))

(assert (= b!604081 b!604082))

(assert (= (and b!603210 ((_ is Cons!6036) (t!80047 (t!80047 rules!3103)))) b!604081))

(declare-fun m!869679 () Bool)

(assert (=> b!604082 m!869679))

(declare-fun m!869681 () Bool)

(assert (=> b!604082 m!869681))

(declare-fun b!604086 () Bool)

(declare-fun e!366050 () Bool)

(declare-fun tp!187767 () Bool)

(assert (=> b!604086 (= e!366050 tp!187767)))

(declare-fun b!604087 () Bool)

(declare-fun tp!187769 () Bool)

(declare-fun tp!187766 () Bool)

(assert (=> b!604087 (= e!366050 (and tp!187769 tp!187766))))

(assert (=> b!603192 (= tp!187659 e!366050)))

(declare-fun b!604085 () Bool)

(declare-fun tp!187770 () Bool)

(declare-fun tp!187768 () Bool)

(assert (=> b!604085 (= e!366050 (and tp!187770 tp!187768))))

(declare-fun b!604084 () Bool)

(assert (=> b!604084 (= e!366050 tp_is_empty!3429)))

(assert (= (and b!603192 ((_ is ElementMatch!1537) (reg!1866 (regex!1203 (rule!1979 token!491))))) b!604084))

(assert (= (and b!603192 ((_ is Concat!2764) (reg!1866 (regex!1203 (rule!1979 token!491))))) b!604085))

(assert (= (and b!603192 ((_ is Star!1537) (reg!1866 (regex!1203 (rule!1979 token!491))))) b!604086))

(assert (= (and b!603192 ((_ is Union!1537) (reg!1866 (regex!1203 (rule!1979 token!491))))) b!604087))

(declare-fun b!604090 () Bool)

(declare-fun e!366051 () Bool)

(declare-fun tp!187772 () Bool)

(assert (=> b!604090 (= e!366051 tp!187772)))

(declare-fun b!604091 () Bool)

(declare-fun tp!187774 () Bool)

(declare-fun tp!187771 () Bool)

(assert (=> b!604091 (= e!366051 (and tp!187774 tp!187771))))

(assert (=> b!603194 (= tp!187661 e!366051)))

(declare-fun b!604089 () Bool)

(declare-fun tp!187775 () Bool)

(declare-fun tp!187773 () Bool)

(assert (=> b!604089 (= e!366051 (and tp!187775 tp!187773))))

(declare-fun b!604088 () Bool)

(assert (=> b!604088 (= e!366051 tp_is_empty!3429)))

(assert (= (and b!603194 ((_ is ElementMatch!1537) (regOne!3587 (regex!1203 (rule!1979 token!491))))) b!604088))

(assert (= (and b!603194 ((_ is Concat!2764) (regOne!3587 (regex!1203 (rule!1979 token!491))))) b!604089))

(assert (= (and b!603194 ((_ is Star!1537) (regOne!3587 (regex!1203 (rule!1979 token!491))))) b!604090))

(assert (= (and b!603194 ((_ is Union!1537) (regOne!3587 (regex!1203 (rule!1979 token!491))))) b!604091))

(declare-fun b!604094 () Bool)

(declare-fun e!366052 () Bool)

(declare-fun tp!187777 () Bool)

(assert (=> b!604094 (= e!366052 tp!187777)))

(declare-fun b!604095 () Bool)

(declare-fun tp!187779 () Bool)

(declare-fun tp!187776 () Bool)

(assert (=> b!604095 (= e!366052 (and tp!187779 tp!187776))))

(assert (=> b!603194 (= tp!187658 e!366052)))

(declare-fun b!604093 () Bool)

(declare-fun tp!187780 () Bool)

(declare-fun tp!187778 () Bool)

(assert (=> b!604093 (= e!366052 (and tp!187780 tp!187778))))

(declare-fun b!604092 () Bool)

(assert (=> b!604092 (= e!366052 tp_is_empty!3429)))

(assert (= (and b!603194 ((_ is ElementMatch!1537) (regTwo!3587 (regex!1203 (rule!1979 token!491))))) b!604092))

(assert (= (and b!603194 ((_ is Concat!2764) (regTwo!3587 (regex!1203 (rule!1979 token!491))))) b!604093))

(assert (= (and b!603194 ((_ is Star!1537) (regTwo!3587 (regex!1203 (rule!1979 token!491))))) b!604094))

(assert (= (and b!603194 ((_ is Union!1537) (regTwo!3587 (regex!1203 (rule!1979 token!491))))) b!604095))

(declare-fun b!604098 () Bool)

(declare-fun e!366053 () Bool)

(declare-fun tp!187782 () Bool)

(assert (=> b!604098 (= e!366053 tp!187782)))

(declare-fun b!604099 () Bool)

(declare-fun tp!187784 () Bool)

(declare-fun tp!187781 () Bool)

(assert (=> b!604099 (= e!366053 (and tp!187784 tp!187781))))

(assert (=> b!603211 (= tp!187673 e!366053)))

(declare-fun b!604097 () Bool)

(declare-fun tp!187785 () Bool)

(declare-fun tp!187783 () Bool)

(assert (=> b!604097 (= e!366053 (and tp!187785 tp!187783))))

(declare-fun b!604096 () Bool)

(assert (=> b!604096 (= e!366053 tp_is_empty!3429)))

(assert (= (and b!603211 ((_ is ElementMatch!1537) (regex!1203 (h!11437 (t!80047 rules!3103))))) b!604096))

(assert (= (and b!603211 ((_ is Concat!2764) (regex!1203 (h!11437 (t!80047 rules!3103))))) b!604097))

(assert (= (and b!603211 ((_ is Star!1537) (regex!1203 (h!11437 (t!80047 rules!3103))))) b!604098))

(assert (= (and b!603211 ((_ is Union!1537) (regex!1203 (h!11437 (t!80047 rules!3103))))) b!604099))

(declare-fun tp!187787 () Bool)

(declare-fun tp!187786 () Bool)

(declare-fun b!604100 () Bool)

(declare-fun e!366055 () Bool)

(assert (=> b!604100 (= e!366055 (and (inv!7663 (left!4842 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))))) tp!187786 (inv!7663 (right!5172 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))))) tp!187787))))

(declare-fun b!604102 () Bool)

(declare-fun e!366054 () Bool)

(declare-fun tp!187788 () Bool)

(assert (=> b!604102 (= e!366054 tp!187788)))

(declare-fun b!604101 () Bool)

(assert (=> b!604101 (= e!366055 (and (inv!7671 (xs!4557 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))))) e!366054))))

(assert (=> b!603041 (= tp!187641 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491)))) e!366055))))

(assert (= (and b!603041 ((_ is Node!1920) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))))) b!604100))

(assert (= b!604101 b!604102))

(assert (= (and b!603041 ((_ is Leaf!3029) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (value!39152 token!491))))) b!604101))

(declare-fun m!869683 () Bool)

(assert (=> b!604100 m!869683))

(declare-fun m!869685 () Bool)

(assert (=> b!604100 m!869685))

(declare-fun m!869687 () Bool)

(assert (=> b!604101 m!869687))

(assert (=> b!603041 m!868121))

(declare-fun b!604103 () Bool)

(declare-fun tp!187789 () Bool)

(declare-fun e!366057 () Bool)

(declare-fun tp!187790 () Bool)

(assert (=> b!604103 (= e!366057 (and (inv!7663 (left!4842 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))) tp!187789 (inv!7663 (right!5172 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))) tp!187790))))

(declare-fun b!604105 () Bool)

(declare-fun e!366056 () Bool)

(declare-fun tp!187791 () Bool)

(assert (=> b!604105 (= e!366056 tp!187791)))

(declare-fun b!604104 () Bool)

(assert (=> b!604104 (= e!366057 (and (inv!7671 (xs!4557 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))) e!366056))))

(assert (=> b!602987 (= tp!187640 (and (inv!7663 (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076)))) e!366057))))

(assert (= (and b!602987 ((_ is Node!1920) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))) b!604103))

(assert (= b!604104 b!604105))

(assert (= (and b!602987 ((_ is Leaf!3029) (c!111808 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))))) b!604104))

(declare-fun m!869689 () Bool)

(assert (=> b!604103 m!869689))

(declare-fun m!869691 () Bool)

(assert (=> b!604103 m!869691))

(declare-fun m!869693 () Bool)

(assert (=> b!604104 m!869693))

(assert (=> b!602987 m!868065))

(declare-fun b!604106 () Bool)

(declare-fun e!366059 () Bool)

(declare-fun tp!187792 () Bool)

(assert (=> b!604106 (= e!366059 (and tp_is_empty!3429 tp!187792))))

(assert (=> b!603173 (= tp!187646 e!366059)))

(assert (= (and b!603173 ((_ is Cons!6034) (t!80045 (t!80045 suffix!1342)))) b!604106))

(declare-fun b!604123 () Bool)

(declare-fun e!366067 () Bool)

(declare-fun tp!187794 () Bool)

(assert (=> b!604123 (= e!366067 tp!187794)))

(declare-fun b!604124 () Bool)

(declare-fun tp!187796 () Bool)

(declare-fun tp!187793 () Bool)

(assert (=> b!604124 (= e!366067 (and tp!187796 tp!187793))))

(assert (=> b!603214 (= tp!187680 e!366067)))

(declare-fun b!604122 () Bool)

(declare-fun tp!187797 () Bool)

(declare-fun tp!187795 () Bool)

(assert (=> b!604122 (= e!366067 (and tp!187797 tp!187795))))

(declare-fun b!604121 () Bool)

(assert (=> b!604121 (= e!366067 tp_is_empty!3429)))

(assert (= (and b!603214 ((_ is ElementMatch!1537) (regOne!3586 (regex!1203 (h!11437 rules!3103))))) b!604121))

(assert (= (and b!603214 ((_ is Concat!2764) (regOne!3586 (regex!1203 (h!11437 rules!3103))))) b!604122))

(assert (= (and b!603214 ((_ is Star!1537) (regOne!3586 (regex!1203 (h!11437 rules!3103))))) b!604123))

(assert (= (and b!603214 ((_ is Union!1537) (regOne!3586 (regex!1203 (h!11437 rules!3103))))) b!604124))

(declare-fun b!604127 () Bool)

(declare-fun e!366068 () Bool)

(declare-fun tp!187799 () Bool)

(assert (=> b!604127 (= e!366068 tp!187799)))

(declare-fun b!604128 () Bool)

(declare-fun tp!187801 () Bool)

(declare-fun tp!187798 () Bool)

(assert (=> b!604128 (= e!366068 (and tp!187801 tp!187798))))

(assert (=> b!603214 (= tp!187678 e!366068)))

(declare-fun b!604126 () Bool)

(declare-fun tp!187802 () Bool)

(declare-fun tp!187800 () Bool)

(assert (=> b!604126 (= e!366068 (and tp!187802 tp!187800))))

(declare-fun b!604125 () Bool)

(assert (=> b!604125 (= e!366068 tp_is_empty!3429)))

(assert (= (and b!603214 ((_ is ElementMatch!1537) (regTwo!3586 (regex!1203 (h!11437 rules!3103))))) b!604125))

(assert (= (and b!603214 ((_ is Concat!2764) (regTwo!3586 (regex!1203 (h!11437 rules!3103))))) b!604126))

(assert (= (and b!603214 ((_ is Star!1537) (regTwo!3586 (regex!1203 (h!11437 rules!3103))))) b!604127))

(assert (= (and b!603214 ((_ is Union!1537) (regTwo!3586 (regex!1203 (h!11437 rules!3103))))) b!604128))

(declare-fun b_lambda!23863 () Bool)

(assert (= b_lambda!23799 (or (and b!602830 b_free!17175 (= (toChars!1961 (transformation!1203 (rule!1979 token!491))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) (and b!602815 b_free!17179 (= (toChars!1961 (transformation!1203 (h!11437 rules!3103))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) (and b!603212 b_free!17183 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) (and b!604083 b_free!17191 (= (toChars!1961 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toChars!1961 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) b_lambda!23863)))

(declare-fun b_lambda!23865 () Bool)

(assert (= b_lambda!23833 (or d!212023 b_lambda!23865)))

(declare-fun bs!71160 () Bool)

(declare-fun d!212767 () Bool)

(assert (= bs!71160 (and d!212767 d!212023)))

(assert (=> bs!71160 (= (dynLambda!3493 lambda!16071 lt!257076) (= (list!2532 (dynLambda!3486 (toChars!1961 (transformation!1203 (rule!1979 token!491))) (dynLambda!3487 (toValue!2102 (transformation!1203 (rule!1979 token!491))) lt!257076))) (list!2532 lt!257076)))))

(declare-fun b_lambda!23869 () Bool)

(assert (=> (not b_lambda!23869) (not bs!71160)))

(assert (=> bs!71160 t!80057))

(declare-fun b_and!59699 () Bool)

(assert (= b_and!59677 (and (=> t!80057 result!59118) b_and!59699)))

(assert (=> bs!71160 t!80059))

(declare-fun b_and!59701 () Bool)

(assert (= b_and!59679 (and (=> t!80059 result!59122) b_and!59701)))

(assert (=> bs!71160 t!80085))

(declare-fun b_and!59703 () Bool)

(assert (= b_and!59681 (and (=> t!80085 result!59156) b_and!59703)))

(assert (=> bs!71160 t!80211))

(declare-fun b_and!59705 () Bool)

(assert (= b_and!59697 (and (=> t!80211 result!59286) b_and!59705)))

(declare-fun b_lambda!23871 () Bool)

(assert (=> (not b_lambda!23871) (not bs!71160)))

(assert (=> bs!71160 t!80061))

(declare-fun b_and!59707 () Bool)

(assert (= b_and!59689 (and (=> t!80061 result!59124) b_and!59707)))

(assert (=> bs!71160 t!80063))

(declare-fun b_and!59709 () Bool)

(assert (= b_and!59691 (and (=> t!80063 result!59128) b_and!59709)))

(assert (=> bs!71160 t!80081))

(declare-fun b_and!59711 () Bool)

(assert (= b_and!59693 (and (=> t!80081 result!59152) b_and!59711)))

(assert (=> bs!71160 t!80195))

(declare-fun b_and!59713 () Bool)

(assert (= b_and!59695 (and (=> t!80195 result!59270) b_and!59713)))

(assert (=> bs!71160 m!868071))

(assert (=> bs!71160 m!868073))

(assert (=> bs!71160 m!868075))

(assert (=> bs!71160 m!868077))

(assert (=> bs!71160 m!868073))

(assert (=> bs!71160 m!868077))

(assert (=> d!212249 d!212767))

(declare-fun b_lambda!23867 () Bool)

(assert (= b_lambda!23801 (or (and b!602830 b_free!17173 (= (toValue!2102 (transformation!1203 (rule!1979 token!491))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) (and b!602815 b_free!17177 (= (toValue!2102 (transformation!1203 (h!11437 rules!3103))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) (and b!603212 b_free!17181 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 rules!3103)))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) (and b!604083 b_free!17189 (= (toValue!2102 (transformation!1203 (h!11437 (t!80047 (t!80047 rules!3103))))) (toValue!2102 (transformation!1203 (rule!1979 (_1!3720 (v!16450 lt!257061))))))) b_lambda!23867)))

(check-sat (not b!603490) (not b!603950) (not d!212703) (not b!603581) (not b!603918) (not b_lambda!23855) (not d!212689) (not d!212257) (not b!603450) (not b!603562) b_and!59711 (not b!603486) (not b!603650) (not tb!52619) (not b!604065) (not d!212737) (not b!603371) (not b!603683) (not b_lambda!23865) (not b!604064) (not b!603960) (not tb!52607) b_and!59701 (not b!603931) (not b!603041) (not bs!71160) (not b!603531) (not b!603935) (not b!603623) (not bm!40578) (not d!212385) (not b!603611) (not b!603499) (not b!604082) (not b!603959) (not bm!40625) (not d!212535) (not d!212541) (not b!603607) (not d!212527) (not b_lambda!23813) (not b!604123) (not b!604050) (not b!603496) (not b!603301) (not b!603939) (not d!212453) (not b!603480) (not b!604104) (not d!212733) (not b!603983) (not b!603945) (not d!212699) b_and!59707 (not b!603614) (not b!603582) (not b!603441) (not b!603537) (not b!603977) (not b!603300) (not b!603525) (not b!603989) (not b!603489) (not b!604124) (not b!603541) (not b_next!17199) (not bm!40622) (not b!603925) (not d!212271) (not d!212265) (not b!603928) (not b!603973) (not b!603466) (not b!603478) (not d!212293) (not b!603915) b_and!59713 (not b!604080) (not d!212679) (not tb!52661) (not b!604078) (not b!604051) (not b!603985) (not b!603577) (not b!603717) (not b!604075) (not b!603605) (not b!603621) (not bm!40572) (not b!603524) (not d!212495) (not d!212343) (not d!212367) (not bm!40589) (not b!603485) (not b!604090) (not b!603560) (not b!603663) (not b_lambda!23871) (not b!603916) (not d!212437) (not d!212751) (not b!604122) (not b!603578) (not d!212241) (not b!603933) (not b!604103) (not b!603532) (not tb!52667) (not b!603106) (not b!603453) (not b!603974) (not b!603715) (not b!603991) (not b_next!17189) (not b!603618) (not b!603445) (not b!603975) (not b!603563) (not b_next!17191) (not d!212685) (not b!603963) (not b!604036) (not b!603661) (not d!212395) (not d!212537) (not b!603723) (not b_lambda!23869) (not bm!40616) (not b!603551) (not b!603557) (not b!603549) (not b!604128) (not b_lambda!23837) (not b!604053) (not b!603936) (not b!604049) (not b!604071) (not d!212303) (not b!604040) (not b!604093) (not b!604070) (not b!604094) (not b_lambda!23857) (not b_lambda!23867) (not b!603625) (not b!604091) (not bm!40588) (not b!603447) (not d!212345) (not b!603487) (not b!603979) (not b!604001) (not bm!40626) (not b!604097) (not d!212739) (not b!603312) (not d!212707) (not b!603474) (not b!604033) (not d!212363) (not b!603657) (not b_lambda!23815) (not b!603669) (not b!603667) (not b!603513) (not b!603672) (not b!603993) (not d!212525) (not b!604055) (not d!212743) (not d!212691) (not b!603955) (not b!603518) (not b!604101) (not b!603552) (not d!212383) (not b!604085) (not b!603580) (not b!603949) (not b!603369) (not d!212435) (not d!212285) (not bm!40621) (not b!603653) (not d!212433) (not b!603547) (not b!604098) (not b!603990) (not d!212677) (not d!212717) (not b!603671) (not b!603297) (not b!604079) (not b!604102) (not b_next!17205) (not b!603333) (not b!603980) (not d!212279) (not b_lambda!23835) (not d!212697) (not b!603722) b_and!59705 (not b!604031) (not d!212727) (not b!604074) (not b!603472) (not d!212361) (not b!603976) (not tb!52601) (not tb!52595) (not d!212539) (not b!603668) b_and!59703 (not b!604066) (not b!603604) (not b_lambda!23859) (not d!212249) (not bm!40623) (not b!603943) (not b!603681) (not b!604127) (not b!604086) (not d!212305) (not b!603651) (not b!604035) (not b!604073) (not b!603446) (not d!212475) (not b!603554) (not b!603558) (not d!212245) (not b!603539) (not b_lambda!23817) (not b!604106) (not b!603999) (not b!603530) (not d!212759) (not b!603479) (not d!212417) (not b!603703) (not b!603439) (not b!603682) (not b!603526) (not b!604016) (not b_next!17195) (not b!603929) (not b!603972) (not b!604054) (not d!212497) (not b!603528) (not b_lambda!23809) (not d!212397) (not d!212725) (not b!603961) (not d!212419) (not b!603608) (not b!604047) (not b!604105) (not b!604087) (not b_next!17207) (not d!212519) (not b!604032) (not b!603468) (not b!603613) b_and!59709 (not b!603636) (not d!212391) (not d!212745) (not bm!40618) (not b!603947) (not b!603527) (not d!212381) tp_is_empty!3429 (not b_next!17193) (not bm!40576) (not b_lambda!23863) (not b_lambda!23841) (not d!212451) (not d!212701) (not b!603523) (not b!603483) (not b!604077) (not b!603555) (not d!212681) (not b!603553) (not d!212493) (not b!603435) (not bm!40573) (not bm!40627) (not b!603655) (not b!603956) (not b!603464) (not b!603373) (not d!212673) (not d!212329) (not b!603310) (not d!212479) (not b!603534) (not b!604041) (not b!603711) (not d!212263) (not b!603704) (not b!603620) (not tb!52655) (not b!603493) (not b!604068) (not b_lambda!23861) (not d!212481) (not bm!40617) (not b!604095) (not b!604126) (not b_lambda!23839) (not d!212735) (not d!212429) (not b!603953) (not b!603995) (not tb!52613) (not b!603721) (not b!604100) (not d!212441) (not b!603299) (not b!603987) b_and!59699 (not b!603503) (not b!603942) (not b!603988) (not bm!40619) (not b!603616) (not bm!40620) (not b!603598) (not d!212693) (not b_lambda!23843) (not b_lambda!23811) (not d!212675) (not b!604037) (not b!603559) (not b!604081) (not b!604015) (not bm!40577) (not b!603519) (not b!603540) (not b!603946) (not b!604099) (not b!604089) (not b_next!17197) (not b!603994) (not b!603981) (not b!604069) (not b!602987) (not b!603996) (not b!603535) (not d!212247) (not b!603941))
(check-sat b_and!59711 b_and!59701 b_and!59707 (not b_next!17199) b_and!59713 (not b_next!17189) (not b_next!17191) (not b_next!17205) b_and!59705 b_and!59703 (not b_next!17195) (not b_next!17207) b_and!59699 (not b_next!17197) b_and!59709 (not b_next!17193))
