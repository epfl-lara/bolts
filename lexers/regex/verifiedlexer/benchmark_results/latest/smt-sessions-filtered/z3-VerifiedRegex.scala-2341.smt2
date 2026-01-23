; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115470 () Bool)

(assert start!115470)

(declare-fun b!1308167 () Bool)

(declare-fun b_free!31459 () Bool)

(declare-fun b_next!32163 () Bool)

(assert (=> b!1308167 (= b_free!31459 (not b_next!32163))))

(declare-fun tp!381579 () Bool)

(declare-fun b_and!87359 () Bool)

(assert (=> b!1308167 (= tp!381579 b_and!87359)))

(declare-fun b_free!31461 () Bool)

(declare-fun b_next!32165 () Bool)

(assert (=> b!1308167 (= b_free!31461 (not b_next!32165))))

(declare-fun tp!381580 () Bool)

(declare-fun b_and!87361 () Bool)

(assert (=> b!1308167 (= tp!381580 b_and!87361)))

(declare-fun b!1308193 () Bool)

(declare-fun b_free!31463 () Bool)

(declare-fun b_next!32167 () Bool)

(assert (=> b!1308193 (= b_free!31463 (not b_next!32167))))

(declare-fun tp!381586 () Bool)

(declare-fun b_and!87363 () Bool)

(assert (=> b!1308193 (= tp!381586 b_and!87363)))

(declare-fun b_free!31465 () Bool)

(declare-fun b_next!32169 () Bool)

(assert (=> b!1308193 (= b_free!31465 (not b_next!32169))))

(declare-fun tp!381587 () Bool)

(declare-fun b_and!87365 () Bool)

(assert (=> b!1308193 (= tp!381587 b_and!87365)))

(declare-fun b!1308203 () Bool)

(declare-fun b_free!31467 () Bool)

(declare-fun b_next!32171 () Bool)

(assert (=> b!1308203 (= b_free!31467 (not b_next!32171))))

(declare-fun tp!381585 () Bool)

(declare-fun b_and!87367 () Bool)

(assert (=> b!1308203 (= tp!381585 b_and!87367)))

(declare-fun b_free!31469 () Bool)

(declare-fun b_next!32173 () Bool)

(assert (=> b!1308203 (= b_free!31469 (not b_next!32173))))

(declare-fun tp!381588 () Bool)

(declare-fun b_and!87369 () Bool)

(assert (=> b!1308203 (= tp!381588 b_and!87369)))

(declare-fun b!1308188 () Bool)

(assert (=> b!1308188 true))

(assert (=> b!1308188 true))

(declare-fun b!1308187 () Bool)

(assert (=> b!1308187 true))

(declare-fun b!1308171 () Bool)

(assert (=> b!1308171 true))

(declare-fun e!838935 () Bool)

(assert (=> b!1308167 (= e!838935 (and tp!381579 tp!381580))))

(declare-fun b!1308168 () Bool)

(declare-fun e!838930 () Bool)

(declare-fun e!838938 () Bool)

(assert (=> b!1308168 (= e!838930 e!838938)))

(declare-fun res!586920 () Bool)

(assert (=> b!1308168 (=> res!586920 e!838938)))

(declare-datatypes ((C!7500 0))(
  ( (C!7501 (val!4310 Int)) )
))
(declare-datatypes ((List!13306 0))(
  ( (Nil!13240) (Cons!13240 (h!18641 C!7500) (t!117929 List!13306)) )
))
(declare-fun lt!430667 () List!13306)

(declare-fun lt!430679 () C!7500)

(declare-fun contains!2283 (List!13306 C!7500) Bool)

(assert (=> b!1308168 (= res!586920 (not (contains!2283 lt!430667 lt!430679)))))

(declare-datatypes ((IArray!8709 0))(
  ( (IArray!8710 (innerList!4412 List!13306)) )
))
(declare-datatypes ((Conc!4352 0))(
  ( (Node!4352 (left!11387 Conc!4352) (right!11717 Conc!4352) (csize!8934 Int) (cheight!4563 Int)) (Leaf!6694 (xs!7067 IArray!8709) (csize!8935 Int)) (Empty!4352) )
))
(declare-datatypes ((BalanceConc!8644 0))(
  ( (BalanceConc!8645 (c!214788 Conc!4352)) )
))
(declare-fun lt!430662 () BalanceConc!8644)

(declare-fun apply!2971 (BalanceConc!8644 Int) C!7500)

(assert (=> b!1308168 (= lt!430679 (apply!2971 lt!430662 0))))

(declare-fun e!838946 () Bool)

