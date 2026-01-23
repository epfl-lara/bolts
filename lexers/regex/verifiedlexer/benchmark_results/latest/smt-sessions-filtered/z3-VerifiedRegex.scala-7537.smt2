; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397910 () Bool)

(assert start!397910)

(declare-fun b!4173239 () Bool)

(declare-fun b_free!120871 () Bool)

(declare-fun b_next!121575 () Bool)

(assert (=> b!4173239 (= b_free!120871 (not b_next!121575))))

(declare-fun tp!1275160 () Bool)

(declare-fun b_and!326029 () Bool)

(assert (=> b!4173239 (= tp!1275160 b_and!326029)))

(declare-fun b_free!120873 () Bool)

(declare-fun b_next!121577 () Bool)

(assert (=> b!4173239 (= b_free!120873 (not b_next!121577))))

(declare-fun tp!1275156 () Bool)

(declare-fun b_and!326031 () Bool)

(assert (=> b!4173239 (= tp!1275156 b_and!326031)))

(declare-fun b!4173240 () Bool)

(declare-fun b_free!120875 () Bool)

(declare-fun b_next!121579 () Bool)

(assert (=> b!4173240 (= b_free!120875 (not b_next!121579))))

(declare-fun tp!1275162 () Bool)

(declare-fun b_and!326033 () Bool)

(assert (=> b!4173240 (= tp!1275162 b_and!326033)))

(declare-fun b_free!120877 () Bool)

(declare-fun b_next!121581 () Bool)

(assert (=> b!4173240 (= b_free!120877 (not b_next!121581))))

(declare-fun tp!1275164 () Bool)

(declare-fun b_and!326035 () Bool)

(assert (=> b!4173240 (= tp!1275164 b_and!326035)))

(declare-fun b!4173235 () Bool)

(declare-fun b_free!120879 () Bool)

(declare-fun b_next!121583 () Bool)

(assert (=> b!4173235 (= b_free!120879 (not b_next!121583))))

(declare-fun tp!1275154 () Bool)

(declare-fun b_and!326037 () Bool)

(assert (=> b!4173235 (= tp!1275154 b_and!326037)))

(declare-fun b_free!120881 () Bool)

(declare-fun b_next!121585 () Bool)

(assert (=> b!4173235 (= b_free!120881 (not b_next!121585))))

(declare-fun tp!1275158 () Bool)

(declare-fun b_and!326039 () Bool)

(assert (=> b!4173235 (= tp!1275158 b_and!326039)))

(declare-fun b!4173217 () Bool)

(declare-fun e!2590815 () Bool)

(declare-fun tp_is_empty!21953 () Bool)

(declare-fun tp!1275161 () Bool)

(assert (=> b!4173217 (= e!2590815 (and tp_is_empty!21953 tp!1275161))))

(declare-fun b!4173218 () Bool)

(declare-fun res!1710147 () Bool)

(declare-fun e!2590802 () Bool)

(assert (=> b!4173218 (=> (not res!1710147) (not e!2590802))))

