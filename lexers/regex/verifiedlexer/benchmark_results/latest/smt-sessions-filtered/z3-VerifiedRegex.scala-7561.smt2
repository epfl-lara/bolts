; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!398790 () Bool)

(assert start!398790)

(declare-fun b!4181618 () Bool)

(declare-fun b_free!121519 () Bool)

(declare-fun b_next!122223 () Bool)

(assert (=> b!4181618 (= b_free!121519 (not b_next!122223))))

(declare-fun tp!1278071 () Bool)

(declare-fun b_and!327149 () Bool)

(assert (=> b!4181618 (= tp!1278071 b_and!327149)))

(declare-fun b_free!121521 () Bool)

(declare-fun b_next!122225 () Bool)

(assert (=> b!4181618 (= b_free!121521 (not b_next!122225))))

(declare-fun tp!1278074 () Bool)

(declare-fun b_and!327151 () Bool)

(assert (=> b!4181618 (= tp!1278074 b_and!327151)))

(declare-fun b!4181630 () Bool)

(declare-fun b_free!121523 () Bool)

(declare-fun b_next!122227 () Bool)

(assert (=> b!4181630 (= b_free!121523 (not b_next!122227))))

(declare-fun tp!1278073 () Bool)

(declare-fun b_and!327153 () Bool)

(assert (=> b!4181630 (= tp!1278073 b_and!327153)))

(declare-fun b_free!121525 () Bool)

(declare-fun b_next!122229 () Bool)

(assert (=> b!4181630 (= b_free!121525 (not b_next!122229))))

(declare-fun tp!1278066 () Bool)

(declare-fun b_and!327155 () Bool)

(assert (=> b!4181630 (= tp!1278066 b_and!327155)))

(declare-fun b!4181629 () Bool)

(declare-fun b_free!121527 () Bool)

(declare-fun b_next!122231 () Bool)

(assert (=> b!4181629 (= b_free!121527 (not b_next!122231))))

(declare-fun tp!1278072 () Bool)

(declare-fun b_and!327157 () Bool)

(assert (=> b!4181629 (= tp!1278072 b_and!327157)))

(declare-fun b_free!121529 () Bool)

(declare-fun b_next!122233 () Bool)

(assert (=> b!4181629 (= b_free!121529 (not b_next!122233))))

(declare-fun tp!1278078 () Bool)

(declare-fun b_and!327159 () Bool)

(assert (=> b!4181629 (= tp!1278078 b_and!327159)))

(declare-fun e!2596021 () Bool)

(declare-fun tp!1278070 () Bool)

(declare-fun e!2596019 () Bool)

(declare-datatypes ((List!46027 0))(
  ( (Nil!45903) (Cons!45903 (h!51323 (_ BitVec 16)) (t!345132 List!46027)) )
))
(declare-datatypes ((TokenValue!7868 0))(
  ( (FloatLiteralValue!15736 (text!55521 List!46027)) (TokenValueExt!7867 (__x!27957 Int)) (Broken!39340 (value!238189 List!46027)) (Object!7991) (End!7868) (Def!7868) (Underscore!7868) (Match!7868) (Else!7868) (Error!7868) (Case!7868) (If!7868) (Extends!7868) (Abstract!7868) (Class!7868) (Val!7868) (DelimiterValue!15736 (del!7928 List!46027)) (KeywordValue!7874 (value!238190 List!46027)) (CommentValue!15736 (value!238191 List!46027)) (WhitespaceValue!15736 (value!238192 List!46027)) (IndentationValue!7868 (value!238193 List!46027)) (String!53205) (Int32!7868) (Broken!39341 (value!238194 List!46027)) (Boolean!7869) (Unit!64992) (OperatorValue!7871 (op!7928 List!46027)) (IdentifierValue!15736 (value!238195 List!46027)) (IdentifierValue!15737 (value!238196 List!46027)) (WhitespaceValue!15737 (value!238197 List!46027)) (True!15736) (False!15736) (Broken!39342 (value!238198 List!46027)) (Broken!39343 (value!238199 List!46027)) (True!15737) (RightBrace!7868) (RightBracket!7868) (Colon!7868) (Null!7868) (Comma!7868) (LeftBracket!7868) (False!15737) (LeftBrace!7868) (ImaginaryLiteralValue!7868 (text!55522 List!46027)) (StringLiteralValue!23604 (value!238200 List!46027)) (EOFValue!7868 (value!238201 List!46027)) (IdentValue!7868 (value!238202 List!46027)) (DelimiterValue!15737 (value!238203 List!46027)) (DedentValue!7868 (value!238204 List!46027)) (NewLineValue!7868 (value!238205 List!46027)) (IntegerValue!23604 (value!238206 (_ BitVec 32)) (text!55523 List!46027)) (IntegerValue!23605 (value!238207 Int) (text!55524 List!46027)) (Times!7868) (Or!7868) (Equal!7868) (Minus!7868) (Broken!39344 (value!238208 List!46027)) (And!7868) (Div!7868) (LessEqual!7868) (Mod!7868) (Concat!20411) (Not!7868) (Plus!7868) (SpaceValue!7868 (value!238209 List!46027)) (IntegerValue!23606 (value!238210 Int) (text!55525 List!46027)) (StringLiteralValue!23605 (text!55526 List!46027)) (FloatLiteralValue!15737 (text!55527 List!46027)) (BytesLiteralValue!7868 (value!238211 List!46027)) (CommentValue!15737 (value!238212 List!46027)) (StringLiteralValue!23606 (value!238213 List!46027)) (ErrorTokenValue!7868 (msg!7929 List!46027)) )
))
(declare-datatypes ((C!25276 0))(
  ( (C!25277 (val!14800 Int)) )
))
(declare-datatypes ((List!46028 0))(
  ( (Nil!45904) (Cons!45904 (h!51324 C!25276) (t!345133 List!46028)) )
))
(declare-datatypes ((IArray!27703 0))(
  ( (IArray!27704 (innerList!13909 List!46028)) )
))
(declare-datatypes ((Conc!13849 0))(
  ( (Node!13849 (left!34194 Conc!13849) (right!34524 Conc!13849) (csize!27928 Int) (cheight!14060 Int)) (Leaf!21411 (xs!17155 IArray!27703) (csize!27929 Int)) (Empty!13849) )
))
(declare-datatypes ((BalanceConc!27292 0))(
  ( (BalanceConc!27293 (c!714042 Conc!13849)) )
))
(declare-datatypes ((Regex!12543 0))(
  ( (ElementMatch!12543 (c!714043 C!25276)) (Concat!20412 (regOne!25598 Regex!12543) (regTwo!25598 Regex!12543)) (EmptyExpr!12543) (Star!12543 (reg!12872 Regex!12543)) (EmptyLang!12543) (Union!12543 (regOne!25599 Regex!12543) (regTwo!25599 Regex!12543)) )
))
(declare-datatypes ((String!53206 0))(
  ( (String!53207 (value!238214 String)) )
))
(declare-datatypes ((TokenValueInjection!15164 0))(
  ( (TokenValueInjection!15165 (toValue!10330 Int) (toChars!10189 Int)) )
))
(declare-datatypes ((Rule!15076 0))(
  ( (Rule!15077 (regex!7638 Regex!12543) (tag!8502 String!53206) (isSeparator!7638 Bool) (transformation!7638 TokenValueInjection!15164)) )
))
(declare-datatypes ((List!46029 0))(
  ( (Nil!45905) (Cons!45905 (h!51325 Rule!15076) (t!345134 List!46029)) )
))
(declare-fun rules!3843 () List!46029)

(declare-fun b!4181617 () Bool)

(declare-fun inv!60440 (String!53206) Bool)

(declare-fun inv!60442 (TokenValueInjection!15164) Bool)

(assert (=> b!4181617 (= e!2596021 (and tp!1278070 (inv!60440 (tag!8502 (h!51325 rules!3843))) (inv!60442 (transformation!7638 (h!51325 rules!3843))) e!2596019))))

(assert (=> b!4181618 (= e!2596019 (and tp!1278071 tp!1278074))))

(declare-fun b!4181619 () Bool)

(declare-fun res!1714681 () Bool)

(declare-fun e!2596023 () Bool)

(assert (=> b!4181619 (=> (not res!1714681) (not e!2596023))))

(declare-fun p!2959 () List!46028)

(declare-fun input!3342 () List!46028)

(declare-fun isPrefix!4495 (List!46028 List!46028) Bool)

(assert (=> b!4181619 (= res!1714681 (isPrefix!4495 p!2959 input!3342))))

(declare-fun b!4181620 () Bool)

(declare-fun e!2596025 () Bool)

(declare-fun tp!1278069 () Bool)

(assert (=> b!4181620 (= e!2596025 (and e!2596021 tp!1278069))))

(declare-fun b!4181621 () Bool)

(declare-fun e!2596027 () Bool)

(declare-datatypes ((LexerInterface!7231 0))(
  ( (LexerInterfaceExt!7228 (__x!27958 Int)) (Lexer!7229) )
))
(declare-fun thiss!25986 () LexerInterface!7231)

(declare-fun rulesValidInductive!2812 (LexerInterface!7231 List!46029) Bool)

(assert (=> b!4181621 (= e!2596027 (rulesValidInductive!2812 thiss!25986 rules!3843))))

(declare-fun lt!1489167 () Int)

(declare-fun size!33711 (List!46028) Int)

(assert (=> b!4181621 (<= lt!1489167 (size!33711 input!3342))))

(declare-datatypes ((Unit!64993 0))(
  ( (Unit!64994) )
))
(declare-fun lt!1489169 () Unit!64993)

(declare-fun pBis!107 () List!46028)

(declare-fun lemmaIsPrefixThenSmallerEqSize!525 (List!46028 List!46028) Unit!64993)

(assert (=> b!4181621 (= lt!1489169 (lemmaIsPrefixThenSmallerEqSize!525 pBis!107 input!3342))))

(declare-fun b!4181622 () Bool)

(declare-fun e!2596018 () Bool)

(declare-fun tp_is_empty!22049 () Bool)

(declare-fun tp!1278077 () Bool)

(assert (=> b!4181622 (= e!2596018 (and tp_is_empty!22049 tp!1278077))))

(declare-fun b!4181623 () Bool)

(declare-fun e!2596024 () Bool)

(declare-fun tp!1278076 () Bool)

(assert (=> b!4181623 (= e!2596024 (and tp_is_empty!22049 tp!1278076))))

(declare-fun b!4181624 () Bool)

(declare-fun e!2596029 () Bool)

(assert (=> b!4181624 (= e!2596029 e!2596027)))

(declare-fun res!1714678 () Bool)

(assert (=> b!4181624 (=> res!1714678 e!2596027)))

(declare-fun lt!1489174 () Int)

(assert (=> b!4181624 (= res!1714678 (<= lt!1489167 lt!1489174))))

(assert (=> b!4181624 (= lt!1489167 (size!33711 pBis!107))))

(declare-fun b!4181625 () Bool)

(declare-fun res!1714671 () Bool)

(assert (=> b!4181625 (=> (not res!1714671) (not e!2596023))))

(declare-fun rBis!167 () Rule!15076)

(declare-fun contains!9445 (List!46029 Rule!15076) Bool)

(assert (=> b!4181625 (= res!1714671 (contains!9445 rules!3843 rBis!167))))

(declare-fun b!4181626 () Bool)

(declare-fun res!1714672 () Bool)

(assert (=> b!4181626 (=> (not res!1714672) (not e!2596023))))

(assert (=> b!4181626 (= res!1714672 (isPrefix!4495 pBis!107 input!3342))))

(declare-fun b!4181627 () Bool)

(declare-fun res!1714675 () Bool)

(assert (=> b!4181627 (=> (not res!1714675) (not e!2596023))))

(declare-fun isEmpty!27159 (List!46029) Bool)

(assert (=> b!4181627 (= res!1714675 (not (isEmpty!27159 rules!3843)))))

(declare-fun res!1714676 () Bool)

(assert (=> start!398790 (=> (not res!1714676) (not e!2596023))))

(get-info :version)

(assert (=> start!398790 (= res!1714676 ((_ is Lexer!7229) thiss!25986))))

(assert (=> start!398790 e!2596023))

(assert (=> start!398790 true))

(declare-fun e!2596028 () Bool)

(assert (=> start!398790 e!2596028))

(declare-fun e!2596031 () Bool)

(assert (=> start!398790 e!2596031))

(assert (=> start!398790 e!2596025))

(declare-fun e!2596022 () Bool)

(assert (=> start!398790 e!2596022))

(assert (=> start!398790 e!2596018))

(assert (=> start!398790 e!2596024))

(declare-fun b!4181628 () Bool)

(declare-fun res!1714680 () Bool)

(assert (=> b!4181628 (=> (not res!1714680) (not e!2596023))))

(declare-fun r!4142 () Rule!15076)

