; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400042 () Bool)

(assert start!400042)

(declare-fun b!4191217 () Bool)

(declare-fun b_free!122023 () Bool)

(declare-fun b_next!122727 () Bool)

(assert (=> b!4191217 (= b_free!122023 (not b_next!122727))))

(declare-fun tp!1280622 () Bool)

(declare-fun b_and!328401 () Bool)

(assert (=> b!4191217 (= tp!1280622 b_and!328401)))

(declare-fun b_free!122025 () Bool)

(declare-fun b_next!122729 () Bool)

(assert (=> b!4191217 (= b_free!122025 (not b_next!122729))))

(declare-fun tp!1280616 () Bool)

(declare-fun b_and!328403 () Bool)

(assert (=> b!4191217 (= tp!1280616 b_and!328403)))

(declare-fun b!4191199 () Bool)

(declare-fun b_free!122027 () Bool)

(declare-fun b_next!122731 () Bool)

(assert (=> b!4191199 (= b_free!122027 (not b_next!122731))))

(declare-fun tp!1280626 () Bool)

(declare-fun b_and!328405 () Bool)

(assert (=> b!4191199 (= tp!1280626 b_and!328405)))

(declare-fun b_free!122029 () Bool)

(declare-fun b_next!122733 () Bool)

(assert (=> b!4191199 (= b_free!122029 (not b_next!122733))))

(declare-fun tp!1280623 () Bool)

(declare-fun b_and!328407 () Bool)

(assert (=> b!4191199 (= tp!1280623 b_and!328407)))

(declare-fun b!4191206 () Bool)

(declare-fun b_free!122031 () Bool)

(declare-fun b_next!122735 () Bool)

(assert (=> b!4191206 (= b_free!122031 (not b_next!122735))))

(declare-fun tp!1280619 () Bool)

(declare-fun b_and!328409 () Bool)

(assert (=> b!4191206 (= tp!1280619 b_and!328409)))

(declare-fun b_free!122033 () Bool)

(declare-fun b_next!122737 () Bool)

(assert (=> b!4191206 (= b_free!122033 (not b_next!122737))))

(declare-fun tp!1280628 () Bool)

(declare-fun b_and!328411 () Bool)

(assert (=> b!4191206 (= tp!1280628 b_and!328411)))

(declare-fun e!2601755 () Bool)

(declare-fun tp!1280618 () Bool)

(declare-fun b!4191189 () Bool)

(declare-datatypes ((List!46151 0))(
  ( (Nil!46027) (Cons!46027 (h!51447 (_ BitVec 16)) (t!345986 List!46151)) )
))
(declare-datatypes ((TokenValue!7902 0))(
  ( (FloatLiteralValue!15804 (text!55759 List!46151)) (TokenValueExt!7901 (__x!28025 Int)) (Broken!39510 (value!239158 List!46151)) (Object!8025) (End!7902) (Def!7902) (Underscore!7902) (Match!7902) (Else!7902) (Error!7902) (Case!7902) (If!7902) (Extends!7902) (Abstract!7902) (Class!7902) (Val!7902) (DelimiterValue!15804 (del!7962 List!46151)) (KeywordValue!7908 (value!239159 List!46151)) (CommentValue!15804 (value!239160 List!46151)) (WhitespaceValue!15804 (value!239161 List!46151)) (IndentationValue!7902 (value!239162 List!46151)) (String!53375) (Int32!7902) (Broken!39511 (value!239163 List!46151)) (Boolean!7903) (Unit!65106) (OperatorValue!7905 (op!7962 List!46151)) (IdentifierValue!15804 (value!239164 List!46151)) (IdentifierValue!15805 (value!239165 List!46151)) (WhitespaceValue!15805 (value!239166 List!46151)) (True!15804) (False!15804) (Broken!39512 (value!239167 List!46151)) (Broken!39513 (value!239168 List!46151)) (True!15805) (RightBrace!7902) (RightBracket!7902) (Colon!7902) (Null!7902) (Comma!7902) (LeftBracket!7902) (False!15805) (LeftBrace!7902) (ImaginaryLiteralValue!7902 (text!55760 List!46151)) (StringLiteralValue!23706 (value!239169 List!46151)) (EOFValue!7902 (value!239170 List!46151)) (IdentValue!7902 (value!239171 List!46151)) (DelimiterValue!15805 (value!239172 List!46151)) (DedentValue!7902 (value!239173 List!46151)) (NewLineValue!7902 (value!239174 List!46151)) (IntegerValue!23706 (value!239175 (_ BitVec 32)) (text!55761 List!46151)) (IntegerValue!23707 (value!239176 Int) (text!55762 List!46151)) (Times!7902) (Or!7902) (Equal!7902) (Minus!7902) (Broken!39514 (value!239177 List!46151)) (And!7902) (Div!7902) (LessEqual!7902) (Mod!7902) (Concat!20479) (Not!7902) (Plus!7902) (SpaceValue!7902 (value!239178 List!46151)) (IntegerValue!23708 (value!239179 Int) (text!55763 List!46151)) (StringLiteralValue!23707 (text!55764 List!46151)) (FloatLiteralValue!15805 (text!55765 List!46151)) (BytesLiteralValue!7902 (value!239180 List!46151)) (CommentValue!15805 (value!239181 List!46151)) (StringLiteralValue!23708 (value!239182 List!46151)) (ErrorTokenValue!7902 (msg!7963 List!46151)) )
))
(declare-datatypes ((String!53376 0))(
  ( (String!53377 (value!239183 String)) )
))
(declare-datatypes ((C!25344 0))(
  ( (C!25345 (val!14834 Int)) )
))
(declare-datatypes ((List!46152 0))(
  ( (Nil!46028) (Cons!46028 (h!51448 C!25344) (t!345987 List!46152)) )
))
(declare-datatypes ((IArray!27771 0))(
  ( (IArray!27772 (innerList!13943 List!46152)) )
))
(declare-datatypes ((Conc!13883 0))(
  ( (Node!13883 (left!34289 Conc!13883) (right!34619 Conc!13883) (csize!27996 Int) (cheight!14094 Int)) (Leaf!21462 (xs!17189 IArray!27771) (csize!27997 Int)) (Empty!13883) )
))
(declare-datatypes ((BalanceConc!27360 0))(
  ( (BalanceConc!27361 (c!715130 Conc!13883)) )
))
(declare-datatypes ((Regex!12577 0))(
  ( (ElementMatch!12577 (c!715131 C!25344)) (Concat!20480 (regOne!25666 Regex!12577) (regTwo!25666 Regex!12577)) (EmptyExpr!12577) (Star!12577 (reg!12906 Regex!12577)) (EmptyLang!12577) (Union!12577 (regOne!25667 Regex!12577) (regTwo!25667 Regex!12577)) )
))
(declare-datatypes ((TokenValueInjection!15232 0))(
  ( (TokenValueInjection!15233 (toValue!10368 Int) (toChars!10227 Int)) )
))
(declare-datatypes ((Rule!15144 0))(
  ( (Rule!15145 (regex!7672 Regex!12577) (tag!8536 String!53376) (isSeparator!7672 Bool) (transformation!7672 TokenValueInjection!15232)) )
))
(declare-fun r!4142 () Rule!15144)

(declare-fun e!2601749 () Bool)

(declare-fun inv!60576 (String!53376) Bool)

(declare-fun inv!60578 (TokenValueInjection!15232) Bool)

(assert (=> b!4191189 (= e!2601755 (and tp!1280618 (inv!60576 (tag!8536 r!4142)) (inv!60578 (transformation!7672 r!4142)) e!2601749))))

(declare-datatypes ((List!46153 0))(
  ( (Nil!46029) (Cons!46029 (h!51449 Rule!15144) (t!345988 List!46153)) )
))
(declare-fun rules!3843 () List!46153)

(declare-fun tp!1280627 () Bool)

(declare-fun b!4191190 () Bool)

(declare-fun e!2601756 () Bool)

(declare-fun e!2601751 () Bool)

(assert (=> b!4191190 (= e!2601756 (and tp!1280627 (inv!60576 (tag!8536 (h!51449 rules!3843))) (inv!60578 (transformation!7672 (h!51449 rules!3843))) e!2601751))))

(declare-fun b!4191191 () Bool)

(declare-fun res!1720032 () Bool)

(declare-fun e!2601757 () Bool)

(assert (=> b!4191191 (=> res!1720032 e!2601757)))

(declare-fun lt!1492755 () Int)

(declare-fun lt!1492762 () List!46152)

(declare-fun size!33815 (List!46152) Int)

(assert (=> b!4191191 (= res!1720032 (<= lt!1492755 (size!33815 lt!1492762)))))

(declare-fun b!4191192 () Bool)

(declare-fun res!1720035 () Bool)

(declare-fun e!2601754 () Bool)

(assert (=> b!4191192 (=> (not res!1720035) (not e!2601754))))

(declare-fun rBis!167 () Rule!15144)

(declare-fun contains!9481 (List!46153 Rule!15144) Bool)

(assert (=> b!4191192 (= res!1720035 (contains!9481 rules!3843 rBis!167))))

(declare-fun b!4191193 () Bool)

(declare-fun res!1720043 () Bool)

(assert (=> b!4191193 (=> (not res!1720043) (not e!2601754))))

(declare-fun p!2959 () List!46152)

(declare-fun matchR!6316 (Regex!12577 List!46152) Bool)

(assert (=> b!4191193 (= res!1720043 (matchR!6316 (regex!7672 r!4142) p!2959))))

(declare-fun b!4191194 () Bool)

(declare-fun e!2601762 () Bool)

(declare-fun tp_is_empty!22117 () Bool)

(declare-fun tp!1280625 () Bool)

(assert (=> b!4191194 (= e!2601762 (and tp_is_empty!22117 tp!1280625))))

(declare-fun b!4191195 () Bool)

(declare-fun e!2601753 () Bool)

(assert (=> b!4191195 (= e!2601754 (not e!2601753))))

(declare-fun res!1720033 () Bool)

(assert (=> b!4191195 (=> res!1720033 e!2601753)))

(declare-datatypes ((LexerInterface!7265 0))(
  ( (LexerInterfaceExt!7262 (__x!28026 Int)) (Lexer!7263) )
))
(declare-fun thiss!25986 () LexerInterface!7265)

(declare-datatypes ((Token!14058 0))(
  ( (Token!14059 (value!239184 TokenValue!7902) (rule!10756 Rule!15144) (size!33816 Int) (originalCharacters!8060 List!46152)) )
))
(declare-datatypes ((tuple2!43826 0))(
  ( (tuple2!43827 (_1!25047 Token!14058) (_2!25047 List!46152)) )
))
(declare-datatypes ((Option!9866 0))(
  ( (None!9865) (Some!9865 (v!40697 tuple2!43826)) )
))
(declare-fun lt!1492760 () Option!9866)

(declare-fun input!3342 () List!46152)

(declare-fun maxPrefixOneRule!3274 (LexerInterface!7265 Rule!15144 List!46152) Option!9866)

(assert (=> b!4191195 (= res!1720033 (not (= (maxPrefixOneRule!3274 thiss!25986 r!4142 input!3342) lt!1492760)))))

(declare-fun lt!1492751 () Int)

(declare-fun lt!1492753 () TokenValue!7902)

(declare-fun getSuffix!2822 (List!46152 List!46152) List!46152)

(assert (=> b!4191195 (= lt!1492760 (Some!9865 (tuple2!43827 (Token!14059 lt!1492753 r!4142 lt!1492751 p!2959) (getSuffix!2822 input!3342 p!2959))))))

(assert (=> b!4191195 (= lt!1492751 (size!33815 p!2959))))

(declare-fun lt!1492757 () BalanceConc!27360)

(declare-fun apply!10637 (TokenValueInjection!15232 BalanceConc!27360) TokenValue!7902)

(assert (=> b!4191195 (= lt!1492753 (apply!10637 (transformation!7672 r!4142) lt!1492757))))

(declare-fun isPrefix!4529 (List!46152 List!46152) Bool)

(assert (=> b!4191195 (isPrefix!4529 input!3342 input!3342)))

(declare-datatypes ((Unit!65107 0))(
  ( (Unit!65108) )
))
(declare-fun lt!1492754 () Unit!65107)

(declare-fun lemmaIsPrefixRefl!2958 (List!46152 List!46152) Unit!65107)

(assert (=> b!4191195 (= lt!1492754 (lemmaIsPrefixRefl!2958 input!3342 input!3342))))

(declare-fun lt!1492756 () Unit!65107)

(declare-fun lemmaSemiInverse!2438 (TokenValueInjection!15232 BalanceConc!27360) Unit!65107)

(assert (=> b!4191195 (= lt!1492756 (lemmaSemiInverse!2438 (transformation!7672 r!4142) lt!1492757))))

(declare-fun seqFromList!5697 (List!46152) BalanceConc!27360)

(assert (=> b!4191195 (= lt!1492757 (seqFromList!5697 p!2959))))

(declare-fun b!4191196 () Bool)

(declare-fun e!2601745 () Bool)

(assert (=> b!4191196 (= e!2601753 e!2601745)))

(declare-fun res!1720036 () Bool)

(assert (=> b!4191196 (=> res!1720036 e!2601745)))

(assert (=> b!4191196 (= res!1720036 (<= lt!1492755 lt!1492751))))

(declare-fun pBis!107 () List!46152)

(assert (=> b!4191196 (= lt!1492755 (size!33815 pBis!107))))

(declare-fun b!4191197 () Bool)

(declare-fun res!1720034 () Bool)

(assert (=> b!4191197 (=> (not res!1720034) (not e!2601754))))

(declare-fun isEmpty!27250 (List!46153) Bool)

(assert (=> b!4191197 (= res!1720034 (not (isEmpty!27250 rules!3843)))))

(declare-fun b!4191198 () Bool)

(declare-fun e!2601761 () Bool)

(assert (=> b!4191198 (= e!2601745 e!2601761)))

(declare-fun res!1720046 () Bool)

(assert (=> b!4191198 (=> res!1720046 e!2601761)))

(declare-fun lt!1492748 () Option!9866)

(declare-fun isEmpty!27251 (Option!9866) Bool)

(assert (=> b!4191198 (= res!1720046 (isEmpty!27251 lt!1492748))))