(declare-datatypes ((List!45869 0))(
  ( (Nil!45745) (Cons!45745 (h!51165 (_ BitVec 16)) (t!344564 List!45869)) )
))
(declare-datatypes ((TokenValue!7820 0))(
  ( (FloatLiteralValue!15640 (text!55185 List!45869)) (TokenValueExt!7819 (__x!27861 Int)) (Broken!39100 (value!236821 List!45869)) (Object!7943) (End!7820) (Def!7820) (Underscore!7820) (Match!7820) (Else!7820) (Error!7820) (Case!7820) (If!7820) (Extends!7820) (Abstract!7820) (Class!7820) (Val!7820) (DelimiterValue!15640 (del!7880 List!45869)) (KeywordValue!7826 (value!236822 List!45869)) (CommentValue!15640 (value!236823 List!45869)) (WhitespaceValue!15640 (value!236824 List!45869)) (IndentationValue!7820 (value!236825 List!45869)) (String!52965) (Int32!7820) (Broken!39101 (value!236826 List!45869)) (Boolean!7821) (Unit!64814) (OperatorValue!7823 (op!7880 List!45869)) (IdentifierValue!15640 (value!236827 List!45869)) (IdentifierValue!15641 (value!236828 List!45869)) (WhitespaceValue!15641 (value!236829 List!45869)) (True!15640) (False!15640) (Broken!39102 (value!236830 List!45869)) (Broken!39103 (value!236831 List!45869)) (True!15641) (RightBrace!7820) (RightBracket!7820) (Colon!7820) (Null!7820) (Comma!7820) (LeftBracket!7820) (False!15641) (LeftBrace!7820) (ImaginaryLiteralValue!7820 (text!55186 List!45869)) (StringLiteralValue!23460 (value!236832 List!45869)) (EOFValue!7820 (value!236833 List!45869)) (IdentValue!7820 (value!236834 List!45869)) (DelimiterValue!15641 (value!236835 List!45869)) (DedentValue!7820 (value!236836 List!45869)) (NewLineValue!7820 (value!236837 List!45869)) (IntegerValue!23460 (value!236838 (_ BitVec 32)) (text!55187 List!45869)) (IntegerValue!23461 (value!236839 Int) (text!55188 List!45869)) (Times!7820) (Or!7820) (Equal!7820) (Minus!7820) (Broken!39104 (value!236840 List!45869)) (And!7820) (Div!7820) (LessEqual!7820) (Mod!7820) (Concat!20315) (Not!7820) (Plus!7820) (SpaceValue!7820 (value!236841 List!45869)) (IntegerValue!23462 (value!236842 Int) (text!55189 List!45869)) (StringLiteralValue!23461 (text!55190 List!45869)) (FloatLiteralValue!15641 (text!55191 List!45869)) (BytesLiteralValue!7820 (value!236843 List!45869)) (CommentValue!15641 (value!236844 List!45869)) (StringLiteralValue!23462 (value!236845 List!45869)) (ErrorTokenValue!7820 (msg!7881 List!45869)) )
))
(declare-datatypes ((C!25180 0))(
  ( (C!25181 (val!14752 Int)) )
))
(declare-datatypes ((Regex!12495 0))(
  ( (ElementMatch!12495 (c!713188 C!25180)) (Concat!20316 (regOne!25502 Regex!12495) (regTwo!25502 Regex!12495)) (EmptyExpr!12495) (Star!12495 (reg!12824 Regex!12495)) (EmptyLang!12495) (Union!12495 (regOne!25503 Regex!12495) (regTwo!25503 Regex!12495)) )
))
(declare-datatypes ((String!52966 0))(
  ( (String!52967 (value!236846 String)) )
))
(declare-datatypes ((List!45870 0))(
  ( (Nil!45746) (Cons!45746 (h!51166 C!25180) (t!344565 List!45870)) )
))
(declare-datatypes ((IArray!27607 0))(
  ( (IArray!27608 (innerList!13861 List!45870)) )
))
(declare-datatypes ((Conc!13801 0))(
  ( (Node!13801 (left!34094 Conc!13801) (right!34424 Conc!13801) (csize!27832 Int) (cheight!14012 Int)) (Leaf!21339 (xs!17107 IArray!27607) (csize!27833 Int)) (Empty!13801) )
))
(declare-datatypes ((BalanceConc!27196 0))(
  ( (BalanceConc!27197 (c!713189 Conc!13801)) )
))
(declare-datatypes ((TokenValueInjection!15068 0))(
  ( (TokenValueInjection!15069 (toValue!10274 Int) (toChars!10133 Int)) )
))
(declare-datatypes ((Rule!14980 0))(
  ( (Rule!14981 (regex!7590 Regex!12495) (tag!8454 String!52966) (isSeparator!7590 Bool) (transformation!7590 TokenValueInjection!15068)) )
))
(declare-datatypes ((List!45871 0))(
  ( (Nil!45747) (Cons!45747 (h!51167 Rule!14980) (t!344566 List!45871)) )
))
(declare-fun rules!3843 () List!45871)

(declare-fun isEmpty!27059 (List!45871) Bool)

(assert (=> b!4173218 (= res!1710147 (not (isEmpty!27059 rules!3843)))))