(declare-fun ruleValid!3356 (LexerInterface!7231 Rule!15076) Bool)

(assert (=> b!4181628 (= res!1714680 (ruleValid!3356 thiss!25986 r!4142))))

(declare-fun e!2596026 () Bool)

(assert (=> b!4181629 (= e!2596026 (and tp!1278072 tp!1278078))))

(declare-fun e!2596032 () Bool)

(assert (=> b!4181630 (= e!2596032 (and tp!1278073 tp!1278066))))

(declare-fun b!4181631 () Bool)

(declare-fun res!1714679 () Bool)

(assert (=> b!4181631 (=> (not res!1714679) (not e!2596023))))

(declare-fun validRegex!5660 (Regex!12543) Bool)

(assert (=> b!4181631 (= res!1714679 (validRegex!5660 (regex!7638 r!4142)))))

(declare-fun b!4181632 () Bool)

(declare-fun res!1714674 () Bool)

(assert (=> b!4181632 (=> res!1714674 e!2596027)))

(declare-datatypes ((Token!13990 0))(
  ( (Token!13991 (value!238215 TokenValue!7868) (rule!10700 Rule!15076) (size!33712 Int) (originalCharacters!8026 List!46028)) )
))
(declare-datatypes ((tuple2!43714 0))(
  ( (tuple2!43715 (_1!24991 Token!13990) (_2!24991 List!46028)) )
))
(declare-datatypes ((Option!9832 0))(
  ( (None!9831) (Some!9831 (v!40641 tuple2!43714)) )
))
(declare-fun lt!1489168 () Option!9832)

(declare-fun maxPrefix!4279 (LexerInterface!7231 List!46029 List!46028) Option!9832)

(assert (=> b!4181632 (= res!1714674 (not (= (maxPrefix!4279 thiss!25986 rules!3843 input!3342) lt!1489168)))))

(declare-fun b!4181633 () Bool)

(assert (=> b!4181633 (= e!2596023 (not e!2596029))))

(declare-fun res!1714682 () Bool)

(assert (=> b!4181633 (=> res!1714682 e!2596029)))

(declare-fun maxPrefixOneRule!3240 (LexerInterface!7231 Rule!15076 List!46028) Option!9832)

(assert (=> b!4181633 (= res!1714682 (not (= (maxPrefixOneRule!3240 thiss!25986 r!4142 input!3342) lt!1489168)))))

(declare-fun lt!1489171 () TokenValue!7868)

(declare-fun getSuffix!2788 (List!46028 List!46028) List!46028)

(assert (=> b!4181633 (= lt!1489168 (Some!9831 (tuple2!43715 (Token!13991 lt!1489171 r!4142 lt!1489174 p!2959) (getSuffix!2788 input!3342 p!2959))))))

(assert (=> b!4181633 (= lt!1489174 (size!33711 p!2959))))

(declare-fun lt!1489173 () BalanceConc!27292)

(declare-fun apply!10603 (TokenValueInjection!15164 BalanceConc!27292) TokenValue!7868)

(assert (=> b!4181633 (= lt!1489171 (apply!10603 (transformation!7638 r!4142) lt!1489173))))

(assert (=> b!4181633 (isPrefix!4495 input!3342 input!3342)))

(declare-fun lt!1489170 () Unit!64993)

(declare-fun lemmaIsPrefixRefl!2924 (List!46028 List!46028) Unit!64993)

(assert (=> b!4181633 (= lt!1489170 (lemmaIsPrefixRefl!2924 input!3342 input!3342))))

(declare-fun lt!1489172 () Unit!64993)

(declare-fun lemmaSemiInverse!2404 (TokenValueInjection!15164 BalanceConc!27292) Unit!64993)

(assert (=> b!4181633 (= lt!1489172 (lemmaSemiInverse!2404 (transformation!7638 r!4142) lt!1489173))))

(declare-fun seqFromList!5663 (List!46028) BalanceConc!27292)

(assert (=> b!4181633 (= lt!1489173 (seqFromList!5663 p!2959))))

(declare-fun tp!1278075 () Bool)

(declare-fun b!4181634 () Bool)

(assert (=> b!4181634 (= e!2596028 (and tp!1278075 (inv!60440 (tag!8502 rBis!167)) (inv!60442 (transformation!7638 rBis!167)) e!2596026))))

(declare-fun b!4181635 () Bool)

(declare-fun res!1714684 () Bool)

(assert (=> b!4181635 (=> (not res!1714684) (not e!2596023))))

(declare-fun matchR!6282 (Regex!12543 List!46028) Bool)

(assert (=> b!4181635 (= res!1714684 (matchR!6282 (regex!7638 r!4142) p!2959))))

(declare-fun b!4181636 () Bool)

(declare-fun tp!1278067 () Bool)

(assert (=> b!4181636 (= e!2596022 (and tp_is_empty!22049 tp!1278067))))

(declare-fun b!4181637 () Bool)

(declare-fun tp!1278068 () Bool)

(assert (=> b!4181637 (= e!2596031 (and tp!1278068 (inv!60440 (tag!8502 r!4142)) (inv!60442 (transformation!7638 r!4142)) e!2596032))))

(declare-fun b!4181638 () Bool)

(declare-fun res!1714683 () Bool)

(assert (=> b!4181638 (=> (not res!1714683) (not e!2596023))))

(declare-fun rulesInvariant!6444 (LexerInterface!7231 List!46029) Bool)

(assert (=> b!4181638 (= res!1714683 (rulesInvariant!6444 thiss!25986 rules!3843))))

(declare-fun b!4181639 () Bool)

(declare-fun res!1714677 () Bool)

(assert (=> b!4181639 (=> res!1714677 e!2596027)))

(assert (=> b!4181639 (= res!1714677 (not (ruleValid!3356 thiss!25986 rBis!167)))))

(declare-fun b!4181640 () Bool)

(declare-fun res!1714673 () Bool)

(assert (=> b!4181640 (=> (not res!1714673) (not e!2596023))))

(assert (=> b!4181640 (= res!1714673 (contains!9445 rules!3843 r!4142))))

(assert (= (and start!398790 res!1714676) b!4181619))

(assert (= (and b!4181619 res!1714681) b!4181626))

(assert (= (and b!4181626 res!1714672) b!4181627))

(assert (= (and b!4181627 res!1714675) b!4181638))

(assert (= (and b!4181638 res!1714683) b!4181640))

(assert (= (and b!4181640 res!1714673) b!4181625))

(assert (= (and b!4181625 res!1714671) b!4181631))

(assert (= (and b!4181631 res!1714679) b!4181635))

(assert (= (and b!4181635 res!1714684) b!4181628))

(assert (= (and b!4181628 res!1714680) b!4181633))

(assert (= (and b!4181633 (not res!1714682)) b!4181624))

(assert (= (and b!4181624 (not res!1714678)) b!4181639))

(assert (= (and b!4181639 (not res!1714677)) b!4181632))

(assert (= (and b!4181632 (not res!1714674)) b!4181621))

(assert (= b!4181634 b!4181629))

(assert (= start!398790 b!4181634))

(assert (= b!4181637 b!4181630))

(assert (= start!398790 b!4181637))

(assert (= b!4181617 b!4181618))

(assert (= b!4181620 b!4181617))

(assert (= (and start!398790 ((_ is Cons!45905) rules!3843)) b!4181620))

(assert (= (and start!398790 ((_ is Cons!45904) input!3342)) b!4181636))

(assert (= (and start!398790 ((_ is Cons!45904) pBis!107)) b!4181622))

(assert (= (and start!398790 ((_ is Cons!45904) p!2959)) b!4181623))

(declare-fun m!4770593 () Bool)

(assert (=> b!4181626 m!4770593))

(declare-fun m!4770595 () Bool)

(assert (=> b!4181627 m!4770595))

(declare-fun m!4770597 () Bool)

(assert (=> b!4181628 m!4770597))

(declare-fun m!4770599 () Bool)

(assert (=> b!4181619 m!4770599))

(declare-fun m!4770601 () Bool)

(assert (=> b!4181631 m!4770601))

(declare-fun m!4770603 () Bool)

(assert (=> b!4181633 m!4770603))

(declare-fun m!4770605 () Bool)

(assert (=> b!4181633 m!4770605))

(declare-fun m!4770607 () Bool)

(assert (=> b!4181633 m!4770607))

(declare-fun m!4770609 () Bool)

(assert (=> b!4181633 m!4770609))

(declare-fun m!4770611 () Bool)

(assert (=> b!4181633 m!4770611))

(declare-fun m!4770613 () Bool)

(assert (=> b!4181633 m!4770613))

(declare-fun m!4770615 () Bool)

(assert (=> b!4181633 m!4770615))

(declare-fun m!4770617 () Bool)

(assert (=> b!4181633 m!4770617))

(declare-fun m!4770619 () Bool)

(assert (=> b!4181637 m!4770619))

(declare-fun m!4770621 () Bool)

(assert (=> b!4181637 m!4770621))

(declare-fun m!4770623 () Bool)

(assert (=> b!4181638 m!4770623))

(declare-fun m!4770625 () Bool)

(assert (=> b!4181624 m!4770625))

(declare-fun m!4770627 () Bool)

(assert (=> b!4181632 m!4770627))

(declare-fun m!4770629 () Bool)

(assert (=> b!4181640 m!4770629))

(declare-fun m!4770631 () Bool)

(assert (=> b!4181634 m!4770631))

(declare-fun m!4770633 () Bool)

(assert (=> b!4181634 m!4770633))

(declare-fun m!4770635 () Bool)

(assert (=> b!4181621 m!4770635))

(declare-fun m!4770637 () Bool)

(assert (=> b!4181621 m!4770637))

(declare-fun m!4770639 () Bool)

(assert (=> b!4181621 m!4770639))

(declare-fun m!4770641 () Bool)

(assert (=> b!4181635 m!4770641))

(declare-fun m!4770643 () Bool)

(assert (=> b!4181639 m!4770643))

(declare-fun m!4770645 () Bool)

(assert (=> b!4181617 m!4770645))

(declare-fun m!4770647 () Bool)

(assert (=> b!4181617 m!4770647))

(declare-fun m!4770649 () Bool)

(assert (=> b!4181625 m!4770649))

(check-sat (not b!4181620) b_and!327153 (not b!4181617) (not b_next!122223) (not b!4181633) (not b!4181636) (not b!4181634) (not b!4181622) b_and!327149 (not b!4181635) (not b!4181621) (not b!4181624) (not b!4181623) tp_is_empty!22049 (not b!4181639) (not b!4181640) (not b!4181631) (not b!4181625) (not b!4181619) (not b!4181627) (not b_next!122225) (not b_next!122227) (not b!4181632) b_and!327159 (not b_next!122233) (not b!4181638) b_and!327157 (not b!4181628) (not b!4181626) (not b_next!122229) b_and!327155 b_and!327151 (not b!4181637) (not b_next!122231))
(check-sat b_and!327153 (not b_next!122223) b_and!327149 b_and!327157 (not b_next!122229) (not b_next!122231) (not b_next!122225) (not b_next!122227) b_and!327159 (not b_next!122233) b_and!327155 b_and!327151)
(get-model)

(declare-fun d!1234066 () Bool)

(declare-fun lt!1489177 () Int)

(assert (=> d!1234066 (>= lt!1489177 0)))

(declare-fun e!2596035 () Int)

(assert (=> d!1234066 (= lt!1489177 e!2596035)))

(declare-fun c!714046 () Bool)

(assert (=> d!1234066 (= c!714046 ((_ is Nil!45904) pBis!107))))

(assert (=> d!1234066 (= (size!33711 pBis!107) lt!1489177)))

(declare-fun b!4181645 () Bool)

(assert (=> b!4181645 (= e!2596035 0)))

(declare-fun b!4181646 () Bool)

(assert (=> b!4181646 (= e!2596035 (+ 1 (size!33711 (t!345133 pBis!107))))))

(assert (= (and d!1234066 c!714046) b!4181645))

(assert (= (and d!1234066 (not c!714046)) b!4181646))

(declare-fun m!4770651 () Bool)

(assert (=> b!4181646 m!4770651))

(assert (=> b!4181624 d!1234066))

(declare-fun b!4181721 () Bool)

(declare-fun e!2596081 () Bool)

(declare-fun e!2596080 () Bool)

(assert (=> b!4181721 (= e!2596081 e!2596080)))

(declare-fun res!1714741 () Bool)

(assert (=> b!4181721 (=> res!1714741 e!2596080)))

(declare-fun call!291711 () Bool)

(assert (=> b!4181721 (= res!1714741 call!291711)))

(declare-fun b!4181722 () Bool)

(declare-fun e!2596078 () Bool)

(declare-fun head!8874 (List!46028) C!25276)

(assert (=> b!4181722 (= e!2596078 (= (head!8874 p!2959) (c!714043 (regex!7638 r!4142))))))