(assert (=> b!4191198 (= lt!1492748 (maxPrefixOneRule!3274 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1492759 () Unit!65107)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2396 (LexerInterface!7265 Rule!15144 List!46153) Unit!65107)

(assert (=> b!4191198 (= lt!1492759 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2396 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4191198 (<= lt!1492755 (size!33815 input!3342))))

(declare-fun lt!1492758 () Unit!65107)

(declare-fun lemmaIsPrefixThenSmallerEqSize!559 (List!46152 List!46152) Unit!65107)

(assert (=> b!4191198 (= lt!1492758 (lemmaIsPrefixThenSmallerEqSize!559 pBis!107 input!3342))))

(declare-fun e!2601746 () Bool)

(assert (=> b!4191199 (= e!2601746 (and tp!1280626 tp!1280623))))

(declare-fun b!4191200 () Bool)

(declare-fun lt!1492750 () tuple2!43826)

(assert (=> b!4191200 (= e!2601757 (= lt!1492748 (Some!9865 (tuple2!43827 (_1!25047 lt!1492750) (_2!25047 lt!1492750)))))))

(declare-fun b!4191201 () Bool)

(declare-fun res!1720042 () Bool)

(assert (=> b!4191201 (=> (not res!1720042) (not e!2601754))))

(declare-fun validRegex!5694 (Regex!12577) Bool)

(assert (=> b!4191201 (= res!1720042 (validRegex!5694 (regex!7672 r!4142)))))

(declare-fun b!4191202 () Bool)

(assert (=> b!4191202 (= e!2601761 e!2601757)))

(declare-fun res!1720037 () Bool)

(assert (=> b!4191202 (=> res!1720037 e!2601757)))

(assert (=> b!4191202 (= res!1720037 (= lt!1492762 pBis!107))))

(declare-fun lt!1492761 () List!46152)

(assert (=> b!4191202 (isPrefix!4529 lt!1492762 lt!1492761)))

(declare-fun ++!11744 (List!46152 List!46152) List!46152)

(assert (=> b!4191202 (= lt!1492761 (++!11744 lt!1492762 (_2!25047 lt!1492750)))))

(declare-fun lt!1492752 () Unit!65107)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3026 (List!46152 List!46152) Unit!65107)

(assert (=> b!4191202 (= lt!1492752 (lemmaConcatTwoListThenFirstIsPrefix!3026 lt!1492762 (_2!25047 lt!1492750)))))

(declare-fun lt!1492749 () BalanceConc!27360)

(declare-fun list!16632 (BalanceConc!27360) List!46152)

(assert (=> b!4191202 (= lt!1492762 (list!16632 lt!1492749))))

(declare-fun charsOf!5107 (Token!14058) BalanceConc!27360)

(assert (=> b!4191202 (= lt!1492749 (charsOf!5107 (_1!25047 lt!1492750)))))

(declare-fun get!14967 (Option!9866) tuple2!43826)

(assert (=> b!4191202 (= lt!1492750 (get!14967 lt!1492748))))

(declare-fun b!4191203 () Bool)

(declare-fun res!1720039 () Bool)

(assert (=> b!4191203 (=> res!1720039 e!2601757)))

(assert (=> b!4191203 (= res!1720039 (not (isPrefix!4529 lt!1492762 input!3342)))))

(declare-fun b!4191204 () Bool)

(declare-fun res!1720044 () Bool)

(assert (=> b!4191204 (=> res!1720044 e!2601757)))

(assert (=> b!4191204 (= res!1720044 (not (validRegex!5694 (regex!7672 rBis!167))))))

(declare-fun res!1720040 () Bool)

(assert (=> start!400042 (=> (not res!1720040) (not e!2601754))))

(get-info :version)

(assert (=> start!400042 (= res!1720040 ((_ is Lexer!7263) thiss!25986))))

(assert (=> start!400042 e!2601754))

(assert (=> start!400042 true))

(declare-fun e!2601759 () Bool)

(assert (=> start!400042 e!2601759))

(assert (=> start!400042 e!2601755))

(declare-fun e!2601750 () Bool)

(assert (=> start!400042 e!2601750))

(declare-fun e!2601758 () Bool)

(assert (=> start!400042 e!2601758))

(declare-fun e!2601747 () Bool)

(assert (=> start!400042 e!2601747))

(assert (=> start!400042 e!2601762))

(declare-fun b!4191205 () Bool)

(declare-fun tp!1280617 () Bool)

(assert (=> b!4191205 (= e!2601747 (and tp_is_empty!22117 tp!1280617))))

(assert (=> b!4191206 (= e!2601749 (and tp!1280619 tp!1280628))))

(declare-fun b!4191207 () Bool)

(declare-fun res!1720051 () Bool)

(assert (=> b!4191207 (=> res!1720051 e!2601757)))

(assert (=> b!4191207 (= res!1720051 (not (= lt!1492761 input!3342)))))

(declare-fun b!4191208 () Bool)

(declare-fun res!1720050 () Bool)

(assert (=> b!4191208 (=> (not res!1720050) (not e!2601754))))

(declare-fun rulesInvariant!6478 (LexerInterface!7265 List!46153) Bool)

(assert (=> b!4191208 (= res!1720050 (rulesInvariant!6478 thiss!25986 rules!3843))))

(declare-fun b!4191209 () Bool)

(declare-fun tp!1280621 () Bool)

(assert (=> b!4191209 (= e!2601758 (and tp_is_empty!22117 tp!1280621))))

(declare-fun b!4191210 () Bool)

(declare-fun res!1720045 () Bool)

(assert (=> b!4191210 (=> (not res!1720045) (not e!2601754))))

(assert (=> b!4191210 (= res!1720045 (isPrefix!4529 pBis!107 input!3342))))

(declare-fun b!4191211 () Bool)

(declare-fun res!1720052 () Bool)

(assert (=> b!4191211 (=> res!1720052 e!2601757)))

(assert (=> b!4191211 (= res!1720052 (not (matchR!6316 (regex!7672 rBis!167) lt!1492762)))))

(declare-fun b!4191212 () Bool)

(declare-fun res!1720048 () Bool)

(assert (=> b!4191212 (=> (not res!1720048) (not e!2601754))))

(declare-fun ruleValid!3390 (LexerInterface!7265 Rule!15144) Bool)

(assert (=> b!4191212 (= res!1720048 (ruleValid!3390 thiss!25986 r!4142))))

(declare-fun b!4191213 () Bool)

(declare-fun res!1720038 () Bool)

(assert (=> b!4191213 (=> res!1720038 e!2601745)))

(assert (=> b!4191213 (= res!1720038 (not (ruleValid!3390 thiss!25986 rBis!167)))))

(declare-fun b!4191214 () Bool)

(declare-fun res!1720047 () Bool)

(assert (=> b!4191214 (=> (not res!1720047) (not e!2601754))))

(assert (=> b!4191214 (= res!1720047 (isPrefix!4529 p!2959 input!3342))))

(declare-fun b!4191215 () Bool)

(declare-fun res!1720031 () Bool)

(assert (=> b!4191215 (=> res!1720031 e!2601745)))

(declare-fun maxPrefix!4313 (LexerInterface!7265 List!46153 List!46152) Option!9866)

(assert (=> b!4191215 (= res!1720031 (not (= (maxPrefix!4313 thiss!25986 rules!3843 input!3342) lt!1492760)))))

(declare-fun tp!1280620 () Bool)

(declare-fun b!4191216 () Bool)

(assert (=> b!4191216 (= e!2601759 (and tp!1280620 (inv!60576 (tag!8536 rBis!167)) (inv!60578 (transformation!7672 rBis!167)) e!2601746))))

(assert (=> b!4191217 (= e!2601751 (and tp!1280622 tp!1280616))))

(declare-fun b!4191218 () Bool)

(declare-fun tp!1280624 () Bool)

(assert (=> b!4191218 (= e!2601750 (and e!2601756 tp!1280624))))

(declare-fun b!4191219 () Bool)

(declare-fun res!1720049 () Bool)

(assert (=> b!4191219 (=> res!1720049 e!2601757)))

(declare-fun size!33817 (BalanceConc!27360) Int)

(assert (=> b!4191219 (= res!1720049 (>= (size!33817 lt!1492749) lt!1492755))))

(declare-fun b!4191220 () Bool)

(declare-fun res!1720041 () Bool)

(assert (=> b!4191220 (=> (not res!1720041) (not e!2601754))))

(assert (=> b!4191220 (= res!1720041 (contains!9481 rules!3843 r!4142))))

(assert (= (and start!400042 res!1720040) b!4191214))

(assert (= (and b!4191214 res!1720047) b!4191210))

(assert (= (and b!4191210 res!1720045) b!4191197))

(assert (= (and b!4191197 res!1720034) b!4191208))

(assert (= (and b!4191208 res!1720050) b!4191220))

(assert (= (and b!4191220 res!1720041) b!4191192))

(assert (= (and b!4191192 res!1720035) b!4191201))

(assert (= (and b!4191201 res!1720042) b!4191193))

(assert (= (and b!4191193 res!1720043) b!4191212))

(assert (= (and b!4191212 res!1720048) b!4191195))

(assert (= (and b!4191195 (not res!1720033)) b!4191196))

(assert (= (and b!4191196 (not res!1720036)) b!4191213))

(assert (= (and b!4191213 (not res!1720038)) b!4191215))

(assert (= (and b!4191215 (not res!1720031)) b!4191198))

(assert (= (and b!4191198 (not res!1720046)) b!4191202))

(assert (= (and b!4191202 (not res!1720037)) b!4191219))

(assert (= (and b!4191219 (not res!1720049)) b!4191203))

(assert (= (and b!4191203 (not res!1720039)) b!4191207))

(assert (= (and b!4191207 (not res!1720051)) b!4191191))

(assert (= (and b!4191191 (not res!1720032)) b!4191204))

(assert (= (and b!4191204 (not res!1720044)) b!4191211))

(assert (= (and b!4191211 (not res!1720052)) b!4191200))

(assert (= b!4191216 b!4191199))

(assert (= start!400042 b!4191216))

(assert (= b!4191189 b!4191206))

(assert (= start!400042 b!4191189))

(assert (= b!4191190 b!4191217))

(assert (= b!4191218 b!4191190))

(assert (= (and start!400042 ((_ is Cons!46029) rules!3843)) b!4191218))

(assert (= (and start!400042 ((_ is Cons!46028) input!3342)) b!4191209))

(assert (= (and start!400042 ((_ is Cons!46028) pBis!107)) b!4191205))

(assert (= (and start!400042 ((_ is Cons!46028) p!2959)) b!4191194))

(declare-fun m!4779915 () Bool)

(assert (=> b!4191195 m!4779915))

(declare-fun m!4779917 () Bool)

(assert (=> b!4191195 m!4779917))

(declare-fun m!4779919 () Bool)

(assert (=> b!4191195 m!4779919))

(declare-fun m!4779921 () Bool)

(assert (=> b!4191195 m!4779921))

(declare-fun m!4779923 () Bool)

(assert (=> b!4191195 m!4779923))

(declare-fun m!4779925 () Bool)

(assert (=> b!4191195 m!4779925))

(declare-fun m!4779927 () Bool)

(assert (=> b!4191195 m!4779927))

(declare-fun m!4779929 () Bool)

(assert (=> b!4191195 m!4779929))

(declare-fun m!4779931 () Bool)

(assert (=> b!4191219 m!4779931))

(declare-fun m!4779933 () Bool)

(assert (=> b!4191197 m!4779933))

(declare-fun m!4779935 () Bool)

(assert (=> b!4191202 m!4779935))

(declare-fun m!4779937 () Bool)

(assert (=> b!4191202 m!4779937))

(declare-fun m!4779939 () Bool)

(assert (=> b!4191202 m!4779939))

(declare-fun m!4779941 () Bool)

(assert (=> b!4191202 m!4779941))

(declare-fun m!4779943 () Bool)

(assert (=> b!4191202 m!4779943))

(declare-fun m!4779945 () Bool)

(assert (=> b!4191202 m!4779945))

(declare-fun m!4779947 () Bool)

(assert (=> b!4191213 m!4779947))

(declare-fun m!4779949 () Bool)

(assert (=> b!4191216 m!4779949))

(declare-fun m!4779951 () Bool)

(assert (=> b!4191216 m!4779951))

(declare-fun m!4779953 () Bool)

(assert (=> b!4191191 m!4779953))

(declare-fun m!4779955 () Bool)

(assert (=> b!4191215 m!4779955))

(declare-fun m!4779957 () Bool)

(assert (=> b!4191211 m!4779957))

(declare-fun m!4779959 () Bool)

(assert (=> b!4191189 m!4779959))

(declare-fun m!4779961 () Bool)

(assert (=> b!4191189 m!4779961))

(declare-fun m!4779963 () Bool)

(assert (=> b!4191220 m!4779963))

(declare-fun m!4779965 () Bool)

(assert (=> b!4191212 m!4779965))

(declare-fun m!4779967 () Bool)

(assert (=> b!4191190 m!4779967))

(declare-fun m!4779969 () Bool)

(assert (=> b!4191190 m!4779969))

(declare-fun m!4779971 () Bool)

(assert (=> b!4191196 m!4779971))

(declare-fun m!4779973 () Bool)

(assert (=> b!4191203 m!4779973))

(declare-fun m!4779975 () Bool)

(assert (=> b!4191208 m!4779975))

(declare-fun m!4779977 () Bool)

(assert (=> b!4191204 m!4779977))

(declare-fun m!4779979 () Bool)

(assert (=> b!4191193 m!4779979))

(declare-fun m!4779981 () Bool)

(assert (=> b!4191198 m!4779981))

(declare-fun m!4779983 () Bool)

(assert (=> b!4191198 m!4779983))

(declare-fun m!4779985 () Bool)

(assert (=> b!4191198 m!4779985))

(declare-fun m!4779987 () Bool)

(assert (=> b!4191198 m!4779987))

(declare-fun m!4779989 () Bool)

(assert (=> b!4191198 m!4779989))

(declare-fun m!4779991 () Bool)

(assert (=> b!4191192 m!4779991))

(declare-fun m!4779993 () Bool)

(assert (=> b!4191214 m!4779993))

(declare-fun m!4779995 () Bool)

(assert (=> b!4191210 m!4779995))

(declare-fun m!4779997 () Bool)

(assert (=> b!4191201 m!4779997))

(check-sat (not b!4191191) (not b!4191193) (not b!4191190) (not b_next!122729) (not b!4191212) (not b_next!122727) (not b!4191204) (not b!4191216) b_and!328411 (not b!4191195) b_and!328405 (not b!4191198) (not b!4191211) (not b!4191213) tp_is_empty!22117 (not b!4191203) (not b!4191209) (not b!4191205) b_and!328407 (not b!4191194) (not b!4191192) (not b!4191196) (not b!4191189) (not b!4191214) (not b!4191202) b_and!328403 b_and!328409 (not b_next!122731) (not b!4191197) (not b!4191208) (not b_next!122733) (not b!4191220) (not b_next!122735) (not b!4191215) (not b!4191210) (not b!4191218) (not b!4191201) (not b_next!122737) (not b!4191219) b_and!328401)
(check-sat b_and!328407 (not b_next!122729) (not b_next!122727) b_and!328411 (not b_next!122733) (not b_next!122735) b_and!328405 (not b_next!122737) b_and!328401 b_and!328403 b_and!328409 (not b_next!122731))
(get-model)

(declare-fun d!1236257 () Bool)

(declare-fun lt!1492780 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7173 (List!46153) (InoxSet Rule!15144))

(assert (=> d!1236257 (= lt!1492780 (select (content!7173 rules!3843) r!4142))))

(declare-fun e!2601785 () Bool)

(assert (=> d!1236257 (= lt!1492780 e!2601785)))

(declare-fun res!1720085 () Bool)

(assert (=> d!1236257 (=> (not res!1720085) (not e!2601785))))

(assert (=> d!1236257 (= res!1720085 ((_ is Cons!46029) rules!3843))))

(assert (=> d!1236257 (= (contains!9481 rules!3843 r!4142) lt!1492780)))

(declare-fun b!4191254 () Bool)

(declare-fun e!2601786 () Bool)

(assert (=> b!4191254 (= e!2601785 e!2601786)))

(declare-fun res!1720086 () Bool)

(assert (=> b!4191254 (=> res!1720086 e!2601786)))

(assert (=> b!4191254 (= res!1720086 (= (h!51449 rules!3843) r!4142))))

(declare-fun b!4191255 () Bool)

(assert (=> b!4191255 (= e!2601786 (contains!9481 (t!345988 rules!3843) r!4142))))

(assert (= (and d!1236257 res!1720085) b!4191254))

(assert (= (and b!4191254 (not res!1720086)) b!4191255))

(declare-fun m!4780039 () Bool)

(assert (=> d!1236257 m!4780039))

(declare-fun m!4780041 () Bool)

(assert (=> d!1236257 m!4780041))

(declare-fun m!4780043 () Bool)

(assert (=> b!4191255 m!4780043))

(assert (=> b!4191220 d!1236257))

(declare-fun b!4191264 () Bool)

(declare-fun e!2601794 () Bool)

(declare-fun e!2601795 () Bool)

(assert (=> b!4191264 (= e!2601794 e!2601795)))

(declare-fun res!1720095 () Bool)

(assert (=> b!4191264 (=> (not res!1720095) (not e!2601795))))

(assert (=> b!4191264 (= res!1720095 (not ((_ is Nil!46028) input!3342)))))

(declare-fun d!1236259 () Bool)

(declare-fun e!2601793 () Bool)

(assert (=> d!1236259 e!2601793))

(declare-fun res!1720098 () Bool)

(assert (=> d!1236259 (=> res!1720098 e!2601793)))

(declare-fun lt!1492783 () Bool)

(assert (=> d!1236259 (= res!1720098 (not lt!1492783))))

(assert (=> d!1236259 (= lt!1492783 e!2601794)))

(declare-fun res!1720096 () Bool)

(assert (=> d!1236259 (=> res!1720096 e!2601794)))

(assert (=> d!1236259 (= res!1720096 ((_ is Nil!46028) pBis!107))))

(assert (=> d!1236259 (= (isPrefix!4529 pBis!107 input!3342) lt!1492783)))

(declare-fun b!4191265 () Bool)

(declare-fun res!1720097 () Bool)

(assert (=> b!4191265 (=> (not res!1720097) (not e!2601795))))

(declare-fun head!8896 (List!46152) C!25344)

(assert (=> b!4191265 (= res!1720097 (= (head!8896 pBis!107) (head!8896 input!3342)))))

(declare-fun b!4191266 () Bool)

(declare-fun tail!6743 (List!46152) List!46152)

(assert (=> b!4191266 (= e!2601795 (isPrefix!4529 (tail!6743 pBis!107) (tail!6743 input!3342)))))

(declare-fun b!4191267 () Bool)

(assert (=> b!4191267 (= e!2601793 (>= (size!33815 input!3342) (size!33815 pBis!107)))))

(assert (= (and d!1236259 (not res!1720096)) b!4191264))

(assert (= (and b!4191264 res!1720095) b!4191265))

(assert (= (and b!4191265 res!1720097) b!4191266))

(assert (= (and d!1236259 (not res!1720098)) b!4191267))

(declare-fun m!4780045 () Bool)

(assert (=> b!4191265 m!4780045))

(declare-fun m!4780047 () Bool)

(assert (=> b!4191265 m!4780047))

(declare-fun m!4780049 () Bool)

(assert (=> b!4191266 m!4780049))

(declare-fun m!4780051 () Bool)

(assert (=> b!4191266 m!4780051))

(assert (=> b!4191266 m!4780049))

(assert (=> b!4191266 m!4780051))

(declare-fun m!4780053 () Bool)

(assert (=> b!4191266 m!4780053))

(assert (=> b!4191267 m!4779983))

(assert (=> b!4191267 m!4779971))

(assert (=> b!4191210 d!1236259))

(declare-fun d!1236261 () Bool)

(assert (=> d!1236261 (= (inv!60576 (tag!8536 r!4142)) (= (mod (str.len (value!239183 (tag!8536 r!4142))) 2) 0))))

(assert (=> b!4191189 d!1236261))

(declare-fun d!1236263 () Bool)

(declare-fun res!1720101 () Bool)

(declare-fun e!2601798 () Bool)

(assert (=> d!1236263 (=> (not res!1720101) (not e!2601798))))

(declare-fun semiInverseModEq!3327 (Int Int) Bool)

(assert (=> d!1236263 (= res!1720101 (semiInverseModEq!3327 (toChars!10227 (transformation!7672 r!4142)) (toValue!10368 (transformation!7672 r!4142))))))

(assert (=> d!1236263 (= (inv!60578 (transformation!7672 r!4142)) e!2601798)))

(declare-fun b!4191270 () Bool)

(declare-fun equivClasses!3226 (Int Int) Bool)

(assert (=> b!4191270 (= e!2601798 (equivClasses!3226 (toChars!10227 (transformation!7672 r!4142)) (toValue!10368 (transformation!7672 r!4142))))))

(assert (= (and d!1236263 res!1720101) b!4191270))

(declare-fun m!4780055 () Bool)

(assert (=> d!1236263 m!4780055))

(declare-fun m!4780057 () Bool)

(assert (=> b!4191270 m!4780057))

(assert (=> b!4191189 d!1236263))

(declare-fun b!4191338 () Bool)

(declare-fun e!2601831 () Bool)

(declare-fun e!2601830 () Bool)

(assert (=> b!4191338 (= e!2601831 e!2601830)))

(declare-fun c!715147 () Bool)

(assert (=> b!4191338 (= c!715147 ((_ is EmptyLang!12577) (regex!7672 rBis!167)))))

(declare-fun b!4191339 () Bool)

(declare-fun e!2601837 () Bool)

(assert (=> b!4191339 (= e!2601837 (= (head!8896 lt!1492762) (c!715131 (regex!7672 rBis!167))))))

(declare-fun b!4191340 () Bool)

(declare-fun e!2601838 () Bool)

(declare-fun e!2601834 () Bool)

(assert (=> b!4191340 (= e!2601838 e!2601834)))

(declare-fun res!1720146 () Bool)

(assert (=> b!4191340 (=> (not res!1720146) (not e!2601834))))

(declare-fun lt!1492807 () Bool)

(assert (=> b!4191340 (= res!1720146 (not lt!1492807))))

(declare-fun b!4191341 () Bool)

(declare-fun e!2601833 () Bool)

(declare-fun derivativeStep!3808 (Regex!12577 C!25344) Regex!12577)

(assert (=> b!4191341 (= e!2601833 (matchR!6316 (derivativeStep!3808 (regex!7672 rBis!167) (head!8896 lt!1492762)) (tail!6743 lt!1492762)))))

(declare-fun b!4191343 () Bool)

(assert (=> b!4191343 (= e!2601830 (not lt!1492807))))

(declare-fun b!4191344 () Bool)

(declare-fun res!1720141 () Bool)

(assert (=> b!4191344 (=> res!1720141 e!2601838)))

(assert (=> b!4191344 (= res!1720141 e!2601837)))

(declare-fun res!1720147 () Bool)

(assert (=> b!4191344 (=> (not res!1720147) (not e!2601837))))

(assert (=> b!4191344 (= res!1720147 lt!1492807)))

(declare-fun bm!292168 () Bool)

(declare-fun call!292173 () Bool)

(declare-fun isEmpty!27253 (List!46152) Bool)

(assert (=> bm!292168 (= call!292173 (isEmpty!27253 lt!1492762))))

(declare-fun b!4191345 () Bool)

(declare-fun res!1720142 () Bool)

(assert (=> b!4191345 (=> (not res!1720142) (not e!2601837))))

(assert (=> b!4191345 (= res!1720142 (isEmpty!27253 (tail!6743 lt!1492762)))))

(declare-fun b!4191346 () Bool)

(declare-fun nullable!4419 (Regex!12577) Bool)

(assert (=> b!4191346 (= e!2601833 (nullable!4419 (regex!7672 rBis!167)))))

(declare-fun b!4191347 () Bool)

(declare-fun res!1720143 () Bool)

(declare-fun e!2601832 () Bool)

(assert (=> b!4191347 (=> res!1720143 e!2601832)))

(assert (=> b!4191347 (= res!1720143 (not (isEmpty!27253 (tail!6743 lt!1492762))))))

(declare-fun b!4191348 () Bool)

(assert (=> b!4191348 (= e!2601831 (= lt!1492807 call!292173))))

(declare-fun b!4191349 () Bool)

(assert (=> b!4191349 (= e!2601834 e!2601832)))

(declare-fun res!1720144 () Bool)

(assert (=> b!4191349 (=> res!1720144 e!2601832)))

(assert (=> b!4191349 (= res!1720144 call!292173)))

(declare-fun b!4191350 () Bool)

(declare-fun res!1720145 () Bool)

(assert (=> b!4191350 (=> (not res!1720145) (not e!2601837))))

(assert (=> b!4191350 (= res!1720145 (not call!292173))))

(declare-fun b!4191351 () Bool)

(assert (=> b!4191351 (= e!2601832 (not (= (head!8896 lt!1492762) (c!715131 (regex!7672 rBis!167)))))))

(declare-fun d!1236265 () Bool)

(assert (=> d!1236265 e!2601831))

(declare-fun c!715148 () Bool)

(assert (=> d!1236265 (= c!715148 ((_ is EmptyExpr!12577) (regex!7672 rBis!167)))))

(assert (=> d!1236265 (= lt!1492807 e!2601833)))

(declare-fun c!715149 () Bool)

(assert (=> d!1236265 (= c!715149 (isEmpty!27253 lt!1492762))))

(assert (=> d!1236265 (validRegex!5694 (regex!7672 rBis!167))))

(assert (=> d!1236265 (= (matchR!6316 (regex!7672 rBis!167) lt!1492762) lt!1492807)))

(declare-fun b!4191342 () Bool)

(declare-fun res!1720148 () Bool)

(assert (=> b!4191342 (=> res!1720148 e!2601838)))

(assert (=> b!4191342 (= res!1720148 (not ((_ is ElementMatch!12577) (regex!7672 rBis!167))))))

(assert (=> b!4191342 (= e!2601830 e!2601838)))

(assert (= (and d!1236265 c!715149) b!4191346))

(assert (= (and d!1236265 (not c!715149)) b!4191341))

(assert (= (and d!1236265 c!715148) b!4191348))

(assert (= (and d!1236265 (not c!715148)) b!4191338))

(assert (= (and b!4191338 c!715147) b!4191343))

(assert (= (and b!4191338 (not c!715147)) b!4191342))

(assert (= (and b!4191342 (not res!1720148)) b!4191344))

(assert (= (and b!4191344 res!1720147) b!4191350))

(assert (= (and b!4191350 res!1720145) b!4191345))

(assert (= (and b!4191345 res!1720142) b!4191339))

(assert (= (and b!4191344 (not res!1720141)) b!4191340))

(assert (= (and b!4191340 res!1720146) b!4191349))

(assert (= (and b!4191349 (not res!1720144)) b!4191347))

(assert (= (and b!4191347 (not res!1720143)) b!4191351))

(assert (= (or b!4191348 b!4191349 b!4191350) bm!292168))

(declare-fun m!4780105 () Bool)

(assert (=> b!4191345 m!4780105))

(assert (=> b!4191345 m!4780105))

(declare-fun m!4780107 () Bool)

(assert (=> b!4191345 m!4780107))

(declare-fun m!4780109 () Bool)

(assert (=> b!4191341 m!4780109))

(assert (=> b!4191341 m!4780109))

(declare-fun m!4780111 () Bool)

(assert (=> b!4191341 m!4780111))

(assert (=> b!4191341 m!4780105))

(assert (=> b!4191341 m!4780111))

(assert (=> b!4191341 m!4780105))

(declare-fun m!4780113 () Bool)

(assert (=> b!4191341 m!4780113))

(assert (=> b!4191339 m!4780109))

(assert (=> b!4191351 m!4780109))

(declare-fun m!4780115 () Bool)

(assert (=> d!1236265 m!4780115))

(assert (=> d!1236265 m!4779977))

(assert (=> b!4191347 m!4780105))

(assert (=> b!4191347 m!4780105))

(assert (=> b!4191347 m!4780107))

(assert (=> bm!292168 m!4780115))

(declare-fun m!4780117 () Bool)

(assert (=> b!4191346 m!4780117))

(assert (=> b!4191211 d!1236265))

(declare-fun d!1236273 () Bool)

(assert (=> d!1236273 (= (inv!60576 (tag!8536 (h!51449 rules!3843))) (= (mod (str.len (value!239183 (tag!8536 (h!51449 rules!3843)))) 2) 0))))

(assert (=> b!4191190 d!1236273))

(declare-fun d!1236275 () Bool)

(declare-fun res!1720157 () Bool)

(declare-fun e!2601849 () Bool)

(assert (=> d!1236275 (=> (not res!1720157) (not e!2601849))))

(assert (=> d!1236275 (= res!1720157 (semiInverseModEq!3327 (toChars!10227 (transformation!7672 (h!51449 rules!3843))) (toValue!10368 (transformation!7672 (h!51449 rules!3843)))))))

(assert (=> d!1236275 (= (inv!60578 (transformation!7672 (h!51449 rules!3843))) e!2601849)))

(declare-fun b!4191364 () Bool)

(assert (=> b!4191364 (= e!2601849 (equivClasses!3226 (toChars!10227 (transformation!7672 (h!51449 rules!3843))) (toValue!10368 (transformation!7672 (h!51449 rules!3843)))))))

(assert (= (and d!1236275 res!1720157) b!4191364))

(declare-fun m!4780119 () Bool)

(assert (=> d!1236275 m!4780119))

(declare-fun m!4780121 () Bool)

(assert (=> b!4191364 m!4780121))

(assert (=> b!4191190 d!1236275))

(declare-fun d!1236277 () Bool)

(declare-fun lt!1492813 () Int)

(assert (=> d!1236277 (>= lt!1492813 0)))

(declare-fun e!2601865 () Int)

(assert (=> d!1236277 (= lt!1492813 e!2601865)))

(declare-fun c!715158 () Bool)

(assert (=> d!1236277 (= c!715158 ((_ is Nil!46028) pBis!107))))

(assert (=> d!1236277 (= (size!33815 pBis!107) lt!1492813)))

(declare-fun b!4191384 () Bool)

(assert (=> b!4191384 (= e!2601865 0)))

(declare-fun b!4191385 () Bool)

(assert (=> b!4191385 (= e!2601865 (+ 1 (size!33815 (t!345987 pBis!107))))))

(assert (= (and d!1236277 c!715158) b!4191384))

(assert (= (and d!1236277 (not c!715158)) b!4191385))

(declare-fun m!4780135 () Bool)

(assert (=> b!4191385 m!4780135))

(assert (=> b!4191196 d!1236277))

(declare-fun d!1236283 () Bool)

(assert (=> d!1236283 (= (isEmpty!27250 rules!3843) ((_ is Nil!46029) rules!3843))))

(assert (=> b!4191197 d!1236283))

(declare-fun d!1236289 () Bool)

(declare-fun res!1720175 () Bool)

(declare-fun e!2601871 () Bool)

(assert (=> d!1236289 (=> (not res!1720175) (not e!2601871))))

(declare-fun rulesValid!2996 (LexerInterface!7265 List!46153) Bool)

(assert (=> d!1236289 (= res!1720175 (rulesValid!2996 thiss!25986 rules!3843))))

(assert (=> d!1236289 (= (rulesInvariant!6478 thiss!25986 rules!3843) e!2601871)))

(declare-fun b!4191392 () Bool)

(declare-datatypes ((List!46155 0))(
  ( (Nil!46031) (Cons!46031 (h!51451 String!53376) (t!346038 List!46155)) )
))
(declare-fun noDuplicateTag!3157 (LexerInterface!7265 List!46153 List!46155) Bool)

(assert (=> b!4191392 (= e!2601871 (noDuplicateTag!3157 thiss!25986 rules!3843 Nil!46031))))

(assert (= (and d!1236289 res!1720175) b!4191392))

(declare-fun m!4780151 () Bool)

(assert (=> d!1236289 m!4780151))

(declare-fun m!4780153 () Bool)

(assert (=> b!4191392 m!4780153))

(assert (=> b!4191208 d!1236289))

(declare-fun d!1236295 () Bool)

(declare-fun lt!1492825 () Int)

(assert (=> d!1236295 (= lt!1492825 (size!33815 (list!16632 lt!1492749)))))

(declare-fun size!33819 (Conc!13883) Int)

(assert (=> d!1236295 (= lt!1492825 (size!33819 (c!715130 lt!1492749)))))

(assert (=> d!1236295 (= (size!33817 lt!1492749) lt!1492825)))

(declare-fun bs!596635 () Bool)

(assert (= bs!596635 d!1236295))

(assert (=> bs!596635 m!4779945))

(assert (=> bs!596635 m!4779945))

(declare-fun m!4780155 () Bool)

(assert (=> bs!596635 m!4780155))

(declare-fun m!4780157 () Bool)

(assert (=> bs!596635 m!4780157))

(assert (=> b!4191219 d!1236295))

(declare-fun d!1236297 () Bool)

(assert (=> d!1236297 (= (isEmpty!27251 lt!1492748) (not ((_ is Some!9865) lt!1492748)))))

(assert (=> b!4191198 d!1236297))

(declare-fun d!1236299 () Bool)

(assert (=> d!1236299 (ruleValid!3390 thiss!25986 rBis!167)))

(declare-fun lt!1492828 () Unit!65107)

(declare-fun choose!25680 (LexerInterface!7265 Rule!15144 List!46153) Unit!65107)

(assert (=> d!1236299 (= lt!1492828 (choose!25680 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1236299 (contains!9481 rules!3843 rBis!167)))

(assert (=> d!1236299 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2396 thiss!25986 rBis!167 rules!3843) lt!1492828)))

(declare-fun bs!596636 () Bool)

(assert (= bs!596636 d!1236299))

(assert (=> bs!596636 m!4779947))

(declare-fun m!4780159 () Bool)

(assert (=> bs!596636 m!4780159))

(assert (=> bs!596636 m!4779991))

(assert (=> b!4191198 d!1236299))

(declare-fun b!4191411 () Bool)

(declare-fun res!1720190 () Bool)

(declare-fun e!2601882 () Bool)

(assert (=> b!4191411 (=> (not res!1720190) (not e!2601882))))

(declare-fun lt!1492840 () Option!9866)

(assert (=> b!4191411 (= res!1720190 (= (++!11744 (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492840)))) (_2!25047 (get!14967 lt!1492840))) input!3342))))