(declare-fun e!2590813 () Bool)

(declare-fun e!2590807 () Bool)

(declare-fun rBis!167 () Rule!14980)

(declare-fun b!4173219 () Bool)

(declare-fun tp!1275165 () Bool)

(declare-fun inv!60276 (String!52966) Bool)

(declare-fun inv!60278 (TokenValueInjection!15068) Bool)

(assert (=> b!4173219 (= e!2590813 (and tp!1275165 (inv!60276 (tag!8454 rBis!167)) (inv!60278 (transformation!7590 rBis!167)) e!2590807))))

(declare-fun b!4173220 () Bool)

(declare-fun e!2590809 () Bool)

(declare-fun tp!1275159 () Bool)

(assert (=> b!4173220 (= e!2590809 (and tp_is_empty!21953 tp!1275159))))

(declare-fun b!4173221 () Bool)

(declare-fun res!1710155 () Bool)

(assert (=> b!4173221 (=> (not res!1710155) (not e!2590802))))

(declare-fun pBis!107 () List!45870)

(declare-fun input!3342 () List!45870)

(declare-fun isPrefix!4447 (List!45870 List!45870) Bool)

(assert (=> b!4173221 (= res!1710155 (isPrefix!4447 pBis!107 input!3342))))

(declare-fun b!4173222 () Bool)

(declare-fun res!1710149 () Bool)

(assert (=> b!4173222 (=> (not res!1710149) (not e!2590802))))

(declare-datatypes ((LexerInterface!7183 0))(
  ( (LexerInterfaceExt!7180 (__x!27862 Int)) (Lexer!7181) )
))
(declare-fun thiss!25986 () LexerInterface!7183)

(declare-fun r!4142 () Rule!14980)

(declare-fun ruleValid!3308 (LexerInterface!7183 Rule!14980) Bool)

(assert (=> b!4173222 (= res!1710149 (ruleValid!3308 thiss!25986 r!4142))))

(declare-fun b!4173223 () Bool)

(declare-fun e!2590801 () Bool)

(declare-fun e!2590814 () Bool)

(declare-fun tp!1275163 () Bool)

(assert (=> b!4173223 (= e!2590801 (and e!2590814 tp!1275163))))

(declare-fun b!4173224 () Bool)

(declare-fun res!1710146 () Bool)

(assert (=> b!4173224 (=> (not res!1710146) (not e!2590802))))

(declare-fun contains!9393 (List!45871 Rule!14980) Bool)

(assert (=> b!4173224 (= res!1710146 (contains!9393 rules!3843 r!4142))))

(declare-fun b!4173225 () Bool)

(declare-fun res!1710145 () Bool)

(assert (=> b!4173225 (=> (not res!1710145) (not e!2590802))))

(declare-fun p!2959 () List!45870)

(declare-fun matchR!6234 (Regex!12495 List!45870) Bool)

(assert (=> b!4173225 (= res!1710145 (matchR!6234 (regex!7590 r!4142) p!2959))))

(declare-fun tp!1275157 () Bool)

(declare-fun b!4173227 () Bool)

(declare-fun e!2590810 () Bool)

(assert (=> b!4173227 (= e!2590814 (and tp!1275157 (inv!60276 (tag!8454 (h!51167 rules!3843))) (inv!60278 (transformation!7590 (h!51167 rules!3843))) e!2590810))))

(declare-fun b!4173228 () Bool)

(declare-fun res!1710150 () Bool)

(assert (=> b!4173228 (=> (not res!1710150) (not e!2590802))))

(declare-fun rulesInvariant!6396 (LexerInterface!7183 List!45871) Bool)

(assert (=> b!4173228 (= res!1710150 (rulesInvariant!6396 thiss!25986 rules!3843))))

(declare-fun b!4173229 () Bool)

(declare-fun res!1710152 () Bool)

(assert (=> b!4173229 (=> (not res!1710152) (not e!2590802))))

(declare-fun validRegex!5612 (Regex!12495) Bool)

(assert (=> b!4173229 (= res!1710152 (validRegex!5612 (regex!7590 r!4142)))))