(declare-fun b!4181723 () Bool)

(declare-fun res!1714744 () Bool)

(assert (=> b!4181723 (=> res!1714744 e!2596080)))

(declare-fun isEmpty!27162 (List!46028) Bool)

(declare-fun tail!6721 (List!46028) List!46028)

(assert (=> b!4181723 (= res!1714744 (not (isEmpty!27162 (tail!6721 p!2959))))))

(declare-fun b!4181724 () Bool)

(declare-fun e!2596082 () Bool)

(declare-fun lt!1489188 () Bool)

(assert (=> b!4181724 (= e!2596082 (= lt!1489188 call!291711))))

(declare-fun b!4181725 () Bool)

(declare-fun e!2596077 () Bool)

(declare-fun derivativeStep!3787 (Regex!12543 C!25276) Regex!12543)

(assert (=> b!4181725 (= e!2596077 (matchR!6282 (derivativeStep!3787 (regex!7638 r!4142) (head!8874 p!2959)) (tail!6721 p!2959)))))

(declare-fun b!4181726 () Bool)

(declare-fun res!1714742 () Bool)

(declare-fun e!2596076 () Bool)

(assert (=> b!4181726 (=> res!1714742 e!2596076)))

(assert (=> b!4181726 (= res!1714742 e!2596078)))

(declare-fun res!1714743 () Bool)

(assert (=> b!4181726 (=> (not res!1714743) (not e!2596078))))

(assert (=> b!4181726 (= res!1714743 lt!1489188)))

(declare-fun b!4181727 () Bool)

(declare-fun res!1714737 () Bool)

(assert (=> b!4181727 (=> res!1714737 e!2596076)))

(assert (=> b!4181727 (= res!1714737 (not ((_ is ElementMatch!12543) (regex!7638 r!4142))))))

(declare-fun e!2596079 () Bool)

(assert (=> b!4181727 (= e!2596079 e!2596076)))

(declare-fun b!4181728 () Bool)

(assert (=> b!4181728 (= e!2596080 (not (= (head!8874 p!2959) (c!714043 (regex!7638 r!4142)))))))

(declare-fun b!4181729 () Bool)

(declare-fun nullable!4397 (Regex!12543) Bool)

(assert (=> b!4181729 (= e!2596077 (nullable!4397 (regex!7638 r!4142)))))

(declare-fun b!4181730 () Bool)

(assert (=> b!4181730 (= e!2596079 (not lt!1489188))))

(declare-fun b!4181731 () Bool)

(declare-fun res!1714740 () Bool)

(assert (=> b!4181731 (=> (not res!1714740) (not e!2596078))))

(assert (=> b!4181731 (= res!1714740 (not call!291711))))

(declare-fun b!4181732 () Bool)

(assert (=> b!4181732 (= e!2596082 e!2596079)))

(declare-fun c!714064 () Bool)

(assert (=> b!4181732 (= c!714064 ((_ is EmptyLang!12543) (regex!7638 r!4142)))))

(declare-fun b!4181733 () Bool)

(assert (=> b!4181733 (= e!2596076 e!2596081)))

(declare-fun res!1714739 () Bool)

(assert (=> b!4181733 (=> (not res!1714739) (not e!2596081))))

(assert (=> b!4181733 (= res!1714739 (not lt!1489188))))

(declare-fun bm!291706 () Bool)

(assert (=> bm!291706 (= call!291711 (isEmpty!27162 p!2959))))

(declare-fun b!4181734 () Bool)

(declare-fun res!1714738 () Bool)

(assert (=> b!4181734 (=> (not res!1714738) (not e!2596078))))

(assert (=> b!4181734 (= res!1714738 (isEmpty!27162 (tail!6721 p!2959)))))

(declare-fun d!1234070 () Bool)

(assert (=> d!1234070 e!2596082))

(declare-fun c!714062 () Bool)

(assert (=> d!1234070 (= c!714062 ((_ is EmptyExpr!12543) (regex!7638 r!4142)))))

(assert (=> d!1234070 (= lt!1489188 e!2596077)))

(declare-fun c!714063 () Bool)

(assert (=> d!1234070 (= c!714063 (isEmpty!27162 p!2959))))

(assert (=> d!1234070 (validRegex!5660 (regex!7638 r!4142))))

(assert (=> d!1234070 (= (matchR!6282 (regex!7638 r!4142) p!2959) lt!1489188)))

(assert (= (and d!1234070 c!714063) b!4181729))

(assert (= (and d!1234070 (not c!714063)) b!4181725))

(assert (= (and d!1234070 c!714062) b!4181724))

(assert (= (and d!1234070 (not c!714062)) b!4181732))

(assert (= (and b!4181732 c!714064) b!4181730))

(assert (= (and b!4181732 (not c!714064)) b!4181727))

(assert (= (and b!4181727 (not res!1714737)) b!4181726))

(assert (= (and b!4181726 res!1714743) b!4181731))

(assert (= (and b!4181731 res!1714740) b!4181734))

(assert (= (and b!4181734 res!1714738) b!4181722))

(assert (= (and b!4181726 (not res!1714742)) b!4181733))

(assert (= (and b!4181733 res!1714739) b!4181721))

(assert (= (and b!4181721 (not res!1714741)) b!4181723))

(assert (= (and b!4181723 (not res!1714744)) b!4181728))

(assert (= (or b!4181724 b!4181721 b!4181731) bm!291706))

(declare-fun m!4770665 () Bool)

(assert (=> b!4181723 m!4770665))

(assert (=> b!4181723 m!4770665))

(declare-fun m!4770667 () Bool)

(assert (=> b!4181723 m!4770667))

(declare-fun m!4770669 () Bool)

(assert (=> b!4181725 m!4770669))

(assert (=> b!4181725 m!4770669))

(declare-fun m!4770671 () Bool)

(assert (=> b!4181725 m!4770671))

(assert (=> b!4181725 m!4770665))

(assert (=> b!4181725 m!4770671))

(assert (=> b!4181725 m!4770665))

(declare-fun m!4770673 () Bool)

(assert (=> b!4181725 m!4770673))

(assert (=> b!4181728 m!4770669))

(declare-fun m!4770675 () Bool)

(assert (=> d!1234070 m!4770675))

(assert (=> d!1234070 m!4770601))

(assert (=> bm!291706 m!4770675))

(declare-fun m!4770677 () Bool)

(assert (=> b!4181729 m!4770677))

(assert (=> b!4181734 m!4770665))

(assert (=> b!4181734 m!4770665))

(assert (=> b!4181734 m!4770667))

(assert (=> b!4181722 m!4770669))

(assert (=> b!4181635 d!1234070))

(declare-fun d!1234078 () Bool)

(declare-fun lt!1489192 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7132 (List!46029) (InoxSet Rule!15076))

(assert (=> d!1234078 (= lt!1489192 (select (content!7132 rules!3843) rBis!167))))

(declare-fun e!2596095 () Bool)

(assert (=> d!1234078 (= lt!1489192 e!2596095)))

(declare-fun res!1714757 () Bool)

(assert (=> d!1234078 (=> (not res!1714757) (not e!2596095))))

(assert (=> d!1234078 (= res!1714757 ((_ is Cons!45905) rules!3843))))

(assert (=> d!1234078 (= (contains!9445 rules!3843 rBis!167) lt!1489192)))

(declare-fun b!4181753 () Bool)

(declare-fun e!2596094 () Bool)

(assert (=> b!4181753 (= e!2596095 e!2596094)))

(declare-fun res!1714758 () Bool)

(assert (=> b!4181753 (=> res!1714758 e!2596094)))

(assert (=> b!4181753 (= res!1714758 (= (h!51325 rules!3843) rBis!167))))

(declare-fun b!4181754 () Bool)

(assert (=> b!4181754 (= e!2596094 (contains!9445 (t!345134 rules!3843) rBis!167))))

(assert (= (and d!1234078 res!1714757) b!4181753))

(assert (= (and b!4181753 (not res!1714758)) b!4181754))

(declare-fun m!4770689 () Bool)

(assert (=> d!1234078 m!4770689))

(declare-fun m!4770691 () Bool)

(assert (=> d!1234078 m!4770691))

(declare-fun m!4770693 () Bool)

(assert (=> b!4181754 m!4770693))

(assert (=> b!4181625 d!1234078))

(declare-fun d!1234082 () Bool)

(declare-fun e!2596103 () Bool)

(assert (=> d!1234082 e!2596103))

(declare-fun res!1714767 () Bool)

(assert (=> d!1234082 (=> res!1714767 e!2596103)))

(declare-fun lt!1489195 () Bool)

(assert (=> d!1234082 (= res!1714767 (not lt!1489195))))

(declare-fun e!2596104 () Bool)

(assert (=> d!1234082 (= lt!1489195 e!2596104)))

(declare-fun res!1714768 () Bool)

(assert (=> d!1234082 (=> res!1714768 e!2596104)))

(assert (=> d!1234082 (= res!1714768 ((_ is Nil!45904) pBis!107))))

(assert (=> d!1234082 (= (isPrefix!4495 pBis!107 input!3342) lt!1489195)))

(declare-fun b!4181766 () Bool)

(assert (=> b!4181766 (= e!2596103 (>= (size!33711 input!3342) (size!33711 pBis!107)))))

(declare-fun b!4181764 () Bool)

(declare-fun res!1714770 () Bool)

(declare-fun e!2596102 () Bool)

(assert (=> b!4181764 (=> (not res!1714770) (not e!2596102))))

(assert (=> b!4181764 (= res!1714770 (= (head!8874 pBis!107) (head!8874 input!3342)))))

(declare-fun b!4181765 () Bool)

(assert (=> b!4181765 (= e!2596102 (isPrefix!4495 (tail!6721 pBis!107) (tail!6721 input!3342)))))

(declare-fun b!4181763 () Bool)

(assert (=> b!4181763 (= e!2596104 e!2596102)))

(declare-fun res!1714769 () Bool)

(assert (=> b!4181763 (=> (not res!1714769) (not e!2596102))))

(assert (=> b!4181763 (= res!1714769 (not ((_ is Nil!45904) input!3342)))))

(assert (= (and d!1234082 (not res!1714768)) b!4181763))

(assert (= (and b!4181763 res!1714769) b!4181764))

(assert (= (and b!4181764 res!1714770) b!4181765))

(assert (= (and d!1234082 (not res!1714767)) b!4181766))

(assert (=> b!4181766 m!4770637))

(assert (=> b!4181766 m!4770625))

(declare-fun m!4770695 () Bool)

(assert (=> b!4181764 m!4770695))

(declare-fun m!4770697 () Bool)

(assert (=> b!4181764 m!4770697))

(declare-fun m!4770699 () Bool)

(assert (=> b!4181765 m!4770699))

(declare-fun m!4770701 () Bool)

(assert (=> b!4181765 m!4770701))

(assert (=> b!4181765 m!4770699))

(assert (=> b!4181765 m!4770701))

(declare-fun m!4770703 () Bool)

(assert (=> b!4181765 m!4770703))

(assert (=> b!4181626 d!1234082))

(declare-fun d!1234084 () Bool)

(assert (=> d!1234084 (= (inv!60440 (tag!8502 r!4142)) (= (mod (str.len (value!238214 (tag!8502 r!4142))) 2) 0))))

(assert (=> b!4181637 d!1234084))

(declare-fun d!1234086 () Bool)

(declare-fun res!1714773 () Bool)

(declare-fun e!2596107 () Bool)

(assert (=> d!1234086 (=> (not res!1714773) (not e!2596107))))

(declare-fun semiInverseModEq!3306 (Int Int) Bool)

(assert (=> d!1234086 (= res!1714773 (semiInverseModEq!3306 (toChars!10189 (transformation!7638 r!4142)) (toValue!10330 (transformation!7638 r!4142))))))

(assert (=> d!1234086 (= (inv!60442 (transformation!7638 r!4142)) e!2596107)))

(declare-fun b!4181769 () Bool)

(declare-fun equivClasses!3205 (Int Int) Bool)

(assert (=> b!4181769 (= e!2596107 (equivClasses!3205 (toChars!10189 (transformation!7638 r!4142)) (toValue!10330 (transformation!7638 r!4142))))))

(assert (= (and d!1234086 res!1714773) b!4181769))

(declare-fun m!4770705 () Bool)

(assert (=> d!1234086 m!4770705))

(declare-fun m!4770707 () Bool)

(assert (=> b!4181769 m!4770707))

(assert (=> b!4181637 d!1234086))

(declare-fun d!1234088 () Bool)

(assert (=> d!1234088 (= (isEmpty!27159 rules!3843) ((_ is Nil!45905) rules!3843))))

(assert (=> b!4181627 d!1234088))

(declare-fun d!1234090 () Bool)

(declare-fun res!1714790 () Bool)