(declare-fun b!4191412 () Bool)

(declare-fun e!2601883 () Bool)

(assert (=> b!4191412 (= e!2601883 e!2601882)))

(declare-fun res!1720195 () Bool)

(assert (=> b!4191412 (=> (not res!1720195) (not e!2601882))))

(assert (=> b!4191412 (= res!1720195 (matchR!6316 (regex!7672 rBis!167) (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492840))))))))

(declare-fun b!4191413 () Bool)

(declare-fun e!2601880 () Bool)

(declare-datatypes ((tuple2!43830 0))(
  ( (tuple2!43831 (_1!25049 List!46152) (_2!25049 List!46152)) )
))
(declare-fun findLongestMatchInner!1609 (Regex!12577 List!46152 Int List!46152 List!46152 Int) tuple2!43830)

(assert (=> b!4191413 (= e!2601880 (matchR!6316 (regex!7672 rBis!167) (_1!25049 (findLongestMatchInner!1609 (regex!7672 rBis!167) Nil!46028 (size!33815 Nil!46028) input!3342 input!3342 (size!33815 input!3342)))))))

(declare-fun b!4191415 () Bool)

(declare-fun res!1720193 () Bool)

(assert (=> b!4191415 (=> (not res!1720193) (not e!2601882))))

(assert (=> b!4191415 (= res!1720193 (= (value!239184 (_1!25047 (get!14967 lt!1492840))) (apply!10637 (transformation!7672 (rule!10756 (_1!25047 (get!14967 lt!1492840)))) (seqFromList!5697 (originalCharacters!8060 (_1!25047 (get!14967 lt!1492840)))))))))

(declare-fun b!4191416 () Bool)

(declare-fun e!2601881 () Option!9866)

(assert (=> b!4191416 (= e!2601881 None!9865)))

(declare-fun b!4191417 () Bool)

(assert (=> b!4191417 (= e!2601882 (= (size!33816 (_1!25047 (get!14967 lt!1492840))) (size!33815 (originalCharacters!8060 (_1!25047 (get!14967 lt!1492840))))))))

(declare-fun b!4191418 () Bool)

(declare-fun lt!1492843 () tuple2!43830)

(assert (=> b!4191418 (= e!2601881 (Some!9865 (tuple2!43827 (Token!14059 (apply!10637 (transformation!7672 rBis!167) (seqFromList!5697 (_1!25049 lt!1492843))) rBis!167 (size!33817 (seqFromList!5697 (_1!25049 lt!1492843))) (_1!25049 lt!1492843)) (_2!25049 lt!1492843))))))

(declare-fun lt!1492841 () Unit!65107)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1582 (Regex!12577 List!46152) Unit!65107)

(assert (=> b!4191418 (= lt!1492841 (longestMatchIsAcceptedByMatchOrIsEmpty!1582 (regex!7672 rBis!167) input!3342))))

(declare-fun res!1720196 () Bool)

(assert (=> b!4191418 (= res!1720196 (isEmpty!27253 (_1!25049 (findLongestMatchInner!1609 (regex!7672 rBis!167) Nil!46028 (size!33815 Nil!46028) input!3342 input!3342 (size!33815 input!3342)))))))

(assert (=> b!4191418 (=> res!1720196 e!2601880)))

(assert (=> b!4191418 e!2601880))

(declare-fun lt!1492842 () Unit!65107)

(assert (=> b!4191418 (= lt!1492842 lt!1492841)))

(declare-fun lt!1492839 () Unit!65107)

(assert (=> b!4191418 (= lt!1492839 (lemmaSemiInverse!2438 (transformation!7672 rBis!167) (seqFromList!5697 (_1!25049 lt!1492843))))))

(declare-fun b!4191419 () Bool)

(declare-fun res!1720194 () Bool)

(assert (=> b!4191419 (=> (not res!1720194) (not e!2601882))))

(assert (=> b!4191419 (= res!1720194 (< (size!33815 (_2!25047 (get!14967 lt!1492840))) (size!33815 input!3342)))))

(declare-fun b!4191414 () Bool)

(declare-fun res!1720191 () Bool)

(assert (=> b!4191414 (=> (not res!1720191) (not e!2601882))))

(assert (=> b!4191414 (= res!1720191 (= (rule!10756 (_1!25047 (get!14967 lt!1492840))) rBis!167))))

(declare-fun d!1236301 () Bool)

(assert (=> d!1236301 e!2601883))

(declare-fun res!1720192 () Bool)

(assert (=> d!1236301 (=> res!1720192 e!2601883)))

(assert (=> d!1236301 (= res!1720192 (isEmpty!27251 lt!1492840))))

(assert (=> d!1236301 (= lt!1492840 e!2601881)))