(declare-fun b!4173230 () Bool)

(declare-fun res!1710154 () Bool)

(declare-fun e!2590803 () Bool)

(assert (=> b!4173230 (=> res!1710154 e!2590803)))

(assert (=> b!4173230 (= res!1710154 (not (ruleValid!3308 thiss!25986 rBis!167)))))

(declare-fun b!4173231 () Bool)

(declare-fun res!1710157 () Bool)

(assert (=> b!4173231 (=> res!1710157 e!2590803)))

(declare-datatypes ((Token!13894 0))(
  ( (Token!13895 (value!236847 TokenValue!7820) (rule!10640 Rule!14980) (size!33579 Int) (originalCharacters!7978 List!45870)) )
))
(declare-datatypes ((tuple2!43598 0))(
  ( (tuple2!43599 (_1!24933 Token!13894) (_2!24933 List!45870)) )
))
(declare-datatypes ((Option!9786 0))(
  ( (None!9785) (Some!9785 (v!40581 tuple2!43598)) )
))
(declare-fun lt!1485951 () Option!9786)

(declare-fun maxPrefix!4235 (LexerInterface!7183 List!45871 List!45870) Option!9786)

(assert (=> b!4173231 (= res!1710157 (not (= (maxPrefix!4235 thiss!25986 rules!3843 input!3342) lt!1485951)))))

(declare-fun b!4173232 () Bool)

(declare-fun e!2590806 () Bool)

(declare-fun tp!1275155 () Bool)

(assert (=> b!4173232 (= e!2590806 (and tp_is_empty!21953 tp!1275155))))

(declare-fun tp!1275166 () Bool)

(declare-fun e!2590812 () Bool)

(declare-fun e!2590816 () Bool)

(declare-fun b!4173233 () Bool)

(assert (=> b!4173233 (= e!2590812 (and tp!1275166 (inv!60276 (tag!8454 r!4142)) (inv!60278 (transformation!7590 r!4142)) e!2590816))))

(declare-fun b!4173234 () Bool)

(declare-fun res!1710153 () Bool)

(assert (=> b!4173234 (=> (not res!1710153) (not e!2590802))))

(assert (=> b!4173234 (= res!1710153 (isPrefix!4447 p!2959 input!3342))))

(assert (=> b!4173235 (= e!2590807 (and tp!1275154 tp!1275158))))

(declare-fun res!1710148 () Bool)

(assert (=> start!397910 (=> (not res!1710148) (not e!2590802))))

(get-info :version)

(assert (=> start!397910 (= res!1710148 ((_ is Lexer!7181) thiss!25986))))

(assert (=> start!397910 e!2590802))

(assert (=> start!397910 true))

(assert (=> start!397910 e!2590813))

(assert (=> start!397910 e!2590812))

(assert (=> start!397910 e!2590801))

(assert (=> start!397910 e!2590815))

(assert (=> start!397910 e!2590806))

(assert (=> start!397910 e!2590809))

(declare-fun b!4173226 () Bool)

(declare-fun e!2590811 () Bool)

(assert (=> b!4173226 (= e!2590811 e!2590803)))

(declare-fun res!1710156 () Bool)

(assert (=> b!4173226 (=> res!1710156 e!2590803)))

(declare-fun lt!1485958 () Int)

(declare-fun lt!1485953 () Int)

(assert (=> b!4173226 (= res!1710156 (<= lt!1485958 lt!1485953))))

(declare-fun size!33580 (List!45870) Int)

(assert (=> b!4173226 (= lt!1485958 (size!33580 pBis!107))))

(declare-fun b!4173236 () Bool)

(assert (=> b!4173236 (= e!2590802 (not e!2590811))))

(declare-fun res!1710151 () Bool)

(assert (=> b!4173236 (=> res!1710151 e!2590811)))

(declare-fun maxPrefixOneRule!3194 (LexerInterface!7183 Rule!14980 List!45870) Option!9786)

(assert (=> b!4173236 (= res!1710151 (not (= (maxPrefixOneRule!3194 thiss!25986 r!4142 input!3342) lt!1485951)))))