(declare-fun e!2596116 () Bool)

(assert (=> d!1234090 (=> (not res!1714790) (not e!2596116))))

(declare-fun rulesValid!2974 (LexerInterface!7231 List!46029) Bool)

(assert (=> d!1234090 (= res!1714790 (rulesValid!2974 thiss!25986 rules!3843))))

(assert (=> d!1234090 (= (rulesInvariant!6444 thiss!25986 rules!3843) e!2596116)))

(declare-fun b!4181790 () Bool)

(declare-datatypes ((List!46031 0))(
  ( (Nil!45907) (Cons!45907 (h!51327 String!53206) (t!345168 List!46031)) )
))
(declare-fun noDuplicateTag!3135 (LexerInterface!7231 List!46029 List!46031) Bool)

(assert (=> b!4181790 (= e!2596116 (noDuplicateTag!3135 thiss!25986 rules!3843 Nil!45907))))

(assert (= (and d!1234090 res!1714790) b!4181790))

(declare-fun m!4770709 () Bool)

(assert (=> d!1234090 m!4770709))

(declare-fun m!4770711 () Bool)

(assert (=> b!4181790 m!4770711))

(assert (=> b!4181638 d!1234090))

(declare-fun d!1234092 () Bool)

(assert (=> d!1234092 (= (inv!60440 (tag!8502 (h!51325 rules!3843))) (= (mod (str.len (value!238214 (tag!8502 (h!51325 rules!3843)))) 2) 0))))

(assert (=> b!4181617 d!1234092))

(declare-fun d!1234094 () Bool)

(declare-fun res!1714791 () Bool)

(declare-fun e!2596117 () Bool)

(assert (=> d!1234094 (=> (not res!1714791) (not e!2596117))))

(assert (=> d!1234094 (= res!1714791 (semiInverseModEq!3306 (toChars!10189 (transformation!7638 (h!51325 rules!3843))) (toValue!10330 (transformation!7638 (h!51325 rules!3843)))))))

(assert (=> d!1234094 (= (inv!60442 (transformation!7638 (h!51325 rules!3843))) e!2596117)))

(declare-fun b!4181791 () Bool)

(assert (=> b!4181791 (= e!2596117 (equivClasses!3205 (toChars!10189 (transformation!7638 (h!51325 rules!3843))) (toValue!10330 (transformation!7638 (h!51325 rules!3843)))))))

(assert (= (and d!1234094 res!1714791) b!4181791))

(declare-fun m!4770713 () Bool)

(assert (=> d!1234094 m!4770713))

(declare-fun m!4770715 () Bool)

(assert (=> b!4181791 m!4770715))

(assert (=> b!4181617 d!1234094))

(declare-fun d!1234096 () Bool)

(declare-fun res!1714803 () Bool)

(declare-fun e!2596123 () Bool)

(assert (=> d!1234096 (=> (not res!1714803) (not e!2596123))))

(assert (=> d!1234096 (= res!1714803 (validRegex!5660 (regex!7638 r!4142)))))

(assert (=> d!1234096 (= (ruleValid!3356 thiss!25986 r!4142) e!2596123)))

(declare-fun b!4181805 () Bool)

(declare-fun res!1714804 () Bool)

(assert (=> b!4181805 (=> (not res!1714804) (not e!2596123))))

(assert (=> b!4181805 (= res!1714804 (not (nullable!4397 (regex!7638 r!4142))))))

(declare-fun b!4181806 () Bool)

(assert (=> b!4181806 (= e!2596123 (not (= (tag!8502 r!4142) (String!53207 ""))))))

(assert (= (and d!1234096 res!1714803) b!4181805))

(assert (= (and b!4181805 res!1714804) b!4181806))

(assert (=> d!1234096 m!4770601))

(assert (=> b!4181805 m!4770677))

(assert (=> b!4181628 d!1234096))

(declare-fun d!1234102 () Bool)

(declare-fun res!1714805 () Bool)

(declare-fun e!2596124 () Bool)

(assert (=> d!1234102 (=> (not res!1714805) (not e!2596124))))

(assert (=> d!1234102 (= res!1714805 (validRegex!5660 (regex!7638 rBis!167)))))

(assert (=> d!1234102 (= (ruleValid!3356 thiss!25986 rBis!167) e!2596124)))

(declare-fun b!4181807 () Bool)

(declare-fun res!1714806 () Bool)

(assert (=> b!4181807 (=> (not res!1714806) (not e!2596124))))

(assert (=> b!4181807 (= res!1714806 (not (nullable!4397 (regex!7638 rBis!167))))))

(declare-fun b!4181808 () Bool)

(assert (=> b!4181808 (= e!2596124 (not (= (tag!8502 rBis!167) (String!53207 ""))))))

(assert (= (and d!1234102 res!1714805) b!4181807))

(assert (= (and b!4181807 res!1714806) b!4181808))

(declare-fun m!4770743 () Bool)

(assert (=> d!1234102 m!4770743))

(declare-fun m!4770745 () Bool)

(assert (=> b!4181807 m!4770745))

(assert (=> b!4181639 d!1234102))

(declare-fun d!1234104 () Bool)

(declare-fun lt!1489211 () Bool)

(assert (=> d!1234104 (= lt!1489211 (select (content!7132 rules!3843) r!4142))))

(declare-fun e!2596126 () Bool)

(assert (=> d!1234104 (= lt!1489211 e!2596126)))

(declare-fun res!1714807 () Bool)

(assert (=> d!1234104 (=> (not res!1714807) (not e!2596126))))

(assert (=> d!1234104 (= res!1714807 ((_ is Cons!45905) rules!3843))))

(assert (=> d!1234104 (= (contains!9445 rules!3843 r!4142) lt!1489211)))

(declare-fun b!4181809 () Bool)

(declare-fun e!2596125 () Bool)

(assert (=> b!4181809 (= e!2596126 e!2596125)))

(declare-fun res!1714808 () Bool)

(assert (=> b!4181809 (=> res!1714808 e!2596125)))

(assert (=> b!4181809 (= res!1714808 (= (h!51325 rules!3843) r!4142))))

(declare-fun b!4181810 () Bool)

(assert (=> b!4181810 (= e!2596125 (contains!9445 (t!345134 rules!3843) r!4142))))

(assert (= (and d!1234104 res!1714807) b!4181809))

(assert (= (and b!4181809 (not res!1714808)) b!4181810))

(assert (=> d!1234104 m!4770689))

(declare-fun m!4770747 () Bool)

(assert (=> d!1234104 m!4770747))

(declare-fun m!4770749 () Bool)

(assert (=> b!4181810 m!4770749))

(assert (=> b!4181640 d!1234104))

(declare-fun d!1234106 () Bool)

(declare-fun e!2596128 () Bool)

(assert (=> d!1234106 e!2596128))

(declare-fun res!1714809 () Bool)

(assert (=> d!1234106 (=> res!1714809 e!2596128)))

(declare-fun lt!1489212 () Bool)

(assert (=> d!1234106 (= res!1714809 (not lt!1489212))))

(declare-fun e!2596129 () Bool)

(assert (=> d!1234106 (= lt!1489212 e!2596129)))

(declare-fun res!1714810 () Bool)

(assert (=> d!1234106 (=> res!1714810 e!2596129)))

(assert (=> d!1234106 (= res!1714810 ((_ is Nil!45904) p!2959))))

(assert (=> d!1234106 (= (isPrefix!4495 p!2959 input!3342) lt!1489212)))

(declare-fun b!4181814 () Bool)

(assert (=> b!4181814 (= e!2596128 (>= (size!33711 input!3342) (size!33711 p!2959)))))

(declare-fun b!4181812 () Bool)

(declare-fun res!1714812 () Bool)

(declare-fun e!2596127 () Bool)

(assert (=> b!4181812 (=> (not res!1714812) (not e!2596127))))

(assert (=> b!4181812 (= res!1714812 (= (head!8874 p!2959) (head!8874 input!3342)))))

(declare-fun b!4181813 () Bool)

(assert (=> b!4181813 (= e!2596127 (isPrefix!4495 (tail!6721 p!2959) (tail!6721 input!3342)))))

(declare-fun b!4181811 () Bool)

(assert (=> b!4181811 (= e!2596129 e!2596127)))

(declare-fun res!1714811 () Bool)

(assert (=> b!4181811 (=> (not res!1714811) (not e!2596127))))

(assert (=> b!4181811 (= res!1714811 (not ((_ is Nil!45904) input!3342)))))

(assert (= (and d!1234106 (not res!1714810)) b!4181811))

(assert (= (and b!4181811 res!1714811) b!4181812))

(assert (= (and b!4181812 res!1714812) b!4181813))

(assert (= (and d!1234106 (not res!1714809)) b!4181814))

(assert (=> b!4181814 m!4770637))

(assert (=> b!4181814 m!4770609))

(assert (=> b!4181812 m!4770669))

(assert (=> b!4181812 m!4770697))

(assert (=> b!4181813 m!4770665))

(assert (=> b!4181813 m!4770701))

(assert (=> b!4181813 m!4770665))

(assert (=> b!4181813 m!4770701))

(declare-fun m!4770751 () Bool)

(assert (=> b!4181813 m!4770751))

(assert (=> b!4181619 d!1234106))

(declare-fun b!4181886 () Bool)

(declare-fun e!2596188 () Bool)

(declare-fun e!2596191 () Bool)

(assert (=> b!4181886 (= e!2596188 e!2596191)))

(declare-fun c!714082 () Bool)

(assert (=> b!4181886 (= c!714082 ((_ is Star!12543) (regex!7638 r!4142)))))

(declare-fun d!1234108 () Bool)

(declare-fun res!1714868 () Bool)

(assert (=> d!1234108 (=> res!1714868 e!2596188)))

(assert (=> d!1234108 (= res!1714868 ((_ is ElementMatch!12543) (regex!7638 r!4142)))))

(assert (=> d!1234108 (= (validRegex!5660 (regex!7638 r!4142)) e!2596188)))

(declare-fun b!4181887 () Bool)

(declare-fun e!2596187 () Bool)

(assert (=> b!4181887 (= e!2596191 e!2596187)))

(declare-fun res!1714866 () Bool)

(assert (=> b!4181887 (= res!1714866 (not (nullable!4397 (reg!12872 (regex!7638 r!4142)))))))

(assert (=> b!4181887 (=> (not res!1714866) (not e!2596187))))

(declare-fun b!4181888 () Bool)

(declare-fun e!2596186 () Bool)

(assert (=> b!4181888 (= e!2596191 e!2596186)))

(declare-fun c!714081 () Bool)

(assert (=> b!4181888 (= c!714081 ((_ is Union!12543) (regex!7638 r!4142)))))

(declare-fun b!4181889 () Bool)

(declare-fun call!291731 () Bool)

(assert (=> b!4181889 (= e!2596187 call!291731)))

(declare-fun b!4181890 () Bool)

(declare-fun e!2596192 () Bool)

(declare-fun call!291733 () Bool)

(assert (=> b!4181890 (= e!2596192 call!291733)))

(declare-fun b!4181891 () Bool)

(declare-fun e!2596189 () Bool)

(assert (=> b!4181891 (= e!2596189 call!291733)))

(declare-fun b!4181892 () Bool)

(declare-fun res!1714867 () Bool)

(declare-fun e!2596190 () Bool)

(assert (=> b!4181892 (=> res!1714867 e!2596190)))

(assert (=> b!4181892 (= res!1714867 (not ((_ is Concat!20412) (regex!7638 r!4142))))))

(assert (=> b!4181892 (= e!2596186 e!2596190)))

(declare-fun bm!291726 () Bool)

(assert (=> bm!291726 (= call!291731 (validRegex!5660 (ite c!714082 (reg!12872 (regex!7638 r!4142)) (ite c!714081 (regTwo!25599 (regex!7638 r!4142)) (regTwo!25598 (regex!7638 r!4142))))))))

(declare-fun b!4181893 () Bool)

(declare-fun res!1714864 () Bool)

(assert (=> b!4181893 (=> (not res!1714864) (not e!2596192))))

(declare-fun call!291732 () Bool)

(assert (=> b!4181893 (= res!1714864 call!291732)))

(assert (=> b!4181893 (= e!2596186 e!2596192)))

(declare-fun b!4181894 () Bool)

(assert (=> b!4181894 (= e!2596190 e!2596189)))

(declare-fun res!1714865 () Bool)

(assert (=> b!4181894 (=> (not res!1714865) (not e!2596189))))

(assert (=> b!4181894 (= res!1714865 call!291732)))

(declare-fun bm!291727 () Bool)

(assert (=> bm!291727 (= call!291733 call!291731)))

(declare-fun bm!291728 () Bool)

(assert (=> bm!291728 (= call!291732 (validRegex!5660 (ite c!714081 (regOne!25599 (regex!7638 r!4142)) (regOne!25598 (regex!7638 r!4142)))))))