(declare-datatypes ((List!13307 0))(
  ( (Nil!13241) (Cons!13241 (h!18642 (_ BitVec 16)) (t!117930 List!13307)) )
))
(declare-datatypes ((TokenValue!2381 0))(
  ( (FloatLiteralValue!4762 (text!17112 List!13307)) (TokenValueExt!2380 (__x!8591 Int)) (Broken!11905 (value!74900 List!13307)) (Object!2446) (End!2381) (Def!2381) (Underscore!2381) (Match!2381) (Else!2381) (Error!2381) (Case!2381) (If!2381) (Extends!2381) (Abstract!2381) (Class!2381) (Val!2381) (DelimiterValue!4762 (del!2441 List!13307)) (KeywordValue!2387 (value!74901 List!13307)) (CommentValue!4762 (value!74902 List!13307)) (WhitespaceValue!4762 (value!74903 List!13307)) (IndentationValue!2381 (value!74904 List!13307)) (String!16140) (Int32!2381) (Broken!11906 (value!74905 List!13307)) (Boolean!2382) (Unit!19309) (OperatorValue!2384 (op!2441 List!13307)) (IdentifierValue!4762 (value!74906 List!13307)) (IdentifierValue!4763 (value!74907 List!13307)) (WhitespaceValue!4763 (value!74908 List!13307)) (True!4762) (False!4762) (Broken!11907 (value!74909 List!13307)) (Broken!11908 (value!74910 List!13307)) (True!4763) (RightBrace!2381) (RightBracket!2381) (Colon!2381) (Null!2381) (Comma!2381) (LeftBracket!2381) (False!4763) (LeftBrace!2381) (ImaginaryLiteralValue!2381 (text!17113 List!13307)) (StringLiteralValue!7143 (value!74911 List!13307)) (EOFValue!2381 (value!74912 List!13307)) (IdentValue!2381 (value!74913 List!13307)) (DelimiterValue!4763 (value!74914 List!13307)) (DedentValue!2381 (value!74915 List!13307)) (NewLineValue!2381 (value!74916 List!13307)) (IntegerValue!7143 (value!74917 (_ BitVec 32)) (text!17114 List!13307)) (IntegerValue!7144 (value!74918 Int) (text!17115 List!13307)) (Times!2381) (Or!2381) (Equal!2381) (Minus!2381) (Broken!11909 (value!74919 List!13307)) (And!2381) (Div!2381) (LessEqual!2381) (Mod!2381) (Concat!5986) (Not!2381) (Plus!2381) (SpaceValue!2381 (value!74920 List!13307)) (IntegerValue!7145 (value!74921 Int) (text!17116 List!13307)) (StringLiteralValue!7144 (text!17117 List!13307)) (FloatLiteralValue!4763 (text!17118 List!13307)) (BytesLiteralValue!2381 (value!74922 List!13307)) (CommentValue!4763 (value!74923 List!13307)) (StringLiteralValue!7145 (value!74924 List!13307)) (ErrorTokenValue!2381 (msg!2442 List!13307)) )
))
(declare-datatypes ((Regex!3605 0))(
  ( (ElementMatch!3605 (c!214789 C!7500)) (Concat!5987 (regOne!7722 Regex!3605) (regTwo!7722 Regex!3605)) (EmptyExpr!3605) (Star!3605 (reg!3934 Regex!3605)) (EmptyLang!3605) (Union!3605 (regOne!7723 Regex!3605) (regTwo!7723 Regex!3605)) )
))
(declare-datatypes ((String!16141 0))(
  ( (String!16142 (value!74925 String)) )
))
(declare-datatypes ((TokenValueInjection!4422 0))(
  ( (TokenValueInjection!4423 (toValue!3510 Int) (toChars!3369 Int)) )
))
(declare-datatypes ((Rule!4382 0))(
  ( (Rule!4383 (regex!2291 Regex!3605) (tag!2553 String!16141) (isSeparator!2291 Bool) (transformation!2291 TokenValueInjection!4422)) )
))
(declare-datatypes ((Token!4244 0))(
  ( (Token!4245 (value!74926 TokenValue!2381) (rule!4030 Rule!4382) (size!10762 Int) (originalCharacters!3153 List!13306)) )
))
(declare-fun t1!34 () Token!4244)

(declare-fun tp!381583 () Bool)

(declare-fun b!1308169 () Bool)

(declare-fun e!838933 () Bool)

(declare-fun inv!21 (TokenValue!2381) Bool)

(assert (=> b!1308169 (= e!838946 (and (inv!21 (value!74926 t1!34)) e!838933 tp!381583))))

(declare-fun b!1308170 () Bool)

(declare-fun res!586915 () Bool)

(declare-fun e!838948 () Bool)

(assert (=> b!1308170 (=> (not res!586915) (not e!838948))))

(declare-datatypes ((LexerInterface!1986 0))(
  ( (LexerInterfaceExt!1983 (__x!8592 Int)) (Lexer!1984) )
))
(declare-fun thiss!19762 () LexerInterface!1986)