(declare-fun c!715162 () Bool)

(assert (=> d!1236301 (= c!715162 (isEmpty!27253 (_1!25049 lt!1492843)))))

(declare-fun findLongestMatch!1522 (Regex!12577 List!46152) tuple2!43830)

(assert (=> d!1236301 (= lt!1492843 (findLongestMatch!1522 (regex!7672 rBis!167) input!3342))))

(assert (=> d!1236301 (ruleValid!3390 thiss!25986 rBis!167)))

(assert (=> d!1236301 (= (maxPrefixOneRule!3274 thiss!25986 rBis!167 input!3342) lt!1492840)))

(assert (= (and d!1236301 c!715162) b!4191416))

(assert (= (and d!1236301 (not c!715162)) b!4191418))

(assert (= (and b!4191418 (not res!1720196)) b!4191413))

(assert (= (and d!1236301 (not res!1720192)) b!4191412))

(assert (= (and b!4191412 res!1720195) b!4191411))

(assert (= (and b!4191411 res!1720190) b!4191419))

(assert (= (and b!4191419 res!1720194) b!4191414))

(assert (= (and b!4191414 res!1720191) b!4191415))

(assert (= (and b!4191415 res!1720193) b!4191417))

(declare-fun m!4780161 () Bool)

(assert (=> b!4191413 m!4780161))

(assert (=> b!4191413 m!4779983))

(assert (=> b!4191413 m!4780161))

(assert (=> b!4191413 m!4779983))

(declare-fun m!4780163 () Bool)

(assert (=> b!4191413 m!4780163))

(declare-fun m!4780165 () Bool)

(assert (=> b!4191413 m!4780165))

(declare-fun m!4780167 () Bool)

(assert (=> b!4191419 m!4780167))

(declare-fun m!4780169 () Bool)

(assert (=> b!4191419 m!4780169))

(assert (=> b!4191419 m!4779983))

(assert (=> b!4191415 m!4780167))

(declare-fun m!4780171 () Bool)

(assert (=> b!4191415 m!4780171))

(assert (=> b!4191415 m!4780171))

(declare-fun m!4780173 () Bool)

(assert (=> b!4191415 m!4780173))

(assert (=> b!4191414 m!4780167))

(assert (=> b!4191417 m!4780167))

(declare-fun m!4780175 () Bool)

(assert (=> b!4191417 m!4780175))

(assert (=> b!4191418 m!4779983))

(assert (=> b!4191418 m!4780161))

(assert (=> b!4191418 m!4779983))

(assert (=> b!4191418 m!4780163))

(declare-fun m!4780177 () Bool)

(assert (=> b!4191418 m!4780177))

(declare-fun m!4780179 () Bool)

(assert (=> b!4191418 m!4780179))

(declare-fun m!4780181 () Bool)

(assert (=> b!4191418 m!4780181))

(declare-fun m!4780183 () Bool)

(assert (=> b!4191418 m!4780183))

(assert (=> b!4191418 m!4780181))

(assert (=> b!4191418 m!4780161))

(assert (=> b!4191418 m!4780181))

(declare-fun m!4780185 () Bool)

(assert (=> b!4191418 m!4780185))

(assert (=> b!4191418 m!4780181))

(declare-fun m!4780187 () Bool)

(assert (=> b!4191418 m!4780187))

(declare-fun m!4780189 () Bool)

(assert (=> d!1236301 m!4780189))

(declare-fun m!4780191 () Bool)

(assert (=> d!1236301 m!4780191))

(declare-fun m!4780193 () Bool)

(assert (=> d!1236301 m!4780193))

(assert (=> d!1236301 m!4779947))

(assert (=> b!4191411 m!4780167))

(declare-fun m!4780195 () Bool)

(assert (=> b!4191411 m!4780195))

(assert (=> b!4191411 m!4780195))

(declare-fun m!4780197 () Bool)

(assert (=> b!4191411 m!4780197))

(assert (=> b!4191411 m!4780197))

(declare-fun m!4780199 () Bool)

(assert (=> b!4191411 m!4780199))

(assert (=> b!4191412 m!4780167))

(assert (=> b!4191412 m!4780195))

(assert (=> b!4191412 m!4780195))

(assert (=> b!4191412 m!4780197))

(assert (=> b!4191412 m!4780197))

(declare-fun m!4780201 () Bool)

(assert (=> b!4191412 m!4780201))

(assert (=> b!4191198 d!1236301))

(declare-fun d!1236303 () Bool)

(assert (=> d!1236303 (<= (size!33815 pBis!107) (size!33815 input!3342))))

(declare-fun lt!1492846 () Unit!65107)

(declare-fun choose!25681 (List!46152 List!46152) Unit!65107)

(assert (=> d!1236303 (= lt!1492846 (choose!25681 pBis!107 input!3342))))

(assert (=> d!1236303 (isPrefix!4529 pBis!107 input!3342)))

(assert (=> d!1236303 (= (lemmaIsPrefixThenSmallerEqSize!559 pBis!107 input!3342) lt!1492846)))

(declare-fun bs!596637 () Bool)

(assert (= bs!596637 d!1236303))

(assert (=> bs!596637 m!4779971))

(assert (=> bs!596637 m!4779983))

(declare-fun m!4780203 () Bool)

(assert (=> bs!596637 m!4780203))

(assert (=> bs!596637 m!4779995))

(assert (=> b!4191198 d!1236303))

(declare-fun d!1236305 () Bool)

(declare-fun lt!1492847 () Int)

(assert (=> d!1236305 (>= lt!1492847 0)))

(declare-fun e!2601884 () Int)

(assert (=> d!1236305 (= lt!1492847 e!2601884)))

(declare-fun c!715163 () Bool)

(assert (=> d!1236305 (= c!715163 ((_ is Nil!46028) input!3342))))

(assert (=> d!1236305 (= (size!33815 input!3342) lt!1492847)))

(declare-fun b!4191420 () Bool)

(assert (=> b!4191420 (= e!2601884 0)))

(declare-fun b!4191421 () Bool)

(assert (=> b!4191421 (= e!2601884 (+ 1 (size!33815 (t!345987 input!3342))))))

(assert (= (and d!1236305 c!715163) b!4191420))

(assert (= (and d!1236305 (not c!715163)) b!4191421))

(declare-fun m!4780205 () Bool)

(assert (=> b!4191421 m!4780205))

(assert (=> b!4191198 d!1236305))

(declare-fun b!4191422 () Bool)

(declare-fun e!2601886 () Bool)

(declare-fun e!2601885 () Bool)

(assert (=> b!4191422 (= e!2601886 e!2601885)))

(declare-fun c!715164 () Bool)

(assert (=> b!4191422 (= c!715164 ((_ is EmptyLang!12577) (regex!7672 r!4142)))))

(declare-fun b!4191423 () Bool)

(declare-fun e!2601890 () Bool)

(assert (=> b!4191423 (= e!2601890 (= (head!8896 p!2959) (c!715131 (regex!7672 r!4142))))))

(declare-fun b!4191424 () Bool)

(declare-fun e!2601891 () Bool)

(declare-fun e!2601889 () Bool)

(assert (=> b!4191424 (= e!2601891 e!2601889)))

(declare-fun res!1720202 () Bool)

(assert (=> b!4191424 (=> (not res!1720202) (not e!2601889))))

(declare-fun lt!1492848 () Bool)

(assert (=> b!4191424 (= res!1720202 (not lt!1492848))))

(declare-fun b!4191425 () Bool)

(declare-fun e!2601888 () Bool)

(assert (=> b!4191425 (= e!2601888 (matchR!6316 (derivativeStep!3808 (regex!7672 r!4142) (head!8896 p!2959)) (tail!6743 p!2959)))))

(declare-fun b!4191427 () Bool)

(assert (=> b!4191427 (= e!2601885 (not lt!1492848))))

(declare-fun b!4191428 () Bool)

(declare-fun res!1720197 () Bool)

(assert (=> b!4191428 (=> res!1720197 e!2601891)))

(assert (=> b!4191428 (= res!1720197 e!2601890)))

(declare-fun res!1720203 () Bool)

(assert (=> b!4191428 (=> (not res!1720203) (not e!2601890))))

(assert (=> b!4191428 (= res!1720203 lt!1492848)))

(declare-fun bm!292178 () Bool)

(declare-fun call!292183 () Bool)

(assert (=> bm!292178 (= call!292183 (isEmpty!27253 p!2959))))

(declare-fun b!4191429 () Bool)

(declare-fun res!1720198 () Bool)

(assert (=> b!4191429 (=> (not res!1720198) (not e!2601890))))

(assert (=> b!4191429 (= res!1720198 (isEmpty!27253 (tail!6743 p!2959)))))

(declare-fun b!4191430 () Bool)

(assert (=> b!4191430 (= e!2601888 (nullable!4419 (regex!7672 r!4142)))))

(declare-fun b!4191431 () Bool)

(declare-fun res!1720199 () Bool)

(declare-fun e!2601887 () Bool)

(assert (=> b!4191431 (=> res!1720199 e!2601887)))

(assert (=> b!4191431 (= res!1720199 (not (isEmpty!27253 (tail!6743 p!2959))))))

(declare-fun b!4191432 () Bool)

(assert (=> b!4191432 (= e!2601886 (= lt!1492848 call!292183))))

(declare-fun b!4191433 () Bool)

(assert (=> b!4191433 (= e!2601889 e!2601887)))

(declare-fun res!1720200 () Bool)

(assert (=> b!4191433 (=> res!1720200 e!2601887)))

(assert (=> b!4191433 (= res!1720200 call!292183)))

(declare-fun b!4191434 () Bool)

(declare-fun res!1720201 () Bool)

(assert (=> b!4191434 (=> (not res!1720201) (not e!2601890))))

(assert (=> b!4191434 (= res!1720201 (not call!292183))))

(declare-fun b!4191435 () Bool)

(assert (=> b!4191435 (= e!2601887 (not (= (head!8896 p!2959) (c!715131 (regex!7672 r!4142)))))))

(declare-fun d!1236307 () Bool)

(assert (=> d!1236307 e!2601886))

(declare-fun c!715165 () Bool)

(assert (=> d!1236307 (= c!715165 ((_ is EmptyExpr!12577) (regex!7672 r!4142)))))

(assert (=> d!1236307 (= lt!1492848 e!2601888)))

(declare-fun c!715166 () Bool)

(assert (=> d!1236307 (= c!715166 (isEmpty!27253 p!2959))))

(assert (=> d!1236307 (validRegex!5694 (regex!7672 r!4142))))

(assert (=> d!1236307 (= (matchR!6316 (regex!7672 r!4142) p!2959) lt!1492848)))

(declare-fun b!4191426 () Bool)

(declare-fun res!1720204 () Bool)

(assert (=> b!4191426 (=> res!1720204 e!2601891)))

(assert (=> b!4191426 (= res!1720204 (not ((_ is ElementMatch!12577) (regex!7672 r!4142))))))

(assert (=> b!4191426 (= e!2601885 e!2601891)))

(assert (= (and d!1236307 c!715166) b!4191430))

(assert (= (and d!1236307 (not c!715166)) b!4191425))

(assert (= (and d!1236307 c!715165) b!4191432))

(assert (= (and d!1236307 (not c!715165)) b!4191422))

(assert (= (and b!4191422 c!715164) b!4191427))

(assert (= (and b!4191422 (not c!715164)) b!4191426))

(assert (= (and b!4191426 (not res!1720204)) b!4191428))

(assert (= (and b!4191428 res!1720203) b!4191434))

(assert (= (and b!4191434 res!1720201) b!4191429))

(assert (= (and b!4191429 res!1720198) b!4191423))

(assert (= (and b!4191428 (not res!1720197)) b!4191424))

(assert (= (and b!4191424 res!1720202) b!4191433))

(assert (= (and b!4191433 (not res!1720200)) b!4191431))

(assert (= (and b!4191431 (not res!1720199)) b!4191435))

(assert (= (or b!4191432 b!4191433 b!4191434) bm!292178))

(declare-fun m!4780207 () Bool)

(assert (=> b!4191429 m!4780207))

(assert (=> b!4191429 m!4780207))

(declare-fun m!4780209 () Bool)

(assert (=> b!4191429 m!4780209))

(declare-fun m!4780211 () Bool)

(assert (=> b!4191425 m!4780211))

(assert (=> b!4191425 m!4780211))

(declare-fun m!4780213 () Bool)

(assert (=> b!4191425 m!4780213))

(assert (=> b!4191425 m!4780207))

(assert (=> b!4191425 m!4780213))

(assert (=> b!4191425 m!4780207))

(declare-fun m!4780215 () Bool)

(assert (=> b!4191425 m!4780215))

(assert (=> b!4191423 m!4780211))

(assert (=> b!4191435 m!4780211))

(declare-fun m!4780217 () Bool)

(assert (=> d!1236307 m!4780217))

(assert (=> d!1236307 m!4779997))

(assert (=> b!4191431 m!4780207))

(assert (=> b!4191431 m!4780207))

(assert (=> b!4191431 m!4780209))

(assert (=> bm!292178 m!4780217))

(declare-fun m!4780219 () Bool)

(assert (=> b!4191430 m!4780219))

(assert (=> b!4191193 d!1236307))

(declare-fun b!4191454 () Bool)

(declare-fun e!2601906 () Bool)

(declare-fun e!2601911 () Bool)

(assert (=> b!4191454 (= e!2601906 e!2601911)))

(declare-fun c!715171 () Bool)

(assert (=> b!4191454 (= c!715171 ((_ is Union!12577) (regex!7672 rBis!167)))))

(declare-fun b!4191455 () Bool)

(declare-fun e!2601907 () Bool)

(declare-fun call!292191 () Bool)

(assert (=> b!4191455 (= e!2601907 call!292191)))

(declare-fun b!4191456 () Bool)

(declare-fun res!1720219 () Bool)

(declare-fun e!2601912 () Bool)

(assert (=> b!4191456 (=> res!1720219 e!2601912)))

(assert (=> b!4191456 (= res!1720219 (not ((_ is Concat!20480) (regex!7672 rBis!167))))))

(assert (=> b!4191456 (= e!2601911 e!2601912)))

(declare-fun b!4191457 () Bool)

(assert (=> b!4191457 (= e!2601906 e!2601907)))

(declare-fun res!1720215 () Bool)

(assert (=> b!4191457 (= res!1720215 (not (nullable!4419 (reg!12906 (regex!7672 rBis!167)))))))

(assert (=> b!4191457 (=> (not res!1720215) (not e!2601907))))

(declare-fun b!4191458 () Bool)

(declare-fun e!2601908 () Bool)

(assert (=> b!4191458 (= e!2601908 e!2601906)))

(declare-fun c!715172 () Bool)

(assert (=> b!4191458 (= c!715172 ((_ is Star!12577) (regex!7672 rBis!167)))))

(declare-fun b!4191459 () Bool)

(declare-fun e!2601910 () Bool)

(assert (=> b!4191459 (= e!2601912 e!2601910)))

(declare-fun res!1720216 () Bool)

(assert (=> b!4191459 (=> (not res!1720216) (not e!2601910))))

(declare-fun call!292192 () Bool)

(assert (=> b!4191459 (= res!1720216 call!292192)))

(declare-fun b!4191460 () Bool)

(declare-fun e!2601909 () Bool)

(declare-fun call!292190 () Bool)

(assert (=> b!4191460 (= e!2601909 call!292190)))

(declare-fun b!4191461 () Bool)

(assert (=> b!4191461 (= e!2601910 call!292190)))

(declare-fun bm!292185 () Bool)

(assert (=> bm!292185 (= call!292191 (validRegex!5694 (ite c!715172 (reg!12906 (regex!7672 rBis!167)) (ite c!715171 (regTwo!25667 (regex!7672 rBis!167)) (regTwo!25666 (regex!7672 rBis!167))))))))

(declare-fun b!4191462 () Bool)

(declare-fun res!1720217 () Bool)

(assert (=> b!4191462 (=> (not res!1720217) (not e!2601909))))

(assert (=> b!4191462 (= res!1720217 call!292192)))

(assert (=> b!4191462 (= e!2601911 e!2601909)))

(declare-fun d!1236309 () Bool)

(declare-fun res!1720218 () Bool)

(assert (=> d!1236309 (=> res!1720218 e!2601908)))

(assert (=> d!1236309 (= res!1720218 ((_ is ElementMatch!12577) (regex!7672 rBis!167)))))

(assert (=> d!1236309 (= (validRegex!5694 (regex!7672 rBis!167)) e!2601908)))

(declare-fun bm!292186 () Bool)

(assert (=> bm!292186 (= call!292190 call!292191)))

(declare-fun bm!292187 () Bool)

(assert (=> bm!292187 (= call!292192 (validRegex!5694 (ite c!715171 (regOne!25667 (regex!7672 rBis!167)) (regOne!25666 (regex!7672 rBis!167)))))))

(assert (= (and d!1236309 (not res!1720218)) b!4191458))

(assert (= (and b!4191458 c!715172) b!4191457))

(assert (= (and b!4191458 (not c!715172)) b!4191454))

(assert (= (and b!4191457 res!1720215) b!4191455))

(assert (= (and b!4191454 c!715171) b!4191462))

(assert (= (and b!4191454 (not c!715171)) b!4191456))

(assert (= (and b!4191462 res!1720217) b!4191460))

(assert (= (and b!4191456 (not res!1720219)) b!4191459))

(assert (= (and b!4191459 res!1720216) b!4191461))

(assert (= (or b!4191460 b!4191461) bm!292186))

(assert (= (or b!4191462 b!4191459) bm!292187))

(assert (= (or b!4191455 bm!292186) bm!292185))

(declare-fun m!4780221 () Bool)

(assert (=> b!4191457 m!4780221))

(declare-fun m!4780223 () Bool)

(assert (=> bm!292185 m!4780223))