(assert (= (and d!1234108 (not res!1714868)) b!4181886))

(assert (= (and b!4181886 c!714082) b!4181887))

(assert (= (and b!4181886 (not c!714082)) b!4181888))

(assert (= (and b!4181887 res!1714866) b!4181889))

(assert (= (and b!4181888 c!714081) b!4181893))

(assert (= (and b!4181888 (not c!714081)) b!4181892))

(assert (= (and b!4181893 res!1714864) b!4181890))

(assert (= (and b!4181892 (not res!1714867)) b!4181894))

(assert (= (and b!4181894 res!1714865) b!4181891))

(assert (= (or b!4181890 b!4181891) bm!291727))

(assert (= (or b!4181893 b!4181894) bm!291728))

(assert (= (or b!4181889 bm!291727) bm!291726))

(declare-fun m!4770795 () Bool)

(assert (=> b!4181887 m!4770795))

(declare-fun m!4770797 () Bool)

(assert (=> bm!291726 m!4770797))

(declare-fun m!4770799 () Bool)

(assert (=> bm!291728 m!4770799))

(assert (=> b!4181631 d!1234108))

(declare-fun d!1234134 () Bool)

(assert (=> d!1234134 true))

(declare-fun lt!1489237 () Bool)

(declare-fun lambda!129382 () Int)

(declare-fun forall!8476 (List!46029 Int) Bool)

(assert (=> d!1234134 (= lt!1489237 (forall!8476 rules!3843 lambda!129382))))

(declare-fun e!2596221 () Bool)

(assert (=> d!1234134 (= lt!1489237 e!2596221)))

(declare-fun res!1714885 () Bool)

(assert (=> d!1234134 (=> res!1714885 e!2596221)))

(assert (=> d!1234134 (= res!1714885 (not ((_ is Cons!45905) rules!3843)))))

(assert (=> d!1234134 (= (rulesValidInductive!2812 thiss!25986 rules!3843) lt!1489237)))

(declare-fun b!4181933 () Bool)

(declare-fun e!2596222 () Bool)

(assert (=> b!4181933 (= e!2596221 e!2596222)))

(declare-fun res!1714886 () Bool)

(assert (=> b!4181933 (=> (not res!1714886) (not e!2596222))))

(assert (=> b!4181933 (= res!1714886 (ruleValid!3356 thiss!25986 (h!51325 rules!3843)))))

(declare-fun b!4181934 () Bool)

(assert (=> b!4181934 (= e!2596222 (rulesValidInductive!2812 thiss!25986 (t!345134 rules!3843)))))

(assert (= (and d!1234134 (not res!1714885)) b!4181933))

(assert (= (and b!4181933 res!1714886) b!4181934))

(declare-fun m!4770837 () Bool)

(assert (=> d!1234134 m!4770837))

(declare-fun m!4770839 () Bool)

(assert (=> b!4181933 m!4770839))

(declare-fun m!4770841 () Bool)

(assert (=> b!4181934 m!4770841))

(assert (=> b!4181621 d!1234134))

(declare-fun d!1234154 () Bool)

(declare-fun lt!1489238 () Int)

(assert (=> d!1234154 (>= lt!1489238 0)))

(declare-fun e!2596223 () Int)

(assert (=> d!1234154 (= lt!1489238 e!2596223)))

(declare-fun c!714088 () Bool)

(assert (=> d!1234154 (= c!714088 ((_ is Nil!45904) input!3342))))

(assert (=> d!1234154 (= (size!33711 input!3342) lt!1489238)))

(declare-fun b!4181937 () Bool)

(assert (=> b!4181937 (= e!2596223 0)))

(declare-fun b!4181938 () Bool)

(assert (=> b!4181938 (= e!2596223 (+ 1 (size!33711 (t!345133 input!3342))))))

(assert (= (and d!1234154 c!714088) b!4181937))

(assert (= (and d!1234154 (not c!714088)) b!4181938))

(declare-fun m!4770843 () Bool)

(assert (=> b!4181938 m!4770843))

(assert (=> b!4181621 d!1234154))

(declare-fun d!1234156 () Bool)

(assert (=> d!1234156 (<= (size!33711 pBis!107) (size!33711 input!3342))))

(declare-fun lt!1489241 () Unit!64993)

(declare-fun choose!25593 (List!46028 List!46028) Unit!64993)

(assert (=> d!1234156 (= lt!1489241 (choose!25593 pBis!107 input!3342))))

(assert (=> d!1234156 (isPrefix!4495 pBis!107 input!3342)))

(assert (=> d!1234156 (= (lemmaIsPrefixThenSmallerEqSize!525 pBis!107 input!3342) lt!1489241)))

(declare-fun bs!596357 () Bool)

(assert (= bs!596357 d!1234156))

(assert (=> bs!596357 m!4770625))

(assert (=> bs!596357 m!4770637))

(declare-fun m!4770845 () Bool)

(assert (=> bs!596357 m!4770845))

(assert (=> bs!596357 m!4770593))

(assert (=> b!4181621 d!1234156))

(declare-fun b!4181975 () Bool)

(declare-fun e!2596239 () Bool)

(declare-fun lt!1489265 () Option!9832)

(declare-fun get!14918 (Option!9832) tuple2!43714)

(assert (=> b!4181975 (= e!2596239 (contains!9445 rules!3843 (rule!10700 (_1!24991 (get!14918 lt!1489265)))))))

(declare-fun b!4181976 () Bool)

(declare-fun e!2596240 () Bool)

(assert (=> b!4181976 (= e!2596240 e!2596239)))

(declare-fun res!1714916 () Bool)

(assert (=> b!4181976 (=> (not res!1714916) (not e!2596239))))

(declare-fun isDefined!7328 (Option!9832) Bool)

(assert (=> b!4181976 (= res!1714916 (isDefined!7328 lt!1489265))))

(declare-fun b!4181977 () Bool)

(declare-fun e!2596238 () Option!9832)

(declare-fun call!291736 () Option!9832)

(assert (=> b!4181977 (= e!2596238 call!291736)))

(declare-fun b!4181978 () Bool)

(declare-fun res!1714921 () Bool)

(assert (=> b!4181978 (=> (not res!1714921) (not e!2596239))))

(assert (=> b!4181978 (= res!1714921 (= (value!238215 (_1!24991 (get!14918 lt!1489265))) (apply!10603 (transformation!7638 (rule!10700 (_1!24991 (get!14918 lt!1489265)))) (seqFromList!5663 (originalCharacters!8026 (_1!24991 (get!14918 lt!1489265)))))))))

(declare-fun b!4181980 () Bool)

(declare-fun res!1714915 () Bool)

(assert (=> b!4181980 (=> (not res!1714915) (not e!2596239))))

(declare-fun list!16581 (BalanceConc!27292) List!46028)

(declare-fun charsOf!5075 (Token!13990) BalanceConc!27292)

(assert (=> b!4181980 (= res!1714915 (matchR!6282 (regex!7638 (rule!10700 (_1!24991 (get!14918 lt!1489265)))) (list!16581 (charsOf!5075 (_1!24991 (get!14918 lt!1489265))))))))

(declare-fun b!4181981 () Bool)

(declare-fun lt!1489263 () Option!9832)

(declare-fun lt!1489264 () Option!9832)

(assert (=> b!4181981 (= e!2596238 (ite (and ((_ is None!9831) lt!1489263) ((_ is None!9831) lt!1489264)) None!9831 (ite ((_ is None!9831) lt!1489264) lt!1489263 (ite ((_ is None!9831) lt!1489263) lt!1489264 (ite (>= (size!33712 (_1!24991 (v!40641 lt!1489263))) (size!33712 (_1!24991 (v!40641 lt!1489264)))) lt!1489263 lt!1489264)))))))

(assert (=> b!4181981 (= lt!1489263 call!291736)))

(assert (=> b!4181981 (= lt!1489264 (maxPrefix!4279 thiss!25986 (t!345134 rules!3843) input!3342))))

(declare-fun b!4181982 () Bool)

(declare-fun res!1714919 () Bool)

(assert (=> b!4181982 (=> (not res!1714919) (not e!2596239))))

(assert (=> b!4181982 (= res!1714919 (< (size!33711 (_2!24991 (get!14918 lt!1489265))) (size!33711 input!3342)))))

(declare-fun b!4181983 () Bool)

(declare-fun res!1714917 () Bool)

(assert (=> b!4181983 (=> (not res!1714917) (not e!2596239))))

(declare-fun ++!11712 (List!46028 List!46028) List!46028)

(assert (=> b!4181983 (= res!1714917 (= (++!11712 (list!16581 (charsOf!5075 (_1!24991 (get!14918 lt!1489265)))) (_2!24991 (get!14918 lt!1489265))) input!3342))))

(declare-fun bm!291731 () Bool)

(assert (=> bm!291731 (= call!291736 (maxPrefixOneRule!3240 thiss!25986 (h!51325 rules!3843) input!3342))))

(declare-fun d!1234158 () Bool)

(assert (=> d!1234158 e!2596240))

(declare-fun res!1714920 () Bool)

(assert (=> d!1234158 (=> res!1714920 e!2596240)))

(declare-fun isEmpty!27163 (Option!9832) Bool)

(assert (=> d!1234158 (= res!1714920 (isEmpty!27163 lt!1489265))))

(assert (=> d!1234158 (= lt!1489265 e!2596238)))

(declare-fun c!714093 () Bool)

(assert (=> d!1234158 (= c!714093 (and ((_ is Cons!45905) rules!3843) ((_ is Nil!45905) (t!345134 rules!3843))))))

(declare-fun lt!1489262 () Unit!64993)

(declare-fun lt!1489266 () Unit!64993)

(assert (=> d!1234158 (= lt!1489262 lt!1489266)))

(assert (=> d!1234158 (isPrefix!4495 input!3342 input!3342)))

(assert (=> d!1234158 (= lt!1489266 (lemmaIsPrefixRefl!2924 input!3342 input!3342))))

(assert (=> d!1234158 (rulesValidInductive!2812 thiss!25986 rules!3843)))

(assert (=> d!1234158 (= (maxPrefix!4279 thiss!25986 rules!3843 input!3342) lt!1489265)))

(declare-fun b!4181979 () Bool)

(declare-fun res!1714918 () Bool)

(assert (=> b!4181979 (=> (not res!1714918) (not e!2596239))))

(assert (=> b!4181979 (= res!1714918 (= (list!16581 (charsOf!5075 (_1!24991 (get!14918 lt!1489265)))) (originalCharacters!8026 (_1!24991 (get!14918 lt!1489265)))))))

(assert (= (and d!1234158 c!714093) b!4181977))

(assert (= (and d!1234158 (not c!714093)) b!4181981))

(assert (= (or b!4181977 b!4181981) bm!291731))

(assert (= (and d!1234158 (not res!1714920)) b!4181976))

(assert (= (and b!4181976 res!1714916) b!4181979))

(assert (= (and b!4181979 res!1714918) b!4181982))

(assert (= (and b!4181982 res!1714919) b!4181983))

(assert (= (and b!4181983 res!1714917) b!4181978))

(assert (= (and b!4181978 res!1714921) b!4181980))

(assert (= (and b!4181980 res!1714915) b!4181975))

(declare-fun m!4770847 () Bool)

(assert (=> d!1234158 m!4770847))

(assert (=> d!1234158 m!4770603))

(assert (=> d!1234158 m!4770607))

(assert (=> d!1234158 m!4770635))

(declare-fun m!4770849 () Bool)

(assert (=> b!4181978 m!4770849))

(declare-fun m!4770851 () Bool)

(assert (=> b!4181978 m!4770851))

(assert (=> b!4181978 m!4770851))

(declare-fun m!4770853 () Bool)

(assert (=> b!4181978 m!4770853))

(declare-fun m!4770855 () Bool)

(assert (=> b!4181981 m!4770855))

(declare-fun m!4770857 () Bool)

(assert (=> bm!291731 m!4770857))

(assert (=> b!4181980 m!4770849))

(declare-fun m!4770859 () Bool)

(assert (=> b!4181980 m!4770859))

(assert (=> b!4181980 m!4770859))

(declare-fun m!4770861 () Bool)

(assert (=> b!4181980 m!4770861))

(assert (=> b!4181980 m!4770861))

(declare-fun m!4770863 () Bool)

(assert (=> b!4181980 m!4770863))

(assert (=> b!4181975 m!4770849))

(declare-fun m!4770865 () Bool)

(assert (=> b!4181975 m!4770865))

(assert (=> b!4181983 m!4770849))

(assert (=> b!4181983 m!4770859))

(assert (=> b!4181983 m!4770859))

(assert (=> b!4181983 m!4770861))

(assert (=> b!4181983 m!4770861))

(declare-fun m!4770867 () Bool)

(assert (=> b!4181983 m!4770867))