(declare-datatypes ((List!13308 0))(
  ( (Nil!13242) (Cons!13242 (h!18643 Rule!4382) (t!117931 List!13308)) )
))
(declare-fun rules!2550 () List!13308)

(declare-fun t2!34 () Token!4244)

(declare-fun rulesProduceIndividualToken!955 (LexerInterface!1986 List!13308 Token!4244) Bool)

(assert (=> b!1308170 (= res!586915 (rulesProduceIndividualToken!955 thiss!19762 rules!2550 t2!34))))

(declare-fun e!838949 () Bool)

(declare-fun e!838954 () Bool)

(assert (=> b!1308171 (= e!838949 e!838954)))

(declare-fun res!586923 () Bool)

(assert (=> b!1308171 (=> res!586923 e!838954)))

(declare-fun lambda!52639 () Int)

(declare-fun exists!284 (List!13308 Int) Bool)

(assert (=> b!1308171 (= res!586923 (not (exists!284 rules!2550 lambda!52639)))))

(assert (=> b!1308171 (exists!284 rules!2550 lambda!52639)))

(declare-fun lambda!52637 () Int)

(declare-fun lt!430671 () Regex!3605)

(declare-datatypes ((Unit!19310 0))(
  ( (Unit!19311) )
))
(declare-fun lt!430676 () Unit!19310)

(declare-fun lemmaMapContains!34 (List!13308 Int Regex!3605) Unit!19310)

(assert (=> b!1308171 (= lt!430676 (lemmaMapContains!34 rules!2550 lambda!52637 lt!430671))))

(declare-fun b!1308172 () Bool)

(declare-fun res!586937 () Bool)

(assert (=> b!1308172 (=> (not res!586937) (not e!838948))))

(assert (=> b!1308172 (= res!586937 (not (= (isSeparator!2291 (rule!4030 t1!34)) (isSeparator!2291 (rule!4030 t2!34)))))))

(declare-fun res!586926 () Bool)

(assert (=> start!115470 (=> (not res!586926) (not e!838948))))

(get-info :version)

(assert (=> start!115470 (= res!586926 ((_ is Lexer!1984) thiss!19762))))

(assert (=> start!115470 e!838948))

(assert (=> start!115470 true))

(declare-fun e!838936 () Bool)

(assert (=> start!115470 e!838936))

(declare-fun inv!17629 (Token!4244) Bool)

(assert (=> start!115470 (and (inv!17629 t1!34) e!838946)))

(declare-fun e!838953 () Bool)

(assert (=> start!115470 (and (inv!17629 t2!34) e!838953)))

(declare-fun b!1308173 () Bool)

(declare-fun res!586939 () Bool)

(declare-fun e!838931 () Bool)

(assert (=> b!1308173 (=> res!586939 e!838931)))

(declare-datatypes ((List!13309 0))(
  ( (Nil!13243) (Cons!13243 (h!18644 Token!4244) (t!117932 List!13309)) )
))
(declare-fun lt!430668 () List!13309)

(declare-fun lt!430682 () BalanceConc!8644)

(declare-datatypes ((tuple2!12842 0))(
  ( (tuple2!12843 (_1!7307 List!13309) (_2!7307 List!13306)) )
))
(declare-fun lexList!524 (LexerInterface!1986 List!13308 List!13306) tuple2!12842)

(declare-fun list!4966 (BalanceConc!8644) List!13306)

(assert (=> b!1308173 (= res!586939 (not (= (lexList!524 thiss!19762 rules!2550 (list!4966 lt!430682)) (tuple2!12843 lt!430668 Nil!13240))))))

(declare-fun b!1308174 () Bool)

(declare-fun res!586919 () Bool)

(assert (=> b!1308174 (=> res!586919 e!838938)))

(declare-fun lt!430672 () Regex!3605)

(declare-fun lt!430678 () List!13306)

(declare-fun matchR!1607 (Regex!3605 List!13306) Bool)

(assert (=> b!1308174 (= res!586919 (not (matchR!1607 lt!430672 lt!430678)))))

(declare-fun b!1308175 () Bool)

(declare-fun res!586914 () Bool)

(assert (=> b!1308175 (=> (not res!586914) (not e!838948))))

(declare-fun isEmpty!7826 (List!13308) Bool)

(assert (=> b!1308175 (= res!586914 (not (isEmpty!7826 rules!2550)))))

(declare-fun b!1308176 () Bool)

(declare-fun res!586932 () Bool)

(declare-fun e!838950 () Bool)

(assert (=> b!1308176 (=> res!586932 e!838950)))