(declare-fun m!4780225 () Bool)

(assert (=> bm!292187 m!4780225))

(assert (=> b!4191204 d!1236309))

(declare-fun b!4191481 () Bool)

(declare-fun res!1720237 () Bool)

(declare-fun e!2601919 () Bool)

(assert (=> b!4191481 (=> (not res!1720237) (not e!2601919))))

(declare-fun lt!1492862 () Option!9866)

(assert (=> b!4191481 (= res!1720237 (< (size!33815 (_2!25047 (get!14967 lt!1492862))) (size!33815 input!3342)))))

(declare-fun d!1236311 () Bool)

(declare-fun e!2601920 () Bool)

(assert (=> d!1236311 e!2601920))

(declare-fun res!1720238 () Bool)

(assert (=> d!1236311 (=> res!1720238 e!2601920)))

(assert (=> d!1236311 (= res!1720238 (isEmpty!27251 lt!1492862))))

(declare-fun e!2601921 () Option!9866)

(assert (=> d!1236311 (= lt!1492862 e!2601921)))

(declare-fun c!715175 () Bool)

(assert (=> d!1236311 (= c!715175 (and ((_ is Cons!46029) rules!3843) ((_ is Nil!46029) (t!345988 rules!3843))))))

(declare-fun lt!1492863 () Unit!65107)

(declare-fun lt!1492861 () Unit!65107)

(assert (=> d!1236311 (= lt!1492863 lt!1492861)))

(assert (=> d!1236311 (isPrefix!4529 input!3342 input!3342)))

(assert (=> d!1236311 (= lt!1492861 (lemmaIsPrefixRefl!2958 input!3342 input!3342))))

(declare-fun rulesValidInductive!2834 (LexerInterface!7265 List!46153) Bool)

(assert (=> d!1236311 (rulesValidInductive!2834 thiss!25986 rules!3843)))

(assert (=> d!1236311 (= (maxPrefix!4313 thiss!25986 rules!3843 input!3342) lt!1492862)))

(declare-fun b!4191482 () Bool)

(declare-fun call!292195 () Option!9866)

(assert (=> b!4191482 (= e!2601921 call!292195)))

(declare-fun b!4191483 () Bool)

(declare-fun lt!1492860 () Option!9866)

(declare-fun lt!1492859 () Option!9866)

(assert (=> b!4191483 (= e!2601921 (ite (and ((_ is None!9865) lt!1492860) ((_ is None!9865) lt!1492859)) None!9865 (ite ((_ is None!9865) lt!1492859) lt!1492860 (ite ((_ is None!9865) lt!1492860) lt!1492859 (ite (>= (size!33816 (_1!25047 (v!40697 lt!1492860))) (size!33816 (_1!25047 (v!40697 lt!1492859)))) lt!1492860 lt!1492859)))))))

(assert (=> b!4191483 (= lt!1492860 call!292195)))

(assert (=> b!4191483 (= lt!1492859 (maxPrefix!4313 thiss!25986 (t!345988 rules!3843) input!3342))))

(declare-fun b!4191484 () Bool)

(declare-fun res!1720240 () Bool)

(assert (=> b!4191484 (=> (not res!1720240) (not e!2601919))))

(assert (=> b!4191484 (= res!1720240 (= (++!11744 (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492862)))) (_2!25047 (get!14967 lt!1492862))) input!3342))))

(declare-fun b!4191485 () Bool)

(assert (=> b!4191485 (= e!2601919 (contains!9481 rules!3843 (rule!10756 (_1!25047 (get!14967 lt!1492862)))))))

(declare-fun b!4191486 () Bool)

(declare-fun res!1720236 () Bool)

(assert (=> b!4191486 (=> (not res!1720236) (not e!2601919))))

(assert (=> b!4191486 (= res!1720236 (= (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492862)))) (originalCharacters!8060 (_1!25047 (get!14967 lt!1492862)))))))

(declare-fun b!4191487 () Bool)

(declare-fun res!1720235 () Bool)

(assert (=> b!4191487 (=> (not res!1720235) (not e!2601919))))

(assert (=> b!4191487 (= res!1720235 (matchR!6316 (regex!7672 (rule!10756 (_1!25047 (get!14967 lt!1492862)))) (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492862))))))))

(declare-fun bm!292190 () Bool)

(assert (=> bm!292190 (= call!292195 (maxPrefixOneRule!3274 thiss!25986 (h!51449 rules!3843) input!3342))))

(declare-fun b!4191488 () Bool)

(assert (=> b!4191488 (= e!2601920 e!2601919)))

(declare-fun res!1720234 () Bool)

(assert (=> b!4191488 (=> (not res!1720234) (not e!2601919))))

(declare-fun isDefined!7350 (Option!9866) Bool)

(assert (=> b!4191488 (= res!1720234 (isDefined!7350 lt!1492862))))

(declare-fun b!4191489 () Bool)

(declare-fun res!1720239 () Bool)

(assert (=> b!4191489 (=> (not res!1720239) (not e!2601919))))

(assert (=> b!4191489 (= res!1720239 (= (value!239184 (_1!25047 (get!14967 lt!1492862))) (apply!10637 (transformation!7672 (rule!10756 (_1!25047 (get!14967 lt!1492862)))) (seqFromList!5697 (originalCharacters!8060 (_1!25047 (get!14967 lt!1492862)))))))))

(assert (= (and d!1236311 c!715175) b!4191482))

(assert (= (and d!1236311 (not c!715175)) b!4191483))

(assert (= (or b!4191482 b!4191483) bm!292190))

(assert (= (and d!1236311 (not res!1720238)) b!4191488))

(assert (= (and b!4191488 res!1720234) b!4191486))

(assert (= (and b!4191486 res!1720236) b!4191481))

(assert (= (and b!4191481 res!1720237) b!4191484))

(assert (= (and b!4191484 res!1720240) b!4191489))

(assert (= (and b!4191489 res!1720239) b!4191487))

(assert (= (and b!4191487 res!1720235) b!4191485))

(declare-fun m!4780227 () Bool)

(assert (=> b!4191488 m!4780227))

(declare-fun m!4780229 () Bool)

(assert (=> d!1236311 m!4780229))

(assert (=> d!1236311 m!4779917))

(assert (=> d!1236311 m!4779921))

(declare-fun m!4780231 () Bool)

(assert (=> d!1236311 m!4780231))

(declare-fun m!4780233 () Bool)

(assert (=> bm!292190 m!4780233))

(declare-fun m!4780235 () Bool)

(assert (=> b!4191489 m!4780235))

(declare-fun m!4780237 () Bool)

(assert (=> b!4191489 m!4780237))

(assert (=> b!4191489 m!4780237))

(declare-fun m!4780239 () Bool)

(assert (=> b!4191489 m!4780239))

(assert (=> b!4191481 m!4780235))

(declare-fun m!4780241 () Bool)

(assert (=> b!4191481 m!4780241))

(assert (=> b!4191481 m!4779983))

(assert (=> b!4191487 m!4780235))

(declare-fun m!4780243 () Bool)

(assert (=> b!4191487 m!4780243))

(assert (=> b!4191487 m!4780243))

(declare-fun m!4780245 () Bool)

(assert (=> b!4191487 m!4780245))

(assert (=> b!4191487 m!4780245))

(declare-fun m!4780247 () Bool)

(assert (=> b!4191487 m!4780247))

(assert (=> b!4191485 m!4780235))

(declare-fun m!4780249 () Bool)

(assert (=> b!4191485 m!4780249))

(assert (=> b!4191484 m!4780235))

(assert (=> b!4191484 m!4780243))

(assert (=> b!4191484 m!4780243))

(assert (=> b!4191484 m!4780245))

(assert (=> b!4191484 m!4780245))

(declare-fun m!4780251 () Bool)

(assert (=> b!4191484 m!4780251))

(declare-fun m!4780253 () Bool)

(assert (=> b!4191483 m!4780253))

(assert (=> b!4191486 m!4780235))

(assert (=> b!4191486 m!4780243))

(assert (=> b!4191486 m!4780243))

(assert (=> b!4191486 m!4780245))

(assert (=> b!4191215 d!1236311))

(declare-fun d!1236313 () Bool)

(assert (=> d!1236313 (= (inv!60576 (tag!8536 rBis!167)) (= (mod (str.len (value!239183 (tag!8536 rBis!167))) 2) 0))))

(assert (=> b!4191216 d!1236313))

(declare-fun d!1236315 () Bool)

(declare-fun res!1720241 () Bool)

(declare-fun e!2601922 () Bool)

(assert (=> d!1236315 (=> (not res!1720241) (not e!2601922))))

(assert (=> d!1236315 (= res!1720241 (semiInverseModEq!3327 (toChars!10227 (transformation!7672 rBis!167)) (toValue!10368 (transformation!7672 rBis!167))))))

(assert (=> d!1236315 (= (inv!60578 (transformation!7672 rBis!167)) e!2601922)))

(declare-fun b!4191490 () Bool)

(assert (=> b!4191490 (= e!2601922 (equivClasses!3226 (toChars!10227 (transformation!7672 rBis!167)) (toValue!10368 (transformation!7672 rBis!167))))))

(assert (= (and d!1236315 res!1720241) b!4191490))

(declare-fun m!4780255 () Bool)

(assert (=> d!1236315 m!4780255))

(declare-fun m!4780257 () Bool)

(assert (=> b!4191490 m!4780257))

(assert (=> b!4191216 d!1236315))

(declare-fun d!1236317 () Bool)

(declare-fun dynLambda!19815 (Int BalanceConc!27360) TokenValue!7902)

(assert (=> d!1236317 (= (apply!10637 (transformation!7672 r!4142) lt!1492757) (dynLambda!19815 (toValue!10368 (transformation!7672 r!4142)) lt!1492757))))

(declare-fun b_lambda!123269 () Bool)

(assert (=> (not b_lambda!123269) (not d!1236317)))

(declare-fun tb!251057 () Bool)

(declare-fun t!345996 () Bool)

(assert (=> (and b!4191217 (= (toValue!10368 (transformation!7672 (h!51449 rules!3843))) (toValue!10368 (transformation!7672 r!4142))) t!345996) tb!251057))

(declare-fun result!305984 () Bool)

(declare-fun inv!21 (TokenValue!7902) Bool)

(assert (=> tb!251057 (= result!305984 (inv!21 (dynLambda!19815 (toValue!10368 (transformation!7672 r!4142)) lt!1492757)))))

(declare-fun m!4780259 () Bool)

(assert (=> tb!251057 m!4780259))

(assert (=> d!1236317 t!345996))

(declare-fun b_and!328419 () Bool)

(assert (= b_and!328401 (and (=> t!345996 result!305984) b_and!328419)))

(declare-fun t!345998 () Bool)

(declare-fun tb!251059 () Bool)

(assert (=> (and b!4191199 (= (toValue!10368 (transformation!7672 rBis!167)) (toValue!10368 (transformation!7672 r!4142))) t!345998) tb!251059))

(declare-fun result!305988 () Bool)

(assert (= result!305988 result!305984))

(assert (=> d!1236317 t!345998))

(declare-fun b_and!328421 () Bool)

(assert (= b_and!328405 (and (=> t!345998 result!305988) b_and!328421)))

(declare-fun t!346000 () Bool)

(declare-fun tb!251061 () Bool)

(assert (=> (and b!4191206 (= (toValue!10368 (transformation!7672 r!4142)) (toValue!10368 (transformation!7672 r!4142))) t!346000) tb!251061))

(declare-fun result!305990 () Bool)

(assert (= result!305990 result!305984))

(assert (=> d!1236317 t!346000))

(declare-fun b_and!328423 () Bool)

(assert (= b_and!328409 (and (=> t!346000 result!305990) b_and!328423)))

(declare-fun m!4780261 () Bool)

(assert (=> d!1236317 m!4780261))

(assert (=> b!4191195 d!1236317))

(declare-fun d!1236319 () Bool)

(declare-fun lt!1492866 () List!46152)

(assert (=> d!1236319 (= (++!11744 p!2959 lt!1492866) input!3342)))

(declare-fun e!2601928 () List!46152)

(assert (=> d!1236319 (= lt!1492866 e!2601928)))

(declare-fun c!715178 () Bool)

(assert (=> d!1236319 (= c!715178 ((_ is Cons!46028) p!2959))))

(assert (=> d!1236319 (>= (size!33815 input!3342) (size!33815 p!2959))))

(assert (=> d!1236319 (= (getSuffix!2822 input!3342 p!2959) lt!1492866)))

(declare-fun b!4191497 () Bool)

(assert (=> b!4191497 (= e!2601928 (getSuffix!2822 (tail!6743 input!3342) (t!345987 p!2959)))))

(declare-fun b!4191498 () Bool)

(assert (=> b!4191498 (= e!2601928 input!3342)))

(assert (= (and d!1236319 c!715178) b!4191497))

(assert (= (and d!1236319 (not c!715178)) b!4191498))

(declare-fun m!4780263 () Bool)

(assert (=> d!1236319 m!4780263))

(assert (=> d!1236319 m!4779983))

(assert (=> d!1236319 m!4779927))

(assert (=> b!4191497 m!4780051))

(assert (=> b!4191497 m!4780051))

(declare-fun m!4780265 () Bool)

(assert (=> b!4191497 m!4780265))

(assert (=> b!4191195 d!1236319))

(declare-fun b!4191499 () Bool)

(declare-fun e!2601930 () Bool)

(declare-fun e!2601931 () Bool)

(assert (=> b!4191499 (= e!2601930 e!2601931)))

(declare-fun res!1720242 () Bool)

(assert (=> b!4191499 (=> (not res!1720242) (not e!2601931))))

(assert (=> b!4191499 (= res!1720242 (not ((_ is Nil!46028) input!3342)))))

(declare-fun d!1236321 () Bool)

(declare-fun e!2601929 () Bool)

(assert (=> d!1236321 e!2601929))

(declare-fun res!1720245 () Bool)

(assert (=> d!1236321 (=> res!1720245 e!2601929)))

(declare-fun lt!1492867 () Bool)

(assert (=> d!1236321 (= res!1720245 (not lt!1492867))))

(assert (=> d!1236321 (= lt!1492867 e!2601930)))

(declare-fun res!1720243 () Bool)

(assert (=> d!1236321 (=> res!1720243 e!2601930)))

(assert (=> d!1236321 (= res!1720243 ((_ is Nil!46028) input!3342))))

(assert (=> d!1236321 (= (isPrefix!4529 input!3342 input!3342) lt!1492867)))

(declare-fun b!4191500 () Bool)

(declare-fun res!1720244 () Bool)

(assert (=> b!4191500 (=> (not res!1720244) (not e!2601931))))

(assert (=> b!4191500 (= res!1720244 (= (head!8896 input!3342) (head!8896 input!3342)))))

(declare-fun b!4191501 () Bool)

(assert (=> b!4191501 (= e!2601931 (isPrefix!4529 (tail!6743 input!3342) (tail!6743 input!3342)))))

(declare-fun b!4191502 () Bool)

(assert (=> b!4191502 (= e!2601929 (>= (size!33815 input!3342) (size!33815 input!3342)))))

(assert (= (and d!1236321 (not res!1720243)) b!4191499))

(assert (= (and b!4191499 res!1720242) b!4191500))

(assert (= (and b!4191500 res!1720244) b!4191501))

(assert (= (and d!1236321 (not res!1720245)) b!4191502))

(assert (=> b!4191500 m!4780047))

(assert (=> b!4191500 m!4780047))

(assert (=> b!4191501 m!4780051))

(assert (=> b!4191501 m!4780051))

(assert (=> b!4191501 m!4780051))

(assert (=> b!4191501 m!4780051))

(declare-fun m!4780267 () Bool)

(assert (=> b!4191501 m!4780267))

(assert (=> b!4191502 m!4779983))

(assert (=> b!4191502 m!4779983))

(assert (=> b!4191195 d!1236321))

(declare-fun d!1236323 () Bool)

(declare-fun fromListB!2611 (List!46152) BalanceConc!27360)

(assert (=> d!1236323 (= (seqFromList!5697 p!2959) (fromListB!2611 p!2959))))

(declare-fun bs!596638 () Bool)

(assert (= bs!596638 d!1236323))

(declare-fun m!4780269 () Bool)

(assert (=> bs!596638 m!4780269))

(assert (=> b!4191195 d!1236323))

(declare-fun d!1236325 () Bool)

(assert (=> d!1236325 (isPrefix!4529 input!3342 input!3342)))

(declare-fun lt!1492870 () Unit!65107)

(declare-fun choose!25682 (List!46152 List!46152) Unit!65107)

(assert (=> d!1236325 (= lt!1492870 (choose!25682 input!3342 input!3342))))

(assert (=> d!1236325 (= (lemmaIsPrefixRefl!2958 input!3342 input!3342) lt!1492870)))

(declare-fun bs!596639 () Bool)

(assert (= bs!596639 d!1236325))

(assert (=> bs!596639 m!4779917))

(declare-fun m!4780271 () Bool)

(assert (=> bs!596639 m!4780271))

(assert (=> b!4191195 d!1236325))

(declare-fun b!4191503 () Bool)

(declare-fun res!1720246 () Bool)

(declare-fun e!2601934 () Bool)

(assert (=> b!4191503 (=> (not res!1720246) (not e!2601934))))

(declare-fun lt!1492872 () Option!9866)

(assert (=> b!4191503 (= res!1720246 (= (++!11744 (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492872)))) (_2!25047 (get!14967 lt!1492872))) input!3342))))

(declare-fun b!4191504 () Bool)

(declare-fun e!2601935 () Bool)

(assert (=> b!4191504 (= e!2601935 e!2601934)))

(declare-fun res!1720251 () Bool)

(assert (=> b!4191504 (=> (not res!1720251) (not e!2601934))))

(assert (=> b!4191504 (= res!1720251 (matchR!6316 (regex!7672 r!4142) (list!16632 (charsOf!5107 (_1!25047 (get!14967 lt!1492872))))))))