(assert (=> b!4181982 m!4770849))

(declare-fun m!4770869 () Bool)

(assert (=> b!4181982 m!4770869))

(assert (=> b!4181982 m!4770637))

(declare-fun m!4770871 () Bool)

(assert (=> b!4181976 m!4770871))

(assert (=> b!4181979 m!4770849))

(assert (=> b!4181979 m!4770859))

(assert (=> b!4181979 m!4770859))

(assert (=> b!4181979 m!4770861))

(assert (=> b!4181632 d!1234158))

(declare-fun d!1234160 () Bool)

(declare-fun lt!1489274 () List!46028)

(assert (=> d!1234160 (= (++!11712 p!2959 lt!1489274) input!3342)))

(declare-fun e!2596247 () List!46028)

(assert (=> d!1234160 (= lt!1489274 e!2596247)))

(declare-fun c!714097 () Bool)

(assert (=> d!1234160 (= c!714097 ((_ is Cons!45904) p!2959))))

(assert (=> d!1234160 (>= (size!33711 input!3342) (size!33711 p!2959))))

(assert (=> d!1234160 (= (getSuffix!2788 input!3342 p!2959) lt!1489274)))

(declare-fun b!4181997 () Bool)

(assert (=> b!4181997 (= e!2596247 (getSuffix!2788 (tail!6721 input!3342) (t!345133 p!2959)))))

(declare-fun b!4181998 () Bool)

(assert (=> b!4181998 (= e!2596247 input!3342)))

(assert (= (and d!1234160 c!714097) b!4181997))

(assert (= (and d!1234160 (not c!714097)) b!4181998))

(declare-fun m!4770907 () Bool)

(assert (=> d!1234160 m!4770907))

(assert (=> d!1234160 m!4770637))

(assert (=> d!1234160 m!4770609))

(assert (=> b!4181997 m!4770701))

(assert (=> b!4181997 m!4770701))

(declare-fun m!4770913 () Bool)

(assert (=> b!4181997 m!4770913))

(assert (=> b!4181633 d!1234160))

(declare-fun d!1234162 () Bool)

(declare-fun e!2596249 () Bool)

(assert (=> d!1234162 e!2596249))

(declare-fun res!1714929 () Bool)

(assert (=> d!1234162 (=> res!1714929 e!2596249)))

(declare-fun lt!1489275 () Bool)

(assert (=> d!1234162 (= res!1714929 (not lt!1489275))))

(declare-fun e!2596250 () Bool)

(assert (=> d!1234162 (= lt!1489275 e!2596250)))

(declare-fun res!1714930 () Bool)

(assert (=> d!1234162 (=> res!1714930 e!2596250)))

(assert (=> d!1234162 (= res!1714930 ((_ is Nil!45904) input!3342))))

(assert (=> d!1234162 (= (isPrefix!4495 input!3342 input!3342) lt!1489275)))

(declare-fun b!4182002 () Bool)

(assert (=> b!4182002 (= e!2596249 (>= (size!33711 input!3342) (size!33711 input!3342)))))

(declare-fun b!4182000 () Bool)

(declare-fun res!1714932 () Bool)

(declare-fun e!2596248 () Bool)

(assert (=> b!4182000 (=> (not res!1714932) (not e!2596248))))

(assert (=> b!4182000 (= res!1714932 (= (head!8874 input!3342) (head!8874 input!3342)))))

(declare-fun b!4182001 () Bool)

(assert (=> b!4182001 (= e!2596248 (isPrefix!4495 (tail!6721 input!3342) (tail!6721 input!3342)))))

(declare-fun b!4181999 () Bool)

(assert (=> b!4181999 (= e!2596250 e!2596248)))

(declare-fun res!1714931 () Bool)

(assert (=> b!4181999 (=> (not res!1714931) (not e!2596248))))

(assert (=> b!4181999 (= res!1714931 (not ((_ is Nil!45904) input!3342)))))

(assert (= (and d!1234162 (not res!1714930)) b!4181999))

(assert (= (and b!4181999 res!1714931) b!4182000))

(assert (= (and b!4182000 res!1714932) b!4182001))

(assert (= (and d!1234162 (not res!1714929)) b!4182002))

(assert (=> b!4182002 m!4770637))

(assert (=> b!4182002 m!4770637))

(assert (=> b!4182000 m!4770697))

(assert (=> b!4182000 m!4770697))

(assert (=> b!4182001 m!4770701))

(assert (=> b!4182001 m!4770701))

(assert (=> b!4182001 m!4770701))

(assert (=> b!4182001 m!4770701))

(declare-fun m!4770921 () Bool)

(assert (=> b!4182001 m!4770921))

(assert (=> b!4181633 d!1234162))

(declare-fun d!1234166 () Bool)

(declare-fun fromListB!2589 (List!46028) BalanceConc!27292)

(assert (=> d!1234166 (= (seqFromList!5663 p!2959) (fromListB!2589 p!2959))))

(declare-fun bs!596358 () Bool)

(assert (= bs!596358 d!1234166))

(declare-fun m!4770923 () Bool)

(assert (=> bs!596358 m!4770923))

(assert (=> b!4181633 d!1234166))

(declare-fun d!1234168 () Bool)

(assert (=> d!1234168 (isPrefix!4495 input!3342 input!3342)))

(declare-fun lt!1489279 () Unit!64993)

(declare-fun choose!25594 (List!46028 List!46028) Unit!64993)

(assert (=> d!1234168 (= lt!1489279 (choose!25594 input!3342 input!3342))))

(assert (=> d!1234168 (= (lemmaIsPrefixRefl!2924 input!3342 input!3342) lt!1489279)))

(declare-fun bs!596359 () Bool)

(assert (= bs!596359 d!1234168))

(assert (=> bs!596359 m!4770603))

(declare-fun m!4770929 () Bool)

(assert (=> bs!596359 m!4770929))

(assert (=> b!4181633 d!1234168))

(declare-fun d!1234170 () Bool)

(declare-fun dynLambda!19701 (Int BalanceConc!27292) TokenValue!7868)

(assert (=> d!1234170 (= (apply!10603 (transformation!7638 r!4142) lt!1489173) (dynLambda!19701 (toValue!10330 (transformation!7638 r!4142)) lt!1489173))))

(declare-fun b_lambda!122873 () Bool)

(assert (=> (not b_lambda!122873) (not d!1234170)))

(declare-fun tb!250339 () Bool)

(declare-fun t!345152 () Bool)

(assert (=> (and b!4181618 (= (toValue!10330 (transformation!7638 (h!51325 rules!3843))) (toValue!10330 (transformation!7638 r!4142))) t!345152) tb!250339))

(declare-fun result!305050 () Bool)

(declare-fun inv!21 (TokenValue!7868) Bool)

(assert (=> tb!250339 (= result!305050 (inv!21 (dynLambda!19701 (toValue!10330 (transformation!7638 r!4142)) lt!1489173)))))

(declare-fun m!4770931 () Bool)

(assert (=> tb!250339 m!4770931))

(assert (=> d!1234170 t!345152))

(declare-fun b_and!327183 () Bool)

(assert (= b_and!327149 (and (=> t!345152 result!305050) b_and!327183)))

(declare-fun t!345154 () Bool)

(declare-fun tb!250341 () Bool)

(assert (=> (and b!4181630 (= (toValue!10330 (transformation!7638 r!4142)) (toValue!10330 (transformation!7638 r!4142))) t!345154) tb!250341))

(declare-fun result!305054 () Bool)

(assert (= result!305054 result!305050))

(assert (=> d!1234170 t!345154))

(declare-fun b_and!327185 () Bool)

(assert (= b_and!327153 (and (=> t!345154 result!305054) b_and!327185)))

(declare-fun t!345156 () Bool)

(declare-fun tb!250343 () Bool)

(assert (=> (and b!4181629 (= (toValue!10330 (transformation!7638 rBis!167)) (toValue!10330 (transformation!7638 r!4142))) t!345156) tb!250343))

(declare-fun result!305056 () Bool)

(assert (= result!305056 result!305050))

(assert (=> d!1234170 t!345156))

(declare-fun b_and!327187 () Bool)

(assert (= b_and!327157 (and (=> t!345156 result!305056) b_and!327187)))

(declare-fun m!4770933 () Bool)

(assert (=> d!1234170 m!4770933))

(assert (=> b!4181633 d!1234170))

(declare-fun b!4182051 () Bool)

(declare-fun e!2596279 () Bool)

(assert (=> b!4182051 (= e!2596279 true)))

(declare-fun d!1234172 () Bool)

(assert (=> d!1234172 e!2596279))

(assert (= d!1234172 b!4182051))

(declare-fun order!24225 () Int)

(declare-fun lambda!129385 () Int)

(declare-fun order!24227 () Int)

(declare-fun dynLambda!19702 (Int Int) Int)

(declare-fun dynLambda!19703 (Int Int) Int)

(assert (=> b!4182051 (< (dynLambda!19702 order!24225 (toValue!10330 (transformation!7638 r!4142))) (dynLambda!19703 order!24227 lambda!129385))))

(declare-fun order!24229 () Int)

(declare-fun dynLambda!19704 (Int Int) Int)

(assert (=> b!4182051 (< (dynLambda!19704 order!24229 (toChars!10189 (transformation!7638 r!4142))) (dynLambda!19703 order!24227 lambda!129385))))

(declare-fun dynLambda!19705 (Int TokenValue!7868) BalanceConc!27292)

(assert (=> d!1234172 (= (list!16581 (dynLambda!19705 (toChars!10189 (transformation!7638 r!4142)) (dynLambda!19701 (toValue!10330 (transformation!7638 r!4142)) lt!1489173))) (list!16581 lt!1489173))))

(declare-fun lt!1489282 () Unit!64993)

(declare-fun ForallOf!1040 (Int BalanceConc!27292) Unit!64993)

(assert (=> d!1234172 (= lt!1489282 (ForallOf!1040 lambda!129385 lt!1489173))))

(assert (=> d!1234172 (= (lemmaSemiInverse!2404 (transformation!7638 r!4142) lt!1489173) lt!1489282)))

(declare-fun b_lambda!122881 () Bool)

(assert (=> (not b_lambda!122881) (not d!1234172)))

(declare-fun t!345158 () Bool)

(declare-fun tb!250345 () Bool)

(assert (=> (and b!4181618 (= (toChars!10189 (transformation!7638 (h!51325 rules!3843))) (toChars!10189 (transformation!7638 r!4142))) t!345158) tb!250345))

(declare-fun e!2596282 () Bool)

(declare-fun tp!1278126 () Bool)

(declare-fun b!4182056 () Bool)

(declare-fun inv!60445 (Conc!13849) Bool)

(assert (=> b!4182056 (= e!2596282 (and (inv!60445 (c!714042 (dynLambda!19705 (toChars!10189 (transformation!7638 r!4142)) (dynLambda!19701 (toValue!10330 (transformation!7638 r!4142)) lt!1489173)))) tp!1278126))))

(declare-fun result!305058 () Bool)

(declare-fun inv!60446 (BalanceConc!27292) Bool)

(assert (=> tb!250345 (= result!305058 (and (inv!60446 (dynLambda!19705 (toChars!10189 (transformation!7638 r!4142)) (dynLambda!19701 (toValue!10330 (transformation!7638 r!4142)) lt!1489173))) e!2596282))))

(assert (= tb!250345 b!4182056))

(declare-fun m!4770935 () Bool)

(assert (=> b!4182056 m!4770935))

(declare-fun m!4770937 () Bool)

(assert (=> tb!250345 m!4770937))

(assert (=> d!1234172 t!345158))

(declare-fun b_and!327189 () Bool)

(assert (= b_and!327151 (and (=> t!345158 result!305058) b_and!327189)))

(declare-fun t!345160 () Bool)

(declare-fun tb!250347 () Bool)

(assert (=> (and b!4181630 (= (toChars!10189 (transformation!7638 r!4142)) (toChars!10189 (transformation!7638 r!4142))) t!345160) tb!250347))

(declare-fun result!305062 () Bool)

(assert (= result!305062 result!305058))

(assert (=> d!1234172 t!345160))

(declare-fun b_and!327191 () Bool)

(assert (= b_and!327155 (and (=> t!345160 result!305062) b_and!327191)))

(declare-fun t!345162 () Bool)

(declare-fun tb!250349 () Bool)

(assert (=> (and b!4181629 (= (toChars!10189 (transformation!7638 rBis!167)) (toChars!10189 (transformation!7638 r!4142))) t!345162) tb!250349))

(declare-fun result!305064 () Bool)

(assert (= result!305064 result!305058))

(assert (=> d!1234172 t!345162))

(declare-fun b_and!327193 () Bool)

(assert (= b_and!327159 (and (=> t!345162 result!305064) b_and!327193)))

(declare-fun b_lambda!122883 () Bool)