(declare-datatypes ((IArray!8711 0))(
  ( (IArray!8712 (innerList!4413 List!13309)) )
))
(declare-datatypes ((Conc!4353 0))(
  ( (Node!4353 (left!11388 Conc!4353) (right!11718 Conc!4353) (csize!8936 Int) (cheight!4564 Int)) (Leaf!6695 (xs!7068 IArray!8711) (csize!8937 Int)) (Empty!4353) )
))
(declare-datatypes ((BalanceConc!8646 0))(
  ( (BalanceConc!8647 (c!214790 Conc!4353)) )
))
(declare-datatypes ((tuple2!12844 0))(
  ( (tuple2!12845 (_1!7308 BalanceConc!8646) (_2!7308 BalanceConc!8644)) )
))
(declare-fun lt!430663 () tuple2!12844)

(declare-fun isEmpty!7827 (BalanceConc!8644) Bool)

(assert (=> b!1308176 (= res!586932 (not (isEmpty!7827 (_2!7308 lt!430663))))))

(declare-fun b!1308177 () Bool)

(declare-fun res!586931 () Bool)

(assert (=> b!1308177 (=> res!586931 e!838938)))

(declare-fun lt!430680 () C!7500)

(assert (=> b!1308177 (= res!586931 (not (contains!2283 lt!430667 lt!430680)))))

(declare-fun b!1308178 () Bool)

(declare-fun res!586917 () Bool)

(assert (=> b!1308178 (=> res!586917 e!838938)))

(assert (=> b!1308178 (= res!586917 (not (contains!2283 lt!430678 lt!430680)))))

(declare-fun b!1308179 () Bool)

(declare-fun e!838947 () Bool)

(assert (=> b!1308179 (= e!838948 e!838947)))

(declare-fun res!586936 () Bool)

(assert (=> b!1308179 (=> (not res!586936) (not e!838947))))

(declare-fun lt!430665 () BalanceConc!8644)

(declare-fun size!10763 (BalanceConc!8644) Int)

(assert (=> b!1308179 (= res!586936 (> (size!10763 lt!430665) 0))))

(declare-fun charsOf!1263 (Token!4244) BalanceConc!8644)

(assert (=> b!1308179 (= lt!430665 (charsOf!1263 t2!34))))

(declare-fun b!1308180 () Bool)

(declare-fun tp!381582 () Bool)

(declare-fun inv!17626 (String!16141) Bool)

(declare-fun inv!17630 (TokenValueInjection!4422) Bool)

(assert (=> b!1308180 (= e!838933 (and tp!381582 (inv!17626 (tag!2553 (rule!4030 t1!34))) (inv!17630 (transformation!2291 (rule!4030 t1!34))) e!838935))))

(declare-fun b!1308181 () Bool)

(assert (=> b!1308181 (= e!838931 true)))

(declare-fun lt!430664 () List!13306)

(assert (=> b!1308181 (= lt!430664 (list!4966 lt!430665))))

(declare-fun b!1308182 () Bool)

(declare-fun e!838944 () Bool)

(assert (=> b!1308182 (= e!838944 e!838930)))

(declare-fun res!586940 () Bool)

(assert (=> b!1308182 (=> res!586940 e!838930)))

(declare-fun ++!3368 (List!13306 List!13306) List!13306)

(declare-fun getSuffix!461 (List!13306 List!13306) List!13306)

(assert (=> b!1308182 (= res!586940 (not (= lt!430678 (++!3368 lt!430667 (getSuffix!461 lt!430678 lt!430667)))))))

(declare-fun lambda!52636 () Int)

(declare-fun pickWitness!68 (Int) List!13306)

(assert (=> b!1308182 (= lt!430678 (pickWitness!68 lambda!52636))))

(declare-fun b!1308183 () Bool)

(declare-fun tp!381581 () Bool)

(declare-fun e!838951 () Bool)

(declare-fun e!838939 () Bool)

(assert (=> b!1308183 (= e!838951 (and tp!381581 (inv!17626 (tag!2553 (h!18643 rules!2550))) (inv!17630 (transformation!2291 (h!18643 rules!2550))) e!838939))))

(declare-fun b!1308184 () Bool)

(declare-fun res!586924 () Bool)

(assert (=> b!1308184 (=> res!586924 e!838938)))

(assert (=> b!1308184 (= res!586924 (not (contains!2283 lt!430678 lt!430679)))))

(declare-fun b!1308185 () Bool)

(declare-fun res!586918 () Bool)

(assert (=> b!1308185 (=> res!586918 e!838950)))

(declare-fun lt!430674 () List!13309)

(declare-fun lt!430673 () BalanceConc!8644)

(assert (=> b!1308185 (= res!586918 (not (= (lexList!524 thiss!19762 rules!2550 (list!4966 lt!430673)) (tuple2!12843 lt!430674 Nil!13240))))))

(declare-fun b!1308186 () Bool)

(declare-fun res!586927 () Bool)

(assert (=> b!1308186 (=> res!586927 e!838950)))