(declare-fun b!4191505 () Bool)

(declare-fun e!2601932 () Bool)

(assert (=> b!4191505 (= e!2601932 (matchR!6316 (regex!7672 r!4142) (_1!25049 (findLongestMatchInner!1609 (regex!7672 r!4142) Nil!46028 (size!33815 Nil!46028) input!3342 input!3342 (size!33815 input!3342)))))))

(declare-fun b!4191507 () Bool)

(declare-fun res!1720249 () Bool)

(assert (=> b!4191507 (=> (not res!1720249) (not e!2601934))))

(assert (=> b!4191507 (= res!1720249 (= (value!239184 (_1!25047 (get!14967 lt!1492872))) (apply!10637 (transformation!7672 (rule!10756 (_1!25047 (get!14967 lt!1492872)))) (seqFromList!5697 (originalCharacters!8060 (_1!25047 (get!14967 lt!1492872)))))))))

(declare-fun b!4191508 () Bool)

(declare-fun e!2601933 () Option!9866)

(assert (=> b!4191508 (= e!2601933 None!9865)))

(declare-fun b!4191509 () Bool)

(assert (=> b!4191509 (= e!2601934 (= (size!33816 (_1!25047 (get!14967 lt!1492872))) (size!33815 (originalCharacters!8060 (_1!25047 (get!14967 lt!1492872))))))))

(declare-fun b!4191510 () Bool)

(declare-fun lt!1492875 () tuple2!43830)

(assert (=> b!4191510 (= e!2601933 (Some!9865 (tuple2!43827 (Token!14059 (apply!10637 (transformation!7672 r!4142) (seqFromList!5697 (_1!25049 lt!1492875))) r!4142 (size!33817 (seqFromList!5697 (_1!25049 lt!1492875))) (_1!25049 lt!1492875)) (_2!25049 lt!1492875))))))

(declare-fun lt!1492873 () Unit!65107)

(assert (=> b!4191510 (= lt!1492873 (longestMatchIsAcceptedByMatchOrIsEmpty!1582 (regex!7672 r!4142) input!3342))))

(declare-fun res!1720252 () Bool)

(assert (=> b!4191510 (= res!1720252 (isEmpty!27253 (_1!25049 (findLongestMatchInner!1609 (regex!7672 r!4142) Nil!46028 (size!33815 Nil!46028) input!3342 input!3342 (size!33815 input!3342)))))))

(assert (=> b!4191510 (=> res!1720252 e!2601932)))

(assert (=> b!4191510 e!2601932))

(declare-fun lt!1492874 () Unit!65107)

(assert (=> b!4191510 (= lt!1492874 lt!1492873)))

(declare-fun lt!1492871 () Unit!65107)

(assert (=> b!4191510 (= lt!1492871 (lemmaSemiInverse!2438 (transformation!7672 r!4142) (seqFromList!5697 (_1!25049 lt!1492875))))))

(declare-fun b!4191511 () Bool)

(declare-fun res!1720250 () Bool)

(assert (=> b!4191511 (=> (not res!1720250) (not e!2601934))))

(assert (=> b!4191511 (= res!1720250 (< (size!33815 (_2!25047 (get!14967 lt!1492872))) (size!33815 input!3342)))))

(declare-fun b!4191506 () Bool)

(declare-fun res!1720247 () Bool)

(assert (=> b!4191506 (=> (not res!1720247) (not e!2601934))))

(assert (=> b!4191506 (= res!1720247 (= (rule!10756 (_1!25047 (get!14967 lt!1492872))) r!4142))))

(declare-fun d!1236327 () Bool)

(assert (=> d!1236327 e!2601935))

(declare-fun res!1720248 () Bool)

(assert (=> d!1236327 (=> res!1720248 e!2601935)))

(assert (=> d!1236327 (= res!1720248 (isEmpty!27251 lt!1492872))))

(assert (=> d!1236327 (= lt!1492872 e!2601933)))

(declare-fun c!715179 () Bool)

(assert (=> d!1236327 (= c!715179 (isEmpty!27253 (_1!25049 lt!1492875)))))

(assert (=> d!1236327 (= lt!1492875 (findLongestMatch!1522 (regex!7672 r!4142) input!3342))))

(assert (=> d!1236327 (ruleValid!3390 thiss!25986 r!4142)))

(assert (=> d!1236327 (= (maxPrefixOneRule!3274 thiss!25986 r!4142 input!3342) lt!1492872)))

(assert (= (and d!1236327 c!715179) b!4191508))

(assert (= (and d!1236327 (not c!715179)) b!4191510))

(assert (= (and b!4191510 (not res!1720252)) b!4191505))

(assert (= (and d!1236327 (not res!1720248)) b!4191504))

(assert (= (and b!4191504 res!1720251) b!4191503))

(assert (= (and b!4191503 res!1720246) b!4191511))

(assert (= (and b!4191511 res!1720250) b!4191506))

(assert (= (and b!4191506 res!1720247) b!4191507))

(assert (= (and b!4191507 res!1720249) b!4191509))

(assert (=> b!4191505 m!4780161))

(assert (=> b!4191505 m!4779983))

(assert (=> b!4191505 m!4780161))

(assert (=> b!4191505 m!4779983))

(declare-fun m!4780273 () Bool)

(assert (=> b!4191505 m!4780273))

(declare-fun m!4780275 () Bool)

(assert (=> b!4191505 m!4780275))

(declare-fun m!4780277 () Bool)

(assert (=> b!4191511 m!4780277))

(declare-fun m!4780279 () Bool)

(assert (=> b!4191511 m!4780279))

(assert (=> b!4191511 m!4779983))

(assert (=> b!4191507 m!4780277))

(declare-fun m!4780281 () Bool)

(assert (=> b!4191507 m!4780281))

(assert (=> b!4191507 m!4780281))

(declare-fun m!4780283 () Bool)

(assert (=> b!4191507 m!4780283))

(assert (=> b!4191506 m!4780277))

(assert (=> b!4191509 m!4780277))

(declare-fun m!4780285 () Bool)

(assert (=> b!4191509 m!4780285))

(assert (=> b!4191510 m!4779983))

(assert (=> b!4191510 m!4780161))

(assert (=> b!4191510 m!4779983))

(assert (=> b!4191510 m!4780273))

(declare-fun m!4780287 () Bool)

(assert (=> b!4191510 m!4780287))

(declare-fun m!4780289 () Bool)

(assert (=> b!4191510 m!4780289))

(declare-fun m!4780291 () Bool)

(assert (=> b!4191510 m!4780291))

(declare-fun m!4780293 () Bool)

(assert (=> b!4191510 m!4780293))

(assert (=> b!4191510 m!4780291))

(assert (=> b!4191510 m!4780161))

(assert (=> b!4191510 m!4780291))

(declare-fun m!4780295 () Bool)

(assert (=> b!4191510 m!4780295))

(assert (=> b!4191510 m!4780291))

(declare-fun m!4780297 () Bool)

(assert (=> b!4191510 m!4780297))

(declare-fun m!4780299 () Bool)

(assert (=> d!1236327 m!4780299))

(declare-fun m!4780301 () Bool)

(assert (=> d!1236327 m!4780301))

(declare-fun m!4780303 () Bool)

(assert (=> d!1236327 m!4780303))

(assert (=> d!1236327 m!4779965))

(assert (=> b!4191503 m!4780277))

(declare-fun m!4780305 () Bool)

(assert (=> b!4191503 m!4780305))

(assert (=> b!4191503 m!4780305))

(declare-fun m!4780307 () Bool)

(assert (=> b!4191503 m!4780307))

(assert (=> b!4191503 m!4780307))

(declare-fun m!4780309 () Bool)

(assert (=> b!4191503 m!4780309))

(assert (=> b!4191504 m!4780277))

(assert (=> b!4191504 m!4780305))

(assert (=> b!4191504 m!4780305))

(assert (=> b!4191504 m!4780307))

(assert (=> b!4191504 m!4780307))

(declare-fun m!4780311 () Bool)

(assert (=> b!4191504 m!4780311))

(assert (=> b!4191195 d!1236327))

(declare-fun b!4191707 () Bool)

(declare-fun e!2602044 () Bool)

(assert (=> b!4191707 (= e!2602044 true)))

(declare-fun d!1236329 () Bool)

(assert (=> d!1236329 e!2602044))

(assert (= d!1236329 b!4191707))

(declare-fun order!24361 () Int)

(declare-fun lambda!129487 () Int)

(declare-fun order!24363 () Int)

(declare-fun dynLambda!19816 (Int Int) Int)

(declare-fun dynLambda!19817 (Int Int) Int)

(assert (=> b!4191707 (< (dynLambda!19816 order!24361 (toValue!10368 (transformation!7672 r!4142))) (dynLambda!19817 order!24363 lambda!129487))))

(declare-fun order!24365 () Int)

(declare-fun dynLambda!19818 (Int Int) Int)

(assert (=> b!4191707 (< (dynLambda!19818 order!24365 (toChars!10227 (transformation!7672 r!4142))) (dynLambda!19817 order!24363 lambda!129487))))

(declare-fun dynLambda!19819 (Int TokenValue!7902) BalanceConc!27360)

(assert (=> d!1236329 (= (list!16632 (dynLambda!19819 (toChars!10227 (transformation!7672 r!4142)) (dynLambda!19815 (toValue!10368 (transformation!7672 r!4142)) lt!1492757))) (list!16632 lt!1492757))))

(declare-fun lt!1492913 () Unit!65107)

(declare-fun ForallOf!1062 (Int BalanceConc!27360) Unit!65107)

(assert (=> d!1236329 (= lt!1492913 (ForallOf!1062 lambda!129487 lt!1492757))))

(assert (=> d!1236329 (= (lemmaSemiInverse!2438 (transformation!7672 r!4142) lt!1492757) lt!1492913)))

(declare-fun b_lambda!123283 () Bool)

(assert (=> (not b_lambda!123283) (not d!1236329)))

(declare-fun t!346020 () Bool)

(declare-fun tb!251081 () Bool)

(assert (=> (and b!4191217 (= (toChars!10227 (transformation!7672 (h!51449 rules!3843))) (toChars!10227 (transformation!7672 r!4142))) t!346020) tb!251081))

(declare-fun e!2602047 () Bool)

(declare-fun tp!1280677 () Bool)

(declare-fun b!4191712 () Bool)

(declare-fun inv!60581 (Conc!13883) Bool)

(assert (=> b!4191712 (= e!2602047 (and (inv!60581 (c!715130 (dynLambda!19819 (toChars!10227 (transformation!7672 r!4142)) (dynLambda!19815 (toValue!10368 (transformation!7672 r!4142)) lt!1492757)))) tp!1280677))))

(declare-fun result!306018 () Bool)

(declare-fun inv!60582 (BalanceConc!27360) Bool)

(assert (=> tb!251081 (= result!306018 (and (inv!60582 (dynLambda!19819 (toChars!10227 (transformation!7672 r!4142)) (dynLambda!19815 (toValue!10368 (transformation!7672 r!4142)) lt!1492757))) e!2602047))))

(assert (= tb!251081 b!4191712))

(declare-fun m!4780471 () Bool)

(assert (=> b!4191712 m!4780471))

(declare-fun m!4780473 () Bool)

(assert (=> tb!251081 m!4780473))

(assert (=> d!1236329 t!346020))

(declare-fun b_and!328447 () Bool)

(assert (= b_and!328403 (and (=> t!346020 result!306018) b_and!328447)))

(declare-fun t!346022 () Bool)

(declare-fun tb!251083 () Bool)

(assert (=> (and b!4191199 (= (toChars!10227 (transformation!7672 rBis!167)) (toChars!10227 (transformation!7672 r!4142))) t!346022) tb!251083))

(declare-fun result!306022 () Bool)

(assert (= result!306022 result!306018))

(assert (=> d!1236329 t!346022))

(declare-fun b_and!328449 () Bool)

(assert (= b_and!328407 (and (=> t!346022 result!306022) b_and!328449)))

(declare-fun t!346024 () Bool)

(declare-fun tb!251085 () Bool)

(assert (=> (and b!4191206 (= (toChars!10227 (transformation!7672 r!4142)) (toChars!10227 (transformation!7672 r!4142))) t!346024) tb!251085))

(declare-fun result!306024 () Bool)

(assert (= result!306024 result!306018))

(assert (=> d!1236329 t!346024))

(declare-fun b_and!328451 () Bool)

(assert (= b_and!328411 (and (=> t!346024 result!306024) b_and!328451)))

(declare-fun b_lambda!123285 () Bool)

(assert (=> (not b_lambda!123285) (not d!1236329)))

(assert (=> d!1236329 t!345996))

(declare-fun b_and!328453 () Bool)

(assert (= b_and!328419 (and (=> t!345996 result!305984) b_and!328453)))

(assert (=> d!1236329 t!345998))

(declare-fun b_and!328455 () Bool)

(assert (= b_and!328421 (and (=> t!345998 result!305988) b_and!328455)))

(assert (=> d!1236329 t!346000))

(declare-fun b_and!328457 () Bool)

(assert (= b_and!328423 (and (=> t!346000 result!305990) b_and!328457)))

(declare-fun m!4780475 () Bool)

(assert (=> d!1236329 m!4780475))

(declare-fun m!4780477 () Bool)

(assert (=> d!1236329 m!4780477))

(declare-fun m!4780479 () Bool)

(assert (=> d!1236329 m!4780479))

(declare-fun m!4780481 () Bool)

(assert (=> d!1236329 m!4780481))

(assert (=> d!1236329 m!4780261))

(assert (=> d!1236329 m!4780261))

(assert (=> d!1236329 m!4780479))

(assert (=> b!4191195 d!1236329))

(declare-fun d!1236379 () Bool)

(declare-fun lt!1492914 () Int)

(assert (=> d!1236379 (>= lt!1492914 0)))

(declare-fun e!2602048 () Int)

(assert (=> d!1236379 (= lt!1492914 e!2602048)))

(declare-fun c!715205 () Bool)

(assert (=> d!1236379 (= c!715205 ((_ is Nil!46028) p!2959))))

(assert (=> d!1236379 (= (size!33815 p!2959) lt!1492914)))

(declare-fun b!4191713 () Bool)

(assert (=> b!4191713 (= e!2602048 0)))

(declare-fun b!4191714 () Bool)

(assert (=> b!4191714 (= e!2602048 (+ 1 (size!33815 (t!345987 p!2959))))))

(assert (= (and d!1236379 c!715205) b!4191713))

(assert (= (and d!1236379 (not c!715205)) b!4191714))

(declare-fun m!4780483 () Bool)

(assert (=> b!4191714 m!4780483))

(assert (=> b!4191195 d!1236379))

(declare-fun b!4191715 () Bool)

(declare-fun e!2602049 () Bool)

(declare-fun e!2602054 () Bool)

(assert (=> b!4191715 (= e!2602049 e!2602054)))

(declare-fun c!715206 () Bool)

(assert (=> b!4191715 (= c!715206 ((_ is Union!12577) (regex!7672 r!4142)))))

(declare-fun b!4191716 () Bool)

(declare-fun e!2602050 () Bool)

(declare-fun call!292207 () Bool)

(assert (=> b!4191716 (= e!2602050 call!292207)))

(declare-fun b!4191717 () Bool)

(declare-fun res!1720352 () Bool)

(declare-fun e!2602055 () Bool)

(assert (=> b!4191717 (=> res!1720352 e!2602055)))

(assert (=> b!4191717 (= res!1720352 (not ((_ is Concat!20480) (regex!7672 r!4142))))))

(assert (=> b!4191717 (= e!2602054 e!2602055)))

(declare-fun b!4191718 () Bool)

(assert (=> b!4191718 (= e!2602049 e!2602050)))

(declare-fun res!1720348 () Bool)

(assert (=> b!4191718 (= res!1720348 (not (nullable!4419 (reg!12906 (regex!7672 r!4142)))))))

(assert (=> b!4191718 (=> (not res!1720348) (not e!2602050))))

(declare-fun b!4191719 () Bool)

(declare-fun e!2602051 () Bool)

(assert (=> b!4191719 (= e!2602051 e!2602049)))

(declare-fun c!715207 () Bool)

(assert (=> b!4191719 (= c!715207 ((_ is Star!12577) (regex!7672 r!4142)))))

(declare-fun b!4191720 () Bool)

(declare-fun e!2602053 () Bool)

(assert (=> b!4191720 (= e!2602055 e!2602053)))

(declare-fun res!1720349 () Bool)

(assert (=> b!4191720 (=> (not res!1720349) (not e!2602053))))

(declare-fun call!292208 () Bool)

(assert (=> b!4191720 (= res!1720349 call!292208)))

(declare-fun b!4191721 () Bool)

(declare-fun e!2602052 () Bool)

(declare-fun call!292206 () Bool)

(assert (=> b!4191721 (= e!2602052 call!292206)))

(declare-fun b!4191722 () Bool)

(assert (=> b!4191722 (= e!2602053 call!292206)))

(declare-fun bm!292201 () Bool)

(assert (=> bm!292201 (= call!292207 (validRegex!5694 (ite c!715207 (reg!12906 (regex!7672 r!4142)) (ite c!715206 (regTwo!25667 (regex!7672 r!4142)) (regTwo!25666 (regex!7672 r!4142))))))))

(declare-fun b!4191723 () Bool)

(declare-fun res!1720350 () Bool)

(assert (=> b!4191723 (=> (not res!1720350) (not e!2602052))))

(assert (=> b!4191723 (= res!1720350 call!292208)))

(assert (=> b!4191723 (= e!2602054 e!2602052)))

(declare-fun d!1236381 () Bool)

(declare-fun res!1720351 () Bool)

(assert (=> d!1236381 (=> res!1720351 e!2602051)))