(assert (=> (not b_lambda!122883) (not d!1234172)))

(assert (=> d!1234172 t!345152))

(declare-fun b_and!327195 () Bool)

(assert (= b_and!327183 (and (=> t!345152 result!305050) b_and!327195)))

(assert (=> d!1234172 t!345154))

(declare-fun b_and!327197 () Bool)

(assert (= b_and!327185 (and (=> t!345154 result!305054) b_and!327197)))

(assert (=> d!1234172 t!345156))

(declare-fun b_and!327199 () Bool)

(assert (= b_and!327187 (and (=> t!345156 result!305056) b_and!327199)))

(assert (=> d!1234172 m!4770933))

(declare-fun m!4770939 () Bool)

(assert (=> d!1234172 m!4770939))

(declare-fun m!4770941 () Bool)

(assert (=> d!1234172 m!4770941))

(declare-fun m!4770943 () Bool)

(assert (=> d!1234172 m!4770943))

(declare-fun m!4770945 () Bool)

(assert (=> d!1234172 m!4770945))

(assert (=> d!1234172 m!4770933))

(assert (=> d!1234172 m!4770939))

(assert (=> b!4181633 d!1234172))

(declare-fun b!4182075 () Bool)

(declare-fun res!1714951 () Bool)

(declare-fun e!2596294 () Bool)

(assert (=> b!4182075 (=> (not res!1714951) (not e!2596294))))

(declare-fun lt!1489297 () Option!9832)

(assert (=> b!4182075 (= res!1714951 (= (rule!10700 (_1!24991 (get!14918 lt!1489297))) r!4142))))

(declare-fun b!4182076 () Bool)

(declare-fun res!1714950 () Bool)

(assert (=> b!4182076 (=> (not res!1714950) (not e!2596294))))

(assert (=> b!4182076 (= res!1714950 (= (++!11712 (list!16581 (charsOf!5075 (_1!24991 (get!14918 lt!1489297)))) (_2!24991 (get!14918 lt!1489297))) input!3342))))

(declare-fun b!4182077 () Bool)

(declare-fun res!1714953 () Bool)

(assert (=> b!4182077 (=> (not res!1714953) (not e!2596294))))

(assert (=> b!4182077 (= res!1714953 (= (value!238215 (_1!24991 (get!14918 lt!1489297))) (apply!10603 (transformation!7638 (rule!10700 (_1!24991 (get!14918 lt!1489297)))) (seqFromList!5663 (originalCharacters!8026 (_1!24991 (get!14918 lt!1489297)))))))))

(declare-fun b!4182078 () Bool)

(declare-fun res!1714952 () Bool)

(assert (=> b!4182078 (=> (not res!1714952) (not e!2596294))))

(assert (=> b!4182078 (= res!1714952 (< (size!33711 (_2!24991 (get!14918 lt!1489297))) (size!33711 input!3342)))))

(declare-fun b!4182079 () Bool)

(declare-fun e!2596293 () Option!9832)

(assert (=> b!4182079 (= e!2596293 None!9831)))

(declare-fun b!4182080 () Bool)

(assert (=> b!4182080 (= e!2596294 (= (size!33712 (_1!24991 (get!14918 lt!1489297))) (size!33711 (originalCharacters!8026 (_1!24991 (get!14918 lt!1489297))))))))

(declare-fun b!4182081 () Bool)

(declare-fun e!2596292 () Bool)

(assert (=> b!4182081 (= e!2596292 e!2596294)))

(declare-fun res!1714947 () Bool)

(assert (=> b!4182081 (=> (not res!1714947) (not e!2596294))))

(assert (=> b!4182081 (= res!1714947 (matchR!6282 (regex!7638 r!4142) (list!16581 (charsOf!5075 (_1!24991 (get!14918 lt!1489297))))))))

(declare-fun d!1234174 () Bool)

(assert (=> d!1234174 e!2596292))

(declare-fun res!1714949 () Bool)

(assert (=> d!1234174 (=> res!1714949 e!2596292)))

(assert (=> d!1234174 (= res!1714949 (isEmpty!27163 lt!1489297))))

(assert (=> d!1234174 (= lt!1489297 e!2596293)))

(declare-fun c!714102 () Bool)

(declare-datatypes ((tuple2!43718 0))(
  ( (tuple2!43719 (_1!24993 List!46028) (_2!24993 List!46028)) )
))
(declare-fun lt!1489294 () tuple2!43718)

(assert (=> d!1234174 (= c!714102 (isEmpty!27162 (_1!24993 lt!1489294)))))

(declare-fun findLongestMatch!1500 (Regex!12543 List!46028) tuple2!43718)

(assert (=> d!1234174 (= lt!1489294 (findLongestMatch!1500 (regex!7638 r!4142) input!3342))))

(assert (=> d!1234174 (ruleValid!3356 thiss!25986 r!4142)))

(assert (=> d!1234174 (= (maxPrefixOneRule!3240 thiss!25986 r!4142 input!3342) lt!1489297)))

(declare-fun b!4182082 () Bool)

(declare-fun size!33714 (BalanceConc!27292) Int)

(assert (=> b!4182082 (= e!2596293 (Some!9831 (tuple2!43715 (Token!13991 (apply!10603 (transformation!7638 r!4142) (seqFromList!5663 (_1!24993 lt!1489294))) r!4142 (size!33714 (seqFromList!5663 (_1!24993 lt!1489294))) (_1!24993 lt!1489294)) (_2!24993 lt!1489294))))))

(declare-fun lt!1489293 () Unit!64993)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1560 (Regex!12543 List!46028) Unit!64993)

(assert (=> b!4182082 (= lt!1489293 (longestMatchIsAcceptedByMatchOrIsEmpty!1560 (regex!7638 r!4142) input!3342))))

(declare-fun res!1714948 () Bool)

(declare-fun findLongestMatchInner!1587 (Regex!12543 List!46028 Int List!46028 List!46028 Int) tuple2!43718)

(assert (=> b!4182082 (= res!1714948 (isEmpty!27162 (_1!24993 (findLongestMatchInner!1587 (regex!7638 r!4142) Nil!45904 (size!33711 Nil!45904) input!3342 input!3342 (size!33711 input!3342)))))))

(declare-fun e!2596291 () Bool)

(assert (=> b!4182082 (=> res!1714948 e!2596291)))

(assert (=> b!4182082 e!2596291))

(declare-fun lt!1489295 () Unit!64993)

(assert (=> b!4182082 (= lt!1489295 lt!1489293)))

(declare-fun lt!1489296 () Unit!64993)

(assert (=> b!4182082 (= lt!1489296 (lemmaSemiInverse!2404 (transformation!7638 r!4142) (seqFromList!5663 (_1!24993 lt!1489294))))))

(declare-fun b!4182083 () Bool)

(assert (=> b!4182083 (= e!2596291 (matchR!6282 (regex!7638 r!4142) (_1!24993 (findLongestMatchInner!1587 (regex!7638 r!4142) Nil!45904 (size!33711 Nil!45904) input!3342 input!3342 (size!33711 input!3342)))))))

(assert (= (and d!1234174 c!714102) b!4182079))

(assert (= (and d!1234174 (not c!714102)) b!4182082))

(assert (= (and b!4182082 (not res!1714948)) b!4182083))

(assert (= (and d!1234174 (not res!1714949)) b!4182081))

(assert (= (and b!4182081 res!1714947) b!4182076))

(assert (= (and b!4182076 res!1714950) b!4182078))

(assert (= (and b!4182078 res!1714952) b!4182075))

(assert (= (and b!4182075 res!1714951) b!4182077))

(assert (= (and b!4182077 res!1714953) b!4182080))

(declare-fun m!4770947 () Bool)

(assert (=> b!4182081 m!4770947))

(declare-fun m!4770949 () Bool)

(assert (=> b!4182081 m!4770949))

(assert (=> b!4182081 m!4770949))

(declare-fun m!4770951 () Bool)

(assert (=> b!4182081 m!4770951))

(assert (=> b!4182081 m!4770951))

(declare-fun m!4770953 () Bool)

(assert (=> b!4182081 m!4770953))

(assert (=> b!4182078 m!4770947))

(declare-fun m!4770955 () Bool)

(assert (=> b!4182078 m!4770955))

(assert (=> b!4182078 m!4770637))

(declare-fun m!4770957 () Bool)

(assert (=> b!4182082 m!4770957))

(declare-fun m!4770959 () Bool)

(assert (=> b!4182082 m!4770959))

(declare-fun m!4770961 () Bool)

(assert (=> b!4182082 m!4770961))

(declare-fun m!4770963 () Bool)

(assert (=> b!4182082 m!4770963))

(assert (=> b!4182082 m!4770637))

(declare-fun m!4770965 () Bool)

(assert (=> b!4182082 m!4770965))

(declare-fun m!4770967 () Bool)

(assert (=> b!4182082 m!4770967))

(assert (=> b!4182082 m!4770637))

(assert (=> b!4182082 m!4770959))

(assert (=> b!4182082 m!4770959))

(declare-fun m!4770969 () Bool)

(assert (=> b!4182082 m!4770969))

(assert (=> b!4182082 m!4770959))

(declare-fun m!4770971 () Bool)

(assert (=> b!4182082 m!4770971))

(assert (=> b!4182082 m!4770963))

(assert (=> b!4182075 m!4770947))

(assert (=> b!4182076 m!4770947))

(assert (=> b!4182076 m!4770949))

(assert (=> b!4182076 m!4770949))

(assert (=> b!4182076 m!4770951))

(assert (=> b!4182076 m!4770951))

(declare-fun m!4770973 () Bool)

(assert (=> b!4182076 m!4770973))

(assert (=> b!4182083 m!4770963))

(assert (=> b!4182083 m!4770637))

(assert (=> b!4182083 m!4770963))

(assert (=> b!4182083 m!4770637))

(assert (=> b!4182083 m!4770965))

(declare-fun m!4770975 () Bool)

(assert (=> b!4182083 m!4770975))

(declare-fun m!4770977 () Bool)

(assert (=> d!1234174 m!4770977))

(declare-fun m!4770979 () Bool)

(assert (=> d!1234174 m!4770979))

(declare-fun m!4770981 () Bool)

(assert (=> d!1234174 m!4770981))

(assert (=> d!1234174 m!4770597))

(assert (=> b!4182077 m!4770947))

(declare-fun m!4770983 () Bool)

(assert (=> b!4182077 m!4770983))

(assert (=> b!4182077 m!4770983))

(declare-fun m!4770985 () Bool)

(assert (=> b!4182077 m!4770985))

(assert (=> b!4182080 m!4770947))

(declare-fun m!4770987 () Bool)

(assert (=> b!4182080 m!4770987))

(assert (=> b!4181633 d!1234174))

(declare-fun d!1234176 () Bool)

(declare-fun lt!1489298 () Int)

(assert (=> d!1234176 (>= lt!1489298 0)))

(declare-fun e!2596295 () Int)

(assert (=> d!1234176 (= lt!1489298 e!2596295)))

(declare-fun c!714103 () Bool)

(assert (=> d!1234176 (= c!714103 ((_ is Nil!45904) p!2959))))

(assert (=> d!1234176 (= (size!33711 p!2959) lt!1489298)))

(declare-fun b!4182084 () Bool)

(assert (=> b!4182084 (= e!2596295 0)))

(declare-fun b!4182085 () Bool)

(assert (=> b!4182085 (= e!2596295 (+ 1 (size!33711 (t!345133 p!2959))))))

(assert (= (and d!1234176 c!714103) b!4182084))

(assert (= (and d!1234176 (not c!714103)) b!4182085))

(declare-fun m!4770989 () Bool)

(assert (=> b!4182085 m!4770989))

(assert (=> b!4181633 d!1234176))

(declare-fun d!1234178 () Bool)

(assert (=> d!1234178 (= (inv!60440 (tag!8502 rBis!167)) (= (mod (str.len (value!238214 (tag!8502 rBis!167))) 2) 0))))

(assert (=> b!4181634 d!1234178))

(declare-fun d!1234180 () Bool)

(declare-fun res!1714954 () Bool)

(declare-fun e!2596296 () Bool)

(assert (=> d!1234180 (=> (not res!1714954) (not e!2596296))))

(assert (=> d!1234180 (= res!1714954 (semiInverseModEq!3306 (toChars!10189 (transformation!7638 rBis!167)) (toValue!10330 (transformation!7638 rBis!167))))))

(assert (=> d!1234180 (= (inv!60442 (transformation!7638 rBis!167)) e!2596296)))

(declare-fun b!4182086 () Bool)

(assert (=> b!4182086 (= e!2596296 (equivClasses!3205 (toChars!10189 (transformation!7638 rBis!167)) (toValue!10330 (transformation!7638 rBis!167))))))

(assert (= (and d!1234180 res!1714954) b!4182086))