(declare-fun lt!430670 () List!13306)

(declare-datatypes ((tuple2!12846 0))(
  ( (tuple2!12847 (_1!7309 Token!4244) (_2!7309 List!13306)) )
))
(declare-datatypes ((Option!2556 0))(
  ( (None!2555) (Some!2555 (v!21061 tuple2!12846)) )
))
(declare-fun maxPrefix!996 (LexerInterface!1986 List!13308 List!13306) Option!2556)

(assert (=> b!1308186 (= res!586927 (not (= (maxPrefix!996 thiss!19762 rules!2550 lt!430670) (Some!2555 (tuple2!12847 t1!34 Nil!13240)))))))

(declare-fun e!838940 () Bool)

(assert (=> b!1308187 (= e!838938 e!838940)))

(declare-fun res!586935 () Bool)

(assert (=> b!1308187 (=> res!586935 e!838940)))

(declare-fun lambda!52638 () Int)

(declare-datatypes ((List!13310 0))(
  ( (Nil!13244) (Cons!13244 (h!18645 Regex!3605) (t!117933 List!13310)) )
))
(declare-fun exists!285 (List!13310 Int) Bool)

(declare-fun map!2903 (List!13308 Int) List!13310)

(assert (=> b!1308187 (= res!586935 (not (exists!285 (map!2903 rules!2550 lambda!52637) lambda!52638)))))

(declare-fun lt!430681 () List!13310)

(assert (=> b!1308187 (exists!285 lt!430681 lambda!52638)))

(declare-fun lt!430669 () Unit!19310)

(declare-fun matchRGenUnionSpec!42 (Regex!3605 List!13310 List!13306) Unit!19310)

(assert (=> b!1308187 (= lt!430669 (matchRGenUnionSpec!42 lt!430672 lt!430681 lt!430678))))

(assert (=> b!1308187 (= lt!430681 (map!2903 rules!2550 lambda!52637))))

(declare-fun e!838932 () Bool)

(assert (=> b!1308188 (= e!838932 (not e!838944))))

(declare-fun res!586933 () Bool)

(assert (=> b!1308188 (=> res!586933 e!838944)))

(declare-fun Exists!763 (Int) Bool)

(assert (=> b!1308188 (= res!586933 (not (Exists!763 lambda!52636)))))

(assert (=> b!1308188 (Exists!763 lambda!52636)))

(declare-fun lt!430677 () Unit!19310)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!81 (Regex!3605 List!13306) Unit!19310)

(assert (=> b!1308188 (= lt!430677 (lemmaPrefixMatchThenExistsStringThatMatches!81 lt!430672 lt!430667))))

(declare-fun b!1308189 () Bool)

(declare-fun res!586930 () Bool)

(assert (=> b!1308189 (=> res!586930 e!838931)))

(declare-fun lt!430666 () tuple2!12844)

(assert (=> b!1308189 (= res!586930 (not (isEmpty!7827 (_2!7308 lt!430666))))))

(declare-fun b!1308190 () Bool)

(declare-fun tp!381589 () Bool)

(declare-fun e!838941 () Bool)

(declare-fun e!838945 () Bool)

(assert (=> b!1308190 (= e!838945 (and tp!381589 (inv!17626 (tag!2553 (rule!4030 t2!34))) (inv!17630 (transformation!2291 (rule!4030 t2!34))) e!838941))))

(declare-fun b!1308191 () Bool)

(declare-fun res!586916 () Bool)

(assert (=> b!1308191 (=> (not res!586916) (not e!838947))))

(declare-fun sepAndNonSepRulesDisjointChars!664 (List!13308 List!13308) Bool)

(assert (=> b!1308191 (= res!586916 (sepAndNonSepRulesDisjointChars!664 rules!2550 rules!2550))))

(declare-fun b!1308192 () Bool)

(assert (=> b!1308192 (= e!838940 e!838949)))

(declare-fun res!586922 () Bool)

(assert (=> b!1308192 (=> res!586922 e!838949)))

(declare-fun contains!2284 (List!13310 Regex!3605) Bool)

(assert (=> b!1308192 (= res!586922 (not (contains!2284 (map!2903 rules!2550 lambda!52637) lt!430671)))))

(declare-fun getWitness!176 (List!13310 Int) Regex!3605)

(assert (=> b!1308192 (= lt!430671 (getWitness!176 (map!2903 rules!2550 lambda!52637) lambda!52638))))

(assert (=> b!1308193 (= e!838941 (and tp!381586 tp!381587))))

(declare-fun b!1308194 () Bool)

(assert (=> b!1308194 (= e!838947 e!838932)))

(declare-fun res!586929 () Bool)

(assert (=> b!1308194 (=> (not res!586929) (not e!838932))))

(declare-fun prefixMatch!118 (Regex!3605 List!13306) Bool)