(assert (=> d!1236381 (= res!1720351 ((_ is ElementMatch!12577) (regex!7672 r!4142)))))

(assert (=> d!1236381 (= (validRegex!5694 (regex!7672 r!4142)) e!2602051)))

(declare-fun bm!292202 () Bool)

(assert (=> bm!292202 (= call!292206 call!292207)))

(declare-fun bm!292203 () Bool)

(assert (=> bm!292203 (= call!292208 (validRegex!5694 (ite c!715206 (regOne!25667 (regex!7672 r!4142)) (regOne!25666 (regex!7672 r!4142)))))))

(assert (= (and d!1236381 (not res!1720351)) b!4191719))

(assert (= (and b!4191719 c!715207) b!4191718))

(assert (= (and b!4191719 (not c!715207)) b!4191715))

(assert (= (and b!4191718 res!1720348) b!4191716))

(assert (= (and b!4191715 c!715206) b!4191723))

(assert (= (and b!4191715 (not c!715206)) b!4191717))

(assert (= (and b!4191723 res!1720350) b!4191721))

(assert (= (and b!4191717 (not res!1720352)) b!4191720))

(assert (= (and b!4191720 res!1720349) b!4191722))

(assert (= (or b!4191721 b!4191722) bm!292202))

(assert (= (or b!4191723 b!4191720) bm!292203))

(assert (= (or b!4191716 bm!292202) bm!292201))

(declare-fun m!4780485 () Bool)

(assert (=> b!4191718 m!4780485))

(declare-fun m!4780487 () Bool)

(assert (=> bm!292201 m!4780487))

(declare-fun m!4780489 () Bool)

(assert (=> bm!292203 m!4780489))

(assert (=> b!4191201 d!1236381))

(declare-fun d!1236383 () Bool)

(declare-fun res!1720357 () Bool)

(declare-fun e!2602058 () Bool)

(assert (=> d!1236383 (=> (not res!1720357) (not e!2602058))))

(assert (=> d!1236383 (= res!1720357 (validRegex!5694 (regex!7672 r!4142)))))

(assert (=> d!1236383 (= (ruleValid!3390 thiss!25986 r!4142) e!2602058)))

(declare-fun b!4191728 () Bool)

(declare-fun res!1720358 () Bool)

(assert (=> b!4191728 (=> (not res!1720358) (not e!2602058))))

(assert (=> b!4191728 (= res!1720358 (not (nullable!4419 (regex!7672 r!4142))))))

(declare-fun b!4191729 () Bool)

(assert (=> b!4191729 (= e!2602058 (not (= (tag!8536 r!4142) (String!53377 ""))))))

(assert (= (and d!1236383 res!1720357) b!4191728))

(assert (= (and b!4191728 res!1720358) b!4191729))

(assert (=> d!1236383 m!4779997))

(assert (=> b!4191728 m!4780219))

(assert (=> b!4191212 d!1236383))

(declare-fun d!1236385 () Bool)

(declare-fun lt!1492915 () Int)

(assert (=> d!1236385 (>= lt!1492915 0)))

(declare-fun e!2602059 () Int)

(assert (=> d!1236385 (= lt!1492915 e!2602059)))

(declare-fun c!715208 () Bool)

(assert (=> d!1236385 (= c!715208 ((_ is Nil!46028) lt!1492762))))

(assert (=> d!1236385 (= (size!33815 lt!1492762) lt!1492915)))

(declare-fun b!4191730 () Bool)

(assert (=> b!4191730 (= e!2602059 0)))

(declare-fun b!4191731 () Bool)

(assert (=> b!4191731 (= e!2602059 (+ 1 (size!33815 (t!345987 lt!1492762))))))

(assert (= (and d!1236385 c!715208) b!4191730))

(assert (= (and d!1236385 (not c!715208)) b!4191731))

(declare-fun m!4780491 () Bool)

(assert (=> b!4191731 m!4780491))

(assert (=> b!4191191 d!1236385))

(declare-fun d!1236387 () Bool)

(assert (=> d!1236387 (isPrefix!4529 lt!1492762 (++!11744 lt!1492762 (_2!25047 lt!1492750)))))

(declare-fun lt!1492918 () Unit!65107)

(declare-fun choose!25683 (List!46152 List!46152) Unit!65107)

(assert (=> d!1236387 (= lt!1492918 (choose!25683 lt!1492762 (_2!25047 lt!1492750)))))

(assert (=> d!1236387 (= (lemmaConcatTwoListThenFirstIsPrefix!3026 lt!1492762 (_2!25047 lt!1492750)) lt!1492918)))

(declare-fun bs!596640 () Bool)

(assert (= bs!596640 d!1236387))

(assert (=> bs!596640 m!4779937))

(assert (=> bs!596640 m!4779937))

(declare-fun m!4780493 () Bool)

(assert (=> bs!596640 m!4780493))

(declare-fun m!4780495 () Bool)

(assert (=> bs!596640 m!4780495))

(assert (=> b!4191202 d!1236387))

(declare-fun b!4191732 () Bool)

(declare-fun e!2602061 () Bool)

(declare-fun e!2602062 () Bool)

(assert (=> b!4191732 (= e!2602061 e!2602062)))

(declare-fun res!1720359 () Bool)

(assert (=> b!4191732 (=> (not res!1720359) (not e!2602062))))

(assert (=> b!4191732 (= res!1720359 (not ((_ is Nil!46028) lt!1492761)))))

(declare-fun d!1236389 () Bool)

(declare-fun e!2602060 () Bool)

(assert (=> d!1236389 e!2602060))

(declare-fun res!1720362 () Bool)

(assert (=> d!1236389 (=> res!1720362 e!2602060)))

(declare-fun lt!1492919 () Bool)

(assert (=> d!1236389 (= res!1720362 (not lt!1492919))))

(assert (=> d!1236389 (= lt!1492919 e!2602061)))

(declare-fun res!1720360 () Bool)

(assert (=> d!1236389 (=> res!1720360 e!2602061)))

(assert (=> d!1236389 (= res!1720360 ((_ is Nil!46028) lt!1492762))))

(assert (=> d!1236389 (= (isPrefix!4529 lt!1492762 lt!1492761) lt!1492919)))

(declare-fun b!4191733 () Bool)

(declare-fun res!1720361 () Bool)

(assert (=> b!4191733 (=> (not res!1720361) (not e!2602062))))

(assert (=> b!4191733 (= res!1720361 (= (head!8896 lt!1492762) (head!8896 lt!1492761)))))

(declare-fun b!4191734 () Bool)

(assert (=> b!4191734 (= e!2602062 (isPrefix!4529 (tail!6743 lt!1492762) (tail!6743 lt!1492761)))))

(declare-fun b!4191735 () Bool)

(assert (=> b!4191735 (= e!2602060 (>= (size!33815 lt!1492761) (size!33815 lt!1492762)))))

(assert (= (and d!1236389 (not res!1720360)) b!4191732))

(assert (= (and b!4191732 res!1720359) b!4191733))

(assert (= (and b!4191733 res!1720361) b!4191734))

(assert (= (and d!1236389 (not res!1720362)) b!4191735))

(assert (=> b!4191733 m!4780109))

(declare-fun m!4780497 () Bool)

(assert (=> b!4191733 m!4780497))

(assert (=> b!4191734 m!4780105))

(declare-fun m!4780499 () Bool)

(assert (=> b!4191734 m!4780499))

(assert (=> b!4191734 m!4780105))

(assert (=> b!4191734 m!4780499))

(declare-fun m!4780501 () Bool)

(assert (=> b!4191734 m!4780501))

(declare-fun m!4780503 () Bool)

(assert (=> b!4191735 m!4780503))

(assert (=> b!4191735 m!4779953))

(assert (=> b!4191202 d!1236389))

(declare-fun b!4191744 () Bool)

(declare-fun e!2602068 () List!46152)

(assert (=> b!4191744 (= e!2602068 (_2!25047 lt!1492750))))

(declare-fun b!4191745 () Bool)

(assert (=> b!4191745 (= e!2602068 (Cons!46028 (h!51448 lt!1492762) (++!11744 (t!345987 lt!1492762) (_2!25047 lt!1492750))))))

(declare-fun b!4191746 () Bool)

(declare-fun res!1720368 () Bool)

(declare-fun e!2602067 () Bool)

(assert (=> b!4191746 (=> (not res!1720368) (not e!2602067))))

(declare-fun lt!1492922 () List!46152)

(assert (=> b!4191746 (= res!1720368 (= (size!33815 lt!1492922) (+ (size!33815 lt!1492762) (size!33815 (_2!25047 lt!1492750)))))))

(declare-fun b!4191747 () Bool)

(assert (=> b!4191747 (= e!2602067 (or (not (= (_2!25047 lt!1492750) Nil!46028)) (= lt!1492922 lt!1492762)))))

(declare-fun d!1236391 () Bool)

(assert (=> d!1236391 e!2602067))

(declare-fun res!1720367 () Bool)

(assert (=> d!1236391 (=> (not res!1720367) (not e!2602067))))

(declare-fun content!7174 (List!46152) (InoxSet C!25344))

(assert (=> d!1236391 (= res!1720367 (= (content!7174 lt!1492922) ((_ map or) (content!7174 lt!1492762) (content!7174 (_2!25047 lt!1492750)))))))

(assert (=> d!1236391 (= lt!1492922 e!2602068)))

(declare-fun c!715211 () Bool)

(assert (=> d!1236391 (= c!715211 ((_ is Nil!46028) lt!1492762))))

(assert (=> d!1236391 (= (++!11744 lt!1492762 (_2!25047 lt!1492750)) lt!1492922)))

(assert (= (and d!1236391 c!715211) b!4191744))

(assert (= (and d!1236391 (not c!715211)) b!4191745))

(assert (= (and d!1236391 res!1720367) b!4191746))

(assert (= (and b!4191746 res!1720368) b!4191747))

(declare-fun m!4780505 () Bool)

(assert (=> b!4191745 m!4780505))

(declare-fun m!4780507 () Bool)

(assert (=> b!4191746 m!4780507))

(assert (=> b!4191746 m!4779953))

(declare-fun m!4780509 () Bool)

(assert (=> b!4191746 m!4780509))

(declare-fun m!4780511 () Bool)

(assert (=> d!1236391 m!4780511))

(declare-fun m!4780513 () Bool)

(assert (=> d!1236391 m!4780513))

(declare-fun m!4780515 () Bool)

(assert (=> d!1236391 m!4780515))

(assert (=> b!4191202 d!1236391))

(declare-fun d!1236393 () Bool)

(declare-fun list!16634 (Conc!13883) List!46152)

(assert (=> d!1236393 (= (list!16632 lt!1492749) (list!16634 (c!715130 lt!1492749)))))

(declare-fun bs!596641 () Bool)

(assert (= bs!596641 d!1236393))

(declare-fun m!4780517 () Bool)

(assert (=> bs!596641 m!4780517))

(assert (=> b!4191202 d!1236393))

(declare-fun d!1236395 () Bool)

(declare-fun lt!1492925 () BalanceConc!27360)

(assert (=> d!1236395 (= (list!16632 lt!1492925) (originalCharacters!8060 (_1!25047 lt!1492750)))))

(assert (=> d!1236395 (= lt!1492925 (dynLambda!19819 (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750)))) (value!239184 (_1!25047 lt!1492750))))))

(assert (=> d!1236395 (= (charsOf!5107 (_1!25047 lt!1492750)) lt!1492925)))

(declare-fun b_lambda!123287 () Bool)

(assert (=> (not b_lambda!123287) (not d!1236395)))

(declare-fun tb!251087 () Bool)

(declare-fun t!346026 () Bool)

(assert (=> (and b!4191217 (= (toChars!10227 (transformation!7672 (h!51449 rules!3843))) (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750))))) t!346026) tb!251087))

(declare-fun b!4191748 () Bool)

(declare-fun e!2602069 () Bool)

(declare-fun tp!1280678 () Bool)

(assert (=> b!4191748 (= e!2602069 (and (inv!60581 (c!715130 (dynLambda!19819 (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750)))) (value!239184 (_1!25047 lt!1492750))))) tp!1280678))))

(declare-fun result!306026 () Bool)

(assert (=> tb!251087 (= result!306026 (and (inv!60582 (dynLambda!19819 (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750)))) (value!239184 (_1!25047 lt!1492750)))) e!2602069))))

(assert (= tb!251087 b!4191748))

(declare-fun m!4780519 () Bool)

(assert (=> b!4191748 m!4780519))

(declare-fun m!4780521 () Bool)

(assert (=> tb!251087 m!4780521))

(assert (=> d!1236395 t!346026))

(declare-fun b_and!328459 () Bool)

(assert (= b_and!328447 (and (=> t!346026 result!306026) b_and!328459)))

(declare-fun t!346028 () Bool)

(declare-fun tb!251089 () Bool)

(assert (=> (and b!4191199 (= (toChars!10227 (transformation!7672 rBis!167)) (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750))))) t!346028) tb!251089))

(declare-fun result!306028 () Bool)

(assert (= result!306028 result!306026))

(assert (=> d!1236395 t!346028))

(declare-fun b_and!328461 () Bool)

(assert (= b_and!328449 (and (=> t!346028 result!306028) b_and!328461)))

(declare-fun t!346030 () Bool)

(declare-fun tb!251091 () Bool)

(assert (=> (and b!4191206 (= (toChars!10227 (transformation!7672 r!4142)) (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750))))) t!346030) tb!251091))

(declare-fun result!306030 () Bool)

(assert (= result!306030 result!306026))

(assert (=> d!1236395 t!346030))

(declare-fun b_and!328463 () Bool)

(assert (= b_and!328451 (and (=> t!346030 result!306030) b_and!328463)))

(declare-fun m!4780523 () Bool)

(assert (=> d!1236395 m!4780523))

(declare-fun m!4780525 () Bool)

(assert (=> d!1236395 m!4780525))

(assert (=> b!4191202 d!1236395))

(declare-fun d!1236397 () Bool)

(assert (=> d!1236397 (= (get!14967 lt!1492748) (v!40697 lt!1492748))))

(assert (=> b!4191202 d!1236397))

(declare-fun d!1236399 () Bool)

(declare-fun res!1720369 () Bool)

(declare-fun e!2602070 () Bool)

(assert (=> d!1236399 (=> (not res!1720369) (not e!2602070))))

(assert (=> d!1236399 (= res!1720369 (validRegex!5694 (regex!7672 rBis!167)))))

(assert (=> d!1236399 (= (ruleValid!3390 thiss!25986 rBis!167) e!2602070)))

(declare-fun b!4191749 () Bool)

(declare-fun res!1720370 () Bool)

(assert (=> b!4191749 (=> (not res!1720370) (not e!2602070))))

(assert (=> b!4191749 (= res!1720370 (not (nullable!4419 (regex!7672 rBis!167))))))

(declare-fun b!4191750 () Bool)

(assert (=> b!4191750 (= e!2602070 (not (= (tag!8536 rBis!167) (String!53377 ""))))))

(assert (= (and d!1236399 res!1720369) b!4191749))

(assert (= (and b!4191749 res!1720370) b!4191750))

(assert (=> d!1236399 m!4779977))

(assert (=> b!4191749 m!4780117))

(assert (=> b!4191213 d!1236399))

(declare-fun d!1236401 () Bool)

(declare-fun lt!1492926 () Bool)

(assert (=> d!1236401 (= lt!1492926 (select (content!7173 rules!3843) rBis!167))))

(declare-fun e!2602071 () Bool)

(assert (=> d!1236401 (= lt!1492926 e!2602071)))

(declare-fun res!1720371 () Bool)

(assert (=> d!1236401 (=> (not res!1720371) (not e!2602071))))

(assert (=> d!1236401 (= res!1720371 ((_ is Cons!46029) rules!3843))))

(assert (=> d!1236401 (= (contains!9481 rules!3843 rBis!167) lt!1492926)))

(declare-fun b!4191751 () Bool)

(declare-fun e!2602072 () Bool)

(assert (=> b!4191751 (= e!2602071 e!2602072)))

(declare-fun res!1720372 () Bool)

(assert (=> b!4191751 (=> res!1720372 e!2602072)))

(assert (=> b!4191751 (= res!1720372 (= (h!51449 rules!3843) rBis!167))))

(declare-fun b!4191752 () Bool)

(assert (=> b!4191752 (= e!2602072 (contains!9481 (t!345988 rules!3843) rBis!167))))

(assert (= (and d!1236401 res!1720371) b!4191751))

(assert (= (and b!4191751 (not res!1720372)) b!4191752))

(assert (=> d!1236401 m!4780039))

(declare-fun m!4780527 () Bool)

(assert (=> d!1236401 m!4780527))

(declare-fun m!4780529 () Bool)

(assert (=> b!4191752 m!4780529))

(assert (=> b!4191192 d!1236401))

(declare-fun b!4191753 () Bool)

(declare-fun e!2602074 () Bool)

(declare-fun e!2602075 () Bool)

(assert (=> b!4191753 (= e!2602074 e!2602075)))

(declare-fun res!1720373 () Bool)

(assert (=> b!4191753 (=> (not res!1720373) (not e!2602075))))

(assert (=> b!4191753 (= res!1720373 (not ((_ is Nil!46028) input!3342)))))

(declare-fun d!1236403 () Bool)

(declare-fun e!2602073 () Bool)

(assert (=> d!1236403 e!2602073))

(declare-fun res!1720376 () Bool)

(assert (=> d!1236403 (=> res!1720376 e!2602073)))

(declare-fun lt!1492927 () Bool)

(assert (=> d!1236403 (= res!1720376 (not lt!1492927))))

(assert (=> d!1236403 (= lt!1492927 e!2602074)))

(declare-fun res!1720374 () Bool)

(assert (=> d!1236403 (=> res!1720374 e!2602074)))

(assert (=> d!1236403 (= res!1720374 ((_ is Nil!46028) lt!1492762))))