(declare-fun m!4770991 () Bool)

(assert (=> d!1234180 m!4770991))

(declare-fun m!4770993 () Bool)

(assert (=> b!4182086 m!4770993))

(assert (=> b!4181634 d!1234180))

(declare-fun b!4182091 () Bool)

(declare-fun e!2596299 () Bool)

(declare-fun tp!1278129 () Bool)

(assert (=> b!4182091 (= e!2596299 (and tp_is_empty!22049 tp!1278129))))

(assert (=> b!4181636 (= tp!1278067 e!2596299)))

(assert (= (and b!4181636 ((_ is Cons!45904) (t!345133 input!3342))) b!4182091))

(declare-fun b!4182102 () Bool)

(declare-fun b_free!121535 () Bool)

(declare-fun b_next!122239 () Bool)

(assert (=> b!4182102 (= b_free!121535 (not b_next!122239))))

(declare-fun t!345164 () Bool)

(declare-fun tb!250351 () Bool)

(assert (=> (and b!4182102 (= (toValue!10330 (transformation!7638 (h!51325 (t!345134 rules!3843)))) (toValue!10330 (transformation!7638 r!4142))) t!345164) tb!250351))

(declare-fun result!305070 () Bool)

(assert (= result!305070 result!305050))

(assert (=> d!1234170 t!345164))

(assert (=> d!1234172 t!345164))

(declare-fun tp!1278141 () Bool)

(declare-fun b_and!327201 () Bool)

(assert (=> b!4182102 (= tp!1278141 (and (=> t!345164 result!305070) b_and!327201))))

(declare-fun b_free!121537 () Bool)

(declare-fun b_next!122241 () Bool)

(assert (=> b!4182102 (= b_free!121537 (not b_next!122241))))

(declare-fun t!345166 () Bool)

(declare-fun tb!250353 () Bool)

(assert (=> (and b!4182102 (= (toChars!10189 (transformation!7638 (h!51325 (t!345134 rules!3843)))) (toChars!10189 (transformation!7638 r!4142))) t!345166) tb!250353))

(declare-fun result!305072 () Bool)

(assert (= result!305072 result!305058))

(assert (=> d!1234172 t!345166))

(declare-fun tp!1278139 () Bool)

(declare-fun b_and!327203 () Bool)

(assert (=> b!4182102 (= tp!1278139 (and (=> t!345166 result!305072) b_and!327203))))

(declare-fun e!2596308 () Bool)

(assert (=> b!4182102 (= e!2596308 (and tp!1278141 tp!1278139))))

(declare-fun e!2596310 () Bool)

(declare-fun tp!1278138 () Bool)

(declare-fun b!4182101 () Bool)

(assert (=> b!4182101 (= e!2596310 (and tp!1278138 (inv!60440 (tag!8502 (h!51325 (t!345134 rules!3843)))) (inv!60442 (transformation!7638 (h!51325 (t!345134 rules!3843)))) e!2596308))))

(declare-fun b!4182100 () Bool)

(declare-fun e!2596311 () Bool)

(declare-fun tp!1278140 () Bool)

(assert (=> b!4182100 (= e!2596311 (and e!2596310 tp!1278140))))

(assert (=> b!4181620 (= tp!1278069 e!2596311)))

(assert (= b!4182101 b!4182102))

(assert (= b!4182100 b!4182101))

(assert (= (and b!4181620 ((_ is Cons!45905) (t!345134 rules!3843))) b!4182100))

(declare-fun m!4770995 () Bool)

(assert (=> b!4182101 m!4770995))

(declare-fun m!4770997 () Bool)

(assert (=> b!4182101 m!4770997))

(declare-fun b!4182113 () Bool)

(declare-fun e!2596314 () Bool)

(assert (=> b!4182113 (= e!2596314 tp_is_empty!22049)))

(assert (=> b!4181637 (= tp!1278068 e!2596314)))

(declare-fun b!4182116 () Bool)

(declare-fun tp!1278155 () Bool)

(declare-fun tp!1278152 () Bool)

(assert (=> b!4182116 (= e!2596314 (and tp!1278155 tp!1278152))))

(declare-fun b!4182114 () Bool)

(declare-fun tp!1278154 () Bool)

(declare-fun tp!1278153 () Bool)

(assert (=> b!4182114 (= e!2596314 (and tp!1278154 tp!1278153))))

(declare-fun b!4182115 () Bool)

(declare-fun tp!1278156 () Bool)

(assert (=> b!4182115 (= e!2596314 tp!1278156)))

(assert (= (and b!4181637 ((_ is ElementMatch!12543) (regex!7638 r!4142))) b!4182113))

(assert (= (and b!4181637 ((_ is Concat!20412) (regex!7638 r!4142))) b!4182114))

(assert (= (and b!4181637 ((_ is Star!12543) (regex!7638 r!4142))) b!4182115))

(assert (= (and b!4181637 ((_ is Union!12543) (regex!7638 r!4142))) b!4182116))

(declare-fun b!4182117 () Bool)

(declare-fun e!2596315 () Bool)

(declare-fun tp!1278157 () Bool)

(assert (=> b!4182117 (= e!2596315 (and tp_is_empty!22049 tp!1278157))))

(assert (=> b!4181622 (= tp!1278077 e!2596315)))

(assert (= (and b!4181622 ((_ is Cons!45904) (t!345133 pBis!107))) b!4182117))

(declare-fun b!4182118 () Bool)

(declare-fun e!2596316 () Bool)

(assert (=> b!4182118 (= e!2596316 tp_is_empty!22049)))

(assert (=> b!4181617 (= tp!1278070 e!2596316)))

(declare-fun b!4182121 () Bool)

(declare-fun tp!1278161 () Bool)

(declare-fun tp!1278158 () Bool)

(assert (=> b!4182121 (= e!2596316 (and tp!1278161 tp!1278158))))

(declare-fun b!4182119 () Bool)

(declare-fun tp!1278160 () Bool)

(declare-fun tp!1278159 () Bool)

(assert (=> b!4182119 (= e!2596316 (and tp!1278160 tp!1278159))))

(declare-fun b!4182120 () Bool)

(declare-fun tp!1278162 () Bool)

(assert (=> b!4182120 (= e!2596316 tp!1278162)))

(assert (= (and b!4181617 ((_ is ElementMatch!12543) (regex!7638 (h!51325 rules!3843)))) b!4182118))

(assert (= (and b!4181617 ((_ is Concat!20412) (regex!7638 (h!51325 rules!3843)))) b!4182119))

(assert (= (and b!4181617 ((_ is Star!12543) (regex!7638 (h!51325 rules!3843)))) b!4182120))

(assert (= (and b!4181617 ((_ is Union!12543) (regex!7638 (h!51325 rules!3843)))) b!4182121))

(declare-fun b!4182122 () Bool)

(declare-fun e!2596317 () Bool)

(declare-fun tp!1278163 () Bool)

(assert (=> b!4182122 (= e!2596317 (and tp_is_empty!22049 tp!1278163))))

(assert (=> b!4181623 (= tp!1278076 e!2596317)))

(assert (= (and b!4181623 ((_ is Cons!45904) (t!345133 p!2959))) b!4182122))

(declare-fun b!4182123 () Bool)

(declare-fun e!2596318 () Bool)

(assert (=> b!4182123 (= e!2596318 tp_is_empty!22049)))

(assert (=> b!4181634 (= tp!1278075 e!2596318)))

(declare-fun b!4182126 () Bool)

(declare-fun tp!1278167 () Bool)

(declare-fun tp!1278164 () Bool)

(assert (=> b!4182126 (= e!2596318 (and tp!1278167 tp!1278164))))

(declare-fun b!4182124 () Bool)

(declare-fun tp!1278166 () Bool)

(declare-fun tp!1278165 () Bool)

(assert (=> b!4182124 (= e!2596318 (and tp!1278166 tp!1278165))))

(declare-fun b!4182125 () Bool)

(declare-fun tp!1278168 () Bool)

(assert (=> b!4182125 (= e!2596318 tp!1278168)))

(assert (= (and b!4181634 ((_ is ElementMatch!12543) (regex!7638 rBis!167))) b!4182123))

(assert (= (and b!4181634 ((_ is Concat!20412) (regex!7638 rBis!167))) b!4182124))

(assert (= (and b!4181634 ((_ is Star!12543) (regex!7638 rBis!167))) b!4182125))

(assert (= (and b!4181634 ((_ is Union!12543) (regex!7638 rBis!167))) b!4182126))

(declare-fun b_lambda!122885 () Bool)

(assert (= b_lambda!122881 (or (and b!4181618 b_free!121521 (= (toChars!10189 (transformation!7638 (h!51325 rules!3843))) (toChars!10189 (transformation!7638 r!4142)))) (and b!4181630 b_free!121525) (and b!4181629 b_free!121529 (= (toChars!10189 (transformation!7638 rBis!167)) (toChars!10189 (transformation!7638 r!4142)))) (and b!4182102 b_free!121537 (= (toChars!10189 (transformation!7638 (h!51325 (t!345134 rules!3843)))) (toChars!10189 (transformation!7638 r!4142)))) b_lambda!122885)))

(declare-fun b_lambda!122887 () Bool)

(assert (= b_lambda!122873 (or (and b!4181618 b_free!121519 (= (toValue!10330 (transformation!7638 (h!51325 rules!3843))) (toValue!10330 (transformation!7638 r!4142)))) (and b!4181630 b_free!121523) (and b!4181629 b_free!121527 (= (toValue!10330 (transformation!7638 rBis!167)) (toValue!10330 (transformation!7638 r!4142)))) (and b!4182102 b_free!121535 (= (toValue!10330 (transformation!7638 (h!51325 (t!345134 rules!3843)))) (toValue!10330 (transformation!7638 r!4142)))) b_lambda!122887)))

(declare-fun b_lambda!122889 () Bool)

(assert (= b_lambda!122883 (or (and b!4181618 b_free!121519 (= (toValue!10330 (transformation!7638 (h!51325 rules!3843))) (toValue!10330 (transformation!7638 r!4142)))) (and b!4181630 b_free!121523) (and b!4181629 b_free!121527 (= (toValue!10330 (transformation!7638 rBis!167)) (toValue!10330 (transformation!7638 r!4142)))) (and b!4182102 b_free!121535 (= (toValue!10330 (transformation!7638 (h!51325 (t!345134 rules!3843)))) (toValue!10330 (transformation!7638 r!4142)))) b_lambda!122889)))

(check-sat (not d!1234078) (not b!4182081) (not b!4181979) b_and!327195 (not b!4181980) (not b_lambda!122887) (not b!4181812) (not b!4181722) (not b!4181754) (not b!4181734) (not bm!291726) (not b!4181975) (not b!4182115) (not b!4181813) (not b!4182119) (not d!1234070) b_and!327189 (not b!4181646) (not b!4181976) (not b_next!122223) (not b!4181978) (not b!4182121) (not tb!250345) (not b!4181887) (not b!4182083) (not b!4181810) (not d!1234174) (not b!4182000) (not d!1234172) (not b!4181790) (not b_lambda!122889) (not b!4182077) (not b!4181807) (not b!4181791) (not b!4181981) (not d!1234180) (not d!1234090) (not bm!291728) (not b!4182082) (not b!4182002) (not b!4182116) (not b_next!122225) (not b_next!122239) (not b!4182076) (not b_next!122227) (not b!4181723) (not b_next!122233) b_and!327197 (not d!1234160) b_and!327193 (not b!4182085) (not b!4181764) (not b!4182117) (not d!1234096) (not b!4182091) (not b!4182125) (not b!4182100) (not d!1234134) (not b!4182120) (not d!1234102) (not b!4182080) (not b!4181805) (not b!4182126) (not b!4182101) (not b!4182114) (not d!1234086) (not b!4182124) (not b!4181728) (not b_next!122229) (not b!4181765) (not bm!291731) (not b!4181983) (not d!1234158) (not b!4182078) (not bm!291706) (not b!4181725) (not b!4181766) (not b!4182122) (not b!4182001) (not b!4181997) (not b!4181938) (not b!4181982) (not b!4181933) (not tb!250339) (not b!4181934) (not d!1234156) b_and!327199 b_and!327203 (not b!4181769) tp_is_empty!22049 (not b!4182056) b_and!327201 (not b_lambda!122885) (not b_next!122241) (not d!1234104) (not d!1234166) (not d!1234094) (not d!1234168) (not b!4182086) (not b_next!122231) (not b!4181729) (not b!4181814) (not b!4182075) b_and!327191)
(check-sat b_and!327195 b_and!327189 (not b_next!122223) (not b_next!122233) (not b_next!122229) b_and!327201 (not b_next!122241) (not b_next!122225) (not b_next!122239) (not b_next!122227) b_and!327197 b_and!327193 b_and!327199 b_and!327203 (not b_next!122231) b_and!327191)