(declare-fun lt!1485955 () TokenValue!7820)

(declare-fun getSuffix!2742 (List!45870 List!45870) List!45870)

(assert (=> b!4173236 (= lt!1485951 (Some!9785 (tuple2!43599 (Token!13895 lt!1485955 r!4142 lt!1485953 p!2959) (getSuffix!2742 input!3342 p!2959))))))

(assert (=> b!4173236 (= lt!1485953 (size!33580 p!2959))))

(declare-fun lt!1485956 () BalanceConc!27196)

(declare-fun apply!10555 (TokenValueInjection!15068 BalanceConc!27196) TokenValue!7820)

(assert (=> b!4173236 (= lt!1485955 (apply!10555 (transformation!7590 r!4142) lt!1485956))))

(assert (=> b!4173236 (isPrefix!4447 input!3342 input!3342)))

(declare-datatypes ((Unit!64815 0))(
  ( (Unit!64816) )
))
(declare-fun lt!1485952 () Unit!64815)

(declare-fun lemmaIsPrefixRefl!2876 (List!45870 List!45870) Unit!64815)

(assert (=> b!4173236 (= lt!1485952 (lemmaIsPrefixRefl!2876 input!3342 input!3342))))

(declare-fun lt!1485950 () Unit!64815)

(declare-fun lemmaSemiInverse!2356 (TokenValueInjection!15068 BalanceConc!27196) Unit!64815)

(assert (=> b!4173236 (= lt!1485950 (lemmaSemiInverse!2356 (transformation!7590 r!4142) lt!1485956))))

(declare-fun seqFromList!5615 (List!45870) BalanceConc!27196)

(assert (=> b!4173236 (= lt!1485956 (seqFromList!5615 p!2959))))

(declare-fun b!4173237 () Bool)

(declare-fun res!1710158 () Bool)

(assert (=> b!4173237 (=> (not res!1710158) (not e!2590802))))

(assert (=> b!4173237 (= res!1710158 (contains!9393 rules!3843 rBis!167))))

(declare-fun b!4173238 () Bool)

(assert (=> b!4173238 (= e!2590803 true)))

(declare-fun lt!1485954 () Bool)

(declare-fun rulesValidInductive!2796 (LexerInterface!7183 List!45871) Bool)

(assert (=> b!4173238 (= lt!1485954 (rulesValidInductive!2796 thiss!25986 rules!3843))))

(assert (=> b!4173238 (<= lt!1485958 (size!33580 input!3342))))

(declare-fun lt!1485957 () Unit!64815)

(declare-fun lemmaIsPrefixThenSmallerEqSize!479 (List!45870 List!45870) Unit!64815)

(assert (=> b!4173238 (= lt!1485957 (lemmaIsPrefixThenSmallerEqSize!479 pBis!107 input!3342))))

(assert (=> b!4173239 (= e!2590816 (and tp!1275160 tp!1275156))))

(assert (=> b!4173240 (= e!2590810 (and tp!1275162 tp!1275164))))

(assert (= (and start!397910 res!1710148) b!4173234))

(assert (= (and b!4173234 res!1710153) b!4173221))

(assert (= (and b!4173221 res!1710155) b!4173218))

(assert (= (and b!4173218 res!1710147) b!4173228))

(assert (= (and b!4173228 res!1710150) b!4173224))

(assert (= (and b!4173224 res!1710146) b!4173237))

(assert (= (and b!4173237 res!1710158) b!4173229))

(assert (= (and b!4173229 res!1710152) b!4173225))

(assert (= (and b!4173225 res!1710145) b!4173222))

(assert (= (and b!4173222 res!1710149) b!4173236))

(assert (= (and b!4173236 (not res!1710151)) b!4173226))

(assert (= (and b!4173226 (not res!1710156)) b!4173230))

(assert (= (and b!4173230 (not res!1710154)) b!4173231))

(assert (= (and b!4173231 (not res!1710157)) b!4173238))

(assert (= b!4173219 b!4173235))

(assert (= start!397910 b!4173219))

(assert (= b!4173233 b!4173239))

(assert (= start!397910 b!4173233))

(assert (= b!4173227 b!4173240))