(assert (=> d!1236403 (= (isPrefix!4529 lt!1492762 input!3342) lt!1492927)))

(declare-fun b!4191754 () Bool)

(declare-fun res!1720375 () Bool)

(assert (=> b!4191754 (=> (not res!1720375) (not e!2602075))))

(assert (=> b!4191754 (= res!1720375 (= (head!8896 lt!1492762) (head!8896 input!3342)))))

(declare-fun b!4191755 () Bool)

(assert (=> b!4191755 (= e!2602075 (isPrefix!4529 (tail!6743 lt!1492762) (tail!6743 input!3342)))))

(declare-fun b!4191756 () Bool)

(assert (=> b!4191756 (= e!2602073 (>= (size!33815 input!3342) (size!33815 lt!1492762)))))

(assert (= (and d!1236403 (not res!1720374)) b!4191753))

(assert (= (and b!4191753 res!1720373) b!4191754))

(assert (= (and b!4191754 res!1720375) b!4191755))

(assert (= (and d!1236403 (not res!1720376)) b!4191756))

(assert (=> b!4191754 m!4780109))

(assert (=> b!4191754 m!4780047))

(assert (=> b!4191755 m!4780105))

(assert (=> b!4191755 m!4780051))

(assert (=> b!4191755 m!4780105))

(assert (=> b!4191755 m!4780051))

(declare-fun m!4780531 () Bool)

(assert (=> b!4191755 m!4780531))

(assert (=> b!4191756 m!4779983))

(assert (=> b!4191756 m!4779953))

(assert (=> b!4191203 d!1236403))

(declare-fun b!4191757 () Bool)

(declare-fun e!2602077 () Bool)

(declare-fun e!2602078 () Bool)

(assert (=> b!4191757 (= e!2602077 e!2602078)))

(declare-fun res!1720377 () Bool)

(assert (=> b!4191757 (=> (not res!1720377) (not e!2602078))))

(assert (=> b!4191757 (= res!1720377 (not ((_ is Nil!46028) input!3342)))))

(declare-fun d!1236405 () Bool)

(declare-fun e!2602076 () Bool)

(assert (=> d!1236405 e!2602076))

(declare-fun res!1720380 () Bool)

(assert (=> d!1236405 (=> res!1720380 e!2602076)))

(declare-fun lt!1492928 () Bool)

(assert (=> d!1236405 (= res!1720380 (not lt!1492928))))

(assert (=> d!1236405 (= lt!1492928 e!2602077)))

(declare-fun res!1720378 () Bool)

(assert (=> d!1236405 (=> res!1720378 e!2602077)))

(assert (=> d!1236405 (= res!1720378 ((_ is Nil!46028) p!2959))))

(assert (=> d!1236405 (= (isPrefix!4529 p!2959 input!3342) lt!1492928)))

(declare-fun b!4191758 () Bool)

(declare-fun res!1720379 () Bool)

(assert (=> b!4191758 (=> (not res!1720379) (not e!2602078))))

(assert (=> b!4191758 (= res!1720379 (= (head!8896 p!2959) (head!8896 input!3342)))))

(declare-fun b!4191759 () Bool)

(assert (=> b!4191759 (= e!2602078 (isPrefix!4529 (tail!6743 p!2959) (tail!6743 input!3342)))))

(declare-fun b!4191760 () Bool)

(assert (=> b!4191760 (= e!2602076 (>= (size!33815 input!3342) (size!33815 p!2959)))))

(assert (= (and d!1236405 (not res!1720378)) b!4191757))

(assert (= (and b!4191757 res!1720377) b!4191758))

(assert (= (and b!4191758 res!1720379) b!4191759))

(assert (= (and d!1236405 (not res!1720380)) b!4191760))

(assert (=> b!4191758 m!4780211))

(assert (=> b!4191758 m!4780047))

(assert (=> b!4191759 m!4780207))

(assert (=> b!4191759 m!4780051))

(assert (=> b!4191759 m!4780207))

(assert (=> b!4191759 m!4780051))

(declare-fun m!4780533 () Bool)

(assert (=> b!4191759 m!4780533))

(assert (=> b!4191760 m!4779983))

(assert (=> b!4191760 m!4779927))

(assert (=> b!4191214 d!1236405))

(declare-fun b!4191765 () Bool)

(declare-fun e!2602081 () Bool)

(declare-fun tp!1280681 () Bool)

(assert (=> b!4191765 (= e!2602081 (and tp_is_empty!22117 tp!1280681))))

(assert (=> b!4191209 (= tp!1280621 e!2602081)))

(assert (= (and b!4191209 ((_ is Cons!46028) (t!345987 input!3342))) b!4191765))

(declare-fun b!4191766 () Bool)

(declare-fun e!2602082 () Bool)

(declare-fun tp!1280682 () Bool)

(assert (=> b!4191766 (= e!2602082 (and tp_is_empty!22117 tp!1280682))))

(assert (=> b!4191194 (= tp!1280625 e!2602082)))

(assert (= (and b!4191194 ((_ is Cons!46028) (t!345987 p!2959))) b!4191766))

(declare-fun b!4191767 () Bool)

(declare-fun e!2602083 () Bool)

(declare-fun tp!1280683 () Bool)

(assert (=> b!4191767 (= e!2602083 (and tp_is_empty!22117 tp!1280683))))

(assert (=> b!4191205 (= tp!1280617 e!2602083)))

(assert (= (and b!4191205 ((_ is Cons!46028) (t!345987 pBis!107))) b!4191767))

(declare-fun b!4191779 () Bool)

(declare-fun e!2602086 () Bool)

(declare-fun tp!1280695 () Bool)

(declare-fun tp!1280696 () Bool)

(assert (=> b!4191779 (= e!2602086 (and tp!1280695 tp!1280696))))

(declare-fun b!4191781 () Bool)

(declare-fun tp!1280698 () Bool)

(declare-fun tp!1280697 () Bool)

(assert (=> b!4191781 (= e!2602086 (and tp!1280698 tp!1280697))))

(declare-fun b!4191778 () Bool)

(assert (=> b!4191778 (= e!2602086 tp_is_empty!22117)))

(assert (=> b!4191189 (= tp!1280618 e!2602086)))

(declare-fun b!4191780 () Bool)

(declare-fun tp!1280694 () Bool)

(assert (=> b!4191780 (= e!2602086 tp!1280694)))

(assert (= (and b!4191189 ((_ is ElementMatch!12577) (regex!7672 r!4142))) b!4191778))

(assert (= (and b!4191189 ((_ is Concat!20480) (regex!7672 r!4142))) b!4191779))

(assert (= (and b!4191189 ((_ is Star!12577) (regex!7672 r!4142))) b!4191780))

(assert (= (and b!4191189 ((_ is Union!12577) (regex!7672 r!4142))) b!4191781))

(declare-fun b!4191783 () Bool)

(declare-fun e!2602087 () Bool)

(declare-fun tp!1280700 () Bool)

(declare-fun tp!1280701 () Bool)

(assert (=> b!4191783 (= e!2602087 (and tp!1280700 tp!1280701))))

(declare-fun b!4191785 () Bool)

(declare-fun tp!1280703 () Bool)

(declare-fun tp!1280702 () Bool)

(assert (=> b!4191785 (= e!2602087 (and tp!1280703 tp!1280702))))

(declare-fun b!4191782 () Bool)

(assert (=> b!4191782 (= e!2602087 tp_is_empty!22117)))

(assert (=> b!4191216 (= tp!1280620 e!2602087)))

(declare-fun b!4191784 () Bool)

(declare-fun tp!1280699 () Bool)

(assert (=> b!4191784 (= e!2602087 tp!1280699)))

(assert (= (and b!4191216 ((_ is ElementMatch!12577) (regex!7672 rBis!167))) b!4191782))

(assert (= (and b!4191216 ((_ is Concat!20480) (regex!7672 rBis!167))) b!4191783))

(assert (= (and b!4191216 ((_ is Star!12577) (regex!7672 rBis!167))) b!4191784))

(assert (= (and b!4191216 ((_ is Union!12577) (regex!7672 rBis!167))) b!4191785))

(declare-fun b!4191787 () Bool)

(declare-fun e!2602088 () Bool)

(declare-fun tp!1280705 () Bool)

(declare-fun tp!1280706 () Bool)

(assert (=> b!4191787 (= e!2602088 (and tp!1280705 tp!1280706))))

(declare-fun b!4191789 () Bool)

(declare-fun tp!1280708 () Bool)

(declare-fun tp!1280707 () Bool)

(assert (=> b!4191789 (= e!2602088 (and tp!1280708 tp!1280707))))

(declare-fun b!4191786 () Bool)

(assert (=> b!4191786 (= e!2602088 tp_is_empty!22117)))

(assert (=> b!4191190 (= tp!1280627 e!2602088)))

(declare-fun b!4191788 () Bool)

(declare-fun tp!1280704 () Bool)

(assert (=> b!4191788 (= e!2602088 tp!1280704)))

(assert (= (and b!4191190 ((_ is ElementMatch!12577) (regex!7672 (h!51449 rules!3843)))) b!4191786))

(assert (= (and b!4191190 ((_ is Concat!20480) (regex!7672 (h!51449 rules!3843)))) b!4191787))

(assert (= (and b!4191190 ((_ is Star!12577) (regex!7672 (h!51449 rules!3843)))) b!4191788))

(assert (= (and b!4191190 ((_ is Union!12577) (regex!7672 (h!51449 rules!3843)))) b!4191789))

(declare-fun b!4191800 () Bool)

(declare-fun b_free!122039 () Bool)

(declare-fun b_next!122743 () Bool)

(assert (=> b!4191800 (= b_free!122039 (not b_next!122743))))

(declare-fun t!346032 () Bool)

(declare-fun tb!251093 () Bool)

(assert (=> (and b!4191800 (= (toValue!10368 (transformation!7672 (h!51449 (t!345988 rules!3843)))) (toValue!10368 (transformation!7672 r!4142))) t!346032) tb!251093))

(declare-fun result!306038 () Bool)

(assert (= result!306038 result!305984))

(assert (=> d!1236317 t!346032))

(assert (=> d!1236329 t!346032))

(declare-fun tp!1280720 () Bool)

(declare-fun b_and!328465 () Bool)

(assert (=> b!4191800 (= tp!1280720 (and (=> t!346032 result!306038) b_and!328465))))

(declare-fun b_free!122041 () Bool)

(declare-fun b_next!122745 () Bool)

(assert (=> b!4191800 (= b_free!122041 (not b_next!122745))))

(declare-fun tb!251095 () Bool)

(declare-fun t!346034 () Bool)

(assert (=> (and b!4191800 (= (toChars!10227 (transformation!7672 (h!51449 (t!345988 rules!3843)))) (toChars!10227 (transformation!7672 r!4142))) t!346034) tb!251095))

(declare-fun result!306040 () Bool)

(assert (= result!306040 result!306018))

(assert (=> d!1236329 t!346034))

(declare-fun t!346036 () Bool)

(declare-fun tb!251097 () Bool)

(assert (=> (and b!4191800 (= (toChars!10227 (transformation!7672 (h!51449 (t!345988 rules!3843)))) (toChars!10227 (transformation!7672 (rule!10756 (_1!25047 lt!1492750))))) t!346036) tb!251097))

(declare-fun result!306042 () Bool)

(assert (= result!306042 result!306026))

(assert (=> d!1236395 t!346036))

(declare-fun tp!1280717 () Bool)

(declare-fun b_and!328467 () Bool)

(assert (=> b!4191800 (= tp!1280717 (and (=> t!346034 result!306040) (=> t!346036 result!306042) b_and!328467))))

(declare-fun e!2602099 () Bool)

(assert (=> b!4191800 (= e!2602099 (and tp!1280720 tp!1280717))))

(declare-fun b!4191799 () Bool)

(declare-fun tp!1280719 () Bool)

(declare-fun e!2602100 () Bool)

(assert (=> b!4191799 (= e!2602100 (and tp!1280719 (inv!60576 (tag!8536 (h!51449 (t!345988 rules!3843)))) (inv!60578 (transformation!7672 (h!51449 (t!345988 rules!3843)))) e!2602099))))

(declare-fun b!4191798 () Bool)

(declare-fun e!2602097 () Bool)

(declare-fun tp!1280718 () Bool)

(assert (=> b!4191798 (= e!2602097 (and e!2602100 tp!1280718))))

(assert (=> b!4191218 (= tp!1280624 e!2602097)))

(assert (= b!4191799 b!4191800))

(assert (= b!4191798 b!4191799))

(assert (= (and b!4191218 ((_ is Cons!46029) (t!345988 rules!3843))) b!4191798))

(declare-fun m!4780535 () Bool)

(assert (=> b!4191799 m!4780535))

(declare-fun m!4780537 () Bool)

(assert (=> b!4191799 m!4780537))

(declare-fun b_lambda!123289 () Bool)

(assert (= b_lambda!123283 (or (and b!4191217 b_free!122025 (= (toChars!10227 (transformation!7672 (h!51449 rules!3843))) (toChars!10227 (transformation!7672 r!4142)))) (and b!4191199 b_free!122029 (= (toChars!10227 (transformation!7672 rBis!167)) (toChars!10227 (transformation!7672 r!4142)))) (and b!4191206 b_free!122033) (and b!4191800 b_free!122041 (= (toChars!10227 (transformation!7672 (h!51449 (t!345988 rules!3843)))) (toChars!10227 (transformation!7672 r!4142)))) b_lambda!123289)))

(declare-fun b_lambda!123291 () Bool)

(assert (= b_lambda!123269 (or (and b!4191217 b_free!122023 (= (toValue!10368 (transformation!7672 (h!51449 rules!3843))) (toValue!10368 (transformation!7672 r!4142)))) (and b!4191199 b_free!122027 (= (toValue!10368 (transformation!7672 rBis!167)) (toValue!10368 (transformation!7672 r!4142)))) (and b!4191206 b_free!122031) (and b!4191800 b_free!122039 (= (toValue!10368 (transformation!7672 (h!51449 (t!345988 rules!3843)))) (toValue!10368 (transformation!7672 r!4142)))) b_lambda!123291)))

(declare-fun b_lambda!123293 () Bool)

(assert (= b_lambda!123285 (or (and b!4191217 b_free!122023 (= (toValue!10368 (transformation!7672 (h!51449 rules!3843))) (toValue!10368 (transformation!7672 r!4142)))) (and b!4191199 b_free!122027 (= (toValue!10368 (transformation!7672 rBis!167)) (toValue!10368 (transformation!7672 r!4142)))) (and b!4191206 b_free!122031) (and b!4191800 b_free!122039 (= (toValue!10368 (transformation!7672 (h!51449 (t!345988 rules!3843)))) (toValue!10368 (transformation!7672 r!4142)))) b_lambda!123293)))

(check-sat b_and!328465 (not b!4191781) (not b!4191789) (not b!4191341) (not b!4191431) (not tb!251057) (not b!4191779) (not b!4191483) b_and!328453 (not b!4191481) (not d!1236289) (not tb!251087) (not b!4191489) (not b_lambda!123287) (not b!4191421) (not b!4191267) (not b!4191502) (not b!4191339) (not b!4191497) (not b!4191718) (not b!4191392) (not b!4191411) (not d!1236399) tp_is_empty!22117 (not d!1236263) (not b!4191412) (not b!4191265) (not bm!292187) (not b!4191500) (not b!4191752) (not b!4191503) (not b!4191418) (not b!4191728) (not b!4191510) (not b!4191745) (not b!4191755) (not d!1236307) (not d!1236311) (not bm!292178) (not d!1236329) (not b_lambda!123291) (not b_next!122729) (not b!4191784) (not b!4191506) (not b_next!122727) (not b!4191347) (not b!4191714) (not b_next!122745) (not b!4191509) (not b!4191507) (not d!1236323) (not b!4191505) (not b!4191767) b_and!328463 (not d!1236303) (not b_next!122743) (not b!4191758) (not b!4191425) (not b!4191385) (not d!1236275) (not b!4191364) (not d!1236295) (not b!4191785) (not b!4191788) (not b!4191787) (not b!4191413) (not b!4191748) (not b_next!122731) (not b!4191457) (not b!4191346) (not d!1236383) (not b!4191731) (not b!4191429) (not b!4191734) b_and!328467 (not b_next!122733) b_and!328459 (not b!4191351) (not b!4191490) (not b_lambda!123289) (not bm!292185) (not d!1236315) (not b!4191735) (not b!4191799) (not tb!251081) (not bm!292190) (not bm!292203) (not d!1236391) (not b!4191488) (not b!4191414) (not b!4191746) (not d!1236301) (not b!4191417) (not b!4191266) (not d!1236327) (not b!4191504) (not b_next!122735) (not b!4191749) (not b!4191435) (not b!4191712) (not b!4191756) (not d!1236257) (not b!4191511) (not d!1236387) (not b!4191760) (not b!4191485) (not b!4191798) (not d!1236325) (not b!4191430) (not b!4191783) (not b!4191270) (not b!4191423) (not b!4191733) (not b!4191486) (not d!1236265) b_and!328455 (not d!1236393) b_and!328457 (not b!4191419) (not b!4191765) (not b!4191766) (not b!4191754) (not d!1236395) (not d!1236299) (not bm!292201) (not d!1236319) (not b!4191780) (not b!4191255) (not b!4191501) (not b!4191415) (not b_lambda!123293) (not b_next!122737) (not d!1236401) b_and!328461 (not bm!292168) (not b!4191484) (not b!4191759) (not b!4191487) (not b!4191345))
(check-sat b_and!328453 (not b_next!122729) b_and!328465 (not b_next!122731) (not b_next!122735) b_and!328455 b_and!328457 (not b_next!122737) b_and!328461 (not b_next!122727) (not b_next!122745) b_and!328463 (not b_next!122743) b_and!328467 (not b_next!122733) b_and!328459)