(assert (=> b!1308194 (= res!586929 (prefixMatch!118 lt!430672 lt!430667))))

(declare-fun rulesRegex!176 (LexerInterface!1986 List!13308) Regex!3605)

(assert (=> b!1308194 (= lt!430672 (rulesRegex!176 thiss!19762 rules!2550))))

(assert (=> b!1308194 (= lt!430667 (++!3368 lt!430670 (Cons!13240 lt!430680 Nil!13240)))))

(assert (=> b!1308194 (= lt!430680 (apply!2971 lt!430665 0))))

(assert (=> b!1308194 (= lt!430670 (list!4966 lt!430662))))

(assert (=> b!1308194 (= lt!430662 (charsOf!1263 t1!34))))

(declare-fun b!1308195 () Bool)

(declare-fun tp!381584 () Bool)

(assert (=> b!1308195 (= e!838953 (and (inv!21 (value!74926 t2!34)) e!838945 tp!381584))))

(declare-fun b!1308196 () Bool)

(declare-fun res!586913 () Bool)

(assert (=> b!1308196 (=> (not res!586913) (not e!838947))))

(declare-fun separableTokensPredicate!269 (LexerInterface!1986 Token!4244 Token!4244 List!13308) Bool)

(assert (=> b!1308196 (= res!586913 (not (separableTokensPredicate!269 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1308197 () Bool)

(assert (=> b!1308197 (= e!838950 e!838931)))

(declare-fun res!586928 () Bool)

(assert (=> b!1308197 (=> res!586928 e!838931)))

(declare-fun list!4967 (BalanceConc!8646) List!13309)

(assert (=> b!1308197 (= res!586928 (not (= (list!4967 (_1!7308 lt!430666)) lt!430668)))))

(assert (=> b!1308197 (= lt!430668 (Cons!13243 t2!34 Nil!13243))))

(declare-fun lex!821 (LexerInterface!1986 List!13308 BalanceConc!8644) tuple2!12844)

(assert (=> b!1308197 (= lt!430666 (lex!821 thiss!19762 rules!2550 lt!430682))))

(declare-fun print!760 (LexerInterface!1986 BalanceConc!8646) BalanceConc!8644)

(declare-fun singletonSeq!862 (Token!4244) BalanceConc!8646)

(assert (=> b!1308197 (= lt!430682 (print!760 thiss!19762 (singletonSeq!862 t2!34)))))

(declare-fun b!1308198 () Bool)

(declare-fun res!586921 () Bool)

(assert (=> b!1308198 (=> (not res!586921) (not e!838948))))

(declare-fun rulesInvariant!1856 (LexerInterface!1986 List!13308) Bool)

(assert (=> b!1308198 (= res!586921 (rulesInvariant!1856 thiss!19762 rules!2550))))

(declare-fun b!1308199 () Bool)

(assert (=> b!1308199 (= e!838954 e!838950)))

(declare-fun res!586934 () Bool)

(assert (=> b!1308199 (=> res!586934 e!838950)))

(assert (=> b!1308199 (= res!586934 (not (= (list!4967 (_1!7308 lt!430663)) lt!430674)))))

(assert (=> b!1308199 (= lt!430674 (Cons!13243 t1!34 Nil!13243))))

(assert (=> b!1308199 (= lt!430663 (lex!821 thiss!19762 rules!2550 lt!430673))))

(assert (=> b!1308199 (= lt!430673 (print!760 thiss!19762 (singletonSeq!862 t1!34)))))

(declare-fun lt!430675 () Rule!4382)

(declare-fun getWitness!177 (List!13308 Int) Rule!4382)

(assert (=> b!1308199 (= lt!430675 (getWitness!177 rules!2550 lambda!52639))))

(declare-fun b!1308200 () Bool)

(declare-fun tp!381590 () Bool)

(assert (=> b!1308200 (= e!838936 (and e!838951 tp!381590))))

(declare-fun b!1308201 () Bool)

(declare-fun res!586925 () Bool)

(assert (=> b!1308201 (=> (not res!586925) (not e!838948))))

(assert (=> b!1308201 (= res!586925 (rulesProduceIndividualToken!955 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1308202 () Bool)

(declare-fun res!586938 () Bool)

(assert (=> b!1308202 (=> res!586938 e!838950)))

(declare-fun contains!2285 (List!13308 Rule!4382) Bool)

(assert (=> b!1308202 (= res!586938 (not (contains!2285 rules!2550 (rule!4030 t1!34))))))

(assert (=> b!1308203 (= e!838939 (and tp!381585 tp!381588))))

(assert (= (and start!115470 res!586926) b!1308175))

(assert (= (and b!1308175 res!586914) b!1308198))

(assert (= (and b!1308198 res!586921) b!1308201))

(assert (= (and b!1308201 res!586925) b!1308170))

(assert (= (and b!1308170 res!586915) b!1308172))

(assert (= (and b!1308172 res!586937) b!1308179))

(assert (= (and b!1308179 res!586936) b!1308191))

(assert (= (and b!1308191 res!586916) b!1308196))

(assert (= (and b!1308196 res!586913) b!1308194))

(assert (= (and b!1308194 res!586929) b!1308188))

(assert (= (and b!1308188 (not res!586933)) b!1308182))

(assert (= (and b!1308182 (not res!586940)) b!1308168))

(assert (= (and b!1308168 (not res!586920)) b!1308184))

(assert (= (and b!1308184 (not res!586924)) b!1308177))

(assert (= (and b!1308177 (not res!586931)) b!1308178))

(assert (= (and b!1308178 (not res!586917)) b!1308174))

(assert (= (and b!1308174 (not res!586919)) b!1308187))

(assert (= (and b!1308187 (not res!586935)) b!1308192))

(assert (= (and b!1308192 (not res!586922)) b!1308171))

(assert (= (and b!1308171 (not res!586923)) b!1308199))

(assert (= (and b!1308199 (not res!586934)) b!1308176))

(assert (= (and b!1308176 (not res!586932)) b!1308185))

(assert (= (and b!1308185 (not res!586918)) b!1308186))

(assert (= (and b!1308186 (not res!586927)) b!1308202))

(assert (= (and b!1308202 (not res!586938)) b!1308197))

(assert (= (and b!1308197 (not res!586928)) b!1308189))

(assert (= (and b!1308189 (not res!586930)) b!1308173))

(assert (= (and b!1308173 (not res!586939)) b!1308181))

(assert (= b!1308183 b!1308203))

(assert (= b!1308200 b!1308183))

(assert (= (and start!115470 ((_ is Cons!13242) rules!2550)) b!1308200))

(assert (= b!1308180 b!1308167))

(assert (= b!1308169 b!1308180))

(assert (= start!115470 b!1308169))

(assert (= b!1308190 b!1308193))

(assert (= b!1308195 b!1308190))

(assert (= start!115470 b!1308195))

(declare-fun m!1459665 () Bool)

(assert (=> b!1308202 m!1459665))

(declare-fun m!1459667 () Bool)

(assert (=> b!1308173 m!1459667))

(assert (=> b!1308173 m!1459667))

(declare-fun m!1459669 () Bool)

(assert (=> b!1308173 m!1459669))

(declare-fun m!1459671 () Bool)

(assert (=> b!1308184 m!1459671))

(declare-fun m!1459673 () Bool)

(assert (=> b!1308174 m!1459673))

(declare-fun m!1459675 () Bool)

(assert (=> b!1308199 m!1459675))

(declare-fun m!1459677 () Bool)

(assert (=> b!1308199 m!1459677))

(declare-fun m!1459679 () Bool)

(assert (=> b!1308199 m!1459679))

(assert (=> b!1308199 m!1459677))

(declare-fun m!1459681 () Bool)

(assert (=> b!1308199 m!1459681))

(declare-fun m!1459683 () Bool)

(assert (=> b!1308199 m!1459683))

(declare-fun m!1459685 () Bool)

(assert (=> b!1308198 m!1459685))

(declare-fun m!1459687 () Bool)

(assert (=> b!1308196 m!1459687))

(declare-fun m!1459689 () Bool)

(assert (=> b!1308189 m!1459689))

(declare-fun m!1459691 () Bool)

(assert (=> b!1308176 m!1459691))

(declare-fun m!1459693 () Bool)

(assert (=> b!1308171 m!1459693))

(assert (=> b!1308171 m!1459693))

(declare-fun m!1459695 () Bool)

(assert (=> b!1308171 m!1459695))

(declare-fun m!1459697 () Bool)

(assert (=> b!1308175 m!1459697))

(declare-fun m!1459699 () Bool)

(assert (=> b!1308180 m!1459699))

(declare-fun m!1459701 () Bool)

(assert (=> b!1308180 m!1459701))

(declare-fun m!1459703 () Bool)

(assert (=> b!1308185 m!1459703))

(assert (=> b!1308185 m!1459703))

(declare-fun m!1459705 () Bool)

(assert (=> b!1308185 m!1459705))

(declare-fun m!1459707 () Bool)

(assert (=> b!1308190 m!1459707))

(declare-fun m!1459709 () Bool)

(assert (=> b!1308190 m!1459709))

(declare-fun m!1459711 () Bool)

(assert (=> b!1308201 m!1459711))

(declare-fun m!1459713 () Bool)

(assert (=> b!1308187 m!1459713))

(declare-fun m!1459715 () Bool)

(assert (=> b!1308187 m!1459715))

(declare-fun m!1459717 () Bool)

(assert (=> b!1308187 m!1459717))

(assert (=> b!1308187 m!1459715))

(assert (=> b!1308187 m!1459715))

(declare-fun m!1459719 () Bool)

(assert (=> b!1308187 m!1459719))

(declare-fun m!1459721 () Bool)

(assert (=> b!1308188 m!1459721))

(assert (=> b!1308188 m!1459721))

(declare-fun m!1459723 () Bool)

(assert (=> b!1308188 m!1459723))

(declare-fun m!1459725 () Bool)

(assert (=> b!1308179 m!1459725))

(declare-fun m!1459727 () Bool)

(assert (=> b!1308179 m!1459727))

(declare-fun m!1459729 () Bool)

(assert (=> b!1308170 m!1459729))

(declare-fun m!1459731 () Bool)

(assert (=> b!1308177 m!1459731))

(declare-fun m!1459733 () Bool)

(assert (=> b!1308186 m!1459733))

(declare-fun m!1459735 () Bool)

(assert (=> b!1308182 m!1459735))

(assert (=> b!1308182 m!1459735))

(declare-fun m!1459737 () Bool)

(assert (=> b!1308182 m!1459737))

(declare-fun m!1459739 () Bool)

(assert (=> b!1308182 m!1459739))

(declare-fun m!1459741 () Bool)

(assert (=> b!1308183 m!1459741))

(declare-fun m!1459743 () Bool)

(assert (=> b!1308183 m!1459743))

(declare-fun m!1459745 () Bool)

(assert (=> b!1308191 m!1459745))

(declare-fun m!1459747 () Bool)

(assert (=> b!1308195 m!1459747))

(declare-fun m!1459749 () Bool)

(assert (=> start!115470 m!1459749))

(declare-fun m!1459751 () Bool)

(assert (=> start!115470 m!1459751))

(declare-fun m!1459753 () Bool)

(assert (=> b!1308168 m!1459753))

(declare-fun m!1459755 () Bool)

(assert (=> b!1308168 m!1459755))

(assert (=> b!1308192 m!1459715))

(assert (=> b!1308192 m!1459715))

(declare-fun m!1459757 () Bool)

(assert (=> b!1308192 m!1459757))

(assert (=> b!1308192 m!1459715))

(assert (=> b!1308192 m!1459715))

(declare-fun m!1459759 () Bool)

(assert (=> b!1308192 m!1459759))

(declare-fun m!1459761 () Bool)

(assert (=> b!1308197 m!1459761))

(declare-fun m!1459763 () Bool)

(assert (=> b!1308197 m!1459763))

(declare-fun m!1459765 () Bool)

(assert (=> b!1308197 m!1459765))

(assert (=> b!1308197 m!1459765))

(declare-fun m!1459767 () Bool)

(assert (=> b!1308197 m!1459767))

(declare-fun m!1459769 () Bool)

(assert (=> b!1308194 m!1459769))

(declare-fun m!1459771 () Bool)

(assert (=> b!1308194 m!1459771))

(declare-fun m!1459773 () Bool)

(assert (=> b!1308194 m!1459773))

(declare-fun m!1459775 () Bool)

(assert (=> b!1308194 m!1459775))

(declare-fun m!1459777 () Bool)

(assert (=> b!1308194 m!1459777))

(declare-fun m!1459779 () Bool)

(assert (=> b!1308194 m!1459779))

(declare-fun m!1459781 () Bool)

(assert (=> b!1308169 m!1459781))

(declare-fun m!1459783 () Bool)

(assert (=> b!1308178 m!1459783))

(declare-fun m!1459785 () Bool)

(assert (=> b!1308181 m!1459785))

(check-sat (not b!1308187) (not b!1308190) (not b_next!32173) (not b!1308171) (not b!1308198) (not b!1308189) b_and!87361 (not b_next!32171) (not b!1308201) (not b!1308183) (not b_next!32169) (not b!1308173) (not b!1308194) (not b!1308186) (not b!1308185) (not b!1308182) (not b_next!32167) b_and!87363 (not b!1308197) (not start!115470) (not b!1308202) (not b!1308178) (not b!1308192) b_and!87369 (not b!1308191) (not b!1308180) (not b_next!32165) b_and!87365 (not b!1308196) (not b!1308195) (not b_next!32163) (not b!1308168) (not b!1308200) (not b!1308175) (not b!1308177) b_and!87367 b_and!87359 (not b!1308174) (not b!1308169) (not b!1308181) (not b!1308179) (not b!1308199) (not b!1308188) (not b!1308184) (not b!1308176) (not b!1308170))
(check-sat (not b_next!32173) b_and!87361 b_and!87369 (not b_next!32171) (not b_next!32163) (not b_next!32169) b_and!87367 b_and!87359 (not b_next!32167) b_and!87363 (not b_next!32165) b_and!87365)