(assert (= b!4173223 b!4173227))

(assert (= (and start!397910 ((_ is Cons!45747) rules!3843)) b!4173223))

(assert (= (and start!397910 ((_ is Cons!45746) input!3342)) b!4173217))

(assert (= (and start!397910 ((_ is Cons!45746) pBis!107)) b!4173232))

(assert (= (and start!397910 ((_ is Cons!45746) p!2959)) b!4173220))

(declare-fun m!4763209 () Bool)

(assert (=> b!4173221 m!4763209))

(declare-fun m!4763211 () Bool)

(assert (=> b!4173227 m!4763211))

(declare-fun m!4763213 () Bool)

(assert (=> b!4173227 m!4763213))

(declare-fun m!4763215 () Bool)

(assert (=> b!4173222 m!4763215))

(declare-fun m!4763217 () Bool)

(assert (=> b!4173237 m!4763217))

(declare-fun m!4763219 () Bool)

(assert (=> b!4173225 m!4763219))

(declare-fun m!4763221 () Bool)

(assert (=> b!4173236 m!4763221))

(declare-fun m!4763223 () Bool)

(assert (=> b!4173236 m!4763223))

(declare-fun m!4763225 () Bool)

(assert (=> b!4173236 m!4763225))

(declare-fun m!4763227 () Bool)

(assert (=> b!4173236 m!4763227))

(declare-fun m!4763229 () Bool)

(assert (=> b!4173236 m!4763229))

(declare-fun m!4763231 () Bool)

(assert (=> b!4173236 m!4763231))

(declare-fun m!4763233 () Bool)

(assert (=> b!4173236 m!4763233))

(declare-fun m!4763235 () Bool)

(assert (=> b!4173236 m!4763235))

(declare-fun m!4763237 () Bool)

(assert (=> b!4173233 m!4763237))

(declare-fun m!4763239 () Bool)

(assert (=> b!4173233 m!4763239))

(declare-fun m!4763241 () Bool)

(assert (=> b!4173238 m!4763241))

(declare-fun m!4763243 () Bool)

(assert (=> b!4173238 m!4763243))

(declare-fun m!4763245 () Bool)

(assert (=> b!4173238 m!4763245))

(declare-fun m!4763247 () Bool)

(assert (=> b!4173234 m!4763247))

(declare-fun m!4763249 () Bool)

(assert (=> b!4173218 m!4763249))

(declare-fun m!4763251 () Bool)

(assert (=> b!4173229 m!4763251))

(declare-fun m!4763253 () Bool)

(assert (=> b!4173224 m!4763253))

(declare-fun m!4763255 () Bool)

(assert (=> b!4173230 m!4763255))

(declare-fun m!4763257 () Bool)

(assert (=> b!4173228 m!4763257))

(declare-fun m!4763259 () Bool)

(assert (=> b!4173231 m!4763259))

(declare-fun m!4763261 () Bool)

(assert (=> b!4173219 m!4763261))

(declare-fun m!4763263 () Bool)

(assert (=> b!4173219 m!4763263))

(declare-fun m!4763265 () Bool)

(assert (=> b!4173226 m!4763265))

(check-sat (not b!4173230) (not b!4173218) (not b!4173224) (not b!4173220) (not b!4173226) (not b_next!121583) b_and!326035 (not b_next!121577) (not b_next!121585) (not b!4173229) (not b!4173238) (not b!4173236) (not b!4173221) b_and!326039 (not b!4173237) (not b!4173217) (not b!4173225) (not b!4173222) b_and!326031 (not b_next!121575) (not b!4173231) (not b!4173232) tp_is_empty!21953 b_and!326029 (not b_next!121581) b_and!326037 b_and!326033 (not b!4173227) (not b!4173234) (not b_next!121579) (not b!4173228) (not b!4173233) (not b!4173223) (not b!4173219))
(check-sat b_and!326031 (not b_next!121583) b_and!326033 (not b_next!121579) b_and!326035 (not b_next!121577) (not b_next!121585) b_and!326039 (not b_next!121575) b_and!326029 (not b_next!121581) b_and!326037)
